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
; shader hash: fe37121a0fb10c5bec2682bb3d5d76eb
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
;                                   sampler      NA          NA      S1             s3     1
;                                   sampler      NA          NA      S2             s4     1
;                                   sampler      NA          NA      S3             s5     1
;                                   texture     f32          2d      T0            t27     1
;                                   texture     f32          3d      T1             t1     1
;                                   texture     f32          3d      T2             t2     1
;                                   texture     f32          2d      T3             t8     1
;                                   texture     f32          2d      T4             t9     1
;                                   texture     f32          2d      T5            t13     1
;                                       UAV     f32          2d      U0             u7     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
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

define void @cs_fog_raymarching_clouds_brfog() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %15 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %16 = uitofp i32 %14 to float
  %17 = uitofp i32 %15 to float
  %18 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %19 = extractvalue %dx.types.CBufRet.f32 %18, 2
  %20 = fmul fast float %19, 0x3FE3C6EF40000000
  %21 = frem fast float %16, 2.560000e+02
  %22 = frem fast float %17, 2.560000e+02
  %23 = fptoui float %21 to i32
  %24 = fptoui float %22 to i32
  %25 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %23, i32 %24, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %26 = extractvalue %dx.types.ResRet.f32 %25, 1
  %27 = fadd fast float %26, %20
  %28 = call float @dx.op.unary.f32(i32 22, float %27)  ; Frc(value)
  %29 = fadd fast float %16, 5.000000e-01
  %30 = fadd fast float %17, 5.000000e-01
  %31 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %32 = extractvalue %dx.types.CBufRet.f32 %31, 2
  %33 = extractvalue %dx.types.CBufRet.f32 %31, 3
  %34 = fmul fast float %32, %29
  %35 = fmul fast float %33, %30
  %36 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %37 = extractvalue %dx.types.CBufRet.f32 %36, 0
  %38 = extractvalue %dx.types.CBufRet.f32 %36, 1
  %39 = extractvalue %dx.types.CBufRet.f32 %36, 2
  %40 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %41 = extractvalue %dx.types.CBufRet.f32 %40, 0
  %42 = extractvalue %dx.types.CBufRet.f32 %40, 1
  %43 = fmul fast float %34, %41
  %44 = fmul fast float %35, %42
  %45 = fadd fast float %43, %37
  %46 = fadd fast float %44, %38
  %47 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %48 = extractvalue %dx.types.CBufRet.f32 %47, 2
  %49 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.f32 %49, 0
  %51 = extractvalue %dx.types.CBufRet.f32 %49, 1
  %52 = extractvalue %dx.types.CBufRet.f32 %49, 2
  %53 = fsub fast float -0.000000e+00, %50
  %54 = fsub fast float -0.000000e+00, %51
  %55 = fsub fast float -0.000000e+00, %52
  %56 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.i32 %56, 3
  %58 = icmp eq i32 %57, 0
  %59 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.f32 %59, 2
  %61 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %62 = extractvalue %dx.types.CBufRet.f32 %61, 2
  %63 = fsub fast float %60, %39
  %64 = fadd fast float %63, %62
  br i1 %58, label %76, label %65, !dx.controlflow.hints !26

; <label>:65                                      ; preds = %0
  %66 = fsub fast float -0.000000e+00, %46
  %67 = fsub fast float -0.000000e+00, %45
  %68 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %67, float %66, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %69 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %70 = fdiv fast float 1.000000e+00, %69
  %71 = fmul fast float %70, %68
  %72 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %67, float %66, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %73 = fmul fast float %70, %72
  %74 = call float @dx.op.binary.f32(i32 36, float %71, float %73)  ; FMin(a,b)
  %75 = call float @dx.op.binary.f32(i32 35, float %71, float %73)  ; FMax(a,b)
  br label %109

; <label>:76                                      ; preds = %0
  %77 = fdiv fast float 1.000000e+00, %53
  %78 = fdiv fast float 1.000000e+00, %54
  %79 = fdiv fast float 1.000000e+00, %55
  %80 = extractvalue %dx.types.CBufRet.f32 %59, 0
  %81 = extractvalue %dx.types.CBufRet.f32 %59, 1
  %82 = extractvalue %dx.types.CBufRet.f32 %61, 0
  %83 = extractvalue %dx.types.CBufRet.f32 %61, 1
  %84 = fsub fast float %80, %45
  %85 = fmul fast float %84, %77
  %86 = fadd fast float %84, %82
  %87 = fmul fast float %86, %77
  %88 = call float @dx.op.binary.f32(i32 36, float %85, float %87)  ; FMin(a,b)
  %89 = call float @dx.op.binary.f32(i32 35, float %85, float %87)  ; FMax(a,b)
  %90 = fsub fast float %81, %46
  %91 = fmul fast float %90, %78
  %92 = fadd fast float %90, %83
  %93 = fmul fast float %92, %78
  %94 = call float @dx.op.binary.f32(i32 36, float %91, float %93)  ; FMin(a,b)
  %95 = call float @dx.op.binary.f32(i32 35, float %88, float %94)  ; FMax(a,b)
  %96 = call float @dx.op.binary.f32(i32 35, float %91, float %93)  ; FMax(a,b)
  %97 = call float @dx.op.binary.f32(i32 36, float %89, float %96)  ; FMin(a,b)
  %98 = fmul fast float %63, %79
  %99 = fmul fast float %64, %79
  %100 = call float @dx.op.binary.f32(i32 36, float %98, float %99)  ; FMin(a,b)
  %101 = call float @dx.op.binary.f32(i32 35, float %95, float %100)  ; FMax(a,b)
  %102 = call float @dx.op.binary.f32(i32 35, float %98, float %99)  ; FMax(a,b)
  %103 = call float @dx.op.binary.f32(i32 36, float %97, float %102)  ; FMin(a,b)
  %104 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %101)  ; FMax(a,b)
  %105 = fcmp fast ult float %103, %104
  br i1 %105, label %109, label %106, !dx.controlflow.hints !27

