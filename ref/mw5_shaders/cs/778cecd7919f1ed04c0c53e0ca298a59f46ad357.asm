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
; shader hash: 11d0df98096b4c84e766cf8c951112e1
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
;                                   texture     f32     2darray      T2            t31     1
;                                   texture     f32          3d      T3            t30     1
;                                   texture     f32          2d      T4            t29     1
;                                   texture     f32          2d      T5            t26     1
;                                   texture     u32          2d      T6            t32     1
;                                   texture     f32          3d      T7            t33     1
;                                   texture     f32          1d      T8            t14     1
;                                   texture     f32          2d      T9            t13     1
;                                   texture     f32          2d     T10             t0     1
;                                   texture    byte         r/o     T11            t17     1
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

define void @cs_fog_raymarching_air_heightmap() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 26, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %22 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %23 = alloca [3 x float], align 4
  %24 = alloca [3 x float], align 4
  %25 = add i32 %22, %21
  %26 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %27 = extractvalue %dx.types.CBufRet.i32 %26, 1
  %28 = add i32 %25, %27
  %29 = lshr i32 %28, 1
  %30 = and i32 %29, 1
  %31 = and i32 %28, 1
  %32 = xor i32 %30, %31
  %33 = shl i32 %21, 1
  %34 = shl i32 %22, 1
  %35 = or i32 %32, %33
  %36 = or i32 %30, %34
  %37 = uitofp i32 %35 to float
  %38 = uitofp i32 %36 to float
  %39 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %40 = extractvalue %dx.types.CBufRet.f32 %39, 2
  %41 = fmul fast float %40, 0x3FE3C6EF40000000
  %42 = frem fast float %37, 2.560000e+02
  %43 = frem fast float %38, 2.560000e+02
  %44 = fptoui float %42 to i32
  %45 = fptoui float %43 to i32
  %46 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %44, i32 %45, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %47 = extractvalue %dx.types.ResRet.f32 %46, 0
  %48 = extractvalue %dx.types.ResRet.f32 %46, 1
  %49 = extractvalue %dx.types.ResRet.f32 %46, 2
  %50 = extractvalue %dx.types.ResRet.f32 %46, 3
  %51 = fadd fast float %47, %41
  %52 = fadd fast float %48, %41
  %53 = fadd fast float %49, %41
  %54 = fadd fast float %50, %41
  %55 = call float @dx.op.unary.f32(i32 22, float %51)  ; Frc(value)
  %56 = call float @dx.op.unary.f32(i32 22, float %52)  ; Frc(value)
  %57 = call float @dx.op.unary.f32(i32 22, float %53)  ; Frc(value)
  %58 = call float @dx.op.unary.f32(i32 22, float %54)  ; Frc(value)
  %59 = fadd fast float %57, %37
  %60 = fadd fast float %58, %38
  %61 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %62 = extractvalue %dx.types.CBufRet.f32 %61, 2
  %63 = extractvalue %dx.types.CBufRet.f32 %61, 3
  %64 = fmul fast float %62, %59
  %65 = fmul fast float %63, %60
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.f32 %66, 0
  %68 = extractvalue %dx.types.CBufRet.f32 %66, 1
  %69 = extractvalue %dx.types.CBufRet.f32 %66, 2
  %70 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %71 = extractvalue %dx.types.CBufRet.f32 %70, 1
  %72 = fmul fast float %64, 2.000000e+00
  %73 = fmul fast float %65, 2.000000e+00
  %74 = fsub fast float 1.000000e+00, %72
  %75 = fsub fast float 1.000000e+00, %73
  %76 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.f32 %76, 0
  %78 = extractvalue %dx.types.CBufRet.f32 %76, 1
  %79 = extractvalue %dx.types.CBufRet.f32 %76, 2
  %80 = fmul fast float %77, %74
  %81 = fmul fast float %78, %74
  %82 = fmul fast float %79, %74
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.f32 %83, 0
  %85 = extractvalue %dx.types.CBufRet.f32 %83, 1
  %86 = extractvalue %dx.types.CBufRet.f32 %83, 2
  %87 = fmul fast float %84, %75
  %88 = fmul fast float %85, %75
  %89 = fmul fast float %86, %75
  %90 = fadd fast float %87, %80
  %91 = fadd fast float %88, %81
  %92 = fadd fast float %89, %82
  %93 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %94 = extractvalue %dx.types.CBufRet.f32 %93, 0
  %95 = extractvalue %dx.types.CBufRet.f32 %93, 1
  %96 = extractvalue %dx.types.CBufRet.f32 %93, 2
  %97 = fadd fast float %90, %94
  %98 = fadd fast float %91, %95
  %99 = fadd fast float %92, %96
  %100 = fmul fast float %97, %71
  %101 = fmul fast float %98, %71
  %102 = fmul fast float %99, %71
  %103 = fmul fast float %100, %100
  %104 = fmul fast float %101, %101
  %105 = fadd fast float %103, %104
  %106 = fmul fast float %102, %102
  %107 = fadd fast float %105, %106
  %108 = call float @dx.op.unary.f32(i32 24, float %107)  ; Sqrt(value)
  %109 = fdiv fast float 1.000000e+00, %108
  %110 = fmul fast float %100, %109
  %111 = fmul fast float %101, %109
  %112 = fmul fast float %102, %109
  %113 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %35, i32 %36, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %114 = extractvalue %dx.types.ResRet.f32 %113, 0
  %115 = fcmp fast ogt float %114, -1.000000e+00
  %116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %117 = extractvalue %dx.types.CBufRet.f32 %116, 1
  %118 = select i1 %115, float %117, float 1.000000e+00
  %119 = fadd fast float %114, 1.000000e+00
  %120 = fmul fast float %118, %119
  %121 = call float @dx.op.unary.f32(i32 6, float %120)  ; FAbs(value)
  %122 = fdiv fast float 1.000000e+00, %71
  %123 = fmul fast float %122, %108
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 1
  %126 = fmul fast float %125, %123
  %127 = fmul fast float %123, %121
  %128 = extractvalue %dx.types.CBufRet.f32 %116, 3
  %129 = fcmp fast oge float %121, %128
  %130 = call float @dx.op.binary.f32(i32 36, float %127, float %126)  ; FMin(a,b)
  %131 = select i1 %129, float %126, float %130
  %132 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.i32 %132, 3
  %134 = icmp eq i32 %133, 0
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 2
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %139 = fsub fast float %136, %69
  %140 = fadd fast float %139, %138
  %141 = fsub fast float 0xC7EFFFFFE0000000, %69
  br i1 %134, label %153, label %142, !dx.controlflow.hints !35

; <label>:142                                     ; preds = %0
  %143 = fsub fast float -0.000000e+00, %68
  %144 = fsub fast float -0.000000e+00, %67
  %145 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %144, float %143, float %140)  ; Dot3(ax,ay,az,bx,by,bz)
  %146 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %110, float %111, float %112)  ; Dot3(ax,ay,az,bx,by,bz)
  %147 = fdiv fast float 1.000000e+00, %146
  %148 = fmul fast float %147, %145
  %149 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %144, float %143, float %141)  ; Dot3(ax,ay,az,bx,by,bz)
  %150 = fmul fast float %147, %149
  %151 = call float @dx.op.binary.f32(i32 36, float %148, float %150)  ; FMin(a,b)
  %152 = call float @dx.op.binary.f32(i32 35, float %148, float %150)  ; FMax(a,b)
  br label %186

; <label>:153                                     ; preds = %0
  %154 = extractvalue %dx.types.CBufRet.f32 %135, 0
  %155 = extractvalue %dx.types.CBufRet.f32 %135, 1
  %156 = extractvalue %dx.types.CBufRet.f32 %137, 0
  %157 = extractvalue %dx.types.CBufRet.f32 %137, 1
  %158 = fdiv fast float 1.000000e+00, %110
  %159 = fdiv fast float 1.000000e+00, %111
  %160 = fdiv fast float 1.000000e+00, %112
  %161 = fsub fast float %154, %67
  %162 = fmul fast float %158, %161
  %163 = fadd fast float %161, %156
  %164 = fmul fast float %163, %158
  %165 = call float @dx.op.binary.f32(i32 36, float %162, float %164)  ; FMin(a,b)
  %166 = call float @dx.op.binary.f32(i32 35, float %162, float %164)  ; FMax(a,b)
  %167 = fsub fast float %155, %68
  %168 = fmul fast float %159, %167
  %169 = fadd fast float %167, %157
  %170 = fmul fast float %169, %159
  %171 = call float @dx.op.binary.f32(i32 36, float %168, float %170)  ; FMin(a,b)
  %172 = call float @dx.op.binary.f32(i32 35, float %165, float %171)  ; FMax(a,b)
  %173 = call float @dx.op.binary.f32(i32 35, float %168, float %170)  ; FMax(a,b)
  %174 = call float @dx.op.binary.f32(i32 36, float %166, float %173)  ; FMin(a,b)
  %175 = fmul fast float %160, %141
  %176 = fmul fast float %160, %140
  %177 = call float @dx.op.binary.f32(i32 36, float %175, float %176)  ; FMin(a,b)
  %178 = call float @dx.op.binary.f32(i32 35, float %172, float %177)  ; FMax(a,b)
  %179 = call float @dx.op.binary.f32(i32 35, float %175, float %176)  ; FMax(a,b)
  %180 = call float @dx.op.binary.f32(i32 36, float %174, float %179)  ; FMin(a,b)
  %181 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %178)  ; FMax(a,b)
  %182 = fcmp fast ult float %180, %181
  br i1 %182, label %186, label %183, !dx.controlflow.hints !36

; <label>:183                                     ; preds = %153
  %184 = call float @dx.op.binary.f32(i32 36, float %178, float %180)  ; FMin(a,b)
  %185 = call float @dx.op.binary.f32(i32 35, float %178, float %180)  ; FMax(a,b)
  br label %186

; <label>:186                                     ; preds = %183, %153, %142
  %187 = phi float [ %151, %142 ], [ %184, %183 ], [ 0.000000e+00, %153 ]
  %188 = phi float [ %152, %142 ], [ %185, %183 ], [ 0.000000e+00, %153 ]
  %189 = fcmp fast oeq float %188, 0.000000e+00
  %190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.f32 %190, 1
  %192 = fcmp fast olt float %188, %191
  %193 = or i1 %189, %192
  br i1 %193, label %198, label %194, !dx.controlflow.hints !37

; <label>:194                                     ; preds = %186
  %195 = call float @dx.op.binary.f32(i32 35, float %191, float %187)  ; FMax(a,b)
  %196 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %195)  ; FMin(a,b)
  %197 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %188)  ; FMax(a,b)
  br label %198

; <label>:198                                     ; preds = %194, %186
  %199 = phi i32 [ 1, %194 ], [ 0, %186 ]
  %200 = phi float [ %197, %194 ], [ -1.000000e+00, %186 ]
  %201 = phi float [ %196, %194 ], [ 0x47EFFFFFE0000000, %186 ]
  %202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %203 = extractvalue %dx.types.CBufRet.f32 %202, 3
  %204 = fsub fast float -0.000000e+00, %67
  %205 = fsub fast float -0.000000e+00, %68
  %206 = fsub fast float %203, %69
  %207 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %204, float %205, float %206)  ; Dot3(ax,ay,az,bx,by,bz)
  %208 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %110, float %111, float %112)  ; Dot3(ax,ay,az,bx,by,bz)
  %209 = fdiv fast float 1.000000e+00, %208
  %210 = fmul fast float %209, %207
  %211 = fcmp fast olt float %210, 0.000000e+00
  %212 = fcmp fast ogt float %112, 0.000000e+00
  %213 = and i1 %212, %211
  br i1 %213, label %218, label %214, !dx.controlflow.hints !38

; <label>:214                                     ; preds = %198
  %215 = fcmp fast olt float %112, 0.000000e+00
  br i1 %215, label %216, label %218, !dx.controlflow.hints !39

; <label>:216                                     ; preds = %214
  %217 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %210)  ; FMax(a,b)
  br label %218

; <label>:218                                     ; preds = %216, %214, %198
  %219 = phi float [ 0.000000e+00, %198 ], [ %217, %216 ], [ 0.000000e+00, %214 ]
  %220 = phi float [ 0.000000e+00, %198 ], [ 0x47EFFFFFE0000000, %216 ], [ %210, %214 ]
  %221 = fcmp fast oeq float %220, 0.000000e+00
  br i1 %221, label %225, label %222, !dx.controlflow.hints !40

; <label>:222                                     ; preds = %218
  %223 = call float @dx.op.binary.f32(i32 36, float %201, float %219)  ; FMin(a,b)
  %224 = call float @dx.op.binary.f32(i32 35, float %200, float %220)  ; FMax(a,b)
  br label %225

; <label>:225                                     ; preds = %222, %218
  %226 = phi i32 [ 1, %222 ], [ 0, %218 ]
  %227 = phi float [ %224, %222 ], [ %200, %218 ]
  %228 = phi float [ %223, %222 ], [ %201, %218 ]
  %229 = call float @dx.op.binary.f32(i32 36, float %131, float %227)  ; FMin(a,b)
  %230 = call float @dx.op.binary.f32(i32 35, float %108, float %228)  ; FMax(a,b)
  %231 = extractvalue %dx.types.CBufRet.f32 %202, 0
  %232 = fmul fast float %56, 2.000000e+00
  %233 = fadd fast float %232, -1.000000e+00
  %234 = fmul fast float %231, %233
  %235 = fadd fast float %234, %230
  %236 = fcmp fast olt float %235, %229
  %237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %238 = extractvalue %dx.types.CBufRet.f32 %237, 2
  %239 = fcmp fast olt float %238, 1.000000e+00
  %240 = and i1 %236, %239
  br i1 %240, label %241, label %1953

; <label>:241                                     ; preds = %225
  %242 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %243 = extractvalue %dx.types.CBufRet.i32 %242, 1
  %244 = add i32 %243, -1
  %245 = fmul fast float %235, %112
  %246 = fadd fast float %245, %69
  %247 = fmul fast float %235, %111
  %248 = fadd fast float %247, %68
  %249 = fmul fast float %235, %110
  %250 = fadd fast float %249, %67
  br label %251

; <label>:251                                     ; preds = %1929, %241
  %252 = phi float [ %1931, %1929 ], [ 0.000000e+00, %241 ]
  %253 = phi float [ %1932, %1929 ], [ 1.000000e+00, %241 ]
  %254 = phi float [ %1933, %1929 ], [ 0.000000e+00, %241 ]
  %255 = phi float [ %1934, %1929 ], [ 0.000000e+00, %241 ]
  %256 = phi float [ %1935, %1929 ], [ 0.000000e+00, %241 ]
  %257 = phi float [ %1945, %1929 ], [ %250, %241 ]
  %258 = phi float [ %1946, %1929 ], [ %248, %241 ]
  %259 = phi float [ %1947, %1929 ], [ %246, %241 ]
  %260 = phi float [ %1930, %1929 ], [ %235, %241 ]
  %261 = phi i32 [ %444, %1929 ], [ %244, %241 ]
  %262 = phi float [ %1936, %1929 ], [ 0.000000e+00, %241 ]
  %263 = phi float [ %1937, %1929 ], [ 0.000000e+00, %241 ]
  %264 = phi float [ %1938, %1929 ], [ 0.000000e+00, %241 ]
  %265 = phi float [ %1939, %1929 ], [ 0.000000e+00, %241 ]
  %266 = phi float [ %1940, %1929 ], [ 0.000000e+00, %241 ]
  %267 = phi i32 [ %1941, %1929 ], [ 0, %241 ]
  %268 = fsub fast float -0.000000e+00, %258
  %269 = fsub fast float -0.000000e+00, %257
  %270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %271 = extractvalue %dx.types.CBufRet.f32 %270, 0
  %272 = icmp eq i32 %199, 0
  br i1 %272, label %441, label %273, !dx.controlflow.hints !41

; <label>:273                                     ; preds = %251
  %274 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %275 = extractvalue %dx.types.CBufRet.i32 %274, 1
  %276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %277 = extractvalue %dx.types.CBufRet.f32 %276, 1
  %278 = fcmp fast ogt float %277, %260
  br i1 %278, label %279, label %281, !dx.controlflow.hints !42

; <label>:279                                     ; preds = %273
  %280 = fsub fast float %277, %260
  br label %431

; <label>:281                                     ; preds = %273
  %282 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %283 = extractvalue %dx.types.CBufRet.i32 %282, 3
  %284 = icmp eq i32 %283, 0
  %285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %286 = extractvalue %dx.types.CBufRet.f32 %285, 2
  %287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %288 = extractvalue %dx.types.CBufRet.f32 %287, 2
  %289 = fsub fast float %286, %259
  %290 = fadd fast float %289, %288
  %291 = fsub fast float 0xC7EFFFFFE0000000, %259
  br i1 %284, label %299, label %292, !dx.controlflow.hints !35

; <label>:292                                     ; preds = %281
  %293 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %269, float %268, float %290)  ; Dot3(ax,ay,az,bx,by,bz)
  %294 = fmul fast float %209, %293
  %295 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %269, float %268, float %291)  ; Dot3(ax,ay,az,bx,by,bz)
  %296 = fmul fast float %209, %295
  %297 = call float @dx.op.binary.f32(i32 36, float %294, float %296)  ; FMin(a,b)
  %298 = call float @dx.op.binary.f32(i32 35, float %294, float %296)  ; FMax(a,b)
  br label %332

; <label>:299                                     ; preds = %281
  %300 = extractvalue %dx.types.CBufRet.f32 %285, 0
  %301 = extractvalue %dx.types.CBufRet.f32 %285, 1
  %302 = extractvalue %dx.types.CBufRet.f32 %287, 0
  %303 = extractvalue %dx.types.CBufRet.f32 %287, 1
  %304 = fdiv fast float 1.000000e+00, %110
  %305 = fdiv fast float 1.000000e+00, %111
  %306 = fdiv fast float 1.000000e+00, %112
  %307 = fsub fast float %300, %257
  %308 = fmul fast float %304, %307
  %309 = fadd fast float %307, %302
  %310 = fmul fast float %309, %304
  %311 = call float @dx.op.binary.f32(i32 36, float %308, float %310)  ; FMin(a,b)
  %312 = call float @dx.op.binary.f32(i32 35, float %308, float %310)  ; FMax(a,b)
  %313 = fsub fast float %301, %258
  %314 = fmul fast float %305, %313
  %315 = fadd fast float %313, %303
  %316 = fmul fast float %315, %305
  %317 = call float @dx.op.binary.f32(i32 36, float %314, float %316)  ; FMin(a,b)
  %318 = call float @dx.op.binary.f32(i32 35, float %311, float %317)  ; FMax(a,b)
  %319 = call float @dx.op.binary.f32(i32 35, float %314, float %316)  ; FMax(a,b)
  %320 = call float @dx.op.binary.f32(i32 36, float %312, float %319)  ; FMin(a,b)
  %321 = fmul fast float %306, %291
  %322 = fmul fast float %306, %290
  %323 = call float @dx.op.binary.f32(i32 36, float %321, float %322)  ; FMin(a,b)
  %324 = call float @dx.op.binary.f32(i32 35, float %318, float %323)  ; FMax(a,b)
  %325 = call float @dx.op.binary.f32(i32 35, float %321, float %322)  ; FMax(a,b)
  %326 = call float @dx.op.binary.f32(i32 36, float %320, float %325)  ; FMin(a,b)
  %327 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %324)  ; FMax(a,b)
  %328 = fcmp fast ult float %326, %327
  br i1 %328, label %332, label %329, !dx.controlflow.hints !36

; <label>:329                                     ; preds = %299
  %330 = call float @dx.op.binary.f32(i32 36, float %324, float %326)  ; FMin(a,b)
  %331 = call float @dx.op.binary.f32(i32 35, float %324, float %326)  ; FMax(a,b)
  br label %332

; <label>:332                                     ; preds = %329, %299, %292
  %333 = phi float [ %297, %292 ], [ %330, %329 ], [ 0.000000e+00, %299 ]
  %334 = phi float [ %298, %292 ], [ %331, %329 ], [ 0.000000e+00, %299 ]
  %335 = fcmp fast ogt float %333, 0.000000e+00
  br i1 %335, label %431, label %336, !dx.controlflow.hints !43

; <label>:336                                     ; preds = %332
  %337 = fcmp fast ugt float %334, 0.000000e+00
  br i1 %337, label %338, label %431, !dx.controlflow.hints !44

; <label>:338                                     ; preds = %336
  %339 = icmp sgt i32 %261, 0
  br i1 %339, label %340, label %425

; <label>:340                                     ; preds = %338
  br label %341

; <label>:341                                     ; preds = %421, %340
  %342 = phi i32 [ %422, %421 ], [ %261, %340 ]
  %343 = sitofp i32 %342 to float
  %344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %345 = extractvalue %dx.types.CBufRet.f32 %344, 0
  %346 = extractvalue %dx.types.CBufRet.f32 %344, 1
  %347 = fsub fast float %257, %345
  %348 = fsub fast float %258, %346
  %349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %350 = extractvalue %dx.types.CBufRet.f32 %349, 0
  %351 = extractvalue %dx.types.CBufRet.f32 %349, 1
  %352 = fmul fast float %347, %350
  %353 = fmul fast float %348, %351
  %354 = fsub fast float 1.000000e+00, %353
  %355 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %356 = extractvalue %dx.types.CBufRet.i32 %355, 3
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %364, label %358, !dx.controlflow.hints !45

; <label>:358                                     ; preds = %341
  %359 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %17, float %352, float %354, float undef, float undef, i32 0, i32 0, i32 undef, float %343)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %360 = extractvalue %dx.types.ResRet.f32 %359, 0
  %361 = extractvalue %dx.types.ResRet.f32 %359, 1
  %362 = extractvalue %dx.types.ResRet.f32 %359, 2
  %363 = extractvalue %dx.types.ResRet.f32 %359, 3
  br label %370

; <label>:364                                     ; preds = %341
  %365 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %18, float %352, float %354, float undef, float undef, i32 0, i32 0, i32 undef, float %343)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %366 = extractvalue %dx.types.ResRet.f32 %365, 0
  %367 = extractvalue %dx.types.ResRet.f32 %365, 1
  %368 = extractvalue %dx.types.ResRet.f32 %365, 2
  %369 = extractvalue %dx.types.ResRet.f32 %365, 3
  br label %370

