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
; shader hash: 378e8ebb64b8fc2962d0da58e83aef4e
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

define void @cs_fog_raymarching_clouds_heightmap_particles_brfog() {
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
  %136 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.i32 %136, 3
  %138 = icmp eq i32 %137, 0
  %139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %140 = extractvalue %dx.types.CBufRet.f32 %139, 2
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.f32 %141, 2
  %143 = fsub fast float %140, %49
  %144 = fadd fast float %143, %142
  br i1 %138, label %156, label %145, !dx.controlflow.hints !34

; <label>:145                                     ; preds = %132
  %146 = fsub fast float -0.000000e+00, %55
  %147 = fsub fast float -0.000000e+00, %56
  %148 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %146, float %147, float %144)  ; Dot3(ax,ay,az,bx,by,bz)
  %149 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %150 = fdiv fast float 1.000000e+00, %149
  %151 = fmul fast float %150, %148
  %152 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %146, float %147, float %143)  ; Dot3(ax,ay,az,bx,by,bz)
  %153 = fmul fast float %150, %152
  %154 = call float @dx.op.binary.f32(i32 36, float %151, float %153)  ; FMin(a,b)
  %155 = call float @dx.op.binary.f32(i32 35, float %151, float %153)  ; FMax(a,b)
  br label %189

; <label>:156                                     ; preds = %132
  %157 = fdiv fast float 1.000000e+00, %63
  %158 = fdiv fast float 1.000000e+00, %64
  %159 = fdiv fast float 1.000000e+00, %65
  %160 = extractvalue %dx.types.CBufRet.f32 %139, 0
  %161 = extractvalue %dx.types.CBufRet.f32 %139, 1
  %162 = extractvalue %dx.types.CBufRet.f32 %141, 0
  %163 = extractvalue %dx.types.CBufRet.f32 %141, 1
  %164 = fsub fast float %160, %55
  %165 = fmul fast float %164, %157
  %166 = fadd fast float %164, %162
  %167 = fmul fast float %166, %157
  %168 = call float @dx.op.binary.f32(i32 36, float %165, float %167)  ; FMin(a,b)
  %169 = call float @dx.op.binary.f32(i32 35, float %165, float %167)  ; FMax(a,b)
  %170 = fsub fast float %161, %56
  %171 = fmul fast float %170, %158
  %172 = fadd fast float %170, %163
  %173 = fmul fast float %172, %158
  %174 = call float @dx.op.binary.f32(i32 36, float %171, float %173)  ; FMin(a,b)
  %175 = call float @dx.op.binary.f32(i32 35, float %168, float %174)  ; FMax(a,b)
  %176 = call float @dx.op.binary.f32(i32 35, float %171, float %173)  ; FMax(a,b)
  %177 = call float @dx.op.binary.f32(i32 36, float %169, float %176)  ; FMin(a,b)
  %178 = fmul fast float %143, %159
  %179 = fmul fast float %144, %159
  %180 = call float @dx.op.binary.f32(i32 36, float %178, float %179)  ; FMin(a,b)
  %181 = call float @dx.op.binary.f32(i32 35, float %175, float %180)  ; FMax(a,b)
  %182 = call float @dx.op.binary.f32(i32 35, float %178, float %179)  ; FMax(a,b)
  %183 = call float @dx.op.binary.f32(i32 36, float %177, float %182)  ; FMin(a,b)
  %184 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %181)  ; FMax(a,b)
  %185 = fcmp fast ult float %183, %184
  br i1 %185, label %189, label %186, !dx.controlflow.hints !35

; <label>:186                                     ; preds = %156
  %187 = call float @dx.op.binary.f32(i32 36, float %181, float %183)  ; FMin(a,b)
  %188 = call float @dx.op.binary.f32(i32 35, float %181, float %183)  ; FMax(a,b)
  br label %189

; <label>:189                                     ; preds = %186, %156, %145
  %190 = phi float [ %154, %145 ], [ %187, %186 ], [ 0.000000e+00, %156 ]
  %191 = phi float [ %155, %145 ], [ %188, %186 ], [ 0.000000e+00, %156 ]
  %192 = fcmp fast oeq float %191, 0.000000e+00
  br i1 %192, label %196, label %193, !dx.controlflow.hints !36

; <label>:193                                     ; preds = %189
  %194 = call float @dx.op.binary.f32(i32 36, float %135, float %190)  ; FMin(a,b)
  %195 = call float @dx.op.binary.f32(i32 35, float %133, float %191)  ; FMax(a,b)
  br label %196

; <label>:196                                     ; preds = %193, %189
  %197 = phi float [ %195, %193 ], [ %133, %189 ]
  %198 = phi i32 [ 1, %193 ], [ 0, %189 ]
  %199 = phi float [ %194, %193 ], [ %135, %189 ]
  %200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = extractvalue %dx.types.CBufRet.f32 %200, 3
  %202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %203 = extractvalue %dx.types.CBufRet.f32 %202, 0
  %204 = fsub fast float -0.000000e+00, %55
  %205 = fsub fast float -0.000000e+00, %56
  %206 = fsub fast float %201, %49
  %207 = fadd fast float %206, %203
  %208 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %204, float %205, float %207)  ; Dot3(ax,ay,az,bx,by,bz)
  %209 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %210 = fdiv fast float 1.000000e+00, %209
  %211 = fmul fast float %210, %208
  %212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.f32 %212, 2
  %214 = fsub fast float %213, %49
  %215 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %204, float %205, float %214)  ; Dot3(ax,ay,az,bx,by,bz)
  %216 = fmul fast float %210, %215
  %217 = call float @dx.op.binary.f32(i32 36, float %211, float %216)  ; FMin(a,b)
  %218 = call float @dx.op.binary.f32(i32 35, float %211, float %216)  ; FMax(a,b)
  %219 = call float @dx.op.binary.f32(i32 36, float %199, float %217)  ; FMin(a,b)
  %220 = call float @dx.op.binary.f32(i32 35, float %197, float %218)  ; FMax(a,b)
  %221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.f32 %221, 2
  %223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %224 = extractvalue %dx.types.CBufRet.f32 %223, 3
  %225 = fsub fast float %222, %49
  %226 = fadd fast float %225, %224
  %227 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %204, float %205, float %226)  ; Dot3(ax,ay,az,bx,by,bz)
  %228 = fmul fast float %210, %227
  %229 = fcmp fast olt float %228, 0.000000e+00
  %230 = fcmp olt float %62, -0.000000e+00
  %231 = and i1 %230, %229
  br i1 %231, label %236, label %232, !dx.controlflow.hints !37

; <label>:232                                     ; preds = %196
  %233 = fcmp ogt float %62, -0.000000e+00
  br i1 %233, label %234, label %236, !dx.controlflow.hints !38

; <label>:234                                     ; preds = %232
  %235 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %228)  ; FMax(a,b)
  br label %236

; <label>:236                                     ; preds = %234, %232, %196
  %237 = phi float [ 0.000000e+00, %196 ], [ %235, %234 ], [ 0.000000e+00, %232 ]
  %238 = phi float [ 0.000000e+00, %196 ], [ 0x47EFFFFFE0000000, %234 ], [ %228, %232 ]
  %239 = fcmp fast oeq float %238, 0.000000e+00
  br i1 %239, label %243, label %240, !dx.controlflow.hints !39

; <label>:240                                     ; preds = %236
  %241 = call float @dx.op.binary.f32(i32 36, float %219, float %237)  ; FMin(a,b)
  %242 = call float @dx.op.binary.f32(i32 35, float %220, float %238)  ; FMax(a,b)
  br label %243

; <label>:243                                     ; preds = %240, %236
  %244 = phi i32 [ 1, %240 ], [ 0, %236 ]
  %245 = phi float [ %242, %240 ], [ %220, %236 ]
  %246 = phi float [ %241, %240 ], [ %219, %236 ]
  %247 = fdiv fast float 1.000000e+00, %63
  %248 = fdiv fast float 1.000000e+00, %64
  %249 = fdiv fast float 1.000000e+00, %65
  %250 = call float @dx.op.binary.f32(i32 36, float %58, float %245)  ; FMin(a,b)
  %251 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %246)  ; FMax(a,b)
  %252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %253 = extractvalue %dx.types.CBufRet.f32 %252, 1
  %254 = fmul fast float %37, 2.000000e+00
  %255 = fadd fast float %254, -1.000000e+00
  %256 = fmul fast float %253, %255
  %257 = fadd fast float %256, %251
  %258 = fcmp fast olt float %257, %250
  %259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %260 = extractvalue %dx.types.CBufRet.f32 %259, 2
  %261 = fcmp fast olt float %260, 1.000000e+00
  %262 = and i1 %258, %261
  br i1 %262, label %263, label %1301

; <label>:263                                     ; preds = %243
  %264 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %265 = extractvalue %dx.types.CBufRet.i32 %264, 1
  %266 = add i32 %265, -1
  %267 = fmul fast float %257, %65
  %268 = fadd fast float %267, %49
  %269 = fmul fast float %257, %64
  %270 = fadd fast float %269, %56
  %271 = fmul fast float %257, %63
  %272 = fadd fast float %271, %55
  br label %273

