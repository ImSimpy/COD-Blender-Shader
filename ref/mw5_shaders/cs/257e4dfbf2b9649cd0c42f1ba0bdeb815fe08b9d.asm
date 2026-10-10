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
; shader hash: 66c8fbfb5bc4677645fd445ef551c35d
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

define void @cs_fog_raymarching_air_clouds_heightmap() {
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
  %208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %209 = extractvalue %dx.types.CBufRet.f32 %208, 3
  %210 = fsub fast float -0.000000e+00, %73
  %211 = fsub fast float -0.000000e+00, %74
  %212 = fsub fast float %209, %75
  %213 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %210, float %211, float %212)  ; Dot3(ax,ay,az,bx,by,bz)
  %214 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %215 = fdiv fast float 1.000000e+00, %214
  %216 = fmul fast float %215, %213
  %217 = fcmp fast olt float %216, 0.000000e+00
  %218 = fcmp fast ogt float %118, 0.000000e+00
  %219 = and i1 %218, %217
  br i1 %219, label %224, label %220, !dx.controlflow.hints !44

; <label>:220                                     ; preds = %204
  %221 = fcmp fast olt float %118, 0.000000e+00
  br i1 %221, label %222, label %224, !dx.controlflow.hints !45

; <label>:222                                     ; preds = %220
  %223 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %216)  ; FMax(a,b)
  br label %224

; <label>:224                                     ; preds = %222, %220, %204
  %225 = phi float [ 0.000000e+00, %204 ], [ %223, %222 ], [ 0.000000e+00, %220 ]
  %226 = phi float [ 0.000000e+00, %204 ], [ 0x47EFFFFFE0000000, %222 ], [ %216, %220 ]
  %227 = fcmp fast oeq float %226, 0.000000e+00
  br i1 %227, label %231, label %228, !dx.controlflow.hints !46

; <label>:228                                     ; preds = %224
  %229 = call float @dx.op.binary.f32(i32 36, float %207, float %225)  ; FMin(a,b)
  %230 = call float @dx.op.binary.f32(i32 35, float %206, float %226)  ; FMax(a,b)
  br label %231

; <label>:231                                     ; preds = %228, %224
  %232 = phi i32 [ 1, %228 ], [ 0, %224 ]
  %233 = phi float [ %230, %228 ], [ %206, %224 ]
  %234 = phi float [ %229, %228 ], [ %207, %224 ]
  %235 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %236 = extractvalue %dx.types.CBufRet.i32 %235, 3
  %237 = icmp eq i32 %236, 0
  %238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %239 = extractvalue %dx.types.CBufRet.f32 %238, 2
  %240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %241 = extractvalue %dx.types.CBufRet.f32 %240, 2
  %242 = fsub fast float %239, %75
  %243 = fadd fast float %242, %241
  br i1 %237, label %251, label %244, !dx.controlflow.hints !47

; <label>:244                                     ; preds = %231
  %245 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %210, float %211, float %243)  ; Dot3(ax,ay,az,bx,by,bz)
  %246 = fmul fast float %215, %245
  %247 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %210, float %211, float %242)  ; Dot3(ax,ay,az,bx,by,bz)
  %248 = fmul fast float %215, %247
  %249 = call float @dx.op.binary.f32(i32 36, float %246, float %248)  ; FMin(a,b)
  %250 = call float @dx.op.binary.f32(i32 35, float %246, float %248)  ; FMax(a,b)
  br label %284

; <label>:251                                     ; preds = %231
  %252 = fdiv fast float 1.000000e+00, %116
  %253 = fdiv fast float 1.000000e+00, %117
  %254 = fdiv fast float 1.000000e+00, %118
  %255 = extractvalue %dx.types.CBufRet.f32 %238, 0
  %256 = extractvalue %dx.types.CBufRet.f32 %238, 1
  %257 = extractvalue %dx.types.CBufRet.f32 %240, 0
  %258 = extractvalue %dx.types.CBufRet.f32 %240, 1
  %259 = fsub fast float %255, %73
  %260 = fmul fast float %259, %252
  %261 = fadd fast float %259, %257
  %262 = fmul fast float %261, %252
  %263 = call float @dx.op.binary.f32(i32 36, float %260, float %262)  ; FMin(a,b)
  %264 = call float @dx.op.binary.f32(i32 35, float %260, float %262)  ; FMax(a,b)
  %265 = fsub fast float %256, %74
  %266 = fmul fast float %265, %253
  %267 = fadd fast float %265, %258
  %268 = fmul fast float %267, %253
  %269 = call float @dx.op.binary.f32(i32 36, float %266, float %268)  ; FMin(a,b)
  %270 = call float @dx.op.binary.f32(i32 35, float %263, float %269)  ; FMax(a,b)
  %271 = call float @dx.op.binary.f32(i32 35, float %266, float %268)  ; FMax(a,b)
  %272 = call float @dx.op.binary.f32(i32 36, float %264, float %271)  ; FMin(a,b)
  %273 = fmul fast float %242, %254
  %274 = fmul fast float %243, %254
  %275 = call float @dx.op.binary.f32(i32 36, float %273, float %274)  ; FMin(a,b)
  %276 = call float @dx.op.binary.f32(i32 35, float %270, float %275)  ; FMax(a,b)
  %277 = call float @dx.op.binary.f32(i32 35, float %273, float %274)  ; FMax(a,b)
  %278 = call float @dx.op.binary.f32(i32 36, float %272, float %277)  ; FMin(a,b)
  %279 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %276)  ; FMax(a,b)
  %280 = fcmp fast ult float %278, %279
  br i1 %280, label %284, label %281, !dx.controlflow.hints !48

; <label>:281                                     ; preds = %251
  %282 = call float @dx.op.binary.f32(i32 36, float %276, float %278)  ; FMin(a,b)
  %283 = call float @dx.op.binary.f32(i32 35, float %276, float %278)  ; FMax(a,b)
  br label %284

; <label>:284                                     ; preds = %281, %251, %244
  %285 = phi float [ %249, %244 ], [ %282, %281 ], [ 0.000000e+00, %251 ]
  %286 = phi float [ %250, %244 ], [ %283, %281 ], [ 0.000000e+00, %251 ]
  %287 = fcmp fast oeq float %286, 0.000000e+00
  br i1 %287, label %291, label %288, !dx.controlflow.hints !49

; <label>:288                                     ; preds = %284
  %289 = call float @dx.op.binary.f32(i32 36, float %234, float %285)  ; FMin(a,b)
  %290 = call float @dx.op.binary.f32(i32 35, float %233, float %286)  ; FMax(a,b)
  br label %291

; <label>:291                                     ; preds = %288, %284
  %292 = phi i32 [ 1, %288 ], [ 0, %284 ]
  %293 = phi float [ %290, %288 ], [ %233, %284 ]
  %294 = phi float [ %289, %288 ], [ %234, %284 ]
  %295 = call float @dx.op.binary.f32(i32 36, float %137, float %293)  ; FMin(a,b)
  %296 = call float @dx.op.binary.f32(i32 35, float %114, float %294)  ; FMax(a,b)
  %297 = extractvalue %dx.types.CBufRet.f32 %208, 0
  %298 = fmul fast float %62, 2.000000e+00
  %299 = fadd fast float %298, -1.000000e+00
  %300 = fmul fast float %297, %299
  %301 = fadd fast float %300, %296
  %302 = fcmp fast olt float %301, %295
  %303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %304 = extractvalue %dx.types.CBufRet.f32 %303, 2
  %305 = fcmp fast olt float %304, 1.000000e+00
  %306 = and i1 %302, %305
  br i1 %306, label %307, label %2522

; <label>:307                                     ; preds = %291
  %308 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %309 = extractvalue %dx.types.CBufRet.i32 %308, 1
  %310 = add i32 %309, -1
  %311 = fmul fast float %301, %118
  %312 = fadd fast float %311, %75
  %313 = fmul fast float %301, %117
  %314 = fadd fast float %313, %74
  %315 = fmul fast float %301, %116
  %316 = fadd fast float %315, %73
  br label %317

; <label>:317                                     ; preds = %2498, %307
  %318 = phi float [ %2500, %2498 ], [ 0.000000e+00, %307 ]
  %319 = phi float [ %2501, %2498 ], [ 1.000000e+00, %307 ]
  %320 = phi float [ %2502, %2498 ], [ 0.000000e+00, %307 ]
  %321 = phi float [ %2503, %2498 ], [ 0.000000e+00, %307 ]
  %322 = phi float [ %2504, %2498 ], [ 0.000000e+00, %307 ]
  %323 = phi float [ %2514, %2498 ], [ %316, %307 ]
  %324 = phi float [ %2515, %2498 ], [ %314, %307 ]
  %325 = phi float [ %2516, %2498 ], [ %312, %307 ]
  %326 = phi float [ %2499, %2498 ], [ %301, %307 ]
  %327 = phi i32 [ %510, %2498 ], [ %310, %307 ]
  %328 = phi float [ %2505, %2498 ], [ 0.000000e+00, %307 ]
  %329 = phi float [ %2506, %2498 ], [ 0.000000e+00, %307 ]
  %330 = phi float [ %2507, %2498 ], [ 0.000000e+00, %307 ]
  %331 = phi float [ %2508, %2498 ], [ 0.000000e+00, %307 ]
  %332 = phi float [ %2509, %2498 ], [ 0.000000e+00, %307 ]
  %333 = phi i32 [ %2510, %2498 ], [ 0, %307 ]
  %334 = fsub fast float -0.000000e+00, %324
  %335 = fsub fast float -0.000000e+00, %323
  %336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %337 = extractvalue %dx.types.CBufRet.f32 %336, 0
  %338 = icmp eq i32 %205, 0
  br i1 %338, label %507, label %339, !dx.controlflow.hints !50

; <label>:339                                     ; preds = %317
  %340 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %341 = extractvalue %dx.types.CBufRet.i32 %340, 1
  %342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %343 = extractvalue %dx.types.CBufRet.f32 %342, 1
  %344 = fcmp fast ogt float %343, %326
  br i1 %344, label %345, label %347, !dx.controlflow.hints !51

; <label>:345                                     ; preds = %339
  %346 = fsub fast float %343, %326
  br label %497

; <label>:347                                     ; preds = %339
  %348 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %349 = extractvalue %dx.types.CBufRet.i32 %348, 3
  %350 = icmp eq i32 %349, 0
  %351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %352 = extractvalue %dx.types.CBufRet.f32 %351, 2
  %353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %354 = extractvalue %dx.types.CBufRet.f32 %353, 2
  %355 = fsub fast float %352, %325
  %356 = fadd fast float %355, %354
  %357 = fsub fast float 0xC7EFFFFFE0000000, %325
  br i1 %350, label %365, label %358, !dx.controlflow.hints !41

; <label>:358                                     ; preds = %347
  %359 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %335, float %334, float %356)  ; Dot3(ax,ay,az,bx,by,bz)
  %360 = fmul fast float %215, %359
  %361 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %335, float %334, float %357)  ; Dot3(ax,ay,az,bx,by,bz)
  %362 = fmul fast float %215, %361
  %363 = call float @dx.op.binary.f32(i32 36, float %360, float %362)  ; FMin(a,b)
  %364 = call float @dx.op.binary.f32(i32 35, float %360, float %362)  ; FMax(a,b)
  br label %398

; <label>:365                                     ; preds = %347
  %366 = extractvalue %dx.types.CBufRet.f32 %351, 0
  %367 = extractvalue %dx.types.CBufRet.f32 %351, 1
  %368 = extractvalue %dx.types.CBufRet.f32 %353, 0
  %369 = extractvalue %dx.types.CBufRet.f32 %353, 1
  %370 = fdiv fast float 1.000000e+00, %116
  %371 = fdiv fast float 1.000000e+00, %117
  %372 = fdiv fast float 1.000000e+00, %118
  %373 = fsub fast float %366, %323
  %374 = fmul fast float %370, %373
  %375 = fadd fast float %373, %368
  %376 = fmul fast float %375, %370
  %377 = call float @dx.op.binary.f32(i32 36, float %374, float %376)  ; FMin(a,b)
  %378 = call float @dx.op.binary.f32(i32 35, float %374, float %376)  ; FMax(a,b)
  %379 = fsub fast float %367, %324
  %380 = fmul fast float %371, %379
  %381 = fadd fast float %379, %369
  %382 = fmul fast float %381, %371
  %383 = call float @dx.op.binary.f32(i32 36, float %380, float %382)  ; FMin(a,b)
  %384 = call float @dx.op.binary.f32(i32 35, float %377, float %383)  ; FMax(a,b)
  %385 = call float @dx.op.binary.f32(i32 35, float %380, float %382)  ; FMax(a,b)
  %386 = call float @dx.op.binary.f32(i32 36, float %378, float %385)  ; FMin(a,b)
  %387 = fmul fast float %372, %357
  %388 = fmul fast float %372, %356
  %389 = call float @dx.op.binary.f32(i32 36, float %387, float %388)  ; FMin(a,b)
  %390 = call float @dx.op.binary.f32(i32 35, float %384, float %389)  ; FMax(a,b)
  %391 = call float @dx.op.binary.f32(i32 35, float %387, float %388)  ; FMax(a,b)
  %392 = call float @dx.op.binary.f32(i32 36, float %386, float %391)  ; FMin(a,b)
  %393 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %390)  ; FMax(a,b)
  %394 = fcmp fast ult float %392, %393
  br i1 %394, label %398, label %395, !dx.controlflow.hints !42

; <label>:395                                     ; preds = %365
  %396 = call float @dx.op.binary.f32(i32 36, float %390, float %392)  ; FMin(a,b)
  %397 = call float @dx.op.binary.f32(i32 35, float %390, float %392)  ; FMax(a,b)
  br label %398

; <label>:398                                     ; preds = %395, %365, %358
  %399 = phi float [ %363, %358 ], [ %396, %395 ], [ 0.000000e+00, %365 ]
  %400 = phi float [ %364, %358 ], [ %397, %395 ], [ 0.000000e+00, %365 ]
  %401 = fcmp fast ogt float %399, 0.000000e+00
  br i1 %401, label %497, label %402, !dx.controlflow.hints !52

; <label>:402                                     ; preds = %398
  %403 = fcmp fast ugt float %400, 0.000000e+00
  br i1 %403, label %404, label %497, !dx.controlflow.hints !53

; <label>:404                                     ; preds = %402
  %405 = icmp sgt i32 %327, 0
  br i1 %405, label %406, label %491

; <label>:406                                     ; preds = %404
  br label %407

; <label>:407                                     ; preds = %487, %406
  %408 = phi i32 [ %488, %487 ], [ %327, %406 ]
  %409 = sitofp i32 %408 to float
  %410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %411 = extractvalue %dx.types.CBufRet.f32 %410, 0
  %412 = extractvalue %dx.types.CBufRet.f32 %410, 1
  %413 = fsub fast float %323, %411
  %414 = fsub fast float %324, %412
  %415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %416 = extractvalue %dx.types.CBufRet.f32 %415, 0
  %417 = extractvalue %dx.types.CBufRet.f32 %415, 1
  %418 = fmul fast float %413, %416
  %419 = fmul fast float %414, %417
  %420 = fsub fast float 1.000000e+00, %419
  %421 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %422 = extractvalue %dx.types.CBufRet.i32 %421, 3
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %430, label %424, !dx.controlflow.hints !54

; <label>:424                                     ; preds = %407
  %425 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %23, float %418, float %420, float undef, float undef, i32 0, i32 0, i32 undef, float %409)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %426 = extractvalue %dx.types.ResRet.f32 %425, 0
  %427 = extractvalue %dx.types.ResRet.f32 %425, 1
  %428 = extractvalue %dx.types.ResRet.f32 %425, 2
  %429 = extractvalue %dx.types.ResRet.f32 %425, 3
  br label %436

; <label>:430                                     ; preds = %407
  %431 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %24, float %418, float %420, float undef, float undef, i32 0, i32 0, i32 undef, float %409)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %432 = extractvalue %dx.types.ResRet.f32 %431, 0
  %433 = extractvalue %dx.types.ResRet.f32 %431, 1
  %434 = extractvalue %dx.types.ResRet.f32 %431, 2
  %435 = extractvalue %dx.types.ResRet.f32 %431, 3
  br label %436

; <label>:436                                     ; preds = %430, %424
  %437 = phi float [ %426, %424 ], [ %432, %430 ]
  %438 = phi float [ %427, %424 ], [ %433, %430 ]
  %439 = phi float [ %428, %424 ], [ %434, %430 ]
  %440 = phi float [ %429, %424 ], [ %435, %430 ]
  %441 = extractvalue %dx.types.CBufRet.f32 %415, 3
  %442 = fmul fast float %441, %437
  %443 = extractvalue %dx.types.CBufRet.f32 %410, 2
  %444 = fadd fast float %442, %443
  %445 = fmul fast float %441, %438
  %446 = fadd fast float %445, %443
  %447 = fmul fast float %441, %439
  %448 = fadd fast float %447, %443
  %449 = and i32 %408, 31
  %450 = shl i32 1, %449
  %451 = uitofp i32 %450 to float
  %452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %453 = extractvalue %dx.types.CBufRet.f32 %452, 3
  %454 = fdiv fast float 1.000000e+00, %453
  %455 = fmul fast float %454, %451
  %456 = fmul fast float %455, %118
  %457 = fadd fast float %456, %325
  %458 = fcmp fast oeq float %440, 0.000000e+00
  %459 = fcmp fast ogt float %325, %446
  %460 = fcmp fast ogt float %457, %446
  %461 = and i1 %459, %460
  %462 = or i1 %458, %461
  br i1 %462, label %463, label %467, !dx.controlflow.hints !55

; <label>:463                                     ; preds = %436
  %464 = add nsw i32 %408, 1
  %465 = add nsw i32 %341, -1
  %466 = call i32 @dx.op.binary.i32(i32 38, i32 %464, i32 %465)  ; IMin(a,b)
  br label %497

; <label>:467                                     ; preds = %436
  %468 = fcmp fast olt float %325, %448
  %469 = fcmp fast olt float %457, %448
  %470 = and i1 %468, %469
  br i1 %470, label %471, label %475, !dx.controlflow.hints !56

; <label>:471                                     ; preds = %467
  %472 = add nsw i32 %408, 1
  %473 = add nsw i32 %341, -1
  %474 = call i32 @dx.op.binary.i32(i32 38, i32 %472, i32 %473)  ; IMin(a,b)
  br label %497

; <label>:475                                     ; preds = %467
  %476 = fcmp fast olt float %325, %444
  %477 = fcmp fast olt float %457, %444
  %478 = and i1 %476, %477
  br i1 %478, label %479, label %487, !dx.controlflow.hints !57

; <label>:479                                     ; preds = %475
  %480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %481 = extractvalue %dx.types.CBufRet.f32 %480, 3
  %482 = extractvalue %dx.types.CBufRet.f32 %415, 2
  %483 = fcmp fast une float %481, %482
  br i1 %483, label %484, label %491, !dx.controlflow.hints !58

; <label>:484                                     ; preds = %479
  %485 = fsub fast float %325, %448
  %486 = call float @dx.op.binary.f32(i32 36, float %455, float %485)  ; FMin(a,b)
  br label %491

; <label>:487                                     ; preds = %475
  %488 = add nsw i32 %408, -1
  %489 = icmp sgt i32 %408, 1
  br i1 %489, label %407, label %490

; <label>:490                                     ; preds = %487
  br label %491

; <label>:491                                     ; preds = %490, %484, %479, %404
  %492 = phi float [ %486, %484 ], [ %455, %479 ], [ 0.000000e+00, %404 ], [ 0.000000e+00, %490 ]
  %493 = phi i32 [ %408, %484 ], [ %408, %479 ], [ %327, %404 ], [ %488, %490 ]
  %494 = add nsw i32 %493, 1
  %495 = add nsw i32 %341, -1
  %496 = call i32 @dx.op.binary.i32(i32 38, i32 %494, i32 %495)  ; IMin(a,b)
  br label %497

; <label>:497                                     ; preds = %491, %471, %463, %402, %398, %345
  %498 = phi float [ %346, %345 ], [ %455, %463 ], [ %455, %471 ], [ %492, %491 ], [ 0x47EFFFFFE0000000, %402 ], [ %399, %398 ]
  %499 = phi i32 [ %205, %345 ], [ %205, %463 ], [ %205, %471 ], [ %205, %491 ], [ 0, %402 ], [ %205, %398 ]
  %500 = phi i32 [ %327, %345 ], [ %466, %463 ], [ %474, %471 ], [ %496, %491 ], [ %327, %402 ], [ %327, %398 ]
  %501 = icmp ne i32 %499, 0
  %502 = zext i1 %501 to i32
  %503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %504 = extractvalue %dx.types.CBufRet.f32 %503, 2
  %505 = call float @dx.op.binary.f32(i32 35, float %498, float %504)  ; FMax(a,b)
  %506 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %505)  ; FMin(a,b)
  br label %507

; <label>:507                                     ; preds = %497, %317
  %508 = phi i32 [ %502, %497 ], [ 0, %317 ]
  %509 = phi float [ %506, %497 ], [ 0x47EFFFFFE0000000, %317 ]
  %510 = phi i32 [ %500, %497 ], [ %327, %317 ]
  %511 = icmp eq i32 %232, 0
  br i1 %511, label %524, label %512, !dx.controlflow.hints !59

; <label>:512                                     ; preds = %507
  %513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %514 = extractvalue %dx.types.CBufRet.f32 %513, 3
  %515 = extractvalue %dx.types.CBufRet.f32 %513, 2
  %516 = fmul fast float %514, %326
  %517 = fdiv fast float %516, %295
  %518 = fadd fast float %517, 1.000000e+00
  %519 = call float @dx.op.unary.f32(i32 23, float %518)  ; Log(value)
  %520 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %519)  ; FMin(a,b)
  %521 = fmul fast float %515, %295
  %522 = fmul fast float %521, %520
  %523 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %522)  ; FMin(a,b)
  br label %524

; <label>:524                                     ; preds = %512, %507
  %525 = phi float [ %523, %512 ], [ 0x47EFFFFFE0000000, %507 ]
  %526 = icmp eq i32 %292, 0
  br i1 %526, label %583, label %527, !dx.controlflow.hints !60

; <label>:527                                     ; preds = %524
  %528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %529 = extractvalue %dx.types.CBufRet.f32 %528, 0
  %530 = extractvalue %dx.types.CBufRet.f32 %528, 1
  %531 = extractvalue %dx.types.CBufRet.f32 %528, 2
  %532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %533 = extractvalue %dx.types.CBufRet.f32 %532, 0
  %534 = extractvalue %dx.types.CBufRet.f32 %532, 1
  %535 = extractvalue %dx.types.CBufRet.f32 %532, 2
  %536 = fsub fast float %323, %533
  %537 = fsub fast float %324, %534
  %538 = fsub fast float %325, %535
  %539 = fmul fast float %536, %529
  %540 = fmul fast float %537, %530
  %541 = fmul fast float %538, %531
  %542 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %543 = extractvalue %dx.types.CBufRet.i32 %542, 3
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %548, label %545, !dx.controlflow.hints !61

; <label>:545                                     ; preds = %527
  %546 = call float @dx.op.unary.f32(i32 22, float %539)  ; Frc(value)
  %547 = call float @dx.op.unary.f32(i32 22, float %540)  ; Frc(value)
  br label %548

; <label>:548                                     ; preds = %545, %527
  %549 = phi float [ %546, %545 ], [ %539, %527 ]
  %550 = phi float [ %547, %545 ], [ %540, %527 ]
  %551 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %22, float %549, float %550, float %541, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %552 = extractvalue %dx.types.ResRet.f32 %551, 0
  %553 = fmul fast float %552, 2.000000e+00
  %554 = fadd fast float %553, -1.000000e+00
  %555 = extractvalue %dx.types.CBufRet.f32 %528, 3
  %556 = fmul fast float %554, %555
  %557 = fcmp fast olt float %556, 0.000000e+00
  %558 = fcmp fast oge float %541, 0.000000e+00
  %559 = fcmp fast ole float %541, 1.000000e+00
  br i1 %544, label %562, label %560, !dx.controlflow.hints !62

; <label>:560                                     ; preds = %548
  %561 = and i1 %558, %559
  br label %572

; <label>:562                                     ; preds = %548
  %563 = fcmp fast oge float %539, 0.000000e+00
  %564 = fcmp fast oge float %540, 0.000000e+00
  %565 = and i1 %563, %564
  %566 = and i1 %558, %565
  %567 = fcmp fast ole float %539, 1.000000e+00
  %568 = fcmp fast ole float %540, 1.000000e+00
  %569 = and i1 %567, %568
  %570 = and i1 %559, %569
  %571 = and i1 %566, %570
  br label %572

; <label>:572                                     ; preds = %562, %560
  %573 = phi i1 [ %561, %560 ], [ %571, %562 ]
  %574 = and i1 %557, %573
  %575 = call float @dx.op.unary.f32(i32 6, float %556)  ; FAbs(value)
  %576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %577 = extractvalue %dx.types.CBufRet.f32 %576, 1
  %578 = extractvalue %dx.types.CBufRet.f32 %576, 0
  %579 = call float @dx.op.binary.f32(i32 35, float %575, float %578)  ; FMax(a,b)
  %580 = select i1 %574, float %577, float %579
  %581 = zext i1 %574 to i32
  %582 = call float @dx.op.binary.f32(i32 36, float %509, float %580)  ; FMin(a,b)
  br label %583

; <label>:583                                     ; preds = %572, %524
  %584 = phi i32 [ %581, %572 ], [ 0, %524 ]
  %585 = phi float [ %582, %572 ], [ %509, %524 ]
  %586 = extractvalue %dx.types.CBufRet.f32 %336, 2
  %587 = fmul fast float %586, %326
  %588 = call float @dx.op.unary.f32(i32 23, float %587)  ; Log(value)
  %589 = fmul fast float %588, 0x3FE62E4300000000
  %590 = call float @dx.op.binary.f32(i32 35, float %589, float 1.000000e+00)  ; FMax(a,b)
  %591 = fmul fast float %590, %525
  %592 = call float @dx.op.binary.f32(i32 36, float %591, float %585)  ; FMin(a,b)
  %593 = call float @dx.op.binary.f32(i32 35, float %592, float %337)  ; FMax(a,b)
  %594 = fsub fast float %295, %326
  %595 = fadd fast float %594, 0x3F1A36E2E0000000
  %596 = call float @dx.op.binary.f32(i32 36, float %595, float %593)  ; FMin(a,b)
  %597 = icmp eq i32 %508, 0
  br i1 %597, label %703, label %598, !dx.controlflow.hints !63

