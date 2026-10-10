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
; shader hash: 116b62044d2866f27b5a887fcd8eb9ba
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

define void @cs_fog_raymarching_clouds() {
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
  %70 = extractvalue %dx.types.CBufRet.f32 %68, 1
  %71 = extractvalue %dx.types.CBufRet.f32 %68, 2
  %72 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %73 = extractvalue %dx.types.CBufRet.f32 %72, 1
  %74 = fmul fast float %66, 2.000000e+00
  %75 = fmul fast float %67, 2.000000e+00
  %76 = fsub fast float 1.000000e+00, %74
  %77 = fsub fast float 1.000000e+00, %75
  %78 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %79 = extractvalue %dx.types.CBufRet.f32 %78, 0
  %80 = extractvalue %dx.types.CBufRet.f32 %78, 1
  %81 = extractvalue %dx.types.CBufRet.f32 %78, 2
  %82 = fmul fast float %79, %76
  %83 = fmul fast float %80, %76
  %84 = fmul fast float %81, %76
  %85 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %86 = extractvalue %dx.types.CBufRet.f32 %85, 0
  %87 = extractvalue %dx.types.CBufRet.f32 %85, 1
  %88 = extractvalue %dx.types.CBufRet.f32 %85, 2
  %89 = fmul fast float %86, %77
  %90 = fmul fast float %87, %77
  %91 = fmul fast float %88, %77
  %92 = fadd fast float %89, %82
  %93 = fadd fast float %90, %83
  %94 = fadd fast float %91, %84
  %95 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %96 = extractvalue %dx.types.CBufRet.f32 %95, 0
  %97 = extractvalue %dx.types.CBufRet.f32 %95, 1
  %98 = extractvalue %dx.types.CBufRet.f32 %95, 2
  %99 = fadd fast float %92, %96
  %100 = fadd fast float %93, %97
  %101 = fadd fast float %94, %98
  %102 = fmul fast float %99, %73
  %103 = fmul fast float %100, %73
  %104 = fmul fast float %101, %73
  %105 = fmul fast float %102, %102
  %106 = fmul fast float %103, %103
  %107 = fadd fast float %105, %106
  %108 = fmul fast float %104, %104
  %109 = fadd fast float %107, %108
  %110 = call float @dx.op.unary.f32(i32 24, float %109)  ; Sqrt(value)
  %111 = fdiv fast float 1.000000e+00, %110
  %112 = fmul fast float %102, %111
  %113 = fmul fast float %103, %111
  %114 = fmul fast float %104, %111
  %115 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %40, i32 %41, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %116 = extractvalue %dx.types.ResRet.f32 %115, 0
  %117 = fcmp fast ogt float %116, -1.000000e+00
  %118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %119 = extractvalue %dx.types.CBufRet.f32 %118, 1
  %120 = select i1 %117, float %119, float 1.000000e+00
  %121 = fadd fast float %116, 1.000000e+00
  %122 = fmul fast float %120, %121
  %123 = call float @dx.op.unary.f32(i32 6, float %122)  ; FAbs(value)
  %124 = fdiv fast float 1.000000e+00, %73
  %125 = fmul fast float %124, %110
  %126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %127 = extractvalue %dx.types.CBufRet.f32 %126, 1
  %128 = fmul fast float %127, %125
  %129 = fmul fast float %125, %123
  %130 = extractvalue %dx.types.CBufRet.f32 %118, 3
  %131 = fcmp fast oge float %123, %130
  %132 = call float @dx.op.binary.f32(i32 36, float %129, float %128)  ; FMin(a,b)
  %133 = select i1 %131, float %128, float %132
  %134 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.i32 %134, 3
  %136 = icmp eq i32 %135, 0
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %140 = extractvalue %dx.types.CBufRet.f32 %139, 2
  %141 = fsub fast float %138, %71
  %142 = fadd fast float %141, %140
  br i1 %136, label %154, label %143, !dx.controlflow.hints !40

; <label>:143                                     ; preds = %0
  %144 = fsub fast float -0.000000e+00, %70
  %145 = fsub fast float -0.000000e+00, %69
  %146 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %145, float %144, float %142)  ; Dot3(ax,ay,az,bx,by,bz)
  %147 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %112, float %113, float %114)  ; Dot3(ax,ay,az,bx,by,bz)
  %148 = fdiv fast float 1.000000e+00, %147
  %149 = fmul fast float %148, %146
  %150 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %145, float %144, float %141)  ; Dot3(ax,ay,az,bx,by,bz)
  %151 = fmul fast float %148, %150
  %152 = call float @dx.op.binary.f32(i32 36, float %149, float %151)  ; FMin(a,b)
  %153 = call float @dx.op.binary.f32(i32 35, float %149, float %151)  ; FMax(a,b)
  br label %187

; <label>:154                                     ; preds = %0
  %155 = fdiv fast float 1.000000e+00, %112
  %156 = fdiv fast float 1.000000e+00, %113
  %157 = fdiv fast float 1.000000e+00, %114
  %158 = extractvalue %dx.types.CBufRet.f32 %137, 0
  %159 = extractvalue %dx.types.CBufRet.f32 %137, 1
  %160 = extractvalue %dx.types.CBufRet.f32 %139, 0
  %161 = extractvalue %dx.types.CBufRet.f32 %139, 1
  %162 = fsub fast float %158, %69
  %163 = fmul fast float %162, %155
  %164 = fadd fast float %162, %160
  %165 = fmul fast float %164, %155
  %166 = call float @dx.op.binary.f32(i32 36, float %163, float %165)  ; FMin(a,b)
  %167 = call float @dx.op.binary.f32(i32 35, float %163, float %165)  ; FMax(a,b)
  %168 = fsub fast float %159, %70
  %169 = fmul fast float %168, %156
  %170 = fadd fast float %168, %161
  %171 = fmul fast float %170, %156
  %172 = call float @dx.op.binary.f32(i32 36, float %169, float %171)  ; FMin(a,b)
  %173 = call float @dx.op.binary.f32(i32 35, float %166, float %172)  ; FMax(a,b)
  %174 = call float @dx.op.binary.f32(i32 35, float %169, float %171)  ; FMax(a,b)
  %175 = call float @dx.op.binary.f32(i32 36, float %167, float %174)  ; FMin(a,b)
  %176 = fmul fast float %141, %157
  %177 = fmul fast float %142, %157
  %178 = call float @dx.op.binary.f32(i32 36, float %176, float %177)  ; FMin(a,b)
  %179 = call float @dx.op.binary.f32(i32 35, float %173, float %178)  ; FMax(a,b)
  %180 = call float @dx.op.binary.f32(i32 35, float %176, float %177)  ; FMax(a,b)
  %181 = call float @dx.op.binary.f32(i32 36, float %175, float %180)  ; FMin(a,b)
  %182 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %179)  ; FMax(a,b)
  %183 = fcmp fast ult float %181, %182
  br i1 %183, label %187, label %184, !dx.controlflow.hints !41

; <label>:184                                     ; preds = %154
  %185 = call float @dx.op.binary.f32(i32 36, float %179, float %181)  ; FMin(a,b)
  %186 = call float @dx.op.binary.f32(i32 35, float %179, float %181)  ; FMax(a,b)
  br label %187

; <label>:187                                     ; preds = %184, %154, %143
  %188 = phi float [ %152, %143 ], [ %185, %184 ], [ 0.000000e+00, %154 ]
  %189 = phi float [ %153, %143 ], [ %186, %184 ], [ 0.000000e+00, %154 ]
  %190 = fcmp fast oeq float %189, 0.000000e+00
  br i1 %190, label %194, label %191, !dx.controlflow.hints !42

; <label>:191                                     ; preds = %187
  %192 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %188)  ; FMin(a,b)
  %193 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %189)  ; FMax(a,b)
  br label %194

; <label>:194                                     ; preds = %191, %187
  %195 = phi i32 [ 1, %191 ], [ 0, %187 ]
  %196 = phi float [ %193, %191 ], [ -1.000000e+00, %187 ]
  %197 = phi float [ %192, %191 ], [ 0x47EFFFFFE0000000, %187 ]
  %198 = call float @dx.op.binary.f32(i32 36, float %133, float %196)  ; FMin(a,b)
  %199 = call float @dx.op.binary.f32(i32 35, float %110, float %197)  ; FMax(a,b)
  %200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = extractvalue %dx.types.CBufRet.f32 %200, 0
  %202 = fmul fast float %58, 2.000000e+00
  %203 = fadd fast float %202, -1.000000e+00
  %204 = fmul fast float %201, %203
  %205 = fadd fast float %204, %199
  %206 = fcmp fast olt float %205, %198
  %207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %208 = extractvalue %dx.types.CBufRet.f32 %207, 2
  %209 = fcmp fast olt float %208, 1.000000e+00
  %210 = and i1 %209, %206
  br i1 %210, label %211, label %1823

; <label>:211                                     ; preds = %194
  %212 = fmul fast float %205, %114
  %213 = fadd fast float %212, %71
  %214 = fmul fast float %205, %113
  %215 = fadd fast float %214, %70
  %216 = fmul fast float %205, %112
  %217 = fadd fast float %216, %69
  br label %218

; <label>:218                                     ; preds = %1799, %211
  %219 = phi float [ %1801, %1799 ], [ 0.000000e+00, %211 ]
  %220 = phi float [ %1802, %1799 ], [ 1.000000e+00, %211 ]
  %221 = phi float [ %1803, %1799 ], [ 0.000000e+00, %211 ]
  %222 = phi float [ %1804, %1799 ], [ 0.000000e+00, %211 ]
  %223 = phi float [ %1805, %1799 ], [ 0.000000e+00, %211 ]
  %224 = phi float [ %1815, %1799 ], [ %217, %211 ]
  %225 = phi float [ %1816, %1799 ], [ %215, %211 ]
  %226 = phi float [ %1817, %1799 ], [ %213, %211 ]
  %227 = phi float [ %1800, %1799 ], [ %205, %211 ]
  %228 = phi float [ %1806, %1799 ], [ 0.000000e+00, %211 ]
  %229 = phi float [ %1807, %1799 ], [ 0.000000e+00, %211 ]
  %230 = phi float [ %1808, %1799 ], [ 0.000000e+00, %211 ]
  %231 = phi float [ %1809, %1799 ], [ 0.000000e+00, %211 ]
  %232 = phi float [ %1810, %1799 ], [ 0.000000e+00, %211 ]
  %233 = phi i32 [ %1811, %1799 ], [ 0, %211 ]
  %234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %235 = extractvalue %dx.types.CBufRet.f32 %234, 0
  %236 = icmp eq i32 %195, 0
  br i1 %236, label %293, label %237, !dx.controlflow.hints !43

; <label>:237                                     ; preds = %218
  %238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %239 = extractvalue %dx.types.CBufRet.f32 %238, 0
  %240 = extractvalue %dx.types.CBufRet.f32 %238, 1
  %241 = extractvalue %dx.types.CBufRet.f32 %238, 2
  %242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %243 = extractvalue %dx.types.CBufRet.f32 %242, 0
  %244 = extractvalue %dx.types.CBufRet.f32 %242, 1
  %245 = extractvalue %dx.types.CBufRet.f32 %242, 2
  %246 = fsub fast float %224, %243
  %247 = fsub fast float %225, %244
  %248 = fsub fast float %226, %245
  %249 = fmul fast float %246, %239
  %250 = fmul fast float %247, %240
  %251 = fmul fast float %248, %241
  %252 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %253 = extractvalue %dx.types.CBufRet.i32 %252, 3
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %258, label %255, !dx.controlflow.hints !44

; <label>:255                                     ; preds = %237
  %256 = call float @dx.op.unary.f32(i32 22, float %249)  ; Frc(value)
  %257 = call float @dx.op.unary.f32(i32 22, float %250)  ; Frc(value)
  br label %258

; <label>:258                                     ; preds = %255, %237
  %259 = phi float [ %256, %255 ], [ %249, %237 ]
  %260 = phi float [ %257, %255 ], [ %250, %237 ]
  %261 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %21, float %259, float %260, float %251, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %262 = extractvalue %dx.types.ResRet.f32 %261, 0
  %263 = fmul fast float %262, 2.000000e+00
  %264 = fadd fast float %263, -1.000000e+00
  %265 = extractvalue %dx.types.CBufRet.f32 %238, 3
  %266 = fmul fast float %264, %265
  %267 = fcmp fast olt float %266, 0.000000e+00
  %268 = fcmp fast oge float %251, 0.000000e+00
  %269 = fcmp fast ole float %251, 1.000000e+00
  br i1 %254, label %272, label %270, !dx.controlflow.hints !45

; <label>:270                                     ; preds = %258
  %271 = and i1 %268, %269
  br label %282

; <label>:272                                     ; preds = %258
  %273 = fcmp fast oge float %249, 0.000000e+00
  %274 = fcmp fast oge float %250, 0.000000e+00
  %275 = and i1 %273, %274
  %276 = and i1 %268, %275
  %277 = fcmp fast ole float %249, 1.000000e+00
  %278 = fcmp fast ole float %250, 1.000000e+00
  %279 = and i1 %277, %278
  %280 = and i1 %269, %279
  %281 = and i1 %276, %280
  br label %282

; <label>:282                                     ; preds = %272, %270
  %283 = phi i1 [ %271, %270 ], [ %281, %272 ]
  %284 = and i1 %267, %283
  %285 = call float @dx.op.unary.f32(i32 6, float %266)  ; FAbs(value)
  %286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %287 = extractvalue %dx.types.CBufRet.f32 %286, 1
  %288 = extractvalue %dx.types.CBufRet.f32 %286, 0
  %289 = call float @dx.op.binary.f32(i32 35, float %285, float %288)  ; FMax(a,b)
  %290 = select i1 %284, float %287, float %289
  %291 = zext i1 %284 to i32
  %292 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %290)  ; FMin(a,b)
  br label %293

; <label>:293                                     ; preds = %282, %218
  %294 = phi i32 [ %291, %282 ], [ 0, %218 ]
  %295 = phi float [ %292, %282 ], [ 0x47EFFFFFE0000000, %218 ]
  %296 = extractvalue %dx.types.CBufRet.f32 %234, 2
  %297 = fmul fast float %296, %227
  %298 = call float @dx.op.unary.f32(i32 23, float %297)  ; Log(value)
  %299 = fmul fast float %298, 0x3FE62E4300000000
  %300 = call float @dx.op.binary.f32(i32 35, float %299, float 1.000000e+00)  ; FMax(a,b)
  %301 = fmul fast float %300, 0x47EFFFFFE0000000
  %302 = call float @dx.op.binary.f32(i32 36, float %301, float %295)  ; FMin(a,b)
  %303 = call float @dx.op.binary.f32(i32 35, float %302, float %235)  ; FMax(a,b)
  %304 = fadd fast float %198, 0x3F1A36E2E0000000
  %305 = fsub fast float %304, %227
  %306 = call float @dx.op.binary.f32(i32 36, float %305, float %303)  ; FMin(a,b)
  %307 = icmp eq i32 %294, 0
  br i1 %307, label %497, label %308, !dx.controlflow.hints !46

; <label>:308                                     ; preds = %293
  %309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %310 = extractvalue %dx.types.CBufRet.f32 %309, 3
  %311 = fmul fast float %310, %227
  %312 = fcmp fast oeq float %311, 0.000000e+00
  br i1 %312, label %327, label %313, !dx.controlflow.hints !47

; <label>:313                                     ; preds = %308
  %314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %315 = extractvalue %dx.types.CBufRet.f32 %314, 3
  %316 = fmul fast float %315, %311
  %317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %318 = extractvalue %dx.types.CBufRet.f32 %317, 0
  %319 = extractvalue %dx.types.CBufRet.f32 %317, 1
  %320 = extractvalue %dx.types.CBufRet.f32 %317, 2
  %321 = fmul fast float %318, %316
  %322 = fmul fast float %319, %316
  %323 = fmul fast float %320, %316
  %324 = call float @dx.op.unary.f32(i32 23, float %321)  ; Log(value)
  %325 = call float @dx.op.unary.f32(i32 23, float %322)  ; Log(value)
  %326 = call float @dx.op.unary.f32(i32 23, float %323)  ; Log(value)
  br label %327

; <label>:327                                     ; preds = %313, %308
  %328 = phi float [ %324, %313 ], [ 0.000000e+00, %308 ]
  %329 = phi float [ %325, %313 ], [ 0.000000e+00, %308 ]
  %330 = phi float [ %326, %313 ], [ 0.000000e+00, %308 ]
  %331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %332 = extractvalue %dx.types.CBufRet.f32 %331, 0
  %333 = extractvalue %dx.types.CBufRet.f32 %331, 1
  %334 = extractvalue %dx.types.CBufRet.f32 %331, 2
  %335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %336 = extractvalue %dx.types.CBufRet.f32 %335, 0
  %337 = extractvalue %dx.types.CBufRet.f32 %335, 1
  %338 = extractvalue %dx.types.CBufRet.f32 %335, 2
  %339 = fsub fast float %224, %336
  %340 = fsub fast float %225, %337
  %341 = fsub fast float %226, %338
  %342 = fmul fast float %339, %332
  %343 = fmul fast float %340, %333
  %344 = fmul fast float %341, %334
  %345 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %346 = extractvalue %dx.types.CBufRet.i32 %345, 0
  %347 = extractvalue %dx.types.CBufRet.i32 %345, 1
  %348 = uitofp i32 %346 to float
  %349 = uitofp i32 %347 to float
  %350 = fmul fast float %342, %348
  %351 = fmul fast float %343, %349
  %352 = fadd fast float %350, 5.000000e-01
  %353 = fadd fast float %351, 5.000000e-01
  %354 = call float @dx.op.unary.f32(i32 22, float %352)  ; Frc(value)
  %355 = call float @dx.op.unary.f32(i32 22, float %353)  ; Frc(value)
  %356 = call float @dx.op.unary.f32(i32 27, float %352)  ; Round_ni(value)
  %357 = call float @dx.op.unary.f32(i32 27, float %353)  ; Round_ni(value)
  %358 = fadd fast float %356, 1.000000e+00
  %359 = fadd fast float %357, 1.000000e+00
  %360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %361 = extractvalue %dx.types.CBufRet.f32 %360, 0
  %362 = extractvalue %dx.types.CBufRet.f32 %360, 1
  %363 = fmul fast float %361, %358
  %364 = fmul fast float %362, %359
  %365 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %22, float %363, float %364, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %366 = extractvalue %dx.types.ResRet.f32 %365, 0
  %367 = extractvalue %dx.types.ResRet.f32 %365, 1
  %368 = extractvalue %dx.types.ResRet.f32 %365, 2
  %369 = extractvalue %dx.types.ResRet.f32 %365, 3
  %370 = extractvalue %dx.types.CBufRet.i32 %345, 2
  %371 = extractvalue %dx.types.CBufRet.f32 %360, 2
  %372 = uitofp i32 %370 to float
  %373 = fadd fast float %372, -1.000000e+00
  %374 = fmul fast float %373, %366
  %375 = fmul fast float %373, %367
  %376 = fmul fast float %373, %368
  %377 = fmul fast float %373, %369
  %378 = fadd fast float %374, 5.000000e-01
  %379 = fadd fast float %375, 5.000000e-01
  %380 = fadd fast float %376, 5.000000e-01
  %381 = fadd fast float %377, 5.000000e-01
  %382 = fptoui float %378 to i32
  %383 = fptoui float %379 to i32
  %384 = fptoui float %380 to i32
  %385 = fptoui float %381 to i32
  %386 = uitofp i32 %382 to float
  %387 = uitofp i32 %383 to float
  %388 = uitofp i32 %384 to float
  %389 = uitofp i32 %385 to float
  %390 = fadd fast float %386, 5.000000e-01
  %391 = fadd fast float %387, 5.000000e-01
  %392 = fadd fast float %388, 5.000000e-01
  %393 = fadd fast float %389, 5.000000e-01
  %394 = fmul fast float %390, %371
  %395 = fmul fast float %391, %371
  %396 = fmul fast float %392, %371
  %397 = fmul fast float %393, %371
  %398 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %23, float %394, float %344, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %399 = extractvalue %dx.types.ResRet.f32 %398, 0
  %400 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %23, float %395, float %344, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %401 = extractvalue %dx.types.ResRet.f32 %400, 0
  %402 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %23, float %396, float %344, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %403 = extractvalue %dx.types.ResRet.f32 %402, 0
  %404 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %23, float %397, float %344, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %405 = extractvalue %dx.types.ResRet.f32 %404, 0
  %406 = fsub fast float %403, %405
  %407 = fmul fast float %406, %354
  %408 = fadd fast float %407, %405
  %409 = fsub fast float %401, %399
  %410 = fmul fast float %409, %354
  %411 = fadd fast float %410, %399
  %412 = fsub fast float %411, %408
  %413 = fmul fast float %412, %355
  %414 = fadd fast float %413, %408
  %415 = fcmp fast ogt float %414, 0.000000e+00
  br i1 %415, label %416, label %484, !dx.controlflow.hints !48

