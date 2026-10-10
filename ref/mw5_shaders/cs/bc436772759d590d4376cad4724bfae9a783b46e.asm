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
; shader hash: e23f338dcc04e18fe3c1c77356db0e06
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
;                                   texture     f32          3d      T0             t1     1
;                                   texture     f32          3d      T1             t2     1
;                                   texture     f32          2d      T2             t8     1
;                                   texture     f32          2d      T3             t9     1
;                                   texture     f32          2d      T4            t18     1
;                                   texture  struct         r/o      T5            t25     1
;                                   texture     f32          2d      T6            t13     1
;                                       UAV     f32          2d      U0             u7     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
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

define void @cs_fog_raymarching_clouds_particles() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %17 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %18 = uitofp i32 %16 to float
  %19 = uitofp i32 %17 to float
  %20 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %21 = extractvalue %dx.types.CBufRet.f32 %20, 2
  %22 = fmul fast float %21, 0x3FE3C6EF40000000
  %23 = frem fast float %18, 2.560000e+02
  %24 = frem fast float %19, 2.560000e+02
  %25 = fptoui float %23 to i32
  %26 = fptoui float %24 to i32
  %27 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %25, i32 %26, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %28 = extractvalue %dx.types.ResRet.f32 %27, 1
  %29 = fadd fast float %28, %22
  %30 = call float @dx.op.unary.f32(i32 22, float %29)  ; Frc(value)
  %31 = fadd fast float %18, 5.000000e-01
  %32 = fadd fast float %19, 5.000000e-01
  %33 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %34 = extractvalue %dx.types.CBufRet.f32 %33, 2
  %35 = extractvalue %dx.types.CBufRet.f32 %33, 3
  %36 = fmul fast float %34, %31
  %37 = fmul fast float %35, %32
  %38 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %39 = extractvalue %dx.types.CBufRet.f32 %38, 0
  %40 = extractvalue %dx.types.CBufRet.f32 %38, 1
  %41 = extractvalue %dx.types.CBufRet.f32 %38, 2
  %42 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %43 = extractvalue %dx.types.CBufRet.f32 %42, 0
  %44 = extractvalue %dx.types.CBufRet.f32 %42, 1
  %45 = fmul fast float %36, %43
  %46 = fmul fast float %37, %44
  %47 = fadd fast float %45, %39
  %48 = fadd fast float %46, %40
  %49 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.f32 %49, 2
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 0
  %53 = extractvalue %dx.types.CBufRet.f32 %51, 1
  %54 = extractvalue %dx.types.CBufRet.f32 %51, 2
  %55 = fsub fast float -0.000000e+00, %52
  %56 = fsub fast float -0.000000e+00, %53
  %57 = fsub fast float -0.000000e+00, %54
  %58 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.i32 %58, 3
  %60 = icmp eq i32 %59, 0
  %61 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %62 = extractvalue %dx.types.CBufRet.f32 %61, 2
  %63 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %64 = extractvalue %dx.types.CBufRet.f32 %63, 2
  %65 = fsub fast float %62, %41
  %66 = fadd fast float %65, %64
  br i1 %60, label %78, label %67, !dx.controlflow.hints !29

; <label>:67                                      ; preds = %0
  %68 = fsub fast float -0.000000e+00, %48
  %69 = fsub fast float -0.000000e+00, %47
  %70 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %69, float %68, float %66)  ; Dot3(ax,ay,az,bx,by,bz)
  %71 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %55, float %56, float %57)  ; Dot3(ax,ay,az,bx,by,bz)
  %72 = fdiv fast float 1.000000e+00, %71
  %73 = fmul fast float %72, %70
  %74 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %69, float %68, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %75 = fmul fast float %72, %74
  %76 = call float @dx.op.binary.f32(i32 36, float %73, float %75)  ; FMin(a,b)
  %77 = call float @dx.op.binary.f32(i32 35, float %73, float %75)  ; FMax(a,b)
  br label %111

; <label>:78                                      ; preds = %0
  %79 = fdiv fast float 1.000000e+00, %55
  %80 = fdiv fast float 1.000000e+00, %56
  %81 = fdiv fast float 1.000000e+00, %57
  %82 = extractvalue %dx.types.CBufRet.f32 %61, 0
  %83 = extractvalue %dx.types.CBufRet.f32 %61, 1
  %84 = extractvalue %dx.types.CBufRet.f32 %63, 0
  %85 = extractvalue %dx.types.CBufRet.f32 %63, 1
  %86 = fsub fast float %82, %47
  %87 = fmul fast float %86, %79
  %88 = fadd fast float %86, %84
  %89 = fmul fast float %88, %79
  %90 = call float @dx.op.binary.f32(i32 36, float %87, float %89)  ; FMin(a,b)
  %91 = call float @dx.op.binary.f32(i32 35, float %87, float %89)  ; FMax(a,b)
  %92 = fsub fast float %83, %48
  %93 = fmul fast float %92, %80
  %94 = fadd fast float %92, %85
  %95 = fmul fast float %94, %80
  %96 = call float @dx.op.binary.f32(i32 36, float %93, float %95)  ; FMin(a,b)
  %97 = call float @dx.op.binary.f32(i32 35, float %90, float %96)  ; FMax(a,b)
  %98 = call float @dx.op.binary.f32(i32 35, float %93, float %95)  ; FMax(a,b)
  %99 = call float @dx.op.binary.f32(i32 36, float %91, float %98)  ; FMin(a,b)
  %100 = fmul fast float %65, %81
  %101 = fmul fast float %66, %81
  %102 = call float @dx.op.binary.f32(i32 36, float %100, float %101)  ; FMin(a,b)
  %103 = call float @dx.op.binary.f32(i32 35, float %97, float %102)  ; FMax(a,b)
  %104 = call float @dx.op.binary.f32(i32 35, float %100, float %101)  ; FMax(a,b)
  %105 = call float @dx.op.binary.f32(i32 36, float %99, float %104)  ; FMin(a,b)
  %106 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %103)  ; FMax(a,b)
  %107 = fcmp fast ult float %105, %106
  br i1 %107, label %111, label %108, !dx.controlflow.hints !30