; <label>:273                                     ; preds = %1283, %263
  %274 = phi i32 [ %810, %1283 ], [ undef, %263 ]
  %275 = phi float [ %811, %1283 ], [ undef, %263 ]
  %276 = phi float [ %567, %1283 ], [ undef, %263 ]
  %277 = phi float [ %568, %1283 ], [ undef, %263 ]
  %278 = phi float [ %569, %1283 ], [ undef, %263 ]
  %279 = phi float [ %570, %1283 ], [ undef, %263 ]
  %280 = phi float [ %1284, %1283 ], [ 1.000000e+00, %263 ]
  %281 = phi float [ %1293, %1283 ], [ %272, %263 ]
  %282 = phi float [ %1294, %1283 ], [ %270, %263 ]
  %283 = phi float [ %1295, %1283 ], [ %268, %263 ]
  %284 = phi float [ %1289, %1283 ], [ %257, %263 ]
  %285 = phi i32 [ %572, %1283 ], [ 10, %263 ]
  %286 = phi i32 [ %463, %1283 ], [ %266, %263 ]
  %287 = phi i32 [ %1285, %1283 ], [ 0, %263 ]
  %288 = phi float [ %1286, %1283 ], [ 0.000000e+00, %263 ]
  %289 = phi float [ %1287, %1283 ], [ 0.000000e+00, %263 ]
  %290 = phi float [ %1288, %1283 ], [ 0.000000e+00, %263 ]
  %291 = fsub fast float -0.000000e+00, %282
  %292 = fsub fast float -0.000000e+00, %281
  %293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %294 = extractvalue %dx.types.CBufRet.f32 %293, 1
  %295 = icmp eq i32 %134, 0
  br i1 %295, label %461, label %296, !dx.controlflow.hints !40

; <label>:296                                     ; preds = %273
  %297 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.i32 %297, 1
  %299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %300 = extractvalue %dx.types.CBufRet.f32 %299, 1
  %301 = fcmp fast ogt float %300, %284
  br i1 %301, label %302, label %304, !dx.controlflow.hints !41

; <label>:302                                     ; preds = %296
  %303 = fsub fast float %300, %284
  br label %451

; <label>:304                                     ; preds = %296
  %305 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %306 = extractvalue %dx.types.CBufRet.i32 %305, 3
  %307 = icmp eq i32 %306, 0
  %308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %309 = extractvalue %dx.types.CBufRet.f32 %308, 2
  %310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %311 = extractvalue %dx.types.CBufRet.f32 %310, 2
  %312 = fsub fast float %309, %283
  %313 = fadd fast float %312, %311
  %314 = fsub fast float 0xC7EFFFFFE0000000, %283
  br i1 %307, label %322, label %315, !dx.controlflow.hints !31

; <label>:315                                     ; preds = %304
  %316 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %292, float %291, float %313)  ; Dot3(ax,ay,az,bx,by,bz)
  %317 = fmul fast float %210, %316
  %318 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %292, float %291, float %314)  ; Dot3(ax,ay,az,bx,by,bz)
  %319 = fmul fast float %210, %318
  %320 = call float @dx.op.binary.f32(i32 36, float %317, float %319)  ; FMin(a,b)
  %321 = call float @dx.op.binary.f32(i32 35, float %317, float %319)  ; FMax(a,b)
  br label %352

; <label>:322                                     ; preds = %304
  %323 = extractvalue %dx.types.CBufRet.f32 %308, 0
  %324 = extractvalue %dx.types.CBufRet.f32 %308, 1
  %325 = extractvalue %dx.types.CBufRet.f32 %310, 0
  %326 = extractvalue %dx.types.CBufRet.f32 %310, 1
  %327 = fsub fast float %323, %281
  %328 = fmul fast float %247, %327
  %329 = fadd fast float %327, %325
  %330 = fmul fast float %329, %247
  %331 = call float @dx.op.binary.f32(i32 36, float %328, float %330)  ; FMin(a,b)
  %332 = call float @dx.op.binary.f32(i32 35, float %328, float %330)  ; FMax(a,b)
  %333 = fsub fast float %324, %282
  %334 = fmul fast float %248, %333
  %335 = fadd fast float %333, %326
  %336 = fmul fast float %335, %248
  %337 = call float @dx.op.binary.f32(i32 36, float %334, float %336)  ; FMin(a,b)
  %338 = call float @dx.op.binary.f32(i32 35, float %331, float %337)  ; FMax(a,b)
  %339 = call float @dx.op.binary.f32(i32 35, float %334, float %336)  ; FMax(a,b)
  %340 = call float @dx.op.binary.f32(i32 36, float %332, float %339)  ; FMin(a,b)
  %341 = fmul fast float %249, %314
  %342 = fmul fast float %249, %313
  %343 = call float @dx.op.binary.f32(i32 36, float %341, float %342)  ; FMin(a,b)
  %344 = call float @dx.op.binary.f32(i32 35, float %338, float %343)  ; FMax(a,b)
  %345 = call float @dx.op.binary.f32(i32 35, float %341, float %342)  ; FMax(a,b)
  %346 = call float @dx.op.binary.f32(i32 36, float %340, float %345)  ; FMin(a,b)
  %347 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %344)  ; FMax(a,b)
  %348 = fcmp fast ult float %346, %347
  br i1 %348, label %352, label %349, !dx.controlflow.hints !32

; <label>:349                                     ; preds = %322
  %350 = call float @dx.op.binary.f32(i32 36, float %344, float %346)  ; FMin(a,b)
  %351 = call float @dx.op.binary.f32(i32 35, float %344, float %346)  ; FMax(a,b)
  br label %352

; <label>:352                                     ; preds = %349, %322, %315
  %353 = phi float [ %320, %315 ], [ %350, %349 ], [ 0.000000e+00, %322 ]
  %354 = phi float [ %321, %315 ], [ %351, %349 ], [ 0.000000e+00, %322 ]
  %355 = fcmp fast ogt float %353, 0.000000e+00
  br i1 %355, label %451, label %356, !dx.controlflow.hints !42

; <label>:356                                     ; preds = %352
  %357 = fcmp fast ugt float %354, 0.000000e+00
  br i1 %357, label %358, label %451, !dx.controlflow.hints !43

; <label>:358                                     ; preds = %356
  %359 = icmp sgt i32 %286, 0
  br i1 %359, label %360, label %445

; <label>:360                                     ; preds = %358
  br label %361

; <label>:361                                     ; preds = %441, %360
  %362 = phi i32 [ %442, %441 ], [ %286, %360 ]
  %363 = sitofp i32 %362 to float
  %364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %365 = extractvalue %dx.types.CBufRet.f32 %364, 0
  %366 = extractvalue %dx.types.CBufRet.f32 %364, 1
  %367 = fsub fast float %281, %365
  %368 = fsub fast float %282, %366
  %369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %370 = extractvalue %dx.types.CBufRet.f32 %369, 0
  %371 = extractvalue %dx.types.CBufRet.f32 %369, 1
  %372 = fmul fast float %367, %370
  %373 = fmul fast float %368, %371
  %374 = fsub fast float 1.000000e+00, %373
  %375 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %376 = extractvalue %dx.types.CBufRet.i32 %375, 3
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %384, label %378, !dx.controlflow.hints !44

; <label>:378                                     ; preds = %361
  %379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %372, float %374, float undef, float undef, i32 0, i32 0, i32 undef, float %363)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %380 = extractvalue %dx.types.ResRet.f32 %379, 0
  %381 = extractvalue %dx.types.ResRet.f32 %379, 1
  %382 = extractvalue %dx.types.ResRet.f32 %379, 2
  %383 = extractvalue %dx.types.ResRet.f32 %379, 3
  br label %390

; <label>:384                                     ; preds = %361
  %385 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %372, float %374, float undef, float undef, i32 0, i32 0, i32 undef, float %363)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %386 = extractvalue %dx.types.ResRet.f32 %385, 0
  %387 = extractvalue %dx.types.ResRet.f32 %385, 1
  %388 = extractvalue %dx.types.ResRet.f32 %385, 2
  %389 = extractvalue %dx.types.ResRet.f32 %385, 3
  br label %390

; <label>:390                                     ; preds = %384, %378
  %391 = phi float [ %380, %378 ], [ %386, %384 ]
  %392 = phi float [ %381, %378 ], [ %387, %384 ]
  %393 = phi float [ %382, %378 ], [ %388, %384 ]
  %394 = phi float [ %383, %378 ], [ %389, %384 ]
  %395 = extractvalue %dx.types.CBufRet.f32 %369, 3
  %396 = fmul fast float %395, %391
  %397 = extractvalue %dx.types.CBufRet.f32 %364, 2
  %398 = fadd fast float %396, %397
  %399 = fmul fast float %395, %392
  %400 = fadd fast float %399, %397
  %401 = fmul fast float %395, %393
  %402 = fadd fast float %401, %397
  %403 = and i32 %362, 31
  %404 = shl i32 1, %403
  %405 = uitofp i32 %404 to float
  %406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %407 = extractvalue %dx.types.CBufRet.f32 %406, 3
  %408 = fdiv fast float 1.000000e+00, %407
  %409 = fmul fast float %408, %405
  %410 = fmul fast float %409, %65
  %411 = fadd fast float %410, %283
  %412 = fcmp fast oeq float %394, 0.000000e+00
  %413 = fcmp fast ogt float %283, %400
  %414 = fcmp fast ogt float %411, %400
  %415 = and i1 %413, %414
  %416 = or i1 %412, %415
  br i1 %416, label %417, label %421, !dx.controlflow.hints !45