; <label>:416                                     ; preds = %327
  %417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %418 = extractvalue %dx.types.CBufRet.f32 %417, 0
  %419 = extractvalue %dx.types.CBufRet.f32 %417, 1
  %420 = extractvalue %dx.types.CBufRet.f32 %417, 2
  %421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %422 = extractvalue %dx.types.CBufRet.f32 %421, 0
  %423 = extractvalue %dx.types.CBufRet.f32 %421, 1
  %424 = extractvalue %dx.types.CBufRet.f32 %421, 2
  %425 = fmul fast float %340, %332
  %426 = fmul fast float %341, %332
  %427 = fadd fast float %342, %422
  %428 = fadd fast float %425, %423
  %429 = fadd fast float %426, %424
  %430 = fmul fast float %427, %418
  %431 = fmul fast float %428, %418
  %432 = fmul fast float %429, %418
  %433 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %20, float %430, float %431, float %432, float undef, i32 0, i32 0, i32 0, float %328)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %434 = extractvalue %dx.types.ResRet.f32 %433, 0
  %435 = fmul fast float %427, %419
  %436 = fmul fast float %428, %419
  %437 = fmul fast float %429, %419
  %438 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %20, float %435, float %436, float %437, float undef, i32 0, i32 0, i32 0, float %329)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %439 = extractvalue %dx.types.ResRet.f32 %438, 1
  %440 = fmul fast float %427, %420
  %441 = fmul fast float %428, %420
  %442 = fmul fast float %429, %420
  %443 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %20, float %440, float %441, float %442, float undef, i32 0, i32 0, i32 0, float %330)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %444 = extractvalue %dx.types.ResRet.f32 %443, 2
  %445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %446 = extractvalue %dx.types.CBufRet.f32 %445, 1
  %447 = fmul fast float %439, %434
  %448 = fmul fast float %447, %444
  %449 = call float @dx.op.unary.f32(i32 23, float %448)  ; Log(value)
  %450 = fmul fast float %449, %446
  %451 = call float @dx.op.unary.f32(i32 21, float %450)  ; Exp(value)
  %452 = extractvalue %dx.types.CBufRet.f32 %445, 2
  %453 = fmul fast float %414, %414
  %454 = fmul fast float %453, %451
  %455 = fmul fast float %454, %452
  %456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %457 = extractvalue %dx.types.CBufRet.f32 %456, 3
  %458 = fmul fast float %457, %455
  %459 = bitcast float %458 to i32
  %460 = sitofp i32 %459 to float
  %461 = fptosi float %460 to i32
  %462 = bitcast i32 %461 to float
  %463 = fsub fast float 1.000000e+00, %455
  %464 = bitcast float %463 to i32
  %465 = sitofp i32 %464 to float
  %466 = fptosi float %465 to i32
  %467 = bitcast i32 %466 to float
  %468 = fadd fast float %462, %467
  %469 = bitcast float %468 to i32
  %470 = sub nsw i32 2129859010, %469
  %471 = bitcast i32 %470 to float
  %472 = fmul fast float %471, %462
  %473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %474 = extractvalue %dx.types.CBufRet.f32 %473, 2
  %475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %476 = extractvalue %dx.types.CBufRet.f32 %475, 0
  %477 = fmul fast float %472, %476
  %478 = fadd fast float %477, 1.000000e+00
  %479 = bitcast float %478 to i32
  %480 = sub nsw i32 2129859010, %479
  %481 = bitcast i32 %480 to float
  %482 = fmul fast float %472, %474
  %483 = fmul fast float %482, %481
  br label %484

; <label>:484                                     ; preds = %416, %327
  %485 = phi float [ %483, %416 ], [ %414, %327 ]
  %486 = fmul fast float %485, %306
  %487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %488 = extractvalue %dx.types.CBufRet.f32 %487, 0
  %489 = extractvalue %dx.types.CBufRet.f32 %487, 1
  %490 = extractvalue %dx.types.CBufRet.f32 %487, 2
  %491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %492 = extractvalue %dx.types.CBufRet.f32 %491, 1
  %493 = fmul fast float %488, %486
  %494 = fmul fast float %489, %486
  %495 = fmul fast float %490, %486
  %496 = fmul fast float %492, %486
  br label %497

; <label>:497                                     ; preds = %484, %293
  %498 = phi float [ %486, %484 ], [ 0.000000e+00, %293 ]
  %499 = phi float [ %496, %484 ], [ 0.000000e+00, %293 ]
  %500 = phi float [ %493, %484 ], [ 0.000000e+00, %293 ]
  %501 = phi float [ %494, %484 ], [ 0.000000e+00, %293 ]
  %502 = phi float [ %495, %484 ], [ 0.000000e+00, %293 ]
  %503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %504 = extractvalue %dx.types.CBufRet.f32 %503, 1
  %505 = fcmp fast ogt float %498, %504
  br i1 %505, label %506, label %512, !dx.controlflow.hints !49

; <label>:506                                     ; preds = %497
  %507 = fdiv fast float 1.000000e+00, %498
  %508 = fmul fast float %507, %500
  %509 = fmul fast float %507, %501
  %510 = fmul fast float %507, %502
  %511 = fmul fast float %507, %499
  br label %512

; <label>:512                                     ; preds = %506, %497
  %513 = phi float [ %511, %506 ], [ %499, %497 ]
  %514 = phi float [ %508, %506 ], [ %500, %497 ]
  %515 = phi float [ %509, %506 ], [ %501, %497 ]
  %516 = phi float [ %510, %506 ], [ %502, %497 ]
  br i1 %505, label %519, label %517, !dx.controlflow.hints !50

; <label>:517                                     ; preds = %512
  %518 = fadd fast float %306, %227
  br label %1799

; <label>:519                                     ; preds = %512
  %520 = fmul fast float %498, 0xBFF7154760000000
  %521 = call float @dx.op.unary.f32(i32 21, float %520)  ; Exp(value)
  %522 = call float @dx.op.unary.f32(i32 7, float %521)  ; Saturate(value)
  %523 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %524 = extractvalue %dx.types.CBufRet.i32 %523, 0
  %525 = icmp eq i32 %524, 1
  br i1 %525, label %526, label %561, !dx.controlflow.hints !51

; <label>:526                                     ; preds = %519
  %527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %528 = extractvalue %dx.types.CBufRet.f32 %527, 0
  %529 = extractvalue %dx.types.CBufRet.f32 %527, 1
  %530 = fsub fast float %224, %528
  %531 = fsub fast float %225, %529
  %532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %533 = extractvalue %dx.types.CBufRet.f32 %532, 0
  %534 = extractvalue %dx.types.CBufRet.f32 %532, 1
  %535 = fmul fast float %530, %533
  %536 = fmul fast float %531, %534
  %537 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %23, float %535, float %536, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %538 = extractvalue %dx.types.ResRet.f32 %537, 0
  %539 = fcmp fast ogt float %538, 0.000000e+00
  %540 = extractvalue %dx.types.CBufRet.i32 %523, 3
  %541 = icmp ne i32 %540, 0
  %542 = and i1 %539, %541
  br i1 %542, label %543, label %561, !dx.controlflow.hints !52

; <label>:543                                     ; preds = %526
  %544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %545 = extractvalue %dx.types.CBufRet.f32 %544, 0
  %546 = extractvalue %dx.types.CBufRet.f32 %544, 1
  %547 = fsub fast float %224, %545
  %548 = fsub fast float %225, %546
  %549 = fmul fast float %547, %547
  %550 = fmul fast float %548, %548
  %551 = fadd fast float %549, %550
  %552 = uitofp i32 %540 to float
  %553 = fmul fast float %552, %552
  %554 = fcmp fast ogt float %551, %553
  br i1 %554, label %561, label %555, !dx.controlflow.hints !53

; <label>:555                                     ; preds = %543
  %556 = call float @dx.op.unary.f32(i32 24, float %551)  ; Sqrt(value)
  %557 = fsub fast float %552, %556
  %558 = fmul fast float %557, 0x3F75555560000000
  %559 = call float @dx.op.unary.f32(i32 7, float %558)  ; Saturate(value)
  %560 = call float @dx.op.binary.f32(i32 36, float %559, float %538)  ; FMin(a,b)
  br label %561

; <label>:561                                     ; preds = %555, %543, %526, %519
  %562 = phi float [ 1.000000e+00, %519 ], [ %560, %555 ], [ %538, %526 ], [ 0.000000e+00, %543 ]
  %563 = fcmp fast ogt float %562, 0.000000e+00
  br i1 %563, label %564, label %637, !dx.controlflow.hints !54

; <label>:564                                     ; preds = %561
  %565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %566 = extractvalue %dx.types.ResRet.i32 %565, 0
  %567 = extractvalue %dx.types.ResRet.i32 %565, 1
  %568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %569 = extractvalue %dx.types.ResRet.i32 %568, 0
  %570 = extractvalue %dx.types.ResRet.i32 %568, 1
  %571 = extractvalue %dx.types.ResRet.i32 %568, 2
  %572 = extractvalue %dx.types.ResRet.i32 %568, 3
  %573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %574 = extractvalue %dx.types.ResRet.i32 %573, 0
  %575 = extractvalue %dx.types.ResRet.i32 %573, 1
  %576 = extractvalue %dx.types.ResRet.i32 %573, 2
  %577 = extractvalue %dx.types.ResRet.i32 %573, 3
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.i32 %578, 0
  %580 = extractvalue %dx.types.ResRet.i32 %578, 1
  %581 = extractvalue %dx.types.ResRet.i32 %578, 2
  %582 = extractvalue %dx.types.ResRet.i32 %578, 3
  %583 = and i32 %579, 65535
  %584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %583)  ; LegacyF16ToF32(value)
  %585 = lshr i32 %579, 16
  %586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %585)  ; LegacyF16ToF32(value)
  %587 = and i32 %580, 65535
  %588 = call float @dx.op.legacyF16ToF32(i32 131, i32 %587)  ; LegacyF16ToF32(value)
  %589 = lshr i32 %580, 16
  %590 = call float @dx.op.legacyF16ToF32(i32 131, i32 %589)  ; LegacyF16ToF32(value)
  %591 = and i32 %581, 65535
  %592 = call float @dx.op.legacyF16ToF32(i32 131, i32 %591)  ; LegacyF16ToF32(value)
  %593 = lshr i32 %581, 16
  %594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %593)  ; LegacyF16ToF32(value)
  %595 = and i32 %582, 65535
  %596 = call float @dx.op.legacyF16ToF32(i32 131, i32 %595)  ; LegacyF16ToF32(value)
  %597 = lshr i32 %582, 16
  %598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %597)  ; LegacyF16ToF32(value)
  %599 = and i32 %574, 65535
  %600 = call float @dx.op.legacyF16ToF32(i32 131, i32 %599)  ; LegacyF16ToF32(value)
  %601 = lshr i32 %574, 16
  %602 = call float @dx.op.legacyF16ToF32(i32 131, i32 %601)  ; LegacyF16ToF32(value)
  %603 = and i32 %575, 65535
  %604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %603)  ; LegacyF16ToF32(value)
  %605 = lshr i32 %575, 16
  %606 = call float @dx.op.legacyF16ToF32(i32 131, i32 %605)  ; LegacyF16ToF32(value)
  %607 = and i32 %576, 65535
  %608 = call float @dx.op.legacyF16ToF32(i32 131, i32 %607)  ; LegacyF16ToF32(value)
  %609 = lshr i32 %576, 16
  %610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %609)  ; LegacyF16ToF32(value)
  %611 = and i32 %577, 65535
  %612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %611)  ; LegacyF16ToF32(value)
  %613 = lshr i32 %577, 16
  %614 = call float @dx.op.legacyF16ToF32(i32 131, i32 %613)  ; LegacyF16ToF32(value)
  %615 = and i32 %569, 65535
  %616 = call float @dx.op.legacyF16ToF32(i32 131, i32 %615)  ; LegacyF16ToF32(value)
  %617 = lshr i32 %569, 16
  %618 = call float @dx.op.legacyF16ToF32(i32 131, i32 %617)  ; LegacyF16ToF32(value)
  %619 = and i32 %570, 65535
  %620 = call float @dx.op.legacyF16ToF32(i32 131, i32 %619)  ; LegacyF16ToF32(value)
  %621 = lshr i32 %570, 16
  %622 = call float @dx.op.legacyF16ToF32(i32 131, i32 %621)  ; LegacyF16ToF32(value)
  %623 = and i32 %571, 65535
  %624 = call float @dx.op.legacyF16ToF32(i32 131, i32 %623)  ; LegacyF16ToF32(value)
  %625 = lshr i32 %571, 16
  %626 = call float @dx.op.legacyF16ToF32(i32 131, i32 %625)  ; LegacyF16ToF32(value)
  %627 = and i32 %572, 65535
  %628 = call float @dx.op.legacyF16ToF32(i32 131, i32 %627)  ; LegacyF16ToF32(value)
  %629 = lshr i32 %572, 16
  %630 = call float @dx.op.legacyF16ToF32(i32 131, i32 %629)  ; LegacyF16ToF32(value)
  %631 = and i32 %566, 65535
  %632 = call float @dx.op.legacyF16ToF32(i32 131, i32 %631)  ; LegacyF16ToF32(value)
  %633 = lshr i32 %566, 16
  %634 = call float @dx.op.legacyF16ToF32(i32 131, i32 %633)  ; LegacyF16ToF32(value)
  %635 = and i32 %567, 65535
  %636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %635)  ; LegacyF16ToF32(value)
  br label %637

; <label>:637                                     ; preds = %564, %561
  %638 = phi float [ %636, %564 ], [ 0.000000e+00, %561 ]
  %639 = phi float [ %634, %564 ], [ 0.000000e+00, %561 ]
  %640 = phi float [ %632, %564 ], [ 0.000000e+00, %561 ]
  %641 = phi float [ %630, %564 ], [ 0.000000e+00, %561 ]
  %642 = phi float [ %628, %564 ], [ 0.000000e+00, %561 ]
  %643 = phi float [ %626, %564 ], [ 0.000000e+00, %561 ]
  %644 = phi float [ %624, %564 ], [ 0.000000e+00, %561 ]
  %645 = phi float [ %622, %564 ], [ 0.000000e+00, %561 ]
  %646 = phi float [ %620, %564 ], [ 0.000000e+00, %561 ]
  %647 = phi float [ %618, %564 ], [ 0.000000e+00, %561 ]
  %648 = phi float [ %616, %564 ], [ 0.000000e+00, %561 ]
  %649 = phi float [ %614, %564 ], [ 0.000000e+00, %561 ]
  %650 = phi float [ %612, %564 ], [ 0.000000e+00, %561 ]
  %651 = phi float [ %610, %564 ], [ 0.000000e+00, %561 ]
  %652 = phi float [ %608, %564 ], [ 0.000000e+00, %561 ]
  %653 = phi float [ %606, %564 ], [ 0.000000e+00, %561 ]
  %654 = phi float [ %604, %564 ], [ 0.000000e+00, %561 ]
  %655 = phi float [ %602, %564 ], [ 0.000000e+00, %561 ]
  %656 = phi float [ %600, %564 ], [ 0.000000e+00, %561 ]
  %657 = phi float [ %598, %564 ], [ 0.000000e+00, %561 ]
  %658 = phi float [ %596, %564 ], [ 0.000000e+00, %561 ]
  %659 = phi float [ %594, %564 ], [ 0.000000e+00, %561 ]
  %660 = phi float [ %592, %564 ], [ 0.000000e+00, %561 ]
  %661 = phi float [ %590, %564 ], [ 0.000000e+00, %561 ]
  %662 = phi float [ %588, %564 ], [ 0.000000e+00, %561 ]
  %663 = phi float [ %586, %564 ], [ 0.000000e+00, %561 ]
  %664 = phi float [ %584, %564 ], [ 0.000000e+00, %561 ]
  %665 = fcmp fast olt float %562, 1.000000e+00
  br i1 %665, label %666, label %1326, !dx.controlflow.hints !55

