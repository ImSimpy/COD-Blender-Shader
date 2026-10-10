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
; shader hash: 1d78515962acba467769c697db516266
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
;                                   texture     f32          3d      T1             t1     1
;                                   texture     f32          3d      T2             t2     1
;                                   texture     f32          2d      T3             t8     1
;                                   texture     f32          2d      T4             t9     1
;                                   texture     f32          2d      T5            t18     1
;                                   texture  struct         r/o      T6            t25     1
;                                   texture     f32          2d      T7            t13     1
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

define void @cs_fog_raymarching_clouds_heightmap_particles() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %18 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %19 = uitofp i32 %17 to float
  %20 = uitofp i32 %18 to float
  %21 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %22 = extractvalue %dx.types.CBufRet.f32 %21, 2
  %23 = fmul fast float %22, 0x3FE3C6EF40000000
  %24 = frem fast float %19, 2.560000e+02
  %25 = frem fast float %20, 2.560000e+02
  %26 = fptoui float %24 to i32
  %27 = fptoui float %25 to i32
  %28 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %26, i32 %27, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %29 = extractvalue %dx.types.ResRet.f32 %28, 0
  %30 = extractvalue %dx.types.ResRet.f32 %28, 1
  %31 = extractvalue %dx.types.ResRet.f32 %28, 2
  %32 = fadd fast float %29, %23
  %33 = fadd fast float %30, %23
  %34 = fadd fast float %31, %23
  %35 = call float @dx.op.unary.f32(i32 22, float %32)  ; Frc(value)
  %36 = call float @dx.op.unary.f32(i32 22, float %33)  ; Frc(value)
  %37 = call float @dx.op.unary.f32(i32 22, float %34)  ; Frc(value)
  %38 = fadd fast float %19, 5.000000e-01
  %39 = fadd fast float %20, 5.000000e-01
  %40 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %41 = extractvalue %dx.types.CBufRet.f32 %40, 2
  %42 = extractvalue %dx.types.CBufRet.f32 %40, 3
  %43 = fmul fast float %41, %38
  %44 = fmul fast float %42, %39
  %45 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %46 = extractvalue %dx.types.CBufRet.f32 %45, 0
  %47 = extractvalue %dx.types.CBufRet.f32 %45, 1
  %48 = extractvalue %dx.types.CBufRet.f32 %45, 2
  %49 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.f32 %49, 0
  %51 = extractvalue %dx.types.CBufRet.f32 %49, 1
  %52 = fmul fast float %43, %50
  %53 = fmul fast float %44, %51
  %54 = fadd fast float %52, %46
  %55 = fadd fast float %53, %47
  %56 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.f32 %56, 2
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 0
  %60 = extractvalue %dx.types.CBufRet.f32 %58, 1
  %61 = extractvalue %dx.types.CBufRet.f32 %58, 2
  %62 = fsub fast float -0.000000e+00, %59
  %63 = fsub fast float -0.000000e+00, %60
  %64 = fsub fast float -0.000000e+00, %61
  %65 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.i32 %65, 3
  %67 = icmp eq i32 %66, 0
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 2
  %70 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %71 = extractvalue %dx.types.CBufRet.f32 %70, 2
  %72 = fsub fast float %69, %48
  %73 = fadd fast float %72, %71
  %74 = fsub fast float 0xC7EFFFFFE0000000, %48
  br i1 %67, label %86, label %75, !dx.controlflow.hints !30

; <label>:75                                      ; preds = %0
  %76 = fsub fast float -0.000000e+00, %55
  %77 = fsub fast float -0.000000e+00, %54
  %78 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %77, float %76, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %79 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %62, float %63, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %80 = fdiv fast float 1.000000e+00, %79
  %81 = fmul fast float %80, %78
  %82 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %77, float %76, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %83 = fmul fast float %80, %82
  %84 = call float @dx.op.binary.f32(i32 36, float %81, float %83)  ; FMin(a,b)
  %85 = call float @dx.op.binary.f32(i32 35, float %81, float %83)  ; FMax(a,b)
  br label %119

; <label>:86                                      ; preds = %0
  %87 = extractvalue %dx.types.CBufRet.f32 %68, 0
  %88 = extractvalue %dx.types.CBufRet.f32 %68, 1
  %89 = extractvalue %dx.types.CBufRet.f32 %70, 0
  %90 = extractvalue %dx.types.CBufRet.f32 %70, 1
  %91 = fdiv fast float 1.000000e+00, %62
  %92 = fdiv fast float 1.000000e+00, %63
  %93 = fdiv fast float 1.000000e+00, %64
  %94 = fsub fast float %87, %54
  %95 = fmul fast float %91, %94
  %96 = fadd fast float %94, %89
  %97 = fmul fast float %96, %91
  %98 = call float @dx.op.binary.f32(i32 36, float %95, float %97)  ; FMin(a,b)
  %99 = call float @dx.op.binary.f32(i32 35, float %95, float %97)  ; FMax(a,b)
  %100 = fsub fast float %88, %55
  %101 = fmul fast float %92, %100
  %102 = fadd fast float %100, %90
  %103 = fmul fast float %102, %92
  %104 = call float @dx.op.binary.f32(i32 36, float %101, float %103)  ; FMin(a,b)
  %105 = call float @dx.op.binary.f32(i32 35, float %98, float %104)  ; FMax(a,b)
  %106 = call float @dx.op.binary.f32(i32 35, float %101, float %103)  ; FMax(a,b)
  %107 = call float @dx.op.binary.f32(i32 36, float %99, float %106)  ; FMin(a,b)
  %108 = fmul fast float %93, %74
  %109 = fmul fast float %93, %73
  %110 = call float @dx.op.binary.f32(i32 36, float %108, float %109)  ; FMin(a,b)
  %111 = call float @dx.op.binary.f32(i32 35, float %105, float %110)  ; FMax(a,b)
  %112 = call float @dx.op.binary.f32(i32 35, float %108, float %109)  ; FMax(a,b)
  %113 = call float @dx.op.binary.f32(i32 36, float %107, float %112)  ; FMin(a,b)
  %114 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %111)  ; FMax(a,b)
  %115 = fcmp fast ult float %113, %114
  br i1 %115, label %119, label %116, !dx.controlflow.hints !31

; <label>:116                                     ; preds = %86
  %117 = call float @dx.op.binary.f32(i32 36, float %111, float %113)  ; FMin(a,b)
  %118 = call float @dx.op.binary.f32(i32 35, float %111, float %113)  ; FMax(a,b)
  br label %119

; <label>:119                                     ; preds = %116, %86, %75
  %120 = phi float [ %84, %75 ], [ %117, %116 ], [ 0.000000e+00, %86 ]
  %121 = phi float [ %85, %75 ], [ %118, %116 ], [ 0.000000e+00, %86 ]
  %122 = fcmp fast oeq float %121, 0.000000e+00
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 1
  %125 = fcmp fast olt float %121, %124
  %126 = or i1 %122, %125
  br i1 %126, label %131, label %127, !dx.controlflow.hints !32

; <label>:127                                     ; preds = %119
  %128 = call float @dx.op.binary.f32(i32 35, float %124, float %120)  ; FMax(a,b)
  %129 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %128)  ; FMin(a,b)
  %130 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %121)  ; FMax(a,b)
  br label %131

; <label>:131                                     ; preds = %127, %119
  %132 = phi float [ %130, %127 ], [ -1.000000e+00, %119 ]
  %133 = phi i32 [ 1, %127 ], [ 0, %119 ]
  %134 = phi float [ %129, %127 ], [ 0x47EFFFFFE0000000, %119 ]
  %135 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.i32 %135, 3
  %137 = icmp eq i32 %136, 0
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 2
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 2
  %142 = fsub fast float %139, %48
  %143 = fadd fast float %142, %141
  br i1 %137, label %155, label %144, !dx.controlflow.hints !33

; <label>:144                                     ; preds = %131
  %145 = fsub fast float -0.000000e+00, %54
  %146 = fsub fast float -0.000000e+00, %55
  %147 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %145, float %146, float %143)  ; Dot3(ax,ay,az,bx,by,bz)
  %148 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %62, float %63, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %149 = fdiv fast float 1.000000e+00, %148
  %150 = fmul fast float %149, %147
  %151 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %145, float %146, float %142)  ; Dot3(ax,ay,az,bx,by,bz)
  %152 = fmul fast float %149, %151
  %153 = call float @dx.op.binary.f32(i32 36, float %150, float %152)  ; FMin(a,b)
  %154 = call float @dx.op.binary.f32(i32 35, float %150, float %152)  ; FMax(a,b)
  br label %188

