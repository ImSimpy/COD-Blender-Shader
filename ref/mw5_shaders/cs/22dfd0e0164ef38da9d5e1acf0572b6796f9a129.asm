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
; shader hash: 08cdd3cfc5c28ba62237806cd5e15c7c
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
;                                   texture     f32          2d      T1            t27     1
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

define void @cs_fog_raymarching_air_clouds_brfog() {
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
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %53 = extractvalue %dx.types.ResRet.f32 %52, 1
  %54 = extractvalue %dx.types.ResRet.f32 %52, 2
  %55 = extractvalue %dx.types.ResRet.f32 %52, 3
  %56 = fadd fast float %53, %47
  %57 = fadd fast float %54, %47
  %58 = fadd fast float %55, %47
  %59 = call float @dx.op.unary.f32(i32 22, float %56)  ; Frc(value)
  %60 = call float @dx.op.unary.f32(i32 22, float %57)  ; Frc(value)
  %61 = call float @dx.op.unary.f32(i32 22, float %58)  ; Frc(value)
  %62 = fadd fast float %60, %43
  %63 = fadd fast float %61, %44
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 2
  %66 = extractvalue %dx.types.CBufRet.f32 %64, 3
  %67 = fmul fast float %65, %62
  %68 = fmul fast float %66, %63
  %69 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.f32 %69, 0
  %71 = fsub fast float -0.000000e+00, %70
  %72 = extractvalue %dx.types.CBufRet.f32 %69, 1
  %73 = fsub fast float -0.000000e+00, %72
  %74 = extractvalue %dx.types.CBufRet.f32 %69, 2
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 1
  %77 = fmul fast float %67, 2.000000e+00
  %78 = fmul fast float %68, 2.000000e+00
  %79 = fsub fast float 1.000000e+00, %77
  %80 = fsub fast float 1.000000e+00, %78
  %81 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %82 = extractvalue %dx.types.CBufRet.f32 %81, 0
  %83 = extractvalue %dx.types.CBufRet.f32 %81, 1
  %84 = extractvalue %dx.types.CBufRet.f32 %81, 2
  %85 = fmul fast float %82, %79
  %86 = fmul fast float %83, %79
  %87 = fmul fast float %84, %79
  %88 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.f32 %88, 0
  %90 = extractvalue %dx.types.CBufRet.f32 %88, 1
  %91 = extractvalue %dx.types.CBufRet.f32 %88, 2
  %92 = fmul fast float %89, %80
  %93 = fmul fast float %90, %80
  %94 = fmul fast float %91, %80
  %95 = fadd fast float %92, %85
  %96 = fadd fast float %93, %86
  %97 = fadd fast float %94, %87
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 0
  %100 = extractvalue %dx.types.CBufRet.f32 %98, 1
  %101 = extractvalue %dx.types.CBufRet.f32 %98, 2
  %102 = fadd fast float %95, %99
  %103 = fadd fast float %96, %100
  %104 = fadd fast float %97, %101
  %105 = fmul fast float %102, %76
  %106 = fmul fast float %103, %76
  %107 = fmul fast float %104, %76
  %108 = fmul fast float %105, %105
  %109 = fmul fast float %106, %106
  %110 = fadd fast float %108, %109
  %111 = fmul fast float %107, %107
  %112 = fadd fast float %110, %111
  %113 = call float @dx.op.unary.f32(i32 24, float %112)  ; Sqrt(value)
  %114 = fdiv fast float 1.000000e+00, %113
  %115 = fmul fast float %105, %114
  %116 = fmul fast float %106, %114
  %117 = fmul fast float %107, %114
  %118 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %41, i32 %42, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %119 = extractvalue %dx.types.ResRet.f32 %118, 0
  %120 = fcmp fast ogt float %119, -1.000000e+00
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 1
  %123 = select i1 %120, float %122, float 1.000000e+00
  %124 = fadd fast float %119, 1.000000e+00
  %125 = fmul fast float %123, %124
  %126 = call float @dx.op.unary.f32(i32 6, float %125)  ; FAbs(value)
  %127 = fdiv fast float 1.000000e+00, %76
  %128 = fmul fast float %127, %113
  %129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %130 = extractvalue %dx.types.CBufRet.f32 %129, 1
  %131 = fmul fast float %130, %128
  %132 = fmul fast float %128, %126
  %133 = extractvalue %dx.types.CBufRet.f32 %121, 3
  %134 = fcmp fast oge float %126, %133
  %135 = call float @dx.op.binary.f32(i32 36, float %132, float %131)  ; FMin(a,b)
  %136 = select i1 %134, float %131, float %135
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 3
  %139 = fsub fast float %138, %74
  %140 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %71, float %73, float %139)  ; Dot3(ax,ay,az,bx,by,bz)
  %141 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %142 = fdiv fast float 1.000000e+00, %141
  %143 = fmul fast float %142, %140
  %144 = fcmp fast olt float %143, 0.000000e+00
  %145 = fcmp fast ogt float %117, 0.000000e+00
  %146 = and i1 %145, %144
  br i1 %146, label %151, label %147, !dx.controlflow.hints !41

; <label>:147                                     ; preds = %0
  %148 = fcmp fast olt float %117, 0.000000e+00
  br i1 %148, label %149, label %151, !dx.controlflow.hints !42

; <label>:149                                     ; preds = %147
  %150 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %143)  ; FMax(a,b)
  br label %151

; <label>:151                                     ; preds = %149, %147, %0
  %152 = phi float [ 0.000000e+00, %0 ], [ %150, %149 ], [ 0.000000e+00, %147 ]
  %153 = phi float [ 0.000000e+00, %0 ], [ 0x47EFFFFFE0000000, %149 ], [ %143, %147 ]
  %154 = fcmp fast oeq float %153, 0.000000e+00
  br i1 %154, label %158, label %155, !dx.controlflow.hints !43

; <label>:155                                     ; preds = %151
  %156 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %152)  ; FMin(a,b)
  %157 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %153)  ; FMax(a,b)
  br label %158

; <label>:158                                     ; preds = %155, %151
  %159 = phi i32 [ 1, %155 ], [ 0, %151 ]
  %160 = phi float [ %157, %155 ], [ -1.000000e+00, %151 ]
  %161 = phi float [ %156, %155 ], [ 0x47EFFFFFE0000000, %151 ]
  %162 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.i32 %162, 3
  %164 = icmp eq i32 %163, 0
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.f32 %165, 2
  %167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.f32 %167, 2
  %169 = fsub fast float %166, %74
  %170 = fadd fast float %169, %168
  br i1 %164, label %178, label %171, !dx.controlflow.hints !44

; <label>:171                                     ; preds = %158
  %172 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %71, float %73, float %170)  ; Dot3(ax,ay,az,bx,by,bz)
  %173 = fmul fast float %142, %172
  %174 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %71, float %73, float %169)  ; Dot3(ax,ay,az,bx,by,bz)
  %175 = fmul fast float %142, %174
  %176 = call float @dx.op.binary.f32(i32 36, float %173, float %175)  ; FMin(a,b)
  %177 = call float @dx.op.binary.f32(i32 35, float %173, float %175)  ; FMax(a,b)
  br label %211

; <label>:178                                     ; preds = %158
  %179 = fdiv fast float 1.000000e+00, %115
  %180 = fdiv fast float 1.000000e+00, %116
  %181 = fdiv fast float 1.000000e+00, %117
  %182 = extractvalue %dx.types.CBufRet.f32 %165, 0
  %183 = extractvalue %dx.types.CBufRet.f32 %165, 1
  %184 = extractvalue %dx.types.CBufRet.f32 %167, 0
  %185 = extractvalue %dx.types.CBufRet.f32 %167, 1
  %186 = fsub fast float %182, %70
  %187 = fmul fast float %186, %179
  %188 = fadd fast float %186, %184
  %189 = fmul fast float %188, %179
  %190 = call float @dx.op.binary.f32(i32 36, float %187, float %189)  ; FMin(a,b)
  %191 = call float @dx.op.binary.f32(i32 35, float %187, float %189)  ; FMax(a,b)
  %192 = fsub fast float %183, %72
  %193 = fmul fast float %192, %180
  %194 = fadd fast float %192, %185
  %195 = fmul fast float %194, %180
  %196 = call float @dx.op.binary.f32(i32 36, float %193, float %195)  ; FMin(a,b)
  %197 = call float @dx.op.binary.f32(i32 35, float %190, float %196)  ; FMax(a,b)
  %198 = call float @dx.op.binary.f32(i32 35, float %193, float %195)  ; FMax(a,b)
  %199 = call float @dx.op.binary.f32(i32 36, float %191, float %198)  ; FMin(a,b)
  %200 = fmul fast float %169, %181
  %201 = fmul fast float %170, %181
  %202 = call float @dx.op.binary.f32(i32 36, float %200, float %201)  ; FMin(a,b)
  %203 = call float @dx.op.binary.f32(i32 35, float %197, float %202)  ; FMax(a,b)
  %204 = call float @dx.op.binary.f32(i32 35, float %200, float %201)  ; FMax(a,b)
  %205 = call float @dx.op.binary.f32(i32 36, float %199, float %204)  ; FMin(a,b)
  %206 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %203)  ; FMax(a,b)
  %207 = fcmp fast ult float %205, %206
  br i1 %207, label %211, label %208, !dx.controlflow.hints !45

; <label>:208                                     ; preds = %178
  %209 = call float @dx.op.binary.f32(i32 36, float %203, float %205)  ; FMin(a,b)
  %210 = call float @dx.op.binary.f32(i32 35, float %203, float %205)  ; FMax(a,b)
  br label %211

; <label>:211                                     ; preds = %208, %178, %171
  %212 = phi float [ %176, %171 ], [ %209, %208 ], [ 0.000000e+00, %178 ]
  %213 = phi float [ %177, %171 ], [ %210, %208 ], [ 0.000000e+00, %178 ]
  %214 = fcmp fast oeq float %213, 0.000000e+00
  br i1 %214, label %218, label %215, !dx.controlflow.hints !46

; <label>:215                                     ; preds = %211
  %216 = call float @dx.op.binary.f32(i32 36, float %161, float %212)  ; FMin(a,b)
  %217 = call float @dx.op.binary.f32(i32 35, float %160, float %213)  ; FMax(a,b)
  br label %218

; <label>:218                                     ; preds = %215, %211
  %219 = phi i32 [ 1, %215 ], [ 0, %211 ]
  %220 = phi float [ %217, %215 ], [ %160, %211 ]
  %221 = phi float [ %216, %215 ], [ %161, %211 ]
  %222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %223 = extractvalue %dx.types.CBufRet.f32 %222, 2
  %224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = extractvalue %dx.types.CBufRet.f32 %224, 3
  %226 = fsub fast float %223, %74
  %227 = fadd fast float %226, %225
  %228 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %71, float %73, float %227)  ; Dot3(ax,ay,az,bx,by,bz)
  %229 = fmul fast float %142, %228
  %230 = fcmp fast olt float %229, 0.000000e+00
  %231 = and i1 %145, %230
  br i1 %231, label %236, label %232, !dx.controlflow.hints !47

; <label>:232                                     ; preds = %218
  %233 = fcmp fast olt float %117, 0.000000e+00
  br i1 %233, label %234, label %236, !dx.controlflow.hints !48

; <label>:234                                     ; preds = %232
  %235 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %229)  ; FMax(a,b)
  br label %236

; <label>:236                                     ; preds = %234, %232, %218
  %237 = phi float [ 0.000000e+00, %218 ], [ %235, %234 ], [ 0.000000e+00, %232 ]
  %238 = phi float [ 0.000000e+00, %218 ], [ 0x47EFFFFFE0000000, %234 ], [ %229, %232 ]
  %239 = fcmp fast oeq float %238, 0.000000e+00
  br i1 %239, label %243, label %240, !dx.controlflow.hints !49

; <label>:240                                     ; preds = %236
  %241 = call float @dx.op.binary.f32(i32 36, float %221, float %237)  ; FMin(a,b)
  %242 = call float @dx.op.binary.f32(i32 35, float %220, float %238)  ; FMax(a,b)
  br label %243

; <label>:243                                     ; preds = %240, %236
  %244 = phi i32 [ 1, %240 ], [ 0, %236 ]
  %245 = phi float [ %242, %240 ], [ %220, %236 ]
  %246 = phi float [ %241, %240 ], [ %221, %236 ]
  %247 = call float @dx.op.binary.f32(i32 36, float %136, float %245)  ; FMin(a,b)
  %248 = call float @dx.op.binary.f32(i32 35, float %113, float %246)  ; FMax(a,b)
  %249 = extractvalue %dx.types.CBufRet.f32 %137, 0
  %250 = fmul fast float %59, 2.000000e+00
  %251 = fadd fast float %250, -1.000000e+00
  %252 = fmul fast float %249, %251
  %253 = fadd fast float %252, %248
  %254 = fcmp fast olt float %253, %247
  %255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %256 = extractvalue %dx.types.CBufRet.f32 %255, 2
  %257 = fcmp fast olt float %256, 1.000000e+00
  %258 = and i1 %257, %254
  br i1 %258, label %259, label %2430

; <label>:259                                     ; preds = %243
  %260 = fmul fast float %253, %117
  %261 = fadd fast float %260, %74
  %262 = fmul fast float %253, %116
  %263 = fadd fast float %262, %72
  %264 = fmul fast float %253, %115
  %265 = fadd fast float %264, %70
  br label %266

; <label>:266                                     ; preds = %2404, %259
  %267 = phi i32 [ %2406, %2404 ], [ undef, %259 ]
  %268 = phi float [ %2407, %2404 ], [ undef, %259 ]
  %269 = phi i32 [ %538, %2404 ], [ undef, %259 ]
  %270 = phi float [ %539, %2404 ], [ undef, %259 ]
  %271 = phi float [ %2408, %2404 ], [ 0.000000e+00, %259 ]
  %272 = phi float [ %2409, %2404 ], [ 1.000000e+00, %259 ]
  %273 = phi float [ %2410, %2404 ], [ 0.000000e+00, %259 ]
  %274 = phi float [ %2411, %2404 ], [ 0.000000e+00, %259 ]
  %275 = phi float [ %2412, %2404 ], [ 0.000000e+00, %259 ]
  %276 = phi float [ %2422, %2404 ], [ %265, %259 ]
  %277 = phi float [ %2423, %2404 ], [ %263, %259 ]
  %278 = phi float [ %2424, %2404 ], [ %261, %259 ]
  %279 = phi float [ %2405, %2404 ], [ %253, %259 ]
  %280 = phi float [ %2413, %2404 ], [ 0.000000e+00, %259 ]
  %281 = phi float [ %2414, %2404 ], [ 0.000000e+00, %259 ]
  %282 = phi float [ %2415, %2404 ], [ 0.000000e+00, %259 ]
  %283 = phi float [ %2416, %2404 ], [ 0.000000e+00, %259 ]
  %284 = phi float [ %2417, %2404 ], [ 0.000000e+00, %259 ]
  %285 = phi i32 [ %2418, %2404 ], [ 0, %259 ]
  %286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %287 = extractvalue %dx.types.CBufRet.f32 %286, 0
  %288 = icmp eq i32 %159, 0
  br i1 %288, label %301, label %289, !dx.controlflow.hints !50

; <label>:289                                     ; preds = %266
  %290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %291 = extractvalue %dx.types.CBufRet.f32 %290, 3
  %292 = extractvalue %dx.types.CBufRet.f32 %290, 2
  %293 = fmul fast float %291, %279
  %294 = fdiv fast float %293, %247
  %295 = fadd fast float %294, 1.000000e+00
  %296 = call float @dx.op.unary.f32(i32 23, float %295)  ; Log(value)
  %297 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %296)  ; FMin(a,b)
  %298 = fmul fast float %292, %247
  %299 = fmul fast float %298, %297
  %300 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %299)  ; FMin(a,b)
  br label %301

; <label>:301                                     ; preds = %289, %266
  %302 = phi float [ %300, %289 ], [ 0x47EFFFFFE0000000, %266 ]
  %303 = icmp eq i32 %219, 0
  br i1 %303, label %360, label %304, !dx.controlflow.hints !51

; <label>:304                                     ; preds = %301
  %305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %306 = extractvalue %dx.types.CBufRet.f32 %305, 0
  %307 = extractvalue %dx.types.CBufRet.f32 %305, 1
  %308 = extractvalue %dx.types.CBufRet.f32 %305, 2
  %309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %310 = extractvalue %dx.types.CBufRet.f32 %309, 0
  %311 = extractvalue %dx.types.CBufRet.f32 %309, 1
  %312 = extractvalue %dx.types.CBufRet.f32 %309, 2
  %313 = fsub fast float %276, %310
  %314 = fsub fast float %277, %311
  %315 = fsub fast float %278, %312
  %316 = fmul fast float %313, %306
  %317 = fmul fast float %314, %307
  %318 = fmul fast float %315, %308
  %319 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %320 = extractvalue %dx.types.CBufRet.i32 %319, 3
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %325, label %322, !dx.controlflow.hints !52

; <label>:322                                     ; preds = %304
  %323 = call float @dx.op.unary.f32(i32 22, float %316)  ; Frc(value)
  %324 = call float @dx.op.unary.f32(i32 22, float %317)  ; Frc(value)
  br label %325

; <label>:325                                     ; preds = %322, %304
  %326 = phi float [ %323, %322 ], [ %316, %304 ]
  %327 = phi float [ %324, %322 ], [ %317, %304 ]
  %328 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %22, float %326, float %327, float %318, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %329 = extractvalue %dx.types.ResRet.f32 %328, 0
  %330 = fmul fast float %329, 2.000000e+00
  %331 = fadd fast float %330, -1.000000e+00
  %332 = extractvalue %dx.types.CBufRet.f32 %305, 3
  %333 = fmul fast float %331, %332
  %334 = fcmp fast olt float %333, 0.000000e+00
  %335 = fcmp fast oge float %318, 0.000000e+00
  %336 = fcmp fast ole float %318, 1.000000e+00
  br i1 %321, label %339, label %337, !dx.controlflow.hints !53

; <label>:337                                     ; preds = %325
  %338 = and i1 %335, %336
  br label %349

; <label>:339                                     ; preds = %325
  %340 = fcmp fast oge float %316, 0.000000e+00
  %341 = fcmp fast oge float %317, 0.000000e+00
  %342 = and i1 %340, %341
  %343 = and i1 %335, %342
  %344 = fcmp fast ole float %316, 1.000000e+00
  %345 = fcmp fast ole float %317, 1.000000e+00
  %346 = and i1 %344, %345
  %347 = and i1 %336, %346
  %348 = and i1 %343, %347
  br label %349

; <label>:349                                     ; preds = %339, %337
  %350 = phi i1 [ %338, %337 ], [ %348, %339 ]
  %351 = and i1 %334, %350
  %352 = call float @dx.op.unary.f32(i32 6, float %333)  ; FAbs(value)
  %353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %354 = extractvalue %dx.types.CBufRet.f32 %353, 1
  %355 = extractvalue %dx.types.CBufRet.f32 %353, 0
  %356 = call float @dx.op.binary.f32(i32 35, float %352, float %355)  ; FMax(a,b)
  %357 = select i1 %351, float %354, float %356
  %358 = zext i1 %351 to i32
  %359 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %357)  ; FMin(a,b)
  br label %360

; <label>:360                                     ; preds = %349, %301
  %361 = phi i32 [ %358, %349 ], [ 0, %301 ]
  %362 = phi float [ %359, %349 ], [ 0x47EFFFFFE0000000, %301 ]
  %363 = icmp eq i32 %244, 0
  br i1 %363, label %536, label %364, !dx.controlflow.hints !54

; <label>:364                                     ; preds = %360
  %365 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %366 = extractvalue %dx.types.CBufRet.i32 %365, 1
  %367 = and i32 %366, 1
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %369, label %526, !dx.controlflow.hints !55

; <label>:369                                     ; preds = %364
  %370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %371 = extractvalue %dx.types.CBufRet.f32 %370, 2
  %372 = extractvalue %dx.types.CBufRet.f32 %370, 3
  %373 = fmul fast float %371, %276
  %374 = fmul fast float %372, %277
  %375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %376 = extractvalue %dx.types.CBufRet.f32 %375, 0
  %377 = extractvalue %dx.types.CBufRet.f32 %375, 1
  %378 = fadd fast float %373, %376
  %379 = fadd fast float %374, %377
  %380 = call float @dx.op.unary.f32(i32 7, float %378)  ; Saturate(value)
  %381 = call float @dx.op.unary.f32(i32 7, float %379)  ; Saturate(value)
  %382 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %24, float %380, float %381, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %383 = extractvalue %dx.types.ResRet.f32 %382, 0
  %384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %385 = extractvalue %dx.types.CBufRet.f32 %384, 0
  %386 = fmul fast float %385, %383
  %387 = fsub fast float %378, %380
  %388 = fsub fast float %379, %381
  %389 = extractvalue %dx.types.CBufRet.f32 %370, 0
  %390 = extractvalue %dx.types.CBufRet.f32 %370, 1
  %391 = fmul fast float %389, %387
  %392 = fmul fast float %390, %388
  %393 = fmul fast float %391, %391
  %394 = fmul fast float %392, %392
  %395 = fadd fast float %393, %394
  %396 = call float @dx.op.unary.f32(i32 24, float %395)  ; Sqrt(value)
  %397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %398 = extractvalue %dx.types.CBufRet.f32 %397, 3
  %399 = fmul fast float %398, %396
  %400 = call float @dx.op.unary.f32(i32 7, float %399)  ; Saturate(value)
  %401 = extractvalue %dx.types.CBufRet.f32 %397, 2
  %402 = fsub fast float %401, %386
  %403 = fmul fast float %402, %400
  %404 = extractvalue %dx.types.CBufRet.f32 %384, 1
  %405 = fsub fast float %278, %386
  %406 = fsub fast float %405, %404
  %407 = fsub fast float %406, %403
  %408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %409 = extractvalue %dx.types.CBufRet.f32 %408, 2
  %410 = fsub fast float %407, %409
  %411 = fcmp fast olt float %410, 0.000000e+00
  %412 = call float @dx.op.unary.f32(i32 6, float %410)  ; FAbs(value)
  %413 = extractvalue %dx.types.CBufRet.i32 %365, 0
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %468, label %415

; <label>:415                                     ; preds = %369
  br label %416

; <label>:416                                     ; preds = %455, %415
  %417 = phi i32 [ %461, %455 ], [ 1, %415 ]
  %418 = phi float [ %463, %455 ], [ 0x47EFFFFFE0000000, %415 ]
  %419 = phi i32 [ %464, %455 ], [ 0, %415 ]
  %420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %421 = extractvalue %dx.types.CBufRet.f32 %420, 1
  %422 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %423 = extractvalue %dx.types.CBufRet.i32 %422, 1
  %424 = and i32 %423, 8
  %425 = icmp eq i32 %424, 0
  %426 = fcmp fast ogt float %421, %407
  %427 = or i1 %426, %425
  %428 = add i32 %419, 171
  %429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 %428)  ; CBufferLoadLegacy(handle,regIndex)
  %430 = extractvalue %dx.types.CBufRet.f32 %429, 0
  %431 = extractvalue %dx.types.CBufRet.f32 %429, 1
  %432 = extractvalue %dx.types.CBufRet.f32 %429, 2
  br i1 %427, label %433, label %439, !dx.controlflow.hints !56

; <label>:433                                     ; preds = %416
  %434 = fsub fast float %430, %276
  %435 = fsub fast float %431, %277
  %436 = fmul fast float %434, %434
  %437 = fmul fast float %435, %435
  %438 = fadd fast float %436, %437
  br label %455

; <label>:439                                     ; preds = %416
  %440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %441 = extractvalue %dx.types.CBufRet.f32 %440, 2
  %442 = extractvalue %dx.types.CBufRet.f32 %420, 2
  %443 = fmul fast float %442, %441
  %444 = fsub fast float %443, %421
  %445 = fdiv fast float %432, %444
  %446 = fsub fast float %276, %430
  %447 = fsub fast float %277, %431
  %448 = fsub fast float %407, %421
  %449 = fmul fast float %445, %448
  %450 = fmul fast float %446, %446
  %451 = fmul fast float %447, %447
  %452 = fadd fast float %450, %451
  %453 = fmul fast float %449, %449
  %454 = fadd fast float %452, %453
  br label %455

; <label>:455                                     ; preds = %439, %433
  %456 = phi float [ %438, %433 ], [ %454, %439 ]
  %457 = call float @dx.op.unary.f32(i32 24, float %456)  ; Sqrt(value)
  %458 = fsub float %432, %457
  %459 = fcmp fast olt float %458, 0.000000e+00
  %460 = zext i1 %459 to i32
  %461 = and i32 %460, %417
  %462 = call float @dx.op.unary.f32(i32 6, float %458)  ; FAbs(value)
  %463 = call float @dx.op.binary.f32(i32 36, float %418, float %462)  ; FMin(a,b)
  %464 = add i32 %419, 1
  %465 = extractvalue %dx.types.CBufRet.i32 %422, 0
  %466 = icmp ult i32 %464, %465
  br i1 %466, label %416, label %467

; <label>:467                                     ; preds = %455
  br label %468

; <label>:468                                     ; preds = %467, %369
  %469 = phi i32 [ 1, %369 ], [ %461, %467 ]
  %470 = phi float [ 0x47EFFFFFE0000000, %369 ], [ %463, %467 ]
  br label %471

