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
; shader hash: 743d2da10e9711b8da6c2a4a6dd1cc06
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

define void @cs_fog_raymarching_clouds_heightmap_brfog() {
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
  %209 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %210 = extractvalue %dx.types.CBufRet.i32 %209, 3
  %211 = icmp eq i32 %210, 0
  %212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.f32 %212, 2
  %214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %215 = extractvalue %dx.types.CBufRet.f32 %214, 2
  %216 = fsub fast float %213, %76
  %217 = fadd fast float %216, %215
  br i1 %211, label %229, label %218, !dx.controlflow.hints !45

; <label>:218                                     ; preds = %205
  %219 = fsub fast float -0.000000e+00, %74
  %220 = fsub fast float -0.000000e+00, %75
  %221 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %219, float %220, float %217)  ; Dot3(ax,ay,az,bx,by,bz)
  %222 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %223 = fdiv fast float 1.000000e+00, %222
  %224 = fmul fast float %223, %221
  %225 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %219, float %220, float %216)  ; Dot3(ax,ay,az,bx,by,bz)
  %226 = fmul fast float %223, %225
  %227 = call float @dx.op.binary.f32(i32 36, float %224, float %226)  ; FMin(a,b)
  %228 = call float @dx.op.binary.f32(i32 35, float %224, float %226)  ; FMax(a,b)
  br label %262

; <label>:229                                     ; preds = %205
  %230 = fdiv fast float 1.000000e+00, %117
  %231 = fdiv fast float 1.000000e+00, %118
  %232 = fdiv fast float 1.000000e+00, %119
  %233 = extractvalue %dx.types.CBufRet.f32 %212, 0
  %234 = extractvalue %dx.types.CBufRet.f32 %212, 1
  %235 = extractvalue %dx.types.CBufRet.f32 %214, 0
  %236 = extractvalue %dx.types.CBufRet.f32 %214, 1
  %237 = fsub fast float %233, %74
  %238 = fmul fast float %237, %230
  %239 = fadd fast float %237, %235
  %240 = fmul fast float %239, %230
  %241 = call float @dx.op.binary.f32(i32 36, float %238, float %240)  ; FMin(a,b)
  %242 = call float @dx.op.binary.f32(i32 35, float %238, float %240)  ; FMax(a,b)
  %243 = fsub fast float %234, %75
  %244 = fmul fast float %243, %231
  %245 = fadd fast float %243, %236
  %246 = fmul fast float %245, %231
  %247 = call float @dx.op.binary.f32(i32 36, float %244, float %246)  ; FMin(a,b)
  %248 = call float @dx.op.binary.f32(i32 35, float %241, float %247)  ; FMax(a,b)
  %249 = call float @dx.op.binary.f32(i32 35, float %244, float %246)  ; FMax(a,b)
  %250 = call float @dx.op.binary.f32(i32 36, float %242, float %249)  ; FMin(a,b)
  %251 = fmul fast float %216, %232
  %252 = fmul fast float %217, %232
  %253 = call float @dx.op.binary.f32(i32 36, float %251, float %252)  ; FMin(a,b)
  %254 = call float @dx.op.binary.f32(i32 35, float %248, float %253)  ; FMax(a,b)
  %255 = call float @dx.op.binary.f32(i32 35, float %251, float %252)  ; FMax(a,b)
  %256 = call float @dx.op.binary.f32(i32 36, float %250, float %255)  ; FMin(a,b)
  %257 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %254)  ; FMax(a,b)
  %258 = fcmp fast ult float %256, %257
  br i1 %258, label %262, label %259, !dx.controlflow.hints !46

; <label>:259                                     ; preds = %229
  %260 = call float @dx.op.binary.f32(i32 36, float %254, float %256)  ; FMin(a,b)
  %261 = call float @dx.op.binary.f32(i32 35, float %254, float %256)  ; FMax(a,b)
  br label %262

; <label>:262                                     ; preds = %259, %229, %218
  %263 = phi float [ %227, %218 ], [ %260, %259 ], [ 0.000000e+00, %229 ]
  %264 = phi float [ %228, %218 ], [ %261, %259 ], [ 0.000000e+00, %229 ]
  %265 = fcmp fast oeq float %264, 0.000000e+00
  br i1 %265, label %269, label %266, !dx.controlflow.hints !47

; <label>:266                                     ; preds = %262
  %267 = call float @dx.op.binary.f32(i32 36, float %208, float %263)  ; FMin(a,b)
  %268 = call float @dx.op.binary.f32(i32 35, float %207, float %264)  ; FMax(a,b)
  br label %269

; <label>:269                                     ; preds = %266, %262
  %270 = phi i32 [ 1, %266 ], [ 0, %262 ]
  %271 = phi float [ %268, %266 ], [ %207, %262 ]
  %272 = phi float [ %267, %266 ], [ %208, %262 ]
  %273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %274 = extractvalue %dx.types.CBufRet.f32 %273, 2
  %275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %276 = extractvalue %dx.types.CBufRet.f32 %275, 3
  %277 = fsub fast float -0.000000e+00, %74
  %278 = fsub fast float -0.000000e+00, %75
  %279 = fsub fast float %274, %76
  %280 = fadd fast float %279, %276
  %281 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %277, float %278, float %280)  ; Dot3(ax,ay,az,bx,by,bz)
  %282 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %283 = fdiv fast float 1.000000e+00, %282
  %284 = fmul fast float %283, %281
  %285 = fcmp fast olt float %284, 0.000000e+00
  %286 = fcmp fast ogt float %119, 0.000000e+00
  %287 = and i1 %286, %285
  br i1 %287, label %292, label %288, !dx.controlflow.hints !48

; <label>:288                                     ; preds = %269
  %289 = fcmp fast olt float %119, 0.000000e+00
  br i1 %289, label %290, label %292, !dx.controlflow.hints !49

; <label>:290                                     ; preds = %288
  %291 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %284)  ; FMax(a,b)
  br label %292

; <label>:292                                     ; preds = %290, %288, %269
  %293 = phi float [ 0.000000e+00, %269 ], [ %291, %290 ], [ 0.000000e+00, %288 ]
  %294 = phi float [ 0.000000e+00, %269 ], [ 0x47EFFFFFE0000000, %290 ], [ %284, %288 ]
  %295 = fcmp fast oeq float %294, 0.000000e+00
  br i1 %295, label %299, label %296, !dx.controlflow.hints !50

; <label>:296                                     ; preds = %292
  %297 = call float @dx.op.binary.f32(i32 36, float %272, float %293)  ; FMin(a,b)
  %298 = call float @dx.op.binary.f32(i32 35, float %271, float %294)  ; FMax(a,b)
  br label %299

; <label>:299                                     ; preds = %296, %292
  %300 = phi i32 [ 1, %296 ], [ 0, %292 ]
  %301 = phi float [ %298, %296 ], [ %271, %292 ]
  %302 = phi float [ %297, %296 ], [ %272, %292 ]
  %303 = call float @dx.op.binary.f32(i32 36, float %138, float %301)  ; FMin(a,b)
  %304 = call float @dx.op.binary.f32(i32 35, float %115, float %302)  ; FMax(a,b)
  %305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %306 = extractvalue %dx.types.CBufRet.f32 %305, 0
  %307 = fmul fast float %63, 2.000000e+00
  %308 = fadd fast float %307, -1.000000e+00
  %309 = fmul fast float %306, %308
  %310 = fadd fast float %309, %304
  %311 = fcmp fast olt float %310, %303
  %312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %313 = extractvalue %dx.types.CBufRet.f32 %312, 2
  %314 = fcmp fast olt float %313, 1.000000e+00
  %315 = and i1 %311, %314
  br i1 %315, label %316, label %2833

; <label>:316                                     ; preds = %299
  %317 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %318 = extractvalue %dx.types.CBufRet.i32 %317, 1
  %319 = add i32 %318, -1
  %320 = fmul fast float %310, %119
  %321 = fadd fast float %320, %76
  %322 = fmul fast float %310, %118
  %323 = fadd fast float %322, %75
  %324 = fmul fast float %310, %117
  %325 = fadd fast float %324, %74
  br label %326

; <label>:326                                     ; preds = %2807, %316
  %327 = phi i32 [ %2809, %2807 ], [ undef, %316 ]
  %328 = phi float [ %2810, %2807 ], [ undef, %316 ]
  %329 = phi i32 [ %759, %2807 ], [ undef, %316 ]
  %330 = phi float [ %760, %2807 ], [ undef, %316 ]
  %331 = phi float [ %2811, %2807 ], [ 0.000000e+00, %316 ]
  %332 = phi float [ %2812, %2807 ], [ 1.000000e+00, %316 ]
  %333 = phi float [ %2813, %2807 ], [ 0.000000e+00, %316 ]
  %334 = phi float [ %2814, %2807 ], [ 0.000000e+00, %316 ]
  %335 = phi float [ %2815, %2807 ], [ 0.000000e+00, %316 ]
  %336 = phi float [ %2825, %2807 ], [ %325, %316 ]
  %337 = phi float [ %2826, %2807 ], [ %323, %316 ]
  %338 = phi float [ %2827, %2807 ], [ %321, %316 ]
  %339 = phi float [ %2808, %2807 ], [ %310, %316 ]
  %340 = phi i32 [ %523, %2807 ], [ %319, %316 ]
  %341 = phi float [ %2816, %2807 ], [ 0.000000e+00, %316 ]
  %342 = phi float [ %2817, %2807 ], [ 0.000000e+00, %316 ]
  %343 = phi float [ %2818, %2807 ], [ 0.000000e+00, %316 ]
  %344 = phi float [ %2819, %2807 ], [ 0.000000e+00, %316 ]
  %345 = phi float [ %2820, %2807 ], [ 0.000000e+00, %316 ]
  %346 = phi i32 [ %2821, %2807 ], [ 0, %316 ]
  %347 = fsub fast float -0.000000e+00, %337
  %348 = fsub fast float -0.000000e+00, %336
  %349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %350 = extractvalue %dx.types.CBufRet.f32 %349, 0
  %351 = icmp eq i32 %206, 0
  br i1 %351, label %520, label %352, !dx.controlflow.hints !51

; <label>:352                                     ; preds = %326
  %353 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %354 = extractvalue %dx.types.CBufRet.i32 %353, 1
  %355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %356 = extractvalue %dx.types.CBufRet.f32 %355, 1
  %357 = fcmp fast ogt float %356, %339
  br i1 %357, label %358, label %360, !dx.controlflow.hints !52

; <label>:358                                     ; preds = %352
  %359 = fsub fast float %356, %339
  br label %510

; <label>:360                                     ; preds = %352
  %361 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %362 = extractvalue %dx.types.CBufRet.i32 %361, 3
  %363 = icmp eq i32 %362, 0
  %364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %365 = extractvalue %dx.types.CBufRet.f32 %364, 2
  %366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %367 = extractvalue %dx.types.CBufRet.f32 %366, 2
  %368 = fsub fast float %365, %338
  %369 = fadd fast float %368, %367
  %370 = fsub fast float 0xC7EFFFFFE0000000, %338
  br i1 %363, label %378, label %371, !dx.controlflow.hints !42

; <label>:371                                     ; preds = %360
  %372 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %348, float %347, float %369)  ; Dot3(ax,ay,az,bx,by,bz)
  %373 = fmul fast float %283, %372
  %374 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %348, float %347, float %370)  ; Dot3(ax,ay,az,bx,by,bz)
  %375 = fmul fast float %283, %374
  %376 = call float @dx.op.binary.f32(i32 36, float %373, float %375)  ; FMin(a,b)
  %377 = call float @dx.op.binary.f32(i32 35, float %373, float %375)  ; FMax(a,b)
  br label %411

; <label>:378                                     ; preds = %360
  %379 = extractvalue %dx.types.CBufRet.f32 %364, 0
  %380 = extractvalue %dx.types.CBufRet.f32 %364, 1
  %381 = extractvalue %dx.types.CBufRet.f32 %366, 0
  %382 = extractvalue %dx.types.CBufRet.f32 %366, 1
  %383 = fdiv fast float 1.000000e+00, %117
  %384 = fdiv fast float 1.000000e+00, %118
  %385 = fdiv fast float 1.000000e+00, %119
  %386 = fsub fast float %379, %336
  %387 = fmul fast float %383, %386
  %388 = fadd fast float %386, %381
  %389 = fmul fast float %388, %383
  %390 = call float @dx.op.binary.f32(i32 36, float %387, float %389)  ; FMin(a,b)
  %391 = call float @dx.op.binary.f32(i32 35, float %387, float %389)  ; FMax(a,b)
  %392 = fsub fast float %380, %337
  %393 = fmul fast float %384, %392
  %394 = fadd fast float %392, %382
  %395 = fmul fast float %394, %384
  %396 = call float @dx.op.binary.f32(i32 36, float %393, float %395)  ; FMin(a,b)
  %397 = call float @dx.op.binary.f32(i32 35, float %390, float %396)  ; FMax(a,b)
  %398 = call float @dx.op.binary.f32(i32 35, float %393, float %395)  ; FMax(a,b)
  %399 = call float @dx.op.binary.f32(i32 36, float %391, float %398)  ; FMin(a,b)
  %400 = fmul fast float %385, %370
  %401 = fmul fast float %385, %369
  %402 = call float @dx.op.binary.f32(i32 36, float %400, float %401)  ; FMin(a,b)
  %403 = call float @dx.op.binary.f32(i32 35, float %397, float %402)  ; FMax(a,b)
  %404 = call float @dx.op.binary.f32(i32 35, float %400, float %401)  ; FMax(a,b)
  %405 = call float @dx.op.binary.f32(i32 36, float %399, float %404)  ; FMin(a,b)
  %406 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %403)  ; FMax(a,b)
  %407 = fcmp fast ult float %405, %406
  br i1 %407, label %411, label %408, !dx.controlflow.hints !43

; <label>:408                                     ; preds = %378
  %409 = call float @dx.op.binary.f32(i32 36, float %403, float %405)  ; FMin(a,b)
  %410 = call float @dx.op.binary.f32(i32 35, float %403, float %405)  ; FMax(a,b)
  br label %411

; <label>:411                                     ; preds = %408, %378, %371
  %412 = phi float [ %376, %371 ], [ %409, %408 ], [ 0.000000e+00, %378 ]
  %413 = phi float [ %377, %371 ], [ %410, %408 ], [ 0.000000e+00, %378 ]
  %414 = fcmp fast ogt float %412, 0.000000e+00
  br i1 %414, label %510, label %415, !dx.controlflow.hints !53

; <label>:415                                     ; preds = %411
  %416 = fcmp fast ugt float %413, 0.000000e+00
  br i1 %416, label %417, label %510, !dx.controlflow.hints !54

; <label>:417                                     ; preds = %415
  %418 = icmp sgt i32 %340, 0
  br i1 %418, label %419, label %504

; <label>:419                                     ; preds = %417
  br label %420

; <label>:420                                     ; preds = %500, %419
  %421 = phi i32 [ %501, %500 ], [ %340, %419 ]
  %422 = sitofp i32 %421 to float
  %423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %424 = extractvalue %dx.types.CBufRet.f32 %423, 0
  %425 = extractvalue %dx.types.CBufRet.f32 %423, 1
  %426 = fsub fast float %336, %424
  %427 = fsub fast float %337, %425
  %428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %429 = extractvalue %dx.types.CBufRet.f32 %428, 0
  %430 = extractvalue %dx.types.CBufRet.f32 %428, 1
  %431 = fmul fast float %426, %429
  %432 = fmul fast float %427, %430
  %433 = fsub fast float 1.000000e+00, %432
  %434 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %435 = extractvalue %dx.types.CBufRet.i32 %434, 3
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %443, label %437, !dx.controlflow.hints !55

; <label>:437                                     ; preds = %420
  %438 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %24, float %431, float %433, float undef, float undef, i32 0, i32 0, i32 undef, float %422)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %439 = extractvalue %dx.types.ResRet.f32 %438, 0
  %440 = extractvalue %dx.types.ResRet.f32 %438, 1
  %441 = extractvalue %dx.types.ResRet.f32 %438, 2
  %442 = extractvalue %dx.types.ResRet.f32 %438, 3
  br label %449

; <label>:443                                     ; preds = %420
  %444 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %25, float %431, float %433, float undef, float undef, i32 0, i32 0, i32 undef, float %422)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %445 = extractvalue %dx.types.ResRet.f32 %444, 0
  %446 = extractvalue %dx.types.ResRet.f32 %444, 1
  %447 = extractvalue %dx.types.ResRet.f32 %444, 2
  %448 = extractvalue %dx.types.ResRet.f32 %444, 3
  br label %449

; <label>:449                                     ; preds = %443, %437
  %450 = phi float [ %439, %437 ], [ %445, %443 ]
  %451 = phi float [ %440, %437 ], [ %446, %443 ]
  %452 = phi float [ %441, %437 ], [ %447, %443 ]
  %453 = phi float [ %442, %437 ], [ %448, %443 ]
  %454 = extractvalue %dx.types.CBufRet.f32 %428, 3
  %455 = fmul fast float %454, %450
  %456 = extractvalue %dx.types.CBufRet.f32 %423, 2
  %457 = fadd fast float %455, %456
  %458 = fmul fast float %454, %451
  %459 = fadd fast float %458, %456
  %460 = fmul fast float %454, %452
  %461 = fadd fast float %460, %456
  %462 = and i32 %421, 31
  %463 = shl i32 1, %462
  %464 = uitofp i32 %463 to float
  %465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %466 = extractvalue %dx.types.CBufRet.f32 %465, 3
  %467 = fdiv fast float 1.000000e+00, %466
  %468 = fmul fast float %467, %464
  %469 = fmul fast float %468, %119
  %470 = fadd fast float %469, %338
  %471 = fcmp fast oeq float %453, 0.000000e+00
  %472 = fcmp fast ogt float %338, %459
  %473 = fcmp fast ogt float %470, %459
  %474 = and i1 %472, %473
  %475 = or i1 %471, %474
  br i1 %475, label %476, label %480, !dx.controlflow.hints !56

; <label>:476                                     ; preds = %449
  %477 = add nsw i32 %421, 1
  %478 = add nsw i32 %354, -1
  %479 = call i32 @dx.op.binary.i32(i32 38, i32 %477, i32 %478)  ; IMin(a,b)
  br label %510

; <label>:480                                     ; preds = %449
  %481 = fcmp fast olt float %338, %461
  %482 = fcmp fast olt float %470, %461
  %483 = and i1 %481, %482
  br i1 %483, label %484, label %488, !dx.controlflow.hints !57

; <label>:484                                     ; preds = %480
  %485 = add nsw i32 %421, 1
  %486 = add nsw i32 %354, -1
  %487 = call i32 @dx.op.binary.i32(i32 38, i32 %485, i32 %486)  ; IMin(a,b)
  br label %510

; <label>:488                                     ; preds = %480
  %489 = fcmp fast olt float %338, %457
  %490 = fcmp fast olt float %470, %457
  %491 = and i1 %489, %490
  br i1 %491, label %492, label %500, !dx.controlflow.hints !58

; <label>:492                                     ; preds = %488
  %493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %494 = extractvalue %dx.types.CBufRet.f32 %493, 3
  %495 = extractvalue %dx.types.CBufRet.f32 %428, 2
  %496 = fcmp fast une float %494, %495
  br i1 %496, label %497, label %504, !dx.controlflow.hints !59

; <label>:497                                     ; preds = %492
  %498 = fsub fast float %338, %461
  %499 = call float @dx.op.binary.f32(i32 36, float %468, float %498)  ; FMin(a,b)
  br label %504

; <label>:500                                     ; preds = %488
  %501 = add nsw i32 %421, -1
  %502 = icmp sgt i32 %421, 1
  br i1 %502, label %420, label %503

; <label>:503                                     ; preds = %500
  br label %504

; <label>:504                                     ; preds = %503, %497, %492, %417
  %505 = phi float [ %499, %497 ], [ %468, %492 ], [ 0.000000e+00, %417 ], [ 0.000000e+00, %503 ]
  %506 = phi i32 [ %421, %497 ], [ %421, %492 ], [ %340, %417 ], [ %501, %503 ]
  %507 = add nsw i32 %506, 1
  %508 = add nsw i32 %354, -1
  %509 = call i32 @dx.op.binary.i32(i32 38, i32 %507, i32 %508)  ; IMin(a,b)
  br label %510

; <label>:510                                     ; preds = %504, %484, %476, %415, %411, %358
  %511 = phi float [ %359, %358 ], [ %468, %476 ], [ %468, %484 ], [ %505, %504 ], [ 0x47EFFFFFE0000000, %415 ], [ %412, %411 ]
  %512 = phi i32 [ %206, %358 ], [ %206, %476 ], [ %206, %484 ], [ %206, %504 ], [ 0, %415 ], [ %206, %411 ]
  %513 = phi i32 [ %340, %358 ], [ %479, %476 ], [ %487, %484 ], [ %509, %504 ], [ %340, %415 ], [ %340, %411 ]
  %514 = icmp ne i32 %512, 0
  %515 = zext i1 %514 to i32
  %516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %517 = extractvalue %dx.types.CBufRet.f32 %516, 2
  %518 = call float @dx.op.binary.f32(i32 35, float %511, float %517)  ; FMax(a,b)
  %519 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %518)  ; FMin(a,b)
  br label %520

; <label>:520                                     ; preds = %510, %326
  %521 = phi i32 [ %515, %510 ], [ 0, %326 ]
  %522 = phi float [ %519, %510 ], [ 0x47EFFFFFE0000000, %326 ]
  %523 = phi i32 [ %513, %510 ], [ %340, %326 ]
  %524 = icmp eq i32 %270, 0
  br i1 %524, label %581, label %525, !dx.controlflow.hints !60

; <label>:525                                     ; preds = %520
  %526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %527 = extractvalue %dx.types.CBufRet.f32 %526, 0
  %528 = extractvalue %dx.types.CBufRet.f32 %526, 1
  %529 = extractvalue %dx.types.CBufRet.f32 %526, 2
  %530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %531 = extractvalue %dx.types.CBufRet.f32 %530, 0
  %532 = extractvalue %dx.types.CBufRet.f32 %530, 1
  %533 = extractvalue %dx.types.CBufRet.f32 %530, 2
  %534 = fsub fast float %336, %531
  %535 = fsub fast float %337, %532
  %536 = fsub fast float %338, %533
  %537 = fmul fast float %534, %527
  %538 = fmul fast float %535, %528
  %539 = fmul fast float %536, %529
  %540 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %541 = extractvalue %dx.types.CBufRet.i32 %540, 3
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %546, label %543, !dx.controlflow.hints !61

; <label>:543                                     ; preds = %525
  %544 = call float @dx.op.unary.f32(i32 22, float %537)  ; Frc(value)
  %545 = call float @dx.op.unary.f32(i32 22, float %538)  ; Frc(value)
  br label %546

; <label>:546                                     ; preds = %543, %525
  %547 = phi float [ %544, %543 ], [ %537, %525 ]
  %548 = phi float [ %545, %543 ], [ %538, %525 ]
  %549 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %23, float %547, float %548, float %539, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %550 = extractvalue %dx.types.ResRet.f32 %549, 0
  %551 = fmul fast float %550, 2.000000e+00
  %552 = fadd fast float %551, -1.000000e+00
  %553 = extractvalue %dx.types.CBufRet.f32 %526, 3
  %554 = fmul fast float %552, %553
  %555 = fcmp fast olt float %554, 0.000000e+00
  %556 = fcmp fast oge float %539, 0.000000e+00
  %557 = fcmp fast ole float %539, 1.000000e+00
  br i1 %542, label %560, label %558, !dx.controlflow.hints !62

; <label>:558                                     ; preds = %546
  %559 = and i1 %556, %557
  br label %570

; <label>:560                                     ; preds = %546
  %561 = fcmp fast oge float %537, 0.000000e+00
  %562 = fcmp fast oge float %538, 0.000000e+00
  %563 = and i1 %561, %562
  %564 = and i1 %556, %563
  %565 = fcmp fast ole float %537, 1.000000e+00
  %566 = fcmp fast ole float %538, 1.000000e+00
  %567 = and i1 %565, %566
  %568 = and i1 %557, %567
  %569 = and i1 %564, %568
  br label %570

; <label>:570                                     ; preds = %560, %558
  %571 = phi i1 [ %559, %558 ], [ %569, %560 ]
  %572 = and i1 %555, %571
  %573 = call float @dx.op.unary.f32(i32 6, float %554)  ; FAbs(value)
  %574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %575 = extractvalue %dx.types.CBufRet.f32 %574, 1
  %576 = extractvalue %dx.types.CBufRet.f32 %574, 0
  %577 = call float @dx.op.binary.f32(i32 35, float %573, float %576)  ; FMax(a,b)
  %578 = select i1 %572, float %575, float %577
  %579 = zext i1 %572 to i32
  %580 = call float @dx.op.binary.f32(i32 36, float %522, float %578)  ; FMin(a,b)
  br label %581

; <label>:581                                     ; preds = %570, %520
  %582 = phi i32 [ %579, %570 ], [ 0, %520 ]
  %583 = phi float [ %580, %570 ], [ %522, %520 ]
  %584 = icmp eq i32 %300, 0
  br i1 %584, label %757, label %585, !dx.controlflow.hints !63

; <label>:585                                     ; preds = %581
  %586 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %587 = extractvalue %dx.types.CBufRet.i32 %586, 1
  %588 = and i32 %587, 1
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %590, label %747, !dx.controlflow.hints !64

; <label>:590                                     ; preds = %585
  %591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %592 = extractvalue %dx.types.CBufRet.f32 %591, 2
  %593 = extractvalue %dx.types.CBufRet.f32 %591, 3
  %594 = fmul fast float %592, %336
  %595 = fmul fast float %593, %337
  %596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %597 = extractvalue %dx.types.CBufRet.f32 %596, 0
  %598 = extractvalue %dx.types.CBufRet.f32 %596, 1
  %599 = fadd fast float %594, %597
  %600 = fadd fast float %595, %598
  %601 = call float @dx.op.unary.f32(i32 7, float %599)  ; Saturate(value)
  %602 = call float @dx.op.unary.f32(i32 7, float %600)  ; Saturate(value)
  %603 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %25, float %601, float %602, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %604 = extractvalue %dx.types.ResRet.f32 %603, 0
  %605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %606 = extractvalue %dx.types.CBufRet.f32 %605, 0
  %607 = fmul fast float %606, %604
  %608 = fsub fast float %599, %601
  %609 = fsub fast float %600, %602
  %610 = extractvalue %dx.types.CBufRet.f32 %591, 0
  %611 = extractvalue %dx.types.CBufRet.f32 %591, 1
  %612 = fmul fast float %610, %608
  %613 = fmul fast float %611, %609
  %614 = fmul fast float %612, %612
  %615 = fmul fast float %613, %613
  %616 = fadd fast float %614, %615
  %617 = call float @dx.op.unary.f32(i32 24, float %616)  ; Sqrt(value)
  %618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %619 = extractvalue %dx.types.CBufRet.f32 %618, 3
  %620 = fmul fast float %619, %617
  %621 = call float @dx.op.unary.f32(i32 7, float %620)  ; Saturate(value)
  %622 = extractvalue %dx.types.CBufRet.f32 %618, 2
  %623 = fsub fast float %622, %607
  %624 = fmul fast float %623, %621
  %625 = extractvalue %dx.types.CBufRet.f32 %605, 1
  %626 = fsub fast float %338, %607
  %627 = fsub fast float %626, %625
  %628 = fsub fast float %627, %624
  %629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %630 = extractvalue %dx.types.CBufRet.f32 %629, 2
  %631 = fsub fast float %628, %630
  %632 = fcmp fast olt float %631, 0.000000e+00
  %633 = call float @dx.op.unary.f32(i32 6, float %631)  ; FAbs(value)
  %634 = extractvalue %dx.types.CBufRet.i32 %586, 0
  %635 = icmp eq i32 %634, 0
  br i1 %635, label %689, label %636

; <label>:636                                     ; preds = %590
  br label %637

; <label>:637                                     ; preds = %676, %636
  %638 = phi i32 [ %682, %676 ], [ 1, %636 ]
  %639 = phi float [ %684, %676 ], [ 0x47EFFFFFE0000000, %636 ]
  %640 = phi i32 [ %685, %676 ], [ 0, %636 ]
  %641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %642 = extractvalue %dx.types.CBufRet.f32 %641, 1
  %643 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %644 = extractvalue %dx.types.CBufRet.i32 %643, 1
  %645 = and i32 %644, 8
  %646 = icmp eq i32 %645, 0
  %647 = fcmp fast ogt float %642, %628
  %648 = or i1 %647, %646
  %649 = add i32 %640, 171
  %650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 %649)  ; CBufferLoadLegacy(handle,regIndex)
  %651 = extractvalue %dx.types.CBufRet.f32 %650, 0
  %652 = extractvalue %dx.types.CBufRet.f32 %650, 1
  %653 = extractvalue %dx.types.CBufRet.f32 %650, 2
  br i1 %648, label %654, label %660, !dx.controlflow.hints !65