; <label>:417                                     ; preds = %390
  %418 = add nsw i32 %362, 1
  %419 = add nsw i32 %298, -1
  %420 = call i32 @dx.op.binary.i32(i32 38, i32 %418, i32 %419)  ; IMin(a,b)
  br label %451

; <label>:421                                     ; preds = %390
  %422 = fcmp fast olt float %283, %402
  %423 = fcmp fast olt float %411, %402
  %424 = and i1 %422, %423
  br i1 %424, label %425, label %429, !dx.controlflow.hints !46

; <label>:425                                     ; preds = %421
  %426 = add nsw i32 %362, 1
  %427 = add nsw i32 %298, -1
  %428 = call i32 @dx.op.binary.i32(i32 38, i32 %426, i32 %427)  ; IMin(a,b)
  br label %451

; <label>:429                                     ; preds = %421
  %430 = fcmp fast olt float %283, %398
  %431 = fcmp fast olt float %411, %398
  %432 = and i1 %430, %431
  br i1 %432, label %433, label %441, !dx.controlflow.hints !47

; <label>:433                                     ; preds = %429
  %434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %435 = extractvalue %dx.types.CBufRet.f32 %434, 3
  %436 = extractvalue %dx.types.CBufRet.f32 %369, 2
  %437 = fcmp fast une float %435, %436
  br i1 %437, label %438, label %445, !dx.controlflow.hints !48

; <label>:438                                     ; preds = %433
  %439 = fsub fast float %283, %402
  %440 = call float @dx.op.binary.f32(i32 36, float %409, float %439)  ; FMin(a,b)
  br label %445

; <label>:441                                     ; preds = %429
  %442 = add nsw i32 %362, -1
  %443 = icmp sgt i32 %362, 1
  br i1 %443, label %361, label %444

; <label>:444                                     ; preds = %441
  br label %445

; <label>:445                                     ; preds = %444, %438, %433, %358
  %446 = phi float [ %440, %438 ], [ %409, %433 ], [ 0.000000e+00, %358 ], [ 0.000000e+00, %444 ]
  %447 = phi i32 [ %362, %438 ], [ %362, %433 ], [ %286, %358 ], [ %442, %444 ]
  %448 = add nsw i32 %447, 1
  %449 = add nsw i32 %298, -1
  %450 = call i32 @dx.op.binary.i32(i32 38, i32 %448, i32 %449)  ; IMin(a,b)
  br label %451

; <label>:451                                     ; preds = %445, %425, %417, %356, %352, %302
  %452 = phi float [ %303, %302 ], [ %409, %417 ], [ %409, %425 ], [ %446, %445 ], [ 0x47EFFFFFE0000000, %356 ], [ %353, %352 ]
  %453 = phi i32 [ %134, %302 ], [ %134, %417 ], [ %134, %425 ], [ %134, %445 ], [ 0, %356 ], [ %134, %352 ]
  %454 = phi i32 [ %286, %302 ], [ %420, %417 ], [ %428, %425 ], [ %450, %445 ], [ %286, %356 ], [ %286, %352 ]
  %455 = icmp ne i32 %453, 0
  %456 = zext i1 %455 to i32
  %457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %458 = extractvalue %dx.types.CBufRet.f32 %457, 2
  %459 = call float @dx.op.binary.f32(i32 35, float %452, float %458)  ; FMax(a,b)
  %460 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %459)  ; FMin(a,b)
  br label %461

; <label>:461                                     ; preds = %451, %273
  %462 = phi float [ %460, %451 ], [ 0x47EFFFFFE0000000, %273 ]
  %463 = phi i32 [ %454, %451 ], [ %286, %273 ]
  %464 = phi i32 [ %456, %451 ], [ 0, %273 ]
  %465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %466 = extractvalue %dx.types.CBufRet.f32 %465, 0
  %467 = extractvalue %dx.types.CBufRet.f32 %465, 1
  %468 = fsub fast float %281, %466
  %469 = fsub fast float %282, %467
  %470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %471 = extractvalue %dx.types.CBufRet.f32 %470, 2
  %472 = extractvalue %dx.types.CBufRet.f32 %470, 3
  %473 = fmul fast float %468, %471
  %474 = fmul fast float %469, %472
  %475 = call float @dx.op.binary.f32(i32 36, float %473, float %474)  ; FMin(a,b)
  %476 = fcmp fast olt float %475, 0.000000e+00
  %477 = call float @dx.op.binary.f32(i32 35, float %473, float %474)  ; FMax(a,b)
  %478 = fcmp fast ogt float %477, 1.000000e+00
  %479 = or i1 %476, %478
  %480 = extractvalue %dx.types.CBufRet.f32 %465, 2
  %481 = fcmp fast olt float %283, %480
  %482 = or i1 %479, %481
  %483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %484 = extractvalue %dx.types.CBufRet.f32 %483, 3
  %485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %486 = extractvalue %dx.types.CBufRet.f32 %485, 0
  %487 = fadd fast float %486, %484
  %488 = fcmp fast ogt float %283, %487
  %489 = or i1 %482, %488
  br i1 %489, label %490, label %519, !dx.controlflow.hints !49

; <label>:490                                     ; preds = %461
  %491 = extractvalue %dx.types.CBufRet.f32 %470, 0
  %492 = extractvalue %dx.types.CBufRet.f32 %470, 1
  %493 = fsub fast float %466, %281
  %494 = fmul fast float %493, %247
  %495 = fadd fast float %493, %491
  %496 = fmul fast float %495, %247
  %497 = call float @dx.op.binary.f32(i32 36, float %494, float %496)  ; FMin(a,b)
  %498 = call float @dx.op.binary.f32(i32 35, float %494, float %496)  ; FMax(a,b)
  %499 = fsub fast float %467, %282
  %500 = fmul fast float %499, %248
  %501 = fadd fast float %499, %492
  %502 = fmul fast float %501, %248
  %503 = call float @dx.op.binary.f32(i32 36, float %500, float %502)  ; FMin(a,b)
  %504 = call float @dx.op.binary.f32(i32 35, float %497, float %503)  ; FMax(a,b)
  %505 = call float @dx.op.binary.f32(i32 35, float %500, float %502)  ; FMax(a,b)
  %506 = call float @dx.op.binary.f32(i32 36, float %498, float %505)  ; FMin(a,b)
  %507 = fsub fast float %480, %283
  %508 = fmul fast float %507, %249
  %509 = fsub fast float %484, %283
  %510 = fadd fast float %509, %486
  %511 = fmul fast float %510, %249
  %512 = call float @dx.op.binary.f32(i32 36, float %508, float %511)  ; FMin(a,b)
  %513 = call float @dx.op.binary.f32(i32 35, float %504, float %512)  ; FMax(a,b)
  %514 = call float @dx.op.binary.f32(i32 35, float %508, float %511)  ; FMax(a,b)
  %515 = call float @dx.op.binary.f32(i32 36, float %506, float %514)  ; FMin(a,b)
  %516 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %513)  ; FMax(a,b)
  %517 = fcmp fast oge float %515, %516
  %518 = select i1 %517, float %513, float 1.000000e+07
  br label %565

; <label>:519                                     ; preds = %461
  %520 = fsub fast float 1.000000e+00, %474
  %521 = icmp eq i32 %285, 0
  br i1 %521, label %550, label %522

; <label>:522                                     ; preds = %519
  br label %523

; <label>:523                                     ; preds = %546, %522
  %524 = phi i32 [ %547, %546 ], [ %285, %522 ]
  %525 = uitofp i32 %524 to float
  %526 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %15, float %473, float %520, float undef, float undef, i32 0, i32 0, i32 undef, float %525)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %527 = extractvalue %dx.types.ResRet.f32 %526, 0
  %528 = extractvalue %dx.types.ResRet.f32 %526, 1
  %529 = extractvalue %dx.types.ResRet.f32 %526, 2
  %530 = fcmp fast oeq float %527, 0.000000e+00
  %531 = fcmp ule float %283, %529
  %532 = fcmp uge float %283, %528
  %533 = or i1 %532, %531
  %534 = or i1 %530, %533
  br i1 %534, label %535, label %546, !dx.controlflow.hints !50

; <label>:535                                     ; preds = %523
  %536 = extractvalue %dx.types.ResRet.f32 %526, 3
  %537 = extractvalue %dx.types.CBufRet.f32 %470, 0
  %538 = and i32 %524, 31
  %539 = lshr i32 1024, %538
  %540 = uitofp i32 %539 to float
  %541 = fdiv fast float %537, %540
  %542 = add i32 %524, 1
  %543 = uitofp i32 %542 to float
  %544 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %543)  ; FMin(a,b)
  %545 = fptosi float %544 to i32
  br label %565

; <label>:546                                     ; preds = %523
  %547 = add i32 %524, -1
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %549, label %523, !llvm.loop !51

; <label>:549                                     ; preds = %546
  br label %550

; <label>:550                                     ; preds = %549, %519
  %551 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %14, float %473, float %520, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %552 = extractvalue %dx.types.ResRet.f32 %551, 0
  %553 = extractvalue %dx.types.ResRet.f32 %551, 1
  %554 = extractvalue %dx.types.ResRet.f32 %551, 2
  %555 = extractvalue %dx.types.ResRet.f32 %551, 3
  %556 = extractvalue %dx.types.CBufRet.f32 %470, 0
  %557 = fmul fast float %556, 9.765625e-04
  %558 = fcmp fast oeq float %552, 0.000000e+00
  %559 = fcmp ule float %283, %554
  %560 = fcmp uge float %283, %553
  %561 = or i1 %560, %559
  %562 = or i1 %558, %561
  %563 = zext i1 %562 to i32
  %564 = xor i32 %563, 1
  br label %565