; <label>:471                                     ; preds = %471, %468
  %472 = phi i32 [ %469, %468 ], [ %511, %471 ]
  %473 = phi float [ 0x47EFFFFFE0000000, %468 ], [ %513, %471 ]
  %474 = phi i32 [ 0, %468 ], [ %514, %471 ]
  %475 = add nuw nsw i32 %474, 191
  %476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 %475)  ; CBufferLoadLegacy(handle,regIndex)
  %477 = extractvalue %dx.types.CBufRet.f32 %476, 0
  %478 = extractvalue %dx.types.CBufRet.f32 %476, 1
  %479 = extractvalue %dx.types.CBufRet.f32 %476, 2
  %480 = add nuw nsw i32 %474, 195
  %481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 %480)  ; CBufferLoadLegacy(handle,regIndex)
  %482 = extractvalue %dx.types.CBufRet.f32 %481, 0
  %483 = extractvalue %dx.types.CBufRet.f32 %481, 1
  %484 = extractvalue %dx.types.CBufRet.f32 %481, 2
  %485 = fsub fast float %276, %477
  %486 = fsub fast float %277, %478
  %487 = fsub fast float %407, %479
  %488 = call float @dx.op.unary.f32(i32 6, float %485)  ; FAbs(value)
  %489 = call float @dx.op.unary.f32(i32 6, float %486)  ; FAbs(value)
  %490 = call float @dx.op.unary.f32(i32 6, float %487)  ; FAbs(value)
  %491 = fsub fast float %488, %482
  %492 = fsub fast float %489, %483
  %493 = fsub fast float %490, %484
  %494 = call float @dx.op.binary.f32(i32 35, float %491, float 0.000000e+00)  ; FMax(a,b)
  %495 = call float @dx.op.binary.f32(i32 35, float %492, float 0.000000e+00)  ; FMax(a,b)
  %496 = call float @dx.op.binary.f32(i32 35, float %493, float 0.000000e+00)  ; FMax(a,b)
  %497 = fmul fast float %494, %494
  %498 = fmul fast float %495, %495
  %499 = fadd fast float %498, %497
  %500 = fmul fast float %496, %496
  %501 = fadd fast float %499, %500
  %502 = call float @dx.op.unary.f32(i32 24, float %501)  ; Sqrt(value)
  %503 = call float @dx.op.binary.f32(i32 35, float %492, float %493)  ; FMax(a,b)
  %504 = call float @dx.op.binary.f32(i32 35, float %491, float %503)  ; FMax(a,b)
  %505 = call float @dx.op.binary.f32(i32 36, float %504, float 0.000000e+00)  ; FMin(a,b)
  %506 = fadd fast float %505, %502
  %507 = fsub fast float -0.000000e+00, %506
  %508 = fcmp ogt float %506, -0.000000e+00
  %509 = icmp ne i32 %472, 0
  %510 = and i1 %509, %508
  %511 = zext i1 %510 to i32
  %512 = call float @dx.op.unary.f32(i32 6, float %507)  ; FAbs(value)
  %513 = call float @dx.op.binary.f32(i32 36, float %473, float %512)  ; FMin(a,b)
  %514 = add nuw nsw i32 %474, 1
  %515 = icmp eq i32 %514, 4
  br i1 %515, label %516, label %471

; <label>:516                                     ; preds = %471
  %517 = call float @dx.op.binary.f32(i32 36, float %412, float %513)  ; FMin(a,b)
  %518 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %519 = extractvalue %dx.types.CBufRet.i32 %518, 1
  %520 = and i32 %519, 2
  %521 = icmp ne i32 %520, 0
  %522 = xor i1 %510, %521
  %523 = call float @dx.op.binary.f32(i32 36, float %517, float %470)  ; FMin(a,b)
  %524 = and i1 %522, %411
  %525 = zext i1 %524 to i32
  br label %526

; <label>:526                                     ; preds = %516, %364
  %527 = phi i32 [ %269, %364 ], [ %525, %516 ]
  %528 = phi float [ 0.000000e+00, %364 ], [ %523, %516 ]
  %529 = phi float [ %278, %364 ], [ %407, %516 ]
  %530 = icmp ne i32 %527, 0
  %531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %532 = extractvalue %dx.types.CBufRet.f32 %531, 3
  %533 = call float @dx.op.binary.f32(i32 35, float %528, float %532)  ; FMax(a,b)
  %534 = call float @dx.op.binary.f32(i32 36, float %302, float %533)  ; FMin(a,b)
  %535 = zext i1 %530 to i32
  br label %536

; <label>:536                                     ; preds = %526, %360
  %537 = phi i32 [ %535, %526 ], [ 0, %360 ]
  %538 = phi i32 [ %527, %526 ], [ %269, %360 ]
  %539 = phi float [ %529, %526 ], [ %270, %360 ]
  %540 = phi float [ %534, %526 ], [ %302, %360 ]
  %541 = extractvalue %dx.types.CBufRet.f32 %286, 2
  %542 = fmul fast float %541, %279
  %543 = call float @dx.op.unary.f32(i32 23, float %542)  ; Log(value)
  %544 = fmul fast float %543, 0x3FE62E4300000000
  %545 = call float @dx.op.binary.f32(i32 35, float %544, float 1.000000e+00)  ; FMax(a,b)
  %546 = fmul fast float %545, %540
  %547 = call float @dx.op.binary.f32(i32 36, float %546, float %362)  ; FMin(a,b)
  %548 = call float @dx.op.binary.f32(i32 35, float %547, float %287)  ; FMax(a,b)
  %549 = fadd fast float %247, 0x3F1A36E2E0000000
  %550 = fsub fast float %549, %279
  %551 = call float @dx.op.binary.f32(i32 36, float %550, float %548)  ; FMin(a,b)
  br i1 %288, label %608, label %552, !dx.controlflow.hints !57

; <label>:552                                     ; preds = %536
  %553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %554 = extractvalue %dx.types.CBufRet.f32 %553, 0
  %555 = fsub fast float -0.000000e+00, %276
  %556 = fsub fast float -0.000000e+00, %277
  %557 = fsub fast float %554, %278
  %558 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %555, float %556, float %557)  ; Dot3(ax,ay,az,bx,by,bz)
  %559 = fmul fast float %142, %558
  %560 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %559)  ; FMax(a,b)
  %561 = fcmp fast olt float %117, 0.000000e+00
  %562 = call float @dx.op.binary.f32(i32 36, float %551, float %560)  ; FMin(a,b)
  br i1 %561, label %564, label %563, !dx.controlflow.hints !58

; <label>:563                                     ; preds = %552
  br label %564

; <label>:564                                     ; preds = %563, %552
  %565 = phi float [ 0.000000e+00, %563 ], [ %562, %552 ]
  %566 = phi float [ %562, %563 ], [ %551, %552 ]
  %567 = phi float [ %562, %563 ], [ 0.000000e+00, %552 ]
  %568 = phi float [ %551, %563 ], [ %562, %552 ]
  %569 = fsub fast float %566, %565
  %570 = extractvalue %dx.types.CBufRet.f32 %553, 1
  %571 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %570)  ; FMin(a,b)
  %572 = fsub fast float %278, %554
  %573 = fmul fast float %571, 0x3FF7154760000000
  %574 = fmul fast float %573, %572
  %575 = call float @dx.op.unary.f32(i32 21, float %574)  ; Exp(value)
  %576 = fmul fast float %117, 0x3FF7154760000000
  %577 = fmul fast float %576, %568
  %578 = fmul fast float %577, %571
  %579 = call float @dx.op.unary.f32(i32 21, float %578)  ; Exp(value)
  %580 = fmul fast float %576, %567
  %581 = fmul fast float %580, %571
  %582 = call float @dx.op.unary.f32(i32 21, float %581)  ; Exp(value)
  %583 = fsub fast float %579, %582
  %584 = fmul fast float %583, %575
  %585 = fmul fast float %571, %117
  %586 = fdiv fast float %584, %585
  %587 = fadd fast float %569, %586
  %588 = call float @dx.op.unary.f32(i32 6, float %117)  ; FAbs(value)
  %589 = fcmp fast olt float %588, 0x3F0FFB4800000000
  %590 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %572)  ; FMax(a,b)
  %591 = fmul fast float %590, 0x3FF7154760000000
  %592 = fmul fast float %591, %570
  %593 = call float @dx.op.unary.f32(i32 21, float %592)  ; Exp(value)
  %594 = fmul fast float %593, %551
  %595 = select i1 %589, float %594, float %587
  %596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %597 = extractvalue %dx.types.CBufRet.f32 %596, 1
  %598 = fmul fast float %595, %597
  %599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %600 = extractvalue %dx.types.CBufRet.f32 %599, 0
  %601 = extractvalue %dx.types.CBufRet.f32 %599, 1
  %602 = extractvalue %dx.types.CBufRet.f32 %599, 2
  %603 = extractvalue %dx.types.CBufRet.f32 %596, 2
  %604 = fmul fast float %600, %598
  %605 = fmul fast float %601, %598
  %606 = fmul fast float %602, %598
  %607 = fmul fast float %603, %598
  br label %608

; <label>:608                                     ; preds = %564, %536
  %609 = phi float [ %598, %564 ], [ 0.000000e+00, %536 ]
  %610 = phi float [ %607, %564 ], [ 0.000000e+00, %536 ]
  %611 = phi float [ %604, %564 ], [ 0.000000e+00, %536 ]
  %612 = phi float [ %605, %564 ], [ 0.000000e+00, %536 ]
  %613 = phi float [ %606, %564 ], [ 0.000000e+00, %536 ]
  %614 = icmp eq i32 %361, 0
  br i1 %614, label %809, label %615, !dx.controlflow.hints !59

; <label>:615                                     ; preds = %608
  %616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %617 = extractvalue %dx.types.CBufRet.f32 %616, 3
  %618 = fmul fast float %617, %279
  %619 = fcmp fast oeq float %618, 0.000000e+00
  br i1 %619, label %634, label %620, !dx.controlflow.hints !60

; <label>:620                                     ; preds = %615
  %621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %622 = extractvalue %dx.types.CBufRet.f32 %621, 3
  %623 = fmul fast float %622, %618
  %624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %625 = extractvalue %dx.types.CBufRet.f32 %624, 0
  %626 = extractvalue %dx.types.CBufRet.f32 %624, 1
  %627 = extractvalue %dx.types.CBufRet.f32 %624, 2
  %628 = fmul fast float %625, %623
  %629 = fmul fast float %626, %623
  %630 = fmul fast float %627, %623
  %631 = call float @dx.op.unary.f32(i32 23, float %628)  ; Log(value)
  %632 = call float @dx.op.unary.f32(i32 23, float %629)  ; Log(value)
  %633 = call float @dx.op.unary.f32(i32 23, float %630)  ; Log(value)
  br label %634

; <label>:634                                     ; preds = %620, %615
  %635 = phi float [ %631, %620 ], [ 0.000000e+00, %615 ]
  %636 = phi float [ %632, %620 ], [ 0.000000e+00, %615 ]
  %637 = phi float [ %633, %620 ], [ 0.000000e+00, %615 ]
  %638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %639 = extractvalue %dx.types.CBufRet.f32 %638, 0
  %640 = extractvalue %dx.types.CBufRet.f32 %638, 1
  %641 = extractvalue %dx.types.CBufRet.f32 %638, 2
  %642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %643 = extractvalue %dx.types.CBufRet.f32 %642, 0
  %644 = extractvalue %dx.types.CBufRet.f32 %642, 1
  %645 = extractvalue %dx.types.CBufRet.f32 %642, 2
  %646 = fsub fast float %276, %643
  %647 = fsub fast float %277, %644
  %648 = fsub fast float %278, %645
  %649 = fmul fast float %646, %639
  %650 = fmul fast float %647, %640
  %651 = fmul fast float %648, %641
  %652 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %653 = extractvalue %dx.types.CBufRet.i32 %652, 0
  %654 = extractvalue %dx.types.CBufRet.i32 %652, 1
  %655 = uitofp i32 %653 to float
  %656 = uitofp i32 %654 to float
  %657 = fmul fast float %649, %655
  %658 = fmul fast float %650, %656
  %659 = fadd fast float %657, 5.000000e-01
  %660 = fadd fast float %658, 5.000000e-01
  %661 = call float @dx.op.unary.f32(i32 22, float %659)  ; Frc(value)
  %662 = call float @dx.op.unary.f32(i32 22, float %660)  ; Frc(value)
  %663 = call float @dx.op.unary.f32(i32 27, float %659)  ; Round_ni(value)
  %664 = call float @dx.op.unary.f32(i32 27, float %660)  ; Round_ni(value)
  %665 = fadd fast float %663, 1.000000e+00
  %666 = fadd fast float %664, 1.000000e+00
  %667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %668 = extractvalue %dx.types.CBufRet.f32 %667, 0
  %669 = extractvalue %dx.types.CBufRet.f32 %667, 1
  %670 = fmul fast float %668, %665
  %671 = fmul fast float %669, %666
  %672 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %23, float %670, float %671, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %673 = extractvalue %dx.types.ResRet.f32 %672, 0
  %674 = extractvalue %dx.types.ResRet.f32 %672, 1
  %675 = extractvalue %dx.types.ResRet.f32 %672, 2
  %676 = extractvalue %dx.types.ResRet.f32 %672, 3
  %677 = extractvalue %dx.types.CBufRet.i32 %652, 2
  %678 = extractvalue %dx.types.CBufRet.f32 %667, 2
  %679 = uitofp i32 %677 to float
  %680 = fadd fast float %679, -1.000000e+00
  %681 = fmul fast float %680, %673
  %682 = fmul fast float %680, %674
  %683 = fmul fast float %680, %675
  %684 = fmul fast float %680, %676
  %685 = fadd fast float %681, 5.000000e-01
  %686 = fadd fast float %682, 5.000000e-01
  %687 = fadd fast float %683, 5.000000e-01
  %688 = fadd fast float %684, 5.000000e-01
  %689 = fptoui float %685 to i32
  %690 = fptoui float %686 to i32
  %691 = fptoui float %687 to i32
  %692 = fptoui float %688 to i32
  %693 = uitofp i32 %689 to float
  %694 = uitofp i32 %690 to float
  %695 = uitofp i32 %691 to float
  %696 = uitofp i32 %692 to float
  %697 = fadd fast float %693, 5.000000e-01
  %698 = fadd fast float %694, 5.000000e-01
  %699 = fadd fast float %695, 5.000000e-01
  %700 = fadd fast float %696, 5.000000e-01
  %701 = fmul fast float %697, %678
  %702 = fmul fast float %698, %678
  %703 = fmul fast float %699, %678
  %704 = fmul fast float %700, %678
  %705 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %24, float %701, float %651, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %706 = extractvalue %dx.types.ResRet.f32 %705, 0
  %707 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %24, float %702, float %651, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %708 = extractvalue %dx.types.ResRet.f32 %707, 0
  %709 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %24, float %703, float %651, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %710 = extractvalue %dx.types.ResRet.f32 %709, 0
  %711 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %24, float %704, float %651, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %712 = extractvalue %dx.types.ResRet.f32 %711, 0
  %713 = fsub fast float %710, %712
  %714 = fmul fast float %713, %661
  %715 = fadd fast float %714, %712
  %716 = fsub fast float %708, %706
  %717 = fmul fast float %716, %661
  %718 = fadd fast float %717, %706
  %719 = fsub fast float %718, %715
  %720 = fmul fast float %719, %662
  %721 = fadd fast float %720, %715
  %722 = fcmp fast ogt float %721, 0.000000e+00
  br i1 %722, label %723, label %791, !dx.controlflow.hints !61

; <label>:723                                     ; preds = %634
  %724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %725 = extractvalue %dx.types.CBufRet.f32 %724, 0
  %726 = extractvalue %dx.types.CBufRet.f32 %724, 1
  %727 = extractvalue %dx.types.CBufRet.f32 %724, 2
  %728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %729 = extractvalue %dx.types.CBufRet.f32 %728, 0
  %730 = extractvalue %dx.types.CBufRet.f32 %728, 1
  %731 = extractvalue %dx.types.CBufRet.f32 %728, 2
  %732 = fmul fast float %647, %639
  %733 = fmul fast float %648, %639
  %734 = fadd fast float %649, %729
  %735 = fadd fast float %732, %730
  %736 = fadd fast float %733, %731
  %737 = fmul fast float %734, %725
  %738 = fmul fast float %735, %725
  %739 = fmul fast float %736, %725
  %740 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %21, float %737, float %738, float %739, float undef, i32 0, i32 0, i32 0, float %635)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %741 = extractvalue %dx.types.ResRet.f32 %740, 0
  %742 = fmul fast float %734, %726
  %743 = fmul fast float %735, %726
  %744 = fmul fast float %736, %726
  %745 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %21, float %742, float %743, float %744, float undef, i32 0, i32 0, i32 0, float %636)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %746 = extractvalue %dx.types.ResRet.f32 %745, 1
  %747 = fmul fast float %734, %727
  %748 = fmul fast float %735, %727
  %749 = fmul fast float %736, %727
  %750 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %21, float %747, float %748, float %749, float undef, i32 0, i32 0, i32 0, float %637)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %751 = extractvalue %dx.types.ResRet.f32 %750, 2
  %752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %753 = extractvalue %dx.types.CBufRet.f32 %752, 1
  %754 = fmul fast float %746, %741
  %755 = fmul fast float %754, %751
  %756 = call float @dx.op.unary.f32(i32 23, float %755)  ; Log(value)
  %757 = fmul fast float %756, %753
  %758 = call float @dx.op.unary.f32(i32 21, float %757)  ; Exp(value)
  %759 = extractvalue %dx.types.CBufRet.f32 %752, 2
  %760 = fmul fast float %721, %721
  %761 = fmul fast float %760, %758
  %762 = fmul fast float %761, %759
  %763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %764 = extractvalue %dx.types.CBufRet.f32 %763, 3
  %765 = fmul fast float %764, %762
  %766 = bitcast float %765 to i32
  %767 = sitofp i32 %766 to float
  %768 = fptosi float %767 to i32
  %769 = bitcast i32 %768 to float
  %770 = fsub fast float 1.000000e+00, %762
  %771 = bitcast float %770 to i32
  %772 = sitofp i32 %771 to float
  %773 = fptosi float %772 to i32
  %774 = bitcast i32 %773 to float
  %775 = fadd fast float %769, %774
  %776 = bitcast float %775 to i32
  %777 = sub nsw i32 2129859010, %776
  %778 = bitcast i32 %777 to float
  %779 = fmul fast float %778, %769
  %780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %781 = extractvalue %dx.types.CBufRet.f32 %780, 2
  %782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %783 = extractvalue %dx.types.CBufRet.f32 %782, 0
  %784 = fmul fast float %779, %783
  %785 = fadd fast float %784, 1.000000e+00
  %786 = bitcast float %785 to i32
  %787 = sub nsw i32 2129859010, %786
  %788 = bitcast i32 %787 to float
  %789 = fmul fast float %779, %781
  %790 = fmul fast float %789, %788
  br label %791

; <label>:791                                     ; preds = %723, %634
  %792 = phi float [ %790, %723 ], [ %721, %634 ]
  %793 = fmul fast float %792, %551
  %794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %795 = extractvalue %dx.types.CBufRet.f32 %794, 0
  %796 = extractvalue %dx.types.CBufRet.f32 %794, 1
  %797 = extractvalue %dx.types.CBufRet.f32 %794, 2
  %798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %799 = extractvalue %dx.types.CBufRet.f32 %798, 1
  %800 = fmul fast float %795, %793
  %801 = fmul fast float %796, %793
  %802 = fmul fast float %797, %793
  %803 = fadd fast float %800, %611
  %804 = fadd fast float %801, %612
  %805 = fadd fast float %802, %613
  %806 = fmul fast float %799, %793
  %807 = fadd fast float %806, %610
  %808 = fadd fast float %793, %609
  br label %809

; <label>:809                                     ; preds = %791, %608
  %810 = phi float [ %808, %791 ], [ %609, %608 ]
  %811 = phi float [ %807, %791 ], [ %610, %608 ]
  %812 = phi float [ %803, %791 ], [ %611, %608 ]
  %813 = phi float [ %804, %791 ], [ %612, %608 ]
  %814 = phi float [ %805, %791 ], [ %613, %608 ]
  %815 = icmp eq i32 %537, 0
  br i1 %815, label %859, label %816, !dx.controlflow.hints !62

; <label>:816                                     ; preds = %809
  %817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %818 = extractvalue %dx.types.CBufRet.f32 %817, 1
  %819 = fsub fast float %551, %818
  %820 = extractvalue %dx.types.CBufRet.f32 %817, 3
  %821 = fmul fast float %819, %820
  %822 = call float @dx.op.unary.f32(i32 7, float %821)  ; Saturate(value)
  %823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %824 = extractvalue %dx.types.CBufRet.f32 %823, 3
  %825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %826 = extractvalue %dx.types.CBufRet.f32 %825, 2
  %827 = fsub fast float %826, %539
  %828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %829 = extractvalue %dx.types.CBufRet.f32 %828, 3
  %830 = fmul fast float %827, %829
  %831 = call float @dx.op.unary.f32(i32 7, float %830)  ; Saturate(value)
  %832 = fmul fast float %831, %824
  %833 = extractvalue %dx.types.CBufRet.f32 %828, 0
  %834 = fsub fast float %279, %833
  %835 = extractvalue %dx.types.CBufRet.f32 %828, 1
  %836 = fmul fast float %834, %835
  %837 = call float @dx.op.unary.f32(i32 7, float %836)  ; Saturate(value)
  %838 = fsub fast float 1.000000e+00, %822
  %839 = fmul fast float %837, %838
  %840 = fadd fast float %839, %822
  %841 = extractvalue %dx.types.CBufRet.f32 %817, 0
  %842 = fsub fast float %832, %841
  %843 = fmul fast float %842, %840
  %844 = fadd fast float %843, %841
  %845 = extractvalue %dx.types.CBufRet.f32 %823, 0
  %846 = extractvalue %dx.types.CBufRet.f32 %823, 1
  %847 = extractvalue %dx.types.CBufRet.f32 %823, 2
  %848 = fmul fast float %844, %551
  %849 = extractvalue %dx.types.CBufRet.f32 %828, 2
  %850 = fmul fast float %848, %845
  %851 = fmul fast float %848, %846
  %852 = fmul fast float %848, %847
  %853 = fadd fast float %850, %812
  %854 = fadd fast float %851, %813
  %855 = fadd fast float %852, %814
  %856 = fmul fast float %848, %849
  %857 = fadd fast float %856, %811
  %858 = fadd fast float %848, %810
  br label %859

; <label>:859                                     ; preds = %816, %809
  %860 = phi float [ %858, %816 ], [ %810, %809 ]
  %861 = phi float [ %857, %816 ], [ %811, %809 ]
  %862 = phi float [ %853, %816 ], [ %812, %809 ]
  %863 = phi float [ %854, %816 ], [ %813, %809 ]
  %864 = phi float [ %855, %816 ], [ %814, %809 ]
  %865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %866 = extractvalue %dx.types.CBufRet.f32 %865, 1
  %867 = fcmp fast ogt float %860, %866
  br i1 %867, label %868, label %874, !dx.controlflow.hints !63

; <label>:868                                     ; preds = %859
  %869 = fdiv fast float 1.000000e+00, %860
  %870 = fmul fast float %869, %862
  %871 = fmul fast float %869, %863
  %872 = fmul fast float %869, %864
  %873 = fmul fast float %869, %861
  br label %874

; <label>:874                                     ; preds = %868, %859
  %875 = phi float [ %873, %868 ], [ %861, %859 ]
  %876 = phi float [ %870, %868 ], [ %862, %859 ]
  %877 = phi float [ %871, %868 ], [ %863, %859 ]
  %878 = phi float [ %872, %868 ], [ %864, %859 ]
  br i1 %867, label %881, label %879, !dx.controlflow.hints !64

; <label>:879                                     ; preds = %874
  %880 = fadd fast float %551, %279
  br label %2404

; <label>:881                                     ; preds = %874
  %882 = fmul fast float %860, 0xBFF7154760000000
  %883 = call float @dx.op.unary.f32(i32 21, float %882)  ; Exp(value)
  %884 = call float @dx.op.unary.f32(i32 7, float %883)  ; Saturate(value)
  %885 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %886 = extractvalue %dx.types.CBufRet.i32 %885, 0
  %887 = icmp eq i32 %886, 1
  br i1 %887, label %888, label %923, !dx.controlflow.hints !65

; <label>:888                                     ; preds = %881
  %889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %890 = extractvalue %dx.types.CBufRet.f32 %889, 0
  %891 = extractvalue %dx.types.CBufRet.f32 %889, 1
  %892 = fsub fast float %276, %890
  %893 = fsub fast float %277, %891
  %894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %895 = extractvalue %dx.types.CBufRet.f32 %894, 0
  %896 = extractvalue %dx.types.CBufRet.f32 %894, 1
  %897 = fmul fast float %892, %895
  %898 = fmul fast float %893, %896
  %899 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %24, float %897, float %898, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %900 = extractvalue %dx.types.ResRet.f32 %899, 0
  %901 = fcmp fast ogt float %900, 0.000000e+00
  %902 = extractvalue %dx.types.CBufRet.i32 %885, 3
  %903 = icmp ne i32 %902, 0
  %904 = and i1 %901, %903
  br i1 %904, label %905, label %923, !dx.controlflow.hints !66

; <label>:905                                     ; preds = %888
  %906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %907 = extractvalue %dx.types.CBufRet.f32 %906, 0
  %908 = extractvalue %dx.types.CBufRet.f32 %906, 1
  %909 = fsub fast float %276, %907
  %910 = fsub fast float %277, %908
  %911 = fmul fast float %909, %909
  %912 = fmul fast float %910, %910
  %913 = fadd fast float %911, %912
  %914 = uitofp i32 %902 to float
  %915 = fmul fast float %914, %914
  %916 = fcmp fast ogt float %913, %915
  br i1 %916, label %923, label %917, !dx.controlflow.hints !67

; <label>:917                                     ; preds = %905
  %918 = call float @dx.op.unary.f32(i32 24, float %913)  ; Sqrt(value)
  %919 = fsub fast float %914, %918
  %920 = fmul fast float %919, 0x3F75555560000000
  %921 = call float @dx.op.unary.f32(i32 7, float %920)  ; Saturate(value)
  %922 = call float @dx.op.binary.f32(i32 36, float %921, float %900)  ; FMin(a,b)
  br label %923

; <label>:923                                     ; preds = %917, %905, %888, %881
  %924 = phi float [ 1.000000e+00, %881 ], [ %922, %917 ], [ %900, %888 ], [ 0.000000e+00, %905 ]
  %925 = fcmp fast ogt float %924, 0.000000e+00
  br i1 %925, label %926, label %999, !dx.controlflow.hints !68

