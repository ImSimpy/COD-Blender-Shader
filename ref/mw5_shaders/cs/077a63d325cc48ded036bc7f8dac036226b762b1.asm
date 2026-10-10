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
; shader hash: 659de29c2cca2a998919233e9f03f53c
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb0     1
;                                   sampler      NA          NA      S0             s2     1
;                                   sampler      NA          NA      S1             s3     1
;                                   texture     f32          3d      T0             t3     1
;                                   texture     f32          2d      T1            t16     1
;                                   texture     f32          2d      T2            t27     1
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

define void @cs_fog_raymarching_heightmap_brfog() {
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
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %48 = extractvalue %dx.types.ResRet.f32 %47, 0
  %49 = extractvalue %dx.types.ResRet.f32 %47, 1
  %50 = extractvalue %dx.types.ResRet.f32 %47, 2
  %51 = extractvalue %dx.types.ResRet.f32 %47, 3
  %52 = fadd fast float %48, %42
  %53 = fadd fast float %49, %42
  %54 = fadd fast float %50, %42
  %55 = fadd fast float %51, %42
  %56 = call float @dx.op.unary.f32(i32 22, float %52)  ; Frc(value)
  %57 = call float @dx.op.unary.f32(i32 22, float %53)  ; Frc(value)
  %58 = call float @dx.op.unary.f32(i32 22, float %54)  ; Frc(value)
  %59 = call float @dx.op.unary.f32(i32 22, float %55)  ; Frc(value)
  %60 = fadd fast float %58, %38
  %61 = fadd fast float %59, %39
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 2
  %64 = extractvalue %dx.types.CBufRet.f32 %62, 3
  %65 = fmul fast float %63, %60
  %66 = fmul fast float %64, %61
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 0
  %69 = extractvalue %dx.types.CBufRet.f32 %67, 1
  %70 = extractvalue %dx.types.CBufRet.f32 %67, 2
  %71 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.f32 %71, 1
  %73 = fmul fast float %65, 2.000000e+00
  %74 = fmul fast float %66, 2.000000e+00
  %75 = fsub fast float 1.000000e+00, %73
  %76 = fsub fast float 1.000000e+00, %74
  %77 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %78 = extractvalue %dx.types.CBufRet.f32 %77, 0
  %79 = extractvalue %dx.types.CBufRet.f32 %77, 1
  %80 = extractvalue %dx.types.CBufRet.f32 %77, 2
  %81 = fmul fast float %78, %75
  %82 = fmul fast float %79, %75
  %83 = fmul fast float %80, %75
  %84 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %85 = extractvalue %dx.types.CBufRet.f32 %84, 0
  %86 = extractvalue %dx.types.CBufRet.f32 %84, 1
  %87 = extractvalue %dx.types.CBufRet.f32 %84, 2
  %88 = fmul fast float %85, %76
  %89 = fmul fast float %86, %76
  %90 = fmul fast float %87, %76
  %91 = fadd fast float %88, %81
  %92 = fadd fast float %89, %82
  %93 = fadd fast float %90, %83
  %94 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.f32 %94, 0
  %96 = extractvalue %dx.types.CBufRet.f32 %94, 1
  %97 = extractvalue %dx.types.CBufRet.f32 %94, 2
  %98 = fadd fast float %91, %95
  %99 = fadd fast float %92, %96
  %100 = fadd fast float %93, %97
  %101 = fmul fast float %98, %72
  %102 = fmul fast float %99, %72
  %103 = fmul fast float %100, %72
  %104 = fmul fast float %101, %101
  %105 = fmul fast float %102, %102
  %106 = fadd fast float %104, %105
  %107 = fmul fast float %103, %103
  %108 = fadd fast float %106, %107
  %109 = call float @dx.op.unary.f32(i32 24, float %108)  ; Sqrt(value)
  %110 = fdiv fast float 1.000000e+00, %109
  %111 = fmul fast float %101, %110
  %112 = fmul fast float %102, %110
  %113 = fmul fast float %103, %110
  %114 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %36, i32 %37, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %115 = extractvalue %dx.types.ResRet.f32 %114, 0
  %116 = fcmp fast ogt float %115, -1.000000e+00
  %117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %118 = extractvalue %dx.types.CBufRet.f32 %117, 1
  %119 = select i1 %116, float %118, float 1.000000e+00
  %120 = fadd fast float %115, 1.000000e+00
  %121 = fmul fast float %119, %120
  %122 = call float @dx.op.unary.f32(i32 6, float %121)  ; FAbs(value)
  %123 = fdiv fast float 1.000000e+00, %72
  %124 = fmul fast float %123, %109
  %125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.f32 %125, 1
  %127 = fmul fast float %126, %124
  %128 = fmul fast float %124, %122
  %129 = extractvalue %dx.types.CBufRet.f32 %117, 3
  %130 = fcmp fast oge float %122, %129
  %131 = call float @dx.op.binary.f32(i32 36, float %128, float %127)  ; FMin(a,b)
  %132 = select i1 %130, float %127, float %131
  %133 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.i32 %133, 3
  %135 = icmp eq i32 %134, 0
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 2
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 2
  %140 = fsub fast float %137, %70
  %141 = fadd fast float %140, %139
  %142 = fsub fast float 0xC7EFFFFFE0000000, %70
  br i1 %135, label %154, label %143, !dx.controlflow.hints !36

; <label>:143                                     ; preds = %0
  %144 = fsub fast float -0.000000e+00, %69
  %145 = fsub fast float -0.000000e+00, %68
  %146 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %145, float %144, float %141)  ; Dot3(ax,ay,az,bx,by,bz)
  %147 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %148 = fdiv fast float 1.000000e+00, %147
  %149 = fmul fast float %148, %146
  %150 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %145, float %144, float %142)  ; Dot3(ax,ay,az,bx,by,bz)
  %151 = fmul fast float %148, %150
  %152 = call float @dx.op.binary.f32(i32 36, float %149, float %151)  ; FMin(a,b)
  %153 = call float @dx.op.binary.f32(i32 35, float %149, float %151)  ; FMax(a,b)
  br label %187

; <label>:154                                     ; preds = %0
  %155 = extractvalue %dx.types.CBufRet.f32 %136, 0
  %156 = extractvalue %dx.types.CBufRet.f32 %136, 1
  %157 = extractvalue %dx.types.CBufRet.f32 %138, 0
  %158 = extractvalue %dx.types.CBufRet.f32 %138, 1
  %159 = fdiv fast float 1.000000e+00, %111
  %160 = fdiv fast float 1.000000e+00, %112
  %161 = fdiv fast float 1.000000e+00, %113
  %162 = fsub fast float %155, %68
  %163 = fmul fast float %159, %162
  %164 = fadd fast float %162, %157
  %165 = fmul fast float %164, %159
  %166 = call float @dx.op.binary.f32(i32 36, float %163, float %165)  ; FMin(a,b)
  %167 = call float @dx.op.binary.f32(i32 35, float %163, float %165)  ; FMax(a,b)
  %168 = fsub fast float %156, %69
  %169 = fmul fast float %160, %168
  %170 = fadd fast float %168, %158
  %171 = fmul fast float %170, %160
  %172 = call float @dx.op.binary.f32(i32 36, float %169, float %171)  ; FMin(a,b)
  %173 = call float @dx.op.binary.f32(i32 35, float %166, float %172)  ; FMax(a,b)
  %174 = call float @dx.op.binary.f32(i32 35, float %169, float %171)  ; FMax(a,b)
  %175 = call float @dx.op.binary.f32(i32 36, float %167, float %174)  ; FMin(a,b)
  %176 = fmul fast float %161, %142
  %177 = fmul fast float %161, %141
  %178 = call float @dx.op.binary.f32(i32 36, float %176, float %177)  ; FMin(a,b)
  %179 = call float @dx.op.binary.f32(i32 35, float %173, float %178)  ; FMax(a,b)
  %180 = call float @dx.op.binary.f32(i32 35, float %176, float %177)  ; FMax(a,b)
  %181 = call float @dx.op.binary.f32(i32 36, float %175, float %180)  ; FMin(a,b)
  %182 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %179)  ; FMax(a,b)
  %183 = fcmp fast ult float %181, %182
  br i1 %183, label %187, label %184, !dx.controlflow.hints !37

; <label>:184                                     ; preds = %154
  %185 = call float @dx.op.binary.f32(i32 36, float %179, float %181)  ; FMin(a,b)
  %186 = call float @dx.op.binary.f32(i32 35, float %179, float %181)  ; FMax(a,b)
  br label %187

; <label>:187                                     ; preds = %184, %154, %143
  %188 = phi float [ %152, %143 ], [ %185, %184 ], [ 0.000000e+00, %154 ]
  %189 = phi float [ %153, %143 ], [ %186, %184 ], [ 0.000000e+00, %154 ]
  %190 = fcmp fast oeq float %189, 0.000000e+00
  %191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %192 = extractvalue %dx.types.CBufRet.f32 %191, 1
  %193 = fcmp fast olt float %189, %192
  %194 = or i1 %190, %193
  br i1 %194, label %199, label %195, !dx.controlflow.hints !38

; <label>:195                                     ; preds = %187
  %196 = call float @dx.op.binary.f32(i32 35, float %192, float %188)  ; FMax(a,b)
  %197 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %196)  ; FMin(a,b)
  %198 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %189)  ; FMax(a,b)
  br label %199

; <label>:199                                     ; preds = %195, %187
  %200 = phi i32 [ 1, %195 ], [ 0, %187 ]
  %201 = phi float [ %198, %195 ], [ -1.000000e+00, %187 ]
  %202 = phi float [ %197, %195 ], [ 0x47EFFFFFE0000000, %187 ]
  %203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %204 = extractvalue %dx.types.CBufRet.f32 %203, 2
  %205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %206 = extractvalue %dx.types.CBufRet.f32 %205, 3
  %207 = fsub fast float -0.000000e+00, %68
  %208 = fsub fast float -0.000000e+00, %69
  %209 = fsub fast float %204, %70
  %210 = fadd fast float %209, %206
  %211 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %207, float %208, float %210)  ; Dot3(ax,ay,az,bx,by,bz)
  %212 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %213 = fdiv fast float 1.000000e+00, %212
  %214 = fmul fast float %213, %211
  %215 = fcmp fast olt float %214, 0.000000e+00
  %216 = fcmp fast ogt float %113, 0.000000e+00
  %217 = and i1 %216, %215
  br i1 %217, label %222, label %218, !dx.controlflow.hints !39

; <label>:218                                     ; preds = %199
  %219 = fcmp fast olt float %113, 0.000000e+00
  br i1 %219, label %220, label %222, !dx.controlflow.hints !40

; <label>:220                                     ; preds = %218
  %221 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %214)  ; FMax(a,b)
  br label %222

; <label>:222                                     ; preds = %220, %218, %199
  %223 = phi float [ 0.000000e+00, %199 ], [ %221, %220 ], [ 0.000000e+00, %218 ]
  %224 = phi float [ 0.000000e+00, %199 ], [ 0x47EFFFFFE0000000, %220 ], [ %214, %218 ]
  %225 = fcmp fast oeq float %224, 0.000000e+00
  br i1 %225, label %229, label %226, !dx.controlflow.hints !41

; <label>:226                                     ; preds = %222
  %227 = call float @dx.op.binary.f32(i32 36, float %202, float %223)  ; FMin(a,b)
  %228 = call float @dx.op.binary.f32(i32 35, float %201, float %224)  ; FMax(a,b)
  br label %229

; <label>:229                                     ; preds = %226, %222
  %230 = phi i32 [ 1, %226 ], [ 0, %222 ]
  %231 = phi float [ %228, %226 ], [ %201, %222 ]
  %232 = phi float [ %227, %226 ], [ %202, %222 ]
  %233 = call float @dx.op.binary.f32(i32 36, float %132, float %231)  ; FMin(a,b)
  %234 = call float @dx.op.binary.f32(i32 35, float %109, float %232)  ; FMax(a,b)
  %235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %236 = extractvalue %dx.types.CBufRet.f32 %235, 0
  %237 = fmul fast float %57, 2.000000e+00
  %238 = fadd fast float %237, -1.000000e+00
  %239 = fmul fast float %236, %238
  %240 = fadd fast float %239, %234
  %241 = fcmp fast olt float %240, %233
  %242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %243 = extractvalue %dx.types.CBufRet.f32 %242, 2
  %244 = fcmp fast olt float %243, 1.000000e+00
  %245 = and i1 %241, %244
  br i1 %245, label %246, label %2260

; <label>:246                                     ; preds = %229
  %247 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %248 = extractvalue %dx.types.CBufRet.i32 %247, 1
  %249 = add i32 %248, -1
  %250 = fmul fast float %240, %113
  %251 = fadd fast float %250, %70
  %252 = fmul fast float %240, %112
  %253 = fadd fast float %252, %69
  %254 = fmul fast float %240, %111
  %255 = fadd fast float %254, %68
  br label %256

; <label>:256                                     ; preds = %2234, %246
  %257 = phi i32 [ %2236, %2234 ], [ undef, %246 ]
  %258 = phi float [ %2237, %2234 ], [ undef, %246 ]
  %259 = phi i32 [ %629, %2234 ], [ undef, %246 ]
  %260 = phi float [ %630, %2234 ], [ undef, %246 ]
  %261 = phi float [ %2238, %2234 ], [ 0.000000e+00, %246 ]
  %262 = phi float [ %2239, %2234 ], [ 1.000000e+00, %246 ]
  %263 = phi float [ %2240, %2234 ], [ 0.000000e+00, %246 ]
  %264 = phi float [ %2241, %2234 ], [ 0.000000e+00, %246 ]
  %265 = phi float [ %2242, %2234 ], [ 0.000000e+00, %246 ]
  %266 = phi float [ %2252, %2234 ], [ %255, %246 ]
  %267 = phi float [ %2253, %2234 ], [ %253, %246 ]
  %268 = phi float [ %2254, %2234 ], [ %251, %246 ]
  %269 = phi float [ %2235, %2234 ], [ %240, %246 ]
  %270 = phi i32 [ %453, %2234 ], [ %249, %246 ]
  %271 = phi float [ %2243, %2234 ], [ 0.000000e+00, %246 ]
  %272 = phi float [ %2244, %2234 ], [ 0.000000e+00, %246 ]
  %273 = phi float [ %2245, %2234 ], [ 0.000000e+00, %246 ]
  %274 = phi float [ %2246, %2234 ], [ 0.000000e+00, %246 ]
  %275 = phi float [ %2247, %2234 ], [ 0.000000e+00, %246 ]
  %276 = phi i32 [ %2248, %2234 ], [ 0, %246 ]
  %277 = fsub fast float -0.000000e+00, %267
  %278 = fsub fast float -0.000000e+00, %266
  %279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %280 = extractvalue %dx.types.CBufRet.f32 %279, 0
  %281 = icmp eq i32 %200, 0
  br i1 %281, label %450, label %282, !dx.controlflow.hints !42

; <label>:282                                     ; preds = %256
  %283 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %284 = extractvalue %dx.types.CBufRet.i32 %283, 1
  %285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %286 = extractvalue %dx.types.CBufRet.f32 %285, 1
  %287 = fcmp fast ogt float %286, %269
  br i1 %287, label %288, label %290, !dx.controlflow.hints !43

; <label>:288                                     ; preds = %282
  %289 = fsub fast float %286, %269
  br label %440

; <label>:290                                     ; preds = %282
  %291 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %292 = extractvalue %dx.types.CBufRet.i32 %291, 3
  %293 = icmp eq i32 %292, 0
  %294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %295 = extractvalue %dx.types.CBufRet.f32 %294, 2
  %296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %297 = extractvalue %dx.types.CBufRet.f32 %296, 2
  %298 = fsub fast float %295, %268
  %299 = fadd fast float %298, %297
  %300 = fsub fast float 0xC7EFFFFFE0000000, %268
  br i1 %293, label %308, label %301, !dx.controlflow.hints !36

; <label>:301                                     ; preds = %290
  %302 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %278, float %277, float %299)  ; Dot3(ax,ay,az,bx,by,bz)
  %303 = fmul fast float %213, %302
  %304 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %278, float %277, float %300)  ; Dot3(ax,ay,az,bx,by,bz)
  %305 = fmul fast float %213, %304
  %306 = call float @dx.op.binary.f32(i32 36, float %303, float %305)  ; FMin(a,b)
  %307 = call float @dx.op.binary.f32(i32 35, float %303, float %305)  ; FMax(a,b)
  br label %341

; <label>:308                                     ; preds = %290
  %309 = extractvalue %dx.types.CBufRet.f32 %294, 0
  %310 = extractvalue %dx.types.CBufRet.f32 %294, 1
  %311 = extractvalue %dx.types.CBufRet.f32 %296, 0
  %312 = extractvalue %dx.types.CBufRet.f32 %296, 1
  %313 = fdiv fast float 1.000000e+00, %111
  %314 = fdiv fast float 1.000000e+00, %112
  %315 = fdiv fast float 1.000000e+00, %113
  %316 = fsub fast float %309, %266
  %317 = fmul fast float %313, %316
  %318 = fadd fast float %316, %311
  %319 = fmul fast float %318, %313
  %320 = call float @dx.op.binary.f32(i32 36, float %317, float %319)  ; FMin(a,b)
  %321 = call float @dx.op.binary.f32(i32 35, float %317, float %319)  ; FMax(a,b)
  %322 = fsub fast float %310, %267
  %323 = fmul fast float %314, %322
  %324 = fadd fast float %322, %312
  %325 = fmul fast float %324, %314
  %326 = call float @dx.op.binary.f32(i32 36, float %323, float %325)  ; FMin(a,b)
  %327 = call float @dx.op.binary.f32(i32 35, float %320, float %326)  ; FMax(a,b)
  %328 = call float @dx.op.binary.f32(i32 35, float %323, float %325)  ; FMax(a,b)
  %329 = call float @dx.op.binary.f32(i32 36, float %321, float %328)  ; FMin(a,b)
  %330 = fmul fast float %315, %300
  %331 = fmul fast float %315, %299
  %332 = call float @dx.op.binary.f32(i32 36, float %330, float %331)  ; FMin(a,b)
  %333 = call float @dx.op.binary.f32(i32 35, float %327, float %332)  ; FMax(a,b)
  %334 = call float @dx.op.binary.f32(i32 35, float %330, float %331)  ; FMax(a,b)
  %335 = call float @dx.op.binary.f32(i32 36, float %329, float %334)  ; FMin(a,b)
  %336 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %333)  ; FMax(a,b)
  %337 = fcmp fast ult float %335, %336
  br i1 %337, label %341, label %338, !dx.controlflow.hints !37

; <label>:338                                     ; preds = %308
  %339 = call float @dx.op.binary.f32(i32 36, float %333, float %335)  ; FMin(a,b)
  %340 = call float @dx.op.binary.f32(i32 35, float %333, float %335)  ; FMax(a,b)
  br label %341

; <label>:341                                     ; preds = %338, %308, %301
  %342 = phi float [ %306, %301 ], [ %339, %338 ], [ 0.000000e+00, %308 ]
  %343 = phi float [ %307, %301 ], [ %340, %338 ], [ 0.000000e+00, %308 ]
  %344 = fcmp fast ogt float %342, 0.000000e+00
  br i1 %344, label %440, label %345, !dx.controlflow.hints !44

; <label>:345                                     ; preds = %341
  %346 = fcmp fast ugt float %343, 0.000000e+00
  br i1 %346, label %347, label %440, !dx.controlflow.hints !45

; <label>:347                                     ; preds = %345
  %348 = icmp sgt i32 %270, 0
  br i1 %348, label %349, label %434

; <label>:349                                     ; preds = %347
  br label %350

; <label>:350                                     ; preds = %430, %349
  %351 = phi i32 [ %431, %430 ], [ %270, %349 ]
  %352 = sitofp i32 %351 to float
  %353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %354 = extractvalue %dx.types.CBufRet.f32 %353, 0
  %355 = extractvalue %dx.types.CBufRet.f32 %353, 1
  %356 = fsub fast float %266, %354
  %357 = fsub fast float %267, %355
  %358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %359 = extractvalue %dx.types.CBufRet.f32 %358, 0
  %360 = extractvalue %dx.types.CBufRet.f32 %358, 1
  %361 = fmul fast float %356, %359
  %362 = fmul fast float %357, %360
  %363 = fsub fast float 1.000000e+00, %362
  %364 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %365 = extractvalue %dx.types.CBufRet.i32 %364, 3
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %373, label %367, !dx.controlflow.hints !46

; <label>:367                                     ; preds = %350
  %368 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %18, float %361, float %363, float undef, float undef, i32 0, i32 0, i32 undef, float %352)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %369 = extractvalue %dx.types.ResRet.f32 %368, 0
  %370 = extractvalue %dx.types.ResRet.f32 %368, 1
  %371 = extractvalue %dx.types.ResRet.f32 %368, 2
  %372 = extractvalue %dx.types.ResRet.f32 %368, 3
  br label %379

; <label>:373                                     ; preds = %350
  %374 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %19, float %361, float %363, float undef, float undef, i32 0, i32 0, i32 undef, float %352)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %375 = extractvalue %dx.types.ResRet.f32 %374, 0
  %376 = extractvalue %dx.types.ResRet.f32 %374, 1
  %377 = extractvalue %dx.types.ResRet.f32 %374, 2
  %378 = extractvalue %dx.types.ResRet.f32 %374, 3
  br label %379

; <label>:379                                     ; preds = %373, %367
  %380 = phi float [ %369, %367 ], [ %375, %373 ]
  %381 = phi float [ %370, %367 ], [ %376, %373 ]
  %382 = phi float [ %371, %367 ], [ %377, %373 ]
  %383 = phi float [ %372, %367 ], [ %378, %373 ]
  %384 = extractvalue %dx.types.CBufRet.f32 %358, 3
  %385 = fmul fast float %384, %380
  %386 = extractvalue %dx.types.CBufRet.f32 %353, 2
  %387 = fadd fast float %385, %386
  %388 = fmul fast float %384, %381
  %389 = fadd fast float %388, %386
  %390 = fmul fast float %384, %382
  %391 = fadd fast float %390, %386
  %392 = and i32 %351, 31
  %393 = shl i32 1, %392
  %394 = uitofp i32 %393 to float
  %395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %396 = extractvalue %dx.types.CBufRet.f32 %395, 3
  %397 = fdiv fast float 1.000000e+00, %396
  %398 = fmul fast float %397, %394
  %399 = fmul fast float %398, %113
  %400 = fadd fast float %399, %268
  %401 = fcmp fast oeq float %383, 0.000000e+00
  %402 = fcmp fast ogt float %268, %389
  %403 = fcmp fast ogt float %400, %389
  %404 = and i1 %402, %403
  %405 = or i1 %401, %404
  br i1 %405, label %406, label %410, !dx.controlflow.hints !47

; <label>:406                                     ; preds = %379
  %407 = add nsw i32 %351, 1
  %408 = add nsw i32 %284, -1
  %409 = call i32 @dx.op.binary.i32(i32 38, i32 %407, i32 %408)  ; IMin(a,b)
  br label %440

; <label>:410                                     ; preds = %379
  %411 = fcmp fast olt float %268, %391
  %412 = fcmp fast olt float %400, %391
  %413 = and i1 %411, %412
  br i1 %413, label %414, label %418, !dx.controlflow.hints !48

; <label>:414                                     ; preds = %410
  %415 = add nsw i32 %351, 1
  %416 = add nsw i32 %284, -1
  %417 = call i32 @dx.op.binary.i32(i32 38, i32 %415, i32 %416)  ; IMin(a,b)
  br label %440

; <label>:418                                     ; preds = %410
  %419 = fcmp fast olt float %268, %387
  %420 = fcmp fast olt float %400, %387
  %421 = and i1 %419, %420
  br i1 %421, label %422, label %430, !dx.controlflow.hints !49

; <label>:422                                     ; preds = %418
  %423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %424 = extractvalue %dx.types.CBufRet.f32 %423, 3
  %425 = extractvalue %dx.types.CBufRet.f32 %358, 2
  %426 = fcmp fast une float %424, %425
  br i1 %426, label %427, label %434, !dx.controlflow.hints !50

; <label>:427                                     ; preds = %422
  %428 = fsub fast float %268, %391
  %429 = call float @dx.op.binary.f32(i32 36, float %398, float %428)  ; FMin(a,b)
  br label %434

; <label>:430                                     ; preds = %418
  %431 = add nsw i32 %351, -1
  %432 = icmp sgt i32 %351, 1
  br i1 %432, label %350, label %433

; <label>:433                                     ; preds = %430
  br label %434

; <label>:434                                     ; preds = %433, %427, %422, %347
  %435 = phi float [ %429, %427 ], [ %398, %422 ], [ 0.000000e+00, %347 ], [ 0.000000e+00, %433 ]
  %436 = phi i32 [ %351, %427 ], [ %351, %422 ], [ %270, %347 ], [ %431, %433 ]
  %437 = add nsw i32 %436, 1
  %438 = add nsw i32 %284, -1
  %439 = call i32 @dx.op.binary.i32(i32 38, i32 %437, i32 %438)  ; IMin(a,b)
  br label %440

; <label>:440                                     ; preds = %434, %414, %406, %345, %341, %288
  %441 = phi float [ %289, %288 ], [ %398, %406 ], [ %398, %414 ], [ %435, %434 ], [ 0x47EFFFFFE0000000, %345 ], [ %342, %341 ]
  %442 = phi i32 [ %200, %288 ], [ %200, %406 ], [ %200, %414 ], [ %200, %434 ], [ 0, %345 ], [ %200, %341 ]
  %443 = phi i32 [ %270, %288 ], [ %409, %406 ], [ %417, %414 ], [ %439, %434 ], [ %270, %345 ], [ %270, %341 ]
  %444 = icmp ne i32 %442, 0
  %445 = zext i1 %444 to i32
  %446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %447 = extractvalue %dx.types.CBufRet.f32 %446, 2
  %448 = call float @dx.op.binary.f32(i32 35, float %441, float %447)  ; FMax(a,b)
  %449 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %448)  ; FMin(a,b)
  br label %450