; <label>:666                                     ; preds = %637
  %667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %668 = extractvalue %dx.types.CBufRet.f32 %667, 0
  %669 = extractvalue %dx.types.CBufRet.f32 %667, 1
  %670 = fsub fast float %224, %668
  %671 = fsub fast float %225, %669
  %672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %673 = extractvalue %dx.types.CBufRet.f32 %672, 0
  %674 = extractvalue %dx.types.CBufRet.f32 %672, 1
  %675 = fmul fast float %670, %673
  %676 = fmul fast float %671, %674
  %677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %678 = extractvalue %dx.types.CBufRet.f32 %677, 0
  %679 = fmul fast float %678, %675
  %680 = extractvalue %dx.types.CBufRet.f32 %677, 1
  %681 = fadd fast float %679, %680
  %682 = extractvalue %dx.types.CBufRet.f32 %677, 2
  %683 = fmul fast float %682, %676
  %684 = extractvalue %dx.types.CBufRet.f32 %677, 3
  %685 = fadd fast float %683, %684
  %686 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %23, float %681, float %685, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %687 = extractvalue %dx.types.ResRet.f32 %686, 0
  %688 = extractvalue %dx.types.ResRet.f32 %686, 1
  %689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %690 = extractvalue %dx.types.CBufRet.f32 %689, 1
  %691 = extractvalue %dx.types.CBufRet.f32 %689, 0
  %692 = fsub fast float %690, %691
  %693 = fmul fast float %692, %687
  %694 = fadd fast float %693, %691
  %695 = extractvalue %dx.types.CBufRet.f32 %689, 3
  %696 = extractvalue %dx.types.CBufRet.f32 %689, 2
  %697 = fsub fast float %695, %696
  %698 = fmul fast float %697, %688
  %699 = fadd fast float %698, %696
  %700 = fsub fast float %226, %694
  %701 = fsub fast float %699, %694
  %702 = fdiv fast float %700, %701
  %703 = call float @dx.op.unary.f32(i32 7, float %702)  ; Saturate(value)
  %704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %705 = extractvalue %dx.types.CBufRet.f32 %704, 0
  %706 = fmul fast float %705, %703
  %707 = extractvalue %dx.types.CBufRet.f32 %704, 1
  %708 = fadd fast float %706, %707
  %709 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %23, float %681, float %685, float %708, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %710 = extractvalue %dx.types.ResRet.f32 %709, 0
  %711 = extractvalue %dx.types.ResRet.f32 %709, 1
  %712 = extractvalue %dx.types.ResRet.f32 %709, 2
  %713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %714 = extractvalue %dx.types.CBufRet.f32 %713, 0
  %715 = extractvalue %dx.types.CBufRet.f32 %713, 1
  %716 = extractvalue %dx.types.CBufRet.f32 %713, 2
  %717 = fmul fast float %714, %710
  %718 = fmul fast float %715, %711
  %719 = fmul fast float %716, %712
  %720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %721 = extractvalue %dx.types.CBufRet.f32 %720, 0
  %722 = extractvalue %dx.types.CBufRet.f32 %720, 1
  %723 = extractvalue %dx.types.CBufRet.f32 %720, 2
  %724 = fadd fast float %717, %721
  %725 = fadd fast float %718, %722
  %726 = fadd fast float %719, %723
  %727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %728 = extractvalue %dx.types.CBufRet.f32 %727, 0
  %729 = fmul fast float %728, %675
  %730 = extractvalue %dx.types.CBufRet.f32 %727, 1
  %731 = fadd fast float %729, %730
  %732 = extractvalue %dx.types.CBufRet.f32 %727, 2
  %733 = fmul fast float %732, %676
  %734 = extractvalue %dx.types.CBufRet.f32 %727, 3
  %735 = fadd fast float %733, %734
  %736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %737 = extractvalue %dx.types.CBufRet.f32 %736, 0
  %738 = extractvalue %dx.types.CBufRet.f32 %736, 1
  %739 = extractvalue %dx.types.CBufRet.f32 %736, 2
  %740 = extractvalue %dx.types.CBufRet.f32 %736, 3
  %741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %742 = extractvalue %dx.types.CBufRet.f32 %741, 0
  %743 = extractvalue %dx.types.CBufRet.f32 %741, 1
  %744 = extractvalue %dx.types.CBufRet.f32 %741, 2
  %745 = extractvalue %dx.types.CBufRet.f32 %741, 3
  %746 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %23, float %731, float %735, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %747 = extractvalue %dx.types.ResRet.f32 %746, 0
  %748 = extractvalue %dx.types.ResRet.f32 %746, 1
  %749 = extractvalue %dx.types.ResRet.f32 %746, 2
  %750 = extractvalue %dx.types.ResRet.f32 %746, 3
  %751 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %23, float %731, float %735, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %752 = extractvalue %dx.types.ResRet.f32 %751, 0
  %753 = extractvalue %dx.types.ResRet.f32 %751, 1
  %754 = extractvalue %dx.types.ResRet.f32 %751, 2
  %755 = extractvalue %dx.types.ResRet.f32 %751, 3
  %756 = fmul fast float %747, %724
  %757 = fmul fast float %752, %724
  %758 = fmul fast float %754, %724
  %759 = fmul fast float %750, %724
  %760 = fadd fast float %756, %737
  %761 = fadd fast float %757, %738
  %762 = fadd fast float %758, %739
  %763 = fadd fast float %759, %740
  %764 = fmul fast float %748, %724
  %765 = fmul fast float %753, %724
  %766 = fadd fast float %764, %742
  %767 = fadd fast float %765, %743
  %768 = fmul fast float %749, %724
  %769 = fmul fast float %755, %724
  %770 = fadd fast float %768, %744
  %771 = fadd fast float %769, %745
  %772 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %23, float %731, float %735, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %773 = extractvalue %dx.types.ResRet.f32 %772, 0
  %774 = extractvalue %dx.types.ResRet.f32 %772, 1
  %775 = extractvalue %dx.types.ResRet.f32 %772, 2
  %776 = extractvalue %dx.types.ResRet.f32 %772, 3
  %777 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %23, float %731, float %735, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %778 = extractvalue %dx.types.ResRet.f32 %777, 0
  %779 = extractvalue %dx.types.ResRet.f32 %777, 1
  %780 = extractvalue %dx.types.ResRet.f32 %777, 2
  %781 = extractvalue %dx.types.ResRet.f32 %777, 3
  %782 = fmul fast float %773, %725
  %783 = fmul fast float %778, %725
  %784 = fmul fast float %780, %725
  %785 = fmul fast float %776, %725
  %786 = fadd fast float %760, %782
  %787 = fadd fast float %761, %783
  %788 = fadd fast float %762, %784
  %789 = fadd fast float %763, %785
  %790 = fmul fast float %774, %725
  %791 = fmul fast float %779, %725
  %792 = fadd fast float %766, %790
  %793 = fadd fast float %767, %791
  %794 = fmul fast float %775, %725
  %795 = fmul fast float %781, %725
  %796 = fadd fast float %770, %794
  %797 = fadd fast float %771, %795
  %798 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %23, float %731, float %735, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %799 = extractvalue %dx.types.ResRet.f32 %798, 0
  %800 = extractvalue %dx.types.ResRet.f32 %798, 1
  %801 = extractvalue %dx.types.ResRet.f32 %798, 2
  %802 = extractvalue %dx.types.ResRet.f32 %798, 3
  %803 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %23, float %731, float %735, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %804 = extractvalue %dx.types.ResRet.f32 %803, 0
  %805 = extractvalue %dx.types.ResRet.f32 %803, 1
  %806 = extractvalue %dx.types.ResRet.f32 %803, 2
  %807 = extractvalue %dx.types.ResRet.f32 %803, 3
  %808 = fmul fast float %799, %726
  %809 = fmul fast float %804, %726
  %810 = fmul fast float %806, %726
  %811 = fmul fast float %802, %726
  %812 = fadd fast float %786, %808
  %813 = fadd fast float %787, %809
  %814 = fadd fast float %788, %810
  %815 = fadd fast float %789, %811
  %816 = fmul fast float %800, %726
  %817 = fmul fast float %805, %726
  %818 = fadd fast float %792, %816
  %819 = fadd fast float %793, %817
  %820 = fmul fast float %801, %726
  %821 = fmul fast float %807, %726
  %822 = fadd fast float %796, %820
  %823 = fadd fast float %797, %821
  %824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %825 = extractvalue %dx.types.CBufRet.f32 %824, 0
  %826 = fsub fast float %224, %825
  %827 = fsub fast float %668, %224
  %828 = call float @dx.op.binary.f32(i32 35, float %827, float %826)  ; FMax(a,b)
  %829 = extractvalue %dx.types.CBufRet.f32 %824, 1
  %830 = fsub fast float %225, %829
  %831 = fsub fast float %669, %225
  %832 = call float @dx.op.binary.f32(i32 35, float %831, float %830)  ; FMax(a,b)
  %833 = call float @dx.op.binary.f32(i32 35, float %828, float %832)  ; FMax(a,b)
  %834 = extractvalue %dx.types.CBufRet.f32 %672, 3
  %835 = fmul fast float %834, %833
  %836 = call float @dx.op.unary.f32(i32 7, float %835)  ; Saturate(value)
  %837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %838 = extractvalue %dx.types.CBufRet.f32 %837, 0
  %839 = extractvalue %dx.types.CBufRet.f32 %837, 1
  %840 = extractvalue %dx.types.CBufRet.f32 %837, 2
  %841 = extractvalue %dx.types.CBufRet.f32 %837, 3
  %842 = fsub fast float %838, %812
  %843 = fsub fast float %839, %813
  %844 = fsub fast float %840, %814
  %845 = fsub fast float %841, %815
  %846 = fmul fast float %842, %836
  %847 = fmul fast float %843, %836
  %848 = fmul fast float %844, %836
  %849 = fmul fast float %845, %836
  %850 = fadd fast float %846, %812
  %851 = fadd fast float %847, %813
  %852 = fadd fast float %848, %814
  %853 = fadd fast float %849, %815
  %854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %855 = extractvalue %dx.types.CBufRet.f32 %854, 0
  %856 = extractvalue %dx.types.CBufRet.f32 %854, 1
  %857 = fsub fast float %855, %818
  %858 = fsub fast float %856, %819
  %859 = fmul fast float %857, %836
  %860 = fmul fast float %858, %836
  %861 = fadd fast float %859, %818
  %862 = fadd fast float %860, %819
  %863 = extractvalue %dx.types.CBufRet.f32 %854, 2
  %864 = extractvalue %dx.types.CBufRet.f32 %854, 3
  %865 = fsub fast float %863, %822
  %866 = fsub fast float %864, %823
  %867 = fmul fast float %865, %836
  %868 = fmul fast float %866, %836
  %869 = fadd fast float %867, %822
  %870 = fadd fast float %868, %823
  %871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %872 = extractvalue %dx.types.CBufRet.f32 %871, 0
  %873 = fmul fast float %872, %850
  %874 = fmul fast float %872, %851
  %875 = fmul fast float %872, %852
  %876 = fmul fast float %872, %853
  %877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %878 = extractvalue %dx.types.CBufRet.f32 %877, 0
  %879 = fmul fast float %878, %861
  %880 = fmul fast float %878, %862
  %881 = fadd fast float %879, %873
  %882 = fadd fast float %880, %875
  %883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %884 = extractvalue %dx.types.CBufRet.f32 %883, 0
  %885 = fmul fast float %884, %869
  %886 = fmul fast float %884, %870
  %887 = fadd fast float %881, %885
  %888 = fadd fast float %882, %886
  %889 = extractvalue %dx.types.CBufRet.f32 %871, 1
  %890 = fmul fast float %889, %850
  %891 = fmul fast float %889, %851
  %892 = fmul fast float %889, %852
  %893 = fmul fast float %889, %853
  %894 = extractvalue %dx.types.CBufRet.f32 %877, 1
  %895 = fmul fast float %894, %861
  %896 = fmul fast float %894, %862
  %897 = fadd fast float %895, %890
  %898 = fadd fast float %896, %892
  %899 = extractvalue %dx.types.CBufRet.f32 %883, 1
  %900 = fmul fast float %899, %869
  %901 = fmul fast float %899, %870
  %902 = fadd fast float %897, %900
  %903 = fadd fast float %898, %901
  %904 = extractvalue %dx.types.CBufRet.f32 %871, 2
  %905 = fmul fast float %904, %850
  %906 = fmul fast float %904, %851
  %907 = fmul fast float %904, %852
  %908 = fmul fast float %904, %853
  %909 = extractvalue %dx.types.CBufRet.f32 %877, 2
  %910 = fmul fast float %909, %861
  %911 = fmul fast float %909, %862
  %912 = fadd fast float %910, %905
  %913 = fadd fast float %911, %907
  %914 = extractvalue %dx.types.CBufRet.f32 %883, 2
  %915 = fmul fast float %914, %869
  %916 = fmul fast float %914, %870
  %917 = fadd fast float %912, %915
  %918 = fadd fast float %913, %916
  %919 = fmul fast float %906, %906
  %920 = fmul fast float %918, %918
  %921 = fmul fast float %908, %908
  %922 = fadd fast float %921, %919
  %923 = fadd fast float %922, %920
  %924 = call float @dx.op.unary.f32(i32 24, float %923)  ; Sqrt(value)
  %925 = fcmp fast ugt float %924, 0.000000e+00
  br i1 %925, label %926, label %941, !dx.controlflow.hints !56

; <label>:926                                     ; preds = %666
  %927 = fsub fast float -0.000000e+00, %908
  %928 = fdiv fast float %927, %924
  %929 = fsub fast float -0.000000e+00, %906
  %930 = fdiv fast float %929, %924
  %931 = fdiv fast float %918, %924
  %932 = fmul fast float %917, 0x3FE279A760000000
  %933 = fmul fast float %930, %906
  %934 = fmul fast float %931, %918
  %935 = fmul fast float %928, %908
  %936 = fadd fast float %933, %935
  %937 = fsub fast float %936, %934
  %938 = call float @dx.op.unary.f32(i32 6, float %937)  ; FAbs(value)
  %939 = fadd fast float %938, 0x3DDB7CDFE0000000
  %940 = fdiv fast float %932, %939
  br label %941

; <label>:941                                     ; preds = %926, %666
  %942 = phi float [ %940, %926 ], [ 1.000000e+00, %666 ]
  %943 = fmul fast float %891, %891
  %944 = fmul fast float %903, %903
  %945 = fmul fast float %893, %893
  %946 = fadd fast float %945, %943
  %947 = fadd fast float %946, %944
  %948 = call float @dx.op.unary.f32(i32 24, float %947)  ; Sqrt(value)
  %949 = fcmp fast ugt float %948, 0.000000e+00
  br i1 %949, label %950, label %965, !dx.controlflow.hints !56

; <label>:950                                     ; preds = %941
  %951 = fsub fast float -0.000000e+00, %893
  %952 = fdiv fast float %951, %948
  %953 = fsub fast float -0.000000e+00, %891
  %954 = fdiv fast float %953, %948
  %955 = fdiv fast float %903, %948
  %956 = fmul fast float %902, 0x3FE279A760000000
  %957 = fmul fast float %954, %891
  %958 = fmul fast float %955, %903
  %959 = fmul fast float %952, %893
  %960 = fadd fast float %957, %959
  %961 = fsub fast float %960, %958
  %962 = call float @dx.op.unary.f32(i32 6, float %961)  ; FAbs(value)
  %963 = fadd fast float %962, 0x3DDB7CDFE0000000
  %964 = fdiv fast float %956, %963
  br label %965

; <label>:965                                     ; preds = %950, %941
  %966 = phi float [ %964, %950 ], [ 1.000000e+00, %941 ]
  %967 = call float @dx.op.binary.f32(i32 36, float %966, float %942)  ; FMin(a,b)
  %968 = fmul fast float %874, %874
  %969 = fmul fast float %888, %888
  %970 = fmul fast float %876, %876
  %971 = fadd fast float %970, %968
  %972 = fadd fast float %971, %969
  %973 = call float @dx.op.unary.f32(i32 24, float %972)  ; Sqrt(value)
  %974 = fcmp fast ugt float %973, 0.000000e+00
  br i1 %974, label %975, label %990, !dx.controlflow.hints !56

; <label>:975                                     ; preds = %965
  %976 = fsub fast float -0.000000e+00, %876
  %977 = fdiv fast float %976, %973
  %978 = fsub fast float -0.000000e+00, %874
  %979 = fdiv fast float %978, %973
  %980 = fdiv fast float %888, %973
  %981 = fmul fast float %887, 0x3FE279A760000000
  %982 = fmul fast float %979, %874
  %983 = fmul fast float %980, %888
  %984 = fmul fast float %977, %876
  %985 = fadd fast float %982, %984
  %986 = fsub fast float %985, %983
  %987 = call float @dx.op.unary.f32(i32 6, float %986)  ; FAbs(value)
  %988 = fadd fast float %987, 0x3DDB7CDFE0000000
  %989 = fdiv fast float %981, %988
  br label %990

; <label>:990                                     ; preds = %975, %965
  %991 = phi float [ %989, %975 ], [ 1.000000e+00, %965 ]
  %992 = call float @dx.op.binary.f32(i32 36, float %991, float %967)  ; FMin(a,b)
  %993 = call float @dx.op.unary.f32(i32 7, float %992)  ; Saturate(value)
  %994 = fcmp fast olt float %993, 1.000000e+00
  br i1 %994, label %995, label %1005, !dx.controlflow.hints !57

; <label>:995                                     ; preds = %990
  %996 = fmul fast float %993, %874
  %997 = fmul fast float %993, %888
  %998 = fmul fast float %993, %876
  %999 = fmul fast float %993, %891
  %1000 = fmul fast float %993, %903
  %1001 = fmul fast float %993, %893
  %1002 = fmul fast float %993, %906
  %1003 = fmul fast float %993, %918
  %1004 = fmul fast float %993, %908
  br label %1005

; <label>:1005                                    ; preds = %995, %990
  %1006 = phi float [ %1002, %995 ], [ %906, %990 ]
  %1007 = phi float [ %1003, %995 ], [ %918, %990 ]
  %1008 = phi float [ %1004, %995 ], [ %908, %990 ]
  %1009 = phi float [ %999, %995 ], [ %891, %990 ]
  %1010 = phi float [ %1000, %995 ], [ %903, %990 ]
  %1011 = phi float [ %1001, %995 ], [ %893, %990 ]
  %1012 = phi float [ %996, %995 ], [ %874, %990 ]
  %1013 = phi float [ %997, %995 ], [ %888, %990 ]
  %1014 = phi float [ %998, %995 ], [ %876, %990 ]
  %1015 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %887)  ; FMax(a,b)
  %1016 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %902)  ; FMax(a,b)
  %1017 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %917)  ; FMax(a,b)
  %1018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1019 = extractvalue %dx.types.CBufRet.f32 %1018, 0
  %1020 = fcmp fast ogt float %1019, 0.000000e+00
  %1021 = fcmp fast oge float %675, 0.000000e+00
  %1022 = and i1 %1021, %1020
  %1023 = fcmp fast ole float %675, 1.000000e+00
  %1024 = and i1 %1023, %1022
  %1025 = fcmp fast oge float %676, 0.000000e+00
  %1026 = and i1 %1025, %1024
  %1027 = fcmp fast ole float %676, 1.000000e+00
  %1028 = and i1 %1027, %1026
  br i1 %1028, label %1029, label %1174, !dx.controlflow.hints !58

; <label>:1029                                    ; preds = %1005
  %1030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1031 = extractvalue %dx.types.CBufRet.f32 %1030, 2
  %1032 = extractvalue %dx.types.CBufRet.f32 %1030, 3
  %1033 = fmul fast float %1031, %675
  %1034 = fmul fast float %1032, %676
  %1035 = call float @dx.op.unary.f32(i32 27, float %1033)  ; Round_ni(value)
  %1036 = call float @dx.op.unary.f32(i32 27, float %1034)  ; Round_ni(value)
  %1037 = fptosi float %1035 to i32
  %1038 = fptosi float %1036 to i32
  %1039 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %1037, i32 %1038, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1040 = extractvalue %dx.types.ResRet.i32 %1039, 0
  %1041 = and i32 %1040, 65535
  %1042 = lshr i32 %1040, 16
  %1043 = icmp eq i32 %1041, 65535
  br i1 %1043, label %1080, label %1044, !dx.controlflow.hints !59

; <label>:1044                                    ; preds = %1029
  %1045 = extractvalue %dx.types.CBufRet.f32 %1018, 1
  %1046 = extractvalue %dx.types.CBufRet.f32 %1030, 0
  %1047 = extractvalue %dx.types.CBufRet.f32 %1030, 1
  %1048 = fmul fast float %1046, %675
  %1049 = fmul fast float %1047, %676
  %1050 = fmul fast float %1048, 1.250000e-01
  %1051 = fmul fast float %1049, 1.250000e-01
  %1052 = call float @dx.op.unary.f32(i32 27, float %1050)  ; Round_ni(value)
  %1053 = call float @dx.op.unary.f32(i32 27, float %1051)  ; Round_ni(value)
  %1054 = fmul fast float %1052, 8.000000e+00
  %1055 = fmul fast float %1053, 8.000000e+00
  %1056 = and i32 %1040, 255
  %1057 = lshr i32 %1040, 8
  %1058 = and i32 %1057, 255
  %1059 = mul nuw nsw i32 %1056, 9
  %1060 = uitofp i32 %1059 to float
  %1061 = mul nuw nsw i32 %1058, 9
  %1062 = uitofp i32 %1061 to float
  %1063 = fadd fast float %1060, 5.000000e-01
  %1064 = fadd fast float %1063, %1048
  %1065 = fsub fast float %1064, %1054
  %1066 = fadd fast float %1062, 5.000000e-01
  %1067 = fadd fast float %1066, %1049
  %1068 = fsub fast float %1067, %1055
  %1069 = fdiv fast float %1065, %1019
  %1070 = fdiv fast float %1068, %1045
  %1071 = fmul fast float %703, 4.375000e-01
  %1072 = fadd fast float %1071, 3.125000e-02
  %1073 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %23, float %1069, float %1070, float %1072, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1074 = extractvalue %dx.types.ResRet.f32 %1073, 0
  %1075 = extractvalue %dx.types.ResRet.f32 %1073, 1
  %1076 = extractvalue %dx.types.ResRet.f32 %1073, 2
  %1077 = fadd fast float %1074, %1015
  %1078 = fadd fast float %1075, %1016
  %1079 = fadd fast float %1076, %1017
  br label %1080

; <label>:1080                                    ; preds = %1044, %1029
  %1081 = phi float [ %1079, %1044 ], [ %1017, %1029 ]
  %1082 = phi float [ %1078, %1044 ], [ %1016, %1029 ]
  %1083 = phi float [ %1077, %1044 ], [ %1015, %1029 ]
  %1084 = icmp eq i32 %1042, 65535
  br i1 %1084, label %1174, label %1085, !dx.controlflow.hints !60

; <label>:1085                                    ; preds = %1080
  %1086 = extractvalue %dx.types.CBufRet.f32 %1018, 1
  %1087 = extractvalue %dx.types.CBufRet.f32 %1030, 0
  %1088 = extractvalue %dx.types.CBufRet.f32 %1030, 1
  %1089 = fmul fast float %1087, %675
  %1090 = fmul fast float %1088, %676
  %1091 = fmul fast float %1089, 1.250000e-01
  %1092 = fmul fast float %1090, 1.250000e-01
  %1093 = call float @dx.op.unary.f32(i32 27, float %1091)  ; Round_ni(value)
  %1094 = call float @dx.op.unary.f32(i32 27, float %1092)  ; Round_ni(value)
  %1095 = fmul fast float %1093, 8.000000e+00
  %1096 = fmul fast float %1094, 8.000000e+00
  %1097 = fsub fast float %1089, %1095
  %1098 = fsub fast float %1090, %1096
  %1099 = fadd fast float %1097, 5.000000e-01
  %1100 = fadd fast float %1098, 5.000000e-01
  %1101 = and i32 %1042, 255
  %1102 = lshr i32 %1040, 24
  %1103 = mul nuw nsw i32 %1101, 9
  %1104 = uitofp i32 %1103 to float
  %1105 = mul nuw nsw i32 %1102, 9
  %1106 = uitofp i32 %1105 to float
  %1107 = fadd fast float %1099, %1104
  %1108 = fadd fast float %1100, %1106
  %1109 = fdiv fast float %1107, %1019
  %1110 = fdiv fast float %1108, %1086
  %1111 = fmul fast float %703, 4.375000e-01
  %1112 = fadd fast float %1111, 3.125000e-02
  %1113 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %23, float %1109, float %1110, float %1112, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1114 = extractvalue %dx.types.ResRet.f32 %1113, 0
  %1115 = extractvalue %dx.types.ResRet.f32 %1113, 1
  %1116 = extractvalue %dx.types.ResRet.f32 %1113, 2
  %1117 = fadd fast float %1111, 5.312500e-01
  %1118 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %23, float %1109, float %1110, float %1117, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1119 = extractvalue %dx.types.ResRet.f32 %1118, 0
  %1120 = extractvalue %dx.types.ResRet.f32 %1118, 1
  %1121 = extractvalue %dx.types.ResRet.f32 %1118, 2
  %1122 = fmul fast float %1119, 2.000000e+00
  %1123 = fmul fast float %1120, 2.000000e+00
  %1124 = fmul fast float %1121, 2.000000e+00
  %1125 = fadd fast float %1122, -1.000000e+00
  %1126 = fadd fast float %1123, -1.000000e+00
  %1127 = fadd fast float %1124, -1.000000e+00
  %1128 = fmul fast float %1125, %1125
  %1129 = fmul fast float %1126, %1126
  %1130 = fadd fast float %1128, %1129
  %1131 = fmul fast float %1127, %1127
  %1132 = fadd fast float %1130, %1131
  %1133 = call float @dx.op.unary.f32(i32 24, float %1132)  ; Sqrt(value)
  %1134 = fcmp fast ogt float %1133, 0.000000e+00
  br i1 %1134, label %1135, label %1139, !dx.controlflow.hints !61

; <label>:1135                                    ; preds = %1085
  %1136 = fdiv fast float %1125, %1133
  %1137 = fdiv fast float %1126, %1133
  %1138 = fdiv fast float %1127, %1133
  br label %1139

