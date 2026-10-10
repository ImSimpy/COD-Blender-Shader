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
; shader hash: b9f51395b9cda743346046e7516e0d0a
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
;                                   texture     f32          3d      T0             t1     1
;                                   texture     f32          3d      T1             t2     1
;                                   texture     f32          2d      T2             t8     1
;                                   texture     f32          2d      T3             t9     1
;                                   texture     f32          2d      T4            t13     1
;                                       UAV     f32          2d      U0             u7     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
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

define void @cs_fog_raymarching_clouds() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %14 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %15 = uitofp i32 %13 to float
  %16 = uitofp i32 %14 to float
  %17 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %18 = extractvalue %dx.types.CBufRet.f32 %17, 2
  %19 = fmul fast float %18, 0x3FE3C6EF40000000
  %20 = frem fast float %15, 2.560000e+02
  %21 = frem fast float %16, 2.560000e+02
  %22 = fptoui float %20 to i32
  %23 = fptoui float %21 to i32
  %24 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %22, i32 %23, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %25 = extractvalue %dx.types.ResRet.f32 %24, 1
  %26 = fadd fast float %25, %19
  %27 = call float @dx.op.unary.f32(i32 22, float %26)  ; Frc(value)
  %28 = fadd fast float %15, 5.000000e-01
  %29 = fadd fast float %16, 5.000000e-01
  %30 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %31 = extractvalue %dx.types.CBufRet.f32 %30, 2
  %32 = extractvalue %dx.types.CBufRet.f32 %30, 3
  %33 = fmul fast float %31, %28
  %34 = fmul fast float %32, %29
  %35 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %36 = extractvalue %dx.types.CBufRet.f32 %35, 0
  %37 = extractvalue %dx.types.CBufRet.f32 %35, 1
  %38 = extractvalue %dx.types.CBufRet.f32 %35, 2
  %39 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %40 = extractvalue %dx.types.CBufRet.f32 %39, 0
  %41 = extractvalue %dx.types.CBufRet.f32 %39, 1
  %42 = fmul fast float %33, %40
  %43 = fmul fast float %34, %41
  %44 = fadd fast float %42, %36
  %45 = fadd fast float %43, %37
  %46 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %47 = extractvalue %dx.types.CBufRet.f32 %46, 2
  %48 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %49 = extractvalue %dx.types.CBufRet.f32 %48, 0
  %50 = extractvalue %dx.types.CBufRet.f32 %48, 1
  %51 = extractvalue %dx.types.CBufRet.f32 %48, 2
  %52 = fsub fast float -0.000000e+00, %49
  %53 = fsub fast float -0.000000e+00, %50
  %54 = fsub fast float -0.000000e+00, %51
  %55 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %56 = extractvalue %dx.types.CBufRet.i32 %55, 3
  %57 = icmp eq i32 %56, 0
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 2
  %60 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.f32 %60, 2
  %62 = fsub fast float %59, %38
  %63 = fadd fast float %62, %61
  br i1 %57, label %75, label %64, !dx.controlflow.hints !25

; <label>:64                                      ; preds = %0
  %65 = fsub fast float -0.000000e+00, %45
  %66 = fsub fast float -0.000000e+00, %44
  %67 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %66, float %65, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %68 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %52, float %53, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %69 = fdiv fast float 1.000000e+00, %68
  %70 = fmul fast float %69, %67
  %71 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %66, float %65, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %72 = fmul fast float %69, %71
  %73 = call float @dx.op.binary.f32(i32 36, float %70, float %72)  ; FMin(a,b)
  %74 = call float @dx.op.binary.f32(i32 35, float %70, float %72)  ; FMax(a,b)
  br label %108

