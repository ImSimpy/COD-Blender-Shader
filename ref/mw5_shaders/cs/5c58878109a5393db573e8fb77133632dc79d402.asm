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
; shader hash: 58bf35bc1f0a7e9a8801d802b1dd0b4b
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
;                                   texture     f32          2d      T0            t27     1
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

define void @cs_fog_raymarching_clouds_particles_brfog() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %29 = extractvalue %dx.types.ResRet.f32 %28, 1
  %30 = fadd fast float %29, %23
  %31 = call float @dx.op.unary.f32(i32 22, float %30)  ; Frc(value)
  %32 = fadd fast float %19, 5.000000e-01
  %33 = fadd fast float %20, 5.000000e-01
  %34 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %35 = extractvalue %dx.types.CBufRet.f32 %34, 2
  %36 = extractvalue %dx.types.CBufRet.f32 %34, 3
  %37 = fmul fast float %35, %32
  %38 = fmul fast float %36, %33
  %39 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %40 = extractvalue %dx.types.CBufRet.f32 %39, 0
  %41 = extractvalue %dx.types.CBufRet.f32 %39, 1
  %42 = extractvalue %dx.types.CBufRet.f32 %39, 2
  %43 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.f32 %43, 0
  %45 = extractvalue %dx.types.CBufRet.f32 %43, 1
  %46 = fmul fast float %37, %44
  %47 = fmul fast float %38, %45
  %48 = fadd fast float %46, %40
  %49 = fadd fast float %47, %41
  %50 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.f32 %50, 2
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 0
  %54 = extractvalue %dx.types.CBufRet.f32 %52, 1
  %55 = extractvalue %dx.types.CBufRet.f32 %52, 2
  %56 = fsub fast float -0.000000e+00, %53
  %57 = fsub fast float -0.000000e+00, %54
  %58 = fsub fast float -0.000000e+00, %55
  %59 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.i32 %59, 3
  %61 = icmp eq i32 %60, 0
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 2
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 2
  %66 = fsub fast float %63, %42
  %67 = fadd fast float %66, %65
  br i1 %61, label %79, label %68, !dx.controlflow.hints !30

; <label>:68                                      ; preds = %0
  %69 = fsub fast float -0.000000e+00, %49
  %70 = fsub fast float -0.000000e+00, %48
  %71 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %70, float %69, float %67)  ; Dot3(ax,ay,az,bx,by,bz)
  %72 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %56, float %57, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %73 = fdiv fast float 1.000000e+00, %72
  %74 = fmul fast float %73, %71
  %75 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %70, float %69, float %66)  ; Dot3(ax,ay,az,bx,by,bz)
  %76 = fmul fast float %73, %75
  %77 = call float @dx.op.binary.f32(i32 36, float %74, float %76)  ; FMin(a,b)
  %78 = call float @dx.op.binary.f32(i32 35, float %74, float %76)  ; FMax(a,b)
  br label %112

; <label>:79                                      ; preds = %0
  %80 = fdiv fast float 1.000000e+00, %56
  %81 = fdiv fast float 1.000000e+00, %57
  %82 = fdiv fast float 1.000000e+00, %58
  %83 = extractvalue %dx.types.CBufRet.f32 %62, 0
  %84 = extractvalue %dx.types.CBufRet.f32 %62, 1
  %85 = extractvalue %dx.types.CBufRet.f32 %64, 0
  %86 = extractvalue %dx.types.CBufRet.f32 %64, 1
  %87 = fsub fast float %83, %48
  %88 = fmul fast float %87, %80
  %89 = fadd fast float %87, %85
  %90 = fmul fast float %89, %80
  %91 = call float @dx.op.binary.f32(i32 36, float %88, float %90)  ; FMin(a,b)
  %92 = call float @dx.op.binary.f32(i32 35, float %88, float %90)  ; FMax(a,b)
  %93 = fsub fast float %84, %49
  %94 = fmul fast float %93, %81
  %95 = fadd fast float %93, %86
  %96 = fmul fast float %95, %81
  %97 = call float @dx.op.binary.f32(i32 36, float %94, float %96)  ; FMin(a,b)
  %98 = call float @dx.op.binary.f32(i32 35, float %91, float %97)  ; FMax(a,b)
  %99 = call float @dx.op.binary.f32(i32 35, float %94, float %96)  ; FMax(a,b)
  %100 = call float @dx.op.binary.f32(i32 36, float %92, float %99)  ; FMin(a,b)
  %101 = fmul fast float %66, %82
  %102 = fmul fast float %67, %82
  %103 = call float @dx.op.binary.f32(i32 36, float %101, float %102)  ; FMin(a,b)
  %104 = call float @dx.op.binary.f32(i32 35, float %98, float %103)  ; FMax(a,b)
  %105 = call float @dx.op.binary.f32(i32 35, float %101, float %102)  ; FMax(a,b)
  %106 = call float @dx.op.binary.f32(i32 36, float %100, float %105)  ; FMin(a,b)
  %107 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %104)  ; FMax(a,b)
  %108 = fcmp fast ult float %106, %107
  br i1 %108, label %112, label %109, !dx.controlflow.hints !31

; <label>:109                                     ; preds = %79
  %110 = call float @dx.op.binary.f32(i32 36, float %104, float %106)  ; FMin(a,b)
  %111 = call float @dx.op.binary.f32(i32 35, float %104, float %106)  ; FMax(a,b)
  br label %112

; <label>:112                                     ; preds = %109, %79, %68
  %113 = phi float [ %77, %68 ], [ %110, %109 ], [ 0.000000e+00, %79 ]
  %114 = phi float [ %78, %68 ], [ %111, %109 ], [ 0.000000e+00, %79 ]
  %115 = fcmp fast oeq float %114, 0.000000e+00
  br i1 %115, label %119, label %116, !dx.controlflow.hints !32

; <label>:116                                     ; preds = %112
  %117 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %113)  ; FMin(a,b)
  %118 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %114)  ; FMax(a,b)
  br label %119

; <label>:119                                     ; preds = %116, %112
  %120 = phi float [ %118, %116 ], [ -1.000000e+00, %112 ]
  %121 = phi i32 [ 1, %116 ], [ 0, %112 ]
  %122 = phi float [ %117, %116 ], [ 0x47EFFFFFE0000000, %112 ]
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 3
  %125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.f32 %125, 0
  %127 = fsub fast float -0.000000e+00, %48
  %128 = fsub fast float -0.000000e+00, %49
  %129 = fsub fast float %124, %42
  %130 = fadd fast float %129, %126
  %131 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %127, float %128, float %130)  ; Dot3(ax,ay,az,bx,by,bz)
  %132 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %56, float %57, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %133 = fdiv fast float 1.000000e+00, %132
  %134 = fmul fast float %133, %131
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 2
  %137 = fsub fast float %136, %42
  %138 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %127, float %128, float %137)  ; Dot3(ax,ay,az,bx,by,bz)
  %139 = fmul fast float %133, %138
  %140 = call float @dx.op.binary.f32(i32 36, float %134, float %139)  ; FMin(a,b)
  %141 = call float @dx.op.binary.f32(i32 35, float %134, float %139)  ; FMax(a,b)
  %142 = call float @dx.op.binary.f32(i32 36, float %122, float %140)  ; FMin(a,b)
  %143 = call float @dx.op.binary.f32(i32 35, float %120, float %141)  ; FMax(a,b)
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 2
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 3
  %148 = fsub fast float %145, %42
  %149 = fadd fast float %148, %147
  %150 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %127, float %128, float %149)  ; Dot3(ax,ay,az,bx,by,bz)
  %151 = fmul fast float %133, %150
  %152 = fcmp fast olt float %151, 0.000000e+00
  %153 = fcmp olt float %55, -0.000000e+00
  %154 = and i1 %153, %152
  br i1 %154, label %159, label %155, !dx.controlflow.hints !33