; <label>:926                                     ; preds = %923
  %927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %928 = extractvalue %dx.types.ResRet.i32 %927, 0
  %929 = extractvalue %dx.types.ResRet.i32 %927, 1
  %930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %931 = extractvalue %dx.types.ResRet.i32 %930, 0
  %932 = extractvalue %dx.types.ResRet.i32 %930, 1
  %933 = extractvalue %dx.types.ResRet.i32 %930, 2
  %934 = extractvalue %dx.types.ResRet.i32 %930, 3
  %935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %936 = extractvalue %dx.types.ResRet.i32 %935, 0
  %937 = extractvalue %dx.types.ResRet.i32 %935, 1
  %938 = extractvalue %dx.types.ResRet.i32 %935, 2
  %939 = extractvalue %dx.types.ResRet.i32 %935, 3
  %940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %941 = extractvalue %dx.types.ResRet.i32 %940, 0
  %942 = extractvalue %dx.types.ResRet.i32 %940, 1
  %943 = extractvalue %dx.types.ResRet.i32 %940, 2
  %944 = extractvalue %dx.types.ResRet.i32 %940, 3
  %945 = and i32 %941, 65535
  %946 = call float @dx.op.legacyF16ToF32(i32 131, i32 %945)  ; LegacyF16ToF32(value)
  %947 = lshr i32 %941, 16
  %948 = call float @dx.op.legacyF16ToF32(i32 131, i32 %947)  ; LegacyF16ToF32(value)
  %949 = and i32 %942, 65535
  %950 = call float @dx.op.legacyF16ToF32(i32 131, i32 %949)  ; LegacyF16ToF32(value)
  %951 = lshr i32 %942, 16
  %952 = call float @dx.op.legacyF16ToF32(i32 131, i32 %951)  ; LegacyF16ToF32(value)
  %953 = and i32 %943, 65535
  %954 = call float @dx.op.legacyF16ToF32(i32 131, i32 %953)  ; LegacyF16ToF32(value)
  %955 = lshr i32 %943, 16
  %956 = call float @dx.op.legacyF16ToF32(i32 131, i32 %955)  ; LegacyF16ToF32(value)
  %957 = and i32 %944, 65535
  %958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %957)  ; LegacyF16ToF32(value)
  %959 = lshr i32 %944, 16
  %960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %959)  ; LegacyF16ToF32(value)
  %961 = and i32 %936, 65535
  %962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %961)  ; LegacyF16ToF32(value)
  %963 = lshr i32 %936, 16
  %964 = call float @dx.op.legacyF16ToF32(i32 131, i32 %963)  ; LegacyF16ToF32(value)
  %965 = and i32 %937, 65535
  %966 = call float @dx.op.legacyF16ToF32(i32 131, i32 %965)  ; LegacyF16ToF32(value)
  %967 = lshr i32 %937, 16
  %968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %967)  ; LegacyF16ToF32(value)
  %969 = and i32 %938, 65535
  %970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %969)  ; LegacyF16ToF32(value)
  %971 = lshr i32 %938, 16
  %972 = call float @dx.op.legacyF16ToF32(i32 131, i32 %971)  ; LegacyF16ToF32(value)
  %973 = and i32 %939, 65535
  %974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %973)  ; LegacyF16ToF32(value)
  %975 = lshr i32 %939, 16
  %976 = call float @dx.op.legacyF16ToF32(i32 131, i32 %975)  ; LegacyF16ToF32(value)
  %977 = and i32 %931, 65535
  %978 = call float @dx.op.legacyF16ToF32(i32 131, i32 %977)  ; LegacyF16ToF32(value)
  %979 = lshr i32 %931, 16
  %980 = call float @dx.op.legacyF16ToF32(i32 131, i32 %979)  ; LegacyF16ToF32(value)
  %981 = and i32 %932, 65535
  %982 = call float @dx.op.legacyF16ToF32(i32 131, i32 %981)  ; LegacyF16ToF32(value)
  %983 = lshr i32 %932, 16
  %984 = call float @dx.op.legacyF16ToF32(i32 131, i32 %983)  ; LegacyF16ToF32(value)
  %985 = and i32 %933, 65535
  %986 = call float @dx.op.legacyF16ToF32(i32 131, i32 %985)  ; LegacyF16ToF32(value)
  %987 = lshr i32 %933, 16
  %988 = call float @dx.op.legacyF16ToF32(i32 131, i32 %987)  ; LegacyF16ToF32(value)
  %989 = and i32 %934, 65535
  %990 = call float @dx.op.legacyF16ToF32(i32 131, i32 %989)  ; LegacyF16ToF32(value)
  %991 = lshr i32 %934, 16
  %992 = call float @dx.op.legacyF16ToF32(i32 131, i32 %991)  ; LegacyF16ToF32(value)
  %993 = and i32 %928, 65535
  %994 = call float @dx.op.legacyF16ToF32(i32 131, i32 %993)  ; LegacyF16ToF32(value)
  %995 = lshr i32 %928, 16
  %996 = call float @dx.op.legacyF16ToF32(i32 131, i32 %995)  ; LegacyF16ToF32(value)
  %997 = and i32 %929, 65535
  %998 = call float @dx.op.legacyF16ToF32(i32 131, i32 %997)  ; LegacyF16ToF32(value)
  br label %999

; <label>:999                                     ; preds = %926, %923
  %1000 = phi float [ %998, %926 ], [ 0.000000e+00, %923 ]
  %1001 = phi float [ %996, %926 ], [ 0.000000e+00, %923 ]
  %1002 = phi float [ %994, %926 ], [ 0.000000e+00, %923 ]
  %1003 = phi float [ %992, %926 ], [ 0.000000e+00, %923 ]
  %1004 = phi float [ %990, %926 ], [ 0.000000e+00, %923 ]
  %1005 = phi float [ %988, %926 ], [ 0.000000e+00, %923 ]
  %1006 = phi float [ %986, %926 ], [ 0.000000e+00, %923 ]
  %1007 = phi float [ %984, %926 ], [ 0.000000e+00, %923 ]
  %1008 = phi float [ %982, %926 ], [ 0.000000e+00, %923 ]
  %1009 = phi float [ %980, %926 ], [ 0.000000e+00, %923 ]
  %1010 = phi float [ %978, %926 ], [ 0.000000e+00, %923 ]
  %1011 = phi float [ %976, %926 ], [ 0.000000e+00, %923 ]
  %1012 = phi float [ %974, %926 ], [ 0.000000e+00, %923 ]
  %1013 = phi float [ %972, %926 ], [ 0.000000e+00, %923 ]
  %1014 = phi float [ %970, %926 ], [ 0.000000e+00, %923 ]
  %1015 = phi float [ %968, %926 ], [ 0.000000e+00, %923 ]
  %1016 = phi float [ %966, %926 ], [ 0.000000e+00, %923 ]
  %1017 = phi float [ %964, %926 ], [ 0.000000e+00, %923 ]
  %1018 = phi float [ %962, %926 ], [ 0.000000e+00, %923 ]
  %1019 = phi float [ %960, %926 ], [ 0.000000e+00, %923 ]
  %1020 = phi float [ %958, %926 ], [ 0.000000e+00, %923 ]
  %1021 = phi float [ %956, %926 ], [ 0.000000e+00, %923 ]
  %1022 = phi float [ %954, %926 ], [ 0.000000e+00, %923 ]
  %1023 = phi float [ %952, %926 ], [ 0.000000e+00, %923 ]
  %1024 = phi float [ %950, %926 ], [ 0.000000e+00, %923 ]
  %1025 = phi float [ %948, %926 ], [ 0.000000e+00, %923 ]
  %1026 = phi float [ %946, %926 ], [ 0.000000e+00, %923 ]
  %1027 = fcmp fast olt float %924, 1.000000e+00
  br i1 %1027, label %1028, label %1688, !dx.controlflow.hints !69

; <label>:1028                                    ; preds = %999
  %1029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1030 = extractvalue %dx.types.CBufRet.f32 %1029, 0
  %1031 = extractvalue %dx.types.CBufRet.f32 %1029, 1
  %1032 = fsub fast float %276, %1030
  %1033 = fsub fast float %277, %1031
  %1034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1035 = extractvalue %dx.types.CBufRet.f32 %1034, 0
  %1036 = extractvalue %dx.types.CBufRet.f32 %1034, 1
  %1037 = fmul fast float %1032, %1035
  %1038 = fmul fast float %1033, %1036
  %1039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1040 = extractvalue %dx.types.CBufRet.f32 %1039, 0
  %1041 = fmul fast float %1040, %1037
  %1042 = extractvalue %dx.types.CBufRet.f32 %1039, 1
  %1043 = fadd fast float %1041, %1042
  %1044 = extractvalue %dx.types.CBufRet.f32 %1039, 2
  %1045 = fmul fast float %1044, %1038
  %1046 = extractvalue %dx.types.CBufRet.f32 %1039, 3
  %1047 = fadd fast float %1045, %1046
  %1048 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %24, float %1043, float %1047, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1049 = extractvalue %dx.types.ResRet.f32 %1048, 0
  %1050 = extractvalue %dx.types.ResRet.f32 %1048, 1
  %1051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1052 = extractvalue %dx.types.CBufRet.f32 %1051, 1
  %1053 = extractvalue %dx.types.CBufRet.f32 %1051, 0
  %1054 = fsub fast float %1052, %1053
  %1055 = fmul fast float %1054, %1049
  %1056 = fadd fast float %1055, %1053
  %1057 = extractvalue %dx.types.CBufRet.f32 %1051, 3
  %1058 = extractvalue %dx.types.CBufRet.f32 %1051, 2
  %1059 = fsub fast float %1057, %1058
  %1060 = fmul fast float %1059, %1050
  %1061 = fadd fast float %1060, %1058
  %1062 = fsub fast float %278, %1056
  %1063 = fsub fast float %1061, %1056
  %1064 = fdiv fast float %1062, %1063
  %1065 = call float @dx.op.unary.f32(i32 7, float %1064)  ; Saturate(value)
  %1066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1067 = extractvalue %dx.types.CBufRet.f32 %1066, 0
  %1068 = fmul fast float %1067, %1065
  %1069 = extractvalue %dx.types.CBufRet.f32 %1066, 1
  %1070 = fadd fast float %1068, %1069
  %1071 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %24, float %1043, float %1047, float %1070, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1072 = extractvalue %dx.types.ResRet.f32 %1071, 0
  %1073 = extractvalue %dx.types.ResRet.f32 %1071, 1
  %1074 = extractvalue %dx.types.ResRet.f32 %1071, 2
  %1075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1076 = extractvalue %dx.types.CBufRet.f32 %1075, 0
  %1077 = extractvalue %dx.types.CBufRet.f32 %1075, 1
  %1078 = extractvalue %dx.types.CBufRet.f32 %1075, 2
  %1079 = fmul fast float %1076, %1072
  %1080 = fmul fast float %1077, %1073
  %1081 = fmul fast float %1078, %1074
  %1082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1083 = extractvalue %dx.types.CBufRet.f32 %1082, 0
  %1084 = extractvalue %dx.types.CBufRet.f32 %1082, 1
  %1085 = extractvalue %dx.types.CBufRet.f32 %1082, 2
  %1086 = fadd fast float %1079, %1083
  %1087 = fadd fast float %1080, %1084
  %1088 = fadd fast float %1081, %1085
  %1089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1090 = extractvalue %dx.types.CBufRet.f32 %1089, 0
  %1091 = fmul fast float %1090, %1037
  %1092 = extractvalue %dx.types.CBufRet.f32 %1089, 1
  %1093 = fadd fast float %1091, %1092
  %1094 = extractvalue %dx.types.CBufRet.f32 %1089, 2
  %1095 = fmul fast float %1094, %1038
  %1096 = extractvalue %dx.types.CBufRet.f32 %1089, 3
  %1097 = fadd fast float %1095, %1096
  %1098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1099 = extractvalue %dx.types.CBufRet.f32 %1098, 0
  %1100 = extractvalue %dx.types.CBufRet.f32 %1098, 1
  %1101 = extractvalue %dx.types.CBufRet.f32 %1098, 2
  %1102 = extractvalue %dx.types.CBufRet.f32 %1098, 3
  %1103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1104 = extractvalue %dx.types.CBufRet.f32 %1103, 0
  %1105 = extractvalue %dx.types.CBufRet.f32 %1103, 1
  %1106 = extractvalue %dx.types.CBufRet.f32 %1103, 2
  %1107 = extractvalue %dx.types.CBufRet.f32 %1103, 3
  %1108 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %24, float %1093, float %1097, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1109 = extractvalue %dx.types.ResRet.f32 %1108, 0
  %1110 = extractvalue %dx.types.ResRet.f32 %1108, 1
  %1111 = extractvalue %dx.types.ResRet.f32 %1108, 2
  %1112 = extractvalue %dx.types.ResRet.f32 %1108, 3
  %1113 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %24, float %1093, float %1097, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1114 = extractvalue %dx.types.ResRet.f32 %1113, 0
  %1115 = extractvalue %dx.types.ResRet.f32 %1113, 1
  %1116 = extractvalue %dx.types.ResRet.f32 %1113, 2
  %1117 = extractvalue %dx.types.ResRet.f32 %1113, 3
  %1118 = fmul fast float %1109, %1086
  %1119 = fmul fast float %1114, %1086
  %1120 = fmul fast float %1116, %1086
  %1121 = fmul fast float %1112, %1086
  %1122 = fadd fast float %1118, %1099
  %1123 = fadd fast float %1119, %1100
  %1124 = fadd fast float %1120, %1101
  %1125 = fadd fast float %1121, %1102
  %1126 = fmul fast float %1110, %1086
  %1127 = fmul fast float %1115, %1086
  %1128 = fadd fast float %1126, %1104
  %1129 = fadd fast float %1127, %1105
  %1130 = fmul fast float %1111, %1086
  %1131 = fmul fast float %1117, %1086
  %1132 = fadd fast float %1130, %1106
  %1133 = fadd fast float %1131, %1107
  %1134 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %24, float %1093, float %1097, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1135 = extractvalue %dx.types.ResRet.f32 %1134, 0
  %1136 = extractvalue %dx.types.ResRet.f32 %1134, 1
  %1137 = extractvalue %dx.types.ResRet.f32 %1134, 2
  %1138 = extractvalue %dx.types.ResRet.f32 %1134, 3
  %1139 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %24, float %1093, float %1097, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1140 = extractvalue %dx.types.ResRet.f32 %1139, 0
  %1141 = extractvalue %dx.types.ResRet.f32 %1139, 1
  %1142 = extractvalue %dx.types.ResRet.f32 %1139, 2
  %1143 = extractvalue %dx.types.ResRet.f32 %1139, 3
  %1144 = fmul fast float %1135, %1087
  %1145 = fmul fast float %1140, %1087
  %1146 = fmul fast float %1142, %1087
  %1147 = fmul fast float %1138, %1087
  %1148 = fadd fast float %1122, %1144
  %1149 = fadd fast float %1123, %1145
  %1150 = fadd fast float %1124, %1146
  %1151 = fadd fast float %1125, %1147
  %1152 = fmul fast float %1136, %1087
  %1153 = fmul fast float %1141, %1087
  %1154 = fadd fast float %1128, %1152
  %1155 = fadd fast float %1129, %1153
  %1156 = fmul fast float %1137, %1087
  %1157 = fmul fast float %1143, %1087
  %1158 = fadd fast float %1132, %1156
  %1159 = fadd fast float %1133, %1157
  %1160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %24, float %1093, float %1097, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1161 = extractvalue %dx.types.ResRet.f32 %1160, 0
  %1162 = extractvalue %dx.types.ResRet.f32 %1160, 1
  %1163 = extractvalue %dx.types.ResRet.f32 %1160, 2
  %1164 = extractvalue %dx.types.ResRet.f32 %1160, 3
  %1165 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %24, float %1093, float %1097, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1166 = extractvalue %dx.types.ResRet.f32 %1165, 0
  %1167 = extractvalue %dx.types.ResRet.f32 %1165, 1
  %1168 = extractvalue %dx.types.ResRet.f32 %1165, 2
  %1169 = extractvalue %dx.types.ResRet.f32 %1165, 3
  %1170 = fmul fast float %1161, %1088
  %1171 = fmul fast float %1166, %1088
  %1172 = fmul fast float %1168, %1088
  %1173 = fmul fast float %1164, %1088
  %1174 = fadd fast float %1148, %1170
  %1175 = fadd fast float %1149, %1171
  %1176 = fadd fast float %1150, %1172
  %1177 = fadd fast float %1151, %1173
  %1178 = fmul fast float %1162, %1088
  %1179 = fmul fast float %1167, %1088
  %1180 = fadd fast float %1154, %1178
  %1181 = fadd fast float %1155, %1179
  %1182 = fmul fast float %1163, %1088
  %1183 = fmul fast float %1169, %1088
  %1184 = fadd fast float %1158, %1182
  %1185 = fadd fast float %1159, %1183
  %1186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1187 = extractvalue %dx.types.CBufRet.f32 %1186, 0
  %1188 = fsub fast float %276, %1187
  %1189 = fsub fast float %1030, %276
  %1190 = call float @dx.op.binary.f32(i32 35, float %1189, float %1188)  ; FMax(a,b)
  %1191 = extractvalue %dx.types.CBufRet.f32 %1186, 1
  %1192 = fsub fast float %277, %1191
  %1193 = fsub fast float %1031, %277
  %1194 = call float @dx.op.binary.f32(i32 35, float %1193, float %1192)  ; FMax(a,b)
  %1195 = call float @dx.op.binary.f32(i32 35, float %1190, float %1194)  ; FMax(a,b)
  %1196 = extractvalue %dx.types.CBufRet.f32 %1034, 3
  %1197 = fmul fast float %1196, %1195
  %1198 = call float @dx.op.unary.f32(i32 7, float %1197)  ; Saturate(value)
  %1199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1200 = extractvalue %dx.types.CBufRet.f32 %1199, 0
  %1201 = extractvalue %dx.types.CBufRet.f32 %1199, 1
  %1202 = extractvalue %dx.types.CBufRet.f32 %1199, 2
  %1203 = extractvalue %dx.types.CBufRet.f32 %1199, 3
  %1204 = fsub fast float %1200, %1174
  %1205 = fsub fast float %1201, %1175
  %1206 = fsub fast float %1202, %1176
  %1207 = fsub fast float %1203, %1177
  %1208 = fmul fast float %1204, %1198
  %1209 = fmul fast float %1205, %1198
  %1210 = fmul fast float %1206, %1198
  %1211 = fmul fast float %1207, %1198
  %1212 = fadd fast float %1208, %1174
  %1213 = fadd fast float %1209, %1175
  %1214 = fadd fast float %1210, %1176
  %1215 = fadd fast float %1211, %1177
  %1216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1217 = extractvalue %dx.types.CBufRet.f32 %1216, 0
  %1218 = extractvalue %dx.types.CBufRet.f32 %1216, 1
  %1219 = fsub fast float %1217, %1180
  %1220 = fsub fast float %1218, %1181
  %1221 = fmul fast float %1219, %1198
  %1222 = fmul fast float %1220, %1198
  %1223 = fadd fast float %1221, %1180
  %1224 = fadd fast float %1222, %1181
  %1225 = extractvalue %dx.types.CBufRet.f32 %1216, 2
  %1226 = extractvalue %dx.types.CBufRet.f32 %1216, 3
  %1227 = fsub fast float %1225, %1184
  %1228 = fsub fast float %1226, %1185
  %1229 = fmul fast float %1227, %1198
  %1230 = fmul fast float %1228, %1198
  %1231 = fadd fast float %1229, %1184
  %1232 = fadd fast float %1230, %1185
  %1233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1234 = extractvalue %dx.types.CBufRet.f32 %1233, 0
  %1235 = fmul fast float %1234, %1212
  %1236 = fmul fast float %1234, %1213
  %1237 = fmul fast float %1234, %1214
  %1238 = fmul fast float %1234, %1215
  %1239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1240 = extractvalue %dx.types.CBufRet.f32 %1239, 0
  %1241 = fmul fast float %1240, %1223
  %1242 = fmul fast float %1240, %1224
  %1243 = fadd fast float %1241, %1235
  %1244 = fadd fast float %1242, %1237
  %1245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1246 = extractvalue %dx.types.CBufRet.f32 %1245, 0
  %1247 = fmul fast float %1246, %1231
  %1248 = fmul fast float %1246, %1232
  %1249 = fadd fast float %1243, %1247
  %1250 = fadd fast float %1244, %1248
  %1251 = extractvalue %dx.types.CBufRet.f32 %1233, 1
  %1252 = fmul fast float %1251, %1212
  %1253 = fmul fast float %1251, %1213
  %1254 = fmul fast float %1251, %1214
  %1255 = fmul fast float %1251, %1215
  %1256 = extractvalue %dx.types.CBufRet.f32 %1239, 1
  %1257 = fmul fast float %1256, %1223
  %1258 = fmul fast float %1256, %1224
  %1259 = fadd fast float %1257, %1252
  %1260 = fadd fast float %1258, %1254
  %1261 = extractvalue %dx.types.CBufRet.f32 %1245, 1
  %1262 = fmul fast float %1261, %1231
  %1263 = fmul fast float %1261, %1232
  %1264 = fadd fast float %1259, %1262
  %1265 = fadd fast float %1260, %1263
  %1266 = extractvalue %dx.types.CBufRet.f32 %1233, 2
  %1267 = fmul fast float %1266, %1212
  %1268 = fmul fast float %1266, %1213
  %1269 = fmul fast float %1266, %1214
  %1270 = fmul fast float %1266, %1215
  %1271 = extractvalue %dx.types.CBufRet.f32 %1239, 2
  %1272 = fmul fast float %1271, %1223
  %1273 = fmul fast float %1271, %1224
  %1274 = fadd fast float %1272, %1267
  %1275 = fadd fast float %1273, %1269
  %1276 = extractvalue %dx.types.CBufRet.f32 %1245, 2
  %1277 = fmul fast float %1276, %1231
  %1278 = fmul fast float %1276, %1232
  %1279 = fadd fast float %1274, %1277
  %1280 = fadd fast float %1275, %1278
  %1281 = fmul fast float %1268, %1268
  %1282 = fmul fast float %1280, %1280
  %1283 = fmul fast float %1270, %1270
  %1284 = fadd fast float %1283, %1281
  %1285 = fadd fast float %1284, %1282
  %1286 = call float @dx.op.unary.f32(i32 24, float %1285)  ; Sqrt(value)
  %1287 = fcmp fast ugt float %1286, 0.000000e+00
  br i1 %1287, label %1288, label %1303, !dx.controlflow.hints !70

; <label>:1288                                    ; preds = %1028
  %1289 = fsub fast float -0.000000e+00, %1270
  %1290 = fdiv fast float %1289, %1286
  %1291 = fsub fast float -0.000000e+00, %1268
  %1292 = fdiv fast float %1291, %1286
  %1293 = fdiv fast float %1280, %1286
  %1294 = fmul fast float %1279, 0x3FE279A760000000
  %1295 = fmul fast float %1292, %1268
  %1296 = fmul fast float %1293, %1280
  %1297 = fmul fast float %1290, %1270
  %1298 = fadd fast float %1295, %1297
  %1299 = fsub fast float %1298, %1296
  %1300 = call float @dx.op.unary.f32(i32 6, float %1299)  ; FAbs(value)
  %1301 = fadd fast float %1300, 0x3DDB7CDFE0000000
  %1302 = fdiv fast float %1294, %1301
  br label %1303

; <label>:1303                                    ; preds = %1288, %1028
  %1304 = phi float [ %1302, %1288 ], [ 1.000000e+00, %1028 ]
  %1305 = fmul fast float %1253, %1253
  %1306 = fmul fast float %1265, %1265
  %1307 = fmul fast float %1255, %1255
  %1308 = fadd fast float %1307, %1305
  %1309 = fadd fast float %1308, %1306
  %1310 = call float @dx.op.unary.f32(i32 24, float %1309)  ; Sqrt(value)
  %1311 = fcmp fast ugt float %1310, 0.000000e+00
  br i1 %1311, label %1312, label %1327, !dx.controlflow.hints !70

; <label>:1312                                    ; preds = %1303
  %1313 = fsub fast float -0.000000e+00, %1255
  %1314 = fdiv fast float %1313, %1310
  %1315 = fsub fast float -0.000000e+00, %1253
  %1316 = fdiv fast float %1315, %1310
  %1317 = fdiv fast float %1265, %1310
  %1318 = fmul fast float %1264, 0x3FE279A760000000
  %1319 = fmul fast float %1316, %1253
  %1320 = fmul fast float %1317, %1265
  %1321 = fmul fast float %1314, %1255
  %1322 = fadd fast float %1319, %1321
  %1323 = fsub fast float %1322, %1320
  %1324 = call float @dx.op.unary.f32(i32 6, float %1323)  ; FAbs(value)
  %1325 = fadd fast float %1324, 0x3DDB7CDFE0000000
  %1326 = fdiv fast float %1318, %1325
  br label %1327

; <label>:1327                                    ; preds = %1312, %1303
  %1328 = phi float [ %1326, %1312 ], [ 1.000000e+00, %1303 ]
  %1329 = call float @dx.op.binary.f32(i32 36, float %1328, float %1304)  ; FMin(a,b)
  %1330 = fmul fast float %1236, %1236
  %1331 = fmul fast float %1250, %1250
  %1332 = fmul fast float %1238, %1238
  %1333 = fadd fast float %1332, %1330
  %1334 = fadd fast float %1333, %1331
  %1335 = call float @dx.op.unary.f32(i32 24, float %1334)  ; Sqrt(value)
  %1336 = fcmp fast ugt float %1335, 0.000000e+00
  br i1 %1336, label %1337, label %1352, !dx.controlflow.hints !70

