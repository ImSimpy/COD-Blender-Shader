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
; shader hash: 60b3b826935ac1b2ca23e9e4424cf4f6
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
;                                   texture     f32          3d      T2             t1     1
;                                   texture     f32          3d      T3             t2     1
;                                   texture     f32          2d      T4             t8     1
;                                   texture     f32          2d      T5             t9     1
;                                   texture     f32     2darray      T6            t31     1
;                                   texture     f32          3d      T7            t30     1
;                                   texture     f32          2d      T8            t29     1
;                                   texture     f32          2d      T9            t26     1
;                                   texture     u32          2d     T10            t32     1
;                                   texture     f32          3d     T11            t33     1
;                                   texture     f32          1d     T12            t14     1
;                                   texture     f32          2d     T13            t13     1
;                                   texture     f32          2d     T14             t0     1
;                                   texture    byte         r/o     T15            t17     1
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

define void @cs_fog_raymarching_clouds_heightmap() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 26, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %28 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %29 = alloca [3 x float], align 4
  %30 = alloca [3 x float], align 4
  %31 = add i32 %28, %27
  %32 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %33 = extractvalue %dx.types.CBufRet.i32 %32, 1
  %34 = add i32 %31, %33
  %35 = lshr i32 %34, 1
  %36 = and i32 %35, 1
  %37 = and i32 %34, 1
  %38 = xor i32 %36, %37
  %39 = shl i32 %27, 1
  %40 = shl i32 %28, 1
  %41 = or i32 %38, %39
  %42 = or i32 %36, %40
  %43 = uitofp i32 %41 to float
  %44 = uitofp i32 %42 to float
  %45 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %46 = extractvalue %dx.types.CBufRet.f32 %45, 2
  %47 = fmul fast float %46, 0x3FE3C6EF40000000
  %48 = frem fast float %43, 2.560000e+02
  %49 = frem fast float %44, 2.560000e+02
  %50 = fptoui float %48 to i32
  %51 = fptoui float %49 to i32
  %52 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %50, i32 %51, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %53 = extractvalue %dx.types.ResRet.f32 %52, 0
  %54 = extractvalue %dx.types.ResRet.f32 %52, 1
  %55 = extractvalue %dx.types.ResRet.f32 %52, 2
  %56 = extractvalue %dx.types.ResRet.f32 %52, 3
  %57 = fadd fast float %53, %47
  %58 = fadd fast float %54, %47
  %59 = fadd fast float %55, %47
  %60 = fadd fast float %56, %47
  %61 = call float @dx.op.unary.f32(i32 22, float %57)  ; Frc(value)
  %62 = call float @dx.op.unary.f32(i32 22, float %58)  ; Frc(value)
  %63 = call float @dx.op.unary.f32(i32 22, float %59)  ; Frc(value)
  %64 = call float @dx.op.unary.f32(i32 22, float %60)  ; Frc(value)
  %65 = fadd fast float %63, %43
  %66 = fadd fast float %64, %44
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 2
  %69 = extractvalue %dx.types.CBufRet.f32 %67, 3
  %70 = fmul fast float %68, %65
  %71 = fmul fast float %69, %66
  %72 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %73 = extractvalue %dx.types.CBufRet.f32 %72, 0
  %74 = extractvalue %dx.types.CBufRet.f32 %72, 1
  %75 = extractvalue %dx.types.CBufRet.f32 %72, 2
  %76 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.f32 %76, 1
  %78 = fmul fast float %70, 2.000000e+00
  %79 = fmul fast float %71, 2.000000e+00
  %80 = fsub fast float 1.000000e+00, %78
  %81 = fsub fast float 1.000000e+00, %79
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.f32 %82, 0
  %84 = extractvalue %dx.types.CBufRet.f32 %82, 1
  %85 = extractvalue %dx.types.CBufRet.f32 %82, 2
  %86 = fmul fast float %83, %80
  %87 = fmul fast float %84, %80
  %88 = fmul fast float %85, %80
  %89 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = extractvalue %dx.types.CBufRet.f32 %89, 0
  %91 = extractvalue %dx.types.CBufRet.f32 %89, 1
  %92 = extractvalue %dx.types.CBufRet.f32 %89, 2
  %93 = fmul fast float %90, %81
  %94 = fmul fast float %91, %81
  %95 = fmul fast float %92, %81
  %96 = fadd fast float %93, %86
  %97 = fadd fast float %94, %87
  %98 = fadd fast float %95, %88
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 0
  %101 = extractvalue %dx.types.CBufRet.f32 %99, 1
  %102 = extractvalue %dx.types.CBufRet.f32 %99, 2
  %103 = fadd fast float %96, %100
  %104 = fadd fast float %97, %101
  %105 = fadd fast float %98, %102
  %106 = fmul fast float %103, %77
  %107 = fmul fast float %104, %77
  %108 = fmul fast float %105, %77
  %109 = fmul fast float %106, %106
  %110 = fmul fast float %107, %107
  %111 = fadd fast float %109, %110
  %112 = fmul fast float %108, %108
  %113 = fadd fast float %111, %112
  %114 = call float @dx.op.unary.f32(i32 24, float %113)  ; Sqrt(value)
  %115 = fdiv fast float 1.000000e+00, %114
  %116 = fmul fast float %106, %115
  %117 = fmul fast float %107, %115
  %118 = fmul fast float %108, %115
  %119 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %41, i32 %42, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %120 = extractvalue %dx.types.ResRet.f32 %119, 0
  %121 = fcmp fast ogt float %120, -1.000000e+00
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 1
  %124 = select i1 %121, float %123, float 1.000000e+00
  %125 = fadd fast float %120, 1.000000e+00
  %126 = fmul fast float %124, %125
  %127 = call float @dx.op.unary.f32(i32 6, float %126)  ; FAbs(value)
  %128 = fdiv fast float 1.000000e+00, %77
  %129 = fmul fast float %128, %114
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 1
  %132 = fmul fast float %131, %129
  %133 = fmul fast float %129, %127
  %134 = extractvalue %dx.types.CBufRet.f32 %122, 3
  %135 = fcmp fast oge float %127, %134
  %136 = call float @dx.op.binary.f32(i32 36, float %133, float %132)  ; FMin(a,b)
  %137 = select i1 %135, float %132, float %136
  %138 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.i32 %138, 3
  %140 = icmp eq i32 %139, 0
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.f32 %141, 2
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 2
  %145 = fsub fast float %142, %75
  %146 = fadd fast float %145, %144
  %147 = fsub fast float 0xC7EFFFFFE0000000, %75
  br i1 %140, label %159, label %148, !dx.controlflow.hints !41

; <label>:148                                     ; preds = %0
  %149 = fsub fast float -0.000000e+00, %74
  %150 = fsub fast float -0.000000e+00, %73
  %151 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %150, float %149, float %146)  ; Dot3(ax,ay,az,bx,by,bz)
  %152 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %153 = fdiv fast float 1.000000e+00, %152
  %154 = fmul fast float %153, %151
  %155 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %150, float %149, float %147)  ; Dot3(ax,ay,az,bx,by,bz)
  %156 = fmul fast float %153, %155
  %157 = call float @dx.op.binary.f32(i32 36, float %154, float %156)  ; FMin(a,b)
  %158 = call float @dx.op.binary.f32(i32 35, float %154, float %156)  ; FMax(a,b)
  br label %192

; <label>:159                                     ; preds = %0
  %160 = extractvalue %dx.types.CBufRet.f32 %141, 0
  %161 = extractvalue %dx.types.CBufRet.f32 %141, 1
  %162 = extractvalue %dx.types.CBufRet.f32 %143, 0
  %163 = extractvalue %dx.types.CBufRet.f32 %143, 1
  %164 = fdiv fast float 1.000000e+00, %116
  %165 = fdiv fast float 1.000000e+00, %117
  %166 = fdiv fast float 1.000000e+00, %118
  %167 = fsub fast float %160, %73
  %168 = fmul fast float %164, %167
  %169 = fadd fast float %167, %162
  %170 = fmul fast float %169, %164
  %171 = call float @dx.op.binary.f32(i32 36, float %168, float %170)  ; FMin(a,b)
  %172 = call float @dx.op.binary.f32(i32 35, float %168, float %170)  ; FMax(a,b)
  %173 = fsub fast float %161, %74
  %174 = fmul fast float %165, %173
  %175 = fadd fast float %173, %163
  %176 = fmul fast float %175, %165
  %177 = call float @dx.op.binary.f32(i32 36, float %174, float %176)  ; FMin(a,b)
  %178 = call float @dx.op.binary.f32(i32 35, float %171, float %177)  ; FMax(a,b)
  %179 = call float @dx.op.binary.f32(i32 35, float %174, float %176)  ; FMax(a,b)
  %180 = call float @dx.op.binary.f32(i32 36, float %172, float %179)  ; FMin(a,b)
  %181 = fmul fast float %166, %147
  %182 = fmul fast float %166, %146
  %183 = call float @dx.op.binary.f32(i32 36, float %181, float %182)  ; FMin(a,b)
  %184 = call float @dx.op.binary.f32(i32 35, float %178, float %183)  ; FMax(a,b)
  %185 = call float @dx.op.binary.f32(i32 35, float %181, float %182)  ; FMax(a,b)
  %186 = call float @dx.op.binary.f32(i32 36, float %180, float %185)  ; FMin(a,b)
  %187 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %184)  ; FMax(a,b)
  %188 = fcmp fast ult float %186, %187
  br i1 %188, label %192, label %189, !dx.controlflow.hints !42

; <label>:189                                     ; preds = %159
  %190 = call float @dx.op.binary.f32(i32 36, float %184, float %186)  ; FMin(a,b)
  %191 = call float @dx.op.binary.f32(i32 35, float %184, float %186)  ; FMax(a,b)
  br label %192

; <label>:192                                     ; preds = %189, %159, %148
  %193 = phi float [ %157, %148 ], [ %190, %189 ], [ 0.000000e+00, %159 ]
  %194 = phi float [ %158, %148 ], [ %191, %189 ], [ 0.000000e+00, %159 ]
  %195 = fcmp fast oeq float %194, 0.000000e+00
  %196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %197 = extractvalue %dx.types.CBufRet.f32 %196, 1
  %198 = fcmp fast olt float %194, %197
  %199 = or i1 %195, %198
  br i1 %199, label %204, label %200, !dx.controlflow.hints !43

; <label>:200                                     ; preds = %192
  %201 = call float @dx.op.binary.f32(i32 35, float %197, float %193)  ; FMax(a,b)
  %202 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %201)  ; FMin(a,b)
  %203 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %194)  ; FMax(a,b)
  br label %204

; <label>:204                                     ; preds = %200, %192
  %205 = phi i32 [ 1, %200 ], [ 0, %192 ]
  %206 = phi float [ %203, %200 ], [ -1.000000e+00, %192 ]
  %207 = phi float [ %202, %200 ], [ 0x47EFFFFFE0000000, %192 ]
  %208 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %209 = extractvalue %dx.types.CBufRet.i32 %208, 3
  %210 = icmp eq i32 %209, 0
  %211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %212 = extractvalue %dx.types.CBufRet.f32 %211, 2
  %213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %214 = extractvalue %dx.types.CBufRet.f32 %213, 2
  %215 = fsub fast float %212, %75
  %216 = fadd fast float %215, %214
  br i1 %210, label %228, label %217, !dx.controlflow.hints !44

; <label>:217                                     ; preds = %204
  %218 = fsub fast float -0.000000e+00, %73
  %219 = fsub fast float -0.000000e+00, %74
  %220 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %218, float %219, float %216)  ; Dot3(ax,ay,az,bx,by,bz)
  %221 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %222 = fdiv fast float 1.000000e+00, %221
  %223 = fmul fast float %222, %220
  %224 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %218, float %219, float %215)  ; Dot3(ax,ay,az,bx,by,bz)
  %225 = fmul fast float %222, %224
  %226 = call float @dx.op.binary.f32(i32 36, float %223, float %225)  ; FMin(a,b)
  %227 = call float @dx.op.binary.f32(i32 35, float %223, float %225)  ; FMax(a,b)
  br label %261

; <label>:228                                     ; preds = %204
  %229 = fdiv fast float 1.000000e+00, %116
  %230 = fdiv fast float 1.000000e+00, %117
  %231 = fdiv fast float 1.000000e+00, %118
  %232 = extractvalue %dx.types.CBufRet.f32 %211, 0
  %233 = extractvalue %dx.types.CBufRet.f32 %211, 1
  %234 = extractvalue %dx.types.CBufRet.f32 %213, 0
  %235 = extractvalue %dx.types.CBufRet.f32 %213, 1
  %236 = fsub fast float %232, %73
  %237 = fmul fast float %236, %229
  %238 = fadd fast float %236, %234
  %239 = fmul fast float %238, %229
  %240 = call float @dx.op.binary.f32(i32 36, float %237, float %239)  ; FMin(a,b)
  %241 = call float @dx.op.binary.f32(i32 35, float %237, float %239)  ; FMax(a,b)
  %242 = fsub fast float %233, %74
  %243 = fmul fast float %242, %230
  %244 = fadd fast float %242, %235
  %245 = fmul fast float %244, %230
  %246 = call float @dx.op.binary.f32(i32 36, float %243, float %245)  ; FMin(a,b)
  %247 = call float @dx.op.binary.f32(i32 35, float %240, float %246)  ; FMax(a,b)
  %248 = call float @dx.op.binary.f32(i32 35, float %243, float %245)  ; FMax(a,b)
  %249 = call float @dx.op.binary.f32(i32 36, float %241, float %248)  ; FMin(a,b)
  %250 = fmul fast float %215, %231
  %251 = fmul fast float %216, %231
  %252 = call float @dx.op.binary.f32(i32 36, float %250, float %251)  ; FMin(a,b)
  %253 = call float @dx.op.binary.f32(i32 35, float %247, float %252)  ; FMax(a,b)
  %254 = call float @dx.op.binary.f32(i32 35, float %250, float %251)  ; FMax(a,b)
  %255 = call float @dx.op.binary.f32(i32 36, float %249, float %254)  ; FMin(a,b)
  %256 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %253)  ; FMax(a,b)
  %257 = fcmp fast ult float %255, %256
  br i1 %257, label %261, label %258, !dx.controlflow.hints !45

; <label>:258                                     ; preds = %228
  %259 = call float @dx.op.binary.f32(i32 36, float %253, float %255)  ; FMin(a,b)
  %260 = call float @dx.op.binary.f32(i32 35, float %253, float %255)  ; FMax(a,b)
  br label %261

; <label>:261                                     ; preds = %258, %228, %217
  %262 = phi float [ %226, %217 ], [ %259, %258 ], [ 0.000000e+00, %228 ]
  %263 = phi float [ %227, %217 ], [ %260, %258 ], [ 0.000000e+00, %228 ]
  %264 = fcmp fast oeq float %263, 0.000000e+00
  br i1 %264, label %268, label %265, !dx.controlflow.hints !46

; <label>:265                                     ; preds = %261
  %266 = call float @dx.op.binary.f32(i32 36, float %207, float %262)  ; FMin(a,b)
  %267 = call float @dx.op.binary.f32(i32 35, float %206, float %263)  ; FMax(a,b)
  br label %268

; <label>:268                                     ; preds = %265, %261
  %269 = phi i32 [ 1, %265 ], [ 0, %261 ]
  %270 = phi float [ %267, %265 ], [ %206, %261 ]
  %271 = phi float [ %266, %265 ], [ %207, %261 ]
  %272 = call float @dx.op.binary.f32(i32 36, float %137, float %270)  ; FMin(a,b)
  %273 = call float @dx.op.binary.f32(i32 35, float %114, float %271)  ; FMax(a,b)
  %274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %275 = extractvalue %dx.types.CBufRet.f32 %274, 0
  %276 = fmul fast float %62, 2.000000e+00
  %277 = fadd fast float %276, -1.000000e+00
  %278 = fmul fast float %275, %277
  %279 = fadd fast float %278, %273
  %280 = fcmp fast olt float %279, %272
  %281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %282 = extractvalue %dx.types.CBufRet.f32 %281, 2
  %283 = fcmp fast olt float %282, 1.000000e+00
  %284 = and i1 %280, %283
  br i1 %284, label %285, label %2359

; <label>:285                                     ; preds = %268
  %286 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %287 = extractvalue %dx.types.CBufRet.i32 %286, 1
  %288 = add i32 %287, -1
  %289 = fmul fast float %279, %118
  %290 = fadd fast float %289, %75
  %291 = fmul fast float %279, %117
  %292 = fadd fast float %291, %74
  %293 = fmul fast float %279, %116
  %294 = fadd fast float %293, %73
  br label %295

; <label>:295                                     ; preds = %2335, %285
  %296 = phi float [ %2337, %2335 ], [ 0.000000e+00, %285 ]
  %297 = phi float [ %2338, %2335 ], [ 1.000000e+00, %285 ]
  %298 = phi float [ %2339, %2335 ], [ 0.000000e+00, %285 ]
  %299 = phi float [ %2340, %2335 ], [ 0.000000e+00, %285 ]
  %300 = phi float [ %2341, %2335 ], [ 0.000000e+00, %285 ]
  %301 = phi float [ %2351, %2335 ], [ %294, %285 ]
  %302 = phi float [ %2352, %2335 ], [ %292, %285 ]
  %303 = phi float [ %2353, %2335 ], [ %290, %285 ]
  %304 = phi float [ %2336, %2335 ], [ %279, %285 ]
  %305 = phi i32 [ %490, %2335 ], [ %288, %285 ]
  %306 = phi float [ %2342, %2335 ], [ 0.000000e+00, %285 ]
  %307 = phi float [ %2343, %2335 ], [ 0.000000e+00, %285 ]
  %308 = phi float [ %2344, %2335 ], [ 0.000000e+00, %285 ]
  %309 = phi float [ %2345, %2335 ], [ 0.000000e+00, %285 ]
  %310 = phi float [ %2346, %2335 ], [ 0.000000e+00, %285 ]
  %311 = phi i32 [ %2347, %2335 ], [ 0, %285 ]
  %312 = fsub fast float -0.000000e+00, %302
  %313 = fsub fast float -0.000000e+00, %301
  %314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %315 = extractvalue %dx.types.CBufRet.f32 %314, 0
  %316 = icmp eq i32 %205, 0
  br i1 %316, label %487, label %317, !dx.controlflow.hints !47

; <label>:317                                     ; preds = %295
  %318 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %319 = extractvalue %dx.types.CBufRet.i32 %318, 1
  %320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %321 = extractvalue %dx.types.CBufRet.f32 %320, 1
  %322 = fcmp fast ogt float %321, %304
  br i1 %322, label %323, label %325, !dx.controlflow.hints !48

; <label>:323                                     ; preds = %317
  %324 = fsub fast float %321, %304
  br label %477

; <label>:325                                     ; preds = %317
  %326 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %327 = extractvalue %dx.types.CBufRet.i32 %326, 3
  %328 = icmp eq i32 %327, 0
  %329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %330 = extractvalue %dx.types.CBufRet.f32 %329, 2
  %331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %332 = extractvalue %dx.types.CBufRet.f32 %331, 2
  %333 = fsub fast float %330, %303
  %334 = fadd fast float %333, %332
  %335 = fsub fast float 0xC7EFFFFFE0000000, %303
  br i1 %328, label %345, label %336, !dx.controlflow.hints !41

; <label>:336                                     ; preds = %325
  %337 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %313, float %312, float %334)  ; Dot3(ax,ay,az,bx,by,bz)
  %338 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %339 = fdiv fast float 1.000000e+00, %338
  %340 = fmul fast float %339, %337
  %341 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %313, float %312, float %335)  ; Dot3(ax,ay,az,bx,by,bz)
  %342 = fmul fast float %339, %341
  %343 = call float @dx.op.binary.f32(i32 36, float %340, float %342)  ; FMin(a,b)
  %344 = call float @dx.op.binary.f32(i32 35, float %340, float %342)  ; FMax(a,b)
  br label %378

; <label>:345                                     ; preds = %325
  %346 = extractvalue %dx.types.CBufRet.f32 %329, 0
  %347 = extractvalue %dx.types.CBufRet.f32 %329, 1
  %348 = extractvalue %dx.types.CBufRet.f32 %331, 0
  %349 = extractvalue %dx.types.CBufRet.f32 %331, 1
  %350 = fdiv fast float 1.000000e+00, %116
  %351 = fdiv fast float 1.000000e+00, %117
  %352 = fdiv fast float 1.000000e+00, %118
  %353 = fsub fast float %346, %301
  %354 = fmul fast float %350, %353
  %355 = fadd fast float %353, %348
  %356 = fmul fast float %355, %350
  %357 = call float @dx.op.binary.f32(i32 36, float %354, float %356)  ; FMin(a,b)
  %358 = call float @dx.op.binary.f32(i32 35, float %354, float %356)  ; FMax(a,b)
  %359 = fsub fast float %347, %302
  %360 = fmul fast float %351, %359
  %361 = fadd fast float %359, %349
  %362 = fmul fast float %361, %351
  %363 = call float @dx.op.binary.f32(i32 36, float %360, float %362)  ; FMin(a,b)
  %364 = call float @dx.op.binary.f32(i32 35, float %357, float %363)  ; FMax(a,b)
  %365 = call float @dx.op.binary.f32(i32 35, float %360, float %362)  ; FMax(a,b)
  %366 = call float @dx.op.binary.f32(i32 36, float %358, float %365)  ; FMin(a,b)
  %367 = fmul fast float %352, %335
  %368 = fmul fast float %352, %334
  %369 = call float @dx.op.binary.f32(i32 36, float %367, float %368)  ; FMin(a,b)
  %370 = call float @dx.op.binary.f32(i32 35, float %364, float %369)  ; FMax(a,b)
  %371 = call float @dx.op.binary.f32(i32 35, float %367, float %368)  ; FMax(a,b)
  %372 = call float @dx.op.binary.f32(i32 36, float %366, float %371)  ; FMin(a,b)
  %373 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %370)  ; FMax(a,b)
  %374 = fcmp fast ult float %372, %373
  br i1 %374, label %378, label %375, !dx.controlflow.hints !42

; <label>:375                                     ; preds = %345
  %376 = call float @dx.op.binary.f32(i32 36, float %370, float %372)  ; FMin(a,b)
  %377 = call float @dx.op.binary.f32(i32 35, float %370, float %372)  ; FMax(a,b)
  br label %378

; <label>:378                                     ; preds = %375, %345, %336
  %379 = phi float [ %343, %336 ], [ %376, %375 ], [ 0.000000e+00, %345 ]
  %380 = phi float [ %344, %336 ], [ %377, %375 ], [ 0.000000e+00, %345 ]
  %381 = fcmp fast ogt float %379, 0.000000e+00
  br i1 %381, label %477, label %382, !dx.controlflow.hints !49

; <label>:382                                     ; preds = %378
  %383 = fcmp fast ugt float %380, 0.000000e+00
  br i1 %383, label %384, label %477, !dx.controlflow.hints !50

; <label>:384                                     ; preds = %382
  %385 = icmp sgt i32 %305, 0
  br i1 %385, label %386, label %471

; <label>:386                                     ; preds = %384
  br label %387

; <label>:387                                     ; preds = %467, %386
  %388 = phi i32 [ %468, %467 ], [ %305, %386 ]
  %389 = sitofp i32 %388 to float
  %390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %391 = extractvalue %dx.types.CBufRet.f32 %390, 0
  %392 = extractvalue %dx.types.CBufRet.f32 %390, 1
  %393 = fsub fast float %301, %391
  %394 = fsub fast float %302, %392
  %395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %396 = extractvalue %dx.types.CBufRet.f32 %395, 0
  %397 = extractvalue %dx.types.CBufRet.f32 %395, 1
  %398 = fmul fast float %393, %396
  %399 = fmul fast float %394, %397
  %400 = fsub fast float 1.000000e+00, %399
  %401 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %402 = extractvalue %dx.types.CBufRet.i32 %401, 3
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %410, label %404, !dx.controlflow.hints !51

; <label>:404                                     ; preds = %387
  %405 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %23, float %398, float %400, float undef, float undef, i32 0, i32 0, i32 undef, float %389)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %406 = extractvalue %dx.types.ResRet.f32 %405, 0
  %407 = extractvalue %dx.types.ResRet.f32 %405, 1
  %408 = extractvalue %dx.types.ResRet.f32 %405, 2
  %409 = extractvalue %dx.types.ResRet.f32 %405, 3
  br label %416

; <label>:410                                     ; preds = %387
  %411 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %24, float %398, float %400, float undef, float undef, i32 0, i32 0, i32 undef, float %389)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %412 = extractvalue %dx.types.ResRet.f32 %411, 0
  %413 = extractvalue %dx.types.ResRet.f32 %411, 1
  %414 = extractvalue %dx.types.ResRet.f32 %411, 2
  %415 = extractvalue %dx.types.ResRet.f32 %411, 3
  br label %416

; <label>:416                                     ; preds = %410, %404
  %417 = phi float [ %406, %404 ], [ %412, %410 ]
  %418 = phi float [ %407, %404 ], [ %413, %410 ]
  %419 = phi float [ %408, %404 ], [ %414, %410 ]
  %420 = phi float [ %409, %404 ], [ %415, %410 ]
  %421 = extractvalue %dx.types.CBufRet.f32 %395, 3
  %422 = fmul fast float %421, %417
  %423 = extractvalue %dx.types.CBufRet.f32 %390, 2
  %424 = fadd fast float %422, %423
  %425 = fmul fast float %421, %418
  %426 = fadd fast float %425, %423
  %427 = fmul fast float %421, %419
  %428 = fadd fast float %427, %423
  %429 = and i32 %388, 31
  %430 = shl i32 1, %429
  %431 = uitofp i32 %430 to float
  %432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %433 = extractvalue %dx.types.CBufRet.f32 %432, 3
  %434 = fdiv fast float 1.000000e+00, %433
  %435 = fmul fast float %434, %431
  %436 = fmul fast float %435, %118
  %437 = fadd fast float %436, %303
  %438 = fcmp fast oeq float %420, 0.000000e+00
  %439 = fcmp fast ogt float %303, %426
  %440 = fcmp fast ogt float %437, %426
  %441 = and i1 %439, %440
  %442 = or i1 %438, %441
  br i1 %442, label %443, label %447, !dx.controlflow.hints !52