; <label>:1139                                    ; preds = %1135, %1085
  %1140 = phi float [ %1136, %1135 ], [ 0.000000e+00, %1085 ]
  %1141 = phi float [ %1137, %1135 ], [ 0.000000e+00, %1085 ]
  %1142 = phi float [ %1138, %1135 ], [ 0.000000e+00, %1085 ]
  %1143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1144 = extractvalue %dx.types.CBufRet.f32 %1143, 0
  %1145 = extractvalue %dx.types.CBufRet.f32 %1143, 1
  %1146 = fsub fast float %224, %1144
  %1147 = fsub fast float %225, %1145
  %1148 = fmul fast float %1146, %1146
  %1149 = fmul fast float %1147, %1147
  %1150 = fadd fast float %1148, %1149
  %1151 = call float @dx.op.unary.f32(i32 24, float %1150)  ; Sqrt(value)
  %1152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1153 = extractvalue %dx.types.CBufRet.f32 %1152, 0
  %1154 = extractvalue %dx.types.CBufRet.f32 %1152, 1
  %1155 = fsub fast float %1151, %1153
  %1156 = fdiv fast float %1155, %1154
  %1157 = call float @dx.op.unary.f32(i32 7, float %1156)  ; Saturate(value)
  %1158 = fmul fast float %1157, 2.000000e+00
  %1159 = fsub fast float 3.000000e+00, %1158
  %1160 = fmul fast float %1157, %1157
  %1161 = fmul fast float %1160, %1159
  %1162 = call float @dx.op.dot3.f32(i32 55, float %1140, float %1141, float %1142, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1163 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1162)  ; FMax(a,b)
  %1164 = fmul fast float %1163, 0x400C5BF8A0000000
  %1165 = fmul fast float %1161, %1114
  %1166 = fmul fast float %1165, %1164
  %1167 = fadd fast float %1166, %1083
  %1168 = fmul fast float %1161, %1115
  %1169 = fmul fast float %1168, %1164
  %1170 = fadd fast float %1169, %1082
  %1171 = fmul fast float %1161, %1116
  %1172 = fmul fast float %1171, %1164
  %1173 = fadd fast float %1172, %1081
  br label %1174

; <label>:1174                                    ; preds = %1139, %1080, %1005
  %1175 = phi float [ %1173, %1139 ], [ %1081, %1080 ], [ %1017, %1005 ]
  %1176 = phi float [ %1170, %1139 ], [ %1082, %1080 ], [ %1016, %1005 ]
  %1177 = phi float [ %1167, %1139 ], [ %1083, %1080 ], [ %1015, %1005 ]
  %1178 = fcmp fast ogt float %226, %699
  %1179 = and i1 %1021, %1178
  %1180 = and i1 %1023, %1179
  %1181 = and i1 %1025, %1180
  %1182 = and i1 %1027, %1181
  br i1 %1182, label %1183, label %1240, !dx.controlflow.hints !62

; <label>:1183                                    ; preds = %1174
  %1184 = fmul fast float %701, 0x3FC24924A0000000
  %1185 = fsub fast float %226, %699
  %1186 = fdiv fast float %1185, %1184
  %1187 = call float @dx.op.unary.f32(i32 7, float %1186)  ; Saturate(value)
  %1188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1189 = extractvalue %dx.types.CBufRet.f32 %1188, 0
  %1190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1191 = extractvalue %dx.types.CBufRet.f32 %1190, 0
  %1192 = extractvalue %dx.types.CBufRet.f32 %1190, 1
  %1193 = extractvalue %dx.types.CBufRet.f32 %1190, 2
  %1194 = fsub fast float %1189, %1177
  %1195 = fsub fast float %1191, %1012
  %1196 = fsub fast float %1192, %1013
  %1197 = fsub fast float %1193, %1014
  %1198 = fmul fast float %1194, %1187
  %1199 = fmul fast float %1195, %1187
  %1200 = fmul fast float %1196, %1187
  %1201 = fmul fast float %1197, %1187
  %1202 = fadd fast float %1198, %1177
  %1203 = fadd fast float %1199, %1012
  %1204 = fadd fast float %1200, %1013
  %1205 = fadd fast float %1201, %1014
  %1206 = extractvalue %dx.types.CBufRet.f32 %1188, 1
  %1207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1208 = extractvalue %dx.types.CBufRet.f32 %1207, 0
  %1209 = extractvalue %dx.types.CBufRet.f32 %1207, 1
  %1210 = extractvalue %dx.types.CBufRet.f32 %1207, 2
  %1211 = fsub fast float %1206, %1176
  %1212 = fsub fast float %1208, %1009
  %1213 = fsub fast float %1209, %1010
  %1214 = fsub fast float %1210, %1011
  %1215 = fmul fast float %1211, %1187
  %1216 = fmul fast float %1212, %1187
  %1217 = fmul fast float %1213, %1187
  %1218 = fmul fast float %1214, %1187
  %1219 = fadd fast float %1215, %1176
  %1220 = fadd fast float %1216, %1009
  %1221 = fadd fast float %1217, %1010
  %1222 = fadd fast float %1218, %1011
  %1223 = extractvalue %dx.types.CBufRet.f32 %1188, 2
  %1224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1225 = extractvalue %dx.types.CBufRet.f32 %1224, 0
  %1226 = extractvalue %dx.types.CBufRet.f32 %1224, 1
  %1227 = extractvalue %dx.types.CBufRet.f32 %1224, 2
  %1228 = fsub fast float %1223, %1175
  %1229 = fsub fast float %1225, %1006
  %1230 = fsub fast float %1226, %1007
  %1231 = fsub fast float %1227, %1008
  %1232 = fmul fast float %1228, %1187
  %1233 = fmul fast float %1229, %1187
  %1234 = fmul fast float %1230, %1187
  %1235 = fmul fast float %1231, %1187
  %1236 = fadd fast float %1232, %1175
  %1237 = fadd fast float %1233, %1006
  %1238 = fadd fast float %1234, %1007
  %1239 = fadd fast float %1235, %1008
  br label %1240

; <label>:1240                                    ; preds = %1183, %1174
  %1241 = phi float [ %1236, %1183 ], [ %1175, %1174 ]
  %1242 = phi float [ %1237, %1183 ], [ %1006, %1174 ]
  %1243 = phi float [ %1238, %1183 ], [ %1007, %1174 ]
  %1244 = phi float [ %1239, %1183 ], [ %1008, %1174 ]
  %1245 = phi float [ %1219, %1183 ], [ %1176, %1174 ]
  %1246 = phi float [ %1220, %1183 ], [ %1009, %1174 ]
  %1247 = phi float [ %1221, %1183 ], [ %1010, %1174 ]
  %1248 = phi float [ %1222, %1183 ], [ %1011, %1174 ]
  %1249 = phi float [ %1202, %1183 ], [ %1177, %1174 ]
  %1250 = phi float [ %1203, %1183 ], [ %1012, %1174 ]
  %1251 = phi float [ %1204, %1183 ], [ %1013, %1174 ]
  %1252 = phi float [ %1205, %1183 ], [ %1014, %1174 ]
  %1253 = extractvalue %dx.types.CBufRet.f32 %824, 3
  %1254 = fmul fast float %1253, %1249
  %1255 = fmul fast float %1253, %1245
  %1256 = fmul fast float %1253, %1241
  %1257 = fmul fast float %1250, 1.500000e+00
  %1258 = fmul fast float %1257, %1253
  %1259 = fmul fast float %1251, 1.500000e+00
  %1260 = fmul fast float %1259, %1253
  %1261 = fmul fast float %1252, 1.500000e+00
  %1262 = fmul fast float %1261, %1253
  %1263 = fmul fast float %1246, 1.500000e+00
  %1264 = fmul fast float %1263, %1253
  %1265 = fmul fast float %1247, 1.500000e+00
  %1266 = fmul fast float %1265, %1253
  %1267 = fmul fast float %1248, 1.500000e+00
  %1268 = fmul fast float %1267, %1253
  %1269 = fmul fast float %1242, 1.500000e+00
  %1270 = fmul fast float %1269, %1253
  %1271 = fmul fast float %1243, 1.500000e+00
  %1272 = fmul fast float %1271, %1253
  %1273 = fmul fast float %1244, 1.500000e+00
  %1274 = fmul fast float %1273, %1253
  %1275 = fsub fast float %664, %1254
  %1276 = fmul fast float %1275, %562
  %1277 = fadd fast float %1276, %1254
  %1278 = fsub fast float %663, %1258
  %1279 = fmul fast float %1278, %562
  %1280 = fadd fast float %1279, %1258
  %1281 = fsub fast float %662, %1260
  %1282 = fmul fast float %1281, %562
  %1283 = fadd fast float %1282, %1260
  %1284 = fsub fast float %661, %1262
  %1285 = fmul fast float %1284, %562
  %1286 = fadd fast float %1285, %1262
  %1287 = fmul fast float %660, %562
  %1288 = fmul fast float %659, %562
  %1289 = fmul fast float %658, %562
  %1290 = fmul fast float %657, %562
  %1291 = fmul fast float %656, %562
  %1292 = fsub fast float %655, %1255
  %1293 = fmul fast float %1292, %562
  %1294 = fadd fast float %1293, %1255
  %1295 = fsub fast float %654, %1264
  %1296 = fmul fast float %1295, %562
  %1297 = fadd fast float %1296, %1264
  %1298 = fsub fast float %653, %1266
  %1299 = fmul fast float %1298, %562
  %1300 = fadd fast float %1299, %1266
  %1301 = fsub fast float %652, %1268
  %1302 = fmul fast float %1301, %562
  %1303 = fadd fast float %1302, %1268
  %1304 = fmul fast float %651, %562
  %1305 = fmul fast float %650, %562
  %1306 = fmul fast float %649, %562
  %1307 = fmul fast float %648, %562
  %1308 = fmul fast float %647, %562
  %1309 = fsub fast float %646, %1256
  %1310 = fmul fast float %1309, %562
  %1311 = fadd fast float %1310, %1256
  %1312 = fsub fast float %645, %1270
  %1313 = fmul fast float %1312, %562
  %1314 = fadd fast float %1313, %1270
  %1315 = fsub fast float %644, %1272
  %1316 = fmul fast float %1315, %562
  %1317 = fadd fast float %1316, %1272
  %1318 = fsub fast float %643, %1274
  %1319 = fmul fast float %1318, %562
  %1320 = fadd fast float %1319, %1274
  %1321 = fmul fast float %642, %562
  %1322 = fmul fast float %641, %562
  %1323 = fmul fast float %640, %562
  %1324 = fmul fast float %639, %562
  %1325 = fmul fast float %638, %562
  br label %1326

; <label>:1326                                    ; preds = %1240, %637
  %1327 = phi float [ %1325, %1240 ], [ %638, %637 ]
  %1328 = phi float [ %1324, %1240 ], [ %639, %637 ]
  %1329 = phi float [ %1323, %1240 ], [ %640, %637 ]
  %1330 = phi float [ %1322, %1240 ], [ %641, %637 ]
  %1331 = phi float [ %1321, %1240 ], [ %642, %637 ]
  %1332 = phi float [ %1320, %1240 ], [ %643, %637 ]
  %1333 = phi float [ %1317, %1240 ], [ %644, %637 ]
  %1334 = phi float [ %1314, %1240 ], [ %645, %637 ]
  %1335 = phi float [ %1311, %1240 ], [ %646, %637 ]
  %1336 = phi float [ %1308, %1240 ], [ %647, %637 ]
  %1337 = phi float [ %1307, %1240 ], [ %648, %637 ]
  %1338 = phi float [ %1306, %1240 ], [ %649, %637 ]
  %1339 = phi float [ %1305, %1240 ], [ %650, %637 ]
  %1340 = phi float [ %1304, %1240 ], [ %651, %637 ]
  %1341 = phi float [ %1303, %1240 ], [ %652, %637 ]
  %1342 = phi float [ %1300, %1240 ], [ %653, %637 ]
  %1343 = phi float [ %1297, %1240 ], [ %654, %637 ]
  %1344 = phi float [ %1294, %1240 ], [ %655, %637 ]
  %1345 = phi float [ %1291, %1240 ], [ %656, %637 ]
  %1346 = phi float [ %1290, %1240 ], [ %657, %637 ]
  %1347 = phi float [ %1289, %1240 ], [ %658, %637 ]
  %1348 = phi float [ %1288, %1240 ], [ %659, %637 ]
  %1349 = phi float [ %1287, %1240 ], [ %660, %637 ]
  %1350 = phi float [ %1286, %1240 ], [ %661, %637 ]
  %1351 = phi float [ %1283, %1240 ], [ %662, %637 ]
  %1352 = phi float [ %1280, %1240 ], [ %663, %637 ]
  %1353 = phi float [ %1277, %1240 ], [ %664, %637 ]
  %1354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1355 = extractvalue %dx.types.CBufRet.f32 %1354, 2
  %1356 = fmul fast float %1355, %1355
  %1357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1358 = extractvalue %dx.types.CBufRet.f32 %1357, 0
  %1359 = extractvalue %dx.types.CBufRet.f32 %1357, 1
  %1360 = extractvalue %dx.types.CBufRet.f32 %1357, 2
  %1361 = fmul fast float %1353, 0x3FD20DD760000000
  %1362 = fmul fast float %1360, %1351
  %1363 = fmul fast float %1360, %1360
  %1364 = fmul fast float %1363, 0x3FEE471020000000
  %1365 = fadd fast float %1364, 0xBFD42F6020000000
  %1366 = fmul fast float %1365, %1347
  %1367 = fmul fast float %1358, %1350
  %1368 = fmul fast float %1359, %1352
  %1369 = fmul fast float %1360, 0x3FF17B1420000000
  %1370 = fmul fast float %1356, %1346
  %1371 = fmul fast float %1370, %1358
  %1372 = fmul fast float %1371, %1369
  %1373 = fmul fast float %1356, %1348
  %1374 = fmul fast float %1373, %1359
  %1375 = fmul fast float %1374, %1369
  %1376 = fmul fast float %1358, %1358
  %1377 = fmul fast float %1359, %1359
  %1378 = fsub fast float %1376, %1377
  %1379 = fmul fast float %1345, 0x3FE17B1420000000
  %1380 = fmul fast float %1379, %1378
  %1381 = fmul fast float %1349, 0x3FF17B1420000000
  %1382 = fmul fast float %1381, %1359
  %1383 = fmul fast float %1382, %1358
  %1384 = fadd fast float %1380, %1383
  %1385 = fadd fast float %1384, %1366
  %1386 = fmul fast float %1385, %1356
  %1387 = fsub fast float %1368, %1362
  %1388 = fadd fast float %1387, %1367
  %1389 = fmul fast float %1388, 0x3FDF454380000000
  %1390 = fmul fast float %1389, %1355
  %1391 = fsub fast float %1361, %1372
  %1392 = fsub fast float %1391, %1375
  %1393 = fadd fast float %1392, %1386
  %1394 = fadd fast float %1393, %1390
  %1395 = fmul fast float %1344, 0x3FD20DD760000000
  %1396 = fmul fast float %1360, %1342
  %1397 = fmul fast float %1365, %1338
  %1398 = fmul fast float %1358, %1341
  %1399 = fmul fast float %1359, %1343
  %1400 = fmul fast float %1356, %1337
  %1401 = fmul fast float %1400, %1358
  %1402 = fmul fast float %1401, %1369
  %1403 = fmul fast float %1356, %1339
  %1404 = fmul fast float %1403, %1359
  %1405 = fmul fast float %1404, %1369
  %1406 = fmul fast float %1336, 0x3FE17B1420000000
  %1407 = fmul fast float %1406, %1378
  %1408 = fmul fast float %1340, 0x3FF17B1420000000
  %1409 = fmul fast float %1408, %1359
  %1410 = fmul fast float %1409, %1358
  %1411 = fadd fast float %1407, %1410
  %1412 = fadd fast float %1411, %1397
  %1413 = fmul fast float %1412, %1356
  %1414 = fsub fast float %1399, %1396
  %1415 = fadd fast float %1414, %1398
  %1416 = fmul fast float %1415, 0x3FDF454380000000
  %1417 = fmul fast float %1416, %1355
  %1418 = fsub fast float %1395, %1402
  %1419 = fsub fast float %1418, %1405
  %1420 = fadd fast float %1419, %1413
  %1421 = fadd fast float %1420, %1417
  %1422 = fmul fast float %1335, 0x3FD20DD760000000
  %1423 = fmul fast float %1360, %1333
  %1424 = fmul fast float %1365, %1329
  %1425 = fmul fast float %1358, %1332
  %1426 = fmul fast float %1359, %1334
  %1427 = fmul fast float %1356, %1328
  %1428 = fmul fast float %1427, %1358
  %1429 = fmul fast float %1428, %1369
  %1430 = fmul fast float %1356, %1330
  %1431 = fmul fast float %1430, %1359
  %1432 = fmul fast float %1431, %1369
  %1433 = fmul fast float %1327, 0x3FE17B1420000000
  %1434 = fmul fast float %1433, %1378
  %1435 = fmul fast float %1331, 0x3FF17B1420000000
  %1436 = fmul fast float %1435, %1359
  %1437 = fmul fast float %1436, %1358
  %1438 = fadd fast float %1434, %1437
  %1439 = fadd fast float %1438, %1424
  %1440 = fmul fast float %1439, %1356
  %1441 = fsub fast float %1426, %1423
  %1442 = fadd fast float %1441, %1425
  %1443 = fmul fast float %1442, 0x3FDF454380000000
  %1444 = fmul fast float %1443, %1355
  %1445 = fsub fast float %1422, %1429
  %1446 = fsub fast float %1445, %1432
  %1447 = fadd fast float %1446, %1440
  %1448 = fadd fast float %1447, %1444
  %1449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1450 = extractvalue %dx.types.CBufRet.f32 %1449, 3
  %1451 = extractvalue %dx.types.CBufRet.f32 %503, 0
  %1452 = fmul fast float %1451, %1450
  %1453 = fmul fast float %1452, %1394
  %1454 = fmul fast float %1452, %1421
  %1455 = fmul fast float %1452, %1448
  %1456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1457 = extractvalue %dx.types.CBufRet.f32 %1456, 3
  %1458 = fcmp fast une float %1457, 0.000000e+00
  %1459 = extractvalue %dx.types.CBufRet.f32 %1456, 0
  %1460 = extractvalue %dx.types.CBufRet.f32 %1456, 1
  %1461 = extractvalue %dx.types.CBufRet.f32 %1456, 2
  br i1 %1458, label %1462, label %1484, !dx.controlflow.hints !63

; <label>:1462                                    ; preds = %1326
  %1463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1464 = extractvalue %dx.types.CBufRet.f32 %1463, 0
  %1465 = extractvalue %dx.types.CBufRet.f32 %1463, 1
  %1466 = extractvalue %dx.types.CBufRet.f32 %1463, 2
  %1467 = call float @dx.op.dot3.f32(i32 55, float %1459, float %1460, float %1461, float %112, float %113, float %114)  ; Dot3(ax,ay,az,bx,by,bz)
  %1468 = fcmp fast ogt float %513, 0.000000e+00
  %1469 = select i1 %1468, float 1.000000e+00, float -1.000000e+00
  %1470 = fmul fast float %1469, 5.000000e-01
  %1471 = fmul fast float %1470, %1467
  %1472 = fmul fast float %1469, %513
  %1473 = fadd fast float %1471, 4.921875e-01
  %1474 = fadd fast float %1472, -3.125000e-02
  %1475 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %23, float %1473, float 0x3FB25F3060000000, float %1474, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1476 = extractvalue %dx.types.ResRet.f32 %1475, 0
  %1477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1478 = extractvalue %dx.types.CBufRet.f32 %1477, 0
  %1479 = fmul fast float %1476, 0x400921FB60000000
  %1480 = fmul fast float %1479, %1478
  %1481 = fmul fast float %1480, %1464
  %1482 = fmul fast float %1480, %1465
  %1483 = fmul fast float %1480, %1466
  br label %1484

; <label>:1484                                    ; preds = %1462, %1326
  %1485 = phi float [ %1481, %1462 ], [ 0.000000e+00, %1326 ]
  %1486 = phi float [ %1482, %1462 ], [ 0.000000e+00, %1326 ]
  %1487 = phi float [ %1483, %1462 ], [ 0.000000e+00, %1326 ]
  %1488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1489 = extractvalue %dx.types.CBufRet.f32 %1488, 0
  %1490 = fmul fast float %1489, %1459
  %1491 = fmul fast float %1489, %1460
  %1492 = fmul fast float %1489, %1461
  %1493 = fadd fast float %1490, %224
  %1494 = fadd fast float %1491, %225
  %1495 = fadd fast float %1492, %226
  br i1 %236, label %1545, label %1496, !dx.controlflow.hints !43

; <label>:1496                                    ; preds = %1484
  %1497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1498 = extractvalue %dx.types.CBufRet.f32 %1497, 0
  %1499 = extractvalue %dx.types.CBufRet.f32 %1497, 1
  %1500 = extractvalue %dx.types.CBufRet.f32 %1497, 2
  %1501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1502 = extractvalue %dx.types.CBufRet.f32 %1501, 0
  %1503 = extractvalue %dx.types.CBufRet.f32 %1501, 1
  %1504 = extractvalue %dx.types.CBufRet.f32 %1501, 2
  %1505 = fsub fast float %1493, %1502
  %1506 = fsub fast float %1494, %1503
  %1507 = fsub fast float %1495, %1504
  %1508 = fmul fast float %1505, %1498
  %1509 = fmul fast float %1506, %1499
  %1510 = fmul fast float %1507, %1500
  %1511 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %1512 = extractvalue %dx.types.CBufRet.i32 %1511, 3
  %1513 = icmp eq i32 %1512, 0
  br i1 %1513, label %1517, label %1514, !dx.controlflow.hints !44

