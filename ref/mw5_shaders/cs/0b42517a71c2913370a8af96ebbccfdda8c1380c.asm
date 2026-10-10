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
; shader hash: 49a2ea8ab275d018c849c5cbfbc89fea
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

define void @cs_fog_raymarching_heightmap() {
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
  %202 = call float @dx.op.binary.f32(i32 36, float %131, float %200)  ; FMin(a,b)
  %203 = call float @dx.op.binary.f32(i32 35, float %108, float %201)  ; FMax(a,b)
  %204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %205 = extractvalue %dx.types.CBufRet.f32 %204, 0
  %206 = fmul fast float %56, 2.000000e+00
  %207 = fadd fast float %206, -1.000000e+00
  %208 = fmul fast float %205, %207
  %209 = fadd fast float %208, %203
  %210 = fcmp fast olt float %209, %202
  %211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %212 = extractvalue %dx.types.CBufRet.f32 %211, 2
  %213 = fcmp fast olt float %212, 1.000000e+00
  %214 = and i1 %210, %213
  br i1 %214, label %215, label %1786

; <label>:215                                     ; preds = %198
  %216 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %217 = extractvalue %dx.types.CBufRet.i32 %216, 1
  %218 = add i32 %217, -1
  %219 = fmul fast float %209, %112
  %220 = fadd fast float %219, %69
  %221 = fmul fast float %209, %111
  %222 = fadd fast float %221, %68
  %223 = fmul fast float %209, %110
  %224 = fadd fast float %223, %67
  br label %225

; <label>:225                                     ; preds = %1762, %215
  %226 = phi float [ %1764, %1762 ], [ 0.000000e+00, %215 ]
  %227 = phi float [ %1765, %1762 ], [ 1.000000e+00, %215 ]
  %228 = phi float [ %1766, %1762 ], [ 0.000000e+00, %215 ]
  %229 = phi float [ %1767, %1762 ], [ 0.000000e+00, %215 ]
  %230 = phi float [ %1768, %1762 ], [ 0.000000e+00, %215 ]
  %231 = phi float [ %1778, %1762 ], [ %224, %215 ]
  %232 = phi float [ %1779, %1762 ], [ %222, %215 ]
  %233 = phi float [ %1780, %1762 ], [ %220, %215 ]
  %234 = phi float [ %1763, %1762 ], [ %209, %215 ]
  %235 = phi i32 [ %420, %1762 ], [ %218, %215 ]
  %236 = phi float [ %1769, %1762 ], [ 0.000000e+00, %215 ]
  %237 = phi float [ %1770, %1762 ], [ 0.000000e+00, %215 ]
  %238 = phi float [ %1771, %1762 ], [ 0.000000e+00, %215 ]
  %239 = phi float [ %1772, %1762 ], [ 0.000000e+00, %215 ]
  %240 = phi float [ %1773, %1762 ], [ 0.000000e+00, %215 ]
  %241 = phi i32 [ %1774, %1762 ], [ 0, %215 ]
  %242 = fsub fast float -0.000000e+00, %232
  %243 = fsub fast float -0.000000e+00, %231
  %244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %245 = extractvalue %dx.types.CBufRet.f32 %244, 0
  %246 = icmp eq i32 %199, 0
  br i1 %246, label %417, label %247, !dx.controlflow.hints !38

; <label>:247                                     ; preds = %225
  %248 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %249 = extractvalue %dx.types.CBufRet.i32 %248, 1
  %250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %251 = extractvalue %dx.types.CBufRet.f32 %250, 1
  %252 = fcmp fast ogt float %251, %234
  br i1 %252, label %253, label %255, !dx.controlflow.hints !39

; <label>:253                                     ; preds = %247
  %254 = fsub fast float %251, %234
  br label %407

; <label>:255                                     ; preds = %247
  %256 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %257 = extractvalue %dx.types.CBufRet.i32 %256, 3
  %258 = icmp eq i32 %257, 0
  %259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %260 = extractvalue %dx.types.CBufRet.f32 %259, 2
  %261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %262 = extractvalue %dx.types.CBufRet.f32 %261, 2
  %263 = fsub fast float %260, %233
  %264 = fadd fast float %263, %262
  %265 = fsub fast float 0xC7EFFFFFE0000000, %233
  br i1 %258, label %275, label %266, !dx.controlflow.hints !35

; <label>:266                                     ; preds = %255
  %267 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %243, float %242, float %264)  ; Dot3(ax,ay,az,bx,by,bz)
  %268 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %110, float %111, float %112)  ; Dot3(ax,ay,az,bx,by,bz)
  %269 = fdiv fast float 1.000000e+00, %268
  %270 = fmul fast float %269, %267
  %271 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %243, float %242, float %265)  ; Dot3(ax,ay,az,bx,by,bz)
  %272 = fmul fast float %269, %271
  %273 = call float @dx.op.binary.f32(i32 36, float %270, float %272)  ; FMin(a,b)
  %274 = call float @dx.op.binary.f32(i32 35, float %270, float %272)  ; FMax(a,b)
  br label %308

; <label>:275                                     ; preds = %255
  %276 = extractvalue %dx.types.CBufRet.f32 %259, 0
  %277 = extractvalue %dx.types.CBufRet.f32 %259, 1
  %278 = extractvalue %dx.types.CBufRet.f32 %261, 0
  %279 = extractvalue %dx.types.CBufRet.f32 %261, 1
  %280 = fdiv fast float 1.000000e+00, %110
  %281 = fdiv fast float 1.000000e+00, %111
  %282 = fdiv fast float 1.000000e+00, %112
  %283 = fsub fast float %276, %231
  %284 = fmul fast float %280, %283
  %285 = fadd fast float %283, %278
  %286 = fmul fast float %285, %280
  %287 = call float @dx.op.binary.f32(i32 36, float %284, float %286)  ; FMin(a,b)
  %288 = call float @dx.op.binary.f32(i32 35, float %284, float %286)  ; FMax(a,b)
  %289 = fsub fast float %277, %232
  %290 = fmul fast float %281, %289
  %291 = fadd fast float %289, %279
  %292 = fmul fast float %291, %281
  %293 = call float @dx.op.binary.f32(i32 36, float %290, float %292)  ; FMin(a,b)
  %294 = call float @dx.op.binary.f32(i32 35, float %287, float %293)  ; FMax(a,b)
  %295 = call float @dx.op.binary.f32(i32 35, float %290, float %292)  ; FMax(a,b)
  %296 = call float @dx.op.binary.f32(i32 36, float %288, float %295)  ; FMin(a,b)
  %297 = fmul fast float %282, %265
  %298 = fmul fast float %282, %264
  %299 = call float @dx.op.binary.f32(i32 36, float %297, float %298)  ; FMin(a,b)
  %300 = call float @dx.op.binary.f32(i32 35, float %294, float %299)  ; FMax(a,b)
  %301 = call float @dx.op.binary.f32(i32 35, float %297, float %298)  ; FMax(a,b)
  %302 = call float @dx.op.binary.f32(i32 36, float %296, float %301)  ; FMin(a,b)
  %303 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %300)  ; FMax(a,b)
  %304 = fcmp fast ult float %302, %303
  br i1 %304, label %308, label %305, !dx.controlflow.hints !36

; <label>:305                                     ; preds = %275
  %306 = call float @dx.op.binary.f32(i32 36, float %300, float %302)  ; FMin(a,b)
  %307 = call float @dx.op.binary.f32(i32 35, float %300, float %302)  ; FMax(a,b)
  br label %308

; <label>:308                                     ; preds = %305, %275, %266
  %309 = phi float [ %273, %266 ], [ %306, %305 ], [ 0.000000e+00, %275 ]
  %310 = phi float [ %274, %266 ], [ %307, %305 ], [ 0.000000e+00, %275 ]
  %311 = fcmp fast ogt float %309, 0.000000e+00
  br i1 %311, label %407, label %312, !dx.controlflow.hints !40

; <label>:312                                     ; preds = %308
  %313 = fcmp fast ugt float %310, 0.000000e+00
  br i1 %313, label %314, label %407, !dx.controlflow.hints !41

; <label>:314                                     ; preds = %312
  %315 = icmp sgt i32 %235, 0
  br i1 %315, label %316, label %401

; <label>:316                                     ; preds = %314
  br label %317

; <label>:317                                     ; preds = %397, %316
  %318 = phi i32 [ %398, %397 ], [ %235, %316 ]
  %319 = sitofp i32 %318 to float
  %320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %321 = extractvalue %dx.types.CBufRet.f32 %320, 0
  %322 = extractvalue %dx.types.CBufRet.f32 %320, 1
  %323 = fsub fast float %231, %321
  %324 = fsub fast float %232, %322
  %325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %326 = extractvalue %dx.types.CBufRet.f32 %325, 0
  %327 = extractvalue %dx.types.CBufRet.f32 %325, 1
  %328 = fmul fast float %323, %326
  %329 = fmul fast float %324, %327
  %330 = fsub fast float 1.000000e+00, %329
  %331 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %332 = extractvalue %dx.types.CBufRet.i32 %331, 3
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %340, label %334, !dx.controlflow.hints !42

; <label>:334                                     ; preds = %317
  %335 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %17, float %328, float %330, float undef, float undef, i32 0, i32 0, i32 undef, float %319)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %336 = extractvalue %dx.types.ResRet.f32 %335, 0
  %337 = extractvalue %dx.types.ResRet.f32 %335, 1
  %338 = extractvalue %dx.types.ResRet.f32 %335, 2
  %339 = extractvalue %dx.types.ResRet.f32 %335, 3
  br label %346

; <label>:340                                     ; preds = %317
  %341 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %18, float %328, float %330, float undef, float undef, i32 0, i32 0, i32 undef, float %319)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %342 = extractvalue %dx.types.ResRet.f32 %341, 0
  %343 = extractvalue %dx.types.ResRet.f32 %341, 1
  %344 = extractvalue %dx.types.ResRet.f32 %341, 2
  %345 = extractvalue %dx.types.ResRet.f32 %341, 3
  br label %346

; <label>:346                                     ; preds = %340, %334
  %347 = phi float [ %336, %334 ], [ %342, %340 ]
  %348 = phi float [ %337, %334 ], [ %343, %340 ]
  %349 = phi float [ %338, %334 ], [ %344, %340 ]
  %350 = phi float [ %339, %334 ], [ %345, %340 ]
  %351 = extractvalue %dx.types.CBufRet.f32 %325, 3
  %352 = fmul fast float %351, %347
  %353 = extractvalue %dx.types.CBufRet.f32 %320, 2
  %354 = fadd fast float %352, %353
  %355 = fmul fast float %351, %348
  %356 = fadd fast float %355, %353
  %357 = fmul fast float %351, %349
  %358 = fadd fast float %357, %353
  %359 = and i32 %318, 31
  %360 = shl i32 1, %359
  %361 = uitofp i32 %360 to float
  %362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %363 = extractvalue %dx.types.CBufRet.f32 %362, 3
  %364 = fdiv fast float 1.000000e+00, %363
  %365 = fmul fast float %364, %361
  %366 = fmul fast float %365, %112
  %367 = fadd fast float %366, %233
  %368 = fcmp fast oeq float %350, 0.000000e+00
  %369 = fcmp fast ogt float %233, %356
  %370 = fcmp fast ogt float %367, %356
  %371 = and i1 %369, %370
  %372 = or i1 %368, %371
  br i1 %372, label %373, label %377, !dx.controlflow.hints !43

; <label>:373                                     ; preds = %346
  %374 = add nsw i32 %318, 1
  %375 = add nsw i32 %249, -1
  %376 = call i32 @dx.op.binary.i32(i32 38, i32 %374, i32 %375)  ; IMin(a,b)
  br label %407

; <label>:377                                     ; preds = %346
  %378 = fcmp fast olt float %233, %358
  %379 = fcmp fast olt float %367, %358
  %380 = and i1 %378, %379
  br i1 %380, label %381, label %385, !dx.controlflow.hints !44

; <label>:381                                     ; preds = %377
  %382 = add nsw i32 %318, 1
  %383 = add nsw i32 %249, -1
  %384 = call i32 @dx.op.binary.i32(i32 38, i32 %382, i32 %383)  ; IMin(a,b)
  br label %407

; <label>:385                                     ; preds = %377
  %386 = fcmp fast olt float %233, %354
  %387 = fcmp fast olt float %367, %354
  %388 = and i1 %386, %387
  br i1 %388, label %389, label %397, !dx.controlflow.hints !45

; <label>:389                                     ; preds = %385
  %390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %391 = extractvalue %dx.types.CBufRet.f32 %390, 3
  %392 = extractvalue %dx.types.CBufRet.f32 %325, 2
  %393 = fcmp fast une float %391, %392
  br i1 %393, label %394, label %401, !dx.controlflow.hints !46

; <label>:394                                     ; preds = %389
  %395 = fsub fast float %233, %358
  %396 = call float @dx.op.binary.f32(i32 36, float %365, float %395)  ; FMin(a,b)
  br label %401

; <label>:397                                     ; preds = %385
  %398 = add nsw i32 %318, -1
  %399 = icmp sgt i32 %318, 1
  br i1 %399, label %317, label %400

; <label>:400                                     ; preds = %397
  br label %401

; <label>:401                                     ; preds = %400, %394, %389, %314
  %402 = phi float [ %396, %394 ], [ %365, %389 ], [ 0.000000e+00, %314 ], [ 0.000000e+00, %400 ]
  %403 = phi i32 [ %318, %394 ], [ %318, %389 ], [ %235, %314 ], [ %398, %400 ]
  %404 = add nsw i32 %403, 1
  %405 = add nsw i32 %249, -1
  %406 = call i32 @dx.op.binary.i32(i32 38, i32 %404, i32 %405)  ; IMin(a,b)
  br label %407

; <label>:407                                     ; preds = %401, %381, %373, %312, %308, %253
  %408 = phi float [ %254, %253 ], [ %365, %373 ], [ %365, %381 ], [ %402, %401 ], [ 0x47EFFFFFE0000000, %312 ], [ %309, %308 ]
  %409 = phi i32 [ %199, %253 ], [ %199, %373 ], [ %199, %381 ], [ %199, %401 ], [ 0, %312 ], [ %199, %308 ]
  %410 = phi i32 [ %235, %253 ], [ %376, %373 ], [ %384, %381 ], [ %406, %401 ], [ %235, %312 ], [ %235, %308 ]
  %411 = icmp ne i32 %409, 0
  %412 = zext i1 %411 to i32
  %413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %414 = extractvalue %dx.types.CBufRet.f32 %413, 2
  %415 = call float @dx.op.binary.f32(i32 35, float %408, float %414)  ; FMax(a,b)
  %416 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %415)  ; FMin(a,b)
  br label %417

; <label>:417                                     ; preds = %407, %225
  %418 = phi i32 [ %412, %407 ], [ 0, %225 ]
  %419 = phi float [ %416, %407 ], [ 0x47EFFFFFE0000000, %225 ]
  %420 = phi i32 [ %410, %407 ], [ %235, %225 ]
  %421 = extractvalue %dx.types.CBufRet.f32 %244, 2
  %422 = fmul fast float %421, %234
  %423 = call float @dx.op.unary.f32(i32 23, float %422)  ; Log(value)
  %424 = fmul fast float %423, 0x3FE62E4300000000
  %425 = call float @dx.op.binary.f32(i32 35, float %424, float 1.000000e+00)  ; FMax(a,b)
  %426 = fmul fast float %425, 0x47EFFFFFE0000000
  %427 = call float @dx.op.binary.f32(i32 36, float %426, float %419)  ; FMin(a,b)
  %428 = call float @dx.op.binary.f32(i32 35, float %427, float %245)  ; FMax(a,b)
  %429 = fsub fast float %202, %234
  %430 = fadd fast float %429, 0x3F1A36E2E0000000
  %431 = call float @dx.op.binary.f32(i32 36, float %430, float %428)  ; FMin(a,b)
  %432 = icmp eq i32 %418, 0
  br i1 %432, label %538, label %433, !dx.controlflow.hints !47

; <label>:433                                     ; preds = %417
  %434 = fcmp fast olt float %430, %428
  %435 = fmul fast float %112, %55
  %436 = fmul fast float %435, %431
  %437 = fadd fast float %436, %233
  %438 = fmul fast float %112, %56
  %439 = fmul fast float %438, %431
  %440 = fadd fast float %439, %233
  %441 = fmul fast float %112, %57
  %442 = fmul fast float %441, %431
  %443 = fadd fast float %442, %233
  br i1 %434, label %444, label %449, !dx.controlflow.hints !48

; <label>:444                                     ; preds = %433
  %445 = fmul fast float %431, %110
  %446 = fmul fast float %431, %111
  %447 = fadd fast float %445, %231
  %448 = fadd fast float %446, %232
  br label %449

; <label>:449                                     ; preds = %444, %433
  %450 = phi float [ %447, %444 ], [ %231, %433 ]
  %451 = phi float [ %448, %444 ], [ %232, %433 ]
  %452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %453 = extractvalue %dx.types.CBufRet.f32 %452, 0
  %454 = extractvalue %dx.types.CBufRet.f32 %452, 1
  %455 = fsub fast float %450, %453
  %456 = fsub fast float %451, %454
  %457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %458 = extractvalue %dx.types.CBufRet.f32 %457, 0
  %459 = extractvalue %dx.types.CBufRet.f32 %457, 1
  %460 = fmul fast float %455, %458
  %461 = fmul fast float %456, %459
  %462 = fsub fast float 1.000000e+00, %461
  %463 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %464 = extractvalue %dx.types.CBufRet.i32 %463, 3
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %472, label %466, !dx.controlflow.hints !42

; <label>:466                                     ; preds = %449
  %467 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %17, float %460, float %462, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %468 = extractvalue %dx.types.ResRet.f32 %467, 0
  %469 = extractvalue %dx.types.ResRet.f32 %467, 1
  %470 = extractvalue %dx.types.ResRet.f32 %467, 2
  %471 = extractvalue %dx.types.ResRet.f32 %467, 3
  br label %478

; <label>:472                                     ; preds = %449
  %473 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %18, float %460, float %462, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %474 = extractvalue %dx.types.ResRet.f32 %473, 0
  %475 = extractvalue %dx.types.ResRet.f32 %473, 1
  %476 = extractvalue %dx.types.ResRet.f32 %473, 2
  %477 = extractvalue %dx.types.ResRet.f32 %473, 3
  br label %478

; <label>:478                                     ; preds = %472, %466
  %479 = phi float [ %468, %466 ], [ %474, %472 ]
  %480 = phi float [ %469, %466 ], [ %475, %472 ]
  %481 = phi float [ %470, %466 ], [ %476, %472 ]
  %482 = phi float [ %471, %466 ], [ %477, %472 ]
  %483 = extractvalue %dx.types.CBufRet.f32 %457, 3
  %484 = fmul fast float %483, %480
  %485 = fmul fast float %484, %479
  %486 = fsub fast float %484, %485
  %487 = fcmp fast ole float %486, 0.000000e+00
  %488 = extractvalue %dx.types.CBufRet.f32 %452, 2
  %489 = fadd fast float %485, %488
  %490 = fmul fast float %483, %481
  %491 = fadd fast float %490, %488
  %492 = fdiv fast float 1.000000e+00, %486
  %493 = select i1 %487, float 1.000000e+06, float %492
  %494 = fsub fast float %437, %489
  %495 = fmul fast float %493, %494
  %496 = call float @dx.op.unary.f32(i32 7, float %495)  ; Saturate(value)
  %497 = extractvalue %dx.types.CBufRet.f32 %457, 2
  %498 = fmul fast float %497, %496
  %499 = fsub fast float %497, %498
  %500 = fcmp fast olt float %437, %491
  %501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %502 = extractvalue %dx.types.CBufRet.f32 %501, 3
  %503 = select i1 %500, float %502, float 1.000000e+00
  %504 = fmul fast float %499, %503
  %505 = fsub fast float %440, %489
  %506 = fmul fast float %493, %505
  %507 = call float @dx.op.unary.f32(i32 7, float %506)  ; Saturate(value)
  %508 = fmul fast float %497, %507
  %509 = fsub fast float %497, %508
  %510 = fcmp fast olt float %440, %491
  %511 = select i1 %510, float %502, float 1.000000e+00
  %512 = fmul fast float %509, %511
  %513 = fadd fast float %512, %504
  %514 = fsub fast float %443, %489
  %515 = fmul fast float %493, %514
  %516 = call float @dx.op.unary.f32(i32 7, float %515)  ; Saturate(value)
  %517 = fmul fast float %497, %516
  %518 = fsub fast float %497, %517
  %519 = fcmp fast olt float %443, %491
  %520 = select i1 %519, float %502, float 1.000000e+00
  %521 = fmul fast float %518, %520
  %522 = fadd fast float %513, %521
  %523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %524 = extractvalue %dx.types.CBufRet.f32 %523, 2
  %525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %526 = extractvalue %dx.types.CBufRet.f32 %525, 0
  %527 = extractvalue %dx.types.CBufRet.f32 %525, 1
  %528 = extractvalue %dx.types.CBufRet.f32 %525, 2
  %529 = fmul fast float %431, 0x3FD5555560000000
  %530 = fmul fast float %529, %482
  %531 = fmul fast float %530, %524
  %532 = fmul fast float %531, %522
  %533 = extractvalue %dx.types.CBufRet.f32 %501, 0
  %534 = fmul fast float %532, %526
  %535 = fmul fast float %532, %527
  %536 = fmul fast float %532, %528
  %537 = fmul fast float %532, %533
  br label %538