; <label>:443                                     ; preds = %416
  %444 = add nsw i32 %388, 1
  %445 = add nsw i32 %319, -1
  %446 = call i32 @dx.op.binary.i32(i32 38, i32 %444, i32 %445)  ; IMin(a,b)
  br label %477

; <label>:447                                     ; preds = %416
  %448 = fcmp fast olt float %303, %428
  %449 = fcmp fast olt float %437, %428
  %450 = and i1 %448, %449
  br i1 %450, label %451, label %455, !dx.controlflow.hints !53

; <label>:451                                     ; preds = %447
  %452 = add nsw i32 %388, 1
  %453 = add nsw i32 %319, -1
  %454 = call i32 @dx.op.binary.i32(i32 38, i32 %452, i32 %453)  ; IMin(a,b)
  br label %477

; <label>:455                                     ; preds = %447
  %456 = fcmp fast olt float %303, %424
  %457 = fcmp fast olt float %437, %424
  %458 = and i1 %456, %457
  br i1 %458, label %459, label %467, !dx.controlflow.hints !54

; <label>:459                                     ; preds = %455
  %460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %461 = extractvalue %dx.types.CBufRet.f32 %460, 3
  %462 = extractvalue %dx.types.CBufRet.f32 %395, 2
  %463 = fcmp fast une float %461, %462
  br i1 %463, label %464, label %471, !dx.controlflow.hints !55

; <label>:464                                     ; preds = %459
  %465 = fsub fast float %303, %428
  %466 = call float @dx.op.binary.f32(i32 36, float %435, float %465)  ; FMin(a,b)
  br label %471

; <label>:467                                     ; preds = %455
  %468 = add nsw i32 %388, -1
  %469 = icmp sgt i32 %388, 1
  br i1 %469, label %387, label %470

; <label>:470                                     ; preds = %467
  br label %471

; <label>:471                                     ; preds = %470, %464, %459, %384
  %472 = phi float [ %466, %464 ], [ %435, %459 ], [ 0.000000e+00, %384 ], [ 0.000000e+00, %470 ]
  %473 = phi i32 [ %388, %464 ], [ %388, %459 ], [ %305, %384 ], [ %468, %470 ]
  %474 = add nsw i32 %473, 1
  %475 = add nsw i32 %319, -1
  %476 = call i32 @dx.op.binary.i32(i32 38, i32 %474, i32 %475)  ; IMin(a,b)
  br label %477

; <label>:477                                     ; preds = %471, %451, %443, %382, %378, %323
  %478 = phi float [ %324, %323 ], [ %435, %443 ], [ %435, %451 ], [ %472, %471 ], [ 0x47EFFFFFE0000000, %382 ], [ %379, %378 ]
  %479 = phi i32 [ %205, %323 ], [ %205, %443 ], [ %205, %451 ], [ %205, %471 ], [ 0, %382 ], [ %205, %378 ]
  %480 = phi i32 [ %305, %323 ], [ %446, %443 ], [ %454, %451 ], [ %476, %471 ], [ %305, %382 ], [ %305, %378 ]
  %481 = icmp ne i32 %479, 0
  %482 = zext i1 %481 to i32
  %483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %484 = extractvalue %dx.types.CBufRet.f32 %483, 2
  %485 = call float @dx.op.binary.f32(i32 35, float %478, float %484)  ; FMax(a,b)
  %486 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %485)  ; FMin(a,b)
  br label %487

; <label>:487                                     ; preds = %477, %295
  %488 = phi i32 [ %482, %477 ], [ 0, %295 ]
  %489 = phi float [ %486, %477 ], [ 0x47EFFFFFE0000000, %295 ]
  %490 = phi i32 [ %480, %477 ], [ %305, %295 ]
  %491 = icmp eq i32 %269, 0
  br i1 %491, label %548, label %492, !dx.controlflow.hints !56

; <label>:492                                     ; preds = %487
  %493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %494 = extractvalue %dx.types.CBufRet.f32 %493, 0
  %495 = extractvalue %dx.types.CBufRet.f32 %493, 1
  %496 = extractvalue %dx.types.CBufRet.f32 %493, 2
  %497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %498 = extractvalue %dx.types.CBufRet.f32 %497, 0
  %499 = extractvalue %dx.types.CBufRet.f32 %497, 1
  %500 = extractvalue %dx.types.CBufRet.f32 %497, 2
  %501 = fsub fast float %301, %498
  %502 = fsub fast float %302, %499
  %503 = fsub fast float %303, %500
  %504 = fmul fast float %501, %494
  %505 = fmul fast float %502, %495
  %506 = fmul fast float %503, %496
  %507 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %508 = extractvalue %dx.types.CBufRet.i32 %507, 3
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %513, label %510, !dx.controlflow.hints !57

; <label>:510                                     ; preds = %492
  %511 = call float @dx.op.unary.f32(i32 22, float %504)  ; Frc(value)
  %512 = call float @dx.op.unary.f32(i32 22, float %505)  ; Frc(value)
  br label %513

; <label>:513                                     ; preds = %510, %492
  %514 = phi float [ %511, %510 ], [ %504, %492 ]
  %515 = phi float [ %512, %510 ], [ %505, %492 ]
  %516 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %22, float %514, float %515, float %506, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %517 = extractvalue %dx.types.ResRet.f32 %516, 0
  %518 = fmul fast float %517, 2.000000e+00
  %519 = fadd fast float %518, -1.000000e+00
  %520 = extractvalue %dx.types.CBufRet.f32 %493, 3
  %521 = fmul fast float %519, %520
  %522 = fcmp fast olt float %521, 0.000000e+00
  %523 = fcmp fast oge float %506, 0.000000e+00
  %524 = fcmp fast ole float %506, 1.000000e+00
  br i1 %509, label %527, label %525, !dx.controlflow.hints !58

; <label>:525                                     ; preds = %513
  %526 = and i1 %523, %524
  br label %537

; <label>:527                                     ; preds = %513
  %528 = fcmp fast oge float %504, 0.000000e+00
  %529 = fcmp fast oge float %505, 0.000000e+00
  %530 = and i1 %528, %529
  %531 = and i1 %523, %530
  %532 = fcmp fast ole float %504, 1.000000e+00
  %533 = fcmp fast ole float %505, 1.000000e+00
  %534 = and i1 %532, %533
  %535 = and i1 %524, %534
  %536 = and i1 %531, %535
  br label %537

; <label>:537                                     ; preds = %527, %525
  %538 = phi i1 [ %526, %525 ], [ %536, %527 ]
  %539 = and i1 %522, %538
  %540 = call float @dx.op.unary.f32(i32 6, float %521)  ; FAbs(value)
  %541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %542 = extractvalue %dx.types.CBufRet.f32 %541, 1
  %543 = extractvalue %dx.types.CBufRet.f32 %541, 0
  %544 = call float @dx.op.binary.f32(i32 35, float %540, float %543)  ; FMax(a,b)
  %545 = select i1 %539, float %542, float %544
  %546 = zext i1 %539 to i32
  %547 = call float @dx.op.binary.f32(i32 36, float %489, float %545)  ; FMin(a,b)
  br label %548

; <label>:548                                     ; preds = %537, %487
  %549 = phi i32 [ %546, %537 ], [ 0, %487 ]
  %550 = phi float [ %547, %537 ], [ %489, %487 ]
  %551 = extractvalue %dx.types.CBufRet.f32 %314, 2
  %552 = fmul fast float %551, %304
  %553 = call float @dx.op.unary.f32(i32 23, float %552)  ; Log(value)
  %554 = fmul fast float %553, 0x3FE62E4300000000
  %555 = call float @dx.op.binary.f32(i32 35, float %554, float 1.000000e+00)  ; FMax(a,b)
  %556 = fmul fast float %555, 0x47EFFFFFE0000000
  %557 = call float @dx.op.binary.f32(i32 36, float %556, float %550)  ; FMin(a,b)
  %558 = call float @dx.op.binary.f32(i32 35, float %557, float %315)  ; FMax(a,b)
  %559 = fsub fast float %272, %304
  %560 = fadd fast float %559, 0x3F1A36E2E0000000
  %561 = call float @dx.op.binary.f32(i32 36, float %560, float %558)  ; FMin(a,b)
  %562 = icmp eq i32 %488, 0
  br i1 %562, label %668, label %563, !dx.controlflow.hints !59

; <label>:563                                     ; preds = %548
  %564 = fcmp fast olt float %560, %558
  %565 = fmul fast float %118, %61
  %566 = fmul fast float %565, %561
  %567 = fadd fast float %566, %303
  %568 = fmul fast float %118, %62
  %569 = fmul fast float %568, %561
  %570 = fadd fast float %569, %303
  %571 = fmul fast float %118, %63
  %572 = fmul fast float %571, %561
  %573 = fadd fast float %572, %303
  br i1 %564, label %574, label %579, !dx.controlflow.hints !60

; <label>:574                                     ; preds = %563
  %575 = fmul fast float %561, %116
  %576 = fmul fast float %561, %117
  %577 = fadd fast float %575, %301
  %578 = fadd fast float %576, %302
  br label %579

; <label>:579                                     ; preds = %574, %563
  %580 = phi float [ %577, %574 ], [ %301, %563 ]
  %581 = phi float [ %578, %574 ], [ %302, %563 ]
  %582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %583 = extractvalue %dx.types.CBufRet.f32 %582, 0
  %584 = extractvalue %dx.types.CBufRet.f32 %582, 1
  %585 = fsub fast float %580, %583
  %586 = fsub fast float %581, %584
  %587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %588 = extractvalue %dx.types.CBufRet.f32 %587, 0
  %589 = extractvalue %dx.types.CBufRet.f32 %587, 1
  %590 = fmul fast float %585, %588
  %591 = fmul fast float %586, %589
  %592 = fsub fast float 1.000000e+00, %591
  %593 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %594 = extractvalue %dx.types.CBufRet.i32 %593, 3
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %602, label %596, !dx.controlflow.hints !51

; <label>:596                                     ; preds = %579
  %597 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %23, float %590, float %592, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %598 = extractvalue %dx.types.ResRet.f32 %597, 0
  %599 = extractvalue %dx.types.ResRet.f32 %597, 1
  %600 = extractvalue %dx.types.ResRet.f32 %597, 2
  %601 = extractvalue %dx.types.ResRet.f32 %597, 3
  br label %608

; <label>:602                                     ; preds = %579
  %603 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %24, float %590, float %592, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %604 = extractvalue %dx.types.ResRet.f32 %603, 0
  %605 = extractvalue %dx.types.ResRet.f32 %603, 1
  %606 = extractvalue %dx.types.ResRet.f32 %603, 2
  %607 = extractvalue %dx.types.ResRet.f32 %603, 3
  br label %608

; <label>:608                                     ; preds = %602, %596
  %609 = phi float [ %598, %596 ], [ %604, %602 ]
  %610 = phi float [ %599, %596 ], [ %605, %602 ]
  %611 = phi float [ %600, %596 ], [ %606, %602 ]
  %612 = phi float [ %601, %596 ], [ %607, %602 ]
  %613 = extractvalue %dx.types.CBufRet.f32 %587, 3
  %614 = fmul fast float %613, %610
  %615 = fmul fast float %614, %609
  %616 = fsub fast float %614, %615
  %617 = fcmp fast ole float %616, 0.000000e+00
  %618 = extractvalue %dx.types.CBufRet.f32 %582, 2
  %619 = fadd fast float %615, %618
  %620 = fmul fast float %613, %611
  %621 = fadd fast float %620, %618
  %622 = fdiv fast float 1.000000e+00, %616
  %623 = select i1 %617, float 1.000000e+06, float %622
  %624 = fsub fast float %567, %619
  %625 = fmul fast float %623, %624
  %626 = call float @dx.op.unary.f32(i32 7, float %625)  ; Saturate(value)
  %627 = extractvalue %dx.types.CBufRet.f32 %587, 2
  %628 = fmul fast float %627, %626
  %629 = fsub fast float %627, %628
  %630 = fcmp fast olt float %567, %621
  %631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %632 = extractvalue %dx.types.CBufRet.f32 %631, 3
  %633 = select i1 %630, float %632, float 1.000000e+00
  %634 = fmul fast float %629, %633
  %635 = fsub fast float %570, %619
  %636 = fmul fast float %623, %635
  %637 = call float @dx.op.unary.f32(i32 7, float %636)  ; Saturate(value)
  %638 = fmul fast float %627, %637
  %639 = fsub fast float %627, %638
  %640 = fcmp fast olt float %570, %621
  %641 = select i1 %640, float %632, float 1.000000e+00
  %642 = fmul fast float %639, %641
  %643 = fadd fast float %642, %634
  %644 = fsub fast float %573, %619
  %645 = fmul fast float %623, %644
  %646 = call float @dx.op.unary.f32(i32 7, float %645)  ; Saturate(value)
  %647 = fmul fast float %627, %646
  %648 = fsub fast float %627, %647
  %649 = fcmp fast olt float %573, %621
  %650 = select i1 %649, float %632, float 1.000000e+00
  %651 = fmul fast float %648, %650
  %652 = fadd fast float %643, %651
  %653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %654 = extractvalue %dx.types.CBufRet.f32 %653, 2
  %655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %656 = extractvalue %dx.types.CBufRet.f32 %655, 0
  %657 = extractvalue %dx.types.CBufRet.f32 %655, 1
  %658 = extractvalue %dx.types.CBufRet.f32 %655, 2
  %659 = fmul fast float %561, 0x3FD5555560000000
  %660 = fmul fast float %659, %612
  %661 = fmul fast float %660, %654
  %662 = fmul fast float %661, %652
  %663 = extractvalue %dx.types.CBufRet.f32 %631, 0
  %664 = fmul fast float %662, %656
  %665 = fmul fast float %662, %657
  %666 = fmul fast float %662, %658
  %667 = fmul fast float %662, %663
  br label %668

; <label>:668                                     ; preds = %608, %548
  %669 = phi float [ %662, %608 ], [ 0.000000e+00, %548 ]
  %670 = phi float [ %667, %608 ], [ 0.000000e+00, %548 ]
  %671 = phi float [ %664, %608 ], [ 0.000000e+00, %548 ]
  %672 = phi float [ %665, %608 ], [ 0.000000e+00, %548 ]
  %673 = phi float [ %666, %608 ], [ 0.000000e+00, %548 ]
  %674 = icmp eq i32 %549, 0
  br i1 %674, label %869, label %675, !dx.controlflow.hints !61

; <label>:675                                     ; preds = %668
  %676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %677 = extractvalue %dx.types.CBufRet.f32 %676, 3
  %678 = fmul fast float %677, %304
  %679 = fcmp fast oeq float %678, 0.000000e+00
  br i1 %679, label %694, label %680, !dx.controlflow.hints !62

; <label>:680                                     ; preds = %675
  %681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %682 = extractvalue %dx.types.CBufRet.f32 %681, 3
  %683 = fmul fast float %682, %678
  %684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %685 = extractvalue %dx.types.CBufRet.f32 %684, 0
  %686 = extractvalue %dx.types.CBufRet.f32 %684, 1
  %687 = extractvalue %dx.types.CBufRet.f32 %684, 2
  %688 = fmul fast float %685, %683
  %689 = fmul fast float %686, %683
  %690 = fmul fast float %687, %683
  %691 = call float @dx.op.unary.f32(i32 23, float %688)  ; Log(value)
  %692 = call float @dx.op.unary.f32(i32 23, float %689)  ; Log(value)
  %693 = call float @dx.op.unary.f32(i32 23, float %690)  ; Log(value)
  br label %694

; <label>:694                                     ; preds = %680, %675
  %695 = phi float [ %691, %680 ], [ 0.000000e+00, %675 ]
  %696 = phi float [ %692, %680 ], [ 0.000000e+00, %675 ]
  %697 = phi float [ %693, %680 ], [ 0.000000e+00, %675 ]
  %698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %699 = extractvalue %dx.types.CBufRet.f32 %698, 0
  %700 = extractvalue %dx.types.CBufRet.f32 %698, 1
  %701 = extractvalue %dx.types.CBufRet.f32 %698, 2
  %702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %703 = extractvalue %dx.types.CBufRet.f32 %702, 0
  %704 = extractvalue %dx.types.CBufRet.f32 %702, 1
  %705 = extractvalue %dx.types.CBufRet.f32 %702, 2
  %706 = fsub fast float %301, %703
  %707 = fsub fast float %302, %704
  %708 = fsub fast float %303, %705
  %709 = fmul fast float %706, %699
  %710 = fmul fast float %707, %700
  %711 = fmul fast float %708, %701
  %712 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %713 = extractvalue %dx.types.CBufRet.i32 %712, 0
  %714 = extractvalue %dx.types.CBufRet.i32 %712, 1
  %715 = uitofp i32 %713 to float
  %716 = uitofp i32 %714 to float
  %717 = fmul fast float %709, %715
  %718 = fmul fast float %710, %716
  %719 = fadd fast float %717, 5.000000e-01
  %720 = fadd fast float %718, 5.000000e-01
  %721 = call float @dx.op.unary.f32(i32 22, float %719)  ; Frc(value)
  %722 = call float @dx.op.unary.f32(i32 22, float %720)  ; Frc(value)
  %723 = call float @dx.op.unary.f32(i32 27, float %719)  ; Round_ni(value)
  %724 = call float @dx.op.unary.f32(i32 27, float %720)  ; Round_ni(value)
  %725 = fadd fast float %723, 1.000000e+00
  %726 = fadd fast float %724, 1.000000e+00
  %727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %728 = extractvalue %dx.types.CBufRet.f32 %727, 0
  %729 = extractvalue %dx.types.CBufRet.f32 %727, 1
  %730 = fmul fast float %728, %725
  %731 = fmul fast float %729, %726
  %732 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %23, float %730, float %731, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %733 = extractvalue %dx.types.ResRet.f32 %732, 0
  %734 = extractvalue %dx.types.ResRet.f32 %732, 1
  %735 = extractvalue %dx.types.ResRet.f32 %732, 2
  %736 = extractvalue %dx.types.ResRet.f32 %732, 3
  %737 = extractvalue %dx.types.CBufRet.i32 %712, 2
  %738 = extractvalue %dx.types.CBufRet.f32 %727, 2
  %739 = uitofp i32 %737 to float
  %740 = fadd fast float %739, -1.000000e+00
  %741 = fmul fast float %740, %733
  %742 = fmul fast float %740, %734
  %743 = fmul fast float %740, %735
  %744 = fmul fast float %740, %736
  %745 = fadd fast float %741, 5.000000e-01
  %746 = fadd fast float %742, 5.000000e-01
  %747 = fadd fast float %743, 5.000000e-01
  %748 = fadd fast float %744, 5.000000e-01
  %749 = fptoui float %745 to i32
  %750 = fptoui float %746 to i32
  %751 = fptoui float %747 to i32
  %752 = fptoui float %748 to i32
  %753 = uitofp i32 %749 to float
  %754 = uitofp i32 %750 to float
  %755 = uitofp i32 %751 to float
  %756 = uitofp i32 %752 to float
  %757 = fadd fast float %753, 5.000000e-01
  %758 = fadd fast float %754, 5.000000e-01
  %759 = fadd fast float %755, 5.000000e-01
  %760 = fadd fast float %756, 5.000000e-01
  %761 = fmul fast float %757, %738
  %762 = fmul fast float %758, %738
  %763 = fmul fast float %759, %738
  %764 = fmul fast float %760, %738
  %765 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %24, float %761, float %711, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %766 = extractvalue %dx.types.ResRet.f32 %765, 0
  %767 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %24, float %762, float %711, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %768 = extractvalue %dx.types.ResRet.f32 %767, 0
  %769 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %24, float %763, float %711, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %770 = extractvalue %dx.types.ResRet.f32 %769, 0
  %771 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %24, float %764, float %711, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %772 = extractvalue %dx.types.ResRet.f32 %771, 0
  %773 = fsub fast float %770, %772
  %774 = fmul fast float %773, %721
  %775 = fadd fast float %774, %772
  %776 = fsub fast float %768, %766
  %777 = fmul fast float %776, %721
  %778 = fadd fast float %777, %766
  %779 = fsub fast float %778, %775
  %780 = fmul fast float %779, %722
  %781 = fadd fast float %780, %775
  %782 = fcmp fast ogt float %781, 0.000000e+00
  br i1 %782, label %783, label %851, !dx.controlflow.hints !63

; <label>:783                                     ; preds = %694
  %784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %785 = extractvalue %dx.types.CBufRet.f32 %784, 0
  %786 = extractvalue %dx.types.CBufRet.f32 %784, 1
  %787 = extractvalue %dx.types.CBufRet.f32 %784, 2
  %788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %789 = extractvalue %dx.types.CBufRet.f32 %788, 0
  %790 = extractvalue %dx.types.CBufRet.f32 %788, 1
  %791 = extractvalue %dx.types.CBufRet.f32 %788, 2
  %792 = fmul fast float %707, %699
  %793 = fmul fast float %708, %699
  %794 = fadd fast float %709, %789
  %795 = fadd fast float %792, %790
  %796 = fadd fast float %793, %791
  %797 = fmul fast float %794, %785
  %798 = fmul fast float %795, %785
  %799 = fmul fast float %796, %785
  %800 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %21, float %797, float %798, float %799, float undef, i32 0, i32 0, i32 0, float %695)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %801 = extractvalue %dx.types.ResRet.f32 %800, 0
  %802 = fmul fast float %794, %786
  %803 = fmul fast float %795, %786
  %804 = fmul fast float %796, %786
  %805 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %21, float %802, float %803, float %804, float undef, i32 0, i32 0, i32 0, float %696)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %806 = extractvalue %dx.types.ResRet.f32 %805, 1
  %807 = fmul fast float %794, %787
  %808 = fmul fast float %795, %787
  %809 = fmul fast float %796, %787
  %810 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %21, float %807, float %808, float %809, float undef, i32 0, i32 0, i32 0, float %697)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %811 = extractvalue %dx.types.ResRet.f32 %810, 2
  %812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %813 = extractvalue %dx.types.CBufRet.f32 %812, 1
  %814 = fmul fast float %806, %801
  %815 = fmul fast float %814, %811
  %816 = call float @dx.op.unary.f32(i32 23, float %815)  ; Log(value)
  %817 = fmul fast float %816, %813
  %818 = call float @dx.op.unary.f32(i32 21, float %817)  ; Exp(value)
  %819 = extractvalue %dx.types.CBufRet.f32 %812, 2
  %820 = fmul fast float %781, %781
  %821 = fmul fast float %820, %818
  %822 = fmul fast float %821, %819
  %823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %824 = extractvalue %dx.types.CBufRet.f32 %823, 3
  %825 = fmul fast float %824, %822
  %826 = bitcast float %825 to i32
  %827 = sitofp i32 %826 to float
  %828 = fptosi float %827 to i32
  %829 = bitcast i32 %828 to float
  %830 = fsub fast float 1.000000e+00, %822
  %831 = bitcast float %830 to i32
  %832 = sitofp i32 %831 to float
  %833 = fptosi float %832 to i32
  %834 = bitcast i32 %833 to float
  %835 = fadd fast float %829, %834
  %836 = bitcast float %835 to i32
  %837 = sub nsw i32 2129859010, %836
  %838 = bitcast i32 %837 to float
  %839 = fmul fast float %838, %829
  %840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %841 = extractvalue %dx.types.CBufRet.f32 %840, 2
  %842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %843 = extractvalue %dx.types.CBufRet.f32 %842, 0
  %844 = fmul fast float %839, %843
  %845 = fadd fast float %844, 1.000000e+00
  %846 = bitcast float %845 to i32
  %847 = sub nsw i32 2129859010, %846
  %848 = bitcast i32 %847 to float
  %849 = fmul fast float %839, %841
  %850 = fmul fast float %849, %848
  br label %851

; <label>:851                                     ; preds = %783, %694
  %852 = phi float [ %850, %783 ], [ %781, %694 ]
  %853 = fmul fast float %852, %561
  %854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %855 = extractvalue %dx.types.CBufRet.f32 %854, 0
  %856 = extractvalue %dx.types.CBufRet.f32 %854, 1
  %857 = extractvalue %dx.types.CBufRet.f32 %854, 2
  %858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %859 = extractvalue %dx.types.CBufRet.f32 %858, 1
  %860 = fmul fast float %855, %853
  %861 = fmul fast float %856, %853
  %862 = fmul fast float %857, %853
  %863 = fadd fast float %860, %671
  %864 = fadd fast float %861, %672
  %865 = fadd fast float %862, %673
  %866 = fmul fast float %859, %853
  %867 = fadd fast float %866, %670
  %868 = fadd fast float %853, %669
  br label %869

; <label>:869                                     ; preds = %851, %668
  %870 = phi float [ %868, %851 ], [ %669, %668 ]
  %871 = phi float [ %867, %851 ], [ %670, %668 ]
  %872 = phi float [ %863, %851 ], [ %671, %668 ]
  %873 = phi float [ %864, %851 ], [ %672, %668 ]
  %874 = phi float [ %865, %851 ], [ %673, %668 ]
  %875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %876 = extractvalue %dx.types.CBufRet.f32 %875, 1
  %877 = fcmp fast ogt float %870, %876
  br i1 %877, label %878, label %884, !dx.controlflow.hints !64

; <label>:878                                     ; preds = %869
  %879 = fdiv fast float 1.000000e+00, %870
  %880 = fmul fast float %879, %872
  %881 = fmul fast float %879, %873
  %882 = fmul fast float %879, %874
  %883 = fmul fast float %879, %871
  br label %884

; <label>:884                                     ; preds = %878, %869
  %885 = phi float [ %883, %878 ], [ %871, %869 ]
  %886 = phi float [ %880, %878 ], [ %872, %869 ]
  %887 = phi float [ %881, %878 ], [ %873, %869 ]
  %888 = phi float [ %882, %878 ], [ %874, %869 ]
  br i1 %877, label %891, label %889, !dx.controlflow.hints !65

; <label>:889                                     ; preds = %884
  %890 = fadd fast float %561, %304
  br label %2335

; <label>:891                                     ; preds = %884
  %892 = fmul fast float %870, 0xBFF7154760000000
  %893 = call float @dx.op.unary.f32(i32 21, float %892)  ; Exp(value)
  %894 = call float @dx.op.unary.f32(i32 7, float %893)  ; Saturate(value)
  %895 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %896 = extractvalue %dx.types.CBufRet.i32 %895, 0
  %897 = icmp eq i32 %896, 1
  br i1 %897, label %898, label %933, !dx.controlflow.hints !66