; <label>:450                                     ; preds = %440, %256
  %451 = phi i32 [ %445, %440 ], [ 0, %256 ]
  %452 = phi float [ %449, %440 ], [ 0x47EFFFFFE0000000, %256 ]
  %453 = phi i32 [ %443, %440 ], [ %270, %256 ]
  %454 = icmp eq i32 %230, 0
  br i1 %454, label %627, label %455, !dx.controlflow.hints !51

; <label>:455                                     ; preds = %450
  %456 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %457 = extractvalue %dx.types.CBufRet.i32 %456, 1
  %458 = and i32 %457, 1
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %460, label %617, !dx.controlflow.hints !52

; <label>:460                                     ; preds = %455
  %461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %462 = extractvalue %dx.types.CBufRet.f32 %461, 2
  %463 = extractvalue %dx.types.CBufRet.f32 %461, 3
  %464 = fmul fast float %462, %266
  %465 = fmul fast float %463, %267
  %466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %467 = extractvalue %dx.types.CBufRet.f32 %466, 0
  %468 = extractvalue %dx.types.CBufRet.f32 %466, 1
  %469 = fadd fast float %464, %467
  %470 = fadd fast float %465, %468
  %471 = call float @dx.op.unary.f32(i32 7, float %469)  ; Saturate(value)
  %472 = call float @dx.op.unary.f32(i32 7, float %470)  ; Saturate(value)
  %473 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %471, float %472, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %474 = extractvalue %dx.types.ResRet.f32 %473, 0
  %475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %476 = extractvalue %dx.types.CBufRet.f32 %475, 0
  %477 = fmul fast float %476, %474
  %478 = fsub fast float %469, %471
  %479 = fsub fast float %470, %472
  %480 = extractvalue %dx.types.CBufRet.f32 %461, 0
  %481 = extractvalue %dx.types.CBufRet.f32 %461, 1
  %482 = fmul fast float %480, %478
  %483 = fmul fast float %481, %479
  %484 = fmul fast float %482, %482
  %485 = fmul fast float %483, %483
  %486 = fadd fast float %484, %485
  %487 = call float @dx.op.unary.f32(i32 24, float %486)  ; Sqrt(value)
  %488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %489 = extractvalue %dx.types.CBufRet.f32 %488, 3
  %490 = fmul fast float %489, %487
  %491 = call float @dx.op.unary.f32(i32 7, float %490)  ; Saturate(value)
  %492 = extractvalue %dx.types.CBufRet.f32 %488, 2
  %493 = fsub fast float %492, %477
  %494 = fmul fast float %493, %491
  %495 = extractvalue %dx.types.CBufRet.f32 %475, 1
  %496 = fsub fast float %268, %477
  %497 = fsub fast float %496, %495
  %498 = fsub fast float %497, %494
  %499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %500 = extractvalue %dx.types.CBufRet.f32 %499, 2
  %501 = fsub fast float %498, %500
  %502 = fcmp fast olt float %501, 0.000000e+00
  %503 = call float @dx.op.unary.f32(i32 6, float %501)  ; FAbs(value)
  %504 = extractvalue %dx.types.CBufRet.i32 %456, 0
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %559, label %506

; <label>:506                                     ; preds = %460
  br label %507

; <label>:507                                     ; preds = %546, %506
  %508 = phi i32 [ %552, %546 ], [ 1, %506 ]
  %509 = phi float [ %554, %546 ], [ 0x47EFFFFFE0000000, %506 ]
  %510 = phi i32 [ %555, %546 ], [ 0, %506 ]
  %511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %512 = extractvalue %dx.types.CBufRet.f32 %511, 1
  %513 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %514 = extractvalue %dx.types.CBufRet.i32 %513, 1
  %515 = and i32 %514, 8
  %516 = icmp eq i32 %515, 0
  %517 = fcmp fast ogt float %512, %498
  %518 = or i1 %517, %516
  %519 = add i32 %510, 171
  %520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 %519)  ; CBufferLoadLegacy(handle,regIndex)
  %521 = extractvalue %dx.types.CBufRet.f32 %520, 0
  %522 = extractvalue %dx.types.CBufRet.f32 %520, 1
  %523 = extractvalue %dx.types.CBufRet.f32 %520, 2
  br i1 %518, label %524, label %530, !dx.controlflow.hints !53

; <label>:524                                     ; preds = %507
  %525 = fsub fast float %521, %266
  %526 = fsub fast float %522, %267
  %527 = fmul fast float %525, %525
  %528 = fmul fast float %526, %526
  %529 = fadd fast float %527, %528
  br label %546

; <label>:530                                     ; preds = %507
  %531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %532 = extractvalue %dx.types.CBufRet.f32 %531, 2
  %533 = extractvalue %dx.types.CBufRet.f32 %511, 2
  %534 = fmul fast float %533, %532
  %535 = fsub fast float %534, %512
  %536 = fdiv fast float %523, %535
  %537 = fsub fast float %266, %521
  %538 = fsub fast float %267, %522
  %539 = fsub fast float %498, %512
  %540 = fmul fast float %536, %539
  %541 = fmul fast float %537, %537
  %542 = fmul fast float %538, %538
  %543 = fadd fast float %541, %542
  %544 = fmul fast float %540, %540
  %545 = fadd fast float %543, %544
  br label %546

; <label>:546                                     ; preds = %530, %524
  %547 = phi float [ %529, %524 ], [ %545, %530 ]
  %548 = call float @dx.op.unary.f32(i32 24, float %547)  ; Sqrt(value)
  %549 = fsub float %523, %548
  %550 = fcmp fast olt float %549, 0.000000e+00
  %551 = zext i1 %550 to i32
  %552 = and i32 %551, %508
  %553 = call float @dx.op.unary.f32(i32 6, float %549)  ; FAbs(value)
  %554 = call float @dx.op.binary.f32(i32 36, float %509, float %553)  ; FMin(a,b)
  %555 = add i32 %510, 1
  %556 = extractvalue %dx.types.CBufRet.i32 %513, 0
  %557 = icmp ult i32 %555, %556
  br i1 %557, label %507, label %558

; <label>:558                                     ; preds = %546
  br label %559

; <label>:559                                     ; preds = %558, %460
  %560 = phi i32 [ 1, %460 ], [ %552, %558 ]
  %561 = phi float [ 0x47EFFFFFE0000000, %460 ], [ %554, %558 ]
  br label %562

; <label>:562                                     ; preds = %562, %559
  %563 = phi i32 [ %560, %559 ], [ %602, %562 ]
  %564 = phi float [ 0x47EFFFFFE0000000, %559 ], [ %604, %562 ]
  %565 = phi i32 [ 0, %559 ], [ %605, %562 ]
  %566 = add nuw nsw i32 %565, 191
  %567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 %566)  ; CBufferLoadLegacy(handle,regIndex)
  %568 = extractvalue %dx.types.CBufRet.f32 %567, 0
  %569 = extractvalue %dx.types.CBufRet.f32 %567, 1
  %570 = extractvalue %dx.types.CBufRet.f32 %567, 2
  %571 = add nuw nsw i32 %565, 195
  %572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 %571)  ; CBufferLoadLegacy(handle,regIndex)
  %573 = extractvalue %dx.types.CBufRet.f32 %572, 0
  %574 = extractvalue %dx.types.CBufRet.f32 %572, 1
  %575 = extractvalue %dx.types.CBufRet.f32 %572, 2
  %576 = fsub fast float %266, %568
  %577 = fsub fast float %267, %569
  %578 = fsub fast float %498, %570
  %579 = call float @dx.op.unary.f32(i32 6, float %576)  ; FAbs(value)
  %580 = call float @dx.op.unary.f32(i32 6, float %577)  ; FAbs(value)
  %581 = call float @dx.op.unary.f32(i32 6, float %578)  ; FAbs(value)
  %582 = fsub fast float %579, %573
  %583 = fsub fast float %580, %574
  %584 = fsub fast float %581, %575
  %585 = call float @dx.op.binary.f32(i32 35, float %582, float 0.000000e+00)  ; FMax(a,b)
  %586 = call float @dx.op.binary.f32(i32 35, float %583, float 0.000000e+00)  ; FMax(a,b)
  %587 = call float @dx.op.binary.f32(i32 35, float %584, float 0.000000e+00)  ; FMax(a,b)
  %588 = fmul fast float %585, %585
  %589 = fmul fast float %586, %586
  %590 = fadd fast float %589, %588
  %591 = fmul fast float %587, %587
  %592 = fadd fast float %590, %591
  %593 = call float @dx.op.unary.f32(i32 24, float %592)  ; Sqrt(value)
  %594 = call float @dx.op.binary.f32(i32 35, float %583, float %584)  ; FMax(a,b)
  %595 = call float @dx.op.binary.f32(i32 35, float %582, float %594)  ; FMax(a,b)
  %596 = call float @dx.op.binary.f32(i32 36, float %595, float 0.000000e+00)  ; FMin(a,b)
  %597 = fadd fast float %596, %593
  %598 = fsub fast float -0.000000e+00, %597
  %599 = fcmp ogt float %597, -0.000000e+00
  %600 = icmp ne i32 %563, 0
  %601 = and i1 %600, %599
  %602 = zext i1 %601 to i32
  %603 = call float @dx.op.unary.f32(i32 6, float %598)  ; FAbs(value)
  %604 = call float @dx.op.binary.f32(i32 36, float %564, float %603)  ; FMin(a,b)
  %605 = add nuw nsw i32 %565, 1
  %606 = icmp eq i32 %605, 4
  br i1 %606, label %607, label %562

; <label>:607                                     ; preds = %562
  %608 = call float @dx.op.binary.f32(i32 36, float %503, float %604)  ; FMin(a,b)
  %609 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %610 = extractvalue %dx.types.CBufRet.i32 %609, 1
  %611 = and i32 %610, 2
  %612 = icmp ne i32 %611, 0
  %613 = xor i1 %601, %612
  %614 = call float @dx.op.binary.f32(i32 36, float %608, float %561)  ; FMin(a,b)
  %615 = and i1 %613, %502
  %616 = zext i1 %615 to i32
  br label %617

; <label>:617                                     ; preds = %607, %455
  %618 = phi i32 [ %259, %455 ], [ %616, %607 ]
  %619 = phi float [ 0.000000e+00, %455 ], [ %614, %607 ]
  %620 = phi float [ %268, %455 ], [ %498, %607 ]
  %621 = icmp ne i32 %618, 0
  %622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %623 = extractvalue %dx.types.CBufRet.f32 %622, 3
  %624 = call float @dx.op.binary.f32(i32 35, float %619, float %623)  ; FMax(a,b)
  %625 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %624)  ; FMin(a,b)
  %626 = zext i1 %621 to i32
  br label %627

; <label>:627                                     ; preds = %617, %450
  %628 = phi i32 [ %626, %617 ], [ 0, %450 ]
  %629 = phi i32 [ %618, %617 ], [ %259, %450 ]
  %630 = phi float [ %620, %617 ], [ %260, %450 ]
  %631 = phi float [ %625, %617 ], [ 0x47EFFFFFE0000000, %450 ]
  %632 = extractvalue %dx.types.CBufRet.f32 %279, 2
  %633 = fmul fast float %632, %269
  %634 = call float @dx.op.unary.f32(i32 23, float %633)  ; Log(value)
  %635 = fmul fast float %634, 0x3FE62E4300000000
  %636 = call float @dx.op.binary.f32(i32 35, float %635, float 1.000000e+00)  ; FMax(a,b)
  %637 = fmul fast float %636, %631
  %638 = call float @dx.op.binary.f32(i32 36, float %637, float %452)  ; FMin(a,b)
  %639 = call float @dx.op.binary.f32(i32 35, float %638, float %280)  ; FMax(a,b)
  %640 = fsub fast float %233, %269
  %641 = fadd fast float %640, 0x3F1A36E2E0000000
  %642 = call float @dx.op.binary.f32(i32 36, float %641, float %639)  ; FMin(a,b)
  %643 = icmp eq i32 %451, 0
  br i1 %643, label %749, label %644, !dx.controlflow.hints !54

; <label>:644                                     ; preds = %627
  %645 = fcmp fast olt float %641, %639
  %646 = fmul fast float %113, %56
  %647 = fmul fast float %646, %642
  %648 = fadd fast float %647, %268
  %649 = fmul fast float %113, %57
  %650 = fmul fast float %649, %642
  %651 = fadd fast float %650, %268
  %652 = fmul fast float %113, %58
  %653 = fmul fast float %652, %642
  %654 = fadd fast float %653, %268
  br i1 %645, label %655, label %660, !dx.controlflow.hints !55

; <label>:655                                     ; preds = %644
  %656 = fmul fast float %642, %111
  %657 = fmul fast float %642, %112
  %658 = fadd fast float %656, %266
  %659 = fadd fast float %657, %267
  br label %660

; <label>:660                                     ; preds = %655, %644
  %661 = phi float [ %658, %655 ], [ %266, %644 ]
  %662 = phi float [ %659, %655 ], [ %267, %644 ]
  %663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %664 = extractvalue %dx.types.CBufRet.f32 %663, 0
  %665 = extractvalue %dx.types.CBufRet.f32 %663, 1
  %666 = fsub fast float %661, %664
  %667 = fsub fast float %662, %665
  %668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %669 = extractvalue %dx.types.CBufRet.f32 %668, 0
  %670 = extractvalue %dx.types.CBufRet.f32 %668, 1
  %671 = fmul fast float %666, %669
  %672 = fmul fast float %667, %670
  %673 = fsub fast float 1.000000e+00, %672
  %674 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %675 = extractvalue %dx.types.CBufRet.i32 %674, 3
  %676 = icmp eq i32 %675, 0
  br i1 %676, label %683, label %677, !dx.controlflow.hints !46

; <label>:677                                     ; preds = %660
  %678 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %18, float %671, float %673, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %679 = extractvalue %dx.types.ResRet.f32 %678, 0
  %680 = extractvalue %dx.types.ResRet.f32 %678, 1
  %681 = extractvalue %dx.types.ResRet.f32 %678, 2
  %682 = extractvalue %dx.types.ResRet.f32 %678, 3
  br label %689

; <label>:683                                     ; preds = %660
  %684 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %19, float %671, float %673, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %685 = extractvalue %dx.types.ResRet.f32 %684, 0
  %686 = extractvalue %dx.types.ResRet.f32 %684, 1
  %687 = extractvalue %dx.types.ResRet.f32 %684, 2
  %688 = extractvalue %dx.types.ResRet.f32 %684, 3
  br label %689

; <label>:689                                     ; preds = %683, %677
  %690 = phi float [ %679, %677 ], [ %685, %683 ]
  %691 = phi float [ %680, %677 ], [ %686, %683 ]
  %692 = phi float [ %681, %677 ], [ %687, %683 ]
  %693 = phi float [ %682, %677 ], [ %688, %683 ]
  %694 = extractvalue %dx.types.CBufRet.f32 %668, 3
  %695 = fmul fast float %694, %691
  %696 = fmul fast float %695, %690
  %697 = fsub fast float %695, %696
  %698 = fcmp fast ole float %697, 0.000000e+00
  %699 = extractvalue %dx.types.CBufRet.f32 %663, 2
  %700 = fadd fast float %696, %699
  %701 = fmul fast float %694, %692
  %702 = fadd fast float %701, %699
  %703 = fdiv fast float 1.000000e+00, %697
  %704 = select i1 %698, float 1.000000e+06, float %703
  %705 = fsub fast float %648, %700
  %706 = fmul fast float %704, %705
  %707 = call float @dx.op.unary.f32(i32 7, float %706)  ; Saturate(value)
  %708 = extractvalue %dx.types.CBufRet.f32 %668, 2
  %709 = fmul fast float %708, %707
  %710 = fsub fast float %708, %709
  %711 = fcmp fast olt float %648, %702
  %712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %713 = extractvalue %dx.types.CBufRet.f32 %712, 3
  %714 = select i1 %711, float %713, float 1.000000e+00
  %715 = fmul fast float %710, %714
  %716 = fsub fast float %651, %700
  %717 = fmul fast float %704, %716
  %718 = call float @dx.op.unary.f32(i32 7, float %717)  ; Saturate(value)
  %719 = fmul fast float %708, %718
  %720 = fsub fast float %708, %719
  %721 = fcmp fast olt float %651, %702
  %722 = select i1 %721, float %713, float 1.000000e+00
  %723 = fmul fast float %720, %722
  %724 = fadd fast float %723, %715
  %725 = fsub fast float %654, %700
  %726 = fmul fast float %704, %725
  %727 = call float @dx.op.unary.f32(i32 7, float %726)  ; Saturate(value)
  %728 = fmul fast float %708, %727
  %729 = fsub fast float %708, %728
  %730 = fcmp fast olt float %654, %702
  %731 = select i1 %730, float %713, float 1.000000e+00
  %732 = fmul fast float %729, %731
  %733 = fadd fast float %724, %732
  %734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %735 = extractvalue %dx.types.CBufRet.f32 %734, 2
  %736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %737 = extractvalue %dx.types.CBufRet.f32 %736, 0
  %738 = extractvalue %dx.types.CBufRet.f32 %736, 1
  %739 = extractvalue %dx.types.CBufRet.f32 %736, 2
  %740 = fmul fast float %642, 0x3FD5555560000000
  %741 = fmul fast float %740, %693
  %742 = fmul fast float %741, %735
  %743 = fmul fast float %742, %733
  %744 = extractvalue %dx.types.CBufRet.f32 %712, 0
  %745 = fmul fast float %743, %737
  %746 = fmul fast float %743, %738
  %747 = fmul fast float %743, %739
  %748 = fmul fast float %743, %744
  br label %749

; <label>:749                                     ; preds = %689, %627
  %750 = phi float [ %743, %689 ], [ 0.000000e+00, %627 ]
  %751 = phi float [ %748, %689 ], [ 0.000000e+00, %627 ]
  %752 = phi float [ %745, %689 ], [ 0.000000e+00, %627 ]
  %753 = phi float [ %746, %689 ], [ 0.000000e+00, %627 ]
  %754 = phi float [ %747, %689 ], [ 0.000000e+00, %627 ]
  %755 = icmp eq i32 %628, 0
  br i1 %755, label %799, label %756, !dx.controlflow.hints !56

; <label>:756                                     ; preds = %749
  %757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %758 = extractvalue %dx.types.CBufRet.f32 %757, 1
  %759 = fsub fast float %642, %758
  %760 = extractvalue %dx.types.CBufRet.f32 %757, 3
  %761 = fmul fast float %759, %760
  %762 = call float @dx.op.unary.f32(i32 7, float %761)  ; Saturate(value)
  %763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %764 = extractvalue %dx.types.CBufRet.f32 %763, 3
  %765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %766 = extractvalue %dx.types.CBufRet.f32 %765, 2
  %767 = fsub fast float %766, %630
  %768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %769 = extractvalue %dx.types.CBufRet.f32 %768, 3
  %770 = fmul fast float %767, %769
  %771 = call float @dx.op.unary.f32(i32 7, float %770)  ; Saturate(value)
  %772 = fmul fast float %771, %764
  %773 = extractvalue %dx.types.CBufRet.f32 %768, 0
  %774 = fsub fast float %269, %773
  %775 = extractvalue %dx.types.CBufRet.f32 %768, 1
  %776 = fmul fast float %774, %775
  %777 = call float @dx.op.unary.f32(i32 7, float %776)  ; Saturate(value)
  %778 = fsub fast float 1.000000e+00, %762
  %779 = fmul fast float %777, %778
  %780 = fadd fast float %779, %762
  %781 = extractvalue %dx.types.CBufRet.f32 %757, 0
  %782 = fsub fast float %772, %781
  %783 = fmul fast float %782, %780
  %784 = fadd fast float %783, %781
  %785 = extractvalue %dx.types.CBufRet.f32 %763, 0
  %786 = extractvalue %dx.types.CBufRet.f32 %763, 1
  %787 = extractvalue %dx.types.CBufRet.f32 %763, 2
  %788 = fmul fast float %784, %642
  %789 = extractvalue %dx.types.CBufRet.f32 %768, 2
  %790 = fmul fast float %788, %785
  %791 = fmul fast float %788, %786
  %792 = fmul fast float %788, %787
  %793 = fadd fast float %790, %752
  %794 = fadd fast float %791, %753
  %795 = fadd fast float %792, %754
  %796 = fmul fast float %788, %789
  %797 = fadd fast float %796, %751
  %798 = fadd fast float %788, %750
  br label %799

; <label>:799                                     ; preds = %756, %749
  %800 = phi float [ %798, %756 ], [ %750, %749 ]
  %801 = phi float [ %797, %756 ], [ %751, %749 ]
  %802 = phi float [ %793, %756 ], [ %752, %749 ]
  %803 = phi float [ %794, %756 ], [ %753, %749 ]
  %804 = phi float [ %795, %756 ], [ %754, %749 ]
  %805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %806 = extractvalue %dx.types.CBufRet.f32 %805, 1
  %807 = fcmp fast ogt float %800, %806
  br i1 %807, label %808, label %814, !dx.controlflow.hints !57

; <label>:808                                     ; preds = %799
  %809 = fdiv fast float 1.000000e+00, %800
  %810 = fmul fast float %809, %802
  %811 = fmul fast float %809, %803
  %812 = fmul fast float %809, %804
  %813 = fmul fast float %809, %801
  br label %814

; <label>:814                                     ; preds = %808, %799
  %815 = phi float [ %813, %808 ], [ %801, %799 ]
  %816 = phi float [ %810, %808 ], [ %802, %799 ]
  %817 = phi float [ %811, %808 ], [ %803, %799 ]
  %818 = phi float [ %812, %808 ], [ %804, %799 ]
  br i1 %807, label %821, label %819, !dx.controlflow.hints !58

; <label>:819                                     ; preds = %814
  %820 = fadd fast float %642, %269
  br label %2234

; <label>:821                                     ; preds = %814
  %822 = fmul fast float %800, 0xBFF7154760000000
  %823 = call float @dx.op.unary.f32(i32 21, float %822)  ; Exp(value)
  %824 = call float @dx.op.unary.f32(i32 7, float %823)  ; Saturate(value)
  %825 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %826 = extractvalue %dx.types.CBufRet.i32 %825, 0
  %827 = icmp eq i32 %826, 1
  br i1 %827, label %828, label %863, !dx.controlflow.hints !59

; <label>:828                                     ; preds = %821
  %829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %830 = extractvalue %dx.types.CBufRet.f32 %829, 0
  %831 = extractvalue %dx.types.CBufRet.f32 %829, 1
  %832 = fsub fast float %266, %830
  %833 = fsub fast float %267, %831
  %834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %835 = extractvalue %dx.types.CBufRet.f32 %834, 0
  %836 = extractvalue %dx.types.CBufRet.f32 %834, 1
  %837 = fmul fast float %832, %835
  %838 = fmul fast float %833, %836
  %839 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %19, float %837, float %838, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %840 = extractvalue %dx.types.ResRet.f32 %839, 0
  %841 = fcmp fast ogt float %840, 0.000000e+00
  %842 = extractvalue %dx.types.CBufRet.i32 %825, 3
  %843 = icmp ne i32 %842, 0
  %844 = and i1 %841, %843
  br i1 %844, label %845, label %863, !dx.controlflow.hints !60

; <label>:845                                     ; preds = %828
  %846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %847 = extractvalue %dx.types.CBufRet.f32 %846, 0
  %848 = extractvalue %dx.types.CBufRet.f32 %846, 1
  %849 = fsub fast float %266, %847
  %850 = fsub fast float %267, %848
  %851 = fmul fast float %849, %849
  %852 = fmul fast float %850, %850
  %853 = fadd fast float %851, %852
  %854 = uitofp i32 %842 to float
  %855 = fmul fast float %854, %854
  %856 = fcmp fast ogt float %853, %855
  br i1 %856, label %863, label %857, !dx.controlflow.hints !61

; <label>:857                                     ; preds = %845
  %858 = call float @dx.op.unary.f32(i32 24, float %853)  ; Sqrt(value)
  %859 = fsub fast float %854, %858
  %860 = fmul fast float %859, 0x3F75555560000000
  %861 = call float @dx.op.unary.f32(i32 7, float %860)  ; Saturate(value)
  %862 = call float @dx.op.binary.f32(i32 36, float %861, float %840)  ; FMin(a,b)
  br label %863

; <label>:863                                     ; preds = %857, %845, %828, %821
  %864 = phi float [ 1.000000e+00, %821 ], [ %862, %857 ], [ %840, %828 ], [ 0.000000e+00, %845 ]
  %865 = fcmp fast ogt float %864, 0.000000e+00
  br i1 %865, label %866, label %939, !dx.controlflow.hints !62