; <label>:106                                     ; preds = %76
  %107 = call float @dx.op.binary.f32(i32 36, float %101, float %103)  ; FMin(a,b)
  %108 = call float @dx.op.binary.f32(i32 35, float %101, float %103)  ; FMax(a,b)
  br label %109

; <label>:109                                     ; preds = %106, %76, %65
  %110 = phi float [ %74, %65 ], [ %107, %106 ], [ 0.000000e+00, %76 ]
  %111 = phi float [ %75, %65 ], [ %108, %106 ], [ 0.000000e+00, %76 ]
  %112 = fcmp fast oeq float %111, 0.000000e+00
  br i1 %112, label %116, label %113, !dx.controlflow.hints !28

; <label>:113                                     ; preds = %109
  %114 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %110)  ; FMin(a,b)
  %115 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %111)  ; FMax(a,b)
  br label %116

; <label>:116                                     ; preds = %113, %109
  %117 = phi float [ %115, %113 ], [ -1.000000e+00, %109 ]
  %118 = phi i32 [ 1, %113 ], [ 0, %109 ]
  %119 = phi float [ %114, %113 ], [ 0x47EFFFFFE0000000, %109 ]
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 3
  %124 = fsub fast float -0.000000e+00, %45
  %125 = fsub fast float -0.000000e+00, %46
  %126 = fsub fast float %121, %39
  %127 = fadd fast float %126, %123
  %128 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %124, float %125, float %127)  ; Dot3(ax,ay,az,bx,by,bz)
  %129 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %130 = fdiv fast float 1.000000e+00, %129
  %131 = fmul fast float %130, %128
  %132 = fcmp fast olt float %131, 0.000000e+00
  %133 = fcmp olt float %52, -0.000000e+00
  %134 = and i1 %133, %132
  br i1 %134, label %139, label %135, !dx.controlflow.hints !29

; <label>:135                                     ; preds = %116
  %136 = fcmp ogt float %52, -0.000000e+00
  br i1 %136, label %137, label %139, !dx.controlflow.hints !30

; <label>:137                                     ; preds = %135
  %138 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %131)  ; FMax(a,b)
  br label %139

; <label>:139                                     ; preds = %137, %135, %116
  %140 = phi float [ 0.000000e+00, %116 ], [ %138, %137 ], [ 0.000000e+00, %135 ]
  %141 = phi float [ 0.000000e+00, %116 ], [ 0x47EFFFFFE0000000, %137 ], [ %131, %135 ]
  %142 = fcmp fast oeq float %141, 0.000000e+00
  br i1 %142, label %146, label %143, !dx.controlflow.hints !31

; <label>:143                                     ; preds = %139
  %144 = call float @dx.op.binary.f32(i32 36, float %119, float %140)  ; FMin(a,b)
  %145 = call float @dx.op.binary.f32(i32 35, float %117, float %141)  ; FMax(a,b)
  br label %146

; <label>:146                                     ; preds = %143, %139
  %147 = phi i32 [ 1, %143 ], [ 0, %139 ]
  %148 = phi float [ %145, %143 ], [ %117, %139 ]
  %149 = phi float [ %144, %143 ], [ %119, %139 ]
  %150 = call float @dx.op.binary.f32(i32 36, float %48, float %148)  ; FMin(a,b)
  %151 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %149)  ; FMax(a,b)
  %152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = extractvalue %dx.types.CBufRet.f32 %152, 1
  %154 = fmul fast float %28, 2.000000e+00
  %155 = fadd fast float %154, -1.000000e+00
  %156 = fmul fast float %153, %155
  %157 = fadd fast float %156, %151
  %158 = fcmp fast olt float %157, %150
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.f32 %159, 2
  %161 = fcmp fast olt float %160, 1.000000e+00
  %162 = and i1 %161, %158
  br i1 %162, label %163, label %682

; <label>:163                                     ; preds = %146
  %164 = fmul fast float %157, %55
  %165 = fadd fast float %164, %39
  %166 = fmul fast float %157, %54
  %167 = fadd fast float %166, %46
  %168 = fmul fast float %157, %53
  %169 = fadd fast float %168, %45
  br label %170

