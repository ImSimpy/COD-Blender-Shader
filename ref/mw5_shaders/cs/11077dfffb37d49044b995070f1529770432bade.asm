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
; shader hash: 03462a717db293fd642361d78d755826
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
;                                   texture     f32          2d      T0            t16     1
;                                   texture     f32          2d      T1            t13     1
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

define void @cs_fog_raymarching_heightmap() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %9 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %10 = uitofp i32 %8 to float
  %11 = uitofp i32 %9 to float
  %12 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %13 = extractvalue %dx.types.CBufRet.f32 %12, 2
  %14 = fmul fast float %13, 0x3FE3C6EF40000000
  %15 = frem fast float %10, 2.560000e+02
  %16 = frem fast float %11, 2.560000e+02
  %17 = fptoui float %15 to i32
  %18 = fptoui float %16 to i32
  %19 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %17, i32 %18, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %20 = extractvalue %dx.types.ResRet.f32 %19, 0
  %21 = extractvalue %dx.types.ResRet.f32 %19, 1
  %22 = extractvalue %dx.types.ResRet.f32 %19, 2
  %23 = fadd fast float %20, %14
  %24 = fadd fast float %21, %14
  %25 = fadd fast float %22, %14
  %26 = call float @dx.op.unary.f32(i32 22, float %23)  ; Frc(value)
  %27 = call float @dx.op.unary.f32(i32 22, float %24)  ; Frc(value)
  %28 = call float @dx.op.unary.f32(i32 22, float %25)  ; Frc(value)
  %29 = fadd fast float %10, 5.000000e-01
  %30 = fadd fast float %11, 5.000000e-01
  %31 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %32 = extractvalue %dx.types.CBufRet.f32 %31, 2
  %33 = extractvalue %dx.types.CBufRet.f32 %31, 3
  %34 = fmul fast float %32, %29
  %35 = fmul fast float %33, %30
  %36 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %37 = extractvalue %dx.types.CBufRet.f32 %36, 0
  %38 = extractvalue %dx.types.CBufRet.f32 %36, 1
  %39 = extractvalue %dx.types.CBufRet.f32 %36, 2
  %40 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %41 = extractvalue %dx.types.CBufRet.f32 %40, 0
  %42 = extractvalue %dx.types.CBufRet.f32 %40, 1
  %43 = fmul fast float %34, %41
  %44 = fmul fast float %35, %42
  %45 = fadd fast float %43, %37
  %46 = fadd fast float %44, %38
  %47 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %48 = extractvalue %dx.types.CBufRet.f32 %47, 2
  %49 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.f32 %49, 0
  %51 = extractvalue %dx.types.CBufRet.f32 %49, 1
  %52 = extractvalue %dx.types.CBufRet.f32 %49, 2
  %53 = fsub fast float -0.000000e+00, %50
  %54 = fsub fast float -0.000000e+00, %51
  %55 = fsub fast float -0.000000e+00, %52
  %56 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.i32 %56, 3
  %58 = icmp eq i32 %57, 0
  %59 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.f32 %59, 2
  %61 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %62 = extractvalue %dx.types.CBufRet.f32 %61, 2
  %63 = fsub fast float %60, %39
  %64 = fadd fast float %63, %62
  %65 = fsub fast float 0xC7EFFFFFE0000000, %39
  br i1 %58, label %77, label %66, !dx.controlflow.hints !20

; <label>:66                                      ; preds = %0
  %67 = fsub fast float -0.000000e+00, %46
  %68 = fsub fast float -0.000000e+00, %45
  %69 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %68, float %67, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %70 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %71 = fdiv fast float 1.000000e+00, %70
  %72 = fmul fast float %71, %69
  %73 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %68, float %67, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %74 = fmul fast float %71, %73
  %75 = call float @dx.op.binary.f32(i32 36, float %72, float %74)  ; FMin(a,b)
  %76 = call float @dx.op.binary.f32(i32 35, float %72, float %74)  ; FMax(a,b)
  br label %110

