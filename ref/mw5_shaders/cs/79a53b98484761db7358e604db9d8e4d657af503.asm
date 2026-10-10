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
; shader hash: 588fdb113c5bc3be95da524e553b53f2
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

define void @cs_fog_raymarching_heightmap_brfog() {
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
  %127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.f32 %127, 2
  %129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %130 = extractvalue %dx.types.CBufRet.f32 %129, 3
  %131 = fsub fast float -0.000000e+00, %46
  %132 = fsub fast float -0.000000e+00, %47
  %133 = fsub fast float %128, %40
  %134 = fadd fast float %133, %130
  %135 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %131, float %132, float %134)  ; Dot3(ax,ay,az,bx,by,bz)
  %136 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %54, float %55, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %137 = fdiv fast float 1.000000e+00, %136
  %138 = fmul fast float %137, %135
  %139 = fcmp fast olt float %138, 0.000000e+00
  %140 = fcmp olt float %53, -0.000000e+00
  %141 = and i1 %140, %139
  br i1 %141, label %146, label %142, !dx.controlflow.hints !24

; <label>:142                                     ; preds = %123
  %143 = fcmp ogt float %53, -0.000000e+00
  br i1 %143, label %144, label %146, !dx.controlflow.hints !25

; <label>:144                                     ; preds = %142
  %145 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %138)  ; FMax(a,b)
  br label %146

; <label>:146                                     ; preds = %144, %142, %123
  %147 = phi float [ 0.000000e+00, %123 ], [ %145, %144 ], [ 0.000000e+00, %142 ]
  %148 = phi float [ 0.000000e+00, %123 ], [ 0x47EFFFFFE0000000, %144 ], [ %138, %142 ]
  %149 = fcmp fast oeq float %148, 0.000000e+00
  br i1 %149, label %153, label %150, !dx.controlflow.hints !26

; <label>:150                                     ; preds = %146
  %151 = call float @dx.op.binary.f32(i32 36, float %126, float %147)  ; FMin(a,b)
  %152 = call float @dx.op.binary.f32(i32 35, float %124, float %148)  ; FMax(a,b)
  br label %153

; <label>:153                                     ; preds = %150, %146
  %154 = phi i32 [ 1, %150 ], [ 0, %146 ]
  %155 = phi float [ %152, %150 ], [ %124, %146 ]
  %156 = phi float [ %151, %150 ], [ %126, %146 ]
  %157 = call float @dx.op.binary.f32(i32 36, float %49, float %155)  ; FMin(a,b)
  %158 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %156)  ; FMax(a,b)
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.f32 %159, 1
  %161 = fmul fast float %28, 2.000000e+00
  %162 = fadd fast float %161, -1.000000e+00
  %163 = fmul fast float %160, %162
  %164 = fadd fast float %163, %158
  %165 = fcmp fast olt float %164, %157
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 2
  %168 = fcmp fast olt float %167, 1.000000e+00
  %169 = and i1 %165, %168
  br i1 %169, label %170, label %725

; <label>:170                                     ; preds = %153
  %171 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.i32 %171, 1
  %173 = add i32 %172, -1
  %174 = fmul fast float %164, %56
  %175 = fadd fast float %174, %40
  %176 = fmul fast float %164, %55
  %177 = fadd fast float %176, %47
  %178 = fmul fast float %164, %54
  %179 = fadd fast float %178, %46
  br label %180

; <label>:180                                     ; preds = %707, %170
  %181 = phi i32 [ %544, %707 ], [ undef, %170 ]
  %182 = phi float [ %545, %707 ], [ undef, %170 ]
  %183 = phi float [ %708, %707 ], [ 1.000000e+00, %170 ]
  %184 = phi float [ %717, %707 ], [ %179, %170 ]
  %185 = phi float [ %718, %707 ], [ %177, %170 ]
  %186 = phi float [ %719, %707 ], [ %175, %170 ]
  %187 = phi float [ %713, %707 ], [ %164, %170 ]
  %188 = phi i32 [ %368, %707 ], [ %173, %170 ]
  %189 = phi i32 [ %709, %707 ], [ 0, %170 ]
  %190 = phi float [ %710, %707 ], [ 0.000000e+00, %170 ]
  %191 = phi float [ %711, %707 ], [ 0.000000e+00, %170 ]
  %192 = phi float [ %712, %707 ], [ 0.000000e+00, %170 ]
  %193 = fsub fast float -0.000000e+00, %185
  %194 = fsub fast float -0.000000e+00, %184
  %195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %196 = extractvalue %dx.types.CBufRet.f32 %195, 1
  %197 = icmp eq i32 %125, 0
  br i1 %197, label %366, label %198, !dx.controlflow.hints !27

