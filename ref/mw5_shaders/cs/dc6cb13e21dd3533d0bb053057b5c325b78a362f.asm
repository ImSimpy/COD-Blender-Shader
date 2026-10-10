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
; shader hash: 0a2843824f3fce2cd6e180f8d61bfe3e
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

define void @cs_fog_raymarching_air_clouds_heightmap_particles() {
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
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 3
  %137 = fsub fast float -0.000000e+00, %54
  %138 = fsub fast float -0.000000e+00, %55
  %139 = fsub fast float %136, %48
  %140 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %137, float %138, float %139)  ; Dot3(ax,ay,az,bx,by,bz)
  %141 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %62, float %63, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %142 = fdiv fast float 1.000000e+00, %141
  %143 = fmul fast float %142, %140
  %144 = fcmp fast olt float %143, 0.000000e+00
  %145 = fcmp olt float %61, -0.000000e+00
  %146 = and i1 %145, %144
  br i1 %146, label %151, label %147, !dx.controlflow.hints !33

; <label>:147                                     ; preds = %131
  %148 = fcmp ogt float %61, -0.000000e+00
  br i1 %148, label %149, label %151, !dx.controlflow.hints !34

; <label>:149                                     ; preds = %147
  %150 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %143)  ; FMax(a,b)
  br label %151

; <label>:151                                     ; preds = %149, %147, %131
  %152 = phi float [ 0.000000e+00, %131 ], [ %150, %149 ], [ 0.000000e+00, %147 ]
  %153 = phi float [ 0.000000e+00, %131 ], [ 0x47EFFFFFE0000000, %149 ], [ %143, %147 ]
  %154 = fcmp fast oeq float %153, 0.000000e+00
  br i1 %154, label %158, label %155, !dx.controlflow.hints !35

; <label>:155                                     ; preds = %151
  %156 = call float @dx.op.binary.f32(i32 36, float %134, float %152)  ; FMin(a,b)
  %157 = call float @dx.op.binary.f32(i32 35, float %132, float %153)  ; FMax(a,b)
  br label %158

; <label>:158                                     ; preds = %155, %151
  %159 = phi float [ %157, %155 ], [ %132, %151 ]
  %160 = phi i32 [ 1, %155 ], [ 0, %151 ]
  %161 = phi float [ %156, %155 ], [ %134, %151 ]
  %162 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.i32 %162, 3
  %164 = icmp eq i32 %163, 0
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.f32 %165, 2
  %167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.f32 %167, 2
  %169 = fsub fast float %166, %48
  %170 = fadd fast float %169, %168
  br i1 %164, label %178, label %171, !dx.controlflow.hints !36

; <label>:171                                     ; preds = %158
  %172 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %137, float %138, float %170)  ; Dot3(ax,ay,az,bx,by,bz)
  %173 = fmul fast float %142, %172
  %174 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %137, float %138, float %169)  ; Dot3(ax,ay,az,bx,by,bz)
  %175 = fmul fast float %142, %174
  %176 = call float @dx.op.binary.f32(i32 36, float %173, float %175)  ; FMin(a,b)
  %177 = call float @dx.op.binary.f32(i32 35, float %173, float %175)  ; FMax(a,b)
  br label %211

; <label>:178                                     ; preds = %158
  %179 = fdiv fast float 1.000000e+00, %62
  %180 = fdiv fast float 1.000000e+00, %63
  %181 = fdiv fast float 1.000000e+00, %64
  %182 = extractvalue %dx.types.CBufRet.f32 %165, 0
  %183 = extractvalue %dx.types.CBufRet.f32 %165, 1
  %184 = extractvalue %dx.types.CBufRet.f32 %167, 0
  %185 = extractvalue %dx.types.CBufRet.f32 %167, 1
  %186 = fsub fast float %182, %54
  %187 = fmul fast float %186, %179
  %188 = fadd fast float %186, %184
  %189 = fmul fast float %188, %179
  %190 = call float @dx.op.binary.f32(i32 36, float %187, float %189)  ; FMin(a,b)
  %191 = call float @dx.op.binary.f32(i32 35, float %187, float %189)  ; FMax(a,b)
  %192 = fsub fast float %183, %55
  %193 = fmul fast float %192, %180
  %194 = fadd fast float %192, %185
  %195 = fmul fast float %194, %180
  %196 = call float @dx.op.binary.f32(i32 36, float %193, float %195)  ; FMin(a,b)
  %197 = call float @dx.op.binary.f32(i32 35, float %190, float %196)  ; FMax(a,b)
  %198 = call float @dx.op.binary.f32(i32 35, float %193, float %195)  ; FMax(a,b)
  %199 = call float @dx.op.binary.f32(i32 36, float %191, float %198)  ; FMin(a,b)
  %200 = fmul fast float %169, %181
  %201 = fmul fast float %170, %181
  %202 = call float @dx.op.binary.f32(i32 36, float %200, float %201)  ; FMin(a,b)
  %203 = call float @dx.op.binary.f32(i32 35, float %197, float %202)  ; FMax(a,b)
  %204 = call float @dx.op.binary.f32(i32 35, float %200, float %201)  ; FMax(a,b)
  %205 = call float @dx.op.binary.f32(i32 36, float %199, float %204)  ; FMin(a,b)
  %206 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %203)  ; FMax(a,b)
  %207 = fcmp fast ult float %205, %206
  br i1 %207, label %211, label %208, !dx.controlflow.hints !37

; <label>:208                                     ; preds = %178
  %209 = call float @dx.op.binary.f32(i32 36, float %203, float %205)  ; FMin(a,b)
  %210 = call float @dx.op.binary.f32(i32 35, float %203, float %205)  ; FMax(a,b)
  br label %211

; <label>:211                                     ; preds = %208, %178, %171
  %212 = phi float [ %176, %171 ], [ %209, %208 ], [ 0.000000e+00, %178 ]
  %213 = phi float [ %177, %171 ], [ %210, %208 ], [ 0.000000e+00, %178 ]
  %214 = fcmp fast oeq float %213, 0.000000e+00
  br i1 %214, label %218, label %215, !dx.controlflow.hints !38

; <label>:215                                     ; preds = %211
  %216 = call float @dx.op.binary.f32(i32 36, float %161, float %212)  ; FMin(a,b)
  %217 = call float @dx.op.binary.f32(i32 35, float %159, float %213)  ; FMax(a,b)
  br label %218

; <label>:218                                     ; preds = %215, %211
  %219 = phi float [ %217, %215 ], [ %159, %211 ]
  %220 = phi i32 [ 1, %215 ], [ 0, %211 ]
  %221 = phi float [ %216, %215 ], [ %161, %211 ]
  %222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %223 = extractvalue %dx.types.CBufRet.f32 %222, 3
  %224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = extractvalue %dx.types.CBufRet.f32 %224, 0
  %226 = fsub fast float %223, %48
  %227 = fadd fast float %226, %225
  %228 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %137, float %138, float %227)  ; Dot3(ax,ay,az,bx,by,bz)
  %229 = fmul fast float %142, %228
  %230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %231 = extractvalue %dx.types.CBufRet.f32 %230, 2
  %232 = fsub fast float %231, %48
  %233 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %137, float %138, float %232)  ; Dot3(ax,ay,az,bx,by,bz)
  %234 = fmul fast float %142, %233
  %235 = call float @dx.op.binary.f32(i32 36, float %229, float %234)  ; FMin(a,b)
  %236 = call float @dx.op.binary.f32(i32 35, float %229, float %234)  ; FMax(a,b)
  %237 = call float @dx.op.binary.f32(i32 36, float %221, float %235)  ; FMin(a,b)
  %238 = call float @dx.op.binary.f32(i32 35, float %219, float %236)  ; FMax(a,b)
  %239 = fdiv fast float 1.000000e+00, %62
  %240 = fdiv fast float 1.000000e+00, %63
  %241 = fdiv fast float 1.000000e+00, %64
  %242 = call float @dx.op.binary.f32(i32 36, float %57, float %238)  ; FMin(a,b)
  %243 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %237)  ; FMax(a,b)
  %244 = extractvalue %dx.types.CBufRet.f32 %135, 1
  %245 = fmul fast float %36, 2.000000e+00
  %246 = fadd fast float %245, -1.000000e+00
  %247 = fmul fast float %244, %246
  %248 = fadd fast float %247, %243
  %249 = fcmp fast olt float %248, %242
  %250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %251 = extractvalue %dx.types.CBufRet.f32 %250, 2
  %252 = fcmp fast olt float %251, 1.000000e+00
  %253 = and i1 %249, %252
  br i1 %253, label %254, label %1142

