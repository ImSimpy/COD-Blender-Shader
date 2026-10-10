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
; shader hash: cc794e8fa9e9801e57fabf5e8dce62c7
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

define void @cs_fog_raymarching_air_brfog() {
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
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.f32 %128, 3
  %130 = fsub fast float -0.000000e+00, %63
  %131 = fsub fast float -0.000000e+00, %64
  %132 = fsub fast float %129, %65
  %133 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %130, float %131, float %132)  ; Dot3(ax,ay,az,bx,by,bz)
  %134 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %106, float %107, float %108)  ; Dot3(ax,ay,az,bx,by,bz)
  %135 = fdiv fast float 1.000000e+00, %134
  %136 = fmul fast float %135, %133
  %137 = fcmp fast olt float %136, 0.000000e+00
  %138 = fcmp fast ogt float %108, 0.000000e+00
  %139 = and i1 %138, %137
  br i1 %139, label %144, label %140, !dx.controlflow.hints !34

; <label>:140                                     ; preds = %0
  %141 = fcmp fast olt float %108, 0.000000e+00
  br i1 %141, label %142, label %144, !dx.controlflow.hints !35

; <label>:142                                     ; preds = %140
  %143 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %136)  ; FMax(a,b)
  br label %144

; <label>:144                                     ; preds = %142, %140, %0
  %145 = phi float [ 0.000000e+00, %0 ], [ %143, %142 ], [ 0.000000e+00, %140 ]
  %146 = phi float [ 0.000000e+00, %0 ], [ 0x47EFFFFFE0000000, %142 ], [ %136, %140 ]
  %147 = fcmp fast oeq float %146, 0.000000e+00
  br i1 %147, label %151, label %148, !dx.controlflow.hints !36

; <label>:148                                     ; preds = %144
  %149 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %145)  ; FMin(a,b)
  %150 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %146)  ; FMax(a,b)
  br label %151

; <label>:151                                     ; preds = %148, %144
  %152 = phi i32 [ 1, %148 ], [ 0, %144 ]
  %153 = phi float [ %150, %148 ], [ -1.000000e+00, %144 ]
  %154 = phi float [ %149, %148 ], [ 0x47EFFFFFE0000000, %144 ]
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 2
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.f32 %157, 3
  %159 = fsub fast float %156, %65
  %160 = fadd fast float %159, %158
  %161 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %130, float %131, float %160)  ; Dot3(ax,ay,az,bx,by,bz)
  %162 = fmul fast float %135, %161
  %163 = fcmp fast olt float %162, 0.000000e+00
  %164 = and i1 %138, %163
  br i1 %164, label %169, label %165, !dx.controlflow.hints !37

; <label>:165                                     ; preds = %151
  %166 = fcmp fast olt float %108, 0.000000e+00
  br i1 %166, label %167, label %169, !dx.controlflow.hints !38

; <label>:167                                     ; preds = %165
  %168 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %162)  ; FMax(a,b)
  br label %169

; <label>:169                                     ; preds = %167, %165, %151
  %170 = phi float [ 0.000000e+00, %151 ], [ %168, %167 ], [ 0.000000e+00, %165 ]
  %171 = phi float [ 0.000000e+00, %151 ], [ 0x47EFFFFFE0000000, %167 ], [ %162, %165 ]
  %172 = fcmp fast oeq float %171, 0.000000e+00
  br i1 %172, label %176, label %173, !dx.controlflow.hints !39

; <label>:173                                     ; preds = %169
  %174 = call float @dx.op.binary.f32(i32 36, float %154, float %170)  ; FMin(a,b)
  %175 = call float @dx.op.binary.f32(i32 35, float %153, float %171)  ; FMax(a,b)
  br label %176

; <label>:176                                     ; preds = %173, %169
  %177 = phi i32 [ 1, %173 ], [ 0, %169 ]
  %178 = phi float [ %175, %173 ], [ %153, %169 ]
  %179 = phi float [ %174, %173 ], [ %154, %169 ]
  %180 = call float @dx.op.binary.f32(i32 36, float %127, float %178)  ; FMin(a,b)
  %181 = call float @dx.op.binary.f32(i32 35, float %104, float %179)  ; FMax(a,b)
  %182 = extractvalue %dx.types.CBufRet.f32 %128, 0
  %183 = fmul fast float %52, 2.000000e+00
  %184 = fadd fast float %183, -1.000000e+00
  %185 = fmul fast float %182, %184
  %186 = fadd fast float %185, %181
  %187 = fcmp fast olt float %186, %180
  %188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %189 = extractvalue %dx.types.CBufRet.f32 %188, 2
  %190 = fcmp fast olt float %189, 1.000000e+00
  %191 = and i1 %190, %187
  br i1 %191, label %192, label %1868

; <label>:192                                     ; preds = %176
  %193 = fmul fast float %186, %108
  %194 = fadd fast float %193, %65
  %195 = fmul fast float %186, %107
  %196 = fadd fast float %195, %64
  %197 = fmul fast float %186, %106
  %198 = fadd fast float %197, %63
  br label %199

; <label>:199                                     ; preds = %1842, %192
  %200 = phi i32 [ %1844, %1842 ], [ undef, %192 ]
  %201 = phi float [ %1845, %1842 ], [ undef, %192 ]
  %202 = phi i32 [ %411, %1842 ], [ undef, %192 ]
  %203 = phi float [ %412, %1842 ], [ undef, %192 ]
  %204 = phi float [ %1846, %1842 ], [ 0.000000e+00, %192 ]
  %205 = phi float [ %1847, %1842 ], [ 1.000000e+00, %192 ]
  %206 = phi float [ %1848, %1842 ], [ 0.000000e+00, %192 ]
  %207 = phi float [ %1849, %1842 ], [ 0.000000e+00, %192 ]
  %208 = phi float [ %1850, %1842 ], [ 0.000000e+00, %192 ]
  %209 = phi float [ %1860, %1842 ], [ %198, %192 ]
  %210 = phi float [ %1861, %1842 ], [ %196, %192 ]
  %211 = phi float [ %1862, %1842 ], [ %194, %192 ]
  %212 = phi float [ %1843, %1842 ], [ %186, %192 ]
  %213 = phi float [ %1851, %1842 ], [ 0.000000e+00, %192 ]
  %214 = phi float [ %1852, %1842 ], [ 0.000000e+00, %192 ]
  %215 = phi float [ %1853, %1842 ], [ 0.000000e+00, %192 ]
  %216 = phi float [ %1854, %1842 ], [ 0.000000e+00, %192 ]
  %217 = phi float [ %1855, %1842 ], [ 0.000000e+00, %192 ]
  %218 = phi i32 [ %1856, %1842 ], [ 0, %192 ]
  %219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %220 = extractvalue %dx.types.CBufRet.f32 %219, 0
  %221 = icmp eq i32 %152, 0
  br i1 %221, label %234, label %222, !dx.controlflow.hints !40

; <label>:222                                     ; preds = %199
  %223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %224 = extractvalue %dx.types.CBufRet.f32 %223, 3
  %225 = extractvalue %dx.types.CBufRet.f32 %223, 2
  %226 = fmul fast float %224, %212
  %227 = fdiv fast float %226, %180
  %228 = fadd fast float %227, 1.000000e+00
  %229 = call float @dx.op.unary.f32(i32 23, float %228)  ; Log(value)
  %230 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %229)  ; FMin(a,b)
  %231 = fmul fast float %225, %180
  %232 = fmul fast float %231, %230
  %233 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %232)  ; FMin(a,b)
  br label %234

; <label>:234                                     ; preds = %222, %199
  %235 = phi float [ %233, %222 ], [ 0x47EFFFFFE0000000, %199 ]
  %236 = icmp eq i32 %177, 0
  br i1 %236, label %409, label %237, !dx.controlflow.hints !41

; <label>:237                                     ; preds = %234
  %238 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %239 = extractvalue %dx.types.CBufRet.i32 %238, 1
  %240 = and i32 %239, 1
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %399, !dx.controlflow.hints !42

; <label>:242                                     ; preds = %237
  %243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %244 = extractvalue %dx.types.CBufRet.f32 %243, 2
  %245 = extractvalue %dx.types.CBufRet.f32 %243, 3
  %246 = fmul fast float %244, %209
  %247 = fmul fast float %245, %210
  %248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %249 = extractvalue %dx.types.CBufRet.f32 %248, 0
  %250 = extractvalue %dx.types.CBufRet.f32 %248, 1
  %251 = fadd fast float %246, %249
  %252 = fadd fast float %247, %250
  %253 = call float @dx.op.unary.f32(i32 7, float %251)  ; Saturate(value)
  %254 = call float @dx.op.unary.f32(i32 7, float %252)  ; Saturate(value)
  %255 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %17, float %253, float %254, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %256 = extractvalue %dx.types.ResRet.f32 %255, 0
  %257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %258 = extractvalue %dx.types.CBufRet.f32 %257, 0
  %259 = fmul fast float %258, %256
  %260 = fsub fast float %251, %253
  %261 = fsub fast float %252, %254
  %262 = extractvalue %dx.types.CBufRet.f32 %243, 0
  %263 = extractvalue %dx.types.CBufRet.f32 %243, 1
  %264 = fmul fast float %262, %260
  %265 = fmul fast float %263, %261
  %266 = fmul fast float %264, %264
  %267 = fmul fast float %265, %265
  %268 = fadd fast float %266, %267
  %269 = call float @dx.op.unary.f32(i32 24, float %268)  ; Sqrt(value)
  %270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %271 = extractvalue %dx.types.CBufRet.f32 %270, 3
  %272 = fmul fast float %271, %269
  %273 = call float @dx.op.unary.f32(i32 7, float %272)  ; Saturate(value)
  %274 = extractvalue %dx.types.CBufRet.f32 %270, 2
  %275 = fsub fast float %274, %259
  %276 = fmul fast float %275, %273
  %277 = extractvalue %dx.types.CBufRet.f32 %257, 1
  %278 = fsub fast float %211, %259
  %279 = fsub fast float %278, %277
  %280 = fsub fast float %279, %276
  %281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %282 = extractvalue %dx.types.CBufRet.f32 %281, 2
  %283 = fsub fast float %280, %282
  %284 = fcmp fast olt float %283, 0.000000e+00
  %285 = call float @dx.op.unary.f32(i32 6, float %283)  ; FAbs(value)
  %286 = extractvalue %dx.types.CBufRet.i32 %238, 0
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %341, label %288

; <label>:288                                     ; preds = %242
  br label %289

; <label>:289                                     ; preds = %328, %288
  %290 = phi i32 [ %334, %328 ], [ 1, %288 ]
  %291 = phi float [ %336, %328 ], [ 0x47EFFFFFE0000000, %288 ]
  %292 = phi i32 [ %337, %328 ], [ 0, %288 ]
  %293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %294 = extractvalue %dx.types.CBufRet.f32 %293, 1
  %295 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %296 = extractvalue %dx.types.CBufRet.i32 %295, 1
  %297 = and i32 %296, 8
  %298 = icmp eq i32 %297, 0
  %299 = fcmp fast ogt float %294, %280
  %300 = or i1 %299, %298
  %301 = add i32 %292, 171
  %302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 %301)  ; CBufferLoadLegacy(handle,regIndex)
  %303 = extractvalue %dx.types.CBufRet.f32 %302, 0
  %304 = extractvalue %dx.types.CBufRet.f32 %302, 1
  %305 = extractvalue %dx.types.CBufRet.f32 %302, 2
  br i1 %300, label %306, label %312, !dx.controlflow.hints !43

; <label>:306                                     ; preds = %289
  %307 = fsub fast float %303, %209
  %308 = fsub fast float %304, %210
  %309 = fmul fast float %307, %307
  %310 = fmul fast float %308, %308
  %311 = fadd fast float %309, %310
  br label %328

; <label>:312                                     ; preds = %289
  %313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %314 = extractvalue %dx.types.CBufRet.f32 %313, 2
  %315 = extractvalue %dx.types.CBufRet.f32 %293, 2
  %316 = fmul fast float %315, %314
  %317 = fsub fast float %316, %294
  %318 = fdiv fast float %305, %317
  %319 = fsub fast float %209, %303
  %320 = fsub fast float %210, %304
  %321 = fsub fast float %280, %294
  %322 = fmul fast float %318, %321
  %323 = fmul fast float %319, %319
  %324 = fmul fast float %320, %320
  %325 = fadd fast float %323, %324
  %326 = fmul fast float %322, %322
  %327 = fadd fast float %325, %326
  br label %328

; <label>:328                                     ; preds = %312, %306
  %329 = phi float [ %311, %306 ], [ %327, %312 ]
  %330 = call float @dx.op.unary.f32(i32 24, float %329)  ; Sqrt(value)
  %331 = fsub float %305, %330
  %332 = fcmp fast olt float %331, 0.000000e+00
  %333 = zext i1 %332 to i32
  %334 = and i32 %333, %290
  %335 = call float @dx.op.unary.f32(i32 6, float %331)  ; FAbs(value)
  %336 = call float @dx.op.binary.f32(i32 36, float %291, float %335)  ; FMin(a,b)
  %337 = add i32 %292, 1
  %338 = extractvalue %dx.types.CBufRet.i32 %295, 0
  %339 = icmp ult i32 %337, %338
  br i1 %339, label %289, label %340

; <label>:340                                     ; preds = %328
  br label %341

; <label>:341                                     ; preds = %340, %242
  %342 = phi i32 [ 1, %242 ], [ %334, %340 ]
  %343 = phi float [ 0x47EFFFFFE0000000, %242 ], [ %336, %340 ]
  br label %344

; <label>:344                                     ; preds = %344, %341
  %345 = phi i32 [ %342, %341 ], [ %384, %344 ]
  %346 = phi float [ 0x47EFFFFFE0000000, %341 ], [ %386, %344 ]
  %347 = phi i32 [ 0, %341 ], [ %387, %344 ]
  %348 = add nuw nsw i32 %347, 191
  %349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 %348)  ; CBufferLoadLegacy(handle,regIndex)
  %350 = extractvalue %dx.types.CBufRet.f32 %349, 0
  %351 = extractvalue %dx.types.CBufRet.f32 %349, 1
  %352 = extractvalue %dx.types.CBufRet.f32 %349, 2
  %353 = add nuw nsw i32 %347, 195
  %354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 %353)  ; CBufferLoadLegacy(handle,regIndex)
  %355 = extractvalue %dx.types.CBufRet.f32 %354, 0
  %356 = extractvalue %dx.types.CBufRet.f32 %354, 1
  %357 = extractvalue %dx.types.CBufRet.f32 %354, 2
  %358 = fsub fast float %209, %350
  %359 = fsub fast float %210, %351
  %360 = fsub fast float %280, %352
  %361 = call float @dx.op.unary.f32(i32 6, float %358)  ; FAbs(value)
  %362 = call float @dx.op.unary.f32(i32 6, float %359)  ; FAbs(value)
  %363 = call float @dx.op.unary.f32(i32 6, float %360)  ; FAbs(value)
  %364 = fsub fast float %361, %355
  %365 = fsub fast float %362, %356
  %366 = fsub fast float %363, %357
  %367 = call float @dx.op.binary.f32(i32 35, float %364, float 0.000000e+00)  ; FMax(a,b)
  %368 = call float @dx.op.binary.f32(i32 35, float %365, float 0.000000e+00)  ; FMax(a,b)
  %369 = call float @dx.op.binary.f32(i32 35, float %366, float 0.000000e+00)  ; FMax(a,b)
  %370 = fmul fast float %367, %367
  %371 = fmul fast float %368, %368
  %372 = fadd fast float %371, %370
  %373 = fmul fast float %369, %369
  %374 = fadd fast float %372, %373
  %375 = call float @dx.op.unary.f32(i32 24, float %374)  ; Sqrt(value)
  %376 = call float @dx.op.binary.f32(i32 35, float %365, float %366)  ; FMax(a,b)
  %377 = call float @dx.op.binary.f32(i32 35, float %364, float %376)  ; FMax(a,b)
  %378 = call float @dx.op.binary.f32(i32 36, float %377, float 0.000000e+00)  ; FMin(a,b)
  %379 = fadd fast float %378, %375
  %380 = fsub fast float -0.000000e+00, %379
  %381 = fcmp ogt float %379, -0.000000e+00
  %382 = icmp ne i32 %345, 0
  %383 = and i1 %382, %381
  %384 = zext i1 %383 to i32
  %385 = call float @dx.op.unary.f32(i32 6, float %380)  ; FAbs(value)
  %386 = call float @dx.op.binary.f32(i32 36, float %346, float %385)  ; FMin(a,b)
  %387 = add nuw nsw i32 %347, 1
  %388 = icmp eq i32 %387, 4
  br i1 %388, label %389, label %344

; <label>:389                                     ; preds = %344
  %390 = call float @dx.op.binary.f32(i32 36, float %285, float %386)  ; FMin(a,b)
  %391 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %392 = extractvalue %dx.types.CBufRet.i32 %391, 1
  %393 = and i32 %392, 2
  %394 = icmp ne i32 %393, 0
  %395 = xor i1 %383, %394
  %396 = call float @dx.op.binary.f32(i32 36, float %390, float %343)  ; FMin(a,b)
  %397 = and i1 %395, %284
  %398 = zext i1 %397 to i32
  br label %399

; <label>:399                                     ; preds = %389, %237
  %400 = phi i32 [ %202, %237 ], [ %398, %389 ]
  %401 = phi float [ 0.000000e+00, %237 ], [ %396, %389 ]
  %402 = phi float [ %211, %237 ], [ %280, %389 ]
  %403 = icmp ne i32 %400, 0
  %404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %405 = extractvalue %dx.types.CBufRet.f32 %404, 3
  %406 = call float @dx.op.binary.f32(i32 35, float %401, float %405)  ; FMax(a,b)
  %407 = call float @dx.op.binary.f32(i32 36, float %235, float %406)  ; FMin(a,b)
  %408 = zext i1 %403 to i32
  br label %409

; <label>:409                                     ; preds = %399, %234
  %410 = phi i32 [ %408, %399 ], [ 0, %234 ]
  %411 = phi i32 [ %400, %399 ], [ %202, %234 ]
  %412 = phi float [ %402, %399 ], [ %203, %234 ]
  %413 = phi float [ %407, %399 ], [ %235, %234 ]
  %414 = extractvalue %dx.types.CBufRet.f32 %219, 2
  %415 = fmul fast float %414, %212
  %416 = call float @dx.op.unary.f32(i32 23, float %415)  ; Log(value)
  %417 = fmul fast float %416, 0x3FE62E4300000000
  %418 = call float @dx.op.binary.f32(i32 35, float %417, float 1.000000e+00)  ; FMax(a,b)
  %419 = fmul fast float %418, %413
  %420 = call float @dx.op.binary.f32(i32 36, float %419, float 0x47EFFFFFE0000000)  ; FMin(a,b)
  %421 = call float @dx.op.binary.f32(i32 35, float %420, float %220)  ; FMax(a,b)
  %422 = fadd fast float %180, 0x3F1A36E2E0000000
  %423 = fsub fast float %422, %212
  %424 = call float @dx.op.binary.f32(i32 36, float %423, float %421)  ; FMin(a,b)
  br i1 %221, label %481, label %425, !dx.controlflow.hints !44

; <label>:425                                     ; preds = %409
  %426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %427 = extractvalue %dx.types.CBufRet.f32 %426, 0
  %428 = fsub fast float -0.000000e+00, %209
  %429 = fsub fast float -0.000000e+00, %210
  %430 = fsub fast float %427, %211
  %431 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %428, float %429, float %430)  ; Dot3(ax,ay,az,bx,by,bz)
  %432 = fmul fast float %135, %431
  %433 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %432)  ; FMax(a,b)
  %434 = fcmp fast olt float %108, 0.000000e+00
  %435 = call float @dx.op.binary.f32(i32 36, float %424, float %433)  ; FMin(a,b)
  br i1 %434, label %437, label %436, !dx.controlflow.hints !45

; <label>:436                                     ; preds = %425
  br label %437

; <label>:437                                     ; preds = %436, %425
  %438 = phi float [ 0.000000e+00, %436 ], [ %435, %425 ]
  %439 = phi float [ %435, %436 ], [ %424, %425 ]
  %440 = phi float [ %435, %436 ], [ 0.000000e+00, %425 ]
  %441 = phi float [ %424, %436 ], [ %435, %425 ]
  %442 = fsub fast float %439, %438
  %443 = extractvalue %dx.types.CBufRet.f32 %426, 1
  %444 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %443)  ; FMin(a,b)
  %445 = fsub fast float %211, %427
  %446 = fmul fast float %444, 0x3FF7154760000000
  %447 = fmul fast float %446, %445
  %448 = call float @dx.op.unary.f32(i32 21, float %447)  ; Exp(value)
  %449 = fmul fast float %108, 0x3FF7154760000000
  %450 = fmul fast float %449, %441
  %451 = fmul fast float %450, %444
  %452 = call float @dx.op.unary.f32(i32 21, float %451)  ; Exp(value)
  %453 = fmul fast float %449, %440
  %454 = fmul fast float %453, %444
  %455 = call float @dx.op.unary.f32(i32 21, float %454)  ; Exp(value)
  %456 = fsub fast float %452, %455
  %457 = fmul fast float %456, %448
  %458 = fmul fast float %444, %108
  %459 = fdiv fast float %457, %458
  %460 = fadd fast float %442, %459
  %461 = call float @dx.op.unary.f32(i32 6, float %108)  ; FAbs(value)
  %462 = fcmp fast olt float %461, 0x3F0FFB4800000000
  %463 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %445)  ; FMax(a,b)
  %464 = fmul fast float %463, 0x3FF7154760000000
  %465 = fmul fast float %464, %443
  %466 = call float @dx.op.unary.f32(i32 21, float %465)  ; Exp(value)
  %467 = fmul fast float %466, %424
  %468 = select i1 %462, float %467, float %460
  %469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %470 = extractvalue %dx.types.CBufRet.f32 %469, 1
  %471 = fmul fast float %468, %470
  %472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %473 = extractvalue %dx.types.CBufRet.f32 %472, 0
  %474 = extractvalue %dx.types.CBufRet.f32 %472, 1
  %475 = extractvalue %dx.types.CBufRet.f32 %472, 2
  %476 = extractvalue %dx.types.CBufRet.f32 %469, 2
  %477 = fmul fast float %473, %471
  %478 = fmul fast float %474, %471
  %479 = fmul fast float %475, %471
  %480 = fmul fast float %476, %471
  br label %481