; <label>:1337                                    ; preds = %1327
  %1338 = fsub fast float -0.000000e+00, %1238
  %1339 = fdiv fast float %1338, %1335
  %1340 = fsub fast float -0.000000e+00, %1236
  %1341 = fdiv fast float %1340, %1335
  %1342 = fdiv fast float %1250, %1335
  %1343 = fmul fast float %1249, 0x3FE279A760000000
  %1344 = fmul fast float %1341, %1236
  %1345 = fmul fast float %1342, %1250
  %1346 = fmul fast float %1339, %1238
  %1347 = fadd fast float %1344, %1346
  %1348 = fsub fast float %1347, %1345
  %1349 = call float @dx.op.unary.f32(i32 6, float %1348)  ; FAbs(value)
  %1350 = fadd fast float %1349, 0x3DDB7CDFE0000000
  %1351 = fdiv fast float %1343, %1350
  br label %1352

; <label>:1352                                    ; preds = %1337, %1327
  %1353 = phi float [ %1351, %1337 ], [ 1.000000e+00, %1327 ]
  %1354 = call float @dx.op.binary.f32(i32 36, float %1353, float %1329)  ; FMin(a,b)
  %1355 = call float @dx.op.unary.f32(i32 7, float %1354)  ; Saturate(value)
  %1356 = fcmp fast olt float %1355, 1.000000e+00
  br i1 %1356, label %1357, label %1367, !dx.controlflow.hints !71

; <label>:1357                                    ; preds = %1352
  %1358 = fmul fast float %1355, %1236
  %1359 = fmul fast float %1355, %1250
  %1360 = fmul fast float %1355, %1238
  %1361 = fmul fast float %1355, %1253
  %1362 = fmul fast float %1355, %1265
  %1363 = fmul fast float %1355, %1255
  %1364 = fmul fast float %1355, %1268
  %1365 = fmul fast float %1355, %1280
  %1366 = fmul fast float %1355, %1270
  br label %1367

; <label>:1367                                    ; preds = %1357, %1352
  %1368 = phi float [ %1364, %1357 ], [ %1268, %1352 ]
  %1369 = phi float [ %1365, %1357 ], [ %1280, %1352 ]
  %1370 = phi float [ %1366, %1357 ], [ %1270, %1352 ]
  %1371 = phi float [ %1361, %1357 ], [ %1253, %1352 ]
  %1372 = phi float [ %1362, %1357 ], [ %1265, %1352 ]
  %1373 = phi float [ %1363, %1357 ], [ %1255, %1352 ]
  %1374 = phi float [ %1358, %1357 ], [ %1236, %1352 ]
  %1375 = phi float [ %1359, %1357 ], [ %1250, %1352 ]
  %1376 = phi float [ %1360, %1357 ], [ %1238, %1352 ]
  %1377 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1249)  ; FMax(a,b)
  %1378 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1264)  ; FMax(a,b)
  %1379 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1279)  ; FMax(a,b)
  %1380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1381 = extractvalue %dx.types.CBufRet.f32 %1380, 0
  %1382 = fcmp fast ogt float %1381, 0.000000e+00
  %1383 = fcmp fast oge float %1037, 0.000000e+00
  %1384 = and i1 %1383, %1382
  %1385 = fcmp fast ole float %1037, 1.000000e+00
  %1386 = and i1 %1385, %1384
  %1387 = fcmp fast oge float %1038, 0.000000e+00
  %1388 = and i1 %1387, %1386
  %1389 = fcmp fast ole float %1038, 1.000000e+00
  %1390 = and i1 %1389, %1388
  br i1 %1390, label %1391, label %1536, !dx.controlflow.hints !72

; <label>:1391                                    ; preds = %1367
  %1392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1393 = extractvalue %dx.types.CBufRet.f32 %1392, 2
  %1394 = extractvalue %dx.types.CBufRet.f32 %1392, 3
  %1395 = fmul fast float %1393, %1037
  %1396 = fmul fast float %1394, %1038
  %1397 = call float @dx.op.unary.f32(i32 27, float %1395)  ; Round_ni(value)
  %1398 = call float @dx.op.unary.f32(i32 27, float %1396)  ; Round_ni(value)
  %1399 = fptosi float %1397 to i32
  %1400 = fptosi float %1398 to i32
  %1401 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %1399, i32 %1400, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1402 = extractvalue %dx.types.ResRet.i32 %1401, 0
  %1403 = and i32 %1402, 65535
  %1404 = lshr i32 %1402, 16
  %1405 = icmp eq i32 %1403, 65535
  br i1 %1405, label %1442, label %1406, !dx.controlflow.hints !73

; <label>:1406                                    ; preds = %1391
  %1407 = extractvalue %dx.types.CBufRet.f32 %1380, 1
  %1408 = extractvalue %dx.types.CBufRet.f32 %1392, 0
  %1409 = extractvalue %dx.types.CBufRet.f32 %1392, 1
  %1410 = fmul fast float %1408, %1037
  %1411 = fmul fast float %1409, %1038
  %1412 = fmul fast float %1410, 1.250000e-01
  %1413 = fmul fast float %1411, 1.250000e-01
  %1414 = call float @dx.op.unary.f32(i32 27, float %1412)  ; Round_ni(value)
  %1415 = call float @dx.op.unary.f32(i32 27, float %1413)  ; Round_ni(value)
  %1416 = fmul fast float %1414, 8.000000e+00
  %1417 = fmul fast float %1415, 8.000000e+00
  %1418 = and i32 %1402, 255
  %1419 = lshr i32 %1402, 8
  %1420 = and i32 %1419, 255
  %1421 = mul nuw nsw i32 %1418, 9
  %1422 = uitofp i32 %1421 to float
  %1423 = mul nuw nsw i32 %1420, 9
  %1424 = uitofp i32 %1423 to float
  %1425 = fadd fast float %1422, 5.000000e-01
  %1426 = fadd fast float %1425, %1410
  %1427 = fsub fast float %1426, %1416
  %1428 = fadd fast float %1424, 5.000000e-01
  %1429 = fadd fast float %1428, %1411
  %1430 = fsub fast float %1429, %1417
  %1431 = fdiv fast float %1427, %1381
  %1432 = fdiv fast float %1430, %1407
  %1433 = fmul fast float %1065, 4.375000e-01
  %1434 = fadd fast float %1433, 3.125000e-02
  %1435 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %24, float %1431, float %1432, float %1434, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1436 = extractvalue %dx.types.ResRet.f32 %1435, 0
  %1437 = extractvalue %dx.types.ResRet.f32 %1435, 1
  %1438 = extractvalue %dx.types.ResRet.f32 %1435, 2
  %1439 = fadd fast float %1436, %1377
  %1440 = fadd fast float %1437, %1378
  %1441 = fadd fast float %1438, %1379
  br label %1442

; <label>:1442                                    ; preds = %1406, %1391
  %1443 = phi float [ %1441, %1406 ], [ %1379, %1391 ]
  %1444 = phi float [ %1440, %1406 ], [ %1378, %1391 ]
  %1445 = phi float [ %1439, %1406 ], [ %1377, %1391 ]
  %1446 = icmp eq i32 %1404, 65535
  br i1 %1446, label %1536, label %1447, !dx.controlflow.hints !74

; <label>:1447                                    ; preds = %1442
  %1448 = extractvalue %dx.types.CBufRet.f32 %1380, 1
  %1449 = extractvalue %dx.types.CBufRet.f32 %1392, 0
  %1450 = extractvalue %dx.types.CBufRet.f32 %1392, 1
  %1451 = fmul fast float %1449, %1037
  %1452 = fmul fast float %1450, %1038
  %1453 = fmul fast float %1451, 1.250000e-01
  %1454 = fmul fast float %1452, 1.250000e-01
  %1455 = call float @dx.op.unary.f32(i32 27, float %1453)  ; Round_ni(value)
  %1456 = call float @dx.op.unary.f32(i32 27, float %1454)  ; Round_ni(value)
  %1457 = fmul fast float %1455, 8.000000e+00
  %1458 = fmul fast float %1456, 8.000000e+00
  %1459 = fsub fast float %1451, %1457
  %1460 = fsub fast float %1452, %1458
  %1461 = fadd fast float %1459, 5.000000e-01
  %1462 = fadd fast float %1460, 5.000000e-01
  %1463 = and i32 %1404, 255
  %1464 = lshr i32 %1402, 24
  %1465 = mul nuw nsw i32 %1463, 9
  %1466 = uitofp i32 %1465 to float
  %1467 = mul nuw nsw i32 %1464, 9
  %1468 = uitofp i32 %1467 to float
  %1469 = fadd fast float %1461, %1466
  %1470 = fadd fast float %1462, %1468
  %1471 = fdiv fast float %1469, %1381
  %1472 = fdiv fast float %1470, %1448
  %1473 = fmul fast float %1065, 4.375000e-01
  %1474 = fadd fast float %1473, 3.125000e-02
  %1475 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %24, float %1471, float %1472, float %1474, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1476 = extractvalue %dx.types.ResRet.f32 %1475, 0
  %1477 = extractvalue %dx.types.ResRet.f32 %1475, 1
  %1478 = extractvalue %dx.types.ResRet.f32 %1475, 2
  %1479 = fadd fast float %1473, 5.312500e-01
  %1480 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %24, float %1471, float %1472, float %1479, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1481 = extractvalue %dx.types.ResRet.f32 %1480, 0
  %1482 = extractvalue %dx.types.ResRet.f32 %1480, 1
  %1483 = extractvalue %dx.types.ResRet.f32 %1480, 2
  %1484 = fmul fast float %1481, 2.000000e+00
  %1485 = fmul fast float %1482, 2.000000e+00
  %1486 = fmul fast float %1483, 2.000000e+00
  %1487 = fadd fast float %1484, -1.000000e+00
  %1488 = fadd fast float %1485, -1.000000e+00
  %1489 = fadd fast float %1486, -1.000000e+00
  %1490 = fmul fast float %1487, %1487
  %1491 = fmul fast float %1488, %1488
  %1492 = fadd fast float %1490, %1491
  %1493 = fmul fast float %1489, %1489
  %1494 = fadd fast float %1492, %1493
  %1495 = call float @dx.op.unary.f32(i32 24, float %1494)  ; Sqrt(value)
  %1496 = fcmp fast ogt float %1495, 0.000000e+00
  br i1 %1496, label %1497, label %1501, !dx.controlflow.hints !75

; <label>:1497                                    ; preds = %1447
  %1498 = fdiv fast float %1487, %1495
  %1499 = fdiv fast float %1488, %1495
  %1500 = fdiv fast float %1489, %1495
  br label %1501

; <label>:1501                                    ; preds = %1497, %1447
  %1502 = phi float [ %1498, %1497 ], [ 0.000000e+00, %1447 ]
  %1503 = phi float [ %1499, %1497 ], [ 0.000000e+00, %1447 ]
  %1504 = phi float [ %1500, %1497 ], [ 0.000000e+00, %1447 ]
  %1505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1506 = extractvalue %dx.types.CBufRet.f32 %1505, 0
  %1507 = extractvalue %dx.types.CBufRet.f32 %1505, 1
  %1508 = fsub fast float %276, %1506
  %1509 = fsub fast float %277, %1507
  %1510 = fmul fast float %1508, %1508
  %1511 = fmul fast float %1509, %1509
  %1512 = fadd fast float %1510, %1511
  %1513 = call float @dx.op.unary.f32(i32 24, float %1512)  ; Sqrt(value)
  %1514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1515 = extractvalue %dx.types.CBufRet.f32 %1514, 0
  %1516 = extractvalue %dx.types.CBufRet.f32 %1514, 1
  %1517 = fsub fast float %1513, %1515
  %1518 = fdiv fast float %1517, %1516
  %1519 = call float @dx.op.unary.f32(i32 7, float %1518)  ; Saturate(value)
  %1520 = fmul fast float %1519, 2.000000e+00
  %1521 = fsub fast float 3.000000e+00, %1520
  %1522 = fmul fast float %1519, %1519
  %1523 = fmul fast float %1522, %1521
  %1524 = call float @dx.op.dot3.f32(i32 55, float %1502, float %1503, float %1504, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1525 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1524)  ; FMax(a,b)
  %1526 = fmul fast float %1525, 0x400C5BF8A0000000
  %1527 = fmul fast float %1523, %1476
  %1528 = fmul fast float %1527, %1526
  %1529 = fadd fast float %1528, %1445
  %1530 = fmul fast float %1523, %1477
  %1531 = fmul fast float %1530, %1526
  %1532 = fadd fast float %1531, %1444
  %1533 = fmul fast float %1523, %1478
  %1534 = fmul fast float %1533, %1526
  %1535 = fadd fast float %1534, %1443
  br label %1536

; <label>:1536                                    ; preds = %1501, %1442, %1367
  %1537 = phi float [ %1535, %1501 ], [ %1443, %1442 ], [ %1379, %1367 ]
  %1538 = phi float [ %1532, %1501 ], [ %1444, %1442 ], [ %1378, %1367 ]
  %1539 = phi float [ %1529, %1501 ], [ %1445, %1442 ], [ %1377, %1367 ]
  %1540 = fcmp fast ogt float %278, %1061
  %1541 = and i1 %1383, %1540
  %1542 = and i1 %1385, %1541
  %1543 = and i1 %1387, %1542
  %1544 = and i1 %1389, %1543
  br i1 %1544, label %1545, label %1602, !dx.controlflow.hints !76

; <label>:1545                                    ; preds = %1536
  %1546 = fmul fast float %1063, 0x3FC24924A0000000
  %1547 = fsub fast float %278, %1061
  %1548 = fdiv fast float %1547, %1546
  %1549 = call float @dx.op.unary.f32(i32 7, float %1548)  ; Saturate(value)
  %1550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1551 = extractvalue %dx.types.CBufRet.f32 %1550, 0
  %1552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1553 = extractvalue %dx.types.CBufRet.f32 %1552, 0
  %1554 = extractvalue %dx.types.CBufRet.f32 %1552, 1
  %1555 = extractvalue %dx.types.CBufRet.f32 %1552, 2
  %1556 = fsub fast float %1551, %1539
  %1557 = fsub fast float %1553, %1374
  %1558 = fsub fast float %1554, %1375
  %1559 = fsub fast float %1555, %1376
  %1560 = fmul fast float %1556, %1549
  %1561 = fmul fast float %1557, %1549
  %1562 = fmul fast float %1558, %1549
  %1563 = fmul fast float %1559, %1549
  %1564 = fadd fast float %1560, %1539
  %1565 = fadd fast float %1561, %1374
  %1566 = fadd fast float %1562, %1375
  %1567 = fadd fast float %1563, %1376
  %1568 = extractvalue %dx.types.CBufRet.f32 %1550, 1
  %1569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1570 = extractvalue %dx.types.CBufRet.f32 %1569, 0
  %1571 = extractvalue %dx.types.CBufRet.f32 %1569, 1
  %1572 = extractvalue %dx.types.CBufRet.f32 %1569, 2
  %1573 = fsub fast float %1568, %1538
  %1574 = fsub fast float %1570, %1371
  %1575 = fsub fast float %1571, %1372
  %1576 = fsub fast float %1572, %1373
  %1577 = fmul fast float %1573, %1549
  %1578 = fmul fast float %1574, %1549
  %1579 = fmul fast float %1575, %1549
  %1580 = fmul fast float %1576, %1549
  %1581 = fadd fast float %1577, %1538
  %1582 = fadd fast float %1578, %1371
  %1583 = fadd fast float %1579, %1372
  %1584 = fadd fast float %1580, %1373
  %1585 = extractvalue %dx.types.CBufRet.f32 %1550, 2
  %1586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1587 = extractvalue %dx.types.CBufRet.f32 %1586, 0
  %1588 = extractvalue %dx.types.CBufRet.f32 %1586, 1
  %1589 = extractvalue %dx.types.CBufRet.f32 %1586, 2
  %1590 = fsub fast float %1585, %1537
  %1591 = fsub fast float %1587, %1368
  %1592 = fsub fast float %1588, %1369
  %1593 = fsub fast float %1589, %1370
  %1594 = fmul fast float %1590, %1549
  %1595 = fmul fast float %1591, %1549
  %1596 = fmul fast float %1592, %1549
  %1597 = fmul fast float %1593, %1549
  %1598 = fadd fast float %1594, %1537
  %1599 = fadd fast float %1595, %1368
  %1600 = fadd fast float %1596, %1369
  %1601 = fadd fast float %1597, %1370
  br label %1602

; <label>:1602                                    ; preds = %1545, %1536
  %1603 = phi float [ %1598, %1545 ], [ %1537, %1536 ]
  %1604 = phi float [ %1599, %1545 ], [ %1368, %1536 ]
  %1605 = phi float [ %1600, %1545 ], [ %1369, %1536 ]
  %1606 = phi float [ %1601, %1545 ], [ %1370, %1536 ]
  %1607 = phi float [ %1581, %1545 ], [ %1538, %1536 ]
  %1608 = phi float [ %1582, %1545 ], [ %1371, %1536 ]
  %1609 = phi float [ %1583, %1545 ], [ %1372, %1536 ]
  %1610 = phi float [ %1584, %1545 ], [ %1373, %1536 ]
  %1611 = phi float [ %1564, %1545 ], [ %1539, %1536 ]
  %1612 = phi float [ %1565, %1545 ], [ %1374, %1536 ]
  %1613 = phi float [ %1566, %1545 ], [ %1375, %1536 ]
  %1614 = phi float [ %1567, %1545 ], [ %1376, %1536 ]
  %1615 = extractvalue %dx.types.CBufRet.f32 %1186, 3
  %1616 = fmul fast float %1615, %1611
  %1617 = fmul fast float %1615, %1607
  %1618 = fmul fast float %1615, %1603
  %1619 = fmul fast float %1612, 1.500000e+00
  %1620 = fmul fast float %1619, %1615
  %1621 = fmul fast float %1613, 1.500000e+00
  %1622 = fmul fast float %1621, %1615
  %1623 = fmul fast float %1614, 1.500000e+00
  %1624 = fmul fast float %1623, %1615
  %1625 = fmul fast float %1608, 1.500000e+00
  %1626 = fmul fast float %1625, %1615
  %1627 = fmul fast float %1609, 1.500000e+00
  %1628 = fmul fast float %1627, %1615
  %1629 = fmul fast float %1610, 1.500000e+00
  %1630 = fmul fast float %1629, %1615
  %1631 = fmul fast float %1604, 1.500000e+00
  %1632 = fmul fast float %1631, %1615
  %1633 = fmul fast float %1605, 1.500000e+00
  %1634 = fmul fast float %1633, %1615
  %1635 = fmul fast float %1606, 1.500000e+00
  %1636 = fmul fast float %1635, %1615
  %1637 = fsub fast float %1026, %1616
  %1638 = fmul fast float %1637, %924
  %1639 = fadd fast float %1638, %1616
  %1640 = fsub fast float %1025, %1620
  %1641 = fmul fast float %1640, %924
  %1642 = fadd fast float %1641, %1620
  %1643 = fsub fast float %1024, %1622
  %1644 = fmul fast float %1643, %924
  %1645 = fadd fast float %1644, %1622
  %1646 = fsub fast float %1023, %1624
  %1647 = fmul fast float %1646, %924
  %1648 = fadd fast float %1647, %1624
  %1649 = fmul fast float %1022, %924
  %1650 = fmul fast float %1021, %924
  %1651 = fmul fast float %1020, %924
  %1652 = fmul fast float %1019, %924
  %1653 = fmul fast float %1018, %924
  %1654 = fsub fast float %1017, %1617
  %1655 = fmul fast float %1654, %924
  %1656 = fadd fast float %1655, %1617
  %1657 = fsub fast float %1016, %1626
  %1658 = fmul fast float %1657, %924
  %1659 = fadd fast float %1658, %1626
  %1660 = fsub fast float %1015, %1628
  %1661 = fmul fast float %1660, %924
  %1662 = fadd fast float %1661, %1628
  %1663 = fsub fast float %1014, %1630
  %1664 = fmul fast float %1663, %924
  %1665 = fadd fast float %1664, %1630
  %1666 = fmul fast float %1013, %924
  %1667 = fmul fast float %1012, %924
  %1668 = fmul fast float %1011, %924
  %1669 = fmul fast float %1010, %924
  %1670 = fmul fast float %1009, %924
  %1671 = fsub fast float %1008, %1618
  %1672 = fmul fast float %1671, %924
  %1673 = fadd fast float %1672, %1618
  %1674 = fsub fast float %1007, %1632
  %1675 = fmul fast float %1674, %924
  %1676 = fadd fast float %1675, %1632
  %1677 = fsub fast float %1006, %1634
  %1678 = fmul fast float %1677, %924
  %1679 = fadd fast float %1678, %1634
  %1680 = fsub fast float %1005, %1636
  %1681 = fmul fast float %1680, %924
  %1682 = fadd fast float %1681, %1636
  %1683 = fmul fast float %1004, %924
  %1684 = fmul fast float %1003, %924
  %1685 = fmul fast float %1002, %924
  %1686 = fmul fast float %1001, %924
  %1687 = fmul fast float %1000, %924
  br label %1688

; <label>:1688                                    ; preds = %1602, %999
  %1689 = phi float [ %1687, %1602 ], [ %1000, %999 ]
  %1690 = phi float [ %1686, %1602 ], [ %1001, %999 ]
  %1691 = phi float [ %1685, %1602 ], [ %1002, %999 ]
  %1692 = phi float [ %1684, %1602 ], [ %1003, %999 ]
  %1693 = phi float [ %1683, %1602 ], [ %1004, %999 ]
  %1694 = phi float [ %1682, %1602 ], [ %1005, %999 ]
  %1695 = phi float [ %1679, %1602 ], [ %1006, %999 ]
  %1696 = phi float [ %1676, %1602 ], [ %1007, %999 ]
  %1697 = phi float [ %1673, %1602 ], [ %1008, %999 ]
  %1698 = phi float [ %1670, %1602 ], [ %1009, %999 ]
  %1699 = phi float [ %1669, %1602 ], [ %1010, %999 ]
  %1700 = phi float [ %1668, %1602 ], [ %1011, %999 ]
  %1701 = phi float [ %1667, %1602 ], [ %1012, %999 ]
  %1702 = phi float [ %1666, %1602 ], [ %1013, %999 ]
  %1703 = phi float [ %1665, %1602 ], [ %1014, %999 ]
  %1704 = phi float [ %1662, %1602 ], [ %1015, %999 ]
  %1705 = phi float [ %1659, %1602 ], [ %1016, %999 ]
  %1706 = phi float [ %1656, %1602 ], [ %1017, %999 ]
  %1707 = phi float [ %1653, %1602 ], [ %1018, %999 ]
  %1708 = phi float [ %1652, %1602 ], [ %1019, %999 ]
  %1709 = phi float [ %1651, %1602 ], [ %1020, %999 ]
  %1710 = phi float [ %1650, %1602 ], [ %1021, %999 ]
  %1711 = phi float [ %1649, %1602 ], [ %1022, %999 ]
  %1712 = phi float [ %1648, %1602 ], [ %1023, %999 ]
  %1713 = phi float [ %1645, %1602 ], [ %1024, %999 ]
  %1714 = phi float [ %1642, %1602 ], [ %1025, %999 ]
  %1715 = phi float [ %1639, %1602 ], [ %1026, %999 ]
  %1716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1717 = extractvalue %dx.types.CBufRet.f32 %1716, 2
  %1718 = fmul fast float %1717, %1717
  %1719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1720 = extractvalue %dx.types.CBufRet.f32 %1719, 0
  %1721 = extractvalue %dx.types.CBufRet.f32 %1719, 1
  %1722 = extractvalue %dx.types.CBufRet.f32 %1719, 2
  %1723 = fmul fast float %1715, 0x3FD20DD760000000
  %1724 = fmul fast float %1722, %1713
  %1725 = fmul fast float %1722, %1722
  %1726 = fmul fast float %1725, 0x3FEE471020000000
  %1727 = fadd fast float %1726, 0xBFD42F6020000000
  %1728 = fmul fast float %1727, %1709
  %1729 = fmul fast float %1720, %1712
  %1730 = fmul fast float %1721, %1714
  %1731 = fmul fast float %1722, 0x3FF17B1420000000
  %1732 = fmul fast float %1718, %1708
  %1733 = fmul fast float %1732, %1720
  %1734 = fmul fast float %1733, %1731
  %1735 = fmul fast float %1718, %1710
  %1736 = fmul fast float %1735, %1721
  %1737 = fmul fast float %1736, %1731
  %1738 = fmul fast float %1720, %1720
  %1739 = fmul fast float %1721, %1721
  %1740 = fsub fast float %1738, %1739
  %1741 = fmul fast float %1707, 0x3FE17B1420000000
  %1742 = fmul fast float %1741, %1740
  %1743 = fmul fast float %1711, 0x3FF17B1420000000
  %1744 = fmul fast float %1743, %1721
  %1745 = fmul fast float %1744, %1720
  %1746 = fadd fast float %1742, %1745
  %1747 = fadd fast float %1746, %1728
  %1748 = fmul fast float %1747, %1718
  %1749 = fsub fast float %1730, %1724
  %1750 = fadd fast float %1749, %1729
  %1751 = fmul fast float %1750, 0x3FDF454380000000
  %1752 = fmul fast float %1751, %1717
  %1753 = fsub fast float %1723, %1734
  %1754 = fsub fast float %1753, %1737
  %1755 = fadd fast float %1754, %1748
  %1756 = fadd fast float %1755, %1752
  %1757 = fmul fast float %1706, 0x3FD20DD760000000
  %1758 = fmul fast float %1722, %1704
  %1759 = fmul fast float %1727, %1700
  %1760 = fmul fast float %1720, %1703
  %1761 = fmul fast float %1721, %1705
  %1762 = fmul fast float %1718, %1699
  %1763 = fmul fast float %1762, %1720
  %1764 = fmul fast float %1763, %1731
  %1765 = fmul fast float %1718, %1701
  %1766 = fmul fast float %1765, %1721
  %1767 = fmul fast float %1766, %1731
  %1768 = fmul fast float %1698, 0x3FE17B1420000000
  %1769 = fmul fast float %1768, %1740
  %1770 = fmul fast float %1702, 0x3FF17B1420000000
  %1771 = fmul fast float %1770, %1721
  %1772 = fmul fast float %1771, %1720
  %1773 = fadd fast float %1769, %1772
  %1774 = fadd fast float %1773, %1759
  %1775 = fmul fast float %1774, %1718
  %1776 = fsub fast float %1761, %1758
  %1777 = fadd fast float %1776, %1760
  %1778 = fmul fast float %1777, 0x3FDF454380000000
  %1779 = fmul fast float %1778, %1717
  %1780 = fsub fast float %1757, %1764
  %1781 = fsub fast float %1780, %1767
  %1782 = fadd fast float %1781, %1775
  %1783 = fadd fast float %1782, %1779
  %1784 = fmul fast float %1697, 0x3FD20DD760000000
  %1785 = fmul fast float %1722, %1695
  %1786 = fmul fast float %1727, %1691
  %1787 = fmul fast float %1720, %1694
  %1788 = fmul fast float %1721, %1696
  %1789 = fmul fast float %1718, %1690
  %1790 = fmul fast float %1789, %1720
  %1791 = fmul fast float %1790, %1731
  %1792 = fmul fast float %1718, %1692
  %1793 = fmul fast float %1792, %1721
  %1794 = fmul fast float %1793, %1731
  %1795 = fmul fast float %1689, 0x3FE17B1420000000
  %1796 = fmul fast float %1795, %1740
  %1797 = fmul fast float %1693, 0x3FF17B1420000000
  %1798 = fmul fast float %1797, %1721
  %1799 = fmul fast float %1798, %1720
  %1800 = fadd fast float %1796, %1799
  %1801 = fadd fast float %1800, %1786
  %1802 = fmul fast float %1801, %1718
  %1803 = fsub fast float %1788, %1785
  %1804 = fadd fast float %1803, %1787
  %1805 = fmul fast float %1804, 0x3FDF454380000000
  %1806 = fmul fast float %1805, %1717
  %1807 = fsub fast float %1784, %1791
  %1808 = fsub fast float %1807, %1794
  %1809 = fadd fast float %1808, %1802
  %1810 = fadd fast float %1809, %1806
  %1811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1812 = extractvalue %dx.types.CBufRet.f32 %1811, 3
  %1813 = extractvalue %dx.types.CBufRet.f32 %865, 0
  %1814 = fmul fast float %1813, %1812
  %1815 = fmul fast float %1814, %1756
  %1816 = fmul fast float %1814, %1783
  %1817 = fmul fast float %1814, %1810
  %1818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1819 = extractvalue %dx.types.CBufRet.f32 %1818, 3
  %1820 = fcmp fast une float %1819, 0.000000e+00
  %1821 = extractvalue %dx.types.CBufRet.f32 %1818, 0
  %1822 = extractvalue %dx.types.CBufRet.f32 %1818, 1
  %1823 = extractvalue %dx.types.CBufRet.f32 %1818, 2
  br i1 %1820, label %1824, label %1846, !dx.controlflow.hints !77