; <label>:654                                     ; preds = %637
  %655 = fsub fast float %651, %336
  %656 = fsub fast float %652, %337
  %657 = fmul fast float %655, %655
  %658 = fmul fast float %656, %656
  %659 = fadd fast float %657, %658
  br label %676

; <label>:660                                     ; preds = %637
  %661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %662 = extractvalue %dx.types.CBufRet.f32 %661, 2
  %663 = extractvalue %dx.types.CBufRet.f32 %641, 2
  %664 = fmul fast float %663, %662
  %665 = fsub fast float %664, %642
  %666 = fdiv fast float %653, %665
  %667 = fsub fast float %336, %651
  %668 = fsub fast float %337, %652
  %669 = fsub fast float %628, %642
  %670 = fmul fast float %666, %669
  %671 = fmul fast float %667, %667
  %672 = fmul fast float %668, %668
  %673 = fadd fast float %671, %672
  %674 = fmul fast float %670, %670
  %675 = fadd fast float %673, %674
  br label %676

; <label>:676                                     ; preds = %660, %654
  %677 = phi float [ %659, %654 ], [ %675, %660 ]
  %678 = call float @dx.op.unary.f32(i32 24, float %677)  ; Sqrt(value)
  %679 = fsub float %653, %678
  %680 = fcmp fast olt float %679, 0.000000e+00
  %681 = zext i1 %680 to i32
  %682 = and i32 %681, %638
  %683 = call float @dx.op.unary.f32(i32 6, float %679)  ; FAbs(value)
  %684 = call float @dx.op.binary.f32(i32 36, float %639, float %683)  ; FMin(a,b)
  %685 = add i32 %640, 1
  %686 = extractvalue %dx.types.CBufRet.i32 %643, 0
  %687 = icmp ult i32 %685, %686
  br i1 %687, label %637, label %688

; <label>:688                                     ; preds = %676
  br label %689

; <label>:689                                     ; preds = %688, %590
  %690 = phi i32 [ 1, %590 ], [ %682, %688 ]
  %691 = phi float [ 0x47EFFFFFE0000000, %590 ], [ %684, %688 ]
  br label %692

; <label>:692                                     ; preds = %692, %689
  %693 = phi i32 [ %690, %689 ], [ %732, %692 ]
  %694 = phi float [ 0x47EFFFFFE0000000, %689 ], [ %734, %692 ]
  %695 = phi i32 [ 0, %689 ], [ %735, %692 ]
  %696 = add nuw nsw i32 %695, 191
  %697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 %696)  ; CBufferLoadLegacy(handle,regIndex)
  %698 = extractvalue %dx.types.CBufRet.f32 %697, 0
  %699 = extractvalue %dx.types.CBufRet.f32 %697, 1
  %700 = extractvalue %dx.types.CBufRet.f32 %697, 2
  %701 = add nuw nsw i32 %695, 195
  %702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 %701)  ; CBufferLoadLegacy(handle,regIndex)
  %703 = extractvalue %dx.types.CBufRet.f32 %702, 0
  %704 = extractvalue %dx.types.CBufRet.f32 %702, 1
  %705 = extractvalue %dx.types.CBufRet.f32 %702, 2
  %706 = fsub fast float %336, %698
  %707 = fsub fast float %337, %699
  %708 = fsub fast float %628, %700
  %709 = call float @dx.op.unary.f32(i32 6, float %706)  ; FAbs(value)
  %710 = call float @dx.op.unary.f32(i32 6, float %707)  ; FAbs(value)
  %711 = call float @dx.op.unary.f32(i32 6, float %708)  ; FAbs(value)
  %712 = fsub fast float %709, %703
  %713 = fsub fast float %710, %704
  %714 = fsub fast float %711, %705
  %715 = call float @dx.op.binary.f32(i32 35, float %712, float 0.000000e+00)  ; FMax(a,b)
  %716 = call float @dx.op.binary.f32(i32 35, float %713, float 0.000000e+00)  ; FMax(a,b)
  %717 = call float @dx.op.binary.f32(i32 35, float %714, float 0.000000e+00)  ; FMax(a,b)
  %718 = fmul fast float %715, %715
  %719 = fmul fast float %716, %716
  %720 = fadd fast float %719, %718
  %721 = fmul fast float %717, %717
  %722 = fadd fast float %720, %721
  %723 = call float @dx.op.unary.f32(i32 24, float %722)  ; Sqrt(value)
  %724 = call float @dx.op.binary.f32(i32 35, float %713, float %714)  ; FMax(a,b)
  %725 = call float @dx.op.binary.f32(i32 35, float %712, float %724)  ; FMax(a,b)
  %726 = call float @dx.op.binary.f32(i32 36, float %725, float 0.000000e+00)  ; FMin(a,b)
  %727 = fadd fast float %726, %723
  %728 = fsub fast float -0.000000e+00, %727
  %729 = fcmp ogt float %727, -0.000000e+00
  %730 = icmp ne i32 %693, 0
  %731 = and i1 %730, %729
  %732 = zext i1 %731 to i32
  %733 = call float @dx.op.unary.f32(i32 6, float %728)  ; FAbs(value)
  %734 = call float @dx.op.binary.f32(i32 36, float %694, float %733)  ; FMin(a,b)
  %735 = add nuw nsw i32 %695, 1
  %736 = icmp eq i32 %735, 4
  br i1 %736, label %737, label %692

; <label>:737                                     ; preds = %692
  %738 = call float @dx.op.binary.f32(i32 36, float %633, float %734)  ; FMin(a,b)
  %739 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %740 = extractvalue %dx.types.CBufRet.i32 %739, 1
  %741 = and i32 %740, 2
  %742 = icmp ne i32 %741, 0
  %743 = xor i1 %731, %742
  %744 = call float @dx.op.binary.f32(i32 36, float %738, float %691)  ; FMin(a,b)
  %745 = and i1 %743, %632
  %746 = zext i1 %745 to i32
  br label %747

; <label>:747                                     ; preds = %737, %585
  %748 = phi i32 [ %329, %585 ], [ %746, %737 ]
  %749 = phi float [ 0.000000e+00, %585 ], [ %744, %737 ]
  %750 = phi float [ %338, %585 ], [ %628, %737 ]
  %751 = icmp ne i32 %748, 0
  %752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %753 = extractvalue %dx.types.CBufRet.f32 %752, 3
  %754 = call float @dx.op.binary.f32(i32 35, float %749, float %753)  ; FMax(a,b)
  %755 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %754)  ; FMin(a,b)
  %756 = zext i1 %751 to i32
  br label %757

; <label>:757                                     ; preds = %747, %581
  %758 = phi i32 [ %756, %747 ], [ 0, %581 ]
  %759 = phi i32 [ %748, %747 ], [ %329, %581 ]
  %760 = phi float [ %750, %747 ], [ %330, %581 ]
  %761 = phi float [ %755, %747 ], [ 0x47EFFFFFE0000000, %581 ]
  %762 = extractvalue %dx.types.CBufRet.f32 %349, 2
  %763 = fmul fast float %762, %339
  %764 = call float @dx.op.unary.f32(i32 23, float %763)  ; Log(value)
  %765 = fmul fast float %764, 0x3FE62E4300000000
  %766 = call float @dx.op.binary.f32(i32 35, float %765, float 1.000000e+00)  ; FMax(a,b)
  %767 = fmul fast float %766, %761
  %768 = call float @dx.op.binary.f32(i32 36, float %767, float %583)  ; FMin(a,b)
  %769 = call float @dx.op.binary.f32(i32 35, float %768, float %350)  ; FMax(a,b)
  %770 = fsub fast float %303, %339
  %771 = fadd fast float %770, 0x3F1A36E2E0000000
  %772 = call float @dx.op.binary.f32(i32 36, float %771, float %769)  ; FMin(a,b)
  %773 = icmp eq i32 %521, 0
  br i1 %773, label %879, label %774, !dx.controlflow.hints !66

; <label>:774                                     ; preds = %757
  %775 = fcmp fast olt float %771, %769
  %776 = fmul fast float %119, %62
  %777 = fmul fast float %776, %772
  %778 = fadd fast float %777, %338
  %779 = fmul fast float %119, %63
  %780 = fmul fast float %779, %772
  %781 = fadd fast float %780, %338
  %782 = fmul fast float %119, %64
  %783 = fmul fast float %782, %772
  %784 = fadd fast float %783, %338
  br i1 %775, label %785, label %790, !dx.controlflow.hints !67

; <label>:785                                     ; preds = %774
  %786 = fmul fast float %772, %117
  %787 = fmul fast float %772, %118
  %788 = fadd fast float %786, %336
  %789 = fadd fast float %787, %337
  br label %790

; <label>:790                                     ; preds = %785, %774
  %791 = phi float [ %788, %785 ], [ %336, %774 ]
  %792 = phi float [ %789, %785 ], [ %337, %774 ]
  %793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %794 = extractvalue %dx.types.CBufRet.f32 %793, 0
  %795 = extractvalue %dx.types.CBufRet.f32 %793, 1
  %796 = fsub fast float %791, %794
  %797 = fsub fast float %792, %795
  %798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %799 = extractvalue %dx.types.CBufRet.f32 %798, 0
  %800 = extractvalue %dx.types.CBufRet.f32 %798, 1
  %801 = fmul fast float %796, %799
  %802 = fmul fast float %797, %800
  %803 = fsub fast float 1.000000e+00, %802
  %804 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %805 = extractvalue %dx.types.CBufRet.i32 %804, 3
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %813, label %807, !dx.controlflow.hints !55

; <label>:807                                     ; preds = %790
  %808 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %24, float %801, float %803, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %809 = extractvalue %dx.types.ResRet.f32 %808, 0
  %810 = extractvalue %dx.types.ResRet.f32 %808, 1
  %811 = extractvalue %dx.types.ResRet.f32 %808, 2
  %812 = extractvalue %dx.types.ResRet.f32 %808, 3
  br label %819

; <label>:813                                     ; preds = %790
  %814 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %25, float %801, float %803, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %815 = extractvalue %dx.types.ResRet.f32 %814, 0
  %816 = extractvalue %dx.types.ResRet.f32 %814, 1
  %817 = extractvalue %dx.types.ResRet.f32 %814, 2
  %818 = extractvalue %dx.types.ResRet.f32 %814, 3
  br label %819

; <label>:819                                     ; preds = %813, %807
  %820 = phi float [ %809, %807 ], [ %815, %813 ]
  %821 = phi float [ %810, %807 ], [ %816, %813 ]
  %822 = phi float [ %811, %807 ], [ %817, %813 ]
  %823 = phi float [ %812, %807 ], [ %818, %813 ]
  %824 = extractvalue %dx.types.CBufRet.f32 %798, 3
  %825 = fmul fast float %824, %821
  %826 = fmul fast float %825, %820
  %827 = fsub fast float %825, %826
  %828 = fcmp fast ole float %827, 0.000000e+00
  %829 = extractvalue %dx.types.CBufRet.f32 %793, 2
  %830 = fadd fast float %826, %829
  %831 = fmul fast float %824, %822
  %832 = fadd fast float %831, %829
  %833 = fdiv fast float 1.000000e+00, %827
  %834 = select i1 %828, float 1.000000e+06, float %833
  %835 = fsub fast float %778, %830
  %836 = fmul fast float %834, %835
  %837 = call float @dx.op.unary.f32(i32 7, float %836)  ; Saturate(value)
  %838 = extractvalue %dx.types.CBufRet.f32 %798, 2
  %839 = fmul fast float %838, %837
  %840 = fsub fast float %838, %839
  %841 = fcmp fast olt float %778, %832
  %842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %843 = extractvalue %dx.types.CBufRet.f32 %842, 3
  %844 = select i1 %841, float %843, float 1.000000e+00
  %845 = fmul fast float %840, %844
  %846 = fsub fast float %781, %830
  %847 = fmul fast float %834, %846
  %848 = call float @dx.op.unary.f32(i32 7, float %847)  ; Saturate(value)
  %849 = fmul fast float %838, %848
  %850 = fsub fast float %838, %849
  %851 = fcmp fast olt float %781, %832
  %852 = select i1 %851, float %843, float 1.000000e+00
  %853 = fmul fast float %850, %852
  %854 = fadd fast float %853, %845
  %855 = fsub fast float %784, %830
  %856 = fmul fast float %834, %855
  %857 = call float @dx.op.unary.f32(i32 7, float %856)  ; Saturate(value)
  %858 = fmul fast float %838, %857
  %859 = fsub fast float %838, %858
  %860 = fcmp fast olt float %784, %832
  %861 = select i1 %860, float %843, float 1.000000e+00
  %862 = fmul fast float %859, %861
  %863 = fadd fast float %854, %862
  %864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %865 = extractvalue %dx.types.CBufRet.f32 %864, 2
  %866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %867 = extractvalue %dx.types.CBufRet.f32 %866, 0
  %868 = extractvalue %dx.types.CBufRet.f32 %866, 1
  %869 = extractvalue %dx.types.CBufRet.f32 %866, 2
  %870 = fmul fast float %772, 0x3FD5555560000000
  %871 = fmul fast float %870, %823
  %872 = fmul fast float %871, %865
  %873 = fmul fast float %872, %863
  %874 = extractvalue %dx.types.CBufRet.f32 %842, 0
  %875 = fmul fast float %873, %867
  %876 = fmul fast float %873, %868
  %877 = fmul fast float %873, %869
  %878 = fmul fast float %873, %874
  br label %879

; <label>:879                                     ; preds = %819, %757
  %880 = phi float [ %873, %819 ], [ 0.000000e+00, %757 ]
  %881 = phi float [ %878, %819 ], [ 0.000000e+00, %757 ]
  %882 = phi float [ %875, %819 ], [ 0.000000e+00, %757 ]
  %883 = phi float [ %876, %819 ], [ 0.000000e+00, %757 ]
  %884 = phi float [ %877, %819 ], [ 0.000000e+00, %757 ]
  %885 = icmp eq i32 %582, 0
  br i1 %885, label %1080, label %886, !dx.controlflow.hints !68

; <label>:886                                     ; preds = %879
  %887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %888 = extractvalue %dx.types.CBufRet.f32 %887, 3
  %889 = fmul fast float %888, %339
  %890 = fcmp fast oeq float %889, 0.000000e+00
  br i1 %890, label %905, label %891, !dx.controlflow.hints !69

; <label>:891                                     ; preds = %886
  %892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %893 = extractvalue %dx.types.CBufRet.f32 %892, 3
  %894 = fmul fast float %893, %889
  %895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %896 = extractvalue %dx.types.CBufRet.f32 %895, 0
  %897 = extractvalue %dx.types.CBufRet.f32 %895, 1
  %898 = extractvalue %dx.types.CBufRet.f32 %895, 2
  %899 = fmul fast float %896, %894
  %900 = fmul fast float %897, %894
  %901 = fmul fast float %898, %894
  %902 = call float @dx.op.unary.f32(i32 23, float %899)  ; Log(value)
  %903 = call float @dx.op.unary.f32(i32 23, float %900)  ; Log(value)
  %904 = call float @dx.op.unary.f32(i32 23, float %901)  ; Log(value)
  br label %905

; <label>:905                                     ; preds = %891, %886
  %906 = phi float [ %902, %891 ], [ 0.000000e+00, %886 ]
  %907 = phi float [ %903, %891 ], [ 0.000000e+00, %886 ]
  %908 = phi float [ %904, %891 ], [ 0.000000e+00, %886 ]
  %909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %910 = extractvalue %dx.types.CBufRet.f32 %909, 0
  %911 = extractvalue %dx.types.CBufRet.f32 %909, 1
  %912 = extractvalue %dx.types.CBufRet.f32 %909, 2
  %913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %914 = extractvalue %dx.types.CBufRet.f32 %913, 0
  %915 = extractvalue %dx.types.CBufRet.f32 %913, 1
  %916 = extractvalue %dx.types.CBufRet.f32 %913, 2
  %917 = fsub fast float %336, %914
  %918 = fsub fast float %337, %915
  %919 = fsub fast float %338, %916
  %920 = fmul fast float %917, %910
  %921 = fmul fast float %918, %911
  %922 = fmul fast float %919, %912
  %923 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %924 = extractvalue %dx.types.CBufRet.i32 %923, 0
  %925 = extractvalue %dx.types.CBufRet.i32 %923, 1
  %926 = uitofp i32 %924 to float
  %927 = uitofp i32 %925 to float
  %928 = fmul fast float %920, %926
  %929 = fmul fast float %921, %927
  %930 = fadd fast float %928, 5.000000e-01
  %931 = fadd fast float %929, 5.000000e-01
  %932 = call float @dx.op.unary.f32(i32 22, float %930)  ; Frc(value)
  %933 = call float @dx.op.unary.f32(i32 22, float %931)  ; Frc(value)
  %934 = call float @dx.op.unary.f32(i32 27, float %930)  ; Round_ni(value)
  %935 = call float @dx.op.unary.f32(i32 27, float %931)  ; Round_ni(value)
  %936 = fadd fast float %934, 1.000000e+00
  %937 = fadd fast float %935, 1.000000e+00
  %938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %939 = extractvalue %dx.types.CBufRet.f32 %938, 0
  %940 = extractvalue %dx.types.CBufRet.f32 %938, 1
  %941 = fmul fast float %939, %936
  %942 = fmul fast float %940, %937
  %943 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %24, float %941, float %942, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %944 = extractvalue %dx.types.ResRet.f32 %943, 0
  %945 = extractvalue %dx.types.ResRet.f32 %943, 1
  %946 = extractvalue %dx.types.ResRet.f32 %943, 2
  %947 = extractvalue %dx.types.ResRet.f32 %943, 3
  %948 = extractvalue %dx.types.CBufRet.i32 %923, 2
  %949 = extractvalue %dx.types.CBufRet.f32 %938, 2
  %950 = uitofp i32 %948 to float
  %951 = fadd fast float %950, -1.000000e+00
  %952 = fmul fast float %951, %944
  %953 = fmul fast float %951, %945
  %954 = fmul fast float %951, %946
  %955 = fmul fast float %951, %947
  %956 = fadd fast float %952, 5.000000e-01
  %957 = fadd fast float %953, 5.000000e-01
  %958 = fadd fast float %954, 5.000000e-01
  %959 = fadd fast float %955, 5.000000e-01
  %960 = fptoui float %956 to i32
  %961 = fptoui float %957 to i32
  %962 = fptoui float %958 to i32
  %963 = fptoui float %959 to i32
  %964 = uitofp i32 %960 to float
  %965 = uitofp i32 %961 to float
  %966 = uitofp i32 %962 to float
  %967 = uitofp i32 %963 to float
  %968 = fadd fast float %964, 5.000000e-01
  %969 = fadd fast float %965, 5.000000e-01
  %970 = fadd fast float %966, 5.000000e-01
  %971 = fadd fast float %967, 5.000000e-01
  %972 = fmul fast float %968, %949
  %973 = fmul fast float %969, %949
  %974 = fmul fast float %970, %949
  %975 = fmul fast float %971, %949
  %976 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %25, float %972, float %922, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %977 = extractvalue %dx.types.ResRet.f32 %976, 0
  %978 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %25, float %973, float %922, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %979 = extractvalue %dx.types.ResRet.f32 %978, 0
  %980 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %25, float %974, float %922, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %981 = extractvalue %dx.types.ResRet.f32 %980, 0
  %982 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %25, float %975, float %922, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %983 = extractvalue %dx.types.ResRet.f32 %982, 0
  %984 = fsub fast float %981, %983
  %985 = fmul fast float %984, %932
  %986 = fadd fast float %985, %983
  %987 = fsub fast float %979, %977
  %988 = fmul fast float %987, %932
  %989 = fadd fast float %988, %977
  %990 = fsub fast float %989, %986
  %991 = fmul fast float %990, %933
  %992 = fadd fast float %991, %986
  %993 = fcmp fast ogt float %992, 0.000000e+00
  br i1 %993, label %994, label %1062, !dx.controlflow.hints !70

; <label>:994                                     ; preds = %905
  %995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %996 = extractvalue %dx.types.CBufRet.f32 %995, 0
  %997 = extractvalue %dx.types.CBufRet.f32 %995, 1
  %998 = extractvalue %dx.types.CBufRet.f32 %995, 2
  %999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1000 = extractvalue %dx.types.CBufRet.f32 %999, 0
  %1001 = extractvalue %dx.types.CBufRet.f32 %999, 1
  %1002 = extractvalue %dx.types.CBufRet.f32 %999, 2
  %1003 = fmul fast float %918, %910
  %1004 = fmul fast float %919, %910
  %1005 = fadd fast float %920, %1000
  %1006 = fadd fast float %1003, %1001
  %1007 = fadd fast float %1004, %1002
  %1008 = fmul fast float %1005, %996
  %1009 = fmul fast float %1006, %996
  %1010 = fmul fast float %1007, %996
  %1011 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %22, float %1008, float %1009, float %1010, float undef, i32 0, i32 0, i32 0, float %906)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1012 = extractvalue %dx.types.ResRet.f32 %1011, 0
  %1013 = fmul fast float %1005, %997
  %1014 = fmul fast float %1006, %997
  %1015 = fmul fast float %1007, %997
  %1016 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %22, float %1013, float %1014, float %1015, float undef, i32 0, i32 0, i32 0, float %907)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1017 = extractvalue %dx.types.ResRet.f32 %1016, 1
  %1018 = fmul fast float %1005, %998
  %1019 = fmul fast float %1006, %998
  %1020 = fmul fast float %1007, %998
  %1021 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %22, float %1018, float %1019, float %1020, float undef, i32 0, i32 0, i32 0, float %908)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1022 = extractvalue %dx.types.ResRet.f32 %1021, 2
  %1023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %1024 = extractvalue %dx.types.CBufRet.f32 %1023, 1
  %1025 = fmul fast float %1017, %1012
  %1026 = fmul fast float %1025, %1022
  %1027 = call float @dx.op.unary.f32(i32 23, float %1026)  ; Log(value)
  %1028 = fmul fast float %1027, %1024
  %1029 = call float @dx.op.unary.f32(i32 21, float %1028)  ; Exp(value)
  %1030 = extractvalue %dx.types.CBufRet.f32 %1023, 2
  %1031 = fmul fast float %992, %992
  %1032 = fmul fast float %1031, %1029
  %1033 = fmul fast float %1032, %1030
  %1034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %1035 = extractvalue %dx.types.CBufRet.f32 %1034, 3
  %1036 = fmul fast float %1035, %1033
  %1037 = bitcast float %1036 to i32
  %1038 = sitofp i32 %1037 to float
  %1039 = fptosi float %1038 to i32
  %1040 = bitcast i32 %1039 to float
  %1041 = fsub fast float 1.000000e+00, %1033
  %1042 = bitcast float %1041 to i32
  %1043 = sitofp i32 %1042 to float
  %1044 = fptosi float %1043 to i32
  %1045 = bitcast i32 %1044 to float
  %1046 = fadd fast float %1040, %1045
  %1047 = bitcast float %1046 to i32
  %1048 = sub nsw i32 2129859010, %1047
  %1049 = bitcast i32 %1048 to float
  %1050 = fmul fast float %1049, %1040
  %1051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1052 = extractvalue %dx.types.CBufRet.f32 %1051, 2
  %1053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1054 = extractvalue %dx.types.CBufRet.f32 %1053, 0
  %1055 = fmul fast float %1050, %1054
  %1056 = fadd fast float %1055, 1.000000e+00
  %1057 = bitcast float %1056 to i32
  %1058 = sub nsw i32 2129859010, %1057
  %1059 = bitcast i32 %1058 to float
  %1060 = fmul fast float %1050, %1052
  %1061 = fmul fast float %1060, %1059
  br label %1062

; <label>:1062                                    ; preds = %994, %905
  %1063 = phi float [ %1061, %994 ], [ %992, %905 ]
  %1064 = fmul fast float %1063, %772
  %1065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %1066 = extractvalue %dx.types.CBufRet.f32 %1065, 0
  %1067 = extractvalue %dx.types.CBufRet.f32 %1065, 1
  %1068 = extractvalue %dx.types.CBufRet.f32 %1065, 2
  %1069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1070 = extractvalue %dx.types.CBufRet.f32 %1069, 1
  %1071 = fmul fast float %1066, %1064
  %1072 = fmul fast float %1067, %1064
  %1073 = fmul fast float %1068, %1064
  %1074 = fadd fast float %1071, %882
  %1075 = fadd fast float %1072, %883
  %1076 = fadd fast float %1073, %884
  %1077 = fmul fast float %1070, %1064
  %1078 = fadd fast float %1077, %881
  %1079 = fadd fast float %1064, %880
  br label %1080

; <label>:1080                                    ; preds = %1062, %879
  %1081 = phi float [ %1079, %1062 ], [ %880, %879 ]
  %1082 = phi float [ %1078, %1062 ], [ %881, %879 ]
  %1083 = phi float [ %1074, %1062 ], [ %882, %879 ]
  %1084 = phi float [ %1075, %1062 ], [ %883, %879 ]
  %1085 = phi float [ %1076, %1062 ], [ %884, %879 ]
  %1086 = icmp eq i32 %758, 0
  br i1 %1086, label %1130, label %1087, !dx.controlflow.hints !71

; <label>:1087                                    ; preds = %1080
  %1088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1089 = extractvalue %dx.types.CBufRet.f32 %1088, 1
  %1090 = fsub fast float %772, %1089
  %1091 = extractvalue %dx.types.CBufRet.f32 %1088, 3
  %1092 = fmul fast float %1090, %1091
  %1093 = call float @dx.op.unary.f32(i32 7, float %1092)  ; Saturate(value)
  %1094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1095 = extractvalue %dx.types.CBufRet.f32 %1094, 3
  %1096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1097 = extractvalue %dx.types.CBufRet.f32 %1096, 2
  %1098 = fsub fast float %1097, %760
  %1099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1100 = extractvalue %dx.types.CBufRet.f32 %1099, 3
  %1101 = fmul fast float %1098, %1100
  %1102 = call float @dx.op.unary.f32(i32 7, float %1101)  ; Saturate(value)
  %1103 = fmul fast float %1102, %1095
  %1104 = extractvalue %dx.types.CBufRet.f32 %1099, 0
  %1105 = fsub fast float %339, %1104
  %1106 = extractvalue %dx.types.CBufRet.f32 %1099, 1
  %1107 = fmul fast float %1105, %1106
  %1108 = call float @dx.op.unary.f32(i32 7, float %1107)  ; Saturate(value)
  %1109 = fsub fast float 1.000000e+00, %1093
  %1110 = fmul fast float %1108, %1109
  %1111 = fadd fast float %1110, %1093
  %1112 = extractvalue %dx.types.CBufRet.f32 %1088, 0
  %1113 = fsub fast float %1103, %1112
  %1114 = fmul fast float %1113, %1111
  %1115 = fadd fast float %1114, %1112
  %1116 = extractvalue %dx.types.CBufRet.f32 %1094, 0
  %1117 = extractvalue %dx.types.CBufRet.f32 %1094, 1
  %1118 = extractvalue %dx.types.CBufRet.f32 %1094, 2
  %1119 = fmul fast float %1115, %772
  %1120 = extractvalue %dx.types.CBufRet.f32 %1099, 2
  %1121 = fmul fast float %1119, %1116
  %1122 = fmul fast float %1119, %1117
  %1123 = fmul fast float %1119, %1118
  %1124 = fadd fast float %1121, %1083
  %1125 = fadd fast float %1122, %1084
  %1126 = fadd fast float %1123, %1085
  %1127 = fmul fast float %1119, %1120
  %1128 = fadd fast float %1127, %1082
  %1129 = fadd fast float %1119, %1081
  br label %1130

; <label>:1130                                    ; preds = %1087, %1080
  %1131 = phi float [ %1129, %1087 ], [ %1081, %1080 ]
  %1132 = phi float [ %1128, %1087 ], [ %1082, %1080 ]
  %1133 = phi float [ %1124, %1087 ], [ %1083, %1080 ]
  %1134 = phi float [ %1125, %1087 ], [ %1084, %1080 ]
  %1135 = phi float [ %1126, %1087 ], [ %1085, %1080 ]
  %1136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1137 = extractvalue %dx.types.CBufRet.f32 %1136, 1
  %1138 = fcmp fast ogt float %1131, %1137
  br i1 %1138, label %1139, label %1145, !dx.controlflow.hints !72