; <label>:77                                      ; preds = %0
  %78 = extractvalue %dx.types.CBufRet.f32 %59, 0
  %79 = extractvalue %dx.types.CBufRet.f32 %59, 1
  %80 = extractvalue %dx.types.CBufRet.f32 %61, 0
  %81 = extractvalue %dx.types.CBufRet.f32 %61, 1
  %82 = fdiv fast float 1.000000e+00, %53
  %83 = fdiv fast float 1.000000e+00, %54
  %84 = fdiv fast float 1.000000e+00, %55
  %85 = fsub fast float %78, %45
  %86 = fmul fast float %82, %85
  %87 = fadd fast float %85, %80
  %88 = fmul fast float %87, %82
  %89 = call float @dx.op.binary.f32(i32 36, float %86, float %88)  ; FMin(a,b)
  %90 = call float @dx.op.binary.f32(i32 35, float %86, float %88)  ; FMax(a,b)
  %91 = fsub fast float %79, %46
  %92 = fmul fast float %83, %91
  %93 = fadd fast float %91, %81
  %94 = fmul fast float %93, %83
  %95 = call float @dx.op.binary.f32(i32 36, float %92, float %94)  ; FMin(a,b)
  %96 = call float @dx.op.binary.f32(i32 35, float %89, float %95)  ; FMax(a,b)
  %97 = call float @dx.op.binary.f32(i32 35, float %92, float %94)  ; FMax(a,b)
  %98 = call float @dx.op.binary.f32(i32 36, float %90, float %97)  ; FMin(a,b)
  %99 = fmul fast float %84, %65
  %100 = fmul fast float %84, %64
  %101 = call float @dx.op.binary.f32(i32 36, float %99, float %100)  ; FMin(a,b)
  %102 = call float @dx.op.binary.f32(i32 35, float %96, float %101)  ; FMax(a,b)
  %103 = call float @dx.op.binary.f32(i32 35, float %99, float %100)  ; FMax(a,b)
  %104 = call float @dx.op.binary.f32(i32 36, float %98, float %103)  ; FMin(a,b)
  %105 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %102)  ; FMax(a,b)
  %106 = fcmp fast ult float %104, %105
  br i1 %106, label %110, label %107, !dx.controlflow.hints !21

; <label>:107                                     ; preds = %77
  %108 = call float @dx.op.binary.f32(i32 36, float %102, float %104)  ; FMin(a,b)
  %109 = call float @dx.op.binary.f32(i32 35, float %102, float %104)  ; FMax(a,b)
  br label %110

; <label>:110                                     ; preds = %107, %77, %66
  %111 = phi float [ %75, %66 ], [ %108, %107 ], [ 0.000000e+00, %77 ]
  %112 = phi float [ %76, %66 ], [ %109, %107 ], [ 0.000000e+00, %77 ]
  %113 = fcmp fast oeq float %112, 0.000000e+00
  %114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.f32 %114, 1
  %116 = fcmp fast olt float %112, %115
  %117 = or i1 %113, %116
  br i1 %117, label %122, label %118, !dx.controlflow.hints !22

; <label>:118                                     ; preds = %110
  %119 = call float @dx.op.binary.f32(i32 35, float %115, float %111)  ; FMax(a,b)
  %120 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %119)  ; FMin(a,b)
  %121 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %112)  ; FMax(a,b)
  br label %122

; <label>:122                                     ; preds = %118, %110
  %123 = phi float [ %121, %118 ], [ -1.000000e+00, %110 ]
  %124 = phi i32 [ 1, %118 ], [ 0, %110 ]
  %125 = phi float [ %120, %118 ], [ 0x47EFFFFFE0000000, %110 ]
  %126 = call float @dx.op.binary.f32(i32 36, float %48, float %123)  ; FMin(a,b)
  %127 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %125)  ; FMax(a,b)
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.f32 %128, 1
  %130 = fmul fast float %27, 2.000000e+00
  %131 = fadd fast float %130, -1.000000e+00
  %132 = fmul fast float %129, %131
  %133 = fadd fast float %132, %127
  %134 = fcmp fast olt float %133, %126
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 2
  %137 = fcmp fast olt float %136, 1.000000e+00
  %138 = and i1 %134, %137
  br i1 %138, label %139, label %482

