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
; shader hash: aac2fdeadbcbb470a372d6dc38003355
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

define void @cs_fog_raymarching_air_heightmap_brfog() {
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
  %203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %204 = extractvalue %dx.types.CBufRet.f32 %203, 3
  %205 = fsub fast float -0.000000e+00, %68
  %206 = fsub fast float -0.000000e+00, %69
  %207 = fsub fast float %204, %70
  %208 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %205, float %206, float %207)  ; Dot3(ax,ay,az,bx,by,bz)
  %209 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %210 = fdiv fast float 1.000000e+00, %209
  %211 = fmul fast float %210, %208
  %212 = fcmp fast olt float %211, 0.000000e+00
  %213 = fcmp fast ogt float %113, 0.000000e+00
  %214 = and i1 %213, %212
  br i1 %214, label %219, label %215, !dx.controlflow.hints !39

; <label>:215                                     ; preds = %199
  %216 = fcmp fast olt float %113, 0.000000e+00
  br i1 %216, label %217, label %219, !dx.controlflow.hints !40

; <label>:217                                     ; preds = %215
  %218 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %211)  ; FMax(a,b)
  br label %219

; <label>:219                                     ; preds = %217, %215, %199
  %220 = phi float [ 0.000000e+00, %199 ], [ %218, %217 ], [ 0.000000e+00, %215 ]
  %221 = phi float [ 0.000000e+00, %199 ], [ 0x47EFFFFFE0000000, %217 ], [ %211, %215 ]
  %222 = fcmp fast oeq float %221, 0.000000e+00
  br i1 %222, label %226, label %223, !dx.controlflow.hints !41

; <label>:223                                     ; preds = %219
  %224 = call float @dx.op.binary.f32(i32 36, float %202, float %220)  ; FMin(a,b)
  %225 = call float @dx.op.binary.f32(i32 35, float %201, float %221)  ; FMax(a,b)
  br label %226

; <label>:226                                     ; preds = %223, %219
  %227 = phi i32 [ 1, %223 ], [ 0, %219 ]
  %228 = phi float [ %225, %223 ], [ %201, %219 ]
  %229 = phi float [ %224, %223 ], [ %202, %219 ]
  %230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %231 = extractvalue %dx.types.CBufRet.f32 %230, 2
  %232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.f32 %232, 3
  %234 = fsub fast float %231, %70
  %235 = fadd fast float %234, %233
  %236 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %205, float %206, float %235)  ; Dot3(ax,ay,az,bx,by,bz)
  %237 = fmul fast float %210, %236
  %238 = fcmp fast olt float %237, 0.000000e+00
  %239 = and i1 %213, %238
  br i1 %239, label %244, label %240, !dx.controlflow.hints !42

; <label>:240                                     ; preds = %226
  %241 = fcmp fast olt float %113, 0.000000e+00
  br i1 %241, label %242, label %244, !dx.controlflow.hints !43

; <label>:242                                     ; preds = %240
  %243 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %237)  ; FMax(a,b)
  br label %244

; <label>:244                                     ; preds = %242, %240, %226
  %245 = phi float [ 0.000000e+00, %226 ], [ %243, %242 ], [ 0.000000e+00, %240 ]
  %246 = phi float [ 0.000000e+00, %226 ], [ 0x47EFFFFFE0000000, %242 ], [ %237, %240 ]
  %247 = fcmp fast oeq float %246, 0.000000e+00
  br i1 %247, label %251, label %248, !dx.controlflow.hints !44

; <label>:248                                     ; preds = %244
  %249 = call float @dx.op.binary.f32(i32 36, float %229, float %245)  ; FMin(a,b)
  %250 = call float @dx.op.binary.f32(i32 35, float %228, float %246)  ; FMax(a,b)
  br label %251

; <label>:251                                     ; preds = %248, %244
  %252 = phi i32 [ 1, %248 ], [ 0, %244 ]
  %253 = phi float [ %250, %248 ], [ %228, %244 ]
  %254 = phi float [ %249, %248 ], [ %229, %244 ]
  %255 = call float @dx.op.binary.f32(i32 36, float %132, float %253)  ; FMin(a,b)
  %256 = call float @dx.op.binary.f32(i32 35, float %109, float %254)  ; FMax(a,b)
  %257 = extractvalue %dx.types.CBufRet.f32 %203, 0
  %258 = fmul fast float %57, 2.000000e+00
  %259 = fadd fast float %258, -1.000000e+00
  %260 = fmul fast float %257, %259
  %261 = fadd fast float %260, %256
  %262 = fcmp fast olt float %261, %255
  %263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %264 = extractvalue %dx.types.CBufRet.f32 %263, 2
  %265 = fcmp fast olt float %264, 1.000000e+00
  %266 = and i1 %262, %265
  br i1 %266, label %267, label %2424

; <label>:267                                     ; preds = %251
  %268 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %269 = extractvalue %dx.types.CBufRet.i32 %268, 1
  %270 = add i32 %269, -1
  %271 = fmul fast float %261, %113
  %272 = fadd fast float %271, %70
  %273 = fmul fast float %261, %112
  %274 = fadd fast float %273, %69
  %275 = fmul fast float %261, %111
  %276 = fadd fast float %275, %68
  br label %277

; <label>:277                                     ; preds = %2398, %267
  %278 = phi i32 [ %2400, %2398 ], [ undef, %267 ]
  %279 = phi float [ %2401, %2398 ], [ undef, %267 ]
  %280 = phi i32 [ %665, %2398 ], [ undef, %267 ]
  %281 = phi float [ %666, %2398 ], [ undef, %267 ]
  %282 = phi float [ %2402, %2398 ], [ 0.000000e+00, %267 ]
  %283 = phi float [ %2403, %2398 ], [ 1.000000e+00, %267 ]
  %284 = phi float [ %2404, %2398 ], [ 0.000000e+00, %267 ]
  %285 = phi float [ %2405, %2398 ], [ 0.000000e+00, %267 ]
  %286 = phi float [ %2406, %2398 ], [ 0.000000e+00, %267 ]
  %287 = phi float [ %2416, %2398 ], [ %276, %267 ]
  %288 = phi float [ %2417, %2398 ], [ %274, %267 ]
  %289 = phi float [ %2418, %2398 ], [ %272, %267 ]
  %290 = phi float [ %2399, %2398 ], [ %261, %267 ]
  %291 = phi i32 [ %474, %2398 ], [ %270, %267 ]
  %292 = phi float [ %2407, %2398 ], [ 0.000000e+00, %267 ]
  %293 = phi float [ %2408, %2398 ], [ 0.000000e+00, %267 ]
  %294 = phi float [ %2409, %2398 ], [ 0.000000e+00, %267 ]
  %295 = phi float [ %2410, %2398 ], [ 0.000000e+00, %267 ]
  %296 = phi float [ %2411, %2398 ], [ 0.000000e+00, %267 ]
  %297 = phi i32 [ %2412, %2398 ], [ 0, %267 ]
  %298 = fsub fast float -0.000000e+00, %288
  %299 = fsub fast float -0.000000e+00, %287
  %300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %301 = extractvalue %dx.types.CBufRet.f32 %300, 0
  %302 = icmp eq i32 %200, 0
  br i1 %302, label %471, label %303, !dx.controlflow.hints !45

; <label>:303                                     ; preds = %277
  %304 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %305 = extractvalue %dx.types.CBufRet.i32 %304, 1
  %306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %307 = extractvalue %dx.types.CBufRet.f32 %306, 1
  %308 = fcmp fast ogt float %307, %290
  br i1 %308, label %309, label %311, !dx.controlflow.hints !46

; <label>:309                                     ; preds = %303
  %310 = fsub fast float %307, %290
  br label %461

; <label>:311                                     ; preds = %303
  %312 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %313 = extractvalue %dx.types.CBufRet.i32 %312, 3
  %314 = icmp eq i32 %313, 0
  %315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %316 = extractvalue %dx.types.CBufRet.f32 %315, 2
  %317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %318 = extractvalue %dx.types.CBufRet.f32 %317, 2
  %319 = fsub fast float %316, %289
  %320 = fadd fast float %319, %318
  %321 = fsub fast float 0xC7EFFFFFE0000000, %289
  br i1 %314, label %329, label %322, !dx.controlflow.hints !36

; <label>:322                                     ; preds = %311
  %323 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %299, float %298, float %320)  ; Dot3(ax,ay,az,bx,by,bz)
  %324 = fmul fast float %210, %323
  %325 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %299, float %298, float %321)  ; Dot3(ax,ay,az,bx,by,bz)
  %326 = fmul fast float %210, %325
  %327 = call float @dx.op.binary.f32(i32 36, float %324, float %326)  ; FMin(a,b)
  %328 = call float @dx.op.binary.f32(i32 35, float %324, float %326)  ; FMax(a,b)
  br label %362

; <label>:329                                     ; preds = %311
  %330 = extractvalue %dx.types.CBufRet.f32 %315, 0
  %331 = extractvalue %dx.types.CBufRet.f32 %315, 1
  %332 = extractvalue %dx.types.CBufRet.f32 %317, 0
  %333 = extractvalue %dx.types.CBufRet.f32 %317, 1
  %334 = fdiv fast float 1.000000e+00, %111
  %335 = fdiv fast float 1.000000e+00, %112
  %336 = fdiv fast float 1.000000e+00, %113
  %337 = fsub fast float %330, %287
  %338 = fmul fast float %334, %337
  %339 = fadd fast float %337, %332
  %340 = fmul fast float %339, %334
  %341 = call float @dx.op.binary.f32(i32 36, float %338, float %340)  ; FMin(a,b)
  %342 = call float @dx.op.binary.f32(i32 35, float %338, float %340)  ; FMax(a,b)
  %343 = fsub fast float %331, %288
  %344 = fmul fast float %335, %343
  %345 = fadd fast float %343, %333
  %346 = fmul fast float %345, %335
  %347 = call float @dx.op.binary.f32(i32 36, float %344, float %346)  ; FMin(a,b)
  %348 = call float @dx.op.binary.f32(i32 35, float %341, float %347)  ; FMax(a,b)
  %349 = call float @dx.op.binary.f32(i32 35, float %344, float %346)  ; FMax(a,b)
  %350 = call float @dx.op.binary.f32(i32 36, float %342, float %349)  ; FMin(a,b)
  %351 = fmul fast float %336, %321
  %352 = fmul fast float %336, %320
  %353 = call float @dx.op.binary.f32(i32 36, float %351, float %352)  ; FMin(a,b)
  %354 = call float @dx.op.binary.f32(i32 35, float %348, float %353)  ; FMax(a,b)
  %355 = call float @dx.op.binary.f32(i32 35, float %351, float %352)  ; FMax(a,b)
  %356 = call float @dx.op.binary.f32(i32 36, float %350, float %355)  ; FMin(a,b)
  %357 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %354)  ; FMax(a,b)
  %358 = fcmp fast ult float %356, %357
  br i1 %358, label %362, label %359, !dx.controlflow.hints !37

; <label>:359                                     ; preds = %329
  %360 = call float @dx.op.binary.f32(i32 36, float %354, float %356)  ; FMin(a,b)
  %361 = call float @dx.op.binary.f32(i32 35, float %354, float %356)  ; FMax(a,b)
  br label %362

; <label>:362                                     ; preds = %359, %329, %322
  %363 = phi float [ %327, %322 ], [ %360, %359 ], [ 0.000000e+00, %329 ]
  %364 = phi float [ %328, %322 ], [ %361, %359 ], [ 0.000000e+00, %329 ]
  %365 = fcmp fast ogt float %363, 0.000000e+00
  br i1 %365, label %461, label %366, !dx.controlflow.hints !47

; <label>:366                                     ; preds = %362
  %367 = fcmp fast ugt float %364, 0.000000e+00
  br i1 %367, label %368, label %461, !dx.controlflow.hints !48

; <label>:368                                     ; preds = %366
  %369 = icmp sgt i32 %291, 0
  br i1 %369, label %370, label %455

; <label>:370                                     ; preds = %368
  br label %371

; <label>:371                                     ; preds = %451, %370
  %372 = phi i32 [ %452, %451 ], [ %291, %370 ]
  %373 = sitofp i32 %372 to float
  %374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %375 = extractvalue %dx.types.CBufRet.f32 %374, 0
  %376 = extractvalue %dx.types.CBufRet.f32 %374, 1
  %377 = fsub fast float %287, %375
  %378 = fsub fast float %288, %376
  %379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %380 = extractvalue %dx.types.CBufRet.f32 %379, 0
  %381 = extractvalue %dx.types.CBufRet.f32 %379, 1
  %382 = fmul fast float %377, %380
  %383 = fmul fast float %378, %381
  %384 = fsub fast float 1.000000e+00, %383
  %385 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %386 = extractvalue %dx.types.CBufRet.i32 %385, 3
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %394, label %388, !dx.controlflow.hints !49

; <label>:388                                     ; preds = %371
  %389 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %18, float %382, float %384, float undef, float undef, i32 0, i32 0, i32 undef, float %373)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %390 = extractvalue %dx.types.ResRet.f32 %389, 0
  %391 = extractvalue %dx.types.ResRet.f32 %389, 1
  %392 = extractvalue %dx.types.ResRet.f32 %389, 2
  %393 = extractvalue %dx.types.ResRet.f32 %389, 3
  br label %400

; <label>:394                                     ; preds = %371
  %395 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %19, float %382, float %384, float undef, float undef, i32 0, i32 0, i32 undef, float %373)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %396 = extractvalue %dx.types.ResRet.f32 %395, 0
  %397 = extractvalue %dx.types.ResRet.f32 %395, 1
  %398 = extractvalue %dx.types.ResRet.f32 %395, 2
  %399 = extractvalue %dx.types.ResRet.f32 %395, 3
  br label %400

; <label>:400                                     ; preds = %394, %388
  %401 = phi float [ %390, %388 ], [ %396, %394 ]
  %402 = phi float [ %391, %388 ], [ %397, %394 ]
  %403 = phi float [ %392, %388 ], [ %398, %394 ]
  %404 = phi float [ %393, %388 ], [ %399, %394 ]
  %405 = extractvalue %dx.types.CBufRet.f32 %379, 3
  %406 = fmul fast float %405, %401
  %407 = extractvalue %dx.types.CBufRet.f32 %374, 2
  %408 = fadd fast float %406, %407
  %409 = fmul fast float %405, %402
  %410 = fadd fast float %409, %407
  %411 = fmul fast float %405, %403
  %412 = fadd fast float %411, %407
  %413 = and i32 %372, 31
  %414 = shl i32 1, %413
  %415 = uitofp i32 %414 to float
  %416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %417 = extractvalue %dx.types.CBufRet.f32 %416, 3
  %418 = fdiv fast float 1.000000e+00, %417
  %419 = fmul fast float %418, %415
  %420 = fmul fast float %419, %113
  %421 = fadd fast float %420, %289
  %422 = fcmp fast oeq float %404, 0.000000e+00
  %423 = fcmp fast ogt float %289, %410
  %424 = fcmp fast ogt float %421, %410
  %425 = and i1 %423, %424
  %426 = or i1 %422, %425
  br i1 %426, label %427, label %431, !dx.controlflow.hints !50

; <label>:427                                     ; preds = %400
  %428 = add nsw i32 %372, 1
  %429 = add nsw i32 %305, -1
  %430 = call i32 @dx.op.binary.i32(i32 38, i32 %428, i32 %429)  ; IMin(a,b)
  br label %461

; <label>:431                                     ; preds = %400
  %432 = fcmp fast olt float %289, %412
  %433 = fcmp fast olt float %421, %412
  %434 = and i1 %432, %433
  br i1 %434, label %435, label %439, !dx.controlflow.hints !51

; <label>:435                                     ; preds = %431
  %436 = add nsw i32 %372, 1
  %437 = add nsw i32 %305, -1
  %438 = call i32 @dx.op.binary.i32(i32 38, i32 %436, i32 %437)  ; IMin(a,b)
  br label %461

; <label>:439                                     ; preds = %431
  %440 = fcmp fast olt float %289, %408
  %441 = fcmp fast olt float %421, %408
  %442 = and i1 %440, %441
  br i1 %442, label %443, label %451, !dx.controlflow.hints !52

; <label>:443                                     ; preds = %439
  %444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %445 = extractvalue %dx.types.CBufRet.f32 %444, 3
  %446 = extractvalue %dx.types.CBufRet.f32 %379, 2
  %447 = fcmp fast une float %445, %446
  br i1 %447, label %448, label %455, !dx.controlflow.hints !53

; <label>:448                                     ; preds = %443
  %449 = fsub fast float %289, %412
  %450 = call float @dx.op.binary.f32(i32 36, float %419, float %449)  ; FMin(a,b)
  br label %455

; <label>:451                                     ; preds = %439
  %452 = add nsw i32 %372, -1
  %453 = icmp sgt i32 %372, 1
  br i1 %453, label %371, label %454

; <label>:454                                     ; preds = %451
  br label %455

; <label>:455                                     ; preds = %454, %448, %443, %368
  %456 = phi float [ %450, %448 ], [ %419, %443 ], [ 0.000000e+00, %368 ], [ 0.000000e+00, %454 ]
  %457 = phi i32 [ %372, %448 ], [ %372, %443 ], [ %291, %368 ], [ %452, %454 ]
  %458 = add nsw i32 %457, 1
  %459 = add nsw i32 %305, -1
  %460 = call i32 @dx.op.binary.i32(i32 38, i32 %458, i32 %459)  ; IMin(a,b)
  br label %461

; <label>:461                                     ; preds = %455, %435, %427, %366, %362, %309
  %462 = phi float [ %310, %309 ], [ %419, %427 ], [ %419, %435 ], [ %456, %455 ], [ 0x47EFFFFFE0000000, %366 ], [ %363, %362 ]
  %463 = phi i32 [ %200, %309 ], [ %200, %427 ], [ %200, %435 ], [ %200, %455 ], [ 0, %366 ], [ %200, %362 ]
  %464 = phi i32 [ %291, %309 ], [ %430, %427 ], [ %438, %435 ], [ %460, %455 ], [ %291, %366 ], [ %291, %362 ]
  %465 = icmp ne i32 %463, 0
  %466 = zext i1 %465 to i32
  %467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %468 = extractvalue %dx.types.CBufRet.f32 %467, 2
  %469 = call float @dx.op.binary.f32(i32 35, float %462, float %468)  ; FMax(a,b)
  %470 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %469)  ; FMin(a,b)
  br label %471

; <label>:471                                     ; preds = %461, %277
  %472 = phi i32 [ %466, %461 ], [ 0, %277 ]
  %473 = phi float [ %470, %461 ], [ 0x47EFFFFFE0000000, %277 ]
  %474 = phi i32 [ %464, %461 ], [ %291, %277 ]
  %475 = icmp eq i32 %227, 0
  br i1 %475, label %488, label %476, !dx.controlflow.hints !54

; <label>:476                                     ; preds = %471
  %477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %478 = extractvalue %dx.types.CBufRet.f32 %477, 3
  %479 = extractvalue %dx.types.CBufRet.f32 %477, 2
  %480 = fmul fast float %478, %290
  %481 = fdiv fast float %480, %255
  %482 = fadd fast float %481, 1.000000e+00
  %483 = call float @dx.op.unary.f32(i32 23, float %482)  ; Log(value)
  %484 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %483)  ; FMin(a,b)
  %485 = fmul fast float %479, %255
  %486 = fmul fast float %485, %484
  %487 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %486)  ; FMin(a,b)
  br label %488

; <label>:488                                     ; preds = %476, %471
  %489 = phi float [ %487, %476 ], [ 0x47EFFFFFE0000000, %471 ]
  %490 = icmp eq i32 %252, 0
  br i1 %490, label %663, label %491, !dx.controlflow.hints !55

; <label>:491                                     ; preds = %488
  %492 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %493 = extractvalue %dx.types.CBufRet.i32 %492, 1
  %494 = and i32 %493, 1
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %496, label %653, !dx.controlflow.hints !56

; <label>:496                                     ; preds = %491
  %497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %498 = extractvalue %dx.types.CBufRet.f32 %497, 2
  %499 = extractvalue %dx.types.CBufRet.f32 %497, 3
  %500 = fmul fast float %498, %287
  %501 = fmul fast float %499, %288
  %502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %503 = extractvalue %dx.types.CBufRet.f32 %502, 0
  %504 = extractvalue %dx.types.CBufRet.f32 %502, 1
  %505 = fadd fast float %500, %503
  %506 = fadd fast float %501, %504
  %507 = call float @dx.op.unary.f32(i32 7, float %505)  ; Saturate(value)
  %508 = call float @dx.op.unary.f32(i32 7, float %506)  ; Saturate(value)
  %509 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %507, float %508, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %510 = extractvalue %dx.types.ResRet.f32 %509, 0
  %511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %512 = extractvalue %dx.types.CBufRet.f32 %511, 0
  %513 = fmul fast float %512, %510
  %514 = fsub fast float %505, %507
  %515 = fsub fast float %506, %508
  %516 = extractvalue %dx.types.CBufRet.f32 %497, 0
  %517 = extractvalue %dx.types.CBufRet.f32 %497, 1
  %518 = fmul fast float %516, %514
  %519 = fmul fast float %517, %515
  %520 = fmul fast float %518, %518
  %521 = fmul fast float %519, %519
  %522 = fadd fast float %520, %521
  %523 = call float @dx.op.unary.f32(i32 24, float %522)  ; Sqrt(value)
  %524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %525 = extractvalue %dx.types.CBufRet.f32 %524, 3
  %526 = fmul fast float %525, %523
  %527 = call float @dx.op.unary.f32(i32 7, float %526)  ; Saturate(value)
  %528 = extractvalue %dx.types.CBufRet.f32 %524, 2
  %529 = fsub fast float %528, %513
  %530 = fmul fast float %529, %527
  %531 = extractvalue %dx.types.CBufRet.f32 %511, 1
  %532 = fsub fast float %289, %513
  %533 = fsub fast float %532, %531
  %534 = fsub fast float %533, %530
  %535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %536 = extractvalue %dx.types.CBufRet.f32 %535, 2
  %537 = fsub fast float %534, %536
  %538 = fcmp fast olt float %537, 0.000000e+00
  %539 = call float @dx.op.unary.f32(i32 6, float %537)  ; FAbs(value)
  %540 = extractvalue %dx.types.CBufRet.i32 %492, 0
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %595, label %542

; <label>:542                                     ; preds = %496
  br label %543

; <label>:543                                     ; preds = %582, %542
  %544 = phi i32 [ %588, %582 ], [ 1, %542 ]
  %545 = phi float [ %590, %582 ], [ 0x47EFFFFFE0000000, %542 ]
  %546 = phi i32 [ %591, %582 ], [ 0, %542 ]
  %547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %548 = extractvalue %dx.types.CBufRet.f32 %547, 1
  %549 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %550 = extractvalue %dx.types.CBufRet.i32 %549, 1
  %551 = and i32 %550, 8
  %552 = icmp eq i32 %551, 0
  %553 = fcmp fast ogt float %548, %534
  %554 = or i1 %553, %552
  %555 = add i32 %546, 171
  %556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 %555)  ; CBufferLoadLegacy(handle,regIndex)
  %557 = extractvalue %dx.types.CBufRet.f32 %556, 0
  %558 = extractvalue %dx.types.CBufRet.f32 %556, 1
  %559 = extractvalue %dx.types.CBufRet.f32 %556, 2
  br i1 %554, label %560, label %566, !dx.controlflow.hints !57

; <label>:560                                     ; preds = %543
  %561 = fsub fast float %557, %287
  %562 = fsub fast float %558, %288
  %563 = fmul fast float %561, %561
  %564 = fmul fast float %562, %562
  %565 = fadd fast float %563, %564
  br label %582

; <label>:566                                     ; preds = %543
  %567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %568 = extractvalue %dx.types.CBufRet.f32 %567, 2
  %569 = extractvalue %dx.types.CBufRet.f32 %547, 2
  %570 = fmul fast float %569, %568
  %571 = fsub fast float %570, %548
  %572 = fdiv fast float %559, %571
  %573 = fsub fast float %287, %557
  %574 = fsub fast float %288, %558
  %575 = fsub fast float %534, %548
  %576 = fmul fast float %572, %575
  %577 = fmul fast float %573, %573
  %578 = fmul fast float %574, %574
  %579 = fadd fast float %577, %578
  %580 = fmul fast float %576, %576
  %581 = fadd fast float %579, %580
  br label %582

; <label>:582                                     ; preds = %566, %560
  %583 = phi float [ %565, %560 ], [ %581, %566 ]
  %584 = call float @dx.op.unary.f32(i32 24, float %583)  ; Sqrt(value)
  %585 = fsub float %559, %584
  %586 = fcmp fast olt float %585, 0.000000e+00
  %587 = zext i1 %586 to i32
  %588 = and i32 %587, %544
  %589 = call float @dx.op.unary.f32(i32 6, float %585)  ; FAbs(value)
  %590 = call float @dx.op.binary.f32(i32 36, float %545, float %589)  ; FMin(a,b)
  %591 = add i32 %546, 1
  %592 = extractvalue %dx.types.CBufRet.i32 %549, 0
  %593 = icmp ult i32 %591, %592
  br i1 %593, label %543, label %594

; <label>:594                                     ; preds = %582
  br label %595

; <label>:595                                     ; preds = %594, %496
  %596 = phi i32 [ 1, %496 ], [ %588, %594 ]
  %597 = phi float [ 0x47EFFFFFE0000000, %496 ], [ %590, %594 ]
  br label %598