; <label>:155                                     ; preds = %119
  %156 = fcmp ogt float %55, -0.000000e+00
  br i1 %156, label %157, label %159, !dx.controlflow.hints !34

; <label>:157                                     ; preds = %155
  %158 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %151)  ; FMax(a,b)
  br label %159

; <label>:159                                     ; preds = %157, %155, %119
  %160 = phi float [ 0.000000e+00, %119 ], [ %158, %157 ], [ 0.000000e+00, %155 ]
  %161 = phi float [ 0.000000e+00, %119 ], [ 0x47EFFFFFE0000000, %157 ], [ %151, %155 ]
  %162 = fcmp fast oeq float %161, 0.000000e+00
  br i1 %162, label %166, label %163, !dx.controlflow.hints !35

; <label>:163                                     ; preds = %159
  %164 = call float @dx.op.binary.f32(i32 36, float %142, float %160)  ; FMin(a,b)
  %165 = call float @dx.op.binary.f32(i32 35, float %143, float %161)  ; FMax(a,b)
  br label %166

; <label>:166                                     ; preds = %163, %159
  %167 = phi i32 [ 1, %163 ], [ 0, %159 ]
  %168 = phi float [ %165, %163 ], [ %143, %159 ]
  %169 = phi float [ %164, %163 ], [ %142, %159 ]
  %170 = fdiv fast float 1.000000e+00, %56
  %171 = fdiv fast float 1.000000e+00, %57
  %172 = fdiv fast float 1.000000e+00, %58
  %173 = call float @dx.op.binary.f32(i32 36, float %51, float %168)  ; FMin(a,b)
  %174 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %169)  ; FMax(a,b)
  %175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %176 = extractvalue %dx.types.CBufRet.f32 %175, 1
  %177 = fmul fast float %31, 2.000000e+00
  %178 = fadd fast float %177, -1.000000e+00
  %179 = fmul fast float %176, %178
  %180 = fadd fast float %179, %174
  %181 = fcmp fast olt float %180, %173
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.f32 %182, 2
  %184 = fcmp fast olt float %183, 1.000000e+00
  %185 = and i1 %184, %181
  br i1 %185, label %186, label %948

; <label>:186                                     ; preds = %166
  %187 = fmul fast float %180, %58
  %188 = fadd fast float %187, %42
  %189 = fmul fast float %180, %57
  %190 = fadd fast float %189, %49
  %191 = fmul fast float %180, %56
  %192 = fadd fast float %191, %48
  br label %193

; <label>:193                                     ; preds = %930, %186
  %194 = phi i32 [ %557, %930 ], [ undef, %186 ]
  %195 = phi float [ %558, %930 ], [ undef, %186 ]
  %196 = phi float [ %314, %930 ], [ undef, %186 ]
  %197 = phi float [ %315, %930 ], [ undef, %186 ]
  %198 = phi float [ %316, %930 ], [ undef, %186 ]
  %199 = phi float [ %317, %930 ], [ undef, %186 ]
  %200 = phi float [ %931, %930 ], [ 1.000000e+00, %186 ]
  %201 = phi float [ %940, %930 ], [ %192, %186 ]
  %202 = phi float [ %941, %930 ], [ %190, %186 ]
  %203 = phi float [ %942, %930 ], [ %188, %186 ]
  %204 = phi float [ %936, %930 ], [ %180, %186 ]
  %205 = phi i32 [ %319, %930 ], [ 10, %186 ]
  %206 = phi i32 [ %932, %930 ], [ 0, %186 ]
  %207 = phi float [ %933, %930 ], [ 0.000000e+00, %186 ]
  %208 = phi float [ %934, %930 ], [ 0.000000e+00, %186 ]
  %209 = phi float [ %935, %930 ], [ 0.000000e+00, %186 ]
  %210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = extractvalue %dx.types.CBufRet.f32 %210, 1
  %212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.f32 %212, 0
  %214 = extractvalue %dx.types.CBufRet.f32 %212, 1
  %215 = fsub fast float %201, %213
  %216 = fsub fast float %202, %214
  %217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %218 = extractvalue %dx.types.CBufRet.f32 %217, 2
  %219 = extractvalue %dx.types.CBufRet.f32 %217, 3
  %220 = fmul fast float %215, %218
  %221 = fmul fast float %216, %219
  %222 = call float @dx.op.binary.f32(i32 36, float %220, float %221)  ; FMin(a,b)
  %223 = fcmp fast olt float %222, 0.000000e+00
  %224 = call float @dx.op.binary.f32(i32 35, float %220, float %221)  ; FMax(a,b)
  %225 = fcmp fast ogt float %224, 1.000000e+00
  %226 = or i1 %223, %225
  %227 = extractvalue %dx.types.CBufRet.f32 %212, 2
  %228 = fcmp fast olt float %203, %227
  %229 = or i1 %226, %228
  %230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %231 = extractvalue %dx.types.CBufRet.f32 %230, 3
  %232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.f32 %232, 0
  %234 = fadd fast float %233, %231
  %235 = fcmp fast ogt float %203, %234
  %236 = or i1 %229, %235
  br i1 %236, label %237, label %266, !dx.controlflow.hints !36

; <label>:237                                     ; preds = %193
  %238 = extractvalue %dx.types.CBufRet.f32 %217, 0
  %239 = extractvalue %dx.types.CBufRet.f32 %217, 1
  %240 = fsub fast float %213, %201
  %241 = fmul fast float %240, %170
  %242 = fadd fast float %240, %238
  %243 = fmul fast float %242, %170
  %244 = call float @dx.op.binary.f32(i32 36, float %241, float %243)  ; FMin(a,b)
  %245 = call float @dx.op.binary.f32(i32 35, float %241, float %243)  ; FMax(a,b)
  %246 = fsub fast float %214, %202
  %247 = fmul fast float %246, %171
  %248 = fadd fast float %246, %239
  %249 = fmul fast float %248, %171
  %250 = call float @dx.op.binary.f32(i32 36, float %247, float %249)  ; FMin(a,b)
  %251 = call float @dx.op.binary.f32(i32 35, float %244, float %250)  ; FMax(a,b)
  %252 = call float @dx.op.binary.f32(i32 35, float %247, float %249)  ; FMax(a,b)
  %253 = call float @dx.op.binary.f32(i32 36, float %245, float %252)  ; FMin(a,b)
  %254 = fsub fast float %227, %203
  %255 = fmul fast float %254, %172
  %256 = fsub fast float %231, %203
  %257 = fadd fast float %256, %233
  %258 = fmul fast float %257, %172
  %259 = call float @dx.op.binary.f32(i32 36, float %255, float %258)  ; FMin(a,b)
  %260 = call float @dx.op.binary.f32(i32 35, float %251, float %259)  ; FMax(a,b)
  %261 = call float @dx.op.binary.f32(i32 35, float %255, float %258)  ; FMax(a,b)
  %262 = call float @dx.op.binary.f32(i32 36, float %253, float %261)  ; FMin(a,b)
  %263 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %260)  ; FMax(a,b)
  %264 = fcmp fast oge float %262, %263
  %265 = select i1 %264, float %260, float 1.000000e+07
  br label %312