; <label>:370                                     ; preds = %364, %358
  %371 = phi float [ %360, %358 ], [ %366, %364 ]
  %372 = phi float [ %361, %358 ], [ %367, %364 ]
  %373 = phi float [ %362, %358 ], [ %368, %364 ]
  %374 = phi float [ %363, %358 ], [ %369, %364 ]
  %375 = extractvalue %dx.types.CBufRet.f32 %349, 3
  %376 = fmul fast float %375, %371
  %377 = extractvalue %dx.types.CBufRet.f32 %344, 2
  %378 = fadd fast float %376, %377
  %379 = fmul fast float %375, %372
  %380 = fadd fast float %379, %377
  %381 = fmul fast float %375, %373
  %382 = fadd fast float %381, %377
  %383 = and i32 %342, 31
  %384 = shl i32 1, %383
  %385 = uitofp i32 %384 to float
  %386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %387 = extractvalue %dx.types.CBufRet.f32 %386, 3
  %388 = fdiv fast float 1.000000e+00, %387
  %389 = fmul fast float %388, %385
  %390 = fmul fast float %389, %112
  %391 = fadd fast float %390, %259
  %392 = fcmp fast oeq float %374, 0.000000e+00
  %393 = fcmp fast ogt float %259, %380
  %394 = fcmp fast ogt float %391, %380
  %395 = and i1 %393, %394
  %396 = or i1 %392, %395
  br i1 %396, label %397, label %401, !dx.controlflow.hints !46

; <label>:397                                     ; preds = %370
  %398 = add nsw i32 %342, 1
  %399 = add nsw i32 %275, -1
  %400 = call i32 @dx.op.binary.i32(i32 38, i32 %398, i32 %399)  ; IMin(a,b)
  br label %431

; <label>:401                                     ; preds = %370
  %402 = fcmp fast olt float %259, %382
  %403 = fcmp fast olt float %391, %382
  %404 = and i1 %402, %403
  br i1 %404, label %405, label %409, !dx.controlflow.hints !47

; <label>:405                                     ; preds = %401
  %406 = add nsw i32 %342, 1
  %407 = add nsw i32 %275, -1
  %408 = call i32 @dx.op.binary.i32(i32 38, i32 %406, i32 %407)  ; IMin(a,b)
  br label %431

; <label>:409                                     ; preds = %401
  %410 = fcmp fast olt float %259, %378
  %411 = fcmp fast olt float %391, %378
  %412 = and i1 %410, %411
  br i1 %412, label %413, label %421, !dx.controlflow.hints !48

; <label>:413                                     ; preds = %409
  %414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %415 = extractvalue %dx.types.CBufRet.f32 %414, 3
  %416 = extractvalue %dx.types.CBufRet.f32 %349, 2
  %417 = fcmp fast une float %415, %416
  br i1 %417, label %418, label %425, !dx.controlflow.hints !49

; <label>:418                                     ; preds = %413
  %419 = fsub fast float %259, %382
  %420 = call float @dx.op.binary.f32(i32 36, float %389, float %419)  ; FMin(a,b)
  br label %425

; <label>:421                                     ; preds = %409
  %422 = add nsw i32 %342, -1
  %423 = icmp sgt i32 %342, 1
  br i1 %423, label %341, label %424

; <label>:424                                     ; preds = %421
  br label %425

; <label>:425                                     ; preds = %424, %418, %413, %338
  %426 = phi float [ %420, %418 ], [ %389, %413 ], [ 0.000000e+00, %338 ], [ 0.000000e+00, %424 ]
  %427 = phi i32 [ %342, %418 ], [ %342, %413 ], [ %261, %338 ], [ %422, %424 ]
  %428 = add nsw i32 %427, 1
  %429 = add nsw i32 %275, -1
  %430 = call i32 @dx.op.binary.i32(i32 38, i32 %428, i32 %429)  ; IMin(a,b)
  br label %431

; <label>:431                                     ; preds = %425, %405, %397, %336, %332, %279
  %432 = phi float [ %280, %279 ], [ %389, %397 ], [ %389, %405 ], [ %426, %425 ], [ 0x47EFFFFFE0000000, %336 ], [ %333, %332 ]
  %433 = phi i32 [ %199, %279 ], [ %199, %397 ], [ %199, %405 ], [ %199, %425 ], [ 0, %336 ], [ %199, %332 ]
  %434 = phi i32 [ %261, %279 ], [ %400, %397 ], [ %408, %405 ], [ %430, %425 ], [ %261, %336 ], [ %261, %332 ]
  %435 = icmp ne i32 %433, 0
  %436 = zext i1 %435 to i32
  %437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %438 = extractvalue %dx.types.CBufRet.f32 %437, 2
  %439 = call float @dx.op.binary.f32(i32 35, float %432, float %438)  ; FMax(a,b)
  %440 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %439)  ; FMin(a,b)
  br label %441

; <label>:441                                     ; preds = %431, %251
  %442 = phi i32 [ %436, %431 ], [ 0, %251 ]
  %443 = phi float [ %440, %431 ], [ 0x47EFFFFFE0000000, %251 ]
  %444 = phi i32 [ %434, %431 ], [ %261, %251 ]
  %445 = icmp eq i32 %226, 0
  br i1 %445, label %458, label %446, !dx.controlflow.hints !50

; <label>:446                                     ; preds = %441
  %447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %448 = extractvalue %dx.types.CBufRet.f32 %447, 3
  %449 = extractvalue %dx.types.CBufRet.f32 %447, 2
  %450 = fmul fast float %448, %260
  %451 = fdiv fast float %450, %229
  %452 = fadd fast float %451, 1.000000e+00
  %453 = call float @dx.op.unary.f32(i32 23, float %452)  ; Log(value)
  %454 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %453)  ; FMin(a,b)
  %455 = fmul fast float %449, %229
  %456 = fmul fast float %455, %454
  %457 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %456)  ; FMin(a,b)
  br label %458

; <label>:458                                     ; preds = %446, %441
  %459 = phi float [ %457, %446 ], [ 0x47EFFFFFE0000000, %441 ]
  %460 = extractvalue %dx.types.CBufRet.f32 %270, 2
  %461 = fmul fast float %460, %260
  %462 = call float @dx.op.unary.f32(i32 23, float %461)  ; Log(value)
  %463 = fmul fast float %462, 0x3FE62E4300000000
  %464 = call float @dx.op.binary.f32(i32 35, float %463, float 1.000000e+00)  ; FMax(a,b)
  %465 = fmul fast float %464, %459
  %466 = call float @dx.op.binary.f32(i32 36, float %465, float %443)  ; FMin(a,b)
  %467 = call float @dx.op.binary.f32(i32 35, float %466, float %271)  ; FMax(a,b)
  %468 = fsub fast float %229, %260
  %469 = fadd fast float %468, 0x3F1A36E2E0000000
  %470 = call float @dx.op.binary.f32(i32 36, float %469, float %467)  ; FMin(a,b)
  %471 = icmp eq i32 %442, 0
  br i1 %471, label %577, label %472, !dx.controlflow.hints !51

; <label>:472                                     ; preds = %458
  %473 = fcmp fast olt float %469, %467
  %474 = fmul fast float %112, %55
  %475 = fmul fast float %474, %470
  %476 = fadd fast float %475, %259
  %477 = fmul fast float %112, %56
  %478 = fmul fast float %477, %470
  %479 = fadd fast float %478, %259
  %480 = fmul fast float %112, %57
  %481 = fmul fast float %480, %470
  %482 = fadd fast float %481, %259
  br i1 %473, label %483, label %488, !dx.controlflow.hints !52

; <label>:483                                     ; preds = %472
  %484 = fmul fast float %470, %110
  %485 = fmul fast float %470, %111
  %486 = fadd fast float %484, %257
  %487 = fadd fast float %485, %258
  br label %488

; <label>:488                                     ; preds = %483, %472
  %489 = phi float [ %486, %483 ], [ %257, %472 ]
  %490 = phi float [ %487, %483 ], [ %258, %472 ]
  %491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %492 = extractvalue %dx.types.CBufRet.f32 %491, 0
  %493 = extractvalue %dx.types.CBufRet.f32 %491, 1
  %494 = fsub fast float %489, %492
  %495 = fsub fast float %490, %493
  %496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %497 = extractvalue %dx.types.CBufRet.f32 %496, 0
  %498 = extractvalue %dx.types.CBufRet.f32 %496, 1
  %499 = fmul fast float %494, %497
  %500 = fmul fast float %495, %498
  %501 = fsub fast float 1.000000e+00, %500
  %502 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %503 = extractvalue %dx.types.CBufRet.i32 %502, 3
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %511, label %505, !dx.controlflow.hints !45

; <label>:505                                     ; preds = %488
  %506 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %17, float %499, float %501, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %507 = extractvalue %dx.types.ResRet.f32 %506, 0
  %508 = extractvalue %dx.types.ResRet.f32 %506, 1
  %509 = extractvalue %dx.types.ResRet.f32 %506, 2
  %510 = extractvalue %dx.types.ResRet.f32 %506, 3
  br label %517

; <label>:511                                     ; preds = %488
  %512 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %18, float %499, float %501, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %513 = extractvalue %dx.types.ResRet.f32 %512, 0
  %514 = extractvalue %dx.types.ResRet.f32 %512, 1
  %515 = extractvalue %dx.types.ResRet.f32 %512, 2
  %516 = extractvalue %dx.types.ResRet.f32 %512, 3
  br label %517

; <label>:517                                     ; preds = %511, %505
  %518 = phi float [ %507, %505 ], [ %513, %511 ]
  %519 = phi float [ %508, %505 ], [ %514, %511 ]
  %520 = phi float [ %509, %505 ], [ %515, %511 ]
  %521 = phi float [ %510, %505 ], [ %516, %511 ]
  %522 = extractvalue %dx.types.CBufRet.f32 %496, 3
  %523 = fmul fast float %522, %519
  %524 = fmul fast float %523, %518
  %525 = fsub fast float %523, %524
  %526 = fcmp fast ole float %525, 0.000000e+00
  %527 = extractvalue %dx.types.CBufRet.f32 %491, 2
  %528 = fadd fast float %524, %527
  %529 = fmul fast float %522, %520
  %530 = fadd fast float %529, %527
  %531 = fdiv fast float 1.000000e+00, %525
  %532 = select i1 %526, float 1.000000e+06, float %531
  %533 = fsub fast float %476, %528
  %534 = fmul fast float %532, %533
  %535 = call float @dx.op.unary.f32(i32 7, float %534)  ; Saturate(value)
  %536 = extractvalue %dx.types.CBufRet.f32 %496, 2
  %537 = fmul fast float %536, %535
  %538 = fsub fast float %536, %537
  %539 = fcmp fast olt float %476, %530
  %540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %541 = extractvalue %dx.types.CBufRet.f32 %540, 3
  %542 = select i1 %539, float %541, float 1.000000e+00
  %543 = fmul fast float %538, %542
  %544 = fsub fast float %479, %528
  %545 = fmul fast float %532, %544
  %546 = call float @dx.op.unary.f32(i32 7, float %545)  ; Saturate(value)
  %547 = fmul fast float %536, %546
  %548 = fsub fast float %536, %547
  %549 = fcmp fast olt float %479, %530
  %550 = select i1 %549, float %541, float 1.000000e+00
  %551 = fmul fast float %548, %550
  %552 = fadd fast float %551, %543
  %553 = fsub fast float %482, %528
  %554 = fmul fast float %532, %553
  %555 = call float @dx.op.unary.f32(i32 7, float %554)  ; Saturate(value)
  %556 = fmul fast float %536, %555
  %557 = fsub fast float %536, %556
  %558 = fcmp fast olt float %482, %530
  %559 = select i1 %558, float %541, float 1.000000e+00
  %560 = fmul fast float %557, %559
  %561 = fadd fast float %552, %560
  %562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %563 = extractvalue %dx.types.CBufRet.f32 %562, 2
  %564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %565 = extractvalue %dx.types.CBufRet.f32 %564, 0
  %566 = extractvalue %dx.types.CBufRet.f32 %564, 1
  %567 = extractvalue %dx.types.CBufRet.f32 %564, 2
  %568 = fmul fast float %470, 0x3FD5555560000000
  %569 = fmul fast float %568, %521
  %570 = fmul fast float %569, %563
  %571 = fmul fast float %570, %561
  %572 = extractvalue %dx.types.CBufRet.f32 %540, 0
  %573 = fmul fast float %571, %565
  %574 = fmul fast float %571, %566
  %575 = fmul fast float %571, %567
  %576 = fmul fast float %571, %572
  br label %577

; <label>:577                                     ; preds = %517, %458
  %578 = phi float [ %571, %517 ], [ 0.000000e+00, %458 ]
  %579 = phi float [ %576, %517 ], [ 0.000000e+00, %458 ]
  %580 = phi float [ %573, %517 ], [ 0.000000e+00, %458 ]
  %581 = phi float [ %574, %517 ], [ 0.000000e+00, %458 ]
  %582 = phi float [ %575, %517 ], [ 0.000000e+00, %458 ]
  br i1 %445, label %642, label %583, !dx.controlflow.hints !53

; <label>:583                                     ; preds = %577
  %584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %585 = extractvalue %dx.types.CBufRet.f32 %584, 0
  %586 = fsub fast float %585, %259
  %587 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %269, float %268, float %586)  ; Dot3(ax,ay,az,bx,by,bz)
  %588 = fmul fast float %209, %587
  %589 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %588)  ; FMax(a,b)
  %590 = fcmp fast olt float %112, 0.000000e+00
  %591 = call float @dx.op.binary.f32(i32 36, float %470, float %589)  ; FMin(a,b)
  br i1 %590, label %593, label %592, !dx.controlflow.hints !54

; <label>:592                                     ; preds = %583
  br label %593

; <label>:593                                     ; preds = %592, %583
  %594 = phi float [ 0.000000e+00, %592 ], [ %591, %583 ]
  %595 = phi float [ %591, %592 ], [ %470, %583 ]
  %596 = phi float [ %591, %592 ], [ 0.000000e+00, %583 ]
  %597 = phi float [ %470, %592 ], [ %591, %583 ]
  %598 = fsub fast float %595, %594
  %599 = extractvalue %dx.types.CBufRet.f32 %584, 1
  %600 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %599)  ; FMin(a,b)
  %601 = fsub fast float %259, %585
  %602 = fmul fast float %600, 0x3FF7154760000000
  %603 = fmul fast float %602, %601
  %604 = call float @dx.op.unary.f32(i32 21, float %603)  ; Exp(value)
  %605 = fmul fast float %112, 0x3FF7154760000000
  %606 = fmul fast float %605, %597
  %607 = fmul fast float %606, %600
  %608 = call float @dx.op.unary.f32(i32 21, float %607)  ; Exp(value)
  %609 = fmul fast float %605, %596
  %610 = fmul fast float %609, %600
  %611 = call float @dx.op.unary.f32(i32 21, float %610)  ; Exp(value)
  %612 = fsub fast float %608, %611
  %613 = fmul fast float %612, %604
  %614 = fmul fast float %600, %112
  %615 = fdiv fast float %613, %614
  %616 = fadd fast float %598, %615
  %617 = call float @dx.op.unary.f32(i32 6, float %112)  ; FAbs(value)
  %618 = fcmp fast olt float %617, 0x3F0FFB4800000000
  %619 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %601)  ; FMax(a,b)
  %620 = fmul fast float %619, 0x3FF7154760000000
  %621 = fmul fast float %620, %599
  %622 = call float @dx.op.unary.f32(i32 21, float %621)  ; Exp(value)
  %623 = fmul fast float %622, %470
  %624 = select i1 %618, float %623, float %616
  %625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %626 = extractvalue %dx.types.CBufRet.f32 %625, 1
  %627 = fmul fast float %624, %626
  %628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %629 = extractvalue %dx.types.CBufRet.f32 %628, 0
  %630 = extractvalue %dx.types.CBufRet.f32 %628, 1
  %631 = extractvalue %dx.types.CBufRet.f32 %628, 2
  %632 = extractvalue %dx.types.CBufRet.f32 %625, 2
  %633 = fmul fast float %629, %627
  %634 = fmul fast float %630, %627
  %635 = fmul fast float %631, %627
  %636 = fadd fast float %633, %580
  %637 = fadd fast float %634, %581
  %638 = fadd fast float %635, %582
  %639 = fmul fast float %632, %627
  %640 = fadd fast float %639, %579
  %641 = fadd fast float %627, %578
  br label %642

; <label>:642                                     ; preds = %593, %577
  %643 = phi float [ %641, %593 ], [ %578, %577 ]
  %644 = phi float [ %640, %593 ], [ %579, %577 ]
  %645 = phi float [ %636, %593 ], [ %580, %577 ]
  %646 = phi float [ %637, %593 ], [ %581, %577 ]
  %647 = phi float [ %638, %593 ], [ %582, %577 ]
  %648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %649 = extractvalue %dx.types.CBufRet.f32 %648, 1
  %650 = fcmp fast ogt float %643, %649
  br i1 %650, label %651, label %657, !dx.controlflow.hints !55

; <label>:651                                     ; preds = %642
  %652 = fdiv fast float 1.000000e+00, %643
  %653 = fmul fast float %652, %645
  %654 = fmul fast float %652, %646
  %655 = fmul fast float %652, %647
  %656 = fmul fast float %652, %644
  br label %657

; <label>:657                                     ; preds = %651, %642
  %658 = phi float [ %656, %651 ], [ %644, %642 ]
  %659 = phi float [ %653, %651 ], [ %645, %642 ]
  %660 = phi float [ %654, %651 ], [ %646, %642 ]
  %661 = phi float [ %655, %651 ], [ %647, %642 ]
  br i1 %650, label %664, label %662, !dx.controlflow.hints !56

; <label>:662                                     ; preds = %657
  %663 = fadd fast float %470, %260
  br label %1929

; <label>:664                                     ; preds = %657
  %665 = fmul fast float %643, 0xBFF7154760000000
  %666 = call float @dx.op.unary.f32(i32 21, float %665)  ; Exp(value)
  %667 = call float @dx.op.unary.f32(i32 7, float %666)  ; Saturate(value)
  %668 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %669 = extractvalue %dx.types.CBufRet.i32 %668, 0
  %670 = icmp eq i32 %669, 1
  br i1 %670, label %671, label %706, !dx.controlflow.hints !57

; <label>:671                                     ; preds = %664
  %672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %673 = extractvalue %dx.types.CBufRet.f32 %672, 0
  %674 = extractvalue %dx.types.CBufRet.f32 %672, 1
  %675 = fsub fast float %257, %673
  %676 = fsub fast float %258, %674
  %677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %678 = extractvalue %dx.types.CBufRet.f32 %677, 0
  %679 = extractvalue %dx.types.CBufRet.f32 %677, 1
  %680 = fmul fast float %675, %678
  %681 = fmul fast float %676, %679
  %682 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %18, float %680, float %681, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %683 = extractvalue %dx.types.ResRet.f32 %682, 0
  %684 = fcmp fast ogt float %683, 0.000000e+00
  %685 = extractvalue %dx.types.CBufRet.i32 %668, 3
  %686 = icmp ne i32 %685, 0
  %687 = and i1 %684, %686
  br i1 %687, label %688, label %706, !dx.controlflow.hints !58

; <label>:688                                     ; preds = %671
  %689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %690 = extractvalue %dx.types.CBufRet.f32 %689, 0
  %691 = extractvalue %dx.types.CBufRet.f32 %689, 1
  %692 = fsub fast float %257, %690
  %693 = fsub fast float %258, %691
  %694 = fmul fast float %692, %692
  %695 = fmul fast float %693, %693
  %696 = fadd fast float %694, %695
  %697 = uitofp i32 %685 to float
  %698 = fmul fast float %697, %697
  %699 = fcmp fast ogt float %696, %698
  br i1 %699, label %706, label %700, !dx.controlflow.hints !59

; <label>:700                                     ; preds = %688
  %701 = call float @dx.op.unary.f32(i32 24, float %696)  ; Sqrt(value)
  %702 = fsub fast float %697, %701
  %703 = fmul fast float %702, 0x3F75555560000000
  %704 = call float @dx.op.unary.f32(i32 7, float %703)  ; Saturate(value)
  %705 = call float @dx.op.binary.f32(i32 36, float %704, float %683)  ; FMin(a,b)
  br label %706

; <label>:706                                     ; preds = %700, %688, %671, %664
  %707 = phi float [ 1.000000e+00, %664 ], [ %705, %700 ], [ %683, %671 ], [ 0.000000e+00, %688 ]
  %708 = fcmp fast ogt float %707, 0.000000e+00
  br i1 %708, label %709, label %782, !dx.controlflow.hints !60

; <label>:709                                     ; preds = %706
  %710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %711 = extractvalue %dx.types.ResRet.i32 %710, 0
  %712 = extractvalue %dx.types.ResRet.i32 %710, 1
  %713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %714 = extractvalue %dx.types.ResRet.i32 %713, 0
  %715 = extractvalue %dx.types.ResRet.i32 %713, 1
  %716 = extractvalue %dx.types.ResRet.i32 %713, 2
  %717 = extractvalue %dx.types.ResRet.i32 %713, 3
  %718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %719 = extractvalue %dx.types.ResRet.i32 %718, 0
  %720 = extractvalue %dx.types.ResRet.i32 %718, 1
  %721 = extractvalue %dx.types.ResRet.i32 %718, 2
  %722 = extractvalue %dx.types.ResRet.i32 %718, 3
  %723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %724 = extractvalue %dx.types.ResRet.i32 %723, 0
  %725 = extractvalue %dx.types.ResRet.i32 %723, 1
  %726 = extractvalue %dx.types.ResRet.i32 %723, 2
  %727 = extractvalue %dx.types.ResRet.i32 %723, 3
  %728 = and i32 %724, 65535
  %729 = call float @dx.op.legacyF16ToF32(i32 131, i32 %728)  ; LegacyF16ToF32(value)
  %730 = lshr i32 %724, 16
  %731 = call float @dx.op.legacyF16ToF32(i32 131, i32 %730)  ; LegacyF16ToF32(value)
  %732 = and i32 %725, 65535
  %733 = call float @dx.op.legacyF16ToF32(i32 131, i32 %732)  ; LegacyF16ToF32(value)
  %734 = lshr i32 %725, 16
  %735 = call float @dx.op.legacyF16ToF32(i32 131, i32 %734)  ; LegacyF16ToF32(value)
  %736 = and i32 %726, 65535
  %737 = call float @dx.op.legacyF16ToF32(i32 131, i32 %736)  ; LegacyF16ToF32(value)
  %738 = lshr i32 %726, 16
  %739 = call float @dx.op.legacyF16ToF32(i32 131, i32 %738)  ; LegacyF16ToF32(value)
  %740 = and i32 %727, 65535
  %741 = call float @dx.op.legacyF16ToF32(i32 131, i32 %740)  ; LegacyF16ToF32(value)
  %742 = lshr i32 %727, 16
  %743 = call float @dx.op.legacyF16ToF32(i32 131, i32 %742)  ; LegacyF16ToF32(value)
  %744 = and i32 %719, 65535
  %745 = call float @dx.op.legacyF16ToF32(i32 131, i32 %744)  ; LegacyF16ToF32(value)
  %746 = lshr i32 %719, 16
  %747 = call float @dx.op.legacyF16ToF32(i32 131, i32 %746)  ; LegacyF16ToF32(value)
  %748 = and i32 %720, 65535
  %749 = call float @dx.op.legacyF16ToF32(i32 131, i32 %748)  ; LegacyF16ToF32(value)
  %750 = lshr i32 %720, 16
  %751 = call float @dx.op.legacyF16ToF32(i32 131, i32 %750)  ; LegacyF16ToF32(value)
  %752 = and i32 %721, 65535
  %753 = call float @dx.op.legacyF16ToF32(i32 131, i32 %752)  ; LegacyF16ToF32(value)
  %754 = lshr i32 %721, 16
  %755 = call float @dx.op.legacyF16ToF32(i32 131, i32 %754)  ; LegacyF16ToF32(value)
  %756 = and i32 %722, 65535
  %757 = call float @dx.op.legacyF16ToF32(i32 131, i32 %756)  ; LegacyF16ToF32(value)
  %758 = lshr i32 %722, 16
  %759 = call float @dx.op.legacyF16ToF32(i32 131, i32 %758)  ; LegacyF16ToF32(value)
  %760 = and i32 %714, 65535
  %761 = call float @dx.op.legacyF16ToF32(i32 131, i32 %760)  ; LegacyF16ToF32(value)
  %762 = lshr i32 %714, 16
  %763 = call float @dx.op.legacyF16ToF32(i32 131, i32 %762)  ; LegacyF16ToF32(value)
  %764 = and i32 %715, 65535
  %765 = call float @dx.op.legacyF16ToF32(i32 131, i32 %764)  ; LegacyF16ToF32(value)
  %766 = lshr i32 %715, 16
  %767 = call float @dx.op.legacyF16ToF32(i32 131, i32 %766)  ; LegacyF16ToF32(value)
  %768 = and i32 %716, 65535
  %769 = call float @dx.op.legacyF16ToF32(i32 131, i32 %768)  ; LegacyF16ToF32(value)
  %770 = lshr i32 %716, 16
  %771 = call float @dx.op.legacyF16ToF32(i32 131, i32 %770)  ; LegacyF16ToF32(value)
  %772 = and i32 %717, 65535
  %773 = call float @dx.op.legacyF16ToF32(i32 131, i32 %772)  ; LegacyF16ToF32(value)
  %774 = lshr i32 %717, 16
  %775 = call float @dx.op.legacyF16ToF32(i32 131, i32 %774)  ; LegacyF16ToF32(value)
  %776 = and i32 %711, 65535
  %777 = call float @dx.op.legacyF16ToF32(i32 131, i32 %776)  ; LegacyF16ToF32(value)
  %778 = lshr i32 %711, 16
  %779 = call float @dx.op.legacyF16ToF32(i32 131, i32 %778)  ; LegacyF16ToF32(value)
  %780 = and i32 %712, 65535
  %781 = call float @dx.op.legacyF16ToF32(i32 131, i32 %780)  ; LegacyF16ToF32(value)
  br label %782