; <label>:198                                     ; preds = %180
  %199 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %200 = extractvalue %dx.types.CBufRet.i32 %199, 1
  %201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %202 = extractvalue %dx.types.CBufRet.f32 %201, 1
  %203 = fcmp fast ogt float %202, %187
  br i1 %203, label %204, label %206, !dx.controlflow.hints !28

; <label>:204                                     ; preds = %198
  %205 = fsub fast float %202, %187
  br label %356

; <label>:206                                     ; preds = %198
  %207 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %208 = extractvalue %dx.types.CBufRet.i32 %207, 3
  %209 = icmp eq i32 %208, 0
  %210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = extractvalue %dx.types.CBufRet.f32 %210, 2
  %212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.f32 %212, 2
  %214 = fsub fast float %211, %186
  %215 = fadd fast float %214, %213
  %216 = fsub fast float 0xC7EFFFFFE0000000, %186
  br i1 %209, label %224, label %217, !dx.controlflow.hints !21

; <label>:217                                     ; preds = %206
  %218 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %194, float %193, float %215)  ; Dot3(ax,ay,az,bx,by,bz)
  %219 = fmul fast float %137, %218
  %220 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %194, float %193, float %216)  ; Dot3(ax,ay,az,bx,by,bz)
  %221 = fmul fast float %137, %220
  %222 = call float @dx.op.binary.f32(i32 36, float %219, float %221)  ; FMin(a,b)
  %223 = call float @dx.op.binary.f32(i32 35, float %219, float %221)  ; FMax(a,b)
  br label %257

; <label>:224                                     ; preds = %206
  %225 = extractvalue %dx.types.CBufRet.f32 %210, 0
  %226 = extractvalue %dx.types.CBufRet.f32 %210, 1
  %227 = extractvalue %dx.types.CBufRet.f32 %212, 0
  %228 = extractvalue %dx.types.CBufRet.f32 %212, 1
  %229 = fdiv fast float 1.000000e+00, %54
  %230 = fdiv fast float 1.000000e+00, %55
  %231 = fdiv fast float 1.000000e+00, %56
  %232 = fsub fast float %225, %184
  %233 = fmul fast float %229, %232
  %234 = fadd fast float %232, %227
  %235 = fmul fast float %234, %229
  %236 = call float @dx.op.binary.f32(i32 36, float %233, float %235)  ; FMin(a,b)
  %237 = call float @dx.op.binary.f32(i32 35, float %233, float %235)  ; FMax(a,b)
  %238 = fsub fast float %226, %185
  %239 = fmul fast float %230, %238
  %240 = fadd fast float %238, %228
  %241 = fmul fast float %240, %230
  %242 = call float @dx.op.binary.f32(i32 36, float %239, float %241)  ; FMin(a,b)
  %243 = call float @dx.op.binary.f32(i32 35, float %236, float %242)  ; FMax(a,b)
  %244 = call float @dx.op.binary.f32(i32 35, float %239, float %241)  ; FMax(a,b)
  %245 = call float @dx.op.binary.f32(i32 36, float %237, float %244)  ; FMin(a,b)
  %246 = fmul fast float %231, %216
  %247 = fmul fast float %231, %215
  %248 = call float @dx.op.binary.f32(i32 36, float %246, float %247)  ; FMin(a,b)
  %249 = call float @dx.op.binary.f32(i32 35, float %243, float %248)  ; FMax(a,b)
  %250 = call float @dx.op.binary.f32(i32 35, float %246, float %247)  ; FMax(a,b)
  %251 = call float @dx.op.binary.f32(i32 36, float %245, float %250)  ; FMin(a,b)
  %252 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %249)  ; FMax(a,b)
  %253 = fcmp fast ult float %251, %252
  br i1 %253, label %257, label %254, !dx.controlflow.hints !22

; <label>:254                                     ; preds = %224
  %255 = call float @dx.op.binary.f32(i32 36, float %249, float %251)  ; FMin(a,b)
  %256 = call float @dx.op.binary.f32(i32 35, float %249, float %251)  ; FMax(a,b)
  br label %257

; <label>:257                                     ; preds = %254, %224, %217
  %258 = phi float [ %222, %217 ], [ %255, %254 ], [ 0.000000e+00, %224 ]
  %259 = phi float [ %223, %217 ], [ %256, %254 ], [ 0.000000e+00, %224 ]
  %260 = fcmp fast ogt float %258, 0.000000e+00
  br i1 %260, label %356, label %261, !dx.controlflow.hints !29

; <label>:261                                     ; preds = %257
  %262 = fcmp fast ugt float %259, 0.000000e+00
  br i1 %262, label %263, label %356, !dx.controlflow.hints !30

; <label>:263                                     ; preds = %261
  %264 = icmp sgt i32 %188, 0
  br i1 %264, label %265, label %350

; <label>:265                                     ; preds = %263
  br label %266