; <label>:108                                     ; preds = %78
  %109 = call float @dx.op.binary.f32(i32 36, float %103, float %105)  ; FMin(a,b)
  %110 = call float @dx.op.binary.f32(i32 35, float %103, float %105)  ; FMax(a,b)
  br label %111

; <label>:111                                     ; preds = %108, %78, %67
  %112 = phi float [ %76, %67 ], [ %109, %108 ], [ 0.000000e+00, %78 ]
  %113 = phi float [ %77, %67 ], [ %110, %108 ], [ 0.000000e+00, %78 ]
  %114 = fcmp fast oeq float %113, 0.000000e+00
  br i1 %114, label %118, label %115, !dx.controlflow.hints !31

; <label>:115                                     ; preds = %111
  %116 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %112)  ; FMin(a,b)
  %117 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %113)  ; FMax(a,b)
  br label %118

; <label>:118                                     ; preds = %115, %111
  %119 = phi float [ %117, %115 ], [ -1.000000e+00, %111 ]
  %120 = phi i32 [ 1, %115 ], [ 0, %111 ]
  %121 = phi float [ %116, %115 ], [ 0x47EFFFFFE0000000, %111 ]
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 3
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 0
  %126 = fsub fast float -0.000000e+00, %47
  %127 = fsub fast float -0.000000e+00, %48
  %128 = fsub fast float %123, %41
  %129 = fadd fast float %128, %125
  %130 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %126, float %127, float %129)  ; Dot3(ax,ay,az,bx,by,bz)
  %131 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %55, float %56, float %57)  ; Dot3(ax,ay,az,bx,by,bz)
  %132 = fdiv fast float 1.000000e+00, %131
  %133 = fmul fast float %132, %130
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %136 = fsub fast float %135, %41
  %137 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %126, float %127, float %136)  ; Dot3(ax,ay,az,bx,by,bz)
  %138 = fmul fast float %132, %137
  %139 = call float @dx.op.binary.f32(i32 36, float %133, float %138)  ; FMin(a,b)
  %140 = call float @dx.op.binary.f32(i32 35, float %133, float %138)  ; FMax(a,b)
  %141 = call float @dx.op.binary.f32(i32 36, float %121, float %139)  ; FMin(a,b)
  %142 = call float @dx.op.binary.f32(i32 35, float %119, float %140)  ; FMax(a,b)
  %143 = fdiv fast float 1.000000e+00, %55
  %144 = fdiv fast float 1.000000e+00, %56
  %145 = fdiv fast float 1.000000e+00, %57
  %146 = call float @dx.op.binary.f32(i32 36, float %50, float %142)  ; FMin(a,b)
  %147 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %141)  ; FMax(a,b)
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 1
  %150 = fmul fast float %30, 2.000000e+00
  %151 = fadd fast float %150, -1.000000e+00
  %152 = fmul fast float %149, %151
  %153 = fadd fast float %152, %147
  %154 = fcmp fast olt float %153, %146
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 2
  %157 = fcmp fast olt float %156, 1.000000e+00
  %158 = and i1 %157, %154
  br i1 %158, label %159, label %708

; <label>:159                                     ; preds = %118
  %160 = fmul fast float %153, %57
  %161 = fadd fast float %160, %41
  %162 = fmul fast float %153, %56
  %163 = fadd fast float %162, %48
  %164 = fmul fast float %153, %55
  %165 = fadd fast float %164, %47
  br label %166

; <label>:166                                     ; preds = %690, %159
  %167 = phi float [ %285, %690 ], [ undef, %159 ]
  %168 = phi float [ %286, %690 ], [ undef, %159 ]
  %169 = phi float [ %287, %690 ], [ undef, %159 ]
  %170 = phi float [ %288, %690 ], [ undef, %159 ]
  %171 = phi float [ %691, %690 ], [ 1.000000e+00, %159 ]
  %172 = phi float [ %700, %690 ], [ %165, %159 ]
  %173 = phi float [ %701, %690 ], [ %163, %159 ]
  %174 = phi float [ %702, %690 ], [ %161, %159 ]
  %175 = phi float [ %696, %690 ], [ %153, %159 ]
  %176 = phi i32 [ %290, %690 ], [ 10, %159 ]
  %177 = phi i32 [ %692, %690 ], [ 0, %159 ]
  %178 = phi float [ %693, %690 ], [ 0.000000e+00, %159 ]
  %179 = phi float [ %694, %690 ], [ 0.000000e+00, %159 ]
  %180 = phi float [ %695, %690 ], [ 0.000000e+00, %159 ]
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 1
  %183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %184 = extractvalue %dx.types.CBufRet.f32 %183, 0
  %185 = extractvalue %dx.types.CBufRet.f32 %183, 1
  %186 = fsub fast float %172, %184
  %187 = fsub fast float %173, %185
  %188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %189 = extractvalue %dx.types.CBufRet.f32 %188, 2
  %190 = extractvalue %dx.types.CBufRet.f32 %188, 3
  %191 = fmul fast float %186, %189
  %192 = fmul fast float %187, %190
  %193 = call float @dx.op.binary.f32(i32 36, float %191, float %192)  ; FMin(a,b)
  %194 = fcmp fast olt float %193, 0.000000e+00
  %195 = call float @dx.op.binary.f32(i32 35, float %191, float %192)  ; FMax(a,b)
  %196 = fcmp fast ogt float %195, 1.000000e+00
  %197 = or i1 %194, %196
  %198 = extractvalue %dx.types.CBufRet.f32 %183, 2
  %199 = fcmp fast olt float %174, %198
  %200 = or i1 %197, %199
  %201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %202 = extractvalue %dx.types.CBufRet.f32 %201, 3
  %203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %204 = extractvalue %dx.types.CBufRet.f32 %203, 0
  %205 = fadd fast float %204, %202
  %206 = fcmp fast ogt float %174, %205
  %207 = or i1 %200, %206
  br i1 %207, label %208, label %237, !dx.controlflow.hints !32

