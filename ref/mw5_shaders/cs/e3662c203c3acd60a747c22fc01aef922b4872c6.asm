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
; shader hash: 6d0a02d1e5775409f0a61e0bbee2543e
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
; Resource bind info for 
; {
;
;   [164 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb0     1
;                                   sampler      NA          NA      S0             s1     1
;                                   sampler      NA          NA      S1             s2     1
;                                   sampler      NA          NA      S2             s3     1
;                                   sampler      NA          NA      S3             s4     1
;                                   sampler      NA          NA      S4             s5     1
;                                   texture     f32          2d      T0            t16     1
;                                   texture     f32          2d      T1            t27     1
;                                   texture     f32          3d      T2             t1     1
;                                   texture     f32          3d      T3             t2     1
;                                   texture     f32          2d      T4             t8     1
;                                   texture     f32          2d      T5             t9     1
;                                   texture     f32          2d      T6            t18     1
;                                   texture  struct         r/o      T7            t25     1
;                                   texture     f32          2d      T8            t13     1
;                                       UAV     f32          2d      U0             u7     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.StructuredBuffer<VolumetricBBoxGpu>" = type { %struct.VolumetricBBoxGpu }
%struct.VolumetricBBoxGpu = type { <3 x float>, i32, <3 x float>, float, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%"class.RWTexture2D<vector<float, 3> >" = type { <3 x float> }
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

define void @cs_fog_raymarching_air_clouds_heightmap_particles_brfog() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %19 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %20 = uitofp i32 %18 to float
  %21 = uitofp i32 %19 to float
  %22 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %23 = extractvalue %dx.types.CBufRet.f32 %22, 2
  %24 = fmul fast float %23, 0x3FE3C6EF40000000
  %25 = frem fast float %20, 2.560000e+02
  %26 = frem fast float %21, 2.560000e+02
  %27 = fptoui float %25 to i32
  %28 = fptoui float %26 to i32
  %29 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %27, i32 %28, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %30 = extractvalue %dx.types.ResRet.f32 %29, 0
  %31 = extractvalue %dx.types.ResRet.f32 %29, 1
  %32 = extractvalue %dx.types.ResRet.f32 %29, 2
  %33 = fadd fast float %30, %24
  %34 = fadd fast float %31, %24
  %35 = fadd fast float %32, %24
  %36 = call float @dx.op.unary.f32(i32 22, float %33)  ; Frc(value)
  %37 = call float @dx.op.unary.f32(i32 22, float %34)  ; Frc(value)
  %38 = call float @dx.op.unary.f32(i32 22, float %35)  ; Frc(value)
  %39 = fadd fast float %20, 5.000000e-01
  %40 = fadd fast float %21, 5.000000e-01
  %41 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %42 = extractvalue %dx.types.CBufRet.f32 %41, 2
  %43 = extractvalue %dx.types.CBufRet.f32 %41, 3
  %44 = fmul fast float %42, %39
  %45 = fmul fast float %43, %40
  %46 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %47 = extractvalue %dx.types.CBufRet.f32 %46, 0
  %48 = extractvalue %dx.types.CBufRet.f32 %46, 1
  %49 = extractvalue %dx.types.CBufRet.f32 %46, 2
  %50 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.f32 %50, 0
  %52 = extractvalue %dx.types.CBufRet.f32 %50, 1
  %53 = fmul fast float %44, %51
  %54 = fmul fast float %45, %52
  %55 = fadd fast float %53, %47
  %56 = fadd fast float %54, %48
  %57 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %58 = extractvalue %dx.types.CBufRet.f32 %57, 2
  %59 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.f32 %59, 0
  %61 = extractvalue %dx.types.CBufRet.f32 %59, 1
  %62 = extractvalue %dx.types.CBufRet.f32 %59, 2
  %63 = fsub fast float -0.000000e+00, %60
  %64 = fsub fast float -0.000000e+00, %61
  %65 = fsub fast float -0.000000e+00, %62
  %66 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.i32 %66, 3
  %68 = icmp eq i32 %67, 0
  %69 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.f32 %69, 2
  %71 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.f32 %71, 2
  %73 = fsub fast float %70, %49
  %74 = fadd fast float %73, %72
  %75 = fsub fast float 0xC7EFFFFFE0000000, %49
  br i1 %68, label %87, label %76, !dx.controlflow.hints !31

; <label>:76                                      ; preds = %0
  %77 = fsub fast float -0.000000e+00, %56
  %78 = fsub fast float -0.000000e+00, %55
  %79 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %78, float %77, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %80 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %81 = fdiv fast float 1.000000e+00, %80
  %82 = fmul fast float %81, %79
  %83 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %78, float %77, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %84 = fmul fast float %81, %83
  %85 = call float @dx.op.binary.f32(i32 36, float %82, float %84)  ; FMin(a,b)
  %86 = call float @dx.op.binary.f32(i32 35, float %82, float %84)  ; FMax(a,b)
  br label %120

; <label>:87                                      ; preds = %0
  %88 = extractvalue %dx.types.CBufRet.f32 %69, 0
  %89 = extractvalue %dx.types.CBufRet.f32 %69, 1
  %90 = extractvalue %dx.types.CBufRet.f32 %71, 0
  %91 = extractvalue %dx.types.CBufRet.f32 %71, 1
  %92 = fdiv fast float 1.000000e+00, %63
  %93 = fdiv fast float 1.000000e+00, %64
  %94 = fdiv fast float 1.000000e+00, %65
  %95 = fsub fast float %88, %55
  %96 = fmul fast float %92, %95
  %97 = fadd fast float %95, %90
  %98 = fmul fast float %97, %92
  %99 = call float @dx.op.binary.f32(i32 36, float %96, float %98)  ; FMin(a,b)
  %100 = call float @dx.op.binary.f32(i32 35, float %96, float %98)  ; FMax(a,b)
  %101 = fsub fast float %89, %56
  %102 = fmul fast float %93, %101
  %103 = fadd fast float %101, %91
  %104 = fmul fast float %103, %93
  %105 = call float @dx.op.binary.f32(i32 36, float %102, float %104)  ; FMin(a,b)
  %106 = call float @dx.op.binary.f32(i32 35, float %99, float %105)  ; FMax(a,b)
  %107 = call float @dx.op.binary.f32(i32 35, float %102, float %104)  ; FMax(a,b)
  %108 = call float @dx.op.binary.f32(i32 36, float %100, float %107)  ; FMin(a,b)
  %109 = fmul fast float %94, %75
  %110 = fmul fast float %94, %74
  %111 = call float @dx.op.binary.f32(i32 36, float %109, float %110)  ; FMin(a,b)
  %112 = call float @dx.op.binary.f32(i32 35, float %106, float %111)  ; FMax(a,b)
  %113 = call float @dx.op.binary.f32(i32 35, float %109, float %110)  ; FMax(a,b)
  %114 = call float @dx.op.binary.f32(i32 36, float %108, float %113)  ; FMin(a,b)
  %115 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %112)  ; FMax(a,b)
  %116 = fcmp fast ult float %114, %115
  br i1 %116, label %120, label %117, !dx.controlflow.hints !32

; <label>:117                                     ; preds = %87
  %118 = call float @dx.op.binary.f32(i32 36, float %112, float %114)  ; FMin(a,b)
  %119 = call float @dx.op.binary.f32(i32 35, float %112, float %114)  ; FMax(a,b)
  br label %120

; <label>:120                                     ; preds = %117, %87, %76
  %121 = phi float [ %85, %76 ], [ %118, %117 ], [ 0.000000e+00, %87 ]
  %122 = phi float [ %86, %76 ], [ %119, %117 ], [ 0.000000e+00, %87 ]
  %123 = fcmp fast oeq float %122, 0.000000e+00
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 1
  %126 = fcmp fast olt float %122, %125
  %127 = or i1 %123, %126
  br i1 %127, label %132, label %128, !dx.controlflow.hints !33

; <label>:128                                     ; preds = %120
  %129 = call float @dx.op.binary.f32(i32 35, float %125, float %121)  ; FMax(a,b)
  %130 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %129)  ; FMin(a,b)
  %131 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %122)  ; FMax(a,b)
  br label %132

; <label>:132                                     ; preds = %128, %120
  %133 = phi float [ %131, %128 ], [ -1.000000e+00, %120 ]
  %134 = phi i32 [ 1, %128 ], [ 0, %120 ]
  %135 = phi float [ %130, %128 ], [ 0x47EFFFFFE0000000, %120 ]
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 3
  %138 = fsub fast float -0.000000e+00, %55
  %139 = fsub fast float -0.000000e+00, %56
  %140 = fsub fast float %137, %49
  %141 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %138, float %139, float %140)  ; Dot3(ax,ay,az,bx,by,bz)
  %142 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %143 = fdiv fast float 1.000000e+00, %142
  %144 = fmul fast float %143, %141
  %145 = fcmp fast olt float %144, 0.000000e+00
  %146 = fcmp olt float %62, -0.000000e+00
  %147 = and i1 %146, %145
  br i1 %147, label %152, label %148, !dx.controlflow.hints !34

; <label>:148                                     ; preds = %132
  %149 = fcmp ogt float %62, -0.000000e+00
  br i1 %149, label %150, label %152, !dx.controlflow.hints !35

; <label>:150                                     ; preds = %148
  %151 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %144)  ; FMax(a,b)
  br label %152

; <label>:152                                     ; preds = %150, %148, %132
  %153 = phi float [ 0.000000e+00, %132 ], [ %151, %150 ], [ 0.000000e+00, %148 ]
  %154 = phi float [ 0.000000e+00, %132 ], [ 0x47EFFFFFE0000000, %150 ], [ %144, %148 ]
  %155 = fcmp fast oeq float %154, 0.000000e+00
  br i1 %155, label %159, label %156, !dx.controlflow.hints !36

; <label>:156                                     ; preds = %152
  %157 = call float @dx.op.binary.f32(i32 36, float %135, float %153)  ; FMin(a,b)
  %158 = call float @dx.op.binary.f32(i32 35, float %133, float %154)  ; FMax(a,b)
  br label %159

; <label>:159                                     ; preds = %156, %152
  %160 = phi float [ %158, %156 ], [ %133, %152 ]
  %161 = phi i32 [ 1, %156 ], [ 0, %152 ]
  %162 = phi float [ %157, %156 ], [ %135, %152 ]
  %163 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.i32 %163, 3
  %165 = icmp eq i32 %164, 0
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 2
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 2
  %170 = fsub fast float %167, %49
  %171 = fadd fast float %170, %169
  br i1 %165, label %179, label %172, !dx.controlflow.hints !37

; <label>:172                                     ; preds = %159
  %173 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %138, float %139, float %171)  ; Dot3(ax,ay,az,bx,by,bz)
  %174 = fmul fast float %143, %173
  %175 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %138, float %139, float %170)  ; Dot3(ax,ay,az,bx,by,bz)
  %176 = fmul fast float %143, %175
  %177 = call float @dx.op.binary.f32(i32 36, float %174, float %176)  ; FMin(a,b)
  %178 = call float @dx.op.binary.f32(i32 35, float %174, float %176)  ; FMax(a,b)
  br label %212