; <label>:866                                     ; preds = %863
  %867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %868 = extractvalue %dx.types.ResRet.i32 %867, 0
  %869 = extractvalue %dx.types.ResRet.i32 %867, 1
  %870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %871 = extractvalue %dx.types.ResRet.i32 %870, 0
  %872 = extractvalue %dx.types.ResRet.i32 %870, 1
  %873 = extractvalue %dx.types.ResRet.i32 %870, 2
  %874 = extractvalue %dx.types.ResRet.i32 %870, 3
  %875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %876 = extractvalue %dx.types.ResRet.i32 %875, 0
  %877 = extractvalue %dx.types.ResRet.i32 %875, 1
  %878 = extractvalue %dx.types.ResRet.i32 %875, 2
  %879 = extractvalue %dx.types.ResRet.i32 %875, 3
  %880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %881 = extractvalue %dx.types.ResRet.i32 %880, 0
  %882 = extractvalue %dx.types.ResRet.i32 %880, 1
  %883 = extractvalue %dx.types.ResRet.i32 %880, 2
  %884 = extractvalue %dx.types.ResRet.i32 %880, 3
  %885 = and i32 %881, 65535
  %886 = call float @dx.op.legacyF16ToF32(i32 131, i32 %885)  ; LegacyF16ToF32(value)
  %887 = lshr i32 %881, 16
  %888 = call float @dx.op.legacyF16ToF32(i32 131, i32 %887)  ; LegacyF16ToF32(value)
  %889 = and i32 %882, 65535
  %890 = call float @dx.op.legacyF16ToF32(i32 131, i32 %889)  ; LegacyF16ToF32(value)
  %891 = lshr i32 %882, 16
  %892 = call float @dx.op.legacyF16ToF32(i32 131, i32 %891)  ; LegacyF16ToF32(value)
  %893 = and i32 %883, 65535
  %894 = call float @dx.op.legacyF16ToF32(i32 131, i32 %893)  ; LegacyF16ToF32(value)
  %895 = lshr i32 %883, 16
  %896 = call float @dx.op.legacyF16ToF32(i32 131, i32 %895)  ; LegacyF16ToF32(value)
  %897 = and i32 %884, 65535
  %898 = call float @dx.op.legacyF16ToF32(i32 131, i32 %897)  ; LegacyF16ToF32(value)
  %899 = lshr i32 %884, 16
  %900 = call float @dx.op.legacyF16ToF32(i32 131, i32 %899)  ; LegacyF16ToF32(value)
  %901 = and i32 %876, 65535
  %902 = call float @dx.op.legacyF16ToF32(i32 131, i32 %901)  ; LegacyF16ToF32(value)
  %903 = lshr i32 %876, 16
  %904 = call float @dx.op.legacyF16ToF32(i32 131, i32 %903)  ; LegacyF16ToF32(value)
  %905 = and i32 %877, 65535
  %906 = call float @dx.op.legacyF16ToF32(i32 131, i32 %905)  ; LegacyF16ToF32(value)
  %907 = lshr i32 %877, 16
  %908 = call float @dx.op.legacyF16ToF32(i32 131, i32 %907)  ; LegacyF16ToF32(value)
  %909 = and i32 %878, 65535
  %910 = call float @dx.op.legacyF16ToF32(i32 131, i32 %909)  ; LegacyF16ToF32(value)
  %911 = lshr i32 %878, 16
  %912 = call float @dx.op.legacyF16ToF32(i32 131, i32 %911)  ; LegacyF16ToF32(value)
  %913 = and i32 %879, 65535
  %914 = call float @dx.op.legacyF16ToF32(i32 131, i32 %913)  ; LegacyF16ToF32(value)
  %915 = lshr i32 %879, 16
  %916 = call float @dx.op.legacyF16ToF32(i32 131, i32 %915)  ; LegacyF16ToF32(value)
  %917 = and i32 %871, 65535
  %918 = call float @dx.op.legacyF16ToF32(i32 131, i32 %917)  ; LegacyF16ToF32(value)
  %919 = lshr i32 %871, 16
  %920 = call float @dx.op.legacyF16ToF32(i32 131, i32 %919)  ; LegacyF16ToF32(value)
  %921 = and i32 %872, 65535
  %922 = call float @dx.op.legacyF16ToF32(i32 131, i32 %921)  ; LegacyF16ToF32(value)
  %923 = lshr i32 %872, 16
  %924 = call float @dx.op.legacyF16ToF32(i32 131, i32 %923)  ; LegacyF16ToF32(value)
  %925 = and i32 %873, 65535
  %926 = call float @dx.op.legacyF16ToF32(i32 131, i32 %925)  ; LegacyF16ToF32(value)
  %927 = lshr i32 %873, 16
  %928 = call float @dx.op.legacyF16ToF32(i32 131, i32 %927)  ; LegacyF16ToF32(value)
  %929 = and i32 %874, 65535
  %930 = call float @dx.op.legacyF16ToF32(i32 131, i32 %929)  ; LegacyF16ToF32(value)
  %931 = lshr i32 %874, 16
  %932 = call float @dx.op.legacyF16ToF32(i32 131, i32 %931)  ; LegacyF16ToF32(value)
  %933 = and i32 %868, 65535
  %934 = call float @dx.op.legacyF16ToF32(i32 131, i32 %933)  ; LegacyF16ToF32(value)
  %935 = lshr i32 %868, 16
  %936 = call float @dx.op.legacyF16ToF32(i32 131, i32 %935)  ; LegacyF16ToF32(value)
  %937 = and i32 %869, 65535
  %938 = call float @dx.op.legacyF16ToF32(i32 131, i32 %937)  ; LegacyF16ToF32(value)
  br label %939

; <label>:939                                     ; preds = %866, %863
  %940 = phi float [ %938, %866 ], [ 0.000000e+00, %863 ]
  %941 = phi float [ %936, %866 ], [ 0.000000e+00, %863 ]
  %942 = phi float [ %934, %866 ], [ 0.000000e+00, %863 ]
  %943 = phi float [ %932, %866 ], [ 0.000000e+00, %863 ]
  %944 = phi float [ %930, %866 ], [ 0.000000e+00, %863 ]
  %945 = phi float [ %928, %866 ], [ 0.000000e+00, %863 ]
  %946 = phi float [ %926, %866 ], [ 0.000000e+00, %863 ]
  %947 = phi float [ %924, %866 ], [ 0.000000e+00, %863 ]
  %948 = phi float [ %922, %866 ], [ 0.000000e+00, %863 ]
  %949 = phi float [ %920, %866 ], [ 0.000000e+00, %863 ]
  %950 = phi float [ %918, %866 ], [ 0.000000e+00, %863 ]
  %951 = phi float [ %916, %866 ], [ 0.000000e+00, %863 ]
  %952 = phi float [ %914, %866 ], [ 0.000000e+00, %863 ]
  %953 = phi float [ %912, %866 ], [ 0.000000e+00, %863 ]
  %954 = phi float [ %910, %866 ], [ 0.000000e+00, %863 ]
  %955 = phi float [ %908, %866 ], [ 0.000000e+00, %863 ]
  %956 = phi float [ %906, %866 ], [ 0.000000e+00, %863 ]
  %957 = phi float [ %904, %866 ], [ 0.000000e+00, %863 ]
  %958 = phi float [ %902, %866 ], [ 0.000000e+00, %863 ]
  %959 = phi float [ %900, %866 ], [ 0.000000e+00, %863 ]
  %960 = phi float [ %898, %866 ], [ 0.000000e+00, %863 ]
  %961 = phi float [ %896, %866 ], [ 0.000000e+00, %863 ]
  %962 = phi float [ %894, %866 ], [ 0.000000e+00, %863 ]
  %963 = phi float [ %892, %866 ], [ 0.000000e+00, %863 ]
  %964 = phi float [ %890, %866 ], [ 0.000000e+00, %863 ]
  %965 = phi float [ %888, %866 ], [ 0.000000e+00, %863 ]
  %966 = phi float [ %886, %866 ], [ 0.000000e+00, %863 ]
  %967 = fcmp fast olt float %864, 1.000000e+00
  br i1 %967, label %968, label %1628, !dx.controlflow.hints !63

; <label>:968                                     ; preds = %939
  %969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %970 = extractvalue %dx.types.CBufRet.f32 %969, 0
  %971 = extractvalue %dx.types.CBufRet.f32 %969, 1
  %972 = fsub fast float %266, %970
  %973 = fsub fast float %267, %971
  %974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %975 = extractvalue %dx.types.CBufRet.f32 %974, 0
  %976 = extractvalue %dx.types.CBufRet.f32 %974, 1
  %977 = fmul fast float %972, %975
  %978 = fmul fast float %973, %976
  %979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %980 = extractvalue %dx.types.CBufRet.f32 %979, 0
  %981 = fmul fast float %980, %977
  %982 = extractvalue %dx.types.CBufRet.f32 %979, 1
  %983 = fadd fast float %981, %982
  %984 = extractvalue %dx.types.CBufRet.f32 %979, 2
  %985 = fmul fast float %984, %978
  %986 = extractvalue %dx.types.CBufRet.f32 %979, 3
  %987 = fadd fast float %985, %986
  %988 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %983, float %987, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %989 = extractvalue %dx.types.ResRet.f32 %988, 0
  %990 = extractvalue %dx.types.ResRet.f32 %988, 1
  %991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %992 = extractvalue %dx.types.CBufRet.f32 %991, 1
  %993 = extractvalue %dx.types.CBufRet.f32 %991, 0
  %994 = fsub fast float %992, %993
  %995 = fmul fast float %994, %989
  %996 = fadd fast float %995, %993
  %997 = extractvalue %dx.types.CBufRet.f32 %991, 3
  %998 = extractvalue %dx.types.CBufRet.f32 %991, 2
  %999 = fsub fast float %997, %998
  %1000 = fmul fast float %999, %990
  %1001 = fadd fast float %1000, %998
  %1002 = fsub fast float %268, %996
  %1003 = fsub fast float %1001, %996
  %1004 = fdiv fast float %1002, %1003
  %1005 = call float @dx.op.unary.f32(i32 7, float %1004)  ; Saturate(value)
  %1006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1007 = extractvalue %dx.types.CBufRet.f32 %1006, 0
  %1008 = fmul fast float %1007, %1005
  %1009 = extractvalue %dx.types.CBufRet.f32 %1006, 1
  %1010 = fadd fast float %1008, %1009
  %1011 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %19, float %983, float %987, float %1010, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1012 = extractvalue %dx.types.ResRet.f32 %1011, 0
  %1013 = extractvalue %dx.types.ResRet.f32 %1011, 1
  %1014 = extractvalue %dx.types.ResRet.f32 %1011, 2
  %1015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1016 = extractvalue %dx.types.CBufRet.f32 %1015, 0
  %1017 = extractvalue %dx.types.CBufRet.f32 %1015, 1
  %1018 = extractvalue %dx.types.CBufRet.f32 %1015, 2
  %1019 = fmul fast float %1016, %1012
  %1020 = fmul fast float %1017, %1013
  %1021 = fmul fast float %1018, %1014
  %1022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1023 = extractvalue %dx.types.CBufRet.f32 %1022, 0
  %1024 = extractvalue %dx.types.CBufRet.f32 %1022, 1
  %1025 = extractvalue %dx.types.CBufRet.f32 %1022, 2
  %1026 = fadd fast float %1019, %1023
  %1027 = fadd fast float %1020, %1024
  %1028 = fadd fast float %1021, %1025
  %1029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1030 = extractvalue %dx.types.CBufRet.f32 %1029, 0
  %1031 = fmul fast float %1030, %977
  %1032 = extractvalue %dx.types.CBufRet.f32 %1029, 1
  %1033 = fadd fast float %1031, %1032
  %1034 = extractvalue %dx.types.CBufRet.f32 %1029, 2
  %1035 = fmul fast float %1034, %978
  %1036 = extractvalue %dx.types.CBufRet.f32 %1029, 3
  %1037 = fadd fast float %1035, %1036
  %1038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1039 = extractvalue %dx.types.CBufRet.f32 %1038, 0
  %1040 = extractvalue %dx.types.CBufRet.f32 %1038, 1
  %1041 = extractvalue %dx.types.CBufRet.f32 %1038, 2
  %1042 = extractvalue %dx.types.CBufRet.f32 %1038, 3
  %1043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1044 = extractvalue %dx.types.CBufRet.f32 %1043, 0
  %1045 = extractvalue %dx.types.CBufRet.f32 %1043, 1
  %1046 = extractvalue %dx.types.CBufRet.f32 %1043, 2
  %1047 = extractvalue %dx.types.CBufRet.f32 %1043, 3
  %1048 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %1033, float %1037, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1049 = extractvalue %dx.types.ResRet.f32 %1048, 0
  %1050 = extractvalue %dx.types.ResRet.f32 %1048, 1
  %1051 = extractvalue %dx.types.ResRet.f32 %1048, 2
  %1052 = extractvalue %dx.types.ResRet.f32 %1048, 3
  %1053 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %1033, float %1037, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1054 = extractvalue %dx.types.ResRet.f32 %1053, 0
  %1055 = extractvalue %dx.types.ResRet.f32 %1053, 1
  %1056 = extractvalue %dx.types.ResRet.f32 %1053, 2
  %1057 = extractvalue %dx.types.ResRet.f32 %1053, 3
  %1058 = fmul fast float %1049, %1026
  %1059 = fmul fast float %1054, %1026
  %1060 = fmul fast float %1056, %1026
  %1061 = fmul fast float %1052, %1026
  %1062 = fadd fast float %1058, %1039
  %1063 = fadd fast float %1059, %1040
  %1064 = fadd fast float %1060, %1041
  %1065 = fadd fast float %1061, %1042
  %1066 = fmul fast float %1050, %1026
  %1067 = fmul fast float %1055, %1026
  %1068 = fadd fast float %1066, %1044
  %1069 = fadd fast float %1067, %1045
  %1070 = fmul fast float %1051, %1026
  %1071 = fmul fast float %1057, %1026
  %1072 = fadd fast float %1070, %1046
  %1073 = fadd fast float %1071, %1047
  %1074 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %1033, float %1037, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1075 = extractvalue %dx.types.ResRet.f32 %1074, 0
  %1076 = extractvalue %dx.types.ResRet.f32 %1074, 1
  %1077 = extractvalue %dx.types.ResRet.f32 %1074, 2
  %1078 = extractvalue %dx.types.ResRet.f32 %1074, 3
  %1079 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %1033, float %1037, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1080 = extractvalue %dx.types.ResRet.f32 %1079, 0
  %1081 = extractvalue %dx.types.ResRet.f32 %1079, 1
  %1082 = extractvalue %dx.types.ResRet.f32 %1079, 2
  %1083 = extractvalue %dx.types.ResRet.f32 %1079, 3
  %1084 = fmul fast float %1075, %1027
  %1085 = fmul fast float %1080, %1027
  %1086 = fmul fast float %1082, %1027
  %1087 = fmul fast float %1078, %1027
  %1088 = fadd fast float %1062, %1084
  %1089 = fadd fast float %1063, %1085
  %1090 = fadd fast float %1064, %1086
  %1091 = fadd fast float %1065, %1087
  %1092 = fmul fast float %1076, %1027
  %1093 = fmul fast float %1081, %1027
  %1094 = fadd fast float %1068, %1092
  %1095 = fadd fast float %1069, %1093
  %1096 = fmul fast float %1077, %1027
  %1097 = fmul fast float %1083, %1027
  %1098 = fadd fast float %1072, %1096
  %1099 = fadd fast float %1073, %1097
  %1100 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %1033, float %1037, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1101 = extractvalue %dx.types.ResRet.f32 %1100, 0
  %1102 = extractvalue %dx.types.ResRet.f32 %1100, 1
  %1103 = extractvalue %dx.types.ResRet.f32 %1100, 2
  %1104 = extractvalue %dx.types.ResRet.f32 %1100, 3
  %1105 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %1033, float %1037, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1106 = extractvalue %dx.types.ResRet.f32 %1105, 0
  %1107 = extractvalue %dx.types.ResRet.f32 %1105, 1
  %1108 = extractvalue %dx.types.ResRet.f32 %1105, 2
  %1109 = extractvalue %dx.types.ResRet.f32 %1105, 3
  %1110 = fmul fast float %1101, %1028
  %1111 = fmul fast float %1106, %1028
  %1112 = fmul fast float %1108, %1028
  %1113 = fmul fast float %1104, %1028
  %1114 = fadd fast float %1088, %1110
  %1115 = fadd fast float %1089, %1111
  %1116 = fadd fast float %1090, %1112
  %1117 = fadd fast float %1091, %1113
  %1118 = fmul fast float %1102, %1028
  %1119 = fmul fast float %1107, %1028
  %1120 = fadd fast float %1094, %1118
  %1121 = fadd fast float %1095, %1119
  %1122 = fmul fast float %1103, %1028
  %1123 = fmul fast float %1109, %1028
  %1124 = fadd fast float %1098, %1122
  %1125 = fadd fast float %1099, %1123
  %1126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1127 = extractvalue %dx.types.CBufRet.f32 %1126, 0
  %1128 = fsub fast float %266, %1127
  %1129 = fsub fast float %970, %266
  %1130 = call float @dx.op.binary.f32(i32 35, float %1129, float %1128)  ; FMax(a,b)
  %1131 = extractvalue %dx.types.CBufRet.f32 %1126, 1
  %1132 = fsub fast float %267, %1131
  %1133 = fsub fast float %971, %267
  %1134 = call float @dx.op.binary.f32(i32 35, float %1133, float %1132)  ; FMax(a,b)
  %1135 = call float @dx.op.binary.f32(i32 35, float %1130, float %1134)  ; FMax(a,b)
  %1136 = extractvalue %dx.types.CBufRet.f32 %974, 3
  %1137 = fmul fast float %1136, %1135
  %1138 = call float @dx.op.unary.f32(i32 7, float %1137)  ; Saturate(value)
  %1139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1140 = extractvalue %dx.types.CBufRet.f32 %1139, 0
  %1141 = extractvalue %dx.types.CBufRet.f32 %1139, 1
  %1142 = extractvalue %dx.types.CBufRet.f32 %1139, 2
  %1143 = extractvalue %dx.types.CBufRet.f32 %1139, 3
  %1144 = fsub fast float %1140, %1114
  %1145 = fsub fast float %1141, %1115
  %1146 = fsub fast float %1142, %1116
  %1147 = fsub fast float %1143, %1117
  %1148 = fmul fast float %1144, %1138
  %1149 = fmul fast float %1145, %1138
  %1150 = fmul fast float %1146, %1138
  %1151 = fmul fast float %1147, %1138
  %1152 = fadd fast float %1148, %1114
  %1153 = fadd fast float %1149, %1115
  %1154 = fadd fast float %1150, %1116
  %1155 = fadd fast float %1151, %1117
  %1156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1157 = extractvalue %dx.types.CBufRet.f32 %1156, 0
  %1158 = extractvalue %dx.types.CBufRet.f32 %1156, 1
  %1159 = fsub fast float %1157, %1120
  %1160 = fsub fast float %1158, %1121
  %1161 = fmul fast float %1159, %1138
  %1162 = fmul fast float %1160, %1138
  %1163 = fadd fast float %1161, %1120
  %1164 = fadd fast float %1162, %1121
  %1165 = extractvalue %dx.types.CBufRet.f32 %1156, 2
  %1166 = extractvalue %dx.types.CBufRet.f32 %1156, 3
  %1167 = fsub fast float %1165, %1124
  %1168 = fsub fast float %1166, %1125
  %1169 = fmul fast float %1167, %1138
  %1170 = fmul fast float %1168, %1138
  %1171 = fadd fast float %1169, %1124
  %1172 = fadd fast float %1170, %1125
  %1173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1174 = extractvalue %dx.types.CBufRet.f32 %1173, 0
  %1175 = fmul fast float %1174, %1152
  %1176 = fmul fast float %1174, %1153
  %1177 = fmul fast float %1174, %1154
  %1178 = fmul fast float %1174, %1155
  %1179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1180 = extractvalue %dx.types.CBufRet.f32 %1179, 0
  %1181 = fmul fast float %1180, %1163
  %1182 = fmul fast float %1180, %1164
  %1183 = fadd fast float %1181, %1175
  %1184 = fadd fast float %1182, %1177
  %1185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1186 = extractvalue %dx.types.CBufRet.f32 %1185, 0
  %1187 = fmul fast float %1186, %1171
  %1188 = fmul fast float %1186, %1172
  %1189 = fadd fast float %1183, %1187
  %1190 = fadd fast float %1184, %1188
  %1191 = extractvalue %dx.types.CBufRet.f32 %1173, 1
  %1192 = fmul fast float %1191, %1152
  %1193 = fmul fast float %1191, %1153
  %1194 = fmul fast float %1191, %1154
  %1195 = fmul fast float %1191, %1155
  %1196 = extractvalue %dx.types.CBufRet.f32 %1179, 1
  %1197 = fmul fast float %1196, %1163
  %1198 = fmul fast float %1196, %1164
  %1199 = fadd fast float %1197, %1192
  %1200 = fadd fast float %1198, %1194
  %1201 = extractvalue %dx.types.CBufRet.f32 %1185, 1
  %1202 = fmul fast float %1201, %1171
  %1203 = fmul fast float %1201, %1172
  %1204 = fadd fast float %1199, %1202
  %1205 = fadd fast float %1200, %1203
  %1206 = extractvalue %dx.types.CBufRet.f32 %1173, 2
  %1207 = fmul fast float %1206, %1152
  %1208 = fmul fast float %1206, %1153
  %1209 = fmul fast float %1206, %1154
  %1210 = fmul fast float %1206, %1155
  %1211 = extractvalue %dx.types.CBufRet.f32 %1179, 2
  %1212 = fmul fast float %1211, %1163
  %1213 = fmul fast float %1211, %1164
  %1214 = fadd fast float %1212, %1207
  %1215 = fadd fast float %1213, %1209
  %1216 = extractvalue %dx.types.CBufRet.f32 %1185, 2
  %1217 = fmul fast float %1216, %1171
  %1218 = fmul fast float %1216, %1172
  %1219 = fadd fast float %1214, %1217
  %1220 = fadd fast float %1215, %1218
  %1221 = fmul fast float %1208, %1208
  %1222 = fmul fast float %1220, %1220
  %1223 = fmul fast float %1210, %1210
  %1224 = fadd fast float %1223, %1221
  %1225 = fadd fast float %1224, %1222
  %1226 = call float @dx.op.unary.f32(i32 24, float %1225)  ; Sqrt(value)
  %1227 = fcmp fast ugt float %1226, 0.000000e+00
  br i1 %1227, label %1228, label %1243, !dx.controlflow.hints !64

; <label>:1228                                    ; preds = %968
  %1229 = fsub fast float -0.000000e+00, %1210
  %1230 = fdiv fast float %1229, %1226
  %1231 = fsub fast float -0.000000e+00, %1208
  %1232 = fdiv fast float %1231, %1226
  %1233 = fdiv fast float %1220, %1226
  %1234 = fmul fast float %1219, 0x3FE279A760000000
  %1235 = fmul fast float %1232, %1208
  %1236 = fmul fast float %1233, %1220
  %1237 = fmul fast float %1230, %1210
  %1238 = fadd fast float %1235, %1237
  %1239 = fsub fast float %1238, %1236
  %1240 = call float @dx.op.unary.f32(i32 6, float %1239)  ; FAbs(value)
  %1241 = fadd fast float %1240, 0x3DDB7CDFE0000000
  %1242 = fdiv fast float %1234, %1241
  br label %1243

; <label>:1243                                    ; preds = %1228, %968
  %1244 = phi float [ %1242, %1228 ], [ 1.000000e+00, %968 ]
  %1245 = fmul fast float %1193, %1193
  %1246 = fmul fast float %1205, %1205
  %1247 = fmul fast float %1195, %1195
  %1248 = fadd fast float %1247, %1245
  %1249 = fadd fast float %1248, %1246
  %1250 = call float @dx.op.unary.f32(i32 24, float %1249)  ; Sqrt(value)
  %1251 = fcmp fast ugt float %1250, 0.000000e+00
  br i1 %1251, label %1252, label %1267, !dx.controlflow.hints !64

; <label>:1252                                    ; preds = %1243
  %1253 = fsub fast float -0.000000e+00, %1195
  %1254 = fdiv fast float %1253, %1250
  %1255 = fsub fast float -0.000000e+00, %1193
  %1256 = fdiv fast float %1255, %1250
  %1257 = fdiv fast float %1205, %1250
  %1258 = fmul fast float %1204, 0x3FE279A760000000
  %1259 = fmul fast float %1256, %1193
  %1260 = fmul fast float %1257, %1205
  %1261 = fmul fast float %1254, %1195
  %1262 = fadd fast float %1259, %1261
  %1263 = fsub fast float %1262, %1260
  %1264 = call float @dx.op.unary.f32(i32 6, float %1263)  ; FAbs(value)
  %1265 = fadd fast float %1264, 0x3DDB7CDFE0000000
  %1266 = fdiv fast float %1258, %1265
  br label %1267

; <label>:1267                                    ; preds = %1252, %1243
  %1268 = phi float [ %1266, %1252 ], [ 1.000000e+00, %1243 ]
  %1269 = call float @dx.op.binary.f32(i32 36, float %1268, float %1244)  ; FMin(a,b)
  %1270 = fmul fast float %1176, %1176
  %1271 = fmul fast float %1190, %1190
  %1272 = fmul fast float %1178, %1178
  %1273 = fadd fast float %1272, %1270
  %1274 = fadd fast float %1273, %1271
  %1275 = call float @dx.op.unary.f32(i32 24, float %1274)  ; Sqrt(value)
  %1276 = fcmp fast ugt float %1275, 0.000000e+00
  br i1 %1276, label %1277, label %1292, !dx.controlflow.hints !64

; <label>:1277                                    ; preds = %1267
  %1278 = fsub fast float -0.000000e+00, %1178
  %1279 = fdiv fast float %1278, %1275
  %1280 = fsub fast float -0.000000e+00, %1176
  %1281 = fdiv fast float %1280, %1275
  %1282 = fdiv fast float %1190, %1275
  %1283 = fmul fast float %1189, 0x3FE279A760000000
  %1284 = fmul fast float %1281, %1176
  %1285 = fmul fast float %1282, %1190
  %1286 = fmul fast float %1279, %1178
  %1287 = fadd fast float %1284, %1286
  %1288 = fsub fast float %1287, %1285
  %1289 = call float @dx.op.unary.f32(i32 6, float %1288)  ; FAbs(value)
  %1290 = fadd fast float %1289, 0x3DDB7CDFE0000000
  %1291 = fdiv fast float %1283, %1290
  br label %1292

