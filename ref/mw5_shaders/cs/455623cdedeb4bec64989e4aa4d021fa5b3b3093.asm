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
; shader hash: 6cf039abf945d78deb6414383549c467
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

define void @cs_fog_raymarching_air_clouds_particles_brfog() {
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
  %49 = fsub fast float -0.000000e+00, %48
  %50 = fadd fast float %47, %41
  %51 = fsub fast float -0.000000e+00, %50
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 2
  %54 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %55 = extractvalue %dx.types.CBufRet.f32 %54, 0
  %56 = extractvalue %dx.types.CBufRet.f32 %54, 1
  %57 = extractvalue %dx.types.CBufRet.f32 %54, 2
  %58 = fsub fast float -0.000000e+00, %55
  %59 = fsub fast float -0.000000e+00, %56
  %60 = fsub fast float -0.000000e+00, %57
  %61 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %62 = extractvalue %dx.types.CBufRet.f32 %61, 3
  %63 = fsub fast float %62, %42
  %64 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %49, float %51, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %65 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %58, float %59, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %66 = fdiv fast float 1.000000e+00, %65
  %67 = fmul fast float %66, %64
  %68 = fcmp fast olt float %67, 0.000000e+00
  %69 = fcmp olt float %57, -0.000000e+00
  %70 = and i1 %69, %68
  br i1 %70, label %75, label %71, !dx.controlflow.hints !30

; <label>:71                                      ; preds = %0
  %72 = fcmp ogt float %57, -0.000000e+00
  br i1 %72, label %73, label %75, !dx.controlflow.hints !31

; <label>:73                                      ; preds = %71
  %74 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %67)  ; FMax(a,b)
  br label %75

; <label>:75                                      ; preds = %73, %71, %0
  %76 = phi float [ 0.000000e+00, %0 ], [ %74, %73 ], [ 0.000000e+00, %71 ]
  %77 = phi float [ 0.000000e+00, %0 ], [ 0x47EFFFFFE0000000, %73 ], [ %67, %71 ]
  %78 = fcmp fast oeq float %77, 0.000000e+00
  br i1 %78, label %82, label %79, !dx.controlflow.hints !32

; <label>:79                                      ; preds = %75
  %80 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %76)  ; FMin(a,b)
  %81 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %77)  ; FMax(a,b)
  br label %82

; <label>:82                                      ; preds = %79, %75
  %83 = phi float [ %81, %79 ], [ -1.000000e+00, %75 ]
  %84 = phi i32 [ 1, %79 ], [ 0, %75 ]
  %85 = phi float [ %80, %79 ], [ 0x47EFFFFFE0000000, %75 ]
  %86 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.i32 %86, 3
  %88 = icmp eq i32 %87, 0
  %89 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = extractvalue %dx.types.CBufRet.f32 %89, 2
  %91 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %92 = extractvalue %dx.types.CBufRet.f32 %91, 2
  %93 = fsub fast float %90, %42
  %94 = fadd fast float %93, %92
  br i1 %88, label %102, label %95, !dx.controlflow.hints !33

; <label>:95                                      ; preds = %82
  %96 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %49, float %51, float %94)  ; Dot3(ax,ay,az,bx,by,bz)
  %97 = fmul fast float %66, %96
  %98 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %49, float %51, float %93)  ; Dot3(ax,ay,az,bx,by,bz)
  %99 = fmul fast float %66, %98
  %100 = call float @dx.op.binary.f32(i32 36, float %97, float %99)  ; FMin(a,b)
  %101 = call float @dx.op.binary.f32(i32 35, float %97, float %99)  ; FMax(a,b)
  br label %135

; <label>:102                                     ; preds = %82
  %103 = fdiv fast float 1.000000e+00, %58
  %104 = fdiv fast float 1.000000e+00, %59
  %105 = fdiv fast float 1.000000e+00, %60
  %106 = extractvalue %dx.types.CBufRet.f32 %89, 0
  %107 = extractvalue %dx.types.CBufRet.f32 %89, 1
  %108 = extractvalue %dx.types.CBufRet.f32 %91, 0
  %109 = extractvalue %dx.types.CBufRet.f32 %91, 1
  %110 = fsub fast float %106, %48
  %111 = fmul fast float %110, %103
  %112 = fadd fast float %110, %108
  %113 = fmul fast float %112, %103
  %114 = call float @dx.op.binary.f32(i32 36, float %111, float %113)  ; FMin(a,b)
  %115 = call float @dx.op.binary.f32(i32 35, float %111, float %113)  ; FMax(a,b)
  %116 = fsub fast float %107, %50
  %117 = fmul fast float %116, %104
  %118 = fadd fast float %116, %109
  %119 = fmul fast float %118, %104
  %120 = call float @dx.op.binary.f32(i32 36, float %117, float %119)  ; FMin(a,b)
  %121 = call float @dx.op.binary.f32(i32 35, float %114, float %120)  ; FMax(a,b)
  %122 = call float @dx.op.binary.f32(i32 35, float %117, float %119)  ; FMax(a,b)
  %123 = call float @dx.op.binary.f32(i32 36, float %115, float %122)  ; FMin(a,b)
  %124 = fmul fast float %93, %105
  %125 = fmul fast float %94, %105
  %126 = call float @dx.op.binary.f32(i32 36, float %124, float %125)  ; FMin(a,b)
  %127 = call float @dx.op.binary.f32(i32 35, float %121, float %126)  ; FMax(a,b)
  %128 = call float @dx.op.binary.f32(i32 35, float %124, float %125)  ; FMax(a,b)
  %129 = call float @dx.op.binary.f32(i32 36, float %123, float %128)  ; FMin(a,b)
  %130 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %127)  ; FMax(a,b)
  %131 = fcmp fast ult float %129, %130
  br i1 %131, label %135, label %132, !dx.controlflow.hints !34

; <label>:132                                     ; preds = %102
  %133 = call float @dx.op.binary.f32(i32 36, float %127, float %129)  ; FMin(a,b)
  %134 = call float @dx.op.binary.f32(i32 35, float %127, float %129)  ; FMax(a,b)
  br label %135

; <label>:135                                     ; preds = %132, %102, %95
  %136 = phi float [ %100, %95 ], [ %133, %132 ], [ 0.000000e+00, %102 ]
  %137 = phi float [ %101, %95 ], [ %134, %132 ], [ 0.000000e+00, %102 ]
  %138 = fcmp fast oeq float %137, 0.000000e+00
  br i1 %138, label %142, label %139, !dx.controlflow.hints !35

; <label>:139                                     ; preds = %135
  %140 = call float @dx.op.binary.f32(i32 36, float %85, float %136)  ; FMin(a,b)
  %141 = call float @dx.op.binary.f32(i32 35, float %83, float %137)  ; FMax(a,b)
  br label %142

; <label>:142                                     ; preds = %139, %135
  %143 = phi float [ %141, %139 ], [ %83, %135 ]
  %144 = phi i32 [ 1, %139 ], [ 0, %135 ]
  %145 = phi float [ %140, %139 ], [ %85, %135 ]
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 3
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 0
  %150 = fsub fast float %147, %42
  %151 = fadd fast float %150, %149
  %152 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %49, float %51, float %151)  ; Dot3(ax,ay,az,bx,by,bz)
  %153 = fmul fast float %66, %152
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 2
  %156 = fsub fast float %155, %42
  %157 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %49, float %51, float %156)  ; Dot3(ax,ay,az,bx,by,bz)
  %158 = fmul fast float %66, %157
  %159 = call float @dx.op.binary.f32(i32 36, float %153, float %158)  ; FMin(a,b)
  %160 = call float @dx.op.binary.f32(i32 35, float %153, float %158)  ; FMax(a,b)
  %161 = call float @dx.op.binary.f32(i32 36, float %145, float %159)  ; FMin(a,b)
  %162 = call float @dx.op.binary.f32(i32 35, float %143, float %160)  ; FMax(a,b)
  %163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.f32 %163, 2
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.f32 %165, 3
  %167 = fsub fast float %164, %42
  %168 = fadd fast float %167, %166
  %169 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %49, float %51, float %168)  ; Dot3(ax,ay,az,bx,by,bz)
  %170 = fmul fast float %66, %169
  %171 = fcmp fast olt float %170, 0.000000e+00
  %172 = and i1 %69, %171
  br i1 %172, label %177, label %173, !dx.controlflow.hints !36