; <label>:565                                     ; preds = %550, %535, %490
  %566 = phi float [ %518, %490 ], [ %541, %535 ], [ %557, %550 ]
  %567 = phi float [ %276, %490 ], [ %527, %535 ], [ %552, %550 ]
  %568 = phi float [ %277, %490 ], [ %528, %535 ], [ %553, %550 ]
  %569 = phi float [ %278, %490 ], [ %529, %535 ], [ %554, %550 ]
  %570 = phi float [ %279, %490 ], [ %536, %535 ], [ %555, %550 ]
  %571 = phi i32 [ 0, %490 ], [ 0, %535 ], [ %564, %550 ]
  %572 = phi i32 [ 10, %490 ], [ %545, %535 ], [ 1, %550 ]
  %573 = icmp eq i32 %571, 0
  %574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %575 = extractvalue %dx.types.CBufRet.f32 %574, 2
  %576 = call float @dx.op.binary.f32(i32 35, float %566, float %575)  ; FMax(a,b)
  %577 = call float @dx.op.binary.f32(i32 36, float %462, float %576)  ; FMin(a,b)
  %578 = icmp eq i32 %198, 0
  br i1 %578, label %634, label %579, !dx.controlflow.hints !53

; <label>:579                                     ; preds = %565
  %580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %581 = extractvalue %dx.types.CBufRet.f32 %580, 0
  %582 = extractvalue %dx.types.CBufRet.f32 %580, 1
  %583 = extractvalue %dx.types.CBufRet.f32 %580, 2
  %584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %585 = extractvalue %dx.types.CBufRet.f32 %584, 0
  %586 = extractvalue %dx.types.CBufRet.f32 %584, 1
  %587 = extractvalue %dx.types.CBufRet.f32 %584, 2
  %588 = fsub fast float %281, %585
  %589 = fsub fast float %282, %586
  %590 = fsub fast float %283, %587
  %591 = fmul fast float %588, %581
  %592 = fmul fast float %589, %582
  %593 = fmul fast float %590, %583
  %594 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %595 = extractvalue %dx.types.CBufRet.i32 %594, 3
  %596 = icmp eq i32 %595, 0
  br i1 %596, label %600, label %597, !dx.controlflow.hints !54

; <label>:597                                     ; preds = %579
  %598 = call float @dx.op.unary.f32(i32 22, float %591)  ; Frc(value)
  %599 = call float @dx.op.unary.f32(i32 22, float %592)  ; Frc(value)
  br label %600

; <label>:600                                     ; preds = %597, %579
  %601 = phi float [ %598, %597 ], [ %591, %579 ]
  %602 = phi float [ %599, %597 ], [ %592, %579 ]
  %603 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %12, float %601, float %602, float %593, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %604 = extractvalue %dx.types.ResRet.f32 %603, 0
  %605 = fmul fast float %604, 2.000000e+00
  %606 = fadd fast float %605, -1.000000e+00
  %607 = extractvalue %dx.types.CBufRet.f32 %580, 3
  %608 = fmul fast float %606, %607
  %609 = fcmp fast olt float %608, 0.000000e+00
  %610 = fcmp fast oge float %593, 0.000000e+00
  %611 = fcmp fast ole float %593, 1.000000e+00
  br i1 %596, label %614, label %612, !dx.controlflow.hints !55

; <label>:612                                     ; preds = %600
  %613 = and i1 %610, %611
  br label %624

; <label>:614                                     ; preds = %600
  %615 = fcmp fast oge float %591, 0.000000e+00
  %616 = fcmp fast oge float %592, 0.000000e+00
  %617 = and i1 %615, %616
  %618 = and i1 %610, %617
  %619 = fcmp fast ole float %591, 1.000000e+00
  %620 = fcmp fast ole float %592, 1.000000e+00
  %621 = and i1 %619, %620
  %622 = and i1 %611, %621
  %623 = and i1 %618, %622
  br label %624

; <label>:624                                     ; preds = %614, %612
  %625 = phi i1 [ %613, %612 ], [ %623, %614 ]
  %626 = and i1 %609, %625
  %627 = call float @dx.op.unary.f32(i32 6, float %608)  ; FAbs(value)
  %628 = extractvalue %dx.types.CBufRet.f32 %574, 1
  %629 = extractvalue %dx.types.CBufRet.f32 %574, 0
  %630 = call float @dx.op.binary.f32(i32 35, float %627, float %629)  ; FMax(a,b)
  %631 = select i1 %626, float %628, float %630
  %632 = zext i1 %626 to i32
  %633 = call float @dx.op.binary.f32(i32 36, float %577, float %631)  ; FMin(a,b)
  br label %634

; <label>:634                                     ; preds = %624, %565
  %635 = phi float [ %633, %624 ], [ %577, %565 ]
  %636 = phi i32 [ %632, %624 ], [ 0, %565 ]
  %637 = icmp eq i32 %244, 0
  br i1 %637, label %809, label %638, !dx.controlflow.hints !56

; <label>:638                                     ; preds = %634
  %639 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %640 = extractvalue %dx.types.CBufRet.i32 %639, 1
  %641 = and i32 %640, 1
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %643, label %800, !dx.controlflow.hints !57

; <label>:643                                     ; preds = %638
  %644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %645 = extractvalue %dx.types.CBufRet.f32 %644, 2
  %646 = extractvalue %dx.types.CBufRet.f32 %644, 3
  %647 = fmul fast float %645, %281
  %648 = fmul fast float %646, %282
  %649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %650 = extractvalue %dx.types.CBufRet.f32 %649, 0
  %651 = extractvalue %dx.types.CBufRet.f32 %649, 1
  %652 = fadd fast float %647, %650
  %653 = fadd fast float %648, %651
  %654 = call float @dx.op.unary.f32(i32 7, float %652)  ; Saturate(value)
  %655 = call float @dx.op.unary.f32(i32 7, float %653)  ; Saturate(value)
  %656 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %14, float %654, float %655, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %657 = extractvalue %dx.types.ResRet.f32 %656, 0
  %658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %659 = extractvalue %dx.types.CBufRet.f32 %658, 0
  %660 = fmul fast float %659, %657
  %661 = fsub fast float %652, %654
  %662 = fsub fast float %653, %655
  %663 = extractvalue %dx.types.CBufRet.f32 %644, 0
  %664 = extractvalue %dx.types.CBufRet.f32 %644, 1
  %665 = fmul fast float %663, %661
  %666 = fmul fast float %664, %662
  %667 = fmul fast float %665, %665
  %668 = fmul fast float %666, %666
  %669 = fadd fast float %667, %668
  %670 = call float @dx.op.unary.f32(i32 24, float %669)  ; Sqrt(value)
  %671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %672 = extractvalue %dx.types.CBufRet.f32 %671, 3
  %673 = fmul fast float %672, %670
  %674 = call float @dx.op.unary.f32(i32 7, float %673)  ; Saturate(value)
  %675 = extractvalue %dx.types.CBufRet.f32 %671, 2
  %676 = fsub fast float %675, %660
  %677 = fmul fast float %676, %674
  %678 = extractvalue %dx.types.CBufRet.f32 %658, 1
  %679 = fsub fast float %283, %660
  %680 = fsub fast float %679, %678
  %681 = fsub fast float %680, %677
  %682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %683 = extractvalue %dx.types.CBufRet.f32 %682, 2
  %684 = fsub fast float %681, %683
  %685 = fcmp fast olt float %684, 0.000000e+00
  %686 = call float @dx.op.unary.f32(i32 6, float %684)  ; FAbs(value)
  %687 = extractvalue %dx.types.CBufRet.i32 %639, 0
  %688 = icmp eq i32 %687, 0
  br i1 %688, label %742, label %689

; <label>:689                                     ; preds = %643
  br label %690

; <label>:690                                     ; preds = %729, %689
  %691 = phi i32 [ %735, %729 ], [ 1, %689 ]
  %692 = phi float [ %737, %729 ], [ 0x47EFFFFFE0000000, %689 ]
  %693 = phi i32 [ %738, %729 ], [ 0, %689 ]
  %694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %695 = extractvalue %dx.types.CBufRet.f32 %694, 1
  %696 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %697 = extractvalue %dx.types.CBufRet.i32 %696, 1
  %698 = and i32 %697, 8
  %699 = icmp eq i32 %698, 0
  %700 = fcmp fast ogt float %695, %681
  %701 = or i1 %700, %699
  %702 = add i32 %693, 171
  %703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %702)  ; CBufferLoadLegacy(handle,regIndex)
  %704 = extractvalue %dx.types.CBufRet.f32 %703, 0
  %705 = extractvalue %dx.types.CBufRet.f32 %703, 1
  %706 = extractvalue %dx.types.CBufRet.f32 %703, 2
  br i1 %701, label %707, label %713, !dx.controlflow.hints !58

; <label>:707                                     ; preds = %690
  %708 = fsub fast float %704, %281
  %709 = fsub fast float %705, %282
  %710 = fmul fast float %708, %708
  %711 = fmul fast float %709, %709
  %712 = fadd fast float %710, %711
  br label %729

