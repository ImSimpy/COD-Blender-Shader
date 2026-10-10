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
; shader hash: f8b5987c26af8e7a71276927d0233caa
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
;                                   texture     f32          2d      T1            t16     1
;                                   texture     f32          2d      T2            t27     1
;                                   texture     f32          3d      T3             t1     1
;                                   texture     f32          3d      T4             t2     1
;                                   texture     f32          2d      T5             t8     1
;                                   texture     f32          2d      T6             t9     1
;                                   texture     f32     2darray      T7            t31     1
;                                   texture     f32          3d      T8            t30     1
;                                   texture     f32          2d      T9            t29     1
;                                   texture     f32          2d     T10            t26     1
;                                   texture     u32          2d     T11            t32     1
;                                   texture     f32          3d     T12            t33     1
;                                   texture     f32          1d     T13            t14     1
;                                   texture     f32          2d     T14            t13     1
;                                   texture     f32          2d     T15             t0     1
;                                   texture    byte         r/o     T16            t17     1
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
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
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

define void @cs_fog_raymarching_air_clouds_heightmap_brfog() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 26, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %29 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %30 = alloca [3 x float], align 4
  %31 = alloca [3 x float], align 4
  %32 = add i32 %29, %28
  %33 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %34 = extractvalue %dx.types.CBufRet.i32 %33, 1
  %35 = add i32 %32, %34
  %36 = lshr i32 %35, 1
  %37 = and i32 %36, 1
  %38 = and i32 %35, 1
  %39 = xor i32 %37, %38
  %40 = shl i32 %28, 1
  %41 = shl i32 %29, 1
  %42 = or i32 %39, %40
  %43 = or i32 %37, %41
  %44 = uitofp i32 %42 to float
  %45 = uitofp i32 %43 to float
  %46 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %47 = extractvalue %dx.types.CBufRet.f32 %46, 2
  %48 = fmul fast float %47, 0x3FE3C6EF40000000
  %49 = frem fast float %44, 2.560000e+02
  %50 = frem fast float %45, 2.560000e+02
  %51 = fptoui float %49 to i32
  %52 = fptoui float %50 to i32
  %53 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %51, i32 %52, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %54 = extractvalue %dx.types.ResRet.f32 %53, 0
  %55 = extractvalue %dx.types.ResRet.f32 %53, 1
  %56 = extractvalue %dx.types.ResRet.f32 %53, 2
  %57 = extractvalue %dx.types.ResRet.f32 %53, 3
  %58 = fadd fast float %54, %48
  %59 = fadd fast float %55, %48
  %60 = fadd fast float %56, %48
  %61 = fadd fast float %57, %48
  %62 = call float @dx.op.unary.f32(i32 22, float %58)  ; Frc(value)
  %63 = call float @dx.op.unary.f32(i32 22, float %59)  ; Frc(value)
  %64 = call float @dx.op.unary.f32(i32 22, float %60)  ; Frc(value)
  %65 = call float @dx.op.unary.f32(i32 22, float %61)  ; Frc(value)
  %66 = fadd fast float %64, %44
  %67 = fadd fast float %65, %45
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 2
  %70 = extractvalue %dx.types.CBufRet.f32 %68, 3
  %71 = fmul fast float %69, %66
  %72 = fmul fast float %70, %67
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.f32 %73, 0
  %75 = extractvalue %dx.types.CBufRet.f32 %73, 1
  %76 = extractvalue %dx.types.CBufRet.f32 %73, 2
  %77 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %78 = extractvalue %dx.types.CBufRet.f32 %77, 1
  %79 = fmul fast float %71, 2.000000e+00
  %80 = fmul fast float %72, 2.000000e+00
  %81 = fsub fast float 1.000000e+00, %79
  %82 = fsub fast float 1.000000e+00, %80
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.f32 %83, 0
  %85 = extractvalue %dx.types.CBufRet.f32 %83, 1
  %86 = extractvalue %dx.types.CBufRet.f32 %83, 2
  %87 = fmul fast float %84, %81
  %88 = fmul fast float %85, %81
  %89 = fmul fast float %86, %81
  %90 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.f32 %90, 0
  %92 = extractvalue %dx.types.CBufRet.f32 %90, 1
  %93 = extractvalue %dx.types.CBufRet.f32 %90, 2
  %94 = fmul fast float %91, %82
  %95 = fmul fast float %92, %82
  %96 = fmul fast float %93, %82
  %97 = fadd fast float %94, %87
  %98 = fadd fast float %95, %88
  %99 = fadd fast float %96, %89
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 0
  %102 = extractvalue %dx.types.CBufRet.f32 %100, 1
  %103 = extractvalue %dx.types.CBufRet.f32 %100, 2
  %104 = fadd fast float %97, %101
  %105 = fadd fast float %98, %102
  %106 = fadd fast float %99, %103
  %107 = fmul fast float %104, %78
  %108 = fmul fast float %105, %78
  %109 = fmul fast float %106, %78
  %110 = fmul fast float %107, %107
  %111 = fmul fast float %108, %108
  %112 = fadd fast float %110, %111
  %113 = fmul fast float %109, %109
  %114 = fadd fast float %112, %113
  %115 = call float @dx.op.unary.f32(i32 24, float %114)  ; Sqrt(value)
  %116 = fdiv fast float 1.000000e+00, %115
  %117 = fmul fast float %107, %116
  %118 = fmul fast float %108, %116
  %119 = fmul fast float %109, %116
  %120 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %42, i32 %43, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %121 = extractvalue %dx.types.ResRet.f32 %120, 0
  %122 = fcmp fast ogt float %121, -1.000000e+00
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 1
  %125 = select i1 %122, float %124, float 1.000000e+00
  %126 = fadd fast float %121, 1.000000e+00
  %127 = fmul fast float %125, %126
  %128 = call float @dx.op.unary.f32(i32 6, float %127)  ; FAbs(value)
  %129 = fdiv fast float 1.000000e+00, %78
  %130 = fmul fast float %129, %115
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 1
  %133 = fmul fast float %132, %130
  %134 = fmul fast float %130, %128
  %135 = extractvalue %dx.types.CBufRet.f32 %123, 3
  %136 = fcmp fast oge float %128, %135
  %137 = call float @dx.op.binary.f32(i32 36, float %134, float %133)  ; FMin(a,b)
  %138 = select i1 %136, float %133, float %137
  %139 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %140 = extractvalue %dx.types.CBufRet.i32 %139, 3
  %141 = icmp eq i32 %140, 0
  %142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.f32 %142, 2
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 2
  %146 = fsub fast float %143, %76
  %147 = fadd fast float %146, %145
  %148 = fsub fast float 0xC7EFFFFFE0000000, %76
  br i1 %141, label %160, label %149, !dx.controlflow.hints !42

; <label>:149                                     ; preds = %0
  %150 = fsub fast float -0.000000e+00, %75
  %151 = fsub fast float -0.000000e+00, %74
  %152 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %151, float %150, float %147)  ; Dot3(ax,ay,az,bx,by,bz)
  %153 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %154 = fdiv fast float 1.000000e+00, %153
  %155 = fmul fast float %154, %152
  %156 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %151, float %150, float %148)  ; Dot3(ax,ay,az,bx,by,bz)
  %157 = fmul fast float %154, %156
  %158 = call float @dx.op.binary.f32(i32 36, float %155, float %157)  ; FMin(a,b)
  %159 = call float @dx.op.binary.f32(i32 35, float %155, float %157)  ; FMax(a,b)
  br label %193

; <label>:160                                     ; preds = %0
  %161 = extractvalue %dx.types.CBufRet.f32 %142, 0
  %162 = extractvalue %dx.types.CBufRet.f32 %142, 1
  %163 = extractvalue %dx.types.CBufRet.f32 %144, 0
  %164 = extractvalue %dx.types.CBufRet.f32 %144, 1
  %165 = fdiv fast float 1.000000e+00, %117
  %166 = fdiv fast float 1.000000e+00, %118
  %167 = fdiv fast float 1.000000e+00, %119
  %168 = fsub fast float %161, %74
  %169 = fmul fast float %165, %168
  %170 = fadd fast float %168, %163
  %171 = fmul fast float %170, %165
  %172 = call float @dx.op.binary.f32(i32 36, float %169, float %171)  ; FMin(a,b)
  %173 = call float @dx.op.binary.f32(i32 35, float %169, float %171)  ; FMax(a,b)
  %174 = fsub fast float %162, %75
  %175 = fmul fast float %166, %174
  %176 = fadd fast float %174, %164
  %177 = fmul fast float %176, %166
  %178 = call float @dx.op.binary.f32(i32 36, float %175, float %177)  ; FMin(a,b)
  %179 = call float @dx.op.binary.f32(i32 35, float %172, float %178)  ; FMax(a,b)
  %180 = call float @dx.op.binary.f32(i32 35, float %175, float %177)  ; FMax(a,b)
  %181 = call float @dx.op.binary.f32(i32 36, float %173, float %180)  ; FMin(a,b)
  %182 = fmul fast float %167, %148
  %183 = fmul fast float %167, %147
  %184 = call float @dx.op.binary.f32(i32 36, float %182, float %183)  ; FMin(a,b)
  %185 = call float @dx.op.binary.f32(i32 35, float %179, float %184)  ; FMax(a,b)
  %186 = call float @dx.op.binary.f32(i32 35, float %182, float %183)  ; FMax(a,b)
  %187 = call float @dx.op.binary.f32(i32 36, float %181, float %186)  ; FMin(a,b)
  %188 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %185)  ; FMax(a,b)
  %189 = fcmp fast ult float %187, %188
  br i1 %189, label %193, label %190, !dx.controlflow.hints !43

; <label>:190                                     ; preds = %160
  %191 = call float @dx.op.binary.f32(i32 36, float %185, float %187)  ; FMin(a,b)
  %192 = call float @dx.op.binary.f32(i32 35, float %185, float %187)  ; FMax(a,b)
  br label %193

; <label>:193                                     ; preds = %190, %160, %149
  %194 = phi float [ %158, %149 ], [ %191, %190 ], [ 0.000000e+00, %160 ]
  %195 = phi float [ %159, %149 ], [ %192, %190 ], [ 0.000000e+00, %160 ]
  %196 = fcmp fast oeq float %195, 0.000000e+00
  %197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %198 = extractvalue %dx.types.CBufRet.f32 %197, 1
  %199 = fcmp fast olt float %195, %198
  %200 = or i1 %196, %199
  br i1 %200, label %205, label %201, !dx.controlflow.hints !44

; <label>:201                                     ; preds = %193
  %202 = call float @dx.op.binary.f32(i32 35, float %198, float %194)  ; FMax(a,b)
  %203 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %202)  ; FMin(a,b)
  %204 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %195)  ; FMax(a,b)
  br label %205

; <label>:205                                     ; preds = %201, %193
  %206 = phi i32 [ 1, %201 ], [ 0, %193 ]
  %207 = phi float [ %204, %201 ], [ -1.000000e+00, %193 ]
  %208 = phi float [ %203, %201 ], [ 0x47EFFFFFE0000000, %193 ]
  %209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %210 = extractvalue %dx.types.CBufRet.f32 %209, 3
  %211 = fsub fast float -0.000000e+00, %74
  %212 = fsub fast float -0.000000e+00, %75
  %213 = fsub fast float %210, %76
  %214 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %211, float %212, float %213)  ; Dot3(ax,ay,az,bx,by,bz)
  %215 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %216 = fdiv fast float 1.000000e+00, %215
  %217 = fmul fast float %216, %214
  %218 = fcmp fast olt float %217, 0.000000e+00
  %219 = fcmp fast ogt float %119, 0.000000e+00
  %220 = and i1 %219, %218
  br i1 %220, label %225, label %221, !dx.controlflow.hints !45

; <label>:221                                     ; preds = %205
  %222 = fcmp fast olt float %119, 0.000000e+00
  br i1 %222, label %223, label %225, !dx.controlflow.hints !46

; <label>:223                                     ; preds = %221
  %224 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %217)  ; FMax(a,b)
  br label %225

; <label>:225                                     ; preds = %223, %221, %205
  %226 = phi float [ 0.000000e+00, %205 ], [ %224, %223 ], [ 0.000000e+00, %221 ]
  %227 = phi float [ 0.000000e+00, %205 ], [ 0x47EFFFFFE0000000, %223 ], [ %217, %221 ]
  %228 = fcmp fast oeq float %227, 0.000000e+00
  br i1 %228, label %232, label %229, !dx.controlflow.hints !47

; <label>:229                                     ; preds = %225
  %230 = call float @dx.op.binary.f32(i32 36, float %208, float %226)  ; FMin(a,b)
  %231 = call float @dx.op.binary.f32(i32 35, float %207, float %227)  ; FMax(a,b)
  br label %232

; <label>:232                                     ; preds = %229, %225
  %233 = phi i32 [ 1, %229 ], [ 0, %225 ]
  %234 = phi float [ %231, %229 ], [ %207, %225 ]
  %235 = phi float [ %230, %229 ], [ %208, %225 ]
  %236 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %237 = extractvalue %dx.types.CBufRet.i32 %236, 3
  %238 = icmp eq i32 %237, 0
  %239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = extractvalue %dx.types.CBufRet.f32 %239, 2
  %241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %242 = extractvalue %dx.types.CBufRet.f32 %241, 2
  %243 = fsub fast float %240, %76
  %244 = fadd fast float %243, %242
  br i1 %238, label %252, label %245, !dx.controlflow.hints !48

; <label>:245                                     ; preds = %232
  %246 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %211, float %212, float %244)  ; Dot3(ax,ay,az,bx,by,bz)
  %247 = fmul fast float %216, %246
  %248 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %211, float %212, float %243)  ; Dot3(ax,ay,az,bx,by,bz)
  %249 = fmul fast float %216, %248
  %250 = call float @dx.op.binary.f32(i32 36, float %247, float %249)  ; FMin(a,b)
  %251 = call float @dx.op.binary.f32(i32 35, float %247, float %249)  ; FMax(a,b)
  br label %285

; <label>:252                                     ; preds = %232
  %253 = fdiv fast float 1.000000e+00, %117
  %254 = fdiv fast float 1.000000e+00, %118
  %255 = fdiv fast float 1.000000e+00, %119
  %256 = extractvalue %dx.types.CBufRet.f32 %239, 0
  %257 = extractvalue %dx.types.CBufRet.f32 %239, 1
  %258 = extractvalue %dx.types.CBufRet.f32 %241, 0
  %259 = extractvalue %dx.types.CBufRet.f32 %241, 1
  %260 = fsub fast float %256, %74
  %261 = fmul fast float %260, %253
  %262 = fadd fast float %260, %258
  %263 = fmul fast float %262, %253
  %264 = call float @dx.op.binary.f32(i32 36, float %261, float %263)  ; FMin(a,b)
  %265 = call float @dx.op.binary.f32(i32 35, float %261, float %263)  ; FMax(a,b)
  %266 = fsub fast float %257, %75
  %267 = fmul fast float %266, %254
  %268 = fadd fast float %266, %259
  %269 = fmul fast float %268, %254
  %270 = call float @dx.op.binary.f32(i32 36, float %267, float %269)  ; FMin(a,b)
  %271 = call float @dx.op.binary.f32(i32 35, float %264, float %270)  ; FMax(a,b)
  %272 = call float @dx.op.binary.f32(i32 35, float %267, float %269)  ; FMax(a,b)
  %273 = call float @dx.op.binary.f32(i32 36, float %265, float %272)  ; FMin(a,b)
  %274 = fmul fast float %243, %255
  %275 = fmul fast float %244, %255
  %276 = call float @dx.op.binary.f32(i32 36, float %274, float %275)  ; FMin(a,b)
  %277 = call float @dx.op.binary.f32(i32 35, float %271, float %276)  ; FMax(a,b)
  %278 = call float @dx.op.binary.f32(i32 35, float %274, float %275)  ; FMax(a,b)
  %279 = call float @dx.op.binary.f32(i32 36, float %273, float %278)  ; FMin(a,b)
  %280 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %277)  ; FMax(a,b)
  %281 = fcmp fast ult float %279, %280
  br i1 %281, label %285, label %282, !dx.controlflow.hints !49

; <label>:282                                     ; preds = %252
  %283 = call float @dx.op.binary.f32(i32 36, float %277, float %279)  ; FMin(a,b)
  %284 = call float @dx.op.binary.f32(i32 35, float %277, float %279)  ; FMax(a,b)
  br label %285

; <label>:285                                     ; preds = %282, %252, %245
  %286 = phi float [ %250, %245 ], [ %283, %282 ], [ 0.000000e+00, %252 ]
  %287 = phi float [ %251, %245 ], [ %284, %282 ], [ 0.000000e+00, %252 ]
  %288 = fcmp fast oeq float %287, 0.000000e+00
  br i1 %288, label %292, label %289, !dx.controlflow.hints !50

; <label>:289                                     ; preds = %285
  %290 = call float @dx.op.binary.f32(i32 36, float %235, float %286)  ; FMin(a,b)
  %291 = call float @dx.op.binary.f32(i32 35, float %234, float %287)  ; FMax(a,b)
  br label %292

; <label>:292                                     ; preds = %289, %285
  %293 = phi i32 [ 1, %289 ], [ 0, %285 ]
  %294 = phi float [ %291, %289 ], [ %234, %285 ]
  %295 = phi float [ %290, %289 ], [ %235, %285 ]
  %296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %297 = extractvalue %dx.types.CBufRet.f32 %296, 2
  %298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %299 = extractvalue %dx.types.CBufRet.f32 %298, 3
  %300 = fsub fast float %297, %76
  %301 = fadd fast float %300, %299
  %302 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %211, float %212, float %301)  ; Dot3(ax,ay,az,bx,by,bz)
  %303 = fmul fast float %216, %302
  %304 = fcmp fast olt float %303, 0.000000e+00
  %305 = and i1 %219, %304
  br i1 %305, label %310, label %306, !dx.controlflow.hints !51

; <label>:306                                     ; preds = %292
  %307 = fcmp fast olt float %119, 0.000000e+00
  br i1 %307, label %308, label %310, !dx.controlflow.hints !52

; <label>:308                                     ; preds = %306
  %309 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %303)  ; FMax(a,b)
  br label %310

; <label>:310                                     ; preds = %308, %306, %292
  %311 = phi float [ 0.000000e+00, %292 ], [ %309, %308 ], [ 0.000000e+00, %306 ]
  %312 = phi float [ 0.000000e+00, %292 ], [ 0x47EFFFFFE0000000, %308 ], [ %303, %306 ]
  %313 = fcmp fast oeq float %312, 0.000000e+00
  br i1 %313, label %317, label %314, !dx.controlflow.hints !53

; <label>:314                                     ; preds = %310
  %315 = call float @dx.op.binary.f32(i32 36, float %295, float %311)  ; FMin(a,b)
  %316 = call float @dx.op.binary.f32(i32 35, float %294, float %312)  ; FMax(a,b)
  br label %317

; <label>:317                                     ; preds = %314, %310
  %318 = phi i32 [ 1, %314 ], [ 0, %310 ]
  %319 = phi float [ %316, %314 ], [ %294, %310 ]
  %320 = phi float [ %315, %314 ], [ %295, %310 ]
  %321 = call float @dx.op.binary.f32(i32 36, float %138, float %319)  ; FMin(a,b)
  %322 = call float @dx.op.binary.f32(i32 35, float %115, float %320)  ; FMax(a,b)
  %323 = extractvalue %dx.types.CBufRet.f32 %209, 0
  %324 = fmul fast float %63, 2.000000e+00
  %325 = fadd fast float %324, -1.000000e+00
  %326 = fmul fast float %323, %325
  %327 = fadd fast float %326, %322
  %328 = fcmp fast olt float %327, %321
  %329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %330 = extractvalue %dx.types.CBufRet.f32 %329, 2
  %331 = fcmp fast olt float %330, 1.000000e+00
  %332 = and i1 %328, %331
  br i1 %332, label %333, label %2993

; <label>:333                                     ; preds = %317
  %334 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %335 = extractvalue %dx.types.CBufRet.i32 %334, 1
  %336 = add i32 %335, -1
  %337 = fmul fast float %327, %119
  %338 = fadd fast float %337, %76
  %339 = fmul fast float %327, %118
  %340 = fadd fast float %339, %75
  %341 = fmul fast float %327, %117
  %342 = fadd fast float %341, %74
  br label %343

; <label>:343                                     ; preds = %2967, %333
  %344 = phi i32 [ %2969, %2967 ], [ undef, %333 ]
  %345 = phi float [ %2970, %2967 ], [ undef, %333 ]
  %346 = phi i32 [ %791, %2967 ], [ undef, %333 ]
  %347 = phi float [ %792, %2967 ], [ undef, %333 ]
  %348 = phi float [ %2971, %2967 ], [ 0.000000e+00, %333 ]
  %349 = phi float [ %2972, %2967 ], [ 1.000000e+00, %333 ]
  %350 = phi float [ %2973, %2967 ], [ 0.000000e+00, %333 ]
  %351 = phi float [ %2974, %2967 ], [ 0.000000e+00, %333 ]
  %352 = phi float [ %2975, %2967 ], [ 0.000000e+00, %333 ]
  %353 = phi float [ %2985, %2967 ], [ %342, %333 ]
  %354 = phi float [ %2986, %2967 ], [ %340, %333 ]
  %355 = phi float [ %2987, %2967 ], [ %338, %333 ]
  %356 = phi float [ %2968, %2967 ], [ %327, %333 ]
  %357 = phi i32 [ %540, %2967 ], [ %336, %333 ]
  %358 = phi float [ %2976, %2967 ], [ 0.000000e+00, %333 ]
  %359 = phi float [ %2977, %2967 ], [ 0.000000e+00, %333 ]
  %360 = phi float [ %2978, %2967 ], [ 0.000000e+00, %333 ]
  %361 = phi float [ %2979, %2967 ], [ 0.000000e+00, %333 ]
  %362 = phi float [ %2980, %2967 ], [ 0.000000e+00, %333 ]
  %363 = phi i32 [ %2981, %2967 ], [ 0, %333 ]
  %364 = fsub fast float -0.000000e+00, %354
  %365 = fsub fast float -0.000000e+00, %353
  %366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %367 = extractvalue %dx.types.CBufRet.f32 %366, 0
  %368 = icmp eq i32 %206, 0
  br i1 %368, label %537, label %369, !dx.controlflow.hints !54

; <label>:369                                     ; preds = %343
  %370 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %371 = extractvalue %dx.types.CBufRet.i32 %370, 1
  %372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %373 = extractvalue %dx.types.CBufRet.f32 %372, 1
  %374 = fcmp fast ogt float %373, %356
  br i1 %374, label %375, label %377, !dx.controlflow.hints !55

; <label>:375                                     ; preds = %369
  %376 = fsub fast float %373, %356
  br label %527

; <label>:377                                     ; preds = %369
  %378 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %379 = extractvalue %dx.types.CBufRet.i32 %378, 3
  %380 = icmp eq i32 %379, 0
  %381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %382 = extractvalue %dx.types.CBufRet.f32 %381, 2
  %383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %384 = extractvalue %dx.types.CBufRet.f32 %383, 2
  %385 = fsub fast float %382, %355
  %386 = fadd fast float %385, %384
  %387 = fsub fast float 0xC7EFFFFFE0000000, %355
  br i1 %380, label %395, label %388, !dx.controlflow.hints !42

; <label>:388                                     ; preds = %377
  %389 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %365, float %364, float %386)  ; Dot3(ax,ay,az,bx,by,bz)
  %390 = fmul fast float %216, %389
  %391 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %365, float %364, float %387)  ; Dot3(ax,ay,az,bx,by,bz)
  %392 = fmul fast float %216, %391
  %393 = call float @dx.op.binary.f32(i32 36, float %390, float %392)  ; FMin(a,b)
  %394 = call float @dx.op.binary.f32(i32 35, float %390, float %392)  ; FMax(a,b)
  br label %428

; <label>:395                                     ; preds = %377
  %396 = extractvalue %dx.types.CBufRet.f32 %381, 0
  %397 = extractvalue %dx.types.CBufRet.f32 %381, 1
  %398 = extractvalue %dx.types.CBufRet.f32 %383, 0
  %399 = extractvalue %dx.types.CBufRet.f32 %383, 1
  %400 = fdiv fast float 1.000000e+00, %117
  %401 = fdiv fast float 1.000000e+00, %118
  %402 = fdiv fast float 1.000000e+00, %119
  %403 = fsub fast float %396, %353
  %404 = fmul fast float %400, %403
  %405 = fadd fast float %403, %398
  %406 = fmul fast float %405, %400
  %407 = call float @dx.op.binary.f32(i32 36, float %404, float %406)  ; FMin(a,b)
  %408 = call float @dx.op.binary.f32(i32 35, float %404, float %406)  ; FMax(a,b)
  %409 = fsub fast float %397, %354
  %410 = fmul fast float %401, %409
  %411 = fadd fast float %409, %399
  %412 = fmul fast float %411, %401
  %413 = call float @dx.op.binary.f32(i32 36, float %410, float %412)  ; FMin(a,b)
  %414 = call float @dx.op.binary.f32(i32 35, float %407, float %413)  ; FMax(a,b)
  %415 = call float @dx.op.binary.f32(i32 35, float %410, float %412)  ; FMax(a,b)
  %416 = call float @dx.op.binary.f32(i32 36, float %408, float %415)  ; FMin(a,b)
  %417 = fmul fast float %402, %387
  %418 = fmul fast float %402, %386
  %419 = call float @dx.op.binary.f32(i32 36, float %417, float %418)  ; FMin(a,b)
  %420 = call float @dx.op.binary.f32(i32 35, float %414, float %419)  ; FMax(a,b)
  %421 = call float @dx.op.binary.f32(i32 35, float %417, float %418)  ; FMax(a,b)
  %422 = call float @dx.op.binary.f32(i32 36, float %416, float %421)  ; FMin(a,b)
  %423 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %420)  ; FMax(a,b)
  %424 = fcmp fast ult float %422, %423
  br i1 %424, label %428, label %425, !dx.controlflow.hints !43

; <label>:425                                     ; preds = %395
  %426 = call float @dx.op.binary.f32(i32 36, float %420, float %422)  ; FMin(a,b)
  %427 = call float @dx.op.binary.f32(i32 35, float %420, float %422)  ; FMax(a,b)
  br label %428

; <label>:428                                     ; preds = %425, %395, %388
  %429 = phi float [ %393, %388 ], [ %426, %425 ], [ 0.000000e+00, %395 ]
  %430 = phi float [ %394, %388 ], [ %427, %425 ], [ 0.000000e+00, %395 ]
  %431 = fcmp fast ogt float %429, 0.000000e+00
  br i1 %431, label %527, label %432, !dx.controlflow.hints !56

; <label>:432                                     ; preds = %428
  %433 = fcmp fast ugt float %430, 0.000000e+00
  br i1 %433, label %434, label %527, !dx.controlflow.hints !57

; <label>:434                                     ; preds = %432
  %435 = icmp sgt i32 %357, 0
  br i1 %435, label %436, label %521

; <label>:436                                     ; preds = %434
  br label %437

; <label>:437                                     ; preds = %517, %436
  %438 = phi i32 [ %518, %517 ], [ %357, %436 ]
  %439 = sitofp i32 %438 to float
  %440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %441 = extractvalue %dx.types.CBufRet.f32 %440, 0
  %442 = extractvalue %dx.types.CBufRet.f32 %440, 1
  %443 = fsub fast float %353, %441
  %444 = fsub fast float %354, %442
  %445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %446 = extractvalue %dx.types.CBufRet.f32 %445, 0
  %447 = extractvalue %dx.types.CBufRet.f32 %445, 1
  %448 = fmul fast float %443, %446
  %449 = fmul fast float %444, %447
  %450 = fsub fast float 1.000000e+00, %449
  %451 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %452 = extractvalue %dx.types.CBufRet.i32 %451, 3
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %460, label %454, !dx.controlflow.hints !58

; <label>:454                                     ; preds = %437
  %455 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %24, float %448, float %450, float undef, float undef, i32 0, i32 0, i32 undef, float %439)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %456 = extractvalue %dx.types.ResRet.f32 %455, 0
  %457 = extractvalue %dx.types.ResRet.f32 %455, 1
  %458 = extractvalue %dx.types.ResRet.f32 %455, 2
  %459 = extractvalue %dx.types.ResRet.f32 %455, 3
  br label %466

; <label>:460                                     ; preds = %437
  %461 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %25, float %448, float %450, float undef, float undef, i32 0, i32 0, i32 undef, float %439)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %462 = extractvalue %dx.types.ResRet.f32 %461, 0
  %463 = extractvalue %dx.types.ResRet.f32 %461, 1
  %464 = extractvalue %dx.types.ResRet.f32 %461, 2
  %465 = extractvalue %dx.types.ResRet.f32 %461, 3
  br label %466

; <label>:466                                     ; preds = %460, %454
  %467 = phi float [ %456, %454 ], [ %462, %460 ]
  %468 = phi float [ %457, %454 ], [ %463, %460 ]
  %469 = phi float [ %458, %454 ], [ %464, %460 ]
  %470 = phi float [ %459, %454 ], [ %465, %460 ]
  %471 = extractvalue %dx.types.CBufRet.f32 %445, 3
  %472 = fmul fast float %471, %467
  %473 = extractvalue %dx.types.CBufRet.f32 %440, 2
  %474 = fadd fast float %472, %473
  %475 = fmul fast float %471, %468
  %476 = fadd fast float %475, %473
  %477 = fmul fast float %471, %469
  %478 = fadd fast float %477, %473
  %479 = and i32 %438, 31
  %480 = shl i32 1, %479
  %481 = uitofp i32 %480 to float
  %482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %483 = extractvalue %dx.types.CBufRet.f32 %482, 3
  %484 = fdiv fast float 1.000000e+00, %483
  %485 = fmul fast float %484, %481
  %486 = fmul fast float %485, %119
  %487 = fadd fast float %486, %355
  %488 = fcmp fast oeq float %470, 0.000000e+00
  %489 = fcmp fast ogt float %355, %476
  %490 = fcmp fast ogt float %487, %476
  %491 = and i1 %489, %490
  %492 = or i1 %488, %491
  br i1 %492, label %493, label %497, !dx.controlflow.hints !59

; <label>:493                                     ; preds = %466
  %494 = add nsw i32 %438, 1
  %495 = add nsw i32 %371, -1
  %496 = call i32 @dx.op.binary.i32(i32 38, i32 %494, i32 %495)  ; IMin(a,b)
  br label %527

; <label>:497                                     ; preds = %466
  %498 = fcmp fast olt float %355, %478
  %499 = fcmp fast olt float %487, %478
  %500 = and i1 %498, %499
  br i1 %500, label %501, label %505, !dx.controlflow.hints !60

; <label>:501                                     ; preds = %497
  %502 = add nsw i32 %438, 1
  %503 = add nsw i32 %371, -1
  %504 = call i32 @dx.op.binary.i32(i32 38, i32 %502, i32 %503)  ; IMin(a,b)
  br label %527

; <label>:505                                     ; preds = %497
  %506 = fcmp fast olt float %355, %474
  %507 = fcmp fast olt float %487, %474
  %508 = and i1 %506, %507
  br i1 %508, label %509, label %517, !dx.controlflow.hints !61

; <label>:509                                     ; preds = %505
  %510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %511 = extractvalue %dx.types.CBufRet.f32 %510, 3
  %512 = extractvalue %dx.types.CBufRet.f32 %445, 2
  %513 = fcmp fast une float %511, %512
  br i1 %513, label %514, label %521, !dx.controlflow.hints !62

; <label>:514                                     ; preds = %509
  %515 = fsub fast float %355, %478
  %516 = call float @dx.op.binary.f32(i32 36, float %485, float %515)  ; FMin(a,b)
  br label %521

