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
; shader hash: b74b0325e73413dcdd72bef6306d4a6c
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
;                                   texture     f32          2d      T1            t27     1
;                                   texture     f32          2d      T2            t13     1
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

define void @cs_fog_raymarching_air_heightmap_brfog() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %10 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %11 = uitofp i32 %9 to float
  %12 = uitofp i32 %10 to float
  %13 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %14 = extractvalue %dx.types.CBufRet.f32 %13, 2
  %15 = fmul fast float %14, 0x3FE3C6EF40000000
  %16 = frem fast float %11, 2.560000e+02
  %17 = frem fast float %12, 2.560000e+02
  %18 = fptoui float %16 to i32
  %19 = fptoui float %17 to i32
  %20 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %18, i32 %19, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %21 = extractvalue %dx.types.ResRet.f32 %20, 0
  %22 = extractvalue %dx.types.ResRet.f32 %20, 1
  %23 = extractvalue %dx.types.ResRet.f32 %20, 2
  %24 = fadd fast float %21, %15
  %25 = fadd fast float %22, %15
  %26 = fadd fast float %23, %15
  %27 = call float @dx.op.unary.f32(i32 22, float %24)  ; Frc(value)
  %28 = call float @dx.op.unary.f32(i32 22, float %25)  ; Frc(value)
  %29 = call float @dx.op.unary.f32(i32 22, float %26)  ; Frc(value)
  %30 = fadd fast float %11, 5.000000e-01
  %31 = fadd fast float %12, 5.000000e-01
  %32 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %33 = extractvalue %dx.types.CBufRet.f32 %32, 2
  %34 = extractvalue %dx.types.CBufRet.f32 %32, 3
  %35 = fmul fast float %33, %30
  %36 = fmul fast float %34, %31
  %37 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %38 = extractvalue %dx.types.CBufRet.f32 %37, 0
  %39 = extractvalue %dx.types.CBufRet.f32 %37, 1
  %40 = extractvalue %dx.types.CBufRet.f32 %37, 2
  %41 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %42 = extractvalue %dx.types.CBufRet.f32 %41, 0
  %43 = extractvalue %dx.types.CBufRet.f32 %41, 1
  %44 = fmul fast float %35, %42
  %45 = fmul fast float %36, %43
  %46 = fadd fast float %44, %38
  %47 = fadd fast float %45, %39
  %48 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %49 = extractvalue %dx.types.CBufRet.f32 %48, 2
  %50 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.f32 %50, 0
  %52 = extractvalue %dx.types.CBufRet.f32 %50, 1
  %53 = extractvalue %dx.types.CBufRet.f32 %50, 2
  %54 = fsub fast float -0.000000e+00, %51
  %55 = fsub fast float -0.000000e+00, %52
  %56 = fsub fast float -0.000000e+00, %53
  %57 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %58 = extractvalue %dx.types.CBufRet.i32 %57, 3
  %59 = icmp eq i32 %58, 0
  %60 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.f32 %60, 2
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 2
  %64 = fsub fast float %61, %40
  %65 = fadd fast float %64, %63
  %66 = fsub fast float 0xC7EFFFFFE0000000, %40
  br i1 %59, label %78, label %67, !dx.controlflow.hints !21

; <label>:67                                      ; preds = %0
  %68 = fsub fast float -0.000000e+00, %47
  %69 = fsub fast float -0.000000e+00, %46
  %70 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %69, float %68, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %71 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %54, float %55, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %72 = fdiv fast float 1.000000e+00, %71
  %73 = fmul fast float %72, %70
  %74 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %69, float %68, float %66)  ; Dot3(ax,ay,az,bx,by,bz)
  %75 = fmul fast float %72, %74
  %76 = call float @dx.op.binary.f32(i32 36, float %73, float %75)  ; FMin(a,b)
  %77 = call float @dx.op.binary.f32(i32 35, float %73, float %75)  ; FMax(a,b)
  br label %111

; <label>:78                                      ; preds = %0
  %79 = extractvalue %dx.types.CBufRet.f32 %60, 0
  %80 = extractvalue %dx.types.CBufRet.f32 %60, 1
  %81 = extractvalue %dx.types.CBufRet.f32 %62, 0
  %82 = extractvalue %dx.types.CBufRet.f32 %62, 1
  %83 = fdiv fast float 1.000000e+00, %54
  %84 = fdiv fast float 1.000000e+00, %55
  %85 = fdiv fast float 1.000000e+00, %56
  %86 = fsub fast float %79, %46
  %87 = fmul fast float %83, %86
  %88 = fadd fast float %86, %81
  %89 = fmul fast float %88, %83
  %90 = call float @dx.op.binary.f32(i32 36, float %87, float %89)  ; FMin(a,b)
  %91 = call float @dx.op.binary.f32(i32 35, float %87, float %89)  ; FMax(a,b)
  %92 = fsub fast float %80, %47
  %93 = fmul fast float %84, %92
  %94 = fadd fast float %92, %82
  %95 = fmul fast float %94, %84
  %96 = call float @dx.op.binary.f32(i32 36, float %93, float %95)  ; FMin(a,b)
  %97 = call float @dx.op.binary.f32(i32 35, float %90, float %96)  ; FMax(a,b)
  %98 = call float @dx.op.binary.f32(i32 35, float %93, float %95)  ; FMax(a,b)
  %99 = call float @dx.op.binary.f32(i32 36, float %91, float %98)  ; FMin(a,b)
  %100 = fmul fast float %85, %66
  %101 = fmul fast float %85, %65
  %102 = call float @dx.op.binary.f32(i32 36, float %100, float %101)  ; FMin(a,b)
  %103 = call float @dx.op.binary.f32(i32 35, float %97, float %102)  ; FMax(a,b)
  %104 = call float @dx.op.binary.f32(i32 35, float %100, float %101)  ; FMax(a,b)
  %105 = call float @dx.op.binary.f32(i32 36, float %99, float %104)  ; FMin(a,b)
  %106 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %103)  ; FMax(a,b)
  %107 = fcmp fast ult float %105, %106
  br i1 %107, label %111, label %108, !dx.controlflow.hints !22

; <label>:108                                     ; preds = %78
  %109 = call float @dx.op.binary.f32(i32 36, float %103, float %105)  ; FMin(a,b)
  %110 = call float @dx.op.binary.f32(i32 35, float %103, float %105)  ; FMax(a,b)
  br label %111