; <label>:713                                     ; preds = %690
  %714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %715 = extractvalue %dx.types.CBufRet.f32 %714, 2
  %716 = extractvalue %dx.types.CBufRet.f32 %694, 2
  %717 = fmul fast float %716, %715
  %718 = fsub fast float %717, %695
  %719 = fdiv fast float %706, %718
  %720 = fsub fast float %281, %704
  %721 = fsub fast float %282, %705
  %722 = fsub fast float %681, %695
  %723 = fmul fast float %719, %722
  %724 = fmul fast float %720, %720
  %725 = fmul fast float %721, %721
  %726 = fadd fast float %724, %725
  %727 = fmul fast float %723, %723
  %728 = fadd fast float %726, %727
  br label %729

; <label>:729                                     ; preds = %713, %707
  %730 = phi float [ %712, %707 ], [ %728, %713 ]
  %731 = call float @dx.op.unary.f32(i32 24, float %730)  ; Sqrt(value)
  %732 = fsub float %706, %731
  %733 = fcmp fast olt float %732, 0.000000e+00
  %734 = zext i1 %733 to i32
  %735 = and i32 %734, %691
  %736 = call float @dx.op.unary.f32(i32 6, float %732)  ; FAbs(value)
  %737 = call float @dx.op.binary.f32(i32 36, float %692, float %736)  ; FMin(a,b)
  %738 = add i32 %693, 1
  %739 = extractvalue %dx.types.CBufRet.i32 %696, 0
  %740 = icmp ult i32 %738, %739
  br i1 %740, label %690, label %741

; <label>:741                                     ; preds = %729
  br label %742

; <label>:742                                     ; preds = %741, %643
  %743 = phi i32 [ 1, %643 ], [ %735, %741 ]
  %744 = phi float [ 0x47EFFFFFE0000000, %643 ], [ %737, %741 ]
  br label %745

; <label>:745                                     ; preds = %745, %742
  %746 = phi i32 [ %743, %742 ], [ %785, %745 ]
  %747 = phi float [ 0x47EFFFFFE0000000, %742 ], [ %787, %745 ]
  %748 = phi i32 [ 0, %742 ], [ %788, %745 ]
  %749 = add nuw nsw i32 %748, 191
  %750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %749)  ; CBufferLoadLegacy(handle,regIndex)
  %751 = extractvalue %dx.types.CBufRet.f32 %750, 0
  %752 = extractvalue %dx.types.CBufRet.f32 %750, 1
  %753 = extractvalue %dx.types.CBufRet.f32 %750, 2
  %754 = add nuw nsw i32 %748, 195
  %755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %754)  ; CBufferLoadLegacy(handle,regIndex)
  %756 = extractvalue %dx.types.CBufRet.f32 %755, 0
  %757 = extractvalue %dx.types.CBufRet.f32 %755, 1
  %758 = extractvalue %dx.types.CBufRet.f32 %755, 2
  %759 = fsub fast float %281, %751
  %760 = fsub fast float %282, %752
  %761 = fsub fast float %681, %753
  %762 = call float @dx.op.unary.f32(i32 6, float %759)  ; FAbs(value)
  %763 = call float @dx.op.unary.f32(i32 6, float %760)  ; FAbs(value)
  %764 = call float @dx.op.unary.f32(i32 6, float %761)  ; FAbs(value)
  %765 = fsub fast float %762, %756
  %766 = fsub fast float %763, %757
  %767 = fsub fast float %764, %758
  %768 = call float @dx.op.binary.f32(i32 35, float %765, float 0.000000e+00)  ; FMax(a,b)
  %769 = call float @dx.op.binary.f32(i32 35, float %766, float 0.000000e+00)  ; FMax(a,b)
  %770 = call float @dx.op.binary.f32(i32 35, float %767, float 0.000000e+00)  ; FMax(a,b)
  %771 = fmul fast float %768, %768
  %772 = fmul fast float %769, %769
  %773 = fadd fast float %772, %771
  %774 = fmul fast float %770, %770
  %775 = fadd fast float %773, %774
  %776 = call float @dx.op.unary.f32(i32 24, float %775)  ; Sqrt(value)
  %777 = call float @dx.op.binary.f32(i32 35, float %766, float %767)  ; FMax(a,b)
  %778 = call float @dx.op.binary.f32(i32 35, float %765, float %777)  ; FMax(a,b)
  %779 = call float @dx.op.binary.f32(i32 36, float %778, float 0.000000e+00)  ; FMin(a,b)
  %780 = fadd fast float %779, %776
  %781 = fsub fast float -0.000000e+00, %780
  %782 = fcmp ogt float %780, -0.000000e+00
  %783 = icmp ne i32 %746, 0
  %784 = and i1 %783, %782
  %785 = zext i1 %784 to i32
  %786 = call float @dx.op.unary.f32(i32 6, float %781)  ; FAbs(value)
  %787 = call float @dx.op.binary.f32(i32 36, float %747, float %786)  ; FMin(a,b)
  %788 = add nuw nsw i32 %748, 1
  %789 = icmp eq i32 %788, 4
  br i1 %789, label %790, label %745

; <label>:790                                     ; preds = %745
  %791 = call float @dx.op.binary.f32(i32 36, float %686, float %787)  ; FMin(a,b)
  %792 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %793 = extractvalue %dx.types.CBufRet.i32 %792, 1
  %794 = and i32 %793, 2
  %795 = icmp ne i32 %794, 0
  %796 = xor i1 %784, %795
  %797 = call float @dx.op.binary.f32(i32 36, float %791, float %744)  ; FMin(a,b)
  %798 = and i1 %796, %685
  %799 = zext i1 %798 to i32
  br label %800

; <label>:800                                     ; preds = %790, %638
  %801 = phi i32 [ %274, %638 ], [ %799, %790 ]
  %802 = phi float [ 0.000000e+00, %638 ], [ %797, %790 ]
  %803 = phi float [ %283, %638 ], [ %681, %790 ]
  %804 = icmp ne i32 %801, 0
  %805 = extractvalue %dx.types.CBufRet.f32 %574, 3
  %806 = call float @dx.op.binary.f32(i32 35, float %802, float %805)  ; FMax(a,b)
  %807 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %806)  ; FMin(a,b)
  %808 = zext i1 %804 to i32
  br label %809

; <label>:809                                     ; preds = %800, %634
  %810 = phi i32 [ %801, %800 ], [ %274, %634 ]
  %811 = phi float [ %803, %800 ], [ %275, %634 ]
  %812 = phi float [ %807, %800 ], [ 0x47EFFFFFE0000000, %634 ]
  %813 = phi i32 [ %808, %800 ], [ 0, %634 ]
  %814 = extractvalue %dx.types.CBufRet.f32 %293, 2
  %815 = fmul fast float %814, %284
  %816 = call float @dx.op.unary.f32(i32 23, float %815)  ; Log(value)
  %817 = fmul fast float %816, 0x3FE62E4300000000
  %818 = call float @dx.op.binary.f32(i32 35, float %817, float 1.000000e+00)  ; FMax(a,b)
  %819 = fmul fast float %818, %812
  %820 = call float @dx.op.binary.f32(i32 36, float %819, float %635)  ; FMin(a,b)
  %821 = call float @dx.op.binary.f32(i32 35, float %820, float %294)  ; FMax(a,b)
  %822 = fsub fast float %250, %284
  %823 = fadd fast float %822, 0x3F1A36E2E0000000
  %824 = call float @dx.op.binary.f32(i32 36, float %823, float %821)  ; FMin(a,b)
  %825 = icmp eq i32 %464, 0
  br i1 %825, label %922, label %826, !dx.controlflow.hints !59

; <label>:826                                     ; preds = %809
  %827 = fcmp fast olt float %823, %821
  %828 = fmul fast float %36, %65
  %829 = fmul fast float %828, %824
  %830 = fadd fast float %829, %283
  %831 = fmul fast float %37, %65
  %832 = fmul fast float %831, %824
  %833 = fadd fast float %832, %283
  %834 = fmul fast float %38, %65
  %835 = fmul fast float %834, %824
  %836 = fadd fast float %835, %283
  br i1 %827, label %837, label %842, !dx.controlflow.hints !60

; <label>:837                                     ; preds = %826
  %838 = fmul fast float %824, %63
  %839 = fmul fast float %824, %64
  %840 = fadd fast float %838, %281
  %841 = fadd fast float %839, %282
  br label %842

; <label>:842                                     ; preds = %837, %826
  %843 = phi float [ %840, %837 ], [ %281, %826 ]
  %844 = phi float [ %841, %837 ], [ %282, %826 ]
  %845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %846 = extractvalue %dx.types.CBufRet.f32 %845, 0
  %847 = extractvalue %dx.types.CBufRet.f32 %845, 1
  %848 = fsub fast float %843, %846
  %849 = fsub fast float %844, %847
  %850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %851 = extractvalue %dx.types.CBufRet.f32 %850, 0
  %852 = extractvalue %dx.types.CBufRet.f32 %850, 1
  %853 = fmul fast float %848, %851
  %854 = fmul fast float %849, %852
  %855 = fsub fast float 1.000000e+00, %854
  %856 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %857 = extractvalue %dx.types.CBufRet.i32 %856, 3
  %858 = icmp eq i32 %857, 0
  br i1 %858, label %865, label %859, !dx.controlflow.hints !44

