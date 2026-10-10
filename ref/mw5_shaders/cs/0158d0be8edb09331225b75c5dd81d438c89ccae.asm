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
; shader hash: f71201918bb52bbbd8f1bbe79986e714
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

define void @cs_fog_raymarching_clouds_brfog() {
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
  %71 = extractvalue %dx.types.CBufRet.f32 %69, 1
  %72 = extractvalue %dx.types.CBufRet.f32 %69, 2
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.f32 %73, 1
  %75 = fmul fast float %67, 2.000000e+00
  %76 = fmul fast float %68, 2.000000e+00
  %77 = fsub fast float 1.000000e+00, %75
  %78 = fsub fast float 1.000000e+00, %76
  %79 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %80 = extractvalue %dx.types.CBufRet.f32 %79, 0
  %81 = extractvalue %dx.types.CBufRet.f32 %79, 1
  %82 = extractvalue %dx.types.CBufRet.f32 %79, 2
  %83 = fmul fast float %80, %77
  %84 = fmul fast float %81, %77
  %85 = fmul fast float %82, %77
  %86 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.f32 %86, 0
  %88 = extractvalue %dx.types.CBufRet.f32 %86, 1
  %89 = extractvalue %dx.types.CBufRet.f32 %86, 2
  %90 = fmul fast float %87, %78
  %91 = fmul fast float %88, %78
  %92 = fmul fast float %89, %78
  %93 = fadd fast float %90, %83
  %94 = fadd fast float %91, %84
  %95 = fadd fast float %92, %85
  %96 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %97 = extractvalue %dx.types.CBufRet.f32 %96, 0
  %98 = extractvalue %dx.types.CBufRet.f32 %96, 1
  %99 = extractvalue %dx.types.CBufRet.f32 %96, 2
  %100 = fadd fast float %93, %97
  %101 = fadd fast float %94, %98
  %102 = fadd fast float %95, %99
  %103 = fmul fast float %100, %74
  %104 = fmul fast float %101, %74
  %105 = fmul fast float %102, %74
  %106 = fmul fast float %103, %103
  %107 = fmul fast float %104, %104
  %108 = fadd fast float %106, %107
  %109 = fmul fast float %105, %105
  %110 = fadd fast float %108, %109
  %111 = call float @dx.op.unary.f32(i32 24, float %110)  ; Sqrt(value)
  %112 = fdiv fast float 1.000000e+00, %111
  %113 = fmul fast float %103, %112
  %114 = fmul fast float %104, %112
  %115 = fmul fast float %105, %112
  %116 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %41, i32 %42, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %117 = extractvalue %dx.types.ResRet.f32 %116, 0
  %118 = fcmp fast ogt float %117, -1.000000e+00
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 1
  %121 = select i1 %118, float %120, float 1.000000e+00
  %122 = fadd fast float %117, 1.000000e+00
  %123 = fmul fast float %121, %122
  %124 = call float @dx.op.unary.f32(i32 6, float %123)  ; FAbs(value)
  %125 = fdiv fast float 1.000000e+00, %74
  %126 = fmul fast float %125, %111
  %127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.f32 %127, 1
  %129 = fmul fast float %128, %126
  %130 = fmul fast float %126, %124
  %131 = extractvalue %dx.types.CBufRet.f32 %119, 3
  %132 = fcmp fast oge float %124, %131
  %133 = call float @dx.op.binary.f32(i32 36, float %130, float %129)  ; FMin(a,b)
  %134 = select i1 %132, float %129, float %133
  %135 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.i32 %135, 3
  %137 = icmp eq i32 %136, 0
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 2
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 2
  %142 = fsub fast float %139, %72
  %143 = fadd fast float %142, %141
  br i1 %137, label %155, label %144, !dx.controlflow.hints !41

; <label>:144                                     ; preds = %0
  %145 = fsub fast float -0.000000e+00, %71
  %146 = fsub fast float -0.000000e+00, %70
  %147 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %146, float %145, float %143)  ; Dot3(ax,ay,az,bx,by,bz)
  %148 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %149 = fdiv fast float 1.000000e+00, %148
  %150 = fmul fast float %149, %147
  %151 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %146, float %145, float %142)  ; Dot3(ax,ay,az,bx,by,bz)
  %152 = fmul fast float %149, %151
  %153 = call float @dx.op.binary.f32(i32 36, float %150, float %152)  ; FMin(a,b)
  %154 = call float @dx.op.binary.f32(i32 35, float %150, float %152)  ; FMax(a,b)
  br label %188

; <label>:155                                     ; preds = %0
  %156 = fdiv fast float 1.000000e+00, %113
  %157 = fdiv fast float 1.000000e+00, %114
  %158 = fdiv fast float 1.000000e+00, %115
  %159 = extractvalue %dx.types.CBufRet.f32 %138, 0
  %160 = extractvalue %dx.types.CBufRet.f32 %138, 1
  %161 = extractvalue %dx.types.CBufRet.f32 %140, 0
  %162 = extractvalue %dx.types.CBufRet.f32 %140, 1
  %163 = fsub fast float %159, %70
  %164 = fmul fast float %163, %156
  %165 = fadd fast float %163, %161
  %166 = fmul fast float %165, %156
  %167 = call float @dx.op.binary.f32(i32 36, float %164, float %166)  ; FMin(a,b)
  %168 = call float @dx.op.binary.f32(i32 35, float %164, float %166)  ; FMax(a,b)
  %169 = fsub fast float %160, %71
  %170 = fmul fast float %169, %157
  %171 = fadd fast float %169, %162
  %172 = fmul fast float %171, %157
  %173 = call float @dx.op.binary.f32(i32 36, float %170, float %172)  ; FMin(a,b)
  %174 = call float @dx.op.binary.f32(i32 35, float %167, float %173)  ; FMax(a,b)
  %175 = call float @dx.op.binary.f32(i32 35, float %170, float %172)  ; FMax(a,b)
  %176 = call float @dx.op.binary.f32(i32 36, float %168, float %175)  ; FMin(a,b)
  %177 = fmul fast float %142, %158
  %178 = fmul fast float %143, %158
  %179 = call float @dx.op.binary.f32(i32 36, float %177, float %178)  ; FMin(a,b)
  %180 = call float @dx.op.binary.f32(i32 35, float %174, float %179)  ; FMax(a,b)
  %181 = call float @dx.op.binary.f32(i32 35, float %177, float %178)  ; FMax(a,b)
  %182 = call float @dx.op.binary.f32(i32 36, float %176, float %181)  ; FMin(a,b)
  %183 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %180)  ; FMax(a,b)
  %184 = fcmp fast ult float %182, %183
  br i1 %184, label %188, label %185, !dx.controlflow.hints !42

; <label>:185                                     ; preds = %155
  %186 = call float @dx.op.binary.f32(i32 36, float %180, float %182)  ; FMin(a,b)
  %187 = call float @dx.op.binary.f32(i32 35, float %180, float %182)  ; FMax(a,b)
  br label %188

; <label>:188                                     ; preds = %185, %155, %144
  %189 = phi float [ %153, %144 ], [ %186, %185 ], [ 0.000000e+00, %155 ]
  %190 = phi float [ %154, %144 ], [ %187, %185 ], [ 0.000000e+00, %155 ]
  %191 = fcmp fast oeq float %190, 0.000000e+00
  br i1 %191, label %195, label %192, !dx.controlflow.hints !43

; <label>:192                                     ; preds = %188
  %193 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %189)  ; FMin(a,b)
  %194 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %190)  ; FMax(a,b)
  br label %195

; <label>:195                                     ; preds = %192, %188
  %196 = phi i32 [ 1, %192 ], [ 0, %188 ]
  %197 = phi float [ %194, %192 ], [ -1.000000e+00, %188 ]
  %198 = phi float [ %193, %192 ], [ 0x47EFFFFFE0000000, %188 ]
  %199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %200 = extractvalue %dx.types.CBufRet.f32 %199, 2
  %201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %202 = extractvalue %dx.types.CBufRet.f32 %201, 3
  %203 = fsub fast float -0.000000e+00, %70
  %204 = fsub fast float -0.000000e+00, %71
  %205 = fsub fast float %200, %72
  %206 = fadd fast float %205, %202
  %207 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %203, float %204, float %206)  ; Dot3(ax,ay,az,bx,by,bz)
  %208 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %209 = fdiv fast float 1.000000e+00, %208
  %210 = fmul fast float %209, %207
  %211 = fcmp fast olt float %210, 0.000000e+00
  %212 = fcmp fast ogt float %115, 0.000000e+00
  %213 = and i1 %212, %211
  br i1 %213, label %218, label %214, !dx.controlflow.hints !44

; <label>:214                                     ; preds = %195
  %215 = fcmp fast olt float %115, 0.000000e+00
  br i1 %215, label %216, label %218, !dx.controlflow.hints !45

; <label>:216                                     ; preds = %214
  %217 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %210)  ; FMax(a,b)
  br label %218

; <label>:218                                     ; preds = %216, %214, %195
  %219 = phi float [ 0.000000e+00, %195 ], [ %217, %216 ], [ 0.000000e+00, %214 ]
  %220 = phi float [ 0.000000e+00, %195 ], [ 0x47EFFFFFE0000000, %216 ], [ %210, %214 ]
  %221 = fcmp fast oeq float %220, 0.000000e+00
  br i1 %221, label %225, label %222, !dx.controlflow.hints !46

; <label>:222                                     ; preds = %218
  %223 = call float @dx.op.binary.f32(i32 36, float %198, float %219)  ; FMin(a,b)
  %224 = call float @dx.op.binary.f32(i32 35, float %197, float %220)  ; FMax(a,b)
  br label %225

; <label>:225                                     ; preds = %222, %218
  %226 = phi i32 [ 1, %222 ], [ 0, %218 ]
  %227 = phi float [ %224, %222 ], [ %197, %218 ]
  %228 = phi float [ %223, %222 ], [ %198, %218 ]
  %229 = call float @dx.op.binary.f32(i32 36, float %134, float %227)  ; FMin(a,b)
  %230 = call float @dx.op.binary.f32(i32 35, float %111, float %228)  ; FMax(a,b)
  %231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = extractvalue %dx.types.CBufRet.f32 %231, 0
  %233 = fmul fast float %59, 2.000000e+00
  %234 = fadd fast float %233, -1.000000e+00
  %235 = fmul fast float %232, %234
  %236 = fadd fast float %235, %230
  %237 = fcmp fast olt float %236, %229
  %238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %239 = extractvalue %dx.types.CBufRet.f32 %238, 2
  %240 = fcmp fast olt float %239, 1.000000e+00
  %241 = and i1 %240, %237
  br i1 %241, label %242, label %2280

; <label>:242                                     ; preds = %225
  %243 = fmul fast float %236, %115
  %244 = fadd fast float %243, %72
  %245 = fmul fast float %236, %114
  %246 = fadd fast float %245, %71
  %247 = fmul fast float %236, %113
  %248 = fadd fast float %247, %70
  br label %249

; <label>:249                                     ; preds = %2254, %242
  %250 = phi i32 [ %2256, %2254 ], [ undef, %242 ]
  %251 = phi float [ %2257, %2254 ], [ undef, %242 ]
  %252 = phi i32 [ %506, %2254 ], [ undef, %242 ]
  %253 = phi float [ %507, %2254 ], [ undef, %242 ]
  %254 = phi float [ %2258, %2254 ], [ 0.000000e+00, %242 ]
  %255 = phi float [ %2259, %2254 ], [ 1.000000e+00, %242 ]
  %256 = phi float [ %2260, %2254 ], [ 0.000000e+00, %242 ]
  %257 = phi float [ %2261, %2254 ], [ 0.000000e+00, %242 ]
  %258 = phi float [ %2262, %2254 ], [ 0.000000e+00, %242 ]
  %259 = phi float [ %2272, %2254 ], [ %248, %242 ]
  %260 = phi float [ %2273, %2254 ], [ %246, %242 ]
  %261 = phi float [ %2274, %2254 ], [ %244, %242 ]
  %262 = phi float [ %2255, %2254 ], [ %236, %242 ]
  %263 = phi float [ %2263, %2254 ], [ 0.000000e+00, %242 ]
  %264 = phi float [ %2264, %2254 ], [ 0.000000e+00, %242 ]
  %265 = phi float [ %2265, %2254 ], [ 0.000000e+00, %242 ]
  %266 = phi float [ %2266, %2254 ], [ 0.000000e+00, %242 ]
  %267 = phi float [ %2267, %2254 ], [ 0.000000e+00, %242 ]
  %268 = phi i32 [ %2268, %2254 ], [ 0, %242 ]
  %269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %270 = extractvalue %dx.types.CBufRet.f32 %269, 0
  %271 = icmp eq i32 %196, 0
  br i1 %271, label %328, label %272, !dx.controlflow.hints !47

; <label>:272                                     ; preds = %249
  %273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %274 = extractvalue %dx.types.CBufRet.f32 %273, 0
  %275 = extractvalue %dx.types.CBufRet.f32 %273, 1
  %276 = extractvalue %dx.types.CBufRet.f32 %273, 2
  %277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %278 = extractvalue %dx.types.CBufRet.f32 %277, 0
  %279 = extractvalue %dx.types.CBufRet.f32 %277, 1
  %280 = extractvalue %dx.types.CBufRet.f32 %277, 2
  %281 = fsub fast float %259, %278
  %282 = fsub fast float %260, %279
  %283 = fsub fast float %261, %280
  %284 = fmul fast float %281, %274
  %285 = fmul fast float %282, %275
  %286 = fmul fast float %283, %276
  %287 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %288 = extractvalue %dx.types.CBufRet.i32 %287, 3
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %293, label %290, !dx.controlflow.hints !48

; <label>:290                                     ; preds = %272
  %291 = call float @dx.op.unary.f32(i32 22, float %284)  ; Frc(value)
  %292 = call float @dx.op.unary.f32(i32 22, float %285)  ; Frc(value)
  br label %293

; <label>:293                                     ; preds = %290, %272
  %294 = phi float [ %291, %290 ], [ %284, %272 ]
  %295 = phi float [ %292, %290 ], [ %285, %272 ]
  %296 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %22, float %294, float %295, float %286, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %297 = extractvalue %dx.types.ResRet.f32 %296, 0
  %298 = fmul fast float %297, 2.000000e+00
  %299 = fadd fast float %298, -1.000000e+00
  %300 = extractvalue %dx.types.CBufRet.f32 %273, 3
  %301 = fmul fast float %299, %300
  %302 = fcmp fast olt float %301, 0.000000e+00
  %303 = fcmp fast oge float %286, 0.000000e+00
  %304 = fcmp fast ole float %286, 1.000000e+00
  br i1 %289, label %307, label %305, !dx.controlflow.hints !49

; <label>:305                                     ; preds = %293
  %306 = and i1 %303, %304
  br label %317

; <label>:307                                     ; preds = %293
  %308 = fcmp fast oge float %284, 0.000000e+00
  %309 = fcmp fast oge float %285, 0.000000e+00
  %310 = and i1 %308, %309
  %311 = and i1 %303, %310
  %312 = fcmp fast ole float %284, 1.000000e+00
  %313 = fcmp fast ole float %285, 1.000000e+00
  %314 = and i1 %312, %313
  %315 = and i1 %304, %314
  %316 = and i1 %311, %315
  br label %317

; <label>:317                                     ; preds = %307, %305
  %318 = phi i1 [ %306, %305 ], [ %316, %307 ]
  %319 = and i1 %302, %318
  %320 = call float @dx.op.unary.f32(i32 6, float %301)  ; FAbs(value)
  %321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %322 = extractvalue %dx.types.CBufRet.f32 %321, 1
  %323 = extractvalue %dx.types.CBufRet.f32 %321, 0
  %324 = call float @dx.op.binary.f32(i32 35, float %320, float %323)  ; FMax(a,b)
  %325 = select i1 %319, float %322, float %324
  %326 = zext i1 %319 to i32
  %327 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %325)  ; FMin(a,b)
  br label %328

; <label>:328                                     ; preds = %317, %249
  %329 = phi i32 [ %326, %317 ], [ 0, %249 ]
  %330 = phi float [ %327, %317 ], [ 0x47EFFFFFE0000000, %249 ]
  %331 = icmp eq i32 %226, 0
  br i1 %331, label %504, label %332, !dx.controlflow.hints !50

; <label>:332                                     ; preds = %328
  %333 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %334 = extractvalue %dx.types.CBufRet.i32 %333, 1
  %335 = and i32 %334, 1
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %494, !dx.controlflow.hints !51

; <label>:337                                     ; preds = %332
  %338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %339 = extractvalue %dx.types.CBufRet.f32 %338, 2
  %340 = extractvalue %dx.types.CBufRet.f32 %338, 3
  %341 = fmul fast float %339, %259
  %342 = fmul fast float %340, %260
  %343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %344 = extractvalue %dx.types.CBufRet.f32 %343, 0
  %345 = extractvalue %dx.types.CBufRet.f32 %343, 1
  %346 = fadd fast float %341, %344
  %347 = fadd fast float %342, %345
  %348 = call float @dx.op.unary.f32(i32 7, float %346)  ; Saturate(value)
  %349 = call float @dx.op.unary.f32(i32 7, float %347)  ; Saturate(value)
  %350 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %24, float %348, float %349, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %351 = extractvalue %dx.types.ResRet.f32 %350, 0
  %352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %353 = extractvalue %dx.types.CBufRet.f32 %352, 0
  %354 = fmul fast float %353, %351
  %355 = fsub fast float %346, %348
  %356 = fsub fast float %347, %349
  %357 = extractvalue %dx.types.CBufRet.f32 %338, 0
  %358 = extractvalue %dx.types.CBufRet.f32 %338, 1
  %359 = fmul fast float %357, %355
  %360 = fmul fast float %358, %356
  %361 = fmul fast float %359, %359
  %362 = fmul fast float %360, %360
  %363 = fadd fast float %361, %362
  %364 = call float @dx.op.unary.f32(i32 24, float %363)  ; Sqrt(value)
  %365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %366 = extractvalue %dx.types.CBufRet.f32 %365, 3
  %367 = fmul fast float %366, %364
  %368 = call float @dx.op.unary.f32(i32 7, float %367)  ; Saturate(value)
  %369 = extractvalue %dx.types.CBufRet.f32 %365, 2
  %370 = fsub fast float %369, %354
  %371 = fmul fast float %370, %368
  %372 = extractvalue %dx.types.CBufRet.f32 %352, 1
  %373 = fsub fast float %261, %354
  %374 = fsub fast float %373, %372
  %375 = fsub fast float %374, %371
  %376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %377 = extractvalue %dx.types.CBufRet.f32 %376, 2
  %378 = fsub fast float %375, %377
  %379 = fcmp fast olt float %378, 0.000000e+00
  %380 = call float @dx.op.unary.f32(i32 6, float %378)  ; FAbs(value)
  %381 = extractvalue %dx.types.CBufRet.i32 %333, 0
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %436, label %383

; <label>:383                                     ; preds = %337
  br label %384

; <label>:384                                     ; preds = %423, %383
  %385 = phi i32 [ %429, %423 ], [ 1, %383 ]
  %386 = phi float [ %431, %423 ], [ 0x47EFFFFFE0000000, %383 ]
  %387 = phi i32 [ %432, %423 ], [ 0, %383 ]
  %388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %389 = extractvalue %dx.types.CBufRet.f32 %388, 1
  %390 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %391 = extractvalue %dx.types.CBufRet.i32 %390, 1
  %392 = and i32 %391, 8
  %393 = icmp eq i32 %392, 0
  %394 = fcmp fast ogt float %389, %375
  %395 = or i1 %394, %393
  %396 = add i32 %387, 171
  %397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 %396)  ; CBufferLoadLegacy(handle,regIndex)
  %398 = extractvalue %dx.types.CBufRet.f32 %397, 0
  %399 = extractvalue %dx.types.CBufRet.f32 %397, 1
  %400 = extractvalue %dx.types.CBufRet.f32 %397, 2
  br i1 %395, label %401, label %407, !dx.controlflow.hints !52

; <label>:401                                     ; preds = %384
  %402 = fsub fast float %398, %259
  %403 = fsub fast float %399, %260
  %404 = fmul fast float %402, %402
  %405 = fmul fast float %403, %403
  %406 = fadd fast float %404, %405
  br label %423

; <label>:407                                     ; preds = %384
  %408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %409 = extractvalue %dx.types.CBufRet.f32 %408, 2
  %410 = extractvalue %dx.types.CBufRet.f32 %388, 2
  %411 = fmul fast float %410, %409
  %412 = fsub fast float %411, %389
  %413 = fdiv fast float %400, %412
  %414 = fsub fast float %259, %398
  %415 = fsub fast float %260, %399
  %416 = fsub fast float %375, %389
  %417 = fmul fast float %413, %416
  %418 = fmul fast float %414, %414
  %419 = fmul fast float %415, %415
  %420 = fadd fast float %418, %419
  %421 = fmul fast float %417, %417
  %422 = fadd fast float %420, %421
  br label %423

; <label>:423                                     ; preds = %407, %401
  %424 = phi float [ %406, %401 ], [ %422, %407 ]
  %425 = call float @dx.op.unary.f32(i32 24, float %424)  ; Sqrt(value)
  %426 = fsub float %400, %425
  %427 = fcmp fast olt float %426, 0.000000e+00
  %428 = zext i1 %427 to i32
  %429 = and i32 %428, %385
  %430 = call float @dx.op.unary.f32(i32 6, float %426)  ; FAbs(value)
  %431 = call float @dx.op.binary.f32(i32 36, float %386, float %430)  ; FMin(a,b)
  %432 = add i32 %387, 1
  %433 = extractvalue %dx.types.CBufRet.i32 %390, 0
  %434 = icmp ult i32 %432, %433
  br i1 %434, label %384, label %435

; <label>:435                                     ; preds = %423
  br label %436

; <label>:436                                     ; preds = %435, %337
  %437 = phi i32 [ 1, %337 ], [ %429, %435 ]
  %438 = phi float [ 0x47EFFFFFE0000000, %337 ], [ %431, %435 ]
  br label %439

; <label>:439                                     ; preds = %439, %436
  %440 = phi i32 [ %437, %436 ], [ %479, %439 ]
  %441 = phi float [ 0x47EFFFFFE0000000, %436 ], [ %481, %439 ]
  %442 = phi i32 [ 0, %436 ], [ %482, %439 ]
  %443 = add nuw nsw i32 %442, 191
  %444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 %443)  ; CBufferLoadLegacy(handle,regIndex)
  %445 = extractvalue %dx.types.CBufRet.f32 %444, 0
  %446 = extractvalue %dx.types.CBufRet.f32 %444, 1
  %447 = extractvalue %dx.types.CBufRet.f32 %444, 2
  %448 = add nuw nsw i32 %442, 195
  %449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 %448)  ; CBufferLoadLegacy(handle,regIndex)
  %450 = extractvalue %dx.types.CBufRet.f32 %449, 0
  %451 = extractvalue %dx.types.CBufRet.f32 %449, 1
  %452 = extractvalue %dx.types.CBufRet.f32 %449, 2
  %453 = fsub fast float %259, %445
  %454 = fsub fast float %260, %446
  %455 = fsub fast float %375, %447
  %456 = call float @dx.op.unary.f32(i32 6, float %453)  ; FAbs(value)
  %457 = call float @dx.op.unary.f32(i32 6, float %454)  ; FAbs(value)
  %458 = call float @dx.op.unary.f32(i32 6, float %455)  ; FAbs(value)
  %459 = fsub fast float %456, %450
  %460 = fsub fast float %457, %451
  %461 = fsub fast float %458, %452
  %462 = call float @dx.op.binary.f32(i32 35, float %459, float 0.000000e+00)  ; FMax(a,b)
  %463 = call float @dx.op.binary.f32(i32 35, float %460, float 0.000000e+00)  ; FMax(a,b)
  %464 = call float @dx.op.binary.f32(i32 35, float %461, float 0.000000e+00)  ; FMax(a,b)
  %465 = fmul fast float %462, %462
  %466 = fmul fast float %463, %463
  %467 = fadd fast float %466, %465
  %468 = fmul fast float %464, %464
  %469 = fadd fast float %467, %468
  %470 = call float @dx.op.unary.f32(i32 24, float %469)  ; Sqrt(value)
  %471 = call float @dx.op.binary.f32(i32 35, float %460, float %461)  ; FMax(a,b)
  %472 = call float @dx.op.binary.f32(i32 35, float %459, float %471)  ; FMax(a,b)
  %473 = call float @dx.op.binary.f32(i32 36, float %472, float 0.000000e+00)  ; FMin(a,b)
  %474 = fadd fast float %473, %470
  %475 = fsub fast float -0.000000e+00, %474
  %476 = fcmp ogt float %474, -0.000000e+00
  %477 = icmp ne i32 %440, 0
  %478 = and i1 %477, %476
  %479 = zext i1 %478 to i32
  %480 = call float @dx.op.unary.f32(i32 6, float %475)  ; FAbs(value)
  %481 = call float @dx.op.binary.f32(i32 36, float %441, float %480)  ; FMin(a,b)
  %482 = add nuw nsw i32 %442, 1
  %483 = icmp eq i32 %482, 4
  br i1 %483, label %484, label %439