; <label>:538                                     ; preds = %478, %417
  %539 = phi float [ %532, %478 ], [ 0.000000e+00, %417 ]
  %540 = phi float [ %537, %478 ], [ 0.000000e+00, %417 ]
  %541 = phi float [ %534, %478 ], [ 0.000000e+00, %417 ]
  %542 = phi float [ %535, %478 ], [ 0.000000e+00, %417 ]
  %543 = phi float [ %536, %478 ], [ 0.000000e+00, %417 ]
  %544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %545 = extractvalue %dx.types.CBufRet.f32 %544, 1
  %546 = fcmp fast ogt float %539, %545
  br i1 %546, label %547, label %553, !dx.controlflow.hints !49

; <label>:547                                     ; preds = %538
  %548 = fdiv fast float 1.000000e+00, %539
  %549 = fmul fast float %548, %541
  %550 = fmul fast float %548, %542
  %551 = fmul fast float %548, %543
  %552 = fmul fast float %548, %540
  br label %553

; <label>:553                                     ; preds = %547, %538
  %554 = phi float [ %552, %547 ], [ %540, %538 ]
  %555 = phi float [ %549, %547 ], [ %541, %538 ]
  %556 = phi float [ %550, %547 ], [ %542, %538 ]
  %557 = phi float [ %551, %547 ], [ %543, %538 ]
  br i1 %546, label %560, label %558, !dx.controlflow.hints !50

; <label>:558                                     ; preds = %553
  %559 = fadd fast float %431, %234
  br label %1762

; <label>:560                                     ; preds = %553
  %561 = fmul fast float %539, 0xBFF7154760000000
  %562 = call float @dx.op.unary.f32(i32 21, float %561)  ; Exp(value)
  %563 = call float @dx.op.unary.f32(i32 7, float %562)  ; Saturate(value)
  %564 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %565 = extractvalue %dx.types.CBufRet.i32 %564, 0
  %566 = icmp eq i32 %565, 1
  br i1 %566, label %567, label %602, !dx.controlflow.hints !51

; <label>:567                                     ; preds = %560
  %568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %569 = extractvalue %dx.types.CBufRet.f32 %568, 0
  %570 = extractvalue %dx.types.CBufRet.f32 %568, 1
  %571 = fsub fast float %231, %569
  %572 = fsub fast float %232, %570
  %573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %574 = extractvalue %dx.types.CBufRet.f32 %573, 0
  %575 = extractvalue %dx.types.CBufRet.f32 %573, 1
  %576 = fmul fast float %571, %574
  %577 = fmul fast float %572, %575
  %578 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %18, float %576, float %577, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %579 = extractvalue %dx.types.ResRet.f32 %578, 0
  %580 = fcmp fast ogt float %579, 0.000000e+00
  %581 = extractvalue %dx.types.CBufRet.i32 %564, 3
  %582 = icmp ne i32 %581, 0
  %583 = and i1 %580, %582
  br i1 %583, label %584, label %602, !dx.controlflow.hints !52

; <label>:584                                     ; preds = %567
  %585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %586 = extractvalue %dx.types.CBufRet.f32 %585, 0
  %587 = extractvalue %dx.types.CBufRet.f32 %585, 1
  %588 = fsub fast float %231, %586
  %589 = fsub fast float %232, %587
  %590 = fmul fast float %588, %588
  %591 = fmul fast float %589, %589
  %592 = fadd fast float %590, %591
  %593 = uitofp i32 %581 to float
  %594 = fmul fast float %593, %593
  %595 = fcmp fast ogt float %592, %594
  br i1 %595, label %602, label %596, !dx.controlflow.hints !53

; <label>:596                                     ; preds = %584
  %597 = call float @dx.op.unary.f32(i32 24, float %592)  ; Sqrt(value)
  %598 = fsub fast float %593, %597
  %599 = fmul fast float %598, 0x3F75555560000000
  %600 = call float @dx.op.unary.f32(i32 7, float %599)  ; Saturate(value)
  %601 = call float @dx.op.binary.f32(i32 36, float %600, float %579)  ; FMin(a,b)
  br label %602

; <label>:602                                     ; preds = %596, %584, %567, %560
  %603 = phi float [ 1.000000e+00, %560 ], [ %601, %596 ], [ %579, %567 ], [ 0.000000e+00, %584 ]
  %604 = fcmp fast ogt float %603, 0.000000e+00
  br i1 %604, label %605, label %678, !dx.controlflow.hints !54

; <label>:605                                     ; preds = %602
  %606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.i32 %606, 0
  %608 = extractvalue %dx.types.ResRet.i32 %606, 1
  %609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %610 = extractvalue %dx.types.ResRet.i32 %609, 0
  %611 = extractvalue %dx.types.ResRet.i32 %609, 1
  %612 = extractvalue %dx.types.ResRet.i32 %609, 2
  %613 = extractvalue %dx.types.ResRet.i32 %609, 3
  %614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %615 = extractvalue %dx.types.ResRet.i32 %614, 0
  %616 = extractvalue %dx.types.ResRet.i32 %614, 1
  %617 = extractvalue %dx.types.ResRet.i32 %614, 2
  %618 = extractvalue %dx.types.ResRet.i32 %614, 3
  %619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %620 = extractvalue %dx.types.ResRet.i32 %619, 0
  %621 = extractvalue %dx.types.ResRet.i32 %619, 1
  %622 = extractvalue %dx.types.ResRet.i32 %619, 2
  %623 = extractvalue %dx.types.ResRet.i32 %619, 3
  %624 = and i32 %620, 65535
  %625 = call float @dx.op.legacyF16ToF32(i32 131, i32 %624)  ; LegacyF16ToF32(value)
  %626 = lshr i32 %620, 16
  %627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %626)  ; LegacyF16ToF32(value)
  %628 = and i32 %621, 65535
  %629 = call float @dx.op.legacyF16ToF32(i32 131, i32 %628)  ; LegacyF16ToF32(value)
  %630 = lshr i32 %621, 16
  %631 = call float @dx.op.legacyF16ToF32(i32 131, i32 %630)  ; LegacyF16ToF32(value)
  %632 = and i32 %622, 65535
  %633 = call float @dx.op.legacyF16ToF32(i32 131, i32 %632)  ; LegacyF16ToF32(value)
  %634 = lshr i32 %622, 16
  %635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %634)  ; LegacyF16ToF32(value)
  %636 = and i32 %623, 65535
  %637 = call float @dx.op.legacyF16ToF32(i32 131, i32 %636)  ; LegacyF16ToF32(value)
  %638 = lshr i32 %623, 16
  %639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %638)  ; LegacyF16ToF32(value)
  %640 = and i32 %615, 65535
  %641 = call float @dx.op.legacyF16ToF32(i32 131, i32 %640)  ; LegacyF16ToF32(value)
  %642 = lshr i32 %615, 16
  %643 = call float @dx.op.legacyF16ToF32(i32 131, i32 %642)  ; LegacyF16ToF32(value)
  %644 = and i32 %616, 65535
  %645 = call float @dx.op.legacyF16ToF32(i32 131, i32 %644)  ; LegacyF16ToF32(value)
  %646 = lshr i32 %616, 16
  %647 = call float @dx.op.legacyF16ToF32(i32 131, i32 %646)  ; LegacyF16ToF32(value)
  %648 = and i32 %617, 65535
  %649 = call float @dx.op.legacyF16ToF32(i32 131, i32 %648)  ; LegacyF16ToF32(value)
  %650 = lshr i32 %617, 16
  %651 = call float @dx.op.legacyF16ToF32(i32 131, i32 %650)  ; LegacyF16ToF32(value)
  %652 = and i32 %618, 65535
  %653 = call float @dx.op.legacyF16ToF32(i32 131, i32 %652)  ; LegacyF16ToF32(value)
  %654 = lshr i32 %618, 16
  %655 = call float @dx.op.legacyF16ToF32(i32 131, i32 %654)  ; LegacyF16ToF32(value)
  %656 = and i32 %610, 65535
  %657 = call float @dx.op.legacyF16ToF32(i32 131, i32 %656)  ; LegacyF16ToF32(value)
  %658 = lshr i32 %610, 16
  %659 = call float @dx.op.legacyF16ToF32(i32 131, i32 %658)  ; LegacyF16ToF32(value)
  %660 = and i32 %611, 65535
  %661 = call float @dx.op.legacyF16ToF32(i32 131, i32 %660)  ; LegacyF16ToF32(value)
  %662 = lshr i32 %611, 16
  %663 = call float @dx.op.legacyF16ToF32(i32 131, i32 %662)  ; LegacyF16ToF32(value)
  %664 = and i32 %612, 65535
  %665 = call float @dx.op.legacyF16ToF32(i32 131, i32 %664)  ; LegacyF16ToF32(value)
  %666 = lshr i32 %612, 16
  %667 = call float @dx.op.legacyF16ToF32(i32 131, i32 %666)  ; LegacyF16ToF32(value)
  %668 = and i32 %613, 65535
  %669 = call float @dx.op.legacyF16ToF32(i32 131, i32 %668)  ; LegacyF16ToF32(value)
  %670 = lshr i32 %613, 16
  %671 = call float @dx.op.legacyF16ToF32(i32 131, i32 %670)  ; LegacyF16ToF32(value)
  %672 = and i32 %607, 65535
  %673 = call float @dx.op.legacyF16ToF32(i32 131, i32 %672)  ; LegacyF16ToF32(value)
  %674 = lshr i32 %607, 16
  %675 = call float @dx.op.legacyF16ToF32(i32 131, i32 %674)  ; LegacyF16ToF32(value)
  %676 = and i32 %608, 65535
  %677 = call float @dx.op.legacyF16ToF32(i32 131, i32 %676)  ; LegacyF16ToF32(value)
  br label %678

; <label>:678                                     ; preds = %605, %602
  %679 = phi float [ %677, %605 ], [ 0.000000e+00, %602 ]
  %680 = phi float [ %675, %605 ], [ 0.000000e+00, %602 ]
  %681 = phi float [ %673, %605 ], [ 0.000000e+00, %602 ]
  %682 = phi float [ %671, %605 ], [ 0.000000e+00, %602 ]
  %683 = phi float [ %669, %605 ], [ 0.000000e+00, %602 ]
  %684 = phi float [ %667, %605 ], [ 0.000000e+00, %602 ]
  %685 = phi float [ %665, %605 ], [ 0.000000e+00, %602 ]
  %686 = phi float [ %663, %605 ], [ 0.000000e+00, %602 ]
  %687 = phi float [ %661, %605 ], [ 0.000000e+00, %602 ]
  %688 = phi float [ %659, %605 ], [ 0.000000e+00, %602 ]
  %689 = phi float [ %657, %605 ], [ 0.000000e+00, %602 ]
  %690 = phi float [ %655, %605 ], [ 0.000000e+00, %602 ]
  %691 = phi float [ %653, %605 ], [ 0.000000e+00, %602 ]
  %692 = phi float [ %651, %605 ], [ 0.000000e+00, %602 ]
  %693 = phi float [ %649, %605 ], [ 0.000000e+00, %602 ]
  %694 = phi float [ %647, %605 ], [ 0.000000e+00, %602 ]
  %695 = phi float [ %645, %605 ], [ 0.000000e+00, %602 ]
  %696 = phi float [ %643, %605 ], [ 0.000000e+00, %602 ]
  %697 = phi float [ %641, %605 ], [ 0.000000e+00, %602 ]
  %698 = phi float [ %639, %605 ], [ 0.000000e+00, %602 ]
  %699 = phi float [ %637, %605 ], [ 0.000000e+00, %602 ]
  %700 = phi float [ %635, %605 ], [ 0.000000e+00, %602 ]
  %701 = phi float [ %633, %605 ], [ 0.000000e+00, %602 ]
  %702 = phi float [ %631, %605 ], [ 0.000000e+00, %602 ]
  %703 = phi float [ %629, %605 ], [ 0.000000e+00, %602 ]
  %704 = phi float [ %627, %605 ], [ 0.000000e+00, %602 ]
  %705 = phi float [ %625, %605 ], [ 0.000000e+00, %602 ]
  %706 = fcmp fast olt float %603, 1.000000e+00
  br i1 %706, label %707, label %1367, !dx.controlflow.hints !55

; <label>:707                                     ; preds = %678
  %708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %709 = extractvalue %dx.types.CBufRet.f32 %708, 0
  %710 = extractvalue %dx.types.CBufRet.f32 %708, 1
  %711 = fsub fast float %231, %709
  %712 = fsub fast float %232, %710
  %713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %714 = extractvalue %dx.types.CBufRet.f32 %713, 0
  %715 = extractvalue %dx.types.CBufRet.f32 %713, 1
  %716 = fmul fast float %711, %714
  %717 = fmul fast float %712, %715
  %718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %719 = extractvalue %dx.types.CBufRet.f32 %718, 0
  %720 = fmul fast float %719, %716
  %721 = extractvalue %dx.types.CBufRet.f32 %718, 1
  %722 = fadd fast float %720, %721
  %723 = extractvalue %dx.types.CBufRet.f32 %718, 2
  %724 = fmul fast float %723, %717
  %725 = extractvalue %dx.types.CBufRet.f32 %718, 3
  %726 = fadd fast float %724, %725
  %727 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %18, float %722, float %726, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %728 = extractvalue %dx.types.ResRet.f32 %727, 0
  %729 = extractvalue %dx.types.ResRet.f32 %727, 1
  %730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %731 = extractvalue %dx.types.CBufRet.f32 %730, 1
  %732 = extractvalue %dx.types.CBufRet.f32 %730, 0
  %733 = fsub fast float %731, %732
  %734 = fmul fast float %733, %728
  %735 = fadd fast float %734, %732
  %736 = extractvalue %dx.types.CBufRet.f32 %730, 3
  %737 = extractvalue %dx.types.CBufRet.f32 %730, 2
  %738 = fsub fast float %736, %737
  %739 = fmul fast float %738, %729
  %740 = fadd fast float %739, %737
  %741 = fsub fast float %233, %735
  %742 = fsub fast float %740, %735
  %743 = fdiv fast float %741, %742
  %744 = call float @dx.op.unary.f32(i32 7, float %743)  ; Saturate(value)
  %745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %746 = extractvalue %dx.types.CBufRet.f32 %745, 0
  %747 = fmul fast float %746, %744
  %748 = extractvalue %dx.types.CBufRet.f32 %745, 1
  %749 = fadd fast float %747, %748
  %750 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %722, float %726, float %749, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %751 = extractvalue %dx.types.ResRet.f32 %750, 0
  %752 = extractvalue %dx.types.ResRet.f32 %750, 1
  %753 = extractvalue %dx.types.ResRet.f32 %750, 2
  %754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %755 = extractvalue %dx.types.CBufRet.f32 %754, 0
  %756 = extractvalue %dx.types.CBufRet.f32 %754, 1
  %757 = extractvalue %dx.types.CBufRet.f32 %754, 2
  %758 = fmul fast float %755, %751
  %759 = fmul fast float %756, %752
  %760 = fmul fast float %757, %753
  %761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %762 = extractvalue %dx.types.CBufRet.f32 %761, 0
  %763 = extractvalue %dx.types.CBufRet.f32 %761, 1
  %764 = extractvalue %dx.types.CBufRet.f32 %761, 2
  %765 = fadd fast float %758, %762
  %766 = fadd fast float %759, %763
  %767 = fadd fast float %760, %764
  %768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %769 = extractvalue %dx.types.CBufRet.f32 %768, 0
  %770 = fmul fast float %769, %716
  %771 = extractvalue %dx.types.CBufRet.f32 %768, 1
  %772 = fadd fast float %770, %771
  %773 = extractvalue %dx.types.CBufRet.f32 %768, 2
  %774 = fmul fast float %773, %717
  %775 = extractvalue %dx.types.CBufRet.f32 %768, 3
  %776 = fadd fast float %774, %775
  %777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %778 = extractvalue %dx.types.CBufRet.f32 %777, 0
  %779 = extractvalue %dx.types.CBufRet.f32 %777, 1
  %780 = extractvalue %dx.types.CBufRet.f32 %777, 2
  %781 = extractvalue %dx.types.CBufRet.f32 %777, 3
  %782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %783 = extractvalue %dx.types.CBufRet.f32 %782, 0
  %784 = extractvalue %dx.types.CBufRet.f32 %782, 1
  %785 = extractvalue %dx.types.CBufRet.f32 %782, 2
  %786 = extractvalue %dx.types.CBufRet.f32 %782, 3
  %787 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %772, float %776, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %788 = extractvalue %dx.types.ResRet.f32 %787, 0
  %789 = extractvalue %dx.types.ResRet.f32 %787, 1
  %790 = extractvalue %dx.types.ResRet.f32 %787, 2
  %791 = extractvalue %dx.types.ResRet.f32 %787, 3
  %792 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %772, float %776, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %793 = extractvalue %dx.types.ResRet.f32 %792, 0
  %794 = extractvalue %dx.types.ResRet.f32 %792, 1
  %795 = extractvalue %dx.types.ResRet.f32 %792, 2
  %796 = extractvalue %dx.types.ResRet.f32 %792, 3
  %797 = fmul fast float %788, %765
  %798 = fmul fast float %793, %765
  %799 = fmul fast float %795, %765
  %800 = fmul fast float %791, %765
  %801 = fadd fast float %797, %778
  %802 = fadd fast float %798, %779
  %803 = fadd fast float %799, %780
  %804 = fadd fast float %800, %781
  %805 = fmul fast float %789, %765
  %806 = fmul fast float %794, %765
  %807 = fadd fast float %805, %783
  %808 = fadd fast float %806, %784
  %809 = fmul fast float %790, %765
  %810 = fmul fast float %796, %765
  %811 = fadd fast float %809, %785
  %812 = fadd fast float %810, %786
  %813 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %772, float %776, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %814 = extractvalue %dx.types.ResRet.f32 %813, 0
  %815 = extractvalue %dx.types.ResRet.f32 %813, 1
  %816 = extractvalue %dx.types.ResRet.f32 %813, 2
  %817 = extractvalue %dx.types.ResRet.f32 %813, 3
  %818 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %772, float %776, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %819 = extractvalue %dx.types.ResRet.f32 %818, 0
  %820 = extractvalue %dx.types.ResRet.f32 %818, 1
  %821 = extractvalue %dx.types.ResRet.f32 %818, 2
  %822 = extractvalue %dx.types.ResRet.f32 %818, 3
  %823 = fmul fast float %814, %766
  %824 = fmul fast float %819, %766
  %825 = fmul fast float %821, %766
  %826 = fmul fast float %817, %766
  %827 = fadd fast float %801, %823
  %828 = fadd fast float %802, %824
  %829 = fadd fast float %803, %825
  %830 = fadd fast float %804, %826
  %831 = fmul fast float %815, %766
  %832 = fmul fast float %820, %766
  %833 = fadd fast float %807, %831
  %834 = fadd fast float %808, %832
  %835 = fmul fast float %816, %766
  %836 = fmul fast float %822, %766
  %837 = fadd fast float %811, %835
  %838 = fadd fast float %812, %836
  %839 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %772, float %776, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %840 = extractvalue %dx.types.ResRet.f32 %839, 0
  %841 = extractvalue %dx.types.ResRet.f32 %839, 1
  %842 = extractvalue %dx.types.ResRet.f32 %839, 2
  %843 = extractvalue %dx.types.ResRet.f32 %839, 3
  %844 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %772, float %776, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %845 = extractvalue %dx.types.ResRet.f32 %844, 0
  %846 = extractvalue %dx.types.ResRet.f32 %844, 1
  %847 = extractvalue %dx.types.ResRet.f32 %844, 2
  %848 = extractvalue %dx.types.ResRet.f32 %844, 3
  %849 = fmul fast float %840, %767
  %850 = fmul fast float %845, %767
  %851 = fmul fast float %847, %767
  %852 = fmul fast float %843, %767
  %853 = fadd fast float %827, %849
  %854 = fadd fast float %828, %850
  %855 = fadd fast float %829, %851
  %856 = fadd fast float %830, %852
  %857 = fmul fast float %841, %767
  %858 = fmul fast float %846, %767
  %859 = fadd fast float %833, %857
  %860 = fadd fast float %834, %858
  %861 = fmul fast float %842, %767
  %862 = fmul fast float %848, %767
  %863 = fadd fast float %837, %861
  %864 = fadd fast float %838, %862
  %865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %866 = extractvalue %dx.types.CBufRet.f32 %865, 0
  %867 = fsub fast float %231, %866
  %868 = fsub fast float %709, %231
  %869 = call float @dx.op.binary.f32(i32 35, float %868, float %867)  ; FMax(a,b)
  %870 = extractvalue %dx.types.CBufRet.f32 %865, 1
  %871 = fsub fast float %232, %870
  %872 = fsub fast float %710, %232
  %873 = call float @dx.op.binary.f32(i32 35, float %872, float %871)  ; FMax(a,b)
  %874 = call float @dx.op.binary.f32(i32 35, float %869, float %873)  ; FMax(a,b)
  %875 = extractvalue %dx.types.CBufRet.f32 %713, 3
  %876 = fmul fast float %875, %874
  %877 = call float @dx.op.unary.f32(i32 7, float %876)  ; Saturate(value)
  %878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %879 = extractvalue %dx.types.CBufRet.f32 %878, 0
  %880 = extractvalue %dx.types.CBufRet.f32 %878, 1
  %881 = extractvalue %dx.types.CBufRet.f32 %878, 2
  %882 = extractvalue %dx.types.CBufRet.f32 %878, 3
  %883 = fsub fast float %879, %853
  %884 = fsub fast float %880, %854
  %885 = fsub fast float %881, %855
  %886 = fsub fast float %882, %856
  %887 = fmul fast float %883, %877
  %888 = fmul fast float %884, %877
  %889 = fmul fast float %885, %877
  %890 = fmul fast float %886, %877
  %891 = fadd fast float %887, %853
  %892 = fadd fast float %888, %854
  %893 = fadd fast float %889, %855
  %894 = fadd fast float %890, %856
  %895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %896 = extractvalue %dx.types.CBufRet.f32 %895, 0
  %897 = extractvalue %dx.types.CBufRet.f32 %895, 1
  %898 = fsub fast float %896, %859
  %899 = fsub fast float %897, %860
  %900 = fmul fast float %898, %877
  %901 = fmul fast float %899, %877
  %902 = fadd fast float %900, %859
  %903 = fadd fast float %901, %860
  %904 = extractvalue %dx.types.CBufRet.f32 %895, 2
  %905 = extractvalue %dx.types.CBufRet.f32 %895, 3
  %906 = fsub fast float %904, %863
  %907 = fsub fast float %905, %864
  %908 = fmul fast float %906, %877
  %909 = fmul fast float %907, %877
  %910 = fadd fast float %908, %863
  %911 = fadd fast float %909, %864
  %912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %913 = extractvalue %dx.types.CBufRet.f32 %912, 0
  %914 = fmul fast float %913, %891
  %915 = fmul fast float %913, %892
  %916 = fmul fast float %913, %893
  %917 = fmul fast float %913, %894
  %918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %919 = extractvalue %dx.types.CBufRet.f32 %918, 0
  %920 = fmul fast float %919, %902
  %921 = fmul fast float %919, %903
  %922 = fadd fast float %920, %914
  %923 = fadd fast float %921, %916
  %924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %925 = extractvalue %dx.types.CBufRet.f32 %924, 0
  %926 = fmul fast float %925, %910
  %927 = fmul fast float %925, %911
  %928 = fadd fast float %922, %926
  %929 = fadd fast float %923, %927
  %930 = extractvalue %dx.types.CBufRet.f32 %912, 1
  %931 = fmul fast float %930, %891
  %932 = fmul fast float %930, %892
  %933 = fmul fast float %930, %893
  %934 = fmul fast float %930, %894
  %935 = extractvalue %dx.types.CBufRet.f32 %918, 1
  %936 = fmul fast float %935, %902
  %937 = fmul fast float %935, %903
  %938 = fadd fast float %936, %931
  %939 = fadd fast float %937, %933
  %940 = extractvalue %dx.types.CBufRet.f32 %924, 1
  %941 = fmul fast float %940, %910
  %942 = fmul fast float %940, %911
  %943 = fadd fast float %938, %941
  %944 = fadd fast float %939, %942
  %945 = extractvalue %dx.types.CBufRet.f32 %912, 2
  %946 = fmul fast float %945, %891
  %947 = fmul fast float %945, %892
  %948 = fmul fast float %945, %893
  %949 = fmul fast float %945, %894
  %950 = extractvalue %dx.types.CBufRet.f32 %918, 2
  %951 = fmul fast float %950, %902
  %952 = fmul fast float %950, %903
  %953 = fadd fast float %951, %946
  %954 = fadd fast float %952, %948
  %955 = extractvalue %dx.types.CBufRet.f32 %924, 2
  %956 = fmul fast float %955, %910
  %957 = fmul fast float %955, %911
  %958 = fadd fast float %953, %956
  %959 = fadd fast float %954, %957
  %960 = fmul fast float %947, %947
  %961 = fmul fast float %959, %959
  %962 = fmul fast float %949, %949
  %963 = fadd fast float %962, %960
  %964 = fadd fast float %963, %961
  %965 = call float @dx.op.unary.f32(i32 24, float %964)  ; Sqrt(value)
  %966 = fcmp fast ugt float %965, 0.000000e+00
  br i1 %966, label %967, label %982, !dx.controlflow.hints !56