; <label>:859                                     ; preds = %842
  %860 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %853, float %855, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %861 = extractvalue %dx.types.ResRet.f32 %860, 0
  %862 = extractvalue %dx.types.ResRet.f32 %860, 1
  %863 = extractvalue %dx.types.ResRet.f32 %860, 2
  %864 = extractvalue %dx.types.ResRet.f32 %860, 3
  br label %871

; <label>:865                                     ; preds = %842
  %866 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %853, float %855, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %867 = extractvalue %dx.types.ResRet.f32 %866, 0
  %868 = extractvalue %dx.types.ResRet.f32 %866, 1
  %869 = extractvalue %dx.types.ResRet.f32 %866, 2
  %870 = extractvalue %dx.types.ResRet.f32 %866, 3
  br label %871

; <label>:871                                     ; preds = %865, %859
  %872 = phi float [ %861, %859 ], [ %867, %865 ]
  %873 = phi float [ %862, %859 ], [ %868, %865 ]
  %874 = phi float [ %863, %859 ], [ %869, %865 ]
  %875 = phi float [ %864, %859 ], [ %870, %865 ]
  %876 = extractvalue %dx.types.CBufRet.f32 %850, 3
  %877 = fmul fast float %876, %873
  %878 = fmul fast float %877, %872
  %879 = fsub fast float %877, %878
  %880 = fcmp fast ole float %879, 0.000000e+00
  %881 = extractvalue %dx.types.CBufRet.f32 %845, 2
  %882 = fadd fast float %878, %881
  %883 = fmul fast float %876, %874
  %884 = fadd fast float %883, %881
  %885 = fdiv fast float 1.000000e+00, %879
  %886 = select i1 %880, float 1.000000e+06, float %885
  %887 = fsub fast float %830, %882
  %888 = fmul fast float %886, %887
  %889 = call float @dx.op.unary.f32(i32 7, float %888)  ; Saturate(value)
  %890 = extractvalue %dx.types.CBufRet.f32 %850, 2
  %891 = fmul fast float %890, %889
  %892 = fsub fast float %890, %891
  %893 = fcmp fast olt float %830, %884
  %894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %895 = extractvalue %dx.types.CBufRet.f32 %894, 3
  %896 = select i1 %893, float %895, float 1.000000e+00
  %897 = fmul fast float %892, %896
  %898 = fsub fast float %833, %882
  %899 = fmul fast float %886, %898
  %900 = call float @dx.op.unary.f32(i32 7, float %899)  ; Saturate(value)
  %901 = fmul fast float %890, %900
  %902 = fsub fast float %890, %901
  %903 = fcmp fast olt float %833, %884
  %904 = select i1 %903, float %895, float 1.000000e+00
  %905 = fmul fast float %902, %904
  %906 = fadd fast float %905, %897
  %907 = fsub fast float %836, %882
  %908 = fmul fast float %886, %907
  %909 = call float @dx.op.unary.f32(i32 7, float %908)  ; Saturate(value)
  %910 = fmul fast float %890, %909
  %911 = fsub fast float %890, %910
  %912 = fcmp fast olt float %836, %884
  %913 = select i1 %912, float %895, float 1.000000e+00
  %914 = fmul fast float %911, %913
  %915 = fadd fast float %906, %914
  %916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %917 = extractvalue %dx.types.CBufRet.f32 %916, 2
  %918 = fmul fast float %824, 0x3FD5555560000000
  %919 = fmul fast float %918, %875
  %920 = fmul fast float %919, %917
  %921 = fmul fast float %920, %915
  br label %922

; <label>:922                                     ; preds = %871, %809
  %923 = phi float [ %921, %871 ], [ 0.000000e+00, %809 ]
  %924 = icmp eq i32 %636, 0
  br i1 %924, label %1105, label %925, !dx.controlflow.hints !61

; <label>:925                                     ; preds = %922
  %926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %927 = extractvalue %dx.types.CBufRet.f32 %926, 3
  %928 = fmul fast float %927, %284
  %929 = fcmp fast oeq float %928, 0.000000e+00
  br i1 %929, label %944, label %930, !dx.controlflow.hints !62

; <label>:930                                     ; preds = %925
  %931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %932 = extractvalue %dx.types.CBufRet.f32 %931, 3
  %933 = fmul fast float %932, %928
  %934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %935 = extractvalue %dx.types.CBufRet.f32 %934, 0
  %936 = extractvalue %dx.types.CBufRet.f32 %934, 1
  %937 = extractvalue %dx.types.CBufRet.f32 %934, 2
  %938 = fmul fast float %935, %933
  %939 = fmul fast float %936, %933
  %940 = fmul fast float %937, %933
  %941 = call float @dx.op.unary.f32(i32 23, float %938)  ; Log(value)
  %942 = call float @dx.op.unary.f32(i32 23, float %939)  ; Log(value)
  %943 = call float @dx.op.unary.f32(i32 23, float %940)  ; Log(value)
  br label %944

; <label>:944                                     ; preds = %930, %925
  %945 = phi float [ %941, %930 ], [ 0.000000e+00, %925 ]
  %946 = phi float [ %942, %930 ], [ 0.000000e+00, %925 ]
  %947 = phi float [ %943, %930 ], [ 0.000000e+00, %925 ]
  %948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %949 = extractvalue %dx.types.CBufRet.f32 %948, 0
  %950 = extractvalue %dx.types.CBufRet.f32 %948, 1
  %951 = extractvalue %dx.types.CBufRet.f32 %948, 2
  %952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %953 = extractvalue %dx.types.CBufRet.f32 %952, 0
  %954 = extractvalue %dx.types.CBufRet.f32 %952, 1
  %955 = extractvalue %dx.types.CBufRet.f32 %952, 2
  %956 = fsub fast float %281, %953
  %957 = fsub fast float %282, %954
  %958 = fsub fast float %283, %955
  %959 = fmul fast float %956, %949
  %960 = fmul fast float %957, %950
  %961 = fmul fast float %958, %951
  %962 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %963 = extractvalue %dx.types.CBufRet.i32 %962, 0
  %964 = extractvalue %dx.types.CBufRet.i32 %962, 1
  %965 = uitofp i32 %963 to float
  %966 = uitofp i32 %964 to float
  %967 = fmul fast float %959, %965
  %968 = fmul fast float %960, %966
  %969 = fadd fast float %967, 5.000000e-01
  %970 = fadd fast float %968, 5.000000e-01
  %971 = call float @dx.op.unary.f32(i32 22, float %969)  ; Frc(value)
  %972 = call float @dx.op.unary.f32(i32 22, float %970)  ; Frc(value)
  %973 = call float @dx.op.unary.f32(i32 27, float %969)  ; Round_ni(value)
  %974 = call float @dx.op.unary.f32(i32 27, float %970)  ; Round_ni(value)
  %975 = fadd fast float %973, 1.000000e+00
  %976 = fadd fast float %974, 1.000000e+00
  %977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %978 = extractvalue %dx.types.CBufRet.f32 %977, 0
  %979 = extractvalue %dx.types.CBufRet.f32 %977, 1
  %980 = fmul fast float %978, %975
  %981 = fmul fast float %979, %976
  %982 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %13, float %980, float %981, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %983 = extractvalue %dx.types.ResRet.f32 %982, 0
  %984 = extractvalue %dx.types.ResRet.f32 %982, 1
  %985 = extractvalue %dx.types.ResRet.f32 %982, 2
  %986 = extractvalue %dx.types.ResRet.f32 %982, 3
  %987 = extractvalue %dx.types.CBufRet.i32 %962, 2
  %988 = extractvalue %dx.types.CBufRet.f32 %977, 2
  %989 = uitofp i32 %987 to float
  %990 = fadd fast float %989, -1.000000e+00
  %991 = fmul fast float %990, %983
  %992 = fmul fast float %990, %984
  %993 = fmul fast float %990, %985
  %994 = fmul fast float %990, %986
  %995 = fadd fast float %991, 5.000000e-01
  %996 = fadd fast float %992, 5.000000e-01
  %997 = fadd fast float %993, 5.000000e-01
  %998 = fadd fast float %994, 5.000000e-01
  %999 = fptoui float %995 to i32
  %1000 = fptoui float %996 to i32
  %1001 = fptoui float %997 to i32
  %1002 = fptoui float %998 to i32
  %1003 = uitofp i32 %999 to float
  %1004 = uitofp i32 %1000 to float
  %1005 = uitofp i32 %1001 to float
  %1006 = uitofp i32 %1002 to float
  %1007 = fadd fast float %1003, 5.000000e-01
  %1008 = fadd fast float %1004, 5.000000e-01
  %1009 = fadd fast float %1005, 5.000000e-01
  %1010 = fadd fast float %1006, 5.000000e-01
  %1011 = fmul fast float %1007, %988
  %1012 = fmul fast float %1008, %988
  %1013 = fmul fast float %1009, %988
  %1014 = fmul fast float %1010, %988
  %1015 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %14, float %1011, float %961, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1016 = extractvalue %dx.types.ResRet.f32 %1015, 0
  %1017 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %14, float %1012, float %961, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1018 = extractvalue %dx.types.ResRet.f32 %1017, 0
  %1019 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %14, float %1013, float %961, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1020 = extractvalue %dx.types.ResRet.f32 %1019, 0
  %1021 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %14, float %1014, float %961, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1022 = extractvalue %dx.types.ResRet.f32 %1021, 0
  %1023 = fsub fast float %1020, %1022
  %1024 = fmul fast float %1023, %971
  %1025 = fadd fast float %1024, %1022
  %1026 = fsub fast float %1018, %1016
  %1027 = fmul fast float %1026, %971
  %1028 = fadd fast float %1027, %1016
  %1029 = fsub fast float %1028, %1025
  %1030 = fmul fast float %1029, %972
  %1031 = fadd fast float %1030, %1025
  %1032 = fcmp fast ogt float %1031, 0.000000e+00
  br i1 %1032, label %1033, label %1101, !dx.controlflow.hints !63