; <label>:1292                                    ; preds = %1277, %1267
  %1293 = phi float [ %1291, %1277 ], [ 1.000000e+00, %1267 ]
  %1294 = call float @dx.op.binary.f32(i32 36, float %1293, float %1269)  ; FMin(a,b)
  %1295 = call float @dx.op.unary.f32(i32 7, float %1294)  ; Saturate(value)
  %1296 = fcmp fast olt float %1295, 1.000000e+00
  br i1 %1296, label %1297, label %1307, !dx.controlflow.hints !65

; <label>:1297                                    ; preds = %1292
  %1298 = fmul fast float %1295, %1176
  %1299 = fmul fast float %1295, %1190
  %1300 = fmul fast float %1295, %1178
  %1301 = fmul fast float %1295, %1193
  %1302 = fmul fast float %1295, %1205
  %1303 = fmul fast float %1295, %1195
  %1304 = fmul fast float %1295, %1208
  %1305 = fmul fast float %1295, %1220
  %1306 = fmul fast float %1295, %1210
  br label %1307

; <label>:1307                                    ; preds = %1297, %1292
  %1308 = phi float [ %1304, %1297 ], [ %1208, %1292 ]
  %1309 = phi float [ %1305, %1297 ], [ %1220, %1292 ]
  %1310 = phi float [ %1306, %1297 ], [ %1210, %1292 ]
  %1311 = phi float [ %1301, %1297 ], [ %1193, %1292 ]
  %1312 = phi float [ %1302, %1297 ], [ %1205, %1292 ]
  %1313 = phi float [ %1303, %1297 ], [ %1195, %1292 ]
  %1314 = phi float [ %1298, %1297 ], [ %1176, %1292 ]
  %1315 = phi float [ %1299, %1297 ], [ %1190, %1292 ]
  %1316 = phi float [ %1300, %1297 ], [ %1178, %1292 ]
  %1317 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1189)  ; FMax(a,b)
  %1318 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1204)  ; FMax(a,b)
  %1319 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1219)  ; FMax(a,b)
  %1320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1321 = extractvalue %dx.types.CBufRet.f32 %1320, 0
  %1322 = fcmp fast ogt float %1321, 0.000000e+00
  %1323 = fcmp fast oge float %977, 0.000000e+00
  %1324 = and i1 %1323, %1322
  %1325 = fcmp fast ole float %977, 1.000000e+00
  %1326 = and i1 %1325, %1324
  %1327 = fcmp fast oge float %978, 0.000000e+00
  %1328 = and i1 %1327, %1326
  %1329 = fcmp fast ole float %978, 1.000000e+00
  %1330 = and i1 %1329, %1328
  br i1 %1330, label %1331, label %1476, !dx.controlflow.hints !66

; <label>:1331                                    ; preds = %1307
  %1332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1333 = extractvalue %dx.types.CBufRet.f32 %1332, 2
  %1334 = extractvalue %dx.types.CBufRet.f32 %1332, 3
  %1335 = fmul fast float %1333, %977
  %1336 = fmul fast float %1334, %978
  %1337 = call float @dx.op.unary.f32(i32 27, float %1335)  ; Round_ni(value)
  %1338 = call float @dx.op.unary.f32(i32 27, float %1336)  ; Round_ni(value)
  %1339 = fptosi float %1337 to i32
  %1340 = fptosi float %1338 to i32
  %1341 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %1339, i32 %1340, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1342 = extractvalue %dx.types.ResRet.i32 %1341, 0
  %1343 = and i32 %1342, 65535
  %1344 = lshr i32 %1342, 16
  %1345 = icmp eq i32 %1343, 65535
  br i1 %1345, label %1382, label %1346, !dx.controlflow.hints !67

; <label>:1346                                    ; preds = %1331
  %1347 = extractvalue %dx.types.CBufRet.f32 %1320, 1
  %1348 = extractvalue %dx.types.CBufRet.f32 %1332, 0
  %1349 = extractvalue %dx.types.CBufRet.f32 %1332, 1
  %1350 = fmul fast float %1348, %977
  %1351 = fmul fast float %1349, %978
  %1352 = fmul fast float %1350, 1.250000e-01
  %1353 = fmul fast float %1351, 1.250000e-01
  %1354 = call float @dx.op.unary.f32(i32 27, float %1352)  ; Round_ni(value)
  %1355 = call float @dx.op.unary.f32(i32 27, float %1353)  ; Round_ni(value)
  %1356 = fmul fast float %1354, 8.000000e+00
  %1357 = fmul fast float %1355, 8.000000e+00
  %1358 = and i32 %1342, 255
  %1359 = lshr i32 %1342, 8
  %1360 = and i32 %1359, 255
  %1361 = mul nuw nsw i32 %1358, 9
  %1362 = uitofp i32 %1361 to float
  %1363 = mul nuw nsw i32 %1360, 9
  %1364 = uitofp i32 %1363 to float
  %1365 = fadd fast float %1362, 5.000000e-01
  %1366 = fadd fast float %1365, %1350
  %1367 = fsub fast float %1366, %1356
  %1368 = fadd fast float %1364, 5.000000e-01
  %1369 = fadd fast float %1368, %1351
  %1370 = fsub fast float %1369, %1357
  %1371 = fdiv fast float %1367, %1321
  %1372 = fdiv fast float %1370, %1347
  %1373 = fmul fast float %1005, 4.375000e-01
  %1374 = fadd fast float %1373, 3.125000e-02
  %1375 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %19, float %1371, float %1372, float %1374, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1376 = extractvalue %dx.types.ResRet.f32 %1375, 0
  %1377 = extractvalue %dx.types.ResRet.f32 %1375, 1
  %1378 = extractvalue %dx.types.ResRet.f32 %1375, 2
  %1379 = fadd fast float %1376, %1317
  %1380 = fadd fast float %1377, %1318
  %1381 = fadd fast float %1378, %1319
  br label %1382

; <label>:1382                                    ; preds = %1346, %1331
  %1383 = phi float [ %1381, %1346 ], [ %1319, %1331 ]
  %1384 = phi float [ %1380, %1346 ], [ %1318, %1331 ]
  %1385 = phi float [ %1379, %1346 ], [ %1317, %1331 ]
  %1386 = icmp eq i32 %1344, 65535
  br i1 %1386, label %1476, label %1387, !dx.controlflow.hints !68

; <label>:1387                                    ; preds = %1382
  %1388 = extractvalue %dx.types.CBufRet.f32 %1320, 1
  %1389 = extractvalue %dx.types.CBufRet.f32 %1332, 0
  %1390 = extractvalue %dx.types.CBufRet.f32 %1332, 1
  %1391 = fmul fast float %1389, %977
  %1392 = fmul fast float %1390, %978
  %1393 = fmul fast float %1391, 1.250000e-01
  %1394 = fmul fast float %1392, 1.250000e-01
  %1395 = call float @dx.op.unary.f32(i32 27, float %1393)  ; Round_ni(value)
  %1396 = call float @dx.op.unary.f32(i32 27, float %1394)  ; Round_ni(value)
  %1397 = fmul fast float %1395, 8.000000e+00
  %1398 = fmul fast float %1396, 8.000000e+00
  %1399 = fsub fast float %1391, %1397
  %1400 = fsub fast float %1392, %1398
  %1401 = fadd fast float %1399, 5.000000e-01
  %1402 = fadd fast float %1400, 5.000000e-01
  %1403 = and i32 %1344, 255
  %1404 = lshr i32 %1342, 24
  %1405 = mul nuw nsw i32 %1403, 9
  %1406 = uitofp i32 %1405 to float
  %1407 = mul nuw nsw i32 %1404, 9
  %1408 = uitofp i32 %1407 to float
  %1409 = fadd fast float %1401, %1406
  %1410 = fadd fast float %1402, %1408
  %1411 = fdiv fast float %1409, %1321
  %1412 = fdiv fast float %1410, %1388
  %1413 = fmul fast float %1005, 4.375000e-01
  %1414 = fadd fast float %1413, 3.125000e-02
  %1415 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %19, float %1411, float %1412, float %1414, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1416 = extractvalue %dx.types.ResRet.f32 %1415, 0
  %1417 = extractvalue %dx.types.ResRet.f32 %1415, 1
  %1418 = extractvalue %dx.types.ResRet.f32 %1415, 2
  %1419 = fadd fast float %1413, 5.312500e-01
  %1420 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %19, float %1411, float %1412, float %1419, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1421 = extractvalue %dx.types.ResRet.f32 %1420, 0
  %1422 = extractvalue %dx.types.ResRet.f32 %1420, 1
  %1423 = extractvalue %dx.types.ResRet.f32 %1420, 2
  %1424 = fmul fast float %1421, 2.000000e+00
  %1425 = fmul fast float %1422, 2.000000e+00
  %1426 = fmul fast float %1423, 2.000000e+00
  %1427 = fadd fast float %1424, -1.000000e+00
  %1428 = fadd fast float %1425, -1.000000e+00
  %1429 = fadd fast float %1426, -1.000000e+00
  %1430 = fmul fast float %1427, %1427
  %1431 = fmul fast float %1428, %1428
  %1432 = fadd fast float %1430, %1431
  %1433 = fmul fast float %1429, %1429
  %1434 = fadd fast float %1432, %1433
  %1435 = call float @dx.op.unary.f32(i32 24, float %1434)  ; Sqrt(value)
  %1436 = fcmp fast ogt float %1435, 0.000000e+00
  br i1 %1436, label %1437, label %1441, !dx.controlflow.hints !69

; <label>:1437                                    ; preds = %1387
  %1438 = fdiv fast float %1427, %1435
  %1439 = fdiv fast float %1428, %1435
  %1440 = fdiv fast float %1429, %1435
  br label %1441

; <label>:1441                                    ; preds = %1437, %1387
  %1442 = phi float [ %1438, %1437 ], [ 0.000000e+00, %1387 ]
  %1443 = phi float [ %1439, %1437 ], [ 0.000000e+00, %1387 ]
  %1444 = phi float [ %1440, %1437 ], [ 0.000000e+00, %1387 ]
  %1445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1446 = extractvalue %dx.types.CBufRet.f32 %1445, 0
  %1447 = extractvalue %dx.types.CBufRet.f32 %1445, 1
  %1448 = fsub fast float %266, %1446
  %1449 = fsub fast float %267, %1447
  %1450 = fmul fast float %1448, %1448
  %1451 = fmul fast float %1449, %1449
  %1452 = fadd fast float %1450, %1451
  %1453 = call float @dx.op.unary.f32(i32 24, float %1452)  ; Sqrt(value)
  %1454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1455 = extractvalue %dx.types.CBufRet.f32 %1454, 0
  %1456 = extractvalue %dx.types.CBufRet.f32 %1454, 1
  %1457 = fsub fast float %1453, %1455
  %1458 = fdiv fast float %1457, %1456
  %1459 = call float @dx.op.unary.f32(i32 7, float %1458)  ; Saturate(value)
  %1460 = fmul fast float %1459, 2.000000e+00
  %1461 = fsub fast float 3.000000e+00, %1460
  %1462 = fmul fast float %1459, %1459
  %1463 = fmul fast float %1462, %1461
  %1464 = call float @dx.op.dot3.f32(i32 55, float %1442, float %1443, float %1444, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1465 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1464)  ; FMax(a,b)
  %1466 = fmul fast float %1465, 0x400C5BF8A0000000
  %1467 = fmul fast float %1463, %1416
  %1468 = fmul fast float %1467, %1466
  %1469 = fadd fast float %1468, %1385
  %1470 = fmul fast float %1463, %1417
  %1471 = fmul fast float %1470, %1466
  %1472 = fadd fast float %1471, %1384
  %1473 = fmul fast float %1463, %1418
  %1474 = fmul fast float %1473, %1466
  %1475 = fadd fast float %1474, %1383
  br label %1476

; <label>:1476                                    ; preds = %1441, %1382, %1307
  %1477 = phi float [ %1475, %1441 ], [ %1383, %1382 ], [ %1319, %1307 ]
  %1478 = phi float [ %1472, %1441 ], [ %1384, %1382 ], [ %1318, %1307 ]
  %1479 = phi float [ %1469, %1441 ], [ %1385, %1382 ], [ %1317, %1307 ]
  %1480 = fcmp fast ogt float %268, %1001
  %1481 = and i1 %1323, %1480
  %1482 = and i1 %1325, %1481
  %1483 = and i1 %1327, %1482
  %1484 = and i1 %1329, %1483
  br i1 %1484, label %1485, label %1542, !dx.controlflow.hints !70

; <label>:1485                                    ; preds = %1476
  %1486 = fmul fast float %1003, 0x3FC24924A0000000
  %1487 = fsub fast float %268, %1001
  %1488 = fdiv fast float %1487, %1486
  %1489 = call float @dx.op.unary.f32(i32 7, float %1488)  ; Saturate(value)
  %1490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1491 = extractvalue %dx.types.CBufRet.f32 %1490, 0
  %1492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1493 = extractvalue %dx.types.CBufRet.f32 %1492, 0
  %1494 = extractvalue %dx.types.CBufRet.f32 %1492, 1
  %1495 = extractvalue %dx.types.CBufRet.f32 %1492, 2
  %1496 = fsub fast float %1491, %1479
  %1497 = fsub fast float %1493, %1314
  %1498 = fsub fast float %1494, %1315
  %1499 = fsub fast float %1495, %1316
  %1500 = fmul fast float %1496, %1489
  %1501 = fmul fast float %1497, %1489
  %1502 = fmul fast float %1498, %1489
  %1503 = fmul fast float %1499, %1489
  %1504 = fadd fast float %1500, %1479
  %1505 = fadd fast float %1501, %1314
  %1506 = fadd fast float %1502, %1315
  %1507 = fadd fast float %1503, %1316
  %1508 = extractvalue %dx.types.CBufRet.f32 %1490, 1
  %1509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1510 = extractvalue %dx.types.CBufRet.f32 %1509, 0
  %1511 = extractvalue %dx.types.CBufRet.f32 %1509, 1
  %1512 = extractvalue %dx.types.CBufRet.f32 %1509, 2
  %1513 = fsub fast float %1508, %1478
  %1514 = fsub fast float %1510, %1311
  %1515 = fsub fast float %1511, %1312
  %1516 = fsub fast float %1512, %1313
  %1517 = fmul fast float %1513, %1489
  %1518 = fmul fast float %1514, %1489
  %1519 = fmul fast float %1515, %1489
  %1520 = fmul fast float %1516, %1489
  %1521 = fadd fast float %1517, %1478
  %1522 = fadd fast float %1518, %1311
  %1523 = fadd fast float %1519, %1312
  %1524 = fadd fast float %1520, %1313
  %1525 = extractvalue %dx.types.CBufRet.f32 %1490, 2
  %1526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1527 = extractvalue %dx.types.CBufRet.f32 %1526, 0
  %1528 = extractvalue %dx.types.CBufRet.f32 %1526, 1
  %1529 = extractvalue %dx.types.CBufRet.f32 %1526, 2
  %1530 = fsub fast float %1525, %1477
  %1531 = fsub fast float %1527, %1308
  %1532 = fsub fast float %1528, %1309
  %1533 = fsub fast float %1529, %1310
  %1534 = fmul fast float %1530, %1489
  %1535 = fmul fast float %1531, %1489
  %1536 = fmul fast float %1532, %1489
  %1537 = fmul fast float %1533, %1489
  %1538 = fadd fast float %1534, %1477
  %1539 = fadd fast float %1535, %1308
  %1540 = fadd fast float %1536, %1309
  %1541 = fadd fast float %1537, %1310
  br label %1542

; <label>:1542                                    ; preds = %1485, %1476
  %1543 = phi float [ %1538, %1485 ], [ %1477, %1476 ]
  %1544 = phi float [ %1539, %1485 ], [ %1308, %1476 ]
  %1545 = phi float [ %1540, %1485 ], [ %1309, %1476 ]
  %1546 = phi float [ %1541, %1485 ], [ %1310, %1476 ]
  %1547 = phi float [ %1521, %1485 ], [ %1478, %1476 ]
  %1548 = phi float [ %1522, %1485 ], [ %1311, %1476 ]
  %1549 = phi float [ %1523, %1485 ], [ %1312, %1476 ]
  %1550 = phi float [ %1524, %1485 ], [ %1313, %1476 ]
  %1551 = phi float [ %1504, %1485 ], [ %1479, %1476 ]
  %1552 = phi float [ %1505, %1485 ], [ %1314, %1476 ]
  %1553 = phi float [ %1506, %1485 ], [ %1315, %1476 ]
  %1554 = phi float [ %1507, %1485 ], [ %1316, %1476 ]
  %1555 = extractvalue %dx.types.CBufRet.f32 %1126, 3
  %1556 = fmul fast float %1555, %1551
  %1557 = fmul fast float %1555, %1547
  %1558 = fmul fast float %1555, %1543
  %1559 = fmul fast float %1552, 1.500000e+00
  %1560 = fmul fast float %1559, %1555
  %1561 = fmul fast float %1553, 1.500000e+00
  %1562 = fmul fast float %1561, %1555
  %1563 = fmul fast float %1554, 1.500000e+00
  %1564 = fmul fast float %1563, %1555
  %1565 = fmul fast float %1548, 1.500000e+00
  %1566 = fmul fast float %1565, %1555
  %1567 = fmul fast float %1549, 1.500000e+00
  %1568 = fmul fast float %1567, %1555
  %1569 = fmul fast float %1550, 1.500000e+00
  %1570 = fmul fast float %1569, %1555
  %1571 = fmul fast float %1544, 1.500000e+00
  %1572 = fmul fast float %1571, %1555
  %1573 = fmul fast float %1545, 1.500000e+00
  %1574 = fmul fast float %1573, %1555
  %1575 = fmul fast float %1546, 1.500000e+00
  %1576 = fmul fast float %1575, %1555
  %1577 = fsub fast float %966, %1556
  %1578 = fmul fast float %1577, %864
  %1579 = fadd fast float %1578, %1556
  %1580 = fsub fast float %965, %1560
  %1581 = fmul fast float %1580, %864
  %1582 = fadd fast float %1581, %1560
  %1583 = fsub fast float %964, %1562
  %1584 = fmul fast float %1583, %864
  %1585 = fadd fast float %1584, %1562
  %1586 = fsub fast float %963, %1564
  %1587 = fmul fast float %1586, %864
  %1588 = fadd fast float %1587, %1564
  %1589 = fmul fast float %962, %864
  %1590 = fmul fast float %961, %864
  %1591 = fmul fast float %960, %864
  %1592 = fmul fast float %959, %864
  %1593 = fmul fast float %958, %864
  %1594 = fsub fast float %957, %1557
  %1595 = fmul fast float %1594, %864
  %1596 = fadd fast float %1595, %1557
  %1597 = fsub fast float %956, %1566
  %1598 = fmul fast float %1597, %864
  %1599 = fadd fast float %1598, %1566
  %1600 = fsub fast float %955, %1568
  %1601 = fmul fast float %1600, %864
  %1602 = fadd fast float %1601, %1568
  %1603 = fsub fast float %954, %1570
  %1604 = fmul fast float %1603, %864
  %1605 = fadd fast float %1604, %1570
  %1606 = fmul fast float %953, %864
  %1607 = fmul fast float %952, %864
  %1608 = fmul fast float %951, %864
  %1609 = fmul fast float %950, %864
  %1610 = fmul fast float %949, %864
  %1611 = fsub fast float %948, %1558
  %1612 = fmul fast float %1611, %864
  %1613 = fadd fast float %1612, %1558
  %1614 = fsub fast float %947, %1572
  %1615 = fmul fast float %1614, %864
  %1616 = fadd fast float %1615, %1572
  %1617 = fsub fast float %946, %1574
  %1618 = fmul fast float %1617, %864
  %1619 = fadd fast float %1618, %1574
  %1620 = fsub fast float %945, %1576
  %1621 = fmul fast float %1620, %864
  %1622 = fadd fast float %1621, %1576
  %1623 = fmul fast float %944, %864
  %1624 = fmul fast float %943, %864
  %1625 = fmul fast float %942, %864
  %1626 = fmul fast float %941, %864
  %1627 = fmul fast float %940, %864
  br label %1628

; <label>:1628                                    ; preds = %1542, %939
  %1629 = phi float [ %1627, %1542 ], [ %940, %939 ]
  %1630 = phi float [ %1626, %1542 ], [ %941, %939 ]
  %1631 = phi float [ %1625, %1542 ], [ %942, %939 ]
  %1632 = phi float [ %1624, %1542 ], [ %943, %939 ]
  %1633 = phi float [ %1623, %1542 ], [ %944, %939 ]
  %1634 = phi float [ %1622, %1542 ], [ %945, %939 ]
  %1635 = phi float [ %1619, %1542 ], [ %946, %939 ]
  %1636 = phi float [ %1616, %1542 ], [ %947, %939 ]
  %1637 = phi float [ %1613, %1542 ], [ %948, %939 ]
  %1638 = phi float [ %1610, %1542 ], [ %949, %939 ]
  %1639 = phi float [ %1609, %1542 ], [ %950, %939 ]
  %1640 = phi float [ %1608, %1542 ], [ %951, %939 ]
  %1641 = phi float [ %1607, %1542 ], [ %952, %939 ]
  %1642 = phi float [ %1606, %1542 ], [ %953, %939 ]
  %1643 = phi float [ %1605, %1542 ], [ %954, %939 ]
  %1644 = phi float [ %1602, %1542 ], [ %955, %939 ]
  %1645 = phi float [ %1599, %1542 ], [ %956, %939 ]
  %1646 = phi float [ %1596, %1542 ], [ %957, %939 ]
  %1647 = phi float [ %1593, %1542 ], [ %958, %939 ]
  %1648 = phi float [ %1592, %1542 ], [ %959, %939 ]
  %1649 = phi float [ %1591, %1542 ], [ %960, %939 ]
  %1650 = phi float [ %1590, %1542 ], [ %961, %939 ]
  %1651 = phi float [ %1589, %1542 ], [ %962, %939 ]
  %1652 = phi float [ %1588, %1542 ], [ %963, %939 ]
  %1653 = phi float [ %1585, %1542 ], [ %964, %939 ]
  %1654 = phi float [ %1582, %1542 ], [ %965, %939 ]
  %1655 = phi float [ %1579, %1542 ], [ %966, %939 ]
  %1656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1657 = extractvalue %dx.types.CBufRet.f32 %1656, 2
  %1658 = fmul fast float %1657, %1657
  %1659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1660 = extractvalue %dx.types.CBufRet.f32 %1659, 0
  %1661 = extractvalue %dx.types.CBufRet.f32 %1659, 1
  %1662 = extractvalue %dx.types.CBufRet.f32 %1659, 2
  %1663 = fmul fast float %1655, 0x3FD20DD760000000
  %1664 = fmul fast float %1662, %1653
  %1665 = fmul fast float %1662, %1662
  %1666 = fmul fast float %1665, 0x3FEE471020000000
  %1667 = fadd fast float %1666, 0xBFD42F6020000000
  %1668 = fmul fast float %1667, %1649
  %1669 = fmul fast float %1660, %1652
  %1670 = fmul fast float %1661, %1654
  %1671 = fmul fast float %1662, 0x3FF17B1420000000
  %1672 = fmul fast float %1658, %1648
  %1673 = fmul fast float %1672, %1660
  %1674 = fmul fast float %1673, %1671
  %1675 = fmul fast float %1658, %1650
  %1676 = fmul fast float %1675, %1661
  %1677 = fmul fast float %1676, %1671
  %1678 = fmul fast float %1660, %1660
  %1679 = fmul fast float %1661, %1661
  %1680 = fsub fast float %1678, %1679
  %1681 = fmul fast float %1647, 0x3FE17B1420000000
  %1682 = fmul fast float %1681, %1680
  %1683 = fmul fast float %1651, 0x3FF17B1420000000
  %1684 = fmul fast float %1683, %1661
  %1685 = fmul fast float %1684, %1660
  %1686 = fadd fast float %1682, %1685
  %1687 = fadd fast float %1686, %1668
  %1688 = fmul fast float %1687, %1658
  %1689 = fsub fast float %1670, %1664
  %1690 = fadd fast float %1689, %1669
  %1691 = fmul fast float %1690, 0x3FDF454380000000
  %1692 = fmul fast float %1691, %1657
  %1693 = fsub fast float %1663, %1674
  %1694 = fsub fast float %1693, %1677
  %1695 = fadd fast float %1694, %1688
  %1696 = fadd fast float %1695, %1692
  %1697 = fmul fast float %1646, 0x3FD20DD760000000
  %1698 = fmul fast float %1662, %1644
  %1699 = fmul fast float %1667, %1640
  %1700 = fmul fast float %1660, %1643
  %1701 = fmul fast float %1661, %1645
  %1702 = fmul fast float %1658, %1639
  %1703 = fmul fast float %1702, %1660
  %1704 = fmul fast float %1703, %1671
  %1705 = fmul fast float %1658, %1641
  %1706 = fmul fast float %1705, %1661
  %1707 = fmul fast float %1706, %1671
  %1708 = fmul fast float %1638, 0x3FE17B1420000000
  %1709 = fmul fast float %1708, %1680
  %1710 = fmul fast float %1642, 0x3FF17B1420000000
  %1711 = fmul fast float %1710, %1661
  %1712 = fmul fast float %1711, %1660
  %1713 = fadd fast float %1709, %1712
  %1714 = fadd fast float %1713, %1699
  %1715 = fmul fast float %1714, %1658
  %1716 = fsub fast float %1701, %1698
  %1717 = fadd fast float %1716, %1700
  %1718 = fmul fast float %1717, 0x3FDF454380000000
  %1719 = fmul fast float %1718, %1657
  %1720 = fsub fast float %1697, %1704
  %1721 = fsub fast float %1720, %1707
  %1722 = fadd fast float %1721, %1715
  %1723 = fadd fast float %1722, %1719
  %1724 = fmul fast float %1637, 0x3FD20DD760000000
  %1725 = fmul fast float %1662, %1635
  %1726 = fmul fast float %1667, %1631
  %1727 = fmul fast float %1660, %1634
  %1728 = fmul fast float %1661, %1636
  %1729 = fmul fast float %1658, %1630
  %1730 = fmul fast float %1729, %1660
  %1731 = fmul fast float %1730, %1671
  %1732 = fmul fast float %1658, %1632
  %1733 = fmul fast float %1732, %1661
  %1734 = fmul fast float %1733, %1671
  %1735 = fmul fast float %1629, 0x3FE17B1420000000
  %1736 = fmul fast float %1735, %1680
  %1737 = fmul fast float %1633, 0x3FF17B1420000000
  %1738 = fmul fast float %1737, %1661
  %1739 = fmul fast float %1738, %1660
  %1740 = fadd fast float %1736, %1739
  %1741 = fadd fast float %1740, %1726
  %1742 = fmul fast float %1741, %1658
  %1743 = fsub fast float %1728, %1725
  %1744 = fadd fast float %1743, %1727
  %1745 = fmul fast float %1744, 0x3FDF454380000000
  %1746 = fmul fast float %1745, %1657
  %1747 = fsub fast float %1724, %1731
  %1748 = fsub fast float %1747, %1734
  %1749 = fadd fast float %1748, %1742
  %1750 = fadd fast float %1749, %1746
  %1751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1752 = extractvalue %dx.types.CBufRet.f32 %1751, 3
  %1753 = extractvalue %dx.types.CBufRet.f32 %805, 0
  %1754 = fmul fast float %1753, %1752
  %1755 = fmul fast float %1754, %1696
  %1756 = fmul fast float %1754, %1723
  %1757 = fmul fast float %1754, %1750
  %1758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1759 = extractvalue %dx.types.CBufRet.f32 %1758, 3
  %1760 = fcmp fast une float %1759, 0.000000e+00
  %1761 = extractvalue %dx.types.CBufRet.f32 %1758, 0
  %1762 = extractvalue %dx.types.CBufRet.f32 %1758, 1
  %1763 = extractvalue %dx.types.CBufRet.f32 %1758, 2
  br i1 %1760, label %1764, label %1786, !dx.controlflow.hints !71