; <label>:517                                     ; preds = %505
  %518 = add nsw i32 %438, -1
  %519 = icmp sgt i32 %438, 1
  br i1 %519, label %437, label %520

; <label>:520                                     ; preds = %517
  br label %521

; <label>:521                                     ; preds = %520, %514, %509, %434
  %522 = phi float [ %516, %514 ], [ %485, %509 ], [ 0.000000e+00, %434 ], [ 0.000000e+00, %520 ]
  %523 = phi i32 [ %438, %514 ], [ %438, %509 ], [ %357, %434 ], [ %518, %520 ]
  %524 = add nsw i32 %523, 1
  %525 = add nsw i32 %371, -1
  %526 = call i32 @dx.op.binary.i32(i32 38, i32 %524, i32 %525)  ; IMin(a,b)
  br label %527

; <label>:527                                     ; preds = %521, %501, %493, %432, %428, %375
  %528 = phi float [ %376, %375 ], [ %485, %493 ], [ %485, %501 ], [ %522, %521 ], [ 0x47EFFFFFE0000000, %432 ], [ %429, %428 ]
  %529 = phi i32 [ %206, %375 ], [ %206, %493 ], [ %206, %501 ], [ %206, %521 ], [ 0, %432 ], [ %206, %428 ]
  %530 = phi i32 [ %357, %375 ], [ %496, %493 ], [ %504, %501 ], [ %526, %521 ], [ %357, %432 ], [ %357, %428 ]
  %531 = icmp ne i32 %529, 0
  %532 = zext i1 %531 to i32
  %533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %534 = extractvalue %dx.types.CBufRet.f32 %533, 2
  %535 = call float @dx.op.binary.f32(i32 35, float %528, float %534)  ; FMax(a,b)
  %536 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %535)  ; FMin(a,b)
  br label %537

; <label>:537                                     ; preds = %527, %343
  %538 = phi i32 [ %532, %527 ], [ 0, %343 ]
  %539 = phi float [ %536, %527 ], [ 0x47EFFFFFE0000000, %343 ]
  %540 = phi i32 [ %530, %527 ], [ %357, %343 ]
  %541 = icmp eq i32 %233, 0
  br i1 %541, label %554, label %542, !dx.controlflow.hints !63

; <label>:542                                     ; preds = %537
  %543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %544 = extractvalue %dx.types.CBufRet.f32 %543, 3
  %545 = extractvalue %dx.types.CBufRet.f32 %543, 2
  %546 = fmul fast float %544, %356
  %547 = fdiv fast float %546, %321
  %548 = fadd fast float %547, 1.000000e+00
  %549 = call float @dx.op.unary.f32(i32 23, float %548)  ; Log(value)
  %550 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %549)  ; FMin(a,b)
  %551 = fmul fast float %545, %321
  %552 = fmul fast float %551, %550
  %553 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %552)  ; FMin(a,b)
  br label %554

; <label>:554                                     ; preds = %542, %537
  %555 = phi float [ %553, %542 ], [ 0x47EFFFFFE0000000, %537 ]
  %556 = icmp eq i32 %293, 0
  br i1 %556, label %613, label %557, !dx.controlflow.hints !64

; <label>:557                                     ; preds = %554
  %558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %559 = extractvalue %dx.types.CBufRet.f32 %558, 0
  %560 = extractvalue %dx.types.CBufRet.f32 %558, 1
  %561 = extractvalue %dx.types.CBufRet.f32 %558, 2
  %562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %563 = extractvalue %dx.types.CBufRet.f32 %562, 0
  %564 = extractvalue %dx.types.CBufRet.f32 %562, 1
  %565 = extractvalue %dx.types.CBufRet.f32 %562, 2
  %566 = fsub fast float %353, %563
  %567 = fsub fast float %354, %564
  %568 = fsub fast float %355, %565
  %569 = fmul fast float %566, %559
  %570 = fmul fast float %567, %560
  %571 = fmul fast float %568, %561
  %572 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %573 = extractvalue %dx.types.CBufRet.i32 %572, 3
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %578, label %575, !dx.controlflow.hints !65

; <label>:575                                     ; preds = %557
  %576 = call float @dx.op.unary.f32(i32 22, float %569)  ; Frc(value)
  %577 = call float @dx.op.unary.f32(i32 22, float %570)  ; Frc(value)
  br label %578

; <label>:578                                     ; preds = %575, %557
  %579 = phi float [ %576, %575 ], [ %569, %557 ]
  %580 = phi float [ %577, %575 ], [ %570, %557 ]
  %581 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %23, float %579, float %580, float %571, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %582 = extractvalue %dx.types.ResRet.f32 %581, 0
  %583 = fmul fast float %582, 2.000000e+00
  %584 = fadd fast float %583, -1.000000e+00
  %585 = extractvalue %dx.types.CBufRet.f32 %558, 3
  %586 = fmul fast float %584, %585
  %587 = fcmp fast olt float %586, 0.000000e+00
  %588 = fcmp fast oge float %571, 0.000000e+00
  %589 = fcmp fast ole float %571, 1.000000e+00
  br i1 %574, label %592, label %590, !dx.controlflow.hints !66

; <label>:590                                     ; preds = %578
  %591 = and i1 %588, %589
  br label %602

; <label>:592                                     ; preds = %578
  %593 = fcmp fast oge float %569, 0.000000e+00
  %594 = fcmp fast oge float %570, 0.000000e+00
  %595 = and i1 %593, %594
  %596 = and i1 %588, %595
  %597 = fcmp fast ole float %569, 1.000000e+00
  %598 = fcmp fast ole float %570, 1.000000e+00
  %599 = and i1 %597, %598
  %600 = and i1 %589, %599
  %601 = and i1 %596, %600
  br label %602

; <label>:602                                     ; preds = %592, %590
  %603 = phi i1 [ %591, %590 ], [ %601, %592 ]
  %604 = and i1 %587, %603
  %605 = call float @dx.op.unary.f32(i32 6, float %586)  ; FAbs(value)
  %606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %607 = extractvalue %dx.types.CBufRet.f32 %606, 1
  %608 = extractvalue %dx.types.CBufRet.f32 %606, 0
  %609 = call float @dx.op.binary.f32(i32 35, float %605, float %608)  ; FMax(a,b)
  %610 = select i1 %604, float %607, float %609
  %611 = zext i1 %604 to i32
  %612 = call float @dx.op.binary.f32(i32 36, float %539, float %610)  ; FMin(a,b)
  br label %613

; <label>:613                                     ; preds = %602, %554
  %614 = phi i32 [ %611, %602 ], [ 0, %554 ]
  %615 = phi float [ %612, %602 ], [ %539, %554 ]
  %616 = icmp eq i32 %318, 0
  br i1 %616, label %789, label %617, !dx.controlflow.hints !67

; <label>:617                                     ; preds = %613
  %618 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %619 = extractvalue %dx.types.CBufRet.i32 %618, 1
  %620 = and i32 %619, 1
  %621 = icmp eq i32 %620, 0
  br i1 %621, label %622, label %779, !dx.controlflow.hints !68

; <label>:622                                     ; preds = %617
  %623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %624 = extractvalue %dx.types.CBufRet.f32 %623, 2
  %625 = extractvalue %dx.types.CBufRet.f32 %623, 3
  %626 = fmul fast float %624, %353
  %627 = fmul fast float %625, %354
  %628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %629 = extractvalue %dx.types.CBufRet.f32 %628, 0
  %630 = extractvalue %dx.types.CBufRet.f32 %628, 1
  %631 = fadd fast float %626, %629
  %632 = fadd fast float %627, %630
  %633 = call float @dx.op.unary.f32(i32 7, float %631)  ; Saturate(value)
  %634 = call float @dx.op.unary.f32(i32 7, float %632)  ; Saturate(value)
  %635 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %25, float %633, float %634, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %636 = extractvalue %dx.types.ResRet.f32 %635, 0
  %637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %638 = extractvalue %dx.types.CBufRet.f32 %637, 0
  %639 = fmul fast float %638, %636
  %640 = fsub fast float %631, %633
  %641 = fsub fast float %632, %634
  %642 = extractvalue %dx.types.CBufRet.f32 %623, 0
  %643 = extractvalue %dx.types.CBufRet.f32 %623, 1
  %644 = fmul fast float %642, %640
  %645 = fmul fast float %643, %641
  %646 = fmul fast float %644, %644
  %647 = fmul fast float %645, %645
  %648 = fadd fast float %646, %647
  %649 = call float @dx.op.unary.f32(i32 24, float %648)  ; Sqrt(value)
  %650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %651 = extractvalue %dx.types.CBufRet.f32 %650, 3
  %652 = fmul fast float %651, %649
  %653 = call float @dx.op.unary.f32(i32 7, float %652)  ; Saturate(value)
  %654 = extractvalue %dx.types.CBufRet.f32 %650, 2
  %655 = fsub fast float %654, %639
  %656 = fmul fast float %655, %653
  %657 = extractvalue %dx.types.CBufRet.f32 %637, 1
  %658 = fsub fast float %355, %639
  %659 = fsub fast float %658, %657
  %660 = fsub fast float %659, %656
  %661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %662 = extractvalue %dx.types.CBufRet.f32 %661, 2
  %663 = fsub fast float %660, %662
  %664 = fcmp fast olt float %663, 0.000000e+00
  %665 = call float @dx.op.unary.f32(i32 6, float %663)  ; FAbs(value)
  %666 = extractvalue %dx.types.CBufRet.i32 %618, 0
  %667 = icmp eq i32 %666, 0
  br i1 %667, label %721, label %668

; <label>:668                                     ; preds = %622
  br label %669

; <label>:669                                     ; preds = %708, %668
  %670 = phi i32 [ %714, %708 ], [ 1, %668 ]
  %671 = phi float [ %716, %708 ], [ 0x47EFFFFFE0000000, %668 ]
  %672 = phi i32 [ %717, %708 ], [ 0, %668 ]
  %673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %674 = extractvalue %dx.types.CBufRet.f32 %673, 1
  %675 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %676 = extractvalue %dx.types.CBufRet.i32 %675, 1
  %677 = and i32 %676, 8
  %678 = icmp eq i32 %677, 0
  %679 = fcmp fast ogt float %674, %660
  %680 = or i1 %679, %678
  %681 = add i32 %672, 171
  %682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 %681)  ; CBufferLoadLegacy(handle,regIndex)
  %683 = extractvalue %dx.types.CBufRet.f32 %682, 0
  %684 = extractvalue %dx.types.CBufRet.f32 %682, 1
  %685 = extractvalue %dx.types.CBufRet.f32 %682, 2
  br i1 %680, label %686, label %692, !dx.controlflow.hints !69

; <label>:686                                     ; preds = %669
  %687 = fsub fast float %683, %353
  %688 = fsub fast float %684, %354
  %689 = fmul fast float %687, %687
  %690 = fmul fast float %688, %688
  %691 = fadd fast float %689, %690
  br label %708

; <label>:692                                     ; preds = %669
  %693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %694 = extractvalue %dx.types.CBufRet.f32 %693, 2
  %695 = extractvalue %dx.types.CBufRet.f32 %673, 2
  %696 = fmul fast float %695, %694
  %697 = fsub fast float %696, %674
  %698 = fdiv fast float %685, %697
  %699 = fsub fast float %353, %683
  %700 = fsub fast float %354, %684
  %701 = fsub fast float %660, %674
  %702 = fmul fast float %698, %701
  %703 = fmul fast float %699, %699
  %704 = fmul fast float %700, %700
  %705 = fadd fast float %703, %704
  %706 = fmul fast float %702, %702
  %707 = fadd fast float %705, %706
  br label %708

; <label>:708                                     ; preds = %692, %686
  %709 = phi float [ %691, %686 ], [ %707, %692 ]
  %710 = call float @dx.op.unary.f32(i32 24, float %709)  ; Sqrt(value)
  %711 = fsub float %685, %710
  %712 = fcmp fast olt float %711, 0.000000e+00
  %713 = zext i1 %712 to i32
  %714 = and i32 %713, %670
  %715 = call float @dx.op.unary.f32(i32 6, float %711)  ; FAbs(value)
  %716 = call float @dx.op.binary.f32(i32 36, float %671, float %715)  ; FMin(a,b)
  %717 = add i32 %672, 1
  %718 = extractvalue %dx.types.CBufRet.i32 %675, 0
  %719 = icmp ult i32 %717, %718
  br i1 %719, label %669, label %720

; <label>:720                                     ; preds = %708
  br label %721

; <label>:721                                     ; preds = %720, %622
  %722 = phi i32 [ 1, %622 ], [ %714, %720 ]
  %723 = phi float [ 0x47EFFFFFE0000000, %622 ], [ %716, %720 ]
  br label %724

; <label>:724                                     ; preds = %724, %721
  %725 = phi i32 [ %722, %721 ], [ %764, %724 ]
  %726 = phi float [ 0x47EFFFFFE0000000, %721 ], [ %766, %724 ]
  %727 = phi i32 [ 0, %721 ], [ %767, %724 ]
  %728 = add nuw nsw i32 %727, 191
  %729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 %728)  ; CBufferLoadLegacy(handle,regIndex)
  %730 = extractvalue %dx.types.CBufRet.f32 %729, 0
  %731 = extractvalue %dx.types.CBufRet.f32 %729, 1
  %732 = extractvalue %dx.types.CBufRet.f32 %729, 2
  %733 = add nuw nsw i32 %727, 195
  %734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 %733)  ; CBufferLoadLegacy(handle,regIndex)
  %735 = extractvalue %dx.types.CBufRet.f32 %734, 0
  %736 = extractvalue %dx.types.CBufRet.f32 %734, 1
  %737 = extractvalue %dx.types.CBufRet.f32 %734, 2
  %738 = fsub fast float %353, %730
  %739 = fsub fast float %354, %731
  %740 = fsub fast float %660, %732
  %741 = call float @dx.op.unary.f32(i32 6, float %738)  ; FAbs(value)
  %742 = call float @dx.op.unary.f32(i32 6, float %739)  ; FAbs(value)
  %743 = call float @dx.op.unary.f32(i32 6, float %740)  ; FAbs(value)
  %744 = fsub fast float %741, %735
  %745 = fsub fast float %742, %736
  %746 = fsub fast float %743, %737
  %747 = call float @dx.op.binary.f32(i32 35, float %744, float 0.000000e+00)  ; FMax(a,b)
  %748 = call float @dx.op.binary.f32(i32 35, float %745, float 0.000000e+00)  ; FMax(a,b)
  %749 = call float @dx.op.binary.f32(i32 35, float %746, float 0.000000e+00)  ; FMax(a,b)
  %750 = fmul fast float %747, %747
  %751 = fmul fast float %748, %748
  %752 = fadd fast float %751, %750
  %753 = fmul fast float %749, %749
  %754 = fadd fast float %752, %753
  %755 = call float @dx.op.unary.f32(i32 24, float %754)  ; Sqrt(value)
  %756 = call float @dx.op.binary.f32(i32 35, float %745, float %746)  ; FMax(a,b)
  %757 = call float @dx.op.binary.f32(i32 35, float %744, float %756)  ; FMax(a,b)
  %758 = call float @dx.op.binary.f32(i32 36, float %757, float 0.000000e+00)  ; FMin(a,b)
  %759 = fadd fast float %758, %755
  %760 = fsub fast float -0.000000e+00, %759
  %761 = fcmp ogt float %759, -0.000000e+00
  %762 = icmp ne i32 %725, 0
  %763 = and i1 %762, %761
  %764 = zext i1 %763 to i32
  %765 = call float @dx.op.unary.f32(i32 6, float %760)  ; FAbs(value)
  %766 = call float @dx.op.binary.f32(i32 36, float %726, float %765)  ; FMin(a,b)
  %767 = add nuw nsw i32 %727, 1
  %768 = icmp eq i32 %767, 4
  br i1 %768, label %769, label %724

; <label>:769                                     ; preds = %724
  %770 = call float @dx.op.binary.f32(i32 36, float %665, float %766)  ; FMin(a,b)
  %771 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %772 = extractvalue %dx.types.CBufRet.i32 %771, 1
  %773 = and i32 %772, 2
  %774 = icmp ne i32 %773, 0
  %775 = xor i1 %763, %774
  %776 = call float @dx.op.binary.f32(i32 36, float %770, float %723)  ; FMin(a,b)
  %777 = and i1 %775, %664
  %778 = zext i1 %777 to i32
  br label %779

; <label>:779                                     ; preds = %769, %617
  %780 = phi i32 [ %346, %617 ], [ %778, %769 ]
  %781 = phi float [ 0.000000e+00, %617 ], [ %776, %769 ]
  %782 = phi float [ %355, %617 ], [ %660, %769 ]
  %783 = icmp ne i32 %780, 0
  %784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %785 = extractvalue %dx.types.CBufRet.f32 %784, 3
  %786 = call float @dx.op.binary.f32(i32 35, float %781, float %785)  ; FMax(a,b)
  %787 = call float @dx.op.binary.f32(i32 36, float %555, float %786)  ; FMin(a,b)
  %788 = zext i1 %783 to i32
  br label %789

; <label>:789                                     ; preds = %779, %613
  %790 = phi i32 [ %788, %779 ], [ 0, %613 ]
  %791 = phi i32 [ %780, %779 ], [ %346, %613 ]
  %792 = phi float [ %782, %779 ], [ %347, %613 ]
  %793 = phi float [ %787, %779 ], [ %555, %613 ]
  %794 = extractvalue %dx.types.CBufRet.f32 %366, 2
  %795 = fmul fast float %794, %356
  %796 = call float @dx.op.unary.f32(i32 23, float %795)  ; Log(value)
  %797 = fmul fast float %796, 0x3FE62E4300000000
  %798 = call float @dx.op.binary.f32(i32 35, float %797, float 1.000000e+00)  ; FMax(a,b)
  %799 = fmul fast float %798, %793
  %800 = call float @dx.op.binary.f32(i32 36, float %799, float %615)  ; FMin(a,b)
  %801 = call float @dx.op.binary.f32(i32 35, float %800, float %367)  ; FMax(a,b)
  %802 = fsub fast float %321, %356
  %803 = fadd fast float %802, 0x3F1A36E2E0000000
  %804 = call float @dx.op.binary.f32(i32 36, float %803, float %801)  ; FMin(a,b)
  %805 = icmp eq i32 %538, 0
  br i1 %805, label %911, label %806, !dx.controlflow.hints !70

; <label>:806                                     ; preds = %789
  %807 = fcmp fast olt float %803, %801
  %808 = fmul fast float %119, %62
  %809 = fmul fast float %808, %804
  %810 = fadd fast float %809, %355
  %811 = fmul fast float %119, %63
  %812 = fmul fast float %811, %804
  %813 = fadd fast float %812, %355
  %814 = fmul fast float %119, %64
  %815 = fmul fast float %814, %804
  %816 = fadd fast float %815, %355
  br i1 %807, label %817, label %822, !dx.controlflow.hints !71

; <label>:817                                     ; preds = %806
  %818 = fmul fast float %804, %117
  %819 = fmul fast float %804, %118
  %820 = fadd fast float %818, %353
  %821 = fadd fast float %819, %354
  br label %822

; <label>:822                                     ; preds = %817, %806
  %823 = phi float [ %820, %817 ], [ %353, %806 ]
  %824 = phi float [ %821, %817 ], [ %354, %806 ]
  %825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %826 = extractvalue %dx.types.CBufRet.f32 %825, 0
  %827 = extractvalue %dx.types.CBufRet.f32 %825, 1
  %828 = fsub fast float %823, %826
  %829 = fsub fast float %824, %827
  %830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %831 = extractvalue %dx.types.CBufRet.f32 %830, 0
  %832 = extractvalue %dx.types.CBufRet.f32 %830, 1
  %833 = fmul fast float %828, %831
  %834 = fmul fast float %829, %832
  %835 = fsub fast float 1.000000e+00, %834
  %836 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %837 = extractvalue %dx.types.CBufRet.i32 %836, 3
  %838 = icmp eq i32 %837, 0
  br i1 %838, label %845, label %839, !dx.controlflow.hints !58

; <label>:839                                     ; preds = %822
  %840 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %24, float %833, float %835, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %841 = extractvalue %dx.types.ResRet.f32 %840, 0
  %842 = extractvalue %dx.types.ResRet.f32 %840, 1
  %843 = extractvalue %dx.types.ResRet.f32 %840, 2
  %844 = extractvalue %dx.types.ResRet.f32 %840, 3
  br label %851

; <label>:845                                     ; preds = %822
  %846 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %25, float %833, float %835, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %847 = extractvalue %dx.types.ResRet.f32 %846, 0
  %848 = extractvalue %dx.types.ResRet.f32 %846, 1
  %849 = extractvalue %dx.types.ResRet.f32 %846, 2
  %850 = extractvalue %dx.types.ResRet.f32 %846, 3
  br label %851

; <label>:851                                     ; preds = %845, %839
  %852 = phi float [ %841, %839 ], [ %847, %845 ]
  %853 = phi float [ %842, %839 ], [ %848, %845 ]
  %854 = phi float [ %843, %839 ], [ %849, %845 ]
  %855 = phi float [ %844, %839 ], [ %850, %845 ]
  %856 = extractvalue %dx.types.CBufRet.f32 %830, 3
  %857 = fmul fast float %856, %853
  %858 = fmul fast float %857, %852
  %859 = fsub fast float %857, %858
  %860 = fcmp fast ole float %859, 0.000000e+00
  %861 = extractvalue %dx.types.CBufRet.f32 %825, 2
  %862 = fadd fast float %858, %861
  %863 = fmul fast float %856, %854
  %864 = fadd fast float %863, %861
  %865 = fdiv fast float 1.000000e+00, %859
  %866 = select i1 %860, float 1.000000e+06, float %865
  %867 = fsub fast float %810, %862
  %868 = fmul fast float %866, %867
  %869 = call float @dx.op.unary.f32(i32 7, float %868)  ; Saturate(value)
  %870 = extractvalue %dx.types.CBufRet.f32 %830, 2
  %871 = fmul fast float %870, %869
  %872 = fsub fast float %870, %871
  %873 = fcmp fast olt float %810, %864
  %874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %875 = extractvalue %dx.types.CBufRet.f32 %874, 3
  %876 = select i1 %873, float %875, float 1.000000e+00
  %877 = fmul fast float %872, %876
  %878 = fsub fast float %813, %862
  %879 = fmul fast float %866, %878
  %880 = call float @dx.op.unary.f32(i32 7, float %879)  ; Saturate(value)
  %881 = fmul fast float %870, %880
  %882 = fsub fast float %870, %881
  %883 = fcmp fast olt float %813, %864
  %884 = select i1 %883, float %875, float 1.000000e+00
  %885 = fmul fast float %882, %884
  %886 = fadd fast float %885, %877
  %887 = fsub fast float %816, %862
  %888 = fmul fast float %866, %887
  %889 = call float @dx.op.unary.f32(i32 7, float %888)  ; Saturate(value)
  %890 = fmul fast float %870, %889
  %891 = fsub fast float %870, %890
  %892 = fcmp fast olt float %816, %864
  %893 = select i1 %892, float %875, float 1.000000e+00
  %894 = fmul fast float %891, %893
  %895 = fadd fast float %886, %894
  %896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %897 = extractvalue %dx.types.CBufRet.f32 %896, 2
  %898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %899 = extractvalue %dx.types.CBufRet.f32 %898, 0
  %900 = extractvalue %dx.types.CBufRet.f32 %898, 1
  %901 = extractvalue %dx.types.CBufRet.f32 %898, 2
  %902 = fmul fast float %804, 0x3FD5555560000000
  %903 = fmul fast float %902, %855
  %904 = fmul fast float %903, %897
  %905 = fmul fast float %904, %895
  %906 = extractvalue %dx.types.CBufRet.f32 %874, 0
  %907 = fmul fast float %905, %899
  %908 = fmul fast float %905, %900
  %909 = fmul fast float %905, %901
  %910 = fmul fast float %905, %906
  br label %911

; <label>:911                                     ; preds = %851, %789
  %912 = phi float [ %905, %851 ], [ 0.000000e+00, %789 ]
  %913 = phi float [ %910, %851 ], [ 0.000000e+00, %789 ]
  %914 = phi float [ %907, %851 ], [ 0.000000e+00, %789 ]
  %915 = phi float [ %908, %851 ], [ 0.000000e+00, %789 ]
  %916 = phi float [ %909, %851 ], [ 0.000000e+00, %789 ]
  br i1 %541, label %976, label %917, !dx.controlflow.hints !72

; <label>:917                                     ; preds = %911
  %918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %919 = extractvalue %dx.types.CBufRet.f32 %918, 0
  %920 = fsub fast float %919, %355
  %921 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %365, float %364, float %920)  ; Dot3(ax,ay,az,bx,by,bz)
  %922 = fmul fast float %216, %921
  %923 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %922)  ; FMax(a,b)
  %924 = fcmp fast olt float %119, 0.000000e+00
  %925 = call float @dx.op.binary.f32(i32 36, float %804, float %923)  ; FMin(a,b)
  br i1 %924, label %927, label %926, !dx.controlflow.hints !73

; <label>:926                                     ; preds = %917
  br label %927

; <label>:927                                     ; preds = %926, %917
  %928 = phi float [ 0.000000e+00, %926 ], [ %925, %917 ]
  %929 = phi float [ %925, %926 ], [ %804, %917 ]
  %930 = phi float [ %925, %926 ], [ 0.000000e+00, %917 ]
  %931 = phi float [ %804, %926 ], [ %925, %917 ]
  %932 = fsub fast float %929, %928
  %933 = extractvalue %dx.types.CBufRet.f32 %918, 1
  %934 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %933)  ; FMin(a,b)
  %935 = fsub fast float %355, %919
  %936 = fmul fast float %934, 0x3FF7154760000000
  %937 = fmul fast float %936, %935
  %938 = call float @dx.op.unary.f32(i32 21, float %937)  ; Exp(value)
  %939 = fmul fast float %119, 0x3FF7154760000000
  %940 = fmul fast float %939, %931
  %941 = fmul fast float %940, %934
  %942 = call float @dx.op.unary.f32(i32 21, float %941)  ; Exp(value)
  %943 = fmul fast float %939, %930
  %944 = fmul fast float %943, %934
  %945 = call float @dx.op.unary.f32(i32 21, float %944)  ; Exp(value)
  %946 = fsub fast float %942, %945
  %947 = fmul fast float %946, %938
  %948 = fmul fast float %934, %119
  %949 = fdiv fast float %947, %948
  %950 = fadd fast float %932, %949
  %951 = call float @dx.op.unary.f32(i32 6, float %119)  ; FAbs(value)
  %952 = fcmp fast olt float %951, 0x3F0FFB4800000000
  %953 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %935)  ; FMax(a,b)
  %954 = fmul fast float %953, 0x3FF7154760000000
  %955 = fmul fast float %954, %933
  %956 = call float @dx.op.unary.f32(i32 21, float %955)  ; Exp(value)
  %957 = fmul fast float %956, %804
  %958 = select i1 %952, float %957, float %950
  %959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %960 = extractvalue %dx.types.CBufRet.f32 %959, 1
  %961 = fmul fast float %958, %960
  %962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %963 = extractvalue %dx.types.CBufRet.f32 %962, 0
  %964 = extractvalue %dx.types.CBufRet.f32 %962, 1
  %965 = extractvalue %dx.types.CBufRet.f32 %962, 2
  %966 = extractvalue %dx.types.CBufRet.f32 %959, 2
  %967 = fmul fast float %963, %961
  %968 = fmul fast float %964, %961
  %969 = fmul fast float %965, %961
  %970 = fadd fast float %967, %914
  %971 = fadd fast float %968, %915
  %972 = fadd fast float %969, %916
  %973 = fmul fast float %966, %961
  %974 = fadd fast float %973, %913
  %975 = fadd fast float %961, %912
  br label %976

; <label>:976                                     ; preds = %927, %911
  %977 = phi float [ %975, %927 ], [ %912, %911 ]
  %978 = phi float [ %974, %927 ], [ %913, %911 ]
  %979 = phi float [ %970, %927 ], [ %914, %911 ]
  %980 = phi float [ %971, %927 ], [ %915, %911 ]
  %981 = phi float [ %972, %927 ], [ %916, %911 ]
  %982 = icmp eq i32 %614, 0
  br i1 %982, label %1177, label %983, !dx.controlflow.hints !74

; <label>:983                                     ; preds = %976
  %984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %985 = extractvalue %dx.types.CBufRet.f32 %984, 3
  %986 = fmul fast float %985, %356
  %987 = fcmp fast oeq float %986, 0.000000e+00
  br i1 %987, label %1002, label %988, !dx.controlflow.hints !75

; <label>:988                                     ; preds = %983
  %989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %990 = extractvalue %dx.types.CBufRet.f32 %989, 3
  %991 = fmul fast float %990, %986
  %992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %993 = extractvalue %dx.types.CBufRet.f32 %992, 0
  %994 = extractvalue %dx.types.CBufRet.f32 %992, 1
  %995 = extractvalue %dx.types.CBufRet.f32 %992, 2
  %996 = fmul fast float %993, %991
  %997 = fmul fast float %994, %991
  %998 = fmul fast float %995, %991
  %999 = call float @dx.op.unary.f32(i32 23, float %996)  ; Log(value)
  %1000 = call float @dx.op.unary.f32(i32 23, float %997)  ; Log(value)
  %1001 = call float @dx.op.unary.f32(i32 23, float %998)  ; Log(value)
  br label %1002

