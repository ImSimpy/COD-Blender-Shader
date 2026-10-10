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
; shader hash: 8491b4c588f7a66a96980c6bc05eaa33
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
;                                   texture     f32          2d      T1            t27     1
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

define void @cs_fog_raymarching_brfog() {
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
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %21 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %22 = alloca [3 x float], align 4
  %23 = alloca [3 x float], align 4
  %24 = add i32 %21, %20
  %25 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %26 = extractvalue %dx.types.CBufRet.i32 %25, 1
  %27 = add i32 %24, %26
  %28 = lshr i32 %27, 1
  %29 = and i32 %28, 1
  %30 = and i32 %27, 1
  %31 = xor i32 %29, %30
  %32 = shl i32 %20, 1
  %33 = shl i32 %21, 1
  %34 = or i32 %31, %32
  %35 = or i32 %29, %33
  %36 = uitofp i32 %34 to float
  %37 = uitofp i32 %35 to float
  %38 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %39 = extractvalue %dx.types.CBufRet.f32 %38, 2
  %40 = fmul fast float %39, 0x3FE3C6EF40000000
  %41 = frem fast float %36, 2.560000e+02
  %42 = frem fast float %37, 2.560000e+02
  %43 = fptoui float %41 to i32
  %44 = fptoui float %42 to i32
  %45 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %43, i32 %44, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %46 = extractvalue %dx.types.ResRet.f32 %45, 1
  %47 = extractvalue %dx.types.ResRet.f32 %45, 2
  %48 = extractvalue %dx.types.ResRet.f32 %45, 3
  %49 = fadd fast float %46, %40
  %50 = fadd fast float %47, %40
  %51 = fadd fast float %48, %40
  %52 = call float @dx.op.unary.f32(i32 22, float %49)  ; Frc(value)
  %53 = call float @dx.op.unary.f32(i32 22, float %50)  ; Frc(value)
  %54 = call float @dx.op.unary.f32(i32 22, float %51)  ; Frc(value)
  %55 = fadd fast float %53, %36
  %56 = fadd fast float %54, %37
  %57 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %58 = extractvalue %dx.types.CBufRet.f32 %57, 2
  %59 = extractvalue %dx.types.CBufRet.f32 %57, 3
  %60 = fmul fast float %58, %55
  %61 = fmul fast float %59, %56
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 0
  %64 = extractvalue %dx.types.CBufRet.f32 %62, 1
  %65 = extractvalue %dx.types.CBufRet.f32 %62, 2
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.f32 %66, 1
  %68 = fmul fast float %60, 2.000000e+00
  %69 = fmul fast float %61, 2.000000e+00
  %70 = fsub fast float 1.000000e+00, %68
  %71 = fsub fast float 1.000000e+00, %69
  %72 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %73 = extractvalue %dx.types.CBufRet.f32 %72, 0
  %74 = extractvalue %dx.types.CBufRet.f32 %72, 1
  %75 = extractvalue %dx.types.CBufRet.f32 %72, 2
  %76 = fmul fast float %73, %70
  %77 = fmul fast float %74, %70
  %78 = fmul fast float %75, %70
  %79 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %80 = extractvalue %dx.types.CBufRet.f32 %79, 0
  %81 = extractvalue %dx.types.CBufRet.f32 %79, 1
  %82 = extractvalue %dx.types.CBufRet.f32 %79, 2
  %83 = fmul fast float %80, %71
  %84 = fmul fast float %81, %71
  %85 = fmul fast float %82, %71
  %86 = fadd fast float %83, %76
  %87 = fadd fast float %84, %77
  %88 = fadd fast float %85, %78
  %89 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = extractvalue %dx.types.CBufRet.f32 %89, 0
  %91 = extractvalue %dx.types.CBufRet.f32 %89, 1
  %92 = extractvalue %dx.types.CBufRet.f32 %89, 2
  %93 = fadd fast float %86, %90
  %94 = fadd fast float %87, %91
  %95 = fadd fast float %88, %92
  %96 = fmul fast float %93, %67
  %97 = fmul fast float %94, %67
  %98 = fmul fast float %95, %67
  %99 = fmul fast float %96, %96
  %100 = fmul fast float %97, %97
  %101 = fadd fast float %99, %100
  %102 = fmul fast float %98, %98
  %103 = fadd fast float %101, %102
  %104 = call float @dx.op.unary.f32(i32 24, float %103)  ; Sqrt(value)
  %105 = fdiv fast float 1.000000e+00, %104
  %106 = fmul fast float %96, %105
  %107 = fmul fast float %97, %105
  %108 = fmul fast float %98, %105
  %109 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %34, i32 %35, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %110 = extractvalue %dx.types.ResRet.f32 %109, 0
  %111 = fcmp fast ogt float %110, -1.000000e+00
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 1
  %114 = select i1 %111, float %113, float 1.000000e+00
  %115 = fadd fast float %110, 1.000000e+00
  %116 = fmul fast float %114, %115
  %117 = call float @dx.op.unary.f32(i32 6, float %116)  ; FAbs(value)
  %118 = fdiv fast float 1.000000e+00, %67
  %119 = fmul fast float %118, %104
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %122 = fmul fast float %121, %119
  %123 = fmul fast float %119, %117
  %124 = extractvalue %dx.types.CBufRet.f32 %112, 3
  %125 = fcmp fast oge float %117, %124
  %126 = call float @dx.op.binary.f32(i32 36, float %123, float %122)  ; FMin(a,b)
  %127 = select i1 %125, float %122, float %126
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.f32 %128, 2
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 3
  %132 = fsub fast float -0.000000e+00, %63
  %133 = fsub fast float -0.000000e+00, %64
  %134 = fsub fast float %129, %65
  %135 = fadd fast float %134, %131
  %136 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %132, float %133, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %137 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %106, float %107, float %108)  ; Dot3(ax,ay,az,bx,by,bz)
  %138 = fdiv fast float 1.000000e+00, %137
  %139 = fmul fast float %138, %136
  %140 = fcmp fast olt float %139, 0.000000e+00
  %141 = fcmp fast ogt float %108, 0.000000e+00
  %142 = and i1 %141, %140
  br i1 %142, label %147, label %143, !dx.controlflow.hints !34

; <label>:143                                     ; preds = %0
  %144 = fcmp fast olt float %108, 0.000000e+00
  br i1 %144, label %145, label %147, !dx.controlflow.hints !35

; <label>:145                                     ; preds = %143
  %146 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %139)  ; FMax(a,b)
  br label %147

; <label>:147                                     ; preds = %145, %143, %0
  %148 = phi float [ 0.000000e+00, %0 ], [ %146, %145 ], [ 0.000000e+00, %143 ]
  %149 = phi float [ 0.000000e+00, %0 ], [ 0x47EFFFFFE0000000, %145 ], [ %139, %143 ]
  %150 = fcmp fast oeq float %149, 0.000000e+00
  br i1 %150, label %154, label %151, !dx.controlflow.hints !36

; <label>:151                                     ; preds = %147
  %152 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %148)  ; FMin(a,b)
  %153 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %149)  ; FMax(a,b)
  br label %154

; <label>:154                                     ; preds = %151, %147
  %155 = phi i32 [ 1, %151 ], [ 0, %147 ]
  %156 = phi float [ %153, %151 ], [ -1.000000e+00, %147 ]
  %157 = phi float [ %152, %151 ], [ 0x47EFFFFFE0000000, %147 ]
  %158 = call float @dx.op.binary.f32(i32 36, float %127, float %156)  ; FMin(a,b)
  %159 = call float @dx.op.binary.f32(i32 35, float %104, float %157)  ; FMax(a,b)
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.f32 %160, 0
  %162 = fmul fast float %52, 2.000000e+00
  %163 = fadd fast float %162, -1.000000e+00
  %164 = fmul fast float %161, %163
  %165 = fadd fast float %164, %159
  %166 = fcmp fast olt float %165, %158
  %167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.f32 %167, 2
  %169 = fcmp fast olt float %168, 1.000000e+00
  %170 = and i1 %169, %166
  br i1 %170, label %171, label %1714

; <label>:171                                     ; preds = %154
  %172 = fmul fast float %165, %108
  %173 = fadd fast float %172, %65
  %174 = fmul fast float %165, %107
  %175 = fadd fast float %174, %64
  %176 = fmul fast float %165, %106
  %177 = fadd fast float %176, %63
  br label %178

; <label>:178                                     ; preds = %1688, %171
  %179 = phi i32 [ %1690, %1688 ], [ undef, %171 ]
  %180 = phi float [ %1691, %1688 ], [ undef, %171 ]
  %181 = phi i32 [ %375, %1688 ], [ undef, %171 ]
  %182 = phi float [ %376, %1688 ], [ undef, %171 ]
  %183 = phi float [ %1692, %1688 ], [ 0.000000e+00, %171 ]
  %184 = phi float [ %1693, %1688 ], [ 1.000000e+00, %171 ]
  %185 = phi float [ %1694, %1688 ], [ 0.000000e+00, %171 ]
  %186 = phi float [ %1695, %1688 ], [ 0.000000e+00, %171 ]
  %187 = phi float [ %1696, %1688 ], [ 0.000000e+00, %171 ]
  %188 = phi float [ %1706, %1688 ], [ %177, %171 ]
  %189 = phi float [ %1707, %1688 ], [ %175, %171 ]
  %190 = phi float [ %1708, %1688 ], [ %173, %171 ]
  %191 = phi float [ %1689, %1688 ], [ %165, %171 ]
  %192 = phi float [ %1697, %1688 ], [ 0.000000e+00, %171 ]
  %193 = phi float [ %1698, %1688 ], [ 0.000000e+00, %171 ]
  %194 = phi float [ %1699, %1688 ], [ 0.000000e+00, %171 ]
  %195 = phi float [ %1700, %1688 ], [ 0.000000e+00, %171 ]
  %196 = phi float [ %1701, %1688 ], [ 0.000000e+00, %171 ]
  %197 = phi i32 [ %1702, %1688 ], [ 0, %171 ]
  %198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %199 = extractvalue %dx.types.CBufRet.f32 %198, 0
  %200 = icmp eq i32 %155, 0
  br i1 %200, label %373, label %201, !dx.controlflow.hints !37

; <label>:201                                     ; preds = %178
  %202 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %203 = extractvalue %dx.types.CBufRet.i32 %202, 1
  %204 = and i32 %203, 1
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %363, !dx.controlflow.hints !38

; <label>:206                                     ; preds = %201
  %207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %208 = extractvalue %dx.types.CBufRet.f32 %207, 2
  %209 = extractvalue %dx.types.CBufRet.f32 %207, 3
  %210 = fmul fast float %208, %188
  %211 = fmul fast float %209, %189
  %212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.f32 %212, 0
  %214 = extractvalue %dx.types.CBufRet.f32 %212, 1
  %215 = fadd fast float %210, %213
  %216 = fadd fast float %211, %214
  %217 = call float @dx.op.unary.f32(i32 7, float %215)  ; Saturate(value)
  %218 = call float @dx.op.unary.f32(i32 7, float %216)  ; Saturate(value)
  %219 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %17, float %217, float %218, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %220 = extractvalue %dx.types.ResRet.f32 %219, 0
  %221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.f32 %221, 0
  %223 = fmul fast float %222, %220
  %224 = fsub fast float %215, %217
  %225 = fsub fast float %216, %218
  %226 = extractvalue %dx.types.CBufRet.f32 %207, 0
  %227 = extractvalue %dx.types.CBufRet.f32 %207, 1
  %228 = fmul fast float %226, %224
  %229 = fmul fast float %227, %225
  %230 = fmul fast float %228, %228
  %231 = fmul fast float %229, %229
  %232 = fadd fast float %230, %231
  %233 = call float @dx.op.unary.f32(i32 24, float %232)  ; Sqrt(value)
  %234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %235 = extractvalue %dx.types.CBufRet.f32 %234, 3
  %236 = fmul fast float %235, %233
  %237 = call float @dx.op.unary.f32(i32 7, float %236)  ; Saturate(value)
  %238 = extractvalue %dx.types.CBufRet.f32 %234, 2
  %239 = fsub fast float %238, %223
  %240 = fmul fast float %239, %237
  %241 = extractvalue %dx.types.CBufRet.f32 %221, 1
  %242 = fsub fast float %190, %223
  %243 = fsub fast float %242, %241
  %244 = fsub fast float %243, %240
  %245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %246 = extractvalue %dx.types.CBufRet.f32 %245, 2
  %247 = fsub fast float %244, %246
  %248 = fcmp fast olt float %247, 0.000000e+00
  %249 = call float @dx.op.unary.f32(i32 6, float %247)  ; FAbs(value)
  %250 = extractvalue %dx.types.CBufRet.i32 %202, 0
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %305, label %252

; <label>:252                                     ; preds = %206
  br label %253

; <label>:253                                     ; preds = %292, %252
  %254 = phi i32 [ %298, %292 ], [ 1, %252 ]
  %255 = phi float [ %300, %292 ], [ 0x47EFFFFFE0000000, %252 ]
  %256 = phi i32 [ %301, %292 ], [ 0, %252 ]
  %257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %258 = extractvalue %dx.types.CBufRet.f32 %257, 1
  %259 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %260 = extractvalue %dx.types.CBufRet.i32 %259, 1
  %261 = and i32 %260, 8
  %262 = icmp eq i32 %261, 0
  %263 = fcmp fast ogt float %258, %244
  %264 = or i1 %263, %262
  %265 = add i32 %256, 171
  %266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 %265)  ; CBufferLoadLegacy(handle,regIndex)
  %267 = extractvalue %dx.types.CBufRet.f32 %266, 0
  %268 = extractvalue %dx.types.CBufRet.f32 %266, 1
  %269 = extractvalue %dx.types.CBufRet.f32 %266, 2
  br i1 %264, label %270, label %276, !dx.controlflow.hints !39

; <label>:270                                     ; preds = %253
  %271 = fsub fast float %267, %188
  %272 = fsub fast float %268, %189
  %273 = fmul fast float %271, %271
  %274 = fmul fast float %272, %272
  %275 = fadd fast float %273, %274
  br label %292

; <label>:276                                     ; preds = %253
  %277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %278 = extractvalue %dx.types.CBufRet.f32 %277, 2
  %279 = extractvalue %dx.types.CBufRet.f32 %257, 2
  %280 = fmul fast float %279, %278
  %281 = fsub fast float %280, %258
  %282 = fdiv fast float %269, %281
  %283 = fsub fast float %188, %267
  %284 = fsub fast float %189, %268
  %285 = fsub fast float %244, %258
  %286 = fmul fast float %282, %285
  %287 = fmul fast float %283, %283
  %288 = fmul fast float %284, %284
  %289 = fadd fast float %287, %288
  %290 = fmul fast float %286, %286
  %291 = fadd fast float %289, %290
  br label %292

; <label>:292                                     ; preds = %276, %270
  %293 = phi float [ %275, %270 ], [ %291, %276 ]
  %294 = call float @dx.op.unary.f32(i32 24, float %293)  ; Sqrt(value)
  %295 = fsub float %269, %294
  %296 = fcmp fast olt float %295, 0.000000e+00
  %297 = zext i1 %296 to i32
  %298 = and i32 %297, %254
  %299 = call float @dx.op.unary.f32(i32 6, float %295)  ; FAbs(value)
  %300 = call float @dx.op.binary.f32(i32 36, float %255, float %299)  ; FMin(a,b)
  %301 = add i32 %256, 1
  %302 = extractvalue %dx.types.CBufRet.i32 %259, 0
  %303 = icmp ult i32 %301, %302
  br i1 %303, label %253, label %304

; <label>:304                                     ; preds = %292
  br label %305

; <label>:305                                     ; preds = %304, %206
  %306 = phi i32 [ 1, %206 ], [ %298, %304 ]
  %307 = phi float [ 0x47EFFFFFE0000000, %206 ], [ %300, %304 ]
  br label %308

; <label>:308                                     ; preds = %308, %305
  %309 = phi i32 [ %306, %305 ], [ %348, %308 ]
  %310 = phi float [ 0x47EFFFFFE0000000, %305 ], [ %350, %308 ]
  %311 = phi i32 [ 0, %305 ], [ %351, %308 ]
  %312 = add nuw nsw i32 %311, 191
  %313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 %312)  ; CBufferLoadLegacy(handle,regIndex)
  %314 = extractvalue %dx.types.CBufRet.f32 %313, 0
  %315 = extractvalue %dx.types.CBufRet.f32 %313, 1
  %316 = extractvalue %dx.types.CBufRet.f32 %313, 2
  %317 = add nuw nsw i32 %311, 195
  %318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 %317)  ; CBufferLoadLegacy(handle,regIndex)
  %319 = extractvalue %dx.types.CBufRet.f32 %318, 0
  %320 = extractvalue %dx.types.CBufRet.f32 %318, 1
  %321 = extractvalue %dx.types.CBufRet.f32 %318, 2
  %322 = fsub fast float %188, %314
  %323 = fsub fast float %189, %315
  %324 = fsub fast float %244, %316
  %325 = call float @dx.op.unary.f32(i32 6, float %322)  ; FAbs(value)
  %326 = call float @dx.op.unary.f32(i32 6, float %323)  ; FAbs(value)
  %327 = call float @dx.op.unary.f32(i32 6, float %324)  ; FAbs(value)
  %328 = fsub fast float %325, %319
  %329 = fsub fast float %326, %320
  %330 = fsub fast float %327, %321
  %331 = call float @dx.op.binary.f32(i32 35, float %328, float 0.000000e+00)  ; FMax(a,b)
  %332 = call float @dx.op.binary.f32(i32 35, float %329, float 0.000000e+00)  ; FMax(a,b)
  %333 = call float @dx.op.binary.f32(i32 35, float %330, float 0.000000e+00)  ; FMax(a,b)
  %334 = fmul fast float %331, %331
  %335 = fmul fast float %332, %332
  %336 = fadd fast float %335, %334
  %337 = fmul fast float %333, %333
  %338 = fadd fast float %336, %337
  %339 = call float @dx.op.unary.f32(i32 24, float %338)  ; Sqrt(value)
  %340 = call float @dx.op.binary.f32(i32 35, float %329, float %330)  ; FMax(a,b)
  %341 = call float @dx.op.binary.f32(i32 35, float %328, float %340)  ; FMax(a,b)
  %342 = call float @dx.op.binary.f32(i32 36, float %341, float 0.000000e+00)  ; FMin(a,b)
  %343 = fadd fast float %342, %339
  %344 = fsub fast float -0.000000e+00, %343
  %345 = fcmp ogt float %343, -0.000000e+00
  %346 = icmp ne i32 %309, 0
  %347 = and i1 %346, %345
  %348 = zext i1 %347 to i32
  %349 = call float @dx.op.unary.f32(i32 6, float %344)  ; FAbs(value)
  %350 = call float @dx.op.binary.f32(i32 36, float %310, float %349)  ; FMin(a,b)
  %351 = add nuw nsw i32 %311, 1
  %352 = icmp eq i32 %351, 4
  br i1 %352, label %353, label %308

; <label>:353                                     ; preds = %308
  %354 = call float @dx.op.binary.f32(i32 36, float %249, float %350)  ; FMin(a,b)
  %355 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %356 = extractvalue %dx.types.CBufRet.i32 %355, 1
  %357 = and i32 %356, 2
  %358 = icmp ne i32 %357, 0
  %359 = xor i1 %347, %358
  %360 = call float @dx.op.binary.f32(i32 36, float %354, float %307)  ; FMin(a,b)
  %361 = and i1 %359, %248
  %362 = zext i1 %361 to i32
  br label %363

; <label>:363                                     ; preds = %353, %201
  %364 = phi i32 [ %181, %201 ], [ %362, %353 ]
  %365 = phi float [ 0.000000e+00, %201 ], [ %360, %353 ]
  %366 = phi float [ %190, %201 ], [ %244, %353 ]
  %367 = icmp ne i32 %364, 0
  %368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %369 = extractvalue %dx.types.CBufRet.f32 %368, 3
  %370 = call float @dx.op.binary.f32(i32 35, float %365, float %369)  ; FMax(a,b)
  %371 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %370)  ; FMin(a,b)
  %372 = zext i1 %367 to i32
  br label %373