; <label>:266                                     ; preds = %193
  %267 = fsub fast float 1.000000e+00, %221
  %268 = icmp eq i32 %205, 0
  br i1 %268, label %297, label %269

; <label>:269                                     ; preds = %266
  br label %270

; <label>:270                                     ; preds = %293, %269
  %271 = phi i32 [ %294, %293 ], [ %205, %269 ]
  %272 = uitofp i32 %271 to float
  %273 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %14, float %220, float %267, float undef, float undef, i32 0, i32 0, i32 undef, float %272)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %274 = extractvalue %dx.types.ResRet.f32 %273, 0
  %275 = extractvalue %dx.types.ResRet.f32 %273, 1
  %276 = extractvalue %dx.types.ResRet.f32 %273, 2
  %277 = fcmp fast oeq float %274, 0.000000e+00
  %278 = fcmp ule float %203, %276
  %279 = fcmp uge float %203, %275
  %280 = or i1 %279, %278
  %281 = or i1 %277, %280
  br i1 %281, label %282, label %293, !dx.controlflow.hints !37

; <label>:282                                     ; preds = %270
  %283 = extractvalue %dx.types.ResRet.f32 %273, 3
  %284 = extractvalue %dx.types.CBufRet.f32 %217, 0
  %285 = and i32 %271, 31
  %286 = lshr i32 1024, %285
  %287 = uitofp i32 %286 to float
  %288 = fdiv fast float %284, %287
  %289 = add i32 %271, 1
  %290 = uitofp i32 %289 to float
  %291 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %290)  ; FMin(a,b)
  %292 = fptosi float %291 to i32
  br label %312

; <label>:293                                     ; preds = %270
  %294 = add i32 %271, -1
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %270, !llvm.loop !38

; <label>:296                                     ; preds = %293
  br label %297

; <label>:297                                     ; preds = %296, %266
  %298 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %13, float %220, float %267, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %299 = extractvalue %dx.types.ResRet.f32 %298, 0
  %300 = extractvalue %dx.types.ResRet.f32 %298, 1
  %301 = extractvalue %dx.types.ResRet.f32 %298, 2
  %302 = extractvalue %dx.types.ResRet.f32 %298, 3
  %303 = extractvalue %dx.types.CBufRet.f32 %217, 0
  %304 = fmul fast float %303, 9.765625e-04
  %305 = fcmp fast oeq float %299, 0.000000e+00
  %306 = fcmp ule float %203, %301
  %307 = fcmp uge float %203, %300
  %308 = or i1 %307, %306
  %309 = or i1 %305, %308
  %310 = zext i1 %309 to i32
  %311 = xor i32 %310, 1
  br label %312

; <label>:312                                     ; preds = %297, %282, %237
  %313 = phi float [ %265, %237 ], [ %288, %282 ], [ %304, %297 ]
  %314 = phi float [ %196, %237 ], [ %274, %282 ], [ %299, %297 ]
  %315 = phi float [ %197, %237 ], [ %275, %282 ], [ %300, %297 ]
  %316 = phi float [ %198, %237 ], [ %276, %282 ], [ %301, %297 ]
  %317 = phi float [ %199, %237 ], [ %283, %282 ], [ %302, %297 ]
  %318 = phi i32 [ 0, %237 ], [ 0, %282 ], [ %311, %297 ]
  %319 = phi i32 [ 10, %237 ], [ %292, %282 ], [ 1, %297 ]
  %320 = icmp eq i32 %318, 0
  %321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %322 = extractvalue %dx.types.CBufRet.f32 %321, 2
  %323 = call float @dx.op.binary.f32(i32 35, float %313, float %322)  ; FMax(a,b)
  %324 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %323)  ; FMin(a,b)
  %325 = icmp eq i32 %121, 0
  br i1 %325, label %381, label %326, !dx.controlflow.hints !40

; <label>:326                                     ; preds = %312
  %327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %328 = extractvalue %dx.types.CBufRet.f32 %327, 0
  %329 = extractvalue %dx.types.CBufRet.f32 %327, 1
  %330 = extractvalue %dx.types.CBufRet.f32 %327, 2
  %331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %332 = extractvalue %dx.types.CBufRet.f32 %331, 0
  %333 = extractvalue %dx.types.CBufRet.f32 %331, 1
  %334 = extractvalue %dx.types.CBufRet.f32 %331, 2
  %335 = fsub fast float %201, %332
  %336 = fsub fast float %202, %333
  %337 = fsub fast float %203, %334
  %338 = fmul fast float %335, %328
  %339 = fmul fast float %336, %329
  %340 = fmul fast float %337, %330
  %341 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %342 = extractvalue %dx.types.CBufRet.i32 %341, 3
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %347, label %344, !dx.controlflow.hints !41

; <label>:344                                     ; preds = %326
  %345 = call float @dx.op.unary.f32(i32 22, float %338)  ; Frc(value)
  %346 = call float @dx.op.unary.f32(i32 22, float %339)  ; Frc(value)
  br label %347

; <label>:347                                     ; preds = %344, %326
  %348 = phi float [ %345, %344 ], [ %338, %326 ]
  %349 = phi float [ %346, %344 ], [ %339, %326 ]
  %350 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %11, float %348, float %349, float %340, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %351 = extractvalue %dx.types.ResRet.f32 %350, 0
  %352 = fmul fast float %351, 2.000000e+00
  %353 = fadd fast float %352, -1.000000e+00
  %354 = extractvalue %dx.types.CBufRet.f32 %327, 3
  %355 = fmul fast float %353, %354
  %356 = fcmp fast olt float %355, 0.000000e+00
  %357 = fcmp fast oge float %340, 0.000000e+00
  %358 = fcmp fast ole float %340, 1.000000e+00
  br i1 %343, label %361, label %359, !dx.controlflow.hints !42

; <label>:359                                     ; preds = %347
  %360 = and i1 %357, %358
  br label %371

; <label>:361                                     ; preds = %347
  %362 = fcmp fast oge float %338, 0.000000e+00
  %363 = fcmp fast oge float %339, 0.000000e+00
  %364 = and i1 %362, %363
  %365 = and i1 %357, %364
  %366 = fcmp fast ole float %338, 1.000000e+00
  %367 = fcmp fast ole float %339, 1.000000e+00
  %368 = and i1 %366, %367
  %369 = and i1 %358, %368
  %370 = and i1 %365, %369
  br label %371