; <label>:173                                     ; preds = %142
  %174 = fcmp ogt float %57, -0.000000e+00
  br i1 %174, label %175, label %177, !dx.controlflow.hints !37

; <label>:175                                     ; preds = %173
  %176 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %170)  ; FMax(a,b)
  br label %177

; <label>:177                                     ; preds = %175, %173, %142
  %178 = phi float [ 0.000000e+00, %142 ], [ %176, %175 ], [ 0.000000e+00, %173 ]
  %179 = phi float [ 0.000000e+00, %142 ], [ 0x47EFFFFFE0000000, %175 ], [ %170, %173 ]
  %180 = fcmp fast oeq float %179, 0.000000e+00
  br i1 %180, label %184, label %181, !dx.controlflow.hints !38

; <label>:181                                     ; preds = %177
  %182 = call float @dx.op.binary.f32(i32 36, float %161, float %178)  ; FMin(a,b)
  %183 = call float @dx.op.binary.f32(i32 35, float %162, float %179)  ; FMax(a,b)
  br label %184

; <label>:184                                     ; preds = %181, %177
  %185 = phi i32 [ 1, %181 ], [ 0, %177 ]
  %186 = phi float [ %183, %181 ], [ %162, %177 ]
  %187 = phi float [ %182, %181 ], [ %161, %177 ]
  %188 = fdiv fast float 1.000000e+00, %58
  %189 = fdiv fast float 1.000000e+00, %59
  %190 = fdiv fast float 1.000000e+00, %60
  %191 = call float @dx.op.binary.f32(i32 36, float %53, float %186)  ; FMin(a,b)
  %192 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %187)  ; FMax(a,b)
  %193 = extractvalue %dx.types.CBufRet.f32 %61, 1
  %194 = fmul fast float %31, 2.000000e+00
  %195 = fadd fast float %194, -1.000000e+00
  %196 = fmul fast float %193, %195
  %197 = fadd fast float %196, %192
  %198 = fcmp fast olt float %197, %191
  %199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %200 = extractvalue %dx.types.CBufRet.f32 %199, 2
  %201 = fcmp fast olt float %200, 1.000000e+00
  %202 = and i1 %201, %198
  br i1 %202, label %203, label %1030

; <label>:203                                     ; preds = %184
  %204 = fmul fast float %197, %60
  %205 = fadd fast float %204, %42
  %206 = fmul fast float %197, %59
  %207 = fadd fast float %206, %50
  %208 = fmul fast float %197, %58
  %209 = fadd fast float %208, %48
  br label %210

; <label>:210                                     ; preds = %1012, %203
  %211 = phi i32 [ %591, %1012 ], [ undef, %203 ]
  %212 = phi float [ %592, %1012 ], [ undef, %203 ]
  %213 = phi float [ %333, %1012 ], [ undef, %203 ]
  %214 = phi float [ %334, %1012 ], [ undef, %203 ]
  %215 = phi float [ %335, %1012 ], [ undef, %203 ]
  %216 = phi float [ %336, %1012 ], [ undef, %203 ]
  %217 = phi float [ %1013, %1012 ], [ 1.000000e+00, %203 ]
  %218 = phi float [ %1022, %1012 ], [ %209, %203 ]
  %219 = phi float [ %1023, %1012 ], [ %207, %203 ]
  %220 = phi float [ %1024, %1012 ], [ %205, %203 ]
  %221 = phi float [ %1018, %1012 ], [ %197, %203 ]
  %222 = phi i32 [ %338, %1012 ], [ 10, %203 ]
  %223 = phi i32 [ %1014, %1012 ], [ 0, %203 ]
  %224 = phi float [ %1015, %1012 ], [ 0.000000e+00, %203 ]
  %225 = phi float [ %1016, %1012 ], [ 0.000000e+00, %203 ]
  %226 = phi float [ %1017, %1012 ], [ 0.000000e+00, %203 ]
  %227 = fsub fast float -0.000000e+00, %219
  %228 = fsub fast float -0.000000e+00, %218
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.f32 %229, 1
  %231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = extractvalue %dx.types.CBufRet.f32 %231, 0
  %233 = extractvalue %dx.types.CBufRet.f32 %231, 1
  %234 = fsub fast float %218, %232
  %235 = fsub fast float %219, %233
  %236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %237 = extractvalue %dx.types.CBufRet.f32 %236, 2
  %238 = extractvalue %dx.types.CBufRet.f32 %236, 3
  %239 = fmul fast float %234, %237
  %240 = fmul fast float %235, %238
  %241 = call float @dx.op.binary.f32(i32 36, float %239, float %240)  ; FMin(a,b)
  %242 = fcmp fast olt float %241, 0.000000e+00
  %243 = call float @dx.op.binary.f32(i32 35, float %239, float %240)  ; FMax(a,b)
  %244 = fcmp fast ogt float %243, 1.000000e+00
  %245 = or i1 %242, %244
  %246 = extractvalue %dx.types.CBufRet.f32 %231, 2
  %247 = fcmp fast olt float %220, %246
  %248 = or i1 %245, %247
  %249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %250 = extractvalue %dx.types.CBufRet.f32 %249, 3
  %251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %252 = extractvalue %dx.types.CBufRet.f32 %251, 0
  %253 = fadd fast float %252, %250
  %254 = fcmp fast ogt float %220, %253
  %255 = or i1 %248, %254
  br i1 %255, label %256, label %285, !dx.controlflow.hints !39

; <label>:256                                     ; preds = %210
  %257 = extractvalue %dx.types.CBufRet.f32 %236, 0
  %258 = extractvalue %dx.types.CBufRet.f32 %236, 1
  %259 = fsub fast float %232, %218
  %260 = fmul fast float %259, %188
  %261 = fadd fast float %259, %257
  %262 = fmul fast float %261, %188
  %263 = call float @dx.op.binary.f32(i32 36, float %260, float %262)  ; FMin(a,b)
  %264 = call float @dx.op.binary.f32(i32 35, float %260, float %262)  ; FMax(a,b)
  %265 = fsub fast float %233, %219
  %266 = fmul fast float %265, %189
  %267 = fadd fast float %265, %258
  %268 = fmul fast float %267, %189
  %269 = call float @dx.op.binary.f32(i32 36, float %266, float %268)  ; FMin(a,b)
  %270 = call float @dx.op.binary.f32(i32 35, float %263, float %269)  ; FMax(a,b)
  %271 = call float @dx.op.binary.f32(i32 35, float %266, float %268)  ; FMax(a,b)
  %272 = call float @dx.op.binary.f32(i32 36, float %264, float %271)  ; FMin(a,b)
  %273 = fsub fast float %246, %220
  %274 = fmul fast float %273, %190
  %275 = fsub fast float %250, %220
  %276 = fadd fast float %275, %252
  %277 = fmul fast float %276, %190
  %278 = call float @dx.op.binary.f32(i32 36, float %274, float %277)  ; FMin(a,b)
  %279 = call float @dx.op.binary.f32(i32 35, float %270, float %278)  ; FMax(a,b)
  %280 = call float @dx.op.binary.f32(i32 35, float %274, float %277)  ; FMax(a,b)
  %281 = call float @dx.op.binary.f32(i32 36, float %272, float %280)  ; FMin(a,b)
  %282 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %279)  ; FMax(a,b)
  %283 = fcmp fast oge float %281, %282
  %284 = select i1 %283, float %279, float 1.000000e+07
  br label %331

