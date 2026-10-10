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
; shader hash: 0d8d4699089ac1ca179c2559fe5614f0
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
;                                   texture     f32          3d      T0             t3     1
;                                   texture     f32     2darray      T1            t31     1
;                                   texture     f32          3d      T2            t30     1
;                                   texture     f32          2d      T3            t29     1
;                                   texture     f32          2d      T4            t26     1
;                                   texture     u32          2d      T5            t32     1
;                                   texture     f32          3d      T6            t33     1
;                                   texture     f32          1d      T7            t14     1
;                                   texture     f32          2d      T8            t13     1
;                                   texture     f32          2d      T9             t0     1
;                                   texture    byte         r/o     T10            t17     1
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
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
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

define void @cs_fog_raymarching_air() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 26, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %20 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %21 = alloca [3 x float], align 4
  %22 = alloca [3 x float], align 4
  %23 = add i32 %20, %19
  %24 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.i32 %24, 1
  %26 = add i32 %23, %25
  %27 = lshr i32 %26, 1
  %28 = and i32 %27, 1
  %29 = and i32 %26, 1
  %30 = xor i32 %28, %29
  %31 = shl i32 %19, 1
  %32 = shl i32 %20, 1
  %33 = or i32 %30, %31
  %34 = or i32 %28, %32
  %35 = uitofp i32 %33 to float
  %36 = uitofp i32 %34 to float
  %37 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %38 = extractvalue %dx.types.CBufRet.f32 %37, 2
  %39 = fmul fast float %38, 0x3FE3C6EF40000000
  %40 = frem fast float %35, 2.560000e+02
  %41 = frem fast float %36, 2.560000e+02
  %42 = fptoui float %40 to i32
  %43 = fptoui float %41 to i32
  %44 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %42, i32 %43, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %45 = extractvalue %dx.types.ResRet.f32 %44, 1
  %46 = extractvalue %dx.types.ResRet.f32 %44, 2
  %47 = extractvalue %dx.types.ResRet.f32 %44, 3
  %48 = fadd fast float %45, %39
  %49 = fadd fast float %46, %39
  %50 = fadd fast float %47, %39
  %51 = call float @dx.op.unary.f32(i32 22, float %48)  ; Frc(value)
  %52 = call float @dx.op.unary.f32(i32 22, float %49)  ; Frc(value)
  %53 = call float @dx.op.unary.f32(i32 22, float %50)  ; Frc(value)
  %54 = fadd fast float %52, %35
  %55 = fadd fast float %53, %36
  %56 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.f32 %56, 2
  %58 = extractvalue %dx.types.CBufRet.f32 %56, 3
  %59 = fmul fast float %57, %54
  %60 = fmul fast float %58, %55
  %61 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %62 = extractvalue %dx.types.CBufRet.f32 %61, 0
  %63 = extractvalue %dx.types.CBufRet.f32 %61, 1
  %64 = extractvalue %dx.types.CBufRet.f32 %61, 2
  %65 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.f32 %65, 1
  %67 = fmul fast float %59, 2.000000e+00
  %68 = fmul fast float %60, 2.000000e+00
  %69 = fsub fast float 1.000000e+00, %67
  %70 = fsub fast float 1.000000e+00, %68
  %71 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.f32 %71, 0
  %73 = extractvalue %dx.types.CBufRet.f32 %71, 1
  %74 = extractvalue %dx.types.CBufRet.f32 %71, 2
  %75 = fmul fast float %72, %69
  %76 = fmul fast float %73, %69
  %77 = fmul fast float %74, %69
  %78 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %79 = extractvalue %dx.types.CBufRet.f32 %78, 0
  %80 = extractvalue %dx.types.CBufRet.f32 %78, 1
  %81 = extractvalue %dx.types.CBufRet.f32 %78, 2
  %82 = fmul fast float %79, %70
  %83 = fmul fast float %80, %70
  %84 = fmul fast float %81, %70
  %85 = fadd fast float %82, %75
  %86 = fadd fast float %83, %76
  %87 = fadd fast float %84, %77
  %88 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.f32 %88, 0
  %90 = extractvalue %dx.types.CBufRet.f32 %88, 1
  %91 = extractvalue %dx.types.CBufRet.f32 %88, 2
  %92 = fadd fast float %85, %89
  %93 = fadd fast float %86, %90
  %94 = fadd fast float %87, %91
  %95 = fmul fast float %92, %66
  %96 = fmul fast float %93, %66
  %97 = fmul fast float %94, %66
  %98 = fmul fast float %95, %95
  %99 = fmul fast float %96, %96
  %100 = fadd fast float %98, %99
  %101 = fmul fast float %97, %97
  %102 = fadd fast float %100, %101
  %103 = call float @dx.op.unary.f32(i32 24, float %102)  ; Sqrt(value)
  %104 = fdiv fast float 1.000000e+00, %103
  %105 = fmul fast float %95, %104
  %106 = fmul fast float %96, %104
  %107 = fmul fast float %97, %104
  %108 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %33, i32 %34, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %109 = extractvalue %dx.types.ResRet.f32 %108, 0
  %110 = fcmp fast ogt float %109, -1.000000e+00
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 1
  %113 = select i1 %110, float %112, float 1.000000e+00
  %114 = fadd fast float %109, 1.000000e+00
  %115 = fmul fast float %113, %114
  %116 = call float @dx.op.unary.f32(i32 6, float %115)  ; FAbs(value)
  %117 = fdiv fast float 1.000000e+00, %66
  %118 = fmul fast float %117, %103
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 1
  %121 = fmul fast float %120, %118
  %122 = fmul fast float %118, %116
  %123 = extractvalue %dx.types.CBufRet.f32 %111, 3
  %124 = fcmp fast oge float %116, %123
  %125 = call float @dx.op.binary.f32(i32 36, float %122, float %121)  ; FMin(a,b)
  %126 = select i1 %124, float %121, float %125
  %127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.f32 %127, 3
  %129 = fsub fast float -0.000000e+00, %62
  %130 = fsub fast float -0.000000e+00, %63
  %131 = fsub fast float %128, %64
  %132 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %129, float %130, float %131)  ; Dot3(ax,ay,az,bx,by,bz)
  %133 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %134 = fdiv fast float 1.000000e+00, %133
  %135 = fmul fast float %134, %132
  %136 = fcmp fast olt float %135, 0.000000e+00
  %137 = fcmp fast ogt float %107, 0.000000e+00
  %138 = and i1 %137, %136
  br i1 %138, label %143, label %139, !dx.controlflow.hints !33

; <label>:139                                     ; preds = %0
  %140 = fcmp fast olt float %107, 0.000000e+00
  br i1 %140, label %141, label %143, !dx.controlflow.hints !34

; <label>:141                                     ; preds = %139
  %142 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %135)  ; FMax(a,b)
  br label %143

; <label>:143                                     ; preds = %141, %139, %0
  %144 = phi float [ 0.000000e+00, %0 ], [ %142, %141 ], [ 0.000000e+00, %139 ]
  %145 = phi float [ 0.000000e+00, %0 ], [ 0x47EFFFFFE0000000, %141 ], [ %135, %139 ]
  %146 = fcmp fast oeq float %145, 0.000000e+00
  br i1 %146, label %150, label %147, !dx.controlflow.hints !35

; <label>:147                                     ; preds = %143
  %148 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %144)  ; FMin(a,b)
  %149 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %145)  ; FMax(a,b)
  br label %150

; <label>:150                                     ; preds = %147, %143
  %151 = phi i32 [ 1, %147 ], [ 0, %143 ]
  %152 = phi float [ %149, %147 ], [ -1.000000e+00, %143 ]
  %153 = phi float [ %148, %147 ], [ 0x47EFFFFFE0000000, %143 ]
  %154 = call float @dx.op.binary.f32(i32 36, float %126, float %152)  ; FMin(a,b)
  %155 = call float @dx.op.binary.f32(i32 35, float %103, float %153)  ; FMax(a,b)
  %156 = extractvalue %dx.types.CBufRet.f32 %127, 0
  %157 = fmul fast float %51, 2.000000e+00
  %158 = fadd fast float %157, -1.000000e+00
  %159 = fmul fast float %156, %158
  %160 = fadd fast float %159, %155
  %161 = fcmp fast olt float %160, %154
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 2
  %164 = fcmp fast olt float %163, 1.000000e+00
  %165 = and i1 %164, %161
  br i1 %165, label %166, label %1416

; <label>:166                                     ; preds = %150
  %167 = fmul fast float %160, %107
  %168 = fadd fast float %167, %64
  %169 = fmul fast float %160, %106
  %170 = fadd fast float %169, %63
  %171 = fmul fast float %160, %105
  %172 = fadd fast float %171, %62
  br label %173

; <label>:173                                     ; preds = %1392, %166
  %174 = phi float [ %1394, %1392 ], [ 0.000000e+00, %166 ]
  %175 = phi float [ %1395, %1392 ], [ 1.000000e+00, %166 ]
  %176 = phi float [ %1396, %1392 ], [ 0.000000e+00, %166 ]
  %177 = phi float [ %1397, %1392 ], [ 0.000000e+00, %166 ]
  %178 = phi float [ %1398, %1392 ], [ 0.000000e+00, %166 ]
  %179 = phi float [ %1408, %1392 ], [ %172, %166 ]
  %180 = phi float [ %1409, %1392 ], [ %170, %166 ]
  %181 = phi float [ %1410, %1392 ], [ %168, %166 ]
  %182 = phi float [ %1393, %1392 ], [ %160, %166 ]
  %183 = phi float [ %1399, %1392 ], [ 0.000000e+00, %166 ]
  %184 = phi float [ %1400, %1392 ], [ 0.000000e+00, %166 ]
  %185 = phi float [ %1401, %1392 ], [ 0.000000e+00, %166 ]
  %186 = phi float [ %1402, %1392 ], [ 0.000000e+00, %166 ]
  %187 = phi float [ %1403, %1392 ], [ 0.000000e+00, %166 ]
  %188 = phi i32 [ %1404, %1392 ], [ 0, %166 ]
  %189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %190 = extractvalue %dx.types.CBufRet.f32 %189, 0
  %191 = icmp eq i32 %151, 0
  br i1 %191, label %204, label %192, !dx.controlflow.hints !36

; <label>:192                                     ; preds = %173
  %193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %194 = extractvalue %dx.types.CBufRet.f32 %193, 3
  %195 = extractvalue %dx.types.CBufRet.f32 %193, 2
  %196 = fmul fast float %194, %182
  %197 = fdiv fast float %196, %154
  %198 = fadd fast float %197, 1.000000e+00
  %199 = call float @dx.op.unary.f32(i32 23, float %198)  ; Log(value)
  %200 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %199)  ; FMin(a,b)
  %201 = fmul fast float %195, %154
  %202 = fmul fast float %201, %200
  %203 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %202)  ; FMin(a,b)
  br label %204

; <label>:204                                     ; preds = %192, %173
  %205 = phi float [ %203, %192 ], [ 0x47EFFFFFE0000000, %173 ]
  %206 = extractvalue %dx.types.CBufRet.f32 %189, 2
  %207 = fmul fast float %206, %182
  %208 = call float @dx.op.unary.f32(i32 23, float %207)  ; Log(value)
  %209 = fmul fast float %208, 0x3FE62E4300000000
  %210 = call float @dx.op.binary.f32(i32 35, float %209, float 1.000000e+00)  ; FMax(a,b)
  %211 = fmul fast float %210, %205
  %212 = call float @dx.op.binary.f32(i32 36, float %211, float 0x47EFFFFFE0000000)  ; FMin(a,b)
  %213 = call float @dx.op.binary.f32(i32 35, float %212, float %190)  ; FMax(a,b)
  %214 = fadd fast float %154, 0x3F1A36E2E0000000
  %215 = fsub fast float %214, %182
  %216 = call float @dx.op.binary.f32(i32 36, float %215, float %213)  ; FMin(a,b)
  br i1 %191, label %273, label %217, !dx.controlflow.hints !37

; <label>:217                                     ; preds = %204
  %218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %219 = extractvalue %dx.types.CBufRet.f32 %218, 0
  %220 = fsub fast float -0.000000e+00, %179
  %221 = fsub fast float -0.000000e+00, %180
  %222 = fsub fast float %219, %181
  %223 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %220, float %221, float %222)  ; Dot3(ax,ay,az,bx,by,bz)
  %224 = fmul fast float %134, %223
  %225 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %224)  ; FMax(a,b)
  %226 = fcmp fast olt float %107, 0.000000e+00
  %227 = call float @dx.op.binary.f32(i32 36, float %216, float %225)  ; FMin(a,b)
  br i1 %226, label %229, label %228, !dx.controlflow.hints !38

; <label>:228                                     ; preds = %217
  br label %229

; <label>:229                                     ; preds = %228, %217
  %230 = phi float [ 0.000000e+00, %228 ], [ %227, %217 ]
  %231 = phi float [ %227, %228 ], [ %216, %217 ]
  %232 = phi float [ %227, %228 ], [ 0.000000e+00, %217 ]
  %233 = phi float [ %216, %228 ], [ %227, %217 ]
  %234 = fsub fast float %231, %230
  %235 = extractvalue %dx.types.CBufRet.f32 %218, 1
  %236 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %235)  ; FMin(a,b)
  %237 = fsub fast float %181, %219
  %238 = fmul fast float %236, 0x3FF7154760000000
  %239 = fmul fast float %238, %237
  %240 = call float @dx.op.unary.f32(i32 21, float %239)  ; Exp(value)
  %241 = fmul fast float %107, 0x3FF7154760000000
  %242 = fmul fast float %241, %233
  %243 = fmul fast float %242, %236
  %244 = call float @dx.op.unary.f32(i32 21, float %243)  ; Exp(value)
  %245 = fmul fast float %241, %232
  %246 = fmul fast float %245, %236
  %247 = call float @dx.op.unary.f32(i32 21, float %246)  ; Exp(value)
  %248 = fsub fast float %244, %247
  %249 = fmul fast float %248, %240
  %250 = fmul fast float %236, %107
  %251 = fdiv fast float %249, %250
  %252 = fadd fast float %234, %251
  %253 = call float @dx.op.unary.f32(i32 6, float %107)  ; FAbs(value)
  %254 = fcmp fast olt float %253, 0x3F0FFB4800000000
  %255 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %237)  ; FMax(a,b)
  %256 = fmul fast float %255, 0x3FF7154760000000
  %257 = fmul fast float %256, %235
  %258 = call float @dx.op.unary.f32(i32 21, float %257)  ; Exp(value)
  %259 = fmul fast float %258, %216
  %260 = select i1 %254, float %259, float %252
  %261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %262 = extractvalue %dx.types.CBufRet.f32 %261, 1
  %263 = fmul fast float %260, %262
  %264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %265 = extractvalue %dx.types.CBufRet.f32 %264, 0
  %266 = extractvalue %dx.types.CBufRet.f32 %264, 1
  %267 = extractvalue %dx.types.CBufRet.f32 %264, 2
  %268 = extractvalue %dx.types.CBufRet.f32 %261, 2
  %269 = fmul fast float %265, %263
  %270 = fmul fast float %266, %263
  %271 = fmul fast float %267, %263
  %272 = fmul fast float %268, %263
  br label %273

; <label>:273                                     ; preds = %229, %204
  %274 = phi float [ %263, %229 ], [ 0.000000e+00, %204 ]
  %275 = phi float [ %272, %229 ], [ 0.000000e+00, %204 ]
  %276 = phi float [ %269, %229 ], [ 0.000000e+00, %204 ]
  %277 = phi float [ %270, %229 ], [ 0.000000e+00, %204 ]
  %278 = phi float [ %271, %229 ], [ 0.000000e+00, %204 ]
  %279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %280 = extractvalue %dx.types.CBufRet.f32 %279, 1
  %281 = fcmp fast ogt float %274, %280
  br i1 %281, label %282, label %288, !dx.controlflow.hints !39

; <label>:282                                     ; preds = %273
  %283 = fdiv fast float 1.000000e+00, %274
  %284 = fmul fast float %283, %276
  %285 = fmul fast float %283, %277
  %286 = fmul fast float %283, %278
  %287 = fmul fast float %283, %275
  br label %288

; <label>:288                                     ; preds = %282, %273
  %289 = phi float [ %287, %282 ], [ %275, %273 ]
  %290 = phi float [ %284, %282 ], [ %276, %273 ]
  %291 = phi float [ %285, %282 ], [ %277, %273 ]
  %292 = phi float [ %286, %282 ], [ %278, %273 ]
  br i1 %281, label %295, label %293, !dx.controlflow.hints !40

; <label>:293                                     ; preds = %288
  %294 = fadd fast float %216, %182
  br label %1392

; <label>:295                                     ; preds = %288
  %296 = fmul fast float %274, 0xBFF7154760000000
  %297 = call float @dx.op.unary.f32(i32 21, float %296)  ; Exp(value)
  %298 = call float @dx.op.unary.f32(i32 7, float %297)  ; Saturate(value)
  %299 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %300 = extractvalue %dx.types.CBufRet.i32 %299, 0
  %301 = icmp eq i32 %300, 1
  br i1 %301, label %302, label %337, !dx.controlflow.hints !41

; <label>:302                                     ; preds = %295
  %303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %304 = extractvalue %dx.types.CBufRet.f32 %303, 0
  %305 = extractvalue %dx.types.CBufRet.f32 %303, 1
  %306 = fsub fast float %179, %304
  %307 = fsub fast float %180, %305
  %308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %309 = extractvalue %dx.types.CBufRet.f32 %308, 0
  %310 = extractvalue %dx.types.CBufRet.f32 %308, 1
  %311 = fmul fast float %306, %309
  %312 = fmul fast float %307, %310
  %313 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %16, float %311, float %312, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %314 = extractvalue %dx.types.ResRet.f32 %313, 0
  %315 = fcmp fast ogt float %314, 0.000000e+00
  %316 = extractvalue %dx.types.CBufRet.i32 %299, 3
  %317 = icmp ne i32 %316, 0
  %318 = and i1 %315, %317
  br i1 %318, label %319, label %337, !dx.controlflow.hints !42

; <label>:319                                     ; preds = %302
  %320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %321 = extractvalue %dx.types.CBufRet.f32 %320, 0
  %322 = extractvalue %dx.types.CBufRet.f32 %320, 1
  %323 = fsub fast float %179, %321
  %324 = fsub fast float %180, %322
  %325 = fmul fast float %323, %323
  %326 = fmul fast float %324, %324
  %327 = fadd fast float %325, %326
  %328 = uitofp i32 %316 to float
  %329 = fmul fast float %328, %328
  %330 = fcmp fast ogt float %327, %329
  br i1 %330, label %337, label %331, !dx.controlflow.hints !43