; <label>:208                                     ; preds = %166
  %209 = extractvalue %dx.types.CBufRet.f32 %188, 0
  %210 = extractvalue %dx.types.CBufRet.f32 %188, 1
  %211 = fsub fast float %184, %172
  %212 = fmul fast float %211, %143
  %213 = fadd fast float %211, %209
  %214 = fmul fast float %213, %143
  %215 = call float @dx.op.binary.f32(i32 36, float %212, float %214)  ; FMin(a,b)
  %216 = call float @dx.op.binary.f32(i32 35, float %212, float %214)  ; FMax(a,b)
  %217 = fsub fast float %185, %173
  %218 = fmul fast float %217, %144
  %219 = fadd fast float %217, %210
  %220 = fmul fast float %219, %144
  %221 = call float @dx.op.binary.f32(i32 36, float %218, float %220)  ; FMin(a,b)
  %222 = call float @dx.op.binary.f32(i32 35, float %215, float %221)  ; FMax(a,b)
  %223 = call float @dx.op.binary.f32(i32 35, float %218, float %220)  ; FMax(a,b)
  %224 = call float @dx.op.binary.f32(i32 36, float %216, float %223)  ; FMin(a,b)
  %225 = fsub fast float %198, %174
  %226 = fmul fast float %225, %145
  %227 = fsub fast float %202, %174
  %228 = fadd fast float %227, %204
  %229 = fmul fast float %228, %145
  %230 = call float @dx.op.binary.f32(i32 36, float %226, float %229)  ; FMin(a,b)
  %231 = call float @dx.op.binary.f32(i32 35, float %222, float %230)  ; FMax(a,b)
  %232 = call float @dx.op.binary.f32(i32 35, float %226, float %229)  ; FMax(a,b)
  %233 = call float @dx.op.binary.f32(i32 36, float %224, float %232)  ; FMin(a,b)
  %234 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %231)  ; FMax(a,b)
  %235 = fcmp fast oge float %233, %234
  %236 = select i1 %235, float %231, float 1.000000e+07
  br label %283

; <label>:237                                     ; preds = %166
  %238 = fsub fast float 1.000000e+00, %192
  %239 = icmp eq i32 %176, 0
  br i1 %239, label %268, label %240

; <label>:240                                     ; preds = %237
  br label %241

; <label>:241                                     ; preds = %264, %240
  %242 = phi i32 [ %265, %264 ], [ %176, %240 ]
  %243 = uitofp i32 %242 to float
  %244 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %13, float %191, float %238, float undef, float undef, i32 0, i32 0, i32 undef, float %243)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %245 = extractvalue %dx.types.ResRet.f32 %244, 0
  %246 = extractvalue %dx.types.ResRet.f32 %244, 1
  %247 = extractvalue %dx.types.ResRet.f32 %244, 2
  %248 = fcmp fast oeq float %245, 0.000000e+00
  %249 = fcmp ule float %174, %247
  %250 = fcmp uge float %174, %246
  %251 = or i1 %250, %249
  %252 = or i1 %248, %251
  br i1 %252, label %253, label %264, !dx.controlflow.hints !33

; <label>:253                                     ; preds = %241
  %254 = extractvalue %dx.types.ResRet.f32 %244, 3
  %255 = extractvalue %dx.types.CBufRet.f32 %188, 0
  %256 = and i32 %242, 31
  %257 = lshr i32 1024, %256
  %258 = uitofp i32 %257 to float
  %259 = fdiv fast float %255, %258
  %260 = add i32 %242, 1
  %261 = uitofp i32 %260 to float
  %262 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %261)  ; FMin(a,b)
  %263 = fptosi float %262 to i32
  br label %283

; <label>:264                                     ; preds = %241
  %265 = add i32 %242, -1
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %241, !llvm.loop !34

; <label>:267                                     ; preds = %264
  br label %268

; <label>:268                                     ; preds = %267, %237
  %269 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %12, float %191, float %238, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %270 = extractvalue %dx.types.ResRet.f32 %269, 0
  %271 = extractvalue %dx.types.ResRet.f32 %269, 1
  %272 = extractvalue %dx.types.ResRet.f32 %269, 2
  %273 = extractvalue %dx.types.ResRet.f32 %269, 3
  %274 = extractvalue %dx.types.CBufRet.f32 %188, 0
  %275 = fmul fast float %274, 9.765625e-04
  %276 = fcmp fast oeq float %270, 0.000000e+00
  %277 = fcmp ule float %174, %272
  %278 = fcmp uge float %174, %271
  %279 = or i1 %278, %277
  %280 = or i1 %276, %279
  %281 = zext i1 %280 to i32
  %282 = xor i32 %281, 1
  br label %283