; <label>:598                                     ; preds = %583
  %599 = fcmp fast olt float %595, %593
  %600 = fmul fast float %118, %61
  %601 = fmul fast float %600, %596
  %602 = fadd fast float %601, %325
  %603 = fmul fast float %118, %62
  %604 = fmul fast float %603, %596
  %605 = fadd fast float %604, %325
  %606 = fmul fast float %118, %63
  %607 = fmul fast float %606, %596
  %608 = fadd fast float %607, %325
  br i1 %599, label %609, label %614, !dx.controlflow.hints !64

; <label>:609                                     ; preds = %598
  %610 = fmul fast float %596, %116
  %611 = fmul fast float %596, %117
  %612 = fadd fast float %610, %323
  %613 = fadd fast float %611, %324
  br label %614

; <label>:614                                     ; preds = %609, %598
  %615 = phi float [ %612, %609 ], [ %323, %598 ]
  %616 = phi float [ %613, %609 ], [ %324, %598 ]
  %617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %618 = extractvalue %dx.types.CBufRet.f32 %617, 0
  %619 = extractvalue %dx.types.CBufRet.f32 %617, 1
  %620 = fsub fast float %615, %618
  %621 = fsub fast float %616, %619
  %622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %623 = extractvalue %dx.types.CBufRet.f32 %622, 0
  %624 = extractvalue %dx.types.CBufRet.f32 %622, 1
  %625 = fmul fast float %620, %623
  %626 = fmul fast float %621, %624
  %627 = fsub fast float 1.000000e+00, %626
  %628 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %629 = extractvalue %dx.types.CBufRet.i32 %628, 3
  %630 = icmp eq i32 %629, 0
  br i1 %630, label %637, label %631, !dx.controlflow.hints !54

; <label>:631                                     ; preds = %614
  %632 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %23, float %625, float %627, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %633 = extractvalue %dx.types.ResRet.f32 %632, 0
  %634 = extractvalue %dx.types.ResRet.f32 %632, 1
  %635 = extractvalue %dx.types.ResRet.f32 %632, 2
  %636 = extractvalue %dx.types.ResRet.f32 %632, 3
  br label %643

; <label>:637                                     ; preds = %614
  %638 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %24, float %625, float %627, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %639 = extractvalue %dx.types.ResRet.f32 %638, 0
  %640 = extractvalue %dx.types.ResRet.f32 %638, 1
  %641 = extractvalue %dx.types.ResRet.f32 %638, 2
  %642 = extractvalue %dx.types.ResRet.f32 %638, 3
  br label %643

; <label>:643                                     ; preds = %637, %631
  %644 = phi float [ %633, %631 ], [ %639, %637 ]
  %645 = phi float [ %634, %631 ], [ %640, %637 ]
  %646 = phi float [ %635, %631 ], [ %641, %637 ]
  %647 = phi float [ %636, %631 ], [ %642, %637 ]
  %648 = extractvalue %dx.types.CBufRet.f32 %622, 3
  %649 = fmul fast float %648, %645
  %650 = fmul fast float %649, %644
  %651 = fsub fast float %649, %650
  %652 = fcmp fast ole float %651, 0.000000e+00
  %653 = extractvalue %dx.types.CBufRet.f32 %617, 2
  %654 = fadd fast float %650, %653
  %655 = fmul fast float %648, %646
  %656 = fadd fast float %655, %653
  %657 = fdiv fast float 1.000000e+00, %651
  %658 = select i1 %652, float 1.000000e+06, float %657
  %659 = fsub fast float %602, %654
  %660 = fmul fast float %658, %659
  %661 = call float @dx.op.unary.f32(i32 7, float %660)  ; Saturate(value)
  %662 = extractvalue %dx.types.CBufRet.f32 %622, 2
  %663 = fmul fast float %662, %661
  %664 = fsub fast float %662, %663
  %665 = fcmp fast olt float %602, %656
  %666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %667 = extractvalue %dx.types.CBufRet.f32 %666, 3
  %668 = select i1 %665, float %667, float 1.000000e+00
  %669 = fmul fast float %664, %668
  %670 = fsub fast float %605, %654
  %671 = fmul fast float %658, %670
  %672 = call float @dx.op.unary.f32(i32 7, float %671)  ; Saturate(value)
  %673 = fmul fast float %662, %672
  %674 = fsub fast float %662, %673
  %675 = fcmp fast olt float %605, %656
  %676 = select i1 %675, float %667, float 1.000000e+00
  %677 = fmul fast float %674, %676
  %678 = fadd fast float %677, %669
  %679 = fsub fast float %608, %654
  %680 = fmul fast float %658, %679
  %681 = call float @dx.op.unary.f32(i32 7, float %680)  ; Saturate(value)
  %682 = fmul fast float %662, %681
  %683 = fsub fast float %662, %682
  %684 = fcmp fast olt float %608, %656
  %685 = select i1 %684, float %667, float 1.000000e+00
  %686 = fmul fast float %683, %685
  %687 = fadd fast float %678, %686
  %688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %689 = extractvalue %dx.types.CBufRet.f32 %688, 2
  %690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %691 = extractvalue %dx.types.CBufRet.f32 %690, 0
  %692 = extractvalue %dx.types.CBufRet.f32 %690, 1
  %693 = extractvalue %dx.types.CBufRet.f32 %690, 2
  %694 = fmul fast float %596, 0x3FD5555560000000
  %695 = fmul fast float %694, %647
  %696 = fmul fast float %695, %689
  %697 = fmul fast float %696, %687
  %698 = extractvalue %dx.types.CBufRet.f32 %666, 0
  %699 = fmul fast float %697, %691
  %700 = fmul fast float %697, %692
  %701 = fmul fast float %697, %693
  %702 = fmul fast float %697, %698
  br label %703

; <label>:703                                     ; preds = %643, %583
  %704 = phi float [ %697, %643 ], [ 0.000000e+00, %583 ]
  %705 = phi float [ %702, %643 ], [ 0.000000e+00, %583 ]
  %706 = phi float [ %699, %643 ], [ 0.000000e+00, %583 ]
  %707 = phi float [ %700, %643 ], [ 0.000000e+00, %583 ]
  %708 = phi float [ %701, %643 ], [ 0.000000e+00, %583 ]
  br i1 %511, label %768, label %709, !dx.controlflow.hints !65

; <label>:709                                     ; preds = %703
  %710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %711 = extractvalue %dx.types.CBufRet.f32 %710, 0
  %712 = fsub fast float %711, %325
  %713 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %335, float %334, float %712)  ; Dot3(ax,ay,az,bx,by,bz)
  %714 = fmul fast float %215, %713
  %715 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %714)  ; FMax(a,b)
  %716 = fcmp fast olt float %118, 0.000000e+00
  %717 = call float @dx.op.binary.f32(i32 36, float %596, float %715)  ; FMin(a,b)
  br i1 %716, label %719, label %718, !dx.controlflow.hints !66

; <label>:718                                     ; preds = %709
  br label %719

; <label>:719                                     ; preds = %718, %709
  %720 = phi float [ 0.000000e+00, %718 ], [ %717, %709 ]
  %721 = phi float [ %717, %718 ], [ %596, %709 ]
  %722 = phi float [ %717, %718 ], [ 0.000000e+00, %709 ]
  %723 = phi float [ %596, %718 ], [ %717, %709 ]
  %724 = fsub fast float %721, %720
  %725 = extractvalue %dx.types.CBufRet.f32 %710, 1
  %726 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %725)  ; FMin(a,b)
  %727 = fsub fast float %325, %711
  %728 = fmul fast float %726, 0x3FF7154760000000
  %729 = fmul fast float %728, %727
  %730 = call float @dx.op.unary.f32(i32 21, float %729)  ; Exp(value)
  %731 = fmul fast float %118, 0x3FF7154760000000
  %732 = fmul fast float %731, %723
  %733 = fmul fast float %732, %726
  %734 = call float @dx.op.unary.f32(i32 21, float %733)  ; Exp(value)
  %735 = fmul fast float %731, %722
  %736 = fmul fast float %735, %726
  %737 = call float @dx.op.unary.f32(i32 21, float %736)  ; Exp(value)
  %738 = fsub fast float %734, %737
  %739 = fmul fast float %738, %730
  %740 = fmul fast float %726, %118
  %741 = fdiv fast float %739, %740
  %742 = fadd fast float %724, %741
  %743 = call float @dx.op.unary.f32(i32 6, float %118)  ; FAbs(value)
  %744 = fcmp fast olt float %743, 0x3F0FFB4800000000
  %745 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %727)  ; FMax(a,b)
  %746 = fmul fast float %745, 0x3FF7154760000000
  %747 = fmul fast float %746, %725
  %748 = call float @dx.op.unary.f32(i32 21, float %747)  ; Exp(value)
  %749 = fmul fast float %748, %596
  %750 = select i1 %744, float %749, float %742
  %751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %752 = extractvalue %dx.types.CBufRet.f32 %751, 1
  %753 = fmul fast float %750, %752
  %754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %755 = extractvalue %dx.types.CBufRet.f32 %754, 0
  %756 = extractvalue %dx.types.CBufRet.f32 %754, 1
  %757 = extractvalue %dx.types.CBufRet.f32 %754, 2
  %758 = extractvalue %dx.types.CBufRet.f32 %751, 2
  %759 = fmul fast float %755, %753
  %760 = fmul fast float %756, %753
  %761 = fmul fast float %757, %753
  %762 = fadd fast float %759, %706
  %763 = fadd fast float %760, %707
  %764 = fadd fast float %761, %708
  %765 = fmul fast float %758, %753
  %766 = fadd fast float %765, %705
  %767 = fadd fast float %753, %704
  br label %768

; <label>:768                                     ; preds = %719, %703
  %769 = phi float [ %767, %719 ], [ %704, %703 ]
  %770 = phi float [ %766, %719 ], [ %705, %703 ]
  %771 = phi float [ %762, %719 ], [ %706, %703 ]
  %772 = phi float [ %763, %719 ], [ %707, %703 ]
  %773 = phi float [ %764, %719 ], [ %708, %703 ]
  %774 = icmp eq i32 %584, 0
  br i1 %774, label %969, label %775, !dx.controlflow.hints !67

; <label>:775                                     ; preds = %768
  %776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %777 = extractvalue %dx.types.CBufRet.f32 %776, 3
  %778 = fmul fast float %777, %326
  %779 = fcmp fast oeq float %778, 0.000000e+00
  br i1 %779, label %794, label %780, !dx.controlflow.hints !68

; <label>:780                                     ; preds = %775
  %781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %782 = extractvalue %dx.types.CBufRet.f32 %781, 3
  %783 = fmul fast float %782, %778
  %784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %785 = extractvalue %dx.types.CBufRet.f32 %784, 0
  %786 = extractvalue %dx.types.CBufRet.f32 %784, 1
  %787 = extractvalue %dx.types.CBufRet.f32 %784, 2
  %788 = fmul fast float %785, %783
  %789 = fmul fast float %786, %783
  %790 = fmul fast float %787, %783
  %791 = call float @dx.op.unary.f32(i32 23, float %788)  ; Log(value)
  %792 = call float @dx.op.unary.f32(i32 23, float %789)  ; Log(value)
  %793 = call float @dx.op.unary.f32(i32 23, float %790)  ; Log(value)
  br label %794

; <label>:794                                     ; preds = %780, %775
  %795 = phi float [ %791, %780 ], [ 0.000000e+00, %775 ]
  %796 = phi float [ %792, %780 ], [ 0.000000e+00, %775 ]
  %797 = phi float [ %793, %780 ], [ 0.000000e+00, %775 ]
  %798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %799 = extractvalue %dx.types.CBufRet.f32 %798, 0
  %800 = extractvalue %dx.types.CBufRet.f32 %798, 1
  %801 = extractvalue %dx.types.CBufRet.f32 %798, 2
  %802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %803 = extractvalue %dx.types.CBufRet.f32 %802, 0
  %804 = extractvalue %dx.types.CBufRet.f32 %802, 1
  %805 = extractvalue %dx.types.CBufRet.f32 %802, 2
  %806 = fsub fast float %323, %803
  %807 = fsub fast float %324, %804
  %808 = fsub fast float %325, %805
  %809 = fmul fast float %806, %799
  %810 = fmul fast float %807, %800
  %811 = fmul fast float %808, %801
  %812 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %813 = extractvalue %dx.types.CBufRet.i32 %812, 0
  %814 = extractvalue %dx.types.CBufRet.i32 %812, 1
  %815 = uitofp i32 %813 to float
  %816 = uitofp i32 %814 to float
  %817 = fmul fast float %809, %815
  %818 = fmul fast float %810, %816
  %819 = fadd fast float %817, 5.000000e-01
  %820 = fadd fast float %818, 5.000000e-01
  %821 = call float @dx.op.unary.f32(i32 22, float %819)  ; Frc(value)
  %822 = call float @dx.op.unary.f32(i32 22, float %820)  ; Frc(value)
  %823 = call float @dx.op.unary.f32(i32 27, float %819)  ; Round_ni(value)
  %824 = call float @dx.op.unary.f32(i32 27, float %820)  ; Round_ni(value)
  %825 = fadd fast float %823, 1.000000e+00
  %826 = fadd fast float %824, 1.000000e+00
  %827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %828 = extractvalue %dx.types.CBufRet.f32 %827, 0
  %829 = extractvalue %dx.types.CBufRet.f32 %827, 1
  %830 = fmul fast float %828, %825
  %831 = fmul fast float %829, %826
  %832 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %23, float %830, float %831, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %833 = extractvalue %dx.types.ResRet.f32 %832, 0
  %834 = extractvalue %dx.types.ResRet.f32 %832, 1
  %835 = extractvalue %dx.types.ResRet.f32 %832, 2
  %836 = extractvalue %dx.types.ResRet.f32 %832, 3
  %837 = extractvalue %dx.types.CBufRet.i32 %812, 2
  %838 = extractvalue %dx.types.CBufRet.f32 %827, 2
  %839 = uitofp i32 %837 to float
  %840 = fadd fast float %839, -1.000000e+00
  %841 = fmul fast float %840, %833
  %842 = fmul fast float %840, %834
  %843 = fmul fast float %840, %835
  %844 = fmul fast float %840, %836
  %845 = fadd fast float %841, 5.000000e-01
  %846 = fadd fast float %842, 5.000000e-01
  %847 = fadd fast float %843, 5.000000e-01
  %848 = fadd fast float %844, 5.000000e-01
  %849 = fptoui float %845 to i32
  %850 = fptoui float %846 to i32
  %851 = fptoui float %847 to i32
  %852 = fptoui float %848 to i32
  %853 = uitofp i32 %849 to float
  %854 = uitofp i32 %850 to float
  %855 = uitofp i32 %851 to float
  %856 = uitofp i32 %852 to float
  %857 = fadd fast float %853, 5.000000e-01
  %858 = fadd fast float %854, 5.000000e-01
  %859 = fadd fast float %855, 5.000000e-01
  %860 = fadd fast float %856, 5.000000e-01
  %861 = fmul fast float %857, %838
  %862 = fmul fast float %858, %838
  %863 = fmul fast float %859, %838
  %864 = fmul fast float %860, %838
  %865 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %24, float %861, float %811, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %866 = extractvalue %dx.types.ResRet.f32 %865, 0
  %867 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %24, float %862, float %811, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %868 = extractvalue %dx.types.ResRet.f32 %867, 0
  %869 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %24, float %863, float %811, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %870 = extractvalue %dx.types.ResRet.f32 %869, 0
  %871 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %24, float %864, float %811, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %872 = extractvalue %dx.types.ResRet.f32 %871, 0
  %873 = fsub fast float %870, %872
  %874 = fmul fast float %873, %821
  %875 = fadd fast float %874, %872
  %876 = fsub fast float %868, %866
  %877 = fmul fast float %876, %821
  %878 = fadd fast float %877, %866
  %879 = fsub fast float %878, %875
  %880 = fmul fast float %879, %822
  %881 = fadd fast float %880, %875
  %882 = fcmp fast ogt float %881, 0.000000e+00
  br i1 %882, label %883, label %951, !dx.controlflow.hints !69

; <label>:883                                     ; preds = %794
  %884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %885 = extractvalue %dx.types.CBufRet.f32 %884, 0
  %886 = extractvalue %dx.types.CBufRet.f32 %884, 1
  %887 = extractvalue %dx.types.CBufRet.f32 %884, 2
  %888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %889 = extractvalue %dx.types.CBufRet.f32 %888, 0
  %890 = extractvalue %dx.types.CBufRet.f32 %888, 1
  %891 = extractvalue %dx.types.CBufRet.f32 %888, 2
  %892 = fmul fast float %807, %799
  %893 = fmul fast float %808, %799
  %894 = fadd fast float %809, %889
  %895 = fadd fast float %892, %890
  %896 = fadd fast float %893, %891
  %897 = fmul fast float %894, %885
  %898 = fmul fast float %895, %885
  %899 = fmul fast float %896, %885
  %900 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %21, float %897, float %898, float %899, float undef, i32 0, i32 0, i32 0, float %795)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %901 = extractvalue %dx.types.ResRet.f32 %900, 0
  %902 = fmul fast float %894, %886
  %903 = fmul fast float %895, %886
  %904 = fmul fast float %896, %886
  %905 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %21, float %902, float %903, float %904, float undef, i32 0, i32 0, i32 0, float %796)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %906 = extractvalue %dx.types.ResRet.f32 %905, 1
  %907 = fmul fast float %894, %887
  %908 = fmul fast float %895, %887
  %909 = fmul fast float %896, %887
  %910 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %21, float %907, float %908, float %909, float undef, i32 0, i32 0, i32 0, float %797)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %911 = extractvalue %dx.types.ResRet.f32 %910, 2
  %912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %913 = extractvalue %dx.types.CBufRet.f32 %912, 1
  %914 = fmul fast float %906, %901
  %915 = fmul fast float %914, %911
  %916 = call float @dx.op.unary.f32(i32 23, float %915)  ; Log(value)
  %917 = fmul fast float %916, %913
  %918 = call float @dx.op.unary.f32(i32 21, float %917)  ; Exp(value)
  %919 = extractvalue %dx.types.CBufRet.f32 %912, 2
  %920 = fmul fast float %881, %881
  %921 = fmul fast float %920, %918
  %922 = fmul fast float %921, %919
  %923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %924 = extractvalue %dx.types.CBufRet.f32 %923, 3
  %925 = fmul fast float %924, %922
  %926 = bitcast float %925 to i32
  %927 = sitofp i32 %926 to float
  %928 = fptosi float %927 to i32
  %929 = bitcast i32 %928 to float
  %930 = fsub fast float 1.000000e+00, %922
  %931 = bitcast float %930 to i32
  %932 = sitofp i32 %931 to float
  %933 = fptosi float %932 to i32
  %934 = bitcast i32 %933 to float
  %935 = fadd fast float %929, %934
  %936 = bitcast float %935 to i32
  %937 = sub nsw i32 2129859010, %936
  %938 = bitcast i32 %937 to float
  %939 = fmul fast float %938, %929
  %940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %941 = extractvalue %dx.types.CBufRet.f32 %940, 2
  %942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %943 = extractvalue %dx.types.CBufRet.f32 %942, 0
  %944 = fmul fast float %939, %943
  %945 = fadd fast float %944, 1.000000e+00
  %946 = bitcast float %945 to i32
  %947 = sub nsw i32 2129859010, %946
  %948 = bitcast i32 %947 to float
  %949 = fmul fast float %939, %941
  %950 = fmul fast float %949, %948
  br label %951

; <label>:951                                     ; preds = %883, %794
  %952 = phi float [ %950, %883 ], [ %881, %794 ]
  %953 = fmul fast float %952, %596
  %954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %955 = extractvalue %dx.types.CBufRet.f32 %954, 0
  %956 = extractvalue %dx.types.CBufRet.f32 %954, 1
  %957 = extractvalue %dx.types.CBufRet.f32 %954, 2
  %958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %959 = extractvalue %dx.types.CBufRet.f32 %958, 1
  %960 = fmul fast float %955, %953
  %961 = fmul fast float %956, %953
  %962 = fmul fast float %957, %953
  %963 = fadd fast float %960, %771
  %964 = fadd fast float %961, %772
  %965 = fadd fast float %962, %773
  %966 = fmul fast float %959, %953
  %967 = fadd fast float %966, %770
  %968 = fadd fast float %953, %769
  br label %969

; <label>:969                                     ; preds = %951, %768
  %970 = phi float [ %968, %951 ], [ %769, %768 ]
  %971 = phi float [ %967, %951 ], [ %770, %768 ]
  %972 = phi float [ %963, %951 ], [ %771, %768 ]
  %973 = phi float [ %964, %951 ], [ %772, %768 ]
  %974 = phi float [ %965, %951 ], [ %773, %768 ]
  %975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %976 = extractvalue %dx.types.CBufRet.f32 %975, 1
  %977 = fcmp fast ogt float %970, %976
  br i1 %977, label %978, label %984, !dx.controlflow.hints !70

; <label>:978                                     ; preds = %969
  %979 = fdiv fast float 1.000000e+00, %970
  %980 = fmul fast float %979, %972
  %981 = fmul fast float %979, %973
  %982 = fmul fast float %979, %974
  %983 = fmul fast float %979, %971
  br label %984

; <label>:984                                     ; preds = %978, %969
  %985 = phi float [ %983, %978 ], [ %971, %969 ]
  %986 = phi float [ %980, %978 ], [ %972, %969 ]
  %987 = phi float [ %981, %978 ], [ %973, %969 ]
  %988 = phi float [ %982, %978 ], [ %974, %969 ]
  br i1 %977, label %991, label %989, !dx.controlflow.hints !71

; <label>:989                                     ; preds = %984
  %990 = fadd fast float %596, %326
  br label %2498

; <label>:991                                     ; preds = %984
  %992 = fmul fast float %970, 0xBFF7154760000000
  %993 = call float @dx.op.unary.f32(i32 21, float %992)  ; Exp(value)
  %994 = call float @dx.op.unary.f32(i32 7, float %993)  ; Saturate(value)
  %995 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %996 = extractvalue %dx.types.CBufRet.i32 %995, 0
  %997 = icmp eq i32 %996, 1
  br i1 %997, label %998, label %1033, !dx.controlflow.hints !72

; <label>:998                                     ; preds = %991
  %999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1000 = extractvalue %dx.types.CBufRet.f32 %999, 0
  %1001 = extractvalue %dx.types.CBufRet.f32 %999, 1
  %1002 = fsub fast float %323, %1000
  %1003 = fsub fast float %324, %1001
  %1004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1005 = extractvalue %dx.types.CBufRet.f32 %1004, 0
  %1006 = extractvalue %dx.types.CBufRet.f32 %1004, 1
  %1007 = fmul fast float %1002, %1005
  %1008 = fmul fast float %1003, %1006
  %1009 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %24, float %1007, float %1008, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1010 = extractvalue %dx.types.ResRet.f32 %1009, 0
  %1011 = fcmp fast ogt float %1010, 0.000000e+00
  %1012 = extractvalue %dx.types.CBufRet.i32 %995, 3
  %1013 = icmp ne i32 %1012, 0
  %1014 = and i1 %1011, %1013
  br i1 %1014, label %1015, label %1033, !dx.controlflow.hints !73

; <label>:1015                                    ; preds = %998
  %1016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1017 = extractvalue %dx.types.CBufRet.f32 %1016, 0
  %1018 = extractvalue %dx.types.CBufRet.f32 %1016, 1
  %1019 = fsub fast float %323, %1017
  %1020 = fsub fast float %324, %1018
  %1021 = fmul fast float %1019, %1019
  %1022 = fmul fast float %1020, %1020
  %1023 = fadd fast float %1021, %1022
  %1024 = uitofp i32 %1012 to float
  %1025 = fmul fast float %1024, %1024
  %1026 = fcmp fast ogt float %1023, %1025
  br i1 %1026, label %1033, label %1027, !dx.controlflow.hints !74

; <label>:1027                                    ; preds = %1015
  %1028 = call float @dx.op.unary.f32(i32 24, float %1023)  ; Sqrt(value)
  %1029 = fsub fast float %1024, %1028
  %1030 = fmul fast float %1029, 0x3F75555560000000
  %1031 = call float @dx.op.unary.f32(i32 7, float %1030)  ; Saturate(value)
  %1032 = call float @dx.op.binary.f32(i32 36, float %1031, float %1010)  ; FMin(a,b)
  br label %1033

; <label>:1033                                    ; preds = %1027, %1015, %998, %991
  %1034 = phi float [ 1.000000e+00, %991 ], [ %1032, %1027 ], [ %1010, %998 ], [ 0.000000e+00, %1015 ]
  %1035 = fcmp fast ogt float %1034, 0.000000e+00
  br i1 %1035, label %1036, label %1109, !dx.controlflow.hints !75