; <label>:331                                     ; preds = %319
  %332 = call float @dx.op.unary.f32(i32 24, float %327)  ; Sqrt(value)
  %333 = fsub fast float %328, %332
  %334 = fmul fast float %333, 0x3F75555560000000
  %335 = call float @dx.op.unary.f32(i32 7, float %334)  ; Saturate(value)
  %336 = call float @dx.op.binary.f32(i32 36, float %335, float %314)  ; FMin(a,b)
  br label %337

; <label>:337                                     ; preds = %331, %319, %302, %295
  %338 = phi float [ 1.000000e+00, %295 ], [ %336, %331 ], [ %314, %302 ], [ 0.000000e+00, %319 ]
  %339 = fcmp fast ogt float %338, 0.000000e+00
  br i1 %339, label %340, label %413, !dx.controlflow.hints !44

; <label>:340                                     ; preds = %337
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = extractvalue %dx.types.ResRet.i32 %341, 1
  %344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %345 = extractvalue %dx.types.ResRet.i32 %344, 0
  %346 = extractvalue %dx.types.ResRet.i32 %344, 1
  %347 = extractvalue %dx.types.ResRet.i32 %344, 2
  %348 = extractvalue %dx.types.ResRet.i32 %344, 3
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.i32 %349, 0
  %351 = extractvalue %dx.types.ResRet.i32 %349, 1
  %352 = extractvalue %dx.types.ResRet.i32 %349, 2
  %353 = extractvalue %dx.types.ResRet.i32 %349, 3
  %354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.i32 %354, 0
  %356 = extractvalue %dx.types.ResRet.i32 %354, 1
  %357 = extractvalue %dx.types.ResRet.i32 %354, 2
  %358 = extractvalue %dx.types.ResRet.i32 %354, 3
  %359 = and i32 %355, 65535
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = lshr i32 %355, 16
  %362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %361)  ; LegacyF16ToF32(value)
  %363 = and i32 %356, 65535
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = lshr i32 %356, 16
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = and i32 %357, 65535
  %368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %367)  ; LegacyF16ToF32(value)
  %369 = lshr i32 %357, 16
  %370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %369)  ; LegacyF16ToF32(value)
  %371 = and i32 %358, 65535
  %372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %371)  ; LegacyF16ToF32(value)
  %373 = lshr i32 %358, 16
  %374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %373)  ; LegacyF16ToF32(value)
  %375 = and i32 %350, 65535
  %376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %375)  ; LegacyF16ToF32(value)
  %377 = lshr i32 %350, 16
  %378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %377)  ; LegacyF16ToF32(value)
  %379 = and i32 %351, 65535
  %380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %379)  ; LegacyF16ToF32(value)
  %381 = lshr i32 %351, 16
  %382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %381)  ; LegacyF16ToF32(value)
  %383 = and i32 %352, 65535
  %384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %383)  ; LegacyF16ToF32(value)
  %385 = lshr i32 %352, 16
  %386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %385)  ; LegacyF16ToF32(value)
  %387 = and i32 %353, 65535
  %388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %387)  ; LegacyF16ToF32(value)
  %389 = lshr i32 %353, 16
  %390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %389)  ; LegacyF16ToF32(value)
  %391 = and i32 %345, 65535
  %392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %391)  ; LegacyF16ToF32(value)
  %393 = lshr i32 %345, 16
  %394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %393)  ; LegacyF16ToF32(value)
  %395 = and i32 %346, 65535
  %396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %395)  ; LegacyF16ToF32(value)
  %397 = lshr i32 %346, 16
  %398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %397)  ; LegacyF16ToF32(value)
  %399 = and i32 %347, 65535
  %400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %399)  ; LegacyF16ToF32(value)
  %401 = lshr i32 %347, 16
  %402 = call float @dx.op.legacyF16ToF32(i32 131, i32 %401)  ; LegacyF16ToF32(value)
  %403 = and i32 %348, 65535
  %404 = call float @dx.op.legacyF16ToF32(i32 131, i32 %403)  ; LegacyF16ToF32(value)
  %405 = lshr i32 %348, 16
  %406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %405)  ; LegacyF16ToF32(value)
  %407 = and i32 %342, 65535
  %408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %407)  ; LegacyF16ToF32(value)
  %409 = lshr i32 %342, 16
  %410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %409)  ; LegacyF16ToF32(value)
  %411 = and i32 %343, 65535
  %412 = call float @dx.op.legacyF16ToF32(i32 131, i32 %411)  ; LegacyF16ToF32(value)
  br label %413

; <label>:413                                     ; preds = %340, %337
  %414 = phi float [ %412, %340 ], [ 0.000000e+00, %337 ]
  %415 = phi float [ %410, %340 ], [ 0.000000e+00, %337 ]
  %416 = phi float [ %408, %340 ], [ 0.000000e+00, %337 ]
  %417 = phi float [ %406, %340 ], [ 0.000000e+00, %337 ]
  %418 = phi float [ %404, %340 ], [ 0.000000e+00, %337 ]
  %419 = phi float [ %402, %340 ], [ 0.000000e+00, %337 ]
  %420 = phi float [ %400, %340 ], [ 0.000000e+00, %337 ]
  %421 = phi float [ %398, %340 ], [ 0.000000e+00, %337 ]
  %422 = phi float [ %396, %340 ], [ 0.000000e+00, %337 ]
  %423 = phi float [ %394, %340 ], [ 0.000000e+00, %337 ]
  %424 = phi float [ %392, %340 ], [ 0.000000e+00, %337 ]
  %425 = phi float [ %390, %340 ], [ 0.000000e+00, %337 ]
  %426 = phi float [ %388, %340 ], [ 0.000000e+00, %337 ]
  %427 = phi float [ %386, %340 ], [ 0.000000e+00, %337 ]
  %428 = phi float [ %384, %340 ], [ 0.000000e+00, %337 ]
  %429 = phi float [ %382, %340 ], [ 0.000000e+00, %337 ]
  %430 = phi float [ %380, %340 ], [ 0.000000e+00, %337 ]
  %431 = phi float [ %378, %340 ], [ 0.000000e+00, %337 ]
  %432 = phi float [ %376, %340 ], [ 0.000000e+00, %337 ]
  %433 = phi float [ %374, %340 ], [ 0.000000e+00, %337 ]
  %434 = phi float [ %372, %340 ], [ 0.000000e+00, %337 ]
  %435 = phi float [ %370, %340 ], [ 0.000000e+00, %337 ]
  %436 = phi float [ %368, %340 ], [ 0.000000e+00, %337 ]
  %437 = phi float [ %366, %340 ], [ 0.000000e+00, %337 ]
  %438 = phi float [ %364, %340 ], [ 0.000000e+00, %337 ]
  %439 = phi float [ %362, %340 ], [ 0.000000e+00, %337 ]
  %440 = phi float [ %360, %340 ], [ 0.000000e+00, %337 ]
  %441 = fcmp fast olt float %338, 1.000000e+00
  br i1 %441, label %442, label %1102, !dx.controlflow.hints !45

; <label>:442                                     ; preds = %413
  %443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %444 = extractvalue %dx.types.CBufRet.f32 %443, 0
  %445 = extractvalue %dx.types.CBufRet.f32 %443, 1
  %446 = fsub fast float %179, %444
  %447 = fsub fast float %180, %445
  %448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %449 = extractvalue %dx.types.CBufRet.f32 %448, 0
  %450 = extractvalue %dx.types.CBufRet.f32 %448, 1
  %451 = fmul fast float %446, %449
  %452 = fmul fast float %447, %450
  %453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %454 = extractvalue %dx.types.CBufRet.f32 %453, 0
  %455 = fmul fast float %454, %451
  %456 = extractvalue %dx.types.CBufRet.f32 %453, 1
  %457 = fadd fast float %455, %456
  %458 = extractvalue %dx.types.CBufRet.f32 %453, 2
  %459 = fmul fast float %458, %452
  %460 = extractvalue %dx.types.CBufRet.f32 %453, 3
  %461 = fadd fast float %459, %460
  %462 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %16, float %457, float %461, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %463 = extractvalue %dx.types.ResRet.f32 %462, 0
  %464 = extractvalue %dx.types.ResRet.f32 %462, 1
  %465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %466 = extractvalue %dx.types.CBufRet.f32 %465, 1
  %467 = extractvalue %dx.types.CBufRet.f32 %465, 0
  %468 = fsub fast float %466, %467
  %469 = fmul fast float %468, %463
  %470 = fadd fast float %469, %467
  %471 = extractvalue %dx.types.CBufRet.f32 %465, 3
  %472 = extractvalue %dx.types.CBufRet.f32 %465, 2
  %473 = fsub fast float %471, %472
  %474 = fmul fast float %473, %464
  %475 = fadd fast float %474, %472
  %476 = fsub fast float %181, %470
  %477 = fsub fast float %475, %470
  %478 = fdiv fast float %476, %477
  %479 = call float @dx.op.unary.f32(i32 7, float %478)  ; Saturate(value)
  %480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %481 = extractvalue %dx.types.CBufRet.f32 %480, 0
  %482 = fmul fast float %481, %479
  %483 = extractvalue %dx.types.CBufRet.f32 %480, 1
  %484 = fadd fast float %482, %483
  %485 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %16, float %457, float %461, float %484, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %486 = extractvalue %dx.types.ResRet.f32 %485, 0
  %487 = extractvalue %dx.types.ResRet.f32 %485, 1
  %488 = extractvalue %dx.types.ResRet.f32 %485, 2
  %489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %490 = extractvalue %dx.types.CBufRet.f32 %489, 0
  %491 = extractvalue %dx.types.CBufRet.f32 %489, 1
  %492 = extractvalue %dx.types.CBufRet.f32 %489, 2
  %493 = fmul fast float %490, %486
  %494 = fmul fast float %491, %487
  %495 = fmul fast float %492, %488
  %496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %497 = extractvalue %dx.types.CBufRet.f32 %496, 0
  %498 = extractvalue %dx.types.CBufRet.f32 %496, 1
  %499 = extractvalue %dx.types.CBufRet.f32 %496, 2
  %500 = fadd fast float %493, %497
  %501 = fadd fast float %494, %498
  %502 = fadd fast float %495, %499
  %503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %504 = extractvalue %dx.types.CBufRet.f32 %503, 0
  %505 = fmul fast float %504, %451
  %506 = extractvalue %dx.types.CBufRet.f32 %503, 1
  %507 = fadd fast float %505, %506
  %508 = extractvalue %dx.types.CBufRet.f32 %503, 2
  %509 = fmul fast float %508, %452
  %510 = extractvalue %dx.types.CBufRet.f32 %503, 3
  %511 = fadd fast float %509, %510
  %512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %513 = extractvalue %dx.types.CBufRet.f32 %512, 0
  %514 = extractvalue %dx.types.CBufRet.f32 %512, 1
  %515 = extractvalue %dx.types.CBufRet.f32 %512, 2
  %516 = extractvalue %dx.types.CBufRet.f32 %512, 3
  %517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %518 = extractvalue %dx.types.CBufRet.f32 %517, 0
  %519 = extractvalue %dx.types.CBufRet.f32 %517, 1
  %520 = extractvalue %dx.types.CBufRet.f32 %517, 2
  %521 = extractvalue %dx.types.CBufRet.f32 %517, 3
  %522 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %16, float %507, float %511, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %523 = extractvalue %dx.types.ResRet.f32 %522, 0
  %524 = extractvalue %dx.types.ResRet.f32 %522, 1
  %525 = extractvalue %dx.types.ResRet.f32 %522, 2
  %526 = extractvalue %dx.types.ResRet.f32 %522, 3
  %527 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %16, float %507, float %511, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %528 = extractvalue %dx.types.ResRet.f32 %527, 0
  %529 = extractvalue %dx.types.ResRet.f32 %527, 1
  %530 = extractvalue %dx.types.ResRet.f32 %527, 2
  %531 = extractvalue %dx.types.ResRet.f32 %527, 3
  %532 = fmul fast float %523, %500
  %533 = fmul fast float %528, %500
  %534 = fmul fast float %530, %500
  %535 = fmul fast float %526, %500
  %536 = fadd fast float %532, %513
  %537 = fadd fast float %533, %514
  %538 = fadd fast float %534, %515
  %539 = fadd fast float %535, %516
  %540 = fmul fast float %524, %500
  %541 = fmul fast float %529, %500
  %542 = fadd fast float %540, %518
  %543 = fadd fast float %541, %519
  %544 = fmul fast float %525, %500
  %545 = fmul fast float %531, %500
  %546 = fadd fast float %544, %520
  %547 = fadd fast float %545, %521
  %548 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %16, float %507, float %511, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %549 = extractvalue %dx.types.ResRet.f32 %548, 0
  %550 = extractvalue %dx.types.ResRet.f32 %548, 1
  %551 = extractvalue %dx.types.ResRet.f32 %548, 2
  %552 = extractvalue %dx.types.ResRet.f32 %548, 3
  %553 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %16, float %507, float %511, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %554 = extractvalue %dx.types.ResRet.f32 %553, 0
  %555 = extractvalue %dx.types.ResRet.f32 %553, 1
  %556 = extractvalue %dx.types.ResRet.f32 %553, 2
  %557 = extractvalue %dx.types.ResRet.f32 %553, 3
  %558 = fmul fast float %549, %501
  %559 = fmul fast float %554, %501
  %560 = fmul fast float %556, %501
  %561 = fmul fast float %552, %501
  %562 = fadd fast float %536, %558
  %563 = fadd fast float %537, %559
  %564 = fadd fast float %538, %560
  %565 = fadd fast float %539, %561
  %566 = fmul fast float %550, %501
  %567 = fmul fast float %555, %501
  %568 = fadd fast float %542, %566
  %569 = fadd fast float %543, %567
  %570 = fmul fast float %551, %501
  %571 = fmul fast float %557, %501
  %572 = fadd fast float %546, %570
  %573 = fadd fast float %547, %571
  %574 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %16, float %507, float %511, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %575 = extractvalue %dx.types.ResRet.f32 %574, 0
  %576 = extractvalue %dx.types.ResRet.f32 %574, 1
  %577 = extractvalue %dx.types.ResRet.f32 %574, 2
  %578 = extractvalue %dx.types.ResRet.f32 %574, 3
  %579 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %16, float %507, float %511, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %580 = extractvalue %dx.types.ResRet.f32 %579, 0
  %581 = extractvalue %dx.types.ResRet.f32 %579, 1
  %582 = extractvalue %dx.types.ResRet.f32 %579, 2
  %583 = extractvalue %dx.types.ResRet.f32 %579, 3
  %584 = fmul fast float %575, %502
  %585 = fmul fast float %580, %502
  %586 = fmul fast float %582, %502
  %587 = fmul fast float %578, %502
  %588 = fadd fast float %562, %584
  %589 = fadd fast float %563, %585
  %590 = fadd fast float %564, %586
  %591 = fadd fast float %565, %587
  %592 = fmul fast float %576, %502
  %593 = fmul fast float %581, %502
  %594 = fadd fast float %568, %592
  %595 = fadd fast float %569, %593
  %596 = fmul fast float %577, %502
  %597 = fmul fast float %583, %502
  %598 = fadd fast float %572, %596
  %599 = fadd fast float %573, %597
  %600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %601 = extractvalue %dx.types.CBufRet.f32 %600, 0
  %602 = fsub fast float %179, %601
  %603 = fsub fast float %444, %179
  %604 = call float @dx.op.binary.f32(i32 35, float %603, float %602)  ; FMax(a,b)
  %605 = extractvalue %dx.types.CBufRet.f32 %600, 1
  %606 = fsub fast float %180, %605
  %607 = fsub fast float %445, %180
  %608 = call float @dx.op.binary.f32(i32 35, float %607, float %606)  ; FMax(a,b)
  %609 = call float @dx.op.binary.f32(i32 35, float %604, float %608)  ; FMax(a,b)
  %610 = extractvalue %dx.types.CBufRet.f32 %448, 3
  %611 = fmul fast float %610, %609
  %612 = call float @dx.op.unary.f32(i32 7, float %611)  ; Saturate(value)
  %613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %614 = extractvalue %dx.types.CBufRet.f32 %613, 0
  %615 = extractvalue %dx.types.CBufRet.f32 %613, 1
  %616 = extractvalue %dx.types.CBufRet.f32 %613, 2
  %617 = extractvalue %dx.types.CBufRet.f32 %613, 3
  %618 = fsub fast float %614, %588
  %619 = fsub fast float %615, %589
  %620 = fsub fast float %616, %590
  %621 = fsub fast float %617, %591
  %622 = fmul fast float %618, %612
  %623 = fmul fast float %619, %612
  %624 = fmul fast float %620, %612
  %625 = fmul fast float %621, %612
  %626 = fadd fast float %622, %588
  %627 = fadd fast float %623, %589
  %628 = fadd fast float %624, %590
  %629 = fadd fast float %625, %591
  %630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %631 = extractvalue %dx.types.CBufRet.f32 %630, 0
  %632 = extractvalue %dx.types.CBufRet.f32 %630, 1
  %633 = fsub fast float %631, %594
  %634 = fsub fast float %632, %595
  %635 = fmul fast float %633, %612
  %636 = fmul fast float %634, %612
  %637 = fadd fast float %635, %594
  %638 = fadd fast float %636, %595
  %639 = extractvalue %dx.types.CBufRet.f32 %630, 2
  %640 = extractvalue %dx.types.CBufRet.f32 %630, 3
  %641 = fsub fast float %639, %598
  %642 = fsub fast float %640, %599
  %643 = fmul fast float %641, %612
  %644 = fmul fast float %642, %612
  %645 = fadd fast float %643, %598
  %646 = fadd fast float %644, %599
  %647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %648 = extractvalue %dx.types.CBufRet.f32 %647, 0
  %649 = fmul fast float %648, %626
  %650 = fmul fast float %648, %627
  %651 = fmul fast float %648, %628
  %652 = fmul fast float %648, %629
  %653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %654 = extractvalue %dx.types.CBufRet.f32 %653, 0
  %655 = fmul fast float %654, %637
  %656 = fmul fast float %654, %638
  %657 = fadd fast float %655, %649
  %658 = fadd fast float %656, %651
  %659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %660 = extractvalue %dx.types.CBufRet.f32 %659, 0
  %661 = fmul fast float %660, %645
  %662 = fmul fast float %660, %646
  %663 = fadd fast float %657, %661
  %664 = fadd fast float %658, %662
  %665 = extractvalue %dx.types.CBufRet.f32 %647, 1
  %666 = fmul fast float %665, %626
  %667 = fmul fast float %665, %627
  %668 = fmul fast float %665, %628
  %669 = fmul fast float %665, %629
  %670 = extractvalue %dx.types.CBufRet.f32 %653, 1
  %671 = fmul fast float %670, %637
  %672 = fmul fast float %670, %638
  %673 = fadd fast float %671, %666
  %674 = fadd fast float %672, %668
  %675 = extractvalue %dx.types.CBufRet.f32 %659, 1
  %676 = fmul fast float %675, %645
  %677 = fmul fast float %675, %646
  %678 = fadd fast float %673, %676
  %679 = fadd fast float %674, %677
  %680 = extractvalue %dx.types.CBufRet.f32 %647, 2
  %681 = fmul fast float %680, %626
  %682 = fmul fast float %680, %627
  %683 = fmul fast float %680, %628
  %684 = fmul fast float %680, %629
  %685 = extractvalue %dx.types.CBufRet.f32 %653, 2
  %686 = fmul fast float %685, %637
  %687 = fmul fast float %685, %638
  %688 = fadd fast float %686, %681
  %689 = fadd fast float %687, %683
  %690 = extractvalue %dx.types.CBufRet.f32 %659, 2
  %691 = fmul fast float %690, %645
  %692 = fmul fast float %690, %646
  %693 = fadd fast float %688, %691
  %694 = fadd fast float %689, %692
  %695 = fmul fast float %682, %682
  %696 = fmul fast float %694, %694
  %697 = fmul fast float %684, %684
  %698 = fadd fast float %697, %695
  %699 = fadd fast float %698, %696
  %700 = call float @dx.op.unary.f32(i32 24, float %699)  ; Sqrt(value)
  %701 = fcmp fast ugt float %700, 0.000000e+00
  br i1 %701, label %702, label %717, !dx.controlflow.hints !46