; <label>:481                                     ; preds = %437, %409
  %482 = phi float [ %471, %437 ], [ 0.000000e+00, %409 ]
  %483 = phi float [ %480, %437 ], [ 0.000000e+00, %409 ]
  %484 = phi float [ %477, %437 ], [ 0.000000e+00, %409 ]
  %485 = phi float [ %478, %437 ], [ 0.000000e+00, %409 ]
  %486 = phi float [ %479, %437 ], [ 0.000000e+00, %409 ]
  %487 = icmp eq i32 %410, 0
  br i1 %487, label %531, label %488, !dx.controlflow.hints !46

; <label>:488                                     ; preds = %481
  %489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %490 = extractvalue %dx.types.CBufRet.f32 %489, 1
  %491 = fsub fast float %424, %490
  %492 = extractvalue %dx.types.CBufRet.f32 %489, 3
  %493 = fmul fast float %491, %492
  %494 = call float @dx.op.unary.f32(i32 7, float %493)  ; Saturate(value)
  %495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %496 = extractvalue %dx.types.CBufRet.f32 %495, 3
  %497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %498 = extractvalue %dx.types.CBufRet.f32 %497, 2
  %499 = fsub fast float %498, %412
  %500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %501 = extractvalue %dx.types.CBufRet.f32 %500, 3
  %502 = fmul fast float %499, %501
  %503 = call float @dx.op.unary.f32(i32 7, float %502)  ; Saturate(value)
  %504 = fmul fast float %503, %496
  %505 = extractvalue %dx.types.CBufRet.f32 %500, 0
  %506 = fsub fast float %212, %505
  %507 = extractvalue %dx.types.CBufRet.f32 %500, 1
  %508 = fmul fast float %506, %507
  %509 = call float @dx.op.unary.f32(i32 7, float %508)  ; Saturate(value)
  %510 = fsub fast float 1.000000e+00, %494
  %511 = fmul fast float %509, %510
  %512 = fadd fast float %511, %494
  %513 = extractvalue %dx.types.CBufRet.f32 %489, 0
  %514 = fsub fast float %504, %513
  %515 = fmul fast float %514, %512
  %516 = fadd fast float %515, %513
  %517 = extractvalue %dx.types.CBufRet.f32 %495, 0
  %518 = extractvalue %dx.types.CBufRet.f32 %495, 1
  %519 = extractvalue %dx.types.CBufRet.f32 %495, 2
  %520 = fmul fast float %516, %424
  %521 = extractvalue %dx.types.CBufRet.f32 %500, 2
  %522 = fmul fast float %520, %517
  %523 = fmul fast float %520, %518
  %524 = fmul fast float %520, %519
  %525 = fadd fast float %522, %484
  %526 = fadd fast float %523, %485
  %527 = fadd fast float %524, %486
  %528 = fmul fast float %520, %521
  %529 = fadd fast float %528, %483
  %530 = fadd fast float %520, %482
  br label %531

; <label>:531                                     ; preds = %488, %481
  %532 = phi float [ %530, %488 ], [ %482, %481 ]
  %533 = phi float [ %529, %488 ], [ %483, %481 ]
  %534 = phi float [ %525, %488 ], [ %484, %481 ]
  %535 = phi float [ %526, %488 ], [ %485, %481 ]
  %536 = phi float [ %527, %488 ], [ %486, %481 ]
  %537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %538 = extractvalue %dx.types.CBufRet.f32 %537, 1
  %539 = fcmp fast ogt float %532, %538
  br i1 %539, label %540, label %546, !dx.controlflow.hints !47

; <label>:540                                     ; preds = %531
  %541 = fdiv fast float 1.000000e+00, %532
  %542 = fmul fast float %541, %534
  %543 = fmul fast float %541, %535
  %544 = fmul fast float %541, %536
  %545 = fmul fast float %541, %533
  br label %546

; <label>:546                                     ; preds = %540, %531
  %547 = phi float [ %545, %540 ], [ %533, %531 ]
  %548 = phi float [ %542, %540 ], [ %534, %531 ]
  %549 = phi float [ %543, %540 ], [ %535, %531 ]
  %550 = phi float [ %544, %540 ], [ %536, %531 ]
  br i1 %539, label %553, label %551, !dx.controlflow.hints !48

; <label>:551                                     ; preds = %546
  %552 = fadd fast float %424, %212
  br label %1842

; <label>:553                                     ; preds = %546
  %554 = fmul fast float %532, 0xBFF7154760000000
  %555 = call float @dx.op.unary.f32(i32 21, float %554)  ; Exp(value)
  %556 = call float @dx.op.unary.f32(i32 7, float %555)  ; Saturate(value)
  %557 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %558 = extractvalue %dx.types.CBufRet.i32 %557, 0
  %559 = icmp eq i32 %558, 1
  br i1 %559, label %560, label %595, !dx.controlflow.hints !49

; <label>:560                                     ; preds = %553
  %561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %562 = extractvalue %dx.types.CBufRet.f32 %561, 0
  %563 = extractvalue %dx.types.CBufRet.f32 %561, 1
  %564 = fsub fast float %209, %562
  %565 = fsub fast float %210, %563
  %566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %567 = extractvalue %dx.types.CBufRet.f32 %566, 0
  %568 = extractvalue %dx.types.CBufRet.f32 %566, 1
  %569 = fmul fast float %564, %567
  %570 = fmul fast float %565, %568
  %571 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %17, float %569, float %570, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %572 = extractvalue %dx.types.ResRet.f32 %571, 0
  %573 = fcmp fast ogt float %572, 0.000000e+00
  %574 = extractvalue %dx.types.CBufRet.i32 %557, 3
  %575 = icmp ne i32 %574, 0
  %576 = and i1 %573, %575
  br i1 %576, label %577, label %595, !dx.controlflow.hints !50

; <label>:577                                     ; preds = %560
  %578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %579 = extractvalue %dx.types.CBufRet.f32 %578, 0
  %580 = extractvalue %dx.types.CBufRet.f32 %578, 1
  %581 = fsub fast float %209, %579
  %582 = fsub fast float %210, %580
  %583 = fmul fast float %581, %581
  %584 = fmul fast float %582, %582
  %585 = fadd fast float %583, %584
  %586 = uitofp i32 %574 to float
  %587 = fmul fast float %586, %586
  %588 = fcmp fast ogt float %585, %587
  br i1 %588, label %595, label %589, !dx.controlflow.hints !51

; <label>:589                                     ; preds = %577
  %590 = call float @dx.op.unary.f32(i32 24, float %585)  ; Sqrt(value)
  %591 = fsub fast float %586, %590
  %592 = fmul fast float %591, 0x3F75555560000000
  %593 = call float @dx.op.unary.f32(i32 7, float %592)  ; Saturate(value)
  %594 = call float @dx.op.binary.f32(i32 36, float %593, float %572)  ; FMin(a,b)
  br label %595

; <label>:595                                     ; preds = %589, %577, %560, %553
  %596 = phi float [ 1.000000e+00, %553 ], [ %594, %589 ], [ %572, %560 ], [ 0.000000e+00, %577 ]
  %597 = fcmp fast ogt float %596, 0.000000e+00
  br i1 %597, label %598, label %671, !dx.controlflow.hints !52

; <label>:598                                     ; preds = %595
  %599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %600 = extractvalue %dx.types.ResRet.i32 %599, 0
  %601 = extractvalue %dx.types.ResRet.i32 %599, 1
  %602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %603 = extractvalue %dx.types.ResRet.i32 %602, 0
  %604 = extractvalue %dx.types.ResRet.i32 %602, 1
  %605 = extractvalue %dx.types.ResRet.i32 %602, 2
  %606 = extractvalue %dx.types.ResRet.i32 %602, 3
  %607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.i32 %607, 0
  %609 = extractvalue %dx.types.ResRet.i32 %607, 1
  %610 = extractvalue %dx.types.ResRet.i32 %607, 2
  %611 = extractvalue %dx.types.ResRet.i32 %607, 3
  %612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %613 = extractvalue %dx.types.ResRet.i32 %612, 0
  %614 = extractvalue %dx.types.ResRet.i32 %612, 1
  %615 = extractvalue %dx.types.ResRet.i32 %612, 2
  %616 = extractvalue %dx.types.ResRet.i32 %612, 3
  %617 = and i32 %613, 65535
  %618 = call float @dx.op.legacyF16ToF32(i32 131, i32 %617)  ; LegacyF16ToF32(value)
  %619 = lshr i32 %613, 16
  %620 = call float @dx.op.legacyF16ToF32(i32 131, i32 %619)  ; LegacyF16ToF32(value)
  %621 = and i32 %614, 65535
  %622 = call float @dx.op.legacyF16ToF32(i32 131, i32 %621)  ; LegacyF16ToF32(value)
  %623 = lshr i32 %614, 16
  %624 = call float @dx.op.legacyF16ToF32(i32 131, i32 %623)  ; LegacyF16ToF32(value)
  %625 = and i32 %615, 65535
  %626 = call float @dx.op.legacyF16ToF32(i32 131, i32 %625)  ; LegacyF16ToF32(value)
  %627 = lshr i32 %615, 16
  %628 = call float @dx.op.legacyF16ToF32(i32 131, i32 %627)  ; LegacyF16ToF32(value)
  %629 = and i32 %616, 65535
  %630 = call float @dx.op.legacyF16ToF32(i32 131, i32 %629)  ; LegacyF16ToF32(value)
  %631 = lshr i32 %616, 16
  %632 = call float @dx.op.legacyF16ToF32(i32 131, i32 %631)  ; LegacyF16ToF32(value)
  %633 = and i32 %608, 65535
  %634 = call float @dx.op.legacyF16ToF32(i32 131, i32 %633)  ; LegacyF16ToF32(value)
  %635 = lshr i32 %608, 16
  %636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %635)  ; LegacyF16ToF32(value)
  %637 = and i32 %609, 65535
  %638 = call float @dx.op.legacyF16ToF32(i32 131, i32 %637)  ; LegacyF16ToF32(value)
  %639 = lshr i32 %609, 16
  %640 = call float @dx.op.legacyF16ToF32(i32 131, i32 %639)  ; LegacyF16ToF32(value)
  %641 = and i32 %610, 65535
  %642 = call float @dx.op.legacyF16ToF32(i32 131, i32 %641)  ; LegacyF16ToF32(value)
  %643 = lshr i32 %610, 16
  %644 = call float @dx.op.legacyF16ToF32(i32 131, i32 %643)  ; LegacyF16ToF32(value)
  %645 = and i32 %611, 65535
  %646 = call float @dx.op.legacyF16ToF32(i32 131, i32 %645)  ; LegacyF16ToF32(value)
  %647 = lshr i32 %611, 16
  %648 = call float @dx.op.legacyF16ToF32(i32 131, i32 %647)  ; LegacyF16ToF32(value)
  %649 = and i32 %603, 65535
  %650 = call float @dx.op.legacyF16ToF32(i32 131, i32 %649)  ; LegacyF16ToF32(value)
  %651 = lshr i32 %603, 16
  %652 = call float @dx.op.legacyF16ToF32(i32 131, i32 %651)  ; LegacyF16ToF32(value)
  %653 = and i32 %604, 65535
  %654 = call float @dx.op.legacyF16ToF32(i32 131, i32 %653)  ; LegacyF16ToF32(value)
  %655 = lshr i32 %604, 16
  %656 = call float @dx.op.legacyF16ToF32(i32 131, i32 %655)  ; LegacyF16ToF32(value)
  %657 = and i32 %605, 65535
  %658 = call float @dx.op.legacyF16ToF32(i32 131, i32 %657)  ; LegacyF16ToF32(value)
  %659 = lshr i32 %605, 16
  %660 = call float @dx.op.legacyF16ToF32(i32 131, i32 %659)  ; LegacyF16ToF32(value)
  %661 = and i32 %606, 65535
  %662 = call float @dx.op.legacyF16ToF32(i32 131, i32 %661)  ; LegacyF16ToF32(value)
  %663 = lshr i32 %606, 16
  %664 = call float @dx.op.legacyF16ToF32(i32 131, i32 %663)  ; LegacyF16ToF32(value)
  %665 = and i32 %600, 65535
  %666 = call float @dx.op.legacyF16ToF32(i32 131, i32 %665)  ; LegacyF16ToF32(value)
  %667 = lshr i32 %600, 16
  %668 = call float @dx.op.legacyF16ToF32(i32 131, i32 %667)  ; LegacyF16ToF32(value)
  %669 = and i32 %601, 65535
  %670 = call float @dx.op.legacyF16ToF32(i32 131, i32 %669)  ; LegacyF16ToF32(value)
  br label %671

; <label>:671                                     ; preds = %598, %595
  %672 = phi float [ %670, %598 ], [ 0.000000e+00, %595 ]
  %673 = phi float [ %668, %598 ], [ 0.000000e+00, %595 ]
  %674 = phi float [ %666, %598 ], [ 0.000000e+00, %595 ]
  %675 = phi float [ %664, %598 ], [ 0.000000e+00, %595 ]
  %676 = phi float [ %662, %598 ], [ 0.000000e+00, %595 ]
  %677 = phi float [ %660, %598 ], [ 0.000000e+00, %595 ]
  %678 = phi float [ %658, %598 ], [ 0.000000e+00, %595 ]
  %679 = phi float [ %656, %598 ], [ 0.000000e+00, %595 ]
  %680 = phi float [ %654, %598 ], [ 0.000000e+00, %595 ]
  %681 = phi float [ %652, %598 ], [ 0.000000e+00, %595 ]
  %682 = phi float [ %650, %598 ], [ 0.000000e+00, %595 ]
  %683 = phi float [ %648, %598 ], [ 0.000000e+00, %595 ]
  %684 = phi float [ %646, %598 ], [ 0.000000e+00, %595 ]
  %685 = phi float [ %644, %598 ], [ 0.000000e+00, %595 ]
  %686 = phi float [ %642, %598 ], [ 0.000000e+00, %595 ]
  %687 = phi float [ %640, %598 ], [ 0.000000e+00, %595 ]
  %688 = phi float [ %638, %598 ], [ 0.000000e+00, %595 ]
  %689 = phi float [ %636, %598 ], [ 0.000000e+00, %595 ]
  %690 = phi float [ %634, %598 ], [ 0.000000e+00, %595 ]
  %691 = phi float [ %632, %598 ], [ 0.000000e+00, %595 ]
  %692 = phi float [ %630, %598 ], [ 0.000000e+00, %595 ]
  %693 = phi float [ %628, %598 ], [ 0.000000e+00, %595 ]
  %694 = phi float [ %626, %598 ], [ 0.000000e+00, %595 ]
  %695 = phi float [ %624, %598 ], [ 0.000000e+00, %595 ]
  %696 = phi float [ %622, %598 ], [ 0.000000e+00, %595 ]
  %697 = phi float [ %620, %598 ], [ 0.000000e+00, %595 ]
  %698 = phi float [ %618, %598 ], [ 0.000000e+00, %595 ]
  %699 = fcmp fast olt float %596, 1.000000e+00
  br i1 %699, label %700, label %1360, !dx.controlflow.hints !53