; <label>:285                                     ; preds = %210
  %286 = fsub fast float 1.000000e+00, %240
  %287 = icmp eq i32 %222, 0
  br i1 %287, label %316, label %288

; <label>:288                                     ; preds = %285
  br label %289

; <label>:289                                     ; preds = %312, %288
  %290 = phi i32 [ %313, %312 ], [ %222, %288 ]
  %291 = uitofp i32 %290 to float
  %292 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %14, float %239, float %286, float undef, float undef, i32 0, i32 0, i32 undef, float %291)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %293 = extractvalue %dx.types.ResRet.f32 %292, 0
  %294 = extractvalue %dx.types.ResRet.f32 %292, 1
  %295 = extractvalue %dx.types.ResRet.f32 %292, 2
  %296 = fcmp fast oeq float %293, 0.000000e+00
  %297 = fcmp ule float %220, %295
  %298 = fcmp uge float %220, %294
  %299 = or i1 %298, %297
  %300 = or i1 %296, %299
  br i1 %300, label %301, label %312, !dx.controlflow.hints !40

; <label>:301                                     ; preds = %289
  %302 = extractvalue %dx.types.ResRet.f32 %292, 3
  %303 = extractvalue %dx.types.CBufRet.f32 %236, 0
  %304 = and i32 %290, 31
  %305 = lshr i32 1024, %304
  %306 = uitofp i32 %305 to float
  %307 = fdiv fast float %303, %306
  %308 = add i32 %290, 1
  %309 = uitofp i32 %308 to float
  %310 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %309)  ; FMin(a,b)
  %311 = fptosi float %310 to i32
  br label %331

; <label>:312                                     ; preds = %289
  %313 = add i32 %290, -1
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %289, !llvm.loop !41

; <label>:315                                     ; preds = %312
  br label %316

; <label>:316                                     ; preds = %315, %285
  %317 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %13, float %239, float %286, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %318 = extractvalue %dx.types.ResRet.f32 %317, 0
  %319 = extractvalue %dx.types.ResRet.f32 %317, 1
  %320 = extractvalue %dx.types.ResRet.f32 %317, 2
  %321 = extractvalue %dx.types.ResRet.f32 %317, 3
  %322 = extractvalue %dx.types.CBufRet.f32 %236, 0
  %323 = fmul fast float %322, 9.765625e-04
  %324 = fcmp fast oeq float %318, 0.000000e+00
  %325 = fcmp ule float %220, %320
  %326 = fcmp uge float %220, %319
  %327 = or i1 %326, %325
  %328 = or i1 %324, %327
  %329 = zext i1 %328 to i32
  %330 = xor i32 %329, 1
  br label %331

; <label>:331                                     ; preds = %316, %301, %256
  %332 = phi float [ %284, %256 ], [ %307, %301 ], [ %323, %316 ]
  %333 = phi float [ %213, %256 ], [ %293, %301 ], [ %318, %316 ]
  %334 = phi float [ %214, %256 ], [ %294, %301 ], [ %319, %316 ]
  %335 = phi float [ %215, %256 ], [ %295, %301 ], [ %320, %316 ]
  %336 = phi float [ %216, %256 ], [ %302, %301 ], [ %321, %316 ]
  %337 = phi i32 [ 0, %256 ], [ 0, %301 ], [ %330, %316 ]
  %338 = phi i32 [ 10, %256 ], [ %311, %301 ], [ 1, %316 ]
  %339 = icmp eq i32 %337, 0
  %340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %341 = extractvalue %dx.types.CBufRet.f32 %340, 2
  %342 = call float @dx.op.binary.f32(i32 35, float %332, float %341)  ; FMax(a,b)
  %343 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %342)  ; FMin(a,b)
  %344 = icmp eq i32 %84, 0
  br i1 %344, label %357, label %345, !dx.controlflow.hints !43

; <label>:345                                     ; preds = %331
  %346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %347 = extractvalue %dx.types.CBufRet.f32 %346, 3
  %348 = extractvalue %dx.types.CBufRet.f32 %346, 2
  %349 = fmul fast float %347, %221
  %350 = fdiv fast float %349, %191
  %351 = fadd fast float %350, 1.000000e+00
  %352 = call float @dx.op.unary.f32(i32 23, float %351)  ; Log(value)
  %353 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %352)  ; FMin(a,b)
  %354 = fmul fast float %348, %191
  %355 = fmul fast float %354, %353
  %356 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %355)  ; FMin(a,b)
  br label %357

; <label>:357                                     ; preds = %345, %331
  %358 = phi float [ %356, %345 ], [ 0x47EFFFFFE0000000, %331 ]
  %359 = icmp eq i32 %144, 0
  br i1 %359, label %415, label %360, !dx.controlflow.hints !44

; <label>:360                                     ; preds = %357
  %361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %362 = extractvalue %dx.types.CBufRet.f32 %361, 0
  %363 = extractvalue %dx.types.CBufRet.f32 %361, 1
  %364 = extractvalue %dx.types.CBufRet.f32 %361, 2
  %365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %366 = extractvalue %dx.types.CBufRet.f32 %365, 0
  %367 = extractvalue %dx.types.CBufRet.f32 %365, 1
  %368 = extractvalue %dx.types.CBufRet.f32 %365, 2
  %369 = fsub fast float %218, %366
  %370 = fsub fast float %219, %367
  %371 = fsub fast float %220, %368
  %372 = fmul fast float %369, %362
  %373 = fmul fast float %370, %363
  %374 = fmul fast float %371, %364
  %375 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %376 = extractvalue %dx.types.CBufRet.i32 %375, 3
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %381, label %378, !dx.controlflow.hints !45

; <label>:378                                     ; preds = %360
  %379 = call float @dx.op.unary.f32(i32 22, float %372)  ; Frc(value)
  %380 = call float @dx.op.unary.f32(i32 22, float %373)  ; Frc(value)
  br label %381

; <label>:381                                     ; preds = %378, %360
  %382 = phi float [ %379, %378 ], [ %372, %360 ]
  %383 = phi float [ %380, %378 ], [ %373, %360 ]
  %384 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %11, float %382, float %383, float %374, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %385 = extractvalue %dx.types.ResRet.f32 %384, 0
  %386 = fmul fast float %385, 2.000000e+00
  %387 = fadd fast float %386, -1.000000e+00
  %388 = extractvalue %dx.types.CBufRet.f32 %361, 3
  %389 = fmul fast float %387, %388
  %390 = fcmp fast olt float %389, 0.000000e+00
  %391 = fcmp fast oge float %374, 0.000000e+00
  %392 = fcmp fast ole float %374, 1.000000e+00
  br i1 %377, label %395, label %393, !dx.controlflow.hints !46

; <label>:393                                     ; preds = %381
  %394 = and i1 %391, %392
  br label %405

; <label>:395                                     ; preds = %381
  %396 = fcmp fast oge float %372, 0.000000e+00
  %397 = fcmp fast oge float %373, 0.000000e+00
  %398 = and i1 %396, %397
  %399 = and i1 %391, %398
  %400 = fcmp fast ole float %372, 1.000000e+00
  %401 = fcmp fast ole float %373, 1.000000e+00
  %402 = and i1 %400, %401
  %403 = and i1 %392, %402
  %404 = and i1 %399, %403
  br label %405