; <label>:598                                     ; preds = %598, %595
  %599 = phi i32 [ %596, %595 ], [ %638, %598 ]
  %600 = phi float [ 0x47EFFFFFE0000000, %595 ], [ %640, %598 ]
  %601 = phi i32 [ 0, %595 ], [ %641, %598 ]
  %602 = add nuw nsw i32 %601, 191
  %603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 %602)  ; CBufferLoadLegacy(handle,regIndex)
  %604 = extractvalue %dx.types.CBufRet.f32 %603, 0
  %605 = extractvalue %dx.types.CBufRet.f32 %603, 1
  %606 = extractvalue %dx.types.CBufRet.f32 %603, 2
  %607 = add nuw nsw i32 %601, 195
  %608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 %607)  ; CBufferLoadLegacy(handle,regIndex)
  %609 = extractvalue %dx.types.CBufRet.f32 %608, 0
  %610 = extractvalue %dx.types.CBufRet.f32 %608, 1
  %611 = extractvalue %dx.types.CBufRet.f32 %608, 2
  %612 = fsub fast float %287, %604
  %613 = fsub fast float %288, %605
  %614 = fsub fast float %534, %606
  %615 = call float @dx.op.unary.f32(i32 6, float %612)  ; FAbs(value)
  %616 = call float @dx.op.unary.f32(i32 6, float %613)  ; FAbs(value)
  %617 = call float @dx.op.unary.f32(i32 6, float %614)  ; FAbs(value)
  %618 = fsub fast float %615, %609
  %619 = fsub fast float %616, %610
  %620 = fsub fast float %617, %611
  %621 = call float @dx.op.binary.f32(i32 35, float %618, float 0.000000e+00)  ; FMax(a,b)
  %622 = call float @dx.op.binary.f32(i32 35, float %619, float 0.000000e+00)  ; FMax(a,b)
  %623 = call float @dx.op.binary.f32(i32 35, float %620, float 0.000000e+00)  ; FMax(a,b)
  %624 = fmul fast float %621, %621
  %625 = fmul fast float %622, %622
  %626 = fadd fast float %625, %624
  %627 = fmul fast float %623, %623
  %628 = fadd fast float %626, %627
  %629 = call float @dx.op.unary.f32(i32 24, float %628)  ; Sqrt(value)
  %630 = call float @dx.op.binary.f32(i32 35, float %619, float %620)  ; FMax(a,b)
  %631 = call float @dx.op.binary.f32(i32 35, float %618, float %630)  ; FMax(a,b)
  %632 = call float @dx.op.binary.f32(i32 36, float %631, float 0.000000e+00)  ; FMin(a,b)
  %633 = fadd fast float %632, %629
  %634 = fsub fast float -0.000000e+00, %633
  %635 = fcmp ogt float %633, -0.000000e+00
  %636 = icmp ne i32 %599, 0
  %637 = and i1 %636, %635
  %638 = zext i1 %637 to i32
  %639 = call float @dx.op.unary.f32(i32 6, float %634)  ; FAbs(value)
  %640 = call float @dx.op.binary.f32(i32 36, float %600, float %639)  ; FMin(a,b)
  %641 = add nuw nsw i32 %601, 1
  %642 = icmp eq i32 %641, 4
  br i1 %642, label %643, label %598

; <label>:643                                     ; preds = %598
  %644 = call float @dx.op.binary.f32(i32 36, float %539, float %640)  ; FMin(a,b)
  %645 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %646 = extractvalue %dx.types.CBufRet.i32 %645, 1
  %647 = and i32 %646, 2
  %648 = icmp ne i32 %647, 0
  %649 = xor i1 %637, %648
  %650 = call float @dx.op.binary.f32(i32 36, float %644, float %597)  ; FMin(a,b)
  %651 = and i1 %649, %538
  %652 = zext i1 %651 to i32
  br label %653

; <label>:653                                     ; preds = %643, %491
  %654 = phi i32 [ %280, %491 ], [ %652, %643 ]
  %655 = phi float [ 0.000000e+00, %491 ], [ %650, %643 ]
  %656 = phi float [ %289, %491 ], [ %534, %643 ]
  %657 = icmp ne i32 %654, 0
  %658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %659 = extractvalue %dx.types.CBufRet.f32 %658, 3
  %660 = call float @dx.op.binary.f32(i32 35, float %655, float %659)  ; FMax(a,b)
  %661 = call float @dx.op.binary.f32(i32 36, float %489, float %660)  ; FMin(a,b)
  %662 = zext i1 %657 to i32
  br label %663

; <label>:663                                     ; preds = %653, %488
  %664 = phi i32 [ %662, %653 ], [ 0, %488 ]
  %665 = phi i32 [ %654, %653 ], [ %280, %488 ]
  %666 = phi float [ %656, %653 ], [ %281, %488 ]
  %667 = phi float [ %661, %653 ], [ %489, %488 ]
  %668 = extractvalue %dx.types.CBufRet.f32 %300, 2
  %669 = fmul fast float %668, %290
  %670 = call float @dx.op.unary.f32(i32 23, float %669)  ; Log(value)
  %671 = fmul fast float %670, 0x3FE62E4300000000
  %672 = call float @dx.op.binary.f32(i32 35, float %671, float 1.000000e+00)  ; FMax(a,b)
  %673 = fmul fast float %672, %667
  %674 = call float @dx.op.binary.f32(i32 36, float %673, float %473)  ; FMin(a,b)
  %675 = call float @dx.op.binary.f32(i32 35, float %674, float %301)  ; FMax(a,b)
  %676 = fsub fast float %255, %290
  %677 = fadd fast float %676, 0x3F1A36E2E0000000
  %678 = call float @dx.op.binary.f32(i32 36, float %677, float %675)  ; FMin(a,b)
  %679 = icmp eq i32 %472, 0
  br i1 %679, label %785, label %680, !dx.controlflow.hints !58

; <label>:680                                     ; preds = %663
  %681 = fcmp fast olt float %677, %675
  %682 = fmul fast float %113, %56
  %683 = fmul fast float %682, %678
  %684 = fadd fast float %683, %289
  %685 = fmul fast float %113, %57
  %686 = fmul fast float %685, %678
  %687 = fadd fast float %686, %289
  %688 = fmul fast float %113, %58
  %689 = fmul fast float %688, %678
  %690 = fadd fast float %689, %289
  br i1 %681, label %691, label %696, !dx.controlflow.hints !59

; <label>:691                                     ; preds = %680
  %692 = fmul fast float %678, %111
  %693 = fmul fast float %678, %112
  %694 = fadd fast float %692, %287
  %695 = fadd fast float %693, %288
  br label %696

; <label>:696                                     ; preds = %691, %680
  %697 = phi float [ %694, %691 ], [ %287, %680 ]
  %698 = phi float [ %695, %691 ], [ %288, %680 ]
  %699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %700 = extractvalue %dx.types.CBufRet.f32 %699, 0
  %701 = extractvalue %dx.types.CBufRet.f32 %699, 1
  %702 = fsub fast float %697, %700
  %703 = fsub fast float %698, %701
  %704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %705 = extractvalue %dx.types.CBufRet.f32 %704, 0
  %706 = extractvalue %dx.types.CBufRet.f32 %704, 1
  %707 = fmul fast float %702, %705
  %708 = fmul fast float %703, %706
  %709 = fsub fast float 1.000000e+00, %708
  %710 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %711 = extractvalue %dx.types.CBufRet.i32 %710, 3
  %712 = icmp eq i32 %711, 0
  br i1 %712, label %719, label %713, !dx.controlflow.hints !49

; <label>:713                                     ; preds = %696
  %714 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %18, float %707, float %709, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %715 = extractvalue %dx.types.ResRet.f32 %714, 0
  %716 = extractvalue %dx.types.ResRet.f32 %714, 1
  %717 = extractvalue %dx.types.ResRet.f32 %714, 2
  %718 = extractvalue %dx.types.ResRet.f32 %714, 3
  br label %725

; <label>:719                                     ; preds = %696
  %720 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %19, float %707, float %709, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %721 = extractvalue %dx.types.ResRet.f32 %720, 0
  %722 = extractvalue %dx.types.ResRet.f32 %720, 1
  %723 = extractvalue %dx.types.ResRet.f32 %720, 2
  %724 = extractvalue %dx.types.ResRet.f32 %720, 3
  br label %725

; <label>:725                                     ; preds = %719, %713
  %726 = phi float [ %715, %713 ], [ %721, %719 ]
  %727 = phi float [ %716, %713 ], [ %722, %719 ]
  %728 = phi float [ %717, %713 ], [ %723, %719 ]
  %729 = phi float [ %718, %713 ], [ %724, %719 ]
  %730 = extractvalue %dx.types.CBufRet.f32 %704, 3
  %731 = fmul fast float %730, %727
  %732 = fmul fast float %731, %726
  %733 = fsub fast float %731, %732
  %734 = fcmp fast ole float %733, 0.000000e+00
  %735 = extractvalue %dx.types.CBufRet.f32 %699, 2
  %736 = fadd fast float %732, %735
  %737 = fmul fast float %730, %728
  %738 = fadd fast float %737, %735
  %739 = fdiv fast float 1.000000e+00, %733
  %740 = select i1 %734, float 1.000000e+06, float %739
  %741 = fsub fast float %684, %736
  %742 = fmul fast float %740, %741
  %743 = call float @dx.op.unary.f32(i32 7, float %742)  ; Saturate(value)
  %744 = extractvalue %dx.types.CBufRet.f32 %704, 2
  %745 = fmul fast float %744, %743
  %746 = fsub fast float %744, %745
  %747 = fcmp fast olt float %684, %738
  %748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %749 = extractvalue %dx.types.CBufRet.f32 %748, 3
  %750 = select i1 %747, float %749, float 1.000000e+00
  %751 = fmul fast float %746, %750
  %752 = fsub fast float %687, %736
  %753 = fmul fast float %740, %752
  %754 = call float @dx.op.unary.f32(i32 7, float %753)  ; Saturate(value)
  %755 = fmul fast float %744, %754
  %756 = fsub fast float %744, %755
  %757 = fcmp fast olt float %687, %738
  %758 = select i1 %757, float %749, float 1.000000e+00
  %759 = fmul fast float %756, %758
  %760 = fadd fast float %759, %751
  %761 = fsub fast float %690, %736
  %762 = fmul fast float %740, %761
  %763 = call float @dx.op.unary.f32(i32 7, float %762)  ; Saturate(value)
  %764 = fmul fast float %744, %763
  %765 = fsub fast float %744, %764
  %766 = fcmp fast olt float %690, %738
  %767 = select i1 %766, float %749, float 1.000000e+00
  %768 = fmul fast float %765, %767
  %769 = fadd fast float %760, %768
  %770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %771 = extractvalue %dx.types.CBufRet.f32 %770, 2
  %772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %773 = extractvalue %dx.types.CBufRet.f32 %772, 0
  %774 = extractvalue %dx.types.CBufRet.f32 %772, 1
  %775 = extractvalue %dx.types.CBufRet.f32 %772, 2
  %776 = fmul fast float %678, 0x3FD5555560000000
  %777 = fmul fast float %776, %729
  %778 = fmul fast float %777, %771
  %779 = fmul fast float %778, %769
  %780 = extractvalue %dx.types.CBufRet.f32 %748, 0
  %781 = fmul fast float %779, %773
  %782 = fmul fast float %779, %774
  %783 = fmul fast float %779, %775
  %784 = fmul fast float %779, %780
  br label %785

; <label>:785                                     ; preds = %725, %663
  %786 = phi float [ %779, %725 ], [ 0.000000e+00, %663 ]
  %787 = phi float [ %784, %725 ], [ 0.000000e+00, %663 ]
  %788 = phi float [ %781, %725 ], [ 0.000000e+00, %663 ]
  %789 = phi float [ %782, %725 ], [ 0.000000e+00, %663 ]
  %790 = phi float [ %783, %725 ], [ 0.000000e+00, %663 ]
  br i1 %475, label %850, label %791, !dx.controlflow.hints !60

; <label>:791                                     ; preds = %785
  %792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %793 = extractvalue %dx.types.CBufRet.f32 %792, 0
  %794 = fsub fast float %793, %289
  %795 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %299, float %298, float %794)  ; Dot3(ax,ay,az,bx,by,bz)
  %796 = fmul fast float %210, %795
  %797 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %796)  ; FMax(a,b)
  %798 = fcmp fast olt float %113, 0.000000e+00
  %799 = call float @dx.op.binary.f32(i32 36, float %678, float %797)  ; FMin(a,b)
  br i1 %798, label %801, label %800, !dx.controlflow.hints !61

; <label>:800                                     ; preds = %791
  br label %801

; <label>:801                                     ; preds = %800, %791
  %802 = phi float [ 0.000000e+00, %800 ], [ %799, %791 ]
  %803 = phi float [ %799, %800 ], [ %678, %791 ]
  %804 = phi float [ %799, %800 ], [ 0.000000e+00, %791 ]
  %805 = phi float [ %678, %800 ], [ %799, %791 ]
  %806 = fsub fast float %803, %802
  %807 = extractvalue %dx.types.CBufRet.f32 %792, 1
  %808 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %807)  ; FMin(a,b)
  %809 = fsub fast float %289, %793
  %810 = fmul fast float %808, 0x3FF7154760000000
  %811 = fmul fast float %810, %809
  %812 = call float @dx.op.unary.f32(i32 21, float %811)  ; Exp(value)
  %813 = fmul fast float %113, 0x3FF7154760000000
  %814 = fmul fast float %813, %805
  %815 = fmul fast float %814, %808
  %816 = call float @dx.op.unary.f32(i32 21, float %815)  ; Exp(value)
  %817 = fmul fast float %813, %804
  %818 = fmul fast float %817, %808
  %819 = call float @dx.op.unary.f32(i32 21, float %818)  ; Exp(value)
  %820 = fsub fast float %816, %819
  %821 = fmul fast float %820, %812
  %822 = fmul fast float %808, %113
  %823 = fdiv fast float %821, %822
  %824 = fadd fast float %806, %823
  %825 = call float @dx.op.unary.f32(i32 6, float %113)  ; FAbs(value)
  %826 = fcmp fast olt float %825, 0x3F0FFB4800000000
  %827 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %809)  ; FMax(a,b)
  %828 = fmul fast float %827, 0x3FF7154760000000
  %829 = fmul fast float %828, %807
  %830 = call float @dx.op.unary.f32(i32 21, float %829)  ; Exp(value)
  %831 = fmul fast float %830, %678
  %832 = select i1 %826, float %831, float %824
  %833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %834 = extractvalue %dx.types.CBufRet.f32 %833, 1
  %835 = fmul fast float %832, %834
  %836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %837 = extractvalue %dx.types.CBufRet.f32 %836, 0
  %838 = extractvalue %dx.types.CBufRet.f32 %836, 1
  %839 = extractvalue %dx.types.CBufRet.f32 %836, 2
  %840 = extractvalue %dx.types.CBufRet.f32 %833, 2
  %841 = fmul fast float %837, %835
  %842 = fmul fast float %838, %835
  %843 = fmul fast float %839, %835
  %844 = fadd fast float %841, %788
  %845 = fadd fast float %842, %789
  %846 = fadd fast float %843, %790
  %847 = fmul fast float %840, %835
  %848 = fadd fast float %847, %787
  %849 = fadd fast float %835, %786
  br label %850

; <label>:850                                     ; preds = %801, %785
  %851 = phi float [ %849, %801 ], [ %786, %785 ]
  %852 = phi float [ %848, %801 ], [ %787, %785 ]
  %853 = phi float [ %844, %801 ], [ %788, %785 ]
  %854 = phi float [ %845, %801 ], [ %789, %785 ]
  %855 = phi float [ %846, %801 ], [ %790, %785 ]
  %856 = icmp eq i32 %664, 0
  br i1 %856, label %900, label %857, !dx.controlflow.hints !62

; <label>:857                                     ; preds = %850
  %858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %859 = extractvalue %dx.types.CBufRet.f32 %858, 1
  %860 = fsub fast float %678, %859
  %861 = extractvalue %dx.types.CBufRet.f32 %858, 3
  %862 = fmul fast float %860, %861
  %863 = call float @dx.op.unary.f32(i32 7, float %862)  ; Saturate(value)
  %864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %865 = extractvalue %dx.types.CBufRet.f32 %864, 3
  %866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %867 = extractvalue %dx.types.CBufRet.f32 %866, 2
  %868 = fsub fast float %867, %666
  %869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %870 = extractvalue %dx.types.CBufRet.f32 %869, 3
  %871 = fmul fast float %868, %870
  %872 = call float @dx.op.unary.f32(i32 7, float %871)  ; Saturate(value)
  %873 = fmul fast float %872, %865
  %874 = extractvalue %dx.types.CBufRet.f32 %869, 0
  %875 = fsub fast float %290, %874
  %876 = extractvalue %dx.types.CBufRet.f32 %869, 1
  %877 = fmul fast float %875, %876
  %878 = call float @dx.op.unary.f32(i32 7, float %877)  ; Saturate(value)
  %879 = fsub fast float 1.000000e+00, %863
  %880 = fmul fast float %878, %879
  %881 = fadd fast float %880, %863
  %882 = extractvalue %dx.types.CBufRet.f32 %858, 0
  %883 = fsub fast float %873, %882
  %884 = fmul fast float %883, %881
  %885 = fadd fast float %884, %882
  %886 = extractvalue %dx.types.CBufRet.f32 %864, 0
  %887 = extractvalue %dx.types.CBufRet.f32 %864, 1
  %888 = extractvalue %dx.types.CBufRet.f32 %864, 2
  %889 = fmul fast float %885, %678
  %890 = extractvalue %dx.types.CBufRet.f32 %869, 2
  %891 = fmul fast float %889, %886
  %892 = fmul fast float %889, %887
  %893 = fmul fast float %889, %888
  %894 = fadd fast float %891, %853
  %895 = fadd fast float %892, %854
  %896 = fadd fast float %893, %855
  %897 = fmul fast float %889, %890
  %898 = fadd fast float %897, %852
  %899 = fadd fast float %889, %851
  br label %900

; <label>:900                                     ; preds = %857, %850
  %901 = phi float [ %899, %857 ], [ %851, %850 ]
  %902 = phi float [ %898, %857 ], [ %852, %850 ]
  %903 = phi float [ %894, %857 ], [ %853, %850 ]
  %904 = phi float [ %895, %857 ], [ %854, %850 ]
  %905 = phi float [ %896, %857 ], [ %855, %850 ]
  %906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %907 = extractvalue %dx.types.CBufRet.f32 %906, 1
  %908 = fcmp fast ogt float %901, %907
  br i1 %908, label %909, label %915, !dx.controlflow.hints !63

; <label>:909                                     ; preds = %900
  %910 = fdiv fast float 1.000000e+00, %901
  %911 = fmul fast float %910, %903
  %912 = fmul fast float %910, %904
  %913 = fmul fast float %910, %905
  %914 = fmul fast float %910, %902
  br label %915

; <label>:915                                     ; preds = %909, %900
  %916 = phi float [ %914, %909 ], [ %902, %900 ]
  %917 = phi float [ %911, %909 ], [ %903, %900 ]
  %918 = phi float [ %912, %909 ], [ %904, %900 ]
  %919 = phi float [ %913, %909 ], [ %905, %900 ]
  br i1 %908, label %922, label %920, !dx.controlflow.hints !64

; <label>:920                                     ; preds = %915
  %921 = fadd fast float %678, %290
  br label %2398

; <label>:922                                     ; preds = %915
  %923 = fmul fast float %901, 0xBFF7154760000000
  %924 = call float @dx.op.unary.f32(i32 21, float %923)  ; Exp(value)
  %925 = call float @dx.op.unary.f32(i32 7, float %924)  ; Saturate(value)
  %926 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %927 = extractvalue %dx.types.CBufRet.i32 %926, 0
  %928 = icmp eq i32 %927, 1
  br i1 %928, label %929, label %964, !dx.controlflow.hints !65

; <label>:929                                     ; preds = %922
  %930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %931 = extractvalue %dx.types.CBufRet.f32 %930, 0
  %932 = extractvalue %dx.types.CBufRet.f32 %930, 1
  %933 = fsub fast float %287, %931
  %934 = fsub fast float %288, %932
  %935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %936 = extractvalue %dx.types.CBufRet.f32 %935, 0
  %937 = extractvalue %dx.types.CBufRet.f32 %935, 1
  %938 = fmul fast float %933, %936
  %939 = fmul fast float %934, %937
  %940 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %19, float %938, float %939, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %941 = extractvalue %dx.types.ResRet.f32 %940, 0
  %942 = fcmp fast ogt float %941, 0.000000e+00
  %943 = extractvalue %dx.types.CBufRet.i32 %926, 3
  %944 = icmp ne i32 %943, 0
  %945 = and i1 %942, %944
  br i1 %945, label %946, label %964, !dx.controlflow.hints !66

; <label>:946                                     ; preds = %929
  %947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %948 = extractvalue %dx.types.CBufRet.f32 %947, 0
  %949 = extractvalue %dx.types.CBufRet.f32 %947, 1
  %950 = fsub fast float %287, %948
  %951 = fsub fast float %288, %949
  %952 = fmul fast float %950, %950
  %953 = fmul fast float %951, %951
  %954 = fadd fast float %952, %953
  %955 = uitofp i32 %943 to float
  %956 = fmul fast float %955, %955
  %957 = fcmp fast ogt float %954, %956
  br i1 %957, label %964, label %958, !dx.controlflow.hints !67

; <label>:958                                     ; preds = %946
  %959 = call float @dx.op.unary.f32(i32 24, float %954)  ; Sqrt(value)
  %960 = fsub fast float %955, %959
  %961 = fmul fast float %960, 0x3F75555560000000
  %962 = call float @dx.op.unary.f32(i32 7, float %961)  ; Saturate(value)
  %963 = call float @dx.op.binary.f32(i32 36, float %962, float %941)  ; FMin(a,b)
  br label %964

; <label>:964                                     ; preds = %958, %946, %929, %922
  %965 = phi float [ 1.000000e+00, %922 ], [ %963, %958 ], [ %941, %929 ], [ 0.000000e+00, %946 ]
  %966 = fcmp fast ogt float %965, 0.000000e+00
  br i1 %966, label %967, label %1040, !dx.controlflow.hints !68

; <label>:967                                     ; preds = %964
  %968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %969 = extractvalue %dx.types.ResRet.i32 %968, 0
  %970 = extractvalue %dx.types.ResRet.i32 %968, 1
  %971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %972 = extractvalue %dx.types.ResRet.i32 %971, 0
  %973 = extractvalue %dx.types.ResRet.i32 %971, 1
  %974 = extractvalue %dx.types.ResRet.i32 %971, 2
  %975 = extractvalue %dx.types.ResRet.i32 %971, 3
  %976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %977 = extractvalue %dx.types.ResRet.i32 %976, 0
  %978 = extractvalue %dx.types.ResRet.i32 %976, 1
  %979 = extractvalue %dx.types.ResRet.i32 %976, 2
  %980 = extractvalue %dx.types.ResRet.i32 %976, 3
  %981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %982 = extractvalue %dx.types.ResRet.i32 %981, 0
  %983 = extractvalue %dx.types.ResRet.i32 %981, 1
  %984 = extractvalue %dx.types.ResRet.i32 %981, 2
  %985 = extractvalue %dx.types.ResRet.i32 %981, 3
  %986 = and i32 %982, 65535
  %987 = call float @dx.op.legacyF16ToF32(i32 131, i32 %986)  ; LegacyF16ToF32(value)
  %988 = lshr i32 %982, 16
  %989 = call float @dx.op.legacyF16ToF32(i32 131, i32 %988)  ; LegacyF16ToF32(value)
  %990 = and i32 %983, 65535
  %991 = call float @dx.op.legacyF16ToF32(i32 131, i32 %990)  ; LegacyF16ToF32(value)
  %992 = lshr i32 %983, 16
  %993 = call float @dx.op.legacyF16ToF32(i32 131, i32 %992)  ; LegacyF16ToF32(value)
  %994 = and i32 %984, 65535
  %995 = call float @dx.op.legacyF16ToF32(i32 131, i32 %994)  ; LegacyF16ToF32(value)
  %996 = lshr i32 %984, 16
  %997 = call float @dx.op.legacyF16ToF32(i32 131, i32 %996)  ; LegacyF16ToF32(value)
  %998 = and i32 %985, 65535
  %999 = call float @dx.op.legacyF16ToF32(i32 131, i32 %998)  ; LegacyF16ToF32(value)
  %1000 = lshr i32 %985, 16
  %1001 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1000)  ; LegacyF16ToF32(value)
  %1002 = and i32 %977, 65535
  %1003 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1002)  ; LegacyF16ToF32(value)
  %1004 = lshr i32 %977, 16
  %1005 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1004)  ; LegacyF16ToF32(value)
  %1006 = and i32 %978, 65535
  %1007 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1006)  ; LegacyF16ToF32(value)
  %1008 = lshr i32 %978, 16
  %1009 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1008)  ; LegacyF16ToF32(value)
  %1010 = and i32 %979, 65535
  %1011 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1010)  ; LegacyF16ToF32(value)
  %1012 = lshr i32 %979, 16
  %1013 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1012)  ; LegacyF16ToF32(value)
  %1014 = and i32 %980, 65535
  %1015 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1014)  ; LegacyF16ToF32(value)
  %1016 = lshr i32 %980, 16
  %1017 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1016)  ; LegacyF16ToF32(value)
  %1018 = and i32 %972, 65535
  %1019 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1018)  ; LegacyF16ToF32(value)
  %1020 = lshr i32 %972, 16
  %1021 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1020)  ; LegacyF16ToF32(value)
  %1022 = and i32 %973, 65535
  %1023 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1022)  ; LegacyF16ToF32(value)
  %1024 = lshr i32 %973, 16
  %1025 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1024)  ; LegacyF16ToF32(value)
  %1026 = and i32 %974, 65535
  %1027 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1026)  ; LegacyF16ToF32(value)
  %1028 = lshr i32 %974, 16
  %1029 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1028)  ; LegacyF16ToF32(value)
  %1030 = and i32 %975, 65535
  %1031 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1030)  ; LegacyF16ToF32(value)
  %1032 = lshr i32 %975, 16
  %1033 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1032)  ; LegacyF16ToF32(value)
  %1034 = and i32 %969, 65535
  %1035 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1034)  ; LegacyF16ToF32(value)
  %1036 = lshr i32 %969, 16
  %1037 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1036)  ; LegacyF16ToF32(value)
  %1038 = and i32 %970, 65535
  %1039 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1038)  ; LegacyF16ToF32(value)
  br label %1040