; <label>:484                                     ; preds = %439
  %485 = call float @dx.op.binary.f32(i32 36, float %380, float %481)  ; FMin(a,b)
  %486 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %487 = extractvalue %dx.types.CBufRet.i32 %486, 1
  %488 = and i32 %487, 2
  %489 = icmp ne i32 %488, 0
  %490 = xor i1 %478, %489
  %491 = call float @dx.op.binary.f32(i32 36, float %485, float %438)  ; FMin(a,b)
  %492 = and i1 %490, %379
  %493 = zext i1 %492 to i32
  br label %494

; <label>:494                                     ; preds = %484, %332
  %495 = phi i32 [ %252, %332 ], [ %493, %484 ]
  %496 = phi float [ 0.000000e+00, %332 ], [ %491, %484 ]
  %497 = phi float [ %261, %332 ], [ %375, %484 ]
  %498 = icmp ne i32 %495, 0
  %499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %500 = extractvalue %dx.types.CBufRet.f32 %499, 3
  %501 = call float @dx.op.binary.f32(i32 35, float %496, float %500)  ; FMax(a,b)
  %502 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %501)  ; FMin(a,b)
  %503 = zext i1 %498 to i32
  br label %504

; <label>:504                                     ; preds = %494, %328
  %505 = phi i32 [ %503, %494 ], [ 0, %328 ]
  %506 = phi i32 [ %495, %494 ], [ %252, %328 ]
  %507 = phi float [ %497, %494 ], [ %253, %328 ]
  %508 = phi float [ %502, %494 ], [ 0x47EFFFFFE0000000, %328 ]
  %509 = extractvalue %dx.types.CBufRet.f32 %269, 2
  %510 = fmul fast float %509, %262
  %511 = call float @dx.op.unary.f32(i32 23, float %510)  ; Log(value)
  %512 = fmul fast float %511, 0x3FE62E4300000000
  %513 = call float @dx.op.binary.f32(i32 35, float %512, float 1.000000e+00)  ; FMax(a,b)
  %514 = fmul fast float %513, %508
  %515 = call float @dx.op.binary.f32(i32 36, float %514, float %330)  ; FMin(a,b)
  %516 = call float @dx.op.binary.f32(i32 35, float %515, float %270)  ; FMax(a,b)
  %517 = fadd fast float %229, 0x3F1A36E2E0000000
  %518 = fsub fast float %517, %262
  %519 = call float @dx.op.binary.f32(i32 36, float %518, float %516)  ; FMin(a,b)
  %520 = icmp eq i32 %329, 0
  br i1 %520, label %710, label %521, !dx.controlflow.hints !53

; <label>:521                                     ; preds = %504
  %522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %523 = extractvalue %dx.types.CBufRet.f32 %522, 3
  %524 = fmul fast float %523, %262
  %525 = fcmp fast oeq float %524, 0.000000e+00
  br i1 %525, label %540, label %526, !dx.controlflow.hints !54

; <label>:526                                     ; preds = %521
  %527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %528 = extractvalue %dx.types.CBufRet.f32 %527, 3
  %529 = fmul fast float %528, %524
  %530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %531 = extractvalue %dx.types.CBufRet.f32 %530, 0
  %532 = extractvalue %dx.types.CBufRet.f32 %530, 1
  %533 = extractvalue %dx.types.CBufRet.f32 %530, 2
  %534 = fmul fast float %531, %529
  %535 = fmul fast float %532, %529
  %536 = fmul fast float %533, %529
  %537 = call float @dx.op.unary.f32(i32 23, float %534)  ; Log(value)
  %538 = call float @dx.op.unary.f32(i32 23, float %535)  ; Log(value)
  %539 = call float @dx.op.unary.f32(i32 23, float %536)  ; Log(value)
  br label %540

; <label>:540                                     ; preds = %526, %521
  %541 = phi float [ %537, %526 ], [ 0.000000e+00, %521 ]
  %542 = phi float [ %538, %526 ], [ 0.000000e+00, %521 ]
  %543 = phi float [ %539, %526 ], [ 0.000000e+00, %521 ]
  %544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %545 = extractvalue %dx.types.CBufRet.f32 %544, 0
  %546 = extractvalue %dx.types.CBufRet.f32 %544, 1
  %547 = extractvalue %dx.types.CBufRet.f32 %544, 2
  %548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %549 = extractvalue %dx.types.CBufRet.f32 %548, 0
  %550 = extractvalue %dx.types.CBufRet.f32 %548, 1
  %551 = extractvalue %dx.types.CBufRet.f32 %548, 2
  %552 = fsub fast float %259, %549
  %553 = fsub fast float %260, %550
  %554 = fsub fast float %261, %551
  %555 = fmul fast float %552, %545
  %556 = fmul fast float %553, %546
  %557 = fmul fast float %554, %547
  %558 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %559 = extractvalue %dx.types.CBufRet.i32 %558, 0
  %560 = extractvalue %dx.types.CBufRet.i32 %558, 1
  %561 = uitofp i32 %559 to float
  %562 = uitofp i32 %560 to float
  %563 = fmul fast float %555, %561
  %564 = fmul fast float %556, %562
  %565 = fadd fast float %563, 5.000000e-01
  %566 = fadd fast float %564, 5.000000e-01
  %567 = call float @dx.op.unary.f32(i32 22, float %565)  ; Frc(value)
  %568 = call float @dx.op.unary.f32(i32 22, float %566)  ; Frc(value)
  %569 = call float @dx.op.unary.f32(i32 27, float %565)  ; Round_ni(value)
  %570 = call float @dx.op.unary.f32(i32 27, float %566)  ; Round_ni(value)
  %571 = fadd fast float %569, 1.000000e+00
  %572 = fadd fast float %570, 1.000000e+00
  %573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %574 = extractvalue %dx.types.CBufRet.f32 %573, 0
  %575 = extractvalue %dx.types.CBufRet.f32 %573, 1
  %576 = fmul fast float %574, %571
  %577 = fmul fast float %575, %572
  %578 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %23, float %576, float %577, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %579 = extractvalue %dx.types.ResRet.f32 %578, 0
  %580 = extractvalue %dx.types.ResRet.f32 %578, 1
  %581 = extractvalue %dx.types.ResRet.f32 %578, 2
  %582 = extractvalue %dx.types.ResRet.f32 %578, 3
  %583 = extractvalue %dx.types.CBufRet.i32 %558, 2
  %584 = extractvalue %dx.types.CBufRet.f32 %573, 2
  %585 = uitofp i32 %583 to float
  %586 = fadd fast float %585, -1.000000e+00
  %587 = fmul fast float %586, %579
  %588 = fmul fast float %586, %580
  %589 = fmul fast float %586, %581
  %590 = fmul fast float %586, %582
  %591 = fadd fast float %587, 5.000000e-01
  %592 = fadd fast float %588, 5.000000e-01
  %593 = fadd fast float %589, 5.000000e-01
  %594 = fadd fast float %590, 5.000000e-01
  %595 = fptoui float %591 to i32
  %596 = fptoui float %592 to i32
  %597 = fptoui float %593 to i32
  %598 = fptoui float %594 to i32
  %599 = uitofp i32 %595 to float
  %600 = uitofp i32 %596 to float
  %601 = uitofp i32 %597 to float
  %602 = uitofp i32 %598 to float
  %603 = fadd fast float %599, 5.000000e-01
  %604 = fadd fast float %600, 5.000000e-01
  %605 = fadd fast float %601, 5.000000e-01
  %606 = fadd fast float %602, 5.000000e-01
  %607 = fmul fast float %603, %584
  %608 = fmul fast float %604, %584
  %609 = fmul fast float %605, %584
  %610 = fmul fast float %606, %584
  %611 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %24, float %607, float %557, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %612 = extractvalue %dx.types.ResRet.f32 %611, 0
  %613 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %24, float %608, float %557, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %614 = extractvalue %dx.types.ResRet.f32 %613, 0
  %615 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %24, float %609, float %557, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %616 = extractvalue %dx.types.ResRet.f32 %615, 0
  %617 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %24, float %610, float %557, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %618 = extractvalue %dx.types.ResRet.f32 %617, 0
  %619 = fsub fast float %616, %618
  %620 = fmul fast float %619, %567
  %621 = fadd fast float %620, %618
  %622 = fsub fast float %614, %612
  %623 = fmul fast float %622, %567
  %624 = fadd fast float %623, %612
  %625 = fsub fast float %624, %621
  %626 = fmul fast float %625, %568
  %627 = fadd fast float %626, %621
  %628 = fcmp fast ogt float %627, 0.000000e+00
  br i1 %628, label %629, label %697, !dx.controlflow.hints !55

; <label>:629                                     ; preds = %540
  %630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %631 = extractvalue %dx.types.CBufRet.f32 %630, 0
  %632 = extractvalue %dx.types.CBufRet.f32 %630, 1
  %633 = extractvalue %dx.types.CBufRet.f32 %630, 2
  %634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %635 = extractvalue %dx.types.CBufRet.f32 %634, 0
  %636 = extractvalue %dx.types.CBufRet.f32 %634, 1
  %637 = extractvalue %dx.types.CBufRet.f32 %634, 2
  %638 = fmul fast float %553, %545
  %639 = fmul fast float %554, %545
  %640 = fadd fast float %555, %635
  %641 = fadd fast float %638, %636
  %642 = fadd fast float %639, %637
  %643 = fmul fast float %640, %631
  %644 = fmul fast float %641, %631
  %645 = fmul fast float %642, %631
  %646 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %21, float %643, float %644, float %645, float undef, i32 0, i32 0, i32 0, float %541)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %647 = extractvalue %dx.types.ResRet.f32 %646, 0
  %648 = fmul fast float %640, %632
  %649 = fmul fast float %641, %632
  %650 = fmul fast float %642, %632
  %651 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %21, float %648, float %649, float %650, float undef, i32 0, i32 0, i32 0, float %542)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %652 = extractvalue %dx.types.ResRet.f32 %651, 1
  %653 = fmul fast float %640, %633
  %654 = fmul fast float %641, %633
  %655 = fmul fast float %642, %633
  %656 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %21, float %653, float %654, float %655, float undef, i32 0, i32 0, i32 0, float %543)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %657 = extractvalue %dx.types.ResRet.f32 %656, 2
  %658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %659 = extractvalue %dx.types.CBufRet.f32 %658, 1
  %660 = fmul fast float %652, %647
  %661 = fmul fast float %660, %657
  %662 = call float @dx.op.unary.f32(i32 23, float %661)  ; Log(value)
  %663 = fmul fast float %662, %659
  %664 = call float @dx.op.unary.f32(i32 21, float %663)  ; Exp(value)
  %665 = extractvalue %dx.types.CBufRet.f32 %658, 2
  %666 = fmul fast float %627, %627
  %667 = fmul fast float %666, %664
  %668 = fmul fast float %667, %665
  %669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %670 = extractvalue %dx.types.CBufRet.f32 %669, 3
  %671 = fmul fast float %670, %668
  %672 = bitcast float %671 to i32
  %673 = sitofp i32 %672 to float
  %674 = fptosi float %673 to i32
  %675 = bitcast i32 %674 to float
  %676 = fsub fast float 1.000000e+00, %668
  %677 = bitcast float %676 to i32
  %678 = sitofp i32 %677 to float
  %679 = fptosi float %678 to i32
  %680 = bitcast i32 %679 to float
  %681 = fadd fast float %675, %680
  %682 = bitcast float %681 to i32
  %683 = sub nsw i32 2129859010, %682
  %684 = bitcast i32 %683 to float
  %685 = fmul fast float %684, %675
  %686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %687 = extractvalue %dx.types.CBufRet.f32 %686, 2
  %688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %689 = extractvalue %dx.types.CBufRet.f32 %688, 0
  %690 = fmul fast float %685, %689
  %691 = fadd fast float %690, 1.000000e+00
  %692 = bitcast float %691 to i32
  %693 = sub nsw i32 2129859010, %692
  %694 = bitcast i32 %693 to float
  %695 = fmul fast float %685, %687
  %696 = fmul fast float %695, %694
  br label %697

; <label>:697                                     ; preds = %629, %540
  %698 = phi float [ %696, %629 ], [ %627, %540 ]
  %699 = fmul fast float %698, %519
  %700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %701 = extractvalue %dx.types.CBufRet.f32 %700, 0
  %702 = extractvalue %dx.types.CBufRet.f32 %700, 1
  %703 = extractvalue %dx.types.CBufRet.f32 %700, 2
  %704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %705 = extractvalue %dx.types.CBufRet.f32 %704, 1
  %706 = fmul fast float %701, %699
  %707 = fmul fast float %702, %699
  %708 = fmul fast float %703, %699
  %709 = fmul fast float %705, %699
  br label %710

; <label>:710                                     ; preds = %697, %504
  %711 = phi float [ %699, %697 ], [ 0.000000e+00, %504 ]
  %712 = phi float [ %709, %697 ], [ 0.000000e+00, %504 ]
  %713 = phi float [ %706, %697 ], [ 0.000000e+00, %504 ]
  %714 = phi float [ %707, %697 ], [ 0.000000e+00, %504 ]
  %715 = phi float [ %708, %697 ], [ 0.000000e+00, %504 ]
  %716 = icmp eq i32 %505, 0
  br i1 %716, label %760, label %717, !dx.controlflow.hints !56

; <label>:717                                     ; preds = %710
  %718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %719 = extractvalue %dx.types.CBufRet.f32 %718, 1
  %720 = fsub fast float %519, %719
  %721 = extractvalue %dx.types.CBufRet.f32 %718, 3
  %722 = fmul fast float %720, %721
  %723 = call float @dx.op.unary.f32(i32 7, float %722)  ; Saturate(value)
  %724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %725 = extractvalue %dx.types.CBufRet.f32 %724, 3
  %726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %727 = extractvalue %dx.types.CBufRet.f32 %726, 2
  %728 = fsub fast float %727, %507
  %729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %730 = extractvalue %dx.types.CBufRet.f32 %729, 3
  %731 = fmul fast float %728, %730
  %732 = call float @dx.op.unary.f32(i32 7, float %731)  ; Saturate(value)
  %733 = fmul fast float %732, %725
  %734 = extractvalue %dx.types.CBufRet.f32 %729, 0
  %735 = fsub fast float %262, %734
  %736 = extractvalue %dx.types.CBufRet.f32 %729, 1
  %737 = fmul fast float %735, %736
  %738 = call float @dx.op.unary.f32(i32 7, float %737)  ; Saturate(value)
  %739 = fsub fast float 1.000000e+00, %723
  %740 = fmul fast float %738, %739
  %741 = fadd fast float %740, %723
  %742 = extractvalue %dx.types.CBufRet.f32 %718, 0
  %743 = fsub fast float %733, %742
  %744 = fmul fast float %743, %741
  %745 = fadd fast float %744, %742
  %746 = extractvalue %dx.types.CBufRet.f32 %724, 0
  %747 = extractvalue %dx.types.CBufRet.f32 %724, 1
  %748 = extractvalue %dx.types.CBufRet.f32 %724, 2
  %749 = fmul fast float %745, %519
  %750 = extractvalue %dx.types.CBufRet.f32 %729, 2
  %751 = fmul fast float %749, %746
  %752 = fmul fast float %749, %747
  %753 = fmul fast float %749, %748
  %754 = fadd fast float %751, %713
  %755 = fadd fast float %752, %714
  %756 = fadd fast float %753, %715
  %757 = fmul fast float %749, %750
  %758 = fadd fast float %757, %712
  %759 = fadd fast float %749, %711
  br label %760

; <label>:760                                     ; preds = %717, %710
  %761 = phi float [ %759, %717 ], [ %711, %710 ]
  %762 = phi float [ %758, %717 ], [ %712, %710 ]
  %763 = phi float [ %754, %717 ], [ %713, %710 ]
  %764 = phi float [ %755, %717 ], [ %714, %710 ]
  %765 = phi float [ %756, %717 ], [ %715, %710 ]
  %766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %767 = extractvalue %dx.types.CBufRet.f32 %766, 1
  %768 = fcmp fast ogt float %761, %767
  br i1 %768, label %769, label %775, !dx.controlflow.hints !57

; <label>:769                                     ; preds = %760
  %770 = fdiv fast float 1.000000e+00, %761
  %771 = fmul fast float %770, %763
  %772 = fmul fast float %770, %764
  %773 = fmul fast float %770, %765
  %774 = fmul fast float %770, %762
  br label %775

; <label>:775                                     ; preds = %769, %760
  %776 = phi float [ %774, %769 ], [ %762, %760 ]
  %777 = phi float [ %771, %769 ], [ %763, %760 ]
  %778 = phi float [ %772, %769 ], [ %764, %760 ]
  %779 = phi float [ %773, %769 ], [ %765, %760 ]
  br i1 %768, label %782, label %780, !dx.controlflow.hints !58

; <label>:780                                     ; preds = %775
  %781 = fadd fast float %519, %262
  br label %2254

; <label>:782                                     ; preds = %775
  %783 = fmul fast float %761, 0xBFF7154760000000
  %784 = call float @dx.op.unary.f32(i32 21, float %783)  ; Exp(value)
  %785 = call float @dx.op.unary.f32(i32 7, float %784)  ; Saturate(value)
  %786 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %787 = extractvalue %dx.types.CBufRet.i32 %786, 0
  %788 = icmp eq i32 %787, 1
  br i1 %788, label %789, label %824, !dx.controlflow.hints !59

; <label>:789                                     ; preds = %782
  %790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %791 = extractvalue %dx.types.CBufRet.f32 %790, 0
  %792 = extractvalue %dx.types.CBufRet.f32 %790, 1
  %793 = fsub fast float %259, %791
  %794 = fsub fast float %260, %792
  %795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %796 = extractvalue %dx.types.CBufRet.f32 %795, 0
  %797 = extractvalue %dx.types.CBufRet.f32 %795, 1
  %798 = fmul fast float %793, %796
  %799 = fmul fast float %794, %797
  %800 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %24, float %798, float %799, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %801 = extractvalue %dx.types.ResRet.f32 %800, 0
  %802 = fcmp fast ogt float %801, 0.000000e+00
  %803 = extractvalue %dx.types.CBufRet.i32 %786, 3
  %804 = icmp ne i32 %803, 0
  %805 = and i1 %802, %804
  br i1 %805, label %806, label %824, !dx.controlflow.hints !60

; <label>:806                                     ; preds = %789
  %807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %808 = extractvalue %dx.types.CBufRet.f32 %807, 0
  %809 = extractvalue %dx.types.CBufRet.f32 %807, 1
  %810 = fsub fast float %259, %808
  %811 = fsub fast float %260, %809
  %812 = fmul fast float %810, %810
  %813 = fmul fast float %811, %811
  %814 = fadd fast float %812, %813
  %815 = uitofp i32 %803 to float
  %816 = fmul fast float %815, %815
  %817 = fcmp fast ogt float %814, %816
  br i1 %817, label %824, label %818, !dx.controlflow.hints !61

; <label>:818                                     ; preds = %806
  %819 = call float @dx.op.unary.f32(i32 24, float %814)  ; Sqrt(value)
  %820 = fsub fast float %815, %819
  %821 = fmul fast float %820, 0x3F75555560000000
  %822 = call float @dx.op.unary.f32(i32 7, float %821)  ; Saturate(value)
  %823 = call float @dx.op.binary.f32(i32 36, float %822, float %801)  ; FMin(a,b)
  br label %824

; <label>:824                                     ; preds = %818, %806, %789, %782
  %825 = phi float [ 1.000000e+00, %782 ], [ %823, %818 ], [ %801, %789 ], [ 0.000000e+00, %806 ]
  %826 = fcmp fast ogt float %825, 0.000000e+00
  br i1 %826, label %827, label %900, !dx.controlflow.hints !62

; <label>:827                                     ; preds = %824
  %828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %829 = extractvalue %dx.types.ResRet.i32 %828, 0
  %830 = extractvalue %dx.types.ResRet.i32 %828, 1
  %831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %832 = extractvalue %dx.types.ResRet.i32 %831, 0
  %833 = extractvalue %dx.types.ResRet.i32 %831, 1
  %834 = extractvalue %dx.types.ResRet.i32 %831, 2
  %835 = extractvalue %dx.types.ResRet.i32 %831, 3
  %836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %837 = extractvalue %dx.types.ResRet.i32 %836, 0
  %838 = extractvalue %dx.types.ResRet.i32 %836, 1
  %839 = extractvalue %dx.types.ResRet.i32 %836, 2
  %840 = extractvalue %dx.types.ResRet.i32 %836, 3
  %841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %842 = extractvalue %dx.types.ResRet.i32 %841, 0
  %843 = extractvalue %dx.types.ResRet.i32 %841, 1
  %844 = extractvalue %dx.types.ResRet.i32 %841, 2
  %845 = extractvalue %dx.types.ResRet.i32 %841, 3
  %846 = and i32 %842, 65535
  %847 = call float @dx.op.legacyF16ToF32(i32 131, i32 %846)  ; LegacyF16ToF32(value)
  %848 = lshr i32 %842, 16
  %849 = call float @dx.op.legacyF16ToF32(i32 131, i32 %848)  ; LegacyF16ToF32(value)
  %850 = and i32 %843, 65535
  %851 = call float @dx.op.legacyF16ToF32(i32 131, i32 %850)  ; LegacyF16ToF32(value)
  %852 = lshr i32 %843, 16
  %853 = call float @dx.op.legacyF16ToF32(i32 131, i32 %852)  ; LegacyF16ToF32(value)
  %854 = and i32 %844, 65535
  %855 = call float @dx.op.legacyF16ToF32(i32 131, i32 %854)  ; LegacyF16ToF32(value)
  %856 = lshr i32 %844, 16
  %857 = call float @dx.op.legacyF16ToF32(i32 131, i32 %856)  ; LegacyF16ToF32(value)
  %858 = and i32 %845, 65535
  %859 = call float @dx.op.legacyF16ToF32(i32 131, i32 %858)  ; LegacyF16ToF32(value)
  %860 = lshr i32 %845, 16
  %861 = call float @dx.op.legacyF16ToF32(i32 131, i32 %860)  ; LegacyF16ToF32(value)
  %862 = and i32 %837, 65535
  %863 = call float @dx.op.legacyF16ToF32(i32 131, i32 %862)  ; LegacyF16ToF32(value)
  %864 = lshr i32 %837, 16
  %865 = call float @dx.op.legacyF16ToF32(i32 131, i32 %864)  ; LegacyF16ToF32(value)
  %866 = and i32 %838, 65535
  %867 = call float @dx.op.legacyF16ToF32(i32 131, i32 %866)  ; LegacyF16ToF32(value)
  %868 = lshr i32 %838, 16
  %869 = call float @dx.op.legacyF16ToF32(i32 131, i32 %868)  ; LegacyF16ToF32(value)
  %870 = and i32 %839, 65535
  %871 = call float @dx.op.legacyF16ToF32(i32 131, i32 %870)  ; LegacyF16ToF32(value)
  %872 = lshr i32 %839, 16
  %873 = call float @dx.op.legacyF16ToF32(i32 131, i32 %872)  ; LegacyF16ToF32(value)
  %874 = and i32 %840, 65535
  %875 = call float @dx.op.legacyF16ToF32(i32 131, i32 %874)  ; LegacyF16ToF32(value)
  %876 = lshr i32 %840, 16
  %877 = call float @dx.op.legacyF16ToF32(i32 131, i32 %876)  ; LegacyF16ToF32(value)
  %878 = and i32 %832, 65535
  %879 = call float @dx.op.legacyF16ToF32(i32 131, i32 %878)  ; LegacyF16ToF32(value)
  %880 = lshr i32 %832, 16
  %881 = call float @dx.op.legacyF16ToF32(i32 131, i32 %880)  ; LegacyF16ToF32(value)
  %882 = and i32 %833, 65535
  %883 = call float @dx.op.legacyF16ToF32(i32 131, i32 %882)  ; LegacyF16ToF32(value)
  %884 = lshr i32 %833, 16
  %885 = call float @dx.op.legacyF16ToF32(i32 131, i32 %884)  ; LegacyF16ToF32(value)
  %886 = and i32 %834, 65535
  %887 = call float @dx.op.legacyF16ToF32(i32 131, i32 %886)  ; LegacyF16ToF32(value)
  %888 = lshr i32 %834, 16
  %889 = call float @dx.op.legacyF16ToF32(i32 131, i32 %888)  ; LegacyF16ToF32(value)
  %890 = and i32 %835, 65535
  %891 = call float @dx.op.legacyF16ToF32(i32 131, i32 %890)  ; LegacyF16ToF32(value)
  %892 = lshr i32 %835, 16
  %893 = call float @dx.op.legacyF16ToF32(i32 131, i32 %892)  ; LegacyF16ToF32(value)
  %894 = and i32 %829, 65535
  %895 = call float @dx.op.legacyF16ToF32(i32 131, i32 %894)  ; LegacyF16ToF32(value)
  %896 = lshr i32 %829, 16
  %897 = call float @dx.op.legacyF16ToF32(i32 131, i32 %896)  ; LegacyF16ToF32(value)
  %898 = and i32 %830, 65535
  %899 = call float @dx.op.legacyF16ToF32(i32 131, i32 %898)  ; LegacyF16ToF32(value)
  br label %900