; <label>:111                                     ; preds = %108, %78, %67
  %112 = phi float [ %76, %67 ], [ %109, %108 ], [ 0.000000e+00, %78 ]
  %113 = phi float [ %77, %67 ], [ %110, %108 ], [ 0.000000e+00, %78 ]
  %114 = fcmp fast oeq float %113, 0.000000e+00
  %115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %116 = extractvalue %dx.types.CBufRet.f32 %115, 1
  %117 = fcmp fast olt float %113, %116
  %118 = or i1 %114, %117
  br i1 %118, label %123, label %119, !dx.controlflow.hints !23

; <label>:119                                     ; preds = %111
  %120 = call float @dx.op.binary.f32(i32 35, float %116, float %112)  ; FMax(a,b)
  %121 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %120)  ; FMin(a,b)
  %122 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %113)  ; FMax(a,b)
  br label %123

; <label>:123                                     ; preds = %119, %111
  %124 = phi float [ %122, %119 ], [ -1.000000e+00, %111 ]
  %125 = phi i32 [ 1, %119 ], [ 0, %111 ]
  %126 = phi float [ %121, %119 ], [ 0x47EFFFFFE0000000, %111 ]
  %127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.f32 %127, 3
  %129 = fsub fast float -0.000000e+00, %46
  %130 = fsub fast float -0.000000e+00, %47
  %131 = fsub fast float %128, %40
  %132 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %129, float %130, float %131)  ; Dot3(ax,ay,az,bx,by,bz)
  %133 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %54, float %55, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %134 = fdiv fast float 1.000000e+00, %133
  %135 = fmul fast float %134, %132
  %136 = fcmp fast olt float %135, 0.000000e+00
  %137 = fcmp olt float %53, -0.000000e+00
  %138 = and i1 %137, %136
  br i1 %138, label %143, label %139, !dx.controlflow.hints !24

; <label>:139                                     ; preds = %123
  %140 = fcmp ogt float %53, -0.000000e+00
  br i1 %140, label %141, label %143, !dx.controlflow.hints !25

; <label>:141                                     ; preds = %139
  %142 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %135)  ; FMax(a,b)
  br label %143

; <label>:143                                     ; preds = %141, %139, %123
  %144 = phi float [ 0.000000e+00, %123 ], [ %142, %141 ], [ 0.000000e+00, %139 ]
  %145 = phi float [ 0.000000e+00, %123 ], [ 0x47EFFFFFE0000000, %141 ], [ %135, %139 ]
  %146 = fcmp fast oeq float %145, 0.000000e+00
  br i1 %146, label %150, label %147, !dx.controlflow.hints !26

; <label>:147                                     ; preds = %143
  %148 = call float @dx.op.binary.f32(i32 36, float %126, float %144)  ; FMin(a,b)
  %149 = call float @dx.op.binary.f32(i32 35, float %124, float %145)  ; FMax(a,b)
  br label %150

; <label>:150                                     ; preds = %147, %143
  %151 = phi float [ %149, %147 ], [ %124, %143 ]
  %152 = phi i32 [ 1, %147 ], [ 0, %143 ]
  %153 = phi float [ %148, %147 ], [ %126, %143 ]
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 2
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 3
  %158 = fsub fast float %155, %40
  %159 = fadd fast float %158, %157
  %160 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %129, float %130, float %159)  ; Dot3(ax,ay,az,bx,by,bz)
  %161 = fmul fast float %134, %160
  %162 = fcmp fast olt float %161, 0.000000e+00
  %163 = and i1 %137, %162
  br i1 %163, label %168, label %164, !dx.controlflow.hints !27

; <label>:164                                     ; preds = %150
  %165 = fcmp ogt float %53, -0.000000e+00
  br i1 %165, label %166, label %168, !dx.controlflow.hints !28

; <label>:166                                     ; preds = %164
  %167 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %161)  ; FMax(a,b)
  br label %168

; <label>:168                                     ; preds = %166, %164, %150
  %169 = phi float [ 0.000000e+00, %150 ], [ %167, %166 ], [ 0.000000e+00, %164 ]
  %170 = phi float [ 0.000000e+00, %150 ], [ 0x47EFFFFFE0000000, %166 ], [ %161, %164 ]
  %171 = fcmp fast oeq float %170, 0.000000e+00
  br i1 %171, label %175, label %172, !dx.controlflow.hints !29

; <label>:172                                     ; preds = %168
  %173 = call float @dx.op.binary.f32(i32 36, float %153, float %169)  ; FMin(a,b)
  %174 = call float @dx.op.binary.f32(i32 35, float %151, float %170)  ; FMax(a,b)
  br label %175

; <label>:175                                     ; preds = %172, %168
  %176 = phi i32 [ 1, %172 ], [ 0, %168 ]
  %177 = phi float [ %174, %172 ], [ %151, %168 ]
  %178 = phi float [ %173, %172 ], [ %153, %168 ]
  %179 = call float @dx.op.binary.f32(i32 36, float %49, float %177)  ; FMin(a,b)
  %180 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %178)  ; FMax(a,b)
  %181 = extractvalue %dx.types.CBufRet.f32 %127, 1
  %182 = fmul fast float %28, 2.000000e+00
  %183 = fadd fast float %182, -1.000000e+00
  %184 = fmul fast float %181, %183
  %185 = fadd fast float %184, %180
  %186 = fcmp fast olt float %185, %179
  %187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %188 = extractvalue %dx.types.CBufRet.f32 %187, 2
  %189 = fcmp fast olt float %188, 1.000000e+00
  %190 = and i1 %186, %189
  br i1 %190, label %191, label %809

; <label>:191                                     ; preds = %175
  %192 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = extractvalue %dx.types.CBufRet.i32 %192, 1
  %194 = add i32 %193, -1
  %195 = fmul fast float %185, %56
  %196 = fadd fast float %195, %40
  %197 = fmul fast float %185, %55
  %198 = fadd fast float %197, %47
  %199 = fmul fast float %185, %54
  %200 = fadd fast float %199, %46
  br label %201