; <label>:283                                     ; preds = %268, %253, %208
  %284 = phi float [ %236, %208 ], [ %259, %253 ], [ %275, %268 ]
  %285 = phi float [ %167, %208 ], [ %245, %253 ], [ %270, %268 ]
  %286 = phi float [ %168, %208 ], [ %246, %253 ], [ %271, %268 ]
  %287 = phi float [ %169, %208 ], [ %247, %253 ], [ %272, %268 ]
  %288 = phi float [ %170, %208 ], [ %254, %253 ], [ %273, %268 ]
  %289 = phi i32 [ 0, %208 ], [ 0, %253 ], [ %282, %268 ]
  %290 = phi i32 [ 10, %208 ], [ %263, %253 ], [ 1, %268 ]
  %291 = icmp eq i32 %289, 0
  %292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %293 = extractvalue %dx.types.CBufRet.f32 %292, 2
  %294 = call float @dx.op.binary.f32(i32 35, float %284, float %293)  ; FMax(a,b)
  %295 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %294)  ; FMin(a,b)
  %296 = icmp eq i32 %120, 0
  br i1 %296, label %352, label %297, !dx.controlflow.hints !36

; <label>:297                                     ; preds = %283
  %298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %299 = extractvalue %dx.types.CBufRet.f32 %298, 0
  %300 = extractvalue %dx.types.CBufRet.f32 %298, 1
  %301 = extractvalue %dx.types.CBufRet.f32 %298, 2
  %302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %303 = extractvalue %dx.types.CBufRet.f32 %302, 0
  %304 = extractvalue %dx.types.CBufRet.f32 %302, 1
  %305 = extractvalue %dx.types.CBufRet.f32 %302, 2
  %306 = fsub fast float %172, %303
  %307 = fsub fast float %173, %304
  %308 = fsub fast float %174, %305
  %309 = fmul fast float %306, %299
  %310 = fmul fast float %307, %300
  %311 = fmul fast float %308, %301
  %312 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %313 = extractvalue %dx.types.CBufRet.i32 %312, 3
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %318, label %315, !dx.controlflow.hints !37

; <label>:315                                     ; preds = %297
  %316 = call float @dx.op.unary.f32(i32 22, float %309)  ; Frc(value)
  %317 = call float @dx.op.unary.f32(i32 22, float %310)  ; Frc(value)
  br label %318

; <label>:318                                     ; preds = %315, %297
  %319 = phi float [ %316, %315 ], [ %309, %297 ]
  %320 = phi float [ %317, %315 ], [ %310, %297 ]
  %321 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %10, float %319, float %320, float %311, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %322 = extractvalue %dx.types.ResRet.f32 %321, 0
  %323 = fmul fast float %322, 2.000000e+00
  %324 = fadd fast float %323, -1.000000e+00
  %325 = extractvalue %dx.types.CBufRet.f32 %298, 3
  %326 = fmul fast float %324, %325
  %327 = fcmp fast olt float %326, 0.000000e+00
  %328 = fcmp fast oge float %311, 0.000000e+00
  %329 = fcmp fast ole float %311, 1.000000e+00
  br i1 %314, label %332, label %330, !dx.controlflow.hints !38

; <label>:330                                     ; preds = %318
  %331 = and i1 %328, %329
  br label %342

; <label>:332                                     ; preds = %318
  %333 = fcmp fast oge float %309, 0.000000e+00
  %334 = fcmp fast oge float %310, 0.000000e+00
  %335 = and i1 %333, %334
  %336 = and i1 %328, %335
  %337 = fcmp fast ole float %309, 1.000000e+00
  %338 = fcmp fast ole float %310, 1.000000e+00
  %339 = and i1 %337, %338
  %340 = and i1 %329, %339
  %341 = and i1 %336, %340
  br label %342

; <label>:342                                     ; preds = %332, %330
  %343 = phi i1 [ %331, %330 ], [ %341, %332 ]
  %344 = and i1 %327, %343
  %345 = call float @dx.op.unary.f32(i32 6, float %326)  ; FAbs(value)
  %346 = extractvalue %dx.types.CBufRet.f32 %292, 1
  %347 = extractvalue %dx.types.CBufRet.f32 %292, 0
  %348 = call float @dx.op.binary.f32(i32 35, float %345, float %347)  ; FMax(a,b)
  %349 = select i1 %344, float %346, float %348
  %350 = zext i1 %344 to i32
  %351 = call float @dx.op.binary.f32(i32 36, float %295, float %349)  ; FMin(a,b)
  br label %352

; <label>:352                                     ; preds = %342, %283
  %353 = phi float [ %351, %342 ], [ %295, %283 ]
  %354 = phi i32 [ %350, %342 ], [ 0, %283 ]
  %355 = extractvalue %dx.types.CBufRet.f32 %181, 2
  %356 = fmul fast float %355, %175
  %357 = call float @dx.op.unary.f32(i32 23, float %356)  ; Log(value)
  %358 = fmul fast float %357, 0x3FE62E4300000000
  %359 = call float @dx.op.binary.f32(i32 35, float %358, float 1.000000e+00)  ; FMax(a,b)
  %360 = fmul fast float %359, 0x47EFFFFFE0000000
  %361 = call float @dx.op.binary.f32(i32 36, float %360, float %353)  ; FMin(a,b)
  %362 = call float @dx.op.binary.f32(i32 35, float %361, float %182)  ; FMax(a,b)
  %363 = fadd fast float %146, 0x3F1A36E2E0000000
  %364 = fsub fast float %363, %175
  %365 = call float @dx.op.binary.f32(i32 36, float %364, float %362)  ; FMin(a,b)
  %366 = icmp eq i32 %354, 0
  br i1 %366, label %546, label %367, !dx.controlflow.hints !39