; <label>:782                                     ; preds = %709, %706
  %783 = phi float [ %781, %709 ], [ 0.000000e+00, %706 ]
  %784 = phi float [ %779, %709 ], [ 0.000000e+00, %706 ]
  %785 = phi float [ %777, %709 ], [ 0.000000e+00, %706 ]
  %786 = phi float [ %775, %709 ], [ 0.000000e+00, %706 ]
  %787 = phi float [ %773, %709 ], [ 0.000000e+00, %706 ]
  %788 = phi float [ %771, %709 ], [ 0.000000e+00, %706 ]
  %789 = phi float [ %769, %709 ], [ 0.000000e+00, %706 ]
  %790 = phi float [ %767, %709 ], [ 0.000000e+00, %706 ]
  %791 = phi float [ %765, %709 ], [ 0.000000e+00, %706 ]
  %792 = phi float [ %763, %709 ], [ 0.000000e+00, %706 ]
  %793 = phi float [ %761, %709 ], [ 0.000000e+00, %706 ]
  %794 = phi float [ %759, %709 ], [ 0.000000e+00, %706 ]
  %795 = phi float [ %757, %709 ], [ 0.000000e+00, %706 ]
  %796 = phi float [ %755, %709 ], [ 0.000000e+00, %706 ]
  %797 = phi float [ %753, %709 ], [ 0.000000e+00, %706 ]
  %798 = phi float [ %751, %709 ], [ 0.000000e+00, %706 ]
  %799 = phi float [ %749, %709 ], [ 0.000000e+00, %706 ]
  %800 = phi float [ %747, %709 ], [ 0.000000e+00, %706 ]
  %801 = phi float [ %745, %709 ], [ 0.000000e+00, %706 ]
  %802 = phi float [ %743, %709 ], [ 0.000000e+00, %706 ]
  %803 = phi float [ %741, %709 ], [ 0.000000e+00, %706 ]
  %804 = phi float [ %739, %709 ], [ 0.000000e+00, %706 ]
  %805 = phi float [ %737, %709 ], [ 0.000000e+00, %706 ]
  %806 = phi float [ %735, %709 ], [ 0.000000e+00, %706 ]
  %807 = phi float [ %733, %709 ], [ 0.000000e+00, %706 ]
  %808 = phi float [ %731, %709 ], [ 0.000000e+00, %706 ]
  %809 = phi float [ %729, %709 ], [ 0.000000e+00, %706 ]
  %810 = fcmp fast olt float %707, 1.000000e+00
  br i1 %810, label %811, label %1471, !dx.controlflow.hints !61

; <label>:811                                     ; preds = %782
  %812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %813 = extractvalue %dx.types.CBufRet.f32 %812, 0
  %814 = extractvalue %dx.types.CBufRet.f32 %812, 1
  %815 = fsub fast float %257, %813
  %816 = fsub fast float %258, %814
  %817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %818 = extractvalue %dx.types.CBufRet.f32 %817, 0
  %819 = extractvalue %dx.types.CBufRet.f32 %817, 1
  %820 = fmul fast float %815, %818
  %821 = fmul fast float %816, %819
  %822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %823 = extractvalue %dx.types.CBufRet.f32 %822, 0
  %824 = fmul fast float %823, %820
  %825 = extractvalue %dx.types.CBufRet.f32 %822, 1
  %826 = fadd fast float %824, %825
  %827 = extractvalue %dx.types.CBufRet.f32 %822, 2
  %828 = fmul fast float %827, %821
  %829 = extractvalue %dx.types.CBufRet.f32 %822, 3
  %830 = fadd fast float %828, %829
  %831 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %18, float %826, float %830, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %832 = extractvalue %dx.types.ResRet.f32 %831, 0
  %833 = extractvalue %dx.types.ResRet.f32 %831, 1
  %834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %835 = extractvalue %dx.types.CBufRet.f32 %834, 1
  %836 = extractvalue %dx.types.CBufRet.f32 %834, 0
  %837 = fsub fast float %835, %836
  %838 = fmul fast float %837, %832
  %839 = fadd fast float %838, %836
  %840 = extractvalue %dx.types.CBufRet.f32 %834, 3
  %841 = extractvalue %dx.types.CBufRet.f32 %834, 2
  %842 = fsub fast float %840, %841
  %843 = fmul fast float %842, %833
  %844 = fadd fast float %843, %841
  %845 = fsub fast float %259, %839
  %846 = fsub fast float %844, %839
  %847 = fdiv fast float %845, %846
  %848 = call float @dx.op.unary.f32(i32 7, float %847)  ; Saturate(value)
  %849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %850 = extractvalue %dx.types.CBufRet.f32 %849, 0
  %851 = fmul fast float %850, %848
  %852 = extractvalue %dx.types.CBufRet.f32 %849, 1
  %853 = fadd fast float %851, %852
  %854 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %826, float %830, float %853, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %855 = extractvalue %dx.types.ResRet.f32 %854, 0
  %856 = extractvalue %dx.types.ResRet.f32 %854, 1
  %857 = extractvalue %dx.types.ResRet.f32 %854, 2
  %858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %859 = extractvalue %dx.types.CBufRet.f32 %858, 0
  %860 = extractvalue %dx.types.CBufRet.f32 %858, 1
  %861 = extractvalue %dx.types.CBufRet.f32 %858, 2
  %862 = fmul fast float %859, %855
  %863 = fmul fast float %860, %856
  %864 = fmul fast float %861, %857
  %865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %866 = extractvalue %dx.types.CBufRet.f32 %865, 0
  %867 = extractvalue %dx.types.CBufRet.f32 %865, 1
  %868 = extractvalue %dx.types.CBufRet.f32 %865, 2
  %869 = fadd fast float %862, %866
  %870 = fadd fast float %863, %867
  %871 = fadd fast float %864, %868
  %872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %873 = extractvalue %dx.types.CBufRet.f32 %872, 0
  %874 = fmul fast float %873, %820
  %875 = extractvalue %dx.types.CBufRet.f32 %872, 1
  %876 = fadd fast float %874, %875
  %877 = extractvalue %dx.types.CBufRet.f32 %872, 2
  %878 = fmul fast float %877, %821
  %879 = extractvalue %dx.types.CBufRet.f32 %872, 3
  %880 = fadd fast float %878, %879
  %881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %882 = extractvalue %dx.types.CBufRet.f32 %881, 0
  %883 = extractvalue %dx.types.CBufRet.f32 %881, 1
  %884 = extractvalue %dx.types.CBufRet.f32 %881, 2
  %885 = extractvalue %dx.types.CBufRet.f32 %881, 3
  %886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %887 = extractvalue %dx.types.CBufRet.f32 %886, 0
  %888 = extractvalue %dx.types.CBufRet.f32 %886, 1
  %889 = extractvalue %dx.types.CBufRet.f32 %886, 2
  %890 = extractvalue %dx.types.CBufRet.f32 %886, 3
  %891 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %876, float %880, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %892 = extractvalue %dx.types.ResRet.f32 %891, 0
  %893 = extractvalue %dx.types.ResRet.f32 %891, 1
  %894 = extractvalue %dx.types.ResRet.f32 %891, 2
  %895 = extractvalue %dx.types.ResRet.f32 %891, 3
  %896 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %876, float %880, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %897 = extractvalue %dx.types.ResRet.f32 %896, 0
  %898 = extractvalue %dx.types.ResRet.f32 %896, 1
  %899 = extractvalue %dx.types.ResRet.f32 %896, 2
  %900 = extractvalue %dx.types.ResRet.f32 %896, 3
  %901 = fmul fast float %892, %869
  %902 = fmul fast float %897, %869
  %903 = fmul fast float %899, %869
  %904 = fmul fast float %895, %869
  %905 = fadd fast float %901, %882
  %906 = fadd fast float %902, %883
  %907 = fadd fast float %903, %884
  %908 = fadd fast float %904, %885
  %909 = fmul fast float %893, %869
  %910 = fmul fast float %898, %869
  %911 = fadd fast float %909, %887
  %912 = fadd fast float %910, %888
  %913 = fmul fast float %894, %869
  %914 = fmul fast float %900, %869
  %915 = fadd fast float %913, %889
  %916 = fadd fast float %914, %890
  %917 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %876, float %880, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %918 = extractvalue %dx.types.ResRet.f32 %917, 0
  %919 = extractvalue %dx.types.ResRet.f32 %917, 1
  %920 = extractvalue %dx.types.ResRet.f32 %917, 2
  %921 = extractvalue %dx.types.ResRet.f32 %917, 3
  %922 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %876, float %880, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %923 = extractvalue %dx.types.ResRet.f32 %922, 0
  %924 = extractvalue %dx.types.ResRet.f32 %922, 1
  %925 = extractvalue %dx.types.ResRet.f32 %922, 2
  %926 = extractvalue %dx.types.ResRet.f32 %922, 3
  %927 = fmul fast float %918, %870
  %928 = fmul fast float %923, %870
  %929 = fmul fast float %925, %870
  %930 = fmul fast float %921, %870
  %931 = fadd fast float %905, %927
  %932 = fadd fast float %906, %928
  %933 = fadd fast float %907, %929
  %934 = fadd fast float %908, %930
  %935 = fmul fast float %919, %870
  %936 = fmul fast float %924, %870
  %937 = fadd fast float %911, %935
  %938 = fadd fast float %912, %936
  %939 = fmul fast float %920, %870
  %940 = fmul fast float %926, %870
  %941 = fadd fast float %915, %939
  %942 = fadd fast float %916, %940
  %943 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %876, float %880, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %944 = extractvalue %dx.types.ResRet.f32 %943, 0
  %945 = extractvalue %dx.types.ResRet.f32 %943, 1
  %946 = extractvalue %dx.types.ResRet.f32 %943, 2
  %947 = extractvalue %dx.types.ResRet.f32 %943, 3
  %948 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %876, float %880, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %949 = extractvalue %dx.types.ResRet.f32 %948, 0
  %950 = extractvalue %dx.types.ResRet.f32 %948, 1
  %951 = extractvalue %dx.types.ResRet.f32 %948, 2
  %952 = extractvalue %dx.types.ResRet.f32 %948, 3
  %953 = fmul fast float %944, %871
  %954 = fmul fast float %949, %871
  %955 = fmul fast float %951, %871
  %956 = fmul fast float %947, %871
  %957 = fadd fast float %931, %953
  %958 = fadd fast float %932, %954
  %959 = fadd fast float %933, %955
  %960 = fadd fast float %934, %956
  %961 = fmul fast float %945, %871
  %962 = fmul fast float %950, %871
  %963 = fadd fast float %937, %961
  %964 = fadd fast float %938, %962
  %965 = fmul fast float %946, %871
  %966 = fmul fast float %952, %871
  %967 = fadd fast float %941, %965
  %968 = fadd fast float %942, %966
  %969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %970 = extractvalue %dx.types.CBufRet.f32 %969, 0
  %971 = fsub fast float %257, %970
  %972 = fsub fast float %813, %257
  %973 = call float @dx.op.binary.f32(i32 35, float %972, float %971)  ; FMax(a,b)
  %974 = extractvalue %dx.types.CBufRet.f32 %969, 1
  %975 = fsub fast float %258, %974
  %976 = fsub fast float %814, %258
  %977 = call float @dx.op.binary.f32(i32 35, float %976, float %975)  ; FMax(a,b)
  %978 = call float @dx.op.binary.f32(i32 35, float %973, float %977)  ; FMax(a,b)
  %979 = extractvalue %dx.types.CBufRet.f32 %817, 3
  %980 = fmul fast float %979, %978
  %981 = call float @dx.op.unary.f32(i32 7, float %980)  ; Saturate(value)
  %982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %983 = extractvalue %dx.types.CBufRet.f32 %982, 0
  %984 = extractvalue %dx.types.CBufRet.f32 %982, 1
  %985 = extractvalue %dx.types.CBufRet.f32 %982, 2
  %986 = extractvalue %dx.types.CBufRet.f32 %982, 3
  %987 = fsub fast float %983, %957
  %988 = fsub fast float %984, %958
  %989 = fsub fast float %985, %959
  %990 = fsub fast float %986, %960
  %991 = fmul fast float %987, %981
  %992 = fmul fast float %988, %981
  %993 = fmul fast float %989, %981
  %994 = fmul fast float %990, %981
  %995 = fadd fast float %991, %957
  %996 = fadd fast float %992, %958
  %997 = fadd fast float %993, %959
  %998 = fadd fast float %994, %960
  %999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1000 = extractvalue %dx.types.CBufRet.f32 %999, 0
  %1001 = extractvalue %dx.types.CBufRet.f32 %999, 1
  %1002 = fsub fast float %1000, %963
  %1003 = fsub fast float %1001, %964
  %1004 = fmul fast float %1002, %981
  %1005 = fmul fast float %1003, %981
  %1006 = fadd fast float %1004, %963
  %1007 = fadd fast float %1005, %964
  %1008 = extractvalue %dx.types.CBufRet.f32 %999, 2
  %1009 = extractvalue %dx.types.CBufRet.f32 %999, 3
  %1010 = fsub fast float %1008, %967
  %1011 = fsub fast float %1009, %968
  %1012 = fmul fast float %1010, %981
  %1013 = fmul fast float %1011, %981
  %1014 = fadd fast float %1012, %967
  %1015 = fadd fast float %1013, %968
  %1016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1017 = extractvalue %dx.types.CBufRet.f32 %1016, 0
  %1018 = fmul fast float %1017, %995
  %1019 = fmul fast float %1017, %996
  %1020 = fmul fast float %1017, %997
  %1021 = fmul fast float %1017, %998
  %1022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1023 = extractvalue %dx.types.CBufRet.f32 %1022, 0
  %1024 = fmul fast float %1023, %1006
  %1025 = fmul fast float %1023, %1007
  %1026 = fadd fast float %1024, %1018
  %1027 = fadd fast float %1025, %1020
  %1028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1029 = extractvalue %dx.types.CBufRet.f32 %1028, 0
  %1030 = fmul fast float %1029, %1014
  %1031 = fmul fast float %1029, %1015
  %1032 = fadd fast float %1026, %1030
  %1033 = fadd fast float %1027, %1031
  %1034 = extractvalue %dx.types.CBufRet.f32 %1016, 1
  %1035 = fmul fast float %1034, %995
  %1036 = fmul fast float %1034, %996
  %1037 = fmul fast float %1034, %997
  %1038 = fmul fast float %1034, %998
  %1039 = extractvalue %dx.types.CBufRet.f32 %1022, 1
  %1040 = fmul fast float %1039, %1006
  %1041 = fmul fast float %1039, %1007
  %1042 = fadd fast float %1040, %1035
  %1043 = fadd fast float %1041, %1037
  %1044 = extractvalue %dx.types.CBufRet.f32 %1028, 1
  %1045 = fmul fast float %1044, %1014
  %1046 = fmul fast float %1044, %1015
  %1047 = fadd fast float %1042, %1045
  %1048 = fadd fast float %1043, %1046
  %1049 = extractvalue %dx.types.CBufRet.f32 %1016, 2
  %1050 = fmul fast float %1049, %995
  %1051 = fmul fast float %1049, %996
  %1052 = fmul fast float %1049, %997
  %1053 = fmul fast float %1049, %998
  %1054 = extractvalue %dx.types.CBufRet.f32 %1022, 2
  %1055 = fmul fast float %1054, %1006
  %1056 = fmul fast float %1054, %1007
  %1057 = fadd fast float %1055, %1050
  %1058 = fadd fast float %1056, %1052
  %1059 = extractvalue %dx.types.CBufRet.f32 %1028, 2
  %1060 = fmul fast float %1059, %1014
  %1061 = fmul fast float %1059, %1015
  %1062 = fadd fast float %1057, %1060
  %1063 = fadd fast float %1058, %1061
  %1064 = fmul fast float %1051, %1051
  %1065 = fmul fast float %1063, %1063
  %1066 = fmul fast float %1053, %1053
  %1067 = fadd fast float %1066, %1064
  %1068 = fadd fast float %1067, %1065
  %1069 = call float @dx.op.unary.f32(i32 24, float %1068)  ; Sqrt(value)
  %1070 = fcmp fast ugt float %1069, 0.000000e+00
  br i1 %1070, label %1071, label %1086, !dx.controlflow.hints !62

; <label>:1071                                    ; preds = %811
  %1072 = fsub fast float -0.000000e+00, %1053
  %1073 = fdiv fast float %1072, %1069
  %1074 = fsub fast float -0.000000e+00, %1051
  %1075 = fdiv fast float %1074, %1069
  %1076 = fdiv fast float %1063, %1069
  %1077 = fmul fast float %1062, 0x3FE279A760000000
  %1078 = fmul fast float %1075, %1051
  %1079 = fmul fast float %1076, %1063
  %1080 = fmul fast float %1073, %1053
  %1081 = fadd fast float %1078, %1080
  %1082 = fsub fast float %1081, %1079
  %1083 = call float @dx.op.unary.f32(i32 6, float %1082)  ; FAbs(value)
  %1084 = fadd fast float %1083, 0x3DDB7CDFE0000000
  %1085 = fdiv fast float %1077, %1084
  br label %1086

; <label>:1086                                    ; preds = %1071, %811
  %1087 = phi float [ %1085, %1071 ], [ 1.000000e+00, %811 ]
  %1088 = fmul fast float %1036, %1036
  %1089 = fmul fast float %1048, %1048
  %1090 = fmul fast float %1038, %1038
  %1091 = fadd fast float %1090, %1088
  %1092 = fadd fast float %1091, %1089
  %1093 = call float @dx.op.unary.f32(i32 24, float %1092)  ; Sqrt(value)
  %1094 = fcmp fast ugt float %1093, 0.000000e+00
  br i1 %1094, label %1095, label %1110, !dx.controlflow.hints !62

; <label>:1095                                    ; preds = %1086
  %1096 = fsub fast float -0.000000e+00, %1038
  %1097 = fdiv fast float %1096, %1093
  %1098 = fsub fast float -0.000000e+00, %1036
  %1099 = fdiv fast float %1098, %1093
  %1100 = fdiv fast float %1048, %1093
  %1101 = fmul fast float %1047, 0x3FE279A760000000
  %1102 = fmul fast float %1099, %1036
  %1103 = fmul fast float %1100, %1048
  %1104 = fmul fast float %1097, %1038
  %1105 = fadd fast float %1102, %1104
  %1106 = fsub fast float %1105, %1103
  %1107 = call float @dx.op.unary.f32(i32 6, float %1106)  ; FAbs(value)
  %1108 = fadd fast float %1107, 0x3DDB7CDFE0000000
  %1109 = fdiv fast float %1101, %1108
  br label %1110

; <label>:1110                                    ; preds = %1095, %1086
  %1111 = phi float [ %1109, %1095 ], [ 1.000000e+00, %1086 ]
  %1112 = call float @dx.op.binary.f32(i32 36, float %1111, float %1087)  ; FMin(a,b)
  %1113 = fmul fast float %1019, %1019
  %1114 = fmul fast float %1033, %1033
  %1115 = fmul fast float %1021, %1021
  %1116 = fadd fast float %1115, %1113
  %1117 = fadd fast float %1116, %1114
  %1118 = call float @dx.op.unary.f32(i32 24, float %1117)  ; Sqrt(value)
  %1119 = fcmp fast ugt float %1118, 0.000000e+00
  br i1 %1119, label %1120, label %1135, !dx.controlflow.hints !62

; <label>:1120                                    ; preds = %1110
  %1121 = fsub fast float -0.000000e+00, %1021
  %1122 = fdiv fast float %1121, %1118
  %1123 = fsub fast float -0.000000e+00, %1019
  %1124 = fdiv fast float %1123, %1118
  %1125 = fdiv fast float %1033, %1118
  %1126 = fmul fast float %1032, 0x3FE279A760000000
  %1127 = fmul fast float %1124, %1019
  %1128 = fmul fast float %1125, %1033
  %1129 = fmul fast float %1122, %1021
  %1130 = fadd fast float %1127, %1129
  %1131 = fsub fast float %1130, %1128
  %1132 = call float @dx.op.unary.f32(i32 6, float %1131)  ; FAbs(value)
  %1133 = fadd fast float %1132, 0x3DDB7CDFE0000000
  %1134 = fdiv fast float %1126, %1133
  br label %1135