; <label>:179                                     ; preds = %159
  %180 = fdiv fast float 1.000000e+00, %63
  %181 = fdiv fast float 1.000000e+00, %64
  %182 = fdiv fast float 1.000000e+00, %65
  %183 = extractvalue %dx.types.CBufRet.f32 %166, 0
  %184 = extractvalue %dx.types.CBufRet.f32 %166, 1
  %185 = extractvalue %dx.types.CBufRet.f32 %168, 0
  %186 = extractvalue %dx.types.CBufRet.f32 %168, 1
  %187 = fsub fast float %183, %55
  %188 = fmul fast float %187, %180
  %189 = fadd fast float %187, %185
  %190 = fmul fast float %189, %180
  %191 = call float @dx.op.binary.f32(i32 36, float %188, float %190)  ; FMin(a,b)
  %192 = call float @dx.op.binary.f32(i32 35, float %188, float %190)  ; FMax(a,b)
  %193 = fsub fast float %184, %56
  %194 = fmul fast float %193, %181
  %195 = fadd fast float %193, %186
  %196 = fmul fast float %195, %181
  %197 = call float @dx.op.binary.f32(i32 36, float %194, float %196)  ; FMin(a,b)
  %198 = call float @dx.op.binary.f32(i32 35, float %191, float %197)  ; FMax(a,b)
  %199 = call float @dx.op.binary.f32(i32 35, float %194, float %196)  ; FMax(a,b)
  %200 = call float @dx.op.binary.f32(i32 36, float %192, float %199)  ; FMin(a,b)
  %201 = fmul fast float %170, %182
  %202 = fmul fast float %171, %182
  %203 = call float @dx.op.binary.f32(i32 36, float %201, float %202)  ; FMin(a,b)
  %204 = call float @dx.op.binary.f32(i32 35, float %198, float %203)  ; FMax(a,b)
  %205 = call float @dx.op.binary.f32(i32 35, float %201, float %202)  ; FMax(a,b)
  %206 = call float @dx.op.binary.f32(i32 36, float %200, float %205)  ; FMin(a,b)
  %207 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %204)  ; FMax(a,b)
  %208 = fcmp fast ult float %206, %207
  br i1 %208, label %212, label %209, !dx.controlflow.hints !38

; <label>:209                                     ; preds = %179
  %210 = call float @dx.op.binary.f32(i32 36, float %204, float %206)  ; FMin(a,b)
  %211 = call float @dx.op.binary.f32(i32 35, float %204, float %206)  ; FMax(a,b)
  br label %212

; <label>:212                                     ; preds = %209, %179, %172
  %213 = phi float [ %177, %172 ], [ %210, %209 ], [ 0.000000e+00, %179 ]
  %214 = phi float [ %178, %172 ], [ %211, %209 ], [ 0.000000e+00, %179 ]
  %215 = fcmp fast oeq float %214, 0.000000e+00
  br i1 %215, label %219, label %216, !dx.controlflow.hints !39

; <label>:216                                     ; preds = %212
  %217 = call float @dx.op.binary.f32(i32 36, float %162, float %213)  ; FMin(a,b)
  %218 = call float @dx.op.binary.f32(i32 35, float %160, float %214)  ; FMax(a,b)
  br label %219

; <label>:219                                     ; preds = %216, %212
  %220 = phi float [ %218, %216 ], [ %160, %212 ]
  %221 = phi i32 [ 1, %216 ], [ 0, %212 ]
  %222 = phi float [ %217, %216 ], [ %162, %212 ]
  %223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %224 = extractvalue %dx.types.CBufRet.f32 %223, 3
  %225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %226 = extractvalue %dx.types.CBufRet.f32 %225, 0
  %227 = fsub fast float %224, %49
  %228 = fadd fast float %227, %226
  %229 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %138, float %139, float %228)  ; Dot3(ax,ay,az,bx,by,bz)
  %230 = fmul fast float %143, %229
  %231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = extractvalue %dx.types.CBufRet.f32 %231, 2
  %233 = fsub fast float %232, %49
  %234 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %138, float %139, float %233)  ; Dot3(ax,ay,az,bx,by,bz)
  %235 = fmul fast float %143, %234
  %236 = call float @dx.op.binary.f32(i32 36, float %230, float %235)  ; FMin(a,b)
  %237 = call float @dx.op.binary.f32(i32 35, float %230, float %235)  ; FMax(a,b)
  %238 = call float @dx.op.binary.f32(i32 36, float %222, float %236)  ; FMin(a,b)
  %239 = call float @dx.op.binary.f32(i32 35, float %220, float %237)  ; FMax(a,b)
  %240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %241 = extractvalue %dx.types.CBufRet.f32 %240, 2
  %242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %243 = extractvalue %dx.types.CBufRet.f32 %242, 3
  %244 = fsub fast float %241, %49
  %245 = fadd fast float %244, %243
  %246 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %138, float %139, float %245)  ; Dot3(ax,ay,az,bx,by,bz)
  %247 = fmul fast float %143, %246
  %248 = fcmp fast olt float %247, 0.000000e+00
  %249 = and i1 %146, %248
  br i1 %249, label %254, label %250, !dx.controlflow.hints !40

; <label>:250                                     ; preds = %219
  %251 = fcmp ogt float %62, -0.000000e+00
  br i1 %251, label %252, label %254, !dx.controlflow.hints !41

; <label>:252                                     ; preds = %250
  %253 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %247)  ; FMax(a,b)
  br label %254

; <label>:254                                     ; preds = %252, %250, %219
  %255 = phi float [ 0.000000e+00, %219 ], [ %253, %252 ], [ 0.000000e+00, %250 ]
  %256 = phi float [ 0.000000e+00, %219 ], [ 0x47EFFFFFE0000000, %252 ], [ %247, %250 ]
  %257 = fcmp fast oeq float %256, 0.000000e+00
  br i1 %257, label %261, label %258, !dx.controlflow.hints !42

; <label>:258                                     ; preds = %254
  %259 = call float @dx.op.binary.f32(i32 36, float %238, float %255)  ; FMin(a,b)
  %260 = call float @dx.op.binary.f32(i32 35, float %239, float %256)  ; FMax(a,b)
  br label %261

; <label>:261                                     ; preds = %258, %254
  %262 = phi i32 [ 1, %258 ], [ 0, %254 ]
  %263 = phi float [ %260, %258 ], [ %239, %254 ]
  %264 = phi float [ %259, %258 ], [ %238, %254 ]
  %265 = fdiv fast float 1.000000e+00, %63
  %266 = fdiv fast float 1.000000e+00, %64
  %267 = fdiv fast float 1.000000e+00, %65
  %268 = call float @dx.op.binary.f32(i32 36, float %58, float %263)  ; FMin(a,b)
  %269 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %264)  ; FMax(a,b)
  %270 = extractvalue %dx.types.CBufRet.f32 %136, 1
  %271 = fmul fast float %37, 2.000000e+00
  %272 = fadd fast float %271, -1.000000e+00
  %273 = fmul fast float %270, %272
  %274 = fadd fast float %273, %269
  %275 = fcmp fast olt float %274, %268
  %276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %277 = extractvalue %dx.types.CBufRet.f32 %276, 2
  %278 = fcmp fast olt float %277, 1.000000e+00
  %279 = and i1 %275, %278
  br i1 %279, label %280, label %1381

; <label>:280                                     ; preds = %261
  %281 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %282 = extractvalue %dx.types.CBufRet.i32 %281, 1
  %283 = add i32 %282, -1
  %284 = fmul fast float %274, %65
  %285 = fadd fast float %284, %49
  %286 = fmul fast float %274, %64
  %287 = fadd fast float %286, %56
  %288 = fmul fast float %274, %63
  %289 = fadd fast float %288, %55
  br label %290

; <label>:290                                     ; preds = %1363, %280
  %291 = phi i32 [ %842, %1363 ], [ undef, %280 ]
  %292 = phi float [ %843, %1363 ], [ undef, %280 ]
  %293 = phi float [ %584, %1363 ], [ undef, %280 ]
  %294 = phi float [ %585, %1363 ], [ undef, %280 ]
  %295 = phi float [ %586, %1363 ], [ undef, %280 ]
  %296 = phi float [ %587, %1363 ], [ undef, %280 ]
  %297 = phi float [ %1364, %1363 ], [ 1.000000e+00, %280 ]
  %298 = phi float [ %1373, %1363 ], [ %289, %280 ]
  %299 = phi float [ %1374, %1363 ], [ %287, %280 ]
  %300 = phi float [ %1375, %1363 ], [ %285, %280 ]
  %301 = phi float [ %1369, %1363 ], [ %274, %280 ]
  %302 = phi i32 [ %589, %1363 ], [ 10, %280 ]
  %303 = phi i32 [ %480, %1363 ], [ %283, %280 ]
  %304 = phi i32 [ %1365, %1363 ], [ 0, %280 ]
  %305 = phi float [ %1366, %1363 ], [ 0.000000e+00, %280 ]
  %306 = phi float [ %1367, %1363 ], [ 0.000000e+00, %280 ]
  %307 = phi float [ %1368, %1363 ], [ 0.000000e+00, %280 ]
  %308 = fsub fast float -0.000000e+00, %299
  %309 = fsub fast float -0.000000e+00, %298
  %310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %311 = extractvalue %dx.types.CBufRet.f32 %310, 1
  %312 = icmp eq i32 %134, 0
  br i1 %312, label %478, label %313, !dx.controlflow.hints !43

; <label>:313                                     ; preds = %290
  %314 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %315 = extractvalue %dx.types.CBufRet.i32 %314, 1
  %316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %317 = extractvalue %dx.types.CBufRet.f32 %316, 1
  %318 = fcmp fast ogt float %317, %301
  br i1 %318, label %319, label %321, !dx.controlflow.hints !44

; <label>:319                                     ; preds = %313
  %320 = fsub fast float %317, %301
  br label %468

; <label>:321                                     ; preds = %313
  %322 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %323 = extractvalue %dx.types.CBufRet.i32 %322, 3
  %324 = icmp eq i32 %323, 0
  %325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %326 = extractvalue %dx.types.CBufRet.f32 %325, 2
  %327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %328 = extractvalue %dx.types.CBufRet.f32 %327, 2
  %329 = fsub fast float %326, %300
  %330 = fadd fast float %329, %328
  %331 = fsub fast float 0xC7EFFFFFE0000000, %300
  br i1 %324, label %339, label %332, !dx.controlflow.hints !31

; <label>:332                                     ; preds = %321
  %333 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %309, float %308, float %330)  ; Dot3(ax,ay,az,bx,by,bz)
  %334 = fmul fast float %143, %333
  %335 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %309, float %308, float %331)  ; Dot3(ax,ay,az,bx,by,bz)
  %336 = fmul fast float %143, %335
  %337 = call float @dx.op.binary.f32(i32 36, float %334, float %336)  ; FMin(a,b)
  %338 = call float @dx.op.binary.f32(i32 35, float %334, float %336)  ; FMax(a,b)
  br label %369