; <label>:155                                     ; preds = %131
  %156 = fdiv fast float 1.000000e+00, %62
  %157 = fdiv fast float 1.000000e+00, %63
  %158 = fdiv fast float 1.000000e+00, %64
  %159 = extractvalue %dx.types.CBufRet.f32 %138, 0
  %160 = extractvalue %dx.types.CBufRet.f32 %138, 1
  %161 = extractvalue %dx.types.CBufRet.f32 %140, 0
  %162 = extractvalue %dx.types.CBufRet.f32 %140, 1
  %163 = fsub fast float %159, %54
  %164 = fmul fast float %163, %156
  %165 = fadd fast float %163, %161
  %166 = fmul fast float %165, %156
  %167 = call float @dx.op.binary.f32(i32 36, float %164, float %166)  ; FMin(a,b)
  %168 = call float @dx.op.binary.f32(i32 35, float %164, float %166)  ; FMax(a,b)
  %169 = fsub fast float %160, %55
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
  br i1 %184, label %188, label %185, !dx.controlflow.hints !34

; <label>:185                                     ; preds = %155
  %186 = call float @dx.op.binary.f32(i32 36, float %180, float %182)  ; FMin(a,b)
  %187 = call float @dx.op.binary.f32(i32 35, float %180, float %182)  ; FMax(a,b)
  br label %188

; <label>:188                                     ; preds = %185, %155, %144
  %189 = phi float [ %153, %144 ], [ %186, %185 ], [ 0.000000e+00, %155 ]
  %190 = phi float [ %154, %144 ], [ %187, %185 ], [ 0.000000e+00, %155 ]
  %191 = fcmp fast oeq float %190, 0.000000e+00
  br i1 %191, label %195, label %192, !dx.controlflow.hints !35

; <label>:192                                     ; preds = %188
  %193 = call float @dx.op.binary.f32(i32 36, float %134, float %189)  ; FMin(a,b)
  %194 = call float @dx.op.binary.f32(i32 35, float %132, float %190)  ; FMax(a,b)
  br label %195

; <label>:195                                     ; preds = %192, %188
  %196 = phi float [ %194, %192 ], [ %132, %188 ]
  %197 = phi i32 [ 1, %192 ], [ 0, %188 ]
  %198 = phi float [ %193, %192 ], [ %134, %188 ]
  %199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %200 = extractvalue %dx.types.CBufRet.f32 %199, 3
  %201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %202 = extractvalue %dx.types.CBufRet.f32 %201, 0
  %203 = fsub fast float -0.000000e+00, %54
  %204 = fsub fast float -0.000000e+00, %55
  %205 = fsub fast float %200, %48
  %206 = fadd fast float %205, %202
  %207 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %203, float %204, float %206)  ; Dot3(ax,ay,az,bx,by,bz)
  %208 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %62, float %63, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %209 = fdiv fast float 1.000000e+00, %208
  %210 = fmul fast float %209, %207
  %211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %212 = extractvalue %dx.types.CBufRet.f32 %211, 2
  %213 = fsub fast float %212, %48
  %214 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %203, float %204, float %213)  ; Dot3(ax,ay,az,bx,by,bz)
  %215 = fmul fast float %209, %214
  %216 = call float @dx.op.binary.f32(i32 36, float %210, float %215)  ; FMin(a,b)
  %217 = call float @dx.op.binary.f32(i32 35, float %210, float %215)  ; FMax(a,b)
  %218 = call float @dx.op.binary.f32(i32 36, float %198, float %216)  ; FMin(a,b)
  %219 = call float @dx.op.binary.f32(i32 35, float %196, float %217)  ; FMax(a,b)
  %220 = fdiv fast float 1.000000e+00, %62
  %221 = fdiv fast float 1.000000e+00, %63
  %222 = fdiv fast float 1.000000e+00, %64
  %223 = call float @dx.op.binary.f32(i32 36, float %57, float %219)  ; FMin(a,b)
  %224 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %218)  ; FMax(a,b)
  %225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %226 = extractvalue %dx.types.CBufRet.f32 %225, 1
  %227 = fmul fast float %36, 2.000000e+00
  %228 = fadd fast float %227, -1.000000e+00
  %229 = fmul fast float %226, %228
  %230 = fadd fast float %229, %224
  %231 = fcmp fast olt float %230, %223
  %232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.f32 %232, 2
  %234 = fcmp fast olt float %233, 1.000000e+00
  %235 = and i1 %231, %234
  br i1 %235, label %236, label %1061

; <label>:236                                     ; preds = %195
  %237 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %238 = extractvalue %dx.types.CBufRet.i32 %237, 1
  %239 = add i32 %238, -1
  %240 = fmul fast float %230, %64
  %241 = fadd fast float %240, %48
  %242 = fmul fast float %230, %63
  %243 = fadd fast float %242, %55
  %244 = fmul fast float %230, %62
  %245 = fadd fast float %244, %54
  br label %246

; <label>:246                                     ; preds = %1043, %236
  %247 = phi float [ %538, %1043 ], [ undef, %236 ]
  %248 = phi float [ %539, %1043 ], [ undef, %236 ]
  %249 = phi float [ %540, %1043 ], [ undef, %236 ]
  %250 = phi float [ %541, %1043 ], [ undef, %236 ]
  %251 = phi float [ %1044, %1043 ], [ 1.000000e+00, %236 ]
  %252 = phi float [ %1053, %1043 ], [ %245, %236 ]
  %253 = phi float [ %1054, %1043 ], [ %243, %236 ]
  %254 = phi float [ %1055, %1043 ], [ %241, %236 ]
  %255 = phi float [ %1049, %1043 ], [ %230, %236 ]
  %256 = phi i32 [ %543, %1043 ], [ 10, %236 ]
  %257 = phi i32 [ %434, %1043 ], [ %239, %236 ]
  %258 = phi i32 [ %1045, %1043 ], [ 0, %236 ]
  %259 = phi float [ %1046, %1043 ], [ 0.000000e+00, %236 ]
  %260 = phi float [ %1047, %1043 ], [ 0.000000e+00, %236 ]
  %261 = phi float [ %1048, %1043 ], [ 0.000000e+00, %236 ]
  %262 = fsub fast float -0.000000e+00, %253
  %263 = fsub fast float -0.000000e+00, %252
  %264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %265 = extractvalue %dx.types.CBufRet.f32 %264, 1
  %266 = icmp eq i32 %133, 0
  br i1 %266, label %432, label %267, !dx.controlflow.hints !36

; <label>:267                                     ; preds = %246
  %268 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %269 = extractvalue %dx.types.CBufRet.i32 %268, 1
  %270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %271 = extractvalue %dx.types.CBufRet.f32 %270, 1
  %272 = fcmp fast ogt float %271, %255
  br i1 %272, label %273, label %275, !dx.controlflow.hints !37

; <label>:273                                     ; preds = %267
  %274 = fsub fast float %271, %255
  br label %422

; <label>:275                                     ; preds = %267
  %276 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %277 = extractvalue %dx.types.CBufRet.i32 %276, 3
  %278 = icmp eq i32 %277, 0
  %279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %280 = extractvalue %dx.types.CBufRet.f32 %279, 2
  %281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %282 = extractvalue %dx.types.CBufRet.f32 %281, 2
  %283 = fsub fast float %280, %254
  %284 = fadd fast float %283, %282
  %285 = fsub fast float 0xC7EFFFFFE0000000, %254
  br i1 %278, label %293, label %286, !dx.controlflow.hints !30

; <label>:286                                     ; preds = %275
  %287 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %263, float %262, float %284)  ; Dot3(ax,ay,az,bx,by,bz)
  %288 = fmul fast float %209, %287
  %289 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %263, float %262, float %285)  ; Dot3(ax,ay,az,bx,by,bz)
  %290 = fmul fast float %209, %289
  %291 = call float @dx.op.binary.f32(i32 36, float %288, float %290)  ; FMin(a,b)
  %292 = call float @dx.op.binary.f32(i32 35, float %288, float %290)  ; FMax(a,b)
  br label %323