; <label>:1139                                    ; preds = %1130
  %1140 = fdiv fast float 1.000000e+00, %1131
  %1141 = fmul fast float %1140, %1133
  %1142 = fmul fast float %1140, %1134
  %1143 = fmul fast float %1140, %1135
  %1144 = fmul fast float %1140, %1132
  br label %1145

; <label>:1145                                    ; preds = %1139, %1130
  %1146 = phi float [ %1144, %1139 ], [ %1132, %1130 ]
  %1147 = phi float [ %1141, %1139 ], [ %1133, %1130 ]
  %1148 = phi float [ %1142, %1139 ], [ %1134, %1130 ]
  %1149 = phi float [ %1143, %1139 ], [ %1135, %1130 ]
  br i1 %1138, label %1152, label %1150, !dx.controlflow.hints !73

; <label>:1150                                    ; preds = %1145
  %1151 = fadd fast float %772, %339
  br label %2807

; <label>:1152                                    ; preds = %1145
  %1153 = fmul fast float %1131, 0xBFF7154760000000
  %1154 = call float @dx.op.unary.f32(i32 21, float %1153)  ; Exp(value)
  %1155 = call float @dx.op.unary.f32(i32 7, float %1154)  ; Saturate(value)
  %1156 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %1157 = extractvalue %dx.types.CBufRet.i32 %1156, 0
  %1158 = icmp eq i32 %1157, 1
  br i1 %1158, label %1159, label %1194, !dx.controlflow.hints !74

; <label>:1159                                    ; preds = %1152
  %1160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1161 = extractvalue %dx.types.CBufRet.f32 %1160, 0
  %1162 = extractvalue %dx.types.CBufRet.f32 %1160, 1
  %1163 = fsub fast float %336, %1161
  %1164 = fsub fast float %337, %1162
  %1165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1166 = extractvalue %dx.types.CBufRet.f32 %1165, 0
  %1167 = extractvalue %dx.types.CBufRet.f32 %1165, 1
  %1168 = fmul fast float %1163, %1166
  %1169 = fmul fast float %1164, %1167
  %1170 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %25, float %1168, float %1169, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1171 = extractvalue %dx.types.ResRet.f32 %1170, 0
  %1172 = fcmp fast ogt float %1171, 0.000000e+00
  %1173 = extractvalue %dx.types.CBufRet.i32 %1156, 3
  %1174 = icmp ne i32 %1173, 0
  %1175 = and i1 %1172, %1174
  br i1 %1175, label %1176, label %1194, !dx.controlflow.hints !75

; <label>:1176                                    ; preds = %1159
  %1177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1178 = extractvalue %dx.types.CBufRet.f32 %1177, 0
  %1179 = extractvalue %dx.types.CBufRet.f32 %1177, 1
  %1180 = fsub fast float %336, %1178
  %1181 = fsub fast float %337, %1179
  %1182 = fmul fast float %1180, %1180
  %1183 = fmul fast float %1181, %1181
  %1184 = fadd fast float %1182, %1183
  %1185 = uitofp i32 %1173 to float
  %1186 = fmul fast float %1185, %1185
  %1187 = fcmp fast ogt float %1184, %1186
  br i1 %1187, label %1194, label %1188, !dx.controlflow.hints !76

; <label>:1188                                    ; preds = %1176
  %1189 = call float @dx.op.unary.f32(i32 24, float %1184)  ; Sqrt(value)
  %1190 = fsub fast float %1185, %1189
  %1191 = fmul fast float %1190, 0x3F75555560000000
  %1192 = call float @dx.op.unary.f32(i32 7, float %1191)  ; Saturate(value)
  %1193 = call float @dx.op.binary.f32(i32 36, float %1192, float %1171)  ; FMin(a,b)
  br label %1194

; <label>:1194                                    ; preds = %1188, %1176, %1159, %1152
  %1195 = phi float [ 1.000000e+00, %1152 ], [ %1193, %1188 ], [ %1171, %1159 ], [ 0.000000e+00, %1176 ]
  %1196 = fcmp fast ogt float %1195, 0.000000e+00
  br i1 %1196, label %1197, label %1270, !dx.controlflow.hints !77

; <label>:1197                                    ; preds = %1194
  %1198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %1199 = extractvalue %dx.types.ResRet.i32 %1198, 0
  %1200 = extractvalue %dx.types.ResRet.i32 %1198, 1
  %1201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %1202 = extractvalue %dx.types.ResRet.i32 %1201, 0
  %1203 = extractvalue %dx.types.ResRet.i32 %1201, 1
  %1204 = extractvalue %dx.types.ResRet.i32 %1201, 2
  %1205 = extractvalue %dx.types.ResRet.i32 %1201, 3
  %1206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1207 = extractvalue %dx.types.ResRet.i32 %1206, 0
  %1208 = extractvalue %dx.types.ResRet.i32 %1206, 1
  %1209 = extractvalue %dx.types.ResRet.i32 %1206, 2
  %1210 = extractvalue %dx.types.ResRet.i32 %1206, 3
  %1211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1212 = extractvalue %dx.types.ResRet.i32 %1211, 0
  %1213 = extractvalue %dx.types.ResRet.i32 %1211, 1
  %1214 = extractvalue %dx.types.ResRet.i32 %1211, 2
  %1215 = extractvalue %dx.types.ResRet.i32 %1211, 3
  %1216 = and i32 %1212, 65535
  %1217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1216)  ; LegacyF16ToF32(value)
  %1218 = lshr i32 %1212, 16
  %1219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1218)  ; LegacyF16ToF32(value)
  %1220 = and i32 %1213, 65535
  %1221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1220)  ; LegacyF16ToF32(value)
  %1222 = lshr i32 %1213, 16
  %1223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1222)  ; LegacyF16ToF32(value)
  %1224 = and i32 %1214, 65535
  %1225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1224)  ; LegacyF16ToF32(value)
  %1226 = lshr i32 %1214, 16
  %1227 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1226)  ; LegacyF16ToF32(value)
  %1228 = and i32 %1215, 65535
  %1229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1228)  ; LegacyF16ToF32(value)
  %1230 = lshr i32 %1215, 16
  %1231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1230)  ; LegacyF16ToF32(value)
  %1232 = and i32 %1207, 65535
  %1233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1232)  ; LegacyF16ToF32(value)
  %1234 = lshr i32 %1207, 16
  %1235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1234)  ; LegacyF16ToF32(value)
  %1236 = and i32 %1208, 65535
  %1237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1236)  ; LegacyF16ToF32(value)
  %1238 = lshr i32 %1208, 16
  %1239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1238)  ; LegacyF16ToF32(value)
  %1240 = and i32 %1209, 65535
  %1241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1240)  ; LegacyF16ToF32(value)
  %1242 = lshr i32 %1209, 16
  %1243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1242)  ; LegacyF16ToF32(value)
  %1244 = and i32 %1210, 65535
  %1245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1244)  ; LegacyF16ToF32(value)
  %1246 = lshr i32 %1210, 16
  %1247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1246)  ; LegacyF16ToF32(value)
  %1248 = and i32 %1202, 65535
  %1249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1248)  ; LegacyF16ToF32(value)
  %1250 = lshr i32 %1202, 16
  %1251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1250)  ; LegacyF16ToF32(value)
  %1252 = and i32 %1203, 65535
  %1253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1252)  ; LegacyF16ToF32(value)
  %1254 = lshr i32 %1203, 16
  %1255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1254)  ; LegacyF16ToF32(value)
  %1256 = and i32 %1204, 65535
  %1257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1256)  ; LegacyF16ToF32(value)
  %1258 = lshr i32 %1204, 16
  %1259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1258)  ; LegacyF16ToF32(value)
  %1260 = and i32 %1205, 65535
  %1261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1260)  ; LegacyF16ToF32(value)
  %1262 = lshr i32 %1205, 16
  %1263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1262)  ; LegacyF16ToF32(value)
  %1264 = and i32 %1199, 65535
  %1265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1264)  ; LegacyF16ToF32(value)
  %1266 = lshr i32 %1199, 16
  %1267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1266)  ; LegacyF16ToF32(value)
  %1268 = and i32 %1200, 65535
  %1269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1268)  ; LegacyF16ToF32(value)
  br label %1270

; <label>:1270                                    ; preds = %1197, %1194
  %1271 = phi float [ %1269, %1197 ], [ 0.000000e+00, %1194 ]
  %1272 = phi float [ %1267, %1197 ], [ 0.000000e+00, %1194 ]
  %1273 = phi float [ %1265, %1197 ], [ 0.000000e+00, %1194 ]
  %1274 = phi float [ %1263, %1197 ], [ 0.000000e+00, %1194 ]
  %1275 = phi float [ %1261, %1197 ], [ 0.000000e+00, %1194 ]
  %1276 = phi float [ %1259, %1197 ], [ 0.000000e+00, %1194 ]
  %1277 = phi float [ %1257, %1197 ], [ 0.000000e+00, %1194 ]
  %1278 = phi float [ %1255, %1197 ], [ 0.000000e+00, %1194 ]
  %1279 = phi float [ %1253, %1197 ], [ 0.000000e+00, %1194 ]
  %1280 = phi float [ %1251, %1197 ], [ 0.000000e+00, %1194 ]
  %1281 = phi float [ %1249, %1197 ], [ 0.000000e+00, %1194 ]
  %1282 = phi float [ %1247, %1197 ], [ 0.000000e+00, %1194 ]
  %1283 = phi float [ %1245, %1197 ], [ 0.000000e+00, %1194 ]
  %1284 = phi float [ %1243, %1197 ], [ 0.000000e+00, %1194 ]
  %1285 = phi float [ %1241, %1197 ], [ 0.000000e+00, %1194 ]
  %1286 = phi float [ %1239, %1197 ], [ 0.000000e+00, %1194 ]
  %1287 = phi float [ %1237, %1197 ], [ 0.000000e+00, %1194 ]
  %1288 = phi float [ %1235, %1197 ], [ 0.000000e+00, %1194 ]
  %1289 = phi float [ %1233, %1197 ], [ 0.000000e+00, %1194 ]
  %1290 = phi float [ %1231, %1197 ], [ 0.000000e+00, %1194 ]
  %1291 = phi float [ %1229, %1197 ], [ 0.000000e+00, %1194 ]
  %1292 = phi float [ %1227, %1197 ], [ 0.000000e+00, %1194 ]
  %1293 = phi float [ %1225, %1197 ], [ 0.000000e+00, %1194 ]
  %1294 = phi float [ %1223, %1197 ], [ 0.000000e+00, %1194 ]
  %1295 = phi float [ %1221, %1197 ], [ 0.000000e+00, %1194 ]
  %1296 = phi float [ %1219, %1197 ], [ 0.000000e+00, %1194 ]
  %1297 = phi float [ %1217, %1197 ], [ 0.000000e+00, %1194 ]
  %1298 = fcmp fast olt float %1195, 1.000000e+00
  br i1 %1298, label %1299, label %1959, !dx.controlflow.hints !78

; <label>:1299                                    ; preds = %1270
  %1300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1301 = extractvalue %dx.types.CBufRet.f32 %1300, 0
  %1302 = extractvalue %dx.types.CBufRet.f32 %1300, 1
  %1303 = fsub fast float %336, %1301
  %1304 = fsub fast float %337, %1302
  %1305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1306 = extractvalue %dx.types.CBufRet.f32 %1305, 0
  %1307 = extractvalue %dx.types.CBufRet.f32 %1305, 1
  %1308 = fmul fast float %1303, %1306
  %1309 = fmul fast float %1304, %1307
  %1310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1311 = extractvalue %dx.types.CBufRet.f32 %1310, 0
  %1312 = fmul fast float %1311, %1308
  %1313 = extractvalue %dx.types.CBufRet.f32 %1310, 1
  %1314 = fadd fast float %1312, %1313
  %1315 = extractvalue %dx.types.CBufRet.f32 %1310, 2
  %1316 = fmul fast float %1315, %1309
  %1317 = extractvalue %dx.types.CBufRet.f32 %1310, 3
  %1318 = fadd fast float %1316, %1317
  %1319 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %25, float %1314, float %1318, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1320 = extractvalue %dx.types.ResRet.f32 %1319, 0
  %1321 = extractvalue %dx.types.ResRet.f32 %1319, 1
  %1322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1323 = extractvalue %dx.types.CBufRet.f32 %1322, 1
  %1324 = extractvalue %dx.types.CBufRet.f32 %1322, 0
  %1325 = fsub fast float %1323, %1324
  %1326 = fmul fast float %1325, %1320
  %1327 = fadd fast float %1326, %1324
  %1328 = extractvalue %dx.types.CBufRet.f32 %1322, 3
  %1329 = extractvalue %dx.types.CBufRet.f32 %1322, 2
  %1330 = fsub fast float %1328, %1329
  %1331 = fmul fast float %1330, %1321
  %1332 = fadd fast float %1331, %1329
  %1333 = fsub fast float %338, %1327
  %1334 = fsub fast float %1332, %1327
  %1335 = fdiv fast float %1333, %1334
  %1336 = call float @dx.op.unary.f32(i32 7, float %1335)  ; Saturate(value)
  %1337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1338 = extractvalue %dx.types.CBufRet.f32 %1337, 0
  %1339 = fmul fast float %1338, %1336
  %1340 = extractvalue %dx.types.CBufRet.f32 %1337, 1
  %1341 = fadd fast float %1339, %1340
  %1342 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %25, float %1314, float %1318, float %1341, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1343 = extractvalue %dx.types.ResRet.f32 %1342, 0
  %1344 = extractvalue %dx.types.ResRet.f32 %1342, 1
  %1345 = extractvalue %dx.types.ResRet.f32 %1342, 2
  %1346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1347 = extractvalue %dx.types.CBufRet.f32 %1346, 0
  %1348 = extractvalue %dx.types.CBufRet.f32 %1346, 1
  %1349 = extractvalue %dx.types.CBufRet.f32 %1346, 2
  %1350 = fmul fast float %1347, %1343
  %1351 = fmul fast float %1348, %1344
  %1352 = fmul fast float %1349, %1345
  %1353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1354 = extractvalue %dx.types.CBufRet.f32 %1353, 0
  %1355 = extractvalue %dx.types.CBufRet.f32 %1353, 1
  %1356 = extractvalue %dx.types.CBufRet.f32 %1353, 2
  %1357 = fadd fast float %1350, %1354
  %1358 = fadd fast float %1351, %1355
  %1359 = fadd fast float %1352, %1356
  %1360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1361 = extractvalue %dx.types.CBufRet.f32 %1360, 0
  %1362 = fmul fast float %1361, %1308
  %1363 = extractvalue %dx.types.CBufRet.f32 %1360, 1
  %1364 = fadd fast float %1362, %1363
  %1365 = extractvalue %dx.types.CBufRet.f32 %1360, 2
  %1366 = fmul fast float %1365, %1309
  %1367 = extractvalue %dx.types.CBufRet.f32 %1360, 3
  %1368 = fadd fast float %1366, %1367
  %1369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1370 = extractvalue %dx.types.CBufRet.f32 %1369, 0
  %1371 = extractvalue %dx.types.CBufRet.f32 %1369, 1
  %1372 = extractvalue %dx.types.CBufRet.f32 %1369, 2
  %1373 = extractvalue %dx.types.CBufRet.f32 %1369, 3
  %1374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1375 = extractvalue %dx.types.CBufRet.f32 %1374, 0
  %1376 = extractvalue %dx.types.CBufRet.f32 %1374, 1
  %1377 = extractvalue %dx.types.CBufRet.f32 %1374, 2
  %1378 = extractvalue %dx.types.CBufRet.f32 %1374, 3
  %1379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1364, float %1368, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1380 = extractvalue %dx.types.ResRet.f32 %1379, 0
  %1381 = extractvalue %dx.types.ResRet.f32 %1379, 1
  %1382 = extractvalue %dx.types.ResRet.f32 %1379, 2
  %1383 = extractvalue %dx.types.ResRet.f32 %1379, 3
  %1384 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1364, float %1368, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1385 = extractvalue %dx.types.ResRet.f32 %1384, 0
  %1386 = extractvalue %dx.types.ResRet.f32 %1384, 1
  %1387 = extractvalue %dx.types.ResRet.f32 %1384, 2
  %1388 = extractvalue %dx.types.ResRet.f32 %1384, 3
  %1389 = fmul fast float %1380, %1357
  %1390 = fmul fast float %1385, %1357
  %1391 = fmul fast float %1387, %1357
  %1392 = fmul fast float %1383, %1357
  %1393 = fadd fast float %1389, %1370
  %1394 = fadd fast float %1390, %1371
  %1395 = fadd fast float %1391, %1372
  %1396 = fadd fast float %1392, %1373
  %1397 = fmul fast float %1381, %1357
  %1398 = fmul fast float %1386, %1357
  %1399 = fadd fast float %1397, %1375
  %1400 = fadd fast float %1398, %1376
  %1401 = fmul fast float %1382, %1357
  %1402 = fmul fast float %1388, %1357
  %1403 = fadd fast float %1401, %1377
  %1404 = fadd fast float %1402, %1378
  %1405 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1364, float %1368, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1406 = extractvalue %dx.types.ResRet.f32 %1405, 0
  %1407 = extractvalue %dx.types.ResRet.f32 %1405, 1
  %1408 = extractvalue %dx.types.ResRet.f32 %1405, 2
  %1409 = extractvalue %dx.types.ResRet.f32 %1405, 3
  %1410 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1364, float %1368, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1411 = extractvalue %dx.types.ResRet.f32 %1410, 0
  %1412 = extractvalue %dx.types.ResRet.f32 %1410, 1
  %1413 = extractvalue %dx.types.ResRet.f32 %1410, 2
  %1414 = extractvalue %dx.types.ResRet.f32 %1410, 3
  %1415 = fmul fast float %1406, %1358
  %1416 = fmul fast float %1411, %1358
  %1417 = fmul fast float %1413, %1358
  %1418 = fmul fast float %1409, %1358
  %1419 = fadd fast float %1393, %1415
  %1420 = fadd fast float %1394, %1416
  %1421 = fadd fast float %1395, %1417
  %1422 = fadd fast float %1396, %1418
  %1423 = fmul fast float %1407, %1358
  %1424 = fmul fast float %1412, %1358
  %1425 = fadd fast float %1399, %1423
  %1426 = fadd fast float %1400, %1424
  %1427 = fmul fast float %1408, %1358
  %1428 = fmul fast float %1414, %1358
  %1429 = fadd fast float %1403, %1427
  %1430 = fadd fast float %1404, %1428
  %1431 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1364, float %1368, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1432 = extractvalue %dx.types.ResRet.f32 %1431, 0
  %1433 = extractvalue %dx.types.ResRet.f32 %1431, 1
  %1434 = extractvalue %dx.types.ResRet.f32 %1431, 2
  %1435 = extractvalue %dx.types.ResRet.f32 %1431, 3
  %1436 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1364, float %1368, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1437 = extractvalue %dx.types.ResRet.f32 %1436, 0
  %1438 = extractvalue %dx.types.ResRet.f32 %1436, 1
  %1439 = extractvalue %dx.types.ResRet.f32 %1436, 2
  %1440 = extractvalue %dx.types.ResRet.f32 %1436, 3
  %1441 = fmul fast float %1432, %1359
  %1442 = fmul fast float %1437, %1359
  %1443 = fmul fast float %1439, %1359
  %1444 = fmul fast float %1435, %1359
  %1445 = fadd fast float %1419, %1441
  %1446 = fadd fast float %1420, %1442
  %1447 = fadd fast float %1421, %1443
  %1448 = fadd fast float %1422, %1444
  %1449 = fmul fast float %1433, %1359
  %1450 = fmul fast float %1438, %1359
  %1451 = fadd fast float %1425, %1449
  %1452 = fadd fast float %1426, %1450
  %1453 = fmul fast float %1434, %1359
  %1454 = fmul fast float %1440, %1359
  %1455 = fadd fast float %1429, %1453
  %1456 = fadd fast float %1430, %1454
  %1457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1458 = extractvalue %dx.types.CBufRet.f32 %1457, 0
  %1459 = fsub fast float %336, %1458
  %1460 = fsub fast float %1301, %336
  %1461 = call float @dx.op.binary.f32(i32 35, float %1460, float %1459)  ; FMax(a,b)
  %1462 = extractvalue %dx.types.CBufRet.f32 %1457, 1
  %1463 = fsub fast float %337, %1462
  %1464 = fsub fast float %1302, %337
  %1465 = call float @dx.op.binary.f32(i32 35, float %1464, float %1463)  ; FMax(a,b)
  %1466 = call float @dx.op.binary.f32(i32 35, float %1461, float %1465)  ; FMax(a,b)
  %1467 = extractvalue %dx.types.CBufRet.f32 %1305, 3
  %1468 = fmul fast float %1467, %1466
  %1469 = call float @dx.op.unary.f32(i32 7, float %1468)  ; Saturate(value)
  %1470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1471 = extractvalue %dx.types.CBufRet.f32 %1470, 0
  %1472 = extractvalue %dx.types.CBufRet.f32 %1470, 1
  %1473 = extractvalue %dx.types.CBufRet.f32 %1470, 2
  %1474 = extractvalue %dx.types.CBufRet.f32 %1470, 3
  %1475 = fsub fast float %1471, %1445
  %1476 = fsub fast float %1472, %1446
  %1477 = fsub fast float %1473, %1447
  %1478 = fsub fast float %1474, %1448
  %1479 = fmul fast float %1475, %1469
  %1480 = fmul fast float %1476, %1469
  %1481 = fmul fast float %1477, %1469
  %1482 = fmul fast float %1478, %1469
  %1483 = fadd fast float %1479, %1445
  %1484 = fadd fast float %1480, %1446
  %1485 = fadd fast float %1481, %1447
  %1486 = fadd fast float %1482, %1448
  %1487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1488 = extractvalue %dx.types.CBufRet.f32 %1487, 0
  %1489 = extractvalue %dx.types.CBufRet.f32 %1487, 1
  %1490 = fsub fast float %1488, %1451
  %1491 = fsub fast float %1489, %1452
  %1492 = fmul fast float %1490, %1469
  %1493 = fmul fast float %1491, %1469
  %1494 = fadd fast float %1492, %1451
  %1495 = fadd fast float %1493, %1452
  %1496 = extractvalue %dx.types.CBufRet.f32 %1487, 2
  %1497 = extractvalue %dx.types.CBufRet.f32 %1487, 3
  %1498 = fsub fast float %1496, %1455
  %1499 = fsub fast float %1497, %1456
  %1500 = fmul fast float %1498, %1469
  %1501 = fmul fast float %1499, %1469
  %1502 = fadd fast float %1500, %1455
  %1503 = fadd fast float %1501, %1456
  %1504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1505 = extractvalue %dx.types.CBufRet.f32 %1504, 0
  %1506 = fmul fast float %1505, %1483
  %1507 = fmul fast float %1505, %1484
  %1508 = fmul fast float %1505, %1485
  %1509 = fmul fast float %1505, %1486
  %1510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1511 = extractvalue %dx.types.CBufRet.f32 %1510, 0
  %1512 = fmul fast float %1511, %1494
  %1513 = fmul fast float %1511, %1495
  %1514 = fadd fast float %1512, %1506
  %1515 = fadd fast float %1513, %1508
  %1516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1517 = extractvalue %dx.types.CBufRet.f32 %1516, 0
  %1518 = fmul fast float %1517, %1502
  %1519 = fmul fast float %1517, %1503
  %1520 = fadd fast float %1514, %1518
  %1521 = fadd fast float %1515, %1519
  %1522 = extractvalue %dx.types.CBufRet.f32 %1504, 1
  %1523 = fmul fast float %1522, %1483
  %1524 = fmul fast float %1522, %1484
  %1525 = fmul fast float %1522, %1485
  %1526 = fmul fast float %1522, %1486
  %1527 = extractvalue %dx.types.CBufRet.f32 %1510, 1
  %1528 = fmul fast float %1527, %1494
  %1529 = fmul fast float %1527, %1495
  %1530 = fadd fast float %1528, %1523
  %1531 = fadd fast float %1529, %1525
  %1532 = extractvalue %dx.types.CBufRet.f32 %1516, 1
  %1533 = fmul fast float %1532, %1502
  %1534 = fmul fast float %1532, %1503
  %1535 = fadd fast float %1530, %1533
  %1536 = fadd fast float %1531, %1534
  %1537 = extractvalue %dx.types.CBufRet.f32 %1504, 2
  %1538 = fmul fast float %1537, %1483
  %1539 = fmul fast float %1537, %1484
  %1540 = fmul fast float %1537, %1485
  %1541 = fmul fast float %1537, %1486
  %1542 = extractvalue %dx.types.CBufRet.f32 %1510, 2
  %1543 = fmul fast float %1542, %1494
  %1544 = fmul fast float %1542, %1495
  %1545 = fadd fast float %1543, %1538
  %1546 = fadd fast float %1544, %1540
  %1547 = extractvalue %dx.types.CBufRet.f32 %1516, 2
  %1548 = fmul fast float %1547, %1502
  %1549 = fmul fast float %1547, %1503
  %1550 = fadd fast float %1545, %1548
  %1551 = fadd fast float %1546, %1549
  %1552 = fmul fast float %1539, %1539
  %1553 = fmul fast float %1551, %1551
  %1554 = fmul fast float %1541, %1541
  %1555 = fadd fast float %1554, %1552
  %1556 = fadd fast float %1555, %1553
  %1557 = call float @dx.op.unary.f32(i32 24, float %1556)  ; Sqrt(value)
  %1558 = fcmp fast ugt float %1557, 0.000000e+00
  br i1 %1558, label %1559, label %1574, !dx.controlflow.hints !79

; <label>:1559                                    ; preds = %1299
  %1560 = fsub fast float -0.000000e+00, %1541
  %1561 = fdiv fast float %1560, %1557
  %1562 = fsub fast float -0.000000e+00, %1539
  %1563 = fdiv fast float %1562, %1557
  %1564 = fdiv fast float %1551, %1557
  %1565 = fmul fast float %1550, 0x3FE279A760000000
  %1566 = fmul fast float %1563, %1539
  %1567 = fmul fast float %1564, %1551
  %1568 = fmul fast float %1561, %1541
  %1569 = fadd fast float %1566, %1568
  %1570 = fsub fast float %1569, %1567
  %1571 = call float @dx.op.unary.f32(i32 6, float %1570)  ; FAbs(value)
  %1572 = fadd fast float %1571, 0x3DDB7CDFE0000000
  %1573 = fdiv fast float %1565, %1572
  br label %1574

; <label>:1574                                    ; preds = %1559, %1299
  %1575 = phi float [ %1573, %1559 ], [ 1.000000e+00, %1299 ]
  %1576 = fmul fast float %1524, %1524
  %1577 = fmul fast float %1536, %1536
  %1578 = fmul fast float %1526, %1526
  %1579 = fadd fast float %1578, %1576
  %1580 = fadd fast float %1579, %1577
  %1581 = call float @dx.op.unary.f32(i32 24, float %1580)  ; Sqrt(value)
  %1582 = fcmp fast ugt float %1581, 0.000000e+00
  br i1 %1582, label %1583, label %1598, !dx.controlflow.hints !79

; <label>:1583                                    ; preds = %1574
  %1584 = fsub fast float -0.000000e+00, %1526
  %1585 = fdiv fast float %1584, %1581
  %1586 = fsub fast float -0.000000e+00, %1524
  %1587 = fdiv fast float %1586, %1581
  %1588 = fdiv fast float %1536, %1581
  %1589 = fmul fast float %1535, 0x3FE279A760000000
  %1590 = fmul fast float %1587, %1524
  %1591 = fmul fast float %1588, %1536
  %1592 = fmul fast float %1585, %1526
  %1593 = fadd fast float %1590, %1592
  %1594 = fsub fast float %1593, %1591
  %1595 = call float @dx.op.unary.f32(i32 6, float %1594)  ; FAbs(value)
  %1596 = fadd fast float %1595, 0x3DDB7CDFE0000000
  %1597 = fdiv fast float %1589, %1596
  br label %1598

; <label>:1598                                    ; preds = %1583, %1574
  %1599 = phi float [ %1597, %1583 ], [ 1.000000e+00, %1574 ]
  %1600 = call float @dx.op.binary.f32(i32 36, float %1599, float %1575)  ; FMin(a,b)
  %1601 = fmul fast float %1507, %1507
  %1602 = fmul fast float %1521, %1521
  %1603 = fmul fast float %1509, %1509
  %1604 = fadd fast float %1603, %1601
  %1605 = fadd fast float %1604, %1602
  %1606 = call float @dx.op.unary.f32(i32 24, float %1605)  ; Sqrt(value)
  %1607 = fcmp fast ugt float %1606, 0.000000e+00
  br i1 %1607, label %1608, label %1623, !dx.controlflow.hints !79