; <label>:254                                     ; preds = %218
  %255 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %256 = extractvalue %dx.types.CBufRet.i32 %255, 1
  %257 = add i32 %256, -1
  %258 = fmul fast float %248, %64
  %259 = fadd fast float %258, %48
  %260 = fmul fast float %248, %63
  %261 = fadd fast float %260, %55
  %262 = fmul fast float %248, %62
  %263 = fadd fast float %262, %54
  br label %264

; <label>:264                                     ; preds = %1124, %254
  %265 = phi float [ %556, %1124 ], [ undef, %254 ]
  %266 = phi float [ %557, %1124 ], [ undef, %254 ]
  %267 = phi float [ %558, %1124 ], [ undef, %254 ]
  %268 = phi float [ %559, %1124 ], [ undef, %254 ]
  %269 = phi float [ %1125, %1124 ], [ 1.000000e+00, %254 ]
  %270 = phi float [ %1134, %1124 ], [ %263, %254 ]
  %271 = phi float [ %1135, %1124 ], [ %261, %254 ]
  %272 = phi float [ %1136, %1124 ], [ %259, %254 ]
  %273 = phi float [ %1130, %1124 ], [ %248, %254 ]
  %274 = phi i32 [ %561, %1124 ], [ 10, %254 ]
  %275 = phi i32 [ %452, %1124 ], [ %257, %254 ]
  %276 = phi i32 [ %1126, %1124 ], [ 0, %254 ]
  %277 = phi float [ %1127, %1124 ], [ 0.000000e+00, %254 ]
  %278 = phi float [ %1128, %1124 ], [ 0.000000e+00, %254 ]
  %279 = phi float [ %1129, %1124 ], [ 0.000000e+00, %254 ]
  %280 = fsub fast float -0.000000e+00, %271
  %281 = fsub fast float -0.000000e+00, %270
  %282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %283 = extractvalue %dx.types.CBufRet.f32 %282, 1
  %284 = icmp eq i32 %133, 0
  br i1 %284, label %450, label %285, !dx.controlflow.hints !39

; <label>:285                                     ; preds = %264
  %286 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %287 = extractvalue %dx.types.CBufRet.i32 %286, 1
  %288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %289 = extractvalue %dx.types.CBufRet.f32 %288, 1
  %290 = fcmp fast ogt float %289, %273
  br i1 %290, label %291, label %293, !dx.controlflow.hints !40

; <label>:291                                     ; preds = %285
  %292 = fsub fast float %289, %273
  br label %440

; <label>:293                                     ; preds = %285
  %294 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %295 = extractvalue %dx.types.CBufRet.i32 %294, 3
  %296 = icmp eq i32 %295, 0
  %297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.f32 %297, 2
  %299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %300 = extractvalue %dx.types.CBufRet.f32 %299, 2
  %301 = fsub fast float %298, %272
  %302 = fadd fast float %301, %300
  %303 = fsub fast float 0xC7EFFFFFE0000000, %272
  br i1 %296, label %311, label %304, !dx.controlflow.hints !30

; <label>:304                                     ; preds = %293
  %305 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %281, float %280, float %302)  ; Dot3(ax,ay,az,bx,by,bz)
  %306 = fmul fast float %142, %305
  %307 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %281, float %280, float %303)  ; Dot3(ax,ay,az,bx,by,bz)
  %308 = fmul fast float %142, %307
  %309 = call float @dx.op.binary.f32(i32 36, float %306, float %308)  ; FMin(a,b)
  %310 = call float @dx.op.binary.f32(i32 35, float %306, float %308)  ; FMax(a,b)
  br label %341

; <label>:311                                     ; preds = %293
  %312 = extractvalue %dx.types.CBufRet.f32 %297, 0
  %313 = extractvalue %dx.types.CBufRet.f32 %297, 1
  %314 = extractvalue %dx.types.CBufRet.f32 %299, 0
  %315 = extractvalue %dx.types.CBufRet.f32 %299, 1
  %316 = fsub fast float %312, %270
  %317 = fmul fast float %239, %316
  %318 = fadd fast float %316, %314
  %319 = fmul fast float %318, %239
  %320 = call float @dx.op.binary.f32(i32 36, float %317, float %319)  ; FMin(a,b)
  %321 = call float @dx.op.binary.f32(i32 35, float %317, float %319)  ; FMax(a,b)
  %322 = fsub fast float %313, %271
  %323 = fmul fast float %240, %322
  %324 = fadd fast float %322, %315
  %325 = fmul fast float %324, %240
  %326 = call float @dx.op.binary.f32(i32 36, float %323, float %325)  ; FMin(a,b)
  %327 = call float @dx.op.binary.f32(i32 35, float %320, float %326)  ; FMax(a,b)
  %328 = call float @dx.op.binary.f32(i32 35, float %323, float %325)  ; FMax(a,b)
  %329 = call float @dx.op.binary.f32(i32 36, float %321, float %328)  ; FMin(a,b)
  %330 = fmul fast float %241, %303
  %331 = fmul fast float %241, %302
  %332 = call float @dx.op.binary.f32(i32 36, float %330, float %331)  ; FMin(a,b)
  %333 = call float @dx.op.binary.f32(i32 35, float %327, float %332)  ; FMax(a,b)
  %334 = call float @dx.op.binary.f32(i32 35, float %330, float %331)  ; FMax(a,b)
  %335 = call float @dx.op.binary.f32(i32 36, float %329, float %334)  ; FMin(a,b)
  %336 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %333)  ; FMax(a,b)
  %337 = fcmp fast ult float %335, %336
  br i1 %337, label %341, label %338, !dx.controlflow.hints !31

; <label>:338                                     ; preds = %311
  %339 = call float @dx.op.binary.f32(i32 36, float %333, float %335)  ; FMin(a,b)
  %340 = call float @dx.op.binary.f32(i32 35, float %333, float %335)  ; FMax(a,b)
  br label %341

; <label>:341                                     ; preds = %338, %311, %304
  %342 = phi float [ %309, %304 ], [ %339, %338 ], [ 0.000000e+00, %311 ]
  %343 = phi float [ %310, %304 ], [ %340, %338 ], [ 0.000000e+00, %311 ]
  %344 = fcmp fast ogt float %342, 0.000000e+00
  br i1 %344, label %440, label %345, !dx.controlflow.hints !41

; <label>:345                                     ; preds = %341
  %346 = fcmp fast ugt float %343, 0.000000e+00
  br i1 %346, label %347, label %440, !dx.controlflow.hints !42

; <label>:347                                     ; preds = %345
  %348 = icmp sgt i32 %275, 0
  br i1 %348, label %349, label %434

; <label>:349                                     ; preds = %347
  br label %350

; <label>:350                                     ; preds = %430, %349
  %351 = phi i32 [ %431, %430 ], [ %275, %349 ]
  %352 = sitofp i32 %351 to float
  %353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %354 = extractvalue %dx.types.CBufRet.f32 %353, 0
  %355 = extractvalue %dx.types.CBufRet.f32 %353, 1
  %356 = fsub fast float %270, %354
  %357 = fsub fast float %271, %355
  %358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %359 = extractvalue %dx.types.CBufRet.f32 %358, 0
  %360 = extractvalue %dx.types.CBufRet.f32 %358, 1
  %361 = fmul fast float %356, %359
  %362 = fmul fast float %357, %360
  %363 = fsub fast float 1.000000e+00, %362
  %364 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %365 = extractvalue %dx.types.CBufRet.i32 %364, 3
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %373, label %367, !dx.controlflow.hints !43