; <label>:967                                     ; preds = %707
  %968 = fsub fast float -0.000000e+00, %949
  %969 = fdiv fast float %968, %965
  %970 = fsub fast float -0.000000e+00, %947
  %971 = fdiv fast float %970, %965
  %972 = fdiv fast float %959, %965
  %973 = fmul fast float %958, 0x3FE279A760000000
  %974 = fmul fast float %971, %947
  %975 = fmul fast float %972, %959
  %976 = fmul fast float %969, %949
  %977 = fadd fast float %974, %976
  %978 = fsub fast float %977, %975
  %979 = call float @dx.op.unary.f32(i32 6, float %978)  ; FAbs(value)
  %980 = fadd fast float %979, 0x3DDB7CDFE0000000
  %981 = fdiv fast float %973, %980
  br label %982

; <label>:982                                     ; preds = %967, %707
  %983 = phi float [ %981, %967 ], [ 1.000000e+00, %707 ]
  %984 = fmul fast float %932, %932
  %985 = fmul fast float %944, %944
  %986 = fmul fast float %934, %934
  %987 = fadd fast float %986, %984
  %988 = fadd fast float %987, %985
  %989 = call float @dx.op.unary.f32(i32 24, float %988)  ; Sqrt(value)
  %990 = fcmp fast ugt float %989, 0.000000e+00
  br i1 %990, label %991, label %1006, !dx.controlflow.hints !56

; <label>:991                                     ; preds = %982
  %992 = fsub fast float -0.000000e+00, %934
  %993 = fdiv fast float %992, %989
  %994 = fsub fast float -0.000000e+00, %932
  %995 = fdiv fast float %994, %989
  %996 = fdiv fast float %944, %989
  %997 = fmul fast float %943, 0x3FE279A760000000
  %998 = fmul fast float %995, %932
  %999 = fmul fast float %996, %944
  %1000 = fmul fast float %993, %934
  %1001 = fadd fast float %998, %1000
  %1002 = fsub fast float %1001, %999
  %1003 = call float @dx.op.unary.f32(i32 6, float %1002)  ; FAbs(value)
  %1004 = fadd fast float %1003, 0x3DDB7CDFE0000000
  %1005 = fdiv fast float %997, %1004
  br label %1006

; <label>:1006                                    ; preds = %991, %982
  %1007 = phi float [ %1005, %991 ], [ 1.000000e+00, %982 ]
  %1008 = call float @dx.op.binary.f32(i32 36, float %1007, float %983)  ; FMin(a,b)
  %1009 = fmul fast float %915, %915
  %1010 = fmul fast float %929, %929
  %1011 = fmul fast float %917, %917
  %1012 = fadd fast float %1011, %1009
  %1013 = fadd fast float %1012, %1010
  %1014 = call float @dx.op.unary.f32(i32 24, float %1013)  ; Sqrt(value)
  %1015 = fcmp fast ugt float %1014, 0.000000e+00
  br i1 %1015, label %1016, label %1031, !dx.controlflow.hints !56

; <label>:1016                                    ; preds = %1006
  %1017 = fsub fast float -0.000000e+00, %917
  %1018 = fdiv fast float %1017, %1014
  %1019 = fsub fast float -0.000000e+00, %915
  %1020 = fdiv fast float %1019, %1014
  %1021 = fdiv fast float %929, %1014
  %1022 = fmul fast float %928, 0x3FE279A760000000
  %1023 = fmul fast float %1020, %915
  %1024 = fmul fast float %1021, %929
  %1025 = fmul fast float %1018, %917
  %1026 = fadd fast float %1023, %1025
  %1027 = fsub fast float %1026, %1024
  %1028 = call float @dx.op.unary.f32(i32 6, float %1027)  ; FAbs(value)
  %1029 = fadd fast float %1028, 0x3DDB7CDFE0000000
  %1030 = fdiv fast float %1022, %1029
  br label %1031

; <label>:1031                                    ; preds = %1016, %1006
  %1032 = phi float [ %1030, %1016 ], [ 1.000000e+00, %1006 ]
  %1033 = call float @dx.op.binary.f32(i32 36, float %1032, float %1008)  ; FMin(a,b)
  %1034 = call float @dx.op.unary.f32(i32 7, float %1033)  ; Saturate(value)
  %1035 = fcmp fast olt float %1034, 1.000000e+00
  br i1 %1035, label %1036, label %1046, !dx.controlflow.hints !57

; <label>:1036                                    ; preds = %1031
  %1037 = fmul fast float %1034, %915
  %1038 = fmul fast float %1034, %929
  %1039 = fmul fast float %1034, %917
  %1040 = fmul fast float %1034, %932
  %1041 = fmul fast float %1034, %944
  %1042 = fmul fast float %1034, %934
  %1043 = fmul fast float %1034, %947
  %1044 = fmul fast float %1034, %959
  %1045 = fmul fast float %1034, %949
  br label %1046

; <label>:1046                                    ; preds = %1036, %1031
  %1047 = phi float [ %1043, %1036 ], [ %947, %1031 ]
  %1048 = phi float [ %1044, %1036 ], [ %959, %1031 ]
  %1049 = phi float [ %1045, %1036 ], [ %949, %1031 ]
  %1050 = phi float [ %1040, %1036 ], [ %932, %1031 ]
  %1051 = phi float [ %1041, %1036 ], [ %944, %1031 ]
  %1052 = phi float [ %1042, %1036 ], [ %934, %1031 ]
  %1053 = phi float [ %1037, %1036 ], [ %915, %1031 ]
  %1054 = phi float [ %1038, %1036 ], [ %929, %1031 ]
  %1055 = phi float [ %1039, %1036 ], [ %917, %1031 ]
  %1056 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %928)  ; FMax(a,b)
  %1057 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %943)  ; FMax(a,b)
  %1058 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %958)  ; FMax(a,b)
  %1059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1060 = extractvalue %dx.types.CBufRet.f32 %1059, 0
  %1061 = fcmp fast ogt float %1060, 0.000000e+00
  %1062 = fcmp fast oge float %716, 0.000000e+00
  %1063 = and i1 %1062, %1061
  %1064 = fcmp fast ole float %716, 1.000000e+00
  %1065 = and i1 %1064, %1063
  %1066 = fcmp fast oge float %717, 0.000000e+00
  %1067 = and i1 %1066, %1065
  %1068 = fcmp fast ole float %717, 1.000000e+00
  %1069 = and i1 %1068, %1067
  br i1 %1069, label %1070, label %1215, !dx.controlflow.hints !58

; <label>:1070                                    ; preds = %1046
  %1071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1072 = extractvalue %dx.types.CBufRet.f32 %1071, 2
  %1073 = extractvalue %dx.types.CBufRet.f32 %1071, 3
  %1074 = fmul fast float %1072, %716
  %1075 = fmul fast float %1073, %717
  %1076 = call float @dx.op.unary.f32(i32 27, float %1074)  ; Round_ni(value)
  %1077 = call float @dx.op.unary.f32(i32 27, float %1075)  ; Round_ni(value)
  %1078 = fptosi float %1076 to i32
  %1079 = fptosi float %1077 to i32
  %1080 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %1078, i32 %1079, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1081 = extractvalue %dx.types.ResRet.i32 %1080, 0
  %1082 = and i32 %1081, 65535
  %1083 = lshr i32 %1081, 16
  %1084 = icmp eq i32 %1082, 65535
  br i1 %1084, label %1121, label %1085, !dx.controlflow.hints !59

; <label>:1085                                    ; preds = %1070
  %1086 = extractvalue %dx.types.CBufRet.f32 %1059, 1
  %1087 = extractvalue %dx.types.CBufRet.f32 %1071, 0
  %1088 = extractvalue %dx.types.CBufRet.f32 %1071, 1
  %1089 = fmul fast float %1087, %716
  %1090 = fmul fast float %1088, %717
  %1091 = fmul fast float %1089, 1.250000e-01
  %1092 = fmul fast float %1090, 1.250000e-01
  %1093 = call float @dx.op.unary.f32(i32 27, float %1091)  ; Round_ni(value)
  %1094 = call float @dx.op.unary.f32(i32 27, float %1092)  ; Round_ni(value)
  %1095 = fmul fast float %1093, 8.000000e+00
  %1096 = fmul fast float %1094, 8.000000e+00
  %1097 = and i32 %1081, 255
  %1098 = lshr i32 %1081, 8
  %1099 = and i32 %1098, 255
  %1100 = mul nuw nsw i32 %1097, 9
  %1101 = uitofp i32 %1100 to float
  %1102 = mul nuw nsw i32 %1099, 9
  %1103 = uitofp i32 %1102 to float
  %1104 = fadd fast float %1101, 5.000000e-01
  %1105 = fadd fast float %1104, %1089
  %1106 = fsub fast float %1105, %1095
  %1107 = fadd fast float %1103, 5.000000e-01
  %1108 = fadd fast float %1107, %1090
  %1109 = fsub fast float %1108, %1096
  %1110 = fdiv fast float %1106, %1060
  %1111 = fdiv fast float %1109, %1086
  %1112 = fmul fast float %744, 4.375000e-01
  %1113 = fadd fast float %1112, 3.125000e-02
  %1114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1110, float %1111, float %1113, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1115 = extractvalue %dx.types.ResRet.f32 %1114, 0
  %1116 = extractvalue %dx.types.ResRet.f32 %1114, 1
  %1117 = extractvalue %dx.types.ResRet.f32 %1114, 2
  %1118 = fadd fast float %1115, %1056
  %1119 = fadd fast float %1116, %1057
  %1120 = fadd fast float %1117, %1058
  br label %1121

; <label>:1121                                    ; preds = %1085, %1070
  %1122 = phi float [ %1120, %1085 ], [ %1058, %1070 ]
  %1123 = phi float [ %1119, %1085 ], [ %1057, %1070 ]
  %1124 = phi float [ %1118, %1085 ], [ %1056, %1070 ]
  %1125 = icmp eq i32 %1083, 65535
  br i1 %1125, label %1215, label %1126, !dx.controlflow.hints !60

; <label>:1126                                    ; preds = %1121
  %1127 = extractvalue %dx.types.CBufRet.f32 %1059, 1
  %1128 = extractvalue %dx.types.CBufRet.f32 %1071, 0
  %1129 = extractvalue %dx.types.CBufRet.f32 %1071, 1
  %1130 = fmul fast float %1128, %716
  %1131 = fmul fast float %1129, %717
  %1132 = fmul fast float %1130, 1.250000e-01
  %1133 = fmul fast float %1131, 1.250000e-01
  %1134 = call float @dx.op.unary.f32(i32 27, float %1132)  ; Round_ni(value)
  %1135 = call float @dx.op.unary.f32(i32 27, float %1133)  ; Round_ni(value)
  %1136 = fmul fast float %1134, 8.000000e+00
  %1137 = fmul fast float %1135, 8.000000e+00
  %1138 = fsub fast float %1130, %1136
  %1139 = fsub fast float %1131, %1137
  %1140 = fadd fast float %1138, 5.000000e-01
  %1141 = fadd fast float %1139, 5.000000e-01
  %1142 = and i32 %1083, 255
  %1143 = lshr i32 %1081, 24
  %1144 = mul nuw nsw i32 %1142, 9
  %1145 = uitofp i32 %1144 to float
  %1146 = mul nuw nsw i32 %1143, 9
  %1147 = uitofp i32 %1146 to float
  %1148 = fadd fast float %1140, %1145
  %1149 = fadd fast float %1141, %1147
  %1150 = fdiv fast float %1148, %1060
  %1151 = fdiv fast float %1149, %1127
  %1152 = fmul fast float %744, 4.375000e-01
  %1153 = fadd fast float %1152, 3.125000e-02
  %1154 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1150, float %1151, float %1153, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1155 = extractvalue %dx.types.ResRet.f32 %1154, 0
  %1156 = extractvalue %dx.types.ResRet.f32 %1154, 1
  %1157 = extractvalue %dx.types.ResRet.f32 %1154, 2
  %1158 = fadd fast float %1152, 5.312500e-01
  %1159 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1150, float %1151, float %1158, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1160 = extractvalue %dx.types.ResRet.f32 %1159, 0
  %1161 = extractvalue %dx.types.ResRet.f32 %1159, 1
  %1162 = extractvalue %dx.types.ResRet.f32 %1159, 2
  %1163 = fmul fast float %1160, 2.000000e+00
  %1164 = fmul fast float %1161, 2.000000e+00
  %1165 = fmul fast float %1162, 2.000000e+00
  %1166 = fadd fast float %1163, -1.000000e+00
  %1167 = fadd fast float %1164, -1.000000e+00
  %1168 = fadd fast float %1165, -1.000000e+00
  %1169 = fmul fast float %1166, %1166
  %1170 = fmul fast float %1167, %1167
  %1171 = fadd fast float %1169, %1170
  %1172 = fmul fast float %1168, %1168
  %1173 = fadd fast float %1171, %1172
  %1174 = call float @dx.op.unary.f32(i32 24, float %1173)  ; Sqrt(value)
  %1175 = fcmp fast ogt float %1174, 0.000000e+00
  br i1 %1175, label %1176, label %1180, !dx.controlflow.hints !61

; <label>:1176                                    ; preds = %1126
  %1177 = fdiv fast float %1166, %1174
  %1178 = fdiv fast float %1167, %1174
  %1179 = fdiv fast float %1168, %1174
  br label %1180

