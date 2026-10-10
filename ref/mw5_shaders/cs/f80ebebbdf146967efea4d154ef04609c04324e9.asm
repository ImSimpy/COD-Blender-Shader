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
; shader hash: 2b74307a8e06354ac3b492a485ca6c65
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
;                                   sampler      NA          NA      S2             s4     1
;                                   sampler      NA          NA      S3             s5     1
;                                   texture     f32          3d      T0             t3     1
;                                   texture     f32          3d      T1             t1     1
;                                   texture     f32          3d      T2             t2     1
;                                   texture     f32          2d      T3             t8     1
;                                   texture     f32          2d      T4             t9     1
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
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
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

define void @cs_fog_raymarching_air_clouds() {
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
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %27 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %28 = alloca [3 x float], align 4
  %29 = alloca [3 x float], align 4
  %30 = add i32 %27, %26
  %31 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %32 = extractvalue %dx.types.CBufRet.i32 %31, 1
  %33 = add i32 %30, %32
  %34 = lshr i32 %33, 1
  %35 = and i32 %34, 1
  %36 = and i32 %33, 1
  %37 = xor i32 %35, %36
  %38 = shl i32 %26, 1
  %39 = shl i32 %27, 1
  %40 = or i32 %37, %38
  %41 = or i32 %35, %39
  %42 = uitofp i32 %40 to float
  %43 = uitofp i32 %41 to float
  %44 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %45 = extractvalue %dx.types.CBufRet.f32 %44, 2
  %46 = fmul fast float %45, 0x3FE3C6EF40000000
  %47 = frem fast float %42, 2.560000e+02
  %48 = frem fast float %43, 2.560000e+02
  %49 = fptoui float %47 to i32
  %50 = fptoui float %48 to i32
  %51 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %49, i32 %50, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %52 = extractvalue %dx.types.ResRet.f32 %51, 1
  %53 = extractvalue %dx.types.ResRet.f32 %51, 2
  %54 = extractvalue %dx.types.ResRet.f32 %51, 3
  %55 = fadd fast float %52, %46
  %56 = fadd fast float %53, %46
  %57 = fadd fast float %54, %46
  %58 = call float @dx.op.unary.f32(i32 22, float %55)  ; Frc(value)
  %59 = call float @dx.op.unary.f32(i32 22, float %56)  ; Frc(value)
  %60 = call float @dx.op.unary.f32(i32 22, float %57)  ; Frc(value)
  %61 = fadd fast float %59, %42
  %62 = fadd fast float %60, %43
  %63 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %64 = extractvalue %dx.types.CBufRet.f32 %63, 2
  %65 = extractvalue %dx.types.CBufRet.f32 %63, 3
  %66 = fmul fast float %64, %61
  %67 = fmul fast float %65, %62
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 0
  %70 = fsub fast float -0.000000e+00, %69
  %71 = extractvalue %dx.types.CBufRet.f32 %68, 1
  %72 = fsub fast float -0.000000e+00, %71
  %73 = extractvalue %dx.types.CBufRet.f32 %68, 2
  %74 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %75 = extractvalue %dx.types.CBufRet.f32 %74, 1
  %76 = fmul fast float %66, 2.000000e+00
  %77 = fmul fast float %67, 2.000000e+00
  %78 = fsub fast float 1.000000e+00, %76
  %79 = fsub fast float 1.000000e+00, %77
  %80 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.f32 %80, 0
  %82 = extractvalue %dx.types.CBufRet.f32 %80, 1
  %83 = extractvalue %dx.types.CBufRet.f32 %80, 2
  %84 = fmul fast float %81, %78
  %85 = fmul fast float %82, %78
  %86 = fmul fast float %83, %78
  %87 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %88 = extractvalue %dx.types.CBufRet.f32 %87, 0
  %89 = extractvalue %dx.types.CBufRet.f32 %87, 1
  %90 = extractvalue %dx.types.CBufRet.f32 %87, 2
  %91 = fmul fast float %88, %79
  %92 = fmul fast float %89, %79
  %93 = fmul fast float %90, %79
  %94 = fadd fast float %91, %84
  %95 = fadd fast float %92, %85
  %96 = fadd fast float %93, %86
  %97 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
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
  %117 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %40, i32 %41, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %118 = extractvalue %dx.types.ResRet.f32 %117, 0
  %119 = fcmp fast ogt float %118, -1.000000e+00
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %122 = select i1 %119, float %121, float 1.000000e+00
  %123 = fadd fast float %118, 1.000000e+00
  %124 = fmul fast float %122, %123
  %125 = call float @dx.op.unary.f32(i32 6, float %124)  ; FAbs(value)
  %126 = fdiv fast float 1.000000e+00, %75
  %127 = fmul fast float %126, %112
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.f32 %128, 1
  %130 = fmul fast float %129, %127
  %131 = fmul fast float %127, %125
  %132 = extractvalue %dx.types.CBufRet.f32 %120, 3
  %133 = fcmp fast oge float %125, %132
  %134 = call float @dx.op.binary.f32(i32 36, float %131, float %130)  ; FMin(a,b)
  %135 = select i1 %133, float %130, float %134
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 3
  %138 = fsub fast float %137, %73
  %139 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %70, float %72, float %138)  ; Dot3(ax,ay,az,bx,by,bz)
  %140 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %114, float %115, float %116)  ; Dot3(ax,ay,az,bx,by,bz)
  %141 = fdiv fast float 1.000000e+00, %140
  %142 = fmul fast float %141, %139
  %143 = fcmp fast olt float %142, 0.000000e+00
  %144 = fcmp fast ogt float %116, 0.000000e+00
  %145 = and i1 %144, %143
  br i1 %145, label %150, label %146, !dx.controlflow.hints !40

; <label>:146                                     ; preds = %0
  %147 = fcmp fast olt float %116, 0.000000e+00
  br i1 %147, label %148, label %150, !dx.controlflow.hints !41

; <label>:148                                     ; preds = %146
  %149 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %142)  ; FMax(a,b)
  br label %150

; <label>:150                                     ; preds = %148, %146, %0
  %151 = phi float [ 0.000000e+00, %0 ], [ %149, %148 ], [ 0.000000e+00, %146 ]
  %152 = phi float [ 0.000000e+00, %0 ], [ 0x47EFFFFFE0000000, %148 ], [ %142, %146 ]
  %153 = fcmp fast oeq float %152, 0.000000e+00
  br i1 %153, label %157, label %154, !dx.controlflow.hints !42

; <label>:154                                     ; preds = %150
  %155 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %151)  ; FMin(a,b)
  %156 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %152)  ; FMax(a,b)
  br label %157

; <label>:157                                     ; preds = %154, %150
  %158 = phi i32 [ 1, %154 ], [ 0, %150 ]
  %159 = phi float [ %156, %154 ], [ -1.000000e+00, %150 ]
  %160 = phi float [ %155, %154 ], [ 0x47EFFFFFE0000000, %150 ]
  %161 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.i32 %161, 3
  %163 = icmp eq i32 %162, 0
  %164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.f32 %164, 2
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 2
  %168 = fsub fast float %165, %73
  %169 = fadd fast float %168, %167
  br i1 %163, label %177, label %170, !dx.controlflow.hints !43

; <label>:170                                     ; preds = %157
  %171 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %70, float %72, float %169)  ; Dot3(ax,ay,az,bx,by,bz)
  %172 = fmul fast float %141, %171
  %173 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %70, float %72, float %168)  ; Dot3(ax,ay,az,bx,by,bz)
  %174 = fmul fast float %141, %173
  %175 = call float @dx.op.binary.f32(i32 36, float %172, float %174)  ; FMin(a,b)
  %176 = call float @dx.op.binary.f32(i32 35, float %172, float %174)  ; FMax(a,b)
  br label %210

; <label>:177                                     ; preds = %157
  %178 = fdiv fast float 1.000000e+00, %114
  %179 = fdiv fast float 1.000000e+00, %115
  %180 = fdiv fast float 1.000000e+00, %116
  %181 = extractvalue %dx.types.CBufRet.f32 %164, 0
  %182 = extractvalue %dx.types.CBufRet.f32 %164, 1
  %183 = extractvalue %dx.types.CBufRet.f32 %166, 0
  %184 = extractvalue %dx.types.CBufRet.f32 %166, 1
  %185 = fsub fast float %181, %69
  %186 = fmul fast float %185, %178
  %187 = fadd fast float %185, %183
  %188 = fmul fast float %187, %178
  %189 = call float @dx.op.binary.f32(i32 36, float %186, float %188)  ; FMin(a,b)
  %190 = call float @dx.op.binary.f32(i32 35, float %186, float %188)  ; FMax(a,b)
  %191 = fsub fast float %182, %71
  %192 = fmul fast float %191, %179
  %193 = fadd fast float %191, %184
  %194 = fmul fast float %193, %179
  %195 = call float @dx.op.binary.f32(i32 36, float %192, float %194)  ; FMin(a,b)
  %196 = call float @dx.op.binary.f32(i32 35, float %189, float %195)  ; FMax(a,b)
  %197 = call float @dx.op.binary.f32(i32 35, float %192, float %194)  ; FMax(a,b)
  %198 = call float @dx.op.binary.f32(i32 36, float %190, float %197)  ; FMin(a,b)
  %199 = fmul fast float %168, %180
  %200 = fmul fast float %169, %180
  %201 = call float @dx.op.binary.f32(i32 36, float %199, float %200)  ; FMin(a,b)
  %202 = call float @dx.op.binary.f32(i32 35, float %196, float %201)  ; FMax(a,b)
  %203 = call float @dx.op.binary.f32(i32 35, float %199, float %200)  ; FMax(a,b)
  %204 = call float @dx.op.binary.f32(i32 36, float %198, float %203)  ; FMin(a,b)
  %205 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %202)  ; FMax(a,b)
  %206 = fcmp fast ult float %204, %205
  br i1 %206, label %210, label %207, !dx.controlflow.hints !44

; <label>:207                                     ; preds = %177
  %208 = call float @dx.op.binary.f32(i32 36, float %202, float %204)  ; FMin(a,b)
  %209 = call float @dx.op.binary.f32(i32 35, float %202, float %204)  ; FMax(a,b)
  br label %210

; <label>:210                                     ; preds = %207, %177, %170
  %211 = phi float [ %175, %170 ], [ %208, %207 ], [ 0.000000e+00, %177 ]
  %212 = phi float [ %176, %170 ], [ %209, %207 ], [ 0.000000e+00, %177 ]
  %213 = fcmp fast oeq float %212, 0.000000e+00
  br i1 %213, label %217, label %214, !dx.controlflow.hints !45

; <label>:214                                     ; preds = %210
  %215 = call float @dx.op.binary.f32(i32 36, float %160, float %211)  ; FMin(a,b)
  %216 = call float @dx.op.binary.f32(i32 35, float %159, float %212)  ; FMax(a,b)
  br label %217

; <label>:217                                     ; preds = %214, %210
  %218 = phi i32 [ 1, %214 ], [ 0, %210 ]
  %219 = phi float [ %216, %214 ], [ %159, %210 ]
  %220 = phi float [ %215, %214 ], [ %160, %210 ]
  %221 = call float @dx.op.binary.f32(i32 36, float %135, float %219)  ; FMin(a,b)
  %222 = call float @dx.op.binary.f32(i32 35, float %112, float %220)  ; FMax(a,b)
  %223 = extractvalue %dx.types.CBufRet.f32 %136, 0
  %224 = fmul fast float %58, 2.000000e+00
  %225 = fadd fast float %224, -1.000000e+00
  %226 = fmul fast float %223, %225
  %227 = fadd fast float %226, %222
  %228 = fcmp fast olt float %227, %221
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.f32 %229, 2
  %231 = fcmp fast olt float %230, 1.000000e+00
  %232 = and i1 %231, %228
  br i1 %232, label %233, label %1978

; <label>:233                                     ; preds = %217
  %234 = fmul fast float %227, %116
  %235 = fadd fast float %234, %73
  %236 = fmul fast float %227, %115
  %237 = fadd fast float %236, %71
  %238 = fmul fast float %227, %114
  %239 = fadd fast float %238, %69
  br label %240

; <label>:240                                     ; preds = %1954, %233
  %241 = phi float [ %1956, %1954 ], [ 0.000000e+00, %233 ]
  %242 = phi float [ %1957, %1954 ], [ 1.000000e+00, %233 ]
  %243 = phi float [ %1958, %1954 ], [ 0.000000e+00, %233 ]
  %244 = phi float [ %1959, %1954 ], [ 0.000000e+00, %233 ]
  %245 = phi float [ %1960, %1954 ], [ 0.000000e+00, %233 ]
  %246 = phi float [ %1970, %1954 ], [ %239, %233 ]
  %247 = phi float [ %1971, %1954 ], [ %237, %233 ]
  %248 = phi float [ %1972, %1954 ], [ %235, %233 ]
  %249 = phi float [ %1955, %1954 ], [ %227, %233 ]
  %250 = phi float [ %1961, %1954 ], [ 0.000000e+00, %233 ]
  %251 = phi float [ %1962, %1954 ], [ 0.000000e+00, %233 ]
  %252 = phi float [ %1963, %1954 ], [ 0.000000e+00, %233 ]
  %253 = phi float [ %1964, %1954 ], [ 0.000000e+00, %233 ]
  %254 = phi float [ %1965, %1954 ], [ 0.000000e+00, %233 ]
  %255 = phi i32 [ %1966, %1954 ], [ 0, %233 ]
  %256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %257 = extractvalue %dx.types.CBufRet.f32 %256, 0
  %258 = icmp eq i32 %158, 0
  br i1 %258, label %271, label %259, !dx.controlflow.hints !46

; <label>:259                                     ; preds = %240
  %260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %261 = extractvalue %dx.types.CBufRet.f32 %260, 3
  %262 = extractvalue %dx.types.CBufRet.f32 %260, 2
  %263 = fmul fast float %261, %249
  %264 = fdiv fast float %263, %221
  %265 = fadd fast float %264, 1.000000e+00
  %266 = call float @dx.op.unary.f32(i32 23, float %265)  ; Log(value)
  %267 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %266)  ; FMin(a,b)
  %268 = fmul fast float %262, %221
  %269 = fmul fast float %268, %267
  %270 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %269)  ; FMin(a,b)
  br label %271

; <label>:271                                     ; preds = %259, %240
  %272 = phi float [ %270, %259 ], [ 0x47EFFFFFE0000000, %240 ]
  %273 = icmp eq i32 %218, 0
  br i1 %273, label %330, label %274, !dx.controlflow.hints !47

; <label>:274                                     ; preds = %271
  %275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %276 = extractvalue %dx.types.CBufRet.f32 %275, 0
  %277 = extractvalue %dx.types.CBufRet.f32 %275, 1
  %278 = extractvalue %dx.types.CBufRet.f32 %275, 2
  %279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %280 = extractvalue %dx.types.CBufRet.f32 %279, 0
  %281 = extractvalue %dx.types.CBufRet.f32 %279, 1
  %282 = extractvalue %dx.types.CBufRet.f32 %279, 2
  %283 = fsub fast float %246, %280
  %284 = fsub fast float %247, %281
  %285 = fsub fast float %248, %282
  %286 = fmul fast float %283, %276
  %287 = fmul fast float %284, %277
  %288 = fmul fast float %285, %278
  %289 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %290 = extractvalue %dx.types.CBufRet.i32 %289, 3
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %295, label %292, !dx.controlflow.hints !48

; <label>:292                                     ; preds = %274
  %293 = call float @dx.op.unary.f32(i32 22, float %286)  ; Frc(value)
  %294 = call float @dx.op.unary.f32(i32 22, float %287)  ; Frc(value)
  br label %295

; <label>:295                                     ; preds = %292, %274
  %296 = phi float [ %293, %292 ], [ %286, %274 ]
  %297 = phi float [ %294, %292 ], [ %287, %274 ]
  %298 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %21, float %296, float %297, float %288, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %299 = extractvalue %dx.types.ResRet.f32 %298, 0
  %300 = fmul fast float %299, 2.000000e+00
  %301 = fadd fast float %300, -1.000000e+00
  %302 = extractvalue %dx.types.CBufRet.f32 %275, 3
  %303 = fmul fast float %301, %302
  %304 = fcmp fast olt float %303, 0.000000e+00
  %305 = fcmp fast oge float %288, 0.000000e+00
  %306 = fcmp fast ole float %288, 1.000000e+00
  br i1 %291, label %309, label %307, !dx.controlflow.hints !49

; <label>:307                                     ; preds = %295
  %308 = and i1 %305, %306
  br label %319

; <label>:309                                     ; preds = %295
  %310 = fcmp fast oge float %286, 0.000000e+00
  %311 = fcmp fast oge float %287, 0.000000e+00
  %312 = and i1 %310, %311
  %313 = and i1 %305, %312
  %314 = fcmp fast ole float %286, 1.000000e+00
  %315 = fcmp fast ole float %287, 1.000000e+00
  %316 = and i1 %314, %315
  %317 = and i1 %306, %316
  %318 = and i1 %313, %317
  br label %319

; <label>:319                                     ; preds = %309, %307
  %320 = phi i1 [ %308, %307 ], [ %318, %309 ]
  %321 = and i1 %304, %320
  %322 = call float @dx.op.unary.f32(i32 6, float %303)  ; FAbs(value)
  %323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %324 = extractvalue %dx.types.CBufRet.f32 %323, 1
  %325 = extractvalue %dx.types.CBufRet.f32 %323, 0
  %326 = call float @dx.op.binary.f32(i32 35, float %322, float %325)  ; FMax(a,b)
  %327 = select i1 %321, float %324, float %326
  %328 = zext i1 %321 to i32
  %329 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %327)  ; FMin(a,b)
  br label %330

; <label>:330                                     ; preds = %319, %271
  %331 = phi i32 [ %328, %319 ], [ 0, %271 ]
  %332 = phi float [ %329, %319 ], [ 0x47EFFFFFE0000000, %271 ]
  %333 = extractvalue %dx.types.CBufRet.f32 %256, 2
  %334 = fmul fast float %333, %249
  %335 = call float @dx.op.unary.f32(i32 23, float %334)  ; Log(value)
  %336 = fmul fast float %335, 0x3FE62E4300000000
  %337 = call float @dx.op.binary.f32(i32 35, float %336, float 1.000000e+00)  ; FMax(a,b)
  %338 = fmul fast float %337, %272
  %339 = call float @dx.op.binary.f32(i32 36, float %338, float %332)  ; FMin(a,b)
  %340 = call float @dx.op.binary.f32(i32 35, float %339, float %257)  ; FMax(a,b)
  %341 = fadd fast float %221, 0x3F1A36E2E0000000
  %342 = fsub fast float %341, %249
  %343 = call float @dx.op.binary.f32(i32 36, float %342, float %340)  ; FMin(a,b)
  br i1 %258, label %400, label %344, !dx.controlflow.hints !50

; <label>:344                                     ; preds = %330
  %345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %346 = extractvalue %dx.types.CBufRet.f32 %345, 0
  %347 = fsub fast float -0.000000e+00, %246
  %348 = fsub fast float -0.000000e+00, %247
  %349 = fsub fast float %346, %248
  %350 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %347, float %348, float %349)  ; Dot3(ax,ay,az,bx,by,bz)
  %351 = fmul fast float %141, %350
  %352 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %351)  ; FMax(a,b)
  %353 = fcmp fast olt float %116, 0.000000e+00
  %354 = call float @dx.op.binary.f32(i32 36, float %343, float %352)  ; FMin(a,b)
  br i1 %353, label %356, label %355, !dx.controlflow.hints !51

; <label>:355                                     ; preds = %344
  br label %356

; <label>:356                                     ; preds = %355, %344
  %357 = phi float [ 0.000000e+00, %355 ], [ %354, %344 ]
  %358 = phi float [ %354, %355 ], [ %343, %344 ]
  %359 = phi float [ %354, %355 ], [ 0.000000e+00, %344 ]
  %360 = phi float [ %343, %355 ], [ %354, %344 ]
  %361 = fsub fast float %358, %357
  %362 = extractvalue %dx.types.CBufRet.f32 %345, 1
  %363 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %362)  ; FMin(a,b)
  %364 = fsub fast float %248, %346
  %365 = fmul fast float %363, 0x3FF7154760000000
  %366 = fmul fast float %365, %364
  %367 = call float @dx.op.unary.f32(i32 21, float %366)  ; Exp(value)
  %368 = fmul fast float %116, 0x3FF7154760000000
  %369 = fmul fast float %368, %360
  %370 = fmul fast float %369, %363
  %371 = call float @dx.op.unary.f32(i32 21, float %370)  ; Exp(value)
  %372 = fmul fast float %368, %359
  %373 = fmul fast float %372, %363
  %374 = call float @dx.op.unary.f32(i32 21, float %373)  ; Exp(value)
  %375 = fsub fast float %371, %374
  %376 = fmul fast float %375, %367
  %377 = fmul fast float %363, %116
  %378 = fdiv fast float %376, %377
  %379 = fadd fast float %361, %378
  %380 = call float @dx.op.unary.f32(i32 6, float %116)  ; FAbs(value)
  %381 = fcmp fast olt float %380, 0x3F0FFB4800000000
  %382 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %364)  ; FMax(a,b)
  %383 = fmul fast float %382, 0x3FF7154760000000
  %384 = fmul fast float %383, %362
  %385 = call float @dx.op.unary.f32(i32 21, float %384)  ; Exp(value)
  %386 = fmul fast float %385, %343
  %387 = select i1 %381, float %386, float %379
  %388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %389 = extractvalue %dx.types.CBufRet.f32 %388, 1
  %390 = fmul fast float %387, %389
  %391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %392 = extractvalue %dx.types.CBufRet.f32 %391, 0
  %393 = extractvalue %dx.types.CBufRet.f32 %391, 1
  %394 = extractvalue %dx.types.CBufRet.f32 %391, 2
  %395 = extractvalue %dx.types.CBufRet.f32 %388, 2
  %396 = fmul fast float %392, %390
  %397 = fmul fast float %393, %390
  %398 = fmul fast float %394, %390
  %399 = fmul fast float %395, %390
  br label %400

; <label>:400                                     ; preds = %356, %330
  %401 = phi float [ %390, %356 ], [ 0.000000e+00, %330 ]
  %402 = phi float [ %399, %356 ], [ 0.000000e+00, %330 ]
  %403 = phi float [ %396, %356 ], [ 0.000000e+00, %330 ]
  %404 = phi float [ %397, %356 ], [ 0.000000e+00, %330 ]
  %405 = phi float [ %398, %356 ], [ 0.000000e+00, %330 ]
  %406 = icmp eq i32 %331, 0
  br i1 %406, label %601, label %407, !dx.controlflow.hints !52