; <label>:367                                     ; preds = %350
  %368 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %12, float %361, float %363, float undef, float undef, i32 0, i32 0, i32 undef, float %352)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %369 = extractvalue %dx.types.ResRet.f32 %368, 0
  %370 = extractvalue %dx.types.ResRet.f32 %368, 1
  %371 = extractvalue %dx.types.ResRet.f32 %368, 2
  %372 = extractvalue %dx.types.ResRet.f32 %368, 3
  br label %379

; <label>:373                                     ; preds = %350
  %374 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %13, float %361, float %363, float undef, float undef, i32 0, i32 0, i32 undef, float %352)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %375 = extractvalue %dx.types.ResRet.f32 %374, 0
  %376 = extractvalue %dx.types.ResRet.f32 %374, 1
  %377 = extractvalue %dx.types.ResRet.f32 %374, 2
  %378 = extractvalue %dx.types.ResRet.f32 %374, 3
  br label %379

; <label>:379                                     ; preds = %373, %367
  %380 = phi float [ %369, %367 ], [ %375, %373 ]
  %381 = phi float [ %370, %367 ], [ %376, %373 ]
  %382 = phi float [ %371, %367 ], [ %377, %373 ]
  %383 = phi float [ %372, %367 ], [ %378, %373 ]
  %384 = extractvalue %dx.types.CBufRet.f32 %358, 3
  %385 = fmul fast float %384, %380
  %386 = extractvalue %dx.types.CBufRet.f32 %353, 2
  %387 = fadd fast float %385, %386
  %388 = fmul fast float %384, %381
  %389 = fadd fast float %388, %386
  %390 = fmul fast float %384, %382
  %391 = fadd fast float %390, %386
  %392 = and i32 %351, 31
  %393 = shl i32 1, %392
  %394 = uitofp i32 %393 to float
  %395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %396 = extractvalue %dx.types.CBufRet.f32 %395, 3
  %397 = fdiv fast float 1.000000e+00, %396
  %398 = fmul fast float %397, %394
  %399 = fmul fast float %398, %64
  %400 = fadd fast float %399, %272
  %401 = fcmp fast oeq float %383, 0.000000e+00
  %402 = fcmp fast ogt float %272, %389
  %403 = fcmp fast ogt float %400, %389
  %404 = and i1 %402, %403
  %405 = or i1 %401, %404
  br i1 %405, label %406, label %410, !dx.controlflow.hints !44

; <label>:406                                     ; preds = %379
  %407 = add nsw i32 %351, 1
  %408 = add nsw i32 %287, -1
  %409 = call i32 @dx.op.binary.i32(i32 38, i32 %407, i32 %408)  ; IMin(a,b)
  br label %440

; <label>:410                                     ; preds = %379
  %411 = fcmp fast olt float %272, %391
  %412 = fcmp fast olt float %400, %391
  %413 = and i1 %411, %412
  br i1 %413, label %414, label %418, !dx.controlflow.hints !45

; <label>:414                                     ; preds = %410
  %415 = add nsw i32 %351, 1
  %416 = add nsw i32 %287, -1
  %417 = call i32 @dx.op.binary.i32(i32 38, i32 %415, i32 %416)  ; IMin(a,b)
  br label %440

; <label>:418                                     ; preds = %410
  %419 = fcmp fast olt float %272, %387
  %420 = fcmp fast olt float %400, %387
  %421 = and i1 %419, %420
  br i1 %421, label %422, label %430, !dx.controlflow.hints !46

; <label>:422                                     ; preds = %418
  %423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %424 = extractvalue %dx.types.CBufRet.f32 %423, 3
  %425 = extractvalue %dx.types.CBufRet.f32 %358, 2
  %426 = fcmp fast une float %424, %425
  br i1 %426, label %427, label %434, !dx.controlflow.hints !47

; <label>:427                                     ; preds = %422
  %428 = fsub fast float %272, %391
  %429 = call float @dx.op.binary.f32(i32 36, float %398, float %428)  ; FMin(a,b)
  br label %434

; <label>:430                                     ; preds = %418
  %431 = add nsw i32 %351, -1
  %432 = icmp sgt i32 %351, 1
  br i1 %432, label %350, label %433

; <label>:433                                     ; preds = %430
  br label %434

; <label>:434                                     ; preds = %433, %427, %422, %347
  %435 = phi float [ %429, %427 ], [ %398, %422 ], [ 0.000000e+00, %347 ], [ 0.000000e+00, %433 ]
  %436 = phi i32 [ %351, %427 ], [ %351, %422 ], [ %275, %347 ], [ %431, %433 ]
  %437 = add nsw i32 %436, 1
  %438 = add nsw i32 %287, -1
  %439 = call i32 @dx.op.binary.i32(i32 38, i32 %437, i32 %438)  ; IMin(a,b)
  br label %440

; <label>:440                                     ; preds = %434, %414, %406, %345, %341, %291
  %441 = phi float [ %292, %291 ], [ %398, %406 ], [ %398, %414 ], [ %435, %434 ], [ 0x47EFFFFFE0000000, %345 ], [ %342, %341 ]
  %442 = phi i32 [ %133, %291 ], [ %133, %406 ], [ %133, %414 ], [ %133, %434 ], [ 0, %345 ], [ %133, %341 ]
  %443 = phi i32 [ %275, %291 ], [ %409, %406 ], [ %417, %414 ], [ %439, %434 ], [ %275, %345 ], [ %275, %341 ]
  %444 = icmp ne i32 %442, 0
  %445 = zext i1 %444 to i32
  %446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %447 = extractvalue %dx.types.CBufRet.f32 %446, 2
  %448 = call float @dx.op.binary.f32(i32 35, float %441, float %447)  ; FMax(a,b)
  %449 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %448)  ; FMin(a,b)
  br label %450

; <label>:450                                     ; preds = %440, %264
  %451 = phi float [ %449, %440 ], [ 0x47EFFFFFE0000000, %264 ]
  %452 = phi i32 [ %443, %440 ], [ %275, %264 ]
  %453 = phi i32 [ %445, %440 ], [ 0, %264 ]
  %454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %455 = extractvalue %dx.types.CBufRet.f32 %454, 0
  %456 = extractvalue %dx.types.CBufRet.f32 %454, 1
  %457 = fsub fast float %270, %455
  %458 = fsub fast float %271, %456
  %459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %460 = extractvalue %dx.types.CBufRet.f32 %459, 2
  %461 = extractvalue %dx.types.CBufRet.f32 %459, 3
  %462 = fmul fast float %457, %460
  %463 = fmul fast float %458, %461
  %464 = call float @dx.op.binary.f32(i32 36, float %462, float %463)  ; FMin(a,b)
  %465 = fcmp fast olt float %464, 0.000000e+00
  %466 = call float @dx.op.binary.f32(i32 35, float %462, float %463)  ; FMax(a,b)
  %467 = fcmp fast ogt float %466, 1.000000e+00
  %468 = or i1 %465, %467
  %469 = extractvalue %dx.types.CBufRet.f32 %454, 2
  %470 = fcmp fast olt float %272, %469
  %471 = or i1 %468, %470
  %472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %473 = extractvalue %dx.types.CBufRet.f32 %472, 3
  %474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %475 = extractvalue %dx.types.CBufRet.f32 %474, 0
  %476 = fadd fast float %475, %473
  %477 = fcmp fast ogt float %272, %476
  %478 = or i1 %471, %477
  br i1 %478, label %479, label %508, !dx.controlflow.hints !48