; <label>:139                                     ; preds = %122
  %140 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.i32 %140, 1
  %142 = add i32 %141, -1
  %143 = fmul fast float %133, %55
  %144 = fadd fast float %143, %39
  %145 = fmul fast float %133, %54
  %146 = fadd fast float %145, %46
  %147 = fmul fast float %133, %53
  %148 = fadd fast float %147, %45
  br label %149

; <label>:149                                     ; preds = %464, %139
  %150 = phi float [ %465, %464 ], [ 1.000000e+00, %139 ]
  %151 = phi float [ %474, %464 ], [ %148, %139 ]
  %152 = phi float [ %475, %464 ], [ %146, %139 ]
  %153 = phi float [ %476, %464 ], [ %144, %139 ]
  %154 = phi float [ %470, %464 ], [ %133, %139 ]
  %155 = phi i32 [ %337, %464 ], [ %142, %139 ]
  %156 = phi i32 [ %466, %464 ], [ 0, %139 ]
  %157 = phi float [ %467, %464 ], [ 0.000000e+00, %139 ]
  %158 = phi float [ %468, %464 ], [ 0.000000e+00, %139 ]
  %159 = phi float [ %469, %464 ], [ 0.000000e+00, %139 ]
  %160 = fsub fast float -0.000000e+00, %152
  %161 = fsub fast float -0.000000e+00, %151
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 1
  %164 = icmp eq i32 %124, 0
  br i1 %164, label %335, label %165, !dx.controlflow.hints !23

; <label>:165                                     ; preds = %149
  %166 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.i32 %166, 1
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 1
  %170 = fcmp fast ogt float %169, %154
  br i1 %170, label %171, label %173, !dx.controlflow.hints !24

; <label>:171                                     ; preds = %165
  %172 = fsub fast float %169, %154
  br label %325

; <label>:173                                     ; preds = %165
  %174 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.i32 %174, 3
  %176 = icmp eq i32 %175, 0
  %177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %178 = extractvalue %dx.types.CBufRet.f32 %177, 2
  %179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.f32 %179, 2
  %181 = fsub fast float %178, %153
  %182 = fadd fast float %181, %180
  %183 = fsub fast float 0xC7EFFFFFE0000000, %153
  br i1 %176, label %193, label %184, !dx.controlflow.hints !20

; <label>:184                                     ; preds = %173
  %185 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %161, float %160, float %182)  ; Dot3(ax,ay,az,bx,by,bz)
  %186 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %187 = fdiv fast float 1.000000e+00, %186
  %188 = fmul fast float %187, %185
  %189 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %161, float %160, float %183)  ; Dot3(ax,ay,az,bx,by,bz)
  %190 = fmul fast float %187, %189
  %191 = call float @dx.op.binary.f32(i32 36, float %188, float %190)  ; FMin(a,b)
  %192 = call float @dx.op.binary.f32(i32 35, float %188, float %190)  ; FMax(a,b)
  br label %226