; <label>:1824                                    ; preds = %1688
  %1825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1826 = extractvalue %dx.types.CBufRet.f32 %1825, 0
  %1827 = extractvalue %dx.types.CBufRet.f32 %1825, 1
  %1828 = extractvalue %dx.types.CBufRet.f32 %1825, 2
  %1829 = call float @dx.op.dot3.f32(i32 55, float %1821, float %1822, float %1823, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %1830 = fcmp fast ogt float %875, 0.000000e+00
  %1831 = select i1 %1830, float 1.000000e+00, float -1.000000e+00
  %1832 = fmul fast float %1831, 5.000000e-01
  %1833 = fmul fast float %1832, %1829
  %1834 = fmul fast float %1831, %875
  %1835 = fadd fast float %1833, 4.921875e-01
  %1836 = fadd fast float %1834, -3.125000e-02
  %1837 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %24, float %1835, float 0x3FB25F3060000000, float %1836, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1838 = extractvalue %dx.types.ResRet.f32 %1837, 0
  %1839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1840 = extractvalue %dx.types.CBufRet.f32 %1839, 0
  %1841 = fmul fast float %1838, 0x400921FB60000000
  %1842 = fmul fast float %1841, %1840
  %1843 = fmul fast float %1842, %1826
  %1844 = fmul fast float %1842, %1827
  %1845 = fmul fast float %1842, %1828
  br label %1846

; <label>:1846                                    ; preds = %1824, %1688
  %1847 = phi float [ %1843, %1824 ], [ 0.000000e+00, %1688 ]
  %1848 = phi float [ %1844, %1824 ], [ 0.000000e+00, %1688 ]
  %1849 = phi float [ %1845, %1824 ], [ 0.000000e+00, %1688 ]
  %1850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1851 = extractvalue %dx.types.CBufRet.f32 %1850, 0
  %1852 = fmul fast float %1851, %1821
  %1853 = fmul fast float %1851, %1822
  %1854 = fmul fast float %1851, %1823
  %1855 = fadd fast float %1852, %276
  %1856 = fadd fast float %1853, %277
  %1857 = fadd fast float %1854, %278
  br i1 %303, label %1907, label %1858, !dx.controlflow.hints !51

; <label>:1858                                    ; preds = %1846
  %1859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1860 = extractvalue %dx.types.CBufRet.f32 %1859, 0
  %1861 = extractvalue %dx.types.CBufRet.f32 %1859, 1
  %1862 = extractvalue %dx.types.CBufRet.f32 %1859, 2
  %1863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1864 = extractvalue %dx.types.CBufRet.f32 %1863, 0
  %1865 = extractvalue %dx.types.CBufRet.f32 %1863, 1
  %1866 = extractvalue %dx.types.CBufRet.f32 %1863, 2
  %1867 = fsub fast float %1855, %1864
  %1868 = fsub fast float %1856, %1865
  %1869 = fsub fast float %1857, %1866
  %1870 = fmul fast float %1867, %1860
  %1871 = fmul fast float %1868, %1861
  %1872 = fmul fast float %1869, %1862
  %1873 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %1874 = extractvalue %dx.types.CBufRet.i32 %1873, 3
  %1875 = icmp eq i32 %1874, 0
  br i1 %1875, label %1879, label %1876, !dx.controlflow.hints !52

; <label>:1876                                    ; preds = %1858
  %1877 = call float @dx.op.unary.f32(i32 22, float %1870)  ; Frc(value)
  %1878 = call float @dx.op.unary.f32(i32 22, float %1871)  ; Frc(value)
  br label %1879

; <label>:1879                                    ; preds = %1876, %1858
  %1880 = phi float [ %1877, %1876 ], [ %1870, %1858 ]
  %1881 = phi float [ %1878, %1876 ], [ %1871, %1858 ]
  %1882 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %22, float %1880, float %1881, float %1872, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1883 = extractvalue %dx.types.ResRet.f32 %1882, 0
  %1884 = fmul fast float %1883, 2.000000e+00
  %1885 = fadd fast float %1884, -1.000000e+00
  %1886 = extractvalue %dx.types.CBufRet.f32 %1859, 3
  %1887 = fmul fast float %1885, %1886
  %1888 = fcmp fast olt float %1887, 0.000000e+00
  %1889 = fcmp fast oge float %1872, 0.000000e+00
  %1890 = fcmp fast ole float %1872, 1.000000e+00
  br i1 %1875, label %1893, label %1891, !dx.controlflow.hints !53

; <label>:1891                                    ; preds = %1879
  %1892 = and i1 %1889, %1890
  br label %1903

; <label>:1893                                    ; preds = %1879
  %1894 = fcmp fast oge float %1870, 0.000000e+00
  %1895 = fcmp fast oge float %1871, 0.000000e+00
  %1896 = and i1 %1894, %1895
  %1897 = and i1 %1889, %1896
  %1898 = fcmp fast ole float %1870, 1.000000e+00
  %1899 = fcmp fast ole float %1871, 1.000000e+00
  %1900 = and i1 %1898, %1899
  %1901 = and i1 %1890, %1900
  %1902 = and i1 %1897, %1901
  br label %1903

; <label>:1903                                    ; preds = %1893, %1891
  %1904 = phi i1 [ %1892, %1891 ], [ %1902, %1893 ]
  %1905 = and i1 %1888, %1904
  %1906 = zext i1 %1905 to i32
  br label %1907

; <label>:1907                                    ; preds = %1903, %1846
  %1908 = phi i32 [ %1906, %1903 ], [ 0, %1846 ]
  br i1 %363, label %2063, label %1909, !dx.controlflow.hints !54

; <label>:1909                                    ; preds = %1907
  %1910 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1911 = extractvalue %dx.types.CBufRet.i32 %1910, 1
  %1912 = and i32 %1911, 1
  %1913 = icmp eq i32 %1912, 0
  br i1 %1913, label %1914, label %2058, !dx.controlflow.hints !55

; <label>:1914                                    ; preds = %1909
  %1915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %1916 = extractvalue %dx.types.CBufRet.f32 %1915, 2
  %1917 = extractvalue %dx.types.CBufRet.f32 %1915, 3
  %1918 = fmul fast float %1916, %1855
  %1919 = fmul fast float %1917, %1856
  %1920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %1921 = extractvalue %dx.types.CBufRet.f32 %1920, 0
  %1922 = extractvalue %dx.types.CBufRet.f32 %1920, 1
  %1923 = fadd fast float %1918, %1921
  %1924 = fadd fast float %1919, %1922
  %1925 = call float @dx.op.unary.f32(i32 7, float %1923)  ; Saturate(value)
  %1926 = call float @dx.op.unary.f32(i32 7, float %1924)  ; Saturate(value)
  %1927 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %24, float %1925, float %1926, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1928 = extractvalue %dx.types.ResRet.f32 %1927, 0
  %1929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1930 = extractvalue %dx.types.CBufRet.f32 %1929, 0
  %1931 = fmul fast float %1930, %1928
  %1932 = fsub fast float %1923, %1925
  %1933 = fsub fast float %1924, %1926
  %1934 = extractvalue %dx.types.CBufRet.f32 %1915, 0
  %1935 = extractvalue %dx.types.CBufRet.f32 %1915, 1
  %1936 = fmul fast float %1934, %1932
  %1937 = fmul fast float %1935, %1933
  %1938 = fmul fast float %1936, %1936
  %1939 = fmul fast float %1937, %1937
  %1940 = fadd fast float %1938, %1939
  %1941 = call float @dx.op.unary.f32(i32 24, float %1940)  ; Sqrt(value)
  %1942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1943 = extractvalue %dx.types.CBufRet.f32 %1942, 3
  %1944 = fmul fast float %1943, %1941
  %1945 = call float @dx.op.unary.f32(i32 7, float %1944)  ; Saturate(value)
  %1946 = extractvalue %dx.types.CBufRet.f32 %1942, 2
  %1947 = fsub fast float %1946, %1931
  %1948 = fmul fast float %1947, %1945
  %1949 = extractvalue %dx.types.CBufRet.f32 %1929, 1
  %1950 = fsub fast float %1857, %1931
  %1951 = fsub fast float %1950, %1949
  %1952 = fsub fast float %1951, %1948
  %1953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1954 = extractvalue %dx.types.CBufRet.f32 %1953, 2
  %1955 = fsub fast float %1952, %1954
  %1956 = fcmp fast olt float %1955, 0.000000e+00
  %1957 = extractvalue %dx.types.CBufRet.i32 %1910, 0
  %1958 = icmp eq i32 %1957, 0
  br i1 %1958, label %2009, label %1959

; <label>:1959                                    ; preds = %1914
  br label %1960

; <label>:1960                                    ; preds = %1998, %1959
  %1961 = phi i32 [ %2004, %1998 ], [ 1, %1959 ]
  %1962 = phi i32 [ %2005, %1998 ], [ 0, %1959 ]
  %1963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1964 = extractvalue %dx.types.CBufRet.f32 %1963, 1
  %1965 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1966 = extractvalue %dx.types.CBufRet.i32 %1965, 1
  %1967 = and i32 %1966, 8
  %1968 = icmp eq i32 %1967, 0
  %1969 = fcmp fast ogt float %1964, %1952
  %1970 = or i1 %1969, %1968
  %1971 = add i32 %1962, 171
  %1972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 %1971)  ; CBufferLoadLegacy(handle,regIndex)
  %1973 = extractvalue %dx.types.CBufRet.f32 %1972, 0
  %1974 = extractvalue %dx.types.CBufRet.f32 %1972, 1
  %1975 = extractvalue %dx.types.CBufRet.f32 %1972, 2
  br i1 %1970, label %1976, label %1982, !dx.controlflow.hints !56

; <label>:1976                                    ; preds = %1960
  %1977 = fsub fast float %1973, %1855
  %1978 = fsub fast float %1974, %1856
  %1979 = fmul fast float %1977, %1977
  %1980 = fmul fast float %1978, %1978
  %1981 = fadd fast float %1979, %1980
  br label %1998

; <label>:1982                                    ; preds = %1960
  %1983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1984 = extractvalue %dx.types.CBufRet.f32 %1983, 2
  %1985 = extractvalue %dx.types.CBufRet.f32 %1963, 2
  %1986 = fmul fast float %1985, %1984
  %1987 = fsub fast float %1986, %1964
  %1988 = fdiv fast float %1975, %1987
  %1989 = fsub fast float %1855, %1973
  %1990 = fsub fast float %1856, %1974
  %1991 = fsub fast float %1952, %1964
  %1992 = fmul fast float %1988, %1991
  %1993 = fmul fast float %1989, %1989
  %1994 = fmul fast float %1990, %1990
  %1995 = fadd fast float %1993, %1994
  %1996 = fmul fast float %1992, %1992
  %1997 = fadd fast float %1995, %1996
  br label %1998

; <label>:1998                                    ; preds = %1982, %1976
  %1999 = phi float [ %1981, %1976 ], [ %1997, %1982 ]
  %2000 = call float @dx.op.unary.f32(i32 24, float %1999)  ; Sqrt(value)
  %2001 = fsub float %1975, %2000
  %2002 = fcmp fast olt float %2001, 0.000000e+00
  %2003 = zext i1 %2002 to i32
  %2004 = and i32 %2003, %1961
  %2005 = add i32 %1962, 1
  %2006 = extractvalue %dx.types.CBufRet.i32 %1965, 0
  %2007 = icmp ult i32 %2005, %2006
  br i1 %2007, label %1960, label %2008

; <label>:2008                                    ; preds = %1998
  br label %2009

; <label>:2009                                    ; preds = %2008, %1914
  %2010 = phi i32 [ 1, %1914 ], [ %2004, %2008 ]
  br label %2011

; <label>:2011                                    ; preds = %2011, %2009
  %2012 = phi i32 [ %2048, %2011 ], [ %2010, %2009 ]
  %2013 = phi i32 [ %2049, %2011 ], [ 0, %2009 ]
  %2014 = add nuw nsw i32 %2013, 191
  %2015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 %2014)  ; CBufferLoadLegacy(handle,regIndex)
  %2016 = extractvalue %dx.types.CBufRet.f32 %2015, 0
  %2017 = extractvalue %dx.types.CBufRet.f32 %2015, 1
  %2018 = extractvalue %dx.types.CBufRet.f32 %2015, 2
  %2019 = add nuw nsw i32 %2013, 195
  %2020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 %2019)  ; CBufferLoadLegacy(handle,regIndex)
  %2021 = extractvalue %dx.types.CBufRet.f32 %2020, 0
  %2022 = extractvalue %dx.types.CBufRet.f32 %2020, 1
  %2023 = extractvalue %dx.types.CBufRet.f32 %2020, 2
  %2024 = fsub fast float %1855, %2016
  %2025 = fsub fast float %1856, %2017
  %2026 = fsub fast float %1952, %2018
  %2027 = call float @dx.op.unary.f32(i32 6, float %2024)  ; FAbs(value)
  %2028 = call float @dx.op.unary.f32(i32 6, float %2025)  ; FAbs(value)
  %2029 = call float @dx.op.unary.f32(i32 6, float %2026)  ; FAbs(value)
  %2030 = fsub fast float %2027, %2021
  %2031 = fsub fast float %2028, %2022
  %2032 = fsub fast float %2029, %2023
  %2033 = call float @dx.op.binary.f32(i32 35, float %2030, float 0.000000e+00)  ; FMax(a,b)
  %2034 = call float @dx.op.binary.f32(i32 35, float %2031, float 0.000000e+00)  ; FMax(a,b)
  %2035 = call float @dx.op.binary.f32(i32 35, float %2032, float 0.000000e+00)  ; FMax(a,b)
  %2036 = fmul fast float %2033, %2033
  %2037 = fmul fast float %2034, %2034
  %2038 = fadd fast float %2037, %2036
  %2039 = fmul fast float %2035, %2035
  %2040 = fadd fast float %2038, %2039
  %2041 = call float @dx.op.unary.f32(i32 24, float %2040)  ; Sqrt(value)
  %2042 = call float @dx.op.binary.f32(i32 35, float %2031, float %2032)  ; FMax(a,b)
  %2043 = call float @dx.op.binary.f32(i32 35, float %2030, float %2042)  ; FMax(a,b)
  %2044 = call float @dx.op.binary.f32(i32 36, float %2043, float 0.000000e+00)  ; FMin(a,b)
  %2045 = fadd fast float %2044, %2041
  %2046 = fcmp ogt float %2045, -0.000000e+00
  %2047 = zext i1 %2046 to i32
  %2048 = and i32 %2047, %2012
  %2049 = add nuw nsw i32 %2013, 1
  %2050 = icmp eq i32 %2049, 4
  br i1 %2050, label %2051, label %2011

; <label>:2051                                    ; preds = %2011
  %2052 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2053 = extractvalue %dx.types.CBufRet.i32 %2052, 1
  %2054 = lshr i32 %2053, 1
  %2055 = xor i32 %2054, %2048
  %2056 = zext i1 %1956 to i32
  %2057 = and i32 %2055, %2056
  br label %2058

; <label>:2058                                    ; preds = %2051, %1909
  %2059 = phi i32 [ %267, %1909 ], [ %2057, %2051 ]
  %2060 = phi float [ %1857, %1909 ], [ %1952, %2051 ]
  %2061 = icmp ne i32 %2059, 0
  %2062 = zext i1 %2061 to i32
  br label %2063

; <label>:2063                                    ; preds = %2058, %1907
  %2064 = phi i32 [ %2059, %2058 ], [ %267, %1907 ]
  %2065 = phi float [ %2060, %2058 ], [ %268, %1907 ]
  %2066 = phi i32 [ %2062, %2058 ], [ 0, %1907 ]
  br i1 %288, label %2115, label %2067, !dx.controlflow.hints !57

; <label>:2067                                    ; preds = %2063
  %2068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %2069 = extractvalue %dx.types.CBufRet.f32 %2068, 0
  %2070 = fsub fast float -0.000000e+00, %1855
  %2071 = fsub fast float -0.000000e+00, %1856
  %2072 = fsub fast float %2069, %1857
  %2073 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2070, float %2071, float %2072)  ; Dot3(ax,ay,az,bx,by,bz)
  %2074 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1821, float %1822, float %1823)  ; Dot3(ax,ay,az,bx,by,bz)
  %2075 = fdiv fast float 1.000000e+00, %2074
  %2076 = fmul fast float %2075, %2073
  %2077 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2076)  ; FMax(a,b)
  %2078 = fcmp fast olt float %1823, 0.000000e+00
  %2079 = call float @dx.op.binary.f32(i32 36, float %1851, float %2077)  ; FMin(a,b)
  br i1 %2078, label %2081, label %2080, !dx.controlflow.hints !58

; <label>:2080                                    ; preds = %2067
  br label %2081

; <label>:2081                                    ; preds = %2080, %2067
  %2082 = phi float [ 0.000000e+00, %2080 ], [ %2079, %2067 ]
  %2083 = phi float [ %2079, %2080 ], [ %1851, %2067 ]
  %2084 = phi float [ %2079, %2080 ], [ 0.000000e+00, %2067 ]
  %2085 = phi float [ %1851, %2080 ], [ %2079, %2067 ]
  %2086 = fsub fast float %2083, %2082
  %2087 = extractvalue %dx.types.CBufRet.f32 %2068, 1
  %2088 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %2087)  ; FMin(a,b)
  %2089 = fsub fast float %1857, %2069
  %2090 = fmul fast float %2088, 0x3FF7154760000000
  %2091 = fmul fast float %2090, %2089
  %2092 = call float @dx.op.unary.f32(i32 21, float %2091)  ; Exp(value)
  %2093 = fmul fast float %1823, 0x3FF7154760000000
  %2094 = fmul fast float %2093, %2085
  %2095 = fmul fast float %2094, %2088
  %2096 = call float @dx.op.unary.f32(i32 21, float %2095)  ; Exp(value)
  %2097 = fmul fast float %2093, %2084
  %2098 = fmul fast float %2097, %2088
  %2099 = call float @dx.op.unary.f32(i32 21, float %2098)  ; Exp(value)
  %2100 = fsub fast float %2096, %2099
  %2101 = fmul fast float %2100, %2092
  %2102 = fmul fast float %2088, %1823
  %2103 = fdiv fast float %2101, %2102
  %2104 = fadd fast float %2086, %2103
  %2105 = call float @dx.op.unary.f32(i32 6, float %1823)  ; FAbs(value)
  %2106 = fcmp fast olt float %2105, 0x3F0FFB4800000000
  %2107 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2089)  ; FMax(a,b)
  %2108 = fmul fast float %2107, 0x3FF7154760000000
  %2109 = fmul fast float %2108, %2087
  %2110 = call float @dx.op.unary.f32(i32 21, float %2109)  ; Exp(value)
  %2111 = fmul fast float %2110, %1851
  %2112 = select i1 %2106, float %2111, float %2104
  %2113 = extractvalue %dx.types.CBufRet.f32 %1716, 1
  %2114 = fmul fast float %2112, %2113
  br label %2115

; <label>:2115                                    ; preds = %2081, %2063
  %2116 = phi float [ %2114, %2081 ], [ 0.000000e+00, %2063 ]
  %2117 = icmp eq i32 %1908, 0
  br i1 %2117, label %2298, label %2118, !dx.controlflow.hints !59

; <label>:2118                                    ; preds = %2115
  %2119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2120 = extractvalue %dx.types.CBufRet.f32 %2119, 3
  %2121 = fmul fast float %2120, %1851
  %2122 = fcmp fast oeq float %2121, 0.000000e+00
  br i1 %2122, label %2137, label %2123, !dx.controlflow.hints !60

; <label>:2123                                    ; preds = %2118
  %2124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %2125 = extractvalue %dx.types.CBufRet.f32 %2124, 3
  %2126 = fmul fast float %2125, %2121
  %2127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %2128 = extractvalue %dx.types.CBufRet.f32 %2127, 0
  %2129 = extractvalue %dx.types.CBufRet.f32 %2127, 1
  %2130 = extractvalue %dx.types.CBufRet.f32 %2127, 2
  %2131 = fmul fast float %2128, %2126
  %2132 = fmul fast float %2129, %2126
  %2133 = fmul fast float %2130, %2126
  %2134 = call float @dx.op.unary.f32(i32 23, float %2131)  ; Log(value)
  %2135 = call float @dx.op.unary.f32(i32 23, float %2132)  ; Log(value)
  %2136 = call float @dx.op.unary.f32(i32 23, float %2133)  ; Log(value)
  br label %2137

; <label>:2137                                    ; preds = %2123, %2118
  %2138 = phi float [ %2134, %2123 ], [ 0.000000e+00, %2118 ]
  %2139 = phi float [ %2135, %2123 ], [ 0.000000e+00, %2118 ]
  %2140 = phi float [ %2136, %2123 ], [ 0.000000e+00, %2118 ]
  %2141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %2142 = extractvalue %dx.types.CBufRet.f32 %2141, 0
  %2143 = extractvalue %dx.types.CBufRet.f32 %2141, 1
  %2144 = extractvalue %dx.types.CBufRet.f32 %2141, 2
  %2145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %2146 = extractvalue %dx.types.CBufRet.f32 %2145, 0
  %2147 = extractvalue %dx.types.CBufRet.f32 %2145, 1
  %2148 = extractvalue %dx.types.CBufRet.f32 %2145, 2
  %2149 = fsub fast float %1855, %2146
  %2150 = fsub fast float %1856, %2147
  %2151 = fsub fast float %1857, %2148
  %2152 = fmul fast float %2149, %2142
  %2153 = fmul fast float %2150, %2143
  %2154 = fmul fast float %2151, %2144
  %2155 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %2156 = extractvalue %dx.types.CBufRet.i32 %2155, 0
  %2157 = extractvalue %dx.types.CBufRet.i32 %2155, 1
  %2158 = uitofp i32 %2156 to float
  %2159 = uitofp i32 %2157 to float
  %2160 = fmul fast float %2152, %2158
  %2161 = fmul fast float %2153, %2159
  %2162 = fadd fast float %2160, 5.000000e-01
  %2163 = fadd fast float %2161, 5.000000e-01
  %2164 = call float @dx.op.unary.f32(i32 22, float %2162)  ; Frc(value)
  %2165 = call float @dx.op.unary.f32(i32 22, float %2163)  ; Frc(value)
  %2166 = call float @dx.op.unary.f32(i32 27, float %2162)  ; Round_ni(value)
  %2167 = call float @dx.op.unary.f32(i32 27, float %2163)  ; Round_ni(value)
  %2168 = fadd fast float %2166, 1.000000e+00
  %2169 = fadd fast float %2167, 1.000000e+00
  %2170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %2171 = extractvalue %dx.types.CBufRet.f32 %2170, 0
  %2172 = extractvalue %dx.types.CBufRet.f32 %2170, 1
  %2173 = fmul fast float %2171, %2168
  %2174 = fmul fast float %2172, %2169
  %2175 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %23, float %2173, float %2174, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2176 = extractvalue %dx.types.ResRet.f32 %2175, 0
  %2177 = extractvalue %dx.types.ResRet.f32 %2175, 1
  %2178 = extractvalue %dx.types.ResRet.f32 %2175, 2
  %2179 = extractvalue %dx.types.ResRet.f32 %2175, 3
  %2180 = extractvalue %dx.types.CBufRet.i32 %2155, 2
  %2181 = extractvalue %dx.types.CBufRet.f32 %2170, 2
  %2182 = uitofp i32 %2180 to float
  %2183 = fadd fast float %2182, -1.000000e+00
  %2184 = fmul fast float %2183, %2176
  %2185 = fmul fast float %2183, %2177
  %2186 = fmul fast float %2183, %2178
  %2187 = fmul fast float %2183, %2179
  %2188 = fadd fast float %2184, 5.000000e-01
  %2189 = fadd fast float %2185, 5.000000e-01
  %2190 = fadd fast float %2186, 5.000000e-01
  %2191 = fadd fast float %2187, 5.000000e-01
  %2192 = fptoui float %2188 to i32
  %2193 = fptoui float %2189 to i32
  %2194 = fptoui float %2190 to i32
  %2195 = fptoui float %2191 to i32
  %2196 = uitofp i32 %2192 to float
  %2197 = uitofp i32 %2193 to float
  %2198 = uitofp i32 %2194 to float
  %2199 = uitofp i32 %2195 to float
  %2200 = fadd fast float %2196, 5.000000e-01
  %2201 = fadd fast float %2197, 5.000000e-01
  %2202 = fadd fast float %2198, 5.000000e-01
  %2203 = fadd fast float %2199, 5.000000e-01
  %2204 = fmul fast float %2200, %2181
  %2205 = fmul fast float %2201, %2181
  %2206 = fmul fast float %2202, %2181
  %2207 = fmul fast float %2203, %2181
  %2208 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %24, float %2204, float %2154, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2209 = extractvalue %dx.types.ResRet.f32 %2208, 0
  %2210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %24, float %2205, float %2154, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2211 = extractvalue %dx.types.ResRet.f32 %2210, 0
  %2212 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %24, float %2206, float %2154, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2213 = extractvalue %dx.types.ResRet.f32 %2212, 0
  %2214 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %24, float %2207, float %2154, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2215 = extractvalue %dx.types.ResRet.f32 %2214, 0
  %2216 = fsub fast float %2213, %2215
  %2217 = fmul fast float %2216, %2164
  %2218 = fadd fast float %2217, %2215
  %2219 = fsub fast float %2211, %2209
  %2220 = fmul fast float %2219, %2164
  %2221 = fadd fast float %2220, %2209
  %2222 = fsub fast float %2221, %2218
  %2223 = fmul fast float %2222, %2165
  %2224 = fadd fast float %2223, %2218
  %2225 = fcmp fast ogt float %2224, 0.000000e+00
  br i1 %2225, label %2226, label %2294, !dx.controlflow.hints !61