; <label>:405                                     ; preds = %395, %393
  %406 = phi i1 [ %394, %393 ], [ %404, %395 ]
  %407 = and i1 %390, %406
  %408 = call float @dx.op.unary.f32(i32 6, float %389)  ; FAbs(value)
  %409 = extractvalue %dx.types.CBufRet.f32 %340, 1
  %410 = extractvalue %dx.types.CBufRet.f32 %340, 0
  %411 = call float @dx.op.binary.f32(i32 35, float %408, float %410)  ; FMax(a,b)
  %412 = select i1 %407, float %409, float %411
  %413 = zext i1 %407 to i32
  %414 = call float @dx.op.binary.f32(i32 36, float %343, float %412)  ; FMin(a,b)
  br label %415

; <label>:415                                     ; preds = %405, %357
  %416 = phi float [ %414, %405 ], [ %343, %357 ]
  %417 = phi i32 [ %413, %405 ], [ 0, %357 ]
  %418 = icmp eq i32 %185, 0
  br i1 %418, label %590, label %419, !dx.controlflow.hints !47

; <label>:419                                     ; preds = %415
  %420 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %421 = extractvalue %dx.types.CBufRet.i32 %420, 1
  %422 = and i32 %421, 1
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %424, label %581, !dx.controlflow.hints !48

; <label>:424                                     ; preds = %419
  %425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %426 = extractvalue %dx.types.CBufRet.f32 %425, 2
  %427 = extractvalue %dx.types.CBufRet.f32 %425, 3
  %428 = fmul fast float %426, %218
  %429 = fmul fast float %427, %219
  %430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %431 = extractvalue %dx.types.CBufRet.f32 %430, 0
  %432 = extractvalue %dx.types.CBufRet.f32 %430, 1
  %433 = fadd fast float %428, %431
  %434 = fadd fast float %429, %432
  %435 = call float @dx.op.unary.f32(i32 7, float %433)  ; Saturate(value)
  %436 = call float @dx.op.unary.f32(i32 7, float %434)  ; Saturate(value)
  %437 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %13, float %435, float %436, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %438 = extractvalue %dx.types.ResRet.f32 %437, 0
  %439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %440 = extractvalue %dx.types.CBufRet.f32 %439, 0
  %441 = fmul fast float %440, %438
  %442 = fsub fast float %433, %435
  %443 = fsub fast float %434, %436
  %444 = extractvalue %dx.types.CBufRet.f32 %425, 0
  %445 = extractvalue %dx.types.CBufRet.f32 %425, 1
  %446 = fmul fast float %444, %442
  %447 = fmul fast float %445, %443
  %448 = fmul fast float %446, %446
  %449 = fmul fast float %447, %447
  %450 = fadd fast float %448, %449
  %451 = call float @dx.op.unary.f32(i32 24, float %450)  ; Sqrt(value)
  %452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %453 = extractvalue %dx.types.CBufRet.f32 %452, 3
  %454 = fmul fast float %453, %451
  %455 = call float @dx.op.unary.f32(i32 7, float %454)  ; Saturate(value)
  %456 = extractvalue %dx.types.CBufRet.f32 %452, 2
  %457 = fsub fast float %456, %441
  %458 = fmul fast float %457, %455
  %459 = extractvalue %dx.types.CBufRet.f32 %439, 1
  %460 = fsub fast float %220, %441
  %461 = fsub fast float %460, %459
  %462 = fsub fast float %461, %458
  %463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %464 = extractvalue %dx.types.CBufRet.f32 %463, 2
  %465 = fsub fast float %462, %464
  %466 = fcmp fast olt float %465, 0.000000e+00
  %467 = call float @dx.op.unary.f32(i32 6, float %465)  ; FAbs(value)
  %468 = extractvalue %dx.types.CBufRet.i32 %420, 0
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %523, label %470

; <label>:470                                     ; preds = %424
  br label %471

; <label>:471                                     ; preds = %510, %470
  %472 = phi i32 [ %516, %510 ], [ 1, %470 ]
  %473 = phi float [ %518, %510 ], [ 0x47EFFFFFE0000000, %470 ]
  %474 = phi i32 [ %519, %510 ], [ 0, %470 ]
  %475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %476 = extractvalue %dx.types.CBufRet.f32 %475, 1
  %477 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %478 = extractvalue %dx.types.CBufRet.i32 %477, 1
  %479 = and i32 %478, 8
  %480 = icmp eq i32 %479, 0
  %481 = fcmp fast ogt float %476, %462
  %482 = or i1 %481, %480
  %483 = add i32 %474, 171
  %484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 %483)  ; CBufferLoadLegacy(handle,regIndex)
  %485 = extractvalue %dx.types.CBufRet.f32 %484, 0
  %486 = extractvalue %dx.types.CBufRet.f32 %484, 1
  %487 = extractvalue %dx.types.CBufRet.f32 %484, 2
  br i1 %482, label %488, label %494, !dx.controlflow.hints !49

; <label>:488                                     ; preds = %471
  %489 = fsub fast float %485, %218
  %490 = fsub fast float %486, %219
  %491 = fmul fast float %489, %489
  %492 = fmul fast float %490, %490
  %493 = fadd fast float %491, %492
  br label %510

; <label>:494                                     ; preds = %471
  %495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %496 = extractvalue %dx.types.CBufRet.f32 %495, 2
  %497 = extractvalue %dx.types.CBufRet.f32 %475, 2
  %498 = fmul fast float %497, %496
  %499 = fsub fast float %498, %476
  %500 = fdiv fast float %487, %499
  %501 = fsub fast float %218, %485
  %502 = fsub fast float %219, %486
  %503 = fsub fast float %462, %476
  %504 = fmul fast float %500, %503
  %505 = fmul fast float %501, %501
  %506 = fmul fast float %502, %502
  %507 = fadd fast float %505, %506
  %508 = fmul fast float %504, %504
  %509 = fadd fast float %507, %508
  br label %510

; <label>:510                                     ; preds = %494, %488
  %511 = phi float [ %493, %488 ], [ %509, %494 ]
  %512 = call float @dx.op.unary.f32(i32 24, float %511)  ; Sqrt(value)
  %513 = fsub float %487, %512
  %514 = fcmp fast olt float %513, 0.000000e+00
  %515 = zext i1 %514 to i32
  %516 = and i32 %515, %472
  %517 = call float @dx.op.unary.f32(i32 6, float %513)  ; FAbs(value)
  %518 = call float @dx.op.binary.f32(i32 36, float %473, float %517)  ; FMin(a,b)
  %519 = add i32 %474, 1
  %520 = extractvalue %dx.types.CBufRet.i32 %477, 0
  %521 = icmp ult i32 %519, %520
  br i1 %521, label %471, label %522

; <label>:522                                     ; preds = %510
  br label %523

; <label>:523                                     ; preds = %522, %424
  %524 = phi i32 [ 1, %424 ], [ %516, %522 ]
  %525 = phi float [ 0x47EFFFFFE0000000, %424 ], [ %518, %522 ]
  br label %526