; <label>:1040                                    ; preds = %967, %964
  %1041 = phi float [ %1039, %967 ], [ 0.000000e+00, %964 ]
  %1042 = phi float [ %1037, %967 ], [ 0.000000e+00, %964 ]
  %1043 = phi float [ %1035, %967 ], [ 0.000000e+00, %964 ]
  %1044 = phi float [ %1033, %967 ], [ 0.000000e+00, %964 ]
  %1045 = phi float [ %1031, %967 ], [ 0.000000e+00, %964 ]
  %1046 = phi float [ %1029, %967 ], [ 0.000000e+00, %964 ]
  %1047 = phi float [ %1027, %967 ], [ 0.000000e+00, %964 ]
  %1048 = phi float [ %1025, %967 ], [ 0.000000e+00, %964 ]
  %1049 = phi float [ %1023, %967 ], [ 0.000000e+00, %964 ]
  %1050 = phi float [ %1021, %967 ], [ 0.000000e+00, %964 ]
  %1051 = phi float [ %1019, %967 ], [ 0.000000e+00, %964 ]
  %1052 = phi float [ %1017, %967 ], [ 0.000000e+00, %964 ]
  %1053 = phi float [ %1015, %967 ], [ 0.000000e+00, %964 ]
  %1054 = phi float [ %1013, %967 ], [ 0.000000e+00, %964 ]
  %1055 = phi float [ %1011, %967 ], [ 0.000000e+00, %964 ]
  %1056 = phi float [ %1009, %967 ], [ 0.000000e+00, %964 ]
  %1057 = phi float [ %1007, %967 ], [ 0.000000e+00, %964 ]
  %1058 = phi float [ %1005, %967 ], [ 0.000000e+00, %964 ]
  %1059 = phi float [ %1003, %967 ], [ 0.000000e+00, %964 ]
  %1060 = phi float [ %1001, %967 ], [ 0.000000e+00, %964 ]
  %1061 = phi float [ %999, %967 ], [ 0.000000e+00, %964 ]
  %1062 = phi float [ %997, %967 ], [ 0.000000e+00, %964 ]
  %1063 = phi float [ %995, %967 ], [ 0.000000e+00, %964 ]
  %1064 = phi float [ %993, %967 ], [ 0.000000e+00, %964 ]
  %1065 = phi float [ %991, %967 ], [ 0.000000e+00, %964 ]
  %1066 = phi float [ %989, %967 ], [ 0.000000e+00, %964 ]
  %1067 = phi float [ %987, %967 ], [ 0.000000e+00, %964 ]
  %1068 = fcmp fast olt float %965, 1.000000e+00
  br i1 %1068, label %1069, label %1729, !dx.controlflow.hints !69

; <label>:1069                                    ; preds = %1040
  %1070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1071 = extractvalue %dx.types.CBufRet.f32 %1070, 0
  %1072 = extractvalue %dx.types.CBufRet.f32 %1070, 1
  %1073 = fsub fast float %287, %1071
  %1074 = fsub fast float %288, %1072
  %1075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1076 = extractvalue %dx.types.CBufRet.f32 %1075, 0
  %1077 = extractvalue %dx.types.CBufRet.f32 %1075, 1
  %1078 = fmul fast float %1073, %1076
  %1079 = fmul fast float %1074, %1077
  %1080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1081 = extractvalue %dx.types.CBufRet.f32 %1080, 0
  %1082 = fmul fast float %1081, %1078
  %1083 = extractvalue %dx.types.CBufRet.f32 %1080, 1
  %1084 = fadd fast float %1082, %1083
  %1085 = extractvalue %dx.types.CBufRet.f32 %1080, 2
  %1086 = fmul fast float %1085, %1079
  %1087 = extractvalue %dx.types.CBufRet.f32 %1080, 3
  %1088 = fadd fast float %1086, %1087
  %1089 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %1084, float %1088, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1090 = extractvalue %dx.types.ResRet.f32 %1089, 0
  %1091 = extractvalue %dx.types.ResRet.f32 %1089, 1
  %1092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1093 = extractvalue %dx.types.CBufRet.f32 %1092, 1
  %1094 = extractvalue %dx.types.CBufRet.f32 %1092, 0
  %1095 = fsub fast float %1093, %1094
  %1096 = fmul fast float %1095, %1090
  %1097 = fadd fast float %1096, %1094
  %1098 = extractvalue %dx.types.CBufRet.f32 %1092, 3
  %1099 = extractvalue %dx.types.CBufRet.f32 %1092, 2
  %1100 = fsub fast float %1098, %1099
  %1101 = fmul fast float %1100, %1091
  %1102 = fadd fast float %1101, %1099
  %1103 = fsub fast float %289, %1097
  %1104 = fsub fast float %1102, %1097
  %1105 = fdiv fast float %1103, %1104
  %1106 = call float @dx.op.unary.f32(i32 7, float %1105)  ; Saturate(value)
  %1107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1108 = extractvalue %dx.types.CBufRet.f32 %1107, 0
  %1109 = fmul fast float %1108, %1106
  %1110 = extractvalue %dx.types.CBufRet.f32 %1107, 1
  %1111 = fadd fast float %1109, %1110
  %1112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %19, float %1084, float %1088, float %1111, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1113 = extractvalue %dx.types.ResRet.f32 %1112, 0
  %1114 = extractvalue %dx.types.ResRet.f32 %1112, 1
  %1115 = extractvalue %dx.types.ResRet.f32 %1112, 2
  %1116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1117 = extractvalue %dx.types.CBufRet.f32 %1116, 0
  %1118 = extractvalue %dx.types.CBufRet.f32 %1116, 1
  %1119 = extractvalue %dx.types.CBufRet.f32 %1116, 2
  %1120 = fmul fast float %1117, %1113
  %1121 = fmul fast float %1118, %1114
  %1122 = fmul fast float %1119, %1115
  %1123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1124 = extractvalue %dx.types.CBufRet.f32 %1123, 0
  %1125 = extractvalue %dx.types.CBufRet.f32 %1123, 1
  %1126 = extractvalue %dx.types.CBufRet.f32 %1123, 2
  %1127 = fadd fast float %1120, %1124
  %1128 = fadd fast float %1121, %1125
  %1129 = fadd fast float %1122, %1126
  %1130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1131 = extractvalue %dx.types.CBufRet.f32 %1130, 0
  %1132 = fmul fast float %1131, %1078
  %1133 = extractvalue %dx.types.CBufRet.f32 %1130, 1
  %1134 = fadd fast float %1132, %1133
  %1135 = extractvalue %dx.types.CBufRet.f32 %1130, 2
  %1136 = fmul fast float %1135, %1079
  %1137 = extractvalue %dx.types.CBufRet.f32 %1130, 3
  %1138 = fadd fast float %1136, %1137
  %1139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1140 = extractvalue %dx.types.CBufRet.f32 %1139, 0
  %1141 = extractvalue %dx.types.CBufRet.f32 %1139, 1
  %1142 = extractvalue %dx.types.CBufRet.f32 %1139, 2
  %1143 = extractvalue %dx.types.CBufRet.f32 %1139, 3
  %1144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1145 = extractvalue %dx.types.CBufRet.f32 %1144, 0
  %1146 = extractvalue %dx.types.CBufRet.f32 %1144, 1
  %1147 = extractvalue %dx.types.CBufRet.f32 %1144, 2
  %1148 = extractvalue %dx.types.CBufRet.f32 %1144, 3
  %1149 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %1134, float %1138, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1150 = extractvalue %dx.types.ResRet.f32 %1149, 0
  %1151 = extractvalue %dx.types.ResRet.f32 %1149, 1
  %1152 = extractvalue %dx.types.ResRet.f32 %1149, 2
  %1153 = extractvalue %dx.types.ResRet.f32 %1149, 3
  %1154 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %1134, float %1138, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1155 = extractvalue %dx.types.ResRet.f32 %1154, 0
  %1156 = extractvalue %dx.types.ResRet.f32 %1154, 1
  %1157 = extractvalue %dx.types.ResRet.f32 %1154, 2
  %1158 = extractvalue %dx.types.ResRet.f32 %1154, 3
  %1159 = fmul fast float %1150, %1127
  %1160 = fmul fast float %1155, %1127
  %1161 = fmul fast float %1157, %1127
  %1162 = fmul fast float %1153, %1127
  %1163 = fadd fast float %1159, %1140
  %1164 = fadd fast float %1160, %1141
  %1165 = fadd fast float %1161, %1142
  %1166 = fadd fast float %1162, %1143
  %1167 = fmul fast float %1151, %1127
  %1168 = fmul fast float %1156, %1127
  %1169 = fadd fast float %1167, %1145
  %1170 = fadd fast float %1168, %1146
  %1171 = fmul fast float %1152, %1127
  %1172 = fmul fast float %1158, %1127
  %1173 = fadd fast float %1171, %1147
  %1174 = fadd fast float %1172, %1148
  %1175 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %1134, float %1138, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1176 = extractvalue %dx.types.ResRet.f32 %1175, 0
  %1177 = extractvalue %dx.types.ResRet.f32 %1175, 1
  %1178 = extractvalue %dx.types.ResRet.f32 %1175, 2
  %1179 = extractvalue %dx.types.ResRet.f32 %1175, 3
  %1180 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %1134, float %1138, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1181 = extractvalue %dx.types.ResRet.f32 %1180, 0
  %1182 = extractvalue %dx.types.ResRet.f32 %1180, 1
  %1183 = extractvalue %dx.types.ResRet.f32 %1180, 2
  %1184 = extractvalue %dx.types.ResRet.f32 %1180, 3
  %1185 = fmul fast float %1176, %1128
  %1186 = fmul fast float %1181, %1128
  %1187 = fmul fast float %1183, %1128
  %1188 = fmul fast float %1179, %1128
  %1189 = fadd fast float %1163, %1185
  %1190 = fadd fast float %1164, %1186
  %1191 = fadd fast float %1165, %1187
  %1192 = fadd fast float %1166, %1188
  %1193 = fmul fast float %1177, %1128
  %1194 = fmul fast float %1182, %1128
  %1195 = fadd fast float %1169, %1193
  %1196 = fadd fast float %1170, %1194
  %1197 = fmul fast float %1178, %1128
  %1198 = fmul fast float %1184, %1128
  %1199 = fadd fast float %1173, %1197
  %1200 = fadd fast float %1174, %1198
  %1201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %1134, float %1138, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1202 = extractvalue %dx.types.ResRet.f32 %1201, 0
  %1203 = extractvalue %dx.types.ResRet.f32 %1201, 1
  %1204 = extractvalue %dx.types.ResRet.f32 %1201, 2
  %1205 = extractvalue %dx.types.ResRet.f32 %1201, 3
  %1206 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %1134, float %1138, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1207 = extractvalue %dx.types.ResRet.f32 %1206, 0
  %1208 = extractvalue %dx.types.ResRet.f32 %1206, 1
  %1209 = extractvalue %dx.types.ResRet.f32 %1206, 2
  %1210 = extractvalue %dx.types.ResRet.f32 %1206, 3
  %1211 = fmul fast float %1202, %1129
  %1212 = fmul fast float %1207, %1129
  %1213 = fmul fast float %1209, %1129
  %1214 = fmul fast float %1205, %1129
  %1215 = fadd fast float %1189, %1211
  %1216 = fadd fast float %1190, %1212
  %1217 = fadd fast float %1191, %1213
  %1218 = fadd fast float %1192, %1214
  %1219 = fmul fast float %1203, %1129
  %1220 = fmul fast float %1208, %1129
  %1221 = fadd fast float %1195, %1219
  %1222 = fadd fast float %1196, %1220
  %1223 = fmul fast float %1204, %1129
  %1224 = fmul fast float %1210, %1129
  %1225 = fadd fast float %1199, %1223
  %1226 = fadd fast float %1200, %1224
  %1227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1228 = extractvalue %dx.types.CBufRet.f32 %1227, 0
  %1229 = fsub fast float %287, %1228
  %1230 = fsub fast float %1071, %287
  %1231 = call float @dx.op.binary.f32(i32 35, float %1230, float %1229)  ; FMax(a,b)
  %1232 = extractvalue %dx.types.CBufRet.f32 %1227, 1
  %1233 = fsub fast float %288, %1232
  %1234 = fsub fast float %1072, %288
  %1235 = call float @dx.op.binary.f32(i32 35, float %1234, float %1233)  ; FMax(a,b)
  %1236 = call float @dx.op.binary.f32(i32 35, float %1231, float %1235)  ; FMax(a,b)
  %1237 = extractvalue %dx.types.CBufRet.f32 %1075, 3
  %1238 = fmul fast float %1237, %1236
  %1239 = call float @dx.op.unary.f32(i32 7, float %1238)  ; Saturate(value)
  %1240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1241 = extractvalue %dx.types.CBufRet.f32 %1240, 0
  %1242 = extractvalue %dx.types.CBufRet.f32 %1240, 1
  %1243 = extractvalue %dx.types.CBufRet.f32 %1240, 2
  %1244 = extractvalue %dx.types.CBufRet.f32 %1240, 3
  %1245 = fsub fast float %1241, %1215
  %1246 = fsub fast float %1242, %1216
  %1247 = fsub fast float %1243, %1217
  %1248 = fsub fast float %1244, %1218
  %1249 = fmul fast float %1245, %1239
  %1250 = fmul fast float %1246, %1239
  %1251 = fmul fast float %1247, %1239
  %1252 = fmul fast float %1248, %1239
  %1253 = fadd fast float %1249, %1215
  %1254 = fadd fast float %1250, %1216
  %1255 = fadd fast float %1251, %1217
  %1256 = fadd fast float %1252, %1218
  %1257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1258 = extractvalue %dx.types.CBufRet.f32 %1257, 0
  %1259 = extractvalue %dx.types.CBufRet.f32 %1257, 1
  %1260 = fsub fast float %1258, %1221
  %1261 = fsub fast float %1259, %1222
  %1262 = fmul fast float %1260, %1239
  %1263 = fmul fast float %1261, %1239
  %1264 = fadd fast float %1262, %1221
  %1265 = fadd fast float %1263, %1222
  %1266 = extractvalue %dx.types.CBufRet.f32 %1257, 2
  %1267 = extractvalue %dx.types.CBufRet.f32 %1257, 3
  %1268 = fsub fast float %1266, %1225
  %1269 = fsub fast float %1267, %1226
  %1270 = fmul fast float %1268, %1239
  %1271 = fmul fast float %1269, %1239
  %1272 = fadd fast float %1270, %1225
  %1273 = fadd fast float %1271, %1226
  %1274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1275 = extractvalue %dx.types.CBufRet.f32 %1274, 0
  %1276 = fmul fast float %1275, %1253
  %1277 = fmul fast float %1275, %1254
  %1278 = fmul fast float %1275, %1255
  %1279 = fmul fast float %1275, %1256
  %1280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1281 = extractvalue %dx.types.CBufRet.f32 %1280, 0
  %1282 = fmul fast float %1281, %1264
  %1283 = fmul fast float %1281, %1265
  %1284 = fadd fast float %1282, %1276
  %1285 = fadd fast float %1283, %1278
  %1286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1287 = extractvalue %dx.types.CBufRet.f32 %1286, 0
  %1288 = fmul fast float %1287, %1272
  %1289 = fmul fast float %1287, %1273
  %1290 = fadd fast float %1284, %1288
  %1291 = fadd fast float %1285, %1289
  %1292 = extractvalue %dx.types.CBufRet.f32 %1274, 1
  %1293 = fmul fast float %1292, %1253
  %1294 = fmul fast float %1292, %1254
  %1295 = fmul fast float %1292, %1255
  %1296 = fmul fast float %1292, %1256
  %1297 = extractvalue %dx.types.CBufRet.f32 %1280, 1
  %1298 = fmul fast float %1297, %1264
  %1299 = fmul fast float %1297, %1265
  %1300 = fadd fast float %1298, %1293
  %1301 = fadd fast float %1299, %1295
  %1302 = extractvalue %dx.types.CBufRet.f32 %1286, 1
  %1303 = fmul fast float %1302, %1272
  %1304 = fmul fast float %1302, %1273
  %1305 = fadd fast float %1300, %1303
  %1306 = fadd fast float %1301, %1304
  %1307 = extractvalue %dx.types.CBufRet.f32 %1274, 2
  %1308 = fmul fast float %1307, %1253
  %1309 = fmul fast float %1307, %1254
  %1310 = fmul fast float %1307, %1255
  %1311 = fmul fast float %1307, %1256
  %1312 = extractvalue %dx.types.CBufRet.f32 %1280, 2
  %1313 = fmul fast float %1312, %1264
  %1314 = fmul fast float %1312, %1265
  %1315 = fadd fast float %1313, %1308
  %1316 = fadd fast float %1314, %1310
  %1317 = extractvalue %dx.types.CBufRet.f32 %1286, 2
  %1318 = fmul fast float %1317, %1272
  %1319 = fmul fast float %1317, %1273
  %1320 = fadd fast float %1315, %1318
  %1321 = fadd fast float %1316, %1319
  %1322 = fmul fast float %1309, %1309
  %1323 = fmul fast float %1321, %1321
  %1324 = fmul fast float %1311, %1311
  %1325 = fadd fast float %1324, %1322
  %1326 = fadd fast float %1325, %1323
  %1327 = call float @dx.op.unary.f32(i32 24, float %1326)  ; Sqrt(value)
  %1328 = fcmp fast ugt float %1327, 0.000000e+00
  br i1 %1328, label %1329, label %1344, !dx.controlflow.hints !70

; <label>:1329                                    ; preds = %1069
  %1330 = fsub fast float -0.000000e+00, %1311
  %1331 = fdiv fast float %1330, %1327
  %1332 = fsub fast float -0.000000e+00, %1309
  %1333 = fdiv fast float %1332, %1327
  %1334 = fdiv fast float %1321, %1327
  %1335 = fmul fast float %1320, 0x3FE279A760000000
  %1336 = fmul fast float %1333, %1309
  %1337 = fmul fast float %1334, %1321
  %1338 = fmul fast float %1331, %1311
  %1339 = fadd fast float %1336, %1338
  %1340 = fsub fast float %1339, %1337
  %1341 = call float @dx.op.unary.f32(i32 6, float %1340)  ; FAbs(value)
  %1342 = fadd fast float %1341, 0x3DDB7CDFE0000000
  %1343 = fdiv fast float %1335, %1342
  br label %1344

; <label>:1344                                    ; preds = %1329, %1069
  %1345 = phi float [ %1343, %1329 ], [ 1.000000e+00, %1069 ]
  %1346 = fmul fast float %1294, %1294
  %1347 = fmul fast float %1306, %1306
  %1348 = fmul fast float %1296, %1296
  %1349 = fadd fast float %1348, %1346
  %1350 = fadd fast float %1349, %1347
  %1351 = call float @dx.op.unary.f32(i32 24, float %1350)  ; Sqrt(value)
  %1352 = fcmp fast ugt float %1351, 0.000000e+00
  br i1 %1352, label %1353, label %1368, !dx.controlflow.hints !70

; <label>:1353                                    ; preds = %1344
  %1354 = fsub fast float -0.000000e+00, %1296
  %1355 = fdiv fast float %1354, %1351
  %1356 = fsub fast float -0.000000e+00, %1294
  %1357 = fdiv fast float %1356, %1351
  %1358 = fdiv fast float %1306, %1351
  %1359 = fmul fast float %1305, 0x3FE279A760000000
  %1360 = fmul fast float %1357, %1294
  %1361 = fmul fast float %1358, %1306
  %1362 = fmul fast float %1355, %1296
  %1363 = fadd fast float %1360, %1362
  %1364 = fsub fast float %1363, %1361
  %1365 = call float @dx.op.unary.f32(i32 6, float %1364)  ; FAbs(value)
  %1366 = fadd fast float %1365, 0x3DDB7CDFE0000000
  %1367 = fdiv fast float %1359, %1366
  br label %1368

; <label>:1368                                    ; preds = %1353, %1344
  %1369 = phi float [ %1367, %1353 ], [ 1.000000e+00, %1344 ]
  %1370 = call float @dx.op.binary.f32(i32 36, float %1369, float %1345)  ; FMin(a,b)
  %1371 = fmul fast float %1277, %1277
  %1372 = fmul fast float %1291, %1291
  %1373 = fmul fast float %1279, %1279
  %1374 = fadd fast float %1373, %1371
  %1375 = fadd fast float %1374, %1372
  %1376 = call float @dx.op.unary.f32(i32 24, float %1375)  ; Sqrt(value)
  %1377 = fcmp fast ugt float %1376, 0.000000e+00
  br i1 %1377, label %1378, label %1393, !dx.controlflow.hints !70

; <label>:1378                                    ; preds = %1368
  %1379 = fsub fast float -0.000000e+00, %1279
  %1380 = fdiv fast float %1379, %1376
  %1381 = fsub fast float -0.000000e+00, %1277
  %1382 = fdiv fast float %1381, %1376
  %1383 = fdiv fast float %1291, %1376
  %1384 = fmul fast float %1290, 0x3FE279A760000000
  %1385 = fmul fast float %1382, %1277
  %1386 = fmul fast float %1383, %1291
  %1387 = fmul fast float %1380, %1279
  %1388 = fadd fast float %1385, %1387
  %1389 = fsub fast float %1388, %1386
  %1390 = call float @dx.op.unary.f32(i32 6, float %1389)  ; FAbs(value)
  %1391 = fadd fast float %1390, 0x3DDB7CDFE0000000
  %1392 = fdiv fast float %1384, %1391
  br label %1393

; <label>:1393                                    ; preds = %1378, %1368
  %1394 = phi float [ %1392, %1378 ], [ 1.000000e+00, %1368 ]
  %1395 = call float @dx.op.binary.f32(i32 36, float %1394, float %1370)  ; FMin(a,b)
  %1396 = call float @dx.op.unary.f32(i32 7, float %1395)  ; Saturate(value)
  %1397 = fcmp fast olt float %1396, 1.000000e+00
  br i1 %1397, label %1398, label %1408, !dx.controlflow.hints !71

; <label>:1398                                    ; preds = %1393
  %1399 = fmul fast float %1396, %1277
  %1400 = fmul fast float %1396, %1291
  %1401 = fmul fast float %1396, %1279
  %1402 = fmul fast float %1396, %1294
  %1403 = fmul fast float %1396, %1306
  %1404 = fmul fast float %1396, %1296
  %1405 = fmul fast float %1396, %1309
  %1406 = fmul fast float %1396, %1321
  %1407 = fmul fast float %1396, %1311
  br label %1408

; <label>:1408                                    ; preds = %1398, %1393
  %1409 = phi float [ %1405, %1398 ], [ %1309, %1393 ]
  %1410 = phi float [ %1406, %1398 ], [ %1321, %1393 ]
  %1411 = phi float [ %1407, %1398 ], [ %1311, %1393 ]
  %1412 = phi float [ %1402, %1398 ], [ %1294, %1393 ]
  %1413 = phi float [ %1403, %1398 ], [ %1306, %1393 ]
  %1414 = phi float [ %1404, %1398 ], [ %1296, %1393 ]
  %1415 = phi float [ %1399, %1398 ], [ %1277, %1393 ]
  %1416 = phi float [ %1400, %1398 ], [ %1291, %1393 ]
  %1417 = phi float [ %1401, %1398 ], [ %1279, %1393 ]
  %1418 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1290)  ; FMax(a,b)
  %1419 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1305)  ; FMax(a,b)
  %1420 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1320)  ; FMax(a,b)
  %1421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1422 = extractvalue %dx.types.CBufRet.f32 %1421, 0
  %1423 = fcmp fast ogt float %1422, 0.000000e+00
  %1424 = fcmp fast oge float %1078, 0.000000e+00
  %1425 = and i1 %1424, %1423
  %1426 = fcmp fast ole float %1078, 1.000000e+00
  %1427 = and i1 %1426, %1425
  %1428 = fcmp fast oge float %1079, 0.000000e+00
  %1429 = and i1 %1428, %1427
  %1430 = fcmp fast ole float %1079, 1.000000e+00
  %1431 = and i1 %1430, %1429
  br i1 %1431, label %1432, label %1577, !dx.controlflow.hints !72