; <label>:1135                                    ; preds = %1120, %1110
  %1136 = phi float [ %1134, %1120 ], [ 1.000000e+00, %1110 ]
  %1137 = call float @dx.op.binary.f32(i32 36, float %1136, float %1112)  ; FMin(a,b)
  %1138 = call float @dx.op.unary.f32(i32 7, float %1137)  ; Saturate(value)
  %1139 = fcmp fast olt float %1138, 1.000000e+00
  br i1 %1139, label %1140, label %1150, !dx.controlflow.hints !63

; <label>:1140                                    ; preds = %1135
  %1141 = fmul fast float %1138, %1019
  %1142 = fmul fast float %1138, %1033
  %1143 = fmul fast float %1138, %1021
  %1144 = fmul fast float %1138, %1036
  %1145 = fmul fast float %1138, %1048
  %1146 = fmul fast float %1138, %1038
  %1147 = fmul fast float %1138, %1051
  %1148 = fmul fast float %1138, %1063
  %1149 = fmul fast float %1138, %1053
  br label %1150

; <label>:1150                                    ; preds = %1140, %1135
  %1151 = phi float [ %1147, %1140 ], [ %1051, %1135 ]
  %1152 = phi float [ %1148, %1140 ], [ %1063, %1135 ]
  %1153 = phi float [ %1149, %1140 ], [ %1053, %1135 ]
  %1154 = phi float [ %1144, %1140 ], [ %1036, %1135 ]
  %1155 = phi float [ %1145, %1140 ], [ %1048, %1135 ]
  %1156 = phi float [ %1146, %1140 ], [ %1038, %1135 ]
  %1157 = phi float [ %1141, %1140 ], [ %1019, %1135 ]
  %1158 = phi float [ %1142, %1140 ], [ %1033, %1135 ]
  %1159 = phi float [ %1143, %1140 ], [ %1021, %1135 ]
  %1160 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1032)  ; FMax(a,b)
  %1161 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1047)  ; FMax(a,b)
  %1162 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1062)  ; FMax(a,b)
  %1163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1164 = extractvalue %dx.types.CBufRet.f32 %1163, 0
  %1165 = fcmp fast ogt float %1164, 0.000000e+00
  %1166 = fcmp fast oge float %820, 0.000000e+00
  %1167 = and i1 %1166, %1165
  %1168 = fcmp fast ole float %820, 1.000000e+00
  %1169 = and i1 %1168, %1167
  %1170 = fcmp fast oge float %821, 0.000000e+00
  %1171 = and i1 %1170, %1169
  %1172 = fcmp fast ole float %821, 1.000000e+00
  %1173 = and i1 %1172, %1171
  br i1 %1173, label %1174, label %1319, !dx.controlflow.hints !64

; <label>:1174                                    ; preds = %1150
  %1175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1176 = extractvalue %dx.types.CBufRet.f32 %1175, 2
  %1177 = extractvalue %dx.types.CBufRet.f32 %1175, 3
  %1178 = fmul fast float %1176, %820
  %1179 = fmul fast float %1177, %821
  %1180 = call float @dx.op.unary.f32(i32 27, float %1178)  ; Round_ni(value)
  %1181 = call float @dx.op.unary.f32(i32 27, float %1179)  ; Round_ni(value)
  %1182 = fptosi float %1180 to i32
  %1183 = fptosi float %1181 to i32
  %1184 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %1182, i32 %1183, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1185 = extractvalue %dx.types.ResRet.i32 %1184, 0
  %1186 = and i32 %1185, 65535
  %1187 = lshr i32 %1185, 16
  %1188 = icmp eq i32 %1186, 65535
  br i1 %1188, label %1225, label %1189, !dx.controlflow.hints !65

; <label>:1189                                    ; preds = %1174
  %1190 = extractvalue %dx.types.CBufRet.f32 %1163, 1
  %1191 = extractvalue %dx.types.CBufRet.f32 %1175, 0
  %1192 = extractvalue %dx.types.CBufRet.f32 %1175, 1
  %1193 = fmul fast float %1191, %820
  %1194 = fmul fast float %1192, %821
  %1195 = fmul fast float %1193, 1.250000e-01
  %1196 = fmul fast float %1194, 1.250000e-01
  %1197 = call float @dx.op.unary.f32(i32 27, float %1195)  ; Round_ni(value)
  %1198 = call float @dx.op.unary.f32(i32 27, float %1196)  ; Round_ni(value)
  %1199 = fmul fast float %1197, 8.000000e+00
  %1200 = fmul fast float %1198, 8.000000e+00
  %1201 = and i32 %1185, 255
  %1202 = lshr i32 %1185, 8
  %1203 = and i32 %1202, 255
  %1204 = mul nuw nsw i32 %1201, 9
  %1205 = uitofp i32 %1204 to float
  %1206 = mul nuw nsw i32 %1203, 9
  %1207 = uitofp i32 %1206 to float
  %1208 = fadd fast float %1205, 5.000000e-01
  %1209 = fadd fast float %1208, %1193
  %1210 = fsub fast float %1209, %1199
  %1211 = fadd fast float %1207, 5.000000e-01
  %1212 = fadd fast float %1211, %1194
  %1213 = fsub fast float %1212, %1200
  %1214 = fdiv fast float %1210, %1164
  %1215 = fdiv fast float %1213, %1190
  %1216 = fmul fast float %848, 4.375000e-01
  %1217 = fadd fast float %1216, 3.125000e-02
  %1218 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1214, float %1215, float %1217, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1219 = extractvalue %dx.types.ResRet.f32 %1218, 0
  %1220 = extractvalue %dx.types.ResRet.f32 %1218, 1
  %1221 = extractvalue %dx.types.ResRet.f32 %1218, 2
  %1222 = fadd fast float %1219, %1160
  %1223 = fadd fast float %1220, %1161
  %1224 = fadd fast float %1221, %1162
  br label %1225

; <label>:1225                                    ; preds = %1189, %1174
  %1226 = phi float [ %1224, %1189 ], [ %1162, %1174 ]
  %1227 = phi float [ %1223, %1189 ], [ %1161, %1174 ]
  %1228 = phi float [ %1222, %1189 ], [ %1160, %1174 ]
  %1229 = icmp eq i32 %1187, 65535
  br i1 %1229, label %1319, label %1230, !dx.controlflow.hints !66

; <label>:1230                                    ; preds = %1225
  %1231 = extractvalue %dx.types.CBufRet.f32 %1163, 1
  %1232 = extractvalue %dx.types.CBufRet.f32 %1175, 0
  %1233 = extractvalue %dx.types.CBufRet.f32 %1175, 1
  %1234 = fmul fast float %1232, %820
  %1235 = fmul fast float %1233, %821
  %1236 = fmul fast float %1234, 1.250000e-01
  %1237 = fmul fast float %1235, 1.250000e-01
  %1238 = call float @dx.op.unary.f32(i32 27, float %1236)  ; Round_ni(value)
  %1239 = call float @dx.op.unary.f32(i32 27, float %1237)  ; Round_ni(value)
  %1240 = fmul fast float %1238, 8.000000e+00
  %1241 = fmul fast float %1239, 8.000000e+00
  %1242 = fsub fast float %1234, %1240
  %1243 = fsub fast float %1235, %1241
  %1244 = fadd fast float %1242, 5.000000e-01
  %1245 = fadd fast float %1243, 5.000000e-01
  %1246 = and i32 %1187, 255
  %1247 = lshr i32 %1185, 24
  %1248 = mul nuw nsw i32 %1246, 9
  %1249 = uitofp i32 %1248 to float
  %1250 = mul nuw nsw i32 %1247, 9
  %1251 = uitofp i32 %1250 to float
  %1252 = fadd fast float %1244, %1249
  %1253 = fadd fast float %1245, %1251
  %1254 = fdiv fast float %1252, %1164
  %1255 = fdiv fast float %1253, %1231
  %1256 = fmul fast float %848, 4.375000e-01
  %1257 = fadd fast float %1256, 3.125000e-02
  %1258 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1254, float %1255, float %1257, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1259 = extractvalue %dx.types.ResRet.f32 %1258, 0
  %1260 = extractvalue %dx.types.ResRet.f32 %1258, 1
  %1261 = extractvalue %dx.types.ResRet.f32 %1258, 2
  %1262 = fadd fast float %1256, 5.312500e-01
  %1263 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1254, float %1255, float %1262, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1264 = extractvalue %dx.types.ResRet.f32 %1263, 0
  %1265 = extractvalue %dx.types.ResRet.f32 %1263, 1
  %1266 = extractvalue %dx.types.ResRet.f32 %1263, 2
  %1267 = fmul fast float %1264, 2.000000e+00
  %1268 = fmul fast float %1265, 2.000000e+00
  %1269 = fmul fast float %1266, 2.000000e+00
  %1270 = fadd fast float %1267, -1.000000e+00
  %1271 = fadd fast float %1268, -1.000000e+00
  %1272 = fadd fast float %1269, -1.000000e+00
  %1273 = fmul fast float %1270, %1270
  %1274 = fmul fast float %1271, %1271
  %1275 = fadd fast float %1273, %1274
  %1276 = fmul fast float %1272, %1272
  %1277 = fadd fast float %1275, %1276
  %1278 = call float @dx.op.unary.f32(i32 24, float %1277)  ; Sqrt(value)
  %1279 = fcmp fast ogt float %1278, 0.000000e+00
  br i1 %1279, label %1280, label %1284, !dx.controlflow.hints !67

; <label>:1280                                    ; preds = %1230
  %1281 = fdiv fast float %1270, %1278
  %1282 = fdiv fast float %1271, %1278
  %1283 = fdiv fast float %1272, %1278
  br label %1284

; <label>:1284                                    ; preds = %1280, %1230
  %1285 = phi float [ %1281, %1280 ], [ 0.000000e+00, %1230 ]
  %1286 = phi float [ %1282, %1280 ], [ 0.000000e+00, %1230 ]
  %1287 = phi float [ %1283, %1280 ], [ 0.000000e+00, %1230 ]
  %1288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1289 = extractvalue %dx.types.CBufRet.f32 %1288, 0
  %1290 = extractvalue %dx.types.CBufRet.f32 %1288, 1
  %1291 = fsub fast float %257, %1289
  %1292 = fsub fast float %258, %1290
  %1293 = fmul fast float %1291, %1291
  %1294 = fmul fast float %1292, %1292
  %1295 = fadd fast float %1293, %1294
  %1296 = call float @dx.op.unary.f32(i32 24, float %1295)  ; Sqrt(value)
  %1297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1298 = extractvalue %dx.types.CBufRet.f32 %1297, 0
  %1299 = extractvalue %dx.types.CBufRet.f32 %1297, 1
  %1300 = fsub fast float %1296, %1298
  %1301 = fdiv fast float %1300, %1299
  %1302 = call float @dx.op.unary.f32(i32 7, float %1301)  ; Saturate(value)
  %1303 = fmul fast float %1302, 2.000000e+00
  %1304 = fsub fast float 3.000000e+00, %1303
  %1305 = fmul fast float %1302, %1302
  %1306 = fmul fast float %1305, %1304
  %1307 = call float @dx.op.dot3.f32(i32 55, float %1285, float %1286, float %1287, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1308 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1307)  ; FMax(a,b)
  %1309 = fmul fast float %1308, 0x400C5BF8A0000000
  %1310 = fmul fast float %1306, %1259
  %1311 = fmul fast float %1310, %1309
  %1312 = fadd fast float %1311, %1228
  %1313 = fmul fast float %1306, %1260
  %1314 = fmul fast float %1313, %1309
  %1315 = fadd fast float %1314, %1227
  %1316 = fmul fast float %1306, %1261
  %1317 = fmul fast float %1316, %1309
  %1318 = fadd fast float %1317, %1226
  br label %1319

; <label>:1319                                    ; preds = %1284, %1225, %1150
  %1320 = phi float [ %1318, %1284 ], [ %1226, %1225 ], [ %1162, %1150 ]
  %1321 = phi float [ %1315, %1284 ], [ %1227, %1225 ], [ %1161, %1150 ]
  %1322 = phi float [ %1312, %1284 ], [ %1228, %1225 ], [ %1160, %1150 ]
  %1323 = fcmp fast ogt float %259, %844
  %1324 = and i1 %1166, %1323
  %1325 = and i1 %1168, %1324
  %1326 = and i1 %1170, %1325
  %1327 = and i1 %1172, %1326
  br i1 %1327, label %1328, label %1385, !dx.controlflow.hints !68

; <label>:1328                                    ; preds = %1319
  %1329 = fmul fast float %846, 0x3FC24924A0000000
  %1330 = fsub fast float %259, %844
  %1331 = fdiv fast float %1330, %1329
  %1332 = call float @dx.op.unary.f32(i32 7, float %1331)  ; Saturate(value)
  %1333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1334 = extractvalue %dx.types.CBufRet.f32 %1333, 0
  %1335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1336 = extractvalue %dx.types.CBufRet.f32 %1335, 0
  %1337 = extractvalue %dx.types.CBufRet.f32 %1335, 1
  %1338 = extractvalue %dx.types.CBufRet.f32 %1335, 2
  %1339 = fsub fast float %1334, %1322
  %1340 = fsub fast float %1336, %1157
  %1341 = fsub fast float %1337, %1158
  %1342 = fsub fast float %1338, %1159
  %1343 = fmul fast float %1339, %1332
  %1344 = fmul fast float %1340, %1332
  %1345 = fmul fast float %1341, %1332
  %1346 = fmul fast float %1342, %1332
  %1347 = fadd fast float %1343, %1322
  %1348 = fadd fast float %1344, %1157
  %1349 = fadd fast float %1345, %1158
  %1350 = fadd fast float %1346, %1159
  %1351 = extractvalue %dx.types.CBufRet.f32 %1333, 1
  %1352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1353 = extractvalue %dx.types.CBufRet.f32 %1352, 0
  %1354 = extractvalue %dx.types.CBufRet.f32 %1352, 1
  %1355 = extractvalue %dx.types.CBufRet.f32 %1352, 2
  %1356 = fsub fast float %1351, %1321
  %1357 = fsub fast float %1353, %1154
  %1358 = fsub fast float %1354, %1155
  %1359 = fsub fast float %1355, %1156
  %1360 = fmul fast float %1356, %1332
  %1361 = fmul fast float %1357, %1332
  %1362 = fmul fast float %1358, %1332
  %1363 = fmul fast float %1359, %1332
  %1364 = fadd fast float %1360, %1321
  %1365 = fadd fast float %1361, %1154
  %1366 = fadd fast float %1362, %1155
  %1367 = fadd fast float %1363, %1156
  %1368 = extractvalue %dx.types.CBufRet.f32 %1333, 2
  %1369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1370 = extractvalue %dx.types.CBufRet.f32 %1369, 0
  %1371 = extractvalue %dx.types.CBufRet.f32 %1369, 1
  %1372 = extractvalue %dx.types.CBufRet.f32 %1369, 2
  %1373 = fsub fast float %1368, %1320
  %1374 = fsub fast float %1370, %1151
  %1375 = fsub fast float %1371, %1152
  %1376 = fsub fast float %1372, %1153
  %1377 = fmul fast float %1373, %1332
  %1378 = fmul fast float %1374, %1332
  %1379 = fmul fast float %1375, %1332
  %1380 = fmul fast float %1376, %1332
  %1381 = fadd fast float %1377, %1320
  %1382 = fadd fast float %1378, %1151
  %1383 = fadd fast float %1379, %1152
  %1384 = fadd fast float %1380, %1153
  br label %1385

; <label>:1385                                    ; preds = %1328, %1319
  %1386 = phi float [ %1381, %1328 ], [ %1320, %1319 ]
  %1387 = phi float [ %1382, %1328 ], [ %1151, %1319 ]
  %1388 = phi float [ %1383, %1328 ], [ %1152, %1319 ]
  %1389 = phi float [ %1384, %1328 ], [ %1153, %1319 ]
  %1390 = phi float [ %1364, %1328 ], [ %1321, %1319 ]
  %1391 = phi float [ %1365, %1328 ], [ %1154, %1319 ]
  %1392 = phi float [ %1366, %1328 ], [ %1155, %1319 ]
  %1393 = phi float [ %1367, %1328 ], [ %1156, %1319 ]
  %1394 = phi float [ %1347, %1328 ], [ %1322, %1319 ]
  %1395 = phi float [ %1348, %1328 ], [ %1157, %1319 ]
  %1396 = phi float [ %1349, %1328 ], [ %1158, %1319 ]
  %1397 = phi float [ %1350, %1328 ], [ %1159, %1319 ]
  %1398 = extractvalue %dx.types.CBufRet.f32 %969, 3
  %1399 = fmul fast float %1398, %1394
  %1400 = fmul fast float %1398, %1390
  %1401 = fmul fast float %1398, %1386
  %1402 = fmul fast float %1395, 1.500000e+00
  %1403 = fmul fast float %1402, %1398
  %1404 = fmul fast float %1396, 1.500000e+00
  %1405 = fmul fast float %1404, %1398
  %1406 = fmul fast float %1397, 1.500000e+00
  %1407 = fmul fast float %1406, %1398
  %1408 = fmul fast float %1391, 1.500000e+00
  %1409 = fmul fast float %1408, %1398
  %1410 = fmul fast float %1392, 1.500000e+00
  %1411 = fmul fast float %1410, %1398
  %1412 = fmul fast float %1393, 1.500000e+00
  %1413 = fmul fast float %1412, %1398
  %1414 = fmul fast float %1387, 1.500000e+00
  %1415 = fmul fast float %1414, %1398
  %1416 = fmul fast float %1388, 1.500000e+00
  %1417 = fmul fast float %1416, %1398
  %1418 = fmul fast float %1389, 1.500000e+00
  %1419 = fmul fast float %1418, %1398
  %1420 = fsub fast float %809, %1399
  %1421 = fmul fast float %1420, %707
  %1422 = fadd fast float %1421, %1399
  %1423 = fsub fast float %808, %1403
  %1424 = fmul fast float %1423, %707
  %1425 = fadd fast float %1424, %1403
  %1426 = fsub fast float %807, %1405
  %1427 = fmul fast float %1426, %707
  %1428 = fadd fast float %1427, %1405
  %1429 = fsub fast float %806, %1407
  %1430 = fmul fast float %1429, %707
  %1431 = fadd fast float %1430, %1407
  %1432 = fmul fast float %805, %707
  %1433 = fmul fast float %804, %707
  %1434 = fmul fast float %803, %707
  %1435 = fmul fast float %802, %707
  %1436 = fmul fast float %801, %707
  %1437 = fsub fast float %800, %1400
  %1438 = fmul fast float %1437, %707
  %1439 = fadd fast float %1438, %1400
  %1440 = fsub fast float %799, %1409
  %1441 = fmul fast float %1440, %707
  %1442 = fadd fast float %1441, %1409
  %1443 = fsub fast float %798, %1411
  %1444 = fmul fast float %1443, %707
  %1445 = fadd fast float %1444, %1411
  %1446 = fsub fast float %797, %1413
  %1447 = fmul fast float %1446, %707
  %1448 = fadd fast float %1447, %1413
  %1449 = fmul fast float %796, %707
  %1450 = fmul fast float %795, %707
  %1451 = fmul fast float %794, %707
  %1452 = fmul fast float %793, %707
  %1453 = fmul fast float %792, %707
  %1454 = fsub fast float %791, %1401
  %1455 = fmul fast float %1454, %707
  %1456 = fadd fast float %1455, %1401
  %1457 = fsub fast float %790, %1415
  %1458 = fmul fast float %1457, %707
  %1459 = fadd fast float %1458, %1415
  %1460 = fsub fast float %789, %1417
  %1461 = fmul fast float %1460, %707
  %1462 = fadd fast float %1461, %1417
  %1463 = fsub fast float %788, %1419
  %1464 = fmul fast float %1463, %707
  %1465 = fadd fast float %1464, %1419
  %1466 = fmul fast float %787, %707
  %1467 = fmul fast float %786, %707
  %1468 = fmul fast float %785, %707
  %1469 = fmul fast float %784, %707
  %1470 = fmul fast float %783, %707
  br label %1471