; <label>:2226                                    ; preds = %2137
  %2227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %2228 = extractvalue %dx.types.CBufRet.f32 %2227, 0
  %2229 = extractvalue %dx.types.CBufRet.f32 %2227, 1
  %2230 = extractvalue %dx.types.CBufRet.f32 %2227, 2
  %2231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %2232 = extractvalue %dx.types.CBufRet.f32 %2231, 0
  %2233 = extractvalue %dx.types.CBufRet.f32 %2231, 1
  %2234 = extractvalue %dx.types.CBufRet.f32 %2231, 2
  %2235 = fmul fast float %2150, %2142
  %2236 = fmul fast float %2151, %2142
  %2237 = fadd fast float %2152, %2232
  %2238 = fadd fast float %2235, %2233
  %2239 = fadd fast float %2236, %2234
  %2240 = fmul fast float %2237, %2228
  %2241 = fmul fast float %2238, %2228
  %2242 = fmul fast float %2239, %2228
  %2243 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %21, float %2240, float %2241, float %2242, float undef, i32 0, i32 0, i32 0, float %2138)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2244 = extractvalue %dx.types.ResRet.f32 %2243, 0
  %2245 = fmul fast float %2237, %2229
  %2246 = fmul fast float %2238, %2229
  %2247 = fmul fast float %2239, %2229
  %2248 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %21, float %2245, float %2246, float %2247, float undef, i32 0, i32 0, i32 0, float %2139)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2249 = extractvalue %dx.types.ResRet.f32 %2248, 1
  %2250 = fmul fast float %2237, %2230
  %2251 = fmul fast float %2238, %2230
  %2252 = fmul fast float %2239, %2230
  %2253 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %21, float %2250, float %2251, float %2252, float undef, i32 0, i32 0, i32 0, float %2140)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2254 = extractvalue %dx.types.ResRet.f32 %2253, 2
  %2255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %2256 = extractvalue %dx.types.CBufRet.f32 %2255, 1
  %2257 = fmul fast float %2249, %2244
  %2258 = fmul fast float %2257, %2254
  %2259 = call float @dx.op.unary.f32(i32 23, float %2258)  ; Log(value)
  %2260 = fmul fast float %2259, %2256
  %2261 = call float @dx.op.unary.f32(i32 21, float %2260)  ; Exp(value)
  %2262 = extractvalue %dx.types.CBufRet.f32 %2255, 2
  %2263 = fmul fast float %2224, %2224
  %2264 = fmul fast float %2263, %2261
  %2265 = fmul fast float %2264, %2262
  %2266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %2267 = extractvalue %dx.types.CBufRet.f32 %2266, 3
  %2268 = fmul fast float %2267, %2265
  %2269 = bitcast float %2268 to i32
  %2270 = sitofp i32 %2269 to float
  %2271 = fptosi float %2270 to i32
  %2272 = bitcast i32 %2271 to float
  %2273 = fsub fast float 1.000000e+00, %2265
  %2274 = bitcast float %2273 to i32
  %2275 = sitofp i32 %2274 to float
  %2276 = fptosi float %2275 to i32
  %2277 = bitcast i32 %2276 to float
  %2278 = fadd fast float %2272, %2277
  %2279 = bitcast float %2278 to i32
  %2280 = sub nsw i32 2129859010, %2279
  %2281 = bitcast i32 %2280 to float
  %2282 = fmul fast float %2281, %2272
  %2283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2284 = extractvalue %dx.types.CBufRet.f32 %2283, 2
  %2285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %2286 = extractvalue %dx.types.CBufRet.f32 %2285, 0
  %2287 = fmul fast float %2282, %2286
  %2288 = fadd fast float %2287, 1.000000e+00
  %2289 = bitcast float %2288 to i32
  %2290 = sub nsw i32 2129859010, %2289
  %2291 = bitcast i32 %2290 to float
  %2292 = fmul fast float %2282, %2284
  %2293 = fmul fast float %2292, %2291
  br label %2294

; <label>:2294                                    ; preds = %2226, %2137
  %2295 = phi float [ %2293, %2226 ], [ %2224, %2137 ]
  %2296 = fmul fast float %2295, %1851
  %2297 = fadd fast float %2296, %2116
  br label %2298

; <label>:2298                                    ; preds = %2294, %2115
  %2299 = phi float [ %2297, %2294 ], [ %2116, %2115 ]
  %2300 = icmp eq i32 %2066, 0
  br i1 %2300, label %2332, label %2301, !dx.controlflow.hints !62

; <label>:2301                                    ; preds = %2298
  %2302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %2303 = extractvalue %dx.types.CBufRet.f32 %2302, 1
  %2304 = fsub fast float %1851, %2303
  %2305 = extractvalue %dx.types.CBufRet.f32 %2302, 3
  %2306 = fmul fast float %2304, %2305
  %2307 = call float @dx.op.unary.f32(i32 7, float %2306)  ; Saturate(value)
  %2308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %2309 = extractvalue %dx.types.CBufRet.f32 %2308, 3
  %2310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2311 = extractvalue %dx.types.CBufRet.f32 %2310, 2
  %2312 = fsub fast float %2311, %2065
  %2313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %2314 = extractvalue %dx.types.CBufRet.f32 %2313, 3
  %2315 = fmul fast float %2312, %2314
  %2316 = call float @dx.op.unary.f32(i32 7, float %2315)  ; Saturate(value)
  %2317 = fmul fast float %2316, %2309
  %2318 = extractvalue %dx.types.CBufRet.f32 %2313, 0
  %2319 = fsub fast float %1851, %2318
  %2320 = extractvalue %dx.types.CBufRet.f32 %2313, 1
  %2321 = fmul fast float %2319, %2320
  %2322 = call float @dx.op.unary.f32(i32 7, float %2321)  ; Saturate(value)
  %2323 = fsub fast float 1.000000e+00, %2307
  %2324 = fmul fast float %2322, %2323
  %2325 = fadd fast float %2324, %2307
  %2326 = extractvalue %dx.types.CBufRet.f32 %2302, 0
  %2327 = fsub fast float %2317, %2326
  %2328 = fmul fast float %2327, %2325
  %2329 = fadd fast float %2328, %2326
  %2330 = fmul fast float %2329, %1851
  %2331 = fadd fast float %2330, %2299
  br label %2332

; <label>:2332                                    ; preds = %2301, %2298
  %2333 = phi float [ %2331, %2301 ], [ %2299, %2298 ]
  %2334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %2335 = extractvalue %dx.types.CBufRet.f32 %2334, 3
  %2336 = fmul fast float %2333, 0xBFF7154760000000
  %2337 = fmul fast float %2336, %2335
  %2338 = call float @dx.op.unary.f32(i32 21, float %2337)  ; Exp(value)
  %2339 = call float @dx.op.unary.f32(i32 7, float %2338)  ; Saturate(value)
  %2340 = fmul fast float %2339, %1847
  %2341 = fmul fast float %2339, %1848
  %2342 = fmul fast float %2339, %1849
  %2343 = fadd fast float %2340, %1815
  %2344 = fadd fast float %2341, %1816
  %2345 = fadd fast float %2342, %1817
  %2346 = fsub fast float 1.000000e+00, %884
  %2347 = fmul fast float %876, %272
  %2348 = fmul fast float %2347, %2346
  %2349 = fmul fast float %2348, %2343
  %2350 = fmul fast float %877, %272
  %2351 = fmul fast float %2350, %2346
  %2352 = fmul fast float %2351, %2344
  %2353 = fmul fast float %878, %272
  %2354 = fmul fast float %2353, %2346
  %2355 = fmul fast float %2354, %2345
  %2356 = fadd fast float %2349, %273
  %2357 = fadd fast float %2352, %274
  %2358 = fadd fast float %2355, %275
  %2359 = fdiv fast float %860, %551
  %2360 = fadd fast float %551, %279
  %2361 = fmul fast float %279, %279
  %2362 = fmul fast float %2360, %2360
  %2363 = fsub fast float %2361, %2362
  %2364 = fmul fast float %2363, -5.000000e-01
  %2365 = fmul fast float %2364, %2359
  %2366 = fadd fast float %2365, %271
  %2367 = fadd fast float %860, %280
  %2368 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2369 = extractvalue %dx.types.CBufRet.i32 %2368, 0
  %2370 = icmp eq i32 %2369, 0
  br i1 %2370, label %2397, label %2371, !dx.controlflow.hints !78

; <label>:2371                                    ; preds = %2332
  %2372 = icmp ne i32 %285, 0
  %2373 = zext i1 %2372 to i32
  %2374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2375 = extractvalue %dx.types.CBufRet.f32 %2374, 2
  %2376 = extractvalue %dx.types.CBufRet.f32 %2374, 0
  %2377 = fsub fast float %2360, %2376
  %2378 = fmul fast float %2377, %2375
  %2379 = call float @dx.op.unary.f32(i32 7, float %2378)  ; Saturate(value)
  %2380 = fadd fast float %2379, -5.000000e-01
  %2381 = fmul fast float %2380, 2.000000e+00
  %2382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2383 = extractvalue %dx.types.CBufRet.f32 %2382, 2
  %2384 = fcmp fast olt float %2381, %2383
  br i1 %2384, label %2385, label %2397, !dx.controlflow.hints !79

; <label>:2385                                    ; preds = %2371
  %2386 = fmul fast float %2381, %2381
  %2387 = fmul fast float %2346, %272
  %2388 = fmul fast float %2381, %2387
  %2389 = fmul fast float %2386, %2387
  %2390 = fmul fast float %2388, %2386
  %2391 = fmul fast float %2386, %2386
  %2392 = fmul fast float %2391, %2387
  %2393 = fadd fast float %2388, %281
  %2394 = fadd fast float %2389, %282
  %2395 = fadd fast float %2390, %283
  %2396 = fadd fast float %2392, %284
  br label %2397

; <label>:2397                                    ; preds = %2385, %2371, %2332
  %2398 = phi float [ %281, %2332 ], [ %2393, %2385 ], [ %281, %2371 ]
  %2399 = phi float [ %282, %2332 ], [ %2394, %2385 ], [ %282, %2371 ]
  %2400 = phi float [ %283, %2332 ], [ %2395, %2385 ], [ %283, %2371 ]
  %2401 = phi float [ %284, %2332 ], [ %2396, %2385 ], [ %284, %2371 ]
  %2402 = phi i32 [ %285, %2332 ], [ 1, %2385 ], [ %2373, %2371 ]
  %2403 = fmul fast float %884, %272
  br label %2404

; <label>:2404                                    ; preds = %2397, %879
  %2405 = phi float [ %880, %879 ], [ %2360, %2397 ]
  %2406 = phi i32 [ %267, %879 ], [ %2064, %2397 ]
  %2407 = phi float [ %268, %879 ], [ %2065, %2397 ]
  %2408 = phi float [ %271, %879 ], [ %2366, %2397 ]
  %2409 = phi float [ %272, %879 ], [ %2403, %2397 ]
  %2410 = phi float [ %273, %879 ], [ %2356, %2397 ]
  %2411 = phi float [ %274, %879 ], [ %2357, %2397 ]
  %2412 = phi float [ %275, %879 ], [ %2358, %2397 ]
  %2413 = phi float [ %280, %879 ], [ %2367, %2397 ]
  %2414 = phi float [ %281, %879 ], [ %2398, %2397 ]
  %2415 = phi float [ %282, %879 ], [ %2399, %2397 ]
  %2416 = phi float [ %283, %879 ], [ %2400, %2397 ]
  %2417 = phi float [ %284, %879 ], [ %2401, %2397 ]
  %2418 = phi i32 [ %285, %879 ], [ %2402, %2397 ]
  %2419 = fmul fast float %551, %115
  %2420 = fmul fast float %551, %116
  %2421 = fmul fast float %551, %117
  %2422 = fadd fast float %2419, %276
  %2423 = fadd fast float %2420, %277
  %2424 = fadd fast float %2421, %278
  %2425 = fcmp fast olt float %2405, %247
  %2426 = extractvalue %dx.types.CBufRet.f32 %865, 2
  %2427 = fcmp fast olt float %2426, %2409
  %2428 = and i1 %2425, %2427
  br i1 %2428, label %266, label %2429

; <label>:2429                                    ; preds = %2404
  br label %2430

; <label>:2430                                    ; preds = %2429, %243
  %2431 = phi float [ 0.000000e+00, %243 ], [ %2408, %2429 ]
  %2432 = phi float [ 1.000000e+00, %243 ], [ %2409, %2429 ]
  %2433 = phi float [ 0.000000e+00, %243 ], [ %2410, %2429 ]
  %2434 = phi float [ 0.000000e+00, %243 ], [ %2411, %2429 ]
  %2435 = phi float [ 0.000000e+00, %243 ], [ %2412, %2429 ]
  %2436 = phi float [ 0.000000e+00, %243 ], [ %2413, %2429 ]
  %2437 = phi float [ 0.000000e+00, %243 ], [ %2414, %2429 ]
  %2438 = phi float [ 0.000000e+00, %243 ], [ %2415, %2429 ]
  %2439 = phi float [ 0.000000e+00, %243 ], [ %2416, %2429 ]
  %2440 = phi float [ 0.000000e+00, %243 ], [ %2417, %2429 ]
  %2441 = phi i32 [ 0, %243 ], [ %2418, %2429 ]
  %2442 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2443 = extractvalue %dx.types.CBufRet.i32 %2442, 0
  %2444 = icmp eq i32 %2443, 0
  br i1 %2444, label %2486, label %2445, !dx.controlflow.hints !80

; <label>:2445                                    ; preds = %2430
  %2446 = icmp eq i32 %2441, 0
  br i1 %2446, label %2485, label %2447, !dx.controlflow.hints !81

; <label>:2447                                    ; preds = %2445
  %2448 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2449 = extractvalue %dx.types.CBufRet.i32 %2448, 2
  %2450 = icmp eq i32 %2449, 0
  br i1 %2450, label %2457, label %2451, !dx.controlflow.hints !82

; <label>:2451                                    ; preds = %2447
  %2452 = fsub fast float 1.000000e+00, %2432
  %2453 = fdiv fast float %2437, %2452
  %2454 = fdiv fast float %2438, %2452
  %2455 = fdiv fast float %2439, %2452
  %2456 = fdiv fast float %2440, %2452
  br label %2462

; <label>:2457                                    ; preds = %2447
  %2458 = fadd fast float %2437, %2432
  %2459 = fadd fast float %2438, %2432
  %2460 = fadd fast float %2439, %2432
  %2461 = fadd fast float %2440, %2432
  br label %2462

; <label>:2462                                    ; preds = %2457, %2451
  %2463 = phi float [ %2453, %2451 ], [ %2458, %2457 ]
  %2464 = phi float [ %2454, %2451 ], [ %2459, %2457 ]
  %2465 = phi float [ %2455, %2451 ], [ %2460, %2457 ]
  %2466 = phi float [ %2456, %2451 ], [ %2461, %2457 ]
  %2467 = call float @dx.op.binary.f32(i32 35, float %2463, float -1.000000e+00)  ; FMax(a,b)
  %2468 = call float @dx.op.binary.f32(i32 35, float %2464, float -1.000000e+00)  ; FMax(a,b)
  %2469 = call float @dx.op.binary.f32(i32 35, float %2465, float -1.000000e+00)  ; FMax(a,b)
  %2470 = call float @dx.op.binary.f32(i32 35, float %2466, float -1.000000e+00)  ; FMax(a,b)
  %2471 = call float @dx.op.binary.f32(i32 36, float %2467, float 1.000000e+00)  ; FMin(a,b)
  %2472 = call float @dx.op.binary.f32(i32 36, float %2468, float 1.000000e+00)  ; FMin(a,b)
  %2473 = call float @dx.op.binary.f32(i32 36, float %2469, float 1.000000e+00)  ; FMin(a,b)
  %2474 = call float @dx.op.binary.f32(i32 36, float %2470, float 1.000000e+00)  ; FMin(a,b)
  %2475 = fmul fast float %2471, 1.500000e+00
  %2476 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %2473, float %2475)  ; FMad(a,b,c)
  %2477 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %2472, float 0.000000e+00)  ; FMad(a,b,c)
  %2478 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %2474, float %2477)  ; FMad(a,b,c)
  %2479 = fmul fast float %2471, 0x3FEBB67AE0000000
  %2480 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %2473, float %2479)  ; FMad(a,b,c)
  %2481 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2472, float 0.000000e+00)  ; FMad(a,b,c)
  %2482 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2474, float %2481)  ; FMad(a,b,c)
  %2483 = fadd fast float %2476, 5.000000e-01
  %2484 = fadd fast float %2480, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %27, i32 %28, i32 0, float %2483, float %2478, float %2484, float %2482, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2486

; <label>:2485                                    ; preds = %2445
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %27, i32 %28, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2486

; <label>:2486                                    ; preds = %2485, %2462, %2430
  %2487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2488 = extractvalue %dx.types.CBufRet.f32 %2487, 2
  %2489 = fsub fast float %2432, %2488
  %2490 = fdiv fast float %2489, %2488
  %2491 = call float @dx.op.unary.f32(i32 7, float %2490)  ; Saturate(value)
  %2492 = fmul fast float %2491, 2.000000e+00
  %2493 = fsub fast float 3.000000e+00, %2492
  %2494 = fmul fast float %2491, %2491
  %2495 = fmul fast float %2494, %2432
  %2496 = fmul fast float %2495, %2493
  %2497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %2498 = extractvalue %dx.types.CBufRet.f32 %2497, 0
  %2499 = extractvalue %dx.types.CBufRet.f32 %2497, 1
  %2500 = extractvalue %dx.types.CBufRet.f32 %2497, 2
  %2501 = call float @dx.op.dot3.f32(i32 55, float %115, float %116, float %117, float %2498, float %2499, float %2500)  ; Dot3(ax,ay,az,bx,by,bz)
  %2502 = fmul fast float %2501, %2431
  %2503 = fcmp fast ogt float %2436, 0.000000e+00
  %2504 = fdiv fast float 1.000000e+00, %2436
  %2505 = fmul fast float %2502, %2504
  %2506 = select i1 %2503, float %2505, float %126
  %2507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2508 = extractvalue %dx.types.CBufRet.f32 %2507, 0
  %2509 = extractvalue %dx.types.CBufRet.f32 %2507, 1
  %2510 = extractvalue %dx.types.CBufRet.f32 %2507, 2
  %2511 = fmul fast float %2508, %79
  %2512 = fmul fast float %2509, %79
  %2513 = fmul fast float %2510, %79
  %2514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2515 = extractvalue %dx.types.CBufRet.f32 %2514, 0
  %2516 = extractvalue %dx.types.CBufRet.f32 %2514, 1
  %2517 = extractvalue %dx.types.CBufRet.f32 %2514, 2
  %2518 = fmul fast float %2515, %80
  %2519 = fmul fast float %2516, %80
  %2520 = fmul fast float %2517, %80
  %2521 = fadd fast float %2518, %2511
  %2522 = fadd fast float %2519, %2512
  %2523 = fadd fast float %2520, %2513
  %2524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2525 = extractvalue %dx.types.CBufRet.f32 %2524, 0
  %2526 = extractvalue %dx.types.CBufRet.f32 %2524, 1
  %2527 = extractvalue %dx.types.CBufRet.f32 %2524, 2
  %2528 = fadd fast float %2521, %2525
  %2529 = fadd fast float %2522, %2526
  %2530 = fadd fast float %2523, %2527
  %2531 = fmul fast float %2528, %2506
  %2532 = fmul fast float %2529, %2506
  %2533 = fmul fast float %2530, %2506
  %2534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %2535 = extractvalue %dx.types.CBufRet.f32 %2534, 0
  %2536 = extractvalue %dx.types.CBufRet.f32 %2534, 1
  %2537 = extractvalue %dx.types.CBufRet.f32 %2534, 2
  %2538 = extractvalue %dx.types.CBufRet.f32 %2534, 3
  %2539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %2540 = extractvalue %dx.types.CBufRet.f32 %2539, 0
  %2541 = extractvalue %dx.types.CBufRet.f32 %2539, 1
  %2542 = extractvalue %dx.types.CBufRet.f32 %2539, 2
  %2543 = extractvalue %dx.types.CBufRet.f32 %2539, 3
  %2544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %2545 = extractvalue %dx.types.CBufRet.f32 %2544, 0
  %2546 = extractvalue %dx.types.CBufRet.f32 %2544, 1
  %2547 = extractvalue %dx.types.CBufRet.f32 %2544, 2
  %2548 = extractvalue %dx.types.CBufRet.f32 %2544, 3
  %2549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %2550 = extractvalue %dx.types.CBufRet.f32 %2549, 0
  %2551 = extractvalue %dx.types.CBufRet.f32 %2549, 1
  %2552 = extractvalue %dx.types.CBufRet.f32 %2549, 2
  %2553 = extractvalue %dx.types.CBufRet.f32 %2549, 3
  %2554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %2555 = extractvalue %dx.types.CBufRet.f32 %2554, 3
  %2556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %2557 = extractvalue %dx.types.CBufRet.f32 %2556, 3
  %2558 = extractvalue %dx.types.CBufRet.f32 %2556, 0
  %2559 = extractvalue %dx.types.CBufRet.f32 %2556, 1
  %2560 = extractvalue %dx.types.CBufRet.f32 %2556, 2
  %2561 = fcmp fast olt float %2560, -5.000000e-01
  %2562 = call float @dx.op.dot3.f32(i32 55, float %2531, float %2532, float %2533, float %2531, float %2532, float %2533)  ; Dot3(ax,ay,az,bx,by,bz)
  %2563 = call float @dx.op.unary.f32(i32 25, float %2562)  ; Rsqrt(value)
  %2564 = fmul fast float %2563, %2562
  %2565 = fmul fast float %2563, %2531
  %2566 = fmul fast float %2563, %2532
  %2567 = fmul fast float %2563, %2533
  %2568 = fadd fast float %2564, %2538
  %2569 = call float @dx.op.dot3.f32(i32 55, float %2565, float %2566, float %2567, float %2535, float %2536, float %2537)  ; Dot3(ax,ay,az,bx,by,bz)
  %2570 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2571 = extractvalue %dx.types.CBufRet.i32 %2570, 1
  %2572 = and i32 %2571, 1
  %2573 = icmp ne i32 %2572, 0
  %2574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %2575 = extractvalue %dx.types.CBufRet.f32 %2574, 2
  %2576 = fcmp fast ogt float %2575, 0.000000e+00
  %2577 = and i1 %2573, %2576
  br i1 %2577, label %2578, label %2984, !dx.controlflow.hints !83

; <label>:2578                                    ; preds = %2486
  %2579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %2580 = extractvalue %dx.types.CBufRet.f32 %2579, 3
  %2581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2582 = extractvalue %dx.types.CBufRet.f32 %2581, 2
  %2583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2584 = extractvalue %dx.types.CBufRet.f32 %2583, 2
  %2585 = fsub fast float %2582, %2584
  %2586 = and i32 %2571, 2
  %2587 = extractvalue %dx.types.CBufRet.i32 %2570, 0
  %2588 = call i32 @dx.op.binary.i32(i32 40, i32 %2587, i32 3)  ; UMin(a,b)
  %2589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2590 = extractvalue %dx.types.CBufRet.f32 %2589, 0
  %2591 = extractvalue %dx.types.CBufRet.f32 %2589, 1
  %2592 = extractvalue %dx.types.CBufRet.f32 %2583, 0
  %2593 = extractvalue %dx.types.CBufRet.f32 %2583, 1
  %2594 = fsub fast float %2590, %2592
  %2595 = fsub fast float %2591, %2593
  %2596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2597 = extractvalue %dx.types.CBufRet.f32 %2596, 0
  %2598 = fcmp fast ogt float %2597, 0.000000e+00
  %2599 = fsub fast float -0.000000e+00, %2594
  %2600 = fsub fast float -0.000000e+00, %2595
  %2601 = call float @dx.op.dot2.f32(i32 54, float %2565, float %2566, float %2565, float %2566)  ; Dot2(ax,ay,bx,by)
  %2602 = call float @dx.op.dot2.f32(i32 54, float %2565, float %2566, float %2599, float %2600)  ; Dot2(ax,ay,bx,by)
  %2603 = fmul fast float %2602, 2.000000e+00
  %2604 = call float @dx.op.dot2.f32(i32 54, float %2599, float %2600, float %2599, float %2600)  ; Dot2(ax,ay,bx,by)
  %2605 = fmul fast float %2597, %2597
  %2606 = fsub fast float %2604, %2605
  %2607 = fmul fast float %2603, %2603
  %2608 = fmul fast float %2601, 4.000000e+00
  %2609 = fmul fast float %2608, %2606
  %2610 = fsub fast float %2607, %2609
  %2611 = fcmp fast ogt float %2610, 0.000000e+00
  br i1 %2611, label %2612, label %2627, !dx.controlflow.hints !84