; <label>:1036                                    ; preds = %1033
  %1037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %1038 = extractvalue %dx.types.ResRet.i32 %1037, 0
  %1039 = extractvalue %dx.types.ResRet.i32 %1037, 1
  %1040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %1041 = extractvalue %dx.types.ResRet.i32 %1040, 0
  %1042 = extractvalue %dx.types.ResRet.i32 %1040, 1
  %1043 = extractvalue %dx.types.ResRet.i32 %1040, 2
  %1044 = extractvalue %dx.types.ResRet.i32 %1040, 3
  %1045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1046 = extractvalue %dx.types.ResRet.i32 %1045, 0
  %1047 = extractvalue %dx.types.ResRet.i32 %1045, 1
  %1048 = extractvalue %dx.types.ResRet.i32 %1045, 2
  %1049 = extractvalue %dx.types.ResRet.i32 %1045, 3
  %1050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1051 = extractvalue %dx.types.ResRet.i32 %1050, 0
  %1052 = extractvalue %dx.types.ResRet.i32 %1050, 1
  %1053 = extractvalue %dx.types.ResRet.i32 %1050, 2
  %1054 = extractvalue %dx.types.ResRet.i32 %1050, 3
  %1055 = and i32 %1051, 65535
  %1056 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1055)  ; LegacyF16ToF32(value)
  %1057 = lshr i32 %1051, 16
  %1058 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1057)  ; LegacyF16ToF32(value)
  %1059 = and i32 %1052, 65535
  %1060 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1059)  ; LegacyF16ToF32(value)
  %1061 = lshr i32 %1052, 16
  %1062 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1061)  ; LegacyF16ToF32(value)
  %1063 = and i32 %1053, 65535
  %1064 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1063)  ; LegacyF16ToF32(value)
  %1065 = lshr i32 %1053, 16
  %1066 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1065)  ; LegacyF16ToF32(value)
  %1067 = and i32 %1054, 65535
  %1068 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1067)  ; LegacyF16ToF32(value)
  %1069 = lshr i32 %1054, 16
  %1070 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1069)  ; LegacyF16ToF32(value)
  %1071 = and i32 %1046, 65535
  %1072 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1071)  ; LegacyF16ToF32(value)
  %1073 = lshr i32 %1046, 16
  %1074 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1073)  ; LegacyF16ToF32(value)
  %1075 = and i32 %1047, 65535
  %1076 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1075)  ; LegacyF16ToF32(value)
  %1077 = lshr i32 %1047, 16
  %1078 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1077)  ; LegacyF16ToF32(value)
  %1079 = and i32 %1048, 65535
  %1080 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1079)  ; LegacyF16ToF32(value)
  %1081 = lshr i32 %1048, 16
  %1082 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1081)  ; LegacyF16ToF32(value)
  %1083 = and i32 %1049, 65535
  %1084 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1083)  ; LegacyF16ToF32(value)
  %1085 = lshr i32 %1049, 16
  %1086 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1085)  ; LegacyF16ToF32(value)
  %1087 = and i32 %1041, 65535
  %1088 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1087)  ; LegacyF16ToF32(value)
  %1089 = lshr i32 %1041, 16
  %1090 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1089)  ; LegacyF16ToF32(value)
  %1091 = and i32 %1042, 65535
  %1092 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1091)  ; LegacyF16ToF32(value)
  %1093 = lshr i32 %1042, 16
  %1094 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1093)  ; LegacyF16ToF32(value)
  %1095 = and i32 %1043, 65535
  %1096 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1095)  ; LegacyF16ToF32(value)
  %1097 = lshr i32 %1043, 16
  %1098 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1097)  ; LegacyF16ToF32(value)
  %1099 = and i32 %1044, 65535
  %1100 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1099)  ; LegacyF16ToF32(value)
  %1101 = lshr i32 %1044, 16
  %1102 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1101)  ; LegacyF16ToF32(value)
  %1103 = and i32 %1038, 65535
  %1104 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1103)  ; LegacyF16ToF32(value)
  %1105 = lshr i32 %1038, 16
  %1106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1105)  ; LegacyF16ToF32(value)
  %1107 = and i32 %1039, 65535
  %1108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1107)  ; LegacyF16ToF32(value)
  br label %1109

; <label>:1109                                    ; preds = %1036, %1033
  %1110 = phi float [ %1108, %1036 ], [ 0.000000e+00, %1033 ]
  %1111 = phi float [ %1106, %1036 ], [ 0.000000e+00, %1033 ]
  %1112 = phi float [ %1104, %1036 ], [ 0.000000e+00, %1033 ]
  %1113 = phi float [ %1102, %1036 ], [ 0.000000e+00, %1033 ]
  %1114 = phi float [ %1100, %1036 ], [ 0.000000e+00, %1033 ]
  %1115 = phi float [ %1098, %1036 ], [ 0.000000e+00, %1033 ]
  %1116 = phi float [ %1096, %1036 ], [ 0.000000e+00, %1033 ]
  %1117 = phi float [ %1094, %1036 ], [ 0.000000e+00, %1033 ]
  %1118 = phi float [ %1092, %1036 ], [ 0.000000e+00, %1033 ]
  %1119 = phi float [ %1090, %1036 ], [ 0.000000e+00, %1033 ]
  %1120 = phi float [ %1088, %1036 ], [ 0.000000e+00, %1033 ]
  %1121 = phi float [ %1086, %1036 ], [ 0.000000e+00, %1033 ]
  %1122 = phi float [ %1084, %1036 ], [ 0.000000e+00, %1033 ]
  %1123 = phi float [ %1082, %1036 ], [ 0.000000e+00, %1033 ]
  %1124 = phi float [ %1080, %1036 ], [ 0.000000e+00, %1033 ]
  %1125 = phi float [ %1078, %1036 ], [ 0.000000e+00, %1033 ]
  %1126 = phi float [ %1076, %1036 ], [ 0.000000e+00, %1033 ]
  %1127 = phi float [ %1074, %1036 ], [ 0.000000e+00, %1033 ]
  %1128 = phi float [ %1072, %1036 ], [ 0.000000e+00, %1033 ]
  %1129 = phi float [ %1070, %1036 ], [ 0.000000e+00, %1033 ]
  %1130 = phi float [ %1068, %1036 ], [ 0.000000e+00, %1033 ]
  %1131 = phi float [ %1066, %1036 ], [ 0.000000e+00, %1033 ]
  %1132 = phi float [ %1064, %1036 ], [ 0.000000e+00, %1033 ]
  %1133 = phi float [ %1062, %1036 ], [ 0.000000e+00, %1033 ]
  %1134 = phi float [ %1060, %1036 ], [ 0.000000e+00, %1033 ]
  %1135 = phi float [ %1058, %1036 ], [ 0.000000e+00, %1033 ]
  %1136 = phi float [ %1056, %1036 ], [ 0.000000e+00, %1033 ]
  %1137 = fcmp fast olt float %1034, 1.000000e+00
  br i1 %1137, label %1138, label %1798, !dx.controlflow.hints !76

; <label>:1138                                    ; preds = %1109
  %1139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1140 = extractvalue %dx.types.CBufRet.f32 %1139, 0
  %1141 = extractvalue %dx.types.CBufRet.f32 %1139, 1
  %1142 = fsub fast float %323, %1140
  %1143 = fsub fast float %324, %1141
  %1144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1145 = extractvalue %dx.types.CBufRet.f32 %1144, 0
  %1146 = extractvalue %dx.types.CBufRet.f32 %1144, 1
  %1147 = fmul fast float %1142, %1145
  %1148 = fmul fast float %1143, %1146
  %1149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1150 = extractvalue %dx.types.CBufRet.f32 %1149, 0
  %1151 = fmul fast float %1150, %1147
  %1152 = extractvalue %dx.types.CBufRet.f32 %1149, 1
  %1153 = fadd fast float %1151, %1152
  %1154 = extractvalue %dx.types.CBufRet.f32 %1149, 2
  %1155 = fmul fast float %1154, %1148
  %1156 = extractvalue %dx.types.CBufRet.f32 %1149, 3
  %1157 = fadd fast float %1155, %1156
  %1158 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %24, float %1153, float %1157, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1159 = extractvalue %dx.types.ResRet.f32 %1158, 0
  %1160 = extractvalue %dx.types.ResRet.f32 %1158, 1
  %1161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1162 = extractvalue %dx.types.CBufRet.f32 %1161, 1
  %1163 = extractvalue %dx.types.CBufRet.f32 %1161, 0
  %1164 = fsub fast float %1162, %1163
  %1165 = fmul fast float %1164, %1159
  %1166 = fadd fast float %1165, %1163
  %1167 = extractvalue %dx.types.CBufRet.f32 %1161, 3
  %1168 = extractvalue %dx.types.CBufRet.f32 %1161, 2
  %1169 = fsub fast float %1167, %1168
  %1170 = fmul fast float %1169, %1160
  %1171 = fadd fast float %1170, %1168
  %1172 = fsub fast float %325, %1166
  %1173 = fsub fast float %1171, %1166
  %1174 = fdiv fast float %1172, %1173
  %1175 = call float @dx.op.unary.f32(i32 7, float %1174)  ; Saturate(value)
  %1176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1177 = extractvalue %dx.types.CBufRet.f32 %1176, 0
  %1178 = fmul fast float %1177, %1175
  %1179 = extractvalue %dx.types.CBufRet.f32 %1176, 1
  %1180 = fadd fast float %1178, %1179
  %1181 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %24, float %1153, float %1157, float %1180, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1182 = extractvalue %dx.types.ResRet.f32 %1181, 0
  %1183 = extractvalue %dx.types.ResRet.f32 %1181, 1
  %1184 = extractvalue %dx.types.ResRet.f32 %1181, 2
  %1185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1186 = extractvalue %dx.types.CBufRet.f32 %1185, 0
  %1187 = extractvalue %dx.types.CBufRet.f32 %1185, 1
  %1188 = extractvalue %dx.types.CBufRet.f32 %1185, 2
  %1189 = fmul fast float %1186, %1182
  %1190 = fmul fast float %1187, %1183
  %1191 = fmul fast float %1188, %1184
  %1192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1193 = extractvalue %dx.types.CBufRet.f32 %1192, 0
  %1194 = extractvalue %dx.types.CBufRet.f32 %1192, 1
  %1195 = extractvalue %dx.types.CBufRet.f32 %1192, 2
  %1196 = fadd fast float %1189, %1193
  %1197 = fadd fast float %1190, %1194
  %1198 = fadd fast float %1191, %1195
  %1199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1200 = extractvalue %dx.types.CBufRet.f32 %1199, 0
  %1201 = fmul fast float %1200, %1147
  %1202 = extractvalue %dx.types.CBufRet.f32 %1199, 1
  %1203 = fadd fast float %1201, %1202
  %1204 = extractvalue %dx.types.CBufRet.f32 %1199, 2
  %1205 = fmul fast float %1204, %1148
  %1206 = extractvalue %dx.types.CBufRet.f32 %1199, 3
  %1207 = fadd fast float %1205, %1206
  %1208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1209 = extractvalue %dx.types.CBufRet.f32 %1208, 0
  %1210 = extractvalue %dx.types.CBufRet.f32 %1208, 1
  %1211 = extractvalue %dx.types.CBufRet.f32 %1208, 2
  %1212 = extractvalue %dx.types.CBufRet.f32 %1208, 3
  %1213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1214 = extractvalue %dx.types.CBufRet.f32 %1213, 0
  %1215 = extractvalue %dx.types.CBufRet.f32 %1213, 1
  %1216 = extractvalue %dx.types.CBufRet.f32 %1213, 2
  %1217 = extractvalue %dx.types.CBufRet.f32 %1213, 3
  %1218 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %24, float %1203, float %1207, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1219 = extractvalue %dx.types.ResRet.f32 %1218, 0
  %1220 = extractvalue %dx.types.ResRet.f32 %1218, 1
  %1221 = extractvalue %dx.types.ResRet.f32 %1218, 2
  %1222 = extractvalue %dx.types.ResRet.f32 %1218, 3
  %1223 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %24, float %1203, float %1207, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1224 = extractvalue %dx.types.ResRet.f32 %1223, 0
  %1225 = extractvalue %dx.types.ResRet.f32 %1223, 1
  %1226 = extractvalue %dx.types.ResRet.f32 %1223, 2
  %1227 = extractvalue %dx.types.ResRet.f32 %1223, 3
  %1228 = fmul fast float %1219, %1196
  %1229 = fmul fast float %1224, %1196
  %1230 = fmul fast float %1226, %1196
  %1231 = fmul fast float %1222, %1196
  %1232 = fadd fast float %1228, %1209
  %1233 = fadd fast float %1229, %1210
  %1234 = fadd fast float %1230, %1211
  %1235 = fadd fast float %1231, %1212
  %1236 = fmul fast float %1220, %1196
  %1237 = fmul fast float %1225, %1196
  %1238 = fadd fast float %1236, %1214
  %1239 = fadd fast float %1237, %1215
  %1240 = fmul fast float %1221, %1196
  %1241 = fmul fast float %1227, %1196
  %1242 = fadd fast float %1240, %1216
  %1243 = fadd fast float %1241, %1217
  %1244 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %24, float %1203, float %1207, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1245 = extractvalue %dx.types.ResRet.f32 %1244, 0
  %1246 = extractvalue %dx.types.ResRet.f32 %1244, 1
  %1247 = extractvalue %dx.types.ResRet.f32 %1244, 2
  %1248 = extractvalue %dx.types.ResRet.f32 %1244, 3
  %1249 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %24, float %1203, float %1207, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1250 = extractvalue %dx.types.ResRet.f32 %1249, 0
  %1251 = extractvalue %dx.types.ResRet.f32 %1249, 1
  %1252 = extractvalue %dx.types.ResRet.f32 %1249, 2
  %1253 = extractvalue %dx.types.ResRet.f32 %1249, 3
  %1254 = fmul fast float %1245, %1197
  %1255 = fmul fast float %1250, %1197
  %1256 = fmul fast float %1252, %1197
  %1257 = fmul fast float %1248, %1197
  %1258 = fadd fast float %1232, %1254
  %1259 = fadd fast float %1233, %1255
  %1260 = fadd fast float %1234, %1256
  %1261 = fadd fast float %1235, %1257
  %1262 = fmul fast float %1246, %1197
  %1263 = fmul fast float %1251, %1197
  %1264 = fadd fast float %1238, %1262
  %1265 = fadd fast float %1239, %1263
  %1266 = fmul fast float %1247, %1197
  %1267 = fmul fast float %1253, %1197
  %1268 = fadd fast float %1242, %1266
  %1269 = fadd fast float %1243, %1267
  %1270 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %24, float %1203, float %1207, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1271 = extractvalue %dx.types.ResRet.f32 %1270, 0
  %1272 = extractvalue %dx.types.ResRet.f32 %1270, 1
  %1273 = extractvalue %dx.types.ResRet.f32 %1270, 2
  %1274 = extractvalue %dx.types.ResRet.f32 %1270, 3
  %1275 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %24, float %1203, float %1207, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1276 = extractvalue %dx.types.ResRet.f32 %1275, 0
  %1277 = extractvalue %dx.types.ResRet.f32 %1275, 1
  %1278 = extractvalue %dx.types.ResRet.f32 %1275, 2
  %1279 = extractvalue %dx.types.ResRet.f32 %1275, 3
  %1280 = fmul fast float %1271, %1198
  %1281 = fmul fast float %1276, %1198
  %1282 = fmul fast float %1278, %1198
  %1283 = fmul fast float %1274, %1198
  %1284 = fadd fast float %1258, %1280
  %1285 = fadd fast float %1259, %1281
  %1286 = fadd fast float %1260, %1282
  %1287 = fadd fast float %1261, %1283
  %1288 = fmul fast float %1272, %1198
  %1289 = fmul fast float %1277, %1198
  %1290 = fadd fast float %1264, %1288
  %1291 = fadd fast float %1265, %1289
  %1292 = fmul fast float %1273, %1198
  %1293 = fmul fast float %1279, %1198
  %1294 = fadd fast float %1268, %1292
  %1295 = fadd fast float %1269, %1293
  %1296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1297 = extractvalue %dx.types.CBufRet.f32 %1296, 0
  %1298 = fsub fast float %323, %1297
  %1299 = fsub fast float %1140, %323
  %1300 = call float @dx.op.binary.f32(i32 35, float %1299, float %1298)  ; FMax(a,b)
  %1301 = extractvalue %dx.types.CBufRet.f32 %1296, 1
  %1302 = fsub fast float %324, %1301
  %1303 = fsub fast float %1141, %324
  %1304 = call float @dx.op.binary.f32(i32 35, float %1303, float %1302)  ; FMax(a,b)
  %1305 = call float @dx.op.binary.f32(i32 35, float %1300, float %1304)  ; FMax(a,b)
  %1306 = extractvalue %dx.types.CBufRet.f32 %1144, 3
  %1307 = fmul fast float %1306, %1305
  %1308 = call float @dx.op.unary.f32(i32 7, float %1307)  ; Saturate(value)
  %1309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1310 = extractvalue %dx.types.CBufRet.f32 %1309, 0
  %1311 = extractvalue %dx.types.CBufRet.f32 %1309, 1
  %1312 = extractvalue %dx.types.CBufRet.f32 %1309, 2
  %1313 = extractvalue %dx.types.CBufRet.f32 %1309, 3
  %1314 = fsub fast float %1310, %1284
  %1315 = fsub fast float %1311, %1285
  %1316 = fsub fast float %1312, %1286
  %1317 = fsub fast float %1313, %1287
  %1318 = fmul fast float %1314, %1308
  %1319 = fmul fast float %1315, %1308
  %1320 = fmul fast float %1316, %1308
  %1321 = fmul fast float %1317, %1308
  %1322 = fadd fast float %1318, %1284
  %1323 = fadd fast float %1319, %1285
  %1324 = fadd fast float %1320, %1286
  %1325 = fadd fast float %1321, %1287
  %1326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1327 = extractvalue %dx.types.CBufRet.f32 %1326, 0
  %1328 = extractvalue %dx.types.CBufRet.f32 %1326, 1
  %1329 = fsub fast float %1327, %1290
  %1330 = fsub fast float %1328, %1291
  %1331 = fmul fast float %1329, %1308
  %1332 = fmul fast float %1330, %1308
  %1333 = fadd fast float %1331, %1290
  %1334 = fadd fast float %1332, %1291
  %1335 = extractvalue %dx.types.CBufRet.f32 %1326, 2
  %1336 = extractvalue %dx.types.CBufRet.f32 %1326, 3
  %1337 = fsub fast float %1335, %1294
  %1338 = fsub fast float %1336, %1295
  %1339 = fmul fast float %1337, %1308
  %1340 = fmul fast float %1338, %1308
  %1341 = fadd fast float %1339, %1294
  %1342 = fadd fast float %1340, %1295
  %1343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1344 = extractvalue %dx.types.CBufRet.f32 %1343, 0
  %1345 = fmul fast float %1344, %1322
  %1346 = fmul fast float %1344, %1323
  %1347 = fmul fast float %1344, %1324
  %1348 = fmul fast float %1344, %1325
  %1349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1350 = extractvalue %dx.types.CBufRet.f32 %1349, 0
  %1351 = fmul fast float %1350, %1333
  %1352 = fmul fast float %1350, %1334
  %1353 = fadd fast float %1351, %1345
  %1354 = fadd fast float %1352, %1347
  %1355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1356 = extractvalue %dx.types.CBufRet.f32 %1355, 0
  %1357 = fmul fast float %1356, %1341
  %1358 = fmul fast float %1356, %1342
  %1359 = fadd fast float %1353, %1357
  %1360 = fadd fast float %1354, %1358
  %1361 = extractvalue %dx.types.CBufRet.f32 %1343, 1
  %1362 = fmul fast float %1361, %1322
  %1363 = fmul fast float %1361, %1323
  %1364 = fmul fast float %1361, %1324
  %1365 = fmul fast float %1361, %1325
  %1366 = extractvalue %dx.types.CBufRet.f32 %1349, 1
  %1367 = fmul fast float %1366, %1333
  %1368 = fmul fast float %1366, %1334
  %1369 = fadd fast float %1367, %1362
  %1370 = fadd fast float %1368, %1364
  %1371 = extractvalue %dx.types.CBufRet.f32 %1355, 1
  %1372 = fmul fast float %1371, %1341
  %1373 = fmul fast float %1371, %1342
  %1374 = fadd fast float %1369, %1372
  %1375 = fadd fast float %1370, %1373
  %1376 = extractvalue %dx.types.CBufRet.f32 %1343, 2
  %1377 = fmul fast float %1376, %1322
  %1378 = fmul fast float %1376, %1323
  %1379 = fmul fast float %1376, %1324
  %1380 = fmul fast float %1376, %1325
  %1381 = extractvalue %dx.types.CBufRet.f32 %1349, 2
  %1382 = fmul fast float %1381, %1333
  %1383 = fmul fast float %1381, %1334
  %1384 = fadd fast float %1382, %1377
  %1385 = fadd fast float %1383, %1379
  %1386 = extractvalue %dx.types.CBufRet.f32 %1355, 2
  %1387 = fmul fast float %1386, %1341
  %1388 = fmul fast float %1386, %1342
  %1389 = fadd fast float %1384, %1387
  %1390 = fadd fast float %1385, %1388
  %1391 = fmul fast float %1378, %1378
  %1392 = fmul fast float %1390, %1390
  %1393 = fmul fast float %1380, %1380
  %1394 = fadd fast float %1393, %1391
  %1395 = fadd fast float %1394, %1392
  %1396 = call float @dx.op.unary.f32(i32 24, float %1395)  ; Sqrt(value)
  %1397 = fcmp fast ugt float %1396, 0.000000e+00
  br i1 %1397, label %1398, label %1413, !dx.controlflow.hints !77

; <label>:1398                                    ; preds = %1138
  %1399 = fsub fast float -0.000000e+00, %1380
  %1400 = fdiv fast float %1399, %1396
  %1401 = fsub fast float -0.000000e+00, %1378
  %1402 = fdiv fast float %1401, %1396
  %1403 = fdiv fast float %1390, %1396
  %1404 = fmul fast float %1389, 0x3FE279A760000000
  %1405 = fmul fast float %1402, %1378
  %1406 = fmul fast float %1403, %1390
  %1407 = fmul fast float %1400, %1380
  %1408 = fadd fast float %1405, %1407
  %1409 = fsub fast float %1408, %1406
  %1410 = call float @dx.op.unary.f32(i32 6, float %1409)  ; FAbs(value)
  %1411 = fadd fast float %1410, 0x3DDB7CDFE0000000
  %1412 = fdiv fast float %1404, %1411
  br label %1413

; <label>:1413                                    ; preds = %1398, %1138
  %1414 = phi float [ %1412, %1398 ], [ 1.000000e+00, %1138 ]
  %1415 = fmul fast float %1363, %1363
  %1416 = fmul fast float %1375, %1375
  %1417 = fmul fast float %1365, %1365
  %1418 = fadd fast float %1417, %1415
  %1419 = fadd fast float %1418, %1416
  %1420 = call float @dx.op.unary.f32(i32 24, float %1419)  ; Sqrt(value)
  %1421 = fcmp fast ugt float %1420, 0.000000e+00
  br i1 %1421, label %1422, label %1437, !dx.controlflow.hints !77

; <label>:1422                                    ; preds = %1413
  %1423 = fsub fast float -0.000000e+00, %1365
  %1424 = fdiv fast float %1423, %1420
  %1425 = fsub fast float -0.000000e+00, %1363
  %1426 = fdiv fast float %1425, %1420
  %1427 = fdiv fast float %1375, %1420
  %1428 = fmul fast float %1374, 0x3FE279A760000000
  %1429 = fmul fast float %1426, %1363
  %1430 = fmul fast float %1427, %1375
  %1431 = fmul fast float %1424, %1365
  %1432 = fadd fast float %1429, %1431
  %1433 = fsub fast float %1432, %1430
  %1434 = call float @dx.op.unary.f32(i32 6, float %1433)  ; FAbs(value)
  %1435 = fadd fast float %1434, 0x3DDB7CDFE0000000
  %1436 = fdiv fast float %1428, %1435
  br label %1437

; <label>:1437                                    ; preds = %1422, %1413
  %1438 = phi float [ %1436, %1422 ], [ 1.000000e+00, %1413 ]
  %1439 = call float @dx.op.binary.f32(i32 36, float %1438, float %1414)  ; FMin(a,b)
  %1440 = fmul fast float %1346, %1346
  %1441 = fmul fast float %1360, %1360
  %1442 = fmul fast float %1348, %1348
  %1443 = fadd fast float %1442, %1440
  %1444 = fadd fast float %1443, %1441
  %1445 = call float @dx.op.unary.f32(i32 24, float %1444)  ; Sqrt(value)
  %1446 = fcmp fast ugt float %1445, 0.000000e+00
  br i1 %1446, label %1447, label %1462, !dx.controlflow.hints !77

; <label>:1447                                    ; preds = %1437
  %1448 = fsub fast float -0.000000e+00, %1348
  %1449 = fdiv fast float %1448, %1445
  %1450 = fsub fast float -0.000000e+00, %1346
  %1451 = fdiv fast float %1450, %1445
  %1452 = fdiv fast float %1360, %1445
  %1453 = fmul fast float %1359, 0x3FE279A760000000
  %1454 = fmul fast float %1451, %1346
  %1455 = fmul fast float %1452, %1360
  %1456 = fmul fast float %1449, %1348
  %1457 = fadd fast float %1454, %1456
  %1458 = fsub fast float %1457, %1455
  %1459 = call float @dx.op.unary.f32(i32 6, float %1458)  ; FAbs(value)
  %1460 = fadd fast float %1459, 0x3DDB7CDFE0000000
  %1461 = fdiv fast float %1453, %1460
  br label %1462

; <label>:1462                                    ; preds = %1447, %1437
  %1463 = phi float [ %1461, %1447 ], [ 1.000000e+00, %1437 ]
  %1464 = call float @dx.op.binary.f32(i32 36, float %1463, float %1439)  ; FMin(a,b)
  %1465 = call float @dx.op.unary.f32(i32 7, float %1464)  ; Saturate(value)
  %1466 = fcmp fast olt float %1465, 1.000000e+00
  br i1 %1466, label %1467, label %1477, !dx.controlflow.hints !78

; <label>:1467                                    ; preds = %1462
  %1468 = fmul fast float %1465, %1346
  %1469 = fmul fast float %1465, %1360
  %1470 = fmul fast float %1465, %1348
  %1471 = fmul fast float %1465, %1363
  %1472 = fmul fast float %1465, %1375
  %1473 = fmul fast float %1465, %1365
  %1474 = fmul fast float %1465, %1378
  %1475 = fmul fast float %1465, %1390
  %1476 = fmul fast float %1465, %1380
  br label %1477