; <label>:170                                     ; preds = %664, %163
  %171 = phi i32 [ %418, %664 ], [ undef, %163 ]
  %172 = phi float [ %419, %664 ], [ undef, %163 ]
  %173 = phi float [ %665, %664 ], [ 1.000000e+00, %163 ]
  %174 = phi float [ %674, %664 ], [ %169, %163 ]
  %175 = phi float [ %675, %664 ], [ %167, %163 ]
  %176 = phi float [ %676, %664 ], [ %165, %163 ]
  %177 = phi float [ %670, %664 ], [ %157, %163 ]
  %178 = phi i32 [ %666, %664 ], [ 0, %163 ]
  %179 = phi float [ %667, %664 ], [ 0.000000e+00, %163 ]
  %180 = phi float [ %668, %664 ], [ 0.000000e+00, %163 ]
  %181 = phi float [ %669, %664 ], [ 0.000000e+00, %163 ]
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.f32 %182, 1
  %184 = icmp eq i32 %118, 0
  br i1 %184, label %241, label %185, !dx.controlflow.hints !32

; <label>:185                                     ; preds = %170
  %186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = extractvalue %dx.types.CBufRet.f32 %186, 0
  %188 = extractvalue %dx.types.CBufRet.f32 %186, 1
  %189 = extractvalue %dx.types.CBufRet.f32 %186, 2
  %190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.f32 %190, 0
  %192 = extractvalue %dx.types.CBufRet.f32 %190, 1
  %193 = extractvalue %dx.types.CBufRet.f32 %190, 2
  %194 = fsub fast float %174, %191
  %195 = fsub fast float %175, %192
  %196 = fsub fast float %176, %193
  %197 = fmul fast float %194, %187
  %198 = fmul fast float %195, %188
  %199 = fmul fast float %196, %189
  %200 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = extractvalue %dx.types.CBufRet.i32 %200, 3
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %206, label %203, !dx.controlflow.hints !33

; <label>:203                                     ; preds = %185
  %204 = call float @dx.op.unary.f32(i32 22, float %197)  ; Frc(value)
  %205 = call float @dx.op.unary.f32(i32 22, float %198)  ; Frc(value)
  br label %206

; <label>:206                                     ; preds = %203, %185
  %207 = phi float [ %204, %203 ], [ %197, %185 ]
  %208 = phi float [ %205, %203 ], [ %198, %185 ]
  %209 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %9, float %207, float %208, float %199, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %210 = extractvalue %dx.types.ResRet.f32 %209, 0
  %211 = fmul fast float %210, 2.000000e+00
  %212 = fadd fast float %211, -1.000000e+00
  %213 = extractvalue %dx.types.CBufRet.f32 %186, 3
  %214 = fmul fast float %212, %213
  %215 = fcmp fast olt float %214, 0.000000e+00
  %216 = fcmp fast oge float %199, 0.000000e+00
  %217 = fcmp fast ole float %199, 1.000000e+00
  br i1 %202, label %220, label %218, !dx.controlflow.hints !34

; <label>:218                                     ; preds = %206
  %219 = and i1 %216, %217
  br label %230

; <label>:220                                     ; preds = %206
  %221 = fcmp fast oge float %197, 0.000000e+00
  %222 = fcmp fast oge float %198, 0.000000e+00
  %223 = and i1 %221, %222
  %224 = and i1 %216, %223
  %225 = fcmp fast ole float %197, 1.000000e+00
  %226 = fcmp fast ole float %198, 1.000000e+00
  %227 = and i1 %225, %226
  %228 = and i1 %217, %227
  %229 = and i1 %224, %228
  br label %230

; <label>:230                                     ; preds = %220, %218
  %231 = phi i1 [ %219, %218 ], [ %229, %220 ]
  %232 = and i1 %215, %231
  %233 = call float @dx.op.unary.f32(i32 6, float %214)  ; FAbs(value)
  %234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %235 = extractvalue %dx.types.CBufRet.f32 %234, 1
  %236 = extractvalue %dx.types.CBufRet.f32 %234, 0
  %237 = call float @dx.op.binary.f32(i32 35, float %233, float %236)  ; FMax(a,b)
  %238 = select i1 %232, float %235, float %237
  %239 = zext i1 %232 to i32
  %240 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %238)  ; FMin(a,b)
  br label %241

; <label>:241                                     ; preds = %230, %170
  %242 = phi float [ %240, %230 ], [ 0x47EFFFFFE0000000, %170 ]
  %243 = phi i32 [ %239, %230 ], [ 0, %170 ]
  %244 = icmp eq i32 %147, 0
  br i1 %244, label %417, label %245, !dx.controlflow.hints !35

; <label>:245                                     ; preds = %241
  %246 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %247 = extractvalue %dx.types.CBufRet.i32 %246, 1
  %248 = and i32 %247, 1
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %407, !dx.controlflow.hints !36