; <label>:700                                     ; preds = %671
  %701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %702 = extractvalue %dx.types.CBufRet.f32 %701, 0
  %703 = extractvalue %dx.types.CBufRet.f32 %701, 1
  %704 = fsub fast float %209, %702
  %705 = fsub fast float %210, %703
  %706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %707 = extractvalue %dx.types.CBufRet.f32 %706, 0
  %708 = extractvalue %dx.types.CBufRet.f32 %706, 1
  %709 = fmul fast float %704, %707
  %710 = fmul fast float %705, %708
  %711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %712 = extractvalue %dx.types.CBufRet.f32 %711, 0
  %713 = fmul fast float %712, %709
  %714 = extractvalue %dx.types.CBufRet.f32 %711, 1
  %715 = fadd fast float %713, %714
  %716 = extractvalue %dx.types.CBufRet.f32 %711, 2
  %717 = fmul fast float %716, %710
  %718 = extractvalue %dx.types.CBufRet.f32 %711, 3
  %719 = fadd fast float %717, %718
  %720 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %17, float %715, float %719, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %721 = extractvalue %dx.types.ResRet.f32 %720, 0
  %722 = extractvalue %dx.types.ResRet.f32 %720, 1
  %723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %724 = extractvalue %dx.types.CBufRet.f32 %723, 1
  %725 = extractvalue %dx.types.CBufRet.f32 %723, 0
  %726 = fsub fast float %724, %725
  %727 = fmul fast float %726, %721
  %728 = fadd fast float %727, %725
  %729 = extractvalue %dx.types.CBufRet.f32 %723, 3
  %730 = extractvalue %dx.types.CBufRet.f32 %723, 2
  %731 = fsub fast float %729, %730
  %732 = fmul fast float %731, %722
  %733 = fadd fast float %732, %730
  %734 = fsub fast float %211, %728
  %735 = fsub fast float %733, %728
  %736 = fdiv fast float %734, %735
  %737 = call float @dx.op.unary.f32(i32 7, float %736)  ; Saturate(value)
  %738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %739 = extractvalue %dx.types.CBufRet.f32 %738, 0
  %740 = fmul fast float %739, %737
  %741 = extractvalue %dx.types.CBufRet.f32 %738, 1
  %742 = fadd fast float %740, %741
  %743 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %715, float %719, float %742, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %744 = extractvalue %dx.types.ResRet.f32 %743, 0
  %745 = extractvalue %dx.types.ResRet.f32 %743, 1
  %746 = extractvalue %dx.types.ResRet.f32 %743, 2
  %747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %748 = extractvalue %dx.types.CBufRet.f32 %747, 0
  %749 = extractvalue %dx.types.CBufRet.f32 %747, 1
  %750 = extractvalue %dx.types.CBufRet.f32 %747, 2
  %751 = fmul fast float %748, %744
  %752 = fmul fast float %749, %745
  %753 = fmul fast float %750, %746
  %754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %755 = extractvalue %dx.types.CBufRet.f32 %754, 0
  %756 = extractvalue %dx.types.CBufRet.f32 %754, 1
  %757 = extractvalue %dx.types.CBufRet.f32 %754, 2
  %758 = fadd fast float %751, %755
  %759 = fadd fast float %752, %756
  %760 = fadd fast float %753, %757
  %761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %762 = extractvalue %dx.types.CBufRet.f32 %761, 0
  %763 = fmul fast float %762, %709
  %764 = extractvalue %dx.types.CBufRet.f32 %761, 1
  %765 = fadd fast float %763, %764
  %766 = extractvalue %dx.types.CBufRet.f32 %761, 2
  %767 = fmul fast float %766, %710
  %768 = extractvalue %dx.types.CBufRet.f32 %761, 3
  %769 = fadd fast float %767, %768
  %770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %771 = extractvalue %dx.types.CBufRet.f32 %770, 0
  %772 = extractvalue %dx.types.CBufRet.f32 %770, 1
  %773 = extractvalue %dx.types.CBufRet.f32 %770, 2
  %774 = extractvalue %dx.types.CBufRet.f32 %770, 3
  %775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %776 = extractvalue %dx.types.CBufRet.f32 %775, 0
  %777 = extractvalue %dx.types.CBufRet.f32 %775, 1
  %778 = extractvalue %dx.types.CBufRet.f32 %775, 2
  %779 = extractvalue %dx.types.CBufRet.f32 %775, 3
  %780 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %17, float %765, float %769, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %781 = extractvalue %dx.types.ResRet.f32 %780, 0
  %782 = extractvalue %dx.types.ResRet.f32 %780, 1
  %783 = extractvalue %dx.types.ResRet.f32 %780, 2
  %784 = extractvalue %dx.types.ResRet.f32 %780, 3
  %785 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %17, float %765, float %769, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %786 = extractvalue %dx.types.ResRet.f32 %785, 0
  %787 = extractvalue %dx.types.ResRet.f32 %785, 1
  %788 = extractvalue %dx.types.ResRet.f32 %785, 2
  %789 = extractvalue %dx.types.ResRet.f32 %785, 3
  %790 = fmul fast float %781, %758
  %791 = fmul fast float %786, %758
  %792 = fmul fast float %788, %758
  %793 = fmul fast float %784, %758
  %794 = fadd fast float %790, %771
  %795 = fadd fast float %791, %772
  %796 = fadd fast float %792, %773
  %797 = fadd fast float %793, %774
  %798 = fmul fast float %782, %758
  %799 = fmul fast float %787, %758
  %800 = fadd fast float %798, %776
  %801 = fadd fast float %799, %777
  %802 = fmul fast float %783, %758
  %803 = fmul fast float %789, %758
  %804 = fadd fast float %802, %778
  %805 = fadd fast float %803, %779
  %806 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %17, float %765, float %769, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %807 = extractvalue %dx.types.ResRet.f32 %806, 0
  %808 = extractvalue %dx.types.ResRet.f32 %806, 1
  %809 = extractvalue %dx.types.ResRet.f32 %806, 2
  %810 = extractvalue %dx.types.ResRet.f32 %806, 3
  %811 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %17, float %765, float %769, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %812 = extractvalue %dx.types.ResRet.f32 %811, 0
  %813 = extractvalue %dx.types.ResRet.f32 %811, 1
  %814 = extractvalue %dx.types.ResRet.f32 %811, 2
  %815 = extractvalue %dx.types.ResRet.f32 %811, 3
  %816 = fmul fast float %807, %759
  %817 = fmul fast float %812, %759
  %818 = fmul fast float %814, %759
  %819 = fmul fast float %810, %759
  %820 = fadd fast float %794, %816
  %821 = fadd fast float %795, %817
  %822 = fadd fast float %796, %818
  %823 = fadd fast float %797, %819
  %824 = fmul fast float %808, %759
  %825 = fmul fast float %813, %759
  %826 = fadd fast float %800, %824
  %827 = fadd fast float %801, %825
  %828 = fmul fast float %809, %759
  %829 = fmul fast float %815, %759
  %830 = fadd fast float %804, %828
  %831 = fadd fast float %805, %829
  %832 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %17, float %765, float %769, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %833 = extractvalue %dx.types.ResRet.f32 %832, 0
  %834 = extractvalue %dx.types.ResRet.f32 %832, 1
  %835 = extractvalue %dx.types.ResRet.f32 %832, 2
  %836 = extractvalue %dx.types.ResRet.f32 %832, 3
  %837 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %17, float %765, float %769, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %838 = extractvalue %dx.types.ResRet.f32 %837, 0
  %839 = extractvalue %dx.types.ResRet.f32 %837, 1
  %840 = extractvalue %dx.types.ResRet.f32 %837, 2
  %841 = extractvalue %dx.types.ResRet.f32 %837, 3
  %842 = fmul fast float %833, %760
  %843 = fmul fast float %838, %760
  %844 = fmul fast float %840, %760
  %845 = fmul fast float %836, %760
  %846 = fadd fast float %820, %842
  %847 = fadd fast float %821, %843
  %848 = fadd fast float %822, %844
  %849 = fadd fast float %823, %845
  %850 = fmul fast float %834, %760
  %851 = fmul fast float %839, %760
  %852 = fadd fast float %826, %850
  %853 = fadd fast float %827, %851
  %854 = fmul fast float %835, %760
  %855 = fmul fast float %841, %760
  %856 = fadd fast float %830, %854
  %857 = fadd fast float %831, %855
  %858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %859 = extractvalue %dx.types.CBufRet.f32 %858, 0
  %860 = fsub fast float %209, %859
  %861 = fsub fast float %702, %209
  %862 = call float @dx.op.binary.f32(i32 35, float %861, float %860)  ; FMax(a,b)
  %863 = extractvalue %dx.types.CBufRet.f32 %858, 1
  %864 = fsub fast float %210, %863
  %865 = fsub fast float %703, %210
  %866 = call float @dx.op.binary.f32(i32 35, float %865, float %864)  ; FMax(a,b)
  %867 = call float @dx.op.binary.f32(i32 35, float %862, float %866)  ; FMax(a,b)
  %868 = extractvalue %dx.types.CBufRet.f32 %706, 3
  %869 = fmul fast float %868, %867
  %870 = call float @dx.op.unary.f32(i32 7, float %869)  ; Saturate(value)
  %871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %872 = extractvalue %dx.types.CBufRet.f32 %871, 0
  %873 = extractvalue %dx.types.CBufRet.f32 %871, 1
  %874 = extractvalue %dx.types.CBufRet.f32 %871, 2
  %875 = extractvalue %dx.types.CBufRet.f32 %871, 3
  %876 = fsub fast float %872, %846
  %877 = fsub fast float %873, %847
  %878 = fsub fast float %874, %848
  %879 = fsub fast float %875, %849
  %880 = fmul fast float %876, %870
  %881 = fmul fast float %877, %870
  %882 = fmul fast float %878, %870
  %883 = fmul fast float %879, %870
  %884 = fadd fast float %880, %846
  %885 = fadd fast float %881, %847
  %886 = fadd fast float %882, %848
  %887 = fadd fast float %883, %849
  %888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %889 = extractvalue %dx.types.CBufRet.f32 %888, 0
  %890 = extractvalue %dx.types.CBufRet.f32 %888, 1
  %891 = fsub fast float %889, %852
  %892 = fsub fast float %890, %853
  %893 = fmul fast float %891, %870
  %894 = fmul fast float %892, %870
  %895 = fadd fast float %893, %852
  %896 = fadd fast float %894, %853
  %897 = extractvalue %dx.types.CBufRet.f32 %888, 2
  %898 = extractvalue %dx.types.CBufRet.f32 %888, 3
  %899 = fsub fast float %897, %856
  %900 = fsub fast float %898, %857
  %901 = fmul fast float %899, %870
  %902 = fmul fast float %900, %870
  %903 = fadd fast float %901, %856
  %904 = fadd fast float %902, %857
  %905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %906 = extractvalue %dx.types.CBufRet.f32 %905, 0
  %907 = fmul fast float %906, %884
  %908 = fmul fast float %906, %885
  %909 = fmul fast float %906, %886
  %910 = fmul fast float %906, %887
  %911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %912 = extractvalue %dx.types.CBufRet.f32 %911, 0
  %913 = fmul fast float %912, %895
  %914 = fmul fast float %912, %896
  %915 = fadd fast float %913, %907
  %916 = fadd fast float %914, %909
  %917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %918 = extractvalue %dx.types.CBufRet.f32 %917, 0
  %919 = fmul fast float %918, %903
  %920 = fmul fast float %918, %904
  %921 = fadd fast float %915, %919
  %922 = fadd fast float %916, %920
  %923 = extractvalue %dx.types.CBufRet.f32 %905, 1
  %924 = fmul fast float %923, %884
  %925 = fmul fast float %923, %885
  %926 = fmul fast float %923, %886
  %927 = fmul fast float %923, %887
  %928 = extractvalue %dx.types.CBufRet.f32 %911, 1
  %929 = fmul fast float %928, %895
  %930 = fmul fast float %928, %896
  %931 = fadd fast float %929, %924
  %932 = fadd fast float %930, %926
  %933 = extractvalue %dx.types.CBufRet.f32 %917, 1
  %934 = fmul fast float %933, %903
  %935 = fmul fast float %933, %904
  %936 = fadd fast float %931, %934
  %937 = fadd fast float %932, %935
  %938 = extractvalue %dx.types.CBufRet.f32 %905, 2
  %939 = fmul fast float %938, %884
  %940 = fmul fast float %938, %885
  %941 = fmul fast float %938, %886
  %942 = fmul fast float %938, %887
  %943 = extractvalue %dx.types.CBufRet.f32 %911, 2
  %944 = fmul fast float %943, %895
  %945 = fmul fast float %943, %896
  %946 = fadd fast float %944, %939
  %947 = fadd fast float %945, %941
  %948 = extractvalue %dx.types.CBufRet.f32 %917, 2
  %949 = fmul fast float %948, %903
  %950 = fmul fast float %948, %904
  %951 = fadd fast float %946, %949
  %952 = fadd fast float %947, %950
  %953 = fmul fast float %940, %940
  %954 = fmul fast float %952, %952
  %955 = fmul fast float %942, %942
  %956 = fadd fast float %955, %953
  %957 = fadd fast float %956, %954
  %958 = call float @dx.op.unary.f32(i32 24, float %957)  ; Sqrt(value)
  %959 = fcmp fast ugt float %958, 0.000000e+00
  br i1 %959, label %960, label %975, !dx.controlflow.hints !54

; <label>:960                                     ; preds = %700
  %961 = fsub fast float -0.000000e+00, %942
  %962 = fdiv fast float %961, %958
  %963 = fsub fast float -0.000000e+00, %940
  %964 = fdiv fast float %963, %958
  %965 = fdiv fast float %952, %958
  %966 = fmul fast float %951, 0x3FE279A760000000
  %967 = fmul fast float %964, %940
  %968 = fmul fast float %965, %952
  %969 = fmul fast float %962, %942
  %970 = fadd fast float %967, %969
  %971 = fsub fast float %970, %968
  %972 = call float @dx.op.unary.f32(i32 6, float %971)  ; FAbs(value)
  %973 = fadd fast float %972, 0x3DDB7CDFE0000000
  %974 = fdiv fast float %966, %973
  br label %975

; <label>:975                                     ; preds = %960, %700
  %976 = phi float [ %974, %960 ], [ 1.000000e+00, %700 ]
  %977 = fmul fast float %925, %925
  %978 = fmul fast float %937, %937
  %979 = fmul fast float %927, %927
  %980 = fadd fast float %979, %977
  %981 = fadd fast float %980, %978
  %982 = call float @dx.op.unary.f32(i32 24, float %981)  ; Sqrt(value)
  %983 = fcmp fast ugt float %982, 0.000000e+00
  br i1 %983, label %984, label %999, !dx.controlflow.hints !54

; <label>:984                                     ; preds = %975
  %985 = fsub fast float -0.000000e+00, %927
  %986 = fdiv fast float %985, %982
  %987 = fsub fast float -0.000000e+00, %925
  %988 = fdiv fast float %987, %982
  %989 = fdiv fast float %937, %982
  %990 = fmul fast float %936, 0x3FE279A760000000
  %991 = fmul fast float %988, %925
  %992 = fmul fast float %989, %937
  %993 = fmul fast float %986, %927
  %994 = fadd fast float %991, %993
  %995 = fsub fast float %994, %992
  %996 = call float @dx.op.unary.f32(i32 6, float %995)  ; FAbs(value)
  %997 = fadd fast float %996, 0x3DDB7CDFE0000000
  %998 = fdiv fast float %990, %997
  br label %999

; <label>:999                                     ; preds = %984, %975
  %1000 = phi float [ %998, %984 ], [ 1.000000e+00, %975 ]
  %1001 = call float @dx.op.binary.f32(i32 36, float %1000, float %976)  ; FMin(a,b)
  %1002 = fmul fast float %908, %908
  %1003 = fmul fast float %922, %922
  %1004 = fmul fast float %910, %910
  %1005 = fadd fast float %1004, %1002
  %1006 = fadd fast float %1005, %1003
  %1007 = call float @dx.op.unary.f32(i32 24, float %1006)  ; Sqrt(value)
  %1008 = fcmp fast ugt float %1007, 0.000000e+00
  br i1 %1008, label %1009, label %1024, !dx.controlflow.hints !54

; <label>:1009                                    ; preds = %999
  %1010 = fsub fast float -0.000000e+00, %910
  %1011 = fdiv fast float %1010, %1007
  %1012 = fsub fast float -0.000000e+00, %908
  %1013 = fdiv fast float %1012, %1007
  %1014 = fdiv fast float %922, %1007
  %1015 = fmul fast float %921, 0x3FE279A760000000
  %1016 = fmul fast float %1013, %908
  %1017 = fmul fast float %1014, %922
  %1018 = fmul fast float %1011, %910
  %1019 = fadd fast float %1016, %1018
  %1020 = fsub fast float %1019, %1017
  %1021 = call float @dx.op.unary.f32(i32 6, float %1020)  ; FAbs(value)
  %1022 = fadd fast float %1021, 0x3DDB7CDFE0000000
  %1023 = fdiv fast float %1015, %1022
  br label %1024

; <label>:1024                                    ; preds = %1009, %999
  %1025 = phi float [ %1023, %1009 ], [ 1.000000e+00, %999 ]
  %1026 = call float @dx.op.binary.f32(i32 36, float %1025, float %1001)  ; FMin(a,b)
  %1027 = call float @dx.op.unary.f32(i32 7, float %1026)  ; Saturate(value)
  %1028 = fcmp fast olt float %1027, 1.000000e+00
  br i1 %1028, label %1029, label %1039, !dx.controlflow.hints !55

; <label>:1029                                    ; preds = %1024
  %1030 = fmul fast float %1027, %908
  %1031 = fmul fast float %1027, %922
  %1032 = fmul fast float %1027, %910
  %1033 = fmul fast float %1027, %925
  %1034 = fmul fast float %1027, %937
  %1035 = fmul fast float %1027, %927
  %1036 = fmul fast float %1027, %940
  %1037 = fmul fast float %1027, %952
  %1038 = fmul fast float %1027, %942
  br label %1039

; <label>:1039                                    ; preds = %1029, %1024
  %1040 = phi float [ %1036, %1029 ], [ %940, %1024 ]
  %1041 = phi float [ %1037, %1029 ], [ %952, %1024 ]
  %1042 = phi float [ %1038, %1029 ], [ %942, %1024 ]
  %1043 = phi float [ %1033, %1029 ], [ %925, %1024 ]
  %1044 = phi float [ %1034, %1029 ], [ %937, %1024 ]
  %1045 = phi float [ %1035, %1029 ], [ %927, %1024 ]
  %1046 = phi float [ %1030, %1029 ], [ %908, %1024 ]
  %1047 = phi float [ %1031, %1029 ], [ %922, %1024 ]
  %1048 = phi float [ %1032, %1029 ], [ %910, %1024 ]
  %1049 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %921)  ; FMax(a,b)
  %1050 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %936)  ; FMax(a,b)
  %1051 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %951)  ; FMax(a,b)
  %1052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1053 = extractvalue %dx.types.CBufRet.f32 %1052, 0
  %1054 = fcmp fast ogt float %1053, 0.000000e+00
  %1055 = fcmp fast oge float %709, 0.000000e+00
  %1056 = and i1 %1055, %1054
  %1057 = fcmp fast ole float %709, 1.000000e+00
  %1058 = and i1 %1057, %1056
  %1059 = fcmp fast oge float %710, 0.000000e+00
  %1060 = and i1 %1059, %1058
  %1061 = fcmp fast ole float %710, 1.000000e+00
  %1062 = and i1 %1061, %1060
  br i1 %1062, label %1063, label %1208, !dx.controlflow.hints !56

; <label>:1063                                    ; preds = %1039
  %1064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1065 = extractvalue %dx.types.CBufRet.f32 %1064, 2
  %1066 = extractvalue %dx.types.CBufRet.f32 %1064, 3
  %1067 = fmul fast float %1065, %709
  %1068 = fmul fast float %1066, %710
  %1069 = call float @dx.op.unary.f32(i32 27, float %1067)  ; Round_ni(value)
  %1070 = call float @dx.op.unary.f32(i32 27, float %1068)  ; Round_ni(value)
  %1071 = fptosi float %1069 to i32
  %1072 = fptosi float %1070 to i32
  %1073 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %1071, i32 %1072, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1074 = extractvalue %dx.types.ResRet.i32 %1073, 0
  %1075 = and i32 %1074, 65535
  %1076 = lshr i32 %1074, 16
  %1077 = icmp eq i32 %1075, 65535
  br i1 %1077, label %1114, label %1078, !dx.controlflow.hints !57

; <label>:1078                                    ; preds = %1063
  %1079 = extractvalue %dx.types.CBufRet.f32 %1052, 1
  %1080 = extractvalue %dx.types.CBufRet.f32 %1064, 0
  %1081 = extractvalue %dx.types.CBufRet.f32 %1064, 1
  %1082 = fmul fast float %1080, %709
  %1083 = fmul fast float %1081, %710
  %1084 = fmul fast float %1082, 1.250000e-01
  %1085 = fmul fast float %1083, 1.250000e-01
  %1086 = call float @dx.op.unary.f32(i32 27, float %1084)  ; Round_ni(value)
  %1087 = call float @dx.op.unary.f32(i32 27, float %1085)  ; Round_ni(value)
  %1088 = fmul fast float %1086, 8.000000e+00
  %1089 = fmul fast float %1087, 8.000000e+00
  %1090 = and i32 %1074, 255
  %1091 = lshr i32 %1074, 8
  %1092 = and i32 %1091, 255
  %1093 = mul nuw nsw i32 %1090, 9
  %1094 = uitofp i32 %1093 to float
  %1095 = mul nuw nsw i32 %1092, 9
  %1096 = uitofp i32 %1095 to float
  %1097 = fadd fast float %1094, 5.000000e-01
  %1098 = fadd fast float %1097, %1082
  %1099 = fsub fast float %1098, %1088
  %1100 = fadd fast float %1096, 5.000000e-01
  %1101 = fadd fast float %1100, %1083
  %1102 = fsub fast float %1101, %1089
  %1103 = fdiv fast float %1099, %1053
  %1104 = fdiv fast float %1102, %1079
  %1105 = fmul fast float %737, 4.375000e-01
  %1106 = fadd fast float %1105, 3.125000e-02
  %1107 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %1103, float %1104, float %1106, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1108 = extractvalue %dx.types.ResRet.f32 %1107, 0
  %1109 = extractvalue %dx.types.ResRet.f32 %1107, 1
  %1110 = extractvalue %dx.types.ResRet.f32 %1107, 2
  %1111 = fadd fast float %1108, %1049
  %1112 = fadd fast float %1109, %1050
  %1113 = fadd fast float %1110, %1051
  br label %1114

; <label>:1114                                    ; preds = %1078, %1063
  %1115 = phi float [ %1113, %1078 ], [ %1051, %1063 ]
  %1116 = phi float [ %1112, %1078 ], [ %1050, %1063 ]
  %1117 = phi float [ %1111, %1078 ], [ %1049, %1063 ]
  %1118 = icmp eq i32 %1076, 65535
  br i1 %1118, label %1208, label %1119, !dx.controlflow.hints !58

; <label>:1119                                    ; preds = %1114
  %1120 = extractvalue %dx.types.CBufRet.f32 %1052, 1
  %1121 = extractvalue %dx.types.CBufRet.f32 %1064, 0
  %1122 = extractvalue %dx.types.CBufRet.f32 %1064, 1
  %1123 = fmul fast float %1121, %709
  %1124 = fmul fast float %1122, %710
  %1125 = fmul fast float %1123, 1.250000e-01
  %1126 = fmul fast float %1124, 1.250000e-01
  %1127 = call float @dx.op.unary.f32(i32 27, float %1125)  ; Round_ni(value)
  %1128 = call float @dx.op.unary.f32(i32 27, float %1126)  ; Round_ni(value)
  %1129 = fmul fast float %1127, 8.000000e+00
  %1130 = fmul fast float %1128, 8.000000e+00
  %1131 = fsub fast float %1123, %1129
  %1132 = fsub fast float %1124, %1130
  %1133 = fadd fast float %1131, 5.000000e-01
  %1134 = fadd fast float %1132, 5.000000e-01
  %1135 = and i32 %1076, 255
  %1136 = lshr i32 %1074, 24
  %1137 = mul nuw nsw i32 %1135, 9
  %1138 = uitofp i32 %1137 to float
  %1139 = mul nuw nsw i32 %1136, 9
  %1140 = uitofp i32 %1139 to float
  %1141 = fadd fast float %1133, %1138
  %1142 = fadd fast float %1134, %1140
  %1143 = fdiv fast float %1141, %1053
  %1144 = fdiv fast float %1142, %1120
  %1145 = fmul fast float %737, 4.375000e-01
  %1146 = fadd fast float %1145, 3.125000e-02
  %1147 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %1143, float %1144, float %1146, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1148 = extractvalue %dx.types.ResRet.f32 %1147, 0
  %1149 = extractvalue %dx.types.ResRet.f32 %1147, 1
  %1150 = extractvalue %dx.types.ResRet.f32 %1147, 2
  %1151 = fadd fast float %1145, 5.312500e-01
  %1152 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %1143, float %1144, float %1151, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1153 = extractvalue %dx.types.ResRet.f32 %1152, 0
  %1154 = extractvalue %dx.types.ResRet.f32 %1152, 1
  %1155 = extractvalue %dx.types.ResRet.f32 %1152, 2
  %1156 = fmul fast float %1153, 2.000000e+00
  %1157 = fmul fast float %1154, 2.000000e+00
  %1158 = fmul fast float %1155, 2.000000e+00
  %1159 = fadd fast float %1156, -1.000000e+00
  %1160 = fadd fast float %1157, -1.000000e+00
  %1161 = fadd fast float %1158, -1.000000e+00
  %1162 = fmul fast float %1159, %1159
  %1163 = fmul fast float %1160, %1160
  %1164 = fadd fast float %1162, %1163
  %1165 = fmul fast float %1161, %1161
  %1166 = fadd fast float %1164, %1165
  %1167 = call float @dx.op.unary.f32(i32 24, float %1166)  ; Sqrt(value)
  %1168 = fcmp fast ogt float %1167, 0.000000e+00
  br i1 %1168, label %1169, label %1173, !dx.controlflow.hints !59

; <label>:1169                                    ; preds = %1119
  %1170 = fdiv fast float %1159, %1167
  %1171 = fdiv fast float %1160, %1167
  %1172 = fdiv fast float %1161, %1167
  br label %1173