; <label>:293                                     ; preds = %275
  %294 = extractvalue %dx.types.CBufRet.f32 %279, 0
  %295 = extractvalue %dx.types.CBufRet.f32 %279, 1
  %296 = extractvalue %dx.types.CBufRet.f32 %281, 0
  %297 = extractvalue %dx.types.CBufRet.f32 %281, 1
  %298 = fsub fast float %294, %252
  %299 = fmul fast float %220, %298
  %300 = fadd fast float %298, %296
  %301 = fmul fast float %300, %220
  %302 = call float @dx.op.binary.f32(i32 36, float %299, float %301)  ; FMin(a,b)
  %303 = call float @dx.op.binary.f32(i32 35, float %299, float %301)  ; FMax(a,b)
  %304 = fsub fast float %295, %253
  %305 = fmul fast float %221, %304
  %306 = fadd fast float %304, %297
  %307 = fmul fast float %306, %221
  %308 = call float @dx.op.binary.f32(i32 36, float %305, float %307)  ; FMin(a,b)
  %309 = call float @dx.op.binary.f32(i32 35, float %302, float %308)  ; FMax(a,b)
  %310 = call float @dx.op.binary.f32(i32 35, float %305, float %307)  ; FMax(a,b)
  %311 = call float @dx.op.binary.f32(i32 36, float %303, float %310)  ; FMin(a,b)
  %312 = fmul fast float %222, %285
  %313 = fmul fast float %222, %284
  %314 = call float @dx.op.binary.f32(i32 36, float %312, float %313)  ; FMin(a,b)
  %315 = call float @dx.op.binary.f32(i32 35, float %309, float %314)  ; FMax(a,b)
  %316 = call float @dx.op.binary.f32(i32 35, float %312, float %313)  ; FMax(a,b)
  %317 = call float @dx.op.binary.f32(i32 36, float %311, float %316)  ; FMin(a,b)
  %318 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %315)  ; FMax(a,b)
  %319 = fcmp fast ult float %317, %318
  br i1 %319, label %323, label %320, !dx.controlflow.hints !31

; <label>:320                                     ; preds = %293
  %321 = call float @dx.op.binary.f32(i32 36, float %315, float %317)  ; FMin(a,b)
  %322 = call float @dx.op.binary.f32(i32 35, float %315, float %317)  ; FMax(a,b)
  br label %323

; <label>:323                                     ; preds = %320, %293, %286
  %324 = phi float [ %291, %286 ], [ %321, %320 ], [ 0.000000e+00, %293 ]
  %325 = phi float [ %292, %286 ], [ %322, %320 ], [ 0.000000e+00, %293 ]
  %326 = fcmp fast ogt float %324, 0.000000e+00
  br i1 %326, label %422, label %327, !dx.controlflow.hints !38

; <label>:327                                     ; preds = %323
  %328 = fcmp fast ugt float %325, 0.000000e+00
  br i1 %328, label %329, label %422, !dx.controlflow.hints !39

; <label>:329                                     ; preds = %327
  %330 = icmp sgt i32 %257, 0
  br i1 %330, label %331, label %416

; <label>:331                                     ; preds = %329
  br label %332

; <label>:332                                     ; preds = %412, %331
  %333 = phi i32 [ %413, %412 ], [ %257, %331 ]
  %334 = sitofp i32 %333 to float
  %335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %336 = extractvalue %dx.types.CBufRet.f32 %335, 0
  %337 = extractvalue %dx.types.CBufRet.f32 %335, 1
  %338 = fsub fast float %252, %336
  %339 = fsub fast float %253, %337
  %340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %341 = extractvalue %dx.types.CBufRet.f32 %340, 0
  %342 = extractvalue %dx.types.CBufRet.f32 %340, 1
  %343 = fmul fast float %338, %341
  %344 = fmul fast float %339, %342
  %345 = fsub fast float 1.000000e+00, %344
  %346 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %347 = extractvalue %dx.types.CBufRet.i32 %346, 3
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %355, label %349, !dx.controlflow.hints !40

; <label>:349                                     ; preds = %332
  %350 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %12, float %343, float %345, float undef, float undef, i32 0, i32 0, i32 undef, float %334)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %351 = extractvalue %dx.types.ResRet.f32 %350, 0
  %352 = extractvalue %dx.types.ResRet.f32 %350, 1
  %353 = extractvalue %dx.types.ResRet.f32 %350, 2
  %354 = extractvalue %dx.types.ResRet.f32 %350, 3
  br label %361

; <label>:355                                     ; preds = %332
  %356 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %13, float %343, float %345, float undef, float undef, i32 0, i32 0, i32 undef, float %334)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %357 = extractvalue %dx.types.ResRet.f32 %356, 0
  %358 = extractvalue %dx.types.ResRet.f32 %356, 1
  %359 = extractvalue %dx.types.ResRet.f32 %356, 2
  %360 = extractvalue %dx.types.ResRet.f32 %356, 3
  br label %361

; <label>:361                                     ; preds = %355, %349
  %362 = phi float [ %351, %349 ], [ %357, %355 ]
  %363 = phi float [ %352, %349 ], [ %358, %355 ]
  %364 = phi float [ %353, %349 ], [ %359, %355 ]
  %365 = phi float [ %354, %349 ], [ %360, %355 ]
  %366 = extractvalue %dx.types.CBufRet.f32 %340, 3
  %367 = fmul fast float %366, %362
  %368 = extractvalue %dx.types.CBufRet.f32 %335, 2
  %369 = fadd fast float %367, %368
  %370 = fmul fast float %366, %363
  %371 = fadd fast float %370, %368
  %372 = fmul fast float %366, %364
  %373 = fadd fast float %372, %368
  %374 = and i32 %333, 31
  %375 = shl i32 1, %374
  %376 = uitofp i32 %375 to float
  %377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %378 = extractvalue %dx.types.CBufRet.f32 %377, 3
  %379 = fdiv fast float 1.000000e+00, %378
  %380 = fmul fast float %379, %376
  %381 = fmul fast float %380, %64
  %382 = fadd fast float %381, %254
  %383 = fcmp fast oeq float %365, 0.000000e+00
  %384 = fcmp fast ogt float %254, %371
  %385 = fcmp fast ogt float %382, %371
  %386 = and i1 %384, %385
  %387 = or i1 %383, %386
  br i1 %387, label %388, label %392, !dx.controlflow.hints !41

; <label>:388                                     ; preds = %361
  %389 = add nsw i32 %333, 1
  %390 = add nsw i32 %269, -1
  %391 = call i32 @dx.op.binary.i32(i32 38, i32 %389, i32 %390)  ; IMin(a,b)
  br label %422

; <label>:392                                     ; preds = %361
  %393 = fcmp fast olt float %254, %373
  %394 = fcmp fast olt float %382, %373
  %395 = and i1 %393, %394
  br i1 %395, label %396, label %400, !dx.controlflow.hints !42

; <label>:396                                     ; preds = %392
  %397 = add nsw i32 %333, 1
  %398 = add nsw i32 %269, -1
  %399 = call i32 @dx.op.binary.i32(i32 38, i32 %397, i32 %398)  ; IMin(a,b)
  br label %422

; <label>:400                                     ; preds = %392
  %401 = fcmp fast olt float %254, %369
  %402 = fcmp fast olt float %382, %369
  %403 = and i1 %401, %402
  br i1 %403, label %404, label %412, !dx.controlflow.hints !43

; <label>:404                                     ; preds = %400
  %405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %406 = extractvalue %dx.types.CBufRet.f32 %405, 3
  %407 = extractvalue %dx.types.CBufRet.f32 %340, 2
  %408 = fcmp fast une float %406, %407
  br i1 %408, label %409, label %416, !dx.controlflow.hints !44

; <label>:409                                     ; preds = %404
  %410 = fsub fast float %254, %373
  %411 = call float @dx.op.binary.f32(i32 36, float %380, float %410)  ; FMin(a,b)
  br label %416

; <label>:412                                     ; preds = %400
  %413 = add nsw i32 %333, -1
  %414 = icmp sgt i32 %333, 1
  br i1 %414, label %332, label %415