; <label>:266                                     ; preds = %346, %265
  %267 = phi i32 [ %347, %346 ], [ %188, %265 ]
  %268 = sitofp i32 %267 to float
  %269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %270 = extractvalue %dx.types.CBufRet.f32 %269, 0
  %271 = extractvalue %dx.types.CBufRet.f32 %269, 1
  %272 = fsub fast float %184, %270
  %273 = fsub fast float %185, %271
  %274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %275 = extractvalue %dx.types.CBufRet.f32 %274, 0
  %276 = extractvalue %dx.types.CBufRet.f32 %274, 1
  %277 = fmul fast float %272, %275
  %278 = fmul fast float %273, %276
  %279 = fsub fast float 1.000000e+00, %278
  %280 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %281 = extractvalue %dx.types.CBufRet.i32 %280, 3
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %289, label %283, !dx.controlflow.hints !31

; <label>:283                                     ; preds = %266
  %284 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %277, float %279, float undef, float undef, i32 0, i32 0, i32 undef, float %268)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %285 = extractvalue %dx.types.ResRet.f32 %284, 0
  %286 = extractvalue %dx.types.ResRet.f32 %284, 1
  %287 = extractvalue %dx.types.ResRet.f32 %284, 2
  %288 = extractvalue %dx.types.ResRet.f32 %284, 3
  br label %295

; <label>:289                                     ; preds = %266
  %290 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %277, float %279, float undef, float undef, i32 0, i32 0, i32 undef, float %268)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %291 = extractvalue %dx.types.ResRet.f32 %290, 0
  %292 = extractvalue %dx.types.ResRet.f32 %290, 1
  %293 = extractvalue %dx.types.ResRet.f32 %290, 2
  %294 = extractvalue %dx.types.ResRet.f32 %290, 3
  br label %295

; <label>:295                                     ; preds = %289, %283
  %296 = phi float [ %285, %283 ], [ %291, %289 ]
  %297 = phi float [ %286, %283 ], [ %292, %289 ]
  %298 = phi float [ %287, %283 ], [ %293, %289 ]
  %299 = phi float [ %288, %283 ], [ %294, %289 ]
  %300 = extractvalue %dx.types.CBufRet.f32 %274, 3
  %301 = fmul fast float %300, %296
  %302 = extractvalue %dx.types.CBufRet.f32 %269, 2
  %303 = fadd fast float %301, %302
  %304 = fmul fast float %300, %297
  %305 = fadd fast float %304, %302
  %306 = fmul fast float %300, %298
  %307 = fadd fast float %306, %302
  %308 = and i32 %267, 31
  %309 = shl i32 1, %308
  %310 = uitofp i32 %309 to float
  %311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %312 = extractvalue %dx.types.CBufRet.f32 %311, 3
  %313 = fdiv fast float 1.000000e+00, %312
  %314 = fmul fast float %313, %310
  %315 = fmul fast float %314, %56
  %316 = fadd fast float %315, %186
  %317 = fcmp fast oeq float %299, 0.000000e+00
  %318 = fcmp fast ogt float %186, %305
  %319 = fcmp fast ogt float %316, %305
  %320 = and i1 %318, %319
  %321 = or i1 %317, %320
  br i1 %321, label %322, label %326, !dx.controlflow.hints !32

; <label>:322                                     ; preds = %295
  %323 = add nsw i32 %267, 1
  %324 = add nsw i32 %200, -1
  %325 = call i32 @dx.op.binary.i32(i32 38, i32 %323, i32 %324)  ; IMin(a,b)
  br label %356

; <label>:326                                     ; preds = %295
  %327 = fcmp fast olt float %186, %307
  %328 = fcmp fast olt float %316, %307
  %329 = and i1 %327, %328
  br i1 %329, label %330, label %334, !dx.controlflow.hints !33

; <label>:330                                     ; preds = %326
  %331 = add nsw i32 %267, 1
  %332 = add nsw i32 %200, -1
  %333 = call i32 @dx.op.binary.i32(i32 38, i32 %331, i32 %332)  ; IMin(a,b)
  br label %356

; <label>:334                                     ; preds = %326
  %335 = fcmp fast olt float %186, %303
  %336 = fcmp fast olt float %316, %303
  %337 = and i1 %335, %336
  br i1 %337, label %338, label %346, !dx.controlflow.hints !34

; <label>:338                                     ; preds = %334
  %339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %340 = extractvalue %dx.types.CBufRet.f32 %339, 3
  %341 = extractvalue %dx.types.CBufRet.f32 %274, 2
  %342 = fcmp fast une float %340, %341
  br i1 %342, label %343, label %350, !dx.controlflow.hints !35

; <label>:343                                     ; preds = %338
  %344 = fsub fast float %186, %307
  %345 = call float @dx.op.binary.f32(i32 36, float %314, float %344)  ; FMin(a,b)
  br label %350

; <label>:346                                     ; preds = %334
  %347 = add nsw i32 %267, -1
  %348 = icmp sgt i32 %267, 1
  br i1 %348, label %266, label %349