; <label>:1173                                    ; preds = %1169, %1119
  %1174 = phi float [ %1170, %1169 ], [ 0.000000e+00, %1119 ]
  %1175 = phi float [ %1171, %1169 ], [ 0.000000e+00, %1119 ]
  %1176 = phi float [ %1172, %1169 ], [ 0.000000e+00, %1119 ]
  %1177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1178 = extractvalue %dx.types.CBufRet.f32 %1177, 0
  %1179 = extractvalue %dx.types.CBufRet.f32 %1177, 1
  %1180 = fsub fast float %209, %1178
  %1181 = fsub fast float %210, %1179
  %1182 = fmul fast float %1180, %1180
  %1183 = fmul fast float %1181, %1181
  %1184 = fadd fast float %1182, %1183
  %1185 = call float @dx.op.unary.f32(i32 24, float %1184)  ; Sqrt(value)
  %1186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1187 = extractvalue %dx.types.CBufRet.f32 %1186, 0
  %1188 = extractvalue %dx.types.CBufRet.f32 %1186, 1
  %1189 = fsub fast float %1185, %1187
  %1190 = fdiv fast float %1189, %1188
  %1191 = call float @dx.op.unary.f32(i32 7, float %1190)  ; Saturate(value)
  %1192 = fmul fast float %1191, 2.000000e+00
  %1193 = fsub fast float 3.000000e+00, %1192
  %1194 = fmul fast float %1191, %1191
  %1195 = fmul fast float %1194, %1193
  %1196 = call float @dx.op.dot3.f32(i32 55, float %1174, float %1175, float %1176, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1197 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1196)  ; FMax(a,b)
  %1198 = fmul fast float %1197, 0x400C5BF8A0000000
  %1199 = fmul fast float %1195, %1148
  %1200 = fmul fast float %1199, %1198
  %1201 = fadd fast float %1200, %1117
  %1202 = fmul fast float %1195, %1149
  %1203 = fmul fast float %1202, %1198
  %1204 = fadd fast float %1203, %1116
  %1205 = fmul fast float %1195, %1150
  %1206 = fmul fast float %1205, %1198
  %1207 = fadd fast float %1206, %1115
  br label %1208

; <label>:1208                                    ; preds = %1173, %1114, %1039
  %1209 = phi float [ %1207, %1173 ], [ %1115, %1114 ], [ %1051, %1039 ]
  %1210 = phi float [ %1204, %1173 ], [ %1116, %1114 ], [ %1050, %1039 ]
  %1211 = phi float [ %1201, %1173 ], [ %1117, %1114 ], [ %1049, %1039 ]
  %1212 = fcmp fast ogt float %211, %733
  %1213 = and i1 %1055, %1212
  %1214 = and i1 %1057, %1213
  %1215 = and i1 %1059, %1214
  %1216 = and i1 %1061, %1215
  br i1 %1216, label %1217, label %1274, !dx.controlflow.hints !60

; <label>:1217                                    ; preds = %1208
  %1218 = fmul fast float %735, 0x3FC24924A0000000
  %1219 = fsub fast float %211, %733
  %1220 = fdiv fast float %1219, %1218
  %1221 = call float @dx.op.unary.f32(i32 7, float %1220)  ; Saturate(value)
  %1222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1223 = extractvalue %dx.types.CBufRet.f32 %1222, 0
  %1224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1225 = extractvalue %dx.types.CBufRet.f32 %1224, 0
  %1226 = extractvalue %dx.types.CBufRet.f32 %1224, 1
  %1227 = extractvalue %dx.types.CBufRet.f32 %1224, 2
  %1228 = fsub fast float %1223, %1211
  %1229 = fsub fast float %1225, %1046
  %1230 = fsub fast float %1226, %1047
  %1231 = fsub fast float %1227, %1048
  %1232 = fmul fast float %1228, %1221
  %1233 = fmul fast float %1229, %1221
  %1234 = fmul fast float %1230, %1221
  %1235 = fmul fast float %1231, %1221
  %1236 = fadd fast float %1232, %1211
  %1237 = fadd fast float %1233, %1046
  %1238 = fadd fast float %1234, %1047
  %1239 = fadd fast float %1235, %1048
  %1240 = extractvalue %dx.types.CBufRet.f32 %1222, 1
  %1241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1242 = extractvalue %dx.types.CBufRet.f32 %1241, 0
  %1243 = extractvalue %dx.types.CBufRet.f32 %1241, 1
  %1244 = extractvalue %dx.types.CBufRet.f32 %1241, 2
  %1245 = fsub fast float %1240, %1210
  %1246 = fsub fast float %1242, %1043
  %1247 = fsub fast float %1243, %1044
  %1248 = fsub fast float %1244, %1045
  %1249 = fmul fast float %1245, %1221
  %1250 = fmul fast float %1246, %1221
  %1251 = fmul fast float %1247, %1221
  %1252 = fmul fast float %1248, %1221
  %1253 = fadd fast float %1249, %1210
  %1254 = fadd fast float %1250, %1043
  %1255 = fadd fast float %1251, %1044
  %1256 = fadd fast float %1252, %1045
  %1257 = extractvalue %dx.types.CBufRet.f32 %1222, 2
  %1258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1259 = extractvalue %dx.types.CBufRet.f32 %1258, 0
  %1260 = extractvalue %dx.types.CBufRet.f32 %1258, 1
  %1261 = extractvalue %dx.types.CBufRet.f32 %1258, 2
  %1262 = fsub fast float %1257, %1209
  %1263 = fsub fast float %1259, %1040
  %1264 = fsub fast float %1260, %1041
  %1265 = fsub fast float %1261, %1042
  %1266 = fmul fast float %1262, %1221
  %1267 = fmul fast float %1263, %1221
  %1268 = fmul fast float %1264, %1221
  %1269 = fmul fast float %1265, %1221
  %1270 = fadd fast float %1266, %1209
  %1271 = fadd fast float %1267, %1040
  %1272 = fadd fast float %1268, %1041
  %1273 = fadd fast float %1269, %1042
  br label %1274

; <label>:1274                                    ; preds = %1217, %1208
  %1275 = phi float [ %1270, %1217 ], [ %1209, %1208 ]
  %1276 = phi float [ %1271, %1217 ], [ %1040, %1208 ]
  %1277 = phi float [ %1272, %1217 ], [ %1041, %1208 ]
  %1278 = phi float [ %1273, %1217 ], [ %1042, %1208 ]
  %1279 = phi float [ %1253, %1217 ], [ %1210, %1208 ]
  %1280 = phi float [ %1254, %1217 ], [ %1043, %1208 ]
  %1281 = phi float [ %1255, %1217 ], [ %1044, %1208 ]
  %1282 = phi float [ %1256, %1217 ], [ %1045, %1208 ]
  %1283 = phi float [ %1236, %1217 ], [ %1211, %1208 ]
  %1284 = phi float [ %1237, %1217 ], [ %1046, %1208 ]
  %1285 = phi float [ %1238, %1217 ], [ %1047, %1208 ]
  %1286 = phi float [ %1239, %1217 ], [ %1048, %1208 ]
  %1287 = extractvalue %dx.types.CBufRet.f32 %858, 3
  %1288 = fmul fast float %1287, %1283
  %1289 = fmul fast float %1287, %1279
  %1290 = fmul fast float %1287, %1275
  %1291 = fmul fast float %1284, 1.500000e+00
  %1292 = fmul fast float %1291, %1287
  %1293 = fmul fast float %1285, 1.500000e+00
  %1294 = fmul fast float %1293, %1287
  %1295 = fmul fast float %1286, 1.500000e+00
  %1296 = fmul fast float %1295, %1287
  %1297 = fmul fast float %1280, 1.500000e+00
  %1298 = fmul fast float %1297, %1287
  %1299 = fmul fast float %1281, 1.500000e+00
  %1300 = fmul fast float %1299, %1287
  %1301 = fmul fast float %1282, 1.500000e+00
  %1302 = fmul fast float %1301, %1287
  %1303 = fmul fast float %1276, 1.500000e+00
  %1304 = fmul fast float %1303, %1287
  %1305 = fmul fast float %1277, 1.500000e+00
  %1306 = fmul fast float %1305, %1287
  %1307 = fmul fast float %1278, 1.500000e+00
  %1308 = fmul fast float %1307, %1287
  %1309 = fsub fast float %698, %1288
  %1310 = fmul fast float %1309, %596
  %1311 = fadd fast float %1310, %1288
  %1312 = fsub fast float %697, %1292
  %1313 = fmul fast float %1312, %596
  %1314 = fadd fast float %1313, %1292
  %1315 = fsub fast float %696, %1294
  %1316 = fmul fast float %1315, %596
  %1317 = fadd fast float %1316, %1294
  %1318 = fsub fast float %695, %1296
  %1319 = fmul fast float %1318, %596
  %1320 = fadd fast float %1319, %1296
  %1321 = fmul fast float %694, %596
  %1322 = fmul fast float %693, %596
  %1323 = fmul fast float %692, %596
  %1324 = fmul fast float %691, %596
  %1325 = fmul fast float %690, %596
  %1326 = fsub fast float %689, %1289
  %1327 = fmul fast float %1326, %596
  %1328 = fadd fast float %1327, %1289
  %1329 = fsub fast float %688, %1298
  %1330 = fmul fast float %1329, %596
  %1331 = fadd fast float %1330, %1298
  %1332 = fsub fast float %687, %1300
  %1333 = fmul fast float %1332, %596
  %1334 = fadd fast float %1333, %1300
  %1335 = fsub fast float %686, %1302
  %1336 = fmul fast float %1335, %596
  %1337 = fadd fast float %1336, %1302
  %1338 = fmul fast float %685, %596
  %1339 = fmul fast float %684, %596
  %1340 = fmul fast float %683, %596
  %1341 = fmul fast float %682, %596
  %1342 = fmul fast float %681, %596
  %1343 = fsub fast float %680, %1290
  %1344 = fmul fast float %1343, %596
  %1345 = fadd fast float %1344, %1290
  %1346 = fsub fast float %679, %1304
  %1347 = fmul fast float %1346, %596
  %1348 = fadd fast float %1347, %1304
  %1349 = fsub fast float %678, %1306
  %1350 = fmul fast float %1349, %596
  %1351 = fadd fast float %1350, %1306
  %1352 = fsub fast float %677, %1308
  %1353 = fmul fast float %1352, %596
  %1354 = fadd fast float %1353, %1308
  %1355 = fmul fast float %676, %596
  %1356 = fmul fast float %675, %596
  %1357 = fmul fast float %674, %596
  %1358 = fmul fast float %673, %596
  %1359 = fmul fast float %672, %596
  br label %1360

; <label>:1360                                    ; preds = %1274, %671
  %1361 = phi float [ %1359, %1274 ], [ %672, %671 ]
  %1362 = phi float [ %1358, %1274 ], [ %673, %671 ]
  %1363 = phi float [ %1357, %1274 ], [ %674, %671 ]
  %1364 = phi float [ %1356, %1274 ], [ %675, %671 ]
  %1365 = phi float [ %1355, %1274 ], [ %676, %671 ]
  %1366 = phi float [ %1354, %1274 ], [ %677, %671 ]
  %1367 = phi float [ %1351, %1274 ], [ %678, %671 ]
  %1368 = phi float [ %1348, %1274 ], [ %679, %671 ]
  %1369 = phi float [ %1345, %1274 ], [ %680, %671 ]
  %1370 = phi float [ %1342, %1274 ], [ %681, %671 ]
  %1371 = phi float [ %1341, %1274 ], [ %682, %671 ]
  %1372 = phi float [ %1340, %1274 ], [ %683, %671 ]
  %1373 = phi float [ %1339, %1274 ], [ %684, %671 ]
  %1374 = phi float [ %1338, %1274 ], [ %685, %671 ]
  %1375 = phi float [ %1337, %1274 ], [ %686, %671 ]
  %1376 = phi float [ %1334, %1274 ], [ %687, %671 ]
  %1377 = phi float [ %1331, %1274 ], [ %688, %671 ]
  %1378 = phi float [ %1328, %1274 ], [ %689, %671 ]
  %1379 = phi float [ %1325, %1274 ], [ %690, %671 ]
  %1380 = phi float [ %1324, %1274 ], [ %691, %671 ]
  %1381 = phi float [ %1323, %1274 ], [ %692, %671 ]
  %1382 = phi float [ %1322, %1274 ], [ %693, %671 ]
  %1383 = phi float [ %1321, %1274 ], [ %694, %671 ]
  %1384 = phi float [ %1320, %1274 ], [ %695, %671 ]
  %1385 = phi float [ %1317, %1274 ], [ %696, %671 ]
  %1386 = phi float [ %1314, %1274 ], [ %697, %671 ]
  %1387 = phi float [ %1311, %1274 ], [ %698, %671 ]
  %1388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1389 = extractvalue %dx.types.CBufRet.f32 %1388, 2
  %1390 = fmul fast float %1389, %1389
  %1391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1392 = extractvalue %dx.types.CBufRet.f32 %1391, 0
  %1393 = extractvalue %dx.types.CBufRet.f32 %1391, 1
  %1394 = extractvalue %dx.types.CBufRet.f32 %1391, 2
  %1395 = fmul fast float %1387, 0x3FD20DD760000000
  %1396 = fmul fast float %1394, %1385
  %1397 = fmul fast float %1394, %1394
  %1398 = fmul fast float %1397, 0x3FEE471020000000
  %1399 = fadd fast float %1398, 0xBFD42F6020000000
  %1400 = fmul fast float %1399, %1381
  %1401 = fmul fast float %1392, %1384
  %1402 = fmul fast float %1393, %1386
  %1403 = fmul fast float %1394, 0x3FF17B1420000000
  %1404 = fmul fast float %1390, %1380
  %1405 = fmul fast float %1404, %1392
  %1406 = fmul fast float %1405, %1403
  %1407 = fmul fast float %1390, %1382
  %1408 = fmul fast float %1407, %1393
  %1409 = fmul fast float %1408, %1403
  %1410 = fmul fast float %1392, %1392
  %1411 = fmul fast float %1393, %1393
  %1412 = fsub fast float %1410, %1411
  %1413 = fmul fast float %1379, 0x3FE17B1420000000
  %1414 = fmul fast float %1413, %1412
  %1415 = fmul fast float %1383, 0x3FF17B1420000000
  %1416 = fmul fast float %1415, %1393
  %1417 = fmul fast float %1416, %1392
  %1418 = fadd fast float %1414, %1417
  %1419 = fadd fast float %1418, %1400
  %1420 = fmul fast float %1419, %1390
  %1421 = fsub fast float %1402, %1396
  %1422 = fadd fast float %1421, %1401
  %1423 = fmul fast float %1422, 0x3FDF454380000000
  %1424 = fmul fast float %1423, %1389
  %1425 = fsub fast float %1395, %1406
  %1426 = fsub fast float %1425, %1409
  %1427 = fadd fast float %1426, %1420
  %1428 = fadd fast float %1427, %1424
  %1429 = fmul fast float %1378, 0x3FD20DD760000000
  %1430 = fmul fast float %1394, %1376
  %1431 = fmul fast float %1399, %1372
  %1432 = fmul fast float %1392, %1375
  %1433 = fmul fast float %1393, %1377
  %1434 = fmul fast float %1390, %1371
  %1435 = fmul fast float %1434, %1392
  %1436 = fmul fast float %1435, %1403
  %1437 = fmul fast float %1390, %1373
  %1438 = fmul fast float %1437, %1393
  %1439 = fmul fast float %1438, %1403
  %1440 = fmul fast float %1370, 0x3FE17B1420000000
  %1441 = fmul fast float %1440, %1412
  %1442 = fmul fast float %1374, 0x3FF17B1420000000
  %1443 = fmul fast float %1442, %1393
  %1444 = fmul fast float %1443, %1392
  %1445 = fadd fast float %1441, %1444
  %1446 = fadd fast float %1445, %1431
  %1447 = fmul fast float %1446, %1390
  %1448 = fsub fast float %1433, %1430
  %1449 = fadd fast float %1448, %1432
  %1450 = fmul fast float %1449, 0x3FDF454380000000
  %1451 = fmul fast float %1450, %1389
  %1452 = fsub fast float %1429, %1436
  %1453 = fsub fast float %1452, %1439
  %1454 = fadd fast float %1453, %1447
  %1455 = fadd fast float %1454, %1451
  %1456 = fmul fast float %1369, 0x3FD20DD760000000
  %1457 = fmul fast float %1394, %1367
  %1458 = fmul fast float %1399, %1363
  %1459 = fmul fast float %1392, %1366
  %1460 = fmul fast float %1393, %1368
  %1461 = fmul fast float %1390, %1362
  %1462 = fmul fast float %1461, %1392
  %1463 = fmul fast float %1462, %1403
  %1464 = fmul fast float %1390, %1364
  %1465 = fmul fast float %1464, %1393
  %1466 = fmul fast float %1465, %1403
  %1467 = fmul fast float %1361, 0x3FE17B1420000000
  %1468 = fmul fast float %1467, %1412
  %1469 = fmul fast float %1365, 0x3FF17B1420000000
  %1470 = fmul fast float %1469, %1393
  %1471 = fmul fast float %1470, %1392
  %1472 = fadd fast float %1468, %1471
  %1473 = fadd fast float %1472, %1458
  %1474 = fmul fast float %1473, %1390
  %1475 = fsub fast float %1460, %1457
  %1476 = fadd fast float %1475, %1459
  %1477 = fmul fast float %1476, 0x3FDF454380000000
  %1478 = fmul fast float %1477, %1389
  %1479 = fsub fast float %1456, %1463
  %1480 = fsub fast float %1479, %1466
  %1481 = fadd fast float %1480, %1474
  %1482 = fadd fast float %1481, %1478
  %1483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1484 = extractvalue %dx.types.CBufRet.f32 %1483, 3
  %1485 = extractvalue %dx.types.CBufRet.f32 %537, 0
  %1486 = fmul fast float %1485, %1484
  %1487 = fmul fast float %1486, %1428
  %1488 = fmul fast float %1486, %1455
  %1489 = fmul fast float %1486, %1482
  %1490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1491 = extractvalue %dx.types.CBufRet.f32 %1490, 3
  %1492 = fcmp fast une float %1491, 0.000000e+00
  %1493 = extractvalue %dx.types.CBufRet.f32 %1490, 0
  %1494 = extractvalue %dx.types.CBufRet.f32 %1490, 1
  %1495 = extractvalue %dx.types.CBufRet.f32 %1490, 2
  br i1 %1492, label %1496, label %1518, !dx.controlflow.hints !61

; <label>:1496                                    ; preds = %1360
  %1497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1498 = extractvalue %dx.types.CBufRet.f32 %1497, 0
  %1499 = extractvalue %dx.types.CBufRet.f32 %1497, 1
  %1500 = extractvalue %dx.types.CBufRet.f32 %1497, 2
  %1501 = call float @dx.op.dot3.f32(i32 55, float %1493, float %1494, float %1495, float %106, float %107, float %108)  ; Dot3(ax,ay,az,bx,by,bz)
  %1502 = fcmp fast ogt float %547, 0.000000e+00
  %1503 = select i1 %1502, float 1.000000e+00, float -1.000000e+00
  %1504 = fmul fast float %1503, 5.000000e-01
  %1505 = fmul fast float %1504, %1501
  %1506 = fmul fast float %1503, %547
  %1507 = fadd fast float %1505, 4.921875e-01
  %1508 = fadd fast float %1506, -3.125000e-02
  %1509 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %17, float %1507, float 0x3FB25F3060000000, float %1508, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1510 = extractvalue %dx.types.ResRet.f32 %1509, 0
  %1511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1512 = extractvalue %dx.types.CBufRet.f32 %1511, 0
  %1513 = fmul fast float %1510, 0x400921FB60000000
  %1514 = fmul fast float %1513, %1512
  %1515 = fmul fast float %1514, %1498
  %1516 = fmul fast float %1514, %1499
  %1517 = fmul fast float %1514, %1500
  br label %1518

; <label>:1518                                    ; preds = %1496, %1360
  %1519 = phi float [ %1515, %1496 ], [ 0.000000e+00, %1360 ]
  %1520 = phi float [ %1516, %1496 ], [ 0.000000e+00, %1360 ]
  %1521 = phi float [ %1517, %1496 ], [ 0.000000e+00, %1360 ]
  %1522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1523 = extractvalue %dx.types.CBufRet.f32 %1522, 0
  %1524 = fmul fast float %1523, %1493
  %1525 = fmul fast float %1523, %1494
  %1526 = fmul fast float %1523, %1495
  %1527 = fadd fast float %1524, %209
  %1528 = fadd fast float %1525, %210
  %1529 = fadd fast float %1526, %211
  br i1 %236, label %1684, label %1530, !dx.controlflow.hints !41

; <label>:1530                                    ; preds = %1518
  %1531 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1532 = extractvalue %dx.types.CBufRet.i32 %1531, 1
  %1533 = and i32 %1532, 1
  %1534 = icmp eq i32 %1533, 0
  br i1 %1534, label %1535, label %1679, !dx.controlflow.hints !42