; <label>:702                                     ; preds = %442
  %703 = fsub fast float -0.000000e+00, %684
  %704 = fdiv fast float %703, %700
  %705 = fsub fast float -0.000000e+00, %682
  %706 = fdiv fast float %705, %700
  %707 = fdiv fast float %694, %700
  %708 = fmul fast float %693, 0x3FE279A760000000
  %709 = fmul fast float %706, %682
  %710 = fmul fast float %707, %694
  %711 = fmul fast float %704, %684
  %712 = fadd fast float %709, %711
  %713 = fsub fast float %712, %710
  %714 = call float @dx.op.unary.f32(i32 6, float %713)  ; FAbs(value)
  %715 = fadd fast float %714, 0x3DDB7CDFE0000000
  %716 = fdiv fast float %708, %715
  br label %717

; <label>:717                                     ; preds = %702, %442
  %718 = phi float [ %716, %702 ], [ 1.000000e+00, %442 ]
  %719 = fmul fast float %667, %667
  %720 = fmul fast float %679, %679
  %721 = fmul fast float %669, %669
  %722 = fadd fast float %721, %719
  %723 = fadd fast float %722, %720
  %724 = call float @dx.op.unary.f32(i32 24, float %723)  ; Sqrt(value)
  %725 = fcmp fast ugt float %724, 0.000000e+00
  br i1 %725, label %726, label %741, !dx.controlflow.hints !46

; <label>:726                                     ; preds = %717
  %727 = fsub fast float -0.000000e+00, %669
  %728 = fdiv fast float %727, %724
  %729 = fsub fast float -0.000000e+00, %667
  %730 = fdiv fast float %729, %724
  %731 = fdiv fast float %679, %724
  %732 = fmul fast float %678, 0x3FE279A760000000
  %733 = fmul fast float %730, %667
  %734 = fmul fast float %731, %679
  %735 = fmul fast float %728, %669
  %736 = fadd fast float %733, %735
  %737 = fsub fast float %736, %734
  %738 = call float @dx.op.unary.f32(i32 6, float %737)  ; FAbs(value)
  %739 = fadd fast float %738, 0x3DDB7CDFE0000000
  %740 = fdiv fast float %732, %739
  br label %741

; <label>:741                                     ; preds = %726, %717
  %742 = phi float [ %740, %726 ], [ 1.000000e+00, %717 ]
  %743 = call float @dx.op.binary.f32(i32 36, float %742, float %718)  ; FMin(a,b)
  %744 = fmul fast float %650, %650
  %745 = fmul fast float %664, %664
  %746 = fmul fast float %652, %652
  %747 = fadd fast float %746, %744
  %748 = fadd fast float %747, %745
  %749 = call float @dx.op.unary.f32(i32 24, float %748)  ; Sqrt(value)
  %750 = fcmp fast ugt float %749, 0.000000e+00
  br i1 %750, label %751, label %766, !dx.controlflow.hints !46

; <label>:751                                     ; preds = %741
  %752 = fsub fast float -0.000000e+00, %652
  %753 = fdiv fast float %752, %749
  %754 = fsub fast float -0.000000e+00, %650
  %755 = fdiv fast float %754, %749
  %756 = fdiv fast float %664, %749
  %757 = fmul fast float %663, 0x3FE279A760000000
  %758 = fmul fast float %755, %650
  %759 = fmul fast float %756, %664
  %760 = fmul fast float %753, %652
  %761 = fadd fast float %758, %760
  %762 = fsub fast float %761, %759
  %763 = call float @dx.op.unary.f32(i32 6, float %762)  ; FAbs(value)
  %764 = fadd fast float %763, 0x3DDB7CDFE0000000
  %765 = fdiv fast float %757, %764
  br label %766

; <label>:766                                     ; preds = %751, %741
  %767 = phi float [ %765, %751 ], [ 1.000000e+00, %741 ]
  %768 = call float @dx.op.binary.f32(i32 36, float %767, float %743)  ; FMin(a,b)
  %769 = call float @dx.op.unary.f32(i32 7, float %768)  ; Saturate(value)
  %770 = fcmp fast olt float %769, 1.000000e+00
  br i1 %770, label %771, label %781, !dx.controlflow.hints !47

; <label>:771                                     ; preds = %766
  %772 = fmul fast float %769, %650
  %773 = fmul fast float %769, %664
  %774 = fmul fast float %769, %652
  %775 = fmul fast float %769, %667
  %776 = fmul fast float %769, %679
  %777 = fmul fast float %769, %669
  %778 = fmul fast float %769, %682
  %779 = fmul fast float %769, %694
  %780 = fmul fast float %769, %684
  br label %781

; <label>:781                                     ; preds = %771, %766
  %782 = phi float [ %778, %771 ], [ %682, %766 ]
  %783 = phi float [ %779, %771 ], [ %694, %766 ]
  %784 = phi float [ %780, %771 ], [ %684, %766 ]
  %785 = phi float [ %775, %771 ], [ %667, %766 ]
  %786 = phi float [ %776, %771 ], [ %679, %766 ]
  %787 = phi float [ %777, %771 ], [ %669, %766 ]
  %788 = phi float [ %772, %771 ], [ %650, %766 ]
  %789 = phi float [ %773, %771 ], [ %664, %766 ]
  %790 = phi float [ %774, %771 ], [ %652, %766 ]
  %791 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %663)  ; FMax(a,b)
  %792 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %678)  ; FMax(a,b)
  %793 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %693)  ; FMax(a,b)
  %794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %795 = extractvalue %dx.types.CBufRet.f32 %794, 0
  %796 = fcmp fast ogt float %795, 0.000000e+00
  %797 = fcmp fast oge float %451, 0.000000e+00
  %798 = and i1 %797, %796
  %799 = fcmp fast ole float %451, 1.000000e+00
  %800 = and i1 %799, %798
  %801 = fcmp fast oge float %452, 0.000000e+00
  %802 = and i1 %801, %800
  %803 = fcmp fast ole float %452, 1.000000e+00
  %804 = and i1 %803, %802
  br i1 %804, label %805, label %950, !dx.controlflow.hints !48

; <label>:805                                     ; preds = %781
  %806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %807 = extractvalue %dx.types.CBufRet.f32 %806, 2
  %808 = extractvalue %dx.types.CBufRet.f32 %806, 3
  %809 = fmul fast float %807, %451
  %810 = fmul fast float %808, %452
  %811 = call float @dx.op.unary.f32(i32 27, float %809)  ; Round_ni(value)
  %812 = call float @dx.op.unary.f32(i32 27, float %810)  ; Round_ni(value)
  %813 = fptosi float %811 to i32
  %814 = fptosi float %812 to i32
  %815 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %813, i32 %814, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %816 = extractvalue %dx.types.ResRet.i32 %815, 0
  %817 = and i32 %816, 65535
  %818 = lshr i32 %816, 16
  %819 = icmp eq i32 %817, 65535
  br i1 %819, label %856, label %820, !dx.controlflow.hints !49

; <label>:820                                     ; preds = %805
  %821 = extractvalue %dx.types.CBufRet.f32 %794, 1
  %822 = extractvalue %dx.types.CBufRet.f32 %806, 0
  %823 = extractvalue %dx.types.CBufRet.f32 %806, 1
  %824 = fmul fast float %822, %451
  %825 = fmul fast float %823, %452
  %826 = fmul fast float %824, 1.250000e-01
  %827 = fmul fast float %825, 1.250000e-01
  %828 = call float @dx.op.unary.f32(i32 27, float %826)  ; Round_ni(value)
  %829 = call float @dx.op.unary.f32(i32 27, float %827)  ; Round_ni(value)
  %830 = fmul fast float %828, 8.000000e+00
  %831 = fmul fast float %829, 8.000000e+00
  %832 = and i32 %816, 255
  %833 = lshr i32 %816, 8
  %834 = and i32 %833, 255
  %835 = mul nuw nsw i32 %832, 9
  %836 = uitofp i32 %835 to float
  %837 = mul nuw nsw i32 %834, 9
  %838 = uitofp i32 %837 to float
  %839 = fadd fast float %836, 5.000000e-01
  %840 = fadd fast float %839, %824
  %841 = fsub fast float %840, %830
  %842 = fadd fast float %838, 5.000000e-01
  %843 = fadd fast float %842, %825
  %844 = fsub fast float %843, %831
  %845 = fdiv fast float %841, %795
  %846 = fdiv fast float %844, %821
  %847 = fmul fast float %479, 4.375000e-01
  %848 = fadd fast float %847, 3.125000e-02
  %849 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %16, float %845, float %846, float %848, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %850 = extractvalue %dx.types.ResRet.f32 %849, 0
  %851 = extractvalue %dx.types.ResRet.f32 %849, 1
  %852 = extractvalue %dx.types.ResRet.f32 %849, 2
  %853 = fadd fast float %850, %791
  %854 = fadd fast float %851, %792
  %855 = fadd fast float %852, %793
  br label %856

; <label>:856                                     ; preds = %820, %805
  %857 = phi float [ %855, %820 ], [ %793, %805 ]
  %858 = phi float [ %854, %820 ], [ %792, %805 ]
  %859 = phi float [ %853, %820 ], [ %791, %805 ]
  %860 = icmp eq i32 %818, 65535
  br i1 %860, label %950, label %861, !dx.controlflow.hints !50

; <label>:861                                     ; preds = %856
  %862 = extractvalue %dx.types.CBufRet.f32 %794, 1
  %863 = extractvalue %dx.types.CBufRet.f32 %806, 0
  %864 = extractvalue %dx.types.CBufRet.f32 %806, 1
  %865 = fmul fast float %863, %451
  %866 = fmul fast float %864, %452
  %867 = fmul fast float %865, 1.250000e-01
  %868 = fmul fast float %866, 1.250000e-01
  %869 = call float @dx.op.unary.f32(i32 27, float %867)  ; Round_ni(value)
  %870 = call float @dx.op.unary.f32(i32 27, float %868)  ; Round_ni(value)
  %871 = fmul fast float %869, 8.000000e+00
  %872 = fmul fast float %870, 8.000000e+00
  %873 = fsub fast float %865, %871
  %874 = fsub fast float %866, %872
  %875 = fadd fast float %873, 5.000000e-01
  %876 = fadd fast float %874, 5.000000e-01
  %877 = and i32 %818, 255
  %878 = lshr i32 %816, 24
  %879 = mul nuw nsw i32 %877, 9
  %880 = uitofp i32 %879 to float
  %881 = mul nuw nsw i32 %878, 9
  %882 = uitofp i32 %881 to float
  %883 = fadd fast float %875, %880
  %884 = fadd fast float %876, %882
  %885 = fdiv fast float %883, %795
  %886 = fdiv fast float %884, %862
  %887 = fmul fast float %479, 4.375000e-01
  %888 = fadd fast float %887, 3.125000e-02
  %889 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %16, float %885, float %886, float %888, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %890 = extractvalue %dx.types.ResRet.f32 %889, 0
  %891 = extractvalue %dx.types.ResRet.f32 %889, 1
  %892 = extractvalue %dx.types.ResRet.f32 %889, 2
  %893 = fadd fast float %887, 5.312500e-01
  %894 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %16, float %885, float %886, float %893, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %895 = extractvalue %dx.types.ResRet.f32 %894, 0
  %896 = extractvalue %dx.types.ResRet.f32 %894, 1
  %897 = extractvalue %dx.types.ResRet.f32 %894, 2
  %898 = fmul fast float %895, 2.000000e+00
  %899 = fmul fast float %896, 2.000000e+00
  %900 = fmul fast float %897, 2.000000e+00
  %901 = fadd fast float %898, -1.000000e+00
  %902 = fadd fast float %899, -1.000000e+00
  %903 = fadd fast float %900, -1.000000e+00
  %904 = fmul fast float %901, %901
  %905 = fmul fast float %902, %902
  %906 = fadd fast float %904, %905
  %907 = fmul fast float %903, %903
  %908 = fadd fast float %906, %907
  %909 = call float @dx.op.unary.f32(i32 24, float %908)  ; Sqrt(value)
  %910 = fcmp fast ogt float %909, 0.000000e+00
  br i1 %910, label %911, label %915, !dx.controlflow.hints !51

; <label>:911                                     ; preds = %861
  %912 = fdiv fast float %901, %909
  %913 = fdiv fast float %902, %909
  %914 = fdiv fast float %903, %909
  br label %915

; <label>:915                                     ; preds = %911, %861
  %916 = phi float [ %912, %911 ], [ 0.000000e+00, %861 ]
  %917 = phi float [ %913, %911 ], [ 0.000000e+00, %861 ]
  %918 = phi float [ %914, %911 ], [ 0.000000e+00, %861 ]
  %919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %920 = extractvalue %dx.types.CBufRet.f32 %919, 0
  %921 = extractvalue %dx.types.CBufRet.f32 %919, 1
  %922 = fsub fast float %179, %920
  %923 = fsub fast float %180, %921
  %924 = fmul fast float %922, %922
  %925 = fmul fast float %923, %923
  %926 = fadd fast float %924, %925
  %927 = call float @dx.op.unary.f32(i32 24, float %926)  ; Sqrt(value)
  %928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %929 = extractvalue %dx.types.CBufRet.f32 %928, 0
  %930 = extractvalue %dx.types.CBufRet.f32 %928, 1
  %931 = fsub fast float %927, %929
  %932 = fdiv fast float %931, %930
  %933 = call float @dx.op.unary.f32(i32 7, float %932)  ; Saturate(value)
  %934 = fmul fast float %933, 2.000000e+00
  %935 = fsub fast float 3.000000e+00, %934
  %936 = fmul fast float %933, %933
  %937 = fmul fast float %936, %935
  %938 = call float @dx.op.dot3.f32(i32 55, float %916, float %917, float %918, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %939 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %938)  ; FMax(a,b)
  %940 = fmul fast float %939, 0x400C5BF8A0000000
  %941 = fmul fast float %937, %890
  %942 = fmul fast float %941, %940
  %943 = fadd fast float %942, %859
  %944 = fmul fast float %937, %891
  %945 = fmul fast float %944, %940
  %946 = fadd fast float %945, %858
  %947 = fmul fast float %937, %892
  %948 = fmul fast float %947, %940
  %949 = fadd fast float %948, %857
  br label %950

; <label>:950                                     ; preds = %915, %856, %781
  %951 = phi float [ %949, %915 ], [ %857, %856 ], [ %793, %781 ]
  %952 = phi float [ %946, %915 ], [ %858, %856 ], [ %792, %781 ]
  %953 = phi float [ %943, %915 ], [ %859, %856 ], [ %791, %781 ]
  %954 = fcmp fast ogt float %181, %475
  %955 = and i1 %797, %954
  %956 = and i1 %799, %955
  %957 = and i1 %801, %956
  %958 = and i1 %803, %957
  br i1 %958, label %959, label %1016, !dx.controlflow.hints !52

; <label>:959                                     ; preds = %950
  %960 = fmul fast float %477, 0x3FC24924A0000000
  %961 = fsub fast float %181, %475
  %962 = fdiv fast float %961, %960
  %963 = call float @dx.op.unary.f32(i32 7, float %962)  ; Saturate(value)
  %964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %965 = extractvalue %dx.types.CBufRet.f32 %964, 0
  %966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %967 = extractvalue %dx.types.CBufRet.f32 %966, 0
  %968 = extractvalue %dx.types.CBufRet.f32 %966, 1
  %969 = extractvalue %dx.types.CBufRet.f32 %966, 2
  %970 = fsub fast float %965, %953
  %971 = fsub fast float %967, %788
  %972 = fsub fast float %968, %789
  %973 = fsub fast float %969, %790
  %974 = fmul fast float %970, %963
  %975 = fmul fast float %971, %963
  %976 = fmul fast float %972, %963
  %977 = fmul fast float %973, %963
  %978 = fadd fast float %974, %953
  %979 = fadd fast float %975, %788
  %980 = fadd fast float %976, %789
  %981 = fadd fast float %977, %790
  %982 = extractvalue %dx.types.CBufRet.f32 %964, 1
  %983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %984 = extractvalue %dx.types.CBufRet.f32 %983, 0
  %985 = extractvalue %dx.types.CBufRet.f32 %983, 1
  %986 = extractvalue %dx.types.CBufRet.f32 %983, 2
  %987 = fsub fast float %982, %952
  %988 = fsub fast float %984, %785
  %989 = fsub fast float %985, %786
  %990 = fsub fast float %986, %787
  %991 = fmul fast float %987, %963
  %992 = fmul fast float %988, %963
  %993 = fmul fast float %989, %963
  %994 = fmul fast float %990, %963
  %995 = fadd fast float %991, %952
  %996 = fadd fast float %992, %785
  %997 = fadd fast float %993, %786
  %998 = fadd fast float %994, %787
  %999 = extractvalue %dx.types.CBufRet.f32 %964, 2
  %1000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1001 = extractvalue %dx.types.CBufRet.f32 %1000, 0
  %1002 = extractvalue %dx.types.CBufRet.f32 %1000, 1
  %1003 = extractvalue %dx.types.CBufRet.f32 %1000, 2
  %1004 = fsub fast float %999, %951
  %1005 = fsub fast float %1001, %782
  %1006 = fsub fast float %1002, %783
  %1007 = fsub fast float %1003, %784
  %1008 = fmul fast float %1004, %963
  %1009 = fmul fast float %1005, %963
  %1010 = fmul fast float %1006, %963
  %1011 = fmul fast float %1007, %963
  %1012 = fadd fast float %1008, %951
  %1013 = fadd fast float %1009, %782
  %1014 = fadd fast float %1010, %783
  %1015 = fadd fast float %1011, %784
  br label %1016