; <label>:371                                     ; preds = %361, %359
  %372 = phi i1 [ %360, %359 ], [ %370, %361 ]
  %373 = and i1 %356, %372
  %374 = call float @dx.op.unary.f32(i32 6, float %355)  ; FAbs(value)
  %375 = extractvalue %dx.types.CBufRet.f32 %321, 1
  %376 = extractvalue %dx.types.CBufRet.f32 %321, 0
  %377 = call float @dx.op.binary.f32(i32 35, float %374, float %376)  ; FMax(a,b)
  %378 = select i1 %373, float %375, float %377
  %379 = zext i1 %373 to i32
  %380 = call float @dx.op.binary.f32(i32 36, float %324, float %378)  ; FMin(a,b)
  br label %381

; <label>:381                                     ; preds = %371, %312
  %382 = phi float [ %380, %371 ], [ %324, %312 ]
  %383 = phi i32 [ %379, %371 ], [ 0, %312 ]
  %384 = icmp eq i32 %167, 0
  br i1 %384, label %556, label %385, !dx.controlflow.hints !43

; <label>:385                                     ; preds = %381
  %386 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %387 = extractvalue %dx.types.CBufRet.i32 %386, 1
  %388 = and i32 %387, 1
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %390, label %547, !dx.controlflow.hints !44

; <label>:390                                     ; preds = %385
  %391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %392 = extractvalue %dx.types.CBufRet.f32 %391, 2
  %393 = extractvalue %dx.types.CBufRet.f32 %391, 3
  %394 = fmul fast float %392, %201
  %395 = fmul fast float %393, %202
  %396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %397 = extractvalue %dx.types.CBufRet.f32 %396, 0
  %398 = extractvalue %dx.types.CBufRet.f32 %396, 1
  %399 = fadd fast float %394, %397
  %400 = fadd fast float %395, %398
  %401 = call float @dx.op.unary.f32(i32 7, float %399)  ; Saturate(value)
  %402 = call float @dx.op.unary.f32(i32 7, float %400)  ; Saturate(value)
  %403 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %13, float %401, float %402, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %404 = extractvalue %dx.types.ResRet.f32 %403, 0
  %405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %406 = extractvalue %dx.types.CBufRet.f32 %405, 0
  %407 = fmul fast float %406, %404
  %408 = fsub fast float %399, %401
  %409 = fsub fast float %400, %402
  %410 = extractvalue %dx.types.CBufRet.f32 %391, 0
  %411 = extractvalue %dx.types.CBufRet.f32 %391, 1
  %412 = fmul fast float %410, %408
  %413 = fmul fast float %411, %409
  %414 = fmul fast float %412, %412
  %415 = fmul fast float %413, %413
  %416 = fadd fast float %414, %415
  %417 = call float @dx.op.unary.f32(i32 24, float %416)  ; Sqrt(value)
  %418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %419 = extractvalue %dx.types.CBufRet.f32 %418, 3
  %420 = fmul fast float %419, %417
  %421 = call float @dx.op.unary.f32(i32 7, float %420)  ; Saturate(value)
  %422 = extractvalue %dx.types.CBufRet.f32 %418, 2
  %423 = fsub fast float %422, %407
  %424 = fmul fast float %423, %421
  %425 = extractvalue %dx.types.CBufRet.f32 %405, 1
  %426 = fsub fast float %203, %407
  %427 = fsub fast float %426, %425
  %428 = fsub fast float %427, %424
  %429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %430 = extractvalue %dx.types.CBufRet.f32 %429, 2
  %431 = fsub fast float %428, %430
  %432 = fcmp fast olt float %431, 0.000000e+00
  %433 = call float @dx.op.unary.f32(i32 6, float %431)  ; FAbs(value)
  %434 = extractvalue %dx.types.CBufRet.i32 %386, 0
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %489, label %436

; <label>:436                                     ; preds = %390
  br label %437

; <label>:437                                     ; preds = %476, %436
  %438 = phi i32 [ %482, %476 ], [ 1, %436 ]
  %439 = phi float [ %484, %476 ], [ 0x47EFFFFFE0000000, %436 ]
  %440 = phi i32 [ %485, %476 ], [ 0, %436 ]
  %441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %442 = extractvalue %dx.types.CBufRet.f32 %441, 1
  %443 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %444 = extractvalue %dx.types.CBufRet.i32 %443, 1
  %445 = and i32 %444, 8
  %446 = icmp eq i32 %445, 0
  %447 = fcmp fast ogt float %442, %428
  %448 = or i1 %447, %446
  %449 = add i32 %440, 171
  %450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 %449)  ; CBufferLoadLegacy(handle,regIndex)
  %451 = extractvalue %dx.types.CBufRet.f32 %450, 0
  %452 = extractvalue %dx.types.CBufRet.f32 %450, 1
  %453 = extractvalue %dx.types.CBufRet.f32 %450, 2
  br i1 %448, label %454, label %460, !dx.controlflow.hints !45

; <label>:454                                     ; preds = %437
  %455 = fsub fast float %451, %201
  %456 = fsub fast float %452, %202
  %457 = fmul fast float %455, %455
  %458 = fmul fast float %456, %456
  %459 = fadd fast float %457, %458
  br label %476

; <label>:460                                     ; preds = %437
  %461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %462 = extractvalue %dx.types.CBufRet.f32 %461, 2
  %463 = extractvalue %dx.types.CBufRet.f32 %441, 2
  %464 = fmul fast float %463, %462
  %465 = fsub fast float %464, %442
  %466 = fdiv fast float %453, %465
  %467 = fsub fast float %201, %451
  %468 = fsub fast float %202, %452
  %469 = fsub fast float %428, %442
  %470 = fmul fast float %466, %469
  %471 = fmul fast float %467, %467
  %472 = fmul fast float %468, %468
  %473 = fadd fast float %471, %472
  %474 = fmul fast float %470, %470
  %475 = fadd fast float %473, %474
  br label %476

; <label>:476                                     ; preds = %460, %454
  %477 = phi float [ %459, %454 ], [ %475, %460 ]
  %478 = call float @dx.op.unary.f32(i32 24, float %477)  ; Sqrt(value)
  %479 = fsub float %453, %478
  %480 = fcmp fast olt float %479, 0.000000e+00
  %481 = zext i1 %480 to i32
  %482 = and i32 %481, %438
  %483 = call float @dx.op.unary.f32(i32 6, float %479)  ; FAbs(value)
  %484 = call float @dx.op.binary.f32(i32 36, float %439, float %483)  ; FMin(a,b)
  %485 = add i32 %440, 1
  %486 = extractvalue %dx.types.CBufRet.i32 %443, 0
  %487 = icmp ult i32 %485, %486
  br i1 %487, label %437, label %488

; <label>:488                                     ; preds = %476
  br label %489

; <label>:489                                     ; preds = %488, %390
  %490 = phi i32 [ 1, %390 ], [ %482, %488 ]
  %491 = phi float [ 0x47EFFFFFE0000000, %390 ], [ %484, %488 ]
  br label %492