; <label>:1535                                    ; preds = %1530
  %1536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %1537 = extractvalue %dx.types.CBufRet.f32 %1536, 2
  %1538 = extractvalue %dx.types.CBufRet.f32 %1536, 3
  %1539 = fmul fast float %1537, %1527
  %1540 = fmul fast float %1538, %1528
  %1541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %1542 = extractvalue %dx.types.CBufRet.f32 %1541, 0
  %1543 = extractvalue %dx.types.CBufRet.f32 %1541, 1
  %1544 = fadd fast float %1539, %1542
  %1545 = fadd fast float %1540, %1543
  %1546 = call float @dx.op.unary.f32(i32 7, float %1544)  ; Saturate(value)
  %1547 = call float @dx.op.unary.f32(i32 7, float %1545)  ; Saturate(value)
  %1548 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %17, float %1546, float %1547, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1549 = extractvalue %dx.types.ResRet.f32 %1548, 0
  %1550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1551 = extractvalue %dx.types.CBufRet.f32 %1550, 0
  %1552 = fmul fast float %1551, %1549
  %1553 = fsub fast float %1544, %1546
  %1554 = fsub fast float %1545, %1547
  %1555 = extractvalue %dx.types.CBufRet.f32 %1536, 0
  %1556 = extractvalue %dx.types.CBufRet.f32 %1536, 1
  %1557 = fmul fast float %1555, %1553
  %1558 = fmul fast float %1556, %1554
  %1559 = fmul fast float %1557, %1557
  %1560 = fmul fast float %1558, %1558
  %1561 = fadd fast float %1559, %1560
  %1562 = call float @dx.op.unary.f32(i32 24, float %1561)  ; Sqrt(value)
  %1563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1564 = extractvalue %dx.types.CBufRet.f32 %1563, 3
  %1565 = fmul fast float %1564, %1562
  %1566 = call float @dx.op.unary.f32(i32 7, float %1565)  ; Saturate(value)
  %1567 = extractvalue %dx.types.CBufRet.f32 %1563, 2
  %1568 = fsub fast float %1567, %1552
  %1569 = fmul fast float %1568, %1566
  %1570 = extractvalue %dx.types.CBufRet.f32 %1550, 1
  %1571 = fsub fast float %1529, %1552
  %1572 = fsub fast float %1571, %1570
  %1573 = fsub fast float %1572, %1569
  %1574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1575 = extractvalue %dx.types.CBufRet.f32 %1574, 2
  %1576 = fsub fast float %1573, %1575
  %1577 = fcmp fast olt float %1576, 0.000000e+00
  %1578 = extractvalue %dx.types.CBufRet.i32 %1531, 0
  %1579 = icmp eq i32 %1578, 0
  br i1 %1579, label %1630, label %1580

; <label>:1580                                    ; preds = %1535
  br label %1581

; <label>:1581                                    ; preds = %1619, %1580
  %1582 = phi i32 [ %1625, %1619 ], [ 1, %1580 ]
  %1583 = phi i32 [ %1626, %1619 ], [ 0, %1580 ]
  %1584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1585 = extractvalue %dx.types.CBufRet.f32 %1584, 1
  %1586 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1587 = extractvalue %dx.types.CBufRet.i32 %1586, 1
  %1588 = and i32 %1587, 8
  %1589 = icmp eq i32 %1588, 0
  %1590 = fcmp fast ogt float %1585, %1573
  %1591 = or i1 %1590, %1589
  %1592 = add i32 %1583, 171
  %1593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 %1592)  ; CBufferLoadLegacy(handle,regIndex)
  %1594 = extractvalue %dx.types.CBufRet.f32 %1593, 0
  %1595 = extractvalue %dx.types.CBufRet.f32 %1593, 1
  %1596 = extractvalue %dx.types.CBufRet.f32 %1593, 2
  br i1 %1591, label %1597, label %1603, !dx.controlflow.hints !43

; <label>:1597                                    ; preds = %1581
  %1598 = fsub fast float %1594, %1527
  %1599 = fsub fast float %1595, %1528
  %1600 = fmul fast float %1598, %1598
  %1601 = fmul fast float %1599, %1599
  %1602 = fadd fast float %1600, %1601
  br label %1619

; <label>:1603                                    ; preds = %1581
  %1604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1605 = extractvalue %dx.types.CBufRet.f32 %1604, 2
  %1606 = extractvalue %dx.types.CBufRet.f32 %1584, 2
  %1607 = fmul fast float %1606, %1605
  %1608 = fsub fast float %1607, %1585
  %1609 = fdiv fast float %1596, %1608
  %1610 = fsub fast float %1527, %1594
  %1611 = fsub fast float %1528, %1595
  %1612 = fsub fast float %1573, %1585
  %1613 = fmul fast float %1609, %1612
  %1614 = fmul fast float %1610, %1610
  %1615 = fmul fast float %1611, %1611
  %1616 = fadd fast float %1614, %1615
  %1617 = fmul fast float %1613, %1613
  %1618 = fadd fast float %1616, %1617
  br label %1619

; <label>:1619                                    ; preds = %1603, %1597
  %1620 = phi float [ %1602, %1597 ], [ %1618, %1603 ]
  %1621 = call float @dx.op.unary.f32(i32 24, float %1620)  ; Sqrt(value)
  %1622 = fsub float %1596, %1621
  %1623 = fcmp fast olt float %1622, 0.000000e+00
  %1624 = zext i1 %1623 to i32
  %1625 = and i32 %1624, %1582
  %1626 = add i32 %1583, 1
  %1627 = extractvalue %dx.types.CBufRet.i32 %1586, 0
  %1628 = icmp ult i32 %1626, %1627
  br i1 %1628, label %1581, label %1629

; <label>:1629                                    ; preds = %1619
  br label %1630

; <label>:1630                                    ; preds = %1629, %1535
  %1631 = phi i32 [ 1, %1535 ], [ %1625, %1629 ]
  br label %1632

; <label>:1632                                    ; preds = %1632, %1630
  %1633 = phi i32 [ %1669, %1632 ], [ %1631, %1630 ]
  %1634 = phi i32 [ %1670, %1632 ], [ 0, %1630 ]
  %1635 = add nuw nsw i32 %1634, 191
  %1636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 %1635)  ; CBufferLoadLegacy(handle,regIndex)
  %1637 = extractvalue %dx.types.CBufRet.f32 %1636, 0
  %1638 = extractvalue %dx.types.CBufRet.f32 %1636, 1
  %1639 = extractvalue %dx.types.CBufRet.f32 %1636, 2
  %1640 = add nuw nsw i32 %1634, 195
  %1641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 %1640)  ; CBufferLoadLegacy(handle,regIndex)
  %1642 = extractvalue %dx.types.CBufRet.f32 %1641, 0
  %1643 = extractvalue %dx.types.CBufRet.f32 %1641, 1
  %1644 = extractvalue %dx.types.CBufRet.f32 %1641, 2
  %1645 = fsub fast float %1527, %1637
  %1646 = fsub fast float %1528, %1638
  %1647 = fsub fast float %1573, %1639
  %1648 = call float @dx.op.unary.f32(i32 6, float %1645)  ; FAbs(value)
  %1649 = call float @dx.op.unary.f32(i32 6, float %1646)  ; FAbs(value)
  %1650 = call float @dx.op.unary.f32(i32 6, float %1647)  ; FAbs(value)
  %1651 = fsub fast float %1648, %1642
  %1652 = fsub fast float %1649, %1643
  %1653 = fsub fast float %1650, %1644
  %1654 = call float @dx.op.binary.f32(i32 35, float %1651, float 0.000000e+00)  ; FMax(a,b)
  %1655 = call float @dx.op.binary.f32(i32 35, float %1652, float 0.000000e+00)  ; FMax(a,b)
  %1656 = call float @dx.op.binary.f32(i32 35, float %1653, float 0.000000e+00)  ; FMax(a,b)
  %1657 = fmul fast float %1654, %1654
  %1658 = fmul fast float %1655, %1655
  %1659 = fadd fast float %1658, %1657
  %1660 = fmul fast float %1656, %1656
  %1661 = fadd fast float %1659, %1660
  %1662 = call float @dx.op.unary.f32(i32 24, float %1661)  ; Sqrt(value)
  %1663 = call float @dx.op.binary.f32(i32 35, float %1652, float %1653)  ; FMax(a,b)
  %1664 = call float @dx.op.binary.f32(i32 35, float %1651, float %1663)  ; FMax(a,b)
  %1665 = call float @dx.op.binary.f32(i32 36, float %1664, float 0.000000e+00)  ; FMin(a,b)
  %1666 = fadd fast float %1665, %1662
  %1667 = fcmp ogt float %1666, -0.000000e+00
  %1668 = zext i1 %1667 to i32
  %1669 = and i32 %1668, %1633
  %1670 = add nuw nsw i32 %1634, 1
  %1671 = icmp eq i32 %1670, 4
  br i1 %1671, label %1672, label %1632

; <label>:1672                                    ; preds = %1632
  %1673 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1674 = extractvalue %dx.types.CBufRet.i32 %1673, 1
  %1675 = lshr i32 %1674, 1
  %1676 = xor i32 %1675, %1669
  %1677 = zext i1 %1577 to i32
  %1678 = and i32 %1676, %1677
  br label %1679

; <label>:1679                                    ; preds = %1672, %1530
  %1680 = phi i32 [ %200, %1530 ], [ %1678, %1672 ]
  %1681 = phi float [ %1529, %1530 ], [ %1573, %1672 ]
  %1682 = icmp ne i32 %1680, 0
  %1683 = zext i1 %1682 to i32
  br label %1684

; <label>:1684                                    ; preds = %1679, %1518
  %1685 = phi i32 [ %1680, %1679 ], [ %200, %1518 ]
  %1686 = phi float [ %1681, %1679 ], [ %201, %1518 ]
  %1687 = phi i32 [ %1683, %1679 ], [ 0, %1518 ]
  br i1 %221, label %1736, label %1688, !dx.controlflow.hints !44

; <label>:1688                                    ; preds = %1684
  %1689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %1690 = extractvalue %dx.types.CBufRet.f32 %1689, 0
  %1691 = fsub fast float -0.000000e+00, %1527
  %1692 = fsub fast float -0.000000e+00, %1528
  %1693 = fsub fast float %1690, %1529
  %1694 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1691, float %1692, float %1693)  ; Dot3(ax,ay,az,bx,by,bz)
  %1695 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1493, float %1494, float %1495)  ; Dot3(ax,ay,az,bx,by,bz)
  %1696 = fdiv fast float 1.000000e+00, %1695
  %1697 = fmul fast float %1696, %1694
  %1698 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1697)  ; FMax(a,b)
  %1699 = fcmp fast olt float %1495, 0.000000e+00
  %1700 = call float @dx.op.binary.f32(i32 36, float %1523, float %1698)  ; FMin(a,b)
  br i1 %1699, label %1702, label %1701, !dx.controlflow.hints !45

; <label>:1701                                    ; preds = %1688
  br label %1702

; <label>:1702                                    ; preds = %1701, %1688
  %1703 = phi float [ 0.000000e+00, %1701 ], [ %1700, %1688 ]
  %1704 = phi float [ %1700, %1701 ], [ %1523, %1688 ]
  %1705 = phi float [ %1700, %1701 ], [ 0.000000e+00, %1688 ]
  %1706 = phi float [ %1523, %1701 ], [ %1700, %1688 ]
  %1707 = fsub fast float %1704, %1703
  %1708 = extractvalue %dx.types.CBufRet.f32 %1689, 1
  %1709 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %1708)  ; FMin(a,b)
  %1710 = fsub fast float %1529, %1690
  %1711 = fmul fast float %1709, 0x3FF7154760000000
  %1712 = fmul fast float %1711, %1710
  %1713 = call float @dx.op.unary.f32(i32 21, float %1712)  ; Exp(value)
  %1714 = fmul fast float %1495, 0x3FF7154760000000
  %1715 = fmul fast float %1714, %1706
  %1716 = fmul fast float %1715, %1709
  %1717 = call float @dx.op.unary.f32(i32 21, float %1716)  ; Exp(value)
  %1718 = fmul fast float %1714, %1705
  %1719 = fmul fast float %1718, %1709
  %1720 = call float @dx.op.unary.f32(i32 21, float %1719)  ; Exp(value)
  %1721 = fsub fast float %1717, %1720
  %1722 = fmul fast float %1721, %1713
  %1723 = fmul fast float %1709, %1495
  %1724 = fdiv fast float %1722, %1723
  %1725 = fadd fast float %1707, %1724
  %1726 = call float @dx.op.unary.f32(i32 6, float %1495)  ; FAbs(value)
  %1727 = fcmp fast olt float %1726, 0x3F0FFB4800000000
  %1728 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1710)  ; FMax(a,b)
  %1729 = fmul fast float %1728, 0x3FF7154760000000
  %1730 = fmul fast float %1729, %1708
  %1731 = call float @dx.op.unary.f32(i32 21, float %1730)  ; Exp(value)
  %1732 = fmul fast float %1731, %1523
  %1733 = select i1 %1727, float %1732, float %1725
  %1734 = extractvalue %dx.types.CBufRet.f32 %1388, 1
  %1735 = fmul fast float %1733, %1734
  br label %1736

; <label>:1736                                    ; preds = %1702, %1684
  %1737 = phi float [ %1735, %1702 ], [ 0.000000e+00, %1684 ]
  %1738 = icmp eq i32 %1687, 0
  br i1 %1738, label %1770, label %1739, !dx.controlflow.hints !46

; <label>:1739                                    ; preds = %1736
  %1740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1741 = extractvalue %dx.types.CBufRet.f32 %1740, 1
  %1742 = fsub fast float %1523, %1741
  %1743 = extractvalue %dx.types.CBufRet.f32 %1740, 3
  %1744 = fmul fast float %1742, %1743
  %1745 = call float @dx.op.unary.f32(i32 7, float %1744)  ; Saturate(value)
  %1746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1747 = extractvalue %dx.types.CBufRet.f32 %1746, 3
  %1748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1749 = extractvalue %dx.types.CBufRet.f32 %1748, 2
  %1750 = fsub fast float %1749, %1686
  %1751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1752 = extractvalue %dx.types.CBufRet.f32 %1751, 3
  %1753 = fmul fast float %1750, %1752
  %1754 = call float @dx.op.unary.f32(i32 7, float %1753)  ; Saturate(value)
  %1755 = fmul fast float %1754, %1747
  %1756 = extractvalue %dx.types.CBufRet.f32 %1751, 0
  %1757 = fsub fast float %1523, %1756
  %1758 = extractvalue %dx.types.CBufRet.f32 %1751, 1
  %1759 = fmul fast float %1757, %1758
  %1760 = call float @dx.op.unary.f32(i32 7, float %1759)  ; Saturate(value)
  %1761 = fsub fast float 1.000000e+00, %1745
  %1762 = fmul fast float %1760, %1761
  %1763 = fadd fast float %1762, %1745
  %1764 = extractvalue %dx.types.CBufRet.f32 %1740, 0
  %1765 = fsub fast float %1755, %1764
  %1766 = fmul fast float %1765, %1763
  %1767 = fadd fast float %1766, %1764
  %1768 = fmul fast float %1767, %1523
  %1769 = fadd fast float %1768, %1737
  br label %1770

; <label>:1770                                    ; preds = %1739, %1736
  %1771 = phi float [ %1769, %1739 ], [ %1737, %1736 ]
  %1772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %1773 = extractvalue %dx.types.CBufRet.f32 %1772, 3
  %1774 = fmul fast float %1771, 0xBFF7154760000000
  %1775 = fmul fast float %1774, %1773
  %1776 = call float @dx.op.unary.f32(i32 21, float %1775)  ; Exp(value)
  %1777 = call float @dx.op.unary.f32(i32 7, float %1776)  ; Saturate(value)
  %1778 = fmul fast float %1777, %1519
  %1779 = fmul fast float %1777, %1520
  %1780 = fmul fast float %1777, %1521
  %1781 = fadd fast float %1778, %1487
  %1782 = fadd fast float %1779, %1488
  %1783 = fadd fast float %1780, %1489
  %1784 = fsub fast float 1.000000e+00, %556
  %1785 = fmul fast float %548, %205
  %1786 = fmul fast float %1785, %1784
  %1787 = fmul fast float %1786, %1781
  %1788 = fmul fast float %549, %205
  %1789 = fmul fast float %1788, %1784
  %1790 = fmul fast float %1789, %1782
  %1791 = fmul fast float %550, %205
  %1792 = fmul fast float %1791, %1784
  %1793 = fmul fast float %1792, %1783
  %1794 = fadd fast float %1787, %206
  %1795 = fadd fast float %1790, %207
  %1796 = fadd fast float %1793, %208
  %1797 = fdiv fast float %532, %424
  %1798 = fadd fast float %424, %212
  %1799 = fmul fast float %212, %212
  %1800 = fmul fast float %1798, %1798
  %1801 = fsub fast float %1799, %1800
  %1802 = fmul fast float %1801, -5.000000e-01
  %1803 = fmul fast float %1802, %1797
  %1804 = fadd fast float %1803, %204
  %1805 = fadd fast float %532, %213
  %1806 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1807 = extractvalue %dx.types.CBufRet.i32 %1806, 0
  %1808 = icmp eq i32 %1807, 0
  br i1 %1808, label %1835, label %1809, !dx.controlflow.hints !62

; <label>:1809                                    ; preds = %1770
  %1810 = icmp ne i32 %218, 0
  %1811 = zext i1 %1810 to i32
  %1812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1813 = extractvalue %dx.types.CBufRet.f32 %1812, 2
  %1814 = extractvalue %dx.types.CBufRet.f32 %1812, 0
  %1815 = fsub fast float %1798, %1814
  %1816 = fmul fast float %1815, %1813
  %1817 = call float @dx.op.unary.f32(i32 7, float %1816)  ; Saturate(value)
  %1818 = fadd fast float %1817, -5.000000e-01
  %1819 = fmul fast float %1818, 2.000000e+00
  %1820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1821 = extractvalue %dx.types.CBufRet.f32 %1820, 2
  %1822 = fcmp fast olt float %1819, %1821
  br i1 %1822, label %1823, label %1835, !dx.controlflow.hints !63

; <label>:1823                                    ; preds = %1809
  %1824 = fmul fast float %1819, %1819
  %1825 = fmul fast float %1784, %205
  %1826 = fmul fast float %1819, %1825
  %1827 = fmul fast float %1824, %1825
  %1828 = fmul fast float %1826, %1824
  %1829 = fmul fast float %1824, %1824
  %1830 = fmul fast float %1829, %1825
  %1831 = fadd fast float %1826, %214
  %1832 = fadd fast float %1827, %215
  %1833 = fadd fast float %1828, %216
  %1834 = fadd fast float %1830, %217
  br label %1835

; <label>:1835                                    ; preds = %1823, %1809, %1770
  %1836 = phi float [ %214, %1770 ], [ %1831, %1823 ], [ %214, %1809 ]
  %1837 = phi float [ %215, %1770 ], [ %1832, %1823 ], [ %215, %1809 ]
  %1838 = phi float [ %216, %1770 ], [ %1833, %1823 ], [ %216, %1809 ]
  %1839 = phi float [ %217, %1770 ], [ %1834, %1823 ], [ %217, %1809 ]
  %1840 = phi i32 [ %218, %1770 ], [ 1, %1823 ], [ %1811, %1809 ]
  %1841 = fmul fast float %556, %205
  br label %1842

; <label>:1842                                    ; preds = %1835, %551
  %1843 = phi float [ %552, %551 ], [ %1798, %1835 ]
  %1844 = phi i32 [ %200, %551 ], [ %1685, %1835 ]
  %1845 = phi float [ %201, %551 ], [ %1686, %1835 ]
  %1846 = phi float [ %204, %551 ], [ %1804, %1835 ]
  %1847 = phi float [ %205, %551 ], [ %1841, %1835 ]
  %1848 = phi float [ %206, %551 ], [ %1794, %1835 ]
  %1849 = phi float [ %207, %551 ], [ %1795, %1835 ]
  %1850 = phi float [ %208, %551 ], [ %1796, %1835 ]
  %1851 = phi float [ %213, %551 ], [ %1805, %1835 ]
  %1852 = phi float [ %214, %551 ], [ %1836, %1835 ]
  %1853 = phi float [ %215, %551 ], [ %1837, %1835 ]
  %1854 = phi float [ %216, %551 ], [ %1838, %1835 ]
  %1855 = phi float [ %217, %551 ], [ %1839, %1835 ]
  %1856 = phi i32 [ %218, %551 ], [ %1840, %1835 ]
  %1857 = fmul fast float %424, %106
  %1858 = fmul fast float %424, %107
  %1859 = fmul fast float %424, %108
  %1860 = fadd fast float %1857, %209
  %1861 = fadd fast float %1858, %210
  %1862 = fadd fast float %1859, %211
  %1863 = fcmp fast olt float %1843, %180
  %1864 = extractvalue %dx.types.CBufRet.f32 %537, 2
  %1865 = fcmp fast olt float %1864, %1847
  %1866 = and i1 %1863, %1865
  br i1 %1866, label %199, label %1867

; <label>:1867                                    ; preds = %1842
  br label %1868