; <label>:201                                     ; preds = %791, %191
  %202 = phi i32 [ %580, %791 ], [ undef, %191 ]
  %203 = phi float [ %581, %791 ], [ undef, %191 ]
  %204 = phi float [ %792, %791 ], [ 1.000000e+00, %191 ]
  %205 = phi float [ %801, %791 ], [ %200, %191 ]
  %206 = phi float [ %802, %791 ], [ %198, %191 ]
  %207 = phi float [ %803, %791 ], [ %196, %191 ]
  %208 = phi float [ %797, %791 ], [ %185, %191 ]
  %209 = phi i32 [ %389, %791 ], [ %194, %191 ]
  %210 = phi i32 [ %793, %791 ], [ 0, %191 ]
  %211 = phi float [ %794, %791 ], [ 0.000000e+00, %191 ]
  %212 = phi float [ %795, %791 ], [ 0.000000e+00, %191 ]
  %213 = phi float [ %796, %791 ], [ 0.000000e+00, %191 ]
  %214 = fsub fast float -0.000000e+00, %206
  %215 = fsub fast float -0.000000e+00, %205
  %216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %217 = extractvalue %dx.types.CBufRet.f32 %216, 1
  %218 = icmp eq i32 %125, 0
  br i1 %218, label %387, label %219, !dx.controlflow.hints !30

; <label>:219                                     ; preds = %201
  %220 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %221 = extractvalue %dx.types.CBufRet.i32 %220, 1
  %222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %223 = extractvalue %dx.types.CBufRet.f32 %222, 1
  %224 = fcmp fast ogt float %223, %208
  br i1 %224, label %225, label %227, !dx.controlflow.hints !31

; <label>:225                                     ; preds = %219
  %226 = fsub fast float %223, %208
  br label %377

; <label>:227                                     ; preds = %219
  %228 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %229 = extractvalue %dx.types.CBufRet.i32 %228, 3
  %230 = icmp eq i32 %229, 0
  %231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = extractvalue %dx.types.CBufRet.f32 %231, 2
  %233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %234 = extractvalue %dx.types.CBufRet.f32 %233, 2
  %235 = fsub fast float %232, %207
  %236 = fadd fast float %235, %234
  %237 = fsub fast float 0xC7EFFFFFE0000000, %207
  br i1 %230, label %245, label %238, !dx.controlflow.hints !21

; <label>:238                                     ; preds = %227
  %239 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %215, float %214, float %236)  ; Dot3(ax,ay,az,bx,by,bz)
  %240 = fmul fast float %134, %239
  %241 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %215, float %214, float %237)  ; Dot3(ax,ay,az,bx,by,bz)
  %242 = fmul fast float %134, %241
  %243 = call float @dx.op.binary.f32(i32 36, float %240, float %242)  ; FMin(a,b)
  %244 = call float @dx.op.binary.f32(i32 35, float %240, float %242)  ; FMax(a,b)
  br label %278

; <label>:245                                     ; preds = %227
  %246 = extractvalue %dx.types.CBufRet.f32 %231, 0
  %247 = extractvalue %dx.types.CBufRet.f32 %231, 1
  %248 = extractvalue %dx.types.CBufRet.f32 %233, 0
  %249 = extractvalue %dx.types.CBufRet.f32 %233, 1
  %250 = fdiv fast float 1.000000e+00, %54
  %251 = fdiv fast float 1.000000e+00, %55
  %252 = fdiv fast float 1.000000e+00, %56
  %253 = fsub fast float %246, %205
  %254 = fmul fast float %250, %253
  %255 = fadd fast float %253, %248
  %256 = fmul fast float %255, %250
  %257 = call float @dx.op.binary.f32(i32 36, float %254, float %256)  ; FMin(a,b)
  %258 = call float @dx.op.binary.f32(i32 35, float %254, float %256)  ; FMax(a,b)
  %259 = fsub fast float %247, %206
  %260 = fmul fast float %251, %259
  %261 = fadd fast float %259, %249
  %262 = fmul fast float %261, %251
  %263 = call float @dx.op.binary.f32(i32 36, float %260, float %262)  ; FMin(a,b)
  %264 = call float @dx.op.binary.f32(i32 35, float %257, float %263)  ; FMax(a,b)
  %265 = call float @dx.op.binary.f32(i32 35, float %260, float %262)  ; FMax(a,b)
  %266 = call float @dx.op.binary.f32(i32 36, float %258, float %265)  ; FMin(a,b)
  %267 = fmul fast float %252, %237
  %268 = fmul fast float %252, %236
  %269 = call float @dx.op.binary.f32(i32 36, float %267, float %268)  ; FMin(a,b)
  %270 = call float @dx.op.binary.f32(i32 35, float %264, float %269)  ; FMax(a,b)
  %271 = call float @dx.op.binary.f32(i32 35, float %267, float %268)  ; FMax(a,b)
  %272 = call float @dx.op.binary.f32(i32 36, float %266, float %271)  ; FMin(a,b)
  %273 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %270)  ; FMax(a,b)
  %274 = fcmp fast ult float %272, %273
  br i1 %274, label %278, label %275, !dx.controlflow.hints !22

; <label>:275                                     ; preds = %245
  %276 = call float @dx.op.binary.f32(i32 36, float %270, float %272)  ; FMin(a,b)
  %277 = call float @dx.op.binary.f32(i32 35, float %270, float %272)  ; FMax(a,b)
  br label %278

; <label>:278                                     ; preds = %275, %245, %238
  %279 = phi float [ %243, %238 ], [ %276, %275 ], [ 0.000000e+00, %245 ]
  %280 = phi float [ %244, %238 ], [ %277, %275 ], [ 0.000000e+00, %245 ]
  %281 = fcmp fast ogt float %279, 0.000000e+00
  br i1 %281, label %377, label %282, !dx.controlflow.hints !32

; <label>:282                                     ; preds = %278
  %283 = fcmp fast ugt float %280, 0.000000e+00
  br i1 %283, label %284, label %377, !dx.controlflow.hints !33

; <label>:284                                     ; preds = %282
  %285 = icmp sgt i32 %209, 0
  br i1 %285, label %286, label %371

; <label>:286                                     ; preds = %284
  br label %287

; <label>:287                                     ; preds = %367, %286
  %288 = phi i32 [ %368, %367 ], [ %209, %286 ]
  %289 = sitofp i32 %288 to float
  %290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %291 = extractvalue %dx.types.CBufRet.f32 %290, 0
  %292 = extractvalue %dx.types.CBufRet.f32 %290, 1
  %293 = fsub fast float %205, %291
  %294 = fsub fast float %206, %292
  %295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %296 = extractvalue %dx.types.CBufRet.f32 %295, 0
  %297 = extractvalue %dx.types.CBufRet.f32 %295, 1
  %298 = fmul fast float %293, %296
  %299 = fmul fast float %294, %297
  %300 = fsub fast float 1.000000e+00, %299
  %301 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %302 = extractvalue %dx.types.CBufRet.i32 %301, 3
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %310, label %304, !dx.controlflow.hints !34