; <label>:250                                     ; preds = %245
  %251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %252 = extractvalue %dx.types.CBufRet.f32 %251, 2
  %253 = extractvalue %dx.types.CBufRet.f32 %251, 3
  %254 = fmul fast float %252, %174
  %255 = fmul fast float %253, %175
  %256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %257 = extractvalue %dx.types.CBufRet.f32 %256, 0
  %258 = extractvalue %dx.types.CBufRet.f32 %256, 1
  %259 = fadd fast float %254, %257
  %260 = fadd fast float %255, %258
  %261 = call float @dx.op.unary.f32(i32 7, float %259)  ; Saturate(value)
  %262 = call float @dx.op.unary.f32(i32 7, float %260)  ; Saturate(value)
  %263 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %11, float %261, float %262, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %264 = extractvalue %dx.types.ResRet.f32 %263, 0
  %265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %266 = extractvalue %dx.types.CBufRet.f32 %265, 0
  %267 = fmul fast float %266, %264
  %268 = fsub fast float %259, %261
  %269 = fsub fast float %260, %262
  %270 = extractvalue %dx.types.CBufRet.f32 %251, 0
  %271 = extractvalue %dx.types.CBufRet.f32 %251, 1
  %272 = fmul fast float %270, %268
  %273 = fmul fast float %271, %269
  %274 = fmul fast float %272, %272
  %275 = fmul fast float %273, %273
  %276 = fadd fast float %274, %275
  %277 = call float @dx.op.unary.f32(i32 24, float %276)  ; Sqrt(value)
  %278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %279 = extractvalue %dx.types.CBufRet.f32 %278, 3
  %280 = fmul fast float %279, %277
  %281 = call float @dx.op.unary.f32(i32 7, float %280)  ; Saturate(value)
  %282 = extractvalue %dx.types.CBufRet.f32 %278, 2
  %283 = fsub fast float %282, %267
  %284 = fmul fast float %283, %281
  %285 = extractvalue %dx.types.CBufRet.f32 %265, 1
  %286 = fsub fast float %176, %267
  %287 = fsub fast float %286, %285
  %288 = fsub fast float %287, %284
  %289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %290 = extractvalue %dx.types.CBufRet.f32 %289, 2
  %291 = fsub fast float %288, %290
  %292 = fcmp fast olt float %291, 0.000000e+00
  %293 = call float @dx.op.unary.f32(i32 6, float %291)  ; FAbs(value)
  %294 = extractvalue %dx.types.CBufRet.i32 %246, 0
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %349, label %296

; <label>:296                                     ; preds = %250
  br label %297

; <label>:297                                     ; preds = %336, %296
  %298 = phi i32 [ %342, %336 ], [ 1, %296 ]
  %299 = phi float [ %344, %336 ], [ 0x47EFFFFFE0000000, %296 ]
  %300 = phi i32 [ %345, %336 ], [ 0, %296 ]
  %301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %302 = extractvalue %dx.types.CBufRet.f32 %301, 1
  %303 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %304 = extractvalue %dx.types.CBufRet.i32 %303, 1
  %305 = and i32 %304, 8
  %306 = icmp eq i32 %305, 0
  %307 = fcmp fast ogt float %302, %288
  %308 = or i1 %307, %306
  %309 = add i32 %300, 171
  %310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %309)  ; CBufferLoadLegacy(handle,regIndex)
  %311 = extractvalue %dx.types.CBufRet.f32 %310, 0
  %312 = extractvalue %dx.types.CBufRet.f32 %310, 1
  %313 = extractvalue %dx.types.CBufRet.f32 %310, 2
  br i1 %308, label %314, label %320, !dx.controlflow.hints !37

; <label>:314                                     ; preds = %297
  %315 = fsub fast float %311, %174
  %316 = fsub fast float %312, %175
  %317 = fmul fast float %315, %315
  %318 = fmul fast float %316, %316
  %319 = fadd fast float %317, %318
  br label %336

; <label>:320                                     ; preds = %297
  %321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %322 = extractvalue %dx.types.CBufRet.f32 %321, 2
  %323 = extractvalue %dx.types.CBufRet.f32 %301, 2
  %324 = fmul fast float %323, %322
  %325 = fsub fast float %324, %302
  %326 = fdiv fast float %313, %325
  %327 = fsub fast float %174, %311
  %328 = fsub fast float %175, %312
  %329 = fsub fast float %288, %302
  %330 = fmul fast float %326, %329
  %331 = fmul fast float %327, %327
  %332 = fmul fast float %328, %328
  %333 = fadd fast float %331, %332
  %334 = fmul fast float %330, %330
  %335 = fadd fast float %333, %334
  br label %336

; <label>:336                                     ; preds = %320, %314
  %337 = phi float [ %319, %314 ], [ %335, %320 ]
  %338 = call float @dx.op.unary.f32(i32 24, float %337)  ; Sqrt(value)
  %339 = fsub float %313, %338
  %340 = fcmp fast olt float %339, 0.000000e+00
  %341 = zext i1 %340 to i32
  %342 = and i32 %341, %298
  %343 = call float @dx.op.unary.f32(i32 6, float %339)  ; FAbs(value)
  %344 = call float @dx.op.binary.f32(i32 36, float %299, float %343)  ; FMin(a,b)
  %345 = add i32 %300, 1
  %346 = extractvalue %dx.types.CBufRet.i32 %303, 0
  %347 = icmp ult i32 %345, %346
  br i1 %347, label %297, label %348

; <label>:348                                     ; preds = %336
  br label %349

; <label>:349                                     ; preds = %348, %250
  %350 = phi i32 [ 1, %250 ], [ %342, %348 ]
  %351 = phi float [ 0x47EFFFFFE0000000, %250 ], [ %344, %348 ]
  br label %352