; <label>:1608                                    ; preds = %1598
  %1609 = fsub fast float -0.000000e+00, %1509
  %1610 = fdiv fast float %1609, %1606
  %1611 = fsub fast float -0.000000e+00, %1507
  %1612 = fdiv fast float %1611, %1606
  %1613 = fdiv fast float %1521, %1606
  %1614 = fmul fast float %1520, 0x3FE279A760000000
  %1615 = fmul fast float %1612, %1507
  %1616 = fmul fast float %1613, %1521
  %1617 = fmul fast float %1610, %1509
  %1618 = fadd fast float %1615, %1617
  %1619 = fsub fast float %1618, %1616
  %1620 = call float @dx.op.unary.f32(i32 6, float %1619)  ; FAbs(value)
  %1621 = fadd fast float %1620, 0x3DDB7CDFE0000000
  %1622 = fdiv fast float %1614, %1621
  br label %1623

; <label>:1623                                    ; preds = %1608, %1598
  %1624 = phi float [ %1622, %1608 ], [ 1.000000e+00, %1598 ]
  %1625 = call float @dx.op.binary.f32(i32 36, float %1624, float %1600)  ; FMin(a,b)
  %1626 = call float @dx.op.unary.f32(i32 7, float %1625)  ; Saturate(value)
  %1627 = fcmp fast olt float %1626, 1.000000e+00
  br i1 %1627, label %1628, label %1638, !dx.controlflow.hints !80

; <label>:1628                                    ; preds = %1623
  %1629 = fmul fast float %1626, %1507
  %1630 = fmul fast float %1626, %1521
  %1631 = fmul fast float %1626, %1509
  %1632 = fmul fast float %1626, %1524
  %1633 = fmul fast float %1626, %1536
  %1634 = fmul fast float %1626, %1526
  %1635 = fmul fast float %1626, %1539
  %1636 = fmul fast float %1626, %1551
  %1637 = fmul fast float %1626, %1541
  br label %1638

; <label>:1638                                    ; preds = %1628, %1623
  %1639 = phi float [ %1635, %1628 ], [ %1539, %1623 ]
  %1640 = phi float [ %1636, %1628 ], [ %1551, %1623 ]
  %1641 = phi float [ %1637, %1628 ], [ %1541, %1623 ]
  %1642 = phi float [ %1632, %1628 ], [ %1524, %1623 ]
  %1643 = phi float [ %1633, %1628 ], [ %1536, %1623 ]
  %1644 = phi float [ %1634, %1628 ], [ %1526, %1623 ]
  %1645 = phi float [ %1629, %1628 ], [ %1507, %1623 ]
  %1646 = phi float [ %1630, %1628 ], [ %1521, %1623 ]
  %1647 = phi float [ %1631, %1628 ], [ %1509, %1623 ]
  %1648 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1520)  ; FMax(a,b)
  %1649 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1535)  ; FMax(a,b)
  %1650 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1550)  ; FMax(a,b)
  %1651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1652 = extractvalue %dx.types.CBufRet.f32 %1651, 0
  %1653 = fcmp fast ogt float %1652, 0.000000e+00
  %1654 = fcmp fast oge float %1308, 0.000000e+00
  %1655 = and i1 %1654, %1653
  %1656 = fcmp fast ole float %1308, 1.000000e+00
  %1657 = and i1 %1656, %1655
  %1658 = fcmp fast oge float %1309, 0.000000e+00
  %1659 = and i1 %1658, %1657
  %1660 = fcmp fast ole float %1309, 1.000000e+00
  %1661 = and i1 %1660, %1659
  br i1 %1661, label %1662, label %1807, !dx.controlflow.hints !81

; <label>:1662                                    ; preds = %1638
  %1663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1664 = extractvalue %dx.types.CBufRet.f32 %1663, 2
  %1665 = extractvalue %dx.types.CBufRet.f32 %1663, 3
  %1666 = fmul fast float %1664, %1308
  %1667 = fmul fast float %1665, %1309
  %1668 = call float @dx.op.unary.f32(i32 27, float %1666)  ; Round_ni(value)
  %1669 = call float @dx.op.unary.f32(i32 27, float %1667)  ; Round_ni(value)
  %1670 = fptosi float %1668 to i32
  %1671 = fptosi float %1669 to i32
  %1672 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %1670, i32 %1671, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1673 = extractvalue %dx.types.ResRet.i32 %1672, 0
  %1674 = and i32 %1673, 65535
  %1675 = lshr i32 %1673, 16
  %1676 = icmp eq i32 %1674, 65535
  br i1 %1676, label %1713, label %1677, !dx.controlflow.hints !82

; <label>:1677                                    ; preds = %1662
  %1678 = extractvalue %dx.types.CBufRet.f32 %1651, 1
  %1679 = extractvalue %dx.types.CBufRet.f32 %1663, 0
  %1680 = extractvalue %dx.types.CBufRet.f32 %1663, 1
  %1681 = fmul fast float %1679, %1308
  %1682 = fmul fast float %1680, %1309
  %1683 = fmul fast float %1681, 1.250000e-01
  %1684 = fmul fast float %1682, 1.250000e-01
  %1685 = call float @dx.op.unary.f32(i32 27, float %1683)  ; Round_ni(value)
  %1686 = call float @dx.op.unary.f32(i32 27, float %1684)  ; Round_ni(value)
  %1687 = fmul fast float %1685, 8.000000e+00
  %1688 = fmul fast float %1686, 8.000000e+00
  %1689 = and i32 %1673, 255
  %1690 = lshr i32 %1673, 8
  %1691 = and i32 %1690, 255
  %1692 = mul nuw nsw i32 %1689, 9
  %1693 = uitofp i32 %1692 to float
  %1694 = mul nuw nsw i32 %1691, 9
  %1695 = uitofp i32 %1694 to float
  %1696 = fadd fast float %1693, 5.000000e-01
  %1697 = fadd fast float %1696, %1681
  %1698 = fsub fast float %1697, %1687
  %1699 = fadd fast float %1695, 5.000000e-01
  %1700 = fadd fast float %1699, %1682
  %1701 = fsub fast float %1700, %1688
  %1702 = fdiv fast float %1698, %1652
  %1703 = fdiv fast float %1701, %1678
  %1704 = fmul fast float %1336, 4.375000e-01
  %1705 = fadd fast float %1704, 3.125000e-02
  %1706 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %25, float %1702, float %1703, float %1705, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1707 = extractvalue %dx.types.ResRet.f32 %1706, 0
  %1708 = extractvalue %dx.types.ResRet.f32 %1706, 1
  %1709 = extractvalue %dx.types.ResRet.f32 %1706, 2
  %1710 = fadd fast float %1707, %1648
  %1711 = fadd fast float %1708, %1649
  %1712 = fadd fast float %1709, %1650
  br label %1713

; <label>:1713                                    ; preds = %1677, %1662
  %1714 = phi float [ %1712, %1677 ], [ %1650, %1662 ]
  %1715 = phi float [ %1711, %1677 ], [ %1649, %1662 ]
  %1716 = phi float [ %1710, %1677 ], [ %1648, %1662 ]
  %1717 = icmp eq i32 %1675, 65535
  br i1 %1717, label %1807, label %1718, !dx.controlflow.hints !83

; <label>:1718                                    ; preds = %1713
  %1719 = extractvalue %dx.types.CBufRet.f32 %1651, 1
  %1720 = extractvalue %dx.types.CBufRet.f32 %1663, 0
  %1721 = extractvalue %dx.types.CBufRet.f32 %1663, 1
  %1722 = fmul fast float %1720, %1308
  %1723 = fmul fast float %1721, %1309
  %1724 = fmul fast float %1722, 1.250000e-01
  %1725 = fmul fast float %1723, 1.250000e-01
  %1726 = call float @dx.op.unary.f32(i32 27, float %1724)  ; Round_ni(value)
  %1727 = call float @dx.op.unary.f32(i32 27, float %1725)  ; Round_ni(value)
  %1728 = fmul fast float %1726, 8.000000e+00
  %1729 = fmul fast float %1727, 8.000000e+00
  %1730 = fsub fast float %1722, %1728
  %1731 = fsub fast float %1723, %1729
  %1732 = fadd fast float %1730, 5.000000e-01
  %1733 = fadd fast float %1731, 5.000000e-01
  %1734 = and i32 %1675, 255
  %1735 = lshr i32 %1673, 24
  %1736 = mul nuw nsw i32 %1734, 9
  %1737 = uitofp i32 %1736 to float
  %1738 = mul nuw nsw i32 %1735, 9
  %1739 = uitofp i32 %1738 to float
  %1740 = fadd fast float %1732, %1737
  %1741 = fadd fast float %1733, %1739
  %1742 = fdiv fast float %1740, %1652
  %1743 = fdiv fast float %1741, %1719
  %1744 = fmul fast float %1336, 4.375000e-01
  %1745 = fadd fast float %1744, 3.125000e-02
  %1746 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %25, float %1742, float %1743, float %1745, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1747 = extractvalue %dx.types.ResRet.f32 %1746, 0
  %1748 = extractvalue %dx.types.ResRet.f32 %1746, 1
  %1749 = extractvalue %dx.types.ResRet.f32 %1746, 2
  %1750 = fadd fast float %1744, 5.312500e-01
  %1751 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %25, float %1742, float %1743, float %1750, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1752 = extractvalue %dx.types.ResRet.f32 %1751, 0
  %1753 = extractvalue %dx.types.ResRet.f32 %1751, 1
  %1754 = extractvalue %dx.types.ResRet.f32 %1751, 2
  %1755 = fmul fast float %1752, 2.000000e+00
  %1756 = fmul fast float %1753, 2.000000e+00
  %1757 = fmul fast float %1754, 2.000000e+00
  %1758 = fadd fast float %1755, -1.000000e+00
  %1759 = fadd fast float %1756, -1.000000e+00
  %1760 = fadd fast float %1757, -1.000000e+00
  %1761 = fmul fast float %1758, %1758
  %1762 = fmul fast float %1759, %1759
  %1763 = fadd fast float %1761, %1762
  %1764 = fmul fast float %1760, %1760
  %1765 = fadd fast float %1763, %1764
  %1766 = call float @dx.op.unary.f32(i32 24, float %1765)  ; Sqrt(value)
  %1767 = fcmp fast ogt float %1766, 0.000000e+00
  br i1 %1767, label %1768, label %1772, !dx.controlflow.hints !84

; <label>:1768                                    ; preds = %1718
  %1769 = fdiv fast float %1758, %1766
  %1770 = fdiv fast float %1759, %1766
  %1771 = fdiv fast float %1760, %1766
  br label %1772

; <label>:1772                                    ; preds = %1768, %1718
  %1773 = phi float [ %1769, %1768 ], [ 0.000000e+00, %1718 ]
  %1774 = phi float [ %1770, %1768 ], [ 0.000000e+00, %1718 ]
  %1775 = phi float [ %1771, %1768 ], [ 0.000000e+00, %1718 ]
  %1776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1777 = extractvalue %dx.types.CBufRet.f32 %1776, 0
  %1778 = extractvalue %dx.types.CBufRet.f32 %1776, 1
  %1779 = fsub fast float %336, %1777
  %1780 = fsub fast float %337, %1778
  %1781 = fmul fast float %1779, %1779
  %1782 = fmul fast float %1780, %1780
  %1783 = fadd fast float %1781, %1782
  %1784 = call float @dx.op.unary.f32(i32 24, float %1783)  ; Sqrt(value)
  %1785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1786 = extractvalue %dx.types.CBufRet.f32 %1785, 0
  %1787 = extractvalue %dx.types.CBufRet.f32 %1785, 1
  %1788 = fsub fast float %1784, %1786
  %1789 = fdiv fast float %1788, %1787
  %1790 = call float @dx.op.unary.f32(i32 7, float %1789)  ; Saturate(value)
  %1791 = fmul fast float %1790, 2.000000e+00
  %1792 = fsub fast float 3.000000e+00, %1791
  %1793 = fmul fast float %1790, %1790
  %1794 = fmul fast float %1793, %1792
  %1795 = call float @dx.op.dot3.f32(i32 55, float %1773, float %1774, float %1775, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1796 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1795)  ; FMax(a,b)
  %1797 = fmul fast float %1796, 0x400C5BF8A0000000
  %1798 = fmul fast float %1794, %1747
  %1799 = fmul fast float %1798, %1797
  %1800 = fadd fast float %1799, %1716
  %1801 = fmul fast float %1794, %1748
  %1802 = fmul fast float %1801, %1797
  %1803 = fadd fast float %1802, %1715
  %1804 = fmul fast float %1794, %1749
  %1805 = fmul fast float %1804, %1797
  %1806 = fadd fast float %1805, %1714
  br label %1807

; <label>:1807                                    ; preds = %1772, %1713, %1638
  %1808 = phi float [ %1806, %1772 ], [ %1714, %1713 ], [ %1650, %1638 ]
  %1809 = phi float [ %1803, %1772 ], [ %1715, %1713 ], [ %1649, %1638 ]
  %1810 = phi float [ %1800, %1772 ], [ %1716, %1713 ], [ %1648, %1638 ]
  %1811 = fcmp fast ogt float %338, %1332
  %1812 = and i1 %1654, %1811
  %1813 = and i1 %1656, %1812
  %1814 = and i1 %1658, %1813
  %1815 = and i1 %1660, %1814
  br i1 %1815, label %1816, label %1873, !dx.controlflow.hints !85

; <label>:1816                                    ; preds = %1807
  %1817 = fmul fast float %1334, 0x3FC24924A0000000
  %1818 = fsub fast float %338, %1332
  %1819 = fdiv fast float %1818, %1817
  %1820 = call float @dx.op.unary.f32(i32 7, float %1819)  ; Saturate(value)
  %1821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1822 = extractvalue %dx.types.CBufRet.f32 %1821, 0
  %1823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1824 = extractvalue %dx.types.CBufRet.f32 %1823, 0
  %1825 = extractvalue %dx.types.CBufRet.f32 %1823, 1
  %1826 = extractvalue %dx.types.CBufRet.f32 %1823, 2
  %1827 = fsub fast float %1822, %1810
  %1828 = fsub fast float %1824, %1645
  %1829 = fsub fast float %1825, %1646
  %1830 = fsub fast float %1826, %1647
  %1831 = fmul fast float %1827, %1820
  %1832 = fmul fast float %1828, %1820
  %1833 = fmul fast float %1829, %1820
  %1834 = fmul fast float %1830, %1820
  %1835 = fadd fast float %1831, %1810
  %1836 = fadd fast float %1832, %1645
  %1837 = fadd fast float %1833, %1646
  %1838 = fadd fast float %1834, %1647
  %1839 = extractvalue %dx.types.CBufRet.f32 %1821, 1
  %1840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1841 = extractvalue %dx.types.CBufRet.f32 %1840, 0
  %1842 = extractvalue %dx.types.CBufRet.f32 %1840, 1
  %1843 = extractvalue %dx.types.CBufRet.f32 %1840, 2
  %1844 = fsub fast float %1839, %1809
  %1845 = fsub fast float %1841, %1642
  %1846 = fsub fast float %1842, %1643
  %1847 = fsub fast float %1843, %1644
  %1848 = fmul fast float %1844, %1820
  %1849 = fmul fast float %1845, %1820
  %1850 = fmul fast float %1846, %1820
  %1851 = fmul fast float %1847, %1820
  %1852 = fadd fast float %1848, %1809
  %1853 = fadd fast float %1849, %1642
  %1854 = fadd fast float %1850, %1643
  %1855 = fadd fast float %1851, %1644
  %1856 = extractvalue %dx.types.CBufRet.f32 %1821, 2
  %1857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1858 = extractvalue %dx.types.CBufRet.f32 %1857, 0
  %1859 = extractvalue %dx.types.CBufRet.f32 %1857, 1
  %1860 = extractvalue %dx.types.CBufRet.f32 %1857, 2
  %1861 = fsub fast float %1856, %1808
  %1862 = fsub fast float %1858, %1639
  %1863 = fsub fast float %1859, %1640
  %1864 = fsub fast float %1860, %1641
  %1865 = fmul fast float %1861, %1820
  %1866 = fmul fast float %1862, %1820
  %1867 = fmul fast float %1863, %1820
  %1868 = fmul fast float %1864, %1820
  %1869 = fadd fast float %1865, %1808
  %1870 = fadd fast float %1866, %1639
  %1871 = fadd fast float %1867, %1640
  %1872 = fadd fast float %1868, %1641
  br label %1873

; <label>:1873                                    ; preds = %1816, %1807
  %1874 = phi float [ %1869, %1816 ], [ %1808, %1807 ]
  %1875 = phi float [ %1870, %1816 ], [ %1639, %1807 ]
  %1876 = phi float [ %1871, %1816 ], [ %1640, %1807 ]
  %1877 = phi float [ %1872, %1816 ], [ %1641, %1807 ]
  %1878 = phi float [ %1852, %1816 ], [ %1809, %1807 ]
  %1879 = phi float [ %1853, %1816 ], [ %1642, %1807 ]
  %1880 = phi float [ %1854, %1816 ], [ %1643, %1807 ]
  %1881 = phi float [ %1855, %1816 ], [ %1644, %1807 ]
  %1882 = phi float [ %1835, %1816 ], [ %1810, %1807 ]
  %1883 = phi float [ %1836, %1816 ], [ %1645, %1807 ]
  %1884 = phi float [ %1837, %1816 ], [ %1646, %1807 ]
  %1885 = phi float [ %1838, %1816 ], [ %1647, %1807 ]
  %1886 = extractvalue %dx.types.CBufRet.f32 %1457, 3
  %1887 = fmul fast float %1886, %1882
  %1888 = fmul fast float %1886, %1878
  %1889 = fmul fast float %1886, %1874
  %1890 = fmul fast float %1883, 1.500000e+00
  %1891 = fmul fast float %1890, %1886
  %1892 = fmul fast float %1884, 1.500000e+00
  %1893 = fmul fast float %1892, %1886
  %1894 = fmul fast float %1885, 1.500000e+00
  %1895 = fmul fast float %1894, %1886
  %1896 = fmul fast float %1879, 1.500000e+00
  %1897 = fmul fast float %1896, %1886
  %1898 = fmul fast float %1880, 1.500000e+00
  %1899 = fmul fast float %1898, %1886
  %1900 = fmul fast float %1881, 1.500000e+00
  %1901 = fmul fast float %1900, %1886
  %1902 = fmul fast float %1875, 1.500000e+00
  %1903 = fmul fast float %1902, %1886
  %1904 = fmul fast float %1876, 1.500000e+00
  %1905 = fmul fast float %1904, %1886
  %1906 = fmul fast float %1877, 1.500000e+00
  %1907 = fmul fast float %1906, %1886
  %1908 = fsub fast float %1297, %1887
  %1909 = fmul fast float %1908, %1195
  %1910 = fadd fast float %1909, %1887
  %1911 = fsub fast float %1296, %1891
  %1912 = fmul fast float %1911, %1195
  %1913 = fadd fast float %1912, %1891
  %1914 = fsub fast float %1295, %1893
  %1915 = fmul fast float %1914, %1195
  %1916 = fadd fast float %1915, %1893
  %1917 = fsub fast float %1294, %1895
  %1918 = fmul fast float %1917, %1195
  %1919 = fadd fast float %1918, %1895
  %1920 = fmul fast float %1293, %1195
  %1921 = fmul fast float %1292, %1195
  %1922 = fmul fast float %1291, %1195
  %1923 = fmul fast float %1290, %1195
  %1924 = fmul fast float %1289, %1195
  %1925 = fsub fast float %1288, %1888
  %1926 = fmul fast float %1925, %1195
  %1927 = fadd fast float %1926, %1888
  %1928 = fsub fast float %1287, %1897
  %1929 = fmul fast float %1928, %1195
  %1930 = fadd fast float %1929, %1897
  %1931 = fsub fast float %1286, %1899
  %1932 = fmul fast float %1931, %1195
  %1933 = fadd fast float %1932, %1899
  %1934 = fsub fast float %1285, %1901
  %1935 = fmul fast float %1934, %1195
  %1936 = fadd fast float %1935, %1901
  %1937 = fmul fast float %1284, %1195
  %1938 = fmul fast float %1283, %1195
  %1939 = fmul fast float %1282, %1195
  %1940 = fmul fast float %1281, %1195
  %1941 = fmul fast float %1280, %1195
  %1942 = fsub fast float %1279, %1889
  %1943 = fmul fast float %1942, %1195
  %1944 = fadd fast float %1943, %1889
  %1945 = fsub fast float %1278, %1903
  %1946 = fmul fast float %1945, %1195
  %1947 = fadd fast float %1946, %1903
  %1948 = fsub fast float %1277, %1905
  %1949 = fmul fast float %1948, %1195
  %1950 = fadd fast float %1949, %1905
  %1951 = fsub fast float %1276, %1907
  %1952 = fmul fast float %1951, %1195
  %1953 = fadd fast float %1952, %1907
  %1954 = fmul fast float %1275, %1195
  %1955 = fmul fast float %1274, %1195
  %1956 = fmul fast float %1273, %1195
  %1957 = fmul fast float %1272, %1195
  %1958 = fmul fast float %1271, %1195
  br label %1959

; <label>:1959                                    ; preds = %1873, %1270
  %1960 = phi float [ %1958, %1873 ], [ %1271, %1270 ]
  %1961 = phi float [ %1957, %1873 ], [ %1272, %1270 ]
  %1962 = phi float [ %1956, %1873 ], [ %1273, %1270 ]
  %1963 = phi float [ %1955, %1873 ], [ %1274, %1270 ]
  %1964 = phi float [ %1954, %1873 ], [ %1275, %1270 ]
  %1965 = phi float [ %1953, %1873 ], [ %1276, %1270 ]
  %1966 = phi float [ %1950, %1873 ], [ %1277, %1270 ]
  %1967 = phi float [ %1947, %1873 ], [ %1278, %1270 ]
  %1968 = phi float [ %1944, %1873 ], [ %1279, %1270 ]
  %1969 = phi float [ %1941, %1873 ], [ %1280, %1270 ]
  %1970 = phi float [ %1940, %1873 ], [ %1281, %1270 ]
  %1971 = phi float [ %1939, %1873 ], [ %1282, %1270 ]
  %1972 = phi float [ %1938, %1873 ], [ %1283, %1270 ]
  %1973 = phi float [ %1937, %1873 ], [ %1284, %1270 ]
  %1974 = phi float [ %1936, %1873 ], [ %1285, %1270 ]
  %1975 = phi float [ %1933, %1873 ], [ %1286, %1270 ]
  %1976 = phi float [ %1930, %1873 ], [ %1287, %1270 ]
  %1977 = phi float [ %1927, %1873 ], [ %1288, %1270 ]
  %1978 = phi float [ %1924, %1873 ], [ %1289, %1270 ]
  %1979 = phi float [ %1923, %1873 ], [ %1290, %1270 ]
  %1980 = phi float [ %1922, %1873 ], [ %1291, %1270 ]
  %1981 = phi float [ %1921, %1873 ], [ %1292, %1270 ]
  %1982 = phi float [ %1920, %1873 ], [ %1293, %1270 ]
  %1983 = phi float [ %1919, %1873 ], [ %1294, %1270 ]
  %1984 = phi float [ %1916, %1873 ], [ %1295, %1270 ]
  %1985 = phi float [ %1913, %1873 ], [ %1296, %1270 ]
  %1986 = phi float [ %1910, %1873 ], [ %1297, %1270 ]
  %1987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1988 = extractvalue %dx.types.CBufRet.f32 %1987, 2
  %1989 = fmul fast float %1988, %1988
  %1990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1991 = extractvalue %dx.types.CBufRet.f32 %1990, 0
  %1992 = extractvalue %dx.types.CBufRet.f32 %1990, 1
  %1993 = extractvalue %dx.types.CBufRet.f32 %1990, 2
  %1994 = fmul fast float %1986, 0x3FD20DD760000000
  %1995 = fmul fast float %1993, %1984
  %1996 = fmul fast float %1993, %1993
  %1997 = fmul fast float %1996, 0x3FEE471020000000
  %1998 = fadd fast float %1997, 0xBFD42F6020000000
  %1999 = fmul fast float %1998, %1980
  %2000 = fmul fast float %1991, %1983
  %2001 = fmul fast float %1992, %1985
  %2002 = fmul fast float %1993, 0x3FF17B1420000000
  %2003 = fmul fast float %1989, %1979
  %2004 = fmul fast float %2003, %1991
  %2005 = fmul fast float %2004, %2002
  %2006 = fmul fast float %1989, %1981
  %2007 = fmul fast float %2006, %1992
  %2008 = fmul fast float %2007, %2002
  %2009 = fmul fast float %1991, %1991
  %2010 = fmul fast float %1992, %1992
  %2011 = fsub fast float %2009, %2010
  %2012 = fmul fast float %1978, 0x3FE17B1420000000
  %2013 = fmul fast float %2012, %2011
  %2014 = fmul fast float %1982, 0x3FF17B1420000000
  %2015 = fmul fast float %2014, %1992
  %2016 = fmul fast float %2015, %1991
  %2017 = fadd fast float %2013, %2016
  %2018 = fadd fast float %2017, %1999
  %2019 = fmul fast float %2018, %1989
  %2020 = fsub fast float %2001, %1995
  %2021 = fadd fast float %2020, %2000
  %2022 = fmul fast float %2021, 0x3FDF454380000000
  %2023 = fmul fast float %2022, %1988
  %2024 = fsub fast float %1994, %2005
  %2025 = fsub fast float %2024, %2008
  %2026 = fadd fast float %2025, %2019
  %2027 = fadd fast float %2026, %2023
  %2028 = fmul fast float %1977, 0x3FD20DD760000000
  %2029 = fmul fast float %1993, %1975
  %2030 = fmul fast float %1998, %1971
  %2031 = fmul fast float %1991, %1974
  %2032 = fmul fast float %1992, %1976
  %2033 = fmul fast float %1989, %1970
  %2034 = fmul fast float %2033, %1991
  %2035 = fmul fast float %2034, %2002
  %2036 = fmul fast float %1989, %1972
  %2037 = fmul fast float %2036, %1992
  %2038 = fmul fast float %2037, %2002
  %2039 = fmul fast float %1969, 0x3FE17B1420000000
  %2040 = fmul fast float %2039, %2011
  %2041 = fmul fast float %1973, 0x3FF17B1420000000
  %2042 = fmul fast float %2041, %1992
  %2043 = fmul fast float %2042, %1991
  %2044 = fadd fast float %2040, %2043
  %2045 = fadd fast float %2044, %2030
  %2046 = fmul fast float %2045, %1989
  %2047 = fsub fast float %2032, %2029
  %2048 = fadd fast float %2047, %2031
  %2049 = fmul fast float %2048, 0x3FDF454380000000
  %2050 = fmul fast float %2049, %1988
  %2051 = fsub fast float %2028, %2035
  %2052 = fsub fast float %2051, %2038
  %2053 = fadd fast float %2052, %2046
  %2054 = fadd fast float %2053, %2050
  %2055 = fmul fast float %1968, 0x3FD20DD760000000
  %2056 = fmul fast float %1993, %1966
  %2057 = fmul fast float %1998, %1962
  %2058 = fmul fast float %1991, %1965
  %2059 = fmul fast float %1992, %1967
  %2060 = fmul fast float %1989, %1961
  %2061 = fmul fast float %2060, %1991
  %2062 = fmul fast float %2061, %2002
  %2063 = fmul fast float %1989, %1963
  %2064 = fmul fast float %2063, %1992
  %2065 = fmul fast float %2064, %2002
  %2066 = fmul fast float %1960, 0x3FE17B1420000000
  %2067 = fmul fast float %2066, %2011
  %2068 = fmul fast float %1964, 0x3FF17B1420000000
  %2069 = fmul fast float %2068, %1992
  %2070 = fmul fast float %2069, %1991
  %2071 = fadd fast float %2067, %2070
  %2072 = fadd fast float %2071, %2057
  %2073 = fmul fast float %2072, %1989
  %2074 = fsub fast float %2059, %2056
  %2075 = fadd fast float %2074, %2058
  %2076 = fmul fast float %2075, 0x3FDF454380000000
  %2077 = fmul fast float %2076, %1988
  %2078 = fsub fast float %2055, %2062
  %2079 = fsub fast float %2078, %2065
  %2080 = fadd fast float %2079, %2073
  %2081 = fadd fast float %2080, %2077
  %2082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2083 = extractvalue %dx.types.CBufRet.f32 %2082, 3
  %2084 = extractvalue %dx.types.CBufRet.f32 %1136, 0
  %2085 = fmul fast float %2084, %2083
  %2086 = fmul fast float %2085, %2027
  %2087 = fmul fast float %2085, %2054
  %2088 = fmul fast float %2085, %2081
  %2089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2090 = extractvalue %dx.types.CBufRet.f32 %2089, 3
  %2091 = fcmp fast une float %2090, 0.000000e+00
  %2092 = extractvalue %dx.types.CBufRet.f32 %2089, 0
  %2093 = extractvalue %dx.types.CBufRet.f32 %2089, 1
  %2094 = extractvalue %dx.types.CBufRet.f32 %2089, 2
  br i1 %2091, label %2095, label %2117, !dx.controlflow.hints !86