; <label>:367                                     ; preds = %352
  %368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %369 = extractvalue %dx.types.CBufRet.f32 %368, 3
  %370 = fmul fast float %369, %175
  %371 = fcmp fast oeq float %370, 0.000000e+00
  br i1 %371, label %386, label %372, !dx.controlflow.hints !40

; <label>:372                                     ; preds = %367
  %373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %374 = extractvalue %dx.types.CBufRet.f32 %373, 3
  %375 = fmul fast float %374, %370
  %376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %377 = extractvalue %dx.types.CBufRet.f32 %376, 0
  %378 = extractvalue %dx.types.CBufRet.f32 %376, 1
  %379 = extractvalue %dx.types.CBufRet.f32 %376, 2
  %380 = fmul fast float %377, %375
  %381 = fmul fast float %378, %375
  %382 = fmul fast float %379, %375
  %383 = call float @dx.op.unary.f32(i32 23, float %380)  ; Log(value)
  %384 = call float @dx.op.unary.f32(i32 23, float %381)  ; Log(value)
  %385 = call float @dx.op.unary.f32(i32 23, float %382)  ; Log(value)
  br label %386

; <label>:386                                     ; preds = %372, %367
  %387 = phi float [ %383, %372 ], [ 0.000000e+00, %367 ]
  %388 = phi float [ %384, %372 ], [ 0.000000e+00, %367 ]
  %389 = phi float [ %385, %372 ], [ 0.000000e+00, %367 ]
  %390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %391 = extractvalue %dx.types.CBufRet.f32 %390, 0
  %392 = extractvalue %dx.types.CBufRet.f32 %390, 1
  %393 = extractvalue %dx.types.CBufRet.f32 %390, 2
  %394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %395 = extractvalue %dx.types.CBufRet.f32 %394, 0
  %396 = extractvalue %dx.types.CBufRet.f32 %394, 1
  %397 = extractvalue %dx.types.CBufRet.f32 %394, 2
  %398 = fsub fast float %172, %395
  %399 = fsub fast float %173, %396
  %400 = fsub fast float %174, %397
  %401 = fmul fast float %398, %391
  %402 = fmul fast float %399, %392
  %403 = fmul fast float %400, %393
  %404 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %405 = extractvalue %dx.types.CBufRet.i32 %404, 0
  %406 = extractvalue %dx.types.CBufRet.i32 %404, 1
  %407 = uitofp i32 %405 to float
  %408 = uitofp i32 %406 to float
  %409 = fmul fast float %401, %407
  %410 = fmul fast float %402, %408
  %411 = fadd fast float %409, 5.000000e-01
  %412 = fadd fast float %410, 5.000000e-01
  %413 = call float @dx.op.unary.f32(i32 22, float %411)  ; Frc(value)
  %414 = call float @dx.op.unary.f32(i32 22, float %412)  ; Frc(value)
  %415 = call float @dx.op.unary.f32(i32 27, float %411)  ; Round_ni(value)
  %416 = call float @dx.op.unary.f32(i32 27, float %412)  ; Round_ni(value)
  %417 = fadd fast float %415, 1.000000e+00
  %418 = fadd fast float %416, 1.000000e+00
  %419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %420 = extractvalue %dx.types.CBufRet.f32 %419, 0
  %421 = extractvalue %dx.types.CBufRet.f32 %419, 1
  %422 = fmul fast float %420, %417
  %423 = fmul fast float %421, %418
  %424 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %11, float %422, float %423, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %425 = extractvalue %dx.types.ResRet.f32 %424, 0
  %426 = extractvalue %dx.types.ResRet.f32 %424, 1
  %427 = extractvalue %dx.types.ResRet.f32 %424, 2
  %428 = extractvalue %dx.types.ResRet.f32 %424, 3
  %429 = extractvalue %dx.types.CBufRet.i32 %404, 2
  %430 = extractvalue %dx.types.CBufRet.f32 %419, 2
  %431 = uitofp i32 %429 to float
  %432 = fadd fast float %431, -1.000000e+00
  %433 = fmul fast float %432, %425
  %434 = fmul fast float %432, %426
  %435 = fmul fast float %432, %427
  %436 = fmul fast float %432, %428
  %437 = fadd fast float %433, 5.000000e-01
  %438 = fadd fast float %434, 5.000000e-01
  %439 = fadd fast float %435, 5.000000e-01
  %440 = fadd fast float %436, 5.000000e-01
  %441 = fptoui float %437 to i32
  %442 = fptoui float %438 to i32
  %443 = fptoui float %439 to i32
  %444 = fptoui float %440 to i32
  %445 = uitofp i32 %441 to float
  %446 = uitofp i32 %442 to float
  %447 = uitofp i32 %443 to float
  %448 = uitofp i32 %444 to float
  %449 = fadd fast float %445, 5.000000e-01
  %450 = fadd fast float %446, 5.000000e-01
  %451 = fadd fast float %447, 5.000000e-01
  %452 = fadd fast float %448, 5.000000e-01
  %453 = fmul fast float %449, %430
  %454 = fmul fast float %450, %430
  %455 = fmul fast float %451, %430
  %456 = fmul fast float %452, %430
  %457 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %12, float %453, float %403, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %458 = extractvalue %dx.types.ResRet.f32 %457, 0
  %459 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %12, float %454, float %403, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %460 = extractvalue %dx.types.ResRet.f32 %459, 0
  %461 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %12, float %455, float %403, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %462 = extractvalue %dx.types.ResRet.f32 %461, 0
  %463 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %12, float %456, float %403, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %464 = extractvalue %dx.types.ResRet.f32 %463, 0
  %465 = fsub fast float %462, %464
  %466 = fmul fast float %465, %413
  %467 = fadd fast float %466, %464
  %468 = fsub fast float %460, %458
  %469 = fmul fast float %468, %413
  %470 = fadd fast float %469, %458
  %471 = fsub fast float %470, %467
  %472 = fmul fast float %471, %414
  %473 = fadd fast float %472, %467
  %474 = fcmp fast ogt float %473, 0.000000e+00
  br i1 %474, label %475, label %543, !dx.controlflow.hints !41