; <label>:898                                     ; preds = %891
  %899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %900 = extractvalue %dx.types.CBufRet.f32 %899, 0
  %901 = extractvalue %dx.types.CBufRet.f32 %899, 1
  %902 = fsub fast float %301, %900
  %903 = fsub fast float %302, %901
  %904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %905 = extractvalue %dx.types.CBufRet.f32 %904, 0
  %906 = extractvalue %dx.types.CBufRet.f32 %904, 1
  %907 = fmul fast float %902, %905
  %908 = fmul fast float %903, %906
  %909 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %24, float %907, float %908, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %910 = extractvalue %dx.types.ResRet.f32 %909, 0
  %911 = fcmp fast ogt float %910, 0.000000e+00
  %912 = extractvalue %dx.types.CBufRet.i32 %895, 3
  %913 = icmp ne i32 %912, 0
  %914 = and i1 %911, %913
  br i1 %914, label %915, label %933, !dx.controlflow.hints !67

; <label>:915                                     ; preds = %898
  %916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %917 = extractvalue %dx.types.CBufRet.f32 %916, 0
  %918 = extractvalue %dx.types.CBufRet.f32 %916, 1
  %919 = fsub fast float %301, %917
  %920 = fsub fast float %302, %918
  %921 = fmul fast float %919, %919
  %922 = fmul fast float %920, %920
  %923 = fadd fast float %921, %922
  %924 = uitofp i32 %912 to float
  %925 = fmul fast float %924, %924
  %926 = fcmp fast ogt float %923, %925
  br i1 %926, label %933, label %927, !dx.controlflow.hints !68

; <label>:927                                     ; preds = %915
  %928 = call float @dx.op.unary.f32(i32 24, float %923)  ; Sqrt(value)
  %929 = fsub fast float %924, %928
  %930 = fmul fast float %929, 0x3F75555560000000
  %931 = call float @dx.op.unary.f32(i32 7, float %930)  ; Saturate(value)
  %932 = call float @dx.op.binary.f32(i32 36, float %931, float %910)  ; FMin(a,b)
  br label %933

; <label>:933                                     ; preds = %927, %915, %898, %891
  %934 = phi float [ 1.000000e+00, %891 ], [ %932, %927 ], [ %910, %898 ], [ 0.000000e+00, %915 ]
  %935 = fcmp fast ogt float %934, 0.000000e+00
  br i1 %935, label %936, label %1009, !dx.controlflow.hints !69

; <label>:936                                     ; preds = %933
  %937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %938 = extractvalue %dx.types.ResRet.i32 %937, 0
  %939 = extractvalue %dx.types.ResRet.i32 %937, 1
  %940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %941 = extractvalue %dx.types.ResRet.i32 %940, 0
  %942 = extractvalue %dx.types.ResRet.i32 %940, 1
  %943 = extractvalue %dx.types.ResRet.i32 %940, 2
  %944 = extractvalue %dx.types.ResRet.i32 %940, 3
  %945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %946 = extractvalue %dx.types.ResRet.i32 %945, 0
  %947 = extractvalue %dx.types.ResRet.i32 %945, 1
  %948 = extractvalue %dx.types.ResRet.i32 %945, 2
  %949 = extractvalue %dx.types.ResRet.i32 %945, 3
  %950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %951 = extractvalue %dx.types.ResRet.i32 %950, 0
  %952 = extractvalue %dx.types.ResRet.i32 %950, 1
  %953 = extractvalue %dx.types.ResRet.i32 %950, 2
  %954 = extractvalue %dx.types.ResRet.i32 %950, 3
  %955 = and i32 %951, 65535
  %956 = call float @dx.op.legacyF16ToF32(i32 131, i32 %955)  ; LegacyF16ToF32(value)
  %957 = lshr i32 %951, 16
  %958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %957)  ; LegacyF16ToF32(value)
  %959 = and i32 %952, 65535
  %960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %959)  ; LegacyF16ToF32(value)
  %961 = lshr i32 %952, 16
  %962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %961)  ; LegacyF16ToF32(value)
  %963 = and i32 %953, 65535
  %964 = call float @dx.op.legacyF16ToF32(i32 131, i32 %963)  ; LegacyF16ToF32(value)
  %965 = lshr i32 %953, 16
  %966 = call float @dx.op.legacyF16ToF32(i32 131, i32 %965)  ; LegacyF16ToF32(value)
  %967 = and i32 %954, 65535
  %968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %967)  ; LegacyF16ToF32(value)
  %969 = lshr i32 %954, 16
  %970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %969)  ; LegacyF16ToF32(value)
  %971 = and i32 %946, 65535
  %972 = call float @dx.op.legacyF16ToF32(i32 131, i32 %971)  ; LegacyF16ToF32(value)
  %973 = lshr i32 %946, 16
  %974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %973)  ; LegacyF16ToF32(value)
  %975 = and i32 %947, 65535
  %976 = call float @dx.op.legacyF16ToF32(i32 131, i32 %975)  ; LegacyF16ToF32(value)
  %977 = lshr i32 %947, 16
  %978 = call float @dx.op.legacyF16ToF32(i32 131, i32 %977)  ; LegacyF16ToF32(value)
  %979 = and i32 %948, 65535
  %980 = call float @dx.op.legacyF16ToF32(i32 131, i32 %979)  ; LegacyF16ToF32(value)
  %981 = lshr i32 %948, 16
  %982 = call float @dx.op.legacyF16ToF32(i32 131, i32 %981)  ; LegacyF16ToF32(value)
  %983 = and i32 %949, 65535
  %984 = call float @dx.op.legacyF16ToF32(i32 131, i32 %983)  ; LegacyF16ToF32(value)
  %985 = lshr i32 %949, 16
  %986 = call float @dx.op.legacyF16ToF32(i32 131, i32 %985)  ; LegacyF16ToF32(value)
  %987 = and i32 %941, 65535
  %988 = call float @dx.op.legacyF16ToF32(i32 131, i32 %987)  ; LegacyF16ToF32(value)
  %989 = lshr i32 %941, 16
  %990 = call float @dx.op.legacyF16ToF32(i32 131, i32 %989)  ; LegacyF16ToF32(value)
  %991 = and i32 %942, 65535
  %992 = call float @dx.op.legacyF16ToF32(i32 131, i32 %991)  ; LegacyF16ToF32(value)
  %993 = lshr i32 %942, 16
  %994 = call float @dx.op.legacyF16ToF32(i32 131, i32 %993)  ; LegacyF16ToF32(value)
  %995 = and i32 %943, 65535
  %996 = call float @dx.op.legacyF16ToF32(i32 131, i32 %995)  ; LegacyF16ToF32(value)
  %997 = lshr i32 %943, 16
  %998 = call float @dx.op.legacyF16ToF32(i32 131, i32 %997)  ; LegacyF16ToF32(value)
  %999 = and i32 %944, 65535
  %1000 = call float @dx.op.legacyF16ToF32(i32 131, i32 %999)  ; LegacyF16ToF32(value)
  %1001 = lshr i32 %944, 16
  %1002 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1001)  ; LegacyF16ToF32(value)
  %1003 = and i32 %938, 65535
  %1004 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1003)  ; LegacyF16ToF32(value)
  %1005 = lshr i32 %938, 16
  %1006 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1005)  ; LegacyF16ToF32(value)
  %1007 = and i32 %939, 65535
  %1008 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1007)  ; LegacyF16ToF32(value)
  br label %1009

; <label>:1009                                    ; preds = %936, %933
  %1010 = phi float [ %1008, %936 ], [ 0.000000e+00, %933 ]
  %1011 = phi float [ %1006, %936 ], [ 0.000000e+00, %933 ]
  %1012 = phi float [ %1004, %936 ], [ 0.000000e+00, %933 ]
  %1013 = phi float [ %1002, %936 ], [ 0.000000e+00, %933 ]
  %1014 = phi float [ %1000, %936 ], [ 0.000000e+00, %933 ]
  %1015 = phi float [ %998, %936 ], [ 0.000000e+00, %933 ]
  %1016 = phi float [ %996, %936 ], [ 0.000000e+00, %933 ]
  %1017 = phi float [ %994, %936 ], [ 0.000000e+00, %933 ]
  %1018 = phi float [ %992, %936 ], [ 0.000000e+00, %933 ]
  %1019 = phi float [ %990, %936 ], [ 0.000000e+00, %933 ]
  %1020 = phi float [ %988, %936 ], [ 0.000000e+00, %933 ]
  %1021 = phi float [ %986, %936 ], [ 0.000000e+00, %933 ]
  %1022 = phi float [ %984, %936 ], [ 0.000000e+00, %933 ]
  %1023 = phi float [ %982, %936 ], [ 0.000000e+00, %933 ]
  %1024 = phi float [ %980, %936 ], [ 0.000000e+00, %933 ]
  %1025 = phi float [ %978, %936 ], [ 0.000000e+00, %933 ]
  %1026 = phi float [ %976, %936 ], [ 0.000000e+00, %933 ]
  %1027 = phi float [ %974, %936 ], [ 0.000000e+00, %933 ]
  %1028 = phi float [ %972, %936 ], [ 0.000000e+00, %933 ]
  %1029 = phi float [ %970, %936 ], [ 0.000000e+00, %933 ]
  %1030 = phi float [ %968, %936 ], [ 0.000000e+00, %933 ]
  %1031 = phi float [ %966, %936 ], [ 0.000000e+00, %933 ]
  %1032 = phi float [ %964, %936 ], [ 0.000000e+00, %933 ]
  %1033 = phi float [ %962, %936 ], [ 0.000000e+00, %933 ]
  %1034 = phi float [ %960, %936 ], [ 0.000000e+00, %933 ]
  %1035 = phi float [ %958, %936 ], [ 0.000000e+00, %933 ]
  %1036 = phi float [ %956, %936 ], [ 0.000000e+00, %933 ]
  %1037 = fcmp fast olt float %934, 1.000000e+00
  br i1 %1037, label %1038, label %1698, !dx.controlflow.hints !70

; <label>:1038                                    ; preds = %1009
  %1039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1040 = extractvalue %dx.types.CBufRet.f32 %1039, 0
  %1041 = extractvalue %dx.types.CBufRet.f32 %1039, 1
  %1042 = fsub fast float %301, %1040
  %1043 = fsub fast float %302, %1041
  %1044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1045 = extractvalue %dx.types.CBufRet.f32 %1044, 0
  %1046 = extractvalue %dx.types.CBufRet.f32 %1044, 1
  %1047 = fmul fast float %1042, %1045
  %1048 = fmul fast float %1043, %1046
  %1049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1050 = extractvalue %dx.types.CBufRet.f32 %1049, 0
  %1051 = fmul fast float %1050, %1047
  %1052 = extractvalue %dx.types.CBufRet.f32 %1049, 1
  %1053 = fadd fast float %1051, %1052
  %1054 = extractvalue %dx.types.CBufRet.f32 %1049, 2
  %1055 = fmul fast float %1054, %1048
  %1056 = extractvalue %dx.types.CBufRet.f32 %1049, 3
  %1057 = fadd fast float %1055, %1056
  %1058 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %24, float %1053, float %1057, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1059 = extractvalue %dx.types.ResRet.f32 %1058, 0
  %1060 = extractvalue %dx.types.ResRet.f32 %1058, 1
  %1061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1062 = extractvalue %dx.types.CBufRet.f32 %1061, 1
  %1063 = extractvalue %dx.types.CBufRet.f32 %1061, 0
  %1064 = fsub fast float %1062, %1063
  %1065 = fmul fast float %1064, %1059
  %1066 = fadd fast float %1065, %1063
  %1067 = extractvalue %dx.types.CBufRet.f32 %1061, 3
  %1068 = extractvalue %dx.types.CBufRet.f32 %1061, 2
  %1069 = fsub fast float %1067, %1068
  %1070 = fmul fast float %1069, %1060
  %1071 = fadd fast float %1070, %1068
  %1072 = fsub fast float %303, %1066
  %1073 = fsub fast float %1071, %1066
  %1074 = fdiv fast float %1072, %1073
  %1075 = call float @dx.op.unary.f32(i32 7, float %1074)  ; Saturate(value)
  %1076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1077 = extractvalue %dx.types.CBufRet.f32 %1076, 0
  %1078 = fmul fast float %1077, %1075
  %1079 = extractvalue %dx.types.CBufRet.f32 %1076, 1
  %1080 = fadd fast float %1078, %1079
  %1081 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %24, float %1053, float %1057, float %1080, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1082 = extractvalue %dx.types.ResRet.f32 %1081, 0
  %1083 = extractvalue %dx.types.ResRet.f32 %1081, 1
  %1084 = extractvalue %dx.types.ResRet.f32 %1081, 2
  %1085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1086 = extractvalue %dx.types.CBufRet.f32 %1085, 0
  %1087 = extractvalue %dx.types.CBufRet.f32 %1085, 1
  %1088 = extractvalue %dx.types.CBufRet.f32 %1085, 2
  %1089 = fmul fast float %1086, %1082
  %1090 = fmul fast float %1087, %1083
  %1091 = fmul fast float %1088, %1084
  %1092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1093 = extractvalue %dx.types.CBufRet.f32 %1092, 0
  %1094 = extractvalue %dx.types.CBufRet.f32 %1092, 1
  %1095 = extractvalue %dx.types.CBufRet.f32 %1092, 2
  %1096 = fadd fast float %1089, %1093
  %1097 = fadd fast float %1090, %1094
  %1098 = fadd fast float %1091, %1095
  %1099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1100 = extractvalue %dx.types.CBufRet.f32 %1099, 0
  %1101 = fmul fast float %1100, %1047
  %1102 = extractvalue %dx.types.CBufRet.f32 %1099, 1
  %1103 = fadd fast float %1101, %1102
  %1104 = extractvalue %dx.types.CBufRet.f32 %1099, 2
  %1105 = fmul fast float %1104, %1048
  %1106 = extractvalue %dx.types.CBufRet.f32 %1099, 3
  %1107 = fadd fast float %1105, %1106
  %1108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1109 = extractvalue %dx.types.CBufRet.f32 %1108, 0
  %1110 = extractvalue %dx.types.CBufRet.f32 %1108, 1
  %1111 = extractvalue %dx.types.CBufRet.f32 %1108, 2
  %1112 = extractvalue %dx.types.CBufRet.f32 %1108, 3
  %1113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1114 = extractvalue %dx.types.CBufRet.f32 %1113, 0
  %1115 = extractvalue %dx.types.CBufRet.f32 %1113, 1
  %1116 = extractvalue %dx.types.CBufRet.f32 %1113, 2
  %1117 = extractvalue %dx.types.CBufRet.f32 %1113, 3
  %1118 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %24, float %1103, float %1107, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1119 = extractvalue %dx.types.ResRet.f32 %1118, 0
  %1120 = extractvalue %dx.types.ResRet.f32 %1118, 1
  %1121 = extractvalue %dx.types.ResRet.f32 %1118, 2
  %1122 = extractvalue %dx.types.ResRet.f32 %1118, 3
  %1123 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %24, float %1103, float %1107, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1124 = extractvalue %dx.types.ResRet.f32 %1123, 0
  %1125 = extractvalue %dx.types.ResRet.f32 %1123, 1
  %1126 = extractvalue %dx.types.ResRet.f32 %1123, 2
  %1127 = extractvalue %dx.types.ResRet.f32 %1123, 3
  %1128 = fmul fast float %1119, %1096
  %1129 = fmul fast float %1124, %1096
  %1130 = fmul fast float %1126, %1096
  %1131 = fmul fast float %1122, %1096
  %1132 = fadd fast float %1128, %1109
  %1133 = fadd fast float %1129, %1110
  %1134 = fadd fast float %1130, %1111
  %1135 = fadd fast float %1131, %1112
  %1136 = fmul fast float %1120, %1096
  %1137 = fmul fast float %1125, %1096
  %1138 = fadd fast float %1136, %1114
  %1139 = fadd fast float %1137, %1115
  %1140 = fmul fast float %1121, %1096
  %1141 = fmul fast float %1127, %1096
  %1142 = fadd fast float %1140, %1116
  %1143 = fadd fast float %1141, %1117
  %1144 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %24, float %1103, float %1107, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1145 = extractvalue %dx.types.ResRet.f32 %1144, 0
  %1146 = extractvalue %dx.types.ResRet.f32 %1144, 1
  %1147 = extractvalue %dx.types.ResRet.f32 %1144, 2
  %1148 = extractvalue %dx.types.ResRet.f32 %1144, 3
  %1149 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %24, float %1103, float %1107, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1150 = extractvalue %dx.types.ResRet.f32 %1149, 0
  %1151 = extractvalue %dx.types.ResRet.f32 %1149, 1
  %1152 = extractvalue %dx.types.ResRet.f32 %1149, 2
  %1153 = extractvalue %dx.types.ResRet.f32 %1149, 3
  %1154 = fmul fast float %1145, %1097
  %1155 = fmul fast float %1150, %1097
  %1156 = fmul fast float %1152, %1097
  %1157 = fmul fast float %1148, %1097
  %1158 = fadd fast float %1132, %1154
  %1159 = fadd fast float %1133, %1155
  %1160 = fadd fast float %1134, %1156
  %1161 = fadd fast float %1135, %1157
  %1162 = fmul fast float %1146, %1097
  %1163 = fmul fast float %1151, %1097
  %1164 = fadd fast float %1138, %1162
  %1165 = fadd fast float %1139, %1163
  %1166 = fmul fast float %1147, %1097
  %1167 = fmul fast float %1153, %1097
  %1168 = fadd fast float %1142, %1166
  %1169 = fadd fast float %1143, %1167
  %1170 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %24, float %1103, float %1107, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1171 = extractvalue %dx.types.ResRet.f32 %1170, 0
  %1172 = extractvalue %dx.types.ResRet.f32 %1170, 1
  %1173 = extractvalue %dx.types.ResRet.f32 %1170, 2
  %1174 = extractvalue %dx.types.ResRet.f32 %1170, 3
  %1175 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %24, float %1103, float %1107, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1176 = extractvalue %dx.types.ResRet.f32 %1175, 0
  %1177 = extractvalue %dx.types.ResRet.f32 %1175, 1
  %1178 = extractvalue %dx.types.ResRet.f32 %1175, 2
  %1179 = extractvalue %dx.types.ResRet.f32 %1175, 3
  %1180 = fmul fast float %1171, %1098
  %1181 = fmul fast float %1176, %1098
  %1182 = fmul fast float %1178, %1098
  %1183 = fmul fast float %1174, %1098
  %1184 = fadd fast float %1158, %1180
  %1185 = fadd fast float %1159, %1181
  %1186 = fadd fast float %1160, %1182
  %1187 = fadd fast float %1161, %1183
  %1188 = fmul fast float %1172, %1098
  %1189 = fmul fast float %1177, %1098
  %1190 = fadd fast float %1164, %1188
  %1191 = fadd fast float %1165, %1189
  %1192 = fmul fast float %1173, %1098
  %1193 = fmul fast float %1179, %1098
  %1194 = fadd fast float %1168, %1192
  %1195 = fadd fast float %1169, %1193
  %1196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1197 = extractvalue %dx.types.CBufRet.f32 %1196, 0
  %1198 = fsub fast float %301, %1197
  %1199 = fsub fast float %1040, %301
  %1200 = call float @dx.op.binary.f32(i32 35, float %1199, float %1198)  ; FMax(a,b)
  %1201 = extractvalue %dx.types.CBufRet.f32 %1196, 1
  %1202 = fsub fast float %302, %1201
  %1203 = fsub fast float %1041, %302
  %1204 = call float @dx.op.binary.f32(i32 35, float %1203, float %1202)  ; FMax(a,b)
  %1205 = call float @dx.op.binary.f32(i32 35, float %1200, float %1204)  ; FMax(a,b)
  %1206 = extractvalue %dx.types.CBufRet.f32 %1044, 3
  %1207 = fmul fast float %1206, %1205
  %1208 = call float @dx.op.unary.f32(i32 7, float %1207)  ; Saturate(value)
  %1209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1210 = extractvalue %dx.types.CBufRet.f32 %1209, 0
  %1211 = extractvalue %dx.types.CBufRet.f32 %1209, 1
  %1212 = extractvalue %dx.types.CBufRet.f32 %1209, 2
  %1213 = extractvalue %dx.types.CBufRet.f32 %1209, 3
  %1214 = fsub fast float %1210, %1184
  %1215 = fsub fast float %1211, %1185
  %1216 = fsub fast float %1212, %1186
  %1217 = fsub fast float %1213, %1187
  %1218 = fmul fast float %1214, %1208
  %1219 = fmul fast float %1215, %1208
  %1220 = fmul fast float %1216, %1208
  %1221 = fmul fast float %1217, %1208
  %1222 = fadd fast float %1218, %1184
  %1223 = fadd fast float %1219, %1185
  %1224 = fadd fast float %1220, %1186
  %1225 = fadd fast float %1221, %1187
  %1226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1227 = extractvalue %dx.types.CBufRet.f32 %1226, 0
  %1228 = extractvalue %dx.types.CBufRet.f32 %1226, 1
  %1229 = fsub fast float %1227, %1190
  %1230 = fsub fast float %1228, %1191
  %1231 = fmul fast float %1229, %1208
  %1232 = fmul fast float %1230, %1208
  %1233 = fadd fast float %1231, %1190
  %1234 = fadd fast float %1232, %1191
  %1235 = extractvalue %dx.types.CBufRet.f32 %1226, 2
  %1236 = extractvalue %dx.types.CBufRet.f32 %1226, 3
  %1237 = fsub fast float %1235, %1194
  %1238 = fsub fast float %1236, %1195
  %1239 = fmul fast float %1237, %1208
  %1240 = fmul fast float %1238, %1208
  %1241 = fadd fast float %1239, %1194
  %1242 = fadd fast float %1240, %1195
  %1243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1244 = extractvalue %dx.types.CBufRet.f32 %1243, 0
  %1245 = fmul fast float %1244, %1222
  %1246 = fmul fast float %1244, %1223
  %1247 = fmul fast float %1244, %1224
  %1248 = fmul fast float %1244, %1225
  %1249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1250 = extractvalue %dx.types.CBufRet.f32 %1249, 0
  %1251 = fmul fast float %1250, %1233
  %1252 = fmul fast float %1250, %1234
  %1253 = fadd fast float %1251, %1245
  %1254 = fadd fast float %1252, %1247
  %1255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1256 = extractvalue %dx.types.CBufRet.f32 %1255, 0
  %1257 = fmul fast float %1256, %1241
  %1258 = fmul fast float %1256, %1242
  %1259 = fadd fast float %1253, %1257
  %1260 = fadd fast float %1254, %1258
  %1261 = extractvalue %dx.types.CBufRet.f32 %1243, 1
  %1262 = fmul fast float %1261, %1222
  %1263 = fmul fast float %1261, %1223
  %1264 = fmul fast float %1261, %1224
  %1265 = fmul fast float %1261, %1225
  %1266 = extractvalue %dx.types.CBufRet.f32 %1249, 1
  %1267 = fmul fast float %1266, %1233
  %1268 = fmul fast float %1266, %1234
  %1269 = fadd fast float %1267, %1262
  %1270 = fadd fast float %1268, %1264
  %1271 = extractvalue %dx.types.CBufRet.f32 %1255, 1
  %1272 = fmul fast float %1271, %1241
  %1273 = fmul fast float %1271, %1242
  %1274 = fadd fast float %1269, %1272
  %1275 = fadd fast float %1270, %1273
  %1276 = extractvalue %dx.types.CBufRet.f32 %1243, 2
  %1277 = fmul fast float %1276, %1222
  %1278 = fmul fast float %1276, %1223
  %1279 = fmul fast float %1276, %1224
  %1280 = fmul fast float %1276, %1225
  %1281 = extractvalue %dx.types.CBufRet.f32 %1249, 2
  %1282 = fmul fast float %1281, %1233
  %1283 = fmul fast float %1281, %1234
  %1284 = fadd fast float %1282, %1277
  %1285 = fadd fast float %1283, %1279
  %1286 = extractvalue %dx.types.CBufRet.f32 %1255, 2
  %1287 = fmul fast float %1286, %1241
  %1288 = fmul fast float %1286, %1242
  %1289 = fadd fast float %1284, %1287
  %1290 = fadd fast float %1285, %1288
  %1291 = fmul fast float %1278, %1278
  %1292 = fmul fast float %1290, %1290
  %1293 = fmul fast float %1280, %1280
  %1294 = fadd fast float %1293, %1291
  %1295 = fadd fast float %1294, %1292
  %1296 = call float @dx.op.unary.f32(i32 24, float %1295)  ; Sqrt(value)
  %1297 = fcmp fast ugt float %1296, 0.000000e+00
  br i1 %1297, label %1298, label %1313, !dx.controlflow.hints !71

; <label>:1298                                    ; preds = %1038
  %1299 = fsub fast float -0.000000e+00, %1280
  %1300 = fdiv fast float %1299, %1296
  %1301 = fsub fast float -0.000000e+00, %1278
  %1302 = fdiv fast float %1301, %1296
  %1303 = fdiv fast float %1290, %1296
  %1304 = fmul fast float %1289, 0x3FE279A760000000
  %1305 = fmul fast float %1302, %1278
  %1306 = fmul fast float %1303, %1290
  %1307 = fmul fast float %1300, %1280
  %1308 = fadd fast float %1305, %1307
  %1309 = fsub fast float %1308, %1306
  %1310 = call float @dx.op.unary.f32(i32 6, float %1309)  ; FAbs(value)
  %1311 = fadd fast float %1310, 0x3DDB7CDFE0000000
  %1312 = fdiv fast float %1304, %1311
  br label %1313

; <label>:1313                                    ; preds = %1298, %1038
  %1314 = phi float [ %1312, %1298 ], [ 1.000000e+00, %1038 ]
  %1315 = fmul fast float %1263, %1263
  %1316 = fmul fast float %1275, %1275
  %1317 = fmul fast float %1265, %1265
  %1318 = fadd fast float %1317, %1315
  %1319 = fadd fast float %1318, %1316
  %1320 = call float @dx.op.unary.f32(i32 24, float %1319)  ; Sqrt(value)
  %1321 = fcmp fast ugt float %1320, 0.000000e+00
  br i1 %1321, label %1322, label %1337, !dx.controlflow.hints !71