; <label>:2612                                    ; preds = %2578
  %2613 = fcmp fast ogt float %2603, 0.000000e+00
  %2614 = call float @dx.op.unary.f32(i32 24, float %2610)  ; Sqrt(value)
  %2615 = fsub fast float -0.000000e+00, %2614
  %2616 = select i1 %2613, float %2614, float %2615
  %2617 = fadd fast float %2616, %2603
  %2618 = fmul float %2617, -5.000000e-01
  %2619 = fdiv fast float %2618, %2601
  %2620 = call float @dx.op.binary.f32(i32 35, float %2619, float 0.000000e+00)  ; FMax(a,b)
  %2621 = call float @dx.op.binary.f32(i32 36, float %2564, float %2620)  ; FMin(a,b)
  %2622 = fdiv fast float %2606, %2618
  %2623 = call float @dx.op.binary.f32(i32 35, float %2622, float 0.000000e+00)  ; FMax(a,b)
  %2624 = call float @dx.op.binary.f32(i32 36, float %2564, float %2623)  ; FMin(a,b)
  %2625 = call float @dx.op.binary.f32(i32 36, float %2621, float %2624)  ; FMin(a,b)
  %2626 = call float @dx.op.binary.f32(i32 35, float %2621, float %2624)  ; FMax(a,b)
  br label %2627

; <label>:2627                                    ; preds = %2612, %2578
  %2628 = phi float [ %2626, %2612 ], [ -1.000000e+00, %2578 ]
  %2629 = phi float [ %2625, %2612 ], [ -1.000000e+00, %2578 ]
  %2630 = phi i1 [ true, %2612 ], [ false, %2578 ]
  %2631 = and i1 %2598, %2630
  br i1 %2631, label %2632, label %2634, !dx.controlflow.hints !85

; <label>:2632                                    ; preds = %2627
  %2633 = fcmp fast oeq float %2629, %2628
  br i1 %2633, label %2937, label %2635, !dx.controlflow.hints !86

; <label>:2634                                    ; preds = %2627
  br i1 %2598, label %2937, label %2635, !dx.controlflow.hints !87

; <label>:2635                                    ; preds = %2634, %2632
  %2636 = phi float [ %2564, %2634 ], [ %2628, %2632 ]
  %2637 = phi float [ 0.000000e+00, %2634 ], [ %2629, %2632 ]
  %2638 = icmp ne i32 %2586, 0
  %2639 = fmul fast float %2636, %2567
  %2640 = fadd fast float %2639, %2580
  %2641 = fmul fast float %2640, %2636
  %2642 = select i1 %2638, float 0.000000e+00, float %2641
  %2643 = fcmp fast oeq float %2567, 0.000000e+00
  %2644 = fdiv fast float %2585, %2567
  %2645 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2644)  ; FMax(a,b)
  %2646 = select i1 %2643, float %2636, float %2645
  %2647 = call float @dx.op.binary.f32(i32 36, float %2636, float %2646)  ; FMin(a,b)
  %2648 = fcmp fast ogt float %2567, 0.000000e+00
  %2649 = fcmp fast olt float %2585, 0.000000e+00
  br i1 %2648, label %2650, label %2707, !dx.controlflow.hints !88

; <label>:2650                                    ; preds = %2635
  %2651 = icmp eq i32 %2586, 0
  br i1 %2649, label %2652, label %2696, !dx.controlflow.hints !89

; <label>:2652                                    ; preds = %2650
  %2653 = select i1 %2651, float %2636, float 0.000000e+00
  %2654 = fsub fast float -0.000000e+00, %2653
  %2655 = call float @dx.op.unary.f32(i32 6, float %2654)  ; FAbs(value)
  %2656 = fmul fast float %2653, %2567
  %2657 = fadd fast float %2656, %2580
  %2658 = fmul fast float %2655, %2657
  %2659 = fsub fast float %2642, %2658
  %2660 = fsub fast float %2636, %2655
  %2661 = select i1 %2651, float %2660, float 0.000000e+00
  %2662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2663 = extractvalue %dx.types.CBufRet.f32 %2662, 0
  %2664 = extractvalue %dx.types.CBufRet.f32 %2662, 1
  %2665 = extractvalue %dx.types.CBufRet.f32 %2662, 2
  %2666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2667 = extractvalue %dx.types.CBufRet.f32 %2666, 0
  %2668 = extractvalue %dx.types.CBufRet.f32 %2666, 1
  %2669 = extractvalue %dx.types.CBufRet.f32 %2666, 2
  %2670 = extractvalue %dx.types.CBufRet.f32 %2666, 3
  %2671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2672 = extractvalue %dx.types.CBufRet.f32 %2671, 3
  %2673 = call float @dx.op.binary.f32(i32 36, float %2659, float %2672)  ; FMin(a,b)
  %2674 = fmul fast float %2670, %2661
  %2675 = call float @dx.op.unary.f32(i32 7, float %2674)  ; Saturate(value)
  %2676 = fsub fast float %2667, %2663
  %2677 = fsub fast float %2668, %2664
  %2678 = fsub fast float %2669, %2665
  %2679 = fmul fast float %2675, %2676
  %2680 = fmul fast float %2675, %2677
  %2681 = fmul fast float %2675, %2678
  %2682 = fadd fast float %2679, %2663
  %2683 = fadd fast float %2680, %2664
  %2684 = fadd fast float %2681, %2665
  %2685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2686 = extractvalue %dx.types.CBufRet.f32 %2685, 0
  %2687 = extractvalue %dx.types.CBufRet.f32 %2685, 1
  %2688 = fadd fast float %2687, %2686
  %2689 = call float @dx.op.unary.f32(i32 7, float %2688)  ; Saturate(value)
  %2690 = extractvalue %dx.types.CBufRet.f32 %2685, 2
  %2691 = extractvalue %dx.types.CBufRet.f32 %2685, 3
  %2692 = fadd fast float %2691, %2690
  %2693 = call float @dx.op.unary.f32(i32 7, float %2692)  ; Saturate(value)
  %2694 = fmul fast float %2689, %2673
  %2695 = fmul fast float %2694, %2693
  br label %2937

; <label>:2696                                    ; preds = %2650
  br i1 %2651, label %2697, label %2718, !dx.controlflow.hints !90

; <label>:2697                                    ; preds = %2696
  %2698 = call float @dx.op.binary.f32(i32 36, float %2647, float %2637)  ; FMin(a,b)
  %2699 = fsub fast float %2647, %2698
  %2700 = fsub fast float %2699, %2636
  %2701 = call float @dx.op.unary.f32(i32 6, float %2700)  ; FAbs(value)
  %2702 = fadd fast float %2699, %2636
  %2703 = fmul fast float %2702, %2567
  %2704 = fadd fast float %2703, %2580
  %2705 = fmul fast float %2704, %2701
  %2706 = fsub fast float %2642, %2705
  br label %2718

; <label>:2707                                    ; preds = %2635
  br i1 %2649, label %2708, label %2718, !dx.controlflow.hints !91

; <label>:2708                                    ; preds = %2707
  %2709 = call float @dx.op.binary.f32(i32 35, float %2637, float %2647)  ; FMax(a,b)
  %2710 = icmp eq i32 %2586, 0
  %2711 = select i1 %2710, float %2647, float 0.000000e+00
  %2712 = fsub fast float -0.000000e+00, %2711
  %2713 = call float @dx.op.unary.f32(i32 6, float %2712)  ; FAbs(value)
  %2714 = fmul fast float %2711, %2567
  %2715 = fadd fast float %2714, %2580
  %2716 = fmul fast float %2713, %2715
  %2717 = fsub fast float %2642, %2716
  br label %2718

; <label>:2718                                    ; preds = %2708, %2707, %2697, %2696
  %2719 = phi float [ %2637, %2696 ], [ %2637, %2697 ], [ %2709, %2708 ], [ %2637, %2707 ]
  %2720 = phi float [ 0.000000e+00, %2696 ], [ %2701, %2697 ], [ %2713, %2708 ], [ 0.000000e+00, %2707 ]
  %2721 = phi float [ %2642, %2696 ], [ %2706, %2697 ], [ %2717, %2708 ], [ %2642, %2707 ]
  %2722 = phi float [ %2647, %2696 ], [ %2647, %2697 ], [ %2636, %2708 ], [ %2636, %2707 ]
  %2723 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 0
  store float -1.000000e+00, float* %2723, align 4, !tbaa !92, !noalias !96
  %2724 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 1
  store float -1.000000e+00, float* %2724, align 4, !tbaa !92, !noalias !96
  %2725 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 2
  store float -1.000000e+00, float* %2725, align 4, !tbaa !92, !noalias !96
  %2726 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 0
  store float -1.000000e+00, float* %2726, align 4, !tbaa !92, !noalias !96
  %2727 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 1
  store float -1.000000e+00, float* %2727, align 4, !tbaa !92, !noalias !96
  %2728 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 2
  store float -1.000000e+00, float* %2728, align 4, !tbaa !92, !noalias !96
  %2729 = icmp sgt i32 %2588, 0
  br i1 %2729, label %2730, label %2791

; <label>:2730                                    ; preds = %2718
  br label %2731

; <label>:2731                                    ; preds = %2780, %2730
  %2732 = phi i32 [ %2781, %2780 ], [ 0, %2730 ]
  %2733 = phi i32 [ %2782, %2780 ], [ 0, %2730 ]
  %2734 = add nuw i32 %2733, 171
  %2735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 %2734)  ; CBufferLoadLegacy(handle,regIndex)
  %2736 = extractvalue %dx.types.CBufRet.f32 %2735, 0
  %2737 = extractvalue %dx.types.CBufRet.f32 %2735, 1
  %2738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2739 = extractvalue %dx.types.CBufRet.f32 %2738, 0
  %2740 = extractvalue %dx.types.CBufRet.f32 %2738, 1
  %2741 = fsub fast float %2736, %2739
  %2742 = fsub fast float %2737, %2740
  %2743 = extractvalue %dx.types.CBufRet.f32 %2735, 2
  %2744 = fsub fast float -0.000000e+00, %2741
  %2745 = fsub fast float -0.000000e+00, %2742
  %2746 = call float @dx.op.dot2.f32(i32 54, float %2565, float %2566, float %2744, float %2745)  ; Dot2(ax,ay,bx,by)
  %2747 = fmul fast float %2746, 2.000000e+00
  %2748 = call float @dx.op.dot2.f32(i32 54, float %2744, float %2745, float %2744, float %2745)  ; Dot2(ax,ay,bx,by)
  %2749 = fmul fast float %2743, %2743
  %2750 = fsub fast float %2748, %2749
  %2751 = fmul fast float %2747, %2747
  %2752 = fmul fast float %2608, %2750
  %2753 = fsub fast float %2751, %2752
  %2754 = fcmp fast ogt float %2753, 0.000000e+00
  br i1 %2754, label %2755, label %2770, !dx.controlflow.hints !84

; <label>:2755                                    ; preds = %2731
  %2756 = fcmp fast ogt float %2747, 0.000000e+00
  %2757 = call float @dx.op.unary.f32(i32 24, float %2753)  ; Sqrt(value)
  %2758 = fsub fast float -0.000000e+00, %2757
  %2759 = select i1 %2756, float %2757, float %2758
  %2760 = fadd fast float %2759, %2747
  %2761 = fmul float %2760, -5.000000e-01
  %2762 = fdiv fast float %2761, %2601
  %2763 = call float @dx.op.binary.f32(i32 35, float %2762, float 0.000000e+00)  ; FMax(a,b)
  %2764 = call float @dx.op.binary.f32(i32 36, float %2636, float %2763)  ; FMin(a,b)
  %2765 = fdiv fast float %2750, %2761
  %2766 = call float @dx.op.binary.f32(i32 35, float %2765, float 0.000000e+00)  ; FMax(a,b)
  %2767 = call float @dx.op.binary.f32(i32 36, float %2636, float %2766)  ; FMin(a,b)
  %2768 = call float @dx.op.binary.f32(i32 36, float %2764, float %2767)  ; FMin(a,b)
  %2769 = call float @dx.op.binary.f32(i32 35, float %2764, float %2767)  ; FMax(a,b)
  br label %2770

; <label>:2770                                    ; preds = %2755, %2731
  %2771 = phi float [ %2769, %2755 ], [ -1.000000e+00, %2731 ]
  %2772 = phi float [ %2768, %2755 ], [ -1.000000e+00, %2731 ]
  %2773 = phi i1 [ true, %2755 ], [ false, %2731 ]
  br i1 %2773, label %2774, label %2780, !dx.controlflow.hints !107

; <label>:2774                                    ; preds = %2770
  %2775 = call float @dx.op.binary.f32(i32 35, float %2719, float %2772)  ; FMax(a,b)
  %2776 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %2733
  store float %2775, float* %2776, align 4, !tbaa !92, !noalias !96
  %2777 = call float @dx.op.binary.f32(i32 35, float %2719, float %2771)  ; FMax(a,b)
  %2778 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 %2733
  store float %2777, float* %2778, align 4, !tbaa !92, !noalias !96
  %2779 = add nsw i32 %2732, 1
  br label %2780

; <label>:2780                                    ; preds = %2774, %2770
  %2781 = phi i32 [ %2779, %2774 ], [ %2732, %2770 ]
  %2782 = add nuw nsw i32 %2733, 1
  %2783 = icmp eq i32 %2782, %2588
  br i1 %2783, label %2784, label %2731

; <label>:2784                                    ; preds = %2780
  %2785 = load float, float* %2725, align 4, !tbaa !92, !alias.scope !108, !noalias !111
  %2786 = load float, float* %2724, align 4, !tbaa !92, !alias.scope !114, !noalias !115
  %2787 = load float, float* %2723, align 4, !tbaa !92, !alias.scope !116, !noalias !117
  %2788 = load float, float* %2728, align 4, !tbaa !92, !alias.scope !118, !noalias !121
  %2789 = load float, float* %2727, align 4, !tbaa !92, !alias.scope !124, !noalias !125
  %2790 = load float, float* %2726, align 4, !tbaa !92, !alias.scope !126, !noalias !127
  br label %2791

; <label>:2791                                    ; preds = %2784, %2718
  %2792 = phi float [ -1.000000e+00, %2718 ], [ %2790, %2784 ]
  %2793 = phi float [ -1.000000e+00, %2718 ], [ %2789, %2784 ]
  %2794 = phi float [ -1.000000e+00, %2718 ], [ %2788, %2784 ]
  %2795 = phi float [ -1.000000e+00, %2718 ], [ %2787, %2784 ]
  %2796 = phi float [ -1.000000e+00, %2718 ], [ %2786, %2784 ]
  %2797 = phi float [ -1.000000e+00, %2718 ], [ %2785, %2784 ]
  %2798 = phi i32 [ 0, %2718 ], [ %2781, %2784 ]
  %2799 = call float @dx.op.binary.f32(i32 36, float %2796, float %2797)  ; FMin(a,b)
  %2800 = call float @dx.op.binary.f32(i32 36, float %2795, float %2799)  ; FMin(a,b)
  %2801 = call float @dx.op.binary.f32(i32 35, float %2795, float %2796)  ; FMax(a,b)
  %2802 = call float @dx.op.binary.f32(i32 36, float %2801, float %2797)  ; FMin(a,b)
  %2803 = call float @dx.op.binary.f32(i32 36, float %2795, float %2796)  ; FMin(a,b)
  %2804 = call float @dx.op.binary.f32(i32 35, float %2803, float %2802)  ; FMax(a,b)
  %2805 = call float @dx.op.binary.f32(i32 35, float %2796, float %2797)  ; FMax(a,b)
  %2806 = call float @dx.op.binary.f32(i32 35, float %2795, float %2805)  ; FMax(a,b)
  store float %2800, float* %2723, align 4, !tbaa !92, !alias.scope !116, !noalias !117
  store float %2804, float* %2724, align 4, !tbaa !92, !alias.scope !114, !noalias !115
  store float %2806, float* %2725, align 4, !tbaa !92, !alias.scope !108, !noalias !111
  %2807 = call float @dx.op.binary.f32(i32 36, float %2793, float %2794)  ; FMin(a,b)
  %2808 = call float @dx.op.binary.f32(i32 36, float %2792, float %2807)  ; FMin(a,b)
  %2809 = call float @dx.op.binary.f32(i32 35, float %2792, float %2793)  ; FMax(a,b)
  %2810 = call float @dx.op.binary.f32(i32 36, float %2809, float %2794)  ; FMin(a,b)
  %2811 = call float @dx.op.binary.f32(i32 36, float %2792, float %2793)  ; FMin(a,b)
  %2812 = call float @dx.op.binary.f32(i32 35, float %2811, float %2810)  ; FMax(a,b)
  %2813 = call float @dx.op.binary.f32(i32 35, float %2793, float %2794)  ; FMax(a,b)
  %2814 = call float @dx.op.binary.f32(i32 35, float %2792, float %2813)  ; FMax(a,b)
  store float %2808, float* %2726, align 4, !tbaa !92, !alias.scope !126, !noalias !127
  store float %2812, float* %2727, align 4, !tbaa !92, !alias.scope !124, !noalias !125
  store float %2814, float* %2728, align 4, !tbaa !92, !alias.scope !118, !noalias !121
  %2815 = sub nsw i32 3, %2798
  %2816 = icmp sgt i32 %2815, 2
  br i1 %2816, label %2817, label %2855, !dx.controlflow.hints !128

; <label>:2817                                    ; preds = %2791
  %2818 = icmp eq i32 %2586, 0
  %2819 = fsub fast float %2636, %2720
  %2820 = select i1 %2818, float %2819, float %2720
  %2821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2822 = extractvalue %dx.types.CBufRet.f32 %2821, 0
  %2823 = extractvalue %dx.types.CBufRet.f32 %2821, 1
  %2824 = extractvalue %dx.types.CBufRet.f32 %2821, 2
  %2825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2826 = extractvalue %dx.types.CBufRet.f32 %2825, 0
  %2827 = extractvalue %dx.types.CBufRet.f32 %2825, 1
  %2828 = extractvalue %dx.types.CBufRet.f32 %2825, 2
  %2829 = extractvalue %dx.types.CBufRet.f32 %2825, 3
  %2830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2831 = extractvalue %dx.types.CBufRet.f32 %2830, 3
  %2832 = call float @dx.op.binary.f32(i32 36, float %2721, float %2831)  ; FMin(a,b)
  %2833 = fmul fast float %2829, %2820
  %2834 = call float @dx.op.unary.f32(i32 7, float %2833)  ; Saturate(value)
  %2835 = fsub fast float %2826, %2822
  %2836 = fsub fast float %2827, %2823
  %2837 = fsub fast float %2828, %2824
  %2838 = fmul fast float %2834, %2835
  %2839 = fmul fast float %2834, %2836
  %2840 = fmul fast float %2834, %2837
  %2841 = fadd fast float %2838, %2822
  %2842 = fadd fast float %2839, %2823
  %2843 = fadd fast float %2840, %2824
  %2844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2845 = extractvalue %dx.types.CBufRet.f32 %2844, 0
  %2846 = extractvalue %dx.types.CBufRet.f32 %2844, 1
  %2847 = fadd fast float %2846, %2845
  %2848 = call float @dx.op.unary.f32(i32 7, float %2847)  ; Saturate(value)
  %2849 = extractvalue %dx.types.CBufRet.f32 %2844, 2
  %2850 = extractvalue %dx.types.CBufRet.f32 %2844, 3
  %2851 = fadd fast float %2850, %2849
  %2852 = call float @dx.op.unary.f32(i32 7, float %2851)  ; Saturate(value)
  %2853 = fmul fast float %2848, %2832
  %2854 = fmul fast float %2853, %2852
  br label %2937

; <label>:2855                                    ; preds = %2791
  %2856 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %2815
  %2857 = load float, float* %2856, align 4, !tbaa !92, !noalias !96
  %2858 = fcmp fast olt float %2857, %2722
  %2859 = icmp sgt i32 %2798, 0
  %2860 = and i1 %2859, %2858
  br i1 %2860, label %2861, label %2898

; <label>:2861                                    ; preds = %2855
  br label %2862

; <label>:2862                                    ; preds = %2891, %2861
  %2863 = phi float [ %2892, %2891 ], [ %2720, %2861 ]
  %2864 = phi float [ %2893, %2891 ], [ %2721, %2861 ]
  %2865 = phi float [ %2873, %2891 ], [ %2857, %2861 ]
  %2866 = phi i32 [ %2870, %2891 ], [ %2815, %2861 ]
  %2867 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 %2866
  %2868 = load float, float* %2867, align 4, !tbaa !92, !noalias !96
  %2869 = icmp slt i32 %2866, 2
  %2870 = add nsw i32 %2866, 1
  %2871 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %2870
  %2872 = load float, float* %2871, align 4, !tbaa !92, !noalias !96
  %2873 = select i1 %2869, float %2872, float %2636
  %2874 = call float @dx.op.binary.f32(i32 36, float %2873, float %2868)  ; FMin(a,b)
  %2875 = call float @dx.op.binary.f32(i32 36, float %2722, float %2874)  ; FMin(a,b)
  %2876 = icmp eq i32 %2586, 0
  %2877 = fadd fast float %2875, %2865
  %2878 = fmul fast float %2877, %2567
  %2879 = fadd fast float %2878, %2580
  br i1 %2876, label %2885, label %2880, !dx.controlflow.hints !129

; <label>:2880                                    ; preds = %2862
  %2881 = fsub fast float %2875, %2865
  %2882 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2881)  ; FMax(a,b)
  %2883 = fmul fast float %2882, %2879
  %2884 = fadd fast float %2883, %2864
  br label %2891

; <label>:2885                                    ; preds = %2862
  %2886 = fsub fast float %2865, %2875
  %2887 = call float @dx.op.unary.f32(i32 6, float %2886)  ; FAbs(value)
  %2888 = fadd fast float %2887, %2863
  %2889 = fmul fast float %2887, %2879
  %2890 = fsub fast float %2864, %2889
  br label %2891

; <label>:2891                                    ; preds = %2885, %2880
  %2892 = phi float [ %2882, %2880 ], [ %2888, %2885 ]
  %2893 = phi float [ %2884, %2880 ], [ %2890, %2885 ]
  %2894 = fcmp fast olt float %2873, %2722
  %2895 = icmp slt i32 %2870, 3
  %2896 = and i1 %2895, %2894
  br i1 %2896, label %2862, label %2897

; <label>:2897                                    ; preds = %2891
  br label %2898

; <label>:2898                                    ; preds = %2897, %2855
  %2899 = phi float [ %2720, %2855 ], [ %2892, %2897 ]
  %2900 = phi float [ %2721, %2855 ], [ %2893, %2897 ]
  %2901 = fsub fast float %2636, %2899
  %2902 = select i1 %2638, float %2899, float %2901
  %2903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2904 = extractvalue %dx.types.CBufRet.f32 %2903, 0
  %2905 = extractvalue %dx.types.CBufRet.f32 %2903, 1
  %2906 = extractvalue %dx.types.CBufRet.f32 %2903, 2
  %2907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2908 = extractvalue %dx.types.CBufRet.f32 %2907, 0
  %2909 = extractvalue %dx.types.CBufRet.f32 %2907, 1
  %2910 = extractvalue %dx.types.CBufRet.f32 %2907, 2
  %2911 = extractvalue %dx.types.CBufRet.f32 %2907, 3
  %2912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2913 = extractvalue %dx.types.CBufRet.f32 %2912, 3
  %2914 = call float @dx.op.binary.f32(i32 36, float %2900, float %2913)  ; FMin(a,b)
  %2915 = fmul fast float %2911, %2902
  %2916 = call float @dx.op.unary.f32(i32 7, float %2915)  ; Saturate(value)
  %2917 = fsub fast float %2908, %2904
  %2918 = fsub fast float %2909, %2905
  %2919 = fsub fast float %2910, %2906
  %2920 = fmul fast float %2916, %2917
  %2921 = fmul fast float %2916, %2918
  %2922 = fmul fast float %2916, %2919
  %2923 = fadd fast float %2920, %2904
  %2924 = fadd fast float %2921, %2905
  %2925 = fadd fast float %2922, %2906
  %2926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2927 = extractvalue %dx.types.CBufRet.f32 %2926, 0
  %2928 = extractvalue %dx.types.CBufRet.f32 %2926, 1
  %2929 = fadd fast float %2928, %2927
  %2930 = call float @dx.op.unary.f32(i32 7, float %2929)  ; Saturate(value)
  %2931 = extractvalue %dx.types.CBufRet.f32 %2926, 2
  %2932 = extractvalue %dx.types.CBufRet.f32 %2926, 3
  %2933 = fadd fast float %2932, %2931
  %2934 = call float @dx.op.unary.f32(i32 7, float %2933)  ; Saturate(value)
  %2935 = fmul fast float %2930, %2914
  %2936 = fmul fast float %2935, %2934
  br label %2937