; <label>:1514                                    ; preds = %1496
  %1515 = call float @dx.op.unary.f32(i32 22, float %1508)  ; Frc(value)
  %1516 = call float @dx.op.unary.f32(i32 22, float %1509)  ; Frc(value)
  br label %1517

; <label>:1517                                    ; preds = %1514, %1496
  %1518 = phi float [ %1515, %1514 ], [ %1508, %1496 ]
  %1519 = phi float [ %1516, %1514 ], [ %1509, %1496 ]
  %1520 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %21, float %1518, float %1519, float %1510, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1521 = extractvalue %dx.types.ResRet.f32 %1520, 0
  %1522 = fmul fast float %1521, 2.000000e+00
  %1523 = fadd fast float %1522, -1.000000e+00
  %1524 = extractvalue %dx.types.CBufRet.f32 %1497, 3
  %1525 = fmul fast float %1523, %1524
  %1526 = fcmp fast olt float %1525, 0.000000e+00
  %1527 = fcmp fast oge float %1510, 0.000000e+00
  %1528 = fcmp fast ole float %1510, 1.000000e+00
  br i1 %1513, label %1531, label %1529, !dx.controlflow.hints !45

; <label>:1529                                    ; preds = %1517
  %1530 = and i1 %1527, %1528
  br label %1541

; <label>:1531                                    ; preds = %1517
  %1532 = fcmp fast oge float %1508, 0.000000e+00
  %1533 = fcmp fast oge float %1509, 0.000000e+00
  %1534 = and i1 %1532, %1533
  %1535 = and i1 %1527, %1534
  %1536 = fcmp fast ole float %1508, 1.000000e+00
  %1537 = fcmp fast ole float %1509, 1.000000e+00
  %1538 = and i1 %1536, %1537
  %1539 = and i1 %1528, %1538
  %1540 = and i1 %1535, %1539
  br label %1541

; <label>:1541                                    ; preds = %1531, %1529
  %1542 = phi i1 [ %1530, %1529 ], [ %1540, %1531 ]
  %1543 = and i1 %1526, %1542
  %1544 = zext i1 %1543 to i32
  br label %1545

; <label>:1545                                    ; preds = %1541, %1484
  %1546 = phi i32 [ %1544, %1541 ], [ 0, %1484 ]
  %1547 = icmp eq i32 %1546, 0
  br i1 %1547, label %1727, label %1548, !dx.controlflow.hints !46

; <label>:1548                                    ; preds = %1545
  %1549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1550 = extractvalue %dx.types.CBufRet.f32 %1549, 3
  %1551 = fmul fast float %1550, %1489
  %1552 = fcmp fast oeq float %1551, 0.000000e+00
  br i1 %1552, label %1567, label %1553, !dx.controlflow.hints !47

; <label>:1553                                    ; preds = %1548
  %1554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1555 = extractvalue %dx.types.CBufRet.f32 %1554, 3
  %1556 = fmul fast float %1555, %1551
  %1557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1558 = extractvalue %dx.types.CBufRet.f32 %1557, 0
  %1559 = extractvalue %dx.types.CBufRet.f32 %1557, 1
  %1560 = extractvalue %dx.types.CBufRet.f32 %1557, 2
  %1561 = fmul fast float %1558, %1556
  %1562 = fmul fast float %1559, %1556
  %1563 = fmul fast float %1560, %1556
  %1564 = call float @dx.op.unary.f32(i32 23, float %1561)  ; Log(value)
  %1565 = call float @dx.op.unary.f32(i32 23, float %1562)  ; Log(value)
  %1566 = call float @dx.op.unary.f32(i32 23, float %1563)  ; Log(value)
  br label %1567

; <label>:1567                                    ; preds = %1553, %1548
  %1568 = phi float [ %1564, %1553 ], [ 0.000000e+00, %1548 ]
  %1569 = phi float [ %1565, %1553 ], [ 0.000000e+00, %1548 ]
  %1570 = phi float [ %1566, %1553 ], [ 0.000000e+00, %1548 ]
  %1571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1572 = extractvalue %dx.types.CBufRet.f32 %1571, 0
  %1573 = extractvalue %dx.types.CBufRet.f32 %1571, 1
  %1574 = extractvalue %dx.types.CBufRet.f32 %1571, 2
  %1575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1576 = extractvalue %dx.types.CBufRet.f32 %1575, 0
  %1577 = extractvalue %dx.types.CBufRet.f32 %1575, 1
  %1578 = extractvalue %dx.types.CBufRet.f32 %1575, 2
  %1579 = fsub fast float %1493, %1576
  %1580 = fsub fast float %1494, %1577
  %1581 = fsub fast float %1495, %1578
  %1582 = fmul fast float %1579, %1572
  %1583 = fmul fast float %1580, %1573
  %1584 = fmul fast float %1581, %1574
  %1585 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %1586 = extractvalue %dx.types.CBufRet.i32 %1585, 0
  %1587 = extractvalue %dx.types.CBufRet.i32 %1585, 1
  %1588 = uitofp i32 %1586 to float
  %1589 = uitofp i32 %1587 to float
  %1590 = fmul fast float %1582, %1588
  %1591 = fmul fast float %1583, %1589
  %1592 = fadd fast float %1590, 5.000000e-01
  %1593 = fadd fast float %1591, 5.000000e-01
  %1594 = call float @dx.op.unary.f32(i32 22, float %1592)  ; Frc(value)
  %1595 = call float @dx.op.unary.f32(i32 22, float %1593)  ; Frc(value)
  %1596 = call float @dx.op.unary.f32(i32 27, float %1592)  ; Round_ni(value)
  %1597 = call float @dx.op.unary.f32(i32 27, float %1593)  ; Round_ni(value)
  %1598 = fadd fast float %1596, 1.000000e+00
  %1599 = fadd fast float %1597, 1.000000e+00
  %1600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %1601 = extractvalue %dx.types.CBufRet.f32 %1600, 0
  %1602 = extractvalue %dx.types.CBufRet.f32 %1600, 1
  %1603 = fmul fast float %1601, %1598
  %1604 = fmul fast float %1602, %1599
  %1605 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %22, float %1603, float %1604, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1606 = extractvalue %dx.types.ResRet.f32 %1605, 0
  %1607 = extractvalue %dx.types.ResRet.f32 %1605, 1
  %1608 = extractvalue %dx.types.ResRet.f32 %1605, 2
  %1609 = extractvalue %dx.types.ResRet.f32 %1605, 3
  %1610 = extractvalue %dx.types.CBufRet.i32 %1585, 2
  %1611 = extractvalue %dx.types.CBufRet.f32 %1600, 2
  %1612 = uitofp i32 %1610 to float
  %1613 = fadd fast float %1612, -1.000000e+00
  %1614 = fmul fast float %1613, %1606
  %1615 = fmul fast float %1613, %1607
  %1616 = fmul fast float %1613, %1608
  %1617 = fmul fast float %1613, %1609
  %1618 = fadd fast float %1614, 5.000000e-01
  %1619 = fadd fast float %1615, 5.000000e-01
  %1620 = fadd fast float %1616, 5.000000e-01
  %1621 = fadd fast float %1617, 5.000000e-01
  %1622 = fptoui float %1618 to i32
  %1623 = fptoui float %1619 to i32
  %1624 = fptoui float %1620 to i32
  %1625 = fptoui float %1621 to i32
  %1626 = uitofp i32 %1622 to float
  %1627 = uitofp i32 %1623 to float
  %1628 = uitofp i32 %1624 to float
  %1629 = uitofp i32 %1625 to float
  %1630 = fadd fast float %1626, 5.000000e-01
  %1631 = fadd fast float %1627, 5.000000e-01
  %1632 = fadd fast float %1628, 5.000000e-01
  %1633 = fadd fast float %1629, 5.000000e-01
  %1634 = fmul fast float %1630, %1611
  %1635 = fmul fast float %1631, %1611
  %1636 = fmul fast float %1632, %1611
  %1637 = fmul fast float %1633, %1611
  %1638 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %23, float %1634, float %1584, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1639 = extractvalue %dx.types.ResRet.f32 %1638, 0
  %1640 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %23, float %1635, float %1584, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1641 = extractvalue %dx.types.ResRet.f32 %1640, 0
  %1642 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %23, float %1636, float %1584, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1643 = extractvalue %dx.types.ResRet.f32 %1642, 0
  %1644 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %23, float %1637, float %1584, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1645 = extractvalue %dx.types.ResRet.f32 %1644, 0
  %1646 = fsub fast float %1643, %1645
  %1647 = fmul fast float %1646, %1594
  %1648 = fadd fast float %1647, %1645
  %1649 = fsub fast float %1641, %1639
  %1650 = fmul fast float %1649, %1594
  %1651 = fadd fast float %1650, %1639
  %1652 = fsub fast float %1651, %1648
  %1653 = fmul fast float %1652, %1595
  %1654 = fadd fast float %1653, %1648
  %1655 = fcmp fast ogt float %1654, 0.000000e+00
  br i1 %1655, label %1656, label %1724, !dx.controlflow.hints !48

; <label>:1656                                    ; preds = %1567
  %1657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1658 = extractvalue %dx.types.CBufRet.f32 %1657, 0
  %1659 = extractvalue %dx.types.CBufRet.f32 %1657, 1
  %1660 = extractvalue %dx.types.CBufRet.f32 %1657, 2
  %1661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1662 = extractvalue %dx.types.CBufRet.f32 %1661, 0
  %1663 = extractvalue %dx.types.CBufRet.f32 %1661, 1
  %1664 = extractvalue %dx.types.CBufRet.f32 %1661, 2
  %1665 = fmul fast float %1580, %1572
  %1666 = fmul fast float %1581, %1572
  %1667 = fadd fast float %1582, %1662
  %1668 = fadd fast float %1665, %1663
  %1669 = fadd fast float %1666, %1664
  %1670 = fmul fast float %1667, %1658
  %1671 = fmul fast float %1668, %1658
  %1672 = fmul fast float %1669, %1658
  %1673 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %20, float %1670, float %1671, float %1672, float undef, i32 0, i32 0, i32 0, float %1568)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1674 = extractvalue %dx.types.ResRet.f32 %1673, 0
  %1675 = fmul fast float %1667, %1659
  %1676 = fmul fast float %1668, %1659
  %1677 = fmul fast float %1669, %1659
  %1678 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %20, float %1675, float %1676, float %1677, float undef, i32 0, i32 0, i32 0, float %1569)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1679 = extractvalue %dx.types.ResRet.f32 %1678, 1
  %1680 = fmul fast float %1667, %1660
  %1681 = fmul fast float %1668, %1660
  %1682 = fmul fast float %1669, %1660
  %1683 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %20, float %1680, float %1681, float %1682, float undef, i32 0, i32 0, i32 0, float %1570)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1684 = extractvalue %dx.types.ResRet.f32 %1683, 2
  %1685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %1686 = extractvalue %dx.types.CBufRet.f32 %1685, 1
  %1687 = fmul fast float %1679, %1674
  %1688 = fmul fast float %1687, %1684
  %1689 = call float @dx.op.unary.f32(i32 23, float %1688)  ; Log(value)
  %1690 = fmul fast float %1689, %1686
  %1691 = call float @dx.op.unary.f32(i32 21, float %1690)  ; Exp(value)
  %1692 = extractvalue %dx.types.CBufRet.f32 %1685, 2
  %1693 = fmul fast float %1654, %1654
  %1694 = fmul fast float %1693, %1691
  %1695 = fmul fast float %1694, %1692
  %1696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %1697 = extractvalue %dx.types.CBufRet.f32 %1696, 3
  %1698 = fmul fast float %1697, %1695
  %1699 = bitcast float %1698 to i32
  %1700 = sitofp i32 %1699 to float
  %1701 = fptosi float %1700 to i32
  %1702 = bitcast i32 %1701 to float
  %1703 = fsub fast float 1.000000e+00, %1695
  %1704 = bitcast float %1703 to i32
  %1705 = sitofp i32 %1704 to float
  %1706 = fptosi float %1705 to i32
  %1707 = bitcast i32 %1706 to float
  %1708 = fadd fast float %1702, %1707
  %1709 = bitcast float %1708 to i32
  %1710 = sub nsw i32 2129859010, %1709
  %1711 = bitcast i32 %1710 to float
  %1712 = fmul fast float %1711, %1702
  %1713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1714 = extractvalue %dx.types.CBufRet.f32 %1713, 2
  %1715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1716 = extractvalue %dx.types.CBufRet.f32 %1715, 0
  %1717 = fmul fast float %1712, %1716
  %1718 = fadd fast float %1717, 1.000000e+00
  %1719 = bitcast float %1718 to i32
  %1720 = sub nsw i32 2129859010, %1719
  %1721 = bitcast i32 %1720 to float
  %1722 = fmul fast float %1712, %1714
  %1723 = fmul fast float %1722, %1721
  br label %1724

; <label>:1724                                    ; preds = %1656, %1567
  %1725 = phi float [ %1723, %1656 ], [ %1654, %1567 ]
  %1726 = fmul fast float %1725, %1489
  br label %1727

; <label>:1727                                    ; preds = %1724, %1545
  %1728 = phi float [ %1726, %1724 ], [ 0.000000e+00, %1545 ]
  %1729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %1730 = extractvalue %dx.types.CBufRet.f32 %1729, 3
  %1731 = fmul fast float %1728, 0xBFF7154760000000
  %1732 = fmul fast float %1731, %1730
  %1733 = call float @dx.op.unary.f32(i32 21, float %1732)  ; Exp(value)
  %1734 = call float @dx.op.unary.f32(i32 7, float %1733)  ; Saturate(value)
  %1735 = fmul fast float %1734, %1485
  %1736 = fmul fast float %1734, %1486
  %1737 = fmul fast float %1734, %1487
  %1738 = fadd fast float %1735, %1453
  %1739 = fadd fast float %1736, %1454
  %1740 = fadd fast float %1737, %1455
  %1741 = fsub fast float 1.000000e+00, %522
  %1742 = fmul fast float %514, %220
  %1743 = fmul fast float %1742, %1741
  %1744 = fmul fast float %1743, %1738
  %1745 = fmul fast float %515, %220
  %1746 = fmul fast float %1745, %1741
  %1747 = fmul fast float %1746, %1739
  %1748 = fmul fast float %516, %220
  %1749 = fmul fast float %1748, %1741
  %1750 = fmul fast float %1749, %1740
  %1751 = fadd fast float %1744, %221
  %1752 = fadd fast float %1747, %222
  %1753 = fadd fast float %1750, %223
  %1754 = fdiv fast float %498, %306
  %1755 = fadd fast float %306, %227
  %1756 = fmul fast float %227, %227
  %1757 = fmul fast float %1755, %1755
  %1758 = fsub fast float %1756, %1757
  %1759 = fmul fast float %1758, -5.000000e-01
  %1760 = fmul fast float %1759, %1754
  %1761 = fadd fast float %1760, %219
  %1762 = fadd fast float %498, %228
  %1763 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1764 = extractvalue %dx.types.CBufRet.i32 %1763, 0
  %1765 = icmp eq i32 %1764, 0
  br i1 %1765, label %1792, label %1766, !dx.controlflow.hints !64

; <label>:1766                                    ; preds = %1727
  %1767 = icmp ne i32 %233, 0
  %1768 = zext i1 %1767 to i32
  %1769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1770 = extractvalue %dx.types.CBufRet.f32 %1769, 2
  %1771 = extractvalue %dx.types.CBufRet.f32 %1769, 0
  %1772 = fsub fast float %1755, %1771
  %1773 = fmul fast float %1772, %1770
  %1774 = call float @dx.op.unary.f32(i32 7, float %1773)  ; Saturate(value)
  %1775 = fadd fast float %1774, -5.000000e-01
  %1776 = fmul fast float %1775, 2.000000e+00
  %1777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1778 = extractvalue %dx.types.CBufRet.f32 %1777, 2
  %1779 = fcmp fast olt float %1776, %1778
  br i1 %1779, label %1780, label %1792, !dx.controlflow.hints !65

; <label>:1780                                    ; preds = %1766
  %1781 = fmul fast float %1776, %1776
  %1782 = fmul fast float %1741, %220
  %1783 = fmul fast float %1776, %1782
  %1784 = fmul fast float %1781, %1782
  %1785 = fmul fast float %1783, %1781
  %1786 = fmul fast float %1781, %1781
  %1787 = fmul fast float %1786, %1782
  %1788 = fadd fast float %1783, %229
  %1789 = fadd fast float %1784, %230
  %1790 = fadd fast float %1785, %231
  %1791 = fadd fast float %1787, %232
  br label %1792

; <label>:1792                                    ; preds = %1780, %1766, %1727
  %1793 = phi float [ %229, %1727 ], [ %1788, %1780 ], [ %229, %1766 ]
  %1794 = phi float [ %230, %1727 ], [ %1789, %1780 ], [ %230, %1766 ]
  %1795 = phi float [ %231, %1727 ], [ %1790, %1780 ], [ %231, %1766 ]
  %1796 = phi float [ %232, %1727 ], [ %1791, %1780 ], [ %232, %1766 ]
  %1797 = phi i32 [ %233, %1727 ], [ 1, %1780 ], [ %1768, %1766 ]
  %1798 = fmul fast float %522, %220
  br label %1799

; <label>:1799                                    ; preds = %1792, %517
  %1800 = phi float [ %518, %517 ], [ %1755, %1792 ]
  %1801 = phi float [ %219, %517 ], [ %1761, %1792 ]
  %1802 = phi float [ %220, %517 ], [ %1798, %1792 ]
  %1803 = phi float [ %221, %517 ], [ %1751, %1792 ]
  %1804 = phi float [ %222, %517 ], [ %1752, %1792 ]
  %1805 = phi float [ %223, %517 ], [ %1753, %1792 ]
  %1806 = phi float [ %228, %517 ], [ %1762, %1792 ]
  %1807 = phi float [ %229, %517 ], [ %1793, %1792 ]
  %1808 = phi float [ %230, %517 ], [ %1794, %1792 ]
  %1809 = phi float [ %231, %517 ], [ %1795, %1792 ]
  %1810 = phi float [ %232, %517 ], [ %1796, %1792 ]
  %1811 = phi i32 [ %233, %517 ], [ %1797, %1792 ]
  %1812 = fmul fast float %306, %112
  %1813 = fmul fast float %306, %113
  %1814 = fmul fast float %306, %114
  %1815 = fadd fast float %1812, %224
  %1816 = fadd fast float %1813, %225
  %1817 = fadd fast float %1814, %226
  %1818 = fcmp fast olt float %1800, %198
  %1819 = extractvalue %dx.types.CBufRet.f32 %503, 2
  %1820 = fcmp fast olt float %1819, %1802
  %1821 = and i1 %1818, %1820
  br i1 %1821, label %218, label %1822

; <label>:1822                                    ; preds = %1799
  br label %1823

; <label>:1823                                    ; preds = %1822, %194
  %1824 = phi float [ 0.000000e+00, %194 ], [ %1801, %1822 ]
  %1825 = phi float [ 1.000000e+00, %194 ], [ %1802, %1822 ]
  %1826 = phi float [ 0.000000e+00, %194 ], [ %1803, %1822 ]
  %1827 = phi float [ 0.000000e+00, %194 ], [ %1804, %1822 ]
  %1828 = phi float [ 0.000000e+00, %194 ], [ %1805, %1822 ]
  %1829 = phi float [ 0.000000e+00, %194 ], [ %1806, %1822 ]
  %1830 = phi float [ 0.000000e+00, %194 ], [ %1807, %1822 ]
  %1831 = phi float [ 0.000000e+00, %194 ], [ %1808, %1822 ]
  %1832 = phi float [ 0.000000e+00, %194 ], [ %1809, %1822 ]
  %1833 = phi float [ 0.000000e+00, %194 ], [ %1810, %1822 ]
  %1834 = phi i32 [ 0, %194 ], [ %1811, %1822 ]
  %1835 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1836 = extractvalue %dx.types.CBufRet.i32 %1835, 0
  %1837 = icmp eq i32 %1836, 0
  br i1 %1837, label %1879, label %1838, !dx.controlflow.hints !66

; <label>:1838                                    ; preds = %1823
  %1839 = icmp eq i32 %1834, 0
  br i1 %1839, label %1878, label %1840, !dx.controlflow.hints !67

; <label>:1840                                    ; preds = %1838
  %1841 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1842 = extractvalue %dx.types.CBufRet.i32 %1841, 2
  %1843 = icmp eq i32 %1842, 0
  br i1 %1843, label %1850, label %1844, !dx.controlflow.hints !68

; <label>:1844                                    ; preds = %1840
  %1845 = fsub fast float 1.000000e+00, %1825
  %1846 = fdiv fast float %1830, %1845
  %1847 = fdiv fast float %1831, %1845
  %1848 = fdiv fast float %1832, %1845
  %1849 = fdiv fast float %1833, %1845
  br label %1855

; <label>:1850                                    ; preds = %1840
  %1851 = fadd fast float %1830, %1825
  %1852 = fadd fast float %1831, %1825
  %1853 = fadd fast float %1832, %1825
  %1854 = fadd fast float %1833, %1825
  br label %1855