; <label>:339                                     ; preds = %321
  %340 = extractvalue %dx.types.CBufRet.f32 %325, 0
  %341 = extractvalue %dx.types.CBufRet.f32 %325, 1
  %342 = extractvalue %dx.types.CBufRet.f32 %327, 0
  %343 = extractvalue %dx.types.CBufRet.f32 %327, 1
  %344 = fsub fast float %340, %298
  %345 = fmul fast float %265, %344
  %346 = fadd fast float %344, %342
  %347 = fmul fast float %346, %265
  %348 = call float @dx.op.binary.f32(i32 36, float %345, float %347)  ; FMin(a,b)
  %349 = call float @dx.op.binary.f32(i32 35, float %345, float %347)  ; FMax(a,b)
  %350 = fsub fast float %341, %299
  %351 = fmul fast float %266, %350
  %352 = fadd fast float %350, %343
  %353 = fmul fast float %352, %266
  %354 = call float @dx.op.binary.f32(i32 36, float %351, float %353)  ; FMin(a,b)
  %355 = call float @dx.op.binary.f32(i32 35, float %348, float %354)  ; FMax(a,b)
  %356 = call float @dx.op.binary.f32(i32 35, float %351, float %353)  ; FMax(a,b)
  %357 = call float @dx.op.binary.f32(i32 36, float %349, float %356)  ; FMin(a,b)
  %358 = fmul fast float %267, %331
  %359 = fmul fast float %267, %330
  %360 = call float @dx.op.binary.f32(i32 36, float %358, float %359)  ; FMin(a,b)
  %361 = call float @dx.op.binary.f32(i32 35, float %355, float %360)  ; FMax(a,b)
  %362 = call float @dx.op.binary.f32(i32 35, float %358, float %359)  ; FMax(a,b)
  %363 = call float @dx.op.binary.f32(i32 36, float %357, float %362)  ; FMin(a,b)
  %364 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %361)  ; FMax(a,b)
  %365 = fcmp fast ult float %363, %364
  br i1 %365, label %369, label %366, !dx.controlflow.hints !32

; <label>:366                                     ; preds = %339
  %367 = call float @dx.op.binary.f32(i32 36, float %361, float %363)  ; FMin(a,b)
  %368 = call float @dx.op.binary.f32(i32 35, float %361, float %363)  ; FMax(a,b)
  br label %369

; <label>:369                                     ; preds = %366, %339, %332
  %370 = phi float [ %337, %332 ], [ %367, %366 ], [ 0.000000e+00, %339 ]
  %371 = phi float [ %338, %332 ], [ %368, %366 ], [ 0.000000e+00, %339 ]
  %372 = fcmp fast ogt float %370, 0.000000e+00
  br i1 %372, label %468, label %373, !dx.controlflow.hints !45

; <label>:373                                     ; preds = %369
  %374 = fcmp fast ugt float %371, 0.000000e+00
  br i1 %374, label %375, label %468, !dx.controlflow.hints !46

; <label>:375                                     ; preds = %373
  %376 = icmp sgt i32 %303, 0
  br i1 %376, label %377, label %462

; <label>:377                                     ; preds = %375
  br label %378

; <label>:378                                     ; preds = %458, %377
  %379 = phi i32 [ %459, %458 ], [ %303, %377 ]
  %380 = sitofp i32 %379 to float
  %381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %382 = extractvalue %dx.types.CBufRet.f32 %381, 0
  %383 = extractvalue %dx.types.CBufRet.f32 %381, 1
  %384 = fsub fast float %298, %382
  %385 = fsub fast float %299, %383
  %386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %387 = extractvalue %dx.types.CBufRet.f32 %386, 0
  %388 = extractvalue %dx.types.CBufRet.f32 %386, 1
  %389 = fmul fast float %384, %387
  %390 = fmul fast float %385, %388
  %391 = fsub fast float 1.000000e+00, %390
  %392 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %393 = extractvalue %dx.types.CBufRet.i32 %392, 3
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %401, label %395, !dx.controlflow.hints !47

; <label>:395                                     ; preds = %378
  %396 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %389, float %391, float undef, float undef, i32 0, i32 0, i32 undef, float %380)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %397 = extractvalue %dx.types.ResRet.f32 %396, 0
  %398 = extractvalue %dx.types.ResRet.f32 %396, 1
  %399 = extractvalue %dx.types.ResRet.f32 %396, 2
  %400 = extractvalue %dx.types.ResRet.f32 %396, 3
  br label %407

; <label>:401                                     ; preds = %378
  %402 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %389, float %391, float undef, float undef, i32 0, i32 0, i32 undef, float %380)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %403 = extractvalue %dx.types.ResRet.f32 %402, 0
  %404 = extractvalue %dx.types.ResRet.f32 %402, 1
  %405 = extractvalue %dx.types.ResRet.f32 %402, 2
  %406 = extractvalue %dx.types.ResRet.f32 %402, 3
  br label %407

; <label>:407                                     ; preds = %401, %395
  %408 = phi float [ %397, %395 ], [ %403, %401 ]
  %409 = phi float [ %398, %395 ], [ %404, %401 ]
  %410 = phi float [ %399, %395 ], [ %405, %401 ]
  %411 = phi float [ %400, %395 ], [ %406, %401 ]
  %412 = extractvalue %dx.types.CBufRet.f32 %386, 3
  %413 = fmul fast float %412, %408
  %414 = extractvalue %dx.types.CBufRet.f32 %381, 2
  %415 = fadd fast float %413, %414
  %416 = fmul fast float %412, %409
  %417 = fadd fast float %416, %414
  %418 = fmul fast float %412, %410
  %419 = fadd fast float %418, %414
  %420 = and i32 %379, 31
  %421 = shl i32 1, %420
  %422 = uitofp i32 %421 to float
  %423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %424 = extractvalue %dx.types.CBufRet.f32 %423, 3
  %425 = fdiv fast float 1.000000e+00, %424
  %426 = fmul fast float %425, %422
  %427 = fmul fast float %426, %65
  %428 = fadd fast float %427, %300
  %429 = fcmp fast oeq float %411, 0.000000e+00
  %430 = fcmp fast ogt float %300, %417
  %431 = fcmp fast ogt float %428, %417
  %432 = and i1 %430, %431
  %433 = or i1 %429, %432
  br i1 %433, label %434, label %438, !dx.controlflow.hints !48

; <label>:434                                     ; preds = %407
  %435 = add nsw i32 %379, 1
  %436 = add nsw i32 %315, -1
  %437 = call i32 @dx.op.binary.i32(i32 38, i32 %435, i32 %436)  ; IMin(a,b)
  br label %468

; <label>:438                                     ; preds = %407
  %439 = fcmp fast olt float %300, %419
  %440 = fcmp fast olt float %428, %419
  %441 = and i1 %439, %440
  br i1 %441, label %442, label %446, !dx.controlflow.hints !49

; <label>:442                                     ; preds = %438
  %443 = add nsw i32 %379, 1
  %444 = add nsw i32 %315, -1
  %445 = call i32 @dx.op.binary.i32(i32 38, i32 %443, i32 %444)  ; IMin(a,b)
  br label %468

; <label>:446                                     ; preds = %438
  %447 = fcmp fast olt float %300, %415
  %448 = fcmp fast olt float %428, %415
  %449 = and i1 %447, %448
  br i1 %449, label %450, label %458, !dx.controlflow.hints !50

; <label>:450                                     ; preds = %446
  %451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %452 = extractvalue %dx.types.CBufRet.f32 %451, 3
  %453 = extractvalue %dx.types.CBufRet.f32 %386, 2
  %454 = fcmp fast une float %452, %453
  br i1 %454, label %455, label %462, !dx.controlflow.hints !51

; <label>:455                                     ; preds = %450
  %456 = fsub fast float %300, %419
  %457 = call float @dx.op.binary.f32(i32 36, float %426, float %456)  ; FMin(a,b)
  br label %462

; <label>:458                                     ; preds = %446
  %459 = add nsw i32 %379, -1
  %460 = icmp sgt i32 %379, 1
  br i1 %460, label %378, label %461

; <label>:461                                     ; preds = %458
  br label %462

; <label>:462                                     ; preds = %461, %455, %450, %375
  %463 = phi float [ %457, %455 ], [ %426, %450 ], [ 0.000000e+00, %375 ], [ 0.000000e+00, %461 ]
  %464 = phi i32 [ %379, %455 ], [ %379, %450 ], [ %303, %375 ], [ %459, %461 ]
  %465 = add nsw i32 %464, 1
  %466 = add nsw i32 %315, -1
  %467 = call i32 @dx.op.binary.i32(i32 38, i32 %465, i32 %466)  ; IMin(a,b)
  br label %468

; <label>:468                                     ; preds = %462, %442, %434, %373, %369, %319
  %469 = phi float [ %320, %319 ], [ %426, %434 ], [ %426, %442 ], [ %463, %462 ], [ 0x47EFFFFFE0000000, %373 ], [ %370, %369 ]
  %470 = phi i32 [ %134, %319 ], [ %134, %434 ], [ %134, %442 ], [ %134, %462 ], [ 0, %373 ], [ %134, %369 ]
  %471 = phi i32 [ %303, %319 ], [ %437, %434 ], [ %445, %442 ], [ %467, %462 ], [ %303, %373 ], [ %303, %369 ]
  %472 = icmp ne i32 %470, 0
  %473 = zext i1 %472 to i32
  %474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %475 = extractvalue %dx.types.CBufRet.f32 %474, 2
  %476 = call float @dx.op.binary.f32(i32 35, float %469, float %475)  ; FMax(a,b)
  %477 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %476)  ; FMin(a,b)
  br label %478

; <label>:478                                     ; preds = %468, %290
  %479 = phi float [ %477, %468 ], [ 0x47EFFFFFE0000000, %290 ]
  %480 = phi i32 [ %471, %468 ], [ %303, %290 ]
  %481 = phi i32 [ %473, %468 ], [ 0, %290 ]
  %482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %483 = extractvalue %dx.types.CBufRet.f32 %482, 0
  %484 = extractvalue %dx.types.CBufRet.f32 %482, 1
  %485 = fsub fast float %298, %483
  %486 = fsub fast float %299, %484
  %487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %488 = extractvalue %dx.types.CBufRet.f32 %487, 2
  %489 = extractvalue %dx.types.CBufRet.f32 %487, 3
  %490 = fmul fast float %485, %488
  %491 = fmul fast float %486, %489
  %492 = call float @dx.op.binary.f32(i32 36, float %490, float %491)  ; FMin(a,b)
  %493 = fcmp fast olt float %492, 0.000000e+00
  %494 = call float @dx.op.binary.f32(i32 35, float %490, float %491)  ; FMax(a,b)
  %495 = fcmp fast ogt float %494, 1.000000e+00
  %496 = or i1 %493, %495
  %497 = extractvalue %dx.types.CBufRet.f32 %482, 2
  %498 = fcmp fast olt float %300, %497
  %499 = or i1 %496, %498
  %500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %501 = extractvalue %dx.types.CBufRet.f32 %500, 3
  %502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %503 = extractvalue %dx.types.CBufRet.f32 %502, 0
  %504 = fadd fast float %503, %501
  %505 = fcmp fast ogt float %300, %504
  %506 = or i1 %499, %505
  br i1 %506, label %507, label %536, !dx.controlflow.hints !52