; <label>:2095                                    ; preds = %1959
  %2096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2097 = extractvalue %dx.types.CBufRet.f32 %2096, 0
  %2098 = extractvalue %dx.types.CBufRet.f32 %2096, 1
  %2099 = extractvalue %dx.types.CBufRet.f32 %2096, 2
  %2100 = call float @dx.op.dot3.f32(i32 55, float %2092, float %2093, float %2094, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %2101 = fcmp fast ogt float %1146, 0.000000e+00
  %2102 = select i1 %2101, float 1.000000e+00, float -1.000000e+00
  %2103 = fmul fast float %2102, 5.000000e-01
  %2104 = fmul fast float %2103, %2100
  %2105 = fmul fast float %2102, %1146
  %2106 = fadd fast float %2104, 4.921875e-01
  %2107 = fadd fast float %2105, -3.125000e-02
  %2108 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %25, float %2106, float 0x3FB25F3060000000, float %2107, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2109 = extractvalue %dx.types.ResRet.f32 %2108, 0
  %2110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %2111 = extractvalue %dx.types.CBufRet.f32 %2110, 0
  %2112 = fmul fast float %2109, 0x400921FB60000000
  %2113 = fmul fast float %2112, %2111
  %2114 = fmul fast float %2113, %2097
  %2115 = fmul fast float %2113, %2098
  %2116 = fmul fast float %2113, %2099
  br label %2117

; <label>:2117                                    ; preds = %2095, %1959
  %2118 = phi float [ %2114, %2095 ], [ 0.000000e+00, %1959 ]
  %2119 = phi float [ %2115, %2095 ], [ 0.000000e+00, %1959 ]
  %2120 = phi float [ %2116, %2095 ], [ 0.000000e+00, %1959 ]
  %2121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %2122 = extractvalue %dx.types.CBufRet.f32 %2121, 0
  %2123 = fmul fast float %2122, %2092
  %2124 = fmul fast float %2122, %2093
  %2125 = fmul fast float %2122, %2094
  %2126 = fadd fast float %2123, %336
  %2127 = fsub fast float -0.000000e+00, %2126
  %2128 = fadd fast float %2124, %337
  %2129 = fsub fast float -0.000000e+00, %2128
  %2130 = fadd fast float %2125, %338
  br i1 %351, label %2205, label %2131, !dx.controlflow.hints !51

; <label>:2131                                    ; preds = %2117
  %2132 = extractvalue %dx.types.CBufRet.f32 %2121, 1
  %2133 = fcmp fast ogt float %2132, %2122
  br i1 %2133, label %2134, label %2136, !dx.controlflow.hints !52

; <label>:2134                                    ; preds = %2131
  %2135 = fsub fast float %2132, %2122
  br label %2196

; <label>:2136                                    ; preds = %2131
  %2137 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %2138 = extractvalue %dx.types.CBufRet.i32 %2137, 3
  %2139 = icmp eq i32 %2138, 0
  %2140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %2141 = extractvalue %dx.types.CBufRet.f32 %2140, 2
  %2142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %2143 = extractvalue %dx.types.CBufRet.f32 %2142, 2
  %2144 = fsub fast float %2141, %2130
  %2145 = fadd fast float %2144, %2143
  %2146 = fsub fast float 0xC7EFFFFFE0000000, %2130
  br i1 %2139, label %2156, label %2147, !dx.controlflow.hints !42

; <label>:2147                                    ; preds = %2136
  %2148 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2127, float %2129, float %2145)  ; Dot3(ax,ay,az,bx,by,bz)
  %2149 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2092, float %2093, float %2094)  ; Dot3(ax,ay,az,bx,by,bz)
  %2150 = fdiv fast float 1.000000e+00, %2149
  %2151 = fmul fast float %2150, %2148
  %2152 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2127, float %2129, float %2146)  ; Dot3(ax,ay,az,bx,by,bz)
  %2153 = fmul fast float %2150, %2152
  %2154 = call float @dx.op.binary.f32(i32 36, float %2151, float %2153)  ; FMin(a,b)
  %2155 = call float @dx.op.binary.f32(i32 35, float %2151, float %2153)  ; FMax(a,b)
  br label %2189

; <label>:2156                                    ; preds = %2136
  %2157 = extractvalue %dx.types.CBufRet.f32 %2140, 0
  %2158 = extractvalue %dx.types.CBufRet.f32 %2140, 1
  %2159 = extractvalue %dx.types.CBufRet.f32 %2142, 0
  %2160 = extractvalue %dx.types.CBufRet.f32 %2142, 1
  %2161 = fdiv fast float 1.000000e+00, %2092
  %2162 = fdiv fast float 1.000000e+00, %2093
  %2163 = fdiv fast float 1.000000e+00, %2094
  %2164 = fsub fast float %2157, %2126
  %2165 = fmul fast float %2161, %2164
  %2166 = fadd fast float %2164, %2159
  %2167 = fmul fast float %2166, %2161
  %2168 = call float @dx.op.binary.f32(i32 36, float %2165, float %2167)  ; FMin(a,b)
  %2169 = call float @dx.op.binary.f32(i32 35, float %2165, float %2167)  ; FMax(a,b)
  %2170 = fsub fast float %2158, %2128
  %2171 = fmul fast float %2162, %2170
  %2172 = fadd fast float %2170, %2160
  %2173 = fmul fast float %2172, %2162
  %2174 = call float @dx.op.binary.f32(i32 36, float %2171, float %2173)  ; FMin(a,b)
  %2175 = call float @dx.op.binary.f32(i32 35, float %2168, float %2174)  ; FMax(a,b)
  %2176 = call float @dx.op.binary.f32(i32 35, float %2171, float %2173)  ; FMax(a,b)
  %2177 = call float @dx.op.binary.f32(i32 36, float %2169, float %2176)  ; FMin(a,b)
  %2178 = fmul fast float %2163, %2146
  %2179 = fmul fast float %2163, %2145
  %2180 = call float @dx.op.binary.f32(i32 36, float %2178, float %2179)  ; FMin(a,b)
  %2181 = call float @dx.op.binary.f32(i32 35, float %2175, float %2180)  ; FMax(a,b)
  %2182 = call float @dx.op.binary.f32(i32 35, float %2178, float %2179)  ; FMax(a,b)
  %2183 = call float @dx.op.binary.f32(i32 36, float %2177, float %2182)  ; FMin(a,b)
  %2184 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2181)  ; FMax(a,b)
  %2185 = fcmp fast ult float %2183, %2184
  br i1 %2185, label %2189, label %2186, !dx.controlflow.hints !43

; <label>:2186                                    ; preds = %2156
  %2187 = call float @dx.op.binary.f32(i32 36, float %2181, float %2183)  ; FMin(a,b)
  %2188 = call float @dx.op.binary.f32(i32 35, float %2181, float %2183)  ; FMax(a,b)
  br label %2189

; <label>:2189                                    ; preds = %2186, %2156, %2147
  %2190 = phi float [ %2154, %2147 ], [ %2187, %2186 ], [ 0.000000e+00, %2156 ]
  %2191 = phi float [ %2155, %2147 ], [ %2188, %2186 ], [ 0.000000e+00, %2156 ]
  %2192 = fcmp fast ogt float %2190, 0.000000e+00
  br i1 %2192, label %2196, label %2193, !dx.controlflow.hints !53

; <label>:2193                                    ; preds = %2189
  %2194 = fcmp fast ugt float %2191, 0.000000e+00
  br i1 %2194, label %2195, label %2196, !dx.controlflow.hints !54

; <label>:2195                                    ; preds = %2193
  br label %2196

; <label>:2196                                    ; preds = %2195, %2193, %2189, %2134
  %2197 = phi float [ %2135, %2134 ], [ 0.000000e+00, %2195 ], [ 0x47EFFFFFE0000000, %2193 ], [ %2190, %2189 ]
  %2198 = phi i32 [ %206, %2134 ], [ %206, %2195 ], [ 0, %2193 ], [ %206, %2189 ]
  %2199 = icmp ne i32 %2198, 0
  %2200 = zext i1 %2199 to i32
  %2201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2202 = extractvalue %dx.types.CBufRet.f32 %2201, 2
  %2203 = call float @dx.op.binary.f32(i32 35, float %2197, float %2202)  ; FMax(a,b)
  %2204 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %2203)  ; FMin(a,b)
  br label %2205

; <label>:2205                                    ; preds = %2196, %2117
  %2206 = phi float [ %2204, %2196 ], [ 0x47EFFFFFE0000000, %2117 ]
  %2207 = phi i32 [ %2200, %2196 ], [ 0, %2117 ]
  br i1 %524, label %2264, label %2208, !dx.controlflow.hints !60

; <label>:2208                                    ; preds = %2205
  %2209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %2210 = extractvalue %dx.types.CBufRet.f32 %2209, 0
  %2211 = extractvalue %dx.types.CBufRet.f32 %2209, 1
  %2212 = extractvalue %dx.types.CBufRet.f32 %2209, 2
  %2213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %2214 = extractvalue %dx.types.CBufRet.f32 %2213, 0
  %2215 = extractvalue %dx.types.CBufRet.f32 %2213, 1
  %2216 = extractvalue %dx.types.CBufRet.f32 %2213, 2
  %2217 = fsub fast float %2126, %2214
  %2218 = fsub fast float %2128, %2215
  %2219 = fsub fast float %2130, %2216
  %2220 = fmul fast float %2217, %2210
  %2221 = fmul fast float %2218, %2211
  %2222 = fmul fast float %2219, %2212
  %2223 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %2224 = extractvalue %dx.types.CBufRet.i32 %2223, 3
  %2225 = icmp eq i32 %2224, 0
  br i1 %2225, label %2229, label %2226, !dx.controlflow.hints !61

; <label>:2226                                    ; preds = %2208
  %2227 = call float @dx.op.unary.f32(i32 22, float %2220)  ; Frc(value)
  %2228 = call float @dx.op.unary.f32(i32 22, float %2221)  ; Frc(value)
  br label %2229

; <label>:2229                                    ; preds = %2226, %2208
  %2230 = phi float [ %2227, %2226 ], [ %2220, %2208 ]
  %2231 = phi float [ %2228, %2226 ], [ %2221, %2208 ]
  %2232 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %23, float %2230, float %2231, float %2222, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2233 = extractvalue %dx.types.ResRet.f32 %2232, 0
  %2234 = fmul fast float %2233, 2.000000e+00
  %2235 = fadd fast float %2234, -1.000000e+00
  %2236 = extractvalue %dx.types.CBufRet.f32 %2209, 3
  %2237 = fmul fast float %2235, %2236
  %2238 = fcmp fast olt float %2237, 0.000000e+00
  %2239 = fcmp fast oge float %2222, 0.000000e+00
  %2240 = fcmp fast ole float %2222, 1.000000e+00
  br i1 %2225, label %2243, label %2241, !dx.controlflow.hints !62

; <label>:2241                                    ; preds = %2229
  %2242 = and i1 %2239, %2240
  br label %2253

; <label>:2243                                    ; preds = %2229
  %2244 = fcmp fast oge float %2220, 0.000000e+00
  %2245 = fcmp fast oge float %2221, 0.000000e+00
  %2246 = and i1 %2244, %2245
  %2247 = and i1 %2239, %2246
  %2248 = fcmp fast ole float %2220, 1.000000e+00
  %2249 = fcmp fast ole float %2221, 1.000000e+00
  %2250 = and i1 %2248, %2249
  %2251 = and i1 %2240, %2250
  %2252 = and i1 %2247, %2251
  br label %2253

; <label>:2253                                    ; preds = %2243, %2241
  %2254 = phi i1 [ %2242, %2241 ], [ %2252, %2243 ]
  %2255 = and i1 %2238, %2254
  %2256 = call float @dx.op.unary.f32(i32 6, float %2237)  ; FAbs(value)
  %2257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %2258 = extractvalue %dx.types.CBufRet.f32 %2257, 1
  %2259 = extractvalue %dx.types.CBufRet.f32 %2257, 0
  %2260 = call float @dx.op.binary.f32(i32 35, float %2256, float %2259)  ; FMax(a,b)
  %2261 = select i1 %2255, float %2258, float %2260
  %2262 = zext i1 %2255 to i32
  %2263 = call float @dx.op.binary.f32(i32 36, float %2206, float %2261)  ; FMin(a,b)
  br label %2264

; <label>:2264                                    ; preds = %2253, %2205
  %2265 = phi float [ %2263, %2253 ], [ %2206, %2205 ]
  %2266 = phi i32 [ %2262, %2253 ], [ 0, %2205 ]
  br i1 %584, label %2439, label %2267, !dx.controlflow.hints !63

; <label>:2267                                    ; preds = %2264
  %2268 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2269 = extractvalue %dx.types.CBufRet.i32 %2268, 1
  %2270 = and i32 %2269, 1
  %2271 = icmp eq i32 %2270, 0
  br i1 %2271, label %2272, label %2429, !dx.controlflow.hints !64

; <label>:2272                                    ; preds = %2267
  %2273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %2274 = extractvalue %dx.types.CBufRet.f32 %2273, 2
  %2275 = extractvalue %dx.types.CBufRet.f32 %2273, 3
  %2276 = fmul fast float %2274, %2126
  %2277 = fmul fast float %2275, %2128
  %2278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %2279 = extractvalue %dx.types.CBufRet.f32 %2278, 0
  %2280 = extractvalue %dx.types.CBufRet.f32 %2278, 1
  %2281 = fadd fast float %2276, %2279
  %2282 = fadd fast float %2277, %2280
  %2283 = call float @dx.op.unary.f32(i32 7, float %2281)  ; Saturate(value)
  %2284 = call float @dx.op.unary.f32(i32 7, float %2282)  ; Saturate(value)
  %2285 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %25, float %2283, float %2284, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2286 = extractvalue %dx.types.ResRet.f32 %2285, 0
  %2287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2288 = extractvalue %dx.types.CBufRet.f32 %2287, 0
  %2289 = fmul fast float %2288, %2286
  %2290 = fsub fast float %2281, %2283
  %2291 = fsub fast float %2282, %2284
  %2292 = extractvalue %dx.types.CBufRet.f32 %2273, 0
  %2293 = extractvalue %dx.types.CBufRet.f32 %2273, 1
  %2294 = fmul fast float %2292, %2290
  %2295 = fmul fast float %2293, %2291
  %2296 = fmul fast float %2294, %2294
  %2297 = fmul fast float %2295, %2295
  %2298 = fadd fast float %2296, %2297
  %2299 = call float @dx.op.unary.f32(i32 24, float %2298)  ; Sqrt(value)
  %2300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2301 = extractvalue %dx.types.CBufRet.f32 %2300, 3
  %2302 = fmul fast float %2301, %2299
  %2303 = call float @dx.op.unary.f32(i32 7, float %2302)  ; Saturate(value)
  %2304 = extractvalue %dx.types.CBufRet.f32 %2300, 2
  %2305 = fsub fast float %2304, %2289
  %2306 = fmul fast float %2305, %2303
  %2307 = extractvalue %dx.types.CBufRet.f32 %2287, 1
  %2308 = fsub fast float %2130, %2289
  %2309 = fsub fast float %2308, %2307
  %2310 = fsub fast float %2309, %2306
  %2311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2312 = extractvalue %dx.types.CBufRet.f32 %2311, 2
  %2313 = fsub fast float %2310, %2312
  %2314 = fcmp fast olt float %2313, 0.000000e+00
  %2315 = call float @dx.op.unary.f32(i32 6, float %2313)  ; FAbs(value)
  %2316 = extractvalue %dx.types.CBufRet.i32 %2268, 0
  %2317 = icmp eq i32 %2316, 0
  br i1 %2317, label %2371, label %2318

; <label>:2318                                    ; preds = %2272
  br label %2319

; <label>:2319                                    ; preds = %2358, %2318
  %2320 = phi i32 [ %2364, %2358 ], [ 1, %2318 ]
  %2321 = phi float [ %2366, %2358 ], [ 0x47EFFFFFE0000000, %2318 ]
  %2322 = phi i32 [ %2367, %2358 ], [ 0, %2318 ]
  %2323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2324 = extractvalue %dx.types.CBufRet.f32 %2323, 1
  %2325 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2326 = extractvalue %dx.types.CBufRet.i32 %2325, 1
  %2327 = and i32 %2326, 8
  %2328 = icmp eq i32 %2327, 0
  %2329 = fcmp fast ogt float %2324, %2310
  %2330 = or i1 %2329, %2328
  %2331 = add i32 %2322, 171
  %2332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 %2331)  ; CBufferLoadLegacy(handle,regIndex)
  %2333 = extractvalue %dx.types.CBufRet.f32 %2332, 0
  %2334 = extractvalue %dx.types.CBufRet.f32 %2332, 1
  %2335 = extractvalue %dx.types.CBufRet.f32 %2332, 2
  br i1 %2330, label %2336, label %2342, !dx.controlflow.hints !65

; <label>:2336                                    ; preds = %2319
  %2337 = fsub fast float %2333, %2126
  %2338 = fsub fast float %2334, %2128
  %2339 = fmul fast float %2337, %2337
  %2340 = fmul fast float %2338, %2338
  %2341 = fadd fast float %2339, %2340
  br label %2358

; <label>:2342                                    ; preds = %2319
  %2343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2344 = extractvalue %dx.types.CBufRet.f32 %2343, 2
  %2345 = extractvalue %dx.types.CBufRet.f32 %2323, 2
  %2346 = fmul fast float %2345, %2344
  %2347 = fsub fast float %2346, %2324
  %2348 = fdiv fast float %2335, %2347
  %2349 = fsub fast float %2126, %2333
  %2350 = fsub fast float %2128, %2334
  %2351 = fsub fast float %2310, %2324
  %2352 = fmul fast float %2348, %2351
  %2353 = fmul fast float %2349, %2349
  %2354 = fmul fast float %2350, %2350
  %2355 = fadd fast float %2353, %2354
  %2356 = fmul fast float %2352, %2352
  %2357 = fadd fast float %2355, %2356
  br label %2358

; <label>:2358                                    ; preds = %2342, %2336
  %2359 = phi float [ %2341, %2336 ], [ %2357, %2342 ]
  %2360 = call float @dx.op.unary.f32(i32 24, float %2359)  ; Sqrt(value)
  %2361 = fsub float %2335, %2360
  %2362 = fcmp fast olt float %2361, 0.000000e+00
  %2363 = zext i1 %2362 to i32
  %2364 = and i32 %2363, %2320
  %2365 = call float @dx.op.unary.f32(i32 6, float %2361)  ; FAbs(value)
  %2366 = call float @dx.op.binary.f32(i32 36, float %2321, float %2365)  ; FMin(a,b)
  %2367 = add i32 %2322, 1
  %2368 = extractvalue %dx.types.CBufRet.i32 %2325, 0
  %2369 = icmp ult i32 %2367, %2368
  br i1 %2369, label %2319, label %2370

; <label>:2370                                    ; preds = %2358
  br label %2371

; <label>:2371                                    ; preds = %2370, %2272
  %2372 = phi i32 [ 1, %2272 ], [ %2364, %2370 ]
  %2373 = phi float [ 0x47EFFFFFE0000000, %2272 ], [ %2366, %2370 ]
  br label %2374

; <label>:2374                                    ; preds = %2374, %2371
  %2375 = phi i32 [ %2372, %2371 ], [ %2414, %2374 ]
  %2376 = phi float [ 0x47EFFFFFE0000000, %2371 ], [ %2416, %2374 ]
  %2377 = phi i32 [ 0, %2371 ], [ %2417, %2374 ]
  %2378 = add nuw nsw i32 %2377, 191
  %2379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 %2378)  ; CBufferLoadLegacy(handle,regIndex)
  %2380 = extractvalue %dx.types.CBufRet.f32 %2379, 0
  %2381 = extractvalue %dx.types.CBufRet.f32 %2379, 1
  %2382 = extractvalue %dx.types.CBufRet.f32 %2379, 2
  %2383 = add nuw nsw i32 %2377, 195
  %2384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 %2383)  ; CBufferLoadLegacy(handle,regIndex)
  %2385 = extractvalue %dx.types.CBufRet.f32 %2384, 0
  %2386 = extractvalue %dx.types.CBufRet.f32 %2384, 1
  %2387 = extractvalue %dx.types.CBufRet.f32 %2384, 2
  %2388 = fsub fast float %2126, %2380
  %2389 = fsub fast float %2128, %2381
  %2390 = fsub fast float %2310, %2382
  %2391 = call float @dx.op.unary.f32(i32 6, float %2388)  ; FAbs(value)
  %2392 = call float @dx.op.unary.f32(i32 6, float %2389)  ; FAbs(value)
  %2393 = call float @dx.op.unary.f32(i32 6, float %2390)  ; FAbs(value)
  %2394 = fsub fast float %2391, %2385
  %2395 = fsub fast float %2392, %2386
  %2396 = fsub fast float %2393, %2387
  %2397 = call float @dx.op.binary.f32(i32 35, float %2394, float 0.000000e+00)  ; FMax(a,b)
  %2398 = call float @dx.op.binary.f32(i32 35, float %2395, float 0.000000e+00)  ; FMax(a,b)
  %2399 = call float @dx.op.binary.f32(i32 35, float %2396, float 0.000000e+00)  ; FMax(a,b)
  %2400 = fmul fast float %2397, %2397
  %2401 = fmul fast float %2398, %2398
  %2402 = fadd fast float %2401, %2400
  %2403 = fmul fast float %2399, %2399
  %2404 = fadd fast float %2402, %2403
  %2405 = call float @dx.op.unary.f32(i32 24, float %2404)  ; Sqrt(value)
  %2406 = call float @dx.op.binary.f32(i32 35, float %2395, float %2396)  ; FMax(a,b)
  %2407 = call float @dx.op.binary.f32(i32 35, float %2394, float %2406)  ; FMax(a,b)
  %2408 = call float @dx.op.binary.f32(i32 36, float %2407, float 0.000000e+00)  ; FMin(a,b)
  %2409 = fadd fast float %2408, %2405
  %2410 = fsub fast float -0.000000e+00, %2409
  %2411 = fcmp ogt float %2409, -0.000000e+00
  %2412 = icmp ne i32 %2375, 0
  %2413 = and i1 %2412, %2411
  %2414 = zext i1 %2413 to i32
  %2415 = call float @dx.op.unary.f32(i32 6, float %2410)  ; FAbs(value)
  %2416 = call float @dx.op.binary.f32(i32 36, float %2376, float %2415)  ; FMin(a,b)
  %2417 = add nuw nsw i32 %2377, 1
  %2418 = icmp eq i32 %2417, 4
  br i1 %2418, label %2419, label %2374

; <label>:2419                                    ; preds = %2374
  %2420 = call float @dx.op.binary.f32(i32 36, float %2315, float %2416)  ; FMin(a,b)
  %2421 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2422 = extractvalue %dx.types.CBufRet.i32 %2421, 1
  %2423 = and i32 %2422, 2
  %2424 = icmp ne i32 %2423, 0
  %2425 = xor i1 %2413, %2424
  %2426 = call float @dx.op.binary.f32(i32 36, float %2420, float %2373)  ; FMin(a,b)
  %2427 = and i1 %2425, %2314
  %2428 = zext i1 %2427 to i32
  br label %2429

; <label>:2429                                    ; preds = %2419, %2267
  %2430 = phi i32 [ %327, %2267 ], [ %2428, %2419 ]
  %2431 = phi float [ 0.000000e+00, %2267 ], [ %2426, %2419 ]
  %2432 = phi float [ %2130, %2267 ], [ %2310, %2419 ]
  %2433 = icmp ne i32 %2430, 0
  %2434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %2435 = extractvalue %dx.types.CBufRet.f32 %2434, 3
  %2436 = call float @dx.op.binary.f32(i32 35, float %2431, float %2435)  ; FMax(a,b)
  %2437 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %2436)  ; FMin(a,b)
  %2438 = zext i1 %2433 to i32
  br label %2439

; <label>:2439                                    ; preds = %2429, %2264
  %2440 = phi i32 [ %2430, %2429 ], [ %327, %2264 ]
  %2441 = phi float [ %2432, %2429 ], [ %328, %2264 ]
  %2442 = phi float [ %2437, %2429 ], [ 0x47EFFFFFE0000000, %2264 ]
  %2443 = phi i32 [ %2438, %2429 ], [ 0, %2264 ]
  %2444 = icmp eq i32 %2207, 0
  br i1 %2444, label %2518, label %2445, !dx.controlflow.hints !66

; <label>:2445                                    ; preds = %2439
  %2446 = fmul fast float %762, %2122
  %2447 = call float @dx.op.unary.f32(i32 23, float %2446)  ; Log(value)
  %2448 = fmul fast float %2447, 0x3FE62E4300000000
  %2449 = call float @dx.op.binary.f32(i32 35, float %2448, float 1.000000e+00)  ; FMax(a,b)
  %2450 = fmul fast float %2449, %2442
  %2451 = call float @dx.op.binary.f32(i32 36, float %2450, float %2265)  ; FMin(a,b)
  %2452 = call float @dx.op.binary.f32(i32 35, float %2451, float 0.000000e+00)  ; FMax(a,b)
  %2453 = fcmp fast ogt float %2452, 0x3F1A36E2E0000000
  %2454 = fadd fast float %2123, %2126
  %2455 = fadd fast float %2124, %2128
  %2456 = select i1 %2453, float %2454, float %2126
  %2457 = select i1 %2453, float %2455, float %2128
  %2458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %2459 = extractvalue %dx.types.CBufRet.f32 %2458, 0
  %2460 = extractvalue %dx.types.CBufRet.f32 %2458, 1
  %2461 = fsub fast float %2456, %2459
  %2462 = fsub fast float %2457, %2460
  %2463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %2464 = extractvalue %dx.types.CBufRet.f32 %2463, 0
  %2465 = extractvalue %dx.types.CBufRet.f32 %2463, 1
  %2466 = fmul fast float %2461, %2464
  %2467 = fmul fast float %2462, %2465
  %2468 = fsub fast float 1.000000e+00, %2467
  %2469 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %2470 = extractvalue %dx.types.CBufRet.i32 %2469, 3
  %2471 = icmp eq i32 %2470, 0
  br i1 %2471, label %2478, label %2472, !dx.controlflow.hints !55

; <label>:2472                                    ; preds = %2445
  %2473 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %24, float %2466, float %2468, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2474 = extractvalue %dx.types.ResRet.f32 %2473, 0
  %2475 = extractvalue %dx.types.ResRet.f32 %2473, 1
  %2476 = extractvalue %dx.types.ResRet.f32 %2473, 2
  %2477 = extractvalue %dx.types.ResRet.f32 %2473, 3
  br label %2484

; <label>:2478                                    ; preds = %2445
  %2479 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %25, float %2466, float %2468, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2480 = extractvalue %dx.types.ResRet.f32 %2479, 0
  %2481 = extractvalue %dx.types.ResRet.f32 %2479, 1
  %2482 = extractvalue %dx.types.ResRet.f32 %2479, 2
  %2483 = extractvalue %dx.types.ResRet.f32 %2479, 3
  br label %2484

; <label>:2484                                    ; preds = %2478, %2472
  %2485 = phi float [ %2474, %2472 ], [ %2480, %2478 ]
  %2486 = phi float [ %2475, %2472 ], [ %2481, %2478 ]
  %2487 = phi float [ %2476, %2472 ], [ %2482, %2478 ]
  %2488 = phi float [ %2477, %2472 ], [ %2483, %2478 ]
  %2489 = extractvalue %dx.types.CBufRet.f32 %2463, 3
  %2490 = fmul fast float %2489, %2486
  %2491 = fmul fast float %2490, %2485
  %2492 = fsub fast float %2490, %2491
  %2493 = fcmp fast ole float %2492, 0.000000e+00
  %2494 = extractvalue %dx.types.CBufRet.f32 %2458, 2
  %2495 = fadd fast float %2491, %2494
  %2496 = fmul fast float %2489, %2487
  %2497 = fadd fast float %2496, %2494
  %2498 = fdiv fast float 1.000000e+00, %2492
  %2499 = select i1 %2493, float 1.000000e+06, float %2498
  %2500 = fsub fast float %2130, %2495
  %2501 = fmul fast float %2499, %2500
  %2502 = call float @dx.op.unary.f32(i32 7, float %2501)  ; Saturate(value)
  %2503 = extractvalue %dx.types.CBufRet.f32 %2463, 2
  %2504 = fmul fast float %2503, %2502
  %2505 = fsub fast float %2503, %2504
  %2506 = fcmp fast olt float %2130, %2497
  %2507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %2508 = extractvalue %dx.types.CBufRet.f32 %2507, 3
  %2509 = fmul fast float %2508, 3.000000e+00
  %2510 = select i1 %2506, float %2509, float 3.000000e+00
  %2511 = fmul fast float %2505, %2510
  %2512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %2513 = extractvalue %dx.types.CBufRet.f32 %2512, 2
  %2514 = fmul fast float %2122, 0x3FD5555560000000
  %2515 = fmul fast float %2514, %2488
  %2516 = fmul fast float %2515, %2513
  %2517 = fmul fast float %2516, %2511
  br label %2518