; <label>:1432                                    ; preds = %1408
  %1433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1434 = extractvalue %dx.types.CBufRet.f32 %1433, 2
  %1435 = extractvalue %dx.types.CBufRet.f32 %1433, 3
  %1436 = fmul fast float %1434, %1078
  %1437 = fmul fast float %1435, %1079
  %1438 = call float @dx.op.unary.f32(i32 27, float %1436)  ; Round_ni(value)
  %1439 = call float @dx.op.unary.f32(i32 27, float %1437)  ; Round_ni(value)
  %1440 = fptosi float %1438 to i32
  %1441 = fptosi float %1439 to i32
  %1442 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %1440, i32 %1441, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1443 = extractvalue %dx.types.ResRet.i32 %1442, 0
  %1444 = and i32 %1443, 65535
  %1445 = lshr i32 %1443, 16
  %1446 = icmp eq i32 %1444, 65535
  br i1 %1446, label %1483, label %1447, !dx.controlflow.hints !73

; <label>:1447                                    ; preds = %1432
  %1448 = extractvalue %dx.types.CBufRet.f32 %1421, 1
  %1449 = extractvalue %dx.types.CBufRet.f32 %1433, 0
  %1450 = extractvalue %dx.types.CBufRet.f32 %1433, 1
  %1451 = fmul fast float %1449, %1078
  %1452 = fmul fast float %1450, %1079
  %1453 = fmul fast float %1451, 1.250000e-01
  %1454 = fmul fast float %1452, 1.250000e-01
  %1455 = call float @dx.op.unary.f32(i32 27, float %1453)  ; Round_ni(value)
  %1456 = call float @dx.op.unary.f32(i32 27, float %1454)  ; Round_ni(value)
  %1457 = fmul fast float %1455, 8.000000e+00
  %1458 = fmul fast float %1456, 8.000000e+00
  %1459 = and i32 %1443, 255
  %1460 = lshr i32 %1443, 8
  %1461 = and i32 %1460, 255
  %1462 = mul nuw nsw i32 %1459, 9
  %1463 = uitofp i32 %1462 to float
  %1464 = mul nuw nsw i32 %1461, 9
  %1465 = uitofp i32 %1464 to float
  %1466 = fadd fast float %1463, 5.000000e-01
  %1467 = fadd fast float %1466, %1451
  %1468 = fsub fast float %1467, %1457
  %1469 = fadd fast float %1465, 5.000000e-01
  %1470 = fadd fast float %1469, %1452
  %1471 = fsub fast float %1470, %1458
  %1472 = fdiv fast float %1468, %1422
  %1473 = fdiv fast float %1471, %1448
  %1474 = fmul fast float %1106, 4.375000e-01
  %1475 = fadd fast float %1474, 3.125000e-02
  %1476 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %19, float %1472, float %1473, float %1475, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1477 = extractvalue %dx.types.ResRet.f32 %1476, 0
  %1478 = extractvalue %dx.types.ResRet.f32 %1476, 1
  %1479 = extractvalue %dx.types.ResRet.f32 %1476, 2
  %1480 = fadd fast float %1477, %1418
  %1481 = fadd fast float %1478, %1419
  %1482 = fadd fast float %1479, %1420
  br label %1483

; <label>:1483                                    ; preds = %1447, %1432
  %1484 = phi float [ %1482, %1447 ], [ %1420, %1432 ]
  %1485 = phi float [ %1481, %1447 ], [ %1419, %1432 ]
  %1486 = phi float [ %1480, %1447 ], [ %1418, %1432 ]
  %1487 = icmp eq i32 %1445, 65535
  br i1 %1487, label %1577, label %1488, !dx.controlflow.hints !74

; <label>:1488                                    ; preds = %1483
  %1489 = extractvalue %dx.types.CBufRet.f32 %1421, 1
  %1490 = extractvalue %dx.types.CBufRet.f32 %1433, 0
  %1491 = extractvalue %dx.types.CBufRet.f32 %1433, 1
  %1492 = fmul fast float %1490, %1078
  %1493 = fmul fast float %1491, %1079
  %1494 = fmul fast float %1492, 1.250000e-01
  %1495 = fmul fast float %1493, 1.250000e-01
  %1496 = call float @dx.op.unary.f32(i32 27, float %1494)  ; Round_ni(value)
  %1497 = call float @dx.op.unary.f32(i32 27, float %1495)  ; Round_ni(value)
  %1498 = fmul fast float %1496, 8.000000e+00
  %1499 = fmul fast float %1497, 8.000000e+00
  %1500 = fsub fast float %1492, %1498
  %1501 = fsub fast float %1493, %1499
  %1502 = fadd fast float %1500, 5.000000e-01
  %1503 = fadd fast float %1501, 5.000000e-01
  %1504 = and i32 %1445, 255
  %1505 = lshr i32 %1443, 24
  %1506 = mul nuw nsw i32 %1504, 9
  %1507 = uitofp i32 %1506 to float
  %1508 = mul nuw nsw i32 %1505, 9
  %1509 = uitofp i32 %1508 to float
  %1510 = fadd fast float %1502, %1507
  %1511 = fadd fast float %1503, %1509
  %1512 = fdiv fast float %1510, %1422
  %1513 = fdiv fast float %1511, %1489
  %1514 = fmul fast float %1106, 4.375000e-01
  %1515 = fadd fast float %1514, 3.125000e-02
  %1516 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %19, float %1512, float %1513, float %1515, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1517 = extractvalue %dx.types.ResRet.f32 %1516, 0
  %1518 = extractvalue %dx.types.ResRet.f32 %1516, 1
  %1519 = extractvalue %dx.types.ResRet.f32 %1516, 2
  %1520 = fadd fast float %1514, 5.312500e-01
  %1521 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %19, float %1512, float %1513, float %1520, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1522 = extractvalue %dx.types.ResRet.f32 %1521, 0
  %1523 = extractvalue %dx.types.ResRet.f32 %1521, 1
  %1524 = extractvalue %dx.types.ResRet.f32 %1521, 2
  %1525 = fmul fast float %1522, 2.000000e+00
  %1526 = fmul fast float %1523, 2.000000e+00
  %1527 = fmul fast float %1524, 2.000000e+00
  %1528 = fadd fast float %1525, -1.000000e+00
  %1529 = fadd fast float %1526, -1.000000e+00
  %1530 = fadd fast float %1527, -1.000000e+00
  %1531 = fmul fast float %1528, %1528
  %1532 = fmul fast float %1529, %1529
  %1533 = fadd fast float %1531, %1532
  %1534 = fmul fast float %1530, %1530
  %1535 = fadd fast float %1533, %1534
  %1536 = call float @dx.op.unary.f32(i32 24, float %1535)  ; Sqrt(value)
  %1537 = fcmp fast ogt float %1536, 0.000000e+00
  br i1 %1537, label %1538, label %1542, !dx.controlflow.hints !75

; <label>:1538                                    ; preds = %1488
  %1539 = fdiv fast float %1528, %1536
  %1540 = fdiv fast float %1529, %1536
  %1541 = fdiv fast float %1530, %1536
  br label %1542

; <label>:1542                                    ; preds = %1538, %1488
  %1543 = phi float [ %1539, %1538 ], [ 0.000000e+00, %1488 ]
  %1544 = phi float [ %1540, %1538 ], [ 0.000000e+00, %1488 ]
  %1545 = phi float [ %1541, %1538 ], [ 0.000000e+00, %1488 ]
  %1546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1547 = extractvalue %dx.types.CBufRet.f32 %1546, 0
  %1548 = extractvalue %dx.types.CBufRet.f32 %1546, 1
  %1549 = fsub fast float %287, %1547
  %1550 = fsub fast float %288, %1548
  %1551 = fmul fast float %1549, %1549
  %1552 = fmul fast float %1550, %1550
  %1553 = fadd fast float %1551, %1552
  %1554 = call float @dx.op.unary.f32(i32 24, float %1553)  ; Sqrt(value)
  %1555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1556 = extractvalue %dx.types.CBufRet.f32 %1555, 0
  %1557 = extractvalue %dx.types.CBufRet.f32 %1555, 1
  %1558 = fsub fast float %1554, %1556
  %1559 = fdiv fast float %1558, %1557
  %1560 = call float @dx.op.unary.f32(i32 7, float %1559)  ; Saturate(value)
  %1561 = fmul fast float %1560, 2.000000e+00
  %1562 = fsub fast float 3.000000e+00, %1561
  %1563 = fmul fast float %1560, %1560
  %1564 = fmul fast float %1563, %1562
  %1565 = call float @dx.op.dot3.f32(i32 55, float %1543, float %1544, float %1545, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1566 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1565)  ; FMax(a,b)
  %1567 = fmul fast float %1566, 0x400C5BF8A0000000
  %1568 = fmul fast float %1564, %1517
  %1569 = fmul fast float %1568, %1567
  %1570 = fadd fast float %1569, %1486
  %1571 = fmul fast float %1564, %1518
  %1572 = fmul fast float %1571, %1567
  %1573 = fadd fast float %1572, %1485
  %1574 = fmul fast float %1564, %1519
  %1575 = fmul fast float %1574, %1567
  %1576 = fadd fast float %1575, %1484
  br label %1577

; <label>:1577                                    ; preds = %1542, %1483, %1408
  %1578 = phi float [ %1576, %1542 ], [ %1484, %1483 ], [ %1420, %1408 ]
  %1579 = phi float [ %1573, %1542 ], [ %1485, %1483 ], [ %1419, %1408 ]
  %1580 = phi float [ %1570, %1542 ], [ %1486, %1483 ], [ %1418, %1408 ]
  %1581 = fcmp fast ogt float %289, %1102
  %1582 = and i1 %1424, %1581
  %1583 = and i1 %1426, %1582
  %1584 = and i1 %1428, %1583
  %1585 = and i1 %1430, %1584
  br i1 %1585, label %1586, label %1643, !dx.controlflow.hints !76

; <label>:1586                                    ; preds = %1577
  %1587 = fmul fast float %1104, 0x3FC24924A0000000
  %1588 = fsub fast float %289, %1102
  %1589 = fdiv fast float %1588, %1587
  %1590 = call float @dx.op.unary.f32(i32 7, float %1589)  ; Saturate(value)
  %1591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1592 = extractvalue %dx.types.CBufRet.f32 %1591, 0
  %1593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1594 = extractvalue %dx.types.CBufRet.f32 %1593, 0
  %1595 = extractvalue %dx.types.CBufRet.f32 %1593, 1
  %1596 = extractvalue %dx.types.CBufRet.f32 %1593, 2
  %1597 = fsub fast float %1592, %1580
  %1598 = fsub fast float %1594, %1415
  %1599 = fsub fast float %1595, %1416
  %1600 = fsub fast float %1596, %1417
  %1601 = fmul fast float %1597, %1590
  %1602 = fmul fast float %1598, %1590
  %1603 = fmul fast float %1599, %1590
  %1604 = fmul fast float %1600, %1590
  %1605 = fadd fast float %1601, %1580
  %1606 = fadd fast float %1602, %1415
  %1607 = fadd fast float %1603, %1416
  %1608 = fadd fast float %1604, %1417
  %1609 = extractvalue %dx.types.CBufRet.f32 %1591, 1
  %1610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1611 = extractvalue %dx.types.CBufRet.f32 %1610, 0
  %1612 = extractvalue %dx.types.CBufRet.f32 %1610, 1
  %1613 = extractvalue %dx.types.CBufRet.f32 %1610, 2
  %1614 = fsub fast float %1609, %1579
  %1615 = fsub fast float %1611, %1412
  %1616 = fsub fast float %1612, %1413
  %1617 = fsub fast float %1613, %1414
  %1618 = fmul fast float %1614, %1590
  %1619 = fmul fast float %1615, %1590
  %1620 = fmul fast float %1616, %1590
  %1621 = fmul fast float %1617, %1590
  %1622 = fadd fast float %1618, %1579
  %1623 = fadd fast float %1619, %1412
  %1624 = fadd fast float %1620, %1413
  %1625 = fadd fast float %1621, %1414
  %1626 = extractvalue %dx.types.CBufRet.f32 %1591, 2
  %1627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1628 = extractvalue %dx.types.CBufRet.f32 %1627, 0
  %1629 = extractvalue %dx.types.CBufRet.f32 %1627, 1
  %1630 = extractvalue %dx.types.CBufRet.f32 %1627, 2
  %1631 = fsub fast float %1626, %1578
  %1632 = fsub fast float %1628, %1409
  %1633 = fsub fast float %1629, %1410
  %1634 = fsub fast float %1630, %1411
  %1635 = fmul fast float %1631, %1590
  %1636 = fmul fast float %1632, %1590
  %1637 = fmul fast float %1633, %1590
  %1638 = fmul fast float %1634, %1590
  %1639 = fadd fast float %1635, %1578
  %1640 = fadd fast float %1636, %1409
  %1641 = fadd fast float %1637, %1410
  %1642 = fadd fast float %1638, %1411
  br label %1643

; <label>:1643                                    ; preds = %1586, %1577
  %1644 = phi float [ %1639, %1586 ], [ %1578, %1577 ]
  %1645 = phi float [ %1640, %1586 ], [ %1409, %1577 ]
  %1646 = phi float [ %1641, %1586 ], [ %1410, %1577 ]
  %1647 = phi float [ %1642, %1586 ], [ %1411, %1577 ]
  %1648 = phi float [ %1622, %1586 ], [ %1579, %1577 ]
  %1649 = phi float [ %1623, %1586 ], [ %1412, %1577 ]
  %1650 = phi float [ %1624, %1586 ], [ %1413, %1577 ]
  %1651 = phi float [ %1625, %1586 ], [ %1414, %1577 ]
  %1652 = phi float [ %1605, %1586 ], [ %1580, %1577 ]
  %1653 = phi float [ %1606, %1586 ], [ %1415, %1577 ]
  %1654 = phi float [ %1607, %1586 ], [ %1416, %1577 ]
  %1655 = phi float [ %1608, %1586 ], [ %1417, %1577 ]
  %1656 = extractvalue %dx.types.CBufRet.f32 %1227, 3
  %1657 = fmul fast float %1656, %1652
  %1658 = fmul fast float %1656, %1648
  %1659 = fmul fast float %1656, %1644
  %1660 = fmul fast float %1653, 1.500000e+00
  %1661 = fmul fast float %1660, %1656
  %1662 = fmul fast float %1654, 1.500000e+00
  %1663 = fmul fast float %1662, %1656
  %1664 = fmul fast float %1655, 1.500000e+00
  %1665 = fmul fast float %1664, %1656
  %1666 = fmul fast float %1649, 1.500000e+00
  %1667 = fmul fast float %1666, %1656
  %1668 = fmul fast float %1650, 1.500000e+00
  %1669 = fmul fast float %1668, %1656
  %1670 = fmul fast float %1651, 1.500000e+00
  %1671 = fmul fast float %1670, %1656
  %1672 = fmul fast float %1645, 1.500000e+00
  %1673 = fmul fast float %1672, %1656
  %1674 = fmul fast float %1646, 1.500000e+00
  %1675 = fmul fast float %1674, %1656
  %1676 = fmul fast float %1647, 1.500000e+00
  %1677 = fmul fast float %1676, %1656
  %1678 = fsub fast float %1067, %1657
  %1679 = fmul fast float %1678, %965
  %1680 = fadd fast float %1679, %1657
  %1681 = fsub fast float %1066, %1661
  %1682 = fmul fast float %1681, %965
  %1683 = fadd fast float %1682, %1661
  %1684 = fsub fast float %1065, %1663
  %1685 = fmul fast float %1684, %965
  %1686 = fadd fast float %1685, %1663
  %1687 = fsub fast float %1064, %1665
  %1688 = fmul fast float %1687, %965
  %1689 = fadd fast float %1688, %1665
  %1690 = fmul fast float %1063, %965
  %1691 = fmul fast float %1062, %965
  %1692 = fmul fast float %1061, %965
  %1693 = fmul fast float %1060, %965
  %1694 = fmul fast float %1059, %965
  %1695 = fsub fast float %1058, %1658
  %1696 = fmul fast float %1695, %965
  %1697 = fadd fast float %1696, %1658
  %1698 = fsub fast float %1057, %1667
  %1699 = fmul fast float %1698, %965
  %1700 = fadd fast float %1699, %1667
  %1701 = fsub fast float %1056, %1669
  %1702 = fmul fast float %1701, %965
  %1703 = fadd fast float %1702, %1669
  %1704 = fsub fast float %1055, %1671
  %1705 = fmul fast float %1704, %965
  %1706 = fadd fast float %1705, %1671
  %1707 = fmul fast float %1054, %965
  %1708 = fmul fast float %1053, %965
  %1709 = fmul fast float %1052, %965
  %1710 = fmul fast float %1051, %965
  %1711 = fmul fast float %1050, %965
  %1712 = fsub fast float %1049, %1659
  %1713 = fmul fast float %1712, %965
  %1714 = fadd fast float %1713, %1659
  %1715 = fsub fast float %1048, %1673
  %1716 = fmul fast float %1715, %965
  %1717 = fadd fast float %1716, %1673
  %1718 = fsub fast float %1047, %1675
  %1719 = fmul fast float %1718, %965
  %1720 = fadd fast float %1719, %1675
  %1721 = fsub fast float %1046, %1677
  %1722 = fmul fast float %1721, %965
  %1723 = fadd fast float %1722, %1677
  %1724 = fmul fast float %1045, %965
  %1725 = fmul fast float %1044, %965
  %1726 = fmul fast float %1043, %965
  %1727 = fmul fast float %1042, %965
  %1728 = fmul fast float %1041, %965
  br label %1729

; <label>:1729                                    ; preds = %1643, %1040
  %1730 = phi float [ %1728, %1643 ], [ %1041, %1040 ]
  %1731 = phi float [ %1727, %1643 ], [ %1042, %1040 ]
  %1732 = phi float [ %1726, %1643 ], [ %1043, %1040 ]
  %1733 = phi float [ %1725, %1643 ], [ %1044, %1040 ]
  %1734 = phi float [ %1724, %1643 ], [ %1045, %1040 ]
  %1735 = phi float [ %1723, %1643 ], [ %1046, %1040 ]
  %1736 = phi float [ %1720, %1643 ], [ %1047, %1040 ]
  %1737 = phi float [ %1717, %1643 ], [ %1048, %1040 ]
  %1738 = phi float [ %1714, %1643 ], [ %1049, %1040 ]
  %1739 = phi float [ %1711, %1643 ], [ %1050, %1040 ]
  %1740 = phi float [ %1710, %1643 ], [ %1051, %1040 ]
  %1741 = phi float [ %1709, %1643 ], [ %1052, %1040 ]
  %1742 = phi float [ %1708, %1643 ], [ %1053, %1040 ]
  %1743 = phi float [ %1707, %1643 ], [ %1054, %1040 ]
  %1744 = phi float [ %1706, %1643 ], [ %1055, %1040 ]
  %1745 = phi float [ %1703, %1643 ], [ %1056, %1040 ]
  %1746 = phi float [ %1700, %1643 ], [ %1057, %1040 ]
  %1747 = phi float [ %1697, %1643 ], [ %1058, %1040 ]
  %1748 = phi float [ %1694, %1643 ], [ %1059, %1040 ]
  %1749 = phi float [ %1693, %1643 ], [ %1060, %1040 ]
  %1750 = phi float [ %1692, %1643 ], [ %1061, %1040 ]
  %1751 = phi float [ %1691, %1643 ], [ %1062, %1040 ]
  %1752 = phi float [ %1690, %1643 ], [ %1063, %1040 ]
  %1753 = phi float [ %1689, %1643 ], [ %1064, %1040 ]
  %1754 = phi float [ %1686, %1643 ], [ %1065, %1040 ]
  %1755 = phi float [ %1683, %1643 ], [ %1066, %1040 ]
  %1756 = phi float [ %1680, %1643 ], [ %1067, %1040 ]
  %1757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1758 = extractvalue %dx.types.CBufRet.f32 %1757, 2
  %1759 = fmul fast float %1758, %1758
  %1760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1761 = extractvalue %dx.types.CBufRet.f32 %1760, 0
  %1762 = extractvalue %dx.types.CBufRet.f32 %1760, 1
  %1763 = extractvalue %dx.types.CBufRet.f32 %1760, 2
  %1764 = fmul fast float %1756, 0x3FD20DD760000000
  %1765 = fmul fast float %1763, %1754
  %1766 = fmul fast float %1763, %1763
  %1767 = fmul fast float %1766, 0x3FEE471020000000
  %1768 = fadd fast float %1767, 0xBFD42F6020000000
  %1769 = fmul fast float %1768, %1750
  %1770 = fmul fast float %1761, %1753
  %1771 = fmul fast float %1762, %1755
  %1772 = fmul fast float %1763, 0x3FF17B1420000000
  %1773 = fmul fast float %1759, %1749
  %1774 = fmul fast float %1773, %1761
  %1775 = fmul fast float %1774, %1772
  %1776 = fmul fast float %1759, %1751
  %1777 = fmul fast float %1776, %1762
  %1778 = fmul fast float %1777, %1772
  %1779 = fmul fast float %1761, %1761
  %1780 = fmul fast float %1762, %1762
  %1781 = fsub fast float %1779, %1780
  %1782 = fmul fast float %1748, 0x3FE17B1420000000
  %1783 = fmul fast float %1782, %1781
  %1784 = fmul fast float %1752, 0x3FF17B1420000000
  %1785 = fmul fast float %1784, %1762
  %1786 = fmul fast float %1785, %1761
  %1787 = fadd fast float %1783, %1786
  %1788 = fadd fast float %1787, %1769
  %1789 = fmul fast float %1788, %1759
  %1790 = fsub fast float %1771, %1765
  %1791 = fadd fast float %1790, %1770
  %1792 = fmul fast float %1791, 0x3FDF454380000000
  %1793 = fmul fast float %1792, %1758
  %1794 = fsub fast float %1764, %1775
  %1795 = fsub fast float %1794, %1778
  %1796 = fadd fast float %1795, %1789
  %1797 = fadd fast float %1796, %1793
  %1798 = fmul fast float %1747, 0x3FD20DD760000000
  %1799 = fmul fast float %1763, %1745
  %1800 = fmul fast float %1768, %1741
  %1801 = fmul fast float %1761, %1744
  %1802 = fmul fast float %1762, %1746
  %1803 = fmul fast float %1759, %1740
  %1804 = fmul fast float %1803, %1761
  %1805 = fmul fast float %1804, %1772
  %1806 = fmul fast float %1759, %1742
  %1807 = fmul fast float %1806, %1762
  %1808 = fmul fast float %1807, %1772
  %1809 = fmul fast float %1739, 0x3FE17B1420000000
  %1810 = fmul fast float %1809, %1781
  %1811 = fmul fast float %1743, 0x3FF17B1420000000
  %1812 = fmul fast float %1811, %1762
  %1813 = fmul fast float %1812, %1761
  %1814 = fadd fast float %1810, %1813
  %1815 = fadd fast float %1814, %1800
  %1816 = fmul fast float %1815, %1759
  %1817 = fsub fast float %1802, %1799
  %1818 = fadd fast float %1817, %1801
  %1819 = fmul fast float %1818, 0x3FDF454380000000
  %1820 = fmul fast float %1819, %1758
  %1821 = fsub fast float %1798, %1805
  %1822 = fsub fast float %1821, %1808
  %1823 = fadd fast float %1822, %1816
  %1824 = fadd fast float %1823, %1820
  %1825 = fmul fast float %1738, 0x3FD20DD760000000
  %1826 = fmul fast float %1763, %1736
  %1827 = fmul fast float %1768, %1732
  %1828 = fmul fast float %1761, %1735
  %1829 = fmul fast float %1762, %1737
  %1830 = fmul fast float %1759, %1731
  %1831 = fmul fast float %1830, %1761
  %1832 = fmul fast float %1831, %1772
  %1833 = fmul fast float %1759, %1733
  %1834 = fmul fast float %1833, %1762
  %1835 = fmul fast float %1834, %1772
  %1836 = fmul fast float %1730, 0x3FE17B1420000000
  %1837 = fmul fast float %1836, %1781
  %1838 = fmul fast float %1734, 0x3FF17B1420000000
  %1839 = fmul fast float %1838, %1762
  %1840 = fmul fast float %1839, %1761
  %1841 = fadd fast float %1837, %1840
  %1842 = fadd fast float %1841, %1827
  %1843 = fmul fast float %1842, %1759
  %1844 = fsub fast float %1829, %1826
  %1845 = fadd fast float %1844, %1828
  %1846 = fmul fast float %1845, 0x3FDF454380000000
  %1847 = fmul fast float %1846, %1758
  %1848 = fsub fast float %1825, %1832
  %1849 = fsub fast float %1848, %1835
  %1850 = fadd fast float %1849, %1843
  %1851 = fadd fast float %1850, %1847
  %1852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1853 = extractvalue %dx.types.CBufRet.f32 %1852, 3
  %1854 = extractvalue %dx.types.CBufRet.f32 %906, 0
  %1855 = fmul fast float %1854, %1853
  %1856 = fmul fast float %1855, %1797
  %1857 = fmul fast float %1855, %1824
  %1858 = fmul fast float %1855, %1851
  %1859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1860 = extractvalue %dx.types.CBufRet.f32 %1859, 3
  %1861 = fcmp fast une float %1860, 0.000000e+00
  %1862 = extractvalue %dx.types.CBufRet.f32 %1859, 0
  %1863 = extractvalue %dx.types.CBufRet.f32 %1859, 1
  %1864 = extractvalue %dx.types.CBufRet.f32 %1859, 2
  br i1 %1861, label %1865, label %1887, !dx.controlflow.hints !77