; <label>:492                                     ; preds = %492, %489
  %493 = phi i32 [ %490, %489 ], [ %532, %492 ]
  %494 = phi float [ 0x47EFFFFFE0000000, %489 ], [ %534, %492 ]
  %495 = phi i32 [ 0, %489 ], [ %535, %492 ]
  %496 = add nuw nsw i32 %495, 191
  %497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 %496)  ; CBufferLoadLegacy(handle,regIndex)
  %498 = extractvalue %dx.types.CBufRet.f32 %497, 0
  %499 = extractvalue %dx.types.CBufRet.f32 %497, 1
  %500 = extractvalue %dx.types.CBufRet.f32 %497, 2
  %501 = add nuw nsw i32 %495, 195
  %502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 %501)  ; CBufferLoadLegacy(handle,regIndex)
  %503 = extractvalue %dx.types.CBufRet.f32 %502, 0
  %504 = extractvalue %dx.types.CBufRet.f32 %502, 1
  %505 = extractvalue %dx.types.CBufRet.f32 %502, 2
  %506 = fsub fast float %201, %498
  %507 = fsub fast float %202, %499
  %508 = fsub fast float %428, %500
  %509 = call float @dx.op.unary.f32(i32 6, float %506)  ; FAbs(value)
  %510 = call float @dx.op.unary.f32(i32 6, float %507)  ; FAbs(value)
  %511 = call float @dx.op.unary.f32(i32 6, float %508)  ; FAbs(value)
  %512 = fsub fast float %509, %503
  %513 = fsub fast float %510, %504
  %514 = fsub fast float %511, %505
  %515 = call float @dx.op.binary.f32(i32 35, float %512, float 0.000000e+00)  ; FMax(a,b)
  %516 = call float @dx.op.binary.f32(i32 35, float %513, float 0.000000e+00)  ; FMax(a,b)
  %517 = call float @dx.op.binary.f32(i32 35, float %514, float 0.000000e+00)  ; FMax(a,b)
  %518 = fmul fast float %515, %515
  %519 = fmul fast float %516, %516
  %520 = fadd fast float %519, %518
  %521 = fmul fast float %517, %517
  %522 = fadd fast float %520, %521
  %523 = call float @dx.op.unary.f32(i32 24, float %522)  ; Sqrt(value)
  %524 = call float @dx.op.binary.f32(i32 35, float %513, float %514)  ; FMax(a,b)
  %525 = call float @dx.op.binary.f32(i32 35, float %512, float %524)  ; FMax(a,b)
  %526 = call float @dx.op.binary.f32(i32 36, float %525, float 0.000000e+00)  ; FMin(a,b)
  %527 = fadd fast float %526, %523
  %528 = fsub fast float -0.000000e+00, %527
  %529 = fcmp ogt float %527, -0.000000e+00
  %530 = icmp ne i32 %493, 0
  %531 = and i1 %530, %529
  %532 = zext i1 %531 to i32
  %533 = call float @dx.op.unary.f32(i32 6, float %528)  ; FAbs(value)
  %534 = call float @dx.op.binary.f32(i32 36, float %494, float %533)  ; FMin(a,b)
  %535 = add nuw nsw i32 %495, 1
  %536 = icmp eq i32 %535, 4
  br i1 %536, label %537, label %492

; <label>:537                                     ; preds = %492
  %538 = call float @dx.op.binary.f32(i32 36, float %433, float %534)  ; FMin(a,b)
  %539 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %540 = extractvalue %dx.types.CBufRet.i32 %539, 1
  %541 = and i32 %540, 2
  %542 = icmp ne i32 %541, 0
  %543 = xor i1 %531, %542
  %544 = call float @dx.op.binary.f32(i32 36, float %538, float %491)  ; FMin(a,b)
  %545 = and i1 %543, %432
  %546 = zext i1 %545 to i32
  br label %547

; <label>:547                                     ; preds = %537, %385
  %548 = phi i32 [ %194, %385 ], [ %546, %537 ]
  %549 = phi float [ 0.000000e+00, %385 ], [ %544, %537 ]
  %550 = phi float [ %203, %385 ], [ %428, %537 ]
  %551 = icmp ne i32 %548, 0
  %552 = extractvalue %dx.types.CBufRet.f32 %321, 3
  %553 = call float @dx.op.binary.f32(i32 35, float %549, float %552)  ; FMax(a,b)
  %554 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %553)  ; FMin(a,b)
  %555 = zext i1 %551 to i32
  br label %556

; <label>:556                                     ; preds = %547, %381
  %557 = phi i32 [ %548, %547 ], [ %194, %381 ]
  %558 = phi float [ %550, %547 ], [ %195, %381 ]
  %559 = phi float [ %554, %547 ], [ 0x47EFFFFFE0000000, %381 ]
  %560 = phi i32 [ %555, %547 ], [ 0, %381 ]
  %561 = extractvalue %dx.types.CBufRet.f32 %210, 2
  %562 = fmul fast float %561, %204
  %563 = call float @dx.op.unary.f32(i32 23, float %562)  ; Log(value)
  %564 = fmul fast float %563, 0x3FE62E4300000000
  %565 = call float @dx.op.binary.f32(i32 35, float %564, float 1.000000e+00)  ; FMax(a,b)
  %566 = fmul fast float %565, %559
  %567 = call float @dx.op.binary.f32(i32 36, float %566, float %382)  ; FMin(a,b)
  %568 = call float @dx.op.binary.f32(i32 35, float %567, float %211)  ; FMax(a,b)
  %569 = fadd fast float %173, 0x3F1A36E2E0000000
  %570 = fsub fast float %569, %204
  %571 = call float @dx.op.binary.f32(i32 36, float %570, float %568)  ; FMin(a,b)
  %572 = icmp eq i32 %383, 0
  br i1 %572, label %752, label %573, !dx.controlflow.hints !46

; <label>:573                                     ; preds = %556
  %574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %575 = extractvalue %dx.types.CBufRet.f32 %574, 3
  %576 = fmul fast float %575, %204
  %577 = fcmp fast oeq float %576, 0.000000e+00
  br i1 %577, label %592, label %578, !dx.controlflow.hints !47

; <label>:578                                     ; preds = %573
  %579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %580 = extractvalue %dx.types.CBufRet.f32 %579, 3
  %581 = fmul fast float %580, %576
  %582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %583 = extractvalue %dx.types.CBufRet.f32 %582, 0
  %584 = extractvalue %dx.types.CBufRet.f32 %582, 1
  %585 = extractvalue %dx.types.CBufRet.f32 %582, 2
  %586 = fmul fast float %583, %581
  %587 = fmul fast float %584, %581
  %588 = fmul fast float %585, %581
  %589 = call float @dx.op.unary.f32(i32 23, float %586)  ; Log(value)
  %590 = call float @dx.op.unary.f32(i32 23, float %587)  ; Log(value)
  %591 = call float @dx.op.unary.f32(i32 23, float %588)  ; Log(value)
  br label %592