; <label>:1868                                    ; preds = %1867, %176
  %1869 = phi float [ 0.000000e+00, %176 ], [ %1846, %1867 ]
  %1870 = phi float [ 1.000000e+00, %176 ], [ %1847, %1867 ]
  %1871 = phi float [ 0.000000e+00, %176 ], [ %1848, %1867 ]
  %1872 = phi float [ 0.000000e+00, %176 ], [ %1849, %1867 ]
  %1873 = phi float [ 0.000000e+00, %176 ], [ %1850, %1867 ]
  %1874 = phi float [ 0.000000e+00, %176 ], [ %1851, %1867 ]
  %1875 = phi float [ 0.000000e+00, %176 ], [ %1852, %1867 ]
  %1876 = phi float [ 0.000000e+00, %176 ], [ %1853, %1867 ]
  %1877 = phi float [ 0.000000e+00, %176 ], [ %1854, %1867 ]
  %1878 = phi float [ 0.000000e+00, %176 ], [ %1855, %1867 ]
  %1879 = phi i32 [ 0, %176 ], [ %1856, %1867 ]
  %1880 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1881 = extractvalue %dx.types.CBufRet.i32 %1880, 0
  %1882 = icmp eq i32 %1881, 0
  br i1 %1882, label %1924, label %1883, !dx.controlflow.hints !64

; <label>:1883                                    ; preds = %1868
  %1884 = icmp eq i32 %1879, 0
  br i1 %1884, label %1923, label %1885, !dx.controlflow.hints !65

; <label>:1885                                    ; preds = %1883
  %1886 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1887 = extractvalue %dx.types.CBufRet.i32 %1886, 2
  %1888 = icmp eq i32 %1887, 0
  br i1 %1888, label %1895, label %1889, !dx.controlflow.hints !66

; <label>:1889                                    ; preds = %1885
  %1890 = fsub fast float 1.000000e+00, %1870
  %1891 = fdiv fast float %1875, %1890
  %1892 = fdiv fast float %1876, %1890
  %1893 = fdiv fast float %1877, %1890
  %1894 = fdiv fast float %1878, %1890
  br label %1900

; <label>:1895                                    ; preds = %1885
  %1896 = fadd fast float %1875, %1870
  %1897 = fadd fast float %1876, %1870
  %1898 = fadd fast float %1877, %1870
  %1899 = fadd fast float %1878, %1870
  br label %1900

; <label>:1900                                    ; preds = %1895, %1889
  %1901 = phi float [ %1891, %1889 ], [ %1896, %1895 ]
  %1902 = phi float [ %1892, %1889 ], [ %1897, %1895 ]
  %1903 = phi float [ %1893, %1889 ], [ %1898, %1895 ]
  %1904 = phi float [ %1894, %1889 ], [ %1899, %1895 ]
  %1905 = call float @dx.op.binary.f32(i32 35, float %1901, float -1.000000e+00)  ; FMax(a,b)
  %1906 = call float @dx.op.binary.f32(i32 35, float %1902, float -1.000000e+00)  ; FMax(a,b)
  %1907 = call float @dx.op.binary.f32(i32 35, float %1903, float -1.000000e+00)  ; FMax(a,b)
  %1908 = call float @dx.op.binary.f32(i32 35, float %1904, float -1.000000e+00)  ; FMax(a,b)
  %1909 = call float @dx.op.binary.f32(i32 36, float %1905, float 1.000000e+00)  ; FMin(a,b)
  %1910 = call float @dx.op.binary.f32(i32 36, float %1906, float 1.000000e+00)  ; FMin(a,b)
  %1911 = call float @dx.op.binary.f32(i32 36, float %1907, float 1.000000e+00)  ; FMin(a,b)
  %1912 = call float @dx.op.binary.f32(i32 36, float %1908, float 1.000000e+00)  ; FMin(a,b)
  %1913 = fmul fast float %1909, 1.500000e+00
  %1914 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1911, float %1913)  ; FMad(a,b,c)
  %1915 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1910, float 0.000000e+00)  ; FMad(a,b,c)
  %1916 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1912, float %1915)  ; FMad(a,b,c)
  %1917 = fmul fast float %1909, 0x3FEBB67AE0000000
  %1918 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1911, float %1917)  ; FMad(a,b,c)
  %1919 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1910, float 0.000000e+00)  ; FMad(a,b,c)
  %1920 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1912, float %1919)  ; FMad(a,b,c)
  %1921 = fadd fast float %1914, 5.000000e-01
  %1922 = fadd fast float %1918, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %20, i32 %21, i32 0, float %1921, float %1916, float %1922, float %1920, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1924

; <label>:1923                                    ; preds = %1883
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %20, i32 %21, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1924

; <label>:1924                                    ; preds = %1923, %1900, %1868
  %1925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1926 = extractvalue %dx.types.CBufRet.f32 %1925, 2
  %1927 = fsub fast float %1870, %1926
  %1928 = fdiv fast float %1927, %1926
  %1929 = call float @dx.op.unary.f32(i32 7, float %1928)  ; Saturate(value)
  %1930 = fmul fast float %1929, 2.000000e+00
  %1931 = fsub fast float 3.000000e+00, %1930
  %1932 = fmul fast float %1929, %1929
  %1933 = fmul fast float %1932, %1870
  %1934 = fmul fast float %1933, %1931
  %1935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1936 = extractvalue %dx.types.CBufRet.f32 %1935, 0
  %1937 = extractvalue %dx.types.CBufRet.f32 %1935, 1
  %1938 = extractvalue %dx.types.CBufRet.f32 %1935, 2
  %1939 = call float @dx.op.dot3.f32(i32 55, float %106, float %107, float %108, float %1936, float %1937, float %1938)  ; Dot3(ax,ay,az,bx,by,bz)
  %1940 = fmul fast float %1939, %1869
  %1941 = fcmp fast ogt float %1874, 0.000000e+00
  %1942 = fdiv fast float 1.000000e+00, %1874
  %1943 = fmul fast float %1940, %1942
  %1944 = select i1 %1941, float %1943, float %117
  %1945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1946 = extractvalue %dx.types.CBufRet.f32 %1945, 0
  %1947 = extractvalue %dx.types.CBufRet.f32 %1945, 1
  %1948 = extractvalue %dx.types.CBufRet.f32 %1945, 2
  %1949 = fmul fast float %1946, %70
  %1950 = fmul fast float %1947, %70
  %1951 = fmul fast float %1948, %70
  %1952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1953 = extractvalue %dx.types.CBufRet.f32 %1952, 0
  %1954 = extractvalue %dx.types.CBufRet.f32 %1952, 1
  %1955 = extractvalue %dx.types.CBufRet.f32 %1952, 2
  %1956 = fmul fast float %1953, %71
  %1957 = fmul fast float %1954, %71
  %1958 = fmul fast float %1955, %71
  %1959 = fadd fast float %1956, %1949
  %1960 = fadd fast float %1957, %1950
  %1961 = fadd fast float %1958, %1951
  %1962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1963 = extractvalue %dx.types.CBufRet.f32 %1962, 0
  %1964 = extractvalue %dx.types.CBufRet.f32 %1962, 1
  %1965 = extractvalue %dx.types.CBufRet.f32 %1962, 2
  %1966 = fadd fast float %1959, %1963
  %1967 = fadd fast float %1960, %1964
  %1968 = fadd fast float %1961, %1965
  %1969 = fmul fast float %1966, %1944
  %1970 = fmul fast float %1967, %1944
  %1971 = fmul fast float %1968, %1944
  %1972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1973 = extractvalue %dx.types.CBufRet.f32 %1972, 0
  %1974 = extractvalue %dx.types.CBufRet.f32 %1972, 1
  %1975 = extractvalue %dx.types.CBufRet.f32 %1972, 2
  %1976 = extractvalue %dx.types.CBufRet.f32 %1972, 3
  %1977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1978 = extractvalue %dx.types.CBufRet.f32 %1977, 0
  %1979 = extractvalue %dx.types.CBufRet.f32 %1977, 1
  %1980 = extractvalue %dx.types.CBufRet.f32 %1977, 2
  %1981 = extractvalue %dx.types.CBufRet.f32 %1977, 3
  %1982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1983 = extractvalue %dx.types.CBufRet.f32 %1982, 0
  %1984 = extractvalue %dx.types.CBufRet.f32 %1982, 1
  %1985 = extractvalue %dx.types.CBufRet.f32 %1982, 2
  %1986 = extractvalue %dx.types.CBufRet.f32 %1982, 3
  %1987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1988 = extractvalue %dx.types.CBufRet.f32 %1987, 0
  %1989 = extractvalue %dx.types.CBufRet.f32 %1987, 1
  %1990 = extractvalue %dx.types.CBufRet.f32 %1987, 2
  %1991 = extractvalue %dx.types.CBufRet.f32 %1987, 3
  %1992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1993 = extractvalue %dx.types.CBufRet.f32 %1992, 3
  %1994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1995 = extractvalue %dx.types.CBufRet.f32 %1994, 3
  %1996 = extractvalue %dx.types.CBufRet.f32 %1994, 0
  %1997 = extractvalue %dx.types.CBufRet.f32 %1994, 1
  %1998 = extractvalue %dx.types.CBufRet.f32 %1994, 2
  %1999 = fcmp fast olt float %1998, -5.000000e-01
  %2000 = call float @dx.op.dot3.f32(i32 55, float %1969, float %1970, float %1971, float %1969, float %1970, float %1971)  ; Dot3(ax,ay,az,bx,by,bz)
  %2001 = call float @dx.op.unary.f32(i32 25, float %2000)  ; Rsqrt(value)
  %2002 = fmul fast float %2001, %2000
  %2003 = fmul fast float %2001, %1969
  %2004 = fmul fast float %2001, %1970
  %2005 = fmul fast float %2001, %1971
  %2006 = fadd fast float %2002, %1976
  %2007 = call float @dx.op.dot3.f32(i32 55, float %2003, float %2004, float %2005, float %1973, float %1974, float %1975)  ; Dot3(ax,ay,az,bx,by,bz)
  %2008 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2009 = extractvalue %dx.types.CBufRet.i32 %2008, 1
  %2010 = and i32 %2009, 1
  %2011 = icmp ne i32 %2010, 0
  %2012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %2013 = extractvalue %dx.types.CBufRet.f32 %2012, 2
  %2014 = fcmp fast ogt float %2013, 0.000000e+00
  %2015 = and i1 %2011, %2014
  br i1 %2015, label %2016, label %2422, !dx.controlflow.hints !67

; <label>:2016                                    ; preds = %1924
  %2017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %2018 = extractvalue %dx.types.CBufRet.f32 %2017, 3
  %2019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2020 = extractvalue %dx.types.CBufRet.f32 %2019, 2
  %2021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2022 = extractvalue %dx.types.CBufRet.f32 %2021, 2
  %2023 = fsub fast float %2020, %2022
  %2024 = and i32 %2009, 2
  %2025 = extractvalue %dx.types.CBufRet.i32 %2008, 0
  %2026 = call i32 @dx.op.binary.i32(i32 40, i32 %2025, i32 3)  ; UMin(a,b)
  %2027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2028 = extractvalue %dx.types.CBufRet.f32 %2027, 0
  %2029 = extractvalue %dx.types.CBufRet.f32 %2027, 1
  %2030 = extractvalue %dx.types.CBufRet.f32 %2021, 0
  %2031 = extractvalue %dx.types.CBufRet.f32 %2021, 1
  %2032 = fsub fast float %2028, %2030
  %2033 = fsub fast float %2029, %2031
  %2034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2035 = extractvalue %dx.types.CBufRet.f32 %2034, 0
  %2036 = fcmp fast ogt float %2035, 0.000000e+00
  %2037 = fsub fast float -0.000000e+00, %2032
  %2038 = fsub fast float -0.000000e+00, %2033
  %2039 = call float @dx.op.dot2.f32(i32 54, float %2003, float %2004, float %2003, float %2004)  ; Dot2(ax,ay,bx,by)
  %2040 = call float @dx.op.dot2.f32(i32 54, float %2003, float %2004, float %2037, float %2038)  ; Dot2(ax,ay,bx,by)
  %2041 = fmul fast float %2040, 2.000000e+00
  %2042 = call float @dx.op.dot2.f32(i32 54, float %2037, float %2038, float %2037, float %2038)  ; Dot2(ax,ay,bx,by)
  %2043 = fmul fast float %2035, %2035
  %2044 = fsub fast float %2042, %2043
  %2045 = fmul fast float %2041, %2041
  %2046 = fmul fast float %2039, 4.000000e+00
  %2047 = fmul fast float %2046, %2044
  %2048 = fsub fast float %2045, %2047
  %2049 = fcmp fast ogt float %2048, 0.000000e+00
  br i1 %2049, label %2050, label %2065, !dx.controlflow.hints !68

; <label>:2050                                    ; preds = %2016
  %2051 = fcmp fast ogt float %2041, 0.000000e+00
  %2052 = call float @dx.op.unary.f32(i32 24, float %2048)  ; Sqrt(value)
  %2053 = fsub fast float -0.000000e+00, %2052
  %2054 = select i1 %2051, float %2052, float %2053
  %2055 = fadd fast float %2054, %2041
  %2056 = fmul float %2055, -5.000000e-01
  %2057 = fdiv fast float %2056, %2039
  %2058 = call float @dx.op.binary.f32(i32 35, float %2057, float 0.000000e+00)  ; FMax(a,b)
  %2059 = call float @dx.op.binary.f32(i32 36, float %2002, float %2058)  ; FMin(a,b)
  %2060 = fdiv fast float %2044, %2056
  %2061 = call float @dx.op.binary.f32(i32 35, float %2060, float 0.000000e+00)  ; FMax(a,b)
  %2062 = call float @dx.op.binary.f32(i32 36, float %2002, float %2061)  ; FMin(a,b)
  %2063 = call float @dx.op.binary.f32(i32 36, float %2059, float %2062)  ; FMin(a,b)
  %2064 = call float @dx.op.binary.f32(i32 35, float %2059, float %2062)  ; FMax(a,b)
  br label %2065

; <label>:2065                                    ; preds = %2050, %2016
  %2066 = phi float [ %2064, %2050 ], [ -1.000000e+00, %2016 ]
  %2067 = phi float [ %2063, %2050 ], [ -1.000000e+00, %2016 ]
  %2068 = phi i1 [ true, %2050 ], [ false, %2016 ]
  %2069 = and i1 %2036, %2068
  br i1 %2069, label %2070, label %2072, !dx.controlflow.hints !69

; <label>:2070                                    ; preds = %2065
  %2071 = fcmp fast oeq float %2067, %2066
  br i1 %2071, label %2375, label %2073, !dx.controlflow.hints !70

; <label>:2072                                    ; preds = %2065
  br i1 %2036, label %2375, label %2073, !dx.controlflow.hints !71

; <label>:2073                                    ; preds = %2072, %2070
  %2074 = phi float [ %2002, %2072 ], [ %2066, %2070 ]
  %2075 = phi float [ 0.000000e+00, %2072 ], [ %2067, %2070 ]
  %2076 = icmp ne i32 %2024, 0
  %2077 = fmul fast float %2074, %2005
  %2078 = fadd fast float %2077, %2018
  %2079 = fmul fast float %2078, %2074
  %2080 = select i1 %2076, float 0.000000e+00, float %2079
  %2081 = fcmp fast oeq float %2005, 0.000000e+00
  %2082 = fdiv fast float %2023, %2005
  %2083 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2082)  ; FMax(a,b)
  %2084 = select i1 %2081, float %2074, float %2083
  %2085 = call float @dx.op.binary.f32(i32 36, float %2074, float %2084)  ; FMin(a,b)
  %2086 = fcmp fast ogt float %2005, 0.000000e+00
  %2087 = fcmp fast olt float %2023, 0.000000e+00
  br i1 %2086, label %2088, label %2145, !dx.controlflow.hints !72

; <label>:2088                                    ; preds = %2073
  %2089 = icmp eq i32 %2024, 0
  br i1 %2087, label %2090, label %2134, !dx.controlflow.hints !73

; <label>:2090                                    ; preds = %2088
  %2091 = select i1 %2089, float %2074, float 0.000000e+00
  %2092 = fsub fast float -0.000000e+00, %2091
  %2093 = call float @dx.op.unary.f32(i32 6, float %2092)  ; FAbs(value)
  %2094 = fmul fast float %2091, %2005
  %2095 = fadd fast float %2094, %2018
  %2096 = fmul fast float %2093, %2095
  %2097 = fsub fast float %2080, %2096
  %2098 = fsub fast float %2074, %2093
  %2099 = select i1 %2089, float %2098, float 0.000000e+00
  %2100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2101 = extractvalue %dx.types.CBufRet.f32 %2100, 0
  %2102 = extractvalue %dx.types.CBufRet.f32 %2100, 1
  %2103 = extractvalue %dx.types.CBufRet.f32 %2100, 2
  %2104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2105 = extractvalue %dx.types.CBufRet.f32 %2104, 0
  %2106 = extractvalue %dx.types.CBufRet.f32 %2104, 1
  %2107 = extractvalue %dx.types.CBufRet.f32 %2104, 2
  %2108 = extractvalue %dx.types.CBufRet.f32 %2104, 3
  %2109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2110 = extractvalue %dx.types.CBufRet.f32 %2109, 3
  %2111 = call float @dx.op.binary.f32(i32 36, float %2097, float %2110)  ; FMin(a,b)
  %2112 = fmul fast float %2108, %2099
  %2113 = call float @dx.op.unary.f32(i32 7, float %2112)  ; Saturate(value)
  %2114 = fsub fast float %2105, %2101
  %2115 = fsub fast float %2106, %2102
  %2116 = fsub fast float %2107, %2103
  %2117 = fmul fast float %2113, %2114
  %2118 = fmul fast float %2113, %2115
  %2119 = fmul fast float %2113, %2116
  %2120 = fadd fast float %2117, %2101
  %2121 = fadd fast float %2118, %2102
  %2122 = fadd fast float %2119, %2103
  %2123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2124 = extractvalue %dx.types.CBufRet.f32 %2123, 0
  %2125 = extractvalue %dx.types.CBufRet.f32 %2123, 1
  %2126 = fadd fast float %2125, %2124
  %2127 = call float @dx.op.unary.f32(i32 7, float %2126)  ; Saturate(value)
  %2128 = extractvalue %dx.types.CBufRet.f32 %2123, 2
  %2129 = extractvalue %dx.types.CBufRet.f32 %2123, 3
  %2130 = fadd fast float %2129, %2128
  %2131 = call float @dx.op.unary.f32(i32 7, float %2130)  ; Saturate(value)
  %2132 = fmul fast float %2127, %2111
  %2133 = fmul fast float %2132, %2131
  br label %2375

; <label>:2134                                    ; preds = %2088
  br i1 %2089, label %2135, label %2156, !dx.controlflow.hints !74

; <label>:2135                                    ; preds = %2134
  %2136 = call float @dx.op.binary.f32(i32 36, float %2085, float %2075)  ; FMin(a,b)
  %2137 = fsub fast float %2085, %2136
  %2138 = fsub fast float %2137, %2074
  %2139 = call float @dx.op.unary.f32(i32 6, float %2138)  ; FAbs(value)
  %2140 = fadd fast float %2137, %2074
  %2141 = fmul fast float %2140, %2005
  %2142 = fadd fast float %2141, %2018
  %2143 = fmul fast float %2142, %2139
  %2144 = fsub fast float %2080, %2143
  br label %2156

; <label>:2145                                    ; preds = %2073
  br i1 %2087, label %2146, label %2156, !dx.controlflow.hints !75

; <label>:2146                                    ; preds = %2145
  %2147 = call float @dx.op.binary.f32(i32 35, float %2075, float %2085)  ; FMax(a,b)
  %2148 = icmp eq i32 %2024, 0
  %2149 = select i1 %2148, float %2085, float 0.000000e+00
  %2150 = fsub fast float -0.000000e+00, %2149
  %2151 = call float @dx.op.unary.f32(i32 6, float %2150)  ; FAbs(value)
  %2152 = fmul fast float %2149, %2005
  %2153 = fadd fast float %2152, %2018
  %2154 = fmul fast float %2151, %2153
  %2155 = fsub fast float %2080, %2154
  br label %2156

; <label>:2156                                    ; preds = %2146, %2145, %2135, %2134
  %2157 = phi float [ %2075, %2134 ], [ %2075, %2135 ], [ %2147, %2146 ], [ %2075, %2145 ]
  %2158 = phi float [ 0.000000e+00, %2134 ], [ %2139, %2135 ], [ %2151, %2146 ], [ 0.000000e+00, %2145 ]
  %2159 = phi float [ %2080, %2134 ], [ %2144, %2135 ], [ %2155, %2146 ], [ %2080, %2145 ]
  %2160 = phi float [ %2085, %2134 ], [ %2085, %2135 ], [ %2074, %2146 ], [ %2074, %2145 ]
  %2161 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 0
  store float -1.000000e+00, float* %2161, align 4, !tbaa !76, !noalias !80
  %2162 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 1
  store float -1.000000e+00, float* %2162, align 4, !tbaa !76, !noalias !80
  %2163 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 2
  store float -1.000000e+00, float* %2163, align 4, !tbaa !76, !noalias !80
  %2164 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 0
  store float -1.000000e+00, float* %2164, align 4, !tbaa !76, !noalias !80
  %2165 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 1
  store float -1.000000e+00, float* %2165, align 4, !tbaa !76, !noalias !80
  %2166 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 2
  store float -1.000000e+00, float* %2166, align 4, !tbaa !76, !noalias !80
  %2167 = icmp sgt i32 %2026, 0
  br i1 %2167, label %2168, label %2229

; <label>:2168                                    ; preds = %2156
  br label %2169