; <label>:475                                     ; preds = %386
  %476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %477 = extractvalue %dx.types.CBufRet.f32 %476, 0
  %478 = extractvalue %dx.types.CBufRet.f32 %476, 1
  %479 = extractvalue %dx.types.CBufRet.f32 %476, 2
  %480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %481 = extractvalue %dx.types.CBufRet.f32 %480, 0
  %482 = extractvalue %dx.types.CBufRet.f32 %480, 1
  %483 = extractvalue %dx.types.CBufRet.f32 %480, 2
  %484 = fmul fast float %399, %391
  %485 = fmul fast float %400, %391
  %486 = fadd fast float %401, %481
  %487 = fadd fast float %484, %482
  %488 = fadd fast float %485, %483
  %489 = fmul fast float %486, %477
  %490 = fmul fast float %487, %477
  %491 = fmul fast float %488, %477
  %492 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %9, float %489, float %490, float %491, float undef, i32 0, i32 0, i32 0, float %387)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %493 = extractvalue %dx.types.ResRet.f32 %492, 0
  %494 = fmul fast float %486, %478
  %495 = fmul fast float %487, %478
  %496 = fmul fast float %488, %478
  %497 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %9, float %494, float %495, float %496, float undef, i32 0, i32 0, i32 0, float %388)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %498 = extractvalue %dx.types.ResRet.f32 %497, 1
  %499 = fmul fast float %486, %479
  %500 = fmul fast float %487, %479
  %501 = fmul fast float %488, %479
  %502 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %9, float %499, float %500, float %501, float undef, i32 0, i32 0, i32 0, float %389)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %503 = extractvalue %dx.types.ResRet.f32 %502, 2
  %504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %505 = extractvalue %dx.types.CBufRet.f32 %504, 1
  %506 = fmul fast float %498, %493
  %507 = fmul fast float %506, %503
  %508 = call float @dx.op.unary.f32(i32 23, float %507)  ; Log(value)
  %509 = fmul fast float %508, %505
  %510 = call float @dx.op.unary.f32(i32 21, float %509)  ; Exp(value)
  %511 = extractvalue %dx.types.CBufRet.f32 %504, 2
  %512 = fmul fast float %473, %473
  %513 = fmul fast float %512, %510
  %514 = fmul fast float %513, %511
  %515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %516 = extractvalue %dx.types.CBufRet.f32 %515, 3
  %517 = fmul fast float %516, %514
  %518 = bitcast float %517 to i32
  %519 = sitofp i32 %518 to float
  %520 = fptosi float %519 to i32
  %521 = bitcast i32 %520 to float
  %522 = fsub fast float 1.000000e+00, %514
  %523 = bitcast float %522 to i32
  %524 = sitofp i32 %523 to float
  %525 = fptosi float %524 to i32
  %526 = bitcast i32 %525 to float
  %527 = fadd fast float %521, %526
  %528 = bitcast float %527 to i32
  %529 = sub nsw i32 2129859010, %528
  %530 = bitcast i32 %529 to float
  %531 = fmul fast float %530, %521
  %532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %533 = extractvalue %dx.types.CBufRet.f32 %532, 3
  %534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %535 = extractvalue %dx.types.CBufRet.f32 %534, 0
  %536 = fmul fast float %531, %535
  %537 = fadd fast float %536, 1.000000e+00
  %538 = bitcast float %537 to i32
  %539 = sub nsw i32 2129859010, %538
  %540 = bitcast i32 %539 to float
  %541 = fmul fast float %531, %533
  %542 = fmul fast float %541, %540
  br label %543

; <label>:543                                     ; preds = %475, %386
  %544 = phi float [ %542, %475 ], [ %473, %386 ]
  %545 = fmul fast float %544, %365
  br label %546

; <label>:546                                     ; preds = %543, %352
  %547 = phi float [ %545, %543 ], [ 0.000000e+00, %352 ]
  br i1 %291, label %673, label %548, !dx.controlflow.hints !42

; <label>:548                                     ; preds = %546
  %549 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %550 = extractvalue %dx.types.CBufRet.i32 %549, 0
  %551 = icmp ne i32 %550, 0
  %552 = zext i1 %551 to i32
  %553 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %554 = extractvalue %dx.types.CBufRet.i32 %553, 0
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %589, label %556