; <label>:1471                                    ; preds = %1385, %782
  %1472 = phi float [ %1470, %1385 ], [ %783, %782 ]
  %1473 = phi float [ %1469, %1385 ], [ %784, %782 ]
  %1474 = phi float [ %1468, %1385 ], [ %785, %782 ]
  %1475 = phi float [ %1467, %1385 ], [ %786, %782 ]
  %1476 = phi float [ %1466, %1385 ], [ %787, %782 ]
  %1477 = phi float [ %1465, %1385 ], [ %788, %782 ]
  %1478 = phi float [ %1462, %1385 ], [ %789, %782 ]
  %1479 = phi float [ %1459, %1385 ], [ %790, %782 ]
  %1480 = phi float [ %1456, %1385 ], [ %791, %782 ]
  %1481 = phi float [ %1453, %1385 ], [ %792, %782 ]
  %1482 = phi float [ %1452, %1385 ], [ %793, %782 ]
  %1483 = phi float [ %1451, %1385 ], [ %794, %782 ]
  %1484 = phi float [ %1450, %1385 ], [ %795, %782 ]
  %1485 = phi float [ %1449, %1385 ], [ %796, %782 ]
  %1486 = phi float [ %1448, %1385 ], [ %797, %782 ]
  %1487 = phi float [ %1445, %1385 ], [ %798, %782 ]
  %1488 = phi float [ %1442, %1385 ], [ %799, %782 ]
  %1489 = phi float [ %1439, %1385 ], [ %800, %782 ]
  %1490 = phi float [ %1436, %1385 ], [ %801, %782 ]
  %1491 = phi float [ %1435, %1385 ], [ %802, %782 ]
  %1492 = phi float [ %1434, %1385 ], [ %803, %782 ]
  %1493 = phi float [ %1433, %1385 ], [ %804, %782 ]
  %1494 = phi float [ %1432, %1385 ], [ %805, %782 ]
  %1495 = phi float [ %1431, %1385 ], [ %806, %782 ]
  %1496 = phi float [ %1428, %1385 ], [ %807, %782 ]
  %1497 = phi float [ %1425, %1385 ], [ %808, %782 ]
  %1498 = phi float [ %1422, %1385 ], [ %809, %782 ]
  %1499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1500 = extractvalue %dx.types.CBufRet.f32 %1499, 2
  %1501 = fmul fast float %1500, %1500
  %1502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1503 = extractvalue %dx.types.CBufRet.f32 %1502, 0
  %1504 = extractvalue %dx.types.CBufRet.f32 %1502, 1
  %1505 = extractvalue %dx.types.CBufRet.f32 %1502, 2
  %1506 = fmul fast float %1498, 0x3FD20DD760000000
  %1507 = fmul fast float %1505, %1496
  %1508 = fmul fast float %1505, %1505
  %1509 = fmul fast float %1508, 0x3FEE471020000000
  %1510 = fadd fast float %1509, 0xBFD42F6020000000
  %1511 = fmul fast float %1510, %1492
  %1512 = fmul fast float %1503, %1495
  %1513 = fmul fast float %1504, %1497
  %1514 = fmul fast float %1505, 0x3FF17B1420000000
  %1515 = fmul fast float %1501, %1491
  %1516 = fmul fast float %1515, %1503
  %1517 = fmul fast float %1516, %1514
  %1518 = fmul fast float %1501, %1493
  %1519 = fmul fast float %1518, %1504
  %1520 = fmul fast float %1519, %1514
  %1521 = fmul fast float %1503, %1503
  %1522 = fmul fast float %1504, %1504
  %1523 = fsub fast float %1521, %1522
  %1524 = fmul fast float %1490, 0x3FE17B1420000000
  %1525 = fmul fast float %1524, %1523
  %1526 = fmul fast float %1494, 0x3FF17B1420000000
  %1527 = fmul fast float %1526, %1504
  %1528 = fmul fast float %1527, %1503
  %1529 = fadd fast float %1525, %1528
  %1530 = fadd fast float %1529, %1511
  %1531 = fmul fast float %1530, %1501
  %1532 = fsub fast float %1513, %1507
  %1533 = fadd fast float %1532, %1512
  %1534 = fmul fast float %1533, 0x3FDF454380000000
  %1535 = fmul fast float %1534, %1500
  %1536 = fsub fast float %1506, %1517
  %1537 = fsub fast float %1536, %1520
  %1538 = fadd fast float %1537, %1531
  %1539 = fadd fast float %1538, %1535
  %1540 = fmul fast float %1489, 0x3FD20DD760000000
  %1541 = fmul fast float %1505, %1487
  %1542 = fmul fast float %1510, %1483
  %1543 = fmul fast float %1503, %1486
  %1544 = fmul fast float %1504, %1488
  %1545 = fmul fast float %1501, %1482
  %1546 = fmul fast float %1545, %1503
  %1547 = fmul fast float %1546, %1514
  %1548 = fmul fast float %1501, %1484
  %1549 = fmul fast float %1548, %1504
  %1550 = fmul fast float %1549, %1514
  %1551 = fmul fast float %1481, 0x3FE17B1420000000
  %1552 = fmul fast float %1551, %1523
  %1553 = fmul fast float %1485, 0x3FF17B1420000000
  %1554 = fmul fast float %1553, %1504
  %1555 = fmul fast float %1554, %1503
  %1556 = fadd fast float %1552, %1555
  %1557 = fadd fast float %1556, %1542
  %1558 = fmul fast float %1557, %1501
  %1559 = fsub fast float %1544, %1541
  %1560 = fadd fast float %1559, %1543
  %1561 = fmul fast float %1560, 0x3FDF454380000000
  %1562 = fmul fast float %1561, %1500
  %1563 = fsub fast float %1540, %1547
  %1564 = fsub fast float %1563, %1550
  %1565 = fadd fast float %1564, %1558
  %1566 = fadd fast float %1565, %1562
  %1567 = fmul fast float %1480, 0x3FD20DD760000000
  %1568 = fmul fast float %1505, %1478
  %1569 = fmul fast float %1510, %1474
  %1570 = fmul fast float %1503, %1477
  %1571 = fmul fast float %1504, %1479
  %1572 = fmul fast float %1501, %1473
  %1573 = fmul fast float %1572, %1503
  %1574 = fmul fast float %1573, %1514
  %1575 = fmul fast float %1501, %1475
  %1576 = fmul fast float %1575, %1504
  %1577 = fmul fast float %1576, %1514
  %1578 = fmul fast float %1472, 0x3FE17B1420000000
  %1579 = fmul fast float %1578, %1523
  %1580 = fmul fast float %1476, 0x3FF17B1420000000
  %1581 = fmul fast float %1580, %1504
  %1582 = fmul fast float %1581, %1503
  %1583 = fadd fast float %1579, %1582
  %1584 = fadd fast float %1583, %1569
  %1585 = fmul fast float %1584, %1501
  %1586 = fsub fast float %1571, %1568
  %1587 = fadd fast float %1586, %1570
  %1588 = fmul fast float %1587, 0x3FDF454380000000
  %1589 = fmul fast float %1588, %1500
  %1590 = fsub fast float %1567, %1574
  %1591 = fsub fast float %1590, %1577
  %1592 = fadd fast float %1591, %1585
  %1593 = fadd fast float %1592, %1589
  %1594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1595 = extractvalue %dx.types.CBufRet.f32 %1594, 3
  %1596 = extractvalue %dx.types.CBufRet.f32 %648, 0
  %1597 = fmul fast float %1596, %1595
  %1598 = fmul fast float %1597, %1539
  %1599 = fmul fast float %1597, %1566
  %1600 = fmul fast float %1597, %1593
  %1601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1602 = extractvalue %dx.types.CBufRet.f32 %1601, 3
  %1603 = fcmp fast une float %1602, 0.000000e+00
  %1604 = extractvalue %dx.types.CBufRet.f32 %1601, 0
  %1605 = extractvalue %dx.types.CBufRet.f32 %1601, 1
  %1606 = extractvalue %dx.types.CBufRet.f32 %1601, 2
  br i1 %1603, label %1607, label %1629, !dx.controlflow.hints !69

; <label>:1607                                    ; preds = %1471
  %1608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1609 = extractvalue %dx.types.CBufRet.f32 %1608, 0
  %1610 = extractvalue %dx.types.CBufRet.f32 %1608, 1
  %1611 = extractvalue %dx.types.CBufRet.f32 %1608, 2
  %1612 = call float @dx.op.dot3.f32(i32 55, float %1604, float %1605, float %1606, float %110, float %111, float %112)  ; Dot3(ax,ay,az,bx,by,bz)
  %1613 = fcmp fast ogt float %658, 0.000000e+00
  %1614 = select i1 %1613, float 1.000000e+00, float -1.000000e+00
  %1615 = fmul fast float %1614, 5.000000e-01
  %1616 = fmul fast float %1615, %1612
  %1617 = fmul fast float %1614, %658
  %1618 = fadd fast float %1616, 4.921875e-01
  %1619 = fadd fast float %1617, -3.125000e-02
  %1620 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %18, float %1618, float 0x3FB25F3060000000, float %1619, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1621 = extractvalue %dx.types.ResRet.f32 %1620, 0
  %1622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1623 = extractvalue %dx.types.CBufRet.f32 %1622, 0
  %1624 = fmul fast float %1621, 0x400921FB60000000
  %1625 = fmul fast float %1624, %1623
  %1626 = fmul fast float %1625, %1609
  %1627 = fmul fast float %1625, %1610
  %1628 = fmul fast float %1625, %1611
  br label %1629

; <label>:1629                                    ; preds = %1607, %1471
  %1630 = phi float [ %1626, %1607 ], [ 0.000000e+00, %1471 ]
  %1631 = phi float [ %1627, %1607 ], [ 0.000000e+00, %1471 ]
  %1632 = phi float [ %1628, %1607 ], [ 0.000000e+00, %1471 ]
  %1633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1634 = extractvalue %dx.types.CBufRet.f32 %1633, 0
  %1635 = fmul fast float %1634, %1604
  %1636 = fmul fast float %1634, %1605
  %1637 = fmul fast float %1634, %1606
  %1638 = fadd fast float %1635, %257
  %1639 = fsub fast float -0.000000e+00, %1638
  %1640 = fadd fast float %1636, %258
  %1641 = fsub fast float -0.000000e+00, %1640
  %1642 = fadd fast float %1637, %259
  br i1 %272, label %1717, label %1643, !dx.controlflow.hints !41

; <label>:1643                                    ; preds = %1629
  %1644 = extractvalue %dx.types.CBufRet.f32 %1633, 1
  %1645 = fcmp fast ogt float %1644, %1634
  br i1 %1645, label %1646, label %1648, !dx.controlflow.hints !42

; <label>:1646                                    ; preds = %1643
  %1647 = fsub fast float %1644, %1634
  br label %1708

; <label>:1648                                    ; preds = %1643
  %1649 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1650 = extractvalue %dx.types.CBufRet.i32 %1649, 3
  %1651 = icmp eq i32 %1650, 0
  %1652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %1653 = extractvalue %dx.types.CBufRet.f32 %1652, 2
  %1654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1655 = extractvalue %dx.types.CBufRet.f32 %1654, 2
  %1656 = fsub fast float %1653, %1642
  %1657 = fadd fast float %1656, %1655
  %1658 = fsub fast float 0xC7EFFFFFE0000000, %1642
  br i1 %1651, label %1668, label %1659, !dx.controlflow.hints !35

; <label>:1659                                    ; preds = %1648
  %1660 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1639, float %1641, float %1657)  ; Dot3(ax,ay,az,bx,by,bz)
  %1661 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1604, float %1605, float %1606)  ; Dot3(ax,ay,az,bx,by,bz)
  %1662 = fdiv fast float 1.000000e+00, %1661
  %1663 = fmul fast float %1662, %1660
  %1664 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1639, float %1641, float %1658)  ; Dot3(ax,ay,az,bx,by,bz)
  %1665 = fmul fast float %1662, %1664
  %1666 = call float @dx.op.binary.f32(i32 36, float %1663, float %1665)  ; FMin(a,b)
  %1667 = call float @dx.op.binary.f32(i32 35, float %1663, float %1665)  ; FMax(a,b)
  br label %1701

; <label>:1668                                    ; preds = %1648
  %1669 = extractvalue %dx.types.CBufRet.f32 %1652, 0
  %1670 = extractvalue %dx.types.CBufRet.f32 %1652, 1
  %1671 = extractvalue %dx.types.CBufRet.f32 %1654, 0
  %1672 = extractvalue %dx.types.CBufRet.f32 %1654, 1
  %1673 = fdiv fast float 1.000000e+00, %1604
  %1674 = fdiv fast float 1.000000e+00, %1605
  %1675 = fdiv fast float 1.000000e+00, %1606
  %1676 = fsub fast float %1669, %1638
  %1677 = fmul fast float %1673, %1676
  %1678 = fadd fast float %1676, %1671
  %1679 = fmul fast float %1678, %1673
  %1680 = call float @dx.op.binary.f32(i32 36, float %1677, float %1679)  ; FMin(a,b)
  %1681 = call float @dx.op.binary.f32(i32 35, float %1677, float %1679)  ; FMax(a,b)
  %1682 = fsub fast float %1670, %1640
  %1683 = fmul fast float %1674, %1682
  %1684 = fadd fast float %1682, %1672
  %1685 = fmul fast float %1684, %1674
  %1686 = call float @dx.op.binary.f32(i32 36, float %1683, float %1685)  ; FMin(a,b)
  %1687 = call float @dx.op.binary.f32(i32 35, float %1680, float %1686)  ; FMax(a,b)
  %1688 = call float @dx.op.binary.f32(i32 35, float %1683, float %1685)  ; FMax(a,b)
  %1689 = call float @dx.op.binary.f32(i32 36, float %1681, float %1688)  ; FMin(a,b)
  %1690 = fmul fast float %1675, %1658
  %1691 = fmul fast float %1675, %1657
  %1692 = call float @dx.op.binary.f32(i32 36, float %1690, float %1691)  ; FMin(a,b)
  %1693 = call float @dx.op.binary.f32(i32 35, float %1687, float %1692)  ; FMax(a,b)
  %1694 = call float @dx.op.binary.f32(i32 35, float %1690, float %1691)  ; FMax(a,b)
  %1695 = call float @dx.op.binary.f32(i32 36, float %1689, float %1694)  ; FMin(a,b)
  %1696 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1693)  ; FMax(a,b)
  %1697 = fcmp fast ult float %1695, %1696
  br i1 %1697, label %1701, label %1698, !dx.controlflow.hints !36

; <label>:1698                                    ; preds = %1668
  %1699 = call float @dx.op.binary.f32(i32 36, float %1693, float %1695)  ; FMin(a,b)
  %1700 = call float @dx.op.binary.f32(i32 35, float %1693, float %1695)  ; FMax(a,b)
  br label %1701

; <label>:1701                                    ; preds = %1698, %1668, %1659
  %1702 = phi float [ %1666, %1659 ], [ %1699, %1698 ], [ 0.000000e+00, %1668 ]
  %1703 = phi float [ %1667, %1659 ], [ %1700, %1698 ], [ 0.000000e+00, %1668 ]
  %1704 = fcmp fast ogt float %1702, 0.000000e+00
  br i1 %1704, label %1708, label %1705, !dx.controlflow.hints !43

; <label>:1705                                    ; preds = %1701
  %1706 = fcmp fast ugt float %1703, 0.000000e+00
  br i1 %1706, label %1707, label %1708, !dx.controlflow.hints !44

; <label>:1707                                    ; preds = %1705
  br label %1708

; <label>:1708                                    ; preds = %1707, %1705, %1701, %1646
  %1709 = phi float [ %1647, %1646 ], [ 0.000000e+00, %1707 ], [ 0x47EFFFFFE0000000, %1705 ], [ %1702, %1701 ]
  %1710 = phi i32 [ %199, %1646 ], [ %199, %1707 ], [ 0, %1705 ], [ %199, %1701 ]
  %1711 = icmp ne i32 %1710, 0
  %1712 = zext i1 %1711 to i32
  %1713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1714 = extractvalue %dx.types.CBufRet.f32 %1713, 2
  %1715 = call float @dx.op.binary.f32(i32 35, float %1709, float %1714)  ; FMax(a,b)
  %1716 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %1715)  ; FMin(a,b)
  br label %1717

; <label>:1717                                    ; preds = %1708, %1629
  %1718 = phi float [ %1716, %1708 ], [ 0x47EFFFFFE0000000, %1629 ]
  %1719 = phi i32 [ %1712, %1708 ], [ 0, %1629 ]
  br i1 %445, label %1732, label %1720, !dx.controlflow.hints !50

; <label>:1720                                    ; preds = %1717
  %1721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1722 = extractvalue %dx.types.CBufRet.f32 %1721, 3
  %1723 = extractvalue %dx.types.CBufRet.f32 %1721, 2
  %1724 = fmul fast float %1722, %1634
  %1725 = fdiv fast float %1724, %1634
  %1726 = fadd fast float %1725, 1.000000e+00
  %1727 = call float @dx.op.unary.f32(i32 23, float %1726)  ; Log(value)
  %1728 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %1727)  ; FMin(a,b)
  %1729 = fmul fast float %1723, %1634
  %1730 = fmul fast float %1729, %1728
  %1731 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %1730)  ; FMin(a,b)
  br label %1732

; <label>:1732                                    ; preds = %1720, %1717
  %1733 = phi float [ %1731, %1720 ], [ 0x47EFFFFFE0000000, %1717 ]
  %1734 = icmp eq i32 %1719, 0
  br i1 %1734, label %1808, label %1735, !dx.controlflow.hints !51

; <label>:1735                                    ; preds = %1732
  %1736 = fmul fast float %460, %1634
  %1737 = call float @dx.op.unary.f32(i32 23, float %1736)  ; Log(value)
  %1738 = fmul fast float %1737, 0x3FE62E4300000000
  %1739 = call float @dx.op.binary.f32(i32 35, float %1738, float 1.000000e+00)  ; FMax(a,b)
  %1740 = fmul fast float %1739, %1733
  %1741 = call float @dx.op.binary.f32(i32 36, float %1740, float %1718)  ; FMin(a,b)
  %1742 = call float @dx.op.binary.f32(i32 35, float %1741, float 0.000000e+00)  ; FMax(a,b)
  %1743 = fcmp fast ogt float %1742, 0x3F1A36E2E0000000
  %1744 = fadd fast float %1635, %1638
  %1745 = fadd fast float %1636, %1640
  %1746 = select i1 %1743, float %1744, float %1638
  %1747 = select i1 %1743, float %1745, float %1640
  %1748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %1749 = extractvalue %dx.types.CBufRet.f32 %1748, 0
  %1750 = extractvalue %dx.types.CBufRet.f32 %1748, 1
  %1751 = fsub fast float %1746, %1749
  %1752 = fsub fast float %1747, %1750
  %1753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %1754 = extractvalue %dx.types.CBufRet.f32 %1753, 0
  %1755 = extractvalue %dx.types.CBufRet.f32 %1753, 1
  %1756 = fmul fast float %1751, %1754
  %1757 = fmul fast float %1752, %1755
  %1758 = fsub fast float 1.000000e+00, %1757
  %1759 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1760 = extractvalue %dx.types.CBufRet.i32 %1759, 3
  %1761 = icmp eq i32 %1760, 0
  br i1 %1761, label %1768, label %1762, !dx.controlflow.hints !45

; <label>:1762                                    ; preds = %1735
  %1763 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %17, float %1756, float %1758, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1764 = extractvalue %dx.types.ResRet.f32 %1763, 0
  %1765 = extractvalue %dx.types.ResRet.f32 %1763, 1
  %1766 = extractvalue %dx.types.ResRet.f32 %1763, 2
  %1767 = extractvalue %dx.types.ResRet.f32 %1763, 3
  br label %1774

; <label>:1768                                    ; preds = %1735
  %1769 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %18, float %1756, float %1758, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1770 = extractvalue %dx.types.ResRet.f32 %1769, 0
  %1771 = extractvalue %dx.types.ResRet.f32 %1769, 1
  %1772 = extractvalue %dx.types.ResRet.f32 %1769, 2
  %1773 = extractvalue %dx.types.ResRet.f32 %1769, 3
  br label %1774

; <label>:1774                                    ; preds = %1768, %1762
  %1775 = phi float [ %1764, %1762 ], [ %1770, %1768 ]
  %1776 = phi float [ %1765, %1762 ], [ %1771, %1768 ]
  %1777 = phi float [ %1766, %1762 ], [ %1772, %1768 ]
  %1778 = phi float [ %1767, %1762 ], [ %1773, %1768 ]
  %1779 = extractvalue %dx.types.CBufRet.f32 %1753, 3
  %1780 = fmul fast float %1779, %1776
  %1781 = fmul fast float %1780, %1775
  %1782 = fsub fast float %1780, %1781
  %1783 = fcmp fast ole float %1782, 0.000000e+00
  %1784 = extractvalue %dx.types.CBufRet.f32 %1748, 2
  %1785 = fadd fast float %1781, %1784
  %1786 = fmul fast float %1779, %1777
  %1787 = fadd fast float %1786, %1784
  %1788 = fdiv fast float 1.000000e+00, %1782
  %1789 = select i1 %1783, float 1.000000e+06, float %1788
  %1790 = fsub fast float %1642, %1785
  %1791 = fmul fast float %1789, %1790
  %1792 = call float @dx.op.unary.f32(i32 7, float %1791)  ; Saturate(value)
  %1793 = extractvalue %dx.types.CBufRet.f32 %1753, 2
  %1794 = fmul fast float %1793, %1792
  %1795 = fsub fast float %1793, %1794
  %1796 = fcmp fast olt float %1642, %1787
  %1797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %1798 = extractvalue %dx.types.CBufRet.f32 %1797, 3
  %1799 = fmul fast float %1798, 3.000000e+00
  %1800 = select i1 %1796, float %1799, float 3.000000e+00
  %1801 = fmul fast float %1795, %1800
  %1802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1803 = extractvalue %dx.types.CBufRet.f32 %1802, 2
  %1804 = fmul fast float %1634, 0x3FD5555560000000
  %1805 = fmul fast float %1804, %1778
  %1806 = fmul fast float %1805, %1803
  %1807 = fmul fast float %1806, %1801
  br label %1808

; <label>:1808                                    ; preds = %1774, %1732
  %1809 = phi float [ %1807, %1774 ], [ 0.000000e+00, %1732 ]
  br i1 %445, label %1857, label %1810, !dx.controlflow.hints !53

; <label>:1810                                    ; preds = %1808
  %1811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %1812 = extractvalue %dx.types.CBufRet.f32 %1811, 0
  %1813 = fsub fast float %1812, %1642
  %1814 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1639, float %1641, float %1813)  ; Dot3(ax,ay,az,bx,by,bz)
  %1815 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1604, float %1605, float %1606)  ; Dot3(ax,ay,az,bx,by,bz)
  %1816 = fdiv fast float 1.000000e+00, %1815
  %1817 = fmul fast float %1816, %1814
  %1818 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1817)  ; FMax(a,b)
  %1819 = fcmp fast olt float %1606, 0.000000e+00
  %1820 = call float @dx.op.binary.f32(i32 36, float %1634, float %1818)  ; FMin(a,b)
  br i1 %1819, label %1822, label %1821, !dx.controlflow.hints !54

; <label>:1821                                    ; preds = %1810
  br label %1822

; <label>:1822                                    ; preds = %1821, %1810
  %1823 = phi float [ 0.000000e+00, %1821 ], [ %1820, %1810 ]
  %1824 = phi float [ %1820, %1821 ], [ %1634, %1810 ]
  %1825 = phi float [ %1820, %1821 ], [ 0.000000e+00, %1810 ]
  %1826 = phi float [ %1634, %1821 ], [ %1820, %1810 ]
  %1827 = fsub fast float %1824, %1823
  %1828 = extractvalue %dx.types.CBufRet.f32 %1811, 1
  %1829 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %1828)  ; FMin(a,b)
  %1830 = fsub fast float %1642, %1812
  %1831 = fmul fast float %1829, 0x3FF7154760000000
  %1832 = fmul fast float %1831, %1830
  %1833 = call float @dx.op.unary.f32(i32 21, float %1832)  ; Exp(value)
  %1834 = fmul fast float %1606, 0x3FF7154760000000
  %1835 = fmul fast float %1834, %1826
  %1836 = fmul fast float %1835, %1829
  %1837 = call float @dx.op.unary.f32(i32 21, float %1836)  ; Exp(value)
  %1838 = fmul fast float %1834, %1825
  %1839 = fmul fast float %1838, %1829
  %1840 = call float @dx.op.unary.f32(i32 21, float %1839)  ; Exp(value)
  %1841 = fsub fast float %1837, %1840
  %1842 = fmul fast float %1841, %1833
  %1843 = fmul fast float %1829, %1606
  %1844 = fdiv fast float %1842, %1843
  %1845 = fadd fast float %1827, %1844
  %1846 = call float @dx.op.unary.f32(i32 6, float %1606)  ; FAbs(value)
  %1847 = fcmp fast olt float %1846, 0x3F0FFB4800000000
  %1848 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1830)  ; FMax(a,b)
  %1849 = fmul fast float %1848, 0x3FF7154760000000
  %1850 = fmul fast float %1849, %1828
  %1851 = call float @dx.op.unary.f32(i32 21, float %1850)  ; Exp(value)
  %1852 = fmul fast float %1851, %1634
  %1853 = select i1 %1847, float %1852, float %1845
  %1854 = extractvalue %dx.types.CBufRet.f32 %1499, 1
  %1855 = fmul fast float %1853, %1854
  %1856 = fadd fast float %1855, %1809
  br label %1857