; <label>:592                                     ; preds = %578, %573
  %593 = phi float [ %589, %578 ], [ 0.000000e+00, %573 ]
  %594 = phi float [ %590, %578 ], [ 0.000000e+00, %573 ]
  %595 = phi float [ %591, %578 ], [ 0.000000e+00, %573 ]
  %596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %597 = extractvalue %dx.types.CBufRet.f32 %596, 0
  %598 = extractvalue %dx.types.CBufRet.f32 %596, 1
  %599 = extractvalue %dx.types.CBufRet.f32 %596, 2
  %600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %601 = extractvalue %dx.types.CBufRet.f32 %600, 0
  %602 = extractvalue %dx.types.CBufRet.f32 %600, 1
  %603 = extractvalue %dx.types.CBufRet.f32 %600, 2
  %604 = fsub fast float %201, %601
  %605 = fsub fast float %202, %602
  %606 = fsub fast float %203, %603
  %607 = fmul fast float %604, %597
  %608 = fmul fast float %605, %598
  %609 = fmul fast float %606, %599
  %610 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %611 = extractvalue %dx.types.CBufRet.i32 %610, 0
  %612 = extractvalue %dx.types.CBufRet.i32 %610, 1
  %613 = uitofp i32 %611 to float
  %614 = uitofp i32 %612 to float
  %615 = fmul fast float %607, %613
  %616 = fmul fast float %608, %614
  %617 = fadd fast float %615, 5.000000e-01
  %618 = fadd fast float %616, 5.000000e-01
  %619 = call float @dx.op.unary.f32(i32 22, float %617)  ; Frc(value)
  %620 = call float @dx.op.unary.f32(i32 22, float %618)  ; Frc(value)
  %621 = call float @dx.op.unary.f32(i32 27, float %617)  ; Round_ni(value)
  %622 = call float @dx.op.unary.f32(i32 27, float %618)  ; Round_ni(value)
  %623 = fadd fast float %621, 1.000000e+00
  %624 = fadd fast float %622, 1.000000e+00
  %625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %626 = extractvalue %dx.types.CBufRet.f32 %625, 0
  %627 = extractvalue %dx.types.CBufRet.f32 %625, 1
  %628 = fmul fast float %626, %623
  %629 = fmul fast float %627, %624
  %630 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %12, float %628, float %629, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %631 = extractvalue %dx.types.ResRet.f32 %630, 0
  %632 = extractvalue %dx.types.ResRet.f32 %630, 1
  %633 = extractvalue %dx.types.ResRet.f32 %630, 2
  %634 = extractvalue %dx.types.ResRet.f32 %630, 3
  %635 = extractvalue %dx.types.CBufRet.i32 %610, 2
  %636 = extractvalue %dx.types.CBufRet.f32 %625, 2
  %637 = uitofp i32 %635 to float
  %638 = fadd fast float %637, -1.000000e+00
  %639 = fmul fast float %638, %631
  %640 = fmul fast float %638, %632
  %641 = fmul fast float %638, %633
  %642 = fmul fast float %638, %634
  %643 = fadd fast float %639, 5.000000e-01
  %644 = fadd fast float %640, 5.000000e-01
  %645 = fadd fast float %641, 5.000000e-01
  %646 = fadd fast float %642, 5.000000e-01
  %647 = fptoui float %643 to i32
  %648 = fptoui float %644 to i32
  %649 = fptoui float %645 to i32
  %650 = fptoui float %646 to i32
  %651 = uitofp i32 %647 to float
  %652 = uitofp i32 %648 to float
  %653 = uitofp i32 %649 to float
  %654 = uitofp i32 %650 to float
  %655 = fadd fast float %651, 5.000000e-01
  %656 = fadd fast float %652, 5.000000e-01
  %657 = fadd fast float %653, 5.000000e-01
  %658 = fadd fast float %654, 5.000000e-01
  %659 = fmul fast float %655, %636
  %660 = fmul fast float %656, %636
  %661 = fmul fast float %657, %636
  %662 = fmul fast float %658, %636
  %663 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %13, float %659, float %609, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %664 = extractvalue %dx.types.ResRet.f32 %663, 0
  %665 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %13, float %660, float %609, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %666 = extractvalue %dx.types.ResRet.f32 %665, 0
  %667 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %13, float %661, float %609, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %668 = extractvalue %dx.types.ResRet.f32 %667, 0
  %669 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %13, float %662, float %609, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %670 = extractvalue %dx.types.ResRet.f32 %669, 0
  %671 = fsub fast float %668, %670
  %672 = fmul fast float %671, %619
  %673 = fadd fast float %672, %670
  %674 = fsub fast float %666, %664
  %675 = fmul fast float %674, %619
  %676 = fadd fast float %675, %664
  %677 = fsub fast float %676, %673
  %678 = fmul fast float %677, %620
  %679 = fadd fast float %678, %673
  %680 = fcmp fast ogt float %679, 0.000000e+00
  br i1 %680, label %681, label %749, !dx.controlflow.hints !48

; <label>:681                                     ; preds = %592
  %682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %683 = extractvalue %dx.types.CBufRet.f32 %682, 0
  %684 = extractvalue %dx.types.CBufRet.f32 %682, 1
  %685 = extractvalue %dx.types.CBufRet.f32 %682, 2
  %686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %687 = extractvalue %dx.types.CBufRet.f32 %686, 0
  %688 = extractvalue %dx.types.CBufRet.f32 %686, 1
  %689 = extractvalue %dx.types.CBufRet.f32 %686, 2
  %690 = fmul fast float %605, %597
  %691 = fmul fast float %606, %597
  %692 = fadd fast float %607, %687
  %693 = fadd fast float %690, %688
  %694 = fadd fast float %691, %689
  %695 = fmul fast float %692, %683
  %696 = fmul fast float %693, %683
  %697 = fmul fast float %694, %683
  %698 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %10, float %695, float %696, float %697, float undef, i32 0, i32 0, i32 0, float %593)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %699 = extractvalue %dx.types.ResRet.f32 %698, 0
  %700 = fmul fast float %692, %684
  %701 = fmul fast float %693, %684
  %702 = fmul fast float %694, %684
  %703 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %10, float %700, float %701, float %702, float undef, i32 0, i32 0, i32 0, float %594)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %704 = extractvalue %dx.types.ResRet.f32 %703, 1
  %705 = fmul fast float %692, %685
  %706 = fmul fast float %693, %685
  %707 = fmul fast float %694, %685
  %708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %10, float %705, float %706, float %707, float undef, i32 0, i32 0, i32 0, float %595)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %709 = extractvalue %dx.types.ResRet.f32 %708, 2
  %710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %711 = extractvalue %dx.types.CBufRet.f32 %710, 1
  %712 = fmul fast float %704, %699
  %713 = fmul fast float %712, %709
  %714 = call float @dx.op.unary.f32(i32 23, float %713)  ; Log(value)
  %715 = fmul fast float %714, %711
  %716 = call float @dx.op.unary.f32(i32 21, float %715)  ; Exp(value)
  %717 = extractvalue %dx.types.CBufRet.f32 %710, 2
  %718 = fmul fast float %679, %679
  %719 = fmul fast float %718, %716
  %720 = fmul fast float %719, %717
  %721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %722 = extractvalue %dx.types.CBufRet.f32 %721, 3
  %723 = fmul fast float %722, %720
  %724 = bitcast float %723 to i32
  %725 = sitofp i32 %724 to float
  %726 = fptosi float %725 to i32
  %727 = bitcast i32 %726 to float
  %728 = fsub fast float 1.000000e+00, %720
  %729 = bitcast float %728 to i32
  %730 = sitofp i32 %729 to float
  %731 = fptosi float %730 to i32
  %732 = bitcast i32 %731 to float
  %733 = fadd fast float %727, %732
  %734 = bitcast float %733 to i32
  %735 = sub nsw i32 2129859010, %734
  %736 = bitcast i32 %735 to float
  %737 = fmul fast float %736, %727
  %738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %739 = extractvalue %dx.types.CBufRet.f32 %738, 3
  %740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %741 = extractvalue %dx.types.CBufRet.f32 %740, 0
  %742 = fmul fast float %737, %741
  %743 = fadd fast float %742, 1.000000e+00
  %744 = bitcast float %743 to i32
  %745 = sub nsw i32 2129859010, %744
  %746 = bitcast i32 %745 to float
  %747 = fmul fast float %737, %739
  %748 = fmul fast float %747, %746
  br label %749