; <label>:1764                                    ; preds = %1628
  %1765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1766 = extractvalue %dx.types.CBufRet.f32 %1765, 0
  %1767 = extractvalue %dx.types.CBufRet.f32 %1765, 1
  %1768 = extractvalue %dx.types.CBufRet.f32 %1765, 2
  %1769 = call float @dx.op.dot3.f32(i32 55, float %1761, float %1762, float %1763, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %1770 = fcmp fast ogt float %815, 0.000000e+00
  %1771 = select i1 %1770, float 1.000000e+00, float -1.000000e+00
  %1772 = fmul fast float %1771, 5.000000e-01
  %1773 = fmul fast float %1772, %1769
  %1774 = fmul fast float %1771, %815
  %1775 = fadd fast float %1773, 4.921875e-01
  %1776 = fadd fast float %1774, -3.125000e-02
  %1777 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %1775, float 0x3FB25F3060000000, float %1776, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1778 = extractvalue %dx.types.ResRet.f32 %1777, 0
  %1779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1780 = extractvalue %dx.types.CBufRet.f32 %1779, 0
  %1781 = fmul fast float %1778, 0x400921FB60000000
  %1782 = fmul fast float %1781, %1780
  %1783 = fmul fast float %1782, %1766
  %1784 = fmul fast float %1782, %1767
  %1785 = fmul fast float %1782, %1768
  br label %1786

; <label>:1786                                    ; preds = %1764, %1628
  %1787 = phi float [ %1783, %1764 ], [ 0.000000e+00, %1628 ]
  %1788 = phi float [ %1784, %1764 ], [ 0.000000e+00, %1628 ]
  %1789 = phi float [ %1785, %1764 ], [ 0.000000e+00, %1628 ]
  %1790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1791 = extractvalue %dx.types.CBufRet.f32 %1790, 0
  %1792 = fmul fast float %1791, %1761
  %1793 = fmul fast float %1791, %1762
  %1794 = fmul fast float %1791, %1763
  %1795 = fadd fast float %1792, %266
  %1796 = fsub fast float -0.000000e+00, %1795
  %1797 = fadd fast float %1793, %267
  %1798 = fsub fast float -0.000000e+00, %1797
  %1799 = fadd fast float %1794, %268
  br i1 %281, label %1874, label %1800, !dx.controlflow.hints !42

; <label>:1800                                    ; preds = %1786
  %1801 = extractvalue %dx.types.CBufRet.f32 %1790, 1
  %1802 = fcmp fast ogt float %1801, %1791
  br i1 %1802, label %1803, label %1805, !dx.controlflow.hints !43

; <label>:1803                                    ; preds = %1800
  %1804 = fsub fast float %1801, %1791
  br label %1865

; <label>:1805                                    ; preds = %1800
  %1806 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1807 = extractvalue %dx.types.CBufRet.i32 %1806, 3
  %1808 = icmp eq i32 %1807, 0
  %1809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %1810 = extractvalue %dx.types.CBufRet.f32 %1809, 2
  %1811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1812 = extractvalue %dx.types.CBufRet.f32 %1811, 2
  %1813 = fsub fast float %1810, %1799
  %1814 = fadd fast float %1813, %1812
  %1815 = fsub fast float 0xC7EFFFFFE0000000, %1799
  br i1 %1808, label %1825, label %1816, !dx.controlflow.hints !36

; <label>:1816                                    ; preds = %1805
  %1817 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1796, float %1798, float %1814)  ; Dot3(ax,ay,az,bx,by,bz)
  %1818 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1761, float %1762, float %1763)  ; Dot3(ax,ay,az,bx,by,bz)
  %1819 = fdiv fast float 1.000000e+00, %1818
  %1820 = fmul fast float %1819, %1817
  %1821 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1796, float %1798, float %1815)  ; Dot3(ax,ay,az,bx,by,bz)
  %1822 = fmul fast float %1819, %1821
  %1823 = call float @dx.op.binary.f32(i32 36, float %1820, float %1822)  ; FMin(a,b)
  %1824 = call float @dx.op.binary.f32(i32 35, float %1820, float %1822)  ; FMax(a,b)
  br label %1858

; <label>:1825                                    ; preds = %1805
  %1826 = extractvalue %dx.types.CBufRet.f32 %1809, 0
  %1827 = extractvalue %dx.types.CBufRet.f32 %1809, 1
  %1828 = extractvalue %dx.types.CBufRet.f32 %1811, 0
  %1829 = extractvalue %dx.types.CBufRet.f32 %1811, 1
  %1830 = fdiv fast float 1.000000e+00, %1761
  %1831 = fdiv fast float 1.000000e+00, %1762
  %1832 = fdiv fast float 1.000000e+00, %1763
  %1833 = fsub fast float %1826, %1795
  %1834 = fmul fast float %1830, %1833
  %1835 = fadd fast float %1833, %1828
  %1836 = fmul fast float %1835, %1830
  %1837 = call float @dx.op.binary.f32(i32 36, float %1834, float %1836)  ; FMin(a,b)
  %1838 = call float @dx.op.binary.f32(i32 35, float %1834, float %1836)  ; FMax(a,b)
  %1839 = fsub fast float %1827, %1797
  %1840 = fmul fast float %1831, %1839
  %1841 = fadd fast float %1839, %1829
  %1842 = fmul fast float %1841, %1831
  %1843 = call float @dx.op.binary.f32(i32 36, float %1840, float %1842)  ; FMin(a,b)
  %1844 = call float @dx.op.binary.f32(i32 35, float %1837, float %1843)  ; FMax(a,b)
  %1845 = call float @dx.op.binary.f32(i32 35, float %1840, float %1842)  ; FMax(a,b)
  %1846 = call float @dx.op.binary.f32(i32 36, float %1838, float %1845)  ; FMin(a,b)
  %1847 = fmul fast float %1832, %1815
  %1848 = fmul fast float %1832, %1814
  %1849 = call float @dx.op.binary.f32(i32 36, float %1847, float %1848)  ; FMin(a,b)
  %1850 = call float @dx.op.binary.f32(i32 35, float %1844, float %1849)  ; FMax(a,b)
  %1851 = call float @dx.op.binary.f32(i32 35, float %1847, float %1848)  ; FMax(a,b)
  %1852 = call float @dx.op.binary.f32(i32 36, float %1846, float %1851)  ; FMin(a,b)
  %1853 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1850)  ; FMax(a,b)
  %1854 = fcmp fast ult float %1852, %1853
  br i1 %1854, label %1858, label %1855, !dx.controlflow.hints !37

; <label>:1855                                    ; preds = %1825
  %1856 = call float @dx.op.binary.f32(i32 36, float %1850, float %1852)  ; FMin(a,b)
  %1857 = call float @dx.op.binary.f32(i32 35, float %1850, float %1852)  ; FMax(a,b)
  br label %1858

; <label>:1858                                    ; preds = %1855, %1825, %1816
  %1859 = phi float [ %1823, %1816 ], [ %1856, %1855 ], [ 0.000000e+00, %1825 ]
  %1860 = phi float [ %1824, %1816 ], [ %1857, %1855 ], [ 0.000000e+00, %1825 ]
  %1861 = fcmp fast ogt float %1859, 0.000000e+00
  br i1 %1861, label %1865, label %1862, !dx.controlflow.hints !44

; <label>:1862                                    ; preds = %1858
  %1863 = fcmp fast ugt float %1860, 0.000000e+00
  br i1 %1863, label %1864, label %1865, !dx.controlflow.hints !45

; <label>:1864                                    ; preds = %1862
  br label %1865

; <label>:1865                                    ; preds = %1864, %1862, %1858, %1803
  %1866 = phi float [ %1804, %1803 ], [ 0.000000e+00, %1864 ], [ 0x47EFFFFFE0000000, %1862 ], [ %1859, %1858 ]
  %1867 = phi i32 [ %200, %1803 ], [ %200, %1864 ], [ 0, %1862 ], [ %200, %1858 ]
  %1868 = icmp ne i32 %1867, 0
  %1869 = zext i1 %1868 to i32
  %1870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1871 = extractvalue %dx.types.CBufRet.f32 %1870, 2
  %1872 = call float @dx.op.binary.f32(i32 35, float %1866, float %1871)  ; FMax(a,b)
  %1873 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %1872)  ; FMin(a,b)
  br label %1874

; <label>:1874                                    ; preds = %1865, %1786
  %1875 = phi float [ %1873, %1865 ], [ 0x47EFFFFFE0000000, %1786 ]
  %1876 = phi i32 [ %1869, %1865 ], [ 0, %1786 ]
  br i1 %454, label %2049, label %1877, !dx.controlflow.hints !51

; <label>:1877                                    ; preds = %1874
  %1878 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1879 = extractvalue %dx.types.CBufRet.i32 %1878, 1
  %1880 = and i32 %1879, 1
  %1881 = icmp eq i32 %1880, 0
  br i1 %1881, label %1882, label %2039, !dx.controlflow.hints !52

; <label>:1882                                    ; preds = %1877
  %1883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %1884 = extractvalue %dx.types.CBufRet.f32 %1883, 2
  %1885 = extractvalue %dx.types.CBufRet.f32 %1883, 3
  %1886 = fmul fast float %1884, %1795
  %1887 = fmul fast float %1885, %1797
  %1888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %1889 = extractvalue %dx.types.CBufRet.f32 %1888, 0
  %1890 = extractvalue %dx.types.CBufRet.f32 %1888, 1
  %1891 = fadd fast float %1886, %1889
  %1892 = fadd fast float %1887, %1890
  %1893 = call float @dx.op.unary.f32(i32 7, float %1891)  ; Saturate(value)
  %1894 = call float @dx.op.unary.f32(i32 7, float %1892)  ; Saturate(value)
  %1895 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %1893, float %1894, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1896 = extractvalue %dx.types.ResRet.f32 %1895, 0
  %1897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1898 = extractvalue %dx.types.CBufRet.f32 %1897, 0
  %1899 = fmul fast float %1898, %1896
  %1900 = fsub fast float %1891, %1893
  %1901 = fsub fast float %1892, %1894
  %1902 = extractvalue %dx.types.CBufRet.f32 %1883, 0
  %1903 = extractvalue %dx.types.CBufRet.f32 %1883, 1
  %1904 = fmul fast float %1902, %1900
  %1905 = fmul fast float %1903, %1901
  %1906 = fmul fast float %1904, %1904
  %1907 = fmul fast float %1905, %1905
  %1908 = fadd fast float %1906, %1907
  %1909 = call float @dx.op.unary.f32(i32 24, float %1908)  ; Sqrt(value)
  %1910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1911 = extractvalue %dx.types.CBufRet.f32 %1910, 3
  %1912 = fmul fast float %1911, %1909
  %1913 = call float @dx.op.unary.f32(i32 7, float %1912)  ; Saturate(value)
  %1914 = extractvalue %dx.types.CBufRet.f32 %1910, 2
  %1915 = fsub fast float %1914, %1899
  %1916 = fmul fast float %1915, %1913
  %1917 = extractvalue %dx.types.CBufRet.f32 %1897, 1
  %1918 = fsub fast float %1799, %1899
  %1919 = fsub fast float %1918, %1917
  %1920 = fsub fast float %1919, %1916
  %1921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1922 = extractvalue %dx.types.CBufRet.f32 %1921, 2
  %1923 = fsub fast float %1920, %1922
  %1924 = fcmp fast olt float %1923, 0.000000e+00
  %1925 = call float @dx.op.unary.f32(i32 6, float %1923)  ; FAbs(value)
  %1926 = extractvalue %dx.types.CBufRet.i32 %1878, 0
  %1927 = icmp eq i32 %1926, 0
  br i1 %1927, label %1981, label %1928

; <label>:1928                                    ; preds = %1882
  br label %1929

; <label>:1929                                    ; preds = %1968, %1928
  %1930 = phi i32 [ %1974, %1968 ], [ 1, %1928 ]
  %1931 = phi float [ %1976, %1968 ], [ 0x47EFFFFFE0000000, %1928 ]
  %1932 = phi i32 [ %1977, %1968 ], [ 0, %1928 ]
  %1933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1934 = extractvalue %dx.types.CBufRet.f32 %1933, 1
  %1935 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1936 = extractvalue %dx.types.CBufRet.i32 %1935, 1
  %1937 = and i32 %1936, 8
  %1938 = icmp eq i32 %1937, 0
  %1939 = fcmp fast ogt float %1934, %1920
  %1940 = or i1 %1939, %1938
  %1941 = add i32 %1932, 171
  %1942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 %1941)  ; CBufferLoadLegacy(handle,regIndex)
  %1943 = extractvalue %dx.types.CBufRet.f32 %1942, 0
  %1944 = extractvalue %dx.types.CBufRet.f32 %1942, 1
  %1945 = extractvalue %dx.types.CBufRet.f32 %1942, 2
  br i1 %1940, label %1946, label %1952, !dx.controlflow.hints !53

; <label>:1946                                    ; preds = %1929
  %1947 = fsub fast float %1943, %1795
  %1948 = fsub fast float %1944, %1797
  %1949 = fmul fast float %1947, %1947
  %1950 = fmul fast float %1948, %1948
  %1951 = fadd fast float %1949, %1950
  br label %1968

; <label>:1952                                    ; preds = %1929
  %1953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1954 = extractvalue %dx.types.CBufRet.f32 %1953, 2
  %1955 = extractvalue %dx.types.CBufRet.f32 %1933, 2
  %1956 = fmul fast float %1955, %1954
  %1957 = fsub fast float %1956, %1934
  %1958 = fdiv fast float %1945, %1957
  %1959 = fsub fast float %1795, %1943
  %1960 = fsub fast float %1797, %1944
  %1961 = fsub fast float %1920, %1934
  %1962 = fmul fast float %1958, %1961
  %1963 = fmul fast float %1959, %1959
  %1964 = fmul fast float %1960, %1960
  %1965 = fadd fast float %1963, %1964
  %1966 = fmul fast float %1962, %1962
  %1967 = fadd fast float %1965, %1966
  br label %1968

; <label>:1968                                    ; preds = %1952, %1946
  %1969 = phi float [ %1951, %1946 ], [ %1967, %1952 ]
  %1970 = call float @dx.op.unary.f32(i32 24, float %1969)  ; Sqrt(value)
  %1971 = fsub float %1945, %1970
  %1972 = fcmp fast olt float %1971, 0.000000e+00
  %1973 = zext i1 %1972 to i32
  %1974 = and i32 %1973, %1930
  %1975 = call float @dx.op.unary.f32(i32 6, float %1971)  ; FAbs(value)
  %1976 = call float @dx.op.binary.f32(i32 36, float %1931, float %1975)  ; FMin(a,b)
  %1977 = add i32 %1932, 1
  %1978 = extractvalue %dx.types.CBufRet.i32 %1935, 0
  %1979 = icmp ult i32 %1977, %1978
  br i1 %1979, label %1929, label %1980

; <label>:1980                                    ; preds = %1968
  br label %1981

; <label>:1981                                    ; preds = %1980, %1882
  %1982 = phi i32 [ 1, %1882 ], [ %1974, %1980 ]
  %1983 = phi float [ 0x47EFFFFFE0000000, %1882 ], [ %1976, %1980 ]
  br label %1984

; <label>:1984                                    ; preds = %1984, %1981
  %1985 = phi i32 [ %1982, %1981 ], [ %2024, %1984 ]
  %1986 = phi float [ 0x47EFFFFFE0000000, %1981 ], [ %2026, %1984 ]
  %1987 = phi i32 [ 0, %1981 ], [ %2027, %1984 ]
  %1988 = add nuw nsw i32 %1987, 191
  %1989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 %1988)  ; CBufferLoadLegacy(handle,regIndex)
  %1990 = extractvalue %dx.types.CBufRet.f32 %1989, 0
  %1991 = extractvalue %dx.types.CBufRet.f32 %1989, 1
  %1992 = extractvalue %dx.types.CBufRet.f32 %1989, 2
  %1993 = add nuw nsw i32 %1987, 195
  %1994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 %1993)  ; CBufferLoadLegacy(handle,regIndex)
  %1995 = extractvalue %dx.types.CBufRet.f32 %1994, 0
  %1996 = extractvalue %dx.types.CBufRet.f32 %1994, 1
  %1997 = extractvalue %dx.types.CBufRet.f32 %1994, 2
  %1998 = fsub fast float %1795, %1990
  %1999 = fsub fast float %1797, %1991
  %2000 = fsub fast float %1920, %1992
  %2001 = call float @dx.op.unary.f32(i32 6, float %1998)  ; FAbs(value)
  %2002 = call float @dx.op.unary.f32(i32 6, float %1999)  ; FAbs(value)
  %2003 = call float @dx.op.unary.f32(i32 6, float %2000)  ; FAbs(value)
  %2004 = fsub fast float %2001, %1995
  %2005 = fsub fast float %2002, %1996
  %2006 = fsub fast float %2003, %1997
  %2007 = call float @dx.op.binary.f32(i32 35, float %2004, float 0.000000e+00)  ; FMax(a,b)
  %2008 = call float @dx.op.binary.f32(i32 35, float %2005, float 0.000000e+00)  ; FMax(a,b)
  %2009 = call float @dx.op.binary.f32(i32 35, float %2006, float 0.000000e+00)  ; FMax(a,b)
  %2010 = fmul fast float %2007, %2007
  %2011 = fmul fast float %2008, %2008
  %2012 = fadd fast float %2011, %2010
  %2013 = fmul fast float %2009, %2009
  %2014 = fadd fast float %2012, %2013
  %2015 = call float @dx.op.unary.f32(i32 24, float %2014)  ; Sqrt(value)
  %2016 = call float @dx.op.binary.f32(i32 35, float %2005, float %2006)  ; FMax(a,b)
  %2017 = call float @dx.op.binary.f32(i32 35, float %2004, float %2016)  ; FMax(a,b)
  %2018 = call float @dx.op.binary.f32(i32 36, float %2017, float 0.000000e+00)  ; FMin(a,b)
  %2019 = fadd fast float %2018, %2015
  %2020 = fsub fast float -0.000000e+00, %2019
  %2021 = fcmp ogt float %2019, -0.000000e+00
  %2022 = icmp ne i32 %1985, 0
  %2023 = and i1 %2022, %2021
  %2024 = zext i1 %2023 to i32
  %2025 = call float @dx.op.unary.f32(i32 6, float %2020)  ; FAbs(value)
  %2026 = call float @dx.op.binary.f32(i32 36, float %1986, float %2025)  ; FMin(a,b)
  %2027 = add nuw nsw i32 %1987, 1
  %2028 = icmp eq i32 %2027, 4
  br i1 %2028, label %2029, label %1984

; <label>:2029                                    ; preds = %1984
  %2030 = call float @dx.op.binary.f32(i32 36, float %1925, float %2026)  ; FMin(a,b)
  %2031 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2032 = extractvalue %dx.types.CBufRet.i32 %2031, 1
  %2033 = and i32 %2032, 2
  %2034 = icmp ne i32 %2033, 0
  %2035 = xor i1 %2023, %2034
  %2036 = call float @dx.op.binary.f32(i32 36, float %2030, float %1983)  ; FMin(a,b)
  %2037 = and i1 %2035, %1924
  %2038 = zext i1 %2037 to i32
  br label %2039

; <label>:2039                                    ; preds = %2029, %1877
  %2040 = phi i32 [ %257, %1877 ], [ %2038, %2029 ]
  %2041 = phi float [ 0.000000e+00, %1877 ], [ %2036, %2029 ]
  %2042 = phi float [ %1799, %1877 ], [ %1920, %2029 ]
  %2043 = icmp ne i32 %2040, 0
  %2044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %2045 = extractvalue %dx.types.CBufRet.f32 %2044, 3
  %2046 = call float @dx.op.binary.f32(i32 35, float %2041, float %2045)  ; FMax(a,b)
  %2047 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %2046)  ; FMin(a,b)
  %2048 = zext i1 %2043 to i32
  br label %2049

; <label>:2049                                    ; preds = %2039, %1874
  %2050 = phi i32 [ %2040, %2039 ], [ %257, %1874 ]
  %2051 = phi float [ %2042, %2039 ], [ %258, %1874 ]
  %2052 = phi float [ %2047, %2039 ], [ 0x47EFFFFFE0000000, %1874 ]
  %2053 = phi i32 [ %2048, %2039 ], [ 0, %1874 ]
  %2054 = icmp eq i32 %1876, 0
  br i1 %2054, label %2128, label %2055, !dx.controlflow.hints !54

; <label>:2055                                    ; preds = %2049
  %2056 = fmul fast float %632, %1791
  %2057 = call float @dx.op.unary.f32(i32 23, float %2056)  ; Log(value)
  %2058 = fmul fast float %2057, 0x3FE62E4300000000
  %2059 = call float @dx.op.binary.f32(i32 35, float %2058, float 1.000000e+00)  ; FMax(a,b)
  %2060 = fmul fast float %2059, %2052
  %2061 = call float @dx.op.binary.f32(i32 36, float %2060, float %1875)  ; FMin(a,b)
  %2062 = call float @dx.op.binary.f32(i32 35, float %2061, float 0.000000e+00)  ; FMax(a,b)
  %2063 = fcmp fast ogt float %2062, 0x3F1A36E2E0000000
  %2064 = fadd fast float %1792, %1795
  %2065 = fadd fast float %1793, %1797
  %2066 = select i1 %2063, float %2064, float %1795
  %2067 = select i1 %2063, float %2065, float %1797
  %2068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %2069 = extractvalue %dx.types.CBufRet.f32 %2068, 0
  %2070 = extractvalue %dx.types.CBufRet.f32 %2068, 1
  %2071 = fsub fast float %2066, %2069
  %2072 = fsub fast float %2067, %2070
  %2073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %2074 = extractvalue %dx.types.CBufRet.f32 %2073, 0
  %2075 = extractvalue %dx.types.CBufRet.f32 %2073, 1
  %2076 = fmul fast float %2071, %2074
  %2077 = fmul fast float %2072, %2075
  %2078 = fsub fast float 1.000000e+00, %2077
  %2079 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %2080 = extractvalue %dx.types.CBufRet.i32 %2079, 3
  %2081 = icmp eq i32 %2080, 0
  br i1 %2081, label %2088, label %2082, !dx.controlflow.hints !46

; <label>:2082                                    ; preds = %2055
  %2083 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %18, float %2076, float %2078, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2084 = extractvalue %dx.types.ResRet.f32 %2083, 0
  %2085 = extractvalue %dx.types.ResRet.f32 %2083, 1
  %2086 = extractvalue %dx.types.ResRet.f32 %2083, 2
  %2087 = extractvalue %dx.types.ResRet.f32 %2083, 3
  br label %2094

; <label>:2088                                    ; preds = %2055
  %2089 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %19, float %2076, float %2078, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2090 = extractvalue %dx.types.ResRet.f32 %2089, 0
  %2091 = extractvalue %dx.types.ResRet.f32 %2089, 1
  %2092 = extractvalue %dx.types.ResRet.f32 %2089, 2
  %2093 = extractvalue %dx.types.ResRet.f32 %2089, 3
  br label %2094