; <label>:415                                     ; preds = %412
  br label %416

; <label>:416                                     ; preds = %415, %409, %404, %329
  %417 = phi float [ %411, %409 ], [ %380, %404 ], [ 0.000000e+00, %329 ], [ 0.000000e+00, %415 ]
  %418 = phi i32 [ %333, %409 ], [ %333, %404 ], [ %257, %329 ], [ %413, %415 ]
  %419 = add nsw i32 %418, 1
  %420 = add nsw i32 %269, -1
  %421 = call i32 @dx.op.binary.i32(i32 38, i32 %419, i32 %420)  ; IMin(a,b)
  br label %422

; <label>:422                                     ; preds = %416, %396, %388, %327, %323, %273
  %423 = phi float [ %274, %273 ], [ %380, %388 ], [ %380, %396 ], [ %417, %416 ], [ 0x47EFFFFFE0000000, %327 ], [ %324, %323 ]
  %424 = phi i32 [ %133, %273 ], [ %133, %388 ], [ %133, %396 ], [ %133, %416 ], [ 0, %327 ], [ %133, %323 ]
  %425 = phi i32 [ %257, %273 ], [ %391, %388 ], [ %399, %396 ], [ %421, %416 ], [ %257, %327 ], [ %257, %323 ]
  %426 = icmp ne i32 %424, 0
  %427 = zext i1 %426 to i32
  %428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %429 = extractvalue %dx.types.CBufRet.f32 %428, 2
  %430 = call float @dx.op.binary.f32(i32 35, float %423, float %429)  ; FMax(a,b)
  %431 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %430)  ; FMin(a,b)
  br label %432

; <label>:432                                     ; preds = %422, %246
  %433 = phi float [ %431, %422 ], [ 0x47EFFFFFE0000000, %246 ]
  %434 = phi i32 [ %425, %422 ], [ %257, %246 ]
  %435 = phi i32 [ %427, %422 ], [ 0, %246 ]
  %436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %437 = extractvalue %dx.types.CBufRet.f32 %436, 0
  %438 = extractvalue %dx.types.CBufRet.f32 %436, 1
  %439 = fsub fast float %252, %437
  %440 = fsub fast float %253, %438
  %441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %442 = extractvalue %dx.types.CBufRet.f32 %441, 2
  %443 = extractvalue %dx.types.CBufRet.f32 %441, 3
  %444 = fmul fast float %439, %442
  %445 = fmul fast float %440, %443
  %446 = call float @dx.op.binary.f32(i32 36, float %444, float %445)  ; FMin(a,b)
  %447 = fcmp fast olt float %446, 0.000000e+00
  %448 = call float @dx.op.binary.f32(i32 35, float %444, float %445)  ; FMax(a,b)
  %449 = fcmp fast ogt float %448, 1.000000e+00
  %450 = or i1 %447, %449
  %451 = extractvalue %dx.types.CBufRet.f32 %436, 2
  %452 = fcmp fast olt float %254, %451
  %453 = or i1 %450, %452
  %454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %455 = extractvalue %dx.types.CBufRet.f32 %454, 3
  %456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %457 = extractvalue %dx.types.CBufRet.f32 %456, 0
  %458 = fadd fast float %457, %455
  %459 = fcmp fast ogt float %254, %458
  %460 = or i1 %453, %459
  br i1 %460, label %461, label %490, !dx.controlflow.hints !45

; <label>:461                                     ; preds = %432
  %462 = extractvalue %dx.types.CBufRet.f32 %441, 0
  %463 = extractvalue %dx.types.CBufRet.f32 %441, 1
  %464 = fsub fast float %437, %252
  %465 = fmul fast float %464, %220
  %466 = fadd fast float %464, %462
  %467 = fmul fast float %466, %220
  %468 = call float @dx.op.binary.f32(i32 36, float %465, float %467)  ; FMin(a,b)
  %469 = call float @dx.op.binary.f32(i32 35, float %465, float %467)  ; FMax(a,b)
  %470 = fsub fast float %438, %253
  %471 = fmul fast float %470, %221
  %472 = fadd fast float %470, %463
  %473 = fmul fast float %472, %221
  %474 = call float @dx.op.binary.f32(i32 36, float %471, float %473)  ; FMin(a,b)
  %475 = call float @dx.op.binary.f32(i32 35, float %468, float %474)  ; FMax(a,b)
  %476 = call float @dx.op.binary.f32(i32 35, float %471, float %473)  ; FMax(a,b)
  %477 = call float @dx.op.binary.f32(i32 36, float %469, float %476)  ; FMin(a,b)
  %478 = fsub fast float %451, %254
  %479 = fmul fast float %478, %222
  %480 = fsub fast float %455, %254
  %481 = fadd fast float %480, %457
  %482 = fmul fast float %481, %222
  %483 = call float @dx.op.binary.f32(i32 36, float %479, float %482)  ; FMin(a,b)
  %484 = call float @dx.op.binary.f32(i32 35, float %475, float %483)  ; FMax(a,b)
  %485 = call float @dx.op.binary.f32(i32 35, float %479, float %482)  ; FMax(a,b)
  %486 = call float @dx.op.binary.f32(i32 36, float %477, float %485)  ; FMin(a,b)
  %487 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %484)  ; FMax(a,b)
  %488 = fcmp fast oge float %486, %487
  %489 = select i1 %488, float %484, float 1.000000e+07
  br label %536

; <label>:490                                     ; preds = %432
  %491 = fsub fast float 1.000000e+00, %445
  %492 = icmp eq i32 %256, 0
  br i1 %492, label %521, label %493

; <label>:493                                     ; preds = %490
  br label %494

; <label>:494                                     ; preds = %517, %493
  %495 = phi i32 [ %518, %517 ], [ %256, %493 ]
  %496 = uitofp i32 %495 to float
  %497 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %14, float %444, float %491, float undef, float undef, i32 0, i32 0, i32 undef, float %496)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %498 = extractvalue %dx.types.ResRet.f32 %497, 0
  %499 = extractvalue %dx.types.ResRet.f32 %497, 1
  %500 = extractvalue %dx.types.ResRet.f32 %497, 2
  %501 = fcmp fast oeq float %498, 0.000000e+00
  %502 = fcmp ule float %254, %500
  %503 = fcmp uge float %254, %499
  %504 = or i1 %503, %502
  %505 = or i1 %501, %504
  br i1 %505, label %506, label %517, !dx.controlflow.hints !46

; <label>:506                                     ; preds = %494
  %507 = extractvalue %dx.types.ResRet.f32 %497, 3
  %508 = extractvalue %dx.types.CBufRet.f32 %441, 0
  %509 = and i32 %495, 31
  %510 = lshr i32 1024, %509
  %511 = uitofp i32 %510 to float
  %512 = fdiv fast float %508, %511
  %513 = add i32 %495, 1
  %514 = uitofp i32 %513 to float
  %515 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %514)  ; FMin(a,b)
  %516 = fptosi float %515 to i32
  br label %536

; <label>:517                                     ; preds = %494
  %518 = add i32 %495, -1
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %520, label %494, !llvm.loop !47

; <label>:520                                     ; preds = %517
  br label %521

; <label>:521                                     ; preds = %520, %490
  %522 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %13, float %444, float %491, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %523 = extractvalue %dx.types.ResRet.f32 %522, 0
  %524 = extractvalue %dx.types.ResRet.f32 %522, 1
  %525 = extractvalue %dx.types.ResRet.f32 %522, 2
  %526 = extractvalue %dx.types.ResRet.f32 %522, 3
  %527 = extractvalue %dx.types.CBufRet.f32 %441, 0
  %528 = fmul fast float %527, 9.765625e-04
  %529 = fcmp fast oeq float %523, 0.000000e+00
  %530 = fcmp ule float %254, %525
  %531 = fcmp uge float %254, %524
  %532 = or i1 %531, %530
  %533 = or i1 %529, %532
  %534 = zext i1 %533 to i32
  %535 = xor i32 %534, 1
  br label %536