; <label>:1002                                    ; preds = %988, %983
  %1003 = phi float [ %999, %988 ], [ 0.000000e+00, %983 ]
  %1004 = phi float [ %1000, %988 ], [ 0.000000e+00, %983 ]
  %1005 = phi float [ %1001, %988 ], [ 0.000000e+00, %983 ]
  %1006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1007 = extractvalue %dx.types.CBufRet.f32 %1006, 0
  %1008 = extractvalue %dx.types.CBufRet.f32 %1006, 1
  %1009 = extractvalue %dx.types.CBufRet.f32 %1006, 2
  %1010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1011 = extractvalue %dx.types.CBufRet.f32 %1010, 0
  %1012 = extractvalue %dx.types.CBufRet.f32 %1010, 1
  %1013 = extractvalue %dx.types.CBufRet.f32 %1010, 2
  %1014 = fsub fast float %353, %1011
  %1015 = fsub fast float %354, %1012
  %1016 = fsub fast float %355, %1013
  %1017 = fmul fast float %1014, %1007
  %1018 = fmul fast float %1015, %1008
  %1019 = fmul fast float %1016, %1009
  %1020 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %1021 = extractvalue %dx.types.CBufRet.i32 %1020, 0
  %1022 = extractvalue %dx.types.CBufRet.i32 %1020, 1
  %1023 = uitofp i32 %1021 to float
  %1024 = uitofp i32 %1022 to float
  %1025 = fmul fast float %1017, %1023
  %1026 = fmul fast float %1018, %1024
  %1027 = fadd fast float %1025, 5.000000e-01
  %1028 = fadd fast float %1026, 5.000000e-01
  %1029 = call float @dx.op.unary.f32(i32 22, float %1027)  ; Frc(value)
  %1030 = call float @dx.op.unary.f32(i32 22, float %1028)  ; Frc(value)
  %1031 = call float @dx.op.unary.f32(i32 27, float %1027)  ; Round_ni(value)
  %1032 = call float @dx.op.unary.f32(i32 27, float %1028)  ; Round_ni(value)
  %1033 = fadd fast float %1031, 1.000000e+00
  %1034 = fadd fast float %1032, 1.000000e+00
  %1035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %1036 = extractvalue %dx.types.CBufRet.f32 %1035, 0
  %1037 = extractvalue %dx.types.CBufRet.f32 %1035, 1
  %1038 = fmul fast float %1036, %1033
  %1039 = fmul fast float %1037, %1034
  %1040 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %24, float %1038, float %1039, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1041 = extractvalue %dx.types.ResRet.f32 %1040, 0
  %1042 = extractvalue %dx.types.ResRet.f32 %1040, 1
  %1043 = extractvalue %dx.types.ResRet.f32 %1040, 2
  %1044 = extractvalue %dx.types.ResRet.f32 %1040, 3
  %1045 = extractvalue %dx.types.CBufRet.i32 %1020, 2
  %1046 = extractvalue %dx.types.CBufRet.f32 %1035, 2
  %1047 = uitofp i32 %1045 to float
  %1048 = fadd fast float %1047, -1.000000e+00
  %1049 = fmul fast float %1048, %1041
  %1050 = fmul fast float %1048, %1042
  %1051 = fmul fast float %1048, %1043
  %1052 = fmul fast float %1048, %1044
  %1053 = fadd fast float %1049, 5.000000e-01
  %1054 = fadd fast float %1050, 5.000000e-01
  %1055 = fadd fast float %1051, 5.000000e-01
  %1056 = fadd fast float %1052, 5.000000e-01
  %1057 = fptoui float %1053 to i32
  %1058 = fptoui float %1054 to i32
  %1059 = fptoui float %1055 to i32
  %1060 = fptoui float %1056 to i32
  %1061 = uitofp i32 %1057 to float
  %1062 = uitofp i32 %1058 to float
  %1063 = uitofp i32 %1059 to float
  %1064 = uitofp i32 %1060 to float
  %1065 = fadd fast float %1061, 5.000000e-01
  %1066 = fadd fast float %1062, 5.000000e-01
  %1067 = fadd fast float %1063, 5.000000e-01
  %1068 = fadd fast float %1064, 5.000000e-01
  %1069 = fmul fast float %1065, %1046
  %1070 = fmul fast float %1066, %1046
  %1071 = fmul fast float %1067, %1046
  %1072 = fmul fast float %1068, %1046
  %1073 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %25, float %1069, float %1019, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1074 = extractvalue %dx.types.ResRet.f32 %1073, 0
  %1075 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %25, float %1070, float %1019, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1076 = extractvalue %dx.types.ResRet.f32 %1075, 0
  %1077 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %25, float %1071, float %1019, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1078 = extractvalue %dx.types.ResRet.f32 %1077, 0
  %1079 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %25, float %1072, float %1019, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1080 = extractvalue %dx.types.ResRet.f32 %1079, 0
  %1081 = fsub fast float %1078, %1080
  %1082 = fmul fast float %1081, %1029
  %1083 = fadd fast float %1082, %1080
  %1084 = fsub fast float %1076, %1074
  %1085 = fmul fast float %1084, %1029
  %1086 = fadd fast float %1085, %1074
  %1087 = fsub fast float %1086, %1083
  %1088 = fmul fast float %1087, %1030
  %1089 = fadd fast float %1088, %1083
  %1090 = fcmp fast ogt float %1089, 0.000000e+00
  br i1 %1090, label %1091, label %1159, !dx.controlflow.hints !76

; <label>:1091                                    ; preds = %1002
  %1092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1093 = extractvalue %dx.types.CBufRet.f32 %1092, 0
  %1094 = extractvalue %dx.types.CBufRet.f32 %1092, 1
  %1095 = extractvalue %dx.types.CBufRet.f32 %1092, 2
  %1096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1097 = extractvalue %dx.types.CBufRet.f32 %1096, 0
  %1098 = extractvalue %dx.types.CBufRet.f32 %1096, 1
  %1099 = extractvalue %dx.types.CBufRet.f32 %1096, 2
  %1100 = fmul fast float %1015, %1007
  %1101 = fmul fast float %1016, %1007
  %1102 = fadd fast float %1017, %1097
  %1103 = fadd fast float %1100, %1098
  %1104 = fadd fast float %1101, %1099
  %1105 = fmul fast float %1102, %1093
  %1106 = fmul fast float %1103, %1093
  %1107 = fmul fast float %1104, %1093
  %1108 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %22, float %1105, float %1106, float %1107, float undef, i32 0, i32 0, i32 0, float %1003)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1109 = extractvalue %dx.types.ResRet.f32 %1108, 0
  %1110 = fmul fast float %1102, %1094
  %1111 = fmul fast float %1103, %1094
  %1112 = fmul fast float %1104, %1094
  %1113 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %22, float %1110, float %1111, float %1112, float undef, i32 0, i32 0, i32 0, float %1004)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1114 = extractvalue %dx.types.ResRet.f32 %1113, 1
  %1115 = fmul fast float %1102, %1095
  %1116 = fmul fast float %1103, %1095
  %1117 = fmul fast float %1104, %1095
  %1118 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %22, float %1115, float %1116, float %1117, float undef, i32 0, i32 0, i32 0, float %1005)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1119 = extractvalue %dx.types.ResRet.f32 %1118, 2
  %1120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %1121 = extractvalue %dx.types.CBufRet.f32 %1120, 1
  %1122 = fmul fast float %1114, %1109
  %1123 = fmul fast float %1122, %1119
  %1124 = call float @dx.op.unary.f32(i32 23, float %1123)  ; Log(value)
  %1125 = fmul fast float %1124, %1121
  %1126 = call float @dx.op.unary.f32(i32 21, float %1125)  ; Exp(value)
  %1127 = extractvalue %dx.types.CBufRet.f32 %1120, 2
  %1128 = fmul fast float %1089, %1089
  %1129 = fmul fast float %1128, %1126
  %1130 = fmul fast float %1129, %1127
  %1131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %1132 = extractvalue %dx.types.CBufRet.f32 %1131, 3
  %1133 = fmul fast float %1132, %1130
  %1134 = bitcast float %1133 to i32
  %1135 = sitofp i32 %1134 to float
  %1136 = fptosi float %1135 to i32
  %1137 = bitcast i32 %1136 to float
  %1138 = fsub fast float 1.000000e+00, %1130
  %1139 = bitcast float %1138 to i32
  %1140 = sitofp i32 %1139 to float
  %1141 = fptosi float %1140 to i32
  %1142 = bitcast i32 %1141 to float
  %1143 = fadd fast float %1137, %1142
  %1144 = bitcast float %1143 to i32
  %1145 = sub nsw i32 2129859010, %1144
  %1146 = bitcast i32 %1145 to float
  %1147 = fmul fast float %1146, %1137
  %1148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1149 = extractvalue %dx.types.CBufRet.f32 %1148, 2
  %1150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1151 = extractvalue %dx.types.CBufRet.f32 %1150, 0
  %1152 = fmul fast float %1147, %1151
  %1153 = fadd fast float %1152, 1.000000e+00
  %1154 = bitcast float %1153 to i32
  %1155 = sub nsw i32 2129859010, %1154
  %1156 = bitcast i32 %1155 to float
  %1157 = fmul fast float %1147, %1149
  %1158 = fmul fast float %1157, %1156
  br label %1159

; <label>:1159                                    ; preds = %1091, %1002
  %1160 = phi float [ %1158, %1091 ], [ %1089, %1002 ]
  %1161 = fmul fast float %1160, %804
  %1162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %1163 = extractvalue %dx.types.CBufRet.f32 %1162, 0
  %1164 = extractvalue %dx.types.CBufRet.f32 %1162, 1
  %1165 = extractvalue %dx.types.CBufRet.f32 %1162, 2
  %1166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1167 = extractvalue %dx.types.CBufRet.f32 %1166, 1
  %1168 = fmul fast float %1163, %1161
  %1169 = fmul fast float %1164, %1161
  %1170 = fmul fast float %1165, %1161
  %1171 = fadd fast float %1168, %979
  %1172 = fadd fast float %1169, %980
  %1173 = fadd fast float %1170, %981
  %1174 = fmul fast float %1167, %1161
  %1175 = fadd fast float %1174, %978
  %1176 = fadd fast float %1161, %977
  br label %1177

; <label>:1177                                    ; preds = %1159, %976
  %1178 = phi float [ %1176, %1159 ], [ %977, %976 ]
  %1179 = phi float [ %1175, %1159 ], [ %978, %976 ]
  %1180 = phi float [ %1171, %1159 ], [ %979, %976 ]
  %1181 = phi float [ %1172, %1159 ], [ %980, %976 ]
  %1182 = phi float [ %1173, %1159 ], [ %981, %976 ]
  %1183 = icmp eq i32 %790, 0
  br i1 %1183, label %1227, label %1184, !dx.controlflow.hints !77

; <label>:1184                                    ; preds = %1177
  %1185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1186 = extractvalue %dx.types.CBufRet.f32 %1185, 1
  %1187 = fsub fast float %804, %1186
  %1188 = extractvalue %dx.types.CBufRet.f32 %1185, 3
  %1189 = fmul fast float %1187, %1188
  %1190 = call float @dx.op.unary.f32(i32 7, float %1189)  ; Saturate(value)
  %1191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1192 = extractvalue %dx.types.CBufRet.f32 %1191, 3
  %1193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1194 = extractvalue %dx.types.CBufRet.f32 %1193, 2
  %1195 = fsub fast float %1194, %792
  %1196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1197 = extractvalue %dx.types.CBufRet.f32 %1196, 3
  %1198 = fmul fast float %1195, %1197
  %1199 = call float @dx.op.unary.f32(i32 7, float %1198)  ; Saturate(value)
  %1200 = fmul fast float %1199, %1192
  %1201 = extractvalue %dx.types.CBufRet.f32 %1196, 0
  %1202 = fsub fast float %356, %1201
  %1203 = extractvalue %dx.types.CBufRet.f32 %1196, 1
  %1204 = fmul fast float %1202, %1203
  %1205 = call float @dx.op.unary.f32(i32 7, float %1204)  ; Saturate(value)
  %1206 = fsub fast float 1.000000e+00, %1190
  %1207 = fmul fast float %1205, %1206
  %1208 = fadd fast float %1207, %1190
  %1209 = extractvalue %dx.types.CBufRet.f32 %1185, 0
  %1210 = fsub fast float %1200, %1209
  %1211 = fmul fast float %1210, %1208
  %1212 = fadd fast float %1211, %1209
  %1213 = extractvalue %dx.types.CBufRet.f32 %1191, 0
  %1214 = extractvalue %dx.types.CBufRet.f32 %1191, 1
  %1215 = extractvalue %dx.types.CBufRet.f32 %1191, 2
  %1216 = fmul fast float %1212, %804
  %1217 = extractvalue %dx.types.CBufRet.f32 %1196, 2
  %1218 = fmul fast float %1216, %1213
  %1219 = fmul fast float %1216, %1214
  %1220 = fmul fast float %1216, %1215
  %1221 = fadd fast float %1218, %1180
  %1222 = fadd fast float %1219, %1181
  %1223 = fadd fast float %1220, %1182
  %1224 = fmul fast float %1216, %1217
  %1225 = fadd fast float %1224, %1179
  %1226 = fadd fast float %1216, %1178
  br label %1227

; <label>:1227                                    ; preds = %1184, %1177
  %1228 = phi float [ %1226, %1184 ], [ %1178, %1177 ]
  %1229 = phi float [ %1225, %1184 ], [ %1179, %1177 ]
  %1230 = phi float [ %1221, %1184 ], [ %1180, %1177 ]
  %1231 = phi float [ %1222, %1184 ], [ %1181, %1177 ]
  %1232 = phi float [ %1223, %1184 ], [ %1182, %1177 ]
  %1233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1234 = extractvalue %dx.types.CBufRet.f32 %1233, 1
  %1235 = fcmp fast ogt float %1228, %1234
  br i1 %1235, label %1236, label %1242, !dx.controlflow.hints !78

; <label>:1236                                    ; preds = %1227
  %1237 = fdiv fast float 1.000000e+00, %1228
  %1238 = fmul fast float %1237, %1230
  %1239 = fmul fast float %1237, %1231
  %1240 = fmul fast float %1237, %1232
  %1241 = fmul fast float %1237, %1229
  br label %1242

; <label>:1242                                    ; preds = %1236, %1227
  %1243 = phi float [ %1241, %1236 ], [ %1229, %1227 ]
  %1244 = phi float [ %1238, %1236 ], [ %1230, %1227 ]
  %1245 = phi float [ %1239, %1236 ], [ %1231, %1227 ]
  %1246 = phi float [ %1240, %1236 ], [ %1232, %1227 ]
  br i1 %1235, label %1249, label %1247, !dx.controlflow.hints !79

; <label>:1247                                    ; preds = %1242
  %1248 = fadd fast float %804, %356
  br label %2967

; <label>:1249                                    ; preds = %1242
  %1250 = fmul fast float %1228, 0xBFF7154760000000
  %1251 = call float @dx.op.unary.f32(i32 21, float %1250)  ; Exp(value)
  %1252 = call float @dx.op.unary.f32(i32 7, float %1251)  ; Saturate(value)
  %1253 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %1254 = extractvalue %dx.types.CBufRet.i32 %1253, 0
  %1255 = icmp eq i32 %1254, 1
  br i1 %1255, label %1256, label %1291, !dx.controlflow.hints !80

; <label>:1256                                    ; preds = %1249
  %1257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1258 = extractvalue %dx.types.CBufRet.f32 %1257, 0
  %1259 = extractvalue %dx.types.CBufRet.f32 %1257, 1
  %1260 = fsub fast float %353, %1258
  %1261 = fsub fast float %354, %1259
  %1262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1263 = extractvalue %dx.types.CBufRet.f32 %1262, 0
  %1264 = extractvalue %dx.types.CBufRet.f32 %1262, 1
  %1265 = fmul fast float %1260, %1263
  %1266 = fmul fast float %1261, %1264
  %1267 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %25, float %1265, float %1266, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1268 = extractvalue %dx.types.ResRet.f32 %1267, 0
  %1269 = fcmp fast ogt float %1268, 0.000000e+00
  %1270 = extractvalue %dx.types.CBufRet.i32 %1253, 3
  %1271 = icmp ne i32 %1270, 0
  %1272 = and i1 %1269, %1271
  br i1 %1272, label %1273, label %1291, !dx.controlflow.hints !81

; <label>:1273                                    ; preds = %1256
  %1274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1275 = extractvalue %dx.types.CBufRet.f32 %1274, 0
  %1276 = extractvalue %dx.types.CBufRet.f32 %1274, 1
  %1277 = fsub fast float %353, %1275
  %1278 = fsub fast float %354, %1276
  %1279 = fmul fast float %1277, %1277
  %1280 = fmul fast float %1278, %1278
  %1281 = fadd fast float %1279, %1280
  %1282 = uitofp i32 %1270 to float
  %1283 = fmul fast float %1282, %1282
  %1284 = fcmp fast ogt float %1281, %1283
  br i1 %1284, label %1291, label %1285, !dx.controlflow.hints !82

; <label>:1285                                    ; preds = %1273
  %1286 = call float @dx.op.unary.f32(i32 24, float %1281)  ; Sqrt(value)
  %1287 = fsub fast float %1282, %1286
  %1288 = fmul fast float %1287, 0x3F75555560000000
  %1289 = call float @dx.op.unary.f32(i32 7, float %1288)  ; Saturate(value)
  %1290 = call float @dx.op.binary.f32(i32 36, float %1289, float %1268)  ; FMin(a,b)
  br label %1291

; <label>:1291                                    ; preds = %1285, %1273, %1256, %1249
  %1292 = phi float [ 1.000000e+00, %1249 ], [ %1290, %1285 ], [ %1268, %1256 ], [ 0.000000e+00, %1273 ]
  %1293 = fcmp fast ogt float %1292, 0.000000e+00
  br i1 %1293, label %1294, label %1367, !dx.controlflow.hints !83

; <label>:1294                                    ; preds = %1291
  %1295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %1296 = extractvalue %dx.types.ResRet.i32 %1295, 0
  %1297 = extractvalue %dx.types.ResRet.i32 %1295, 1
  %1298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %1299 = extractvalue %dx.types.ResRet.i32 %1298, 0
  %1300 = extractvalue %dx.types.ResRet.i32 %1298, 1
  %1301 = extractvalue %dx.types.ResRet.i32 %1298, 2
  %1302 = extractvalue %dx.types.ResRet.i32 %1298, 3
  %1303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1304 = extractvalue %dx.types.ResRet.i32 %1303, 0
  %1305 = extractvalue %dx.types.ResRet.i32 %1303, 1
  %1306 = extractvalue %dx.types.ResRet.i32 %1303, 2
  %1307 = extractvalue %dx.types.ResRet.i32 %1303, 3
  %1308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1309 = extractvalue %dx.types.ResRet.i32 %1308, 0
  %1310 = extractvalue %dx.types.ResRet.i32 %1308, 1
  %1311 = extractvalue %dx.types.ResRet.i32 %1308, 2
  %1312 = extractvalue %dx.types.ResRet.i32 %1308, 3
  %1313 = and i32 %1309, 65535
  %1314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1313)  ; LegacyF16ToF32(value)
  %1315 = lshr i32 %1309, 16
  %1316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1315)  ; LegacyF16ToF32(value)
  %1317 = and i32 %1310, 65535
  %1318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1317)  ; LegacyF16ToF32(value)
  %1319 = lshr i32 %1310, 16
  %1320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1319)  ; LegacyF16ToF32(value)
  %1321 = and i32 %1311, 65535
  %1322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1321)  ; LegacyF16ToF32(value)
  %1323 = lshr i32 %1311, 16
  %1324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1323)  ; LegacyF16ToF32(value)
  %1325 = and i32 %1312, 65535
  %1326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1325)  ; LegacyF16ToF32(value)
  %1327 = lshr i32 %1312, 16
  %1328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1327)  ; LegacyF16ToF32(value)
  %1329 = and i32 %1304, 65535
  %1330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1329)  ; LegacyF16ToF32(value)
  %1331 = lshr i32 %1304, 16
  %1332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1331)  ; LegacyF16ToF32(value)
  %1333 = and i32 %1305, 65535
  %1334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1333)  ; LegacyF16ToF32(value)
  %1335 = lshr i32 %1305, 16
  %1336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1335)  ; LegacyF16ToF32(value)
  %1337 = and i32 %1306, 65535
  %1338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1337)  ; LegacyF16ToF32(value)
  %1339 = lshr i32 %1306, 16
  %1340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1339)  ; LegacyF16ToF32(value)
  %1341 = and i32 %1307, 65535
  %1342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1341)  ; LegacyF16ToF32(value)
  %1343 = lshr i32 %1307, 16
  %1344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1343)  ; LegacyF16ToF32(value)
  %1345 = and i32 %1299, 65535
  %1346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1345)  ; LegacyF16ToF32(value)
  %1347 = lshr i32 %1299, 16
  %1348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1347)  ; LegacyF16ToF32(value)
  %1349 = and i32 %1300, 65535
  %1350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1349)  ; LegacyF16ToF32(value)
  %1351 = lshr i32 %1300, 16
  %1352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1351)  ; LegacyF16ToF32(value)
  %1353 = and i32 %1301, 65535
  %1354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1353)  ; LegacyF16ToF32(value)
  %1355 = lshr i32 %1301, 16
  %1356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1355)  ; LegacyF16ToF32(value)
  %1357 = and i32 %1302, 65535
  %1358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1357)  ; LegacyF16ToF32(value)
  %1359 = lshr i32 %1302, 16
  %1360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1359)  ; LegacyF16ToF32(value)
  %1361 = and i32 %1296, 65535
  %1362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1361)  ; LegacyF16ToF32(value)
  %1363 = lshr i32 %1296, 16
  %1364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1363)  ; LegacyF16ToF32(value)
  %1365 = and i32 %1297, 65535
  %1366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1365)  ; LegacyF16ToF32(value)
  br label %1367

; <label>:1367                                    ; preds = %1294, %1291
  %1368 = phi float [ %1366, %1294 ], [ 0.000000e+00, %1291 ]
  %1369 = phi float [ %1364, %1294 ], [ 0.000000e+00, %1291 ]
  %1370 = phi float [ %1362, %1294 ], [ 0.000000e+00, %1291 ]
  %1371 = phi float [ %1360, %1294 ], [ 0.000000e+00, %1291 ]
  %1372 = phi float [ %1358, %1294 ], [ 0.000000e+00, %1291 ]
  %1373 = phi float [ %1356, %1294 ], [ 0.000000e+00, %1291 ]
  %1374 = phi float [ %1354, %1294 ], [ 0.000000e+00, %1291 ]
  %1375 = phi float [ %1352, %1294 ], [ 0.000000e+00, %1291 ]
  %1376 = phi float [ %1350, %1294 ], [ 0.000000e+00, %1291 ]
  %1377 = phi float [ %1348, %1294 ], [ 0.000000e+00, %1291 ]
  %1378 = phi float [ %1346, %1294 ], [ 0.000000e+00, %1291 ]
  %1379 = phi float [ %1344, %1294 ], [ 0.000000e+00, %1291 ]
  %1380 = phi float [ %1342, %1294 ], [ 0.000000e+00, %1291 ]
  %1381 = phi float [ %1340, %1294 ], [ 0.000000e+00, %1291 ]
  %1382 = phi float [ %1338, %1294 ], [ 0.000000e+00, %1291 ]
  %1383 = phi float [ %1336, %1294 ], [ 0.000000e+00, %1291 ]
  %1384 = phi float [ %1334, %1294 ], [ 0.000000e+00, %1291 ]
  %1385 = phi float [ %1332, %1294 ], [ 0.000000e+00, %1291 ]
  %1386 = phi float [ %1330, %1294 ], [ 0.000000e+00, %1291 ]
  %1387 = phi float [ %1328, %1294 ], [ 0.000000e+00, %1291 ]
  %1388 = phi float [ %1326, %1294 ], [ 0.000000e+00, %1291 ]
  %1389 = phi float [ %1324, %1294 ], [ 0.000000e+00, %1291 ]
  %1390 = phi float [ %1322, %1294 ], [ 0.000000e+00, %1291 ]
  %1391 = phi float [ %1320, %1294 ], [ 0.000000e+00, %1291 ]
  %1392 = phi float [ %1318, %1294 ], [ 0.000000e+00, %1291 ]
  %1393 = phi float [ %1316, %1294 ], [ 0.000000e+00, %1291 ]
  %1394 = phi float [ %1314, %1294 ], [ 0.000000e+00, %1291 ]
  %1395 = fcmp fast olt float %1292, 1.000000e+00
  br i1 %1395, label %1396, label %2056, !dx.controlflow.hints !84

; <label>:1396                                    ; preds = %1367
  %1397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1398 = extractvalue %dx.types.CBufRet.f32 %1397, 0
  %1399 = extractvalue %dx.types.CBufRet.f32 %1397, 1
  %1400 = fsub fast float %353, %1398
  %1401 = fsub fast float %354, %1399
  %1402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1403 = extractvalue %dx.types.CBufRet.f32 %1402, 0
  %1404 = extractvalue %dx.types.CBufRet.f32 %1402, 1
  %1405 = fmul fast float %1400, %1403
  %1406 = fmul fast float %1401, %1404
  %1407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1408 = extractvalue %dx.types.CBufRet.f32 %1407, 0
  %1409 = fmul fast float %1408, %1405
  %1410 = extractvalue %dx.types.CBufRet.f32 %1407, 1
  %1411 = fadd fast float %1409, %1410
  %1412 = extractvalue %dx.types.CBufRet.f32 %1407, 2
  %1413 = fmul fast float %1412, %1406
  %1414 = extractvalue %dx.types.CBufRet.f32 %1407, 3
  %1415 = fadd fast float %1413, %1414
  %1416 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %25, float %1411, float %1415, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1417 = extractvalue %dx.types.ResRet.f32 %1416, 0
  %1418 = extractvalue %dx.types.ResRet.f32 %1416, 1
  %1419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1420 = extractvalue %dx.types.CBufRet.f32 %1419, 1
  %1421 = extractvalue %dx.types.CBufRet.f32 %1419, 0
  %1422 = fsub fast float %1420, %1421
  %1423 = fmul fast float %1422, %1417
  %1424 = fadd fast float %1423, %1421
  %1425 = extractvalue %dx.types.CBufRet.f32 %1419, 3
  %1426 = extractvalue %dx.types.CBufRet.f32 %1419, 2
  %1427 = fsub fast float %1425, %1426
  %1428 = fmul fast float %1427, %1418
  %1429 = fadd fast float %1428, %1426
  %1430 = fsub fast float %355, %1424
  %1431 = fsub fast float %1429, %1424
  %1432 = fdiv fast float %1430, %1431
  %1433 = call float @dx.op.unary.f32(i32 7, float %1432)  ; Saturate(value)
  %1434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1435 = extractvalue %dx.types.CBufRet.f32 %1434, 0
  %1436 = fmul fast float %1435, %1433
  %1437 = extractvalue %dx.types.CBufRet.f32 %1434, 1
  %1438 = fadd fast float %1436, %1437
  %1439 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %25, float %1411, float %1415, float %1438, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1440 = extractvalue %dx.types.ResRet.f32 %1439, 0
  %1441 = extractvalue %dx.types.ResRet.f32 %1439, 1
  %1442 = extractvalue %dx.types.ResRet.f32 %1439, 2
  %1443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1444 = extractvalue %dx.types.CBufRet.f32 %1443, 0
  %1445 = extractvalue %dx.types.CBufRet.f32 %1443, 1
  %1446 = extractvalue %dx.types.CBufRet.f32 %1443, 2
  %1447 = fmul fast float %1444, %1440
  %1448 = fmul fast float %1445, %1441
  %1449 = fmul fast float %1446, %1442
  %1450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1451 = extractvalue %dx.types.CBufRet.f32 %1450, 0
  %1452 = extractvalue %dx.types.CBufRet.f32 %1450, 1
  %1453 = extractvalue %dx.types.CBufRet.f32 %1450, 2
  %1454 = fadd fast float %1447, %1451
  %1455 = fadd fast float %1448, %1452
  %1456 = fadd fast float %1449, %1453
  %1457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1458 = extractvalue %dx.types.CBufRet.f32 %1457, 0
  %1459 = fmul fast float %1458, %1405
  %1460 = extractvalue %dx.types.CBufRet.f32 %1457, 1
  %1461 = fadd fast float %1459, %1460
  %1462 = extractvalue %dx.types.CBufRet.f32 %1457, 2
  %1463 = fmul fast float %1462, %1406
  %1464 = extractvalue %dx.types.CBufRet.f32 %1457, 3
  %1465 = fadd fast float %1463, %1464
  %1466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1467 = extractvalue %dx.types.CBufRet.f32 %1466, 0
  %1468 = extractvalue %dx.types.CBufRet.f32 %1466, 1
  %1469 = extractvalue %dx.types.CBufRet.f32 %1466, 2
  %1470 = extractvalue %dx.types.CBufRet.f32 %1466, 3
  %1471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1472 = extractvalue %dx.types.CBufRet.f32 %1471, 0
  %1473 = extractvalue %dx.types.CBufRet.f32 %1471, 1
  %1474 = extractvalue %dx.types.CBufRet.f32 %1471, 2
  %1475 = extractvalue %dx.types.CBufRet.f32 %1471, 3
  %1476 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1461, float %1465, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1477 = extractvalue %dx.types.ResRet.f32 %1476, 0
  %1478 = extractvalue %dx.types.ResRet.f32 %1476, 1
  %1479 = extractvalue %dx.types.ResRet.f32 %1476, 2
  %1480 = extractvalue %dx.types.ResRet.f32 %1476, 3
  %1481 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1461, float %1465, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1482 = extractvalue %dx.types.ResRet.f32 %1481, 0
  %1483 = extractvalue %dx.types.ResRet.f32 %1481, 1
  %1484 = extractvalue %dx.types.ResRet.f32 %1481, 2
  %1485 = extractvalue %dx.types.ResRet.f32 %1481, 3
  %1486 = fmul fast float %1477, %1454
  %1487 = fmul fast float %1482, %1454
  %1488 = fmul fast float %1484, %1454
  %1489 = fmul fast float %1480, %1454
  %1490 = fadd fast float %1486, %1467
  %1491 = fadd fast float %1487, %1468
  %1492 = fadd fast float %1488, %1469
  %1493 = fadd fast float %1489, %1470
  %1494 = fmul fast float %1478, %1454
  %1495 = fmul fast float %1483, %1454
  %1496 = fadd fast float %1494, %1472
  %1497 = fadd fast float %1495, %1473
  %1498 = fmul fast float %1479, %1454
  %1499 = fmul fast float %1485, %1454
  %1500 = fadd fast float %1498, %1474
  %1501 = fadd fast float %1499, %1475
  %1502 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1461, float %1465, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1503 = extractvalue %dx.types.ResRet.f32 %1502, 0
  %1504 = extractvalue %dx.types.ResRet.f32 %1502, 1
  %1505 = extractvalue %dx.types.ResRet.f32 %1502, 2
  %1506 = extractvalue %dx.types.ResRet.f32 %1502, 3
  %1507 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1461, float %1465, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1508 = extractvalue %dx.types.ResRet.f32 %1507, 0
  %1509 = extractvalue %dx.types.ResRet.f32 %1507, 1
  %1510 = extractvalue %dx.types.ResRet.f32 %1507, 2
  %1511 = extractvalue %dx.types.ResRet.f32 %1507, 3
  %1512 = fmul fast float %1503, %1455
  %1513 = fmul fast float %1508, %1455
  %1514 = fmul fast float %1510, %1455
  %1515 = fmul fast float %1506, %1455
  %1516 = fadd fast float %1490, %1512
  %1517 = fadd fast float %1491, %1513
  %1518 = fadd fast float %1492, %1514
  %1519 = fadd fast float %1493, %1515
  %1520 = fmul fast float %1504, %1455
  %1521 = fmul fast float %1509, %1455
  %1522 = fadd fast float %1496, %1520
  %1523 = fadd fast float %1497, %1521
  %1524 = fmul fast float %1505, %1455
  %1525 = fmul fast float %1511, %1455
  %1526 = fadd fast float %1500, %1524
  %1527 = fadd fast float %1501, %1525
  %1528 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1461, float %1465, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1529 = extractvalue %dx.types.ResRet.f32 %1528, 0
  %1530 = extractvalue %dx.types.ResRet.f32 %1528, 1
  %1531 = extractvalue %dx.types.ResRet.f32 %1528, 2
  %1532 = extractvalue %dx.types.ResRet.f32 %1528, 3
  %1533 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1461, float %1465, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1534 = extractvalue %dx.types.ResRet.f32 %1533, 0
  %1535 = extractvalue %dx.types.ResRet.f32 %1533, 1
  %1536 = extractvalue %dx.types.ResRet.f32 %1533, 2
  %1537 = extractvalue %dx.types.ResRet.f32 %1533, 3
  %1538 = fmul fast float %1529, %1456
  %1539 = fmul fast float %1534, %1456
  %1540 = fmul fast float %1536, %1456
  %1541 = fmul fast float %1532, %1456
  %1542 = fadd fast float %1516, %1538
  %1543 = fadd fast float %1517, %1539
  %1544 = fadd fast float %1518, %1540
  %1545 = fadd fast float %1519, %1541
  %1546 = fmul fast float %1530, %1456
  %1547 = fmul fast float %1535, %1456
  %1548 = fadd fast float %1522, %1546
  %1549 = fadd fast float %1523, %1547
  %1550 = fmul fast float %1531, %1456
  %1551 = fmul fast float %1537, %1456
  %1552 = fadd fast float %1526, %1550
  %1553 = fadd fast float %1527, %1551
  %1554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1555 = extractvalue %dx.types.CBufRet.f32 %1554, 0
  %1556 = fsub fast float %353, %1555
  %1557 = fsub fast float %1398, %353
  %1558 = call float @dx.op.binary.f32(i32 35, float %1557, float %1556)  ; FMax(a,b)
  %1559 = extractvalue %dx.types.CBufRet.f32 %1554, 1
  %1560 = fsub fast float %354, %1559
  %1561 = fsub fast float %1399, %354
  %1562 = call float @dx.op.binary.f32(i32 35, float %1561, float %1560)  ; FMax(a,b)
  %1563 = call float @dx.op.binary.f32(i32 35, float %1558, float %1562)  ; FMax(a,b)
  %1564 = extractvalue %dx.types.CBufRet.f32 %1402, 3
  %1565 = fmul fast float %1564, %1563
  %1566 = call float @dx.op.unary.f32(i32 7, float %1565)  ; Saturate(value)
  %1567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1568 = extractvalue %dx.types.CBufRet.f32 %1567, 0
  %1569 = extractvalue %dx.types.CBufRet.f32 %1567, 1
  %1570 = extractvalue %dx.types.CBufRet.f32 %1567, 2
  %1571 = extractvalue %dx.types.CBufRet.f32 %1567, 3
  %1572 = fsub fast float %1568, %1542
  %1573 = fsub fast float %1569, %1543
  %1574 = fsub fast float %1570, %1544
  %1575 = fsub fast float %1571, %1545
  %1576 = fmul fast float %1572, %1566
  %1577 = fmul fast float %1573, %1566
  %1578 = fmul fast float %1574, %1566
  %1579 = fmul fast float %1575, %1566
  %1580 = fadd fast float %1576, %1542
  %1581 = fadd fast float %1577, %1543
  %1582 = fadd fast float %1578, %1544
  %1583 = fadd fast float %1579, %1545
  %1584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1585 = extractvalue %dx.types.CBufRet.f32 %1584, 0
  %1586 = extractvalue %dx.types.CBufRet.f32 %1584, 1
  %1587 = fsub fast float %1585, %1548
  %1588 = fsub fast float %1586, %1549
  %1589 = fmul fast float %1587, %1566
  %1590 = fmul fast float %1588, %1566
  %1591 = fadd fast float %1589, %1548
  %1592 = fadd fast float %1590, %1549
  %1593 = extractvalue %dx.types.CBufRet.f32 %1584, 2
  %1594 = extractvalue %dx.types.CBufRet.f32 %1584, 3
  %1595 = fsub fast float %1593, %1552
  %1596 = fsub fast float %1594, %1553
  %1597 = fmul fast float %1595, %1566
  %1598 = fmul fast float %1596, %1566
  %1599 = fadd fast float %1597, %1552
  %1600 = fadd fast float %1598, %1553
  %1601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1602 = extractvalue %dx.types.CBufRet.f32 %1601, 0
  %1603 = fmul fast float %1602, %1580
  %1604 = fmul fast float %1602, %1581
  %1605 = fmul fast float %1602, %1582
  %1606 = fmul fast float %1602, %1583
  %1607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1608 = extractvalue %dx.types.CBufRet.f32 %1607, 0
  %1609 = fmul fast float %1608, %1591
  %1610 = fmul fast float %1608, %1592
  %1611 = fadd fast float %1609, %1603
  %1612 = fadd fast float %1610, %1605
  %1613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1614 = extractvalue %dx.types.CBufRet.f32 %1613, 0
  %1615 = fmul fast float %1614, %1599
  %1616 = fmul fast float %1614, %1600
  %1617 = fadd fast float %1611, %1615
  %1618 = fadd fast float %1612, %1616
  %1619 = extractvalue %dx.types.CBufRet.f32 %1601, 1
  %1620 = fmul fast float %1619, %1580
  %1621 = fmul fast float %1619, %1581
  %1622 = fmul fast float %1619, %1582
  %1623 = fmul fast float %1619, %1583
  %1624 = extractvalue %dx.types.CBufRet.f32 %1607, 1
  %1625 = fmul fast float %1624, %1591
  %1626 = fmul fast float %1624, %1592
  %1627 = fadd fast float %1625, %1620
  %1628 = fadd fast float %1626, %1622
  %1629 = extractvalue %dx.types.CBufRet.f32 %1613, 1
  %1630 = fmul fast float %1629, %1599
  %1631 = fmul fast float %1629, %1600
  %1632 = fadd fast float %1627, %1630
  %1633 = fadd fast float %1628, %1631
  %1634 = extractvalue %dx.types.CBufRet.f32 %1601, 2
  %1635 = fmul fast float %1634, %1580
  %1636 = fmul fast float %1634, %1581
  %1637 = fmul fast float %1634, %1582
  %1638 = fmul fast float %1634, %1583
  %1639 = extractvalue %dx.types.CBufRet.f32 %1607, 2
  %1640 = fmul fast float %1639, %1591
  %1641 = fmul fast float %1639, %1592
  %1642 = fadd fast float %1640, %1635
  %1643 = fadd fast float %1641, %1637
  %1644 = extractvalue %dx.types.CBufRet.f32 %1613, 2
  %1645 = fmul fast float %1644, %1599
  %1646 = fmul fast float %1644, %1600
  %1647 = fadd fast float %1642, %1645
  %1648 = fadd fast float %1643, %1646
  %1649 = fmul fast float %1636, %1636
  %1650 = fmul fast float %1648, %1648
  %1651 = fmul fast float %1638, %1638
  %1652 = fadd fast float %1651, %1649
  %1653 = fadd fast float %1652, %1650
  %1654 = call float @dx.op.unary.f32(i32 24, float %1653)  ; Sqrt(value)
  %1655 = fcmp fast ugt float %1654, 0.000000e+00
  br i1 %1655, label %1656, label %1671, !dx.controlflow.hints !85