; <label>:1180                                    ; preds = %1176, %1126
  %1181 = phi float [ %1177, %1176 ], [ 0.000000e+00, %1126 ]
  %1182 = phi float [ %1178, %1176 ], [ 0.000000e+00, %1126 ]
  %1183 = phi float [ %1179, %1176 ], [ 0.000000e+00, %1126 ]
  %1184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1185 = extractvalue %dx.types.CBufRet.f32 %1184, 0
  %1186 = extractvalue %dx.types.CBufRet.f32 %1184, 1
  %1187 = fsub fast float %231, %1185
  %1188 = fsub fast float %232, %1186
  %1189 = fmul fast float %1187, %1187
  %1190 = fmul fast float %1188, %1188
  %1191 = fadd fast float %1189, %1190
  %1192 = call float @dx.op.unary.f32(i32 24, float %1191)  ; Sqrt(value)
  %1193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1194 = extractvalue %dx.types.CBufRet.f32 %1193, 0
  %1195 = extractvalue %dx.types.CBufRet.f32 %1193, 1
  %1196 = fsub fast float %1192, %1194
  %1197 = fdiv fast float %1196, %1195
  %1198 = call float @dx.op.unary.f32(i32 7, float %1197)  ; Saturate(value)
  %1199 = fmul fast float %1198, 2.000000e+00
  %1200 = fsub fast float 3.000000e+00, %1199
  %1201 = fmul fast float %1198, %1198
  %1202 = fmul fast float %1201, %1200
  %1203 = call float @dx.op.dot3.f32(i32 55, float %1181, float %1182, float %1183, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1204 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1203)  ; FMax(a,b)
  %1205 = fmul fast float %1204, 0x400C5BF8A0000000
  %1206 = fmul fast float %1202, %1155
  %1207 = fmul fast float %1206, %1205
  %1208 = fadd fast float %1207, %1124
  %1209 = fmul fast float %1202, %1156
  %1210 = fmul fast float %1209, %1205
  %1211 = fadd fast float %1210, %1123
  %1212 = fmul fast float %1202, %1157
  %1213 = fmul fast float %1212, %1205
  %1214 = fadd fast float %1213, %1122
  br label %1215

; <label>:1215                                    ; preds = %1180, %1121, %1046
  %1216 = phi float [ %1214, %1180 ], [ %1122, %1121 ], [ %1058, %1046 ]
  %1217 = phi float [ %1211, %1180 ], [ %1123, %1121 ], [ %1057, %1046 ]
  %1218 = phi float [ %1208, %1180 ], [ %1124, %1121 ], [ %1056, %1046 ]
  %1219 = fcmp fast ogt float %233, %740
  %1220 = and i1 %1062, %1219
  %1221 = and i1 %1064, %1220
  %1222 = and i1 %1066, %1221
  %1223 = and i1 %1068, %1222
  br i1 %1223, label %1224, label %1281, !dx.controlflow.hints !62

; <label>:1224                                    ; preds = %1215
  %1225 = fmul fast float %742, 0x3FC24924A0000000
  %1226 = fsub fast float %233, %740
  %1227 = fdiv fast float %1226, %1225
  %1228 = call float @dx.op.unary.f32(i32 7, float %1227)  ; Saturate(value)
  %1229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1230 = extractvalue %dx.types.CBufRet.f32 %1229, 0
  %1231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1232 = extractvalue %dx.types.CBufRet.f32 %1231, 0
  %1233 = extractvalue %dx.types.CBufRet.f32 %1231, 1
  %1234 = extractvalue %dx.types.CBufRet.f32 %1231, 2
  %1235 = fsub fast float %1230, %1218
  %1236 = fsub fast float %1232, %1053
  %1237 = fsub fast float %1233, %1054
  %1238 = fsub fast float %1234, %1055
  %1239 = fmul fast float %1235, %1228
  %1240 = fmul fast float %1236, %1228
  %1241 = fmul fast float %1237, %1228
  %1242 = fmul fast float %1238, %1228
  %1243 = fadd fast float %1239, %1218
  %1244 = fadd fast float %1240, %1053
  %1245 = fadd fast float %1241, %1054
  %1246 = fadd fast float %1242, %1055
  %1247 = extractvalue %dx.types.CBufRet.f32 %1229, 1
  %1248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1249 = extractvalue %dx.types.CBufRet.f32 %1248, 0
  %1250 = extractvalue %dx.types.CBufRet.f32 %1248, 1
  %1251 = extractvalue %dx.types.CBufRet.f32 %1248, 2
  %1252 = fsub fast float %1247, %1217
  %1253 = fsub fast float %1249, %1050
  %1254 = fsub fast float %1250, %1051
  %1255 = fsub fast float %1251, %1052
  %1256 = fmul fast float %1252, %1228
  %1257 = fmul fast float %1253, %1228
  %1258 = fmul fast float %1254, %1228
  %1259 = fmul fast float %1255, %1228
  %1260 = fadd fast float %1256, %1217
  %1261 = fadd fast float %1257, %1050
  %1262 = fadd fast float %1258, %1051
  %1263 = fadd fast float %1259, %1052
  %1264 = extractvalue %dx.types.CBufRet.f32 %1229, 2
  %1265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1266 = extractvalue %dx.types.CBufRet.f32 %1265, 0
  %1267 = extractvalue %dx.types.CBufRet.f32 %1265, 1
  %1268 = extractvalue %dx.types.CBufRet.f32 %1265, 2
  %1269 = fsub fast float %1264, %1216
  %1270 = fsub fast float %1266, %1047
  %1271 = fsub fast float %1267, %1048
  %1272 = fsub fast float %1268, %1049
  %1273 = fmul fast float %1269, %1228
  %1274 = fmul fast float %1270, %1228
  %1275 = fmul fast float %1271, %1228
  %1276 = fmul fast float %1272, %1228
  %1277 = fadd fast float %1273, %1216
  %1278 = fadd fast float %1274, %1047
  %1279 = fadd fast float %1275, %1048
  %1280 = fadd fast float %1276, %1049
  br label %1281

; <label>:1281                                    ; preds = %1224, %1215
  %1282 = phi float [ %1277, %1224 ], [ %1216, %1215 ]
  %1283 = phi float [ %1278, %1224 ], [ %1047, %1215 ]
  %1284 = phi float [ %1279, %1224 ], [ %1048, %1215 ]
  %1285 = phi float [ %1280, %1224 ], [ %1049, %1215 ]
  %1286 = phi float [ %1260, %1224 ], [ %1217, %1215 ]
  %1287 = phi float [ %1261, %1224 ], [ %1050, %1215 ]
  %1288 = phi float [ %1262, %1224 ], [ %1051, %1215 ]
  %1289 = phi float [ %1263, %1224 ], [ %1052, %1215 ]
  %1290 = phi float [ %1243, %1224 ], [ %1218, %1215 ]
  %1291 = phi float [ %1244, %1224 ], [ %1053, %1215 ]
  %1292 = phi float [ %1245, %1224 ], [ %1054, %1215 ]
  %1293 = phi float [ %1246, %1224 ], [ %1055, %1215 ]
  %1294 = extractvalue %dx.types.CBufRet.f32 %865, 3
  %1295 = fmul fast float %1294, %1290
  %1296 = fmul fast float %1294, %1286
  %1297 = fmul fast float %1294, %1282
  %1298 = fmul fast float %1291, 1.500000e+00
  %1299 = fmul fast float %1298, %1294
  %1300 = fmul fast float %1292, 1.500000e+00
  %1301 = fmul fast float %1300, %1294
  %1302 = fmul fast float %1293, 1.500000e+00
  %1303 = fmul fast float %1302, %1294
  %1304 = fmul fast float %1287, 1.500000e+00
  %1305 = fmul fast float %1304, %1294
  %1306 = fmul fast float %1288, 1.500000e+00
  %1307 = fmul fast float %1306, %1294
  %1308 = fmul fast float %1289, 1.500000e+00
  %1309 = fmul fast float %1308, %1294
  %1310 = fmul fast float %1283, 1.500000e+00
  %1311 = fmul fast float %1310, %1294
  %1312 = fmul fast float %1284, 1.500000e+00
  %1313 = fmul fast float %1312, %1294
  %1314 = fmul fast float %1285, 1.500000e+00
  %1315 = fmul fast float %1314, %1294
  %1316 = fsub fast float %705, %1295
  %1317 = fmul fast float %1316, %603
  %1318 = fadd fast float %1317, %1295
  %1319 = fsub fast float %704, %1299
  %1320 = fmul fast float %1319, %603
  %1321 = fadd fast float %1320, %1299
  %1322 = fsub fast float %703, %1301
  %1323 = fmul fast float %1322, %603
  %1324 = fadd fast float %1323, %1301
  %1325 = fsub fast float %702, %1303
  %1326 = fmul fast float %1325, %603
  %1327 = fadd fast float %1326, %1303
  %1328 = fmul fast float %701, %603
  %1329 = fmul fast float %700, %603
  %1330 = fmul fast float %699, %603
  %1331 = fmul fast float %698, %603
  %1332 = fmul fast float %697, %603
  %1333 = fsub fast float %696, %1296
  %1334 = fmul fast float %1333, %603
  %1335 = fadd fast float %1334, %1296
  %1336 = fsub fast float %695, %1305
  %1337 = fmul fast float %1336, %603
  %1338 = fadd fast float %1337, %1305
  %1339 = fsub fast float %694, %1307
  %1340 = fmul fast float %1339, %603
  %1341 = fadd fast float %1340, %1307
  %1342 = fsub fast float %693, %1309
  %1343 = fmul fast float %1342, %603
  %1344 = fadd fast float %1343, %1309
  %1345 = fmul fast float %692, %603
  %1346 = fmul fast float %691, %603
  %1347 = fmul fast float %690, %603
  %1348 = fmul fast float %689, %603
  %1349 = fmul fast float %688, %603
  %1350 = fsub fast float %687, %1297
  %1351 = fmul fast float %1350, %603
  %1352 = fadd fast float %1351, %1297
  %1353 = fsub fast float %686, %1311
  %1354 = fmul fast float %1353, %603
  %1355 = fadd fast float %1354, %1311
  %1356 = fsub fast float %685, %1313
  %1357 = fmul fast float %1356, %603
  %1358 = fadd fast float %1357, %1313
  %1359 = fsub fast float %684, %1315
  %1360 = fmul fast float %1359, %603
  %1361 = fadd fast float %1360, %1315
  %1362 = fmul fast float %683, %603
  %1363 = fmul fast float %682, %603
  %1364 = fmul fast float %681, %603
  %1365 = fmul fast float %680, %603
  %1366 = fmul fast float %679, %603
  br label %1367

; <label>:1367                                    ; preds = %1281, %678
  %1368 = phi float [ %1366, %1281 ], [ %679, %678 ]
  %1369 = phi float [ %1365, %1281 ], [ %680, %678 ]
  %1370 = phi float [ %1364, %1281 ], [ %681, %678 ]
  %1371 = phi float [ %1363, %1281 ], [ %682, %678 ]
  %1372 = phi float [ %1362, %1281 ], [ %683, %678 ]
  %1373 = phi float [ %1361, %1281 ], [ %684, %678 ]
  %1374 = phi float [ %1358, %1281 ], [ %685, %678 ]
  %1375 = phi float [ %1355, %1281 ], [ %686, %678 ]
  %1376 = phi float [ %1352, %1281 ], [ %687, %678 ]
  %1377 = phi float [ %1349, %1281 ], [ %688, %678 ]
  %1378 = phi float [ %1348, %1281 ], [ %689, %678 ]
  %1379 = phi float [ %1347, %1281 ], [ %690, %678 ]
  %1380 = phi float [ %1346, %1281 ], [ %691, %678 ]
  %1381 = phi float [ %1345, %1281 ], [ %692, %678 ]
  %1382 = phi float [ %1344, %1281 ], [ %693, %678 ]
  %1383 = phi float [ %1341, %1281 ], [ %694, %678 ]
  %1384 = phi float [ %1338, %1281 ], [ %695, %678 ]
  %1385 = phi float [ %1335, %1281 ], [ %696, %678 ]
  %1386 = phi float [ %1332, %1281 ], [ %697, %678 ]
  %1387 = phi float [ %1331, %1281 ], [ %698, %678 ]
  %1388 = phi float [ %1330, %1281 ], [ %699, %678 ]
  %1389 = phi float [ %1329, %1281 ], [ %700, %678 ]
  %1390 = phi float [ %1328, %1281 ], [ %701, %678 ]
  %1391 = phi float [ %1327, %1281 ], [ %702, %678 ]
  %1392 = phi float [ %1324, %1281 ], [ %703, %678 ]
  %1393 = phi float [ %1321, %1281 ], [ %704, %678 ]
  %1394 = phi float [ %1318, %1281 ], [ %705, %678 ]
  %1395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1396 = extractvalue %dx.types.CBufRet.f32 %1395, 2
  %1397 = fmul fast float %1396, %1396
  %1398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1399 = extractvalue %dx.types.CBufRet.f32 %1398, 0
  %1400 = extractvalue %dx.types.CBufRet.f32 %1398, 1
  %1401 = extractvalue %dx.types.CBufRet.f32 %1398, 2
  %1402 = fmul fast float %1394, 0x3FD20DD760000000
  %1403 = fmul fast float %1401, %1392
  %1404 = fmul fast float %1401, %1401
  %1405 = fmul fast float %1404, 0x3FEE471020000000
  %1406 = fadd fast float %1405, 0xBFD42F6020000000
  %1407 = fmul fast float %1406, %1388
  %1408 = fmul fast float %1399, %1391
  %1409 = fmul fast float %1400, %1393
  %1410 = fmul fast float %1401, 0x3FF17B1420000000
  %1411 = fmul fast float %1397, %1387
  %1412 = fmul fast float %1411, %1399
  %1413 = fmul fast float %1412, %1410
  %1414 = fmul fast float %1397, %1389
  %1415 = fmul fast float %1414, %1400
  %1416 = fmul fast float %1415, %1410
  %1417 = fmul fast float %1399, %1399
  %1418 = fmul fast float %1400, %1400
  %1419 = fsub fast float %1417, %1418
  %1420 = fmul fast float %1386, 0x3FE17B1420000000
  %1421 = fmul fast float %1420, %1419
  %1422 = fmul fast float %1390, 0x3FF17B1420000000
  %1423 = fmul fast float %1422, %1400
  %1424 = fmul fast float %1423, %1399
  %1425 = fadd fast float %1421, %1424
  %1426 = fadd fast float %1425, %1407
  %1427 = fmul fast float %1426, %1397
  %1428 = fsub fast float %1409, %1403
  %1429 = fadd fast float %1428, %1408
  %1430 = fmul fast float %1429, 0x3FDF454380000000
  %1431 = fmul fast float %1430, %1396
  %1432 = fsub fast float %1402, %1413
  %1433 = fsub fast float %1432, %1416
  %1434 = fadd fast float %1433, %1427
  %1435 = fadd fast float %1434, %1431
  %1436 = fmul fast float %1385, 0x3FD20DD760000000
  %1437 = fmul fast float %1401, %1383
  %1438 = fmul fast float %1406, %1379
  %1439 = fmul fast float %1399, %1382
  %1440 = fmul fast float %1400, %1384
  %1441 = fmul fast float %1397, %1378
  %1442 = fmul fast float %1441, %1399
  %1443 = fmul fast float %1442, %1410
  %1444 = fmul fast float %1397, %1380
  %1445 = fmul fast float %1444, %1400
  %1446 = fmul fast float %1445, %1410
  %1447 = fmul fast float %1377, 0x3FE17B1420000000
  %1448 = fmul fast float %1447, %1419
  %1449 = fmul fast float %1381, 0x3FF17B1420000000
  %1450 = fmul fast float %1449, %1400
  %1451 = fmul fast float %1450, %1399
  %1452 = fadd fast float %1448, %1451
  %1453 = fadd fast float %1452, %1438
  %1454 = fmul fast float %1453, %1397
  %1455 = fsub fast float %1440, %1437
  %1456 = fadd fast float %1455, %1439
  %1457 = fmul fast float %1456, 0x3FDF454380000000
  %1458 = fmul fast float %1457, %1396
  %1459 = fsub fast float %1436, %1443
  %1460 = fsub fast float %1459, %1446
  %1461 = fadd fast float %1460, %1454
  %1462 = fadd fast float %1461, %1458
  %1463 = fmul fast float %1376, 0x3FD20DD760000000
  %1464 = fmul fast float %1401, %1374
  %1465 = fmul fast float %1406, %1370
  %1466 = fmul fast float %1399, %1373
  %1467 = fmul fast float %1400, %1375
  %1468 = fmul fast float %1397, %1369
  %1469 = fmul fast float %1468, %1399
  %1470 = fmul fast float %1469, %1410
  %1471 = fmul fast float %1397, %1371
  %1472 = fmul fast float %1471, %1400
  %1473 = fmul fast float %1472, %1410
  %1474 = fmul fast float %1368, 0x3FE17B1420000000
  %1475 = fmul fast float %1474, %1419
  %1476 = fmul fast float %1372, 0x3FF17B1420000000
  %1477 = fmul fast float %1476, %1400
  %1478 = fmul fast float %1477, %1399
  %1479 = fadd fast float %1475, %1478
  %1480 = fadd fast float %1479, %1465
  %1481 = fmul fast float %1480, %1397
  %1482 = fsub fast float %1467, %1464
  %1483 = fadd fast float %1482, %1466
  %1484 = fmul fast float %1483, 0x3FDF454380000000
  %1485 = fmul fast float %1484, %1396
  %1486 = fsub fast float %1463, %1470
  %1487 = fsub fast float %1486, %1473
  %1488 = fadd fast float %1487, %1481
  %1489 = fadd fast float %1488, %1485
  %1490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1491 = extractvalue %dx.types.CBufRet.f32 %1490, 3
  %1492 = extractvalue %dx.types.CBufRet.f32 %544, 0
  %1493 = fmul fast float %1492, %1491
  %1494 = fmul fast float %1493, %1435
  %1495 = fmul fast float %1493, %1462
  %1496 = fmul fast float %1493, %1489
  %1497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1498 = extractvalue %dx.types.CBufRet.f32 %1497, 3
  %1499 = fcmp fast une float %1498, 0.000000e+00
  %1500 = extractvalue %dx.types.CBufRet.f32 %1497, 0
  %1501 = extractvalue %dx.types.CBufRet.f32 %1497, 1
  %1502 = extractvalue %dx.types.CBufRet.f32 %1497, 2
  br i1 %1499, label %1503, label %1525, !dx.controlflow.hints !63

; <label>:1503                                    ; preds = %1367
  %1504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1505 = extractvalue %dx.types.CBufRet.f32 %1504, 0
  %1506 = extractvalue %dx.types.CBufRet.f32 %1504, 1
  %1507 = extractvalue %dx.types.CBufRet.f32 %1504, 2
  %1508 = call float @dx.op.dot3.f32(i32 55, float %1500, float %1501, float %1502, float %110, float %111, float %112)  ; Dot3(ax,ay,az,bx,by,bz)
  %1509 = fcmp fast ogt float %554, 0.000000e+00
  %1510 = select i1 %1509, float 1.000000e+00, float -1.000000e+00
  %1511 = fmul fast float %1510, 5.000000e-01
  %1512 = fmul fast float %1511, %1508
  %1513 = fmul fast float %1510, %554
  %1514 = fadd fast float %1512, 4.921875e-01
  %1515 = fadd fast float %1513, -3.125000e-02
  %1516 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %18, float %1514, float 0x3FB25F3060000000, float %1515, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1517 = extractvalue %dx.types.ResRet.f32 %1516, 0
  %1518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1519 = extractvalue %dx.types.CBufRet.f32 %1518, 0
  %1520 = fmul fast float %1517, 0x400921FB60000000
  %1521 = fmul fast float %1520, %1519
  %1522 = fmul fast float %1521, %1505
  %1523 = fmul fast float %1521, %1506
  %1524 = fmul fast float %1521, %1507
  br label %1525

; <label>:1525                                    ; preds = %1503, %1367
  %1526 = phi float [ %1522, %1503 ], [ 0.000000e+00, %1367 ]
  %1527 = phi float [ %1523, %1503 ], [ 0.000000e+00, %1367 ]
  %1528 = phi float [ %1524, %1503 ], [ 0.000000e+00, %1367 ]
  %1529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1530 = extractvalue %dx.types.CBufRet.f32 %1529, 0
  %1531 = fmul fast float %1530, %1500
  %1532 = fmul fast float %1530, %1501
  %1533 = fmul fast float %1530, %1502
  %1534 = fadd fast float %1531, %231
  %1535 = fsub fast float -0.000000e+00, %1534
  %1536 = fadd fast float %1532, %232
  %1537 = fsub fast float -0.000000e+00, %1536
  %1538 = fadd fast float %1533, %233
  br i1 %246, label %1613, label %1539, !dx.controlflow.hints !38