; <label>:373                                     ; preds = %363, %178
  %374 = phi i32 [ %372, %363 ], [ 0, %178 ]
  %375 = phi i32 [ %364, %363 ], [ %181, %178 ]
  %376 = phi float [ %366, %363 ], [ %182, %178 ]
  %377 = phi float [ %371, %363 ], [ 0x47EFFFFFE0000000, %178 ]
  %378 = extractvalue %dx.types.CBufRet.f32 %198, 2
  %379 = fmul fast float %378, %191
  %380 = call float @dx.op.unary.f32(i32 23, float %379)  ; Log(value)
  %381 = fmul fast float %380, 0x3FE62E4300000000
  %382 = call float @dx.op.binary.f32(i32 35, float %381, float 1.000000e+00)  ; FMax(a,b)
  %383 = fmul fast float %382, %377
  %384 = call float @dx.op.binary.f32(i32 36, float %383, float 0x47EFFFFFE0000000)  ; FMin(a,b)
  %385 = call float @dx.op.binary.f32(i32 35, float %384, float %199)  ; FMax(a,b)
  %386 = fadd fast float %158, 0x3F1A36E2E0000000
  %387 = fsub fast float %386, %191
  %388 = call float @dx.op.binary.f32(i32 36, float %387, float %385)  ; FMin(a,b)
  %389 = icmp eq i32 %374, 0
  br i1 %389, label %428, label %390, !dx.controlflow.hints !40

; <label>:390                                     ; preds = %373
  %391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %392 = extractvalue %dx.types.CBufRet.f32 %391, 1
  %393 = fsub fast float %388, %392
  %394 = extractvalue %dx.types.CBufRet.f32 %391, 3
  %395 = fmul fast float %393, %394
  %396 = call float @dx.op.unary.f32(i32 7, float %395)  ; Saturate(value)
  %397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %398 = extractvalue %dx.types.CBufRet.f32 %397, 3
  %399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %400 = extractvalue %dx.types.CBufRet.f32 %399, 2
  %401 = fsub fast float %400, %376
  %402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %403 = extractvalue %dx.types.CBufRet.f32 %402, 3
  %404 = fmul fast float %401, %403
  %405 = call float @dx.op.unary.f32(i32 7, float %404)  ; Saturate(value)
  %406 = fmul fast float %405, %398
  %407 = extractvalue %dx.types.CBufRet.f32 %402, 0
  %408 = fsub fast float %191, %407
  %409 = extractvalue %dx.types.CBufRet.f32 %402, 1
  %410 = fmul fast float %408, %409
  %411 = call float @dx.op.unary.f32(i32 7, float %410)  ; Saturate(value)
  %412 = fsub fast float 1.000000e+00, %396
  %413 = fmul fast float %411, %412
  %414 = fadd fast float %413, %396
  %415 = extractvalue %dx.types.CBufRet.f32 %391, 0
  %416 = fsub fast float %406, %415
  %417 = fmul fast float %416, %414
  %418 = fadd fast float %417, %415
  %419 = extractvalue %dx.types.CBufRet.f32 %397, 0
  %420 = extractvalue %dx.types.CBufRet.f32 %397, 1
  %421 = extractvalue %dx.types.CBufRet.f32 %397, 2
  %422 = fmul fast float %418, %388
  %423 = extractvalue %dx.types.CBufRet.f32 %402, 2
  %424 = fmul fast float %422, %419
  %425 = fmul fast float %422, %420
  %426 = fmul fast float %422, %421
  %427 = fmul fast float %422, %423
  br label %428

; <label>:428                                     ; preds = %390, %373
  %429 = phi float [ %422, %390 ], [ 0.000000e+00, %373 ]
  %430 = phi float [ %427, %390 ], [ 0.000000e+00, %373 ]
  %431 = phi float [ %424, %390 ], [ 0.000000e+00, %373 ]
  %432 = phi float [ %425, %390 ], [ 0.000000e+00, %373 ]
  %433 = phi float [ %426, %390 ], [ 0.000000e+00, %373 ]
  %434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %435 = extractvalue %dx.types.CBufRet.f32 %434, 1
  %436 = fcmp fast ogt float %429, %435
  br i1 %436, label %437, label %443, !dx.controlflow.hints !41

; <label>:437                                     ; preds = %428
  %438 = fdiv fast float 1.000000e+00, %429
  %439 = fmul fast float %438, %431
  %440 = fmul fast float %438, %432
  %441 = fmul fast float %438, %433
  %442 = fmul fast float %438, %430
  br label %443

; <label>:443                                     ; preds = %437, %428
  %444 = phi float [ %442, %437 ], [ %430, %428 ]
  %445 = phi float [ %439, %437 ], [ %431, %428 ]
  %446 = phi float [ %440, %437 ], [ %432, %428 ]
  %447 = phi float [ %441, %437 ], [ %433, %428 ]
  br i1 %436, label %450, label %448, !dx.controlflow.hints !42

; <label>:448                                     ; preds = %443
  %449 = fadd fast float %388, %191
  br label %1688

; <label>:450                                     ; preds = %443
  %451 = fmul fast float %429, 0xBFF7154760000000
  %452 = call float @dx.op.unary.f32(i32 21, float %451)  ; Exp(value)
  %453 = call float @dx.op.unary.f32(i32 7, float %452)  ; Saturate(value)
  %454 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %455 = extractvalue %dx.types.CBufRet.i32 %454, 0
  %456 = icmp eq i32 %455, 1
  br i1 %456, label %457, label %492, !dx.controlflow.hints !43

; <label>:457                                     ; preds = %450
  %458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %459 = extractvalue %dx.types.CBufRet.f32 %458, 0
  %460 = extractvalue %dx.types.CBufRet.f32 %458, 1
  %461 = fsub fast float %188, %459
  %462 = fsub fast float %189, %460
  %463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %464 = extractvalue %dx.types.CBufRet.f32 %463, 0
  %465 = extractvalue %dx.types.CBufRet.f32 %463, 1
  %466 = fmul fast float %461, %464
  %467 = fmul fast float %462, %465
  %468 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %17, float %466, float %467, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %469 = extractvalue %dx.types.ResRet.f32 %468, 0
  %470 = fcmp fast ogt float %469, 0.000000e+00
  %471 = extractvalue %dx.types.CBufRet.i32 %454, 3
  %472 = icmp ne i32 %471, 0
  %473 = and i1 %470, %472
  br i1 %473, label %474, label %492, !dx.controlflow.hints !44

; <label>:474                                     ; preds = %457
  %475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %476 = extractvalue %dx.types.CBufRet.f32 %475, 0
  %477 = extractvalue %dx.types.CBufRet.f32 %475, 1
  %478 = fsub fast float %188, %476
  %479 = fsub fast float %189, %477
  %480 = fmul fast float %478, %478
  %481 = fmul fast float %479, %479
  %482 = fadd fast float %480, %481
  %483 = uitofp i32 %471 to float
  %484 = fmul fast float %483, %483
  %485 = fcmp fast ogt float %482, %484
  br i1 %485, label %492, label %486, !dx.controlflow.hints !45

; <label>:486                                     ; preds = %474
  %487 = call float @dx.op.unary.f32(i32 24, float %482)  ; Sqrt(value)
  %488 = fsub fast float %483, %487
  %489 = fmul fast float %488, 0x3F75555560000000
  %490 = call float @dx.op.unary.f32(i32 7, float %489)  ; Saturate(value)
  %491 = call float @dx.op.binary.f32(i32 36, float %490, float %469)  ; FMin(a,b)
  br label %492

; <label>:492                                     ; preds = %486, %474, %457, %450
  %493 = phi float [ 1.000000e+00, %450 ], [ %491, %486 ], [ %469, %457 ], [ 0.000000e+00, %474 ]
  %494 = fcmp fast ogt float %493, 0.000000e+00
  br i1 %494, label %495, label %568, !dx.controlflow.hints !46

; <label>:495                                     ; preds = %492
  %496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.i32 %496, 0
  %498 = extractvalue %dx.types.ResRet.i32 %496, 1
  %499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %500 = extractvalue %dx.types.ResRet.i32 %499, 0
  %501 = extractvalue %dx.types.ResRet.i32 %499, 1
  %502 = extractvalue %dx.types.ResRet.i32 %499, 2
  %503 = extractvalue %dx.types.ResRet.i32 %499, 3
  %504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.i32 %504, 0
  %506 = extractvalue %dx.types.ResRet.i32 %504, 1
  %507 = extractvalue %dx.types.ResRet.i32 %504, 2
  %508 = extractvalue %dx.types.ResRet.i32 %504, 3
  %509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.i32 %509, 0
  %511 = extractvalue %dx.types.ResRet.i32 %509, 1
  %512 = extractvalue %dx.types.ResRet.i32 %509, 2
  %513 = extractvalue %dx.types.ResRet.i32 %509, 3
  %514 = and i32 %510, 65535
  %515 = call float @dx.op.legacyF16ToF32(i32 131, i32 %514)  ; LegacyF16ToF32(value)
  %516 = lshr i32 %510, 16
  %517 = call float @dx.op.legacyF16ToF32(i32 131, i32 %516)  ; LegacyF16ToF32(value)
  %518 = and i32 %511, 65535
  %519 = call float @dx.op.legacyF16ToF32(i32 131, i32 %518)  ; LegacyF16ToF32(value)
  %520 = lshr i32 %511, 16
  %521 = call float @dx.op.legacyF16ToF32(i32 131, i32 %520)  ; LegacyF16ToF32(value)
  %522 = and i32 %512, 65535
  %523 = call float @dx.op.legacyF16ToF32(i32 131, i32 %522)  ; LegacyF16ToF32(value)
  %524 = lshr i32 %512, 16
  %525 = call float @dx.op.legacyF16ToF32(i32 131, i32 %524)  ; LegacyF16ToF32(value)
  %526 = and i32 %513, 65535
  %527 = call float @dx.op.legacyF16ToF32(i32 131, i32 %526)  ; LegacyF16ToF32(value)
  %528 = lshr i32 %513, 16
  %529 = call float @dx.op.legacyF16ToF32(i32 131, i32 %528)  ; LegacyF16ToF32(value)
  %530 = and i32 %505, 65535
  %531 = call float @dx.op.legacyF16ToF32(i32 131, i32 %530)  ; LegacyF16ToF32(value)
  %532 = lshr i32 %505, 16
  %533 = call float @dx.op.legacyF16ToF32(i32 131, i32 %532)  ; LegacyF16ToF32(value)
  %534 = and i32 %506, 65535
  %535 = call float @dx.op.legacyF16ToF32(i32 131, i32 %534)  ; LegacyF16ToF32(value)
  %536 = lshr i32 %506, 16
  %537 = call float @dx.op.legacyF16ToF32(i32 131, i32 %536)  ; LegacyF16ToF32(value)
  %538 = and i32 %507, 65535
  %539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %538)  ; LegacyF16ToF32(value)
  %540 = lshr i32 %507, 16
  %541 = call float @dx.op.legacyF16ToF32(i32 131, i32 %540)  ; LegacyF16ToF32(value)
  %542 = and i32 %508, 65535
  %543 = call float @dx.op.legacyF16ToF32(i32 131, i32 %542)  ; LegacyF16ToF32(value)
  %544 = lshr i32 %508, 16
  %545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %544)  ; LegacyF16ToF32(value)
  %546 = and i32 %500, 65535
  %547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %546)  ; LegacyF16ToF32(value)
  %548 = lshr i32 %500, 16
  %549 = call float @dx.op.legacyF16ToF32(i32 131, i32 %548)  ; LegacyF16ToF32(value)
  %550 = and i32 %501, 65535
  %551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %550)  ; LegacyF16ToF32(value)
  %552 = lshr i32 %501, 16
  %553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %552)  ; LegacyF16ToF32(value)
  %554 = and i32 %502, 65535
  %555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %554)  ; LegacyF16ToF32(value)
  %556 = lshr i32 %502, 16
  %557 = call float @dx.op.legacyF16ToF32(i32 131, i32 %556)  ; LegacyF16ToF32(value)
  %558 = and i32 %503, 65535
  %559 = call float @dx.op.legacyF16ToF32(i32 131, i32 %558)  ; LegacyF16ToF32(value)
  %560 = lshr i32 %503, 16
  %561 = call float @dx.op.legacyF16ToF32(i32 131, i32 %560)  ; LegacyF16ToF32(value)
  %562 = and i32 %497, 65535
  %563 = call float @dx.op.legacyF16ToF32(i32 131, i32 %562)  ; LegacyF16ToF32(value)
  %564 = lshr i32 %497, 16
  %565 = call float @dx.op.legacyF16ToF32(i32 131, i32 %564)  ; LegacyF16ToF32(value)
  %566 = and i32 %498, 65535
  %567 = call float @dx.op.legacyF16ToF32(i32 131, i32 %566)  ; LegacyF16ToF32(value)
  br label %568

; <label>:568                                     ; preds = %495, %492
  %569 = phi float [ %567, %495 ], [ 0.000000e+00, %492 ]
  %570 = phi float [ %565, %495 ], [ 0.000000e+00, %492 ]
  %571 = phi float [ %563, %495 ], [ 0.000000e+00, %492 ]
  %572 = phi float [ %561, %495 ], [ 0.000000e+00, %492 ]
  %573 = phi float [ %559, %495 ], [ 0.000000e+00, %492 ]
  %574 = phi float [ %557, %495 ], [ 0.000000e+00, %492 ]
  %575 = phi float [ %555, %495 ], [ 0.000000e+00, %492 ]
  %576 = phi float [ %553, %495 ], [ 0.000000e+00, %492 ]
  %577 = phi float [ %551, %495 ], [ 0.000000e+00, %492 ]
  %578 = phi float [ %549, %495 ], [ 0.000000e+00, %492 ]
  %579 = phi float [ %547, %495 ], [ 0.000000e+00, %492 ]
  %580 = phi float [ %545, %495 ], [ 0.000000e+00, %492 ]
  %581 = phi float [ %543, %495 ], [ 0.000000e+00, %492 ]
  %582 = phi float [ %541, %495 ], [ 0.000000e+00, %492 ]
  %583 = phi float [ %539, %495 ], [ 0.000000e+00, %492 ]
  %584 = phi float [ %537, %495 ], [ 0.000000e+00, %492 ]
  %585 = phi float [ %535, %495 ], [ 0.000000e+00, %492 ]
  %586 = phi float [ %533, %495 ], [ 0.000000e+00, %492 ]
  %587 = phi float [ %531, %495 ], [ 0.000000e+00, %492 ]
  %588 = phi float [ %529, %495 ], [ 0.000000e+00, %492 ]
  %589 = phi float [ %527, %495 ], [ 0.000000e+00, %492 ]
  %590 = phi float [ %525, %495 ], [ 0.000000e+00, %492 ]
  %591 = phi float [ %523, %495 ], [ 0.000000e+00, %492 ]
  %592 = phi float [ %521, %495 ], [ 0.000000e+00, %492 ]
  %593 = phi float [ %519, %495 ], [ 0.000000e+00, %492 ]
  %594 = phi float [ %517, %495 ], [ 0.000000e+00, %492 ]
  %595 = phi float [ %515, %495 ], [ 0.000000e+00, %492 ]
  %596 = fcmp fast olt float %493, 1.000000e+00
  br i1 %596, label %597, label %1257, !dx.controlflow.hints !47