; <label>:193                                     ; preds = %173
  %194 = extractvalue %dx.types.CBufRet.f32 %177, 0
  %195 = extractvalue %dx.types.CBufRet.f32 %177, 1
  %196 = extractvalue %dx.types.CBufRet.f32 %179, 0
  %197 = extractvalue %dx.types.CBufRet.f32 %179, 1
  %198 = fdiv fast float 1.000000e+00, %53
  %199 = fdiv fast float 1.000000e+00, %54
  %200 = fdiv fast float 1.000000e+00, %55
  %201 = fsub fast float %194, %151
  %202 = fmul fast float %198, %201
  %203 = fadd fast float %201, %196
  %204 = fmul fast float %203, %198
  %205 = call float @dx.op.binary.f32(i32 36, float %202, float %204)  ; FMin(a,b)
  %206 = call float @dx.op.binary.f32(i32 35, float %202, float %204)  ; FMax(a,b)
  %207 = fsub fast float %195, %152
  %208 = fmul fast float %199, %207
  %209 = fadd fast float %207, %197
  %210 = fmul fast float %209, %199
  %211 = call float @dx.op.binary.f32(i32 36, float %208, float %210)  ; FMin(a,b)
  %212 = call float @dx.op.binary.f32(i32 35, float %205, float %211)  ; FMax(a,b)
  %213 = call float @dx.op.binary.f32(i32 35, float %208, float %210)  ; FMax(a,b)
  %214 = call float @dx.op.binary.f32(i32 36, float %206, float %213)  ; FMin(a,b)
  %215 = fmul fast float %200, %183
  %216 = fmul fast float %200, %182
  %217 = call float @dx.op.binary.f32(i32 36, float %215, float %216)  ; FMin(a,b)
  %218 = call float @dx.op.binary.f32(i32 35, float %212, float %217)  ; FMax(a,b)
  %219 = call float @dx.op.binary.f32(i32 35, float %215, float %216)  ; FMax(a,b)
  %220 = call float @dx.op.binary.f32(i32 36, float %214, float %219)  ; FMin(a,b)
  %221 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %218)  ; FMax(a,b)
  %222 = fcmp fast ult float %220, %221
  br i1 %222, label %226, label %223, !dx.controlflow.hints !21

; <label>:223                                     ; preds = %193
  %224 = call float @dx.op.binary.f32(i32 36, float %218, float %220)  ; FMin(a,b)
  %225 = call float @dx.op.binary.f32(i32 35, float %218, float %220)  ; FMax(a,b)
  br label %226

; <label>:226                                     ; preds = %223, %193, %184
  %227 = phi float [ %191, %184 ], [ %224, %223 ], [ 0.000000e+00, %193 ]
  %228 = phi float [ %192, %184 ], [ %225, %223 ], [ 0.000000e+00, %193 ]
  %229 = fcmp fast ogt float %227, 0.000000e+00
  br i1 %229, label %325, label %230, !dx.controlflow.hints !25

; <label>:230                                     ; preds = %226
  %231 = fcmp fast ugt float %228, 0.000000e+00
  br i1 %231, label %232, label %325, !dx.controlflow.hints !26

; <label>:232                                     ; preds = %230
  %233 = icmp sgt i32 %155, 0
  br i1 %233, label %234, label %319

; <label>:234                                     ; preds = %232
  br label %235

; <label>:235                                     ; preds = %315, %234
  %236 = phi i32 [ %316, %315 ], [ %155, %234 ]
  %237 = sitofp i32 %236 to float
  %238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %239 = extractvalue %dx.types.CBufRet.f32 %238, 0
  %240 = extractvalue %dx.types.CBufRet.f32 %238, 1
  %241 = fsub fast float %151, %239
  %242 = fsub fast float %152, %240
  %243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %244 = extractvalue %dx.types.CBufRet.f32 %243, 0
  %245 = extractvalue %dx.types.CBufRet.f32 %243, 1
  %246 = fmul fast float %241, %244
  %247 = fmul fast float %242, %245
  %248 = fsub fast float 1.000000e+00, %247
  %249 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %250 = extractvalue %dx.types.CBufRet.i32 %249, 3
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %258, label %252, !dx.controlflow.hints !27