; <label>:507                                     ; preds = %478
  %508 = extractvalue %dx.types.CBufRet.f32 %487, 0
  %509 = extractvalue %dx.types.CBufRet.f32 %487, 1
  %510 = fsub fast float %483, %298
  %511 = fmul fast float %510, %265
  %512 = fadd fast float %510, %508
  %513 = fmul fast float %512, %265
  %514 = call float @dx.op.binary.f32(i32 36, float %511, float %513)  ; FMin(a,b)
  %515 = call float @dx.op.binary.f32(i32 35, float %511, float %513)  ; FMax(a,b)
  %516 = fsub fast float %484, %299
  %517 = fmul fast float %516, %266
  %518 = fadd fast float %516, %509
  %519 = fmul fast float %518, %266
  %520 = call float @dx.op.binary.f32(i32 36, float %517, float %519)  ; FMin(a,b)
  %521 = call float @dx.op.binary.f32(i32 35, float %514, float %520)  ; FMax(a,b)
  %522 = call float @dx.op.binary.f32(i32 35, float %517, float %519)  ; FMax(a,b)
  %523 = call float @dx.op.binary.f32(i32 36, float %515, float %522)  ; FMin(a,b)
  %524 = fsub fast float %497, %300
  %525 = fmul fast float %524, %267
  %526 = fsub fast float %501, %300
  %527 = fadd fast float %526, %503
  %528 = fmul fast float %527, %267
  %529 = call float @dx.op.binary.f32(i32 36, float %525, float %528)  ; FMin(a,b)
  %530 = call float @dx.op.binary.f32(i32 35, float %521, float %529)  ; FMax(a,b)
  %531 = call float @dx.op.binary.f32(i32 35, float %525, float %528)  ; FMax(a,b)
  %532 = call float @dx.op.binary.f32(i32 36, float %523, float %531)  ; FMin(a,b)
  %533 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %530)  ; FMax(a,b)
  %534 = fcmp fast oge float %532, %533
  %535 = select i1 %534, float %530, float 1.000000e+07
  br label %582

; <label>:536                                     ; preds = %478
  %537 = fsub fast float 1.000000e+00, %491
  %538 = icmp eq i32 %302, 0
  br i1 %538, label %567, label %539

; <label>:539                                     ; preds = %536
  br label %540

; <label>:540                                     ; preds = %563, %539
  %541 = phi i32 [ %564, %563 ], [ %302, %539 ]
  %542 = uitofp i32 %541 to float
  %543 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %15, float %490, float %537, float undef, float undef, i32 0, i32 0, i32 undef, float %542)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %544 = extractvalue %dx.types.ResRet.f32 %543, 0
  %545 = extractvalue %dx.types.ResRet.f32 %543, 1
  %546 = extractvalue %dx.types.ResRet.f32 %543, 2
  %547 = fcmp fast oeq float %544, 0.000000e+00
  %548 = fcmp ule float %300, %546
  %549 = fcmp uge float %300, %545
  %550 = or i1 %549, %548
  %551 = or i1 %547, %550
  br i1 %551, label %552, label %563, !dx.controlflow.hints !53

; <label>:552                                     ; preds = %540
  %553 = extractvalue %dx.types.ResRet.f32 %543, 3
  %554 = extractvalue %dx.types.CBufRet.f32 %487, 0
  %555 = and i32 %541, 31
  %556 = lshr i32 1024, %555
  %557 = uitofp i32 %556 to float
  %558 = fdiv fast float %554, %557
  %559 = add i32 %541, 1
  %560 = uitofp i32 %559 to float
  %561 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %560)  ; FMin(a,b)
  %562 = fptosi float %561 to i32
  br label %582

; <label>:563                                     ; preds = %540
  %564 = add i32 %541, -1
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %566, label %540, !llvm.loop !54

; <label>:566                                     ; preds = %563
  br label %567

; <label>:567                                     ; preds = %566, %536
  %568 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %14, float %490, float %537, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %569 = extractvalue %dx.types.ResRet.f32 %568, 0
  %570 = extractvalue %dx.types.ResRet.f32 %568, 1
  %571 = extractvalue %dx.types.ResRet.f32 %568, 2
  %572 = extractvalue %dx.types.ResRet.f32 %568, 3
  %573 = extractvalue %dx.types.CBufRet.f32 %487, 0
  %574 = fmul fast float %573, 9.765625e-04
  %575 = fcmp fast oeq float %569, 0.000000e+00
  %576 = fcmp ule float %300, %571
  %577 = fcmp uge float %300, %570
  %578 = or i1 %577, %576
  %579 = or i1 %575, %578
  %580 = zext i1 %579 to i32
  %581 = xor i32 %580, 1
  br label %582

; <label>:582                                     ; preds = %567, %552, %507
  %583 = phi float [ %535, %507 ], [ %558, %552 ], [ %574, %567 ]
  %584 = phi float [ %293, %507 ], [ %544, %552 ], [ %569, %567 ]
  %585 = phi float [ %294, %507 ], [ %545, %552 ], [ %570, %567 ]
  %586 = phi float [ %295, %507 ], [ %546, %552 ], [ %571, %567 ]
  %587 = phi float [ %296, %507 ], [ %553, %552 ], [ %572, %567 ]
  %588 = phi i32 [ 0, %507 ], [ 0, %552 ], [ %581, %567 ]
  %589 = phi i32 [ 10, %507 ], [ %562, %552 ], [ 1, %567 ]
  %590 = icmp eq i32 %588, 0
  %591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %592 = extractvalue %dx.types.CBufRet.f32 %591, 2
  %593 = call float @dx.op.binary.f32(i32 35, float %583, float %592)  ; FMax(a,b)
  %594 = call float @dx.op.binary.f32(i32 36, float %479, float %593)  ; FMin(a,b)
  %595 = icmp eq i32 %161, 0
  br i1 %595, label %608, label %596, !dx.controlflow.hints !56

; <label>:596                                     ; preds = %582
  %597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %598 = extractvalue %dx.types.CBufRet.f32 %597, 3
  %599 = extractvalue %dx.types.CBufRet.f32 %597, 2
  %600 = fmul fast float %598, %301
  %601 = fdiv fast float %600, %268
  %602 = fadd fast float %601, 1.000000e+00
  %603 = call float @dx.op.unary.f32(i32 23, float %602)  ; Log(value)
  %604 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %603)  ; FMin(a,b)
  %605 = fmul fast float %599, %268
  %606 = fmul fast float %605, %604
  %607 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %606)  ; FMin(a,b)
  br label %608

; <label>:608                                     ; preds = %596, %582
  %609 = phi float [ %607, %596 ], [ 0x47EFFFFFE0000000, %582 ]
  %610 = icmp eq i32 %221, 0
  br i1 %610, label %666, label %611, !dx.controlflow.hints !57

; <label>:611                                     ; preds = %608
  %612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %613 = extractvalue %dx.types.CBufRet.f32 %612, 0
  %614 = extractvalue %dx.types.CBufRet.f32 %612, 1
  %615 = extractvalue %dx.types.CBufRet.f32 %612, 2
  %616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %617 = extractvalue %dx.types.CBufRet.f32 %616, 0
  %618 = extractvalue %dx.types.CBufRet.f32 %616, 1
  %619 = extractvalue %dx.types.CBufRet.f32 %616, 2
  %620 = fsub fast float %298, %617
  %621 = fsub fast float %299, %618
  %622 = fsub fast float %300, %619
  %623 = fmul fast float %620, %613
  %624 = fmul fast float %621, %614
  %625 = fmul fast float %622, %615
  %626 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %627 = extractvalue %dx.types.CBufRet.i32 %626, 3
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %632, label %629, !dx.controlflow.hints !58

; <label>:629                                     ; preds = %611
  %630 = call float @dx.op.unary.f32(i32 22, float %623)  ; Frc(value)
  %631 = call float @dx.op.unary.f32(i32 22, float %624)  ; Frc(value)
  br label %632

; <label>:632                                     ; preds = %629, %611
  %633 = phi float [ %630, %629 ], [ %623, %611 ]
  %634 = phi float [ %631, %629 ], [ %624, %611 ]
  %635 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %12, float %633, float %634, float %625, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %636 = extractvalue %dx.types.ResRet.f32 %635, 0
  %637 = fmul fast float %636, 2.000000e+00
  %638 = fadd fast float %637, -1.000000e+00
  %639 = extractvalue %dx.types.CBufRet.f32 %612, 3
  %640 = fmul fast float %638, %639
  %641 = fcmp fast olt float %640, 0.000000e+00
  %642 = fcmp fast oge float %625, 0.000000e+00
  %643 = fcmp fast ole float %625, 1.000000e+00
  br i1 %628, label %646, label %644, !dx.controlflow.hints !59

; <label>:644                                     ; preds = %632
  %645 = and i1 %642, %643
  br label %656

; <label>:646                                     ; preds = %632
  %647 = fcmp fast oge float %623, 0.000000e+00
  %648 = fcmp fast oge float %624, 0.000000e+00
  %649 = and i1 %647, %648
  %650 = and i1 %642, %649
  %651 = fcmp fast ole float %623, 1.000000e+00
  %652 = fcmp fast ole float %624, 1.000000e+00
  %653 = and i1 %651, %652
  %654 = and i1 %643, %653
  %655 = and i1 %650, %654
  br label %656

; <label>:656                                     ; preds = %646, %644
  %657 = phi i1 [ %645, %644 ], [ %655, %646 ]
  %658 = and i1 %641, %657
  %659 = call float @dx.op.unary.f32(i32 6, float %640)  ; FAbs(value)
  %660 = extractvalue %dx.types.CBufRet.f32 %591, 1
  %661 = extractvalue %dx.types.CBufRet.f32 %591, 0
  %662 = call float @dx.op.binary.f32(i32 35, float %659, float %661)  ; FMax(a,b)
  %663 = select i1 %658, float %660, float %662
  %664 = zext i1 %658 to i32
  %665 = call float @dx.op.binary.f32(i32 36, float %594, float %663)  ; FMin(a,b)
  br label %666

; <label>:666                                     ; preds = %656, %608
  %667 = phi float [ %665, %656 ], [ %594, %608 ]
  %668 = phi i32 [ %664, %656 ], [ 0, %608 ]
  %669 = icmp eq i32 %262, 0
  br i1 %669, label %841, label %670, !dx.controlflow.hints !60

; <label>:670                                     ; preds = %666
  %671 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %672 = extractvalue %dx.types.CBufRet.i32 %671, 1
  %673 = and i32 %672, 1
  %674 = icmp eq i32 %673, 0
  br i1 %674, label %675, label %832, !dx.controlflow.hints !61