; <label>:1016                                    ; preds = %959, %950
  %1017 = phi float [ %1012, %959 ], [ %951, %950 ]
  %1018 = phi float [ %1013, %959 ], [ %782, %950 ]
  %1019 = phi float [ %1014, %959 ], [ %783, %950 ]
  %1020 = phi float [ %1015, %959 ], [ %784, %950 ]
  %1021 = phi float [ %995, %959 ], [ %952, %950 ]
  %1022 = phi float [ %996, %959 ], [ %785, %950 ]
  %1023 = phi float [ %997, %959 ], [ %786, %950 ]
  %1024 = phi float [ %998, %959 ], [ %787, %950 ]
  %1025 = phi float [ %978, %959 ], [ %953, %950 ]
  %1026 = phi float [ %979, %959 ], [ %788, %950 ]
  %1027 = phi float [ %980, %959 ], [ %789, %950 ]
  %1028 = phi float [ %981, %959 ], [ %790, %950 ]
  %1029 = extractvalue %dx.types.CBufRet.f32 %600, 3
  %1030 = fmul fast float %1029, %1025
  %1031 = fmul fast float %1029, %1021
  %1032 = fmul fast float %1029, %1017
  %1033 = fmul fast float %1026, 1.500000e+00
  %1034 = fmul fast float %1033, %1029
  %1035 = fmul fast float %1027, 1.500000e+00
  %1036 = fmul fast float %1035, %1029
  %1037 = fmul fast float %1028, 1.500000e+00
  %1038 = fmul fast float %1037, %1029
  %1039 = fmul fast float %1022, 1.500000e+00
  %1040 = fmul fast float %1039, %1029
  %1041 = fmul fast float %1023, 1.500000e+00
  %1042 = fmul fast float %1041, %1029
  %1043 = fmul fast float %1024, 1.500000e+00
  %1044 = fmul fast float %1043, %1029
  %1045 = fmul fast float %1018, 1.500000e+00
  %1046 = fmul fast float %1045, %1029
  %1047 = fmul fast float %1019, 1.500000e+00
  %1048 = fmul fast float %1047, %1029
  %1049 = fmul fast float %1020, 1.500000e+00
  %1050 = fmul fast float %1049, %1029
  %1051 = fsub fast float %440, %1030
  %1052 = fmul fast float %1051, %338
  %1053 = fadd fast float %1052, %1030
  %1054 = fsub fast float %439, %1034
  %1055 = fmul fast float %1054, %338
  %1056 = fadd fast float %1055, %1034
  %1057 = fsub fast float %438, %1036
  %1058 = fmul fast float %1057, %338
  %1059 = fadd fast float %1058, %1036
  %1060 = fsub fast float %437, %1038
  %1061 = fmul fast float %1060, %338
  %1062 = fadd fast float %1061, %1038
  %1063 = fmul fast float %436, %338
  %1064 = fmul fast float %435, %338
  %1065 = fmul fast float %434, %338
  %1066 = fmul fast float %433, %338
  %1067 = fmul fast float %432, %338
  %1068 = fsub fast float %431, %1031
  %1069 = fmul fast float %1068, %338
  %1070 = fadd fast float %1069, %1031
  %1071 = fsub fast float %430, %1040
  %1072 = fmul fast float %1071, %338
  %1073 = fadd fast float %1072, %1040
  %1074 = fsub fast float %429, %1042
  %1075 = fmul fast float %1074, %338
  %1076 = fadd fast float %1075, %1042
  %1077 = fsub fast float %428, %1044
  %1078 = fmul fast float %1077, %338
  %1079 = fadd fast float %1078, %1044
  %1080 = fmul fast float %427, %338
  %1081 = fmul fast float %426, %338
  %1082 = fmul fast float %425, %338
  %1083 = fmul fast float %424, %338
  %1084 = fmul fast float %423, %338
  %1085 = fsub fast float %422, %1032
  %1086 = fmul fast float %1085, %338
  %1087 = fadd fast float %1086, %1032
  %1088 = fsub fast float %421, %1046
  %1089 = fmul fast float %1088, %338
  %1090 = fadd fast float %1089, %1046
  %1091 = fsub fast float %420, %1048
  %1092 = fmul fast float %1091, %338
  %1093 = fadd fast float %1092, %1048
  %1094 = fsub fast float %419, %1050
  %1095 = fmul fast float %1094, %338
  %1096 = fadd fast float %1095, %1050
  %1097 = fmul fast float %418, %338
  %1098 = fmul fast float %417, %338
  %1099 = fmul fast float %416, %338
  %1100 = fmul fast float %415, %338
  %1101 = fmul fast float %414, %338
  br label %1102

; <label>:1102                                    ; preds = %1016, %413
  %1103 = phi float [ %1101, %1016 ], [ %414, %413 ]
  %1104 = phi float [ %1100, %1016 ], [ %415, %413 ]
  %1105 = phi float [ %1099, %1016 ], [ %416, %413 ]
  %1106 = phi float [ %1098, %1016 ], [ %417, %413 ]
  %1107 = phi float [ %1097, %1016 ], [ %418, %413 ]
  %1108 = phi float [ %1096, %1016 ], [ %419, %413 ]
  %1109 = phi float [ %1093, %1016 ], [ %420, %413 ]
  %1110 = phi float [ %1090, %1016 ], [ %421, %413 ]
  %1111 = phi float [ %1087, %1016 ], [ %422, %413 ]
  %1112 = phi float [ %1084, %1016 ], [ %423, %413 ]
  %1113 = phi float [ %1083, %1016 ], [ %424, %413 ]
  %1114 = phi float [ %1082, %1016 ], [ %425, %413 ]
  %1115 = phi float [ %1081, %1016 ], [ %426, %413 ]
  %1116 = phi float [ %1080, %1016 ], [ %427, %413 ]
  %1117 = phi float [ %1079, %1016 ], [ %428, %413 ]
  %1118 = phi float [ %1076, %1016 ], [ %429, %413 ]
  %1119 = phi float [ %1073, %1016 ], [ %430, %413 ]
  %1120 = phi float [ %1070, %1016 ], [ %431, %413 ]
  %1121 = phi float [ %1067, %1016 ], [ %432, %413 ]
  %1122 = phi float [ %1066, %1016 ], [ %433, %413 ]
  %1123 = phi float [ %1065, %1016 ], [ %434, %413 ]
  %1124 = phi float [ %1064, %1016 ], [ %435, %413 ]
  %1125 = phi float [ %1063, %1016 ], [ %436, %413 ]
  %1126 = phi float [ %1062, %1016 ], [ %437, %413 ]
  %1127 = phi float [ %1059, %1016 ], [ %438, %413 ]
  %1128 = phi float [ %1056, %1016 ], [ %439, %413 ]
  %1129 = phi float [ %1053, %1016 ], [ %440, %413 ]
  %1130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1131 = extractvalue %dx.types.CBufRet.f32 %1130, 2
  %1132 = fmul fast float %1131, %1131
  %1133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1134 = extractvalue %dx.types.CBufRet.f32 %1133, 0
  %1135 = extractvalue %dx.types.CBufRet.f32 %1133, 1
  %1136 = extractvalue %dx.types.CBufRet.f32 %1133, 2
  %1137 = fmul fast float %1129, 0x3FD20DD760000000
  %1138 = fmul fast float %1136, %1127
  %1139 = fmul fast float %1136, %1136
  %1140 = fmul fast float %1139, 0x3FEE471020000000
  %1141 = fadd fast float %1140, 0xBFD42F6020000000
  %1142 = fmul fast float %1141, %1123
  %1143 = fmul fast float %1134, %1126
  %1144 = fmul fast float %1135, %1128
  %1145 = fmul fast float %1136, 0x3FF17B1420000000
  %1146 = fmul fast float %1132, %1122
  %1147 = fmul fast float %1146, %1134
  %1148 = fmul fast float %1147, %1145
  %1149 = fmul fast float %1132, %1124
  %1150 = fmul fast float %1149, %1135
  %1151 = fmul fast float %1150, %1145
  %1152 = fmul fast float %1134, %1134
  %1153 = fmul fast float %1135, %1135
  %1154 = fsub fast float %1152, %1153
  %1155 = fmul fast float %1121, 0x3FE17B1420000000
  %1156 = fmul fast float %1155, %1154
  %1157 = fmul fast float %1125, 0x3FF17B1420000000
  %1158 = fmul fast float %1157, %1135
  %1159 = fmul fast float %1158, %1134
  %1160 = fadd fast float %1156, %1159
  %1161 = fadd fast float %1160, %1142
  %1162 = fmul fast float %1161, %1132
  %1163 = fsub fast float %1144, %1138
  %1164 = fadd fast float %1163, %1143
  %1165 = fmul fast float %1164, 0x3FDF454380000000
  %1166 = fmul fast float %1165, %1131
  %1167 = fsub fast float %1137, %1148
  %1168 = fsub fast float %1167, %1151
  %1169 = fadd fast float %1168, %1162
  %1170 = fadd fast float %1169, %1166
  %1171 = fmul fast float %1120, 0x3FD20DD760000000
  %1172 = fmul fast float %1136, %1118
  %1173 = fmul fast float %1141, %1114
  %1174 = fmul fast float %1134, %1117
  %1175 = fmul fast float %1135, %1119
  %1176 = fmul fast float %1132, %1113
  %1177 = fmul fast float %1176, %1134
  %1178 = fmul fast float %1177, %1145
  %1179 = fmul fast float %1132, %1115
  %1180 = fmul fast float %1179, %1135
  %1181 = fmul fast float %1180, %1145
  %1182 = fmul fast float %1112, 0x3FE17B1420000000
  %1183 = fmul fast float %1182, %1154
  %1184 = fmul fast float %1116, 0x3FF17B1420000000
  %1185 = fmul fast float %1184, %1135
  %1186 = fmul fast float %1185, %1134
  %1187 = fadd fast float %1183, %1186
  %1188 = fadd fast float %1187, %1173
  %1189 = fmul fast float %1188, %1132
  %1190 = fsub fast float %1175, %1172
  %1191 = fadd fast float %1190, %1174
  %1192 = fmul fast float %1191, 0x3FDF454380000000
  %1193 = fmul fast float %1192, %1131
  %1194 = fsub fast float %1171, %1178
  %1195 = fsub fast float %1194, %1181
  %1196 = fadd fast float %1195, %1189
  %1197 = fadd fast float %1196, %1193
  %1198 = fmul fast float %1111, 0x3FD20DD760000000
  %1199 = fmul fast float %1136, %1109
  %1200 = fmul fast float %1141, %1105
  %1201 = fmul fast float %1134, %1108
  %1202 = fmul fast float %1135, %1110
  %1203 = fmul fast float %1132, %1104
  %1204 = fmul fast float %1203, %1134
  %1205 = fmul fast float %1204, %1145
  %1206 = fmul fast float %1132, %1106
  %1207 = fmul fast float %1206, %1135
  %1208 = fmul fast float %1207, %1145
  %1209 = fmul fast float %1103, 0x3FE17B1420000000
  %1210 = fmul fast float %1209, %1154
  %1211 = fmul fast float %1107, 0x3FF17B1420000000
  %1212 = fmul fast float %1211, %1135
  %1213 = fmul fast float %1212, %1134
  %1214 = fadd fast float %1210, %1213
  %1215 = fadd fast float %1214, %1200
  %1216 = fmul fast float %1215, %1132
  %1217 = fsub fast float %1202, %1199
  %1218 = fadd fast float %1217, %1201
  %1219 = fmul fast float %1218, 0x3FDF454380000000
  %1220 = fmul fast float %1219, %1131
  %1221 = fsub fast float %1198, %1205
  %1222 = fsub fast float %1221, %1208
  %1223 = fadd fast float %1222, %1216
  %1224 = fadd fast float %1223, %1220
  %1225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1226 = extractvalue %dx.types.CBufRet.f32 %1225, 3
  %1227 = extractvalue %dx.types.CBufRet.f32 %279, 0
  %1228 = fmul fast float %1227, %1226
  %1229 = fmul fast float %1228, %1170
  %1230 = fmul fast float %1228, %1197
  %1231 = fmul fast float %1228, %1224
  %1232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1233 = extractvalue %dx.types.CBufRet.f32 %1232, 3
  %1234 = fcmp fast une float %1233, 0.000000e+00
  %1235 = extractvalue %dx.types.CBufRet.f32 %1232, 0
  %1236 = extractvalue %dx.types.CBufRet.f32 %1232, 1
  %1237 = extractvalue %dx.types.CBufRet.f32 %1232, 2
  br i1 %1234, label %1238, label %1260, !dx.controlflow.hints !53

; <label>:1238                                    ; preds = %1102
  %1239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1240 = extractvalue %dx.types.CBufRet.f32 %1239, 0
  %1241 = extractvalue %dx.types.CBufRet.f32 %1239, 1
  %1242 = extractvalue %dx.types.CBufRet.f32 %1239, 2
  %1243 = call float @dx.op.dot3.f32(i32 55, float %1235, float %1236, float %1237, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %1244 = fcmp fast ogt float %289, 0.000000e+00
  %1245 = select i1 %1244, float 1.000000e+00, float -1.000000e+00
  %1246 = fmul fast float %1245, 5.000000e-01
  %1247 = fmul fast float %1246, %1243
  %1248 = fmul fast float %1245, %289
  %1249 = fadd fast float %1247, 4.921875e-01
  %1250 = fadd fast float %1248, -3.125000e-02
  %1251 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %16, float %1249, float 0x3FB25F3060000000, float %1250, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1252 = extractvalue %dx.types.ResRet.f32 %1251, 0
  %1253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1254 = extractvalue %dx.types.CBufRet.f32 %1253, 0
  %1255 = fmul fast float %1252, 0x400921FB60000000
  %1256 = fmul fast float %1255, %1254
  %1257 = fmul fast float %1256, %1240
  %1258 = fmul fast float %1256, %1241
  %1259 = fmul fast float %1256, %1242
  br label %1260

; <label>:1260                                    ; preds = %1238, %1102
  %1261 = phi float [ %1257, %1238 ], [ 0.000000e+00, %1102 ]
  %1262 = phi float [ %1258, %1238 ], [ 0.000000e+00, %1102 ]
  %1263 = phi float [ %1259, %1238 ], [ 0.000000e+00, %1102 ]
  %1264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1265 = extractvalue %dx.types.CBufRet.f32 %1264, 0
  %1266 = fmul fast float %1265, %1237
  %1267 = fadd fast float %1266, %181
  br i1 %191, label %1320, label %1268, !dx.controlflow.hints !37

; <label>:1268                                    ; preds = %1260
  %1269 = fmul fast float %1265, %1236
  %1270 = fadd fast float %180, %1269
  %1271 = fmul fast float %1265, %1235
  %1272 = fadd fast float %179, %1271
  %1273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %1274 = extractvalue %dx.types.CBufRet.f32 %1273, 0
  %1275 = fsub fast float -0.000000e+00, %1272
  %1276 = fsub fast float -0.000000e+00, %1270
  %1277 = fsub fast float %1274, %1267
  %1278 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1275, float %1276, float %1277)  ; Dot3(ax,ay,az,bx,by,bz)
  %1279 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1235, float %1236, float %1237)  ; Dot3(ax,ay,az,bx,by,bz)
  %1280 = fdiv fast float 1.000000e+00, %1279
  %1281 = fmul fast float %1280, %1278
  %1282 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1281)  ; FMax(a,b)
  %1283 = fcmp fast olt float %1237, 0.000000e+00
  %1284 = call float @dx.op.binary.f32(i32 36, float %1265, float %1282)  ; FMin(a,b)
  br i1 %1283, label %1286, label %1285, !dx.controlflow.hints !38

; <label>:1285                                    ; preds = %1268
  br label %1286

; <label>:1286                                    ; preds = %1285, %1268
  %1287 = phi float [ 0.000000e+00, %1285 ], [ %1284, %1268 ]
  %1288 = phi float [ %1284, %1285 ], [ %1265, %1268 ]
  %1289 = phi float [ %1284, %1285 ], [ 0.000000e+00, %1268 ]
  %1290 = phi float [ %1265, %1285 ], [ %1284, %1268 ]
  %1291 = fsub fast float %1288, %1287
  %1292 = extractvalue %dx.types.CBufRet.f32 %1273, 1
  %1293 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %1292)  ; FMin(a,b)
  %1294 = fsub fast float %1267, %1274
  %1295 = fmul fast float %1293, 0x3FF7154760000000
  %1296 = fmul fast float %1295, %1294
  %1297 = call float @dx.op.unary.f32(i32 21, float %1296)  ; Exp(value)
  %1298 = fmul fast float %1237, 0x3FF7154760000000
  %1299 = fmul fast float %1298, %1290
  %1300 = fmul fast float %1299, %1293
  %1301 = call float @dx.op.unary.f32(i32 21, float %1300)  ; Exp(value)
  %1302 = fmul fast float %1298, %1289
  %1303 = fmul fast float %1302, %1293
  %1304 = call float @dx.op.unary.f32(i32 21, float %1303)  ; Exp(value)
  %1305 = fsub fast float %1301, %1304
  %1306 = fmul fast float %1305, %1297
  %1307 = fmul fast float %1293, %1237
  %1308 = fdiv fast float %1306, %1307
  %1309 = fadd fast float %1291, %1308
  %1310 = call float @dx.op.unary.f32(i32 6, float %1237)  ; FAbs(value)
  %1311 = fcmp fast olt float %1310, 0x3F0FFB4800000000
  %1312 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1294)  ; FMax(a,b)
  %1313 = fmul fast float %1312, 0x3FF7154760000000
  %1314 = fmul fast float %1313, %1292
  %1315 = call float @dx.op.unary.f32(i32 21, float %1314)  ; Exp(value)
  %1316 = fmul fast float %1315, %1265
  %1317 = select i1 %1311, float %1316, float %1309
  %1318 = extractvalue %dx.types.CBufRet.f32 %1130, 1
  %1319 = fmul fast float %1317, %1318
  br label %1320