; <label>:526                                     ; preds = %526, %523
  %527 = phi i32 [ %524, %523 ], [ %566, %526 ]
  %528 = phi float [ 0x47EFFFFFE0000000, %523 ], [ %568, %526 ]
  %529 = phi i32 [ 0, %523 ], [ %569, %526 ]
  %530 = add nuw nsw i32 %529, 191
  %531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 %530)  ; CBufferLoadLegacy(handle,regIndex)
  %532 = extractvalue %dx.types.CBufRet.f32 %531, 0
  %533 = extractvalue %dx.types.CBufRet.f32 %531, 1
  %534 = extractvalue %dx.types.CBufRet.f32 %531, 2
  %535 = add nuw nsw i32 %529, 195
  %536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 %535)  ; CBufferLoadLegacy(handle,regIndex)
  %537 = extractvalue %dx.types.CBufRet.f32 %536, 0
  %538 = extractvalue %dx.types.CBufRet.f32 %536, 1
  %539 = extractvalue %dx.types.CBufRet.f32 %536, 2
  %540 = fsub fast float %218, %532
  %541 = fsub fast float %219, %533
  %542 = fsub fast float %462, %534
  %543 = call float @dx.op.unary.f32(i32 6, float %540)  ; FAbs(value)
  %544 = call float @dx.op.unary.f32(i32 6, float %541)  ; FAbs(value)
  %545 = call float @dx.op.unary.f32(i32 6, float %542)  ; FAbs(value)
  %546 = fsub fast float %543, %537
  %547 = fsub fast float %544, %538
  %548 = fsub fast float %545, %539
  %549 = call float @dx.op.binary.f32(i32 35, float %546, float 0.000000e+00)  ; FMax(a,b)
  %550 = call float @dx.op.binary.f32(i32 35, float %547, float 0.000000e+00)  ; FMax(a,b)
  %551 = call float @dx.op.binary.f32(i32 35, float %548, float 0.000000e+00)  ; FMax(a,b)
  %552 = fmul fast float %549, %549
  %553 = fmul fast float %550, %550
  %554 = fadd fast float %553, %552
  %555 = fmul fast float %551, %551
  %556 = fadd fast float %554, %555
  %557 = call float @dx.op.unary.f32(i32 24, float %556)  ; Sqrt(value)
  %558 = call float @dx.op.binary.f32(i32 35, float %547, float %548)  ; FMax(a,b)
  %559 = call float @dx.op.binary.f32(i32 35, float %546, float %558)  ; FMax(a,b)
  %560 = call float @dx.op.binary.f32(i32 36, float %559, float 0.000000e+00)  ; FMin(a,b)
  %561 = fadd fast float %560, %557
  %562 = fsub fast float -0.000000e+00, %561
  %563 = fcmp ogt float %561, -0.000000e+00
  %564 = icmp ne i32 %527, 0
  %565 = and i1 %564, %563
  %566 = zext i1 %565 to i32
  %567 = call float @dx.op.unary.f32(i32 6, float %562)  ; FAbs(value)
  %568 = call float @dx.op.binary.f32(i32 36, float %528, float %567)  ; FMin(a,b)
  %569 = add nuw nsw i32 %529, 1
  %570 = icmp eq i32 %569, 4
  br i1 %570, label %571, label %526

; <label>:571                                     ; preds = %526
  %572 = call float @dx.op.binary.f32(i32 36, float %467, float %568)  ; FMin(a,b)
  %573 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %574 = extractvalue %dx.types.CBufRet.i32 %573, 1
  %575 = and i32 %574, 2
  %576 = icmp ne i32 %575, 0
  %577 = xor i1 %565, %576
  %578 = call float @dx.op.binary.f32(i32 36, float %572, float %525)  ; FMin(a,b)
  %579 = and i1 %577, %466
  %580 = zext i1 %579 to i32
  br label %581

; <label>:581                                     ; preds = %571, %419
  %582 = phi i32 [ %211, %419 ], [ %580, %571 ]
  %583 = phi float [ 0.000000e+00, %419 ], [ %578, %571 ]
  %584 = phi float [ %220, %419 ], [ %462, %571 ]
  %585 = icmp ne i32 %582, 0
  %586 = extractvalue %dx.types.CBufRet.f32 %340, 3
  %587 = call float @dx.op.binary.f32(i32 35, float %583, float %586)  ; FMax(a,b)
  %588 = call float @dx.op.binary.f32(i32 36, float %358, float %587)  ; FMin(a,b)
  %589 = zext i1 %585 to i32
  br label %590

; <label>:590                                     ; preds = %581, %415
  %591 = phi i32 [ %582, %581 ], [ %211, %415 ]
  %592 = phi float [ %584, %581 ], [ %212, %415 ]
  %593 = phi float [ %588, %581 ], [ %358, %415 ]
  %594 = phi i32 [ %589, %581 ], [ 0, %415 ]
  %595 = extractvalue %dx.types.CBufRet.f32 %229, 2
  %596 = fmul fast float %595, %221
  %597 = call float @dx.op.unary.f32(i32 23, float %596)  ; Log(value)
  %598 = fmul fast float %597, 0x3FE62E4300000000
  %599 = call float @dx.op.binary.f32(i32 35, float %598, float 1.000000e+00)  ; FMax(a,b)
  %600 = fmul fast float %599, %593
  %601 = call float @dx.op.binary.f32(i32 36, float %600, float %416)  ; FMin(a,b)
  %602 = call float @dx.op.binary.f32(i32 35, float %601, float %230)  ; FMax(a,b)
  %603 = fadd fast float %191, 0x3F1A36E2E0000000
  %604 = fsub fast float %603, %221
  %605 = call float @dx.op.binary.f32(i32 36, float %604, float %602)  ; FMin(a,b)
  br i1 %344, label %651, label %606, !dx.controlflow.hints !50

; <label>:606                                     ; preds = %590
  %607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %608 = extractvalue %dx.types.CBufRet.f32 %607, 0
  %609 = fsub fast float %608, %220
  %610 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %228, float %227, float %609)  ; Dot3(ax,ay,az,bx,by,bz)
  %611 = fmul fast float %66, %610
  %612 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %611)  ; FMax(a,b)
  %613 = fcmp ogt float %57, -0.000000e+00
  %614 = call float @dx.op.binary.f32(i32 36, float %605, float %612)  ; FMin(a,b)
  br i1 %613, label %616, label %615, !dx.controlflow.hints !51

; <label>:615                                     ; preds = %606
  br label %616

; <label>:616                                     ; preds = %615, %606
  %617 = phi float [ 0.000000e+00, %615 ], [ %614, %606 ]
  %618 = phi float [ %614, %615 ], [ %605, %606 ]
  %619 = phi float [ %614, %615 ], [ 0.000000e+00, %606 ]
  %620 = phi float [ %605, %615 ], [ %614, %606 ]
  %621 = fsub fast float %618, %617
  %622 = extractvalue %dx.types.CBufRet.f32 %607, 1
  %623 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %622)  ; FMin(a,b)
  %624 = fsub fast float %220, %608
  %625 = fmul fast float %623, 0x3FF7154760000000
  %626 = fmul fast float %625, %624
  %627 = call float @dx.op.unary.f32(i32 21, float %626)  ; Exp(value)
  %628 = fmul fast float %57, 0xBFF7154760000000
  %629 = fmul fast float %628, %620
  %630 = fmul fast float %629, %623
  %631 = call float @dx.op.unary.f32(i32 21, float %630)  ; Exp(value)
  %632 = fmul fast float %628, %619
  %633 = fmul fast float %632, %623
  %634 = call float @dx.op.unary.f32(i32 21, float %633)  ; Exp(value)
  %635 = fsub fast float %631, %634
  %636 = fmul fast float %635, %627
  %637 = fmul fast float %623, %60
  %638 = fdiv fast float %636, %637
  %639 = fadd fast float %621, %638
  %640 = call float @dx.op.unary.f32(i32 6, float %60)  ; FAbs(value)
  %641 = fcmp fast olt float %640, 0x3F0FFB4800000000
  %642 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %624)  ; FMax(a,b)
  %643 = fmul fast float %642, 0x3FF7154760000000
  %644 = fmul fast float %643, %622
  %645 = call float @dx.op.unary.f32(i32 21, float %644)  ; Exp(value)
  %646 = fmul fast float %645, %605
  %647 = select i1 %641, float %646, float %639
  %648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %649 = extractvalue %dx.types.CBufRet.f32 %648, 1
  %650 = fmul fast float %647, %649
  br label %651