; <label>:597                                     ; preds = %568
  %598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %599 = extractvalue %dx.types.CBufRet.f32 %598, 0
  %600 = extractvalue %dx.types.CBufRet.f32 %598, 1
  %601 = fsub fast float %188, %599
  %602 = fsub fast float %189, %600
  %603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %604 = extractvalue %dx.types.CBufRet.f32 %603, 0
  %605 = extractvalue %dx.types.CBufRet.f32 %603, 1
  %606 = fmul fast float %601, %604
  %607 = fmul fast float %602, %605
  %608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %609 = extractvalue %dx.types.CBufRet.f32 %608, 0
  %610 = fmul fast float %609, %606
  %611 = extractvalue %dx.types.CBufRet.f32 %608, 1
  %612 = fadd fast float %610, %611
  %613 = extractvalue %dx.types.CBufRet.f32 %608, 2
  %614 = fmul fast float %613, %607
  %615 = extractvalue %dx.types.CBufRet.f32 %608, 3
  %616 = fadd fast float %614, %615
  %617 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %17, float %612, float %616, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %618 = extractvalue %dx.types.ResRet.f32 %617, 0
  %619 = extractvalue %dx.types.ResRet.f32 %617, 1
  %620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %621 = extractvalue %dx.types.CBufRet.f32 %620, 1
  %622 = extractvalue %dx.types.CBufRet.f32 %620, 0
  %623 = fsub fast float %621, %622
  %624 = fmul fast float %623, %618
  %625 = fadd fast float %624, %622
  %626 = extractvalue %dx.types.CBufRet.f32 %620, 3
  %627 = extractvalue %dx.types.CBufRet.f32 %620, 2
  %628 = fsub fast float %626, %627
  %629 = fmul fast float %628, %619
  %630 = fadd fast float %629, %627
  %631 = fsub fast float %190, %625
  %632 = fsub fast float %630, %625
  %633 = fdiv fast float %631, %632
  %634 = call float @dx.op.unary.f32(i32 7, float %633)  ; Saturate(value)
  %635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %636 = extractvalue %dx.types.CBufRet.f32 %635, 0
  %637 = fmul fast float %636, %634
  %638 = extractvalue %dx.types.CBufRet.f32 %635, 1
  %639 = fadd fast float %637, %638
  %640 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %612, float %616, float %639, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %641 = extractvalue %dx.types.ResRet.f32 %640, 0
  %642 = extractvalue %dx.types.ResRet.f32 %640, 1
  %643 = extractvalue %dx.types.ResRet.f32 %640, 2
  %644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %645 = extractvalue %dx.types.CBufRet.f32 %644, 0
  %646 = extractvalue %dx.types.CBufRet.f32 %644, 1
  %647 = extractvalue %dx.types.CBufRet.f32 %644, 2
  %648 = fmul fast float %645, %641
  %649 = fmul fast float %646, %642
  %650 = fmul fast float %647, %643
  %651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %652 = extractvalue %dx.types.CBufRet.f32 %651, 0
  %653 = extractvalue %dx.types.CBufRet.f32 %651, 1
  %654 = extractvalue %dx.types.CBufRet.f32 %651, 2
  %655 = fadd fast float %648, %652
  %656 = fadd fast float %649, %653
  %657 = fadd fast float %650, %654
  %658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %659 = extractvalue %dx.types.CBufRet.f32 %658, 0
  %660 = fmul fast float %659, %606
  %661 = extractvalue %dx.types.CBufRet.f32 %658, 1
  %662 = fadd fast float %660, %661
  %663 = extractvalue %dx.types.CBufRet.f32 %658, 2
  %664 = fmul fast float %663, %607
  %665 = extractvalue %dx.types.CBufRet.f32 %658, 3
  %666 = fadd fast float %664, %665
  %667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %668 = extractvalue %dx.types.CBufRet.f32 %667, 0
  %669 = extractvalue %dx.types.CBufRet.f32 %667, 1
  %670 = extractvalue %dx.types.CBufRet.f32 %667, 2
  %671 = extractvalue %dx.types.CBufRet.f32 %667, 3
  %672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %673 = extractvalue %dx.types.CBufRet.f32 %672, 0
  %674 = extractvalue %dx.types.CBufRet.f32 %672, 1
  %675 = extractvalue %dx.types.CBufRet.f32 %672, 2
  %676 = extractvalue %dx.types.CBufRet.f32 %672, 3
  %677 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %17, float %662, float %666, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %678 = extractvalue %dx.types.ResRet.f32 %677, 0
  %679 = extractvalue %dx.types.ResRet.f32 %677, 1
  %680 = extractvalue %dx.types.ResRet.f32 %677, 2
  %681 = extractvalue %dx.types.ResRet.f32 %677, 3
  %682 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %17, float %662, float %666, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %683 = extractvalue %dx.types.ResRet.f32 %682, 0
  %684 = extractvalue %dx.types.ResRet.f32 %682, 1
  %685 = extractvalue %dx.types.ResRet.f32 %682, 2
  %686 = extractvalue %dx.types.ResRet.f32 %682, 3
  %687 = fmul fast float %678, %655
  %688 = fmul fast float %683, %655
  %689 = fmul fast float %685, %655
  %690 = fmul fast float %681, %655
  %691 = fadd fast float %687, %668
  %692 = fadd fast float %688, %669
  %693 = fadd fast float %689, %670
  %694 = fadd fast float %690, %671
  %695 = fmul fast float %679, %655
  %696 = fmul fast float %684, %655
  %697 = fadd fast float %695, %673
  %698 = fadd fast float %696, %674
  %699 = fmul fast float %680, %655
  %700 = fmul fast float %686, %655
  %701 = fadd fast float %699, %675
  %702 = fadd fast float %700, %676
  %703 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %17, float %662, float %666, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %704 = extractvalue %dx.types.ResRet.f32 %703, 0
  %705 = extractvalue %dx.types.ResRet.f32 %703, 1
  %706 = extractvalue %dx.types.ResRet.f32 %703, 2
  %707 = extractvalue %dx.types.ResRet.f32 %703, 3
  %708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %17, float %662, float %666, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %709 = extractvalue %dx.types.ResRet.f32 %708, 0
  %710 = extractvalue %dx.types.ResRet.f32 %708, 1
  %711 = extractvalue %dx.types.ResRet.f32 %708, 2
  %712 = extractvalue %dx.types.ResRet.f32 %708, 3
  %713 = fmul fast float %704, %656
  %714 = fmul fast float %709, %656
  %715 = fmul fast float %711, %656
  %716 = fmul fast float %707, %656
  %717 = fadd fast float %691, %713
  %718 = fadd fast float %692, %714
  %719 = fadd fast float %693, %715
  %720 = fadd fast float %694, %716
  %721 = fmul fast float %705, %656
  %722 = fmul fast float %710, %656
  %723 = fadd fast float %697, %721
  %724 = fadd fast float %698, %722
  %725 = fmul fast float %706, %656
  %726 = fmul fast float %712, %656
  %727 = fadd fast float %701, %725
  %728 = fadd fast float %702, %726
  %729 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %17, float %662, float %666, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %730 = extractvalue %dx.types.ResRet.f32 %729, 0
  %731 = extractvalue %dx.types.ResRet.f32 %729, 1
  %732 = extractvalue %dx.types.ResRet.f32 %729, 2
  %733 = extractvalue %dx.types.ResRet.f32 %729, 3
  %734 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %17, float %662, float %666, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %735 = extractvalue %dx.types.ResRet.f32 %734, 0
  %736 = extractvalue %dx.types.ResRet.f32 %734, 1
  %737 = extractvalue %dx.types.ResRet.f32 %734, 2
  %738 = extractvalue %dx.types.ResRet.f32 %734, 3
  %739 = fmul fast float %730, %657
  %740 = fmul fast float %735, %657
  %741 = fmul fast float %737, %657
  %742 = fmul fast float %733, %657
  %743 = fadd fast float %717, %739
  %744 = fadd fast float %718, %740
  %745 = fadd fast float %719, %741
  %746 = fadd fast float %720, %742
  %747 = fmul fast float %731, %657
  %748 = fmul fast float %736, %657
  %749 = fadd fast float %723, %747
  %750 = fadd fast float %724, %748
  %751 = fmul fast float %732, %657
  %752 = fmul fast float %738, %657
  %753 = fadd fast float %727, %751
  %754 = fadd fast float %728, %752
  %755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %756 = extractvalue %dx.types.CBufRet.f32 %755, 0
  %757 = fsub fast float %188, %756
  %758 = fsub fast float %599, %188
  %759 = call float @dx.op.binary.f32(i32 35, float %758, float %757)  ; FMax(a,b)
  %760 = extractvalue %dx.types.CBufRet.f32 %755, 1
  %761 = fsub fast float %189, %760
  %762 = fsub fast float %600, %189
  %763 = call float @dx.op.binary.f32(i32 35, float %762, float %761)  ; FMax(a,b)
  %764 = call float @dx.op.binary.f32(i32 35, float %759, float %763)  ; FMax(a,b)
  %765 = extractvalue %dx.types.CBufRet.f32 %603, 3
  %766 = fmul fast float %765, %764
  %767 = call float @dx.op.unary.f32(i32 7, float %766)  ; Saturate(value)
  %768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %769 = extractvalue %dx.types.CBufRet.f32 %768, 0
  %770 = extractvalue %dx.types.CBufRet.f32 %768, 1
  %771 = extractvalue %dx.types.CBufRet.f32 %768, 2
  %772 = extractvalue %dx.types.CBufRet.f32 %768, 3
  %773 = fsub fast float %769, %743
  %774 = fsub fast float %770, %744
  %775 = fsub fast float %771, %745
  %776 = fsub fast float %772, %746
  %777 = fmul fast float %773, %767
  %778 = fmul fast float %774, %767
  %779 = fmul fast float %775, %767
  %780 = fmul fast float %776, %767
  %781 = fadd fast float %777, %743
  %782 = fadd fast float %778, %744
  %783 = fadd fast float %779, %745
  %784 = fadd fast float %780, %746
  %785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %786 = extractvalue %dx.types.CBufRet.f32 %785, 0
  %787 = extractvalue %dx.types.CBufRet.f32 %785, 1
  %788 = fsub fast float %786, %749
  %789 = fsub fast float %787, %750
  %790 = fmul fast float %788, %767
  %791 = fmul fast float %789, %767
  %792 = fadd fast float %790, %749
  %793 = fadd fast float %791, %750
  %794 = extractvalue %dx.types.CBufRet.f32 %785, 2
  %795 = extractvalue %dx.types.CBufRet.f32 %785, 3
  %796 = fsub fast float %794, %753
  %797 = fsub fast float %795, %754
  %798 = fmul fast float %796, %767
  %799 = fmul fast float %797, %767
  %800 = fadd fast float %798, %753
  %801 = fadd fast float %799, %754
  %802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %803 = extractvalue %dx.types.CBufRet.f32 %802, 0
  %804 = fmul fast float %803, %781
  %805 = fmul fast float %803, %782
  %806 = fmul fast float %803, %783
  %807 = fmul fast float %803, %784
  %808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %809 = extractvalue %dx.types.CBufRet.f32 %808, 0
  %810 = fmul fast float %809, %792
  %811 = fmul fast float %809, %793
  %812 = fadd fast float %810, %804
  %813 = fadd fast float %811, %806
  %814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %815 = extractvalue %dx.types.CBufRet.f32 %814, 0
  %816 = fmul fast float %815, %800
  %817 = fmul fast float %815, %801
  %818 = fadd fast float %812, %816
  %819 = fadd fast float %813, %817
  %820 = extractvalue %dx.types.CBufRet.f32 %802, 1
  %821 = fmul fast float %820, %781
  %822 = fmul fast float %820, %782
  %823 = fmul fast float %820, %783
  %824 = fmul fast float %820, %784
  %825 = extractvalue %dx.types.CBufRet.f32 %808, 1
  %826 = fmul fast float %825, %792
  %827 = fmul fast float %825, %793
  %828 = fadd fast float %826, %821
  %829 = fadd fast float %827, %823
  %830 = extractvalue %dx.types.CBufRet.f32 %814, 1
  %831 = fmul fast float %830, %800
  %832 = fmul fast float %830, %801
  %833 = fadd fast float %828, %831
  %834 = fadd fast float %829, %832
  %835 = extractvalue %dx.types.CBufRet.f32 %802, 2
  %836 = fmul fast float %835, %781
  %837 = fmul fast float %835, %782
  %838 = fmul fast float %835, %783
  %839 = fmul fast float %835, %784
  %840 = extractvalue %dx.types.CBufRet.f32 %808, 2
  %841 = fmul fast float %840, %792
  %842 = fmul fast float %840, %793
  %843 = fadd fast float %841, %836
  %844 = fadd fast float %842, %838
  %845 = extractvalue %dx.types.CBufRet.f32 %814, 2
  %846 = fmul fast float %845, %800
  %847 = fmul fast float %845, %801
  %848 = fadd fast float %843, %846
  %849 = fadd fast float %844, %847
  %850 = fmul fast float %837, %837
  %851 = fmul fast float %849, %849
  %852 = fmul fast float %839, %839
  %853 = fadd fast float %852, %850
  %854 = fadd fast float %853, %851
  %855 = call float @dx.op.unary.f32(i32 24, float %854)  ; Sqrt(value)
  %856 = fcmp fast ugt float %855, 0.000000e+00
  br i1 %856, label %857, label %872, !dx.controlflow.hints !48

; <label>:857                                     ; preds = %597
  %858 = fsub fast float -0.000000e+00, %839
  %859 = fdiv fast float %858, %855
  %860 = fsub fast float -0.000000e+00, %837
  %861 = fdiv fast float %860, %855
  %862 = fdiv fast float %849, %855
  %863 = fmul fast float %848, 0x3FE279A760000000
  %864 = fmul fast float %861, %837
  %865 = fmul fast float %862, %849
  %866 = fmul fast float %859, %839
  %867 = fadd fast float %864, %866
  %868 = fsub fast float %867, %865
  %869 = call float @dx.op.unary.f32(i32 6, float %868)  ; FAbs(value)
  %870 = fadd fast float %869, 0x3DDB7CDFE0000000
  %871 = fdiv fast float %863, %870
  br label %872

; <label>:872                                     ; preds = %857, %597
  %873 = phi float [ %871, %857 ], [ 1.000000e+00, %597 ]
  %874 = fmul fast float %822, %822
  %875 = fmul fast float %834, %834
  %876 = fmul fast float %824, %824
  %877 = fadd fast float %876, %874
  %878 = fadd fast float %877, %875
  %879 = call float @dx.op.unary.f32(i32 24, float %878)  ; Sqrt(value)
  %880 = fcmp fast ugt float %879, 0.000000e+00
  br i1 %880, label %881, label %896, !dx.controlflow.hints !48

; <label>:881                                     ; preds = %872
  %882 = fsub fast float -0.000000e+00, %824
  %883 = fdiv fast float %882, %879
  %884 = fsub fast float -0.000000e+00, %822
  %885 = fdiv fast float %884, %879
  %886 = fdiv fast float %834, %879
  %887 = fmul fast float %833, 0x3FE279A760000000
  %888 = fmul fast float %885, %822
  %889 = fmul fast float %886, %834
  %890 = fmul fast float %883, %824
  %891 = fadd fast float %888, %890
  %892 = fsub fast float %891, %889
  %893 = call float @dx.op.unary.f32(i32 6, float %892)  ; FAbs(value)
  %894 = fadd fast float %893, 0x3DDB7CDFE0000000
  %895 = fdiv fast float %887, %894
  br label %896

; <label>:896                                     ; preds = %881, %872
  %897 = phi float [ %895, %881 ], [ 1.000000e+00, %872 ]
  %898 = call float @dx.op.binary.f32(i32 36, float %897, float %873)  ; FMin(a,b)
  %899 = fmul fast float %805, %805
  %900 = fmul fast float %819, %819
  %901 = fmul fast float %807, %807
  %902 = fadd fast float %901, %899
  %903 = fadd fast float %902, %900
  %904 = call float @dx.op.unary.f32(i32 24, float %903)  ; Sqrt(value)
  %905 = fcmp fast ugt float %904, 0.000000e+00
  br i1 %905, label %906, label %921, !dx.controlflow.hints !48

; <label>:906                                     ; preds = %896
  %907 = fsub fast float -0.000000e+00, %807
  %908 = fdiv fast float %907, %904
  %909 = fsub fast float -0.000000e+00, %805
  %910 = fdiv fast float %909, %904
  %911 = fdiv fast float %819, %904
  %912 = fmul fast float %818, 0x3FE279A760000000
  %913 = fmul fast float %910, %805
  %914 = fmul fast float %911, %819
  %915 = fmul fast float %908, %807
  %916 = fadd fast float %913, %915
  %917 = fsub fast float %916, %914
  %918 = call float @dx.op.unary.f32(i32 6, float %917)  ; FAbs(value)
  %919 = fadd fast float %918, 0x3DDB7CDFE0000000
  %920 = fdiv fast float %912, %919
  br label %921

; <label>:921                                     ; preds = %906, %896
  %922 = phi float [ %920, %906 ], [ 1.000000e+00, %896 ]
  %923 = call float @dx.op.binary.f32(i32 36, float %922, float %898)  ; FMin(a,b)
  %924 = call float @dx.op.unary.f32(i32 7, float %923)  ; Saturate(value)
  %925 = fcmp fast olt float %924, 1.000000e+00
  br i1 %925, label %926, label %936, !dx.controlflow.hints !49

; <label>:926                                     ; preds = %921
  %927 = fmul fast float %924, %805
  %928 = fmul fast float %924, %819
  %929 = fmul fast float %924, %807
  %930 = fmul fast float %924, %822
  %931 = fmul fast float %924, %834
  %932 = fmul fast float %924, %824
  %933 = fmul fast float %924, %837
  %934 = fmul fast float %924, %849
  %935 = fmul fast float %924, %839
  br label %936

; <label>:936                                     ; preds = %926, %921
  %937 = phi float [ %933, %926 ], [ %837, %921 ]
  %938 = phi float [ %934, %926 ], [ %849, %921 ]
  %939 = phi float [ %935, %926 ], [ %839, %921 ]
  %940 = phi float [ %930, %926 ], [ %822, %921 ]
  %941 = phi float [ %931, %926 ], [ %834, %921 ]
  %942 = phi float [ %932, %926 ], [ %824, %921 ]
  %943 = phi float [ %927, %926 ], [ %805, %921 ]
  %944 = phi float [ %928, %926 ], [ %819, %921 ]
  %945 = phi float [ %929, %926 ], [ %807, %921 ]
  %946 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %818)  ; FMax(a,b)
  %947 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %833)  ; FMax(a,b)
  %948 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %848)  ; FMax(a,b)
  %949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %950 = extractvalue %dx.types.CBufRet.f32 %949, 0
  %951 = fcmp fast ogt float %950, 0.000000e+00
  %952 = fcmp fast oge float %606, 0.000000e+00
  %953 = and i1 %952, %951
  %954 = fcmp fast ole float %606, 1.000000e+00
  %955 = and i1 %954, %953
  %956 = fcmp fast oge float %607, 0.000000e+00
  %957 = and i1 %956, %955
  %958 = fcmp fast ole float %607, 1.000000e+00
  %959 = and i1 %958, %957
  br i1 %959, label %960, label %1105, !dx.controlflow.hints !50

; <label>:960                                     ; preds = %936
  %961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %962 = extractvalue %dx.types.CBufRet.f32 %961, 2
  %963 = extractvalue %dx.types.CBufRet.f32 %961, 3
  %964 = fmul fast float %962, %606
  %965 = fmul fast float %963, %607
  %966 = call float @dx.op.unary.f32(i32 27, float %964)  ; Round_ni(value)
  %967 = call float @dx.op.unary.f32(i32 27, float %965)  ; Round_ni(value)
  %968 = fptosi float %966 to i32
  %969 = fptosi float %967 to i32
  %970 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %968, i32 %969, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %971 = extractvalue %dx.types.ResRet.i32 %970, 0
  %972 = and i32 %971, 65535
  %973 = lshr i32 %971, 16
  %974 = icmp eq i32 %972, 65535
  br i1 %974, label %1011, label %975, !dx.controlflow.hints !51

; <label>:975                                     ; preds = %960
  %976 = extractvalue %dx.types.CBufRet.f32 %949, 1
  %977 = extractvalue %dx.types.CBufRet.f32 %961, 0
  %978 = extractvalue %dx.types.CBufRet.f32 %961, 1
  %979 = fmul fast float %977, %606
  %980 = fmul fast float %978, %607
  %981 = fmul fast float %979, 1.250000e-01
  %982 = fmul fast float %980, 1.250000e-01
  %983 = call float @dx.op.unary.f32(i32 27, float %981)  ; Round_ni(value)
  %984 = call float @dx.op.unary.f32(i32 27, float %982)  ; Round_ni(value)
  %985 = fmul fast float %983, 8.000000e+00
  %986 = fmul fast float %984, 8.000000e+00
  %987 = and i32 %971, 255
  %988 = lshr i32 %971, 8
  %989 = and i32 %988, 255
  %990 = mul nuw nsw i32 %987, 9
  %991 = uitofp i32 %990 to float
  %992 = mul nuw nsw i32 %989, 9
  %993 = uitofp i32 %992 to float
  %994 = fadd fast float %991, 5.000000e-01
  %995 = fadd fast float %994, %979
  %996 = fsub fast float %995, %985
  %997 = fadd fast float %993, 5.000000e-01
  %998 = fadd fast float %997, %980
  %999 = fsub fast float %998, %986
  %1000 = fdiv fast float %996, %950
  %1001 = fdiv fast float %999, %976
  %1002 = fmul fast float %634, 4.375000e-01
  %1003 = fadd fast float %1002, 3.125000e-02
  %1004 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %1000, float %1001, float %1003, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1005 = extractvalue %dx.types.ResRet.f32 %1004, 0
  %1006 = extractvalue %dx.types.ResRet.f32 %1004, 1
  %1007 = extractvalue %dx.types.ResRet.f32 %1004, 2
  %1008 = fadd fast float %1005, %946
  %1009 = fadd fast float %1006, %947
  %1010 = fadd fast float %1007, %948
  br label %1011

; <label>:1011                                    ; preds = %975, %960
  %1012 = phi float [ %1010, %975 ], [ %948, %960 ]
  %1013 = phi float [ %1009, %975 ], [ %947, %960 ]
  %1014 = phi float [ %1008, %975 ], [ %946, %960 ]
  %1015 = icmp eq i32 %973, 65535
  br i1 %1015, label %1105, label %1016, !dx.controlflow.hints !52

; <label>:1016                                    ; preds = %1011
  %1017 = extractvalue %dx.types.CBufRet.f32 %949, 1
  %1018 = extractvalue %dx.types.CBufRet.f32 %961, 0
  %1019 = extractvalue %dx.types.CBufRet.f32 %961, 1
  %1020 = fmul fast float %1018, %606
  %1021 = fmul fast float %1019, %607
  %1022 = fmul fast float %1020, 1.250000e-01
  %1023 = fmul fast float %1021, 1.250000e-01
  %1024 = call float @dx.op.unary.f32(i32 27, float %1022)  ; Round_ni(value)
  %1025 = call float @dx.op.unary.f32(i32 27, float %1023)  ; Round_ni(value)
  %1026 = fmul fast float %1024, 8.000000e+00
  %1027 = fmul fast float %1025, 8.000000e+00
  %1028 = fsub fast float %1020, %1026
  %1029 = fsub fast float %1021, %1027
  %1030 = fadd fast float %1028, 5.000000e-01
  %1031 = fadd fast float %1029, 5.000000e-01
  %1032 = and i32 %973, 255
  %1033 = lshr i32 %971, 24
  %1034 = mul nuw nsw i32 %1032, 9
  %1035 = uitofp i32 %1034 to float
  %1036 = mul nuw nsw i32 %1033, 9
  %1037 = uitofp i32 %1036 to float
  %1038 = fadd fast float %1030, %1035
  %1039 = fadd fast float %1031, %1037
  %1040 = fdiv fast float %1038, %950
  %1041 = fdiv fast float %1039, %1017
  %1042 = fmul fast float %634, 4.375000e-01
  %1043 = fadd fast float %1042, 3.125000e-02
  %1044 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %1040, float %1041, float %1043, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1045 = extractvalue %dx.types.ResRet.f32 %1044, 0
  %1046 = extractvalue %dx.types.ResRet.f32 %1044, 1
  %1047 = extractvalue %dx.types.ResRet.f32 %1044, 2
  %1048 = fadd fast float %1042, 5.312500e-01
  %1049 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %1040, float %1041, float %1048, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1050 = extractvalue %dx.types.ResRet.f32 %1049, 0
  %1051 = extractvalue %dx.types.ResRet.f32 %1049, 1
  %1052 = extractvalue %dx.types.ResRet.f32 %1049, 2
  %1053 = fmul fast float %1050, 2.000000e+00
  %1054 = fmul fast float %1051, 2.000000e+00
  %1055 = fmul fast float %1052, 2.000000e+00
  %1056 = fadd fast float %1053, -1.000000e+00
  %1057 = fadd fast float %1054, -1.000000e+00
  %1058 = fadd fast float %1055, -1.000000e+00
  %1059 = fmul fast float %1056, %1056
  %1060 = fmul fast float %1057, %1057
  %1061 = fadd fast float %1059, %1060
  %1062 = fmul fast float %1058, %1058
  %1063 = fadd fast float %1061, %1062
  %1064 = call float @dx.op.unary.f32(i32 24, float %1063)  ; Sqrt(value)
  %1065 = fcmp fast ogt float %1064, 0.000000e+00
  br i1 %1065, label %1066, label %1070, !dx.controlflow.hints !53

; <label>:1066                                    ; preds = %1016
  %1067 = fdiv fast float %1056, %1064
  %1068 = fdiv fast float %1057, %1064
  %1069 = fdiv fast float %1058, %1064
  br label %1070