; <label>:252                                     ; preds = %235
  %253 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %246, float %248, float undef, float undef, i32 0, i32 0, i32 undef, float %237)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %254 = extractvalue %dx.types.ResRet.f32 %253, 0
  %255 = extractvalue %dx.types.ResRet.f32 %253, 1
  %256 = extractvalue %dx.types.ResRet.f32 %253, 2
  %257 = extractvalue %dx.types.ResRet.f32 %253, 3
  br label %264

; <label>:258                                     ; preds = %235
  %259 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %5, float %246, float %248, float undef, float undef, i32 0, i32 0, i32 undef, float %237)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %260 = extractvalue %dx.types.ResRet.f32 %259, 0
  %261 = extractvalue %dx.types.ResRet.f32 %259, 1
  %262 = extractvalue %dx.types.ResRet.f32 %259, 2
  %263 = extractvalue %dx.types.ResRet.f32 %259, 3
  br label %264

; <label>:264                                     ; preds = %258, %252
  %265 = phi float [ %254, %252 ], [ %260, %258 ]
  %266 = phi float [ %255, %252 ], [ %261, %258 ]
  %267 = phi float [ %256, %252 ], [ %262, %258 ]
  %268 = phi float [ %257, %252 ], [ %263, %258 ]
  %269 = extractvalue %dx.types.CBufRet.f32 %243, 3
  %270 = fmul fast float %269, %265
  %271 = extractvalue %dx.types.CBufRet.f32 %238, 2
  %272 = fadd fast float %270, %271
  %273 = fmul fast float %269, %266
  %274 = fadd fast float %273, %271
  %275 = fmul fast float %269, %267
  %276 = fadd fast float %275, %271
  %277 = and i32 %236, 31
  %278 = shl i32 1, %277
  %279 = uitofp i32 %278 to float
  %280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %281 = extractvalue %dx.types.CBufRet.f32 %280, 3
  %282 = fdiv fast float 1.000000e+00, %281
  %283 = fmul fast float %282, %279
  %284 = fmul fast float %283, %55
  %285 = fadd fast float %284, %153
  %286 = fcmp fast oeq float %268, 0.000000e+00
  %287 = fcmp fast ogt float %153, %274
  %288 = fcmp fast ogt float %285, %274
  %289 = and i1 %287, %288
  %290 = or i1 %286, %289
  br i1 %290, label %291, label %295, !dx.controlflow.hints !28

; <label>:291                                     ; preds = %264
  %292 = add nsw i32 %236, 1
  %293 = add nsw i32 %167, -1
  %294 = call i32 @dx.op.binary.i32(i32 38, i32 %292, i32 %293)  ; IMin(a,b)
  br label %325

; <label>:295                                     ; preds = %264
  %296 = fcmp fast olt float %153, %276
  %297 = fcmp fast olt float %285, %276
  %298 = and i1 %296, %297
  br i1 %298, label %299, label %303, !dx.controlflow.hints !29

; <label>:299                                     ; preds = %295
  %300 = add nsw i32 %236, 1
  %301 = add nsw i32 %167, -1
  %302 = call i32 @dx.op.binary.i32(i32 38, i32 %300, i32 %301)  ; IMin(a,b)
  br label %325

; <label>:303                                     ; preds = %295
  %304 = fcmp fast olt float %153, %272
  %305 = fcmp fast olt float %285, %272
  %306 = and i1 %304, %305
  br i1 %306, label %307, label %315, !dx.controlflow.hints !30

; <label>:307                                     ; preds = %303
  %308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %309 = extractvalue %dx.types.CBufRet.f32 %308, 3
  %310 = extractvalue %dx.types.CBufRet.f32 %243, 2
  %311 = fcmp fast une float %309, %310
  br i1 %311, label %312, label %319, !dx.controlflow.hints !31

; <label>:312                                     ; preds = %307
  %313 = fsub fast float %153, %276
  %314 = call float @dx.op.binary.f32(i32 36, float %283, float %313)  ; FMin(a,b)
  br label %319