; <label>:479                                     ; preds = %450
  %480 = extractvalue %dx.types.CBufRet.f32 %459, 0
  %481 = extractvalue %dx.types.CBufRet.f32 %459, 1
  %482 = fsub fast float %455, %270
  %483 = fmul fast float %482, %239
  %484 = fadd fast float %482, %480
  %485 = fmul fast float %484, %239
  %486 = call float @dx.op.binary.f32(i32 36, float %483, float %485)  ; FMin(a,b)
  %487 = call float @dx.op.binary.f32(i32 35, float %483, float %485)  ; FMax(a,b)
  %488 = fsub fast float %456, %271
  %489 = fmul fast float %488, %240
  %490 = fadd fast float %488, %481
  %491 = fmul fast float %490, %240
  %492 = call float @dx.op.binary.f32(i32 36, float %489, float %491)  ; FMin(a,b)
  %493 = call float @dx.op.binary.f32(i32 35, float %486, float %492)  ; FMax(a,b)
  %494 = call float @dx.op.binary.f32(i32 35, float %489, float %491)  ; FMax(a,b)
  %495 = call float @dx.op.binary.f32(i32 36, float %487, float %494)  ; FMin(a,b)
  %496 = fsub fast float %469, %272
  %497 = fmul fast float %496, %241
  %498 = fsub fast float %473, %272
  %499 = fadd fast float %498, %475
  %500 = fmul fast float %499, %241
  %501 = call float @dx.op.binary.f32(i32 36, float %497, float %500)  ; FMin(a,b)
  %502 = call float @dx.op.binary.f32(i32 35, float %493, float %501)  ; FMax(a,b)
  %503 = call float @dx.op.binary.f32(i32 35, float %497, float %500)  ; FMax(a,b)
  %504 = call float @dx.op.binary.f32(i32 36, float %495, float %503)  ; FMin(a,b)
  %505 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %502)  ; FMax(a,b)
  %506 = fcmp fast oge float %504, %505
  %507 = select i1 %506, float %502, float 1.000000e+07
  br label %554

; <label>:508                                     ; preds = %450
  %509 = fsub fast float 1.000000e+00, %463
  %510 = icmp eq i32 %274, 0
  br i1 %510, label %539, label %511

; <label>:511                                     ; preds = %508
  br label %512

; <label>:512                                     ; preds = %535, %511
  %513 = phi i32 [ %536, %535 ], [ %274, %511 ]
  %514 = uitofp i32 %513 to float
  %515 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %14, float %462, float %509, float undef, float undef, i32 0, i32 0, i32 undef, float %514)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %516 = extractvalue %dx.types.ResRet.f32 %515, 0
  %517 = extractvalue %dx.types.ResRet.f32 %515, 1
  %518 = extractvalue %dx.types.ResRet.f32 %515, 2
  %519 = fcmp fast oeq float %516, 0.000000e+00
  %520 = fcmp ule float %272, %518
  %521 = fcmp uge float %272, %517
  %522 = or i1 %521, %520
  %523 = or i1 %519, %522
  br i1 %523, label %524, label %535, !dx.controlflow.hints !49

; <label>:524                                     ; preds = %512
  %525 = extractvalue %dx.types.ResRet.f32 %515, 3
  %526 = extractvalue %dx.types.CBufRet.f32 %459, 0
  %527 = and i32 %513, 31
  %528 = lshr i32 1024, %527
  %529 = uitofp i32 %528 to float
  %530 = fdiv fast float %526, %529
  %531 = add i32 %513, 1
  %532 = uitofp i32 %531 to float
  %533 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %532)  ; FMin(a,b)
  %534 = fptosi float %533 to i32
  br label %554

; <label>:535                                     ; preds = %512
  %536 = add i32 %513, -1
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %538, label %512, !llvm.loop !50

; <label>:538                                     ; preds = %535
  br label %539

; <label>:539                                     ; preds = %538, %508
  %540 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %13, float %462, float %509, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %541 = extractvalue %dx.types.ResRet.f32 %540, 0
  %542 = extractvalue %dx.types.ResRet.f32 %540, 1
  %543 = extractvalue %dx.types.ResRet.f32 %540, 2
  %544 = extractvalue %dx.types.ResRet.f32 %540, 3
  %545 = extractvalue %dx.types.CBufRet.f32 %459, 0
  %546 = fmul fast float %545, 9.765625e-04
  %547 = fcmp fast oeq float %541, 0.000000e+00
  %548 = fcmp ule float %272, %543
  %549 = fcmp uge float %272, %542
  %550 = or i1 %549, %548
  %551 = or i1 %547, %550
  %552 = zext i1 %551 to i32
  %553 = xor i32 %552, 1
  br label %554

; <label>:554                                     ; preds = %539, %524, %479
  %555 = phi float [ %507, %479 ], [ %530, %524 ], [ %546, %539 ]
  %556 = phi float [ %265, %479 ], [ %516, %524 ], [ %541, %539 ]
  %557 = phi float [ %266, %479 ], [ %517, %524 ], [ %542, %539 ]
  %558 = phi float [ %267, %479 ], [ %518, %524 ], [ %543, %539 ]
  %559 = phi float [ %268, %479 ], [ %525, %524 ], [ %544, %539 ]
  %560 = phi i32 [ 0, %479 ], [ 0, %524 ], [ %553, %539 ]
  %561 = phi i32 [ 10, %479 ], [ %534, %524 ], [ 1, %539 ]
  %562 = icmp eq i32 %560, 0
  %563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %564 = extractvalue %dx.types.CBufRet.f32 %563, 2
  %565 = call float @dx.op.binary.f32(i32 35, float %555, float %564)  ; FMax(a,b)
  %566 = call float @dx.op.binary.f32(i32 36, float %451, float %565)  ; FMin(a,b)
  %567 = icmp eq i32 %160, 0
  br i1 %567, label %580, label %568, !dx.controlflow.hints !52

; <label>:568                                     ; preds = %554
  %569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %570 = extractvalue %dx.types.CBufRet.f32 %569, 3
  %571 = extractvalue %dx.types.CBufRet.f32 %569, 2
  %572 = fmul fast float %570, %273
  %573 = fdiv fast float %572, %242
  %574 = fadd fast float %573, 1.000000e+00
  %575 = call float @dx.op.unary.f32(i32 23, float %574)  ; Log(value)
  %576 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %575)  ; FMin(a,b)
  %577 = fmul fast float %571, %242
  %578 = fmul fast float %577, %576
  %579 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %578)  ; FMin(a,b)
  br label %580

; <label>:580                                     ; preds = %568, %554
  %581 = phi float [ %579, %568 ], [ 0x47EFFFFFE0000000, %554 ]
  %582 = icmp eq i32 %220, 0
  br i1 %582, label %638, label %583, !dx.controlflow.hints !53

; <label>:583                                     ; preds = %580
  %584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %585 = extractvalue %dx.types.CBufRet.f32 %584, 0
  %586 = extractvalue %dx.types.CBufRet.f32 %584, 1
  %587 = extractvalue %dx.types.CBufRet.f32 %584, 2
  %588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %589 = extractvalue %dx.types.CBufRet.f32 %588, 0
  %590 = extractvalue %dx.types.CBufRet.f32 %588, 1
  %591 = extractvalue %dx.types.CBufRet.f32 %588, 2
  %592 = fsub fast float %270, %589
  %593 = fsub fast float %271, %590
  %594 = fsub fast float %272, %591
  %595 = fmul fast float %592, %585
  %596 = fmul fast float %593, %586
  %597 = fmul fast float %594, %587
  %598 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %599 = extractvalue %dx.types.CBufRet.i32 %598, 3
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %604, label %601, !dx.controlflow.hints !54

; <label>:601                                     ; preds = %583
  %602 = call float @dx.op.unary.f32(i32 22, float %595)  ; Frc(value)
  %603 = call float @dx.op.unary.f32(i32 22, float %596)  ; Frc(value)
  br label %604

; <label>:604                                     ; preds = %601, %583
  %605 = phi float [ %602, %601 ], [ %595, %583 ]
  %606 = phi float [ %603, %601 ], [ %596, %583 ]
  %607 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %11, float %605, float %606, float %597, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %608 = extractvalue %dx.types.ResRet.f32 %607, 0
  %609 = fmul fast float %608, 2.000000e+00
  %610 = fadd fast float %609, -1.000000e+00
  %611 = extractvalue %dx.types.CBufRet.f32 %584, 3
  %612 = fmul fast float %610, %611
  %613 = fcmp fast olt float %612, 0.000000e+00
  %614 = fcmp fast oge float %597, 0.000000e+00
  %615 = fcmp fast ole float %597, 1.000000e+00
  br i1 %600, label %618, label %616, !dx.controlflow.hints !55

; <label>:616                                     ; preds = %604
  %617 = and i1 %614, %615
  br label %628