; <label>:900                                     ; preds = %827, %824
  %901 = phi float [ %899, %827 ], [ 0.000000e+00, %824 ]
  %902 = phi float [ %897, %827 ], [ 0.000000e+00, %824 ]
  %903 = phi float [ %895, %827 ], [ 0.000000e+00, %824 ]
  %904 = phi float [ %893, %827 ], [ 0.000000e+00, %824 ]
  %905 = phi float [ %891, %827 ], [ 0.000000e+00, %824 ]
  %906 = phi float [ %889, %827 ], [ 0.000000e+00, %824 ]
  %907 = phi float [ %887, %827 ], [ 0.000000e+00, %824 ]
  %908 = phi float [ %885, %827 ], [ 0.000000e+00, %824 ]
  %909 = phi float [ %883, %827 ], [ 0.000000e+00, %824 ]
  %910 = phi float [ %881, %827 ], [ 0.000000e+00, %824 ]
  %911 = phi float [ %879, %827 ], [ 0.000000e+00, %824 ]
  %912 = phi float [ %877, %827 ], [ 0.000000e+00, %824 ]
  %913 = phi float [ %875, %827 ], [ 0.000000e+00, %824 ]
  %914 = phi float [ %873, %827 ], [ 0.000000e+00, %824 ]
  %915 = phi float [ %871, %827 ], [ 0.000000e+00, %824 ]
  %916 = phi float [ %869, %827 ], [ 0.000000e+00, %824 ]
  %917 = phi float [ %867, %827 ], [ 0.000000e+00, %824 ]
  %918 = phi float [ %865, %827 ], [ 0.000000e+00, %824 ]
  %919 = phi float [ %863, %827 ], [ 0.000000e+00, %824 ]
  %920 = phi float [ %861, %827 ], [ 0.000000e+00, %824 ]
  %921 = phi float [ %859, %827 ], [ 0.000000e+00, %824 ]
  %922 = phi float [ %857, %827 ], [ 0.000000e+00, %824 ]
  %923 = phi float [ %855, %827 ], [ 0.000000e+00, %824 ]
  %924 = phi float [ %853, %827 ], [ 0.000000e+00, %824 ]
  %925 = phi float [ %851, %827 ], [ 0.000000e+00, %824 ]
  %926 = phi float [ %849, %827 ], [ 0.000000e+00, %824 ]
  %927 = phi float [ %847, %827 ], [ 0.000000e+00, %824 ]
  %928 = fcmp fast olt float %825, 1.000000e+00
  br i1 %928, label %929, label %1589, !dx.controlflow.hints !63

; <label>:929                                     ; preds = %900
  %930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %931 = extractvalue %dx.types.CBufRet.f32 %930, 0
  %932 = extractvalue %dx.types.CBufRet.f32 %930, 1
  %933 = fsub fast float %259, %931
  %934 = fsub fast float %260, %932
  %935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %936 = extractvalue %dx.types.CBufRet.f32 %935, 0
  %937 = extractvalue %dx.types.CBufRet.f32 %935, 1
  %938 = fmul fast float %933, %936
  %939 = fmul fast float %934, %937
  %940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %941 = extractvalue %dx.types.CBufRet.f32 %940, 0
  %942 = fmul fast float %941, %938
  %943 = extractvalue %dx.types.CBufRet.f32 %940, 1
  %944 = fadd fast float %942, %943
  %945 = extractvalue %dx.types.CBufRet.f32 %940, 2
  %946 = fmul fast float %945, %939
  %947 = extractvalue %dx.types.CBufRet.f32 %940, 3
  %948 = fadd fast float %946, %947
  %949 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %24, float %944, float %948, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %950 = extractvalue %dx.types.ResRet.f32 %949, 0
  %951 = extractvalue %dx.types.ResRet.f32 %949, 1
  %952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %953 = extractvalue %dx.types.CBufRet.f32 %952, 1
  %954 = extractvalue %dx.types.CBufRet.f32 %952, 0
  %955 = fsub fast float %953, %954
  %956 = fmul fast float %955, %950
  %957 = fadd fast float %956, %954
  %958 = extractvalue %dx.types.CBufRet.f32 %952, 3
  %959 = extractvalue %dx.types.CBufRet.f32 %952, 2
  %960 = fsub fast float %958, %959
  %961 = fmul fast float %960, %951
  %962 = fadd fast float %961, %959
  %963 = fsub fast float %261, %957
  %964 = fsub fast float %962, %957
  %965 = fdiv fast float %963, %964
  %966 = call float @dx.op.unary.f32(i32 7, float %965)  ; Saturate(value)
  %967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %968 = extractvalue %dx.types.CBufRet.f32 %967, 0
  %969 = fmul fast float %968, %966
  %970 = extractvalue %dx.types.CBufRet.f32 %967, 1
  %971 = fadd fast float %969, %970
  %972 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %24, float %944, float %948, float %971, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %973 = extractvalue %dx.types.ResRet.f32 %972, 0
  %974 = extractvalue %dx.types.ResRet.f32 %972, 1
  %975 = extractvalue %dx.types.ResRet.f32 %972, 2
  %976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %977 = extractvalue %dx.types.CBufRet.f32 %976, 0
  %978 = extractvalue %dx.types.CBufRet.f32 %976, 1
  %979 = extractvalue %dx.types.CBufRet.f32 %976, 2
  %980 = fmul fast float %977, %973
  %981 = fmul fast float %978, %974
  %982 = fmul fast float %979, %975
  %983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %984 = extractvalue %dx.types.CBufRet.f32 %983, 0
  %985 = extractvalue %dx.types.CBufRet.f32 %983, 1
  %986 = extractvalue %dx.types.CBufRet.f32 %983, 2
  %987 = fadd fast float %980, %984
  %988 = fadd fast float %981, %985
  %989 = fadd fast float %982, %986
  %990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %991 = extractvalue %dx.types.CBufRet.f32 %990, 0
  %992 = fmul fast float %991, %938
  %993 = extractvalue %dx.types.CBufRet.f32 %990, 1
  %994 = fadd fast float %992, %993
  %995 = extractvalue %dx.types.CBufRet.f32 %990, 2
  %996 = fmul fast float %995, %939
  %997 = extractvalue %dx.types.CBufRet.f32 %990, 3
  %998 = fadd fast float %996, %997
  %999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1000 = extractvalue %dx.types.CBufRet.f32 %999, 0
  %1001 = extractvalue %dx.types.CBufRet.f32 %999, 1
  %1002 = extractvalue %dx.types.CBufRet.f32 %999, 2
  %1003 = extractvalue %dx.types.CBufRet.f32 %999, 3
  %1004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1005 = extractvalue %dx.types.CBufRet.f32 %1004, 0
  %1006 = extractvalue %dx.types.CBufRet.f32 %1004, 1
  %1007 = extractvalue %dx.types.CBufRet.f32 %1004, 2
  %1008 = extractvalue %dx.types.CBufRet.f32 %1004, 3
  %1009 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %24, float %994, float %998, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1010 = extractvalue %dx.types.ResRet.f32 %1009, 0
  %1011 = extractvalue %dx.types.ResRet.f32 %1009, 1
  %1012 = extractvalue %dx.types.ResRet.f32 %1009, 2
  %1013 = extractvalue %dx.types.ResRet.f32 %1009, 3
  %1014 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %24, float %994, float %998, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1015 = extractvalue %dx.types.ResRet.f32 %1014, 0
  %1016 = extractvalue %dx.types.ResRet.f32 %1014, 1
  %1017 = extractvalue %dx.types.ResRet.f32 %1014, 2
  %1018 = extractvalue %dx.types.ResRet.f32 %1014, 3
  %1019 = fmul fast float %1010, %987
  %1020 = fmul fast float %1015, %987
  %1021 = fmul fast float %1017, %987
  %1022 = fmul fast float %1013, %987
  %1023 = fadd fast float %1019, %1000
  %1024 = fadd fast float %1020, %1001
  %1025 = fadd fast float %1021, %1002
  %1026 = fadd fast float %1022, %1003
  %1027 = fmul fast float %1011, %987
  %1028 = fmul fast float %1016, %987
  %1029 = fadd fast float %1027, %1005
  %1030 = fadd fast float %1028, %1006
  %1031 = fmul fast float %1012, %987
  %1032 = fmul fast float %1018, %987
  %1033 = fadd fast float %1031, %1007
  %1034 = fadd fast float %1032, %1008
  %1035 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %24, float %994, float %998, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1036 = extractvalue %dx.types.ResRet.f32 %1035, 0
  %1037 = extractvalue %dx.types.ResRet.f32 %1035, 1
  %1038 = extractvalue %dx.types.ResRet.f32 %1035, 2
  %1039 = extractvalue %dx.types.ResRet.f32 %1035, 3
  %1040 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %24, float %994, float %998, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1041 = extractvalue %dx.types.ResRet.f32 %1040, 0
  %1042 = extractvalue %dx.types.ResRet.f32 %1040, 1
  %1043 = extractvalue %dx.types.ResRet.f32 %1040, 2
  %1044 = extractvalue %dx.types.ResRet.f32 %1040, 3
  %1045 = fmul fast float %1036, %988
  %1046 = fmul fast float %1041, %988
  %1047 = fmul fast float %1043, %988
  %1048 = fmul fast float %1039, %988
  %1049 = fadd fast float %1023, %1045
  %1050 = fadd fast float %1024, %1046
  %1051 = fadd fast float %1025, %1047
  %1052 = fadd fast float %1026, %1048
  %1053 = fmul fast float %1037, %988
  %1054 = fmul fast float %1042, %988
  %1055 = fadd fast float %1029, %1053
  %1056 = fadd fast float %1030, %1054
  %1057 = fmul fast float %1038, %988
  %1058 = fmul fast float %1044, %988
  %1059 = fadd fast float %1033, %1057
  %1060 = fadd fast float %1034, %1058
  %1061 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %24, float %994, float %998, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1062 = extractvalue %dx.types.ResRet.f32 %1061, 0
  %1063 = extractvalue %dx.types.ResRet.f32 %1061, 1
  %1064 = extractvalue %dx.types.ResRet.f32 %1061, 2
  %1065 = extractvalue %dx.types.ResRet.f32 %1061, 3
  %1066 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %24, float %994, float %998, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1067 = extractvalue %dx.types.ResRet.f32 %1066, 0
  %1068 = extractvalue %dx.types.ResRet.f32 %1066, 1
  %1069 = extractvalue %dx.types.ResRet.f32 %1066, 2
  %1070 = extractvalue %dx.types.ResRet.f32 %1066, 3
  %1071 = fmul fast float %1062, %989
  %1072 = fmul fast float %1067, %989
  %1073 = fmul fast float %1069, %989
  %1074 = fmul fast float %1065, %989
  %1075 = fadd fast float %1049, %1071
  %1076 = fadd fast float %1050, %1072
  %1077 = fadd fast float %1051, %1073
  %1078 = fadd fast float %1052, %1074
  %1079 = fmul fast float %1063, %989
  %1080 = fmul fast float %1068, %989
  %1081 = fadd fast float %1055, %1079
  %1082 = fadd fast float %1056, %1080
  %1083 = fmul fast float %1064, %989
  %1084 = fmul fast float %1070, %989
  %1085 = fadd fast float %1059, %1083
  %1086 = fadd fast float %1060, %1084
  %1087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1088 = extractvalue %dx.types.CBufRet.f32 %1087, 0
  %1089 = fsub fast float %259, %1088
  %1090 = fsub fast float %931, %259
  %1091 = call float @dx.op.binary.f32(i32 35, float %1090, float %1089)  ; FMax(a,b)
  %1092 = extractvalue %dx.types.CBufRet.f32 %1087, 1
  %1093 = fsub fast float %260, %1092
  %1094 = fsub fast float %932, %260
  %1095 = call float @dx.op.binary.f32(i32 35, float %1094, float %1093)  ; FMax(a,b)
  %1096 = call float @dx.op.binary.f32(i32 35, float %1091, float %1095)  ; FMax(a,b)
  %1097 = extractvalue %dx.types.CBufRet.f32 %935, 3
  %1098 = fmul fast float %1097, %1096
  %1099 = call float @dx.op.unary.f32(i32 7, float %1098)  ; Saturate(value)
  %1100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1101 = extractvalue %dx.types.CBufRet.f32 %1100, 0
  %1102 = extractvalue %dx.types.CBufRet.f32 %1100, 1
  %1103 = extractvalue %dx.types.CBufRet.f32 %1100, 2
  %1104 = extractvalue %dx.types.CBufRet.f32 %1100, 3
  %1105 = fsub fast float %1101, %1075
  %1106 = fsub fast float %1102, %1076
  %1107 = fsub fast float %1103, %1077
  %1108 = fsub fast float %1104, %1078
  %1109 = fmul fast float %1105, %1099
  %1110 = fmul fast float %1106, %1099
  %1111 = fmul fast float %1107, %1099
  %1112 = fmul fast float %1108, %1099
  %1113 = fadd fast float %1109, %1075
  %1114 = fadd fast float %1110, %1076
  %1115 = fadd fast float %1111, %1077
  %1116 = fadd fast float %1112, %1078
  %1117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1118 = extractvalue %dx.types.CBufRet.f32 %1117, 0
  %1119 = extractvalue %dx.types.CBufRet.f32 %1117, 1
  %1120 = fsub fast float %1118, %1081
  %1121 = fsub fast float %1119, %1082
  %1122 = fmul fast float %1120, %1099
  %1123 = fmul fast float %1121, %1099
  %1124 = fadd fast float %1122, %1081
  %1125 = fadd fast float %1123, %1082
  %1126 = extractvalue %dx.types.CBufRet.f32 %1117, 2
  %1127 = extractvalue %dx.types.CBufRet.f32 %1117, 3
  %1128 = fsub fast float %1126, %1085
  %1129 = fsub fast float %1127, %1086
  %1130 = fmul fast float %1128, %1099
  %1131 = fmul fast float %1129, %1099
  %1132 = fadd fast float %1130, %1085
  %1133 = fadd fast float %1131, %1086
  %1134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1135 = extractvalue %dx.types.CBufRet.f32 %1134, 0
  %1136 = fmul fast float %1135, %1113
  %1137 = fmul fast float %1135, %1114
  %1138 = fmul fast float %1135, %1115
  %1139 = fmul fast float %1135, %1116
  %1140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1141 = extractvalue %dx.types.CBufRet.f32 %1140, 0
  %1142 = fmul fast float %1141, %1124
  %1143 = fmul fast float %1141, %1125
  %1144 = fadd fast float %1142, %1136
  %1145 = fadd fast float %1143, %1138
  %1146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1147 = extractvalue %dx.types.CBufRet.f32 %1146, 0
  %1148 = fmul fast float %1147, %1132
  %1149 = fmul fast float %1147, %1133
  %1150 = fadd fast float %1144, %1148
  %1151 = fadd fast float %1145, %1149
  %1152 = extractvalue %dx.types.CBufRet.f32 %1134, 1
  %1153 = fmul fast float %1152, %1113
  %1154 = fmul fast float %1152, %1114
  %1155 = fmul fast float %1152, %1115
  %1156 = fmul fast float %1152, %1116
  %1157 = extractvalue %dx.types.CBufRet.f32 %1140, 1
  %1158 = fmul fast float %1157, %1124
  %1159 = fmul fast float %1157, %1125
  %1160 = fadd fast float %1158, %1153
  %1161 = fadd fast float %1159, %1155
  %1162 = extractvalue %dx.types.CBufRet.f32 %1146, 1
  %1163 = fmul fast float %1162, %1132
  %1164 = fmul fast float %1162, %1133
  %1165 = fadd fast float %1160, %1163
  %1166 = fadd fast float %1161, %1164
  %1167 = extractvalue %dx.types.CBufRet.f32 %1134, 2
  %1168 = fmul fast float %1167, %1113
  %1169 = fmul fast float %1167, %1114
  %1170 = fmul fast float %1167, %1115
  %1171 = fmul fast float %1167, %1116
  %1172 = extractvalue %dx.types.CBufRet.f32 %1140, 2
  %1173 = fmul fast float %1172, %1124
  %1174 = fmul fast float %1172, %1125
  %1175 = fadd fast float %1173, %1168
  %1176 = fadd fast float %1174, %1170
  %1177 = extractvalue %dx.types.CBufRet.f32 %1146, 2
  %1178 = fmul fast float %1177, %1132
  %1179 = fmul fast float %1177, %1133
  %1180 = fadd fast float %1175, %1178
  %1181 = fadd fast float %1176, %1179
  %1182 = fmul fast float %1169, %1169
  %1183 = fmul fast float %1181, %1181
  %1184 = fmul fast float %1171, %1171
  %1185 = fadd fast float %1184, %1182
  %1186 = fadd fast float %1185, %1183
  %1187 = call float @dx.op.unary.f32(i32 24, float %1186)  ; Sqrt(value)
  %1188 = fcmp fast ugt float %1187, 0.000000e+00
  br i1 %1188, label %1189, label %1204, !dx.controlflow.hints !64

; <label>:1189                                    ; preds = %929
  %1190 = fsub fast float -0.000000e+00, %1171
  %1191 = fdiv fast float %1190, %1187
  %1192 = fsub fast float -0.000000e+00, %1169
  %1193 = fdiv fast float %1192, %1187
  %1194 = fdiv fast float %1181, %1187
  %1195 = fmul fast float %1180, 0x3FE279A760000000
  %1196 = fmul fast float %1193, %1169
  %1197 = fmul fast float %1194, %1181
  %1198 = fmul fast float %1191, %1171
  %1199 = fadd fast float %1196, %1198
  %1200 = fsub fast float %1199, %1197
  %1201 = call float @dx.op.unary.f32(i32 6, float %1200)  ; FAbs(value)
  %1202 = fadd fast float %1201, 0x3DDB7CDFE0000000
  %1203 = fdiv fast float %1195, %1202
  br label %1204

; <label>:1204                                    ; preds = %1189, %929
  %1205 = phi float [ %1203, %1189 ], [ 1.000000e+00, %929 ]
  %1206 = fmul fast float %1154, %1154
  %1207 = fmul fast float %1166, %1166
  %1208 = fmul fast float %1156, %1156
  %1209 = fadd fast float %1208, %1206
  %1210 = fadd fast float %1209, %1207
  %1211 = call float @dx.op.unary.f32(i32 24, float %1210)  ; Sqrt(value)
  %1212 = fcmp fast ugt float %1211, 0.000000e+00
  br i1 %1212, label %1213, label %1228, !dx.controlflow.hints !64

; <label>:1213                                    ; preds = %1204
  %1214 = fsub fast float -0.000000e+00, %1156
  %1215 = fdiv fast float %1214, %1211
  %1216 = fsub fast float -0.000000e+00, %1154
  %1217 = fdiv fast float %1216, %1211
  %1218 = fdiv fast float %1166, %1211
  %1219 = fmul fast float %1165, 0x3FE279A760000000
  %1220 = fmul fast float %1217, %1154
  %1221 = fmul fast float %1218, %1166
  %1222 = fmul fast float %1215, %1156
  %1223 = fadd fast float %1220, %1222
  %1224 = fsub fast float %1223, %1221
  %1225 = call float @dx.op.unary.f32(i32 6, float %1224)  ; FAbs(value)
  %1226 = fadd fast float %1225, 0x3DDB7CDFE0000000
  %1227 = fdiv fast float %1219, %1226
  br label %1228

; <label>:1228                                    ; preds = %1213, %1204
  %1229 = phi float [ %1227, %1213 ], [ 1.000000e+00, %1204 ]
  %1230 = call float @dx.op.binary.f32(i32 36, float %1229, float %1205)  ; FMin(a,b)
  %1231 = fmul fast float %1137, %1137
  %1232 = fmul fast float %1151, %1151
  %1233 = fmul fast float %1139, %1139
  %1234 = fadd fast float %1233, %1231
  %1235 = fadd fast float %1234, %1232
  %1236 = call float @dx.op.unary.f32(i32 24, float %1235)  ; Sqrt(value)
  %1237 = fcmp fast ugt float %1236, 0.000000e+00
  br i1 %1237, label %1238, label %1253, !dx.controlflow.hints !64

; <label>:1238                                    ; preds = %1228
  %1239 = fsub fast float -0.000000e+00, %1139
  %1240 = fdiv fast float %1239, %1236
  %1241 = fsub fast float -0.000000e+00, %1137
  %1242 = fdiv fast float %1241, %1236
  %1243 = fdiv fast float %1151, %1236
  %1244 = fmul fast float %1150, 0x3FE279A760000000
  %1245 = fmul fast float %1242, %1137
  %1246 = fmul fast float %1243, %1151
  %1247 = fmul fast float %1240, %1139
  %1248 = fadd fast float %1245, %1247
  %1249 = fsub fast float %1248, %1246
  %1250 = call float @dx.op.unary.f32(i32 6, float %1249)  ; FAbs(value)
  %1251 = fadd fast float %1250, 0x3DDB7CDFE0000000
  %1252 = fdiv fast float %1244, %1251
  br label %1253

; <label>:1253                                    ; preds = %1238, %1228
  %1254 = phi float [ %1252, %1238 ], [ 1.000000e+00, %1228 ]
  %1255 = call float @dx.op.binary.f32(i32 36, float %1254, float %1230)  ; FMin(a,b)
  %1256 = call float @dx.op.unary.f32(i32 7, float %1255)  ; Saturate(value)
  %1257 = fcmp fast olt float %1256, 1.000000e+00
  br i1 %1257, label %1258, label %1268, !dx.controlflow.hints !65

; <label>:1258                                    ; preds = %1253
  %1259 = fmul fast float %1256, %1137
  %1260 = fmul fast float %1256, %1151
  %1261 = fmul fast float %1256, %1139
  %1262 = fmul fast float %1256, %1154
  %1263 = fmul fast float %1256, %1166
  %1264 = fmul fast float %1256, %1156
  %1265 = fmul fast float %1256, %1169
  %1266 = fmul fast float %1256, %1181
  %1267 = fmul fast float %1256, %1171
  br label %1268

; <label>:1268                                    ; preds = %1258, %1253
  %1269 = phi float [ %1265, %1258 ], [ %1169, %1253 ]
  %1270 = phi float [ %1266, %1258 ], [ %1181, %1253 ]
  %1271 = phi float [ %1267, %1258 ], [ %1171, %1253 ]
  %1272 = phi float [ %1262, %1258 ], [ %1154, %1253 ]
  %1273 = phi float [ %1263, %1258 ], [ %1166, %1253 ]
  %1274 = phi float [ %1264, %1258 ], [ %1156, %1253 ]
  %1275 = phi float [ %1259, %1258 ], [ %1137, %1253 ]
  %1276 = phi float [ %1260, %1258 ], [ %1151, %1253 ]
  %1277 = phi float [ %1261, %1258 ], [ %1139, %1253 ]
  %1278 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1150)  ; FMax(a,b)
  %1279 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1165)  ; FMax(a,b)
  %1280 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1180)  ; FMax(a,b)
  %1281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1282 = extractvalue %dx.types.CBufRet.f32 %1281, 0
  %1283 = fcmp fast ogt float %1282, 0.000000e+00
  %1284 = fcmp fast oge float %938, 0.000000e+00
  %1285 = and i1 %1284, %1283
  %1286 = fcmp fast ole float %938, 1.000000e+00
  %1287 = and i1 %1286, %1285
  %1288 = fcmp fast oge float %939, 0.000000e+00
  %1289 = and i1 %1288, %1287
  %1290 = fcmp fast ole float %939, 1.000000e+00
  %1291 = and i1 %1290, %1289
  br i1 %1291, label %1292, label %1437, !dx.controlflow.hints !66