; <label>:304                                     ; preds = %287
  %305 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %298, float %300, float undef, float undef, i32 0, i32 0, i32 undef, float %289)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %306 = extractvalue %dx.types.ResRet.f32 %305, 0
  %307 = extractvalue %dx.types.ResRet.f32 %305, 1
  %308 = extractvalue %dx.types.ResRet.f32 %305, 2
  %309 = extractvalue %dx.types.ResRet.f32 %305, 3
  br label %316

; <label>:310                                     ; preds = %287
  %311 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %298, float %300, float undef, float undef, i32 0, i32 0, i32 undef, float %289)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %312 = extractvalue %dx.types.ResRet.f32 %311, 0
  %313 = extractvalue %dx.types.ResRet.f32 %311, 1
  %314 = extractvalue %dx.types.ResRet.f32 %311, 2
  %315 = extractvalue %dx.types.ResRet.f32 %311, 3
  br label %316

; <label>:316                                     ; preds = %310, %304
  %317 = phi float [ %306, %304 ], [ %312, %310 ]
  %318 = phi float [ %307, %304 ], [ %313, %310 ]
  %319 = phi float [ %308, %304 ], [ %314, %310 ]
  %320 = phi float [ %309, %304 ], [ %315, %310 ]
  %321 = extractvalue %dx.types.CBufRet.f32 %295, 3
  %322 = fmul fast float %321, %317
  %323 = extractvalue %dx.types.CBufRet.f32 %290, 2
  %324 = fadd fast float %322, %323
  %325 = fmul fast float %321, %318
  %326 = fadd fast float %325, %323
  %327 = fmul fast float %321, %319
  %328 = fadd fast float %327, %323
  %329 = and i32 %288, 31
  %330 = shl i32 1, %329
  %331 = uitofp i32 %330 to float
  %332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %333 = extractvalue %dx.types.CBufRet.f32 %332, 3
  %334 = fdiv fast float 1.000000e+00, %333
  %335 = fmul fast float %334, %331
  %336 = fmul fast float %335, %56
  %337 = fadd fast float %336, %207
  %338 = fcmp fast oeq float %320, 0.000000e+00
  %339 = fcmp fast ogt float %207, %326
  %340 = fcmp fast ogt float %337, %326
  %341 = and i1 %339, %340
  %342 = or i1 %338, %341
  br i1 %342, label %343, label %347, !dx.controlflow.hints !35

; <label>:343                                     ; preds = %316
  %344 = add nsw i32 %288, 1
  %345 = add nsw i32 %221, -1
  %346 = call i32 @dx.op.binary.i32(i32 38, i32 %344, i32 %345)  ; IMin(a,b)
  br label %377

; <label>:347                                     ; preds = %316
  %348 = fcmp fast olt float %207, %328
  %349 = fcmp fast olt float %337, %328
  %350 = and i1 %348, %349
  br i1 %350, label %351, label %355, !dx.controlflow.hints !36

; <label>:351                                     ; preds = %347
  %352 = add nsw i32 %288, 1
  %353 = add nsw i32 %221, -1
  %354 = call i32 @dx.op.binary.i32(i32 38, i32 %352, i32 %353)  ; IMin(a,b)
  br label %377

; <label>:355                                     ; preds = %347
  %356 = fcmp fast olt float %207, %324
  %357 = fcmp fast olt float %337, %324
  %358 = and i1 %356, %357
  br i1 %358, label %359, label %367, !dx.controlflow.hints !37

; <label>:359                                     ; preds = %355
  %360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %361 = extractvalue %dx.types.CBufRet.f32 %360, 3
  %362 = extractvalue %dx.types.CBufRet.f32 %295, 2
  %363 = fcmp fast une float %361, %362
  br i1 %363, label %364, label %371, !dx.controlflow.hints !38

; <label>:364                                     ; preds = %359
  %365 = fsub fast float %207, %328
  %366 = call float @dx.op.binary.f32(i32 36, float %335, float %365)  ; FMin(a,b)
  br label %371

; <label>:367                                     ; preds = %355
  %368 = add nsw i32 %288, -1
  %369 = icmp sgt i32 %288, 1
  br i1 %369, label %287, label %370

; <label>:370                                     ; preds = %367
  br label %371

; <label>:371                                     ; preds = %370, %364, %359, %284
  %372 = phi float [ %366, %364 ], [ %335, %359 ], [ 0.000000e+00, %284 ], [ 0.000000e+00, %370 ]
  %373 = phi i32 [ %288, %364 ], [ %288, %359 ], [ %209, %284 ], [ %368, %370 ]
  %374 = add nsw i32 %373, 1
  %375 = add nsw i32 %221, -1
  %376 = call i32 @dx.op.binary.i32(i32 38, i32 %374, i32 %375)  ; IMin(a,b)
  br label %377

; <label>:377                                     ; preds = %371, %351, %343, %282, %278, %225
  %378 = phi float [ %226, %225 ], [ %335, %343 ], [ %335, %351 ], [ %372, %371 ], [ 0x47EFFFFFE0000000, %282 ], [ %279, %278 ]
  %379 = phi i32 [ %125, %225 ], [ %125, %343 ], [ %125, %351 ], [ %125, %371 ], [ 0, %282 ], [ %125, %278 ]
  %380 = phi i32 [ %209, %225 ], [ %346, %343 ], [ %354, %351 ], [ %376, %371 ], [ %209, %282 ], [ %209, %278 ]
  %381 = icmp ne i32 %379, 0
  %382 = zext i1 %381 to i32
  %383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %384 = extractvalue %dx.types.CBufRet.f32 %383, 2
  %385 = call float @dx.op.binary.f32(i32 35, float %378, float %384)  ; FMax(a,b)
  %386 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %385)  ; FMin(a,b)
  br label %387

; <label>:387                                     ; preds = %377, %201
  %388 = phi float [ %386, %377 ], [ 0x47EFFFFFE0000000, %201 ]
  %389 = phi i32 [ %380, %377 ], [ %209, %201 ]
  %390 = phi i32 [ %382, %377 ], [ 0, %201 ]
  %391 = icmp eq i32 %152, 0
  br i1 %391, label %404, label %392, !dx.controlflow.hints !39