; <label>:1865                                    ; preds = %1729
  %1866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1867 = extractvalue %dx.types.CBufRet.f32 %1866, 0
  %1868 = extractvalue %dx.types.CBufRet.f32 %1866, 1
  %1869 = extractvalue %dx.types.CBufRet.f32 %1866, 2
  %1870 = call float @dx.op.dot3.f32(i32 55, float %1862, float %1863, float %1864, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %1871 = fcmp fast ogt float %916, 0.000000e+00
  %1872 = select i1 %1871, float 1.000000e+00, float -1.000000e+00
  %1873 = fmul fast float %1872, 5.000000e-01
  %1874 = fmul fast float %1873, %1870
  %1875 = fmul fast float %1872, %916
  %1876 = fadd fast float %1874, 4.921875e-01
  %1877 = fadd fast float %1875, -3.125000e-02
  %1878 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %1876, float 0x3FB25F3060000000, float %1877, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1879 = extractvalue %dx.types.ResRet.f32 %1878, 0
  %1880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1881 = extractvalue %dx.types.CBufRet.f32 %1880, 0
  %1882 = fmul fast float %1879, 0x400921FB60000000
  %1883 = fmul fast float %1882, %1881
  %1884 = fmul fast float %1883, %1867
  %1885 = fmul fast float %1883, %1868
  %1886 = fmul fast float %1883, %1869
  br label %1887

; <label>:1887                                    ; preds = %1865, %1729
  %1888 = phi float [ %1884, %1865 ], [ 0.000000e+00, %1729 ]
  %1889 = phi float [ %1885, %1865 ], [ 0.000000e+00, %1729 ]
  %1890 = phi float [ %1886, %1865 ], [ 0.000000e+00, %1729 ]
  %1891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1892 = extractvalue %dx.types.CBufRet.f32 %1891, 0
  %1893 = fmul fast float %1892, %1862
  %1894 = fmul fast float %1892, %1863
  %1895 = fmul fast float %1892, %1864
  %1896 = fadd fast float %1893, %287
  %1897 = fsub fast float -0.000000e+00, %1896
  %1898 = fadd fast float %1894, %288
  %1899 = fsub fast float -0.000000e+00, %1898
  %1900 = fadd fast float %1895, %289
  br i1 %302, label %1975, label %1901, !dx.controlflow.hints !45

; <label>:1901                                    ; preds = %1887
  %1902 = extractvalue %dx.types.CBufRet.f32 %1891, 1
  %1903 = fcmp fast ogt float %1902, %1892
  br i1 %1903, label %1904, label %1906, !dx.controlflow.hints !46

; <label>:1904                                    ; preds = %1901
  %1905 = fsub fast float %1902, %1892
  br label %1966

; <label>:1906                                    ; preds = %1901
  %1907 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1908 = extractvalue %dx.types.CBufRet.i32 %1907, 3
  %1909 = icmp eq i32 %1908, 0
  %1910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %1911 = extractvalue %dx.types.CBufRet.f32 %1910, 2
  %1912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1913 = extractvalue %dx.types.CBufRet.f32 %1912, 2
  %1914 = fsub fast float %1911, %1900
  %1915 = fadd fast float %1914, %1913
  %1916 = fsub fast float 0xC7EFFFFFE0000000, %1900
  br i1 %1909, label %1926, label %1917, !dx.controlflow.hints !36

; <label>:1917                                    ; preds = %1906
  %1918 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1897, float %1899, float %1915)  ; Dot3(ax,ay,az,bx,by,bz)
  %1919 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1862, float %1863, float %1864)  ; Dot3(ax,ay,az,bx,by,bz)
  %1920 = fdiv fast float 1.000000e+00, %1919
  %1921 = fmul fast float %1920, %1918
  %1922 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1897, float %1899, float %1916)  ; Dot3(ax,ay,az,bx,by,bz)
  %1923 = fmul fast float %1920, %1922
  %1924 = call float @dx.op.binary.f32(i32 36, float %1921, float %1923)  ; FMin(a,b)
  %1925 = call float @dx.op.binary.f32(i32 35, float %1921, float %1923)  ; FMax(a,b)
  br label %1959

; <label>:1926                                    ; preds = %1906
  %1927 = extractvalue %dx.types.CBufRet.f32 %1910, 0
  %1928 = extractvalue %dx.types.CBufRet.f32 %1910, 1
  %1929 = extractvalue %dx.types.CBufRet.f32 %1912, 0
  %1930 = extractvalue %dx.types.CBufRet.f32 %1912, 1
  %1931 = fdiv fast float 1.000000e+00, %1862
  %1932 = fdiv fast float 1.000000e+00, %1863
  %1933 = fdiv fast float 1.000000e+00, %1864
  %1934 = fsub fast float %1927, %1896
  %1935 = fmul fast float %1931, %1934
  %1936 = fadd fast float %1934, %1929
  %1937 = fmul fast float %1936, %1931
  %1938 = call float @dx.op.binary.f32(i32 36, float %1935, float %1937)  ; FMin(a,b)
  %1939 = call float @dx.op.binary.f32(i32 35, float %1935, float %1937)  ; FMax(a,b)
  %1940 = fsub fast float %1928, %1898
  %1941 = fmul fast float %1932, %1940
  %1942 = fadd fast float %1940, %1930
  %1943 = fmul fast float %1942, %1932
  %1944 = call float @dx.op.binary.f32(i32 36, float %1941, float %1943)  ; FMin(a,b)
  %1945 = call float @dx.op.binary.f32(i32 35, float %1938, float %1944)  ; FMax(a,b)
  %1946 = call float @dx.op.binary.f32(i32 35, float %1941, float %1943)  ; FMax(a,b)
  %1947 = call float @dx.op.binary.f32(i32 36, float %1939, float %1946)  ; FMin(a,b)
  %1948 = fmul fast float %1933, %1916
  %1949 = fmul fast float %1933, %1915
  %1950 = call float @dx.op.binary.f32(i32 36, float %1948, float %1949)  ; FMin(a,b)
  %1951 = call float @dx.op.binary.f32(i32 35, float %1945, float %1950)  ; FMax(a,b)
  %1952 = call float @dx.op.binary.f32(i32 35, float %1948, float %1949)  ; FMax(a,b)
  %1953 = call float @dx.op.binary.f32(i32 36, float %1947, float %1952)  ; FMin(a,b)
  %1954 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1951)  ; FMax(a,b)
  %1955 = fcmp fast ult float %1953, %1954
  br i1 %1955, label %1959, label %1956, !dx.controlflow.hints !37

; <label>:1956                                    ; preds = %1926
  %1957 = call float @dx.op.binary.f32(i32 36, float %1951, float %1953)  ; FMin(a,b)
  %1958 = call float @dx.op.binary.f32(i32 35, float %1951, float %1953)  ; FMax(a,b)
  br label %1959

; <label>:1959                                    ; preds = %1956, %1926, %1917
  %1960 = phi float [ %1924, %1917 ], [ %1957, %1956 ], [ 0.000000e+00, %1926 ]
  %1961 = phi float [ %1925, %1917 ], [ %1958, %1956 ], [ 0.000000e+00, %1926 ]
  %1962 = fcmp fast ogt float %1960, 0.000000e+00
  br i1 %1962, label %1966, label %1963, !dx.controlflow.hints !47

; <label>:1963                                    ; preds = %1959
  %1964 = fcmp fast ugt float %1961, 0.000000e+00
  br i1 %1964, label %1965, label %1966, !dx.controlflow.hints !48

; <label>:1965                                    ; preds = %1963
  br label %1966

; <label>:1966                                    ; preds = %1965, %1963, %1959, %1904
  %1967 = phi float [ %1905, %1904 ], [ 0.000000e+00, %1965 ], [ 0x47EFFFFFE0000000, %1963 ], [ %1960, %1959 ]
  %1968 = phi i32 [ %200, %1904 ], [ %200, %1965 ], [ 0, %1963 ], [ %200, %1959 ]
  %1969 = icmp ne i32 %1968, 0
  %1970 = zext i1 %1969 to i32
  %1971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1972 = extractvalue %dx.types.CBufRet.f32 %1971, 2
  %1973 = call float @dx.op.binary.f32(i32 35, float %1967, float %1972)  ; FMax(a,b)
  %1974 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %1973)  ; FMin(a,b)
  br label %1975

; <label>:1975                                    ; preds = %1966, %1887
  %1976 = phi float [ %1974, %1966 ], [ 0x47EFFFFFE0000000, %1887 ]
  %1977 = phi i32 [ %1970, %1966 ], [ 0, %1887 ]
  br i1 %475, label %1990, label %1978, !dx.controlflow.hints !54

; <label>:1978                                    ; preds = %1975
  %1979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1980 = extractvalue %dx.types.CBufRet.f32 %1979, 3
  %1981 = extractvalue %dx.types.CBufRet.f32 %1979, 2
  %1982 = fmul fast float %1980, %1892
  %1983 = fdiv fast float %1982, %1892
  %1984 = fadd fast float %1983, 1.000000e+00
  %1985 = call float @dx.op.unary.f32(i32 23, float %1984)  ; Log(value)
  %1986 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %1985)  ; FMin(a,b)
  %1987 = fmul fast float %1981, %1892
  %1988 = fmul fast float %1987, %1986
  %1989 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %1988)  ; FMin(a,b)
  br label %1990

; <label>:1990                                    ; preds = %1978, %1975
  %1991 = phi float [ %1989, %1978 ], [ 0x47EFFFFFE0000000, %1975 ]
  br i1 %490, label %2164, label %1992, !dx.controlflow.hints !55

; <label>:1992                                    ; preds = %1990
  %1993 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1994 = extractvalue %dx.types.CBufRet.i32 %1993, 1
  %1995 = and i32 %1994, 1
  %1996 = icmp eq i32 %1995, 0
  br i1 %1996, label %1997, label %2154, !dx.controlflow.hints !56

; <label>:1997                                    ; preds = %1992
  %1998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %1999 = extractvalue %dx.types.CBufRet.f32 %1998, 2
  %2000 = extractvalue %dx.types.CBufRet.f32 %1998, 3
  %2001 = fmul fast float %1999, %1896
  %2002 = fmul fast float %2000, %1898
  %2003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %2004 = extractvalue %dx.types.CBufRet.f32 %2003, 0
  %2005 = extractvalue %dx.types.CBufRet.f32 %2003, 1
  %2006 = fadd fast float %2001, %2004
  %2007 = fadd fast float %2002, %2005
  %2008 = call float @dx.op.unary.f32(i32 7, float %2006)  ; Saturate(value)
  %2009 = call float @dx.op.unary.f32(i32 7, float %2007)  ; Saturate(value)
  %2010 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %2008, float %2009, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2011 = extractvalue %dx.types.ResRet.f32 %2010, 0
  %2012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2013 = extractvalue %dx.types.CBufRet.f32 %2012, 0
  %2014 = fmul fast float %2013, %2011
  %2015 = fsub fast float %2006, %2008
  %2016 = fsub fast float %2007, %2009
  %2017 = extractvalue %dx.types.CBufRet.f32 %1998, 0
  %2018 = extractvalue %dx.types.CBufRet.f32 %1998, 1
  %2019 = fmul fast float %2017, %2015
  %2020 = fmul fast float %2018, %2016
  %2021 = fmul fast float %2019, %2019
  %2022 = fmul fast float %2020, %2020
  %2023 = fadd fast float %2021, %2022
  %2024 = call float @dx.op.unary.f32(i32 24, float %2023)  ; Sqrt(value)
  %2025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2026 = extractvalue %dx.types.CBufRet.f32 %2025, 3
  %2027 = fmul fast float %2026, %2024
  %2028 = call float @dx.op.unary.f32(i32 7, float %2027)  ; Saturate(value)
  %2029 = extractvalue %dx.types.CBufRet.f32 %2025, 2
  %2030 = fsub fast float %2029, %2014
  %2031 = fmul fast float %2030, %2028
  %2032 = extractvalue %dx.types.CBufRet.f32 %2012, 1
  %2033 = fsub fast float %1900, %2014
  %2034 = fsub fast float %2033, %2032
  %2035 = fsub fast float %2034, %2031
  %2036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2037 = extractvalue %dx.types.CBufRet.f32 %2036, 2
  %2038 = fsub fast float %2035, %2037
  %2039 = fcmp fast olt float %2038, 0.000000e+00
  %2040 = call float @dx.op.unary.f32(i32 6, float %2038)  ; FAbs(value)
  %2041 = extractvalue %dx.types.CBufRet.i32 %1993, 0
  %2042 = icmp eq i32 %2041, 0
  br i1 %2042, label %2096, label %2043

; <label>:2043                                    ; preds = %1997
  br label %2044

; <label>:2044                                    ; preds = %2083, %2043
  %2045 = phi i32 [ %2089, %2083 ], [ 1, %2043 ]
  %2046 = phi float [ %2091, %2083 ], [ 0x47EFFFFFE0000000, %2043 ]
  %2047 = phi i32 [ %2092, %2083 ], [ 0, %2043 ]
  %2048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2049 = extractvalue %dx.types.CBufRet.f32 %2048, 1
  %2050 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2051 = extractvalue %dx.types.CBufRet.i32 %2050, 1
  %2052 = and i32 %2051, 8
  %2053 = icmp eq i32 %2052, 0
  %2054 = fcmp fast ogt float %2049, %2035
  %2055 = or i1 %2054, %2053
  %2056 = add i32 %2047, 171
  %2057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 %2056)  ; CBufferLoadLegacy(handle,regIndex)
  %2058 = extractvalue %dx.types.CBufRet.f32 %2057, 0
  %2059 = extractvalue %dx.types.CBufRet.f32 %2057, 1
  %2060 = extractvalue %dx.types.CBufRet.f32 %2057, 2
  br i1 %2055, label %2061, label %2067, !dx.controlflow.hints !57

; <label>:2061                                    ; preds = %2044
  %2062 = fsub fast float %2058, %1896
  %2063 = fsub fast float %2059, %1898
  %2064 = fmul fast float %2062, %2062
  %2065 = fmul fast float %2063, %2063
  %2066 = fadd fast float %2064, %2065
  br label %2083

; <label>:2067                                    ; preds = %2044
  %2068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2069 = extractvalue %dx.types.CBufRet.f32 %2068, 2
  %2070 = extractvalue %dx.types.CBufRet.f32 %2048, 2
  %2071 = fmul fast float %2070, %2069
  %2072 = fsub fast float %2071, %2049
  %2073 = fdiv fast float %2060, %2072
  %2074 = fsub fast float %1896, %2058
  %2075 = fsub fast float %1898, %2059
  %2076 = fsub fast float %2035, %2049
  %2077 = fmul fast float %2073, %2076
  %2078 = fmul fast float %2074, %2074
  %2079 = fmul fast float %2075, %2075
  %2080 = fadd fast float %2078, %2079
  %2081 = fmul fast float %2077, %2077
  %2082 = fadd fast float %2080, %2081
  br label %2083

; <label>:2083                                    ; preds = %2067, %2061
  %2084 = phi float [ %2066, %2061 ], [ %2082, %2067 ]
  %2085 = call float @dx.op.unary.f32(i32 24, float %2084)  ; Sqrt(value)
  %2086 = fsub float %2060, %2085
  %2087 = fcmp fast olt float %2086, 0.000000e+00
  %2088 = zext i1 %2087 to i32
  %2089 = and i32 %2088, %2045
  %2090 = call float @dx.op.unary.f32(i32 6, float %2086)  ; FAbs(value)
  %2091 = call float @dx.op.binary.f32(i32 36, float %2046, float %2090)  ; FMin(a,b)
  %2092 = add i32 %2047, 1
  %2093 = extractvalue %dx.types.CBufRet.i32 %2050, 0
  %2094 = icmp ult i32 %2092, %2093
  br i1 %2094, label %2044, label %2095

; <label>:2095                                    ; preds = %2083
  br label %2096

; <label>:2096                                    ; preds = %2095, %1997
  %2097 = phi i32 [ 1, %1997 ], [ %2089, %2095 ]
  %2098 = phi float [ 0x47EFFFFFE0000000, %1997 ], [ %2091, %2095 ]
  br label %2099

; <label>:2099                                    ; preds = %2099, %2096
  %2100 = phi i32 [ %2097, %2096 ], [ %2139, %2099 ]
  %2101 = phi float [ 0x47EFFFFFE0000000, %2096 ], [ %2141, %2099 ]
  %2102 = phi i32 [ 0, %2096 ], [ %2142, %2099 ]
  %2103 = add nuw nsw i32 %2102, 191
  %2104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 %2103)  ; CBufferLoadLegacy(handle,regIndex)
  %2105 = extractvalue %dx.types.CBufRet.f32 %2104, 0
  %2106 = extractvalue %dx.types.CBufRet.f32 %2104, 1
  %2107 = extractvalue %dx.types.CBufRet.f32 %2104, 2
  %2108 = add nuw nsw i32 %2102, 195
  %2109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 %2108)  ; CBufferLoadLegacy(handle,regIndex)
  %2110 = extractvalue %dx.types.CBufRet.f32 %2109, 0
  %2111 = extractvalue %dx.types.CBufRet.f32 %2109, 1
  %2112 = extractvalue %dx.types.CBufRet.f32 %2109, 2
  %2113 = fsub fast float %1896, %2105
  %2114 = fsub fast float %1898, %2106
  %2115 = fsub fast float %2035, %2107
  %2116 = call float @dx.op.unary.f32(i32 6, float %2113)  ; FAbs(value)
  %2117 = call float @dx.op.unary.f32(i32 6, float %2114)  ; FAbs(value)
  %2118 = call float @dx.op.unary.f32(i32 6, float %2115)  ; FAbs(value)
  %2119 = fsub fast float %2116, %2110
  %2120 = fsub fast float %2117, %2111
  %2121 = fsub fast float %2118, %2112
  %2122 = call float @dx.op.binary.f32(i32 35, float %2119, float 0.000000e+00)  ; FMax(a,b)
  %2123 = call float @dx.op.binary.f32(i32 35, float %2120, float 0.000000e+00)  ; FMax(a,b)
  %2124 = call float @dx.op.binary.f32(i32 35, float %2121, float 0.000000e+00)  ; FMax(a,b)
  %2125 = fmul fast float %2122, %2122
  %2126 = fmul fast float %2123, %2123
  %2127 = fadd fast float %2126, %2125
  %2128 = fmul fast float %2124, %2124
  %2129 = fadd fast float %2127, %2128
  %2130 = call float @dx.op.unary.f32(i32 24, float %2129)  ; Sqrt(value)
  %2131 = call float @dx.op.binary.f32(i32 35, float %2120, float %2121)  ; FMax(a,b)
  %2132 = call float @dx.op.binary.f32(i32 35, float %2119, float %2131)  ; FMax(a,b)
  %2133 = call float @dx.op.binary.f32(i32 36, float %2132, float 0.000000e+00)  ; FMin(a,b)
  %2134 = fadd fast float %2133, %2130
  %2135 = fsub fast float -0.000000e+00, %2134
  %2136 = fcmp ogt float %2134, -0.000000e+00
  %2137 = icmp ne i32 %2100, 0
  %2138 = and i1 %2137, %2136
  %2139 = zext i1 %2138 to i32
  %2140 = call float @dx.op.unary.f32(i32 6, float %2135)  ; FAbs(value)
  %2141 = call float @dx.op.binary.f32(i32 36, float %2101, float %2140)  ; FMin(a,b)
  %2142 = add nuw nsw i32 %2102, 1
  %2143 = icmp eq i32 %2142, 4
  br i1 %2143, label %2144, label %2099

; <label>:2144                                    ; preds = %2099
  %2145 = call float @dx.op.binary.f32(i32 36, float %2040, float %2141)  ; FMin(a,b)
  %2146 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2147 = extractvalue %dx.types.CBufRet.i32 %2146, 1
  %2148 = and i32 %2147, 2
  %2149 = icmp ne i32 %2148, 0
  %2150 = xor i1 %2138, %2149
  %2151 = call float @dx.op.binary.f32(i32 36, float %2145, float %2098)  ; FMin(a,b)
  %2152 = and i1 %2150, %2039
  %2153 = zext i1 %2152 to i32
  br label %2154

; <label>:2154                                    ; preds = %2144, %1992
  %2155 = phi i32 [ %278, %1992 ], [ %2153, %2144 ]
  %2156 = phi float [ 0.000000e+00, %1992 ], [ %2151, %2144 ]
  %2157 = phi float [ %1900, %1992 ], [ %2035, %2144 ]
  %2158 = icmp ne i32 %2155, 0
  %2159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %2160 = extractvalue %dx.types.CBufRet.f32 %2159, 3
  %2161 = call float @dx.op.binary.f32(i32 35, float %2156, float %2160)  ; FMax(a,b)
  %2162 = call float @dx.op.binary.f32(i32 36, float %1991, float %2161)  ; FMin(a,b)
  %2163 = zext i1 %2158 to i32
  br label %2164

; <label>:2164                                    ; preds = %2154, %1990
  %2165 = phi i32 [ %2155, %2154 ], [ %278, %1990 ]
  %2166 = phi float [ %2157, %2154 ], [ %279, %1990 ]
  %2167 = phi float [ %2162, %2154 ], [ %1991, %1990 ]
  %2168 = phi i32 [ %2163, %2154 ], [ 0, %1990 ]
  %2169 = icmp eq i32 %1977, 0
  br i1 %2169, label %2243, label %2170, !dx.controlflow.hints !58

; <label>:2170                                    ; preds = %2164
  %2171 = fmul fast float %668, %1892
  %2172 = call float @dx.op.unary.f32(i32 23, float %2171)  ; Log(value)
  %2173 = fmul fast float %2172, 0x3FE62E4300000000
  %2174 = call float @dx.op.binary.f32(i32 35, float %2173, float 1.000000e+00)  ; FMax(a,b)
  %2175 = fmul fast float %2174, %2167
  %2176 = call float @dx.op.binary.f32(i32 36, float %2175, float %1976)  ; FMin(a,b)
  %2177 = call float @dx.op.binary.f32(i32 35, float %2176, float 0.000000e+00)  ; FMax(a,b)
  %2178 = fcmp fast ogt float %2177, 0x3F1A36E2E0000000
  %2179 = fadd fast float %1893, %1896
  %2180 = fadd fast float %1894, %1898
  %2181 = select i1 %2178, float %2179, float %1896
  %2182 = select i1 %2178, float %2180, float %1898
  %2183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %2184 = extractvalue %dx.types.CBufRet.f32 %2183, 0
  %2185 = extractvalue %dx.types.CBufRet.f32 %2183, 1
  %2186 = fsub fast float %2181, %2184
  %2187 = fsub fast float %2182, %2185
  %2188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %2189 = extractvalue %dx.types.CBufRet.f32 %2188, 0
  %2190 = extractvalue %dx.types.CBufRet.f32 %2188, 1
  %2191 = fmul fast float %2186, %2189
  %2192 = fmul fast float %2187, %2190
  %2193 = fsub fast float 1.000000e+00, %2192
  %2194 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %2195 = extractvalue %dx.types.CBufRet.i32 %2194, 3
  %2196 = icmp eq i32 %2195, 0
  br i1 %2196, label %2203, label %2197, !dx.controlflow.hints !49

; <label>:2197                                    ; preds = %2170
  %2198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %18, float %2191, float %2193, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2199 = extractvalue %dx.types.ResRet.f32 %2198, 0
  %2200 = extractvalue %dx.types.ResRet.f32 %2198, 1
  %2201 = extractvalue %dx.types.ResRet.f32 %2198, 2
  %2202 = extractvalue %dx.types.ResRet.f32 %2198, 3
  br label %2209

; <label>:2203                                    ; preds = %2170
  %2204 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %19, float %2191, float %2193, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2205 = extractvalue %dx.types.ResRet.f32 %2204, 0
  %2206 = extractvalue %dx.types.ResRet.f32 %2204, 1
  %2207 = extractvalue %dx.types.ResRet.f32 %2204, 2
  %2208 = extractvalue %dx.types.ResRet.f32 %2204, 3
  br label %2209

; <label>:2209                                    ; preds = %2203, %2197
  %2210 = phi float [ %2199, %2197 ], [ %2205, %2203 ]
  %2211 = phi float [ %2200, %2197 ], [ %2206, %2203 ]
  %2212 = phi float [ %2201, %2197 ], [ %2207, %2203 ]
  %2213 = phi float [ %2202, %2197 ], [ %2208, %2203 ]
  %2214 = extractvalue %dx.types.CBufRet.f32 %2188, 3
  %2215 = fmul fast float %2214, %2211
  %2216 = fmul fast float %2215, %2210
  %2217 = fsub fast float %2215, %2216
  %2218 = fcmp fast ole float %2217, 0.000000e+00
  %2219 = extractvalue %dx.types.CBufRet.f32 %2183, 2
  %2220 = fadd fast float %2216, %2219
  %2221 = fmul fast float %2214, %2212
  %2222 = fadd fast float %2221, %2219
  %2223 = fdiv fast float 1.000000e+00, %2217
  %2224 = select i1 %2218, float 1.000000e+06, float %2223
  %2225 = fsub fast float %1900, %2220
  %2226 = fmul fast float %2224, %2225
  %2227 = call float @dx.op.unary.f32(i32 7, float %2226)  ; Saturate(value)
  %2228 = extractvalue %dx.types.CBufRet.f32 %2188, 2
  %2229 = fmul fast float %2228, %2227
  %2230 = fsub fast float %2228, %2229
  %2231 = fcmp fast olt float %1900, %2222
  %2232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %2233 = extractvalue %dx.types.CBufRet.f32 %2232, 3
  %2234 = fmul fast float %2233, 3.000000e+00
  %2235 = select i1 %2231, float %2234, float 3.000000e+00
  %2236 = fmul fast float %2230, %2235
  %2237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %2238 = extractvalue %dx.types.CBufRet.f32 %2237, 2
  %2239 = fmul fast float %1892, 0x3FD5555560000000
  %2240 = fmul fast float %2239, %2213
  %2241 = fmul fast float %2240, %2238
  %2242 = fmul fast float %2241, %2236
  br label %2243