; <label>:1857                                    ; preds = %1822, %1808
  %1858 = phi float [ %1856, %1822 ], [ %1809, %1808 ]
  %1859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %1860 = extractvalue %dx.types.CBufRet.f32 %1859, 3
  %1861 = fmul fast float %1858, 0xBFF7154760000000
  %1862 = fmul fast float %1861, %1860
  %1863 = call float @dx.op.unary.f32(i32 21, float %1862)  ; Exp(value)
  %1864 = call float @dx.op.unary.f32(i32 7, float %1863)  ; Saturate(value)
  %1865 = fmul fast float %1864, %1630
  %1866 = fmul fast float %1864, %1631
  %1867 = fmul fast float %1864, %1632
  %1868 = fadd fast float %1865, %1598
  %1869 = fadd fast float %1866, %1599
  %1870 = fadd fast float %1867, %1600
  %1871 = fsub fast float 1.000000e+00, %667
  %1872 = fmul fast float %659, %253
  %1873 = fmul fast float %1872, %1871
  %1874 = fmul fast float %1873, %1868
  %1875 = fmul fast float %660, %253
  %1876 = fmul fast float %1875, %1871
  %1877 = fmul fast float %1876, %1869
  %1878 = fmul fast float %661, %253
  %1879 = fmul fast float %1878, %1871
  %1880 = fmul fast float %1879, %1870
  %1881 = fadd fast float %1874, %254
  %1882 = fadd fast float %1877, %255
  %1883 = fadd fast float %1880, %256
  %1884 = fdiv fast float %643, %470
  %1885 = fadd fast float %470, %260
  %1886 = fmul fast float %260, %260
  %1887 = fmul fast float %1885, %1885
  %1888 = fsub fast float %1886, %1887
  %1889 = fmul fast float %1888, -5.000000e-01
  %1890 = fmul fast float %1889, %1884
  %1891 = fadd fast float %1890, %252
  %1892 = fadd fast float %643, %262
  %1893 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1894 = extractvalue %dx.types.CBufRet.i32 %1893, 0
  %1895 = icmp eq i32 %1894, 0
  br i1 %1895, label %1922, label %1896, !dx.controlflow.hints !70

; <label>:1896                                    ; preds = %1857
  %1897 = icmp ne i32 %267, 0
  %1898 = zext i1 %1897 to i32
  %1899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1900 = extractvalue %dx.types.CBufRet.f32 %1899, 2
  %1901 = extractvalue %dx.types.CBufRet.f32 %1899, 0
  %1902 = fsub fast float %1885, %1901
  %1903 = fmul fast float %1902, %1900
  %1904 = call float @dx.op.unary.f32(i32 7, float %1903)  ; Saturate(value)
  %1905 = fadd fast float %1904, -5.000000e-01
  %1906 = fmul fast float %1905, 2.000000e+00
  %1907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1908 = extractvalue %dx.types.CBufRet.f32 %1907, 2
  %1909 = fcmp fast olt float %1906, %1908
  br i1 %1909, label %1910, label %1922, !dx.controlflow.hints !71

; <label>:1910                                    ; preds = %1896
  %1911 = fmul fast float %1906, %1906
  %1912 = fmul fast float %1871, %253
  %1913 = fmul fast float %1906, %1912
  %1914 = fmul fast float %1911, %1912
  %1915 = fmul fast float %1913, %1911
  %1916 = fmul fast float %1911, %1911
  %1917 = fmul fast float %1916, %1912
  %1918 = fadd fast float %1913, %263
  %1919 = fadd fast float %1914, %264
  %1920 = fadd fast float %1915, %265
  %1921 = fadd fast float %1917, %266
  br label %1922

; <label>:1922                                    ; preds = %1910, %1896, %1857
  %1923 = phi float [ %263, %1857 ], [ %1918, %1910 ], [ %263, %1896 ]
  %1924 = phi float [ %264, %1857 ], [ %1919, %1910 ], [ %264, %1896 ]
  %1925 = phi float [ %265, %1857 ], [ %1920, %1910 ], [ %265, %1896 ]
  %1926 = phi float [ %266, %1857 ], [ %1921, %1910 ], [ %266, %1896 ]
  %1927 = phi i32 [ %267, %1857 ], [ 1, %1910 ], [ %1898, %1896 ]
  %1928 = fmul fast float %667, %253
  br label %1929

; <label>:1929                                    ; preds = %1922, %662
  %1930 = phi float [ %663, %662 ], [ %1885, %1922 ]
  %1931 = phi float [ %252, %662 ], [ %1891, %1922 ]
  %1932 = phi float [ %253, %662 ], [ %1928, %1922 ]
  %1933 = phi float [ %254, %662 ], [ %1881, %1922 ]
  %1934 = phi float [ %255, %662 ], [ %1882, %1922 ]
  %1935 = phi float [ %256, %662 ], [ %1883, %1922 ]
  %1936 = phi float [ %262, %662 ], [ %1892, %1922 ]
  %1937 = phi float [ %263, %662 ], [ %1923, %1922 ]
  %1938 = phi float [ %264, %662 ], [ %1924, %1922 ]
  %1939 = phi float [ %265, %662 ], [ %1925, %1922 ]
  %1940 = phi float [ %266, %662 ], [ %1926, %1922 ]
  %1941 = phi i32 [ %267, %662 ], [ %1927, %1922 ]
  %1942 = fmul fast float %470, %110
  %1943 = fmul fast float %470, %111
  %1944 = fmul fast float %470, %112
  %1945 = fadd fast float %1942, %257
  %1946 = fadd fast float %1943, %258
  %1947 = fadd fast float %1944, %259
  %1948 = fcmp fast olt float %1930, %229
  %1949 = extractvalue %dx.types.CBufRet.f32 %648, 2
  %1950 = fcmp fast olt float %1949, %1932
  %1951 = and i1 %1948, %1950
  br i1 %1951, label %251, label %1952

; <label>:1952                                    ; preds = %1929
  br label %1953

; <label>:1953                                    ; preds = %1952, %225
  %1954 = phi float [ 0.000000e+00, %225 ], [ %1931, %1952 ]
  %1955 = phi float [ 1.000000e+00, %225 ], [ %1932, %1952 ]
  %1956 = phi float [ 0.000000e+00, %225 ], [ %1933, %1952 ]
  %1957 = phi float [ 0.000000e+00, %225 ], [ %1934, %1952 ]
  %1958 = phi float [ 0.000000e+00, %225 ], [ %1935, %1952 ]
  %1959 = phi float [ 0.000000e+00, %225 ], [ %1936, %1952 ]
  %1960 = phi float [ 0.000000e+00, %225 ], [ %1937, %1952 ]
  %1961 = phi float [ 0.000000e+00, %225 ], [ %1938, %1952 ]
  %1962 = phi float [ 0.000000e+00, %225 ], [ %1939, %1952 ]
  %1963 = phi float [ 0.000000e+00, %225 ], [ %1940, %1952 ]
  %1964 = phi i32 [ 0, %225 ], [ %1941, %1952 ]
  %1965 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1966 = extractvalue %dx.types.CBufRet.i32 %1965, 0
  %1967 = icmp eq i32 %1966, 0
  br i1 %1967, label %2009, label %1968, !dx.controlflow.hints !72

; <label>:1968                                    ; preds = %1953
  %1969 = icmp eq i32 %1964, 0
  br i1 %1969, label %2008, label %1970, !dx.controlflow.hints !73

; <label>:1970                                    ; preds = %1968
  %1971 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1972 = extractvalue %dx.types.CBufRet.i32 %1971, 2
  %1973 = icmp eq i32 %1972, 0
  br i1 %1973, label %1980, label %1974, !dx.controlflow.hints !74

; <label>:1974                                    ; preds = %1970
  %1975 = fsub fast float 1.000000e+00, %1955
  %1976 = fdiv fast float %1960, %1975
  %1977 = fdiv fast float %1961, %1975
  %1978 = fdiv fast float %1962, %1975
  %1979 = fdiv fast float %1963, %1975
  br label %1985

; <label>:1980                                    ; preds = %1970
  %1981 = fadd fast float %1960, %1955
  %1982 = fadd fast float %1961, %1955
  %1983 = fadd fast float %1962, %1955
  %1984 = fadd fast float %1963, %1955
  br label %1985

; <label>:1985                                    ; preds = %1980, %1974
  %1986 = phi float [ %1976, %1974 ], [ %1981, %1980 ]
  %1987 = phi float [ %1977, %1974 ], [ %1982, %1980 ]
  %1988 = phi float [ %1978, %1974 ], [ %1983, %1980 ]
  %1989 = phi float [ %1979, %1974 ], [ %1984, %1980 ]
  %1990 = call float @dx.op.binary.f32(i32 35, float %1986, float -1.000000e+00)  ; FMax(a,b)
  %1991 = call float @dx.op.binary.f32(i32 35, float %1987, float -1.000000e+00)  ; FMax(a,b)
  %1992 = call float @dx.op.binary.f32(i32 35, float %1988, float -1.000000e+00)  ; FMax(a,b)
  %1993 = call float @dx.op.binary.f32(i32 35, float %1989, float -1.000000e+00)  ; FMax(a,b)
  %1994 = call float @dx.op.binary.f32(i32 36, float %1990, float 1.000000e+00)  ; FMin(a,b)
  %1995 = call float @dx.op.binary.f32(i32 36, float %1991, float 1.000000e+00)  ; FMin(a,b)
  %1996 = call float @dx.op.binary.f32(i32 36, float %1992, float 1.000000e+00)  ; FMin(a,b)
  %1997 = call float @dx.op.binary.f32(i32 36, float %1993, float 1.000000e+00)  ; FMin(a,b)
  %1998 = fmul fast float %1994, 1.500000e+00
  %1999 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1996, float %1998)  ; FMad(a,b,c)
  %2000 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1995, float 0.000000e+00)  ; FMad(a,b,c)
  %2001 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1997, float %2000)  ; FMad(a,b,c)
  %2002 = fmul fast float %1994, 0x3FEBB67AE0000000
  %2003 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1996, float %2002)  ; FMad(a,b,c)
  %2004 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1995, float 0.000000e+00)  ; FMad(a,b,c)
  %2005 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1997, float %2004)  ; FMad(a,b,c)
  %2006 = fadd fast float %1999, 5.000000e-01
  %2007 = fadd fast float %2003, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %21, i32 %22, i32 0, float %2006, float %2001, float %2007, float %2005, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2009

; <label>:2008                                    ; preds = %1968
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %21, i32 %22, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2009

; <label>:2009                                    ; preds = %2008, %1985, %1953
  %2010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2011 = extractvalue %dx.types.CBufRet.f32 %2010, 2
  %2012 = fsub fast float %1955, %2011
  %2013 = fdiv fast float %2012, %2011
  %2014 = call float @dx.op.unary.f32(i32 7, float %2013)  ; Saturate(value)
  %2015 = fmul fast float %2014, 2.000000e+00
  %2016 = fsub fast float 3.000000e+00, %2015
  %2017 = fmul fast float %2014, %2014
  %2018 = fmul fast float %2017, %1955
  %2019 = fmul fast float %2018, %2016
  %2020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %2021 = extractvalue %dx.types.CBufRet.f32 %2020, 0
  %2022 = extractvalue %dx.types.CBufRet.f32 %2020, 1
  %2023 = extractvalue %dx.types.CBufRet.f32 %2020, 2
  %2024 = call float @dx.op.dot3.f32(i32 55, float %110, float %111, float %112, float %2021, float %2022, float %2023)  ; Dot3(ax,ay,az,bx,by,bz)
  %2025 = fmul fast float %2024, %1954
  %2026 = fcmp fast ogt float %1959, 0.000000e+00
  %2027 = fdiv fast float 1.000000e+00, %1959
  %2028 = fmul fast float %2025, %2027
  %2029 = select i1 %2026, float %2028, float %121
  %2030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2031 = extractvalue %dx.types.CBufRet.f32 %2030, 0
  %2032 = extractvalue %dx.types.CBufRet.f32 %2030, 1
  %2033 = extractvalue %dx.types.CBufRet.f32 %2030, 2
  %2034 = fmul fast float %2031, %74
  %2035 = fmul fast float %2032, %74
  %2036 = fmul fast float %2033, %74
  %2037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2038 = extractvalue %dx.types.CBufRet.f32 %2037, 0
  %2039 = extractvalue %dx.types.CBufRet.f32 %2037, 1
  %2040 = extractvalue %dx.types.CBufRet.f32 %2037, 2
  %2041 = fmul fast float %2038, %75
  %2042 = fmul fast float %2039, %75
  %2043 = fmul fast float %2040, %75
  %2044 = fadd fast float %2041, %2034
  %2045 = fadd fast float %2042, %2035
  %2046 = fadd fast float %2043, %2036
  %2047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2048 = extractvalue %dx.types.CBufRet.f32 %2047, 0
  %2049 = extractvalue %dx.types.CBufRet.f32 %2047, 1
  %2050 = extractvalue %dx.types.CBufRet.f32 %2047, 2
  %2051 = fadd fast float %2044, %2048
  %2052 = fadd fast float %2045, %2049
  %2053 = fadd fast float %2046, %2050
  %2054 = fmul fast float %2051, %2029
  %2055 = fmul fast float %2052, %2029
  %2056 = fmul fast float %2053, %2029
  %2057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %2058 = extractvalue %dx.types.CBufRet.f32 %2057, 0
  %2059 = extractvalue %dx.types.CBufRet.f32 %2057, 1
  %2060 = extractvalue %dx.types.CBufRet.f32 %2057, 2
  %2061 = extractvalue %dx.types.CBufRet.f32 %2057, 3
  %2062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %2063 = extractvalue %dx.types.CBufRet.f32 %2062, 0
  %2064 = extractvalue %dx.types.CBufRet.f32 %2062, 1
  %2065 = extractvalue %dx.types.CBufRet.f32 %2062, 2
  %2066 = extractvalue %dx.types.CBufRet.f32 %2062, 3
  %2067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %2068 = extractvalue %dx.types.CBufRet.f32 %2067, 0
  %2069 = extractvalue %dx.types.CBufRet.f32 %2067, 1
  %2070 = extractvalue %dx.types.CBufRet.f32 %2067, 2
  %2071 = extractvalue %dx.types.CBufRet.f32 %2067, 3
  %2072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %2073 = extractvalue %dx.types.CBufRet.f32 %2072, 0
  %2074 = extractvalue %dx.types.CBufRet.f32 %2072, 1
  %2075 = extractvalue %dx.types.CBufRet.f32 %2072, 2
  %2076 = extractvalue %dx.types.CBufRet.f32 %2072, 3
  %2077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %2078 = extractvalue %dx.types.CBufRet.f32 %2077, 3
  %2079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %2080 = extractvalue %dx.types.CBufRet.f32 %2079, 3
  %2081 = extractvalue %dx.types.CBufRet.f32 %2079, 0
  %2082 = extractvalue %dx.types.CBufRet.f32 %2079, 1
  %2083 = extractvalue %dx.types.CBufRet.f32 %2079, 2
  %2084 = fcmp fast olt float %2083, -5.000000e-01
  %2085 = call float @dx.op.dot3.f32(i32 55, float %2054, float %2055, float %2056, float %2054, float %2055, float %2056)  ; Dot3(ax,ay,az,bx,by,bz)
  %2086 = call float @dx.op.unary.f32(i32 25, float %2085)  ; Rsqrt(value)
  %2087 = fmul fast float %2086, %2085
  %2088 = fmul fast float %2086, %2054
  %2089 = fmul fast float %2086, %2055
  %2090 = fmul fast float %2086, %2056
  %2091 = fadd fast float %2087, %2061
  %2092 = call float @dx.op.dot3.f32(i32 55, float %2088, float %2089, float %2090, float %2058, float %2059, float %2060)  ; Dot3(ax,ay,az,bx,by,bz)
  %2093 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2094 = extractvalue %dx.types.CBufRet.i32 %2093, 1
  %2095 = and i32 %2094, 1
  %2096 = icmp ne i32 %2095, 0
  %2097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %2098 = extractvalue %dx.types.CBufRet.f32 %2097, 2
  %2099 = fcmp fast ogt float %2098, 0.000000e+00
  %2100 = and i1 %2096, %2099
  br i1 %2100, label %2101, label %2507, !dx.controlflow.hints !75

; <label>:2101                                    ; preds = %2009
  %2102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %2103 = extractvalue %dx.types.CBufRet.f32 %2102, 3
  %2104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2105 = extractvalue %dx.types.CBufRet.f32 %2104, 2
  %2106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2107 = extractvalue %dx.types.CBufRet.f32 %2106, 2
  %2108 = fsub fast float %2105, %2107
  %2109 = and i32 %2094, 2
  %2110 = extractvalue %dx.types.CBufRet.i32 %2093, 0
  %2111 = call i32 @dx.op.binary.i32(i32 40, i32 %2110, i32 3)  ; UMin(a,b)
  %2112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2113 = extractvalue %dx.types.CBufRet.f32 %2112, 0
  %2114 = extractvalue %dx.types.CBufRet.f32 %2112, 1
  %2115 = extractvalue %dx.types.CBufRet.f32 %2106, 0
  %2116 = extractvalue %dx.types.CBufRet.f32 %2106, 1
  %2117 = fsub fast float %2113, %2115
  %2118 = fsub fast float %2114, %2116
  %2119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2120 = extractvalue %dx.types.CBufRet.f32 %2119, 0
  %2121 = fcmp fast ogt float %2120, 0.000000e+00
  %2122 = fsub fast float -0.000000e+00, %2117
  %2123 = fsub fast float -0.000000e+00, %2118
  %2124 = call float @dx.op.dot2.f32(i32 54, float %2088, float %2089, float %2088, float %2089)  ; Dot2(ax,ay,bx,by)
  %2125 = call float @dx.op.dot2.f32(i32 54, float %2088, float %2089, float %2122, float %2123)  ; Dot2(ax,ay,bx,by)
  %2126 = fmul fast float %2125, 2.000000e+00
  %2127 = call float @dx.op.dot2.f32(i32 54, float %2122, float %2123, float %2122, float %2123)  ; Dot2(ax,ay,bx,by)
  %2128 = fmul fast float %2120, %2120
  %2129 = fsub fast float %2127, %2128
  %2130 = fmul fast float %2126, %2126
  %2131 = fmul fast float %2124, 4.000000e+00
  %2132 = fmul fast float %2131, %2129
  %2133 = fsub fast float %2130, %2132
  %2134 = fcmp fast ogt float %2133, 0.000000e+00
  br i1 %2134, label %2135, label %2150, !dx.controlflow.hints !76

; <label>:2135                                    ; preds = %2101
  %2136 = fcmp fast ogt float %2126, 0.000000e+00
  %2137 = call float @dx.op.unary.f32(i32 24, float %2133)  ; Sqrt(value)
  %2138 = fsub fast float -0.000000e+00, %2137
  %2139 = select i1 %2136, float %2137, float %2138
  %2140 = fadd fast float %2139, %2126
  %2141 = fmul float %2140, -5.000000e-01
  %2142 = fdiv fast float %2141, %2124
  %2143 = call float @dx.op.binary.f32(i32 35, float %2142, float 0.000000e+00)  ; FMax(a,b)
  %2144 = call float @dx.op.binary.f32(i32 36, float %2087, float %2143)  ; FMin(a,b)
  %2145 = fdiv fast float %2129, %2141
  %2146 = call float @dx.op.binary.f32(i32 35, float %2145, float 0.000000e+00)  ; FMax(a,b)
  %2147 = call float @dx.op.binary.f32(i32 36, float %2087, float %2146)  ; FMin(a,b)
  %2148 = call float @dx.op.binary.f32(i32 36, float %2144, float %2147)  ; FMin(a,b)
  %2149 = call float @dx.op.binary.f32(i32 35, float %2144, float %2147)  ; FMax(a,b)
  br label %2150

; <label>:2150                                    ; preds = %2135, %2101
  %2151 = phi float [ %2149, %2135 ], [ -1.000000e+00, %2101 ]
  %2152 = phi float [ %2148, %2135 ], [ -1.000000e+00, %2101 ]
  %2153 = phi i1 [ true, %2135 ], [ false, %2101 ]
  %2154 = and i1 %2121, %2153
  br i1 %2154, label %2155, label %2157, !dx.controlflow.hints !77

; <label>:2155                                    ; preds = %2150
  %2156 = fcmp fast oeq float %2152, %2151
  br i1 %2156, label %2460, label %2158, !dx.controlflow.hints !78

; <label>:2157                                    ; preds = %2150
  br i1 %2121, label %2460, label %2158, !dx.controlflow.hints !79

; <label>:2158                                    ; preds = %2157, %2155
  %2159 = phi float [ %2087, %2157 ], [ %2151, %2155 ]
  %2160 = phi float [ 0.000000e+00, %2157 ], [ %2152, %2155 ]
  %2161 = icmp ne i32 %2109, 0
  %2162 = fmul fast float %2159, %2090
  %2163 = fadd fast float %2162, %2103
  %2164 = fmul fast float %2163, %2159
  %2165 = select i1 %2161, float 0.000000e+00, float %2164
  %2166 = fcmp fast oeq float %2090, 0.000000e+00
  %2167 = fdiv fast float %2108, %2090
  %2168 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2167)  ; FMax(a,b)
  %2169 = select i1 %2166, float %2159, float %2168
  %2170 = call float @dx.op.binary.f32(i32 36, float %2159, float %2169)  ; FMin(a,b)
  %2171 = fcmp fast ogt float %2090, 0.000000e+00
  %2172 = fcmp fast olt float %2108, 0.000000e+00
  br i1 %2171, label %2173, label %2230, !dx.controlflow.hints !80

; <label>:2173                                    ; preds = %2158
  %2174 = icmp eq i32 %2109, 0
  br i1 %2172, label %2175, label %2219, !dx.controlflow.hints !81

; <label>:2175                                    ; preds = %2173
  %2176 = select i1 %2174, float %2159, float 0.000000e+00
  %2177 = fsub fast float -0.000000e+00, %2176
  %2178 = call float @dx.op.unary.f32(i32 6, float %2177)  ; FAbs(value)
  %2179 = fmul fast float %2176, %2090
  %2180 = fadd fast float %2179, %2103
  %2181 = fmul fast float %2178, %2180
  %2182 = fsub fast float %2165, %2181
  %2183 = fsub fast float %2159, %2178
  %2184 = select i1 %2174, float %2183, float 0.000000e+00
  %2185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2186 = extractvalue %dx.types.CBufRet.f32 %2185, 0
  %2187 = extractvalue %dx.types.CBufRet.f32 %2185, 1
  %2188 = extractvalue %dx.types.CBufRet.f32 %2185, 2
  %2189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2190 = extractvalue %dx.types.CBufRet.f32 %2189, 0
  %2191 = extractvalue %dx.types.CBufRet.f32 %2189, 1
  %2192 = extractvalue %dx.types.CBufRet.f32 %2189, 2
  %2193 = extractvalue %dx.types.CBufRet.f32 %2189, 3
  %2194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
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
  %2208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
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
  br label %2460

; <label>:2219                                    ; preds = %2173
  br i1 %2174, label %2220, label %2241, !dx.controlflow.hints !82