; <label>:352                                     ; preds = %352, %349
  %353 = phi i32 [ %350, %349 ], [ %392, %352 ]
  %354 = phi float [ 0x47EFFFFFE0000000, %349 ], [ %394, %352 ]
  %355 = phi i32 [ 0, %349 ], [ %395, %352 ]
  %356 = add nuw nsw i32 %355, 191
  %357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %356)  ; CBufferLoadLegacy(handle,regIndex)
  %358 = extractvalue %dx.types.CBufRet.f32 %357, 0
  %359 = extractvalue %dx.types.CBufRet.f32 %357, 1
  %360 = extractvalue %dx.types.CBufRet.f32 %357, 2
  %361 = add nuw nsw i32 %355, 195
  %362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %361)  ; CBufferLoadLegacy(handle,regIndex)
  %363 = extractvalue %dx.types.CBufRet.f32 %362, 0
  %364 = extractvalue %dx.types.CBufRet.f32 %362, 1
  %365 = extractvalue %dx.types.CBufRet.f32 %362, 2
  %366 = fsub fast float %174, %358
  %367 = fsub fast float %175, %359
  %368 = fsub fast float %288, %360
  %369 = call float @dx.op.unary.f32(i32 6, float %366)  ; FAbs(value)
  %370 = call float @dx.op.unary.f32(i32 6, float %367)  ; FAbs(value)
  %371 = call float @dx.op.unary.f32(i32 6, float %368)  ; FAbs(value)
  %372 = fsub fast float %369, %363
  %373 = fsub fast float %370, %364
  %374 = fsub fast float %371, %365
  %375 = call float @dx.op.binary.f32(i32 35, float %372, float 0.000000e+00)  ; FMax(a,b)
  %376 = call float @dx.op.binary.f32(i32 35, float %373, float 0.000000e+00)  ; FMax(a,b)
  %377 = call float @dx.op.binary.f32(i32 35, float %374, float 0.000000e+00)  ; FMax(a,b)
  %378 = fmul fast float %375, %375
  %379 = fmul fast float %376, %376
  %380 = fadd fast float %379, %378
  %381 = fmul fast float %377, %377
  %382 = fadd fast float %380, %381
  %383 = call float @dx.op.unary.f32(i32 24, float %382)  ; Sqrt(value)
  %384 = call float @dx.op.binary.f32(i32 35, float %373, float %374)  ; FMax(a,b)
  %385 = call float @dx.op.binary.f32(i32 35, float %372, float %384)  ; FMax(a,b)
  %386 = call float @dx.op.binary.f32(i32 36, float %385, float 0.000000e+00)  ; FMin(a,b)
  %387 = fadd fast float %386, %383
  %388 = fsub fast float -0.000000e+00, %387
  %389 = fcmp ogt float %387, -0.000000e+00
  %390 = icmp ne i32 %353, 0
  %391 = and i1 %390, %389
  %392 = zext i1 %391 to i32
  %393 = call float @dx.op.unary.f32(i32 6, float %388)  ; FAbs(value)
  %394 = call float @dx.op.binary.f32(i32 36, float %354, float %393)  ; FMin(a,b)
  %395 = add nuw nsw i32 %355, 1
  %396 = icmp eq i32 %395, 4
  br i1 %396, label %397, label %352

; <label>:397                                     ; preds = %352
  %398 = call float @dx.op.binary.f32(i32 36, float %293, float %394)  ; FMin(a,b)
  %399 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %400 = extractvalue %dx.types.CBufRet.i32 %399, 1
  %401 = and i32 %400, 2
  %402 = icmp ne i32 %401, 0
  %403 = xor i1 %391, %402
  %404 = call float @dx.op.binary.f32(i32 36, float %398, float %351)  ; FMin(a,b)
  %405 = and i1 %403, %292
  %406 = zext i1 %405 to i32
  br label %407

; <label>:407                                     ; preds = %397, %245
  %408 = phi i32 [ %171, %245 ], [ %406, %397 ]
  %409 = phi float [ 0.000000e+00, %245 ], [ %404, %397 ]
  %410 = phi float [ %176, %245 ], [ %288, %397 ]
  %411 = icmp ne i32 %408, 0
  %412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %413 = extractvalue %dx.types.CBufRet.f32 %412, 3
  %414 = call float @dx.op.binary.f32(i32 35, float %409, float %413)  ; FMax(a,b)
  %415 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %414)  ; FMin(a,b)
  %416 = zext i1 %411 to i32
  br label %417

; <label>:417                                     ; preds = %407, %241
  %418 = phi i32 [ %408, %407 ], [ %171, %241 ]
  %419 = phi float [ %410, %407 ], [ %172, %241 ]
  %420 = phi float [ %415, %407 ], [ 0x47EFFFFFE0000000, %241 ]
  %421 = phi i32 [ %416, %407 ], [ 0, %241 ]
  %422 = extractvalue %dx.types.CBufRet.f32 %182, 2
  %423 = fmul fast float %422, %177
  %424 = call float @dx.op.unary.f32(i32 23, float %423)  ; Log(value)
  %425 = fmul fast float %424, 0x3FE62E4300000000
  %426 = call float @dx.op.binary.f32(i32 35, float %425, float 1.000000e+00)  ; FMax(a,b)
  %427 = fmul fast float %426, %420
  %428 = call float @dx.op.binary.f32(i32 36, float %427, float %242)  ; FMin(a,b)
  %429 = call float @dx.op.binary.f32(i32 35, float %428, float %183)  ; FMax(a,b)
  %430 = fadd fast float %150, 0x3F1A36E2E0000000
  %431 = fsub fast float %430, %177
  %432 = call float @dx.op.binary.f32(i32 36, float %431, float %429)  ; FMin(a,b)
  %433 = icmp eq i32 %243, 0
  br i1 %433, label %613, label %434, !dx.controlflow.hints !38