; <label>:75                                      ; preds = %0
  %76 = fdiv fast float 1.000000e+00, %52
  %77 = fdiv fast float 1.000000e+00, %53
  %78 = fdiv fast float 1.000000e+00, %54
  %79 = extractvalue %dx.types.CBufRet.f32 %58, 0
  %80 = extractvalue %dx.types.CBufRet.f32 %58, 1
  %81 = extractvalue %dx.types.CBufRet.f32 %60, 0
  %82 = extractvalue %dx.types.CBufRet.f32 %60, 1
  %83 = fsub fast float %79, %44
  %84 = fmul fast float %83, %76
  %85 = fadd fast float %83, %81
  %86 = fmul fast float %85, %76
  %87 = call float @dx.op.binary.f32(i32 36, float %84, float %86)  ; FMin(a,b)
  %88 = call float @dx.op.binary.f32(i32 35, float %84, float %86)  ; FMax(a,b)
  %89 = fsub fast float %80, %45
  %90 = fmul fast float %89, %77
  %91 = fadd fast float %89, %82
  %92 = fmul fast float %91, %77
  %93 = call float @dx.op.binary.f32(i32 36, float %90, float %92)  ; FMin(a,b)
  %94 = call float @dx.op.binary.f32(i32 35, float %87, float %93)  ; FMax(a,b)
  %95 = call float @dx.op.binary.f32(i32 35, float %90, float %92)  ; FMax(a,b)
  %96 = call float @dx.op.binary.f32(i32 36, float %88, float %95)  ; FMin(a,b)
  %97 = fmul fast float %62, %78
  %98 = fmul fast float %63, %78
  %99 = call float @dx.op.binary.f32(i32 36, float %97, float %98)  ; FMin(a,b)
  %100 = call float @dx.op.binary.f32(i32 35, float %94, float %99)  ; FMax(a,b)
  %101 = call float @dx.op.binary.f32(i32 35, float %97, float %98)  ; FMax(a,b)
  %102 = call float @dx.op.binary.f32(i32 36, float %96, float %101)  ; FMin(a,b)
  %103 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %100)  ; FMax(a,b)
  %104 = fcmp fast ult float %102, %103
  br i1 %104, label %108, label %105, !dx.controlflow.hints !26

; <label>:105                                     ; preds = %75
  %106 = call float @dx.op.binary.f32(i32 36, float %100, float %102)  ; FMin(a,b)
  %107 = call float @dx.op.binary.f32(i32 35, float %100, float %102)  ; FMax(a,b)
  br label %108

; <label>:108                                     ; preds = %105, %75, %64
  %109 = phi float [ %73, %64 ], [ %106, %105 ], [ 0.000000e+00, %75 ]
  %110 = phi float [ %74, %64 ], [ %107, %105 ], [ 0.000000e+00, %75 ]
  %111 = fcmp fast oeq float %110, 0.000000e+00
  br i1 %111, label %115, label %112, !dx.controlflow.hints !27

; <label>:112                                     ; preds = %108
  %113 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %109)  ; FMin(a,b)
  %114 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %110)  ; FMax(a,b)
  br label %115

; <label>:115                                     ; preds = %112, %108
  %116 = phi float [ %114, %112 ], [ -1.000000e+00, %108 ]
  %117 = phi i32 [ 1, %112 ], [ 0, %108 ]
  %118 = phi float [ %113, %112 ], [ 0x47EFFFFFE0000000, %108 ]
  %119 = call float @dx.op.binary.f32(i32 36, float %47, float %116)  ; FMin(a,b)
  %120 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %118)  ; FMax(a,b)
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 1
  %123 = fmul fast float %27, 2.000000e+00
  %124 = fadd fast float %123, -1.000000e+00
  %125 = fmul fast float %122, %124
  %126 = fadd fast float %125, %120
  %127 = fcmp fast olt float %126, %119
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.f32 %128, 2
  %130 = fcmp fast olt float %129, 1.000000e+00
  %131 = and i1 %130, %127
  br i1 %131, label %132, label %437

; <label>:132                                     ; preds = %115
  %133 = fmul fast float %126, %54
  %134 = fadd fast float %133, %38
  %135 = fmul fast float %126, %53
  %136 = fadd fast float %135, %45
  %137 = fmul fast float %126, %52
  %138 = fadd fast float %137, %44
  br label %139

; <label>:139                                     ; preds = %419, %132
  %140 = phi float [ %420, %419 ], [ 1.000000e+00, %132 ]
  %141 = phi float [ %429, %419 ], [ %138, %132 ]
  %142 = phi float [ %430, %419 ], [ %136, %132 ]
  %143 = phi float [ %431, %419 ], [ %134, %132 ]
  %144 = phi float [ %425, %419 ], [ %126, %132 ]
  %145 = phi i32 [ %421, %419 ], [ 0, %132 ]
  %146 = phi float [ %422, %419 ], [ 0.000000e+00, %132 ]
  %147 = phi float [ %423, %419 ], [ 0.000000e+00, %132 ]
  %148 = phi float [ %424, %419 ], [ 0.000000e+00, %132 ]
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.f32 %149, 1
  %151 = icmp eq i32 %117, 0
  br i1 %151, label %208, label %152, !dx.controlflow.hints !28