; <label>:1322                                    ; preds = %1313
  %1323 = fsub fast float -0.000000e+00, %1265
  %1324 = fdiv fast float %1323, %1320
  %1325 = fsub fast float -0.000000e+00, %1263
  %1326 = fdiv fast float %1325, %1320
  %1327 = fdiv fast float %1275, %1320
  %1328 = fmul fast float %1274, 0x3FE279A760000000
  %1329 = fmul fast float %1326, %1263
  %1330 = fmul fast float %1327, %1275
  %1331 = fmul fast float %1324, %1265
  %1332 = fadd fast float %1329, %1331
  %1333 = fsub fast float %1332, %1330
  %1334 = call float @dx.op.unary.f32(i32 6, float %1333)  ; FAbs(value)
  %1335 = fadd fast float %1334, 0x3DDB7CDFE0000000
  %1336 = fdiv fast float %1328, %1335
  br label %1337

; <label>:1337                                    ; preds = %1322, %1313
  %1338 = phi float [ %1336, %1322 ], [ 1.000000e+00, %1313 ]
  %1339 = call float @dx.op.binary.f32(i32 36, float %1338, float %1314)  ; FMin(a,b)
  %1340 = fmul fast float %1246, %1246
  %1341 = fmul fast float %1260, %1260
  %1342 = fmul fast float %1248, %1248
  %1343 = fadd fast float %1342, %1340
  %1344 = fadd fast float %1343, %1341
  %1345 = call float @dx.op.unary.f32(i32 24, float %1344)  ; Sqrt(value)
  %1346 = fcmp fast ugt float %1345, 0.000000e+00
  br i1 %1346, label %1347, label %1362, !dx.controlflow.hints !71

; <label>:1347                                    ; preds = %1337
  %1348 = fsub fast float -0.000000e+00, %1248
  %1349 = fdiv fast float %1348, %1345
  %1350 = fsub fast float -0.000000e+00, %1246
  %1351 = fdiv fast float %1350, %1345
  %1352 = fdiv fast float %1260, %1345
  %1353 = fmul fast float %1259, 0x3FE279A760000000
  %1354 = fmul fast float %1351, %1246
  %1355 = fmul fast float %1352, %1260
  %1356 = fmul fast float %1349, %1248
  %1357 = fadd fast float %1354, %1356
  %1358 = fsub fast float %1357, %1355
  %1359 = call float @dx.op.unary.f32(i32 6, float %1358)  ; FAbs(value)
  %1360 = fadd fast float %1359, 0x3DDB7CDFE0000000
  %1361 = fdiv fast float %1353, %1360
  br label %1362

; <label>:1362                                    ; preds = %1347, %1337
  %1363 = phi float [ %1361, %1347 ], [ 1.000000e+00, %1337 ]
  %1364 = call float @dx.op.binary.f32(i32 36, float %1363, float %1339)  ; FMin(a,b)
  %1365 = call float @dx.op.unary.f32(i32 7, float %1364)  ; Saturate(value)
  %1366 = fcmp fast olt float %1365, 1.000000e+00
  br i1 %1366, label %1367, label %1377, !dx.controlflow.hints !72

; <label>:1367                                    ; preds = %1362
  %1368 = fmul fast float %1365, %1246
  %1369 = fmul fast float %1365, %1260
  %1370 = fmul fast float %1365, %1248
  %1371 = fmul fast float %1365, %1263
  %1372 = fmul fast float %1365, %1275
  %1373 = fmul fast float %1365, %1265
  %1374 = fmul fast float %1365, %1278
  %1375 = fmul fast float %1365, %1290
  %1376 = fmul fast float %1365, %1280
  br label %1377

; <label>:1377                                    ; preds = %1367, %1362
  %1378 = phi float [ %1374, %1367 ], [ %1278, %1362 ]
  %1379 = phi float [ %1375, %1367 ], [ %1290, %1362 ]
  %1380 = phi float [ %1376, %1367 ], [ %1280, %1362 ]
  %1381 = phi float [ %1371, %1367 ], [ %1263, %1362 ]
  %1382 = phi float [ %1372, %1367 ], [ %1275, %1362 ]
  %1383 = phi float [ %1373, %1367 ], [ %1265, %1362 ]
  %1384 = phi float [ %1368, %1367 ], [ %1246, %1362 ]
  %1385 = phi float [ %1369, %1367 ], [ %1260, %1362 ]
  %1386 = phi float [ %1370, %1367 ], [ %1248, %1362 ]
  %1387 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1259)  ; FMax(a,b)
  %1388 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1274)  ; FMax(a,b)
  %1389 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1289)  ; FMax(a,b)
  %1390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1391 = extractvalue %dx.types.CBufRet.f32 %1390, 0
  %1392 = fcmp fast ogt float %1391, 0.000000e+00
  %1393 = fcmp fast oge float %1047, 0.000000e+00
  %1394 = and i1 %1393, %1392
  %1395 = fcmp fast ole float %1047, 1.000000e+00
  %1396 = and i1 %1395, %1394
  %1397 = fcmp fast oge float %1048, 0.000000e+00
  %1398 = and i1 %1397, %1396
  %1399 = fcmp fast ole float %1048, 1.000000e+00
  %1400 = and i1 %1399, %1398
  br i1 %1400, label %1401, label %1546, !dx.controlflow.hints !73

; <label>:1401                                    ; preds = %1377
  %1402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1403 = extractvalue %dx.types.CBufRet.f32 %1402, 2
  %1404 = extractvalue %dx.types.CBufRet.f32 %1402, 3
  %1405 = fmul fast float %1403, %1047
  %1406 = fmul fast float %1404, %1048
  %1407 = call float @dx.op.unary.f32(i32 27, float %1405)  ; Round_ni(value)
  %1408 = call float @dx.op.unary.f32(i32 27, float %1406)  ; Round_ni(value)
  %1409 = fptosi float %1407 to i32
  %1410 = fptosi float %1408 to i32
  %1411 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %1409, i32 %1410, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1412 = extractvalue %dx.types.ResRet.i32 %1411, 0
  %1413 = and i32 %1412, 65535
  %1414 = lshr i32 %1412, 16
  %1415 = icmp eq i32 %1413, 65535
  br i1 %1415, label %1452, label %1416, !dx.controlflow.hints !74

; <label>:1416                                    ; preds = %1401
  %1417 = extractvalue %dx.types.CBufRet.f32 %1390, 1
  %1418 = extractvalue %dx.types.CBufRet.f32 %1402, 0
  %1419 = extractvalue %dx.types.CBufRet.f32 %1402, 1
  %1420 = fmul fast float %1418, %1047
  %1421 = fmul fast float %1419, %1048
  %1422 = fmul fast float %1420, 1.250000e-01
  %1423 = fmul fast float %1421, 1.250000e-01
  %1424 = call float @dx.op.unary.f32(i32 27, float %1422)  ; Round_ni(value)
  %1425 = call float @dx.op.unary.f32(i32 27, float %1423)  ; Round_ni(value)
  %1426 = fmul fast float %1424, 8.000000e+00
  %1427 = fmul fast float %1425, 8.000000e+00
  %1428 = and i32 %1412, 255
  %1429 = lshr i32 %1412, 8
  %1430 = and i32 %1429, 255
  %1431 = mul nuw nsw i32 %1428, 9
  %1432 = uitofp i32 %1431 to float
  %1433 = mul nuw nsw i32 %1430, 9
  %1434 = uitofp i32 %1433 to float
  %1435 = fadd fast float %1432, 5.000000e-01
  %1436 = fadd fast float %1435, %1420
  %1437 = fsub fast float %1436, %1426
  %1438 = fadd fast float %1434, 5.000000e-01
  %1439 = fadd fast float %1438, %1421
  %1440 = fsub fast float %1439, %1427
  %1441 = fdiv fast float %1437, %1391
  %1442 = fdiv fast float %1440, %1417
  %1443 = fmul fast float %1075, 4.375000e-01
  %1444 = fadd fast float %1443, 3.125000e-02
  %1445 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %24, float %1441, float %1442, float %1444, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1446 = extractvalue %dx.types.ResRet.f32 %1445, 0
  %1447 = extractvalue %dx.types.ResRet.f32 %1445, 1
  %1448 = extractvalue %dx.types.ResRet.f32 %1445, 2
  %1449 = fadd fast float %1446, %1387
  %1450 = fadd fast float %1447, %1388
  %1451 = fadd fast float %1448, %1389
  br label %1452

; <label>:1452                                    ; preds = %1416, %1401
  %1453 = phi float [ %1451, %1416 ], [ %1389, %1401 ]
  %1454 = phi float [ %1450, %1416 ], [ %1388, %1401 ]
  %1455 = phi float [ %1449, %1416 ], [ %1387, %1401 ]
  %1456 = icmp eq i32 %1414, 65535
  br i1 %1456, label %1546, label %1457, !dx.controlflow.hints !75

; <label>:1457                                    ; preds = %1452
  %1458 = extractvalue %dx.types.CBufRet.f32 %1390, 1
  %1459 = extractvalue %dx.types.CBufRet.f32 %1402, 0
  %1460 = extractvalue %dx.types.CBufRet.f32 %1402, 1
  %1461 = fmul fast float %1459, %1047
  %1462 = fmul fast float %1460, %1048
  %1463 = fmul fast float %1461, 1.250000e-01
  %1464 = fmul fast float %1462, 1.250000e-01
  %1465 = call float @dx.op.unary.f32(i32 27, float %1463)  ; Round_ni(value)
  %1466 = call float @dx.op.unary.f32(i32 27, float %1464)  ; Round_ni(value)
  %1467 = fmul fast float %1465, 8.000000e+00
  %1468 = fmul fast float %1466, 8.000000e+00
  %1469 = fsub fast float %1461, %1467
  %1470 = fsub fast float %1462, %1468
  %1471 = fadd fast float %1469, 5.000000e-01
  %1472 = fadd fast float %1470, 5.000000e-01
  %1473 = and i32 %1414, 255
  %1474 = lshr i32 %1412, 24
  %1475 = mul nuw nsw i32 %1473, 9
  %1476 = uitofp i32 %1475 to float
  %1477 = mul nuw nsw i32 %1474, 9
  %1478 = uitofp i32 %1477 to float
  %1479 = fadd fast float %1471, %1476
  %1480 = fadd fast float %1472, %1478
  %1481 = fdiv fast float %1479, %1391
  %1482 = fdiv fast float %1480, %1458
  %1483 = fmul fast float %1075, 4.375000e-01
  %1484 = fadd fast float %1483, 3.125000e-02
  %1485 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %24, float %1481, float %1482, float %1484, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1486 = extractvalue %dx.types.ResRet.f32 %1485, 0
  %1487 = extractvalue %dx.types.ResRet.f32 %1485, 1
  %1488 = extractvalue %dx.types.ResRet.f32 %1485, 2
  %1489 = fadd fast float %1483, 5.312500e-01
  %1490 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %24, float %1481, float %1482, float %1489, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1491 = extractvalue %dx.types.ResRet.f32 %1490, 0
  %1492 = extractvalue %dx.types.ResRet.f32 %1490, 1
  %1493 = extractvalue %dx.types.ResRet.f32 %1490, 2
  %1494 = fmul fast float %1491, 2.000000e+00
  %1495 = fmul fast float %1492, 2.000000e+00
  %1496 = fmul fast float %1493, 2.000000e+00
  %1497 = fadd fast float %1494, -1.000000e+00
  %1498 = fadd fast float %1495, -1.000000e+00
  %1499 = fadd fast float %1496, -1.000000e+00
  %1500 = fmul fast float %1497, %1497
  %1501 = fmul fast float %1498, %1498
  %1502 = fadd fast float %1500, %1501
  %1503 = fmul fast float %1499, %1499
  %1504 = fadd fast float %1502, %1503
  %1505 = call float @dx.op.unary.f32(i32 24, float %1504)  ; Sqrt(value)
  %1506 = fcmp fast ogt float %1505, 0.000000e+00
  br i1 %1506, label %1507, label %1511, !dx.controlflow.hints !76

; <label>:1507                                    ; preds = %1457
  %1508 = fdiv fast float %1497, %1505
  %1509 = fdiv fast float %1498, %1505
  %1510 = fdiv fast float %1499, %1505
  br label %1511

; <label>:1511                                    ; preds = %1507, %1457
  %1512 = phi float [ %1508, %1507 ], [ 0.000000e+00, %1457 ]
  %1513 = phi float [ %1509, %1507 ], [ 0.000000e+00, %1457 ]
  %1514 = phi float [ %1510, %1507 ], [ 0.000000e+00, %1457 ]
  %1515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1516 = extractvalue %dx.types.CBufRet.f32 %1515, 0
  %1517 = extractvalue %dx.types.CBufRet.f32 %1515, 1
  %1518 = fsub fast float %301, %1516
  %1519 = fsub fast float %302, %1517
  %1520 = fmul fast float %1518, %1518
  %1521 = fmul fast float %1519, %1519
  %1522 = fadd fast float %1520, %1521
  %1523 = call float @dx.op.unary.f32(i32 24, float %1522)  ; Sqrt(value)
  %1524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1525 = extractvalue %dx.types.CBufRet.f32 %1524, 0
  %1526 = extractvalue %dx.types.CBufRet.f32 %1524, 1
  %1527 = fsub fast float %1523, %1525
  %1528 = fdiv fast float %1527, %1526
  %1529 = call float @dx.op.unary.f32(i32 7, float %1528)  ; Saturate(value)
  %1530 = fmul fast float %1529, 2.000000e+00
  %1531 = fsub fast float 3.000000e+00, %1530
  %1532 = fmul fast float %1529, %1529
  %1533 = fmul fast float %1532, %1531
  %1534 = call float @dx.op.dot3.f32(i32 55, float %1512, float %1513, float %1514, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1535 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1534)  ; FMax(a,b)
  %1536 = fmul fast float %1535, 0x400C5BF8A0000000
  %1537 = fmul fast float %1533, %1486
  %1538 = fmul fast float %1537, %1536
  %1539 = fadd fast float %1538, %1455
  %1540 = fmul fast float %1533, %1487
  %1541 = fmul fast float %1540, %1536
  %1542 = fadd fast float %1541, %1454
  %1543 = fmul fast float %1533, %1488
  %1544 = fmul fast float %1543, %1536
  %1545 = fadd fast float %1544, %1453
  br label %1546

; <label>:1546                                    ; preds = %1511, %1452, %1377
  %1547 = phi float [ %1545, %1511 ], [ %1453, %1452 ], [ %1389, %1377 ]
  %1548 = phi float [ %1542, %1511 ], [ %1454, %1452 ], [ %1388, %1377 ]
  %1549 = phi float [ %1539, %1511 ], [ %1455, %1452 ], [ %1387, %1377 ]
  %1550 = fcmp fast ogt float %303, %1071
  %1551 = and i1 %1393, %1550
  %1552 = and i1 %1395, %1551
  %1553 = and i1 %1397, %1552
  %1554 = and i1 %1399, %1553
  br i1 %1554, label %1555, label %1612, !dx.controlflow.hints !77

; <label>:1555                                    ; preds = %1546
  %1556 = fmul fast float %1073, 0x3FC24924A0000000
  %1557 = fsub fast float %303, %1071
  %1558 = fdiv fast float %1557, %1556
  %1559 = call float @dx.op.unary.f32(i32 7, float %1558)  ; Saturate(value)
  %1560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1561 = extractvalue %dx.types.CBufRet.f32 %1560, 0
  %1562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1563 = extractvalue %dx.types.CBufRet.f32 %1562, 0
  %1564 = extractvalue %dx.types.CBufRet.f32 %1562, 1
  %1565 = extractvalue %dx.types.CBufRet.f32 %1562, 2
  %1566 = fsub fast float %1561, %1549
  %1567 = fsub fast float %1563, %1384
  %1568 = fsub fast float %1564, %1385
  %1569 = fsub fast float %1565, %1386
  %1570 = fmul fast float %1566, %1559
  %1571 = fmul fast float %1567, %1559
  %1572 = fmul fast float %1568, %1559
  %1573 = fmul fast float %1569, %1559
  %1574 = fadd fast float %1570, %1549
  %1575 = fadd fast float %1571, %1384
  %1576 = fadd fast float %1572, %1385
  %1577 = fadd fast float %1573, %1386
  %1578 = extractvalue %dx.types.CBufRet.f32 %1560, 1
  %1579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1580 = extractvalue %dx.types.CBufRet.f32 %1579, 0
  %1581 = extractvalue %dx.types.CBufRet.f32 %1579, 1
  %1582 = extractvalue %dx.types.CBufRet.f32 %1579, 2
  %1583 = fsub fast float %1578, %1548
  %1584 = fsub fast float %1580, %1381
  %1585 = fsub fast float %1581, %1382
  %1586 = fsub fast float %1582, %1383
  %1587 = fmul fast float %1583, %1559
  %1588 = fmul fast float %1584, %1559
  %1589 = fmul fast float %1585, %1559
  %1590 = fmul fast float %1586, %1559
  %1591 = fadd fast float %1587, %1548
  %1592 = fadd fast float %1588, %1381
  %1593 = fadd fast float %1589, %1382
  %1594 = fadd fast float %1590, %1383
  %1595 = extractvalue %dx.types.CBufRet.f32 %1560, 2
  %1596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1597 = extractvalue %dx.types.CBufRet.f32 %1596, 0
  %1598 = extractvalue %dx.types.CBufRet.f32 %1596, 1
  %1599 = extractvalue %dx.types.CBufRet.f32 %1596, 2
  %1600 = fsub fast float %1595, %1547
  %1601 = fsub fast float %1597, %1378
  %1602 = fsub fast float %1598, %1379
  %1603 = fsub fast float %1599, %1380
  %1604 = fmul fast float %1600, %1559
  %1605 = fmul fast float %1601, %1559
  %1606 = fmul fast float %1602, %1559
  %1607 = fmul fast float %1603, %1559
  %1608 = fadd fast float %1604, %1547
  %1609 = fadd fast float %1605, %1378
  %1610 = fadd fast float %1606, %1379
  %1611 = fadd fast float %1607, %1380
  br label %1612

; <label>:1612                                    ; preds = %1555, %1546
  %1613 = phi float [ %1608, %1555 ], [ %1547, %1546 ]
  %1614 = phi float [ %1609, %1555 ], [ %1378, %1546 ]
  %1615 = phi float [ %1610, %1555 ], [ %1379, %1546 ]
  %1616 = phi float [ %1611, %1555 ], [ %1380, %1546 ]
  %1617 = phi float [ %1591, %1555 ], [ %1548, %1546 ]
  %1618 = phi float [ %1592, %1555 ], [ %1381, %1546 ]
  %1619 = phi float [ %1593, %1555 ], [ %1382, %1546 ]
  %1620 = phi float [ %1594, %1555 ], [ %1383, %1546 ]
  %1621 = phi float [ %1574, %1555 ], [ %1549, %1546 ]
  %1622 = phi float [ %1575, %1555 ], [ %1384, %1546 ]
  %1623 = phi float [ %1576, %1555 ], [ %1385, %1546 ]
  %1624 = phi float [ %1577, %1555 ], [ %1386, %1546 ]
  %1625 = extractvalue %dx.types.CBufRet.f32 %1196, 3
  %1626 = fmul fast float %1625, %1621
  %1627 = fmul fast float %1625, %1617
  %1628 = fmul fast float %1625, %1613
  %1629 = fmul fast float %1622, 1.500000e+00
  %1630 = fmul fast float %1629, %1625
  %1631 = fmul fast float %1623, 1.500000e+00
  %1632 = fmul fast float %1631, %1625
  %1633 = fmul fast float %1624, 1.500000e+00
  %1634 = fmul fast float %1633, %1625
  %1635 = fmul fast float %1618, 1.500000e+00
  %1636 = fmul fast float %1635, %1625
  %1637 = fmul fast float %1619, 1.500000e+00
  %1638 = fmul fast float %1637, %1625
  %1639 = fmul fast float %1620, 1.500000e+00
  %1640 = fmul fast float %1639, %1625
  %1641 = fmul fast float %1614, 1.500000e+00
  %1642 = fmul fast float %1641, %1625
  %1643 = fmul fast float %1615, 1.500000e+00
  %1644 = fmul fast float %1643, %1625
  %1645 = fmul fast float %1616, 1.500000e+00
  %1646 = fmul fast float %1645, %1625
  %1647 = fsub fast float %1036, %1626
  %1648 = fmul fast float %1647, %934
  %1649 = fadd fast float %1648, %1626
  %1650 = fsub fast float %1035, %1630
  %1651 = fmul fast float %1650, %934
  %1652 = fadd fast float %1651, %1630
  %1653 = fsub fast float %1034, %1632
  %1654 = fmul fast float %1653, %934
  %1655 = fadd fast float %1654, %1632
  %1656 = fsub fast float %1033, %1634
  %1657 = fmul fast float %1656, %934
  %1658 = fadd fast float %1657, %1634
  %1659 = fmul fast float %1032, %934
  %1660 = fmul fast float %1031, %934
  %1661 = fmul fast float %1030, %934
  %1662 = fmul fast float %1029, %934
  %1663 = fmul fast float %1028, %934
  %1664 = fsub fast float %1027, %1627
  %1665 = fmul fast float %1664, %934
  %1666 = fadd fast float %1665, %1627
  %1667 = fsub fast float %1026, %1636
  %1668 = fmul fast float %1667, %934
  %1669 = fadd fast float %1668, %1636
  %1670 = fsub fast float %1025, %1638
  %1671 = fmul fast float %1670, %934
  %1672 = fadd fast float %1671, %1638
  %1673 = fsub fast float %1024, %1640
  %1674 = fmul fast float %1673, %934
  %1675 = fadd fast float %1674, %1640
  %1676 = fmul fast float %1023, %934
  %1677 = fmul fast float %1022, %934
  %1678 = fmul fast float %1021, %934
  %1679 = fmul fast float %1020, %934
  %1680 = fmul fast float %1019, %934
  %1681 = fsub fast float %1018, %1628
  %1682 = fmul fast float %1681, %934
  %1683 = fadd fast float %1682, %1628
  %1684 = fsub fast float %1017, %1642
  %1685 = fmul fast float %1684, %934
  %1686 = fadd fast float %1685, %1642
  %1687 = fsub fast float %1016, %1644
  %1688 = fmul fast float %1687, %934
  %1689 = fadd fast float %1688, %1644
  %1690 = fsub fast float %1015, %1646
  %1691 = fmul fast float %1690, %934
  %1692 = fadd fast float %1691, %1646
  %1693 = fmul fast float %1014, %934
  %1694 = fmul fast float %1013, %934
  %1695 = fmul fast float %1012, %934
  %1696 = fmul fast float %1011, %934
  %1697 = fmul fast float %1010, %934
  br label %1698