; <label>:1539                                    ; preds = %1525
  %1540 = extractvalue %dx.types.CBufRet.f32 %1529, 1
  %1541 = fcmp fast ogt float %1540, %1530
  br i1 %1541, label %1542, label %1544, !dx.controlflow.hints !39

; <label>:1542                                    ; preds = %1539
  %1543 = fsub fast float %1540, %1530
  br label %1604

; <label>:1544                                    ; preds = %1539
  %1545 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1546 = extractvalue %dx.types.CBufRet.i32 %1545, 3
  %1547 = icmp eq i32 %1546, 0
  %1548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %1549 = extractvalue %dx.types.CBufRet.f32 %1548, 2
  %1550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1551 = extractvalue %dx.types.CBufRet.f32 %1550, 2
  %1552 = fsub fast float %1549, %1538
  %1553 = fadd fast float %1552, %1551
  %1554 = fsub fast float 0xC7EFFFFFE0000000, %1538
  br i1 %1547, label %1564, label %1555, !dx.controlflow.hints !35

; <label>:1555                                    ; preds = %1544
  %1556 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1535, float %1537, float %1553)  ; Dot3(ax,ay,az,bx,by,bz)
  %1557 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1500, float %1501, float %1502)  ; Dot3(ax,ay,az,bx,by,bz)
  %1558 = fdiv fast float 1.000000e+00, %1557
  %1559 = fmul fast float %1558, %1556
  %1560 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1535, float %1537, float %1554)  ; Dot3(ax,ay,az,bx,by,bz)
  %1561 = fmul fast float %1558, %1560
  %1562 = call float @dx.op.binary.f32(i32 36, float %1559, float %1561)  ; FMin(a,b)
  %1563 = call float @dx.op.binary.f32(i32 35, float %1559, float %1561)  ; FMax(a,b)
  br label %1597

; <label>:1564                                    ; preds = %1544
  %1565 = extractvalue %dx.types.CBufRet.f32 %1548, 0
  %1566 = extractvalue %dx.types.CBufRet.f32 %1548, 1
  %1567 = extractvalue %dx.types.CBufRet.f32 %1550, 0
  %1568 = extractvalue %dx.types.CBufRet.f32 %1550, 1
  %1569 = fdiv fast float 1.000000e+00, %1500
  %1570 = fdiv fast float 1.000000e+00, %1501
  %1571 = fdiv fast float 1.000000e+00, %1502
  %1572 = fsub fast float %1565, %1534
  %1573 = fmul fast float %1569, %1572
  %1574 = fadd fast float %1572, %1567
  %1575 = fmul fast float %1574, %1569
  %1576 = call float @dx.op.binary.f32(i32 36, float %1573, float %1575)  ; FMin(a,b)
  %1577 = call float @dx.op.binary.f32(i32 35, float %1573, float %1575)  ; FMax(a,b)
  %1578 = fsub fast float %1566, %1536
  %1579 = fmul fast float %1570, %1578
  %1580 = fadd fast float %1578, %1568
  %1581 = fmul fast float %1580, %1570
  %1582 = call float @dx.op.binary.f32(i32 36, float %1579, float %1581)  ; FMin(a,b)
  %1583 = call float @dx.op.binary.f32(i32 35, float %1576, float %1582)  ; FMax(a,b)
  %1584 = call float @dx.op.binary.f32(i32 35, float %1579, float %1581)  ; FMax(a,b)
  %1585 = call float @dx.op.binary.f32(i32 36, float %1577, float %1584)  ; FMin(a,b)
  %1586 = fmul fast float %1571, %1554
  %1587 = fmul fast float %1571, %1553
  %1588 = call float @dx.op.binary.f32(i32 36, float %1586, float %1587)  ; FMin(a,b)
  %1589 = call float @dx.op.binary.f32(i32 35, float %1583, float %1588)  ; FMax(a,b)
  %1590 = call float @dx.op.binary.f32(i32 35, float %1586, float %1587)  ; FMax(a,b)
  %1591 = call float @dx.op.binary.f32(i32 36, float %1585, float %1590)  ; FMin(a,b)
  %1592 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1589)  ; FMax(a,b)
  %1593 = fcmp fast ult float %1591, %1592
  br i1 %1593, label %1597, label %1594, !dx.controlflow.hints !36

; <label>:1594                                    ; preds = %1564
  %1595 = call float @dx.op.binary.f32(i32 36, float %1589, float %1591)  ; FMin(a,b)
  %1596 = call float @dx.op.binary.f32(i32 35, float %1589, float %1591)  ; FMax(a,b)
  br label %1597

; <label>:1597                                    ; preds = %1594, %1564, %1555
  %1598 = phi float [ %1562, %1555 ], [ %1595, %1594 ], [ 0.000000e+00, %1564 ]
  %1599 = phi float [ %1563, %1555 ], [ %1596, %1594 ], [ 0.000000e+00, %1564 ]
  %1600 = fcmp fast ogt float %1598, 0.000000e+00
  br i1 %1600, label %1604, label %1601, !dx.controlflow.hints !40

; <label>:1601                                    ; preds = %1597
  %1602 = fcmp fast ugt float %1599, 0.000000e+00
  br i1 %1602, label %1603, label %1604, !dx.controlflow.hints !41

; <label>:1603                                    ; preds = %1601
  br label %1604

; <label>:1604                                    ; preds = %1603, %1601, %1597, %1542
  %1605 = phi float [ %1543, %1542 ], [ 0.000000e+00, %1603 ], [ 0x47EFFFFFE0000000, %1601 ], [ %1598, %1597 ]
  %1606 = phi i32 [ %199, %1542 ], [ %199, %1603 ], [ 0, %1601 ], [ %199, %1597 ]
  %1607 = icmp ne i32 %1606, 0
  %1608 = zext i1 %1607 to i32
  %1609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1610 = extractvalue %dx.types.CBufRet.f32 %1609, 2
  %1611 = call float @dx.op.binary.f32(i32 35, float %1605, float %1610)  ; FMax(a,b)
  %1612 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %1611)  ; FMin(a,b)
  br label %1613

; <label>:1613                                    ; preds = %1604, %1525
  %1614 = phi float [ %1612, %1604 ], [ 0x47EFFFFFE0000000, %1525 ]
  %1615 = phi i32 [ %1608, %1604 ], [ 0, %1525 ]
  %1616 = icmp eq i32 %1615, 0
  br i1 %1616, label %1690, label %1617, !dx.controlflow.hints !47

; <label>:1617                                    ; preds = %1613
  %1618 = fmul fast float %421, %1530
  %1619 = call float @dx.op.unary.f32(i32 23, float %1618)  ; Log(value)
  %1620 = fmul fast float %1619, 0x3FE62E4300000000
  %1621 = call float @dx.op.binary.f32(i32 35, float %1620, float 1.000000e+00)  ; FMax(a,b)
  %1622 = fmul fast float %1621, 0x47EFFFFFE0000000
  %1623 = call float @dx.op.binary.f32(i32 36, float %1622, float %1614)  ; FMin(a,b)
  %1624 = call float @dx.op.binary.f32(i32 35, float %1623, float 0.000000e+00)  ; FMax(a,b)
  %1625 = fcmp fast ogt float %1624, 0x3F1A36E2E0000000
  %1626 = fadd fast float %1531, %1534
  %1627 = fadd fast float %1532, %1536
  %1628 = select i1 %1625, float %1626, float %1534
  %1629 = select i1 %1625, float %1627, float %1536
  %1630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %1631 = extractvalue %dx.types.CBufRet.f32 %1630, 0
  %1632 = extractvalue %dx.types.CBufRet.f32 %1630, 1
  %1633 = fsub fast float %1628, %1631
  %1634 = fsub fast float %1629, %1632
  %1635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %1636 = extractvalue %dx.types.CBufRet.f32 %1635, 0
  %1637 = extractvalue %dx.types.CBufRet.f32 %1635, 1
  %1638 = fmul fast float %1633, %1636
  %1639 = fmul fast float %1634, %1637
  %1640 = fsub fast float 1.000000e+00, %1639
  %1641 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1642 = extractvalue %dx.types.CBufRet.i32 %1641, 3
  %1643 = icmp eq i32 %1642, 0
  br i1 %1643, label %1650, label %1644, !dx.controlflow.hints !42

; <label>:1644                                    ; preds = %1617
  %1645 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %17, float %1638, float %1640, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1646 = extractvalue %dx.types.ResRet.f32 %1645, 0
  %1647 = extractvalue %dx.types.ResRet.f32 %1645, 1
  %1648 = extractvalue %dx.types.ResRet.f32 %1645, 2
  %1649 = extractvalue %dx.types.ResRet.f32 %1645, 3
  br label %1656

; <label>:1650                                    ; preds = %1617
  %1651 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %18, float %1638, float %1640, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1652 = extractvalue %dx.types.ResRet.f32 %1651, 0
  %1653 = extractvalue %dx.types.ResRet.f32 %1651, 1
  %1654 = extractvalue %dx.types.ResRet.f32 %1651, 2
  %1655 = extractvalue %dx.types.ResRet.f32 %1651, 3
  br label %1656

; <label>:1656                                    ; preds = %1650, %1644
  %1657 = phi float [ %1646, %1644 ], [ %1652, %1650 ]
  %1658 = phi float [ %1647, %1644 ], [ %1653, %1650 ]
  %1659 = phi float [ %1648, %1644 ], [ %1654, %1650 ]
  %1660 = phi float [ %1649, %1644 ], [ %1655, %1650 ]
  %1661 = extractvalue %dx.types.CBufRet.f32 %1635, 3
  %1662 = fmul fast float %1661, %1658
  %1663 = fmul fast float %1662, %1657
  %1664 = fsub fast float %1662, %1663
  %1665 = fcmp fast ole float %1664, 0.000000e+00
  %1666 = extractvalue %dx.types.CBufRet.f32 %1630, 2
  %1667 = fadd fast float %1663, %1666
  %1668 = fmul fast float %1661, %1659
  %1669 = fadd fast float %1668, %1666
  %1670 = fdiv fast float 1.000000e+00, %1664
  %1671 = select i1 %1665, float 1.000000e+06, float %1670
  %1672 = fsub fast float %1538, %1667
  %1673 = fmul fast float %1671, %1672
  %1674 = call float @dx.op.unary.f32(i32 7, float %1673)  ; Saturate(value)
  %1675 = extractvalue %dx.types.CBufRet.f32 %1635, 2
  %1676 = fmul fast float %1675, %1674
  %1677 = fsub fast float %1675, %1676
  %1678 = fcmp fast olt float %1538, %1669
  %1679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %1680 = extractvalue %dx.types.CBufRet.f32 %1679, 3
  %1681 = fmul fast float %1680, 3.000000e+00
  %1682 = select i1 %1678, float %1681, float 3.000000e+00
  %1683 = fmul fast float %1677, %1682
  %1684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1685 = extractvalue %dx.types.CBufRet.f32 %1684, 2
  %1686 = fmul fast float %1530, 0x3FD5555560000000
  %1687 = fmul fast float %1686, %1660
  %1688 = fmul fast float %1687, %1685
  %1689 = fmul fast float %1688, %1683
  br label %1690

; <label>:1690                                    ; preds = %1656, %1613
  %1691 = phi float [ %1689, %1656 ], [ 0.000000e+00, %1613 ]
  %1692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %1693 = extractvalue %dx.types.CBufRet.f32 %1692, 3
  %1694 = fmul fast float %1691, 0xBFF7154760000000
  %1695 = fmul fast float %1694, %1693
  %1696 = call float @dx.op.unary.f32(i32 21, float %1695)  ; Exp(value)
  %1697 = call float @dx.op.unary.f32(i32 7, float %1696)  ; Saturate(value)
  %1698 = fmul fast float %1697, %1526
  %1699 = fmul fast float %1697, %1527
  %1700 = fmul fast float %1697, %1528
  %1701 = fadd fast float %1698, %1494
  %1702 = fadd fast float %1699, %1495
  %1703 = fadd fast float %1700, %1496
  %1704 = fsub fast float 1.000000e+00, %563
  %1705 = fmul fast float %555, %227
  %1706 = fmul fast float %1705, %1704
  %1707 = fmul fast float %1706, %1701
  %1708 = fmul fast float %556, %227
  %1709 = fmul fast float %1708, %1704
  %1710 = fmul fast float %1709, %1702
  %1711 = fmul fast float %557, %227
  %1712 = fmul fast float %1711, %1704
  %1713 = fmul fast float %1712, %1703
  %1714 = fadd fast float %1707, %228
  %1715 = fadd fast float %1710, %229
  %1716 = fadd fast float %1713, %230
  %1717 = fdiv fast float %539, %431
  %1718 = fadd fast float %431, %234
  %1719 = fmul fast float %234, %234
  %1720 = fmul fast float %1718, %1718
  %1721 = fsub fast float %1719, %1720
  %1722 = fmul fast float %1721, -5.000000e-01
  %1723 = fmul fast float %1722, %1717
  %1724 = fadd fast float %1723, %226
  %1725 = fadd fast float %539, %236
  %1726 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1727 = extractvalue %dx.types.CBufRet.i32 %1726, 0
  %1728 = icmp eq i32 %1727, 0
  br i1 %1728, label %1755, label %1729, !dx.controlflow.hints !64

; <label>:1729                                    ; preds = %1690
  %1730 = icmp ne i32 %241, 0
  %1731 = zext i1 %1730 to i32
  %1732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1733 = extractvalue %dx.types.CBufRet.f32 %1732, 2
  %1734 = extractvalue %dx.types.CBufRet.f32 %1732, 0
  %1735 = fsub fast float %1718, %1734
  %1736 = fmul fast float %1735, %1733
  %1737 = call float @dx.op.unary.f32(i32 7, float %1736)  ; Saturate(value)
  %1738 = fadd fast float %1737, -5.000000e-01
  %1739 = fmul fast float %1738, 2.000000e+00
  %1740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1741 = extractvalue %dx.types.CBufRet.f32 %1740, 2
  %1742 = fcmp fast olt float %1739, %1741
  br i1 %1742, label %1743, label %1755, !dx.controlflow.hints !65

; <label>:1743                                    ; preds = %1729
  %1744 = fmul fast float %1739, %1739
  %1745 = fmul fast float %1704, %227
  %1746 = fmul fast float %1739, %1745
  %1747 = fmul fast float %1744, %1745
  %1748 = fmul fast float %1746, %1744
  %1749 = fmul fast float %1744, %1744
  %1750 = fmul fast float %1749, %1745
  %1751 = fadd fast float %1746, %237
  %1752 = fadd fast float %1747, %238
  %1753 = fadd fast float %1748, %239
  %1754 = fadd fast float %1750, %240
  br label %1755

; <label>:1755                                    ; preds = %1743, %1729, %1690
  %1756 = phi float [ %237, %1690 ], [ %1751, %1743 ], [ %237, %1729 ]
  %1757 = phi float [ %238, %1690 ], [ %1752, %1743 ], [ %238, %1729 ]
  %1758 = phi float [ %239, %1690 ], [ %1753, %1743 ], [ %239, %1729 ]
  %1759 = phi float [ %240, %1690 ], [ %1754, %1743 ], [ %240, %1729 ]
  %1760 = phi i32 [ %241, %1690 ], [ 1, %1743 ], [ %1731, %1729 ]
  %1761 = fmul fast float %563, %227
  br label %1762

; <label>:1762                                    ; preds = %1755, %558
  %1763 = phi float [ %559, %558 ], [ %1718, %1755 ]
  %1764 = phi float [ %226, %558 ], [ %1724, %1755 ]
  %1765 = phi float [ %227, %558 ], [ %1761, %1755 ]
  %1766 = phi float [ %228, %558 ], [ %1714, %1755 ]
  %1767 = phi float [ %229, %558 ], [ %1715, %1755 ]
  %1768 = phi float [ %230, %558 ], [ %1716, %1755 ]
  %1769 = phi float [ %236, %558 ], [ %1725, %1755 ]
  %1770 = phi float [ %237, %558 ], [ %1756, %1755 ]
  %1771 = phi float [ %238, %558 ], [ %1757, %1755 ]
  %1772 = phi float [ %239, %558 ], [ %1758, %1755 ]
  %1773 = phi float [ %240, %558 ], [ %1759, %1755 ]
  %1774 = phi i32 [ %241, %558 ], [ %1760, %1755 ]
  %1775 = fmul fast float %431, %110
  %1776 = fmul fast float %431, %111
  %1777 = fmul fast float %431, %112
  %1778 = fadd fast float %1775, %231
  %1779 = fadd fast float %1776, %232
  %1780 = fadd fast float %1777, %233
  %1781 = fcmp fast olt float %1763, %202
  %1782 = extractvalue %dx.types.CBufRet.f32 %544, 2
  %1783 = fcmp fast olt float %1782, %1765
  %1784 = and i1 %1781, %1783
  br i1 %1784, label %225, label %1785

; <label>:1785                                    ; preds = %1762
  br label %1786

; <label>:1786                                    ; preds = %1785, %198
  %1787 = phi float [ 0.000000e+00, %198 ], [ %1764, %1785 ]
  %1788 = phi float [ 1.000000e+00, %198 ], [ %1765, %1785 ]
  %1789 = phi float [ 0.000000e+00, %198 ], [ %1766, %1785 ]
  %1790 = phi float [ 0.000000e+00, %198 ], [ %1767, %1785 ]
  %1791 = phi float [ 0.000000e+00, %198 ], [ %1768, %1785 ]
  %1792 = phi float [ 0.000000e+00, %198 ], [ %1769, %1785 ]
  %1793 = phi float [ 0.000000e+00, %198 ], [ %1770, %1785 ]
  %1794 = phi float [ 0.000000e+00, %198 ], [ %1771, %1785 ]
  %1795 = phi float [ 0.000000e+00, %198 ], [ %1772, %1785 ]
  %1796 = phi float [ 0.000000e+00, %198 ], [ %1773, %1785 ]
  %1797 = phi i32 [ 0, %198 ], [ %1774, %1785 ]
  %1798 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1799 = extractvalue %dx.types.CBufRet.i32 %1798, 0
  %1800 = icmp eq i32 %1799, 0
  br i1 %1800, label %1842, label %1801, !dx.controlflow.hints !66

; <label>:1801                                    ; preds = %1786
  %1802 = icmp eq i32 %1797, 0
  br i1 %1802, label %1841, label %1803, !dx.controlflow.hints !67

; <label>:1803                                    ; preds = %1801
  %1804 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1805 = extractvalue %dx.types.CBufRet.i32 %1804, 2
  %1806 = icmp eq i32 %1805, 0
  br i1 %1806, label %1813, label %1807, !dx.controlflow.hints !68

; <label>:1807                                    ; preds = %1803
  %1808 = fsub fast float 1.000000e+00, %1788
  %1809 = fdiv fast float %1793, %1808
  %1810 = fdiv fast float %1794, %1808
  %1811 = fdiv fast float %1795, %1808
  %1812 = fdiv fast float %1796, %1808
  br label %1818

; <label>:1813                                    ; preds = %1803
  %1814 = fadd fast float %1793, %1788
  %1815 = fadd fast float %1794, %1788
  %1816 = fadd fast float %1795, %1788
  %1817 = fadd fast float %1796, %1788
  br label %1818