; <label>:675                                     ; preds = %670
  %676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %677 = extractvalue %dx.types.CBufRet.f32 %676, 2
  %678 = extractvalue %dx.types.CBufRet.f32 %676, 3
  %679 = fmul fast float %677, %298
  %680 = fmul fast float %678, %299
  %681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %682 = extractvalue %dx.types.CBufRet.f32 %681, 0
  %683 = extractvalue %dx.types.CBufRet.f32 %681, 1
  %684 = fadd fast float %679, %682
  %685 = fadd fast float %680, %683
  %686 = call float @dx.op.unary.f32(i32 7, float %684)  ; Saturate(value)
  %687 = call float @dx.op.unary.f32(i32 7, float %685)  ; Saturate(value)
  %688 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %14, float %686, float %687, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %689 = extractvalue %dx.types.ResRet.f32 %688, 0
  %690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %691 = extractvalue %dx.types.CBufRet.f32 %690, 0
  %692 = fmul fast float %691, %689
  %693 = fsub fast float %684, %686
  %694 = fsub fast float %685, %687
  %695 = extractvalue %dx.types.CBufRet.f32 %676, 0
  %696 = extractvalue %dx.types.CBufRet.f32 %676, 1
  %697 = fmul fast float %695, %693
  %698 = fmul fast float %696, %694
  %699 = fmul fast float %697, %697
  %700 = fmul fast float %698, %698
  %701 = fadd fast float %699, %700
  %702 = call float @dx.op.unary.f32(i32 24, float %701)  ; Sqrt(value)
  %703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %704 = extractvalue %dx.types.CBufRet.f32 %703, 3
  %705 = fmul fast float %704, %702
  %706 = call float @dx.op.unary.f32(i32 7, float %705)  ; Saturate(value)
  %707 = extractvalue %dx.types.CBufRet.f32 %703, 2
  %708 = fsub fast float %707, %692
  %709 = fmul fast float %708, %706
  %710 = extractvalue %dx.types.CBufRet.f32 %690, 1
  %711 = fsub fast float %300, %692
  %712 = fsub fast float %711, %710
  %713 = fsub fast float %712, %709
  %714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %715 = extractvalue %dx.types.CBufRet.f32 %714, 2
  %716 = fsub fast float %713, %715
  %717 = fcmp fast olt float %716, 0.000000e+00
  %718 = call float @dx.op.unary.f32(i32 6, float %716)  ; FAbs(value)
  %719 = extractvalue %dx.types.CBufRet.i32 %671, 0
  %720 = icmp eq i32 %719, 0
  br i1 %720, label %774, label %721

; <label>:721                                     ; preds = %675
  br label %722

; <label>:722                                     ; preds = %761, %721
  %723 = phi i32 [ %767, %761 ], [ 1, %721 ]
  %724 = phi float [ %769, %761 ], [ 0x47EFFFFFE0000000, %721 ]
  %725 = phi i32 [ %770, %761 ], [ 0, %721 ]
  %726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %727 = extractvalue %dx.types.CBufRet.f32 %726, 1
  %728 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %729 = extractvalue %dx.types.CBufRet.i32 %728, 1
  %730 = and i32 %729, 8
  %731 = icmp eq i32 %730, 0
  %732 = fcmp fast ogt float %727, %713
  %733 = or i1 %732, %731
  %734 = add i32 %725, 171
  %735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %734)  ; CBufferLoadLegacy(handle,regIndex)
  %736 = extractvalue %dx.types.CBufRet.f32 %735, 0
  %737 = extractvalue %dx.types.CBufRet.f32 %735, 1
  %738 = extractvalue %dx.types.CBufRet.f32 %735, 2
  br i1 %733, label %739, label %745, !dx.controlflow.hints !62

; <label>:739                                     ; preds = %722
  %740 = fsub fast float %736, %298
  %741 = fsub fast float %737, %299
  %742 = fmul fast float %740, %740
  %743 = fmul fast float %741, %741
  %744 = fadd fast float %742, %743
  br label %761

; <label>:745                                     ; preds = %722
  %746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %747 = extractvalue %dx.types.CBufRet.f32 %746, 2
  %748 = extractvalue %dx.types.CBufRet.f32 %726, 2
  %749 = fmul fast float %748, %747
  %750 = fsub fast float %749, %727
  %751 = fdiv fast float %738, %750
  %752 = fsub fast float %298, %736
  %753 = fsub fast float %299, %737
  %754 = fsub fast float %713, %727
  %755 = fmul fast float %751, %754
  %756 = fmul fast float %752, %752
  %757 = fmul fast float %753, %753
  %758 = fadd fast float %756, %757
  %759 = fmul fast float %755, %755
  %760 = fadd fast float %758, %759
  br label %761

; <label>:761                                     ; preds = %745, %739
  %762 = phi float [ %744, %739 ], [ %760, %745 ]
  %763 = call float @dx.op.unary.f32(i32 24, float %762)  ; Sqrt(value)
  %764 = fsub float %738, %763
  %765 = fcmp fast olt float %764, 0.000000e+00
  %766 = zext i1 %765 to i32
  %767 = and i32 %766, %723
  %768 = call float @dx.op.unary.f32(i32 6, float %764)  ; FAbs(value)
  %769 = call float @dx.op.binary.f32(i32 36, float %724, float %768)  ; FMin(a,b)
  %770 = add i32 %725, 1
  %771 = extractvalue %dx.types.CBufRet.i32 %728, 0
  %772 = icmp ult i32 %770, %771
  br i1 %772, label %722, label %773

; <label>:773                                     ; preds = %761
  br label %774

; <label>:774                                     ; preds = %773, %675
  %775 = phi i32 [ 1, %675 ], [ %767, %773 ]
  %776 = phi float [ 0x47EFFFFFE0000000, %675 ], [ %769, %773 ]
  br label %777

; <label>:777                                     ; preds = %777, %774
  %778 = phi i32 [ %775, %774 ], [ %817, %777 ]
  %779 = phi float [ 0x47EFFFFFE0000000, %774 ], [ %819, %777 ]
  %780 = phi i32 [ 0, %774 ], [ %820, %777 ]
  %781 = add nuw nsw i32 %780, 191
  %782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %781)  ; CBufferLoadLegacy(handle,regIndex)
  %783 = extractvalue %dx.types.CBufRet.f32 %782, 0
  %784 = extractvalue %dx.types.CBufRet.f32 %782, 1
  %785 = extractvalue %dx.types.CBufRet.f32 %782, 2
  %786 = add nuw nsw i32 %780, 195
  %787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %786)  ; CBufferLoadLegacy(handle,regIndex)
  %788 = extractvalue %dx.types.CBufRet.f32 %787, 0
  %789 = extractvalue %dx.types.CBufRet.f32 %787, 1
  %790 = extractvalue %dx.types.CBufRet.f32 %787, 2
  %791 = fsub fast float %298, %783
  %792 = fsub fast float %299, %784
  %793 = fsub fast float %713, %785
  %794 = call float @dx.op.unary.f32(i32 6, float %791)  ; FAbs(value)
  %795 = call float @dx.op.unary.f32(i32 6, float %792)  ; FAbs(value)
  %796 = call float @dx.op.unary.f32(i32 6, float %793)  ; FAbs(value)
  %797 = fsub fast float %794, %788
  %798 = fsub fast float %795, %789
  %799 = fsub fast float %796, %790
  %800 = call float @dx.op.binary.f32(i32 35, float %797, float 0.000000e+00)  ; FMax(a,b)
  %801 = call float @dx.op.binary.f32(i32 35, float %798, float 0.000000e+00)  ; FMax(a,b)
  %802 = call float @dx.op.binary.f32(i32 35, float %799, float 0.000000e+00)  ; FMax(a,b)
  %803 = fmul fast float %800, %800
  %804 = fmul fast float %801, %801
  %805 = fadd fast float %804, %803
  %806 = fmul fast float %802, %802
  %807 = fadd fast float %805, %806
  %808 = call float @dx.op.unary.f32(i32 24, float %807)  ; Sqrt(value)
  %809 = call float @dx.op.binary.f32(i32 35, float %798, float %799)  ; FMax(a,b)
  %810 = call float @dx.op.binary.f32(i32 35, float %797, float %809)  ; FMax(a,b)
  %811 = call float @dx.op.binary.f32(i32 36, float %810, float 0.000000e+00)  ; FMin(a,b)
  %812 = fadd fast float %811, %808
  %813 = fsub fast float -0.000000e+00, %812
  %814 = fcmp ogt float %812, -0.000000e+00
  %815 = icmp ne i32 %778, 0
  %816 = and i1 %815, %814
  %817 = zext i1 %816 to i32
  %818 = call float @dx.op.unary.f32(i32 6, float %813)  ; FAbs(value)
  %819 = call float @dx.op.binary.f32(i32 36, float %779, float %818)  ; FMin(a,b)
  %820 = add nuw nsw i32 %780, 1
  %821 = icmp eq i32 %820, 4
  br i1 %821, label %822, label %777

; <label>:822                                     ; preds = %777
  %823 = call float @dx.op.binary.f32(i32 36, float %718, float %819)  ; FMin(a,b)
  %824 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %825 = extractvalue %dx.types.CBufRet.i32 %824, 1
  %826 = and i32 %825, 2
  %827 = icmp ne i32 %826, 0
  %828 = xor i1 %816, %827
  %829 = call float @dx.op.binary.f32(i32 36, float %823, float %776)  ; FMin(a,b)
  %830 = and i1 %828, %717
  %831 = zext i1 %830 to i32
  br label %832

; <label>:832                                     ; preds = %822, %670
  %833 = phi i32 [ %291, %670 ], [ %831, %822 ]
  %834 = phi float [ 0.000000e+00, %670 ], [ %829, %822 ]
  %835 = phi float [ %300, %670 ], [ %713, %822 ]
  %836 = icmp ne i32 %833, 0
  %837 = extractvalue %dx.types.CBufRet.f32 %591, 3
  %838 = call float @dx.op.binary.f32(i32 35, float %834, float %837)  ; FMax(a,b)
  %839 = call float @dx.op.binary.f32(i32 36, float %609, float %838)  ; FMin(a,b)
  %840 = zext i1 %836 to i32
  br label %841

; <label>:841                                     ; preds = %832, %666
  %842 = phi i32 [ %833, %832 ], [ %291, %666 ]
  %843 = phi float [ %835, %832 ], [ %292, %666 ]
  %844 = phi float [ %839, %832 ], [ %609, %666 ]
  %845 = phi i32 [ %840, %832 ], [ 0, %666 ]
  %846 = extractvalue %dx.types.CBufRet.f32 %310, 2
  %847 = fmul fast float %846, %301
  %848 = call float @dx.op.unary.f32(i32 23, float %847)  ; Log(value)
  %849 = fmul fast float %848, 0x3FE62E4300000000
  %850 = call float @dx.op.binary.f32(i32 35, float %849, float 1.000000e+00)  ; FMax(a,b)
  %851 = fmul fast float %850, %844
  %852 = call float @dx.op.binary.f32(i32 36, float %851, float %667)  ; FMin(a,b)
  %853 = call float @dx.op.binary.f32(i32 35, float %852, float %311)  ; FMax(a,b)
  %854 = fsub fast float %268, %301
  %855 = fadd fast float %854, 0x3F1A36E2E0000000
  %856 = call float @dx.op.binary.f32(i32 36, float %855, float %853)  ; FMin(a,b)
  %857 = icmp eq i32 %481, 0
  br i1 %857, label %954, label %858, !dx.controlflow.hints !63

; <label>:858                                     ; preds = %841
  %859 = fcmp fast olt float %855, %853
  %860 = fmul fast float %36, %65
  %861 = fmul fast float %860, %856
  %862 = fadd fast float %861, %300
  %863 = fmul fast float %37, %65
  %864 = fmul fast float %863, %856
  %865 = fadd fast float %864, %300
  %866 = fmul fast float %38, %65
  %867 = fmul fast float %866, %856
  %868 = fadd fast float %867, %300
  br i1 %859, label %869, label %874, !dx.controlflow.hints !64