; <label>:536                                     ; preds = %521, %506, %461
  %537 = phi float [ %489, %461 ], [ %512, %506 ], [ %528, %521 ]
  %538 = phi float [ %247, %461 ], [ %498, %506 ], [ %523, %521 ]
  %539 = phi float [ %248, %461 ], [ %499, %506 ], [ %524, %521 ]
  %540 = phi float [ %249, %461 ], [ %500, %506 ], [ %525, %521 ]
  %541 = phi float [ %250, %461 ], [ %507, %506 ], [ %526, %521 ]
  %542 = phi i32 [ 0, %461 ], [ 0, %506 ], [ %535, %521 ]
  %543 = phi i32 [ 10, %461 ], [ %516, %506 ], [ 1, %521 ]
  %544 = icmp eq i32 %542, 0
  %545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %546 = extractvalue %dx.types.CBufRet.f32 %545, 2
  %547 = call float @dx.op.binary.f32(i32 35, float %537, float %546)  ; FMax(a,b)
  %548 = call float @dx.op.binary.f32(i32 36, float %433, float %547)  ; FMin(a,b)
  %549 = icmp eq i32 %197, 0
  br i1 %549, label %605, label %550, !dx.controlflow.hints !49

; <label>:550                                     ; preds = %536
  %551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %552 = extractvalue %dx.types.CBufRet.f32 %551, 0
  %553 = extractvalue %dx.types.CBufRet.f32 %551, 1
  %554 = extractvalue %dx.types.CBufRet.f32 %551, 2
  %555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %556 = extractvalue %dx.types.CBufRet.f32 %555, 0
  %557 = extractvalue %dx.types.CBufRet.f32 %555, 1
  %558 = extractvalue %dx.types.CBufRet.f32 %555, 2
  %559 = fsub fast float %252, %556
  %560 = fsub fast float %253, %557
  %561 = fsub fast float %254, %558
  %562 = fmul fast float %559, %552
  %563 = fmul fast float %560, %553
  %564 = fmul fast float %561, %554
  %565 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %566 = extractvalue %dx.types.CBufRet.i32 %565, 3
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %571, label %568, !dx.controlflow.hints !50

; <label>:568                                     ; preds = %550
  %569 = call float @dx.op.unary.f32(i32 22, float %562)  ; Frc(value)
  %570 = call float @dx.op.unary.f32(i32 22, float %563)  ; Frc(value)
  br label %571

; <label>:571                                     ; preds = %568, %550
  %572 = phi float [ %569, %568 ], [ %562, %550 ]
  %573 = phi float [ %570, %568 ], [ %563, %550 ]
  %574 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %11, float %572, float %573, float %564, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %575 = extractvalue %dx.types.ResRet.f32 %574, 0
  %576 = fmul fast float %575, 2.000000e+00
  %577 = fadd fast float %576, -1.000000e+00
  %578 = extractvalue %dx.types.CBufRet.f32 %551, 3
  %579 = fmul fast float %577, %578
  %580 = fcmp fast olt float %579, 0.000000e+00
  %581 = fcmp fast oge float %564, 0.000000e+00
  %582 = fcmp fast ole float %564, 1.000000e+00
  br i1 %567, label %585, label %583, !dx.controlflow.hints !51

; <label>:583                                     ; preds = %571
  %584 = and i1 %581, %582
  br label %595

; <label>:585                                     ; preds = %571
  %586 = fcmp fast oge float %562, 0.000000e+00
  %587 = fcmp fast oge float %563, 0.000000e+00
  %588 = and i1 %586, %587
  %589 = and i1 %581, %588
  %590 = fcmp fast ole float %562, 1.000000e+00
  %591 = fcmp fast ole float %563, 1.000000e+00
  %592 = and i1 %590, %591
  %593 = and i1 %582, %592
  %594 = and i1 %589, %593
  br label %595

; <label>:595                                     ; preds = %585, %583
  %596 = phi i1 [ %584, %583 ], [ %594, %585 ]
  %597 = and i1 %580, %596
  %598 = call float @dx.op.unary.f32(i32 6, float %579)  ; FAbs(value)
  %599 = extractvalue %dx.types.CBufRet.f32 %545, 1
  %600 = extractvalue %dx.types.CBufRet.f32 %545, 0
  %601 = call float @dx.op.binary.f32(i32 35, float %598, float %600)  ; FMax(a,b)
  %602 = select i1 %597, float %599, float %601
  %603 = zext i1 %597 to i32
  %604 = call float @dx.op.binary.f32(i32 36, float %548, float %602)  ; FMin(a,b)
  br label %605

; <label>:605                                     ; preds = %595, %536
  %606 = phi float [ %604, %595 ], [ %548, %536 ]
  %607 = phi i32 [ %603, %595 ], [ 0, %536 ]
  %608 = extractvalue %dx.types.CBufRet.f32 %264, 2
  %609 = fmul fast float %608, %255
  %610 = call float @dx.op.unary.f32(i32 23, float %609)  ; Log(value)
  %611 = fmul fast float %610, 0x3FE62E4300000000
  %612 = call float @dx.op.binary.f32(i32 35, float %611, float 1.000000e+00)  ; FMax(a,b)
  %613 = fmul fast float %612, 0x47EFFFFFE0000000
  %614 = call float @dx.op.binary.f32(i32 36, float %613, float %606)  ; FMin(a,b)
  %615 = call float @dx.op.binary.f32(i32 35, float %614, float %265)  ; FMax(a,b)
  %616 = fsub fast float %223, %255
  %617 = fadd fast float %616, 0x3F1A36E2E0000000
  %618 = call float @dx.op.binary.f32(i32 36, float %617, float %615)  ; FMin(a,b)
  %619 = icmp eq i32 %435, 0
  br i1 %619, label %716, label %620, !dx.controlflow.hints !52

; <label>:620                                     ; preds = %605
  %621 = fcmp fast olt float %617, %615
  %622 = fmul fast float %35, %64
  %623 = fmul fast float %622, %618
  %624 = fadd fast float %623, %254
  %625 = fmul fast float %36, %64
  %626 = fmul fast float %625, %618
  %627 = fadd fast float %626, %254
  %628 = fmul fast float %37, %64
  %629 = fmul fast float %628, %618
  %630 = fadd fast float %629, %254
  br i1 %621, label %631, label %636, !dx.controlflow.hints !53

; <label>:631                                     ; preds = %620
  %632 = fmul fast float %618, %62
  %633 = fmul fast float %618, %63
  %634 = fadd fast float %632, %252
  %635 = fadd fast float %633, %253
  br label %636

; <label>:636                                     ; preds = %631, %620
  %637 = phi float [ %634, %631 ], [ %252, %620 ]
  %638 = phi float [ %635, %631 ], [ %253, %620 ]
  %639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %640 = extractvalue %dx.types.CBufRet.f32 %639, 0
  %641 = extractvalue %dx.types.CBufRet.f32 %639, 1
  %642 = fsub fast float %637, %640
  %643 = fsub fast float %638, %641
  %644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %645 = extractvalue %dx.types.CBufRet.f32 %644, 0
  %646 = extractvalue %dx.types.CBufRet.f32 %644, 1
  %647 = fmul fast float %642, %645
  %648 = fmul fast float %643, %646
  %649 = fsub fast float 1.000000e+00, %648
  %650 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %651 = extractvalue %dx.types.CBufRet.i32 %650, 3
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %659, label %653, !dx.controlflow.hints !40

; <label>:653                                     ; preds = %636
  %654 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %12, float %647, float %649, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %655 = extractvalue %dx.types.ResRet.f32 %654, 0
  %656 = extractvalue %dx.types.ResRet.f32 %654, 1
  %657 = extractvalue %dx.types.ResRet.f32 %654, 2
  %658 = extractvalue %dx.types.ResRet.f32 %654, 3
  br label %665

; <label>:659                                     ; preds = %636
  %660 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %13, float %647, float %649, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %661 = extractvalue %dx.types.ResRet.f32 %660, 0
  %662 = extractvalue %dx.types.ResRet.f32 %660, 1
  %663 = extractvalue %dx.types.ResRet.f32 %660, 2
  %664 = extractvalue %dx.types.ResRet.f32 %660, 3
  br label %665