; <label>:2937                                    ; preds = %2898, %2817, %2652, %2634, %2632
  %2938 = phi float [ %2661, %2652 ], [ %2820, %2817 ], [ %2902, %2898 ], [ 0.000000e+00, %2632 ], [ 0.000000e+00, %2634 ]
  %2939 = phi float [ %2695, %2652 ], [ %2854, %2817 ], [ %2936, %2898 ], [ 0.000000e+00, %2632 ], [ 0.000000e+00, %2634 ]
  %2940 = phi float [ %2682, %2652 ], [ %2841, %2817 ], [ %2923, %2898 ], [ 0.000000e+00, %2632 ], [ 0.000000e+00, %2634 ]
  %2941 = phi float [ %2683, %2652 ], [ %2842, %2817 ], [ %2924, %2898 ], [ 0.000000e+00, %2632 ], [ 0.000000e+00, %2634 ]
  %2942 = phi float [ %2684, %2652 ], [ %2843, %2817 ], [ %2925, %2898 ], [ 0.000000e+00, %2632 ], [ 0.000000e+00, %2634 ]
  %2943 = fmul fast float %2575, %2939
  %2944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2945 = extractvalue %dx.types.CBufRet.f32 %2944, 2
  %2946 = fsub fast float %2582, %2945
  %2947 = fcmp fast olt float %2943, -2.000000e+01
  %2948 = call float @dx.op.unary.f32(i32 21, float %2943)  ; Exp(value)
  %2949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2950 = extractvalue %dx.types.CBufRet.f32 %2949, 2
  %2951 = extractvalue %dx.types.CBufRet.f32 %2949, 3
  %2952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2953 = extractvalue %dx.types.CBufRet.f32 %2952, 2
  %2954 = fmul fast float %2951, %2946
  %2955 = call float @dx.op.unary.f32(i32 7, float %2954)  ; Saturate(value)
  %2956 = fsub fast float 1.000000e+00, %2955
  %2957 = fmul fast float %2567, 5.000000e-01
  %2958 = fadd fast float %2957, 5.000000e-01
  %2959 = call float @dx.op.unary.f32(i32 7, float %2958)  ; Saturate(value)
  %2960 = fsub fast float 1.000000e+00, %2959
  %2961 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2956)  ; FMax(a,b)
  %2962 = fdiv fast float %2960, %2961
  %2963 = fsub fast float %2946, %2533
  %2964 = call float @dx.op.unary.f32(i32 6, float %2963)  ; FAbs(value)
  %2965 = fmul fast float %2964, %2950
  %2966 = call float @dx.op.unary.f32(i32 7, float %2962)  ; Saturate(value)
  %2967 = fsub fast float 1.000000e+00, %2965
  %2968 = fmul fast float %2967, %2966
  %2969 = fadd fast float %2968, %2965
  %2970 = fmul fast float %2953, %2946
  %2971 = call float @dx.op.unary.f32(i32 7, float %2970)  ; Saturate(value)
  %2972 = fsub fast float 1.000000e+00, %2969
  %2973 = fmul fast float %2972, %2971
  %2974 = fadd fast float %2973, %2969
  %2975 = call float @dx.op.unary.f32(i32 7, float %2974)  ; Saturate(value)
  %2976 = fadd fast float %2948, -1.000000e+00
  %2977 = select i1 %2947, float -1.000000e+00, float %2976
  %2978 = fmul fast float %2975, %2977
  %2979 = fadd fast float %2978, 1.000000e+00
  %2980 = fsub fast float -0.000000e+00, %2978
  %2981 = fmul fast float %2940, %2980
  %2982 = fmul fast float %2941, %2980
  %2983 = fmul fast float %2942, %2980
  br label %2984

; <label>:2984                                    ; preds = %2937, %2486
  %2985 = phi float [ %2938, %2937 ], [ 0.000000e+00, %2486 ]
  %2986 = phi float [ %2979, %2937 ], [ 1.000000e+00, %2486 ]
  %2987 = phi float [ %2981, %2937 ], [ 0.000000e+00, %2486 ]
  %2988 = phi float [ %2982, %2937 ], [ 0.000000e+00, %2486 ]
  %2989 = phi float [ %2983, %2937 ], [ 0.000000e+00, %2486 ]
  %2990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2991 = extractvalue %dx.types.CBufRet.f32 %2990, 1
  %2992 = fsub fast float 1.000000e+00, %2986
  %2993 = fmul fast float %2992, %2568
  %2994 = fmul fast float %2993, %2991
  %2995 = fsub fast float %2568, %2994
  br i1 %2561, label %2996, label %3025, !dx.controlflow.hints !130

; <label>:2996                                    ; preds = %2984
  %2997 = fmul fast float %2569, %2558
  %2998 = fadd fast float %2997, %2559
  %2999 = call float @dx.op.unary.f32(i32 7, float %2998)  ; Saturate(value)
  %3000 = fmul fast float %2540, %2995
  %3001 = fsub fast float -0.000000e+00, %3000
  %3002 = fmul fast float %2541, %2995
  %3003 = fsub fast float -0.000000e+00, %3002
  %3004 = call float @dx.op.unary.f32(i32 21, float %3001)  ; Exp(value)
  %3005 = call float @dx.op.unary.f32(i32 21, float %3003)  ; Exp(value)
  %3006 = call float @dx.op.binary.f32(i32 35, float %2548, float %3004)  ; FMax(a,b)
  %3007 = call float @dx.op.binary.f32(i32 35, float %2548, float %3005)  ; FMax(a,b)
  %3008 = fsub fast float %3007, %3006
  %3009 = fmul fast float %3008, %2999
  %3010 = fadd fast float %3009, %3006
  %3011 = call float @dx.op.unary.f32(i32 7, float %3010)  ; Saturate(value)
  %3012 = fsub fast float %2545, %2550
  %3013 = fsub fast float %2546, %2551
  %3014 = fsub fast float %2547, %2552
  %3015 = fmul fast float %2999, %3012
  %3016 = fmul fast float %2999, %3013
  %3017 = fmul fast float %2999, %3014
  %3018 = fadd fast float %3015, %2550
  %3019 = fadd fast float %3016, %2551
  %3020 = fadd fast float %3017, %2552
  %3021 = fsub fast float 1.000000e+00, %3011
  %3022 = fmul fast float %3021, %3018
  %3023 = fmul fast float %3021, %3019
  %3024 = fmul fast float %3021, %3020
  br label %3084

; <label>:3025                                    ; preds = %2984
  %3026 = fmul fast float %2995, %2557
  %3027 = call float @dx.op.unary.f32(i32 7, float %3026)  ; Saturate(value)
  %3028 = fsub fast float 2.000000e+00, %3027
  %3029 = fmul fast float %3027, 9.921875e-01
  %3030 = fmul fast float %3029, %3028
  %3031 = fadd fast float %3030, 3.906250e-03
  %3032 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %24, float %3031, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3033 = extractvalue %dx.types.ResRet.f32 %3032, 0
  %3034 = fsub fast float %3027, %3033
  %3035 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3034)  ; FMax(a,b)
  %3036 = fmul fast float %2543, %2533
  %3037 = call float @dx.op.unary.f32(i32 6, float %3036)  ; FAbs(value)
  %3038 = fcmp fast ogt float %3037, 0x3EB0C6F7A0000000
  br i1 %3038, label %3039, label %3045, !dx.controlflow.hints !131

; <label>:3039                                    ; preds = %3025
  %3040 = fmul fast float %3036, 0xBFF7154760000000
  %3041 = call float @dx.op.unary.f32(i32 21, float %3040)  ; Exp(value)
  %3042 = fsub fast float 1.000000e+00, %3041
  %3043 = fdiv fast float %3042, %3036
  %3044 = fmul fast float %3043, %2553
  br label %3045

; <label>:3045                                    ; preds = %3039, %3025
  %3046 = phi float [ %3044, %3039 ], [ %2553, %3025 ]
  %3047 = fadd fast float %3046, %2555
  %3048 = fmul fast float %3047, %3035
  %3049 = fmul fast float %2540, %3048
  %3050 = fsub fast float -0.000000e+00, %3049
  %3051 = fmul fast float %2541, %3048
  %3052 = fsub fast float -0.000000e+00, %3051
  %3053 = fmul fast float %2542, %3048
  %3054 = fsub fast float -0.000000e+00, %3053
  %3055 = call float @dx.op.unary.f32(i32 21, float %3050)  ; Exp(value)
  %3056 = call float @dx.op.unary.f32(i32 21, float %3052)  ; Exp(value)
  %3057 = call float @dx.op.unary.f32(i32 21, float %3054)  ; Exp(value)
  %3058 = fmul fast float %2569, %2569
  %3059 = fadd fast float %3058, 1.000000e+00
  %3060 = fmul fast float %3059, 0x3FAE8EC8A0000000
  %3061 = fmul fast float %3060, %2550
  %3062 = fmul fast float %3060, %2551
  %3063 = fmul fast float %3060, %2552
  %3064 = fmul fast float %2569, %2548
  %3065 = fsub fast float 1.000000e+00, %3064
  %3066 = fmul fast float %2548, %2548
  %3067 = fsub fast float 1.000000e+00, %3066
  %3068 = fmul fast float %3067, 0x3FB45F3060000000
  %3069 = fmul fast float %3065, %3065
  %3070 = fdiv fast float 1.000000e+00, %3069
  %3071 = fmul fast float %3068, %3070
  %3072 = fmul fast float %3071, %2545
  %3073 = fmul fast float %3071, %2546
  %3074 = fmul fast float %3071, %2547
  %3075 = fadd fast float %3072, %3061
  %3076 = fadd fast float %3073, %3062
  %3077 = fadd fast float %3074, %3063
  %3078 = fsub fast float 1.000000e+00, %3055
  %3079 = fsub fast float 1.000000e+00, %3056
  %3080 = fsub fast float 1.000000e+00, %3057
  %3081 = fmul fast float %3075, %3078
  %3082 = fmul fast float %3076, %3079
  %3083 = fmul fast float %3077, %3080
  br label %3084

; <label>:3084                                    ; preds = %3045, %2996
  %3085 = phi float [ %3022, %2996 ], [ %3081, %3045 ]
  %3086 = phi float [ %3023, %2996 ], [ %3082, %3045 ]
  %3087 = phi float [ %3024, %2996 ], [ %3083, %3045 ]
  %3088 = phi float [ %3011, %2996 ], [ %3055, %3045 ]
  %3089 = phi float [ %3011, %2996 ], [ %3056, %3045 ]
  %3090 = phi float [ %3011, %2996 ], [ %3057, %3045 ]
  br i1 %2577, label %3091, label %3289, !dx.controlflow.hints !132

; <label>:3091                                    ; preds = %3084
  %3092 = extractvalue %dx.types.CBufRet.f32 %2990, 0
  %3093 = fmul fast float %3092, %2992
  %3094 = fsub fast float %2987, %3085
  %3095 = fsub fast float %2988, %3086
  %3096 = fsub fast float %2989, %3087
  %3097 = fmul fast float %3093, %3094
  %3098 = fmul fast float %3093, %3095
  %3099 = fmul fast float %3093, %3096
  %3100 = fadd fast float %3097, %3085
  %3101 = fadd fast float %3098, %3086
  %3102 = fadd fast float %3099, %3087
  %3103 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3088)  ; FMax(a,b)
  %3104 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3089)  ; FMax(a,b)
  %3105 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3090)  ; FMax(a,b)
  %3106 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2986)  ; FMax(a,b)
  %3107 = call float @dx.op.binary.f32(i32 35, float %2985, float %2995)  ; FMax(a,b)
  %3108 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3107)  ; FMax(a,b)
  %3109 = fdiv fast float %2985, %3108
  %3110 = call float @dx.op.unary.f32(i32 7, float %3109)  ; Saturate(value)
  %3111 = fdiv fast float %2995, %3108
  %3112 = call float @dx.op.unary.f32(i32 7, float %3111)  ; Saturate(value)
  %3113 = fcmp fast une float %3106, 1.000000e+00
  br i1 %3113, label %3114, label %3127, !dx.controlflow.hints !133

; <label>:3114                                    ; preds = %3091
  %3115 = call float @dx.op.unary.f32(i32 23, float %3106)  ; Log(value)
  %3116 = fmul fast float %3115, 0x3FE62E4300000000
  %3117 = fmul fast float %2987, %3116
  %3118 = fsub fast float -0.000000e+00, %3117
  %3119 = fmul fast float %2988, %3116
  %3120 = fsub fast float -0.000000e+00, %3119
  %3121 = fmul fast float %2989, %3116
  %3122 = fsub fast float -0.000000e+00, %3121
  %3123 = fsub fast float 1.000000e+00, %3106
  %3124 = fdiv fast float %3118, %3123
  %3125 = fdiv fast float %3120, %3123
  %3126 = fdiv fast float %3122, %3123
  br label %3127

; <label>:3127                                    ; preds = %3114, %3091
  %3128 = phi float [ %3124, %3114 ], [ %2987, %3091 ]
  %3129 = phi float [ %3125, %3114 ], [ %2988, %3091 ]
  %3130 = phi float [ %3126, %3114 ], [ %2989, %3091 ]
  %3131 = phi float [ %3116, %3114 ], [ 0.000000e+00, %3091 ]
  %3132 = fcmp fast une float %3103, 1.000000e+00
  br i1 %3132, label %3133, label %3140, !dx.controlflow.hints !134

; <label>:3133                                    ; preds = %3127
  %3134 = call float @dx.op.unary.f32(i32 23, float %3103)  ; Log(value)
  %3135 = fmul fast float %3134, 0x3FE62E4300000000
  %3136 = fmul fast float %3100, %3135
  %3137 = fsub fast float -0.000000e+00, %3136
  %3138 = fsub fast float 1.000000e+00, %3103
  %3139 = fdiv fast float %3137, %3138
  br label %3140

; <label>:3140                                    ; preds = %3133, %3127
  %3141 = phi float [ %3139, %3133 ], [ %3100, %3127 ]
  %3142 = phi float [ %3135, %3133 ], [ 0.000000e+00, %3127 ]
  %3143 = fcmp fast une float %3104, 1.000000e+00
  br i1 %3143, label %3144, label %3151, !dx.controlflow.hints !134

; <label>:3144                                    ; preds = %3140
  %3145 = call float @dx.op.unary.f32(i32 23, float %3104)  ; Log(value)
  %3146 = fmul fast float %3145, 0x3FE62E4300000000
  %3147 = fmul fast float %3101, %3146
  %3148 = fsub fast float -0.000000e+00, %3147
  %3149 = fsub fast float 1.000000e+00, %3104
  %3150 = fdiv fast float %3148, %3149
  br label %3151

; <label>:3151                                    ; preds = %3144, %3140
  %3152 = phi float [ %3150, %3144 ], [ %3101, %3140 ]
  %3153 = phi float [ %3146, %3144 ], [ 0.000000e+00, %3140 ]
  %3154 = fcmp fast une float %3105, 1.000000e+00
  br i1 %3154, label %3155, label %3162, !dx.controlflow.hints !134

; <label>:3155                                    ; preds = %3151
  %3156 = call float @dx.op.unary.f32(i32 23, float %3105)  ; Log(value)
  %3157 = fmul fast float %3156, 0x3FE62E4300000000
  %3158 = fmul fast float %3102, %3157
  %3159 = fsub fast float -0.000000e+00, %3158
  %3160 = fsub fast float 1.000000e+00, %3105
  %3161 = fdiv fast float %3159, %3160
  br label %3162

; <label>:3162                                    ; preds = %3155, %3151
  %3163 = phi float [ %3161, %3155 ], [ %3102, %3151 ]
  %3164 = phi float [ %3157, %3155 ], [ 0.000000e+00, %3151 ]
  %3165 = fmul fast float %3128, %3112
  %3166 = fmul fast float %3129, %3112
  %3167 = fmul fast float %3130, %3112
  %3168 = fmul fast float %3131, %3112
  %3169 = fmul fast float %3141, %3110
  %3170 = fmul fast float %3152, %3110
  %3171 = fmul fast float %3163, %3110
  %3172 = fmul fast float %3142, %3110
  %3173 = fmul fast float %3153, %3110
  %3174 = fmul fast float %3164, %3110
  %3175 = fadd fast float %3169, %3165
  %3176 = fadd fast float %3170, %3166
  %3177 = fadd fast float %3171, %3167
  %3178 = fadd fast float %3172, %3168
  %3179 = fadd fast float %3173, %3168
  %3180 = fadd fast float %3174, %3168
  %3181 = fcmp fast une float %3178, 0.000000e+00
  br i1 %3181, label %3182, label %3189, !dx.controlflow.hints !135

; <label>:3182                                    ; preds = %3162
  %3183 = fmul fast float %3178, 0x3FF7154760000000
  %3184 = call float @dx.op.unary.f32(i32 21, float %3183)  ; Exp(value)
  %3185 = fsub fast float 1.000000e+00, %3184
  %3186 = fmul fast float %3175, %3185
  %3187 = fsub fast float -0.000000e+00, %3186
  %3188 = fdiv fast float %3187, %3178
  br label %3189

; <label>:3189                                    ; preds = %3182, %3162
  %3190 = phi float [ %3184, %3182 ], [ 1.000000e+00, %3162 ]
  %3191 = phi float [ %3188, %3182 ], [ %3175, %3162 ]
  %3192 = fcmp fast une float %3179, 0.000000e+00
  br i1 %3192, label %3193, label %3200, !dx.controlflow.hints !135

; <label>:3193                                    ; preds = %3189
  %3194 = fmul fast float %3179, 0x3FF7154760000000
  %3195 = call float @dx.op.unary.f32(i32 21, float %3194)  ; Exp(value)
  %3196 = fsub fast float 1.000000e+00, %3195
  %3197 = fmul fast float %3176, %3196
  %3198 = fsub fast float -0.000000e+00, %3197
  %3199 = fdiv fast float %3198, %3179
  br label %3200

; <label>:3200                                    ; preds = %3193, %3189
  %3201 = phi float [ %3195, %3193 ], [ 1.000000e+00, %3189 ]
  %3202 = phi float [ %3199, %3193 ], [ %3176, %3189 ]
  %3203 = fcmp fast une float %3180, 0.000000e+00
  br i1 %3203, label %3204, label %3211, !dx.controlflow.hints !135

; <label>:3204                                    ; preds = %3200
  %3205 = fmul fast float %3180, 0x3FF7154760000000
  %3206 = call float @dx.op.unary.f32(i32 21, float %3205)  ; Exp(value)
  %3207 = fsub fast float 1.000000e+00, %3206
  %3208 = fmul fast float %3177, %3207
  %3209 = fsub fast float -0.000000e+00, %3208
  %3210 = fdiv fast float %3209, %3180
  br label %3211

; <label>:3211                                    ; preds = %3204, %3200
  %3212 = phi float [ %3206, %3204 ], [ 1.000000e+00, %3200 ]
  %3213 = phi float [ %3210, %3204 ], [ %3177, %3200 ]
  %3214 = fcmp fast ogt float %3110, %3112
  br i1 %3214, label %3215, label %3235, !dx.controlflow.hints !136

; <label>:3215                                    ; preds = %3211
  %3216 = fsub fast float 1.000000e+00, %3112
  %3217 = fmul fast float %3128, %3216
  %3218 = fmul fast float %3129, %3216
  %3219 = fmul fast float %3130, %3216
  %3220 = fmul fast float %3131, %3216
  %3221 = fcmp fast une float %3220, 0.000000e+00
  br i1 %3221, label %3222, label %3273, !dx.controlflow.hints !137

; <label>:3222                                    ; preds = %3215
  %3223 = fmul fast float %3220, 0x3FF7154760000000
  %3224 = call float @dx.op.unary.f32(i32 21, float %3223)  ; Exp(value)
  %3225 = fsub fast float 1.000000e+00, %3224
  %3226 = fmul fast float %3217, %3225
  %3227 = fsub fast float -0.000000e+00, %3226
  %3228 = fmul fast float %3218, %3225
  %3229 = fsub fast float -0.000000e+00, %3228
  %3230 = fmul fast float %3219, %3225
  %3231 = fsub fast float -0.000000e+00, %3230
  %3232 = fdiv fast float %3227, %3220
  %3233 = fdiv fast float %3229, %3220
  %3234 = fdiv fast float %3231, %3220
  br label %3273

; <label>:3235                                    ; preds = %3211
  %3236 = fsub fast float 1.000000e+00, %3110
  %3237 = fmul fast float %3141, %3236
  %3238 = fmul fast float %3152, %3236
  %3239 = fmul fast float %3163, %3236
  %3240 = fmul fast float %3142, %3236
  %3241 = fmul fast float %3153, %3236
  %3242 = fmul fast float %3164, %3236
  %3243 = fcmp fast une float %3240, 0.000000e+00
  br i1 %3243, label %3244, label %3251, !dx.controlflow.hints !135

; <label>:3244                                    ; preds = %3235
  %3245 = fmul fast float %3240, 0x3FF7154760000000
  %3246 = call float @dx.op.unary.f32(i32 21, float %3245)  ; Exp(value)
  %3247 = fsub fast float 1.000000e+00, %3246
  %3248 = fmul fast float %3237, %3247
  %3249 = fsub fast float -0.000000e+00, %3248
  %3250 = fdiv fast float %3249, %3240
  br label %3251

; <label>:3251                                    ; preds = %3244, %3235
  %3252 = phi float [ %3250, %3244 ], [ %3237, %3235 ]
  %3253 = phi float [ %3246, %3244 ], [ 1.000000e+00, %3235 ]
  %3254 = fcmp fast une float %3241, 0.000000e+00
  br i1 %3254, label %3255, label %3262, !dx.controlflow.hints !135

; <label>:3255                                    ; preds = %3251
  %3256 = fmul fast float %3241, 0x3FF7154760000000
  %3257 = call float @dx.op.unary.f32(i32 21, float %3256)  ; Exp(value)
  %3258 = fsub fast float 1.000000e+00, %3257
  %3259 = fmul fast float %3238, %3258
  %3260 = fsub fast float -0.000000e+00, %3259
  %3261 = fdiv fast float %3260, %3241
  br label %3262

; <label>:3262                                    ; preds = %3255, %3251
  %3263 = phi float [ %3261, %3255 ], [ %3238, %3251 ]
  %3264 = phi float [ %3257, %3255 ], [ 1.000000e+00, %3251 ]
  %3265 = fcmp fast une float %3242, 0.000000e+00
  br i1 %3265, label %3266, label %3273, !dx.controlflow.hints !135

; <label>:3266                                    ; preds = %3262
  %3267 = fmul fast float %3242, 0x3FF7154760000000
  %3268 = call float @dx.op.unary.f32(i32 21, float %3267)  ; Exp(value)
  %3269 = fsub fast float 1.000000e+00, %3268
  %3270 = fmul fast float %3239, %3269
  %3271 = fsub fast float -0.000000e+00, %3270
  %3272 = fdiv fast float %3271, %3242
  br label %3273

; <label>:3273                                    ; preds = %3266, %3262, %3222, %3215
  %3274 = phi float [ %3272, %3266 ], [ %3234, %3222 ], [ %3219, %3215 ], [ %3239, %3262 ]
  %3275 = phi float [ %3263, %3266 ], [ %3233, %3222 ], [ %3218, %3215 ], [ %3263, %3262 ]
  %3276 = phi float [ %3252, %3266 ], [ %3232, %3222 ], [ %3217, %3215 ], [ %3252, %3262 ]
  %3277 = phi float [ %3268, %3266 ], [ %3224, %3222 ], [ 1.000000e+00, %3215 ], [ 1.000000e+00, %3262 ]
  %3278 = phi float [ %3264, %3266 ], [ %3224, %3222 ], [ 1.000000e+00, %3215 ], [ %3264, %3262 ]
  %3279 = phi float [ %3253, %3266 ], [ %3224, %3222 ], [ 1.000000e+00, %3215 ], [ %3253, %3262 ]
  %3280 = fmul fast float %3279, %3191
  %3281 = fmul fast float %3278, %3202
  %3282 = fmul fast float %3277, %3213
  %3283 = fadd fast float %3280, %3276
  %3284 = fadd fast float %3281, %3275
  %3285 = fadd fast float %3282, %3274
  %3286 = fmul fast float %3279, %3190
  %3287 = fmul fast float %3278, %3201
  %3288 = fmul fast float %3277, %3212
  br label %3289

; <label>:3289                                    ; preds = %3273, %3084
  %3290 = phi float [ %3090, %3084 ], [ %3288, %3273 ]
  %3291 = phi float [ %3089, %3084 ], [ %3287, %3273 ]
  %3292 = phi float [ %3088, %3084 ], [ %3286, %3273 ]
  %3293 = phi float [ %3087, %3084 ], [ %3285, %3273 ]
  %3294 = phi float [ %3086, %3084 ], [ %3284, %3273 ]
  %3295 = phi float [ %3085, %3084 ], [ %3283, %3273 ]
  %3296 = fmul fast float %3292, %2433
  %3297 = fmul fast float %3291, %2434
  %3298 = fmul fast float %3290, %2435
  %3299 = fsub fast float 1.000000e+00, %2496
  %3300 = fmul fast float %3295, %3299
  %3301 = fmul fast float %3294, %3299
  %3302 = fmul fast float %3293, %3299
  %3303 = fadd fast float %3300, %3296
  %3304 = fadd fast float %3301, %3297
  %3305 = fadd fast float %3302, %3298
  %3306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %3307 = extractvalue %dx.types.CBufRet.f32 %3306, 2
  %3308 = fmul fast float %3307, %2506
  %3309 = call float @dx.op.unary.f32(i32 7, float %3308)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %27, i32 %28, i32 undef, float %2496, float %2496, float %2496, float %2496, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %3310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3311 = extractvalue %dx.types.CBufRet.f32 %3310, 0
  %3312 = fmul fast float %3311, %3303
  %3313 = fmul fast float %3311, %3304
  %3314 = fmul fast float %3311, %3305
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %27, i32 %28, i32 undef, float %3312, float %3313, float %3314, float %3312, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %27, i32 %28, i32 undef, float %3309, float %3309, float %3309, float %3309, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 27, i32 1, i32 2, i32 0, !7}
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
!38 = !{void ()* @cs_fog_raymarching_air_clouds_brfog, !"cs_fog_raymarching_air_clouds_brfog", null, !4, !39}
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
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 1}
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