; <label>:1818                                    ; preds = %1813, %1807
  %1819 = phi float [ %1809, %1807 ], [ %1814, %1813 ]
  %1820 = phi float [ %1810, %1807 ], [ %1815, %1813 ]
  %1821 = phi float [ %1811, %1807 ], [ %1816, %1813 ]
  %1822 = phi float [ %1812, %1807 ], [ %1817, %1813 ]
  %1823 = call float @dx.op.binary.f32(i32 35, float %1819, float -1.000000e+00)  ; FMax(a,b)
  %1824 = call float @dx.op.binary.f32(i32 35, float %1820, float -1.000000e+00)  ; FMax(a,b)
  %1825 = call float @dx.op.binary.f32(i32 35, float %1821, float -1.000000e+00)  ; FMax(a,b)
  %1826 = call float @dx.op.binary.f32(i32 35, float %1822, float -1.000000e+00)  ; FMax(a,b)
  %1827 = call float @dx.op.binary.f32(i32 36, float %1823, float 1.000000e+00)  ; FMin(a,b)
  %1828 = call float @dx.op.binary.f32(i32 36, float %1824, float 1.000000e+00)  ; FMin(a,b)
  %1829 = call float @dx.op.binary.f32(i32 36, float %1825, float 1.000000e+00)  ; FMin(a,b)
  %1830 = call float @dx.op.binary.f32(i32 36, float %1826, float 1.000000e+00)  ; FMin(a,b)
  %1831 = fmul fast float %1827, 1.500000e+00
  %1832 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1829, float %1831)  ; FMad(a,b,c)
  %1833 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1828, float 0.000000e+00)  ; FMad(a,b,c)
  %1834 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1830, float %1833)  ; FMad(a,b,c)
  %1835 = fmul fast float %1827, 0x3FEBB67AE0000000
  %1836 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1829, float %1835)  ; FMad(a,b,c)
  %1837 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1828, float 0.000000e+00)  ; FMad(a,b,c)
  %1838 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1830, float %1837)  ; FMad(a,b,c)
  %1839 = fadd fast float %1832, 5.000000e-01
  %1840 = fadd fast float %1836, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %21, i32 %22, i32 0, float %1839, float %1834, float %1840, float %1838, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1842

; <label>:1841                                    ; preds = %1801
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %21, i32 %22, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1842

; <label>:1842                                    ; preds = %1841, %1818, %1786
  %1843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1844 = extractvalue %dx.types.CBufRet.f32 %1843, 2
  %1845 = fsub fast float %1788, %1844
  %1846 = fdiv fast float %1845, %1844
  %1847 = call float @dx.op.unary.f32(i32 7, float %1846)  ; Saturate(value)
  %1848 = fmul fast float %1847, 2.000000e+00
  %1849 = fsub fast float 3.000000e+00, %1848
  %1850 = fmul fast float %1847, %1847
  %1851 = fmul fast float %1850, %1788
  %1852 = fmul fast float %1851, %1849
  %1853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1854 = extractvalue %dx.types.CBufRet.f32 %1853, 0
  %1855 = extractvalue %dx.types.CBufRet.f32 %1853, 1
  %1856 = extractvalue %dx.types.CBufRet.f32 %1853, 2
  %1857 = call float @dx.op.dot3.f32(i32 55, float %110, float %111, float %112, float %1854, float %1855, float %1856)  ; Dot3(ax,ay,az,bx,by,bz)
  %1858 = fmul fast float %1857, %1787
  %1859 = fcmp fast ogt float %1792, 0.000000e+00
  %1860 = fdiv fast float 1.000000e+00, %1792
  %1861 = fmul fast float %1858, %1860
  %1862 = select i1 %1859, float %1861, float %121
  %1863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1864 = extractvalue %dx.types.CBufRet.f32 %1863, 0
  %1865 = extractvalue %dx.types.CBufRet.f32 %1863, 1
  %1866 = extractvalue %dx.types.CBufRet.f32 %1863, 2
  %1867 = fmul fast float %1864, %74
  %1868 = fmul fast float %1865, %74
  %1869 = fmul fast float %1866, %74
  %1870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1871 = extractvalue %dx.types.CBufRet.f32 %1870, 0
  %1872 = extractvalue %dx.types.CBufRet.f32 %1870, 1
  %1873 = extractvalue %dx.types.CBufRet.f32 %1870, 2
  %1874 = fmul fast float %1871, %75
  %1875 = fmul fast float %1872, %75
  %1876 = fmul fast float %1873, %75
  %1877 = fadd fast float %1874, %1867
  %1878 = fadd fast float %1875, %1868
  %1879 = fadd fast float %1876, %1869
  %1880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1881 = extractvalue %dx.types.CBufRet.f32 %1880, 0
  %1882 = extractvalue %dx.types.CBufRet.f32 %1880, 1
  %1883 = extractvalue %dx.types.CBufRet.f32 %1880, 2
  %1884 = fadd fast float %1877, %1881
  %1885 = fadd fast float %1878, %1882
  %1886 = fadd fast float %1879, %1883
  %1887 = fmul fast float %1884, %1862
  %1888 = fmul fast float %1885, %1862
  %1889 = fmul fast float %1886, %1862
  %1890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1891 = extractvalue %dx.types.CBufRet.f32 %1890, 0
  %1892 = extractvalue %dx.types.CBufRet.f32 %1890, 1
  %1893 = extractvalue %dx.types.CBufRet.f32 %1890, 2
  %1894 = extractvalue %dx.types.CBufRet.f32 %1890, 3
  %1895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1896 = extractvalue %dx.types.CBufRet.f32 %1895, 0
  %1897 = extractvalue %dx.types.CBufRet.f32 %1895, 1
  %1898 = extractvalue %dx.types.CBufRet.f32 %1895, 2
  %1899 = extractvalue %dx.types.CBufRet.f32 %1895, 3
  %1900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1901 = extractvalue %dx.types.CBufRet.f32 %1900, 0
  %1902 = extractvalue %dx.types.CBufRet.f32 %1900, 1
  %1903 = extractvalue %dx.types.CBufRet.f32 %1900, 2
  %1904 = extractvalue %dx.types.CBufRet.f32 %1900, 3
  %1905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1906 = extractvalue %dx.types.CBufRet.f32 %1905, 0
  %1907 = extractvalue %dx.types.CBufRet.f32 %1905, 1
  %1908 = extractvalue %dx.types.CBufRet.f32 %1905, 2
  %1909 = extractvalue %dx.types.CBufRet.f32 %1905, 3
  %1910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1911 = extractvalue %dx.types.CBufRet.f32 %1910, 3
  %1912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1913 = extractvalue %dx.types.CBufRet.f32 %1912, 3
  %1914 = extractvalue %dx.types.CBufRet.f32 %1912, 0
  %1915 = extractvalue %dx.types.CBufRet.f32 %1912, 1
  %1916 = extractvalue %dx.types.CBufRet.f32 %1912, 2
  %1917 = fcmp fast olt float %1916, -5.000000e-01
  %1918 = call float @dx.op.dot3.f32(i32 55, float %1887, float %1888, float %1889, float %1887, float %1888, float %1889)  ; Dot3(ax,ay,az,bx,by,bz)
  %1919 = call float @dx.op.unary.f32(i32 25, float %1918)  ; Rsqrt(value)
  %1920 = fmul fast float %1919, %1918
  %1921 = fmul fast float %1919, %1887
  %1922 = fmul fast float %1919, %1888
  %1923 = fmul fast float %1919, %1889
  %1924 = fadd fast float %1920, %1894
  %1925 = call float @dx.op.dot3.f32(i32 55, float %1921, float %1922, float %1923, float %1891, float %1892, float %1893)  ; Dot3(ax,ay,az,bx,by,bz)
  %1926 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1927 = extractvalue %dx.types.CBufRet.i32 %1926, 1
  %1928 = and i32 %1927, 1
  %1929 = icmp ne i32 %1928, 0
  %1930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1931 = extractvalue %dx.types.CBufRet.f32 %1930, 2
  %1932 = fcmp fast ogt float %1931, 0.000000e+00
  %1933 = and i1 %1929, %1932
  br i1 %1933, label %1934, label %2340, !dx.controlflow.hints !69

; <label>:1934                                    ; preds = %1842
  %1935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1936 = extractvalue %dx.types.CBufRet.f32 %1935, 3
  %1937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1938 = extractvalue %dx.types.CBufRet.f32 %1937, 2
  %1939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1940 = extractvalue %dx.types.CBufRet.f32 %1939, 2
  %1941 = fsub fast float %1938, %1940
  %1942 = and i32 %1927, 2
  %1943 = extractvalue %dx.types.CBufRet.i32 %1926, 0
  %1944 = call i32 @dx.op.binary.i32(i32 40, i32 %1943, i32 3)  ; UMin(a,b)
  %1945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1946 = extractvalue %dx.types.CBufRet.f32 %1945, 0
  %1947 = extractvalue %dx.types.CBufRet.f32 %1945, 1
  %1948 = extractvalue %dx.types.CBufRet.f32 %1939, 0
  %1949 = extractvalue %dx.types.CBufRet.f32 %1939, 1
  %1950 = fsub fast float %1946, %1948
  %1951 = fsub fast float %1947, %1949
  %1952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1953 = extractvalue %dx.types.CBufRet.f32 %1952, 0
  %1954 = fcmp fast ogt float %1953, 0.000000e+00
  %1955 = fsub fast float -0.000000e+00, %1950
  %1956 = fsub fast float -0.000000e+00, %1951
  %1957 = call float @dx.op.dot2.f32(i32 54, float %1921, float %1922, float %1921, float %1922)  ; Dot2(ax,ay,bx,by)
  %1958 = call float @dx.op.dot2.f32(i32 54, float %1921, float %1922, float %1955, float %1956)  ; Dot2(ax,ay,bx,by)
  %1959 = fmul fast float %1958, 2.000000e+00
  %1960 = call float @dx.op.dot2.f32(i32 54, float %1955, float %1956, float %1955, float %1956)  ; Dot2(ax,ay,bx,by)
  %1961 = fmul fast float %1953, %1953
  %1962 = fsub fast float %1960, %1961
  %1963 = fmul fast float %1959, %1959
  %1964 = fmul fast float %1957, 4.000000e+00
  %1965 = fmul fast float %1964, %1962
  %1966 = fsub fast float %1963, %1965
  %1967 = fcmp fast ogt float %1966, 0.000000e+00
  br i1 %1967, label %1968, label %1983, !dx.controlflow.hints !70

; <label>:1968                                    ; preds = %1934
  %1969 = fcmp fast ogt float %1959, 0.000000e+00
  %1970 = call float @dx.op.unary.f32(i32 24, float %1966)  ; Sqrt(value)
  %1971 = fsub fast float -0.000000e+00, %1970
  %1972 = select i1 %1969, float %1970, float %1971
  %1973 = fadd fast float %1972, %1959
  %1974 = fmul float %1973, -5.000000e-01
  %1975 = fdiv fast float %1974, %1957
  %1976 = call float @dx.op.binary.f32(i32 35, float %1975, float 0.000000e+00)  ; FMax(a,b)
  %1977 = call float @dx.op.binary.f32(i32 36, float %1920, float %1976)  ; FMin(a,b)
  %1978 = fdiv fast float %1962, %1974
  %1979 = call float @dx.op.binary.f32(i32 35, float %1978, float 0.000000e+00)  ; FMax(a,b)
  %1980 = call float @dx.op.binary.f32(i32 36, float %1920, float %1979)  ; FMin(a,b)
  %1981 = call float @dx.op.binary.f32(i32 36, float %1977, float %1980)  ; FMin(a,b)
  %1982 = call float @dx.op.binary.f32(i32 35, float %1977, float %1980)  ; FMax(a,b)
  br label %1983

; <label>:1983                                    ; preds = %1968, %1934
  %1984 = phi float [ %1982, %1968 ], [ -1.000000e+00, %1934 ]
  %1985 = phi float [ %1981, %1968 ], [ -1.000000e+00, %1934 ]
  %1986 = phi i1 [ true, %1968 ], [ false, %1934 ]
  %1987 = and i1 %1954, %1986
  br i1 %1987, label %1988, label %1990, !dx.controlflow.hints !71

; <label>:1988                                    ; preds = %1983
  %1989 = fcmp fast oeq float %1985, %1984
  br i1 %1989, label %2293, label %1991, !dx.controlflow.hints !72

; <label>:1990                                    ; preds = %1983
  br i1 %1954, label %2293, label %1991, !dx.controlflow.hints !73

; <label>:1991                                    ; preds = %1990, %1988
  %1992 = phi float [ %1920, %1990 ], [ %1984, %1988 ]
  %1993 = phi float [ 0.000000e+00, %1990 ], [ %1985, %1988 ]
  %1994 = icmp ne i32 %1942, 0
  %1995 = fmul fast float %1992, %1923
  %1996 = fadd fast float %1995, %1936
  %1997 = fmul fast float %1996, %1992
  %1998 = select i1 %1994, float 0.000000e+00, float %1997
  %1999 = fcmp fast oeq float %1923, 0.000000e+00
  %2000 = fdiv fast float %1941, %1923
  %2001 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2000)  ; FMax(a,b)
  %2002 = select i1 %1999, float %1992, float %2001
  %2003 = call float @dx.op.binary.f32(i32 36, float %1992, float %2002)  ; FMin(a,b)
  %2004 = fcmp fast ogt float %1923, 0.000000e+00
  %2005 = fcmp fast olt float %1941, 0.000000e+00
  br i1 %2004, label %2006, label %2063, !dx.controlflow.hints !74

; <label>:2006                                    ; preds = %1991
  %2007 = icmp eq i32 %1942, 0
  br i1 %2005, label %2008, label %2052, !dx.controlflow.hints !75

; <label>:2008                                    ; preds = %2006
  %2009 = select i1 %2007, float %1992, float 0.000000e+00
  %2010 = fsub fast float -0.000000e+00, %2009
  %2011 = call float @dx.op.unary.f32(i32 6, float %2010)  ; FAbs(value)
  %2012 = fmul fast float %2009, %1923
  %2013 = fadd fast float %2012, %1936
  %2014 = fmul fast float %2011, %2013
  %2015 = fsub fast float %1998, %2014
  %2016 = fsub fast float %1992, %2011
  %2017 = select i1 %2007, float %2016, float 0.000000e+00
  %2018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2019 = extractvalue %dx.types.CBufRet.f32 %2018, 0
  %2020 = extractvalue %dx.types.CBufRet.f32 %2018, 1
  %2021 = extractvalue %dx.types.CBufRet.f32 %2018, 2
  %2022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2023 = extractvalue %dx.types.CBufRet.f32 %2022, 0
  %2024 = extractvalue %dx.types.CBufRet.f32 %2022, 1
  %2025 = extractvalue %dx.types.CBufRet.f32 %2022, 2
  %2026 = extractvalue %dx.types.CBufRet.f32 %2022, 3
  %2027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2028 = extractvalue %dx.types.CBufRet.f32 %2027, 3
  %2029 = call float @dx.op.binary.f32(i32 36, float %2015, float %2028)  ; FMin(a,b)
  %2030 = fmul fast float %2026, %2017
  %2031 = call float @dx.op.unary.f32(i32 7, float %2030)  ; Saturate(value)
  %2032 = fsub fast float %2023, %2019
  %2033 = fsub fast float %2024, %2020
  %2034 = fsub fast float %2025, %2021
  %2035 = fmul fast float %2031, %2032
  %2036 = fmul fast float %2031, %2033
  %2037 = fmul fast float %2031, %2034
  %2038 = fadd fast float %2035, %2019
  %2039 = fadd fast float %2036, %2020
  %2040 = fadd fast float %2037, %2021
  %2041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2042 = extractvalue %dx.types.CBufRet.f32 %2041, 0
  %2043 = extractvalue %dx.types.CBufRet.f32 %2041, 1
  %2044 = fadd fast float %2043, %2042
  %2045 = call float @dx.op.unary.f32(i32 7, float %2044)  ; Saturate(value)
  %2046 = extractvalue %dx.types.CBufRet.f32 %2041, 2
  %2047 = extractvalue %dx.types.CBufRet.f32 %2041, 3
  %2048 = fadd fast float %2047, %2046
  %2049 = call float @dx.op.unary.f32(i32 7, float %2048)  ; Saturate(value)
  %2050 = fmul fast float %2045, %2029
  %2051 = fmul fast float %2050, %2049
  br label %2293

; <label>:2052                                    ; preds = %2006
  br i1 %2007, label %2053, label %2074, !dx.controlflow.hints !76

; <label>:2053                                    ; preds = %2052
  %2054 = call float @dx.op.binary.f32(i32 36, float %2003, float %1993)  ; FMin(a,b)
  %2055 = fsub fast float %2003, %2054
  %2056 = fsub fast float %2055, %1992
  %2057 = call float @dx.op.unary.f32(i32 6, float %2056)  ; FAbs(value)
  %2058 = fadd fast float %2055, %1992
  %2059 = fmul fast float %2058, %1923
  %2060 = fadd fast float %2059, %1936
  %2061 = fmul fast float %2060, %2057
  %2062 = fsub fast float %1998, %2061
  br label %2074

; <label>:2063                                    ; preds = %1991
  br i1 %2005, label %2064, label %2074, !dx.controlflow.hints !77

; <label>:2064                                    ; preds = %2063
  %2065 = call float @dx.op.binary.f32(i32 35, float %1993, float %2003)  ; FMax(a,b)
  %2066 = icmp eq i32 %1942, 0
  %2067 = select i1 %2066, float %2003, float 0.000000e+00
  %2068 = fsub fast float -0.000000e+00, %2067
  %2069 = call float @dx.op.unary.f32(i32 6, float %2068)  ; FAbs(value)
  %2070 = fmul fast float %2067, %1923
  %2071 = fadd fast float %2070, %1936
  %2072 = fmul fast float %2069, %2071
  %2073 = fsub fast float %1998, %2072
  br label %2074

; <label>:2074                                    ; preds = %2064, %2063, %2053, %2052
  %2075 = phi float [ %1993, %2052 ], [ %1993, %2053 ], [ %2065, %2064 ], [ %1993, %2063 ]
  %2076 = phi float [ 0.000000e+00, %2052 ], [ %2057, %2053 ], [ %2069, %2064 ], [ 0.000000e+00, %2063 ]
  %2077 = phi float [ %1998, %2052 ], [ %2062, %2053 ], [ %2073, %2064 ], [ %1998, %2063 ]
  %2078 = phi float [ %2003, %2052 ], [ %2003, %2053 ], [ %1992, %2064 ], [ %1992, %2063 ]
  %2079 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 0
  store float -1.000000e+00, float* %2079, align 4, !tbaa !78, !noalias !82
  %2080 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 1
  store float -1.000000e+00, float* %2080, align 4, !tbaa !78, !noalias !82
  %2081 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 2
  store float -1.000000e+00, float* %2081, align 4, !tbaa !78, !noalias !82
  %2082 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 0
  store float -1.000000e+00, float* %2082, align 4, !tbaa !78, !noalias !82
  %2083 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 1
  store float -1.000000e+00, float* %2083, align 4, !tbaa !78, !noalias !82
  %2084 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 2
  store float -1.000000e+00, float* %2084, align 4, !tbaa !78, !noalias !82
  %2085 = icmp sgt i32 %1944, 0
  br i1 %2085, label %2086, label %2147

; <label>:2086                                    ; preds = %2074
  br label %2087

; <label>:2087                                    ; preds = %2136, %2086
  %2088 = phi i32 [ %2137, %2136 ], [ 0, %2086 ]
  %2089 = phi i32 [ %2138, %2136 ], [ 0, %2086 ]
  %2090 = add nuw i32 %2089, 171
  %2091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 %2090)  ; CBufferLoadLegacy(handle,regIndex)
  %2092 = extractvalue %dx.types.CBufRet.f32 %2091, 0
  %2093 = extractvalue %dx.types.CBufRet.f32 %2091, 1
  %2094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2095 = extractvalue %dx.types.CBufRet.f32 %2094, 0
  %2096 = extractvalue %dx.types.CBufRet.f32 %2094, 1
  %2097 = fsub fast float %2092, %2095
  %2098 = fsub fast float %2093, %2096
  %2099 = extractvalue %dx.types.CBufRet.f32 %2091, 2
  %2100 = fsub fast float -0.000000e+00, %2097
  %2101 = fsub fast float -0.000000e+00, %2098
  %2102 = call float @dx.op.dot2.f32(i32 54, float %1921, float %1922, float %2100, float %2101)  ; Dot2(ax,ay,bx,by)
  %2103 = fmul fast float %2102, 2.000000e+00
  %2104 = call float @dx.op.dot2.f32(i32 54, float %2100, float %2101, float %2100, float %2101)  ; Dot2(ax,ay,bx,by)
  %2105 = fmul fast float %2099, %2099
  %2106 = fsub fast float %2104, %2105
  %2107 = fmul fast float %2103, %2103
  %2108 = fmul fast float %1964, %2106
  %2109 = fsub fast float %2107, %2108
  %2110 = fcmp fast ogt float %2109, 0.000000e+00
  br i1 %2110, label %2111, label %2126, !dx.controlflow.hints !70