; <label>:1292                                    ; preds = %1268
  %1293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1294 = extractvalue %dx.types.CBufRet.f32 %1293, 2
  %1295 = extractvalue %dx.types.CBufRet.f32 %1293, 3
  %1296 = fmul fast float %1294, %938
  %1297 = fmul fast float %1295, %939
  %1298 = call float @dx.op.unary.f32(i32 27, float %1296)  ; Round_ni(value)
  %1299 = call float @dx.op.unary.f32(i32 27, float %1297)  ; Round_ni(value)
  %1300 = fptosi float %1298 to i32
  %1301 = fptosi float %1299 to i32
  %1302 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %1300, i32 %1301, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1303 = extractvalue %dx.types.ResRet.i32 %1302, 0
  %1304 = and i32 %1303, 65535
  %1305 = lshr i32 %1303, 16
  %1306 = icmp eq i32 %1304, 65535
  br i1 %1306, label %1343, label %1307, !dx.controlflow.hints !67

; <label>:1307                                    ; preds = %1292
  %1308 = extractvalue %dx.types.CBufRet.f32 %1281, 1
  %1309 = extractvalue %dx.types.CBufRet.f32 %1293, 0
  %1310 = extractvalue %dx.types.CBufRet.f32 %1293, 1
  %1311 = fmul fast float %1309, %938
  %1312 = fmul fast float %1310, %939
  %1313 = fmul fast float %1311, 1.250000e-01
  %1314 = fmul fast float %1312, 1.250000e-01
  %1315 = call float @dx.op.unary.f32(i32 27, float %1313)  ; Round_ni(value)
  %1316 = call float @dx.op.unary.f32(i32 27, float %1314)  ; Round_ni(value)
  %1317 = fmul fast float %1315, 8.000000e+00
  %1318 = fmul fast float %1316, 8.000000e+00
  %1319 = and i32 %1303, 255
  %1320 = lshr i32 %1303, 8
  %1321 = and i32 %1320, 255
  %1322 = mul nuw nsw i32 %1319, 9
  %1323 = uitofp i32 %1322 to float
  %1324 = mul nuw nsw i32 %1321, 9
  %1325 = uitofp i32 %1324 to float
  %1326 = fadd fast float %1323, 5.000000e-01
  %1327 = fadd fast float %1326, %1311
  %1328 = fsub fast float %1327, %1317
  %1329 = fadd fast float %1325, 5.000000e-01
  %1330 = fadd fast float %1329, %1312
  %1331 = fsub fast float %1330, %1318
  %1332 = fdiv fast float %1328, %1282
  %1333 = fdiv fast float %1331, %1308
  %1334 = fmul fast float %966, 4.375000e-01
  %1335 = fadd fast float %1334, 3.125000e-02
  %1336 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %24, float %1332, float %1333, float %1335, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1337 = extractvalue %dx.types.ResRet.f32 %1336, 0
  %1338 = extractvalue %dx.types.ResRet.f32 %1336, 1
  %1339 = extractvalue %dx.types.ResRet.f32 %1336, 2
  %1340 = fadd fast float %1337, %1278
  %1341 = fadd fast float %1338, %1279
  %1342 = fadd fast float %1339, %1280
  br label %1343

; <label>:1343                                    ; preds = %1307, %1292
  %1344 = phi float [ %1342, %1307 ], [ %1280, %1292 ]
  %1345 = phi float [ %1341, %1307 ], [ %1279, %1292 ]
  %1346 = phi float [ %1340, %1307 ], [ %1278, %1292 ]
  %1347 = icmp eq i32 %1305, 65535
  br i1 %1347, label %1437, label %1348, !dx.controlflow.hints !68

; <label>:1348                                    ; preds = %1343
  %1349 = extractvalue %dx.types.CBufRet.f32 %1281, 1
  %1350 = extractvalue %dx.types.CBufRet.f32 %1293, 0
  %1351 = extractvalue %dx.types.CBufRet.f32 %1293, 1
  %1352 = fmul fast float %1350, %938
  %1353 = fmul fast float %1351, %939
  %1354 = fmul fast float %1352, 1.250000e-01
  %1355 = fmul fast float %1353, 1.250000e-01
  %1356 = call float @dx.op.unary.f32(i32 27, float %1354)  ; Round_ni(value)
  %1357 = call float @dx.op.unary.f32(i32 27, float %1355)  ; Round_ni(value)
  %1358 = fmul fast float %1356, 8.000000e+00
  %1359 = fmul fast float %1357, 8.000000e+00
  %1360 = fsub fast float %1352, %1358
  %1361 = fsub fast float %1353, %1359
  %1362 = fadd fast float %1360, 5.000000e-01
  %1363 = fadd fast float %1361, 5.000000e-01
  %1364 = and i32 %1305, 255
  %1365 = lshr i32 %1303, 24
  %1366 = mul nuw nsw i32 %1364, 9
  %1367 = uitofp i32 %1366 to float
  %1368 = mul nuw nsw i32 %1365, 9
  %1369 = uitofp i32 %1368 to float
  %1370 = fadd fast float %1362, %1367
  %1371 = fadd fast float %1363, %1369
  %1372 = fdiv fast float %1370, %1282
  %1373 = fdiv fast float %1371, %1349
  %1374 = fmul fast float %966, 4.375000e-01
  %1375 = fadd fast float %1374, 3.125000e-02
  %1376 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %24, float %1372, float %1373, float %1375, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1377 = extractvalue %dx.types.ResRet.f32 %1376, 0
  %1378 = extractvalue %dx.types.ResRet.f32 %1376, 1
  %1379 = extractvalue %dx.types.ResRet.f32 %1376, 2
  %1380 = fadd fast float %1374, 5.312500e-01
  %1381 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %24, float %1372, float %1373, float %1380, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1382 = extractvalue %dx.types.ResRet.f32 %1381, 0
  %1383 = extractvalue %dx.types.ResRet.f32 %1381, 1
  %1384 = extractvalue %dx.types.ResRet.f32 %1381, 2
  %1385 = fmul fast float %1382, 2.000000e+00
  %1386 = fmul fast float %1383, 2.000000e+00
  %1387 = fmul fast float %1384, 2.000000e+00
  %1388 = fadd fast float %1385, -1.000000e+00
  %1389 = fadd fast float %1386, -1.000000e+00
  %1390 = fadd fast float %1387, -1.000000e+00
  %1391 = fmul fast float %1388, %1388
  %1392 = fmul fast float %1389, %1389
  %1393 = fadd fast float %1391, %1392
  %1394 = fmul fast float %1390, %1390
  %1395 = fadd fast float %1393, %1394
  %1396 = call float @dx.op.unary.f32(i32 24, float %1395)  ; Sqrt(value)
  %1397 = fcmp fast ogt float %1396, 0.000000e+00
  br i1 %1397, label %1398, label %1402, !dx.controlflow.hints !69

; <label>:1398                                    ; preds = %1348
  %1399 = fdiv fast float %1388, %1396
  %1400 = fdiv fast float %1389, %1396
  %1401 = fdiv fast float %1390, %1396
  br label %1402

; <label>:1402                                    ; preds = %1398, %1348
  %1403 = phi float [ %1399, %1398 ], [ 0.000000e+00, %1348 ]
  %1404 = phi float [ %1400, %1398 ], [ 0.000000e+00, %1348 ]
  %1405 = phi float [ %1401, %1398 ], [ 0.000000e+00, %1348 ]
  %1406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1407 = extractvalue %dx.types.CBufRet.f32 %1406, 0
  %1408 = extractvalue %dx.types.CBufRet.f32 %1406, 1
  %1409 = fsub fast float %259, %1407
  %1410 = fsub fast float %260, %1408
  %1411 = fmul fast float %1409, %1409
  %1412 = fmul fast float %1410, %1410
  %1413 = fadd fast float %1411, %1412
  %1414 = call float @dx.op.unary.f32(i32 24, float %1413)  ; Sqrt(value)
  %1415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1416 = extractvalue %dx.types.CBufRet.f32 %1415, 0
  %1417 = extractvalue %dx.types.CBufRet.f32 %1415, 1
  %1418 = fsub fast float %1414, %1416
  %1419 = fdiv fast float %1418, %1417
  %1420 = call float @dx.op.unary.f32(i32 7, float %1419)  ; Saturate(value)
  %1421 = fmul fast float %1420, 2.000000e+00
  %1422 = fsub fast float 3.000000e+00, %1421
  %1423 = fmul fast float %1420, %1420
  %1424 = fmul fast float %1423, %1422
  %1425 = call float @dx.op.dot3.f32(i32 55, float %1403, float %1404, float %1405, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1426 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1425)  ; FMax(a,b)
  %1427 = fmul fast float %1426, 0x400C5BF8A0000000
  %1428 = fmul fast float %1424, %1377
  %1429 = fmul fast float %1428, %1427
  %1430 = fadd fast float %1429, %1346
  %1431 = fmul fast float %1424, %1378
  %1432 = fmul fast float %1431, %1427
  %1433 = fadd fast float %1432, %1345
  %1434 = fmul fast float %1424, %1379
  %1435 = fmul fast float %1434, %1427
  %1436 = fadd fast float %1435, %1344
  br label %1437

; <label>:1437                                    ; preds = %1402, %1343, %1268
  %1438 = phi float [ %1436, %1402 ], [ %1344, %1343 ], [ %1280, %1268 ]
  %1439 = phi float [ %1433, %1402 ], [ %1345, %1343 ], [ %1279, %1268 ]
  %1440 = phi float [ %1430, %1402 ], [ %1346, %1343 ], [ %1278, %1268 ]
  %1441 = fcmp fast ogt float %261, %962
  %1442 = and i1 %1284, %1441
  %1443 = and i1 %1286, %1442
  %1444 = and i1 %1288, %1443
  %1445 = and i1 %1290, %1444
  br i1 %1445, label %1446, label %1503, !dx.controlflow.hints !70

; <label>:1446                                    ; preds = %1437
  %1447 = fmul fast float %964, 0x3FC24924A0000000
  %1448 = fsub fast float %261, %962
  %1449 = fdiv fast float %1448, %1447
  %1450 = call float @dx.op.unary.f32(i32 7, float %1449)  ; Saturate(value)
  %1451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1452 = extractvalue %dx.types.CBufRet.f32 %1451, 0
  %1453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1454 = extractvalue %dx.types.CBufRet.f32 %1453, 0
  %1455 = extractvalue %dx.types.CBufRet.f32 %1453, 1
  %1456 = extractvalue %dx.types.CBufRet.f32 %1453, 2
  %1457 = fsub fast float %1452, %1440
  %1458 = fsub fast float %1454, %1275
  %1459 = fsub fast float %1455, %1276
  %1460 = fsub fast float %1456, %1277
  %1461 = fmul fast float %1457, %1450
  %1462 = fmul fast float %1458, %1450
  %1463 = fmul fast float %1459, %1450
  %1464 = fmul fast float %1460, %1450
  %1465 = fadd fast float %1461, %1440
  %1466 = fadd fast float %1462, %1275
  %1467 = fadd fast float %1463, %1276
  %1468 = fadd fast float %1464, %1277
  %1469 = extractvalue %dx.types.CBufRet.f32 %1451, 1
  %1470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1471 = extractvalue %dx.types.CBufRet.f32 %1470, 0
  %1472 = extractvalue %dx.types.CBufRet.f32 %1470, 1
  %1473 = extractvalue %dx.types.CBufRet.f32 %1470, 2
  %1474 = fsub fast float %1469, %1439
  %1475 = fsub fast float %1471, %1272
  %1476 = fsub fast float %1472, %1273
  %1477 = fsub fast float %1473, %1274
  %1478 = fmul fast float %1474, %1450
  %1479 = fmul fast float %1475, %1450
  %1480 = fmul fast float %1476, %1450
  %1481 = fmul fast float %1477, %1450
  %1482 = fadd fast float %1478, %1439
  %1483 = fadd fast float %1479, %1272
  %1484 = fadd fast float %1480, %1273
  %1485 = fadd fast float %1481, %1274
  %1486 = extractvalue %dx.types.CBufRet.f32 %1451, 2
  %1487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1488 = extractvalue %dx.types.CBufRet.f32 %1487, 0
  %1489 = extractvalue %dx.types.CBufRet.f32 %1487, 1
  %1490 = extractvalue %dx.types.CBufRet.f32 %1487, 2
  %1491 = fsub fast float %1486, %1438
  %1492 = fsub fast float %1488, %1269
  %1493 = fsub fast float %1489, %1270
  %1494 = fsub fast float %1490, %1271
  %1495 = fmul fast float %1491, %1450
  %1496 = fmul fast float %1492, %1450
  %1497 = fmul fast float %1493, %1450
  %1498 = fmul fast float %1494, %1450
  %1499 = fadd fast float %1495, %1438
  %1500 = fadd fast float %1496, %1269
  %1501 = fadd fast float %1497, %1270
  %1502 = fadd fast float %1498, %1271
  br label %1503

; <label>:1503                                    ; preds = %1446, %1437
  %1504 = phi float [ %1499, %1446 ], [ %1438, %1437 ]
  %1505 = phi float [ %1500, %1446 ], [ %1269, %1437 ]
  %1506 = phi float [ %1501, %1446 ], [ %1270, %1437 ]
  %1507 = phi float [ %1502, %1446 ], [ %1271, %1437 ]
  %1508 = phi float [ %1482, %1446 ], [ %1439, %1437 ]
  %1509 = phi float [ %1483, %1446 ], [ %1272, %1437 ]
  %1510 = phi float [ %1484, %1446 ], [ %1273, %1437 ]
  %1511 = phi float [ %1485, %1446 ], [ %1274, %1437 ]
  %1512 = phi float [ %1465, %1446 ], [ %1440, %1437 ]
  %1513 = phi float [ %1466, %1446 ], [ %1275, %1437 ]
  %1514 = phi float [ %1467, %1446 ], [ %1276, %1437 ]
  %1515 = phi float [ %1468, %1446 ], [ %1277, %1437 ]
  %1516 = extractvalue %dx.types.CBufRet.f32 %1087, 3
  %1517 = fmul fast float %1516, %1512
  %1518 = fmul fast float %1516, %1508
  %1519 = fmul fast float %1516, %1504
  %1520 = fmul fast float %1513, 1.500000e+00
  %1521 = fmul fast float %1520, %1516
  %1522 = fmul fast float %1514, 1.500000e+00
  %1523 = fmul fast float %1522, %1516
  %1524 = fmul fast float %1515, 1.500000e+00
  %1525 = fmul fast float %1524, %1516
  %1526 = fmul fast float %1509, 1.500000e+00
  %1527 = fmul fast float %1526, %1516
  %1528 = fmul fast float %1510, 1.500000e+00
  %1529 = fmul fast float %1528, %1516
  %1530 = fmul fast float %1511, 1.500000e+00
  %1531 = fmul fast float %1530, %1516
  %1532 = fmul fast float %1505, 1.500000e+00
  %1533 = fmul fast float %1532, %1516
  %1534 = fmul fast float %1506, 1.500000e+00
  %1535 = fmul fast float %1534, %1516
  %1536 = fmul fast float %1507, 1.500000e+00
  %1537 = fmul fast float %1536, %1516
  %1538 = fsub fast float %927, %1517
  %1539 = fmul fast float %1538, %825
  %1540 = fadd fast float %1539, %1517
  %1541 = fsub fast float %926, %1521
  %1542 = fmul fast float %1541, %825
  %1543 = fadd fast float %1542, %1521
  %1544 = fsub fast float %925, %1523
  %1545 = fmul fast float %1544, %825
  %1546 = fadd fast float %1545, %1523
  %1547 = fsub fast float %924, %1525
  %1548 = fmul fast float %1547, %825
  %1549 = fadd fast float %1548, %1525
  %1550 = fmul fast float %923, %825
  %1551 = fmul fast float %922, %825
  %1552 = fmul fast float %921, %825
  %1553 = fmul fast float %920, %825
  %1554 = fmul fast float %919, %825
  %1555 = fsub fast float %918, %1518
  %1556 = fmul fast float %1555, %825
  %1557 = fadd fast float %1556, %1518
  %1558 = fsub fast float %917, %1527
  %1559 = fmul fast float %1558, %825
  %1560 = fadd fast float %1559, %1527
  %1561 = fsub fast float %916, %1529
  %1562 = fmul fast float %1561, %825
  %1563 = fadd fast float %1562, %1529
  %1564 = fsub fast float %915, %1531
  %1565 = fmul fast float %1564, %825
  %1566 = fadd fast float %1565, %1531
  %1567 = fmul fast float %914, %825
  %1568 = fmul fast float %913, %825
  %1569 = fmul fast float %912, %825
  %1570 = fmul fast float %911, %825
  %1571 = fmul fast float %910, %825
  %1572 = fsub fast float %909, %1519
  %1573 = fmul fast float %1572, %825
  %1574 = fadd fast float %1573, %1519
  %1575 = fsub fast float %908, %1533
  %1576 = fmul fast float %1575, %825
  %1577 = fadd fast float %1576, %1533
  %1578 = fsub fast float %907, %1535
  %1579 = fmul fast float %1578, %825
  %1580 = fadd fast float %1579, %1535
  %1581 = fsub fast float %906, %1537
  %1582 = fmul fast float %1581, %825
  %1583 = fadd fast float %1582, %1537
  %1584 = fmul fast float %905, %825
  %1585 = fmul fast float %904, %825
  %1586 = fmul fast float %903, %825
  %1587 = fmul fast float %902, %825
  %1588 = fmul fast float %901, %825
  br label %1589

; <label>:1589                                    ; preds = %1503, %900
  %1590 = phi float [ %1588, %1503 ], [ %901, %900 ]
  %1591 = phi float [ %1587, %1503 ], [ %902, %900 ]
  %1592 = phi float [ %1586, %1503 ], [ %903, %900 ]
  %1593 = phi float [ %1585, %1503 ], [ %904, %900 ]
  %1594 = phi float [ %1584, %1503 ], [ %905, %900 ]
  %1595 = phi float [ %1583, %1503 ], [ %906, %900 ]
  %1596 = phi float [ %1580, %1503 ], [ %907, %900 ]
  %1597 = phi float [ %1577, %1503 ], [ %908, %900 ]
  %1598 = phi float [ %1574, %1503 ], [ %909, %900 ]
  %1599 = phi float [ %1571, %1503 ], [ %910, %900 ]
  %1600 = phi float [ %1570, %1503 ], [ %911, %900 ]
  %1601 = phi float [ %1569, %1503 ], [ %912, %900 ]
  %1602 = phi float [ %1568, %1503 ], [ %913, %900 ]
  %1603 = phi float [ %1567, %1503 ], [ %914, %900 ]
  %1604 = phi float [ %1566, %1503 ], [ %915, %900 ]
  %1605 = phi float [ %1563, %1503 ], [ %916, %900 ]
  %1606 = phi float [ %1560, %1503 ], [ %917, %900 ]
  %1607 = phi float [ %1557, %1503 ], [ %918, %900 ]
  %1608 = phi float [ %1554, %1503 ], [ %919, %900 ]
  %1609 = phi float [ %1553, %1503 ], [ %920, %900 ]
  %1610 = phi float [ %1552, %1503 ], [ %921, %900 ]
  %1611 = phi float [ %1551, %1503 ], [ %922, %900 ]
  %1612 = phi float [ %1550, %1503 ], [ %923, %900 ]
  %1613 = phi float [ %1549, %1503 ], [ %924, %900 ]
  %1614 = phi float [ %1546, %1503 ], [ %925, %900 ]
  %1615 = phi float [ %1543, %1503 ], [ %926, %900 ]
  %1616 = phi float [ %1540, %1503 ], [ %927, %900 ]
  %1617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1618 = extractvalue %dx.types.CBufRet.f32 %1617, 2
  %1619 = fmul fast float %1618, %1618
  %1620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1621 = extractvalue %dx.types.CBufRet.f32 %1620, 0
  %1622 = extractvalue %dx.types.CBufRet.f32 %1620, 1
  %1623 = extractvalue %dx.types.CBufRet.f32 %1620, 2
  %1624 = fmul fast float %1616, 0x3FD20DD760000000
  %1625 = fmul fast float %1623, %1614
  %1626 = fmul fast float %1623, %1623
  %1627 = fmul fast float %1626, 0x3FEE471020000000
  %1628 = fadd fast float %1627, 0xBFD42F6020000000
  %1629 = fmul fast float %1628, %1610
  %1630 = fmul fast float %1621, %1613
  %1631 = fmul fast float %1622, %1615
  %1632 = fmul fast float %1623, 0x3FF17B1420000000
  %1633 = fmul fast float %1619, %1609
  %1634 = fmul fast float %1633, %1621
  %1635 = fmul fast float %1634, %1632
  %1636 = fmul fast float %1619, %1611
  %1637 = fmul fast float %1636, %1622
  %1638 = fmul fast float %1637, %1632
  %1639 = fmul fast float %1621, %1621
  %1640 = fmul fast float %1622, %1622
  %1641 = fsub fast float %1639, %1640
  %1642 = fmul fast float %1608, 0x3FE17B1420000000
  %1643 = fmul fast float %1642, %1641
  %1644 = fmul fast float %1612, 0x3FF17B1420000000
  %1645 = fmul fast float %1644, %1622
  %1646 = fmul fast float %1645, %1621
  %1647 = fadd fast float %1643, %1646
  %1648 = fadd fast float %1647, %1629
  %1649 = fmul fast float %1648, %1619
  %1650 = fsub fast float %1631, %1625
  %1651 = fadd fast float %1650, %1630
  %1652 = fmul fast float %1651, 0x3FDF454380000000
  %1653 = fmul fast float %1652, %1618
  %1654 = fsub fast float %1624, %1635
  %1655 = fsub fast float %1654, %1638
  %1656 = fadd fast float %1655, %1649
  %1657 = fadd fast float %1656, %1653
  %1658 = fmul fast float %1607, 0x3FD20DD760000000
  %1659 = fmul fast float %1623, %1605
  %1660 = fmul fast float %1628, %1601
  %1661 = fmul fast float %1621, %1604
  %1662 = fmul fast float %1622, %1606
  %1663 = fmul fast float %1619, %1600
  %1664 = fmul fast float %1663, %1621
  %1665 = fmul fast float %1664, %1632
  %1666 = fmul fast float %1619, %1602
  %1667 = fmul fast float %1666, %1622
  %1668 = fmul fast float %1667, %1632
  %1669 = fmul fast float %1599, 0x3FE17B1420000000
  %1670 = fmul fast float %1669, %1641
  %1671 = fmul fast float %1603, 0x3FF17B1420000000
  %1672 = fmul fast float %1671, %1622
  %1673 = fmul fast float %1672, %1621
  %1674 = fadd fast float %1670, %1673
  %1675 = fadd fast float %1674, %1660
  %1676 = fmul fast float %1675, %1619
  %1677 = fsub fast float %1662, %1659
  %1678 = fadd fast float %1677, %1661
  %1679 = fmul fast float %1678, 0x3FDF454380000000
  %1680 = fmul fast float %1679, %1618
  %1681 = fsub fast float %1658, %1665
  %1682 = fsub fast float %1681, %1668
  %1683 = fadd fast float %1682, %1676
  %1684 = fadd fast float %1683, %1680
  %1685 = fmul fast float %1598, 0x3FD20DD760000000
  %1686 = fmul fast float %1623, %1596
  %1687 = fmul fast float %1628, %1592
  %1688 = fmul fast float %1621, %1595
  %1689 = fmul fast float %1622, %1597
  %1690 = fmul fast float %1619, %1591
  %1691 = fmul fast float %1690, %1621
  %1692 = fmul fast float %1691, %1632
  %1693 = fmul fast float %1619, %1593
  %1694 = fmul fast float %1693, %1622
  %1695 = fmul fast float %1694, %1632
  %1696 = fmul fast float %1590, 0x3FE17B1420000000
  %1697 = fmul fast float %1696, %1641
  %1698 = fmul fast float %1594, 0x3FF17B1420000000
  %1699 = fmul fast float %1698, %1622
  %1700 = fmul fast float %1699, %1621
  %1701 = fadd fast float %1697, %1700
  %1702 = fadd fast float %1701, %1687
  %1703 = fmul fast float %1702, %1619
  %1704 = fsub fast float %1689, %1686
  %1705 = fadd fast float %1704, %1688
  %1706 = fmul fast float %1705, 0x3FDF454380000000
  %1707 = fmul fast float %1706, %1618
  %1708 = fsub fast float %1685, %1692
  %1709 = fsub fast float %1708, %1695
  %1710 = fadd fast float %1709, %1703
  %1711 = fadd fast float %1710, %1707
  %1712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1713 = extractvalue %dx.types.CBufRet.f32 %1712, 3
  %1714 = extractvalue %dx.types.CBufRet.f32 %766, 0
  %1715 = fmul fast float %1714, %1713
  %1716 = fmul fast float %1715, %1657
  %1717 = fmul fast float %1715, %1684
  %1718 = fmul fast float %1715, %1711
  %1719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1720 = extractvalue %dx.types.CBufRet.f32 %1719, 3
  %1721 = fcmp fast une float %1720, 0.000000e+00
  %1722 = extractvalue %dx.types.CBufRet.f32 %1719, 0
  %1723 = extractvalue %dx.types.CBufRet.f32 %1719, 1
  %1724 = extractvalue %dx.types.CBufRet.f32 %1719, 2
  br i1 %1721, label %1725, label %1747, !dx.controlflow.hints !71