; <label>:869                                     ; preds = %858
  %870 = fmul fast float %856, %63
  %871 = fmul fast float %856, %64
  %872 = fadd fast float %870, %298
  %873 = fadd fast float %871, %299
  br label %874

; <label>:874                                     ; preds = %869, %858
  %875 = phi float [ %872, %869 ], [ %298, %858 ]
  %876 = phi float [ %873, %869 ], [ %299, %858 ]
  %877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %878 = extractvalue %dx.types.CBufRet.f32 %877, 0
  %879 = extractvalue %dx.types.CBufRet.f32 %877, 1
  %880 = fsub fast float %875, %878
  %881 = fsub fast float %876, %879
  %882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %883 = extractvalue %dx.types.CBufRet.f32 %882, 0
  %884 = extractvalue %dx.types.CBufRet.f32 %882, 1
  %885 = fmul fast float %880, %883
  %886 = fmul fast float %881, %884
  %887 = fsub fast float 1.000000e+00, %886
  %888 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %889 = extractvalue %dx.types.CBufRet.i32 %888, 3
  %890 = icmp eq i32 %889, 0
  br i1 %890, label %897, label %891, !dx.controlflow.hints !47

; <label>:891                                     ; preds = %874
  %892 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %885, float %887, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %893 = extractvalue %dx.types.ResRet.f32 %892, 0
  %894 = extractvalue %dx.types.ResRet.f32 %892, 1
  %895 = extractvalue %dx.types.ResRet.f32 %892, 2
  %896 = extractvalue %dx.types.ResRet.f32 %892, 3
  br label %903

; <label>:897                                     ; preds = %874
  %898 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %885, float %887, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %899 = extractvalue %dx.types.ResRet.f32 %898, 0
  %900 = extractvalue %dx.types.ResRet.f32 %898, 1
  %901 = extractvalue %dx.types.ResRet.f32 %898, 2
  %902 = extractvalue %dx.types.ResRet.f32 %898, 3
  br label %903

; <label>:903                                     ; preds = %897, %891
  %904 = phi float [ %893, %891 ], [ %899, %897 ]
  %905 = phi float [ %894, %891 ], [ %900, %897 ]
  %906 = phi float [ %895, %891 ], [ %901, %897 ]
  %907 = phi float [ %896, %891 ], [ %902, %897 ]
  %908 = extractvalue %dx.types.CBufRet.f32 %882, 3
  %909 = fmul fast float %908, %905
  %910 = fmul fast float %909, %904
  %911 = fsub fast float %909, %910
  %912 = fcmp fast ole float %911, 0.000000e+00
  %913 = extractvalue %dx.types.CBufRet.f32 %877, 2
  %914 = fadd fast float %910, %913
  %915 = fmul fast float %908, %906
  %916 = fadd fast float %915, %913
  %917 = fdiv fast float 1.000000e+00, %911
  %918 = select i1 %912, float 1.000000e+06, float %917
  %919 = fsub fast float %862, %914
  %920 = fmul fast float %918, %919
  %921 = call float @dx.op.unary.f32(i32 7, float %920)  ; Saturate(value)
  %922 = extractvalue %dx.types.CBufRet.f32 %882, 2
  %923 = fmul fast float %922, %921
  %924 = fsub fast float %922, %923
  %925 = fcmp fast olt float %862, %916
  %926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %927 = extractvalue %dx.types.CBufRet.f32 %926, 3
  %928 = select i1 %925, float %927, float 1.000000e+00
  %929 = fmul fast float %924, %928
  %930 = fsub fast float %865, %914
  %931 = fmul fast float %918, %930
  %932 = call float @dx.op.unary.f32(i32 7, float %931)  ; Saturate(value)
  %933 = fmul fast float %922, %932
  %934 = fsub fast float %922, %933
  %935 = fcmp fast olt float %865, %916
  %936 = select i1 %935, float %927, float 1.000000e+00
  %937 = fmul fast float %934, %936
  %938 = fadd fast float %937, %929
  %939 = fsub fast float %868, %914
  %940 = fmul fast float %918, %939
  %941 = call float @dx.op.unary.f32(i32 7, float %940)  ; Saturate(value)
  %942 = fmul fast float %922, %941
  %943 = fsub fast float %922, %942
  %944 = fcmp fast olt float %868, %916
  %945 = select i1 %944, float %927, float 1.000000e+00
  %946 = fmul fast float %943, %945
  %947 = fadd fast float %938, %946
  %948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %949 = extractvalue %dx.types.CBufRet.f32 %948, 2
  %950 = fmul fast float %856, 0x3FD5555560000000
  %951 = fmul fast float %950, %907
  %952 = fmul fast float %951, %949
  %953 = fmul fast float %952, %947
  br label %954

; <label>:954                                     ; preds = %903, %841
  %955 = phi float [ %953, %903 ], [ 0.000000e+00, %841 ]
  br i1 %595, label %1002, label %956, !dx.controlflow.hints !65

; <label>:956                                     ; preds = %954
  %957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %958 = extractvalue %dx.types.CBufRet.f32 %957, 0
  %959 = fsub fast float %958, %300
  %960 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %309, float %308, float %959)  ; Dot3(ax,ay,az,bx,by,bz)
  %961 = fmul fast float %143, %960
  %962 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %961)  ; FMax(a,b)
  %963 = fcmp ogt float %62, -0.000000e+00
  %964 = call float @dx.op.binary.f32(i32 36, float %856, float %962)  ; FMin(a,b)
  br i1 %963, label %966, label %965, !dx.controlflow.hints !66

; <label>:965                                     ; preds = %956
  br label %966

; <label>:966                                     ; preds = %965, %956
  %967 = phi float [ 0.000000e+00, %965 ], [ %964, %956 ]
  %968 = phi float [ %964, %965 ], [ %856, %956 ]
  %969 = phi float [ %964, %965 ], [ 0.000000e+00, %956 ]
  %970 = phi float [ %856, %965 ], [ %964, %956 ]
  %971 = fsub fast float %968, %967
  %972 = extractvalue %dx.types.CBufRet.f32 %957, 1
  %973 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %972)  ; FMin(a,b)
  %974 = fsub fast float %300, %958
  %975 = fmul fast float %973, 0x3FF7154760000000
  %976 = fmul fast float %975, %974
  %977 = call float @dx.op.unary.f32(i32 21, float %976)  ; Exp(value)
  %978 = fmul fast float %62, 0xBFF7154760000000
  %979 = fmul fast float %978, %970
  %980 = fmul fast float %979, %973
  %981 = call float @dx.op.unary.f32(i32 21, float %980)  ; Exp(value)
  %982 = fmul fast float %978, %969
  %983 = fmul fast float %982, %973
  %984 = call float @dx.op.unary.f32(i32 21, float %983)  ; Exp(value)
  %985 = fsub fast float %981, %984
  %986 = fmul fast float %985, %977
  %987 = fmul fast float %973, %65
  %988 = fdiv fast float %986, %987
  %989 = fadd fast float %971, %988
  %990 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %991 = fcmp fast olt float %990, 0x3F0FFB4800000000
  %992 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %974)  ; FMax(a,b)
  %993 = fmul fast float %992, 0x3FF7154760000000
  %994 = fmul fast float %993, %972
  %995 = call float @dx.op.unary.f32(i32 21, float %994)  ; Exp(value)
  %996 = fmul fast float %995, %856
  %997 = select i1 %991, float %996, float %989
  %998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %999 = extractvalue %dx.types.CBufRet.f32 %998, 1
  %1000 = fmul fast float %997, %999
  %1001 = fadd fast float %1000, %955
  br label %1002

; <label>:1002                                    ; preds = %966, %954
  %1003 = phi float [ %1001, %966 ], [ %955, %954 ]
  %1004 = icmp eq i32 %668, 0
  br i1 %1004, label %1185, label %1005, !dx.controlflow.hints !67

; <label>:1005                                    ; preds = %1002
  %1006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1007 = extractvalue %dx.types.CBufRet.f32 %1006, 3
  %1008 = fmul fast float %1007, %301
  %1009 = fcmp fast oeq float %1008, 0.000000e+00
  br i1 %1009, label %1024, label %1010, !dx.controlflow.hints !68

; <label>:1010                                    ; preds = %1005
  %1011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1012 = extractvalue %dx.types.CBufRet.f32 %1011, 3
  %1013 = fmul fast float %1012, %1008
  %1014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1015 = extractvalue %dx.types.CBufRet.f32 %1014, 0
  %1016 = extractvalue %dx.types.CBufRet.f32 %1014, 1
  %1017 = extractvalue %dx.types.CBufRet.f32 %1014, 2
  %1018 = fmul fast float %1015, %1013
  %1019 = fmul fast float %1016, %1013
  %1020 = fmul fast float %1017, %1013
  %1021 = call float @dx.op.unary.f32(i32 23, float %1018)  ; Log(value)
  %1022 = call float @dx.op.unary.f32(i32 23, float %1019)  ; Log(value)
  %1023 = call float @dx.op.unary.f32(i32 23, float %1020)  ; Log(value)
  br label %1024