; <label>:407                                     ; preds = %400
  %408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %409 = extractvalue %dx.types.CBufRet.f32 %408, 3
  %410 = fmul fast float %409, %249
  %411 = fcmp fast oeq float %410, 0.000000e+00
  br i1 %411, label %426, label %412, !dx.controlflow.hints !53

; <label>:412                                     ; preds = %407
  %413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %414 = extractvalue %dx.types.CBufRet.f32 %413, 3
  %415 = fmul fast float %414, %410
  %416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %417 = extractvalue %dx.types.CBufRet.f32 %416, 0
  %418 = extractvalue %dx.types.CBufRet.f32 %416, 1
  %419 = extractvalue %dx.types.CBufRet.f32 %416, 2
  %420 = fmul fast float %417, %415
  %421 = fmul fast float %418, %415
  %422 = fmul fast float %419, %415
  %423 = call float @dx.op.unary.f32(i32 23, float %420)  ; Log(value)
  %424 = call float @dx.op.unary.f32(i32 23, float %421)  ; Log(value)
  %425 = call float @dx.op.unary.f32(i32 23, float %422)  ; Log(value)
  br label %426

; <label>:426                                     ; preds = %412, %407
  %427 = phi float [ %423, %412 ], [ 0.000000e+00, %407 ]
  %428 = phi float [ %424, %412 ], [ 0.000000e+00, %407 ]
  %429 = phi float [ %425, %412 ], [ 0.000000e+00, %407 ]
  %430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %431 = extractvalue %dx.types.CBufRet.f32 %430, 0
  %432 = extractvalue %dx.types.CBufRet.f32 %430, 1
  %433 = extractvalue %dx.types.CBufRet.f32 %430, 2
  %434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %435 = extractvalue %dx.types.CBufRet.f32 %434, 0
  %436 = extractvalue %dx.types.CBufRet.f32 %434, 1
  %437 = extractvalue %dx.types.CBufRet.f32 %434, 2
  %438 = fsub fast float %246, %435
  %439 = fsub fast float %247, %436
  %440 = fsub fast float %248, %437
  %441 = fmul fast float %438, %431
  %442 = fmul fast float %439, %432
  %443 = fmul fast float %440, %433
  %444 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %445 = extractvalue %dx.types.CBufRet.i32 %444, 0
  %446 = extractvalue %dx.types.CBufRet.i32 %444, 1
  %447 = uitofp i32 %445 to float
  %448 = uitofp i32 %446 to float
  %449 = fmul fast float %441, %447
  %450 = fmul fast float %442, %448
  %451 = fadd fast float %449, 5.000000e-01
  %452 = fadd fast float %450, 5.000000e-01
  %453 = call float @dx.op.unary.f32(i32 22, float %451)  ; Frc(value)
  %454 = call float @dx.op.unary.f32(i32 22, float %452)  ; Frc(value)
  %455 = call float @dx.op.unary.f32(i32 27, float %451)  ; Round_ni(value)
  %456 = call float @dx.op.unary.f32(i32 27, float %452)  ; Round_ni(value)
  %457 = fadd fast float %455, 1.000000e+00
  %458 = fadd fast float %456, 1.000000e+00
  %459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %460 = extractvalue %dx.types.CBufRet.f32 %459, 0
  %461 = extractvalue %dx.types.CBufRet.f32 %459, 1
  %462 = fmul fast float %460, %457
  %463 = fmul fast float %461, %458
  %464 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %22, float %462, float %463, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %465 = extractvalue %dx.types.ResRet.f32 %464, 0
  %466 = extractvalue %dx.types.ResRet.f32 %464, 1
  %467 = extractvalue %dx.types.ResRet.f32 %464, 2
  %468 = extractvalue %dx.types.ResRet.f32 %464, 3
  %469 = extractvalue %dx.types.CBufRet.i32 %444, 2
  %470 = extractvalue %dx.types.CBufRet.f32 %459, 2
  %471 = uitofp i32 %469 to float
  %472 = fadd fast float %471, -1.000000e+00
  %473 = fmul fast float %472, %465
  %474 = fmul fast float %472, %466
  %475 = fmul fast float %472, %467
  %476 = fmul fast float %472, %468
  %477 = fadd fast float %473, 5.000000e-01
  %478 = fadd fast float %474, 5.000000e-01
  %479 = fadd fast float %475, 5.000000e-01
  %480 = fadd fast float %476, 5.000000e-01
  %481 = fptoui float %477 to i32
  %482 = fptoui float %478 to i32
  %483 = fptoui float %479 to i32
  %484 = fptoui float %480 to i32
  %485 = uitofp i32 %481 to float
  %486 = uitofp i32 %482 to float
  %487 = uitofp i32 %483 to float
  %488 = uitofp i32 %484 to float
  %489 = fadd fast float %485, 5.000000e-01
  %490 = fadd fast float %486, 5.000000e-01
  %491 = fadd fast float %487, 5.000000e-01
  %492 = fadd fast float %488, 5.000000e-01
  %493 = fmul fast float %489, %470
  %494 = fmul fast float %490, %470
  %495 = fmul fast float %491, %470
  %496 = fmul fast float %492, %470
  %497 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %23, float %493, float %443, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %498 = extractvalue %dx.types.ResRet.f32 %497, 0
  %499 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %23, float %494, float %443, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %500 = extractvalue %dx.types.ResRet.f32 %499, 0
  %501 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %23, float %495, float %443, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %502 = extractvalue %dx.types.ResRet.f32 %501, 0
  %503 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %23, float %496, float %443, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %504 = extractvalue %dx.types.ResRet.f32 %503, 0
  %505 = fsub fast float %502, %504
  %506 = fmul fast float %505, %453
  %507 = fadd fast float %506, %504
  %508 = fsub fast float %500, %498
  %509 = fmul fast float %508, %453
  %510 = fadd fast float %509, %498
  %511 = fsub fast float %510, %507
  %512 = fmul fast float %511, %454
  %513 = fadd fast float %512, %507
  %514 = fcmp fast ogt float %513, 0.000000e+00
  br i1 %514, label %515, label %583, !dx.controlflow.hints !54

; <label>:515                                     ; preds = %426
  %516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %517 = extractvalue %dx.types.CBufRet.f32 %516, 0
  %518 = extractvalue %dx.types.CBufRet.f32 %516, 1
  %519 = extractvalue %dx.types.CBufRet.f32 %516, 2
  %520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %521 = extractvalue %dx.types.CBufRet.f32 %520, 0
  %522 = extractvalue %dx.types.CBufRet.f32 %520, 1
  %523 = extractvalue %dx.types.CBufRet.f32 %520, 2
  %524 = fmul fast float %439, %431
  %525 = fmul fast float %440, %431
  %526 = fadd fast float %441, %521
  %527 = fadd fast float %524, %522
  %528 = fadd fast float %525, %523
  %529 = fmul fast float %526, %517
  %530 = fmul fast float %527, %517
  %531 = fmul fast float %528, %517
  %532 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %20, float %529, float %530, float %531, float undef, i32 0, i32 0, i32 0, float %427)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %533 = extractvalue %dx.types.ResRet.f32 %532, 0
  %534 = fmul fast float %526, %518
  %535 = fmul fast float %527, %518
  %536 = fmul fast float %528, %518
  %537 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %20, float %534, float %535, float %536, float undef, i32 0, i32 0, i32 0, float %428)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %538 = extractvalue %dx.types.ResRet.f32 %537, 1
  %539 = fmul fast float %526, %519
  %540 = fmul fast float %527, %519
  %541 = fmul fast float %528, %519
  %542 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %20, float %539, float %540, float %541, float undef, i32 0, i32 0, i32 0, float %429)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %543 = extractvalue %dx.types.ResRet.f32 %542, 2
  %544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %545 = extractvalue %dx.types.CBufRet.f32 %544, 1
  %546 = fmul fast float %538, %533
  %547 = fmul fast float %546, %543
  %548 = call float @dx.op.unary.f32(i32 23, float %547)  ; Log(value)
  %549 = fmul fast float %548, %545
  %550 = call float @dx.op.unary.f32(i32 21, float %549)  ; Exp(value)
  %551 = extractvalue %dx.types.CBufRet.f32 %544, 2
  %552 = fmul fast float %513, %513
  %553 = fmul fast float %552, %550
  %554 = fmul fast float %553, %551
  %555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %556 = extractvalue %dx.types.CBufRet.f32 %555, 3
  %557 = fmul fast float %556, %554
  %558 = bitcast float %557 to i32
  %559 = sitofp i32 %558 to float
  %560 = fptosi float %559 to i32
  %561 = bitcast i32 %560 to float
  %562 = fsub fast float 1.000000e+00, %554
  %563 = bitcast float %562 to i32
  %564 = sitofp i32 %563 to float
  %565 = fptosi float %564 to i32
  %566 = bitcast i32 %565 to float
  %567 = fadd fast float %561, %566
  %568 = bitcast float %567 to i32
  %569 = sub nsw i32 2129859010, %568
  %570 = bitcast i32 %569 to float
  %571 = fmul fast float %570, %561
  %572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %573 = extractvalue %dx.types.CBufRet.f32 %572, 2
  %574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %575 = extractvalue %dx.types.CBufRet.f32 %574, 0
  %576 = fmul fast float %571, %575
  %577 = fadd fast float %576, 1.000000e+00
  %578 = bitcast float %577 to i32
  %579 = sub nsw i32 2129859010, %578
  %580 = bitcast i32 %579 to float
  %581 = fmul fast float %571, %573
  %582 = fmul fast float %581, %580
  br label %583

; <label>:583                                     ; preds = %515, %426
  %584 = phi float [ %582, %515 ], [ %513, %426 ]
  %585 = fmul fast float %584, %343
  %586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %587 = extractvalue %dx.types.CBufRet.f32 %586, 0
  %588 = extractvalue %dx.types.CBufRet.f32 %586, 1
  %589 = extractvalue %dx.types.CBufRet.f32 %586, 2
  %590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %591 = extractvalue %dx.types.CBufRet.f32 %590, 1
  %592 = fmul fast float %587, %585
  %593 = fmul fast float %588, %585
  %594 = fmul fast float %589, %585
  %595 = fadd fast float %592, %403
  %596 = fadd fast float %593, %404
  %597 = fadd fast float %594, %405
  %598 = fmul fast float %591, %585
  %599 = fadd fast float %598, %402
  %600 = fadd fast float %585, %401
  br label %601

; <label>:601                                     ; preds = %583, %400
  %602 = phi float [ %600, %583 ], [ %401, %400 ]
  %603 = phi float [ %599, %583 ], [ %402, %400 ]
  %604 = phi float [ %595, %583 ], [ %403, %400 ]
  %605 = phi float [ %596, %583 ], [ %404, %400 ]
  %606 = phi float [ %597, %583 ], [ %405, %400 ]
  %607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %608 = extractvalue %dx.types.CBufRet.f32 %607, 1
  %609 = fcmp fast ogt float %602, %608
  br i1 %609, label %610, label %616, !dx.controlflow.hints !55

; <label>:610                                     ; preds = %601
  %611 = fdiv fast float 1.000000e+00, %602
  %612 = fmul fast float %611, %604
  %613 = fmul fast float %611, %605
  %614 = fmul fast float %611, %606
  %615 = fmul fast float %611, %603
  br label %616

; <label>:616                                     ; preds = %610, %601
  %617 = phi float [ %615, %610 ], [ %603, %601 ]
  %618 = phi float [ %612, %610 ], [ %604, %601 ]
  %619 = phi float [ %613, %610 ], [ %605, %601 ]
  %620 = phi float [ %614, %610 ], [ %606, %601 ]
  br i1 %609, label %623, label %621, !dx.controlflow.hints !56

; <label>:621                                     ; preds = %616
  %622 = fadd fast float %343, %249
  br label %1954

; <label>:623                                     ; preds = %616
  %624 = fmul fast float %602, 0xBFF7154760000000
  %625 = call float @dx.op.unary.f32(i32 21, float %624)  ; Exp(value)
  %626 = call float @dx.op.unary.f32(i32 7, float %625)  ; Saturate(value)
  %627 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %628 = extractvalue %dx.types.CBufRet.i32 %627, 0
  %629 = icmp eq i32 %628, 1
  br i1 %629, label %630, label %665, !dx.controlflow.hints !57

; <label>:630                                     ; preds = %623
  %631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %632 = extractvalue %dx.types.CBufRet.f32 %631, 0
  %633 = extractvalue %dx.types.CBufRet.f32 %631, 1
  %634 = fsub fast float %246, %632
  %635 = fsub fast float %247, %633
  %636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %637 = extractvalue %dx.types.CBufRet.f32 %636, 0
  %638 = extractvalue %dx.types.CBufRet.f32 %636, 1
  %639 = fmul fast float %634, %637
  %640 = fmul fast float %635, %638
  %641 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %23, float %639, float %640, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %642 = extractvalue %dx.types.ResRet.f32 %641, 0
  %643 = fcmp fast ogt float %642, 0.000000e+00
  %644 = extractvalue %dx.types.CBufRet.i32 %627, 3
  %645 = icmp ne i32 %644, 0
  %646 = and i1 %643, %645
  br i1 %646, label %647, label %665, !dx.controlflow.hints !58

; <label>:647                                     ; preds = %630
  %648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %649 = extractvalue %dx.types.CBufRet.f32 %648, 0
  %650 = extractvalue %dx.types.CBufRet.f32 %648, 1
  %651 = fsub fast float %246, %649
  %652 = fsub fast float %247, %650
  %653 = fmul fast float %651, %651
  %654 = fmul fast float %652, %652
  %655 = fadd fast float %653, %654
  %656 = uitofp i32 %644 to float
  %657 = fmul fast float %656, %656
  %658 = fcmp fast ogt float %655, %657
  br i1 %658, label %665, label %659, !dx.controlflow.hints !59

; <label>:659                                     ; preds = %647
  %660 = call float @dx.op.unary.f32(i32 24, float %655)  ; Sqrt(value)
  %661 = fsub fast float %656, %660
  %662 = fmul fast float %661, 0x3F75555560000000
  %663 = call float @dx.op.unary.f32(i32 7, float %662)  ; Saturate(value)
  %664 = call float @dx.op.binary.f32(i32 36, float %663, float %642)  ; FMin(a,b)
  br label %665

; <label>:665                                     ; preds = %659, %647, %630, %623
  %666 = phi float [ 1.000000e+00, %623 ], [ %664, %659 ], [ %642, %630 ], [ 0.000000e+00, %647 ]
  %667 = fcmp fast ogt float %666, 0.000000e+00
  br i1 %667, label %668, label %741, !dx.controlflow.hints !60

; <label>:668                                     ; preds = %665
  %669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %670 = extractvalue %dx.types.ResRet.i32 %669, 0
  %671 = extractvalue %dx.types.ResRet.i32 %669, 1
  %672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %673 = extractvalue %dx.types.ResRet.i32 %672, 0
  %674 = extractvalue %dx.types.ResRet.i32 %672, 1
  %675 = extractvalue %dx.types.ResRet.i32 %672, 2
  %676 = extractvalue %dx.types.ResRet.i32 %672, 3
  %677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %678 = extractvalue %dx.types.ResRet.i32 %677, 0
  %679 = extractvalue %dx.types.ResRet.i32 %677, 1
  %680 = extractvalue %dx.types.ResRet.i32 %677, 2
  %681 = extractvalue %dx.types.ResRet.i32 %677, 3
  %682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %683 = extractvalue %dx.types.ResRet.i32 %682, 0
  %684 = extractvalue %dx.types.ResRet.i32 %682, 1
  %685 = extractvalue %dx.types.ResRet.i32 %682, 2
  %686 = extractvalue %dx.types.ResRet.i32 %682, 3
  %687 = and i32 %683, 65535
  %688 = call float @dx.op.legacyF16ToF32(i32 131, i32 %687)  ; LegacyF16ToF32(value)
  %689 = lshr i32 %683, 16
  %690 = call float @dx.op.legacyF16ToF32(i32 131, i32 %689)  ; LegacyF16ToF32(value)
  %691 = and i32 %684, 65535
  %692 = call float @dx.op.legacyF16ToF32(i32 131, i32 %691)  ; LegacyF16ToF32(value)
  %693 = lshr i32 %684, 16
  %694 = call float @dx.op.legacyF16ToF32(i32 131, i32 %693)  ; LegacyF16ToF32(value)
  %695 = and i32 %685, 65535
  %696 = call float @dx.op.legacyF16ToF32(i32 131, i32 %695)  ; LegacyF16ToF32(value)
  %697 = lshr i32 %685, 16
  %698 = call float @dx.op.legacyF16ToF32(i32 131, i32 %697)  ; LegacyF16ToF32(value)
  %699 = and i32 %686, 65535
  %700 = call float @dx.op.legacyF16ToF32(i32 131, i32 %699)  ; LegacyF16ToF32(value)
  %701 = lshr i32 %686, 16
  %702 = call float @dx.op.legacyF16ToF32(i32 131, i32 %701)  ; LegacyF16ToF32(value)
  %703 = and i32 %678, 65535
  %704 = call float @dx.op.legacyF16ToF32(i32 131, i32 %703)  ; LegacyF16ToF32(value)
  %705 = lshr i32 %678, 16
  %706 = call float @dx.op.legacyF16ToF32(i32 131, i32 %705)  ; LegacyF16ToF32(value)
  %707 = and i32 %679, 65535
  %708 = call float @dx.op.legacyF16ToF32(i32 131, i32 %707)  ; LegacyF16ToF32(value)
  %709 = lshr i32 %679, 16
  %710 = call float @dx.op.legacyF16ToF32(i32 131, i32 %709)  ; LegacyF16ToF32(value)
  %711 = and i32 %680, 65535
  %712 = call float @dx.op.legacyF16ToF32(i32 131, i32 %711)  ; LegacyF16ToF32(value)
  %713 = lshr i32 %680, 16
  %714 = call float @dx.op.legacyF16ToF32(i32 131, i32 %713)  ; LegacyF16ToF32(value)
  %715 = and i32 %681, 65535
  %716 = call float @dx.op.legacyF16ToF32(i32 131, i32 %715)  ; LegacyF16ToF32(value)
  %717 = lshr i32 %681, 16
  %718 = call float @dx.op.legacyF16ToF32(i32 131, i32 %717)  ; LegacyF16ToF32(value)
  %719 = and i32 %673, 65535
  %720 = call float @dx.op.legacyF16ToF32(i32 131, i32 %719)  ; LegacyF16ToF32(value)
  %721 = lshr i32 %673, 16
  %722 = call float @dx.op.legacyF16ToF32(i32 131, i32 %721)  ; LegacyF16ToF32(value)
  %723 = and i32 %674, 65535
  %724 = call float @dx.op.legacyF16ToF32(i32 131, i32 %723)  ; LegacyF16ToF32(value)
  %725 = lshr i32 %674, 16
  %726 = call float @dx.op.legacyF16ToF32(i32 131, i32 %725)  ; LegacyF16ToF32(value)
  %727 = and i32 %675, 65535
  %728 = call float @dx.op.legacyF16ToF32(i32 131, i32 %727)  ; LegacyF16ToF32(value)
  %729 = lshr i32 %675, 16
  %730 = call float @dx.op.legacyF16ToF32(i32 131, i32 %729)  ; LegacyF16ToF32(value)
  %731 = and i32 %676, 65535
  %732 = call float @dx.op.legacyF16ToF32(i32 131, i32 %731)  ; LegacyF16ToF32(value)
  %733 = lshr i32 %676, 16
  %734 = call float @dx.op.legacyF16ToF32(i32 131, i32 %733)  ; LegacyF16ToF32(value)
  %735 = and i32 %670, 65535
  %736 = call float @dx.op.legacyF16ToF32(i32 131, i32 %735)  ; LegacyF16ToF32(value)
  %737 = lshr i32 %670, 16
  %738 = call float @dx.op.legacyF16ToF32(i32 131, i32 %737)  ; LegacyF16ToF32(value)
  %739 = and i32 %671, 65535
  %740 = call float @dx.op.legacyF16ToF32(i32 131, i32 %739)  ; LegacyF16ToF32(value)
  br label %741

; <label>:741                                     ; preds = %668, %665
  %742 = phi float [ %740, %668 ], [ 0.000000e+00, %665 ]
  %743 = phi float [ %738, %668 ], [ 0.000000e+00, %665 ]
  %744 = phi float [ %736, %668 ], [ 0.000000e+00, %665 ]
  %745 = phi float [ %734, %668 ], [ 0.000000e+00, %665 ]
  %746 = phi float [ %732, %668 ], [ 0.000000e+00, %665 ]
  %747 = phi float [ %730, %668 ], [ 0.000000e+00, %665 ]
  %748 = phi float [ %728, %668 ], [ 0.000000e+00, %665 ]
  %749 = phi float [ %726, %668 ], [ 0.000000e+00, %665 ]
  %750 = phi float [ %724, %668 ], [ 0.000000e+00, %665 ]
  %751 = phi float [ %722, %668 ], [ 0.000000e+00, %665 ]
  %752 = phi float [ %720, %668 ], [ 0.000000e+00, %665 ]
  %753 = phi float [ %718, %668 ], [ 0.000000e+00, %665 ]
  %754 = phi float [ %716, %668 ], [ 0.000000e+00, %665 ]
  %755 = phi float [ %714, %668 ], [ 0.000000e+00, %665 ]
  %756 = phi float [ %712, %668 ], [ 0.000000e+00, %665 ]
  %757 = phi float [ %710, %668 ], [ 0.000000e+00, %665 ]
  %758 = phi float [ %708, %668 ], [ 0.000000e+00, %665 ]
  %759 = phi float [ %706, %668 ], [ 0.000000e+00, %665 ]
  %760 = phi float [ %704, %668 ], [ 0.000000e+00, %665 ]
  %761 = phi float [ %702, %668 ], [ 0.000000e+00, %665 ]
  %762 = phi float [ %700, %668 ], [ 0.000000e+00, %665 ]
  %763 = phi float [ %698, %668 ], [ 0.000000e+00, %665 ]
  %764 = phi float [ %696, %668 ], [ 0.000000e+00, %665 ]
  %765 = phi float [ %694, %668 ], [ 0.000000e+00, %665 ]
  %766 = phi float [ %692, %668 ], [ 0.000000e+00, %665 ]
  %767 = phi float [ %690, %668 ], [ 0.000000e+00, %665 ]
  %768 = phi float [ %688, %668 ], [ 0.000000e+00, %665 ]
  %769 = fcmp fast olt float %666, 1.000000e+00
  br i1 %769, label %770, label %1430, !dx.controlflow.hints !61