; <label>:665                                     ; preds = %659, %653
  %666 = phi float [ %655, %653 ], [ %661, %659 ]
  %667 = phi float [ %656, %653 ], [ %662, %659 ]
  %668 = phi float [ %657, %653 ], [ %663, %659 ]
  %669 = phi float [ %658, %653 ], [ %664, %659 ]
  %670 = extractvalue %dx.types.CBufRet.f32 %644, 3
  %671 = fmul fast float %670, %667
  %672 = fmul fast float %671, %666
  %673 = fsub fast float %671, %672
  %674 = fcmp fast ole float %673, 0.000000e+00
  %675 = extractvalue %dx.types.CBufRet.f32 %639, 2
  %676 = fadd fast float %672, %675
  %677 = fmul fast float %670, %668
  %678 = fadd fast float %677, %675
  %679 = fdiv fast float 1.000000e+00, %673
  %680 = select i1 %674, float 1.000000e+06, float %679
  %681 = fsub fast float %624, %676
  %682 = fmul fast float %680, %681
  %683 = call float @dx.op.unary.f32(i32 7, float %682)  ; Saturate(value)
  %684 = extractvalue %dx.types.CBufRet.f32 %644, 2
  %685 = fmul fast float %684, %683
  %686 = fsub fast float %684, %685
  %687 = fcmp fast olt float %624, %678
  %688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %689 = extractvalue %dx.types.CBufRet.f32 %688, 3
  %690 = select i1 %687, float %689, float 1.000000e+00
  %691 = fmul fast float %686, %690
  %692 = fsub fast float %627, %676
  %693 = fmul fast float %680, %692
  %694 = call float @dx.op.unary.f32(i32 7, float %693)  ; Saturate(value)
  %695 = fmul fast float %684, %694
  %696 = fsub fast float %684, %695
  %697 = fcmp fast olt float %627, %678
  %698 = select i1 %697, float %689, float 1.000000e+00
  %699 = fmul fast float %696, %698
  %700 = fadd fast float %699, %691
  %701 = fsub fast float %630, %676
  %702 = fmul fast float %680, %701
  %703 = call float @dx.op.unary.f32(i32 7, float %702)  ; Saturate(value)
  %704 = fmul fast float %684, %703
  %705 = fsub fast float %684, %704
  %706 = fcmp fast olt float %630, %678
  %707 = select i1 %706, float %689, float 1.000000e+00
  %708 = fmul fast float %705, %707
  %709 = fadd fast float %700, %708
  %710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %711 = extractvalue %dx.types.CBufRet.f32 %710, 2
  %712 = fmul fast float %618, 0x3FD5555560000000
  %713 = fmul fast float %712, %669
  %714 = fmul fast float %713, %711
  %715 = fmul fast float %714, %709
  br label %716

; <label>:716                                     ; preds = %665, %605
  %717 = phi float [ %715, %665 ], [ 0.000000e+00, %605 ]
  %718 = icmp eq i32 %607, 0
  br i1 %718, label %899, label %719, !dx.controlflow.hints !54

; <label>:719                                     ; preds = %716
  %720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %721 = extractvalue %dx.types.CBufRet.f32 %720, 3
  %722 = fmul fast float %721, %255
  %723 = fcmp fast oeq float %722, 0.000000e+00
  br i1 %723, label %738, label %724, !dx.controlflow.hints !55

; <label>:724                                     ; preds = %719
  %725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %726 = extractvalue %dx.types.CBufRet.f32 %725, 3
  %727 = fmul fast float %726, %722
  %728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %729 = extractvalue %dx.types.CBufRet.f32 %728, 0
  %730 = extractvalue %dx.types.CBufRet.f32 %728, 1
  %731 = extractvalue %dx.types.CBufRet.f32 %728, 2
  %732 = fmul fast float %729, %727
  %733 = fmul fast float %730, %727
  %734 = fmul fast float %731, %727
  %735 = call float @dx.op.unary.f32(i32 23, float %732)  ; Log(value)
  %736 = call float @dx.op.unary.f32(i32 23, float %733)  ; Log(value)
  %737 = call float @dx.op.unary.f32(i32 23, float %734)  ; Log(value)
  br label %738

; <label>:738                                     ; preds = %724, %719
  %739 = phi float [ %735, %724 ], [ 0.000000e+00, %719 ]
  %740 = phi float [ %736, %724 ], [ 0.000000e+00, %719 ]
  %741 = phi float [ %737, %724 ], [ 0.000000e+00, %719 ]
  %742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %743 = extractvalue %dx.types.CBufRet.f32 %742, 0
  %744 = extractvalue %dx.types.CBufRet.f32 %742, 1
  %745 = extractvalue %dx.types.CBufRet.f32 %742, 2
  %746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %747 = extractvalue %dx.types.CBufRet.f32 %746, 0
  %748 = extractvalue %dx.types.CBufRet.f32 %746, 1
  %749 = extractvalue %dx.types.CBufRet.f32 %746, 2
  %750 = fsub fast float %252, %747
  %751 = fsub fast float %253, %748
  %752 = fsub fast float %254, %749
  %753 = fmul fast float %750, %743
  %754 = fmul fast float %751, %744
  %755 = fmul fast float %752, %745
  %756 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %757 = extractvalue %dx.types.CBufRet.i32 %756, 0
  %758 = extractvalue %dx.types.CBufRet.i32 %756, 1
  %759 = uitofp i32 %757 to float
  %760 = uitofp i32 %758 to float
  %761 = fmul fast float %753, %759
  %762 = fmul fast float %754, %760
  %763 = fadd fast float %761, 5.000000e-01
  %764 = fadd fast float %762, 5.000000e-01
  %765 = call float @dx.op.unary.f32(i32 22, float %763)  ; Frc(value)
  %766 = call float @dx.op.unary.f32(i32 22, float %764)  ; Frc(value)
  %767 = call float @dx.op.unary.f32(i32 27, float %763)  ; Round_ni(value)
  %768 = call float @dx.op.unary.f32(i32 27, float %764)  ; Round_ni(value)
  %769 = fadd fast float %767, 1.000000e+00
  %770 = fadd fast float %768, 1.000000e+00
  %771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %772 = extractvalue %dx.types.CBufRet.f32 %771, 0
  %773 = extractvalue %dx.types.CBufRet.f32 %771, 1
  %774 = fmul fast float %772, %769
  %775 = fmul fast float %773, %770
  %776 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %12, float %774, float %775, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %777 = extractvalue %dx.types.ResRet.f32 %776, 0
  %778 = extractvalue %dx.types.ResRet.f32 %776, 1
  %779 = extractvalue %dx.types.ResRet.f32 %776, 2
  %780 = extractvalue %dx.types.ResRet.f32 %776, 3
  %781 = extractvalue %dx.types.CBufRet.i32 %756, 2
  %782 = extractvalue %dx.types.CBufRet.f32 %771, 2
  %783 = uitofp i32 %781 to float
  %784 = fadd fast float %783, -1.000000e+00
  %785 = fmul fast float %784, %777
  %786 = fmul fast float %784, %778
  %787 = fmul fast float %784, %779
  %788 = fmul fast float %784, %780
  %789 = fadd fast float %785, 5.000000e-01
  %790 = fadd fast float %786, 5.000000e-01
  %791 = fadd fast float %787, 5.000000e-01
  %792 = fadd fast float %788, 5.000000e-01
  %793 = fptoui float %789 to i32
  %794 = fptoui float %790 to i32
  %795 = fptoui float %791 to i32
  %796 = fptoui float %792 to i32
  %797 = uitofp i32 %793 to float
  %798 = uitofp i32 %794 to float
  %799 = uitofp i32 %795 to float
  %800 = uitofp i32 %796 to float
  %801 = fadd fast float %797, 5.000000e-01
  %802 = fadd fast float %798, 5.000000e-01
  %803 = fadd fast float %799, 5.000000e-01
  %804 = fadd fast float %800, 5.000000e-01
  %805 = fmul fast float %801, %782
  %806 = fmul fast float %802, %782
  %807 = fmul fast float %803, %782
  %808 = fmul fast float %804, %782
  %809 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %13, float %805, float %755, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %810 = extractvalue %dx.types.ResRet.f32 %809, 0
  %811 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %13, float %806, float %755, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %812 = extractvalue %dx.types.ResRet.f32 %811, 0
  %813 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %13, float %807, float %755, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %814 = extractvalue %dx.types.ResRet.f32 %813, 0
  %815 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %13, float %808, float %755, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %816 = extractvalue %dx.types.ResRet.f32 %815, 0
  %817 = fsub fast float %814, %816
  %818 = fmul fast float %817, %765
  %819 = fadd fast float %818, %816
  %820 = fsub fast float %812, %810
  %821 = fmul fast float %820, %765
  %822 = fadd fast float %821, %810
  %823 = fsub fast float %822, %819
  %824 = fmul fast float %823, %766
  %825 = fadd fast float %824, %819
  %826 = fcmp fast ogt float %825, 0.000000e+00
  br i1 %826, label %827, label %895, !dx.controlflow.hints !56