; <label>:1725                                    ; preds = %1589
  %1726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1727 = extractvalue %dx.types.CBufRet.f32 %1726, 0
  %1728 = extractvalue %dx.types.CBufRet.f32 %1726, 1
  %1729 = extractvalue %dx.types.CBufRet.f32 %1726, 2
  %1730 = call float @dx.op.dot3.f32(i32 55, float %1722, float %1723, float %1724, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %1731 = fcmp fast ogt float %776, 0.000000e+00
  %1732 = select i1 %1731, float 1.000000e+00, float -1.000000e+00
  %1733 = fmul fast float %1732, 5.000000e-01
  %1734 = fmul fast float %1733, %1730
  %1735 = fmul fast float %1732, %776
  %1736 = fadd fast float %1734, 4.921875e-01
  %1737 = fadd fast float %1735, -3.125000e-02
  %1738 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %24, float %1736, float 0x3FB25F3060000000, float %1737, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1739 = extractvalue %dx.types.ResRet.f32 %1738, 0
  %1740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1741 = extractvalue %dx.types.CBufRet.f32 %1740, 0
  %1742 = fmul fast float %1739, 0x400921FB60000000
  %1743 = fmul fast float %1742, %1741
  %1744 = fmul fast float %1743, %1727
  %1745 = fmul fast float %1743, %1728
  %1746 = fmul fast float %1743, %1729
  br label %1747

; <label>:1747                                    ; preds = %1725, %1589
  %1748 = phi float [ %1744, %1725 ], [ 0.000000e+00, %1589 ]
  %1749 = phi float [ %1745, %1725 ], [ 0.000000e+00, %1589 ]
  %1750 = phi float [ %1746, %1725 ], [ 0.000000e+00, %1589 ]
  %1751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1752 = extractvalue %dx.types.CBufRet.f32 %1751, 0
  %1753 = fmul fast float %1752, %1722
  %1754 = fmul fast float %1752, %1723
  %1755 = fmul fast float %1752, %1724
  %1756 = fadd fast float %1753, %259
  %1757 = fadd fast float %1754, %260
  %1758 = fadd fast float %1755, %261
  br i1 %271, label %1808, label %1759, !dx.controlflow.hints !47

; <label>:1759                                    ; preds = %1747
  %1760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1761 = extractvalue %dx.types.CBufRet.f32 %1760, 0
  %1762 = extractvalue %dx.types.CBufRet.f32 %1760, 1
  %1763 = extractvalue %dx.types.CBufRet.f32 %1760, 2
  %1764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1765 = extractvalue %dx.types.CBufRet.f32 %1764, 0
  %1766 = extractvalue %dx.types.CBufRet.f32 %1764, 1
  %1767 = extractvalue %dx.types.CBufRet.f32 %1764, 2
  %1768 = fsub fast float %1756, %1765
  %1769 = fsub fast float %1757, %1766
  %1770 = fsub fast float %1758, %1767
  %1771 = fmul fast float %1768, %1761
  %1772 = fmul fast float %1769, %1762
  %1773 = fmul fast float %1770, %1763
  %1774 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %1775 = extractvalue %dx.types.CBufRet.i32 %1774, 3
  %1776 = icmp eq i32 %1775, 0
  br i1 %1776, label %1780, label %1777, !dx.controlflow.hints !48

; <label>:1777                                    ; preds = %1759
  %1778 = call float @dx.op.unary.f32(i32 22, float %1771)  ; Frc(value)
  %1779 = call float @dx.op.unary.f32(i32 22, float %1772)  ; Frc(value)
  br label %1780

; <label>:1780                                    ; preds = %1777, %1759
  %1781 = phi float [ %1778, %1777 ], [ %1771, %1759 ]
  %1782 = phi float [ %1779, %1777 ], [ %1772, %1759 ]
  %1783 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %22, float %1781, float %1782, float %1773, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1784 = extractvalue %dx.types.ResRet.f32 %1783, 0
  %1785 = fmul fast float %1784, 2.000000e+00
  %1786 = fadd fast float %1785, -1.000000e+00
  %1787 = extractvalue %dx.types.CBufRet.f32 %1760, 3
  %1788 = fmul fast float %1786, %1787
  %1789 = fcmp fast olt float %1788, 0.000000e+00
  %1790 = fcmp fast oge float %1773, 0.000000e+00
  %1791 = fcmp fast ole float %1773, 1.000000e+00
  br i1 %1776, label %1794, label %1792, !dx.controlflow.hints !49

; <label>:1792                                    ; preds = %1780
  %1793 = and i1 %1790, %1791
  br label %1804

; <label>:1794                                    ; preds = %1780
  %1795 = fcmp fast oge float %1771, 0.000000e+00
  %1796 = fcmp fast oge float %1772, 0.000000e+00
  %1797 = and i1 %1795, %1796
  %1798 = and i1 %1790, %1797
  %1799 = fcmp fast ole float %1771, 1.000000e+00
  %1800 = fcmp fast ole float %1772, 1.000000e+00
  %1801 = and i1 %1799, %1800
  %1802 = and i1 %1791, %1801
  %1803 = and i1 %1798, %1802
  br label %1804

; <label>:1804                                    ; preds = %1794, %1792
  %1805 = phi i1 [ %1793, %1792 ], [ %1803, %1794 ]
  %1806 = and i1 %1789, %1805
  %1807 = zext i1 %1806 to i32
  br label %1808

; <label>:1808                                    ; preds = %1804, %1747
  %1809 = phi i32 [ %1807, %1804 ], [ 0, %1747 ]
  br i1 %331, label %1964, label %1810, !dx.controlflow.hints !50

; <label>:1810                                    ; preds = %1808
  %1811 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1812 = extractvalue %dx.types.CBufRet.i32 %1811, 1
  %1813 = and i32 %1812, 1
  %1814 = icmp eq i32 %1813, 0
  br i1 %1814, label %1815, label %1959, !dx.controlflow.hints !51

; <label>:1815                                    ; preds = %1810
  %1816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %1817 = extractvalue %dx.types.CBufRet.f32 %1816, 2
  %1818 = extractvalue %dx.types.CBufRet.f32 %1816, 3
  %1819 = fmul fast float %1817, %1756
  %1820 = fmul fast float %1818, %1757
  %1821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %1822 = extractvalue %dx.types.CBufRet.f32 %1821, 0
  %1823 = extractvalue %dx.types.CBufRet.f32 %1821, 1
  %1824 = fadd fast float %1819, %1822
  %1825 = fadd fast float %1820, %1823
  %1826 = call float @dx.op.unary.f32(i32 7, float %1824)  ; Saturate(value)
  %1827 = call float @dx.op.unary.f32(i32 7, float %1825)  ; Saturate(value)
  %1828 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %24, float %1826, float %1827, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1829 = extractvalue %dx.types.ResRet.f32 %1828, 0
  %1830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1831 = extractvalue %dx.types.CBufRet.f32 %1830, 0
  %1832 = fmul fast float %1831, %1829
  %1833 = fsub fast float %1824, %1826
  %1834 = fsub fast float %1825, %1827
  %1835 = extractvalue %dx.types.CBufRet.f32 %1816, 0
  %1836 = extractvalue %dx.types.CBufRet.f32 %1816, 1
  %1837 = fmul fast float %1835, %1833
  %1838 = fmul fast float %1836, %1834
  %1839 = fmul fast float %1837, %1837
  %1840 = fmul fast float %1838, %1838
  %1841 = fadd fast float %1839, %1840
  %1842 = call float @dx.op.unary.f32(i32 24, float %1841)  ; Sqrt(value)
  %1843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1844 = extractvalue %dx.types.CBufRet.f32 %1843, 3
  %1845 = fmul fast float %1844, %1842
  %1846 = call float @dx.op.unary.f32(i32 7, float %1845)  ; Saturate(value)
  %1847 = extractvalue %dx.types.CBufRet.f32 %1843, 2
  %1848 = fsub fast float %1847, %1832
  %1849 = fmul fast float %1848, %1846
  %1850 = extractvalue %dx.types.CBufRet.f32 %1830, 1
  %1851 = fsub fast float %1758, %1832
  %1852 = fsub fast float %1851, %1850
  %1853 = fsub fast float %1852, %1849
  %1854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1855 = extractvalue %dx.types.CBufRet.f32 %1854, 2
  %1856 = fsub fast float %1853, %1855
  %1857 = fcmp fast olt float %1856, 0.000000e+00
  %1858 = extractvalue %dx.types.CBufRet.i32 %1811, 0
  %1859 = icmp eq i32 %1858, 0
  br i1 %1859, label %1910, label %1860

; <label>:1860                                    ; preds = %1815
  br label %1861

; <label>:1861                                    ; preds = %1899, %1860
  %1862 = phi i32 [ %1905, %1899 ], [ 1, %1860 ]
  %1863 = phi i32 [ %1906, %1899 ], [ 0, %1860 ]
  %1864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1865 = extractvalue %dx.types.CBufRet.f32 %1864, 1
  %1866 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1867 = extractvalue %dx.types.CBufRet.i32 %1866, 1
  %1868 = and i32 %1867, 8
  %1869 = icmp eq i32 %1868, 0
  %1870 = fcmp fast ogt float %1865, %1853
  %1871 = or i1 %1870, %1869
  %1872 = add i32 %1863, 171
  %1873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 %1872)  ; CBufferLoadLegacy(handle,regIndex)
  %1874 = extractvalue %dx.types.CBufRet.f32 %1873, 0
  %1875 = extractvalue %dx.types.CBufRet.f32 %1873, 1
  %1876 = extractvalue %dx.types.CBufRet.f32 %1873, 2
  br i1 %1871, label %1877, label %1883, !dx.controlflow.hints !52

; <label>:1877                                    ; preds = %1861
  %1878 = fsub fast float %1874, %1756
  %1879 = fsub fast float %1875, %1757
  %1880 = fmul fast float %1878, %1878
  %1881 = fmul fast float %1879, %1879
  %1882 = fadd fast float %1880, %1881
  br label %1899

; <label>:1883                                    ; preds = %1861
  %1884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1885 = extractvalue %dx.types.CBufRet.f32 %1884, 2
  %1886 = extractvalue %dx.types.CBufRet.f32 %1864, 2
  %1887 = fmul fast float %1886, %1885
  %1888 = fsub fast float %1887, %1865
  %1889 = fdiv fast float %1876, %1888
  %1890 = fsub fast float %1756, %1874
  %1891 = fsub fast float %1757, %1875
  %1892 = fsub fast float %1853, %1865
  %1893 = fmul fast float %1889, %1892
  %1894 = fmul fast float %1890, %1890
  %1895 = fmul fast float %1891, %1891
  %1896 = fadd fast float %1894, %1895
  %1897 = fmul fast float %1893, %1893
  %1898 = fadd fast float %1896, %1897
  br label %1899

; <label>:1899                                    ; preds = %1883, %1877
  %1900 = phi float [ %1882, %1877 ], [ %1898, %1883 ]
  %1901 = call float @dx.op.unary.f32(i32 24, float %1900)  ; Sqrt(value)
  %1902 = fsub float %1876, %1901
  %1903 = fcmp fast olt float %1902, 0.000000e+00
  %1904 = zext i1 %1903 to i32
  %1905 = and i32 %1904, %1862
  %1906 = add i32 %1863, 1
  %1907 = extractvalue %dx.types.CBufRet.i32 %1866, 0
  %1908 = icmp ult i32 %1906, %1907
  br i1 %1908, label %1861, label %1909

; <label>:1909                                    ; preds = %1899
  br label %1910

; <label>:1910                                    ; preds = %1909, %1815
  %1911 = phi i32 [ 1, %1815 ], [ %1905, %1909 ]
  br label %1912

; <label>:1912                                    ; preds = %1912, %1910
  %1913 = phi i32 [ %1949, %1912 ], [ %1911, %1910 ]
  %1914 = phi i32 [ %1950, %1912 ], [ 0, %1910 ]
  %1915 = add nuw nsw i32 %1914, 191
  %1916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 %1915)  ; CBufferLoadLegacy(handle,regIndex)
  %1917 = extractvalue %dx.types.CBufRet.f32 %1916, 0
  %1918 = extractvalue %dx.types.CBufRet.f32 %1916, 1
  %1919 = extractvalue %dx.types.CBufRet.f32 %1916, 2
  %1920 = add nuw nsw i32 %1914, 195
  %1921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 %1920)  ; CBufferLoadLegacy(handle,regIndex)
  %1922 = extractvalue %dx.types.CBufRet.f32 %1921, 0
  %1923 = extractvalue %dx.types.CBufRet.f32 %1921, 1
  %1924 = extractvalue %dx.types.CBufRet.f32 %1921, 2
  %1925 = fsub fast float %1756, %1917
  %1926 = fsub fast float %1757, %1918
  %1927 = fsub fast float %1853, %1919
  %1928 = call float @dx.op.unary.f32(i32 6, float %1925)  ; FAbs(value)
  %1929 = call float @dx.op.unary.f32(i32 6, float %1926)  ; FAbs(value)
  %1930 = call float @dx.op.unary.f32(i32 6, float %1927)  ; FAbs(value)
  %1931 = fsub fast float %1928, %1922
  %1932 = fsub fast float %1929, %1923
  %1933 = fsub fast float %1930, %1924
  %1934 = call float @dx.op.binary.f32(i32 35, float %1931, float 0.000000e+00)  ; FMax(a,b)
  %1935 = call float @dx.op.binary.f32(i32 35, float %1932, float 0.000000e+00)  ; FMax(a,b)
  %1936 = call float @dx.op.binary.f32(i32 35, float %1933, float 0.000000e+00)  ; FMax(a,b)
  %1937 = fmul fast float %1934, %1934
  %1938 = fmul fast float %1935, %1935
  %1939 = fadd fast float %1938, %1937
  %1940 = fmul fast float %1936, %1936
  %1941 = fadd fast float %1939, %1940
  %1942 = call float @dx.op.unary.f32(i32 24, float %1941)  ; Sqrt(value)
  %1943 = call float @dx.op.binary.f32(i32 35, float %1932, float %1933)  ; FMax(a,b)
  %1944 = call float @dx.op.binary.f32(i32 35, float %1931, float %1943)  ; FMax(a,b)
  %1945 = call float @dx.op.binary.f32(i32 36, float %1944, float 0.000000e+00)  ; FMin(a,b)
  %1946 = fadd fast float %1945, %1942
  %1947 = fcmp ogt float %1946, -0.000000e+00
  %1948 = zext i1 %1947 to i32
  %1949 = and i32 %1948, %1913
  %1950 = add nuw nsw i32 %1914, 1
  %1951 = icmp eq i32 %1950, 4
  br i1 %1951, label %1952, label %1912

; <label>:1952                                    ; preds = %1912
  %1953 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1954 = extractvalue %dx.types.CBufRet.i32 %1953, 1
  %1955 = lshr i32 %1954, 1
  %1956 = xor i32 %1955, %1949
  %1957 = zext i1 %1857 to i32
  %1958 = and i32 %1956, %1957
  br label %1959

; <label>:1959                                    ; preds = %1952, %1810
  %1960 = phi i32 [ %250, %1810 ], [ %1958, %1952 ]
  %1961 = phi float [ %1758, %1810 ], [ %1853, %1952 ]
  %1962 = icmp ne i32 %1960, 0
  %1963 = zext i1 %1962 to i32
  br label %1964

; <label>:1964                                    ; preds = %1959, %1808
  %1965 = phi i32 [ %1960, %1959 ], [ %250, %1808 ]
  %1966 = phi float [ %1961, %1959 ], [ %251, %1808 ]
  %1967 = phi i32 [ %1963, %1959 ], [ 0, %1808 ]
  %1968 = icmp eq i32 %1809, 0
  br i1 %1968, label %2148, label %1969, !dx.controlflow.hints !53

; <label>:1969                                    ; preds = %1964
  %1970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1971 = extractvalue %dx.types.CBufRet.f32 %1970, 3
  %1972 = fmul fast float %1971, %1752
  %1973 = fcmp fast oeq float %1972, 0.000000e+00
  br i1 %1973, label %1988, label %1974, !dx.controlflow.hints !54

; <label>:1974                                    ; preds = %1969
  %1975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1976 = extractvalue %dx.types.CBufRet.f32 %1975, 3
  %1977 = fmul fast float %1976, %1972
  %1978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1979 = extractvalue %dx.types.CBufRet.f32 %1978, 0
  %1980 = extractvalue %dx.types.CBufRet.f32 %1978, 1
  %1981 = extractvalue %dx.types.CBufRet.f32 %1978, 2
  %1982 = fmul fast float %1979, %1977
  %1983 = fmul fast float %1980, %1977
  %1984 = fmul fast float %1981, %1977
  %1985 = call float @dx.op.unary.f32(i32 23, float %1982)  ; Log(value)
  %1986 = call float @dx.op.unary.f32(i32 23, float %1983)  ; Log(value)
  %1987 = call float @dx.op.unary.f32(i32 23, float %1984)  ; Log(value)
  br label %1988

; <label>:1988                                    ; preds = %1974, %1969
  %1989 = phi float [ %1985, %1974 ], [ 0.000000e+00, %1969 ]
  %1990 = phi float [ %1986, %1974 ], [ 0.000000e+00, %1969 ]
  %1991 = phi float [ %1987, %1974 ], [ 0.000000e+00, %1969 ]
  %1992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1993 = extractvalue %dx.types.CBufRet.f32 %1992, 0
  %1994 = extractvalue %dx.types.CBufRet.f32 %1992, 1
  %1995 = extractvalue %dx.types.CBufRet.f32 %1992, 2
  %1996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1997 = extractvalue %dx.types.CBufRet.f32 %1996, 0
  %1998 = extractvalue %dx.types.CBufRet.f32 %1996, 1
  %1999 = extractvalue %dx.types.CBufRet.f32 %1996, 2
  %2000 = fsub fast float %1756, %1997
  %2001 = fsub fast float %1757, %1998
  %2002 = fsub fast float %1758, %1999
  %2003 = fmul fast float %2000, %1993
  %2004 = fmul fast float %2001, %1994
  %2005 = fmul fast float %2002, %1995
  %2006 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %2007 = extractvalue %dx.types.CBufRet.i32 %2006, 0
  %2008 = extractvalue %dx.types.CBufRet.i32 %2006, 1
  %2009 = uitofp i32 %2007 to float
  %2010 = uitofp i32 %2008 to float
  %2011 = fmul fast float %2003, %2009
  %2012 = fmul fast float %2004, %2010
  %2013 = fadd fast float %2011, 5.000000e-01
  %2014 = fadd fast float %2012, 5.000000e-01
  %2015 = call float @dx.op.unary.f32(i32 22, float %2013)  ; Frc(value)
  %2016 = call float @dx.op.unary.f32(i32 22, float %2014)  ; Frc(value)
  %2017 = call float @dx.op.unary.f32(i32 27, float %2013)  ; Round_ni(value)
  %2018 = call float @dx.op.unary.f32(i32 27, float %2014)  ; Round_ni(value)
  %2019 = fadd fast float %2017, 1.000000e+00
  %2020 = fadd fast float %2018, 1.000000e+00
  %2021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %2022 = extractvalue %dx.types.CBufRet.f32 %2021, 0
  %2023 = extractvalue %dx.types.CBufRet.f32 %2021, 1
  %2024 = fmul fast float %2022, %2019
  %2025 = fmul fast float %2023, %2020
  %2026 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %23, float %2024, float %2025, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2027 = extractvalue %dx.types.ResRet.f32 %2026, 0
  %2028 = extractvalue %dx.types.ResRet.f32 %2026, 1
  %2029 = extractvalue %dx.types.ResRet.f32 %2026, 2
  %2030 = extractvalue %dx.types.ResRet.f32 %2026, 3
  %2031 = extractvalue %dx.types.CBufRet.i32 %2006, 2
  %2032 = extractvalue %dx.types.CBufRet.f32 %2021, 2
  %2033 = uitofp i32 %2031 to float
  %2034 = fadd fast float %2033, -1.000000e+00
  %2035 = fmul fast float %2034, %2027
  %2036 = fmul fast float %2034, %2028
  %2037 = fmul fast float %2034, %2029
  %2038 = fmul fast float %2034, %2030
  %2039 = fadd fast float %2035, 5.000000e-01
  %2040 = fadd fast float %2036, 5.000000e-01
  %2041 = fadd fast float %2037, 5.000000e-01
  %2042 = fadd fast float %2038, 5.000000e-01
  %2043 = fptoui float %2039 to i32
  %2044 = fptoui float %2040 to i32
  %2045 = fptoui float %2041 to i32
  %2046 = fptoui float %2042 to i32
  %2047 = uitofp i32 %2043 to float
  %2048 = uitofp i32 %2044 to float
  %2049 = uitofp i32 %2045 to float
  %2050 = uitofp i32 %2046 to float
  %2051 = fadd fast float %2047, 5.000000e-01
  %2052 = fadd fast float %2048, 5.000000e-01
  %2053 = fadd fast float %2049, 5.000000e-01
  %2054 = fadd fast float %2050, 5.000000e-01
  %2055 = fmul fast float %2051, %2032
  %2056 = fmul fast float %2052, %2032
  %2057 = fmul fast float %2053, %2032
  %2058 = fmul fast float %2054, %2032
  %2059 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %24, float %2055, float %2005, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2060 = extractvalue %dx.types.ResRet.f32 %2059, 0
  %2061 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %24, float %2056, float %2005, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2062 = extractvalue %dx.types.ResRet.f32 %2061, 0
  %2063 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %24, float %2057, float %2005, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2064 = extractvalue %dx.types.ResRet.f32 %2063, 0
  %2065 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %24, float %2058, float %2005, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2066 = extractvalue %dx.types.ResRet.f32 %2065, 0
  %2067 = fsub fast float %2064, %2066
  %2068 = fmul fast float %2067, %2015
  %2069 = fadd fast float %2068, %2066
  %2070 = fsub fast float %2062, %2060
  %2071 = fmul fast float %2070, %2015
  %2072 = fadd fast float %2071, %2060
  %2073 = fsub fast float %2072, %2069
  %2074 = fmul fast float %2073, %2016
  %2075 = fadd fast float %2074, %2069
  %2076 = fcmp fast ogt float %2075, 0.000000e+00
  br i1 %2076, label %2077, label %2145, !dx.controlflow.hints !55