; <label>:1698                                    ; preds = %1612, %1009
  %1699 = phi float [ %1697, %1612 ], [ %1010, %1009 ]
  %1700 = phi float [ %1696, %1612 ], [ %1011, %1009 ]
  %1701 = phi float [ %1695, %1612 ], [ %1012, %1009 ]
  %1702 = phi float [ %1694, %1612 ], [ %1013, %1009 ]
  %1703 = phi float [ %1693, %1612 ], [ %1014, %1009 ]
  %1704 = phi float [ %1692, %1612 ], [ %1015, %1009 ]
  %1705 = phi float [ %1689, %1612 ], [ %1016, %1009 ]
  %1706 = phi float [ %1686, %1612 ], [ %1017, %1009 ]
  %1707 = phi float [ %1683, %1612 ], [ %1018, %1009 ]
  %1708 = phi float [ %1680, %1612 ], [ %1019, %1009 ]
  %1709 = phi float [ %1679, %1612 ], [ %1020, %1009 ]
  %1710 = phi float [ %1678, %1612 ], [ %1021, %1009 ]
  %1711 = phi float [ %1677, %1612 ], [ %1022, %1009 ]
  %1712 = phi float [ %1676, %1612 ], [ %1023, %1009 ]
  %1713 = phi float [ %1675, %1612 ], [ %1024, %1009 ]
  %1714 = phi float [ %1672, %1612 ], [ %1025, %1009 ]
  %1715 = phi float [ %1669, %1612 ], [ %1026, %1009 ]
  %1716 = phi float [ %1666, %1612 ], [ %1027, %1009 ]
  %1717 = phi float [ %1663, %1612 ], [ %1028, %1009 ]
  %1718 = phi float [ %1662, %1612 ], [ %1029, %1009 ]
  %1719 = phi float [ %1661, %1612 ], [ %1030, %1009 ]
  %1720 = phi float [ %1660, %1612 ], [ %1031, %1009 ]
  %1721 = phi float [ %1659, %1612 ], [ %1032, %1009 ]
  %1722 = phi float [ %1658, %1612 ], [ %1033, %1009 ]
  %1723 = phi float [ %1655, %1612 ], [ %1034, %1009 ]
  %1724 = phi float [ %1652, %1612 ], [ %1035, %1009 ]
  %1725 = phi float [ %1649, %1612 ], [ %1036, %1009 ]
  %1726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1727 = extractvalue %dx.types.CBufRet.f32 %1726, 2
  %1728 = fmul fast float %1727, %1727
  %1729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1730 = extractvalue %dx.types.CBufRet.f32 %1729, 0
  %1731 = extractvalue %dx.types.CBufRet.f32 %1729, 1
  %1732 = extractvalue %dx.types.CBufRet.f32 %1729, 2
  %1733 = fmul fast float %1725, 0x3FD20DD760000000
  %1734 = fmul fast float %1732, %1723
  %1735 = fmul fast float %1732, %1732
  %1736 = fmul fast float %1735, 0x3FEE471020000000
  %1737 = fadd fast float %1736, 0xBFD42F6020000000
  %1738 = fmul fast float %1737, %1719
  %1739 = fmul fast float %1730, %1722
  %1740 = fmul fast float %1731, %1724
  %1741 = fmul fast float %1732, 0x3FF17B1420000000
  %1742 = fmul fast float %1728, %1718
  %1743 = fmul fast float %1742, %1730
  %1744 = fmul fast float %1743, %1741
  %1745 = fmul fast float %1728, %1720
  %1746 = fmul fast float %1745, %1731
  %1747 = fmul fast float %1746, %1741
  %1748 = fmul fast float %1730, %1730
  %1749 = fmul fast float %1731, %1731
  %1750 = fsub fast float %1748, %1749
  %1751 = fmul fast float %1717, 0x3FE17B1420000000
  %1752 = fmul fast float %1751, %1750
  %1753 = fmul fast float %1721, 0x3FF17B1420000000
  %1754 = fmul fast float %1753, %1731
  %1755 = fmul fast float %1754, %1730
  %1756 = fadd fast float %1752, %1755
  %1757 = fadd fast float %1756, %1738
  %1758 = fmul fast float %1757, %1728
  %1759 = fsub fast float %1740, %1734
  %1760 = fadd fast float %1759, %1739
  %1761 = fmul fast float %1760, 0x3FDF454380000000
  %1762 = fmul fast float %1761, %1727
  %1763 = fsub fast float %1733, %1744
  %1764 = fsub fast float %1763, %1747
  %1765 = fadd fast float %1764, %1758
  %1766 = fadd fast float %1765, %1762
  %1767 = fmul fast float %1716, 0x3FD20DD760000000
  %1768 = fmul fast float %1732, %1714
  %1769 = fmul fast float %1737, %1710
  %1770 = fmul fast float %1730, %1713
  %1771 = fmul fast float %1731, %1715
  %1772 = fmul fast float %1728, %1709
  %1773 = fmul fast float %1772, %1730
  %1774 = fmul fast float %1773, %1741
  %1775 = fmul fast float %1728, %1711
  %1776 = fmul fast float %1775, %1731
  %1777 = fmul fast float %1776, %1741
  %1778 = fmul fast float %1708, 0x3FE17B1420000000
  %1779 = fmul fast float %1778, %1750
  %1780 = fmul fast float %1712, 0x3FF17B1420000000
  %1781 = fmul fast float %1780, %1731
  %1782 = fmul fast float %1781, %1730
  %1783 = fadd fast float %1779, %1782
  %1784 = fadd fast float %1783, %1769
  %1785 = fmul fast float %1784, %1728
  %1786 = fsub fast float %1771, %1768
  %1787 = fadd fast float %1786, %1770
  %1788 = fmul fast float %1787, 0x3FDF454380000000
  %1789 = fmul fast float %1788, %1727
  %1790 = fsub fast float %1767, %1774
  %1791 = fsub fast float %1790, %1777
  %1792 = fadd fast float %1791, %1785
  %1793 = fadd fast float %1792, %1789
  %1794 = fmul fast float %1707, 0x3FD20DD760000000
  %1795 = fmul fast float %1732, %1705
  %1796 = fmul fast float %1737, %1701
  %1797 = fmul fast float %1730, %1704
  %1798 = fmul fast float %1731, %1706
  %1799 = fmul fast float %1728, %1700
  %1800 = fmul fast float %1799, %1730
  %1801 = fmul fast float %1800, %1741
  %1802 = fmul fast float %1728, %1702
  %1803 = fmul fast float %1802, %1731
  %1804 = fmul fast float %1803, %1741
  %1805 = fmul fast float %1699, 0x3FE17B1420000000
  %1806 = fmul fast float %1805, %1750
  %1807 = fmul fast float %1703, 0x3FF17B1420000000
  %1808 = fmul fast float %1807, %1731
  %1809 = fmul fast float %1808, %1730
  %1810 = fadd fast float %1806, %1809
  %1811 = fadd fast float %1810, %1796
  %1812 = fmul fast float %1811, %1728
  %1813 = fsub fast float %1798, %1795
  %1814 = fadd fast float %1813, %1797
  %1815 = fmul fast float %1814, 0x3FDF454380000000
  %1816 = fmul fast float %1815, %1727
  %1817 = fsub fast float %1794, %1801
  %1818 = fsub fast float %1817, %1804
  %1819 = fadd fast float %1818, %1812
  %1820 = fadd fast float %1819, %1816
  %1821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1822 = extractvalue %dx.types.CBufRet.f32 %1821, 3
  %1823 = extractvalue %dx.types.CBufRet.f32 %875, 0
  %1824 = fmul fast float %1823, %1822
  %1825 = fmul fast float %1824, %1766
  %1826 = fmul fast float %1824, %1793
  %1827 = fmul fast float %1824, %1820
  %1828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1829 = extractvalue %dx.types.CBufRet.f32 %1828, 3
  %1830 = fcmp fast une float %1829, 0.000000e+00
  %1831 = extractvalue %dx.types.CBufRet.f32 %1828, 0
  %1832 = extractvalue %dx.types.CBufRet.f32 %1828, 1
  %1833 = extractvalue %dx.types.CBufRet.f32 %1828, 2
  br i1 %1830, label %1834, label %1856, !dx.controlflow.hints !78

; <label>:1834                                    ; preds = %1698
  %1835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1836 = extractvalue %dx.types.CBufRet.f32 %1835, 0
  %1837 = extractvalue %dx.types.CBufRet.f32 %1835, 1
  %1838 = extractvalue %dx.types.CBufRet.f32 %1835, 2
  %1839 = call float @dx.op.dot3.f32(i32 55, float %1831, float %1832, float %1833, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %1840 = fcmp fast ogt float %885, 0.000000e+00
  %1841 = select i1 %1840, float 1.000000e+00, float -1.000000e+00
  %1842 = fmul fast float %1841, 5.000000e-01
  %1843 = fmul fast float %1842, %1839
  %1844 = fmul fast float %1841, %885
  %1845 = fadd fast float %1843, 4.921875e-01
  %1846 = fadd fast float %1844, -3.125000e-02
  %1847 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %24, float %1845, float 0x3FB25F3060000000, float %1846, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1848 = extractvalue %dx.types.ResRet.f32 %1847, 0
  %1849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1850 = extractvalue %dx.types.CBufRet.f32 %1849, 0
  %1851 = fmul fast float %1848, 0x400921FB60000000
  %1852 = fmul fast float %1851, %1850
  %1853 = fmul fast float %1852, %1836
  %1854 = fmul fast float %1852, %1837
  %1855 = fmul fast float %1852, %1838
  br label %1856

; <label>:1856                                    ; preds = %1834, %1698
  %1857 = phi float [ %1853, %1834 ], [ 0.000000e+00, %1698 ]
  %1858 = phi float [ %1854, %1834 ], [ 0.000000e+00, %1698 ]
  %1859 = phi float [ %1855, %1834 ], [ 0.000000e+00, %1698 ]
  %1860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1861 = extractvalue %dx.types.CBufRet.f32 %1860, 0
  %1862 = fmul fast float %1861, %1831
  %1863 = fmul fast float %1861, %1832
  %1864 = fmul fast float %1861, %1833
  %1865 = fadd fast float %1862, %301
  %1866 = fsub fast float -0.000000e+00, %1865
  %1867 = fadd fast float %1863, %302
  %1868 = fsub fast float -0.000000e+00, %1867
  %1869 = fadd fast float %1864, %303
  br i1 %316, label %1944, label %1870, !dx.controlflow.hints !47

; <label>:1870                                    ; preds = %1856
  %1871 = extractvalue %dx.types.CBufRet.f32 %1860, 1
  %1872 = fcmp fast ogt float %1871, %1861
  br i1 %1872, label %1873, label %1875, !dx.controlflow.hints !48

; <label>:1873                                    ; preds = %1870
  %1874 = fsub fast float %1871, %1861
  br label %1935

; <label>:1875                                    ; preds = %1870
  %1876 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1877 = extractvalue %dx.types.CBufRet.i32 %1876, 3
  %1878 = icmp eq i32 %1877, 0
  %1879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %1880 = extractvalue %dx.types.CBufRet.f32 %1879, 2
  %1881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1882 = extractvalue %dx.types.CBufRet.f32 %1881, 2
  %1883 = fsub fast float %1880, %1869
  %1884 = fadd fast float %1883, %1882
  %1885 = fsub fast float 0xC7EFFFFFE0000000, %1869
  br i1 %1878, label %1895, label %1886, !dx.controlflow.hints !41

; <label>:1886                                    ; preds = %1875
  %1887 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1866, float %1868, float %1884)  ; Dot3(ax,ay,az,bx,by,bz)
  %1888 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1831, float %1832, float %1833)  ; Dot3(ax,ay,az,bx,by,bz)
  %1889 = fdiv fast float 1.000000e+00, %1888
  %1890 = fmul fast float %1889, %1887
  %1891 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1866, float %1868, float %1885)  ; Dot3(ax,ay,az,bx,by,bz)
  %1892 = fmul fast float %1889, %1891
  %1893 = call float @dx.op.binary.f32(i32 36, float %1890, float %1892)  ; FMin(a,b)
  %1894 = call float @dx.op.binary.f32(i32 35, float %1890, float %1892)  ; FMax(a,b)
  br label %1928

; <label>:1895                                    ; preds = %1875
  %1896 = extractvalue %dx.types.CBufRet.f32 %1879, 0
  %1897 = extractvalue %dx.types.CBufRet.f32 %1879, 1
  %1898 = extractvalue %dx.types.CBufRet.f32 %1881, 0
  %1899 = extractvalue %dx.types.CBufRet.f32 %1881, 1
  %1900 = fdiv fast float 1.000000e+00, %1831
  %1901 = fdiv fast float 1.000000e+00, %1832
  %1902 = fdiv fast float 1.000000e+00, %1833
  %1903 = fsub fast float %1896, %1865
  %1904 = fmul fast float %1900, %1903
  %1905 = fadd fast float %1903, %1898
  %1906 = fmul fast float %1905, %1900
  %1907 = call float @dx.op.binary.f32(i32 36, float %1904, float %1906)  ; FMin(a,b)
  %1908 = call float @dx.op.binary.f32(i32 35, float %1904, float %1906)  ; FMax(a,b)
  %1909 = fsub fast float %1897, %1867
  %1910 = fmul fast float %1901, %1909
  %1911 = fadd fast float %1909, %1899
  %1912 = fmul fast float %1911, %1901
  %1913 = call float @dx.op.binary.f32(i32 36, float %1910, float %1912)  ; FMin(a,b)
  %1914 = call float @dx.op.binary.f32(i32 35, float %1907, float %1913)  ; FMax(a,b)
  %1915 = call float @dx.op.binary.f32(i32 35, float %1910, float %1912)  ; FMax(a,b)
  %1916 = call float @dx.op.binary.f32(i32 36, float %1908, float %1915)  ; FMin(a,b)
  %1917 = fmul fast float %1902, %1885
  %1918 = fmul fast float %1902, %1884
  %1919 = call float @dx.op.binary.f32(i32 36, float %1917, float %1918)  ; FMin(a,b)
  %1920 = call float @dx.op.binary.f32(i32 35, float %1914, float %1919)  ; FMax(a,b)
  %1921 = call float @dx.op.binary.f32(i32 35, float %1917, float %1918)  ; FMax(a,b)
  %1922 = call float @dx.op.binary.f32(i32 36, float %1916, float %1921)  ; FMin(a,b)
  %1923 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1920)  ; FMax(a,b)
  %1924 = fcmp fast ult float %1922, %1923
  br i1 %1924, label %1928, label %1925, !dx.controlflow.hints !42

; <label>:1925                                    ; preds = %1895
  %1926 = call float @dx.op.binary.f32(i32 36, float %1920, float %1922)  ; FMin(a,b)
  %1927 = call float @dx.op.binary.f32(i32 35, float %1920, float %1922)  ; FMax(a,b)
  br label %1928

; <label>:1928                                    ; preds = %1925, %1895, %1886
  %1929 = phi float [ %1893, %1886 ], [ %1926, %1925 ], [ 0.000000e+00, %1895 ]
  %1930 = phi float [ %1894, %1886 ], [ %1927, %1925 ], [ 0.000000e+00, %1895 ]
  %1931 = fcmp fast ogt float %1929, 0.000000e+00
  br i1 %1931, label %1935, label %1932, !dx.controlflow.hints !49

; <label>:1932                                    ; preds = %1928
  %1933 = fcmp fast ugt float %1930, 0.000000e+00
  br i1 %1933, label %1934, label %1935, !dx.controlflow.hints !50

; <label>:1934                                    ; preds = %1932
  br label %1935

; <label>:1935                                    ; preds = %1934, %1932, %1928, %1873
  %1936 = phi float [ %1874, %1873 ], [ 0.000000e+00, %1934 ], [ 0x47EFFFFFE0000000, %1932 ], [ %1929, %1928 ]
  %1937 = phi i32 [ %205, %1873 ], [ %205, %1934 ], [ 0, %1932 ], [ %205, %1928 ]
  %1938 = icmp ne i32 %1937, 0
  %1939 = zext i1 %1938 to i32
  %1940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1941 = extractvalue %dx.types.CBufRet.f32 %1940, 2
  %1942 = call float @dx.op.binary.f32(i32 35, float %1936, float %1941)  ; FMax(a,b)
  %1943 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %1942)  ; FMin(a,b)
  br label %1944

; <label>:1944                                    ; preds = %1935, %1856
  %1945 = phi float [ %1943, %1935 ], [ 0x47EFFFFFE0000000, %1856 ]
  %1946 = phi i32 [ %1939, %1935 ], [ 0, %1856 ]
  br i1 %491, label %2003, label %1947, !dx.controlflow.hints !56

; <label>:1947                                    ; preds = %1944
  %1948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1949 = extractvalue %dx.types.CBufRet.f32 %1948, 0
  %1950 = extractvalue %dx.types.CBufRet.f32 %1948, 1
  %1951 = extractvalue %dx.types.CBufRet.f32 %1948, 2
  %1952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1953 = extractvalue %dx.types.CBufRet.f32 %1952, 0
  %1954 = extractvalue %dx.types.CBufRet.f32 %1952, 1
  %1955 = extractvalue %dx.types.CBufRet.f32 %1952, 2
  %1956 = fsub fast float %1865, %1953
  %1957 = fsub fast float %1867, %1954
  %1958 = fsub fast float %1869, %1955
  %1959 = fmul fast float %1956, %1949
  %1960 = fmul fast float %1957, %1950
  %1961 = fmul fast float %1958, %1951
  %1962 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %1963 = extractvalue %dx.types.CBufRet.i32 %1962, 3
  %1964 = icmp eq i32 %1963, 0
  br i1 %1964, label %1968, label %1965, !dx.controlflow.hints !57

; <label>:1965                                    ; preds = %1947
  %1966 = call float @dx.op.unary.f32(i32 22, float %1959)  ; Frc(value)
  %1967 = call float @dx.op.unary.f32(i32 22, float %1960)  ; Frc(value)
  br label %1968

; <label>:1968                                    ; preds = %1965, %1947
  %1969 = phi float [ %1966, %1965 ], [ %1959, %1947 ]
  %1970 = phi float [ %1967, %1965 ], [ %1960, %1947 ]
  %1971 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %22, float %1969, float %1970, float %1961, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1972 = extractvalue %dx.types.ResRet.f32 %1971, 0
  %1973 = fmul fast float %1972, 2.000000e+00
  %1974 = fadd fast float %1973, -1.000000e+00
  %1975 = extractvalue %dx.types.CBufRet.f32 %1948, 3
  %1976 = fmul fast float %1974, %1975
  %1977 = fcmp fast olt float %1976, 0.000000e+00
  %1978 = fcmp fast oge float %1961, 0.000000e+00
  %1979 = fcmp fast ole float %1961, 1.000000e+00
  br i1 %1964, label %1982, label %1980, !dx.controlflow.hints !58

; <label>:1980                                    ; preds = %1968
  %1981 = and i1 %1978, %1979
  br label %1992

; <label>:1982                                    ; preds = %1968
  %1983 = fcmp fast oge float %1959, 0.000000e+00
  %1984 = fcmp fast oge float %1960, 0.000000e+00
  %1985 = and i1 %1983, %1984
  %1986 = and i1 %1978, %1985
  %1987 = fcmp fast ole float %1959, 1.000000e+00
  %1988 = fcmp fast ole float %1960, 1.000000e+00
  %1989 = and i1 %1987, %1988
  %1990 = and i1 %1979, %1989
  %1991 = and i1 %1986, %1990
  br label %1992

; <label>:1992                                    ; preds = %1982, %1980
  %1993 = phi i1 [ %1981, %1980 ], [ %1991, %1982 ]
  %1994 = and i1 %1977, %1993
  %1995 = call float @dx.op.unary.f32(i32 6, float %1976)  ; FAbs(value)
  %1996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %1997 = extractvalue %dx.types.CBufRet.f32 %1996, 1
  %1998 = extractvalue %dx.types.CBufRet.f32 %1996, 0
  %1999 = call float @dx.op.binary.f32(i32 35, float %1995, float %1998)  ; FMax(a,b)
  %2000 = select i1 %1994, float %1997, float %1999
  %2001 = zext i1 %1994 to i32
  %2002 = call float @dx.op.binary.f32(i32 36, float %1945, float %2000)  ; FMin(a,b)
  br label %2003

; <label>:2003                                    ; preds = %1992, %1944
  %2004 = phi float [ %2002, %1992 ], [ %1945, %1944 ]
  %2005 = phi i32 [ %2001, %1992 ], [ 0, %1944 ]
  %2006 = icmp eq i32 %1946, 0
  br i1 %2006, label %2080, label %2007, !dx.controlflow.hints !59

; <label>:2007                                    ; preds = %2003
  %2008 = fmul fast float %551, %1861
  %2009 = call float @dx.op.unary.f32(i32 23, float %2008)  ; Log(value)
  %2010 = fmul fast float %2009, 0x3FE62E4300000000
  %2011 = call float @dx.op.binary.f32(i32 35, float %2010, float 1.000000e+00)  ; FMax(a,b)
  %2012 = fmul fast float %2011, 0x47EFFFFFE0000000
  %2013 = call float @dx.op.binary.f32(i32 36, float %2012, float %2004)  ; FMin(a,b)
  %2014 = call float @dx.op.binary.f32(i32 35, float %2013, float 0.000000e+00)  ; FMax(a,b)
  %2015 = fcmp fast ogt float %2014, 0x3F1A36E2E0000000
  %2016 = fadd fast float %1862, %1865
  %2017 = fadd fast float %1863, %1867
  %2018 = select i1 %2015, float %2016, float %1865
  %2019 = select i1 %2015, float %2017, float %1867
  %2020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %2021 = extractvalue %dx.types.CBufRet.f32 %2020, 0
  %2022 = extractvalue %dx.types.CBufRet.f32 %2020, 1
  %2023 = fsub fast float %2018, %2021
  %2024 = fsub fast float %2019, %2022
  %2025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %2026 = extractvalue %dx.types.CBufRet.f32 %2025, 0
  %2027 = extractvalue %dx.types.CBufRet.f32 %2025, 1
  %2028 = fmul fast float %2023, %2026
  %2029 = fmul fast float %2024, %2027
  %2030 = fsub fast float 1.000000e+00, %2029
  %2031 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %2032 = extractvalue %dx.types.CBufRet.i32 %2031, 3
  %2033 = icmp eq i32 %2032, 0
  br i1 %2033, label %2040, label %2034, !dx.controlflow.hints !51

; <label>:2034                                    ; preds = %2007
  %2035 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %23, float %2028, float %2030, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2036 = extractvalue %dx.types.ResRet.f32 %2035, 0
  %2037 = extractvalue %dx.types.ResRet.f32 %2035, 1
  %2038 = extractvalue %dx.types.ResRet.f32 %2035, 2
  %2039 = extractvalue %dx.types.ResRet.f32 %2035, 3
  br label %2046

; <label>:2040                                    ; preds = %2007
  %2041 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %24, float %2028, float %2030, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2042 = extractvalue %dx.types.ResRet.f32 %2041, 0
  %2043 = extractvalue %dx.types.ResRet.f32 %2041, 1
  %2044 = extractvalue %dx.types.ResRet.f32 %2041, 2
  %2045 = extractvalue %dx.types.ResRet.f32 %2041, 3
  br label %2046

; <label>:2046                                    ; preds = %2040, %2034
  %2047 = phi float [ %2036, %2034 ], [ %2042, %2040 ]
  %2048 = phi float [ %2037, %2034 ], [ %2043, %2040 ]
  %2049 = phi float [ %2038, %2034 ], [ %2044, %2040 ]
  %2050 = phi float [ %2039, %2034 ], [ %2045, %2040 ]
  %2051 = extractvalue %dx.types.CBufRet.f32 %2025, 3
  %2052 = fmul fast float %2051, %2048
  %2053 = fmul fast float %2052, %2047
  %2054 = fsub fast float %2052, %2053
  %2055 = fcmp fast ole float %2054, 0.000000e+00
  %2056 = extractvalue %dx.types.CBufRet.f32 %2020, 2
  %2057 = fadd fast float %2053, %2056
  %2058 = fmul fast float %2051, %2049
  %2059 = fadd fast float %2058, %2056
  %2060 = fdiv fast float 1.000000e+00, %2054
  %2061 = select i1 %2055, float 1.000000e+06, float %2060
  %2062 = fsub fast float %1869, %2057
  %2063 = fmul fast float %2061, %2062
  %2064 = call float @dx.op.unary.f32(i32 7, float %2063)  ; Saturate(value)
  %2065 = extractvalue %dx.types.CBufRet.f32 %2025, 2
  %2066 = fmul fast float %2065, %2064
  %2067 = fsub fast float %2065, %2066
  %2068 = fcmp fast olt float %1869, %2059
  %2069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %2070 = extractvalue %dx.types.CBufRet.f32 %2069, 3
  %2071 = fmul fast float %2070, 3.000000e+00
  %2072 = select i1 %2068, float %2071, float 3.000000e+00
  %2073 = fmul fast float %2067, %2072
  %2074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %2075 = extractvalue %dx.types.CBufRet.f32 %2074, 2
  %2076 = fmul fast float %1861, 0x3FD5555560000000
  %2077 = fmul fast float %2076, %2050
  %2078 = fmul fast float %2077, %2075
  %2079 = fmul fast float %2078, %2073
  br label %2080

; <label>:2080                                    ; preds = %2046, %2003
  %2081 = phi float [ %2079, %2046 ], [ 0.000000e+00, %2003 ]
  %2082 = icmp eq i32 %2005, 0
  br i1 %2082, label %2263, label %2083, !dx.controlflow.hints !61

; <label>:2083                                    ; preds = %2080
  %2084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2085 = extractvalue %dx.types.CBufRet.f32 %2084, 3
  %2086 = fmul fast float %2085, %1861
  %2087 = fcmp fast oeq float %2086, 0.000000e+00
  br i1 %2087, label %2102, label %2088, !dx.controlflow.hints !62

; <label>:2088                                    ; preds = %2083
  %2089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %2090 = extractvalue %dx.types.CBufRet.f32 %2089, 3
  %2091 = fmul fast float %2090, %2086
  %2092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %2093 = extractvalue %dx.types.CBufRet.f32 %2092, 0
  %2094 = extractvalue %dx.types.CBufRet.f32 %2092, 1
  %2095 = extractvalue %dx.types.CBufRet.f32 %2092, 2
  %2096 = fmul fast float %2093, %2091
  %2097 = fmul fast float %2094, %2091
  %2098 = fmul fast float %2095, %2091
  %2099 = call float @dx.op.unary.f32(i32 23, float %2096)  ; Log(value)
  %2100 = call float @dx.op.unary.f32(i32 23, float %2097)  ; Log(value)
  %2101 = call float @dx.op.unary.f32(i32 23, float %2098)  ; Log(value)
  br label %2102

; <label>:2102                                    ; preds = %2088, %2083
  %2103 = phi float [ %2099, %2088 ], [ 0.000000e+00, %2083 ]
  %2104 = phi float [ %2100, %2088 ], [ 0.000000e+00, %2083 ]
  %2105 = phi float [ %2101, %2088 ], [ 0.000000e+00, %2083 ]
  %2106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %2107 = extractvalue %dx.types.CBufRet.f32 %2106, 0
  %2108 = extractvalue %dx.types.CBufRet.f32 %2106, 1
  %2109 = extractvalue %dx.types.CBufRet.f32 %2106, 2
  %2110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %2111 = extractvalue %dx.types.CBufRet.f32 %2110, 0
  %2112 = extractvalue %dx.types.CBufRet.f32 %2110, 1
  %2113 = extractvalue %dx.types.CBufRet.f32 %2110, 2
  %2114 = fsub fast float %1865, %2111
  %2115 = fsub fast float %1867, %2112
  %2116 = fsub fast float %1869, %2113
  %2117 = fmul fast float %2114, %2107
  %2118 = fmul fast float %2115, %2108
  %2119 = fmul fast float %2116, %2109
  %2120 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %2121 = extractvalue %dx.types.CBufRet.i32 %2120, 0
  %2122 = extractvalue %dx.types.CBufRet.i32 %2120, 1
  %2123 = uitofp i32 %2121 to float
  %2124 = uitofp i32 %2122 to float
  %2125 = fmul fast float %2117, %2123
  %2126 = fmul fast float %2118, %2124
  %2127 = fadd fast float %2125, 5.000000e-01
  %2128 = fadd fast float %2126, 5.000000e-01
  %2129 = call float @dx.op.unary.f32(i32 22, float %2127)  ; Frc(value)
  %2130 = call float @dx.op.unary.f32(i32 22, float %2128)  ; Frc(value)
  %2131 = call float @dx.op.unary.f32(i32 27, float %2127)  ; Round_ni(value)
  %2132 = call float @dx.op.unary.f32(i32 27, float %2128)  ; Round_ni(value)
  %2133 = fadd fast float %2131, 1.000000e+00
  %2134 = fadd fast float %2132, 1.000000e+00
  %2135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %2136 = extractvalue %dx.types.CBufRet.f32 %2135, 0
  %2137 = extractvalue %dx.types.CBufRet.f32 %2135, 1
  %2138 = fmul fast float %2136, %2133
  %2139 = fmul fast float %2137, %2134
  %2140 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %23, float %2138, float %2139, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2141 = extractvalue %dx.types.ResRet.f32 %2140, 0
  %2142 = extractvalue %dx.types.ResRet.f32 %2140, 1
  %2143 = extractvalue %dx.types.ResRet.f32 %2140, 2
  %2144 = extractvalue %dx.types.ResRet.f32 %2140, 3
  %2145 = extractvalue %dx.types.CBufRet.i32 %2120, 2
  %2146 = extractvalue %dx.types.CBufRet.f32 %2135, 2
  %2147 = uitofp i32 %2145 to float
  %2148 = fadd fast float %2147, -1.000000e+00
  %2149 = fmul fast float %2148, %2141
  %2150 = fmul fast float %2148, %2142
  %2151 = fmul fast float %2148, %2143
  %2152 = fmul fast float %2148, %2144
  %2153 = fadd fast float %2149, 5.000000e-01
  %2154 = fadd fast float %2150, 5.000000e-01
  %2155 = fadd fast float %2151, 5.000000e-01
  %2156 = fadd fast float %2152, 5.000000e-01
  %2157 = fptoui float %2153 to i32
  %2158 = fptoui float %2154 to i32
  %2159 = fptoui float %2155 to i32
  %2160 = fptoui float %2156 to i32
  %2161 = uitofp i32 %2157 to float
  %2162 = uitofp i32 %2158 to float
  %2163 = uitofp i32 %2159 to float
  %2164 = uitofp i32 %2160 to float
  %2165 = fadd fast float %2161, 5.000000e-01
  %2166 = fadd fast float %2162, 5.000000e-01
  %2167 = fadd fast float %2163, 5.000000e-01
  %2168 = fadd fast float %2164, 5.000000e-01
  %2169 = fmul fast float %2165, %2146
  %2170 = fmul fast float %2166, %2146
  %2171 = fmul fast float %2167, %2146
  %2172 = fmul fast float %2168, %2146
  %2173 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %24, float %2169, float %2119, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2174 = extractvalue %dx.types.ResRet.f32 %2173, 0
  %2175 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %24, float %2170, float %2119, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2176 = extractvalue %dx.types.ResRet.f32 %2175, 0
  %2177 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %24, float %2171, float %2119, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2178 = extractvalue %dx.types.ResRet.f32 %2177, 0
  %2179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %24, float %2172, float %2119, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2180 = extractvalue %dx.types.ResRet.f32 %2179, 0
  %2181 = fsub fast float %2178, %2180
  %2182 = fmul fast float %2181, %2129
  %2183 = fadd fast float %2182, %2180
  %2184 = fsub fast float %2176, %2174
  %2185 = fmul fast float %2184, %2129
  %2186 = fadd fast float %2185, %2174
  %2187 = fsub fast float %2186, %2183
  %2188 = fmul fast float %2187, %2130
  %2189 = fadd fast float %2188, %2183
  %2190 = fcmp fast ogt float %2189, 0.000000e+00
  br i1 %2190, label %2191, label %2259, !dx.controlflow.hints !63