; <label>:651                                     ; preds = %616, %590
  %652 = phi float [ %650, %616 ], [ 0.000000e+00, %590 ]
  %653 = icmp eq i32 %417, 0
  br i1 %653, label %834, label %654, !dx.controlflow.hints !52

; <label>:654                                     ; preds = %651
  %655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %656 = extractvalue %dx.types.CBufRet.f32 %655, 3
  %657 = fmul fast float %656, %221
  %658 = fcmp fast oeq float %657, 0.000000e+00
  br i1 %658, label %673, label %659, !dx.controlflow.hints !53

; <label>:659                                     ; preds = %654
  %660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %661 = extractvalue %dx.types.CBufRet.f32 %660, 3
  %662 = fmul fast float %661, %657
  %663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %664 = extractvalue %dx.types.CBufRet.f32 %663, 0
  %665 = extractvalue %dx.types.CBufRet.f32 %663, 1
  %666 = extractvalue %dx.types.CBufRet.f32 %663, 2
  %667 = fmul fast float %664, %662
  %668 = fmul fast float %665, %662
  %669 = fmul fast float %666, %662
  %670 = call float @dx.op.unary.f32(i32 23, float %667)  ; Log(value)
  %671 = call float @dx.op.unary.f32(i32 23, float %668)  ; Log(value)
  %672 = call float @dx.op.unary.f32(i32 23, float %669)  ; Log(value)
  br label %673

; <label>:673                                     ; preds = %659, %654
  %674 = phi float [ %670, %659 ], [ 0.000000e+00, %654 ]
  %675 = phi float [ %671, %659 ], [ 0.000000e+00, %654 ]
  %676 = phi float [ %672, %659 ], [ 0.000000e+00, %654 ]
  %677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %678 = extractvalue %dx.types.CBufRet.f32 %677, 0
  %679 = extractvalue %dx.types.CBufRet.f32 %677, 1
  %680 = extractvalue %dx.types.CBufRet.f32 %677, 2
  %681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %682 = extractvalue %dx.types.CBufRet.f32 %681, 0
  %683 = extractvalue %dx.types.CBufRet.f32 %681, 1
  %684 = extractvalue %dx.types.CBufRet.f32 %681, 2
  %685 = fsub fast float %218, %682
  %686 = fsub fast float %219, %683
  %687 = fsub fast float %220, %684
  %688 = fmul fast float %685, %678
  %689 = fmul fast float %686, %679
  %690 = fmul fast float %687, %680
  %691 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %692 = extractvalue %dx.types.CBufRet.i32 %691, 0
  %693 = extractvalue %dx.types.CBufRet.i32 %691, 1
  %694 = uitofp i32 %692 to float
  %695 = uitofp i32 %693 to float
  %696 = fmul fast float %688, %694
  %697 = fmul fast float %689, %695
  %698 = fadd fast float %696, 5.000000e-01
  %699 = fadd fast float %697, 5.000000e-01
  %700 = call float @dx.op.unary.f32(i32 22, float %698)  ; Frc(value)
  %701 = call float @dx.op.unary.f32(i32 22, float %699)  ; Frc(value)
  %702 = call float @dx.op.unary.f32(i32 27, float %698)  ; Round_ni(value)
  %703 = call float @dx.op.unary.f32(i32 27, float %699)  ; Round_ni(value)
  %704 = fadd fast float %702, 1.000000e+00
  %705 = fadd fast float %703, 1.000000e+00
  %706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %707 = extractvalue %dx.types.CBufRet.f32 %706, 0
  %708 = extractvalue %dx.types.CBufRet.f32 %706, 1
  %709 = fmul fast float %707, %704
  %710 = fmul fast float %708, %705
  %711 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %12, float %709, float %710, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %712 = extractvalue %dx.types.ResRet.f32 %711, 0
  %713 = extractvalue %dx.types.ResRet.f32 %711, 1
  %714 = extractvalue %dx.types.ResRet.f32 %711, 2
  %715 = extractvalue %dx.types.ResRet.f32 %711, 3
  %716 = extractvalue %dx.types.CBufRet.i32 %691, 2
  %717 = extractvalue %dx.types.CBufRet.f32 %706, 2
  %718 = uitofp i32 %716 to float
  %719 = fadd fast float %718, -1.000000e+00
  %720 = fmul fast float %719, %712
  %721 = fmul fast float %719, %713
  %722 = fmul fast float %719, %714
  %723 = fmul fast float %719, %715
  %724 = fadd fast float %720, 5.000000e-01
  %725 = fadd fast float %721, 5.000000e-01
  %726 = fadd fast float %722, 5.000000e-01
  %727 = fadd fast float %723, 5.000000e-01
  %728 = fptoui float %724 to i32
  %729 = fptoui float %725 to i32
  %730 = fptoui float %726 to i32
  %731 = fptoui float %727 to i32
  %732 = uitofp i32 %728 to float
  %733 = uitofp i32 %729 to float
  %734 = uitofp i32 %730 to float
  %735 = uitofp i32 %731 to float
  %736 = fadd fast float %732, 5.000000e-01
  %737 = fadd fast float %733, 5.000000e-01
  %738 = fadd fast float %734, 5.000000e-01
  %739 = fadd fast float %735, 5.000000e-01
  %740 = fmul fast float %736, %717
  %741 = fmul fast float %737, %717
  %742 = fmul fast float %738, %717
  %743 = fmul fast float %739, %717
  %744 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %13, float %740, float %690, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %745 = extractvalue %dx.types.ResRet.f32 %744, 0
  %746 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %13, float %741, float %690, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %747 = extractvalue %dx.types.ResRet.f32 %746, 0
  %748 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %13, float %742, float %690, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %749 = extractvalue %dx.types.ResRet.f32 %748, 0
  %750 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %13, float %743, float %690, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %751 = extractvalue %dx.types.ResRet.f32 %750, 0
  %752 = fsub fast float %749, %751
  %753 = fmul fast float %752, %700
  %754 = fadd fast float %753, %751
  %755 = fsub fast float %747, %745
  %756 = fmul fast float %755, %700
  %757 = fadd fast float %756, %745
  %758 = fsub fast float %757, %754
  %759 = fmul fast float %758, %701
  %760 = fadd fast float %759, %754
  %761 = fcmp fast ogt float %760, 0.000000e+00
  br i1 %761, label %762, label %830, !dx.controlflow.hints !54