; <label>:392                                     ; preds = %387
  %393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %394 = extractvalue %dx.types.CBufRet.f32 %393, 3
  %395 = extractvalue %dx.types.CBufRet.f32 %393, 2
  %396 = fmul fast float %394, %208
  %397 = fdiv fast float %396, %179
  %398 = fadd fast float %397, 1.000000e+00
  %399 = call float @dx.op.unary.f32(i32 23, float %398)  ; Log(value)
  %400 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %399)  ; FMin(a,b)
  %401 = fmul fast float %395, %179
  %402 = fmul fast float %401, %400
  %403 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %402)  ; FMin(a,b)
  br label %404

; <label>:404                                     ; preds = %392, %387
  %405 = phi float [ %403, %392 ], [ 0x47EFFFFFE0000000, %387 ]
  %406 = icmp eq i32 %176, 0
  br i1 %406, label %579, label %407, !dx.controlflow.hints !40

; <label>:407                                     ; preds = %404
  %408 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %409 = extractvalue %dx.types.CBufRet.i32 %408, 1
  %410 = and i32 %409, 1
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %412, label %569, !dx.controlflow.hints !41

; <label>:412                                     ; preds = %407
  %413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %414 = extractvalue %dx.types.CBufRet.f32 %413, 2
  %415 = extractvalue %dx.types.CBufRet.f32 %413, 3
  %416 = fmul fast float %414, %205
  %417 = fmul fast float %415, %206
  %418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %419 = extractvalue %dx.types.CBufRet.f32 %418, 0
  %420 = extractvalue %dx.types.CBufRet.f32 %418, 1
  %421 = fadd fast float %416, %419
  %422 = fadd fast float %417, %420
  %423 = call float @dx.op.unary.f32(i32 7, float %421)  ; Saturate(value)
  %424 = call float @dx.op.unary.f32(i32 7, float %422)  ; Saturate(value)
  %425 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %6, float %423, float %424, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %426 = extractvalue %dx.types.ResRet.f32 %425, 0
  %427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %428 = extractvalue %dx.types.CBufRet.f32 %427, 0
  %429 = fmul fast float %428, %426
  %430 = fsub fast float %421, %423
  %431 = fsub fast float %422, %424
  %432 = extractvalue %dx.types.CBufRet.f32 %413, 0
  %433 = extractvalue %dx.types.CBufRet.f32 %413, 1
  %434 = fmul fast float %432, %430
  %435 = fmul fast float %433, %431
  %436 = fmul fast float %434, %434
  %437 = fmul fast float %435, %435
  %438 = fadd fast float %436, %437
  %439 = call float @dx.op.unary.f32(i32 24, float %438)  ; Sqrt(value)
  %440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %441 = extractvalue %dx.types.CBufRet.f32 %440, 3
  %442 = fmul fast float %441, %439
  %443 = call float @dx.op.unary.f32(i32 7, float %442)  ; Saturate(value)
  %444 = extractvalue %dx.types.CBufRet.f32 %440, 2
  %445 = fsub fast float %444, %429
  %446 = fmul fast float %445, %443
  %447 = extractvalue %dx.types.CBufRet.f32 %427, 1
  %448 = fsub fast float %207, %429
  %449 = fsub fast float %448, %447
  %450 = fsub fast float %449, %446
  %451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %452 = extractvalue %dx.types.CBufRet.f32 %451, 2
  %453 = fsub fast float %450, %452
  %454 = fcmp fast olt float %453, 0.000000e+00
  %455 = call float @dx.op.unary.f32(i32 6, float %453)  ; FAbs(value)
  %456 = extractvalue %dx.types.CBufRet.i32 %408, 0
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %511, label %458

; <label>:458                                     ; preds = %412
  br label %459

; <label>:459                                     ; preds = %498, %458
  %460 = phi i32 [ %504, %498 ], [ 1, %458 ]
  %461 = phi float [ %506, %498 ], [ 0x47EFFFFFE0000000, %458 ]
  %462 = phi i32 [ %507, %498 ], [ 0, %458 ]
  %463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %464 = extractvalue %dx.types.CBufRet.f32 %463, 1
  %465 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %466 = extractvalue %dx.types.CBufRet.i32 %465, 1
  %467 = and i32 %466, 8
  %468 = icmp eq i32 %467, 0
  %469 = fcmp fast ogt float %464, %450
  %470 = or i1 %469, %468
  %471 = add i32 %462, 171
  %472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 %471)  ; CBufferLoadLegacy(handle,regIndex)
  %473 = extractvalue %dx.types.CBufRet.f32 %472, 0
  %474 = extractvalue %dx.types.CBufRet.f32 %472, 1
  %475 = extractvalue %dx.types.CBufRet.f32 %472, 2
  br i1 %470, label %476, label %482, !dx.controlflow.hints !42

; <label>:476                                     ; preds = %459
  %477 = fsub fast float %473, %205
  %478 = fsub fast float %474, %206
  %479 = fmul fast float %477, %477
  %480 = fmul fast float %478, %478
  %481 = fadd fast float %479, %480
  br label %498

; <label>:482                                     ; preds = %459
  %483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %484 = extractvalue %dx.types.CBufRet.f32 %483, 2
  %485 = extractvalue %dx.types.CBufRet.f32 %463, 2
  %486 = fmul fast float %485, %484
  %487 = fsub fast float %486, %464
  %488 = fdiv fast float %475, %487
  %489 = fsub fast float %205, %473
  %490 = fsub fast float %206, %474
  %491 = fsub fast float %450, %464
  %492 = fmul fast float %488, %491
  %493 = fmul fast float %489, %489
  %494 = fmul fast float %490, %490
  %495 = fadd fast float %493, %494
  %496 = fmul fast float %492, %492
  %497 = fadd fast float %495, %496
  br label %498

; <label>:498                                     ; preds = %482, %476
  %499 = phi float [ %481, %476 ], [ %497, %482 ]
  %500 = call float @dx.op.unary.f32(i32 24, float %499)  ; Sqrt(value)
  %501 = fsub float %475, %500
  %502 = fcmp fast olt float %501, 0.000000e+00
  %503 = zext i1 %502 to i32
  %504 = and i32 %503, %460
  %505 = call float @dx.op.unary.f32(i32 6, float %501)  ; FAbs(value)
  %506 = call float @dx.op.binary.f32(i32 36, float %461, float %505)  ; FMin(a,b)
  %507 = add i32 %462, 1
  %508 = extractvalue %dx.types.CBufRet.i32 %465, 0
  %509 = icmp ult i32 %507, %508
  br i1 %509, label %459, label %510

; <label>:510                                     ; preds = %498
  br label %511

; <label>:511                                     ; preds = %510, %412
  %512 = phi i32 [ 1, %412 ], [ %504, %510 ]
  %513 = phi float [ 0x47EFFFFFE0000000, %412 ], [ %506, %510 ]
  br label %514