; <label>:1477                                    ; preds = %1467, %1462
  %1478 = phi float [ %1474, %1467 ], [ %1378, %1462 ]
  %1479 = phi float [ %1475, %1467 ], [ %1390, %1462 ]
  %1480 = phi float [ %1476, %1467 ], [ %1380, %1462 ]
  %1481 = phi float [ %1471, %1467 ], [ %1363, %1462 ]
  %1482 = phi float [ %1472, %1467 ], [ %1375, %1462 ]
  %1483 = phi float [ %1473, %1467 ], [ %1365, %1462 ]
  %1484 = phi float [ %1468, %1467 ], [ %1346, %1462 ]
  %1485 = phi float [ %1469, %1467 ], [ %1360, %1462 ]
  %1486 = phi float [ %1470, %1467 ], [ %1348, %1462 ]
  %1487 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1359)  ; FMax(a,b)
  %1488 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1374)  ; FMax(a,b)
  %1489 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1389)  ; FMax(a,b)
  %1490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1491 = extractvalue %dx.types.CBufRet.f32 %1490, 0
  %1492 = fcmp fast ogt float %1491, 0.000000e+00
  %1493 = fcmp fast oge float %1147, 0.000000e+00
  %1494 = and i1 %1493, %1492
  %1495 = fcmp fast ole float %1147, 1.000000e+00
  %1496 = and i1 %1495, %1494
  %1497 = fcmp fast oge float %1148, 0.000000e+00
  %1498 = and i1 %1497, %1496
  %1499 = fcmp fast ole float %1148, 1.000000e+00
  %1500 = and i1 %1499, %1498
  br i1 %1500, label %1501, label %1646, !dx.controlflow.hints !79

; <label>:1501                                    ; preds = %1477
  %1502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1503 = extractvalue %dx.types.CBufRet.f32 %1502, 2
  %1504 = extractvalue %dx.types.CBufRet.f32 %1502, 3
  %1505 = fmul fast float %1503, %1147
  %1506 = fmul fast float %1504, %1148
  %1507 = call float @dx.op.unary.f32(i32 27, float %1505)  ; Round_ni(value)
  %1508 = call float @dx.op.unary.f32(i32 27, float %1506)  ; Round_ni(value)
  %1509 = fptosi float %1507 to i32
  %1510 = fptosi float %1508 to i32
  %1511 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %1509, i32 %1510, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1512 = extractvalue %dx.types.ResRet.i32 %1511, 0
  %1513 = and i32 %1512, 65535
  %1514 = lshr i32 %1512, 16
  %1515 = icmp eq i32 %1513, 65535
  br i1 %1515, label %1552, label %1516, !dx.controlflow.hints !80

; <label>:1516                                    ; preds = %1501
  %1517 = extractvalue %dx.types.CBufRet.f32 %1490, 1
  %1518 = extractvalue %dx.types.CBufRet.f32 %1502, 0
  %1519 = extractvalue %dx.types.CBufRet.f32 %1502, 1
  %1520 = fmul fast float %1518, %1147
  %1521 = fmul fast float %1519, %1148
  %1522 = fmul fast float %1520, 1.250000e-01
  %1523 = fmul fast float %1521, 1.250000e-01
  %1524 = call float @dx.op.unary.f32(i32 27, float %1522)  ; Round_ni(value)
  %1525 = call float @dx.op.unary.f32(i32 27, float %1523)  ; Round_ni(value)
  %1526 = fmul fast float %1524, 8.000000e+00
  %1527 = fmul fast float %1525, 8.000000e+00
  %1528 = and i32 %1512, 255
  %1529 = lshr i32 %1512, 8
  %1530 = and i32 %1529, 255
  %1531 = mul nuw nsw i32 %1528, 9
  %1532 = uitofp i32 %1531 to float
  %1533 = mul nuw nsw i32 %1530, 9
  %1534 = uitofp i32 %1533 to float
  %1535 = fadd fast float %1532, 5.000000e-01
  %1536 = fadd fast float %1535, %1520
  %1537 = fsub fast float %1536, %1526
  %1538 = fadd fast float %1534, 5.000000e-01
  %1539 = fadd fast float %1538, %1521
  %1540 = fsub fast float %1539, %1527
  %1541 = fdiv fast float %1537, %1491
  %1542 = fdiv fast float %1540, %1517
  %1543 = fmul fast float %1175, 4.375000e-01
  %1544 = fadd fast float %1543, 3.125000e-02
  %1545 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %24, float %1541, float %1542, float %1544, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1546 = extractvalue %dx.types.ResRet.f32 %1545, 0
  %1547 = extractvalue %dx.types.ResRet.f32 %1545, 1
  %1548 = extractvalue %dx.types.ResRet.f32 %1545, 2
  %1549 = fadd fast float %1546, %1487
  %1550 = fadd fast float %1547, %1488
  %1551 = fadd fast float %1548, %1489
  br label %1552

; <label>:1552                                    ; preds = %1516, %1501
  %1553 = phi float [ %1551, %1516 ], [ %1489, %1501 ]
  %1554 = phi float [ %1550, %1516 ], [ %1488, %1501 ]
  %1555 = phi float [ %1549, %1516 ], [ %1487, %1501 ]
  %1556 = icmp eq i32 %1514, 65535
  br i1 %1556, label %1646, label %1557, !dx.controlflow.hints !81

; <label>:1557                                    ; preds = %1552
  %1558 = extractvalue %dx.types.CBufRet.f32 %1490, 1
  %1559 = extractvalue %dx.types.CBufRet.f32 %1502, 0
  %1560 = extractvalue %dx.types.CBufRet.f32 %1502, 1
  %1561 = fmul fast float %1559, %1147
  %1562 = fmul fast float %1560, %1148
  %1563 = fmul fast float %1561, 1.250000e-01
  %1564 = fmul fast float %1562, 1.250000e-01
  %1565 = call float @dx.op.unary.f32(i32 27, float %1563)  ; Round_ni(value)
  %1566 = call float @dx.op.unary.f32(i32 27, float %1564)  ; Round_ni(value)
  %1567 = fmul fast float %1565, 8.000000e+00
  %1568 = fmul fast float %1566, 8.000000e+00
  %1569 = fsub fast float %1561, %1567
  %1570 = fsub fast float %1562, %1568
  %1571 = fadd fast float %1569, 5.000000e-01
  %1572 = fadd fast float %1570, 5.000000e-01
  %1573 = and i32 %1514, 255
  %1574 = lshr i32 %1512, 24
  %1575 = mul nuw nsw i32 %1573, 9
  %1576 = uitofp i32 %1575 to float
  %1577 = mul nuw nsw i32 %1574, 9
  %1578 = uitofp i32 %1577 to float
  %1579 = fadd fast float %1571, %1576
  %1580 = fadd fast float %1572, %1578
  %1581 = fdiv fast float %1579, %1491
  %1582 = fdiv fast float %1580, %1558
  %1583 = fmul fast float %1175, 4.375000e-01
  %1584 = fadd fast float %1583, 3.125000e-02
  %1585 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %24, float %1581, float %1582, float %1584, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1586 = extractvalue %dx.types.ResRet.f32 %1585, 0
  %1587 = extractvalue %dx.types.ResRet.f32 %1585, 1
  %1588 = extractvalue %dx.types.ResRet.f32 %1585, 2
  %1589 = fadd fast float %1583, 5.312500e-01
  %1590 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %24, float %1581, float %1582, float %1589, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1591 = extractvalue %dx.types.ResRet.f32 %1590, 0
  %1592 = extractvalue %dx.types.ResRet.f32 %1590, 1
  %1593 = extractvalue %dx.types.ResRet.f32 %1590, 2
  %1594 = fmul fast float %1591, 2.000000e+00
  %1595 = fmul fast float %1592, 2.000000e+00
  %1596 = fmul fast float %1593, 2.000000e+00
  %1597 = fadd fast float %1594, -1.000000e+00
  %1598 = fadd fast float %1595, -1.000000e+00
  %1599 = fadd fast float %1596, -1.000000e+00
  %1600 = fmul fast float %1597, %1597
  %1601 = fmul fast float %1598, %1598
  %1602 = fadd fast float %1600, %1601
  %1603 = fmul fast float %1599, %1599
  %1604 = fadd fast float %1602, %1603
  %1605 = call float @dx.op.unary.f32(i32 24, float %1604)  ; Sqrt(value)
  %1606 = fcmp fast ogt float %1605, 0.000000e+00
  br i1 %1606, label %1607, label %1611, !dx.controlflow.hints !82

; <label>:1607                                    ; preds = %1557
  %1608 = fdiv fast float %1597, %1605
  %1609 = fdiv fast float %1598, %1605
  %1610 = fdiv fast float %1599, %1605
  br label %1611

; <label>:1611                                    ; preds = %1607, %1557
  %1612 = phi float [ %1608, %1607 ], [ 0.000000e+00, %1557 ]
  %1613 = phi float [ %1609, %1607 ], [ 0.000000e+00, %1557 ]
  %1614 = phi float [ %1610, %1607 ], [ 0.000000e+00, %1557 ]
  %1615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1616 = extractvalue %dx.types.CBufRet.f32 %1615, 0
  %1617 = extractvalue %dx.types.CBufRet.f32 %1615, 1
  %1618 = fsub fast float %323, %1616
  %1619 = fsub fast float %324, %1617
  %1620 = fmul fast float %1618, %1618
  %1621 = fmul fast float %1619, %1619
  %1622 = fadd fast float %1620, %1621
  %1623 = call float @dx.op.unary.f32(i32 24, float %1622)  ; Sqrt(value)
  %1624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1625 = extractvalue %dx.types.CBufRet.f32 %1624, 0
  %1626 = extractvalue %dx.types.CBufRet.f32 %1624, 1
  %1627 = fsub fast float %1623, %1625
  %1628 = fdiv fast float %1627, %1626
  %1629 = call float @dx.op.unary.f32(i32 7, float %1628)  ; Saturate(value)
  %1630 = fmul fast float %1629, 2.000000e+00
  %1631 = fsub fast float 3.000000e+00, %1630
  %1632 = fmul fast float %1629, %1629
  %1633 = fmul fast float %1632, %1631
  %1634 = call float @dx.op.dot3.f32(i32 55, float %1612, float %1613, float %1614, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1635 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1634)  ; FMax(a,b)
  %1636 = fmul fast float %1635, 0x400C5BF8A0000000
  %1637 = fmul fast float %1633, %1586
  %1638 = fmul fast float %1637, %1636
  %1639 = fadd fast float %1638, %1555
  %1640 = fmul fast float %1633, %1587
  %1641 = fmul fast float %1640, %1636
  %1642 = fadd fast float %1641, %1554
  %1643 = fmul fast float %1633, %1588
  %1644 = fmul fast float %1643, %1636
  %1645 = fadd fast float %1644, %1553
  br label %1646

; <label>:1646                                    ; preds = %1611, %1552, %1477
  %1647 = phi float [ %1645, %1611 ], [ %1553, %1552 ], [ %1489, %1477 ]
  %1648 = phi float [ %1642, %1611 ], [ %1554, %1552 ], [ %1488, %1477 ]
  %1649 = phi float [ %1639, %1611 ], [ %1555, %1552 ], [ %1487, %1477 ]
  %1650 = fcmp fast ogt float %325, %1171
  %1651 = and i1 %1493, %1650
  %1652 = and i1 %1495, %1651
  %1653 = and i1 %1497, %1652
  %1654 = and i1 %1499, %1653
  br i1 %1654, label %1655, label %1712, !dx.controlflow.hints !83

; <label>:1655                                    ; preds = %1646
  %1656 = fmul fast float %1173, 0x3FC24924A0000000
  %1657 = fsub fast float %325, %1171
  %1658 = fdiv fast float %1657, %1656
  %1659 = call float @dx.op.unary.f32(i32 7, float %1658)  ; Saturate(value)
  %1660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1661 = extractvalue %dx.types.CBufRet.f32 %1660, 0
  %1662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1663 = extractvalue %dx.types.CBufRet.f32 %1662, 0
  %1664 = extractvalue %dx.types.CBufRet.f32 %1662, 1
  %1665 = extractvalue %dx.types.CBufRet.f32 %1662, 2
  %1666 = fsub fast float %1661, %1649
  %1667 = fsub fast float %1663, %1484
  %1668 = fsub fast float %1664, %1485
  %1669 = fsub fast float %1665, %1486
  %1670 = fmul fast float %1666, %1659
  %1671 = fmul fast float %1667, %1659
  %1672 = fmul fast float %1668, %1659
  %1673 = fmul fast float %1669, %1659
  %1674 = fadd fast float %1670, %1649
  %1675 = fadd fast float %1671, %1484
  %1676 = fadd fast float %1672, %1485
  %1677 = fadd fast float %1673, %1486
  %1678 = extractvalue %dx.types.CBufRet.f32 %1660, 1
  %1679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1680 = extractvalue %dx.types.CBufRet.f32 %1679, 0
  %1681 = extractvalue %dx.types.CBufRet.f32 %1679, 1
  %1682 = extractvalue %dx.types.CBufRet.f32 %1679, 2
  %1683 = fsub fast float %1678, %1648
  %1684 = fsub fast float %1680, %1481
  %1685 = fsub fast float %1681, %1482
  %1686 = fsub fast float %1682, %1483
  %1687 = fmul fast float %1683, %1659
  %1688 = fmul fast float %1684, %1659
  %1689 = fmul fast float %1685, %1659
  %1690 = fmul fast float %1686, %1659
  %1691 = fadd fast float %1687, %1648
  %1692 = fadd fast float %1688, %1481
  %1693 = fadd fast float %1689, %1482
  %1694 = fadd fast float %1690, %1483
  %1695 = extractvalue %dx.types.CBufRet.f32 %1660, 2
  %1696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1697 = extractvalue %dx.types.CBufRet.f32 %1696, 0
  %1698 = extractvalue %dx.types.CBufRet.f32 %1696, 1
  %1699 = extractvalue %dx.types.CBufRet.f32 %1696, 2
  %1700 = fsub fast float %1695, %1647
  %1701 = fsub fast float %1697, %1478
  %1702 = fsub fast float %1698, %1479
  %1703 = fsub fast float %1699, %1480
  %1704 = fmul fast float %1700, %1659
  %1705 = fmul fast float %1701, %1659
  %1706 = fmul fast float %1702, %1659
  %1707 = fmul fast float %1703, %1659
  %1708 = fadd fast float %1704, %1647
  %1709 = fadd fast float %1705, %1478
  %1710 = fadd fast float %1706, %1479
  %1711 = fadd fast float %1707, %1480
  br label %1712

; <label>:1712                                    ; preds = %1655, %1646
  %1713 = phi float [ %1708, %1655 ], [ %1647, %1646 ]
  %1714 = phi float [ %1709, %1655 ], [ %1478, %1646 ]
  %1715 = phi float [ %1710, %1655 ], [ %1479, %1646 ]
  %1716 = phi float [ %1711, %1655 ], [ %1480, %1646 ]
  %1717 = phi float [ %1691, %1655 ], [ %1648, %1646 ]
  %1718 = phi float [ %1692, %1655 ], [ %1481, %1646 ]
  %1719 = phi float [ %1693, %1655 ], [ %1482, %1646 ]
  %1720 = phi float [ %1694, %1655 ], [ %1483, %1646 ]
  %1721 = phi float [ %1674, %1655 ], [ %1649, %1646 ]
  %1722 = phi float [ %1675, %1655 ], [ %1484, %1646 ]
  %1723 = phi float [ %1676, %1655 ], [ %1485, %1646 ]
  %1724 = phi float [ %1677, %1655 ], [ %1486, %1646 ]
  %1725 = extractvalue %dx.types.CBufRet.f32 %1296, 3
  %1726 = fmul fast float %1725, %1721
  %1727 = fmul fast float %1725, %1717
  %1728 = fmul fast float %1725, %1713
  %1729 = fmul fast float %1722, 1.500000e+00
  %1730 = fmul fast float %1729, %1725
  %1731 = fmul fast float %1723, 1.500000e+00
  %1732 = fmul fast float %1731, %1725
  %1733 = fmul fast float %1724, 1.500000e+00
  %1734 = fmul fast float %1733, %1725
  %1735 = fmul fast float %1718, 1.500000e+00
  %1736 = fmul fast float %1735, %1725
  %1737 = fmul fast float %1719, 1.500000e+00
  %1738 = fmul fast float %1737, %1725
  %1739 = fmul fast float %1720, 1.500000e+00
  %1740 = fmul fast float %1739, %1725
  %1741 = fmul fast float %1714, 1.500000e+00
  %1742 = fmul fast float %1741, %1725
  %1743 = fmul fast float %1715, 1.500000e+00
  %1744 = fmul fast float %1743, %1725
  %1745 = fmul fast float %1716, 1.500000e+00
  %1746 = fmul fast float %1745, %1725
  %1747 = fsub fast float %1136, %1726
  %1748 = fmul fast float %1747, %1034
  %1749 = fadd fast float %1748, %1726
  %1750 = fsub fast float %1135, %1730
  %1751 = fmul fast float %1750, %1034
  %1752 = fadd fast float %1751, %1730
  %1753 = fsub fast float %1134, %1732
  %1754 = fmul fast float %1753, %1034
  %1755 = fadd fast float %1754, %1732
  %1756 = fsub fast float %1133, %1734
  %1757 = fmul fast float %1756, %1034
  %1758 = fadd fast float %1757, %1734
  %1759 = fmul fast float %1132, %1034
  %1760 = fmul fast float %1131, %1034
  %1761 = fmul fast float %1130, %1034
  %1762 = fmul fast float %1129, %1034
  %1763 = fmul fast float %1128, %1034
  %1764 = fsub fast float %1127, %1727
  %1765 = fmul fast float %1764, %1034
  %1766 = fadd fast float %1765, %1727
  %1767 = fsub fast float %1126, %1736
  %1768 = fmul fast float %1767, %1034
  %1769 = fadd fast float %1768, %1736
  %1770 = fsub fast float %1125, %1738
  %1771 = fmul fast float %1770, %1034
  %1772 = fadd fast float %1771, %1738
  %1773 = fsub fast float %1124, %1740
  %1774 = fmul fast float %1773, %1034
  %1775 = fadd fast float %1774, %1740
  %1776 = fmul fast float %1123, %1034
  %1777 = fmul fast float %1122, %1034
  %1778 = fmul fast float %1121, %1034
  %1779 = fmul fast float %1120, %1034
  %1780 = fmul fast float %1119, %1034
  %1781 = fsub fast float %1118, %1728
  %1782 = fmul fast float %1781, %1034
  %1783 = fadd fast float %1782, %1728
  %1784 = fsub fast float %1117, %1742
  %1785 = fmul fast float %1784, %1034
  %1786 = fadd fast float %1785, %1742
  %1787 = fsub fast float %1116, %1744
  %1788 = fmul fast float %1787, %1034
  %1789 = fadd fast float %1788, %1744
  %1790 = fsub fast float %1115, %1746
  %1791 = fmul fast float %1790, %1034
  %1792 = fadd fast float %1791, %1746
  %1793 = fmul fast float %1114, %1034
  %1794 = fmul fast float %1113, %1034
  %1795 = fmul fast float %1112, %1034
  %1796 = fmul fast float %1111, %1034
  %1797 = fmul fast float %1110, %1034
  br label %1798

; <label>:1798                                    ; preds = %1712, %1109
  %1799 = phi float [ %1797, %1712 ], [ %1110, %1109 ]
  %1800 = phi float [ %1796, %1712 ], [ %1111, %1109 ]
  %1801 = phi float [ %1795, %1712 ], [ %1112, %1109 ]
  %1802 = phi float [ %1794, %1712 ], [ %1113, %1109 ]
  %1803 = phi float [ %1793, %1712 ], [ %1114, %1109 ]
  %1804 = phi float [ %1792, %1712 ], [ %1115, %1109 ]
  %1805 = phi float [ %1789, %1712 ], [ %1116, %1109 ]
  %1806 = phi float [ %1786, %1712 ], [ %1117, %1109 ]
  %1807 = phi float [ %1783, %1712 ], [ %1118, %1109 ]
  %1808 = phi float [ %1780, %1712 ], [ %1119, %1109 ]
  %1809 = phi float [ %1779, %1712 ], [ %1120, %1109 ]
  %1810 = phi float [ %1778, %1712 ], [ %1121, %1109 ]
  %1811 = phi float [ %1777, %1712 ], [ %1122, %1109 ]
  %1812 = phi float [ %1776, %1712 ], [ %1123, %1109 ]
  %1813 = phi float [ %1775, %1712 ], [ %1124, %1109 ]
  %1814 = phi float [ %1772, %1712 ], [ %1125, %1109 ]
  %1815 = phi float [ %1769, %1712 ], [ %1126, %1109 ]
  %1816 = phi float [ %1766, %1712 ], [ %1127, %1109 ]
  %1817 = phi float [ %1763, %1712 ], [ %1128, %1109 ]
  %1818 = phi float [ %1762, %1712 ], [ %1129, %1109 ]
  %1819 = phi float [ %1761, %1712 ], [ %1130, %1109 ]
  %1820 = phi float [ %1760, %1712 ], [ %1131, %1109 ]
  %1821 = phi float [ %1759, %1712 ], [ %1132, %1109 ]
  %1822 = phi float [ %1758, %1712 ], [ %1133, %1109 ]
  %1823 = phi float [ %1755, %1712 ], [ %1134, %1109 ]
  %1824 = phi float [ %1752, %1712 ], [ %1135, %1109 ]
  %1825 = phi float [ %1749, %1712 ], [ %1136, %1109 ]
  %1826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1827 = extractvalue %dx.types.CBufRet.f32 %1826, 2
  %1828 = fmul fast float %1827, %1827
  %1829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1830 = extractvalue %dx.types.CBufRet.f32 %1829, 0
  %1831 = extractvalue %dx.types.CBufRet.f32 %1829, 1
  %1832 = extractvalue %dx.types.CBufRet.f32 %1829, 2
  %1833 = fmul fast float %1825, 0x3FD20DD760000000
  %1834 = fmul fast float %1832, %1823
  %1835 = fmul fast float %1832, %1832
  %1836 = fmul fast float %1835, 0x3FEE471020000000
  %1837 = fadd fast float %1836, 0xBFD42F6020000000
  %1838 = fmul fast float %1837, %1819
  %1839 = fmul fast float %1830, %1822
  %1840 = fmul fast float %1831, %1824
  %1841 = fmul fast float %1832, 0x3FF17B1420000000
  %1842 = fmul fast float %1828, %1818
  %1843 = fmul fast float %1842, %1830
  %1844 = fmul fast float %1843, %1841
  %1845 = fmul fast float %1828, %1820
  %1846 = fmul fast float %1845, %1831
  %1847 = fmul fast float %1846, %1841
  %1848 = fmul fast float %1830, %1830
  %1849 = fmul fast float %1831, %1831
  %1850 = fsub fast float %1848, %1849
  %1851 = fmul fast float %1817, 0x3FE17B1420000000
  %1852 = fmul fast float %1851, %1850
  %1853 = fmul fast float %1821, 0x3FF17B1420000000
  %1854 = fmul fast float %1853, %1831
  %1855 = fmul fast float %1854, %1830
  %1856 = fadd fast float %1852, %1855
  %1857 = fadd fast float %1856, %1838
  %1858 = fmul fast float %1857, %1828
  %1859 = fsub fast float %1840, %1834
  %1860 = fadd fast float %1859, %1839
  %1861 = fmul fast float %1860, 0x3FDF454380000000
  %1862 = fmul fast float %1861, %1827
  %1863 = fsub fast float %1833, %1844
  %1864 = fsub fast float %1863, %1847
  %1865 = fadd fast float %1864, %1858
  %1866 = fadd fast float %1865, %1862
  %1867 = fmul fast float %1816, 0x3FD20DD760000000
  %1868 = fmul fast float %1832, %1814
  %1869 = fmul fast float %1837, %1810
  %1870 = fmul fast float %1830, %1813
  %1871 = fmul fast float %1831, %1815
  %1872 = fmul fast float %1828, %1809
  %1873 = fmul fast float %1872, %1830
  %1874 = fmul fast float %1873, %1841
  %1875 = fmul fast float %1828, %1811
  %1876 = fmul fast float %1875, %1831
  %1877 = fmul fast float %1876, %1841
  %1878 = fmul fast float %1808, 0x3FE17B1420000000
  %1879 = fmul fast float %1878, %1850
  %1880 = fmul fast float %1812, 0x3FF17B1420000000
  %1881 = fmul fast float %1880, %1831
  %1882 = fmul fast float %1881, %1830
  %1883 = fadd fast float %1879, %1882
  %1884 = fadd fast float %1883, %1869
  %1885 = fmul fast float %1884, %1828
  %1886 = fsub fast float %1871, %1868
  %1887 = fadd fast float %1886, %1870
  %1888 = fmul fast float %1887, 0x3FDF454380000000
  %1889 = fmul fast float %1888, %1827
  %1890 = fsub fast float %1867, %1874
  %1891 = fsub fast float %1890, %1877
  %1892 = fadd fast float %1891, %1885
  %1893 = fadd fast float %1892, %1889
  %1894 = fmul fast float %1807, 0x3FD20DD760000000
  %1895 = fmul fast float %1832, %1805
  %1896 = fmul fast float %1837, %1801
  %1897 = fmul fast float %1830, %1804
  %1898 = fmul fast float %1831, %1806
  %1899 = fmul fast float %1828, %1800
  %1900 = fmul fast float %1899, %1830
  %1901 = fmul fast float %1900, %1841
  %1902 = fmul fast float %1828, %1802
  %1903 = fmul fast float %1902, %1831
  %1904 = fmul fast float %1903, %1841
  %1905 = fmul fast float %1799, 0x3FE17B1420000000
  %1906 = fmul fast float %1905, %1850
  %1907 = fmul fast float %1803, 0x3FF17B1420000000
  %1908 = fmul fast float %1907, %1831
  %1909 = fmul fast float %1908, %1830
  %1910 = fadd fast float %1906, %1909
  %1911 = fadd fast float %1910, %1896
  %1912 = fmul fast float %1911, %1828
  %1913 = fsub fast float %1898, %1895
  %1914 = fadd fast float %1913, %1897
  %1915 = fmul fast float %1914, 0x3FDF454380000000
  %1916 = fmul fast float %1915, %1827
  %1917 = fsub fast float %1894, %1901
  %1918 = fsub fast float %1917, %1904
  %1919 = fadd fast float %1918, %1912
  %1920 = fadd fast float %1919, %1916
  %1921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1922 = extractvalue %dx.types.CBufRet.f32 %1921, 3
  %1923 = extractvalue %dx.types.CBufRet.f32 %975, 0
  %1924 = fmul fast float %1923, %1922
  %1925 = fmul fast float %1924, %1866
  %1926 = fmul fast float %1924, %1893
  %1927 = fmul fast float %1924, %1920
  %1928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1929 = extractvalue %dx.types.CBufRet.f32 %1928, 3
  %1930 = fcmp fast une float %1929, 0.000000e+00
  %1931 = extractvalue %dx.types.CBufRet.f32 %1928, 0
  %1932 = extractvalue %dx.types.CBufRet.f32 %1928, 1
  %1933 = extractvalue %dx.types.CBufRet.f32 %1928, 2
  br i1 %1930, label %1934, label %1956, !dx.controlflow.hints !84