; <label>:749                                     ; preds = %681, %592
  %750 = phi float [ %748, %681 ], [ %679, %592 ]
  %751 = fmul fast float %750, %571
  br label %752

; <label>:752                                     ; preds = %749, %556
  %753 = phi float [ %751, %749 ], [ 0.000000e+00, %556 ]
  br i1 %320, label %879, label %754, !dx.controlflow.hints !49

; <label>:754                                     ; preds = %752
  %755 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %756 = extractvalue %dx.types.CBufRet.i32 %755, 0
  %757 = icmp ne i32 %756, 0
  %758 = zext i1 %757 to i32
  %759 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %760 = extractvalue %dx.types.CBufRet.i32 %759, 0
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %795, label %762

; <label>:762                                     ; preds = %754
  br label %763

; <label>:763                                     ; preds = %790, %762
  %764 = phi i32 [ %791, %790 ], [ 0, %762 ]
  %765 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %764, i32 0)  ; BufferLoad(srv,index,wot)
  %766 = extractvalue %dx.types.ResRet.f32 %765, 0
  %767 = extractvalue %dx.types.ResRet.f32 %765, 1
  %768 = extractvalue %dx.types.ResRet.f32 %765, 2
  %769 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %764, i32 16)  ; BufferLoad(srv,index,wot)
  %770 = extractvalue %dx.types.ResRet.f32 %769, 0
  %771 = extractvalue %dx.types.ResRet.f32 %769, 1
  %772 = extractvalue %dx.types.ResRet.f32 %769, 2
  %773 = fsub fast float %766, %770
  %774 = fsub fast float %767, %771
  %775 = fsub fast float %768, %772
  %776 = fadd fast float %770, %766
  %777 = fadd fast float %771, %767
  %778 = fadd fast float %772, %768
  %779 = fcmp fast olt float %201, %773
  %780 = fcmp fast olt float %202, %774
  %781 = fcmp fast olt float %203, %775
  %782 = or i1 %779, %780
  %783 = or i1 %781, %782
  %784 = fcmp fast ogt float %201, %776
  %785 = fcmp fast ogt float %202, %777
  %786 = fcmp fast ogt float %203, %778
  %787 = or i1 %784, %785
  %788 = or i1 %786, %787
  %789 = or i1 %783, %788
  br i1 %789, label %790, label %793, !dx.controlflow.hints !50

; <label>:790                                     ; preds = %763
  %791 = add nuw i32 %764, 1
  %792 = icmp ult i32 %791, %760
  br i1 %792, label %763, label %793

; <label>:793                                     ; preds = %790, %763
  %794 = phi i32 [ 255, %790 ], [ %764, %763 ]
  br label %795

; <label>:795                                     ; preds = %793, %754
  %796 = phi i32 [ 255, %754 ], [ %794, %793 ]
  %797 = icmp eq i32 %796, 255
  br i1 %797, label %803, label %798, !dx.controlflow.hints !51

; <label>:798                                     ; preds = %795
  %799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %796, i32 156)  ; BufferLoad(srv,index,wot)
  %800 = extractvalue %dx.types.ResRet.i32 %799, 0
  %801 = icmp ne i32 %800, 0
  %802 = zext i1 %801 to i32
  br label %803

; <label>:803                                     ; preds = %798, %795
  %804 = phi i32 [ %802, %798 ], [ %758, %795 ]
  %805 = icmp eq i32 %804, 0
  br i1 %805, label %806, label %875, !dx.controlflow.hints !52

; <label>:806                                     ; preds = %803
  %807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %808 = extractvalue %dx.types.CBufRet.f32 %807, 3
  %809 = extractvalue %dx.types.CBufRet.f32 %230, 0
  %810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %811 = extractvalue %dx.types.CBufRet.f32 %810, 2
  %812 = extractvalue %dx.types.CBufRet.f32 %810, 3
  br i1 %797, label %823, label %813, !dx.controlflow.hints !53

; <label>:813                                     ; preds = %806
  %814 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %796, i32 60)  ; BufferLoad(srv,index,wot)
  %815 = extractvalue %dx.types.ResRet.f32 %814, 0
  %816 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %796, i32 64)  ; BufferLoad(srv,index,wot)
  %817 = extractvalue %dx.types.ResRet.f32 %816, 0
  %818 = extractvalue %dx.types.ResRet.f32 %816, 1
  %819 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %796, i32 72)  ; BufferLoad(srv,index,wot)
  %820 = extractvalue %dx.types.ResRet.f32 %819, 0
  %821 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %796, i32 96)  ; BufferLoad(srv,index,wot)
  %822 = extractvalue %dx.types.ResRet.f32 %821, 0
  br label %823

; <label>:823                                     ; preds = %813, %806
  %824 = phi float [ %817, %813 ], [ %811, %806 ]
  %825 = phi float [ %818, %813 ], [ %812, %806 ]
  %826 = phi float [ %822, %813 ], [ %809, %806 ]
  %827 = phi float [ %820, %813 ], [ %231, %806 ]
  %828 = phi float [ %815, %813 ], [ %233, %806 ]
  %829 = call float @dx.op.binary.f32(i32 35, float %314, float 0.000000e+00)  ; FMax(a,b)
  %830 = call float @dx.op.binary.f32(i32 36, float %829, float 1.000000e+00)  ; FMin(a,b)
  %831 = call float @dx.op.unary.f32(i32 24, float %830)  ; Sqrt(value)
  %832 = call float @dx.op.binary.f32(i32 35, float %317, float 0x3F847AE140000000)  ; FMax(a,b)
  %833 = fsub fast float %315, %203
  %834 = fsub fast float %203, %316
  %835 = call float @dx.op.binary.f32(i32 36, float %834, float %833)  ; FMin(a,b)
  %836 = fdiv fast float %835, %832
  %837 = call float @dx.op.unary.f32(i32 7, float %836)  ; Saturate(value)
  %838 = fsub fast float %203, %827
  %839 = fdiv fast float %838, %828
  %840 = call float @dx.op.unary.f32(i32 7, float %839)  ; Saturate(value)
  %841 = fsub fast float 1.000000e+00, %840
  %842 = fmul float %837, %841
  %843 = fmul float %842, %842
  %844 = fmul fast float %831, %808
  %845 = fmul fast float %844, %843
  %846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %847 = extractvalue %dx.types.CBufRet.f32 %846, 2
  %848 = extractvalue %dx.types.CBufRet.f32 %846, 1
  %849 = fsub fast float %845, %848
  %850 = fsub fast float %847, %848
  %851 = fdiv fast float %849, %850
  %852 = call float @dx.op.unary.f32(i32 7, float %851)  ; Saturate(value)
  %853 = fmul fast float %852, %826
  %854 = fcmp fast ogt float %825, 0.000000e+00
  br i1 %854, label %855, label %875, !dx.controlflow.hints !54