; <label>:556                                     ; preds = %548
  br label %557

; <label>:557                                     ; preds = %584, %556
  %558 = phi i32 [ %585, %584 ], [ 0, %556 ]
  %559 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %558, i32 0)  ; BufferLoad(srv,index,wot)
  %560 = extractvalue %dx.types.ResRet.f32 %559, 0
  %561 = extractvalue %dx.types.ResRet.f32 %559, 1
  %562 = extractvalue %dx.types.ResRet.f32 %559, 2
  %563 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %558, i32 16)  ; BufferLoad(srv,index,wot)
  %564 = extractvalue %dx.types.ResRet.f32 %563, 0
  %565 = extractvalue %dx.types.ResRet.f32 %563, 1
  %566 = extractvalue %dx.types.ResRet.f32 %563, 2
  %567 = fsub fast float %560, %564
  %568 = fsub fast float %561, %565
  %569 = fsub fast float %562, %566
  %570 = fadd fast float %564, %560
  %571 = fadd fast float %565, %561
  %572 = fadd fast float %566, %562
  %573 = fcmp fast olt float %172, %567
  %574 = fcmp fast olt float %173, %568
  %575 = fcmp fast olt float %174, %569
  %576 = or i1 %573, %574
  %577 = or i1 %575, %576
  %578 = fcmp fast ogt float %172, %570
  %579 = fcmp fast ogt float %173, %571
  %580 = fcmp fast ogt float %174, %572
  %581 = or i1 %578, %579
  %582 = or i1 %580, %581
  %583 = or i1 %577, %582
  br i1 %583, label %584, label %587, !dx.controlflow.hints !43

; <label>:584                                     ; preds = %557
  %585 = add nuw i32 %558, 1
  %586 = icmp ult i32 %585, %554
  br i1 %586, label %557, label %587

; <label>:587                                     ; preds = %584, %557
  %588 = phi i32 [ 255, %584 ], [ %558, %557 ]
  br label %589

; <label>:589                                     ; preds = %587, %548
  %590 = phi i32 [ 255, %548 ], [ %588, %587 ]
  %591 = icmp eq i32 %590, 255
  br i1 %591, label %597, label %592, !dx.controlflow.hints !44

; <label>:592                                     ; preds = %589
  %593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %590, i32 156)  ; BufferLoad(srv,index,wot)
  %594 = extractvalue %dx.types.ResRet.i32 %593, 0
  %595 = icmp ne i32 %594, 0
  %596 = zext i1 %595 to i32
  br label %597

; <label>:597                                     ; preds = %592, %589
  %598 = phi i32 [ %596, %592 ], [ %552, %589 ]
  %599 = icmp eq i32 %598, 0
  br i1 %599, label %600, label %669, !dx.controlflow.hints !45

; <label>:600                                     ; preds = %597
  %601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %602 = extractvalue %dx.types.CBufRet.f32 %601, 3
  %603 = extractvalue %dx.types.CBufRet.f32 %201, 0
  %604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %605 = extractvalue %dx.types.CBufRet.f32 %604, 2
  %606 = extractvalue %dx.types.CBufRet.f32 %604, 3
  br i1 %591, label %617, label %607, !dx.controlflow.hints !46

; <label>:607                                     ; preds = %600
  %608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %590, i32 60)  ; BufferLoad(srv,index,wot)
  %609 = extractvalue %dx.types.ResRet.f32 %608, 0
  %610 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %590, i32 64)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.f32 %610, 0
  %612 = extractvalue %dx.types.ResRet.f32 %610, 1
  %613 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %590, i32 72)  ; BufferLoad(srv,index,wot)
  %614 = extractvalue %dx.types.ResRet.f32 %613, 0
  %615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %590, i32 96)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.f32 %615, 0
  br label %617

; <label>:617                                     ; preds = %607, %600
  %618 = phi float [ %611, %607 ], [ %605, %600 ]
  %619 = phi float [ %612, %607 ], [ %606, %600 ]
  %620 = phi float [ %616, %607 ], [ %603, %600 ]
  %621 = phi float [ %614, %607 ], [ %202, %600 ]
  %622 = phi float [ %609, %607 ], [ %204, %600 ]
  %623 = call float @dx.op.binary.f32(i32 35, float %285, float 0.000000e+00)  ; FMax(a,b)
  %624 = call float @dx.op.binary.f32(i32 36, float %623, float 1.000000e+00)  ; FMin(a,b)
  %625 = call float @dx.op.unary.f32(i32 24, float %624)  ; Sqrt(value)
  %626 = call float @dx.op.binary.f32(i32 35, float %288, float 0x3F847AE140000000)  ; FMax(a,b)
  %627 = fsub fast float %286, %174
  %628 = fsub fast float %174, %287
  %629 = call float @dx.op.binary.f32(i32 36, float %628, float %627)  ; FMin(a,b)
  %630 = fdiv fast float %629, %626
  %631 = call float @dx.op.unary.f32(i32 7, float %630)  ; Saturate(value)
  %632 = fsub fast float %174, %621
  %633 = fdiv fast float %632, %622
  %634 = call float @dx.op.unary.f32(i32 7, float %633)  ; Saturate(value)
  %635 = fsub fast float 1.000000e+00, %634
  %636 = fmul float %631, %635
  %637 = fmul float %636, %636
  %638 = fmul fast float %625, %602
  %639 = fmul fast float %638, %637
  %640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %641 = extractvalue %dx.types.CBufRet.f32 %640, 2
  %642 = extractvalue %dx.types.CBufRet.f32 %640, 1
  %643 = fsub fast float %639, %642
  %644 = fsub fast float %641, %642
  %645 = fdiv fast float %643, %644
  %646 = call float @dx.op.unary.f32(i32 7, float %645)  ; Saturate(value)
  %647 = fmul fast float %646, %620
  %648 = fcmp fast ogt float %619, 0.000000e+00
  br i1 %648, label %649, label %669, !dx.controlflow.hints !47