; <label>:1070                                    ; preds = %1066, %1016
  %1071 = phi float [ %1067, %1066 ], [ 0.000000e+00, %1016 ]
  %1072 = phi float [ %1068, %1066 ], [ 0.000000e+00, %1016 ]
  %1073 = phi float [ %1069, %1066 ], [ 0.000000e+00, %1016 ]
  %1074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1075 = extractvalue %dx.types.CBufRet.f32 %1074, 0
  %1076 = extractvalue %dx.types.CBufRet.f32 %1074, 1
  %1077 = fsub fast float %188, %1075
  %1078 = fsub fast float %189, %1076
  %1079 = fmul fast float %1077, %1077
  %1080 = fmul fast float %1078, %1078
  %1081 = fadd fast float %1079, %1080
  %1082 = call float @dx.op.unary.f32(i32 24, float %1081)  ; Sqrt(value)
  %1083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1084 = extractvalue %dx.types.CBufRet.f32 %1083, 0
  %1085 = extractvalue %dx.types.CBufRet.f32 %1083, 1
  %1086 = fsub fast float %1082, %1084
  %1087 = fdiv fast float %1086, %1085
  %1088 = call float @dx.op.unary.f32(i32 7, float %1087)  ; Saturate(value)
  %1089 = fmul fast float %1088, 2.000000e+00
  %1090 = fsub fast float 3.000000e+00, %1089
  %1091 = fmul fast float %1088, %1088
  %1092 = fmul fast float %1091, %1090
  %1093 = call float @dx.op.dot3.f32(i32 55, float %1071, float %1072, float %1073, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1094 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1093)  ; FMax(a,b)
  %1095 = fmul fast float %1094, 0x400C5BF8A0000000
  %1096 = fmul fast float %1092, %1045
  %1097 = fmul fast float %1096, %1095
  %1098 = fadd fast float %1097, %1014
  %1099 = fmul fast float %1092, %1046
  %1100 = fmul fast float %1099, %1095
  %1101 = fadd fast float %1100, %1013
  %1102 = fmul fast float %1092, %1047
  %1103 = fmul fast float %1102, %1095
  %1104 = fadd fast float %1103, %1012
  br label %1105

; <label>:1105                                    ; preds = %1070, %1011, %936
  %1106 = phi float [ %1104, %1070 ], [ %1012, %1011 ], [ %948, %936 ]
  %1107 = phi float [ %1101, %1070 ], [ %1013, %1011 ], [ %947, %936 ]
  %1108 = phi float [ %1098, %1070 ], [ %1014, %1011 ], [ %946, %936 ]
  %1109 = fcmp fast ogt float %190, %630
  %1110 = and i1 %952, %1109
  %1111 = and i1 %954, %1110
  %1112 = and i1 %956, %1111
  %1113 = and i1 %958, %1112
  br i1 %1113, label %1114, label %1171, !dx.controlflow.hints !54

; <label>:1114                                    ; preds = %1105
  %1115 = fmul fast float %632, 0x3FC24924A0000000
  %1116 = fsub fast float %190, %630
  %1117 = fdiv fast float %1116, %1115
  %1118 = call float @dx.op.unary.f32(i32 7, float %1117)  ; Saturate(value)
  %1119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1120 = extractvalue %dx.types.CBufRet.f32 %1119, 0
  %1121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1122 = extractvalue %dx.types.CBufRet.f32 %1121, 0
  %1123 = extractvalue %dx.types.CBufRet.f32 %1121, 1
  %1124 = extractvalue %dx.types.CBufRet.f32 %1121, 2
  %1125 = fsub fast float %1120, %1108
  %1126 = fsub fast float %1122, %943
  %1127 = fsub fast float %1123, %944
  %1128 = fsub fast float %1124, %945
  %1129 = fmul fast float %1125, %1118
  %1130 = fmul fast float %1126, %1118
  %1131 = fmul fast float %1127, %1118
  %1132 = fmul fast float %1128, %1118
  %1133 = fadd fast float %1129, %1108
  %1134 = fadd fast float %1130, %943
  %1135 = fadd fast float %1131, %944
  %1136 = fadd fast float %1132, %945
  %1137 = extractvalue %dx.types.CBufRet.f32 %1119, 1
  %1138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1139 = extractvalue %dx.types.CBufRet.f32 %1138, 0
  %1140 = extractvalue %dx.types.CBufRet.f32 %1138, 1
  %1141 = extractvalue %dx.types.CBufRet.f32 %1138, 2
  %1142 = fsub fast float %1137, %1107
  %1143 = fsub fast float %1139, %940
  %1144 = fsub fast float %1140, %941
  %1145 = fsub fast float %1141, %942
  %1146 = fmul fast float %1142, %1118
  %1147 = fmul fast float %1143, %1118
  %1148 = fmul fast float %1144, %1118
  %1149 = fmul fast float %1145, %1118
  %1150 = fadd fast float %1146, %1107
  %1151 = fadd fast float %1147, %940
  %1152 = fadd fast float %1148, %941
  %1153 = fadd fast float %1149, %942
  %1154 = extractvalue %dx.types.CBufRet.f32 %1119, 2
  %1155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1156 = extractvalue %dx.types.CBufRet.f32 %1155, 0
  %1157 = extractvalue %dx.types.CBufRet.f32 %1155, 1
  %1158 = extractvalue %dx.types.CBufRet.f32 %1155, 2
  %1159 = fsub fast float %1154, %1106
  %1160 = fsub fast float %1156, %937
  %1161 = fsub fast float %1157, %938
  %1162 = fsub fast float %1158, %939
  %1163 = fmul fast float %1159, %1118
  %1164 = fmul fast float %1160, %1118
  %1165 = fmul fast float %1161, %1118
  %1166 = fmul fast float %1162, %1118
  %1167 = fadd fast float %1163, %1106
  %1168 = fadd fast float %1164, %937
  %1169 = fadd fast float %1165, %938
  %1170 = fadd fast float %1166, %939
  br label %1171

; <label>:1171                                    ; preds = %1114, %1105
  %1172 = phi float [ %1167, %1114 ], [ %1106, %1105 ]
  %1173 = phi float [ %1168, %1114 ], [ %937, %1105 ]
  %1174 = phi float [ %1169, %1114 ], [ %938, %1105 ]
  %1175 = phi float [ %1170, %1114 ], [ %939, %1105 ]
  %1176 = phi float [ %1150, %1114 ], [ %1107, %1105 ]
  %1177 = phi float [ %1151, %1114 ], [ %940, %1105 ]
  %1178 = phi float [ %1152, %1114 ], [ %941, %1105 ]
  %1179 = phi float [ %1153, %1114 ], [ %942, %1105 ]
  %1180 = phi float [ %1133, %1114 ], [ %1108, %1105 ]
  %1181 = phi float [ %1134, %1114 ], [ %943, %1105 ]
  %1182 = phi float [ %1135, %1114 ], [ %944, %1105 ]
  %1183 = phi float [ %1136, %1114 ], [ %945, %1105 ]
  %1184 = extractvalue %dx.types.CBufRet.f32 %755, 3
  %1185 = fmul fast float %1184, %1180
  %1186 = fmul fast float %1184, %1176
  %1187 = fmul fast float %1184, %1172
  %1188 = fmul fast float %1181, 1.500000e+00
  %1189 = fmul fast float %1188, %1184
  %1190 = fmul fast float %1182, 1.500000e+00
  %1191 = fmul fast float %1190, %1184
  %1192 = fmul fast float %1183, 1.500000e+00
  %1193 = fmul fast float %1192, %1184
  %1194 = fmul fast float %1177, 1.500000e+00
  %1195 = fmul fast float %1194, %1184
  %1196 = fmul fast float %1178, 1.500000e+00
  %1197 = fmul fast float %1196, %1184
  %1198 = fmul fast float %1179, 1.500000e+00
  %1199 = fmul fast float %1198, %1184
  %1200 = fmul fast float %1173, 1.500000e+00
  %1201 = fmul fast float %1200, %1184
  %1202 = fmul fast float %1174, 1.500000e+00
  %1203 = fmul fast float %1202, %1184
  %1204 = fmul fast float %1175, 1.500000e+00
  %1205 = fmul fast float %1204, %1184
  %1206 = fsub fast float %595, %1185
  %1207 = fmul fast float %1206, %493
  %1208 = fadd fast float %1207, %1185
  %1209 = fsub fast float %594, %1189
  %1210 = fmul fast float %1209, %493
  %1211 = fadd fast float %1210, %1189
  %1212 = fsub fast float %593, %1191
  %1213 = fmul fast float %1212, %493
  %1214 = fadd fast float %1213, %1191
  %1215 = fsub fast float %592, %1193
  %1216 = fmul fast float %1215, %493
  %1217 = fadd fast float %1216, %1193
  %1218 = fmul fast float %591, %493
  %1219 = fmul fast float %590, %493
  %1220 = fmul fast float %589, %493
  %1221 = fmul fast float %588, %493
  %1222 = fmul fast float %587, %493
  %1223 = fsub fast float %586, %1186
  %1224 = fmul fast float %1223, %493
  %1225 = fadd fast float %1224, %1186
  %1226 = fsub fast float %585, %1195
  %1227 = fmul fast float %1226, %493
  %1228 = fadd fast float %1227, %1195
  %1229 = fsub fast float %584, %1197
  %1230 = fmul fast float %1229, %493
  %1231 = fadd fast float %1230, %1197
  %1232 = fsub fast float %583, %1199
  %1233 = fmul fast float %1232, %493
  %1234 = fadd fast float %1233, %1199
  %1235 = fmul fast float %582, %493
  %1236 = fmul fast float %581, %493
  %1237 = fmul fast float %580, %493
  %1238 = fmul fast float %579, %493
  %1239 = fmul fast float %578, %493
  %1240 = fsub fast float %577, %1187
  %1241 = fmul fast float %1240, %493
  %1242 = fadd fast float %1241, %1187
  %1243 = fsub fast float %576, %1201
  %1244 = fmul fast float %1243, %493
  %1245 = fadd fast float %1244, %1201
  %1246 = fsub fast float %575, %1203
  %1247 = fmul fast float %1246, %493
  %1248 = fadd fast float %1247, %1203
  %1249 = fsub fast float %574, %1205
  %1250 = fmul fast float %1249, %493
  %1251 = fadd fast float %1250, %1205
  %1252 = fmul fast float %573, %493
  %1253 = fmul fast float %572, %493
  %1254 = fmul fast float %571, %493
  %1255 = fmul fast float %570, %493
  %1256 = fmul fast float %569, %493
  br label %1257

; <label>:1257                                    ; preds = %1171, %568
  %1258 = phi float [ %1256, %1171 ], [ %569, %568 ]
  %1259 = phi float [ %1255, %1171 ], [ %570, %568 ]
  %1260 = phi float [ %1254, %1171 ], [ %571, %568 ]
  %1261 = phi float [ %1253, %1171 ], [ %572, %568 ]
  %1262 = phi float [ %1252, %1171 ], [ %573, %568 ]
  %1263 = phi float [ %1251, %1171 ], [ %574, %568 ]
  %1264 = phi float [ %1248, %1171 ], [ %575, %568 ]
  %1265 = phi float [ %1245, %1171 ], [ %576, %568 ]
  %1266 = phi float [ %1242, %1171 ], [ %577, %568 ]
  %1267 = phi float [ %1239, %1171 ], [ %578, %568 ]
  %1268 = phi float [ %1238, %1171 ], [ %579, %568 ]
  %1269 = phi float [ %1237, %1171 ], [ %580, %568 ]
  %1270 = phi float [ %1236, %1171 ], [ %581, %568 ]
  %1271 = phi float [ %1235, %1171 ], [ %582, %568 ]
  %1272 = phi float [ %1234, %1171 ], [ %583, %568 ]
  %1273 = phi float [ %1231, %1171 ], [ %584, %568 ]
  %1274 = phi float [ %1228, %1171 ], [ %585, %568 ]
  %1275 = phi float [ %1225, %1171 ], [ %586, %568 ]
  %1276 = phi float [ %1222, %1171 ], [ %587, %568 ]
  %1277 = phi float [ %1221, %1171 ], [ %588, %568 ]
  %1278 = phi float [ %1220, %1171 ], [ %589, %568 ]
  %1279 = phi float [ %1219, %1171 ], [ %590, %568 ]
  %1280 = phi float [ %1218, %1171 ], [ %591, %568 ]
  %1281 = phi float [ %1217, %1171 ], [ %592, %568 ]
  %1282 = phi float [ %1214, %1171 ], [ %593, %568 ]
  %1283 = phi float [ %1211, %1171 ], [ %594, %568 ]
  %1284 = phi float [ %1208, %1171 ], [ %595, %568 ]
  %1285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1286 = extractvalue %dx.types.CBufRet.f32 %1285, 2
  %1287 = fmul fast float %1286, %1286
  %1288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1289 = extractvalue %dx.types.CBufRet.f32 %1288, 0
  %1290 = extractvalue %dx.types.CBufRet.f32 %1288, 1
  %1291 = extractvalue %dx.types.CBufRet.f32 %1288, 2
  %1292 = fmul fast float %1284, 0x3FD20DD760000000
  %1293 = fmul fast float %1291, %1282
  %1294 = fmul fast float %1291, %1291
  %1295 = fmul fast float %1294, 0x3FEE471020000000
  %1296 = fadd fast float %1295, 0xBFD42F6020000000
  %1297 = fmul fast float %1296, %1278
  %1298 = fmul fast float %1289, %1281
  %1299 = fmul fast float %1290, %1283
  %1300 = fmul fast float %1291, 0x3FF17B1420000000
  %1301 = fmul fast float %1287, %1277
  %1302 = fmul fast float %1301, %1289
  %1303 = fmul fast float %1302, %1300
  %1304 = fmul fast float %1287, %1279
  %1305 = fmul fast float %1304, %1290
  %1306 = fmul fast float %1305, %1300
  %1307 = fmul fast float %1289, %1289
  %1308 = fmul fast float %1290, %1290
  %1309 = fsub fast float %1307, %1308
  %1310 = fmul fast float %1276, 0x3FE17B1420000000
  %1311 = fmul fast float %1310, %1309
  %1312 = fmul fast float %1280, 0x3FF17B1420000000
  %1313 = fmul fast float %1312, %1290
  %1314 = fmul fast float %1313, %1289
  %1315 = fadd fast float %1311, %1314
  %1316 = fadd fast float %1315, %1297
  %1317 = fmul fast float %1316, %1287
  %1318 = fsub fast float %1299, %1293
  %1319 = fadd fast float %1318, %1298
  %1320 = fmul fast float %1319, 0x3FDF454380000000
  %1321 = fmul fast float %1320, %1286
  %1322 = fsub fast float %1292, %1303
  %1323 = fsub fast float %1322, %1306
  %1324 = fadd fast float %1323, %1317
  %1325 = fadd fast float %1324, %1321
  %1326 = fmul fast float %1275, 0x3FD20DD760000000
  %1327 = fmul fast float %1291, %1273
  %1328 = fmul fast float %1296, %1269
  %1329 = fmul fast float %1289, %1272
  %1330 = fmul fast float %1290, %1274
  %1331 = fmul fast float %1287, %1268
  %1332 = fmul fast float %1331, %1289
  %1333 = fmul fast float %1332, %1300
  %1334 = fmul fast float %1287, %1270
  %1335 = fmul fast float %1334, %1290
  %1336 = fmul fast float %1335, %1300
  %1337 = fmul fast float %1267, 0x3FE17B1420000000
  %1338 = fmul fast float %1337, %1309
  %1339 = fmul fast float %1271, 0x3FF17B1420000000
  %1340 = fmul fast float %1339, %1290
  %1341 = fmul fast float %1340, %1289
  %1342 = fadd fast float %1338, %1341
  %1343 = fadd fast float %1342, %1328
  %1344 = fmul fast float %1343, %1287
  %1345 = fsub fast float %1330, %1327
  %1346 = fadd fast float %1345, %1329
  %1347 = fmul fast float %1346, 0x3FDF454380000000
  %1348 = fmul fast float %1347, %1286
  %1349 = fsub fast float %1326, %1333
  %1350 = fsub fast float %1349, %1336
  %1351 = fadd fast float %1350, %1344
  %1352 = fadd fast float %1351, %1348
  %1353 = fmul fast float %1266, 0x3FD20DD760000000
  %1354 = fmul fast float %1291, %1264
  %1355 = fmul fast float %1296, %1260
  %1356 = fmul fast float %1289, %1263
  %1357 = fmul fast float %1290, %1265
  %1358 = fmul fast float %1287, %1259
  %1359 = fmul fast float %1358, %1289
  %1360 = fmul fast float %1359, %1300
  %1361 = fmul fast float %1287, %1261
  %1362 = fmul fast float %1361, %1290
  %1363 = fmul fast float %1362, %1300
  %1364 = fmul fast float %1258, 0x3FE17B1420000000
  %1365 = fmul fast float %1364, %1309
  %1366 = fmul fast float %1262, 0x3FF17B1420000000
  %1367 = fmul fast float %1366, %1290
  %1368 = fmul fast float %1367, %1289
  %1369 = fadd fast float %1365, %1368
  %1370 = fadd fast float %1369, %1355
  %1371 = fmul fast float %1370, %1287
  %1372 = fsub fast float %1357, %1354
  %1373 = fadd fast float %1372, %1356
  %1374 = fmul fast float %1373, 0x3FDF454380000000
  %1375 = fmul fast float %1374, %1286
  %1376 = fsub fast float %1353, %1360
  %1377 = fsub fast float %1376, %1363
  %1378 = fadd fast float %1377, %1371
  %1379 = fadd fast float %1378, %1375
  %1380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1381 = extractvalue %dx.types.CBufRet.f32 %1380, 3
  %1382 = extractvalue %dx.types.CBufRet.f32 %434, 0
  %1383 = fmul fast float %1382, %1381
  %1384 = fmul fast float %1383, %1325
  %1385 = fmul fast float %1383, %1352
  %1386 = fmul fast float %1383, %1379
  %1387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1388 = extractvalue %dx.types.CBufRet.f32 %1387, 3
  %1389 = fcmp fast une float %1388, 0.000000e+00
  %1390 = extractvalue %dx.types.CBufRet.f32 %1387, 0
  %1391 = extractvalue %dx.types.CBufRet.f32 %1387, 1
  %1392 = extractvalue %dx.types.CBufRet.f32 %1387, 2
  br i1 %1389, label %1393, label %1415, !dx.controlflow.hints !55

; <label>:1393                                    ; preds = %1257
  %1394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1395 = extractvalue %dx.types.CBufRet.f32 %1394, 0
  %1396 = extractvalue %dx.types.CBufRet.f32 %1394, 1
  %1397 = extractvalue %dx.types.CBufRet.f32 %1394, 2
  %1398 = call float @dx.op.dot3.f32(i32 55, float %1390, float %1391, float %1392, float %106, float %107, float %108)  ; Dot3(ax,ay,az,bx,by,bz)
  %1399 = fcmp fast ogt float %444, 0.000000e+00
  %1400 = select i1 %1399, float 1.000000e+00, float -1.000000e+00
  %1401 = fmul fast float %1400, 5.000000e-01
  %1402 = fmul fast float %1401, %1398
  %1403 = fmul fast float %1400, %444
  %1404 = fadd fast float %1402, 4.921875e-01
  %1405 = fadd fast float %1403, -3.125000e-02
  %1406 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %17, float %1404, float 0x3FB25F3060000000, float %1405, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1407 = extractvalue %dx.types.ResRet.f32 %1406, 0
  %1408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1409 = extractvalue %dx.types.CBufRet.f32 %1408, 0
  %1410 = fmul fast float %1407, 0x400921FB60000000
  %1411 = fmul fast float %1410, %1409
  %1412 = fmul fast float %1411, %1395
  %1413 = fmul fast float %1411, %1396
  %1414 = fmul fast float %1411, %1397
  br label %1415

; <label>:1415                                    ; preds = %1393, %1257
  %1416 = phi float [ %1412, %1393 ], [ 0.000000e+00, %1257 ]
  %1417 = phi float [ %1413, %1393 ], [ 0.000000e+00, %1257 ]
  %1418 = phi float [ %1414, %1393 ], [ 0.000000e+00, %1257 ]
  %1419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1420 = extractvalue %dx.types.CBufRet.f32 %1419, 0
  %1421 = fmul fast float %1420, %1390
  %1422 = fmul fast float %1420, %1391
  %1423 = fmul fast float %1420, %1392
  %1424 = fadd fast float %1421, %188
  %1425 = fadd fast float %1422, %189
  %1426 = fadd fast float %1423, %190
  br i1 %200, label %1581, label %1427, !dx.controlflow.hints !37

; <label>:1427                                    ; preds = %1415
  %1428 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1429 = extractvalue %dx.types.CBufRet.i32 %1428, 1
  %1430 = and i32 %1429, 1
  %1431 = icmp eq i32 %1430, 0
  br i1 %1431, label %1432, label %1576, !dx.controlflow.hints !38