; <label>:315                                     ; preds = %303
  %316 = add nsw i32 %236, -1
  %317 = icmp sgt i32 %236, 1
  br i1 %317, label %235, label %318

; <label>:318                                     ; preds = %315
  br label %319

; <label>:319                                     ; preds = %318, %312, %307, %232
  %320 = phi float [ %314, %312 ], [ %283, %307 ], [ 0.000000e+00, %232 ], [ 0.000000e+00, %318 ]
  %321 = phi i32 [ %236, %312 ], [ %236, %307 ], [ %155, %232 ], [ %316, %318 ]
  %322 = add nsw i32 %321, 1
  %323 = add nsw i32 %167, -1
  %324 = call i32 @dx.op.binary.i32(i32 38, i32 %322, i32 %323)  ; IMin(a,b)
  br label %325

; <label>:325                                     ; preds = %319, %299, %291, %230, %226, %171
  %326 = phi float [ %172, %171 ], [ %283, %291 ], [ %283, %299 ], [ %320, %319 ], [ 0x47EFFFFFE0000000, %230 ], [ %227, %226 ]
  %327 = phi i32 [ %124, %171 ], [ %124, %291 ], [ %124, %299 ], [ %124, %319 ], [ 0, %230 ], [ %124, %226 ]
  %328 = phi i32 [ %155, %171 ], [ %294, %291 ], [ %302, %299 ], [ %324, %319 ], [ %155, %230 ], [ %155, %226 ]
  %329 = icmp ne i32 %327, 0
  %330 = zext i1 %329 to i32
  %331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %332 = extractvalue %dx.types.CBufRet.f32 %331, 2
  %333 = call float @dx.op.binary.f32(i32 35, float %326, float %332)  ; FMax(a,b)
  %334 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %333)  ; FMin(a,b)
  br label %335

; <label>:335                                     ; preds = %325, %149
  %336 = phi float [ %334, %325 ], [ 0x47EFFFFFE0000000, %149 ]
  %337 = phi i32 [ %328, %325 ], [ %155, %149 ]
  %338 = phi i32 [ %330, %325 ], [ 0, %149 ]
  %339 = extractvalue %dx.types.CBufRet.f32 %162, 2
  %340 = fmul fast float %339, %154
  %341 = call float @dx.op.unary.f32(i32 23, float %340)  ; Log(value)
  %342 = fmul fast float %341, 0x3FE62E4300000000
  %343 = call float @dx.op.binary.f32(i32 35, float %342, float 1.000000e+00)  ; FMax(a,b)
  %344 = fmul fast float %343, 0x47EFFFFFE0000000
  %345 = call float @dx.op.binary.f32(i32 36, float %344, float %336)  ; FMin(a,b)
  %346 = call float @dx.op.binary.f32(i32 35, float %345, float %163)  ; FMax(a,b)
  %347 = fsub fast float %126, %154
  %348 = fadd fast float %347, 0x3F1A36E2E0000000
  %349 = call float @dx.op.binary.f32(i32 36, float %348, float %346)  ; FMin(a,b)
  %350 = icmp eq i32 %338, 0
  br i1 %350, label %447, label %351, !dx.controlflow.hints !32

; <label>:351                                     ; preds = %335
  %352 = fcmp fast olt float %348, %346
  %353 = fmul fast float %26, %55
  %354 = fmul fast float %353, %349
  %355 = fadd fast float %354, %153
  %356 = fmul fast float %27, %55
  %357 = fmul fast float %356, %349
  %358 = fadd fast float %357, %153
  %359 = fmul fast float %28, %55
  %360 = fmul fast float %359, %349
  %361 = fadd fast float %360, %153
  br i1 %352, label %362, label %367, !dx.controlflow.hints !33

; <label>:362                                     ; preds = %351
  %363 = fmul fast float %349, %53
  %364 = fmul fast float %349, %54
  %365 = fadd fast float %363, %151
  %366 = fadd fast float %364, %152
  br label %367