; <label>:2243                                    ; preds = %2209, %2164
  %2244 = phi float [ %2242, %2209 ], [ 0.000000e+00, %2164 ]
  br i1 %475, label %2292, label %2245, !dx.controlflow.hints !60

; <label>:2245                                    ; preds = %2243
  %2246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %2247 = extractvalue %dx.types.CBufRet.f32 %2246, 0
  %2248 = fsub fast float %2247, %1900
  %2249 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1897, float %1899, float %2248)  ; Dot3(ax,ay,az,bx,by,bz)
  %2250 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1862, float %1863, float %1864)  ; Dot3(ax,ay,az,bx,by,bz)
  %2251 = fdiv fast float 1.000000e+00, %2250
  %2252 = fmul fast float %2251, %2249
  %2253 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2252)  ; FMax(a,b)
  %2254 = fcmp fast olt float %1864, 0.000000e+00
  %2255 = call float @dx.op.binary.f32(i32 36, float %1892, float %2253)  ; FMin(a,b)
  br i1 %2254, label %2257, label %2256, !dx.controlflow.hints !61

; <label>:2256                                    ; preds = %2245
  br label %2257

; <label>:2257                                    ; preds = %2256, %2245
  %2258 = phi float [ 0.000000e+00, %2256 ], [ %2255, %2245 ]
  %2259 = phi float [ %2255, %2256 ], [ %1892, %2245 ]
  %2260 = phi float [ %2255, %2256 ], [ 0.000000e+00, %2245 ]
  %2261 = phi float [ %1892, %2256 ], [ %2255, %2245 ]
  %2262 = fsub fast float %2259, %2258
  %2263 = extractvalue %dx.types.CBufRet.f32 %2246, 1
  %2264 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %2263)  ; FMin(a,b)
  %2265 = fsub fast float %1900, %2247
  %2266 = fmul fast float %2264, 0x3FF7154760000000
  %2267 = fmul fast float %2266, %2265
  %2268 = call float @dx.op.unary.f32(i32 21, float %2267)  ; Exp(value)
  %2269 = fmul fast float %1864, 0x3FF7154760000000
  %2270 = fmul fast float %2269, %2261
  %2271 = fmul fast float %2270, %2264
  %2272 = call float @dx.op.unary.f32(i32 21, float %2271)  ; Exp(value)
  %2273 = fmul fast float %2269, %2260
  %2274 = fmul fast float %2273, %2264
  %2275 = call float @dx.op.unary.f32(i32 21, float %2274)  ; Exp(value)
  %2276 = fsub fast float %2272, %2275
  %2277 = fmul fast float %2276, %2268
  %2278 = fmul fast float %2264, %1864
  %2279 = fdiv fast float %2277, %2278
  %2280 = fadd fast float %2262, %2279
  %2281 = call float @dx.op.unary.f32(i32 6, float %1864)  ; FAbs(value)
  %2282 = fcmp fast olt float %2281, 0x3F0FFB4800000000
  %2283 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2265)  ; FMax(a,b)
  %2284 = fmul fast float %2283, 0x3FF7154760000000
  %2285 = fmul fast float %2284, %2263
  %2286 = call float @dx.op.unary.f32(i32 21, float %2285)  ; Exp(value)
  %2287 = fmul fast float %2286, %1892
  %2288 = select i1 %2282, float %2287, float %2280
  %2289 = extractvalue %dx.types.CBufRet.f32 %1757, 1
  %2290 = fmul fast float %2288, %2289
  %2291 = fadd fast float %2290, %2244
  br label %2292

; <label>:2292                                    ; preds = %2257, %2243
  %2293 = phi float [ %2291, %2257 ], [ %2244, %2243 ]
  %2294 = icmp eq i32 %2168, 0
  br i1 %2294, label %2326, label %2295, !dx.controlflow.hints !62

; <label>:2295                                    ; preds = %2292
  %2296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %2297 = extractvalue %dx.types.CBufRet.f32 %2296, 1
  %2298 = fsub fast float %1892, %2297
  %2299 = extractvalue %dx.types.CBufRet.f32 %2296, 3
  %2300 = fmul fast float %2298, %2299
  %2301 = call float @dx.op.unary.f32(i32 7, float %2300)  ; Saturate(value)
  %2302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %2303 = extractvalue %dx.types.CBufRet.f32 %2302, 3
  %2304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2305 = extractvalue %dx.types.CBufRet.f32 %2304, 2
  %2306 = fsub fast float %2305, %2166
  %2307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %2308 = extractvalue %dx.types.CBufRet.f32 %2307, 3
  %2309 = fmul fast float %2306, %2308
  %2310 = call float @dx.op.unary.f32(i32 7, float %2309)  ; Saturate(value)
  %2311 = fmul fast float %2310, %2303
  %2312 = extractvalue %dx.types.CBufRet.f32 %2307, 0
  %2313 = fsub fast float %1892, %2312
  %2314 = extractvalue %dx.types.CBufRet.f32 %2307, 1
  %2315 = fmul fast float %2313, %2314
  %2316 = call float @dx.op.unary.f32(i32 7, float %2315)  ; Saturate(value)
  %2317 = fsub fast float 1.000000e+00, %2301
  %2318 = fmul fast float %2316, %2317
  %2319 = fadd fast float %2318, %2301
  %2320 = extractvalue %dx.types.CBufRet.f32 %2296, 0
  %2321 = fsub fast float %2311, %2320
  %2322 = fmul fast float %2321, %2319
  %2323 = fadd fast float %2322, %2320
  %2324 = fmul fast float %2323, %1892
  %2325 = fadd fast float %2324, %2293
  br label %2326

; <label>:2326                                    ; preds = %2295, %2292
  %2327 = phi float [ %2325, %2295 ], [ %2293, %2292 ]
  %2328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %2329 = extractvalue %dx.types.CBufRet.f32 %2328, 3
  %2330 = fmul fast float %2327, 0xBFF7154760000000
  %2331 = fmul fast float %2330, %2329
  %2332 = call float @dx.op.unary.f32(i32 21, float %2331)  ; Exp(value)
  %2333 = call float @dx.op.unary.f32(i32 7, float %2332)  ; Saturate(value)
  %2334 = fmul fast float %2333, %1888
  %2335 = fmul fast float %2333, %1889
  %2336 = fmul fast float %2333, %1890
  %2337 = fadd fast float %2334, %1856
  %2338 = fadd fast float %2335, %1857
  %2339 = fadd fast float %2336, %1858
  %2340 = fsub fast float 1.000000e+00, %925
  %2341 = fmul fast float %917, %283
  %2342 = fmul fast float %2341, %2340
  %2343 = fmul fast float %2342, %2337
  %2344 = fmul fast float %918, %283
  %2345 = fmul fast float %2344, %2340
  %2346 = fmul fast float %2345, %2338
  %2347 = fmul fast float %919, %283
  %2348 = fmul fast float %2347, %2340
  %2349 = fmul fast float %2348, %2339
  %2350 = fadd fast float %2343, %284
  %2351 = fadd fast float %2346, %285
  %2352 = fadd fast float %2349, %286
  %2353 = fdiv fast float %901, %678
  %2354 = fadd fast float %678, %290
  %2355 = fmul fast float %290, %290
  %2356 = fmul fast float %2354, %2354
  %2357 = fsub fast float %2355, %2356
  %2358 = fmul fast float %2357, -5.000000e-01
  %2359 = fmul fast float %2358, %2353
  %2360 = fadd fast float %2359, %282
  %2361 = fadd fast float %901, %292
  %2362 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2363 = extractvalue %dx.types.CBufRet.i32 %2362, 0
  %2364 = icmp eq i32 %2363, 0
  br i1 %2364, label %2391, label %2365, !dx.controlflow.hints !78

; <label>:2365                                    ; preds = %2326
  %2366 = icmp ne i32 %297, 0
  %2367 = zext i1 %2366 to i32
  %2368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2369 = extractvalue %dx.types.CBufRet.f32 %2368, 2
  %2370 = extractvalue %dx.types.CBufRet.f32 %2368, 0
  %2371 = fsub fast float %2354, %2370
  %2372 = fmul fast float %2371, %2369
  %2373 = call float @dx.op.unary.f32(i32 7, float %2372)  ; Saturate(value)
  %2374 = fadd fast float %2373, -5.000000e-01
  %2375 = fmul fast float %2374, 2.000000e+00
  %2376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2377 = extractvalue %dx.types.CBufRet.f32 %2376, 2
  %2378 = fcmp fast olt float %2375, %2377
  br i1 %2378, label %2379, label %2391, !dx.controlflow.hints !79

; <label>:2379                                    ; preds = %2365
  %2380 = fmul fast float %2375, %2375
  %2381 = fmul fast float %2340, %283
  %2382 = fmul fast float %2375, %2381
  %2383 = fmul fast float %2380, %2381
  %2384 = fmul fast float %2382, %2380
  %2385 = fmul fast float %2380, %2380
  %2386 = fmul fast float %2385, %2381
  %2387 = fadd fast float %2382, %293
  %2388 = fadd fast float %2383, %294
  %2389 = fadd fast float %2384, %295
  %2390 = fadd fast float %2386, %296
  br label %2391

; <label>:2391                                    ; preds = %2379, %2365, %2326
  %2392 = phi float [ %293, %2326 ], [ %2387, %2379 ], [ %293, %2365 ]
  %2393 = phi float [ %294, %2326 ], [ %2388, %2379 ], [ %294, %2365 ]
  %2394 = phi float [ %295, %2326 ], [ %2389, %2379 ], [ %295, %2365 ]
  %2395 = phi float [ %296, %2326 ], [ %2390, %2379 ], [ %296, %2365 ]
  %2396 = phi i32 [ %297, %2326 ], [ 1, %2379 ], [ %2367, %2365 ]
  %2397 = fmul fast float %925, %283
  br label %2398

; <label>:2398                                    ; preds = %2391, %920
  %2399 = phi float [ %921, %920 ], [ %2354, %2391 ]
  %2400 = phi i32 [ %278, %920 ], [ %2165, %2391 ]
  %2401 = phi float [ %279, %920 ], [ %2166, %2391 ]
  %2402 = phi float [ %282, %920 ], [ %2360, %2391 ]
  %2403 = phi float [ %283, %920 ], [ %2397, %2391 ]
  %2404 = phi float [ %284, %920 ], [ %2350, %2391 ]
  %2405 = phi float [ %285, %920 ], [ %2351, %2391 ]
  %2406 = phi float [ %286, %920 ], [ %2352, %2391 ]
  %2407 = phi float [ %292, %920 ], [ %2361, %2391 ]
  %2408 = phi float [ %293, %920 ], [ %2392, %2391 ]
  %2409 = phi float [ %294, %920 ], [ %2393, %2391 ]
  %2410 = phi float [ %295, %920 ], [ %2394, %2391 ]
  %2411 = phi float [ %296, %920 ], [ %2395, %2391 ]
  %2412 = phi i32 [ %297, %920 ], [ %2396, %2391 ]
  %2413 = fmul fast float %678, %111
  %2414 = fmul fast float %678, %112
  %2415 = fmul fast float %678, %113
  %2416 = fadd fast float %2413, %287
  %2417 = fadd fast float %2414, %288
  %2418 = fadd fast float %2415, %289
  %2419 = fcmp fast olt float %2399, %255
  %2420 = extractvalue %dx.types.CBufRet.f32 %906, 2
  %2421 = fcmp fast olt float %2420, %2403
  %2422 = and i1 %2419, %2421
  br i1 %2422, label %277, label %2423

; <label>:2423                                    ; preds = %2398
  br label %2424

; <label>:2424                                    ; preds = %2423, %251
  %2425 = phi float [ 0.000000e+00, %251 ], [ %2402, %2423 ]
  %2426 = phi float [ 1.000000e+00, %251 ], [ %2403, %2423 ]
  %2427 = phi float [ 0.000000e+00, %251 ], [ %2404, %2423 ]
  %2428 = phi float [ 0.000000e+00, %251 ], [ %2405, %2423 ]
  %2429 = phi float [ 0.000000e+00, %251 ], [ %2406, %2423 ]
  %2430 = phi float [ 0.000000e+00, %251 ], [ %2407, %2423 ]
  %2431 = phi float [ 0.000000e+00, %251 ], [ %2408, %2423 ]
  %2432 = phi float [ 0.000000e+00, %251 ], [ %2409, %2423 ]
  %2433 = phi float [ 0.000000e+00, %251 ], [ %2410, %2423 ]
  %2434 = phi float [ 0.000000e+00, %251 ], [ %2411, %2423 ]
  %2435 = phi i32 [ 0, %251 ], [ %2412, %2423 ]
  %2436 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2437 = extractvalue %dx.types.CBufRet.i32 %2436, 0
  %2438 = icmp eq i32 %2437, 0
  br i1 %2438, label %2480, label %2439, !dx.controlflow.hints !80

; <label>:2439                                    ; preds = %2424
  %2440 = icmp eq i32 %2435, 0
  br i1 %2440, label %2479, label %2441, !dx.controlflow.hints !81

; <label>:2441                                    ; preds = %2439
  %2442 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2443 = extractvalue %dx.types.CBufRet.i32 %2442, 2
  %2444 = icmp eq i32 %2443, 0
  br i1 %2444, label %2451, label %2445, !dx.controlflow.hints !82

; <label>:2445                                    ; preds = %2441
  %2446 = fsub fast float 1.000000e+00, %2426
  %2447 = fdiv fast float %2431, %2446
  %2448 = fdiv fast float %2432, %2446
  %2449 = fdiv fast float %2433, %2446
  %2450 = fdiv fast float %2434, %2446
  br label %2456

; <label>:2451                                    ; preds = %2441
  %2452 = fadd fast float %2431, %2426
  %2453 = fadd fast float %2432, %2426
  %2454 = fadd fast float %2433, %2426
  %2455 = fadd fast float %2434, %2426
  br label %2456

; <label>:2456                                    ; preds = %2451, %2445
  %2457 = phi float [ %2447, %2445 ], [ %2452, %2451 ]
  %2458 = phi float [ %2448, %2445 ], [ %2453, %2451 ]
  %2459 = phi float [ %2449, %2445 ], [ %2454, %2451 ]
  %2460 = phi float [ %2450, %2445 ], [ %2455, %2451 ]
  %2461 = call float @dx.op.binary.f32(i32 35, float %2457, float -1.000000e+00)  ; FMax(a,b)
  %2462 = call float @dx.op.binary.f32(i32 35, float %2458, float -1.000000e+00)  ; FMax(a,b)
  %2463 = call float @dx.op.binary.f32(i32 35, float %2459, float -1.000000e+00)  ; FMax(a,b)
  %2464 = call float @dx.op.binary.f32(i32 35, float %2460, float -1.000000e+00)  ; FMax(a,b)
  %2465 = call float @dx.op.binary.f32(i32 36, float %2461, float 1.000000e+00)  ; FMin(a,b)
  %2466 = call float @dx.op.binary.f32(i32 36, float %2462, float 1.000000e+00)  ; FMin(a,b)
  %2467 = call float @dx.op.binary.f32(i32 36, float %2463, float 1.000000e+00)  ; FMin(a,b)
  %2468 = call float @dx.op.binary.f32(i32 36, float %2464, float 1.000000e+00)  ; FMin(a,b)
  %2469 = fmul fast float %2465, 1.500000e+00
  %2470 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %2467, float %2469)  ; FMad(a,b,c)
  %2471 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %2466, float 0.000000e+00)  ; FMad(a,b,c)
  %2472 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %2468, float %2471)  ; FMad(a,b,c)
  %2473 = fmul fast float %2465, 0x3FEBB67AE0000000
  %2474 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %2467, float %2473)  ; FMad(a,b,c)
  %2475 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2466, float 0.000000e+00)  ; FMad(a,b,c)
  %2476 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2468, float %2475)  ; FMad(a,b,c)
  %2477 = fadd fast float %2470, 5.000000e-01
  %2478 = fadd fast float %2474, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %22, i32 %23, i32 0, float %2477, float %2472, float %2478, float %2476, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2480

; <label>:2479                                    ; preds = %2439
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %22, i32 %23, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2480

; <label>:2480                                    ; preds = %2479, %2456, %2424
  %2481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2482 = extractvalue %dx.types.CBufRet.f32 %2481, 2
  %2483 = fsub fast float %2426, %2482
  %2484 = fdiv fast float %2483, %2482
  %2485 = call float @dx.op.unary.f32(i32 7, float %2484)  ; Saturate(value)
  %2486 = fmul fast float %2485, 2.000000e+00
  %2487 = fsub fast float 3.000000e+00, %2486
  %2488 = fmul fast float %2485, %2485
  %2489 = fmul fast float %2488, %2426
  %2490 = fmul fast float %2489, %2487
  %2491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %2492 = extractvalue %dx.types.CBufRet.f32 %2491, 0
  %2493 = extractvalue %dx.types.CBufRet.f32 %2491, 1
  %2494 = extractvalue %dx.types.CBufRet.f32 %2491, 2
  %2495 = call float @dx.op.dot3.f32(i32 55, float %111, float %112, float %113, float %2492, float %2493, float %2494)  ; Dot3(ax,ay,az,bx,by,bz)
  %2496 = fmul fast float %2495, %2425
  %2497 = fcmp fast ogt float %2430, 0.000000e+00
  %2498 = fdiv fast float 1.000000e+00, %2430
  %2499 = fmul fast float %2496, %2498
  %2500 = select i1 %2497, float %2499, float %122
  %2501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2502 = extractvalue %dx.types.CBufRet.f32 %2501, 0
  %2503 = extractvalue %dx.types.CBufRet.f32 %2501, 1
  %2504 = extractvalue %dx.types.CBufRet.f32 %2501, 2
  %2505 = fmul fast float %2502, %75
  %2506 = fmul fast float %2503, %75
  %2507 = fmul fast float %2504, %75
  %2508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2509 = extractvalue %dx.types.CBufRet.f32 %2508, 0
  %2510 = extractvalue %dx.types.CBufRet.f32 %2508, 1
  %2511 = extractvalue %dx.types.CBufRet.f32 %2508, 2
  %2512 = fmul fast float %2509, %76
  %2513 = fmul fast float %2510, %76
  %2514 = fmul fast float %2511, %76
  %2515 = fadd fast float %2512, %2505
  %2516 = fadd fast float %2513, %2506
  %2517 = fadd fast float %2514, %2507
  %2518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2519 = extractvalue %dx.types.CBufRet.f32 %2518, 0
  %2520 = extractvalue %dx.types.CBufRet.f32 %2518, 1
  %2521 = extractvalue %dx.types.CBufRet.f32 %2518, 2
  %2522 = fadd fast float %2515, %2519
  %2523 = fadd fast float %2516, %2520
  %2524 = fadd fast float %2517, %2521
  %2525 = fmul fast float %2522, %2500
  %2526 = fmul fast float %2523, %2500
  %2527 = fmul fast float %2524, %2500
  %2528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %2529 = extractvalue %dx.types.CBufRet.f32 %2528, 0
  %2530 = extractvalue %dx.types.CBufRet.f32 %2528, 1
  %2531 = extractvalue %dx.types.CBufRet.f32 %2528, 2
  %2532 = extractvalue %dx.types.CBufRet.f32 %2528, 3
  %2533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %2534 = extractvalue %dx.types.CBufRet.f32 %2533, 0
  %2535 = extractvalue %dx.types.CBufRet.f32 %2533, 1
  %2536 = extractvalue %dx.types.CBufRet.f32 %2533, 2
  %2537 = extractvalue %dx.types.CBufRet.f32 %2533, 3
  %2538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %2539 = extractvalue %dx.types.CBufRet.f32 %2538, 0
  %2540 = extractvalue %dx.types.CBufRet.f32 %2538, 1
  %2541 = extractvalue %dx.types.CBufRet.f32 %2538, 2
  %2542 = extractvalue %dx.types.CBufRet.f32 %2538, 3
  %2543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %2544 = extractvalue %dx.types.CBufRet.f32 %2543, 0
  %2545 = extractvalue %dx.types.CBufRet.f32 %2543, 1
  %2546 = extractvalue %dx.types.CBufRet.f32 %2543, 2
  %2547 = extractvalue %dx.types.CBufRet.f32 %2543, 3
  %2548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %2549 = extractvalue %dx.types.CBufRet.f32 %2548, 3
  %2550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %2551 = extractvalue %dx.types.CBufRet.f32 %2550, 3
  %2552 = extractvalue %dx.types.CBufRet.f32 %2550, 0
  %2553 = extractvalue %dx.types.CBufRet.f32 %2550, 1
  %2554 = extractvalue %dx.types.CBufRet.f32 %2550, 2
  %2555 = fcmp fast olt float %2554, -5.000000e-01
  %2556 = call float @dx.op.dot3.f32(i32 55, float %2525, float %2526, float %2527, float %2525, float %2526, float %2527)  ; Dot3(ax,ay,az,bx,by,bz)
  %2557 = call float @dx.op.unary.f32(i32 25, float %2556)  ; Rsqrt(value)
  %2558 = fmul fast float %2557, %2556
  %2559 = fmul fast float %2557, %2525
  %2560 = fmul fast float %2557, %2526
  %2561 = fmul fast float %2557, %2527
  %2562 = fadd fast float %2558, %2532
  %2563 = call float @dx.op.dot3.f32(i32 55, float %2559, float %2560, float %2561, float %2529, float %2530, float %2531)  ; Dot3(ax,ay,az,bx,by,bz)
  %2564 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2565 = extractvalue %dx.types.CBufRet.i32 %2564, 1
  %2566 = and i32 %2565, 1
  %2567 = icmp ne i32 %2566, 0
  %2568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %2569 = extractvalue %dx.types.CBufRet.f32 %2568, 2
  %2570 = fcmp fast ogt float %2569, 0.000000e+00
  %2571 = and i1 %2567, %2570
  br i1 %2571, label %2572, label %2978, !dx.controlflow.hints !83

; <label>:2572                                    ; preds = %2480
  %2573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %2574 = extractvalue %dx.types.CBufRet.f32 %2573, 3
  %2575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2576 = extractvalue %dx.types.CBufRet.f32 %2575, 2
  %2577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2578 = extractvalue %dx.types.CBufRet.f32 %2577, 2
  %2579 = fsub fast float %2576, %2578
  %2580 = and i32 %2565, 2
  %2581 = extractvalue %dx.types.CBufRet.i32 %2564, 0
  %2582 = call i32 @dx.op.binary.i32(i32 40, i32 %2581, i32 3)  ; UMin(a,b)
  %2583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2584 = extractvalue %dx.types.CBufRet.f32 %2583, 0
  %2585 = extractvalue %dx.types.CBufRet.f32 %2583, 1
  %2586 = extractvalue %dx.types.CBufRet.f32 %2577, 0
  %2587 = extractvalue %dx.types.CBufRet.f32 %2577, 1
  %2588 = fsub fast float %2584, %2586
  %2589 = fsub fast float %2585, %2587
  %2590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2591 = extractvalue %dx.types.CBufRet.f32 %2590, 0
  %2592 = fcmp fast ogt float %2591, 0.000000e+00
  %2593 = fsub fast float -0.000000e+00, %2588
  %2594 = fsub fast float -0.000000e+00, %2589
  %2595 = call float @dx.op.dot2.f32(i32 54, float %2559, float %2560, float %2559, float %2560)  ; Dot2(ax,ay,bx,by)
  %2596 = call float @dx.op.dot2.f32(i32 54, float %2559, float %2560, float %2593, float %2594)  ; Dot2(ax,ay,bx,by)
  %2597 = fmul fast float %2596, 2.000000e+00
  %2598 = call float @dx.op.dot2.f32(i32 54, float %2593, float %2594, float %2593, float %2594)  ; Dot2(ax,ay,bx,by)
  %2599 = fmul fast float %2591, %2591
  %2600 = fsub fast float %2598, %2599
  %2601 = fmul fast float %2597, %2597
  %2602 = fmul fast float %2595, 4.000000e+00
  %2603 = fmul fast float %2602, %2600
  %2604 = fsub fast float %2601, %2603
  %2605 = fcmp fast ogt float %2604, 0.000000e+00
  br i1 %2605, label %2606, label %2621, !dx.controlflow.hints !84