; <label>:1432                                    ; preds = %1427
  %1433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %1434 = extractvalue %dx.types.CBufRet.f32 %1433, 2
  %1435 = extractvalue %dx.types.CBufRet.f32 %1433, 3
  %1436 = fmul fast float %1434, %1424
  %1437 = fmul fast float %1435, %1425
  %1438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %1439 = extractvalue %dx.types.CBufRet.f32 %1438, 0
  %1440 = extractvalue %dx.types.CBufRet.f32 %1438, 1
  %1441 = fadd fast float %1436, %1439
  %1442 = fadd fast float %1437, %1440
  %1443 = call float @dx.op.unary.f32(i32 7, float %1441)  ; Saturate(value)
  %1444 = call float @dx.op.unary.f32(i32 7, float %1442)  ; Saturate(value)
  %1445 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %17, float %1443, float %1444, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1446 = extractvalue %dx.types.ResRet.f32 %1445, 0
  %1447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1448 = extractvalue %dx.types.CBufRet.f32 %1447, 0
  %1449 = fmul fast float %1448, %1446
  %1450 = fsub fast float %1441, %1443
  %1451 = fsub fast float %1442, %1444
  %1452 = extractvalue %dx.types.CBufRet.f32 %1433, 0
  %1453 = extractvalue %dx.types.CBufRet.f32 %1433, 1
  %1454 = fmul fast float %1452, %1450
  %1455 = fmul fast float %1453, %1451
  %1456 = fmul fast float %1454, %1454
  %1457 = fmul fast float %1455, %1455
  %1458 = fadd fast float %1456, %1457
  %1459 = call float @dx.op.unary.f32(i32 24, float %1458)  ; Sqrt(value)
  %1460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1461 = extractvalue %dx.types.CBufRet.f32 %1460, 3
  %1462 = fmul fast float %1461, %1459
  %1463 = call float @dx.op.unary.f32(i32 7, float %1462)  ; Saturate(value)
  %1464 = extractvalue %dx.types.CBufRet.f32 %1460, 2
  %1465 = fsub fast float %1464, %1449
  %1466 = fmul fast float %1465, %1463
  %1467 = extractvalue %dx.types.CBufRet.f32 %1447, 1
  %1468 = fsub fast float %1426, %1449
  %1469 = fsub fast float %1468, %1467
  %1470 = fsub fast float %1469, %1466
  %1471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1472 = extractvalue %dx.types.CBufRet.f32 %1471, 2
  %1473 = fsub fast float %1470, %1472
  %1474 = fcmp fast olt float %1473, 0.000000e+00
  %1475 = extractvalue %dx.types.CBufRet.i32 %1428, 0
  %1476 = icmp eq i32 %1475, 0
  br i1 %1476, label %1527, label %1477

; <label>:1477                                    ; preds = %1432
  br label %1478

; <label>:1478                                    ; preds = %1516, %1477
  %1479 = phi i32 [ %1522, %1516 ], [ 1, %1477 ]
  %1480 = phi i32 [ %1523, %1516 ], [ 0, %1477 ]
  %1481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1482 = extractvalue %dx.types.CBufRet.f32 %1481, 1
  %1483 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1484 = extractvalue %dx.types.CBufRet.i32 %1483, 1
  %1485 = and i32 %1484, 8
  %1486 = icmp eq i32 %1485, 0
  %1487 = fcmp fast ogt float %1482, %1470
  %1488 = or i1 %1487, %1486
  %1489 = add i32 %1480, 171
  %1490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 %1489)  ; CBufferLoadLegacy(handle,regIndex)
  %1491 = extractvalue %dx.types.CBufRet.f32 %1490, 0
  %1492 = extractvalue %dx.types.CBufRet.f32 %1490, 1
  %1493 = extractvalue %dx.types.CBufRet.f32 %1490, 2
  br i1 %1488, label %1494, label %1500, !dx.controlflow.hints !39

; <label>:1494                                    ; preds = %1478
  %1495 = fsub fast float %1491, %1424
  %1496 = fsub fast float %1492, %1425
  %1497 = fmul fast float %1495, %1495
  %1498 = fmul fast float %1496, %1496
  %1499 = fadd fast float %1497, %1498
  br label %1516

; <label>:1500                                    ; preds = %1478
  %1501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1502 = extractvalue %dx.types.CBufRet.f32 %1501, 2
  %1503 = extractvalue %dx.types.CBufRet.f32 %1481, 2
  %1504 = fmul fast float %1503, %1502
  %1505 = fsub fast float %1504, %1482
  %1506 = fdiv fast float %1493, %1505
  %1507 = fsub fast float %1424, %1491
  %1508 = fsub fast float %1425, %1492
  %1509 = fsub fast float %1470, %1482
  %1510 = fmul fast float %1506, %1509
  %1511 = fmul fast float %1507, %1507
  %1512 = fmul fast float %1508, %1508
  %1513 = fadd fast float %1511, %1512
  %1514 = fmul fast float %1510, %1510
  %1515 = fadd fast float %1513, %1514
  br label %1516

; <label>:1516                                    ; preds = %1500, %1494
  %1517 = phi float [ %1499, %1494 ], [ %1515, %1500 ]
  %1518 = call float @dx.op.unary.f32(i32 24, float %1517)  ; Sqrt(value)
  %1519 = fsub float %1493, %1518
  %1520 = fcmp fast olt float %1519, 0.000000e+00
  %1521 = zext i1 %1520 to i32
  %1522 = and i32 %1521, %1479
  %1523 = add i32 %1480, 1
  %1524 = extractvalue %dx.types.CBufRet.i32 %1483, 0
  %1525 = icmp ult i32 %1523, %1524
  br i1 %1525, label %1478, label %1526

; <label>:1526                                    ; preds = %1516
  br label %1527

; <label>:1527                                    ; preds = %1526, %1432
  %1528 = phi i32 [ 1, %1432 ], [ %1522, %1526 ]
  br label %1529

; <label>:1529                                    ; preds = %1529, %1527
  %1530 = phi i32 [ %1566, %1529 ], [ %1528, %1527 ]
  %1531 = phi i32 [ %1567, %1529 ], [ 0, %1527 ]
  %1532 = add nuw nsw i32 %1531, 191
  %1533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 %1532)  ; CBufferLoadLegacy(handle,regIndex)
  %1534 = extractvalue %dx.types.CBufRet.f32 %1533, 0
  %1535 = extractvalue %dx.types.CBufRet.f32 %1533, 1
  %1536 = extractvalue %dx.types.CBufRet.f32 %1533, 2
  %1537 = add nuw nsw i32 %1531, 195
  %1538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 %1537)  ; CBufferLoadLegacy(handle,regIndex)
  %1539 = extractvalue %dx.types.CBufRet.f32 %1538, 0
  %1540 = extractvalue %dx.types.CBufRet.f32 %1538, 1
  %1541 = extractvalue %dx.types.CBufRet.f32 %1538, 2
  %1542 = fsub fast float %1424, %1534
  %1543 = fsub fast float %1425, %1535
  %1544 = fsub fast float %1470, %1536
  %1545 = call float @dx.op.unary.f32(i32 6, float %1542)  ; FAbs(value)
  %1546 = call float @dx.op.unary.f32(i32 6, float %1543)  ; FAbs(value)
  %1547 = call float @dx.op.unary.f32(i32 6, float %1544)  ; FAbs(value)
  %1548 = fsub fast float %1545, %1539
  %1549 = fsub fast float %1546, %1540
  %1550 = fsub fast float %1547, %1541
  %1551 = call float @dx.op.binary.f32(i32 35, float %1548, float 0.000000e+00)  ; FMax(a,b)
  %1552 = call float @dx.op.binary.f32(i32 35, float %1549, float 0.000000e+00)  ; FMax(a,b)
  %1553 = call float @dx.op.binary.f32(i32 35, float %1550, float 0.000000e+00)  ; FMax(a,b)
  %1554 = fmul fast float %1551, %1551
  %1555 = fmul fast float %1552, %1552
  %1556 = fadd fast float %1555, %1554
  %1557 = fmul fast float %1553, %1553
  %1558 = fadd fast float %1556, %1557
  %1559 = call float @dx.op.unary.f32(i32 24, float %1558)  ; Sqrt(value)
  %1560 = call float @dx.op.binary.f32(i32 35, float %1549, float %1550)  ; FMax(a,b)
  %1561 = call float @dx.op.binary.f32(i32 35, float %1548, float %1560)  ; FMax(a,b)
  %1562 = call float @dx.op.binary.f32(i32 36, float %1561, float 0.000000e+00)  ; FMin(a,b)
  %1563 = fadd fast float %1562, %1559
  %1564 = fcmp ogt float %1563, -0.000000e+00
  %1565 = zext i1 %1564 to i32
  %1566 = and i32 %1565, %1530
  %1567 = add nuw nsw i32 %1531, 1
  %1568 = icmp eq i32 %1567, 4
  br i1 %1568, label %1569, label %1529

; <label>:1569                                    ; preds = %1529
  %1570 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1571 = extractvalue %dx.types.CBufRet.i32 %1570, 1
  %1572 = lshr i32 %1571, 1
  %1573 = xor i32 %1572, %1566
  %1574 = zext i1 %1474 to i32
  %1575 = and i32 %1573, %1574
  br label %1576

; <label>:1576                                    ; preds = %1569, %1427
  %1577 = phi i32 [ %179, %1427 ], [ %1575, %1569 ]
  %1578 = phi float [ %1426, %1427 ], [ %1470, %1569 ]
  %1579 = icmp ne i32 %1577, 0
  %1580 = zext i1 %1579 to i32
  br label %1581

; <label>:1581                                    ; preds = %1576, %1415
  %1582 = phi i32 [ %1577, %1576 ], [ %179, %1415 ]
  %1583 = phi float [ %1578, %1576 ], [ %180, %1415 ]
  %1584 = phi i32 [ %1580, %1576 ], [ 0, %1415 ]
  %1585 = icmp eq i32 %1584, 0
  br i1 %1585, label %1616, label %1586, !dx.controlflow.hints !40

; <label>:1586                                    ; preds = %1581
  %1587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1588 = extractvalue %dx.types.CBufRet.f32 %1587, 1
  %1589 = fsub fast float %1420, %1588
  %1590 = extractvalue %dx.types.CBufRet.f32 %1587, 3
  %1591 = fmul fast float %1589, %1590
  %1592 = call float @dx.op.unary.f32(i32 7, float %1591)  ; Saturate(value)
  %1593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1594 = extractvalue %dx.types.CBufRet.f32 %1593, 3
  %1595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1596 = extractvalue %dx.types.CBufRet.f32 %1595, 2
  %1597 = fsub fast float %1596, %1583
  %1598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1599 = extractvalue %dx.types.CBufRet.f32 %1598, 3
  %1600 = fmul fast float %1597, %1599
  %1601 = call float @dx.op.unary.f32(i32 7, float %1600)  ; Saturate(value)
  %1602 = fmul fast float %1601, %1594
  %1603 = extractvalue %dx.types.CBufRet.f32 %1598, 0
  %1604 = fsub fast float %1420, %1603
  %1605 = extractvalue %dx.types.CBufRet.f32 %1598, 1
  %1606 = fmul fast float %1604, %1605
  %1607 = call float @dx.op.unary.f32(i32 7, float %1606)  ; Saturate(value)
  %1608 = fsub fast float 1.000000e+00, %1592
  %1609 = fmul fast float %1607, %1608
  %1610 = fadd fast float %1609, %1592
  %1611 = extractvalue %dx.types.CBufRet.f32 %1587, 0
  %1612 = fsub fast float %1602, %1611
  %1613 = fmul fast float %1612, %1610
  %1614 = fadd fast float %1613, %1611
  %1615 = fmul fast float %1614, %1420
  br label %1616

; <label>:1616                                    ; preds = %1586, %1581
  %1617 = phi float [ %1615, %1586 ], [ 0.000000e+00, %1581 ]
  %1618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %1619 = extractvalue %dx.types.CBufRet.f32 %1618, 3
  %1620 = fmul fast float %1617, 0xBFF7154760000000
  %1621 = fmul fast float %1620, %1619
  %1622 = call float @dx.op.unary.f32(i32 21, float %1621)  ; Exp(value)
  %1623 = call float @dx.op.unary.f32(i32 7, float %1622)  ; Saturate(value)
  %1624 = fmul fast float %1623, %1416
  %1625 = fmul fast float %1623, %1417
  %1626 = fmul fast float %1623, %1418
  %1627 = fadd fast float %1624, %1384
  %1628 = fadd fast float %1625, %1385
  %1629 = fadd fast float %1626, %1386
  %1630 = fsub fast float 1.000000e+00, %453
  %1631 = fmul fast float %445, %184
  %1632 = fmul fast float %1631, %1630
  %1633 = fmul fast float %1632, %1627
  %1634 = fmul fast float %446, %184
  %1635 = fmul fast float %1634, %1630
  %1636 = fmul fast float %1635, %1628
  %1637 = fmul fast float %447, %184
  %1638 = fmul fast float %1637, %1630
  %1639 = fmul fast float %1638, %1629
  %1640 = fadd fast float %1633, %185
  %1641 = fadd fast float %1636, %186
  %1642 = fadd fast float %1639, %187
  %1643 = fdiv fast float %429, %388
  %1644 = fadd fast float %388, %191
  %1645 = fmul fast float %191, %191
  %1646 = fmul fast float %1644, %1644
  %1647 = fsub fast float %1645, %1646
  %1648 = fmul fast float %1647, -5.000000e-01
  %1649 = fmul fast float %1648, %1643
  %1650 = fadd fast float %1649, %183
  %1651 = fadd fast float %429, %192
  %1652 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1653 = extractvalue %dx.types.CBufRet.i32 %1652, 0
  %1654 = icmp eq i32 %1653, 0
  br i1 %1654, label %1681, label %1655, !dx.controlflow.hints !56

; <label>:1655                                    ; preds = %1616
  %1656 = icmp ne i32 %197, 0
  %1657 = zext i1 %1656 to i32
  %1658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1659 = extractvalue %dx.types.CBufRet.f32 %1658, 2
  %1660 = extractvalue %dx.types.CBufRet.f32 %1658, 0
  %1661 = fsub fast float %1644, %1660
  %1662 = fmul fast float %1661, %1659
  %1663 = call float @dx.op.unary.f32(i32 7, float %1662)  ; Saturate(value)
  %1664 = fadd fast float %1663, -5.000000e-01
  %1665 = fmul fast float %1664, 2.000000e+00
  %1666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1667 = extractvalue %dx.types.CBufRet.f32 %1666, 2
  %1668 = fcmp fast olt float %1665, %1667
  br i1 %1668, label %1669, label %1681, !dx.controlflow.hints !57

; <label>:1669                                    ; preds = %1655
  %1670 = fmul fast float %1665, %1665
  %1671 = fmul fast float %1630, %184
  %1672 = fmul fast float %1665, %1671
  %1673 = fmul fast float %1670, %1671
  %1674 = fmul fast float %1672, %1670
  %1675 = fmul fast float %1670, %1670
  %1676 = fmul fast float %1675, %1671
  %1677 = fadd fast float %1672, %193
  %1678 = fadd fast float %1673, %194
  %1679 = fadd fast float %1674, %195
  %1680 = fadd fast float %1676, %196
  br label %1681

; <label>:1681                                    ; preds = %1669, %1655, %1616
  %1682 = phi float [ %193, %1616 ], [ %1677, %1669 ], [ %193, %1655 ]
  %1683 = phi float [ %194, %1616 ], [ %1678, %1669 ], [ %194, %1655 ]
  %1684 = phi float [ %195, %1616 ], [ %1679, %1669 ], [ %195, %1655 ]
  %1685 = phi float [ %196, %1616 ], [ %1680, %1669 ], [ %196, %1655 ]
  %1686 = phi i32 [ %197, %1616 ], [ 1, %1669 ], [ %1657, %1655 ]
  %1687 = fmul fast float %453, %184
  br label %1688

; <label>:1688                                    ; preds = %1681, %448
  %1689 = phi float [ %449, %448 ], [ %1644, %1681 ]
  %1690 = phi i32 [ %179, %448 ], [ %1582, %1681 ]
  %1691 = phi float [ %180, %448 ], [ %1583, %1681 ]
  %1692 = phi float [ %183, %448 ], [ %1650, %1681 ]
  %1693 = phi float [ %184, %448 ], [ %1687, %1681 ]
  %1694 = phi float [ %185, %448 ], [ %1640, %1681 ]
  %1695 = phi float [ %186, %448 ], [ %1641, %1681 ]
  %1696 = phi float [ %187, %448 ], [ %1642, %1681 ]
  %1697 = phi float [ %192, %448 ], [ %1651, %1681 ]
  %1698 = phi float [ %193, %448 ], [ %1682, %1681 ]
  %1699 = phi float [ %194, %448 ], [ %1683, %1681 ]
  %1700 = phi float [ %195, %448 ], [ %1684, %1681 ]
  %1701 = phi float [ %196, %448 ], [ %1685, %1681 ]
  %1702 = phi i32 [ %197, %448 ], [ %1686, %1681 ]
  %1703 = fmul fast float %388, %106
  %1704 = fmul fast float %388, %107
  %1705 = fmul fast float %388, %108
  %1706 = fadd fast float %1703, %188
  %1707 = fadd fast float %1704, %189
  %1708 = fadd fast float %1705, %190
  %1709 = fcmp fast olt float %1689, %158
  %1710 = extractvalue %dx.types.CBufRet.f32 %434, 2
  %1711 = fcmp fast olt float %1710, %1693
  %1712 = and i1 %1709, %1711
  br i1 %1712, label %178, label %1713

; <label>:1713                                    ; preds = %1688
  br label %1714

; <label>:1714                                    ; preds = %1713, %154
  %1715 = phi float [ 0.000000e+00, %154 ], [ %1692, %1713 ]
  %1716 = phi float [ 1.000000e+00, %154 ], [ %1693, %1713 ]
  %1717 = phi float [ 0.000000e+00, %154 ], [ %1694, %1713 ]
  %1718 = phi float [ 0.000000e+00, %154 ], [ %1695, %1713 ]
  %1719 = phi float [ 0.000000e+00, %154 ], [ %1696, %1713 ]
  %1720 = phi float [ 0.000000e+00, %154 ], [ %1697, %1713 ]
  %1721 = phi float [ 0.000000e+00, %154 ], [ %1698, %1713 ]
  %1722 = phi float [ 0.000000e+00, %154 ], [ %1699, %1713 ]
  %1723 = phi float [ 0.000000e+00, %154 ], [ %1700, %1713 ]
  %1724 = phi float [ 0.000000e+00, %154 ], [ %1701, %1713 ]
  %1725 = phi i32 [ 0, %154 ], [ %1702, %1713 ]
  %1726 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1727 = extractvalue %dx.types.CBufRet.i32 %1726, 0
  %1728 = icmp eq i32 %1727, 0
  br i1 %1728, label %1770, label %1729, !dx.controlflow.hints !58

; <label>:1729                                    ; preds = %1714
  %1730 = icmp eq i32 %1725, 0
  br i1 %1730, label %1769, label %1731, !dx.controlflow.hints !59

; <label>:1731                                    ; preds = %1729
  %1732 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1733 = extractvalue %dx.types.CBufRet.i32 %1732, 2
  %1734 = icmp eq i32 %1733, 0
  br i1 %1734, label %1741, label %1735, !dx.controlflow.hints !60

; <label>:1735                                    ; preds = %1731
  %1736 = fsub fast float 1.000000e+00, %1716
  %1737 = fdiv fast float %1721, %1736
  %1738 = fdiv fast float %1722, %1736
  %1739 = fdiv fast float %1723, %1736
  %1740 = fdiv fast float %1724, %1736
  br label %1746

; <label>:1741                                    ; preds = %1731
  %1742 = fadd fast float %1721, %1716
  %1743 = fadd fast float %1722, %1716
  %1744 = fadd fast float %1723, %1716
  %1745 = fadd fast float %1724, %1716
  br label %1746

; <label>:1746                                    ; preds = %1741, %1735
  %1747 = phi float [ %1737, %1735 ], [ %1742, %1741 ]
  %1748 = phi float [ %1738, %1735 ], [ %1743, %1741 ]
  %1749 = phi float [ %1739, %1735 ], [ %1744, %1741 ]
  %1750 = phi float [ %1740, %1735 ], [ %1745, %1741 ]
  %1751 = call float @dx.op.binary.f32(i32 35, float %1747, float -1.000000e+00)  ; FMax(a,b)
  %1752 = call float @dx.op.binary.f32(i32 35, float %1748, float -1.000000e+00)  ; FMax(a,b)
  %1753 = call float @dx.op.binary.f32(i32 35, float %1749, float -1.000000e+00)  ; FMax(a,b)
  %1754 = call float @dx.op.binary.f32(i32 35, float %1750, float -1.000000e+00)  ; FMax(a,b)
  %1755 = call float @dx.op.binary.f32(i32 36, float %1751, float 1.000000e+00)  ; FMin(a,b)
  %1756 = call float @dx.op.binary.f32(i32 36, float %1752, float 1.000000e+00)  ; FMin(a,b)
  %1757 = call float @dx.op.binary.f32(i32 36, float %1753, float 1.000000e+00)  ; FMin(a,b)
  %1758 = call float @dx.op.binary.f32(i32 36, float %1754, float 1.000000e+00)  ; FMin(a,b)
  %1759 = fmul fast float %1755, 1.500000e+00
  %1760 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1757, float %1759)  ; FMad(a,b,c)
  %1761 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1756, float 0.000000e+00)  ; FMad(a,b,c)
  %1762 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1758, float %1761)  ; FMad(a,b,c)
  %1763 = fmul fast float %1755, 0x3FEBB67AE0000000
  %1764 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1757, float %1763)  ; FMad(a,b,c)
  %1765 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1756, float 0.000000e+00)  ; FMad(a,b,c)
  %1766 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1758, float %1765)  ; FMad(a,b,c)
  %1767 = fadd fast float %1760, 5.000000e-01
  %1768 = fadd fast float %1764, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %20, i32 %21, i32 0, float %1767, float %1762, float %1768, float %1766, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1770