; <label>:1855                                    ; preds = %1850, %1844
  %1856 = phi float [ %1846, %1844 ], [ %1851, %1850 ]
  %1857 = phi float [ %1847, %1844 ], [ %1852, %1850 ]
  %1858 = phi float [ %1848, %1844 ], [ %1853, %1850 ]
  %1859 = phi float [ %1849, %1844 ], [ %1854, %1850 ]
  %1860 = call float @dx.op.binary.f32(i32 35, float %1856, float -1.000000e+00)  ; FMax(a,b)
  %1861 = call float @dx.op.binary.f32(i32 35, float %1857, float -1.000000e+00)  ; FMax(a,b)
  %1862 = call float @dx.op.binary.f32(i32 35, float %1858, float -1.000000e+00)  ; FMax(a,b)
  %1863 = call float @dx.op.binary.f32(i32 35, float %1859, float -1.000000e+00)  ; FMax(a,b)
  %1864 = call float @dx.op.binary.f32(i32 36, float %1860, float 1.000000e+00)  ; FMin(a,b)
  %1865 = call float @dx.op.binary.f32(i32 36, float %1861, float 1.000000e+00)  ; FMin(a,b)
  %1866 = call float @dx.op.binary.f32(i32 36, float %1862, float 1.000000e+00)  ; FMin(a,b)
  %1867 = call float @dx.op.binary.f32(i32 36, float %1863, float 1.000000e+00)  ; FMin(a,b)
  %1868 = fmul fast float %1864, 1.500000e+00
  %1869 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1866, float %1868)  ; FMad(a,b,c)
  %1870 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1865, float 0.000000e+00)  ; FMad(a,b,c)
  %1871 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1867, float %1870)  ; FMad(a,b,c)
  %1872 = fmul fast float %1864, 0x3FEBB67AE0000000
  %1873 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1866, float %1872)  ; FMad(a,b,c)
  %1874 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1865, float 0.000000e+00)  ; FMad(a,b,c)
  %1875 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1867, float %1874)  ; FMad(a,b,c)
  %1876 = fadd fast float %1869, 5.000000e-01
  %1877 = fadd fast float %1873, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %26, i32 %27, i32 0, float %1876, float %1871, float %1877, float %1875, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1879

; <label>:1878                                    ; preds = %1838
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %26, i32 %27, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1879

; <label>:1879                                    ; preds = %1878, %1855, %1823
  %1880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1881 = extractvalue %dx.types.CBufRet.f32 %1880, 2
  %1882 = fsub fast float %1825, %1881
  %1883 = fdiv fast float %1882, %1881
  %1884 = call float @dx.op.unary.f32(i32 7, float %1883)  ; Saturate(value)
  %1885 = fmul fast float %1884, 2.000000e+00
  %1886 = fsub fast float 3.000000e+00, %1885
  %1887 = fmul fast float %1884, %1884
  %1888 = fmul fast float %1887, %1825
  %1889 = fmul fast float %1888, %1886
  %1890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1891 = extractvalue %dx.types.CBufRet.f32 %1890, 0
  %1892 = extractvalue %dx.types.CBufRet.f32 %1890, 1
  %1893 = extractvalue %dx.types.CBufRet.f32 %1890, 2
  %1894 = call float @dx.op.dot3.f32(i32 55, float %112, float %113, float %114, float %1891, float %1892, float %1893)  ; Dot3(ax,ay,az,bx,by,bz)
  %1895 = fmul fast float %1894, %1824
  %1896 = fcmp fast ogt float %1829, 0.000000e+00
  %1897 = fdiv fast float 1.000000e+00, %1829
  %1898 = fmul fast float %1895, %1897
  %1899 = select i1 %1896, float %1898, float %123
  %1900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1901 = extractvalue %dx.types.CBufRet.f32 %1900, 0
  %1902 = extractvalue %dx.types.CBufRet.f32 %1900, 1
  %1903 = extractvalue %dx.types.CBufRet.f32 %1900, 2
  %1904 = fmul fast float %1901, %76
  %1905 = fmul fast float %1902, %76
  %1906 = fmul fast float %1903, %76
  %1907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1908 = extractvalue %dx.types.CBufRet.f32 %1907, 0
  %1909 = extractvalue %dx.types.CBufRet.f32 %1907, 1
  %1910 = extractvalue %dx.types.CBufRet.f32 %1907, 2
  %1911 = fmul fast float %1908, %77
  %1912 = fmul fast float %1909, %77
  %1913 = fmul fast float %1910, %77
  %1914 = fadd fast float %1911, %1904
  %1915 = fadd fast float %1912, %1905
  %1916 = fadd fast float %1913, %1906
  %1917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1918 = extractvalue %dx.types.CBufRet.f32 %1917, 0
  %1919 = extractvalue %dx.types.CBufRet.f32 %1917, 1
  %1920 = extractvalue %dx.types.CBufRet.f32 %1917, 2
  %1921 = fadd fast float %1914, %1918
  %1922 = fadd fast float %1915, %1919
  %1923 = fadd fast float %1916, %1920
  %1924 = fmul fast float %1921, %1899
  %1925 = fmul fast float %1922, %1899
  %1926 = fmul fast float %1923, %1899
  %1927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1928 = extractvalue %dx.types.CBufRet.f32 %1927, 0
  %1929 = extractvalue %dx.types.CBufRet.f32 %1927, 1
  %1930 = extractvalue %dx.types.CBufRet.f32 %1927, 2
  %1931 = extractvalue %dx.types.CBufRet.f32 %1927, 3
  %1932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1933 = extractvalue %dx.types.CBufRet.f32 %1932, 0
  %1934 = extractvalue %dx.types.CBufRet.f32 %1932, 1
  %1935 = extractvalue %dx.types.CBufRet.f32 %1932, 2
  %1936 = extractvalue %dx.types.CBufRet.f32 %1932, 3
  %1937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1938 = extractvalue %dx.types.CBufRet.f32 %1937, 0
  %1939 = extractvalue %dx.types.CBufRet.f32 %1937, 1
  %1940 = extractvalue %dx.types.CBufRet.f32 %1937, 2
  %1941 = extractvalue %dx.types.CBufRet.f32 %1937, 3
  %1942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1943 = extractvalue %dx.types.CBufRet.f32 %1942, 0
  %1944 = extractvalue %dx.types.CBufRet.f32 %1942, 1
  %1945 = extractvalue %dx.types.CBufRet.f32 %1942, 2
  %1946 = extractvalue %dx.types.CBufRet.f32 %1942, 3
  %1947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1948 = extractvalue %dx.types.CBufRet.f32 %1947, 3
  %1949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1950 = extractvalue %dx.types.CBufRet.f32 %1949, 3
  %1951 = extractvalue %dx.types.CBufRet.f32 %1949, 0
  %1952 = extractvalue %dx.types.CBufRet.f32 %1949, 1
  %1953 = extractvalue %dx.types.CBufRet.f32 %1949, 2
  %1954 = fcmp fast olt float %1953, -5.000000e-01
  %1955 = call float @dx.op.dot3.f32(i32 55, float %1924, float %1925, float %1926, float %1924, float %1925, float %1926)  ; Dot3(ax,ay,az,bx,by,bz)
  %1956 = call float @dx.op.unary.f32(i32 25, float %1955)  ; Rsqrt(value)
  %1957 = fmul fast float %1956, %1955
  %1958 = fmul fast float %1956, %1924
  %1959 = fmul fast float %1956, %1925
  %1960 = fmul fast float %1956, %1926
  %1961 = fadd fast float %1957, %1931
  %1962 = call float @dx.op.dot3.f32(i32 55, float %1958, float %1959, float %1960, float %1928, float %1929, float %1930)  ; Dot3(ax,ay,az,bx,by,bz)
  %1963 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1964 = extractvalue %dx.types.CBufRet.i32 %1963, 1
  %1965 = and i32 %1964, 1
  %1966 = icmp ne i32 %1965, 0
  %1967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1968 = extractvalue %dx.types.CBufRet.f32 %1967, 2
  %1969 = fcmp fast ogt float %1968, 0.000000e+00
  %1970 = and i1 %1966, %1969
  br i1 %1970, label %1971, label %2377, !dx.controlflow.hints !69

; <label>:1971                                    ; preds = %1879
  %1972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1973 = extractvalue %dx.types.CBufRet.f32 %1972, 3
  %1974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1975 = extractvalue %dx.types.CBufRet.f32 %1974, 2
  %1976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1977 = extractvalue %dx.types.CBufRet.f32 %1976, 2
  %1978 = fsub fast float %1975, %1977
  %1979 = and i32 %1964, 2
  %1980 = extractvalue %dx.types.CBufRet.i32 %1963, 0
  %1981 = call i32 @dx.op.binary.i32(i32 40, i32 %1980, i32 3)  ; UMin(a,b)
  %1982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1983 = extractvalue %dx.types.CBufRet.f32 %1982, 0
  %1984 = extractvalue %dx.types.CBufRet.f32 %1982, 1
  %1985 = extractvalue %dx.types.CBufRet.f32 %1976, 0
  %1986 = extractvalue %dx.types.CBufRet.f32 %1976, 1
  %1987 = fsub fast float %1983, %1985
  %1988 = fsub fast float %1984, %1986
  %1989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1990 = extractvalue %dx.types.CBufRet.f32 %1989, 0
  %1991 = fcmp fast ogt float %1990, 0.000000e+00
  %1992 = fsub fast float -0.000000e+00, %1987
  %1993 = fsub fast float -0.000000e+00, %1988
  %1994 = call float @dx.op.dot2.f32(i32 54, float %1958, float %1959, float %1958, float %1959)  ; Dot2(ax,ay,bx,by)
  %1995 = call float @dx.op.dot2.f32(i32 54, float %1958, float %1959, float %1992, float %1993)  ; Dot2(ax,ay,bx,by)
  %1996 = fmul fast float %1995, 2.000000e+00
  %1997 = call float @dx.op.dot2.f32(i32 54, float %1992, float %1993, float %1992, float %1993)  ; Dot2(ax,ay,bx,by)
  %1998 = fmul fast float %1990, %1990
  %1999 = fsub fast float %1997, %1998
  %2000 = fmul fast float %1996, %1996
  %2001 = fmul fast float %1994, 4.000000e+00
  %2002 = fmul fast float %2001, %1999
  %2003 = fsub fast float %2000, %2002
  %2004 = fcmp fast ogt float %2003, 0.000000e+00
  br i1 %2004, label %2005, label %2020, !dx.controlflow.hints !70

; <label>:2005                                    ; preds = %1971
  %2006 = fcmp fast ogt float %1996, 0.000000e+00
  %2007 = call float @dx.op.unary.f32(i32 24, float %2003)  ; Sqrt(value)
  %2008 = fsub fast float -0.000000e+00, %2007
  %2009 = select i1 %2006, float %2007, float %2008
  %2010 = fadd fast float %2009, %1996
  %2011 = fmul float %2010, -5.000000e-01
  %2012 = fdiv fast float %2011, %1994
  %2013 = call float @dx.op.binary.f32(i32 35, float %2012, float 0.000000e+00)  ; FMax(a,b)
  %2014 = call float @dx.op.binary.f32(i32 36, float %1957, float %2013)  ; FMin(a,b)
  %2015 = fdiv fast float %1999, %2011
  %2016 = call float @dx.op.binary.f32(i32 35, float %2015, float 0.000000e+00)  ; FMax(a,b)
  %2017 = call float @dx.op.binary.f32(i32 36, float %1957, float %2016)  ; FMin(a,b)
  %2018 = call float @dx.op.binary.f32(i32 36, float %2014, float %2017)  ; FMin(a,b)
  %2019 = call float @dx.op.binary.f32(i32 35, float %2014, float %2017)  ; FMax(a,b)
  br label %2020

; <label>:2020                                    ; preds = %2005, %1971
  %2021 = phi float [ %2019, %2005 ], [ -1.000000e+00, %1971 ]
  %2022 = phi float [ %2018, %2005 ], [ -1.000000e+00, %1971 ]
  %2023 = phi i1 [ true, %2005 ], [ false, %1971 ]
  %2024 = and i1 %1991, %2023
  br i1 %2024, label %2025, label %2027, !dx.controlflow.hints !71

; <label>:2025                                    ; preds = %2020
  %2026 = fcmp fast oeq float %2022, %2021
  br i1 %2026, label %2330, label %2028, !dx.controlflow.hints !72

; <label>:2027                                    ; preds = %2020
  br i1 %1991, label %2330, label %2028, !dx.controlflow.hints !73

; <label>:2028                                    ; preds = %2027, %2025
  %2029 = phi float [ %1957, %2027 ], [ %2021, %2025 ]
  %2030 = phi float [ 0.000000e+00, %2027 ], [ %2022, %2025 ]
  %2031 = icmp ne i32 %1979, 0
  %2032 = fmul fast float %2029, %1960
  %2033 = fadd fast float %2032, %1973
  %2034 = fmul fast float %2033, %2029
  %2035 = select i1 %2031, float 0.000000e+00, float %2034
  %2036 = fcmp fast oeq float %1960, 0.000000e+00
  %2037 = fdiv fast float %1978, %1960
  %2038 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2037)  ; FMax(a,b)
  %2039 = select i1 %2036, float %2029, float %2038
  %2040 = call float @dx.op.binary.f32(i32 36, float %2029, float %2039)  ; FMin(a,b)
  %2041 = fcmp fast ogt float %1960, 0.000000e+00
  %2042 = fcmp fast olt float %1978, 0.000000e+00
  br i1 %2041, label %2043, label %2100, !dx.controlflow.hints !74

; <label>:2043                                    ; preds = %2028
  %2044 = icmp eq i32 %1979, 0
  br i1 %2042, label %2045, label %2089, !dx.controlflow.hints !75

; <label>:2045                                    ; preds = %2043
  %2046 = select i1 %2044, float %2029, float 0.000000e+00
  %2047 = fsub fast float -0.000000e+00, %2046
  %2048 = call float @dx.op.unary.f32(i32 6, float %2047)  ; FAbs(value)
  %2049 = fmul fast float %2046, %1960
  %2050 = fadd fast float %2049, %1973
  %2051 = fmul fast float %2048, %2050
  %2052 = fsub fast float %2035, %2051
  %2053 = fsub fast float %2029, %2048
  %2054 = select i1 %2044, float %2053, float 0.000000e+00
  %2055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2056 = extractvalue %dx.types.CBufRet.f32 %2055, 0
  %2057 = extractvalue %dx.types.CBufRet.f32 %2055, 1
  %2058 = extractvalue %dx.types.CBufRet.f32 %2055, 2
  %2059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2060 = extractvalue %dx.types.CBufRet.f32 %2059, 0
  %2061 = extractvalue %dx.types.CBufRet.f32 %2059, 1
  %2062 = extractvalue %dx.types.CBufRet.f32 %2059, 2
  %2063 = extractvalue %dx.types.CBufRet.f32 %2059, 3
  %2064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2065 = extractvalue %dx.types.CBufRet.f32 %2064, 3
  %2066 = call float @dx.op.binary.f32(i32 36, float %2052, float %2065)  ; FMin(a,b)
  %2067 = fmul fast float %2063, %2054
  %2068 = call float @dx.op.unary.f32(i32 7, float %2067)  ; Saturate(value)
  %2069 = fsub fast float %2060, %2056
  %2070 = fsub fast float %2061, %2057
  %2071 = fsub fast float %2062, %2058
  %2072 = fmul fast float %2068, %2069
  %2073 = fmul fast float %2068, %2070
  %2074 = fmul fast float %2068, %2071
  %2075 = fadd fast float %2072, %2056
  %2076 = fadd fast float %2073, %2057
  %2077 = fadd fast float %2074, %2058
  %2078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2079 = extractvalue %dx.types.CBufRet.f32 %2078, 0
  %2080 = extractvalue %dx.types.CBufRet.f32 %2078, 1
  %2081 = fadd fast float %2080, %2079
  %2082 = call float @dx.op.unary.f32(i32 7, float %2081)  ; Saturate(value)
  %2083 = extractvalue %dx.types.CBufRet.f32 %2078, 2
  %2084 = extractvalue %dx.types.CBufRet.f32 %2078, 3
  %2085 = fadd fast float %2084, %2083
  %2086 = call float @dx.op.unary.f32(i32 7, float %2085)  ; Saturate(value)
  %2087 = fmul fast float %2082, %2066
  %2088 = fmul fast float %2087, %2086
  br label %2330

; <label>:2089                                    ; preds = %2043
  br i1 %2044, label %2090, label %2111, !dx.controlflow.hints !76

; <label>:2090                                    ; preds = %2089
  %2091 = call float @dx.op.binary.f32(i32 36, float %2040, float %2030)  ; FMin(a,b)
  %2092 = fsub fast float %2040, %2091
  %2093 = fsub fast float %2092, %2029
  %2094 = call float @dx.op.unary.f32(i32 6, float %2093)  ; FAbs(value)
  %2095 = fadd fast float %2092, %2029
  %2096 = fmul fast float %2095, %1960
  %2097 = fadd fast float %2096, %1973
  %2098 = fmul fast float %2097, %2094
  %2099 = fsub fast float %2035, %2098
  br label %2111

; <label>:2100                                    ; preds = %2028
  br i1 %2042, label %2101, label %2111, !dx.controlflow.hints !77

; <label>:2101                                    ; preds = %2100
  %2102 = call float @dx.op.binary.f32(i32 35, float %2030, float %2040)  ; FMax(a,b)
  %2103 = icmp eq i32 %1979, 0
  %2104 = select i1 %2103, float %2040, float 0.000000e+00
  %2105 = fsub fast float -0.000000e+00, %2104
  %2106 = call float @dx.op.unary.f32(i32 6, float %2105)  ; FAbs(value)
  %2107 = fmul fast float %2104, %1960
  %2108 = fadd fast float %2107, %1973
  %2109 = fmul fast float %2106, %2108
  %2110 = fsub fast float %2035, %2109
  br label %2111

; <label>:2111                                    ; preds = %2101, %2100, %2090, %2089
  %2112 = phi float [ %2030, %2089 ], [ %2030, %2090 ], [ %2102, %2101 ], [ %2030, %2100 ]
  %2113 = phi float [ 0.000000e+00, %2089 ], [ %2094, %2090 ], [ %2106, %2101 ], [ 0.000000e+00, %2100 ]
  %2114 = phi float [ %2035, %2089 ], [ %2099, %2090 ], [ %2110, %2101 ], [ %2035, %2100 ]
  %2115 = phi float [ %2040, %2089 ], [ %2040, %2090 ], [ %2029, %2101 ], [ %2029, %2100 ]
  %2116 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 0
  store float -1.000000e+00, float* %2116, align 4, !tbaa !78, !noalias !82
  %2117 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 1
  store float -1.000000e+00, float* %2117, align 4, !tbaa !78, !noalias !82
  %2118 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 2
  store float -1.000000e+00, float* %2118, align 4, !tbaa !78, !noalias !82
  %2119 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 0
  store float -1.000000e+00, float* %2119, align 4, !tbaa !78, !noalias !82
  %2120 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 1
  store float -1.000000e+00, float* %2120, align 4, !tbaa !78, !noalias !82
  %2121 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 2
  store float -1.000000e+00, float* %2121, align 4, !tbaa !78, !noalias !82
  %2122 = icmp sgt i32 %1981, 0
  br i1 %2122, label %2123, label %2184

; <label>:2123                                    ; preds = %2111
  br label %2124

; <label>:2124                                    ; preds = %2173, %2123
  %2125 = phi i32 [ %2174, %2173 ], [ 0, %2123 ]
  %2126 = phi i32 [ %2175, %2173 ], [ 0, %2123 ]
  %2127 = add nuw i32 %2126, 171
  %2128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 %2127)  ; CBufferLoadLegacy(handle,regIndex)
  %2129 = extractvalue %dx.types.CBufRet.f32 %2128, 0
  %2130 = extractvalue %dx.types.CBufRet.f32 %2128, 1
  %2131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2132 = extractvalue %dx.types.CBufRet.f32 %2131, 0
  %2133 = extractvalue %dx.types.CBufRet.f32 %2131, 1
  %2134 = fsub fast float %2129, %2132
  %2135 = fsub fast float %2130, %2133
  %2136 = extractvalue %dx.types.CBufRet.f32 %2128, 2
  %2137 = fsub fast float -0.000000e+00, %2134
  %2138 = fsub fast float -0.000000e+00, %2135
  %2139 = call float @dx.op.dot2.f32(i32 54, float %1958, float %1959, float %2137, float %2138)  ; Dot2(ax,ay,bx,by)
  %2140 = fmul fast float %2139, 2.000000e+00
  %2141 = call float @dx.op.dot2.f32(i32 54, float %2137, float %2138, float %2137, float %2138)  ; Dot2(ax,ay,bx,by)
  %2142 = fmul fast float %2136, %2136
  %2143 = fsub fast float %2141, %2142
  %2144 = fmul fast float %2140, %2140
  %2145 = fmul fast float %2001, %2143
  %2146 = fsub fast float %2144, %2145
  %2147 = fcmp fast ogt float %2146, 0.000000e+00
  br i1 %2147, label %2148, label %2163, !dx.controlflow.hints !70