; <label>:434                                     ; preds = %417
  %435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %436 = extractvalue %dx.types.CBufRet.f32 %435, 3
  %437 = fmul fast float %436, %177
  %438 = fcmp fast oeq float %437, 0.000000e+00
  br i1 %438, label %453, label %439, !dx.controlflow.hints !39

; <label>:439                                     ; preds = %434
  %440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %441 = extractvalue %dx.types.CBufRet.f32 %440, 3
  %442 = fmul fast float %441, %437
  %443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %444 = extractvalue %dx.types.CBufRet.f32 %443, 0
  %445 = extractvalue %dx.types.CBufRet.f32 %443, 1
  %446 = extractvalue %dx.types.CBufRet.f32 %443, 2
  %447 = fmul fast float %444, %442
  %448 = fmul fast float %445, %442
  %449 = fmul fast float %446, %442
  %450 = call float @dx.op.unary.f32(i32 23, float %447)  ; Log(value)
  %451 = call float @dx.op.unary.f32(i32 23, float %448)  ; Log(value)
  %452 = call float @dx.op.unary.f32(i32 23, float %449)  ; Log(value)
  br label %453

; <label>:453                                     ; preds = %439, %434
  %454 = phi float [ %450, %439 ], [ 0.000000e+00, %434 ]
  %455 = phi float [ %451, %439 ], [ 0.000000e+00, %434 ]
  %456 = phi float [ %452, %439 ], [ 0.000000e+00, %434 ]
  %457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %458 = extractvalue %dx.types.CBufRet.f32 %457, 0
  %459 = extractvalue %dx.types.CBufRet.f32 %457, 1
  %460 = extractvalue %dx.types.CBufRet.f32 %457, 2
  %461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %462 = extractvalue %dx.types.CBufRet.f32 %461, 0
  %463 = extractvalue %dx.types.CBufRet.f32 %461, 1
  %464 = extractvalue %dx.types.CBufRet.f32 %461, 2
  %465 = fsub fast float %174, %462
  %466 = fsub fast float %175, %463
  %467 = fsub fast float %176, %464
  %468 = fmul fast float %465, %458
  %469 = fmul fast float %466, %459
  %470 = fmul fast float %467, %460
  %471 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %472 = extractvalue %dx.types.CBufRet.i32 %471, 0
  %473 = extractvalue %dx.types.CBufRet.i32 %471, 1
  %474 = uitofp i32 %472 to float
  %475 = uitofp i32 %473 to float
  %476 = fmul fast float %468, %474
  %477 = fmul fast float %469, %475
  %478 = fadd fast float %476, 5.000000e-01
  %479 = fadd fast float %477, 5.000000e-01
  %480 = call float @dx.op.unary.f32(i32 22, float %478)  ; Frc(value)
  %481 = call float @dx.op.unary.f32(i32 22, float %479)  ; Frc(value)
  %482 = call float @dx.op.unary.f32(i32 27, float %478)  ; Round_ni(value)
  %483 = call float @dx.op.unary.f32(i32 27, float %479)  ; Round_ni(value)
  %484 = fadd fast float %482, 1.000000e+00
  %485 = fadd fast float %483, 1.000000e+00
  %486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %487 = extractvalue %dx.types.CBufRet.f32 %486, 0
  %488 = extractvalue %dx.types.CBufRet.f32 %486, 1
  %489 = fmul fast float %487, %484
  %490 = fmul fast float %488, %485
  %491 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %10, float %489, float %490, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %492 = extractvalue %dx.types.ResRet.f32 %491, 0
  %493 = extractvalue %dx.types.ResRet.f32 %491, 1
  %494 = extractvalue %dx.types.ResRet.f32 %491, 2
  %495 = extractvalue %dx.types.ResRet.f32 %491, 3
  %496 = extractvalue %dx.types.CBufRet.i32 %471, 2
  %497 = extractvalue %dx.types.CBufRet.f32 %486, 2
  %498 = uitofp i32 %496 to float
  %499 = fadd fast float %498, -1.000000e+00
  %500 = fmul fast float %499, %492
  %501 = fmul fast float %499, %493
  %502 = fmul fast float %499, %494
  %503 = fmul fast float %499, %495
  %504 = fadd fast float %500, 5.000000e-01
  %505 = fadd fast float %501, 5.000000e-01
  %506 = fadd fast float %502, 5.000000e-01
  %507 = fadd fast float %503, 5.000000e-01
  %508 = fptoui float %504 to i32
  %509 = fptoui float %505 to i32
  %510 = fptoui float %506 to i32
  %511 = fptoui float %507 to i32
  %512 = uitofp i32 %508 to float
  %513 = uitofp i32 %509 to float
  %514 = uitofp i32 %510 to float
  %515 = uitofp i32 %511 to float
  %516 = fadd fast float %512, 5.000000e-01
  %517 = fadd fast float %513, 5.000000e-01
  %518 = fadd fast float %514, 5.000000e-01
  %519 = fadd fast float %515, 5.000000e-01
  %520 = fmul fast float %516, %497
  %521 = fmul fast float %517, %497
  %522 = fmul fast float %518, %497
  %523 = fmul fast float %519, %497
  %524 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %11, float %520, float %470, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %525 = extractvalue %dx.types.ResRet.f32 %524, 0
  %526 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %11, float %521, float %470, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %527 = extractvalue %dx.types.ResRet.f32 %526, 0
  %528 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %11, float %522, float %470, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %529 = extractvalue %dx.types.ResRet.f32 %528, 0
  %530 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %11, float %523, float %470, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %531 = extractvalue %dx.types.ResRet.f32 %530, 0
  %532 = fsub fast float %529, %531
  %533 = fmul fast float %532, %480
  %534 = fadd fast float %533, %531
  %535 = fsub fast float %527, %525
  %536 = fmul fast float %535, %480
  %537 = fadd fast float %536, %525
  %538 = fsub fast float %537, %534
  %539 = fmul fast float %538, %481
  %540 = fadd fast float %539, %534
  %541 = fcmp fast ogt float %540, 0.000000e+00
  br i1 %541, label %542, label %610, !dx.controlflow.hints !40