; <label>:1769                                    ; preds = %1729
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %20, i32 %21, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1770

; <label>:1770                                    ; preds = %1769, %1746, %1714
  %1771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1772 = extractvalue %dx.types.CBufRet.f32 %1771, 2
  %1773 = fsub fast float %1716, %1772
  %1774 = fdiv fast float %1773, %1772
  %1775 = call float @dx.op.unary.f32(i32 7, float %1774)  ; Saturate(value)
  %1776 = fmul fast float %1775, 2.000000e+00
  %1777 = fsub fast float 3.000000e+00, %1776
  %1778 = fmul fast float %1775, %1775
  %1779 = fmul fast float %1778, %1716
  %1780 = fmul fast float %1779, %1777
  %1781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1782 = extractvalue %dx.types.CBufRet.f32 %1781, 0
  %1783 = extractvalue %dx.types.CBufRet.f32 %1781, 1
  %1784 = extractvalue %dx.types.CBufRet.f32 %1781, 2
  %1785 = call float @dx.op.dot3.f32(i32 55, float %106, float %107, float %108, float %1782, float %1783, float %1784)  ; Dot3(ax,ay,az,bx,by,bz)
  %1786 = fmul fast float %1785, %1715
  %1787 = fcmp fast ogt float %1720, 0.000000e+00
  %1788 = fdiv fast float 1.000000e+00, %1720
  %1789 = fmul fast float %1786, %1788
  %1790 = select i1 %1787, float %1789, float %117
  %1791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1792 = extractvalue %dx.types.CBufRet.f32 %1791, 0
  %1793 = extractvalue %dx.types.CBufRet.f32 %1791, 1
  %1794 = extractvalue %dx.types.CBufRet.f32 %1791, 2
  %1795 = fmul fast float %1792, %70
  %1796 = fmul fast float %1793, %70
  %1797 = fmul fast float %1794, %70
  %1798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1799 = extractvalue %dx.types.CBufRet.f32 %1798, 0
  %1800 = extractvalue %dx.types.CBufRet.f32 %1798, 1
  %1801 = extractvalue %dx.types.CBufRet.f32 %1798, 2
  %1802 = fmul fast float %1799, %71
  %1803 = fmul fast float %1800, %71
  %1804 = fmul fast float %1801, %71
  %1805 = fadd fast float %1802, %1795
  %1806 = fadd fast float %1803, %1796
  %1807 = fadd fast float %1804, %1797
  %1808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1809 = extractvalue %dx.types.CBufRet.f32 %1808, 0
  %1810 = extractvalue %dx.types.CBufRet.f32 %1808, 1
  %1811 = extractvalue %dx.types.CBufRet.f32 %1808, 2
  %1812 = fadd fast float %1805, %1809
  %1813 = fadd fast float %1806, %1810
  %1814 = fadd fast float %1807, %1811
  %1815 = fmul fast float %1812, %1790
  %1816 = fmul fast float %1813, %1790
  %1817 = fmul fast float %1814, %1790
  %1818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1819 = extractvalue %dx.types.CBufRet.f32 %1818, 0
  %1820 = extractvalue %dx.types.CBufRet.f32 %1818, 1
  %1821 = extractvalue %dx.types.CBufRet.f32 %1818, 2
  %1822 = extractvalue %dx.types.CBufRet.f32 %1818, 3
  %1823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1824 = extractvalue %dx.types.CBufRet.f32 %1823, 0
  %1825 = extractvalue %dx.types.CBufRet.f32 %1823, 1
  %1826 = extractvalue %dx.types.CBufRet.f32 %1823, 2
  %1827 = extractvalue %dx.types.CBufRet.f32 %1823, 3
  %1828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1829 = extractvalue %dx.types.CBufRet.f32 %1828, 0
  %1830 = extractvalue %dx.types.CBufRet.f32 %1828, 1
  %1831 = extractvalue %dx.types.CBufRet.f32 %1828, 2
  %1832 = extractvalue %dx.types.CBufRet.f32 %1828, 3
  %1833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1834 = extractvalue %dx.types.CBufRet.f32 %1833, 0
  %1835 = extractvalue %dx.types.CBufRet.f32 %1833, 1
  %1836 = extractvalue %dx.types.CBufRet.f32 %1833, 2
  %1837 = extractvalue %dx.types.CBufRet.f32 %1833, 3
  %1838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1839 = extractvalue %dx.types.CBufRet.f32 %1838, 3
  %1840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1841 = extractvalue %dx.types.CBufRet.f32 %1840, 3
  %1842 = extractvalue %dx.types.CBufRet.f32 %1840, 0
  %1843 = extractvalue %dx.types.CBufRet.f32 %1840, 1
  %1844 = extractvalue %dx.types.CBufRet.f32 %1840, 2
  %1845 = fcmp fast olt float %1844, -5.000000e-01
  %1846 = call float @dx.op.dot3.f32(i32 55, float %1815, float %1816, float %1817, float %1815, float %1816, float %1817)  ; Dot3(ax,ay,az,bx,by,bz)
  %1847 = call float @dx.op.unary.f32(i32 25, float %1846)  ; Rsqrt(value)
  %1848 = fmul fast float %1847, %1846
  %1849 = fmul fast float %1847, %1815
  %1850 = fmul fast float %1847, %1816
  %1851 = fmul fast float %1847, %1817
  %1852 = fadd fast float %1848, %1822
  %1853 = call float @dx.op.dot3.f32(i32 55, float %1849, float %1850, float %1851, float %1819, float %1820, float %1821)  ; Dot3(ax,ay,az,bx,by,bz)
  %1854 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1855 = extractvalue %dx.types.CBufRet.i32 %1854, 1
  %1856 = and i32 %1855, 1
  %1857 = icmp ne i32 %1856, 0
  %1858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1859 = extractvalue %dx.types.CBufRet.f32 %1858, 2
  %1860 = fcmp fast ogt float %1859, 0.000000e+00
  %1861 = and i1 %1857, %1860
  br i1 %1861, label %1862, label %2268, !dx.controlflow.hints !61

; <label>:1862                                    ; preds = %1770
  %1863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1864 = extractvalue %dx.types.CBufRet.f32 %1863, 3
  %1865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1866 = extractvalue %dx.types.CBufRet.f32 %1865, 2
  %1867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1868 = extractvalue %dx.types.CBufRet.f32 %1867, 2
  %1869 = fsub fast float %1866, %1868
  %1870 = and i32 %1855, 2
  %1871 = extractvalue %dx.types.CBufRet.i32 %1854, 0
  %1872 = call i32 @dx.op.binary.i32(i32 40, i32 %1871, i32 3)  ; UMin(a,b)
  %1873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1874 = extractvalue %dx.types.CBufRet.f32 %1873, 0
  %1875 = extractvalue %dx.types.CBufRet.f32 %1873, 1
  %1876 = extractvalue %dx.types.CBufRet.f32 %1867, 0
  %1877 = extractvalue %dx.types.CBufRet.f32 %1867, 1
  %1878 = fsub fast float %1874, %1876
  %1879 = fsub fast float %1875, %1877
  %1880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1881 = extractvalue %dx.types.CBufRet.f32 %1880, 0
  %1882 = fcmp fast ogt float %1881, 0.000000e+00
  %1883 = fsub fast float -0.000000e+00, %1878
  %1884 = fsub fast float -0.000000e+00, %1879
  %1885 = call float @dx.op.dot2.f32(i32 54, float %1849, float %1850, float %1849, float %1850)  ; Dot2(ax,ay,bx,by)
  %1886 = call float @dx.op.dot2.f32(i32 54, float %1849, float %1850, float %1883, float %1884)  ; Dot2(ax,ay,bx,by)
  %1887 = fmul fast float %1886, 2.000000e+00
  %1888 = call float @dx.op.dot2.f32(i32 54, float %1883, float %1884, float %1883, float %1884)  ; Dot2(ax,ay,bx,by)
  %1889 = fmul fast float %1881, %1881
  %1890 = fsub fast float %1888, %1889
  %1891 = fmul fast float %1887, %1887
  %1892 = fmul fast float %1885, 4.000000e+00
  %1893 = fmul fast float %1892, %1890
  %1894 = fsub fast float %1891, %1893
  %1895 = fcmp fast ogt float %1894, 0.000000e+00
  br i1 %1895, label %1896, label %1911, !dx.controlflow.hints !62

; <label>:1896                                    ; preds = %1862
  %1897 = fcmp fast ogt float %1887, 0.000000e+00
  %1898 = call float @dx.op.unary.f32(i32 24, float %1894)  ; Sqrt(value)
  %1899 = fsub fast float -0.000000e+00, %1898
  %1900 = select i1 %1897, float %1898, float %1899
  %1901 = fadd fast float %1900, %1887
  %1902 = fmul float %1901, -5.000000e-01
  %1903 = fdiv fast float %1902, %1885
  %1904 = call float @dx.op.binary.f32(i32 35, float %1903, float 0.000000e+00)  ; FMax(a,b)
  %1905 = call float @dx.op.binary.f32(i32 36, float %1848, float %1904)  ; FMin(a,b)
  %1906 = fdiv fast float %1890, %1902
  %1907 = call float @dx.op.binary.f32(i32 35, float %1906, float 0.000000e+00)  ; FMax(a,b)
  %1908 = call float @dx.op.binary.f32(i32 36, float %1848, float %1907)  ; FMin(a,b)
  %1909 = call float @dx.op.binary.f32(i32 36, float %1905, float %1908)  ; FMin(a,b)
  %1910 = call float @dx.op.binary.f32(i32 35, float %1905, float %1908)  ; FMax(a,b)
  br label %1911

; <label>:1911                                    ; preds = %1896, %1862
  %1912 = phi float [ %1910, %1896 ], [ -1.000000e+00, %1862 ]
  %1913 = phi float [ %1909, %1896 ], [ -1.000000e+00, %1862 ]
  %1914 = phi i1 [ true, %1896 ], [ false, %1862 ]
  %1915 = and i1 %1882, %1914
  br i1 %1915, label %1916, label %1918, !dx.controlflow.hints !63

; <label>:1916                                    ; preds = %1911
  %1917 = fcmp fast oeq float %1913, %1912
  br i1 %1917, label %2221, label %1919, !dx.controlflow.hints !64

; <label>:1918                                    ; preds = %1911
  br i1 %1882, label %2221, label %1919, !dx.controlflow.hints !65

; <label>:1919                                    ; preds = %1918, %1916
  %1920 = phi float [ %1848, %1918 ], [ %1912, %1916 ]
  %1921 = phi float [ 0.000000e+00, %1918 ], [ %1913, %1916 ]
  %1922 = icmp ne i32 %1870, 0
  %1923 = fmul fast float %1920, %1851
  %1924 = fadd fast float %1923, %1864
  %1925 = fmul fast float %1924, %1920
  %1926 = select i1 %1922, float 0.000000e+00, float %1925
  %1927 = fcmp fast oeq float %1851, 0.000000e+00
  %1928 = fdiv fast float %1869, %1851
  %1929 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1928)  ; FMax(a,b)
  %1930 = select i1 %1927, float %1920, float %1929
  %1931 = call float @dx.op.binary.f32(i32 36, float %1920, float %1930)  ; FMin(a,b)
  %1932 = fcmp fast ogt float %1851, 0.000000e+00
  %1933 = fcmp fast olt float %1869, 0.000000e+00
  br i1 %1932, label %1934, label %1991, !dx.controlflow.hints !66

; <label>:1934                                    ; preds = %1919
  %1935 = icmp eq i32 %1870, 0
  br i1 %1933, label %1936, label %1980, !dx.controlflow.hints !67

; <label>:1936                                    ; preds = %1934
  %1937 = select i1 %1935, float %1920, float 0.000000e+00
  %1938 = fsub fast float -0.000000e+00, %1937
  %1939 = call float @dx.op.unary.f32(i32 6, float %1938)  ; FAbs(value)
  %1940 = fmul fast float %1937, %1851
  %1941 = fadd fast float %1940, %1864
  %1942 = fmul fast float %1939, %1941
  %1943 = fsub fast float %1926, %1942
  %1944 = fsub fast float %1920, %1939
  %1945 = select i1 %1935, float %1944, float 0.000000e+00
  %1946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1947 = extractvalue %dx.types.CBufRet.f32 %1946, 0
  %1948 = extractvalue %dx.types.CBufRet.f32 %1946, 1
  %1949 = extractvalue %dx.types.CBufRet.f32 %1946, 2
  %1950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1951 = extractvalue %dx.types.CBufRet.f32 %1950, 0
  %1952 = extractvalue %dx.types.CBufRet.f32 %1950, 1
  %1953 = extractvalue %dx.types.CBufRet.f32 %1950, 2
  %1954 = extractvalue %dx.types.CBufRet.f32 %1950, 3
  %1955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1956 = extractvalue %dx.types.CBufRet.f32 %1955, 3
  %1957 = call float @dx.op.binary.f32(i32 36, float %1943, float %1956)  ; FMin(a,b)
  %1958 = fmul fast float %1954, %1945
  %1959 = call float @dx.op.unary.f32(i32 7, float %1958)  ; Saturate(value)
  %1960 = fsub fast float %1951, %1947
  %1961 = fsub fast float %1952, %1948
  %1962 = fsub fast float %1953, %1949
  %1963 = fmul fast float %1959, %1960
  %1964 = fmul fast float %1959, %1961
  %1965 = fmul fast float %1959, %1962
  %1966 = fadd fast float %1963, %1947
  %1967 = fadd fast float %1964, %1948
  %1968 = fadd fast float %1965, %1949
  %1969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1970 = extractvalue %dx.types.CBufRet.f32 %1969, 0
  %1971 = extractvalue %dx.types.CBufRet.f32 %1969, 1
  %1972 = fadd fast float %1971, %1970
  %1973 = call float @dx.op.unary.f32(i32 7, float %1972)  ; Saturate(value)
  %1974 = extractvalue %dx.types.CBufRet.f32 %1969, 2
  %1975 = extractvalue %dx.types.CBufRet.f32 %1969, 3
  %1976 = fadd fast float %1975, %1974
  %1977 = call float @dx.op.unary.f32(i32 7, float %1976)  ; Saturate(value)
  %1978 = fmul fast float %1973, %1957
  %1979 = fmul fast float %1978, %1977
  br label %2221

; <label>:1980                                    ; preds = %1934
  br i1 %1935, label %1981, label %2002, !dx.controlflow.hints !68

; <label>:1981                                    ; preds = %1980
  %1982 = call float @dx.op.binary.f32(i32 36, float %1931, float %1921)  ; FMin(a,b)
  %1983 = fsub fast float %1931, %1982
  %1984 = fsub fast float %1983, %1920
  %1985 = call float @dx.op.unary.f32(i32 6, float %1984)  ; FAbs(value)
  %1986 = fadd fast float %1983, %1920
  %1987 = fmul fast float %1986, %1851
  %1988 = fadd fast float %1987, %1864
  %1989 = fmul fast float %1988, %1985
  %1990 = fsub fast float %1926, %1989
  br label %2002

; <label>:1991                                    ; preds = %1919
  br i1 %1933, label %1992, label %2002, !dx.controlflow.hints !69

; <label>:1992                                    ; preds = %1991
  %1993 = call float @dx.op.binary.f32(i32 35, float %1921, float %1931)  ; FMax(a,b)
  %1994 = icmp eq i32 %1870, 0
  %1995 = select i1 %1994, float %1931, float 0.000000e+00
  %1996 = fsub fast float -0.000000e+00, %1995
  %1997 = call float @dx.op.unary.f32(i32 6, float %1996)  ; FAbs(value)
  %1998 = fmul fast float %1995, %1851
  %1999 = fadd fast float %1998, %1864
  %2000 = fmul fast float %1997, %1999
  %2001 = fsub fast float %1926, %2000
  br label %2002

; <label>:2002                                    ; preds = %1992, %1991, %1981, %1980
  %2003 = phi float [ %1921, %1980 ], [ %1921, %1981 ], [ %1993, %1992 ], [ %1921, %1991 ]
  %2004 = phi float [ 0.000000e+00, %1980 ], [ %1985, %1981 ], [ %1997, %1992 ], [ 0.000000e+00, %1991 ]
  %2005 = phi float [ %1926, %1980 ], [ %1990, %1981 ], [ %2001, %1992 ], [ %1926, %1991 ]
  %2006 = phi float [ %1931, %1980 ], [ %1931, %1981 ], [ %1920, %1992 ], [ %1920, %1991 ]
  %2007 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 0
  store float -1.000000e+00, float* %2007, align 4, !tbaa !70, !noalias !74
  %2008 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 1
  store float -1.000000e+00, float* %2008, align 4, !tbaa !70, !noalias !74
  %2009 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 2
  store float -1.000000e+00, float* %2009, align 4, !tbaa !70, !noalias !74
  %2010 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 0
  store float -1.000000e+00, float* %2010, align 4, !tbaa !70, !noalias !74
  %2011 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 1
  store float -1.000000e+00, float* %2011, align 4, !tbaa !70, !noalias !74
  %2012 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 2
  store float -1.000000e+00, float* %2012, align 4, !tbaa !70, !noalias !74
  %2013 = icmp sgt i32 %1872, 0
  br i1 %2013, label %2014, label %2075

; <label>:2014                                    ; preds = %2002
  br label %2015

; <label>:2015                                    ; preds = %2064, %2014
  %2016 = phi i32 [ %2065, %2064 ], [ 0, %2014 ]
  %2017 = phi i32 [ %2066, %2064 ], [ 0, %2014 ]
  %2018 = add nuw i32 %2017, 171
  %2019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 %2018)  ; CBufferLoadLegacy(handle,regIndex)
  %2020 = extractvalue %dx.types.CBufRet.f32 %2019, 0
  %2021 = extractvalue %dx.types.CBufRet.f32 %2019, 1
  %2022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2023 = extractvalue %dx.types.CBufRet.f32 %2022, 0
  %2024 = extractvalue %dx.types.CBufRet.f32 %2022, 1
  %2025 = fsub fast float %2020, %2023
  %2026 = fsub fast float %2021, %2024
  %2027 = extractvalue %dx.types.CBufRet.f32 %2019, 2
  %2028 = fsub fast float -0.000000e+00, %2025
  %2029 = fsub fast float -0.000000e+00, %2026
  %2030 = call float @dx.op.dot2.f32(i32 54, float %1849, float %1850, float %2028, float %2029)  ; Dot2(ax,ay,bx,by)
  %2031 = fmul fast float %2030, 2.000000e+00
  %2032 = call float @dx.op.dot2.f32(i32 54, float %2028, float %2029, float %2028, float %2029)  ; Dot2(ax,ay,bx,by)
  %2033 = fmul fast float %2027, %2027
  %2034 = fsub fast float %2032, %2033
  %2035 = fmul fast float %2031, %2031
  %2036 = fmul fast float %1892, %2034
  %2037 = fsub fast float %2035, %2036
  %2038 = fcmp fast ogt float %2037, 0.000000e+00
  br i1 %2038, label %2039, label %2054, !dx.controlflow.hints !62

; <label>:2039                                    ; preds = %2015
  %2040 = fcmp fast ogt float %2031, 0.000000e+00
  %2041 = call float @dx.op.unary.f32(i32 24, float %2037)  ; Sqrt(value)
  %2042 = fsub fast float -0.000000e+00, %2041
  %2043 = select i1 %2040, float %2041, float %2042
  %2044 = fadd fast float %2043, %2031
  %2045 = fmul float %2044, -5.000000e-01
  %2046 = fdiv fast float %2045, %1885
  %2047 = call float @dx.op.binary.f32(i32 35, float %2046, float 0.000000e+00)  ; FMax(a,b)
  %2048 = call float @dx.op.binary.f32(i32 36, float %1920, float %2047)  ; FMin(a,b)
  %2049 = fdiv fast float %2034, %2045
  %2050 = call float @dx.op.binary.f32(i32 35, float %2049, float 0.000000e+00)  ; FMax(a,b)
  %2051 = call float @dx.op.binary.f32(i32 36, float %1920, float %2050)  ; FMin(a,b)
  %2052 = call float @dx.op.binary.f32(i32 36, float %2048, float %2051)  ; FMin(a,b)
  %2053 = call float @dx.op.binary.f32(i32 35, float %2048, float %2051)  ; FMax(a,b)
  br label %2054