; <label>:618                                     ; preds = %604
  %619 = fcmp fast oge float %595, 0.000000e+00
  %620 = fcmp fast oge float %596, 0.000000e+00
  %621 = and i1 %619, %620
  %622 = and i1 %614, %621
  %623 = fcmp fast ole float %595, 1.000000e+00
  %624 = fcmp fast ole float %596, 1.000000e+00
  %625 = and i1 %623, %624
  %626 = and i1 %615, %625
  %627 = and i1 %622, %626
  br label %628

; <label>:628                                     ; preds = %618, %616
  %629 = phi i1 [ %617, %616 ], [ %627, %618 ]
  %630 = and i1 %613, %629
  %631 = call float @dx.op.unary.f32(i32 6, float %612)  ; FAbs(value)
  %632 = extractvalue %dx.types.CBufRet.f32 %563, 1
  %633 = extractvalue %dx.types.CBufRet.f32 %563, 0
  %634 = call float @dx.op.binary.f32(i32 35, float %631, float %633)  ; FMax(a,b)
  %635 = select i1 %630, float %632, float %634
  %636 = zext i1 %630 to i32
  %637 = call float @dx.op.binary.f32(i32 36, float %566, float %635)  ; FMin(a,b)
  br label %638

; <label>:638                                     ; preds = %628, %580
  %639 = phi float [ %637, %628 ], [ %566, %580 ]
  %640 = phi i32 [ %636, %628 ], [ 0, %580 ]
  %641 = extractvalue %dx.types.CBufRet.f32 %282, 2
  %642 = fmul fast float %641, %273
  %643 = call float @dx.op.unary.f32(i32 23, float %642)  ; Log(value)
  %644 = fmul fast float %643, 0x3FE62E4300000000
  %645 = call float @dx.op.binary.f32(i32 35, float %644, float 1.000000e+00)  ; FMax(a,b)
  %646 = fmul fast float %645, %581
  %647 = call float @dx.op.binary.f32(i32 36, float %646, float %639)  ; FMin(a,b)
  %648 = call float @dx.op.binary.f32(i32 35, float %647, float %283)  ; FMax(a,b)
  %649 = fsub fast float %242, %273
  %650 = fadd fast float %649, 0x3F1A36E2E0000000
  %651 = call float @dx.op.binary.f32(i32 36, float %650, float %648)  ; FMin(a,b)
  %652 = icmp eq i32 %453, 0
  br i1 %652, label %749, label %653, !dx.controlflow.hints !56

; <label>:653                                     ; preds = %638
  %654 = fcmp fast olt float %650, %648
  %655 = fmul fast float %35, %64
  %656 = fmul fast float %655, %651
  %657 = fadd fast float %656, %272
  %658 = fmul fast float %36, %64
  %659 = fmul fast float %658, %651
  %660 = fadd fast float %659, %272
  %661 = fmul fast float %37, %64
  %662 = fmul fast float %661, %651
  %663 = fadd fast float %662, %272
  br i1 %654, label %664, label %669, !dx.controlflow.hints !57

; <label>:664                                     ; preds = %653
  %665 = fmul fast float %651, %62
  %666 = fmul fast float %651, %63
  %667 = fadd fast float %665, %270
  %668 = fadd fast float %666, %271
  br label %669

; <label>:669                                     ; preds = %664, %653
  %670 = phi float [ %667, %664 ], [ %270, %653 ]
  %671 = phi float [ %668, %664 ], [ %271, %653 ]
  %672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %673 = extractvalue %dx.types.CBufRet.f32 %672, 0
  %674 = extractvalue %dx.types.CBufRet.f32 %672, 1
  %675 = fsub fast float %670, %673
  %676 = fsub fast float %671, %674
  %677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %678 = extractvalue %dx.types.CBufRet.f32 %677, 0
  %679 = extractvalue %dx.types.CBufRet.f32 %677, 1
  %680 = fmul fast float %675, %678
  %681 = fmul fast float %676, %679
  %682 = fsub fast float 1.000000e+00, %681
  %683 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %684 = extractvalue %dx.types.CBufRet.i32 %683, 3
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %692, label %686, !dx.controlflow.hints !43

; <label>:686                                     ; preds = %669
  %687 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %12, float %680, float %682, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %688 = extractvalue %dx.types.ResRet.f32 %687, 0
  %689 = extractvalue %dx.types.ResRet.f32 %687, 1
  %690 = extractvalue %dx.types.ResRet.f32 %687, 2
  %691 = extractvalue %dx.types.ResRet.f32 %687, 3
  br label %698

; <label>:692                                     ; preds = %669
  %693 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %13, float %680, float %682, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %694 = extractvalue %dx.types.ResRet.f32 %693, 0
  %695 = extractvalue %dx.types.ResRet.f32 %693, 1
  %696 = extractvalue %dx.types.ResRet.f32 %693, 2
  %697 = extractvalue %dx.types.ResRet.f32 %693, 3
  br label %698

; <label>:698                                     ; preds = %692, %686
  %699 = phi float [ %688, %686 ], [ %694, %692 ]
  %700 = phi float [ %689, %686 ], [ %695, %692 ]
  %701 = phi float [ %690, %686 ], [ %696, %692 ]
  %702 = phi float [ %691, %686 ], [ %697, %692 ]
  %703 = extractvalue %dx.types.CBufRet.f32 %677, 3
  %704 = fmul fast float %703, %700
  %705 = fmul fast float %704, %699
  %706 = fsub fast float %704, %705
  %707 = fcmp fast ole float %706, 0.000000e+00
  %708 = extractvalue %dx.types.CBufRet.f32 %672, 2
  %709 = fadd fast float %705, %708
  %710 = fmul fast float %703, %701
  %711 = fadd fast float %710, %708
  %712 = fdiv fast float 1.000000e+00, %706
  %713 = select i1 %707, float 1.000000e+06, float %712
  %714 = fsub fast float %657, %709
  %715 = fmul fast float %713, %714
  %716 = call float @dx.op.unary.f32(i32 7, float %715)  ; Saturate(value)
  %717 = extractvalue %dx.types.CBufRet.f32 %677, 2
  %718 = fmul fast float %717, %716
  %719 = fsub fast float %717, %718
  %720 = fcmp fast olt float %657, %711
  %721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %722 = extractvalue %dx.types.CBufRet.f32 %721, 3
  %723 = select i1 %720, float %722, float 1.000000e+00
  %724 = fmul fast float %719, %723
  %725 = fsub fast float %660, %709
  %726 = fmul fast float %713, %725
  %727 = call float @dx.op.unary.f32(i32 7, float %726)  ; Saturate(value)
  %728 = fmul fast float %717, %727
  %729 = fsub fast float %717, %728
  %730 = fcmp fast olt float %660, %711
  %731 = select i1 %730, float %722, float 1.000000e+00
  %732 = fmul fast float %729, %731
  %733 = fadd fast float %732, %724
  %734 = fsub fast float %663, %709
  %735 = fmul fast float %713, %734
  %736 = call float @dx.op.unary.f32(i32 7, float %735)  ; Saturate(value)
  %737 = fmul fast float %717, %736
  %738 = fsub fast float %717, %737
  %739 = fcmp fast olt float %663, %711
  %740 = select i1 %739, float %722, float 1.000000e+00
  %741 = fmul fast float %738, %740
  %742 = fadd fast float %733, %741
  %743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %744 = extractvalue %dx.types.CBufRet.f32 %743, 2
  %745 = fmul fast float %651, 0x3FD5555560000000
  %746 = fmul fast float %745, %702
  %747 = fmul fast float %746, %744
  %748 = fmul fast float %747, %742
  br label %749

; <label>:749                                     ; preds = %698, %638
  %750 = phi float [ %748, %698 ], [ 0.000000e+00, %638 ]
  br i1 %567, label %797, label %751, !dx.controlflow.hints !58

; <label>:751                                     ; preds = %749
  %752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %753 = extractvalue %dx.types.CBufRet.f32 %752, 0
  %754 = fsub fast float %753, %272
  %755 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %281, float %280, float %754)  ; Dot3(ax,ay,az,bx,by,bz)
  %756 = fmul fast float %142, %755
  %757 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %756)  ; FMax(a,b)
  %758 = fcmp ogt float %61, -0.000000e+00
  %759 = call float @dx.op.binary.f32(i32 36, float %651, float %757)  ; FMin(a,b)
  br i1 %758, label %761, label %760, !dx.controlflow.hints !59