; <label>:770                                     ; preds = %741
  %771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %772 = extractvalue %dx.types.CBufRet.f32 %771, 0
  %773 = extractvalue %dx.types.CBufRet.f32 %771, 1
  %774 = fsub fast float %246, %772
  %775 = fsub fast float %247, %773
  %776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %777 = extractvalue %dx.types.CBufRet.f32 %776, 0
  %778 = extractvalue %dx.types.CBufRet.f32 %776, 1
  %779 = fmul fast float %774, %777
  %780 = fmul fast float %775, %778
  %781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %782 = extractvalue %dx.types.CBufRet.f32 %781, 0
  %783 = fmul fast float %782, %779
  %784 = extractvalue %dx.types.CBufRet.f32 %781, 1
  %785 = fadd fast float %783, %784
  %786 = extractvalue %dx.types.CBufRet.f32 %781, 2
  %787 = fmul fast float %786, %780
  %788 = extractvalue %dx.types.CBufRet.f32 %781, 3
  %789 = fadd fast float %787, %788
  %790 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %23, float %785, float %789, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %791 = extractvalue %dx.types.ResRet.f32 %790, 0
  %792 = extractvalue %dx.types.ResRet.f32 %790, 1
  %793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %794 = extractvalue %dx.types.CBufRet.f32 %793, 1
  %795 = extractvalue %dx.types.CBufRet.f32 %793, 0
  %796 = fsub fast float %794, %795
  %797 = fmul fast float %796, %791
  %798 = fadd fast float %797, %795
  %799 = extractvalue %dx.types.CBufRet.f32 %793, 3
  %800 = extractvalue %dx.types.CBufRet.f32 %793, 2
  %801 = fsub fast float %799, %800
  %802 = fmul fast float %801, %792
  %803 = fadd fast float %802, %800
  %804 = fsub fast float %248, %798
  %805 = fsub fast float %803, %798
  %806 = fdiv fast float %804, %805
  %807 = call float @dx.op.unary.f32(i32 7, float %806)  ; Saturate(value)
  %808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %809 = extractvalue %dx.types.CBufRet.f32 %808, 0
  %810 = fmul fast float %809, %807
  %811 = extractvalue %dx.types.CBufRet.f32 %808, 1
  %812 = fadd fast float %810, %811
  %813 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %23, float %785, float %789, float %812, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %814 = extractvalue %dx.types.ResRet.f32 %813, 0
  %815 = extractvalue %dx.types.ResRet.f32 %813, 1
  %816 = extractvalue %dx.types.ResRet.f32 %813, 2
  %817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %818 = extractvalue %dx.types.CBufRet.f32 %817, 0
  %819 = extractvalue %dx.types.CBufRet.f32 %817, 1
  %820 = extractvalue %dx.types.CBufRet.f32 %817, 2
  %821 = fmul fast float %818, %814
  %822 = fmul fast float %819, %815
  %823 = fmul fast float %820, %816
  %824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %825 = extractvalue %dx.types.CBufRet.f32 %824, 0
  %826 = extractvalue %dx.types.CBufRet.f32 %824, 1
  %827 = extractvalue %dx.types.CBufRet.f32 %824, 2
  %828 = fadd fast float %821, %825
  %829 = fadd fast float %822, %826
  %830 = fadd fast float %823, %827
  %831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %832 = extractvalue %dx.types.CBufRet.f32 %831, 0
  %833 = fmul fast float %832, %779
  %834 = extractvalue %dx.types.CBufRet.f32 %831, 1
  %835 = fadd fast float %833, %834
  %836 = extractvalue %dx.types.CBufRet.f32 %831, 2
  %837 = fmul fast float %836, %780
  %838 = extractvalue %dx.types.CBufRet.f32 %831, 3
  %839 = fadd fast float %837, %838
  %840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %841 = extractvalue %dx.types.CBufRet.f32 %840, 0
  %842 = extractvalue %dx.types.CBufRet.f32 %840, 1
  %843 = extractvalue %dx.types.CBufRet.f32 %840, 2
  %844 = extractvalue %dx.types.CBufRet.f32 %840, 3
  %845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %846 = extractvalue %dx.types.CBufRet.f32 %845, 0
  %847 = extractvalue %dx.types.CBufRet.f32 %845, 1
  %848 = extractvalue %dx.types.CBufRet.f32 %845, 2
  %849 = extractvalue %dx.types.CBufRet.f32 %845, 3
  %850 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %23, float %835, float %839, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %851 = extractvalue %dx.types.ResRet.f32 %850, 0
  %852 = extractvalue %dx.types.ResRet.f32 %850, 1
  %853 = extractvalue %dx.types.ResRet.f32 %850, 2
  %854 = extractvalue %dx.types.ResRet.f32 %850, 3
  %855 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %23, float %835, float %839, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %856 = extractvalue %dx.types.ResRet.f32 %855, 0
  %857 = extractvalue %dx.types.ResRet.f32 %855, 1
  %858 = extractvalue %dx.types.ResRet.f32 %855, 2
  %859 = extractvalue %dx.types.ResRet.f32 %855, 3
  %860 = fmul fast float %851, %828
  %861 = fmul fast float %856, %828
  %862 = fmul fast float %858, %828
  %863 = fmul fast float %854, %828
  %864 = fadd fast float %860, %841
  %865 = fadd fast float %861, %842
  %866 = fadd fast float %862, %843
  %867 = fadd fast float %863, %844
  %868 = fmul fast float %852, %828
  %869 = fmul fast float %857, %828
  %870 = fadd fast float %868, %846
  %871 = fadd fast float %869, %847
  %872 = fmul fast float %853, %828
  %873 = fmul fast float %859, %828
  %874 = fadd fast float %872, %848
  %875 = fadd fast float %873, %849
  %876 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %23, float %835, float %839, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %877 = extractvalue %dx.types.ResRet.f32 %876, 0
  %878 = extractvalue %dx.types.ResRet.f32 %876, 1
  %879 = extractvalue %dx.types.ResRet.f32 %876, 2
  %880 = extractvalue %dx.types.ResRet.f32 %876, 3
  %881 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %23, float %835, float %839, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %882 = extractvalue %dx.types.ResRet.f32 %881, 0
  %883 = extractvalue %dx.types.ResRet.f32 %881, 1
  %884 = extractvalue %dx.types.ResRet.f32 %881, 2
  %885 = extractvalue %dx.types.ResRet.f32 %881, 3
  %886 = fmul fast float %877, %829
  %887 = fmul fast float %882, %829
  %888 = fmul fast float %884, %829
  %889 = fmul fast float %880, %829
  %890 = fadd fast float %864, %886
  %891 = fadd fast float %865, %887
  %892 = fadd fast float %866, %888
  %893 = fadd fast float %867, %889
  %894 = fmul fast float %878, %829
  %895 = fmul fast float %883, %829
  %896 = fadd fast float %870, %894
  %897 = fadd fast float %871, %895
  %898 = fmul fast float %879, %829
  %899 = fmul fast float %885, %829
  %900 = fadd fast float %874, %898
  %901 = fadd fast float %875, %899
  %902 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %23, float %835, float %839, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %903 = extractvalue %dx.types.ResRet.f32 %902, 0
  %904 = extractvalue %dx.types.ResRet.f32 %902, 1
  %905 = extractvalue %dx.types.ResRet.f32 %902, 2
  %906 = extractvalue %dx.types.ResRet.f32 %902, 3
  %907 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %23, float %835, float %839, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %908 = extractvalue %dx.types.ResRet.f32 %907, 0
  %909 = extractvalue %dx.types.ResRet.f32 %907, 1
  %910 = extractvalue %dx.types.ResRet.f32 %907, 2
  %911 = extractvalue %dx.types.ResRet.f32 %907, 3
  %912 = fmul fast float %903, %830
  %913 = fmul fast float %908, %830
  %914 = fmul fast float %910, %830
  %915 = fmul fast float %906, %830
  %916 = fadd fast float %890, %912
  %917 = fadd fast float %891, %913
  %918 = fadd fast float %892, %914
  %919 = fadd fast float %893, %915
  %920 = fmul fast float %904, %830
  %921 = fmul fast float %909, %830
  %922 = fadd fast float %896, %920
  %923 = fadd fast float %897, %921
  %924 = fmul fast float %905, %830
  %925 = fmul fast float %911, %830
  %926 = fadd fast float %900, %924
  %927 = fadd fast float %901, %925
  %928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %929 = extractvalue %dx.types.CBufRet.f32 %928, 0
  %930 = fsub fast float %246, %929
  %931 = fsub fast float %772, %246
  %932 = call float @dx.op.binary.f32(i32 35, float %931, float %930)  ; FMax(a,b)
  %933 = extractvalue %dx.types.CBufRet.f32 %928, 1
  %934 = fsub fast float %247, %933
  %935 = fsub fast float %773, %247
  %936 = call float @dx.op.binary.f32(i32 35, float %935, float %934)  ; FMax(a,b)
  %937 = call float @dx.op.binary.f32(i32 35, float %932, float %936)  ; FMax(a,b)
  %938 = extractvalue %dx.types.CBufRet.f32 %776, 3
  %939 = fmul fast float %938, %937
  %940 = call float @dx.op.unary.f32(i32 7, float %939)  ; Saturate(value)
  %941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %942 = extractvalue %dx.types.CBufRet.f32 %941, 0
  %943 = extractvalue %dx.types.CBufRet.f32 %941, 1
  %944 = extractvalue %dx.types.CBufRet.f32 %941, 2
  %945 = extractvalue %dx.types.CBufRet.f32 %941, 3
  %946 = fsub fast float %942, %916
  %947 = fsub fast float %943, %917
  %948 = fsub fast float %944, %918
  %949 = fsub fast float %945, %919
  %950 = fmul fast float %946, %940
  %951 = fmul fast float %947, %940
  %952 = fmul fast float %948, %940
  %953 = fmul fast float %949, %940
  %954 = fadd fast float %950, %916
  %955 = fadd fast float %951, %917
  %956 = fadd fast float %952, %918
  %957 = fadd fast float %953, %919
  %958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %959 = extractvalue %dx.types.CBufRet.f32 %958, 0
  %960 = extractvalue %dx.types.CBufRet.f32 %958, 1
  %961 = fsub fast float %959, %922
  %962 = fsub fast float %960, %923
  %963 = fmul fast float %961, %940
  %964 = fmul fast float %962, %940
  %965 = fadd fast float %963, %922
  %966 = fadd fast float %964, %923
  %967 = extractvalue %dx.types.CBufRet.f32 %958, 2
  %968 = extractvalue %dx.types.CBufRet.f32 %958, 3
  %969 = fsub fast float %967, %926
  %970 = fsub fast float %968, %927
  %971 = fmul fast float %969, %940
  %972 = fmul fast float %970, %940
  %973 = fadd fast float %971, %926
  %974 = fadd fast float %972, %927
  %975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %976 = extractvalue %dx.types.CBufRet.f32 %975, 0
  %977 = fmul fast float %976, %954
  %978 = fmul fast float %976, %955
  %979 = fmul fast float %976, %956
  %980 = fmul fast float %976, %957
  %981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %982 = extractvalue %dx.types.CBufRet.f32 %981, 0
  %983 = fmul fast float %982, %965
  %984 = fmul fast float %982, %966
  %985 = fadd fast float %983, %977
  %986 = fadd fast float %984, %979
  %987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %988 = extractvalue %dx.types.CBufRet.f32 %987, 0
  %989 = fmul fast float %988, %973
  %990 = fmul fast float %988, %974
  %991 = fadd fast float %985, %989
  %992 = fadd fast float %986, %990
  %993 = extractvalue %dx.types.CBufRet.f32 %975, 1
  %994 = fmul fast float %993, %954
  %995 = fmul fast float %993, %955
  %996 = fmul fast float %993, %956
  %997 = fmul fast float %993, %957
  %998 = extractvalue %dx.types.CBufRet.f32 %981, 1
  %999 = fmul fast float %998, %965
  %1000 = fmul fast float %998, %966
  %1001 = fadd fast float %999, %994
  %1002 = fadd fast float %1000, %996
  %1003 = extractvalue %dx.types.CBufRet.f32 %987, 1
  %1004 = fmul fast float %1003, %973
  %1005 = fmul fast float %1003, %974
  %1006 = fadd fast float %1001, %1004
  %1007 = fadd fast float %1002, %1005
  %1008 = extractvalue %dx.types.CBufRet.f32 %975, 2
  %1009 = fmul fast float %1008, %954
  %1010 = fmul fast float %1008, %955
  %1011 = fmul fast float %1008, %956
  %1012 = fmul fast float %1008, %957
  %1013 = extractvalue %dx.types.CBufRet.f32 %981, 2
  %1014 = fmul fast float %1013, %965
  %1015 = fmul fast float %1013, %966
  %1016 = fadd fast float %1014, %1009
  %1017 = fadd fast float %1015, %1011
  %1018 = extractvalue %dx.types.CBufRet.f32 %987, 2
  %1019 = fmul fast float %1018, %973
  %1020 = fmul fast float %1018, %974
  %1021 = fadd fast float %1016, %1019
  %1022 = fadd fast float %1017, %1020
  %1023 = fmul fast float %1010, %1010
  %1024 = fmul fast float %1022, %1022
  %1025 = fmul fast float %1012, %1012
  %1026 = fadd fast float %1025, %1023
  %1027 = fadd fast float %1026, %1024
  %1028 = call float @dx.op.unary.f32(i32 24, float %1027)  ; Sqrt(value)
  %1029 = fcmp fast ugt float %1028, 0.000000e+00
  br i1 %1029, label %1030, label %1045, !dx.controlflow.hints !62

; <label>:1030                                    ; preds = %770
  %1031 = fsub fast float -0.000000e+00, %1012
  %1032 = fdiv fast float %1031, %1028
  %1033 = fsub fast float -0.000000e+00, %1010
  %1034 = fdiv fast float %1033, %1028
  %1035 = fdiv fast float %1022, %1028
  %1036 = fmul fast float %1021, 0x3FE279A760000000
  %1037 = fmul fast float %1034, %1010
  %1038 = fmul fast float %1035, %1022
  %1039 = fmul fast float %1032, %1012
  %1040 = fadd fast float %1037, %1039
  %1041 = fsub fast float %1040, %1038
  %1042 = call float @dx.op.unary.f32(i32 6, float %1041)  ; FAbs(value)
  %1043 = fadd fast float %1042, 0x3DDB7CDFE0000000
  %1044 = fdiv fast float %1036, %1043
  br label %1045

; <label>:1045                                    ; preds = %1030, %770
  %1046 = phi float [ %1044, %1030 ], [ 1.000000e+00, %770 ]
  %1047 = fmul fast float %995, %995
  %1048 = fmul fast float %1007, %1007
  %1049 = fmul fast float %997, %997
  %1050 = fadd fast float %1049, %1047
  %1051 = fadd fast float %1050, %1048
  %1052 = call float @dx.op.unary.f32(i32 24, float %1051)  ; Sqrt(value)
  %1053 = fcmp fast ugt float %1052, 0.000000e+00
  br i1 %1053, label %1054, label %1069, !dx.controlflow.hints !62

; <label>:1054                                    ; preds = %1045
  %1055 = fsub fast float -0.000000e+00, %997
  %1056 = fdiv fast float %1055, %1052
  %1057 = fsub fast float -0.000000e+00, %995
  %1058 = fdiv fast float %1057, %1052
  %1059 = fdiv fast float %1007, %1052
  %1060 = fmul fast float %1006, 0x3FE279A760000000
  %1061 = fmul fast float %1058, %995
  %1062 = fmul fast float %1059, %1007
  %1063 = fmul fast float %1056, %997
  %1064 = fadd fast float %1061, %1063
  %1065 = fsub fast float %1064, %1062
  %1066 = call float @dx.op.unary.f32(i32 6, float %1065)  ; FAbs(value)
  %1067 = fadd fast float %1066, 0x3DDB7CDFE0000000
  %1068 = fdiv fast float %1060, %1067
  br label %1069

; <label>:1069                                    ; preds = %1054, %1045
  %1070 = phi float [ %1068, %1054 ], [ 1.000000e+00, %1045 ]
  %1071 = call float @dx.op.binary.f32(i32 36, float %1070, float %1046)  ; FMin(a,b)
  %1072 = fmul fast float %978, %978
  %1073 = fmul fast float %992, %992
  %1074 = fmul fast float %980, %980
  %1075 = fadd fast float %1074, %1072
  %1076 = fadd fast float %1075, %1073
  %1077 = call float @dx.op.unary.f32(i32 24, float %1076)  ; Sqrt(value)
  %1078 = fcmp fast ugt float %1077, 0.000000e+00
  br i1 %1078, label %1079, label %1094, !dx.controlflow.hints !62

; <label>:1079                                    ; preds = %1069
  %1080 = fsub fast float -0.000000e+00, %980
  %1081 = fdiv fast float %1080, %1077
  %1082 = fsub fast float -0.000000e+00, %978
  %1083 = fdiv fast float %1082, %1077
  %1084 = fdiv fast float %992, %1077
  %1085 = fmul fast float %991, 0x3FE279A760000000
  %1086 = fmul fast float %1083, %978
  %1087 = fmul fast float %1084, %992
  %1088 = fmul fast float %1081, %980
  %1089 = fadd fast float %1086, %1088
  %1090 = fsub fast float %1089, %1087
  %1091 = call float @dx.op.unary.f32(i32 6, float %1090)  ; FAbs(value)
  %1092 = fadd fast float %1091, 0x3DDB7CDFE0000000
  %1093 = fdiv fast float %1085, %1092
  br label %1094

; <label>:1094                                    ; preds = %1079, %1069
  %1095 = phi float [ %1093, %1079 ], [ 1.000000e+00, %1069 ]
  %1096 = call float @dx.op.binary.f32(i32 36, float %1095, float %1071)  ; FMin(a,b)
  %1097 = call float @dx.op.unary.f32(i32 7, float %1096)  ; Saturate(value)
  %1098 = fcmp fast olt float %1097, 1.000000e+00
  br i1 %1098, label %1099, label %1109, !dx.controlflow.hints !63

; <label>:1099                                    ; preds = %1094
  %1100 = fmul fast float %1097, %978
  %1101 = fmul fast float %1097, %992
  %1102 = fmul fast float %1097, %980
  %1103 = fmul fast float %1097, %995
  %1104 = fmul fast float %1097, %1007
  %1105 = fmul fast float %1097, %997
  %1106 = fmul fast float %1097, %1010
  %1107 = fmul fast float %1097, %1022
  %1108 = fmul fast float %1097, %1012
  br label %1109

; <label>:1109                                    ; preds = %1099, %1094
  %1110 = phi float [ %1106, %1099 ], [ %1010, %1094 ]
  %1111 = phi float [ %1107, %1099 ], [ %1022, %1094 ]
  %1112 = phi float [ %1108, %1099 ], [ %1012, %1094 ]
  %1113 = phi float [ %1103, %1099 ], [ %995, %1094 ]
  %1114 = phi float [ %1104, %1099 ], [ %1007, %1094 ]
  %1115 = phi float [ %1105, %1099 ], [ %997, %1094 ]
  %1116 = phi float [ %1100, %1099 ], [ %978, %1094 ]
  %1117 = phi float [ %1101, %1099 ], [ %992, %1094 ]
  %1118 = phi float [ %1102, %1099 ], [ %980, %1094 ]
  %1119 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %991)  ; FMax(a,b)
  %1120 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1006)  ; FMax(a,b)
  %1121 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1021)  ; FMax(a,b)
  %1122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1123 = extractvalue %dx.types.CBufRet.f32 %1122, 0
  %1124 = fcmp fast ogt float %1123, 0.000000e+00
  %1125 = fcmp fast oge float %779, 0.000000e+00
  %1126 = and i1 %1125, %1124
  %1127 = fcmp fast ole float %779, 1.000000e+00
  %1128 = and i1 %1127, %1126
  %1129 = fcmp fast oge float %780, 0.000000e+00
  %1130 = and i1 %1129, %1128
  %1131 = fcmp fast ole float %780, 1.000000e+00
  %1132 = and i1 %1131, %1130
  br i1 %1132, label %1133, label %1278, !dx.controlflow.hints !64

; <label>:1133                                    ; preds = %1109
  %1134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1135 = extractvalue %dx.types.CBufRet.f32 %1134, 2
  %1136 = extractvalue %dx.types.CBufRet.f32 %1134, 3
  %1137 = fmul fast float %1135, %779
  %1138 = fmul fast float %1136, %780
  %1139 = call float @dx.op.unary.f32(i32 27, float %1137)  ; Round_ni(value)
  %1140 = call float @dx.op.unary.f32(i32 27, float %1138)  ; Round_ni(value)
  %1141 = fptosi float %1139 to i32
  %1142 = fptosi float %1140 to i32
  %1143 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %1141, i32 %1142, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1144 = extractvalue %dx.types.ResRet.i32 %1143, 0
  %1145 = and i32 %1144, 65535
  %1146 = lshr i32 %1144, 16
  %1147 = icmp eq i32 %1145, 65535
  br i1 %1147, label %1184, label %1148, !dx.controlflow.hints !65

; <label>:1148                                    ; preds = %1133
  %1149 = extractvalue %dx.types.CBufRet.f32 %1122, 1
  %1150 = extractvalue %dx.types.CBufRet.f32 %1134, 0
  %1151 = extractvalue %dx.types.CBufRet.f32 %1134, 1
  %1152 = fmul fast float %1150, %779
  %1153 = fmul fast float %1151, %780
  %1154 = fmul fast float %1152, 1.250000e-01
  %1155 = fmul fast float %1153, 1.250000e-01
  %1156 = call float @dx.op.unary.f32(i32 27, float %1154)  ; Round_ni(value)
  %1157 = call float @dx.op.unary.f32(i32 27, float %1155)  ; Round_ni(value)
  %1158 = fmul fast float %1156, 8.000000e+00
  %1159 = fmul fast float %1157, 8.000000e+00
  %1160 = and i32 %1144, 255
  %1161 = lshr i32 %1144, 8
  %1162 = and i32 %1161, 255
  %1163 = mul nuw nsw i32 %1160, 9
  %1164 = uitofp i32 %1163 to float
  %1165 = mul nuw nsw i32 %1162, 9
  %1166 = uitofp i32 %1165 to float
  %1167 = fadd fast float %1164, 5.000000e-01
  %1168 = fadd fast float %1167, %1152
  %1169 = fsub fast float %1168, %1158
  %1170 = fadd fast float %1166, 5.000000e-01
  %1171 = fadd fast float %1170, %1153
  %1172 = fsub fast float %1171, %1159
  %1173 = fdiv fast float %1169, %1123
  %1174 = fdiv fast float %1172, %1149
  %1175 = fmul fast float %807, 4.375000e-01
  %1176 = fadd fast float %1175, 3.125000e-02
  %1177 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %23, float %1173, float %1174, float %1176, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1178 = extractvalue %dx.types.ResRet.f32 %1177, 0
  %1179 = extractvalue %dx.types.ResRet.f32 %1177, 1
  %1180 = extractvalue %dx.types.ResRet.f32 %1177, 2
  %1181 = fadd fast float %1178, %1119
  %1182 = fadd fast float %1179, %1120
  %1183 = fadd fast float %1180, %1121
  br label %1184