; <label>:2191                                    ; preds = %2102
  %2192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %2193 = extractvalue %dx.types.CBufRet.f32 %2192, 0
  %2194 = extractvalue %dx.types.CBufRet.f32 %2192, 1
  %2195 = extractvalue %dx.types.CBufRet.f32 %2192, 2
  %2196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %2197 = extractvalue %dx.types.CBufRet.f32 %2196, 0
  %2198 = extractvalue %dx.types.CBufRet.f32 %2196, 1
  %2199 = extractvalue %dx.types.CBufRet.f32 %2196, 2
  %2200 = fmul fast float %2115, %2107
  %2201 = fmul fast float %2116, %2107
  %2202 = fadd fast float %2117, %2197
  %2203 = fadd fast float %2200, %2198
  %2204 = fadd fast float %2201, %2199
  %2205 = fmul fast float %2202, %2193
  %2206 = fmul fast float %2203, %2193
  %2207 = fmul fast float %2204, %2193
  %2208 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %21, float %2205, float %2206, float %2207, float undef, i32 0, i32 0, i32 0, float %2103)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2209 = extractvalue %dx.types.ResRet.f32 %2208, 0
  %2210 = fmul fast float %2202, %2194
  %2211 = fmul fast float %2203, %2194
  %2212 = fmul fast float %2204, %2194
  %2213 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %21, float %2210, float %2211, float %2212, float undef, i32 0, i32 0, i32 0, float %2104)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2214 = extractvalue %dx.types.ResRet.f32 %2213, 1
  %2215 = fmul fast float %2202, %2195
  %2216 = fmul fast float %2203, %2195
  %2217 = fmul fast float %2204, %2195
  %2218 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %21, float %2215, float %2216, float %2217, float undef, i32 0, i32 0, i32 0, float %2105)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2219 = extractvalue %dx.types.ResRet.f32 %2218, 2
  %2220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %2221 = extractvalue %dx.types.CBufRet.f32 %2220, 1
  %2222 = fmul fast float %2214, %2209
  %2223 = fmul fast float %2222, %2219
  %2224 = call float @dx.op.unary.f32(i32 23, float %2223)  ; Log(value)
  %2225 = fmul fast float %2224, %2221
  %2226 = call float @dx.op.unary.f32(i32 21, float %2225)  ; Exp(value)
  %2227 = extractvalue %dx.types.CBufRet.f32 %2220, 2
  %2228 = fmul fast float %2189, %2189
  %2229 = fmul fast float %2228, %2226
  %2230 = fmul fast float %2229, %2227
  %2231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %2232 = extractvalue %dx.types.CBufRet.f32 %2231, 3
  %2233 = fmul fast float %2232, %2230
  %2234 = bitcast float %2233 to i32
  %2235 = sitofp i32 %2234 to float
  %2236 = fptosi float %2235 to i32
  %2237 = bitcast i32 %2236 to float
  %2238 = fsub fast float 1.000000e+00, %2230
  %2239 = bitcast float %2238 to i32
  %2240 = sitofp i32 %2239 to float
  %2241 = fptosi float %2240 to i32
  %2242 = bitcast i32 %2241 to float
  %2243 = fadd fast float %2237, %2242
  %2244 = bitcast float %2243 to i32
  %2245 = sub nsw i32 2129859010, %2244
  %2246 = bitcast i32 %2245 to float
  %2247 = fmul fast float %2246, %2237
  %2248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2249 = extractvalue %dx.types.CBufRet.f32 %2248, 2
  %2250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %2251 = extractvalue %dx.types.CBufRet.f32 %2250, 0
  %2252 = fmul fast float %2247, %2251
  %2253 = fadd fast float %2252, 1.000000e+00
  %2254 = bitcast float %2253 to i32
  %2255 = sub nsw i32 2129859010, %2254
  %2256 = bitcast i32 %2255 to float
  %2257 = fmul fast float %2247, %2249
  %2258 = fmul fast float %2257, %2256
  br label %2259

; <label>:2259                                    ; preds = %2191, %2102
  %2260 = phi float [ %2258, %2191 ], [ %2189, %2102 ]
  %2261 = fmul fast float %2260, %1861
  %2262 = fadd fast float %2261, %2081
  br label %2263

; <label>:2263                                    ; preds = %2259, %2080
  %2264 = phi float [ %2262, %2259 ], [ %2081, %2080 ]
  %2265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %2266 = extractvalue %dx.types.CBufRet.f32 %2265, 3
  %2267 = fmul fast float %2264, 0xBFF7154760000000
  %2268 = fmul fast float %2267, %2266
  %2269 = call float @dx.op.unary.f32(i32 21, float %2268)  ; Exp(value)
  %2270 = call float @dx.op.unary.f32(i32 7, float %2269)  ; Saturate(value)
  %2271 = fmul fast float %2270, %1857
  %2272 = fmul fast float %2270, %1858
  %2273 = fmul fast float %2270, %1859
  %2274 = fadd fast float %2271, %1825
  %2275 = fadd fast float %2272, %1826
  %2276 = fadd fast float %2273, %1827
  %2277 = fsub fast float 1.000000e+00, %894
  %2278 = fmul fast float %886, %297
  %2279 = fmul fast float %2278, %2277
  %2280 = fmul fast float %2279, %2274
  %2281 = fmul fast float %887, %297
  %2282 = fmul fast float %2281, %2277
  %2283 = fmul fast float %2282, %2275
  %2284 = fmul fast float %888, %297
  %2285 = fmul fast float %2284, %2277
  %2286 = fmul fast float %2285, %2276
  %2287 = fadd fast float %2280, %298
  %2288 = fadd fast float %2283, %299
  %2289 = fadd fast float %2286, %300
  %2290 = fdiv fast float %870, %561
  %2291 = fadd fast float %561, %304
  %2292 = fmul fast float %304, %304
  %2293 = fmul fast float %2291, %2291
  %2294 = fsub fast float %2292, %2293
  %2295 = fmul fast float %2294, -5.000000e-01
  %2296 = fmul fast float %2295, %2290
  %2297 = fadd fast float %2296, %296
  %2298 = fadd fast float %870, %306
  %2299 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2300 = extractvalue %dx.types.CBufRet.i32 %2299, 0
  %2301 = icmp eq i32 %2300, 0
  br i1 %2301, label %2328, label %2302, !dx.controlflow.hints !79

; <label>:2302                                    ; preds = %2263
  %2303 = icmp ne i32 %311, 0
  %2304 = zext i1 %2303 to i32
  %2305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2306 = extractvalue %dx.types.CBufRet.f32 %2305, 2
  %2307 = extractvalue %dx.types.CBufRet.f32 %2305, 0
  %2308 = fsub fast float %2291, %2307
  %2309 = fmul fast float %2308, %2306
  %2310 = call float @dx.op.unary.f32(i32 7, float %2309)  ; Saturate(value)
  %2311 = fadd fast float %2310, -5.000000e-01
  %2312 = fmul fast float %2311, 2.000000e+00
  %2313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2314 = extractvalue %dx.types.CBufRet.f32 %2313, 2
  %2315 = fcmp fast olt float %2312, %2314
  br i1 %2315, label %2316, label %2328, !dx.controlflow.hints !80

; <label>:2316                                    ; preds = %2302
  %2317 = fmul fast float %2312, %2312
  %2318 = fmul fast float %2277, %297
  %2319 = fmul fast float %2312, %2318
  %2320 = fmul fast float %2317, %2318
  %2321 = fmul fast float %2319, %2317
  %2322 = fmul fast float %2317, %2317
  %2323 = fmul fast float %2322, %2318
  %2324 = fadd fast float %2319, %307
  %2325 = fadd fast float %2320, %308
  %2326 = fadd fast float %2321, %309
  %2327 = fadd fast float %2323, %310
  br label %2328

; <label>:2328                                    ; preds = %2316, %2302, %2263
  %2329 = phi float [ %307, %2263 ], [ %2324, %2316 ], [ %307, %2302 ]
  %2330 = phi float [ %308, %2263 ], [ %2325, %2316 ], [ %308, %2302 ]
  %2331 = phi float [ %309, %2263 ], [ %2326, %2316 ], [ %309, %2302 ]
  %2332 = phi float [ %310, %2263 ], [ %2327, %2316 ], [ %310, %2302 ]
  %2333 = phi i32 [ %311, %2263 ], [ 1, %2316 ], [ %2304, %2302 ]
  %2334 = fmul fast float %894, %297
  br label %2335

; <label>:2335                                    ; preds = %2328, %889
  %2336 = phi float [ %890, %889 ], [ %2291, %2328 ]
  %2337 = phi float [ %296, %889 ], [ %2297, %2328 ]
  %2338 = phi float [ %297, %889 ], [ %2334, %2328 ]
  %2339 = phi float [ %298, %889 ], [ %2287, %2328 ]
  %2340 = phi float [ %299, %889 ], [ %2288, %2328 ]
  %2341 = phi float [ %300, %889 ], [ %2289, %2328 ]
  %2342 = phi float [ %306, %889 ], [ %2298, %2328 ]
  %2343 = phi float [ %307, %889 ], [ %2329, %2328 ]
  %2344 = phi float [ %308, %889 ], [ %2330, %2328 ]
  %2345 = phi float [ %309, %889 ], [ %2331, %2328 ]
  %2346 = phi float [ %310, %889 ], [ %2332, %2328 ]
  %2347 = phi i32 [ %311, %889 ], [ %2333, %2328 ]
  %2348 = fmul fast float %561, %116
  %2349 = fmul fast float %561, %117
  %2350 = fmul fast float %561, %118
  %2351 = fadd fast float %2348, %301
  %2352 = fadd fast float %2349, %302
  %2353 = fadd fast float %2350, %303
  %2354 = fcmp fast olt float %2336, %272
  %2355 = extractvalue %dx.types.CBufRet.f32 %875, 2
  %2356 = fcmp fast olt float %2355, %2338
  %2357 = and i1 %2354, %2356
  br i1 %2357, label %295, label %2358

; <label>:2358                                    ; preds = %2335
  br label %2359

; <label>:2359                                    ; preds = %2358, %268
  %2360 = phi float [ 0.000000e+00, %268 ], [ %2337, %2358 ]
  %2361 = phi float [ 1.000000e+00, %268 ], [ %2338, %2358 ]
  %2362 = phi float [ 0.000000e+00, %268 ], [ %2339, %2358 ]
  %2363 = phi float [ 0.000000e+00, %268 ], [ %2340, %2358 ]
  %2364 = phi float [ 0.000000e+00, %268 ], [ %2341, %2358 ]
  %2365 = phi float [ 0.000000e+00, %268 ], [ %2342, %2358 ]
  %2366 = phi float [ 0.000000e+00, %268 ], [ %2343, %2358 ]
  %2367 = phi float [ 0.000000e+00, %268 ], [ %2344, %2358 ]
  %2368 = phi float [ 0.000000e+00, %268 ], [ %2345, %2358 ]
  %2369 = phi float [ 0.000000e+00, %268 ], [ %2346, %2358 ]
  %2370 = phi i32 [ 0, %268 ], [ %2347, %2358 ]
  %2371 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2372 = extractvalue %dx.types.CBufRet.i32 %2371, 0
  %2373 = icmp eq i32 %2372, 0
  br i1 %2373, label %2415, label %2374, !dx.controlflow.hints !81

; <label>:2374                                    ; preds = %2359
  %2375 = icmp eq i32 %2370, 0
  br i1 %2375, label %2414, label %2376, !dx.controlflow.hints !82

; <label>:2376                                    ; preds = %2374
  %2377 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2378 = extractvalue %dx.types.CBufRet.i32 %2377, 2
  %2379 = icmp eq i32 %2378, 0
  br i1 %2379, label %2386, label %2380, !dx.controlflow.hints !83

; <label>:2380                                    ; preds = %2376
  %2381 = fsub fast float 1.000000e+00, %2361
  %2382 = fdiv fast float %2366, %2381
  %2383 = fdiv fast float %2367, %2381
  %2384 = fdiv fast float %2368, %2381
  %2385 = fdiv fast float %2369, %2381
  br label %2391

; <label>:2386                                    ; preds = %2376
  %2387 = fadd fast float %2366, %2361
  %2388 = fadd fast float %2367, %2361
  %2389 = fadd fast float %2368, %2361
  %2390 = fadd fast float %2369, %2361
  br label %2391

; <label>:2391                                    ; preds = %2386, %2380
  %2392 = phi float [ %2382, %2380 ], [ %2387, %2386 ]
  %2393 = phi float [ %2383, %2380 ], [ %2388, %2386 ]
  %2394 = phi float [ %2384, %2380 ], [ %2389, %2386 ]
  %2395 = phi float [ %2385, %2380 ], [ %2390, %2386 ]
  %2396 = call float @dx.op.binary.f32(i32 35, float %2392, float -1.000000e+00)  ; FMax(a,b)
  %2397 = call float @dx.op.binary.f32(i32 35, float %2393, float -1.000000e+00)  ; FMax(a,b)
  %2398 = call float @dx.op.binary.f32(i32 35, float %2394, float -1.000000e+00)  ; FMax(a,b)
  %2399 = call float @dx.op.binary.f32(i32 35, float %2395, float -1.000000e+00)  ; FMax(a,b)
  %2400 = call float @dx.op.binary.f32(i32 36, float %2396, float 1.000000e+00)  ; FMin(a,b)
  %2401 = call float @dx.op.binary.f32(i32 36, float %2397, float 1.000000e+00)  ; FMin(a,b)
  %2402 = call float @dx.op.binary.f32(i32 36, float %2398, float 1.000000e+00)  ; FMin(a,b)
  %2403 = call float @dx.op.binary.f32(i32 36, float %2399, float 1.000000e+00)  ; FMin(a,b)
  %2404 = fmul fast float %2400, 1.500000e+00
  %2405 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %2402, float %2404)  ; FMad(a,b,c)
  %2406 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %2401, float 0.000000e+00)  ; FMad(a,b,c)
  %2407 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %2403, float %2406)  ; FMad(a,b,c)
  %2408 = fmul fast float %2400, 0x3FEBB67AE0000000
  %2409 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %2402, float %2408)  ; FMad(a,b,c)
  %2410 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2401, float 0.000000e+00)  ; FMad(a,b,c)
  %2411 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2403, float %2410)  ; FMad(a,b,c)
  %2412 = fadd fast float %2405, 5.000000e-01
  %2413 = fadd fast float %2409, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %27, i32 %28, i32 0, float %2412, float %2407, float %2413, float %2411, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2415

; <label>:2414                                    ; preds = %2374
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %27, i32 %28, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2415

; <label>:2415                                    ; preds = %2414, %2391, %2359
  %2416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2417 = extractvalue %dx.types.CBufRet.f32 %2416, 2
  %2418 = fsub fast float %2361, %2417
  %2419 = fdiv fast float %2418, %2417
  %2420 = call float @dx.op.unary.f32(i32 7, float %2419)  ; Saturate(value)
  %2421 = fmul fast float %2420, 2.000000e+00
  %2422 = fsub fast float 3.000000e+00, %2421
  %2423 = fmul fast float %2420, %2420
  %2424 = fmul fast float %2423, %2361
  %2425 = fmul fast float %2424, %2422
  %2426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %2427 = extractvalue %dx.types.CBufRet.f32 %2426, 0
  %2428 = extractvalue %dx.types.CBufRet.f32 %2426, 1
  %2429 = extractvalue %dx.types.CBufRet.f32 %2426, 2
  %2430 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %2427, float %2428, float %2429)  ; Dot3(ax,ay,az,bx,by,bz)
  %2431 = fmul fast float %2430, %2360
  %2432 = fcmp fast ogt float %2365, 0.000000e+00
  %2433 = fdiv fast float 1.000000e+00, %2365
  %2434 = fmul fast float %2431, %2433
  %2435 = select i1 %2432, float %2434, float %127
  %2436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2437 = extractvalue %dx.types.CBufRet.f32 %2436, 0
  %2438 = extractvalue %dx.types.CBufRet.f32 %2436, 1
  %2439 = extractvalue %dx.types.CBufRet.f32 %2436, 2
  %2440 = fmul fast float %2437, %80
  %2441 = fmul fast float %2438, %80
  %2442 = fmul fast float %2439, %80
  %2443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2444 = extractvalue %dx.types.CBufRet.f32 %2443, 0
  %2445 = extractvalue %dx.types.CBufRet.f32 %2443, 1
  %2446 = extractvalue %dx.types.CBufRet.f32 %2443, 2
  %2447 = fmul fast float %2444, %81
  %2448 = fmul fast float %2445, %81
  %2449 = fmul fast float %2446, %81
  %2450 = fadd fast float %2447, %2440
  %2451 = fadd fast float %2448, %2441
  %2452 = fadd fast float %2449, %2442
  %2453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2454 = extractvalue %dx.types.CBufRet.f32 %2453, 0
  %2455 = extractvalue %dx.types.CBufRet.f32 %2453, 1
  %2456 = extractvalue %dx.types.CBufRet.f32 %2453, 2
  %2457 = fadd fast float %2450, %2454
  %2458 = fadd fast float %2451, %2455
  %2459 = fadd fast float %2452, %2456
  %2460 = fmul fast float %2457, %2435
  %2461 = fmul fast float %2458, %2435
  %2462 = fmul fast float %2459, %2435
  %2463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %2464 = extractvalue %dx.types.CBufRet.f32 %2463, 0
  %2465 = extractvalue %dx.types.CBufRet.f32 %2463, 1
  %2466 = extractvalue %dx.types.CBufRet.f32 %2463, 2
  %2467 = extractvalue %dx.types.CBufRet.f32 %2463, 3
  %2468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %2469 = extractvalue %dx.types.CBufRet.f32 %2468, 0
  %2470 = extractvalue %dx.types.CBufRet.f32 %2468, 1
  %2471 = extractvalue %dx.types.CBufRet.f32 %2468, 2
  %2472 = extractvalue %dx.types.CBufRet.f32 %2468, 3
  %2473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %2474 = extractvalue %dx.types.CBufRet.f32 %2473, 0
  %2475 = extractvalue %dx.types.CBufRet.f32 %2473, 1
  %2476 = extractvalue %dx.types.CBufRet.f32 %2473, 2
  %2477 = extractvalue %dx.types.CBufRet.f32 %2473, 3
  %2478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %2479 = extractvalue %dx.types.CBufRet.f32 %2478, 0
  %2480 = extractvalue %dx.types.CBufRet.f32 %2478, 1
  %2481 = extractvalue %dx.types.CBufRet.f32 %2478, 2
  %2482 = extractvalue %dx.types.CBufRet.f32 %2478, 3
  %2483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %2484 = extractvalue %dx.types.CBufRet.f32 %2483, 3
  %2485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %2486 = extractvalue %dx.types.CBufRet.f32 %2485, 3
  %2487 = extractvalue %dx.types.CBufRet.f32 %2485, 0
  %2488 = extractvalue %dx.types.CBufRet.f32 %2485, 1
  %2489 = extractvalue %dx.types.CBufRet.f32 %2485, 2
  %2490 = fcmp fast olt float %2489, -5.000000e-01
  %2491 = call float @dx.op.dot3.f32(i32 55, float %2460, float %2461, float %2462, float %2460, float %2461, float %2462)  ; Dot3(ax,ay,az,bx,by,bz)
  %2492 = call float @dx.op.unary.f32(i32 25, float %2491)  ; Rsqrt(value)
  %2493 = fmul fast float %2492, %2491
  %2494 = fmul fast float %2492, %2460
  %2495 = fmul fast float %2492, %2461
  %2496 = fmul fast float %2492, %2462
  %2497 = fadd fast float %2493, %2467
  %2498 = call float @dx.op.dot3.f32(i32 55, float %2494, float %2495, float %2496, float %2464, float %2465, float %2466)  ; Dot3(ax,ay,az,bx,by,bz)
  %2499 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2500 = extractvalue %dx.types.CBufRet.i32 %2499, 1
  %2501 = and i32 %2500, 1
  %2502 = icmp ne i32 %2501, 0
  %2503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %2504 = extractvalue %dx.types.CBufRet.f32 %2503, 2
  %2505 = fcmp fast ogt float %2504, 0.000000e+00
  %2506 = and i1 %2502, %2505
  br i1 %2506, label %2507, label %2913, !dx.controlflow.hints !84

; <label>:2507                                    ; preds = %2415
  %2508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %2509 = extractvalue %dx.types.CBufRet.f32 %2508, 3
  %2510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2511 = extractvalue %dx.types.CBufRet.f32 %2510, 2
  %2512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2513 = extractvalue %dx.types.CBufRet.f32 %2512, 2
  %2514 = fsub fast float %2511, %2513
  %2515 = and i32 %2500, 2
  %2516 = extractvalue %dx.types.CBufRet.i32 %2499, 0
  %2517 = call i32 @dx.op.binary.i32(i32 40, i32 %2516, i32 3)  ; UMin(a,b)
  %2518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2519 = extractvalue %dx.types.CBufRet.f32 %2518, 0
  %2520 = extractvalue %dx.types.CBufRet.f32 %2518, 1
  %2521 = extractvalue %dx.types.CBufRet.f32 %2512, 0
  %2522 = extractvalue %dx.types.CBufRet.f32 %2512, 1
  %2523 = fsub fast float %2519, %2521
  %2524 = fsub fast float %2520, %2522
  %2525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2526 = extractvalue %dx.types.CBufRet.f32 %2525, 0
  %2527 = fcmp fast ogt float %2526, 0.000000e+00
  %2528 = fsub fast float -0.000000e+00, %2523
  %2529 = fsub fast float -0.000000e+00, %2524
  %2530 = call float @dx.op.dot2.f32(i32 54, float %2494, float %2495, float %2494, float %2495)  ; Dot2(ax,ay,bx,by)
  %2531 = call float @dx.op.dot2.f32(i32 54, float %2494, float %2495, float %2528, float %2529)  ; Dot2(ax,ay,bx,by)
  %2532 = fmul fast float %2531, 2.000000e+00
  %2533 = call float @dx.op.dot2.f32(i32 54, float %2528, float %2529, float %2528, float %2529)  ; Dot2(ax,ay,bx,by)
  %2534 = fmul fast float %2526, %2526
  %2535 = fsub fast float %2533, %2534
  %2536 = fmul fast float %2532, %2532
  %2537 = fmul fast float %2530, 4.000000e+00
  %2538 = fmul fast float %2537, %2535
  %2539 = fsub fast float %2536, %2538
  %2540 = fcmp fast ogt float %2539, 0.000000e+00
  br i1 %2540, label %2541, label %2556, !dx.controlflow.hints !85

; <label>:2541                                    ; preds = %2507
  %2542 = fcmp fast ogt float %2532, 0.000000e+00
  %2543 = call float @dx.op.unary.f32(i32 24, float %2539)  ; Sqrt(value)
  %2544 = fsub fast float -0.000000e+00, %2543
  %2545 = select i1 %2542, float %2543, float %2544
  %2546 = fadd fast float %2545, %2532
  %2547 = fmul float %2546, -5.000000e-01
  %2548 = fdiv fast float %2547, %2530
  %2549 = call float @dx.op.binary.f32(i32 35, float %2548, float 0.000000e+00)  ; FMax(a,b)
  %2550 = call float @dx.op.binary.f32(i32 36, float %2493, float %2549)  ; FMin(a,b)
  %2551 = fdiv fast float %2535, %2547
  %2552 = call float @dx.op.binary.f32(i32 35, float %2551, float 0.000000e+00)  ; FMax(a,b)
  %2553 = call float @dx.op.binary.f32(i32 36, float %2493, float %2552)  ; FMin(a,b)
  %2554 = call float @dx.op.binary.f32(i32 36, float %2550, float %2553)  ; FMin(a,b)
  %2555 = call float @dx.op.binary.f32(i32 35, float %2550, float %2553)  ; FMax(a,b)
  br label %2556

; <label>:2556                                    ; preds = %2541, %2507
  %2557 = phi float [ %2555, %2541 ], [ -1.000000e+00, %2507 ]
  %2558 = phi float [ %2554, %2541 ], [ -1.000000e+00, %2507 ]
  %2559 = phi i1 [ true, %2541 ], [ false, %2507 ]
  %2560 = and i1 %2527, %2559
  br i1 %2560, label %2561, label %2563, !dx.controlflow.hints !86

; <label>:2561                                    ; preds = %2556
  %2562 = fcmp fast oeq float %2558, %2557
  br i1 %2562, label %2866, label %2564, !dx.controlflow.hints !87