; <label>:2094                                    ; preds = %2088, %2082
  %2095 = phi float [ %2084, %2082 ], [ %2090, %2088 ]
  %2096 = phi float [ %2085, %2082 ], [ %2091, %2088 ]
  %2097 = phi float [ %2086, %2082 ], [ %2092, %2088 ]
  %2098 = phi float [ %2087, %2082 ], [ %2093, %2088 ]
  %2099 = extractvalue %dx.types.CBufRet.f32 %2073, 3
  %2100 = fmul fast float %2099, %2096
  %2101 = fmul fast float %2100, %2095
  %2102 = fsub fast float %2100, %2101
  %2103 = fcmp fast ole float %2102, 0.000000e+00
  %2104 = extractvalue %dx.types.CBufRet.f32 %2068, 2
  %2105 = fadd fast float %2101, %2104
  %2106 = fmul fast float %2099, %2097
  %2107 = fadd fast float %2106, %2104
  %2108 = fdiv fast float 1.000000e+00, %2102
  %2109 = select i1 %2103, float 1.000000e+06, float %2108
  %2110 = fsub fast float %1799, %2105
  %2111 = fmul fast float %2109, %2110
  %2112 = call float @dx.op.unary.f32(i32 7, float %2111)  ; Saturate(value)
  %2113 = extractvalue %dx.types.CBufRet.f32 %2073, 2
  %2114 = fmul fast float %2113, %2112
  %2115 = fsub fast float %2113, %2114
  %2116 = fcmp fast olt float %1799, %2107
  %2117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %2118 = extractvalue %dx.types.CBufRet.f32 %2117, 3
  %2119 = fmul fast float %2118, 3.000000e+00
  %2120 = select i1 %2116, float %2119, float 3.000000e+00
  %2121 = fmul fast float %2115, %2120
  %2122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %2123 = extractvalue %dx.types.CBufRet.f32 %2122, 2
  %2124 = fmul fast float %1791, 0x3FD5555560000000
  %2125 = fmul fast float %2124, %2098
  %2126 = fmul fast float %2125, %2123
  %2127 = fmul fast float %2126, %2121
  br label %2128

; <label>:2128                                    ; preds = %2094, %2049
  %2129 = phi float [ %2127, %2094 ], [ 0.000000e+00, %2049 ]
  %2130 = icmp eq i32 %2053, 0
  br i1 %2130, label %2162, label %2131, !dx.controlflow.hints !56

; <label>:2131                                    ; preds = %2128
  %2132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %2133 = extractvalue %dx.types.CBufRet.f32 %2132, 1
  %2134 = fsub fast float %1791, %2133
  %2135 = extractvalue %dx.types.CBufRet.f32 %2132, 3
  %2136 = fmul fast float %2134, %2135
  %2137 = call float @dx.op.unary.f32(i32 7, float %2136)  ; Saturate(value)
  %2138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %2139 = extractvalue %dx.types.CBufRet.f32 %2138, 3
  %2140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2141 = extractvalue %dx.types.CBufRet.f32 %2140, 2
  %2142 = fsub fast float %2141, %2051
  %2143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %2144 = extractvalue %dx.types.CBufRet.f32 %2143, 3
  %2145 = fmul fast float %2142, %2144
  %2146 = call float @dx.op.unary.f32(i32 7, float %2145)  ; Saturate(value)
  %2147 = fmul fast float %2146, %2139
  %2148 = extractvalue %dx.types.CBufRet.f32 %2143, 0
  %2149 = fsub fast float %1791, %2148
  %2150 = extractvalue %dx.types.CBufRet.f32 %2143, 1
  %2151 = fmul fast float %2149, %2150
  %2152 = call float @dx.op.unary.f32(i32 7, float %2151)  ; Saturate(value)
  %2153 = fsub fast float 1.000000e+00, %2137
  %2154 = fmul fast float %2152, %2153
  %2155 = fadd fast float %2154, %2137
  %2156 = extractvalue %dx.types.CBufRet.f32 %2132, 0
  %2157 = fsub fast float %2147, %2156
  %2158 = fmul fast float %2157, %2155
  %2159 = fadd fast float %2158, %2156
  %2160 = fmul fast float %2159, %1791
  %2161 = fadd fast float %2160, %2129
  br label %2162

; <label>:2162                                    ; preds = %2131, %2128
  %2163 = phi float [ %2161, %2131 ], [ %2129, %2128 ]
  %2164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %2165 = extractvalue %dx.types.CBufRet.f32 %2164, 3
  %2166 = fmul fast float %2163, 0xBFF7154760000000
  %2167 = fmul fast float %2166, %2165
  %2168 = call float @dx.op.unary.f32(i32 21, float %2167)  ; Exp(value)
  %2169 = call float @dx.op.unary.f32(i32 7, float %2168)  ; Saturate(value)
  %2170 = fmul fast float %2169, %1787
  %2171 = fmul fast float %2169, %1788
  %2172 = fmul fast float %2169, %1789
  %2173 = fadd fast float %2170, %1755
  %2174 = fadd fast float %2171, %1756
  %2175 = fadd fast float %2172, %1757
  %2176 = fsub fast float 1.000000e+00, %824
  %2177 = fmul fast float %816, %262
  %2178 = fmul fast float %2177, %2176
  %2179 = fmul fast float %2178, %2173
  %2180 = fmul fast float %817, %262
  %2181 = fmul fast float %2180, %2176
  %2182 = fmul fast float %2181, %2174
  %2183 = fmul fast float %818, %262
  %2184 = fmul fast float %2183, %2176
  %2185 = fmul fast float %2184, %2175
  %2186 = fadd fast float %2179, %263
  %2187 = fadd fast float %2182, %264
  %2188 = fadd fast float %2185, %265
  %2189 = fdiv fast float %800, %642
  %2190 = fadd fast float %642, %269
  %2191 = fmul fast float %269, %269
  %2192 = fmul fast float %2190, %2190
  %2193 = fsub fast float %2191, %2192
  %2194 = fmul fast float %2193, -5.000000e-01
  %2195 = fmul fast float %2194, %2189
  %2196 = fadd fast float %2195, %261
  %2197 = fadd fast float %800, %271
  %2198 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2199 = extractvalue %dx.types.CBufRet.i32 %2198, 0
  %2200 = icmp eq i32 %2199, 0
  br i1 %2200, label %2227, label %2201, !dx.controlflow.hints !72

; <label>:2201                                    ; preds = %2162
  %2202 = icmp ne i32 %276, 0
  %2203 = zext i1 %2202 to i32
  %2204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2205 = extractvalue %dx.types.CBufRet.f32 %2204, 2
  %2206 = extractvalue %dx.types.CBufRet.f32 %2204, 0
  %2207 = fsub fast float %2190, %2206
  %2208 = fmul fast float %2207, %2205
  %2209 = call float @dx.op.unary.f32(i32 7, float %2208)  ; Saturate(value)
  %2210 = fadd fast float %2209, -5.000000e-01
  %2211 = fmul fast float %2210, 2.000000e+00
  %2212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2213 = extractvalue %dx.types.CBufRet.f32 %2212, 2
  %2214 = fcmp fast olt float %2211, %2213
  br i1 %2214, label %2215, label %2227, !dx.controlflow.hints !73

; <label>:2215                                    ; preds = %2201
  %2216 = fmul fast float %2211, %2211
  %2217 = fmul fast float %2176, %262
  %2218 = fmul fast float %2211, %2217
  %2219 = fmul fast float %2216, %2217
  %2220 = fmul fast float %2218, %2216
  %2221 = fmul fast float %2216, %2216
  %2222 = fmul fast float %2221, %2217
  %2223 = fadd fast float %2218, %272
  %2224 = fadd fast float %2219, %273
  %2225 = fadd fast float %2220, %274
  %2226 = fadd fast float %2222, %275
  br label %2227

; <label>:2227                                    ; preds = %2215, %2201, %2162
  %2228 = phi float [ %272, %2162 ], [ %2223, %2215 ], [ %272, %2201 ]
  %2229 = phi float [ %273, %2162 ], [ %2224, %2215 ], [ %273, %2201 ]
  %2230 = phi float [ %274, %2162 ], [ %2225, %2215 ], [ %274, %2201 ]
  %2231 = phi float [ %275, %2162 ], [ %2226, %2215 ], [ %275, %2201 ]
  %2232 = phi i32 [ %276, %2162 ], [ 1, %2215 ], [ %2203, %2201 ]
  %2233 = fmul fast float %824, %262
  br label %2234

; <label>:2234                                    ; preds = %2227, %819
  %2235 = phi float [ %820, %819 ], [ %2190, %2227 ]
  %2236 = phi i32 [ %257, %819 ], [ %2050, %2227 ]
  %2237 = phi float [ %258, %819 ], [ %2051, %2227 ]
  %2238 = phi float [ %261, %819 ], [ %2196, %2227 ]
  %2239 = phi float [ %262, %819 ], [ %2233, %2227 ]
  %2240 = phi float [ %263, %819 ], [ %2186, %2227 ]
  %2241 = phi float [ %264, %819 ], [ %2187, %2227 ]
  %2242 = phi float [ %265, %819 ], [ %2188, %2227 ]
  %2243 = phi float [ %271, %819 ], [ %2197, %2227 ]
  %2244 = phi float [ %272, %819 ], [ %2228, %2227 ]
  %2245 = phi float [ %273, %819 ], [ %2229, %2227 ]
  %2246 = phi float [ %274, %819 ], [ %2230, %2227 ]
  %2247 = phi float [ %275, %819 ], [ %2231, %2227 ]
  %2248 = phi i32 [ %276, %819 ], [ %2232, %2227 ]
  %2249 = fmul fast float %642, %111
  %2250 = fmul fast float %642, %112
  %2251 = fmul fast float %642, %113
  %2252 = fadd fast float %2249, %266
  %2253 = fadd fast float %2250, %267
  %2254 = fadd fast float %2251, %268
  %2255 = fcmp fast olt float %2235, %233
  %2256 = extractvalue %dx.types.CBufRet.f32 %805, 2
  %2257 = fcmp fast olt float %2256, %2239
  %2258 = and i1 %2255, %2257
  br i1 %2258, label %256, label %2259

; <label>:2259                                    ; preds = %2234
  br label %2260

; <label>:2260                                    ; preds = %2259, %229
  %2261 = phi float [ 0.000000e+00, %229 ], [ %2238, %2259 ]
  %2262 = phi float [ 1.000000e+00, %229 ], [ %2239, %2259 ]
  %2263 = phi float [ 0.000000e+00, %229 ], [ %2240, %2259 ]
  %2264 = phi float [ 0.000000e+00, %229 ], [ %2241, %2259 ]
  %2265 = phi float [ 0.000000e+00, %229 ], [ %2242, %2259 ]
  %2266 = phi float [ 0.000000e+00, %229 ], [ %2243, %2259 ]
  %2267 = phi float [ 0.000000e+00, %229 ], [ %2244, %2259 ]
  %2268 = phi float [ 0.000000e+00, %229 ], [ %2245, %2259 ]
  %2269 = phi float [ 0.000000e+00, %229 ], [ %2246, %2259 ]
  %2270 = phi float [ 0.000000e+00, %229 ], [ %2247, %2259 ]
  %2271 = phi i32 [ 0, %229 ], [ %2248, %2259 ]
  %2272 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2273 = extractvalue %dx.types.CBufRet.i32 %2272, 0
  %2274 = icmp eq i32 %2273, 0
  br i1 %2274, label %2316, label %2275, !dx.controlflow.hints !74

; <label>:2275                                    ; preds = %2260
  %2276 = icmp eq i32 %2271, 0
  br i1 %2276, label %2315, label %2277, !dx.controlflow.hints !75

; <label>:2277                                    ; preds = %2275
  %2278 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2279 = extractvalue %dx.types.CBufRet.i32 %2278, 2
  %2280 = icmp eq i32 %2279, 0
  br i1 %2280, label %2287, label %2281, !dx.controlflow.hints !76

; <label>:2281                                    ; preds = %2277
  %2282 = fsub fast float 1.000000e+00, %2262
  %2283 = fdiv fast float %2267, %2282
  %2284 = fdiv fast float %2268, %2282
  %2285 = fdiv fast float %2269, %2282
  %2286 = fdiv fast float %2270, %2282
  br label %2292

; <label>:2287                                    ; preds = %2277
  %2288 = fadd fast float %2267, %2262
  %2289 = fadd fast float %2268, %2262
  %2290 = fadd fast float %2269, %2262
  %2291 = fadd fast float %2270, %2262
  br label %2292

; <label>:2292                                    ; preds = %2287, %2281
  %2293 = phi float [ %2283, %2281 ], [ %2288, %2287 ]
  %2294 = phi float [ %2284, %2281 ], [ %2289, %2287 ]
  %2295 = phi float [ %2285, %2281 ], [ %2290, %2287 ]
  %2296 = phi float [ %2286, %2281 ], [ %2291, %2287 ]
  %2297 = call float @dx.op.binary.f32(i32 35, float %2293, float -1.000000e+00)  ; FMax(a,b)
  %2298 = call float @dx.op.binary.f32(i32 35, float %2294, float -1.000000e+00)  ; FMax(a,b)
  %2299 = call float @dx.op.binary.f32(i32 35, float %2295, float -1.000000e+00)  ; FMax(a,b)
  %2300 = call float @dx.op.binary.f32(i32 35, float %2296, float -1.000000e+00)  ; FMax(a,b)
  %2301 = call float @dx.op.binary.f32(i32 36, float %2297, float 1.000000e+00)  ; FMin(a,b)
  %2302 = call float @dx.op.binary.f32(i32 36, float %2298, float 1.000000e+00)  ; FMin(a,b)
  %2303 = call float @dx.op.binary.f32(i32 36, float %2299, float 1.000000e+00)  ; FMin(a,b)
  %2304 = call float @dx.op.binary.f32(i32 36, float %2300, float 1.000000e+00)  ; FMin(a,b)
  %2305 = fmul fast float %2301, 1.500000e+00
  %2306 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %2303, float %2305)  ; FMad(a,b,c)
  %2307 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %2302, float 0.000000e+00)  ; FMad(a,b,c)
  %2308 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %2304, float %2307)  ; FMad(a,b,c)
  %2309 = fmul fast float %2301, 0x3FEBB67AE0000000
  %2310 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %2303, float %2309)  ; FMad(a,b,c)
  %2311 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2302, float 0.000000e+00)  ; FMad(a,b,c)
  %2312 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2304, float %2311)  ; FMad(a,b,c)
  %2313 = fadd fast float %2306, 5.000000e-01
  %2314 = fadd fast float %2310, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %22, i32 %23, i32 0, float %2313, float %2308, float %2314, float %2312, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2316

; <label>:2315                                    ; preds = %2275
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %22, i32 %23, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2316

; <label>:2316                                    ; preds = %2315, %2292, %2260
  %2317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2318 = extractvalue %dx.types.CBufRet.f32 %2317, 2
  %2319 = fsub fast float %2262, %2318
  %2320 = fdiv fast float %2319, %2318
  %2321 = call float @dx.op.unary.f32(i32 7, float %2320)  ; Saturate(value)
  %2322 = fmul fast float %2321, 2.000000e+00
  %2323 = fsub fast float 3.000000e+00, %2322
  %2324 = fmul fast float %2321, %2321
  %2325 = fmul fast float %2324, %2262
  %2326 = fmul fast float %2325, %2323
  %2327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %2328 = extractvalue %dx.types.CBufRet.f32 %2327, 0
  %2329 = extractvalue %dx.types.CBufRet.f32 %2327, 1
  %2330 = extractvalue %dx.types.CBufRet.f32 %2327, 2
  %2331 = call float @dx.op.dot3.f32(i32 55, float %111, float %112, float %113, float %2328, float %2329, float %2330)  ; Dot3(ax,ay,az,bx,by,bz)
  %2332 = fmul fast float %2331, %2261
  %2333 = fcmp fast ogt float %2266, 0.000000e+00
  %2334 = fdiv fast float 1.000000e+00, %2266
  %2335 = fmul fast float %2332, %2334
  %2336 = select i1 %2333, float %2335, float %122
  %2337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2338 = extractvalue %dx.types.CBufRet.f32 %2337, 0
  %2339 = extractvalue %dx.types.CBufRet.f32 %2337, 1
  %2340 = extractvalue %dx.types.CBufRet.f32 %2337, 2
  %2341 = fmul fast float %2338, %75
  %2342 = fmul fast float %2339, %75
  %2343 = fmul fast float %2340, %75
  %2344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2345 = extractvalue %dx.types.CBufRet.f32 %2344, 0
  %2346 = extractvalue %dx.types.CBufRet.f32 %2344, 1
  %2347 = extractvalue %dx.types.CBufRet.f32 %2344, 2
  %2348 = fmul fast float %2345, %76
  %2349 = fmul fast float %2346, %76
  %2350 = fmul fast float %2347, %76
  %2351 = fadd fast float %2348, %2341
  %2352 = fadd fast float %2349, %2342
  %2353 = fadd fast float %2350, %2343
  %2354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2355 = extractvalue %dx.types.CBufRet.f32 %2354, 0
  %2356 = extractvalue %dx.types.CBufRet.f32 %2354, 1
  %2357 = extractvalue %dx.types.CBufRet.f32 %2354, 2
  %2358 = fadd fast float %2351, %2355
  %2359 = fadd fast float %2352, %2356
  %2360 = fadd fast float %2353, %2357
  %2361 = fmul fast float %2358, %2336
  %2362 = fmul fast float %2359, %2336
  %2363 = fmul fast float %2360, %2336
  %2364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %2365 = extractvalue %dx.types.CBufRet.f32 %2364, 0
  %2366 = extractvalue %dx.types.CBufRet.f32 %2364, 1
  %2367 = extractvalue %dx.types.CBufRet.f32 %2364, 2
  %2368 = extractvalue %dx.types.CBufRet.f32 %2364, 3
  %2369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %2370 = extractvalue %dx.types.CBufRet.f32 %2369, 0
  %2371 = extractvalue %dx.types.CBufRet.f32 %2369, 1
  %2372 = extractvalue %dx.types.CBufRet.f32 %2369, 2
  %2373 = extractvalue %dx.types.CBufRet.f32 %2369, 3
  %2374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %2375 = extractvalue %dx.types.CBufRet.f32 %2374, 0
  %2376 = extractvalue %dx.types.CBufRet.f32 %2374, 1
  %2377 = extractvalue %dx.types.CBufRet.f32 %2374, 2
  %2378 = extractvalue %dx.types.CBufRet.f32 %2374, 3
  %2379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %2380 = extractvalue %dx.types.CBufRet.f32 %2379, 0
  %2381 = extractvalue %dx.types.CBufRet.f32 %2379, 1
  %2382 = extractvalue %dx.types.CBufRet.f32 %2379, 2
  %2383 = extractvalue %dx.types.CBufRet.f32 %2379, 3
  %2384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %2385 = extractvalue %dx.types.CBufRet.f32 %2384, 3
  %2386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %2387 = extractvalue %dx.types.CBufRet.f32 %2386, 3
  %2388 = extractvalue %dx.types.CBufRet.f32 %2386, 0
  %2389 = extractvalue %dx.types.CBufRet.f32 %2386, 1
  %2390 = extractvalue %dx.types.CBufRet.f32 %2386, 2
  %2391 = fcmp fast olt float %2390, -5.000000e-01
  %2392 = call float @dx.op.dot3.f32(i32 55, float %2361, float %2362, float %2363, float %2361, float %2362, float %2363)  ; Dot3(ax,ay,az,bx,by,bz)
  %2393 = call float @dx.op.unary.f32(i32 25, float %2392)  ; Rsqrt(value)
  %2394 = fmul fast float %2393, %2392
  %2395 = fmul fast float %2393, %2361
  %2396 = fmul fast float %2393, %2362
  %2397 = fmul fast float %2393, %2363
  %2398 = fadd fast float %2394, %2368
  %2399 = call float @dx.op.dot3.f32(i32 55, float %2395, float %2396, float %2397, float %2365, float %2366, float %2367)  ; Dot3(ax,ay,az,bx,by,bz)
  %2400 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2401 = extractvalue %dx.types.CBufRet.i32 %2400, 1
  %2402 = and i32 %2401, 1
  %2403 = icmp ne i32 %2402, 0
  %2404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %2405 = extractvalue %dx.types.CBufRet.f32 %2404, 2
  %2406 = fcmp fast ogt float %2405, 0.000000e+00
  %2407 = and i1 %2403, %2406
  br i1 %2407, label %2408, label %2814, !dx.controlflow.hints !77

; <label>:2408                                    ; preds = %2316
  %2409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %2410 = extractvalue %dx.types.CBufRet.f32 %2409, 3
  %2411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2412 = extractvalue %dx.types.CBufRet.f32 %2411, 2
  %2413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2414 = extractvalue %dx.types.CBufRet.f32 %2413, 2
  %2415 = fsub fast float %2412, %2414
  %2416 = and i32 %2401, 2
  %2417 = extractvalue %dx.types.CBufRet.i32 %2400, 0
  %2418 = call i32 @dx.op.binary.i32(i32 40, i32 %2417, i32 3)  ; UMin(a,b)
  %2419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2420 = extractvalue %dx.types.CBufRet.f32 %2419, 0
  %2421 = extractvalue %dx.types.CBufRet.f32 %2419, 1
  %2422 = extractvalue %dx.types.CBufRet.f32 %2413, 0
  %2423 = extractvalue %dx.types.CBufRet.f32 %2413, 1
  %2424 = fsub fast float %2420, %2422
  %2425 = fsub fast float %2421, %2423
  %2426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2427 = extractvalue %dx.types.CBufRet.f32 %2426, 0
  %2428 = fcmp fast ogt float %2427, 0.000000e+00
  %2429 = fsub fast float -0.000000e+00, %2424
  %2430 = fsub fast float -0.000000e+00, %2425
  %2431 = call float @dx.op.dot2.f32(i32 54, float %2395, float %2396, float %2395, float %2396)  ; Dot2(ax,ay,bx,by)
  %2432 = call float @dx.op.dot2.f32(i32 54, float %2395, float %2396, float %2429, float %2430)  ; Dot2(ax,ay,bx,by)
  %2433 = fmul fast float %2432, 2.000000e+00
  %2434 = call float @dx.op.dot2.f32(i32 54, float %2429, float %2430, float %2429, float %2430)  ; Dot2(ax,ay,bx,by)
  %2435 = fmul fast float %2427, %2427
  %2436 = fsub fast float %2434, %2435
  %2437 = fmul fast float %2433, %2433
  %2438 = fmul fast float %2431, 4.000000e+00
  %2439 = fmul fast float %2438, %2436
  %2440 = fsub fast float %2437, %2439
  %2441 = fcmp fast ogt float %2440, 0.000000e+00
  br i1 %2441, label %2442, label %2457, !dx.controlflow.hints !78

; <label>:2442                                    ; preds = %2408
  %2443 = fcmp fast ogt float %2433, 0.000000e+00
  %2444 = call float @dx.op.unary.f32(i32 24, float %2440)  ; Sqrt(value)
  %2445 = fsub fast float -0.000000e+00, %2444
  %2446 = select i1 %2443, float %2444, float %2445
  %2447 = fadd fast float %2446, %2433
  %2448 = fmul float %2447, -5.000000e-01
  %2449 = fdiv fast float %2448, %2431
  %2450 = call float @dx.op.binary.f32(i32 35, float %2449, float 0.000000e+00)  ; FMax(a,b)
  %2451 = call float @dx.op.binary.f32(i32 36, float %2394, float %2450)  ; FMin(a,b)
  %2452 = fdiv fast float %2436, %2448
  %2453 = call float @dx.op.binary.f32(i32 35, float %2452, float 0.000000e+00)  ; FMax(a,b)
  %2454 = call float @dx.op.binary.f32(i32 36, float %2394, float %2453)  ; FMin(a,b)
  %2455 = call float @dx.op.binary.f32(i32 36, float %2451, float %2454)  ; FMin(a,b)
  %2456 = call float @dx.op.binary.f32(i32 35, float %2451, float %2454)  ; FMax(a,b)
  br label %2457

; <label>:2457                                    ; preds = %2442, %2408
  %2458 = phi float [ %2456, %2442 ], [ -1.000000e+00, %2408 ]
  %2459 = phi float [ %2455, %2442 ], [ -1.000000e+00, %2408 ]
  %2460 = phi i1 [ true, %2442 ], [ false, %2408 ]
  %2461 = and i1 %2428, %2460
  br i1 %2461, label %2462, label %2464, !dx.controlflow.hints !79

; <label>:2462                                    ; preds = %2457
  %2463 = fcmp fast oeq float %2459, %2458
  br i1 %2463, label %2767, label %2465, !dx.controlflow.hints !80

; <label>:2464                                    ; preds = %2457
  br i1 %2428, label %2767, label %2465, !dx.controlflow.hints !81

; <label>:2465                                    ; preds = %2464, %2462
  %2466 = phi float [ %2394, %2464 ], [ %2458, %2462 ]
  %2467 = phi float [ 0.000000e+00, %2464 ], [ %2459, %2462 ]
  %2468 = icmp ne i32 %2416, 0
  %2469 = fmul fast float %2466, %2397
  %2470 = fadd fast float %2469, %2410
  %2471 = fmul fast float %2470, %2466
  %2472 = select i1 %2468, float 0.000000e+00, float %2471
  %2473 = fcmp fast oeq float %2397, 0.000000e+00
  %2474 = fdiv fast float %2415, %2397
  %2475 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2474)  ; FMax(a,b)
  %2476 = select i1 %2473, float %2466, float %2475
  %2477 = call float @dx.op.binary.f32(i32 36, float %2466, float %2476)  ; FMin(a,b)
  %2478 = fcmp fast ogt float %2397, 0.000000e+00
  %2479 = fcmp fast olt float %2415, 0.000000e+00
  br i1 %2478, label %2480, label %2537, !dx.controlflow.hints !82