; <label>:1320                                    ; preds = %1286, %1260
  %1321 = phi float [ %1319, %1286 ], [ 0.000000e+00, %1260 ]
  %1322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %1323 = extractvalue %dx.types.CBufRet.f32 %1322, 3
  %1324 = fmul fast float %1321, 0xBFF7154760000000
  %1325 = fmul fast float %1324, %1323
  %1326 = call float @dx.op.unary.f32(i32 21, float %1325)  ; Exp(value)
  %1327 = call float @dx.op.unary.f32(i32 7, float %1326)  ; Saturate(value)
  %1328 = fmul fast float %1327, %1261
  %1329 = fmul fast float %1327, %1262
  %1330 = fmul fast float %1327, %1263
  %1331 = fadd fast float %1328, %1229
  %1332 = fadd fast float %1329, %1230
  %1333 = fadd fast float %1330, %1231
  %1334 = fsub fast float 1.000000e+00, %298
  %1335 = fmul fast float %290, %175
  %1336 = fmul fast float %1335, %1334
  %1337 = fmul fast float %1336, %1331
  %1338 = fmul fast float %291, %175
  %1339 = fmul fast float %1338, %1334
  %1340 = fmul fast float %1339, %1332
  %1341 = fmul fast float %292, %175
  %1342 = fmul fast float %1341, %1334
  %1343 = fmul fast float %1342, %1333
  %1344 = fadd fast float %1337, %176
  %1345 = fadd fast float %1340, %177
  %1346 = fadd fast float %1343, %178
  %1347 = fdiv fast float %274, %216
  %1348 = fadd fast float %216, %182
  %1349 = fmul fast float %182, %182
  %1350 = fmul fast float %1348, %1348
  %1351 = fsub fast float %1349, %1350
  %1352 = fmul fast float %1351, -5.000000e-01
  %1353 = fmul fast float %1352, %1347
  %1354 = fadd fast float %1353, %174
  %1355 = fadd fast float %274, %183
  %1356 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1357 = extractvalue %dx.types.CBufRet.i32 %1356, 0
  %1358 = icmp eq i32 %1357, 0
  br i1 %1358, label %1385, label %1359, !dx.controlflow.hints !54

; <label>:1359                                    ; preds = %1320
  %1360 = icmp ne i32 %188, 0
  %1361 = zext i1 %1360 to i32
  %1362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1363 = extractvalue %dx.types.CBufRet.f32 %1362, 2
  %1364 = extractvalue %dx.types.CBufRet.f32 %1362, 0
  %1365 = fsub fast float %1348, %1364
  %1366 = fmul fast float %1365, %1363
  %1367 = call float @dx.op.unary.f32(i32 7, float %1366)  ; Saturate(value)
  %1368 = fadd fast float %1367, -5.000000e-01
  %1369 = fmul fast float %1368, 2.000000e+00
  %1370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1371 = extractvalue %dx.types.CBufRet.f32 %1370, 2
  %1372 = fcmp fast olt float %1369, %1371
  br i1 %1372, label %1373, label %1385, !dx.controlflow.hints !55

; <label>:1373                                    ; preds = %1359
  %1374 = fmul fast float %1369, %1369
  %1375 = fmul fast float %1334, %175
  %1376 = fmul fast float %1369, %1375
  %1377 = fmul fast float %1374, %1375
  %1378 = fmul fast float %1376, %1374
  %1379 = fmul fast float %1374, %1374
  %1380 = fmul fast float %1379, %1375
  %1381 = fadd fast float %1376, %184
  %1382 = fadd fast float %1377, %185
  %1383 = fadd fast float %1378, %186
  %1384 = fadd fast float %1380, %187
  br label %1385

; <label>:1385                                    ; preds = %1373, %1359, %1320
  %1386 = phi float [ %184, %1320 ], [ %1381, %1373 ], [ %184, %1359 ]
  %1387 = phi float [ %185, %1320 ], [ %1382, %1373 ], [ %185, %1359 ]
  %1388 = phi float [ %186, %1320 ], [ %1383, %1373 ], [ %186, %1359 ]
  %1389 = phi float [ %187, %1320 ], [ %1384, %1373 ], [ %187, %1359 ]
  %1390 = phi i32 [ %188, %1320 ], [ 1, %1373 ], [ %1361, %1359 ]
  %1391 = fmul fast float %298, %175
  br label %1392

; <label>:1392                                    ; preds = %1385, %293
  %1393 = phi float [ %294, %293 ], [ %1348, %1385 ]
  %1394 = phi float [ %174, %293 ], [ %1354, %1385 ]
  %1395 = phi float [ %175, %293 ], [ %1391, %1385 ]
  %1396 = phi float [ %176, %293 ], [ %1344, %1385 ]
  %1397 = phi float [ %177, %293 ], [ %1345, %1385 ]
  %1398 = phi float [ %178, %293 ], [ %1346, %1385 ]
  %1399 = phi float [ %183, %293 ], [ %1355, %1385 ]
  %1400 = phi float [ %184, %293 ], [ %1386, %1385 ]
  %1401 = phi float [ %185, %293 ], [ %1387, %1385 ]
  %1402 = phi float [ %186, %293 ], [ %1388, %1385 ]
  %1403 = phi float [ %187, %293 ], [ %1389, %1385 ]
  %1404 = phi i32 [ %188, %293 ], [ %1390, %1385 ]
  %1405 = fmul fast float %216, %105
  %1406 = fmul fast float %216, %106
  %1407 = fmul fast float %216, %107
  %1408 = fadd fast float %1405, %179
  %1409 = fadd fast float %1406, %180
  %1410 = fadd fast float %1407, %181
  %1411 = fcmp fast olt float %1393, %154
  %1412 = extractvalue %dx.types.CBufRet.f32 %279, 2
  %1413 = fcmp fast olt float %1412, %1395
  %1414 = and i1 %1411, %1413
  br i1 %1414, label %173, label %1415

; <label>:1415                                    ; preds = %1392
  br label %1416

; <label>:1416                                    ; preds = %1415, %150
  %1417 = phi float [ 0.000000e+00, %150 ], [ %1394, %1415 ]
  %1418 = phi float [ 1.000000e+00, %150 ], [ %1395, %1415 ]
  %1419 = phi float [ 0.000000e+00, %150 ], [ %1396, %1415 ]
  %1420 = phi float [ 0.000000e+00, %150 ], [ %1397, %1415 ]
  %1421 = phi float [ 0.000000e+00, %150 ], [ %1398, %1415 ]
  %1422 = phi float [ 0.000000e+00, %150 ], [ %1399, %1415 ]
  %1423 = phi float [ 0.000000e+00, %150 ], [ %1400, %1415 ]
  %1424 = phi float [ 0.000000e+00, %150 ], [ %1401, %1415 ]
  %1425 = phi float [ 0.000000e+00, %150 ], [ %1402, %1415 ]
  %1426 = phi float [ 0.000000e+00, %150 ], [ %1403, %1415 ]
  %1427 = phi i32 [ 0, %150 ], [ %1404, %1415 ]
  %1428 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1429 = extractvalue %dx.types.CBufRet.i32 %1428, 0
  %1430 = icmp eq i32 %1429, 0
  br i1 %1430, label %1472, label %1431, !dx.controlflow.hints !56

; <label>:1431                                    ; preds = %1416
  %1432 = icmp eq i32 %1427, 0
  br i1 %1432, label %1471, label %1433, !dx.controlflow.hints !57

; <label>:1433                                    ; preds = %1431
  %1434 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1435 = extractvalue %dx.types.CBufRet.i32 %1434, 2
  %1436 = icmp eq i32 %1435, 0
  br i1 %1436, label %1443, label %1437, !dx.controlflow.hints !58

; <label>:1437                                    ; preds = %1433
  %1438 = fsub fast float 1.000000e+00, %1418
  %1439 = fdiv fast float %1423, %1438
  %1440 = fdiv fast float %1424, %1438
  %1441 = fdiv fast float %1425, %1438
  %1442 = fdiv fast float %1426, %1438
  br label %1448

; <label>:1443                                    ; preds = %1433
  %1444 = fadd fast float %1423, %1418
  %1445 = fadd fast float %1424, %1418
  %1446 = fadd fast float %1425, %1418
  %1447 = fadd fast float %1426, %1418
  br label %1448

; <label>:1448                                    ; preds = %1443, %1437
  %1449 = phi float [ %1439, %1437 ], [ %1444, %1443 ]
  %1450 = phi float [ %1440, %1437 ], [ %1445, %1443 ]
  %1451 = phi float [ %1441, %1437 ], [ %1446, %1443 ]
  %1452 = phi float [ %1442, %1437 ], [ %1447, %1443 ]
  %1453 = call float @dx.op.binary.f32(i32 35, float %1449, float -1.000000e+00)  ; FMax(a,b)
  %1454 = call float @dx.op.binary.f32(i32 35, float %1450, float -1.000000e+00)  ; FMax(a,b)
  %1455 = call float @dx.op.binary.f32(i32 35, float %1451, float -1.000000e+00)  ; FMax(a,b)
  %1456 = call float @dx.op.binary.f32(i32 35, float %1452, float -1.000000e+00)  ; FMax(a,b)
  %1457 = call float @dx.op.binary.f32(i32 36, float %1453, float 1.000000e+00)  ; FMin(a,b)
  %1458 = call float @dx.op.binary.f32(i32 36, float %1454, float 1.000000e+00)  ; FMin(a,b)
  %1459 = call float @dx.op.binary.f32(i32 36, float %1455, float 1.000000e+00)  ; FMin(a,b)
  %1460 = call float @dx.op.binary.f32(i32 36, float %1456, float 1.000000e+00)  ; FMin(a,b)
  %1461 = fmul fast float %1457, 1.500000e+00
  %1462 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1459, float %1461)  ; FMad(a,b,c)
  %1463 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1458, float 0.000000e+00)  ; FMad(a,b,c)
  %1464 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1460, float %1463)  ; FMad(a,b,c)
  %1465 = fmul fast float %1457, 0x3FEBB67AE0000000
  %1466 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1459, float %1465)  ; FMad(a,b,c)
  %1467 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1458, float 0.000000e+00)  ; FMad(a,b,c)
  %1468 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1460, float %1467)  ; FMad(a,b,c)
  %1469 = fadd fast float %1462, 5.000000e-01
  %1470 = fadd fast float %1466, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %19, i32 %20, i32 0, float %1469, float %1464, float %1470, float %1468, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1472

; <label>:1471                                    ; preds = %1431
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %19, i32 %20, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1472

; <label>:1472                                    ; preds = %1471, %1448, %1416
  %1473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1474 = extractvalue %dx.types.CBufRet.f32 %1473, 2
  %1475 = fsub fast float %1418, %1474
  %1476 = fdiv fast float %1475, %1474
  %1477 = call float @dx.op.unary.f32(i32 7, float %1476)  ; Saturate(value)
  %1478 = fmul fast float %1477, 2.000000e+00
  %1479 = fsub fast float 3.000000e+00, %1478
  %1480 = fmul fast float %1477, %1477
  %1481 = fmul fast float %1480, %1418
  %1482 = fmul fast float %1481, %1479
  %1483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1484 = extractvalue %dx.types.CBufRet.f32 %1483, 0
  %1485 = extractvalue %dx.types.CBufRet.f32 %1483, 1
  %1486 = extractvalue %dx.types.CBufRet.f32 %1483, 2
  %1487 = call float @dx.op.dot3.f32(i32 55, float %105, float %106, float %107, float %1484, float %1485, float %1486)  ; Dot3(ax,ay,az,bx,by,bz)
  %1488 = fmul fast float %1487, %1417
  %1489 = fcmp fast ogt float %1422, 0.000000e+00
  %1490 = fdiv fast float 1.000000e+00, %1422
  %1491 = fmul fast float %1488, %1490
  %1492 = select i1 %1489, float %1491, float %116
  %1493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1494 = extractvalue %dx.types.CBufRet.f32 %1493, 0
  %1495 = extractvalue %dx.types.CBufRet.f32 %1493, 1
  %1496 = extractvalue %dx.types.CBufRet.f32 %1493, 2
  %1497 = fmul fast float %1494, %69
  %1498 = fmul fast float %1495, %69
  %1499 = fmul fast float %1496, %69
  %1500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1501 = extractvalue %dx.types.CBufRet.f32 %1500, 0
  %1502 = extractvalue %dx.types.CBufRet.f32 %1500, 1
  %1503 = extractvalue %dx.types.CBufRet.f32 %1500, 2
  %1504 = fmul fast float %1501, %70
  %1505 = fmul fast float %1502, %70
  %1506 = fmul fast float %1503, %70
  %1507 = fadd fast float %1504, %1497
  %1508 = fadd fast float %1505, %1498
  %1509 = fadd fast float %1506, %1499
  %1510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1511 = extractvalue %dx.types.CBufRet.f32 %1510, 0
  %1512 = extractvalue %dx.types.CBufRet.f32 %1510, 1
  %1513 = extractvalue %dx.types.CBufRet.f32 %1510, 2
  %1514 = fadd fast float %1507, %1511
  %1515 = fadd fast float %1508, %1512
  %1516 = fadd fast float %1509, %1513
  %1517 = fmul fast float %1514, %1492
  %1518 = fmul fast float %1515, %1492
  %1519 = fmul fast float %1516, %1492
  %1520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1521 = extractvalue %dx.types.CBufRet.f32 %1520, 0
  %1522 = extractvalue %dx.types.CBufRet.f32 %1520, 1
  %1523 = extractvalue %dx.types.CBufRet.f32 %1520, 2
  %1524 = extractvalue %dx.types.CBufRet.f32 %1520, 3
  %1525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1526 = extractvalue %dx.types.CBufRet.f32 %1525, 0
  %1527 = extractvalue %dx.types.CBufRet.f32 %1525, 1
  %1528 = extractvalue %dx.types.CBufRet.f32 %1525, 2
  %1529 = extractvalue %dx.types.CBufRet.f32 %1525, 3
  %1530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1531 = extractvalue %dx.types.CBufRet.f32 %1530, 0
  %1532 = extractvalue %dx.types.CBufRet.f32 %1530, 1
  %1533 = extractvalue %dx.types.CBufRet.f32 %1530, 2
  %1534 = extractvalue %dx.types.CBufRet.f32 %1530, 3
  %1535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1536 = extractvalue %dx.types.CBufRet.f32 %1535, 0
  %1537 = extractvalue %dx.types.CBufRet.f32 %1535, 1
  %1538 = extractvalue %dx.types.CBufRet.f32 %1535, 2
  %1539 = extractvalue %dx.types.CBufRet.f32 %1535, 3
  %1540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1541 = extractvalue %dx.types.CBufRet.f32 %1540, 3
  %1542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1543 = extractvalue %dx.types.CBufRet.f32 %1542, 3
  %1544 = extractvalue %dx.types.CBufRet.f32 %1542, 0
  %1545 = extractvalue %dx.types.CBufRet.f32 %1542, 1
  %1546 = extractvalue %dx.types.CBufRet.f32 %1542, 2
  %1547 = fcmp fast olt float %1546, -5.000000e-01
  %1548 = call float @dx.op.dot3.f32(i32 55, float %1517, float %1518, float %1519, float %1517, float %1518, float %1519)  ; Dot3(ax,ay,az,bx,by,bz)
  %1549 = call float @dx.op.unary.f32(i32 25, float %1548)  ; Rsqrt(value)
  %1550 = fmul fast float %1549, %1548
  %1551 = fmul fast float %1549, %1517
  %1552 = fmul fast float %1549, %1518
  %1553 = fmul fast float %1549, %1519
  %1554 = fadd fast float %1550, %1524
  %1555 = call float @dx.op.dot3.f32(i32 55, float %1551, float %1552, float %1553, float %1521, float %1522, float %1523)  ; Dot3(ax,ay,az,bx,by,bz)
  %1556 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1557 = extractvalue %dx.types.CBufRet.i32 %1556, 1
  %1558 = and i32 %1557, 1
  %1559 = icmp ne i32 %1558, 0
  %1560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1561 = extractvalue %dx.types.CBufRet.f32 %1560, 2
  %1562 = fcmp fast ogt float %1561, 0.000000e+00
  %1563 = and i1 %1559, %1562
  br i1 %1563, label %1564, label %1970, !dx.controlflow.hints !59

; <label>:1564                                    ; preds = %1472
  %1565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1566 = extractvalue %dx.types.CBufRet.f32 %1565, 3
  %1567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1568 = extractvalue %dx.types.CBufRet.f32 %1567, 2
  %1569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1570 = extractvalue %dx.types.CBufRet.f32 %1569, 2
  %1571 = fsub fast float %1568, %1570
  %1572 = and i32 %1557, 2
  %1573 = extractvalue %dx.types.CBufRet.i32 %1556, 0
  %1574 = call i32 @dx.op.binary.i32(i32 40, i32 %1573, i32 3)  ; UMin(a,b)
  %1575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1576 = extractvalue %dx.types.CBufRet.f32 %1575, 0
  %1577 = extractvalue %dx.types.CBufRet.f32 %1575, 1
  %1578 = extractvalue %dx.types.CBufRet.f32 %1569, 0
  %1579 = extractvalue %dx.types.CBufRet.f32 %1569, 1
  %1580 = fsub fast float %1576, %1578
  %1581 = fsub fast float %1577, %1579
  %1582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1583 = extractvalue %dx.types.CBufRet.f32 %1582, 0
  %1584 = fcmp fast ogt float %1583, 0.000000e+00
  %1585 = fsub fast float -0.000000e+00, %1580
  %1586 = fsub fast float -0.000000e+00, %1581
  %1587 = call float @dx.op.dot2.f32(i32 54, float %1551, float %1552, float %1551, float %1552)  ; Dot2(ax,ay,bx,by)
  %1588 = call float @dx.op.dot2.f32(i32 54, float %1551, float %1552, float %1585, float %1586)  ; Dot2(ax,ay,bx,by)
  %1589 = fmul fast float %1588, 2.000000e+00
  %1590 = call float @dx.op.dot2.f32(i32 54, float %1585, float %1586, float %1585, float %1586)  ; Dot2(ax,ay,bx,by)
  %1591 = fmul fast float %1583, %1583
  %1592 = fsub fast float %1590, %1591
  %1593 = fmul fast float %1589, %1589
  %1594 = fmul fast float %1587, 4.000000e+00
  %1595 = fmul fast float %1594, %1592
  %1596 = fsub fast float %1593, %1595
  %1597 = fcmp fast ogt float %1596, 0.000000e+00
  br i1 %1597, label %1598, label %1613, !dx.controlflow.hints !60