; <label>:152                                     ; preds = %139
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.f32 %153, 0
  %155 = extractvalue %dx.types.CBufRet.f32 %153, 1
  %156 = extractvalue %dx.types.CBufRet.f32 %153, 2
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.f32 %157, 0
  %159 = extractvalue %dx.types.CBufRet.f32 %157, 1
  %160 = extractvalue %dx.types.CBufRet.f32 %157, 2
  %161 = fsub fast float %141, %158
  %162 = fsub fast float %142, %159
  %163 = fsub fast float %143, %160
  %164 = fmul fast float %161, %154
  %165 = fmul fast float %162, %155
  %166 = fmul fast float %163, %156
  %167 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.i32 %167, 3
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %173, label %170, !dx.controlflow.hints !29

; <label>:170                                     ; preds = %152
  %171 = call float @dx.op.unary.f32(i32 22, float %164)  ; Frc(value)
  %172 = call float @dx.op.unary.f32(i32 22, float %165)  ; Frc(value)
  br label %173

; <label>:173                                     ; preds = %170, %152
  %174 = phi float [ %171, %170 ], [ %164, %152 ]
  %175 = phi float [ %172, %170 ], [ %165, %152 ]
  %176 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %8, float %174, float %175, float %166, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %177 = extractvalue %dx.types.ResRet.f32 %176, 0
  %178 = fmul fast float %177, 2.000000e+00
  %179 = fadd fast float %178, -1.000000e+00
  %180 = extractvalue %dx.types.CBufRet.f32 %153, 3
  %181 = fmul fast float %179, %180
  %182 = fcmp fast olt float %181, 0.000000e+00
  %183 = fcmp fast oge float %166, 0.000000e+00
  %184 = fcmp fast ole float %166, 1.000000e+00
  br i1 %169, label %187, label %185, !dx.controlflow.hints !30

; <label>:185                                     ; preds = %173
  %186 = and i1 %183, %184
  br label %197

; <label>:187                                     ; preds = %173
  %188 = fcmp fast oge float %164, 0.000000e+00
  %189 = fcmp fast oge float %165, 0.000000e+00
  %190 = and i1 %188, %189
  %191 = and i1 %183, %190
  %192 = fcmp fast ole float %164, 1.000000e+00
  %193 = fcmp fast ole float %165, 1.000000e+00
  %194 = and i1 %192, %193
  %195 = and i1 %184, %194
  %196 = and i1 %191, %195
  br label %197

; <label>:197                                     ; preds = %187, %185
  %198 = phi i1 [ %186, %185 ], [ %196, %187 ]
  %199 = and i1 %182, %198
  %200 = call float @dx.op.unary.f32(i32 6, float %181)  ; FAbs(value)
  %201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %202 = extractvalue %dx.types.CBufRet.f32 %201, 1
  %203 = extractvalue %dx.types.CBufRet.f32 %201, 0
  %204 = call float @dx.op.binary.f32(i32 35, float %200, float %203)  ; FMax(a,b)
  %205 = select i1 %199, float %202, float %204
  %206 = zext i1 %199 to i32
  %207 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %205)  ; FMin(a,b)
  br label %208

; <label>:208                                     ; preds = %197, %139
  %209 = phi float [ %207, %197 ], [ 0x47EFFFFFE0000000, %139 ]
  %210 = phi i32 [ %206, %197 ], [ 0, %139 ]
  %211 = extractvalue %dx.types.CBufRet.f32 %149, 2
  %212 = fmul fast float %211, %144
  %213 = call float @dx.op.unary.f32(i32 23, float %212)  ; Log(value)
  %214 = fmul fast float %213, 0x3FE62E4300000000
  %215 = call float @dx.op.binary.f32(i32 35, float %214, float 1.000000e+00)  ; FMax(a,b)
  %216 = fmul fast float %215, 0x47EFFFFFE0000000
  %217 = call float @dx.op.binary.f32(i32 36, float %216, float %209)  ; FMin(a,b)
  %218 = call float @dx.op.binary.f32(i32 35, float %217, float %150)  ; FMax(a,b)
  %219 = fadd fast float %119, 0x3F1A36E2E0000000
  %220 = fsub fast float %219, %144
  %221 = call float @dx.op.binary.f32(i32 36, float %220, float %218)  ; FMin(a,b)
  %222 = icmp eq i32 %210, 0
  br i1 %222, label %402, label %223, !dx.controlflow.hints !31