; <label>:514                                     ; preds = %514, %511
  %515 = phi i32 [ %512, %511 ], [ %554, %514 ]
  %516 = phi float [ 0x47EFFFFFE0000000, %511 ], [ %556, %514 ]
  %517 = phi i32 [ 0, %511 ], [ %557, %514 ]
  %518 = add nuw nsw i32 %517, 191
  %519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 %518)  ; CBufferLoadLegacy(handle,regIndex)
  %520 = extractvalue %dx.types.CBufRet.f32 %519, 0
  %521 = extractvalue %dx.types.CBufRet.f32 %519, 1
  %522 = extractvalue %dx.types.CBufRet.f32 %519, 2
  %523 = add nuw nsw i32 %517, 195
  %524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 %523)  ; CBufferLoadLegacy(handle,regIndex)
  %525 = extractvalue %dx.types.CBufRet.f32 %524, 0
  %526 = extractvalue %dx.types.CBufRet.f32 %524, 1
  %527 = extractvalue %dx.types.CBufRet.f32 %524, 2
  %528 = fsub fast float %205, %520
  %529 = fsub fast float %206, %521
  %530 = fsub fast float %450, %522
  %531 = call float @dx.op.unary.f32(i32 6, float %528)  ; FAbs(value)
  %532 = call float @dx.op.unary.f32(i32 6, float %529)  ; FAbs(value)
  %533 = call float @dx.op.unary.f32(i32 6, float %530)  ; FAbs(value)
  %534 = fsub fast float %531, %525
  %535 = fsub fast float %532, %526
  %536 = fsub fast float %533, %527
  %537 = call float @dx.op.binary.f32(i32 35, float %534, float 0.000000e+00)  ; FMax(a,b)
  %538 = call float @dx.op.binary.f32(i32 35, float %535, float 0.000000e+00)  ; FMax(a,b)
  %539 = call float @dx.op.binary.f32(i32 35, float %536, float 0.000000e+00)  ; FMax(a,b)
  %540 = fmul fast float %537, %537
  %541 = fmul fast float %538, %538
  %542 = fadd fast float %541, %540
  %543 = fmul fast float %539, %539
  %544 = fadd fast float %542, %543
  %545 = call float @dx.op.unary.f32(i32 24, float %544)  ; Sqrt(value)
  %546 = call float @dx.op.binary.f32(i32 35, float %535, float %536)  ; FMax(a,b)
  %547 = call float @dx.op.binary.f32(i32 35, float %534, float %546)  ; FMax(a,b)
  %548 = call float @dx.op.binary.f32(i32 36, float %547, float 0.000000e+00)  ; FMin(a,b)
  %549 = fadd fast float %548, %545
  %550 = fsub fast float -0.000000e+00, %549
  %551 = fcmp ogt float %549, -0.000000e+00
  %552 = icmp ne i32 %515, 0
  %553 = and i1 %552, %551
  %554 = zext i1 %553 to i32
  %555 = call float @dx.op.unary.f32(i32 6, float %550)  ; FAbs(value)
  %556 = call float @dx.op.binary.f32(i32 36, float %516, float %555)  ; FMin(a,b)
  %557 = add nuw nsw i32 %517, 1
  %558 = icmp eq i32 %557, 4
  br i1 %558, label %559, label %514

; <label>:559                                     ; preds = %514
  %560 = call float @dx.op.binary.f32(i32 36, float %455, float %556)  ; FMin(a,b)
  %561 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %562 = extractvalue %dx.types.CBufRet.i32 %561, 1
  %563 = and i32 %562, 2
  %564 = icmp ne i32 %563, 0
  %565 = xor i1 %553, %564
  %566 = call float @dx.op.binary.f32(i32 36, float %560, float %513)  ; FMin(a,b)
  %567 = and i1 %565, %454
  %568 = zext i1 %567 to i32
  br label %569

; <label>:569                                     ; preds = %559, %407
  %570 = phi i32 [ %202, %407 ], [ %568, %559 ]
  %571 = phi float [ 0.000000e+00, %407 ], [ %566, %559 ]
  %572 = phi float [ %207, %407 ], [ %450, %559 ]
  %573 = icmp ne i32 %570, 0
  %574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %575 = extractvalue %dx.types.CBufRet.f32 %574, 3
  %576 = call float @dx.op.binary.f32(i32 35, float %571, float %575)  ; FMax(a,b)
  %577 = call float @dx.op.binary.f32(i32 36, float %405, float %576)  ; FMin(a,b)
  %578 = zext i1 %573 to i32
  br label %579

; <label>:579                                     ; preds = %569, %404
  %580 = phi i32 [ %570, %569 ], [ %202, %404 ]
  %581 = phi float [ %572, %569 ], [ %203, %404 ]
  %582 = phi float [ %577, %569 ], [ %405, %404 ]
  %583 = phi i32 [ %578, %569 ], [ 0, %404 ]
  %584 = extractvalue %dx.types.CBufRet.f32 %216, 2
  %585 = fmul fast float %584, %208
  %586 = call float @dx.op.unary.f32(i32 23, float %585)  ; Log(value)
  %587 = fmul fast float %586, 0x3FE62E4300000000
  %588 = call float @dx.op.binary.f32(i32 35, float %587, float 1.000000e+00)  ; FMax(a,b)
  %589 = fmul fast float %588, %582
  %590 = call float @dx.op.binary.f32(i32 36, float %589, float %388)  ; FMin(a,b)
  %591 = call float @dx.op.binary.f32(i32 35, float %590, float %217)  ; FMax(a,b)
  %592 = fsub fast float %179, %208
  %593 = fadd fast float %592, 0x3F1A36E2E0000000
  %594 = call float @dx.op.binary.f32(i32 36, float %593, float %591)  ; FMin(a,b)
  %595 = icmp eq i32 %390, 0
  br i1 %595, label %692, label %596, !dx.controlflow.hints !43

; <label>:596                                     ; preds = %579
  %597 = fcmp fast olt float %593, %591
  %598 = fmul fast float %27, %56
  %599 = fmul fast float %598, %594
  %600 = fadd fast float %599, %207
  %601 = fmul fast float %28, %56
  %602 = fmul fast float %601, %594
  %603 = fadd fast float %602, %207
  %604 = fmul fast float %29, %56
  %605 = fmul fast float %604, %594
  %606 = fadd fast float %605, %207
  br i1 %597, label %607, label %612, !dx.controlflow.hints !44