; <label>:1184                                    ; preds = %1148, %1133
  %1185 = phi float [ %1183, %1148 ], [ %1121, %1133 ]
  %1186 = phi float [ %1182, %1148 ], [ %1120, %1133 ]
  %1187 = phi float [ %1181, %1148 ], [ %1119, %1133 ]
  %1188 = icmp eq i32 %1146, 65535
  br i1 %1188, label %1278, label %1189, !dx.controlflow.hints !66

; <label>:1189                                    ; preds = %1184
  %1190 = extractvalue %dx.types.CBufRet.f32 %1122, 1
  %1191 = extractvalue %dx.types.CBufRet.f32 %1134, 0
  %1192 = extractvalue %dx.types.CBufRet.f32 %1134, 1
  %1193 = fmul fast float %1191, %779
  %1194 = fmul fast float %1192, %780
  %1195 = fmul fast float %1193, 1.250000e-01
  %1196 = fmul fast float %1194, 1.250000e-01
  %1197 = call float @dx.op.unary.f32(i32 27, float %1195)  ; Round_ni(value)
  %1198 = call float @dx.op.unary.f32(i32 27, float %1196)  ; Round_ni(value)
  %1199 = fmul fast float %1197, 8.000000e+00
  %1200 = fmul fast float %1198, 8.000000e+00
  %1201 = fsub fast float %1193, %1199
  %1202 = fsub fast float %1194, %1200
  %1203 = fadd fast float %1201, 5.000000e-01
  %1204 = fadd fast float %1202, 5.000000e-01
  %1205 = and i32 %1146, 255
  %1206 = lshr i32 %1144, 24
  %1207 = mul nuw nsw i32 %1205, 9
  %1208 = uitofp i32 %1207 to float
  %1209 = mul nuw nsw i32 %1206, 9
  %1210 = uitofp i32 %1209 to float
  %1211 = fadd fast float %1203, %1208
  %1212 = fadd fast float %1204, %1210
  %1213 = fdiv fast float %1211, %1123
  %1214 = fdiv fast float %1212, %1190
  %1215 = fmul fast float %807, 4.375000e-01
  %1216 = fadd fast float %1215, 3.125000e-02
  %1217 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %23, float %1213, float %1214, float %1216, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1218 = extractvalue %dx.types.ResRet.f32 %1217, 0
  %1219 = extractvalue %dx.types.ResRet.f32 %1217, 1
  %1220 = extractvalue %dx.types.ResRet.f32 %1217, 2
  %1221 = fadd fast float %1215, 5.312500e-01
  %1222 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %23, float %1213, float %1214, float %1221, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1223 = extractvalue %dx.types.ResRet.f32 %1222, 0
  %1224 = extractvalue %dx.types.ResRet.f32 %1222, 1
  %1225 = extractvalue %dx.types.ResRet.f32 %1222, 2
  %1226 = fmul fast float %1223, 2.000000e+00
  %1227 = fmul fast float %1224, 2.000000e+00
  %1228 = fmul fast float %1225, 2.000000e+00
  %1229 = fadd fast float %1226, -1.000000e+00
  %1230 = fadd fast float %1227, -1.000000e+00
  %1231 = fadd fast float %1228, -1.000000e+00
  %1232 = fmul fast float %1229, %1229
  %1233 = fmul fast float %1230, %1230
  %1234 = fadd fast float %1232, %1233
  %1235 = fmul fast float %1231, %1231
  %1236 = fadd fast float %1234, %1235
  %1237 = call float @dx.op.unary.f32(i32 24, float %1236)  ; Sqrt(value)
  %1238 = fcmp fast ogt float %1237, 0.000000e+00
  br i1 %1238, label %1239, label %1243, !dx.controlflow.hints !67

; <label>:1239                                    ; preds = %1189
  %1240 = fdiv fast float %1229, %1237
  %1241 = fdiv fast float %1230, %1237
  %1242 = fdiv fast float %1231, %1237
  br label %1243

; <label>:1243                                    ; preds = %1239, %1189
  %1244 = phi float [ %1240, %1239 ], [ 0.000000e+00, %1189 ]
  %1245 = phi float [ %1241, %1239 ], [ 0.000000e+00, %1189 ]
  %1246 = phi float [ %1242, %1239 ], [ 0.000000e+00, %1189 ]
  %1247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1248 = extractvalue %dx.types.CBufRet.f32 %1247, 0
  %1249 = extractvalue %dx.types.CBufRet.f32 %1247, 1
  %1250 = fsub fast float %246, %1248
  %1251 = fsub fast float %247, %1249
  %1252 = fmul fast float %1250, %1250
  %1253 = fmul fast float %1251, %1251
  %1254 = fadd fast float %1252, %1253
  %1255 = call float @dx.op.unary.f32(i32 24, float %1254)  ; Sqrt(value)
  %1256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1257 = extractvalue %dx.types.CBufRet.f32 %1256, 0
  %1258 = extractvalue %dx.types.CBufRet.f32 %1256, 1
  %1259 = fsub fast float %1255, %1257
  %1260 = fdiv fast float %1259, %1258
  %1261 = call float @dx.op.unary.f32(i32 7, float %1260)  ; Saturate(value)
  %1262 = fmul fast float %1261, 2.000000e+00
  %1263 = fsub fast float 3.000000e+00, %1262
  %1264 = fmul fast float %1261, %1261
  %1265 = fmul fast float %1264, %1263
  %1266 = call float @dx.op.dot3.f32(i32 55, float %1244, float %1245, float %1246, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1267 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1266)  ; FMax(a,b)
  %1268 = fmul fast float %1267, 0x400C5BF8A0000000
  %1269 = fmul fast float %1265, %1218
  %1270 = fmul fast float %1269, %1268
  %1271 = fadd fast float %1270, %1187
  %1272 = fmul fast float %1265, %1219
  %1273 = fmul fast float %1272, %1268
  %1274 = fadd fast float %1273, %1186
  %1275 = fmul fast float %1265, %1220
  %1276 = fmul fast float %1275, %1268
  %1277 = fadd fast float %1276, %1185
  br label %1278

; <label>:1278                                    ; preds = %1243, %1184, %1109
  %1279 = phi float [ %1277, %1243 ], [ %1185, %1184 ], [ %1121, %1109 ]
  %1280 = phi float [ %1274, %1243 ], [ %1186, %1184 ], [ %1120, %1109 ]
  %1281 = phi float [ %1271, %1243 ], [ %1187, %1184 ], [ %1119, %1109 ]
  %1282 = fcmp fast ogt float %248, %803
  %1283 = and i1 %1125, %1282
  %1284 = and i1 %1127, %1283
  %1285 = and i1 %1129, %1284
  %1286 = and i1 %1131, %1285
  br i1 %1286, label %1287, label %1344, !dx.controlflow.hints !68

; <label>:1287                                    ; preds = %1278
  %1288 = fmul fast float %805, 0x3FC24924A0000000
  %1289 = fsub fast float %248, %803
  %1290 = fdiv fast float %1289, %1288
  %1291 = call float @dx.op.unary.f32(i32 7, float %1290)  ; Saturate(value)
  %1292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1293 = extractvalue %dx.types.CBufRet.f32 %1292, 0
  %1294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1295 = extractvalue %dx.types.CBufRet.f32 %1294, 0
  %1296 = extractvalue %dx.types.CBufRet.f32 %1294, 1
  %1297 = extractvalue %dx.types.CBufRet.f32 %1294, 2
  %1298 = fsub fast float %1293, %1281
  %1299 = fsub fast float %1295, %1116
  %1300 = fsub fast float %1296, %1117
  %1301 = fsub fast float %1297, %1118
  %1302 = fmul fast float %1298, %1291
  %1303 = fmul fast float %1299, %1291
  %1304 = fmul fast float %1300, %1291
  %1305 = fmul fast float %1301, %1291
  %1306 = fadd fast float %1302, %1281
  %1307 = fadd fast float %1303, %1116
  %1308 = fadd fast float %1304, %1117
  %1309 = fadd fast float %1305, %1118
  %1310 = extractvalue %dx.types.CBufRet.f32 %1292, 1
  %1311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1312 = extractvalue %dx.types.CBufRet.f32 %1311, 0
  %1313 = extractvalue %dx.types.CBufRet.f32 %1311, 1
  %1314 = extractvalue %dx.types.CBufRet.f32 %1311, 2
  %1315 = fsub fast float %1310, %1280
  %1316 = fsub fast float %1312, %1113
  %1317 = fsub fast float %1313, %1114
  %1318 = fsub fast float %1314, %1115
  %1319 = fmul fast float %1315, %1291
  %1320 = fmul fast float %1316, %1291
  %1321 = fmul fast float %1317, %1291
  %1322 = fmul fast float %1318, %1291
  %1323 = fadd fast float %1319, %1280
  %1324 = fadd fast float %1320, %1113
  %1325 = fadd fast float %1321, %1114
  %1326 = fadd fast float %1322, %1115
  %1327 = extractvalue %dx.types.CBufRet.f32 %1292, 2
  %1328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1329 = extractvalue %dx.types.CBufRet.f32 %1328, 0
  %1330 = extractvalue %dx.types.CBufRet.f32 %1328, 1
  %1331 = extractvalue %dx.types.CBufRet.f32 %1328, 2
  %1332 = fsub fast float %1327, %1279
  %1333 = fsub fast float %1329, %1110
  %1334 = fsub fast float %1330, %1111
  %1335 = fsub fast float %1331, %1112
  %1336 = fmul fast float %1332, %1291
  %1337 = fmul fast float %1333, %1291
  %1338 = fmul fast float %1334, %1291
  %1339 = fmul fast float %1335, %1291
  %1340 = fadd fast float %1336, %1279
  %1341 = fadd fast float %1337, %1110
  %1342 = fadd fast float %1338, %1111
  %1343 = fadd fast float %1339, %1112
  br label %1344

; <label>:1344                                    ; preds = %1287, %1278
  %1345 = phi float [ %1340, %1287 ], [ %1279, %1278 ]
  %1346 = phi float [ %1341, %1287 ], [ %1110, %1278 ]
  %1347 = phi float [ %1342, %1287 ], [ %1111, %1278 ]
  %1348 = phi float [ %1343, %1287 ], [ %1112, %1278 ]
  %1349 = phi float [ %1323, %1287 ], [ %1280, %1278 ]
  %1350 = phi float [ %1324, %1287 ], [ %1113, %1278 ]
  %1351 = phi float [ %1325, %1287 ], [ %1114, %1278 ]
  %1352 = phi float [ %1326, %1287 ], [ %1115, %1278 ]
  %1353 = phi float [ %1306, %1287 ], [ %1281, %1278 ]
  %1354 = phi float [ %1307, %1287 ], [ %1116, %1278 ]
  %1355 = phi float [ %1308, %1287 ], [ %1117, %1278 ]
  %1356 = phi float [ %1309, %1287 ], [ %1118, %1278 ]
  %1357 = extractvalue %dx.types.CBufRet.f32 %928, 3
  %1358 = fmul fast float %1357, %1353
  %1359 = fmul fast float %1357, %1349
  %1360 = fmul fast float %1357, %1345
  %1361 = fmul fast float %1354, 1.500000e+00
  %1362 = fmul fast float %1361, %1357
  %1363 = fmul fast float %1355, 1.500000e+00
  %1364 = fmul fast float %1363, %1357
  %1365 = fmul fast float %1356, 1.500000e+00
  %1366 = fmul fast float %1365, %1357
  %1367 = fmul fast float %1350, 1.500000e+00
  %1368 = fmul fast float %1367, %1357
  %1369 = fmul fast float %1351, 1.500000e+00
  %1370 = fmul fast float %1369, %1357
  %1371 = fmul fast float %1352, 1.500000e+00
  %1372 = fmul fast float %1371, %1357
  %1373 = fmul fast float %1346, 1.500000e+00
  %1374 = fmul fast float %1373, %1357
  %1375 = fmul fast float %1347, 1.500000e+00
  %1376 = fmul fast float %1375, %1357
  %1377 = fmul fast float %1348, 1.500000e+00
  %1378 = fmul fast float %1377, %1357
  %1379 = fsub fast float %768, %1358
  %1380 = fmul fast float %1379, %666
  %1381 = fadd fast float %1380, %1358
  %1382 = fsub fast float %767, %1362
  %1383 = fmul fast float %1382, %666
  %1384 = fadd fast float %1383, %1362
  %1385 = fsub fast float %766, %1364
  %1386 = fmul fast float %1385, %666
  %1387 = fadd fast float %1386, %1364
  %1388 = fsub fast float %765, %1366
  %1389 = fmul fast float %1388, %666
  %1390 = fadd fast float %1389, %1366
  %1391 = fmul fast float %764, %666
  %1392 = fmul fast float %763, %666
  %1393 = fmul fast float %762, %666
  %1394 = fmul fast float %761, %666
  %1395 = fmul fast float %760, %666
  %1396 = fsub fast float %759, %1359
  %1397 = fmul fast float %1396, %666
  %1398 = fadd fast float %1397, %1359
  %1399 = fsub fast float %758, %1368
  %1400 = fmul fast float %1399, %666
  %1401 = fadd fast float %1400, %1368
  %1402 = fsub fast float %757, %1370
  %1403 = fmul fast float %1402, %666
  %1404 = fadd fast float %1403, %1370
  %1405 = fsub fast float %756, %1372
  %1406 = fmul fast float %1405, %666
  %1407 = fadd fast float %1406, %1372
  %1408 = fmul fast float %755, %666
  %1409 = fmul fast float %754, %666
  %1410 = fmul fast float %753, %666
  %1411 = fmul fast float %752, %666
  %1412 = fmul fast float %751, %666
  %1413 = fsub fast float %750, %1360
  %1414 = fmul fast float %1413, %666
  %1415 = fadd fast float %1414, %1360
  %1416 = fsub fast float %749, %1374
  %1417 = fmul fast float %1416, %666
  %1418 = fadd fast float %1417, %1374
  %1419 = fsub fast float %748, %1376
  %1420 = fmul fast float %1419, %666
  %1421 = fadd fast float %1420, %1376
  %1422 = fsub fast float %747, %1378
  %1423 = fmul fast float %1422, %666
  %1424 = fadd fast float %1423, %1378
  %1425 = fmul fast float %746, %666
  %1426 = fmul fast float %745, %666
  %1427 = fmul fast float %744, %666
  %1428 = fmul fast float %743, %666
  %1429 = fmul fast float %742, %666
  br label %1430

; <label>:1430                                    ; preds = %1344, %741
  %1431 = phi float [ %1429, %1344 ], [ %742, %741 ]
  %1432 = phi float [ %1428, %1344 ], [ %743, %741 ]
  %1433 = phi float [ %1427, %1344 ], [ %744, %741 ]
  %1434 = phi float [ %1426, %1344 ], [ %745, %741 ]
  %1435 = phi float [ %1425, %1344 ], [ %746, %741 ]
  %1436 = phi float [ %1424, %1344 ], [ %747, %741 ]
  %1437 = phi float [ %1421, %1344 ], [ %748, %741 ]
  %1438 = phi float [ %1418, %1344 ], [ %749, %741 ]
  %1439 = phi float [ %1415, %1344 ], [ %750, %741 ]
  %1440 = phi float [ %1412, %1344 ], [ %751, %741 ]
  %1441 = phi float [ %1411, %1344 ], [ %752, %741 ]
  %1442 = phi float [ %1410, %1344 ], [ %753, %741 ]
  %1443 = phi float [ %1409, %1344 ], [ %754, %741 ]
  %1444 = phi float [ %1408, %1344 ], [ %755, %741 ]
  %1445 = phi float [ %1407, %1344 ], [ %756, %741 ]
  %1446 = phi float [ %1404, %1344 ], [ %757, %741 ]
  %1447 = phi float [ %1401, %1344 ], [ %758, %741 ]
  %1448 = phi float [ %1398, %1344 ], [ %759, %741 ]
  %1449 = phi float [ %1395, %1344 ], [ %760, %741 ]
  %1450 = phi float [ %1394, %1344 ], [ %761, %741 ]
  %1451 = phi float [ %1393, %1344 ], [ %762, %741 ]
  %1452 = phi float [ %1392, %1344 ], [ %763, %741 ]
  %1453 = phi float [ %1391, %1344 ], [ %764, %741 ]
  %1454 = phi float [ %1390, %1344 ], [ %765, %741 ]
  %1455 = phi float [ %1387, %1344 ], [ %766, %741 ]
  %1456 = phi float [ %1384, %1344 ], [ %767, %741 ]
  %1457 = phi float [ %1381, %1344 ], [ %768, %741 ]
  %1458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1459 = extractvalue %dx.types.CBufRet.f32 %1458, 2
  %1460 = fmul fast float %1459, %1459
  %1461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1462 = extractvalue %dx.types.CBufRet.f32 %1461, 0
  %1463 = extractvalue %dx.types.CBufRet.f32 %1461, 1
  %1464 = extractvalue %dx.types.CBufRet.f32 %1461, 2
  %1465 = fmul fast float %1457, 0x3FD20DD760000000
  %1466 = fmul fast float %1464, %1455
  %1467 = fmul fast float %1464, %1464
  %1468 = fmul fast float %1467, 0x3FEE471020000000
  %1469 = fadd fast float %1468, 0xBFD42F6020000000
  %1470 = fmul fast float %1469, %1451
  %1471 = fmul fast float %1462, %1454
  %1472 = fmul fast float %1463, %1456
  %1473 = fmul fast float %1464, 0x3FF17B1420000000
  %1474 = fmul fast float %1460, %1450
  %1475 = fmul fast float %1474, %1462
  %1476 = fmul fast float %1475, %1473
  %1477 = fmul fast float %1460, %1452
  %1478 = fmul fast float %1477, %1463
  %1479 = fmul fast float %1478, %1473
  %1480 = fmul fast float %1462, %1462
  %1481 = fmul fast float %1463, %1463
  %1482 = fsub fast float %1480, %1481
  %1483 = fmul fast float %1449, 0x3FE17B1420000000
  %1484 = fmul fast float %1483, %1482
  %1485 = fmul fast float %1453, 0x3FF17B1420000000
  %1486 = fmul fast float %1485, %1463
  %1487 = fmul fast float %1486, %1462
  %1488 = fadd fast float %1484, %1487
  %1489 = fadd fast float %1488, %1470
  %1490 = fmul fast float %1489, %1460
  %1491 = fsub fast float %1472, %1466
  %1492 = fadd fast float %1491, %1471
  %1493 = fmul fast float %1492, 0x3FDF454380000000
  %1494 = fmul fast float %1493, %1459
  %1495 = fsub fast float %1465, %1476
  %1496 = fsub fast float %1495, %1479
  %1497 = fadd fast float %1496, %1490
  %1498 = fadd fast float %1497, %1494
  %1499 = fmul fast float %1448, 0x3FD20DD760000000
  %1500 = fmul fast float %1464, %1446
  %1501 = fmul fast float %1469, %1442
  %1502 = fmul fast float %1462, %1445
  %1503 = fmul fast float %1463, %1447
  %1504 = fmul fast float %1460, %1441
  %1505 = fmul fast float %1504, %1462
  %1506 = fmul fast float %1505, %1473
  %1507 = fmul fast float %1460, %1443
  %1508 = fmul fast float %1507, %1463
  %1509 = fmul fast float %1508, %1473
  %1510 = fmul fast float %1440, 0x3FE17B1420000000
  %1511 = fmul fast float %1510, %1482
  %1512 = fmul fast float %1444, 0x3FF17B1420000000
  %1513 = fmul fast float %1512, %1463
  %1514 = fmul fast float %1513, %1462
  %1515 = fadd fast float %1511, %1514
  %1516 = fadd fast float %1515, %1501
  %1517 = fmul fast float %1516, %1460
  %1518 = fsub fast float %1503, %1500
  %1519 = fadd fast float %1518, %1502
  %1520 = fmul fast float %1519, 0x3FDF454380000000
  %1521 = fmul fast float %1520, %1459
  %1522 = fsub fast float %1499, %1506
  %1523 = fsub fast float %1522, %1509
  %1524 = fadd fast float %1523, %1517
  %1525 = fadd fast float %1524, %1521
  %1526 = fmul fast float %1439, 0x3FD20DD760000000
  %1527 = fmul fast float %1464, %1437
  %1528 = fmul fast float %1469, %1433
  %1529 = fmul fast float %1462, %1436
  %1530 = fmul fast float %1463, %1438
  %1531 = fmul fast float %1460, %1432
  %1532 = fmul fast float %1531, %1462
  %1533 = fmul fast float %1532, %1473
  %1534 = fmul fast float %1460, %1434
  %1535 = fmul fast float %1534, %1463
  %1536 = fmul fast float %1535, %1473
  %1537 = fmul fast float %1431, 0x3FE17B1420000000
  %1538 = fmul fast float %1537, %1482
  %1539 = fmul fast float %1435, 0x3FF17B1420000000
  %1540 = fmul fast float %1539, %1463
  %1541 = fmul fast float %1540, %1462
  %1542 = fadd fast float %1538, %1541
  %1543 = fadd fast float %1542, %1528
  %1544 = fmul fast float %1543, %1460
  %1545 = fsub fast float %1530, %1527
  %1546 = fadd fast float %1545, %1529
  %1547 = fmul fast float %1546, 0x3FDF454380000000
  %1548 = fmul fast float %1547, %1459
  %1549 = fsub fast float %1526, %1533
  %1550 = fsub fast float %1549, %1536
  %1551 = fadd fast float %1550, %1544
  %1552 = fadd fast float %1551, %1548
  %1553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1554 = extractvalue %dx.types.CBufRet.f32 %1553, 3
  %1555 = extractvalue %dx.types.CBufRet.f32 %607, 0
  %1556 = fmul fast float %1555, %1554
  %1557 = fmul fast float %1556, %1498
  %1558 = fmul fast float %1556, %1525
  %1559 = fmul fast float %1556, %1552
  %1560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1561 = extractvalue %dx.types.CBufRet.f32 %1560, 3
  %1562 = fcmp fast une float %1561, 0.000000e+00
  %1563 = extractvalue %dx.types.CBufRet.f32 %1560, 0
  %1564 = extractvalue %dx.types.CBufRet.f32 %1560, 1
  %1565 = extractvalue %dx.types.CBufRet.f32 %1560, 2
  br i1 %1562, label %1566, label %1588, !dx.controlflow.hints !69