; <label>:2220                                    ; preds = %2219
  %2221 = call float @dx.op.binary.f32(i32 36, float %2170, float %2160)  ; FMin(a,b)
  %2222 = fsub fast float %2170, %2221
  %2223 = fsub fast float %2222, %2159
  %2224 = call float @dx.op.unary.f32(i32 6, float %2223)  ; FAbs(value)
  %2225 = fadd fast float %2222, %2159
  %2226 = fmul fast float %2225, %2090
  %2227 = fadd fast float %2226, %2103
  %2228 = fmul fast float %2227, %2224
  %2229 = fsub fast float %2165, %2228
  br label %2241

; <label>:2230                                    ; preds = %2158
  br i1 %2172, label %2231, label %2241, !dx.controlflow.hints !83

; <label>:2231                                    ; preds = %2230
  %2232 = call float @dx.op.binary.f32(i32 35, float %2160, float %2170)  ; FMax(a,b)
  %2233 = icmp eq i32 %2109, 0
  %2234 = select i1 %2233, float %2170, float 0.000000e+00
  %2235 = fsub fast float -0.000000e+00, %2234
  %2236 = call float @dx.op.unary.f32(i32 6, float %2235)  ; FAbs(value)
  %2237 = fmul fast float %2234, %2090
  %2238 = fadd fast float %2237, %2103
  %2239 = fmul fast float %2236, %2238
  %2240 = fsub fast float %2165, %2239
  br label %2241

; <label>:2241                                    ; preds = %2231, %2230, %2220, %2219
  %2242 = phi float [ %2160, %2219 ], [ %2160, %2220 ], [ %2232, %2231 ], [ %2160, %2230 ]
  %2243 = phi float [ 0.000000e+00, %2219 ], [ %2224, %2220 ], [ %2236, %2231 ], [ 0.000000e+00, %2230 ]
  %2244 = phi float [ %2165, %2219 ], [ %2229, %2220 ], [ %2240, %2231 ], [ %2165, %2230 ]
  %2245 = phi float [ %2170, %2219 ], [ %2170, %2220 ], [ %2159, %2231 ], [ %2159, %2230 ]
  %2246 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 0
  store float -1.000000e+00, float* %2246, align 4, !tbaa !84, !noalias !88
  %2247 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 1
  store float -1.000000e+00, float* %2247, align 4, !tbaa !84, !noalias !88
  %2248 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 2
  store float -1.000000e+00, float* %2248, align 4, !tbaa !84, !noalias !88
  %2249 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 0
  store float -1.000000e+00, float* %2249, align 4, !tbaa !84, !noalias !88
  %2250 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 1
  store float -1.000000e+00, float* %2250, align 4, !tbaa !84, !noalias !88
  %2251 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 2
  store float -1.000000e+00, float* %2251, align 4, !tbaa !84, !noalias !88
  %2252 = icmp sgt i32 %2111, 0
  br i1 %2252, label %2253, label %2314

; <label>:2253                                    ; preds = %2241
  br label %2254

; <label>:2254                                    ; preds = %2303, %2253
  %2255 = phi i32 [ %2304, %2303 ], [ 0, %2253 ]
  %2256 = phi i32 [ %2305, %2303 ], [ 0, %2253 ]
  %2257 = add nuw i32 %2256, 171
  %2258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 %2257)  ; CBufferLoadLegacy(handle,regIndex)
  %2259 = extractvalue %dx.types.CBufRet.f32 %2258, 0
  %2260 = extractvalue %dx.types.CBufRet.f32 %2258, 1
  %2261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2262 = extractvalue %dx.types.CBufRet.f32 %2261, 0
  %2263 = extractvalue %dx.types.CBufRet.f32 %2261, 1
  %2264 = fsub fast float %2259, %2262
  %2265 = fsub fast float %2260, %2263
  %2266 = extractvalue %dx.types.CBufRet.f32 %2258, 2
  %2267 = fsub fast float -0.000000e+00, %2264
  %2268 = fsub fast float -0.000000e+00, %2265
  %2269 = call float @dx.op.dot2.f32(i32 54, float %2088, float %2089, float %2267, float %2268)  ; Dot2(ax,ay,bx,by)
  %2270 = fmul fast float %2269, 2.000000e+00
  %2271 = call float @dx.op.dot2.f32(i32 54, float %2267, float %2268, float %2267, float %2268)  ; Dot2(ax,ay,bx,by)
  %2272 = fmul fast float %2266, %2266
  %2273 = fsub fast float %2271, %2272
  %2274 = fmul fast float %2270, %2270
  %2275 = fmul fast float %2131, %2273
  %2276 = fsub fast float %2274, %2275
  %2277 = fcmp fast ogt float %2276, 0.000000e+00
  br i1 %2277, label %2278, label %2293, !dx.controlflow.hints !76

; <label>:2278                                    ; preds = %2254
  %2279 = fcmp fast ogt float %2270, 0.000000e+00
  %2280 = call float @dx.op.unary.f32(i32 24, float %2276)  ; Sqrt(value)
  %2281 = fsub fast float -0.000000e+00, %2280
  %2282 = select i1 %2279, float %2280, float %2281
  %2283 = fadd fast float %2282, %2270
  %2284 = fmul float %2283, -5.000000e-01
  %2285 = fdiv fast float %2284, %2124
  %2286 = call float @dx.op.binary.f32(i32 35, float %2285, float 0.000000e+00)  ; FMax(a,b)
  %2287 = call float @dx.op.binary.f32(i32 36, float %2159, float %2286)  ; FMin(a,b)
  %2288 = fdiv fast float %2273, %2284
  %2289 = call float @dx.op.binary.f32(i32 35, float %2288, float 0.000000e+00)  ; FMax(a,b)
  %2290 = call float @dx.op.binary.f32(i32 36, float %2159, float %2289)  ; FMin(a,b)
  %2291 = call float @dx.op.binary.f32(i32 36, float %2287, float %2290)  ; FMin(a,b)
  %2292 = call float @dx.op.binary.f32(i32 35, float %2287, float %2290)  ; FMax(a,b)
  br label %2293

; <label>:2293                                    ; preds = %2278, %2254
  %2294 = phi float [ %2292, %2278 ], [ -1.000000e+00, %2254 ]
  %2295 = phi float [ %2291, %2278 ], [ -1.000000e+00, %2254 ]
  %2296 = phi i1 [ true, %2278 ], [ false, %2254 ]
  br i1 %2296, label %2297, label %2303, !dx.controlflow.hints !99

; <label>:2297                                    ; preds = %2293
  %2298 = call float @dx.op.binary.f32(i32 35, float %2242, float %2295)  ; FMax(a,b)
  %2299 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 %2256
  store float %2298, float* %2299, align 4, !tbaa !84, !noalias !88
  %2300 = call float @dx.op.binary.f32(i32 35, float %2242, float %2294)  ; FMax(a,b)
  %2301 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 %2256
  store float %2300, float* %2301, align 4, !tbaa !84, !noalias !88
  %2302 = add nsw i32 %2255, 1
  br label %2303

; <label>:2303                                    ; preds = %2297, %2293
  %2304 = phi i32 [ %2302, %2297 ], [ %2255, %2293 ]
  %2305 = add nuw nsw i32 %2256, 1
  %2306 = icmp eq i32 %2305, %2111
  br i1 %2306, label %2307, label %2254

; <label>:2307                                    ; preds = %2303
  %2308 = load float, float* %2248, align 4, !tbaa !84, !alias.scope !100, !noalias !103
  %2309 = load float, float* %2247, align 4, !tbaa !84, !alias.scope !106, !noalias !107
  %2310 = load float, float* %2246, align 4, !tbaa !84, !alias.scope !108, !noalias !109
  %2311 = load float, float* %2251, align 4, !tbaa !84, !alias.scope !110, !noalias !113
  %2312 = load float, float* %2250, align 4, !tbaa !84, !alias.scope !116, !noalias !117
  %2313 = load float, float* %2249, align 4, !tbaa !84, !alias.scope !118, !noalias !119
  br label %2314

; <label>:2314                                    ; preds = %2307, %2241
  %2315 = phi float [ -1.000000e+00, %2241 ], [ %2313, %2307 ]
  %2316 = phi float [ -1.000000e+00, %2241 ], [ %2312, %2307 ]
  %2317 = phi float [ -1.000000e+00, %2241 ], [ %2311, %2307 ]
  %2318 = phi float [ -1.000000e+00, %2241 ], [ %2310, %2307 ]
  %2319 = phi float [ -1.000000e+00, %2241 ], [ %2309, %2307 ]
  %2320 = phi float [ -1.000000e+00, %2241 ], [ %2308, %2307 ]
  %2321 = phi i32 [ 0, %2241 ], [ %2304, %2307 ]
  %2322 = call float @dx.op.binary.f32(i32 36, float %2319, float %2320)  ; FMin(a,b)
  %2323 = call float @dx.op.binary.f32(i32 36, float %2318, float %2322)  ; FMin(a,b)
  %2324 = call float @dx.op.binary.f32(i32 35, float %2318, float %2319)  ; FMax(a,b)
  %2325 = call float @dx.op.binary.f32(i32 36, float %2324, float %2320)  ; FMin(a,b)
  %2326 = call float @dx.op.binary.f32(i32 36, float %2318, float %2319)  ; FMin(a,b)
  %2327 = call float @dx.op.binary.f32(i32 35, float %2326, float %2325)  ; FMax(a,b)
  %2328 = call float @dx.op.binary.f32(i32 35, float %2319, float %2320)  ; FMax(a,b)
  %2329 = call float @dx.op.binary.f32(i32 35, float %2318, float %2328)  ; FMax(a,b)
  store float %2323, float* %2246, align 4, !tbaa !84, !alias.scope !108, !noalias !109
  store float %2327, float* %2247, align 4, !tbaa !84, !alias.scope !106, !noalias !107
  store float %2329, float* %2248, align 4, !tbaa !84, !alias.scope !100, !noalias !103
  %2330 = call float @dx.op.binary.f32(i32 36, float %2316, float %2317)  ; FMin(a,b)
  %2331 = call float @dx.op.binary.f32(i32 36, float %2315, float %2330)  ; FMin(a,b)
  %2332 = call float @dx.op.binary.f32(i32 35, float %2315, float %2316)  ; FMax(a,b)
  %2333 = call float @dx.op.binary.f32(i32 36, float %2332, float %2317)  ; FMin(a,b)
  %2334 = call float @dx.op.binary.f32(i32 36, float %2315, float %2316)  ; FMin(a,b)
  %2335 = call float @dx.op.binary.f32(i32 35, float %2334, float %2333)  ; FMax(a,b)
  %2336 = call float @dx.op.binary.f32(i32 35, float %2316, float %2317)  ; FMax(a,b)
  %2337 = call float @dx.op.binary.f32(i32 35, float %2315, float %2336)  ; FMax(a,b)
  store float %2331, float* %2249, align 4, !tbaa !84, !alias.scope !118, !noalias !119
  store float %2335, float* %2250, align 4, !tbaa !84, !alias.scope !116, !noalias !117
  store float %2337, float* %2251, align 4, !tbaa !84, !alias.scope !110, !noalias !113
  %2338 = sub nsw i32 3, %2321
  %2339 = icmp sgt i32 %2338, 2
  br i1 %2339, label %2340, label %2378, !dx.controlflow.hints !120

; <label>:2340                                    ; preds = %2314
  %2341 = icmp eq i32 %2109, 0
  %2342 = fsub fast float %2159, %2243
  %2343 = select i1 %2341, float %2342, float %2243
  %2344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2345 = extractvalue %dx.types.CBufRet.f32 %2344, 0
  %2346 = extractvalue %dx.types.CBufRet.f32 %2344, 1
  %2347 = extractvalue %dx.types.CBufRet.f32 %2344, 2
  %2348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2349 = extractvalue %dx.types.CBufRet.f32 %2348, 0
  %2350 = extractvalue %dx.types.CBufRet.f32 %2348, 1
  %2351 = extractvalue %dx.types.CBufRet.f32 %2348, 2
  %2352 = extractvalue %dx.types.CBufRet.f32 %2348, 3
  %2353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2354 = extractvalue %dx.types.CBufRet.f32 %2353, 3
  %2355 = call float @dx.op.binary.f32(i32 36, float %2244, float %2354)  ; FMin(a,b)
  %2356 = fmul fast float %2352, %2343
  %2357 = call float @dx.op.unary.f32(i32 7, float %2356)  ; Saturate(value)
  %2358 = fsub fast float %2349, %2345
  %2359 = fsub fast float %2350, %2346
  %2360 = fsub fast float %2351, %2347
  %2361 = fmul fast float %2357, %2358
  %2362 = fmul fast float %2357, %2359
  %2363 = fmul fast float %2357, %2360
  %2364 = fadd fast float %2361, %2345
  %2365 = fadd fast float %2362, %2346
  %2366 = fadd fast float %2363, %2347
  %2367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2368 = extractvalue %dx.types.CBufRet.f32 %2367, 0
  %2369 = extractvalue %dx.types.CBufRet.f32 %2367, 1
  %2370 = fadd fast float %2369, %2368
  %2371 = call float @dx.op.unary.f32(i32 7, float %2370)  ; Saturate(value)
  %2372 = extractvalue %dx.types.CBufRet.f32 %2367, 2
  %2373 = extractvalue %dx.types.CBufRet.f32 %2367, 3
  %2374 = fadd fast float %2373, %2372
  %2375 = call float @dx.op.unary.f32(i32 7, float %2374)  ; Saturate(value)
  %2376 = fmul fast float %2371, %2355
  %2377 = fmul fast float %2376, %2375
  br label %2460

; <label>:2378                                    ; preds = %2314
  %2379 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 %2338
  %2380 = load float, float* %2379, align 4, !tbaa !84, !noalias !88
  %2381 = fcmp fast olt float %2380, %2245
  %2382 = icmp sgt i32 %2321, 0
  %2383 = and i1 %2382, %2381
  br i1 %2383, label %2384, label %2421

; <label>:2384                                    ; preds = %2378
  br label %2385

; <label>:2385                                    ; preds = %2414, %2384
  %2386 = phi float [ %2415, %2414 ], [ %2243, %2384 ]
  %2387 = phi float [ %2416, %2414 ], [ %2244, %2384 ]
  %2388 = phi float [ %2396, %2414 ], [ %2380, %2384 ]
  %2389 = phi i32 [ %2393, %2414 ], [ %2338, %2384 ]
  %2390 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 %2389
  %2391 = load float, float* %2390, align 4, !tbaa !84, !noalias !88
  %2392 = icmp slt i32 %2389, 2
  %2393 = add nsw i32 %2389, 1
  %2394 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 %2393
  %2395 = load float, float* %2394, align 4, !tbaa !84, !noalias !88
  %2396 = select i1 %2392, float %2395, float %2159
  %2397 = call float @dx.op.binary.f32(i32 36, float %2396, float %2391)  ; FMin(a,b)
  %2398 = call float @dx.op.binary.f32(i32 36, float %2245, float %2397)  ; FMin(a,b)
  %2399 = icmp eq i32 %2109, 0
  %2400 = fadd fast float %2398, %2388
  %2401 = fmul fast float %2400, %2090
  %2402 = fadd fast float %2401, %2103
  br i1 %2399, label %2408, label %2403, !dx.controlflow.hints !121

; <label>:2403                                    ; preds = %2385
  %2404 = fsub fast float %2398, %2388
  %2405 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2404)  ; FMax(a,b)
  %2406 = fmul fast float %2405, %2402
  %2407 = fadd fast float %2406, %2387
  br label %2414

; <label>:2408                                    ; preds = %2385
  %2409 = fsub fast float %2388, %2398
  %2410 = call float @dx.op.unary.f32(i32 6, float %2409)  ; FAbs(value)
  %2411 = fadd fast float %2410, %2386
  %2412 = fmul fast float %2410, %2402
  %2413 = fsub fast float %2387, %2412
  br label %2414

; <label>:2414                                    ; preds = %2408, %2403
  %2415 = phi float [ %2405, %2403 ], [ %2411, %2408 ]
  %2416 = phi float [ %2407, %2403 ], [ %2413, %2408 ]
  %2417 = fcmp fast olt float %2396, %2245
  %2418 = icmp slt i32 %2393, 3
  %2419 = and i1 %2418, %2417
  br i1 %2419, label %2385, label %2420

; <label>:2420                                    ; preds = %2414
  br label %2421

; <label>:2421                                    ; preds = %2420, %2378
  %2422 = phi float [ %2243, %2378 ], [ %2415, %2420 ]
  %2423 = phi float [ %2244, %2378 ], [ %2416, %2420 ]
  %2424 = fsub fast float %2159, %2422
  %2425 = select i1 %2161, float %2422, float %2424
  %2426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2427 = extractvalue %dx.types.CBufRet.f32 %2426, 0
  %2428 = extractvalue %dx.types.CBufRet.f32 %2426, 1
  %2429 = extractvalue %dx.types.CBufRet.f32 %2426, 2
  %2430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2431 = extractvalue %dx.types.CBufRet.f32 %2430, 0
  %2432 = extractvalue %dx.types.CBufRet.f32 %2430, 1
  %2433 = extractvalue %dx.types.CBufRet.f32 %2430, 2
  %2434 = extractvalue %dx.types.CBufRet.f32 %2430, 3
  %2435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2436 = extractvalue %dx.types.CBufRet.f32 %2435, 3
  %2437 = call float @dx.op.binary.f32(i32 36, float %2423, float %2436)  ; FMin(a,b)
  %2438 = fmul fast float %2434, %2425
  %2439 = call float @dx.op.unary.f32(i32 7, float %2438)  ; Saturate(value)
  %2440 = fsub fast float %2431, %2427
  %2441 = fsub fast float %2432, %2428
  %2442 = fsub fast float %2433, %2429
  %2443 = fmul fast float %2439, %2440
  %2444 = fmul fast float %2439, %2441
  %2445 = fmul fast float %2439, %2442
  %2446 = fadd fast float %2443, %2427
  %2447 = fadd fast float %2444, %2428
  %2448 = fadd fast float %2445, %2429
  %2449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2450 = extractvalue %dx.types.CBufRet.f32 %2449, 0
  %2451 = extractvalue %dx.types.CBufRet.f32 %2449, 1
  %2452 = fadd fast float %2451, %2450
  %2453 = call float @dx.op.unary.f32(i32 7, float %2452)  ; Saturate(value)
  %2454 = extractvalue %dx.types.CBufRet.f32 %2449, 2
  %2455 = extractvalue %dx.types.CBufRet.f32 %2449, 3
  %2456 = fadd fast float %2455, %2454
  %2457 = call float @dx.op.unary.f32(i32 7, float %2456)  ; Saturate(value)
  %2458 = fmul fast float %2453, %2437
  %2459 = fmul fast float %2458, %2457
  br label %2460

; <label>:2460                                    ; preds = %2421, %2340, %2175, %2157, %2155
  %2461 = phi float [ %2184, %2175 ], [ %2343, %2340 ], [ %2425, %2421 ], [ 0.000000e+00, %2155 ], [ 0.000000e+00, %2157 ]
  %2462 = phi float [ %2218, %2175 ], [ %2377, %2340 ], [ %2459, %2421 ], [ 0.000000e+00, %2155 ], [ 0.000000e+00, %2157 ]
  %2463 = phi float [ %2205, %2175 ], [ %2364, %2340 ], [ %2446, %2421 ], [ 0.000000e+00, %2155 ], [ 0.000000e+00, %2157 ]
  %2464 = phi float [ %2206, %2175 ], [ %2365, %2340 ], [ %2447, %2421 ], [ 0.000000e+00, %2155 ], [ 0.000000e+00, %2157 ]
  %2465 = phi float [ %2207, %2175 ], [ %2366, %2340 ], [ %2448, %2421 ], [ 0.000000e+00, %2155 ], [ 0.000000e+00, %2157 ]
  %2466 = fmul fast float %2098, %2462
  %2467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2468 = extractvalue %dx.types.CBufRet.f32 %2467, 2
  %2469 = fsub fast float %2105, %2468
  %2470 = fcmp fast olt float %2466, -2.000000e+01
  %2471 = call float @dx.op.unary.f32(i32 21, float %2466)  ; Exp(value)
  %2472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2473 = extractvalue %dx.types.CBufRet.f32 %2472, 2
  %2474 = extractvalue %dx.types.CBufRet.f32 %2472, 3
  %2475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2476 = extractvalue %dx.types.CBufRet.f32 %2475, 2
  %2477 = fmul fast float %2474, %2469
  %2478 = call float @dx.op.unary.f32(i32 7, float %2477)  ; Saturate(value)
  %2479 = fsub fast float 1.000000e+00, %2478
  %2480 = fmul fast float %2090, 5.000000e-01
  %2481 = fadd fast float %2480, 5.000000e-01
  %2482 = call float @dx.op.unary.f32(i32 7, float %2481)  ; Saturate(value)
  %2483 = fsub fast float 1.000000e+00, %2482
  %2484 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2479)  ; FMax(a,b)
  %2485 = fdiv fast float %2483, %2484
  %2486 = fsub fast float %2469, %2056
  %2487 = call float @dx.op.unary.f32(i32 6, float %2486)  ; FAbs(value)
  %2488 = fmul fast float %2487, %2473
  %2489 = call float @dx.op.unary.f32(i32 7, float %2485)  ; Saturate(value)
  %2490 = fsub fast float 1.000000e+00, %2488
  %2491 = fmul fast float %2490, %2489
  %2492 = fadd fast float %2491, %2488
  %2493 = fmul fast float %2476, %2469
  %2494 = call float @dx.op.unary.f32(i32 7, float %2493)  ; Saturate(value)
  %2495 = fsub fast float 1.000000e+00, %2492
  %2496 = fmul fast float %2495, %2494
  %2497 = fadd fast float %2496, %2492
  %2498 = call float @dx.op.unary.f32(i32 7, float %2497)  ; Saturate(value)
  %2499 = fadd fast float %2471, -1.000000e+00
  %2500 = select i1 %2470, float -1.000000e+00, float %2499
  %2501 = fmul fast float %2498, %2500
  %2502 = fadd fast float %2501, 1.000000e+00
  %2503 = fsub fast float -0.000000e+00, %2501
  %2504 = fmul fast float %2463, %2503
  %2505 = fmul fast float %2464, %2503
  %2506 = fmul fast float %2465, %2503
  br label %2507

; <label>:2507                                    ; preds = %2460, %2009
  %2508 = phi float [ %2461, %2460 ], [ 0.000000e+00, %2009 ]
  %2509 = phi float [ %2502, %2460 ], [ 1.000000e+00, %2009 ]
  %2510 = phi float [ %2504, %2460 ], [ 0.000000e+00, %2009 ]
  %2511 = phi float [ %2505, %2460 ], [ 0.000000e+00, %2009 ]
  %2512 = phi float [ %2506, %2460 ], [ 0.000000e+00, %2009 ]
  %2513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2514 = extractvalue %dx.types.CBufRet.f32 %2513, 1
  %2515 = fsub fast float 1.000000e+00, %2509
  %2516 = fmul fast float %2515, %2091
  %2517 = fmul fast float %2516, %2514
  %2518 = fsub fast float %2091, %2517
  br i1 %2084, label %2519, label %2548, !dx.controlflow.hints !122