; <label>:2111                                    ; preds = %2087
  %2112 = fcmp fast ogt float %2103, 0.000000e+00
  %2113 = call float @dx.op.unary.f32(i32 24, float %2109)  ; Sqrt(value)
  %2114 = fsub fast float -0.000000e+00, %2113
  %2115 = select i1 %2112, float %2113, float %2114
  %2116 = fadd fast float %2115, %2103
  %2117 = fmul float %2116, -5.000000e-01
  %2118 = fdiv fast float %2117, %1957
  %2119 = call float @dx.op.binary.f32(i32 35, float %2118, float 0.000000e+00)  ; FMax(a,b)
  %2120 = call float @dx.op.binary.f32(i32 36, float %1992, float %2119)  ; FMin(a,b)
  %2121 = fdiv fast float %2106, %2117
  %2122 = call float @dx.op.binary.f32(i32 35, float %2121, float 0.000000e+00)  ; FMax(a,b)
  %2123 = call float @dx.op.binary.f32(i32 36, float %1992, float %2122)  ; FMin(a,b)
  %2124 = call float @dx.op.binary.f32(i32 36, float %2120, float %2123)  ; FMin(a,b)
  %2125 = call float @dx.op.binary.f32(i32 35, float %2120, float %2123)  ; FMax(a,b)
  br label %2126

; <label>:2126                                    ; preds = %2111, %2087
  %2127 = phi float [ %2125, %2111 ], [ -1.000000e+00, %2087 ]
  %2128 = phi float [ %2124, %2111 ], [ -1.000000e+00, %2087 ]
  %2129 = phi i1 [ true, %2111 ], [ false, %2087 ]
  br i1 %2129, label %2130, label %2136, !dx.controlflow.hints !93

; <label>:2130                                    ; preds = %2126
  %2131 = call float @dx.op.binary.f32(i32 35, float %2075, float %2128)  ; FMax(a,b)
  %2132 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 %2089
  store float %2131, float* %2132, align 4, !tbaa !78, !noalias !82
  %2133 = call float @dx.op.binary.f32(i32 35, float %2075, float %2127)  ; FMax(a,b)
  %2134 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 %2089
  store float %2133, float* %2134, align 4, !tbaa !78, !noalias !82
  %2135 = add nsw i32 %2088, 1
  br label %2136

; <label>:2136                                    ; preds = %2130, %2126
  %2137 = phi i32 [ %2135, %2130 ], [ %2088, %2126 ]
  %2138 = add nuw nsw i32 %2089, 1
  %2139 = icmp eq i32 %2138, %1944
  br i1 %2139, label %2140, label %2087

; <label>:2140                                    ; preds = %2136
  %2141 = load float, float* %2081, align 4, !tbaa !78, !alias.scope !94, !noalias !97
  %2142 = load float, float* %2080, align 4, !tbaa !78, !alias.scope !100, !noalias !101
  %2143 = load float, float* %2079, align 4, !tbaa !78, !alias.scope !102, !noalias !103
  %2144 = load float, float* %2084, align 4, !tbaa !78, !alias.scope !104, !noalias !107
  %2145 = load float, float* %2083, align 4, !tbaa !78, !alias.scope !110, !noalias !111
  %2146 = load float, float* %2082, align 4, !tbaa !78, !alias.scope !112, !noalias !113
  br label %2147

; <label>:2147                                    ; preds = %2140, %2074
  %2148 = phi float [ -1.000000e+00, %2074 ], [ %2146, %2140 ]
  %2149 = phi float [ -1.000000e+00, %2074 ], [ %2145, %2140 ]
  %2150 = phi float [ -1.000000e+00, %2074 ], [ %2144, %2140 ]
  %2151 = phi float [ -1.000000e+00, %2074 ], [ %2143, %2140 ]
  %2152 = phi float [ -1.000000e+00, %2074 ], [ %2142, %2140 ]
  %2153 = phi float [ -1.000000e+00, %2074 ], [ %2141, %2140 ]
  %2154 = phi i32 [ 0, %2074 ], [ %2137, %2140 ]
  %2155 = call float @dx.op.binary.f32(i32 36, float %2152, float %2153)  ; FMin(a,b)
  %2156 = call float @dx.op.binary.f32(i32 36, float %2151, float %2155)  ; FMin(a,b)
  %2157 = call float @dx.op.binary.f32(i32 35, float %2151, float %2152)  ; FMax(a,b)
  %2158 = call float @dx.op.binary.f32(i32 36, float %2157, float %2153)  ; FMin(a,b)
  %2159 = call float @dx.op.binary.f32(i32 36, float %2151, float %2152)  ; FMin(a,b)
  %2160 = call float @dx.op.binary.f32(i32 35, float %2159, float %2158)  ; FMax(a,b)
  %2161 = call float @dx.op.binary.f32(i32 35, float %2152, float %2153)  ; FMax(a,b)
  %2162 = call float @dx.op.binary.f32(i32 35, float %2151, float %2161)  ; FMax(a,b)
  store float %2156, float* %2079, align 4, !tbaa !78, !alias.scope !102, !noalias !103
  store float %2160, float* %2080, align 4, !tbaa !78, !alias.scope !100, !noalias !101
  store float %2162, float* %2081, align 4, !tbaa !78, !alias.scope !94, !noalias !97
  %2163 = call float @dx.op.binary.f32(i32 36, float %2149, float %2150)  ; FMin(a,b)
  %2164 = call float @dx.op.binary.f32(i32 36, float %2148, float %2163)  ; FMin(a,b)
  %2165 = call float @dx.op.binary.f32(i32 35, float %2148, float %2149)  ; FMax(a,b)
  %2166 = call float @dx.op.binary.f32(i32 36, float %2165, float %2150)  ; FMin(a,b)
  %2167 = call float @dx.op.binary.f32(i32 36, float %2148, float %2149)  ; FMin(a,b)
  %2168 = call float @dx.op.binary.f32(i32 35, float %2167, float %2166)  ; FMax(a,b)
  %2169 = call float @dx.op.binary.f32(i32 35, float %2149, float %2150)  ; FMax(a,b)
  %2170 = call float @dx.op.binary.f32(i32 35, float %2148, float %2169)  ; FMax(a,b)
  store float %2164, float* %2082, align 4, !tbaa !78, !alias.scope !112, !noalias !113
  store float %2168, float* %2083, align 4, !tbaa !78, !alias.scope !110, !noalias !111
  store float %2170, float* %2084, align 4, !tbaa !78, !alias.scope !104, !noalias !107
  %2171 = sub nsw i32 3, %2154
  %2172 = icmp sgt i32 %2171, 2
  br i1 %2172, label %2173, label %2211, !dx.controlflow.hints !114

; <label>:2173                                    ; preds = %2147
  %2174 = icmp eq i32 %1942, 0
  %2175 = fsub fast float %1992, %2076
  %2176 = select i1 %2174, float %2175, float %2076
  %2177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2178 = extractvalue %dx.types.CBufRet.f32 %2177, 0
  %2179 = extractvalue %dx.types.CBufRet.f32 %2177, 1
  %2180 = extractvalue %dx.types.CBufRet.f32 %2177, 2
  %2181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2182 = extractvalue %dx.types.CBufRet.f32 %2181, 0
  %2183 = extractvalue %dx.types.CBufRet.f32 %2181, 1
  %2184 = extractvalue %dx.types.CBufRet.f32 %2181, 2
  %2185 = extractvalue %dx.types.CBufRet.f32 %2181, 3
  %2186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2187 = extractvalue %dx.types.CBufRet.f32 %2186, 3
  %2188 = call float @dx.op.binary.f32(i32 36, float %2077, float %2187)  ; FMin(a,b)
  %2189 = fmul fast float %2185, %2176
  %2190 = call float @dx.op.unary.f32(i32 7, float %2189)  ; Saturate(value)
  %2191 = fsub fast float %2182, %2178
  %2192 = fsub fast float %2183, %2179
  %2193 = fsub fast float %2184, %2180
  %2194 = fmul fast float %2190, %2191
  %2195 = fmul fast float %2190, %2192
  %2196 = fmul fast float %2190, %2193
  %2197 = fadd fast float %2194, %2178
  %2198 = fadd fast float %2195, %2179
  %2199 = fadd fast float %2196, %2180
  %2200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2201 = extractvalue %dx.types.CBufRet.f32 %2200, 0
  %2202 = extractvalue %dx.types.CBufRet.f32 %2200, 1
  %2203 = fadd fast float %2202, %2201
  %2204 = call float @dx.op.unary.f32(i32 7, float %2203)  ; Saturate(value)
  %2205 = extractvalue %dx.types.CBufRet.f32 %2200, 2
  %2206 = extractvalue %dx.types.CBufRet.f32 %2200, 3
  %2207 = fadd fast float %2206, %2205
  %2208 = call float @dx.op.unary.f32(i32 7, float %2207)  ; Saturate(value)
  %2209 = fmul fast float %2204, %2188
  %2210 = fmul fast float %2209, %2208
  br label %2293

; <label>:2211                                    ; preds = %2147
  %2212 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 %2171
  %2213 = load float, float* %2212, align 4, !tbaa !78, !noalias !82
  %2214 = fcmp fast olt float %2213, %2078
  %2215 = icmp sgt i32 %2154, 0
  %2216 = and i1 %2215, %2214
  br i1 %2216, label %2217, label %2254

; <label>:2217                                    ; preds = %2211
  br label %2218

; <label>:2218                                    ; preds = %2247, %2217
  %2219 = phi float [ %2248, %2247 ], [ %2076, %2217 ]
  %2220 = phi float [ %2249, %2247 ], [ %2077, %2217 ]
  %2221 = phi float [ %2229, %2247 ], [ %2213, %2217 ]
  %2222 = phi i32 [ %2226, %2247 ], [ %2171, %2217 ]
  %2223 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 %2222
  %2224 = load float, float* %2223, align 4, !tbaa !78, !noalias !82
  %2225 = icmp slt i32 %2222, 2
  %2226 = add nsw i32 %2222, 1
  %2227 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 %2226
  %2228 = load float, float* %2227, align 4, !tbaa !78, !noalias !82
  %2229 = select i1 %2225, float %2228, float %1992
  %2230 = call float @dx.op.binary.f32(i32 36, float %2229, float %2224)  ; FMin(a,b)
  %2231 = call float @dx.op.binary.f32(i32 36, float %2078, float %2230)  ; FMin(a,b)
  %2232 = icmp eq i32 %1942, 0
  %2233 = fadd fast float %2231, %2221
  %2234 = fmul fast float %2233, %1923
  %2235 = fadd fast float %2234, %1936
  br i1 %2232, label %2241, label %2236, !dx.controlflow.hints !115

; <label>:2236                                    ; preds = %2218
  %2237 = fsub fast float %2231, %2221
  %2238 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2237)  ; FMax(a,b)
  %2239 = fmul fast float %2238, %2235
  %2240 = fadd fast float %2239, %2220
  br label %2247

; <label>:2241                                    ; preds = %2218
  %2242 = fsub fast float %2221, %2231
  %2243 = call float @dx.op.unary.f32(i32 6, float %2242)  ; FAbs(value)
  %2244 = fadd fast float %2243, %2219
  %2245 = fmul fast float %2243, %2235
  %2246 = fsub fast float %2220, %2245
  br label %2247

; <label>:2247                                    ; preds = %2241, %2236
  %2248 = phi float [ %2238, %2236 ], [ %2244, %2241 ]
  %2249 = phi float [ %2240, %2236 ], [ %2246, %2241 ]
  %2250 = fcmp fast olt float %2229, %2078
  %2251 = icmp slt i32 %2226, 3
  %2252 = and i1 %2251, %2250
  br i1 %2252, label %2218, label %2253

; <label>:2253                                    ; preds = %2247
  br label %2254

; <label>:2254                                    ; preds = %2253, %2211
  %2255 = phi float [ %2076, %2211 ], [ %2248, %2253 ]
  %2256 = phi float [ %2077, %2211 ], [ %2249, %2253 ]
  %2257 = fsub fast float %1992, %2255
  %2258 = select i1 %1994, float %2255, float %2257
  %2259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2260 = extractvalue %dx.types.CBufRet.f32 %2259, 0
  %2261 = extractvalue %dx.types.CBufRet.f32 %2259, 1
  %2262 = extractvalue %dx.types.CBufRet.f32 %2259, 2
  %2263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2264 = extractvalue %dx.types.CBufRet.f32 %2263, 0
  %2265 = extractvalue %dx.types.CBufRet.f32 %2263, 1
  %2266 = extractvalue %dx.types.CBufRet.f32 %2263, 2
  %2267 = extractvalue %dx.types.CBufRet.f32 %2263, 3
  %2268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2269 = extractvalue %dx.types.CBufRet.f32 %2268, 3
  %2270 = call float @dx.op.binary.f32(i32 36, float %2256, float %2269)  ; FMin(a,b)
  %2271 = fmul fast float %2267, %2258
  %2272 = call float @dx.op.unary.f32(i32 7, float %2271)  ; Saturate(value)
  %2273 = fsub fast float %2264, %2260
  %2274 = fsub fast float %2265, %2261
  %2275 = fsub fast float %2266, %2262
  %2276 = fmul fast float %2272, %2273
  %2277 = fmul fast float %2272, %2274
  %2278 = fmul fast float %2272, %2275
  %2279 = fadd fast float %2276, %2260
  %2280 = fadd fast float %2277, %2261
  %2281 = fadd fast float %2278, %2262
  %2282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2283 = extractvalue %dx.types.CBufRet.f32 %2282, 0
  %2284 = extractvalue %dx.types.CBufRet.f32 %2282, 1
  %2285 = fadd fast float %2284, %2283
  %2286 = call float @dx.op.unary.f32(i32 7, float %2285)  ; Saturate(value)
  %2287 = extractvalue %dx.types.CBufRet.f32 %2282, 2
  %2288 = extractvalue %dx.types.CBufRet.f32 %2282, 3
  %2289 = fadd fast float %2288, %2287
  %2290 = call float @dx.op.unary.f32(i32 7, float %2289)  ; Saturate(value)
  %2291 = fmul fast float %2286, %2270
  %2292 = fmul fast float %2291, %2290
  br label %2293

; <label>:2293                                    ; preds = %2254, %2173, %2008, %1990, %1988
  %2294 = phi float [ %2017, %2008 ], [ %2176, %2173 ], [ %2258, %2254 ], [ 0.000000e+00, %1988 ], [ 0.000000e+00, %1990 ]
  %2295 = phi float [ %2051, %2008 ], [ %2210, %2173 ], [ %2292, %2254 ], [ 0.000000e+00, %1988 ], [ 0.000000e+00, %1990 ]
  %2296 = phi float [ %2038, %2008 ], [ %2197, %2173 ], [ %2279, %2254 ], [ 0.000000e+00, %1988 ], [ 0.000000e+00, %1990 ]
  %2297 = phi float [ %2039, %2008 ], [ %2198, %2173 ], [ %2280, %2254 ], [ 0.000000e+00, %1988 ], [ 0.000000e+00, %1990 ]
  %2298 = phi float [ %2040, %2008 ], [ %2199, %2173 ], [ %2281, %2254 ], [ 0.000000e+00, %1988 ], [ 0.000000e+00, %1990 ]
  %2299 = fmul fast float %1931, %2295
  %2300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2301 = extractvalue %dx.types.CBufRet.f32 %2300, 2
  %2302 = fsub fast float %1938, %2301
  %2303 = fcmp fast olt float %2299, -2.000000e+01
  %2304 = call float @dx.op.unary.f32(i32 21, float %2299)  ; Exp(value)
  %2305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2306 = extractvalue %dx.types.CBufRet.f32 %2305, 2
  %2307 = extractvalue %dx.types.CBufRet.f32 %2305, 3
  %2308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2309 = extractvalue %dx.types.CBufRet.f32 %2308, 2
  %2310 = fmul fast float %2307, %2302
  %2311 = call float @dx.op.unary.f32(i32 7, float %2310)  ; Saturate(value)
  %2312 = fsub fast float 1.000000e+00, %2311
  %2313 = fmul fast float %1923, 5.000000e-01
  %2314 = fadd fast float %2313, 5.000000e-01
  %2315 = call float @dx.op.unary.f32(i32 7, float %2314)  ; Saturate(value)
  %2316 = fsub fast float 1.000000e+00, %2315
  %2317 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2312)  ; FMax(a,b)
  %2318 = fdiv fast float %2316, %2317
  %2319 = fsub fast float %2302, %1889
  %2320 = call float @dx.op.unary.f32(i32 6, float %2319)  ; FAbs(value)
  %2321 = fmul fast float %2320, %2306
  %2322 = call float @dx.op.unary.f32(i32 7, float %2318)  ; Saturate(value)
  %2323 = fsub fast float 1.000000e+00, %2321
  %2324 = fmul fast float %2323, %2322
  %2325 = fadd fast float %2324, %2321
  %2326 = fmul fast float %2309, %2302
  %2327 = call float @dx.op.unary.f32(i32 7, float %2326)  ; Saturate(value)
  %2328 = fsub fast float 1.000000e+00, %2325
  %2329 = fmul fast float %2328, %2327
  %2330 = fadd fast float %2329, %2325
  %2331 = call float @dx.op.unary.f32(i32 7, float %2330)  ; Saturate(value)
  %2332 = fadd fast float %2304, -1.000000e+00
  %2333 = select i1 %2303, float -1.000000e+00, float %2332
  %2334 = fmul fast float %2331, %2333
  %2335 = fadd fast float %2334, 1.000000e+00
  %2336 = fsub fast float -0.000000e+00, %2334
  %2337 = fmul fast float %2296, %2336
  %2338 = fmul fast float %2297, %2336
  %2339 = fmul fast float %2298, %2336
  br label %2340

; <label>:2340                                    ; preds = %2293, %1842
  %2341 = phi float [ %2294, %2293 ], [ 0.000000e+00, %1842 ]
  %2342 = phi float [ %2335, %2293 ], [ 1.000000e+00, %1842 ]
  %2343 = phi float [ %2337, %2293 ], [ 0.000000e+00, %1842 ]
  %2344 = phi float [ %2338, %2293 ], [ 0.000000e+00, %1842 ]
  %2345 = phi float [ %2339, %2293 ], [ 0.000000e+00, %1842 ]
  %2346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2347 = extractvalue %dx.types.CBufRet.f32 %2346, 1
  %2348 = fsub fast float 1.000000e+00, %2342
  %2349 = fmul fast float %2348, %1924
  %2350 = fmul fast float %2349, %2347
  %2351 = fsub fast float %1924, %2350
  br i1 %1917, label %2352, label %2381, !dx.controlflow.hints !116

; <label>:2352                                    ; preds = %2340
  %2353 = fmul fast float %1925, %1914
  %2354 = fadd fast float %2353, %1915
  %2355 = call float @dx.op.unary.f32(i32 7, float %2354)  ; Saturate(value)
  %2356 = fmul fast float %1896, %2351
  %2357 = fsub fast float -0.000000e+00, %2356
  %2358 = fmul fast float %1897, %2351
  %2359 = fsub fast float -0.000000e+00, %2358
  %2360 = call float @dx.op.unary.f32(i32 21, float %2357)  ; Exp(value)
  %2361 = call float @dx.op.unary.f32(i32 21, float %2359)  ; Exp(value)
  %2362 = call float @dx.op.binary.f32(i32 35, float %1904, float %2360)  ; FMax(a,b)
  %2363 = call float @dx.op.binary.f32(i32 35, float %1904, float %2361)  ; FMax(a,b)
  %2364 = fsub fast float %2363, %2362
  %2365 = fmul fast float %2364, %2355
  %2366 = fadd fast float %2365, %2362
  %2367 = call float @dx.op.unary.f32(i32 7, float %2366)  ; Saturate(value)
  %2368 = fsub fast float %1901, %1906
  %2369 = fsub fast float %1902, %1907
  %2370 = fsub fast float %1903, %1908
  %2371 = fmul fast float %2355, %2368
  %2372 = fmul fast float %2355, %2369
  %2373 = fmul fast float %2355, %2370
  %2374 = fadd fast float %2371, %1906
  %2375 = fadd fast float %2372, %1907
  %2376 = fadd fast float %2373, %1908
  %2377 = fsub fast float 1.000000e+00, %2367
  %2378 = fmul fast float %2377, %2374
  %2379 = fmul fast float %2377, %2375
  %2380 = fmul fast float %2377, %2376
  br label %2440