; <label>:2077                                    ; preds = %1988
  %2078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %2079 = extractvalue %dx.types.CBufRet.f32 %2078, 0
  %2080 = extractvalue %dx.types.CBufRet.f32 %2078, 1
  %2081 = extractvalue %dx.types.CBufRet.f32 %2078, 2
  %2082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %2083 = extractvalue %dx.types.CBufRet.f32 %2082, 0
  %2084 = extractvalue %dx.types.CBufRet.f32 %2082, 1
  %2085 = extractvalue %dx.types.CBufRet.f32 %2082, 2
  %2086 = fmul fast float %2001, %1993
  %2087 = fmul fast float %2002, %1993
  %2088 = fadd fast float %2003, %2083
  %2089 = fadd fast float %2086, %2084
  %2090 = fadd fast float %2087, %2085
  %2091 = fmul fast float %2088, %2079
  %2092 = fmul fast float %2089, %2079
  %2093 = fmul fast float %2090, %2079
  %2094 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %21, float %2091, float %2092, float %2093, float undef, i32 0, i32 0, i32 0, float %1989)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2095 = extractvalue %dx.types.ResRet.f32 %2094, 0
  %2096 = fmul fast float %2088, %2080
  %2097 = fmul fast float %2089, %2080
  %2098 = fmul fast float %2090, %2080
  %2099 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %21, float %2096, float %2097, float %2098, float undef, i32 0, i32 0, i32 0, float %1990)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2100 = extractvalue %dx.types.ResRet.f32 %2099, 1
  %2101 = fmul fast float %2088, %2081
  %2102 = fmul fast float %2089, %2081
  %2103 = fmul fast float %2090, %2081
  %2104 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %21, float %2101, float %2102, float %2103, float undef, i32 0, i32 0, i32 0, float %1991)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2105 = extractvalue %dx.types.ResRet.f32 %2104, 2
  %2106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %2107 = extractvalue %dx.types.CBufRet.f32 %2106, 1
  %2108 = fmul fast float %2100, %2095
  %2109 = fmul fast float %2108, %2105
  %2110 = call float @dx.op.unary.f32(i32 23, float %2109)  ; Log(value)
  %2111 = fmul fast float %2110, %2107
  %2112 = call float @dx.op.unary.f32(i32 21, float %2111)  ; Exp(value)
  %2113 = extractvalue %dx.types.CBufRet.f32 %2106, 2
  %2114 = fmul fast float %2075, %2075
  %2115 = fmul fast float %2114, %2112
  %2116 = fmul fast float %2115, %2113
  %2117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %2118 = extractvalue %dx.types.CBufRet.f32 %2117, 3
  %2119 = fmul fast float %2118, %2116
  %2120 = bitcast float %2119 to i32
  %2121 = sitofp i32 %2120 to float
  %2122 = fptosi float %2121 to i32
  %2123 = bitcast i32 %2122 to float
  %2124 = fsub fast float 1.000000e+00, %2116
  %2125 = bitcast float %2124 to i32
  %2126 = sitofp i32 %2125 to float
  %2127 = fptosi float %2126 to i32
  %2128 = bitcast i32 %2127 to float
  %2129 = fadd fast float %2123, %2128
  %2130 = bitcast float %2129 to i32
  %2131 = sub nsw i32 2129859010, %2130
  %2132 = bitcast i32 %2131 to float
  %2133 = fmul fast float %2132, %2123
  %2134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2135 = extractvalue %dx.types.CBufRet.f32 %2134, 2
  %2136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %2137 = extractvalue %dx.types.CBufRet.f32 %2136, 0
  %2138 = fmul fast float %2133, %2137
  %2139 = fadd fast float %2138, 1.000000e+00
  %2140 = bitcast float %2139 to i32
  %2141 = sub nsw i32 2129859010, %2140
  %2142 = bitcast i32 %2141 to float
  %2143 = fmul fast float %2133, %2135
  %2144 = fmul fast float %2143, %2142
  br label %2145

; <label>:2145                                    ; preds = %2077, %1988
  %2146 = phi float [ %2144, %2077 ], [ %2075, %1988 ]
  %2147 = fmul fast float %2146, %1752
  br label %2148

; <label>:2148                                    ; preds = %2145, %1964
  %2149 = phi float [ %2147, %2145 ], [ 0.000000e+00, %1964 ]
  %2150 = icmp eq i32 %1967, 0
  br i1 %2150, label %2182, label %2151, !dx.controlflow.hints !56

; <label>:2151                                    ; preds = %2148
  %2152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %2153 = extractvalue %dx.types.CBufRet.f32 %2152, 1
  %2154 = fsub fast float %1752, %2153
  %2155 = extractvalue %dx.types.CBufRet.f32 %2152, 3
  %2156 = fmul fast float %2154, %2155
  %2157 = call float @dx.op.unary.f32(i32 7, float %2156)  ; Saturate(value)
  %2158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %2159 = extractvalue %dx.types.CBufRet.f32 %2158, 3
  %2160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2161 = extractvalue %dx.types.CBufRet.f32 %2160, 2
  %2162 = fsub fast float %2161, %1966
  %2163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %2164 = extractvalue %dx.types.CBufRet.f32 %2163, 3
  %2165 = fmul fast float %2162, %2164
  %2166 = call float @dx.op.unary.f32(i32 7, float %2165)  ; Saturate(value)
  %2167 = fmul fast float %2166, %2159
  %2168 = extractvalue %dx.types.CBufRet.f32 %2163, 0
  %2169 = fsub fast float %1752, %2168
  %2170 = extractvalue %dx.types.CBufRet.f32 %2163, 1
  %2171 = fmul fast float %2169, %2170
  %2172 = call float @dx.op.unary.f32(i32 7, float %2171)  ; Saturate(value)
  %2173 = fsub fast float 1.000000e+00, %2157
  %2174 = fmul fast float %2172, %2173
  %2175 = fadd fast float %2174, %2157
  %2176 = extractvalue %dx.types.CBufRet.f32 %2152, 0
  %2177 = fsub fast float %2167, %2176
  %2178 = fmul fast float %2177, %2175
  %2179 = fadd fast float %2178, %2176
  %2180 = fmul fast float %2179, %1752
  %2181 = fadd fast float %2180, %2149
  br label %2182

; <label>:2182                                    ; preds = %2151, %2148
  %2183 = phi float [ %2181, %2151 ], [ %2149, %2148 ]
  %2184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %2185 = extractvalue %dx.types.CBufRet.f32 %2184, 3
  %2186 = fmul fast float %2183, 0xBFF7154760000000
  %2187 = fmul fast float %2186, %2185
  %2188 = call float @dx.op.unary.f32(i32 21, float %2187)  ; Exp(value)
  %2189 = call float @dx.op.unary.f32(i32 7, float %2188)  ; Saturate(value)
  %2190 = fmul fast float %2189, %1748
  %2191 = fmul fast float %2189, %1749
  %2192 = fmul fast float %2189, %1750
  %2193 = fadd fast float %2190, %1716
  %2194 = fadd fast float %2191, %1717
  %2195 = fadd fast float %2192, %1718
  %2196 = fsub fast float 1.000000e+00, %785
  %2197 = fmul fast float %777, %255
  %2198 = fmul fast float %2197, %2196
  %2199 = fmul fast float %2198, %2193
  %2200 = fmul fast float %778, %255
  %2201 = fmul fast float %2200, %2196
  %2202 = fmul fast float %2201, %2194
  %2203 = fmul fast float %779, %255
  %2204 = fmul fast float %2203, %2196
  %2205 = fmul fast float %2204, %2195
  %2206 = fadd fast float %2199, %256
  %2207 = fadd fast float %2202, %257
  %2208 = fadd fast float %2205, %258
  %2209 = fdiv fast float %761, %519
  %2210 = fadd fast float %519, %262
  %2211 = fmul fast float %262, %262
  %2212 = fmul fast float %2210, %2210
  %2213 = fsub fast float %2211, %2212
  %2214 = fmul fast float %2213, -5.000000e-01
  %2215 = fmul fast float %2214, %2209
  %2216 = fadd fast float %2215, %254
  %2217 = fadd fast float %761, %263
  %2218 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2219 = extractvalue %dx.types.CBufRet.i32 %2218, 0
  %2220 = icmp eq i32 %2219, 0
  br i1 %2220, label %2247, label %2221, !dx.controlflow.hints !72

; <label>:2221                                    ; preds = %2182
  %2222 = icmp ne i32 %268, 0
  %2223 = zext i1 %2222 to i32
  %2224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2225 = extractvalue %dx.types.CBufRet.f32 %2224, 2
  %2226 = extractvalue %dx.types.CBufRet.f32 %2224, 0
  %2227 = fsub fast float %2210, %2226
  %2228 = fmul fast float %2227, %2225
  %2229 = call float @dx.op.unary.f32(i32 7, float %2228)  ; Saturate(value)
  %2230 = fadd fast float %2229, -5.000000e-01
  %2231 = fmul fast float %2230, 2.000000e+00
  %2232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2233 = extractvalue %dx.types.CBufRet.f32 %2232, 2
  %2234 = fcmp fast olt float %2231, %2233
  br i1 %2234, label %2235, label %2247, !dx.controlflow.hints !73

; <label>:2235                                    ; preds = %2221
  %2236 = fmul fast float %2231, %2231
  %2237 = fmul fast float %2196, %255
  %2238 = fmul fast float %2231, %2237
  %2239 = fmul fast float %2236, %2237
  %2240 = fmul fast float %2238, %2236
  %2241 = fmul fast float %2236, %2236
  %2242 = fmul fast float %2241, %2237
  %2243 = fadd fast float %2238, %264
  %2244 = fadd fast float %2239, %265
  %2245 = fadd fast float %2240, %266
  %2246 = fadd fast float %2242, %267
  br label %2247

; <label>:2247                                    ; preds = %2235, %2221, %2182
  %2248 = phi float [ %264, %2182 ], [ %2243, %2235 ], [ %264, %2221 ]
  %2249 = phi float [ %265, %2182 ], [ %2244, %2235 ], [ %265, %2221 ]
  %2250 = phi float [ %266, %2182 ], [ %2245, %2235 ], [ %266, %2221 ]
  %2251 = phi float [ %267, %2182 ], [ %2246, %2235 ], [ %267, %2221 ]
  %2252 = phi i32 [ %268, %2182 ], [ 1, %2235 ], [ %2223, %2221 ]
  %2253 = fmul fast float %785, %255
  br label %2254

; <label>:2254                                    ; preds = %2247, %780
  %2255 = phi float [ %781, %780 ], [ %2210, %2247 ]
  %2256 = phi i32 [ %250, %780 ], [ %1965, %2247 ]
  %2257 = phi float [ %251, %780 ], [ %1966, %2247 ]
  %2258 = phi float [ %254, %780 ], [ %2216, %2247 ]
  %2259 = phi float [ %255, %780 ], [ %2253, %2247 ]
  %2260 = phi float [ %256, %780 ], [ %2206, %2247 ]
  %2261 = phi float [ %257, %780 ], [ %2207, %2247 ]
  %2262 = phi float [ %258, %780 ], [ %2208, %2247 ]
  %2263 = phi float [ %263, %780 ], [ %2217, %2247 ]
  %2264 = phi float [ %264, %780 ], [ %2248, %2247 ]
  %2265 = phi float [ %265, %780 ], [ %2249, %2247 ]
  %2266 = phi float [ %266, %780 ], [ %2250, %2247 ]
  %2267 = phi float [ %267, %780 ], [ %2251, %2247 ]
  %2268 = phi i32 [ %268, %780 ], [ %2252, %2247 ]
  %2269 = fmul fast float %519, %113
  %2270 = fmul fast float %519, %114
  %2271 = fmul fast float %519, %115
  %2272 = fadd fast float %2269, %259
  %2273 = fadd fast float %2270, %260
  %2274 = fadd fast float %2271, %261
  %2275 = fcmp fast olt float %2255, %229
  %2276 = extractvalue %dx.types.CBufRet.f32 %766, 2
  %2277 = fcmp fast olt float %2276, %2259
  %2278 = and i1 %2275, %2277
  br i1 %2278, label %249, label %2279

; <label>:2279                                    ; preds = %2254
  br label %2280

; <label>:2280                                    ; preds = %2279, %225
  %2281 = phi float [ 0.000000e+00, %225 ], [ %2258, %2279 ]
  %2282 = phi float [ 1.000000e+00, %225 ], [ %2259, %2279 ]
  %2283 = phi float [ 0.000000e+00, %225 ], [ %2260, %2279 ]
  %2284 = phi float [ 0.000000e+00, %225 ], [ %2261, %2279 ]
  %2285 = phi float [ 0.000000e+00, %225 ], [ %2262, %2279 ]
  %2286 = phi float [ 0.000000e+00, %225 ], [ %2263, %2279 ]
  %2287 = phi float [ 0.000000e+00, %225 ], [ %2264, %2279 ]
  %2288 = phi float [ 0.000000e+00, %225 ], [ %2265, %2279 ]
  %2289 = phi float [ 0.000000e+00, %225 ], [ %2266, %2279 ]
  %2290 = phi float [ 0.000000e+00, %225 ], [ %2267, %2279 ]
  %2291 = phi i32 [ 0, %225 ], [ %2268, %2279 ]
  %2292 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2293 = extractvalue %dx.types.CBufRet.i32 %2292, 0
  %2294 = icmp eq i32 %2293, 0
  br i1 %2294, label %2336, label %2295, !dx.controlflow.hints !74

; <label>:2295                                    ; preds = %2280
  %2296 = icmp eq i32 %2291, 0
  br i1 %2296, label %2335, label %2297, !dx.controlflow.hints !75

; <label>:2297                                    ; preds = %2295
  %2298 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2299 = extractvalue %dx.types.CBufRet.i32 %2298, 2
  %2300 = icmp eq i32 %2299, 0
  br i1 %2300, label %2307, label %2301, !dx.controlflow.hints !76

; <label>:2301                                    ; preds = %2297
  %2302 = fsub fast float 1.000000e+00, %2282
  %2303 = fdiv fast float %2287, %2302
  %2304 = fdiv fast float %2288, %2302
  %2305 = fdiv fast float %2289, %2302
  %2306 = fdiv fast float %2290, %2302
  br label %2312

; <label>:2307                                    ; preds = %2297
  %2308 = fadd fast float %2287, %2282
  %2309 = fadd fast float %2288, %2282
  %2310 = fadd fast float %2289, %2282
  %2311 = fadd fast float %2290, %2282
  br label %2312

; <label>:2312                                    ; preds = %2307, %2301
  %2313 = phi float [ %2303, %2301 ], [ %2308, %2307 ]
  %2314 = phi float [ %2304, %2301 ], [ %2309, %2307 ]
  %2315 = phi float [ %2305, %2301 ], [ %2310, %2307 ]
  %2316 = phi float [ %2306, %2301 ], [ %2311, %2307 ]
  %2317 = call float @dx.op.binary.f32(i32 35, float %2313, float -1.000000e+00)  ; FMax(a,b)
  %2318 = call float @dx.op.binary.f32(i32 35, float %2314, float -1.000000e+00)  ; FMax(a,b)
  %2319 = call float @dx.op.binary.f32(i32 35, float %2315, float -1.000000e+00)  ; FMax(a,b)
  %2320 = call float @dx.op.binary.f32(i32 35, float %2316, float -1.000000e+00)  ; FMax(a,b)
  %2321 = call float @dx.op.binary.f32(i32 36, float %2317, float 1.000000e+00)  ; FMin(a,b)
  %2322 = call float @dx.op.binary.f32(i32 36, float %2318, float 1.000000e+00)  ; FMin(a,b)
  %2323 = call float @dx.op.binary.f32(i32 36, float %2319, float 1.000000e+00)  ; FMin(a,b)
  %2324 = call float @dx.op.binary.f32(i32 36, float %2320, float 1.000000e+00)  ; FMin(a,b)
  %2325 = fmul fast float %2321, 1.500000e+00
  %2326 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %2323, float %2325)  ; FMad(a,b,c)
  %2327 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %2322, float 0.000000e+00)  ; FMad(a,b,c)
  %2328 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %2324, float %2327)  ; FMad(a,b,c)
  %2329 = fmul fast float %2321, 0x3FEBB67AE0000000
  %2330 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %2323, float %2329)  ; FMad(a,b,c)
  %2331 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2322, float 0.000000e+00)  ; FMad(a,b,c)
  %2332 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2324, float %2331)  ; FMad(a,b,c)
  %2333 = fadd fast float %2326, 5.000000e-01
  %2334 = fadd fast float %2330, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %27, i32 %28, i32 0, float %2333, float %2328, float %2334, float %2332, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2336

; <label>:2335                                    ; preds = %2295
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %27, i32 %28, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2336

; <label>:2336                                    ; preds = %2335, %2312, %2280
  %2337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2338 = extractvalue %dx.types.CBufRet.f32 %2337, 2
  %2339 = fsub fast float %2282, %2338
  %2340 = fdiv fast float %2339, %2338
  %2341 = call float @dx.op.unary.f32(i32 7, float %2340)  ; Saturate(value)
  %2342 = fmul fast float %2341, 2.000000e+00
  %2343 = fsub fast float 3.000000e+00, %2342
  %2344 = fmul fast float %2341, %2341
  %2345 = fmul fast float %2344, %2282
  %2346 = fmul fast float %2345, %2343
  %2347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %2348 = extractvalue %dx.types.CBufRet.f32 %2347, 0
  %2349 = extractvalue %dx.types.CBufRet.f32 %2347, 1
  %2350 = extractvalue %dx.types.CBufRet.f32 %2347, 2
  %2351 = call float @dx.op.dot3.f32(i32 55, float %113, float %114, float %115, float %2348, float %2349, float %2350)  ; Dot3(ax,ay,az,bx,by,bz)
  %2352 = fmul fast float %2351, %2281
  %2353 = fcmp fast ogt float %2286, 0.000000e+00
  %2354 = fdiv fast float 1.000000e+00, %2286
  %2355 = fmul fast float %2352, %2354
  %2356 = select i1 %2353, float %2355, float %124
  %2357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2358 = extractvalue %dx.types.CBufRet.f32 %2357, 0
  %2359 = extractvalue %dx.types.CBufRet.f32 %2357, 1
  %2360 = extractvalue %dx.types.CBufRet.f32 %2357, 2
  %2361 = fmul fast float %2358, %77
  %2362 = fmul fast float %2359, %77
  %2363 = fmul fast float %2360, %77
  %2364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2365 = extractvalue %dx.types.CBufRet.f32 %2364, 0
  %2366 = extractvalue %dx.types.CBufRet.f32 %2364, 1
  %2367 = extractvalue %dx.types.CBufRet.f32 %2364, 2
  %2368 = fmul fast float %2365, %78
  %2369 = fmul fast float %2366, %78
  %2370 = fmul fast float %2367, %78
  %2371 = fadd fast float %2368, %2361
  %2372 = fadd fast float %2369, %2362
  %2373 = fadd fast float %2370, %2363
  %2374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2375 = extractvalue %dx.types.CBufRet.f32 %2374, 0
  %2376 = extractvalue %dx.types.CBufRet.f32 %2374, 1
  %2377 = extractvalue %dx.types.CBufRet.f32 %2374, 2
  %2378 = fadd fast float %2371, %2375
  %2379 = fadd fast float %2372, %2376
  %2380 = fadd fast float %2373, %2377
  %2381 = fmul fast float %2378, %2356
  %2382 = fmul fast float %2379, %2356
  %2383 = fmul fast float %2380, %2356
  %2384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %2385 = extractvalue %dx.types.CBufRet.f32 %2384, 0
  %2386 = extractvalue %dx.types.CBufRet.f32 %2384, 1
  %2387 = extractvalue %dx.types.CBufRet.f32 %2384, 2
  %2388 = extractvalue %dx.types.CBufRet.f32 %2384, 3
  %2389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %2390 = extractvalue %dx.types.CBufRet.f32 %2389, 0
  %2391 = extractvalue %dx.types.CBufRet.f32 %2389, 1
  %2392 = extractvalue %dx.types.CBufRet.f32 %2389, 2
  %2393 = extractvalue %dx.types.CBufRet.f32 %2389, 3
  %2394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %2395 = extractvalue %dx.types.CBufRet.f32 %2394, 0
  %2396 = extractvalue %dx.types.CBufRet.f32 %2394, 1
  %2397 = extractvalue %dx.types.CBufRet.f32 %2394, 2
  %2398 = extractvalue %dx.types.CBufRet.f32 %2394, 3
  %2399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %2400 = extractvalue %dx.types.CBufRet.f32 %2399, 0
  %2401 = extractvalue %dx.types.CBufRet.f32 %2399, 1
  %2402 = extractvalue %dx.types.CBufRet.f32 %2399, 2
  %2403 = extractvalue %dx.types.CBufRet.f32 %2399, 3
  %2404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %2405 = extractvalue %dx.types.CBufRet.f32 %2404, 3
  %2406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %2407 = extractvalue %dx.types.CBufRet.f32 %2406, 3
  %2408 = extractvalue %dx.types.CBufRet.f32 %2406, 0
  %2409 = extractvalue %dx.types.CBufRet.f32 %2406, 1
  %2410 = extractvalue %dx.types.CBufRet.f32 %2406, 2
  %2411 = fcmp fast olt float %2410, -5.000000e-01
  %2412 = call float @dx.op.dot3.f32(i32 55, float %2381, float %2382, float %2383, float %2381, float %2382, float %2383)  ; Dot3(ax,ay,az,bx,by,bz)
  %2413 = call float @dx.op.unary.f32(i32 25, float %2412)  ; Rsqrt(value)
  %2414 = fmul fast float %2413, %2412
  %2415 = fmul fast float %2413, %2381
  %2416 = fmul fast float %2413, %2382
  %2417 = fmul fast float %2413, %2383
  %2418 = fadd fast float %2414, %2388
  %2419 = call float @dx.op.dot3.f32(i32 55, float %2415, float %2416, float %2417, float %2385, float %2386, float %2387)  ; Dot3(ax,ay,az,bx,by,bz)
  %2420 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %26, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2421 = extractvalue %dx.types.CBufRet.i32 %2420, 1
  %2422 = and i32 %2421, 1
  %2423 = icmp ne i32 %2422, 0
  %2424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %2425 = extractvalue %dx.types.CBufRet.f32 %2424, 2
  %2426 = fcmp fast ogt float %2425, 0.000000e+00
  %2427 = and i1 %2423, %2426
  br i1 %2427, label %2428, label %2834, !dx.controlflow.hints !77

; <label>:2428                                    ; preds = %2336
  %2429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %2430 = extractvalue %dx.types.CBufRet.f32 %2429, 3
  %2431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2432 = extractvalue %dx.types.CBufRet.f32 %2431, 2
  %2433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2434 = extractvalue %dx.types.CBufRet.f32 %2433, 2
  %2435 = fsub fast float %2432, %2434
  %2436 = and i32 %2421, 2
  %2437 = extractvalue %dx.types.CBufRet.i32 %2420, 0
  %2438 = call i32 @dx.op.binary.i32(i32 40, i32 %2437, i32 3)  ; UMin(a,b)
  %2439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2440 = extractvalue %dx.types.CBufRet.f32 %2439, 0
  %2441 = extractvalue %dx.types.CBufRet.f32 %2439, 1
  %2442 = extractvalue %dx.types.CBufRet.f32 %2433, 0
  %2443 = extractvalue %dx.types.CBufRet.f32 %2433, 1
  %2444 = fsub fast float %2440, %2442
  %2445 = fsub fast float %2441, %2443
  %2446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2447 = extractvalue %dx.types.CBufRet.f32 %2446, 0
  %2448 = fcmp fast ogt float %2447, 0.000000e+00
  %2449 = fsub fast float -0.000000e+00, %2444
  %2450 = fsub fast float -0.000000e+00, %2445
  %2451 = call float @dx.op.dot2.f32(i32 54, float %2415, float %2416, float %2415, float %2416)  ; Dot2(ax,ay,bx,by)
  %2452 = call float @dx.op.dot2.f32(i32 54, float %2415, float %2416, float %2449, float %2450)  ; Dot2(ax,ay,bx,by)
  %2453 = fmul fast float %2452, 2.000000e+00
  %2454 = call float @dx.op.dot2.f32(i32 54, float %2449, float %2450, float %2449, float %2450)  ; Dot2(ax,ay,bx,by)
  %2455 = fmul fast float %2447, %2447
  %2456 = fsub fast float %2454, %2455
  %2457 = fmul fast float %2453, %2453
  %2458 = fmul fast float %2451, 4.000000e+00
  %2459 = fmul fast float %2458, %2456
  %2460 = fsub fast float %2457, %2459
  %2461 = fcmp fast ogt float %2460, 0.000000e+00
  br i1 %2461, label %2462, label %2477, !dx.controlflow.hints !78

; <label>:2462                                    ; preds = %2428
  %2463 = fcmp fast ogt float %2453, 0.000000e+00
  %2464 = call float @dx.op.unary.f32(i32 24, float %2460)  ; Sqrt(value)
  %2465 = fsub fast float -0.000000e+00, %2464
  %2466 = select i1 %2463, float %2464, float %2465
  %2467 = fadd fast float %2466, %2453
  %2468 = fmul float %2467, -5.000000e-01
  %2469 = fdiv fast float %2468, %2451
  %2470 = call float @dx.op.binary.f32(i32 35, float %2469, float 0.000000e+00)  ; FMax(a,b)
  %2471 = call float @dx.op.binary.f32(i32 36, float %2414, float %2470)  ; FMin(a,b)
  %2472 = fdiv fast float %2456, %2468
  %2473 = call float @dx.op.binary.f32(i32 35, float %2472, float 0.000000e+00)  ; FMax(a,b)
  %2474 = call float @dx.op.binary.f32(i32 36, float %2414, float %2473)  ; FMin(a,b)
  %2475 = call float @dx.op.binary.f32(i32 36, float %2471, float %2474)  ; FMin(a,b)
  %2476 = call float @dx.op.binary.f32(i32 35, float %2471, float %2474)  ; FMax(a,b)
  br label %2477

; <label>:2477                                    ; preds = %2462, %2428
  %2478 = phi float [ %2476, %2462 ], [ -1.000000e+00, %2428 ]
  %2479 = phi float [ %2475, %2462 ], [ -1.000000e+00, %2428 ]
  %2480 = phi i1 [ true, %2462 ], [ false, %2428 ]
  %2481 = and i1 %2448, %2480
  br i1 %2481, label %2482, label %2484, !dx.controlflow.hints !79