; <label>:2518                                    ; preds = %2484, %2439
  %2519 = phi float [ %2517, %2484 ], [ 0.000000e+00, %2439 ]
  %2520 = icmp eq i32 %2266, 0
  br i1 %2520, label %2701, label %2521, !dx.controlflow.hints !68

; <label>:2521                                    ; preds = %2518
  %2522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2523 = extractvalue %dx.types.CBufRet.f32 %2522, 3
  %2524 = fmul fast float %2523, %2122
  %2525 = fcmp fast oeq float %2524, 0.000000e+00
  br i1 %2525, label %2540, label %2526, !dx.controlflow.hints !69

; <label>:2526                                    ; preds = %2521
  %2527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %2528 = extractvalue %dx.types.CBufRet.f32 %2527, 3
  %2529 = fmul fast float %2528, %2524
  %2530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %2531 = extractvalue %dx.types.CBufRet.f32 %2530, 0
  %2532 = extractvalue %dx.types.CBufRet.f32 %2530, 1
  %2533 = extractvalue %dx.types.CBufRet.f32 %2530, 2
  %2534 = fmul fast float %2531, %2529
  %2535 = fmul fast float %2532, %2529
  %2536 = fmul fast float %2533, %2529
  %2537 = call float @dx.op.unary.f32(i32 23, float %2534)  ; Log(value)
  %2538 = call float @dx.op.unary.f32(i32 23, float %2535)  ; Log(value)
  %2539 = call float @dx.op.unary.f32(i32 23, float %2536)  ; Log(value)
  br label %2540

; <label>:2540                                    ; preds = %2526, %2521
  %2541 = phi float [ %2537, %2526 ], [ 0.000000e+00, %2521 ]
  %2542 = phi float [ %2538, %2526 ], [ 0.000000e+00, %2521 ]
  %2543 = phi float [ %2539, %2526 ], [ 0.000000e+00, %2521 ]
  %2544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %2545 = extractvalue %dx.types.CBufRet.f32 %2544, 0
  %2546 = extractvalue %dx.types.CBufRet.f32 %2544, 1
  %2547 = extractvalue %dx.types.CBufRet.f32 %2544, 2
  %2548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %2549 = extractvalue %dx.types.CBufRet.f32 %2548, 0
  %2550 = extractvalue %dx.types.CBufRet.f32 %2548, 1
  %2551 = extractvalue %dx.types.CBufRet.f32 %2548, 2
  %2552 = fsub fast float %2126, %2549
  %2553 = fsub fast float %2128, %2550
  %2554 = fsub fast float %2130, %2551
  %2555 = fmul fast float %2552, %2545
  %2556 = fmul fast float %2553, %2546
  %2557 = fmul fast float %2554, %2547
  %2558 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %2559 = extractvalue %dx.types.CBufRet.i32 %2558, 0
  %2560 = extractvalue %dx.types.CBufRet.i32 %2558, 1
  %2561 = uitofp i32 %2559 to float
  %2562 = uitofp i32 %2560 to float
  %2563 = fmul fast float %2555, %2561
  %2564 = fmul fast float %2556, %2562
  %2565 = fadd fast float %2563, 5.000000e-01
  %2566 = fadd fast float %2564, 5.000000e-01
  %2567 = call float @dx.op.unary.f32(i32 22, float %2565)  ; Frc(value)
  %2568 = call float @dx.op.unary.f32(i32 22, float %2566)  ; Frc(value)
  %2569 = call float @dx.op.unary.f32(i32 27, float %2565)  ; Round_ni(value)
  %2570 = call float @dx.op.unary.f32(i32 27, float %2566)  ; Round_ni(value)
  %2571 = fadd fast float %2569, 1.000000e+00
  %2572 = fadd fast float %2570, 1.000000e+00
  %2573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %2574 = extractvalue %dx.types.CBufRet.f32 %2573, 0
  %2575 = extractvalue %dx.types.CBufRet.f32 %2573, 1
  %2576 = fmul fast float %2574, %2571
  %2577 = fmul fast float %2575, %2572
  %2578 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %24, float %2576, float %2577, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2579 = extractvalue %dx.types.ResRet.f32 %2578, 0
  %2580 = extractvalue %dx.types.ResRet.f32 %2578, 1
  %2581 = extractvalue %dx.types.ResRet.f32 %2578, 2
  %2582 = extractvalue %dx.types.ResRet.f32 %2578, 3
  %2583 = extractvalue %dx.types.CBufRet.i32 %2558, 2
  %2584 = extractvalue %dx.types.CBufRet.f32 %2573, 2
  %2585 = uitofp i32 %2583 to float
  %2586 = fadd fast float %2585, -1.000000e+00
  %2587 = fmul fast float %2586, %2579
  %2588 = fmul fast float %2586, %2580
  %2589 = fmul fast float %2586, %2581
  %2590 = fmul fast float %2586, %2582
  %2591 = fadd fast float %2587, 5.000000e-01
  %2592 = fadd fast float %2588, 5.000000e-01
  %2593 = fadd fast float %2589, 5.000000e-01
  %2594 = fadd fast float %2590, 5.000000e-01
  %2595 = fptoui float %2591 to i32
  %2596 = fptoui float %2592 to i32
  %2597 = fptoui float %2593 to i32
  %2598 = fptoui float %2594 to i32
  %2599 = uitofp i32 %2595 to float
  %2600 = uitofp i32 %2596 to float
  %2601 = uitofp i32 %2597 to float
  %2602 = uitofp i32 %2598 to float
  %2603 = fadd fast float %2599, 5.000000e-01
  %2604 = fadd fast float %2600, 5.000000e-01
  %2605 = fadd fast float %2601, 5.000000e-01
  %2606 = fadd fast float %2602, 5.000000e-01
  %2607 = fmul fast float %2603, %2584
  %2608 = fmul fast float %2604, %2584
  %2609 = fmul fast float %2605, %2584
  %2610 = fmul fast float %2606, %2584
  %2611 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %25, float %2607, float %2557, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2612 = extractvalue %dx.types.ResRet.f32 %2611, 0
  %2613 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %25, float %2608, float %2557, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2614 = extractvalue %dx.types.ResRet.f32 %2613, 0
  %2615 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %25, float %2609, float %2557, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2616 = extractvalue %dx.types.ResRet.f32 %2615, 0
  %2617 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %25, float %2610, float %2557, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2618 = extractvalue %dx.types.ResRet.f32 %2617, 0
  %2619 = fsub fast float %2616, %2618
  %2620 = fmul fast float %2619, %2567
  %2621 = fadd fast float %2620, %2618
  %2622 = fsub fast float %2614, %2612
  %2623 = fmul fast float %2622, %2567
  %2624 = fadd fast float %2623, %2612
  %2625 = fsub fast float %2624, %2621
  %2626 = fmul fast float %2625, %2568
  %2627 = fadd fast float %2626, %2621
  %2628 = fcmp fast ogt float %2627, 0.000000e+00
  br i1 %2628, label %2629, label %2697, !dx.controlflow.hints !70

; <label>:2629                                    ; preds = %2540
  %2630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %2631 = extractvalue %dx.types.CBufRet.f32 %2630, 0
  %2632 = extractvalue %dx.types.CBufRet.f32 %2630, 1
  %2633 = extractvalue %dx.types.CBufRet.f32 %2630, 2
  %2634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %2635 = extractvalue %dx.types.CBufRet.f32 %2634, 0
  %2636 = extractvalue %dx.types.CBufRet.f32 %2634, 1
  %2637 = extractvalue %dx.types.CBufRet.f32 %2634, 2
  %2638 = fmul fast float %2553, %2545
  %2639 = fmul fast float %2554, %2545
  %2640 = fadd fast float %2555, %2635
  %2641 = fadd fast float %2638, %2636
  %2642 = fadd fast float %2639, %2637
  %2643 = fmul fast float %2640, %2631
  %2644 = fmul fast float %2641, %2631
  %2645 = fmul fast float %2642, %2631
  %2646 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %22, float %2643, float %2644, float %2645, float undef, i32 0, i32 0, i32 0, float %2541)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2647 = extractvalue %dx.types.ResRet.f32 %2646, 0
  %2648 = fmul fast float %2640, %2632
  %2649 = fmul fast float %2641, %2632
  %2650 = fmul fast float %2642, %2632
  %2651 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %22, float %2648, float %2649, float %2650, float undef, i32 0, i32 0, i32 0, float %2542)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2652 = extractvalue %dx.types.ResRet.f32 %2651, 1
  %2653 = fmul fast float %2640, %2633
  %2654 = fmul fast float %2641, %2633
  %2655 = fmul fast float %2642, %2633
  %2656 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %22, float %2653, float %2654, float %2655, float undef, i32 0, i32 0, i32 0, float %2543)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2657 = extractvalue %dx.types.ResRet.f32 %2656, 2
  %2658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %2659 = extractvalue %dx.types.CBufRet.f32 %2658, 1
  %2660 = fmul fast float %2652, %2647
  %2661 = fmul fast float %2660, %2657
  %2662 = call float @dx.op.unary.f32(i32 23, float %2661)  ; Log(value)
  %2663 = fmul fast float %2662, %2659
  %2664 = call float @dx.op.unary.f32(i32 21, float %2663)  ; Exp(value)
  %2665 = extractvalue %dx.types.CBufRet.f32 %2658, 2
  %2666 = fmul fast float %2627, %2627
  %2667 = fmul fast float %2666, %2664
  %2668 = fmul fast float %2667, %2665
  %2669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %2670 = extractvalue %dx.types.CBufRet.f32 %2669, 3
  %2671 = fmul fast float %2670, %2668
  %2672 = bitcast float %2671 to i32
  %2673 = sitofp i32 %2672 to float
  %2674 = fptosi float %2673 to i32
  %2675 = bitcast i32 %2674 to float
  %2676 = fsub fast float 1.000000e+00, %2668
  %2677 = bitcast float %2676 to i32
  %2678 = sitofp i32 %2677 to float
  %2679 = fptosi float %2678 to i32
  %2680 = bitcast i32 %2679 to float
  %2681 = fadd fast float %2675, %2680
  %2682 = bitcast float %2681 to i32
  %2683 = sub nsw i32 2129859010, %2682
  %2684 = bitcast i32 %2683 to float
  %2685 = fmul fast float %2684, %2675
  %2686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2687 = extractvalue %dx.types.CBufRet.f32 %2686, 2
  %2688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %2689 = extractvalue %dx.types.CBufRet.f32 %2688, 0
  %2690 = fmul fast float %2685, %2689
  %2691 = fadd fast float %2690, 1.000000e+00
  %2692 = bitcast float %2691 to i32
  %2693 = sub nsw i32 2129859010, %2692
  %2694 = bitcast i32 %2693 to float
  %2695 = fmul fast float %2685, %2687
  %2696 = fmul fast float %2695, %2694
  br label %2697

; <label>:2697                                    ; preds = %2629, %2540
  %2698 = phi float [ %2696, %2629 ], [ %2627, %2540 ]
  %2699 = fmul fast float %2698, %2122
  %2700 = fadd fast float %2699, %2519
  br label %2701

; <label>:2701                                    ; preds = %2697, %2518
  %2702 = phi float [ %2700, %2697 ], [ %2519, %2518 ]
  %2703 = icmp eq i32 %2443, 0
  br i1 %2703, label %2735, label %2704, !dx.controlflow.hints !71

; <label>:2704                                    ; preds = %2701
  %2705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %2706 = extractvalue %dx.types.CBufRet.f32 %2705, 1
  %2707 = fsub fast float %2122, %2706
  %2708 = extractvalue %dx.types.CBufRet.f32 %2705, 3
  %2709 = fmul fast float %2707, %2708
  %2710 = call float @dx.op.unary.f32(i32 7, float %2709)  ; Saturate(value)
  %2711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %2712 = extractvalue %dx.types.CBufRet.f32 %2711, 3
  %2713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2714 = extractvalue %dx.types.CBufRet.f32 %2713, 2
  %2715 = fsub fast float %2714, %2441
  %2716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %2717 = extractvalue %dx.types.CBufRet.f32 %2716, 3
  %2718 = fmul fast float %2715, %2717
  %2719 = call float @dx.op.unary.f32(i32 7, float %2718)  ; Saturate(value)
  %2720 = fmul fast float %2719, %2712
  %2721 = extractvalue %dx.types.CBufRet.f32 %2716, 0
  %2722 = fsub fast float %2122, %2721
  %2723 = extractvalue %dx.types.CBufRet.f32 %2716, 1
  %2724 = fmul fast float %2722, %2723
  %2725 = call float @dx.op.unary.f32(i32 7, float %2724)  ; Saturate(value)
  %2726 = fsub fast float 1.000000e+00, %2710
  %2727 = fmul fast float %2725, %2726
  %2728 = fadd fast float %2727, %2710
  %2729 = extractvalue %dx.types.CBufRet.f32 %2705, 0
  %2730 = fsub fast float %2720, %2729
  %2731 = fmul fast float %2730, %2728
  %2732 = fadd fast float %2731, %2729
  %2733 = fmul fast float %2732, %2122
  %2734 = fadd fast float %2733, %2702
  br label %2735

; <label>:2735                                    ; preds = %2704, %2701
  %2736 = phi float [ %2734, %2704 ], [ %2702, %2701 ]
  %2737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %2738 = extractvalue %dx.types.CBufRet.f32 %2737, 3
  %2739 = fmul fast float %2736, 0xBFF7154760000000
  %2740 = fmul fast float %2739, %2738
  %2741 = call float @dx.op.unary.f32(i32 21, float %2740)  ; Exp(value)
  %2742 = call float @dx.op.unary.f32(i32 7, float %2741)  ; Saturate(value)
  %2743 = fmul fast float %2742, %2118
  %2744 = fmul fast float %2742, %2119
  %2745 = fmul fast float %2742, %2120
  %2746 = fadd fast float %2743, %2086
  %2747 = fadd fast float %2744, %2087
  %2748 = fadd fast float %2745, %2088
  %2749 = fsub fast float 1.000000e+00, %1155
  %2750 = fmul fast float %1147, %332
  %2751 = fmul fast float %2750, %2749
  %2752 = fmul fast float %2751, %2746
  %2753 = fmul fast float %1148, %332
  %2754 = fmul fast float %2753, %2749
  %2755 = fmul fast float %2754, %2747
  %2756 = fmul fast float %1149, %332
  %2757 = fmul fast float %2756, %2749
  %2758 = fmul fast float %2757, %2748
  %2759 = fadd fast float %2752, %333
  %2760 = fadd fast float %2755, %334
  %2761 = fadd fast float %2758, %335
  %2762 = fdiv fast float %1131, %772
  %2763 = fadd fast float %772, %339
  %2764 = fmul fast float %339, %339
  %2765 = fmul fast float %2763, %2763
  %2766 = fsub fast float %2764, %2765
  %2767 = fmul fast float %2766, -5.000000e-01
  %2768 = fmul fast float %2767, %2762
  %2769 = fadd fast float %2768, %331
  %2770 = fadd fast float %1131, %341
  %2771 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2772 = extractvalue %dx.types.CBufRet.i32 %2771, 0
  %2773 = icmp eq i32 %2772, 0
  br i1 %2773, label %2800, label %2774, !dx.controlflow.hints !87

; <label>:2774                                    ; preds = %2735
  %2775 = icmp ne i32 %346, 0
  %2776 = zext i1 %2775 to i32
  %2777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2778 = extractvalue %dx.types.CBufRet.f32 %2777, 2
  %2779 = extractvalue %dx.types.CBufRet.f32 %2777, 0
  %2780 = fsub fast float %2763, %2779
  %2781 = fmul fast float %2780, %2778
  %2782 = call float @dx.op.unary.f32(i32 7, float %2781)  ; Saturate(value)
  %2783 = fadd fast float %2782, -5.000000e-01
  %2784 = fmul fast float %2783, 2.000000e+00
  %2785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2786 = extractvalue %dx.types.CBufRet.f32 %2785, 2
  %2787 = fcmp fast olt float %2784, %2786
  br i1 %2787, label %2788, label %2800, !dx.controlflow.hints !88

; <label>:2788                                    ; preds = %2774
  %2789 = fmul fast float %2784, %2784
  %2790 = fmul fast float %2749, %332
  %2791 = fmul fast float %2784, %2790
  %2792 = fmul fast float %2789, %2790
  %2793 = fmul fast float %2791, %2789
  %2794 = fmul fast float %2789, %2789
  %2795 = fmul fast float %2794, %2790
  %2796 = fadd fast float %2791, %342
  %2797 = fadd fast float %2792, %343
  %2798 = fadd fast float %2793, %344
  %2799 = fadd fast float %2795, %345
  br label %2800

; <label>:2800                                    ; preds = %2788, %2774, %2735
  %2801 = phi float [ %342, %2735 ], [ %2796, %2788 ], [ %342, %2774 ]
  %2802 = phi float [ %343, %2735 ], [ %2797, %2788 ], [ %343, %2774 ]
  %2803 = phi float [ %344, %2735 ], [ %2798, %2788 ], [ %344, %2774 ]
  %2804 = phi float [ %345, %2735 ], [ %2799, %2788 ], [ %345, %2774 ]
  %2805 = phi i32 [ %346, %2735 ], [ 1, %2788 ], [ %2776, %2774 ]
  %2806 = fmul fast float %1155, %332
  br label %2807

; <label>:2807                                    ; preds = %2800, %1150
  %2808 = phi float [ %1151, %1150 ], [ %2763, %2800 ]
  %2809 = phi i32 [ %327, %1150 ], [ %2440, %2800 ]
  %2810 = phi float [ %328, %1150 ], [ %2441, %2800 ]
  %2811 = phi float [ %331, %1150 ], [ %2769, %2800 ]
  %2812 = phi float [ %332, %1150 ], [ %2806, %2800 ]
  %2813 = phi float [ %333, %1150 ], [ %2759, %2800 ]
  %2814 = phi float [ %334, %1150 ], [ %2760, %2800 ]
  %2815 = phi float [ %335, %1150 ], [ %2761, %2800 ]
  %2816 = phi float [ %341, %1150 ], [ %2770, %2800 ]
  %2817 = phi float [ %342, %1150 ], [ %2801, %2800 ]
  %2818 = phi float [ %343, %1150 ], [ %2802, %2800 ]
  %2819 = phi float [ %344, %1150 ], [ %2803, %2800 ]
  %2820 = phi float [ %345, %1150 ], [ %2804, %2800 ]
  %2821 = phi i32 [ %346, %1150 ], [ %2805, %2800 ]
  %2822 = fmul fast float %772, %117
  %2823 = fmul fast float %772, %118
  %2824 = fmul fast float %772, %119
  %2825 = fadd fast float %2822, %336
  %2826 = fadd fast float %2823, %337
  %2827 = fadd fast float %2824, %338
  %2828 = fcmp fast olt float %2808, %303
  %2829 = extractvalue %dx.types.CBufRet.f32 %1136, 2
  %2830 = fcmp fast olt float %2829, %2812
  %2831 = and i1 %2828, %2830
  br i1 %2831, label %326, label %2832

; <label>:2832                                    ; preds = %2807
  br label %2833

; <label>:2833                                    ; preds = %2832, %299
  %2834 = phi float [ 0.000000e+00, %299 ], [ %2811, %2832 ]
  %2835 = phi float [ 1.000000e+00, %299 ], [ %2812, %2832 ]
  %2836 = phi float [ 0.000000e+00, %299 ], [ %2813, %2832 ]
  %2837 = phi float [ 0.000000e+00, %299 ], [ %2814, %2832 ]
  %2838 = phi float [ 0.000000e+00, %299 ], [ %2815, %2832 ]
  %2839 = phi float [ 0.000000e+00, %299 ], [ %2816, %2832 ]
  %2840 = phi float [ 0.000000e+00, %299 ], [ %2817, %2832 ]
  %2841 = phi float [ 0.000000e+00, %299 ], [ %2818, %2832 ]
  %2842 = phi float [ 0.000000e+00, %299 ], [ %2819, %2832 ]
  %2843 = phi float [ 0.000000e+00, %299 ], [ %2820, %2832 ]
  %2844 = phi i32 [ 0, %299 ], [ %2821, %2832 ]
  %2845 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2846 = extractvalue %dx.types.CBufRet.i32 %2845, 0
  %2847 = icmp eq i32 %2846, 0
  br i1 %2847, label %2889, label %2848, !dx.controlflow.hints !89

; <label>:2848                                    ; preds = %2833
  %2849 = icmp eq i32 %2844, 0
  br i1 %2849, label %2888, label %2850, !dx.controlflow.hints !90

; <label>:2850                                    ; preds = %2848
  %2851 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2852 = extractvalue %dx.types.CBufRet.i32 %2851, 2
  %2853 = icmp eq i32 %2852, 0
  br i1 %2853, label %2860, label %2854, !dx.controlflow.hints !91

; <label>:2854                                    ; preds = %2850
  %2855 = fsub fast float 1.000000e+00, %2835
  %2856 = fdiv fast float %2840, %2855
  %2857 = fdiv fast float %2841, %2855
  %2858 = fdiv fast float %2842, %2855
  %2859 = fdiv fast float %2843, %2855
  br label %2865

; <label>:2860                                    ; preds = %2850
  %2861 = fadd fast float %2840, %2835
  %2862 = fadd fast float %2841, %2835
  %2863 = fadd fast float %2842, %2835
  %2864 = fadd fast float %2843, %2835
  br label %2865

; <label>:2865                                    ; preds = %2860, %2854
  %2866 = phi float [ %2856, %2854 ], [ %2861, %2860 ]
  %2867 = phi float [ %2857, %2854 ], [ %2862, %2860 ]
  %2868 = phi float [ %2858, %2854 ], [ %2863, %2860 ]
  %2869 = phi float [ %2859, %2854 ], [ %2864, %2860 ]
  %2870 = call float @dx.op.binary.f32(i32 35, float %2866, float -1.000000e+00)  ; FMax(a,b)
  %2871 = call float @dx.op.binary.f32(i32 35, float %2867, float -1.000000e+00)  ; FMax(a,b)
  %2872 = call float @dx.op.binary.f32(i32 35, float %2868, float -1.000000e+00)  ; FMax(a,b)
  %2873 = call float @dx.op.binary.f32(i32 35, float %2869, float -1.000000e+00)  ; FMax(a,b)
  %2874 = call float @dx.op.binary.f32(i32 36, float %2870, float 1.000000e+00)  ; FMin(a,b)
  %2875 = call float @dx.op.binary.f32(i32 36, float %2871, float 1.000000e+00)  ; FMin(a,b)
  %2876 = call float @dx.op.binary.f32(i32 36, float %2872, float 1.000000e+00)  ; FMin(a,b)
  %2877 = call float @dx.op.binary.f32(i32 36, float %2873, float 1.000000e+00)  ; FMin(a,b)
  %2878 = fmul fast float %2874, 1.500000e+00
  %2879 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %2876, float %2878)  ; FMad(a,b,c)
  %2880 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %2875, float 0.000000e+00)  ; FMad(a,b,c)
  %2881 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %2877, float %2880)  ; FMad(a,b,c)
  %2882 = fmul fast float %2874, 0x3FEBB67AE0000000
  %2883 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %2876, float %2882)  ; FMad(a,b,c)
  %2884 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2875, float 0.000000e+00)  ; FMad(a,b,c)
  %2885 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2877, float %2884)  ; FMad(a,b,c)
  %2886 = fadd fast float %2879, 5.000000e-01
  %2887 = fadd fast float %2883, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %28, i32 %29, i32 0, float %2886, float %2881, float %2887, float %2885, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2889

; <label>:2888                                    ; preds = %2848
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %28, i32 %29, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2889

; <label>:2889                                    ; preds = %2888, %2865, %2833
  %2890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2891 = extractvalue %dx.types.CBufRet.f32 %2890, 2
  %2892 = fsub fast float %2835, %2891
  %2893 = fdiv fast float %2892, %2891
  %2894 = call float @dx.op.unary.f32(i32 7, float %2893)  ; Saturate(value)
  %2895 = fmul fast float %2894, 2.000000e+00
  %2896 = fsub fast float 3.000000e+00, %2895
  %2897 = fmul fast float %2894, %2894
  %2898 = fmul fast float %2897, %2835
  %2899 = fmul fast float %2898, %2896
  %2900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %2901 = extractvalue %dx.types.CBufRet.f32 %2900, 0
  %2902 = extractvalue %dx.types.CBufRet.f32 %2900, 1
  %2903 = extractvalue %dx.types.CBufRet.f32 %2900, 2
  %2904 = call float @dx.op.dot3.f32(i32 55, float %117, float %118, float %119, float %2901, float %2902, float %2903)  ; Dot3(ax,ay,az,bx,by,bz)
  %2905 = fmul fast float %2904, %2834
  %2906 = fcmp fast ogt float %2839, 0.000000e+00
  %2907 = fdiv fast float 1.000000e+00, %2839
  %2908 = fmul fast float %2905, %2907
  %2909 = select i1 %2906, float %2908, float %128
  %2910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2911 = extractvalue %dx.types.CBufRet.f32 %2910, 0
  %2912 = extractvalue %dx.types.CBufRet.f32 %2910, 1
  %2913 = extractvalue %dx.types.CBufRet.f32 %2910, 2
  %2914 = fmul fast float %2911, %81
  %2915 = fmul fast float %2912, %81
  %2916 = fmul fast float %2913, %81
  %2917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2918 = extractvalue %dx.types.CBufRet.f32 %2917, 0
  %2919 = extractvalue %dx.types.CBufRet.f32 %2917, 1
  %2920 = extractvalue %dx.types.CBufRet.f32 %2917, 2
  %2921 = fmul fast float %2918, %82
  %2922 = fmul fast float %2919, %82
  %2923 = fmul fast float %2920, %82
  %2924 = fadd fast float %2921, %2914
  %2925 = fadd fast float %2922, %2915
  %2926 = fadd fast float %2923, %2916
  %2927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2928 = extractvalue %dx.types.CBufRet.f32 %2927, 0
  %2929 = extractvalue %dx.types.CBufRet.f32 %2927, 1
  %2930 = extractvalue %dx.types.CBufRet.f32 %2927, 2
  %2931 = fadd fast float %2924, %2928
  %2932 = fadd fast float %2925, %2929
  %2933 = fadd fast float %2926, %2930
  %2934 = fmul fast float %2931, %2909
  %2935 = fmul fast float %2932, %2909
  %2936 = fmul fast float %2933, %2909
  %2937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %2938 = extractvalue %dx.types.CBufRet.f32 %2937, 0
  %2939 = extractvalue %dx.types.CBufRet.f32 %2937, 1
  %2940 = extractvalue %dx.types.CBufRet.f32 %2937, 2
  %2941 = extractvalue %dx.types.CBufRet.f32 %2937, 3
  %2942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %2943 = extractvalue %dx.types.CBufRet.f32 %2942, 0
  %2944 = extractvalue %dx.types.CBufRet.f32 %2942, 1
  %2945 = extractvalue %dx.types.CBufRet.f32 %2942, 2
  %2946 = extractvalue %dx.types.CBufRet.f32 %2942, 3
  %2947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %2948 = extractvalue %dx.types.CBufRet.f32 %2947, 0
  %2949 = extractvalue %dx.types.CBufRet.f32 %2947, 1
  %2950 = extractvalue %dx.types.CBufRet.f32 %2947, 2
  %2951 = extractvalue %dx.types.CBufRet.f32 %2947, 3
  %2952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %2953 = extractvalue %dx.types.CBufRet.f32 %2952, 0
  %2954 = extractvalue %dx.types.CBufRet.f32 %2952, 1
  %2955 = extractvalue %dx.types.CBufRet.f32 %2952, 2
  %2956 = extractvalue %dx.types.CBufRet.f32 %2952, 3
  %2957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %2958 = extractvalue %dx.types.CBufRet.f32 %2957, 3
  %2959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %2960 = extractvalue %dx.types.CBufRet.f32 %2959, 3
  %2961 = extractvalue %dx.types.CBufRet.f32 %2959, 0
  %2962 = extractvalue %dx.types.CBufRet.f32 %2959, 1
  %2963 = extractvalue %dx.types.CBufRet.f32 %2959, 2
  %2964 = fcmp fast olt float %2963, -5.000000e-01
  %2965 = call float @dx.op.dot3.f32(i32 55, float %2934, float %2935, float %2936, float %2934, float %2935, float %2936)  ; Dot3(ax,ay,az,bx,by,bz)
  %2966 = call float @dx.op.unary.f32(i32 25, float %2965)  ; Rsqrt(value)
  %2967 = fmul fast float %2966, %2965
  %2968 = fmul fast float %2966, %2934
  %2969 = fmul fast float %2966, %2935
  %2970 = fmul fast float %2966, %2936
  %2971 = fadd fast float %2967, %2941
  %2972 = call float @dx.op.dot3.f32(i32 55, float %2968, float %2969, float %2970, float %2938, float %2939, float %2940)  ; Dot3(ax,ay,az,bx,by,bz)
  %2973 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2974 = extractvalue %dx.types.CBufRet.i32 %2973, 1
  %2975 = and i32 %2974, 1
  %2976 = icmp ne i32 %2975, 0
  %2977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %2978 = extractvalue %dx.types.CBufRet.f32 %2977, 2
  %2979 = fcmp fast ogt float %2978, 0.000000e+00
  %2980 = and i1 %2976, %2979
  br i1 %2980, label %2981, label %3387, !dx.controlflow.hints !92