; <label>:1033                                    ; preds = %944
  %1034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1035 = extractvalue %dx.types.CBufRet.f32 %1034, 0
  %1036 = extractvalue %dx.types.CBufRet.f32 %1034, 1
  %1037 = extractvalue %dx.types.CBufRet.f32 %1034, 2
  %1038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1039 = extractvalue %dx.types.CBufRet.f32 %1038, 0
  %1040 = extractvalue %dx.types.CBufRet.f32 %1038, 1
  %1041 = extractvalue %dx.types.CBufRet.f32 %1038, 2
  %1042 = fmul fast float %957, %949
  %1043 = fmul fast float %958, %949
  %1044 = fadd fast float %959, %1039
  %1045 = fadd fast float %1042, %1040
  %1046 = fadd fast float %1043, %1041
  %1047 = fmul fast float %1044, %1035
  %1048 = fmul fast float %1045, %1035
  %1049 = fmul fast float %1046, %1035
  %1050 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %11, float %1047, float %1048, float %1049, float undef, i32 0, i32 0, i32 0, float %945)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1051 = extractvalue %dx.types.ResRet.f32 %1050, 0
  %1052 = fmul fast float %1044, %1036
  %1053 = fmul fast float %1045, %1036
  %1054 = fmul fast float %1046, %1036
  %1055 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %11, float %1052, float %1053, float %1054, float undef, i32 0, i32 0, i32 0, float %946)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1056 = extractvalue %dx.types.ResRet.f32 %1055, 1
  %1057 = fmul fast float %1044, %1037
  %1058 = fmul fast float %1045, %1037
  %1059 = fmul fast float %1046, %1037
  %1060 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %11, float %1057, float %1058, float %1059, float undef, i32 0, i32 0, i32 0, float %947)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1061 = extractvalue %dx.types.ResRet.f32 %1060, 2
  %1062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %1063 = extractvalue %dx.types.CBufRet.f32 %1062, 1
  %1064 = fmul fast float %1056, %1051
  %1065 = fmul fast float %1064, %1061
  %1066 = call float @dx.op.unary.f32(i32 23, float %1065)  ; Log(value)
  %1067 = fmul fast float %1066, %1063
  %1068 = call float @dx.op.unary.f32(i32 21, float %1067)  ; Exp(value)
  %1069 = extractvalue %dx.types.CBufRet.f32 %1062, 2
  %1070 = fmul fast float %1031, %1031
  %1071 = fmul fast float %1070, %1068
  %1072 = fmul fast float %1071, %1069
  %1073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %1074 = extractvalue %dx.types.CBufRet.f32 %1073, 3
  %1075 = fmul fast float %1074, %1072
  %1076 = bitcast float %1075 to i32
  %1077 = sitofp i32 %1076 to float
  %1078 = fptosi float %1077 to i32
  %1079 = bitcast i32 %1078 to float
  %1080 = fsub fast float 1.000000e+00, %1072
  %1081 = bitcast float %1080 to i32
  %1082 = sitofp i32 %1081 to float
  %1083 = fptosi float %1082 to i32
  %1084 = bitcast i32 %1083 to float
  %1085 = fadd fast float %1079, %1084
  %1086 = bitcast float %1085 to i32
  %1087 = sub nsw i32 2129859010, %1086
  %1088 = bitcast i32 %1087 to float
  %1089 = fmul fast float %1088, %1079
  %1090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1091 = extractvalue %dx.types.CBufRet.f32 %1090, 3
  %1092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1093 = extractvalue %dx.types.CBufRet.f32 %1092, 0
  %1094 = fmul fast float %1089, %1093
  %1095 = fadd fast float %1094, 1.000000e+00
  %1096 = bitcast float %1095 to i32
  %1097 = sub nsw i32 2129859010, %1096
  %1098 = bitcast i32 %1097 to float
  %1099 = fmul fast float %1089, %1091
  %1100 = fmul fast float %1099, %1098
  br label %1101

; <label>:1101                                    ; preds = %1033, %944
  %1102 = phi float [ %1100, %1033 ], [ %1031, %944 ]
  %1103 = fmul fast float %1102, %824
  %1104 = fadd fast float %1103, %923
  br label %1105

; <label>:1105                                    ; preds = %1101, %922
  %1106 = phi float [ %1104, %1101 ], [ %923, %922 ]
  br i1 %573, label %1232, label %1107, !dx.controlflow.hints !64

; <label>:1107                                    ; preds = %1105
  %1108 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1109 = extractvalue %dx.types.CBufRet.i32 %1108, 0
  %1110 = icmp ne i32 %1109, 0
  %1111 = zext i1 %1110 to i32
  %1112 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1113 = extractvalue %dx.types.CBufRet.i32 %1112, 0
  %1114 = icmp eq i32 %1113, 0
  br i1 %1114, label %1148, label %1115

; <label>:1115                                    ; preds = %1107
  br label %1116

; <label>:1116                                    ; preds = %1143, %1115
  %1117 = phi i32 [ %1144, %1143 ], [ 0, %1115 ]
  %1118 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %1117, i32 0)  ; BufferLoad(srv,index,wot)
  %1119 = extractvalue %dx.types.ResRet.f32 %1118, 0
  %1120 = extractvalue %dx.types.ResRet.f32 %1118, 1
  %1121 = extractvalue %dx.types.ResRet.f32 %1118, 2
  %1122 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %1117, i32 16)  ; BufferLoad(srv,index,wot)
  %1123 = extractvalue %dx.types.ResRet.f32 %1122, 0
  %1124 = extractvalue %dx.types.ResRet.f32 %1122, 1
  %1125 = extractvalue %dx.types.ResRet.f32 %1122, 2
  %1126 = fsub fast float %1119, %1123
  %1127 = fsub fast float %1120, %1124
  %1128 = fsub fast float %1121, %1125
  %1129 = fadd fast float %1123, %1119
  %1130 = fadd fast float %1124, %1120
  %1131 = fadd fast float %1125, %1121
  %1132 = fcmp fast olt float %281, %1126
  %1133 = fcmp fast olt float %282, %1127
  %1134 = fcmp fast olt float %283, %1128
  %1135 = or i1 %1132, %1133
  %1136 = or i1 %1134, %1135
  %1137 = fcmp fast ogt float %281, %1129
  %1138 = fcmp fast ogt float %282, %1130
  %1139 = fcmp fast ogt float %283, %1131
  %1140 = or i1 %1137, %1138
  %1141 = or i1 %1139, %1140
  %1142 = or i1 %1136, %1141
  br i1 %1142, label %1143, label %1146, !dx.controlflow.hints !65

; <label>:1143                                    ; preds = %1116
  %1144 = add nuw i32 %1117, 1
  %1145 = icmp ult i32 %1144, %1113
  br i1 %1145, label %1116, label %1146

; <label>:1146                                    ; preds = %1143, %1116
  %1147 = phi i32 [ 255, %1143 ], [ %1117, %1116 ]
  br label %1148

; <label>:1148                                    ; preds = %1146, %1107
  %1149 = phi i32 [ 255, %1107 ], [ %1147, %1146 ]
  %1150 = icmp eq i32 %1149, 255
  br i1 %1150, label %1156, label %1151, !dx.controlflow.hints !66

; <label>:1151                                    ; preds = %1148
  %1152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1149, i32 156)  ; BufferLoad(srv,index,wot)
  %1153 = extractvalue %dx.types.ResRet.i32 %1152, 0
  %1154 = icmp ne i32 %1153, 0
  %1155 = zext i1 %1154 to i32
  br label %1156

; <label>:1156                                    ; preds = %1151, %1148
  %1157 = phi i32 [ %1155, %1151 ], [ %1111, %1148 ]
  %1158 = icmp eq i32 %1157, 0
  br i1 %1158, label %1159, label %1228, !dx.controlflow.hints !67

; <label>:1159                                    ; preds = %1156
  %1160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1161 = extractvalue %dx.types.CBufRet.f32 %1160, 3
  %1162 = extractvalue %dx.types.CBufRet.f32 %483, 0
  %1163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1164 = extractvalue %dx.types.CBufRet.f32 %1163, 2
  %1165 = extractvalue %dx.types.CBufRet.f32 %1163, 3
  br i1 %1150, label %1176, label %1166, !dx.controlflow.hints !68

; <label>:1166                                    ; preds = %1159
  %1167 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %1149, i32 60)  ; BufferLoad(srv,index,wot)
  %1168 = extractvalue %dx.types.ResRet.f32 %1167, 0
  %1169 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %1149, i32 64)  ; BufferLoad(srv,index,wot)
  %1170 = extractvalue %dx.types.ResRet.f32 %1169, 0
  %1171 = extractvalue %dx.types.ResRet.f32 %1169, 1
  %1172 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %1149, i32 72)  ; BufferLoad(srv,index,wot)
  %1173 = extractvalue %dx.types.ResRet.f32 %1172, 0
  %1174 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %1149, i32 96)  ; BufferLoad(srv,index,wot)
  %1175 = extractvalue %dx.types.ResRet.f32 %1174, 0
  br label %1176