; <label>:827                                     ; preds = %738
  %828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %829 = extractvalue %dx.types.CBufRet.f32 %828, 0
  %830 = extractvalue %dx.types.CBufRet.f32 %828, 1
  %831 = extractvalue %dx.types.CBufRet.f32 %828, 2
  %832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %833 = extractvalue %dx.types.CBufRet.f32 %832, 0
  %834 = extractvalue %dx.types.CBufRet.f32 %832, 1
  %835 = extractvalue %dx.types.CBufRet.f32 %832, 2
  %836 = fmul fast float %751, %743
  %837 = fmul fast float %752, %743
  %838 = fadd fast float %753, %833
  %839 = fadd fast float %836, %834
  %840 = fadd fast float %837, %835
  %841 = fmul fast float %838, %829
  %842 = fmul fast float %839, %829
  %843 = fmul fast float %840, %829
  %844 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %10, float %841, float %842, float %843, float undef, i32 0, i32 0, i32 0, float %739)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %845 = extractvalue %dx.types.ResRet.f32 %844, 0
  %846 = fmul fast float %838, %830
  %847 = fmul fast float %839, %830
  %848 = fmul fast float %840, %830
  %849 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %10, float %846, float %847, float %848, float undef, i32 0, i32 0, i32 0, float %740)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %850 = extractvalue %dx.types.ResRet.f32 %849, 1
  %851 = fmul fast float %838, %831
  %852 = fmul fast float %839, %831
  %853 = fmul fast float %840, %831
  %854 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %10, float %851, float %852, float %853, float undef, i32 0, i32 0, i32 0, float %741)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %855 = extractvalue %dx.types.ResRet.f32 %854, 2
  %856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %857 = extractvalue %dx.types.CBufRet.f32 %856, 1
  %858 = fmul fast float %850, %845
  %859 = fmul fast float %858, %855
  %860 = call float @dx.op.unary.f32(i32 23, float %859)  ; Log(value)
  %861 = fmul fast float %860, %857
  %862 = call float @dx.op.unary.f32(i32 21, float %861)  ; Exp(value)
  %863 = extractvalue %dx.types.CBufRet.f32 %856, 2
  %864 = fmul fast float %825, %825
  %865 = fmul fast float %864, %862
  %866 = fmul fast float %865, %863
  %867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %868 = extractvalue %dx.types.CBufRet.f32 %867, 3
  %869 = fmul fast float %868, %866
  %870 = bitcast float %869 to i32
  %871 = sitofp i32 %870 to float
  %872 = fptosi float %871 to i32
  %873 = bitcast i32 %872 to float
  %874 = fsub fast float 1.000000e+00, %866
  %875 = bitcast float %874 to i32
  %876 = sitofp i32 %875 to float
  %877 = fptosi float %876 to i32
  %878 = bitcast i32 %877 to float
  %879 = fadd fast float %873, %878
  %880 = bitcast float %879 to i32
  %881 = sub nsw i32 2129859010, %880
  %882 = bitcast i32 %881 to float
  %883 = fmul fast float %882, %873
  %884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %885 = extractvalue %dx.types.CBufRet.f32 %884, 3
  %886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %887 = extractvalue %dx.types.CBufRet.f32 %886, 0
  %888 = fmul fast float %883, %887
  %889 = fadd fast float %888, 1.000000e+00
  %890 = bitcast float %889 to i32
  %891 = sub nsw i32 2129859010, %890
  %892 = bitcast i32 %891 to float
  %893 = fmul fast float %883, %885
  %894 = fmul fast float %893, %892
  br label %895

; <label>:895                                     ; preds = %827, %738
  %896 = phi float [ %894, %827 ], [ %825, %738 ]
  %897 = fmul fast float %896, %618
  %898 = fadd fast float %897, %717
  br label %899

; <label>:899                                     ; preds = %895, %716
  %900 = phi float [ %898, %895 ], [ %717, %716 ]
  br i1 %544, label %1026, label %901, !dx.controlflow.hints !57

; <label>:901                                     ; preds = %899
  %902 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %903 = extractvalue %dx.types.CBufRet.i32 %902, 0
  %904 = icmp ne i32 %903, 0
  %905 = zext i1 %904 to i32
  %906 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %907 = extractvalue %dx.types.CBufRet.i32 %906, 0
  %908 = icmp eq i32 %907, 0
  br i1 %908, label %942, label %909

; <label>:909                                     ; preds = %901
  br label %910

; <label>:910                                     ; preds = %937, %909
  %911 = phi i32 [ %938, %937 ], [ 0, %909 ]
  %912 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %911, i32 0)  ; BufferLoad(srv,index,wot)
  %913 = extractvalue %dx.types.ResRet.f32 %912, 0
  %914 = extractvalue %dx.types.ResRet.f32 %912, 1
  %915 = extractvalue %dx.types.ResRet.f32 %912, 2
  %916 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %911, i32 16)  ; BufferLoad(srv,index,wot)
  %917 = extractvalue %dx.types.ResRet.f32 %916, 0
  %918 = extractvalue %dx.types.ResRet.f32 %916, 1
  %919 = extractvalue %dx.types.ResRet.f32 %916, 2
  %920 = fsub fast float %913, %917
  %921 = fsub fast float %914, %918
  %922 = fsub fast float %915, %919
  %923 = fadd fast float %917, %913
  %924 = fadd fast float %918, %914
  %925 = fadd fast float %919, %915
  %926 = fcmp fast olt float %252, %920
  %927 = fcmp fast olt float %253, %921
  %928 = fcmp fast olt float %254, %922
  %929 = or i1 %926, %927
  %930 = or i1 %928, %929
  %931 = fcmp fast ogt float %252, %923
  %932 = fcmp fast ogt float %253, %924
  %933 = fcmp fast ogt float %254, %925
  %934 = or i1 %931, %932
  %935 = or i1 %933, %934
  %936 = or i1 %930, %935
  br i1 %936, label %937, label %940, !dx.controlflow.hints !58

; <label>:937                                     ; preds = %910
  %938 = add nuw i32 %911, 1
  %939 = icmp ult i32 %938, %907
  br i1 %939, label %910, label %940

; <label>:940                                     ; preds = %937, %910
  %941 = phi i32 [ 255, %937 ], [ %911, %910 ]
  br label %942

; <label>:942                                     ; preds = %940, %901
  %943 = phi i32 [ 255, %901 ], [ %941, %940 ]
  %944 = icmp eq i32 %943, 255
  br i1 %944, label %950, label %945, !dx.controlflow.hints !59

; <label>:945                                     ; preds = %942
  %946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %943, i32 156)  ; BufferLoad(srv,index,wot)
  %947 = extractvalue %dx.types.ResRet.i32 %946, 0
  %948 = icmp ne i32 %947, 0
  %949 = zext i1 %948 to i32
  br label %950

; <label>:950                                     ; preds = %945, %942
  %951 = phi i32 [ %949, %945 ], [ %905, %942 ]
  %952 = icmp eq i32 %951, 0
  br i1 %952, label %953, label %1022, !dx.controlflow.hints !60

; <label>:953                                     ; preds = %950
  %954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %955 = extractvalue %dx.types.CBufRet.f32 %954, 3
  %956 = extractvalue %dx.types.CBufRet.f32 %454, 0
  %957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %958 = extractvalue %dx.types.CBufRet.f32 %957, 2
  %959 = extractvalue %dx.types.CBufRet.f32 %957, 3
  br i1 %944, label %970, label %960, !dx.controlflow.hints !61