; <label>:760                                     ; preds = %751
  br label %761

; <label>:761                                     ; preds = %760, %751
  %762 = phi float [ 0.000000e+00, %760 ], [ %759, %751 ]
  %763 = phi float [ %759, %760 ], [ %651, %751 ]
  %764 = phi float [ %759, %760 ], [ 0.000000e+00, %751 ]
  %765 = phi float [ %651, %760 ], [ %759, %751 ]
  %766 = fsub fast float %763, %762
  %767 = extractvalue %dx.types.CBufRet.f32 %752, 1
  %768 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %767)  ; FMin(a,b)
  %769 = fsub fast float %272, %753
  %770 = fmul fast float %768, 0x3FF7154760000000
  %771 = fmul fast float %770, %769
  %772 = call float @dx.op.unary.f32(i32 21, float %771)  ; Exp(value)
  %773 = fmul fast float %61, 0xBFF7154760000000
  %774 = fmul fast float %773, %765
  %775 = fmul fast float %774, %768
  %776 = call float @dx.op.unary.f32(i32 21, float %775)  ; Exp(value)
  %777 = fmul fast float %773, %764
  %778 = fmul fast float %777, %768
  %779 = call float @dx.op.unary.f32(i32 21, float %778)  ; Exp(value)
  %780 = fsub fast float %776, %779
  %781 = fmul fast float %780, %772
  %782 = fmul fast float %768, %64
  %783 = fdiv fast float %781, %782
  %784 = fadd fast float %766, %783
  %785 = call float @dx.op.unary.f32(i32 6, float %64)  ; FAbs(value)
  %786 = fcmp fast olt float %785, 0x3F0FFB4800000000
  %787 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %769)  ; FMax(a,b)
  %788 = fmul fast float %787, 0x3FF7154760000000
  %789 = fmul fast float %788, %767
  %790 = call float @dx.op.unary.f32(i32 21, float %789)  ; Exp(value)
  %791 = fmul fast float %790, %651
  %792 = select i1 %786, float %791, float %784
  %793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %794 = extractvalue %dx.types.CBufRet.f32 %793, 1
  %795 = fmul fast float %792, %794
  %796 = fadd fast float %795, %750
  br label %797

; <label>:797                                     ; preds = %761, %749
  %798 = phi float [ %796, %761 ], [ %750, %749 ]
  %799 = icmp eq i32 %640, 0
  br i1 %799, label %980, label %800, !dx.controlflow.hints !60

; <label>:800                                     ; preds = %797
  %801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %802 = extractvalue %dx.types.CBufRet.f32 %801, 3
  %803 = fmul fast float %802, %273
  %804 = fcmp fast oeq float %803, 0.000000e+00
  br i1 %804, label %819, label %805, !dx.controlflow.hints !61

; <label>:805                                     ; preds = %800
  %806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %807 = extractvalue %dx.types.CBufRet.f32 %806, 3
  %808 = fmul fast float %807, %803
  %809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %810 = extractvalue %dx.types.CBufRet.f32 %809, 0
  %811 = extractvalue %dx.types.CBufRet.f32 %809, 1
  %812 = extractvalue %dx.types.CBufRet.f32 %809, 2
  %813 = fmul fast float %810, %808
  %814 = fmul fast float %811, %808
  %815 = fmul fast float %812, %808
  %816 = call float @dx.op.unary.f32(i32 23, float %813)  ; Log(value)
  %817 = call float @dx.op.unary.f32(i32 23, float %814)  ; Log(value)
  %818 = call float @dx.op.unary.f32(i32 23, float %815)  ; Log(value)
  br label %819

; <label>:819                                     ; preds = %805, %800
  %820 = phi float [ %816, %805 ], [ 0.000000e+00, %800 ]
  %821 = phi float [ %817, %805 ], [ 0.000000e+00, %800 ]
  %822 = phi float [ %818, %805 ], [ 0.000000e+00, %800 ]
  %823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %824 = extractvalue %dx.types.CBufRet.f32 %823, 0
  %825 = extractvalue %dx.types.CBufRet.f32 %823, 1
  %826 = extractvalue %dx.types.CBufRet.f32 %823, 2
  %827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %828 = extractvalue %dx.types.CBufRet.f32 %827, 0
  %829 = extractvalue %dx.types.CBufRet.f32 %827, 1
  %830 = extractvalue %dx.types.CBufRet.f32 %827, 2
  %831 = fsub fast float %270, %828
  %832 = fsub fast float %271, %829
  %833 = fsub fast float %272, %830
  %834 = fmul fast float %831, %824
  %835 = fmul fast float %832, %825
  %836 = fmul fast float %833, %826
  %837 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %838 = extractvalue %dx.types.CBufRet.i32 %837, 0
  %839 = extractvalue %dx.types.CBufRet.i32 %837, 1
  %840 = uitofp i32 %838 to float
  %841 = uitofp i32 %839 to float
  %842 = fmul fast float %834, %840
  %843 = fmul fast float %835, %841
  %844 = fadd fast float %842, 5.000000e-01
  %845 = fadd fast float %843, 5.000000e-01
  %846 = call float @dx.op.unary.f32(i32 22, float %844)  ; Frc(value)
  %847 = call float @dx.op.unary.f32(i32 22, float %845)  ; Frc(value)
  %848 = call float @dx.op.unary.f32(i32 27, float %844)  ; Round_ni(value)
  %849 = call float @dx.op.unary.f32(i32 27, float %845)  ; Round_ni(value)
  %850 = fadd fast float %848, 1.000000e+00
  %851 = fadd fast float %849, 1.000000e+00
  %852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %853 = extractvalue %dx.types.CBufRet.f32 %852, 0
  %854 = extractvalue %dx.types.CBufRet.f32 %852, 1
  %855 = fmul fast float %853, %850
  %856 = fmul fast float %854, %851
  %857 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %12, float %855, float %856, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %858 = extractvalue %dx.types.ResRet.f32 %857, 0
  %859 = extractvalue %dx.types.ResRet.f32 %857, 1
  %860 = extractvalue %dx.types.ResRet.f32 %857, 2
  %861 = extractvalue %dx.types.ResRet.f32 %857, 3
  %862 = extractvalue %dx.types.CBufRet.i32 %837, 2
  %863 = extractvalue %dx.types.CBufRet.f32 %852, 2
  %864 = uitofp i32 %862 to float
  %865 = fadd fast float %864, -1.000000e+00
  %866 = fmul fast float %865, %858
  %867 = fmul fast float %865, %859
  %868 = fmul fast float %865, %860
  %869 = fmul fast float %865, %861
  %870 = fadd fast float %866, 5.000000e-01
  %871 = fadd fast float %867, 5.000000e-01
  %872 = fadd fast float %868, 5.000000e-01
  %873 = fadd fast float %869, 5.000000e-01
  %874 = fptoui float %870 to i32
  %875 = fptoui float %871 to i32
  %876 = fptoui float %872 to i32
  %877 = fptoui float %873 to i32
  %878 = uitofp i32 %874 to float
  %879 = uitofp i32 %875 to float
  %880 = uitofp i32 %876 to float
  %881 = uitofp i32 %877 to float
  %882 = fadd fast float %878, 5.000000e-01
  %883 = fadd fast float %879, 5.000000e-01
  %884 = fadd fast float %880, 5.000000e-01
  %885 = fadd fast float %881, 5.000000e-01
  %886 = fmul fast float %882, %863
  %887 = fmul fast float %883, %863
  %888 = fmul fast float %884, %863
  %889 = fmul fast float %885, %863
  %890 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %13, float %886, float %836, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %891 = extractvalue %dx.types.ResRet.f32 %890, 0
  %892 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %13, float %887, float %836, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %893 = extractvalue %dx.types.ResRet.f32 %892, 0
  %894 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %13, float %888, float %836, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %895 = extractvalue %dx.types.ResRet.f32 %894, 0
  %896 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %13, float %889, float %836, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %897 = extractvalue %dx.types.ResRet.f32 %896, 0
  %898 = fsub fast float %895, %897
  %899 = fmul fast float %898, %846
  %900 = fadd fast float %899, %897
  %901 = fsub fast float %893, %891
  %902 = fmul fast float %901, %846
  %903 = fadd fast float %902, %891
  %904 = fsub fast float %903, %900
  %905 = fmul fast float %904, %847
  %906 = fadd fast float %905, %900
  %907 = fcmp fast ogt float %906, 0.000000e+00
  br i1 %907, label %908, label %976, !dx.controlflow.hints !62