; <label>:1656                                    ; preds = %1396
  %1657 = fsub fast float -0.000000e+00, %1638
  %1658 = fdiv fast float %1657, %1654
  %1659 = fsub fast float -0.000000e+00, %1636
  %1660 = fdiv fast float %1659, %1654
  %1661 = fdiv fast float %1648, %1654
  %1662 = fmul fast float %1647, 0x3FE279A760000000
  %1663 = fmul fast float %1660, %1636
  %1664 = fmul fast float %1661, %1648
  %1665 = fmul fast float %1658, %1638
  %1666 = fadd fast float %1663, %1665
  %1667 = fsub fast float %1666, %1664
  %1668 = call float @dx.op.unary.f32(i32 6, float %1667)  ; FAbs(value)
  %1669 = fadd fast float %1668, 0x3DDB7CDFE0000000
  %1670 = fdiv fast float %1662, %1669
  br label %1671

; <label>:1671                                    ; preds = %1656, %1396
  %1672 = phi float [ %1670, %1656 ], [ 1.000000e+00, %1396 ]
  %1673 = fmul fast float %1621, %1621
  %1674 = fmul fast float %1633, %1633
  %1675 = fmul fast float %1623, %1623
  %1676 = fadd fast float %1675, %1673
  %1677 = fadd fast float %1676, %1674
  %1678 = call float @dx.op.unary.f32(i32 24, float %1677)  ; Sqrt(value)
  %1679 = fcmp fast ugt float %1678, 0.000000e+00
  br i1 %1679, label %1680, label %1695, !dx.controlflow.hints !85

; <label>:1680                                    ; preds = %1671
  %1681 = fsub fast float -0.000000e+00, %1623
  %1682 = fdiv fast float %1681, %1678
  %1683 = fsub fast float -0.000000e+00, %1621
  %1684 = fdiv fast float %1683, %1678
  %1685 = fdiv fast float %1633, %1678
  %1686 = fmul fast float %1632, 0x3FE279A760000000
  %1687 = fmul fast float %1684, %1621
  %1688 = fmul fast float %1685, %1633
  %1689 = fmul fast float %1682, %1623
  %1690 = fadd fast float %1687, %1689
  %1691 = fsub fast float %1690, %1688
  %1692 = call float @dx.op.unary.f32(i32 6, float %1691)  ; FAbs(value)
  %1693 = fadd fast float %1692, 0x3DDB7CDFE0000000
  %1694 = fdiv fast float %1686, %1693
  br label %1695

; <label>:1695                                    ; preds = %1680, %1671
  %1696 = phi float [ %1694, %1680 ], [ 1.000000e+00, %1671 ]
  %1697 = call float @dx.op.binary.f32(i32 36, float %1696, float %1672)  ; FMin(a,b)
  %1698 = fmul fast float %1604, %1604
  %1699 = fmul fast float %1618, %1618
  %1700 = fmul fast float %1606, %1606
  %1701 = fadd fast float %1700, %1698
  %1702 = fadd fast float %1701, %1699
  %1703 = call float @dx.op.unary.f32(i32 24, float %1702)  ; Sqrt(value)
  %1704 = fcmp fast ugt float %1703, 0.000000e+00
  br i1 %1704, label %1705, label %1720, !dx.controlflow.hints !85

; <label>:1705                                    ; preds = %1695
  %1706 = fsub fast float -0.000000e+00, %1606
  %1707 = fdiv fast float %1706, %1703
  %1708 = fsub fast float -0.000000e+00, %1604
  %1709 = fdiv fast float %1708, %1703
  %1710 = fdiv fast float %1618, %1703
  %1711 = fmul fast float %1617, 0x3FE279A760000000
  %1712 = fmul fast float %1709, %1604
  %1713 = fmul fast float %1710, %1618
  %1714 = fmul fast float %1707, %1606
  %1715 = fadd fast float %1712, %1714
  %1716 = fsub fast float %1715, %1713
  %1717 = call float @dx.op.unary.f32(i32 6, float %1716)  ; FAbs(value)
  %1718 = fadd fast float %1717, 0x3DDB7CDFE0000000
  %1719 = fdiv fast float %1711, %1718
  br label %1720

; <label>:1720                                    ; preds = %1705, %1695
  %1721 = phi float [ %1719, %1705 ], [ 1.000000e+00, %1695 ]
  %1722 = call float @dx.op.binary.f32(i32 36, float %1721, float %1697)  ; FMin(a,b)
  %1723 = call float @dx.op.unary.f32(i32 7, float %1722)  ; Saturate(value)
  %1724 = fcmp fast olt float %1723, 1.000000e+00
  br i1 %1724, label %1725, label %1735, !dx.controlflow.hints !86

; <label>:1725                                    ; preds = %1720
  %1726 = fmul fast float %1723, %1604
  %1727 = fmul fast float %1723, %1618
  %1728 = fmul fast float %1723, %1606
  %1729 = fmul fast float %1723, %1621
  %1730 = fmul fast float %1723, %1633
  %1731 = fmul fast float %1723, %1623
  %1732 = fmul fast float %1723, %1636
  %1733 = fmul fast float %1723, %1648
  %1734 = fmul fast float %1723, %1638
  br label %1735

; <label>:1735                                    ; preds = %1725, %1720
  %1736 = phi float [ %1732, %1725 ], [ %1636, %1720 ]
  %1737 = phi float [ %1733, %1725 ], [ %1648, %1720 ]
  %1738 = phi float [ %1734, %1725 ], [ %1638, %1720 ]
  %1739 = phi float [ %1729, %1725 ], [ %1621, %1720 ]
  %1740 = phi float [ %1730, %1725 ], [ %1633, %1720 ]
  %1741 = phi float [ %1731, %1725 ], [ %1623, %1720 ]
  %1742 = phi float [ %1726, %1725 ], [ %1604, %1720 ]
  %1743 = phi float [ %1727, %1725 ], [ %1618, %1720 ]
  %1744 = phi float [ %1728, %1725 ], [ %1606, %1720 ]
  %1745 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1617)  ; FMax(a,b)
  %1746 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1632)  ; FMax(a,b)
  %1747 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1647)  ; FMax(a,b)
  %1748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1749 = extractvalue %dx.types.CBufRet.f32 %1748, 0
  %1750 = fcmp fast ogt float %1749, 0.000000e+00
  %1751 = fcmp fast oge float %1405, 0.000000e+00
  %1752 = and i1 %1751, %1750
  %1753 = fcmp fast ole float %1405, 1.000000e+00
  %1754 = and i1 %1753, %1752
  %1755 = fcmp fast oge float %1406, 0.000000e+00
  %1756 = and i1 %1755, %1754
  %1757 = fcmp fast ole float %1406, 1.000000e+00
  %1758 = and i1 %1757, %1756
  br i1 %1758, label %1759, label %1904, !dx.controlflow.hints !87

; <label>:1759                                    ; preds = %1735
  %1760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1761 = extractvalue %dx.types.CBufRet.f32 %1760, 2
  %1762 = extractvalue %dx.types.CBufRet.f32 %1760, 3
  %1763 = fmul fast float %1761, %1405
  %1764 = fmul fast float %1762, %1406
  %1765 = call float @dx.op.unary.f32(i32 27, float %1763)  ; Round_ni(value)
  %1766 = call float @dx.op.unary.f32(i32 27, float %1764)  ; Round_ni(value)
  %1767 = fptosi float %1765 to i32
  %1768 = fptosi float %1766 to i32
  %1769 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %1767, i32 %1768, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1770 = extractvalue %dx.types.ResRet.i32 %1769, 0
  %1771 = and i32 %1770, 65535
  %1772 = lshr i32 %1770, 16
  %1773 = icmp eq i32 %1771, 65535
  br i1 %1773, label %1810, label %1774, !dx.controlflow.hints !88

; <label>:1774                                    ; preds = %1759
  %1775 = extractvalue %dx.types.CBufRet.f32 %1748, 1
  %1776 = extractvalue %dx.types.CBufRet.f32 %1760, 0
  %1777 = extractvalue %dx.types.CBufRet.f32 %1760, 1
  %1778 = fmul fast float %1776, %1405
  %1779 = fmul fast float %1777, %1406
  %1780 = fmul fast float %1778, 1.250000e-01
  %1781 = fmul fast float %1779, 1.250000e-01
  %1782 = call float @dx.op.unary.f32(i32 27, float %1780)  ; Round_ni(value)
  %1783 = call float @dx.op.unary.f32(i32 27, float %1781)  ; Round_ni(value)
  %1784 = fmul fast float %1782, 8.000000e+00
  %1785 = fmul fast float %1783, 8.000000e+00
  %1786 = and i32 %1770, 255
  %1787 = lshr i32 %1770, 8
  %1788 = and i32 %1787, 255
  %1789 = mul nuw nsw i32 %1786, 9
  %1790 = uitofp i32 %1789 to float
  %1791 = mul nuw nsw i32 %1788, 9
  %1792 = uitofp i32 %1791 to float
  %1793 = fadd fast float %1790, 5.000000e-01
  %1794 = fadd fast float %1793, %1778
  %1795 = fsub fast float %1794, %1784
  %1796 = fadd fast float %1792, 5.000000e-01
  %1797 = fadd fast float %1796, %1779
  %1798 = fsub fast float %1797, %1785
  %1799 = fdiv fast float %1795, %1749
  %1800 = fdiv fast float %1798, %1775
  %1801 = fmul fast float %1433, 4.375000e-01
  %1802 = fadd fast float %1801, 3.125000e-02
  %1803 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %25, float %1799, float %1800, float %1802, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1804 = extractvalue %dx.types.ResRet.f32 %1803, 0
  %1805 = extractvalue %dx.types.ResRet.f32 %1803, 1
  %1806 = extractvalue %dx.types.ResRet.f32 %1803, 2
  %1807 = fadd fast float %1804, %1745
  %1808 = fadd fast float %1805, %1746
  %1809 = fadd fast float %1806, %1747
  br label %1810

; <label>:1810                                    ; preds = %1774, %1759
  %1811 = phi float [ %1809, %1774 ], [ %1747, %1759 ]
  %1812 = phi float [ %1808, %1774 ], [ %1746, %1759 ]
  %1813 = phi float [ %1807, %1774 ], [ %1745, %1759 ]
  %1814 = icmp eq i32 %1772, 65535
  br i1 %1814, label %1904, label %1815, !dx.controlflow.hints !89

; <label>:1815                                    ; preds = %1810
  %1816 = extractvalue %dx.types.CBufRet.f32 %1748, 1
  %1817 = extractvalue %dx.types.CBufRet.f32 %1760, 0
  %1818 = extractvalue %dx.types.CBufRet.f32 %1760, 1
  %1819 = fmul fast float %1817, %1405
  %1820 = fmul fast float %1818, %1406
  %1821 = fmul fast float %1819, 1.250000e-01
  %1822 = fmul fast float %1820, 1.250000e-01
  %1823 = call float @dx.op.unary.f32(i32 27, float %1821)  ; Round_ni(value)
  %1824 = call float @dx.op.unary.f32(i32 27, float %1822)  ; Round_ni(value)
  %1825 = fmul fast float %1823, 8.000000e+00
  %1826 = fmul fast float %1824, 8.000000e+00
  %1827 = fsub fast float %1819, %1825
  %1828 = fsub fast float %1820, %1826
  %1829 = fadd fast float %1827, 5.000000e-01
  %1830 = fadd fast float %1828, 5.000000e-01
  %1831 = and i32 %1772, 255
  %1832 = lshr i32 %1770, 24
  %1833 = mul nuw nsw i32 %1831, 9
  %1834 = uitofp i32 %1833 to float
  %1835 = mul nuw nsw i32 %1832, 9
  %1836 = uitofp i32 %1835 to float
  %1837 = fadd fast float %1829, %1834
  %1838 = fadd fast float %1830, %1836
  %1839 = fdiv fast float %1837, %1749
  %1840 = fdiv fast float %1838, %1816
  %1841 = fmul fast float %1433, 4.375000e-01
  %1842 = fadd fast float %1841, 3.125000e-02
  %1843 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %25, float %1839, float %1840, float %1842, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1844 = extractvalue %dx.types.ResRet.f32 %1843, 0
  %1845 = extractvalue %dx.types.ResRet.f32 %1843, 1
  %1846 = extractvalue %dx.types.ResRet.f32 %1843, 2
  %1847 = fadd fast float %1841, 5.312500e-01
  %1848 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %25, float %1839, float %1840, float %1847, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1849 = extractvalue %dx.types.ResRet.f32 %1848, 0
  %1850 = extractvalue %dx.types.ResRet.f32 %1848, 1
  %1851 = extractvalue %dx.types.ResRet.f32 %1848, 2
  %1852 = fmul fast float %1849, 2.000000e+00
  %1853 = fmul fast float %1850, 2.000000e+00
  %1854 = fmul fast float %1851, 2.000000e+00
  %1855 = fadd fast float %1852, -1.000000e+00
  %1856 = fadd fast float %1853, -1.000000e+00
  %1857 = fadd fast float %1854, -1.000000e+00
  %1858 = fmul fast float %1855, %1855
  %1859 = fmul fast float %1856, %1856
  %1860 = fadd fast float %1858, %1859
  %1861 = fmul fast float %1857, %1857
  %1862 = fadd fast float %1860, %1861
  %1863 = call float @dx.op.unary.f32(i32 24, float %1862)  ; Sqrt(value)
  %1864 = fcmp fast ogt float %1863, 0.000000e+00
  br i1 %1864, label %1865, label %1869, !dx.controlflow.hints !90

; <label>:1865                                    ; preds = %1815
  %1866 = fdiv fast float %1855, %1863
  %1867 = fdiv fast float %1856, %1863
  %1868 = fdiv fast float %1857, %1863
  br label %1869

; <label>:1869                                    ; preds = %1865, %1815
  %1870 = phi float [ %1866, %1865 ], [ 0.000000e+00, %1815 ]
  %1871 = phi float [ %1867, %1865 ], [ 0.000000e+00, %1815 ]
  %1872 = phi float [ %1868, %1865 ], [ 0.000000e+00, %1815 ]
  %1873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1874 = extractvalue %dx.types.CBufRet.f32 %1873, 0
  %1875 = extractvalue %dx.types.CBufRet.f32 %1873, 1
  %1876 = fsub fast float %353, %1874
  %1877 = fsub fast float %354, %1875
  %1878 = fmul fast float %1876, %1876
  %1879 = fmul fast float %1877, %1877
  %1880 = fadd fast float %1878, %1879
  %1881 = call float @dx.op.unary.f32(i32 24, float %1880)  ; Sqrt(value)
  %1882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1883 = extractvalue %dx.types.CBufRet.f32 %1882, 0
  %1884 = extractvalue %dx.types.CBufRet.f32 %1882, 1
  %1885 = fsub fast float %1881, %1883
  %1886 = fdiv fast float %1885, %1884
  %1887 = call float @dx.op.unary.f32(i32 7, float %1886)  ; Saturate(value)
  %1888 = fmul fast float %1887, 2.000000e+00
  %1889 = fsub fast float 3.000000e+00, %1888
  %1890 = fmul fast float %1887, %1887
  %1891 = fmul fast float %1890, %1889
  %1892 = call float @dx.op.dot3.f32(i32 55, float %1870, float %1871, float %1872, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1893 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1892)  ; FMax(a,b)
  %1894 = fmul fast float %1893, 0x400C5BF8A0000000
  %1895 = fmul fast float %1891, %1844
  %1896 = fmul fast float %1895, %1894
  %1897 = fadd fast float %1896, %1813
  %1898 = fmul fast float %1891, %1845
  %1899 = fmul fast float %1898, %1894
  %1900 = fadd fast float %1899, %1812
  %1901 = fmul fast float %1891, %1846
  %1902 = fmul fast float %1901, %1894
  %1903 = fadd fast float %1902, %1811
  br label %1904

; <label>:1904                                    ; preds = %1869, %1810, %1735
  %1905 = phi float [ %1903, %1869 ], [ %1811, %1810 ], [ %1747, %1735 ]
  %1906 = phi float [ %1900, %1869 ], [ %1812, %1810 ], [ %1746, %1735 ]
  %1907 = phi float [ %1897, %1869 ], [ %1813, %1810 ], [ %1745, %1735 ]
  %1908 = fcmp fast ogt float %355, %1429
  %1909 = and i1 %1751, %1908
  %1910 = and i1 %1753, %1909
  %1911 = and i1 %1755, %1910
  %1912 = and i1 %1757, %1911
  br i1 %1912, label %1913, label %1970, !dx.controlflow.hints !91

; <label>:1913                                    ; preds = %1904
  %1914 = fmul fast float %1431, 0x3FC24924A0000000
  %1915 = fsub fast float %355, %1429
  %1916 = fdiv fast float %1915, %1914
  %1917 = call float @dx.op.unary.f32(i32 7, float %1916)  ; Saturate(value)
  %1918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1919 = extractvalue %dx.types.CBufRet.f32 %1918, 0
  %1920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1921 = extractvalue %dx.types.CBufRet.f32 %1920, 0
  %1922 = extractvalue %dx.types.CBufRet.f32 %1920, 1
  %1923 = extractvalue %dx.types.CBufRet.f32 %1920, 2
  %1924 = fsub fast float %1919, %1907
  %1925 = fsub fast float %1921, %1742
  %1926 = fsub fast float %1922, %1743
  %1927 = fsub fast float %1923, %1744
  %1928 = fmul fast float %1924, %1917
  %1929 = fmul fast float %1925, %1917
  %1930 = fmul fast float %1926, %1917
  %1931 = fmul fast float %1927, %1917
  %1932 = fadd fast float %1928, %1907
  %1933 = fadd fast float %1929, %1742
  %1934 = fadd fast float %1930, %1743
  %1935 = fadd fast float %1931, %1744
  %1936 = extractvalue %dx.types.CBufRet.f32 %1918, 1
  %1937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1938 = extractvalue %dx.types.CBufRet.f32 %1937, 0
  %1939 = extractvalue %dx.types.CBufRet.f32 %1937, 1
  %1940 = extractvalue %dx.types.CBufRet.f32 %1937, 2
  %1941 = fsub fast float %1936, %1906
  %1942 = fsub fast float %1938, %1739
  %1943 = fsub fast float %1939, %1740
  %1944 = fsub fast float %1940, %1741
  %1945 = fmul fast float %1941, %1917
  %1946 = fmul fast float %1942, %1917
  %1947 = fmul fast float %1943, %1917
  %1948 = fmul fast float %1944, %1917
  %1949 = fadd fast float %1945, %1906
  %1950 = fadd fast float %1946, %1739
  %1951 = fadd fast float %1947, %1740
  %1952 = fadd fast float %1948, %1741
  %1953 = extractvalue %dx.types.CBufRet.f32 %1918, 2
  %1954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1955 = extractvalue %dx.types.CBufRet.f32 %1954, 0
  %1956 = extractvalue %dx.types.CBufRet.f32 %1954, 1
  %1957 = extractvalue %dx.types.CBufRet.f32 %1954, 2
  %1958 = fsub fast float %1953, %1905
  %1959 = fsub fast float %1955, %1736
  %1960 = fsub fast float %1956, %1737
  %1961 = fsub fast float %1957, %1738
  %1962 = fmul fast float %1958, %1917
  %1963 = fmul fast float %1959, %1917
  %1964 = fmul fast float %1960, %1917
  %1965 = fmul fast float %1961, %1917
  %1966 = fadd fast float %1962, %1905
  %1967 = fadd fast float %1963, %1736
  %1968 = fadd fast float %1964, %1737
  %1969 = fadd fast float %1965, %1738
  br label %1970

; <label>:1970                                    ; preds = %1913, %1904
  %1971 = phi float [ %1966, %1913 ], [ %1905, %1904 ]
  %1972 = phi float [ %1967, %1913 ], [ %1736, %1904 ]
  %1973 = phi float [ %1968, %1913 ], [ %1737, %1904 ]
  %1974 = phi float [ %1969, %1913 ], [ %1738, %1904 ]
  %1975 = phi float [ %1949, %1913 ], [ %1906, %1904 ]
  %1976 = phi float [ %1950, %1913 ], [ %1739, %1904 ]
  %1977 = phi float [ %1951, %1913 ], [ %1740, %1904 ]
  %1978 = phi float [ %1952, %1913 ], [ %1741, %1904 ]
  %1979 = phi float [ %1932, %1913 ], [ %1907, %1904 ]
  %1980 = phi float [ %1933, %1913 ], [ %1742, %1904 ]
  %1981 = phi float [ %1934, %1913 ], [ %1743, %1904 ]
  %1982 = phi float [ %1935, %1913 ], [ %1744, %1904 ]
  %1983 = extractvalue %dx.types.CBufRet.f32 %1554, 3
  %1984 = fmul fast float %1983, %1979
  %1985 = fmul fast float %1983, %1975
  %1986 = fmul fast float %1983, %1971
  %1987 = fmul fast float %1980, 1.500000e+00
  %1988 = fmul fast float %1987, %1983
  %1989 = fmul fast float %1981, 1.500000e+00
  %1990 = fmul fast float %1989, %1983
  %1991 = fmul fast float %1982, 1.500000e+00
  %1992 = fmul fast float %1991, %1983
  %1993 = fmul fast float %1976, 1.500000e+00
  %1994 = fmul fast float %1993, %1983
  %1995 = fmul fast float %1977, 1.500000e+00
  %1996 = fmul fast float %1995, %1983
  %1997 = fmul fast float %1978, 1.500000e+00
  %1998 = fmul fast float %1997, %1983
  %1999 = fmul fast float %1972, 1.500000e+00
  %2000 = fmul fast float %1999, %1983
  %2001 = fmul fast float %1973, 1.500000e+00
  %2002 = fmul fast float %2001, %1983
  %2003 = fmul fast float %1974, 1.500000e+00
  %2004 = fmul fast float %2003, %1983
  %2005 = fsub fast float %1394, %1984
  %2006 = fmul fast float %2005, %1292
  %2007 = fadd fast float %2006, %1984
  %2008 = fsub fast float %1393, %1988
  %2009 = fmul fast float %2008, %1292
  %2010 = fadd fast float %2009, %1988
  %2011 = fsub fast float %1392, %1990
  %2012 = fmul fast float %2011, %1292
  %2013 = fadd fast float %2012, %1990
  %2014 = fsub fast float %1391, %1992
  %2015 = fmul fast float %2014, %1292
  %2016 = fadd fast float %2015, %1992
  %2017 = fmul fast float %1390, %1292
  %2018 = fmul fast float %1389, %1292
  %2019 = fmul fast float %1388, %1292
  %2020 = fmul fast float %1387, %1292
  %2021 = fmul fast float %1386, %1292
  %2022 = fsub fast float %1385, %1985
  %2023 = fmul fast float %2022, %1292
  %2024 = fadd fast float %2023, %1985
  %2025 = fsub fast float %1384, %1994
  %2026 = fmul fast float %2025, %1292
  %2027 = fadd fast float %2026, %1994
  %2028 = fsub fast float %1383, %1996
  %2029 = fmul fast float %2028, %1292
  %2030 = fadd fast float %2029, %1996
  %2031 = fsub fast float %1382, %1998
  %2032 = fmul fast float %2031, %1292
  %2033 = fadd fast float %2032, %1998
  %2034 = fmul fast float %1381, %1292
  %2035 = fmul fast float %1380, %1292
  %2036 = fmul fast float %1379, %1292
  %2037 = fmul fast float %1378, %1292
  %2038 = fmul fast float %1377, %1292
  %2039 = fsub fast float %1376, %1986
  %2040 = fmul fast float %2039, %1292
  %2041 = fadd fast float %2040, %1986
  %2042 = fsub fast float %1375, %2000
  %2043 = fmul fast float %2042, %1292
  %2044 = fadd fast float %2043, %2000
  %2045 = fsub fast float %1374, %2002
  %2046 = fmul fast float %2045, %1292
  %2047 = fadd fast float %2046, %2002
  %2048 = fsub fast float %1373, %2004
  %2049 = fmul fast float %2048, %1292
  %2050 = fadd fast float %2049, %2004
  %2051 = fmul fast float %1372, %1292
  %2052 = fmul fast float %1371, %1292
  %2053 = fmul fast float %1370, %1292
  %2054 = fmul fast float %1369, %1292
  %2055 = fmul fast float %1368, %1292
  br label %2056