; <label>:960                                     ; preds = %953
  %961 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %943, i32 60)  ; BufferLoad(srv,index,wot)
  %962 = extractvalue %dx.types.ResRet.f32 %961, 0
  %963 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %943, i32 64)  ; BufferLoad(srv,index,wot)
  %964 = extractvalue %dx.types.ResRet.f32 %963, 0
  %965 = extractvalue %dx.types.ResRet.f32 %963, 1
  %966 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %943, i32 72)  ; BufferLoad(srv,index,wot)
  %967 = extractvalue %dx.types.ResRet.f32 %966, 0
  %968 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %943, i32 96)  ; BufferLoad(srv,index,wot)
  %969 = extractvalue %dx.types.ResRet.f32 %968, 0
  br label %970

; <label>:970                                     ; preds = %960, %953
  %971 = phi float [ %964, %960 ], [ %958, %953 ]
  %972 = phi float [ %965, %960 ], [ %959, %953 ]
  %973 = phi float [ %969, %960 ], [ %956, %953 ]
  %974 = phi float [ %967, %960 ], [ %455, %953 ]
  %975 = phi float [ %962, %960 ], [ %457, %953 ]
  %976 = call float @dx.op.binary.f32(i32 35, float %538, float 0.000000e+00)  ; FMax(a,b)
  %977 = call float @dx.op.binary.f32(i32 36, float %976, float 1.000000e+00)  ; FMin(a,b)
  %978 = call float @dx.op.unary.f32(i32 24, float %977)  ; Sqrt(value)
  %979 = call float @dx.op.binary.f32(i32 35, float %541, float 0x3F847AE140000000)  ; FMax(a,b)
  %980 = fsub fast float %539, %254
  %981 = fsub fast float %254, %540
  %982 = call float @dx.op.binary.f32(i32 36, float %981, float %980)  ; FMin(a,b)
  %983 = fdiv fast float %982, %979
  %984 = call float @dx.op.unary.f32(i32 7, float %983)  ; Saturate(value)
  %985 = fsub fast float %254, %974
  %986 = fdiv fast float %985, %975
  %987 = call float @dx.op.unary.f32(i32 7, float %986)  ; Saturate(value)
  %988 = fsub fast float 1.000000e+00, %987
  %989 = fmul float %984, %988
  %990 = fmul float %989, %989
  %991 = fmul fast float %978, %955
  %992 = fmul fast float %991, %990
  %993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %994 = extractvalue %dx.types.CBufRet.f32 %993, 2
  %995 = extractvalue %dx.types.CBufRet.f32 %993, 1
  %996 = fsub fast float %992, %995
  %997 = fsub fast float %994, %995
  %998 = fdiv fast float %996, %997
  %999 = call float @dx.op.unary.f32(i32 7, float %998)  ; Saturate(value)
  %1000 = fmul fast float %999, %973
  %1001 = fcmp fast ogt float %972, 0.000000e+00
  br i1 %1001, label %1002, label %1022, !dx.controlflow.hints !62

; <label>:1002                                    ; preds = %970
  %1003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1004 = extractvalue %dx.types.CBufRet.f32 %1003, 0
  %1005 = extractvalue %dx.types.CBufRet.f32 %1003, 1
  %1006 = extractvalue %dx.types.CBufRet.f32 %1003, 2
  %1007 = fsub fast float %252, %1004
  %1008 = fsub fast float %253, %1005
  %1009 = fsub fast float %254, %1006
  %1010 = fmul fast float %1007, %1007
  %1011 = fmul fast float %1008, %1008
  %1012 = fadd fast float %1010, %1011
  %1013 = fmul fast float %1009, %1009
  %1014 = fadd fast float %1012, %1013
  %1015 = call float @dx.op.unary.f32(i32 24, float %1014)  ; Sqrt(value)
  %1016 = fsub fast float %1015, %971
  %1017 = fsub fast float %972, %971
  %1018 = fdiv fast float %1016, %1017
  %1019 = call float @dx.op.unary.f32(i32 7, float %1018)  ; Saturate(value)
  %1020 = fmul fast float %1019, %1019
  %1021 = fmul fast float %1020, %1000
  br label %1022

; <label>:1022                                    ; preds = %1002, %970, %950
  %1023 = phi float [ 0.000000e+00, %950 ], [ %1021, %1002 ], [ %1000, %970 ]
  %1024 = fmul fast float %1023, %618
  %1025 = fadd fast float %1024, %900
  br label %1026

; <label>:1026                                    ; preds = %1022, %899
  %1027 = phi float [ %1025, %1022 ], [ %900, %899 ]
  %1028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1029 = extractvalue %dx.types.CBufRet.f32 %1028, 1
  %1030 = fcmp fast ogt float %1027, %1029
  br i1 %1030, label %1031, label %1043, !dx.controlflow.hints !63

; <label>:1031                                    ; preds = %1026
  %1032 = fmul fast float %1027, 0xBFF7154760000000
  %1033 = call float @dx.op.unary.f32(i32 21, float %1032)  ; Exp(value)
  %1034 = call float @dx.op.unary.f32(i32 7, float %1033)  ; Saturate(value)
  %1035 = icmp eq i32 %258, 0
  br i1 %1035, label %1036, label %1037, !dx.controlflow.hints !64

; <label>:1036                                    ; preds = %1031
  br label %1037

; <label>:1037                                    ; preds = %1036, %1031
  %1038 = phi i32 [ %258, %1031 ], [ 1, %1036 ]
  %1039 = phi float [ %259, %1031 ], [ %255, %1036 ]
  %1040 = fadd fast float %618, %260
  %1041 = fadd fast float %1027, %261
  %1042 = fmul fast float %1034, %251
  br label %1043

; <label>:1043                                    ; preds = %1037, %1026
  %1044 = phi float [ %1042, %1037 ], [ %251, %1026 ]
  %1045 = phi i32 [ %1038, %1037 ], [ %258, %1026 ]
  %1046 = phi float [ %1039, %1037 ], [ %259, %1026 ]
  %1047 = phi float [ %1040, %1037 ], [ %260, %1026 ]
  %1048 = phi float [ %1041, %1037 ], [ %261, %1026 ]
  %1049 = fadd fast float %618, %255
  %1050 = fmul fast float %618, %62
  %1051 = fmul fast float %618, %63
  %1052 = fmul fast float %618, %64
  %1053 = fadd fast float %1050, %252
  %1054 = fadd fast float %1051, %253
  %1055 = fadd fast float %1052, %254
  %1056 = fcmp fast olt float %1049, %223
  %1057 = extractvalue %dx.types.CBufRet.f32 %1028, 2
  %1058 = fcmp fast olt float %1057, %1044
  %1059 = and i1 %1056, %1058
  br i1 %1059, label %246, label %1060

; <label>:1060                                    ; preds = %1043
  br label %1061

; <label>:1061                                    ; preds = %1060, %195
  %1062 = phi float [ 0.000000e+00, %195 ], [ %1046, %1060 ]
  %1063 = phi float [ 0.000000e+00, %195 ], [ %1047, %1060 ]
  %1064 = phi float [ 0.000000e+00, %195 ], [ %1048, %1060 ]
  %1065 = extractvalue %dx.types.CBufRet.f32 %56, 3
  %1066 = fmul fast float %1065, %1062
  %1067 = fdiv fast float 1.000000e+00, %1063
  %1068 = fmul fast float %1067, %1064
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %17, i32 %18, i32 undef, float %1066, float %1068, float %1064, float %1066, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!dx.entryPoints = !{!27}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !16, !18, !21}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !15}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 16, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture3D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 4, i32 0, !7}
!9 = !{i32 2, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 4, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 9, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.StructuredBuffer<VolumetricBBoxGpu>"* undef, !"", i32 0, i32 25, i32 1, i32 12, i32 0, !14}
!14 = !{i32 1, i32 164}
!15 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!16 = !{!17}
!17 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 7, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!18 = !{!19, !20}
!19 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!20 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!21 = !{!22, !23, !24, !25, !26}
!22 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!23 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!24 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!25 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!26 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!27 = !{void ()* @cs_fog_raymarching_clouds_heightmap_particles, !"cs_fog_raymarching_clouds_heightmap_particles", null, !4, !28}
!28 = !{i32 0, i64 272, i32 4, !29}
!29 = !{i32 8, i32 8, i32 1}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 1}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}