; <label>:2169                                    ; preds = %2218, %2168
  %2170 = phi i32 [ %2219, %2218 ], [ 0, %2168 ]
  %2171 = phi i32 [ %2220, %2218 ], [ 0, %2168 ]
  %2172 = add nuw i32 %2171, 171
  %2173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 %2172)  ; CBufferLoadLegacy(handle,regIndex)
  %2174 = extractvalue %dx.types.CBufRet.f32 %2173, 0
  %2175 = extractvalue %dx.types.CBufRet.f32 %2173, 1
  %2176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2177 = extractvalue %dx.types.CBufRet.f32 %2176, 0
  %2178 = extractvalue %dx.types.CBufRet.f32 %2176, 1
  %2179 = fsub fast float %2174, %2177
  %2180 = fsub fast float %2175, %2178
  %2181 = extractvalue %dx.types.CBufRet.f32 %2173, 2
  %2182 = fsub fast float -0.000000e+00, %2179
  %2183 = fsub fast float -0.000000e+00, %2180
  %2184 = call float @dx.op.dot2.f32(i32 54, float %2003, float %2004, float %2182, float %2183)  ; Dot2(ax,ay,bx,by)
  %2185 = fmul fast float %2184, 2.000000e+00
  %2186 = call float @dx.op.dot2.f32(i32 54, float %2182, float %2183, float %2182, float %2183)  ; Dot2(ax,ay,bx,by)
  %2187 = fmul fast float %2181, %2181
  %2188 = fsub fast float %2186, %2187
  %2189 = fmul fast float %2185, %2185
  %2190 = fmul fast float %2046, %2188
  %2191 = fsub fast float %2189, %2190
  %2192 = fcmp fast ogt float %2191, 0.000000e+00
  br i1 %2192, label %2193, label %2208, !dx.controlflow.hints !68

; <label>:2193                                    ; preds = %2169
  %2194 = fcmp fast ogt float %2185, 0.000000e+00
  %2195 = call float @dx.op.unary.f32(i32 24, float %2191)  ; Sqrt(value)
  %2196 = fsub fast float -0.000000e+00, %2195
  %2197 = select i1 %2194, float %2195, float %2196
  %2198 = fadd fast float %2197, %2185
  %2199 = fmul float %2198, -5.000000e-01
  %2200 = fdiv fast float %2199, %2039
  %2201 = call float @dx.op.binary.f32(i32 35, float %2200, float 0.000000e+00)  ; FMax(a,b)
  %2202 = call float @dx.op.binary.f32(i32 36, float %2074, float %2201)  ; FMin(a,b)
  %2203 = fdiv fast float %2188, %2199
  %2204 = call float @dx.op.binary.f32(i32 35, float %2203, float 0.000000e+00)  ; FMax(a,b)
  %2205 = call float @dx.op.binary.f32(i32 36, float %2074, float %2204)  ; FMin(a,b)
  %2206 = call float @dx.op.binary.f32(i32 36, float %2202, float %2205)  ; FMin(a,b)
  %2207 = call float @dx.op.binary.f32(i32 35, float %2202, float %2205)  ; FMax(a,b)
  br label %2208

; <label>:2208                                    ; preds = %2193, %2169
  %2209 = phi float [ %2207, %2193 ], [ -1.000000e+00, %2169 ]
  %2210 = phi float [ %2206, %2193 ], [ -1.000000e+00, %2169 ]
  %2211 = phi i1 [ true, %2193 ], [ false, %2169 ]
  br i1 %2211, label %2212, label %2218, !dx.controlflow.hints !91

; <label>:2212                                    ; preds = %2208
  %2213 = call float @dx.op.binary.f32(i32 35, float %2157, float %2210)  ; FMax(a,b)
  %2214 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 %2171
  store float %2213, float* %2214, align 4, !tbaa !76, !noalias !80
  %2215 = call float @dx.op.binary.f32(i32 35, float %2157, float %2209)  ; FMax(a,b)
  %2216 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 %2171
  store float %2215, float* %2216, align 4, !tbaa !76, !noalias !80
  %2217 = add nsw i32 %2170, 1
  br label %2218

; <label>:2218                                    ; preds = %2212, %2208
  %2219 = phi i32 [ %2217, %2212 ], [ %2170, %2208 ]
  %2220 = add nuw nsw i32 %2171, 1
  %2221 = icmp eq i32 %2220, %2026
  br i1 %2221, label %2222, label %2169

; <label>:2222                                    ; preds = %2218
  %2223 = load float, float* %2163, align 4, !tbaa !76, !alias.scope !92, !noalias !95
  %2224 = load float, float* %2162, align 4, !tbaa !76, !alias.scope !98, !noalias !99
  %2225 = load float, float* %2161, align 4, !tbaa !76, !alias.scope !100, !noalias !101
  %2226 = load float, float* %2166, align 4, !tbaa !76, !alias.scope !102, !noalias !105
  %2227 = load float, float* %2165, align 4, !tbaa !76, !alias.scope !108, !noalias !109
  %2228 = load float, float* %2164, align 4, !tbaa !76, !alias.scope !110, !noalias !111
  br label %2229

; <label>:2229                                    ; preds = %2222, %2156
  %2230 = phi float [ -1.000000e+00, %2156 ], [ %2228, %2222 ]
  %2231 = phi float [ -1.000000e+00, %2156 ], [ %2227, %2222 ]
  %2232 = phi float [ -1.000000e+00, %2156 ], [ %2226, %2222 ]
  %2233 = phi float [ -1.000000e+00, %2156 ], [ %2225, %2222 ]
  %2234 = phi float [ -1.000000e+00, %2156 ], [ %2224, %2222 ]
  %2235 = phi float [ -1.000000e+00, %2156 ], [ %2223, %2222 ]
  %2236 = phi i32 [ 0, %2156 ], [ %2219, %2222 ]
  %2237 = call float @dx.op.binary.f32(i32 36, float %2234, float %2235)  ; FMin(a,b)
  %2238 = call float @dx.op.binary.f32(i32 36, float %2233, float %2237)  ; FMin(a,b)
  %2239 = call float @dx.op.binary.f32(i32 35, float %2233, float %2234)  ; FMax(a,b)
  %2240 = call float @dx.op.binary.f32(i32 36, float %2239, float %2235)  ; FMin(a,b)
  %2241 = call float @dx.op.binary.f32(i32 36, float %2233, float %2234)  ; FMin(a,b)
  %2242 = call float @dx.op.binary.f32(i32 35, float %2241, float %2240)  ; FMax(a,b)
  %2243 = call float @dx.op.binary.f32(i32 35, float %2234, float %2235)  ; FMax(a,b)
  %2244 = call float @dx.op.binary.f32(i32 35, float %2233, float %2243)  ; FMax(a,b)
  store float %2238, float* %2161, align 4, !tbaa !76, !alias.scope !100, !noalias !101
  store float %2242, float* %2162, align 4, !tbaa !76, !alias.scope !98, !noalias !99
  store float %2244, float* %2163, align 4, !tbaa !76, !alias.scope !92, !noalias !95
  %2245 = call float @dx.op.binary.f32(i32 36, float %2231, float %2232)  ; FMin(a,b)
  %2246 = call float @dx.op.binary.f32(i32 36, float %2230, float %2245)  ; FMin(a,b)
  %2247 = call float @dx.op.binary.f32(i32 35, float %2230, float %2231)  ; FMax(a,b)
  %2248 = call float @dx.op.binary.f32(i32 36, float %2247, float %2232)  ; FMin(a,b)
  %2249 = call float @dx.op.binary.f32(i32 36, float %2230, float %2231)  ; FMin(a,b)
  %2250 = call float @dx.op.binary.f32(i32 35, float %2249, float %2248)  ; FMax(a,b)
  %2251 = call float @dx.op.binary.f32(i32 35, float %2231, float %2232)  ; FMax(a,b)
  %2252 = call float @dx.op.binary.f32(i32 35, float %2230, float %2251)  ; FMax(a,b)
  store float %2246, float* %2164, align 4, !tbaa !76, !alias.scope !110, !noalias !111
  store float %2250, float* %2165, align 4, !tbaa !76, !alias.scope !108, !noalias !109
  store float %2252, float* %2166, align 4, !tbaa !76, !alias.scope !102, !noalias !105
  %2253 = sub nsw i32 3, %2236
  %2254 = icmp sgt i32 %2253, 2
  br i1 %2254, label %2255, label %2293, !dx.controlflow.hints !112

; <label>:2255                                    ; preds = %2229
  %2256 = icmp eq i32 %2024, 0
  %2257 = fsub fast float %2074, %2158
  %2258 = select i1 %2256, float %2257, float %2158
  %2259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2260 = extractvalue %dx.types.CBufRet.f32 %2259, 0
  %2261 = extractvalue %dx.types.CBufRet.f32 %2259, 1
  %2262 = extractvalue %dx.types.CBufRet.f32 %2259, 2
  %2263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2264 = extractvalue %dx.types.CBufRet.f32 %2263, 0
  %2265 = extractvalue %dx.types.CBufRet.f32 %2263, 1
  %2266 = extractvalue %dx.types.CBufRet.f32 %2263, 2
  %2267 = extractvalue %dx.types.CBufRet.f32 %2263, 3
  %2268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2269 = extractvalue %dx.types.CBufRet.f32 %2268, 3
  %2270 = call float @dx.op.binary.f32(i32 36, float %2159, float %2269)  ; FMin(a,b)
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
  %2282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
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
  br label %2375

; <label>:2293                                    ; preds = %2229
  %2294 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 %2253
  %2295 = load float, float* %2294, align 4, !tbaa !76, !noalias !80
  %2296 = fcmp fast olt float %2295, %2160
  %2297 = icmp sgt i32 %2236, 0
  %2298 = and i1 %2297, %2296
  br i1 %2298, label %2299, label %2336

; <label>:2299                                    ; preds = %2293
  br label %2300

; <label>:2300                                    ; preds = %2329, %2299
  %2301 = phi float [ %2330, %2329 ], [ %2158, %2299 ]
  %2302 = phi float [ %2331, %2329 ], [ %2159, %2299 ]
  %2303 = phi float [ %2311, %2329 ], [ %2295, %2299 ]
  %2304 = phi i32 [ %2308, %2329 ], [ %2253, %2299 ]
  %2305 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 %2304
  %2306 = load float, float* %2305, align 4, !tbaa !76, !noalias !80
  %2307 = icmp slt i32 %2304, 2
  %2308 = add nsw i32 %2304, 1
  %2309 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 %2308
  %2310 = load float, float* %2309, align 4, !tbaa !76, !noalias !80
  %2311 = select i1 %2307, float %2310, float %2074
  %2312 = call float @dx.op.binary.f32(i32 36, float %2311, float %2306)  ; FMin(a,b)
  %2313 = call float @dx.op.binary.f32(i32 36, float %2160, float %2312)  ; FMin(a,b)
  %2314 = icmp eq i32 %2024, 0
  %2315 = fadd fast float %2313, %2303
  %2316 = fmul fast float %2315, %2005
  %2317 = fadd fast float %2316, %2018
  br i1 %2314, label %2323, label %2318, !dx.controlflow.hints !113

; <label>:2318                                    ; preds = %2300
  %2319 = fsub fast float %2313, %2303
  %2320 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2319)  ; FMax(a,b)
  %2321 = fmul fast float %2320, %2317
  %2322 = fadd fast float %2321, %2302
  br label %2329

; <label>:2323                                    ; preds = %2300
  %2324 = fsub fast float %2303, %2313
  %2325 = call float @dx.op.unary.f32(i32 6, float %2324)  ; FAbs(value)
  %2326 = fadd fast float %2325, %2301
  %2327 = fmul fast float %2325, %2317
  %2328 = fsub fast float %2302, %2327
  br label %2329

; <label>:2329                                    ; preds = %2323, %2318
  %2330 = phi float [ %2320, %2318 ], [ %2326, %2323 ]
  %2331 = phi float [ %2322, %2318 ], [ %2328, %2323 ]
  %2332 = fcmp fast olt float %2311, %2160
  %2333 = icmp slt i32 %2308, 3
  %2334 = and i1 %2333, %2332
  br i1 %2334, label %2300, label %2335

; <label>:2335                                    ; preds = %2329
  br label %2336

; <label>:2336                                    ; preds = %2335, %2293
  %2337 = phi float [ %2158, %2293 ], [ %2330, %2335 ]
  %2338 = phi float [ %2159, %2293 ], [ %2331, %2335 ]
  %2339 = fsub fast float %2074, %2337
  %2340 = select i1 %2076, float %2337, float %2339
  %2341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2342 = extractvalue %dx.types.CBufRet.f32 %2341, 0
  %2343 = extractvalue %dx.types.CBufRet.f32 %2341, 1
  %2344 = extractvalue %dx.types.CBufRet.f32 %2341, 2
  %2345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2346 = extractvalue %dx.types.CBufRet.f32 %2345, 0
  %2347 = extractvalue %dx.types.CBufRet.f32 %2345, 1
  %2348 = extractvalue %dx.types.CBufRet.f32 %2345, 2
  %2349 = extractvalue %dx.types.CBufRet.f32 %2345, 3
  %2350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2351 = extractvalue %dx.types.CBufRet.f32 %2350, 3
  %2352 = call float @dx.op.binary.f32(i32 36, float %2338, float %2351)  ; FMin(a,b)
  %2353 = fmul fast float %2349, %2340
  %2354 = call float @dx.op.unary.f32(i32 7, float %2353)  ; Saturate(value)
  %2355 = fsub fast float %2346, %2342
  %2356 = fsub fast float %2347, %2343
  %2357 = fsub fast float %2348, %2344
  %2358 = fmul fast float %2354, %2355
  %2359 = fmul fast float %2354, %2356
  %2360 = fmul fast float %2354, %2357
  %2361 = fadd fast float %2358, %2342
  %2362 = fadd fast float %2359, %2343
  %2363 = fadd fast float %2360, %2344
  %2364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2365 = extractvalue %dx.types.CBufRet.f32 %2364, 0
  %2366 = extractvalue %dx.types.CBufRet.f32 %2364, 1
  %2367 = fadd fast float %2366, %2365
  %2368 = call float @dx.op.unary.f32(i32 7, float %2367)  ; Saturate(value)
  %2369 = extractvalue %dx.types.CBufRet.f32 %2364, 2
  %2370 = extractvalue %dx.types.CBufRet.f32 %2364, 3
  %2371 = fadd fast float %2370, %2369
  %2372 = call float @dx.op.unary.f32(i32 7, float %2371)  ; Saturate(value)
  %2373 = fmul fast float %2368, %2352
  %2374 = fmul fast float %2373, %2372
  br label %2375

; <label>:2375                                    ; preds = %2336, %2255, %2090, %2072, %2070
  %2376 = phi float [ %2099, %2090 ], [ %2258, %2255 ], [ %2340, %2336 ], [ 0.000000e+00, %2070 ], [ 0.000000e+00, %2072 ]
  %2377 = phi float [ %2133, %2090 ], [ %2292, %2255 ], [ %2374, %2336 ], [ 0.000000e+00, %2070 ], [ 0.000000e+00, %2072 ]
  %2378 = phi float [ %2120, %2090 ], [ %2279, %2255 ], [ %2361, %2336 ], [ 0.000000e+00, %2070 ], [ 0.000000e+00, %2072 ]
  %2379 = phi float [ %2121, %2090 ], [ %2280, %2255 ], [ %2362, %2336 ], [ 0.000000e+00, %2070 ], [ 0.000000e+00, %2072 ]
  %2380 = phi float [ %2122, %2090 ], [ %2281, %2255 ], [ %2363, %2336 ], [ 0.000000e+00, %2070 ], [ 0.000000e+00, %2072 ]
  %2381 = fmul fast float %2013, %2377
  %2382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2383 = extractvalue %dx.types.CBufRet.f32 %2382, 2
  %2384 = fsub fast float %2020, %2383
  %2385 = fcmp fast olt float %2381, -2.000000e+01
  %2386 = call float @dx.op.unary.f32(i32 21, float %2381)  ; Exp(value)
  %2387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2388 = extractvalue %dx.types.CBufRet.f32 %2387, 2
  %2389 = extractvalue %dx.types.CBufRet.f32 %2387, 3
  %2390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2391 = extractvalue %dx.types.CBufRet.f32 %2390, 2
  %2392 = fmul fast float %2389, %2384
  %2393 = call float @dx.op.unary.f32(i32 7, float %2392)  ; Saturate(value)
  %2394 = fsub fast float 1.000000e+00, %2393
  %2395 = fmul fast float %2005, 5.000000e-01
  %2396 = fadd fast float %2395, 5.000000e-01
  %2397 = call float @dx.op.unary.f32(i32 7, float %2396)  ; Saturate(value)
  %2398 = fsub fast float 1.000000e+00, %2397
  %2399 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2394)  ; FMax(a,b)
  %2400 = fdiv fast float %2398, %2399
  %2401 = fsub fast float %2384, %1971
  %2402 = call float @dx.op.unary.f32(i32 6, float %2401)  ; FAbs(value)
  %2403 = fmul fast float %2402, %2388
  %2404 = call float @dx.op.unary.f32(i32 7, float %2400)  ; Saturate(value)
  %2405 = fsub fast float 1.000000e+00, %2403
  %2406 = fmul fast float %2405, %2404
  %2407 = fadd fast float %2406, %2403
  %2408 = fmul fast float %2391, %2384
  %2409 = call float @dx.op.unary.f32(i32 7, float %2408)  ; Saturate(value)
  %2410 = fsub fast float 1.000000e+00, %2407
  %2411 = fmul fast float %2410, %2409
  %2412 = fadd fast float %2411, %2407
  %2413 = call float @dx.op.unary.f32(i32 7, float %2412)  ; Saturate(value)
  %2414 = fadd fast float %2386, -1.000000e+00
  %2415 = select i1 %2385, float -1.000000e+00, float %2414
  %2416 = fmul fast float %2413, %2415
  %2417 = fadd fast float %2416, 1.000000e+00
  %2418 = fsub fast float -0.000000e+00, %2416
  %2419 = fmul fast float %2378, %2418
  %2420 = fmul fast float %2379, %2418
  %2421 = fmul fast float %2380, %2418
  br label %2422

; <label>:2422                                    ; preds = %2375, %1924
  %2423 = phi float [ %2376, %2375 ], [ 0.000000e+00, %1924 ]
  %2424 = phi float [ %2417, %2375 ], [ 1.000000e+00, %1924 ]
  %2425 = phi float [ %2419, %2375 ], [ 0.000000e+00, %1924 ]
  %2426 = phi float [ %2420, %2375 ], [ 0.000000e+00, %1924 ]
  %2427 = phi float [ %2421, %2375 ], [ 0.000000e+00, %1924 ]
  %2428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2429 = extractvalue %dx.types.CBufRet.f32 %2428, 1
  %2430 = fsub fast float 1.000000e+00, %2424
  %2431 = fmul fast float %2430, %2006
  %2432 = fmul fast float %2431, %2429
  %2433 = fsub fast float %2006, %2432
  br i1 %1999, label %2434, label %2463, !dx.controlflow.hints !114

; <label>:2434                                    ; preds = %2422
  %2435 = fmul fast float %2007, %1996
  %2436 = fadd fast float %2435, %1997
  %2437 = call float @dx.op.unary.f32(i32 7, float %2436)  ; Saturate(value)
  %2438 = fmul fast float %1978, %2433
  %2439 = fsub fast float -0.000000e+00, %2438
  %2440 = fmul fast float %1979, %2433
  %2441 = fsub fast float -0.000000e+00, %2440
  %2442 = call float @dx.op.unary.f32(i32 21, float %2439)  ; Exp(value)
  %2443 = call float @dx.op.unary.f32(i32 21, float %2441)  ; Exp(value)
  %2444 = call float @dx.op.binary.f32(i32 35, float %1986, float %2442)  ; FMax(a,b)
  %2445 = call float @dx.op.binary.f32(i32 35, float %1986, float %2443)  ; FMax(a,b)
  %2446 = fsub fast float %2445, %2444
  %2447 = fmul fast float %2446, %2437
  %2448 = fadd fast float %2447, %2444
  %2449 = call float @dx.op.unary.f32(i32 7, float %2448)  ; Saturate(value)
  %2450 = fsub fast float %1983, %1988
  %2451 = fsub fast float %1984, %1989
  %2452 = fsub fast float %1985, %1990
  %2453 = fmul fast float %2437, %2450
  %2454 = fmul fast float %2437, %2451
  %2455 = fmul fast float %2437, %2452
  %2456 = fadd fast float %2453, %1988
  %2457 = fadd fast float %2454, %1989
  %2458 = fadd fast float %2455, %1990
  %2459 = fsub fast float 1.000000e+00, %2449
  %2460 = fmul fast float %2459, %2456
  %2461 = fmul fast float %2459, %2457
  %2462 = fmul fast float %2459, %2458
  br label %2522

; <label>:2463                                    ; preds = %2422
  %2464 = fmul fast float %2433, %1995
  %2465 = call float @dx.op.unary.f32(i32 7, float %2464)  ; Saturate(value)
  %2466 = fsub fast float 2.000000e+00, %2465
  %2467 = fmul fast float %2465, 9.921875e-01
  %2468 = fmul fast float %2467, %2466
  %2469 = fadd fast float %2468, 3.906250e-03
  %2470 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %2469, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2471 = extractvalue %dx.types.ResRet.f32 %2470, 0
  %2472 = fsub fast float %2465, %2471
  %2473 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2472)  ; FMax(a,b)
  %2474 = fmul fast float %1981, %1971
  %2475 = call float @dx.op.unary.f32(i32 6, float %2474)  ; FAbs(value)
  %2476 = fcmp fast ogt float %2475, 0x3EB0C6F7A0000000
  br i1 %2476, label %2477, label %2483, !dx.controlflow.hints !115