; <label>:2606                                    ; preds = %2572
  %2607 = fcmp fast ogt float %2597, 0.000000e+00
  %2608 = call float @dx.op.unary.f32(i32 24, float %2604)  ; Sqrt(value)
  %2609 = fsub fast float -0.000000e+00, %2608
  %2610 = select i1 %2607, float %2608, float %2609
  %2611 = fadd fast float %2610, %2597
  %2612 = fmul float %2611, -5.000000e-01
  %2613 = fdiv fast float %2612, %2595
  %2614 = call float @dx.op.binary.f32(i32 35, float %2613, float 0.000000e+00)  ; FMax(a,b)
  %2615 = call float @dx.op.binary.f32(i32 36, float %2558, float %2614)  ; FMin(a,b)
  %2616 = fdiv fast float %2600, %2612
  %2617 = call float @dx.op.binary.f32(i32 35, float %2616, float 0.000000e+00)  ; FMax(a,b)
  %2618 = call float @dx.op.binary.f32(i32 36, float %2558, float %2617)  ; FMin(a,b)
  %2619 = call float @dx.op.binary.f32(i32 36, float %2615, float %2618)  ; FMin(a,b)
  %2620 = call float @dx.op.binary.f32(i32 35, float %2615, float %2618)  ; FMax(a,b)
  br label %2621

; <label>:2621                                    ; preds = %2606, %2572
  %2622 = phi float [ %2620, %2606 ], [ -1.000000e+00, %2572 ]
  %2623 = phi float [ %2619, %2606 ], [ -1.000000e+00, %2572 ]
  %2624 = phi i1 [ true, %2606 ], [ false, %2572 ]
  %2625 = and i1 %2592, %2624
  br i1 %2625, label %2626, label %2628, !dx.controlflow.hints !85

; <label>:2626                                    ; preds = %2621
  %2627 = fcmp fast oeq float %2623, %2622
  br i1 %2627, label %2931, label %2629, !dx.controlflow.hints !86

; <label>:2628                                    ; preds = %2621
  br i1 %2592, label %2931, label %2629, !dx.controlflow.hints !87

; <label>:2629                                    ; preds = %2628, %2626
  %2630 = phi float [ %2558, %2628 ], [ %2622, %2626 ]
  %2631 = phi float [ 0.000000e+00, %2628 ], [ %2623, %2626 ]
  %2632 = icmp ne i32 %2580, 0
  %2633 = fmul fast float %2630, %2561
  %2634 = fadd fast float %2633, %2574
  %2635 = fmul fast float %2634, %2630
  %2636 = select i1 %2632, float 0.000000e+00, float %2635
  %2637 = fcmp fast oeq float %2561, 0.000000e+00
  %2638 = fdiv fast float %2579, %2561
  %2639 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2638)  ; FMax(a,b)
  %2640 = select i1 %2637, float %2630, float %2639
  %2641 = call float @dx.op.binary.f32(i32 36, float %2630, float %2640)  ; FMin(a,b)
  %2642 = fcmp fast ogt float %2561, 0.000000e+00
  %2643 = fcmp fast olt float %2579, 0.000000e+00
  br i1 %2642, label %2644, label %2701, !dx.controlflow.hints !88

; <label>:2644                                    ; preds = %2629
  %2645 = icmp eq i32 %2580, 0
  br i1 %2643, label %2646, label %2690, !dx.controlflow.hints !89

; <label>:2646                                    ; preds = %2644
  %2647 = select i1 %2645, float %2630, float 0.000000e+00
  %2648 = fsub fast float -0.000000e+00, %2647
  %2649 = call float @dx.op.unary.f32(i32 6, float %2648)  ; FAbs(value)
  %2650 = fmul fast float %2647, %2561
  %2651 = fadd fast float %2650, %2574
  %2652 = fmul fast float %2649, %2651
  %2653 = fsub fast float %2636, %2652
  %2654 = fsub fast float %2630, %2649
  %2655 = select i1 %2645, float %2654, float 0.000000e+00
  %2656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2657 = extractvalue %dx.types.CBufRet.f32 %2656, 0
  %2658 = extractvalue %dx.types.CBufRet.f32 %2656, 1
  %2659 = extractvalue %dx.types.CBufRet.f32 %2656, 2
  %2660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2661 = extractvalue %dx.types.CBufRet.f32 %2660, 0
  %2662 = extractvalue %dx.types.CBufRet.f32 %2660, 1
  %2663 = extractvalue %dx.types.CBufRet.f32 %2660, 2
  %2664 = extractvalue %dx.types.CBufRet.f32 %2660, 3
  %2665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2666 = extractvalue %dx.types.CBufRet.f32 %2665, 3
  %2667 = call float @dx.op.binary.f32(i32 36, float %2653, float %2666)  ; FMin(a,b)
  %2668 = fmul fast float %2664, %2655
  %2669 = call float @dx.op.unary.f32(i32 7, float %2668)  ; Saturate(value)
  %2670 = fsub fast float %2661, %2657
  %2671 = fsub fast float %2662, %2658
  %2672 = fsub fast float %2663, %2659
  %2673 = fmul fast float %2669, %2670
  %2674 = fmul fast float %2669, %2671
  %2675 = fmul fast float %2669, %2672
  %2676 = fadd fast float %2673, %2657
  %2677 = fadd fast float %2674, %2658
  %2678 = fadd fast float %2675, %2659
  %2679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2680 = extractvalue %dx.types.CBufRet.f32 %2679, 0
  %2681 = extractvalue %dx.types.CBufRet.f32 %2679, 1
  %2682 = fadd fast float %2681, %2680
  %2683 = call float @dx.op.unary.f32(i32 7, float %2682)  ; Saturate(value)
  %2684 = extractvalue %dx.types.CBufRet.f32 %2679, 2
  %2685 = extractvalue %dx.types.CBufRet.f32 %2679, 3
  %2686 = fadd fast float %2685, %2684
  %2687 = call float @dx.op.unary.f32(i32 7, float %2686)  ; Saturate(value)
  %2688 = fmul fast float %2683, %2667
  %2689 = fmul fast float %2688, %2687
  br label %2931

; <label>:2690                                    ; preds = %2644
  br i1 %2645, label %2691, label %2712, !dx.controlflow.hints !90

; <label>:2691                                    ; preds = %2690
  %2692 = call float @dx.op.binary.f32(i32 36, float %2641, float %2631)  ; FMin(a,b)
  %2693 = fsub fast float %2641, %2692
  %2694 = fsub fast float %2693, %2630
  %2695 = call float @dx.op.unary.f32(i32 6, float %2694)  ; FAbs(value)
  %2696 = fadd fast float %2693, %2630
  %2697 = fmul fast float %2696, %2561
  %2698 = fadd fast float %2697, %2574
  %2699 = fmul fast float %2698, %2695
  %2700 = fsub fast float %2636, %2699
  br label %2712

; <label>:2701                                    ; preds = %2629
  br i1 %2643, label %2702, label %2712, !dx.controlflow.hints !91

; <label>:2702                                    ; preds = %2701
  %2703 = call float @dx.op.binary.f32(i32 35, float %2631, float %2641)  ; FMax(a,b)
  %2704 = icmp eq i32 %2580, 0
  %2705 = select i1 %2704, float %2641, float 0.000000e+00
  %2706 = fsub fast float -0.000000e+00, %2705
  %2707 = call float @dx.op.unary.f32(i32 6, float %2706)  ; FAbs(value)
  %2708 = fmul fast float %2705, %2561
  %2709 = fadd fast float %2708, %2574
  %2710 = fmul fast float %2707, %2709
  %2711 = fsub fast float %2636, %2710
  br label %2712

; <label>:2712                                    ; preds = %2702, %2701, %2691, %2690
  %2713 = phi float [ %2631, %2690 ], [ %2631, %2691 ], [ %2703, %2702 ], [ %2631, %2701 ]
  %2714 = phi float [ 0.000000e+00, %2690 ], [ %2695, %2691 ], [ %2707, %2702 ], [ 0.000000e+00, %2701 ]
  %2715 = phi float [ %2636, %2690 ], [ %2700, %2691 ], [ %2711, %2702 ], [ %2636, %2701 ]
  %2716 = phi float [ %2641, %2690 ], [ %2641, %2691 ], [ %2630, %2702 ], [ %2630, %2701 ]
  %2717 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 0
  store float -1.000000e+00, float* %2717, align 4, !tbaa !92, !noalias !96
  %2718 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 1
  store float -1.000000e+00, float* %2718, align 4, !tbaa !92, !noalias !96
  %2719 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 2
  store float -1.000000e+00, float* %2719, align 4, !tbaa !92, !noalias !96
  %2720 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 0
  store float -1.000000e+00, float* %2720, align 4, !tbaa !92, !noalias !96
  %2721 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 1
  store float -1.000000e+00, float* %2721, align 4, !tbaa !92, !noalias !96
  %2722 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 2
  store float -1.000000e+00, float* %2722, align 4, !tbaa !92, !noalias !96
  %2723 = icmp sgt i32 %2582, 0
  br i1 %2723, label %2724, label %2785

; <label>:2724                                    ; preds = %2712
  br label %2725

; <label>:2725                                    ; preds = %2774, %2724
  %2726 = phi i32 [ %2775, %2774 ], [ 0, %2724 ]
  %2727 = phi i32 [ %2776, %2774 ], [ 0, %2724 ]
  %2728 = add nuw i32 %2727, 171
  %2729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 %2728)  ; CBufferLoadLegacy(handle,regIndex)
  %2730 = extractvalue %dx.types.CBufRet.f32 %2729, 0
  %2731 = extractvalue %dx.types.CBufRet.f32 %2729, 1
  %2732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2733 = extractvalue %dx.types.CBufRet.f32 %2732, 0
  %2734 = extractvalue %dx.types.CBufRet.f32 %2732, 1
  %2735 = fsub fast float %2730, %2733
  %2736 = fsub fast float %2731, %2734
  %2737 = extractvalue %dx.types.CBufRet.f32 %2729, 2
  %2738 = fsub fast float -0.000000e+00, %2735
  %2739 = fsub fast float -0.000000e+00, %2736
  %2740 = call float @dx.op.dot2.f32(i32 54, float %2559, float %2560, float %2738, float %2739)  ; Dot2(ax,ay,bx,by)
  %2741 = fmul fast float %2740, 2.000000e+00
  %2742 = call float @dx.op.dot2.f32(i32 54, float %2738, float %2739, float %2738, float %2739)  ; Dot2(ax,ay,bx,by)
  %2743 = fmul fast float %2737, %2737
  %2744 = fsub fast float %2742, %2743
  %2745 = fmul fast float %2741, %2741
  %2746 = fmul fast float %2602, %2744
  %2747 = fsub fast float %2745, %2746
  %2748 = fcmp fast ogt float %2747, 0.000000e+00
  br i1 %2748, label %2749, label %2764, !dx.controlflow.hints !84

; <label>:2749                                    ; preds = %2725
  %2750 = fcmp fast ogt float %2741, 0.000000e+00
  %2751 = call float @dx.op.unary.f32(i32 24, float %2747)  ; Sqrt(value)
  %2752 = fsub fast float -0.000000e+00, %2751
  %2753 = select i1 %2750, float %2751, float %2752
  %2754 = fadd fast float %2753, %2741
  %2755 = fmul float %2754, -5.000000e-01
  %2756 = fdiv fast float %2755, %2595
  %2757 = call float @dx.op.binary.f32(i32 35, float %2756, float 0.000000e+00)  ; FMax(a,b)
  %2758 = call float @dx.op.binary.f32(i32 36, float %2630, float %2757)  ; FMin(a,b)
  %2759 = fdiv fast float %2744, %2755
  %2760 = call float @dx.op.binary.f32(i32 35, float %2759, float 0.000000e+00)  ; FMax(a,b)
  %2761 = call float @dx.op.binary.f32(i32 36, float %2630, float %2760)  ; FMin(a,b)
  %2762 = call float @dx.op.binary.f32(i32 36, float %2758, float %2761)  ; FMin(a,b)
  %2763 = call float @dx.op.binary.f32(i32 35, float %2758, float %2761)  ; FMax(a,b)
  br label %2764

; <label>:2764                                    ; preds = %2749, %2725
  %2765 = phi float [ %2763, %2749 ], [ -1.000000e+00, %2725 ]
  %2766 = phi float [ %2762, %2749 ], [ -1.000000e+00, %2725 ]
  %2767 = phi i1 [ true, %2749 ], [ false, %2725 ]
  br i1 %2767, label %2768, label %2774, !dx.controlflow.hints !107

; <label>:2768                                    ; preds = %2764
  %2769 = call float @dx.op.binary.f32(i32 35, float %2713, float %2766)  ; FMax(a,b)
  %2770 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 %2727
  store float %2769, float* %2770, align 4, !tbaa !92, !noalias !96
  %2771 = call float @dx.op.binary.f32(i32 35, float %2713, float %2765)  ; FMax(a,b)
  %2772 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 %2727
  store float %2771, float* %2772, align 4, !tbaa !92, !noalias !96
  %2773 = add nsw i32 %2726, 1
  br label %2774

; <label>:2774                                    ; preds = %2768, %2764
  %2775 = phi i32 [ %2773, %2768 ], [ %2726, %2764 ]
  %2776 = add nuw nsw i32 %2727, 1
  %2777 = icmp eq i32 %2776, %2582
  br i1 %2777, label %2778, label %2725

; <label>:2778                                    ; preds = %2774
  %2779 = load float, float* %2719, align 4, !tbaa !92, !alias.scope !108, !noalias !111
  %2780 = load float, float* %2718, align 4, !tbaa !92, !alias.scope !114, !noalias !115
  %2781 = load float, float* %2717, align 4, !tbaa !92, !alias.scope !116, !noalias !117
  %2782 = load float, float* %2722, align 4, !tbaa !92, !alias.scope !118, !noalias !121
  %2783 = load float, float* %2721, align 4, !tbaa !92, !alias.scope !124, !noalias !125
  %2784 = load float, float* %2720, align 4, !tbaa !92, !alias.scope !126, !noalias !127
  br label %2785

; <label>:2785                                    ; preds = %2778, %2712
  %2786 = phi float [ -1.000000e+00, %2712 ], [ %2784, %2778 ]
  %2787 = phi float [ -1.000000e+00, %2712 ], [ %2783, %2778 ]
  %2788 = phi float [ -1.000000e+00, %2712 ], [ %2782, %2778 ]
  %2789 = phi float [ -1.000000e+00, %2712 ], [ %2781, %2778 ]
  %2790 = phi float [ -1.000000e+00, %2712 ], [ %2780, %2778 ]
  %2791 = phi float [ -1.000000e+00, %2712 ], [ %2779, %2778 ]
  %2792 = phi i32 [ 0, %2712 ], [ %2775, %2778 ]
  %2793 = call float @dx.op.binary.f32(i32 36, float %2790, float %2791)  ; FMin(a,b)
  %2794 = call float @dx.op.binary.f32(i32 36, float %2789, float %2793)  ; FMin(a,b)
  %2795 = call float @dx.op.binary.f32(i32 35, float %2789, float %2790)  ; FMax(a,b)
  %2796 = call float @dx.op.binary.f32(i32 36, float %2795, float %2791)  ; FMin(a,b)
  %2797 = call float @dx.op.binary.f32(i32 36, float %2789, float %2790)  ; FMin(a,b)
  %2798 = call float @dx.op.binary.f32(i32 35, float %2797, float %2796)  ; FMax(a,b)
  %2799 = call float @dx.op.binary.f32(i32 35, float %2790, float %2791)  ; FMax(a,b)
  %2800 = call float @dx.op.binary.f32(i32 35, float %2789, float %2799)  ; FMax(a,b)
  store float %2794, float* %2717, align 4, !tbaa !92, !alias.scope !116, !noalias !117
  store float %2798, float* %2718, align 4, !tbaa !92, !alias.scope !114, !noalias !115
  store float %2800, float* %2719, align 4, !tbaa !92, !alias.scope !108, !noalias !111
  %2801 = call float @dx.op.binary.f32(i32 36, float %2787, float %2788)  ; FMin(a,b)
  %2802 = call float @dx.op.binary.f32(i32 36, float %2786, float %2801)  ; FMin(a,b)
  %2803 = call float @dx.op.binary.f32(i32 35, float %2786, float %2787)  ; FMax(a,b)
  %2804 = call float @dx.op.binary.f32(i32 36, float %2803, float %2788)  ; FMin(a,b)
  %2805 = call float @dx.op.binary.f32(i32 36, float %2786, float %2787)  ; FMin(a,b)
  %2806 = call float @dx.op.binary.f32(i32 35, float %2805, float %2804)  ; FMax(a,b)
  %2807 = call float @dx.op.binary.f32(i32 35, float %2787, float %2788)  ; FMax(a,b)
  %2808 = call float @dx.op.binary.f32(i32 35, float %2786, float %2807)  ; FMax(a,b)
  store float %2802, float* %2720, align 4, !tbaa !92, !alias.scope !126, !noalias !127
  store float %2806, float* %2721, align 4, !tbaa !92, !alias.scope !124, !noalias !125
  store float %2808, float* %2722, align 4, !tbaa !92, !alias.scope !118, !noalias !121
  %2809 = sub nsw i32 3, %2792
  %2810 = icmp sgt i32 %2809, 2
  br i1 %2810, label %2811, label %2849, !dx.controlflow.hints !128

; <label>:2811                                    ; preds = %2785
  %2812 = icmp eq i32 %2580, 0
  %2813 = fsub fast float %2630, %2714
  %2814 = select i1 %2812, float %2813, float %2714
  %2815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2816 = extractvalue %dx.types.CBufRet.f32 %2815, 0
  %2817 = extractvalue %dx.types.CBufRet.f32 %2815, 1
  %2818 = extractvalue %dx.types.CBufRet.f32 %2815, 2
  %2819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2820 = extractvalue %dx.types.CBufRet.f32 %2819, 0
  %2821 = extractvalue %dx.types.CBufRet.f32 %2819, 1
  %2822 = extractvalue %dx.types.CBufRet.f32 %2819, 2
  %2823 = extractvalue %dx.types.CBufRet.f32 %2819, 3
  %2824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2825 = extractvalue %dx.types.CBufRet.f32 %2824, 3
  %2826 = call float @dx.op.binary.f32(i32 36, float %2715, float %2825)  ; FMin(a,b)
  %2827 = fmul fast float %2823, %2814
  %2828 = call float @dx.op.unary.f32(i32 7, float %2827)  ; Saturate(value)
  %2829 = fsub fast float %2820, %2816
  %2830 = fsub fast float %2821, %2817
  %2831 = fsub fast float %2822, %2818
  %2832 = fmul fast float %2828, %2829
  %2833 = fmul fast float %2828, %2830
  %2834 = fmul fast float %2828, %2831
  %2835 = fadd fast float %2832, %2816
  %2836 = fadd fast float %2833, %2817
  %2837 = fadd fast float %2834, %2818
  %2838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2839 = extractvalue %dx.types.CBufRet.f32 %2838, 0
  %2840 = extractvalue %dx.types.CBufRet.f32 %2838, 1
  %2841 = fadd fast float %2840, %2839
  %2842 = call float @dx.op.unary.f32(i32 7, float %2841)  ; Saturate(value)
  %2843 = extractvalue %dx.types.CBufRet.f32 %2838, 2
  %2844 = extractvalue %dx.types.CBufRet.f32 %2838, 3
  %2845 = fadd fast float %2844, %2843
  %2846 = call float @dx.op.unary.f32(i32 7, float %2845)  ; Saturate(value)
  %2847 = fmul fast float %2842, %2826
  %2848 = fmul fast float %2847, %2846
  br label %2931

; <label>:2849                                    ; preds = %2785
  %2850 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 %2809
  %2851 = load float, float* %2850, align 4, !tbaa !92, !noalias !96
  %2852 = fcmp fast olt float %2851, %2716
  %2853 = icmp sgt i32 %2792, 0
  %2854 = and i1 %2853, %2852
  br i1 %2854, label %2855, label %2892

; <label>:2855                                    ; preds = %2849
  br label %2856

; <label>:2856                                    ; preds = %2885, %2855
  %2857 = phi float [ %2886, %2885 ], [ %2714, %2855 ]
  %2858 = phi float [ %2887, %2885 ], [ %2715, %2855 ]
  %2859 = phi float [ %2867, %2885 ], [ %2851, %2855 ]
  %2860 = phi i32 [ %2864, %2885 ], [ %2809, %2855 ]
  %2861 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 %2860
  %2862 = load float, float* %2861, align 4, !tbaa !92, !noalias !96
  %2863 = icmp slt i32 %2860, 2
  %2864 = add nsw i32 %2860, 1
  %2865 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 %2864
  %2866 = load float, float* %2865, align 4, !tbaa !92, !noalias !96
  %2867 = select i1 %2863, float %2866, float %2630
  %2868 = call float @dx.op.binary.f32(i32 36, float %2867, float %2862)  ; FMin(a,b)
  %2869 = call float @dx.op.binary.f32(i32 36, float %2716, float %2868)  ; FMin(a,b)
  %2870 = icmp eq i32 %2580, 0
  %2871 = fadd fast float %2869, %2859
  %2872 = fmul fast float %2871, %2561
  %2873 = fadd fast float %2872, %2574
  br i1 %2870, label %2879, label %2874, !dx.controlflow.hints !129

; <label>:2874                                    ; preds = %2856
  %2875 = fsub fast float %2869, %2859
  %2876 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2875)  ; FMax(a,b)
  %2877 = fmul fast float %2876, %2873
  %2878 = fadd fast float %2877, %2858
  br label %2885

; <label>:2879                                    ; preds = %2856
  %2880 = fsub fast float %2859, %2869
  %2881 = call float @dx.op.unary.f32(i32 6, float %2880)  ; FAbs(value)
  %2882 = fadd fast float %2881, %2857
  %2883 = fmul fast float %2881, %2873
  %2884 = fsub fast float %2858, %2883
  br label %2885

; <label>:2885                                    ; preds = %2879, %2874
  %2886 = phi float [ %2876, %2874 ], [ %2882, %2879 ]
  %2887 = phi float [ %2878, %2874 ], [ %2884, %2879 ]
  %2888 = fcmp fast olt float %2867, %2716
  %2889 = icmp slt i32 %2864, 3
  %2890 = and i1 %2889, %2888
  br i1 %2890, label %2856, label %2891

; <label>:2891                                    ; preds = %2885
  br label %2892

; <label>:2892                                    ; preds = %2891, %2849
  %2893 = phi float [ %2714, %2849 ], [ %2886, %2891 ]
  %2894 = phi float [ %2715, %2849 ], [ %2887, %2891 ]
  %2895 = fsub fast float %2630, %2893
  %2896 = select i1 %2632, float %2893, float %2895
  %2897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2898 = extractvalue %dx.types.CBufRet.f32 %2897, 0
  %2899 = extractvalue %dx.types.CBufRet.f32 %2897, 1
  %2900 = extractvalue %dx.types.CBufRet.f32 %2897, 2
  %2901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2902 = extractvalue %dx.types.CBufRet.f32 %2901, 0
  %2903 = extractvalue %dx.types.CBufRet.f32 %2901, 1
  %2904 = extractvalue %dx.types.CBufRet.f32 %2901, 2
  %2905 = extractvalue %dx.types.CBufRet.f32 %2901, 3
  %2906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2907 = extractvalue %dx.types.CBufRet.f32 %2906, 3
  %2908 = call float @dx.op.binary.f32(i32 36, float %2894, float %2907)  ; FMin(a,b)
  %2909 = fmul fast float %2905, %2896
  %2910 = call float @dx.op.unary.f32(i32 7, float %2909)  ; Saturate(value)
  %2911 = fsub fast float %2902, %2898
  %2912 = fsub fast float %2903, %2899
  %2913 = fsub fast float %2904, %2900
  %2914 = fmul fast float %2910, %2911
  %2915 = fmul fast float %2910, %2912
  %2916 = fmul fast float %2910, %2913
  %2917 = fadd fast float %2914, %2898
  %2918 = fadd fast float %2915, %2899
  %2919 = fadd fast float %2916, %2900
  %2920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2921 = extractvalue %dx.types.CBufRet.f32 %2920, 0
  %2922 = extractvalue %dx.types.CBufRet.f32 %2920, 1
  %2923 = fadd fast float %2922, %2921
  %2924 = call float @dx.op.unary.f32(i32 7, float %2923)  ; Saturate(value)
  %2925 = extractvalue %dx.types.CBufRet.f32 %2920, 2
  %2926 = extractvalue %dx.types.CBufRet.f32 %2920, 3
  %2927 = fadd fast float %2926, %2925
  %2928 = call float @dx.op.unary.f32(i32 7, float %2927)  ; Saturate(value)
  %2929 = fmul fast float %2924, %2908
  %2930 = fmul fast float %2929, %2928
  br label %2931