; <label>:2981                                    ; preds = %2889
  %2982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %2983 = extractvalue %dx.types.CBufRet.f32 %2982, 3
  %2984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2985 = extractvalue %dx.types.CBufRet.f32 %2984, 2
  %2986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2987 = extractvalue %dx.types.CBufRet.f32 %2986, 2
  %2988 = fsub fast float %2985, %2987
  %2989 = and i32 %2974, 2
  %2990 = extractvalue %dx.types.CBufRet.i32 %2973, 0
  %2991 = call i32 @dx.op.binary.i32(i32 40, i32 %2990, i32 3)  ; UMin(a,b)
  %2992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2993 = extractvalue %dx.types.CBufRet.f32 %2992, 0
  %2994 = extractvalue %dx.types.CBufRet.f32 %2992, 1
  %2995 = extractvalue %dx.types.CBufRet.f32 %2986, 0
  %2996 = extractvalue %dx.types.CBufRet.f32 %2986, 1
  %2997 = fsub fast float %2993, %2995
  %2998 = fsub fast float %2994, %2996
  %2999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %3000 = extractvalue %dx.types.CBufRet.f32 %2999, 0
  %3001 = fcmp fast ogt float %3000, 0.000000e+00
  %3002 = fsub fast float -0.000000e+00, %2997
  %3003 = fsub fast float -0.000000e+00, %2998
  %3004 = call float @dx.op.dot2.f32(i32 54, float %2968, float %2969, float %2968, float %2969)  ; Dot2(ax,ay,bx,by)
  %3005 = call float @dx.op.dot2.f32(i32 54, float %2968, float %2969, float %3002, float %3003)  ; Dot2(ax,ay,bx,by)
  %3006 = fmul fast float %3005, 2.000000e+00
  %3007 = call float @dx.op.dot2.f32(i32 54, float %3002, float %3003, float %3002, float %3003)  ; Dot2(ax,ay,bx,by)
  %3008 = fmul fast float %3000, %3000
  %3009 = fsub fast float %3007, %3008
  %3010 = fmul fast float %3006, %3006
  %3011 = fmul fast float %3004, 4.000000e+00
  %3012 = fmul fast float %3011, %3009
  %3013 = fsub fast float %3010, %3012
  %3014 = fcmp fast ogt float %3013, 0.000000e+00
  br i1 %3014, label %3015, label %3030, !dx.controlflow.hints !93

; <label>:3015                                    ; preds = %2981
  %3016 = fcmp fast ogt float %3006, 0.000000e+00
  %3017 = call float @dx.op.unary.f32(i32 24, float %3013)  ; Sqrt(value)
  %3018 = fsub fast float -0.000000e+00, %3017
  %3019 = select i1 %3016, float %3017, float %3018
  %3020 = fadd fast float %3019, %3006
  %3021 = fmul float %3020, -5.000000e-01
  %3022 = fdiv fast float %3021, %3004
  %3023 = call float @dx.op.binary.f32(i32 35, float %3022, float 0.000000e+00)  ; FMax(a,b)
  %3024 = call float @dx.op.binary.f32(i32 36, float %2967, float %3023)  ; FMin(a,b)
  %3025 = fdiv fast float %3009, %3021
  %3026 = call float @dx.op.binary.f32(i32 35, float %3025, float 0.000000e+00)  ; FMax(a,b)
  %3027 = call float @dx.op.binary.f32(i32 36, float %2967, float %3026)  ; FMin(a,b)
  %3028 = call float @dx.op.binary.f32(i32 36, float %3024, float %3027)  ; FMin(a,b)
  %3029 = call float @dx.op.binary.f32(i32 35, float %3024, float %3027)  ; FMax(a,b)
  br label %3030

; <label>:3030                                    ; preds = %3015, %2981
  %3031 = phi float [ %3029, %3015 ], [ -1.000000e+00, %2981 ]
  %3032 = phi float [ %3028, %3015 ], [ -1.000000e+00, %2981 ]
  %3033 = phi i1 [ true, %3015 ], [ false, %2981 ]
  %3034 = and i1 %3001, %3033
  br i1 %3034, label %3035, label %3037, !dx.controlflow.hints !94

; <label>:3035                                    ; preds = %3030
  %3036 = fcmp fast oeq float %3032, %3031
  br i1 %3036, label %3340, label %3038, !dx.controlflow.hints !95

; <label>:3037                                    ; preds = %3030
  br i1 %3001, label %3340, label %3038, !dx.controlflow.hints !96

; <label>:3038                                    ; preds = %3037, %3035
  %3039 = phi float [ %2967, %3037 ], [ %3031, %3035 ]
  %3040 = phi float [ 0.000000e+00, %3037 ], [ %3032, %3035 ]
  %3041 = icmp ne i32 %2989, 0
  %3042 = fmul fast float %3039, %2970
  %3043 = fadd fast float %3042, %2983
  %3044 = fmul fast float %3043, %3039
  %3045 = select i1 %3041, float 0.000000e+00, float %3044
  %3046 = fcmp fast oeq float %2970, 0.000000e+00
  %3047 = fdiv fast float %2988, %2970
  %3048 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3047)  ; FMax(a,b)
  %3049 = select i1 %3046, float %3039, float %3048
  %3050 = call float @dx.op.binary.f32(i32 36, float %3039, float %3049)  ; FMin(a,b)
  %3051 = fcmp fast ogt float %2970, 0.000000e+00
  %3052 = fcmp fast olt float %2988, 0.000000e+00
  br i1 %3051, label %3053, label %3110, !dx.controlflow.hints !97

; <label>:3053                                    ; preds = %3038
  %3054 = icmp eq i32 %2989, 0
  br i1 %3052, label %3055, label %3099, !dx.controlflow.hints !98

; <label>:3055                                    ; preds = %3053
  %3056 = select i1 %3054, float %3039, float 0.000000e+00
  %3057 = fsub fast float -0.000000e+00, %3056
  %3058 = call float @dx.op.unary.f32(i32 6, float %3057)  ; FAbs(value)
  %3059 = fmul fast float %3056, %2970
  %3060 = fadd fast float %3059, %2983
  %3061 = fmul fast float %3058, %3060
  %3062 = fsub fast float %3045, %3061
  %3063 = fsub fast float %3039, %3058
  %3064 = select i1 %3054, float %3063, float 0.000000e+00
  %3065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3066 = extractvalue %dx.types.CBufRet.f32 %3065, 0
  %3067 = extractvalue %dx.types.CBufRet.f32 %3065, 1
  %3068 = extractvalue %dx.types.CBufRet.f32 %3065, 2
  %3069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3070 = extractvalue %dx.types.CBufRet.f32 %3069, 0
  %3071 = extractvalue %dx.types.CBufRet.f32 %3069, 1
  %3072 = extractvalue %dx.types.CBufRet.f32 %3069, 2
  %3073 = extractvalue %dx.types.CBufRet.f32 %3069, 3
  %3074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3075 = extractvalue %dx.types.CBufRet.f32 %3074, 3
  %3076 = call float @dx.op.binary.f32(i32 36, float %3062, float %3075)  ; FMin(a,b)
  %3077 = fmul fast float %3073, %3064
  %3078 = call float @dx.op.unary.f32(i32 7, float %3077)  ; Saturate(value)
  %3079 = fsub fast float %3070, %3066
  %3080 = fsub fast float %3071, %3067
  %3081 = fsub fast float %3072, %3068
  %3082 = fmul fast float %3078, %3079
  %3083 = fmul fast float %3078, %3080
  %3084 = fmul fast float %3078, %3081
  %3085 = fadd fast float %3082, %3066
  %3086 = fadd fast float %3083, %3067
  %3087 = fadd fast float %3084, %3068
  %3088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3089 = extractvalue %dx.types.CBufRet.f32 %3088, 0
  %3090 = extractvalue %dx.types.CBufRet.f32 %3088, 1
  %3091 = fadd fast float %3090, %3089
  %3092 = call float @dx.op.unary.f32(i32 7, float %3091)  ; Saturate(value)
  %3093 = extractvalue %dx.types.CBufRet.f32 %3088, 2
  %3094 = extractvalue %dx.types.CBufRet.f32 %3088, 3
  %3095 = fadd fast float %3094, %3093
  %3096 = call float @dx.op.unary.f32(i32 7, float %3095)  ; Saturate(value)
  %3097 = fmul fast float %3092, %3076
  %3098 = fmul fast float %3097, %3096
  br label %3340

; <label>:3099                                    ; preds = %3053
  br i1 %3054, label %3100, label %3121, !dx.controlflow.hints !99

; <label>:3100                                    ; preds = %3099
  %3101 = call float @dx.op.binary.f32(i32 36, float %3050, float %3040)  ; FMin(a,b)
  %3102 = fsub fast float %3050, %3101
  %3103 = fsub fast float %3102, %3039
  %3104 = call float @dx.op.unary.f32(i32 6, float %3103)  ; FAbs(value)
  %3105 = fadd fast float %3102, %3039
  %3106 = fmul fast float %3105, %2970
  %3107 = fadd fast float %3106, %2983
  %3108 = fmul fast float %3107, %3104
  %3109 = fsub fast float %3045, %3108
  br label %3121

; <label>:3110                                    ; preds = %3038
  br i1 %3052, label %3111, label %3121, !dx.controlflow.hints !100

; <label>:3111                                    ; preds = %3110
  %3112 = call float @dx.op.binary.f32(i32 35, float %3040, float %3050)  ; FMax(a,b)
  %3113 = icmp eq i32 %2989, 0
  %3114 = select i1 %3113, float %3050, float 0.000000e+00
  %3115 = fsub fast float -0.000000e+00, %3114
  %3116 = call float @dx.op.unary.f32(i32 6, float %3115)  ; FAbs(value)
  %3117 = fmul fast float %3114, %2970
  %3118 = fadd fast float %3117, %2983
  %3119 = fmul fast float %3116, %3118
  %3120 = fsub fast float %3045, %3119
  br label %3121

; <label>:3121                                    ; preds = %3111, %3110, %3100, %3099
  %3122 = phi float [ %3040, %3099 ], [ %3040, %3100 ], [ %3112, %3111 ], [ %3040, %3110 ]
  %3123 = phi float [ 0.000000e+00, %3099 ], [ %3104, %3100 ], [ %3116, %3111 ], [ 0.000000e+00, %3110 ]
  %3124 = phi float [ %3045, %3099 ], [ %3109, %3100 ], [ %3120, %3111 ], [ %3045, %3110 ]
  %3125 = phi float [ %3050, %3099 ], [ %3050, %3100 ], [ %3039, %3111 ], [ %3039, %3110 ]
  %3126 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 0
  store float -1.000000e+00, float* %3126, align 4, !tbaa !101, !noalias !105
  %3127 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 1
  store float -1.000000e+00, float* %3127, align 4, !tbaa !101, !noalias !105
  %3128 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 2
  store float -1.000000e+00, float* %3128, align 4, !tbaa !101, !noalias !105
  %3129 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 0
  store float -1.000000e+00, float* %3129, align 4, !tbaa !101, !noalias !105
  %3130 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 1
  store float -1.000000e+00, float* %3130, align 4, !tbaa !101, !noalias !105
  %3131 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 2
  store float -1.000000e+00, float* %3131, align 4, !tbaa !101, !noalias !105
  %3132 = icmp sgt i32 %2991, 0
  br i1 %3132, label %3133, label %3194

; <label>:3133                                    ; preds = %3121
  br label %3134

; <label>:3134                                    ; preds = %3183, %3133
  %3135 = phi i32 [ %3184, %3183 ], [ 0, %3133 ]
  %3136 = phi i32 [ %3185, %3183 ], [ 0, %3133 ]
  %3137 = add nuw i32 %3136, 171
  %3138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 %3137)  ; CBufferLoadLegacy(handle,regIndex)
  %3139 = extractvalue %dx.types.CBufRet.f32 %3138, 0
  %3140 = extractvalue %dx.types.CBufRet.f32 %3138, 1
  %3141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3142 = extractvalue %dx.types.CBufRet.f32 %3141, 0
  %3143 = extractvalue %dx.types.CBufRet.f32 %3141, 1
  %3144 = fsub fast float %3139, %3142
  %3145 = fsub fast float %3140, %3143
  %3146 = extractvalue %dx.types.CBufRet.f32 %3138, 2
  %3147 = fsub fast float -0.000000e+00, %3144
  %3148 = fsub fast float -0.000000e+00, %3145
  %3149 = call float @dx.op.dot2.f32(i32 54, float %2968, float %2969, float %3147, float %3148)  ; Dot2(ax,ay,bx,by)
  %3150 = fmul fast float %3149, 2.000000e+00
  %3151 = call float @dx.op.dot2.f32(i32 54, float %3147, float %3148, float %3147, float %3148)  ; Dot2(ax,ay,bx,by)
  %3152 = fmul fast float %3146, %3146
  %3153 = fsub fast float %3151, %3152
  %3154 = fmul fast float %3150, %3150
  %3155 = fmul fast float %3011, %3153
  %3156 = fsub fast float %3154, %3155
  %3157 = fcmp fast ogt float %3156, 0.000000e+00
  br i1 %3157, label %3158, label %3173, !dx.controlflow.hints !93

; <label>:3158                                    ; preds = %3134
  %3159 = fcmp fast ogt float %3150, 0.000000e+00
  %3160 = call float @dx.op.unary.f32(i32 24, float %3156)  ; Sqrt(value)
  %3161 = fsub fast float -0.000000e+00, %3160
  %3162 = select i1 %3159, float %3160, float %3161
  %3163 = fadd fast float %3162, %3150
  %3164 = fmul float %3163, -5.000000e-01
  %3165 = fdiv fast float %3164, %3004
  %3166 = call float @dx.op.binary.f32(i32 35, float %3165, float 0.000000e+00)  ; FMax(a,b)
  %3167 = call float @dx.op.binary.f32(i32 36, float %3039, float %3166)  ; FMin(a,b)
  %3168 = fdiv fast float %3153, %3164
  %3169 = call float @dx.op.binary.f32(i32 35, float %3168, float 0.000000e+00)  ; FMax(a,b)
  %3170 = call float @dx.op.binary.f32(i32 36, float %3039, float %3169)  ; FMin(a,b)
  %3171 = call float @dx.op.binary.f32(i32 36, float %3167, float %3170)  ; FMin(a,b)
  %3172 = call float @dx.op.binary.f32(i32 35, float %3167, float %3170)  ; FMax(a,b)
  br label %3173

; <label>:3173                                    ; preds = %3158, %3134
  %3174 = phi float [ %3172, %3158 ], [ -1.000000e+00, %3134 ]
  %3175 = phi float [ %3171, %3158 ], [ -1.000000e+00, %3134 ]
  %3176 = phi i1 [ true, %3158 ], [ false, %3134 ]
  br i1 %3176, label %3177, label %3183, !dx.controlflow.hints !116

; <label>:3177                                    ; preds = %3173
  %3178 = call float @dx.op.binary.f32(i32 35, float %3122, float %3175)  ; FMax(a,b)
  %3179 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 %3136
  store float %3178, float* %3179, align 4, !tbaa !101, !noalias !105
  %3180 = call float @dx.op.binary.f32(i32 35, float %3122, float %3174)  ; FMax(a,b)
  %3181 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 %3136
  store float %3180, float* %3181, align 4, !tbaa !101, !noalias !105
  %3182 = add nsw i32 %3135, 1
  br label %3183

; <label>:3183                                    ; preds = %3177, %3173
  %3184 = phi i32 [ %3182, %3177 ], [ %3135, %3173 ]
  %3185 = add nuw nsw i32 %3136, 1
  %3186 = icmp eq i32 %3185, %2991
  br i1 %3186, label %3187, label %3134

; <label>:3187                                    ; preds = %3183
  %3188 = load float, float* %3128, align 4, !tbaa !101, !alias.scope !117, !noalias !120
  %3189 = load float, float* %3127, align 4, !tbaa !101, !alias.scope !123, !noalias !124
  %3190 = load float, float* %3126, align 4, !tbaa !101, !alias.scope !125, !noalias !126
  %3191 = load float, float* %3131, align 4, !tbaa !101, !alias.scope !127, !noalias !130
  %3192 = load float, float* %3130, align 4, !tbaa !101, !alias.scope !133, !noalias !134
  %3193 = load float, float* %3129, align 4, !tbaa !101, !alias.scope !135, !noalias !136
  br label %3194

; <label>:3194                                    ; preds = %3187, %3121
  %3195 = phi float [ -1.000000e+00, %3121 ], [ %3193, %3187 ]
  %3196 = phi float [ -1.000000e+00, %3121 ], [ %3192, %3187 ]
  %3197 = phi float [ -1.000000e+00, %3121 ], [ %3191, %3187 ]
  %3198 = phi float [ -1.000000e+00, %3121 ], [ %3190, %3187 ]
  %3199 = phi float [ -1.000000e+00, %3121 ], [ %3189, %3187 ]
  %3200 = phi float [ -1.000000e+00, %3121 ], [ %3188, %3187 ]
  %3201 = phi i32 [ 0, %3121 ], [ %3184, %3187 ]
  %3202 = call float @dx.op.binary.f32(i32 36, float %3199, float %3200)  ; FMin(a,b)
  %3203 = call float @dx.op.binary.f32(i32 36, float %3198, float %3202)  ; FMin(a,b)
  %3204 = call float @dx.op.binary.f32(i32 35, float %3198, float %3199)  ; FMax(a,b)
  %3205 = call float @dx.op.binary.f32(i32 36, float %3204, float %3200)  ; FMin(a,b)
  %3206 = call float @dx.op.binary.f32(i32 36, float %3198, float %3199)  ; FMin(a,b)
  %3207 = call float @dx.op.binary.f32(i32 35, float %3206, float %3205)  ; FMax(a,b)
  %3208 = call float @dx.op.binary.f32(i32 35, float %3199, float %3200)  ; FMax(a,b)
  %3209 = call float @dx.op.binary.f32(i32 35, float %3198, float %3208)  ; FMax(a,b)
  store float %3203, float* %3126, align 4, !tbaa !101, !alias.scope !125, !noalias !126
  store float %3207, float* %3127, align 4, !tbaa !101, !alias.scope !123, !noalias !124
  store float %3209, float* %3128, align 4, !tbaa !101, !alias.scope !117, !noalias !120
  %3210 = call float @dx.op.binary.f32(i32 36, float %3196, float %3197)  ; FMin(a,b)
  %3211 = call float @dx.op.binary.f32(i32 36, float %3195, float %3210)  ; FMin(a,b)
  %3212 = call float @dx.op.binary.f32(i32 35, float %3195, float %3196)  ; FMax(a,b)
  %3213 = call float @dx.op.binary.f32(i32 36, float %3212, float %3197)  ; FMin(a,b)
  %3214 = call float @dx.op.binary.f32(i32 36, float %3195, float %3196)  ; FMin(a,b)
  %3215 = call float @dx.op.binary.f32(i32 35, float %3214, float %3213)  ; FMax(a,b)
  %3216 = call float @dx.op.binary.f32(i32 35, float %3196, float %3197)  ; FMax(a,b)
  %3217 = call float @dx.op.binary.f32(i32 35, float %3195, float %3216)  ; FMax(a,b)
  store float %3211, float* %3129, align 4, !tbaa !101, !alias.scope !135, !noalias !136
  store float %3215, float* %3130, align 4, !tbaa !101, !alias.scope !133, !noalias !134
  store float %3217, float* %3131, align 4, !tbaa !101, !alias.scope !127, !noalias !130
  %3218 = sub nsw i32 3, %3201
  %3219 = icmp sgt i32 %3218, 2
  br i1 %3219, label %3220, label %3258, !dx.controlflow.hints !137

; <label>:3220                                    ; preds = %3194
  %3221 = icmp eq i32 %2989, 0
  %3222 = fsub fast float %3039, %3123
  %3223 = select i1 %3221, float %3222, float %3123
  %3224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3225 = extractvalue %dx.types.CBufRet.f32 %3224, 0
  %3226 = extractvalue %dx.types.CBufRet.f32 %3224, 1
  %3227 = extractvalue %dx.types.CBufRet.f32 %3224, 2
  %3228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3229 = extractvalue %dx.types.CBufRet.f32 %3228, 0
  %3230 = extractvalue %dx.types.CBufRet.f32 %3228, 1
  %3231 = extractvalue %dx.types.CBufRet.f32 %3228, 2
  %3232 = extractvalue %dx.types.CBufRet.f32 %3228, 3
  %3233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3234 = extractvalue %dx.types.CBufRet.f32 %3233, 3
  %3235 = call float @dx.op.binary.f32(i32 36, float %3124, float %3234)  ; FMin(a,b)
  %3236 = fmul fast float %3232, %3223
  %3237 = call float @dx.op.unary.f32(i32 7, float %3236)  ; Saturate(value)
  %3238 = fsub fast float %3229, %3225
  %3239 = fsub fast float %3230, %3226
  %3240 = fsub fast float %3231, %3227
  %3241 = fmul fast float %3237, %3238
  %3242 = fmul fast float %3237, %3239
  %3243 = fmul fast float %3237, %3240
  %3244 = fadd fast float %3241, %3225
  %3245 = fadd fast float %3242, %3226
  %3246 = fadd fast float %3243, %3227
  %3247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3248 = extractvalue %dx.types.CBufRet.f32 %3247, 0
  %3249 = extractvalue %dx.types.CBufRet.f32 %3247, 1
  %3250 = fadd fast float %3249, %3248
  %3251 = call float @dx.op.unary.f32(i32 7, float %3250)  ; Saturate(value)
  %3252 = extractvalue %dx.types.CBufRet.f32 %3247, 2
  %3253 = extractvalue %dx.types.CBufRet.f32 %3247, 3
  %3254 = fadd fast float %3253, %3252
  %3255 = call float @dx.op.unary.f32(i32 7, float %3254)  ; Saturate(value)
  %3256 = fmul fast float %3251, %3235
  %3257 = fmul fast float %3256, %3255
  br label %3340

; <label>:3258                                    ; preds = %3194
  %3259 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 %3218
  %3260 = load float, float* %3259, align 4, !tbaa !101, !noalias !105
  %3261 = fcmp fast olt float %3260, %3125
  %3262 = icmp sgt i32 %3201, 0
  %3263 = and i1 %3262, %3261
  br i1 %3263, label %3264, label %3301

; <label>:3264                                    ; preds = %3258
  br label %3265

; <label>:3265                                    ; preds = %3294, %3264
  %3266 = phi float [ %3295, %3294 ], [ %3123, %3264 ]
  %3267 = phi float [ %3296, %3294 ], [ %3124, %3264 ]
  %3268 = phi float [ %3276, %3294 ], [ %3260, %3264 ]
  %3269 = phi i32 [ %3273, %3294 ], [ %3218, %3264 ]
  %3270 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 %3269
  %3271 = load float, float* %3270, align 4, !tbaa !101, !noalias !105
  %3272 = icmp slt i32 %3269, 2
  %3273 = add nsw i32 %3269, 1
  %3274 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 %3273
  %3275 = load float, float* %3274, align 4, !tbaa !101, !noalias !105
  %3276 = select i1 %3272, float %3275, float %3039
  %3277 = call float @dx.op.binary.f32(i32 36, float %3276, float %3271)  ; FMin(a,b)
  %3278 = call float @dx.op.binary.f32(i32 36, float %3125, float %3277)  ; FMin(a,b)
  %3279 = icmp eq i32 %2989, 0
  %3280 = fadd fast float %3278, %3268
  %3281 = fmul fast float %3280, %2970
  %3282 = fadd fast float %3281, %2983
  br i1 %3279, label %3288, label %3283, !dx.controlflow.hints !138

; <label>:3283                                    ; preds = %3265
  %3284 = fsub fast float %3278, %3268
  %3285 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3284)  ; FMax(a,b)
  %3286 = fmul fast float %3285, %3282
  %3287 = fadd fast float %3286, %3267
  br label %3294

; <label>:3288                                    ; preds = %3265
  %3289 = fsub fast float %3268, %3278
  %3290 = call float @dx.op.unary.f32(i32 6, float %3289)  ; FAbs(value)
  %3291 = fadd fast float %3290, %3266
  %3292 = fmul fast float %3290, %3282
  %3293 = fsub fast float %3267, %3292
  br label %3294

; <label>:3294                                    ; preds = %3288, %3283
  %3295 = phi float [ %3285, %3283 ], [ %3291, %3288 ]
  %3296 = phi float [ %3287, %3283 ], [ %3293, %3288 ]
  %3297 = fcmp fast olt float %3276, %3125
  %3298 = icmp slt i32 %3273, 3
  %3299 = and i1 %3298, %3297
  br i1 %3299, label %3265, label %3300

; <label>:3300                                    ; preds = %3294
  br label %3301

; <label>:3301                                    ; preds = %3300, %3258
  %3302 = phi float [ %3123, %3258 ], [ %3295, %3300 ]
  %3303 = phi float [ %3124, %3258 ], [ %3296, %3300 ]
  %3304 = fsub fast float %3039, %3302
  %3305 = select i1 %3041, float %3302, float %3304
  %3306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3307 = extractvalue %dx.types.CBufRet.f32 %3306, 0
  %3308 = extractvalue %dx.types.CBufRet.f32 %3306, 1
  %3309 = extractvalue %dx.types.CBufRet.f32 %3306, 2
  %3310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3311 = extractvalue %dx.types.CBufRet.f32 %3310, 0
  %3312 = extractvalue %dx.types.CBufRet.f32 %3310, 1
  %3313 = extractvalue %dx.types.CBufRet.f32 %3310, 2
  %3314 = extractvalue %dx.types.CBufRet.f32 %3310, 3
  %3315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3316 = extractvalue %dx.types.CBufRet.f32 %3315, 3
  %3317 = call float @dx.op.binary.f32(i32 36, float %3303, float %3316)  ; FMin(a,b)
  %3318 = fmul fast float %3314, %3305
  %3319 = call float @dx.op.unary.f32(i32 7, float %3318)  ; Saturate(value)
  %3320 = fsub fast float %3311, %3307
  %3321 = fsub fast float %3312, %3308
  %3322 = fsub fast float %3313, %3309
  %3323 = fmul fast float %3319, %3320
  %3324 = fmul fast float %3319, %3321
  %3325 = fmul fast float %3319, %3322
  %3326 = fadd fast float %3323, %3307
  %3327 = fadd fast float %3324, %3308
  %3328 = fadd fast float %3325, %3309
  %3329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3330 = extractvalue %dx.types.CBufRet.f32 %3329, 0
  %3331 = extractvalue %dx.types.CBufRet.f32 %3329, 1
  %3332 = fadd fast float %3331, %3330
  %3333 = call float @dx.op.unary.f32(i32 7, float %3332)  ; Saturate(value)
  %3334 = extractvalue %dx.types.CBufRet.f32 %3329, 2
  %3335 = extractvalue %dx.types.CBufRet.f32 %3329, 3
  %3336 = fadd fast float %3335, %3334
  %3337 = call float @dx.op.unary.f32(i32 7, float %3336)  ; Saturate(value)
  %3338 = fmul fast float %3333, %3317
  %3339 = fmul fast float %3338, %3337
  br label %3340