; <label>:2563                                    ; preds = %2556
  br i1 %2527, label %2866, label %2564, !dx.controlflow.hints !88

; <label>:2564                                    ; preds = %2563, %2561
  %2565 = phi float [ %2493, %2563 ], [ %2557, %2561 ]
  %2566 = phi float [ 0.000000e+00, %2563 ], [ %2558, %2561 ]
  %2567 = icmp ne i32 %2515, 0
  %2568 = fmul fast float %2565, %2496
  %2569 = fadd fast float %2568, %2509
  %2570 = fmul fast float %2569, %2565
  %2571 = select i1 %2567, float 0.000000e+00, float %2570
  %2572 = fcmp fast oeq float %2496, 0.000000e+00
  %2573 = fdiv fast float %2514, %2496
  %2574 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2573)  ; FMax(a,b)
  %2575 = select i1 %2572, float %2565, float %2574
  %2576 = call float @dx.op.binary.f32(i32 36, float %2565, float %2575)  ; FMin(a,b)
  %2577 = fcmp fast ogt float %2496, 0.000000e+00
  %2578 = fcmp fast olt float %2514, 0.000000e+00
  br i1 %2577, label %2579, label %2636, !dx.controlflow.hints !89

; <label>:2579                                    ; preds = %2564
  %2580 = icmp eq i32 %2515, 0
  br i1 %2578, label %2581, label %2625, !dx.controlflow.hints !90

; <label>:2581                                    ; preds = %2579
  %2582 = select i1 %2580, float %2565, float 0.000000e+00
  %2583 = fsub fast float -0.000000e+00, %2582
  %2584 = call float @dx.op.unary.f32(i32 6, float %2583)  ; FAbs(value)
  %2585 = fmul fast float %2582, %2496
  %2586 = fadd fast float %2585, %2509
  %2587 = fmul fast float %2584, %2586
  %2588 = fsub fast float %2571, %2587
  %2589 = fsub fast float %2565, %2584
  %2590 = select i1 %2580, float %2589, float 0.000000e+00
  %2591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2592 = extractvalue %dx.types.CBufRet.f32 %2591, 0
  %2593 = extractvalue %dx.types.CBufRet.f32 %2591, 1
  %2594 = extractvalue %dx.types.CBufRet.f32 %2591, 2
  %2595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2596 = extractvalue %dx.types.CBufRet.f32 %2595, 0
  %2597 = extractvalue %dx.types.CBufRet.f32 %2595, 1
  %2598 = extractvalue %dx.types.CBufRet.f32 %2595, 2
  %2599 = extractvalue %dx.types.CBufRet.f32 %2595, 3
  %2600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2601 = extractvalue %dx.types.CBufRet.f32 %2600, 3
  %2602 = call float @dx.op.binary.f32(i32 36, float %2588, float %2601)  ; FMin(a,b)
  %2603 = fmul fast float %2599, %2590
  %2604 = call float @dx.op.unary.f32(i32 7, float %2603)  ; Saturate(value)
  %2605 = fsub fast float %2596, %2592
  %2606 = fsub fast float %2597, %2593
  %2607 = fsub fast float %2598, %2594
  %2608 = fmul fast float %2604, %2605
  %2609 = fmul fast float %2604, %2606
  %2610 = fmul fast float %2604, %2607
  %2611 = fadd fast float %2608, %2592
  %2612 = fadd fast float %2609, %2593
  %2613 = fadd fast float %2610, %2594
  %2614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2615 = extractvalue %dx.types.CBufRet.f32 %2614, 0
  %2616 = extractvalue %dx.types.CBufRet.f32 %2614, 1
  %2617 = fadd fast float %2616, %2615
  %2618 = call float @dx.op.unary.f32(i32 7, float %2617)  ; Saturate(value)
  %2619 = extractvalue %dx.types.CBufRet.f32 %2614, 2
  %2620 = extractvalue %dx.types.CBufRet.f32 %2614, 3
  %2621 = fadd fast float %2620, %2619
  %2622 = call float @dx.op.unary.f32(i32 7, float %2621)  ; Saturate(value)
  %2623 = fmul fast float %2618, %2602
  %2624 = fmul fast float %2623, %2622
  br label %2866

; <label>:2625                                    ; preds = %2579
  br i1 %2580, label %2626, label %2647, !dx.controlflow.hints !91

; <label>:2626                                    ; preds = %2625
  %2627 = call float @dx.op.binary.f32(i32 36, float %2576, float %2566)  ; FMin(a,b)
  %2628 = fsub fast float %2576, %2627
  %2629 = fsub fast float %2628, %2565
  %2630 = call float @dx.op.unary.f32(i32 6, float %2629)  ; FAbs(value)
  %2631 = fadd fast float %2628, %2565
  %2632 = fmul fast float %2631, %2496
  %2633 = fadd fast float %2632, %2509
  %2634 = fmul fast float %2633, %2630
  %2635 = fsub fast float %2571, %2634
  br label %2647

; <label>:2636                                    ; preds = %2564
  br i1 %2578, label %2637, label %2647, !dx.controlflow.hints !92

; <label>:2637                                    ; preds = %2636
  %2638 = call float @dx.op.binary.f32(i32 35, float %2566, float %2576)  ; FMax(a,b)
  %2639 = icmp eq i32 %2515, 0
  %2640 = select i1 %2639, float %2576, float 0.000000e+00
  %2641 = fsub fast float -0.000000e+00, %2640
  %2642 = call float @dx.op.unary.f32(i32 6, float %2641)  ; FAbs(value)
  %2643 = fmul fast float %2640, %2496
  %2644 = fadd fast float %2643, %2509
  %2645 = fmul fast float %2642, %2644
  %2646 = fsub fast float %2571, %2645
  br label %2647

; <label>:2647                                    ; preds = %2637, %2636, %2626, %2625
  %2648 = phi float [ %2566, %2625 ], [ %2566, %2626 ], [ %2638, %2637 ], [ %2566, %2636 ]
  %2649 = phi float [ 0.000000e+00, %2625 ], [ %2630, %2626 ], [ %2642, %2637 ], [ 0.000000e+00, %2636 ]
  %2650 = phi float [ %2571, %2625 ], [ %2635, %2626 ], [ %2646, %2637 ], [ %2571, %2636 ]
  %2651 = phi float [ %2576, %2625 ], [ %2576, %2626 ], [ %2565, %2637 ], [ %2565, %2636 ]
  %2652 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 0
  store float -1.000000e+00, float* %2652, align 4, !tbaa !93, !noalias !97
  %2653 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 1
  store float -1.000000e+00, float* %2653, align 4, !tbaa !93, !noalias !97
  %2654 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 2
  store float -1.000000e+00, float* %2654, align 4, !tbaa !93, !noalias !97
  %2655 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 0
  store float -1.000000e+00, float* %2655, align 4, !tbaa !93, !noalias !97
  %2656 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 1
  store float -1.000000e+00, float* %2656, align 4, !tbaa !93, !noalias !97
  %2657 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 2
  store float -1.000000e+00, float* %2657, align 4, !tbaa !93, !noalias !97
  %2658 = icmp sgt i32 %2517, 0
  br i1 %2658, label %2659, label %2720

; <label>:2659                                    ; preds = %2647
  br label %2660

; <label>:2660                                    ; preds = %2709, %2659
  %2661 = phi i32 [ %2710, %2709 ], [ 0, %2659 ]
  %2662 = phi i32 [ %2711, %2709 ], [ 0, %2659 ]
  %2663 = add nuw i32 %2662, 171
  %2664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 %2663)  ; CBufferLoadLegacy(handle,regIndex)
  %2665 = extractvalue %dx.types.CBufRet.f32 %2664, 0
  %2666 = extractvalue %dx.types.CBufRet.f32 %2664, 1
  %2667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2668 = extractvalue %dx.types.CBufRet.f32 %2667, 0
  %2669 = extractvalue %dx.types.CBufRet.f32 %2667, 1
  %2670 = fsub fast float %2665, %2668
  %2671 = fsub fast float %2666, %2669
  %2672 = extractvalue %dx.types.CBufRet.f32 %2664, 2
  %2673 = fsub fast float -0.000000e+00, %2670
  %2674 = fsub fast float -0.000000e+00, %2671
  %2675 = call float @dx.op.dot2.f32(i32 54, float %2494, float %2495, float %2673, float %2674)  ; Dot2(ax,ay,bx,by)
  %2676 = fmul fast float %2675, 2.000000e+00
  %2677 = call float @dx.op.dot2.f32(i32 54, float %2673, float %2674, float %2673, float %2674)  ; Dot2(ax,ay,bx,by)
  %2678 = fmul fast float %2672, %2672
  %2679 = fsub fast float %2677, %2678
  %2680 = fmul fast float %2676, %2676
  %2681 = fmul fast float %2537, %2679
  %2682 = fsub fast float %2680, %2681
  %2683 = fcmp fast ogt float %2682, 0.000000e+00
  br i1 %2683, label %2684, label %2699, !dx.controlflow.hints !85

; <label>:2684                                    ; preds = %2660
  %2685 = fcmp fast ogt float %2676, 0.000000e+00
  %2686 = call float @dx.op.unary.f32(i32 24, float %2682)  ; Sqrt(value)
  %2687 = fsub fast float -0.000000e+00, %2686
  %2688 = select i1 %2685, float %2686, float %2687
  %2689 = fadd fast float %2688, %2676
  %2690 = fmul float %2689, -5.000000e-01
  %2691 = fdiv fast float %2690, %2530
  %2692 = call float @dx.op.binary.f32(i32 35, float %2691, float 0.000000e+00)  ; FMax(a,b)
  %2693 = call float @dx.op.binary.f32(i32 36, float %2565, float %2692)  ; FMin(a,b)
  %2694 = fdiv fast float %2679, %2690
  %2695 = call float @dx.op.binary.f32(i32 35, float %2694, float 0.000000e+00)  ; FMax(a,b)
  %2696 = call float @dx.op.binary.f32(i32 36, float %2565, float %2695)  ; FMin(a,b)
  %2697 = call float @dx.op.binary.f32(i32 36, float %2693, float %2696)  ; FMin(a,b)
  %2698 = call float @dx.op.binary.f32(i32 35, float %2693, float %2696)  ; FMax(a,b)
  br label %2699

; <label>:2699                                    ; preds = %2684, %2660
  %2700 = phi float [ %2698, %2684 ], [ -1.000000e+00, %2660 ]
  %2701 = phi float [ %2697, %2684 ], [ -1.000000e+00, %2660 ]
  %2702 = phi i1 [ true, %2684 ], [ false, %2660 ]
  br i1 %2702, label %2703, label %2709, !dx.controlflow.hints !108

; <label>:2703                                    ; preds = %2699
  %2704 = call float @dx.op.binary.f32(i32 35, float %2648, float %2701)  ; FMax(a,b)
  %2705 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %2662
  store float %2704, float* %2705, align 4, !tbaa !93, !noalias !97
  %2706 = call float @dx.op.binary.f32(i32 35, float %2648, float %2700)  ; FMax(a,b)
  %2707 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 %2662
  store float %2706, float* %2707, align 4, !tbaa !93, !noalias !97
  %2708 = add nsw i32 %2661, 1
  br label %2709

; <label>:2709                                    ; preds = %2703, %2699
  %2710 = phi i32 [ %2708, %2703 ], [ %2661, %2699 ]
  %2711 = add nuw nsw i32 %2662, 1
  %2712 = icmp eq i32 %2711, %2517
  br i1 %2712, label %2713, label %2660

; <label>:2713                                    ; preds = %2709
  %2714 = load float, float* %2654, align 4, !tbaa !93, !alias.scope !109, !noalias !112
  %2715 = load float, float* %2653, align 4, !tbaa !93, !alias.scope !115, !noalias !116
  %2716 = load float, float* %2652, align 4, !tbaa !93, !alias.scope !117, !noalias !118
  %2717 = load float, float* %2657, align 4, !tbaa !93, !alias.scope !119, !noalias !122
  %2718 = load float, float* %2656, align 4, !tbaa !93, !alias.scope !125, !noalias !126
  %2719 = load float, float* %2655, align 4, !tbaa !93, !alias.scope !127, !noalias !128
  br label %2720

; <label>:2720                                    ; preds = %2713, %2647
  %2721 = phi float [ -1.000000e+00, %2647 ], [ %2719, %2713 ]
  %2722 = phi float [ -1.000000e+00, %2647 ], [ %2718, %2713 ]
  %2723 = phi float [ -1.000000e+00, %2647 ], [ %2717, %2713 ]
  %2724 = phi float [ -1.000000e+00, %2647 ], [ %2716, %2713 ]
  %2725 = phi float [ -1.000000e+00, %2647 ], [ %2715, %2713 ]
  %2726 = phi float [ -1.000000e+00, %2647 ], [ %2714, %2713 ]
  %2727 = phi i32 [ 0, %2647 ], [ %2710, %2713 ]
  %2728 = call float @dx.op.binary.f32(i32 36, float %2725, float %2726)  ; FMin(a,b)
  %2729 = call float @dx.op.binary.f32(i32 36, float %2724, float %2728)  ; FMin(a,b)
  %2730 = call float @dx.op.binary.f32(i32 35, float %2724, float %2725)  ; FMax(a,b)
  %2731 = call float @dx.op.binary.f32(i32 36, float %2730, float %2726)  ; FMin(a,b)
  %2732 = call float @dx.op.binary.f32(i32 36, float %2724, float %2725)  ; FMin(a,b)
  %2733 = call float @dx.op.binary.f32(i32 35, float %2732, float %2731)  ; FMax(a,b)
  %2734 = call float @dx.op.binary.f32(i32 35, float %2725, float %2726)  ; FMax(a,b)
  %2735 = call float @dx.op.binary.f32(i32 35, float %2724, float %2734)  ; FMax(a,b)
  store float %2729, float* %2652, align 4, !tbaa !93, !alias.scope !117, !noalias !118
  store float %2733, float* %2653, align 4, !tbaa !93, !alias.scope !115, !noalias !116
  store float %2735, float* %2654, align 4, !tbaa !93, !alias.scope !109, !noalias !112
  %2736 = call float @dx.op.binary.f32(i32 36, float %2722, float %2723)  ; FMin(a,b)
  %2737 = call float @dx.op.binary.f32(i32 36, float %2721, float %2736)  ; FMin(a,b)
  %2738 = call float @dx.op.binary.f32(i32 35, float %2721, float %2722)  ; FMax(a,b)
  %2739 = call float @dx.op.binary.f32(i32 36, float %2738, float %2723)  ; FMin(a,b)
  %2740 = call float @dx.op.binary.f32(i32 36, float %2721, float %2722)  ; FMin(a,b)
  %2741 = call float @dx.op.binary.f32(i32 35, float %2740, float %2739)  ; FMax(a,b)
  %2742 = call float @dx.op.binary.f32(i32 35, float %2722, float %2723)  ; FMax(a,b)
  %2743 = call float @dx.op.binary.f32(i32 35, float %2721, float %2742)  ; FMax(a,b)
  store float %2737, float* %2655, align 4, !tbaa !93, !alias.scope !127, !noalias !128
  store float %2741, float* %2656, align 4, !tbaa !93, !alias.scope !125, !noalias !126
  store float %2743, float* %2657, align 4, !tbaa !93, !alias.scope !119, !noalias !122
  %2744 = sub nsw i32 3, %2727
  %2745 = icmp sgt i32 %2744, 2
  br i1 %2745, label %2746, label %2784, !dx.controlflow.hints !129

; <label>:2746                                    ; preds = %2720
  %2747 = icmp eq i32 %2515, 0
  %2748 = fsub fast float %2565, %2649
  %2749 = select i1 %2747, float %2748, float %2649
  %2750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2751 = extractvalue %dx.types.CBufRet.f32 %2750, 0
  %2752 = extractvalue %dx.types.CBufRet.f32 %2750, 1
  %2753 = extractvalue %dx.types.CBufRet.f32 %2750, 2
  %2754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2755 = extractvalue %dx.types.CBufRet.f32 %2754, 0
  %2756 = extractvalue %dx.types.CBufRet.f32 %2754, 1
  %2757 = extractvalue %dx.types.CBufRet.f32 %2754, 2
  %2758 = extractvalue %dx.types.CBufRet.f32 %2754, 3
  %2759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2760 = extractvalue %dx.types.CBufRet.f32 %2759, 3
  %2761 = call float @dx.op.binary.f32(i32 36, float %2650, float %2760)  ; FMin(a,b)
  %2762 = fmul fast float %2758, %2749
  %2763 = call float @dx.op.unary.f32(i32 7, float %2762)  ; Saturate(value)
  %2764 = fsub fast float %2755, %2751
  %2765 = fsub fast float %2756, %2752
  %2766 = fsub fast float %2757, %2753
  %2767 = fmul fast float %2763, %2764
  %2768 = fmul fast float %2763, %2765
  %2769 = fmul fast float %2763, %2766
  %2770 = fadd fast float %2767, %2751
  %2771 = fadd fast float %2768, %2752
  %2772 = fadd fast float %2769, %2753
  %2773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2774 = extractvalue %dx.types.CBufRet.f32 %2773, 0
  %2775 = extractvalue %dx.types.CBufRet.f32 %2773, 1
  %2776 = fadd fast float %2775, %2774
  %2777 = call float @dx.op.unary.f32(i32 7, float %2776)  ; Saturate(value)
  %2778 = extractvalue %dx.types.CBufRet.f32 %2773, 2
  %2779 = extractvalue %dx.types.CBufRet.f32 %2773, 3
  %2780 = fadd fast float %2779, %2778
  %2781 = call float @dx.op.unary.f32(i32 7, float %2780)  ; Saturate(value)
  %2782 = fmul fast float %2777, %2761
  %2783 = fmul fast float %2782, %2781
  br label %2866

; <label>:2784                                    ; preds = %2720
  %2785 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %2744
  %2786 = load float, float* %2785, align 4, !tbaa !93, !noalias !97
  %2787 = fcmp fast olt float %2786, %2651
  %2788 = icmp sgt i32 %2727, 0
  %2789 = and i1 %2788, %2787
  br i1 %2789, label %2790, label %2827

; <label>:2790                                    ; preds = %2784
  br label %2791

; <label>:2791                                    ; preds = %2820, %2790
  %2792 = phi float [ %2821, %2820 ], [ %2649, %2790 ]
  %2793 = phi float [ %2822, %2820 ], [ %2650, %2790 ]
  %2794 = phi float [ %2802, %2820 ], [ %2786, %2790 ]
  %2795 = phi i32 [ %2799, %2820 ], [ %2744, %2790 ]
  %2796 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 %2795
  %2797 = load float, float* %2796, align 4, !tbaa !93, !noalias !97
  %2798 = icmp slt i32 %2795, 2
  %2799 = add nsw i32 %2795, 1
  %2800 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %2799
  %2801 = load float, float* %2800, align 4, !tbaa !93, !noalias !97
  %2802 = select i1 %2798, float %2801, float %2565
  %2803 = call float @dx.op.binary.f32(i32 36, float %2802, float %2797)  ; FMin(a,b)
  %2804 = call float @dx.op.binary.f32(i32 36, float %2651, float %2803)  ; FMin(a,b)
  %2805 = icmp eq i32 %2515, 0
  %2806 = fadd fast float %2804, %2794
  %2807 = fmul fast float %2806, %2496
  %2808 = fadd fast float %2807, %2509
  br i1 %2805, label %2814, label %2809, !dx.controlflow.hints !130

; <label>:2809                                    ; preds = %2791
  %2810 = fsub fast float %2804, %2794
  %2811 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2810)  ; FMax(a,b)
  %2812 = fmul fast float %2811, %2808
  %2813 = fadd fast float %2812, %2793
  br label %2820

; <label>:2814                                    ; preds = %2791
  %2815 = fsub fast float %2794, %2804
  %2816 = call float @dx.op.unary.f32(i32 6, float %2815)  ; FAbs(value)
  %2817 = fadd fast float %2816, %2792
  %2818 = fmul fast float %2816, %2808
  %2819 = fsub fast float %2793, %2818
  br label %2820

; <label>:2820                                    ; preds = %2814, %2809
  %2821 = phi float [ %2811, %2809 ], [ %2817, %2814 ]
  %2822 = phi float [ %2813, %2809 ], [ %2819, %2814 ]
  %2823 = fcmp fast olt float %2802, %2651
  %2824 = icmp slt i32 %2799, 3
  %2825 = and i1 %2824, %2823
  br i1 %2825, label %2791, label %2826

; <label>:2826                                    ; preds = %2820
  br label %2827

; <label>:2827                                    ; preds = %2826, %2784
  %2828 = phi float [ %2649, %2784 ], [ %2821, %2826 ]
  %2829 = phi float [ %2650, %2784 ], [ %2822, %2826 ]
  %2830 = fsub fast float %2565, %2828
  %2831 = select i1 %2567, float %2828, float %2830
  %2832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2833 = extractvalue %dx.types.CBufRet.f32 %2832, 0
  %2834 = extractvalue %dx.types.CBufRet.f32 %2832, 1
  %2835 = extractvalue %dx.types.CBufRet.f32 %2832, 2
  %2836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2837 = extractvalue %dx.types.CBufRet.f32 %2836, 0
  %2838 = extractvalue %dx.types.CBufRet.f32 %2836, 1
  %2839 = extractvalue %dx.types.CBufRet.f32 %2836, 2
  %2840 = extractvalue %dx.types.CBufRet.f32 %2836, 3
  %2841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2842 = extractvalue %dx.types.CBufRet.f32 %2841, 3
  %2843 = call float @dx.op.binary.f32(i32 36, float %2829, float %2842)  ; FMin(a,b)
  %2844 = fmul fast float %2840, %2831
  %2845 = call float @dx.op.unary.f32(i32 7, float %2844)  ; Saturate(value)
  %2846 = fsub fast float %2837, %2833
  %2847 = fsub fast float %2838, %2834
  %2848 = fsub fast float %2839, %2835
  %2849 = fmul fast float %2845, %2846
  %2850 = fmul fast float %2845, %2847
  %2851 = fmul fast float %2845, %2848
  %2852 = fadd fast float %2849, %2833
  %2853 = fadd fast float %2850, %2834
  %2854 = fadd fast float %2851, %2835
  %2855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2856 = extractvalue %dx.types.CBufRet.f32 %2855, 0
  %2857 = extractvalue %dx.types.CBufRet.f32 %2855, 1
  %2858 = fadd fast float %2857, %2856
  %2859 = call float @dx.op.unary.f32(i32 7, float %2858)  ; Saturate(value)
  %2860 = extractvalue %dx.types.CBufRet.f32 %2855, 2
  %2861 = extractvalue %dx.types.CBufRet.f32 %2855, 3
  %2862 = fadd fast float %2861, %2860
  %2863 = call float @dx.op.unary.f32(i32 7, float %2862)  ; Saturate(value)
  %2864 = fmul fast float %2859, %2843
  %2865 = fmul fast float %2864, %2863
  br label %2866

; <label>:2866                                    ; preds = %2827, %2746, %2581, %2563, %2561
  %2867 = phi float [ %2590, %2581 ], [ %2749, %2746 ], [ %2831, %2827 ], [ 0.000000e+00, %2561 ], [ 0.000000e+00, %2563 ]
  %2868 = phi float [ %2624, %2581 ], [ %2783, %2746 ], [ %2865, %2827 ], [ 0.000000e+00, %2561 ], [ 0.000000e+00, %2563 ]
  %2869 = phi float [ %2611, %2581 ], [ %2770, %2746 ], [ %2852, %2827 ], [ 0.000000e+00, %2561 ], [ 0.000000e+00, %2563 ]
  %2870 = phi float [ %2612, %2581 ], [ %2771, %2746 ], [ %2853, %2827 ], [ 0.000000e+00, %2561 ], [ 0.000000e+00, %2563 ]
  %2871 = phi float [ %2613, %2581 ], [ %2772, %2746 ], [ %2854, %2827 ], [ 0.000000e+00, %2561 ], [ 0.000000e+00, %2563 ]
  %2872 = fmul fast float %2504, %2868
  %2873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2874 = extractvalue %dx.types.CBufRet.f32 %2873, 2
  %2875 = fsub fast float %2511, %2874
  %2876 = fcmp fast olt float %2872, -2.000000e+01
  %2877 = call float @dx.op.unary.f32(i32 21, float %2872)  ; Exp(value)
  %2878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2879 = extractvalue %dx.types.CBufRet.f32 %2878, 2
  %2880 = extractvalue %dx.types.CBufRet.f32 %2878, 3
  %2881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2882 = extractvalue %dx.types.CBufRet.f32 %2881, 2
  %2883 = fmul fast float %2880, %2875
  %2884 = call float @dx.op.unary.f32(i32 7, float %2883)  ; Saturate(value)
  %2885 = fsub fast float 1.000000e+00, %2884
  %2886 = fmul fast float %2496, 5.000000e-01
  %2887 = fadd fast float %2886, 5.000000e-01
  %2888 = call float @dx.op.unary.f32(i32 7, float %2887)  ; Saturate(value)
  %2889 = fsub fast float 1.000000e+00, %2888
  %2890 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2885)  ; FMax(a,b)
  %2891 = fdiv fast float %2889, %2890
  %2892 = fsub fast float %2875, %2462
  %2893 = call float @dx.op.unary.f32(i32 6, float %2892)  ; FAbs(value)
  %2894 = fmul fast float %2893, %2879
  %2895 = call float @dx.op.unary.f32(i32 7, float %2891)  ; Saturate(value)
  %2896 = fsub fast float 1.000000e+00, %2894
  %2897 = fmul fast float %2896, %2895
  %2898 = fadd fast float %2897, %2894
  %2899 = fmul fast float %2882, %2875
  %2900 = call float @dx.op.unary.f32(i32 7, float %2899)  ; Saturate(value)
  %2901 = fsub fast float 1.000000e+00, %2898
  %2902 = fmul fast float %2901, %2900
  %2903 = fadd fast float %2902, %2898
  %2904 = call float @dx.op.unary.f32(i32 7, float %2903)  ; Saturate(value)
  %2905 = fadd fast float %2877, -1.000000e+00
  %2906 = select i1 %2876, float -1.000000e+00, float %2905
  %2907 = fmul fast float %2904, %2906
  %2908 = fadd fast float %2907, 1.000000e+00
  %2909 = fsub fast float -0.000000e+00, %2907
  %2910 = fmul fast float %2869, %2909
  %2911 = fmul fast float %2870, %2909
  %2912 = fmul fast float %2871, %2909
  br label %2913