; <label>:367                                     ; preds = %362, %351
  %368 = phi float [ %365, %362 ], [ %151, %351 ]
  %369 = phi float [ %366, %362 ], [ %152, %351 ]
  %370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %371 = extractvalue %dx.types.CBufRet.f32 %370, 0
  %372 = extractvalue %dx.types.CBufRet.f32 %370, 1
  %373 = fsub fast float %368, %371
  %374 = fsub fast float %369, %372
  %375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %376 = extractvalue %dx.types.CBufRet.f32 %375, 0
  %377 = extractvalue %dx.types.CBufRet.f32 %375, 1
  %378 = fmul fast float %373, %376
  %379 = fmul fast float %374, %377
  %380 = fsub fast float 1.000000e+00, %379
  %381 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %382 = extractvalue %dx.types.CBufRet.i32 %381, 3
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %390, label %384, !dx.controlflow.hints !27

; <label>:384                                     ; preds = %367
  %385 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %378, float %380, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %386 = extractvalue %dx.types.ResRet.f32 %385, 0
  %387 = extractvalue %dx.types.ResRet.f32 %385, 1
  %388 = extractvalue %dx.types.ResRet.f32 %385, 2
  %389 = extractvalue %dx.types.ResRet.f32 %385, 3
  br label %396

; <label>:390                                     ; preds = %367
  %391 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %5, float %378, float %380, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %392 = extractvalue %dx.types.ResRet.f32 %391, 0
  %393 = extractvalue %dx.types.ResRet.f32 %391, 1
  %394 = extractvalue %dx.types.ResRet.f32 %391, 2
  %395 = extractvalue %dx.types.ResRet.f32 %391, 3
  br label %396

; <label>:396                                     ; preds = %390, %384
  %397 = phi float [ %386, %384 ], [ %392, %390 ]
  %398 = phi float [ %387, %384 ], [ %393, %390 ]
  %399 = phi float [ %388, %384 ], [ %394, %390 ]
  %400 = phi float [ %389, %384 ], [ %395, %390 ]
  %401 = extractvalue %dx.types.CBufRet.f32 %375, 3
  %402 = fmul fast float %401, %398
  %403 = fmul fast float %402, %397
  %404 = fsub fast float %402, %403
  %405 = fcmp fast ole float %404, 0.000000e+00
  %406 = extractvalue %dx.types.CBufRet.f32 %370, 2
  %407 = fadd fast float %403, %406
  %408 = fmul fast float %401, %399
  %409 = fadd fast float %408, %406
  %410 = fdiv fast float 1.000000e+00, %404
  %411 = select i1 %405, float 1.000000e+06, float %410
  %412 = fsub fast float %355, %407
  %413 = fmul fast float %411, %412
  %414 = call float @dx.op.unary.f32(i32 7, float %413)  ; Saturate(value)
  %415 = extractvalue %dx.types.CBufRet.f32 %375, 2
  %416 = fmul fast float %415, %414
  %417 = fsub fast float %415, %416
  %418 = fcmp fast olt float %355, %409
  %419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %420 = extractvalue %dx.types.CBufRet.f32 %419, 3
  %421 = select i1 %418, float %420, float 1.000000e+00
  %422 = fmul fast float %417, %421
  %423 = fsub fast float %358, %407
  %424 = fmul fast float %411, %423
  %425 = call float @dx.op.unary.f32(i32 7, float %424)  ; Saturate(value)
  %426 = fmul fast float %415, %425
  %427 = fsub fast float %415, %426
  %428 = fcmp fast olt float %358, %409
  %429 = select i1 %428, float %420, float 1.000000e+00
  %430 = fmul fast float %427, %429
  %431 = fadd fast float %430, %422
  %432 = fsub fast float %361, %407
  %433 = fmul fast float %411, %432
  %434 = call float @dx.op.unary.f32(i32 7, float %433)  ; Saturate(value)
  %435 = fmul fast float %415, %434
  %436 = fsub fast float %415, %435
  %437 = fcmp fast olt float %361, %409
  %438 = select i1 %437, float %420, float 1.000000e+00
  %439 = fmul fast float %436, %438
  %440 = fadd fast float %431, %439
  %441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %442 = extractvalue %dx.types.CBufRet.f32 %441, 2
  %443 = fmul fast float %349, 0x3FD5555560000000
  %444 = fmul fast float %443, %400
  %445 = fmul fast float %444, %442
  %446 = fmul fast float %445, %440
  br label %447