; <label>:223                                     ; preds = %208
  %224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = extractvalue %dx.types.CBufRet.f32 %224, 3
  %226 = fmul fast float %225, %144
  %227 = fcmp fast oeq float %226, 0.000000e+00
  br i1 %227, label %242, label %228, !dx.controlflow.hints !32

; <label>:228                                     ; preds = %223
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.f32 %229, 3
  %231 = fmul fast float %230, %226
  %232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.f32 %232, 0
  %234 = extractvalue %dx.types.CBufRet.f32 %232, 1
  %235 = extractvalue %dx.types.CBufRet.f32 %232, 2
  %236 = fmul fast float %233, %231
  %237 = fmul fast float %234, %231
  %238 = fmul fast float %235, %231
  %239 = call float @dx.op.unary.f32(i32 23, float %236)  ; Log(value)
  %240 = call float @dx.op.unary.f32(i32 23, float %237)  ; Log(value)
  %241 = call float @dx.op.unary.f32(i32 23, float %238)  ; Log(value)
  br label %242

; <label>:242                                     ; preds = %228, %223
  %243 = phi float [ %239, %228 ], [ 0.000000e+00, %223 ]
  %244 = phi float [ %240, %228 ], [ 0.000000e+00, %223 ]
  %245 = phi float [ %241, %228 ], [ 0.000000e+00, %223 ]
  %246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %247 = extractvalue %dx.types.CBufRet.f32 %246, 0
  %248 = extractvalue %dx.types.CBufRet.f32 %246, 1
  %249 = extractvalue %dx.types.CBufRet.f32 %246, 2
  %250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %251 = extractvalue %dx.types.CBufRet.f32 %250, 0
  %252 = extractvalue %dx.types.CBufRet.f32 %250, 1
  %253 = extractvalue %dx.types.CBufRet.f32 %250, 2
  %254 = fsub fast float %141, %251
  %255 = fsub fast float %142, %252
  %256 = fsub fast float %143, %253
  %257 = fmul fast float %254, %247
  %258 = fmul fast float %255, %248
  %259 = fmul fast float %256, %249
  %260 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %261 = extractvalue %dx.types.CBufRet.i32 %260, 0
  %262 = extractvalue %dx.types.CBufRet.i32 %260, 1
  %263 = uitofp i32 %261 to float
  %264 = uitofp i32 %262 to float
  %265 = fmul fast float %257, %263
  %266 = fmul fast float %258, %264
  %267 = fadd fast float %265, 5.000000e-01
  %268 = fadd fast float %266, 5.000000e-01
  %269 = call float @dx.op.unary.f32(i32 22, float %267)  ; Frc(value)
  %270 = call float @dx.op.unary.f32(i32 22, float %268)  ; Frc(value)
  %271 = call float @dx.op.unary.f32(i32 27, float %267)  ; Round_ni(value)
  %272 = call float @dx.op.unary.f32(i32 27, float %268)  ; Round_ni(value)
  %273 = fadd fast float %271, 1.000000e+00
  %274 = fadd fast float %272, 1.000000e+00
  %275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %276 = extractvalue %dx.types.CBufRet.f32 %275, 0
  %277 = extractvalue %dx.types.CBufRet.f32 %275, 1
  %278 = fmul fast float %276, %273
  %279 = fmul fast float %277, %274
  %280 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %9, float %278, float %279, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %281 = extractvalue %dx.types.ResRet.f32 %280, 0
  %282 = extractvalue %dx.types.ResRet.f32 %280, 1
  %283 = extractvalue %dx.types.ResRet.f32 %280, 2
  %284 = extractvalue %dx.types.ResRet.f32 %280, 3
  %285 = extractvalue %dx.types.CBufRet.i32 %260, 2
  %286 = extractvalue %dx.types.CBufRet.f32 %275, 2
  %287 = uitofp i32 %285 to float
  %288 = fadd fast float %287, -1.000000e+00
  %289 = fmul fast float %288, %281
  %290 = fmul fast float %288, %282
  %291 = fmul fast float %288, %283
  %292 = fmul fast float %288, %284
  %293 = fadd fast float %289, 5.000000e-01
  %294 = fadd fast float %290, 5.000000e-01
  %295 = fadd fast float %291, 5.000000e-01
  %296 = fadd fast float %292, 5.000000e-01
  %297 = fptoui float %293 to i32
  %298 = fptoui float %294 to i32
  %299 = fptoui float %295 to i32
  %300 = fptoui float %296 to i32
  %301 = uitofp i32 %297 to float
  %302 = uitofp i32 %298 to float
  %303 = uitofp i32 %299 to float
  %304 = uitofp i32 %300 to float
  %305 = fadd fast float %301, 5.000000e-01
  %306 = fadd fast float %302, 5.000000e-01
  %307 = fadd fast float %303, 5.000000e-01
  %308 = fadd fast float %304, 5.000000e-01
  %309 = fmul fast float %305, %286
  %310 = fmul fast float %306, %286
  %311 = fmul fast float %307, %286
  %312 = fmul fast float %308, %286
  %313 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %10, float %309, float %259, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %314 = extractvalue %dx.types.ResRet.f32 %313, 0
  %315 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %10, float %310, float %259, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %316 = extractvalue %dx.types.ResRet.f32 %315, 0
  %317 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %10, float %311, float %259, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %318 = extractvalue %dx.types.ResRet.f32 %317, 0
  %319 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %10, float %312, float %259, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %320 = extractvalue %dx.types.ResRet.f32 %319, 0
  %321 = fsub fast float %318, %320
  %322 = fmul fast float %321, %269
  %323 = fadd fast float %322, %320
  %324 = fsub fast float %316, %314
  %325 = fmul fast float %324, %269
  %326 = fadd fast float %325, %314
  %327 = fsub fast float %326, %323
  %328 = fmul fast float %327, %270
  %329 = fadd fast float %328, %323
  %330 = fcmp fast ogt float %329, 0.000000e+00
  br i1 %330, label %331, label %399, !dx.controlflow.hints !33