; <label>:349                                     ; preds = %346
  br label %350

; <label>:350                                     ; preds = %349, %343, %338, %263
  %351 = phi float [ %345, %343 ], [ %314, %338 ], [ 0.000000e+00, %263 ], [ 0.000000e+00, %349 ]
  %352 = phi i32 [ %267, %343 ], [ %267, %338 ], [ %188, %263 ], [ %347, %349 ]
  %353 = add nsw i32 %352, 1
  %354 = add nsw i32 %200, -1
  %355 = call i32 @dx.op.binary.i32(i32 38, i32 %353, i32 %354)  ; IMin(a,b)
  br label %356

; <label>:356                                     ; preds = %350, %330, %322, %261, %257, %204
  %357 = phi float [ %205, %204 ], [ %314, %322 ], [ %314, %330 ], [ %351, %350 ], [ 0x47EFFFFFE0000000, %261 ], [ %258, %257 ]
  %358 = phi i32 [ %125, %204 ], [ %125, %322 ], [ %125, %330 ], [ %125, %350 ], [ 0, %261 ], [ %125, %257 ]
  %359 = phi i32 [ %188, %204 ], [ %325, %322 ], [ %333, %330 ], [ %355, %350 ], [ %188, %261 ], [ %188, %257 ]
  %360 = icmp ne i32 %358, 0
  %361 = zext i1 %360 to i32
  %362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %363 = extractvalue %dx.types.CBufRet.f32 %362, 2
  %364 = call float @dx.op.binary.f32(i32 35, float %357, float %363)  ; FMax(a,b)
  %365 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %364)  ; FMin(a,b)
  br label %366

; <label>:366                                     ; preds = %356, %180
  %367 = phi float [ %365, %356 ], [ 0x47EFFFFFE0000000, %180 ]
  %368 = phi i32 [ %359, %356 ], [ %188, %180 ]
  %369 = phi i32 [ %361, %356 ], [ 0, %180 ]
  %370 = icmp eq i32 %154, 0
  br i1 %370, label %543, label %371, !dx.controlflow.hints !36

; <label>:371                                     ; preds = %366
  %372 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %373 = extractvalue %dx.types.CBufRet.i32 %372, 1
  %374 = and i32 %373, 1
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %376, label %533, !dx.controlflow.hints !37

; <label>:376                                     ; preds = %371
  %377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %378 = extractvalue %dx.types.CBufRet.f32 %377, 2
  %379 = extractvalue %dx.types.CBufRet.f32 %377, 3
  %380 = fmul fast float %378, %184
  %381 = fmul fast float %379, %185
  %382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %383 = extractvalue %dx.types.CBufRet.f32 %382, 0
  %384 = extractvalue %dx.types.CBufRet.f32 %382, 1
  %385 = fadd fast float %380, %383
  %386 = fadd fast float %381, %384
  %387 = call float @dx.op.unary.f32(i32 7, float %385)  ; Saturate(value)
  %388 = call float @dx.op.unary.f32(i32 7, float %386)  ; Saturate(value)
  %389 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %6, float %387, float %388, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %390 = extractvalue %dx.types.ResRet.f32 %389, 0
  %391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %392 = extractvalue %dx.types.CBufRet.f32 %391, 0
  %393 = fmul fast float %392, %390
  %394 = fsub fast float %385, %387
  %395 = fsub fast float %386, %388
  %396 = extractvalue %dx.types.CBufRet.f32 %377, 0
  %397 = extractvalue %dx.types.CBufRet.f32 %377, 1
  %398 = fmul fast float %396, %394
  %399 = fmul fast float %397, %395
  %400 = fmul fast float %398, %398
  %401 = fmul fast float %399, %399
  %402 = fadd fast float %400, %401
  %403 = call float @dx.op.unary.f32(i32 24, float %402)  ; Sqrt(value)
  %404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %405 = extractvalue %dx.types.CBufRet.f32 %404, 3
  %406 = fmul fast float %405, %403
  %407 = call float @dx.op.unary.f32(i32 7, float %406)  ; Saturate(value)
  %408 = extractvalue %dx.types.CBufRet.f32 %404, 2
  %409 = fsub fast float %408, %393
  %410 = fmul fast float %409, %407
  %411 = extractvalue %dx.types.CBufRet.f32 %391, 1
  %412 = fsub fast float %186, %393
  %413 = fsub fast float %412, %411
  %414 = fsub fast float %413, %410
  %415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %416 = extractvalue %dx.types.CBufRet.f32 %415, 2
  %417 = fsub fast float %414, %416
  %418 = fcmp fast olt float %417, 0.000000e+00
  %419 = call float @dx.op.unary.f32(i32 6, float %417)  ; FAbs(value)
  %420 = extractvalue %dx.types.CBufRet.i32 %372, 0
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %475, label %422