; <label>:2056                                    ; preds = %1970, %1367
  %2057 = phi float [ %2055, %1970 ], [ %1368, %1367 ]
  %2058 = phi float [ %2054, %1970 ], [ %1369, %1367 ]
  %2059 = phi float [ %2053, %1970 ], [ %1370, %1367 ]
  %2060 = phi float [ %2052, %1970 ], [ %1371, %1367 ]
  %2061 = phi float [ %2051, %1970 ], [ %1372, %1367 ]
  %2062 = phi float [ %2050, %1970 ], [ %1373, %1367 ]
  %2063 = phi float [ %2047, %1970 ], [ %1374, %1367 ]
  %2064 = phi float [ %2044, %1970 ], [ %1375, %1367 ]
  %2065 = phi float [ %2041, %1970 ], [ %1376, %1367 ]
  %2066 = phi float [ %2038, %1970 ], [ %1377, %1367 ]
  %2067 = phi float [ %2037, %1970 ], [ %1378, %1367 ]
  %2068 = phi float [ %2036, %1970 ], [ %1379, %1367 ]
  %2069 = phi float [ %2035, %1970 ], [ %1380, %1367 ]
  %2070 = phi float [ %2034, %1970 ], [ %1381, %1367 ]
  %2071 = phi float [ %2033, %1970 ], [ %1382, %1367 ]
  %2072 = phi float [ %2030, %1970 ], [ %1383, %1367 ]
  %2073 = phi float [ %2027, %1970 ], [ %1384, %1367 ]
  %2074 = phi float [ %2024, %1970 ], [ %1385, %1367 ]
  %2075 = phi float [ %2021, %1970 ], [ %1386, %1367 ]
  %2076 = phi float [ %2020, %1970 ], [ %1387, %1367 ]
  %2077 = phi float [ %2019, %1970 ], [ %1388, %1367 ]
  %2078 = phi float [ %2018, %1970 ], [ %1389, %1367 ]
  %2079 = phi float [ %2017, %1970 ], [ %1390, %1367 ]
  %2080 = phi float [ %2016, %1970 ], [ %1391, %1367 ]
  %2081 = phi float [ %2013, %1970 ], [ %1392, %1367 ]
  %2082 = phi float [ %2010, %1970 ], [ %1393, %1367 ]
  %2083 = phi float [ %2007, %1970 ], [ %1394, %1367 ]
  %2084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %2085 = extractvalue %dx.types.CBufRet.f32 %2084, 2
  %2086 = fmul fast float %2085, %2085
  %2087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2088 = extractvalue %dx.types.CBufRet.f32 %2087, 0
  %2089 = extractvalue %dx.types.CBufRet.f32 %2087, 1
  %2090 = extractvalue %dx.types.CBufRet.f32 %2087, 2
  %2091 = fmul fast float %2083, 0x3FD20DD760000000
  %2092 = fmul fast float %2090, %2081
  %2093 = fmul fast float %2090, %2090
  %2094 = fmul fast float %2093, 0x3FEE471020000000
  %2095 = fadd fast float %2094, 0xBFD42F6020000000
  %2096 = fmul fast float %2095, %2077
  %2097 = fmul fast float %2088, %2080
  %2098 = fmul fast float %2089, %2082
  %2099 = fmul fast float %2090, 0x3FF17B1420000000
  %2100 = fmul fast float %2086, %2076
  %2101 = fmul fast float %2100, %2088
  %2102 = fmul fast float %2101, %2099
  %2103 = fmul fast float %2086, %2078
  %2104 = fmul fast float %2103, %2089
  %2105 = fmul fast float %2104, %2099
  %2106 = fmul fast float %2088, %2088
  %2107 = fmul fast float %2089, %2089
  %2108 = fsub fast float %2106, %2107
  %2109 = fmul fast float %2075, 0x3FE17B1420000000
  %2110 = fmul fast float %2109, %2108
  %2111 = fmul fast float %2079, 0x3FF17B1420000000
  %2112 = fmul fast float %2111, %2089
  %2113 = fmul fast float %2112, %2088
  %2114 = fadd fast float %2110, %2113
  %2115 = fadd fast float %2114, %2096
  %2116 = fmul fast float %2115, %2086
  %2117 = fsub fast float %2098, %2092
  %2118 = fadd fast float %2117, %2097
  %2119 = fmul fast float %2118, 0x3FDF454380000000
  %2120 = fmul fast float %2119, %2085
  %2121 = fsub fast float %2091, %2102
  %2122 = fsub fast float %2121, %2105
  %2123 = fadd fast float %2122, %2116
  %2124 = fadd fast float %2123, %2120
  %2125 = fmul fast float %2074, 0x3FD20DD760000000
  %2126 = fmul fast float %2090, %2072
  %2127 = fmul fast float %2095, %2068
  %2128 = fmul fast float %2088, %2071
  %2129 = fmul fast float %2089, %2073
  %2130 = fmul fast float %2086, %2067
  %2131 = fmul fast float %2130, %2088
  %2132 = fmul fast float %2131, %2099
  %2133 = fmul fast float %2086, %2069
  %2134 = fmul fast float %2133, %2089
  %2135 = fmul fast float %2134, %2099
  %2136 = fmul fast float %2066, 0x3FE17B1420000000
  %2137 = fmul fast float %2136, %2108
  %2138 = fmul fast float %2070, 0x3FF17B1420000000
  %2139 = fmul fast float %2138, %2089
  %2140 = fmul fast float %2139, %2088
  %2141 = fadd fast float %2137, %2140
  %2142 = fadd fast float %2141, %2127
  %2143 = fmul fast float %2142, %2086
  %2144 = fsub fast float %2129, %2126
  %2145 = fadd fast float %2144, %2128
  %2146 = fmul fast float %2145, 0x3FDF454380000000
  %2147 = fmul fast float %2146, %2085
  %2148 = fsub fast float %2125, %2132
  %2149 = fsub fast float %2148, %2135
  %2150 = fadd fast float %2149, %2143
  %2151 = fadd fast float %2150, %2147
  %2152 = fmul fast float %2065, 0x3FD20DD760000000
  %2153 = fmul fast float %2090, %2063
  %2154 = fmul fast float %2095, %2059
  %2155 = fmul fast float %2088, %2062
  %2156 = fmul fast float %2089, %2064
  %2157 = fmul fast float %2086, %2058
  %2158 = fmul fast float %2157, %2088
  %2159 = fmul fast float %2158, %2099
  %2160 = fmul fast float %2086, %2060
  %2161 = fmul fast float %2160, %2089
  %2162 = fmul fast float %2161, %2099
  %2163 = fmul fast float %2057, 0x3FE17B1420000000
  %2164 = fmul fast float %2163, %2108
  %2165 = fmul fast float %2061, 0x3FF17B1420000000
  %2166 = fmul fast float %2165, %2089
  %2167 = fmul fast float %2166, %2088
  %2168 = fadd fast float %2164, %2167
  %2169 = fadd fast float %2168, %2154
  %2170 = fmul fast float %2169, %2086
  %2171 = fsub fast float %2156, %2153
  %2172 = fadd fast float %2171, %2155
  %2173 = fmul fast float %2172, 0x3FDF454380000000
  %2174 = fmul fast float %2173, %2085
  %2175 = fsub fast float %2152, %2159
  %2176 = fsub fast float %2175, %2162
  %2177 = fadd fast float %2176, %2170
  %2178 = fadd fast float %2177, %2174
  %2179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2180 = extractvalue %dx.types.CBufRet.f32 %2179, 3
  %2181 = extractvalue %dx.types.CBufRet.f32 %1233, 0
  %2182 = fmul fast float %2181, %2180
  %2183 = fmul fast float %2182, %2124
  %2184 = fmul fast float %2182, %2151
  %2185 = fmul fast float %2182, %2178
  %2186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2187 = extractvalue %dx.types.CBufRet.f32 %2186, 3
  %2188 = fcmp fast une float %2187, 0.000000e+00
  %2189 = extractvalue %dx.types.CBufRet.f32 %2186, 0
  %2190 = extractvalue %dx.types.CBufRet.f32 %2186, 1
  %2191 = extractvalue %dx.types.CBufRet.f32 %2186, 2
  br i1 %2188, label %2192, label %2214, !dx.controlflow.hints !92

; <label>:2192                                    ; preds = %2056
  %2193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2194 = extractvalue %dx.types.CBufRet.f32 %2193, 0
  %2195 = extractvalue %dx.types.CBufRet.f32 %2193, 1
  %2196 = extractvalue %dx.types.CBufRet.f32 %2193, 2
  %2197 = call float @dx.op.dot3.f32(i32 55, float %2189, float %2190, float %2191, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %2198 = fcmp fast ogt float %1243, 0.000000e+00
  %2199 = select i1 %2198, float 1.000000e+00, float -1.000000e+00
  %2200 = fmul fast float %2199, 5.000000e-01
  %2201 = fmul fast float %2200, %2197
  %2202 = fmul fast float %2199, %1243
  %2203 = fadd fast float %2201, 4.921875e-01
  %2204 = fadd fast float %2202, -3.125000e-02
  %2205 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %25, float %2203, float 0x3FB25F3060000000, float %2204, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2206 = extractvalue %dx.types.ResRet.f32 %2205, 0
  %2207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %2208 = extractvalue %dx.types.CBufRet.f32 %2207, 0
  %2209 = fmul fast float %2206, 0x400921FB60000000
  %2210 = fmul fast float %2209, %2208
  %2211 = fmul fast float %2210, %2194
  %2212 = fmul fast float %2210, %2195
  %2213 = fmul fast float %2210, %2196
  br label %2214

; <label>:2214                                    ; preds = %2192, %2056
  %2215 = phi float [ %2211, %2192 ], [ 0.000000e+00, %2056 ]
  %2216 = phi float [ %2212, %2192 ], [ 0.000000e+00, %2056 ]
  %2217 = phi float [ %2213, %2192 ], [ 0.000000e+00, %2056 ]
  %2218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %2219 = extractvalue %dx.types.CBufRet.f32 %2218, 0
  %2220 = fmul fast float %2219, %2189
  %2221 = fmul fast float %2219, %2190
  %2222 = fmul fast float %2219, %2191
  %2223 = fadd fast float %2220, %353
  %2224 = fsub fast float -0.000000e+00, %2223
  %2225 = fadd fast float %2221, %354
  %2226 = fsub fast float -0.000000e+00, %2225
  %2227 = fadd fast float %2222, %355
  br i1 %368, label %2302, label %2228, !dx.controlflow.hints !54

; <label>:2228                                    ; preds = %2214
  %2229 = extractvalue %dx.types.CBufRet.f32 %2218, 1
  %2230 = fcmp fast ogt float %2229, %2219
  br i1 %2230, label %2231, label %2233, !dx.controlflow.hints !55

; <label>:2231                                    ; preds = %2228
  %2232 = fsub fast float %2229, %2219
  br label %2293

; <label>:2233                                    ; preds = %2228
  %2234 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %2235 = extractvalue %dx.types.CBufRet.i32 %2234, 3
  %2236 = icmp eq i32 %2235, 0
  %2237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %2238 = extractvalue %dx.types.CBufRet.f32 %2237, 2
  %2239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %2240 = extractvalue %dx.types.CBufRet.f32 %2239, 2
  %2241 = fsub fast float %2238, %2227
  %2242 = fadd fast float %2241, %2240
  %2243 = fsub fast float 0xC7EFFFFFE0000000, %2227
  br i1 %2236, label %2253, label %2244, !dx.controlflow.hints !42

; <label>:2244                                    ; preds = %2233
  %2245 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2224, float %2226, float %2242)  ; Dot3(ax,ay,az,bx,by,bz)
  %2246 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2189, float %2190, float %2191)  ; Dot3(ax,ay,az,bx,by,bz)
  %2247 = fdiv fast float 1.000000e+00, %2246
  %2248 = fmul fast float %2247, %2245
  %2249 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2224, float %2226, float %2243)  ; Dot3(ax,ay,az,bx,by,bz)
  %2250 = fmul fast float %2247, %2249
  %2251 = call float @dx.op.binary.f32(i32 36, float %2248, float %2250)  ; FMin(a,b)
  %2252 = call float @dx.op.binary.f32(i32 35, float %2248, float %2250)  ; FMax(a,b)
  br label %2286

; <label>:2253                                    ; preds = %2233
  %2254 = extractvalue %dx.types.CBufRet.f32 %2237, 0
  %2255 = extractvalue %dx.types.CBufRet.f32 %2237, 1
  %2256 = extractvalue %dx.types.CBufRet.f32 %2239, 0
  %2257 = extractvalue %dx.types.CBufRet.f32 %2239, 1
  %2258 = fdiv fast float 1.000000e+00, %2189
  %2259 = fdiv fast float 1.000000e+00, %2190
  %2260 = fdiv fast float 1.000000e+00, %2191
  %2261 = fsub fast float %2254, %2223
  %2262 = fmul fast float %2258, %2261
  %2263 = fadd fast float %2261, %2256
  %2264 = fmul fast float %2263, %2258
  %2265 = call float @dx.op.binary.f32(i32 36, float %2262, float %2264)  ; FMin(a,b)
  %2266 = call float @dx.op.binary.f32(i32 35, float %2262, float %2264)  ; FMax(a,b)
  %2267 = fsub fast float %2255, %2225
  %2268 = fmul fast float %2259, %2267
  %2269 = fadd fast float %2267, %2257
  %2270 = fmul fast float %2269, %2259
  %2271 = call float @dx.op.binary.f32(i32 36, float %2268, float %2270)  ; FMin(a,b)
  %2272 = call float @dx.op.binary.f32(i32 35, float %2265, float %2271)  ; FMax(a,b)
  %2273 = call float @dx.op.binary.f32(i32 35, float %2268, float %2270)  ; FMax(a,b)
  %2274 = call float @dx.op.binary.f32(i32 36, float %2266, float %2273)  ; FMin(a,b)
  %2275 = fmul fast float %2260, %2243
  %2276 = fmul fast float %2260, %2242
  %2277 = call float @dx.op.binary.f32(i32 36, float %2275, float %2276)  ; FMin(a,b)
  %2278 = call float @dx.op.binary.f32(i32 35, float %2272, float %2277)  ; FMax(a,b)
  %2279 = call float @dx.op.binary.f32(i32 35, float %2275, float %2276)  ; FMax(a,b)
  %2280 = call float @dx.op.binary.f32(i32 36, float %2274, float %2279)  ; FMin(a,b)
  %2281 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2278)  ; FMax(a,b)
  %2282 = fcmp fast ult float %2280, %2281
  br i1 %2282, label %2286, label %2283, !dx.controlflow.hints !43

; <label>:2283                                    ; preds = %2253
  %2284 = call float @dx.op.binary.f32(i32 36, float %2278, float %2280)  ; FMin(a,b)
  %2285 = call float @dx.op.binary.f32(i32 35, float %2278, float %2280)  ; FMax(a,b)
  br label %2286

; <label>:2286                                    ; preds = %2283, %2253, %2244
  %2287 = phi float [ %2251, %2244 ], [ %2284, %2283 ], [ 0.000000e+00, %2253 ]
  %2288 = phi float [ %2252, %2244 ], [ %2285, %2283 ], [ 0.000000e+00, %2253 ]
  %2289 = fcmp fast ogt float %2287, 0.000000e+00
  br i1 %2289, label %2293, label %2290, !dx.controlflow.hints !56

; <label>:2290                                    ; preds = %2286
  %2291 = fcmp fast ugt float %2288, 0.000000e+00
  br i1 %2291, label %2292, label %2293, !dx.controlflow.hints !57

; <label>:2292                                    ; preds = %2290
  br label %2293

; <label>:2293                                    ; preds = %2292, %2290, %2286, %2231
  %2294 = phi float [ %2232, %2231 ], [ 0.000000e+00, %2292 ], [ 0x47EFFFFFE0000000, %2290 ], [ %2287, %2286 ]
  %2295 = phi i32 [ %206, %2231 ], [ %206, %2292 ], [ 0, %2290 ], [ %206, %2286 ]
  %2296 = icmp ne i32 %2295, 0
  %2297 = zext i1 %2296 to i32
  %2298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2299 = extractvalue %dx.types.CBufRet.f32 %2298, 2
  %2300 = call float @dx.op.binary.f32(i32 35, float %2294, float %2299)  ; FMax(a,b)
  %2301 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %2300)  ; FMin(a,b)
  br label %2302

; <label>:2302                                    ; preds = %2293, %2214
  %2303 = phi float [ %2301, %2293 ], [ 0x47EFFFFFE0000000, %2214 ]
  %2304 = phi i32 [ %2297, %2293 ], [ 0, %2214 ]
  br i1 %541, label %2317, label %2305, !dx.controlflow.hints !63

; <label>:2305                                    ; preds = %2302
  %2306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2307 = extractvalue %dx.types.CBufRet.f32 %2306, 3
  %2308 = extractvalue %dx.types.CBufRet.f32 %2306, 2
  %2309 = fmul fast float %2307, %2219
  %2310 = fdiv fast float %2309, %2219
  %2311 = fadd fast float %2310, 1.000000e+00
  %2312 = call float @dx.op.unary.f32(i32 23, float %2311)  ; Log(value)
  %2313 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %2312)  ; FMin(a,b)
  %2314 = fmul fast float %2308, %2219
  %2315 = fmul fast float %2314, %2313
  %2316 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %2315)  ; FMin(a,b)
  br label %2317

; <label>:2317                                    ; preds = %2305, %2302
  %2318 = phi float [ %2316, %2305 ], [ 0x47EFFFFFE0000000, %2302 ]
  br i1 %556, label %2375, label %2319, !dx.controlflow.hints !64

; <label>:2319                                    ; preds = %2317
  %2320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %2321 = extractvalue %dx.types.CBufRet.f32 %2320, 0
  %2322 = extractvalue %dx.types.CBufRet.f32 %2320, 1
  %2323 = extractvalue %dx.types.CBufRet.f32 %2320, 2
  %2324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %2325 = extractvalue %dx.types.CBufRet.f32 %2324, 0
  %2326 = extractvalue %dx.types.CBufRet.f32 %2324, 1
  %2327 = extractvalue %dx.types.CBufRet.f32 %2324, 2
  %2328 = fsub fast float %2223, %2325
  %2329 = fsub fast float %2225, %2326
  %2330 = fsub fast float %2227, %2327
  %2331 = fmul fast float %2328, %2321
  %2332 = fmul fast float %2329, %2322
  %2333 = fmul fast float %2330, %2323
  %2334 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %2335 = extractvalue %dx.types.CBufRet.i32 %2334, 3
  %2336 = icmp eq i32 %2335, 0
  br i1 %2336, label %2340, label %2337, !dx.controlflow.hints !65

; <label>:2337                                    ; preds = %2319
  %2338 = call float @dx.op.unary.f32(i32 22, float %2331)  ; Frc(value)
  %2339 = call float @dx.op.unary.f32(i32 22, float %2332)  ; Frc(value)
  br label %2340

; <label>:2340                                    ; preds = %2337, %2319
  %2341 = phi float [ %2338, %2337 ], [ %2331, %2319 ]
  %2342 = phi float [ %2339, %2337 ], [ %2332, %2319 ]
  %2343 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %23, float %2341, float %2342, float %2333, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2344 = extractvalue %dx.types.ResRet.f32 %2343, 0
  %2345 = fmul fast float %2344, 2.000000e+00
  %2346 = fadd fast float %2345, -1.000000e+00
  %2347 = extractvalue %dx.types.CBufRet.f32 %2320, 3
  %2348 = fmul fast float %2346, %2347
  %2349 = fcmp fast olt float %2348, 0.000000e+00
  %2350 = fcmp fast oge float %2333, 0.000000e+00
  %2351 = fcmp fast ole float %2333, 1.000000e+00
  br i1 %2336, label %2354, label %2352, !dx.controlflow.hints !66

; <label>:2352                                    ; preds = %2340
  %2353 = and i1 %2350, %2351
  br label %2364

; <label>:2354                                    ; preds = %2340
  %2355 = fcmp fast oge float %2331, 0.000000e+00
  %2356 = fcmp fast oge float %2332, 0.000000e+00
  %2357 = and i1 %2355, %2356
  %2358 = and i1 %2350, %2357
  %2359 = fcmp fast ole float %2331, 1.000000e+00
  %2360 = fcmp fast ole float %2332, 1.000000e+00
  %2361 = and i1 %2359, %2360
  %2362 = and i1 %2351, %2361
  %2363 = and i1 %2358, %2362
  br label %2364

; <label>:2364                                    ; preds = %2354, %2352
  %2365 = phi i1 [ %2353, %2352 ], [ %2363, %2354 ]
  %2366 = and i1 %2349, %2365
  %2367 = call float @dx.op.unary.f32(i32 6, float %2348)  ; FAbs(value)
  %2368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %2369 = extractvalue %dx.types.CBufRet.f32 %2368, 1
  %2370 = extractvalue %dx.types.CBufRet.f32 %2368, 0
  %2371 = call float @dx.op.binary.f32(i32 35, float %2367, float %2370)  ; FMax(a,b)
  %2372 = select i1 %2366, float %2369, float %2371
  %2373 = zext i1 %2366 to i32
  %2374 = call float @dx.op.binary.f32(i32 36, float %2303, float %2372)  ; FMin(a,b)
  br label %2375

; <label>:2375                                    ; preds = %2364, %2317
  %2376 = phi float [ %2374, %2364 ], [ %2303, %2317 ]
  %2377 = phi i32 [ %2373, %2364 ], [ 0, %2317 ]
  br i1 %616, label %2550, label %2378, !dx.controlflow.hints !67

; <label>:2378                                    ; preds = %2375
  %2379 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2380 = extractvalue %dx.types.CBufRet.i32 %2379, 1
  %2381 = and i32 %2380, 1
  %2382 = icmp eq i32 %2381, 0
  br i1 %2382, label %2383, label %2540, !dx.controlflow.hints !68

; <label>:2383                                    ; preds = %2378
  %2384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %2385 = extractvalue %dx.types.CBufRet.f32 %2384, 2
  %2386 = extractvalue %dx.types.CBufRet.f32 %2384, 3
  %2387 = fmul fast float %2385, %2223
  %2388 = fmul fast float %2386, %2225
  %2389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %2390 = extractvalue %dx.types.CBufRet.f32 %2389, 0
  %2391 = extractvalue %dx.types.CBufRet.f32 %2389, 1
  %2392 = fadd fast float %2387, %2390
  %2393 = fadd fast float %2388, %2391
  %2394 = call float @dx.op.unary.f32(i32 7, float %2392)  ; Saturate(value)
  %2395 = call float @dx.op.unary.f32(i32 7, float %2393)  ; Saturate(value)
  %2396 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %25, float %2394, float %2395, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2397 = extractvalue %dx.types.ResRet.f32 %2396, 0
  %2398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2399 = extractvalue %dx.types.CBufRet.f32 %2398, 0
  %2400 = fmul fast float %2399, %2397
  %2401 = fsub fast float %2392, %2394
  %2402 = fsub fast float %2393, %2395
  %2403 = extractvalue %dx.types.CBufRet.f32 %2384, 0
  %2404 = extractvalue %dx.types.CBufRet.f32 %2384, 1
  %2405 = fmul fast float %2403, %2401
  %2406 = fmul fast float %2404, %2402
  %2407 = fmul fast float %2405, %2405
  %2408 = fmul fast float %2406, %2406
  %2409 = fadd fast float %2407, %2408
  %2410 = call float @dx.op.unary.f32(i32 24, float %2409)  ; Sqrt(value)
  %2411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2412 = extractvalue %dx.types.CBufRet.f32 %2411, 3
  %2413 = fmul fast float %2412, %2410
  %2414 = call float @dx.op.unary.f32(i32 7, float %2413)  ; Saturate(value)
  %2415 = extractvalue %dx.types.CBufRet.f32 %2411, 2
  %2416 = fsub fast float %2415, %2400
  %2417 = fmul fast float %2416, %2414
  %2418 = extractvalue %dx.types.CBufRet.f32 %2398, 1
  %2419 = fsub fast float %2227, %2400
  %2420 = fsub fast float %2419, %2418
  %2421 = fsub fast float %2420, %2417
  %2422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2423 = extractvalue %dx.types.CBufRet.f32 %2422, 2
  %2424 = fsub fast float %2421, %2423
  %2425 = fcmp fast olt float %2424, 0.000000e+00
  %2426 = call float @dx.op.unary.f32(i32 6, float %2424)  ; FAbs(value)
  %2427 = extractvalue %dx.types.CBufRet.i32 %2379, 0
  %2428 = icmp eq i32 %2427, 0
  br i1 %2428, label %2482, label %2429

; <label>:2429                                    ; preds = %2383
  br label %2430

; <label>:2430                                    ; preds = %2469, %2429
  %2431 = phi i32 [ %2475, %2469 ], [ 1, %2429 ]
  %2432 = phi float [ %2477, %2469 ], [ 0x47EFFFFFE0000000, %2429 ]
  %2433 = phi i32 [ %2478, %2469 ], [ 0, %2429 ]
  %2434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2435 = extractvalue %dx.types.CBufRet.f32 %2434, 1
  %2436 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2437 = extractvalue %dx.types.CBufRet.i32 %2436, 1
  %2438 = and i32 %2437, 8
  %2439 = icmp eq i32 %2438, 0
  %2440 = fcmp fast ogt float %2435, %2421
  %2441 = or i1 %2440, %2439
  %2442 = add i32 %2433, 171
  %2443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 %2442)  ; CBufferLoadLegacy(handle,regIndex)
  %2444 = extractvalue %dx.types.CBufRet.f32 %2443, 0
  %2445 = extractvalue %dx.types.CBufRet.f32 %2443, 1
  %2446 = extractvalue %dx.types.CBufRet.f32 %2443, 2
  br i1 %2441, label %2447, label %2453, !dx.controlflow.hints !69

; <label>:2447                                    ; preds = %2430
  %2448 = fsub fast float %2444, %2223
  %2449 = fsub fast float %2445, %2225
  %2450 = fmul fast float %2448, %2448
  %2451 = fmul fast float %2449, %2449
  %2452 = fadd fast float %2450, %2451
  br label %2469

; <label>:2453                                    ; preds = %2430
  %2454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2455 = extractvalue %dx.types.CBufRet.f32 %2454, 2
  %2456 = extractvalue %dx.types.CBufRet.f32 %2434, 2
  %2457 = fmul fast float %2456, %2455
  %2458 = fsub fast float %2457, %2435
  %2459 = fdiv fast float %2446, %2458
  %2460 = fsub fast float %2223, %2444
  %2461 = fsub fast float %2225, %2445
  %2462 = fsub fast float %2421, %2435
  %2463 = fmul fast float %2459, %2462
  %2464 = fmul fast float %2460, %2460
  %2465 = fmul fast float %2461, %2461
  %2466 = fadd fast float %2464, %2465
  %2467 = fmul fast float %2463, %2463
  %2468 = fadd fast float %2466, %2467
  br label %2469

; <label>:2469                                    ; preds = %2453, %2447
  %2470 = phi float [ %2452, %2447 ], [ %2468, %2453 ]
  %2471 = call float @dx.op.unary.f32(i32 24, float %2470)  ; Sqrt(value)
  %2472 = fsub float %2446, %2471
  %2473 = fcmp fast olt float %2472, 0.000000e+00
  %2474 = zext i1 %2473 to i32
  %2475 = and i32 %2474, %2431
  %2476 = call float @dx.op.unary.f32(i32 6, float %2472)  ; FAbs(value)
  %2477 = call float @dx.op.binary.f32(i32 36, float %2432, float %2476)  ; FMin(a,b)
  %2478 = add i32 %2433, 1
  %2479 = extractvalue %dx.types.CBufRet.i32 %2436, 0
  %2480 = icmp ult i32 %2478, %2479
  br i1 %2480, label %2430, label %2481

; <label>:2481                                    ; preds = %2469
  br label %2482

; <label>:2482                                    ; preds = %2481, %2383
  %2483 = phi i32 [ 1, %2383 ], [ %2475, %2481 ]
  %2484 = phi float [ 0x47EFFFFFE0000000, %2383 ], [ %2477, %2481 ]
  br label %2485

; <label>:2485                                    ; preds = %2485, %2482
  %2486 = phi i32 [ %2483, %2482 ], [ %2525, %2485 ]
  %2487 = phi float [ 0x47EFFFFFE0000000, %2482 ], [ %2527, %2485 ]
  %2488 = phi i32 [ 0, %2482 ], [ %2528, %2485 ]
  %2489 = add nuw nsw i32 %2488, 191
  %2490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 %2489)  ; CBufferLoadLegacy(handle,regIndex)
  %2491 = extractvalue %dx.types.CBufRet.f32 %2490, 0
  %2492 = extractvalue %dx.types.CBufRet.f32 %2490, 1
  %2493 = extractvalue %dx.types.CBufRet.f32 %2490, 2
  %2494 = add nuw nsw i32 %2488, 195
  %2495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 %2494)  ; CBufferLoadLegacy(handle,regIndex)
  %2496 = extractvalue %dx.types.CBufRet.f32 %2495, 0
  %2497 = extractvalue %dx.types.CBufRet.f32 %2495, 1
  %2498 = extractvalue %dx.types.CBufRet.f32 %2495, 2
  %2499 = fsub fast float %2223, %2491
  %2500 = fsub fast float %2225, %2492
  %2501 = fsub fast float %2421, %2493
  %2502 = call float @dx.op.unary.f32(i32 6, float %2499)  ; FAbs(value)
  %2503 = call float @dx.op.unary.f32(i32 6, float %2500)  ; FAbs(value)
  %2504 = call float @dx.op.unary.f32(i32 6, float %2501)  ; FAbs(value)
  %2505 = fsub fast float %2502, %2496
  %2506 = fsub fast float %2503, %2497
  %2507 = fsub fast float %2504, %2498
  %2508 = call float @dx.op.binary.f32(i32 35, float %2505, float 0.000000e+00)  ; FMax(a,b)
  %2509 = call float @dx.op.binary.f32(i32 35, float %2506, float 0.000000e+00)  ; FMax(a,b)
  %2510 = call float @dx.op.binary.f32(i32 35, float %2507, float 0.000000e+00)  ; FMax(a,b)
  %2511 = fmul fast float %2508, %2508
  %2512 = fmul fast float %2509, %2509
  %2513 = fadd fast float %2512, %2511
  %2514 = fmul fast float %2510, %2510
  %2515 = fadd fast float %2513, %2514
  %2516 = call float @dx.op.unary.f32(i32 24, float %2515)  ; Sqrt(value)
  %2517 = call float @dx.op.binary.f32(i32 35, float %2506, float %2507)  ; FMax(a,b)
  %2518 = call float @dx.op.binary.f32(i32 35, float %2505, float %2517)  ; FMax(a,b)
  %2519 = call float @dx.op.binary.f32(i32 36, float %2518, float 0.000000e+00)  ; FMin(a,b)
  %2520 = fadd fast float %2519, %2516
  %2521 = fsub fast float -0.000000e+00, %2520
  %2522 = fcmp ogt float %2520, -0.000000e+00
  %2523 = icmp ne i32 %2486, 0
  %2524 = and i1 %2523, %2522
  %2525 = zext i1 %2524 to i32
  %2526 = call float @dx.op.unary.f32(i32 6, float %2521)  ; FAbs(value)
  %2527 = call float @dx.op.binary.f32(i32 36, float %2487, float %2526)  ; FMin(a,b)
  %2528 = add nuw nsw i32 %2488, 1
  %2529 = icmp eq i32 %2528, 4
  br i1 %2529, label %2530, label %2485

; <label>:2530                                    ; preds = %2485
  %2531 = call float @dx.op.binary.f32(i32 36, float %2426, float %2527)  ; FMin(a,b)
  %2532 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2533 = extractvalue %dx.types.CBufRet.i32 %2532, 1
  %2534 = and i32 %2533, 2
  %2535 = icmp ne i32 %2534, 0
  %2536 = xor i1 %2524, %2535
  %2537 = call float @dx.op.binary.f32(i32 36, float %2531, float %2484)  ; FMin(a,b)
  %2538 = and i1 %2536, %2425
  %2539 = zext i1 %2538 to i32
  br label %2540

; <label>:2540                                    ; preds = %2530, %2378
  %2541 = phi i32 [ %344, %2378 ], [ %2539, %2530 ]
  %2542 = phi float [ 0.000000e+00, %2378 ], [ %2537, %2530 ]
  %2543 = phi float [ %2227, %2378 ], [ %2421, %2530 ]
  %2544 = icmp ne i32 %2541, 0
  %2545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %2546 = extractvalue %dx.types.CBufRet.f32 %2545, 3
  %2547 = call float @dx.op.binary.f32(i32 35, float %2542, float %2546)  ; FMax(a,b)
  %2548 = call float @dx.op.binary.f32(i32 36, float %2318, float %2547)  ; FMin(a,b)
  %2549 = zext i1 %2544 to i32
  br label %2550

; <label>:2550                                    ; preds = %2540, %2375
  %2551 = phi i32 [ %2541, %2540 ], [ %344, %2375 ]
  %2552 = phi float [ %2543, %2540 ], [ %345, %2375 ]
  %2553 = phi float [ %2548, %2540 ], [ %2318, %2375 ]
  %2554 = phi i32 [ %2549, %2540 ], [ 0, %2375 ]
  %2555 = icmp eq i32 %2304, 0
  br i1 %2555, label %2629, label %2556, !dx.controlflow.hints !70