; <label>:331                                     ; preds = %242
  %332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %333 = extractvalue %dx.types.CBufRet.f32 %332, 0
  %334 = extractvalue %dx.types.CBufRet.f32 %332, 1
  %335 = extractvalue %dx.types.CBufRet.f32 %332, 2
  %336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %337 = extractvalue %dx.types.CBufRet.f32 %336, 0
  %338 = extractvalue %dx.types.CBufRet.f32 %336, 1
  %339 = extractvalue %dx.types.CBufRet.f32 %336, 2
  %340 = fmul fast float %255, %247
  %341 = fmul fast float %256, %247
  %342 = fadd fast float %257, %337
  %343 = fadd fast float %340, %338
  %344 = fadd fast float %341, %339
  %345 = fmul fast float %342, %333
  %346 = fmul fast float %343, %333
  %347 = fmul fast float %344, %333
  %348 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %7, float %345, float %346, float %347, float undef, i32 0, i32 0, i32 0, float %243)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %349 = extractvalue %dx.types.ResRet.f32 %348, 0
  %350 = fmul fast float %342, %334
  %351 = fmul fast float %343, %334
  %352 = fmul fast float %344, %334
  %353 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %7, float %350, float %351, float %352, float undef, i32 0, i32 0, i32 0, float %244)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %354 = extractvalue %dx.types.ResRet.f32 %353, 1
  %355 = fmul fast float %342, %335
  %356 = fmul fast float %343, %335
  %357 = fmul fast float %344, %335
  %358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %7, float %355, float %356, float %357, float undef, i32 0, i32 0, i32 0, float %245)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %359 = extractvalue %dx.types.ResRet.f32 %358, 2
  %360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %361 = extractvalue %dx.types.CBufRet.f32 %360, 1
  %362 = fmul fast float %354, %349
  %363 = fmul fast float %362, %359
  %364 = call float @dx.op.unary.f32(i32 23, float %363)  ; Log(value)
  %365 = fmul fast float %364, %361
  %366 = call float @dx.op.unary.f32(i32 21, float %365)  ; Exp(value)
  %367 = extractvalue %dx.types.CBufRet.f32 %360, 2
  %368 = fmul fast float %329, %329
  %369 = fmul fast float %368, %366
  %370 = fmul fast float %369, %367
  %371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %372 = extractvalue %dx.types.CBufRet.f32 %371, 3
  %373 = fmul fast float %372, %370
  %374 = bitcast float %373 to i32
  %375 = sitofp i32 %374 to float
  %376 = fptosi float %375 to i32
  %377 = bitcast i32 %376 to float
  %378 = fsub fast float 1.000000e+00, %370
  %379 = bitcast float %378 to i32
  %380 = sitofp i32 %379 to float
  %381 = fptosi float %380 to i32
  %382 = bitcast i32 %381 to float
  %383 = fadd fast float %377, %382
  %384 = bitcast float %383 to i32
  %385 = sub nsw i32 2129859010, %384
  %386 = bitcast i32 %385 to float
  %387 = fmul fast float %386, %377
  %388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %389 = extractvalue %dx.types.CBufRet.f32 %388, 3
  %390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %391 = extractvalue %dx.types.CBufRet.f32 %390, 0
  %392 = fmul fast float %387, %391
  %393 = fadd fast float %392, 1.000000e+00
  %394 = bitcast float %393 to i32
  %395 = sub nsw i32 2129859010, %394
  %396 = bitcast i32 %395 to float
  %397 = fmul fast float %387, %389
  %398 = fmul fast float %397, %396
  br label %399