; <label>:422                                     ; preds = %376
  br label %423

; <label>:423                                     ; preds = %462, %422
  %424 = phi i32 [ %468, %462 ], [ 1, %422 ]
  %425 = phi float [ %470, %462 ], [ 0x47EFFFFFE0000000, %422 ]
  %426 = phi i32 [ %471, %462 ], [ 0, %422 ]
  %427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %428 = extractvalue %dx.types.CBufRet.f32 %427, 1
  %429 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %430 = extractvalue %dx.types.CBufRet.i32 %429, 1
  %431 = and i32 %430, 8
  %432 = icmp eq i32 %431, 0
  %433 = fcmp fast ogt float %428, %414
  %434 = or i1 %433, %432
  %435 = add i32 %426, 171
  %436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 %435)  ; CBufferLoadLegacy(handle,regIndex)
  %437 = extractvalue %dx.types.CBufRet.f32 %436, 0
  %438 = extractvalue %dx.types.CBufRet.f32 %436, 1
  %439 = extractvalue %dx.types.CBufRet.f32 %436, 2
  br i1 %434, label %440, label %446, !dx.controlflow.hints !38

; <label>:440                                     ; preds = %423
  %441 = fsub fast float %437, %184
  %442 = fsub fast float %438, %185
  %443 = fmul fast float %441, %441
  %444 = fmul fast float %442, %442
  %445 = fadd fast float %443, %444
  br label %462

; <label>:446                                     ; preds = %423
  %447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %448 = extractvalue %dx.types.CBufRet.f32 %447, 2
  %449 = extractvalue %dx.types.CBufRet.f32 %427, 2
  %450 = fmul fast float %449, %448
  %451 = fsub fast float %450, %428
  %452 = fdiv fast float %439, %451
  %453 = fsub fast float %184, %437
  %454 = fsub fast float %185, %438
  %455 = fsub fast float %414, %428
  %456 = fmul fast float %452, %455
  %457 = fmul fast float %453, %453
  %458 = fmul fast float %454, %454
  %459 = fadd fast float %457, %458
  %460 = fmul fast float %456, %456
  %461 = fadd fast float %459, %460
  br label %462

; <label>:462                                     ; preds = %446, %440
  %463 = phi float [ %445, %440 ], [ %461, %446 ]
  %464 = call float @dx.op.unary.f32(i32 24, float %463)  ; Sqrt(value)
  %465 = fsub float %439, %464
  %466 = fcmp fast olt float %465, 0.000000e+00
  %467 = zext i1 %466 to i32
  %468 = and i32 %467, %424
  %469 = call float @dx.op.unary.f32(i32 6, float %465)  ; FAbs(value)
  %470 = call float @dx.op.binary.f32(i32 36, float %425, float %469)  ; FMin(a,b)
  %471 = add i32 %426, 1
  %472 = extractvalue %dx.types.CBufRet.i32 %429, 0
  %473 = icmp ult i32 %471, %472
  br i1 %473, label %423, label %474

; <label>:474                                     ; preds = %462
  br label %475

; <label>:475                                     ; preds = %474, %376
  %476 = phi i32 [ 1, %376 ], [ %468, %474 ]
  %477 = phi float [ 0x47EFFFFFE0000000, %376 ], [ %470, %474 ]
  br label %478