; <label>:2477                                    ; preds = %2463
  %2478 = fmul fast float %2474, 0xBFF7154760000000
  %2479 = call float @dx.op.unary.f32(i32 21, float %2478)  ; Exp(value)
  %2480 = fsub fast float 1.000000e+00, %2479
  %2481 = fdiv fast float %2480, %2474
  %2482 = fmul fast float %2481, %1991
  br label %2483

; <label>:2483                                    ; preds = %2477, %2463
  %2484 = phi float [ %2482, %2477 ], [ %1991, %2463 ]
  %2485 = fadd fast float %2484, %1993
  %2486 = fmul fast float %2485, %2473
  %2487 = fmul fast float %1978, %2486
  %2488 = fsub fast float -0.000000e+00, %2487
  %2489 = fmul fast float %1979, %2486
  %2490 = fsub fast float -0.000000e+00, %2489
  %2491 = fmul fast float %1980, %2486
  %2492 = fsub fast float -0.000000e+00, %2491
  %2493 = call float @dx.op.unary.f32(i32 21, float %2488)  ; Exp(value)
  %2494 = call float @dx.op.unary.f32(i32 21, float %2490)  ; Exp(value)
  %2495 = call float @dx.op.unary.f32(i32 21, float %2492)  ; Exp(value)
  %2496 = fmul fast float %2007, %2007
  %2497 = fadd fast float %2496, 1.000000e+00
  %2498 = fmul fast float %2497, 0x3FAE8EC8A0000000
  %2499 = fmul fast float %2498, %1988
  %2500 = fmul fast float %2498, %1989
  %2501 = fmul fast float %2498, %1990
  %2502 = fmul fast float %2007, %1986
  %2503 = fsub fast float 1.000000e+00, %2502
  %2504 = fmul fast float %1986, %1986
  %2505 = fsub fast float 1.000000e+00, %2504
  %2506 = fmul fast float %2505, 0x3FB45F3060000000
  %2507 = fmul fast float %2503, %2503
  %2508 = fdiv fast float 1.000000e+00, %2507
  %2509 = fmul fast float %2506, %2508
  %2510 = fmul fast float %2509, %1983
  %2511 = fmul fast float %2509, %1984
  %2512 = fmul fast float %2509, %1985
  %2513 = fadd fast float %2510, %2499
  %2514 = fadd fast float %2511, %2500
  %2515 = fadd fast float %2512, %2501
  %2516 = fsub fast float 1.000000e+00, %2493
  %2517 = fsub fast float 1.000000e+00, %2494
  %2518 = fsub fast float 1.000000e+00, %2495
  %2519 = fmul fast float %2513, %2516
  %2520 = fmul fast float %2514, %2517
  %2521 = fmul fast float %2515, %2518
  br label %2522

; <label>:2522                                    ; preds = %2483, %2434
  %2523 = phi float [ %2460, %2434 ], [ %2519, %2483 ]
  %2524 = phi float [ %2461, %2434 ], [ %2520, %2483 ]
  %2525 = phi float [ %2462, %2434 ], [ %2521, %2483 ]
  %2526 = phi float [ %2449, %2434 ], [ %2493, %2483 ]
  %2527 = phi float [ %2449, %2434 ], [ %2494, %2483 ]
  %2528 = phi float [ %2449, %2434 ], [ %2495, %2483 ]
  br i1 %2015, label %2529, label %2727, !dx.controlflow.hints !116

; <label>:2529                                    ; preds = %2522
  %2530 = extractvalue %dx.types.CBufRet.f32 %2428, 0
  %2531 = fmul fast float %2530, %2430
  %2532 = fsub fast float %2425, %2523
  %2533 = fsub fast float %2426, %2524
  %2534 = fsub fast float %2427, %2525
  %2535 = fmul fast float %2531, %2532
  %2536 = fmul fast float %2531, %2533
  %2537 = fmul fast float %2531, %2534
  %2538 = fadd fast float %2535, %2523
  %2539 = fadd fast float %2536, %2524
  %2540 = fadd fast float %2537, %2525
  %2541 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2526)  ; FMax(a,b)
  %2542 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2527)  ; FMax(a,b)
  %2543 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2528)  ; FMax(a,b)
  %2544 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2424)  ; FMax(a,b)
  %2545 = call float @dx.op.binary.f32(i32 35, float %2423, float %2433)  ; FMax(a,b)
  %2546 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2545)  ; FMax(a,b)
  %2547 = fdiv fast float %2423, %2546
  %2548 = call float @dx.op.unary.f32(i32 7, float %2547)  ; Saturate(value)
  %2549 = fdiv fast float %2433, %2546
  %2550 = call float @dx.op.unary.f32(i32 7, float %2549)  ; Saturate(value)
  %2551 = fcmp fast une float %2544, 1.000000e+00
  br i1 %2551, label %2552, label %2565, !dx.controlflow.hints !117

; <label>:2552                                    ; preds = %2529
  %2553 = call float @dx.op.unary.f32(i32 23, float %2544)  ; Log(value)
  %2554 = fmul fast float %2553, 0x3FE62E4300000000
  %2555 = fmul fast float %2425, %2554
  %2556 = fsub fast float -0.000000e+00, %2555
  %2557 = fmul fast float %2426, %2554
  %2558 = fsub fast float -0.000000e+00, %2557
  %2559 = fmul fast float %2427, %2554
  %2560 = fsub fast float -0.000000e+00, %2559
  %2561 = fsub fast float 1.000000e+00, %2544
  %2562 = fdiv fast float %2556, %2561
  %2563 = fdiv fast float %2558, %2561
  %2564 = fdiv fast float %2560, %2561
  br label %2565

; <label>:2565                                    ; preds = %2552, %2529
  %2566 = phi float [ %2562, %2552 ], [ %2425, %2529 ]
  %2567 = phi float [ %2563, %2552 ], [ %2426, %2529 ]
  %2568 = phi float [ %2564, %2552 ], [ %2427, %2529 ]
  %2569 = phi float [ %2554, %2552 ], [ 0.000000e+00, %2529 ]
  %2570 = fcmp fast une float %2541, 1.000000e+00
  br i1 %2570, label %2571, label %2578, !dx.controlflow.hints !118

; <label>:2571                                    ; preds = %2565
  %2572 = call float @dx.op.unary.f32(i32 23, float %2541)  ; Log(value)
  %2573 = fmul fast float %2572, 0x3FE62E4300000000
  %2574 = fmul fast float %2538, %2573
  %2575 = fsub fast float -0.000000e+00, %2574
  %2576 = fsub fast float 1.000000e+00, %2541
  %2577 = fdiv fast float %2575, %2576
  br label %2578

; <label>:2578                                    ; preds = %2571, %2565
  %2579 = phi float [ %2577, %2571 ], [ %2538, %2565 ]
  %2580 = phi float [ %2573, %2571 ], [ 0.000000e+00, %2565 ]
  %2581 = fcmp fast une float %2542, 1.000000e+00
  br i1 %2581, label %2582, label %2589, !dx.controlflow.hints !118

; <label>:2582                                    ; preds = %2578
  %2583 = call float @dx.op.unary.f32(i32 23, float %2542)  ; Log(value)
  %2584 = fmul fast float %2583, 0x3FE62E4300000000
  %2585 = fmul fast float %2539, %2584
  %2586 = fsub fast float -0.000000e+00, %2585
  %2587 = fsub fast float 1.000000e+00, %2542
  %2588 = fdiv fast float %2586, %2587
  br label %2589

; <label>:2589                                    ; preds = %2582, %2578
  %2590 = phi float [ %2588, %2582 ], [ %2539, %2578 ]
  %2591 = phi float [ %2584, %2582 ], [ 0.000000e+00, %2578 ]
  %2592 = fcmp fast une float %2543, 1.000000e+00
  br i1 %2592, label %2593, label %2600, !dx.controlflow.hints !118

; <label>:2593                                    ; preds = %2589
  %2594 = call float @dx.op.unary.f32(i32 23, float %2543)  ; Log(value)
  %2595 = fmul fast float %2594, 0x3FE62E4300000000
  %2596 = fmul fast float %2540, %2595
  %2597 = fsub fast float -0.000000e+00, %2596
  %2598 = fsub fast float 1.000000e+00, %2543
  %2599 = fdiv fast float %2597, %2598
  br label %2600

; <label>:2600                                    ; preds = %2593, %2589
  %2601 = phi float [ %2599, %2593 ], [ %2540, %2589 ]
  %2602 = phi float [ %2595, %2593 ], [ 0.000000e+00, %2589 ]
  %2603 = fmul fast float %2566, %2550
  %2604 = fmul fast float %2567, %2550
  %2605 = fmul fast float %2568, %2550
  %2606 = fmul fast float %2569, %2550
  %2607 = fmul fast float %2579, %2548
  %2608 = fmul fast float %2590, %2548
  %2609 = fmul fast float %2601, %2548
  %2610 = fmul fast float %2580, %2548
  %2611 = fmul fast float %2591, %2548
  %2612 = fmul fast float %2602, %2548
  %2613 = fadd fast float %2607, %2603
  %2614 = fadd fast float %2608, %2604
  %2615 = fadd fast float %2609, %2605
  %2616 = fadd fast float %2610, %2606
  %2617 = fadd fast float %2611, %2606
  %2618 = fadd fast float %2612, %2606
  %2619 = fcmp fast une float %2616, 0.000000e+00
  br i1 %2619, label %2620, label %2627, !dx.controlflow.hints !119

; <label>:2620                                    ; preds = %2600
  %2621 = fmul fast float %2616, 0x3FF7154760000000
  %2622 = call float @dx.op.unary.f32(i32 21, float %2621)  ; Exp(value)
  %2623 = fsub fast float 1.000000e+00, %2622
  %2624 = fmul fast float %2613, %2623
  %2625 = fsub fast float -0.000000e+00, %2624
  %2626 = fdiv fast float %2625, %2616
  br label %2627

; <label>:2627                                    ; preds = %2620, %2600
  %2628 = phi float [ %2622, %2620 ], [ 1.000000e+00, %2600 ]
  %2629 = phi float [ %2626, %2620 ], [ %2613, %2600 ]
  %2630 = fcmp fast une float %2617, 0.000000e+00
  br i1 %2630, label %2631, label %2638, !dx.controlflow.hints !119

; <label>:2631                                    ; preds = %2627
  %2632 = fmul fast float %2617, 0x3FF7154760000000
  %2633 = call float @dx.op.unary.f32(i32 21, float %2632)  ; Exp(value)
  %2634 = fsub fast float 1.000000e+00, %2633
  %2635 = fmul fast float %2614, %2634
  %2636 = fsub fast float -0.000000e+00, %2635
  %2637 = fdiv fast float %2636, %2617
  br label %2638

; <label>:2638                                    ; preds = %2631, %2627
  %2639 = phi float [ %2633, %2631 ], [ 1.000000e+00, %2627 ]
  %2640 = phi float [ %2637, %2631 ], [ %2614, %2627 ]
  %2641 = fcmp fast une float %2618, 0.000000e+00
  br i1 %2641, label %2642, label %2649, !dx.controlflow.hints !119

; <label>:2642                                    ; preds = %2638
  %2643 = fmul fast float %2618, 0x3FF7154760000000
  %2644 = call float @dx.op.unary.f32(i32 21, float %2643)  ; Exp(value)
  %2645 = fsub fast float 1.000000e+00, %2644
  %2646 = fmul fast float %2615, %2645
  %2647 = fsub fast float -0.000000e+00, %2646
  %2648 = fdiv fast float %2647, %2618
  br label %2649

; <label>:2649                                    ; preds = %2642, %2638
  %2650 = phi float [ %2644, %2642 ], [ 1.000000e+00, %2638 ]
  %2651 = phi float [ %2648, %2642 ], [ %2615, %2638 ]
  %2652 = fcmp fast ogt float %2548, %2550
  br i1 %2652, label %2653, label %2673, !dx.controlflow.hints !120

; <label>:2653                                    ; preds = %2649
  %2654 = fsub fast float 1.000000e+00, %2550
  %2655 = fmul fast float %2566, %2654
  %2656 = fmul fast float %2567, %2654
  %2657 = fmul fast float %2568, %2654
  %2658 = fmul fast float %2569, %2654
  %2659 = fcmp fast une float %2658, 0.000000e+00
  br i1 %2659, label %2660, label %2711, !dx.controlflow.hints !121

; <label>:2660                                    ; preds = %2653
  %2661 = fmul fast float %2658, 0x3FF7154760000000
  %2662 = call float @dx.op.unary.f32(i32 21, float %2661)  ; Exp(value)
  %2663 = fsub fast float 1.000000e+00, %2662
  %2664 = fmul fast float %2655, %2663
  %2665 = fsub fast float -0.000000e+00, %2664
  %2666 = fmul fast float %2656, %2663
  %2667 = fsub fast float -0.000000e+00, %2666
  %2668 = fmul fast float %2657, %2663
  %2669 = fsub fast float -0.000000e+00, %2668
  %2670 = fdiv fast float %2665, %2658
  %2671 = fdiv fast float %2667, %2658
  %2672 = fdiv fast float %2669, %2658
  br label %2711

; <label>:2673                                    ; preds = %2649
  %2674 = fsub fast float 1.000000e+00, %2548
  %2675 = fmul fast float %2579, %2674
  %2676 = fmul fast float %2590, %2674
  %2677 = fmul fast float %2601, %2674
  %2678 = fmul fast float %2580, %2674
  %2679 = fmul fast float %2591, %2674
  %2680 = fmul fast float %2602, %2674
  %2681 = fcmp fast une float %2678, 0.000000e+00
  br i1 %2681, label %2682, label %2689, !dx.controlflow.hints !119

; <label>:2682                                    ; preds = %2673
  %2683 = fmul fast float %2678, 0x3FF7154760000000
  %2684 = call float @dx.op.unary.f32(i32 21, float %2683)  ; Exp(value)
  %2685 = fsub fast float 1.000000e+00, %2684
  %2686 = fmul fast float %2675, %2685
  %2687 = fsub fast float -0.000000e+00, %2686
  %2688 = fdiv fast float %2687, %2678
  br label %2689

; <label>:2689                                    ; preds = %2682, %2673
  %2690 = phi float [ %2688, %2682 ], [ %2675, %2673 ]
  %2691 = phi float [ %2684, %2682 ], [ 1.000000e+00, %2673 ]
  %2692 = fcmp fast une float %2679, 0.000000e+00
  br i1 %2692, label %2693, label %2700, !dx.controlflow.hints !119

; <label>:2693                                    ; preds = %2689
  %2694 = fmul fast float %2679, 0x3FF7154760000000
  %2695 = call float @dx.op.unary.f32(i32 21, float %2694)  ; Exp(value)
  %2696 = fsub fast float 1.000000e+00, %2695
  %2697 = fmul fast float %2676, %2696
  %2698 = fsub fast float -0.000000e+00, %2697
  %2699 = fdiv fast float %2698, %2679
  br label %2700

; <label>:2700                                    ; preds = %2693, %2689
  %2701 = phi float [ %2699, %2693 ], [ %2676, %2689 ]
  %2702 = phi float [ %2695, %2693 ], [ 1.000000e+00, %2689 ]
  %2703 = fcmp fast une float %2680, 0.000000e+00
  br i1 %2703, label %2704, label %2711, !dx.controlflow.hints !119

; <label>:2704                                    ; preds = %2700
  %2705 = fmul fast float %2680, 0x3FF7154760000000
  %2706 = call float @dx.op.unary.f32(i32 21, float %2705)  ; Exp(value)
  %2707 = fsub fast float 1.000000e+00, %2706
  %2708 = fmul fast float %2677, %2707
  %2709 = fsub fast float -0.000000e+00, %2708
  %2710 = fdiv fast float %2709, %2680
  br label %2711

; <label>:2711                                    ; preds = %2704, %2700, %2660, %2653
  %2712 = phi float [ %2710, %2704 ], [ %2672, %2660 ], [ %2657, %2653 ], [ %2677, %2700 ]
  %2713 = phi float [ %2701, %2704 ], [ %2671, %2660 ], [ %2656, %2653 ], [ %2701, %2700 ]
  %2714 = phi float [ %2690, %2704 ], [ %2670, %2660 ], [ %2655, %2653 ], [ %2690, %2700 ]
  %2715 = phi float [ %2706, %2704 ], [ %2662, %2660 ], [ 1.000000e+00, %2653 ], [ 1.000000e+00, %2700 ]
  %2716 = phi float [ %2702, %2704 ], [ %2662, %2660 ], [ 1.000000e+00, %2653 ], [ %2702, %2700 ]
  %2717 = phi float [ %2691, %2704 ], [ %2662, %2660 ], [ 1.000000e+00, %2653 ], [ %2691, %2700 ]
  %2718 = fmul fast float %2717, %2629
  %2719 = fmul fast float %2716, %2640
  %2720 = fmul fast float %2715, %2651
  %2721 = fadd fast float %2718, %2714
  %2722 = fadd fast float %2719, %2713
  %2723 = fadd fast float %2720, %2712
  %2724 = fmul fast float %2717, %2628
  %2725 = fmul fast float %2716, %2639
  %2726 = fmul fast float %2715, %2650
  br label %2727

; <label>:2727                                    ; preds = %2711, %2522
  %2728 = phi float [ %2528, %2522 ], [ %2726, %2711 ]
  %2729 = phi float [ %2527, %2522 ], [ %2725, %2711 ]
  %2730 = phi float [ %2526, %2522 ], [ %2724, %2711 ]
  %2731 = phi float [ %2525, %2522 ], [ %2723, %2711 ]
  %2732 = phi float [ %2524, %2522 ], [ %2722, %2711 ]
  %2733 = phi float [ %2523, %2522 ], [ %2721, %2711 ]
  %2734 = fmul fast float %2730, %1871
  %2735 = fmul fast float %2729, %1872
  %2736 = fmul fast float %2728, %1873
  %2737 = fsub fast float 1.000000e+00, %1934
  %2738 = fmul fast float %2733, %2737
  %2739 = fmul fast float %2732, %2737
  %2740 = fmul fast float %2731, %2737
  %2741 = fadd fast float %2738, %2734
  %2742 = fadd fast float %2739, %2735
  %2743 = fadd fast float %2740, %2736
  %2744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %2745 = extractvalue %dx.types.CBufRet.f32 %2744, 2
  %2746 = fmul fast float %2745, %1944
  %2747 = call float @dx.op.unary.f32(i32 7, float %2746)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %20, i32 %21, i32 undef, float %1934, float %1934, float %1934, float %1934, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2749 = extractvalue %dx.types.CBufRet.f32 %2748, 0
  %2750 = fmul fast float %2749, %2741
  %2751 = fmul fast float %2749, %2742
  %2752 = fmul fast float %2749, %2743
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %20, i32 %21, i32 undef, float %2750, float %2751, float %2752, float %2750, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %20, i32 %21, i32 undef, float %2747, float %2747, float %2747, float %2747, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!31 = !{void ()* @cs_fog_raymarching_air_brfog, !"cs_fog_raymarching_air_brfog", null, !4, !32}
!32 = !{i32 0, i64 272, i32 4, !33}
!33 = !{i32 8, i32 8, i32 1}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
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
!47 = distinct !{!47, !"dx.controlflow.hints", i32 1}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 1}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 1}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = !{!77, !77, i64 0}
!77 = !{!"float", !78, i64 0}
!78 = !{!"omnipotent char", !79, i64 0}
!79 = !{!"Simple C/C++ TBAA"}
!80 = !{!81, !83, !85, !86, !88, !89, !90}
!81 = distinct !{!81, !82, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!82 = distinct !{!82, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!83 = distinct !{!83, !84, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!84 = distinct !{!84, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!85 = distinct !{!85, !84, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!86 = distinct !{!86, !87, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!87 = distinct !{!87, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!88 = distinct !{!88, !87, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!89 = distinct !{!89, !87, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!90 = distinct !{!90, !87, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = !{!93}
!93 = distinct !{!93, !94, !"\01?sort@@YAXAIAM00@Z: %c"}
!94 = distinct !{!94, !"\01?sort@@YAXAIAM00@Z"}
!95 = !{!96, !97, !81, !83, !85, !86, !88, !89, !90}
!96 = distinct !{!96, !94, !"\01?sort@@YAXAIAM00@Z: %a"}
!97 = distinct !{!97, !94, !"\01?sort@@YAXAIAM00@Z: %b"}
!98 = !{!97}
!99 = !{!96, !93, !81, !83, !85, !86, !88, !89, !90}
!100 = !{!96}
!101 = !{!97, !93, !81, !83, !85, !86, !88, !89, !90}
!102 = !{!103}
!103 = distinct !{!103, !104, !"\01?sort@@YAXAIAM00@Z: %c"}
!104 = distinct !{!104, !"\01?sort@@YAXAIAM00@Z"}
!105 = !{!106, !107, !81, !83, !85, !86, !88, !89, !90}
!106 = distinct !{!106, !104, !"\01?sort@@YAXAIAM00@Z: %a"}
!107 = distinct !{!107, !104, !"\01?sort@@YAXAIAM00@Z: %b"}
!108 = !{!107}
!109 = !{!106, !103, !81, !83, !85, !86, !88, !89, !90}
!110 = !{!106}
!111 = !{!107, !103, !81, !83, !85, !86, !88, !89, !90}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 2}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 2}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 2}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 2}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}