; <label>:762                                     ; preds = %673
  %763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %764 = extractvalue %dx.types.CBufRet.f32 %763, 0
  %765 = extractvalue %dx.types.CBufRet.f32 %763, 1
  %766 = extractvalue %dx.types.CBufRet.f32 %763, 2
  %767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %768 = extractvalue %dx.types.CBufRet.f32 %767, 0
  %769 = extractvalue %dx.types.CBufRet.f32 %767, 1
  %770 = extractvalue %dx.types.CBufRet.f32 %767, 2
  %771 = fmul fast float %686, %678
  %772 = fmul fast float %687, %678
  %773 = fadd fast float %688, %768
  %774 = fadd fast float %771, %769
  %775 = fadd fast float %772, %770
  %776 = fmul fast float %773, %764
  %777 = fmul fast float %774, %764
  %778 = fmul fast float %775, %764
  %779 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %10, float %776, float %777, float %778, float undef, i32 0, i32 0, i32 0, float %674)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %780 = extractvalue %dx.types.ResRet.f32 %779, 0
  %781 = fmul fast float %773, %765
  %782 = fmul fast float %774, %765
  %783 = fmul fast float %775, %765
  %784 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %10, float %781, float %782, float %783, float undef, i32 0, i32 0, i32 0, float %675)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %785 = extractvalue %dx.types.ResRet.f32 %784, 1
  %786 = fmul fast float %773, %766
  %787 = fmul fast float %774, %766
  %788 = fmul fast float %775, %766
  %789 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %10, float %786, float %787, float %788, float undef, i32 0, i32 0, i32 0, float %676)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %790 = extractvalue %dx.types.ResRet.f32 %789, 2
  %791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %792 = extractvalue %dx.types.CBufRet.f32 %791, 1
  %793 = fmul fast float %785, %780
  %794 = fmul fast float %793, %790
  %795 = call float @dx.op.unary.f32(i32 23, float %794)  ; Log(value)
  %796 = fmul fast float %795, %792
  %797 = call float @dx.op.unary.f32(i32 21, float %796)  ; Exp(value)
  %798 = extractvalue %dx.types.CBufRet.f32 %791, 2
  %799 = fmul fast float %760, %760
  %800 = fmul fast float %799, %797
  %801 = fmul fast float %800, %798
  %802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %803 = extractvalue %dx.types.CBufRet.f32 %802, 3
  %804 = fmul fast float %803, %801
  %805 = bitcast float %804 to i32
  %806 = sitofp i32 %805 to float
  %807 = fptosi float %806 to i32
  %808 = bitcast i32 %807 to float
  %809 = fsub fast float 1.000000e+00, %801
  %810 = bitcast float %809 to i32
  %811 = sitofp i32 %810 to float
  %812 = fptosi float %811 to i32
  %813 = bitcast i32 %812 to float
  %814 = fadd fast float %808, %813
  %815 = bitcast float %814 to i32
  %816 = sub nsw i32 2129859010, %815
  %817 = bitcast i32 %816 to float
  %818 = fmul fast float %817, %808
  %819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %820 = extractvalue %dx.types.CBufRet.f32 %819, 3
  %821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %822 = extractvalue %dx.types.CBufRet.f32 %821, 0
  %823 = fmul fast float %818, %822
  %824 = fadd fast float %823, 1.000000e+00
  %825 = bitcast float %824 to i32
  %826 = sub nsw i32 2129859010, %825
  %827 = bitcast i32 %826 to float
  %828 = fmul fast float %818, %820
  %829 = fmul fast float %828, %827
  br label %830

; <label>:830                                     ; preds = %762, %673
  %831 = phi float [ %829, %762 ], [ %760, %673 ]
  %832 = fmul fast float %831, %605
  %833 = fadd fast float %832, %652
  br label %834

; <label>:834                                     ; preds = %830, %651
  %835 = phi float [ %833, %830 ], [ %652, %651 ]
  br i1 %339, label %961, label %836, !dx.controlflow.hints !55

; <label>:836                                     ; preds = %834
  %837 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %838 = extractvalue %dx.types.CBufRet.i32 %837, 0
  %839 = icmp ne i32 %838, 0
  %840 = zext i1 %839 to i32
  %841 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %842 = extractvalue %dx.types.CBufRet.i32 %841, 0
  %843 = icmp eq i32 %842, 0
  br i1 %843, label %877, label %844

; <label>:844                                     ; preds = %836
  br label %845

; <label>:845                                     ; preds = %872, %844
  %846 = phi i32 [ %873, %872 ], [ 0, %844 ]
  %847 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %846, i32 0)  ; BufferLoad(srv,index,wot)
  %848 = extractvalue %dx.types.ResRet.f32 %847, 0
  %849 = extractvalue %dx.types.ResRet.f32 %847, 1
  %850 = extractvalue %dx.types.ResRet.f32 %847, 2
  %851 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %846, i32 16)  ; BufferLoad(srv,index,wot)
  %852 = extractvalue %dx.types.ResRet.f32 %851, 0
  %853 = extractvalue %dx.types.ResRet.f32 %851, 1
  %854 = extractvalue %dx.types.ResRet.f32 %851, 2
  %855 = fsub fast float %848, %852
  %856 = fsub fast float %849, %853
  %857 = fsub fast float %850, %854
  %858 = fadd fast float %852, %848
  %859 = fadd fast float %853, %849
  %860 = fadd fast float %854, %850
  %861 = fcmp fast olt float %218, %855
  %862 = fcmp fast olt float %219, %856
  %863 = fcmp fast olt float %220, %857
  %864 = or i1 %861, %862
  %865 = or i1 %863, %864
  %866 = fcmp fast ogt float %218, %858
  %867 = fcmp fast ogt float %219, %859
  %868 = fcmp fast ogt float %220, %860
  %869 = or i1 %866, %867
  %870 = or i1 %868, %869
  %871 = or i1 %865, %870
  br i1 %871, label %872, label %875, !dx.controlflow.hints !56

; <label>:872                                     ; preds = %845
  %873 = add nuw i32 %846, 1
  %874 = icmp ult i32 %873, %842
  br i1 %874, label %845, label %875

; <label>:875                                     ; preds = %872, %845
  %876 = phi i32 [ 255, %872 ], [ %846, %845 ]
  br label %877

; <label>:877                                     ; preds = %875, %836
  %878 = phi i32 [ 255, %836 ], [ %876, %875 ]
  %879 = icmp eq i32 %878, 255
  br i1 %879, label %885, label %880, !dx.controlflow.hints !57

; <label>:880                                     ; preds = %877
  %881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %878, i32 156)  ; BufferLoad(srv,index,wot)
  %882 = extractvalue %dx.types.ResRet.i32 %881, 0
  %883 = icmp ne i32 %882, 0
  %884 = zext i1 %883 to i32
  br label %885

; <label>:885                                     ; preds = %880, %877
  %886 = phi i32 [ %884, %880 ], [ %840, %877 ]
  %887 = icmp eq i32 %886, 0
  br i1 %887, label %888, label %957, !dx.controlflow.hints !58

; <label>:888                                     ; preds = %885
  %889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %890 = extractvalue %dx.types.CBufRet.f32 %889, 3
  %891 = extractvalue %dx.types.CBufRet.f32 %249, 0
  %892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %893 = extractvalue %dx.types.CBufRet.f32 %892, 2
  %894 = extractvalue %dx.types.CBufRet.f32 %892, 3
  br i1 %879, label %905, label %895, !dx.controlflow.hints !59

; <label>:895                                     ; preds = %888
  %896 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %878, i32 60)  ; BufferLoad(srv,index,wot)
  %897 = extractvalue %dx.types.ResRet.f32 %896, 0
  %898 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %878, i32 64)  ; BufferLoad(srv,index,wot)
  %899 = extractvalue %dx.types.ResRet.f32 %898, 0
  %900 = extractvalue %dx.types.ResRet.f32 %898, 1
  %901 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %878, i32 72)  ; BufferLoad(srv,index,wot)
  %902 = extractvalue %dx.types.ResRet.f32 %901, 0
  %903 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %878, i32 96)  ; BufferLoad(srv,index,wot)
  %904 = extractvalue %dx.types.ResRet.f32 %903, 0
  br label %905