; <label>:2480                                    ; preds = %2465
  %2481 = icmp eq i32 %2416, 0
  br i1 %2479, label %2482, label %2526, !dx.controlflow.hints !83

; <label>:2482                                    ; preds = %2480
  %2483 = select i1 %2481, float %2466, float 0.000000e+00
  %2484 = fsub fast float -0.000000e+00, %2483
  %2485 = call float @dx.op.unary.f32(i32 6, float %2484)  ; FAbs(value)
  %2486 = fmul fast float %2483, %2397
  %2487 = fadd fast float %2486, %2410
  %2488 = fmul fast float %2485, %2487
  %2489 = fsub fast float %2472, %2488
  %2490 = fsub fast float %2466, %2485
  %2491 = select i1 %2481, float %2490, float 0.000000e+00
  %2492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2493 = extractvalue %dx.types.CBufRet.f32 %2492, 0
  %2494 = extractvalue %dx.types.CBufRet.f32 %2492, 1
  %2495 = extractvalue %dx.types.CBufRet.f32 %2492, 2
  %2496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2497 = extractvalue %dx.types.CBufRet.f32 %2496, 0
  %2498 = extractvalue %dx.types.CBufRet.f32 %2496, 1
  %2499 = extractvalue %dx.types.CBufRet.f32 %2496, 2
  %2500 = extractvalue %dx.types.CBufRet.f32 %2496, 3
  %2501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2502 = extractvalue %dx.types.CBufRet.f32 %2501, 3
  %2503 = call float @dx.op.binary.f32(i32 36, float %2489, float %2502)  ; FMin(a,b)
  %2504 = fmul fast float %2500, %2491
  %2505 = call float @dx.op.unary.f32(i32 7, float %2504)  ; Saturate(value)
  %2506 = fsub fast float %2497, %2493
  %2507 = fsub fast float %2498, %2494
  %2508 = fsub fast float %2499, %2495
  %2509 = fmul fast float %2505, %2506
  %2510 = fmul fast float %2505, %2507
  %2511 = fmul fast float %2505, %2508
  %2512 = fadd fast float %2509, %2493
  %2513 = fadd fast float %2510, %2494
  %2514 = fadd fast float %2511, %2495
  %2515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2516 = extractvalue %dx.types.CBufRet.f32 %2515, 0
  %2517 = extractvalue %dx.types.CBufRet.f32 %2515, 1
  %2518 = fadd fast float %2517, %2516
  %2519 = call float @dx.op.unary.f32(i32 7, float %2518)  ; Saturate(value)
  %2520 = extractvalue %dx.types.CBufRet.f32 %2515, 2
  %2521 = extractvalue %dx.types.CBufRet.f32 %2515, 3
  %2522 = fadd fast float %2521, %2520
  %2523 = call float @dx.op.unary.f32(i32 7, float %2522)  ; Saturate(value)
  %2524 = fmul fast float %2519, %2503
  %2525 = fmul fast float %2524, %2523
  br label %2767

; <label>:2526                                    ; preds = %2480
  br i1 %2481, label %2527, label %2548, !dx.controlflow.hints !84

; <label>:2527                                    ; preds = %2526
  %2528 = call float @dx.op.binary.f32(i32 36, float %2477, float %2467)  ; FMin(a,b)
  %2529 = fsub fast float %2477, %2528
  %2530 = fsub fast float %2529, %2466
  %2531 = call float @dx.op.unary.f32(i32 6, float %2530)  ; FAbs(value)
  %2532 = fadd fast float %2529, %2466
  %2533 = fmul fast float %2532, %2397
  %2534 = fadd fast float %2533, %2410
  %2535 = fmul fast float %2534, %2531
  %2536 = fsub fast float %2472, %2535
  br label %2548

; <label>:2537                                    ; preds = %2465
  br i1 %2479, label %2538, label %2548, !dx.controlflow.hints !85

; <label>:2538                                    ; preds = %2537
  %2539 = call float @dx.op.binary.f32(i32 35, float %2467, float %2477)  ; FMax(a,b)
  %2540 = icmp eq i32 %2416, 0
  %2541 = select i1 %2540, float %2477, float 0.000000e+00
  %2542 = fsub fast float -0.000000e+00, %2541
  %2543 = call float @dx.op.unary.f32(i32 6, float %2542)  ; FAbs(value)
  %2544 = fmul fast float %2541, %2397
  %2545 = fadd fast float %2544, %2410
  %2546 = fmul fast float %2543, %2545
  %2547 = fsub fast float %2472, %2546
  br label %2548

; <label>:2548                                    ; preds = %2538, %2537, %2527, %2526
  %2549 = phi float [ %2467, %2526 ], [ %2467, %2527 ], [ %2539, %2538 ], [ %2467, %2537 ]
  %2550 = phi float [ 0.000000e+00, %2526 ], [ %2531, %2527 ], [ %2543, %2538 ], [ 0.000000e+00, %2537 ]
  %2551 = phi float [ %2472, %2526 ], [ %2536, %2527 ], [ %2547, %2538 ], [ %2472, %2537 ]
  %2552 = phi float [ %2477, %2526 ], [ %2477, %2527 ], [ %2466, %2538 ], [ %2466, %2537 ]
  %2553 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 0
  store float -1.000000e+00, float* %2553, align 4, !tbaa !86, !noalias !90
  %2554 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 1
  store float -1.000000e+00, float* %2554, align 4, !tbaa !86, !noalias !90
  %2555 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 2
  store float -1.000000e+00, float* %2555, align 4, !tbaa !86, !noalias !90
  %2556 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 0
  store float -1.000000e+00, float* %2556, align 4, !tbaa !86, !noalias !90
  %2557 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 1
  store float -1.000000e+00, float* %2557, align 4, !tbaa !86, !noalias !90
  %2558 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 2
  store float -1.000000e+00, float* %2558, align 4, !tbaa !86, !noalias !90
  %2559 = icmp sgt i32 %2418, 0
  br i1 %2559, label %2560, label %2621

; <label>:2560                                    ; preds = %2548
  br label %2561

; <label>:2561                                    ; preds = %2610, %2560
  %2562 = phi i32 [ %2611, %2610 ], [ 0, %2560 ]
  %2563 = phi i32 [ %2612, %2610 ], [ 0, %2560 ]
  %2564 = add nuw i32 %2563, 171
  %2565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 %2564)  ; CBufferLoadLegacy(handle,regIndex)
  %2566 = extractvalue %dx.types.CBufRet.f32 %2565, 0
  %2567 = extractvalue %dx.types.CBufRet.f32 %2565, 1
  %2568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2569 = extractvalue %dx.types.CBufRet.f32 %2568, 0
  %2570 = extractvalue %dx.types.CBufRet.f32 %2568, 1
  %2571 = fsub fast float %2566, %2569
  %2572 = fsub fast float %2567, %2570
  %2573 = extractvalue %dx.types.CBufRet.f32 %2565, 2
  %2574 = fsub fast float -0.000000e+00, %2571
  %2575 = fsub fast float -0.000000e+00, %2572
  %2576 = call float @dx.op.dot2.f32(i32 54, float %2395, float %2396, float %2574, float %2575)  ; Dot2(ax,ay,bx,by)
  %2577 = fmul fast float %2576, 2.000000e+00
  %2578 = call float @dx.op.dot2.f32(i32 54, float %2574, float %2575, float %2574, float %2575)  ; Dot2(ax,ay,bx,by)
  %2579 = fmul fast float %2573, %2573
  %2580 = fsub fast float %2578, %2579
  %2581 = fmul fast float %2577, %2577
  %2582 = fmul fast float %2438, %2580
  %2583 = fsub fast float %2581, %2582
  %2584 = fcmp fast ogt float %2583, 0.000000e+00
  br i1 %2584, label %2585, label %2600, !dx.controlflow.hints !78

; <label>:2585                                    ; preds = %2561
  %2586 = fcmp fast ogt float %2577, 0.000000e+00
  %2587 = call float @dx.op.unary.f32(i32 24, float %2583)  ; Sqrt(value)
  %2588 = fsub fast float -0.000000e+00, %2587
  %2589 = select i1 %2586, float %2587, float %2588
  %2590 = fadd fast float %2589, %2577
  %2591 = fmul float %2590, -5.000000e-01
  %2592 = fdiv fast float %2591, %2431
  %2593 = call float @dx.op.binary.f32(i32 35, float %2592, float 0.000000e+00)  ; FMax(a,b)
  %2594 = call float @dx.op.binary.f32(i32 36, float %2466, float %2593)  ; FMin(a,b)
  %2595 = fdiv fast float %2580, %2591
  %2596 = call float @dx.op.binary.f32(i32 35, float %2595, float 0.000000e+00)  ; FMax(a,b)
  %2597 = call float @dx.op.binary.f32(i32 36, float %2466, float %2596)  ; FMin(a,b)
  %2598 = call float @dx.op.binary.f32(i32 36, float %2594, float %2597)  ; FMin(a,b)
  %2599 = call float @dx.op.binary.f32(i32 35, float %2594, float %2597)  ; FMax(a,b)
  br label %2600

; <label>:2600                                    ; preds = %2585, %2561
  %2601 = phi float [ %2599, %2585 ], [ -1.000000e+00, %2561 ]
  %2602 = phi float [ %2598, %2585 ], [ -1.000000e+00, %2561 ]
  %2603 = phi i1 [ true, %2585 ], [ false, %2561 ]
  br i1 %2603, label %2604, label %2610, !dx.controlflow.hints !101

; <label>:2604                                    ; preds = %2600
  %2605 = call float @dx.op.binary.f32(i32 35, float %2549, float %2602)  ; FMax(a,b)
  %2606 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 %2563
  store float %2605, float* %2606, align 4, !tbaa !86, !noalias !90
  %2607 = call float @dx.op.binary.f32(i32 35, float %2549, float %2601)  ; FMax(a,b)
  %2608 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 %2563
  store float %2607, float* %2608, align 4, !tbaa !86, !noalias !90
  %2609 = add nsw i32 %2562, 1
  br label %2610

; <label>:2610                                    ; preds = %2604, %2600
  %2611 = phi i32 [ %2609, %2604 ], [ %2562, %2600 ]
  %2612 = add nuw nsw i32 %2563, 1
  %2613 = icmp eq i32 %2612, %2418
  br i1 %2613, label %2614, label %2561

; <label>:2614                                    ; preds = %2610
  %2615 = load float, float* %2555, align 4, !tbaa !86, !alias.scope !102, !noalias !105
  %2616 = load float, float* %2554, align 4, !tbaa !86, !alias.scope !108, !noalias !109
  %2617 = load float, float* %2553, align 4, !tbaa !86, !alias.scope !110, !noalias !111
  %2618 = load float, float* %2558, align 4, !tbaa !86, !alias.scope !112, !noalias !115
  %2619 = load float, float* %2557, align 4, !tbaa !86, !alias.scope !118, !noalias !119
  %2620 = load float, float* %2556, align 4, !tbaa !86, !alias.scope !120, !noalias !121
  br label %2621

; <label>:2621                                    ; preds = %2614, %2548
  %2622 = phi float [ -1.000000e+00, %2548 ], [ %2620, %2614 ]
  %2623 = phi float [ -1.000000e+00, %2548 ], [ %2619, %2614 ]
  %2624 = phi float [ -1.000000e+00, %2548 ], [ %2618, %2614 ]
  %2625 = phi float [ -1.000000e+00, %2548 ], [ %2617, %2614 ]
  %2626 = phi float [ -1.000000e+00, %2548 ], [ %2616, %2614 ]
  %2627 = phi float [ -1.000000e+00, %2548 ], [ %2615, %2614 ]
  %2628 = phi i32 [ 0, %2548 ], [ %2611, %2614 ]
  %2629 = call float @dx.op.binary.f32(i32 36, float %2626, float %2627)  ; FMin(a,b)
  %2630 = call float @dx.op.binary.f32(i32 36, float %2625, float %2629)  ; FMin(a,b)
  %2631 = call float @dx.op.binary.f32(i32 35, float %2625, float %2626)  ; FMax(a,b)
  %2632 = call float @dx.op.binary.f32(i32 36, float %2631, float %2627)  ; FMin(a,b)
  %2633 = call float @dx.op.binary.f32(i32 36, float %2625, float %2626)  ; FMin(a,b)
  %2634 = call float @dx.op.binary.f32(i32 35, float %2633, float %2632)  ; FMax(a,b)
  %2635 = call float @dx.op.binary.f32(i32 35, float %2626, float %2627)  ; FMax(a,b)
  %2636 = call float @dx.op.binary.f32(i32 35, float %2625, float %2635)  ; FMax(a,b)
  store float %2630, float* %2553, align 4, !tbaa !86, !alias.scope !110, !noalias !111
  store float %2634, float* %2554, align 4, !tbaa !86, !alias.scope !108, !noalias !109
  store float %2636, float* %2555, align 4, !tbaa !86, !alias.scope !102, !noalias !105
  %2637 = call float @dx.op.binary.f32(i32 36, float %2623, float %2624)  ; FMin(a,b)
  %2638 = call float @dx.op.binary.f32(i32 36, float %2622, float %2637)  ; FMin(a,b)
  %2639 = call float @dx.op.binary.f32(i32 35, float %2622, float %2623)  ; FMax(a,b)
  %2640 = call float @dx.op.binary.f32(i32 36, float %2639, float %2624)  ; FMin(a,b)
  %2641 = call float @dx.op.binary.f32(i32 36, float %2622, float %2623)  ; FMin(a,b)
  %2642 = call float @dx.op.binary.f32(i32 35, float %2641, float %2640)  ; FMax(a,b)
  %2643 = call float @dx.op.binary.f32(i32 35, float %2623, float %2624)  ; FMax(a,b)
  %2644 = call float @dx.op.binary.f32(i32 35, float %2622, float %2643)  ; FMax(a,b)
  store float %2638, float* %2556, align 4, !tbaa !86, !alias.scope !120, !noalias !121
  store float %2642, float* %2557, align 4, !tbaa !86, !alias.scope !118, !noalias !119
  store float %2644, float* %2558, align 4, !tbaa !86, !alias.scope !112, !noalias !115
  %2645 = sub nsw i32 3, %2628
  %2646 = icmp sgt i32 %2645, 2
  br i1 %2646, label %2647, label %2685, !dx.controlflow.hints !122

; <label>:2647                                    ; preds = %2621
  %2648 = icmp eq i32 %2416, 0
  %2649 = fsub fast float %2466, %2550
  %2650 = select i1 %2648, float %2649, float %2550
  %2651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2652 = extractvalue %dx.types.CBufRet.f32 %2651, 0
  %2653 = extractvalue %dx.types.CBufRet.f32 %2651, 1
  %2654 = extractvalue %dx.types.CBufRet.f32 %2651, 2
  %2655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2656 = extractvalue %dx.types.CBufRet.f32 %2655, 0
  %2657 = extractvalue %dx.types.CBufRet.f32 %2655, 1
  %2658 = extractvalue %dx.types.CBufRet.f32 %2655, 2
  %2659 = extractvalue %dx.types.CBufRet.f32 %2655, 3
  %2660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2661 = extractvalue %dx.types.CBufRet.f32 %2660, 3
  %2662 = call float @dx.op.binary.f32(i32 36, float %2551, float %2661)  ; FMin(a,b)
  %2663 = fmul fast float %2659, %2650
  %2664 = call float @dx.op.unary.f32(i32 7, float %2663)  ; Saturate(value)
  %2665 = fsub fast float %2656, %2652
  %2666 = fsub fast float %2657, %2653
  %2667 = fsub fast float %2658, %2654
  %2668 = fmul fast float %2664, %2665
  %2669 = fmul fast float %2664, %2666
  %2670 = fmul fast float %2664, %2667
  %2671 = fadd fast float %2668, %2652
  %2672 = fadd fast float %2669, %2653
  %2673 = fadd fast float %2670, %2654
  %2674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2675 = extractvalue %dx.types.CBufRet.f32 %2674, 0
  %2676 = extractvalue %dx.types.CBufRet.f32 %2674, 1
  %2677 = fadd fast float %2676, %2675
  %2678 = call float @dx.op.unary.f32(i32 7, float %2677)  ; Saturate(value)
  %2679 = extractvalue %dx.types.CBufRet.f32 %2674, 2
  %2680 = extractvalue %dx.types.CBufRet.f32 %2674, 3
  %2681 = fadd fast float %2680, %2679
  %2682 = call float @dx.op.unary.f32(i32 7, float %2681)  ; Saturate(value)
  %2683 = fmul fast float %2678, %2662
  %2684 = fmul fast float %2683, %2682
  br label %2767

; <label>:2685                                    ; preds = %2621
  %2686 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 %2645
  %2687 = load float, float* %2686, align 4, !tbaa !86, !noalias !90
  %2688 = fcmp fast olt float %2687, %2552
  %2689 = icmp sgt i32 %2628, 0
  %2690 = and i1 %2689, %2688
  br i1 %2690, label %2691, label %2728

; <label>:2691                                    ; preds = %2685
  br label %2692

; <label>:2692                                    ; preds = %2721, %2691
  %2693 = phi float [ %2722, %2721 ], [ %2550, %2691 ]
  %2694 = phi float [ %2723, %2721 ], [ %2551, %2691 ]
  %2695 = phi float [ %2703, %2721 ], [ %2687, %2691 ]
  %2696 = phi i32 [ %2700, %2721 ], [ %2645, %2691 ]
  %2697 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 %2696
  %2698 = load float, float* %2697, align 4, !tbaa !86, !noalias !90
  %2699 = icmp slt i32 %2696, 2
  %2700 = add nsw i32 %2696, 1
  %2701 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 %2700
  %2702 = load float, float* %2701, align 4, !tbaa !86, !noalias !90
  %2703 = select i1 %2699, float %2702, float %2466
  %2704 = call float @dx.op.binary.f32(i32 36, float %2703, float %2698)  ; FMin(a,b)
  %2705 = call float @dx.op.binary.f32(i32 36, float %2552, float %2704)  ; FMin(a,b)
  %2706 = icmp eq i32 %2416, 0
  %2707 = fadd fast float %2705, %2695
  %2708 = fmul fast float %2707, %2397
  %2709 = fadd fast float %2708, %2410
  br i1 %2706, label %2715, label %2710, !dx.controlflow.hints !123

; <label>:2710                                    ; preds = %2692
  %2711 = fsub fast float %2705, %2695
  %2712 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2711)  ; FMax(a,b)
  %2713 = fmul fast float %2712, %2709
  %2714 = fadd fast float %2713, %2694
  br label %2721

; <label>:2715                                    ; preds = %2692
  %2716 = fsub fast float %2695, %2705
  %2717 = call float @dx.op.unary.f32(i32 6, float %2716)  ; FAbs(value)
  %2718 = fadd fast float %2717, %2693
  %2719 = fmul fast float %2717, %2709
  %2720 = fsub fast float %2694, %2719
  br label %2721

; <label>:2721                                    ; preds = %2715, %2710
  %2722 = phi float [ %2712, %2710 ], [ %2718, %2715 ]
  %2723 = phi float [ %2714, %2710 ], [ %2720, %2715 ]
  %2724 = fcmp fast olt float %2703, %2552
  %2725 = icmp slt i32 %2700, 3
  %2726 = and i1 %2725, %2724
  br i1 %2726, label %2692, label %2727

; <label>:2727                                    ; preds = %2721
  br label %2728

; <label>:2728                                    ; preds = %2727, %2685
  %2729 = phi float [ %2550, %2685 ], [ %2722, %2727 ]
  %2730 = phi float [ %2551, %2685 ], [ %2723, %2727 ]
  %2731 = fsub fast float %2466, %2729
  %2732 = select i1 %2468, float %2729, float %2731
  %2733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2734 = extractvalue %dx.types.CBufRet.f32 %2733, 0
  %2735 = extractvalue %dx.types.CBufRet.f32 %2733, 1
  %2736 = extractvalue %dx.types.CBufRet.f32 %2733, 2
  %2737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2738 = extractvalue %dx.types.CBufRet.f32 %2737, 0
  %2739 = extractvalue %dx.types.CBufRet.f32 %2737, 1
  %2740 = extractvalue %dx.types.CBufRet.f32 %2737, 2
  %2741 = extractvalue %dx.types.CBufRet.f32 %2737, 3
  %2742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2743 = extractvalue %dx.types.CBufRet.f32 %2742, 3
  %2744 = call float @dx.op.binary.f32(i32 36, float %2730, float %2743)  ; FMin(a,b)
  %2745 = fmul fast float %2741, %2732
  %2746 = call float @dx.op.unary.f32(i32 7, float %2745)  ; Saturate(value)
  %2747 = fsub fast float %2738, %2734
  %2748 = fsub fast float %2739, %2735
  %2749 = fsub fast float %2740, %2736
  %2750 = fmul fast float %2746, %2747
  %2751 = fmul fast float %2746, %2748
  %2752 = fmul fast float %2746, %2749
  %2753 = fadd fast float %2750, %2734
  %2754 = fadd fast float %2751, %2735
  %2755 = fadd fast float %2752, %2736
  %2756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2757 = extractvalue %dx.types.CBufRet.f32 %2756, 0
  %2758 = extractvalue %dx.types.CBufRet.f32 %2756, 1
  %2759 = fadd fast float %2758, %2757
  %2760 = call float @dx.op.unary.f32(i32 7, float %2759)  ; Saturate(value)
  %2761 = extractvalue %dx.types.CBufRet.f32 %2756, 2
  %2762 = extractvalue %dx.types.CBufRet.f32 %2756, 3
  %2763 = fadd fast float %2762, %2761
  %2764 = call float @dx.op.unary.f32(i32 7, float %2763)  ; Saturate(value)
  %2765 = fmul fast float %2760, %2744
  %2766 = fmul fast float %2765, %2764
  br label %2767

; <label>:2767                                    ; preds = %2728, %2647, %2482, %2464, %2462
  %2768 = phi float [ %2491, %2482 ], [ %2650, %2647 ], [ %2732, %2728 ], [ 0.000000e+00, %2462 ], [ 0.000000e+00, %2464 ]
  %2769 = phi float [ %2525, %2482 ], [ %2684, %2647 ], [ %2766, %2728 ], [ 0.000000e+00, %2462 ], [ 0.000000e+00, %2464 ]
  %2770 = phi float [ %2512, %2482 ], [ %2671, %2647 ], [ %2753, %2728 ], [ 0.000000e+00, %2462 ], [ 0.000000e+00, %2464 ]
  %2771 = phi float [ %2513, %2482 ], [ %2672, %2647 ], [ %2754, %2728 ], [ 0.000000e+00, %2462 ], [ 0.000000e+00, %2464 ]
  %2772 = phi float [ %2514, %2482 ], [ %2673, %2647 ], [ %2755, %2728 ], [ 0.000000e+00, %2462 ], [ 0.000000e+00, %2464 ]
  %2773 = fmul fast float %2405, %2769
  %2774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2775 = extractvalue %dx.types.CBufRet.f32 %2774, 2
  %2776 = fsub fast float %2412, %2775
  %2777 = fcmp fast olt float %2773, -2.000000e+01
  %2778 = call float @dx.op.unary.f32(i32 21, float %2773)  ; Exp(value)
  %2779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2780 = extractvalue %dx.types.CBufRet.f32 %2779, 2
  %2781 = extractvalue %dx.types.CBufRet.f32 %2779, 3
  %2782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2783 = extractvalue %dx.types.CBufRet.f32 %2782, 2
  %2784 = fmul fast float %2781, %2776
  %2785 = call float @dx.op.unary.f32(i32 7, float %2784)  ; Saturate(value)
  %2786 = fsub fast float 1.000000e+00, %2785
  %2787 = fmul fast float %2397, 5.000000e-01
  %2788 = fadd fast float %2787, 5.000000e-01
  %2789 = call float @dx.op.unary.f32(i32 7, float %2788)  ; Saturate(value)
  %2790 = fsub fast float 1.000000e+00, %2789
  %2791 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2786)  ; FMax(a,b)
  %2792 = fdiv fast float %2790, %2791
  %2793 = fsub fast float %2776, %2363
  %2794 = call float @dx.op.unary.f32(i32 6, float %2793)  ; FAbs(value)
  %2795 = fmul fast float %2794, %2780
  %2796 = call float @dx.op.unary.f32(i32 7, float %2792)  ; Saturate(value)
  %2797 = fsub fast float 1.000000e+00, %2795
  %2798 = fmul fast float %2797, %2796
  %2799 = fadd fast float %2798, %2795
  %2800 = fmul fast float %2783, %2776
  %2801 = call float @dx.op.unary.f32(i32 7, float %2800)  ; Saturate(value)
  %2802 = fsub fast float 1.000000e+00, %2799
  %2803 = fmul fast float %2802, %2801
  %2804 = fadd fast float %2803, %2799
  %2805 = call float @dx.op.unary.f32(i32 7, float %2804)  ; Saturate(value)
  %2806 = fadd fast float %2778, -1.000000e+00
  %2807 = select i1 %2777, float -1.000000e+00, float %2806
  %2808 = fmul fast float %2805, %2807
  %2809 = fadd fast float %2808, 1.000000e+00
  %2810 = fsub fast float -0.000000e+00, %2808
  %2811 = fmul fast float %2770, %2810
  %2812 = fmul fast float %2771, %2810
  %2813 = fmul fast float %2772, %2810
  br label %2814