; <label>:2913                                    ; preds = %2866, %2415
  %2914 = phi float [ %2867, %2866 ], [ 0.000000e+00, %2415 ]
  %2915 = phi float [ %2908, %2866 ], [ 1.000000e+00, %2415 ]
  %2916 = phi float [ %2910, %2866 ], [ 0.000000e+00, %2415 ]
  %2917 = phi float [ %2911, %2866 ], [ 0.000000e+00, %2415 ]
  %2918 = phi float [ %2912, %2866 ], [ 0.000000e+00, %2415 ]
  %2919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2920 = extractvalue %dx.types.CBufRet.f32 %2919, 1
  %2921 = fsub fast float 1.000000e+00, %2915
  %2922 = fmul fast float %2921, %2497
  %2923 = fmul fast float %2922, %2920
  %2924 = fsub fast float %2497, %2923
  br i1 %2490, label %2925, label %2954, !dx.controlflow.hints !131

; <label>:2925                                    ; preds = %2913
  %2926 = fmul fast float %2498, %2487
  %2927 = fadd fast float %2926, %2488
  %2928 = call float @dx.op.unary.f32(i32 7, float %2927)  ; Saturate(value)
  %2929 = fmul fast float %2469, %2924
  %2930 = fsub fast float -0.000000e+00, %2929
  %2931 = fmul fast float %2470, %2924
  %2932 = fsub fast float -0.000000e+00, %2931
  %2933 = call float @dx.op.unary.f32(i32 21, float %2930)  ; Exp(value)
  %2934 = call float @dx.op.unary.f32(i32 21, float %2932)  ; Exp(value)
  %2935 = call float @dx.op.binary.f32(i32 35, float %2477, float %2933)  ; FMax(a,b)
  %2936 = call float @dx.op.binary.f32(i32 35, float %2477, float %2934)  ; FMax(a,b)
  %2937 = fsub fast float %2936, %2935
  %2938 = fmul fast float %2937, %2928
  %2939 = fadd fast float %2938, %2935
  %2940 = call float @dx.op.unary.f32(i32 7, float %2939)  ; Saturate(value)
  %2941 = fsub fast float %2474, %2479
  %2942 = fsub fast float %2475, %2480
  %2943 = fsub fast float %2476, %2481
  %2944 = fmul fast float %2928, %2941
  %2945 = fmul fast float %2928, %2942
  %2946 = fmul fast float %2928, %2943
  %2947 = fadd fast float %2944, %2479
  %2948 = fadd fast float %2945, %2480
  %2949 = fadd fast float %2946, %2481
  %2950 = fsub fast float 1.000000e+00, %2940
  %2951 = fmul fast float %2950, %2947
  %2952 = fmul fast float %2950, %2948
  %2953 = fmul fast float %2950, %2949
  br label %3013

; <label>:2954                                    ; preds = %2913
  %2955 = fmul fast float %2924, %2486
  %2956 = call float @dx.op.unary.f32(i32 7, float %2955)  ; Saturate(value)
  %2957 = fsub fast float 2.000000e+00, %2956
  %2958 = fmul fast float %2956, 9.921875e-01
  %2959 = fmul fast float %2958, %2957
  %2960 = fadd fast float %2959, 3.906250e-03
  %2961 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %24, float %2960, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2962 = extractvalue %dx.types.ResRet.f32 %2961, 0
  %2963 = fsub fast float %2956, %2962
  %2964 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2963)  ; FMax(a,b)
  %2965 = fmul fast float %2472, %2462
  %2966 = call float @dx.op.unary.f32(i32 6, float %2965)  ; FAbs(value)
  %2967 = fcmp fast ogt float %2966, 0x3EB0C6F7A0000000
  br i1 %2967, label %2968, label %2974, !dx.controlflow.hints !132

; <label>:2968                                    ; preds = %2954
  %2969 = fmul fast float %2965, 0xBFF7154760000000
  %2970 = call float @dx.op.unary.f32(i32 21, float %2969)  ; Exp(value)
  %2971 = fsub fast float 1.000000e+00, %2970
  %2972 = fdiv fast float %2971, %2965
  %2973 = fmul fast float %2972, %2482
  br label %2974

; <label>:2974                                    ; preds = %2968, %2954
  %2975 = phi float [ %2973, %2968 ], [ %2482, %2954 ]
  %2976 = fadd fast float %2975, %2484
  %2977 = fmul fast float %2976, %2964
  %2978 = fmul fast float %2469, %2977
  %2979 = fsub fast float -0.000000e+00, %2978
  %2980 = fmul fast float %2470, %2977
  %2981 = fsub fast float -0.000000e+00, %2980
  %2982 = fmul fast float %2471, %2977
  %2983 = fsub fast float -0.000000e+00, %2982
  %2984 = call float @dx.op.unary.f32(i32 21, float %2979)  ; Exp(value)
  %2985 = call float @dx.op.unary.f32(i32 21, float %2981)  ; Exp(value)
  %2986 = call float @dx.op.unary.f32(i32 21, float %2983)  ; Exp(value)
  %2987 = fmul fast float %2498, %2498
  %2988 = fadd fast float %2987, 1.000000e+00
  %2989 = fmul fast float %2988, 0x3FAE8EC8A0000000
  %2990 = fmul fast float %2989, %2479
  %2991 = fmul fast float %2989, %2480
  %2992 = fmul fast float %2989, %2481
  %2993 = fmul fast float %2498, %2477
  %2994 = fsub fast float 1.000000e+00, %2993
  %2995 = fmul fast float %2477, %2477
  %2996 = fsub fast float 1.000000e+00, %2995
  %2997 = fmul fast float %2996, 0x3FB45F3060000000
  %2998 = fmul fast float %2994, %2994
  %2999 = fdiv fast float 1.000000e+00, %2998
  %3000 = fmul fast float %2997, %2999
  %3001 = fmul fast float %3000, %2474
  %3002 = fmul fast float %3000, %2475
  %3003 = fmul fast float %3000, %2476
  %3004 = fadd fast float %3001, %2990
  %3005 = fadd fast float %3002, %2991
  %3006 = fadd fast float %3003, %2992
  %3007 = fsub fast float 1.000000e+00, %2984
  %3008 = fsub fast float 1.000000e+00, %2985
  %3009 = fsub fast float 1.000000e+00, %2986
  %3010 = fmul fast float %3004, %3007
  %3011 = fmul fast float %3005, %3008
  %3012 = fmul fast float %3006, %3009
  br label %3013

; <label>:3013                                    ; preds = %2974, %2925
  %3014 = phi float [ %2951, %2925 ], [ %3010, %2974 ]
  %3015 = phi float [ %2952, %2925 ], [ %3011, %2974 ]
  %3016 = phi float [ %2953, %2925 ], [ %3012, %2974 ]
  %3017 = phi float [ %2940, %2925 ], [ %2984, %2974 ]
  %3018 = phi float [ %2940, %2925 ], [ %2985, %2974 ]
  %3019 = phi float [ %2940, %2925 ], [ %2986, %2974 ]
  br i1 %2506, label %3020, label %3218, !dx.controlflow.hints !133

; <label>:3020                                    ; preds = %3013
  %3021 = extractvalue %dx.types.CBufRet.f32 %2919, 0
  %3022 = fmul fast float %3021, %2921
  %3023 = fsub fast float %2916, %3014
  %3024 = fsub fast float %2917, %3015
  %3025 = fsub fast float %2918, %3016
  %3026 = fmul fast float %3022, %3023
  %3027 = fmul fast float %3022, %3024
  %3028 = fmul fast float %3022, %3025
  %3029 = fadd fast float %3026, %3014
  %3030 = fadd fast float %3027, %3015
  %3031 = fadd fast float %3028, %3016
  %3032 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3017)  ; FMax(a,b)
  %3033 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3018)  ; FMax(a,b)
  %3034 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3019)  ; FMax(a,b)
  %3035 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2915)  ; FMax(a,b)
  %3036 = call float @dx.op.binary.f32(i32 35, float %2914, float %2924)  ; FMax(a,b)
  %3037 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3036)  ; FMax(a,b)
  %3038 = fdiv fast float %2914, %3037
  %3039 = call float @dx.op.unary.f32(i32 7, float %3038)  ; Saturate(value)
  %3040 = fdiv fast float %2924, %3037
  %3041 = call float @dx.op.unary.f32(i32 7, float %3040)  ; Saturate(value)
  %3042 = fcmp fast une float %3035, 1.000000e+00
  br i1 %3042, label %3043, label %3056, !dx.controlflow.hints !134

; <label>:3043                                    ; preds = %3020
  %3044 = call float @dx.op.unary.f32(i32 23, float %3035)  ; Log(value)
  %3045 = fmul fast float %3044, 0x3FE62E4300000000
  %3046 = fmul fast float %2916, %3045
  %3047 = fsub fast float -0.000000e+00, %3046
  %3048 = fmul fast float %2917, %3045
  %3049 = fsub fast float -0.000000e+00, %3048
  %3050 = fmul fast float %2918, %3045
  %3051 = fsub fast float -0.000000e+00, %3050
  %3052 = fsub fast float 1.000000e+00, %3035
  %3053 = fdiv fast float %3047, %3052
  %3054 = fdiv fast float %3049, %3052
  %3055 = fdiv fast float %3051, %3052
  br label %3056

; <label>:3056                                    ; preds = %3043, %3020
  %3057 = phi float [ %3053, %3043 ], [ %2916, %3020 ]
  %3058 = phi float [ %3054, %3043 ], [ %2917, %3020 ]
  %3059 = phi float [ %3055, %3043 ], [ %2918, %3020 ]
  %3060 = phi float [ %3045, %3043 ], [ 0.000000e+00, %3020 ]
  %3061 = fcmp fast une float %3032, 1.000000e+00
  br i1 %3061, label %3062, label %3069, !dx.controlflow.hints !135

; <label>:3062                                    ; preds = %3056
  %3063 = call float @dx.op.unary.f32(i32 23, float %3032)  ; Log(value)
  %3064 = fmul fast float %3063, 0x3FE62E4300000000
  %3065 = fmul fast float %3029, %3064
  %3066 = fsub fast float -0.000000e+00, %3065
  %3067 = fsub fast float 1.000000e+00, %3032
  %3068 = fdiv fast float %3066, %3067
  br label %3069

; <label>:3069                                    ; preds = %3062, %3056
  %3070 = phi float [ %3068, %3062 ], [ %3029, %3056 ]
  %3071 = phi float [ %3064, %3062 ], [ 0.000000e+00, %3056 ]
  %3072 = fcmp fast une float %3033, 1.000000e+00
  br i1 %3072, label %3073, label %3080, !dx.controlflow.hints !135

; <label>:3073                                    ; preds = %3069
  %3074 = call float @dx.op.unary.f32(i32 23, float %3033)  ; Log(value)
  %3075 = fmul fast float %3074, 0x3FE62E4300000000
  %3076 = fmul fast float %3030, %3075
  %3077 = fsub fast float -0.000000e+00, %3076
  %3078 = fsub fast float 1.000000e+00, %3033
  %3079 = fdiv fast float %3077, %3078
  br label %3080

; <label>:3080                                    ; preds = %3073, %3069
  %3081 = phi float [ %3079, %3073 ], [ %3030, %3069 ]
  %3082 = phi float [ %3075, %3073 ], [ 0.000000e+00, %3069 ]
  %3083 = fcmp fast une float %3034, 1.000000e+00
  br i1 %3083, label %3084, label %3091, !dx.controlflow.hints !135

; <label>:3084                                    ; preds = %3080
  %3085 = call float @dx.op.unary.f32(i32 23, float %3034)  ; Log(value)
  %3086 = fmul fast float %3085, 0x3FE62E4300000000
  %3087 = fmul fast float %3031, %3086
  %3088 = fsub fast float -0.000000e+00, %3087
  %3089 = fsub fast float 1.000000e+00, %3034
  %3090 = fdiv fast float %3088, %3089
  br label %3091

; <label>:3091                                    ; preds = %3084, %3080
  %3092 = phi float [ %3090, %3084 ], [ %3031, %3080 ]
  %3093 = phi float [ %3086, %3084 ], [ 0.000000e+00, %3080 ]
  %3094 = fmul fast float %3057, %3041
  %3095 = fmul fast float %3058, %3041
  %3096 = fmul fast float %3059, %3041
  %3097 = fmul fast float %3060, %3041
  %3098 = fmul fast float %3070, %3039
  %3099 = fmul fast float %3081, %3039
  %3100 = fmul fast float %3092, %3039
  %3101 = fmul fast float %3071, %3039
  %3102 = fmul fast float %3082, %3039
  %3103 = fmul fast float %3093, %3039
  %3104 = fadd fast float %3098, %3094
  %3105 = fadd fast float %3099, %3095
  %3106 = fadd fast float %3100, %3096
  %3107 = fadd fast float %3101, %3097
  %3108 = fadd fast float %3102, %3097
  %3109 = fadd fast float %3103, %3097
  %3110 = fcmp fast une float %3107, 0.000000e+00
  br i1 %3110, label %3111, label %3118, !dx.controlflow.hints !136

; <label>:3111                                    ; preds = %3091
  %3112 = fmul fast float %3107, 0x3FF7154760000000
  %3113 = call float @dx.op.unary.f32(i32 21, float %3112)  ; Exp(value)
  %3114 = fsub fast float 1.000000e+00, %3113
  %3115 = fmul fast float %3104, %3114
  %3116 = fsub fast float -0.000000e+00, %3115
  %3117 = fdiv fast float %3116, %3107
  br label %3118

; <label>:3118                                    ; preds = %3111, %3091
  %3119 = phi float [ %3113, %3111 ], [ 1.000000e+00, %3091 ]
  %3120 = phi float [ %3117, %3111 ], [ %3104, %3091 ]
  %3121 = fcmp fast une float %3108, 0.000000e+00
  br i1 %3121, label %3122, label %3129, !dx.controlflow.hints !136

; <label>:3122                                    ; preds = %3118
  %3123 = fmul fast float %3108, 0x3FF7154760000000
  %3124 = call float @dx.op.unary.f32(i32 21, float %3123)  ; Exp(value)
  %3125 = fsub fast float 1.000000e+00, %3124
  %3126 = fmul fast float %3105, %3125
  %3127 = fsub fast float -0.000000e+00, %3126
  %3128 = fdiv fast float %3127, %3108
  br label %3129

; <label>:3129                                    ; preds = %3122, %3118
  %3130 = phi float [ %3124, %3122 ], [ 1.000000e+00, %3118 ]
  %3131 = phi float [ %3128, %3122 ], [ %3105, %3118 ]
  %3132 = fcmp fast une float %3109, 0.000000e+00
  br i1 %3132, label %3133, label %3140, !dx.controlflow.hints !136

; <label>:3133                                    ; preds = %3129
  %3134 = fmul fast float %3109, 0x3FF7154760000000
  %3135 = call float @dx.op.unary.f32(i32 21, float %3134)  ; Exp(value)
  %3136 = fsub fast float 1.000000e+00, %3135
  %3137 = fmul fast float %3106, %3136
  %3138 = fsub fast float -0.000000e+00, %3137
  %3139 = fdiv fast float %3138, %3109
  br label %3140

; <label>:3140                                    ; preds = %3133, %3129
  %3141 = phi float [ %3135, %3133 ], [ 1.000000e+00, %3129 ]
  %3142 = phi float [ %3139, %3133 ], [ %3106, %3129 ]
  %3143 = fcmp fast ogt float %3039, %3041
  br i1 %3143, label %3144, label %3164, !dx.controlflow.hints !137

; <label>:3144                                    ; preds = %3140
  %3145 = fsub fast float 1.000000e+00, %3041
  %3146 = fmul fast float %3057, %3145
  %3147 = fmul fast float %3058, %3145
  %3148 = fmul fast float %3059, %3145
  %3149 = fmul fast float %3060, %3145
  %3150 = fcmp fast une float %3149, 0.000000e+00
  br i1 %3150, label %3151, label %3202, !dx.controlflow.hints !138

; <label>:3151                                    ; preds = %3144
  %3152 = fmul fast float %3149, 0x3FF7154760000000
  %3153 = call float @dx.op.unary.f32(i32 21, float %3152)  ; Exp(value)
  %3154 = fsub fast float 1.000000e+00, %3153
  %3155 = fmul fast float %3146, %3154
  %3156 = fsub fast float -0.000000e+00, %3155
  %3157 = fmul fast float %3147, %3154
  %3158 = fsub fast float -0.000000e+00, %3157
  %3159 = fmul fast float %3148, %3154
  %3160 = fsub fast float -0.000000e+00, %3159
  %3161 = fdiv fast float %3156, %3149
  %3162 = fdiv fast float %3158, %3149
  %3163 = fdiv fast float %3160, %3149
  br label %3202

; <label>:3164                                    ; preds = %3140
  %3165 = fsub fast float 1.000000e+00, %3039
  %3166 = fmul fast float %3070, %3165
  %3167 = fmul fast float %3081, %3165
  %3168 = fmul fast float %3092, %3165
  %3169 = fmul fast float %3071, %3165
  %3170 = fmul fast float %3082, %3165
  %3171 = fmul fast float %3093, %3165
  %3172 = fcmp fast une float %3169, 0.000000e+00
  br i1 %3172, label %3173, label %3180, !dx.controlflow.hints !136

; <label>:3173                                    ; preds = %3164
  %3174 = fmul fast float %3169, 0x3FF7154760000000
  %3175 = call float @dx.op.unary.f32(i32 21, float %3174)  ; Exp(value)
  %3176 = fsub fast float 1.000000e+00, %3175
  %3177 = fmul fast float %3166, %3176
  %3178 = fsub fast float -0.000000e+00, %3177
  %3179 = fdiv fast float %3178, %3169
  br label %3180

; <label>:3180                                    ; preds = %3173, %3164
  %3181 = phi float [ %3179, %3173 ], [ %3166, %3164 ]
  %3182 = phi float [ %3175, %3173 ], [ 1.000000e+00, %3164 ]
  %3183 = fcmp fast une float %3170, 0.000000e+00
  br i1 %3183, label %3184, label %3191, !dx.controlflow.hints !136

; <label>:3184                                    ; preds = %3180
  %3185 = fmul fast float %3170, 0x3FF7154760000000
  %3186 = call float @dx.op.unary.f32(i32 21, float %3185)  ; Exp(value)
  %3187 = fsub fast float 1.000000e+00, %3186
  %3188 = fmul fast float %3167, %3187
  %3189 = fsub fast float -0.000000e+00, %3188
  %3190 = fdiv fast float %3189, %3170
  br label %3191

; <label>:3191                                    ; preds = %3184, %3180
  %3192 = phi float [ %3190, %3184 ], [ %3167, %3180 ]
  %3193 = phi float [ %3186, %3184 ], [ 1.000000e+00, %3180 ]
  %3194 = fcmp fast une float %3171, 0.000000e+00
  br i1 %3194, label %3195, label %3202, !dx.controlflow.hints !136

; <label>:3195                                    ; preds = %3191
  %3196 = fmul fast float %3171, 0x3FF7154760000000
  %3197 = call float @dx.op.unary.f32(i32 21, float %3196)  ; Exp(value)
  %3198 = fsub fast float 1.000000e+00, %3197
  %3199 = fmul fast float %3168, %3198
  %3200 = fsub fast float -0.000000e+00, %3199
  %3201 = fdiv fast float %3200, %3171
  br label %3202

; <label>:3202                                    ; preds = %3195, %3191, %3151, %3144
  %3203 = phi float [ %3201, %3195 ], [ %3163, %3151 ], [ %3148, %3144 ], [ %3168, %3191 ]
  %3204 = phi float [ %3192, %3195 ], [ %3162, %3151 ], [ %3147, %3144 ], [ %3192, %3191 ]
  %3205 = phi float [ %3181, %3195 ], [ %3161, %3151 ], [ %3146, %3144 ], [ %3181, %3191 ]
  %3206 = phi float [ %3197, %3195 ], [ %3153, %3151 ], [ 1.000000e+00, %3144 ], [ 1.000000e+00, %3191 ]
  %3207 = phi float [ %3193, %3195 ], [ %3153, %3151 ], [ 1.000000e+00, %3144 ], [ %3193, %3191 ]
  %3208 = phi float [ %3182, %3195 ], [ %3153, %3151 ], [ 1.000000e+00, %3144 ], [ %3182, %3191 ]
  %3209 = fmul fast float %3208, %3120
  %3210 = fmul fast float %3207, %3131
  %3211 = fmul fast float %3206, %3142
  %3212 = fadd fast float %3209, %3205
  %3213 = fadd fast float %3210, %3204
  %3214 = fadd fast float %3211, %3203
  %3215 = fmul fast float %3208, %3119
  %3216 = fmul fast float %3207, %3130
  %3217 = fmul fast float %3206, %3141
  br label %3218

; <label>:3218                                    ; preds = %3202, %3013
  %3219 = phi float [ %3019, %3013 ], [ %3217, %3202 ]
  %3220 = phi float [ %3018, %3013 ], [ %3216, %3202 ]
  %3221 = phi float [ %3017, %3013 ], [ %3215, %3202 ]
  %3222 = phi float [ %3016, %3013 ], [ %3214, %3202 ]
  %3223 = phi float [ %3015, %3013 ], [ %3213, %3202 ]
  %3224 = phi float [ %3014, %3013 ], [ %3212, %3202 ]
  %3225 = fmul fast float %3221, %2362
  %3226 = fmul fast float %3220, %2363
  %3227 = fmul fast float %3219, %2364
  %3228 = fsub fast float 1.000000e+00, %2425
  %3229 = fmul fast float %3224, %3228
  %3230 = fmul fast float %3223, %3228
  %3231 = fmul fast float %3222, %3228
  %3232 = fadd fast float %3229, %3225
  %3233 = fadd fast float %3230, %3226
  %3234 = fadd fast float %3231, %3227
  %3235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %3236 = extractvalue %dx.types.CBufRet.f32 %3235, 2
  %3237 = fmul fast float %3236, %2435
  %3238 = call float @dx.op.unary.f32(i32 7, float %3237)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %27, i32 %28, i32 undef, float %2425, float %2425, float %2425, float %2425, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %3239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3240 = extractvalue %dx.types.CBufRet.f32 %3239, 0
  %3241 = fmul fast float %3240, %3232
  %3242 = fmul fast float %3240, %3233
  %3243 = fmul fast float %3240, %3234
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %27, i32 %28, i32 undef, float %3241, float %3242, float %3243, float %3241, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %27, i32 %28, i32 undef, float %3238, float %3238, float %3238, float %3238, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!dx.entryPoints = !{!38}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !24, !30, !33}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !19, !20, !21, !22, !23}
!6 = !{i32 0, %"class.Texture3D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 16, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture3D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 4, i32 0, !7}
!10 = !{i32 3, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 4, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 9, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 31, i32 1, i32 7, i32 0, !7}
!14 = !{i32 7, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 30, i32 1, i32 4, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<float>"* undef, !"", i32 0, i32 29, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 0, i32 26, i32 1, i32 2, i32 0, !7}
!17 = !{i32 10, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 32, i32 1, i32 2, i32 0, !18}
!18 = !{i32 0, i32 5}
!19 = !{i32 11, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 33, i32 1, i32 4, i32 0, !7}
!20 = !{i32 12, %"class.Texture1D<float>"* undef, !"", i32 0, i32 14, i32 1, i32 1, i32 0, !7}
!21 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!22 = !{i32 14, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!24 = !{!25, !26, !27, !28}
!25 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!26 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!27 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!28 = !{i32 3, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 7, i1 false, i1 false, i1 false, !29}
!29 = !{i32 0, i32 14}
!30 = !{!31, !32}
!31 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!32 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!33 = !{!34, !35, !36, !37}
!34 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!35 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!36 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!37 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!38 = !{void ()* @cs_fog_raymarching_clouds_heightmap, !"cs_fog_raymarching_clouds_heightmap", null, !4, !39}
!39 = !{i32 0, i64 272, i32 4, !40}
!40 = !{i32 8, i32 8, i32 1}
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
!51 = distinct !{!51, !"dx.controlflow.hints", i32 1}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
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
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = !{!94, !94, i64 0}
!94 = !{!"float", !95, i64 0}
!95 = !{!"omnipotent char", !96, i64 0}
!96 = !{!"Simple C/C++ TBAA"}
!97 = !{!98, !100, !102, !103, !105, !106, !107}
!98 = distinct !{!98, !99, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!99 = distinct !{!99, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!100 = distinct !{!100, !101, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!101 = distinct !{!101, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!102 = distinct !{!102, !101, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!103 = distinct !{!103, !104, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!104 = distinct !{!104, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!105 = distinct !{!105, !104, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!106 = distinct !{!106, !104, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!107 = distinct !{!107, !104, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 2}
!109 = !{!110}
!110 = distinct !{!110, !111, !"\01?sort@@YAXAIAM00@Z: %c"}
!111 = distinct !{!111, !"\01?sort@@YAXAIAM00@Z"}
!112 = !{!113, !114, !98, !100, !102, !103, !105, !106, !107}
!113 = distinct !{!113, !111, !"\01?sort@@YAXAIAM00@Z: %a"}
!114 = distinct !{!114, !111, !"\01?sort@@YAXAIAM00@Z: %b"}
!115 = !{!114}
!116 = !{!113, !110, !98, !100, !102, !103, !105, !106, !107}
!117 = !{!113}
!118 = !{!114, !110, !98, !100, !102, !103, !105, !106, !107}
!119 = !{!120}
!120 = distinct !{!120, !121, !"\01?sort@@YAXAIAM00@Z: %c"}
!121 = distinct !{!121, !"\01?sort@@YAXAIAM00@Z"}
!122 = !{!123, !124, !98, !100, !102, !103, !105, !106, !107}
!123 = distinct !{!123, !121, !"\01?sort@@YAXAIAM00@Z: %a"}
!124 = distinct !{!124, !121, !"\01?sort@@YAXAIAM00@Z: %b"}
!125 = !{!124}
!126 = !{!123, !120, !98, !100, !102, !103, !105, !106, !107}
!127 = !{!123}
!128 = !{!124, !120, !98, !100, !102, !103, !105, !106, !107}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 2}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 2}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 2}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 1}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 1}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 1}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 1}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 2}
!138 = distinct !{!138, !"dx.controlflow.hints", i32 1}