; <label>:399                                     ; preds = %331, %242
  %400 = phi float [ %398, %331 ], [ %329, %242 ]
  %401 = fmul fast float %400, %221
  br label %402

; <label>:402                                     ; preds = %399, %208
  %403 = phi float [ %401, %399 ], [ 0.000000e+00, %208 ]
  %404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %405 = extractvalue %dx.types.CBufRet.f32 %404, 1
  %406 = fcmp fast ogt float %403, %405
  br i1 %406, label %407, label %419, !dx.controlflow.hints !34

; <label>:407                                     ; preds = %402
  %408 = fmul fast float %403, 0xBFF7154760000000
  %409 = call float @dx.op.unary.f32(i32 21, float %408)  ; Exp(value)
  %410 = call float @dx.op.unary.f32(i32 7, float %409)  ; Saturate(value)
  %411 = icmp eq i32 %145, 0
  br i1 %411, label %412, label %413, !dx.controlflow.hints !35

; <label>:412                                     ; preds = %407
  br label %413

; <label>:413                                     ; preds = %412, %407
  %414 = phi i32 [ %145, %407 ], [ 1, %412 ]
  %415 = phi float [ %146, %407 ], [ %144, %412 ]
  %416 = fadd fast float %221, %147
  %417 = fadd fast float %403, %148
  %418 = fmul fast float %410, %140
  br label %419

; <label>:419                                     ; preds = %413, %402
  %420 = phi float [ %418, %413 ], [ %140, %402 ]
  %421 = phi i32 [ %414, %413 ], [ %145, %402 ]
  %422 = phi float [ %415, %413 ], [ %146, %402 ]
  %423 = phi float [ %416, %413 ], [ %147, %402 ]
  %424 = phi float [ %417, %413 ], [ %148, %402 ]
  %425 = fadd fast float %221, %144
  %426 = fmul fast float %221, %52
  %427 = fmul fast float %221, %53
  %428 = fmul fast float %221, %54
  %429 = fadd fast float %426, %141
  %430 = fadd fast float %427, %142
  %431 = fadd fast float %428, %143
  %432 = fcmp fast olt float %425, %119
  %433 = extractvalue %dx.types.CBufRet.f32 %404, 2
  %434 = fcmp fast olt float %433, %420
  %435 = and i1 %432, %434
  br i1 %435, label %139, label %436

; <label>:436                                     ; preds = %419
  br label %437

; <label>:437                                     ; preds = %436, %115
  %438 = phi float [ 0.000000e+00, %115 ], [ %422, %436 ]
  %439 = phi float [ 0.000000e+00, %115 ], [ %423, %436 ]
  %440 = phi float [ 0.000000e+00, %115 ], [ %424, %436 ]
  %441 = extractvalue %dx.types.CBufRet.f32 %46, 3
  %442 = fmul fast float %441, %438
  %443 = fdiv fast float 1.000000e+00, %439
  %444 = fmul fast float %443, %440
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %13, i32 %14, i32 undef, float %442, float %444, float %440, float %442, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!dx.entryPoints = !{!22}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !12, !14, !17}
!5 = !{!6, !8, !9, !10, !11}
!6 = !{i32 0, %"class.Texture3D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 4, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 9, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!12 = !{!13}
!13 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 7, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!14 = !{!15, !16}
!15 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!16 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!17 = !{!18, !19, !20, !21}
!18 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!19 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!20 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!21 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!22 = !{void ()* @cs_fog_raymarching_clouds, !"cs_fog_raymarching_clouds", null, !4, !23}
!23 = !{i32 0, i64 256, i32 4, !24}
!24 = !{i32 8, i32 8, i32 1}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 1}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 1}