; <label>:2054                                    ; preds = %2039, %2015
  %2055 = phi float [ %2053, %2039 ], [ -1.000000e+00, %2015 ]
  %2056 = phi float [ %2052, %2039 ], [ -1.000000e+00, %2015 ]
  %2057 = phi i1 [ true, %2039 ], [ false, %2015 ]
  br i1 %2057, label %2058, label %2064, !dx.controlflow.hints !85

; <label>:2058                                    ; preds = %2054
  %2059 = call float @dx.op.binary.f32(i32 35, float %2003, float %2056)  ; FMax(a,b)
  %2060 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 %2017
  store float %2059, float* %2060, align 4, !tbaa !70, !noalias !74
  %2061 = call float @dx.op.binary.f32(i32 35, float %2003, float %2055)  ; FMax(a,b)
  %2062 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 %2017
  store float %2061, float* %2062, align 4, !tbaa !70, !noalias !74
  %2063 = add nsw i32 %2016, 1
  br label %2064

; <label>:2064                                    ; preds = %2058, %2054
  %2065 = phi i32 [ %2063, %2058 ], [ %2016, %2054 ]
  %2066 = add nuw nsw i32 %2017, 1
  %2067 = icmp eq i32 %2066, %1872
  br i1 %2067, label %2068, label %2015

; <label>:2068                                    ; preds = %2064
  %2069 = load float, float* %2009, align 4, !tbaa !70, !alias.scope !86, !noalias !89
  %2070 = load float, float* %2008, align 4, !tbaa !70, !alias.scope !92, !noalias !93
  %2071 = load float, float* %2007, align 4, !tbaa !70, !alias.scope !94, !noalias !95
  %2072 = load float, float* %2012, align 4, !tbaa !70, !alias.scope !96, !noalias !99
  %2073 = load float, float* %2011, align 4, !tbaa !70, !alias.scope !102, !noalias !103
  %2074 = load float, float* %2010, align 4, !tbaa !70, !alias.scope !104, !noalias !105
  br label %2075

; <label>:2075                                    ; preds = %2068, %2002
  %2076 = phi float [ -1.000000e+00, %2002 ], [ %2074, %2068 ]
  %2077 = phi float [ -1.000000e+00, %2002 ], [ %2073, %2068 ]
  %2078 = phi float [ -1.000000e+00, %2002 ], [ %2072, %2068 ]
  %2079 = phi float [ -1.000000e+00, %2002 ], [ %2071, %2068 ]
  %2080 = phi float [ -1.000000e+00, %2002 ], [ %2070, %2068 ]
  %2081 = phi float [ -1.000000e+00, %2002 ], [ %2069, %2068 ]
  %2082 = phi i32 [ 0, %2002 ], [ %2065, %2068 ]
  %2083 = call float @dx.op.binary.f32(i32 36, float %2080, float %2081)  ; FMin(a,b)
  %2084 = call float @dx.op.binary.f32(i32 36, float %2079, float %2083)  ; FMin(a,b)
  %2085 = call float @dx.op.binary.f32(i32 35, float %2079, float %2080)  ; FMax(a,b)
  %2086 = call float @dx.op.binary.f32(i32 36, float %2085, float %2081)  ; FMin(a,b)
  %2087 = call float @dx.op.binary.f32(i32 36, float %2079, float %2080)  ; FMin(a,b)
  %2088 = call float @dx.op.binary.f32(i32 35, float %2087, float %2086)  ; FMax(a,b)
  %2089 = call float @dx.op.binary.f32(i32 35, float %2080, float %2081)  ; FMax(a,b)
  %2090 = call float @dx.op.binary.f32(i32 35, float %2079, float %2089)  ; FMax(a,b)
  store float %2084, float* %2007, align 4, !tbaa !70, !alias.scope !94, !noalias !95
  store float %2088, float* %2008, align 4, !tbaa !70, !alias.scope !92, !noalias !93
  store float %2090, float* %2009, align 4, !tbaa !70, !alias.scope !86, !noalias !89
  %2091 = call float @dx.op.binary.f32(i32 36, float %2077, float %2078)  ; FMin(a,b)
  %2092 = call float @dx.op.binary.f32(i32 36, float %2076, float %2091)  ; FMin(a,b)
  %2093 = call float @dx.op.binary.f32(i32 35, float %2076, float %2077)  ; FMax(a,b)
  %2094 = call float @dx.op.binary.f32(i32 36, float %2093, float %2078)  ; FMin(a,b)
  %2095 = call float @dx.op.binary.f32(i32 36, float %2076, float %2077)  ; FMin(a,b)
  %2096 = call float @dx.op.binary.f32(i32 35, float %2095, float %2094)  ; FMax(a,b)
  %2097 = call float @dx.op.binary.f32(i32 35, float %2077, float %2078)  ; FMax(a,b)
  %2098 = call float @dx.op.binary.f32(i32 35, float %2076, float %2097)  ; FMax(a,b)
  store float %2092, float* %2010, align 4, !tbaa !70, !alias.scope !104, !noalias !105
  store float %2096, float* %2011, align 4, !tbaa !70, !alias.scope !102, !noalias !103
  store float %2098, float* %2012, align 4, !tbaa !70, !alias.scope !96, !noalias !99
  %2099 = sub nsw i32 3, %2082
  %2100 = icmp sgt i32 %2099, 2
  br i1 %2100, label %2101, label %2139, !dx.controlflow.hints !106

; <label>:2101                                    ; preds = %2075
  %2102 = icmp eq i32 %1870, 0
  %2103 = fsub fast float %1920, %2004
  %2104 = select i1 %2102, float %2103, float %2004
  %2105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2106 = extractvalue %dx.types.CBufRet.f32 %2105, 0
  %2107 = extractvalue %dx.types.CBufRet.f32 %2105, 1
  %2108 = extractvalue %dx.types.CBufRet.f32 %2105, 2
  %2109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2110 = extractvalue %dx.types.CBufRet.f32 %2109, 0
  %2111 = extractvalue %dx.types.CBufRet.f32 %2109, 1
  %2112 = extractvalue %dx.types.CBufRet.f32 %2109, 2
  %2113 = extractvalue %dx.types.CBufRet.f32 %2109, 3
  %2114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2115 = extractvalue %dx.types.CBufRet.f32 %2114, 3
  %2116 = call float @dx.op.binary.f32(i32 36, float %2005, float %2115)  ; FMin(a,b)
  %2117 = fmul fast float %2113, %2104
  %2118 = call float @dx.op.unary.f32(i32 7, float %2117)  ; Saturate(value)
  %2119 = fsub fast float %2110, %2106
  %2120 = fsub fast float %2111, %2107
  %2121 = fsub fast float %2112, %2108
  %2122 = fmul fast float %2118, %2119
  %2123 = fmul fast float %2118, %2120
  %2124 = fmul fast float %2118, %2121
  %2125 = fadd fast float %2122, %2106
  %2126 = fadd fast float %2123, %2107
  %2127 = fadd fast float %2124, %2108
  %2128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2129 = extractvalue %dx.types.CBufRet.f32 %2128, 0
  %2130 = extractvalue %dx.types.CBufRet.f32 %2128, 1
  %2131 = fadd fast float %2130, %2129
  %2132 = call float @dx.op.unary.f32(i32 7, float %2131)  ; Saturate(value)
  %2133 = extractvalue %dx.types.CBufRet.f32 %2128, 2
  %2134 = extractvalue %dx.types.CBufRet.f32 %2128, 3
  %2135 = fadd fast float %2134, %2133
  %2136 = call float @dx.op.unary.f32(i32 7, float %2135)  ; Saturate(value)
  %2137 = fmul fast float %2132, %2116
  %2138 = fmul fast float %2137, %2136
  br label %2221

; <label>:2139                                    ; preds = %2075
  %2140 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 %2099
  %2141 = load float, float* %2140, align 4, !tbaa !70, !noalias !74
  %2142 = fcmp fast olt float %2141, %2006
  %2143 = icmp sgt i32 %2082, 0
  %2144 = and i1 %2143, %2142
  br i1 %2144, label %2145, label %2182

; <label>:2145                                    ; preds = %2139
  br label %2146

; <label>:2146                                    ; preds = %2175, %2145
  %2147 = phi float [ %2176, %2175 ], [ %2004, %2145 ]
  %2148 = phi float [ %2177, %2175 ], [ %2005, %2145 ]
  %2149 = phi float [ %2157, %2175 ], [ %2141, %2145 ]
  %2150 = phi i32 [ %2154, %2175 ], [ %2099, %2145 ]
  %2151 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 %2150
  %2152 = load float, float* %2151, align 4, !tbaa !70, !noalias !74
  %2153 = icmp slt i32 %2150, 2
  %2154 = add nsw i32 %2150, 1
  %2155 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 %2154
  %2156 = load float, float* %2155, align 4, !tbaa !70, !noalias !74
  %2157 = select i1 %2153, float %2156, float %1920
  %2158 = call float @dx.op.binary.f32(i32 36, float %2157, float %2152)  ; FMin(a,b)
  %2159 = call float @dx.op.binary.f32(i32 36, float %2006, float %2158)  ; FMin(a,b)
  %2160 = icmp eq i32 %1870, 0
  %2161 = fadd fast float %2159, %2149
  %2162 = fmul fast float %2161, %1851
  %2163 = fadd fast float %2162, %1864
  br i1 %2160, label %2169, label %2164, !dx.controlflow.hints !107

; <label>:2164                                    ; preds = %2146
  %2165 = fsub fast float %2159, %2149
  %2166 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2165)  ; FMax(a,b)
  %2167 = fmul fast float %2166, %2163
  %2168 = fadd fast float %2167, %2148
  br label %2175

; <label>:2169                                    ; preds = %2146
  %2170 = fsub fast float %2149, %2159
  %2171 = call float @dx.op.unary.f32(i32 6, float %2170)  ; FAbs(value)
  %2172 = fadd fast float %2171, %2147
  %2173 = fmul fast float %2171, %2163
  %2174 = fsub fast float %2148, %2173
  br label %2175

; <label>:2175                                    ; preds = %2169, %2164
  %2176 = phi float [ %2166, %2164 ], [ %2172, %2169 ]
  %2177 = phi float [ %2168, %2164 ], [ %2174, %2169 ]
  %2178 = fcmp fast olt float %2157, %2006
  %2179 = icmp slt i32 %2154, 3
  %2180 = and i1 %2179, %2178
  br i1 %2180, label %2146, label %2181

; <label>:2181                                    ; preds = %2175
  br label %2182

; <label>:2182                                    ; preds = %2181, %2139
  %2183 = phi float [ %2004, %2139 ], [ %2176, %2181 ]
  %2184 = phi float [ %2005, %2139 ], [ %2177, %2181 ]
  %2185 = fsub fast float %1920, %2183
  %2186 = select i1 %1922, float %2183, float %2185
  %2187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2188 = extractvalue %dx.types.CBufRet.f32 %2187, 0
  %2189 = extractvalue %dx.types.CBufRet.f32 %2187, 1
  %2190 = extractvalue %dx.types.CBufRet.f32 %2187, 2
  %2191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2192 = extractvalue %dx.types.CBufRet.f32 %2191, 0
  %2193 = extractvalue %dx.types.CBufRet.f32 %2191, 1
  %2194 = extractvalue %dx.types.CBufRet.f32 %2191, 2
  %2195 = extractvalue %dx.types.CBufRet.f32 %2191, 3
  %2196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2197 = extractvalue %dx.types.CBufRet.f32 %2196, 3
  %2198 = call float @dx.op.binary.f32(i32 36, float %2184, float %2197)  ; FMin(a,b)
  %2199 = fmul fast float %2195, %2186
  %2200 = call float @dx.op.unary.f32(i32 7, float %2199)  ; Saturate(value)
  %2201 = fsub fast float %2192, %2188
  %2202 = fsub fast float %2193, %2189
  %2203 = fsub fast float %2194, %2190
  %2204 = fmul fast float %2200, %2201
  %2205 = fmul fast float %2200, %2202
  %2206 = fmul fast float %2200, %2203
  %2207 = fadd fast float %2204, %2188
  %2208 = fadd fast float %2205, %2189
  %2209 = fadd fast float %2206, %2190
  %2210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2211 = extractvalue %dx.types.CBufRet.f32 %2210, 0
  %2212 = extractvalue %dx.types.CBufRet.f32 %2210, 1
  %2213 = fadd fast float %2212, %2211
  %2214 = call float @dx.op.unary.f32(i32 7, float %2213)  ; Saturate(value)
  %2215 = extractvalue %dx.types.CBufRet.f32 %2210, 2
  %2216 = extractvalue %dx.types.CBufRet.f32 %2210, 3
  %2217 = fadd fast float %2216, %2215
  %2218 = call float @dx.op.unary.f32(i32 7, float %2217)  ; Saturate(value)
  %2219 = fmul fast float %2214, %2198
  %2220 = fmul fast float %2219, %2218
  br label %2221

; <label>:2221                                    ; preds = %2182, %2101, %1936, %1918, %1916
  %2222 = phi float [ %1945, %1936 ], [ %2104, %2101 ], [ %2186, %2182 ], [ 0.000000e+00, %1916 ], [ 0.000000e+00, %1918 ]
  %2223 = phi float [ %1979, %1936 ], [ %2138, %2101 ], [ %2220, %2182 ], [ 0.000000e+00, %1916 ], [ 0.000000e+00, %1918 ]
  %2224 = phi float [ %1966, %1936 ], [ %2125, %2101 ], [ %2207, %2182 ], [ 0.000000e+00, %1916 ], [ 0.000000e+00, %1918 ]
  %2225 = phi float [ %1967, %1936 ], [ %2126, %2101 ], [ %2208, %2182 ], [ 0.000000e+00, %1916 ], [ 0.000000e+00, %1918 ]
  %2226 = phi float [ %1968, %1936 ], [ %2127, %2101 ], [ %2209, %2182 ], [ 0.000000e+00, %1916 ], [ 0.000000e+00, %1918 ]
  %2227 = fmul fast float %1859, %2223
  %2228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2229 = extractvalue %dx.types.CBufRet.f32 %2228, 2
  %2230 = fsub fast float %1866, %2229
  %2231 = fcmp fast olt float %2227, -2.000000e+01
  %2232 = call float @dx.op.unary.f32(i32 21, float %2227)  ; Exp(value)
  %2233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2234 = extractvalue %dx.types.CBufRet.f32 %2233, 2
  %2235 = extractvalue %dx.types.CBufRet.f32 %2233, 3
  %2236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2237 = extractvalue %dx.types.CBufRet.f32 %2236, 2
  %2238 = fmul fast float %2235, %2230
  %2239 = call float @dx.op.unary.f32(i32 7, float %2238)  ; Saturate(value)
  %2240 = fsub fast float 1.000000e+00, %2239
  %2241 = fmul fast float %1851, 5.000000e-01
  %2242 = fadd fast float %2241, 5.000000e-01
  %2243 = call float @dx.op.unary.f32(i32 7, float %2242)  ; Saturate(value)
  %2244 = fsub fast float 1.000000e+00, %2243
  %2245 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2240)  ; FMax(a,b)
  %2246 = fdiv fast float %2244, %2245
  %2247 = fsub fast float %2230, %1817
  %2248 = call float @dx.op.unary.f32(i32 6, float %2247)  ; FAbs(value)
  %2249 = fmul fast float %2248, %2234
  %2250 = call float @dx.op.unary.f32(i32 7, float %2246)  ; Saturate(value)
  %2251 = fsub fast float 1.000000e+00, %2249
  %2252 = fmul fast float %2251, %2250
  %2253 = fadd fast float %2252, %2249
  %2254 = fmul fast float %2237, %2230
  %2255 = call float @dx.op.unary.f32(i32 7, float %2254)  ; Saturate(value)
  %2256 = fsub fast float 1.000000e+00, %2253
  %2257 = fmul fast float %2256, %2255
  %2258 = fadd fast float %2257, %2253
  %2259 = call float @dx.op.unary.f32(i32 7, float %2258)  ; Saturate(value)
  %2260 = fadd fast float %2232, -1.000000e+00
  %2261 = select i1 %2231, float -1.000000e+00, float %2260
  %2262 = fmul fast float %2259, %2261
  %2263 = fadd fast float %2262, 1.000000e+00
  %2264 = fsub fast float -0.000000e+00, %2262
  %2265 = fmul fast float %2224, %2264
  %2266 = fmul fast float %2225, %2264
  %2267 = fmul fast float %2226, %2264
  br label %2268

; <label>:2268                                    ; preds = %2221, %1770
  %2269 = phi float [ %2222, %2221 ], [ 0.000000e+00, %1770 ]
  %2270 = phi float [ %2263, %2221 ], [ 1.000000e+00, %1770 ]
  %2271 = phi float [ %2265, %2221 ], [ 0.000000e+00, %1770 ]
  %2272 = phi float [ %2266, %2221 ], [ 0.000000e+00, %1770 ]
  %2273 = phi float [ %2267, %2221 ], [ 0.000000e+00, %1770 ]
  %2274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2275 = extractvalue %dx.types.CBufRet.f32 %2274, 1
  %2276 = fsub fast float 1.000000e+00, %2270
  %2277 = fmul fast float %2276, %1852
  %2278 = fmul fast float %2277, %2275
  %2279 = fsub fast float %1852, %2278
  br i1 %1845, label %2280, label %2309, !dx.controlflow.hints !108

; <label>:2280                                    ; preds = %2268
  %2281 = fmul fast float %1853, %1842
  %2282 = fadd fast float %2281, %1843
  %2283 = call float @dx.op.unary.f32(i32 7, float %2282)  ; Saturate(value)
  %2284 = fmul fast float %1824, %2279
  %2285 = fsub fast float -0.000000e+00, %2284
  %2286 = fmul fast float %1825, %2279
  %2287 = fsub fast float -0.000000e+00, %2286
  %2288 = call float @dx.op.unary.f32(i32 21, float %2285)  ; Exp(value)
  %2289 = call float @dx.op.unary.f32(i32 21, float %2287)  ; Exp(value)
  %2290 = call float @dx.op.binary.f32(i32 35, float %1832, float %2288)  ; FMax(a,b)
  %2291 = call float @dx.op.binary.f32(i32 35, float %1832, float %2289)  ; FMax(a,b)
  %2292 = fsub fast float %2291, %2290
  %2293 = fmul fast float %2292, %2283
  %2294 = fadd fast float %2293, %2290
  %2295 = call float @dx.op.unary.f32(i32 7, float %2294)  ; Saturate(value)
  %2296 = fsub fast float %1829, %1834
  %2297 = fsub fast float %1830, %1835
  %2298 = fsub fast float %1831, %1836
  %2299 = fmul fast float %2283, %2296
  %2300 = fmul fast float %2283, %2297
  %2301 = fmul fast float %2283, %2298
  %2302 = fadd fast float %2299, %1834
  %2303 = fadd fast float %2300, %1835
  %2304 = fadd fast float %2301, %1836
  %2305 = fsub fast float 1.000000e+00, %2295
  %2306 = fmul fast float %2305, %2302
  %2307 = fmul fast float %2305, %2303
  %2308 = fmul fast float %2305, %2304
  br label %2368

; <label>:2309                                    ; preds = %2268
  %2310 = fmul fast float %2279, %1841
  %2311 = call float @dx.op.unary.f32(i32 7, float %2310)  ; Saturate(value)
  %2312 = fsub fast float 2.000000e+00, %2311
  %2313 = fmul fast float %2311, 9.921875e-01
  %2314 = fmul fast float %2313, %2312
  %2315 = fadd fast float %2314, 3.906250e-03
  %2316 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %2315, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2317 = extractvalue %dx.types.ResRet.f32 %2316, 0
  %2318 = fsub fast float %2311, %2317
  %2319 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2318)  ; FMax(a,b)
  %2320 = fmul fast float %1827, %1817
  %2321 = call float @dx.op.unary.f32(i32 6, float %2320)  ; FAbs(value)
  %2322 = fcmp fast ogt float %2321, 0x3EB0C6F7A0000000
  br i1 %2322, label %2323, label %2329, !dx.controlflow.hints !109

; <label>:2323                                    ; preds = %2309
  %2324 = fmul fast float %2320, 0xBFF7154760000000
  %2325 = call float @dx.op.unary.f32(i32 21, float %2324)  ; Exp(value)
  %2326 = fsub fast float 1.000000e+00, %2325
  %2327 = fdiv fast float %2326, %2320
  %2328 = fmul fast float %2327, %1837
  br label %2329