; <label>:908                                     ; preds = %819
  %909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %910 = extractvalue %dx.types.CBufRet.f32 %909, 0
  %911 = extractvalue %dx.types.CBufRet.f32 %909, 1
  %912 = extractvalue %dx.types.CBufRet.f32 %909, 2
  %913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %914 = extractvalue %dx.types.CBufRet.f32 %913, 0
  %915 = extractvalue %dx.types.CBufRet.f32 %913, 1
  %916 = extractvalue %dx.types.CBufRet.f32 %913, 2
  %917 = fmul fast float %832, %824
  %918 = fmul fast float %833, %824
  %919 = fadd fast float %834, %914
  %920 = fadd fast float %917, %915
  %921 = fadd fast float %918, %916
  %922 = fmul fast float %919, %910
  %923 = fmul fast float %920, %910
  %924 = fmul fast float %921, %910
  %925 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %10, float %922, float %923, float %924, float undef, i32 0, i32 0, i32 0, float %820)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %926 = extractvalue %dx.types.ResRet.f32 %925, 0
  %927 = fmul fast float %919, %911
  %928 = fmul fast float %920, %911
  %929 = fmul fast float %921, %911
  %930 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %10, float %927, float %928, float %929, float undef, i32 0, i32 0, i32 0, float %821)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %931 = extractvalue %dx.types.ResRet.f32 %930, 1
  %932 = fmul fast float %919, %912
  %933 = fmul fast float %920, %912
  %934 = fmul fast float %921, %912
  %935 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %10, float %932, float %933, float %934, float undef, i32 0, i32 0, i32 0, float %822)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %936 = extractvalue %dx.types.ResRet.f32 %935, 2
  %937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %938 = extractvalue %dx.types.CBufRet.f32 %937, 1
  %939 = fmul fast float %931, %926
  %940 = fmul fast float %939, %936
  %941 = call float @dx.op.unary.f32(i32 23, float %940)  ; Log(value)
  %942 = fmul fast float %941, %938
  %943 = call float @dx.op.unary.f32(i32 21, float %942)  ; Exp(value)
  %944 = extractvalue %dx.types.CBufRet.f32 %937, 2
  %945 = fmul fast float %906, %906
  %946 = fmul fast float %945, %943
  %947 = fmul fast float %946, %944
  %948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %949 = extractvalue %dx.types.CBufRet.f32 %948, 3
  %950 = fmul fast float %949, %947
  %951 = bitcast float %950 to i32
  %952 = sitofp i32 %951 to float
  %953 = fptosi float %952 to i32
  %954 = bitcast i32 %953 to float
  %955 = fsub fast float 1.000000e+00, %947
  %956 = bitcast float %955 to i32
  %957 = sitofp i32 %956 to float
  %958 = fptosi float %957 to i32
  %959 = bitcast i32 %958 to float
  %960 = fadd fast float %954, %959
  %961 = bitcast float %960 to i32
  %962 = sub nsw i32 2129859010, %961
  %963 = bitcast i32 %962 to float
  %964 = fmul fast float %963, %954
  %965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %966 = extractvalue %dx.types.CBufRet.f32 %965, 3
  %967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %968 = extractvalue %dx.types.CBufRet.f32 %967, 0
  %969 = fmul fast float %964, %968
  %970 = fadd fast float %969, 1.000000e+00
  %971 = bitcast float %970 to i32
  %972 = sub nsw i32 2129859010, %971
  %973 = bitcast i32 %972 to float
  %974 = fmul fast float %964, %966
  %975 = fmul fast float %974, %973
  br label %976

; <label>:976                                     ; preds = %908, %819
  %977 = phi float [ %975, %908 ], [ %906, %819 ]
  %978 = fmul fast float %977, %651
  %979 = fadd fast float %978, %798
  br label %980

; <label>:980                                     ; preds = %976, %797
  %981 = phi float [ %979, %976 ], [ %798, %797 ]
  br i1 %562, label %1107, label %982, !dx.controlflow.hints !63

; <label>:982                                     ; preds = %980
  %983 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %984 = extractvalue %dx.types.CBufRet.i32 %983, 0
  %985 = icmp ne i32 %984, 0
  %986 = zext i1 %985 to i32
  %987 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %988 = extractvalue %dx.types.CBufRet.i32 %987, 0
  %989 = icmp eq i32 %988, 0
  br i1 %989, label %1023, label %990

; <label>:990                                     ; preds = %982
  br label %991

; <label>:991                                     ; preds = %1018, %990
  %992 = phi i32 [ %1019, %1018 ], [ 0, %990 ]
  %993 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %992, i32 0)  ; BufferLoad(srv,index,wot)
  %994 = extractvalue %dx.types.ResRet.f32 %993, 0
  %995 = extractvalue %dx.types.ResRet.f32 %993, 1
  %996 = extractvalue %dx.types.ResRet.f32 %993, 2
  %997 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %992, i32 16)  ; BufferLoad(srv,index,wot)
  %998 = extractvalue %dx.types.ResRet.f32 %997, 0
  %999 = extractvalue %dx.types.ResRet.f32 %997, 1
  %1000 = extractvalue %dx.types.ResRet.f32 %997, 2
  %1001 = fsub fast float %994, %998
  %1002 = fsub fast float %995, %999
  %1003 = fsub fast float %996, %1000
  %1004 = fadd fast float %998, %994
  %1005 = fadd fast float %999, %995
  %1006 = fadd fast float %1000, %996
  %1007 = fcmp fast olt float %270, %1001
  %1008 = fcmp fast olt float %271, %1002
  %1009 = fcmp fast olt float %272, %1003
  %1010 = or i1 %1007, %1008
  %1011 = or i1 %1009, %1010
  %1012 = fcmp fast ogt float %270, %1004
  %1013 = fcmp fast ogt float %271, %1005
  %1014 = fcmp fast ogt float %272, %1006
  %1015 = or i1 %1012, %1013
  %1016 = or i1 %1014, %1015
  %1017 = or i1 %1011, %1016
  br i1 %1017, label %1018, label %1021, !dx.controlflow.hints !64

; <label>:1018                                    ; preds = %991
  %1019 = add nuw i32 %992, 1
  %1020 = icmp ult i32 %1019, %988
  br i1 %1020, label %991, label %1021

; <label>:1021                                    ; preds = %1018, %991
  %1022 = phi i32 [ 255, %1018 ], [ %992, %991 ]
  br label %1023

; <label>:1023                                    ; preds = %1021, %982
  %1024 = phi i32 [ 255, %982 ], [ %1022, %1021 ]
  %1025 = icmp eq i32 %1024, 255
  br i1 %1025, label %1031, label %1026, !dx.controlflow.hints !65

; <label>:1026                                    ; preds = %1023
  %1027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1024, i32 156)  ; BufferLoad(srv,index,wot)
  %1028 = extractvalue %dx.types.ResRet.i32 %1027, 0
  %1029 = icmp ne i32 %1028, 0
  %1030 = zext i1 %1029 to i32
  br label %1031

; <label>:1031                                    ; preds = %1026, %1023
  %1032 = phi i32 [ %1030, %1026 ], [ %986, %1023 ]
  %1033 = icmp eq i32 %1032, 0
  br i1 %1033, label %1034, label %1103, !dx.controlflow.hints !66

; <label>:1034                                    ; preds = %1031
  %1035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1036 = extractvalue %dx.types.CBufRet.f32 %1035, 3
  %1037 = extractvalue %dx.types.CBufRet.f32 %472, 0
  %1038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1039 = extractvalue %dx.types.CBufRet.f32 %1038, 2
  %1040 = extractvalue %dx.types.CBufRet.f32 %1038, 3
  br i1 %1025, label %1051, label %1041, !dx.controlflow.hints !67