; <label>:1566                                    ; preds = %1430
  %1567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1568 = extractvalue %dx.types.CBufRet.f32 %1567, 0
  %1569 = extractvalue %dx.types.CBufRet.f32 %1567, 1
  %1570 = extractvalue %dx.types.CBufRet.f32 %1567, 2
  %1571 = call float @dx.op.dot3.f32(i32 55, float %1563, float %1564, float %1565, float %114, float %115, float %116)  ; Dot3(ax,ay,az,bx,by,bz)
  %1572 = fcmp fast ogt float %617, 0.000000e+00
  %1573 = select i1 %1572, float 1.000000e+00, float -1.000000e+00
  %1574 = fmul fast float %1573, 5.000000e-01
  %1575 = fmul fast float %1574, %1571
  %1576 = fmul fast float %1573, %617
  %1577 = fadd fast float %1575, 4.921875e-01
  %1578 = fadd fast float %1576, -3.125000e-02
  %1579 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %23, float %1577, float 0x3FB25F3060000000, float %1578, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1580 = extractvalue %dx.types.ResRet.f32 %1579, 0
  %1581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1582 = extractvalue %dx.types.CBufRet.f32 %1581, 0
  %1583 = fmul fast float %1580, 0x400921FB60000000
  %1584 = fmul fast float %1583, %1582
  %1585 = fmul fast float %1584, %1568
  %1586 = fmul fast float %1584, %1569
  %1587 = fmul fast float %1584, %1570
  br label %1588

; <label>:1588                                    ; preds = %1566, %1430
  %1589 = phi float [ %1585, %1566 ], [ 0.000000e+00, %1430 ]
  %1590 = phi float [ %1586, %1566 ], [ 0.000000e+00, %1430 ]
  %1591 = phi float [ %1587, %1566 ], [ 0.000000e+00, %1430 ]
  %1592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1593 = extractvalue %dx.types.CBufRet.f32 %1592, 0
  %1594 = fmul fast float %1593, %1563
  %1595 = fmul fast float %1593, %1564
  %1596 = fmul fast float %1593, %1565
  %1597 = fadd fast float %1594, %246
  %1598 = fadd fast float %1595, %247
  %1599 = fadd fast float %1596, %248
  br i1 %273, label %1649, label %1600, !dx.controlflow.hints !47

; <label>:1600                                    ; preds = %1588
  %1601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1602 = extractvalue %dx.types.CBufRet.f32 %1601, 0
  %1603 = extractvalue %dx.types.CBufRet.f32 %1601, 1
  %1604 = extractvalue %dx.types.CBufRet.f32 %1601, 2
  %1605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1606 = extractvalue %dx.types.CBufRet.f32 %1605, 0
  %1607 = extractvalue %dx.types.CBufRet.f32 %1605, 1
  %1608 = extractvalue %dx.types.CBufRet.f32 %1605, 2
  %1609 = fsub fast float %1597, %1606
  %1610 = fsub fast float %1598, %1607
  %1611 = fsub fast float %1599, %1608
  %1612 = fmul fast float %1609, %1602
  %1613 = fmul fast float %1610, %1603
  %1614 = fmul fast float %1611, %1604
  %1615 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %1616 = extractvalue %dx.types.CBufRet.i32 %1615, 3
  %1617 = icmp eq i32 %1616, 0
  br i1 %1617, label %1621, label %1618, !dx.controlflow.hints !48

; <label>:1618                                    ; preds = %1600
  %1619 = call float @dx.op.unary.f32(i32 22, float %1612)  ; Frc(value)
  %1620 = call float @dx.op.unary.f32(i32 22, float %1613)  ; Frc(value)
  br label %1621

; <label>:1621                                    ; preds = %1618, %1600
  %1622 = phi float [ %1619, %1618 ], [ %1612, %1600 ]
  %1623 = phi float [ %1620, %1618 ], [ %1613, %1600 ]
  %1624 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %21, float %1622, float %1623, float %1614, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1625 = extractvalue %dx.types.ResRet.f32 %1624, 0
  %1626 = fmul fast float %1625, 2.000000e+00
  %1627 = fadd fast float %1626, -1.000000e+00
  %1628 = extractvalue %dx.types.CBufRet.f32 %1601, 3
  %1629 = fmul fast float %1627, %1628
  %1630 = fcmp fast olt float %1629, 0.000000e+00
  %1631 = fcmp fast oge float %1614, 0.000000e+00
  %1632 = fcmp fast ole float %1614, 1.000000e+00
  br i1 %1617, label %1635, label %1633, !dx.controlflow.hints !49

; <label>:1633                                    ; preds = %1621
  %1634 = and i1 %1631, %1632
  br label %1645

; <label>:1635                                    ; preds = %1621
  %1636 = fcmp fast oge float %1612, 0.000000e+00
  %1637 = fcmp fast oge float %1613, 0.000000e+00
  %1638 = and i1 %1636, %1637
  %1639 = and i1 %1631, %1638
  %1640 = fcmp fast ole float %1612, 1.000000e+00
  %1641 = fcmp fast ole float %1613, 1.000000e+00
  %1642 = and i1 %1640, %1641
  %1643 = and i1 %1632, %1642
  %1644 = and i1 %1639, %1643
  br label %1645

; <label>:1645                                    ; preds = %1635, %1633
  %1646 = phi i1 [ %1634, %1633 ], [ %1644, %1635 ]
  %1647 = and i1 %1630, %1646
  %1648 = zext i1 %1647 to i32
  br label %1649

; <label>:1649                                    ; preds = %1645, %1588
  %1650 = phi i32 [ %1648, %1645 ], [ 0, %1588 ]
  br i1 %258, label %1699, label %1651, !dx.controlflow.hints !50

; <label>:1651                                    ; preds = %1649
  %1652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %1653 = extractvalue %dx.types.CBufRet.f32 %1652, 0
  %1654 = fsub fast float -0.000000e+00, %1597
  %1655 = fsub fast float -0.000000e+00, %1598
  %1656 = fsub fast float %1653, %1599
  %1657 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1654, float %1655, float %1656)  ; Dot3(ax,ay,az,bx,by,bz)
  %1658 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1563, float %1564, float %1565)  ; Dot3(ax,ay,az,bx,by,bz)
  %1659 = fdiv fast float 1.000000e+00, %1658
  %1660 = fmul fast float %1659, %1657
  %1661 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1660)  ; FMax(a,b)
  %1662 = fcmp fast olt float %1565, 0.000000e+00
  %1663 = call float @dx.op.binary.f32(i32 36, float %1593, float %1661)  ; FMin(a,b)
  br i1 %1662, label %1665, label %1664, !dx.controlflow.hints !51

; <label>:1664                                    ; preds = %1651
  br label %1665

; <label>:1665                                    ; preds = %1664, %1651
  %1666 = phi float [ 0.000000e+00, %1664 ], [ %1663, %1651 ]
  %1667 = phi float [ %1663, %1664 ], [ %1593, %1651 ]
  %1668 = phi float [ %1663, %1664 ], [ 0.000000e+00, %1651 ]
  %1669 = phi float [ %1593, %1664 ], [ %1663, %1651 ]
  %1670 = fsub fast float %1667, %1666
  %1671 = extractvalue %dx.types.CBufRet.f32 %1652, 1
  %1672 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %1671)  ; FMin(a,b)
  %1673 = fsub fast float %1599, %1653
  %1674 = fmul fast float %1672, 0x3FF7154760000000
  %1675 = fmul fast float %1674, %1673
  %1676 = call float @dx.op.unary.f32(i32 21, float %1675)  ; Exp(value)
  %1677 = fmul fast float %1565, 0x3FF7154760000000
  %1678 = fmul fast float %1677, %1669
  %1679 = fmul fast float %1678, %1672
  %1680 = call float @dx.op.unary.f32(i32 21, float %1679)  ; Exp(value)
  %1681 = fmul fast float %1677, %1668
  %1682 = fmul fast float %1681, %1672
  %1683 = call float @dx.op.unary.f32(i32 21, float %1682)  ; Exp(value)
  %1684 = fsub fast float %1680, %1683
  %1685 = fmul fast float %1684, %1676
  %1686 = fmul fast float %1672, %1565
  %1687 = fdiv fast float %1685, %1686
  %1688 = fadd fast float %1670, %1687
  %1689 = call float @dx.op.unary.f32(i32 6, float %1565)  ; FAbs(value)
  %1690 = fcmp fast olt float %1689, 0x3F0FFB4800000000
  %1691 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1673)  ; FMax(a,b)
  %1692 = fmul fast float %1691, 0x3FF7154760000000
  %1693 = fmul fast float %1692, %1671
  %1694 = call float @dx.op.unary.f32(i32 21, float %1693)  ; Exp(value)
  %1695 = fmul fast float %1694, %1593
  %1696 = select i1 %1690, float %1695, float %1688
  %1697 = extractvalue %dx.types.CBufRet.f32 %1458, 1
  %1698 = fmul fast float %1696, %1697
  br label %1699

; <label>:1699                                    ; preds = %1665, %1649
  %1700 = phi float [ %1698, %1665 ], [ 0.000000e+00, %1649 ]
  %1701 = icmp eq i32 %1650, 0
  br i1 %1701, label %1882, label %1702, !dx.controlflow.hints !52

; <label>:1702                                    ; preds = %1699
  %1703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1704 = extractvalue %dx.types.CBufRet.f32 %1703, 3
  %1705 = fmul fast float %1704, %1593
  %1706 = fcmp fast oeq float %1705, 0.000000e+00
  br i1 %1706, label %1721, label %1707, !dx.controlflow.hints !53

; <label>:1707                                    ; preds = %1702
  %1708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1709 = extractvalue %dx.types.CBufRet.f32 %1708, 3
  %1710 = fmul fast float %1709, %1705
  %1711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1712 = extractvalue %dx.types.CBufRet.f32 %1711, 0
  %1713 = extractvalue %dx.types.CBufRet.f32 %1711, 1
  %1714 = extractvalue %dx.types.CBufRet.f32 %1711, 2
  %1715 = fmul fast float %1712, %1710
  %1716 = fmul fast float %1713, %1710
  %1717 = fmul fast float %1714, %1710
  %1718 = call float @dx.op.unary.f32(i32 23, float %1715)  ; Log(value)
  %1719 = call float @dx.op.unary.f32(i32 23, float %1716)  ; Log(value)
  %1720 = call float @dx.op.unary.f32(i32 23, float %1717)  ; Log(value)
  br label %1721

; <label>:1721                                    ; preds = %1707, %1702
  %1722 = phi float [ %1718, %1707 ], [ 0.000000e+00, %1702 ]
  %1723 = phi float [ %1719, %1707 ], [ 0.000000e+00, %1702 ]
  %1724 = phi float [ %1720, %1707 ], [ 0.000000e+00, %1702 ]
  %1725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1726 = extractvalue %dx.types.CBufRet.f32 %1725, 0
  %1727 = extractvalue %dx.types.CBufRet.f32 %1725, 1
  %1728 = extractvalue %dx.types.CBufRet.f32 %1725, 2
  %1729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1730 = extractvalue %dx.types.CBufRet.f32 %1729, 0
  %1731 = extractvalue %dx.types.CBufRet.f32 %1729, 1
  %1732 = extractvalue %dx.types.CBufRet.f32 %1729, 2
  %1733 = fsub fast float %1597, %1730
  %1734 = fsub fast float %1598, %1731
  %1735 = fsub fast float %1599, %1732
  %1736 = fmul fast float %1733, %1726
  %1737 = fmul fast float %1734, %1727
  %1738 = fmul fast float %1735, %1728
  %1739 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %1740 = extractvalue %dx.types.CBufRet.i32 %1739, 0
  %1741 = extractvalue %dx.types.CBufRet.i32 %1739, 1
  %1742 = uitofp i32 %1740 to float
  %1743 = uitofp i32 %1741 to float
  %1744 = fmul fast float %1736, %1742
  %1745 = fmul fast float %1737, %1743
  %1746 = fadd fast float %1744, 5.000000e-01
  %1747 = fadd fast float %1745, 5.000000e-01
  %1748 = call float @dx.op.unary.f32(i32 22, float %1746)  ; Frc(value)
  %1749 = call float @dx.op.unary.f32(i32 22, float %1747)  ; Frc(value)
  %1750 = call float @dx.op.unary.f32(i32 27, float %1746)  ; Round_ni(value)
  %1751 = call float @dx.op.unary.f32(i32 27, float %1747)  ; Round_ni(value)
  %1752 = fadd fast float %1750, 1.000000e+00
  %1753 = fadd fast float %1751, 1.000000e+00
  %1754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %1755 = extractvalue %dx.types.CBufRet.f32 %1754, 0
  %1756 = extractvalue %dx.types.CBufRet.f32 %1754, 1
  %1757 = fmul fast float %1755, %1752
  %1758 = fmul fast float %1756, %1753
  %1759 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %22, float %1757, float %1758, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1760 = extractvalue %dx.types.ResRet.f32 %1759, 0
  %1761 = extractvalue %dx.types.ResRet.f32 %1759, 1
  %1762 = extractvalue %dx.types.ResRet.f32 %1759, 2
  %1763 = extractvalue %dx.types.ResRet.f32 %1759, 3
  %1764 = extractvalue %dx.types.CBufRet.i32 %1739, 2
  %1765 = extractvalue %dx.types.CBufRet.f32 %1754, 2
  %1766 = uitofp i32 %1764 to float
  %1767 = fadd fast float %1766, -1.000000e+00
  %1768 = fmul fast float %1767, %1760
  %1769 = fmul fast float %1767, %1761
  %1770 = fmul fast float %1767, %1762
  %1771 = fmul fast float %1767, %1763
  %1772 = fadd fast float %1768, 5.000000e-01
  %1773 = fadd fast float %1769, 5.000000e-01
  %1774 = fadd fast float %1770, 5.000000e-01
  %1775 = fadd fast float %1771, 5.000000e-01
  %1776 = fptoui float %1772 to i32
  %1777 = fptoui float %1773 to i32
  %1778 = fptoui float %1774 to i32
  %1779 = fptoui float %1775 to i32
  %1780 = uitofp i32 %1776 to float
  %1781 = uitofp i32 %1777 to float
  %1782 = uitofp i32 %1778 to float
  %1783 = uitofp i32 %1779 to float
  %1784 = fadd fast float %1780, 5.000000e-01
  %1785 = fadd fast float %1781, 5.000000e-01
  %1786 = fadd fast float %1782, 5.000000e-01
  %1787 = fadd fast float %1783, 5.000000e-01
  %1788 = fmul fast float %1784, %1765
  %1789 = fmul fast float %1785, %1765
  %1790 = fmul fast float %1786, %1765
  %1791 = fmul fast float %1787, %1765
  %1792 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %23, float %1788, float %1738, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1793 = extractvalue %dx.types.ResRet.f32 %1792, 0
  %1794 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %23, float %1789, float %1738, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1795 = extractvalue %dx.types.ResRet.f32 %1794, 0
  %1796 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %23, float %1790, float %1738, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1797 = extractvalue %dx.types.ResRet.f32 %1796, 0
  %1798 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %23, float %1791, float %1738, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1799 = extractvalue %dx.types.ResRet.f32 %1798, 0
  %1800 = fsub fast float %1797, %1799
  %1801 = fmul fast float %1800, %1748
  %1802 = fadd fast float %1801, %1799
  %1803 = fsub fast float %1795, %1793
  %1804 = fmul fast float %1803, %1748
  %1805 = fadd fast float %1804, %1793
  %1806 = fsub fast float %1805, %1802
  %1807 = fmul fast float %1806, %1749
  %1808 = fadd fast float %1807, %1802
  %1809 = fcmp fast ogt float %1808, 0.000000e+00
  br i1 %1809, label %1810, label %1878, !dx.controlflow.hints !54

; <label>:1810                                    ; preds = %1721
  %1811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1812 = extractvalue %dx.types.CBufRet.f32 %1811, 0
  %1813 = extractvalue %dx.types.CBufRet.f32 %1811, 1
  %1814 = extractvalue %dx.types.CBufRet.f32 %1811, 2
  %1815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1816 = extractvalue %dx.types.CBufRet.f32 %1815, 0
  %1817 = extractvalue %dx.types.CBufRet.f32 %1815, 1
  %1818 = extractvalue %dx.types.CBufRet.f32 %1815, 2
  %1819 = fmul fast float %1734, %1726
  %1820 = fmul fast float %1735, %1726
  %1821 = fadd fast float %1736, %1816
  %1822 = fadd fast float %1819, %1817
  %1823 = fadd fast float %1820, %1818
  %1824 = fmul fast float %1821, %1812
  %1825 = fmul fast float %1822, %1812
  %1826 = fmul fast float %1823, %1812
  %1827 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %20, float %1824, float %1825, float %1826, float undef, i32 0, i32 0, i32 0, float %1722)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1828 = extractvalue %dx.types.ResRet.f32 %1827, 0
  %1829 = fmul fast float %1821, %1813
  %1830 = fmul fast float %1822, %1813
  %1831 = fmul fast float %1823, %1813
  %1832 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %20, float %1829, float %1830, float %1831, float undef, i32 0, i32 0, i32 0, float %1723)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1833 = extractvalue %dx.types.ResRet.f32 %1832, 1
  %1834 = fmul fast float %1821, %1814
  %1835 = fmul fast float %1822, %1814
  %1836 = fmul fast float %1823, %1814
  %1837 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %20, float %1834, float %1835, float %1836, float undef, i32 0, i32 0, i32 0, float %1724)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1838 = extractvalue %dx.types.ResRet.f32 %1837, 2
  %1839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %1840 = extractvalue %dx.types.CBufRet.f32 %1839, 1
  %1841 = fmul fast float %1833, %1828
  %1842 = fmul fast float %1841, %1838
  %1843 = call float @dx.op.unary.f32(i32 23, float %1842)  ; Log(value)
  %1844 = fmul fast float %1843, %1840
  %1845 = call float @dx.op.unary.f32(i32 21, float %1844)  ; Exp(value)
  %1846 = extractvalue %dx.types.CBufRet.f32 %1839, 2
  %1847 = fmul fast float %1808, %1808
  %1848 = fmul fast float %1847, %1845
  %1849 = fmul fast float %1848, %1846
  %1850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %1851 = extractvalue %dx.types.CBufRet.f32 %1850, 3
  %1852 = fmul fast float %1851, %1849
  %1853 = bitcast float %1852 to i32
  %1854 = sitofp i32 %1853 to float
  %1855 = fptosi float %1854 to i32
  %1856 = bitcast i32 %1855 to float
  %1857 = fsub fast float 1.000000e+00, %1849
  %1858 = bitcast float %1857 to i32
  %1859 = sitofp i32 %1858 to float
  %1860 = fptosi float %1859 to i32
  %1861 = bitcast i32 %1860 to float
  %1862 = fadd fast float %1856, %1861
  %1863 = bitcast float %1862 to i32
  %1864 = sub nsw i32 2129859010, %1863
  %1865 = bitcast i32 %1864 to float
  %1866 = fmul fast float %1865, %1856
  %1867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1868 = extractvalue %dx.types.CBufRet.f32 %1867, 2
  %1869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1870 = extractvalue %dx.types.CBufRet.f32 %1869, 0
  %1871 = fmul fast float %1866, %1870
  %1872 = fadd fast float %1871, 1.000000e+00
  %1873 = bitcast float %1872 to i32
  %1874 = sub nsw i32 2129859010, %1873
  %1875 = bitcast i32 %1874 to float
  %1876 = fmul fast float %1866, %1868
  %1877 = fmul fast float %1876, %1875
  br label %1878

; <label>:1878                                    ; preds = %1810, %1721
  %1879 = phi float [ %1877, %1810 ], [ %1808, %1721 ]
  %1880 = fmul fast float %1879, %1593
  %1881 = fadd fast float %1880, %1700
  br label %1882

; <label>:1882                                    ; preds = %1878, %1699
  %1883 = phi float [ %1881, %1878 ], [ %1700, %1699 ]
  %1884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %1885 = extractvalue %dx.types.CBufRet.f32 %1884, 3
  %1886 = fmul fast float %1883, 0xBFF7154760000000
  %1887 = fmul fast float %1886, %1885
  %1888 = call float @dx.op.unary.f32(i32 21, float %1887)  ; Exp(value)
  %1889 = call float @dx.op.unary.f32(i32 7, float %1888)  ; Saturate(value)
  %1890 = fmul fast float %1889, %1589
  %1891 = fmul fast float %1889, %1590
  %1892 = fmul fast float %1889, %1591
  %1893 = fadd fast float %1890, %1557
  %1894 = fadd fast float %1891, %1558
  %1895 = fadd fast float %1892, %1559
  %1896 = fsub fast float 1.000000e+00, %626
  %1897 = fmul fast float %618, %242
  %1898 = fmul fast float %1897, %1896
  %1899 = fmul fast float %1898, %1893
  %1900 = fmul fast float %619, %242
  %1901 = fmul fast float %1900, %1896
  %1902 = fmul fast float %1901, %1894
  %1903 = fmul fast float %620, %242
  %1904 = fmul fast float %1903, %1896
  %1905 = fmul fast float %1904, %1895
  %1906 = fadd fast float %1899, %243
  %1907 = fadd fast float %1902, %244
  %1908 = fadd fast float %1905, %245
  %1909 = fdiv fast float %602, %343
  %1910 = fadd fast float %343, %249
  %1911 = fmul fast float %249, %249
  %1912 = fmul fast float %1910, %1910
  %1913 = fsub fast float %1911, %1912
  %1914 = fmul fast float %1913, -5.000000e-01
  %1915 = fmul fast float %1914, %1909
  %1916 = fadd fast float %1915, %241
  %1917 = fadd fast float %602, %250
  %1918 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1919 = extractvalue %dx.types.CBufRet.i32 %1918, 0
  %1920 = icmp eq i32 %1919, 0
  br i1 %1920, label %1947, label %1921, !dx.controlflow.hints !70

; <label>:1921                                    ; preds = %1882
  %1922 = icmp ne i32 %255, 0
  %1923 = zext i1 %1922 to i32
  %1924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1925 = extractvalue %dx.types.CBufRet.f32 %1924, 2
  %1926 = extractvalue %dx.types.CBufRet.f32 %1924, 0
  %1927 = fsub fast float %1910, %1926
  %1928 = fmul fast float %1927, %1925
  %1929 = call float @dx.op.unary.f32(i32 7, float %1928)  ; Saturate(value)
  %1930 = fadd fast float %1929, -5.000000e-01
  %1931 = fmul fast float %1930, 2.000000e+00
  %1932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1933 = extractvalue %dx.types.CBufRet.f32 %1932, 2
  %1934 = fcmp fast olt float %1931, %1933
  br i1 %1934, label %1935, label %1947, !dx.controlflow.hints !71