; <label>:2931                                    ; preds = %2892, %2811, %2646, %2628, %2626
  %2932 = phi float [ %2655, %2646 ], [ %2814, %2811 ], [ %2896, %2892 ], [ 0.000000e+00, %2626 ], [ 0.000000e+00, %2628 ]
  %2933 = phi float [ %2689, %2646 ], [ %2848, %2811 ], [ %2930, %2892 ], [ 0.000000e+00, %2626 ], [ 0.000000e+00, %2628 ]
  %2934 = phi float [ %2676, %2646 ], [ %2835, %2811 ], [ %2917, %2892 ], [ 0.000000e+00, %2626 ], [ 0.000000e+00, %2628 ]
  %2935 = phi float [ %2677, %2646 ], [ %2836, %2811 ], [ %2918, %2892 ], [ 0.000000e+00, %2626 ], [ 0.000000e+00, %2628 ]
  %2936 = phi float [ %2678, %2646 ], [ %2837, %2811 ], [ %2919, %2892 ], [ 0.000000e+00, %2626 ], [ 0.000000e+00, %2628 ]
  %2937 = fmul fast float %2569, %2933
  %2938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2939 = extractvalue %dx.types.CBufRet.f32 %2938, 2
  %2940 = fsub fast float %2576, %2939
  %2941 = fcmp fast olt float %2937, -2.000000e+01
  %2942 = call float @dx.op.unary.f32(i32 21, float %2937)  ; Exp(value)
  %2943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2944 = extractvalue %dx.types.CBufRet.f32 %2943, 2
  %2945 = extractvalue %dx.types.CBufRet.f32 %2943, 3
  %2946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2947 = extractvalue %dx.types.CBufRet.f32 %2946, 2
  %2948 = fmul fast float %2945, %2940
  %2949 = call float @dx.op.unary.f32(i32 7, float %2948)  ; Saturate(value)
  %2950 = fsub fast float 1.000000e+00, %2949
  %2951 = fmul fast float %2561, 5.000000e-01
  %2952 = fadd fast float %2951, 5.000000e-01
  %2953 = call float @dx.op.unary.f32(i32 7, float %2952)  ; Saturate(value)
  %2954 = fsub fast float 1.000000e+00, %2953
  %2955 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2950)  ; FMax(a,b)
  %2956 = fdiv fast float %2954, %2955
  %2957 = fsub fast float %2940, %2527
  %2958 = call float @dx.op.unary.f32(i32 6, float %2957)  ; FAbs(value)
  %2959 = fmul fast float %2958, %2944
  %2960 = call float @dx.op.unary.f32(i32 7, float %2956)  ; Saturate(value)
  %2961 = fsub fast float 1.000000e+00, %2959
  %2962 = fmul fast float %2961, %2960
  %2963 = fadd fast float %2962, %2959
  %2964 = fmul fast float %2947, %2940
  %2965 = call float @dx.op.unary.f32(i32 7, float %2964)  ; Saturate(value)
  %2966 = fsub fast float 1.000000e+00, %2963
  %2967 = fmul fast float %2966, %2965
  %2968 = fadd fast float %2967, %2963
  %2969 = call float @dx.op.unary.f32(i32 7, float %2968)  ; Saturate(value)
  %2970 = fadd fast float %2942, -1.000000e+00
  %2971 = select i1 %2941, float -1.000000e+00, float %2970
  %2972 = fmul fast float %2969, %2971
  %2973 = fadd fast float %2972, 1.000000e+00
  %2974 = fsub fast float -0.000000e+00, %2972
  %2975 = fmul fast float %2934, %2974
  %2976 = fmul fast float %2935, %2974
  %2977 = fmul fast float %2936, %2974
  br label %2978

; <label>:2978                                    ; preds = %2931, %2480
  %2979 = phi float [ %2932, %2931 ], [ 0.000000e+00, %2480 ]
  %2980 = phi float [ %2973, %2931 ], [ 1.000000e+00, %2480 ]
  %2981 = phi float [ %2975, %2931 ], [ 0.000000e+00, %2480 ]
  %2982 = phi float [ %2976, %2931 ], [ 0.000000e+00, %2480 ]
  %2983 = phi float [ %2977, %2931 ], [ 0.000000e+00, %2480 ]
  %2984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2985 = extractvalue %dx.types.CBufRet.f32 %2984, 1
  %2986 = fsub fast float 1.000000e+00, %2980
  %2987 = fmul fast float %2986, %2562
  %2988 = fmul fast float %2987, %2985
  %2989 = fsub fast float %2562, %2988
  br i1 %2555, label %2990, label %3019, !dx.controlflow.hints !130

; <label>:2990                                    ; preds = %2978
  %2991 = fmul fast float %2563, %2552
  %2992 = fadd fast float %2991, %2553
  %2993 = call float @dx.op.unary.f32(i32 7, float %2992)  ; Saturate(value)
  %2994 = fmul fast float %2534, %2989
  %2995 = fsub fast float -0.000000e+00, %2994
  %2996 = fmul fast float %2535, %2989
  %2997 = fsub fast float -0.000000e+00, %2996
  %2998 = call float @dx.op.unary.f32(i32 21, float %2995)  ; Exp(value)
  %2999 = call float @dx.op.unary.f32(i32 21, float %2997)  ; Exp(value)
  %3000 = call float @dx.op.binary.f32(i32 35, float %2542, float %2998)  ; FMax(a,b)
  %3001 = call float @dx.op.binary.f32(i32 35, float %2542, float %2999)  ; FMax(a,b)
  %3002 = fsub fast float %3001, %3000
  %3003 = fmul fast float %3002, %2993
  %3004 = fadd fast float %3003, %3000
  %3005 = call float @dx.op.unary.f32(i32 7, float %3004)  ; Saturate(value)
  %3006 = fsub fast float %2539, %2544
  %3007 = fsub fast float %2540, %2545
  %3008 = fsub fast float %2541, %2546
  %3009 = fmul fast float %2993, %3006
  %3010 = fmul fast float %2993, %3007
  %3011 = fmul fast float %2993, %3008
  %3012 = fadd fast float %3009, %2544
  %3013 = fadd fast float %3010, %2545
  %3014 = fadd fast float %3011, %2546
  %3015 = fsub fast float 1.000000e+00, %3005
  %3016 = fmul fast float %3015, %3012
  %3017 = fmul fast float %3015, %3013
  %3018 = fmul fast float %3015, %3014
  br label %3078

; <label>:3019                                    ; preds = %2978
  %3020 = fmul fast float %2989, %2551
  %3021 = call float @dx.op.unary.f32(i32 7, float %3020)  ; Saturate(value)
  %3022 = fsub fast float 2.000000e+00, %3021
  %3023 = fmul fast float %3021, 9.921875e-01
  %3024 = fmul fast float %3023, %3022
  %3025 = fadd fast float %3024, 3.906250e-03
  %3026 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %19, float %3025, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3027 = extractvalue %dx.types.ResRet.f32 %3026, 0
  %3028 = fsub fast float %3021, %3027
  %3029 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3028)  ; FMax(a,b)
  %3030 = fmul fast float %2537, %2527
  %3031 = call float @dx.op.unary.f32(i32 6, float %3030)  ; FAbs(value)
  %3032 = fcmp fast ogt float %3031, 0x3EB0C6F7A0000000
  br i1 %3032, label %3033, label %3039, !dx.controlflow.hints !131

; <label>:3033                                    ; preds = %3019
  %3034 = fmul fast float %3030, 0xBFF7154760000000
  %3035 = call float @dx.op.unary.f32(i32 21, float %3034)  ; Exp(value)
  %3036 = fsub fast float 1.000000e+00, %3035
  %3037 = fdiv fast float %3036, %3030
  %3038 = fmul fast float %3037, %2547
  br label %3039

; <label>:3039                                    ; preds = %3033, %3019
  %3040 = phi float [ %3038, %3033 ], [ %2547, %3019 ]
  %3041 = fadd fast float %3040, %2549
  %3042 = fmul fast float %3041, %3029
  %3043 = fmul fast float %2534, %3042
  %3044 = fsub fast float -0.000000e+00, %3043
  %3045 = fmul fast float %2535, %3042
  %3046 = fsub fast float -0.000000e+00, %3045
  %3047 = fmul fast float %2536, %3042
  %3048 = fsub fast float -0.000000e+00, %3047
  %3049 = call float @dx.op.unary.f32(i32 21, float %3044)  ; Exp(value)
  %3050 = call float @dx.op.unary.f32(i32 21, float %3046)  ; Exp(value)
  %3051 = call float @dx.op.unary.f32(i32 21, float %3048)  ; Exp(value)
  %3052 = fmul fast float %2563, %2563
  %3053 = fadd fast float %3052, 1.000000e+00
  %3054 = fmul fast float %3053, 0x3FAE8EC8A0000000
  %3055 = fmul fast float %3054, %2544
  %3056 = fmul fast float %3054, %2545
  %3057 = fmul fast float %3054, %2546
  %3058 = fmul fast float %2563, %2542
  %3059 = fsub fast float 1.000000e+00, %3058
  %3060 = fmul fast float %2542, %2542
  %3061 = fsub fast float 1.000000e+00, %3060
  %3062 = fmul fast float %3061, 0x3FB45F3060000000
  %3063 = fmul fast float %3059, %3059
  %3064 = fdiv fast float 1.000000e+00, %3063
  %3065 = fmul fast float %3062, %3064
  %3066 = fmul fast float %3065, %2539
  %3067 = fmul fast float %3065, %2540
  %3068 = fmul fast float %3065, %2541
  %3069 = fadd fast float %3066, %3055
  %3070 = fadd fast float %3067, %3056
  %3071 = fadd fast float %3068, %3057
  %3072 = fsub fast float 1.000000e+00, %3049
  %3073 = fsub fast float 1.000000e+00, %3050
  %3074 = fsub fast float 1.000000e+00, %3051
  %3075 = fmul fast float %3069, %3072
  %3076 = fmul fast float %3070, %3073
  %3077 = fmul fast float %3071, %3074
  br label %3078

; <label>:3078                                    ; preds = %3039, %2990
  %3079 = phi float [ %3016, %2990 ], [ %3075, %3039 ]
  %3080 = phi float [ %3017, %2990 ], [ %3076, %3039 ]
  %3081 = phi float [ %3018, %2990 ], [ %3077, %3039 ]
  %3082 = phi float [ %3005, %2990 ], [ %3049, %3039 ]
  %3083 = phi float [ %3005, %2990 ], [ %3050, %3039 ]
  %3084 = phi float [ %3005, %2990 ], [ %3051, %3039 ]
  br i1 %2571, label %3085, label %3283, !dx.controlflow.hints !132

; <label>:3085                                    ; preds = %3078
  %3086 = extractvalue %dx.types.CBufRet.f32 %2984, 0
  %3087 = fmul fast float %3086, %2986
  %3088 = fsub fast float %2981, %3079
  %3089 = fsub fast float %2982, %3080
  %3090 = fsub fast float %2983, %3081
  %3091 = fmul fast float %3087, %3088
  %3092 = fmul fast float %3087, %3089
  %3093 = fmul fast float %3087, %3090
  %3094 = fadd fast float %3091, %3079
  %3095 = fadd fast float %3092, %3080
  %3096 = fadd fast float %3093, %3081
  %3097 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3082)  ; FMax(a,b)
  %3098 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3083)  ; FMax(a,b)
  %3099 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3084)  ; FMax(a,b)
  %3100 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2980)  ; FMax(a,b)
  %3101 = call float @dx.op.binary.f32(i32 35, float %2979, float %2989)  ; FMax(a,b)
  %3102 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3101)  ; FMax(a,b)
  %3103 = fdiv fast float %2979, %3102
  %3104 = call float @dx.op.unary.f32(i32 7, float %3103)  ; Saturate(value)
  %3105 = fdiv fast float %2989, %3102
  %3106 = call float @dx.op.unary.f32(i32 7, float %3105)  ; Saturate(value)
  %3107 = fcmp fast une float %3100, 1.000000e+00
  br i1 %3107, label %3108, label %3121, !dx.controlflow.hints !133

; <label>:3108                                    ; preds = %3085
  %3109 = call float @dx.op.unary.f32(i32 23, float %3100)  ; Log(value)
  %3110 = fmul fast float %3109, 0x3FE62E4300000000
  %3111 = fmul fast float %2981, %3110
  %3112 = fsub fast float -0.000000e+00, %3111
  %3113 = fmul fast float %2982, %3110
  %3114 = fsub fast float -0.000000e+00, %3113
  %3115 = fmul fast float %2983, %3110
  %3116 = fsub fast float -0.000000e+00, %3115
  %3117 = fsub fast float 1.000000e+00, %3100
  %3118 = fdiv fast float %3112, %3117
  %3119 = fdiv fast float %3114, %3117
  %3120 = fdiv fast float %3116, %3117
  br label %3121

; <label>:3121                                    ; preds = %3108, %3085
  %3122 = phi float [ %3118, %3108 ], [ %2981, %3085 ]
  %3123 = phi float [ %3119, %3108 ], [ %2982, %3085 ]
  %3124 = phi float [ %3120, %3108 ], [ %2983, %3085 ]
  %3125 = phi float [ %3110, %3108 ], [ 0.000000e+00, %3085 ]
  %3126 = fcmp fast une float %3097, 1.000000e+00
  br i1 %3126, label %3127, label %3134, !dx.controlflow.hints !134

; <label>:3127                                    ; preds = %3121
  %3128 = call float @dx.op.unary.f32(i32 23, float %3097)  ; Log(value)
  %3129 = fmul fast float %3128, 0x3FE62E4300000000
  %3130 = fmul fast float %3094, %3129
  %3131 = fsub fast float -0.000000e+00, %3130
  %3132 = fsub fast float 1.000000e+00, %3097
  %3133 = fdiv fast float %3131, %3132
  br label %3134

; <label>:3134                                    ; preds = %3127, %3121
  %3135 = phi float [ %3133, %3127 ], [ %3094, %3121 ]
  %3136 = phi float [ %3129, %3127 ], [ 0.000000e+00, %3121 ]
  %3137 = fcmp fast une float %3098, 1.000000e+00
  br i1 %3137, label %3138, label %3145, !dx.controlflow.hints !134

; <label>:3138                                    ; preds = %3134
  %3139 = call float @dx.op.unary.f32(i32 23, float %3098)  ; Log(value)
  %3140 = fmul fast float %3139, 0x3FE62E4300000000
  %3141 = fmul fast float %3095, %3140
  %3142 = fsub fast float -0.000000e+00, %3141
  %3143 = fsub fast float 1.000000e+00, %3098
  %3144 = fdiv fast float %3142, %3143
  br label %3145

; <label>:3145                                    ; preds = %3138, %3134
  %3146 = phi float [ %3144, %3138 ], [ %3095, %3134 ]
  %3147 = phi float [ %3140, %3138 ], [ 0.000000e+00, %3134 ]
  %3148 = fcmp fast une float %3099, 1.000000e+00
  br i1 %3148, label %3149, label %3156, !dx.controlflow.hints !134

; <label>:3149                                    ; preds = %3145
  %3150 = call float @dx.op.unary.f32(i32 23, float %3099)  ; Log(value)
  %3151 = fmul fast float %3150, 0x3FE62E4300000000
  %3152 = fmul fast float %3096, %3151
  %3153 = fsub fast float -0.000000e+00, %3152
  %3154 = fsub fast float 1.000000e+00, %3099
  %3155 = fdiv fast float %3153, %3154
  br label %3156

; <label>:3156                                    ; preds = %3149, %3145
  %3157 = phi float [ %3155, %3149 ], [ %3096, %3145 ]
  %3158 = phi float [ %3151, %3149 ], [ 0.000000e+00, %3145 ]
  %3159 = fmul fast float %3122, %3106
  %3160 = fmul fast float %3123, %3106
  %3161 = fmul fast float %3124, %3106
  %3162 = fmul fast float %3125, %3106
  %3163 = fmul fast float %3135, %3104
  %3164 = fmul fast float %3146, %3104
  %3165 = fmul fast float %3157, %3104
  %3166 = fmul fast float %3136, %3104
  %3167 = fmul fast float %3147, %3104
  %3168 = fmul fast float %3158, %3104
  %3169 = fadd fast float %3163, %3159
  %3170 = fadd fast float %3164, %3160
  %3171 = fadd fast float %3165, %3161
  %3172 = fadd fast float %3166, %3162
  %3173 = fadd fast float %3167, %3162
  %3174 = fadd fast float %3168, %3162
  %3175 = fcmp fast une float %3172, 0.000000e+00
  br i1 %3175, label %3176, label %3183, !dx.controlflow.hints !135

; <label>:3176                                    ; preds = %3156
  %3177 = fmul fast float %3172, 0x3FF7154760000000
  %3178 = call float @dx.op.unary.f32(i32 21, float %3177)  ; Exp(value)
  %3179 = fsub fast float 1.000000e+00, %3178
  %3180 = fmul fast float %3169, %3179
  %3181 = fsub fast float -0.000000e+00, %3180
  %3182 = fdiv fast float %3181, %3172
  br label %3183

; <label>:3183                                    ; preds = %3176, %3156
  %3184 = phi float [ %3178, %3176 ], [ 1.000000e+00, %3156 ]
  %3185 = phi float [ %3182, %3176 ], [ %3169, %3156 ]
  %3186 = fcmp fast une float %3173, 0.000000e+00
  br i1 %3186, label %3187, label %3194, !dx.controlflow.hints !135

; <label>:3187                                    ; preds = %3183
  %3188 = fmul fast float %3173, 0x3FF7154760000000
  %3189 = call float @dx.op.unary.f32(i32 21, float %3188)  ; Exp(value)
  %3190 = fsub fast float 1.000000e+00, %3189
  %3191 = fmul fast float %3170, %3190
  %3192 = fsub fast float -0.000000e+00, %3191
  %3193 = fdiv fast float %3192, %3173
  br label %3194

; <label>:3194                                    ; preds = %3187, %3183
  %3195 = phi float [ %3189, %3187 ], [ 1.000000e+00, %3183 ]
  %3196 = phi float [ %3193, %3187 ], [ %3170, %3183 ]
  %3197 = fcmp fast une float %3174, 0.000000e+00
  br i1 %3197, label %3198, label %3205, !dx.controlflow.hints !135

; <label>:3198                                    ; preds = %3194
  %3199 = fmul fast float %3174, 0x3FF7154760000000
  %3200 = call float @dx.op.unary.f32(i32 21, float %3199)  ; Exp(value)
  %3201 = fsub fast float 1.000000e+00, %3200
  %3202 = fmul fast float %3171, %3201
  %3203 = fsub fast float -0.000000e+00, %3202
  %3204 = fdiv fast float %3203, %3174
  br label %3205

; <label>:3205                                    ; preds = %3198, %3194
  %3206 = phi float [ %3200, %3198 ], [ 1.000000e+00, %3194 ]
  %3207 = phi float [ %3204, %3198 ], [ %3171, %3194 ]
  %3208 = fcmp fast ogt float %3104, %3106
  br i1 %3208, label %3209, label %3229, !dx.controlflow.hints !136

; <label>:3209                                    ; preds = %3205
  %3210 = fsub fast float 1.000000e+00, %3106
  %3211 = fmul fast float %3122, %3210
  %3212 = fmul fast float %3123, %3210
  %3213 = fmul fast float %3124, %3210
  %3214 = fmul fast float %3125, %3210
  %3215 = fcmp fast une float %3214, 0.000000e+00
  br i1 %3215, label %3216, label %3267, !dx.controlflow.hints !137

; <label>:3216                                    ; preds = %3209
  %3217 = fmul fast float %3214, 0x3FF7154760000000
  %3218 = call float @dx.op.unary.f32(i32 21, float %3217)  ; Exp(value)
  %3219 = fsub fast float 1.000000e+00, %3218
  %3220 = fmul fast float %3211, %3219
  %3221 = fsub fast float -0.000000e+00, %3220
  %3222 = fmul fast float %3212, %3219
  %3223 = fsub fast float -0.000000e+00, %3222
  %3224 = fmul fast float %3213, %3219
  %3225 = fsub fast float -0.000000e+00, %3224
  %3226 = fdiv fast float %3221, %3214
  %3227 = fdiv fast float %3223, %3214
  %3228 = fdiv fast float %3225, %3214
  br label %3267

; <label>:3229                                    ; preds = %3205
  %3230 = fsub fast float 1.000000e+00, %3104
  %3231 = fmul fast float %3135, %3230
  %3232 = fmul fast float %3146, %3230
  %3233 = fmul fast float %3157, %3230
  %3234 = fmul fast float %3136, %3230
  %3235 = fmul fast float %3147, %3230
  %3236 = fmul fast float %3158, %3230
  %3237 = fcmp fast une float %3234, 0.000000e+00
  br i1 %3237, label %3238, label %3245, !dx.controlflow.hints !135

; <label>:3238                                    ; preds = %3229
  %3239 = fmul fast float %3234, 0x3FF7154760000000
  %3240 = call float @dx.op.unary.f32(i32 21, float %3239)  ; Exp(value)
  %3241 = fsub fast float 1.000000e+00, %3240
  %3242 = fmul fast float %3231, %3241
  %3243 = fsub fast float -0.000000e+00, %3242
  %3244 = fdiv fast float %3243, %3234
  br label %3245

; <label>:3245                                    ; preds = %3238, %3229
  %3246 = phi float [ %3244, %3238 ], [ %3231, %3229 ]
  %3247 = phi float [ %3240, %3238 ], [ 1.000000e+00, %3229 ]
  %3248 = fcmp fast une float %3235, 0.000000e+00
  br i1 %3248, label %3249, label %3256, !dx.controlflow.hints !135

; <label>:3249                                    ; preds = %3245
  %3250 = fmul fast float %3235, 0x3FF7154760000000
  %3251 = call float @dx.op.unary.f32(i32 21, float %3250)  ; Exp(value)
  %3252 = fsub fast float 1.000000e+00, %3251
  %3253 = fmul fast float %3232, %3252
  %3254 = fsub fast float -0.000000e+00, %3253
  %3255 = fdiv fast float %3254, %3235
  br label %3256

; <label>:3256                                    ; preds = %3249, %3245
  %3257 = phi float [ %3255, %3249 ], [ %3232, %3245 ]
  %3258 = phi float [ %3251, %3249 ], [ 1.000000e+00, %3245 ]
  %3259 = fcmp fast une float %3236, 0.000000e+00
  br i1 %3259, label %3260, label %3267, !dx.controlflow.hints !135

; <label>:3260                                    ; preds = %3256
  %3261 = fmul fast float %3236, 0x3FF7154760000000
  %3262 = call float @dx.op.unary.f32(i32 21, float %3261)  ; Exp(value)
  %3263 = fsub fast float 1.000000e+00, %3262
  %3264 = fmul fast float %3233, %3263
  %3265 = fsub fast float -0.000000e+00, %3264
  %3266 = fdiv fast float %3265, %3236
  br label %3267

; <label>:3267                                    ; preds = %3260, %3256, %3216, %3209
  %3268 = phi float [ %3266, %3260 ], [ %3228, %3216 ], [ %3213, %3209 ], [ %3233, %3256 ]
  %3269 = phi float [ %3257, %3260 ], [ %3227, %3216 ], [ %3212, %3209 ], [ %3257, %3256 ]
  %3270 = phi float [ %3246, %3260 ], [ %3226, %3216 ], [ %3211, %3209 ], [ %3246, %3256 ]
  %3271 = phi float [ %3262, %3260 ], [ %3218, %3216 ], [ 1.000000e+00, %3209 ], [ 1.000000e+00, %3256 ]
  %3272 = phi float [ %3258, %3260 ], [ %3218, %3216 ], [ 1.000000e+00, %3209 ], [ %3258, %3256 ]
  %3273 = phi float [ %3247, %3260 ], [ %3218, %3216 ], [ 1.000000e+00, %3209 ], [ %3247, %3256 ]
  %3274 = fmul fast float %3273, %3185
  %3275 = fmul fast float %3272, %3196
  %3276 = fmul fast float %3271, %3207
  %3277 = fadd fast float %3274, %3270
  %3278 = fadd fast float %3275, %3269
  %3279 = fadd fast float %3276, %3268
  %3280 = fmul fast float %3273, %3184
  %3281 = fmul fast float %3272, %3195
  %3282 = fmul fast float %3271, %3206
  br label %3283

; <label>:3283                                    ; preds = %3267, %3078
  %3284 = phi float [ %3084, %3078 ], [ %3282, %3267 ]
  %3285 = phi float [ %3083, %3078 ], [ %3281, %3267 ]
  %3286 = phi float [ %3082, %3078 ], [ %3280, %3267 ]
  %3287 = phi float [ %3081, %3078 ], [ %3279, %3267 ]
  %3288 = phi float [ %3080, %3078 ], [ %3278, %3267 ]
  %3289 = phi float [ %3079, %3078 ], [ %3277, %3267 ]
  %3290 = fmul fast float %3286, %2427
  %3291 = fmul fast float %3285, %2428
  %3292 = fmul fast float %3284, %2429
  %3293 = fsub fast float 1.000000e+00, %2490
  %3294 = fmul fast float %3289, %3293
  %3295 = fmul fast float %3288, %3293
  %3296 = fmul fast float %3287, %3293
  %3297 = fadd fast float %3294, %3290
  %3298 = fadd fast float %3295, %3291
  %3299 = fadd fast float %3296, %3292
  %3300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %3301 = extractvalue %dx.types.CBufRet.f32 %3300, 2
  %3302 = fmul fast float %3301, %2500
  %3303 = call float @dx.op.unary.f32(i32 7, float %3302)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %22, i32 %23, i32 undef, float %2490, float %2490, float %2490, float %2490, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %3304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3305 = extractvalue %dx.types.CBufRet.f32 %3304, 0
  %3306 = fmul fast float %3305, %3297
  %3307 = fmul fast float %3305, %3298
  %3308 = fmul fast float %3305, %3299
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %22, i32 %23, i32 undef, float %3306, float %3307, float %3308, float %3306, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %22, i32 %23, i32 undef, float %3303, float %3303, float %3303, float %3303, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!33 = !{void ()* @cs_fog_raymarching_air_heightmap_brfog, !"cs_fog_raymarching_air_heightmap_brfog", null, !4, !34}
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
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}
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