; <label>:2329                                    ; preds = %2323, %2309
  %2330 = phi float [ %2328, %2323 ], [ %1837, %2309 ]
  %2331 = fadd fast float %2330, %1839
  %2332 = fmul fast float %2331, %2319
  %2333 = fmul fast float %1824, %2332
  %2334 = fsub fast float -0.000000e+00, %2333
  %2335 = fmul fast float %1825, %2332
  %2336 = fsub fast float -0.000000e+00, %2335
  %2337 = fmul fast float %1826, %2332
  %2338 = fsub fast float -0.000000e+00, %2337
  %2339 = call float @dx.op.unary.f32(i32 21, float %2334)  ; Exp(value)
  %2340 = call float @dx.op.unary.f32(i32 21, float %2336)  ; Exp(value)
  %2341 = call float @dx.op.unary.f32(i32 21, float %2338)  ; Exp(value)
  %2342 = fmul fast float %1853, %1853
  %2343 = fadd fast float %2342, 1.000000e+00
  %2344 = fmul fast float %2343, 0x3FAE8EC8A0000000
  %2345 = fmul fast float %2344, %1834
  %2346 = fmul fast float %2344, %1835
  %2347 = fmul fast float %2344, %1836
  %2348 = fmul fast float %1853, %1832
  %2349 = fsub fast float 1.000000e+00, %2348
  %2350 = fmul fast float %1832, %1832
  %2351 = fsub fast float 1.000000e+00, %2350
  %2352 = fmul fast float %2351, 0x3FB45F3060000000
  %2353 = fmul fast float %2349, %2349
  %2354 = fdiv fast float 1.000000e+00, %2353
  %2355 = fmul fast float %2352, %2354
  %2356 = fmul fast float %2355, %1829
  %2357 = fmul fast float %2355, %1830
  %2358 = fmul fast float %2355, %1831
  %2359 = fadd fast float %2356, %2345
  %2360 = fadd fast float %2357, %2346
  %2361 = fadd fast float %2358, %2347
  %2362 = fsub fast float 1.000000e+00, %2339
  %2363 = fsub fast float 1.000000e+00, %2340
  %2364 = fsub fast float 1.000000e+00, %2341
  %2365 = fmul fast float %2359, %2362
  %2366 = fmul fast float %2360, %2363
  %2367 = fmul fast float %2361, %2364
  br label %2368

; <label>:2368                                    ; preds = %2329, %2280
  %2369 = phi float [ %2306, %2280 ], [ %2365, %2329 ]
  %2370 = phi float [ %2307, %2280 ], [ %2366, %2329 ]
  %2371 = phi float [ %2308, %2280 ], [ %2367, %2329 ]
  %2372 = phi float [ %2295, %2280 ], [ %2339, %2329 ]
  %2373 = phi float [ %2295, %2280 ], [ %2340, %2329 ]
  %2374 = phi float [ %2295, %2280 ], [ %2341, %2329 ]
  br i1 %1861, label %2375, label %2573, !dx.controlflow.hints !110

; <label>:2375                                    ; preds = %2368
  %2376 = extractvalue %dx.types.CBufRet.f32 %2274, 0
  %2377 = fmul fast float %2376, %2276
  %2378 = fsub fast float %2271, %2369
  %2379 = fsub fast float %2272, %2370
  %2380 = fsub fast float %2273, %2371
  %2381 = fmul fast float %2377, %2378
  %2382 = fmul fast float %2377, %2379
  %2383 = fmul fast float %2377, %2380
  %2384 = fadd fast float %2381, %2369
  %2385 = fadd fast float %2382, %2370
  %2386 = fadd fast float %2383, %2371
  %2387 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2372)  ; FMax(a,b)
  %2388 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2373)  ; FMax(a,b)
  %2389 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2374)  ; FMax(a,b)
  %2390 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2270)  ; FMax(a,b)
  %2391 = call float @dx.op.binary.f32(i32 35, float %2269, float %2279)  ; FMax(a,b)
  %2392 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2391)  ; FMax(a,b)
  %2393 = fdiv fast float %2269, %2392
  %2394 = call float @dx.op.unary.f32(i32 7, float %2393)  ; Saturate(value)
  %2395 = fdiv fast float %2279, %2392
  %2396 = call float @dx.op.unary.f32(i32 7, float %2395)  ; Saturate(value)
  %2397 = fcmp fast une float %2390, 1.000000e+00
  br i1 %2397, label %2398, label %2411, !dx.controlflow.hints !111

; <label>:2398                                    ; preds = %2375
  %2399 = call float @dx.op.unary.f32(i32 23, float %2390)  ; Log(value)
  %2400 = fmul fast float %2399, 0x3FE62E4300000000
  %2401 = fmul fast float %2271, %2400
  %2402 = fsub fast float -0.000000e+00, %2401
  %2403 = fmul fast float %2272, %2400
  %2404 = fsub fast float -0.000000e+00, %2403
  %2405 = fmul fast float %2273, %2400
  %2406 = fsub fast float -0.000000e+00, %2405
  %2407 = fsub fast float 1.000000e+00, %2390
  %2408 = fdiv fast float %2402, %2407
  %2409 = fdiv fast float %2404, %2407
  %2410 = fdiv fast float %2406, %2407
  br label %2411

; <label>:2411                                    ; preds = %2398, %2375
  %2412 = phi float [ %2408, %2398 ], [ %2271, %2375 ]
  %2413 = phi float [ %2409, %2398 ], [ %2272, %2375 ]
  %2414 = phi float [ %2410, %2398 ], [ %2273, %2375 ]
  %2415 = phi float [ %2400, %2398 ], [ 0.000000e+00, %2375 ]
  %2416 = fcmp fast une float %2387, 1.000000e+00
  br i1 %2416, label %2417, label %2424, !dx.controlflow.hints !112

; <label>:2417                                    ; preds = %2411
  %2418 = call float @dx.op.unary.f32(i32 23, float %2387)  ; Log(value)
  %2419 = fmul fast float %2418, 0x3FE62E4300000000
  %2420 = fmul fast float %2384, %2419
  %2421 = fsub fast float -0.000000e+00, %2420
  %2422 = fsub fast float 1.000000e+00, %2387
  %2423 = fdiv fast float %2421, %2422
  br label %2424

; <label>:2424                                    ; preds = %2417, %2411
  %2425 = phi float [ %2423, %2417 ], [ %2384, %2411 ]
  %2426 = phi float [ %2419, %2417 ], [ 0.000000e+00, %2411 ]
  %2427 = fcmp fast une float %2388, 1.000000e+00
  br i1 %2427, label %2428, label %2435, !dx.controlflow.hints !112

; <label>:2428                                    ; preds = %2424
  %2429 = call float @dx.op.unary.f32(i32 23, float %2388)  ; Log(value)
  %2430 = fmul fast float %2429, 0x3FE62E4300000000
  %2431 = fmul fast float %2385, %2430
  %2432 = fsub fast float -0.000000e+00, %2431
  %2433 = fsub fast float 1.000000e+00, %2388
  %2434 = fdiv fast float %2432, %2433
  br label %2435

; <label>:2435                                    ; preds = %2428, %2424
  %2436 = phi float [ %2434, %2428 ], [ %2385, %2424 ]
  %2437 = phi float [ %2430, %2428 ], [ 0.000000e+00, %2424 ]
  %2438 = fcmp fast une float %2389, 1.000000e+00
  br i1 %2438, label %2439, label %2446, !dx.controlflow.hints !112

; <label>:2439                                    ; preds = %2435
  %2440 = call float @dx.op.unary.f32(i32 23, float %2389)  ; Log(value)
  %2441 = fmul fast float %2440, 0x3FE62E4300000000
  %2442 = fmul fast float %2386, %2441
  %2443 = fsub fast float -0.000000e+00, %2442
  %2444 = fsub fast float 1.000000e+00, %2389
  %2445 = fdiv fast float %2443, %2444
  br label %2446

; <label>:2446                                    ; preds = %2439, %2435
  %2447 = phi float [ %2445, %2439 ], [ %2386, %2435 ]
  %2448 = phi float [ %2441, %2439 ], [ 0.000000e+00, %2435 ]
  %2449 = fmul fast float %2412, %2396
  %2450 = fmul fast float %2413, %2396
  %2451 = fmul fast float %2414, %2396
  %2452 = fmul fast float %2415, %2396
  %2453 = fmul fast float %2425, %2394
  %2454 = fmul fast float %2436, %2394
  %2455 = fmul fast float %2447, %2394
  %2456 = fmul fast float %2426, %2394
  %2457 = fmul fast float %2437, %2394
  %2458 = fmul fast float %2448, %2394
  %2459 = fadd fast float %2453, %2449
  %2460 = fadd fast float %2454, %2450
  %2461 = fadd fast float %2455, %2451
  %2462 = fadd fast float %2456, %2452
  %2463 = fadd fast float %2457, %2452
  %2464 = fadd fast float %2458, %2452
  %2465 = fcmp fast une float %2462, 0.000000e+00
  br i1 %2465, label %2466, label %2473, !dx.controlflow.hints !113

; <label>:2466                                    ; preds = %2446
  %2467 = fmul fast float %2462, 0x3FF7154760000000
  %2468 = call float @dx.op.unary.f32(i32 21, float %2467)  ; Exp(value)
  %2469 = fsub fast float 1.000000e+00, %2468
  %2470 = fmul fast float %2459, %2469
  %2471 = fsub fast float -0.000000e+00, %2470
  %2472 = fdiv fast float %2471, %2462
  br label %2473

; <label>:2473                                    ; preds = %2466, %2446
  %2474 = phi float [ %2468, %2466 ], [ 1.000000e+00, %2446 ]
  %2475 = phi float [ %2472, %2466 ], [ %2459, %2446 ]
  %2476 = fcmp fast une float %2463, 0.000000e+00
  br i1 %2476, label %2477, label %2484, !dx.controlflow.hints !113

; <label>:2477                                    ; preds = %2473
  %2478 = fmul fast float %2463, 0x3FF7154760000000
  %2479 = call float @dx.op.unary.f32(i32 21, float %2478)  ; Exp(value)
  %2480 = fsub fast float 1.000000e+00, %2479
  %2481 = fmul fast float %2460, %2480
  %2482 = fsub fast float -0.000000e+00, %2481
  %2483 = fdiv fast float %2482, %2463
  br label %2484

; <label>:2484                                    ; preds = %2477, %2473
  %2485 = phi float [ %2479, %2477 ], [ 1.000000e+00, %2473 ]
  %2486 = phi float [ %2483, %2477 ], [ %2460, %2473 ]
  %2487 = fcmp fast une float %2464, 0.000000e+00
  br i1 %2487, label %2488, label %2495, !dx.controlflow.hints !113

; <label>:2488                                    ; preds = %2484
  %2489 = fmul fast float %2464, 0x3FF7154760000000
  %2490 = call float @dx.op.unary.f32(i32 21, float %2489)  ; Exp(value)
  %2491 = fsub fast float 1.000000e+00, %2490
  %2492 = fmul fast float %2461, %2491
  %2493 = fsub fast float -0.000000e+00, %2492
  %2494 = fdiv fast float %2493, %2464
  br label %2495

; <label>:2495                                    ; preds = %2488, %2484
  %2496 = phi float [ %2490, %2488 ], [ 1.000000e+00, %2484 ]
  %2497 = phi float [ %2494, %2488 ], [ %2461, %2484 ]
  %2498 = fcmp fast ogt float %2394, %2396
  br i1 %2498, label %2499, label %2519, !dx.controlflow.hints !114

; <label>:2499                                    ; preds = %2495
  %2500 = fsub fast float 1.000000e+00, %2396
  %2501 = fmul fast float %2412, %2500
  %2502 = fmul fast float %2413, %2500
  %2503 = fmul fast float %2414, %2500
  %2504 = fmul fast float %2415, %2500
  %2505 = fcmp fast une float %2504, 0.000000e+00
  br i1 %2505, label %2506, label %2557, !dx.controlflow.hints !115

; <label>:2506                                    ; preds = %2499
  %2507 = fmul fast float %2504, 0x3FF7154760000000
  %2508 = call float @dx.op.unary.f32(i32 21, float %2507)  ; Exp(value)
  %2509 = fsub fast float 1.000000e+00, %2508
  %2510 = fmul fast float %2501, %2509
  %2511 = fsub fast float -0.000000e+00, %2510
  %2512 = fmul fast float %2502, %2509
  %2513 = fsub fast float -0.000000e+00, %2512
  %2514 = fmul fast float %2503, %2509
  %2515 = fsub fast float -0.000000e+00, %2514
  %2516 = fdiv fast float %2511, %2504
  %2517 = fdiv fast float %2513, %2504
  %2518 = fdiv fast float %2515, %2504
  br label %2557

; <label>:2519                                    ; preds = %2495
  %2520 = fsub fast float 1.000000e+00, %2394
  %2521 = fmul fast float %2425, %2520
  %2522 = fmul fast float %2436, %2520
  %2523 = fmul fast float %2447, %2520
  %2524 = fmul fast float %2426, %2520
  %2525 = fmul fast float %2437, %2520
  %2526 = fmul fast float %2448, %2520
  %2527 = fcmp fast une float %2524, 0.000000e+00
  br i1 %2527, label %2528, label %2535, !dx.controlflow.hints !113

; <label>:2528                                    ; preds = %2519
  %2529 = fmul fast float %2524, 0x3FF7154760000000
  %2530 = call float @dx.op.unary.f32(i32 21, float %2529)  ; Exp(value)
  %2531 = fsub fast float 1.000000e+00, %2530
  %2532 = fmul fast float %2521, %2531
  %2533 = fsub fast float -0.000000e+00, %2532
  %2534 = fdiv fast float %2533, %2524
  br label %2535

; <label>:2535                                    ; preds = %2528, %2519
  %2536 = phi float [ %2534, %2528 ], [ %2521, %2519 ]
  %2537 = phi float [ %2530, %2528 ], [ 1.000000e+00, %2519 ]
  %2538 = fcmp fast une float %2525, 0.000000e+00
  br i1 %2538, label %2539, label %2546, !dx.controlflow.hints !113

; <label>:2539                                    ; preds = %2535
  %2540 = fmul fast float %2525, 0x3FF7154760000000
  %2541 = call float @dx.op.unary.f32(i32 21, float %2540)  ; Exp(value)
  %2542 = fsub fast float 1.000000e+00, %2541
  %2543 = fmul fast float %2522, %2542
  %2544 = fsub fast float -0.000000e+00, %2543
  %2545 = fdiv fast float %2544, %2525
  br label %2546

; <label>:2546                                    ; preds = %2539, %2535
  %2547 = phi float [ %2545, %2539 ], [ %2522, %2535 ]
  %2548 = phi float [ %2541, %2539 ], [ 1.000000e+00, %2535 ]
  %2549 = fcmp fast une float %2526, 0.000000e+00
  br i1 %2549, label %2550, label %2557, !dx.controlflow.hints !113

; <label>:2550                                    ; preds = %2546
  %2551 = fmul fast float %2526, 0x3FF7154760000000
  %2552 = call float @dx.op.unary.f32(i32 21, float %2551)  ; Exp(value)
  %2553 = fsub fast float 1.000000e+00, %2552
  %2554 = fmul fast float %2523, %2553
  %2555 = fsub fast float -0.000000e+00, %2554
  %2556 = fdiv fast float %2555, %2526
  br label %2557

; <label>:2557                                    ; preds = %2550, %2546, %2506, %2499
  %2558 = phi float [ %2556, %2550 ], [ %2518, %2506 ], [ %2503, %2499 ], [ %2523, %2546 ]
  %2559 = phi float [ %2547, %2550 ], [ %2517, %2506 ], [ %2502, %2499 ], [ %2547, %2546 ]
  %2560 = phi float [ %2536, %2550 ], [ %2516, %2506 ], [ %2501, %2499 ], [ %2536, %2546 ]
  %2561 = phi float [ %2552, %2550 ], [ %2508, %2506 ], [ 1.000000e+00, %2499 ], [ 1.000000e+00, %2546 ]
  %2562 = phi float [ %2548, %2550 ], [ %2508, %2506 ], [ 1.000000e+00, %2499 ], [ %2548, %2546 ]
  %2563 = phi float [ %2537, %2550 ], [ %2508, %2506 ], [ 1.000000e+00, %2499 ], [ %2537, %2546 ]
  %2564 = fmul fast float %2563, %2475
  %2565 = fmul fast float %2562, %2486
  %2566 = fmul fast float %2561, %2497
  %2567 = fadd fast float %2564, %2560
  %2568 = fadd fast float %2565, %2559
  %2569 = fadd fast float %2566, %2558
  %2570 = fmul fast float %2563, %2474
  %2571 = fmul fast float %2562, %2485
  %2572 = fmul fast float %2561, %2496
  br label %2573

; <label>:2573                                    ; preds = %2557, %2368
  %2574 = phi float [ %2374, %2368 ], [ %2572, %2557 ]
  %2575 = phi float [ %2373, %2368 ], [ %2571, %2557 ]
  %2576 = phi float [ %2372, %2368 ], [ %2570, %2557 ]
  %2577 = phi float [ %2371, %2368 ], [ %2569, %2557 ]
  %2578 = phi float [ %2370, %2368 ], [ %2568, %2557 ]
  %2579 = phi float [ %2369, %2368 ], [ %2567, %2557 ]
  %2580 = fmul fast float %2576, %1717
  %2581 = fmul fast float %2575, %1718
  %2582 = fmul fast float %2574, %1719
  %2583 = fsub fast float 1.000000e+00, %1780
  %2584 = fmul fast float %2579, %2583
  %2585 = fmul fast float %2578, %2583
  %2586 = fmul fast float %2577, %2583
  %2587 = fadd fast float %2584, %2580
  %2588 = fadd fast float %2585, %2581
  %2589 = fadd fast float %2586, %2582
  %2590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %2591 = extractvalue %dx.types.CBufRet.f32 %2590, 2
  %2592 = fmul fast float %2591, %1790
  %2593 = call float @dx.op.unary.f32(i32 7, float %2592)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %20, i32 %21, i32 undef, float %1780, float %1780, float %1780, float %1780, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2595 = extractvalue %dx.types.CBufRet.f32 %2594, 0
  %2596 = fmul fast float %2595, %2587
  %2597 = fmul fast float %2595, %2588
  %2598 = fmul fast float %2595, %2589
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %20, i32 %21, i32 undef, float %2596, float %2597, float %2598, float %2596, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %20, i32 %21, i32 undef, float %2593, float %2593, float %2593, float %2593, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!dx.entryPoints = !{!31}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !20, !26, !29}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !15, !16, !17, !18, !19}
!6 = !{i32 0, %"class.Texture3D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 27, i32 1, i32 2, i32 0, !7}
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
!29 = !{!30}
!30 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!31 = !{void ()* @cs_fog_raymarching_brfog, !"cs_fog_raymarching_brfog", null, !4, !32}
!32 = !{i32 0, i64 272, i32 4, !33}
!33 = !{i32 8, i32 8, i32 1}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 1}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 1}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 1}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 1}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 1}
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
!61 = distinct !{!61, !"dx.controlflow.hints", i32 1}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = !{!71, !71, i64 0}
!71 = !{!"float", !72, i64 0}
!72 = !{!"omnipotent char", !73, i64 0}
!73 = !{!"Simple C/C++ TBAA"}
!74 = !{!75, !77, !79, !80, !82, !83, !84}
!75 = distinct !{!75, !76, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!76 = distinct !{!76, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!77 = distinct !{!77, !78, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!78 = distinct !{!78, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!79 = distinct !{!79, !78, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!80 = distinct !{!80, !81, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!81 = distinct !{!81, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!82 = distinct !{!82, !81, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!83 = distinct !{!83, !81, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!84 = distinct !{!84, !81, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = !{!87}
!87 = distinct !{!87, !88, !"\01?sort@@YAXAIAM00@Z: %c"}
!88 = distinct !{!88, !"\01?sort@@YAXAIAM00@Z"}
!89 = !{!90, !91, !75, !77, !79, !80, !82, !83, !84}
!90 = distinct !{!90, !88, !"\01?sort@@YAXAIAM00@Z: %a"}
!91 = distinct !{!91, !88, !"\01?sort@@YAXAIAM00@Z: %b"}
!92 = !{!91}
!93 = !{!90, !87, !75, !77, !79, !80, !82, !83, !84}
!94 = !{!90}
!95 = !{!91, !87, !75, !77, !79, !80, !82, !83, !84}
!96 = !{!97}
!97 = distinct !{!97, !98, !"\01?sort@@YAXAIAM00@Z: %c"}
!98 = distinct !{!98, !"\01?sort@@YAXAIAM00@Z"}
!99 = !{!100, !101, !75, !77, !79, !80, !82, !83, !84}
!100 = distinct !{!100, !98, !"\01?sort@@YAXAIAM00@Z: %a"}
!101 = distinct !{!101, !98, !"\01?sort@@YAXAIAM00@Z: %b"}
!102 = !{!101}
!103 = !{!100, !97, !75, !77, !79, !80, !82, !83, !84}
!104 = !{!100}
!105 = !{!101, !97, !75, !77, !79, !80, !82, !83, !84}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 2}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 2}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 2}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 2}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}