; <label>:1934                                    ; preds = %1798
  %1935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1936 = extractvalue %dx.types.CBufRet.f32 %1935, 0
  %1937 = extractvalue %dx.types.CBufRet.f32 %1935, 1
  %1938 = extractvalue %dx.types.CBufRet.f32 %1935, 2
  %1939 = call float @dx.op.dot3.f32(i32 55, float %1931, float %1932, float %1933, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %1940 = fcmp fast ogt float %985, 0.000000e+00
  %1941 = select i1 %1940, float 1.000000e+00, float -1.000000e+00
  %1942 = fmul fast float %1941, 5.000000e-01
  %1943 = fmul fast float %1942, %1939
  %1944 = fmul fast float %1941, %985
  %1945 = fadd fast float %1943, 4.921875e-01
  %1946 = fadd fast float %1944, -3.125000e-02
  %1947 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %24, float %1945, float 0x3FB25F3060000000, float %1946, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1948 = extractvalue %dx.types.ResRet.f32 %1947, 0
  %1949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1950 = extractvalue %dx.types.CBufRet.f32 %1949, 0
  %1951 = fmul fast float %1948, 0x400921FB60000000
  %1952 = fmul fast float %1951, %1950
  %1953 = fmul fast float %1952, %1936
  %1954 = fmul fast float %1952, %1937
  %1955 = fmul fast float %1952, %1938
  br label %1956

; <label>:1956                                    ; preds = %1934, %1798
  %1957 = phi float [ %1953, %1934 ], [ 0.000000e+00, %1798 ]
  %1958 = phi float [ %1954, %1934 ], [ 0.000000e+00, %1798 ]
  %1959 = phi float [ %1955, %1934 ], [ 0.000000e+00, %1798 ]
  %1960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1961 = extractvalue %dx.types.CBufRet.f32 %1960, 0
  %1962 = fmul fast float %1961, %1931
  %1963 = fmul fast float %1961, %1932
  %1964 = fmul fast float %1961, %1933
  %1965 = fadd fast float %1962, %323
  %1966 = fsub fast float -0.000000e+00, %1965
  %1967 = fadd fast float %1963, %324
  %1968 = fsub fast float -0.000000e+00, %1967
  %1969 = fadd fast float %1964, %325
  br i1 %338, label %2044, label %1970, !dx.controlflow.hints !50

; <label>:1970                                    ; preds = %1956
  %1971 = extractvalue %dx.types.CBufRet.f32 %1960, 1
  %1972 = fcmp fast ogt float %1971, %1961
  br i1 %1972, label %1973, label %1975, !dx.controlflow.hints !51

; <label>:1973                                    ; preds = %1970
  %1974 = fsub fast float %1971, %1961
  br label %2035

; <label>:1975                                    ; preds = %1970
  %1976 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1977 = extractvalue %dx.types.CBufRet.i32 %1976, 3
  %1978 = icmp eq i32 %1977, 0
  %1979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %1980 = extractvalue %dx.types.CBufRet.f32 %1979, 2
  %1981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1982 = extractvalue %dx.types.CBufRet.f32 %1981, 2
  %1983 = fsub fast float %1980, %1969
  %1984 = fadd fast float %1983, %1982
  %1985 = fsub fast float 0xC7EFFFFFE0000000, %1969
  br i1 %1978, label %1995, label %1986, !dx.controlflow.hints !41

; <label>:1986                                    ; preds = %1975
  %1987 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1966, float %1968, float %1984)  ; Dot3(ax,ay,az,bx,by,bz)
  %1988 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1931, float %1932, float %1933)  ; Dot3(ax,ay,az,bx,by,bz)
  %1989 = fdiv fast float 1.000000e+00, %1988
  %1990 = fmul fast float %1989, %1987
  %1991 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1966, float %1968, float %1985)  ; Dot3(ax,ay,az,bx,by,bz)
  %1992 = fmul fast float %1989, %1991
  %1993 = call float @dx.op.binary.f32(i32 36, float %1990, float %1992)  ; FMin(a,b)
  %1994 = call float @dx.op.binary.f32(i32 35, float %1990, float %1992)  ; FMax(a,b)
  br label %2028

; <label>:1995                                    ; preds = %1975
  %1996 = extractvalue %dx.types.CBufRet.f32 %1979, 0
  %1997 = extractvalue %dx.types.CBufRet.f32 %1979, 1
  %1998 = extractvalue %dx.types.CBufRet.f32 %1981, 0
  %1999 = extractvalue %dx.types.CBufRet.f32 %1981, 1
  %2000 = fdiv fast float 1.000000e+00, %1931
  %2001 = fdiv fast float 1.000000e+00, %1932
  %2002 = fdiv fast float 1.000000e+00, %1933
  %2003 = fsub fast float %1996, %1965
  %2004 = fmul fast float %2000, %2003
  %2005 = fadd fast float %2003, %1998
  %2006 = fmul fast float %2005, %2000
  %2007 = call float @dx.op.binary.f32(i32 36, float %2004, float %2006)  ; FMin(a,b)
  %2008 = call float @dx.op.binary.f32(i32 35, float %2004, float %2006)  ; FMax(a,b)
  %2009 = fsub fast float %1997, %1967
  %2010 = fmul fast float %2001, %2009
  %2011 = fadd fast float %2009, %1999
  %2012 = fmul fast float %2011, %2001
  %2013 = call float @dx.op.binary.f32(i32 36, float %2010, float %2012)  ; FMin(a,b)
  %2014 = call float @dx.op.binary.f32(i32 35, float %2007, float %2013)  ; FMax(a,b)
  %2015 = call float @dx.op.binary.f32(i32 35, float %2010, float %2012)  ; FMax(a,b)
  %2016 = call float @dx.op.binary.f32(i32 36, float %2008, float %2015)  ; FMin(a,b)
  %2017 = fmul fast float %2002, %1985
  %2018 = fmul fast float %2002, %1984
  %2019 = call float @dx.op.binary.f32(i32 36, float %2017, float %2018)  ; FMin(a,b)
  %2020 = call float @dx.op.binary.f32(i32 35, float %2014, float %2019)  ; FMax(a,b)
  %2021 = call float @dx.op.binary.f32(i32 35, float %2017, float %2018)  ; FMax(a,b)
  %2022 = call float @dx.op.binary.f32(i32 36, float %2016, float %2021)  ; FMin(a,b)
  %2023 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2020)  ; FMax(a,b)
  %2024 = fcmp fast ult float %2022, %2023
  br i1 %2024, label %2028, label %2025, !dx.controlflow.hints !42

; <label>:2025                                    ; preds = %1995
  %2026 = call float @dx.op.binary.f32(i32 36, float %2020, float %2022)  ; FMin(a,b)
  %2027 = call float @dx.op.binary.f32(i32 35, float %2020, float %2022)  ; FMax(a,b)
  br label %2028

; <label>:2028                                    ; preds = %2025, %1995, %1986
  %2029 = phi float [ %1993, %1986 ], [ %2026, %2025 ], [ 0.000000e+00, %1995 ]
  %2030 = phi float [ %1994, %1986 ], [ %2027, %2025 ], [ 0.000000e+00, %1995 ]
  %2031 = fcmp fast ogt float %2029, 0.000000e+00
  br i1 %2031, label %2035, label %2032, !dx.controlflow.hints !52

; <label>:2032                                    ; preds = %2028
  %2033 = fcmp fast ugt float %2030, 0.000000e+00
  br i1 %2033, label %2034, label %2035, !dx.controlflow.hints !53

; <label>:2034                                    ; preds = %2032
  br label %2035

; <label>:2035                                    ; preds = %2034, %2032, %2028, %1973
  %2036 = phi float [ %1974, %1973 ], [ 0.000000e+00, %2034 ], [ 0x47EFFFFFE0000000, %2032 ], [ %2029, %2028 ]
  %2037 = phi i32 [ %205, %1973 ], [ %205, %2034 ], [ 0, %2032 ], [ %205, %2028 ]
  %2038 = icmp ne i32 %2037, 0
  %2039 = zext i1 %2038 to i32
  %2040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2041 = extractvalue %dx.types.CBufRet.f32 %2040, 2
  %2042 = call float @dx.op.binary.f32(i32 35, float %2036, float %2041)  ; FMax(a,b)
  %2043 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %2042)  ; FMin(a,b)
  br label %2044

; <label>:2044                                    ; preds = %2035, %1956
  %2045 = phi float [ %2043, %2035 ], [ 0x47EFFFFFE0000000, %1956 ]
  %2046 = phi i32 [ %2039, %2035 ], [ 0, %1956 ]
  br i1 %511, label %2059, label %2047, !dx.controlflow.hints !59

; <label>:2047                                    ; preds = %2044
  %2048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2049 = extractvalue %dx.types.CBufRet.f32 %2048, 3
  %2050 = extractvalue %dx.types.CBufRet.f32 %2048, 2
  %2051 = fmul fast float %2049, %1961
  %2052 = fdiv fast float %2051, %1961
  %2053 = fadd fast float %2052, 1.000000e+00
  %2054 = call float @dx.op.unary.f32(i32 23, float %2053)  ; Log(value)
  %2055 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %2054)  ; FMin(a,b)
  %2056 = fmul fast float %2050, %1961
  %2057 = fmul fast float %2056, %2055
  %2058 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %2057)  ; FMin(a,b)
  br label %2059

; <label>:2059                                    ; preds = %2047, %2044
  %2060 = phi float [ %2058, %2047 ], [ 0x47EFFFFFE0000000, %2044 ]
  br i1 %526, label %2117, label %2061, !dx.controlflow.hints !60

; <label>:2061                                    ; preds = %2059
  %2062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %2063 = extractvalue %dx.types.CBufRet.f32 %2062, 0
  %2064 = extractvalue %dx.types.CBufRet.f32 %2062, 1
  %2065 = extractvalue %dx.types.CBufRet.f32 %2062, 2
  %2066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %2067 = extractvalue %dx.types.CBufRet.f32 %2066, 0
  %2068 = extractvalue %dx.types.CBufRet.f32 %2066, 1
  %2069 = extractvalue %dx.types.CBufRet.f32 %2066, 2
  %2070 = fsub fast float %1965, %2067
  %2071 = fsub fast float %1967, %2068
  %2072 = fsub fast float %1969, %2069
  %2073 = fmul fast float %2070, %2063
  %2074 = fmul fast float %2071, %2064
  %2075 = fmul fast float %2072, %2065
  %2076 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %2077 = extractvalue %dx.types.CBufRet.i32 %2076, 3
  %2078 = icmp eq i32 %2077, 0
  br i1 %2078, label %2082, label %2079, !dx.controlflow.hints !61

; <label>:2079                                    ; preds = %2061
  %2080 = call float @dx.op.unary.f32(i32 22, float %2073)  ; Frc(value)
  %2081 = call float @dx.op.unary.f32(i32 22, float %2074)  ; Frc(value)
  br label %2082

; <label>:2082                                    ; preds = %2079, %2061
  %2083 = phi float [ %2080, %2079 ], [ %2073, %2061 ]
  %2084 = phi float [ %2081, %2079 ], [ %2074, %2061 ]
  %2085 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %22, float %2083, float %2084, float %2075, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2086 = extractvalue %dx.types.ResRet.f32 %2085, 0
  %2087 = fmul fast float %2086, 2.000000e+00
  %2088 = fadd fast float %2087, -1.000000e+00
  %2089 = extractvalue %dx.types.CBufRet.f32 %2062, 3
  %2090 = fmul fast float %2088, %2089
  %2091 = fcmp fast olt float %2090, 0.000000e+00
  %2092 = fcmp fast oge float %2075, 0.000000e+00
  %2093 = fcmp fast ole float %2075, 1.000000e+00
  br i1 %2078, label %2096, label %2094, !dx.controlflow.hints !62

; <label>:2094                                    ; preds = %2082
  %2095 = and i1 %2092, %2093
  br label %2106

; <label>:2096                                    ; preds = %2082
  %2097 = fcmp fast oge float %2073, 0.000000e+00
  %2098 = fcmp fast oge float %2074, 0.000000e+00
  %2099 = and i1 %2097, %2098
  %2100 = and i1 %2092, %2099
  %2101 = fcmp fast ole float %2073, 1.000000e+00
  %2102 = fcmp fast ole float %2074, 1.000000e+00
  %2103 = and i1 %2101, %2102
  %2104 = and i1 %2093, %2103
  %2105 = and i1 %2100, %2104
  br label %2106

; <label>:2106                                    ; preds = %2096, %2094
  %2107 = phi i1 [ %2095, %2094 ], [ %2105, %2096 ]
  %2108 = and i1 %2091, %2107
  %2109 = call float @dx.op.unary.f32(i32 6, float %2090)  ; FAbs(value)
  %2110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %2111 = extractvalue %dx.types.CBufRet.f32 %2110, 1
  %2112 = extractvalue %dx.types.CBufRet.f32 %2110, 0
  %2113 = call float @dx.op.binary.f32(i32 35, float %2109, float %2112)  ; FMax(a,b)
  %2114 = select i1 %2108, float %2111, float %2113
  %2115 = zext i1 %2108 to i32
  %2116 = call float @dx.op.binary.f32(i32 36, float %2045, float %2114)  ; FMin(a,b)
  br label %2117

; <label>:2117                                    ; preds = %2106, %2059
  %2118 = phi float [ %2116, %2106 ], [ %2045, %2059 ]
  %2119 = phi i32 [ %2115, %2106 ], [ 0, %2059 ]
  %2120 = icmp eq i32 %2046, 0
  br i1 %2120, label %2194, label %2121, !dx.controlflow.hints !63

; <label>:2121                                    ; preds = %2117
  %2122 = fmul fast float %586, %1961
  %2123 = call float @dx.op.unary.f32(i32 23, float %2122)  ; Log(value)
  %2124 = fmul fast float %2123, 0x3FE62E4300000000
  %2125 = call float @dx.op.binary.f32(i32 35, float %2124, float 1.000000e+00)  ; FMax(a,b)
  %2126 = fmul fast float %2125, %2060
  %2127 = call float @dx.op.binary.f32(i32 36, float %2126, float %2118)  ; FMin(a,b)
  %2128 = call float @dx.op.binary.f32(i32 35, float %2127, float 0.000000e+00)  ; FMax(a,b)
  %2129 = fcmp fast ogt float %2128, 0x3F1A36E2E0000000
  %2130 = fadd fast float %1962, %1965
  %2131 = fadd fast float %1963, %1967
  %2132 = select i1 %2129, float %2130, float %1965
  %2133 = select i1 %2129, float %2131, float %1967
  %2134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %2135 = extractvalue %dx.types.CBufRet.f32 %2134, 0
  %2136 = extractvalue %dx.types.CBufRet.f32 %2134, 1
  %2137 = fsub fast float %2132, %2135
  %2138 = fsub fast float %2133, %2136
  %2139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %2140 = extractvalue %dx.types.CBufRet.f32 %2139, 0
  %2141 = extractvalue %dx.types.CBufRet.f32 %2139, 1
  %2142 = fmul fast float %2137, %2140
  %2143 = fmul fast float %2138, %2141
  %2144 = fsub fast float 1.000000e+00, %2143
  %2145 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %2146 = extractvalue %dx.types.CBufRet.i32 %2145, 3
  %2147 = icmp eq i32 %2146, 0
  br i1 %2147, label %2154, label %2148, !dx.controlflow.hints !54

; <label>:2148                                    ; preds = %2121
  %2149 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %23, float %2142, float %2144, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2150 = extractvalue %dx.types.ResRet.f32 %2149, 0
  %2151 = extractvalue %dx.types.ResRet.f32 %2149, 1
  %2152 = extractvalue %dx.types.ResRet.f32 %2149, 2
  %2153 = extractvalue %dx.types.ResRet.f32 %2149, 3
  br label %2160

; <label>:2154                                    ; preds = %2121
  %2155 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %24, float %2142, float %2144, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2156 = extractvalue %dx.types.ResRet.f32 %2155, 0
  %2157 = extractvalue %dx.types.ResRet.f32 %2155, 1
  %2158 = extractvalue %dx.types.ResRet.f32 %2155, 2
  %2159 = extractvalue %dx.types.ResRet.f32 %2155, 3
  br label %2160

; <label>:2160                                    ; preds = %2154, %2148
  %2161 = phi float [ %2150, %2148 ], [ %2156, %2154 ]
  %2162 = phi float [ %2151, %2148 ], [ %2157, %2154 ]
  %2163 = phi float [ %2152, %2148 ], [ %2158, %2154 ]
  %2164 = phi float [ %2153, %2148 ], [ %2159, %2154 ]
  %2165 = extractvalue %dx.types.CBufRet.f32 %2139, 3
  %2166 = fmul fast float %2165, %2162
  %2167 = fmul fast float %2166, %2161
  %2168 = fsub fast float %2166, %2167
  %2169 = fcmp fast ole float %2168, 0.000000e+00
  %2170 = extractvalue %dx.types.CBufRet.f32 %2134, 2
  %2171 = fadd fast float %2167, %2170
  %2172 = fmul fast float %2165, %2163
  %2173 = fadd fast float %2172, %2170
  %2174 = fdiv fast float 1.000000e+00, %2168
  %2175 = select i1 %2169, float 1.000000e+06, float %2174
  %2176 = fsub fast float %1969, %2171
  %2177 = fmul fast float %2175, %2176
  %2178 = call float @dx.op.unary.f32(i32 7, float %2177)  ; Saturate(value)
  %2179 = extractvalue %dx.types.CBufRet.f32 %2139, 2
  %2180 = fmul fast float %2179, %2178
  %2181 = fsub fast float %2179, %2180
  %2182 = fcmp fast olt float %1969, %2173
  %2183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %2184 = extractvalue %dx.types.CBufRet.f32 %2183, 3
  %2185 = fmul fast float %2184, 3.000000e+00
  %2186 = select i1 %2182, float %2185, float 3.000000e+00
  %2187 = fmul fast float %2181, %2186
  %2188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %2189 = extractvalue %dx.types.CBufRet.f32 %2188, 2
  %2190 = fmul fast float %1961, 0x3FD5555560000000
  %2191 = fmul fast float %2190, %2164
  %2192 = fmul fast float %2191, %2189
  %2193 = fmul fast float %2192, %2187
  br label %2194

; <label>:2194                                    ; preds = %2160, %2117
  %2195 = phi float [ %2193, %2160 ], [ 0.000000e+00, %2117 ]
  br i1 %511, label %2243, label %2196, !dx.controlflow.hints !65

; <label>:2196                                    ; preds = %2194
  %2197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %2198 = extractvalue %dx.types.CBufRet.f32 %2197, 0
  %2199 = fsub fast float %2198, %1969
  %2200 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1966, float %1968, float %2199)  ; Dot3(ax,ay,az,bx,by,bz)
  %2201 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1931, float %1932, float %1933)  ; Dot3(ax,ay,az,bx,by,bz)
  %2202 = fdiv fast float 1.000000e+00, %2201
  %2203 = fmul fast float %2202, %2200
  %2204 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2203)  ; FMax(a,b)
  %2205 = fcmp fast olt float %1933, 0.000000e+00
  %2206 = call float @dx.op.binary.f32(i32 36, float %1961, float %2204)  ; FMin(a,b)
  br i1 %2205, label %2208, label %2207, !dx.controlflow.hints !66

; <label>:2207                                    ; preds = %2196
  br label %2208

; <label>:2208                                    ; preds = %2207, %2196
  %2209 = phi float [ 0.000000e+00, %2207 ], [ %2206, %2196 ]
  %2210 = phi float [ %2206, %2207 ], [ %1961, %2196 ]
  %2211 = phi float [ %2206, %2207 ], [ 0.000000e+00, %2196 ]
  %2212 = phi float [ %1961, %2207 ], [ %2206, %2196 ]
  %2213 = fsub fast float %2210, %2209
  %2214 = extractvalue %dx.types.CBufRet.f32 %2197, 1
  %2215 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %2214)  ; FMin(a,b)
  %2216 = fsub fast float %1969, %2198
  %2217 = fmul fast float %2215, 0x3FF7154760000000
  %2218 = fmul fast float %2217, %2216
  %2219 = call float @dx.op.unary.f32(i32 21, float %2218)  ; Exp(value)
  %2220 = fmul fast float %1933, 0x3FF7154760000000
  %2221 = fmul fast float %2220, %2212
  %2222 = fmul fast float %2221, %2215
  %2223 = call float @dx.op.unary.f32(i32 21, float %2222)  ; Exp(value)
  %2224 = fmul fast float %2220, %2211
  %2225 = fmul fast float %2224, %2215
  %2226 = call float @dx.op.unary.f32(i32 21, float %2225)  ; Exp(value)
  %2227 = fsub fast float %2223, %2226
  %2228 = fmul fast float %2227, %2219
  %2229 = fmul fast float %2215, %1933
  %2230 = fdiv fast float %2228, %2229
  %2231 = fadd fast float %2213, %2230
  %2232 = call float @dx.op.unary.f32(i32 6, float %1933)  ; FAbs(value)
  %2233 = fcmp fast olt float %2232, 0x3F0FFB4800000000
  %2234 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2216)  ; FMax(a,b)
  %2235 = fmul fast float %2234, 0x3FF7154760000000
  %2236 = fmul fast float %2235, %2214
  %2237 = call float @dx.op.unary.f32(i32 21, float %2236)  ; Exp(value)
  %2238 = fmul fast float %2237, %1961
  %2239 = select i1 %2233, float %2238, float %2231
  %2240 = extractvalue %dx.types.CBufRet.f32 %1826, 1
  %2241 = fmul fast float %2239, %2240
  %2242 = fadd fast float %2241, %2195
  br label %2243

; <label>:2243                                    ; preds = %2208, %2194
  %2244 = phi float [ %2242, %2208 ], [ %2195, %2194 ]
  %2245 = icmp eq i32 %2119, 0
  br i1 %2245, label %2426, label %2246, !dx.controlflow.hints !67

; <label>:2246                                    ; preds = %2243
  %2247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2248 = extractvalue %dx.types.CBufRet.f32 %2247, 3
  %2249 = fmul fast float %2248, %1961
  %2250 = fcmp fast oeq float %2249, 0.000000e+00
  br i1 %2250, label %2265, label %2251, !dx.controlflow.hints !68

; <label>:2251                                    ; preds = %2246
  %2252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %2253 = extractvalue %dx.types.CBufRet.f32 %2252, 3
  %2254 = fmul fast float %2253, %2249
  %2255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %2256 = extractvalue %dx.types.CBufRet.f32 %2255, 0
  %2257 = extractvalue %dx.types.CBufRet.f32 %2255, 1
  %2258 = extractvalue %dx.types.CBufRet.f32 %2255, 2
  %2259 = fmul fast float %2256, %2254
  %2260 = fmul fast float %2257, %2254
  %2261 = fmul fast float %2258, %2254
  %2262 = call float @dx.op.unary.f32(i32 23, float %2259)  ; Log(value)
  %2263 = call float @dx.op.unary.f32(i32 23, float %2260)  ; Log(value)
  %2264 = call float @dx.op.unary.f32(i32 23, float %2261)  ; Log(value)
  br label %2265

; <label>:2265                                    ; preds = %2251, %2246
  %2266 = phi float [ %2262, %2251 ], [ 0.000000e+00, %2246 ]
  %2267 = phi float [ %2263, %2251 ], [ 0.000000e+00, %2246 ]
  %2268 = phi float [ %2264, %2251 ], [ 0.000000e+00, %2246 ]
  %2269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %2270 = extractvalue %dx.types.CBufRet.f32 %2269, 0
  %2271 = extractvalue %dx.types.CBufRet.f32 %2269, 1
  %2272 = extractvalue %dx.types.CBufRet.f32 %2269, 2
  %2273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %2274 = extractvalue %dx.types.CBufRet.f32 %2273, 0
  %2275 = extractvalue %dx.types.CBufRet.f32 %2273, 1
  %2276 = extractvalue %dx.types.CBufRet.f32 %2273, 2
  %2277 = fsub fast float %1965, %2274
  %2278 = fsub fast float %1967, %2275
  %2279 = fsub fast float %1969, %2276
  %2280 = fmul fast float %2277, %2270
  %2281 = fmul fast float %2278, %2271
  %2282 = fmul fast float %2279, %2272
  %2283 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %2284 = extractvalue %dx.types.CBufRet.i32 %2283, 0
  %2285 = extractvalue %dx.types.CBufRet.i32 %2283, 1
  %2286 = uitofp i32 %2284 to float
  %2287 = uitofp i32 %2285 to float
  %2288 = fmul fast float %2280, %2286
  %2289 = fmul fast float %2281, %2287
  %2290 = fadd fast float %2288, 5.000000e-01
  %2291 = fadd fast float %2289, 5.000000e-01
  %2292 = call float @dx.op.unary.f32(i32 22, float %2290)  ; Frc(value)
  %2293 = call float @dx.op.unary.f32(i32 22, float %2291)  ; Frc(value)
  %2294 = call float @dx.op.unary.f32(i32 27, float %2290)  ; Round_ni(value)
  %2295 = call float @dx.op.unary.f32(i32 27, float %2291)  ; Round_ni(value)
  %2296 = fadd fast float %2294, 1.000000e+00
  %2297 = fadd fast float %2295, 1.000000e+00
  %2298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %2299 = extractvalue %dx.types.CBufRet.f32 %2298, 0
  %2300 = extractvalue %dx.types.CBufRet.f32 %2298, 1
  %2301 = fmul fast float %2299, %2296
  %2302 = fmul fast float %2300, %2297
  %2303 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %23, float %2301, float %2302, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2304 = extractvalue %dx.types.ResRet.f32 %2303, 0
  %2305 = extractvalue %dx.types.ResRet.f32 %2303, 1
  %2306 = extractvalue %dx.types.ResRet.f32 %2303, 2
  %2307 = extractvalue %dx.types.ResRet.f32 %2303, 3
  %2308 = extractvalue %dx.types.CBufRet.i32 %2283, 2
  %2309 = extractvalue %dx.types.CBufRet.f32 %2298, 2
  %2310 = uitofp i32 %2308 to float
  %2311 = fadd fast float %2310, -1.000000e+00
  %2312 = fmul fast float %2311, %2304
  %2313 = fmul fast float %2311, %2305
  %2314 = fmul fast float %2311, %2306
  %2315 = fmul fast float %2311, %2307
  %2316 = fadd fast float %2312, 5.000000e-01
  %2317 = fadd fast float %2313, 5.000000e-01
  %2318 = fadd fast float %2314, 5.000000e-01
  %2319 = fadd fast float %2315, 5.000000e-01
  %2320 = fptoui float %2316 to i32
  %2321 = fptoui float %2317 to i32
  %2322 = fptoui float %2318 to i32
  %2323 = fptoui float %2319 to i32
  %2324 = uitofp i32 %2320 to float
  %2325 = uitofp i32 %2321 to float
  %2326 = uitofp i32 %2322 to float
  %2327 = uitofp i32 %2323 to float
  %2328 = fadd fast float %2324, 5.000000e-01
  %2329 = fadd fast float %2325, 5.000000e-01
  %2330 = fadd fast float %2326, 5.000000e-01
  %2331 = fadd fast float %2327, 5.000000e-01
  %2332 = fmul fast float %2328, %2309
  %2333 = fmul fast float %2329, %2309
  %2334 = fmul fast float %2330, %2309
  %2335 = fmul fast float %2331, %2309
  %2336 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %24, float %2332, float %2282, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2337 = extractvalue %dx.types.ResRet.f32 %2336, 0
  %2338 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %24, float %2333, float %2282, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2339 = extractvalue %dx.types.ResRet.f32 %2338, 0
  %2340 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %24, float %2334, float %2282, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2341 = extractvalue %dx.types.ResRet.f32 %2340, 0
  %2342 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %24, float %2335, float %2282, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2343 = extractvalue %dx.types.ResRet.f32 %2342, 0
  %2344 = fsub fast float %2341, %2343
  %2345 = fmul fast float %2344, %2292
  %2346 = fadd fast float %2345, %2343
  %2347 = fsub fast float %2339, %2337
  %2348 = fmul fast float %2347, %2292
  %2349 = fadd fast float %2348, %2337
  %2350 = fsub fast float %2349, %2346
  %2351 = fmul fast float %2350, %2293
  %2352 = fadd fast float %2351, %2346
  %2353 = fcmp fast ogt float %2352, 0.000000e+00
  br i1 %2353, label %2354, label %2422, !dx.controlflow.hints !69