; <label>:1935                                    ; preds = %1921
  %1936 = fmul fast float %1931, %1931
  %1937 = fmul fast float %1896, %242
  %1938 = fmul fast float %1931, %1937
  %1939 = fmul fast float %1936, %1937
  %1940 = fmul fast float %1938, %1936
  %1941 = fmul fast float %1936, %1936
  %1942 = fmul fast float %1941, %1937
  %1943 = fadd fast float %1938, %251
  %1944 = fadd fast float %1939, %252
  %1945 = fadd fast float %1940, %253
  %1946 = fadd fast float %1942, %254
  br label %1947

; <label>:1947                                    ; preds = %1935, %1921, %1882
  %1948 = phi float [ %251, %1882 ], [ %1943, %1935 ], [ %251, %1921 ]
  %1949 = phi float [ %252, %1882 ], [ %1944, %1935 ], [ %252, %1921 ]
  %1950 = phi float [ %253, %1882 ], [ %1945, %1935 ], [ %253, %1921 ]
  %1951 = phi float [ %254, %1882 ], [ %1946, %1935 ], [ %254, %1921 ]
  %1952 = phi i32 [ %255, %1882 ], [ 1, %1935 ], [ %1923, %1921 ]
  %1953 = fmul fast float %626, %242
  br label %1954

; <label>:1954                                    ; preds = %1947, %621
  %1955 = phi float [ %622, %621 ], [ %1910, %1947 ]
  %1956 = phi float [ %241, %621 ], [ %1916, %1947 ]
  %1957 = phi float [ %242, %621 ], [ %1953, %1947 ]
  %1958 = phi float [ %243, %621 ], [ %1906, %1947 ]
  %1959 = phi float [ %244, %621 ], [ %1907, %1947 ]
  %1960 = phi float [ %245, %621 ], [ %1908, %1947 ]
  %1961 = phi float [ %250, %621 ], [ %1917, %1947 ]
  %1962 = phi float [ %251, %621 ], [ %1948, %1947 ]
  %1963 = phi float [ %252, %621 ], [ %1949, %1947 ]
  %1964 = phi float [ %253, %621 ], [ %1950, %1947 ]
  %1965 = phi float [ %254, %621 ], [ %1951, %1947 ]
  %1966 = phi i32 [ %255, %621 ], [ %1952, %1947 ]
  %1967 = fmul fast float %343, %114
  %1968 = fmul fast float %343, %115
  %1969 = fmul fast float %343, %116
  %1970 = fadd fast float %1967, %246
  %1971 = fadd fast float %1968, %247
  %1972 = fadd fast float %1969, %248
  %1973 = fcmp fast olt float %1955, %221
  %1974 = extractvalue %dx.types.CBufRet.f32 %607, 2
  %1975 = fcmp fast olt float %1974, %1957
  %1976 = and i1 %1973, %1975
  br i1 %1976, label %240, label %1977

; <label>:1977                                    ; preds = %1954
  br label %1978

; <label>:1978                                    ; preds = %1977, %217
  %1979 = phi float [ 0.000000e+00, %217 ], [ %1956, %1977 ]
  %1980 = phi float [ 1.000000e+00, %217 ], [ %1957, %1977 ]
  %1981 = phi float [ 0.000000e+00, %217 ], [ %1958, %1977 ]
  %1982 = phi float [ 0.000000e+00, %217 ], [ %1959, %1977 ]
  %1983 = phi float [ 0.000000e+00, %217 ], [ %1960, %1977 ]
  %1984 = phi float [ 0.000000e+00, %217 ], [ %1961, %1977 ]
  %1985 = phi float [ 0.000000e+00, %217 ], [ %1962, %1977 ]
  %1986 = phi float [ 0.000000e+00, %217 ], [ %1963, %1977 ]
  %1987 = phi float [ 0.000000e+00, %217 ], [ %1964, %1977 ]
  %1988 = phi float [ 0.000000e+00, %217 ], [ %1965, %1977 ]
  %1989 = phi i32 [ 0, %217 ], [ %1966, %1977 ]
  %1990 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1991 = extractvalue %dx.types.CBufRet.i32 %1990, 0
  %1992 = icmp eq i32 %1991, 0
  br i1 %1992, label %2034, label %1993, !dx.controlflow.hints !72

; <label>:1993                                    ; preds = %1978
  %1994 = icmp eq i32 %1989, 0
  br i1 %1994, label %2033, label %1995, !dx.controlflow.hints !73

; <label>:1995                                    ; preds = %1993
  %1996 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1997 = extractvalue %dx.types.CBufRet.i32 %1996, 2
  %1998 = icmp eq i32 %1997, 0
  br i1 %1998, label %2005, label %1999, !dx.controlflow.hints !74

; <label>:1999                                    ; preds = %1995
  %2000 = fsub fast float 1.000000e+00, %1980
  %2001 = fdiv fast float %1985, %2000
  %2002 = fdiv fast float %1986, %2000
  %2003 = fdiv fast float %1987, %2000
  %2004 = fdiv fast float %1988, %2000
  br label %2010

; <label>:2005                                    ; preds = %1995
  %2006 = fadd fast float %1985, %1980
  %2007 = fadd fast float %1986, %1980
  %2008 = fadd fast float %1987, %1980
  %2009 = fadd fast float %1988, %1980
  br label %2010

; <label>:2010                                    ; preds = %2005, %1999
  %2011 = phi float [ %2001, %1999 ], [ %2006, %2005 ]
  %2012 = phi float [ %2002, %1999 ], [ %2007, %2005 ]
  %2013 = phi float [ %2003, %1999 ], [ %2008, %2005 ]
  %2014 = phi float [ %2004, %1999 ], [ %2009, %2005 ]
  %2015 = call float @dx.op.binary.f32(i32 35, float %2011, float -1.000000e+00)  ; FMax(a,b)
  %2016 = call float @dx.op.binary.f32(i32 35, float %2012, float -1.000000e+00)  ; FMax(a,b)
  %2017 = call float @dx.op.binary.f32(i32 35, float %2013, float -1.000000e+00)  ; FMax(a,b)
  %2018 = call float @dx.op.binary.f32(i32 35, float %2014, float -1.000000e+00)  ; FMax(a,b)
  %2019 = call float @dx.op.binary.f32(i32 36, float %2015, float 1.000000e+00)  ; FMin(a,b)
  %2020 = call float @dx.op.binary.f32(i32 36, float %2016, float 1.000000e+00)  ; FMin(a,b)
  %2021 = call float @dx.op.binary.f32(i32 36, float %2017, float 1.000000e+00)  ; FMin(a,b)
  %2022 = call float @dx.op.binary.f32(i32 36, float %2018, float 1.000000e+00)  ; FMin(a,b)
  %2023 = fmul fast float %2019, 1.500000e+00
  %2024 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %2021, float %2023)  ; FMad(a,b,c)
  %2025 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %2020, float 0.000000e+00)  ; FMad(a,b,c)
  %2026 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %2022, float %2025)  ; FMad(a,b,c)
  %2027 = fmul fast float %2019, 0x3FEBB67AE0000000
  %2028 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %2021, float %2027)  ; FMad(a,b,c)
  %2029 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2020, float 0.000000e+00)  ; FMad(a,b,c)
  %2030 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2022, float %2029)  ; FMad(a,b,c)
  %2031 = fadd fast float %2024, 5.000000e-01
  %2032 = fadd fast float %2028, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %26, i32 %27, i32 0, float %2031, float %2026, float %2032, float %2030, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2034

; <label>:2033                                    ; preds = %1993
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %26, i32 %27, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2034

; <label>:2034                                    ; preds = %2033, %2010, %1978
  %2035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2036 = extractvalue %dx.types.CBufRet.f32 %2035, 2
  %2037 = fsub fast float %1980, %2036
  %2038 = fdiv fast float %2037, %2036
  %2039 = call float @dx.op.unary.f32(i32 7, float %2038)  ; Saturate(value)
  %2040 = fmul fast float %2039, 2.000000e+00
  %2041 = fsub fast float 3.000000e+00, %2040
  %2042 = fmul fast float %2039, %2039
  %2043 = fmul fast float %2042, %1980
  %2044 = fmul fast float %2043, %2041
  %2045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %2046 = extractvalue %dx.types.CBufRet.f32 %2045, 0
  %2047 = extractvalue %dx.types.CBufRet.f32 %2045, 1
  %2048 = extractvalue %dx.types.CBufRet.f32 %2045, 2
  %2049 = call float @dx.op.dot3.f32(i32 55, float %114, float %115, float %116, float %2046, float %2047, float %2048)  ; Dot3(ax,ay,az,bx,by,bz)
  %2050 = fmul fast float %2049, %1979
  %2051 = fcmp fast ogt float %1984, 0.000000e+00
  %2052 = fdiv fast float 1.000000e+00, %1984
  %2053 = fmul fast float %2050, %2052
  %2054 = select i1 %2051, float %2053, float %125
  %2055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2056 = extractvalue %dx.types.CBufRet.f32 %2055, 0
  %2057 = extractvalue %dx.types.CBufRet.f32 %2055, 1
  %2058 = extractvalue %dx.types.CBufRet.f32 %2055, 2
  %2059 = fmul fast float %2056, %78
  %2060 = fmul fast float %2057, %78
  %2061 = fmul fast float %2058, %78
  %2062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2063 = extractvalue %dx.types.CBufRet.f32 %2062, 0
  %2064 = extractvalue %dx.types.CBufRet.f32 %2062, 1
  %2065 = extractvalue %dx.types.CBufRet.f32 %2062, 2
  %2066 = fmul fast float %2063, %79
  %2067 = fmul fast float %2064, %79
  %2068 = fmul fast float %2065, %79
  %2069 = fadd fast float %2066, %2059
  %2070 = fadd fast float %2067, %2060
  %2071 = fadd fast float %2068, %2061
  %2072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2073 = extractvalue %dx.types.CBufRet.f32 %2072, 0
  %2074 = extractvalue %dx.types.CBufRet.f32 %2072, 1
  %2075 = extractvalue %dx.types.CBufRet.f32 %2072, 2
  %2076 = fadd fast float %2069, %2073
  %2077 = fadd fast float %2070, %2074
  %2078 = fadd fast float %2071, %2075
  %2079 = fmul fast float %2076, %2054
  %2080 = fmul fast float %2077, %2054
  %2081 = fmul fast float %2078, %2054
  %2082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %2083 = extractvalue %dx.types.CBufRet.f32 %2082, 0
  %2084 = extractvalue %dx.types.CBufRet.f32 %2082, 1
  %2085 = extractvalue %dx.types.CBufRet.f32 %2082, 2
  %2086 = extractvalue %dx.types.CBufRet.f32 %2082, 3
  %2087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %2088 = extractvalue %dx.types.CBufRet.f32 %2087, 0
  %2089 = extractvalue %dx.types.CBufRet.f32 %2087, 1
  %2090 = extractvalue %dx.types.CBufRet.f32 %2087, 2
  %2091 = extractvalue %dx.types.CBufRet.f32 %2087, 3
  %2092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %2093 = extractvalue %dx.types.CBufRet.f32 %2092, 0
  %2094 = extractvalue %dx.types.CBufRet.f32 %2092, 1
  %2095 = extractvalue %dx.types.CBufRet.f32 %2092, 2
  %2096 = extractvalue %dx.types.CBufRet.f32 %2092, 3
  %2097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %2098 = extractvalue %dx.types.CBufRet.f32 %2097, 0
  %2099 = extractvalue %dx.types.CBufRet.f32 %2097, 1
  %2100 = extractvalue %dx.types.CBufRet.f32 %2097, 2
  %2101 = extractvalue %dx.types.CBufRet.f32 %2097, 3
  %2102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %2103 = extractvalue %dx.types.CBufRet.f32 %2102, 3
  %2104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %2105 = extractvalue %dx.types.CBufRet.f32 %2104, 3
  %2106 = extractvalue %dx.types.CBufRet.f32 %2104, 0
  %2107 = extractvalue %dx.types.CBufRet.f32 %2104, 1
  %2108 = extractvalue %dx.types.CBufRet.f32 %2104, 2
  %2109 = fcmp fast olt float %2108, -5.000000e-01
  %2110 = call float @dx.op.dot3.f32(i32 55, float %2079, float %2080, float %2081, float %2079, float %2080, float %2081)  ; Dot3(ax,ay,az,bx,by,bz)
  %2111 = call float @dx.op.unary.f32(i32 25, float %2110)  ; Rsqrt(value)
  %2112 = fmul fast float %2111, %2110
  %2113 = fmul fast float %2111, %2079
  %2114 = fmul fast float %2111, %2080
  %2115 = fmul fast float %2111, %2081
  %2116 = fadd fast float %2112, %2086
  %2117 = call float @dx.op.dot3.f32(i32 55, float %2113, float %2114, float %2115, float %2083, float %2084, float %2085)  ; Dot3(ax,ay,az,bx,by,bz)
  %2118 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2119 = extractvalue %dx.types.CBufRet.i32 %2118, 1
  %2120 = and i32 %2119, 1
  %2121 = icmp ne i32 %2120, 0
  %2122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %2123 = extractvalue %dx.types.CBufRet.f32 %2122, 2
  %2124 = fcmp fast ogt float %2123, 0.000000e+00
  %2125 = and i1 %2121, %2124
  br i1 %2125, label %2126, label %2532, !dx.controlflow.hints !75

; <label>:2126                                    ; preds = %2034
  %2127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %2128 = extractvalue %dx.types.CBufRet.f32 %2127, 3
  %2129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2130 = extractvalue %dx.types.CBufRet.f32 %2129, 2
  %2131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2132 = extractvalue %dx.types.CBufRet.f32 %2131, 2
  %2133 = fsub fast float %2130, %2132
  %2134 = and i32 %2119, 2
  %2135 = extractvalue %dx.types.CBufRet.i32 %2118, 0
  %2136 = call i32 @dx.op.binary.i32(i32 40, i32 %2135, i32 3)  ; UMin(a,b)
  %2137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2138 = extractvalue %dx.types.CBufRet.f32 %2137, 0
  %2139 = extractvalue %dx.types.CBufRet.f32 %2137, 1
  %2140 = extractvalue %dx.types.CBufRet.f32 %2131, 0
  %2141 = extractvalue %dx.types.CBufRet.f32 %2131, 1
  %2142 = fsub fast float %2138, %2140
  %2143 = fsub fast float %2139, %2141
  %2144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2145 = extractvalue %dx.types.CBufRet.f32 %2144, 0
  %2146 = fcmp fast ogt float %2145, 0.000000e+00
  %2147 = fsub fast float -0.000000e+00, %2142
  %2148 = fsub fast float -0.000000e+00, %2143
  %2149 = call float @dx.op.dot2.f32(i32 54, float %2113, float %2114, float %2113, float %2114)  ; Dot2(ax,ay,bx,by)
  %2150 = call float @dx.op.dot2.f32(i32 54, float %2113, float %2114, float %2147, float %2148)  ; Dot2(ax,ay,bx,by)
  %2151 = fmul fast float %2150, 2.000000e+00
  %2152 = call float @dx.op.dot2.f32(i32 54, float %2147, float %2148, float %2147, float %2148)  ; Dot2(ax,ay,bx,by)
  %2153 = fmul fast float %2145, %2145
  %2154 = fsub fast float %2152, %2153
  %2155 = fmul fast float %2151, %2151
  %2156 = fmul fast float %2149, 4.000000e+00
  %2157 = fmul fast float %2156, %2154
  %2158 = fsub fast float %2155, %2157
  %2159 = fcmp fast ogt float %2158, 0.000000e+00
  br i1 %2159, label %2160, label %2175, !dx.controlflow.hints !76

; <label>:2160                                    ; preds = %2126
  %2161 = fcmp fast ogt float %2151, 0.000000e+00
  %2162 = call float @dx.op.unary.f32(i32 24, float %2158)  ; Sqrt(value)
  %2163 = fsub fast float -0.000000e+00, %2162
  %2164 = select i1 %2161, float %2162, float %2163
  %2165 = fadd fast float %2164, %2151
  %2166 = fmul float %2165, -5.000000e-01
  %2167 = fdiv fast float %2166, %2149
  %2168 = call float @dx.op.binary.f32(i32 35, float %2167, float 0.000000e+00)  ; FMax(a,b)
  %2169 = call float @dx.op.binary.f32(i32 36, float %2112, float %2168)  ; FMin(a,b)
  %2170 = fdiv fast float %2154, %2166
  %2171 = call float @dx.op.binary.f32(i32 35, float %2170, float 0.000000e+00)  ; FMax(a,b)
  %2172 = call float @dx.op.binary.f32(i32 36, float %2112, float %2171)  ; FMin(a,b)
  %2173 = call float @dx.op.binary.f32(i32 36, float %2169, float %2172)  ; FMin(a,b)
  %2174 = call float @dx.op.binary.f32(i32 35, float %2169, float %2172)  ; FMax(a,b)
  br label %2175

; <label>:2175                                    ; preds = %2160, %2126
  %2176 = phi float [ %2174, %2160 ], [ -1.000000e+00, %2126 ]
  %2177 = phi float [ %2173, %2160 ], [ -1.000000e+00, %2126 ]
  %2178 = phi i1 [ true, %2160 ], [ false, %2126 ]
  %2179 = and i1 %2146, %2178
  br i1 %2179, label %2180, label %2182, !dx.controlflow.hints !77

; <label>:2180                                    ; preds = %2175
  %2181 = fcmp fast oeq float %2177, %2176
  br i1 %2181, label %2485, label %2183, !dx.controlflow.hints !78

; <label>:2182                                    ; preds = %2175
  br i1 %2146, label %2485, label %2183, !dx.controlflow.hints !79

; <label>:2183                                    ; preds = %2182, %2180
  %2184 = phi float [ %2112, %2182 ], [ %2176, %2180 ]
  %2185 = phi float [ 0.000000e+00, %2182 ], [ %2177, %2180 ]
  %2186 = icmp ne i32 %2134, 0
  %2187 = fmul fast float %2184, %2115
  %2188 = fadd fast float %2187, %2128
  %2189 = fmul fast float %2188, %2184
  %2190 = select i1 %2186, float 0.000000e+00, float %2189
  %2191 = fcmp fast oeq float %2115, 0.000000e+00
  %2192 = fdiv fast float %2133, %2115
  %2193 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2192)  ; FMax(a,b)
  %2194 = select i1 %2191, float %2184, float %2193
  %2195 = call float @dx.op.binary.f32(i32 36, float %2184, float %2194)  ; FMin(a,b)
  %2196 = fcmp fast ogt float %2115, 0.000000e+00
  %2197 = fcmp fast olt float %2133, 0.000000e+00
  br i1 %2196, label %2198, label %2255, !dx.controlflow.hints !80

; <label>:2198                                    ; preds = %2183
  %2199 = icmp eq i32 %2134, 0
  br i1 %2197, label %2200, label %2244, !dx.controlflow.hints !81

; <label>:2200                                    ; preds = %2198
  %2201 = select i1 %2199, float %2184, float 0.000000e+00
  %2202 = fsub fast float -0.000000e+00, %2201
  %2203 = call float @dx.op.unary.f32(i32 6, float %2202)  ; FAbs(value)
  %2204 = fmul fast float %2201, %2115
  %2205 = fadd fast float %2204, %2128
  %2206 = fmul fast float %2203, %2205
  %2207 = fsub fast float %2190, %2206
  %2208 = fsub fast float %2184, %2203
  %2209 = select i1 %2199, float %2208, float 0.000000e+00
  %2210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2211 = extractvalue %dx.types.CBufRet.f32 %2210, 0
  %2212 = extractvalue %dx.types.CBufRet.f32 %2210, 1
  %2213 = extractvalue %dx.types.CBufRet.f32 %2210, 2
  %2214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2215 = extractvalue %dx.types.CBufRet.f32 %2214, 0
  %2216 = extractvalue %dx.types.CBufRet.f32 %2214, 1
  %2217 = extractvalue %dx.types.CBufRet.f32 %2214, 2
  %2218 = extractvalue %dx.types.CBufRet.f32 %2214, 3
  %2219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2220 = extractvalue %dx.types.CBufRet.f32 %2219, 3
  %2221 = call float @dx.op.binary.f32(i32 36, float %2207, float %2220)  ; FMin(a,b)
  %2222 = fmul fast float %2218, %2209
  %2223 = call float @dx.op.unary.f32(i32 7, float %2222)  ; Saturate(value)
  %2224 = fsub fast float %2215, %2211
  %2225 = fsub fast float %2216, %2212
  %2226 = fsub fast float %2217, %2213
  %2227 = fmul fast float %2223, %2224
  %2228 = fmul fast float %2223, %2225
  %2229 = fmul fast float %2223, %2226
  %2230 = fadd fast float %2227, %2211
  %2231 = fadd fast float %2228, %2212
  %2232 = fadd fast float %2229, %2213
  %2233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2234 = extractvalue %dx.types.CBufRet.f32 %2233, 0
  %2235 = extractvalue %dx.types.CBufRet.f32 %2233, 1
  %2236 = fadd fast float %2235, %2234
  %2237 = call float @dx.op.unary.f32(i32 7, float %2236)  ; Saturate(value)
  %2238 = extractvalue %dx.types.CBufRet.f32 %2233, 2
  %2239 = extractvalue %dx.types.CBufRet.f32 %2233, 3
  %2240 = fadd fast float %2239, %2238
  %2241 = call float @dx.op.unary.f32(i32 7, float %2240)  ; Saturate(value)
  %2242 = fmul fast float %2237, %2221
  %2243 = fmul fast float %2242, %2241
  br label %2485

; <label>:2244                                    ; preds = %2198
  br i1 %2199, label %2245, label %2266, !dx.controlflow.hints !82

; <label>:2245                                    ; preds = %2244
  %2246 = call float @dx.op.binary.f32(i32 36, float %2195, float %2185)  ; FMin(a,b)
  %2247 = fsub fast float %2195, %2246
  %2248 = fsub fast float %2247, %2184
  %2249 = call float @dx.op.unary.f32(i32 6, float %2248)  ; FAbs(value)
  %2250 = fadd fast float %2247, %2184
  %2251 = fmul fast float %2250, %2115
  %2252 = fadd fast float %2251, %2128
  %2253 = fmul fast float %2252, %2249
  %2254 = fsub fast float %2190, %2253
  br label %2266

; <label>:2255                                    ; preds = %2183
  br i1 %2197, label %2256, label %2266, !dx.controlflow.hints !83