; <label>:542                                     ; preds = %453
  %543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %544 = extractvalue %dx.types.CBufRet.f32 %543, 0
  %545 = extractvalue %dx.types.CBufRet.f32 %543, 1
  %546 = extractvalue %dx.types.CBufRet.f32 %543, 2
  %547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %548 = extractvalue %dx.types.CBufRet.f32 %547, 0
  %549 = extractvalue %dx.types.CBufRet.f32 %547, 1
  %550 = extractvalue %dx.types.CBufRet.f32 %547, 2
  %551 = fmul fast float %466, %458
  %552 = fmul fast float %467, %458
  %553 = fadd fast float %468, %548
  %554 = fadd fast float %551, %549
  %555 = fadd fast float %552, %550
  %556 = fmul fast float %553, %544
  %557 = fmul fast float %554, %544
  %558 = fmul fast float %555, %544
  %559 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %8, float %556, float %557, float %558, float undef, i32 0, i32 0, i32 0, float %454)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %560 = extractvalue %dx.types.ResRet.f32 %559, 0
  %561 = fmul fast float %553, %545
  %562 = fmul fast float %554, %545
  %563 = fmul fast float %555, %545
  %564 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %8, float %561, float %562, float %563, float undef, i32 0, i32 0, i32 0, float %455)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %565 = extractvalue %dx.types.ResRet.f32 %564, 1
  %566 = fmul fast float %553, %546
  %567 = fmul fast float %554, %546
  %568 = fmul fast float %555, %546
  %569 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %8, float %566, float %567, float %568, float undef, i32 0, i32 0, i32 0, float %456)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %570 = extractvalue %dx.types.ResRet.f32 %569, 2
  %571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %572 = extractvalue %dx.types.CBufRet.f32 %571, 1
  %573 = fmul fast float %565, %560
  %574 = fmul fast float %573, %570
  %575 = call float @dx.op.unary.f32(i32 23, float %574)  ; Log(value)
  %576 = fmul fast float %575, %572
  %577 = call float @dx.op.unary.f32(i32 21, float %576)  ; Exp(value)
  %578 = extractvalue %dx.types.CBufRet.f32 %571, 2
  %579 = fmul fast float %540, %540
  %580 = fmul fast float %579, %577
  %581 = fmul fast float %580, %578
  %582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %583 = extractvalue %dx.types.CBufRet.f32 %582, 3
  %584 = fmul fast float %583, %581
  %585 = bitcast float %584 to i32
  %586 = sitofp i32 %585 to float
  %587 = fptosi float %586 to i32
  %588 = bitcast i32 %587 to float
  %589 = fsub fast float 1.000000e+00, %581
  %590 = bitcast float %589 to i32
  %591 = sitofp i32 %590 to float
  %592 = fptosi float %591 to i32
  %593 = bitcast i32 %592 to float
  %594 = fadd fast float %588, %593
  %595 = bitcast float %594 to i32
  %596 = sub nsw i32 2129859010, %595
  %597 = bitcast i32 %596 to float
  %598 = fmul fast float %597, %588
  %599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %600 = extractvalue %dx.types.CBufRet.f32 %599, 3
  %601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %602 = extractvalue %dx.types.CBufRet.f32 %601, 0
  %603 = fmul fast float %598, %602
  %604 = fadd fast float %603, 1.000000e+00
  %605 = bitcast float %604 to i32
  %606 = sub nsw i32 2129859010, %605
  %607 = bitcast i32 %606 to float
  %608 = fmul fast float %598, %600
  %609 = fmul fast float %608, %607
  br label %610

; <label>:610                                     ; preds = %542, %453
  %611 = phi float [ %609, %542 ], [ %540, %453 ]
  %612 = fmul fast float %611, %432
  br label %613

; <label>:613                                     ; preds = %610, %417
  %614 = phi float [ %612, %610 ], [ 0.000000e+00, %417 ]
  %615 = icmp eq i32 %421, 0
  br i1 %615, label %647, label %616, !dx.controlflow.hints !41