; <label>:1176                                    ; preds = %1166, %1159
  %1177 = phi float [ %1170, %1166 ], [ %1164, %1159 ]
  %1178 = phi float [ %1171, %1166 ], [ %1165, %1159 ]
  %1179 = phi float [ %1175, %1166 ], [ %1162, %1159 ]
  %1180 = phi float [ %1173, %1166 ], [ %484, %1159 ]
  %1181 = phi float [ %1168, %1166 ], [ %486, %1159 ]
  %1182 = call float @dx.op.binary.f32(i32 35, float %567, float 0.000000e+00)  ; FMax(a,b)
  %1183 = call float @dx.op.binary.f32(i32 36, float %1182, float 1.000000e+00)  ; FMin(a,b)
  %1184 = call float @dx.op.unary.f32(i32 24, float %1183)  ; Sqrt(value)
  %1185 = call float @dx.op.binary.f32(i32 35, float %570, float 0x3F847AE140000000)  ; FMax(a,b)
  %1186 = fsub fast float %568, %283
  %1187 = fsub fast float %283, %569
  %1188 = call float @dx.op.binary.f32(i32 36, float %1187, float %1186)  ; FMin(a,b)
  %1189 = fdiv fast float %1188, %1185
  %1190 = call float @dx.op.unary.f32(i32 7, float %1189)  ; Saturate(value)
  %1191 = fsub fast float %283, %1180
  %1192 = fdiv fast float %1191, %1181
  %1193 = call float @dx.op.unary.f32(i32 7, float %1192)  ; Saturate(value)
  %1194 = fsub fast float 1.000000e+00, %1193
  %1195 = fmul float %1190, %1194
  %1196 = fmul float %1195, %1195
  %1197 = fmul fast float %1184, %1161
  %1198 = fmul fast float %1197, %1196
  %1199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1200 = extractvalue %dx.types.CBufRet.f32 %1199, 2
  %1201 = extractvalue %dx.types.CBufRet.f32 %1199, 1
  %1202 = fsub fast float %1198, %1201
  %1203 = fsub fast float %1200, %1201
  %1204 = fdiv fast float %1202, %1203
  %1205 = call float @dx.op.unary.f32(i32 7, float %1204)  ; Saturate(value)
  %1206 = fmul fast float %1205, %1179
  %1207 = fcmp fast ogt float %1178, 0.000000e+00
  br i1 %1207, label %1208, label %1228, !dx.controlflow.hints !69

; <label>:1208                                    ; preds = %1176
  %1209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1210 = extractvalue %dx.types.CBufRet.f32 %1209, 0
  %1211 = extractvalue %dx.types.CBufRet.f32 %1209, 1
  %1212 = extractvalue %dx.types.CBufRet.f32 %1209, 2
  %1213 = fsub fast float %281, %1210
  %1214 = fsub fast float %282, %1211
  %1215 = fsub fast float %283, %1212
  %1216 = fmul fast float %1213, %1213
  %1217 = fmul fast float %1214, %1214
  %1218 = fadd fast float %1216, %1217
  %1219 = fmul fast float %1215, %1215
  %1220 = fadd fast float %1218, %1219
  %1221 = call float @dx.op.unary.f32(i32 24, float %1220)  ; Sqrt(value)
  %1222 = fsub fast float %1221, %1177
  %1223 = fsub fast float %1178, %1177
  %1224 = fdiv fast float %1222, %1223
  %1225 = call float @dx.op.unary.f32(i32 7, float %1224)  ; Saturate(value)
  %1226 = fmul fast float %1225, %1225
  %1227 = fmul fast float %1226, %1206
  br label %1228

; <label>:1228                                    ; preds = %1208, %1176, %1156
  %1229 = phi float [ 0.000000e+00, %1156 ], [ %1227, %1208 ], [ %1206, %1176 ]
  %1230 = fmul fast float %1229, %824
  %1231 = fadd fast float %1230, %1106
  br label %1232

; <label>:1232                                    ; preds = %1228, %1105
  %1233 = phi float [ %1231, %1228 ], [ %1106, %1105 ]
  %1234 = icmp eq i32 %813, 0
  br i1 %1234, label %1266, label %1235, !dx.controlflow.hints !70

; <label>:1235                                    ; preds = %1232
  %1236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1237 = extractvalue %dx.types.CBufRet.f32 %1236, 1
  %1238 = fsub fast float %824, %1237
  %1239 = extractvalue %dx.types.CBufRet.f32 %1236, 3
  %1240 = fmul fast float %1238, %1239
  %1241 = call float @dx.op.unary.f32(i32 7, float %1240)  ; Saturate(value)
  %1242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1243 = extractvalue %dx.types.CBufRet.f32 %1242, 3
  %1244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1245 = extractvalue %dx.types.CBufRet.f32 %1244, 2
  %1246 = fsub fast float %1245, %811
  %1247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1248 = extractvalue %dx.types.CBufRet.f32 %1247, 3
  %1249 = fmul fast float %1246, %1248
  %1250 = call float @dx.op.unary.f32(i32 7, float %1249)  ; Saturate(value)
  %1251 = fmul fast float %1250, %1243
  %1252 = extractvalue %dx.types.CBufRet.f32 %1247, 0
  %1253 = fsub fast float %284, %1252
  %1254 = extractvalue %dx.types.CBufRet.f32 %1247, 1
  %1255 = fmul fast float %1253, %1254
  %1256 = call float @dx.op.unary.f32(i32 7, float %1255)  ; Saturate(value)
  %1257 = fsub fast float 1.000000e+00, %1241
  %1258 = fmul fast float %1256, %1257
  %1259 = fadd fast float %1258, %1241
  %1260 = extractvalue %dx.types.CBufRet.f32 %1236, 0
  %1261 = fsub fast float %1251, %1260
  %1262 = fmul fast float %1261, %1259
  %1263 = fadd fast float %1262, %1260
  %1264 = fmul fast float %1263, %824
  %1265 = fadd fast float %1264, %1233
  br label %1266

; <label>:1266                                    ; preds = %1235, %1232
  %1267 = phi float [ %1265, %1235 ], [ %1233, %1232 ]
  %1268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1269 = extractvalue %dx.types.CBufRet.f32 %1268, 1
  %1270 = fcmp fast ogt float %1267, %1269
  br i1 %1270, label %1271, label %1283, !dx.controlflow.hints !71

; <label>:1271                                    ; preds = %1266
  %1272 = fmul fast float %1267, 0xBFF7154760000000
  %1273 = call float @dx.op.unary.f32(i32 21, float %1272)  ; Exp(value)
  %1274 = call float @dx.op.unary.f32(i32 7, float %1273)  ; Saturate(value)
  %1275 = icmp eq i32 %287, 0
  br i1 %1275, label %1276, label %1277, !dx.controlflow.hints !72

; <label>:1276                                    ; preds = %1271
  br label %1277

; <label>:1277                                    ; preds = %1276, %1271
  %1278 = phi i32 [ %287, %1271 ], [ 1, %1276 ]
  %1279 = phi float [ %288, %1271 ], [ %284, %1276 ]
  %1280 = fadd fast float %824, %289
  %1281 = fadd fast float %1267, %290
  %1282 = fmul fast float %1274, %280
  br label %1283

; <label>:1283                                    ; preds = %1277, %1266
  %1284 = phi float [ %1282, %1277 ], [ %280, %1266 ]
  %1285 = phi i32 [ %1278, %1277 ], [ %287, %1266 ]
  %1286 = phi float [ %1279, %1277 ], [ %288, %1266 ]
  %1287 = phi float [ %1280, %1277 ], [ %289, %1266 ]
  %1288 = phi float [ %1281, %1277 ], [ %290, %1266 ]
  %1289 = fadd fast float %824, %284
  %1290 = fmul fast float %824, %63
  %1291 = fmul fast float %824, %64
  %1292 = fmul fast float %824, %65
  %1293 = fadd fast float %1290, %281
  %1294 = fadd fast float %1291, %282
  %1295 = fadd fast float %1292, %283
  %1296 = fcmp fast olt float %1289, %250
  %1297 = extractvalue %dx.types.CBufRet.f32 %1268, 2
  %1298 = fcmp fast olt float %1297, %1284
  %1299 = and i1 %1296, %1298
  br i1 %1299, label %273, label %1300

; <label>:1300                                    ; preds = %1283
  br label %1301

; <label>:1301                                    ; preds = %1300, %243
  %1302 = phi float [ 0.000000e+00, %243 ], [ %1286, %1300 ]
  %1303 = phi float [ 0.000000e+00, %243 ], [ %1287, %1300 ]
  %1304 = phi float [ 0.000000e+00, %243 ], [ %1288, %1300 ]
  %1305 = extractvalue %dx.types.CBufRet.f32 %57, 3
  %1306 = fmul fast float %1305, %1302
  %1307 = fdiv fast float 1.000000e+00, %1303
  %1308 = fmul fast float %1307, %1304
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %18, i32 %19, i32 undef, float %1306, float %1308, float %1304, float %1306, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!28 = !{void ()* @cs_fog_raymarching_clouds_heightmap_particles_brfog, !"cs_fog_raymarching_clouds_heightmap_particles_brfog", null, !4, !29}
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
!44 = distinct !{!44, !"dx.controlflow.hints", i32 1}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 1}
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
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}