; <label>:1598                                    ; preds = %1564
  %1599 = fcmp fast ogt float %1589, 0.000000e+00
  %1600 = call float @dx.op.unary.f32(i32 24, float %1596)  ; Sqrt(value)
  %1601 = fsub fast float -0.000000e+00, %1600
  %1602 = select i1 %1599, float %1600, float %1601
  %1603 = fadd fast float %1602, %1589
  %1604 = fmul float %1603, -5.000000e-01
  %1605 = fdiv fast float %1604, %1587
  %1606 = call float @dx.op.binary.f32(i32 35, float %1605, float 0.000000e+00)  ; FMax(a,b)
  %1607 = call float @dx.op.binary.f32(i32 36, float %1550, float %1606)  ; FMin(a,b)
  %1608 = fdiv fast float %1592, %1604
  %1609 = call float @dx.op.binary.f32(i32 35, float %1608, float 0.000000e+00)  ; FMax(a,b)
  %1610 = call float @dx.op.binary.f32(i32 36, float %1550, float %1609)  ; FMin(a,b)
  %1611 = call float @dx.op.binary.f32(i32 36, float %1607, float %1610)  ; FMin(a,b)
  %1612 = call float @dx.op.binary.f32(i32 35, float %1607, float %1610)  ; FMax(a,b)
  br label %1613

; <label>:1613                                    ; preds = %1598, %1564
  %1614 = phi float [ %1612, %1598 ], [ -1.000000e+00, %1564 ]
  %1615 = phi float [ %1611, %1598 ], [ -1.000000e+00, %1564 ]
  %1616 = phi i1 [ true, %1598 ], [ false, %1564 ]
  %1617 = and i1 %1584, %1616
  br i1 %1617, label %1618, label %1620, !dx.controlflow.hints !61

; <label>:1618                                    ; preds = %1613
  %1619 = fcmp fast oeq float %1615, %1614
  br i1 %1619, label %1923, label %1621, !dx.controlflow.hints !62

; <label>:1620                                    ; preds = %1613
  br i1 %1584, label %1923, label %1621, !dx.controlflow.hints !63

; <label>:1621                                    ; preds = %1620, %1618
  %1622 = phi float [ %1550, %1620 ], [ %1614, %1618 ]
  %1623 = phi float [ 0.000000e+00, %1620 ], [ %1615, %1618 ]
  %1624 = icmp ne i32 %1572, 0
  %1625 = fmul fast float %1622, %1553
  %1626 = fadd fast float %1625, %1566
  %1627 = fmul fast float %1626, %1622
  %1628 = select i1 %1624, float 0.000000e+00, float %1627
  %1629 = fcmp fast oeq float %1553, 0.000000e+00
  %1630 = fdiv fast float %1571, %1553
  %1631 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1630)  ; FMax(a,b)
  %1632 = select i1 %1629, float %1622, float %1631
  %1633 = call float @dx.op.binary.f32(i32 36, float %1622, float %1632)  ; FMin(a,b)
  %1634 = fcmp fast ogt float %1553, 0.000000e+00
  %1635 = fcmp fast olt float %1571, 0.000000e+00
  br i1 %1634, label %1636, label %1693, !dx.controlflow.hints !64

; <label>:1636                                    ; preds = %1621
  %1637 = icmp eq i32 %1572, 0
  br i1 %1635, label %1638, label %1682, !dx.controlflow.hints !65

; <label>:1638                                    ; preds = %1636
  %1639 = select i1 %1637, float %1622, float 0.000000e+00
  %1640 = fsub fast float -0.000000e+00, %1639
  %1641 = call float @dx.op.unary.f32(i32 6, float %1640)  ; FAbs(value)
  %1642 = fmul fast float %1639, %1553
  %1643 = fadd fast float %1642, %1566
  %1644 = fmul fast float %1641, %1643
  %1645 = fsub fast float %1628, %1644
  %1646 = fsub fast float %1622, %1641
  %1647 = select i1 %1637, float %1646, float 0.000000e+00
  %1648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1649 = extractvalue %dx.types.CBufRet.f32 %1648, 0
  %1650 = extractvalue %dx.types.CBufRet.f32 %1648, 1
  %1651 = extractvalue %dx.types.CBufRet.f32 %1648, 2
  %1652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1653 = extractvalue %dx.types.CBufRet.f32 %1652, 0
  %1654 = extractvalue %dx.types.CBufRet.f32 %1652, 1
  %1655 = extractvalue %dx.types.CBufRet.f32 %1652, 2
  %1656 = extractvalue %dx.types.CBufRet.f32 %1652, 3
  %1657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1658 = extractvalue %dx.types.CBufRet.f32 %1657, 3
  %1659 = call float @dx.op.binary.f32(i32 36, float %1645, float %1658)  ; FMin(a,b)
  %1660 = fmul fast float %1656, %1647
  %1661 = call float @dx.op.unary.f32(i32 7, float %1660)  ; Saturate(value)
  %1662 = fsub fast float %1653, %1649
  %1663 = fsub fast float %1654, %1650
  %1664 = fsub fast float %1655, %1651
  %1665 = fmul fast float %1661, %1662
  %1666 = fmul fast float %1661, %1663
  %1667 = fmul fast float %1661, %1664
  %1668 = fadd fast float %1665, %1649
  %1669 = fadd fast float %1666, %1650
  %1670 = fadd fast float %1667, %1651
  %1671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1672 = extractvalue %dx.types.CBufRet.f32 %1671, 0
  %1673 = extractvalue %dx.types.CBufRet.f32 %1671, 1
  %1674 = fadd fast float %1673, %1672
  %1675 = call float @dx.op.unary.f32(i32 7, float %1674)  ; Saturate(value)
  %1676 = extractvalue %dx.types.CBufRet.f32 %1671, 2
  %1677 = extractvalue %dx.types.CBufRet.f32 %1671, 3
  %1678 = fadd fast float %1677, %1676
  %1679 = call float @dx.op.unary.f32(i32 7, float %1678)  ; Saturate(value)
  %1680 = fmul fast float %1675, %1659
  %1681 = fmul fast float %1680, %1679
  br label %1923

; <label>:1682                                    ; preds = %1636
  br i1 %1637, label %1683, label %1704, !dx.controlflow.hints !66

; <label>:1683                                    ; preds = %1682
  %1684 = call float @dx.op.binary.f32(i32 36, float %1633, float %1623)  ; FMin(a,b)
  %1685 = fsub fast float %1633, %1684
  %1686 = fsub fast float %1685, %1622
  %1687 = call float @dx.op.unary.f32(i32 6, float %1686)  ; FAbs(value)
  %1688 = fadd fast float %1685, %1622
  %1689 = fmul fast float %1688, %1553
  %1690 = fadd fast float %1689, %1566
  %1691 = fmul fast float %1690, %1687
  %1692 = fsub fast float %1628, %1691
  br label %1704

; <label>:1693                                    ; preds = %1621
  br i1 %1635, label %1694, label %1704, !dx.controlflow.hints !67

; <label>:1694                                    ; preds = %1693
  %1695 = call float @dx.op.binary.f32(i32 35, float %1623, float %1633)  ; FMax(a,b)
  %1696 = icmp eq i32 %1572, 0
  %1697 = select i1 %1696, float %1633, float 0.000000e+00
  %1698 = fsub fast float -0.000000e+00, %1697
  %1699 = call float @dx.op.unary.f32(i32 6, float %1698)  ; FAbs(value)
  %1700 = fmul fast float %1697, %1553
  %1701 = fadd fast float %1700, %1566
  %1702 = fmul fast float %1699, %1701
  %1703 = fsub fast float %1628, %1702
  br label %1704

; <label>:1704                                    ; preds = %1694, %1693, %1683, %1682
  %1705 = phi float [ %1623, %1682 ], [ %1623, %1683 ], [ %1695, %1694 ], [ %1623, %1693 ]
  %1706 = phi float [ 0.000000e+00, %1682 ], [ %1687, %1683 ], [ %1699, %1694 ], [ 0.000000e+00, %1693 ]
  %1707 = phi float [ %1628, %1682 ], [ %1692, %1683 ], [ %1703, %1694 ], [ %1628, %1693 ]
  %1708 = phi float [ %1633, %1682 ], [ %1633, %1683 ], [ %1622, %1694 ], [ %1622, %1693 ]
  %1709 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 0
  store float -1.000000e+00, float* %1709, align 4, !tbaa !68, !noalias !72
  %1710 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 1
  store float -1.000000e+00, float* %1710, align 4, !tbaa !68, !noalias !72
  %1711 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 2
  store float -1.000000e+00, float* %1711, align 4, !tbaa !68, !noalias !72
  %1712 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 0
  store float -1.000000e+00, float* %1712, align 4, !tbaa !68, !noalias !72
  %1713 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 1
  store float -1.000000e+00, float* %1713, align 4, !tbaa !68, !noalias !72
  %1714 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 2
  store float -1.000000e+00, float* %1714, align 4, !tbaa !68, !noalias !72
  %1715 = icmp sgt i32 %1574, 0
  br i1 %1715, label %1716, label %1777

; <label>:1716                                    ; preds = %1704
  br label %1717

; <label>:1717                                    ; preds = %1766, %1716
  %1718 = phi i32 [ %1767, %1766 ], [ 0, %1716 ]
  %1719 = phi i32 [ %1768, %1766 ], [ 0, %1716 ]
  %1720 = add nuw i32 %1719, 171
  %1721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %1720)  ; CBufferLoadLegacy(handle,regIndex)
  %1722 = extractvalue %dx.types.CBufRet.f32 %1721, 0
  %1723 = extractvalue %dx.types.CBufRet.f32 %1721, 1
  %1724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1725 = extractvalue %dx.types.CBufRet.f32 %1724, 0
  %1726 = extractvalue %dx.types.CBufRet.f32 %1724, 1
  %1727 = fsub fast float %1722, %1725
  %1728 = fsub fast float %1723, %1726
  %1729 = extractvalue %dx.types.CBufRet.f32 %1721, 2
  %1730 = fsub fast float -0.000000e+00, %1727
  %1731 = fsub fast float -0.000000e+00, %1728
  %1732 = call float @dx.op.dot2.f32(i32 54, float %1551, float %1552, float %1730, float %1731)  ; Dot2(ax,ay,bx,by)
  %1733 = fmul fast float %1732, 2.000000e+00
  %1734 = call float @dx.op.dot2.f32(i32 54, float %1730, float %1731, float %1730, float %1731)  ; Dot2(ax,ay,bx,by)
  %1735 = fmul fast float %1729, %1729
  %1736 = fsub fast float %1734, %1735
  %1737 = fmul fast float %1733, %1733
  %1738 = fmul fast float %1594, %1736
  %1739 = fsub fast float %1737, %1738
  %1740 = fcmp fast ogt float %1739, 0.000000e+00
  br i1 %1740, label %1741, label %1756, !dx.controlflow.hints !60

; <label>:1741                                    ; preds = %1717
  %1742 = fcmp fast ogt float %1733, 0.000000e+00
  %1743 = call float @dx.op.unary.f32(i32 24, float %1739)  ; Sqrt(value)
  %1744 = fsub fast float -0.000000e+00, %1743
  %1745 = select i1 %1742, float %1743, float %1744
  %1746 = fadd fast float %1745, %1733
  %1747 = fmul float %1746, -5.000000e-01
  %1748 = fdiv fast float %1747, %1587
  %1749 = call float @dx.op.binary.f32(i32 35, float %1748, float 0.000000e+00)  ; FMax(a,b)
  %1750 = call float @dx.op.binary.f32(i32 36, float %1622, float %1749)  ; FMin(a,b)
  %1751 = fdiv fast float %1736, %1747
  %1752 = call float @dx.op.binary.f32(i32 35, float %1751, float 0.000000e+00)  ; FMax(a,b)
  %1753 = call float @dx.op.binary.f32(i32 36, float %1622, float %1752)  ; FMin(a,b)
  %1754 = call float @dx.op.binary.f32(i32 36, float %1750, float %1753)  ; FMin(a,b)
  %1755 = call float @dx.op.binary.f32(i32 35, float %1750, float %1753)  ; FMax(a,b)
  br label %1756

; <label>:1756                                    ; preds = %1741, %1717
  %1757 = phi float [ %1755, %1741 ], [ -1.000000e+00, %1717 ]
  %1758 = phi float [ %1754, %1741 ], [ -1.000000e+00, %1717 ]
  %1759 = phi i1 [ true, %1741 ], [ false, %1717 ]
  br i1 %1759, label %1760, label %1766, !dx.controlflow.hints !83

; <label>:1760                                    ; preds = %1756
  %1761 = call float @dx.op.binary.f32(i32 35, float %1705, float %1758)  ; FMax(a,b)
  %1762 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 %1719
  store float %1761, float* %1762, align 4, !tbaa !68, !noalias !72
  %1763 = call float @dx.op.binary.f32(i32 35, float %1705, float %1757)  ; FMax(a,b)
  %1764 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 %1719
  store float %1763, float* %1764, align 4, !tbaa !68, !noalias !72
  %1765 = add nsw i32 %1718, 1
  br label %1766

; <label>:1766                                    ; preds = %1760, %1756
  %1767 = phi i32 [ %1765, %1760 ], [ %1718, %1756 ]
  %1768 = add nuw nsw i32 %1719, 1
  %1769 = icmp eq i32 %1768, %1574
  br i1 %1769, label %1770, label %1717

; <label>:1770                                    ; preds = %1766
  %1771 = load float, float* %1711, align 4, !tbaa !68, !alias.scope !84, !noalias !87
  %1772 = load float, float* %1710, align 4, !tbaa !68, !alias.scope !90, !noalias !91
  %1773 = load float, float* %1709, align 4, !tbaa !68, !alias.scope !92, !noalias !93
  %1774 = load float, float* %1714, align 4, !tbaa !68, !alias.scope !94, !noalias !97
  %1775 = load float, float* %1713, align 4, !tbaa !68, !alias.scope !100, !noalias !101
  %1776 = load float, float* %1712, align 4, !tbaa !68, !alias.scope !102, !noalias !103
  br label %1777

; <label>:1777                                    ; preds = %1770, %1704
  %1778 = phi float [ -1.000000e+00, %1704 ], [ %1776, %1770 ]
  %1779 = phi float [ -1.000000e+00, %1704 ], [ %1775, %1770 ]
  %1780 = phi float [ -1.000000e+00, %1704 ], [ %1774, %1770 ]
  %1781 = phi float [ -1.000000e+00, %1704 ], [ %1773, %1770 ]
  %1782 = phi float [ -1.000000e+00, %1704 ], [ %1772, %1770 ]
  %1783 = phi float [ -1.000000e+00, %1704 ], [ %1771, %1770 ]
  %1784 = phi i32 [ 0, %1704 ], [ %1767, %1770 ]
  %1785 = call float @dx.op.binary.f32(i32 36, float %1782, float %1783)  ; FMin(a,b)
  %1786 = call float @dx.op.binary.f32(i32 36, float %1781, float %1785)  ; FMin(a,b)
  %1787 = call float @dx.op.binary.f32(i32 35, float %1781, float %1782)  ; FMax(a,b)
  %1788 = call float @dx.op.binary.f32(i32 36, float %1787, float %1783)  ; FMin(a,b)
  %1789 = call float @dx.op.binary.f32(i32 36, float %1781, float %1782)  ; FMin(a,b)
  %1790 = call float @dx.op.binary.f32(i32 35, float %1789, float %1788)  ; FMax(a,b)
  %1791 = call float @dx.op.binary.f32(i32 35, float %1782, float %1783)  ; FMax(a,b)
  %1792 = call float @dx.op.binary.f32(i32 35, float %1781, float %1791)  ; FMax(a,b)
  store float %1786, float* %1709, align 4, !tbaa !68, !alias.scope !92, !noalias !93
  store float %1790, float* %1710, align 4, !tbaa !68, !alias.scope !90, !noalias !91
  store float %1792, float* %1711, align 4, !tbaa !68, !alias.scope !84, !noalias !87
  %1793 = call float @dx.op.binary.f32(i32 36, float %1779, float %1780)  ; FMin(a,b)
  %1794 = call float @dx.op.binary.f32(i32 36, float %1778, float %1793)  ; FMin(a,b)
  %1795 = call float @dx.op.binary.f32(i32 35, float %1778, float %1779)  ; FMax(a,b)
  %1796 = call float @dx.op.binary.f32(i32 36, float %1795, float %1780)  ; FMin(a,b)
  %1797 = call float @dx.op.binary.f32(i32 36, float %1778, float %1779)  ; FMin(a,b)
  %1798 = call float @dx.op.binary.f32(i32 35, float %1797, float %1796)  ; FMax(a,b)
  %1799 = call float @dx.op.binary.f32(i32 35, float %1779, float %1780)  ; FMax(a,b)
  %1800 = call float @dx.op.binary.f32(i32 35, float %1778, float %1799)  ; FMax(a,b)
  store float %1794, float* %1712, align 4, !tbaa !68, !alias.scope !102, !noalias !103
  store float %1798, float* %1713, align 4, !tbaa !68, !alias.scope !100, !noalias !101
  store float %1800, float* %1714, align 4, !tbaa !68, !alias.scope !94, !noalias !97
  %1801 = sub nsw i32 3, %1784
  %1802 = icmp sgt i32 %1801, 2
  br i1 %1802, label %1803, label %1841, !dx.controlflow.hints !104