; <label>:2519                                    ; preds = %2507
  %2520 = fmul fast float %2092, %2081
  %2521 = fadd fast float %2520, %2082
  %2522 = call float @dx.op.unary.f32(i32 7, float %2521)  ; Saturate(value)
  %2523 = fmul fast float %2063, %2518
  %2524 = fsub fast float -0.000000e+00, %2523
  %2525 = fmul fast float %2064, %2518
  %2526 = fsub fast float -0.000000e+00, %2525
  %2527 = call float @dx.op.unary.f32(i32 21, float %2524)  ; Exp(value)
  %2528 = call float @dx.op.unary.f32(i32 21, float %2526)  ; Exp(value)
  %2529 = call float @dx.op.binary.f32(i32 35, float %2071, float %2527)  ; FMax(a,b)
  %2530 = call float @dx.op.binary.f32(i32 35, float %2071, float %2528)  ; FMax(a,b)
  %2531 = fsub fast float %2530, %2529
  %2532 = fmul fast float %2531, %2522
  %2533 = fadd fast float %2532, %2529
  %2534 = call float @dx.op.unary.f32(i32 7, float %2533)  ; Saturate(value)
  %2535 = fsub fast float %2068, %2073
  %2536 = fsub fast float %2069, %2074
  %2537 = fsub fast float %2070, %2075
  %2538 = fmul fast float %2522, %2535
  %2539 = fmul fast float %2522, %2536
  %2540 = fmul fast float %2522, %2537
  %2541 = fadd fast float %2538, %2073
  %2542 = fadd fast float %2539, %2074
  %2543 = fadd fast float %2540, %2075
  %2544 = fsub fast float 1.000000e+00, %2534
  %2545 = fmul fast float %2544, %2541
  %2546 = fmul fast float %2544, %2542
  %2547 = fmul fast float %2544, %2543
  br label %2607

; <label>:2548                                    ; preds = %2507
  %2549 = fmul fast float %2518, %2080
  %2550 = call float @dx.op.unary.f32(i32 7, float %2549)  ; Saturate(value)
  %2551 = fsub fast float 2.000000e+00, %2550
  %2552 = fmul fast float %2550, 9.921875e-01
  %2553 = fmul fast float %2552, %2551
  %2554 = fadd fast float %2553, 3.906250e-03
  %2555 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %2554, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2556 = extractvalue %dx.types.ResRet.f32 %2555, 0
  %2557 = fsub fast float %2550, %2556
  %2558 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2557)  ; FMax(a,b)
  %2559 = fmul fast float %2066, %2056
  %2560 = call float @dx.op.unary.f32(i32 6, float %2559)  ; FAbs(value)
  %2561 = fcmp fast ogt float %2560, 0x3EB0C6F7A0000000
  br i1 %2561, label %2562, label %2568, !dx.controlflow.hints !123

; <label>:2562                                    ; preds = %2548
  %2563 = fmul fast float %2559, 0xBFF7154760000000
  %2564 = call float @dx.op.unary.f32(i32 21, float %2563)  ; Exp(value)
  %2565 = fsub fast float 1.000000e+00, %2564
  %2566 = fdiv fast float %2565, %2559
  %2567 = fmul fast float %2566, %2076
  br label %2568

; <label>:2568                                    ; preds = %2562, %2548
  %2569 = phi float [ %2567, %2562 ], [ %2076, %2548 ]
  %2570 = fadd fast float %2569, %2078
  %2571 = fmul fast float %2570, %2558
  %2572 = fmul fast float %2063, %2571
  %2573 = fsub fast float -0.000000e+00, %2572
  %2574 = fmul fast float %2064, %2571
  %2575 = fsub fast float -0.000000e+00, %2574
  %2576 = fmul fast float %2065, %2571
  %2577 = fsub fast float -0.000000e+00, %2576
  %2578 = call float @dx.op.unary.f32(i32 21, float %2573)  ; Exp(value)
  %2579 = call float @dx.op.unary.f32(i32 21, float %2575)  ; Exp(value)
  %2580 = call float @dx.op.unary.f32(i32 21, float %2577)  ; Exp(value)
  %2581 = fmul fast float %2092, %2092
  %2582 = fadd fast float %2581, 1.000000e+00
  %2583 = fmul fast float %2582, 0x3FAE8EC8A0000000
  %2584 = fmul fast float %2583, %2073
  %2585 = fmul fast float %2583, %2074
  %2586 = fmul fast float %2583, %2075
  %2587 = fmul fast float %2092, %2071
  %2588 = fsub fast float 1.000000e+00, %2587
  %2589 = fmul fast float %2071, %2071
  %2590 = fsub fast float 1.000000e+00, %2589
  %2591 = fmul fast float %2590, 0x3FB45F3060000000
  %2592 = fmul fast float %2588, %2588
  %2593 = fdiv fast float 1.000000e+00, %2592
  %2594 = fmul fast float %2591, %2593
  %2595 = fmul fast float %2594, %2068
  %2596 = fmul fast float %2594, %2069
  %2597 = fmul fast float %2594, %2070
  %2598 = fadd fast float %2595, %2584
  %2599 = fadd fast float %2596, %2585
  %2600 = fadd fast float %2597, %2586
  %2601 = fsub fast float 1.000000e+00, %2578
  %2602 = fsub fast float 1.000000e+00, %2579
  %2603 = fsub fast float 1.000000e+00, %2580
  %2604 = fmul fast float %2598, %2601
  %2605 = fmul fast float %2599, %2602
  %2606 = fmul fast float %2600, %2603
  br label %2607

; <label>:2607                                    ; preds = %2568, %2519
  %2608 = phi float [ %2545, %2519 ], [ %2604, %2568 ]
  %2609 = phi float [ %2546, %2519 ], [ %2605, %2568 ]
  %2610 = phi float [ %2547, %2519 ], [ %2606, %2568 ]
  %2611 = phi float [ %2534, %2519 ], [ %2578, %2568 ]
  %2612 = phi float [ %2534, %2519 ], [ %2579, %2568 ]
  %2613 = phi float [ %2534, %2519 ], [ %2580, %2568 ]
  br i1 %2100, label %2614, label %2812, !dx.controlflow.hints !124

; <label>:2614                                    ; preds = %2607
  %2615 = extractvalue %dx.types.CBufRet.f32 %2513, 0
  %2616 = fmul fast float %2615, %2515
  %2617 = fsub fast float %2510, %2608
  %2618 = fsub fast float %2511, %2609
  %2619 = fsub fast float %2512, %2610
  %2620 = fmul fast float %2616, %2617
  %2621 = fmul fast float %2616, %2618
  %2622 = fmul fast float %2616, %2619
  %2623 = fadd fast float %2620, %2608
  %2624 = fadd fast float %2621, %2609
  %2625 = fadd fast float %2622, %2610
  %2626 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2611)  ; FMax(a,b)
  %2627 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2612)  ; FMax(a,b)
  %2628 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2613)  ; FMax(a,b)
  %2629 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2509)  ; FMax(a,b)
  %2630 = call float @dx.op.binary.f32(i32 35, float %2508, float %2518)  ; FMax(a,b)
  %2631 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2630)  ; FMax(a,b)
  %2632 = fdiv fast float %2508, %2631
  %2633 = call float @dx.op.unary.f32(i32 7, float %2632)  ; Saturate(value)
  %2634 = fdiv fast float %2518, %2631
  %2635 = call float @dx.op.unary.f32(i32 7, float %2634)  ; Saturate(value)
  %2636 = fcmp fast une float %2629, 1.000000e+00
  br i1 %2636, label %2637, label %2650, !dx.controlflow.hints !125

; <label>:2637                                    ; preds = %2614
  %2638 = call float @dx.op.unary.f32(i32 23, float %2629)  ; Log(value)
  %2639 = fmul fast float %2638, 0x3FE62E4300000000
  %2640 = fmul fast float %2510, %2639
  %2641 = fsub fast float -0.000000e+00, %2640
  %2642 = fmul fast float %2511, %2639
  %2643 = fsub fast float -0.000000e+00, %2642
  %2644 = fmul fast float %2512, %2639
  %2645 = fsub fast float -0.000000e+00, %2644
  %2646 = fsub fast float 1.000000e+00, %2629
  %2647 = fdiv fast float %2641, %2646
  %2648 = fdiv fast float %2643, %2646
  %2649 = fdiv fast float %2645, %2646
  br label %2650

; <label>:2650                                    ; preds = %2637, %2614
  %2651 = phi float [ %2647, %2637 ], [ %2510, %2614 ]
  %2652 = phi float [ %2648, %2637 ], [ %2511, %2614 ]
  %2653 = phi float [ %2649, %2637 ], [ %2512, %2614 ]
  %2654 = phi float [ %2639, %2637 ], [ 0.000000e+00, %2614 ]
  %2655 = fcmp fast une float %2626, 1.000000e+00
  br i1 %2655, label %2656, label %2663, !dx.controlflow.hints !126

; <label>:2656                                    ; preds = %2650
  %2657 = call float @dx.op.unary.f32(i32 23, float %2626)  ; Log(value)
  %2658 = fmul fast float %2657, 0x3FE62E4300000000
  %2659 = fmul fast float %2623, %2658
  %2660 = fsub fast float -0.000000e+00, %2659
  %2661 = fsub fast float 1.000000e+00, %2626
  %2662 = fdiv fast float %2660, %2661
  br label %2663

; <label>:2663                                    ; preds = %2656, %2650
  %2664 = phi float [ %2662, %2656 ], [ %2623, %2650 ]
  %2665 = phi float [ %2658, %2656 ], [ 0.000000e+00, %2650 ]
  %2666 = fcmp fast une float %2627, 1.000000e+00
  br i1 %2666, label %2667, label %2674, !dx.controlflow.hints !126

; <label>:2667                                    ; preds = %2663
  %2668 = call float @dx.op.unary.f32(i32 23, float %2627)  ; Log(value)
  %2669 = fmul fast float %2668, 0x3FE62E4300000000
  %2670 = fmul fast float %2624, %2669
  %2671 = fsub fast float -0.000000e+00, %2670
  %2672 = fsub fast float 1.000000e+00, %2627
  %2673 = fdiv fast float %2671, %2672
  br label %2674

; <label>:2674                                    ; preds = %2667, %2663
  %2675 = phi float [ %2673, %2667 ], [ %2624, %2663 ]
  %2676 = phi float [ %2669, %2667 ], [ 0.000000e+00, %2663 ]
  %2677 = fcmp fast une float %2628, 1.000000e+00
  br i1 %2677, label %2678, label %2685, !dx.controlflow.hints !126

; <label>:2678                                    ; preds = %2674
  %2679 = call float @dx.op.unary.f32(i32 23, float %2628)  ; Log(value)
  %2680 = fmul fast float %2679, 0x3FE62E4300000000
  %2681 = fmul fast float %2625, %2680
  %2682 = fsub fast float -0.000000e+00, %2681
  %2683 = fsub fast float 1.000000e+00, %2628
  %2684 = fdiv fast float %2682, %2683
  br label %2685

; <label>:2685                                    ; preds = %2678, %2674
  %2686 = phi float [ %2684, %2678 ], [ %2625, %2674 ]
  %2687 = phi float [ %2680, %2678 ], [ 0.000000e+00, %2674 ]
  %2688 = fmul fast float %2651, %2635
  %2689 = fmul fast float %2652, %2635
  %2690 = fmul fast float %2653, %2635
  %2691 = fmul fast float %2654, %2635
  %2692 = fmul fast float %2664, %2633
  %2693 = fmul fast float %2675, %2633
  %2694 = fmul fast float %2686, %2633
  %2695 = fmul fast float %2665, %2633
  %2696 = fmul fast float %2676, %2633
  %2697 = fmul fast float %2687, %2633
  %2698 = fadd fast float %2692, %2688
  %2699 = fadd fast float %2693, %2689
  %2700 = fadd fast float %2694, %2690
  %2701 = fadd fast float %2695, %2691
  %2702 = fadd fast float %2696, %2691
  %2703 = fadd fast float %2697, %2691
  %2704 = fcmp fast une float %2701, 0.000000e+00
  br i1 %2704, label %2705, label %2712, !dx.controlflow.hints !127

; <label>:2705                                    ; preds = %2685
  %2706 = fmul fast float %2701, 0x3FF7154760000000
  %2707 = call float @dx.op.unary.f32(i32 21, float %2706)  ; Exp(value)
  %2708 = fsub fast float 1.000000e+00, %2707
  %2709 = fmul fast float %2698, %2708
  %2710 = fsub fast float -0.000000e+00, %2709
  %2711 = fdiv fast float %2710, %2701
  br label %2712

; <label>:2712                                    ; preds = %2705, %2685
  %2713 = phi float [ %2707, %2705 ], [ 1.000000e+00, %2685 ]
  %2714 = phi float [ %2711, %2705 ], [ %2698, %2685 ]
  %2715 = fcmp fast une float %2702, 0.000000e+00
  br i1 %2715, label %2716, label %2723, !dx.controlflow.hints !127

; <label>:2716                                    ; preds = %2712
  %2717 = fmul fast float %2702, 0x3FF7154760000000
  %2718 = call float @dx.op.unary.f32(i32 21, float %2717)  ; Exp(value)
  %2719 = fsub fast float 1.000000e+00, %2718
  %2720 = fmul fast float %2699, %2719
  %2721 = fsub fast float -0.000000e+00, %2720
  %2722 = fdiv fast float %2721, %2702
  br label %2723

; <label>:2723                                    ; preds = %2716, %2712
  %2724 = phi float [ %2718, %2716 ], [ 1.000000e+00, %2712 ]
  %2725 = phi float [ %2722, %2716 ], [ %2699, %2712 ]
  %2726 = fcmp fast une float %2703, 0.000000e+00
  br i1 %2726, label %2727, label %2734, !dx.controlflow.hints !127

; <label>:2727                                    ; preds = %2723
  %2728 = fmul fast float %2703, 0x3FF7154760000000
  %2729 = call float @dx.op.unary.f32(i32 21, float %2728)  ; Exp(value)
  %2730 = fsub fast float 1.000000e+00, %2729
  %2731 = fmul fast float %2700, %2730
  %2732 = fsub fast float -0.000000e+00, %2731
  %2733 = fdiv fast float %2732, %2703
  br label %2734

; <label>:2734                                    ; preds = %2727, %2723
  %2735 = phi float [ %2729, %2727 ], [ 1.000000e+00, %2723 ]
  %2736 = phi float [ %2733, %2727 ], [ %2700, %2723 ]
  %2737 = fcmp fast ogt float %2633, %2635
  br i1 %2737, label %2738, label %2758, !dx.controlflow.hints !128

; <label>:2738                                    ; preds = %2734
  %2739 = fsub fast float 1.000000e+00, %2635
  %2740 = fmul fast float %2651, %2739
  %2741 = fmul fast float %2652, %2739
  %2742 = fmul fast float %2653, %2739
  %2743 = fmul fast float %2654, %2739
  %2744 = fcmp fast une float %2743, 0.000000e+00
  br i1 %2744, label %2745, label %2796, !dx.controlflow.hints !129

; <label>:2745                                    ; preds = %2738
  %2746 = fmul fast float %2743, 0x3FF7154760000000
  %2747 = call float @dx.op.unary.f32(i32 21, float %2746)  ; Exp(value)
  %2748 = fsub fast float 1.000000e+00, %2747
  %2749 = fmul fast float %2740, %2748
  %2750 = fsub fast float -0.000000e+00, %2749
  %2751 = fmul fast float %2741, %2748
  %2752 = fsub fast float -0.000000e+00, %2751
  %2753 = fmul fast float %2742, %2748
  %2754 = fsub fast float -0.000000e+00, %2753
  %2755 = fdiv fast float %2750, %2743
  %2756 = fdiv fast float %2752, %2743
  %2757 = fdiv fast float %2754, %2743
  br label %2796

; <label>:2758                                    ; preds = %2734
  %2759 = fsub fast float 1.000000e+00, %2633
  %2760 = fmul fast float %2664, %2759
  %2761 = fmul fast float %2675, %2759
  %2762 = fmul fast float %2686, %2759
  %2763 = fmul fast float %2665, %2759
  %2764 = fmul fast float %2676, %2759
  %2765 = fmul fast float %2687, %2759
  %2766 = fcmp fast une float %2763, 0.000000e+00
  br i1 %2766, label %2767, label %2774, !dx.controlflow.hints !127

; <label>:2767                                    ; preds = %2758
  %2768 = fmul fast float %2763, 0x3FF7154760000000
  %2769 = call float @dx.op.unary.f32(i32 21, float %2768)  ; Exp(value)
  %2770 = fsub fast float 1.000000e+00, %2769
  %2771 = fmul fast float %2760, %2770
  %2772 = fsub fast float -0.000000e+00, %2771
  %2773 = fdiv fast float %2772, %2763
  br label %2774

; <label>:2774                                    ; preds = %2767, %2758
  %2775 = phi float [ %2773, %2767 ], [ %2760, %2758 ]
  %2776 = phi float [ %2769, %2767 ], [ 1.000000e+00, %2758 ]
  %2777 = fcmp fast une float %2764, 0.000000e+00
  br i1 %2777, label %2778, label %2785, !dx.controlflow.hints !127

; <label>:2778                                    ; preds = %2774
  %2779 = fmul fast float %2764, 0x3FF7154760000000
  %2780 = call float @dx.op.unary.f32(i32 21, float %2779)  ; Exp(value)
  %2781 = fsub fast float 1.000000e+00, %2780
  %2782 = fmul fast float %2761, %2781
  %2783 = fsub fast float -0.000000e+00, %2782
  %2784 = fdiv fast float %2783, %2764
  br label %2785

; <label>:2785                                    ; preds = %2778, %2774
  %2786 = phi float [ %2784, %2778 ], [ %2761, %2774 ]
  %2787 = phi float [ %2780, %2778 ], [ 1.000000e+00, %2774 ]
  %2788 = fcmp fast une float %2765, 0.000000e+00
  br i1 %2788, label %2789, label %2796, !dx.controlflow.hints !127

; <label>:2789                                    ; preds = %2785
  %2790 = fmul fast float %2765, 0x3FF7154760000000
  %2791 = call float @dx.op.unary.f32(i32 21, float %2790)  ; Exp(value)
  %2792 = fsub fast float 1.000000e+00, %2791
  %2793 = fmul fast float %2762, %2792
  %2794 = fsub fast float -0.000000e+00, %2793
  %2795 = fdiv fast float %2794, %2765
  br label %2796

; <label>:2796                                    ; preds = %2789, %2785, %2745, %2738
  %2797 = phi float [ %2795, %2789 ], [ %2757, %2745 ], [ %2742, %2738 ], [ %2762, %2785 ]
  %2798 = phi float [ %2786, %2789 ], [ %2756, %2745 ], [ %2741, %2738 ], [ %2786, %2785 ]
  %2799 = phi float [ %2775, %2789 ], [ %2755, %2745 ], [ %2740, %2738 ], [ %2775, %2785 ]
  %2800 = phi float [ %2791, %2789 ], [ %2747, %2745 ], [ 1.000000e+00, %2738 ], [ 1.000000e+00, %2785 ]
  %2801 = phi float [ %2787, %2789 ], [ %2747, %2745 ], [ 1.000000e+00, %2738 ], [ %2787, %2785 ]
  %2802 = phi float [ %2776, %2789 ], [ %2747, %2745 ], [ 1.000000e+00, %2738 ], [ %2776, %2785 ]
  %2803 = fmul fast float %2802, %2714
  %2804 = fmul fast float %2801, %2725
  %2805 = fmul fast float %2800, %2736
  %2806 = fadd fast float %2803, %2799
  %2807 = fadd fast float %2804, %2798
  %2808 = fadd fast float %2805, %2797
  %2809 = fmul fast float %2802, %2713
  %2810 = fmul fast float %2801, %2724
  %2811 = fmul fast float %2800, %2735
  br label %2812

; <label>:2812                                    ; preds = %2796, %2607
  %2813 = phi float [ %2613, %2607 ], [ %2811, %2796 ]
  %2814 = phi float [ %2612, %2607 ], [ %2810, %2796 ]
  %2815 = phi float [ %2611, %2607 ], [ %2809, %2796 ]
  %2816 = phi float [ %2610, %2607 ], [ %2808, %2796 ]
  %2817 = phi float [ %2609, %2607 ], [ %2807, %2796 ]
  %2818 = phi float [ %2608, %2607 ], [ %2806, %2796 ]
  %2819 = fmul fast float %2815, %1956
  %2820 = fmul fast float %2814, %1957
  %2821 = fmul fast float %2813, %1958
  %2822 = fsub fast float 1.000000e+00, %2019
  %2823 = fmul fast float %2818, %2822
  %2824 = fmul fast float %2817, %2822
  %2825 = fmul fast float %2816, %2822
  %2826 = fadd fast float %2823, %2819
  %2827 = fadd fast float %2824, %2820
  %2828 = fadd fast float %2825, %2821
  %2829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %2830 = extractvalue %dx.types.CBufRet.f32 %2829, 2
  %2831 = fmul fast float %2830, %2029
  %2832 = call float @dx.op.unary.f32(i32 7, float %2831)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %21, i32 %22, i32 undef, float %2019, float %2019, float %2019, float %2019, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2834 = extractvalue %dx.types.CBufRet.f32 %2833, 0
  %2835 = fmul fast float %2834, %2826
  %2836 = fmul fast float %2834, %2827
  %2837 = fmul fast float %2834, %2828
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %21, i32 %22, i32 undef, float %2835, float %2836, float %2837, float %2835, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %21, i32 %22, i32 undef, float %2832, float %2832, float %2832, float %2832, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!dx.entryPoints = !{!32}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !20, !26, !29}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !15, !16, !17, !18, !19}
!6 = !{i32 0, %"class.Texture3D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 16, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 31, i32 1, i32 7, i32 0, !7}
!10 = !{i32 3, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 30, i32 1, i32 4, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<float>"* undef, !"", i32 0, i32 29, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 0, i32 26, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 32, i32 1, i32 2, i32 0, !14}
!14 = !{i32 0, i32 5}
!15 = !{i32 7, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 33, i32 1, i32 4, i32 0, !7}
!16 = !{i32 8, %"class.Texture1D<float>"* undef, !"", i32 0, i32 14, i32 1, i32 1, i32 0, !7}
!17 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!18 = !{i32 10, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!19 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!20 = !{!21, !22, !23, !24}
!21 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!22 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!23 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!24 = !{i32 3, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 7, i1 false, i1 false, i1 false, !25}
!25 = !{i32 0, i32 14}
!26 = !{!27, !28}
!27 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!28 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!29 = !{!30, !31}
!30 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!31 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!32 = !{void ()* @cs_fog_raymarching_air_heightmap, !"cs_fog_raymarching_air_heightmap", null, !4, !33}
!33 = !{i32 0, i64 272, i32 4, !34}
!34 = !{i32 8, i32 8, i32 1}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 1}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
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