; <label>:607                                     ; preds = %596
  %608 = fmul fast float %594, %54
  %609 = fmul fast float %594, %55
  %610 = fadd fast float %608, %205
  %611 = fadd fast float %609, %206
  br label %612

; <label>:612                                     ; preds = %607, %596
  %613 = phi float [ %610, %607 ], [ %205, %596 ]
  %614 = phi float [ %611, %607 ], [ %206, %596 ]
  %615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %616 = extractvalue %dx.types.CBufRet.f32 %615, 0
  %617 = extractvalue %dx.types.CBufRet.f32 %615, 1
  %618 = fsub fast float %613, %616
  %619 = fsub fast float %614, %617
  %620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %621 = extractvalue %dx.types.CBufRet.f32 %620, 0
  %622 = extractvalue %dx.types.CBufRet.f32 %620, 1
  %623 = fmul fast float %618, %621
  %624 = fmul fast float %619, %622
  %625 = fsub fast float 1.000000e+00, %624
  %626 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %627 = extractvalue %dx.types.CBufRet.i32 %626, 3
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %635, label %629, !dx.controlflow.hints !34

; <label>:629                                     ; preds = %612
  %630 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %623, float %625, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %631 = extractvalue %dx.types.ResRet.f32 %630, 0
  %632 = extractvalue %dx.types.ResRet.f32 %630, 1
  %633 = extractvalue %dx.types.ResRet.f32 %630, 2
  %634 = extractvalue %dx.types.ResRet.f32 %630, 3
  br label %641

; <label>:635                                     ; preds = %612
  %636 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %623, float %625, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %637 = extractvalue %dx.types.ResRet.f32 %636, 0
  %638 = extractvalue %dx.types.ResRet.f32 %636, 1
  %639 = extractvalue %dx.types.ResRet.f32 %636, 2
  %640 = extractvalue %dx.types.ResRet.f32 %636, 3
  br label %641

; <label>:641                                     ; preds = %635, %629
  %642 = phi float [ %631, %629 ], [ %637, %635 ]
  %643 = phi float [ %632, %629 ], [ %638, %635 ]
  %644 = phi float [ %633, %629 ], [ %639, %635 ]
  %645 = phi float [ %634, %629 ], [ %640, %635 ]
  %646 = extractvalue %dx.types.CBufRet.f32 %620, 3
  %647 = fmul fast float %646, %643
  %648 = fmul fast float %647, %642
  %649 = fsub fast float %647, %648
  %650 = fcmp fast ole float %649, 0.000000e+00
  %651 = extractvalue %dx.types.CBufRet.f32 %615, 2
  %652 = fadd fast float %648, %651
  %653 = fmul fast float %646, %644
  %654 = fadd fast float %653, %651
  %655 = fdiv fast float 1.000000e+00, %649
  %656 = select i1 %650, float 1.000000e+06, float %655
  %657 = fsub fast float %600, %652
  %658 = fmul fast float %656, %657
  %659 = call float @dx.op.unary.f32(i32 7, float %658)  ; Saturate(value)
  %660 = extractvalue %dx.types.CBufRet.f32 %620, 2
  %661 = fmul fast float %660, %659
  %662 = fsub fast float %660, %661
  %663 = fcmp fast olt float %600, %654
  %664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %665 = extractvalue %dx.types.CBufRet.f32 %664, 3
  %666 = select i1 %663, float %665, float 1.000000e+00
  %667 = fmul fast float %662, %666
  %668 = fsub fast float %603, %652
  %669 = fmul fast float %656, %668
  %670 = call float @dx.op.unary.f32(i32 7, float %669)  ; Saturate(value)
  %671 = fmul fast float %660, %670
  %672 = fsub fast float %660, %671
  %673 = fcmp fast olt float %603, %654
  %674 = select i1 %673, float %665, float 1.000000e+00
  %675 = fmul fast float %672, %674
  %676 = fadd fast float %675, %667
  %677 = fsub fast float %606, %652
  %678 = fmul fast float %656, %677
  %679 = call float @dx.op.unary.f32(i32 7, float %678)  ; Saturate(value)
  %680 = fmul fast float %660, %679
  %681 = fsub fast float %660, %680
  %682 = fcmp fast olt float %606, %654
  %683 = select i1 %682, float %665, float 1.000000e+00
  %684 = fmul fast float %681, %683
  %685 = fadd fast float %676, %684
  %686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %687 = extractvalue %dx.types.CBufRet.f32 %686, 2
  %688 = fmul fast float %594, 0x3FD5555560000000
  %689 = fmul fast float %688, %645
  %690 = fmul fast float %689, %687
  %691 = fmul fast float %690, %685
  br label %692

; <label>:692                                     ; preds = %641, %579
  %693 = phi float [ %691, %641 ], [ 0.000000e+00, %579 ]
  br i1 %391, label %740, label %694, !dx.controlflow.hints !45

; <label>:694                                     ; preds = %692
  %695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %696 = extractvalue %dx.types.CBufRet.f32 %695, 0
  %697 = fsub fast float %696, %207
  %698 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %215, float %214, float %697)  ; Dot3(ax,ay,az,bx,by,bz)
  %699 = fmul fast float %134, %698
  %700 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %699)  ; FMax(a,b)
  %701 = fcmp ogt float %53, -0.000000e+00
  %702 = call float @dx.op.binary.f32(i32 36, float %594, float %700)  ; FMin(a,b)
  br i1 %701, label %704, label %703, !dx.controlflow.hints !46

; <label>:703                                     ; preds = %694
  br label %704