; <label>:2354                                    ; preds = %2265
  %2355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %2356 = extractvalue %dx.types.CBufRet.f32 %2355, 0
  %2357 = extractvalue %dx.types.CBufRet.f32 %2355, 1
  %2358 = extractvalue %dx.types.CBufRet.f32 %2355, 2
  %2359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %2360 = extractvalue %dx.types.CBufRet.f32 %2359, 0
  %2361 = extractvalue %dx.types.CBufRet.f32 %2359, 1
  %2362 = extractvalue %dx.types.CBufRet.f32 %2359, 2
  %2363 = fmul fast float %2278, %2270
  %2364 = fmul fast float %2279, %2270
  %2365 = fadd fast float %2280, %2360
  %2366 = fadd fast float %2363, %2361
  %2367 = fadd fast float %2364, %2362
  %2368 = fmul fast float %2365, %2356
  %2369 = fmul fast float %2366, %2356
  %2370 = fmul fast float %2367, %2356
  %2371 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %21, float %2368, float %2369, float %2370, float undef, i32 0, i32 0, i32 0, float %2266)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2372 = extractvalue %dx.types.ResRet.f32 %2371, 0
  %2373 = fmul fast float %2365, %2357
  %2374 = fmul fast float %2366, %2357
  %2375 = fmul fast float %2367, %2357
  %2376 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %21, float %2373, float %2374, float %2375, float undef, i32 0, i32 0, i32 0, float %2267)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2377 = extractvalue %dx.types.ResRet.f32 %2376, 1
  %2378 = fmul fast float %2365, %2358
  %2379 = fmul fast float %2366, %2358
  %2380 = fmul fast float %2367, %2358
  %2381 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %21, float %2378, float %2379, float %2380, float undef, i32 0, i32 0, i32 0, float %2268)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2382 = extractvalue %dx.types.ResRet.f32 %2381, 2
  %2383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %2384 = extractvalue %dx.types.CBufRet.f32 %2383, 1
  %2385 = fmul fast float %2377, %2372
  %2386 = fmul fast float %2385, %2382
  %2387 = call float @dx.op.unary.f32(i32 23, float %2386)  ; Log(value)
  %2388 = fmul fast float %2387, %2384
  %2389 = call float @dx.op.unary.f32(i32 21, float %2388)  ; Exp(value)
  %2390 = extractvalue %dx.types.CBufRet.f32 %2383, 2
  %2391 = fmul fast float %2352, %2352
  %2392 = fmul fast float %2391, %2389
  %2393 = fmul fast float %2392, %2390
  %2394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %2395 = extractvalue %dx.types.CBufRet.f32 %2394, 3
  %2396 = fmul fast float %2395, %2393
  %2397 = bitcast float %2396 to i32
  %2398 = sitofp i32 %2397 to float
  %2399 = fptosi float %2398 to i32
  %2400 = bitcast i32 %2399 to float
  %2401 = fsub fast float 1.000000e+00, %2393
  %2402 = bitcast float %2401 to i32
  %2403 = sitofp i32 %2402 to float
  %2404 = fptosi float %2403 to i32
  %2405 = bitcast i32 %2404 to float
  %2406 = fadd fast float %2400, %2405
  %2407 = bitcast float %2406 to i32
  %2408 = sub nsw i32 2129859010, %2407
  %2409 = bitcast i32 %2408 to float
  %2410 = fmul fast float %2409, %2400
  %2411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2412 = extractvalue %dx.types.CBufRet.f32 %2411, 2
  %2413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %2414 = extractvalue %dx.types.CBufRet.f32 %2413, 0
  %2415 = fmul fast float %2410, %2414
  %2416 = fadd fast float %2415, 1.000000e+00
  %2417 = bitcast float %2416 to i32
  %2418 = sub nsw i32 2129859010, %2417
  %2419 = bitcast i32 %2418 to float
  %2420 = fmul fast float %2410, %2412
  %2421 = fmul fast float %2420, %2419
  br label %2422

; <label>:2422                                    ; preds = %2354, %2265
  %2423 = phi float [ %2421, %2354 ], [ %2352, %2265 ]
  %2424 = fmul fast float %2423, %1961
  %2425 = fadd fast float %2424, %2244
  br label %2426

; <label>:2426                                    ; preds = %2422, %2243
  %2427 = phi float [ %2425, %2422 ], [ %2244, %2243 ]
  %2428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %2429 = extractvalue %dx.types.CBufRet.f32 %2428, 3
  %2430 = fmul fast float %2427, 0xBFF7154760000000
  %2431 = fmul fast float %2430, %2429
  %2432 = call float @dx.op.unary.f32(i32 21, float %2431)  ; Exp(value)
  %2433 = call float @dx.op.unary.f32(i32 7, float %2432)  ; Saturate(value)
  %2434 = fmul fast float %2433, %1957
  %2435 = fmul fast float %2433, %1958
  %2436 = fmul fast float %2433, %1959
  %2437 = fadd fast float %2434, %1925
  %2438 = fadd fast float %2435, %1926
  %2439 = fadd fast float %2436, %1927
  %2440 = fsub fast float 1.000000e+00, %994
  %2441 = fmul fast float %986, %319
  %2442 = fmul fast float %2441, %2440
  %2443 = fmul fast float %2442, %2437
  %2444 = fmul fast float %987, %319
  %2445 = fmul fast float %2444, %2440
  %2446 = fmul fast float %2445, %2438
  %2447 = fmul fast float %988, %319
  %2448 = fmul fast float %2447, %2440
  %2449 = fmul fast float %2448, %2439
  %2450 = fadd fast float %2443, %320
  %2451 = fadd fast float %2446, %321
  %2452 = fadd fast float %2449, %322
  %2453 = fdiv fast float %970, %596
  %2454 = fadd fast float %596, %326
  %2455 = fmul fast float %326, %326
  %2456 = fmul fast float %2454, %2454
  %2457 = fsub fast float %2455, %2456
  %2458 = fmul fast float %2457, -5.000000e-01
  %2459 = fmul fast float %2458, %2453
  %2460 = fadd fast float %2459, %318
  %2461 = fadd fast float %970, %328
  %2462 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2463 = extractvalue %dx.types.CBufRet.i32 %2462, 0
  %2464 = icmp eq i32 %2463, 0
  br i1 %2464, label %2491, label %2465, !dx.controlflow.hints !85

; <label>:2465                                    ; preds = %2426
  %2466 = icmp ne i32 %333, 0
  %2467 = zext i1 %2466 to i32
  %2468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2469 = extractvalue %dx.types.CBufRet.f32 %2468, 2
  %2470 = extractvalue %dx.types.CBufRet.f32 %2468, 0
  %2471 = fsub fast float %2454, %2470
  %2472 = fmul fast float %2471, %2469
  %2473 = call float @dx.op.unary.f32(i32 7, float %2472)  ; Saturate(value)
  %2474 = fadd fast float %2473, -5.000000e-01
  %2475 = fmul fast float %2474, 2.000000e+00
  %2476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2477 = extractvalue %dx.types.CBufRet.f32 %2476, 2
  %2478 = fcmp fast olt float %2475, %2477
  br i1 %2478, label %2479, label %2491, !dx.controlflow.hints !86

; <label>:2479                                    ; preds = %2465
  %2480 = fmul fast float %2475, %2475
  %2481 = fmul fast float %2440, %319
  %2482 = fmul fast float %2475, %2481
  %2483 = fmul fast float %2480, %2481
  %2484 = fmul fast float %2482, %2480
  %2485 = fmul fast float %2480, %2480
  %2486 = fmul fast float %2485, %2481
  %2487 = fadd fast float %2482, %329
  %2488 = fadd fast float %2483, %330
  %2489 = fadd fast float %2484, %331
  %2490 = fadd fast float %2486, %332
  br label %2491

; <label>:2491                                    ; preds = %2479, %2465, %2426
  %2492 = phi float [ %329, %2426 ], [ %2487, %2479 ], [ %329, %2465 ]
  %2493 = phi float [ %330, %2426 ], [ %2488, %2479 ], [ %330, %2465 ]
  %2494 = phi float [ %331, %2426 ], [ %2489, %2479 ], [ %331, %2465 ]
  %2495 = phi float [ %332, %2426 ], [ %2490, %2479 ], [ %332, %2465 ]
  %2496 = phi i32 [ %333, %2426 ], [ 1, %2479 ], [ %2467, %2465 ]
  %2497 = fmul fast float %994, %319
  br label %2498

; <label>:2498                                    ; preds = %2491, %989
  %2499 = phi float [ %990, %989 ], [ %2454, %2491 ]
  %2500 = phi float [ %318, %989 ], [ %2460, %2491 ]
  %2501 = phi float [ %319, %989 ], [ %2497, %2491 ]
  %2502 = phi float [ %320, %989 ], [ %2450, %2491 ]
  %2503 = phi float [ %321, %989 ], [ %2451, %2491 ]
  %2504 = phi float [ %322, %989 ], [ %2452, %2491 ]
  %2505 = phi float [ %328, %989 ], [ %2461, %2491 ]
  %2506 = phi float [ %329, %989 ], [ %2492, %2491 ]
  %2507 = phi float [ %330, %989 ], [ %2493, %2491 ]
  %2508 = phi float [ %331, %989 ], [ %2494, %2491 ]
  %2509 = phi float [ %332, %989 ], [ %2495, %2491 ]
  %2510 = phi i32 [ %333, %989 ], [ %2496, %2491 ]
  %2511 = fmul fast float %596, %116
  %2512 = fmul fast float %596, %117
  %2513 = fmul fast float %596, %118
  %2514 = fadd fast float %2511, %323
  %2515 = fadd fast float %2512, %324
  %2516 = fadd fast float %2513, %325
  %2517 = fcmp fast olt float %2499, %295
  %2518 = extractvalue %dx.types.CBufRet.f32 %975, 2
  %2519 = fcmp fast olt float %2518, %2501
  %2520 = and i1 %2517, %2519
  br i1 %2520, label %317, label %2521

; <label>:2521                                    ; preds = %2498
  br label %2522

; <label>:2522                                    ; preds = %2521, %291
  %2523 = phi float [ 0.000000e+00, %291 ], [ %2500, %2521 ]
  %2524 = phi float [ 1.000000e+00, %291 ], [ %2501, %2521 ]
  %2525 = phi float [ 0.000000e+00, %291 ], [ %2502, %2521 ]
  %2526 = phi float [ 0.000000e+00, %291 ], [ %2503, %2521 ]
  %2527 = phi float [ 0.000000e+00, %291 ], [ %2504, %2521 ]
  %2528 = phi float [ 0.000000e+00, %291 ], [ %2505, %2521 ]
  %2529 = phi float [ 0.000000e+00, %291 ], [ %2506, %2521 ]
  %2530 = phi float [ 0.000000e+00, %291 ], [ %2507, %2521 ]
  %2531 = phi float [ 0.000000e+00, %291 ], [ %2508, %2521 ]
  %2532 = phi float [ 0.000000e+00, %291 ], [ %2509, %2521 ]
  %2533 = phi i32 [ 0, %291 ], [ %2510, %2521 ]
  %2534 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2535 = extractvalue %dx.types.CBufRet.i32 %2534, 0
  %2536 = icmp eq i32 %2535, 0
  br i1 %2536, label %2578, label %2537, !dx.controlflow.hints !87

; <label>:2537                                    ; preds = %2522
  %2538 = icmp eq i32 %2533, 0
  br i1 %2538, label %2577, label %2539, !dx.controlflow.hints !88

; <label>:2539                                    ; preds = %2537
  %2540 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2541 = extractvalue %dx.types.CBufRet.i32 %2540, 2
  %2542 = icmp eq i32 %2541, 0
  br i1 %2542, label %2549, label %2543, !dx.controlflow.hints !89

; <label>:2543                                    ; preds = %2539
  %2544 = fsub fast float 1.000000e+00, %2524
  %2545 = fdiv fast float %2529, %2544
  %2546 = fdiv fast float %2530, %2544
  %2547 = fdiv fast float %2531, %2544
  %2548 = fdiv fast float %2532, %2544
  br label %2554

; <label>:2549                                    ; preds = %2539
  %2550 = fadd fast float %2529, %2524
  %2551 = fadd fast float %2530, %2524
  %2552 = fadd fast float %2531, %2524
  %2553 = fadd fast float %2532, %2524
  br label %2554

; <label>:2554                                    ; preds = %2549, %2543
  %2555 = phi float [ %2545, %2543 ], [ %2550, %2549 ]
  %2556 = phi float [ %2546, %2543 ], [ %2551, %2549 ]
  %2557 = phi float [ %2547, %2543 ], [ %2552, %2549 ]
  %2558 = phi float [ %2548, %2543 ], [ %2553, %2549 ]
  %2559 = call float @dx.op.binary.f32(i32 35, float %2555, float -1.000000e+00)  ; FMax(a,b)
  %2560 = call float @dx.op.binary.f32(i32 35, float %2556, float -1.000000e+00)  ; FMax(a,b)
  %2561 = call float @dx.op.binary.f32(i32 35, float %2557, float -1.000000e+00)  ; FMax(a,b)
  %2562 = call float @dx.op.binary.f32(i32 35, float %2558, float -1.000000e+00)  ; FMax(a,b)
  %2563 = call float @dx.op.binary.f32(i32 36, float %2559, float 1.000000e+00)  ; FMin(a,b)
  %2564 = call float @dx.op.binary.f32(i32 36, float %2560, float 1.000000e+00)  ; FMin(a,b)
  %2565 = call float @dx.op.binary.f32(i32 36, float %2561, float 1.000000e+00)  ; FMin(a,b)
  %2566 = call float @dx.op.binary.f32(i32 36, float %2562, float 1.000000e+00)  ; FMin(a,b)
  %2567 = fmul fast float %2563, 1.500000e+00
  %2568 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %2565, float %2567)  ; FMad(a,b,c)
  %2569 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %2564, float 0.000000e+00)  ; FMad(a,b,c)
  %2570 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %2566, float %2569)  ; FMad(a,b,c)
  %2571 = fmul fast float %2563, 0x3FEBB67AE0000000
  %2572 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %2565, float %2571)  ; FMad(a,b,c)
  %2573 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2564, float 0.000000e+00)  ; FMad(a,b,c)
  %2574 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2566, float %2573)  ; FMad(a,b,c)
  %2575 = fadd fast float %2568, 5.000000e-01
  %2576 = fadd fast float %2572, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %27, i32 %28, i32 0, float %2575, float %2570, float %2576, float %2574, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2578

; <label>:2577                                    ; preds = %2537
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %27, i32 %28, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2578

; <label>:2578                                    ; preds = %2577, %2554, %2522
  %2579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2580 = extractvalue %dx.types.CBufRet.f32 %2579, 2
  %2581 = fsub fast float %2524, %2580
  %2582 = fdiv fast float %2581, %2580
  %2583 = call float @dx.op.unary.f32(i32 7, float %2582)  ; Saturate(value)
  %2584 = fmul fast float %2583, 2.000000e+00
  %2585 = fsub fast float 3.000000e+00, %2584
  %2586 = fmul fast float %2583, %2583
  %2587 = fmul fast float %2586, %2524
  %2588 = fmul fast float %2587, %2585
  %2589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %2590 = extractvalue %dx.types.CBufRet.f32 %2589, 0
  %2591 = extractvalue %dx.types.CBufRet.f32 %2589, 1
  %2592 = extractvalue %dx.types.CBufRet.f32 %2589, 2
  %2593 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %2590, float %2591, float %2592)  ; Dot3(ax,ay,az,bx,by,bz)
  %2594 = fmul fast float %2593, %2523
  %2595 = fcmp fast ogt float %2528, 0.000000e+00
  %2596 = fdiv fast float 1.000000e+00, %2528
  %2597 = fmul fast float %2594, %2596
  %2598 = select i1 %2595, float %2597, float %127
  %2599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2600 = extractvalue %dx.types.CBufRet.f32 %2599, 0
  %2601 = extractvalue %dx.types.CBufRet.f32 %2599, 1
  %2602 = extractvalue %dx.types.CBufRet.f32 %2599, 2
  %2603 = fmul fast float %2600, %80
  %2604 = fmul fast float %2601, %80
  %2605 = fmul fast float %2602, %80
  %2606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2607 = extractvalue %dx.types.CBufRet.f32 %2606, 0
  %2608 = extractvalue %dx.types.CBufRet.f32 %2606, 1
  %2609 = extractvalue %dx.types.CBufRet.f32 %2606, 2
  %2610 = fmul fast float %2607, %81
  %2611 = fmul fast float %2608, %81
  %2612 = fmul fast float %2609, %81
  %2613 = fadd fast float %2610, %2603
  %2614 = fadd fast float %2611, %2604
  %2615 = fadd fast float %2612, %2605
  %2616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2617 = extractvalue %dx.types.CBufRet.f32 %2616, 0
  %2618 = extractvalue %dx.types.CBufRet.f32 %2616, 1
  %2619 = extractvalue %dx.types.CBufRet.f32 %2616, 2
  %2620 = fadd fast float %2613, %2617
  %2621 = fadd fast float %2614, %2618
  %2622 = fadd fast float %2615, %2619
  %2623 = fmul fast float %2620, %2598
  %2624 = fmul fast float %2621, %2598
  %2625 = fmul fast float %2622, %2598
  %2626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %2627 = extractvalue %dx.types.CBufRet.f32 %2626, 0
  %2628 = extractvalue %dx.types.CBufRet.f32 %2626, 1
  %2629 = extractvalue %dx.types.CBufRet.f32 %2626, 2
  %2630 = extractvalue %dx.types.CBufRet.f32 %2626, 3
  %2631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %2632 = extractvalue %dx.types.CBufRet.f32 %2631, 0
  %2633 = extractvalue %dx.types.CBufRet.f32 %2631, 1
  %2634 = extractvalue %dx.types.CBufRet.f32 %2631, 2
  %2635 = extractvalue %dx.types.CBufRet.f32 %2631, 3
  %2636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %2637 = extractvalue %dx.types.CBufRet.f32 %2636, 0
  %2638 = extractvalue %dx.types.CBufRet.f32 %2636, 1
  %2639 = extractvalue %dx.types.CBufRet.f32 %2636, 2
  %2640 = extractvalue %dx.types.CBufRet.f32 %2636, 3
  %2641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %2642 = extractvalue %dx.types.CBufRet.f32 %2641, 0
  %2643 = extractvalue %dx.types.CBufRet.f32 %2641, 1
  %2644 = extractvalue %dx.types.CBufRet.f32 %2641, 2
  %2645 = extractvalue %dx.types.CBufRet.f32 %2641, 3
  %2646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %2647 = extractvalue %dx.types.CBufRet.f32 %2646, 3
  %2648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %2649 = extractvalue %dx.types.CBufRet.f32 %2648, 3
  %2650 = extractvalue %dx.types.CBufRet.f32 %2648, 0
  %2651 = extractvalue %dx.types.CBufRet.f32 %2648, 1
  %2652 = extractvalue %dx.types.CBufRet.f32 %2648, 2
  %2653 = fcmp fast olt float %2652, -5.000000e-01
  %2654 = call float @dx.op.dot3.f32(i32 55, float %2623, float %2624, float %2625, float %2623, float %2624, float %2625)  ; Dot3(ax,ay,az,bx,by,bz)
  %2655 = call float @dx.op.unary.f32(i32 25, float %2654)  ; Rsqrt(value)
  %2656 = fmul fast float %2655, %2654
  %2657 = fmul fast float %2655, %2623
  %2658 = fmul fast float %2655, %2624
  %2659 = fmul fast float %2655, %2625
  %2660 = fadd fast float %2656, %2630
  %2661 = call float @dx.op.dot3.f32(i32 55, float %2657, float %2658, float %2659, float %2627, float %2628, float %2629)  ; Dot3(ax,ay,az,bx,by,bz)
  %2662 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2663 = extractvalue %dx.types.CBufRet.i32 %2662, 1
  %2664 = and i32 %2663, 1
  %2665 = icmp ne i32 %2664, 0
  %2666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %2667 = extractvalue %dx.types.CBufRet.f32 %2666, 2
  %2668 = fcmp fast ogt float %2667, 0.000000e+00
  %2669 = and i1 %2665, %2668
  br i1 %2669, label %2670, label %3076, !dx.controlflow.hints !90

; <label>:2670                                    ; preds = %2578
  %2671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %2672 = extractvalue %dx.types.CBufRet.f32 %2671, 3
  %2673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2674 = extractvalue %dx.types.CBufRet.f32 %2673, 2
  %2675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2676 = extractvalue %dx.types.CBufRet.f32 %2675, 2
  %2677 = fsub fast float %2674, %2676
  %2678 = and i32 %2663, 2
  %2679 = extractvalue %dx.types.CBufRet.i32 %2662, 0
  %2680 = call i32 @dx.op.binary.i32(i32 40, i32 %2679, i32 3)  ; UMin(a,b)
  %2681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2682 = extractvalue %dx.types.CBufRet.f32 %2681, 0
  %2683 = extractvalue %dx.types.CBufRet.f32 %2681, 1
  %2684 = extractvalue %dx.types.CBufRet.f32 %2675, 0
  %2685 = extractvalue %dx.types.CBufRet.f32 %2675, 1
  %2686 = fsub fast float %2682, %2684
  %2687 = fsub fast float %2683, %2685
  %2688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2689 = extractvalue %dx.types.CBufRet.f32 %2688, 0
  %2690 = fcmp fast ogt float %2689, 0.000000e+00
  %2691 = fsub fast float -0.000000e+00, %2686
  %2692 = fsub fast float -0.000000e+00, %2687
  %2693 = call float @dx.op.dot2.f32(i32 54, float %2657, float %2658, float %2657, float %2658)  ; Dot2(ax,ay,bx,by)
  %2694 = call float @dx.op.dot2.f32(i32 54, float %2657, float %2658, float %2691, float %2692)  ; Dot2(ax,ay,bx,by)
  %2695 = fmul fast float %2694, 2.000000e+00
  %2696 = call float @dx.op.dot2.f32(i32 54, float %2691, float %2692, float %2691, float %2692)  ; Dot2(ax,ay,bx,by)
  %2697 = fmul fast float %2689, %2689
  %2698 = fsub fast float %2696, %2697
  %2699 = fmul fast float %2695, %2695
  %2700 = fmul fast float %2693, 4.000000e+00
  %2701 = fmul fast float %2700, %2698
  %2702 = fsub fast float %2699, %2701
  %2703 = fcmp fast ogt float %2702, 0.000000e+00
  br i1 %2703, label %2704, label %2719, !dx.controlflow.hints !91

; <label>:2704                                    ; preds = %2670
  %2705 = fcmp fast ogt float %2695, 0.000000e+00
  %2706 = call float @dx.op.unary.f32(i32 24, float %2702)  ; Sqrt(value)
  %2707 = fsub fast float -0.000000e+00, %2706
  %2708 = select i1 %2705, float %2706, float %2707
  %2709 = fadd fast float %2708, %2695
  %2710 = fmul float %2709, -5.000000e-01
  %2711 = fdiv fast float %2710, %2693
  %2712 = call float @dx.op.binary.f32(i32 35, float %2711, float 0.000000e+00)  ; FMax(a,b)
  %2713 = call float @dx.op.binary.f32(i32 36, float %2656, float %2712)  ; FMin(a,b)
  %2714 = fdiv fast float %2698, %2710
  %2715 = call float @dx.op.binary.f32(i32 35, float %2714, float 0.000000e+00)  ; FMax(a,b)
  %2716 = call float @dx.op.binary.f32(i32 36, float %2656, float %2715)  ; FMin(a,b)
  %2717 = call float @dx.op.binary.f32(i32 36, float %2713, float %2716)  ; FMin(a,b)
  %2718 = call float @dx.op.binary.f32(i32 35, float %2713, float %2716)  ; FMax(a,b)
  br label %2719