; <label>:2256                                    ; preds = %2255
  %2257 = call float @dx.op.binary.f32(i32 35, float %2185, float %2195)  ; FMax(a,b)
  %2258 = icmp eq i32 %2134, 0
  %2259 = select i1 %2258, float %2195, float 0.000000e+00
  %2260 = fsub fast float -0.000000e+00, %2259
  %2261 = call float @dx.op.unary.f32(i32 6, float %2260)  ; FAbs(value)
  %2262 = fmul fast float %2259, %2115
  %2263 = fadd fast float %2262, %2128
  %2264 = fmul fast float %2261, %2263
  %2265 = fsub fast float %2190, %2264
  br label %2266

; <label>:2266                                    ; preds = %2256, %2255, %2245, %2244
  %2267 = phi float [ %2185, %2244 ], [ %2185, %2245 ], [ %2257, %2256 ], [ %2185, %2255 ]
  %2268 = phi float [ 0.000000e+00, %2244 ], [ %2249, %2245 ], [ %2261, %2256 ], [ 0.000000e+00, %2255 ]
  %2269 = phi float [ %2190, %2244 ], [ %2254, %2245 ], [ %2265, %2256 ], [ %2190, %2255 ]
  %2270 = phi float [ %2195, %2244 ], [ %2195, %2245 ], [ %2184, %2256 ], [ %2184, %2255 ]
  %2271 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 0
  store float -1.000000e+00, float* %2271, align 4, !tbaa !84, !noalias !88
  %2272 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 1
  store float -1.000000e+00, float* %2272, align 4, !tbaa !84, !noalias !88
  %2273 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 2
  store float -1.000000e+00, float* %2273, align 4, !tbaa !84, !noalias !88
  %2274 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 0
  store float -1.000000e+00, float* %2274, align 4, !tbaa !84, !noalias !88
  %2275 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 1
  store float -1.000000e+00, float* %2275, align 4, !tbaa !84, !noalias !88
  %2276 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 2
  store float -1.000000e+00, float* %2276, align 4, !tbaa !84, !noalias !88
  %2277 = icmp sgt i32 %2136, 0
  br i1 %2277, label %2278, label %2339

; <label>:2278                                    ; preds = %2266
  br label %2279

; <label>:2279                                    ; preds = %2328, %2278
  %2280 = phi i32 [ %2329, %2328 ], [ 0, %2278 ]
  %2281 = phi i32 [ %2330, %2328 ], [ 0, %2278 ]
  %2282 = add nuw i32 %2281, 171
  %2283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 %2282)  ; CBufferLoadLegacy(handle,regIndex)
  %2284 = extractvalue %dx.types.CBufRet.f32 %2283, 0
  %2285 = extractvalue %dx.types.CBufRet.f32 %2283, 1
  %2286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2287 = extractvalue %dx.types.CBufRet.f32 %2286, 0
  %2288 = extractvalue %dx.types.CBufRet.f32 %2286, 1
  %2289 = fsub fast float %2284, %2287
  %2290 = fsub fast float %2285, %2288
  %2291 = extractvalue %dx.types.CBufRet.f32 %2283, 2
  %2292 = fsub fast float -0.000000e+00, %2289
  %2293 = fsub fast float -0.000000e+00, %2290
  %2294 = call float @dx.op.dot2.f32(i32 54, float %2113, float %2114, float %2292, float %2293)  ; Dot2(ax,ay,bx,by)
  %2295 = fmul fast float %2294, 2.000000e+00
  %2296 = call float @dx.op.dot2.f32(i32 54, float %2292, float %2293, float %2292, float %2293)  ; Dot2(ax,ay,bx,by)
  %2297 = fmul fast float %2291, %2291
  %2298 = fsub fast float %2296, %2297
  %2299 = fmul fast float %2295, %2295
  %2300 = fmul fast float %2156, %2298
  %2301 = fsub fast float %2299, %2300
  %2302 = fcmp fast ogt float %2301, 0.000000e+00
  br i1 %2302, label %2303, label %2318, !dx.controlflow.hints !76

; <label>:2303                                    ; preds = %2279
  %2304 = fcmp fast ogt float %2295, 0.000000e+00
  %2305 = call float @dx.op.unary.f32(i32 24, float %2301)  ; Sqrt(value)
  %2306 = fsub fast float -0.000000e+00, %2305
  %2307 = select i1 %2304, float %2305, float %2306
  %2308 = fadd fast float %2307, %2295
  %2309 = fmul float %2308, -5.000000e-01
  %2310 = fdiv fast float %2309, %2149
  %2311 = call float @dx.op.binary.f32(i32 35, float %2310, float 0.000000e+00)  ; FMax(a,b)
  %2312 = call float @dx.op.binary.f32(i32 36, float %2184, float %2311)  ; FMin(a,b)
  %2313 = fdiv fast float %2298, %2309
  %2314 = call float @dx.op.binary.f32(i32 35, float %2313, float 0.000000e+00)  ; FMax(a,b)
  %2315 = call float @dx.op.binary.f32(i32 36, float %2184, float %2314)  ; FMin(a,b)
  %2316 = call float @dx.op.binary.f32(i32 36, float %2312, float %2315)  ; FMin(a,b)
  %2317 = call float @dx.op.binary.f32(i32 35, float %2312, float %2315)  ; FMax(a,b)
  br label %2318

; <label>:2318                                    ; preds = %2303, %2279
  %2319 = phi float [ %2317, %2303 ], [ -1.000000e+00, %2279 ]
  %2320 = phi float [ %2316, %2303 ], [ -1.000000e+00, %2279 ]
  %2321 = phi i1 [ true, %2303 ], [ false, %2279 ]
  br i1 %2321, label %2322, label %2328, !dx.controlflow.hints !99

; <label>:2322                                    ; preds = %2318
  %2323 = call float @dx.op.binary.f32(i32 35, float %2267, float %2320)  ; FMax(a,b)
  %2324 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %2281
  store float %2323, float* %2324, align 4, !tbaa !84, !noalias !88
  %2325 = call float @dx.op.binary.f32(i32 35, float %2267, float %2319)  ; FMax(a,b)
  %2326 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %2281
  store float %2325, float* %2326, align 4, !tbaa !84, !noalias !88
  %2327 = add nsw i32 %2280, 1
  br label %2328

; <label>:2328                                    ; preds = %2322, %2318
  %2329 = phi i32 [ %2327, %2322 ], [ %2280, %2318 ]
  %2330 = add nuw nsw i32 %2281, 1
  %2331 = icmp eq i32 %2330, %2136
  br i1 %2331, label %2332, label %2279

; <label>:2332                                    ; preds = %2328
  %2333 = load float, float* %2273, align 4, !tbaa !84, !alias.scope !100, !noalias !103
  %2334 = load float, float* %2272, align 4, !tbaa !84, !alias.scope !106, !noalias !107
  %2335 = load float, float* %2271, align 4, !tbaa !84, !alias.scope !108, !noalias !109
  %2336 = load float, float* %2276, align 4, !tbaa !84, !alias.scope !110, !noalias !113
  %2337 = load float, float* %2275, align 4, !tbaa !84, !alias.scope !116, !noalias !117
  %2338 = load float, float* %2274, align 4, !tbaa !84, !alias.scope !118, !noalias !119
  br label %2339

; <label>:2339                                    ; preds = %2332, %2266
  %2340 = phi float [ -1.000000e+00, %2266 ], [ %2338, %2332 ]
  %2341 = phi float [ -1.000000e+00, %2266 ], [ %2337, %2332 ]
  %2342 = phi float [ -1.000000e+00, %2266 ], [ %2336, %2332 ]
  %2343 = phi float [ -1.000000e+00, %2266 ], [ %2335, %2332 ]
  %2344 = phi float [ -1.000000e+00, %2266 ], [ %2334, %2332 ]
  %2345 = phi float [ -1.000000e+00, %2266 ], [ %2333, %2332 ]
  %2346 = phi i32 [ 0, %2266 ], [ %2329, %2332 ]
  %2347 = call float @dx.op.binary.f32(i32 36, float %2344, float %2345)  ; FMin(a,b)
  %2348 = call float @dx.op.binary.f32(i32 36, float %2343, float %2347)  ; FMin(a,b)
  %2349 = call float @dx.op.binary.f32(i32 35, float %2343, float %2344)  ; FMax(a,b)
  %2350 = call float @dx.op.binary.f32(i32 36, float %2349, float %2345)  ; FMin(a,b)
  %2351 = call float @dx.op.binary.f32(i32 36, float %2343, float %2344)  ; FMin(a,b)
  %2352 = call float @dx.op.binary.f32(i32 35, float %2351, float %2350)  ; FMax(a,b)
  %2353 = call float @dx.op.binary.f32(i32 35, float %2344, float %2345)  ; FMax(a,b)
  %2354 = call float @dx.op.binary.f32(i32 35, float %2343, float %2353)  ; FMax(a,b)
  store float %2348, float* %2271, align 4, !tbaa !84, !alias.scope !108, !noalias !109
  store float %2352, float* %2272, align 4, !tbaa !84, !alias.scope !106, !noalias !107
  store float %2354, float* %2273, align 4, !tbaa !84, !alias.scope !100, !noalias !103
  %2355 = call float @dx.op.binary.f32(i32 36, float %2341, float %2342)  ; FMin(a,b)
  %2356 = call float @dx.op.binary.f32(i32 36, float %2340, float %2355)  ; FMin(a,b)
  %2357 = call float @dx.op.binary.f32(i32 35, float %2340, float %2341)  ; FMax(a,b)
  %2358 = call float @dx.op.binary.f32(i32 36, float %2357, float %2342)  ; FMin(a,b)
  %2359 = call float @dx.op.binary.f32(i32 36, float %2340, float %2341)  ; FMin(a,b)
  %2360 = call float @dx.op.binary.f32(i32 35, float %2359, float %2358)  ; FMax(a,b)
  %2361 = call float @dx.op.binary.f32(i32 35, float %2341, float %2342)  ; FMax(a,b)
  %2362 = call float @dx.op.binary.f32(i32 35, float %2340, float %2361)  ; FMax(a,b)
  store float %2356, float* %2274, align 4, !tbaa !84, !alias.scope !118, !noalias !119
  store float %2360, float* %2275, align 4, !tbaa !84, !alias.scope !116, !noalias !117
  store float %2362, float* %2276, align 4, !tbaa !84, !alias.scope !110, !noalias !113
  %2363 = sub nsw i32 3, %2346
  %2364 = icmp sgt i32 %2363, 2
  br i1 %2364, label %2365, label %2403, !dx.controlflow.hints !120

; <label>:2365                                    ; preds = %2339
  %2366 = icmp eq i32 %2134, 0
  %2367 = fsub fast float %2184, %2268
  %2368 = select i1 %2366, float %2367, float %2268
  %2369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2370 = extractvalue %dx.types.CBufRet.f32 %2369, 0
  %2371 = extractvalue %dx.types.CBufRet.f32 %2369, 1
  %2372 = extractvalue %dx.types.CBufRet.f32 %2369, 2
  %2373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2374 = extractvalue %dx.types.CBufRet.f32 %2373, 0
  %2375 = extractvalue %dx.types.CBufRet.f32 %2373, 1
  %2376 = extractvalue %dx.types.CBufRet.f32 %2373, 2
  %2377 = extractvalue %dx.types.CBufRet.f32 %2373, 3
  %2378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2379 = extractvalue %dx.types.CBufRet.f32 %2378, 3
  %2380 = call float @dx.op.binary.f32(i32 36, float %2269, float %2379)  ; FMin(a,b)
  %2381 = fmul fast float %2377, %2368
  %2382 = call float @dx.op.unary.f32(i32 7, float %2381)  ; Saturate(value)
  %2383 = fsub fast float %2374, %2370
  %2384 = fsub fast float %2375, %2371
  %2385 = fsub fast float %2376, %2372
  %2386 = fmul fast float %2382, %2383
  %2387 = fmul fast float %2382, %2384
  %2388 = fmul fast float %2382, %2385
  %2389 = fadd fast float %2386, %2370
  %2390 = fadd fast float %2387, %2371
  %2391 = fadd fast float %2388, %2372
  %2392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2393 = extractvalue %dx.types.CBufRet.f32 %2392, 0
  %2394 = extractvalue %dx.types.CBufRet.f32 %2392, 1
  %2395 = fadd fast float %2394, %2393
  %2396 = call float @dx.op.unary.f32(i32 7, float %2395)  ; Saturate(value)
  %2397 = extractvalue %dx.types.CBufRet.f32 %2392, 2
  %2398 = extractvalue %dx.types.CBufRet.f32 %2392, 3
  %2399 = fadd fast float %2398, %2397
  %2400 = call float @dx.op.unary.f32(i32 7, float %2399)  ; Saturate(value)
  %2401 = fmul fast float %2396, %2380
  %2402 = fmul fast float %2401, %2400
  br label %2485

; <label>:2403                                    ; preds = %2339
  %2404 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %2363
  %2405 = load float, float* %2404, align 4, !tbaa !84, !noalias !88
  %2406 = fcmp fast olt float %2405, %2270
  %2407 = icmp sgt i32 %2346, 0
  %2408 = and i1 %2407, %2406
  br i1 %2408, label %2409, label %2446

; <label>:2409                                    ; preds = %2403
  br label %2410

; <label>:2410                                    ; preds = %2439, %2409
  %2411 = phi float [ %2440, %2439 ], [ %2268, %2409 ]
  %2412 = phi float [ %2441, %2439 ], [ %2269, %2409 ]
  %2413 = phi float [ %2421, %2439 ], [ %2405, %2409 ]
  %2414 = phi i32 [ %2418, %2439 ], [ %2363, %2409 ]
  %2415 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %2414
  %2416 = load float, float* %2415, align 4, !tbaa !84, !noalias !88
  %2417 = icmp slt i32 %2414, 2
  %2418 = add nsw i32 %2414, 1
  %2419 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %2418
  %2420 = load float, float* %2419, align 4, !tbaa !84, !noalias !88
  %2421 = select i1 %2417, float %2420, float %2184
  %2422 = call float @dx.op.binary.f32(i32 36, float %2421, float %2416)  ; FMin(a,b)
  %2423 = call float @dx.op.binary.f32(i32 36, float %2270, float %2422)  ; FMin(a,b)
  %2424 = icmp eq i32 %2134, 0
  %2425 = fadd fast float %2423, %2413
  %2426 = fmul fast float %2425, %2115
  %2427 = fadd fast float %2426, %2128
  br i1 %2424, label %2433, label %2428, !dx.controlflow.hints !121

; <label>:2428                                    ; preds = %2410
  %2429 = fsub fast float %2423, %2413
  %2430 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2429)  ; FMax(a,b)
  %2431 = fmul fast float %2430, %2427
  %2432 = fadd fast float %2431, %2412
  br label %2439

; <label>:2433                                    ; preds = %2410
  %2434 = fsub fast float %2413, %2423
  %2435 = call float @dx.op.unary.f32(i32 6, float %2434)  ; FAbs(value)
  %2436 = fadd fast float %2435, %2411
  %2437 = fmul fast float %2435, %2427
  %2438 = fsub fast float %2412, %2437
  br label %2439

; <label>:2439                                    ; preds = %2433, %2428
  %2440 = phi float [ %2430, %2428 ], [ %2436, %2433 ]
  %2441 = phi float [ %2432, %2428 ], [ %2438, %2433 ]
  %2442 = fcmp fast olt float %2421, %2270
  %2443 = icmp slt i32 %2418, 3
  %2444 = and i1 %2443, %2442
  br i1 %2444, label %2410, label %2445

; <label>:2445                                    ; preds = %2439
  br label %2446

; <label>:2446                                    ; preds = %2445, %2403
  %2447 = phi float [ %2268, %2403 ], [ %2440, %2445 ]
  %2448 = phi float [ %2269, %2403 ], [ %2441, %2445 ]
  %2449 = fsub fast float %2184, %2447
  %2450 = select i1 %2186, float %2447, float %2449
  %2451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2452 = extractvalue %dx.types.CBufRet.f32 %2451, 0
  %2453 = extractvalue %dx.types.CBufRet.f32 %2451, 1
  %2454 = extractvalue %dx.types.CBufRet.f32 %2451, 2
  %2455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2456 = extractvalue %dx.types.CBufRet.f32 %2455, 0
  %2457 = extractvalue %dx.types.CBufRet.f32 %2455, 1
  %2458 = extractvalue %dx.types.CBufRet.f32 %2455, 2
  %2459 = extractvalue %dx.types.CBufRet.f32 %2455, 3
  %2460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2461 = extractvalue %dx.types.CBufRet.f32 %2460, 3
  %2462 = call float @dx.op.binary.f32(i32 36, float %2448, float %2461)  ; FMin(a,b)
  %2463 = fmul fast float %2459, %2450
  %2464 = call float @dx.op.unary.f32(i32 7, float %2463)  ; Saturate(value)
  %2465 = fsub fast float %2456, %2452
  %2466 = fsub fast float %2457, %2453
  %2467 = fsub fast float %2458, %2454
  %2468 = fmul fast float %2464, %2465
  %2469 = fmul fast float %2464, %2466
  %2470 = fmul fast float %2464, %2467
  %2471 = fadd fast float %2468, %2452
  %2472 = fadd fast float %2469, %2453
  %2473 = fadd fast float %2470, %2454
  %2474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2475 = extractvalue %dx.types.CBufRet.f32 %2474, 0
  %2476 = extractvalue %dx.types.CBufRet.f32 %2474, 1
  %2477 = fadd fast float %2476, %2475
  %2478 = call float @dx.op.unary.f32(i32 7, float %2477)  ; Saturate(value)
  %2479 = extractvalue %dx.types.CBufRet.f32 %2474, 2
  %2480 = extractvalue %dx.types.CBufRet.f32 %2474, 3
  %2481 = fadd fast float %2480, %2479
  %2482 = call float @dx.op.unary.f32(i32 7, float %2481)  ; Saturate(value)
  %2483 = fmul fast float %2478, %2462
  %2484 = fmul fast float %2483, %2482
  br label %2485

; <label>:2485                                    ; preds = %2446, %2365, %2200, %2182, %2180
  %2486 = phi float [ %2209, %2200 ], [ %2368, %2365 ], [ %2450, %2446 ], [ 0.000000e+00, %2180 ], [ 0.000000e+00, %2182 ]
  %2487 = phi float [ %2243, %2200 ], [ %2402, %2365 ], [ %2484, %2446 ], [ 0.000000e+00, %2180 ], [ 0.000000e+00, %2182 ]
  %2488 = phi float [ %2230, %2200 ], [ %2389, %2365 ], [ %2471, %2446 ], [ 0.000000e+00, %2180 ], [ 0.000000e+00, %2182 ]
  %2489 = phi float [ %2231, %2200 ], [ %2390, %2365 ], [ %2472, %2446 ], [ 0.000000e+00, %2180 ], [ 0.000000e+00, %2182 ]
  %2490 = phi float [ %2232, %2200 ], [ %2391, %2365 ], [ %2473, %2446 ], [ 0.000000e+00, %2180 ], [ 0.000000e+00, %2182 ]
  %2491 = fmul fast float %2123, %2487
  %2492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2493 = extractvalue %dx.types.CBufRet.f32 %2492, 2
  %2494 = fsub fast float %2130, %2493
  %2495 = fcmp fast olt float %2491, -2.000000e+01
  %2496 = call float @dx.op.unary.f32(i32 21, float %2491)  ; Exp(value)
  %2497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2498 = extractvalue %dx.types.CBufRet.f32 %2497, 2
  %2499 = extractvalue %dx.types.CBufRet.f32 %2497, 3
  %2500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2501 = extractvalue %dx.types.CBufRet.f32 %2500, 2
  %2502 = fmul fast float %2499, %2494
  %2503 = call float @dx.op.unary.f32(i32 7, float %2502)  ; Saturate(value)
  %2504 = fsub fast float 1.000000e+00, %2503
  %2505 = fmul fast float %2115, 5.000000e-01
  %2506 = fadd fast float %2505, 5.000000e-01
  %2507 = call float @dx.op.unary.f32(i32 7, float %2506)  ; Saturate(value)
  %2508 = fsub fast float 1.000000e+00, %2507
  %2509 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2504)  ; FMax(a,b)
  %2510 = fdiv fast float %2508, %2509
  %2511 = fsub fast float %2494, %2081
  %2512 = call float @dx.op.unary.f32(i32 6, float %2511)  ; FAbs(value)
  %2513 = fmul fast float %2512, %2498
  %2514 = call float @dx.op.unary.f32(i32 7, float %2510)  ; Saturate(value)
  %2515 = fsub fast float 1.000000e+00, %2513
  %2516 = fmul fast float %2515, %2514
  %2517 = fadd fast float %2516, %2513
  %2518 = fmul fast float %2501, %2494
  %2519 = call float @dx.op.unary.f32(i32 7, float %2518)  ; Saturate(value)
  %2520 = fsub fast float 1.000000e+00, %2517
  %2521 = fmul fast float %2520, %2519
  %2522 = fadd fast float %2521, %2517
  %2523 = call float @dx.op.unary.f32(i32 7, float %2522)  ; Saturate(value)
  %2524 = fadd fast float %2496, -1.000000e+00
  %2525 = select i1 %2495, float -1.000000e+00, float %2524
  %2526 = fmul fast float %2523, %2525
  %2527 = fadd fast float %2526, 1.000000e+00
  %2528 = fsub fast float -0.000000e+00, %2526
  %2529 = fmul fast float %2488, %2528
  %2530 = fmul fast float %2489, %2528
  %2531 = fmul fast float %2490, %2528
  br label %2532

; <label>:2532                                    ; preds = %2485, %2034
  %2533 = phi float [ %2486, %2485 ], [ 0.000000e+00, %2034 ]
  %2534 = phi float [ %2527, %2485 ], [ 1.000000e+00, %2034 ]
  %2535 = phi float [ %2529, %2485 ], [ 0.000000e+00, %2034 ]
  %2536 = phi float [ %2530, %2485 ], [ 0.000000e+00, %2034 ]
  %2537 = phi float [ %2531, %2485 ], [ 0.000000e+00, %2034 ]
  %2538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2539 = extractvalue %dx.types.CBufRet.f32 %2538, 1
  %2540 = fsub fast float 1.000000e+00, %2534
  %2541 = fmul fast float %2540, %2116
  %2542 = fmul fast float %2541, %2539
  %2543 = fsub fast float %2116, %2542
  br i1 %2109, label %2544, label %2573, !dx.controlflow.hints !122