; <label>:616                                     ; preds = %613
  %617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %618 = extractvalue %dx.types.CBufRet.f32 %617, 1
  %619 = fsub fast float %432, %618
  %620 = extractvalue %dx.types.CBufRet.f32 %617, 3
  %621 = fmul fast float %619, %620
  %622 = call float @dx.op.unary.f32(i32 7, float %621)  ; Saturate(value)
  %623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %624 = extractvalue %dx.types.CBufRet.f32 %623, 3
  %625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %626 = extractvalue %dx.types.CBufRet.f32 %625, 2
  %627 = fsub fast float %626, %419
  %628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %629 = extractvalue %dx.types.CBufRet.f32 %628, 3
  %630 = fmul fast float %627, %629
  %631 = call float @dx.op.unary.f32(i32 7, float %630)  ; Saturate(value)
  %632 = fmul fast float %631, %624
  %633 = extractvalue %dx.types.CBufRet.f32 %628, 0
  %634 = fsub fast float %177, %633
  %635 = extractvalue %dx.types.CBufRet.f32 %628, 1
  %636 = fmul fast float %634, %635
  %637 = call float @dx.op.unary.f32(i32 7, float %636)  ; Saturate(value)
  %638 = fsub fast float 1.000000e+00, %622
  %639 = fmul fast float %637, %638
  %640 = fadd fast float %639, %622
  %641 = extractvalue %dx.types.CBufRet.f32 %617, 0
  %642 = fsub fast float %632, %641
  %643 = fmul fast float %642, %640
  %644 = fadd fast float %643, %641
  %645 = fmul fast float %644, %432
  %646 = fadd fast float %645, %614
  br label %647

; <label>:647                                     ; preds = %616, %613
  %648 = phi float [ %646, %616 ], [ %614, %613 ]
  %649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %650 = extractvalue %dx.types.CBufRet.f32 %649, 1
  %651 = fcmp fast ogt float %648, %650
  br i1 %651, label %652, label %664, !dx.controlflow.hints !42

; <label>:652                                     ; preds = %647
  %653 = fmul fast float %648, 0xBFF7154760000000
  %654 = call float @dx.op.unary.f32(i32 21, float %653)  ; Exp(value)
  %655 = call float @dx.op.unary.f32(i32 7, float %654)  ; Saturate(value)
  %656 = icmp eq i32 %178, 0
  br i1 %656, label %657, label %658, !dx.controlflow.hints !43

; <label>:657                                     ; preds = %652
  br label %658

; <label>:658                                     ; preds = %657, %652
  %659 = phi i32 [ %178, %652 ], [ 1, %657 ]
  %660 = phi float [ %179, %652 ], [ %177, %657 ]
  %661 = fadd fast float %432, %180
  %662 = fadd fast float %648, %181
  %663 = fmul fast float %655, %173
  br label %664

; <label>:664                                     ; preds = %658, %647
  %665 = phi float [ %663, %658 ], [ %173, %647 ]
  %666 = phi i32 [ %659, %658 ], [ %178, %647 ]
  %667 = phi float [ %660, %658 ], [ %179, %647 ]
  %668 = phi float [ %661, %658 ], [ %180, %647 ]
  %669 = phi float [ %662, %658 ], [ %181, %647 ]
  %670 = fadd fast float %432, %177
  %671 = fmul fast float %432, %53
  %672 = fmul fast float %432, %54
  %673 = fmul fast float %432, %55
  %674 = fadd fast float %671, %174
  %675 = fadd fast float %672, %175
  %676 = fadd fast float %673, %176
  %677 = fcmp fast olt float %670, %150
  %678 = extractvalue %dx.types.CBufRet.f32 %649, 2
  %679 = fcmp fast olt float %678, %665
  %680 = and i1 %677, %679
  br i1 %680, label %170, label %681

; <label>:681                                     ; preds = %664
  br label %682

; <label>:682                                     ; preds = %681, %146
  %683 = phi float [ 0.000000e+00, %146 ], [ %667, %681 ]
  %684 = phi float [ 0.000000e+00, %146 ], [ %668, %681 ]
  %685 = phi float [ 0.000000e+00, %146 ], [ %669, %681 ]
  %686 = extractvalue %dx.types.CBufRet.f32 %47, 3
  %687 = fmul fast float %686, %683
  %688 = fdiv fast float 1.000000e+00, %684
  %689 = fmul fast float %688, %685
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %14, i32 %15, i32 undef, float %687, float %689, float %685, float %687, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!23}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !13, !15, !18}
!5 = !{!6, !8, !9, !10, !11, !12}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 27, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture3D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 4, i32 0, !7}
!9 = !{i32 2, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 4, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 9, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!13 = !{!14}
!14 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 7, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!15 = !{!16, !17}
!16 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!17 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!18 = !{!19, !20, !21, !22}
!19 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!20 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!21 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!22 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!23 = !{void ()* @cs_fog_raymarching_clouds_brfog, !"cs_fog_raymarching_clouds_brfog", null, !4, !24}
!24 = !{i32 0, i64 256, i32 4, !25}
!25 = !{i32 8, i32 8, i32 1}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 1}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 1}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 1}