; <label>:2556                                    ; preds = %2550
  %2557 = fmul fast float %794, %2219
  %2558 = call float @dx.op.unary.f32(i32 23, float %2557)  ; Log(value)
  %2559 = fmul fast float %2558, 0x3FE62E4300000000
  %2560 = call float @dx.op.binary.f32(i32 35, float %2559, float 1.000000e+00)  ; FMax(a,b)
  %2561 = fmul fast float %2560, %2553
  %2562 = call float @dx.op.binary.f32(i32 36, float %2561, float %2376)  ; FMin(a,b)
  %2563 = call float @dx.op.binary.f32(i32 35, float %2562, float 0.000000e+00)  ; FMax(a,b)
  %2564 = fcmp fast ogt float %2563, 0x3F1A36E2E0000000
  %2565 = fadd fast float %2220, %2223
  %2566 = fadd fast float %2221, %2225
  %2567 = select i1 %2564, float %2565, float %2223
  %2568 = select i1 %2564, float %2566, float %2225
  %2569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %2570 = extractvalue %dx.types.CBufRet.f32 %2569, 0
  %2571 = extractvalue %dx.types.CBufRet.f32 %2569, 1
  %2572 = fsub fast float %2567, %2570
  %2573 = fsub fast float %2568, %2571
  %2574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %2575 = extractvalue %dx.types.CBufRet.f32 %2574, 0
  %2576 = extractvalue %dx.types.CBufRet.f32 %2574, 1
  %2577 = fmul fast float %2572, %2575
  %2578 = fmul fast float %2573, %2576
  %2579 = fsub fast float 1.000000e+00, %2578
  %2580 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %2581 = extractvalue %dx.types.CBufRet.i32 %2580, 3
  %2582 = icmp eq i32 %2581, 0
  br i1 %2582, label %2589, label %2583, !dx.controlflow.hints !58

; <label>:2583                                    ; preds = %2556
  %2584 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %24, float %2577, float %2579, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2585 = extractvalue %dx.types.ResRet.f32 %2584, 0
  %2586 = extractvalue %dx.types.ResRet.f32 %2584, 1
  %2587 = extractvalue %dx.types.ResRet.f32 %2584, 2
  %2588 = extractvalue %dx.types.ResRet.f32 %2584, 3
  br label %2595

; <label>:2589                                    ; preds = %2556
  %2590 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %25, float %2577, float %2579, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2591 = extractvalue %dx.types.ResRet.f32 %2590, 0
  %2592 = extractvalue %dx.types.ResRet.f32 %2590, 1
  %2593 = extractvalue %dx.types.ResRet.f32 %2590, 2
  %2594 = extractvalue %dx.types.ResRet.f32 %2590, 3
  br label %2595

; <label>:2595                                    ; preds = %2589, %2583
  %2596 = phi float [ %2585, %2583 ], [ %2591, %2589 ]
  %2597 = phi float [ %2586, %2583 ], [ %2592, %2589 ]
  %2598 = phi float [ %2587, %2583 ], [ %2593, %2589 ]
  %2599 = phi float [ %2588, %2583 ], [ %2594, %2589 ]
  %2600 = extractvalue %dx.types.CBufRet.f32 %2574, 3
  %2601 = fmul fast float %2600, %2597
  %2602 = fmul fast float %2601, %2596
  %2603 = fsub fast float %2601, %2602
  %2604 = fcmp fast ole float %2603, 0.000000e+00
  %2605 = extractvalue %dx.types.CBufRet.f32 %2569, 2
  %2606 = fadd fast float %2602, %2605
  %2607 = fmul fast float %2600, %2598
  %2608 = fadd fast float %2607, %2605
  %2609 = fdiv fast float 1.000000e+00, %2603
  %2610 = select i1 %2604, float 1.000000e+06, float %2609
  %2611 = fsub fast float %2227, %2606
  %2612 = fmul fast float %2610, %2611
  %2613 = call float @dx.op.unary.f32(i32 7, float %2612)  ; Saturate(value)
  %2614 = extractvalue %dx.types.CBufRet.f32 %2574, 2
  %2615 = fmul fast float %2614, %2613
  %2616 = fsub fast float %2614, %2615
  %2617 = fcmp fast olt float %2227, %2608
  %2618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %2619 = extractvalue %dx.types.CBufRet.f32 %2618, 3
  %2620 = fmul fast float %2619, 3.000000e+00
  %2621 = select i1 %2617, float %2620, float 3.000000e+00
  %2622 = fmul fast float %2616, %2621
  %2623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %2624 = extractvalue %dx.types.CBufRet.f32 %2623, 2
  %2625 = fmul fast float %2219, 0x3FD5555560000000
  %2626 = fmul fast float %2625, %2599
  %2627 = fmul fast float %2626, %2624
  %2628 = fmul fast float %2627, %2622
  br label %2629

; <label>:2629                                    ; preds = %2595, %2550
  %2630 = phi float [ %2628, %2595 ], [ 0.000000e+00, %2550 ]
  br i1 %541, label %2678, label %2631, !dx.controlflow.hints !72

; <label>:2631                                    ; preds = %2629
  %2632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %2633 = extractvalue %dx.types.CBufRet.f32 %2632, 0
  %2634 = fsub fast float %2633, %2227
  %2635 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2224, float %2226, float %2634)  ; Dot3(ax,ay,az,bx,by,bz)
  %2636 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2189, float %2190, float %2191)  ; Dot3(ax,ay,az,bx,by,bz)
  %2637 = fdiv fast float 1.000000e+00, %2636
  %2638 = fmul fast float %2637, %2635
  %2639 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2638)  ; FMax(a,b)
  %2640 = fcmp fast olt float %2191, 0.000000e+00
  %2641 = call float @dx.op.binary.f32(i32 36, float %2219, float %2639)  ; FMin(a,b)
  br i1 %2640, label %2643, label %2642, !dx.controlflow.hints !73

; <label>:2642                                    ; preds = %2631
  br label %2643

; <label>:2643                                    ; preds = %2642, %2631
  %2644 = phi float [ 0.000000e+00, %2642 ], [ %2641, %2631 ]
  %2645 = phi float [ %2641, %2642 ], [ %2219, %2631 ]
  %2646 = phi float [ %2641, %2642 ], [ 0.000000e+00, %2631 ]
  %2647 = phi float [ %2219, %2642 ], [ %2641, %2631 ]
  %2648 = fsub fast float %2645, %2644
  %2649 = extractvalue %dx.types.CBufRet.f32 %2632, 1
  %2650 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %2649)  ; FMin(a,b)
  %2651 = fsub fast float %2227, %2633
  %2652 = fmul fast float %2650, 0x3FF7154760000000
  %2653 = fmul fast float %2652, %2651
  %2654 = call float @dx.op.unary.f32(i32 21, float %2653)  ; Exp(value)
  %2655 = fmul fast float %2191, 0x3FF7154760000000
  %2656 = fmul fast float %2655, %2647
  %2657 = fmul fast float %2656, %2650
  %2658 = call float @dx.op.unary.f32(i32 21, float %2657)  ; Exp(value)
  %2659 = fmul fast float %2655, %2646
  %2660 = fmul fast float %2659, %2650
  %2661 = call float @dx.op.unary.f32(i32 21, float %2660)  ; Exp(value)
  %2662 = fsub fast float %2658, %2661
  %2663 = fmul fast float %2662, %2654
  %2664 = fmul fast float %2650, %2191
  %2665 = fdiv fast float %2663, %2664
  %2666 = fadd fast float %2648, %2665
  %2667 = call float @dx.op.unary.f32(i32 6, float %2191)  ; FAbs(value)
  %2668 = fcmp fast olt float %2667, 0x3F0FFB4800000000
  %2669 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2651)  ; FMax(a,b)
  %2670 = fmul fast float %2669, 0x3FF7154760000000
  %2671 = fmul fast float %2670, %2649
  %2672 = call float @dx.op.unary.f32(i32 21, float %2671)  ; Exp(value)
  %2673 = fmul fast float %2672, %2219
  %2674 = select i1 %2668, float %2673, float %2666
  %2675 = extractvalue %dx.types.CBufRet.f32 %2084, 1
  %2676 = fmul fast float %2674, %2675
  %2677 = fadd fast float %2676, %2630
  br label %2678

; <label>:2678                                    ; preds = %2643, %2629
  %2679 = phi float [ %2677, %2643 ], [ %2630, %2629 ]
  %2680 = icmp eq i32 %2377, 0
  br i1 %2680, label %2861, label %2681, !dx.controlflow.hints !74

; <label>:2681                                    ; preds = %2678
  %2682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2683 = extractvalue %dx.types.CBufRet.f32 %2682, 3
  %2684 = fmul fast float %2683, %2219
  %2685 = fcmp fast oeq float %2684, 0.000000e+00
  br i1 %2685, label %2700, label %2686, !dx.controlflow.hints !75

; <label>:2686                                    ; preds = %2681
  %2687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %2688 = extractvalue %dx.types.CBufRet.f32 %2687, 3
  %2689 = fmul fast float %2688, %2684
  %2690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %2691 = extractvalue %dx.types.CBufRet.f32 %2690, 0
  %2692 = extractvalue %dx.types.CBufRet.f32 %2690, 1
  %2693 = extractvalue %dx.types.CBufRet.f32 %2690, 2
  %2694 = fmul fast float %2691, %2689
  %2695 = fmul fast float %2692, %2689
  %2696 = fmul fast float %2693, %2689
  %2697 = call float @dx.op.unary.f32(i32 23, float %2694)  ; Log(value)
  %2698 = call float @dx.op.unary.f32(i32 23, float %2695)  ; Log(value)
  %2699 = call float @dx.op.unary.f32(i32 23, float %2696)  ; Log(value)
  br label %2700

; <label>:2700                                    ; preds = %2686, %2681
  %2701 = phi float [ %2697, %2686 ], [ 0.000000e+00, %2681 ]
  %2702 = phi float [ %2698, %2686 ], [ 0.000000e+00, %2681 ]
  %2703 = phi float [ %2699, %2686 ], [ 0.000000e+00, %2681 ]
  %2704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %2705 = extractvalue %dx.types.CBufRet.f32 %2704, 0
  %2706 = extractvalue %dx.types.CBufRet.f32 %2704, 1
  %2707 = extractvalue %dx.types.CBufRet.f32 %2704, 2
  %2708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %2709 = extractvalue %dx.types.CBufRet.f32 %2708, 0
  %2710 = extractvalue %dx.types.CBufRet.f32 %2708, 1
  %2711 = extractvalue %dx.types.CBufRet.f32 %2708, 2
  %2712 = fsub fast float %2223, %2709
  %2713 = fsub fast float %2225, %2710
  %2714 = fsub fast float %2227, %2711
  %2715 = fmul fast float %2712, %2705
  %2716 = fmul fast float %2713, %2706
  %2717 = fmul fast float %2714, %2707
  %2718 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %2719 = extractvalue %dx.types.CBufRet.i32 %2718, 0
  %2720 = extractvalue %dx.types.CBufRet.i32 %2718, 1
  %2721 = uitofp i32 %2719 to float
  %2722 = uitofp i32 %2720 to float
  %2723 = fmul fast float %2715, %2721
  %2724 = fmul fast float %2716, %2722
  %2725 = fadd fast float %2723, 5.000000e-01
  %2726 = fadd fast float %2724, 5.000000e-01
  %2727 = call float @dx.op.unary.f32(i32 22, float %2725)  ; Frc(value)
  %2728 = call float @dx.op.unary.f32(i32 22, float %2726)  ; Frc(value)
  %2729 = call float @dx.op.unary.f32(i32 27, float %2725)  ; Round_ni(value)
  %2730 = call float @dx.op.unary.f32(i32 27, float %2726)  ; Round_ni(value)
  %2731 = fadd fast float %2729, 1.000000e+00
  %2732 = fadd fast float %2730, 1.000000e+00
  %2733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %2734 = extractvalue %dx.types.CBufRet.f32 %2733, 0
  %2735 = extractvalue %dx.types.CBufRet.f32 %2733, 1
  %2736 = fmul fast float %2734, %2731
  %2737 = fmul fast float %2735, %2732
  %2738 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %24, float %2736, float %2737, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2739 = extractvalue %dx.types.ResRet.f32 %2738, 0
  %2740 = extractvalue %dx.types.ResRet.f32 %2738, 1
  %2741 = extractvalue %dx.types.ResRet.f32 %2738, 2
  %2742 = extractvalue %dx.types.ResRet.f32 %2738, 3
  %2743 = extractvalue %dx.types.CBufRet.i32 %2718, 2
  %2744 = extractvalue %dx.types.CBufRet.f32 %2733, 2
  %2745 = uitofp i32 %2743 to float
  %2746 = fadd fast float %2745, -1.000000e+00
  %2747 = fmul fast float %2746, %2739
  %2748 = fmul fast float %2746, %2740
  %2749 = fmul fast float %2746, %2741
  %2750 = fmul fast float %2746, %2742
  %2751 = fadd fast float %2747, 5.000000e-01
  %2752 = fadd fast float %2748, 5.000000e-01
  %2753 = fadd fast float %2749, 5.000000e-01
  %2754 = fadd fast float %2750, 5.000000e-01
  %2755 = fptoui float %2751 to i32
  %2756 = fptoui float %2752 to i32
  %2757 = fptoui float %2753 to i32
  %2758 = fptoui float %2754 to i32
  %2759 = uitofp i32 %2755 to float
  %2760 = uitofp i32 %2756 to float
  %2761 = uitofp i32 %2757 to float
  %2762 = uitofp i32 %2758 to float
  %2763 = fadd fast float %2759, 5.000000e-01
  %2764 = fadd fast float %2760, 5.000000e-01
  %2765 = fadd fast float %2761, 5.000000e-01
  %2766 = fadd fast float %2762, 5.000000e-01
  %2767 = fmul fast float %2763, %2744
  %2768 = fmul fast float %2764, %2744
  %2769 = fmul fast float %2765, %2744
  %2770 = fmul fast float %2766, %2744
  %2771 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %25, float %2767, float %2717, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2772 = extractvalue %dx.types.ResRet.f32 %2771, 0
  %2773 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %25, float %2768, float %2717, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2774 = extractvalue %dx.types.ResRet.f32 %2773, 0
  %2775 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %25, float %2769, float %2717, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2776 = extractvalue %dx.types.ResRet.f32 %2775, 0
  %2777 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %25, float %2770, float %2717, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2778 = extractvalue %dx.types.ResRet.f32 %2777, 0
  %2779 = fsub fast float %2776, %2778
  %2780 = fmul fast float %2779, %2727
  %2781 = fadd fast float %2780, %2778
  %2782 = fsub fast float %2774, %2772
  %2783 = fmul fast float %2782, %2727
  %2784 = fadd fast float %2783, %2772
  %2785 = fsub fast float %2784, %2781
  %2786 = fmul fast float %2785, %2728
  %2787 = fadd fast float %2786, %2781
  %2788 = fcmp fast ogt float %2787, 0.000000e+00
  br i1 %2788, label %2789, label %2857, !dx.controlflow.hints !76

; <label>:2789                                    ; preds = %2700
  %2790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %2791 = extractvalue %dx.types.CBufRet.f32 %2790, 0
  %2792 = extractvalue %dx.types.CBufRet.f32 %2790, 1
  %2793 = extractvalue %dx.types.CBufRet.f32 %2790, 2
  %2794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %2795 = extractvalue %dx.types.CBufRet.f32 %2794, 0
  %2796 = extractvalue %dx.types.CBufRet.f32 %2794, 1
  %2797 = extractvalue %dx.types.CBufRet.f32 %2794, 2
  %2798 = fmul fast float %2713, %2705
  %2799 = fmul fast float %2714, %2705
  %2800 = fadd fast float %2715, %2795
  %2801 = fadd fast float %2798, %2796
  %2802 = fadd fast float %2799, %2797
  %2803 = fmul fast float %2800, %2791
  %2804 = fmul fast float %2801, %2791
  %2805 = fmul fast float %2802, %2791
  %2806 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %22, float %2803, float %2804, float %2805, float undef, i32 0, i32 0, i32 0, float %2701)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2807 = extractvalue %dx.types.ResRet.f32 %2806, 0
  %2808 = fmul fast float %2800, %2792
  %2809 = fmul fast float %2801, %2792
  %2810 = fmul fast float %2802, %2792
  %2811 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %22, float %2808, float %2809, float %2810, float undef, i32 0, i32 0, i32 0, float %2702)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2812 = extractvalue %dx.types.ResRet.f32 %2811, 1
  %2813 = fmul fast float %2800, %2793
  %2814 = fmul fast float %2801, %2793
  %2815 = fmul fast float %2802, %2793
  %2816 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %22, float %2813, float %2814, float %2815, float undef, i32 0, i32 0, i32 0, float %2703)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2817 = extractvalue %dx.types.ResRet.f32 %2816, 2
  %2818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %2819 = extractvalue %dx.types.CBufRet.f32 %2818, 1
  %2820 = fmul fast float %2812, %2807
  %2821 = fmul fast float %2820, %2817
  %2822 = call float @dx.op.unary.f32(i32 23, float %2821)  ; Log(value)
  %2823 = fmul fast float %2822, %2819
  %2824 = call float @dx.op.unary.f32(i32 21, float %2823)  ; Exp(value)
  %2825 = extractvalue %dx.types.CBufRet.f32 %2818, 2
  %2826 = fmul fast float %2787, %2787
  %2827 = fmul fast float %2826, %2824
  %2828 = fmul fast float %2827, %2825
  %2829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %2830 = extractvalue %dx.types.CBufRet.f32 %2829, 3
  %2831 = fmul fast float %2830, %2828
  %2832 = bitcast float %2831 to i32
  %2833 = sitofp i32 %2832 to float
  %2834 = fptosi float %2833 to i32
  %2835 = bitcast i32 %2834 to float
  %2836 = fsub fast float 1.000000e+00, %2828
  %2837 = bitcast float %2836 to i32
  %2838 = sitofp i32 %2837 to float
  %2839 = fptosi float %2838 to i32
  %2840 = bitcast i32 %2839 to float
  %2841 = fadd fast float %2835, %2840
  %2842 = bitcast float %2841 to i32
  %2843 = sub nsw i32 2129859010, %2842
  %2844 = bitcast i32 %2843 to float
  %2845 = fmul fast float %2844, %2835
  %2846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2847 = extractvalue %dx.types.CBufRet.f32 %2846, 2
  %2848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %2849 = extractvalue %dx.types.CBufRet.f32 %2848, 0
  %2850 = fmul fast float %2845, %2849
  %2851 = fadd fast float %2850, 1.000000e+00
  %2852 = bitcast float %2851 to i32
  %2853 = sub nsw i32 2129859010, %2852
  %2854 = bitcast i32 %2853 to float
  %2855 = fmul fast float %2845, %2847
  %2856 = fmul fast float %2855, %2854
  br label %2857

; <label>:2857                                    ; preds = %2789, %2700
  %2858 = phi float [ %2856, %2789 ], [ %2787, %2700 ]
  %2859 = fmul fast float %2858, %2219
  %2860 = fadd fast float %2859, %2679
  br label %2861

; <label>:2861                                    ; preds = %2857, %2678
  %2862 = phi float [ %2860, %2857 ], [ %2679, %2678 ]
  %2863 = icmp eq i32 %2554, 0
  br i1 %2863, label %2895, label %2864, !dx.controlflow.hints !77

; <label>:2864                                    ; preds = %2861
  %2865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %2866 = extractvalue %dx.types.CBufRet.f32 %2865, 1
  %2867 = fsub fast float %2219, %2866
  %2868 = extractvalue %dx.types.CBufRet.f32 %2865, 3
  %2869 = fmul fast float %2867, %2868
  %2870 = call float @dx.op.unary.f32(i32 7, float %2869)  ; Saturate(value)
  %2871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %2872 = extractvalue %dx.types.CBufRet.f32 %2871, 3
  %2873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2874 = extractvalue %dx.types.CBufRet.f32 %2873, 2
  %2875 = fsub fast float %2874, %2552
  %2876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %2877 = extractvalue %dx.types.CBufRet.f32 %2876, 3
  %2878 = fmul fast float %2875, %2877
  %2879 = call float @dx.op.unary.f32(i32 7, float %2878)  ; Saturate(value)
  %2880 = fmul fast float %2879, %2872
  %2881 = extractvalue %dx.types.CBufRet.f32 %2876, 0
  %2882 = fsub fast float %2219, %2881
  %2883 = extractvalue %dx.types.CBufRet.f32 %2876, 1
  %2884 = fmul fast float %2882, %2883
  %2885 = call float @dx.op.unary.f32(i32 7, float %2884)  ; Saturate(value)
  %2886 = fsub fast float 1.000000e+00, %2870
  %2887 = fmul fast float %2885, %2886
  %2888 = fadd fast float %2887, %2870
  %2889 = extractvalue %dx.types.CBufRet.f32 %2865, 0
  %2890 = fsub fast float %2880, %2889
  %2891 = fmul fast float %2890, %2888
  %2892 = fadd fast float %2891, %2889
  %2893 = fmul fast float %2892, %2219
  %2894 = fadd fast float %2893, %2862
  br label %2895

; <label>:2895                                    ; preds = %2864, %2861
  %2896 = phi float [ %2894, %2864 ], [ %2862, %2861 ]
  %2897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %2898 = extractvalue %dx.types.CBufRet.f32 %2897, 3
  %2899 = fmul fast float %2896, 0xBFF7154760000000
  %2900 = fmul fast float %2899, %2898
  %2901 = call float @dx.op.unary.f32(i32 21, float %2900)  ; Exp(value)
  %2902 = call float @dx.op.unary.f32(i32 7, float %2901)  ; Saturate(value)
  %2903 = fmul fast float %2902, %2215
  %2904 = fmul fast float %2902, %2216
  %2905 = fmul fast float %2902, %2217
  %2906 = fadd fast float %2903, %2183
  %2907 = fadd fast float %2904, %2184
  %2908 = fadd fast float %2905, %2185
  %2909 = fsub fast float 1.000000e+00, %1252
  %2910 = fmul fast float %1244, %349
  %2911 = fmul fast float %2910, %2909
  %2912 = fmul fast float %2911, %2906
  %2913 = fmul fast float %1245, %349
  %2914 = fmul fast float %2913, %2909
  %2915 = fmul fast float %2914, %2907
  %2916 = fmul fast float %1246, %349
  %2917 = fmul fast float %2916, %2909
  %2918 = fmul fast float %2917, %2908
  %2919 = fadd fast float %2912, %350
  %2920 = fadd fast float %2915, %351
  %2921 = fadd fast float %2918, %352
  %2922 = fdiv fast float %1228, %804
  %2923 = fadd fast float %804, %356
  %2924 = fmul fast float %356, %356
  %2925 = fmul fast float %2923, %2923
  %2926 = fsub fast float %2924, %2925
  %2927 = fmul fast float %2926, -5.000000e-01
  %2928 = fmul fast float %2927, %2922
  %2929 = fadd fast float %2928, %348
  %2930 = fadd fast float %1228, %358
  %2931 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2932 = extractvalue %dx.types.CBufRet.i32 %2931, 0
  %2933 = icmp eq i32 %2932, 0
  br i1 %2933, label %2960, label %2934, !dx.controlflow.hints !93

; <label>:2934                                    ; preds = %2895
  %2935 = icmp ne i32 %363, 0
  %2936 = zext i1 %2935 to i32
  %2937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2938 = extractvalue %dx.types.CBufRet.f32 %2937, 2
  %2939 = extractvalue %dx.types.CBufRet.f32 %2937, 0
  %2940 = fsub fast float %2923, %2939
  %2941 = fmul fast float %2940, %2938
  %2942 = call float @dx.op.unary.f32(i32 7, float %2941)  ; Saturate(value)
  %2943 = fadd fast float %2942, -5.000000e-01
  %2944 = fmul fast float %2943, 2.000000e+00
  %2945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2946 = extractvalue %dx.types.CBufRet.f32 %2945, 2
  %2947 = fcmp fast olt float %2944, %2946
  br i1 %2947, label %2948, label %2960, !dx.controlflow.hints !94

; <label>:2948                                    ; preds = %2934
  %2949 = fmul fast float %2944, %2944
  %2950 = fmul fast float %2909, %349
  %2951 = fmul fast float %2944, %2950
  %2952 = fmul fast float %2949, %2950
  %2953 = fmul fast float %2951, %2949
  %2954 = fmul fast float %2949, %2949
  %2955 = fmul fast float %2954, %2950
  %2956 = fadd fast float %2951, %359
  %2957 = fadd fast float %2952, %360
  %2958 = fadd fast float %2953, %361
  %2959 = fadd fast float %2955, %362
  br label %2960

; <label>:2960                                    ; preds = %2948, %2934, %2895
  %2961 = phi float [ %359, %2895 ], [ %2956, %2948 ], [ %359, %2934 ]
  %2962 = phi float [ %360, %2895 ], [ %2957, %2948 ], [ %360, %2934 ]
  %2963 = phi float [ %361, %2895 ], [ %2958, %2948 ], [ %361, %2934 ]
  %2964 = phi float [ %362, %2895 ], [ %2959, %2948 ], [ %362, %2934 ]
  %2965 = phi i32 [ %363, %2895 ], [ 1, %2948 ], [ %2936, %2934 ]
  %2966 = fmul fast float %1252, %349
  br label %2967

; <label>:2967                                    ; preds = %2960, %1247
  %2968 = phi float [ %1248, %1247 ], [ %2923, %2960 ]
  %2969 = phi i32 [ %344, %1247 ], [ %2551, %2960 ]
  %2970 = phi float [ %345, %1247 ], [ %2552, %2960 ]
  %2971 = phi float [ %348, %1247 ], [ %2929, %2960 ]
  %2972 = phi float [ %349, %1247 ], [ %2966, %2960 ]
  %2973 = phi float [ %350, %1247 ], [ %2919, %2960 ]
  %2974 = phi float [ %351, %1247 ], [ %2920, %2960 ]
  %2975 = phi float [ %352, %1247 ], [ %2921, %2960 ]
  %2976 = phi float [ %358, %1247 ], [ %2930, %2960 ]
  %2977 = phi float [ %359, %1247 ], [ %2961, %2960 ]
  %2978 = phi float [ %360, %1247 ], [ %2962, %2960 ]
  %2979 = phi float [ %361, %1247 ], [ %2963, %2960 ]
  %2980 = phi float [ %362, %1247 ], [ %2964, %2960 ]
  %2981 = phi i32 [ %363, %1247 ], [ %2965, %2960 ]
  %2982 = fmul fast float %804, %117
  %2983 = fmul fast float %804, %118
  %2984 = fmul fast float %804, %119
  %2985 = fadd fast float %2982, %353
  %2986 = fadd fast float %2983, %354
  %2987 = fadd fast float %2984, %355
  %2988 = fcmp fast olt float %2968, %321
  %2989 = extractvalue %dx.types.CBufRet.f32 %1233, 2
  %2990 = fcmp fast olt float %2989, %2972
  %2991 = and i1 %2988, %2990
  br i1 %2991, label %343, label %2992

; <label>:2992                                    ; preds = %2967
  br label %2993

; <label>:2993                                    ; preds = %2992, %317
  %2994 = phi float [ 0.000000e+00, %317 ], [ %2971, %2992 ]
  %2995 = phi float [ 1.000000e+00, %317 ], [ %2972, %2992 ]
  %2996 = phi float [ 0.000000e+00, %317 ], [ %2973, %2992 ]
  %2997 = phi float [ 0.000000e+00, %317 ], [ %2974, %2992 ]
  %2998 = phi float [ 0.000000e+00, %317 ], [ %2975, %2992 ]
  %2999 = phi float [ 0.000000e+00, %317 ], [ %2976, %2992 ]
  %3000 = phi float [ 0.000000e+00, %317 ], [ %2977, %2992 ]
  %3001 = phi float [ 0.000000e+00, %317 ], [ %2978, %2992 ]
  %3002 = phi float [ 0.000000e+00, %317 ], [ %2979, %2992 ]
  %3003 = phi float [ 0.000000e+00, %317 ], [ %2980, %2992 ]
  %3004 = phi i32 [ 0, %317 ], [ %2981, %2992 ]
  %3005 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %3006 = extractvalue %dx.types.CBufRet.i32 %3005, 0
  %3007 = icmp eq i32 %3006, 0
  br i1 %3007, label %3049, label %3008, !dx.controlflow.hints !95

; <label>:3008                                    ; preds = %2993
  %3009 = icmp eq i32 %3004, 0
  br i1 %3009, label %3048, label %3010, !dx.controlflow.hints !96

; <label>:3010                                    ; preds = %3008
  %3011 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %3012 = extractvalue %dx.types.CBufRet.i32 %3011, 2
  %3013 = icmp eq i32 %3012, 0
  br i1 %3013, label %3020, label %3014, !dx.controlflow.hints !97

; <label>:3014                                    ; preds = %3010
  %3015 = fsub fast float 1.000000e+00, %2995
  %3016 = fdiv fast float %3000, %3015
  %3017 = fdiv fast float %3001, %3015
  %3018 = fdiv fast float %3002, %3015
  %3019 = fdiv fast float %3003, %3015
  br label %3025

; <label>:3020                                    ; preds = %3010
  %3021 = fadd fast float %3000, %2995
  %3022 = fadd fast float %3001, %2995
  %3023 = fadd fast float %3002, %2995
  %3024 = fadd fast float %3003, %2995
  br label %3025

; <label>:3025                                    ; preds = %3020, %3014
  %3026 = phi float [ %3016, %3014 ], [ %3021, %3020 ]
  %3027 = phi float [ %3017, %3014 ], [ %3022, %3020 ]
  %3028 = phi float [ %3018, %3014 ], [ %3023, %3020 ]
  %3029 = phi float [ %3019, %3014 ], [ %3024, %3020 ]
  %3030 = call float @dx.op.binary.f32(i32 35, float %3026, float -1.000000e+00)  ; FMax(a,b)
  %3031 = call float @dx.op.binary.f32(i32 35, float %3027, float -1.000000e+00)  ; FMax(a,b)
  %3032 = call float @dx.op.binary.f32(i32 35, float %3028, float -1.000000e+00)  ; FMax(a,b)
  %3033 = call float @dx.op.binary.f32(i32 35, float %3029, float -1.000000e+00)  ; FMax(a,b)
  %3034 = call float @dx.op.binary.f32(i32 36, float %3030, float 1.000000e+00)  ; FMin(a,b)
  %3035 = call float @dx.op.binary.f32(i32 36, float %3031, float 1.000000e+00)  ; FMin(a,b)
  %3036 = call float @dx.op.binary.f32(i32 36, float %3032, float 1.000000e+00)  ; FMin(a,b)
  %3037 = call float @dx.op.binary.f32(i32 36, float %3033, float 1.000000e+00)  ; FMin(a,b)
  %3038 = fmul fast float %3034, 1.500000e+00
  %3039 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %3036, float %3038)  ; FMad(a,b,c)
  %3040 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %3035, float 0.000000e+00)  ; FMad(a,b,c)
  %3041 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %3037, float %3040)  ; FMad(a,b,c)
  %3042 = fmul fast float %3034, 0x3FEBB67AE0000000
  %3043 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %3036, float %3042)  ; FMad(a,b,c)
  %3044 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %3035, float 0.000000e+00)  ; FMad(a,b,c)
  %3045 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %3037, float %3044)  ; FMad(a,b,c)
  %3046 = fadd fast float %3039, 5.000000e-01
  %3047 = fadd fast float %3043, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %28, i32 %29, i32 0, float %3046, float %3041, float %3047, float %3045, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3049

; <label>:3048                                    ; preds = %3008
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %28, i32 %29, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3049