; <label>:1024                                    ; preds = %1010, %1005
  %1025 = phi float [ %1021, %1010 ], [ 0.000000e+00, %1005 ]
  %1026 = phi float [ %1022, %1010 ], [ 0.000000e+00, %1005 ]
  %1027 = phi float [ %1023, %1010 ], [ 0.000000e+00, %1005 ]
  %1028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1029 = extractvalue %dx.types.CBufRet.f32 %1028, 0
  %1030 = extractvalue %dx.types.CBufRet.f32 %1028, 1
  %1031 = extractvalue %dx.types.CBufRet.f32 %1028, 2
  %1032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1033 = extractvalue %dx.types.CBufRet.f32 %1032, 0
  %1034 = extractvalue %dx.types.CBufRet.f32 %1032, 1
  %1035 = extractvalue %dx.types.CBufRet.f32 %1032, 2
  %1036 = fsub fast float %298, %1033
  %1037 = fsub fast float %299, %1034
  %1038 = fsub fast float %300, %1035
  %1039 = fmul fast float %1036, %1029
  %1040 = fmul fast float %1037, %1030
  %1041 = fmul fast float %1038, %1031
  %1042 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %1043 = extractvalue %dx.types.CBufRet.i32 %1042, 0
  %1044 = extractvalue %dx.types.CBufRet.i32 %1042, 1
  %1045 = uitofp i32 %1043 to float
  %1046 = uitofp i32 %1044 to float
  %1047 = fmul fast float %1039, %1045
  %1048 = fmul fast float %1040, %1046
  %1049 = fadd fast float %1047, 5.000000e-01
  %1050 = fadd fast float %1048, 5.000000e-01
  %1051 = call float @dx.op.unary.f32(i32 22, float %1049)  ; Frc(value)
  %1052 = call float @dx.op.unary.f32(i32 22, float %1050)  ; Frc(value)
  %1053 = call float @dx.op.unary.f32(i32 27, float %1049)  ; Round_ni(value)
  %1054 = call float @dx.op.unary.f32(i32 27, float %1050)  ; Round_ni(value)
  %1055 = fadd fast float %1053, 1.000000e+00
  %1056 = fadd fast float %1054, 1.000000e+00
  %1057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %1058 = extractvalue %dx.types.CBufRet.f32 %1057, 0
  %1059 = extractvalue %dx.types.CBufRet.f32 %1057, 1
  %1060 = fmul fast float %1058, %1055
  %1061 = fmul fast float %1059, %1056
  %1062 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %13, float %1060, float %1061, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1063 = extractvalue %dx.types.ResRet.f32 %1062, 0
  %1064 = extractvalue %dx.types.ResRet.f32 %1062, 1
  %1065 = extractvalue %dx.types.ResRet.f32 %1062, 2
  %1066 = extractvalue %dx.types.ResRet.f32 %1062, 3
  %1067 = extractvalue %dx.types.CBufRet.i32 %1042, 2
  %1068 = extractvalue %dx.types.CBufRet.f32 %1057, 2
  %1069 = uitofp i32 %1067 to float
  %1070 = fadd fast float %1069, -1.000000e+00
  %1071 = fmul fast float %1070, %1063
  %1072 = fmul fast float %1070, %1064
  %1073 = fmul fast float %1070, %1065
  %1074 = fmul fast float %1070, %1066
  %1075 = fadd fast float %1071, 5.000000e-01
  %1076 = fadd fast float %1072, 5.000000e-01
  %1077 = fadd fast float %1073, 5.000000e-01
  %1078 = fadd fast float %1074, 5.000000e-01
  %1079 = fptoui float %1075 to i32
  %1080 = fptoui float %1076 to i32
  %1081 = fptoui float %1077 to i32
  %1082 = fptoui float %1078 to i32
  %1083 = uitofp i32 %1079 to float
  %1084 = uitofp i32 %1080 to float
  %1085 = uitofp i32 %1081 to float
  %1086 = uitofp i32 %1082 to float
  %1087 = fadd fast float %1083, 5.000000e-01
  %1088 = fadd fast float %1084, 5.000000e-01
  %1089 = fadd fast float %1085, 5.000000e-01
  %1090 = fadd fast float %1086, 5.000000e-01
  %1091 = fmul fast float %1087, %1068
  %1092 = fmul fast float %1088, %1068
  %1093 = fmul fast float %1089, %1068
  %1094 = fmul fast float %1090, %1068
  %1095 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %14, float %1091, float %1041, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1096 = extractvalue %dx.types.ResRet.f32 %1095, 0
  %1097 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %14, float %1092, float %1041, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1098 = extractvalue %dx.types.ResRet.f32 %1097, 0
  %1099 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %14, float %1093, float %1041, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1100 = extractvalue %dx.types.ResRet.f32 %1099, 0
  %1101 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %14, float %1094, float %1041, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1102 = extractvalue %dx.types.ResRet.f32 %1101, 0
  %1103 = fsub fast float %1100, %1102
  %1104 = fmul fast float %1103, %1051
  %1105 = fadd fast float %1104, %1102
  %1106 = fsub fast float %1098, %1096
  %1107 = fmul fast float %1106, %1051
  %1108 = fadd fast float %1107, %1096
  %1109 = fsub fast float %1108, %1105
  %1110 = fmul fast float %1109, %1052
  %1111 = fadd fast float %1110, %1105
  %1112 = fcmp fast ogt float %1111, 0.000000e+00
  br i1 %1112, label %1113, label %1181, !dx.controlflow.hints !69

; <label>:1113                                    ; preds = %1024
  %1114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1115 = extractvalue %dx.types.CBufRet.f32 %1114, 0
  %1116 = extractvalue %dx.types.CBufRet.f32 %1114, 1
  %1117 = extractvalue %dx.types.CBufRet.f32 %1114, 2
  %1118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1119 = extractvalue %dx.types.CBufRet.f32 %1118, 0
  %1120 = extractvalue %dx.types.CBufRet.f32 %1118, 1
  %1121 = extractvalue %dx.types.CBufRet.f32 %1118, 2
  %1122 = fmul fast float %1037, %1029
  %1123 = fmul fast float %1038, %1029
  %1124 = fadd fast float %1039, %1119
  %1125 = fadd fast float %1122, %1120
  %1126 = fadd fast float %1123, %1121
  %1127 = fmul fast float %1124, %1115
  %1128 = fmul fast float %1125, %1115
  %1129 = fmul fast float %1126, %1115
  %1130 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %11, float %1127, float %1128, float %1129, float undef, i32 0, i32 0, i32 0, float %1025)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1131 = extractvalue %dx.types.ResRet.f32 %1130, 0
  %1132 = fmul fast float %1124, %1116
  %1133 = fmul fast float %1125, %1116
  %1134 = fmul fast float %1126, %1116
  %1135 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %11, float %1132, float %1133, float %1134, float undef, i32 0, i32 0, i32 0, float %1026)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1136 = extractvalue %dx.types.ResRet.f32 %1135, 1
  %1137 = fmul fast float %1124, %1117
  %1138 = fmul fast float %1125, %1117
  %1139 = fmul fast float %1126, %1117
  %1140 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %11, float %1137, float %1138, float %1139, float undef, i32 0, i32 0, i32 0, float %1027)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1141 = extractvalue %dx.types.ResRet.f32 %1140, 2
  %1142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %1143 = extractvalue %dx.types.CBufRet.f32 %1142, 1
  %1144 = fmul fast float %1136, %1131
  %1145 = fmul fast float %1144, %1141
  %1146 = call float @dx.op.unary.f32(i32 23, float %1145)  ; Log(value)
  %1147 = fmul fast float %1146, %1143
  %1148 = call float @dx.op.unary.f32(i32 21, float %1147)  ; Exp(value)
  %1149 = extractvalue %dx.types.CBufRet.f32 %1142, 2
  %1150 = fmul fast float %1111, %1111
  %1151 = fmul fast float %1150, %1148
  %1152 = fmul fast float %1151, %1149
  %1153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %1154 = extractvalue %dx.types.CBufRet.f32 %1153, 3
  %1155 = fmul fast float %1154, %1152
  %1156 = bitcast float %1155 to i32
  %1157 = sitofp i32 %1156 to float
  %1158 = fptosi float %1157 to i32
  %1159 = bitcast i32 %1158 to float
  %1160 = fsub fast float 1.000000e+00, %1152
  %1161 = bitcast float %1160 to i32
  %1162 = sitofp i32 %1161 to float
  %1163 = fptosi float %1162 to i32
  %1164 = bitcast i32 %1163 to float
  %1165 = fadd fast float %1159, %1164
  %1166 = bitcast float %1165 to i32
  %1167 = sub nsw i32 2129859010, %1166
  %1168 = bitcast i32 %1167 to float
  %1169 = fmul fast float %1168, %1159
  %1170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1171 = extractvalue %dx.types.CBufRet.f32 %1170, 3
  %1172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1173 = extractvalue %dx.types.CBufRet.f32 %1172, 0
  %1174 = fmul fast float %1169, %1173
  %1175 = fadd fast float %1174, 1.000000e+00
  %1176 = bitcast float %1175 to i32
  %1177 = sub nsw i32 2129859010, %1176
  %1178 = bitcast i32 %1177 to float
  %1179 = fmul fast float %1169, %1171
  %1180 = fmul fast float %1179, %1178
  br label %1181

; <label>:1181                                    ; preds = %1113, %1024
  %1182 = phi float [ %1180, %1113 ], [ %1111, %1024 ]
  %1183 = fmul fast float %1182, %856
  %1184 = fadd fast float %1183, %1003
  br label %1185

; <label>:1185                                    ; preds = %1181, %1002
  %1186 = phi float [ %1184, %1181 ], [ %1003, %1002 ]
  br i1 %590, label %1312, label %1187, !dx.controlflow.hints !70

; <label>:1187                                    ; preds = %1185
  %1188 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1189 = extractvalue %dx.types.CBufRet.i32 %1188, 0
  %1190 = icmp ne i32 %1189, 0
  %1191 = zext i1 %1190 to i32
  %1192 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1193 = extractvalue %dx.types.CBufRet.i32 %1192, 0
  %1194 = icmp eq i32 %1193, 0
  br i1 %1194, label %1228, label %1195

; <label>:1195                                    ; preds = %1187
  br label %1196

; <label>:1196                                    ; preds = %1223, %1195
  %1197 = phi i32 [ %1224, %1223 ], [ 0, %1195 ]
  %1198 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %1197, i32 0)  ; BufferLoad(srv,index,wot)
  %1199 = extractvalue %dx.types.ResRet.f32 %1198, 0
  %1200 = extractvalue %dx.types.ResRet.f32 %1198, 1
  %1201 = extractvalue %dx.types.ResRet.f32 %1198, 2
  %1202 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %1197, i32 16)  ; BufferLoad(srv,index,wot)
  %1203 = extractvalue %dx.types.ResRet.f32 %1202, 0
  %1204 = extractvalue %dx.types.ResRet.f32 %1202, 1
  %1205 = extractvalue %dx.types.ResRet.f32 %1202, 2
  %1206 = fsub fast float %1199, %1203
  %1207 = fsub fast float %1200, %1204
  %1208 = fsub fast float %1201, %1205
  %1209 = fadd fast float %1203, %1199
  %1210 = fadd fast float %1204, %1200
  %1211 = fadd fast float %1205, %1201
  %1212 = fcmp fast olt float %298, %1206
  %1213 = fcmp fast olt float %299, %1207
  %1214 = fcmp fast olt float %300, %1208
  %1215 = or i1 %1212, %1213
  %1216 = or i1 %1214, %1215
  %1217 = fcmp fast ogt float %298, %1209
  %1218 = fcmp fast ogt float %299, %1210
  %1219 = fcmp fast ogt float %300, %1211
  %1220 = or i1 %1217, %1218
  %1221 = or i1 %1219, %1220
  %1222 = or i1 %1216, %1221
  br i1 %1222, label %1223, label %1226, !dx.controlflow.hints !71

; <label>:1223                                    ; preds = %1196
  %1224 = add nuw i32 %1197, 1
  %1225 = icmp ult i32 %1224, %1193
  br i1 %1225, label %1196, label %1226

; <label>:1226                                    ; preds = %1223, %1196
  %1227 = phi i32 [ 255, %1223 ], [ %1197, %1196 ]
  br label %1228

; <label>:1228                                    ; preds = %1226, %1187
  %1229 = phi i32 [ 255, %1187 ], [ %1227, %1226 ]
  %1230 = icmp eq i32 %1229, 255
  br i1 %1230, label %1236, label %1231, !dx.controlflow.hints !72

; <label>:1231                                    ; preds = %1228
  %1232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1229, i32 156)  ; BufferLoad(srv,index,wot)
  %1233 = extractvalue %dx.types.ResRet.i32 %1232, 0
  %1234 = icmp ne i32 %1233, 0
  %1235 = zext i1 %1234 to i32
  br label %1236

; <label>:1236                                    ; preds = %1231, %1228
  %1237 = phi i32 [ %1235, %1231 ], [ %1191, %1228 ]
  %1238 = icmp eq i32 %1237, 0
  br i1 %1238, label %1239, label %1308, !dx.controlflow.hints !73