; <label>:2482                                    ; preds = %2477
  %2483 = fcmp fast oeq float %2479, %2478
  br i1 %2483, label %2787, label %2485, !dx.controlflow.hints !80

; <label>:2484                                    ; preds = %2477
  br i1 %2448, label %2787, label %2485, !dx.controlflow.hints !81

; <label>:2485                                    ; preds = %2484, %2482
  %2486 = phi float [ %2414, %2484 ], [ %2478, %2482 ]
  %2487 = phi float [ 0.000000e+00, %2484 ], [ %2479, %2482 ]
  %2488 = icmp ne i32 %2436, 0
  %2489 = fmul fast float %2486, %2417
  %2490 = fadd fast float %2489, %2430
  %2491 = fmul fast float %2490, %2486
  %2492 = select i1 %2488, float 0.000000e+00, float %2491
  %2493 = fcmp fast oeq float %2417, 0.000000e+00
  %2494 = fdiv fast float %2435, %2417
  %2495 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2494)  ; FMax(a,b)
  %2496 = select i1 %2493, float %2486, float %2495
  %2497 = call float @dx.op.binary.f32(i32 36, float %2486, float %2496)  ; FMin(a,b)
  %2498 = fcmp fast ogt float %2417, 0.000000e+00
  %2499 = fcmp fast olt float %2435, 0.000000e+00
  br i1 %2498, label %2500, label %2557, !dx.controlflow.hints !82

; <label>:2500                                    ; preds = %2485
  %2501 = icmp eq i32 %2436, 0
  br i1 %2499, label %2502, label %2546, !dx.controlflow.hints !83

; <label>:2502                                    ; preds = %2500
  %2503 = select i1 %2501, float %2486, float 0.000000e+00
  %2504 = fsub fast float -0.000000e+00, %2503
  %2505 = call float @dx.op.unary.f32(i32 6, float %2504)  ; FAbs(value)
  %2506 = fmul fast float %2503, %2417
  %2507 = fadd fast float %2506, %2430
  %2508 = fmul fast float %2505, %2507
  %2509 = fsub fast float %2492, %2508
  %2510 = fsub fast float %2486, %2505
  %2511 = select i1 %2501, float %2510, float 0.000000e+00
  %2512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2513 = extractvalue %dx.types.CBufRet.f32 %2512, 0
  %2514 = extractvalue %dx.types.CBufRet.f32 %2512, 1
  %2515 = extractvalue %dx.types.CBufRet.f32 %2512, 2
  %2516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2517 = extractvalue %dx.types.CBufRet.f32 %2516, 0
  %2518 = extractvalue %dx.types.CBufRet.f32 %2516, 1
  %2519 = extractvalue %dx.types.CBufRet.f32 %2516, 2
  %2520 = extractvalue %dx.types.CBufRet.f32 %2516, 3
  %2521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2522 = extractvalue %dx.types.CBufRet.f32 %2521, 3
  %2523 = call float @dx.op.binary.f32(i32 36, float %2509, float %2522)  ; FMin(a,b)
  %2524 = fmul fast float %2520, %2511
  %2525 = call float @dx.op.unary.f32(i32 7, float %2524)  ; Saturate(value)
  %2526 = fsub fast float %2517, %2513
  %2527 = fsub fast float %2518, %2514
  %2528 = fsub fast float %2519, %2515
  %2529 = fmul fast float %2525, %2526
  %2530 = fmul fast float %2525, %2527
  %2531 = fmul fast float %2525, %2528
  %2532 = fadd fast float %2529, %2513
  %2533 = fadd fast float %2530, %2514
  %2534 = fadd fast float %2531, %2515
  %2535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2536 = extractvalue %dx.types.CBufRet.f32 %2535, 0
  %2537 = extractvalue %dx.types.CBufRet.f32 %2535, 1
  %2538 = fadd fast float %2537, %2536
  %2539 = call float @dx.op.unary.f32(i32 7, float %2538)  ; Saturate(value)
  %2540 = extractvalue %dx.types.CBufRet.f32 %2535, 2
  %2541 = extractvalue %dx.types.CBufRet.f32 %2535, 3
  %2542 = fadd fast float %2541, %2540
  %2543 = call float @dx.op.unary.f32(i32 7, float %2542)  ; Saturate(value)
  %2544 = fmul fast float %2539, %2523
  %2545 = fmul fast float %2544, %2543
  br label %2787

; <label>:2546                                    ; preds = %2500
  br i1 %2501, label %2547, label %2568, !dx.controlflow.hints !84

; <label>:2547                                    ; preds = %2546
  %2548 = call float @dx.op.binary.f32(i32 36, float %2497, float %2487)  ; FMin(a,b)
  %2549 = fsub fast float %2497, %2548
  %2550 = fsub fast float %2549, %2486
  %2551 = call float @dx.op.unary.f32(i32 6, float %2550)  ; FAbs(value)
  %2552 = fadd fast float %2549, %2486
  %2553 = fmul fast float %2552, %2417
  %2554 = fadd fast float %2553, %2430
  %2555 = fmul fast float %2554, %2551
  %2556 = fsub fast float %2492, %2555
  br label %2568

; <label>:2557                                    ; preds = %2485
  br i1 %2499, label %2558, label %2568, !dx.controlflow.hints !85

; <label>:2558                                    ; preds = %2557
  %2559 = call float @dx.op.binary.f32(i32 35, float %2487, float %2497)  ; FMax(a,b)
  %2560 = icmp eq i32 %2436, 0
  %2561 = select i1 %2560, float %2497, float 0.000000e+00
  %2562 = fsub fast float -0.000000e+00, %2561
  %2563 = call float @dx.op.unary.f32(i32 6, float %2562)  ; FAbs(value)
  %2564 = fmul fast float %2561, %2417
  %2565 = fadd fast float %2564, %2430
  %2566 = fmul fast float %2563, %2565
  %2567 = fsub fast float %2492, %2566
  br label %2568

; <label>:2568                                    ; preds = %2558, %2557, %2547, %2546
  %2569 = phi float [ %2487, %2546 ], [ %2487, %2547 ], [ %2559, %2558 ], [ %2487, %2557 ]
  %2570 = phi float [ 0.000000e+00, %2546 ], [ %2551, %2547 ], [ %2563, %2558 ], [ 0.000000e+00, %2557 ]
  %2571 = phi float [ %2492, %2546 ], [ %2556, %2547 ], [ %2567, %2558 ], [ %2492, %2557 ]
  %2572 = phi float [ %2497, %2546 ], [ %2497, %2547 ], [ %2486, %2558 ], [ %2486, %2557 ]
  %2573 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 0
  store float -1.000000e+00, float* %2573, align 4, !tbaa !86, !noalias !90
  %2574 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 1
  store float -1.000000e+00, float* %2574, align 4, !tbaa !86, !noalias !90
  %2575 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 2
  store float -1.000000e+00, float* %2575, align 4, !tbaa !86, !noalias !90
  %2576 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 0
  store float -1.000000e+00, float* %2576, align 4, !tbaa !86, !noalias !90
  %2577 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 1
  store float -1.000000e+00, float* %2577, align 4, !tbaa !86, !noalias !90
  %2578 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 2
  store float -1.000000e+00, float* %2578, align 4, !tbaa !86, !noalias !90
  %2579 = icmp sgt i32 %2438, 0
  br i1 %2579, label %2580, label %2641

; <label>:2580                                    ; preds = %2568
  br label %2581

; <label>:2581                                    ; preds = %2630, %2580
  %2582 = phi i32 [ %2631, %2630 ], [ 0, %2580 ]
  %2583 = phi i32 [ %2632, %2630 ], [ 0, %2580 ]
  %2584 = add nuw i32 %2583, 171
  %2585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 %2584)  ; CBufferLoadLegacy(handle,regIndex)
  %2586 = extractvalue %dx.types.CBufRet.f32 %2585, 0
  %2587 = extractvalue %dx.types.CBufRet.f32 %2585, 1
  %2588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2589 = extractvalue %dx.types.CBufRet.f32 %2588, 0
  %2590 = extractvalue %dx.types.CBufRet.f32 %2588, 1
  %2591 = fsub fast float %2586, %2589
  %2592 = fsub fast float %2587, %2590
  %2593 = extractvalue %dx.types.CBufRet.f32 %2585, 2
  %2594 = fsub fast float -0.000000e+00, %2591
  %2595 = fsub fast float -0.000000e+00, %2592
  %2596 = call float @dx.op.dot2.f32(i32 54, float %2415, float %2416, float %2594, float %2595)  ; Dot2(ax,ay,bx,by)
  %2597 = fmul fast float %2596, 2.000000e+00
  %2598 = call float @dx.op.dot2.f32(i32 54, float %2594, float %2595, float %2594, float %2595)  ; Dot2(ax,ay,bx,by)
  %2599 = fmul fast float %2593, %2593
  %2600 = fsub fast float %2598, %2599
  %2601 = fmul fast float %2597, %2597
  %2602 = fmul fast float %2458, %2600
  %2603 = fsub fast float %2601, %2602
  %2604 = fcmp fast ogt float %2603, 0.000000e+00
  br i1 %2604, label %2605, label %2620, !dx.controlflow.hints !78

; <label>:2605                                    ; preds = %2581
  %2606 = fcmp fast ogt float %2597, 0.000000e+00
  %2607 = call float @dx.op.unary.f32(i32 24, float %2603)  ; Sqrt(value)
  %2608 = fsub fast float -0.000000e+00, %2607
  %2609 = select i1 %2606, float %2607, float %2608
  %2610 = fadd fast float %2609, %2597
  %2611 = fmul float %2610, -5.000000e-01
  %2612 = fdiv fast float %2611, %2451
  %2613 = call float @dx.op.binary.f32(i32 35, float %2612, float 0.000000e+00)  ; FMax(a,b)
  %2614 = call float @dx.op.binary.f32(i32 36, float %2486, float %2613)  ; FMin(a,b)
  %2615 = fdiv fast float %2600, %2611
  %2616 = call float @dx.op.binary.f32(i32 35, float %2615, float 0.000000e+00)  ; FMax(a,b)
  %2617 = call float @dx.op.binary.f32(i32 36, float %2486, float %2616)  ; FMin(a,b)
  %2618 = call float @dx.op.binary.f32(i32 36, float %2614, float %2617)  ; FMin(a,b)
  %2619 = call float @dx.op.binary.f32(i32 35, float %2614, float %2617)  ; FMax(a,b)
  br label %2620

; <label>:2620                                    ; preds = %2605, %2581
  %2621 = phi float [ %2619, %2605 ], [ -1.000000e+00, %2581 ]
  %2622 = phi float [ %2618, %2605 ], [ -1.000000e+00, %2581 ]
  %2623 = phi i1 [ true, %2605 ], [ false, %2581 ]
  br i1 %2623, label %2624, label %2630, !dx.controlflow.hints !101

; <label>:2624                                    ; preds = %2620
  %2625 = call float @dx.op.binary.f32(i32 35, float %2569, float %2622)  ; FMax(a,b)
  %2626 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %2583
  store float %2625, float* %2626, align 4, !tbaa !86, !noalias !90
  %2627 = call float @dx.op.binary.f32(i32 35, float %2569, float %2621)  ; FMax(a,b)
  %2628 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 %2583
  store float %2627, float* %2628, align 4, !tbaa !86, !noalias !90
  %2629 = add nsw i32 %2582, 1
  br label %2630

; <label>:2630                                    ; preds = %2624, %2620
  %2631 = phi i32 [ %2629, %2624 ], [ %2582, %2620 ]
  %2632 = add nuw nsw i32 %2583, 1
  %2633 = icmp eq i32 %2632, %2438
  br i1 %2633, label %2634, label %2581

; <label>:2634                                    ; preds = %2630
  %2635 = load float, float* %2575, align 4, !tbaa !86, !alias.scope !102, !noalias !105
  %2636 = load float, float* %2574, align 4, !tbaa !86, !alias.scope !108, !noalias !109
  %2637 = load float, float* %2573, align 4, !tbaa !86, !alias.scope !110, !noalias !111
  %2638 = load float, float* %2578, align 4, !tbaa !86, !alias.scope !112, !noalias !115
  %2639 = load float, float* %2577, align 4, !tbaa !86, !alias.scope !118, !noalias !119
  %2640 = load float, float* %2576, align 4, !tbaa !86, !alias.scope !120, !noalias !121
  br label %2641

; <label>:2641                                    ; preds = %2634, %2568
  %2642 = phi float [ -1.000000e+00, %2568 ], [ %2640, %2634 ]
  %2643 = phi float [ -1.000000e+00, %2568 ], [ %2639, %2634 ]
  %2644 = phi float [ -1.000000e+00, %2568 ], [ %2638, %2634 ]
  %2645 = phi float [ -1.000000e+00, %2568 ], [ %2637, %2634 ]
  %2646 = phi float [ -1.000000e+00, %2568 ], [ %2636, %2634 ]
  %2647 = phi float [ -1.000000e+00, %2568 ], [ %2635, %2634 ]
  %2648 = phi i32 [ 0, %2568 ], [ %2631, %2634 ]
  %2649 = call float @dx.op.binary.f32(i32 36, float %2646, float %2647)  ; FMin(a,b)
  %2650 = call float @dx.op.binary.f32(i32 36, float %2645, float %2649)  ; FMin(a,b)
  %2651 = call float @dx.op.binary.f32(i32 35, float %2645, float %2646)  ; FMax(a,b)
  %2652 = call float @dx.op.binary.f32(i32 36, float %2651, float %2647)  ; FMin(a,b)
  %2653 = call float @dx.op.binary.f32(i32 36, float %2645, float %2646)  ; FMin(a,b)
  %2654 = call float @dx.op.binary.f32(i32 35, float %2653, float %2652)  ; FMax(a,b)
  %2655 = call float @dx.op.binary.f32(i32 35, float %2646, float %2647)  ; FMax(a,b)
  %2656 = call float @dx.op.binary.f32(i32 35, float %2645, float %2655)  ; FMax(a,b)
  store float %2650, float* %2573, align 4, !tbaa !86, !alias.scope !110, !noalias !111
  store float %2654, float* %2574, align 4, !tbaa !86, !alias.scope !108, !noalias !109
  store float %2656, float* %2575, align 4, !tbaa !86, !alias.scope !102, !noalias !105
  %2657 = call float @dx.op.binary.f32(i32 36, float %2643, float %2644)  ; FMin(a,b)
  %2658 = call float @dx.op.binary.f32(i32 36, float %2642, float %2657)  ; FMin(a,b)
  %2659 = call float @dx.op.binary.f32(i32 35, float %2642, float %2643)  ; FMax(a,b)
  %2660 = call float @dx.op.binary.f32(i32 36, float %2659, float %2644)  ; FMin(a,b)
  %2661 = call float @dx.op.binary.f32(i32 36, float %2642, float %2643)  ; FMin(a,b)
  %2662 = call float @dx.op.binary.f32(i32 35, float %2661, float %2660)  ; FMax(a,b)
  %2663 = call float @dx.op.binary.f32(i32 35, float %2643, float %2644)  ; FMax(a,b)
  %2664 = call float @dx.op.binary.f32(i32 35, float %2642, float %2663)  ; FMax(a,b)
  store float %2658, float* %2576, align 4, !tbaa !86, !alias.scope !120, !noalias !121
  store float %2662, float* %2577, align 4, !tbaa !86, !alias.scope !118, !noalias !119
  store float %2664, float* %2578, align 4, !tbaa !86, !alias.scope !112, !noalias !115
  %2665 = sub nsw i32 3, %2648
  %2666 = icmp sgt i32 %2665, 2
  br i1 %2666, label %2667, label %2705, !dx.controlflow.hints !122

; <label>:2667                                    ; preds = %2641
  %2668 = icmp eq i32 %2436, 0
  %2669 = fsub fast float %2486, %2570
  %2670 = select i1 %2668, float %2669, float %2570
  %2671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2672 = extractvalue %dx.types.CBufRet.f32 %2671, 0
  %2673 = extractvalue %dx.types.CBufRet.f32 %2671, 1
  %2674 = extractvalue %dx.types.CBufRet.f32 %2671, 2
  %2675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2676 = extractvalue %dx.types.CBufRet.f32 %2675, 0
  %2677 = extractvalue %dx.types.CBufRet.f32 %2675, 1
  %2678 = extractvalue %dx.types.CBufRet.f32 %2675, 2
  %2679 = extractvalue %dx.types.CBufRet.f32 %2675, 3
  %2680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2681 = extractvalue %dx.types.CBufRet.f32 %2680, 3
  %2682 = call float @dx.op.binary.f32(i32 36, float %2571, float %2681)  ; FMin(a,b)
  %2683 = fmul fast float %2679, %2670
  %2684 = call float @dx.op.unary.f32(i32 7, float %2683)  ; Saturate(value)
  %2685 = fsub fast float %2676, %2672
  %2686 = fsub fast float %2677, %2673
  %2687 = fsub fast float %2678, %2674
  %2688 = fmul fast float %2684, %2685
  %2689 = fmul fast float %2684, %2686
  %2690 = fmul fast float %2684, %2687
  %2691 = fadd fast float %2688, %2672
  %2692 = fadd fast float %2689, %2673
  %2693 = fadd fast float %2690, %2674
  %2694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2695 = extractvalue %dx.types.CBufRet.f32 %2694, 0
  %2696 = extractvalue %dx.types.CBufRet.f32 %2694, 1
  %2697 = fadd fast float %2696, %2695
  %2698 = call float @dx.op.unary.f32(i32 7, float %2697)  ; Saturate(value)
  %2699 = extractvalue %dx.types.CBufRet.f32 %2694, 2
  %2700 = extractvalue %dx.types.CBufRet.f32 %2694, 3
  %2701 = fadd fast float %2700, %2699
  %2702 = call float @dx.op.unary.f32(i32 7, float %2701)  ; Saturate(value)
  %2703 = fmul fast float %2698, %2682
  %2704 = fmul fast float %2703, %2702
  br label %2787

; <label>:2705                                    ; preds = %2641
  %2706 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %2665
  %2707 = load float, float* %2706, align 4, !tbaa !86, !noalias !90
  %2708 = fcmp fast olt float %2707, %2572
  %2709 = icmp sgt i32 %2648, 0
  %2710 = and i1 %2709, %2708
  br i1 %2710, label %2711, label %2748

; <label>:2711                                    ; preds = %2705
  br label %2712

; <label>:2712                                    ; preds = %2741, %2711
  %2713 = phi float [ %2742, %2741 ], [ %2570, %2711 ]
  %2714 = phi float [ %2743, %2741 ], [ %2571, %2711 ]
  %2715 = phi float [ %2723, %2741 ], [ %2707, %2711 ]
  %2716 = phi i32 [ %2720, %2741 ], [ %2665, %2711 ]
  %2717 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 %2716
  %2718 = load float, float* %2717, align 4, !tbaa !86, !noalias !90
  %2719 = icmp slt i32 %2716, 2
  %2720 = add nsw i32 %2716, 1
  %2721 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %2720
  %2722 = load float, float* %2721, align 4, !tbaa !86, !noalias !90
  %2723 = select i1 %2719, float %2722, float %2486
  %2724 = call float @dx.op.binary.f32(i32 36, float %2723, float %2718)  ; FMin(a,b)
  %2725 = call float @dx.op.binary.f32(i32 36, float %2572, float %2724)  ; FMin(a,b)
  %2726 = icmp eq i32 %2436, 0
  %2727 = fadd fast float %2725, %2715
  %2728 = fmul fast float %2727, %2417
  %2729 = fadd fast float %2728, %2430
  br i1 %2726, label %2735, label %2730, !dx.controlflow.hints !123

; <label>:2730                                    ; preds = %2712
  %2731 = fsub fast float %2725, %2715
  %2732 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2731)  ; FMax(a,b)
  %2733 = fmul fast float %2732, %2729
  %2734 = fadd fast float %2733, %2714
  br label %2741

; <label>:2735                                    ; preds = %2712
  %2736 = fsub fast float %2715, %2725
  %2737 = call float @dx.op.unary.f32(i32 6, float %2736)  ; FAbs(value)
  %2738 = fadd fast float %2737, %2713
  %2739 = fmul fast float %2737, %2729
  %2740 = fsub fast float %2714, %2739
  br label %2741

; <label>:2741                                    ; preds = %2735, %2730
  %2742 = phi float [ %2732, %2730 ], [ %2738, %2735 ]
  %2743 = phi float [ %2734, %2730 ], [ %2740, %2735 ]
  %2744 = fcmp fast olt float %2723, %2572
  %2745 = icmp slt i32 %2720, 3
  %2746 = and i1 %2745, %2744
  br i1 %2746, label %2712, label %2747

; <label>:2747                                    ; preds = %2741
  br label %2748

; <label>:2748                                    ; preds = %2747, %2705
  %2749 = phi float [ %2570, %2705 ], [ %2742, %2747 ]
  %2750 = phi float [ %2571, %2705 ], [ %2743, %2747 ]
  %2751 = fsub fast float %2486, %2749
  %2752 = select i1 %2488, float %2749, float %2751
  %2753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2754 = extractvalue %dx.types.CBufRet.f32 %2753, 0
  %2755 = extractvalue %dx.types.CBufRet.f32 %2753, 1
  %2756 = extractvalue %dx.types.CBufRet.f32 %2753, 2
  %2757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2758 = extractvalue %dx.types.CBufRet.f32 %2757, 0
  %2759 = extractvalue %dx.types.CBufRet.f32 %2757, 1
  %2760 = extractvalue %dx.types.CBufRet.f32 %2757, 2
  %2761 = extractvalue %dx.types.CBufRet.f32 %2757, 3
  %2762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2763 = extractvalue %dx.types.CBufRet.f32 %2762, 3
  %2764 = call float @dx.op.binary.f32(i32 36, float %2750, float %2763)  ; FMin(a,b)
  %2765 = fmul fast float %2761, %2752
  %2766 = call float @dx.op.unary.f32(i32 7, float %2765)  ; Saturate(value)
  %2767 = fsub fast float %2758, %2754
  %2768 = fsub fast float %2759, %2755
  %2769 = fsub fast float %2760, %2756
  %2770 = fmul fast float %2766, %2767
  %2771 = fmul fast float %2766, %2768
  %2772 = fmul fast float %2766, %2769
  %2773 = fadd fast float %2770, %2754
  %2774 = fadd fast float %2771, %2755
  %2775 = fadd fast float %2772, %2756
  %2776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2777 = extractvalue %dx.types.CBufRet.f32 %2776, 0
  %2778 = extractvalue %dx.types.CBufRet.f32 %2776, 1
  %2779 = fadd fast float %2778, %2777
  %2780 = call float @dx.op.unary.f32(i32 7, float %2779)  ; Saturate(value)
  %2781 = extractvalue %dx.types.CBufRet.f32 %2776, 2
  %2782 = extractvalue %dx.types.CBufRet.f32 %2776, 3
  %2783 = fadd fast float %2782, %2781
  %2784 = call float @dx.op.unary.f32(i32 7, float %2783)  ; Saturate(value)
  %2785 = fmul fast float %2780, %2764
  %2786 = fmul fast float %2785, %2784
  br label %2787