; <label>:2148                                    ; preds = %2124
  %2149 = fcmp fast ogt float %2140, 0.000000e+00
  %2150 = call float @dx.op.unary.f32(i32 24, float %2146)  ; Sqrt(value)
  %2151 = fsub fast float -0.000000e+00, %2150
  %2152 = select i1 %2149, float %2150, float %2151
  %2153 = fadd fast float %2152, %2140
  %2154 = fmul float %2153, -5.000000e-01
  %2155 = fdiv fast float %2154, %1994
  %2156 = call float @dx.op.binary.f32(i32 35, float %2155, float 0.000000e+00)  ; FMax(a,b)
  %2157 = call float @dx.op.binary.f32(i32 36, float %2029, float %2156)  ; FMin(a,b)
  %2158 = fdiv fast float %2143, %2154
  %2159 = call float @dx.op.binary.f32(i32 35, float %2158, float 0.000000e+00)  ; FMax(a,b)
  %2160 = call float @dx.op.binary.f32(i32 36, float %2029, float %2159)  ; FMin(a,b)
  %2161 = call float @dx.op.binary.f32(i32 36, float %2157, float %2160)  ; FMin(a,b)
  %2162 = call float @dx.op.binary.f32(i32 35, float %2157, float %2160)  ; FMax(a,b)
  br label %2163

; <label>:2163                                    ; preds = %2148, %2124
  %2164 = phi float [ %2162, %2148 ], [ -1.000000e+00, %2124 ]
  %2165 = phi float [ %2161, %2148 ], [ -1.000000e+00, %2124 ]
  %2166 = phi i1 [ true, %2148 ], [ false, %2124 ]
  br i1 %2166, label %2167, label %2173, !dx.controlflow.hints !93

; <label>:2167                                    ; preds = %2163
  %2168 = call float @dx.op.binary.f32(i32 35, float %2112, float %2165)  ; FMax(a,b)
  %2169 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %2126
  store float %2168, float* %2169, align 4, !tbaa !78, !noalias !82
  %2170 = call float @dx.op.binary.f32(i32 35, float %2112, float %2164)  ; FMax(a,b)
  %2171 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %2126
  store float %2170, float* %2171, align 4, !tbaa !78, !noalias !82
  %2172 = add nsw i32 %2125, 1
  br label %2173

; <label>:2173                                    ; preds = %2167, %2163
  %2174 = phi i32 [ %2172, %2167 ], [ %2125, %2163 ]
  %2175 = add nuw nsw i32 %2126, 1
  %2176 = icmp eq i32 %2175, %1981
  br i1 %2176, label %2177, label %2124

; <label>:2177                                    ; preds = %2173
  %2178 = load float, float* %2118, align 4, !tbaa !78, !alias.scope !94, !noalias !97
  %2179 = load float, float* %2117, align 4, !tbaa !78, !alias.scope !100, !noalias !101
  %2180 = load float, float* %2116, align 4, !tbaa !78, !alias.scope !102, !noalias !103
  %2181 = load float, float* %2121, align 4, !tbaa !78, !alias.scope !104, !noalias !107
  %2182 = load float, float* %2120, align 4, !tbaa !78, !alias.scope !110, !noalias !111
  %2183 = load float, float* %2119, align 4, !tbaa !78, !alias.scope !112, !noalias !113
  br label %2184

; <label>:2184                                    ; preds = %2177, %2111
  %2185 = phi float [ -1.000000e+00, %2111 ], [ %2183, %2177 ]
  %2186 = phi float [ -1.000000e+00, %2111 ], [ %2182, %2177 ]
  %2187 = phi float [ -1.000000e+00, %2111 ], [ %2181, %2177 ]
  %2188 = phi float [ -1.000000e+00, %2111 ], [ %2180, %2177 ]
  %2189 = phi float [ -1.000000e+00, %2111 ], [ %2179, %2177 ]
  %2190 = phi float [ -1.000000e+00, %2111 ], [ %2178, %2177 ]
  %2191 = phi i32 [ 0, %2111 ], [ %2174, %2177 ]
  %2192 = call float @dx.op.binary.f32(i32 36, float %2189, float %2190)  ; FMin(a,b)
  %2193 = call float @dx.op.binary.f32(i32 36, float %2188, float %2192)  ; FMin(a,b)
  %2194 = call float @dx.op.binary.f32(i32 35, float %2188, float %2189)  ; FMax(a,b)
  %2195 = call float @dx.op.binary.f32(i32 36, float %2194, float %2190)  ; FMin(a,b)
  %2196 = call float @dx.op.binary.f32(i32 36, float %2188, float %2189)  ; FMin(a,b)
  %2197 = call float @dx.op.binary.f32(i32 35, float %2196, float %2195)  ; FMax(a,b)
  %2198 = call float @dx.op.binary.f32(i32 35, float %2189, float %2190)  ; FMax(a,b)
  %2199 = call float @dx.op.binary.f32(i32 35, float %2188, float %2198)  ; FMax(a,b)
  store float %2193, float* %2116, align 4, !tbaa !78, !alias.scope !102, !noalias !103
  store float %2197, float* %2117, align 4, !tbaa !78, !alias.scope !100, !noalias !101
  store float %2199, float* %2118, align 4, !tbaa !78, !alias.scope !94, !noalias !97
  %2200 = call float @dx.op.binary.f32(i32 36, float %2186, float %2187)  ; FMin(a,b)
  %2201 = call float @dx.op.binary.f32(i32 36, float %2185, float %2200)  ; FMin(a,b)
  %2202 = call float @dx.op.binary.f32(i32 35, float %2185, float %2186)  ; FMax(a,b)
  %2203 = call float @dx.op.binary.f32(i32 36, float %2202, float %2187)  ; FMin(a,b)
  %2204 = call float @dx.op.binary.f32(i32 36, float %2185, float %2186)  ; FMin(a,b)
  %2205 = call float @dx.op.binary.f32(i32 35, float %2204, float %2203)  ; FMax(a,b)
  %2206 = call float @dx.op.binary.f32(i32 35, float %2186, float %2187)  ; FMax(a,b)
  %2207 = call float @dx.op.binary.f32(i32 35, float %2185, float %2206)  ; FMax(a,b)
  store float %2201, float* %2119, align 4, !tbaa !78, !alias.scope !112, !noalias !113
  store float %2205, float* %2120, align 4, !tbaa !78, !alias.scope !110, !noalias !111
  store float %2207, float* %2121, align 4, !tbaa !78, !alias.scope !104, !noalias !107
  %2208 = sub nsw i32 3, %2191
  %2209 = icmp sgt i32 %2208, 2
  br i1 %2209, label %2210, label %2248, !dx.controlflow.hints !114

; <label>:2210                                    ; preds = %2184
  %2211 = icmp eq i32 %1979, 0
  %2212 = fsub fast float %2029, %2113
  %2213 = select i1 %2211, float %2212, float %2113
  %2214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2215 = extractvalue %dx.types.CBufRet.f32 %2214, 0
  %2216 = extractvalue %dx.types.CBufRet.f32 %2214, 1
  %2217 = extractvalue %dx.types.CBufRet.f32 %2214, 2
  %2218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2219 = extractvalue %dx.types.CBufRet.f32 %2218, 0
  %2220 = extractvalue %dx.types.CBufRet.f32 %2218, 1
  %2221 = extractvalue %dx.types.CBufRet.f32 %2218, 2
  %2222 = extractvalue %dx.types.CBufRet.f32 %2218, 3
  %2223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2224 = extractvalue %dx.types.CBufRet.f32 %2223, 3
  %2225 = call float @dx.op.binary.f32(i32 36, float %2114, float %2224)  ; FMin(a,b)
  %2226 = fmul fast float %2222, %2213
  %2227 = call float @dx.op.unary.f32(i32 7, float %2226)  ; Saturate(value)
  %2228 = fsub fast float %2219, %2215
  %2229 = fsub fast float %2220, %2216
  %2230 = fsub fast float %2221, %2217
  %2231 = fmul fast float %2227, %2228
  %2232 = fmul fast float %2227, %2229
  %2233 = fmul fast float %2227, %2230
  %2234 = fadd fast float %2231, %2215
  %2235 = fadd fast float %2232, %2216
  %2236 = fadd fast float %2233, %2217
  %2237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2238 = extractvalue %dx.types.CBufRet.f32 %2237, 0
  %2239 = extractvalue %dx.types.CBufRet.f32 %2237, 1
  %2240 = fadd fast float %2239, %2238
  %2241 = call float @dx.op.unary.f32(i32 7, float %2240)  ; Saturate(value)
  %2242 = extractvalue %dx.types.CBufRet.f32 %2237, 2
  %2243 = extractvalue %dx.types.CBufRet.f32 %2237, 3
  %2244 = fadd fast float %2243, %2242
  %2245 = call float @dx.op.unary.f32(i32 7, float %2244)  ; Saturate(value)
  %2246 = fmul fast float %2241, %2225
  %2247 = fmul fast float %2246, %2245
  br label %2330

; <label>:2248                                    ; preds = %2184
  %2249 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %2208
  %2250 = load float, float* %2249, align 4, !tbaa !78, !noalias !82
  %2251 = fcmp fast olt float %2250, %2115
  %2252 = icmp sgt i32 %2191, 0
  %2253 = and i1 %2252, %2251
  br i1 %2253, label %2254, label %2291

; <label>:2254                                    ; preds = %2248
  br label %2255

; <label>:2255                                    ; preds = %2284, %2254
  %2256 = phi float [ %2285, %2284 ], [ %2113, %2254 ]
  %2257 = phi float [ %2286, %2284 ], [ %2114, %2254 ]
  %2258 = phi float [ %2266, %2284 ], [ %2250, %2254 ]
  %2259 = phi i32 [ %2263, %2284 ], [ %2208, %2254 ]
  %2260 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %2259
  %2261 = load float, float* %2260, align 4, !tbaa !78, !noalias !82
  %2262 = icmp slt i32 %2259, 2
  %2263 = add nsw i32 %2259, 1
  %2264 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %2263
  %2265 = load float, float* %2264, align 4, !tbaa !78, !noalias !82
  %2266 = select i1 %2262, float %2265, float %2029
  %2267 = call float @dx.op.binary.f32(i32 36, float %2266, float %2261)  ; FMin(a,b)
  %2268 = call float @dx.op.binary.f32(i32 36, float %2115, float %2267)  ; FMin(a,b)
  %2269 = icmp eq i32 %1979, 0
  %2270 = fadd fast float %2268, %2258
  %2271 = fmul fast float %2270, %1960
  %2272 = fadd fast float %2271, %1973
  br i1 %2269, label %2278, label %2273, !dx.controlflow.hints !115

; <label>:2273                                    ; preds = %2255
  %2274 = fsub fast float %2268, %2258
  %2275 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2274)  ; FMax(a,b)
  %2276 = fmul fast float %2275, %2272
  %2277 = fadd fast float %2276, %2257
  br label %2284

; <label>:2278                                    ; preds = %2255
  %2279 = fsub fast float %2258, %2268
  %2280 = call float @dx.op.unary.f32(i32 6, float %2279)  ; FAbs(value)
  %2281 = fadd fast float %2280, %2256
  %2282 = fmul fast float %2280, %2272
  %2283 = fsub fast float %2257, %2282
  br label %2284

; <label>:2284                                    ; preds = %2278, %2273
  %2285 = phi float [ %2275, %2273 ], [ %2281, %2278 ]
  %2286 = phi float [ %2277, %2273 ], [ %2283, %2278 ]
  %2287 = fcmp fast olt float %2266, %2115
  %2288 = icmp slt i32 %2263, 3
  %2289 = and i1 %2288, %2287
  br i1 %2289, label %2255, label %2290

; <label>:2290                                    ; preds = %2284
  br label %2291

; <label>:2291                                    ; preds = %2290, %2248
  %2292 = phi float [ %2113, %2248 ], [ %2285, %2290 ]
  %2293 = phi float [ %2114, %2248 ], [ %2286, %2290 ]
  %2294 = fsub fast float %2029, %2292
  %2295 = select i1 %2031, float %2292, float %2294
  %2296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2297 = extractvalue %dx.types.CBufRet.f32 %2296, 0
  %2298 = extractvalue %dx.types.CBufRet.f32 %2296, 1
  %2299 = extractvalue %dx.types.CBufRet.f32 %2296, 2
  %2300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2301 = extractvalue %dx.types.CBufRet.f32 %2300, 0
  %2302 = extractvalue %dx.types.CBufRet.f32 %2300, 1
  %2303 = extractvalue %dx.types.CBufRet.f32 %2300, 2
  %2304 = extractvalue %dx.types.CBufRet.f32 %2300, 3
  %2305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2306 = extractvalue %dx.types.CBufRet.f32 %2305, 3
  %2307 = call float @dx.op.binary.f32(i32 36, float %2293, float %2306)  ; FMin(a,b)
  %2308 = fmul fast float %2304, %2295
  %2309 = call float @dx.op.unary.f32(i32 7, float %2308)  ; Saturate(value)
  %2310 = fsub fast float %2301, %2297
  %2311 = fsub fast float %2302, %2298
  %2312 = fsub fast float %2303, %2299
  %2313 = fmul fast float %2309, %2310
  %2314 = fmul fast float %2309, %2311
  %2315 = fmul fast float %2309, %2312
  %2316 = fadd fast float %2313, %2297
  %2317 = fadd fast float %2314, %2298
  %2318 = fadd fast float %2315, %2299
  %2319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2320 = extractvalue %dx.types.CBufRet.f32 %2319, 0
  %2321 = extractvalue %dx.types.CBufRet.f32 %2319, 1
  %2322 = fadd fast float %2321, %2320
  %2323 = call float @dx.op.unary.f32(i32 7, float %2322)  ; Saturate(value)
  %2324 = extractvalue %dx.types.CBufRet.f32 %2319, 2
  %2325 = extractvalue %dx.types.CBufRet.f32 %2319, 3
  %2326 = fadd fast float %2325, %2324
  %2327 = call float @dx.op.unary.f32(i32 7, float %2326)  ; Saturate(value)
  %2328 = fmul fast float %2323, %2307
  %2329 = fmul fast float %2328, %2327
  br label %2330

; <label>:2330                                    ; preds = %2291, %2210, %2045, %2027, %2025
  %2331 = phi float [ %2054, %2045 ], [ %2213, %2210 ], [ %2295, %2291 ], [ 0.000000e+00, %2025 ], [ 0.000000e+00, %2027 ]
  %2332 = phi float [ %2088, %2045 ], [ %2247, %2210 ], [ %2329, %2291 ], [ 0.000000e+00, %2025 ], [ 0.000000e+00, %2027 ]
  %2333 = phi float [ %2075, %2045 ], [ %2234, %2210 ], [ %2316, %2291 ], [ 0.000000e+00, %2025 ], [ 0.000000e+00, %2027 ]
  %2334 = phi float [ %2076, %2045 ], [ %2235, %2210 ], [ %2317, %2291 ], [ 0.000000e+00, %2025 ], [ 0.000000e+00, %2027 ]
  %2335 = phi float [ %2077, %2045 ], [ %2236, %2210 ], [ %2318, %2291 ], [ 0.000000e+00, %2025 ], [ 0.000000e+00, %2027 ]
  %2336 = fmul fast float %1968, %2332
  %2337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2338 = extractvalue %dx.types.CBufRet.f32 %2337, 2
  %2339 = fsub fast float %1975, %2338
  %2340 = fcmp fast olt float %2336, -2.000000e+01
  %2341 = call float @dx.op.unary.f32(i32 21, float %2336)  ; Exp(value)
  %2342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2343 = extractvalue %dx.types.CBufRet.f32 %2342, 2
  %2344 = extractvalue %dx.types.CBufRet.f32 %2342, 3
  %2345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2346 = extractvalue %dx.types.CBufRet.f32 %2345, 2
  %2347 = fmul fast float %2344, %2339
  %2348 = call float @dx.op.unary.f32(i32 7, float %2347)  ; Saturate(value)
  %2349 = fsub fast float 1.000000e+00, %2348
  %2350 = fmul fast float %1960, 5.000000e-01
  %2351 = fadd fast float %2350, 5.000000e-01
  %2352 = call float @dx.op.unary.f32(i32 7, float %2351)  ; Saturate(value)
  %2353 = fsub fast float 1.000000e+00, %2352
  %2354 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2349)  ; FMax(a,b)
  %2355 = fdiv fast float %2353, %2354
  %2356 = fsub fast float %2339, %1926
  %2357 = call float @dx.op.unary.f32(i32 6, float %2356)  ; FAbs(value)
  %2358 = fmul fast float %2357, %2343
  %2359 = call float @dx.op.unary.f32(i32 7, float %2355)  ; Saturate(value)
  %2360 = fsub fast float 1.000000e+00, %2358
  %2361 = fmul fast float %2360, %2359
  %2362 = fadd fast float %2361, %2358
  %2363 = fmul fast float %2346, %2339
  %2364 = call float @dx.op.unary.f32(i32 7, float %2363)  ; Saturate(value)
  %2365 = fsub fast float 1.000000e+00, %2362
  %2366 = fmul fast float %2365, %2364
  %2367 = fadd fast float %2366, %2362
  %2368 = call float @dx.op.unary.f32(i32 7, float %2367)  ; Saturate(value)
  %2369 = fadd fast float %2341, -1.000000e+00
  %2370 = select i1 %2340, float -1.000000e+00, float %2369
  %2371 = fmul fast float %2368, %2370
  %2372 = fadd fast float %2371, 1.000000e+00
  %2373 = fsub fast float -0.000000e+00, %2371
  %2374 = fmul fast float %2333, %2373
  %2375 = fmul fast float %2334, %2373
  %2376 = fmul fast float %2335, %2373
  br label %2377

; <label>:2377                                    ; preds = %2330, %1879
  %2378 = phi float [ %2331, %2330 ], [ 0.000000e+00, %1879 ]
  %2379 = phi float [ %2372, %2330 ], [ 1.000000e+00, %1879 ]
  %2380 = phi float [ %2374, %2330 ], [ 0.000000e+00, %1879 ]
  %2381 = phi float [ %2375, %2330 ], [ 0.000000e+00, %1879 ]
  %2382 = phi float [ %2376, %2330 ], [ 0.000000e+00, %1879 ]
  %2383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2384 = extractvalue %dx.types.CBufRet.f32 %2383, 1
  %2385 = fsub fast float 1.000000e+00, %2379
  %2386 = fmul fast float %2385, %1961
  %2387 = fmul fast float %2386, %2384
  %2388 = fsub fast float %1961, %2387
  br i1 %1954, label %2389, label %2418, !dx.controlflow.hints !116

; <label>:2389                                    ; preds = %2377
  %2390 = fmul fast float %1962, %1951
  %2391 = fadd fast float %2390, %1952
  %2392 = call float @dx.op.unary.f32(i32 7, float %2391)  ; Saturate(value)
  %2393 = fmul fast float %1933, %2388
  %2394 = fsub fast float -0.000000e+00, %2393
  %2395 = fmul fast float %1934, %2388
  %2396 = fsub fast float -0.000000e+00, %2395
  %2397 = call float @dx.op.unary.f32(i32 21, float %2394)  ; Exp(value)
  %2398 = call float @dx.op.unary.f32(i32 21, float %2396)  ; Exp(value)
  %2399 = call float @dx.op.binary.f32(i32 35, float %1941, float %2397)  ; FMax(a,b)
  %2400 = call float @dx.op.binary.f32(i32 35, float %1941, float %2398)  ; FMax(a,b)
  %2401 = fsub fast float %2400, %2399
  %2402 = fmul fast float %2401, %2392
  %2403 = fadd fast float %2402, %2399
  %2404 = call float @dx.op.unary.f32(i32 7, float %2403)  ; Saturate(value)
  %2405 = fsub fast float %1938, %1943
  %2406 = fsub fast float %1939, %1944
  %2407 = fsub fast float %1940, %1945
  %2408 = fmul fast float %2392, %2405
  %2409 = fmul fast float %2392, %2406
  %2410 = fmul fast float %2392, %2407
  %2411 = fadd fast float %2408, %1943
  %2412 = fadd fast float %2409, %1944
  %2413 = fadd fast float %2410, %1945
  %2414 = fsub fast float 1.000000e+00, %2404
  %2415 = fmul fast float %2414, %2411
  %2416 = fmul fast float %2414, %2412
  %2417 = fmul fast float %2414, %2413
  br label %2477

; <label>:2418                                    ; preds = %2377
  %2419 = fmul fast float %2388, %1950
  %2420 = call float @dx.op.unary.f32(i32 7, float %2419)  ; Saturate(value)
  %2421 = fsub fast float 2.000000e+00, %2420
  %2422 = fmul fast float %2420, 9.921875e-01
  %2423 = fmul fast float %2422, %2421
  %2424 = fadd fast float %2423, 3.906250e-03
  %2425 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %23, float %2424, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2426 = extractvalue %dx.types.ResRet.f32 %2425, 0
  %2427 = fsub fast float %2420, %2426
  %2428 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2427)  ; FMax(a,b)
  %2429 = fmul fast float %1936, %1926
  %2430 = call float @dx.op.unary.f32(i32 6, float %2429)  ; FAbs(value)
  %2431 = fcmp fast ogt float %2430, 0x3EB0C6F7A0000000
  br i1 %2431, label %2432, label %2438, !dx.controlflow.hints !117