; <label>:478                                     ; preds = %478, %475
  %479 = phi i32 [ %476, %475 ], [ %518, %478 ]
  %480 = phi float [ 0x47EFFFFFE0000000, %475 ], [ %520, %478 ]
  %481 = phi i32 [ 0, %475 ], [ %521, %478 ]
  %482 = add nuw nsw i32 %481, 191
  %483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 %482)  ; CBufferLoadLegacy(handle,regIndex)
  %484 = extractvalue %dx.types.CBufRet.f32 %483, 0
  %485 = extractvalue %dx.types.CBufRet.f32 %483, 1
  %486 = extractvalue %dx.types.CBufRet.f32 %483, 2
  %487 = add nuw nsw i32 %481, 195
  %488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 %487)  ; CBufferLoadLegacy(handle,regIndex)
  %489 = extractvalue %dx.types.CBufRet.f32 %488, 0
  %490 = extractvalue %dx.types.CBufRet.f32 %488, 1
  %491 = extractvalue %dx.types.CBufRet.f32 %488, 2
  %492 = fsub fast float %184, %484
  %493 = fsub fast float %185, %485
  %494 = fsub fast float %414, %486
  %495 = call float @dx.op.unary.f32(i32 6, float %492)  ; FAbs(value)
  %496 = call float @dx.op.unary.f32(i32 6, float %493)  ; FAbs(value)
  %497 = call float @dx.op.unary.f32(i32 6, float %494)  ; FAbs(value)
  %498 = fsub fast float %495, %489
  %499 = fsub fast float %496, %490
  %500 = fsub fast float %497, %491
  %501 = call float @dx.op.binary.f32(i32 35, float %498, float 0.000000e+00)  ; FMax(a,b)
  %502 = call float @dx.op.binary.f32(i32 35, float %499, float 0.000000e+00)  ; FMax(a,b)
  %503 = call float @dx.op.binary.f32(i32 35, float %500, float 0.000000e+00)  ; FMax(a,b)
  %504 = fmul fast float %501, %501
  %505 = fmul fast float %502, %502
  %506 = fadd fast float %505, %504
  %507 = fmul fast float %503, %503
  %508 = fadd fast float %506, %507
  %509 = call float @dx.op.unary.f32(i32 24, float %508)  ; Sqrt(value)
  %510 = call float @dx.op.binary.f32(i32 35, float %499, float %500)  ; FMax(a,b)
  %511 = call float @dx.op.binary.f32(i32 35, float %498, float %510)  ; FMax(a,b)
  %512 = call float @dx.op.binary.f32(i32 36, float %511, float 0.000000e+00)  ; FMin(a,b)
  %513 = fadd fast float %512, %509
  %514 = fsub fast float -0.000000e+00, %513
  %515 = fcmp ogt float %513, -0.000000e+00
  %516 = icmp ne i32 %479, 0
  %517 = and i1 %516, %515
  %518 = zext i1 %517 to i32
  %519 = call float @dx.op.unary.f32(i32 6, float %514)  ; FAbs(value)
  %520 = call float @dx.op.binary.f32(i32 36, float %480, float %519)  ; FMin(a,b)
  %521 = add nuw nsw i32 %481, 1
  %522 = icmp eq i32 %521, 4
  br i1 %522, label %523, label %478

; <label>:523                                     ; preds = %478
  %524 = call float @dx.op.binary.f32(i32 36, float %419, float %520)  ; FMin(a,b)
  %525 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %526 = extractvalue %dx.types.CBufRet.i32 %525, 1
  %527 = and i32 %526, 2
  %528 = icmp ne i32 %527, 0
  %529 = xor i1 %517, %528
  %530 = call float @dx.op.binary.f32(i32 36, float %524, float %477)  ; FMin(a,b)
  %531 = and i1 %529, %418
  %532 = zext i1 %531 to i32
  br label %533

; <label>:533                                     ; preds = %523, %371
  %534 = phi i32 [ %181, %371 ], [ %532, %523 ]
  %535 = phi float [ 0.000000e+00, %371 ], [ %530, %523 ]
  %536 = phi float [ %186, %371 ], [ %414, %523 ]
  %537 = icmp ne i32 %534, 0
  %538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %539 = extractvalue %dx.types.CBufRet.f32 %538, 3
  %540 = call float @dx.op.binary.f32(i32 35, float %535, float %539)  ; FMax(a,b)
  %541 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %540)  ; FMin(a,b)
  %542 = zext i1 %537 to i32
  br label %543

; <label>:543                                     ; preds = %533, %366
  %544 = phi i32 [ %534, %533 ], [ %181, %366 ]
  %545 = phi float [ %536, %533 ], [ %182, %366 ]
  %546 = phi float [ %541, %533 ], [ 0x47EFFFFFE0000000, %366 ]
  %547 = phi i32 [ %542, %533 ], [ 0, %366 ]
  %548 = extractvalue %dx.types.CBufRet.f32 %195, 2
  %549 = fmul fast float %548, %187
  %550 = call float @dx.op.unary.f32(i32 23, float %549)  ; Log(value)
  %551 = fmul fast float %550, 0x3FE62E4300000000
  %552 = call float @dx.op.binary.f32(i32 35, float %551, float 1.000000e+00)  ; FMax(a,b)
  %553 = fmul fast float %552, %546
  %554 = call float @dx.op.binary.f32(i32 36, float %553, float %367)  ; FMin(a,b)
  %555 = call float @dx.op.binary.f32(i32 35, float %554, float %196)  ; FMax(a,b)
  %556 = fsub fast float %157, %187
  %557 = fadd fast float %556, 0x3F1A36E2E0000000
  %558 = call float @dx.op.binary.f32(i32 36, float %557, float %555)  ; FMin(a,b)
  %559 = icmp eq i32 %369, 0
  br i1 %559, label %656, label %560, !dx.controlflow.hints !39

; <label>:560                                     ; preds = %543
  %561 = fcmp fast olt float %557, %555
  %562 = fmul fast float %27, %56
  %563 = fmul fast float %562, %558
  %564 = fadd fast float %563, %186
  %565 = fmul fast float %28, %56
  %566 = fmul fast float %565, %558
  %567 = fadd fast float %566, %186
  %568 = fmul fast float %29, %56
  %569 = fmul fast float %568, %558
  %570 = fadd fast float %569, %186
  br i1 %561, label %571, label %576, !dx.controlflow.hints !40