; <label>:649                                     ; preds = %617
  %650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %651 = extractvalue %dx.types.CBufRet.f32 %650, 0
  %652 = extractvalue %dx.types.CBufRet.f32 %650, 1
  %653 = extractvalue %dx.types.CBufRet.f32 %650, 2
  %654 = fsub fast float %172, %651
  %655 = fsub fast float %173, %652
  %656 = fsub fast float %174, %653
  %657 = fmul fast float %654, %654
  %658 = fmul fast float %655, %655
  %659 = fadd fast float %657, %658
  %660 = fmul fast float %656, %656
  %661 = fadd fast float %659, %660
  %662 = call float @dx.op.unary.f32(i32 24, float %661)  ; Sqrt(value)
  %663 = fsub fast float %662, %618
  %664 = fsub fast float %619, %618
  %665 = fdiv fast float %663, %664
  %666 = call float @dx.op.unary.f32(i32 7, float %665)  ; Saturate(value)
  %667 = fmul fast float %666, %666
  %668 = fmul fast float %667, %647
  br label %669

; <label>:669                                     ; preds = %649, %617, %597
  %670 = phi float [ 0.000000e+00, %597 ], [ %668, %649 ], [ %647, %617 ]
  %671 = fmul fast float %670, %365
  %672 = fadd fast float %671, %547
  br label %673

; <label>:673                                     ; preds = %669, %546
  %674 = phi float [ %672, %669 ], [ %547, %546 ]
  %675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %676 = extractvalue %dx.types.CBufRet.f32 %675, 1
  %677 = fcmp fast ogt float %674, %676
  br i1 %677, label %678, label %690, !dx.controlflow.hints !48

; <label>:678                                     ; preds = %673
  %679 = fmul fast float %674, 0xBFF7154760000000
  %680 = call float @dx.op.unary.f32(i32 21, float %679)  ; Exp(value)
  %681 = call float @dx.op.unary.f32(i32 7, float %680)  ; Saturate(value)
  %682 = icmp eq i32 %177, 0
  br i1 %682, label %683, label %684, !dx.controlflow.hints !49

; <label>:683                                     ; preds = %678
  br label %684

; <label>:684                                     ; preds = %683, %678
  %685 = phi i32 [ %177, %678 ], [ 1, %683 ]
  %686 = phi float [ %178, %678 ], [ %175, %683 ]
  %687 = fadd fast float %365, %179
  %688 = fadd fast float %674, %180
  %689 = fmul fast float %681, %171
  br label %690

; <label>:690                                     ; preds = %684, %673
  %691 = phi float [ %689, %684 ], [ %171, %673 ]
  %692 = phi i32 [ %685, %684 ], [ %177, %673 ]
  %693 = phi float [ %686, %684 ], [ %178, %673 ]
  %694 = phi float [ %687, %684 ], [ %179, %673 ]
  %695 = phi float [ %688, %684 ], [ %180, %673 ]
  %696 = fadd fast float %365, %175
  %697 = fmul fast float %365, %55
  %698 = fmul fast float %365, %56
  %699 = fmul fast float %365, %57
  %700 = fadd fast float %697, %172
  %701 = fadd fast float %698, %173
  %702 = fadd fast float %699, %174
  %703 = fcmp fast olt float %696, %146
  %704 = extractvalue %dx.types.CBufRet.f32 %675, 2
  %705 = fcmp fast olt float %704, %691
  %706 = and i1 %703, %705
  br i1 %706, label %166, label %707

; <label>:707                                     ; preds = %690
  br label %708

; <label>:708                                     ; preds = %707, %118
  %709 = phi float [ 0.000000e+00, %118 ], [ %693, %707 ]
  %710 = phi float [ 0.000000e+00, %118 ], [ %694, %707 ]
  %711 = phi float [ 0.000000e+00, %118 ], [ %695, %707 ]
  %712 = extractvalue %dx.types.CBufRet.f32 %49, 3
  %713 = fmul fast float %712, %709
  %714 = fdiv fast float 1.000000e+00, %710
  %715 = fmul fast float %714, %711
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %16, i32 %17, i32 undef, float %713, float %715, float %711, float %713, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!dx.entryPoints = !{!26}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !15, !17, !20}
!5 = !{!6, !8, !9, !10, !11, !12, !14}
!6 = !{i32 0, %"class.Texture3D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 4, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 9, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.StructuredBuffer<VolumetricBBoxGpu>"* undef, !"", i32 0, i32 25, i32 1, i32 12, i32 0, !13}
!13 = !{i32 1, i32 164}
!14 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!15 = !{!16}
!16 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 7, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!17 = !{!18, !19}
!18 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!19 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!20 = !{!21, !22, !23, !24, !25}
!21 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!22 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!23 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!24 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!25 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!26 = !{void ()* @cs_fog_raymarching_clouds_particles, !"cs_fog_raymarching_clouds_particles", null, !4, !27}
!27 = !{i32 0, i64 272, i32 4, !28}
!28 = !{i32 8, i32 8, i32 1}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.unroll.disable"}
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
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 1}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 1}