; <label>:2432                                    ; preds = %2418
  %2433 = fmul fast float %2429, 0xBFF7154760000000
  %2434 = call float @dx.op.unary.f32(i32 21, float %2433)  ; Exp(value)
  %2435 = fsub fast float 1.000000e+00, %2434
  %2436 = fdiv fast float %2435, %2429
  %2437 = fmul fast float %2436, %1946
  br label %2438

; <label>:2438                                    ; preds = %2432, %2418
  %2439 = phi float [ %2437, %2432 ], [ %1946, %2418 ]
  %2440 = fadd fast float %2439, %1948
  %2441 = fmul fast float %2440, %2428
  %2442 = fmul fast float %1933, %2441
  %2443 = fsub fast float -0.000000e+00, %2442
  %2444 = fmul fast float %1934, %2441
  %2445 = fsub fast float -0.000000e+00, %2444
  %2446 = fmul fast float %1935, %2441
  %2447 = fsub fast float -0.000000e+00, %2446
  %2448 = call float @dx.op.unary.f32(i32 21, float %2443)  ; Exp(value)
  %2449 = call float @dx.op.unary.f32(i32 21, float %2445)  ; Exp(value)
  %2450 = call float @dx.op.unary.f32(i32 21, float %2447)  ; Exp(value)
  %2451 = fmul fast float %1962, %1962
  %2452 = fadd fast float %2451, 1.000000e+00
  %2453 = fmul fast float %2452, 0x3FAE8EC8A0000000
  %2454 = fmul fast float %2453, %1943
  %2455 = fmul fast float %2453, %1944
  %2456 = fmul fast float %2453, %1945
  %2457 = fmul fast float %1962, %1941
  %2458 = fsub fast float 1.000000e+00, %2457
  %2459 = fmul fast float %1941, %1941
  %2460 = fsub fast float 1.000000e+00, %2459
  %2461 = fmul fast float %2460, 0x3FB45F3060000000
  %2462 = fmul fast float %2458, %2458
  %2463 = fdiv fast float 1.000000e+00, %2462
  %2464 = fmul fast float %2461, %2463
  %2465 = fmul fast float %2464, %1938
  %2466 = fmul fast float %2464, %1939
  %2467 = fmul fast float %2464, %1940
  %2468 = fadd fast float %2465, %2454
  %2469 = fadd fast float %2466, %2455
  %2470 = fadd fast float %2467, %2456
  %2471 = fsub fast float 1.000000e+00, %2448
  %2472 = fsub fast float 1.000000e+00, %2449
  %2473 = fsub fast float 1.000000e+00, %2450
  %2474 = fmul fast float %2468, %2471
  %2475 = fmul fast float %2469, %2472
  %2476 = fmul fast float %2470, %2473
  br label %2477

; <label>:2477                                    ; preds = %2438, %2389
  %2478 = phi float [ %2415, %2389 ], [ %2474, %2438 ]
  %2479 = phi float [ %2416, %2389 ], [ %2475, %2438 ]
  %2480 = phi float [ %2417, %2389 ], [ %2476, %2438 ]
  %2481 = phi float [ %2404, %2389 ], [ %2448, %2438 ]
  %2482 = phi float [ %2404, %2389 ], [ %2449, %2438 ]
  %2483 = phi float [ %2404, %2389 ], [ %2450, %2438 ]
  br i1 %1970, label %2484, label %2682, !dx.controlflow.hints !118

; <label>:2484                                    ; preds = %2477
  %2485 = extractvalue %dx.types.CBufRet.f32 %2383, 0
  %2486 = fmul fast float %2485, %2385
  %2487 = fsub fast float %2380, %2478
  %2488 = fsub fast float %2381, %2479
  %2489 = fsub fast float %2382, %2480
  %2490 = fmul fast float %2486, %2487
  %2491 = fmul fast float %2486, %2488
  %2492 = fmul fast float %2486, %2489
  %2493 = fadd fast float %2490, %2478
  %2494 = fadd fast float %2491, %2479
  %2495 = fadd fast float %2492, %2480
  %2496 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2481)  ; FMax(a,b)
  %2497 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2482)  ; FMax(a,b)
  %2498 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2483)  ; FMax(a,b)
  %2499 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2379)  ; FMax(a,b)
  %2500 = call float @dx.op.binary.f32(i32 35, float %2378, float %2388)  ; FMax(a,b)
  %2501 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2500)  ; FMax(a,b)
  %2502 = fdiv fast float %2378, %2501
  %2503 = call float @dx.op.unary.f32(i32 7, float %2502)  ; Saturate(value)
  %2504 = fdiv fast float %2388, %2501
  %2505 = call float @dx.op.unary.f32(i32 7, float %2504)  ; Saturate(value)
  %2506 = fcmp fast une float %2499, 1.000000e+00
  br i1 %2506, label %2507, label %2520, !dx.controlflow.hints !119

; <label>:2507                                    ; preds = %2484
  %2508 = call float @dx.op.unary.f32(i32 23, float %2499)  ; Log(value)
  %2509 = fmul fast float %2508, 0x3FE62E4300000000
  %2510 = fmul fast float %2380, %2509
  %2511 = fsub fast float -0.000000e+00, %2510
  %2512 = fmul fast float %2381, %2509
  %2513 = fsub fast float -0.000000e+00, %2512
  %2514 = fmul fast float %2382, %2509
  %2515 = fsub fast float -0.000000e+00, %2514
  %2516 = fsub fast float 1.000000e+00, %2499
  %2517 = fdiv fast float %2511, %2516
  %2518 = fdiv fast float %2513, %2516
  %2519 = fdiv fast float %2515, %2516
  br label %2520

; <label>:2520                                    ; preds = %2507, %2484
  %2521 = phi float [ %2517, %2507 ], [ %2380, %2484 ]
  %2522 = phi float [ %2518, %2507 ], [ %2381, %2484 ]
  %2523 = phi float [ %2519, %2507 ], [ %2382, %2484 ]
  %2524 = phi float [ %2509, %2507 ], [ 0.000000e+00, %2484 ]
  %2525 = fcmp fast une float %2496, 1.000000e+00
  br i1 %2525, label %2526, label %2533, !dx.controlflow.hints !120

; <label>:2526                                    ; preds = %2520
  %2527 = call float @dx.op.unary.f32(i32 23, float %2496)  ; Log(value)
  %2528 = fmul fast float %2527, 0x3FE62E4300000000
  %2529 = fmul fast float %2493, %2528
  %2530 = fsub fast float -0.000000e+00, %2529
  %2531 = fsub fast float 1.000000e+00, %2496
  %2532 = fdiv fast float %2530, %2531
  br label %2533

; <label>:2533                                    ; preds = %2526, %2520
  %2534 = phi float [ %2532, %2526 ], [ %2493, %2520 ]
  %2535 = phi float [ %2528, %2526 ], [ 0.000000e+00, %2520 ]
  %2536 = fcmp fast une float %2497, 1.000000e+00
  br i1 %2536, label %2537, label %2544, !dx.controlflow.hints !120

; <label>:2537                                    ; preds = %2533
  %2538 = call float @dx.op.unary.f32(i32 23, float %2497)  ; Log(value)
  %2539 = fmul fast float %2538, 0x3FE62E4300000000
  %2540 = fmul fast float %2494, %2539
  %2541 = fsub fast float -0.000000e+00, %2540
  %2542 = fsub fast float 1.000000e+00, %2497
  %2543 = fdiv fast float %2541, %2542
  br label %2544

; <label>:2544                                    ; preds = %2537, %2533
  %2545 = phi float [ %2543, %2537 ], [ %2494, %2533 ]
  %2546 = phi float [ %2539, %2537 ], [ 0.000000e+00, %2533 ]
  %2547 = fcmp fast une float %2498, 1.000000e+00
  br i1 %2547, label %2548, label %2555, !dx.controlflow.hints !120

; <label>:2548                                    ; preds = %2544
  %2549 = call float @dx.op.unary.f32(i32 23, float %2498)  ; Log(value)
  %2550 = fmul fast float %2549, 0x3FE62E4300000000
  %2551 = fmul fast float %2495, %2550
  %2552 = fsub fast float -0.000000e+00, %2551
  %2553 = fsub fast float 1.000000e+00, %2498
  %2554 = fdiv fast float %2552, %2553
  br label %2555

; <label>:2555                                    ; preds = %2548, %2544
  %2556 = phi float [ %2554, %2548 ], [ %2495, %2544 ]
  %2557 = phi float [ %2550, %2548 ], [ 0.000000e+00, %2544 ]
  %2558 = fmul fast float %2521, %2505
  %2559 = fmul fast float %2522, %2505
  %2560 = fmul fast float %2523, %2505
  %2561 = fmul fast float %2524, %2505
  %2562 = fmul fast float %2534, %2503
  %2563 = fmul fast float %2545, %2503
  %2564 = fmul fast float %2556, %2503
  %2565 = fmul fast float %2535, %2503
  %2566 = fmul fast float %2546, %2503
  %2567 = fmul fast float %2557, %2503
  %2568 = fadd fast float %2562, %2558
  %2569 = fadd fast float %2563, %2559
  %2570 = fadd fast float %2564, %2560
  %2571 = fadd fast float %2565, %2561
  %2572 = fadd fast float %2566, %2561
  %2573 = fadd fast float %2567, %2561
  %2574 = fcmp fast une float %2571, 0.000000e+00
  br i1 %2574, label %2575, label %2582, !dx.controlflow.hints !121

; <label>:2575                                    ; preds = %2555
  %2576 = fmul fast float %2571, 0x3FF7154760000000
  %2577 = call float @dx.op.unary.f32(i32 21, float %2576)  ; Exp(value)
  %2578 = fsub fast float 1.000000e+00, %2577
  %2579 = fmul fast float %2568, %2578
  %2580 = fsub fast float -0.000000e+00, %2579
  %2581 = fdiv fast float %2580, %2571
  br label %2582

; <label>:2582                                    ; preds = %2575, %2555
  %2583 = phi float [ %2577, %2575 ], [ 1.000000e+00, %2555 ]
  %2584 = phi float [ %2581, %2575 ], [ %2568, %2555 ]
  %2585 = fcmp fast une float %2572, 0.000000e+00
  br i1 %2585, label %2586, label %2593, !dx.controlflow.hints !121

; <label>:2586                                    ; preds = %2582
  %2587 = fmul fast float %2572, 0x3FF7154760000000
  %2588 = call float @dx.op.unary.f32(i32 21, float %2587)  ; Exp(value)
  %2589 = fsub fast float 1.000000e+00, %2588
  %2590 = fmul fast float %2569, %2589
  %2591 = fsub fast float -0.000000e+00, %2590
  %2592 = fdiv fast float %2591, %2572
  br label %2593

; <label>:2593                                    ; preds = %2586, %2582
  %2594 = phi float [ %2588, %2586 ], [ 1.000000e+00, %2582 ]
  %2595 = phi float [ %2592, %2586 ], [ %2569, %2582 ]
  %2596 = fcmp fast une float %2573, 0.000000e+00
  br i1 %2596, label %2597, label %2604, !dx.controlflow.hints !121

; <label>:2597                                    ; preds = %2593
  %2598 = fmul fast float %2573, 0x3FF7154760000000
  %2599 = call float @dx.op.unary.f32(i32 21, float %2598)  ; Exp(value)
  %2600 = fsub fast float 1.000000e+00, %2599
  %2601 = fmul fast float %2570, %2600
  %2602 = fsub fast float -0.000000e+00, %2601
  %2603 = fdiv fast float %2602, %2573
  br label %2604

; <label>:2604                                    ; preds = %2597, %2593
  %2605 = phi float [ %2599, %2597 ], [ 1.000000e+00, %2593 ]
  %2606 = phi float [ %2603, %2597 ], [ %2570, %2593 ]
  %2607 = fcmp fast ogt float %2503, %2505
  br i1 %2607, label %2608, label %2628, !dx.controlflow.hints !122

; <label>:2608                                    ; preds = %2604
  %2609 = fsub fast float 1.000000e+00, %2505
  %2610 = fmul fast float %2521, %2609
  %2611 = fmul fast float %2522, %2609
  %2612 = fmul fast float %2523, %2609
  %2613 = fmul fast float %2524, %2609
  %2614 = fcmp fast une float %2613, 0.000000e+00
  br i1 %2614, label %2615, label %2666, !dx.controlflow.hints !123

; <label>:2615                                    ; preds = %2608
  %2616 = fmul fast float %2613, 0x3FF7154760000000
  %2617 = call float @dx.op.unary.f32(i32 21, float %2616)  ; Exp(value)
  %2618 = fsub fast float 1.000000e+00, %2617
  %2619 = fmul fast float %2610, %2618
  %2620 = fsub fast float -0.000000e+00, %2619
  %2621 = fmul fast float %2611, %2618
  %2622 = fsub fast float -0.000000e+00, %2621
  %2623 = fmul fast float %2612, %2618
  %2624 = fsub fast float -0.000000e+00, %2623
  %2625 = fdiv fast float %2620, %2613
  %2626 = fdiv fast float %2622, %2613
  %2627 = fdiv fast float %2624, %2613
  br label %2666

; <label>:2628                                    ; preds = %2604
  %2629 = fsub fast float 1.000000e+00, %2503
  %2630 = fmul fast float %2534, %2629
  %2631 = fmul fast float %2545, %2629
  %2632 = fmul fast float %2556, %2629
  %2633 = fmul fast float %2535, %2629
  %2634 = fmul fast float %2546, %2629
  %2635 = fmul fast float %2557, %2629
  %2636 = fcmp fast une float %2633, 0.000000e+00
  br i1 %2636, label %2637, label %2644, !dx.controlflow.hints !121

; <label>:2637                                    ; preds = %2628
  %2638 = fmul fast float %2633, 0x3FF7154760000000
  %2639 = call float @dx.op.unary.f32(i32 21, float %2638)  ; Exp(value)
  %2640 = fsub fast float 1.000000e+00, %2639
  %2641 = fmul fast float %2630, %2640
  %2642 = fsub fast float -0.000000e+00, %2641
  %2643 = fdiv fast float %2642, %2633
  br label %2644

; <label>:2644                                    ; preds = %2637, %2628
  %2645 = phi float [ %2643, %2637 ], [ %2630, %2628 ]
  %2646 = phi float [ %2639, %2637 ], [ 1.000000e+00, %2628 ]
  %2647 = fcmp fast une float %2634, 0.000000e+00
  br i1 %2647, label %2648, label %2655, !dx.controlflow.hints !121

; <label>:2648                                    ; preds = %2644
  %2649 = fmul fast float %2634, 0x3FF7154760000000
  %2650 = call float @dx.op.unary.f32(i32 21, float %2649)  ; Exp(value)
  %2651 = fsub fast float 1.000000e+00, %2650
  %2652 = fmul fast float %2631, %2651
  %2653 = fsub fast float -0.000000e+00, %2652
  %2654 = fdiv fast float %2653, %2634
  br label %2655

; <label>:2655                                    ; preds = %2648, %2644
  %2656 = phi float [ %2654, %2648 ], [ %2631, %2644 ]
  %2657 = phi float [ %2650, %2648 ], [ 1.000000e+00, %2644 ]
  %2658 = fcmp fast une float %2635, 0.000000e+00
  br i1 %2658, label %2659, label %2666, !dx.controlflow.hints !121

; <label>:2659                                    ; preds = %2655
  %2660 = fmul fast float %2635, 0x3FF7154760000000
  %2661 = call float @dx.op.unary.f32(i32 21, float %2660)  ; Exp(value)
  %2662 = fsub fast float 1.000000e+00, %2661
  %2663 = fmul fast float %2632, %2662
  %2664 = fsub fast float -0.000000e+00, %2663
  %2665 = fdiv fast float %2664, %2635
  br label %2666

; <label>:2666                                    ; preds = %2659, %2655, %2615, %2608
  %2667 = phi float [ %2665, %2659 ], [ %2627, %2615 ], [ %2612, %2608 ], [ %2632, %2655 ]
  %2668 = phi float [ %2656, %2659 ], [ %2626, %2615 ], [ %2611, %2608 ], [ %2656, %2655 ]
  %2669 = phi float [ %2645, %2659 ], [ %2625, %2615 ], [ %2610, %2608 ], [ %2645, %2655 ]
  %2670 = phi float [ %2661, %2659 ], [ %2617, %2615 ], [ 1.000000e+00, %2608 ], [ 1.000000e+00, %2655 ]
  %2671 = phi float [ %2657, %2659 ], [ %2617, %2615 ], [ 1.000000e+00, %2608 ], [ %2657, %2655 ]
  %2672 = phi float [ %2646, %2659 ], [ %2617, %2615 ], [ 1.000000e+00, %2608 ], [ %2646, %2655 ]
  %2673 = fmul fast float %2672, %2584
  %2674 = fmul fast float %2671, %2595
  %2675 = fmul fast float %2670, %2606
  %2676 = fadd fast float %2673, %2669
  %2677 = fadd fast float %2674, %2668
  %2678 = fadd fast float %2675, %2667
  %2679 = fmul fast float %2672, %2583
  %2680 = fmul fast float %2671, %2594
  %2681 = fmul fast float %2670, %2605
  br label %2682

; <label>:2682                                    ; preds = %2666, %2477
  %2683 = phi float [ %2483, %2477 ], [ %2681, %2666 ]
  %2684 = phi float [ %2482, %2477 ], [ %2680, %2666 ]
  %2685 = phi float [ %2481, %2477 ], [ %2679, %2666 ]
  %2686 = phi float [ %2480, %2477 ], [ %2678, %2666 ]
  %2687 = phi float [ %2479, %2477 ], [ %2677, %2666 ]
  %2688 = phi float [ %2478, %2477 ], [ %2676, %2666 ]
  %2689 = fmul fast float %2685, %1826
  %2690 = fmul fast float %2684, %1827
  %2691 = fmul fast float %2683, %1828
  %2692 = fsub fast float 1.000000e+00, %1889
  %2693 = fmul fast float %2688, %2692
  %2694 = fmul fast float %2687, %2692
  %2695 = fmul fast float %2686, %2692
  %2696 = fadd fast float %2693, %2689
  %2697 = fadd fast float %2694, %2690
  %2698 = fadd fast float %2695, %2691
  %2699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %2700 = extractvalue %dx.types.CBufRet.f32 %2699, 2
  %2701 = fmul fast float %2700, %1899
  %2702 = call float @dx.op.unary.f32(i32 7, float %2701)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %26, i32 %27, i32 undef, float %1889, float %1889, float %1889, float %1889, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2704 = extractvalue %dx.types.CBufRet.f32 %2703, 0
  %2705 = fmul fast float %2704, %2696
  %2706 = fmul fast float %2704, %2697
  %2707 = fmul fast float %2704, %2698
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %26, i32 %27, i32 undef, float %2705, float %2706, float %2707, float %2705, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %26, i32 %27, i32 undef, float %2702, float %2702, float %2702, float %2702, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!37 = !{void ()* @cs_fog_raymarching_clouds, !"cs_fog_raymarching_clouds", null, !4, !38}
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
!49 = distinct !{!49, !"dx.controlflow.hints", i32 1}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 1}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 1}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = !{!79, !79, i64 0}
!79 = !{!"float", !80, i64 0}
!80 = !{!"omnipotent char", !81, i64 0}
!81 = !{!"Simple C/C++ TBAA"}
!82 = !{!83, !85, !87, !88, !90, !91, !92}
!83 = distinct !{!83, !84, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!84 = distinct !{!84, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!85 = distinct !{!85, !86, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!86 = distinct !{!86, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!87 = distinct !{!87, !86, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!88 = distinct !{!88, !89, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!89 = distinct !{!89, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!90 = distinct !{!90, !89, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!91 = distinct !{!91, !89, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!92 = distinct !{!92, !89, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}
!94 = !{!95}
!95 = distinct !{!95, !96, !"\01?sort@@YAXAIAM00@Z: %c"}
!96 = distinct !{!96, !"\01?sort@@YAXAIAM00@Z"}
!97 = !{!98, !99, !83, !85, !87, !88, !90, !91, !92}
!98 = distinct !{!98, !96, !"\01?sort@@YAXAIAM00@Z: %a"}
!99 = distinct !{!99, !96, !"\01?sort@@YAXAIAM00@Z: %b"}
!100 = !{!99}
!101 = !{!98, !95, !83, !85, !87, !88, !90, !91, !92}
!102 = !{!98}
!103 = !{!99, !95, !83, !85, !87, !88, !90, !91, !92}
!104 = !{!105}
!105 = distinct !{!105, !106, !"\01?sort@@YAXAIAM00@Z: %c"}
!106 = distinct !{!106, !"\01?sort@@YAXAIAM00@Z"}
!107 = !{!108, !109, !83, !85, !87, !88, !90, !91, !92}
!108 = distinct !{!108, !106, !"\01?sort@@YAXAIAM00@Z: %a"}
!109 = distinct !{!109, !106, !"\01?sort@@YAXAIAM00@Z: %b"}
!110 = !{!109}
!111 = !{!108, !105, !83, !85, !87, !88, !90, !91, !92}
!112 = !{!108}
!113 = !{!109, !105, !83, !85, !87, !88, !90, !91, !92}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 2}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 2}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 2}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 2}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}