; <label>:2544                                    ; preds = %2532
  %2545 = fmul fast float %2117, %2106
  %2546 = fadd fast float %2545, %2107
  %2547 = call float @dx.op.unary.f32(i32 7, float %2546)  ; Saturate(value)
  %2548 = fmul fast float %2088, %2543
  %2549 = fsub fast float -0.000000e+00, %2548
  %2550 = fmul fast float %2089, %2543
  %2551 = fsub fast float -0.000000e+00, %2550
  %2552 = call float @dx.op.unary.f32(i32 21, float %2549)  ; Exp(value)
  %2553 = call float @dx.op.unary.f32(i32 21, float %2551)  ; Exp(value)
  %2554 = call float @dx.op.binary.f32(i32 35, float %2096, float %2552)  ; FMax(a,b)
  %2555 = call float @dx.op.binary.f32(i32 35, float %2096, float %2553)  ; FMax(a,b)
  %2556 = fsub fast float %2555, %2554
  %2557 = fmul fast float %2556, %2547
  %2558 = fadd fast float %2557, %2554
  %2559 = call float @dx.op.unary.f32(i32 7, float %2558)  ; Saturate(value)
  %2560 = fsub fast float %2093, %2098
  %2561 = fsub fast float %2094, %2099
  %2562 = fsub fast float %2095, %2100
  %2563 = fmul fast float %2547, %2560
  %2564 = fmul fast float %2547, %2561
  %2565 = fmul fast float %2547, %2562
  %2566 = fadd fast float %2563, %2098
  %2567 = fadd fast float %2564, %2099
  %2568 = fadd fast float %2565, %2100
  %2569 = fsub fast float 1.000000e+00, %2559
  %2570 = fmul fast float %2569, %2566
  %2571 = fmul fast float %2569, %2567
  %2572 = fmul fast float %2569, %2568
  br label %2632

; <label>:2573                                    ; preds = %2532
  %2574 = fmul fast float %2543, %2105
  %2575 = call float @dx.op.unary.f32(i32 7, float %2574)  ; Saturate(value)
  %2576 = fsub fast float 2.000000e+00, %2575
  %2577 = fmul fast float %2575, 9.921875e-01
  %2578 = fmul fast float %2577, %2576
  %2579 = fadd fast float %2578, 3.906250e-03
  %2580 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %23, float %2579, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2581 = extractvalue %dx.types.ResRet.f32 %2580, 0
  %2582 = fsub fast float %2575, %2581
  %2583 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2582)  ; FMax(a,b)
  %2584 = fmul fast float %2091, %2081
  %2585 = call float @dx.op.unary.f32(i32 6, float %2584)  ; FAbs(value)
  %2586 = fcmp fast ogt float %2585, 0x3EB0C6F7A0000000
  br i1 %2586, label %2587, label %2593, !dx.controlflow.hints !123

; <label>:2587                                    ; preds = %2573
  %2588 = fmul fast float %2584, 0xBFF7154760000000
  %2589 = call float @dx.op.unary.f32(i32 21, float %2588)  ; Exp(value)
  %2590 = fsub fast float 1.000000e+00, %2589
  %2591 = fdiv fast float %2590, %2584
  %2592 = fmul fast float %2591, %2101
  br label %2593

; <label>:2593                                    ; preds = %2587, %2573
  %2594 = phi float [ %2592, %2587 ], [ %2101, %2573 ]
  %2595 = fadd fast float %2594, %2103
  %2596 = fmul fast float %2595, %2583
  %2597 = fmul fast float %2088, %2596
  %2598 = fsub fast float -0.000000e+00, %2597
  %2599 = fmul fast float %2089, %2596
  %2600 = fsub fast float -0.000000e+00, %2599
  %2601 = fmul fast float %2090, %2596
  %2602 = fsub fast float -0.000000e+00, %2601
  %2603 = call float @dx.op.unary.f32(i32 21, float %2598)  ; Exp(value)
  %2604 = call float @dx.op.unary.f32(i32 21, float %2600)  ; Exp(value)
  %2605 = call float @dx.op.unary.f32(i32 21, float %2602)  ; Exp(value)
  %2606 = fmul fast float %2117, %2117
  %2607 = fadd fast float %2606, 1.000000e+00
  %2608 = fmul fast float %2607, 0x3FAE8EC8A0000000
  %2609 = fmul fast float %2608, %2098
  %2610 = fmul fast float %2608, %2099
  %2611 = fmul fast float %2608, %2100
  %2612 = fmul fast float %2117, %2096
  %2613 = fsub fast float 1.000000e+00, %2612
  %2614 = fmul fast float %2096, %2096
  %2615 = fsub fast float 1.000000e+00, %2614
  %2616 = fmul fast float %2615, 0x3FB45F3060000000
  %2617 = fmul fast float %2613, %2613
  %2618 = fdiv fast float 1.000000e+00, %2617
  %2619 = fmul fast float %2616, %2618
  %2620 = fmul fast float %2619, %2093
  %2621 = fmul fast float %2619, %2094
  %2622 = fmul fast float %2619, %2095
  %2623 = fadd fast float %2620, %2609
  %2624 = fadd fast float %2621, %2610
  %2625 = fadd fast float %2622, %2611
  %2626 = fsub fast float 1.000000e+00, %2603
  %2627 = fsub fast float 1.000000e+00, %2604
  %2628 = fsub fast float 1.000000e+00, %2605
  %2629 = fmul fast float %2623, %2626
  %2630 = fmul fast float %2624, %2627
  %2631 = fmul fast float %2625, %2628
  br label %2632

; <label>:2632                                    ; preds = %2593, %2544
  %2633 = phi float [ %2570, %2544 ], [ %2629, %2593 ]
  %2634 = phi float [ %2571, %2544 ], [ %2630, %2593 ]
  %2635 = phi float [ %2572, %2544 ], [ %2631, %2593 ]
  %2636 = phi float [ %2559, %2544 ], [ %2603, %2593 ]
  %2637 = phi float [ %2559, %2544 ], [ %2604, %2593 ]
  %2638 = phi float [ %2559, %2544 ], [ %2605, %2593 ]
  br i1 %2125, label %2639, label %2837, !dx.controlflow.hints !124

; <label>:2639                                    ; preds = %2632
  %2640 = extractvalue %dx.types.CBufRet.f32 %2538, 0
  %2641 = fmul fast float %2640, %2540
  %2642 = fsub fast float %2535, %2633
  %2643 = fsub fast float %2536, %2634
  %2644 = fsub fast float %2537, %2635
  %2645 = fmul fast float %2641, %2642
  %2646 = fmul fast float %2641, %2643
  %2647 = fmul fast float %2641, %2644
  %2648 = fadd fast float %2645, %2633
  %2649 = fadd fast float %2646, %2634
  %2650 = fadd fast float %2647, %2635
  %2651 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2636)  ; FMax(a,b)
  %2652 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2637)  ; FMax(a,b)
  %2653 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2638)  ; FMax(a,b)
  %2654 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2534)  ; FMax(a,b)
  %2655 = call float @dx.op.binary.f32(i32 35, float %2533, float %2543)  ; FMax(a,b)
  %2656 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2655)  ; FMax(a,b)
  %2657 = fdiv fast float %2533, %2656
  %2658 = call float @dx.op.unary.f32(i32 7, float %2657)  ; Saturate(value)
  %2659 = fdiv fast float %2543, %2656
  %2660 = call float @dx.op.unary.f32(i32 7, float %2659)  ; Saturate(value)
  %2661 = fcmp fast une float %2654, 1.000000e+00
  br i1 %2661, label %2662, label %2675, !dx.controlflow.hints !125

; <label>:2662                                    ; preds = %2639
  %2663 = call float @dx.op.unary.f32(i32 23, float %2654)  ; Log(value)
  %2664 = fmul fast float %2663, 0x3FE62E4300000000
  %2665 = fmul fast float %2535, %2664
  %2666 = fsub fast float -0.000000e+00, %2665
  %2667 = fmul fast float %2536, %2664
  %2668 = fsub fast float -0.000000e+00, %2667
  %2669 = fmul fast float %2537, %2664
  %2670 = fsub fast float -0.000000e+00, %2669
  %2671 = fsub fast float 1.000000e+00, %2654
  %2672 = fdiv fast float %2666, %2671
  %2673 = fdiv fast float %2668, %2671
  %2674 = fdiv fast float %2670, %2671
  br label %2675

; <label>:2675                                    ; preds = %2662, %2639
  %2676 = phi float [ %2672, %2662 ], [ %2535, %2639 ]
  %2677 = phi float [ %2673, %2662 ], [ %2536, %2639 ]
  %2678 = phi float [ %2674, %2662 ], [ %2537, %2639 ]
  %2679 = phi float [ %2664, %2662 ], [ 0.000000e+00, %2639 ]
  %2680 = fcmp fast une float %2651, 1.000000e+00
  br i1 %2680, label %2681, label %2688, !dx.controlflow.hints !126

; <label>:2681                                    ; preds = %2675
  %2682 = call float @dx.op.unary.f32(i32 23, float %2651)  ; Log(value)
  %2683 = fmul fast float %2682, 0x3FE62E4300000000
  %2684 = fmul fast float %2648, %2683
  %2685 = fsub fast float -0.000000e+00, %2684
  %2686 = fsub fast float 1.000000e+00, %2651
  %2687 = fdiv fast float %2685, %2686
  br label %2688

; <label>:2688                                    ; preds = %2681, %2675
  %2689 = phi float [ %2687, %2681 ], [ %2648, %2675 ]
  %2690 = phi float [ %2683, %2681 ], [ 0.000000e+00, %2675 ]
  %2691 = fcmp fast une float %2652, 1.000000e+00
  br i1 %2691, label %2692, label %2699, !dx.controlflow.hints !126

; <label>:2692                                    ; preds = %2688
  %2693 = call float @dx.op.unary.f32(i32 23, float %2652)  ; Log(value)
  %2694 = fmul fast float %2693, 0x3FE62E4300000000
  %2695 = fmul fast float %2649, %2694
  %2696 = fsub fast float -0.000000e+00, %2695
  %2697 = fsub fast float 1.000000e+00, %2652
  %2698 = fdiv fast float %2696, %2697
  br label %2699

; <label>:2699                                    ; preds = %2692, %2688
  %2700 = phi float [ %2698, %2692 ], [ %2649, %2688 ]
  %2701 = phi float [ %2694, %2692 ], [ 0.000000e+00, %2688 ]
  %2702 = fcmp fast une float %2653, 1.000000e+00
  br i1 %2702, label %2703, label %2710, !dx.controlflow.hints !126

; <label>:2703                                    ; preds = %2699
  %2704 = call float @dx.op.unary.f32(i32 23, float %2653)  ; Log(value)
  %2705 = fmul fast float %2704, 0x3FE62E4300000000
  %2706 = fmul fast float %2650, %2705
  %2707 = fsub fast float -0.000000e+00, %2706
  %2708 = fsub fast float 1.000000e+00, %2653
  %2709 = fdiv fast float %2707, %2708
  br label %2710

; <label>:2710                                    ; preds = %2703, %2699
  %2711 = phi float [ %2709, %2703 ], [ %2650, %2699 ]
  %2712 = phi float [ %2705, %2703 ], [ 0.000000e+00, %2699 ]
  %2713 = fmul fast float %2676, %2660
  %2714 = fmul fast float %2677, %2660
  %2715 = fmul fast float %2678, %2660
  %2716 = fmul fast float %2679, %2660
  %2717 = fmul fast float %2689, %2658
  %2718 = fmul fast float %2700, %2658
  %2719 = fmul fast float %2711, %2658
  %2720 = fmul fast float %2690, %2658
  %2721 = fmul fast float %2701, %2658
  %2722 = fmul fast float %2712, %2658
  %2723 = fadd fast float %2717, %2713
  %2724 = fadd fast float %2718, %2714
  %2725 = fadd fast float %2719, %2715
  %2726 = fadd fast float %2720, %2716
  %2727 = fadd fast float %2721, %2716
  %2728 = fadd fast float %2722, %2716
  %2729 = fcmp fast une float %2726, 0.000000e+00
  br i1 %2729, label %2730, label %2737, !dx.controlflow.hints !127

; <label>:2730                                    ; preds = %2710
  %2731 = fmul fast float %2726, 0x3FF7154760000000
  %2732 = call float @dx.op.unary.f32(i32 21, float %2731)  ; Exp(value)
  %2733 = fsub fast float 1.000000e+00, %2732
  %2734 = fmul fast float %2723, %2733
  %2735 = fsub fast float -0.000000e+00, %2734
  %2736 = fdiv fast float %2735, %2726
  br label %2737

; <label>:2737                                    ; preds = %2730, %2710
  %2738 = phi float [ %2732, %2730 ], [ 1.000000e+00, %2710 ]
  %2739 = phi float [ %2736, %2730 ], [ %2723, %2710 ]
  %2740 = fcmp fast une float %2727, 0.000000e+00
  br i1 %2740, label %2741, label %2748, !dx.controlflow.hints !127

; <label>:2741                                    ; preds = %2737
  %2742 = fmul fast float %2727, 0x3FF7154760000000
  %2743 = call float @dx.op.unary.f32(i32 21, float %2742)  ; Exp(value)
  %2744 = fsub fast float 1.000000e+00, %2743
  %2745 = fmul fast float %2724, %2744
  %2746 = fsub fast float -0.000000e+00, %2745
  %2747 = fdiv fast float %2746, %2727
  br label %2748

; <label>:2748                                    ; preds = %2741, %2737
  %2749 = phi float [ %2743, %2741 ], [ 1.000000e+00, %2737 ]
  %2750 = phi float [ %2747, %2741 ], [ %2724, %2737 ]
  %2751 = fcmp fast une float %2728, 0.000000e+00
  br i1 %2751, label %2752, label %2759, !dx.controlflow.hints !127

; <label>:2752                                    ; preds = %2748
  %2753 = fmul fast float %2728, 0x3FF7154760000000
  %2754 = call float @dx.op.unary.f32(i32 21, float %2753)  ; Exp(value)
  %2755 = fsub fast float 1.000000e+00, %2754
  %2756 = fmul fast float %2725, %2755
  %2757 = fsub fast float -0.000000e+00, %2756
  %2758 = fdiv fast float %2757, %2728
  br label %2759

; <label>:2759                                    ; preds = %2752, %2748
  %2760 = phi float [ %2754, %2752 ], [ 1.000000e+00, %2748 ]
  %2761 = phi float [ %2758, %2752 ], [ %2725, %2748 ]
  %2762 = fcmp fast ogt float %2658, %2660
  br i1 %2762, label %2763, label %2783, !dx.controlflow.hints !128

; <label>:2763                                    ; preds = %2759
  %2764 = fsub fast float 1.000000e+00, %2660
  %2765 = fmul fast float %2676, %2764
  %2766 = fmul fast float %2677, %2764
  %2767 = fmul fast float %2678, %2764
  %2768 = fmul fast float %2679, %2764
  %2769 = fcmp fast une float %2768, 0.000000e+00
  br i1 %2769, label %2770, label %2821, !dx.controlflow.hints !129

; <label>:2770                                    ; preds = %2763
  %2771 = fmul fast float %2768, 0x3FF7154760000000
  %2772 = call float @dx.op.unary.f32(i32 21, float %2771)  ; Exp(value)
  %2773 = fsub fast float 1.000000e+00, %2772
  %2774 = fmul fast float %2765, %2773
  %2775 = fsub fast float -0.000000e+00, %2774
  %2776 = fmul fast float %2766, %2773
  %2777 = fsub fast float -0.000000e+00, %2776
  %2778 = fmul fast float %2767, %2773
  %2779 = fsub fast float -0.000000e+00, %2778
  %2780 = fdiv fast float %2775, %2768
  %2781 = fdiv fast float %2777, %2768
  %2782 = fdiv fast float %2779, %2768
  br label %2821

; <label>:2783                                    ; preds = %2759
  %2784 = fsub fast float 1.000000e+00, %2658
  %2785 = fmul fast float %2689, %2784
  %2786 = fmul fast float %2700, %2784
  %2787 = fmul fast float %2711, %2784
  %2788 = fmul fast float %2690, %2784
  %2789 = fmul fast float %2701, %2784
  %2790 = fmul fast float %2712, %2784
  %2791 = fcmp fast une float %2788, 0.000000e+00
  br i1 %2791, label %2792, label %2799, !dx.controlflow.hints !127

; <label>:2792                                    ; preds = %2783
  %2793 = fmul fast float %2788, 0x3FF7154760000000
  %2794 = call float @dx.op.unary.f32(i32 21, float %2793)  ; Exp(value)
  %2795 = fsub fast float 1.000000e+00, %2794
  %2796 = fmul fast float %2785, %2795
  %2797 = fsub fast float -0.000000e+00, %2796
  %2798 = fdiv fast float %2797, %2788
  br label %2799

; <label>:2799                                    ; preds = %2792, %2783
  %2800 = phi float [ %2798, %2792 ], [ %2785, %2783 ]
  %2801 = phi float [ %2794, %2792 ], [ 1.000000e+00, %2783 ]
  %2802 = fcmp fast une float %2789, 0.000000e+00
  br i1 %2802, label %2803, label %2810, !dx.controlflow.hints !127

; <label>:2803                                    ; preds = %2799
  %2804 = fmul fast float %2789, 0x3FF7154760000000
  %2805 = call float @dx.op.unary.f32(i32 21, float %2804)  ; Exp(value)
  %2806 = fsub fast float 1.000000e+00, %2805
  %2807 = fmul fast float %2786, %2806
  %2808 = fsub fast float -0.000000e+00, %2807
  %2809 = fdiv fast float %2808, %2789
  br label %2810

; <label>:2810                                    ; preds = %2803, %2799
  %2811 = phi float [ %2809, %2803 ], [ %2786, %2799 ]
  %2812 = phi float [ %2805, %2803 ], [ 1.000000e+00, %2799 ]
  %2813 = fcmp fast une float %2790, 0.000000e+00
  br i1 %2813, label %2814, label %2821, !dx.controlflow.hints !127

; <label>:2814                                    ; preds = %2810
  %2815 = fmul fast float %2790, 0x3FF7154760000000
  %2816 = call float @dx.op.unary.f32(i32 21, float %2815)  ; Exp(value)
  %2817 = fsub fast float 1.000000e+00, %2816
  %2818 = fmul fast float %2787, %2817
  %2819 = fsub fast float -0.000000e+00, %2818
  %2820 = fdiv fast float %2819, %2790
  br label %2821

; <label>:2821                                    ; preds = %2814, %2810, %2770, %2763
  %2822 = phi float [ %2820, %2814 ], [ %2782, %2770 ], [ %2767, %2763 ], [ %2787, %2810 ]
  %2823 = phi float [ %2811, %2814 ], [ %2781, %2770 ], [ %2766, %2763 ], [ %2811, %2810 ]
  %2824 = phi float [ %2800, %2814 ], [ %2780, %2770 ], [ %2765, %2763 ], [ %2800, %2810 ]
  %2825 = phi float [ %2816, %2814 ], [ %2772, %2770 ], [ 1.000000e+00, %2763 ], [ 1.000000e+00, %2810 ]
  %2826 = phi float [ %2812, %2814 ], [ %2772, %2770 ], [ 1.000000e+00, %2763 ], [ %2812, %2810 ]
  %2827 = phi float [ %2801, %2814 ], [ %2772, %2770 ], [ 1.000000e+00, %2763 ], [ %2801, %2810 ]
  %2828 = fmul fast float %2827, %2739
  %2829 = fmul fast float %2826, %2750
  %2830 = fmul fast float %2825, %2761
  %2831 = fadd fast float %2828, %2824
  %2832 = fadd fast float %2829, %2823
  %2833 = fadd fast float %2830, %2822
  %2834 = fmul fast float %2827, %2738
  %2835 = fmul fast float %2826, %2749
  %2836 = fmul fast float %2825, %2760
  br label %2837

; <label>:2837                                    ; preds = %2821, %2632
  %2838 = phi float [ %2638, %2632 ], [ %2836, %2821 ]
  %2839 = phi float [ %2637, %2632 ], [ %2835, %2821 ]
  %2840 = phi float [ %2636, %2632 ], [ %2834, %2821 ]
  %2841 = phi float [ %2635, %2632 ], [ %2833, %2821 ]
  %2842 = phi float [ %2634, %2632 ], [ %2832, %2821 ]
  %2843 = phi float [ %2633, %2632 ], [ %2831, %2821 ]
  %2844 = fmul fast float %2840, %1981
  %2845 = fmul fast float %2839, %1982
  %2846 = fmul fast float %2838, %1983
  %2847 = fsub fast float 1.000000e+00, %2044
  %2848 = fmul fast float %2843, %2847
  %2849 = fmul fast float %2842, %2847
  %2850 = fmul fast float %2841, %2847
  %2851 = fadd fast float %2848, %2844
  %2852 = fadd fast float %2849, %2845
  %2853 = fadd fast float %2850, %2846
  %2854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %2855 = extractvalue %dx.types.CBufRet.f32 %2854, 2
  %2856 = fmul fast float %2855, %2054
  %2857 = call float @dx.op.unary.f32(i32 7, float %2856)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %26, i32 %27, i32 undef, float %2044, float %2044, float %2044, float %2044, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2859 = extractvalue %dx.types.CBufRet.f32 %2858, 0
  %2860 = fmul fast float %2859, %2851
  %2861 = fmul fast float %2859, %2852
  %2862 = fmul fast float %2859, %2853
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %26, i32 %27, i32 undef, float %2860, float %2861, float %2862, float %2860, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %26, i32 %27, i32 undef, float %2857, float %2857, float %2857, float %2857, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

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
!dx.entryPoints = !{!37}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !23, !29, !32}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !21, !22}
!6 = !{i32 0, %"class.Texture3D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture3D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 4, i32 0, !7}
!9 = !{i32 2, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 4, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 9, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 31, i32 1, i32 7, i32 0, !7}
!13 = !{i32 6, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 30, i32 1, i32 4, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<float>"* undef, !"", i32 0, i32 29, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 0, i32 26, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 32, i32 1, i32 2, i32 0, !17}
!17 = !{i32 0, i32 5}
!18 = !{i32 10, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 33, i32 1, i32 4, i32 0, !7}
!19 = !{i32 11, %"class.Texture1D<float>"* undef, !"", i32 0, i32 14, i32 1, i32 1, i32 0, !7}
!20 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!21 = !{i32 13, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!23 = !{!24, !25, !26, !27}
!24 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!25 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!26 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!27 = !{i32 3, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 7, i1 false, i1 false, i1 false, !28}
!28 = !{i32 0, i32 14}
!29 = !{!30, !31}
!30 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!31 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!32 = !{!33, !34, !35, !36}
!33 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!34 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!35 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!36 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!37 = !{void ()* @cs_fog_raymarching_air_clouds, !"cs_fog_raymarching_air_clouds", null, !4, !38}
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