; <label>:2381                                    ; preds = %2340
  %2382 = fmul fast float %2351, %1913
  %2383 = call float @dx.op.unary.f32(i32 7, float %2382)  ; Saturate(value)
  %2384 = fsub fast float 2.000000e+00, %2383
  %2385 = fmul fast float %2383, 9.921875e-01
  %2386 = fmul fast float %2385, %2384
  %2387 = fadd fast float %2386, 3.906250e-03
  %2388 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %2387, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2389 = extractvalue %dx.types.ResRet.f32 %2388, 0
  %2390 = fsub fast float %2383, %2389
  %2391 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2390)  ; FMax(a,b)
  %2392 = fmul fast float %1899, %1889
  %2393 = call float @dx.op.unary.f32(i32 6, float %2392)  ; FAbs(value)
  %2394 = fcmp fast ogt float %2393, 0x3EB0C6F7A0000000
  br i1 %2394, label %2395, label %2401, !dx.controlflow.hints !117

; <label>:2395                                    ; preds = %2381
  %2396 = fmul fast float %2392, 0xBFF7154760000000
  %2397 = call float @dx.op.unary.f32(i32 21, float %2396)  ; Exp(value)
  %2398 = fsub fast float 1.000000e+00, %2397
  %2399 = fdiv fast float %2398, %2392
  %2400 = fmul fast float %2399, %1909
  br label %2401

; <label>:2401                                    ; preds = %2395, %2381
  %2402 = phi float [ %2400, %2395 ], [ %1909, %2381 ]
  %2403 = fadd fast float %2402, %1911
  %2404 = fmul fast float %2403, %2391
  %2405 = fmul fast float %1896, %2404
  %2406 = fsub fast float -0.000000e+00, %2405
  %2407 = fmul fast float %1897, %2404
  %2408 = fsub fast float -0.000000e+00, %2407
  %2409 = fmul fast float %1898, %2404
  %2410 = fsub fast float -0.000000e+00, %2409
  %2411 = call float @dx.op.unary.f32(i32 21, float %2406)  ; Exp(value)
  %2412 = call float @dx.op.unary.f32(i32 21, float %2408)  ; Exp(value)
  %2413 = call float @dx.op.unary.f32(i32 21, float %2410)  ; Exp(value)
  %2414 = fmul fast float %1925, %1925
  %2415 = fadd fast float %2414, 1.000000e+00
  %2416 = fmul fast float %2415, 0x3FAE8EC8A0000000
  %2417 = fmul fast float %2416, %1906
  %2418 = fmul fast float %2416, %1907
  %2419 = fmul fast float %2416, %1908
  %2420 = fmul fast float %1925, %1904
  %2421 = fsub fast float 1.000000e+00, %2420
  %2422 = fmul fast float %1904, %1904
  %2423 = fsub fast float 1.000000e+00, %2422
  %2424 = fmul fast float %2423, 0x3FB45F3060000000
  %2425 = fmul fast float %2421, %2421
  %2426 = fdiv fast float 1.000000e+00, %2425
  %2427 = fmul fast float %2424, %2426
  %2428 = fmul fast float %2427, %1901
  %2429 = fmul fast float %2427, %1902
  %2430 = fmul fast float %2427, %1903
  %2431 = fadd fast float %2428, %2417
  %2432 = fadd fast float %2429, %2418
  %2433 = fadd fast float %2430, %2419
  %2434 = fsub fast float 1.000000e+00, %2411
  %2435 = fsub fast float 1.000000e+00, %2412
  %2436 = fsub fast float 1.000000e+00, %2413
  %2437 = fmul fast float %2431, %2434
  %2438 = fmul fast float %2432, %2435
  %2439 = fmul fast float %2433, %2436
  br label %2440

; <label>:2440                                    ; preds = %2401, %2352
  %2441 = phi float [ %2378, %2352 ], [ %2437, %2401 ]
  %2442 = phi float [ %2379, %2352 ], [ %2438, %2401 ]
  %2443 = phi float [ %2380, %2352 ], [ %2439, %2401 ]
  %2444 = phi float [ %2367, %2352 ], [ %2411, %2401 ]
  %2445 = phi float [ %2367, %2352 ], [ %2412, %2401 ]
  %2446 = phi float [ %2367, %2352 ], [ %2413, %2401 ]
  br i1 %1933, label %2447, label %2645, !dx.controlflow.hints !118

; <label>:2447                                    ; preds = %2440
  %2448 = extractvalue %dx.types.CBufRet.f32 %2346, 0
  %2449 = fmul fast float %2448, %2348
  %2450 = fsub fast float %2343, %2441
  %2451 = fsub fast float %2344, %2442
  %2452 = fsub fast float %2345, %2443
  %2453 = fmul fast float %2449, %2450
  %2454 = fmul fast float %2449, %2451
  %2455 = fmul fast float %2449, %2452
  %2456 = fadd fast float %2453, %2441
  %2457 = fadd fast float %2454, %2442
  %2458 = fadd fast float %2455, %2443
  %2459 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2444)  ; FMax(a,b)
  %2460 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2445)  ; FMax(a,b)
  %2461 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2446)  ; FMax(a,b)
  %2462 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2342)  ; FMax(a,b)
  %2463 = call float @dx.op.binary.f32(i32 35, float %2341, float %2351)  ; FMax(a,b)
  %2464 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2463)  ; FMax(a,b)
  %2465 = fdiv fast float %2341, %2464
  %2466 = call float @dx.op.unary.f32(i32 7, float %2465)  ; Saturate(value)
  %2467 = fdiv fast float %2351, %2464
  %2468 = call float @dx.op.unary.f32(i32 7, float %2467)  ; Saturate(value)
  %2469 = fcmp fast une float %2462, 1.000000e+00
  br i1 %2469, label %2470, label %2483, !dx.controlflow.hints !119

; <label>:2470                                    ; preds = %2447
  %2471 = call float @dx.op.unary.f32(i32 23, float %2462)  ; Log(value)
  %2472 = fmul fast float %2471, 0x3FE62E4300000000
  %2473 = fmul fast float %2343, %2472
  %2474 = fsub fast float -0.000000e+00, %2473
  %2475 = fmul fast float %2344, %2472
  %2476 = fsub fast float -0.000000e+00, %2475
  %2477 = fmul fast float %2345, %2472
  %2478 = fsub fast float -0.000000e+00, %2477
  %2479 = fsub fast float 1.000000e+00, %2462
  %2480 = fdiv fast float %2474, %2479
  %2481 = fdiv fast float %2476, %2479
  %2482 = fdiv fast float %2478, %2479
  br label %2483

; <label>:2483                                    ; preds = %2470, %2447
  %2484 = phi float [ %2480, %2470 ], [ %2343, %2447 ]
  %2485 = phi float [ %2481, %2470 ], [ %2344, %2447 ]
  %2486 = phi float [ %2482, %2470 ], [ %2345, %2447 ]
  %2487 = phi float [ %2472, %2470 ], [ 0.000000e+00, %2447 ]
  %2488 = fcmp fast une float %2459, 1.000000e+00
  br i1 %2488, label %2489, label %2496, !dx.controlflow.hints !120

; <label>:2489                                    ; preds = %2483
  %2490 = call float @dx.op.unary.f32(i32 23, float %2459)  ; Log(value)
  %2491 = fmul fast float %2490, 0x3FE62E4300000000
  %2492 = fmul fast float %2456, %2491
  %2493 = fsub fast float -0.000000e+00, %2492
  %2494 = fsub fast float 1.000000e+00, %2459
  %2495 = fdiv fast float %2493, %2494
  br label %2496

; <label>:2496                                    ; preds = %2489, %2483
  %2497 = phi float [ %2495, %2489 ], [ %2456, %2483 ]
  %2498 = phi float [ %2491, %2489 ], [ 0.000000e+00, %2483 ]
  %2499 = fcmp fast une float %2460, 1.000000e+00
  br i1 %2499, label %2500, label %2507, !dx.controlflow.hints !120

; <label>:2500                                    ; preds = %2496
  %2501 = call float @dx.op.unary.f32(i32 23, float %2460)  ; Log(value)
  %2502 = fmul fast float %2501, 0x3FE62E4300000000
  %2503 = fmul fast float %2457, %2502
  %2504 = fsub fast float -0.000000e+00, %2503
  %2505 = fsub fast float 1.000000e+00, %2460
  %2506 = fdiv fast float %2504, %2505
  br label %2507

; <label>:2507                                    ; preds = %2500, %2496
  %2508 = phi float [ %2506, %2500 ], [ %2457, %2496 ]
  %2509 = phi float [ %2502, %2500 ], [ 0.000000e+00, %2496 ]
  %2510 = fcmp fast une float %2461, 1.000000e+00
  br i1 %2510, label %2511, label %2518, !dx.controlflow.hints !120

; <label>:2511                                    ; preds = %2507
  %2512 = call float @dx.op.unary.f32(i32 23, float %2461)  ; Log(value)
  %2513 = fmul fast float %2512, 0x3FE62E4300000000
  %2514 = fmul fast float %2458, %2513
  %2515 = fsub fast float -0.000000e+00, %2514
  %2516 = fsub fast float 1.000000e+00, %2461
  %2517 = fdiv fast float %2515, %2516
  br label %2518

; <label>:2518                                    ; preds = %2511, %2507
  %2519 = phi float [ %2517, %2511 ], [ %2458, %2507 ]
  %2520 = phi float [ %2513, %2511 ], [ 0.000000e+00, %2507 ]
  %2521 = fmul fast float %2484, %2468
  %2522 = fmul fast float %2485, %2468
  %2523 = fmul fast float %2486, %2468
  %2524 = fmul fast float %2487, %2468
  %2525 = fmul fast float %2497, %2466
  %2526 = fmul fast float %2508, %2466
  %2527 = fmul fast float %2519, %2466
  %2528 = fmul fast float %2498, %2466
  %2529 = fmul fast float %2509, %2466
  %2530 = fmul fast float %2520, %2466
  %2531 = fadd fast float %2525, %2521
  %2532 = fadd fast float %2526, %2522
  %2533 = fadd fast float %2527, %2523
  %2534 = fadd fast float %2528, %2524
  %2535 = fadd fast float %2529, %2524
  %2536 = fadd fast float %2530, %2524
  %2537 = fcmp fast une float %2534, 0.000000e+00
  br i1 %2537, label %2538, label %2545, !dx.controlflow.hints !121

; <label>:2538                                    ; preds = %2518
  %2539 = fmul fast float %2534, 0x3FF7154760000000
  %2540 = call float @dx.op.unary.f32(i32 21, float %2539)  ; Exp(value)
  %2541 = fsub fast float 1.000000e+00, %2540
  %2542 = fmul fast float %2531, %2541
  %2543 = fsub fast float -0.000000e+00, %2542
  %2544 = fdiv fast float %2543, %2534
  br label %2545

; <label>:2545                                    ; preds = %2538, %2518
  %2546 = phi float [ %2540, %2538 ], [ 1.000000e+00, %2518 ]
  %2547 = phi float [ %2544, %2538 ], [ %2531, %2518 ]
  %2548 = fcmp fast une float %2535, 0.000000e+00
  br i1 %2548, label %2549, label %2556, !dx.controlflow.hints !121

; <label>:2549                                    ; preds = %2545
  %2550 = fmul fast float %2535, 0x3FF7154760000000
  %2551 = call float @dx.op.unary.f32(i32 21, float %2550)  ; Exp(value)
  %2552 = fsub fast float 1.000000e+00, %2551
  %2553 = fmul fast float %2532, %2552
  %2554 = fsub fast float -0.000000e+00, %2553
  %2555 = fdiv fast float %2554, %2535
  br label %2556

; <label>:2556                                    ; preds = %2549, %2545
  %2557 = phi float [ %2551, %2549 ], [ 1.000000e+00, %2545 ]
  %2558 = phi float [ %2555, %2549 ], [ %2532, %2545 ]
  %2559 = fcmp fast une float %2536, 0.000000e+00
  br i1 %2559, label %2560, label %2567, !dx.controlflow.hints !121

; <label>:2560                                    ; preds = %2556
  %2561 = fmul fast float %2536, 0x3FF7154760000000
  %2562 = call float @dx.op.unary.f32(i32 21, float %2561)  ; Exp(value)
  %2563 = fsub fast float 1.000000e+00, %2562
  %2564 = fmul fast float %2533, %2563
  %2565 = fsub fast float -0.000000e+00, %2564
  %2566 = fdiv fast float %2565, %2536
  br label %2567

; <label>:2567                                    ; preds = %2560, %2556
  %2568 = phi float [ %2562, %2560 ], [ 1.000000e+00, %2556 ]
  %2569 = phi float [ %2566, %2560 ], [ %2533, %2556 ]
  %2570 = fcmp fast ogt float %2466, %2468
  br i1 %2570, label %2571, label %2591, !dx.controlflow.hints !122

; <label>:2571                                    ; preds = %2567
  %2572 = fsub fast float 1.000000e+00, %2468
  %2573 = fmul fast float %2484, %2572
  %2574 = fmul fast float %2485, %2572
  %2575 = fmul fast float %2486, %2572
  %2576 = fmul fast float %2487, %2572
  %2577 = fcmp fast une float %2576, 0.000000e+00
  br i1 %2577, label %2578, label %2629, !dx.controlflow.hints !123

; <label>:2578                                    ; preds = %2571
  %2579 = fmul fast float %2576, 0x3FF7154760000000
  %2580 = call float @dx.op.unary.f32(i32 21, float %2579)  ; Exp(value)
  %2581 = fsub fast float 1.000000e+00, %2580
  %2582 = fmul fast float %2573, %2581
  %2583 = fsub fast float -0.000000e+00, %2582
  %2584 = fmul fast float %2574, %2581
  %2585 = fsub fast float -0.000000e+00, %2584
  %2586 = fmul fast float %2575, %2581
  %2587 = fsub fast float -0.000000e+00, %2586
  %2588 = fdiv fast float %2583, %2576
  %2589 = fdiv fast float %2585, %2576
  %2590 = fdiv fast float %2587, %2576
  br label %2629

; <label>:2591                                    ; preds = %2567
  %2592 = fsub fast float 1.000000e+00, %2466
  %2593 = fmul fast float %2497, %2592
  %2594 = fmul fast float %2508, %2592
  %2595 = fmul fast float %2519, %2592
  %2596 = fmul fast float %2498, %2592
  %2597 = fmul fast float %2509, %2592
  %2598 = fmul fast float %2520, %2592
  %2599 = fcmp fast une float %2596, 0.000000e+00
  br i1 %2599, label %2600, label %2607, !dx.controlflow.hints !121

; <label>:2600                                    ; preds = %2591
  %2601 = fmul fast float %2596, 0x3FF7154760000000
  %2602 = call float @dx.op.unary.f32(i32 21, float %2601)  ; Exp(value)
  %2603 = fsub fast float 1.000000e+00, %2602
  %2604 = fmul fast float %2593, %2603
  %2605 = fsub fast float -0.000000e+00, %2604
  %2606 = fdiv fast float %2605, %2596
  br label %2607

; <label>:2607                                    ; preds = %2600, %2591
  %2608 = phi float [ %2606, %2600 ], [ %2593, %2591 ]
  %2609 = phi float [ %2602, %2600 ], [ 1.000000e+00, %2591 ]
  %2610 = fcmp fast une float %2597, 0.000000e+00
  br i1 %2610, label %2611, label %2618, !dx.controlflow.hints !121

; <label>:2611                                    ; preds = %2607
  %2612 = fmul fast float %2597, 0x3FF7154760000000
  %2613 = call float @dx.op.unary.f32(i32 21, float %2612)  ; Exp(value)
  %2614 = fsub fast float 1.000000e+00, %2613
  %2615 = fmul fast float %2594, %2614
  %2616 = fsub fast float -0.000000e+00, %2615
  %2617 = fdiv fast float %2616, %2597
  br label %2618

; <label>:2618                                    ; preds = %2611, %2607
  %2619 = phi float [ %2617, %2611 ], [ %2594, %2607 ]
  %2620 = phi float [ %2613, %2611 ], [ 1.000000e+00, %2607 ]
  %2621 = fcmp fast une float %2598, 0.000000e+00
  br i1 %2621, label %2622, label %2629, !dx.controlflow.hints !121

; <label>:2622                                    ; preds = %2618
  %2623 = fmul fast float %2598, 0x3FF7154760000000
  %2624 = call float @dx.op.unary.f32(i32 21, float %2623)  ; Exp(value)
  %2625 = fsub fast float 1.000000e+00, %2624
  %2626 = fmul fast float %2595, %2625
  %2627 = fsub fast float -0.000000e+00, %2626
  %2628 = fdiv fast float %2627, %2598
  br label %2629

; <label>:2629                                    ; preds = %2622, %2618, %2578, %2571
  %2630 = phi float [ %2628, %2622 ], [ %2590, %2578 ], [ %2575, %2571 ], [ %2595, %2618 ]
  %2631 = phi float [ %2619, %2622 ], [ %2589, %2578 ], [ %2574, %2571 ], [ %2619, %2618 ]
  %2632 = phi float [ %2608, %2622 ], [ %2588, %2578 ], [ %2573, %2571 ], [ %2608, %2618 ]
  %2633 = phi float [ %2624, %2622 ], [ %2580, %2578 ], [ 1.000000e+00, %2571 ], [ 1.000000e+00, %2618 ]
  %2634 = phi float [ %2620, %2622 ], [ %2580, %2578 ], [ 1.000000e+00, %2571 ], [ %2620, %2618 ]
  %2635 = phi float [ %2609, %2622 ], [ %2580, %2578 ], [ 1.000000e+00, %2571 ], [ %2609, %2618 ]
  %2636 = fmul fast float %2635, %2547
  %2637 = fmul fast float %2634, %2558
  %2638 = fmul fast float %2633, %2569
  %2639 = fadd fast float %2636, %2632
  %2640 = fadd fast float %2637, %2631
  %2641 = fadd fast float %2638, %2630
  %2642 = fmul fast float %2635, %2546
  %2643 = fmul fast float %2634, %2557
  %2644 = fmul fast float %2633, %2568
  br label %2645

; <label>:2645                                    ; preds = %2629, %2440
  %2646 = phi float [ %2446, %2440 ], [ %2644, %2629 ]
  %2647 = phi float [ %2445, %2440 ], [ %2643, %2629 ]
  %2648 = phi float [ %2444, %2440 ], [ %2642, %2629 ]
  %2649 = phi float [ %2443, %2440 ], [ %2641, %2629 ]
  %2650 = phi float [ %2442, %2440 ], [ %2640, %2629 ]
  %2651 = phi float [ %2441, %2440 ], [ %2639, %2629 ]
  %2652 = fmul fast float %2648, %1789
  %2653 = fmul fast float %2647, %1790
  %2654 = fmul fast float %2646, %1791
  %2655 = fsub fast float 1.000000e+00, %1852
  %2656 = fmul fast float %2651, %2655
  %2657 = fmul fast float %2650, %2655
  %2658 = fmul fast float %2649, %2655
  %2659 = fadd fast float %2656, %2652
  %2660 = fadd fast float %2657, %2653
  %2661 = fadd fast float %2658, %2654
  %2662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %2663 = extractvalue %dx.types.CBufRet.f32 %2662, 2
  %2664 = fmul fast float %2663, %1862
  %2665 = call float @dx.op.unary.f32(i32 7, float %2664)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %21, i32 %22, i32 undef, float %1852, float %1852, float %1852, float %1852, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2667 = extractvalue %dx.types.CBufRet.f32 %2666, 0
  %2668 = fmul fast float %2667, %2659
  %2669 = fmul fast float %2667, %2660
  %2670 = fmul fast float %2667, %2661
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %21, i32 %22, i32 undef, float %2668, float %2669, float %2670, float %2668, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %21, i32 %22, i32 undef, float %2665, float %2665, float %2665, float %2665, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!32 = !{void ()* @cs_fog_raymarching_heightmap, !"cs_fog_raymarching_heightmap", null, !4, !33}
!33 = !{i32 0, i64 272, i32 4, !34}
!34 = !{i32 8, i32 8, i32 1}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 1}
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