; <label>:704                                     ; preds = %703, %694
  %705 = phi float [ 0.000000e+00, %703 ], [ %702, %694 ]
  %706 = phi float [ %702, %703 ], [ %594, %694 ]
  %707 = phi float [ %702, %703 ], [ 0.000000e+00, %694 ]
  %708 = phi float [ %594, %703 ], [ %702, %694 ]
  %709 = fsub fast float %706, %705
  %710 = extractvalue %dx.types.CBufRet.f32 %695, 1
  %711 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %710)  ; FMin(a,b)
  %712 = fsub fast float %207, %696
  %713 = fmul fast float %711, 0x3FF7154760000000
  %714 = fmul fast float %713, %712
  %715 = call float @dx.op.unary.f32(i32 21, float %714)  ; Exp(value)
  %716 = fmul fast float %53, 0xBFF7154760000000
  %717 = fmul fast float %716, %708
  %718 = fmul fast float %717, %711
  %719 = call float @dx.op.unary.f32(i32 21, float %718)  ; Exp(value)
  %720 = fmul fast float %716, %707
  %721 = fmul fast float %720, %711
  %722 = call float @dx.op.unary.f32(i32 21, float %721)  ; Exp(value)
  %723 = fsub fast float %719, %722
  %724 = fmul fast float %723, %715
  %725 = fmul fast float %711, %56
  %726 = fdiv fast float %724, %725
  %727 = fadd fast float %709, %726
  %728 = call float @dx.op.unary.f32(i32 6, float %56)  ; FAbs(value)
  %729 = fcmp fast olt float %728, 0x3F0FFB4800000000
  %730 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %712)  ; FMax(a,b)
  %731 = fmul fast float %730, 0x3FF7154760000000
  %732 = fmul fast float %731, %710
  %733 = call float @dx.op.unary.f32(i32 21, float %732)  ; Exp(value)
  %734 = fmul fast float %733, %594
  %735 = select i1 %729, float %734, float %727
  %736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %737 = extractvalue %dx.types.CBufRet.f32 %736, 1
  %738 = fmul fast float %735, %737
  %739 = fadd fast float %738, %693
  br label %740

; <label>:740                                     ; preds = %704, %692
  %741 = phi float [ %739, %704 ], [ %693, %692 ]
  %742 = icmp eq i32 %583, 0
  br i1 %742, label %774, label %743, !dx.controlflow.hints !47

; <label>:743                                     ; preds = %740
  %744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %745 = extractvalue %dx.types.CBufRet.f32 %744, 1
  %746 = fsub fast float %594, %745
  %747 = extractvalue %dx.types.CBufRet.f32 %744, 3
  %748 = fmul fast float %746, %747
  %749 = call float @dx.op.unary.f32(i32 7, float %748)  ; Saturate(value)
  %750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %751 = extractvalue %dx.types.CBufRet.f32 %750, 3
  %752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %753 = extractvalue %dx.types.CBufRet.f32 %752, 2
  %754 = fsub fast float %753, %581
  %755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %756 = extractvalue %dx.types.CBufRet.f32 %755, 3
  %757 = fmul fast float %754, %756
  %758 = call float @dx.op.unary.f32(i32 7, float %757)  ; Saturate(value)
  %759 = fmul fast float %758, %751
  %760 = extractvalue %dx.types.CBufRet.f32 %755, 0
  %761 = fsub fast float %208, %760
  %762 = extractvalue %dx.types.CBufRet.f32 %755, 1
  %763 = fmul fast float %761, %762
  %764 = call float @dx.op.unary.f32(i32 7, float %763)  ; Saturate(value)
  %765 = fsub fast float 1.000000e+00, %749
  %766 = fmul fast float %764, %765
  %767 = fadd fast float %766, %749
  %768 = extractvalue %dx.types.CBufRet.f32 %744, 0
  %769 = fsub fast float %759, %768
  %770 = fmul fast float %769, %767
  %771 = fadd fast float %770, %768
  %772 = fmul fast float %771, %594
  %773 = fadd fast float %772, %741
  br label %774

; <label>:774                                     ; preds = %743, %740
  %775 = phi float [ %773, %743 ], [ %741, %740 ]
  %776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %777 = extractvalue %dx.types.CBufRet.f32 %776, 1
  %778 = fcmp fast ogt float %775, %777
  br i1 %778, label %779, label %791, !dx.controlflow.hints !48

; <label>:779                                     ; preds = %774
  %780 = fmul fast float %775, 0xBFF7154760000000
  %781 = call float @dx.op.unary.f32(i32 21, float %780)  ; Exp(value)
  %782 = call float @dx.op.unary.f32(i32 7, float %781)  ; Saturate(value)
  %783 = icmp eq i32 %210, 0
  br i1 %783, label %784, label %785, !dx.controlflow.hints !49

; <label>:784                                     ; preds = %779
  br label %785

; <label>:785                                     ; preds = %784, %779
  %786 = phi i32 [ %210, %779 ], [ 1, %784 ]
  %787 = phi float [ %211, %779 ], [ %208, %784 ]
  %788 = fadd fast float %594, %212
  %789 = fadd fast float %775, %213
  %790 = fmul fast float %782, %204
  br label %791

; <label>:791                                     ; preds = %785, %774
  %792 = phi float [ %790, %785 ], [ %204, %774 ]
  %793 = phi i32 [ %786, %785 ], [ %210, %774 ]
  %794 = phi float [ %787, %785 ], [ %211, %774 ]
  %795 = phi float [ %788, %785 ], [ %212, %774 ]
  %796 = phi float [ %789, %785 ], [ %213, %774 ]
  %797 = fadd fast float %594, %208
  %798 = fmul fast float %594, %54
  %799 = fmul fast float %594, %55
  %800 = fmul fast float %594, %56
  %801 = fadd fast float %798, %205
  %802 = fadd fast float %799, %206
  %803 = fadd fast float %800, %207
  %804 = fcmp fast olt float %797, %179
  %805 = extractvalue %dx.types.CBufRet.f32 %776, 2
  %806 = fcmp fast olt float %805, %792
  %807 = and i1 %804, %806
  br i1 %807, label %201, label %808

; <label>:808                                     ; preds = %791
  br label %809

; <label>:809                                     ; preds = %808, %175
  %810 = phi float [ 0.000000e+00, %175 ], [ %794, %808 ]
  %811 = phi float [ 0.000000e+00, %175 ], [ %795, %808 ]
  %812 = phi float [ 0.000000e+00, %175 ], [ %796, %808 ]
  %813 = extractvalue %dx.types.CBufRet.f32 %48, 3
  %814 = fmul fast float %813, %810
  %815 = fdiv fast float 1.000000e+00, %811
  %816 = fmul fast float %815, %812
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %9, i32 %10, i32 undef, float %814, float %816, float %812, float %814, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!dx.entryPoints = !{!18}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !10, !12, !15}
!5 = !{!6, !8, !9}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 16, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 27, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!10 = !{!11}
!11 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 7, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!12 = !{!13, !14}
!13 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!14 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!15 = !{!16, !17}
!16 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!17 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!18 = !{void ()* @cs_fog_raymarching_air_heightmap_brfog, !"cs_fog_raymarching_air_heightmap_brfog", null, !4, !19}
!19 = !{i32 0, i64 256, i32 4, !20}
!20 = !{i32 8, i32 8, i32 1}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
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
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 1}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 1}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 1}