; <label>:571                                     ; preds = %560
  %572 = fmul fast float %558, %54
  %573 = fmul fast float %558, %55
  %574 = fadd fast float %572, %184
  %575 = fadd fast float %573, %185
  br label %576

; <label>:576                                     ; preds = %571, %560
  %577 = phi float [ %574, %571 ], [ %184, %560 ]
  %578 = phi float [ %575, %571 ], [ %185, %560 ]
  %579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %580 = extractvalue %dx.types.CBufRet.f32 %579, 0
  %581 = extractvalue %dx.types.CBufRet.f32 %579, 1
  %582 = fsub fast float %577, %580
  %583 = fsub fast float %578, %581
  %584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %585 = extractvalue %dx.types.CBufRet.f32 %584, 0
  %586 = extractvalue %dx.types.CBufRet.f32 %584, 1
  %587 = fmul fast float %582, %585
  %588 = fmul fast float %583, %586
  %589 = fsub fast float 1.000000e+00, %588
  %590 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %591 = extractvalue %dx.types.CBufRet.i32 %590, 3
  %592 = icmp eq i32 %591, 0
  br i1 %592, label %599, label %593, !dx.controlflow.hints !31

; <label>:593                                     ; preds = %576
  %594 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %587, float %589, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %595 = extractvalue %dx.types.ResRet.f32 %594, 0
  %596 = extractvalue %dx.types.ResRet.f32 %594, 1
  %597 = extractvalue %dx.types.ResRet.f32 %594, 2
  %598 = extractvalue %dx.types.ResRet.f32 %594, 3
  br label %605

; <label>:599                                     ; preds = %576
  %600 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %587, float %589, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %601 = extractvalue %dx.types.ResRet.f32 %600, 0
  %602 = extractvalue %dx.types.ResRet.f32 %600, 1
  %603 = extractvalue %dx.types.ResRet.f32 %600, 2
  %604 = extractvalue %dx.types.ResRet.f32 %600, 3
  br label %605

; <label>:605                                     ; preds = %599, %593
  %606 = phi float [ %595, %593 ], [ %601, %599 ]
  %607 = phi float [ %596, %593 ], [ %602, %599 ]
  %608 = phi float [ %597, %593 ], [ %603, %599 ]
  %609 = phi float [ %598, %593 ], [ %604, %599 ]
  %610 = extractvalue %dx.types.CBufRet.f32 %584, 3
  %611 = fmul fast float %610, %607
  %612 = fmul fast float %611, %606
  %613 = fsub fast float %611, %612
  %614 = fcmp fast ole float %613, 0.000000e+00
  %615 = extractvalue %dx.types.CBufRet.f32 %579, 2
  %616 = fadd fast float %612, %615
  %617 = fmul fast float %610, %608
  %618 = fadd fast float %617, %615
  %619 = fdiv fast float 1.000000e+00, %613
  %620 = select i1 %614, float 1.000000e+06, float %619
  %621 = fsub fast float %564, %616
  %622 = fmul fast float %620, %621
  %623 = call float @dx.op.unary.f32(i32 7, float %622)  ; Saturate(value)
  %624 = extractvalue %dx.types.CBufRet.f32 %584, 2
  %625 = fmul fast float %624, %623
  %626 = fsub fast float %624, %625
  %627 = fcmp fast olt float %564, %618
  %628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %629 = extractvalue %dx.types.CBufRet.f32 %628, 3
  %630 = select i1 %627, float %629, float 1.000000e+00
  %631 = fmul fast float %626, %630
  %632 = fsub fast float %567, %616
  %633 = fmul fast float %620, %632
  %634 = call float @dx.op.unary.f32(i32 7, float %633)  ; Saturate(value)
  %635 = fmul fast float %624, %634
  %636 = fsub fast float %624, %635
  %637 = fcmp fast olt float %567, %618
  %638 = select i1 %637, float %629, float 1.000000e+00
  %639 = fmul fast float %636, %638
  %640 = fadd fast float %639, %631
  %641 = fsub fast float %570, %616
  %642 = fmul fast float %620, %641
  %643 = call float @dx.op.unary.f32(i32 7, float %642)  ; Saturate(value)
  %644 = fmul fast float %624, %643
  %645 = fsub fast float %624, %644
  %646 = fcmp fast olt float %570, %618
  %647 = select i1 %646, float %629, float 1.000000e+00
  %648 = fmul fast float %645, %647
  %649 = fadd fast float %640, %648
  %650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %651 = extractvalue %dx.types.CBufRet.f32 %650, 2
  %652 = fmul fast float %558, 0x3FD5555560000000
  %653 = fmul fast float %652, %609
  %654 = fmul fast float %653, %651
  %655 = fmul fast float %654, %649
  br label %656

; <label>:656                                     ; preds = %605, %543
  %657 = phi float [ %655, %605 ], [ 0.000000e+00, %543 ]
  %658 = icmp eq i32 %547, 0
  br i1 %658, label %690, label %659, !dx.controlflow.hints !41