; <label>:905                                     ; preds = %895, %888
  %906 = phi float [ %899, %895 ], [ %893, %888 ]
  %907 = phi float [ %900, %895 ], [ %894, %888 ]
  %908 = phi float [ %904, %895 ], [ %891, %888 ]
  %909 = phi float [ %902, %895 ], [ %250, %888 ]
  %910 = phi float [ %897, %895 ], [ %252, %888 ]
  %911 = call float @dx.op.binary.f32(i32 35, float %333, float 0.000000e+00)  ; FMax(a,b)
  %912 = call float @dx.op.binary.f32(i32 36, float %911, float 1.000000e+00)  ; FMin(a,b)
  %913 = call float @dx.op.unary.f32(i32 24, float %912)  ; Sqrt(value)
  %914 = call float @dx.op.binary.f32(i32 35, float %336, float 0x3F847AE140000000)  ; FMax(a,b)
  %915 = fsub fast float %334, %220
  %916 = fsub fast float %220, %335
  %917 = call float @dx.op.binary.f32(i32 36, float %916, float %915)  ; FMin(a,b)
  %918 = fdiv fast float %917, %914
  %919 = call float @dx.op.unary.f32(i32 7, float %918)  ; Saturate(value)
  %920 = fsub fast float %220, %909
  %921 = fdiv fast float %920, %910
  %922 = call float @dx.op.unary.f32(i32 7, float %921)  ; Saturate(value)
  %923 = fsub fast float 1.000000e+00, %922
  %924 = fmul float %919, %923
  %925 = fmul float %924, %924
  %926 = fmul fast float %913, %890
  %927 = fmul fast float %926, %925
  %928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %929 = extractvalue %dx.types.CBufRet.f32 %928, 2
  %930 = extractvalue %dx.types.CBufRet.f32 %928, 1
  %931 = fsub fast float %927, %930
  %932 = fsub fast float %929, %930
  %933 = fdiv fast float %931, %932
  %934 = call float @dx.op.unary.f32(i32 7, float %933)  ; Saturate(value)
  %935 = fmul fast float %934, %908
  %936 = fcmp fast ogt float %907, 0.000000e+00
  br i1 %936, label %937, label %957, !dx.controlflow.hints !60

; <label>:937                                     ; preds = %905
  %938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %939 = extractvalue %dx.types.CBufRet.f32 %938, 0
  %940 = extractvalue %dx.types.CBufRet.f32 %938, 1
  %941 = extractvalue %dx.types.CBufRet.f32 %938, 2
  %942 = fsub fast float %218, %939
  %943 = fsub fast float %219, %940
  %944 = fsub fast float %220, %941
  %945 = fmul fast float %942, %942
  %946 = fmul fast float %943, %943
  %947 = fadd fast float %945, %946
  %948 = fmul fast float %944, %944
  %949 = fadd fast float %947, %948
  %950 = call float @dx.op.unary.f32(i32 24, float %949)  ; Sqrt(value)
  %951 = fsub fast float %950, %906
  %952 = fsub fast float %907, %906
  %953 = fdiv fast float %951, %952
  %954 = call float @dx.op.unary.f32(i32 7, float %953)  ; Saturate(value)
  %955 = fmul fast float %954, %954
  %956 = fmul fast float %955, %935
  br label %957

; <label>:957                                     ; preds = %937, %905, %885
  %958 = phi float [ 0.000000e+00, %885 ], [ %956, %937 ], [ %935, %905 ]
  %959 = fmul fast float %958, %605
  %960 = fadd fast float %959, %835
  br label %961

; <label>:961                                     ; preds = %957, %834
  %962 = phi float [ %960, %957 ], [ %835, %834 ]
  %963 = icmp eq i32 %594, 0
  br i1 %963, label %995, label %964, !dx.controlflow.hints !61

; <label>:964                                     ; preds = %961
  %965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %966 = extractvalue %dx.types.CBufRet.f32 %965, 1
  %967 = fsub fast float %605, %966
  %968 = extractvalue %dx.types.CBufRet.f32 %965, 3
  %969 = fmul fast float %967, %968
  %970 = call float @dx.op.unary.f32(i32 7, float %969)  ; Saturate(value)
  %971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %972 = extractvalue %dx.types.CBufRet.f32 %971, 3
  %973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %974 = extractvalue %dx.types.CBufRet.f32 %973, 2
  %975 = fsub fast float %974, %592
  %976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %977 = extractvalue %dx.types.CBufRet.f32 %976, 3
  %978 = fmul fast float %975, %977
  %979 = call float @dx.op.unary.f32(i32 7, float %978)  ; Saturate(value)
  %980 = fmul fast float %979, %972
  %981 = extractvalue %dx.types.CBufRet.f32 %976, 0
  %982 = fsub fast float %221, %981
  %983 = extractvalue %dx.types.CBufRet.f32 %976, 1
  %984 = fmul fast float %982, %983
  %985 = call float @dx.op.unary.f32(i32 7, float %984)  ; Saturate(value)
  %986 = fsub fast float 1.000000e+00, %970
  %987 = fmul fast float %985, %986
  %988 = fadd fast float %987, %970
  %989 = extractvalue %dx.types.CBufRet.f32 %965, 0
  %990 = fsub fast float %980, %989
  %991 = fmul fast float %990, %988
  %992 = fadd fast float %991, %989
  %993 = fmul fast float %992, %605
  %994 = fadd fast float %993, %962
  br label %995

; <label>:995                                     ; preds = %964, %961
  %996 = phi float [ %994, %964 ], [ %962, %961 ]
  %997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %998 = extractvalue %dx.types.CBufRet.f32 %997, 1
  %999 = fcmp fast ogt float %996, %998
  br i1 %999, label %1000, label %1012, !dx.controlflow.hints !62

; <label>:1000                                    ; preds = %995
  %1001 = fmul fast float %996, 0xBFF7154760000000
  %1002 = call float @dx.op.unary.f32(i32 21, float %1001)  ; Exp(value)
  %1003 = call float @dx.op.unary.f32(i32 7, float %1002)  ; Saturate(value)
  %1004 = icmp eq i32 %223, 0
  br i1 %1004, label %1005, label %1006, !dx.controlflow.hints !63

; <label>:1005                                    ; preds = %1000
  br label %1006

; <label>:1006                                    ; preds = %1005, %1000
  %1007 = phi i32 [ %223, %1000 ], [ 1, %1005 ]
  %1008 = phi float [ %224, %1000 ], [ %221, %1005 ]
  %1009 = fadd fast float %605, %225
  %1010 = fadd fast float %996, %226
  %1011 = fmul fast float %1003, %217
  br label %1012

; <label>:1012                                    ; preds = %1006, %995
  %1013 = phi float [ %1011, %1006 ], [ %217, %995 ]
  %1014 = phi i32 [ %1007, %1006 ], [ %223, %995 ]
  %1015 = phi float [ %1008, %1006 ], [ %224, %995 ]
  %1016 = phi float [ %1009, %1006 ], [ %225, %995 ]
  %1017 = phi float [ %1010, %1006 ], [ %226, %995 ]
  %1018 = fadd fast float %605, %221
  %1019 = fmul fast float %605, %58
  %1020 = fmul fast float %605, %59
  %1021 = fmul fast float %605, %60
  %1022 = fadd fast float %1019, %218
  %1023 = fadd fast float %1020, %219
  %1024 = fadd fast float %1021, %220
  %1025 = fcmp fast olt float %1018, %191
  %1026 = extractvalue %dx.types.CBufRet.f32 %997, 2
  %1027 = fcmp fast olt float %1026, %1013
  %1028 = and i1 %1025, %1027
  br i1 %1028, label %210, label %1029

; <label>:1029                                    ; preds = %1012
  br label %1030

; <label>:1030                                    ; preds = %1029, %184
  %1031 = phi float [ 0.000000e+00, %184 ], [ %1015, %1029 ]
  %1032 = phi float [ 0.000000e+00, %184 ], [ %1016, %1029 ]
  %1033 = phi float [ 0.000000e+00, %184 ], [ %1017, %1029 ]
  %1034 = extractvalue %dx.types.CBufRet.f32 %52, 3
  %1035 = fmul fast float %1034, %1031
  %1036 = fdiv fast float 1.000000e+00, %1032
  %1037 = fmul fast float %1036, %1033
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %17, i32 %18, i32 undef, float %1035, float %1037, float %1033, float %1035, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!27 = !{void ()* @cs_fog_raymarching_air_clouds_particles_brfog, !"cs_fog_raymarching_air_clouds_particles_brfog", null, !4, !28}
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
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 1}
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
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}