; <label>:855                                     ; preds = %823
  %856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %857 = extractvalue %dx.types.CBufRet.f32 %856, 0
  %858 = extractvalue %dx.types.CBufRet.f32 %856, 1
  %859 = extractvalue %dx.types.CBufRet.f32 %856, 2
  %860 = fsub fast float %201, %857
  %861 = fsub fast float %202, %858
  %862 = fsub fast float %203, %859
  %863 = fmul fast float %860, %860
  %864 = fmul fast float %861, %861
  %865 = fadd fast float %863, %864
  %866 = fmul fast float %862, %862
  %867 = fadd fast float %865, %866
  %868 = call float @dx.op.unary.f32(i32 24, float %867)  ; Sqrt(value)
  %869 = fsub fast float %868, %824
  %870 = fsub fast float %825, %824
  %871 = fdiv fast float %869, %870
  %872 = call float @dx.op.unary.f32(i32 7, float %871)  ; Saturate(value)
  %873 = fmul fast float %872, %872
  %874 = fmul fast float %873, %853
  br label %875

; <label>:875                                     ; preds = %855, %823, %803
  %876 = phi float [ 0.000000e+00, %803 ], [ %874, %855 ], [ %853, %823 ]
  %877 = fmul fast float %876, %571
  %878 = fadd fast float %877, %753
  br label %879

; <label>:879                                     ; preds = %875, %752
  %880 = phi float [ %878, %875 ], [ %753, %752 ]
  %881 = icmp eq i32 %560, 0
  br i1 %881, label %913, label %882, !dx.controlflow.hints !55

; <label>:882                                     ; preds = %879
  %883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %884 = extractvalue %dx.types.CBufRet.f32 %883, 1
  %885 = fsub fast float %571, %884
  %886 = extractvalue %dx.types.CBufRet.f32 %883, 3
  %887 = fmul fast float %885, %886
  %888 = call float @dx.op.unary.f32(i32 7, float %887)  ; Saturate(value)
  %889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %890 = extractvalue %dx.types.CBufRet.f32 %889, 3
  %891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %892 = extractvalue %dx.types.CBufRet.f32 %891, 2
  %893 = fsub fast float %892, %558
  %894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %895 = extractvalue %dx.types.CBufRet.f32 %894, 3
  %896 = fmul fast float %893, %895
  %897 = call float @dx.op.unary.f32(i32 7, float %896)  ; Saturate(value)
  %898 = fmul fast float %897, %890
  %899 = extractvalue %dx.types.CBufRet.f32 %894, 0
  %900 = fsub fast float %204, %899
  %901 = extractvalue %dx.types.CBufRet.f32 %894, 1
  %902 = fmul fast float %900, %901
  %903 = call float @dx.op.unary.f32(i32 7, float %902)  ; Saturate(value)
  %904 = fsub fast float 1.000000e+00, %888
  %905 = fmul fast float %903, %904
  %906 = fadd fast float %905, %888
  %907 = extractvalue %dx.types.CBufRet.f32 %883, 0
  %908 = fsub fast float %898, %907
  %909 = fmul fast float %908, %906
  %910 = fadd fast float %909, %907
  %911 = fmul fast float %910, %571
  %912 = fadd fast float %911, %880
  br label %913

; <label>:913                                     ; preds = %882, %879
  %914 = phi float [ %912, %882 ], [ %880, %879 ]
  %915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %916 = extractvalue %dx.types.CBufRet.f32 %915, 1
  %917 = fcmp fast ogt float %914, %916
  br i1 %917, label %918, label %930, !dx.controlflow.hints !56

; <label>:918                                     ; preds = %913
  %919 = fmul fast float %914, 0xBFF7154760000000
  %920 = call float @dx.op.unary.f32(i32 21, float %919)  ; Exp(value)
  %921 = call float @dx.op.unary.f32(i32 7, float %920)  ; Saturate(value)
  %922 = icmp eq i32 %206, 0
  br i1 %922, label %923, label %924, !dx.controlflow.hints !57

; <label>:923                                     ; preds = %918
  br label %924

; <label>:924                                     ; preds = %923, %918
  %925 = phi i32 [ %206, %918 ], [ 1, %923 ]
  %926 = phi float [ %207, %918 ], [ %204, %923 ]
  %927 = fadd fast float %571, %208
  %928 = fadd fast float %914, %209
  %929 = fmul fast float %921, %200
  br label %930

; <label>:930                                     ; preds = %924, %913
  %931 = phi float [ %929, %924 ], [ %200, %913 ]
  %932 = phi i32 [ %925, %924 ], [ %206, %913 ]
  %933 = phi float [ %926, %924 ], [ %207, %913 ]
  %934 = phi float [ %927, %924 ], [ %208, %913 ]
  %935 = phi float [ %928, %924 ], [ %209, %913 ]
  %936 = fadd fast float %571, %204
  %937 = fmul fast float %571, %56
  %938 = fmul fast float %571, %57
  %939 = fmul fast float %571, %58
  %940 = fadd fast float %937, %201
  %941 = fadd fast float %938, %202
  %942 = fadd fast float %939, %203
  %943 = fcmp fast olt float %936, %173
  %944 = extractvalue %dx.types.CBufRet.f32 %915, 2
  %945 = fcmp fast olt float %944, %931
  %946 = and i1 %943, %945
  br i1 %946, label %193, label %947

; <label>:947                                     ; preds = %930
  br label %948

; <label>:948                                     ; preds = %947, %166
  %949 = phi float [ 0.000000e+00, %166 ], [ %933, %947 ]
  %950 = phi float [ 0.000000e+00, %166 ], [ %934, %947 ]
  %951 = phi float [ 0.000000e+00, %166 ], [ %935, %947 ]
  %952 = extractvalue %dx.types.CBufRet.f32 %50, 3
  %953 = fmul fast float %952, %949
  %954 = fdiv fast float 1.000000e+00, %950
  %955 = fmul fast float %954, %951
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %17, i32 %18, i32 undef, float %953, float %955, float %951, float %953, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 27, i32 1, i32 2, i32 0, !7}
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
!27 = !{void ()* @cs_fog_raymarching_clouds_particles_brfog, !"cs_fog_raymarching_clouds_particles_brfog", null, !4, !28}
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
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.unroll.disable"}
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
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 1}