; <label>:2719                                    ; preds = %2704, %2670
  %2720 = phi float [ %2718, %2704 ], [ -1.000000e+00, %2670 ]
  %2721 = phi float [ %2717, %2704 ], [ -1.000000e+00, %2670 ]
  %2722 = phi i1 [ true, %2704 ], [ false, %2670 ]
  %2723 = and i1 %2690, %2722
  br i1 %2723, label %2724, label %2726, !dx.controlflow.hints !92

; <label>:2724                                    ; preds = %2719
  %2725 = fcmp fast oeq float %2721, %2720
  br i1 %2725, label %3029, label %2727, !dx.controlflow.hints !93

; <label>:2726                                    ; preds = %2719
  br i1 %2690, label %3029, label %2727, !dx.controlflow.hints !94

; <label>:2727                                    ; preds = %2726, %2724
  %2728 = phi float [ %2656, %2726 ], [ %2720, %2724 ]
  %2729 = phi float [ 0.000000e+00, %2726 ], [ %2721, %2724 ]
  %2730 = icmp ne i32 %2678, 0
  %2731 = fmul fast float %2728, %2659
  %2732 = fadd fast float %2731, %2672
  %2733 = fmul fast float %2732, %2728
  %2734 = select i1 %2730, float 0.000000e+00, float %2733
  %2735 = fcmp fast oeq float %2659, 0.000000e+00
  %2736 = fdiv fast float %2677, %2659
  %2737 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2736)  ; FMax(a,b)
  %2738 = select i1 %2735, float %2728, float %2737
  %2739 = call float @dx.op.binary.f32(i32 36, float %2728, float %2738)  ; FMin(a,b)
  %2740 = fcmp fast ogt float %2659, 0.000000e+00
  %2741 = fcmp fast olt float %2677, 0.000000e+00
  br i1 %2740, label %2742, label %2799, !dx.controlflow.hints !95

; <label>:2742                                    ; preds = %2727
  %2743 = icmp eq i32 %2678, 0
  br i1 %2741, label %2744, label %2788, !dx.controlflow.hints !96

; <label>:2744                                    ; preds = %2742
  %2745 = select i1 %2743, float %2728, float 0.000000e+00
  %2746 = fsub fast float -0.000000e+00, %2745
  %2747 = call float @dx.op.unary.f32(i32 6, float %2746)  ; FAbs(value)
  %2748 = fmul fast float %2745, %2659
  %2749 = fadd fast float %2748, %2672
  %2750 = fmul fast float %2747, %2749
  %2751 = fsub fast float %2734, %2750
  %2752 = fsub fast float %2728, %2747
  %2753 = select i1 %2743, float %2752, float 0.000000e+00
  %2754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2755 = extractvalue %dx.types.CBufRet.f32 %2754, 0
  %2756 = extractvalue %dx.types.CBufRet.f32 %2754, 1
  %2757 = extractvalue %dx.types.CBufRet.f32 %2754, 2
  %2758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2759 = extractvalue %dx.types.CBufRet.f32 %2758, 0
  %2760 = extractvalue %dx.types.CBufRet.f32 %2758, 1
  %2761 = extractvalue %dx.types.CBufRet.f32 %2758, 2
  %2762 = extractvalue %dx.types.CBufRet.f32 %2758, 3
  %2763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2764 = extractvalue %dx.types.CBufRet.f32 %2763, 3
  %2765 = call float @dx.op.binary.f32(i32 36, float %2751, float %2764)  ; FMin(a,b)
  %2766 = fmul fast float %2762, %2753
  %2767 = call float @dx.op.unary.f32(i32 7, float %2766)  ; Saturate(value)
  %2768 = fsub fast float %2759, %2755
  %2769 = fsub fast float %2760, %2756
  %2770 = fsub fast float %2761, %2757
  %2771 = fmul fast float %2767, %2768
  %2772 = fmul fast float %2767, %2769
  %2773 = fmul fast float %2767, %2770
  %2774 = fadd fast float %2771, %2755
  %2775 = fadd fast float %2772, %2756
  %2776 = fadd fast float %2773, %2757
  %2777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2778 = extractvalue %dx.types.CBufRet.f32 %2777, 0
  %2779 = extractvalue %dx.types.CBufRet.f32 %2777, 1
  %2780 = fadd fast float %2779, %2778
  %2781 = call float @dx.op.unary.f32(i32 7, float %2780)  ; Saturate(value)
  %2782 = extractvalue %dx.types.CBufRet.f32 %2777, 2
  %2783 = extractvalue %dx.types.CBufRet.f32 %2777, 3
  %2784 = fadd fast float %2783, %2782
  %2785 = call float @dx.op.unary.f32(i32 7, float %2784)  ; Saturate(value)
  %2786 = fmul fast float %2781, %2765
  %2787 = fmul fast float %2786, %2785
  br label %3029

; <label>:2788                                    ; preds = %2742
  br i1 %2743, label %2789, label %2810, !dx.controlflow.hints !97

; <label>:2789                                    ; preds = %2788
  %2790 = call float @dx.op.binary.f32(i32 36, float %2739, float %2729)  ; FMin(a,b)
  %2791 = fsub fast float %2739, %2790
  %2792 = fsub fast float %2791, %2728
  %2793 = call float @dx.op.unary.f32(i32 6, float %2792)  ; FAbs(value)
  %2794 = fadd fast float %2791, %2728
  %2795 = fmul fast float %2794, %2659
  %2796 = fadd fast float %2795, %2672
  %2797 = fmul fast float %2796, %2793
  %2798 = fsub fast float %2734, %2797
  br label %2810

; <label>:2799                                    ; preds = %2727
  br i1 %2741, label %2800, label %2810, !dx.controlflow.hints !98

; <label>:2800                                    ; preds = %2799
  %2801 = call float @dx.op.binary.f32(i32 35, float %2729, float %2739)  ; FMax(a,b)
  %2802 = icmp eq i32 %2678, 0
  %2803 = select i1 %2802, float %2739, float 0.000000e+00
  %2804 = fsub fast float -0.000000e+00, %2803
  %2805 = call float @dx.op.unary.f32(i32 6, float %2804)  ; FAbs(value)
  %2806 = fmul fast float %2803, %2659
  %2807 = fadd fast float %2806, %2672
  %2808 = fmul fast float %2805, %2807
  %2809 = fsub fast float %2734, %2808
  br label %2810

; <label>:2810                                    ; preds = %2800, %2799, %2789, %2788
  %2811 = phi float [ %2729, %2788 ], [ %2729, %2789 ], [ %2801, %2800 ], [ %2729, %2799 ]
  %2812 = phi float [ 0.000000e+00, %2788 ], [ %2793, %2789 ], [ %2805, %2800 ], [ 0.000000e+00, %2799 ]
  %2813 = phi float [ %2734, %2788 ], [ %2798, %2789 ], [ %2809, %2800 ], [ %2734, %2799 ]
  %2814 = phi float [ %2739, %2788 ], [ %2739, %2789 ], [ %2728, %2800 ], [ %2728, %2799 ]
  %2815 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 0
  store float -1.000000e+00, float* %2815, align 4, !tbaa !99, !noalias !103
  %2816 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 1
  store float -1.000000e+00, float* %2816, align 4, !tbaa !99, !noalias !103
  %2817 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 2
  store float -1.000000e+00, float* %2817, align 4, !tbaa !99, !noalias !103
  %2818 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 0
  store float -1.000000e+00, float* %2818, align 4, !tbaa !99, !noalias !103
  %2819 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 1
  store float -1.000000e+00, float* %2819, align 4, !tbaa !99, !noalias !103
  %2820 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 2
  store float -1.000000e+00, float* %2820, align 4, !tbaa !99, !noalias !103
  %2821 = icmp sgt i32 %2680, 0
  br i1 %2821, label %2822, label %2883

; <label>:2822                                    ; preds = %2810
  br label %2823

; <label>:2823                                    ; preds = %2872, %2822
  %2824 = phi i32 [ %2873, %2872 ], [ 0, %2822 ]
  %2825 = phi i32 [ %2874, %2872 ], [ 0, %2822 ]
  %2826 = add nuw i32 %2825, 171
  %2827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 %2826)  ; CBufferLoadLegacy(handle,regIndex)
  %2828 = extractvalue %dx.types.CBufRet.f32 %2827, 0
  %2829 = extractvalue %dx.types.CBufRet.f32 %2827, 1
  %2830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2831 = extractvalue %dx.types.CBufRet.f32 %2830, 0
  %2832 = extractvalue %dx.types.CBufRet.f32 %2830, 1
  %2833 = fsub fast float %2828, %2831
  %2834 = fsub fast float %2829, %2832
  %2835 = extractvalue %dx.types.CBufRet.f32 %2827, 2
  %2836 = fsub fast float -0.000000e+00, %2833
  %2837 = fsub fast float -0.000000e+00, %2834
  %2838 = call float @dx.op.dot2.f32(i32 54, float %2657, float %2658, float %2836, float %2837)  ; Dot2(ax,ay,bx,by)
  %2839 = fmul fast float %2838, 2.000000e+00
  %2840 = call float @dx.op.dot2.f32(i32 54, float %2836, float %2837, float %2836, float %2837)  ; Dot2(ax,ay,bx,by)
  %2841 = fmul fast float %2835, %2835
  %2842 = fsub fast float %2840, %2841
  %2843 = fmul fast float %2839, %2839
  %2844 = fmul fast float %2700, %2842
  %2845 = fsub fast float %2843, %2844
  %2846 = fcmp fast ogt float %2845, 0.000000e+00
  br i1 %2846, label %2847, label %2862, !dx.controlflow.hints !91

; <label>:2847                                    ; preds = %2823
  %2848 = fcmp fast ogt float %2839, 0.000000e+00
  %2849 = call float @dx.op.unary.f32(i32 24, float %2845)  ; Sqrt(value)
  %2850 = fsub fast float -0.000000e+00, %2849
  %2851 = select i1 %2848, float %2849, float %2850
  %2852 = fadd fast float %2851, %2839
  %2853 = fmul float %2852, -5.000000e-01
  %2854 = fdiv fast float %2853, %2693
  %2855 = call float @dx.op.binary.f32(i32 35, float %2854, float 0.000000e+00)  ; FMax(a,b)
  %2856 = call float @dx.op.binary.f32(i32 36, float %2728, float %2855)  ; FMin(a,b)
  %2857 = fdiv fast float %2842, %2853
  %2858 = call float @dx.op.binary.f32(i32 35, float %2857, float 0.000000e+00)  ; FMax(a,b)
  %2859 = call float @dx.op.binary.f32(i32 36, float %2728, float %2858)  ; FMin(a,b)
  %2860 = call float @dx.op.binary.f32(i32 36, float %2856, float %2859)  ; FMin(a,b)
  %2861 = call float @dx.op.binary.f32(i32 35, float %2856, float %2859)  ; FMax(a,b)
  br label %2862

; <label>:2862                                    ; preds = %2847, %2823
  %2863 = phi float [ %2861, %2847 ], [ -1.000000e+00, %2823 ]
  %2864 = phi float [ %2860, %2847 ], [ -1.000000e+00, %2823 ]
  %2865 = phi i1 [ true, %2847 ], [ false, %2823 ]
  br i1 %2865, label %2866, label %2872, !dx.controlflow.hints !114

; <label>:2866                                    ; preds = %2862
  %2867 = call float @dx.op.binary.f32(i32 35, float %2811, float %2864)  ; FMax(a,b)
  %2868 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %2825
  store float %2867, float* %2868, align 4, !tbaa !99, !noalias !103
  %2869 = call float @dx.op.binary.f32(i32 35, float %2811, float %2863)  ; FMax(a,b)
  %2870 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 %2825
  store float %2869, float* %2870, align 4, !tbaa !99, !noalias !103
  %2871 = add nsw i32 %2824, 1
  br label %2872

; <label>:2872                                    ; preds = %2866, %2862
  %2873 = phi i32 [ %2871, %2866 ], [ %2824, %2862 ]
  %2874 = add nuw nsw i32 %2825, 1
  %2875 = icmp eq i32 %2874, %2680
  br i1 %2875, label %2876, label %2823

; <label>:2876                                    ; preds = %2872
  %2877 = load float, float* %2817, align 4, !tbaa !99, !alias.scope !115, !noalias !118
  %2878 = load float, float* %2816, align 4, !tbaa !99, !alias.scope !121, !noalias !122
  %2879 = load float, float* %2815, align 4, !tbaa !99, !alias.scope !123, !noalias !124
  %2880 = load float, float* %2820, align 4, !tbaa !99, !alias.scope !125, !noalias !128
  %2881 = load float, float* %2819, align 4, !tbaa !99, !alias.scope !131, !noalias !132
  %2882 = load float, float* %2818, align 4, !tbaa !99, !alias.scope !133, !noalias !134
  br label %2883

; <label>:2883                                    ; preds = %2876, %2810
  %2884 = phi float [ -1.000000e+00, %2810 ], [ %2882, %2876 ]
  %2885 = phi float [ -1.000000e+00, %2810 ], [ %2881, %2876 ]
  %2886 = phi float [ -1.000000e+00, %2810 ], [ %2880, %2876 ]
  %2887 = phi float [ -1.000000e+00, %2810 ], [ %2879, %2876 ]
  %2888 = phi float [ -1.000000e+00, %2810 ], [ %2878, %2876 ]
  %2889 = phi float [ -1.000000e+00, %2810 ], [ %2877, %2876 ]
  %2890 = phi i32 [ 0, %2810 ], [ %2873, %2876 ]
  %2891 = call float @dx.op.binary.f32(i32 36, float %2888, float %2889)  ; FMin(a,b)
  %2892 = call float @dx.op.binary.f32(i32 36, float %2887, float %2891)  ; FMin(a,b)
  %2893 = call float @dx.op.binary.f32(i32 35, float %2887, float %2888)  ; FMax(a,b)
  %2894 = call float @dx.op.binary.f32(i32 36, float %2893, float %2889)  ; FMin(a,b)
  %2895 = call float @dx.op.binary.f32(i32 36, float %2887, float %2888)  ; FMin(a,b)
  %2896 = call float @dx.op.binary.f32(i32 35, float %2895, float %2894)  ; FMax(a,b)
  %2897 = call float @dx.op.binary.f32(i32 35, float %2888, float %2889)  ; FMax(a,b)
  %2898 = call float @dx.op.binary.f32(i32 35, float %2887, float %2897)  ; FMax(a,b)
  store float %2892, float* %2815, align 4, !tbaa !99, !alias.scope !123, !noalias !124
  store float %2896, float* %2816, align 4, !tbaa !99, !alias.scope !121, !noalias !122
  store float %2898, float* %2817, align 4, !tbaa !99, !alias.scope !115, !noalias !118
  %2899 = call float @dx.op.binary.f32(i32 36, float %2885, float %2886)  ; FMin(a,b)
  %2900 = call float @dx.op.binary.f32(i32 36, float %2884, float %2899)  ; FMin(a,b)
  %2901 = call float @dx.op.binary.f32(i32 35, float %2884, float %2885)  ; FMax(a,b)
  %2902 = call float @dx.op.binary.f32(i32 36, float %2901, float %2886)  ; FMin(a,b)
  %2903 = call float @dx.op.binary.f32(i32 36, float %2884, float %2885)  ; FMin(a,b)
  %2904 = call float @dx.op.binary.f32(i32 35, float %2903, float %2902)  ; FMax(a,b)
  %2905 = call float @dx.op.binary.f32(i32 35, float %2885, float %2886)  ; FMax(a,b)
  %2906 = call float @dx.op.binary.f32(i32 35, float %2884, float %2905)  ; FMax(a,b)
  store float %2900, float* %2818, align 4, !tbaa !99, !alias.scope !133, !noalias !134
  store float %2904, float* %2819, align 4, !tbaa !99, !alias.scope !131, !noalias !132
  store float %2906, float* %2820, align 4, !tbaa !99, !alias.scope !125, !noalias !128
  %2907 = sub nsw i32 3, %2890
  %2908 = icmp sgt i32 %2907, 2
  br i1 %2908, label %2909, label %2947, !dx.controlflow.hints !135

; <label>:2909                                    ; preds = %2883
  %2910 = icmp eq i32 %2678, 0
  %2911 = fsub fast float %2728, %2812
  %2912 = select i1 %2910, float %2911, float %2812
  %2913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2914 = extractvalue %dx.types.CBufRet.f32 %2913, 0
  %2915 = extractvalue %dx.types.CBufRet.f32 %2913, 1
  %2916 = extractvalue %dx.types.CBufRet.f32 %2913, 2
  %2917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2918 = extractvalue %dx.types.CBufRet.f32 %2917, 0
  %2919 = extractvalue %dx.types.CBufRet.f32 %2917, 1
  %2920 = extractvalue %dx.types.CBufRet.f32 %2917, 2
  %2921 = extractvalue %dx.types.CBufRet.f32 %2917, 3
  %2922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2923 = extractvalue %dx.types.CBufRet.f32 %2922, 3
  %2924 = call float @dx.op.binary.f32(i32 36, float %2813, float %2923)  ; FMin(a,b)
  %2925 = fmul fast float %2921, %2912
  %2926 = call float @dx.op.unary.f32(i32 7, float %2925)  ; Saturate(value)
  %2927 = fsub fast float %2918, %2914
  %2928 = fsub fast float %2919, %2915
  %2929 = fsub fast float %2920, %2916
  %2930 = fmul fast float %2926, %2927
  %2931 = fmul fast float %2926, %2928
  %2932 = fmul fast float %2926, %2929
  %2933 = fadd fast float %2930, %2914
  %2934 = fadd fast float %2931, %2915
  %2935 = fadd fast float %2932, %2916
  %2936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2937 = extractvalue %dx.types.CBufRet.f32 %2936, 0
  %2938 = extractvalue %dx.types.CBufRet.f32 %2936, 1
  %2939 = fadd fast float %2938, %2937
  %2940 = call float @dx.op.unary.f32(i32 7, float %2939)  ; Saturate(value)
  %2941 = extractvalue %dx.types.CBufRet.f32 %2936, 2
  %2942 = extractvalue %dx.types.CBufRet.f32 %2936, 3
  %2943 = fadd fast float %2942, %2941
  %2944 = call float @dx.op.unary.f32(i32 7, float %2943)  ; Saturate(value)
  %2945 = fmul fast float %2940, %2924
  %2946 = fmul fast float %2945, %2944
  br label %3029

; <label>:2947                                    ; preds = %2883
  %2948 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %2907
  %2949 = load float, float* %2948, align 4, !tbaa !99, !noalias !103
  %2950 = fcmp fast olt float %2949, %2814
  %2951 = icmp sgt i32 %2890, 0
  %2952 = and i1 %2951, %2950
  br i1 %2952, label %2953, label %2990

; <label>:2953                                    ; preds = %2947
  br label %2954

; <label>:2954                                    ; preds = %2983, %2953
  %2955 = phi float [ %2984, %2983 ], [ %2812, %2953 ]
  %2956 = phi float [ %2985, %2983 ], [ %2813, %2953 ]
  %2957 = phi float [ %2965, %2983 ], [ %2949, %2953 ]
  %2958 = phi i32 [ %2962, %2983 ], [ %2907, %2953 ]
  %2959 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 %2958
  %2960 = load float, float* %2959, align 4, !tbaa !99, !noalias !103
  %2961 = icmp slt i32 %2958, 2
  %2962 = add nsw i32 %2958, 1
  %2963 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %2962
  %2964 = load float, float* %2963, align 4, !tbaa !99, !noalias !103
  %2965 = select i1 %2961, float %2964, float %2728
  %2966 = call float @dx.op.binary.f32(i32 36, float %2965, float %2960)  ; FMin(a,b)
  %2967 = call float @dx.op.binary.f32(i32 36, float %2814, float %2966)  ; FMin(a,b)
  %2968 = icmp eq i32 %2678, 0
  %2969 = fadd fast float %2967, %2957
  %2970 = fmul fast float %2969, %2659
  %2971 = fadd fast float %2970, %2672
  br i1 %2968, label %2977, label %2972, !dx.controlflow.hints !136

; <label>:2972                                    ; preds = %2954
  %2973 = fsub fast float %2967, %2957
  %2974 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2973)  ; FMax(a,b)
  %2975 = fmul fast float %2974, %2971
  %2976 = fadd fast float %2975, %2956
  br label %2983

; <label>:2977                                    ; preds = %2954
  %2978 = fsub fast float %2957, %2967
  %2979 = call float @dx.op.unary.f32(i32 6, float %2978)  ; FAbs(value)
  %2980 = fadd fast float %2979, %2955
  %2981 = fmul fast float %2979, %2971
  %2982 = fsub fast float %2956, %2981
  br label %2983

; <label>:2983                                    ; preds = %2977, %2972
  %2984 = phi float [ %2974, %2972 ], [ %2980, %2977 ]
  %2985 = phi float [ %2976, %2972 ], [ %2982, %2977 ]
  %2986 = fcmp fast olt float %2965, %2814
  %2987 = icmp slt i32 %2962, 3
  %2988 = and i1 %2987, %2986
  br i1 %2988, label %2954, label %2989

; <label>:2989                                    ; preds = %2983
  br label %2990

; <label>:2990                                    ; preds = %2989, %2947
  %2991 = phi float [ %2812, %2947 ], [ %2984, %2989 ]
  %2992 = phi float [ %2813, %2947 ], [ %2985, %2989 ]
  %2993 = fsub fast float %2728, %2991
  %2994 = select i1 %2730, float %2991, float %2993
  %2995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2996 = extractvalue %dx.types.CBufRet.f32 %2995, 0
  %2997 = extractvalue %dx.types.CBufRet.f32 %2995, 1
  %2998 = extractvalue %dx.types.CBufRet.f32 %2995, 2
  %2999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3000 = extractvalue %dx.types.CBufRet.f32 %2999, 0
  %3001 = extractvalue %dx.types.CBufRet.f32 %2999, 1
  %3002 = extractvalue %dx.types.CBufRet.f32 %2999, 2
  %3003 = extractvalue %dx.types.CBufRet.f32 %2999, 3
  %3004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3005 = extractvalue %dx.types.CBufRet.f32 %3004, 3
  %3006 = call float @dx.op.binary.f32(i32 36, float %2992, float %3005)  ; FMin(a,b)
  %3007 = fmul fast float %3003, %2994
  %3008 = call float @dx.op.unary.f32(i32 7, float %3007)  ; Saturate(value)
  %3009 = fsub fast float %3000, %2996
  %3010 = fsub fast float %3001, %2997
  %3011 = fsub fast float %3002, %2998
  %3012 = fmul fast float %3008, %3009
  %3013 = fmul fast float %3008, %3010
  %3014 = fmul fast float %3008, %3011
  %3015 = fadd fast float %3012, %2996
  %3016 = fadd fast float %3013, %2997
  %3017 = fadd fast float %3014, %2998
  %3018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3019 = extractvalue %dx.types.CBufRet.f32 %3018, 0
  %3020 = extractvalue %dx.types.CBufRet.f32 %3018, 1
  %3021 = fadd fast float %3020, %3019
  %3022 = call float @dx.op.unary.f32(i32 7, float %3021)  ; Saturate(value)
  %3023 = extractvalue %dx.types.CBufRet.f32 %3018, 2
  %3024 = extractvalue %dx.types.CBufRet.f32 %3018, 3
  %3025 = fadd fast float %3024, %3023
  %3026 = call float @dx.op.unary.f32(i32 7, float %3025)  ; Saturate(value)
  %3027 = fmul fast float %3022, %3006
  %3028 = fmul fast float %3027, %3026
  br label %3029

; <label>:3029                                    ; preds = %2990, %2909, %2744, %2726, %2724
  %3030 = phi float [ %2753, %2744 ], [ %2912, %2909 ], [ %2994, %2990 ], [ 0.000000e+00, %2724 ], [ 0.000000e+00, %2726 ]
  %3031 = phi float [ %2787, %2744 ], [ %2946, %2909 ], [ %3028, %2990 ], [ 0.000000e+00, %2724 ], [ 0.000000e+00, %2726 ]
  %3032 = phi float [ %2774, %2744 ], [ %2933, %2909 ], [ %3015, %2990 ], [ 0.000000e+00, %2724 ], [ 0.000000e+00, %2726 ]
  %3033 = phi float [ %2775, %2744 ], [ %2934, %2909 ], [ %3016, %2990 ], [ 0.000000e+00, %2724 ], [ 0.000000e+00, %2726 ]
  %3034 = phi float [ %2776, %2744 ], [ %2935, %2909 ], [ %3017, %2990 ], [ 0.000000e+00, %2724 ], [ 0.000000e+00, %2726 ]
  %3035 = fmul fast float %2667, %3031
  %3036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3037 = extractvalue %dx.types.CBufRet.f32 %3036, 2
  %3038 = fsub fast float %2674, %3037
  %3039 = fcmp fast olt float %3035, -2.000000e+01
  %3040 = call float @dx.op.unary.f32(i32 21, float %3035)  ; Exp(value)
  %3041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3042 = extractvalue %dx.types.CBufRet.f32 %3041, 2
  %3043 = extractvalue %dx.types.CBufRet.f32 %3041, 3
  %3044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %3045 = extractvalue %dx.types.CBufRet.f32 %3044, 2
  %3046 = fmul fast float %3043, %3038
  %3047 = call float @dx.op.unary.f32(i32 7, float %3046)  ; Saturate(value)
  %3048 = fsub fast float 1.000000e+00, %3047
  %3049 = fmul fast float %2659, 5.000000e-01
  %3050 = fadd fast float %3049, 5.000000e-01
  %3051 = call float @dx.op.unary.f32(i32 7, float %3050)  ; Saturate(value)
  %3052 = fsub fast float 1.000000e+00, %3051
  %3053 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3048)  ; FMax(a,b)
  %3054 = fdiv fast float %3052, %3053
  %3055 = fsub fast float %3038, %2625
  %3056 = call float @dx.op.unary.f32(i32 6, float %3055)  ; FAbs(value)
  %3057 = fmul fast float %3056, %3042
  %3058 = call float @dx.op.unary.f32(i32 7, float %3054)  ; Saturate(value)
  %3059 = fsub fast float 1.000000e+00, %3057
  %3060 = fmul fast float %3059, %3058
  %3061 = fadd fast float %3060, %3057
  %3062 = fmul fast float %3045, %3038
  %3063 = call float @dx.op.unary.f32(i32 7, float %3062)  ; Saturate(value)
  %3064 = fsub fast float 1.000000e+00, %3061
  %3065 = fmul fast float %3064, %3063
  %3066 = fadd fast float %3065, %3061
  %3067 = call float @dx.op.unary.f32(i32 7, float %3066)  ; Saturate(value)
  %3068 = fadd fast float %3040, -1.000000e+00
  %3069 = select i1 %3039, float -1.000000e+00, float %3068
  %3070 = fmul fast float %3067, %3069
  %3071 = fadd fast float %3070, 1.000000e+00
  %3072 = fsub fast float -0.000000e+00, %3070
  %3073 = fmul fast float %3032, %3072
  %3074 = fmul fast float %3033, %3072
  %3075 = fmul fast float %3034, %3072
  br label %3076