; <label>:3340                                    ; preds = %3301, %3220, %3055, %3037, %3035
  %3341 = phi float [ %3064, %3055 ], [ %3223, %3220 ], [ %3305, %3301 ], [ 0.000000e+00, %3035 ], [ 0.000000e+00, %3037 ]
  %3342 = phi float [ %3098, %3055 ], [ %3257, %3220 ], [ %3339, %3301 ], [ 0.000000e+00, %3035 ], [ 0.000000e+00, %3037 ]
  %3343 = phi float [ %3085, %3055 ], [ %3244, %3220 ], [ %3326, %3301 ], [ 0.000000e+00, %3035 ], [ 0.000000e+00, %3037 ]
  %3344 = phi float [ %3086, %3055 ], [ %3245, %3220 ], [ %3327, %3301 ], [ 0.000000e+00, %3035 ], [ 0.000000e+00, %3037 ]
  %3345 = phi float [ %3087, %3055 ], [ %3246, %3220 ], [ %3328, %3301 ], [ 0.000000e+00, %3035 ], [ 0.000000e+00, %3037 ]
  %3346 = fmul fast float %2978, %3342
  %3347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3348 = extractvalue %dx.types.CBufRet.f32 %3347, 2
  %3349 = fsub fast float %2985, %3348
  %3350 = fcmp fast olt float %3346, -2.000000e+01
  %3351 = call float @dx.op.unary.f32(i32 21, float %3346)  ; Exp(value)
  %3352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3353 = extractvalue %dx.types.CBufRet.f32 %3352, 2
  %3354 = extractvalue %dx.types.CBufRet.f32 %3352, 3
  %3355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %3356 = extractvalue %dx.types.CBufRet.f32 %3355, 2
  %3357 = fmul fast float %3354, %3349
  %3358 = call float @dx.op.unary.f32(i32 7, float %3357)  ; Saturate(value)
  %3359 = fsub fast float 1.000000e+00, %3358
  %3360 = fmul fast float %2970, 5.000000e-01
  %3361 = fadd fast float %3360, 5.000000e-01
  %3362 = call float @dx.op.unary.f32(i32 7, float %3361)  ; Saturate(value)
  %3363 = fsub fast float 1.000000e+00, %3362
  %3364 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3359)  ; FMax(a,b)
  %3365 = fdiv fast float %3363, %3364
  %3366 = fsub fast float %3349, %2936
  %3367 = call float @dx.op.unary.f32(i32 6, float %3366)  ; FAbs(value)
  %3368 = fmul fast float %3367, %3353
  %3369 = call float @dx.op.unary.f32(i32 7, float %3365)  ; Saturate(value)
  %3370 = fsub fast float 1.000000e+00, %3368
  %3371 = fmul fast float %3370, %3369
  %3372 = fadd fast float %3371, %3368
  %3373 = fmul fast float %3356, %3349
  %3374 = call float @dx.op.unary.f32(i32 7, float %3373)  ; Saturate(value)
  %3375 = fsub fast float 1.000000e+00, %3372
  %3376 = fmul fast float %3375, %3374
  %3377 = fadd fast float %3376, %3372
  %3378 = call float @dx.op.unary.f32(i32 7, float %3377)  ; Saturate(value)
  %3379 = fadd fast float %3351, -1.000000e+00
  %3380 = select i1 %3350, float -1.000000e+00, float %3379
  %3381 = fmul fast float %3378, %3380
  %3382 = fadd fast float %3381, 1.000000e+00
  %3383 = fsub fast float -0.000000e+00, %3381
  %3384 = fmul fast float %3343, %3383
  %3385 = fmul fast float %3344, %3383
  %3386 = fmul fast float %3345, %3383
  br label %3387

; <label>:3387                                    ; preds = %3340, %2889
  %3388 = phi float [ %3341, %3340 ], [ 0.000000e+00, %2889 ]
  %3389 = phi float [ %3382, %3340 ], [ 1.000000e+00, %2889 ]
  %3390 = phi float [ %3384, %3340 ], [ 0.000000e+00, %2889 ]
  %3391 = phi float [ %3385, %3340 ], [ 0.000000e+00, %2889 ]
  %3392 = phi float [ %3386, %3340 ], [ 0.000000e+00, %2889 ]
  %3393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3394 = extractvalue %dx.types.CBufRet.f32 %3393, 1
  %3395 = fsub fast float 1.000000e+00, %3389
  %3396 = fmul fast float %3395, %2971
  %3397 = fmul fast float %3396, %3394
  %3398 = fsub fast float %2971, %3397
  br i1 %2964, label %3399, label %3428, !dx.controlflow.hints !139

; <label>:3399                                    ; preds = %3387
  %3400 = fmul fast float %2972, %2961
  %3401 = fadd fast float %3400, %2962
  %3402 = call float @dx.op.unary.f32(i32 7, float %3401)  ; Saturate(value)
  %3403 = fmul fast float %2943, %3398
  %3404 = fsub fast float -0.000000e+00, %3403
  %3405 = fmul fast float %2944, %3398
  %3406 = fsub fast float -0.000000e+00, %3405
  %3407 = call float @dx.op.unary.f32(i32 21, float %3404)  ; Exp(value)
  %3408 = call float @dx.op.unary.f32(i32 21, float %3406)  ; Exp(value)
  %3409 = call float @dx.op.binary.f32(i32 35, float %2951, float %3407)  ; FMax(a,b)
  %3410 = call float @dx.op.binary.f32(i32 35, float %2951, float %3408)  ; FMax(a,b)
  %3411 = fsub fast float %3410, %3409
  %3412 = fmul fast float %3411, %3402
  %3413 = fadd fast float %3412, %3409
  %3414 = call float @dx.op.unary.f32(i32 7, float %3413)  ; Saturate(value)
  %3415 = fsub fast float %2948, %2953
  %3416 = fsub fast float %2949, %2954
  %3417 = fsub fast float %2950, %2955
  %3418 = fmul fast float %3402, %3415
  %3419 = fmul fast float %3402, %3416
  %3420 = fmul fast float %3402, %3417
  %3421 = fadd fast float %3418, %2953
  %3422 = fadd fast float %3419, %2954
  %3423 = fadd fast float %3420, %2955
  %3424 = fsub fast float 1.000000e+00, %3414
  %3425 = fmul fast float %3424, %3421
  %3426 = fmul fast float %3424, %3422
  %3427 = fmul fast float %3424, %3423
  br label %3487

; <label>:3428                                    ; preds = %3387
  %3429 = fmul fast float %3398, %2960
  %3430 = call float @dx.op.unary.f32(i32 7, float %3429)  ; Saturate(value)
  %3431 = fsub fast float 2.000000e+00, %3430
  %3432 = fmul fast float %3430, 9.921875e-01
  %3433 = fmul fast float %3432, %3431
  %3434 = fadd fast float %3433, 3.906250e-03
  %3435 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %3434, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3436 = extractvalue %dx.types.ResRet.f32 %3435, 0
  %3437 = fsub fast float %3430, %3436
  %3438 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3437)  ; FMax(a,b)
  %3439 = fmul fast float %2946, %2936
  %3440 = call float @dx.op.unary.f32(i32 6, float %3439)  ; FAbs(value)
  %3441 = fcmp fast ogt float %3440, 0x3EB0C6F7A0000000
  br i1 %3441, label %3442, label %3448, !dx.controlflow.hints !140

; <label>:3442                                    ; preds = %3428
  %3443 = fmul fast float %3439, 0xBFF7154760000000
  %3444 = call float @dx.op.unary.f32(i32 21, float %3443)  ; Exp(value)
  %3445 = fsub fast float 1.000000e+00, %3444
  %3446 = fdiv fast float %3445, %3439
  %3447 = fmul fast float %3446, %2956
  br label %3448

; <label>:3448                                    ; preds = %3442, %3428
  %3449 = phi float [ %3447, %3442 ], [ %2956, %3428 ]
  %3450 = fadd fast float %3449, %2958
  %3451 = fmul fast float %3450, %3438
  %3452 = fmul fast float %2943, %3451
  %3453 = fsub fast float -0.000000e+00, %3452
  %3454 = fmul fast float %2944, %3451
  %3455 = fsub fast float -0.000000e+00, %3454
  %3456 = fmul fast float %2945, %3451
  %3457 = fsub fast float -0.000000e+00, %3456
  %3458 = call float @dx.op.unary.f32(i32 21, float %3453)  ; Exp(value)
  %3459 = call float @dx.op.unary.f32(i32 21, float %3455)  ; Exp(value)
  %3460 = call float @dx.op.unary.f32(i32 21, float %3457)  ; Exp(value)
  %3461 = fmul fast float %2972, %2972
  %3462 = fadd fast float %3461, 1.000000e+00
  %3463 = fmul fast float %3462, 0x3FAE8EC8A0000000
  %3464 = fmul fast float %3463, %2953
  %3465 = fmul fast float %3463, %2954
  %3466 = fmul fast float %3463, %2955
  %3467 = fmul fast float %2972, %2951
  %3468 = fsub fast float 1.000000e+00, %3467
  %3469 = fmul fast float %2951, %2951
  %3470 = fsub fast float 1.000000e+00, %3469
  %3471 = fmul fast float %3470, 0x3FB45F3060000000
  %3472 = fmul fast float %3468, %3468
  %3473 = fdiv fast float 1.000000e+00, %3472
  %3474 = fmul fast float %3471, %3473
  %3475 = fmul fast float %3474, %2948
  %3476 = fmul fast float %3474, %2949
  %3477 = fmul fast float %3474, %2950
  %3478 = fadd fast float %3475, %3464
  %3479 = fadd fast float %3476, %3465
  %3480 = fadd fast float %3477, %3466
  %3481 = fsub fast float 1.000000e+00, %3458
  %3482 = fsub fast float 1.000000e+00, %3459
  %3483 = fsub fast float 1.000000e+00, %3460
  %3484 = fmul fast float %3478, %3481
  %3485 = fmul fast float %3479, %3482
  %3486 = fmul fast float %3480, %3483
  br label %3487

; <label>:3487                                    ; preds = %3448, %3399
  %3488 = phi float [ %3425, %3399 ], [ %3484, %3448 ]
  %3489 = phi float [ %3426, %3399 ], [ %3485, %3448 ]
  %3490 = phi float [ %3427, %3399 ], [ %3486, %3448 ]
  %3491 = phi float [ %3414, %3399 ], [ %3458, %3448 ]
  %3492 = phi float [ %3414, %3399 ], [ %3459, %3448 ]
  %3493 = phi float [ %3414, %3399 ], [ %3460, %3448 ]
  br i1 %2980, label %3494, label %3692, !dx.controlflow.hints !141

; <label>:3494                                    ; preds = %3487
  %3495 = extractvalue %dx.types.CBufRet.f32 %3393, 0
  %3496 = fmul fast float %3495, %3395
  %3497 = fsub fast float %3390, %3488
  %3498 = fsub fast float %3391, %3489
  %3499 = fsub fast float %3392, %3490
  %3500 = fmul fast float %3496, %3497
  %3501 = fmul fast float %3496, %3498
  %3502 = fmul fast float %3496, %3499
  %3503 = fadd fast float %3500, %3488
  %3504 = fadd fast float %3501, %3489
  %3505 = fadd fast float %3502, %3490
  %3506 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3491)  ; FMax(a,b)
  %3507 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3492)  ; FMax(a,b)
  %3508 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3493)  ; FMax(a,b)
  %3509 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3389)  ; FMax(a,b)
  %3510 = call float @dx.op.binary.f32(i32 35, float %3388, float %3398)  ; FMax(a,b)
  %3511 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3510)  ; FMax(a,b)
  %3512 = fdiv fast float %3388, %3511
  %3513 = call float @dx.op.unary.f32(i32 7, float %3512)  ; Saturate(value)
  %3514 = fdiv fast float %3398, %3511
  %3515 = call float @dx.op.unary.f32(i32 7, float %3514)  ; Saturate(value)
  %3516 = fcmp fast une float %3509, 1.000000e+00
  br i1 %3516, label %3517, label %3530, !dx.controlflow.hints !142

; <label>:3517                                    ; preds = %3494
  %3518 = call float @dx.op.unary.f32(i32 23, float %3509)  ; Log(value)
  %3519 = fmul fast float %3518, 0x3FE62E4300000000
  %3520 = fmul fast float %3390, %3519
  %3521 = fsub fast float -0.000000e+00, %3520
  %3522 = fmul fast float %3391, %3519
  %3523 = fsub fast float -0.000000e+00, %3522
  %3524 = fmul fast float %3392, %3519
  %3525 = fsub fast float -0.000000e+00, %3524
  %3526 = fsub fast float 1.000000e+00, %3509
  %3527 = fdiv fast float %3521, %3526
  %3528 = fdiv fast float %3523, %3526
  %3529 = fdiv fast float %3525, %3526
  br label %3530

; <label>:3530                                    ; preds = %3517, %3494
  %3531 = phi float [ %3527, %3517 ], [ %3390, %3494 ]
  %3532 = phi float [ %3528, %3517 ], [ %3391, %3494 ]
  %3533 = phi float [ %3529, %3517 ], [ %3392, %3494 ]
  %3534 = phi float [ %3519, %3517 ], [ 0.000000e+00, %3494 ]
  %3535 = fcmp fast une float %3506, 1.000000e+00
  br i1 %3535, label %3536, label %3543, !dx.controlflow.hints !143

; <label>:3536                                    ; preds = %3530
  %3537 = call float @dx.op.unary.f32(i32 23, float %3506)  ; Log(value)
  %3538 = fmul fast float %3537, 0x3FE62E4300000000
  %3539 = fmul fast float %3503, %3538
  %3540 = fsub fast float -0.000000e+00, %3539
  %3541 = fsub fast float 1.000000e+00, %3506
  %3542 = fdiv fast float %3540, %3541
  br label %3543

; <label>:3543                                    ; preds = %3536, %3530
  %3544 = phi float [ %3542, %3536 ], [ %3503, %3530 ]
  %3545 = phi float [ %3538, %3536 ], [ 0.000000e+00, %3530 ]
  %3546 = fcmp fast une float %3507, 1.000000e+00
  br i1 %3546, label %3547, label %3554, !dx.controlflow.hints !143

; <label>:3547                                    ; preds = %3543
  %3548 = call float @dx.op.unary.f32(i32 23, float %3507)  ; Log(value)
  %3549 = fmul fast float %3548, 0x3FE62E4300000000
  %3550 = fmul fast float %3504, %3549
  %3551 = fsub fast float -0.000000e+00, %3550
  %3552 = fsub fast float 1.000000e+00, %3507
  %3553 = fdiv fast float %3551, %3552
  br label %3554

; <label>:3554                                    ; preds = %3547, %3543
  %3555 = phi float [ %3553, %3547 ], [ %3504, %3543 ]
  %3556 = phi float [ %3549, %3547 ], [ 0.000000e+00, %3543 ]
  %3557 = fcmp fast une float %3508, 1.000000e+00
  br i1 %3557, label %3558, label %3565, !dx.controlflow.hints !143

; <label>:3558                                    ; preds = %3554
  %3559 = call float @dx.op.unary.f32(i32 23, float %3508)  ; Log(value)
  %3560 = fmul fast float %3559, 0x3FE62E4300000000
  %3561 = fmul fast float %3505, %3560
  %3562 = fsub fast float -0.000000e+00, %3561
  %3563 = fsub fast float 1.000000e+00, %3508
  %3564 = fdiv fast float %3562, %3563
  br label %3565

; <label>:3565                                    ; preds = %3558, %3554
  %3566 = phi float [ %3564, %3558 ], [ %3505, %3554 ]
  %3567 = phi float [ %3560, %3558 ], [ 0.000000e+00, %3554 ]
  %3568 = fmul fast float %3531, %3515
  %3569 = fmul fast float %3532, %3515
  %3570 = fmul fast float %3533, %3515
  %3571 = fmul fast float %3534, %3515
  %3572 = fmul fast float %3544, %3513
  %3573 = fmul fast float %3555, %3513
  %3574 = fmul fast float %3566, %3513
  %3575 = fmul fast float %3545, %3513
  %3576 = fmul fast float %3556, %3513
  %3577 = fmul fast float %3567, %3513
  %3578 = fadd fast float %3572, %3568
  %3579 = fadd fast float %3573, %3569
  %3580 = fadd fast float %3574, %3570
  %3581 = fadd fast float %3575, %3571
  %3582 = fadd fast float %3576, %3571
  %3583 = fadd fast float %3577, %3571
  %3584 = fcmp fast une float %3581, 0.000000e+00
  br i1 %3584, label %3585, label %3592, !dx.controlflow.hints !144

; <label>:3585                                    ; preds = %3565
  %3586 = fmul fast float %3581, 0x3FF7154760000000
  %3587 = call float @dx.op.unary.f32(i32 21, float %3586)  ; Exp(value)
  %3588 = fsub fast float 1.000000e+00, %3587
  %3589 = fmul fast float %3578, %3588
  %3590 = fsub fast float -0.000000e+00, %3589
  %3591 = fdiv fast float %3590, %3581
  br label %3592

; <label>:3592                                    ; preds = %3585, %3565
  %3593 = phi float [ %3587, %3585 ], [ 1.000000e+00, %3565 ]
  %3594 = phi float [ %3591, %3585 ], [ %3578, %3565 ]
  %3595 = fcmp fast une float %3582, 0.000000e+00
  br i1 %3595, label %3596, label %3603, !dx.controlflow.hints !144

; <label>:3596                                    ; preds = %3592
  %3597 = fmul fast float %3582, 0x3FF7154760000000
  %3598 = call float @dx.op.unary.f32(i32 21, float %3597)  ; Exp(value)
  %3599 = fsub fast float 1.000000e+00, %3598
  %3600 = fmul fast float %3579, %3599
  %3601 = fsub fast float -0.000000e+00, %3600
  %3602 = fdiv fast float %3601, %3582
  br label %3603

; <label>:3603                                    ; preds = %3596, %3592
  %3604 = phi float [ %3598, %3596 ], [ 1.000000e+00, %3592 ]
  %3605 = phi float [ %3602, %3596 ], [ %3579, %3592 ]
  %3606 = fcmp fast une float %3583, 0.000000e+00
  br i1 %3606, label %3607, label %3614, !dx.controlflow.hints !144

; <label>:3607                                    ; preds = %3603
  %3608 = fmul fast float %3583, 0x3FF7154760000000
  %3609 = call float @dx.op.unary.f32(i32 21, float %3608)  ; Exp(value)
  %3610 = fsub fast float 1.000000e+00, %3609
  %3611 = fmul fast float %3580, %3610
  %3612 = fsub fast float -0.000000e+00, %3611
  %3613 = fdiv fast float %3612, %3583
  br label %3614

; <label>:3614                                    ; preds = %3607, %3603
  %3615 = phi float [ %3609, %3607 ], [ 1.000000e+00, %3603 ]
  %3616 = phi float [ %3613, %3607 ], [ %3580, %3603 ]
  %3617 = fcmp fast ogt float %3513, %3515
  br i1 %3617, label %3618, label %3638, !dx.controlflow.hints !145

; <label>:3618                                    ; preds = %3614
  %3619 = fsub fast float 1.000000e+00, %3515
  %3620 = fmul fast float %3531, %3619
  %3621 = fmul fast float %3532, %3619
  %3622 = fmul fast float %3533, %3619
  %3623 = fmul fast float %3534, %3619
  %3624 = fcmp fast une float %3623, 0.000000e+00
  br i1 %3624, label %3625, label %3676, !dx.controlflow.hints !146

; <label>:3625                                    ; preds = %3618
  %3626 = fmul fast float %3623, 0x3FF7154760000000
  %3627 = call float @dx.op.unary.f32(i32 21, float %3626)  ; Exp(value)
  %3628 = fsub fast float 1.000000e+00, %3627
  %3629 = fmul fast float %3620, %3628
  %3630 = fsub fast float -0.000000e+00, %3629
  %3631 = fmul fast float %3621, %3628
  %3632 = fsub fast float -0.000000e+00, %3631
  %3633 = fmul fast float %3622, %3628
  %3634 = fsub fast float -0.000000e+00, %3633
  %3635 = fdiv fast float %3630, %3623
  %3636 = fdiv fast float %3632, %3623
  %3637 = fdiv fast float %3634, %3623
  br label %3676

; <label>:3638                                    ; preds = %3614
  %3639 = fsub fast float 1.000000e+00, %3513
  %3640 = fmul fast float %3544, %3639
  %3641 = fmul fast float %3555, %3639
  %3642 = fmul fast float %3566, %3639
  %3643 = fmul fast float %3545, %3639
  %3644 = fmul fast float %3556, %3639
  %3645 = fmul fast float %3567, %3639
  %3646 = fcmp fast une float %3643, 0.000000e+00
  br i1 %3646, label %3647, label %3654, !dx.controlflow.hints !144

; <label>:3647                                    ; preds = %3638
  %3648 = fmul fast float %3643, 0x3FF7154760000000
  %3649 = call float @dx.op.unary.f32(i32 21, float %3648)  ; Exp(value)
  %3650 = fsub fast float 1.000000e+00, %3649
  %3651 = fmul fast float %3640, %3650
  %3652 = fsub fast float -0.000000e+00, %3651
  %3653 = fdiv fast float %3652, %3643
  br label %3654

; <label>:3654                                    ; preds = %3647, %3638
  %3655 = phi float [ %3653, %3647 ], [ %3640, %3638 ]
  %3656 = phi float [ %3649, %3647 ], [ 1.000000e+00, %3638 ]
  %3657 = fcmp fast une float %3644, 0.000000e+00
  br i1 %3657, label %3658, label %3665, !dx.controlflow.hints !144

; <label>:3658                                    ; preds = %3654
  %3659 = fmul fast float %3644, 0x3FF7154760000000
  %3660 = call float @dx.op.unary.f32(i32 21, float %3659)  ; Exp(value)
  %3661 = fsub fast float 1.000000e+00, %3660
  %3662 = fmul fast float %3641, %3661
  %3663 = fsub fast float -0.000000e+00, %3662
  %3664 = fdiv fast float %3663, %3644
  br label %3665

; <label>:3665                                    ; preds = %3658, %3654
  %3666 = phi float [ %3664, %3658 ], [ %3641, %3654 ]
  %3667 = phi float [ %3660, %3658 ], [ 1.000000e+00, %3654 ]
  %3668 = fcmp fast une float %3645, 0.000000e+00
  br i1 %3668, label %3669, label %3676, !dx.controlflow.hints !144

; <label>:3669                                    ; preds = %3665
  %3670 = fmul fast float %3645, 0x3FF7154760000000
  %3671 = call float @dx.op.unary.f32(i32 21, float %3670)  ; Exp(value)
  %3672 = fsub fast float 1.000000e+00, %3671
  %3673 = fmul fast float %3642, %3672
  %3674 = fsub fast float -0.000000e+00, %3673
  %3675 = fdiv fast float %3674, %3645
  br label %3676

; <label>:3676                                    ; preds = %3669, %3665, %3625, %3618
  %3677 = phi float [ %3675, %3669 ], [ %3637, %3625 ], [ %3622, %3618 ], [ %3642, %3665 ]
  %3678 = phi float [ %3666, %3669 ], [ %3636, %3625 ], [ %3621, %3618 ], [ %3666, %3665 ]
  %3679 = phi float [ %3655, %3669 ], [ %3635, %3625 ], [ %3620, %3618 ], [ %3655, %3665 ]
  %3680 = phi float [ %3671, %3669 ], [ %3627, %3625 ], [ 1.000000e+00, %3618 ], [ 1.000000e+00, %3665 ]
  %3681 = phi float [ %3667, %3669 ], [ %3627, %3625 ], [ 1.000000e+00, %3618 ], [ %3667, %3665 ]
  %3682 = phi float [ %3656, %3669 ], [ %3627, %3625 ], [ 1.000000e+00, %3618 ], [ %3656, %3665 ]
  %3683 = fmul fast float %3682, %3594
  %3684 = fmul fast float %3681, %3605
  %3685 = fmul fast float %3680, %3616
  %3686 = fadd fast float %3683, %3679
  %3687 = fadd fast float %3684, %3678
  %3688 = fadd fast float %3685, %3677
  %3689 = fmul fast float %3682, %3593
  %3690 = fmul fast float %3681, %3604
  %3691 = fmul fast float %3680, %3615
  br label %3692

; <label>:3692                                    ; preds = %3676, %3487
  %3693 = phi float [ %3493, %3487 ], [ %3691, %3676 ]
  %3694 = phi float [ %3492, %3487 ], [ %3690, %3676 ]
  %3695 = phi float [ %3491, %3487 ], [ %3689, %3676 ]
  %3696 = phi float [ %3490, %3487 ], [ %3688, %3676 ]
  %3697 = phi float [ %3489, %3487 ], [ %3687, %3676 ]
  %3698 = phi float [ %3488, %3487 ], [ %3686, %3676 ]
  %3699 = fmul fast float %3695, %2836
  %3700 = fmul fast float %3694, %2837
  %3701 = fmul fast float %3693, %2838
  %3702 = fsub fast float 1.000000e+00, %2899
  %3703 = fmul fast float %3698, %3702
  %3704 = fmul fast float %3697, %3702
  %3705 = fmul fast float %3696, %3702
  %3706 = fadd fast float %3703, %3699
  %3707 = fadd fast float %3704, %3700
  %3708 = fadd fast float %3705, %3701
  %3709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %3710 = extractvalue %dx.types.CBufRet.f32 %3709, 2
  %3711 = fmul fast float %3710, %2909
  %3712 = call float @dx.op.unary.f32(i32 7, float %3711)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %28, i32 %29, i32 undef, float %2899, float %2899, float %2899, float %2899, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %3713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3714 = extractvalue %dx.types.CBufRet.f32 %3713, 0
  %3715 = fmul fast float %3714, %3706
  %3716 = fmul fast float %3714, %3707
  %3717 = fmul fast float %3714, %3708
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %28, i32 %29, i32 undef, float %3715, float %3716, float %3717, float %3715, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %28, i32 %29, i32 undef, float %3712, float %3712, float %3712, float %3712, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!39 = !{void ()* @cs_fog_raymarching_clouds_heightmap_brfog, !"cs_fog_raymarching_clouds_heightmap_brfog", null, !4, !40}
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
!55 = distinct !{!55, !"dx.controlflow.hints", i32 1}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 2}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 2}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 2}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 2}
!101 = !{!102, !102, i64 0}
!102 = !{!"float", !103, i64 0}
!103 = !{!"omnipotent char", !104, i64 0}
!104 = !{!"Simple C/C++ TBAA"}
!105 = !{!106, !108, !110, !111, !113, !114, !115}
!106 = distinct !{!106, !107, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!107 = distinct !{!107, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!108 = distinct !{!108, !109, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!109 = distinct !{!109, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!110 = distinct !{!110, !109, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!111 = distinct !{!111, !112, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!112 = distinct !{!112, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!113 = distinct !{!113, !112, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!114 = distinct !{!114, !112, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!115 = distinct !{!115, !112, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 2}
!117 = !{!118}
!118 = distinct !{!118, !119, !"\01?sort@@YAXAIAM00@Z: %c"}
!119 = distinct !{!119, !"\01?sort@@YAXAIAM00@Z"}
!120 = !{!121, !122, !106, !108, !110, !111, !113, !114, !115}
!121 = distinct !{!121, !119, !"\01?sort@@YAXAIAM00@Z: %a"}
!122 = distinct !{!122, !119, !"\01?sort@@YAXAIAM00@Z: %b"}
!123 = !{!122}
!124 = !{!121, !118, !106, !108, !110, !111, !113, !114, !115}
!125 = !{!121}
!126 = !{!122, !118, !106, !108, !110, !111, !113, !114, !115}
!127 = !{!128}
!128 = distinct !{!128, !129, !"\01?sort@@YAXAIAM00@Z: %c"}
!129 = distinct !{!129, !"\01?sort@@YAXAIAM00@Z"}
!130 = !{!131, !132, !106, !108, !110, !111, !113, !114, !115}
!131 = distinct !{!131, !129, !"\01?sort@@YAXAIAM00@Z: %a"}
!132 = distinct !{!132, !129, !"\01?sort@@YAXAIAM00@Z: %b"}
!133 = !{!132}
!134 = !{!131, !128, !106, !108, !110, !111, !113, !114, !115}
!135 = !{!131}
!136 = !{!132, !128, !106, !108, !110, !111, !113, !114, !115}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 2}
!138 = distinct !{!138, !"dx.controlflow.hints", i32 2}
!139 = distinct !{!139, !"dx.controlflow.hints", i32 1}
!140 = distinct !{!140, !"dx.controlflow.hints", i32 2}
!141 = distinct !{!141, !"dx.controlflow.hints", i32 1}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 1}
!143 = distinct !{!143, !"dx.controlflow.hints", i32 1}
!144 = distinct !{!144, !"dx.controlflow.hints", i32 1}
!145 = distinct !{!145, !"dx.controlflow.hints", i32 2}
!146 = distinct !{!146, !"dx.controlflow.hints", i32 1}