; <label>:447                                     ; preds = %396, %335
  %448 = phi float [ %446, %396 ], [ 0.000000e+00, %335 ]
  %449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %450 = extractvalue %dx.types.CBufRet.f32 %449, 1
  %451 = fcmp fast ogt float %448, %450
  br i1 %451, label %452, label %464, !dx.controlflow.hints !34

; <label>:452                                     ; preds = %447
  %453 = fmul fast float %448, 0xBFF7154760000000
  %454 = call float @dx.op.unary.f32(i32 21, float %453)  ; Exp(value)
  %455 = call float @dx.op.unary.f32(i32 7, float %454)  ; Saturate(value)
  %456 = icmp eq i32 %156, 0
  br i1 %456, label %457, label %458, !dx.controlflow.hints !35

; <label>:457                                     ; preds = %452
  br label %458

; <label>:458                                     ; preds = %457, %452
  %459 = phi i32 [ %156, %452 ], [ 1, %457 ]
  %460 = phi float [ %157, %452 ], [ %154, %457 ]
  %461 = fadd fast float %349, %158
  %462 = fadd fast float %448, %159
  %463 = fmul fast float %455, %150
  br label %464

; <label>:464                                     ; preds = %458, %447
  %465 = phi float [ %463, %458 ], [ %150, %447 ]
  %466 = phi i32 [ %459, %458 ], [ %156, %447 ]
  %467 = phi float [ %460, %458 ], [ %157, %447 ]
  %468 = phi float [ %461, %458 ], [ %158, %447 ]
  %469 = phi float [ %462, %458 ], [ %159, %447 ]
  %470 = fadd fast float %349, %154
  %471 = fmul fast float %349, %53
  %472 = fmul fast float %349, %54
  %473 = fmul fast float %349, %55
  %474 = fadd fast float %471, %151
  %475 = fadd fast float %472, %152
  %476 = fadd fast float %473, %153
  %477 = fcmp fast olt float %470, %126
  %478 = extractvalue %dx.types.CBufRet.f32 %449, 2
  %479 = fcmp fast olt float %478, %465
  %480 = and i1 %477, %479
  br i1 %480, label %149, label %481

; <label>:481                                     ; preds = %464
  br label %482

; <label>:482                                     ; preds = %481, %122
  %483 = phi float [ 0.000000e+00, %122 ], [ %467, %481 ]
  %484 = phi float [ 0.000000e+00, %122 ], [ %468, %481 ]
  %485 = phi float [ 0.000000e+00, %122 ], [ %469, %481 ]
  %486 = extractvalue %dx.types.CBufRet.f32 %47, 3
  %487 = fmul fast float %486, %483
  %488 = fdiv fast float 1.000000e+00, %484
  %489 = fmul fast float %488, %485
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %8, i32 %9, i32 undef, float %487, float %489, float %485, float %487, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!dx.entryPoints = !{!17}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !9, !11, !14}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 16, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!9 = !{!10}
!10 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 7, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!11 = !{!12, !13}
!12 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!13 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!14 = !{!15, !16}
!15 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!16 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!17 = !{void ()* @cs_fog_raymarching_heightmap, !"cs_fog_raymarching_heightmap", null, !4, !18}
!18 = !{i32 0, i64 256, i32 4, !19}
!19 = !{i32 8, i32 8, i32 1}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 1}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 1}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 1}