; <label>:1239                                    ; preds = %1236
  %1240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1241 = extractvalue %dx.types.CBufRet.f32 %1240, 3
  %1242 = extractvalue %dx.types.CBufRet.f32 %500, 0
  %1243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1244 = extractvalue %dx.types.CBufRet.f32 %1243, 2
  %1245 = extractvalue %dx.types.CBufRet.f32 %1243, 3
  br i1 %1230, label %1256, label %1246, !dx.controlflow.hints !74

; <label>:1246                                    ; preds = %1239
  %1247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %1229, i32 60)  ; BufferLoad(srv,index,wot)
  %1248 = extractvalue %dx.types.ResRet.f32 %1247, 0
  %1249 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %1229, i32 64)  ; BufferLoad(srv,index,wot)
  %1250 = extractvalue %dx.types.ResRet.f32 %1249, 0
  %1251 = extractvalue %dx.types.ResRet.f32 %1249, 1
  %1252 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %1229, i32 72)  ; BufferLoad(srv,index,wot)
  %1253 = extractvalue %dx.types.ResRet.f32 %1252, 0
  %1254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %1229, i32 96)  ; BufferLoad(srv,index,wot)
  %1255 = extractvalue %dx.types.ResRet.f32 %1254, 0
  br label %1256

; <label>:1256                                    ; preds = %1246, %1239
  %1257 = phi float [ %1250, %1246 ], [ %1244, %1239 ]
  %1258 = phi float [ %1251, %1246 ], [ %1245, %1239 ]
  %1259 = phi float [ %1255, %1246 ], [ %1242, %1239 ]
  %1260 = phi float [ %1253, %1246 ], [ %501, %1239 ]
  %1261 = phi float [ %1248, %1246 ], [ %503, %1239 ]
  %1262 = call float @dx.op.binary.f32(i32 35, float %584, float 0.000000e+00)  ; FMax(a,b)
  %1263 = call float @dx.op.binary.f32(i32 36, float %1262, float 1.000000e+00)  ; FMin(a,b)
  %1264 = call float @dx.op.unary.f32(i32 24, float %1263)  ; Sqrt(value)
  %1265 = call float @dx.op.binary.f32(i32 35, float %587, float 0x3F847AE140000000)  ; FMax(a,b)
  %1266 = fsub fast float %585, %300
  %1267 = fsub fast float %300, %586
  %1268 = call float @dx.op.binary.f32(i32 36, float %1267, float %1266)  ; FMin(a,b)
  %1269 = fdiv fast float %1268, %1265
  %1270 = call float @dx.op.unary.f32(i32 7, float %1269)  ; Saturate(value)
  %1271 = fsub fast float %300, %1260
  %1272 = fdiv fast float %1271, %1261
  %1273 = call float @dx.op.unary.f32(i32 7, float %1272)  ; Saturate(value)
  %1274 = fsub fast float 1.000000e+00, %1273
  %1275 = fmul float %1270, %1274
  %1276 = fmul float %1275, %1275
  %1277 = fmul fast float %1264, %1241
  %1278 = fmul fast float %1277, %1276
  %1279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1280 = extractvalue %dx.types.CBufRet.f32 %1279, 2
  %1281 = extractvalue %dx.types.CBufRet.f32 %1279, 1
  %1282 = fsub fast float %1278, %1281
  %1283 = fsub fast float %1280, %1281
  %1284 = fdiv fast float %1282, %1283
  %1285 = call float @dx.op.unary.f32(i32 7, float %1284)  ; Saturate(value)
  %1286 = fmul fast float %1285, %1259
  %1287 = fcmp fast ogt float %1258, 0.000000e+00
  br i1 %1287, label %1288, label %1308, !dx.controlflow.hints !75

; <label>:1288                                    ; preds = %1256
  %1289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1290 = extractvalue %dx.types.CBufRet.f32 %1289, 0
  %1291 = extractvalue %dx.types.CBufRet.f32 %1289, 1
  %1292 = extractvalue %dx.types.CBufRet.f32 %1289, 2
  %1293 = fsub fast float %298, %1290
  %1294 = fsub fast float %299, %1291
  %1295 = fsub fast float %300, %1292
  %1296 = fmul fast float %1293, %1293
  %1297 = fmul fast float %1294, %1294
  %1298 = fadd fast float %1296, %1297
  %1299 = fmul fast float %1295, %1295
  %1300 = fadd fast float %1298, %1299
  %1301 = call float @dx.op.unary.f32(i32 24, float %1300)  ; Sqrt(value)
  %1302 = fsub fast float %1301, %1257
  %1303 = fsub fast float %1258, %1257
  %1304 = fdiv fast float %1302, %1303
  %1305 = call float @dx.op.unary.f32(i32 7, float %1304)  ; Saturate(value)
  %1306 = fmul fast float %1305, %1305
  %1307 = fmul fast float %1306, %1286
  br label %1308

; <label>:1308                                    ; preds = %1288, %1256, %1236
  %1309 = phi float [ 0.000000e+00, %1236 ], [ %1307, %1288 ], [ %1286, %1256 ]
  %1310 = fmul fast float %1309, %856
  %1311 = fadd fast float %1310, %1186
  br label %1312

; <label>:1312                                    ; preds = %1308, %1185
  %1313 = phi float [ %1311, %1308 ], [ %1186, %1185 ]
  %1314 = icmp eq i32 %845, 0
  br i1 %1314, label %1346, label %1315, !dx.controlflow.hints !76

; <label>:1315                                    ; preds = %1312
  %1316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1317 = extractvalue %dx.types.CBufRet.f32 %1316, 1
  %1318 = fsub fast float %856, %1317
  %1319 = extractvalue %dx.types.CBufRet.f32 %1316, 3
  %1320 = fmul fast float %1318, %1319
  %1321 = call float @dx.op.unary.f32(i32 7, float %1320)  ; Saturate(value)
  %1322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1323 = extractvalue %dx.types.CBufRet.f32 %1322, 3
  %1324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1325 = extractvalue %dx.types.CBufRet.f32 %1324, 2
  %1326 = fsub fast float %1325, %843
  %1327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1328 = extractvalue %dx.types.CBufRet.f32 %1327, 3
  %1329 = fmul fast float %1326, %1328
  %1330 = call float @dx.op.unary.f32(i32 7, float %1329)  ; Saturate(value)
  %1331 = fmul fast float %1330, %1323
  %1332 = extractvalue %dx.types.CBufRet.f32 %1327, 0
  %1333 = fsub fast float %301, %1332
  %1334 = extractvalue %dx.types.CBufRet.f32 %1327, 1
  %1335 = fmul fast float %1333, %1334
  %1336 = call float @dx.op.unary.f32(i32 7, float %1335)  ; Saturate(value)
  %1337 = fsub fast float 1.000000e+00, %1321
  %1338 = fmul fast float %1336, %1337
  %1339 = fadd fast float %1338, %1321
  %1340 = extractvalue %dx.types.CBufRet.f32 %1316, 0
  %1341 = fsub fast float %1331, %1340
  %1342 = fmul fast float %1341, %1339
  %1343 = fadd fast float %1342, %1340
  %1344 = fmul fast float %1343, %856
  %1345 = fadd fast float %1344, %1313
  br label %1346

; <label>:1346                                    ; preds = %1315, %1312
  %1347 = phi float [ %1345, %1315 ], [ %1313, %1312 ]
  %1348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1349 = extractvalue %dx.types.CBufRet.f32 %1348, 1
  %1350 = fcmp fast ogt float %1347, %1349
  br i1 %1350, label %1351, label %1363, !dx.controlflow.hints !77

; <label>:1351                                    ; preds = %1346
  %1352 = fmul fast float %1347, 0xBFF7154760000000
  %1353 = call float @dx.op.unary.f32(i32 21, float %1352)  ; Exp(value)
  %1354 = call float @dx.op.unary.f32(i32 7, float %1353)  ; Saturate(value)
  %1355 = icmp eq i32 %304, 0
  br i1 %1355, label %1356, label %1357, !dx.controlflow.hints !78

; <label>:1356                                    ; preds = %1351
  br label %1357

; <label>:1357                                    ; preds = %1356, %1351
  %1358 = phi i32 [ %304, %1351 ], [ 1, %1356 ]
  %1359 = phi float [ %305, %1351 ], [ %301, %1356 ]
  %1360 = fadd fast float %856, %306
  %1361 = fadd fast float %1347, %307
  %1362 = fmul fast float %1354, %297
  br label %1363

; <label>:1363                                    ; preds = %1357, %1346
  %1364 = phi float [ %1362, %1357 ], [ %297, %1346 ]
  %1365 = phi i32 [ %1358, %1357 ], [ %304, %1346 ]
  %1366 = phi float [ %1359, %1357 ], [ %305, %1346 ]
  %1367 = phi float [ %1360, %1357 ], [ %306, %1346 ]
  %1368 = phi float [ %1361, %1357 ], [ %307, %1346 ]
  %1369 = fadd fast float %856, %301
  %1370 = fmul fast float %856, %63
  %1371 = fmul fast float %856, %64
  %1372 = fmul fast float %856, %65
  %1373 = fadd fast float %1370, %298
  %1374 = fadd fast float %1371, %299
  %1375 = fadd fast float %1372, %300
  %1376 = fcmp fast olt float %1369, %268
  %1377 = extractvalue %dx.types.CBufRet.f32 %1348, 2
  %1378 = fcmp fast olt float %1377, %1364
  %1379 = and i1 %1376, %1378
  br i1 %1379, label %290, label %1380

; <label>:1380                                    ; preds = %1363
  br label %1381

; <label>:1381                                    ; preds = %1380, %261
  %1382 = phi float [ 0.000000e+00, %261 ], [ %1366, %1380 ]
  %1383 = phi float [ 0.000000e+00, %261 ], [ %1367, %1380 ]
  %1384 = phi float [ 0.000000e+00, %261 ], [ %1368, %1380 ]
  %1385 = extractvalue %dx.types.CBufRet.f32 %57, 3
  %1386 = fmul fast float %1385, %1382
  %1387 = fdiv fast float 1.000000e+00, %1383
  %1388 = fmul fast float %1387, %1384
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %18, i32 %19, i32 undef, float %1386, float %1388, float %1384, float %1386, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

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
!dx.entryPoints = !{!28}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !17, !19, !22}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !16}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 16, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 27, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture3D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 4, i32 0, !7}
!10 = !{i32 3, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 4, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 9, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.StructuredBuffer<VolumetricBBoxGpu>"* undef, !"", i32 0, i32 25, i32 1, i32 12, i32 0, !15}
!15 = !{i32 1, i32 164}
!16 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!17 = !{!18}
!18 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 7, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!19 = !{!20, !21}
!20 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!21 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!22 = !{!23, !24, !25, !26, !27}
!23 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!24 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!25 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!26 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!27 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!28 = !{void ()* @cs_fog_raymarching_air_clouds_heightmap_particles_brfog, !"cs_fog_raymarching_air_clouds_heightmap_particles_brfog", null, !4, !29}
!29 = !{i32 0, i64 272, i32 4, !30}
!30 = !{i32 8, i32 8, i32 1}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 1}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.unroll.disable"}
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
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}