; <label>:3049                                    ; preds = %3048, %3025, %2993
  %3050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %3051 = extractvalue %dx.types.CBufRet.f32 %3050, 2
  %3052 = fsub fast float %2995, %3051
  %3053 = fdiv fast float %3052, %3051
  %3054 = call float @dx.op.unary.f32(i32 7, float %3053)  ; Saturate(value)
  %3055 = fmul fast float %3054, 2.000000e+00
  %3056 = fsub fast float 3.000000e+00, %3055
  %3057 = fmul fast float %3054, %3054
  %3058 = fmul fast float %3057, %2995
  %3059 = fmul fast float %3058, %3056
  %3060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %3061 = extractvalue %dx.types.CBufRet.f32 %3060, 0
  %3062 = extractvalue %dx.types.CBufRet.f32 %3060, 1
  %3063 = extractvalue %dx.types.CBufRet.f32 %3060, 2
  %3064 = call float @dx.op.dot3.f32(i32 55, float %117, float %118, float %119, float %3061, float %3062, float %3063)  ; Dot3(ax,ay,az,bx,by,bz)
  %3065 = fmul fast float %3064, %2994
  %3066 = fcmp fast ogt float %2999, 0.000000e+00
  %3067 = fdiv fast float 1.000000e+00, %2999
  %3068 = fmul fast float %3065, %3067
  %3069 = select i1 %3066, float %3068, float %128
  %3070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %3071 = extractvalue %dx.types.CBufRet.f32 %3070, 0
  %3072 = extractvalue %dx.types.CBufRet.f32 %3070, 1
  %3073 = extractvalue %dx.types.CBufRet.f32 %3070, 2
  %3074 = fmul fast float %3071, %81
  %3075 = fmul fast float %3072, %81
  %3076 = fmul fast float %3073, %81
  %3077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %3078 = extractvalue %dx.types.CBufRet.f32 %3077, 0
  %3079 = extractvalue %dx.types.CBufRet.f32 %3077, 1
  %3080 = extractvalue %dx.types.CBufRet.f32 %3077, 2
  %3081 = fmul fast float %3078, %82
  %3082 = fmul fast float %3079, %82
  %3083 = fmul fast float %3080, %82
  %3084 = fadd fast float %3081, %3074
  %3085 = fadd fast float %3082, %3075
  %3086 = fadd fast float %3083, %3076
  %3087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %3088 = extractvalue %dx.types.CBufRet.f32 %3087, 0
  %3089 = extractvalue %dx.types.CBufRet.f32 %3087, 1
  %3090 = extractvalue %dx.types.CBufRet.f32 %3087, 2
  %3091 = fadd fast float %3084, %3088
  %3092 = fadd fast float %3085, %3089
  %3093 = fadd fast float %3086, %3090
  %3094 = fmul fast float %3091, %3069
  %3095 = fmul fast float %3092, %3069
  %3096 = fmul fast float %3093, %3069
  %3097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %3098 = extractvalue %dx.types.CBufRet.f32 %3097, 0
  %3099 = extractvalue %dx.types.CBufRet.f32 %3097, 1
  %3100 = extractvalue %dx.types.CBufRet.f32 %3097, 2
  %3101 = extractvalue %dx.types.CBufRet.f32 %3097, 3
  %3102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %3103 = extractvalue %dx.types.CBufRet.f32 %3102, 0
  %3104 = extractvalue %dx.types.CBufRet.f32 %3102, 1
  %3105 = extractvalue %dx.types.CBufRet.f32 %3102, 2
  %3106 = extractvalue %dx.types.CBufRet.f32 %3102, 3
  %3107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %3108 = extractvalue %dx.types.CBufRet.f32 %3107, 0
  %3109 = extractvalue %dx.types.CBufRet.f32 %3107, 1
  %3110 = extractvalue %dx.types.CBufRet.f32 %3107, 2
  %3111 = extractvalue %dx.types.CBufRet.f32 %3107, 3
  %3112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %3113 = extractvalue %dx.types.CBufRet.f32 %3112, 0
  %3114 = extractvalue %dx.types.CBufRet.f32 %3112, 1
  %3115 = extractvalue %dx.types.CBufRet.f32 %3112, 2
  %3116 = extractvalue %dx.types.CBufRet.f32 %3112, 3
  %3117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %3118 = extractvalue %dx.types.CBufRet.f32 %3117, 3
  %3119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %3120 = extractvalue %dx.types.CBufRet.f32 %3119, 3
  %3121 = extractvalue %dx.types.CBufRet.f32 %3119, 0
  %3122 = extractvalue %dx.types.CBufRet.f32 %3119, 1
  %3123 = extractvalue %dx.types.CBufRet.f32 %3119, 2
  %3124 = fcmp fast olt float %3123, -5.000000e-01
  %3125 = call float @dx.op.dot3.f32(i32 55, float %3094, float %3095, float %3096, float %3094, float %3095, float %3096)  ; Dot3(ax,ay,az,bx,by,bz)
  %3126 = call float @dx.op.unary.f32(i32 25, float %3125)  ; Rsqrt(value)
  %3127 = fmul fast float %3126, %3125
  %3128 = fmul fast float %3126, %3094
  %3129 = fmul fast float %3126, %3095
  %3130 = fmul fast float %3126, %3096
  %3131 = fadd fast float %3127, %3101
  %3132 = call float @dx.op.dot3.f32(i32 55, float %3128, float %3129, float %3130, float %3098, float %3099, float %3100)  ; Dot3(ax,ay,az,bx,by,bz)
  %3133 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %3134 = extractvalue %dx.types.CBufRet.i32 %3133, 1
  %3135 = and i32 %3134, 1
  %3136 = icmp ne i32 %3135, 0
  %3137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %3138 = extractvalue %dx.types.CBufRet.f32 %3137, 2
  %3139 = fcmp fast ogt float %3138, 0.000000e+00
  %3140 = and i1 %3136, %3139
  br i1 %3140, label %3141, label %3547, !dx.controlflow.hints !98

; <label>:3141                                    ; preds = %3049
  %3142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %3143 = extractvalue %dx.types.CBufRet.f32 %3142, 3
  %3144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %3145 = extractvalue %dx.types.CBufRet.f32 %3144, 2
  %3146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3147 = extractvalue %dx.types.CBufRet.f32 %3146, 2
  %3148 = fsub fast float %3145, %3147
  %3149 = and i32 %3134, 2
  %3150 = extractvalue %dx.types.CBufRet.i32 %3133, 0
  %3151 = call i32 @dx.op.binary.i32(i32 40, i32 %3150, i32 3)  ; UMin(a,b)
  %3152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %3153 = extractvalue %dx.types.CBufRet.f32 %3152, 0
  %3154 = extractvalue %dx.types.CBufRet.f32 %3152, 1
  %3155 = extractvalue %dx.types.CBufRet.f32 %3146, 0
  %3156 = extractvalue %dx.types.CBufRet.f32 %3146, 1
  %3157 = fsub fast float %3153, %3155
  %3158 = fsub fast float %3154, %3156
  %3159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %3160 = extractvalue %dx.types.CBufRet.f32 %3159, 0
  %3161 = fcmp fast ogt float %3160, 0.000000e+00
  %3162 = fsub fast float -0.000000e+00, %3157
  %3163 = fsub fast float -0.000000e+00, %3158
  %3164 = call float @dx.op.dot2.f32(i32 54, float %3128, float %3129, float %3128, float %3129)  ; Dot2(ax,ay,bx,by)
  %3165 = call float @dx.op.dot2.f32(i32 54, float %3128, float %3129, float %3162, float %3163)  ; Dot2(ax,ay,bx,by)
  %3166 = fmul fast float %3165, 2.000000e+00
  %3167 = call float @dx.op.dot2.f32(i32 54, float %3162, float %3163, float %3162, float %3163)  ; Dot2(ax,ay,bx,by)
  %3168 = fmul fast float %3160, %3160
  %3169 = fsub fast float %3167, %3168
  %3170 = fmul fast float %3166, %3166
  %3171 = fmul fast float %3164, 4.000000e+00
  %3172 = fmul fast float %3171, %3169
  %3173 = fsub fast float %3170, %3172
  %3174 = fcmp fast ogt float %3173, 0.000000e+00
  br i1 %3174, label %3175, label %3190, !dx.controlflow.hints !99

; <label>:3175                                    ; preds = %3141
  %3176 = fcmp fast ogt float %3166, 0.000000e+00
  %3177 = call float @dx.op.unary.f32(i32 24, float %3173)  ; Sqrt(value)
  %3178 = fsub fast float -0.000000e+00, %3177
  %3179 = select i1 %3176, float %3177, float %3178
  %3180 = fadd fast float %3179, %3166
  %3181 = fmul float %3180, -5.000000e-01
  %3182 = fdiv fast float %3181, %3164
  %3183 = call float @dx.op.binary.f32(i32 35, float %3182, float 0.000000e+00)  ; FMax(a,b)
  %3184 = call float @dx.op.binary.f32(i32 36, float %3127, float %3183)  ; FMin(a,b)
  %3185 = fdiv fast float %3169, %3181
  %3186 = call float @dx.op.binary.f32(i32 35, float %3185, float 0.000000e+00)  ; FMax(a,b)
  %3187 = call float @dx.op.binary.f32(i32 36, float %3127, float %3186)  ; FMin(a,b)
  %3188 = call float @dx.op.binary.f32(i32 36, float %3184, float %3187)  ; FMin(a,b)
  %3189 = call float @dx.op.binary.f32(i32 35, float %3184, float %3187)  ; FMax(a,b)
  br label %3190

; <label>:3190                                    ; preds = %3175, %3141
  %3191 = phi float [ %3189, %3175 ], [ -1.000000e+00, %3141 ]
  %3192 = phi float [ %3188, %3175 ], [ -1.000000e+00, %3141 ]
  %3193 = phi i1 [ true, %3175 ], [ false, %3141 ]
  %3194 = and i1 %3161, %3193
  br i1 %3194, label %3195, label %3197, !dx.controlflow.hints !100

; <label>:3195                                    ; preds = %3190
  %3196 = fcmp fast oeq float %3192, %3191
  br i1 %3196, label %3500, label %3198, !dx.controlflow.hints !101

; <label>:3197                                    ; preds = %3190
  br i1 %3161, label %3500, label %3198, !dx.controlflow.hints !102

; <label>:3198                                    ; preds = %3197, %3195
  %3199 = phi float [ %3127, %3197 ], [ %3191, %3195 ]
  %3200 = phi float [ 0.000000e+00, %3197 ], [ %3192, %3195 ]
  %3201 = icmp ne i32 %3149, 0
  %3202 = fmul fast float %3199, %3130
  %3203 = fadd fast float %3202, %3143
  %3204 = fmul fast float %3203, %3199
  %3205 = select i1 %3201, float 0.000000e+00, float %3204
  %3206 = fcmp fast oeq float %3130, 0.000000e+00
  %3207 = fdiv fast float %3148, %3130
  %3208 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3207)  ; FMax(a,b)
  %3209 = select i1 %3206, float %3199, float %3208
  %3210 = call float @dx.op.binary.f32(i32 36, float %3199, float %3209)  ; FMin(a,b)
  %3211 = fcmp fast ogt float %3130, 0.000000e+00
  %3212 = fcmp fast olt float %3148, 0.000000e+00
  br i1 %3211, label %3213, label %3270, !dx.controlflow.hints !103

; <label>:3213                                    ; preds = %3198
  %3214 = icmp eq i32 %3149, 0
  br i1 %3212, label %3215, label %3259, !dx.controlflow.hints !104

; <label>:3215                                    ; preds = %3213
  %3216 = select i1 %3214, float %3199, float 0.000000e+00
  %3217 = fsub fast float -0.000000e+00, %3216
  %3218 = call float @dx.op.unary.f32(i32 6, float %3217)  ; FAbs(value)
  %3219 = fmul fast float %3216, %3130
  %3220 = fadd fast float %3219, %3143
  %3221 = fmul fast float %3218, %3220
  %3222 = fsub fast float %3205, %3221
  %3223 = fsub fast float %3199, %3218
  %3224 = select i1 %3214, float %3223, float 0.000000e+00
  %3225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3226 = extractvalue %dx.types.CBufRet.f32 %3225, 0
  %3227 = extractvalue %dx.types.CBufRet.f32 %3225, 1
  %3228 = extractvalue %dx.types.CBufRet.f32 %3225, 2
  %3229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3230 = extractvalue %dx.types.CBufRet.f32 %3229, 0
  %3231 = extractvalue %dx.types.CBufRet.f32 %3229, 1
  %3232 = extractvalue %dx.types.CBufRet.f32 %3229, 2
  %3233 = extractvalue %dx.types.CBufRet.f32 %3229, 3
  %3234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3235 = extractvalue %dx.types.CBufRet.f32 %3234, 3
  %3236 = call float @dx.op.binary.f32(i32 36, float %3222, float %3235)  ; FMin(a,b)
  %3237 = fmul fast float %3233, %3224
  %3238 = call float @dx.op.unary.f32(i32 7, float %3237)  ; Saturate(value)
  %3239 = fsub fast float %3230, %3226
  %3240 = fsub fast float %3231, %3227
  %3241 = fsub fast float %3232, %3228
  %3242 = fmul fast float %3238, %3239
  %3243 = fmul fast float %3238, %3240
  %3244 = fmul fast float %3238, %3241
  %3245 = fadd fast float %3242, %3226
  %3246 = fadd fast float %3243, %3227
  %3247 = fadd fast float %3244, %3228
  %3248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3249 = extractvalue %dx.types.CBufRet.f32 %3248, 0
  %3250 = extractvalue %dx.types.CBufRet.f32 %3248, 1
  %3251 = fadd fast float %3250, %3249
  %3252 = call float @dx.op.unary.f32(i32 7, float %3251)  ; Saturate(value)
  %3253 = extractvalue %dx.types.CBufRet.f32 %3248, 2
  %3254 = extractvalue %dx.types.CBufRet.f32 %3248, 3
  %3255 = fadd fast float %3254, %3253
  %3256 = call float @dx.op.unary.f32(i32 7, float %3255)  ; Saturate(value)
  %3257 = fmul fast float %3252, %3236
  %3258 = fmul fast float %3257, %3256
  br label %3500

; <label>:3259                                    ; preds = %3213
  br i1 %3214, label %3260, label %3281, !dx.controlflow.hints !105

; <label>:3260                                    ; preds = %3259
  %3261 = call float @dx.op.binary.f32(i32 36, float %3210, float %3200)  ; FMin(a,b)
  %3262 = fsub fast float %3210, %3261
  %3263 = fsub fast float %3262, %3199
  %3264 = call float @dx.op.unary.f32(i32 6, float %3263)  ; FAbs(value)
  %3265 = fadd fast float %3262, %3199
  %3266 = fmul fast float %3265, %3130
  %3267 = fadd fast float %3266, %3143
  %3268 = fmul fast float %3267, %3264
  %3269 = fsub fast float %3205, %3268
  br label %3281

; <label>:3270                                    ; preds = %3198
  br i1 %3212, label %3271, label %3281, !dx.controlflow.hints !106

; <label>:3271                                    ; preds = %3270
  %3272 = call float @dx.op.binary.f32(i32 35, float %3200, float %3210)  ; FMax(a,b)
  %3273 = icmp eq i32 %3149, 0
  %3274 = select i1 %3273, float %3210, float 0.000000e+00
  %3275 = fsub fast float -0.000000e+00, %3274
  %3276 = call float @dx.op.unary.f32(i32 6, float %3275)  ; FAbs(value)
  %3277 = fmul fast float %3274, %3130
  %3278 = fadd fast float %3277, %3143
  %3279 = fmul fast float %3276, %3278
  %3280 = fsub fast float %3205, %3279
  br label %3281

; <label>:3281                                    ; preds = %3271, %3270, %3260, %3259
  %3282 = phi float [ %3200, %3259 ], [ %3200, %3260 ], [ %3272, %3271 ], [ %3200, %3270 ]
  %3283 = phi float [ 0.000000e+00, %3259 ], [ %3264, %3260 ], [ %3276, %3271 ], [ 0.000000e+00, %3270 ]
  %3284 = phi float [ %3205, %3259 ], [ %3269, %3260 ], [ %3280, %3271 ], [ %3205, %3270 ]
  %3285 = phi float [ %3210, %3259 ], [ %3210, %3260 ], [ %3199, %3271 ], [ %3199, %3270 ]
  %3286 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 0
  store float -1.000000e+00, float* %3286, align 4, !tbaa !107, !noalias !111
  %3287 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 1
  store float -1.000000e+00, float* %3287, align 4, !tbaa !107, !noalias !111
  %3288 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 2
  store float -1.000000e+00, float* %3288, align 4, !tbaa !107, !noalias !111
  %3289 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 0
  store float -1.000000e+00, float* %3289, align 4, !tbaa !107, !noalias !111
  %3290 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 1
  store float -1.000000e+00, float* %3290, align 4, !tbaa !107, !noalias !111
  %3291 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 2
  store float -1.000000e+00, float* %3291, align 4, !tbaa !107, !noalias !111
  %3292 = icmp sgt i32 %3151, 0
  br i1 %3292, label %3293, label %3354

; <label>:3293                                    ; preds = %3281
  br label %3294

; <label>:3294                                    ; preds = %3343, %3293
  %3295 = phi i32 [ %3344, %3343 ], [ 0, %3293 ]
  %3296 = phi i32 [ %3345, %3343 ], [ 0, %3293 ]
  %3297 = add nuw i32 %3296, 171
  %3298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 %3297)  ; CBufferLoadLegacy(handle,regIndex)
  %3299 = extractvalue %dx.types.CBufRet.f32 %3298, 0
  %3300 = extractvalue %dx.types.CBufRet.f32 %3298, 1
  %3301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3302 = extractvalue %dx.types.CBufRet.f32 %3301, 0
  %3303 = extractvalue %dx.types.CBufRet.f32 %3301, 1
  %3304 = fsub fast float %3299, %3302
  %3305 = fsub fast float %3300, %3303
  %3306 = extractvalue %dx.types.CBufRet.f32 %3298, 2
  %3307 = fsub fast float -0.000000e+00, %3304
  %3308 = fsub fast float -0.000000e+00, %3305
  %3309 = call float @dx.op.dot2.f32(i32 54, float %3128, float %3129, float %3307, float %3308)  ; Dot2(ax,ay,bx,by)
  %3310 = fmul fast float %3309, 2.000000e+00
  %3311 = call float @dx.op.dot2.f32(i32 54, float %3307, float %3308, float %3307, float %3308)  ; Dot2(ax,ay,bx,by)
  %3312 = fmul fast float %3306, %3306
  %3313 = fsub fast float %3311, %3312
  %3314 = fmul fast float %3310, %3310
  %3315 = fmul fast float %3171, %3313
  %3316 = fsub fast float %3314, %3315
  %3317 = fcmp fast ogt float %3316, 0.000000e+00
  br i1 %3317, label %3318, label %3333, !dx.controlflow.hints !99

; <label>:3318                                    ; preds = %3294
  %3319 = fcmp fast ogt float %3310, 0.000000e+00
  %3320 = call float @dx.op.unary.f32(i32 24, float %3316)  ; Sqrt(value)
  %3321 = fsub fast float -0.000000e+00, %3320
  %3322 = select i1 %3319, float %3320, float %3321
  %3323 = fadd fast float %3322, %3310
  %3324 = fmul float %3323, -5.000000e-01
  %3325 = fdiv fast float %3324, %3164
  %3326 = call float @dx.op.binary.f32(i32 35, float %3325, float 0.000000e+00)  ; FMax(a,b)
  %3327 = call float @dx.op.binary.f32(i32 36, float %3199, float %3326)  ; FMin(a,b)
  %3328 = fdiv fast float %3313, %3324
  %3329 = call float @dx.op.binary.f32(i32 35, float %3328, float 0.000000e+00)  ; FMax(a,b)
  %3330 = call float @dx.op.binary.f32(i32 36, float %3199, float %3329)  ; FMin(a,b)
  %3331 = call float @dx.op.binary.f32(i32 36, float %3327, float %3330)  ; FMin(a,b)
  %3332 = call float @dx.op.binary.f32(i32 35, float %3327, float %3330)  ; FMax(a,b)
  br label %3333

; <label>:3333                                    ; preds = %3318, %3294
  %3334 = phi float [ %3332, %3318 ], [ -1.000000e+00, %3294 ]
  %3335 = phi float [ %3331, %3318 ], [ -1.000000e+00, %3294 ]
  %3336 = phi i1 [ true, %3318 ], [ false, %3294 ]
  br i1 %3336, label %3337, label %3343, !dx.controlflow.hints !122

; <label>:3337                                    ; preds = %3333
  %3338 = call float @dx.op.binary.f32(i32 35, float %3282, float %3335)  ; FMax(a,b)
  %3339 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 %3296
  store float %3338, float* %3339, align 4, !tbaa !107, !noalias !111
  %3340 = call float @dx.op.binary.f32(i32 35, float %3282, float %3334)  ; FMax(a,b)
  %3341 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 %3296
  store float %3340, float* %3341, align 4, !tbaa !107, !noalias !111
  %3342 = add nsw i32 %3295, 1
  br label %3343

; <label>:3343                                    ; preds = %3337, %3333
  %3344 = phi i32 [ %3342, %3337 ], [ %3295, %3333 ]
  %3345 = add nuw nsw i32 %3296, 1
  %3346 = icmp eq i32 %3345, %3151
  br i1 %3346, label %3347, label %3294

; <label>:3347                                    ; preds = %3343
  %3348 = load float, float* %3288, align 4, !tbaa !107, !alias.scope !123, !noalias !126
  %3349 = load float, float* %3287, align 4, !tbaa !107, !alias.scope !129, !noalias !130
  %3350 = load float, float* %3286, align 4, !tbaa !107, !alias.scope !131, !noalias !132
  %3351 = load float, float* %3291, align 4, !tbaa !107, !alias.scope !133, !noalias !136
  %3352 = load float, float* %3290, align 4, !tbaa !107, !alias.scope !139, !noalias !140
  %3353 = load float, float* %3289, align 4, !tbaa !107, !alias.scope !141, !noalias !142
  br label %3354

; <label>:3354                                    ; preds = %3347, %3281
  %3355 = phi float [ -1.000000e+00, %3281 ], [ %3353, %3347 ]
  %3356 = phi float [ -1.000000e+00, %3281 ], [ %3352, %3347 ]
  %3357 = phi float [ -1.000000e+00, %3281 ], [ %3351, %3347 ]
  %3358 = phi float [ -1.000000e+00, %3281 ], [ %3350, %3347 ]
  %3359 = phi float [ -1.000000e+00, %3281 ], [ %3349, %3347 ]
  %3360 = phi float [ -1.000000e+00, %3281 ], [ %3348, %3347 ]
  %3361 = phi i32 [ 0, %3281 ], [ %3344, %3347 ]
  %3362 = call float @dx.op.binary.f32(i32 36, float %3359, float %3360)  ; FMin(a,b)
  %3363 = call float @dx.op.binary.f32(i32 36, float %3358, float %3362)  ; FMin(a,b)
  %3364 = call float @dx.op.binary.f32(i32 35, float %3358, float %3359)  ; FMax(a,b)
  %3365 = call float @dx.op.binary.f32(i32 36, float %3364, float %3360)  ; FMin(a,b)
  %3366 = call float @dx.op.binary.f32(i32 36, float %3358, float %3359)  ; FMin(a,b)
  %3367 = call float @dx.op.binary.f32(i32 35, float %3366, float %3365)  ; FMax(a,b)
  %3368 = call float @dx.op.binary.f32(i32 35, float %3359, float %3360)  ; FMax(a,b)
  %3369 = call float @dx.op.binary.f32(i32 35, float %3358, float %3368)  ; FMax(a,b)
  store float %3363, float* %3286, align 4, !tbaa !107, !alias.scope !131, !noalias !132
  store float %3367, float* %3287, align 4, !tbaa !107, !alias.scope !129, !noalias !130
  store float %3369, float* %3288, align 4, !tbaa !107, !alias.scope !123, !noalias !126
  %3370 = call float @dx.op.binary.f32(i32 36, float %3356, float %3357)  ; FMin(a,b)
  %3371 = call float @dx.op.binary.f32(i32 36, float %3355, float %3370)  ; FMin(a,b)
  %3372 = call float @dx.op.binary.f32(i32 35, float %3355, float %3356)  ; FMax(a,b)
  %3373 = call float @dx.op.binary.f32(i32 36, float %3372, float %3357)  ; FMin(a,b)
  %3374 = call float @dx.op.binary.f32(i32 36, float %3355, float %3356)  ; FMin(a,b)
  %3375 = call float @dx.op.binary.f32(i32 35, float %3374, float %3373)  ; FMax(a,b)
  %3376 = call float @dx.op.binary.f32(i32 35, float %3356, float %3357)  ; FMax(a,b)
  %3377 = call float @dx.op.binary.f32(i32 35, float %3355, float %3376)  ; FMax(a,b)
  store float %3371, float* %3289, align 4, !tbaa !107, !alias.scope !141, !noalias !142
  store float %3375, float* %3290, align 4, !tbaa !107, !alias.scope !139, !noalias !140
  store float %3377, float* %3291, align 4, !tbaa !107, !alias.scope !133, !noalias !136
  %3378 = sub nsw i32 3, %3361
  %3379 = icmp sgt i32 %3378, 2
  br i1 %3379, label %3380, label %3418, !dx.controlflow.hints !143

; <label>:3380                                    ; preds = %3354
  %3381 = icmp eq i32 %3149, 0
  %3382 = fsub fast float %3199, %3283
  %3383 = select i1 %3381, float %3382, float %3283
  %3384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3385 = extractvalue %dx.types.CBufRet.f32 %3384, 0
  %3386 = extractvalue %dx.types.CBufRet.f32 %3384, 1
  %3387 = extractvalue %dx.types.CBufRet.f32 %3384, 2
  %3388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3389 = extractvalue %dx.types.CBufRet.f32 %3388, 0
  %3390 = extractvalue %dx.types.CBufRet.f32 %3388, 1
  %3391 = extractvalue %dx.types.CBufRet.f32 %3388, 2
  %3392 = extractvalue %dx.types.CBufRet.f32 %3388, 3
  %3393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3394 = extractvalue %dx.types.CBufRet.f32 %3393, 3
  %3395 = call float @dx.op.binary.f32(i32 36, float %3284, float %3394)  ; FMin(a,b)
  %3396 = fmul fast float %3392, %3383
  %3397 = call float @dx.op.unary.f32(i32 7, float %3396)  ; Saturate(value)
  %3398 = fsub fast float %3389, %3385
  %3399 = fsub fast float %3390, %3386
  %3400 = fsub fast float %3391, %3387
  %3401 = fmul fast float %3397, %3398
  %3402 = fmul fast float %3397, %3399
  %3403 = fmul fast float %3397, %3400
  %3404 = fadd fast float %3401, %3385
  %3405 = fadd fast float %3402, %3386
  %3406 = fadd fast float %3403, %3387
  %3407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3408 = extractvalue %dx.types.CBufRet.f32 %3407, 0
  %3409 = extractvalue %dx.types.CBufRet.f32 %3407, 1
  %3410 = fadd fast float %3409, %3408
  %3411 = call float @dx.op.unary.f32(i32 7, float %3410)  ; Saturate(value)
  %3412 = extractvalue %dx.types.CBufRet.f32 %3407, 2
  %3413 = extractvalue %dx.types.CBufRet.f32 %3407, 3
  %3414 = fadd fast float %3413, %3412
  %3415 = call float @dx.op.unary.f32(i32 7, float %3414)  ; Saturate(value)
  %3416 = fmul fast float %3411, %3395
  %3417 = fmul fast float %3416, %3415
  br label %3500

; <label>:3418                                    ; preds = %3354
  %3419 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 %3378
  %3420 = load float, float* %3419, align 4, !tbaa !107, !noalias !111
  %3421 = fcmp fast olt float %3420, %3285
  %3422 = icmp sgt i32 %3361, 0
  %3423 = and i1 %3422, %3421
  br i1 %3423, label %3424, label %3461

; <label>:3424                                    ; preds = %3418
  br label %3425

; <label>:3425                                    ; preds = %3454, %3424
  %3426 = phi float [ %3455, %3454 ], [ %3283, %3424 ]
  %3427 = phi float [ %3456, %3454 ], [ %3284, %3424 ]
  %3428 = phi float [ %3436, %3454 ], [ %3420, %3424 ]
  %3429 = phi i32 [ %3433, %3454 ], [ %3378, %3424 ]
  %3430 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 %3429
  %3431 = load float, float* %3430, align 4, !tbaa !107, !noalias !111
  %3432 = icmp slt i32 %3429, 2
  %3433 = add nsw i32 %3429, 1
  %3434 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 %3433
  %3435 = load float, float* %3434, align 4, !tbaa !107, !noalias !111
  %3436 = select i1 %3432, float %3435, float %3199
  %3437 = call float @dx.op.binary.f32(i32 36, float %3436, float %3431)  ; FMin(a,b)
  %3438 = call float @dx.op.binary.f32(i32 36, float %3285, float %3437)  ; FMin(a,b)
  %3439 = icmp eq i32 %3149, 0
  %3440 = fadd fast float %3438, %3428
  %3441 = fmul fast float %3440, %3130
  %3442 = fadd fast float %3441, %3143
  br i1 %3439, label %3448, label %3443, !dx.controlflow.hints !144

; <label>:3443                                    ; preds = %3425
  %3444 = fsub fast float %3438, %3428
  %3445 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3444)  ; FMax(a,b)
  %3446 = fmul fast float %3445, %3442
  %3447 = fadd fast float %3446, %3427
  br label %3454

; <label>:3448                                    ; preds = %3425
  %3449 = fsub fast float %3428, %3438
  %3450 = call float @dx.op.unary.f32(i32 6, float %3449)  ; FAbs(value)
  %3451 = fadd fast float %3450, %3426
  %3452 = fmul fast float %3450, %3442
  %3453 = fsub fast float %3427, %3452
  br label %3454

; <label>:3454                                    ; preds = %3448, %3443
  %3455 = phi float [ %3445, %3443 ], [ %3451, %3448 ]
  %3456 = phi float [ %3447, %3443 ], [ %3453, %3448 ]
  %3457 = fcmp fast olt float %3436, %3285
  %3458 = icmp slt i32 %3433, 3
  %3459 = and i1 %3458, %3457
  br i1 %3459, label %3425, label %3460

; <label>:3460                                    ; preds = %3454
  br label %3461

; <label>:3461                                    ; preds = %3460, %3418
  %3462 = phi float [ %3283, %3418 ], [ %3455, %3460 ]
  %3463 = phi float [ %3284, %3418 ], [ %3456, %3460 ]
  %3464 = fsub fast float %3199, %3462
  %3465 = select i1 %3201, float %3462, float %3464
  %3466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3467 = extractvalue %dx.types.CBufRet.f32 %3466, 0
  %3468 = extractvalue %dx.types.CBufRet.f32 %3466, 1
  %3469 = extractvalue %dx.types.CBufRet.f32 %3466, 2
  %3470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3471 = extractvalue %dx.types.CBufRet.f32 %3470, 0
  %3472 = extractvalue %dx.types.CBufRet.f32 %3470, 1
  %3473 = extractvalue %dx.types.CBufRet.f32 %3470, 2
  %3474 = extractvalue %dx.types.CBufRet.f32 %3470, 3
  %3475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3476 = extractvalue %dx.types.CBufRet.f32 %3475, 3
  %3477 = call float @dx.op.binary.f32(i32 36, float %3463, float %3476)  ; FMin(a,b)
  %3478 = fmul fast float %3474, %3465
  %3479 = call float @dx.op.unary.f32(i32 7, float %3478)  ; Saturate(value)
  %3480 = fsub fast float %3471, %3467
  %3481 = fsub fast float %3472, %3468
  %3482 = fsub fast float %3473, %3469
  %3483 = fmul fast float %3479, %3480
  %3484 = fmul fast float %3479, %3481
  %3485 = fmul fast float %3479, %3482
  %3486 = fadd fast float %3483, %3467
  %3487 = fadd fast float %3484, %3468
  %3488 = fadd fast float %3485, %3469
  %3489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3490 = extractvalue %dx.types.CBufRet.f32 %3489, 0
  %3491 = extractvalue %dx.types.CBufRet.f32 %3489, 1
  %3492 = fadd fast float %3491, %3490
  %3493 = call float @dx.op.unary.f32(i32 7, float %3492)  ; Saturate(value)
  %3494 = extractvalue %dx.types.CBufRet.f32 %3489, 2
  %3495 = extractvalue %dx.types.CBufRet.f32 %3489, 3
  %3496 = fadd fast float %3495, %3494
  %3497 = call float @dx.op.unary.f32(i32 7, float %3496)  ; Saturate(value)
  %3498 = fmul fast float %3493, %3477
  %3499 = fmul fast float %3498, %3497
  br label %3500