; <label>:1803                                    ; preds = %1777
  %1804 = icmp eq i32 %1572, 0
  %1805 = fsub fast float %1622, %1706
  %1806 = select i1 %1804, float %1805, float %1706
  %1807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1808 = extractvalue %dx.types.CBufRet.f32 %1807, 0
  %1809 = extractvalue %dx.types.CBufRet.f32 %1807, 1
  %1810 = extractvalue %dx.types.CBufRet.f32 %1807, 2
  %1811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1812 = extractvalue %dx.types.CBufRet.f32 %1811, 0
  %1813 = extractvalue %dx.types.CBufRet.f32 %1811, 1
  %1814 = extractvalue %dx.types.CBufRet.f32 %1811, 2
  %1815 = extractvalue %dx.types.CBufRet.f32 %1811, 3
  %1816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1817 = extractvalue %dx.types.CBufRet.f32 %1816, 3
  %1818 = call float @dx.op.binary.f32(i32 36, float %1707, float %1817)  ; FMin(a,b)
  %1819 = fmul fast float %1815, %1806
  %1820 = call float @dx.op.unary.f32(i32 7, float %1819)  ; Saturate(value)
  %1821 = fsub fast float %1812, %1808
  %1822 = fsub fast float %1813, %1809
  %1823 = fsub fast float %1814, %1810
  %1824 = fmul fast float %1820, %1821
  %1825 = fmul fast float %1820, %1822
  %1826 = fmul fast float %1820, %1823
  %1827 = fadd fast float %1824, %1808
  %1828 = fadd fast float %1825, %1809
  %1829 = fadd fast float %1826, %1810
  %1830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1831 = extractvalue %dx.types.CBufRet.f32 %1830, 0
  %1832 = extractvalue %dx.types.CBufRet.f32 %1830, 1
  %1833 = fadd fast float %1832, %1831
  %1834 = call float @dx.op.unary.f32(i32 7, float %1833)  ; Saturate(value)
  %1835 = extractvalue %dx.types.CBufRet.f32 %1830, 2
  %1836 = extractvalue %dx.types.CBufRet.f32 %1830, 3
  %1837 = fadd fast float %1836, %1835
  %1838 = call float @dx.op.unary.f32(i32 7, float %1837)  ; Saturate(value)
  %1839 = fmul fast float %1834, %1818
  %1840 = fmul fast float %1839, %1838
  br label %1923

; <label>:1841                                    ; preds = %1777
  %1842 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 %1801
  %1843 = load float, float* %1842, align 4, !tbaa !68, !noalias !72
  %1844 = fcmp fast olt float %1843, %1708
  %1845 = icmp sgt i32 %1784, 0
  %1846 = and i1 %1845, %1844
  br i1 %1846, label %1847, label %1884

; <label>:1847                                    ; preds = %1841
  br label %1848

; <label>:1848                                    ; preds = %1877, %1847
  %1849 = phi float [ %1878, %1877 ], [ %1706, %1847 ]
  %1850 = phi float [ %1879, %1877 ], [ %1707, %1847 ]
  %1851 = phi float [ %1859, %1877 ], [ %1843, %1847 ]
  %1852 = phi i32 [ %1856, %1877 ], [ %1801, %1847 ]
  %1853 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 %1852
  %1854 = load float, float* %1853, align 4, !tbaa !68, !noalias !72
  %1855 = icmp slt i32 %1852, 2
  %1856 = add nsw i32 %1852, 1
  %1857 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 %1856
  %1858 = load float, float* %1857, align 4, !tbaa !68, !noalias !72
  %1859 = select i1 %1855, float %1858, float %1622
  %1860 = call float @dx.op.binary.f32(i32 36, float %1859, float %1854)  ; FMin(a,b)
  %1861 = call float @dx.op.binary.f32(i32 36, float %1708, float %1860)  ; FMin(a,b)
  %1862 = icmp eq i32 %1572, 0
  %1863 = fadd fast float %1861, %1851
  %1864 = fmul fast float %1863, %1553
  %1865 = fadd fast float %1864, %1566
  br i1 %1862, label %1871, label %1866, !dx.controlflow.hints !105

; <label>:1866                                    ; preds = %1848
  %1867 = fsub fast float %1861, %1851
  %1868 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1867)  ; FMax(a,b)
  %1869 = fmul fast float %1868, %1865
  %1870 = fadd fast float %1869, %1850
  br label %1877

; <label>:1871                                    ; preds = %1848
  %1872 = fsub fast float %1851, %1861
  %1873 = call float @dx.op.unary.f32(i32 6, float %1872)  ; FAbs(value)
  %1874 = fadd fast float %1873, %1849
  %1875 = fmul fast float %1873, %1865
  %1876 = fsub fast float %1850, %1875
  br label %1877

; <label>:1877                                    ; preds = %1871, %1866
  %1878 = phi float [ %1868, %1866 ], [ %1874, %1871 ]
  %1879 = phi float [ %1870, %1866 ], [ %1876, %1871 ]
  %1880 = fcmp fast olt float %1859, %1708
  %1881 = icmp slt i32 %1856, 3
  %1882 = and i1 %1881, %1880
  br i1 %1882, label %1848, label %1883

; <label>:1883                                    ; preds = %1877
  br label %1884

; <label>:1884                                    ; preds = %1883, %1841
  %1885 = phi float [ %1706, %1841 ], [ %1878, %1883 ]
  %1886 = phi float [ %1707, %1841 ], [ %1879, %1883 ]
  %1887 = fsub fast float %1622, %1885
  %1888 = select i1 %1624, float %1885, float %1887
  %1889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1890 = extractvalue %dx.types.CBufRet.f32 %1889, 0
  %1891 = extractvalue %dx.types.CBufRet.f32 %1889, 1
  %1892 = extractvalue %dx.types.CBufRet.f32 %1889, 2
  %1893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1894 = extractvalue %dx.types.CBufRet.f32 %1893, 0
  %1895 = extractvalue %dx.types.CBufRet.f32 %1893, 1
  %1896 = extractvalue %dx.types.CBufRet.f32 %1893, 2
  %1897 = extractvalue %dx.types.CBufRet.f32 %1893, 3
  %1898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1899 = extractvalue %dx.types.CBufRet.f32 %1898, 3
  %1900 = call float @dx.op.binary.f32(i32 36, float %1886, float %1899)  ; FMin(a,b)
  %1901 = fmul fast float %1897, %1888
  %1902 = call float @dx.op.unary.f32(i32 7, float %1901)  ; Saturate(value)
  %1903 = fsub fast float %1894, %1890
  %1904 = fsub fast float %1895, %1891
  %1905 = fsub fast float %1896, %1892
  %1906 = fmul fast float %1902, %1903
  %1907 = fmul fast float %1902, %1904
  %1908 = fmul fast float %1902, %1905
  %1909 = fadd fast float %1906, %1890
  %1910 = fadd fast float %1907, %1891
  %1911 = fadd fast float %1908, %1892
  %1912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1913 = extractvalue %dx.types.CBufRet.f32 %1912, 0
  %1914 = extractvalue %dx.types.CBufRet.f32 %1912, 1
  %1915 = fadd fast float %1914, %1913
  %1916 = call float @dx.op.unary.f32(i32 7, float %1915)  ; Saturate(value)
  %1917 = extractvalue %dx.types.CBufRet.f32 %1912, 2
  %1918 = extractvalue %dx.types.CBufRet.f32 %1912, 3
  %1919 = fadd fast float %1918, %1917
  %1920 = call float @dx.op.unary.f32(i32 7, float %1919)  ; Saturate(value)
  %1921 = fmul fast float %1916, %1900
  %1922 = fmul fast float %1921, %1920
  br label %1923

; <label>:1923                                    ; preds = %1884, %1803, %1638, %1620, %1618
  %1924 = phi float [ %1647, %1638 ], [ %1806, %1803 ], [ %1888, %1884 ], [ 0.000000e+00, %1618 ], [ 0.000000e+00, %1620 ]
  %1925 = phi float [ %1681, %1638 ], [ %1840, %1803 ], [ %1922, %1884 ], [ 0.000000e+00, %1618 ], [ 0.000000e+00, %1620 ]
  %1926 = phi float [ %1668, %1638 ], [ %1827, %1803 ], [ %1909, %1884 ], [ 0.000000e+00, %1618 ], [ 0.000000e+00, %1620 ]
  %1927 = phi float [ %1669, %1638 ], [ %1828, %1803 ], [ %1910, %1884 ], [ 0.000000e+00, %1618 ], [ 0.000000e+00, %1620 ]
  %1928 = phi float [ %1670, %1638 ], [ %1829, %1803 ], [ %1911, %1884 ], [ 0.000000e+00, %1618 ], [ 0.000000e+00, %1620 ]
  %1929 = fmul fast float %1561, %1925
  %1930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1931 = extractvalue %dx.types.CBufRet.f32 %1930, 2
  %1932 = fsub fast float %1568, %1931
  %1933 = fcmp fast olt float %1929, -2.000000e+01
  %1934 = call float @dx.op.unary.f32(i32 21, float %1929)  ; Exp(value)
  %1935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1936 = extractvalue %dx.types.CBufRet.f32 %1935, 2
  %1937 = extractvalue %dx.types.CBufRet.f32 %1935, 3
  %1938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1939 = extractvalue %dx.types.CBufRet.f32 %1938, 2
  %1940 = fmul fast float %1937, %1932
  %1941 = call float @dx.op.unary.f32(i32 7, float %1940)  ; Saturate(value)
  %1942 = fsub fast float 1.000000e+00, %1941
  %1943 = fmul fast float %1553, 5.000000e-01
  %1944 = fadd fast float %1943, 5.000000e-01
  %1945 = call float @dx.op.unary.f32(i32 7, float %1944)  ; Saturate(value)
  %1946 = fsub fast float 1.000000e+00, %1945
  %1947 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1942)  ; FMax(a,b)
  %1948 = fdiv fast float %1946, %1947
  %1949 = fsub fast float %1932, %1519
  %1950 = call float @dx.op.unary.f32(i32 6, float %1949)  ; FAbs(value)
  %1951 = fmul fast float %1950, %1936
  %1952 = call float @dx.op.unary.f32(i32 7, float %1948)  ; Saturate(value)
  %1953 = fsub fast float 1.000000e+00, %1951
  %1954 = fmul fast float %1953, %1952
  %1955 = fadd fast float %1954, %1951
  %1956 = fmul fast float %1939, %1932
  %1957 = call float @dx.op.unary.f32(i32 7, float %1956)  ; Saturate(value)
  %1958 = fsub fast float 1.000000e+00, %1955
  %1959 = fmul fast float %1958, %1957
  %1960 = fadd fast float %1959, %1955
  %1961 = call float @dx.op.unary.f32(i32 7, float %1960)  ; Saturate(value)
  %1962 = fadd fast float %1934, -1.000000e+00
  %1963 = select i1 %1933, float -1.000000e+00, float %1962
  %1964 = fmul fast float %1961, %1963
  %1965 = fadd fast float %1964, 1.000000e+00
  %1966 = fsub fast float -0.000000e+00, %1964
  %1967 = fmul fast float %1926, %1966
  %1968 = fmul fast float %1927, %1966
  %1969 = fmul fast float %1928, %1966
  br label %1970

; <label>:1970                                    ; preds = %1923, %1472
  %1971 = phi float [ %1924, %1923 ], [ 0.000000e+00, %1472 ]
  %1972 = phi float [ %1965, %1923 ], [ 1.000000e+00, %1472 ]
  %1973 = phi float [ %1967, %1923 ], [ 0.000000e+00, %1472 ]
  %1974 = phi float [ %1968, %1923 ], [ 0.000000e+00, %1472 ]
  %1975 = phi float [ %1969, %1923 ], [ 0.000000e+00, %1472 ]
  %1976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1977 = extractvalue %dx.types.CBufRet.f32 %1976, 1
  %1978 = fsub fast float 1.000000e+00, %1972
  %1979 = fmul fast float %1978, %1554
  %1980 = fmul fast float %1979, %1977
  %1981 = fsub fast float %1554, %1980
  br i1 %1547, label %1982, label %2011, !dx.controlflow.hints !106

; <label>:1982                                    ; preds = %1970
  %1983 = fmul fast float %1555, %1544
  %1984 = fadd fast float %1983, %1545
  %1985 = call float @dx.op.unary.f32(i32 7, float %1984)  ; Saturate(value)
  %1986 = fmul fast float %1526, %1981
  %1987 = fsub fast float -0.000000e+00, %1986
  %1988 = fmul fast float %1527, %1981
  %1989 = fsub fast float -0.000000e+00, %1988
  %1990 = call float @dx.op.unary.f32(i32 21, float %1987)  ; Exp(value)
  %1991 = call float @dx.op.unary.f32(i32 21, float %1989)  ; Exp(value)
  %1992 = call float @dx.op.binary.f32(i32 35, float %1534, float %1990)  ; FMax(a,b)
  %1993 = call float @dx.op.binary.f32(i32 35, float %1534, float %1991)  ; FMax(a,b)
  %1994 = fsub fast float %1993, %1992
  %1995 = fmul fast float %1994, %1985
  %1996 = fadd fast float %1995, %1992
  %1997 = call float @dx.op.unary.f32(i32 7, float %1996)  ; Saturate(value)
  %1998 = fsub fast float %1531, %1536
  %1999 = fsub fast float %1532, %1537
  %2000 = fsub fast float %1533, %1538
  %2001 = fmul fast float %1985, %1998
  %2002 = fmul fast float %1985, %1999
  %2003 = fmul fast float %1985, %2000
  %2004 = fadd fast float %2001, %1536
  %2005 = fadd fast float %2002, %1537
  %2006 = fadd fast float %2003, %1538
  %2007 = fsub fast float 1.000000e+00, %1997
  %2008 = fmul fast float %2007, %2004
  %2009 = fmul fast float %2007, %2005
  %2010 = fmul fast float %2007, %2006
  br label %2070

; <label>:2011                                    ; preds = %1970
  %2012 = fmul fast float %1981, %1543
  %2013 = call float @dx.op.unary.f32(i32 7, float %2012)  ; Saturate(value)
  %2014 = fsub fast float 2.000000e+00, %2013
  %2015 = fmul fast float %2013, 9.921875e-01
  %2016 = fmul fast float %2015, %2014
  %2017 = fadd fast float %2016, 3.906250e-03
  %2018 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %16, float %2017, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2019 = extractvalue %dx.types.ResRet.f32 %2018, 0
  %2020 = fsub fast float %2013, %2019
  %2021 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2020)  ; FMax(a,b)
  %2022 = fmul fast float %1529, %1519
  %2023 = call float @dx.op.unary.f32(i32 6, float %2022)  ; FAbs(value)
  %2024 = fcmp fast ogt float %2023, 0x3EB0C6F7A0000000
  br i1 %2024, label %2025, label %2031, !dx.controlflow.hints !107

; <label>:2025                                    ; preds = %2011
  %2026 = fmul fast float %2022, 0xBFF7154760000000
  %2027 = call float @dx.op.unary.f32(i32 21, float %2026)  ; Exp(value)
  %2028 = fsub fast float 1.000000e+00, %2027
  %2029 = fdiv fast float %2028, %2022
  %2030 = fmul fast float %2029, %1539
  br label %2031

; <label>:2031                                    ; preds = %2025, %2011
  %2032 = phi float [ %2030, %2025 ], [ %1539, %2011 ]
  %2033 = fadd fast float %2032, %1541
  %2034 = fmul fast float %2033, %2021
  %2035 = fmul fast float %1526, %2034
  %2036 = fsub fast float -0.000000e+00, %2035
  %2037 = fmul fast float %1527, %2034
  %2038 = fsub fast float -0.000000e+00, %2037
  %2039 = fmul fast float %1528, %2034
  %2040 = fsub fast float -0.000000e+00, %2039
  %2041 = call float @dx.op.unary.f32(i32 21, float %2036)  ; Exp(value)
  %2042 = call float @dx.op.unary.f32(i32 21, float %2038)  ; Exp(value)
  %2043 = call float @dx.op.unary.f32(i32 21, float %2040)  ; Exp(value)
  %2044 = fmul fast float %1555, %1555
  %2045 = fadd fast float %2044, 1.000000e+00
  %2046 = fmul fast float %2045, 0x3FAE8EC8A0000000
  %2047 = fmul fast float %2046, %1536
  %2048 = fmul fast float %2046, %1537
  %2049 = fmul fast float %2046, %1538
  %2050 = fmul fast float %1555, %1534
  %2051 = fsub fast float 1.000000e+00, %2050
  %2052 = fmul fast float %1534, %1534
  %2053 = fsub fast float 1.000000e+00, %2052
  %2054 = fmul fast float %2053, 0x3FB45F3060000000
  %2055 = fmul fast float %2051, %2051
  %2056 = fdiv fast float 1.000000e+00, %2055
  %2057 = fmul fast float %2054, %2056
  %2058 = fmul fast float %2057, %1531
  %2059 = fmul fast float %2057, %1532
  %2060 = fmul fast float %2057, %1533
  %2061 = fadd fast float %2058, %2047
  %2062 = fadd fast float %2059, %2048
  %2063 = fadd fast float %2060, %2049
  %2064 = fsub fast float 1.000000e+00, %2041
  %2065 = fsub fast float 1.000000e+00, %2042
  %2066 = fsub fast float 1.000000e+00, %2043
  %2067 = fmul fast float %2061, %2064
  %2068 = fmul fast float %2062, %2065
  %2069 = fmul fast float %2063, %2066
  br label %2070

; <label>:2070                                    ; preds = %2031, %1982
  %2071 = phi float [ %2008, %1982 ], [ %2067, %2031 ]
  %2072 = phi float [ %2009, %1982 ], [ %2068, %2031 ]
  %2073 = phi float [ %2010, %1982 ], [ %2069, %2031 ]
  %2074 = phi float [ %1997, %1982 ], [ %2041, %2031 ]
  %2075 = phi float [ %1997, %1982 ], [ %2042, %2031 ]
  %2076 = phi float [ %1997, %1982 ], [ %2043, %2031 ]
  br i1 %1563, label %2077, label %2275, !dx.controlflow.hints !108