; <label>:3076                                    ; preds = %3029, %2578
  %3077 = phi float [ %3030, %3029 ], [ 0.000000e+00, %2578 ]
  %3078 = phi float [ %3071, %3029 ], [ 1.000000e+00, %2578 ]
  %3079 = phi float [ %3073, %3029 ], [ 0.000000e+00, %2578 ]
  %3080 = phi float [ %3074, %3029 ], [ 0.000000e+00, %2578 ]
  %3081 = phi float [ %3075, %3029 ], [ 0.000000e+00, %2578 ]
  %3082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3083 = extractvalue %dx.types.CBufRet.f32 %3082, 1
  %3084 = fsub fast float 1.000000e+00, %3078
  %3085 = fmul fast float %3084, %2660
  %3086 = fmul fast float %3085, %3083
  %3087 = fsub fast float %2660, %3086
  br i1 %2653, label %3088, label %3117, !dx.controlflow.hints !137

; <label>:3088                                    ; preds = %3076
  %3089 = fmul fast float %2661, %2650
  %3090 = fadd fast float %3089, %2651
  %3091 = call float @dx.op.unary.f32(i32 7, float %3090)  ; Saturate(value)
  %3092 = fmul fast float %2632, %3087
  %3093 = fsub fast float -0.000000e+00, %3092
  %3094 = fmul fast float %2633, %3087
  %3095 = fsub fast float -0.000000e+00, %3094
  %3096 = call float @dx.op.unary.f32(i32 21, float %3093)  ; Exp(value)
  %3097 = call float @dx.op.unary.f32(i32 21, float %3095)  ; Exp(value)
  %3098 = call float @dx.op.binary.f32(i32 35, float %2640, float %3096)  ; FMax(a,b)
  %3099 = call float @dx.op.binary.f32(i32 35, float %2640, float %3097)  ; FMax(a,b)
  %3100 = fsub fast float %3099, %3098
  %3101 = fmul fast float %3100, %3091
  %3102 = fadd fast float %3101, %3098
  %3103 = call float @dx.op.unary.f32(i32 7, float %3102)  ; Saturate(value)
  %3104 = fsub fast float %2637, %2642
  %3105 = fsub fast float %2638, %2643
  %3106 = fsub fast float %2639, %2644
  %3107 = fmul fast float %3091, %3104
  %3108 = fmul fast float %3091, %3105
  %3109 = fmul fast float %3091, %3106
  %3110 = fadd fast float %3107, %2642
  %3111 = fadd fast float %3108, %2643
  %3112 = fadd fast float %3109, %2644
  %3113 = fsub fast float 1.000000e+00, %3103
  %3114 = fmul fast float %3113, %3110
  %3115 = fmul fast float %3113, %3111
  %3116 = fmul fast float %3113, %3112
  br label %3176

; <label>:3117                                    ; preds = %3076
  %3118 = fmul fast float %3087, %2649
  %3119 = call float @dx.op.unary.f32(i32 7, float %3118)  ; Saturate(value)
  %3120 = fsub fast float 2.000000e+00, %3119
  %3121 = fmul fast float %3119, 9.921875e-01
  %3122 = fmul fast float %3121, %3120
  %3123 = fadd fast float %3122, 3.906250e-03
  %3124 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %24, float %3123, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3125 = extractvalue %dx.types.ResRet.f32 %3124, 0
  %3126 = fsub fast float %3119, %3125
  %3127 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3126)  ; FMax(a,b)
  %3128 = fmul fast float %2635, %2625
  %3129 = call float @dx.op.unary.f32(i32 6, float %3128)  ; FAbs(value)
  %3130 = fcmp fast ogt float %3129, 0x3EB0C6F7A0000000
  br i1 %3130, label %3131, label %3137, !dx.controlflow.hints !138

; <label>:3131                                    ; preds = %3117
  %3132 = fmul fast float %3128, 0xBFF7154760000000
  %3133 = call float @dx.op.unary.f32(i32 21, float %3132)  ; Exp(value)
  %3134 = fsub fast float 1.000000e+00, %3133
  %3135 = fdiv fast float %3134, %3128
  %3136 = fmul fast float %3135, %2645
  br label %3137

; <label>:3137                                    ; preds = %3131, %3117
  %3138 = phi float [ %3136, %3131 ], [ %2645, %3117 ]
  %3139 = fadd fast float %3138, %2647
  %3140 = fmul fast float %3139, %3127
  %3141 = fmul fast float %2632, %3140
  %3142 = fsub fast float -0.000000e+00, %3141
  %3143 = fmul fast float %2633, %3140
  %3144 = fsub fast float -0.000000e+00, %3143
  %3145 = fmul fast float %2634, %3140
  %3146 = fsub fast float -0.000000e+00, %3145
  %3147 = call float @dx.op.unary.f32(i32 21, float %3142)  ; Exp(value)
  %3148 = call float @dx.op.unary.f32(i32 21, float %3144)  ; Exp(value)
  %3149 = call float @dx.op.unary.f32(i32 21, float %3146)  ; Exp(value)
  %3150 = fmul fast float %2661, %2661
  %3151 = fadd fast float %3150, 1.000000e+00
  %3152 = fmul fast float %3151, 0x3FAE8EC8A0000000
  %3153 = fmul fast float %3152, %2642
  %3154 = fmul fast float %3152, %2643
  %3155 = fmul fast float %3152, %2644
  %3156 = fmul fast float %2661, %2640
  %3157 = fsub fast float 1.000000e+00, %3156
  %3158 = fmul fast float %2640, %2640
  %3159 = fsub fast float 1.000000e+00, %3158
  %3160 = fmul fast float %3159, 0x3FB45F3060000000
  %3161 = fmul fast float %3157, %3157
  %3162 = fdiv fast float 1.000000e+00, %3161
  %3163 = fmul fast float %3160, %3162
  %3164 = fmul fast float %3163, %2637
  %3165 = fmul fast float %3163, %2638
  %3166 = fmul fast float %3163, %2639
  %3167 = fadd fast float %3164, %3153
  %3168 = fadd fast float %3165, %3154
  %3169 = fadd fast float %3166, %3155
  %3170 = fsub fast float 1.000000e+00, %3147
  %3171 = fsub fast float 1.000000e+00, %3148
  %3172 = fsub fast float 1.000000e+00, %3149
  %3173 = fmul fast float %3167, %3170
  %3174 = fmul fast float %3168, %3171
  %3175 = fmul fast float %3169, %3172
  br label %3176

; <label>:3176                                    ; preds = %3137, %3088
  %3177 = phi float [ %3114, %3088 ], [ %3173, %3137 ]
  %3178 = phi float [ %3115, %3088 ], [ %3174, %3137 ]
  %3179 = phi float [ %3116, %3088 ], [ %3175, %3137 ]
  %3180 = phi float [ %3103, %3088 ], [ %3147, %3137 ]
  %3181 = phi float [ %3103, %3088 ], [ %3148, %3137 ]
  %3182 = phi float [ %3103, %3088 ], [ %3149, %3137 ]
  br i1 %2669, label %3183, label %3381, !dx.controlflow.hints !139

; <label>:3183                                    ; preds = %3176
  %3184 = extractvalue %dx.types.CBufRet.f32 %3082, 0
  %3185 = fmul fast float %3184, %3084
  %3186 = fsub fast float %3079, %3177
  %3187 = fsub fast float %3080, %3178
  %3188 = fsub fast float %3081, %3179
  %3189 = fmul fast float %3185, %3186
  %3190 = fmul fast float %3185, %3187
  %3191 = fmul fast float %3185, %3188
  %3192 = fadd fast float %3189, %3177
  %3193 = fadd fast float %3190, %3178
  %3194 = fadd fast float %3191, %3179
  %3195 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3180)  ; FMax(a,b)
  %3196 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3181)  ; FMax(a,b)
  %3197 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3182)  ; FMax(a,b)
  %3198 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3078)  ; FMax(a,b)
  %3199 = call float @dx.op.binary.f32(i32 35, float %3077, float %3087)  ; FMax(a,b)
  %3200 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3199)  ; FMax(a,b)
  %3201 = fdiv fast float %3077, %3200
  %3202 = call float @dx.op.unary.f32(i32 7, float %3201)  ; Saturate(value)
  %3203 = fdiv fast float %3087, %3200
  %3204 = call float @dx.op.unary.f32(i32 7, float %3203)  ; Saturate(value)
  %3205 = fcmp fast une float %3198, 1.000000e+00
  br i1 %3205, label %3206, label %3219, !dx.controlflow.hints !140

; <label>:3206                                    ; preds = %3183
  %3207 = call float @dx.op.unary.f32(i32 23, float %3198)  ; Log(value)
  %3208 = fmul fast float %3207, 0x3FE62E4300000000
  %3209 = fmul fast float %3079, %3208
  %3210 = fsub fast float -0.000000e+00, %3209
  %3211 = fmul fast float %3080, %3208
  %3212 = fsub fast float -0.000000e+00, %3211
  %3213 = fmul fast float %3081, %3208
  %3214 = fsub fast float -0.000000e+00, %3213
  %3215 = fsub fast float 1.000000e+00, %3198
  %3216 = fdiv fast float %3210, %3215
  %3217 = fdiv fast float %3212, %3215
  %3218 = fdiv fast float %3214, %3215
  br label %3219

; <label>:3219                                    ; preds = %3206, %3183
  %3220 = phi float [ %3216, %3206 ], [ %3079, %3183 ]
  %3221 = phi float [ %3217, %3206 ], [ %3080, %3183 ]
  %3222 = phi float [ %3218, %3206 ], [ %3081, %3183 ]
  %3223 = phi float [ %3208, %3206 ], [ 0.000000e+00, %3183 ]
  %3224 = fcmp fast une float %3195, 1.000000e+00
  br i1 %3224, label %3225, label %3232, !dx.controlflow.hints !141

; <label>:3225                                    ; preds = %3219
  %3226 = call float @dx.op.unary.f32(i32 23, float %3195)  ; Log(value)
  %3227 = fmul fast float %3226, 0x3FE62E4300000000
  %3228 = fmul fast float %3192, %3227
  %3229 = fsub fast float -0.000000e+00, %3228
  %3230 = fsub fast float 1.000000e+00, %3195
  %3231 = fdiv fast float %3229, %3230
  br label %3232

; <label>:3232                                    ; preds = %3225, %3219
  %3233 = phi float [ %3231, %3225 ], [ %3192, %3219 ]
  %3234 = phi float [ %3227, %3225 ], [ 0.000000e+00, %3219 ]
  %3235 = fcmp fast une float %3196, 1.000000e+00
  br i1 %3235, label %3236, label %3243, !dx.controlflow.hints !141

; <label>:3236                                    ; preds = %3232
  %3237 = call float @dx.op.unary.f32(i32 23, float %3196)  ; Log(value)
  %3238 = fmul fast float %3237, 0x3FE62E4300000000
  %3239 = fmul fast float %3193, %3238
  %3240 = fsub fast float -0.000000e+00, %3239
  %3241 = fsub fast float 1.000000e+00, %3196
  %3242 = fdiv fast float %3240, %3241
  br label %3243

; <label>:3243                                    ; preds = %3236, %3232
  %3244 = phi float [ %3242, %3236 ], [ %3193, %3232 ]
  %3245 = phi float [ %3238, %3236 ], [ 0.000000e+00, %3232 ]
  %3246 = fcmp fast une float %3197, 1.000000e+00
  br i1 %3246, label %3247, label %3254, !dx.controlflow.hints !141

; <label>:3247                                    ; preds = %3243
  %3248 = call float @dx.op.unary.f32(i32 23, float %3197)  ; Log(value)
  %3249 = fmul fast float %3248, 0x3FE62E4300000000
  %3250 = fmul fast float %3194, %3249
  %3251 = fsub fast float -0.000000e+00, %3250
  %3252 = fsub fast float 1.000000e+00, %3197
  %3253 = fdiv fast float %3251, %3252
  br label %3254

; <label>:3254                                    ; preds = %3247, %3243
  %3255 = phi float [ %3253, %3247 ], [ %3194, %3243 ]
  %3256 = phi float [ %3249, %3247 ], [ 0.000000e+00, %3243 ]
  %3257 = fmul fast float %3220, %3204
  %3258 = fmul fast float %3221, %3204
  %3259 = fmul fast float %3222, %3204
  %3260 = fmul fast float %3223, %3204
  %3261 = fmul fast float %3233, %3202
  %3262 = fmul fast float %3244, %3202
  %3263 = fmul fast float %3255, %3202
  %3264 = fmul fast float %3234, %3202
  %3265 = fmul fast float %3245, %3202
  %3266 = fmul fast float %3256, %3202
  %3267 = fadd fast float %3261, %3257
  %3268 = fadd fast float %3262, %3258
  %3269 = fadd fast float %3263, %3259
  %3270 = fadd fast float %3264, %3260
  %3271 = fadd fast float %3265, %3260
  %3272 = fadd fast float %3266, %3260
  %3273 = fcmp fast une float %3270, 0.000000e+00
  br i1 %3273, label %3274, label %3281, !dx.controlflow.hints !142

; <label>:3274                                    ; preds = %3254
  %3275 = fmul fast float %3270, 0x3FF7154760000000
  %3276 = call float @dx.op.unary.f32(i32 21, float %3275)  ; Exp(value)
  %3277 = fsub fast float 1.000000e+00, %3276
  %3278 = fmul fast float %3267, %3277
  %3279 = fsub fast float -0.000000e+00, %3278
  %3280 = fdiv fast float %3279, %3270
  br label %3281

; <label>:3281                                    ; preds = %3274, %3254
  %3282 = phi float [ %3276, %3274 ], [ 1.000000e+00, %3254 ]
  %3283 = phi float [ %3280, %3274 ], [ %3267, %3254 ]
  %3284 = fcmp fast une float %3271, 0.000000e+00
  br i1 %3284, label %3285, label %3292, !dx.controlflow.hints !142

; <label>:3285                                    ; preds = %3281
  %3286 = fmul fast float %3271, 0x3FF7154760000000
  %3287 = call float @dx.op.unary.f32(i32 21, float %3286)  ; Exp(value)
  %3288 = fsub fast float 1.000000e+00, %3287
  %3289 = fmul fast float %3268, %3288
  %3290 = fsub fast float -0.000000e+00, %3289
  %3291 = fdiv fast float %3290, %3271
  br label %3292

; <label>:3292                                    ; preds = %3285, %3281
  %3293 = phi float [ %3287, %3285 ], [ 1.000000e+00, %3281 ]
  %3294 = phi float [ %3291, %3285 ], [ %3268, %3281 ]
  %3295 = fcmp fast une float %3272, 0.000000e+00
  br i1 %3295, label %3296, label %3303, !dx.controlflow.hints !142

; <label>:3296                                    ; preds = %3292
  %3297 = fmul fast float %3272, 0x3FF7154760000000
  %3298 = call float @dx.op.unary.f32(i32 21, float %3297)  ; Exp(value)
  %3299 = fsub fast float 1.000000e+00, %3298
  %3300 = fmul fast float %3269, %3299
  %3301 = fsub fast float -0.000000e+00, %3300
  %3302 = fdiv fast float %3301, %3272
  br label %3303

; <label>:3303                                    ; preds = %3296, %3292
  %3304 = phi float [ %3298, %3296 ], [ 1.000000e+00, %3292 ]
  %3305 = phi float [ %3302, %3296 ], [ %3269, %3292 ]
  %3306 = fcmp fast ogt float %3202, %3204
  br i1 %3306, label %3307, label %3327, !dx.controlflow.hints !143

; <label>:3307                                    ; preds = %3303
  %3308 = fsub fast float 1.000000e+00, %3204
  %3309 = fmul fast float %3220, %3308
  %3310 = fmul fast float %3221, %3308
  %3311 = fmul fast float %3222, %3308
  %3312 = fmul fast float %3223, %3308
  %3313 = fcmp fast une float %3312, 0.000000e+00
  br i1 %3313, label %3314, label %3365, !dx.controlflow.hints !144

; <label>:3314                                    ; preds = %3307
  %3315 = fmul fast float %3312, 0x3FF7154760000000
  %3316 = call float @dx.op.unary.f32(i32 21, float %3315)  ; Exp(value)
  %3317 = fsub fast float 1.000000e+00, %3316
  %3318 = fmul fast float %3309, %3317
  %3319 = fsub fast float -0.000000e+00, %3318
  %3320 = fmul fast float %3310, %3317
  %3321 = fsub fast float -0.000000e+00, %3320
  %3322 = fmul fast float %3311, %3317
  %3323 = fsub fast float -0.000000e+00, %3322
  %3324 = fdiv fast float %3319, %3312
  %3325 = fdiv fast float %3321, %3312
  %3326 = fdiv fast float %3323, %3312
  br label %3365

; <label>:3327                                    ; preds = %3303
  %3328 = fsub fast float 1.000000e+00, %3202
  %3329 = fmul fast float %3233, %3328
  %3330 = fmul fast float %3244, %3328
  %3331 = fmul fast float %3255, %3328
  %3332 = fmul fast float %3234, %3328
  %3333 = fmul fast float %3245, %3328
  %3334 = fmul fast float %3256, %3328
  %3335 = fcmp fast une float %3332, 0.000000e+00
  br i1 %3335, label %3336, label %3343, !dx.controlflow.hints !142

; <label>:3336                                    ; preds = %3327
  %3337 = fmul fast float %3332, 0x3FF7154760000000
  %3338 = call float @dx.op.unary.f32(i32 21, float %3337)  ; Exp(value)
  %3339 = fsub fast float 1.000000e+00, %3338
  %3340 = fmul fast float %3329, %3339
  %3341 = fsub fast float -0.000000e+00, %3340
  %3342 = fdiv fast float %3341, %3332
  br label %3343

; <label>:3343                                    ; preds = %3336, %3327
  %3344 = phi float [ %3342, %3336 ], [ %3329, %3327 ]
  %3345 = phi float [ %3338, %3336 ], [ 1.000000e+00, %3327 ]
  %3346 = fcmp fast une float %3333, 0.000000e+00
  br i1 %3346, label %3347, label %3354, !dx.controlflow.hints !142

; <label>:3347                                    ; preds = %3343
  %3348 = fmul fast float %3333, 0x3FF7154760000000
  %3349 = call float @dx.op.unary.f32(i32 21, float %3348)  ; Exp(value)
  %3350 = fsub fast float 1.000000e+00, %3349
  %3351 = fmul fast float %3330, %3350
  %3352 = fsub fast float -0.000000e+00, %3351
  %3353 = fdiv fast float %3352, %3333
  br label %3354

; <label>:3354                                    ; preds = %3347, %3343
  %3355 = phi float [ %3353, %3347 ], [ %3330, %3343 ]
  %3356 = phi float [ %3349, %3347 ], [ 1.000000e+00, %3343 ]
  %3357 = fcmp fast une float %3334, 0.000000e+00
  br i1 %3357, label %3358, label %3365, !dx.controlflow.hints !142

; <label>:3358                                    ; preds = %3354
  %3359 = fmul fast float %3334, 0x3FF7154760000000
  %3360 = call float @dx.op.unary.f32(i32 21, float %3359)  ; Exp(value)
  %3361 = fsub fast float 1.000000e+00, %3360
  %3362 = fmul fast float %3331, %3361
  %3363 = fsub fast float -0.000000e+00, %3362
  %3364 = fdiv fast float %3363, %3334
  br label %3365

; <label>:3365                                    ; preds = %3358, %3354, %3314, %3307
  %3366 = phi float [ %3364, %3358 ], [ %3326, %3314 ], [ %3311, %3307 ], [ %3331, %3354 ]
  %3367 = phi float [ %3355, %3358 ], [ %3325, %3314 ], [ %3310, %3307 ], [ %3355, %3354 ]
  %3368 = phi float [ %3344, %3358 ], [ %3324, %3314 ], [ %3309, %3307 ], [ %3344, %3354 ]
  %3369 = phi float [ %3360, %3358 ], [ %3316, %3314 ], [ 1.000000e+00, %3307 ], [ 1.000000e+00, %3354 ]
  %3370 = phi float [ %3356, %3358 ], [ %3316, %3314 ], [ 1.000000e+00, %3307 ], [ %3356, %3354 ]
  %3371 = phi float [ %3345, %3358 ], [ %3316, %3314 ], [ 1.000000e+00, %3307 ], [ %3345, %3354 ]
  %3372 = fmul fast float %3371, %3283
  %3373 = fmul fast float %3370, %3294
  %3374 = fmul fast float %3369, %3305
  %3375 = fadd fast float %3372, %3368
  %3376 = fadd fast float %3373, %3367
  %3377 = fadd fast float %3374, %3366
  %3378 = fmul fast float %3371, %3282
  %3379 = fmul fast float %3370, %3293
  %3380 = fmul fast float %3369, %3304
  br label %3381

; <label>:3381                                    ; preds = %3365, %3176
  %3382 = phi float [ %3182, %3176 ], [ %3380, %3365 ]
  %3383 = phi float [ %3181, %3176 ], [ %3379, %3365 ]
  %3384 = phi float [ %3180, %3176 ], [ %3378, %3365 ]
  %3385 = phi float [ %3179, %3176 ], [ %3377, %3365 ]
  %3386 = phi float [ %3178, %3176 ], [ %3376, %3365 ]
  %3387 = phi float [ %3177, %3176 ], [ %3375, %3365 ]
  %3388 = fmul fast float %3384, %2525
  %3389 = fmul fast float %3383, %2526
  %3390 = fmul fast float %3382, %2527
  %3391 = fsub fast float 1.000000e+00, %2588
  %3392 = fmul fast float %3387, %3391
  %3393 = fmul fast float %3386, %3391
  %3394 = fmul fast float %3385, %3391
  %3395 = fadd fast float %3392, %3388
  %3396 = fadd fast float %3393, %3389
  %3397 = fadd fast float %3394, %3390
  %3398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %3399 = extractvalue %dx.types.CBufRet.f32 %3398, 2
  %3400 = fmul fast float %3399, %2598
  %3401 = call float @dx.op.unary.f32(i32 7, float %3400)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %27, i32 %28, i32 undef, float %2588, float %2588, float %2588, float %2588, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %3402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3403 = extractvalue %dx.types.CBufRet.f32 %3402, 0
  %3404 = fmul fast float %3403, %3395
  %3405 = fmul fast float %3403, %3396
  %3406 = fmul fast float %3403, %3397
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %27, i32 %28, i32 undef, float %3404, float %3405, float %3406, float %3404, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %27, i32 %28, i32 undef, float %3401, float %3401, float %3401, float %3401, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!38 = !{void ()* @cs_fog_raymarching_air_clouds_heightmap, !"cs_fog_raymarching_air_clouds_heightmap", null, !4, !39}
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
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
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
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 2}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 2}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 2}
!99 = !{!100, !100, i64 0}
!100 = !{!"float", !101, i64 0}
!101 = !{!"omnipotent char", !102, i64 0}
!102 = !{!"Simple C/C++ TBAA"}
!103 = !{!104, !106, !108, !109, !111, !112, !113}
!104 = distinct !{!104, !105, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!105 = distinct !{!105, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!106 = distinct !{!106, !107, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!107 = distinct !{!107, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!108 = distinct !{!108, !107, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!109 = distinct !{!109, !110, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!110 = distinct !{!110, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!111 = distinct !{!111, !110, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!112 = distinct !{!112, !110, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!113 = distinct !{!113, !110, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 2}
!115 = !{!116}
!116 = distinct !{!116, !117, !"\01?sort@@YAXAIAM00@Z: %c"}
!117 = distinct !{!117, !"\01?sort@@YAXAIAM00@Z"}
!118 = !{!119, !120, !104, !106, !108, !109, !111, !112, !113}
!119 = distinct !{!119, !117, !"\01?sort@@YAXAIAM00@Z: %a"}
!120 = distinct !{!120, !117, !"\01?sort@@YAXAIAM00@Z: %b"}
!121 = !{!120}
!122 = !{!119, !116, !104, !106, !108, !109, !111, !112, !113}
!123 = !{!119}
!124 = !{!120, !116, !104, !106, !108, !109, !111, !112, !113}
!125 = !{!126}
!126 = distinct !{!126, !127, !"\01?sort@@YAXAIAM00@Z: %c"}
!127 = distinct !{!127, !"\01?sort@@YAXAIAM00@Z"}
!128 = !{!129, !130, !104, !106, !108, !109, !111, !112, !113}
!129 = distinct !{!129, !127, !"\01?sort@@YAXAIAM00@Z: %a"}
!130 = distinct !{!130, !127, !"\01?sort@@YAXAIAM00@Z: %b"}
!131 = !{!130}
!132 = !{!129, !126, !104, !106, !108, !109, !111, !112, !113}
!133 = !{!129}
!134 = !{!130, !126, !104, !106, !108, !109, !111, !112, !113}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 2}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 2}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 1}
!138 = distinct !{!138, !"dx.controlflow.hints", i32 2}
!139 = distinct !{!139, !"dx.controlflow.hints", i32 1}
!140 = distinct !{!140, !"dx.controlflow.hints", i32 1}
!141 = distinct !{!141, !"dx.controlflow.hints", i32 1}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 1}
!143 = distinct !{!143, !"dx.controlflow.hints", i32 2}
!144 = distinct !{!144, !"dx.controlflow.hints", i32 1}