; <label>:659                                     ; preds = %656
  %660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %661 = extractvalue %dx.types.CBufRet.f32 %660, 1
  %662 = fsub fast float %558, %661
  %663 = extractvalue %dx.types.CBufRet.f32 %660, 3
  %664 = fmul fast float %662, %663
  %665 = call float @dx.op.unary.f32(i32 7, float %664)  ; Saturate(value)
  %666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %667 = extractvalue %dx.types.CBufRet.f32 %666, 3
  %668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %669 = extractvalue %dx.types.CBufRet.f32 %668, 2
  %670 = fsub fast float %669, %545
  %671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %672 = extractvalue %dx.types.CBufRet.f32 %671, 3
  %673 = fmul fast float %670, %672
  %674 = call float @dx.op.unary.f32(i32 7, float %673)  ; Saturate(value)
  %675 = fmul fast float %674, %667
  %676 = extractvalue %dx.types.CBufRet.f32 %671, 0
  %677 = fsub fast float %187, %676
  %678 = extractvalue %dx.types.CBufRet.f32 %671, 1
  %679 = fmul fast float %677, %678
  %680 = call float @dx.op.unary.f32(i32 7, float %679)  ; Saturate(value)
  %681 = fsub fast float 1.000000e+00, %665
  %682 = fmul fast float %680, %681
  %683 = fadd fast float %682, %665
  %684 = extractvalue %dx.types.CBufRet.f32 %660, 0
  %685 = fsub fast float %675, %684
  %686 = fmul fast float %685, %683
  %687 = fadd fast float %686, %684
  %688 = fmul fast float %687, %558
  %689 = fadd fast float %688, %657
  br label %690

; <label>:690                                     ; preds = %659, %656
  %691 = phi float [ %689, %659 ], [ %657, %656 ]
  %692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %693 = extractvalue %dx.types.CBufRet.f32 %692, 1
  %694 = fcmp fast ogt float %691, %693
  br i1 %694, label %695, label %707, !dx.controlflow.hints !42

; <label>:695                                     ; preds = %690
  %696 = fmul fast float %691, 0xBFF7154760000000
  %697 = call float @dx.op.unary.f32(i32 21, float %696)  ; Exp(value)
  %698 = call float @dx.op.unary.f32(i32 7, float %697)  ; Saturate(value)
  %699 = icmp eq i32 %189, 0
  br i1 %699, label %700, label %701, !dx.controlflow.hints !43

; <label>:700                                     ; preds = %695
  br label %701

; <label>:701                                     ; preds = %700, %695
  %702 = phi i32 [ %189, %695 ], [ 1, %700 ]
  %703 = phi float [ %190, %695 ], [ %187, %700 ]
  %704 = fadd fast float %558, %191
  %705 = fadd fast float %691, %192
  %706 = fmul fast float %698, %183
  br label %707

; <label>:707                                     ; preds = %701, %690
  %708 = phi float [ %706, %701 ], [ %183, %690 ]
  %709 = phi i32 [ %702, %701 ], [ %189, %690 ]
  %710 = phi float [ %703, %701 ], [ %190, %690 ]
  %711 = phi float [ %704, %701 ], [ %191, %690 ]
  %712 = phi float [ %705, %701 ], [ %192, %690 ]
  %713 = fadd fast float %558, %187
  %714 = fmul fast float %558, %54
  %715 = fmul fast float %558, %55
  %716 = fmul fast float %558, %56
  %717 = fadd fast float %714, %184
  %718 = fadd fast float %715, %185
  %719 = fadd fast float %716, %186
  %720 = fcmp fast olt float %713, %157
  %721 = extractvalue %dx.types.CBufRet.f32 %692, 2
  %722 = fcmp fast olt float %721, %708
  %723 = and i1 %720, %722
  br i1 %723, label %180, label %724

; <label>:724                                     ; preds = %707
  br label %725

; <label>:725                                     ; preds = %724, %153
  %726 = phi float [ 0.000000e+00, %153 ], [ %710, %724 ]
  %727 = phi float [ 0.000000e+00, %153 ], [ %711, %724 ]
  %728 = phi float [ 0.000000e+00, %153 ], [ %712, %724 ]
  %729 = extractvalue %dx.types.CBufRet.f32 %48, 3
  %730 = fmul fast float %729, %726
  %731 = fdiv fast float 1.000000e+00, %727
  %732 = fmul fast float %731, %728
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %9, i32 %10, i32 undef, float %730, float %732, float %728, float %730, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!18 = !{void ()* @cs_fog_raymarching_heightmap_brfog, !"cs_fog_raymarching_heightmap_brfog", null, !4, !19}
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
!31 = distinct !{!31, !"dx.controlflow.hints", i32 1}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 1}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 1}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 1}