; <label>:1041                                    ; preds = %1034
  %1042 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %1024, i32 60)  ; BufferLoad(srv,index,wot)
  %1043 = extractvalue %dx.types.ResRet.f32 %1042, 0
  %1044 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %1024, i32 64)  ; BufferLoad(srv,index,wot)
  %1045 = extractvalue %dx.types.ResRet.f32 %1044, 0
  %1046 = extractvalue %dx.types.ResRet.f32 %1044, 1
  %1047 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %1024, i32 72)  ; BufferLoad(srv,index,wot)
  %1048 = extractvalue %dx.types.ResRet.f32 %1047, 0
  %1049 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %1024, i32 96)  ; BufferLoad(srv,index,wot)
  %1050 = extractvalue %dx.types.ResRet.f32 %1049, 0
  br label %1051

; <label>:1051                                    ; preds = %1041, %1034
  %1052 = phi float [ %1045, %1041 ], [ %1039, %1034 ]
  %1053 = phi float [ %1046, %1041 ], [ %1040, %1034 ]
  %1054 = phi float [ %1050, %1041 ], [ %1037, %1034 ]
  %1055 = phi float [ %1048, %1041 ], [ %473, %1034 ]
  %1056 = phi float [ %1043, %1041 ], [ %475, %1034 ]
  %1057 = call float @dx.op.binary.f32(i32 35, float %556, float 0.000000e+00)  ; FMax(a,b)
  %1058 = call float @dx.op.binary.f32(i32 36, float %1057, float 1.000000e+00)  ; FMin(a,b)
  %1059 = call float @dx.op.unary.f32(i32 24, float %1058)  ; Sqrt(value)
  %1060 = call float @dx.op.binary.f32(i32 35, float %559, float 0x3F847AE140000000)  ; FMax(a,b)
  %1061 = fsub fast float %557, %272
  %1062 = fsub fast float %272, %558
  %1063 = call float @dx.op.binary.f32(i32 36, float %1062, float %1061)  ; FMin(a,b)
  %1064 = fdiv fast float %1063, %1060
  %1065 = call float @dx.op.unary.f32(i32 7, float %1064)  ; Saturate(value)
  %1066 = fsub fast float %272, %1055
  %1067 = fdiv fast float %1066, %1056
  %1068 = call float @dx.op.unary.f32(i32 7, float %1067)  ; Saturate(value)
  %1069 = fsub fast float 1.000000e+00, %1068
  %1070 = fmul float %1065, %1069
  %1071 = fmul float %1070, %1070
  %1072 = fmul fast float %1059, %1036
  %1073 = fmul fast float %1072, %1071
  %1074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1075 = extractvalue %dx.types.CBufRet.f32 %1074, 2
  %1076 = extractvalue %dx.types.CBufRet.f32 %1074, 1
  %1077 = fsub fast float %1073, %1076
  %1078 = fsub fast float %1075, %1076
  %1079 = fdiv fast float %1077, %1078
  %1080 = call float @dx.op.unary.f32(i32 7, float %1079)  ; Saturate(value)
  %1081 = fmul fast float %1080, %1054
  %1082 = fcmp fast ogt float %1053, 0.000000e+00
  br i1 %1082, label %1083, label %1103, !dx.controlflow.hints !68

; <label>:1083                                    ; preds = %1051
  %1084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1085 = extractvalue %dx.types.CBufRet.f32 %1084, 0
  %1086 = extractvalue %dx.types.CBufRet.f32 %1084, 1
  %1087 = extractvalue %dx.types.CBufRet.f32 %1084, 2
  %1088 = fsub fast float %270, %1085
  %1089 = fsub fast float %271, %1086
  %1090 = fsub fast float %272, %1087
  %1091 = fmul fast float %1088, %1088
  %1092 = fmul fast float %1089, %1089
  %1093 = fadd fast float %1091, %1092
  %1094 = fmul fast float %1090, %1090
  %1095 = fadd fast float %1093, %1094
  %1096 = call float @dx.op.unary.f32(i32 24, float %1095)  ; Sqrt(value)
  %1097 = fsub fast float %1096, %1052
  %1098 = fsub fast float %1053, %1052
  %1099 = fdiv fast float %1097, %1098
  %1100 = call float @dx.op.unary.f32(i32 7, float %1099)  ; Saturate(value)
  %1101 = fmul fast float %1100, %1100
  %1102 = fmul fast float %1101, %1081
  br label %1103

; <label>:1103                                    ; preds = %1083, %1051, %1031
  %1104 = phi float [ 0.000000e+00, %1031 ], [ %1102, %1083 ], [ %1081, %1051 ]
  %1105 = fmul fast float %1104, %651
  %1106 = fadd fast float %1105, %981
  br label %1107

; <label>:1107                                    ; preds = %1103, %980
  %1108 = phi float [ %1106, %1103 ], [ %981, %980 ]
  %1109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1110 = extractvalue %dx.types.CBufRet.f32 %1109, 1
  %1111 = fcmp fast ogt float %1108, %1110
  br i1 %1111, label %1112, label %1124, !dx.controlflow.hints !69

; <label>:1112                                    ; preds = %1107
  %1113 = fmul fast float %1108, 0xBFF7154760000000
  %1114 = call float @dx.op.unary.f32(i32 21, float %1113)  ; Exp(value)
  %1115 = call float @dx.op.unary.f32(i32 7, float %1114)  ; Saturate(value)
  %1116 = icmp eq i32 %276, 0
  br i1 %1116, label %1117, label %1118, !dx.controlflow.hints !70

; <label>:1117                                    ; preds = %1112
  br label %1118

; <label>:1118                                    ; preds = %1117, %1112
  %1119 = phi i32 [ %276, %1112 ], [ 1, %1117 ]
  %1120 = phi float [ %277, %1112 ], [ %273, %1117 ]
  %1121 = fadd fast float %651, %278
  %1122 = fadd fast float %1108, %279
  %1123 = fmul fast float %1115, %269
  br label %1124

; <label>:1124                                    ; preds = %1118, %1107
  %1125 = phi float [ %1123, %1118 ], [ %269, %1107 ]
  %1126 = phi i32 [ %1119, %1118 ], [ %276, %1107 ]
  %1127 = phi float [ %1120, %1118 ], [ %277, %1107 ]
  %1128 = phi float [ %1121, %1118 ], [ %278, %1107 ]
  %1129 = phi float [ %1122, %1118 ], [ %279, %1107 ]
  %1130 = fadd fast float %651, %273
  %1131 = fmul fast float %651, %62
  %1132 = fmul fast float %651, %63
  %1133 = fmul fast float %651, %64
  %1134 = fadd fast float %1131, %270
  %1135 = fadd fast float %1132, %271
  %1136 = fadd fast float %1133, %272
  %1137 = fcmp fast olt float %1130, %242
  %1138 = extractvalue %dx.types.CBufRet.f32 %1109, 2
  %1139 = fcmp fast olt float %1138, %1125
  %1140 = and i1 %1137, %1139
  br i1 %1140, label %264, label %1141

; <label>:1141                                    ; preds = %1124
  br label %1142

; <label>:1142                                    ; preds = %1141, %218
  %1143 = phi float [ 0.000000e+00, %218 ], [ %1127, %1141 ]
  %1144 = phi float [ 0.000000e+00, %218 ], [ %1128, %1141 ]
  %1145 = phi float [ 0.000000e+00, %218 ], [ %1129, %1141 ]
  %1146 = extractvalue %dx.types.CBufRet.f32 %56, 3
  %1147 = fmul fast float %1146, %1143
  %1148 = fdiv fast float 1.000000e+00, %1144
  %1149 = fmul fast float %1148, %1145
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %17, i32 %18, i32 undef, float %1147, float %1149, float %1145, float %1147, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!27 = !{void ()* @cs_fog_raymarching_air_clouds_heightmap_particles, !"cs_fog_raymarching_air_clouds_heightmap_particles", null, !4, !28}
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
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 1}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.unroll.disable"}
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
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}