; <label>:2077                                    ; preds = %2070
  %2078 = extractvalue %dx.types.CBufRet.f32 %1976, 0
  %2079 = fmul fast float %2078, %1978
  %2080 = fsub fast float %1973, %2071
  %2081 = fsub fast float %1974, %2072
  %2082 = fsub fast float %1975, %2073
  %2083 = fmul fast float %2079, %2080
  %2084 = fmul fast float %2079, %2081
  %2085 = fmul fast float %2079, %2082
  %2086 = fadd fast float %2083, %2071
  %2087 = fadd fast float %2084, %2072
  %2088 = fadd fast float %2085, %2073
  %2089 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2074)  ; FMax(a,b)
  %2090 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2075)  ; FMax(a,b)
  %2091 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2076)  ; FMax(a,b)
  %2092 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1972)  ; FMax(a,b)
  %2093 = call float @dx.op.binary.f32(i32 35, float %1971, float %1981)  ; FMax(a,b)
  %2094 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2093)  ; FMax(a,b)
  %2095 = fdiv fast float %1971, %2094
  %2096 = call float @dx.op.unary.f32(i32 7, float %2095)  ; Saturate(value)
  %2097 = fdiv fast float %1981, %2094
  %2098 = call float @dx.op.unary.f32(i32 7, float %2097)  ; Saturate(value)
  %2099 = fcmp fast une float %2092, 1.000000e+00
  br i1 %2099, label %2100, label %2113, !dx.controlflow.hints !109

; <label>:2100                                    ; preds = %2077
  %2101 = call float @dx.op.unary.f32(i32 23, float %2092)  ; Log(value)
  %2102 = fmul fast float %2101, 0x3FE62E4300000000
  %2103 = fmul fast float %1973, %2102
  %2104 = fsub fast float -0.000000e+00, %2103
  %2105 = fmul fast float %1974, %2102
  %2106 = fsub fast float -0.000000e+00, %2105
  %2107 = fmul fast float %1975, %2102
  %2108 = fsub fast float -0.000000e+00, %2107
  %2109 = fsub fast float 1.000000e+00, %2092
  %2110 = fdiv fast float %2104, %2109
  %2111 = fdiv fast float %2106, %2109
  %2112 = fdiv fast float %2108, %2109
  br label %2113

; <label>:2113                                    ; preds = %2100, %2077
  %2114 = phi float [ %2110, %2100 ], [ %1973, %2077 ]
  %2115 = phi float [ %2111, %2100 ], [ %1974, %2077 ]
  %2116 = phi float [ %2112, %2100 ], [ %1975, %2077 ]
  %2117 = phi float [ %2102, %2100 ], [ 0.000000e+00, %2077 ]
  %2118 = fcmp fast une float %2089, 1.000000e+00
  br i1 %2118, label %2119, label %2126, !dx.controlflow.hints !110

; <label>:2119                                    ; preds = %2113
  %2120 = call float @dx.op.unary.f32(i32 23, float %2089)  ; Log(value)
  %2121 = fmul fast float %2120, 0x3FE62E4300000000
  %2122 = fmul fast float %2086, %2121
  %2123 = fsub fast float -0.000000e+00, %2122
  %2124 = fsub fast float 1.000000e+00, %2089
  %2125 = fdiv fast float %2123, %2124
  br label %2126

; <label>:2126                                    ; preds = %2119, %2113
  %2127 = phi float [ %2125, %2119 ], [ %2086, %2113 ]
  %2128 = phi float [ %2121, %2119 ], [ 0.000000e+00, %2113 ]
  %2129 = fcmp fast une float %2090, 1.000000e+00
  br i1 %2129, label %2130, label %2137, !dx.controlflow.hints !110

; <label>:2130                                    ; preds = %2126
  %2131 = call float @dx.op.unary.f32(i32 23, float %2090)  ; Log(value)
  %2132 = fmul fast float %2131, 0x3FE62E4300000000
  %2133 = fmul fast float %2087, %2132
  %2134 = fsub fast float -0.000000e+00, %2133
  %2135 = fsub fast float 1.000000e+00, %2090
  %2136 = fdiv fast float %2134, %2135
  br label %2137

; <label>:2137                                    ; preds = %2130, %2126
  %2138 = phi float [ %2136, %2130 ], [ %2087, %2126 ]
  %2139 = phi float [ %2132, %2130 ], [ 0.000000e+00, %2126 ]
  %2140 = fcmp fast une float %2091, 1.000000e+00
  br i1 %2140, label %2141, label %2148, !dx.controlflow.hints !110

; <label>:2141                                    ; preds = %2137
  %2142 = call float @dx.op.unary.f32(i32 23, float %2091)  ; Log(value)
  %2143 = fmul fast float %2142, 0x3FE62E4300000000
  %2144 = fmul fast float %2088, %2143
  %2145 = fsub fast float -0.000000e+00, %2144
  %2146 = fsub fast float 1.000000e+00, %2091
  %2147 = fdiv fast float %2145, %2146
  br label %2148

; <label>:2148                                    ; preds = %2141, %2137
  %2149 = phi float [ %2147, %2141 ], [ %2088, %2137 ]
  %2150 = phi float [ %2143, %2141 ], [ 0.000000e+00, %2137 ]
  %2151 = fmul fast float %2114, %2098
  %2152 = fmul fast float %2115, %2098
  %2153 = fmul fast float %2116, %2098
  %2154 = fmul fast float %2117, %2098
  %2155 = fmul fast float %2127, %2096
  %2156 = fmul fast float %2138, %2096
  %2157 = fmul fast float %2149, %2096
  %2158 = fmul fast float %2128, %2096
  %2159 = fmul fast float %2139, %2096
  %2160 = fmul fast float %2150, %2096
  %2161 = fadd fast float %2155, %2151
  %2162 = fadd fast float %2156, %2152
  %2163 = fadd fast float %2157, %2153
  %2164 = fadd fast float %2158, %2154
  %2165 = fadd fast float %2159, %2154
  %2166 = fadd fast float %2160, %2154
  %2167 = fcmp fast une float %2164, 0.000000e+00
  br i1 %2167, label %2168, label %2175, !dx.controlflow.hints !111

; <label>:2168                                    ; preds = %2148
  %2169 = fmul fast float %2164, 0x3FF7154760000000
  %2170 = call float @dx.op.unary.f32(i32 21, float %2169)  ; Exp(value)
  %2171 = fsub fast float 1.000000e+00, %2170
  %2172 = fmul fast float %2161, %2171
  %2173 = fsub fast float -0.000000e+00, %2172
  %2174 = fdiv fast float %2173, %2164
  br label %2175

; <label>:2175                                    ; preds = %2168, %2148
  %2176 = phi float [ %2170, %2168 ], [ 1.000000e+00, %2148 ]
  %2177 = phi float [ %2174, %2168 ], [ %2161, %2148 ]
  %2178 = fcmp fast une float %2165, 0.000000e+00
  br i1 %2178, label %2179, label %2186, !dx.controlflow.hints !111

; <label>:2179                                    ; preds = %2175
  %2180 = fmul fast float %2165, 0x3FF7154760000000
  %2181 = call float @dx.op.unary.f32(i32 21, float %2180)  ; Exp(value)
  %2182 = fsub fast float 1.000000e+00, %2181
  %2183 = fmul fast float %2162, %2182
  %2184 = fsub fast float -0.000000e+00, %2183
  %2185 = fdiv fast float %2184, %2165
  br label %2186

; <label>:2186                                    ; preds = %2179, %2175
  %2187 = phi float [ %2181, %2179 ], [ 1.000000e+00, %2175 ]
  %2188 = phi float [ %2185, %2179 ], [ %2162, %2175 ]
  %2189 = fcmp fast une float %2166, 0.000000e+00
  br i1 %2189, label %2190, label %2197, !dx.controlflow.hints !111

; <label>:2190                                    ; preds = %2186
  %2191 = fmul fast float %2166, 0x3FF7154760000000
  %2192 = call float @dx.op.unary.f32(i32 21, float %2191)  ; Exp(value)
  %2193 = fsub fast float 1.000000e+00, %2192
  %2194 = fmul fast float %2163, %2193
  %2195 = fsub fast float -0.000000e+00, %2194
  %2196 = fdiv fast float %2195, %2166
  br label %2197

; <label>:2197                                    ; preds = %2190, %2186
  %2198 = phi float [ %2192, %2190 ], [ 1.000000e+00, %2186 ]
  %2199 = phi float [ %2196, %2190 ], [ %2163, %2186 ]
  %2200 = fcmp fast ogt float %2096, %2098
  br i1 %2200, label %2201, label %2221, !dx.controlflow.hints !112

; <label>:2201                                    ; preds = %2197
  %2202 = fsub fast float 1.000000e+00, %2098
  %2203 = fmul fast float %2114, %2202
  %2204 = fmul fast float %2115, %2202
  %2205 = fmul fast float %2116, %2202
  %2206 = fmul fast float %2117, %2202
  %2207 = fcmp fast une float %2206, 0.000000e+00
  br i1 %2207, label %2208, label %2259, !dx.controlflow.hints !113

; <label>:2208                                    ; preds = %2201
  %2209 = fmul fast float %2206, 0x3FF7154760000000
  %2210 = call float @dx.op.unary.f32(i32 21, float %2209)  ; Exp(value)
  %2211 = fsub fast float 1.000000e+00, %2210
  %2212 = fmul fast float %2203, %2211
  %2213 = fsub fast float -0.000000e+00, %2212
  %2214 = fmul fast float %2204, %2211
  %2215 = fsub fast float -0.000000e+00, %2214
  %2216 = fmul fast float %2205, %2211
  %2217 = fsub fast float -0.000000e+00, %2216
  %2218 = fdiv fast float %2213, %2206
  %2219 = fdiv fast float %2215, %2206
  %2220 = fdiv fast float %2217, %2206
  br label %2259

; <label>:2221                                    ; preds = %2197
  %2222 = fsub fast float 1.000000e+00, %2096
  %2223 = fmul fast float %2127, %2222
  %2224 = fmul fast float %2138, %2222
  %2225 = fmul fast float %2149, %2222
  %2226 = fmul fast float %2128, %2222
  %2227 = fmul fast float %2139, %2222
  %2228 = fmul fast float %2150, %2222
  %2229 = fcmp fast une float %2226, 0.000000e+00
  br i1 %2229, label %2230, label %2237, !dx.controlflow.hints !111

; <label>:2230                                    ; preds = %2221
  %2231 = fmul fast float %2226, 0x3FF7154760000000
  %2232 = call float @dx.op.unary.f32(i32 21, float %2231)  ; Exp(value)
  %2233 = fsub fast float 1.000000e+00, %2232
  %2234 = fmul fast float %2223, %2233
  %2235 = fsub fast float -0.000000e+00, %2234
  %2236 = fdiv fast float %2235, %2226
  br label %2237

; <label>:2237                                    ; preds = %2230, %2221
  %2238 = phi float [ %2236, %2230 ], [ %2223, %2221 ]
  %2239 = phi float [ %2232, %2230 ], [ 1.000000e+00, %2221 ]
  %2240 = fcmp fast une float %2227, 0.000000e+00
  br i1 %2240, label %2241, label %2248, !dx.controlflow.hints !111

; <label>:2241                                    ; preds = %2237
  %2242 = fmul fast float %2227, 0x3FF7154760000000
  %2243 = call float @dx.op.unary.f32(i32 21, float %2242)  ; Exp(value)
  %2244 = fsub fast float 1.000000e+00, %2243
  %2245 = fmul fast float %2224, %2244
  %2246 = fsub fast float -0.000000e+00, %2245
  %2247 = fdiv fast float %2246, %2227
  br label %2248

; <label>:2248                                    ; preds = %2241, %2237
  %2249 = phi float [ %2247, %2241 ], [ %2224, %2237 ]
  %2250 = phi float [ %2243, %2241 ], [ 1.000000e+00, %2237 ]
  %2251 = fcmp fast une float %2228, 0.000000e+00
  br i1 %2251, label %2252, label %2259, !dx.controlflow.hints !111

; <label>:2252                                    ; preds = %2248
  %2253 = fmul fast float %2228, 0x3FF7154760000000
  %2254 = call float @dx.op.unary.f32(i32 21, float %2253)  ; Exp(value)
  %2255 = fsub fast float 1.000000e+00, %2254
  %2256 = fmul fast float %2225, %2255
  %2257 = fsub fast float -0.000000e+00, %2256
  %2258 = fdiv fast float %2257, %2228
  br label %2259

; <label>:2259                                    ; preds = %2252, %2248, %2208, %2201
  %2260 = phi float [ %2258, %2252 ], [ %2220, %2208 ], [ %2205, %2201 ], [ %2225, %2248 ]
  %2261 = phi float [ %2249, %2252 ], [ %2219, %2208 ], [ %2204, %2201 ], [ %2249, %2248 ]
  %2262 = phi float [ %2238, %2252 ], [ %2218, %2208 ], [ %2203, %2201 ], [ %2238, %2248 ]
  %2263 = phi float [ %2254, %2252 ], [ %2210, %2208 ], [ 1.000000e+00, %2201 ], [ 1.000000e+00, %2248 ]
  %2264 = phi float [ %2250, %2252 ], [ %2210, %2208 ], [ 1.000000e+00, %2201 ], [ %2250, %2248 ]
  %2265 = phi float [ %2239, %2252 ], [ %2210, %2208 ], [ 1.000000e+00, %2201 ], [ %2239, %2248 ]
  %2266 = fmul fast float %2265, %2177
  %2267 = fmul fast float %2264, %2188
  %2268 = fmul fast float %2263, %2199
  %2269 = fadd fast float %2266, %2262
  %2270 = fadd fast float %2267, %2261
  %2271 = fadd fast float %2268, %2260
  %2272 = fmul fast float %2265, %2176
  %2273 = fmul fast float %2264, %2187
  %2274 = fmul fast float %2263, %2198
  br label %2275

; <label>:2275                                    ; preds = %2259, %2070
  %2276 = phi float [ %2076, %2070 ], [ %2274, %2259 ]
  %2277 = phi float [ %2075, %2070 ], [ %2273, %2259 ]
  %2278 = phi float [ %2074, %2070 ], [ %2272, %2259 ]
  %2279 = phi float [ %2073, %2070 ], [ %2271, %2259 ]
  %2280 = phi float [ %2072, %2070 ], [ %2270, %2259 ]
  %2281 = phi float [ %2071, %2070 ], [ %2269, %2259 ]
  %2282 = fmul fast float %2278, %1419
  %2283 = fmul fast float %2277, %1420
  %2284 = fmul fast float %2276, %1421
  %2285 = fsub fast float 1.000000e+00, %1482
  %2286 = fmul fast float %2281, %2285
  %2287 = fmul fast float %2280, %2285
  %2288 = fmul fast float %2279, %2285
  %2289 = fadd fast float %2286, %2282
  %2290 = fadd fast float %2287, %2283
  %2291 = fadd fast float %2288, %2284
  %2292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %2293 = extractvalue %dx.types.CBufRet.f32 %2292, 2
  %2294 = fmul fast float %2293, %1492
  %2295 = call float @dx.op.unary.f32(i32 7, float %2294)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %19, i32 %20, i32 undef, float %1482, float %1482, float %1482, float %1482, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2297 = extractvalue %dx.types.CBufRet.f32 %2296, 0
  %2298 = fmul fast float %2297, %2289
  %2299 = fmul fast float %2297, %2290
  %2300 = fmul fast float %2297, %2291
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %19, i32 %20, i32 undef, float %2298, float %2299, float %2300, float %2298, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %19, i32 %20, i32 undef, float %2295, float %2295, float %2295, float %2295, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!dx.entryPoints = !{!30}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !19, !25, !28}
!5 = !{!6, !8, !9, !10, !11, !12, !14, !15, !16, !17, !18}
!6 = !{i32 0, %"class.Texture3D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 31, i32 1, i32 7, i32 0, !7}
!9 = !{i32 2, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 30, i32 1, i32 4, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<float>"* undef, !"", i32 0, i32 29, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 0, i32 26, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 32, i32 1, i32 2, i32 0, !13}
!13 = !{i32 0, i32 5}
!14 = !{i32 6, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 33, i32 1, i32 4, i32 0, !7}
!15 = !{i32 7, %"class.Texture1D<float>"* undef, !"", i32 0, i32 14, i32 1, i32 1, i32 0, !7}
!16 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!17 = !{i32 9, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!18 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!19 = !{!20, !21, !22, !23}
!20 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!21 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!22 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!23 = !{i32 3, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 7, i1 false, i1 false, i1 false, !24}
!24 = !{i32 0, i32 14}
!25 = !{!26, !27}
!26 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!27 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!28 = !{!29}
!29 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!30 = !{void ()* @cs_fog_raymarching_air, !"cs_fog_raymarching_air", null, !4, !31}
!31 = !{i32 0, i64 272, i32 4, !32}
!32 = !{i32 8, i32 8, i32 1}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 1}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 1}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 1}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 1}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 1}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 1}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = !{!69, !69, i64 0}
!69 = !{!"float", !70, i64 0}
!70 = !{!"omnipotent char", !71, i64 0}
!71 = !{!"Simple C/C++ TBAA"}
!72 = !{!73, !75, !77, !78, !80, !81, !82}
!73 = distinct !{!73, !74, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!74 = distinct !{!74, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!75 = distinct !{!75, !76, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!76 = distinct !{!76, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!77 = distinct !{!77, !76, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!78 = distinct !{!78, !79, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!79 = distinct !{!79, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!80 = distinct !{!80, !79, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!81 = distinct !{!81, !79, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!82 = distinct !{!82, !79, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = !{!85}
!85 = distinct !{!85, !86, !"\01?sort@@YAXAIAM00@Z: %c"}
!86 = distinct !{!86, !"\01?sort@@YAXAIAM00@Z"}
!87 = !{!88, !89, !73, !75, !77, !78, !80, !81, !82}
!88 = distinct !{!88, !86, !"\01?sort@@YAXAIAM00@Z: %a"}
!89 = distinct !{!89, !86, !"\01?sort@@YAXAIAM00@Z: %b"}
!90 = !{!89}
!91 = !{!88, !85, !73, !75, !77, !78, !80, !81, !82}
!92 = !{!88}
!93 = !{!89, !85, !73, !75, !77, !78, !80, !81, !82}
!94 = !{!95}
!95 = distinct !{!95, !96, !"\01?sort@@YAXAIAM00@Z: %c"}
!96 = distinct !{!96, !"\01?sort@@YAXAIAM00@Z"}
!97 = !{!98, !99, !73, !75, !77, !78, !80, !81, !82}
!98 = distinct !{!98, !96, !"\01?sort@@YAXAIAM00@Z: %a"}
!99 = distinct !{!99, !96, !"\01?sort@@YAXAIAM00@Z: %b"}
!100 = !{!99}
!101 = !{!98, !95, !73, !75, !77, !78, !80, !81, !82}
!102 = !{!98}
!103 = !{!99, !95, !73, !75, !77, !78, !80, !81, !82}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 2}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 2}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 2}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 2}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}