; <label>:2814                                    ; preds = %2767, %2316
  %2815 = phi float [ %2768, %2767 ], [ 0.000000e+00, %2316 ]
  %2816 = phi float [ %2809, %2767 ], [ 1.000000e+00, %2316 ]
  %2817 = phi float [ %2811, %2767 ], [ 0.000000e+00, %2316 ]
  %2818 = phi float [ %2812, %2767 ], [ 0.000000e+00, %2316 ]
  %2819 = phi float [ %2813, %2767 ], [ 0.000000e+00, %2316 ]
  %2820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2821 = extractvalue %dx.types.CBufRet.f32 %2820, 1
  %2822 = fsub fast float 1.000000e+00, %2816
  %2823 = fmul fast float %2822, %2398
  %2824 = fmul fast float %2823, %2821
  %2825 = fsub fast float %2398, %2824
  br i1 %2391, label %2826, label %2855, !dx.controlflow.hints !124

; <label>:2826                                    ; preds = %2814
  %2827 = fmul fast float %2399, %2388
  %2828 = fadd fast float %2827, %2389
  %2829 = call float @dx.op.unary.f32(i32 7, float %2828)  ; Saturate(value)
  %2830 = fmul fast float %2370, %2825
  %2831 = fsub fast float -0.000000e+00, %2830
  %2832 = fmul fast float %2371, %2825
  %2833 = fsub fast float -0.000000e+00, %2832
  %2834 = call float @dx.op.unary.f32(i32 21, float %2831)  ; Exp(value)
  %2835 = call float @dx.op.unary.f32(i32 21, float %2833)  ; Exp(value)
  %2836 = call float @dx.op.binary.f32(i32 35, float %2378, float %2834)  ; FMax(a,b)
  %2837 = call float @dx.op.binary.f32(i32 35, float %2378, float %2835)  ; FMax(a,b)
  %2838 = fsub fast float %2837, %2836
  %2839 = fmul fast float %2838, %2829
  %2840 = fadd fast float %2839, %2836
  %2841 = call float @dx.op.unary.f32(i32 7, float %2840)  ; Saturate(value)
  %2842 = fsub fast float %2375, %2380
  %2843 = fsub fast float %2376, %2381
  %2844 = fsub fast float %2377, %2382
  %2845 = fmul fast float %2829, %2842
  %2846 = fmul fast float %2829, %2843
  %2847 = fmul fast float %2829, %2844
  %2848 = fadd fast float %2845, %2380
  %2849 = fadd fast float %2846, %2381
  %2850 = fadd fast float %2847, %2382
  %2851 = fsub fast float 1.000000e+00, %2841
  %2852 = fmul fast float %2851, %2848
  %2853 = fmul fast float %2851, %2849
  %2854 = fmul fast float %2851, %2850
  br label %2914

; <label>:2855                                    ; preds = %2814
  %2856 = fmul fast float %2825, %2387
  %2857 = call float @dx.op.unary.f32(i32 7, float %2856)  ; Saturate(value)
  %2858 = fsub fast float 2.000000e+00, %2857
  %2859 = fmul fast float %2857, 9.921875e-01
  %2860 = fmul fast float %2859, %2858
  %2861 = fadd fast float %2860, 3.906250e-03
  %2862 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %19, float %2861, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2863 = extractvalue %dx.types.ResRet.f32 %2862, 0
  %2864 = fsub fast float %2857, %2863
  %2865 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2864)  ; FMax(a,b)
  %2866 = fmul fast float %2373, %2363
  %2867 = call float @dx.op.unary.f32(i32 6, float %2866)  ; FAbs(value)
  %2868 = fcmp fast ogt float %2867, 0x3EB0C6F7A0000000
  br i1 %2868, label %2869, label %2875, !dx.controlflow.hints !125

; <label>:2869                                    ; preds = %2855
  %2870 = fmul fast float %2866, 0xBFF7154760000000
  %2871 = call float @dx.op.unary.f32(i32 21, float %2870)  ; Exp(value)
  %2872 = fsub fast float 1.000000e+00, %2871
  %2873 = fdiv fast float %2872, %2866
  %2874 = fmul fast float %2873, %2383
  br label %2875

; <label>:2875                                    ; preds = %2869, %2855
  %2876 = phi float [ %2874, %2869 ], [ %2383, %2855 ]
  %2877 = fadd fast float %2876, %2385
  %2878 = fmul fast float %2877, %2865
  %2879 = fmul fast float %2370, %2878
  %2880 = fsub fast float -0.000000e+00, %2879
  %2881 = fmul fast float %2371, %2878
  %2882 = fsub fast float -0.000000e+00, %2881
  %2883 = fmul fast float %2372, %2878
  %2884 = fsub fast float -0.000000e+00, %2883
  %2885 = call float @dx.op.unary.f32(i32 21, float %2880)  ; Exp(value)
  %2886 = call float @dx.op.unary.f32(i32 21, float %2882)  ; Exp(value)
  %2887 = call float @dx.op.unary.f32(i32 21, float %2884)  ; Exp(value)
  %2888 = fmul fast float %2399, %2399
  %2889 = fadd fast float %2888, 1.000000e+00
  %2890 = fmul fast float %2889, 0x3FAE8EC8A0000000
  %2891 = fmul fast float %2890, %2380
  %2892 = fmul fast float %2890, %2381
  %2893 = fmul fast float %2890, %2382
  %2894 = fmul fast float %2399, %2378
  %2895 = fsub fast float 1.000000e+00, %2894
  %2896 = fmul fast float %2378, %2378
  %2897 = fsub fast float 1.000000e+00, %2896
  %2898 = fmul fast float %2897, 0x3FB45F3060000000
  %2899 = fmul fast float %2895, %2895
  %2900 = fdiv fast float 1.000000e+00, %2899
  %2901 = fmul fast float %2898, %2900
  %2902 = fmul fast float %2901, %2375
  %2903 = fmul fast float %2901, %2376
  %2904 = fmul fast float %2901, %2377
  %2905 = fadd fast float %2902, %2891
  %2906 = fadd fast float %2903, %2892
  %2907 = fadd fast float %2904, %2893
  %2908 = fsub fast float 1.000000e+00, %2885
  %2909 = fsub fast float 1.000000e+00, %2886
  %2910 = fsub fast float 1.000000e+00, %2887
  %2911 = fmul fast float %2905, %2908
  %2912 = fmul fast float %2906, %2909
  %2913 = fmul fast float %2907, %2910
  br label %2914

; <label>:2914                                    ; preds = %2875, %2826
  %2915 = phi float [ %2852, %2826 ], [ %2911, %2875 ]
  %2916 = phi float [ %2853, %2826 ], [ %2912, %2875 ]
  %2917 = phi float [ %2854, %2826 ], [ %2913, %2875 ]
  %2918 = phi float [ %2841, %2826 ], [ %2885, %2875 ]
  %2919 = phi float [ %2841, %2826 ], [ %2886, %2875 ]
  %2920 = phi float [ %2841, %2826 ], [ %2887, %2875 ]
  br i1 %2407, label %2921, label %3119, !dx.controlflow.hints !126

; <label>:2921                                    ; preds = %2914
  %2922 = extractvalue %dx.types.CBufRet.f32 %2820, 0
  %2923 = fmul fast float %2922, %2822
  %2924 = fsub fast float %2817, %2915
  %2925 = fsub fast float %2818, %2916
  %2926 = fsub fast float %2819, %2917
  %2927 = fmul fast float %2923, %2924
  %2928 = fmul fast float %2923, %2925
  %2929 = fmul fast float %2923, %2926
  %2930 = fadd fast float %2927, %2915
  %2931 = fadd fast float %2928, %2916
  %2932 = fadd fast float %2929, %2917
  %2933 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2918)  ; FMax(a,b)
  %2934 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2919)  ; FMax(a,b)
  %2935 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2920)  ; FMax(a,b)
  %2936 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2816)  ; FMax(a,b)
  %2937 = call float @dx.op.binary.f32(i32 35, float %2815, float %2825)  ; FMax(a,b)
  %2938 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2937)  ; FMax(a,b)
  %2939 = fdiv fast float %2815, %2938
  %2940 = call float @dx.op.unary.f32(i32 7, float %2939)  ; Saturate(value)
  %2941 = fdiv fast float %2825, %2938
  %2942 = call float @dx.op.unary.f32(i32 7, float %2941)  ; Saturate(value)
  %2943 = fcmp fast une float %2936, 1.000000e+00
  br i1 %2943, label %2944, label %2957, !dx.controlflow.hints !127

; <label>:2944                                    ; preds = %2921
  %2945 = call float @dx.op.unary.f32(i32 23, float %2936)  ; Log(value)
  %2946 = fmul fast float %2945, 0x3FE62E4300000000
  %2947 = fmul fast float %2817, %2946
  %2948 = fsub fast float -0.000000e+00, %2947
  %2949 = fmul fast float %2818, %2946
  %2950 = fsub fast float -0.000000e+00, %2949
  %2951 = fmul fast float %2819, %2946
  %2952 = fsub fast float -0.000000e+00, %2951
  %2953 = fsub fast float 1.000000e+00, %2936
  %2954 = fdiv fast float %2948, %2953
  %2955 = fdiv fast float %2950, %2953
  %2956 = fdiv fast float %2952, %2953
  br label %2957

; <label>:2957                                    ; preds = %2944, %2921
  %2958 = phi float [ %2954, %2944 ], [ %2817, %2921 ]
  %2959 = phi float [ %2955, %2944 ], [ %2818, %2921 ]
  %2960 = phi float [ %2956, %2944 ], [ %2819, %2921 ]
  %2961 = phi float [ %2946, %2944 ], [ 0.000000e+00, %2921 ]
  %2962 = fcmp fast une float %2933, 1.000000e+00
  br i1 %2962, label %2963, label %2970, !dx.controlflow.hints !128

; <label>:2963                                    ; preds = %2957
  %2964 = call float @dx.op.unary.f32(i32 23, float %2933)  ; Log(value)
  %2965 = fmul fast float %2964, 0x3FE62E4300000000
  %2966 = fmul fast float %2930, %2965
  %2967 = fsub fast float -0.000000e+00, %2966
  %2968 = fsub fast float 1.000000e+00, %2933
  %2969 = fdiv fast float %2967, %2968
  br label %2970

; <label>:2970                                    ; preds = %2963, %2957
  %2971 = phi float [ %2969, %2963 ], [ %2930, %2957 ]
  %2972 = phi float [ %2965, %2963 ], [ 0.000000e+00, %2957 ]
  %2973 = fcmp fast une float %2934, 1.000000e+00
  br i1 %2973, label %2974, label %2981, !dx.controlflow.hints !128

; <label>:2974                                    ; preds = %2970
  %2975 = call float @dx.op.unary.f32(i32 23, float %2934)  ; Log(value)
  %2976 = fmul fast float %2975, 0x3FE62E4300000000
  %2977 = fmul fast float %2931, %2976
  %2978 = fsub fast float -0.000000e+00, %2977
  %2979 = fsub fast float 1.000000e+00, %2934
  %2980 = fdiv fast float %2978, %2979
  br label %2981

; <label>:2981                                    ; preds = %2974, %2970
  %2982 = phi float [ %2980, %2974 ], [ %2931, %2970 ]
  %2983 = phi float [ %2976, %2974 ], [ 0.000000e+00, %2970 ]
  %2984 = fcmp fast une float %2935, 1.000000e+00
  br i1 %2984, label %2985, label %2992, !dx.controlflow.hints !128

; <label>:2985                                    ; preds = %2981
  %2986 = call float @dx.op.unary.f32(i32 23, float %2935)  ; Log(value)
  %2987 = fmul fast float %2986, 0x3FE62E4300000000
  %2988 = fmul fast float %2932, %2987
  %2989 = fsub fast float -0.000000e+00, %2988
  %2990 = fsub fast float 1.000000e+00, %2935
  %2991 = fdiv fast float %2989, %2990
  br label %2992

; <label>:2992                                    ; preds = %2985, %2981
  %2993 = phi float [ %2991, %2985 ], [ %2932, %2981 ]
  %2994 = phi float [ %2987, %2985 ], [ 0.000000e+00, %2981 ]
  %2995 = fmul fast float %2958, %2942
  %2996 = fmul fast float %2959, %2942
  %2997 = fmul fast float %2960, %2942
  %2998 = fmul fast float %2961, %2942
  %2999 = fmul fast float %2971, %2940
  %3000 = fmul fast float %2982, %2940
  %3001 = fmul fast float %2993, %2940
  %3002 = fmul fast float %2972, %2940
  %3003 = fmul fast float %2983, %2940
  %3004 = fmul fast float %2994, %2940
  %3005 = fadd fast float %2999, %2995
  %3006 = fadd fast float %3000, %2996
  %3007 = fadd fast float %3001, %2997
  %3008 = fadd fast float %3002, %2998
  %3009 = fadd fast float %3003, %2998
  %3010 = fadd fast float %3004, %2998
  %3011 = fcmp fast une float %3008, 0.000000e+00
  br i1 %3011, label %3012, label %3019, !dx.controlflow.hints !129

; <label>:3012                                    ; preds = %2992
  %3013 = fmul fast float %3008, 0x3FF7154760000000
  %3014 = call float @dx.op.unary.f32(i32 21, float %3013)  ; Exp(value)
  %3015 = fsub fast float 1.000000e+00, %3014
  %3016 = fmul fast float %3005, %3015
  %3017 = fsub fast float -0.000000e+00, %3016
  %3018 = fdiv fast float %3017, %3008
  br label %3019

; <label>:3019                                    ; preds = %3012, %2992
  %3020 = phi float [ %3014, %3012 ], [ 1.000000e+00, %2992 ]
  %3021 = phi float [ %3018, %3012 ], [ %3005, %2992 ]
  %3022 = fcmp fast une float %3009, 0.000000e+00
  br i1 %3022, label %3023, label %3030, !dx.controlflow.hints !129

; <label>:3023                                    ; preds = %3019
  %3024 = fmul fast float %3009, 0x3FF7154760000000
  %3025 = call float @dx.op.unary.f32(i32 21, float %3024)  ; Exp(value)
  %3026 = fsub fast float 1.000000e+00, %3025
  %3027 = fmul fast float %3006, %3026
  %3028 = fsub fast float -0.000000e+00, %3027
  %3029 = fdiv fast float %3028, %3009
  br label %3030

; <label>:3030                                    ; preds = %3023, %3019
  %3031 = phi float [ %3025, %3023 ], [ 1.000000e+00, %3019 ]
  %3032 = phi float [ %3029, %3023 ], [ %3006, %3019 ]
  %3033 = fcmp fast une float %3010, 0.000000e+00
  br i1 %3033, label %3034, label %3041, !dx.controlflow.hints !129

; <label>:3034                                    ; preds = %3030
  %3035 = fmul fast float %3010, 0x3FF7154760000000
  %3036 = call float @dx.op.unary.f32(i32 21, float %3035)  ; Exp(value)
  %3037 = fsub fast float 1.000000e+00, %3036
  %3038 = fmul fast float %3007, %3037
  %3039 = fsub fast float -0.000000e+00, %3038
  %3040 = fdiv fast float %3039, %3010
  br label %3041

; <label>:3041                                    ; preds = %3034, %3030
  %3042 = phi float [ %3036, %3034 ], [ 1.000000e+00, %3030 ]
  %3043 = phi float [ %3040, %3034 ], [ %3007, %3030 ]
  %3044 = fcmp fast ogt float %2940, %2942
  br i1 %3044, label %3045, label %3065, !dx.controlflow.hints !130

; <label>:3045                                    ; preds = %3041
  %3046 = fsub fast float 1.000000e+00, %2942
  %3047 = fmul fast float %2958, %3046
  %3048 = fmul fast float %2959, %3046
  %3049 = fmul fast float %2960, %3046
  %3050 = fmul fast float %2961, %3046
  %3051 = fcmp fast une float %3050, 0.000000e+00
  br i1 %3051, label %3052, label %3103, !dx.controlflow.hints !131

; <label>:3052                                    ; preds = %3045
  %3053 = fmul fast float %3050, 0x3FF7154760000000
  %3054 = call float @dx.op.unary.f32(i32 21, float %3053)  ; Exp(value)
  %3055 = fsub fast float 1.000000e+00, %3054
  %3056 = fmul fast float %3047, %3055
  %3057 = fsub fast float -0.000000e+00, %3056
  %3058 = fmul fast float %3048, %3055
  %3059 = fsub fast float -0.000000e+00, %3058
  %3060 = fmul fast float %3049, %3055
  %3061 = fsub fast float -0.000000e+00, %3060
  %3062 = fdiv fast float %3057, %3050
  %3063 = fdiv fast float %3059, %3050
  %3064 = fdiv fast float %3061, %3050
  br label %3103

; <label>:3065                                    ; preds = %3041
  %3066 = fsub fast float 1.000000e+00, %2940
  %3067 = fmul fast float %2971, %3066
  %3068 = fmul fast float %2982, %3066
  %3069 = fmul fast float %2993, %3066
  %3070 = fmul fast float %2972, %3066
  %3071 = fmul fast float %2983, %3066
  %3072 = fmul fast float %2994, %3066
  %3073 = fcmp fast une float %3070, 0.000000e+00
  br i1 %3073, label %3074, label %3081, !dx.controlflow.hints !129

; <label>:3074                                    ; preds = %3065
  %3075 = fmul fast float %3070, 0x3FF7154760000000
  %3076 = call float @dx.op.unary.f32(i32 21, float %3075)  ; Exp(value)
  %3077 = fsub fast float 1.000000e+00, %3076
  %3078 = fmul fast float %3067, %3077
  %3079 = fsub fast float -0.000000e+00, %3078
  %3080 = fdiv fast float %3079, %3070
  br label %3081

; <label>:3081                                    ; preds = %3074, %3065
  %3082 = phi float [ %3080, %3074 ], [ %3067, %3065 ]
  %3083 = phi float [ %3076, %3074 ], [ 1.000000e+00, %3065 ]
  %3084 = fcmp fast une float %3071, 0.000000e+00
  br i1 %3084, label %3085, label %3092, !dx.controlflow.hints !129

; <label>:3085                                    ; preds = %3081
  %3086 = fmul fast float %3071, 0x3FF7154760000000
  %3087 = call float @dx.op.unary.f32(i32 21, float %3086)  ; Exp(value)
  %3088 = fsub fast float 1.000000e+00, %3087
  %3089 = fmul fast float %3068, %3088
  %3090 = fsub fast float -0.000000e+00, %3089
  %3091 = fdiv fast float %3090, %3071
  br label %3092

; <label>:3092                                    ; preds = %3085, %3081
  %3093 = phi float [ %3091, %3085 ], [ %3068, %3081 ]
  %3094 = phi float [ %3087, %3085 ], [ 1.000000e+00, %3081 ]
  %3095 = fcmp fast une float %3072, 0.000000e+00
  br i1 %3095, label %3096, label %3103, !dx.controlflow.hints !129

; <label>:3096                                    ; preds = %3092
  %3097 = fmul fast float %3072, 0x3FF7154760000000
  %3098 = call float @dx.op.unary.f32(i32 21, float %3097)  ; Exp(value)
  %3099 = fsub fast float 1.000000e+00, %3098
  %3100 = fmul fast float %3069, %3099
  %3101 = fsub fast float -0.000000e+00, %3100
  %3102 = fdiv fast float %3101, %3072
  br label %3103

; <label>:3103                                    ; preds = %3096, %3092, %3052, %3045
  %3104 = phi float [ %3102, %3096 ], [ %3064, %3052 ], [ %3049, %3045 ], [ %3069, %3092 ]
  %3105 = phi float [ %3093, %3096 ], [ %3063, %3052 ], [ %3048, %3045 ], [ %3093, %3092 ]
  %3106 = phi float [ %3082, %3096 ], [ %3062, %3052 ], [ %3047, %3045 ], [ %3082, %3092 ]
  %3107 = phi float [ %3098, %3096 ], [ %3054, %3052 ], [ 1.000000e+00, %3045 ], [ 1.000000e+00, %3092 ]
  %3108 = phi float [ %3094, %3096 ], [ %3054, %3052 ], [ 1.000000e+00, %3045 ], [ %3094, %3092 ]
  %3109 = phi float [ %3083, %3096 ], [ %3054, %3052 ], [ 1.000000e+00, %3045 ], [ %3083, %3092 ]
  %3110 = fmul fast float %3109, %3021
  %3111 = fmul fast float %3108, %3032
  %3112 = fmul fast float %3107, %3043
  %3113 = fadd fast float %3110, %3106
  %3114 = fadd fast float %3111, %3105
  %3115 = fadd fast float %3112, %3104
  %3116 = fmul fast float %3109, %3020
  %3117 = fmul fast float %3108, %3031
  %3118 = fmul fast float %3107, %3042
  br label %3119

; <label>:3119                                    ; preds = %3103, %2914
  %3120 = phi float [ %2920, %2914 ], [ %3118, %3103 ]
  %3121 = phi float [ %2919, %2914 ], [ %3117, %3103 ]
  %3122 = phi float [ %2918, %2914 ], [ %3116, %3103 ]
  %3123 = phi float [ %2917, %2914 ], [ %3115, %3103 ]
  %3124 = phi float [ %2916, %2914 ], [ %3114, %3103 ]
  %3125 = phi float [ %2915, %2914 ], [ %3113, %3103 ]
  %3126 = fmul fast float %3122, %2263
  %3127 = fmul fast float %3121, %2264
  %3128 = fmul fast float %3120, %2265
  %3129 = fsub fast float 1.000000e+00, %2326
  %3130 = fmul fast float %3125, %3129
  %3131 = fmul fast float %3124, %3129
  %3132 = fmul fast float %3123, %3129
  %3133 = fadd fast float %3130, %3126
  %3134 = fadd fast float %3131, %3127
  %3135 = fadd fast float %3132, %3128
  %3136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %3137 = extractvalue %dx.types.CBufRet.f32 %3136, 2
  %3138 = fmul fast float %3137, %2336
  %3139 = call float @dx.op.unary.f32(i32 7, float %3138)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %22, i32 %23, i32 undef, float %2326, float %2326, float %2326, float %2326, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %3140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3141 = extractvalue %dx.types.CBufRet.f32 %3140, 0
  %3142 = fmul fast float %3141, %3133
  %3143 = fmul fast float %3141, %3134
  %3144 = fmul fast float %3141, %3135
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %22, i32 %23, i32 undef, float %3142, float %3143, float %3144, float %3142, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %22, i32 %23, i32 undef, float %3139, float %3139, float %3139, float %3139, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

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
!4 = !{!5, !21, !27, !30}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !20}
!6 = !{i32 0, %"class.Texture3D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 16, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 27, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 31, i32 1, i32 7, i32 0, !7}
!11 = !{i32 4, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 30, i32 1, i32 4, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<float>"* undef, !"", i32 0, i32 29, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 0, i32 26, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 32, i32 1, i32 2, i32 0, !15}
!15 = !{i32 0, i32 5}
!16 = !{i32 8, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 33, i32 1, i32 4, i32 0, !7}
!17 = !{i32 9, %"class.Texture1D<float>"* undef, !"", i32 0, i32 14, i32 1, i32 1, i32 0, !7}
!18 = !{i32 10, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!19 = !{i32 11, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!20 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!21 = !{!22, !23, !24, !25}
!22 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!23 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!24 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!25 = !{i32 3, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 7, i1 false, i1 false, i1 false, !26}
!26 = !{i32 0, i32 14}
!27 = !{!28, !29}
!28 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!29 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!30 = !{!31, !32}
!31 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!32 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!33 = !{void ()* @cs_fog_raymarching_heightmap_brfog, !"cs_fog_raymarching_heightmap_brfog", null, !4, !34}
!34 = !{i32 0, i64 272, i32 4, !35}
!35 = !{i32 8, i32 8, i32 1}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
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
!52 = distinct !{!52, !"dx.controlflow.hints", i32 1}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 1}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = !{!87, !87, i64 0}
!87 = !{!"float", !88, i64 0}
!88 = !{!"omnipotent char", !89, i64 0}
!89 = !{!"Simple C/C++ TBAA"}
!90 = !{!91, !93, !95, !96, !98, !99, !100}
!91 = distinct !{!91, !92, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!92 = distinct !{!92, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!93 = distinct !{!93, !94, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!94 = distinct !{!94, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!95 = distinct !{!95, !94, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!96 = distinct !{!96, !97, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!97 = distinct !{!97, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!98 = distinct !{!98, !97, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!99 = distinct !{!99, !97, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!100 = distinct !{!100, !97, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 2}
!102 = !{!103}
!103 = distinct !{!103, !104, !"\01?sort@@YAXAIAM00@Z: %c"}
!104 = distinct !{!104, !"\01?sort@@YAXAIAM00@Z"}
!105 = !{!106, !107, !91, !93, !95, !96, !98, !99, !100}
!106 = distinct !{!106, !104, !"\01?sort@@YAXAIAM00@Z: %a"}
!107 = distinct !{!107, !104, !"\01?sort@@YAXAIAM00@Z: %b"}
!108 = !{!107}
!109 = !{!106, !103, !91, !93, !95, !96, !98, !99, !100}
!110 = !{!106}
!111 = !{!107, !103, !91, !93, !95, !96, !98, !99, !100}
!112 = !{!113}
!113 = distinct !{!113, !114, !"\01?sort@@YAXAIAM00@Z: %c"}
!114 = distinct !{!114, !"\01?sort@@YAXAIAM00@Z"}
!115 = !{!116, !117, !91, !93, !95, !96, !98, !99, !100}
!116 = distinct !{!116, !114, !"\01?sort@@YAXAIAM00@Z: %a"}
!117 = distinct !{!117, !114, !"\01?sort@@YAXAIAM00@Z: %b"}
!118 = !{!117}
!119 = !{!116, !113, !91, !93, !95, !96, !98, !99, !100}
!120 = !{!116}
!121 = !{!117, !113, !91, !93, !95, !96, !98, !99, !100}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 2}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 2}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 2}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 2}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}