; <label>:2787                                    ; preds = %2748, %2667, %2502, %2484, %2482
  %2788 = phi float [ %2511, %2502 ], [ %2670, %2667 ], [ %2752, %2748 ], [ 0.000000e+00, %2482 ], [ 0.000000e+00, %2484 ]
  %2789 = phi float [ %2545, %2502 ], [ %2704, %2667 ], [ %2786, %2748 ], [ 0.000000e+00, %2482 ], [ 0.000000e+00, %2484 ]
  %2790 = phi float [ %2532, %2502 ], [ %2691, %2667 ], [ %2773, %2748 ], [ 0.000000e+00, %2482 ], [ 0.000000e+00, %2484 ]
  %2791 = phi float [ %2533, %2502 ], [ %2692, %2667 ], [ %2774, %2748 ], [ 0.000000e+00, %2482 ], [ 0.000000e+00, %2484 ]
  %2792 = phi float [ %2534, %2502 ], [ %2693, %2667 ], [ %2775, %2748 ], [ 0.000000e+00, %2482 ], [ 0.000000e+00, %2484 ]
  %2793 = fmul fast float %2425, %2789
  %2794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2795 = extractvalue %dx.types.CBufRet.f32 %2794, 2
  %2796 = fsub fast float %2432, %2795
  %2797 = fcmp fast olt float %2793, -2.000000e+01
  %2798 = call float @dx.op.unary.f32(i32 21, float %2793)  ; Exp(value)
  %2799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2800 = extractvalue %dx.types.CBufRet.f32 %2799, 2
  %2801 = extractvalue %dx.types.CBufRet.f32 %2799, 3
  %2802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2803 = extractvalue %dx.types.CBufRet.f32 %2802, 2
  %2804 = fmul fast float %2801, %2796
  %2805 = call float @dx.op.unary.f32(i32 7, float %2804)  ; Saturate(value)
  %2806 = fsub fast float 1.000000e+00, %2805
  %2807 = fmul fast float %2417, 5.000000e-01
  %2808 = fadd fast float %2807, 5.000000e-01
  %2809 = call float @dx.op.unary.f32(i32 7, float %2808)  ; Saturate(value)
  %2810 = fsub fast float 1.000000e+00, %2809
  %2811 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2806)  ; FMax(a,b)
  %2812 = fdiv fast float %2810, %2811
  %2813 = fsub fast float %2796, %2383
  %2814 = call float @dx.op.unary.f32(i32 6, float %2813)  ; FAbs(value)
  %2815 = fmul fast float %2814, %2800
  %2816 = call float @dx.op.unary.f32(i32 7, float %2812)  ; Saturate(value)
  %2817 = fsub fast float 1.000000e+00, %2815
  %2818 = fmul fast float %2817, %2816
  %2819 = fadd fast float %2818, %2815
  %2820 = fmul fast float %2803, %2796
  %2821 = call float @dx.op.unary.f32(i32 7, float %2820)  ; Saturate(value)
  %2822 = fsub fast float 1.000000e+00, %2819
  %2823 = fmul fast float %2822, %2821
  %2824 = fadd fast float %2823, %2819
  %2825 = call float @dx.op.unary.f32(i32 7, float %2824)  ; Saturate(value)
  %2826 = fadd fast float %2798, -1.000000e+00
  %2827 = select i1 %2797, float -1.000000e+00, float %2826
  %2828 = fmul fast float %2825, %2827
  %2829 = fadd fast float %2828, 1.000000e+00
  %2830 = fsub fast float -0.000000e+00, %2828
  %2831 = fmul fast float %2790, %2830
  %2832 = fmul fast float %2791, %2830
  %2833 = fmul fast float %2792, %2830
  br label %2834

; <label>:2834                                    ; preds = %2787, %2336
  %2835 = phi float [ %2788, %2787 ], [ 0.000000e+00, %2336 ]
  %2836 = phi float [ %2829, %2787 ], [ 1.000000e+00, %2336 ]
  %2837 = phi float [ %2831, %2787 ], [ 0.000000e+00, %2336 ]
  %2838 = phi float [ %2832, %2787 ], [ 0.000000e+00, %2336 ]
  %2839 = phi float [ %2833, %2787 ], [ 0.000000e+00, %2336 ]
  %2840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2841 = extractvalue %dx.types.CBufRet.f32 %2840, 1
  %2842 = fsub fast float 1.000000e+00, %2836
  %2843 = fmul fast float %2842, %2418
  %2844 = fmul fast float %2843, %2841
  %2845 = fsub fast float %2418, %2844
  br i1 %2411, label %2846, label %2875, !dx.controlflow.hints !124

; <label>:2846                                    ; preds = %2834
  %2847 = fmul fast float %2419, %2408
  %2848 = fadd fast float %2847, %2409
  %2849 = call float @dx.op.unary.f32(i32 7, float %2848)  ; Saturate(value)
  %2850 = fmul fast float %2390, %2845
  %2851 = fsub fast float -0.000000e+00, %2850
  %2852 = fmul fast float %2391, %2845
  %2853 = fsub fast float -0.000000e+00, %2852
  %2854 = call float @dx.op.unary.f32(i32 21, float %2851)  ; Exp(value)
  %2855 = call float @dx.op.unary.f32(i32 21, float %2853)  ; Exp(value)
  %2856 = call float @dx.op.binary.f32(i32 35, float %2398, float %2854)  ; FMax(a,b)
  %2857 = call float @dx.op.binary.f32(i32 35, float %2398, float %2855)  ; FMax(a,b)
  %2858 = fsub fast float %2857, %2856
  %2859 = fmul fast float %2858, %2849
  %2860 = fadd fast float %2859, %2856
  %2861 = call float @dx.op.unary.f32(i32 7, float %2860)  ; Saturate(value)
  %2862 = fsub fast float %2395, %2400
  %2863 = fsub fast float %2396, %2401
  %2864 = fsub fast float %2397, %2402
  %2865 = fmul fast float %2849, %2862
  %2866 = fmul fast float %2849, %2863
  %2867 = fmul fast float %2849, %2864
  %2868 = fadd fast float %2865, %2400
  %2869 = fadd fast float %2866, %2401
  %2870 = fadd fast float %2867, %2402
  %2871 = fsub fast float 1.000000e+00, %2861
  %2872 = fmul fast float %2871, %2868
  %2873 = fmul fast float %2871, %2869
  %2874 = fmul fast float %2871, %2870
  br label %2934

; <label>:2875                                    ; preds = %2834
  %2876 = fmul fast float %2845, %2407
  %2877 = call float @dx.op.unary.f32(i32 7, float %2876)  ; Saturate(value)
  %2878 = fsub fast float 2.000000e+00, %2877
  %2879 = fmul fast float %2877, 9.921875e-01
  %2880 = fmul fast float %2879, %2878
  %2881 = fadd fast float %2880, 3.906250e-03
  %2882 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %24, float %2881, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2883 = extractvalue %dx.types.ResRet.f32 %2882, 0
  %2884 = fsub fast float %2877, %2883
  %2885 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2884)  ; FMax(a,b)
  %2886 = fmul fast float %2393, %2383
  %2887 = call float @dx.op.unary.f32(i32 6, float %2886)  ; FAbs(value)
  %2888 = fcmp fast ogt float %2887, 0x3EB0C6F7A0000000
  br i1 %2888, label %2889, label %2895, !dx.controlflow.hints !125

; <label>:2889                                    ; preds = %2875
  %2890 = fmul fast float %2886, 0xBFF7154760000000
  %2891 = call float @dx.op.unary.f32(i32 21, float %2890)  ; Exp(value)
  %2892 = fsub fast float 1.000000e+00, %2891
  %2893 = fdiv fast float %2892, %2886
  %2894 = fmul fast float %2893, %2403
  br label %2895

; <label>:2895                                    ; preds = %2889, %2875
  %2896 = phi float [ %2894, %2889 ], [ %2403, %2875 ]
  %2897 = fadd fast float %2896, %2405
  %2898 = fmul fast float %2897, %2885
  %2899 = fmul fast float %2390, %2898
  %2900 = fsub fast float -0.000000e+00, %2899
  %2901 = fmul fast float %2391, %2898
  %2902 = fsub fast float -0.000000e+00, %2901
  %2903 = fmul fast float %2392, %2898
  %2904 = fsub fast float -0.000000e+00, %2903
  %2905 = call float @dx.op.unary.f32(i32 21, float %2900)  ; Exp(value)
  %2906 = call float @dx.op.unary.f32(i32 21, float %2902)  ; Exp(value)
  %2907 = call float @dx.op.unary.f32(i32 21, float %2904)  ; Exp(value)
  %2908 = fmul fast float %2419, %2419
  %2909 = fadd fast float %2908, 1.000000e+00
  %2910 = fmul fast float %2909, 0x3FAE8EC8A0000000
  %2911 = fmul fast float %2910, %2400
  %2912 = fmul fast float %2910, %2401
  %2913 = fmul fast float %2910, %2402
  %2914 = fmul fast float %2419, %2398
  %2915 = fsub fast float 1.000000e+00, %2914
  %2916 = fmul fast float %2398, %2398
  %2917 = fsub fast float 1.000000e+00, %2916
  %2918 = fmul fast float %2917, 0x3FB45F3060000000
  %2919 = fmul fast float %2915, %2915
  %2920 = fdiv fast float 1.000000e+00, %2919
  %2921 = fmul fast float %2918, %2920
  %2922 = fmul fast float %2921, %2395
  %2923 = fmul fast float %2921, %2396
  %2924 = fmul fast float %2921, %2397
  %2925 = fadd fast float %2922, %2911
  %2926 = fadd fast float %2923, %2912
  %2927 = fadd fast float %2924, %2913
  %2928 = fsub fast float 1.000000e+00, %2905
  %2929 = fsub fast float 1.000000e+00, %2906
  %2930 = fsub fast float 1.000000e+00, %2907
  %2931 = fmul fast float %2925, %2928
  %2932 = fmul fast float %2926, %2929
  %2933 = fmul fast float %2927, %2930
  br label %2934

; <label>:2934                                    ; preds = %2895, %2846
  %2935 = phi float [ %2872, %2846 ], [ %2931, %2895 ]
  %2936 = phi float [ %2873, %2846 ], [ %2932, %2895 ]
  %2937 = phi float [ %2874, %2846 ], [ %2933, %2895 ]
  %2938 = phi float [ %2861, %2846 ], [ %2905, %2895 ]
  %2939 = phi float [ %2861, %2846 ], [ %2906, %2895 ]
  %2940 = phi float [ %2861, %2846 ], [ %2907, %2895 ]
  br i1 %2427, label %2941, label %3139, !dx.controlflow.hints !126

; <label>:2941                                    ; preds = %2934
  %2942 = extractvalue %dx.types.CBufRet.f32 %2840, 0
  %2943 = fmul fast float %2942, %2842
  %2944 = fsub fast float %2837, %2935
  %2945 = fsub fast float %2838, %2936
  %2946 = fsub fast float %2839, %2937
  %2947 = fmul fast float %2943, %2944
  %2948 = fmul fast float %2943, %2945
  %2949 = fmul fast float %2943, %2946
  %2950 = fadd fast float %2947, %2935
  %2951 = fadd fast float %2948, %2936
  %2952 = fadd fast float %2949, %2937
  %2953 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2938)  ; FMax(a,b)
  %2954 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2939)  ; FMax(a,b)
  %2955 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2940)  ; FMax(a,b)
  %2956 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2836)  ; FMax(a,b)
  %2957 = call float @dx.op.binary.f32(i32 35, float %2835, float %2845)  ; FMax(a,b)
  %2958 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2957)  ; FMax(a,b)
  %2959 = fdiv fast float %2835, %2958
  %2960 = call float @dx.op.unary.f32(i32 7, float %2959)  ; Saturate(value)
  %2961 = fdiv fast float %2845, %2958
  %2962 = call float @dx.op.unary.f32(i32 7, float %2961)  ; Saturate(value)
  %2963 = fcmp fast une float %2956, 1.000000e+00
  br i1 %2963, label %2964, label %2977, !dx.controlflow.hints !127

; <label>:2964                                    ; preds = %2941
  %2965 = call float @dx.op.unary.f32(i32 23, float %2956)  ; Log(value)
  %2966 = fmul fast float %2965, 0x3FE62E4300000000
  %2967 = fmul fast float %2837, %2966
  %2968 = fsub fast float -0.000000e+00, %2967
  %2969 = fmul fast float %2838, %2966
  %2970 = fsub fast float -0.000000e+00, %2969
  %2971 = fmul fast float %2839, %2966
  %2972 = fsub fast float -0.000000e+00, %2971
  %2973 = fsub fast float 1.000000e+00, %2956
  %2974 = fdiv fast float %2968, %2973
  %2975 = fdiv fast float %2970, %2973
  %2976 = fdiv fast float %2972, %2973
  br label %2977

; <label>:2977                                    ; preds = %2964, %2941
  %2978 = phi float [ %2974, %2964 ], [ %2837, %2941 ]
  %2979 = phi float [ %2975, %2964 ], [ %2838, %2941 ]
  %2980 = phi float [ %2976, %2964 ], [ %2839, %2941 ]
  %2981 = phi float [ %2966, %2964 ], [ 0.000000e+00, %2941 ]
  %2982 = fcmp fast une float %2953, 1.000000e+00
  br i1 %2982, label %2983, label %2990, !dx.controlflow.hints !128

; <label>:2983                                    ; preds = %2977
  %2984 = call float @dx.op.unary.f32(i32 23, float %2953)  ; Log(value)
  %2985 = fmul fast float %2984, 0x3FE62E4300000000
  %2986 = fmul fast float %2950, %2985
  %2987 = fsub fast float -0.000000e+00, %2986
  %2988 = fsub fast float 1.000000e+00, %2953
  %2989 = fdiv fast float %2987, %2988
  br label %2990

; <label>:2990                                    ; preds = %2983, %2977
  %2991 = phi float [ %2989, %2983 ], [ %2950, %2977 ]
  %2992 = phi float [ %2985, %2983 ], [ 0.000000e+00, %2977 ]
  %2993 = fcmp fast une float %2954, 1.000000e+00
  br i1 %2993, label %2994, label %3001, !dx.controlflow.hints !128

; <label>:2994                                    ; preds = %2990
  %2995 = call float @dx.op.unary.f32(i32 23, float %2954)  ; Log(value)
  %2996 = fmul fast float %2995, 0x3FE62E4300000000
  %2997 = fmul fast float %2951, %2996
  %2998 = fsub fast float -0.000000e+00, %2997
  %2999 = fsub fast float 1.000000e+00, %2954
  %3000 = fdiv fast float %2998, %2999
  br label %3001

; <label>:3001                                    ; preds = %2994, %2990
  %3002 = phi float [ %3000, %2994 ], [ %2951, %2990 ]
  %3003 = phi float [ %2996, %2994 ], [ 0.000000e+00, %2990 ]
  %3004 = fcmp fast une float %2955, 1.000000e+00
  br i1 %3004, label %3005, label %3012, !dx.controlflow.hints !128

; <label>:3005                                    ; preds = %3001
  %3006 = call float @dx.op.unary.f32(i32 23, float %2955)  ; Log(value)
  %3007 = fmul fast float %3006, 0x3FE62E4300000000
  %3008 = fmul fast float %2952, %3007
  %3009 = fsub fast float -0.000000e+00, %3008
  %3010 = fsub fast float 1.000000e+00, %2955
  %3011 = fdiv fast float %3009, %3010
  br label %3012

; <label>:3012                                    ; preds = %3005, %3001
  %3013 = phi float [ %3011, %3005 ], [ %2952, %3001 ]
  %3014 = phi float [ %3007, %3005 ], [ 0.000000e+00, %3001 ]
  %3015 = fmul fast float %2978, %2962
  %3016 = fmul fast float %2979, %2962
  %3017 = fmul fast float %2980, %2962
  %3018 = fmul fast float %2981, %2962
  %3019 = fmul fast float %2991, %2960
  %3020 = fmul fast float %3002, %2960
  %3021 = fmul fast float %3013, %2960
  %3022 = fmul fast float %2992, %2960
  %3023 = fmul fast float %3003, %2960
  %3024 = fmul fast float %3014, %2960
  %3025 = fadd fast float %3019, %3015
  %3026 = fadd fast float %3020, %3016
  %3027 = fadd fast float %3021, %3017
  %3028 = fadd fast float %3022, %3018
  %3029 = fadd fast float %3023, %3018
  %3030 = fadd fast float %3024, %3018
  %3031 = fcmp fast une float %3028, 0.000000e+00
  br i1 %3031, label %3032, label %3039, !dx.controlflow.hints !129

; <label>:3032                                    ; preds = %3012
  %3033 = fmul fast float %3028, 0x3FF7154760000000
  %3034 = call float @dx.op.unary.f32(i32 21, float %3033)  ; Exp(value)
  %3035 = fsub fast float 1.000000e+00, %3034
  %3036 = fmul fast float %3025, %3035
  %3037 = fsub fast float -0.000000e+00, %3036
  %3038 = fdiv fast float %3037, %3028
  br label %3039

; <label>:3039                                    ; preds = %3032, %3012
  %3040 = phi float [ %3034, %3032 ], [ 1.000000e+00, %3012 ]
  %3041 = phi float [ %3038, %3032 ], [ %3025, %3012 ]
  %3042 = fcmp fast une float %3029, 0.000000e+00
  br i1 %3042, label %3043, label %3050, !dx.controlflow.hints !129

; <label>:3043                                    ; preds = %3039
  %3044 = fmul fast float %3029, 0x3FF7154760000000
  %3045 = call float @dx.op.unary.f32(i32 21, float %3044)  ; Exp(value)
  %3046 = fsub fast float 1.000000e+00, %3045
  %3047 = fmul fast float %3026, %3046
  %3048 = fsub fast float -0.000000e+00, %3047
  %3049 = fdiv fast float %3048, %3029
  br label %3050

; <label>:3050                                    ; preds = %3043, %3039
  %3051 = phi float [ %3045, %3043 ], [ 1.000000e+00, %3039 ]
  %3052 = phi float [ %3049, %3043 ], [ %3026, %3039 ]
  %3053 = fcmp fast une float %3030, 0.000000e+00
  br i1 %3053, label %3054, label %3061, !dx.controlflow.hints !129

; <label>:3054                                    ; preds = %3050
  %3055 = fmul fast float %3030, 0x3FF7154760000000
  %3056 = call float @dx.op.unary.f32(i32 21, float %3055)  ; Exp(value)
  %3057 = fsub fast float 1.000000e+00, %3056
  %3058 = fmul fast float %3027, %3057
  %3059 = fsub fast float -0.000000e+00, %3058
  %3060 = fdiv fast float %3059, %3030
  br label %3061

; <label>:3061                                    ; preds = %3054, %3050
  %3062 = phi float [ %3056, %3054 ], [ 1.000000e+00, %3050 ]
  %3063 = phi float [ %3060, %3054 ], [ %3027, %3050 ]
  %3064 = fcmp fast ogt float %2960, %2962
  br i1 %3064, label %3065, label %3085, !dx.controlflow.hints !130

; <label>:3065                                    ; preds = %3061
  %3066 = fsub fast float 1.000000e+00, %2962
  %3067 = fmul fast float %2978, %3066
  %3068 = fmul fast float %2979, %3066
  %3069 = fmul fast float %2980, %3066
  %3070 = fmul fast float %2981, %3066
  %3071 = fcmp fast une float %3070, 0.000000e+00
  br i1 %3071, label %3072, label %3123, !dx.controlflow.hints !131

; <label>:3072                                    ; preds = %3065
  %3073 = fmul fast float %3070, 0x3FF7154760000000
  %3074 = call float @dx.op.unary.f32(i32 21, float %3073)  ; Exp(value)
  %3075 = fsub fast float 1.000000e+00, %3074
  %3076 = fmul fast float %3067, %3075
  %3077 = fsub fast float -0.000000e+00, %3076
  %3078 = fmul fast float %3068, %3075
  %3079 = fsub fast float -0.000000e+00, %3078
  %3080 = fmul fast float %3069, %3075
  %3081 = fsub fast float -0.000000e+00, %3080
  %3082 = fdiv fast float %3077, %3070
  %3083 = fdiv fast float %3079, %3070
  %3084 = fdiv fast float %3081, %3070
  br label %3123

; <label>:3085                                    ; preds = %3061
  %3086 = fsub fast float 1.000000e+00, %2960
  %3087 = fmul fast float %2991, %3086
  %3088 = fmul fast float %3002, %3086
  %3089 = fmul fast float %3013, %3086
  %3090 = fmul fast float %2992, %3086
  %3091 = fmul fast float %3003, %3086
  %3092 = fmul fast float %3014, %3086
  %3093 = fcmp fast une float %3090, 0.000000e+00
  br i1 %3093, label %3094, label %3101, !dx.controlflow.hints !129

; <label>:3094                                    ; preds = %3085
  %3095 = fmul fast float %3090, 0x3FF7154760000000
  %3096 = call float @dx.op.unary.f32(i32 21, float %3095)  ; Exp(value)
  %3097 = fsub fast float 1.000000e+00, %3096
  %3098 = fmul fast float %3087, %3097
  %3099 = fsub fast float -0.000000e+00, %3098
  %3100 = fdiv fast float %3099, %3090
  br label %3101

; <label>:3101                                    ; preds = %3094, %3085
  %3102 = phi float [ %3100, %3094 ], [ %3087, %3085 ]
  %3103 = phi float [ %3096, %3094 ], [ 1.000000e+00, %3085 ]
  %3104 = fcmp fast une float %3091, 0.000000e+00
  br i1 %3104, label %3105, label %3112, !dx.controlflow.hints !129

; <label>:3105                                    ; preds = %3101
  %3106 = fmul fast float %3091, 0x3FF7154760000000
  %3107 = call float @dx.op.unary.f32(i32 21, float %3106)  ; Exp(value)
  %3108 = fsub fast float 1.000000e+00, %3107
  %3109 = fmul fast float %3088, %3108
  %3110 = fsub fast float -0.000000e+00, %3109
  %3111 = fdiv fast float %3110, %3091
  br label %3112

; <label>:3112                                    ; preds = %3105, %3101
  %3113 = phi float [ %3111, %3105 ], [ %3088, %3101 ]
  %3114 = phi float [ %3107, %3105 ], [ 1.000000e+00, %3101 ]
  %3115 = fcmp fast une float %3092, 0.000000e+00
  br i1 %3115, label %3116, label %3123, !dx.controlflow.hints !129

; <label>:3116                                    ; preds = %3112
  %3117 = fmul fast float %3092, 0x3FF7154760000000
  %3118 = call float @dx.op.unary.f32(i32 21, float %3117)  ; Exp(value)
  %3119 = fsub fast float 1.000000e+00, %3118
  %3120 = fmul fast float %3089, %3119
  %3121 = fsub fast float -0.000000e+00, %3120
  %3122 = fdiv fast float %3121, %3092
  br label %3123

; <label>:3123                                    ; preds = %3116, %3112, %3072, %3065
  %3124 = phi float [ %3122, %3116 ], [ %3084, %3072 ], [ %3069, %3065 ], [ %3089, %3112 ]
  %3125 = phi float [ %3113, %3116 ], [ %3083, %3072 ], [ %3068, %3065 ], [ %3113, %3112 ]
  %3126 = phi float [ %3102, %3116 ], [ %3082, %3072 ], [ %3067, %3065 ], [ %3102, %3112 ]
  %3127 = phi float [ %3118, %3116 ], [ %3074, %3072 ], [ 1.000000e+00, %3065 ], [ 1.000000e+00, %3112 ]
  %3128 = phi float [ %3114, %3116 ], [ %3074, %3072 ], [ 1.000000e+00, %3065 ], [ %3114, %3112 ]
  %3129 = phi float [ %3103, %3116 ], [ %3074, %3072 ], [ 1.000000e+00, %3065 ], [ %3103, %3112 ]
  %3130 = fmul fast float %3129, %3041
  %3131 = fmul fast float %3128, %3052
  %3132 = fmul fast float %3127, %3063
  %3133 = fadd fast float %3130, %3126
  %3134 = fadd fast float %3131, %3125
  %3135 = fadd fast float %3132, %3124
  %3136 = fmul fast float %3129, %3040
  %3137 = fmul fast float %3128, %3051
  %3138 = fmul fast float %3127, %3062
  br label %3139

; <label>:3139                                    ; preds = %3123, %2934
  %3140 = phi float [ %2940, %2934 ], [ %3138, %3123 ]
  %3141 = phi float [ %2939, %2934 ], [ %3137, %3123 ]
  %3142 = phi float [ %2938, %2934 ], [ %3136, %3123 ]
  %3143 = phi float [ %2937, %2934 ], [ %3135, %3123 ]
  %3144 = phi float [ %2936, %2934 ], [ %3134, %3123 ]
  %3145 = phi float [ %2935, %2934 ], [ %3133, %3123 ]
  %3146 = fmul fast float %3142, %2283
  %3147 = fmul fast float %3141, %2284
  %3148 = fmul fast float %3140, %2285
  %3149 = fsub fast float 1.000000e+00, %2346
  %3150 = fmul fast float %3145, %3149
  %3151 = fmul fast float %3144, %3149
  %3152 = fmul fast float %3143, %3149
  %3153 = fadd fast float %3150, %3146
  %3154 = fadd fast float %3151, %3147
  %3155 = fadd fast float %3152, %3148
  %3156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %3157 = extractvalue %dx.types.CBufRet.f32 %3156, 2
  %3158 = fmul fast float %3157, %2356
  %3159 = call float @dx.op.unary.f32(i32 7, float %3158)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %27, i32 %28, i32 undef, float %2346, float %2346, float %2346, float %2346, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %3160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3161 = extractvalue %dx.types.CBufRet.f32 %3160, 0
  %3162 = fmul fast float %3161, %3153
  %3163 = fmul fast float %3161, %3154
  %3164 = fmul fast float %3161, %3155
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %27, i32 %28, i32 undef, float %3162, float %3163, float %3164, float %3162, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %27, i32 %28, i32 undef, float %3159, float %3159, float %3159, float %3159, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!38 = !{void ()* @cs_fog_raymarching_clouds_brfog, !"cs_fog_raymarching_clouds_brfog", null, !4, !39}
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