; <label>:3500                                    ; preds = %3461, %3380, %3215, %3197, %3195
  %3501 = phi float [ %3224, %3215 ], [ %3383, %3380 ], [ %3465, %3461 ], [ 0.000000e+00, %3195 ], [ 0.000000e+00, %3197 ]
  %3502 = phi float [ %3258, %3215 ], [ %3417, %3380 ], [ %3499, %3461 ], [ 0.000000e+00, %3195 ], [ 0.000000e+00, %3197 ]
  %3503 = phi float [ %3245, %3215 ], [ %3404, %3380 ], [ %3486, %3461 ], [ 0.000000e+00, %3195 ], [ 0.000000e+00, %3197 ]
  %3504 = phi float [ %3246, %3215 ], [ %3405, %3380 ], [ %3487, %3461 ], [ 0.000000e+00, %3195 ], [ 0.000000e+00, %3197 ]
  %3505 = phi float [ %3247, %3215 ], [ %3406, %3380 ], [ %3488, %3461 ], [ 0.000000e+00, %3195 ], [ 0.000000e+00, %3197 ]
  %3506 = fmul fast float %3138, %3502
  %3507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3508 = extractvalue %dx.types.CBufRet.f32 %3507, 2
  %3509 = fsub fast float %3145, %3508
  %3510 = fcmp fast olt float %3506, -2.000000e+01
  %3511 = call float @dx.op.unary.f32(i32 21, float %3506)  ; Exp(value)
  %3512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3513 = extractvalue %dx.types.CBufRet.f32 %3512, 2
  %3514 = extractvalue %dx.types.CBufRet.f32 %3512, 3
  %3515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %3516 = extractvalue %dx.types.CBufRet.f32 %3515, 2
  %3517 = fmul fast float %3514, %3509
  %3518 = call float @dx.op.unary.f32(i32 7, float %3517)  ; Saturate(value)
  %3519 = fsub fast float 1.000000e+00, %3518
  %3520 = fmul fast float %3130, 5.000000e-01
  %3521 = fadd fast float %3520, 5.000000e-01
  %3522 = call float @dx.op.unary.f32(i32 7, float %3521)  ; Saturate(value)
  %3523 = fsub fast float 1.000000e+00, %3522
  %3524 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3519)  ; FMax(a,b)
  %3525 = fdiv fast float %3523, %3524
  %3526 = fsub fast float %3509, %3096
  %3527 = call float @dx.op.unary.f32(i32 6, float %3526)  ; FAbs(value)
  %3528 = fmul fast float %3527, %3513
  %3529 = call float @dx.op.unary.f32(i32 7, float %3525)  ; Saturate(value)
  %3530 = fsub fast float 1.000000e+00, %3528
  %3531 = fmul fast float %3530, %3529
  %3532 = fadd fast float %3531, %3528
  %3533 = fmul fast float %3516, %3509
  %3534 = call float @dx.op.unary.f32(i32 7, float %3533)  ; Saturate(value)
  %3535 = fsub fast float 1.000000e+00, %3532
  %3536 = fmul fast float %3535, %3534
  %3537 = fadd fast float %3536, %3532
  %3538 = call float @dx.op.unary.f32(i32 7, float %3537)  ; Saturate(value)
  %3539 = fadd fast float %3511, -1.000000e+00
  %3540 = select i1 %3510, float -1.000000e+00, float %3539
  %3541 = fmul fast float %3538, %3540
  %3542 = fadd fast float %3541, 1.000000e+00
  %3543 = fsub fast float -0.000000e+00, %3541
  %3544 = fmul fast float %3503, %3543
  %3545 = fmul fast float %3504, %3543
  %3546 = fmul fast float %3505, %3543
  br label %3547

; <label>:3547                                    ; preds = %3500, %3049
  %3548 = phi float [ %3501, %3500 ], [ 0.000000e+00, %3049 ]
  %3549 = phi float [ %3542, %3500 ], [ 1.000000e+00, %3049 ]
  %3550 = phi float [ %3544, %3500 ], [ 0.000000e+00, %3049 ]
  %3551 = phi float [ %3545, %3500 ], [ 0.000000e+00, %3049 ]
  %3552 = phi float [ %3546, %3500 ], [ 0.000000e+00, %3049 ]
  %3553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3554 = extractvalue %dx.types.CBufRet.f32 %3553, 1
  %3555 = fsub fast float 1.000000e+00, %3549
  %3556 = fmul fast float %3555, %3131
  %3557 = fmul fast float %3556, %3554
  %3558 = fsub fast float %3131, %3557
  br i1 %3124, label %3559, label %3588, !dx.controlflow.hints !145

; <label>:3559                                    ; preds = %3547
  %3560 = fmul fast float %3132, %3121
  %3561 = fadd fast float %3560, %3122
  %3562 = call float @dx.op.unary.f32(i32 7, float %3561)  ; Saturate(value)
  %3563 = fmul fast float %3103, %3558
  %3564 = fsub fast float -0.000000e+00, %3563
  %3565 = fmul fast float %3104, %3558
  %3566 = fsub fast float -0.000000e+00, %3565
  %3567 = call float @dx.op.unary.f32(i32 21, float %3564)  ; Exp(value)
  %3568 = call float @dx.op.unary.f32(i32 21, float %3566)  ; Exp(value)
  %3569 = call float @dx.op.binary.f32(i32 35, float %3111, float %3567)  ; FMax(a,b)
  %3570 = call float @dx.op.binary.f32(i32 35, float %3111, float %3568)  ; FMax(a,b)
  %3571 = fsub fast float %3570, %3569
  %3572 = fmul fast float %3571, %3562
  %3573 = fadd fast float %3572, %3569
  %3574 = call float @dx.op.unary.f32(i32 7, float %3573)  ; Saturate(value)
  %3575 = fsub fast float %3108, %3113
  %3576 = fsub fast float %3109, %3114
  %3577 = fsub fast float %3110, %3115
  %3578 = fmul fast float %3562, %3575
  %3579 = fmul fast float %3562, %3576
  %3580 = fmul fast float %3562, %3577
  %3581 = fadd fast float %3578, %3113
  %3582 = fadd fast float %3579, %3114
  %3583 = fadd fast float %3580, %3115
  %3584 = fsub fast float 1.000000e+00, %3574
  %3585 = fmul fast float %3584, %3581
  %3586 = fmul fast float %3584, %3582
  %3587 = fmul fast float %3584, %3583
  br label %3647

; <label>:3588                                    ; preds = %3547
  %3589 = fmul fast float %3558, %3120
  %3590 = call float @dx.op.unary.f32(i32 7, float %3589)  ; Saturate(value)
  %3591 = fsub fast float 2.000000e+00, %3590
  %3592 = fmul fast float %3590, 9.921875e-01
  %3593 = fmul fast float %3592, %3591
  %3594 = fadd fast float %3593, 3.906250e-03
  %3595 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %3594, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3596 = extractvalue %dx.types.ResRet.f32 %3595, 0
  %3597 = fsub fast float %3590, %3596
  %3598 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3597)  ; FMax(a,b)
  %3599 = fmul fast float %3106, %3096
  %3600 = call float @dx.op.unary.f32(i32 6, float %3599)  ; FAbs(value)
  %3601 = fcmp fast ogt float %3600, 0x3EB0C6F7A0000000
  br i1 %3601, label %3602, label %3608, !dx.controlflow.hints !146

; <label>:3602                                    ; preds = %3588
  %3603 = fmul fast float %3599, 0xBFF7154760000000
  %3604 = call float @dx.op.unary.f32(i32 21, float %3603)  ; Exp(value)
  %3605 = fsub fast float 1.000000e+00, %3604
  %3606 = fdiv fast float %3605, %3599
  %3607 = fmul fast float %3606, %3116
  br label %3608

; <label>:3608                                    ; preds = %3602, %3588
  %3609 = phi float [ %3607, %3602 ], [ %3116, %3588 ]
  %3610 = fadd fast float %3609, %3118
  %3611 = fmul fast float %3610, %3598
  %3612 = fmul fast float %3103, %3611
  %3613 = fsub fast float -0.000000e+00, %3612
  %3614 = fmul fast float %3104, %3611
  %3615 = fsub fast float -0.000000e+00, %3614
  %3616 = fmul fast float %3105, %3611
  %3617 = fsub fast float -0.000000e+00, %3616
  %3618 = call float @dx.op.unary.f32(i32 21, float %3613)  ; Exp(value)
  %3619 = call float @dx.op.unary.f32(i32 21, float %3615)  ; Exp(value)
  %3620 = call float @dx.op.unary.f32(i32 21, float %3617)  ; Exp(value)
  %3621 = fmul fast float %3132, %3132
  %3622 = fadd fast float %3621, 1.000000e+00
  %3623 = fmul fast float %3622, 0x3FAE8EC8A0000000
  %3624 = fmul fast float %3623, %3113
  %3625 = fmul fast float %3623, %3114
  %3626 = fmul fast float %3623, %3115
  %3627 = fmul fast float %3132, %3111
  %3628 = fsub fast float 1.000000e+00, %3627
  %3629 = fmul fast float %3111, %3111
  %3630 = fsub fast float 1.000000e+00, %3629
  %3631 = fmul fast float %3630, 0x3FB45F3060000000
  %3632 = fmul fast float %3628, %3628
  %3633 = fdiv fast float 1.000000e+00, %3632
  %3634 = fmul fast float %3631, %3633
  %3635 = fmul fast float %3634, %3108
  %3636 = fmul fast float %3634, %3109
  %3637 = fmul fast float %3634, %3110
  %3638 = fadd fast float %3635, %3624
  %3639 = fadd fast float %3636, %3625
  %3640 = fadd fast float %3637, %3626
  %3641 = fsub fast float 1.000000e+00, %3618
  %3642 = fsub fast float 1.000000e+00, %3619
  %3643 = fsub fast float 1.000000e+00, %3620
  %3644 = fmul fast float %3638, %3641
  %3645 = fmul fast float %3639, %3642
  %3646 = fmul fast float %3640, %3643
  br label %3647

; <label>:3647                                    ; preds = %3608, %3559
  %3648 = phi float [ %3585, %3559 ], [ %3644, %3608 ]
  %3649 = phi float [ %3586, %3559 ], [ %3645, %3608 ]
  %3650 = phi float [ %3587, %3559 ], [ %3646, %3608 ]
  %3651 = phi float [ %3574, %3559 ], [ %3618, %3608 ]
  %3652 = phi float [ %3574, %3559 ], [ %3619, %3608 ]
  %3653 = phi float [ %3574, %3559 ], [ %3620, %3608 ]
  br i1 %3140, label %3654, label %3852, !dx.controlflow.hints !147

; <label>:3654                                    ; preds = %3647
  %3655 = extractvalue %dx.types.CBufRet.f32 %3553, 0
  %3656 = fmul fast float %3655, %3555
  %3657 = fsub fast float %3550, %3648
  %3658 = fsub fast float %3551, %3649
  %3659 = fsub fast float %3552, %3650
  %3660 = fmul fast float %3656, %3657
  %3661 = fmul fast float %3656, %3658
  %3662 = fmul fast float %3656, %3659
  %3663 = fadd fast float %3660, %3648
  %3664 = fadd fast float %3661, %3649
  %3665 = fadd fast float %3662, %3650
  %3666 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3651)  ; FMax(a,b)
  %3667 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3652)  ; FMax(a,b)
  %3668 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3653)  ; FMax(a,b)
  %3669 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3549)  ; FMax(a,b)
  %3670 = call float @dx.op.binary.f32(i32 35, float %3548, float %3558)  ; FMax(a,b)
  %3671 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3670)  ; FMax(a,b)
  %3672 = fdiv fast float %3548, %3671
  %3673 = call float @dx.op.unary.f32(i32 7, float %3672)  ; Saturate(value)
  %3674 = fdiv fast float %3558, %3671
  %3675 = call float @dx.op.unary.f32(i32 7, float %3674)  ; Saturate(value)
  %3676 = fcmp fast une float %3669, 1.000000e+00
  br i1 %3676, label %3677, label %3690, !dx.controlflow.hints !148

; <label>:3677                                    ; preds = %3654
  %3678 = call float @dx.op.unary.f32(i32 23, float %3669)  ; Log(value)
  %3679 = fmul fast float %3678, 0x3FE62E4300000000
  %3680 = fmul fast float %3550, %3679
  %3681 = fsub fast float -0.000000e+00, %3680
  %3682 = fmul fast float %3551, %3679
  %3683 = fsub fast float -0.000000e+00, %3682
  %3684 = fmul fast float %3552, %3679
  %3685 = fsub fast float -0.000000e+00, %3684
  %3686 = fsub fast float 1.000000e+00, %3669
  %3687 = fdiv fast float %3681, %3686
  %3688 = fdiv fast float %3683, %3686
  %3689 = fdiv fast float %3685, %3686
  br label %3690

; <label>:3690                                    ; preds = %3677, %3654
  %3691 = phi float [ %3687, %3677 ], [ %3550, %3654 ]
  %3692 = phi float [ %3688, %3677 ], [ %3551, %3654 ]
  %3693 = phi float [ %3689, %3677 ], [ %3552, %3654 ]
  %3694 = phi float [ %3679, %3677 ], [ 0.000000e+00, %3654 ]
  %3695 = fcmp fast une float %3666, 1.000000e+00
  br i1 %3695, label %3696, label %3703, !dx.controlflow.hints !149

; <label>:3696                                    ; preds = %3690
  %3697 = call float @dx.op.unary.f32(i32 23, float %3666)  ; Log(value)
  %3698 = fmul fast float %3697, 0x3FE62E4300000000
  %3699 = fmul fast float %3663, %3698
  %3700 = fsub fast float -0.000000e+00, %3699
  %3701 = fsub fast float 1.000000e+00, %3666
  %3702 = fdiv fast float %3700, %3701
  br label %3703

; <label>:3703                                    ; preds = %3696, %3690
  %3704 = phi float [ %3702, %3696 ], [ %3663, %3690 ]
  %3705 = phi float [ %3698, %3696 ], [ 0.000000e+00, %3690 ]
  %3706 = fcmp fast une float %3667, 1.000000e+00
  br i1 %3706, label %3707, label %3714, !dx.controlflow.hints !149

; <label>:3707                                    ; preds = %3703
  %3708 = call float @dx.op.unary.f32(i32 23, float %3667)  ; Log(value)
  %3709 = fmul fast float %3708, 0x3FE62E4300000000
  %3710 = fmul fast float %3664, %3709
  %3711 = fsub fast float -0.000000e+00, %3710
  %3712 = fsub fast float 1.000000e+00, %3667
  %3713 = fdiv fast float %3711, %3712
  br label %3714

; <label>:3714                                    ; preds = %3707, %3703
  %3715 = phi float [ %3713, %3707 ], [ %3664, %3703 ]
  %3716 = phi float [ %3709, %3707 ], [ 0.000000e+00, %3703 ]
  %3717 = fcmp fast une float %3668, 1.000000e+00
  br i1 %3717, label %3718, label %3725, !dx.controlflow.hints !149

; <label>:3718                                    ; preds = %3714
  %3719 = call float @dx.op.unary.f32(i32 23, float %3668)  ; Log(value)
  %3720 = fmul fast float %3719, 0x3FE62E4300000000
  %3721 = fmul fast float %3665, %3720
  %3722 = fsub fast float -0.000000e+00, %3721
  %3723 = fsub fast float 1.000000e+00, %3668
  %3724 = fdiv fast float %3722, %3723
  br label %3725

; <label>:3725                                    ; preds = %3718, %3714
  %3726 = phi float [ %3724, %3718 ], [ %3665, %3714 ]
  %3727 = phi float [ %3720, %3718 ], [ 0.000000e+00, %3714 ]
  %3728 = fmul fast float %3691, %3675
  %3729 = fmul fast float %3692, %3675
  %3730 = fmul fast float %3693, %3675
  %3731 = fmul fast float %3694, %3675
  %3732 = fmul fast float %3704, %3673
  %3733 = fmul fast float %3715, %3673
  %3734 = fmul fast float %3726, %3673
  %3735 = fmul fast float %3705, %3673
  %3736 = fmul fast float %3716, %3673
  %3737 = fmul fast float %3727, %3673
  %3738 = fadd fast float %3732, %3728
  %3739 = fadd fast float %3733, %3729
  %3740 = fadd fast float %3734, %3730
  %3741 = fadd fast float %3735, %3731
  %3742 = fadd fast float %3736, %3731
  %3743 = fadd fast float %3737, %3731
  %3744 = fcmp fast une float %3741, 0.000000e+00
  br i1 %3744, label %3745, label %3752, !dx.controlflow.hints !150

; <label>:3745                                    ; preds = %3725
  %3746 = fmul fast float %3741, 0x3FF7154760000000
  %3747 = call float @dx.op.unary.f32(i32 21, float %3746)  ; Exp(value)
  %3748 = fsub fast float 1.000000e+00, %3747
  %3749 = fmul fast float %3738, %3748
  %3750 = fsub fast float -0.000000e+00, %3749
  %3751 = fdiv fast float %3750, %3741
  br label %3752

; <label>:3752                                    ; preds = %3745, %3725
  %3753 = phi float [ %3747, %3745 ], [ 1.000000e+00, %3725 ]
  %3754 = phi float [ %3751, %3745 ], [ %3738, %3725 ]
  %3755 = fcmp fast une float %3742, 0.000000e+00
  br i1 %3755, label %3756, label %3763, !dx.controlflow.hints !150

; <label>:3756                                    ; preds = %3752
  %3757 = fmul fast float %3742, 0x3FF7154760000000
  %3758 = call float @dx.op.unary.f32(i32 21, float %3757)  ; Exp(value)
  %3759 = fsub fast float 1.000000e+00, %3758
  %3760 = fmul fast float %3739, %3759
  %3761 = fsub fast float -0.000000e+00, %3760
  %3762 = fdiv fast float %3761, %3742
  br label %3763

; <label>:3763                                    ; preds = %3756, %3752
  %3764 = phi float [ %3758, %3756 ], [ 1.000000e+00, %3752 ]
  %3765 = phi float [ %3762, %3756 ], [ %3739, %3752 ]
  %3766 = fcmp fast une float %3743, 0.000000e+00
  br i1 %3766, label %3767, label %3774, !dx.controlflow.hints !150

; <label>:3767                                    ; preds = %3763
  %3768 = fmul fast float %3743, 0x3FF7154760000000
  %3769 = call float @dx.op.unary.f32(i32 21, float %3768)  ; Exp(value)
  %3770 = fsub fast float 1.000000e+00, %3769
  %3771 = fmul fast float %3740, %3770
  %3772 = fsub fast float -0.000000e+00, %3771
  %3773 = fdiv fast float %3772, %3743
  br label %3774

; <label>:3774                                    ; preds = %3767, %3763
  %3775 = phi float [ %3769, %3767 ], [ 1.000000e+00, %3763 ]
  %3776 = phi float [ %3773, %3767 ], [ %3740, %3763 ]
  %3777 = fcmp fast ogt float %3673, %3675
  br i1 %3777, label %3778, label %3798, !dx.controlflow.hints !151

; <label>:3778                                    ; preds = %3774
  %3779 = fsub fast float 1.000000e+00, %3675
  %3780 = fmul fast float %3691, %3779
  %3781 = fmul fast float %3692, %3779
  %3782 = fmul fast float %3693, %3779
  %3783 = fmul fast float %3694, %3779
  %3784 = fcmp fast une float %3783, 0.000000e+00
  br i1 %3784, label %3785, label %3836, !dx.controlflow.hints !152

; <label>:3785                                    ; preds = %3778
  %3786 = fmul fast float %3783, 0x3FF7154760000000
  %3787 = call float @dx.op.unary.f32(i32 21, float %3786)  ; Exp(value)
  %3788 = fsub fast float 1.000000e+00, %3787
  %3789 = fmul fast float %3780, %3788
  %3790 = fsub fast float -0.000000e+00, %3789
  %3791 = fmul fast float %3781, %3788
  %3792 = fsub fast float -0.000000e+00, %3791
  %3793 = fmul fast float %3782, %3788
  %3794 = fsub fast float -0.000000e+00, %3793
  %3795 = fdiv fast float %3790, %3783
  %3796 = fdiv fast float %3792, %3783
  %3797 = fdiv fast float %3794, %3783
  br label %3836

; <label>:3798                                    ; preds = %3774
  %3799 = fsub fast float 1.000000e+00, %3673
  %3800 = fmul fast float %3704, %3799
  %3801 = fmul fast float %3715, %3799
  %3802 = fmul fast float %3726, %3799
  %3803 = fmul fast float %3705, %3799
  %3804 = fmul fast float %3716, %3799
  %3805 = fmul fast float %3727, %3799
  %3806 = fcmp fast une float %3803, 0.000000e+00
  br i1 %3806, label %3807, label %3814, !dx.controlflow.hints !150

; <label>:3807                                    ; preds = %3798
  %3808 = fmul fast float %3803, 0x3FF7154760000000
  %3809 = call float @dx.op.unary.f32(i32 21, float %3808)  ; Exp(value)
  %3810 = fsub fast float 1.000000e+00, %3809
  %3811 = fmul fast float %3800, %3810
  %3812 = fsub fast float -0.000000e+00, %3811
  %3813 = fdiv fast float %3812, %3803
  br label %3814

; <label>:3814                                    ; preds = %3807, %3798
  %3815 = phi float [ %3813, %3807 ], [ %3800, %3798 ]
  %3816 = phi float [ %3809, %3807 ], [ 1.000000e+00, %3798 ]
  %3817 = fcmp fast une float %3804, 0.000000e+00
  br i1 %3817, label %3818, label %3825, !dx.controlflow.hints !150

; <label>:3818                                    ; preds = %3814
  %3819 = fmul fast float %3804, 0x3FF7154760000000
  %3820 = call float @dx.op.unary.f32(i32 21, float %3819)  ; Exp(value)
  %3821 = fsub fast float 1.000000e+00, %3820
  %3822 = fmul fast float %3801, %3821
  %3823 = fsub fast float -0.000000e+00, %3822
  %3824 = fdiv fast float %3823, %3804
  br label %3825

; <label>:3825                                    ; preds = %3818, %3814
  %3826 = phi float [ %3824, %3818 ], [ %3801, %3814 ]
  %3827 = phi float [ %3820, %3818 ], [ 1.000000e+00, %3814 ]
  %3828 = fcmp fast une float %3805, 0.000000e+00
  br i1 %3828, label %3829, label %3836, !dx.controlflow.hints !150

; <label>:3829                                    ; preds = %3825
  %3830 = fmul fast float %3805, 0x3FF7154760000000
  %3831 = call float @dx.op.unary.f32(i32 21, float %3830)  ; Exp(value)
  %3832 = fsub fast float 1.000000e+00, %3831
  %3833 = fmul fast float %3802, %3832
  %3834 = fsub fast float -0.000000e+00, %3833
  %3835 = fdiv fast float %3834, %3805
  br label %3836

; <label>:3836                                    ; preds = %3829, %3825, %3785, %3778
  %3837 = phi float [ %3835, %3829 ], [ %3797, %3785 ], [ %3782, %3778 ], [ %3802, %3825 ]
  %3838 = phi float [ %3826, %3829 ], [ %3796, %3785 ], [ %3781, %3778 ], [ %3826, %3825 ]
  %3839 = phi float [ %3815, %3829 ], [ %3795, %3785 ], [ %3780, %3778 ], [ %3815, %3825 ]
  %3840 = phi float [ %3831, %3829 ], [ %3787, %3785 ], [ 1.000000e+00, %3778 ], [ 1.000000e+00, %3825 ]
  %3841 = phi float [ %3827, %3829 ], [ %3787, %3785 ], [ 1.000000e+00, %3778 ], [ %3827, %3825 ]
  %3842 = phi float [ %3816, %3829 ], [ %3787, %3785 ], [ 1.000000e+00, %3778 ], [ %3816, %3825 ]
  %3843 = fmul fast float %3842, %3754
  %3844 = fmul fast float %3841, %3765
  %3845 = fmul fast float %3840, %3776
  %3846 = fadd fast float %3843, %3839
  %3847 = fadd fast float %3844, %3838
  %3848 = fadd fast float %3845, %3837
  %3849 = fmul fast float %3842, %3753
  %3850 = fmul fast float %3841, %3764
  %3851 = fmul fast float %3840, %3775
  br label %3852

; <label>:3852                                    ; preds = %3836, %3647
  %3853 = phi float [ %3653, %3647 ], [ %3851, %3836 ]
  %3854 = phi float [ %3652, %3647 ], [ %3850, %3836 ]
  %3855 = phi float [ %3651, %3647 ], [ %3849, %3836 ]
  %3856 = phi float [ %3650, %3647 ], [ %3848, %3836 ]
  %3857 = phi float [ %3649, %3647 ], [ %3847, %3836 ]
  %3858 = phi float [ %3648, %3647 ], [ %3846, %3836 ]
  %3859 = fmul fast float %3855, %2996
  %3860 = fmul fast float %3854, %2997
  %3861 = fmul fast float %3853, %2998
  %3862 = fsub fast float 1.000000e+00, %3059
  %3863 = fmul fast float %3858, %3862
  %3864 = fmul fast float %3857, %3862
  %3865 = fmul fast float %3856, %3862
  %3866 = fadd fast float %3863, %3859
  %3867 = fadd fast float %3864, %3860
  %3868 = fadd fast float %3865, %3861
  %3869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %3870 = extractvalue %dx.types.CBufRet.f32 %3869, 2
  %3871 = fmul fast float %3870, %3069
  %3872 = call float @dx.op.unary.f32(i32 7, float %3871)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %28, i32 %29, i32 undef, float %3059, float %3059, float %3059, float %3059, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %3873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3874 = extractvalue %dx.types.CBufRet.f32 %3873, 0
  %3875 = fmul fast float %3874, %3866
  %3876 = fmul fast float %3874, %3867
  %3877 = fmul fast float %3874, %3868
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %28, i32 %29, i32 undef, float %3875, float %3876, float %3877, float %3875, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %28, i32 %29, i32 undef, float %3872, float %3872, float %3872, float %3872, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!dx.entryPoints = !{!39}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !25, !31, !34}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !23, !24}
!6 = !{i32 0, %"class.Texture3D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 16, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 27, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture3D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 4, i32 0, !7}
!11 = !{i32 4, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 4, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 9, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 31, i32 1, i32 7, i32 0, !7}
!15 = !{i32 8, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 30, i32 1, i32 4, i32 0, !7}
!16 = !{i32 9, %"class.Texture2D<float>"* undef, !"", i32 0, i32 29, i32 1, i32 2, i32 0, !7}
!17 = !{i32 10, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 0, i32 26, i32 1, i32 2, i32 0, !7}
!18 = !{i32 11, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 32, i32 1, i32 2, i32 0, !19}
!19 = !{i32 0, i32 5}
!20 = !{i32 12, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 33, i32 1, i32 4, i32 0, !7}
!21 = !{i32 13, %"class.Texture1D<float>"* undef, !"", i32 0, i32 14, i32 1, i32 1, i32 0, !7}
!22 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!23 = !{i32 15, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!24 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!25 = !{!26, !27, !28, !29}
!26 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!27 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!28 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!29 = !{i32 3, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 7, i1 false, i1 false, i1 false, !30}
!30 = !{i32 0, i32 14}
!31 = !{!32, !33}
!32 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!33 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!34 = !{!35, !36, !37, !38}
!35 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!36 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!37 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!38 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!39 = !{void ()* @cs_fog_raymarching_air_clouds_heightmap_brfog, !"cs_fog_raymarching_air_clouds_heightmap_brfog", null, !4, !40}
!40 = !{i32 0, i64 272, i32 4, !41}
!41 = !{i32 8, i32 8, i32 1}
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
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
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
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
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
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 2}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 2}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 2}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 2}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 2}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 2}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 2}
!107 = !{!108, !108, i64 0}
!108 = !{!"float", !109, i64 0}
!109 = !{!"omnipotent char", !110, i64 0}
!110 = !{!"Simple C/C++ TBAA"}
!111 = !{!112, !114, !116, !117, !119, !120, !121}
!112 = distinct !{!112, !113, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!113 = distinct !{!113, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!114 = distinct !{!114, !115, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!115 = distinct !{!115, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!116 = distinct !{!116, !115, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!117 = distinct !{!117, !118, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!118 = distinct !{!118, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!119 = distinct !{!119, !118, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!120 = distinct !{!120, !118, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!121 = distinct !{!121, !118, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 2}
!123 = !{!124}
!124 = distinct !{!124, !125, !"\01?sort@@YAXAIAM00@Z: %c"}
!125 = distinct !{!125, !"\01?sort@@YAXAIAM00@Z"}
!126 = !{!127, !128, !112, !114, !116, !117, !119, !120, !121}
!127 = distinct !{!127, !125, !"\01?sort@@YAXAIAM00@Z: %a"}
!128 = distinct !{!128, !125, !"\01?sort@@YAXAIAM00@Z: %b"}
!129 = !{!128}
!130 = !{!127, !124, !112, !114, !116, !117, !119, !120, !121}
!131 = !{!127}
!132 = !{!128, !124, !112, !114, !116, !117, !119, !120, !121}
!133 = !{!134}
!134 = distinct !{!134, !135, !"\01?sort@@YAXAIAM00@Z: %c"}
!135 = distinct !{!135, !"\01?sort@@YAXAIAM00@Z"}
!136 = !{!137, !138, !112, !114, !116, !117, !119, !120, !121}
!137 = distinct !{!137, !135, !"\01?sort@@YAXAIAM00@Z: %a"}
!138 = distinct !{!138, !135, !"\01?sort@@YAXAIAM00@Z: %b"}
!139 = !{!138}
!140 = !{!137, !134, !112, !114, !116, !117, !119, !120, !121}
!141 = !{!137}
!142 = !{!138, !134, !112, !114, !116, !117, !119, !120, !121}
!143 = distinct !{!143, !"dx.controlflow.hints", i32 2}
!144 = distinct !{!144, !"dx.controlflow.hints", i32 2}
!145 = distinct !{!145, !"dx.controlflow.hints", i32 1}
!146 = distinct !{!146, !"dx.controlflow.hints", i32 2}
!147 = distinct !{!147, !"dx.controlflow.hints", i32 1}
!148 = distinct !{!148, !"dx.controlflow.hints", i32 1}
!149 = distinct !{!149, !"dx.controlflow.hints", i32 1}
!150 = distinct !{!150, !"dx.controlflow.hints", i32 1}
!151 = distinct !{!151, !"dx.controlflow.hints", i32 2}
!152 = distinct !{!152, !"dx.controlflow.hints", i32 1}

