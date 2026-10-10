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
; shader hash: f9e2e79300da7a95e7016236a4af9461
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

define void @cs_fog_raymarching_air_heightmap() {
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
  %126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %127 = extractvalue %dx.types.CBufRet.f32 %126, 3
  %128 = fsub fast float -0.000000e+00, %45
  %129 = fsub fast float -0.000000e+00, %46
  %130 = fsub fast float %127, %39
  %131 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %128, float %129, float %130)  ; Dot3(ax,ay,az,bx,by,bz)
  %132 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %133 = fdiv fast float 1.000000e+00, %132
  %134 = fmul fast float %133, %131
  %135 = fcmp fast olt float %134, 0.000000e+00
  %136 = fcmp olt float %52, -0.000000e+00
  %137 = and i1 %136, %135
  br i1 %137, label %142, label %138, !dx.controlflow.hints !23

; <label>:138                                     ; preds = %122
  %139 = fcmp ogt float %52, -0.000000e+00
  br i1 %139, label %140, label %142, !dx.controlflow.hints !24

; <label>:140                                     ; preds = %138
  %141 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %134)  ; FMax(a,b)
  br label %142

; <label>:142                                     ; preds = %140, %138, %122
  %143 = phi float [ 0.000000e+00, %122 ], [ %141, %140 ], [ 0.000000e+00, %138 ]
  %144 = phi float [ 0.000000e+00, %122 ], [ 0x47EFFFFFE0000000, %140 ], [ %134, %138 ]
  %145 = fcmp fast oeq float %144, 0.000000e+00
  br i1 %145, label %149, label %146, !dx.controlflow.hints !25

; <label>:146                                     ; preds = %142
  %147 = call float @dx.op.binary.f32(i32 36, float %125, float %143)  ; FMin(a,b)
  %148 = call float @dx.op.binary.f32(i32 35, float %123, float %144)  ; FMax(a,b)
  br label %149

; <label>:149                                     ; preds = %146, %142
  %150 = phi float [ %148, %146 ], [ %123, %142 ]
  %151 = phi i32 [ 1, %146 ], [ 0, %142 ]
  %152 = phi float [ %147, %146 ], [ %125, %142 ]
  %153 = call float @dx.op.binary.f32(i32 36, float %48, float %150)  ; FMin(a,b)
  %154 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %152)  ; FMax(a,b)
  %155 = extractvalue %dx.types.CBufRet.f32 %126, 1
  %156 = fmul fast float %27, 2.000000e+00
  %157 = fadd fast float %156, -1.000000e+00
  %158 = fmul fast float %155, %157
  %159 = fadd fast float %158, %154
  %160 = fcmp fast olt float %159, %153
  %161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.f32 %161, 2
  %163 = fcmp fast olt float %162, 1.000000e+00
  %164 = and i1 %160, %163
  br i1 %164, label %165, label %569

; <label>:165                                     ; preds = %149
  %166 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.i32 %166, 1
  %168 = add i32 %167, -1
  %169 = fmul fast float %159, %55
  %170 = fadd fast float %169, %39
  %171 = fmul fast float %159, %54
  %172 = fadd fast float %171, %46
  %173 = fmul fast float %159, %53
  %174 = fadd fast float %173, %45
  br label %175

; <label>:175                                     ; preds = %551, %165
  %176 = phi float [ %552, %551 ], [ 1.000000e+00, %165 ]
  %177 = phi float [ %561, %551 ], [ %174, %165 ]
  %178 = phi float [ %562, %551 ], [ %172, %165 ]
  %179 = phi float [ %563, %551 ], [ %170, %165 ]
  %180 = phi float [ %557, %551 ], [ %159, %165 ]
  %181 = phi i32 [ %361, %551 ], [ %168, %165 ]
  %182 = phi i32 [ %553, %551 ], [ 0, %165 ]
  %183 = phi float [ %554, %551 ], [ 0.000000e+00, %165 ]
  %184 = phi float [ %555, %551 ], [ 0.000000e+00, %165 ]
  %185 = phi float [ %556, %551 ], [ 0.000000e+00, %165 ]
  %186 = fsub fast float -0.000000e+00, %178
  %187 = fsub fast float -0.000000e+00, %177
  %188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %189 = extractvalue %dx.types.CBufRet.f32 %188, 1
  %190 = icmp eq i32 %124, 0
  br i1 %190, label %359, label %191, !dx.controlflow.hints !26

; <label>:191                                     ; preds = %175
  %192 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = extractvalue %dx.types.CBufRet.i32 %192, 1
  %194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %195 = extractvalue %dx.types.CBufRet.f32 %194, 1
  %196 = fcmp fast ogt float %195, %180
  br i1 %196, label %197, label %199, !dx.controlflow.hints !27

; <label>:197                                     ; preds = %191
  %198 = fsub fast float %195, %180
  br label %349

; <label>:199                                     ; preds = %191
  %200 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = extractvalue %dx.types.CBufRet.i32 %200, 3
  %202 = icmp eq i32 %201, 0
  %203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %204 = extractvalue %dx.types.CBufRet.f32 %203, 2
  %205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %206 = extractvalue %dx.types.CBufRet.f32 %205, 2
  %207 = fsub fast float %204, %179
  %208 = fadd fast float %207, %206
  %209 = fsub fast float 0xC7EFFFFFE0000000, %179
  br i1 %202, label %217, label %210, !dx.controlflow.hints !20

; <label>:210                                     ; preds = %199
  %211 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %187, float %186, float %208)  ; Dot3(ax,ay,az,bx,by,bz)
  %212 = fmul fast float %133, %211
  %213 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %187, float %186, float %209)  ; Dot3(ax,ay,az,bx,by,bz)
  %214 = fmul fast float %133, %213
  %215 = call float @dx.op.binary.f32(i32 36, float %212, float %214)  ; FMin(a,b)
  %216 = call float @dx.op.binary.f32(i32 35, float %212, float %214)  ; FMax(a,b)
  br label %250

; <label>:217                                     ; preds = %199
  %218 = extractvalue %dx.types.CBufRet.f32 %203, 0
  %219 = extractvalue %dx.types.CBufRet.f32 %203, 1
  %220 = extractvalue %dx.types.CBufRet.f32 %205, 0
  %221 = extractvalue %dx.types.CBufRet.f32 %205, 1
  %222 = fdiv fast float 1.000000e+00, %53
  %223 = fdiv fast float 1.000000e+00, %54
  %224 = fdiv fast float 1.000000e+00, %55
  %225 = fsub fast float %218, %177
  %226 = fmul fast float %222, %225
  %227 = fadd fast float %225, %220
  %228 = fmul fast float %227, %222
  %229 = call float @dx.op.binary.f32(i32 36, float %226, float %228)  ; FMin(a,b)
  %230 = call float @dx.op.binary.f32(i32 35, float %226, float %228)  ; FMax(a,b)
  %231 = fsub fast float %219, %178
  %232 = fmul fast float %223, %231
  %233 = fadd fast float %231, %221
  %234 = fmul fast float %233, %223
  %235 = call float @dx.op.binary.f32(i32 36, float %232, float %234)  ; FMin(a,b)
  %236 = call float @dx.op.binary.f32(i32 35, float %229, float %235)  ; FMax(a,b)
  %237 = call float @dx.op.binary.f32(i32 35, float %232, float %234)  ; FMax(a,b)
  %238 = call float @dx.op.binary.f32(i32 36, float %230, float %237)  ; FMin(a,b)
  %239 = fmul fast float %224, %209
  %240 = fmul fast float %224, %208
  %241 = call float @dx.op.binary.f32(i32 36, float %239, float %240)  ; FMin(a,b)
  %242 = call float @dx.op.binary.f32(i32 35, float %236, float %241)  ; FMax(a,b)
  %243 = call float @dx.op.binary.f32(i32 35, float %239, float %240)  ; FMax(a,b)
  %244 = call float @dx.op.binary.f32(i32 36, float %238, float %243)  ; FMin(a,b)
  %245 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %242)  ; FMax(a,b)
  %246 = fcmp fast ult float %244, %245
  br i1 %246, label %250, label %247, !dx.controlflow.hints !21

; <label>:247                                     ; preds = %217
  %248 = call float @dx.op.binary.f32(i32 36, float %242, float %244)  ; FMin(a,b)
  %249 = call float @dx.op.binary.f32(i32 35, float %242, float %244)  ; FMax(a,b)
  br label %250

; <label>:250                                     ; preds = %247, %217, %210
  %251 = phi float [ %215, %210 ], [ %248, %247 ], [ 0.000000e+00, %217 ]
  %252 = phi float [ %216, %210 ], [ %249, %247 ], [ 0.000000e+00, %217 ]
  %253 = fcmp fast ogt float %251, 0.000000e+00
  br i1 %253, label %349, label %254, !dx.controlflow.hints !28

; <label>:254                                     ; preds = %250
  %255 = fcmp fast ugt float %252, 0.000000e+00
  br i1 %255, label %256, label %349, !dx.controlflow.hints !29

; <label>:256                                     ; preds = %254
  %257 = icmp sgt i32 %181, 0
  br i1 %257, label %258, label %343

; <label>:258                                     ; preds = %256
  br label %259

; <label>:259                                     ; preds = %339, %258
  %260 = phi i32 [ %340, %339 ], [ %181, %258 ]
  %261 = sitofp i32 %260 to float
  %262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %263 = extractvalue %dx.types.CBufRet.f32 %262, 0
  %264 = extractvalue %dx.types.CBufRet.f32 %262, 1
  %265 = fsub fast float %177, %263
  %266 = fsub fast float %178, %264
  %267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %268 = extractvalue %dx.types.CBufRet.f32 %267, 0
  %269 = extractvalue %dx.types.CBufRet.f32 %267, 1
  %270 = fmul fast float %265, %268
  %271 = fmul fast float %266, %269
  %272 = fsub fast float 1.000000e+00, %271
  %273 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %274 = extractvalue %dx.types.CBufRet.i32 %273, 3
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %282, label %276, !dx.controlflow.hints !30

; <label>:276                                     ; preds = %259
  %277 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %270, float %272, float undef, float undef, i32 0, i32 0, i32 undef, float %261)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %278 = extractvalue %dx.types.ResRet.f32 %277, 0
  %279 = extractvalue %dx.types.ResRet.f32 %277, 1
  %280 = extractvalue %dx.types.ResRet.f32 %277, 2
  %281 = extractvalue %dx.types.ResRet.f32 %277, 3
  br label %288

; <label>:282                                     ; preds = %259
  %283 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %5, float %270, float %272, float undef, float undef, i32 0, i32 0, i32 undef, float %261)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %284 = extractvalue %dx.types.ResRet.f32 %283, 0
  %285 = extractvalue %dx.types.ResRet.f32 %283, 1
  %286 = extractvalue %dx.types.ResRet.f32 %283, 2
  %287 = extractvalue %dx.types.ResRet.f32 %283, 3
  br label %288

; <label>:288                                     ; preds = %282, %276
  %289 = phi float [ %278, %276 ], [ %284, %282 ]
  %290 = phi float [ %279, %276 ], [ %285, %282 ]
  %291 = phi float [ %280, %276 ], [ %286, %282 ]
  %292 = phi float [ %281, %276 ], [ %287, %282 ]
  %293 = extractvalue %dx.types.CBufRet.f32 %267, 3
  %294 = fmul fast float %293, %289
  %295 = extractvalue %dx.types.CBufRet.f32 %262, 2
  %296 = fadd fast float %294, %295
  %297 = fmul fast float %293, %290
  %298 = fadd fast float %297, %295
  %299 = fmul fast float %293, %291
  %300 = fadd fast float %299, %295
  %301 = and i32 %260, 31
  %302 = shl i32 1, %301
  %303 = uitofp i32 %302 to float
  %304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %305 = extractvalue %dx.types.CBufRet.f32 %304, 3
  %306 = fdiv fast float 1.000000e+00, %305
  %307 = fmul fast float %306, %303
  %308 = fmul fast float %307, %55
  %309 = fadd fast float %308, %179
  %310 = fcmp fast oeq float %292, 0.000000e+00
  %311 = fcmp fast ogt float %179, %298
  %312 = fcmp fast ogt float %309, %298
  %313 = and i1 %311, %312
  %314 = or i1 %310, %313
  br i1 %314, label %315, label %319, !dx.controlflow.hints !31

; <label>:315                                     ; preds = %288
  %316 = add nsw i32 %260, 1
  %317 = add nsw i32 %193, -1
  %318 = call i32 @dx.op.binary.i32(i32 38, i32 %316, i32 %317)  ; IMin(a,b)
  br label %349

; <label>:319                                     ; preds = %288
  %320 = fcmp fast olt float %179, %300
  %321 = fcmp fast olt float %309, %300
  %322 = and i1 %320, %321
  br i1 %322, label %323, label %327, !dx.controlflow.hints !32

; <label>:323                                     ; preds = %319
  %324 = add nsw i32 %260, 1
  %325 = add nsw i32 %193, -1
  %326 = call i32 @dx.op.binary.i32(i32 38, i32 %324, i32 %325)  ; IMin(a,b)
  br label %349

; <label>:327                                     ; preds = %319
  %328 = fcmp fast olt float %179, %296
  %329 = fcmp fast olt float %309, %296
  %330 = and i1 %328, %329
  br i1 %330, label %331, label %339, !dx.controlflow.hints !33

; <label>:331                                     ; preds = %327
  %332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %333 = extractvalue %dx.types.CBufRet.f32 %332, 3
  %334 = extractvalue %dx.types.CBufRet.f32 %267, 2
  %335 = fcmp fast une float %333, %334
  br i1 %335, label %336, label %343, !dx.controlflow.hints !34

; <label>:336                                     ; preds = %331
  %337 = fsub fast float %179, %300
  %338 = call float @dx.op.binary.f32(i32 36, float %307, float %337)  ; FMin(a,b)
  br label %343

; <label>:339                                     ; preds = %327
  %340 = add nsw i32 %260, -1
  %341 = icmp sgt i32 %260, 1
  br i1 %341, label %259, label %342

; <label>:342                                     ; preds = %339
  br label %343

; <label>:343                                     ; preds = %342, %336, %331, %256
  %344 = phi float [ %338, %336 ], [ %307, %331 ], [ 0.000000e+00, %256 ], [ 0.000000e+00, %342 ]
  %345 = phi i32 [ %260, %336 ], [ %260, %331 ], [ %181, %256 ], [ %340, %342 ]
  %346 = add nsw i32 %345, 1
  %347 = add nsw i32 %193, -1
  %348 = call i32 @dx.op.binary.i32(i32 38, i32 %346, i32 %347)  ; IMin(a,b)
  br label %349

; <label>:349                                     ; preds = %343, %323, %315, %254, %250, %197
  %350 = phi float [ %198, %197 ], [ %307, %315 ], [ %307, %323 ], [ %344, %343 ], [ 0x47EFFFFFE0000000, %254 ], [ %251, %250 ]
  %351 = phi i32 [ %124, %197 ], [ %124, %315 ], [ %124, %323 ], [ %124, %343 ], [ 0, %254 ], [ %124, %250 ]
  %352 = phi i32 [ %181, %197 ], [ %318, %315 ], [ %326, %323 ], [ %348, %343 ], [ %181, %254 ], [ %181, %250 ]
  %353 = icmp ne i32 %351, 0
  %354 = zext i1 %353 to i32
  %355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %356 = extractvalue %dx.types.CBufRet.f32 %355, 2
  %357 = call float @dx.op.binary.f32(i32 35, float %350, float %356)  ; FMax(a,b)
  %358 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %357)  ; FMin(a,b)
  br label %359

; <label>:359                                     ; preds = %349, %175
  %360 = phi float [ %358, %349 ], [ 0x47EFFFFFE0000000, %175 ]
  %361 = phi i32 [ %352, %349 ], [ %181, %175 ]
  %362 = phi i32 [ %354, %349 ], [ 0, %175 ]
  %363 = icmp eq i32 %151, 0
  br i1 %363, label %376, label %364, !dx.controlflow.hints !35

; <label>:364                                     ; preds = %359
  %365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %366 = extractvalue %dx.types.CBufRet.f32 %365, 3
  %367 = extractvalue %dx.types.CBufRet.f32 %365, 2
  %368 = fmul fast float %366, %180
  %369 = fdiv fast float %368, %153
  %370 = fadd fast float %369, 1.000000e+00
  %371 = call float @dx.op.unary.f32(i32 23, float %370)  ; Log(value)
  %372 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %371)  ; FMin(a,b)
  %373 = fmul fast float %367, %153
  %374 = fmul fast float %373, %372
  %375 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %374)  ; FMin(a,b)
  br label %376

; <label>:376                                     ; preds = %364, %359
  %377 = phi float [ %375, %364 ], [ 0x47EFFFFFE0000000, %359 ]
  %378 = extractvalue %dx.types.CBufRet.f32 %188, 2
  %379 = fmul fast float %378, %180
  %380 = call float @dx.op.unary.f32(i32 23, float %379)  ; Log(value)
  %381 = fmul fast float %380, 0x3FE62E4300000000
  %382 = call float @dx.op.binary.f32(i32 35, float %381, float 1.000000e+00)  ; FMax(a,b)
  %383 = fmul fast float %382, %377
  %384 = call float @dx.op.binary.f32(i32 36, float %383, float %360)  ; FMin(a,b)
  %385 = call float @dx.op.binary.f32(i32 35, float %384, float %189)  ; FMax(a,b)
  %386 = fsub fast float %153, %180
  %387 = fadd fast float %386, 0x3F1A36E2E0000000
  %388 = call float @dx.op.binary.f32(i32 36, float %387, float %385)  ; FMin(a,b)
  %389 = icmp eq i32 %362, 0
  br i1 %389, label %486, label %390, !dx.controlflow.hints !36

; <label>:390                                     ; preds = %376
  %391 = fcmp fast olt float %387, %385
  %392 = fmul fast float %26, %55
  %393 = fmul fast float %392, %388
  %394 = fadd fast float %393, %179
  %395 = fmul fast float %27, %55
  %396 = fmul fast float %395, %388
  %397 = fadd fast float %396, %179
  %398 = fmul fast float %28, %55
  %399 = fmul fast float %398, %388
  %400 = fadd fast float %399, %179
  br i1 %391, label %401, label %406, !dx.controlflow.hints !37

; <label>:401                                     ; preds = %390
  %402 = fmul fast float %388, %53
  %403 = fmul fast float %388, %54
  %404 = fadd fast float %402, %177
  %405 = fadd fast float %403, %178
  br label %406

; <label>:406                                     ; preds = %401, %390
  %407 = phi float [ %404, %401 ], [ %177, %390 ]
  %408 = phi float [ %405, %401 ], [ %178, %390 ]
  %409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %410 = extractvalue %dx.types.CBufRet.f32 %409, 0
  %411 = extractvalue %dx.types.CBufRet.f32 %409, 1
  %412 = fsub fast float %407, %410
  %413 = fsub fast float %408, %411
  %414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %415 = extractvalue %dx.types.CBufRet.f32 %414, 0
  %416 = extractvalue %dx.types.CBufRet.f32 %414, 1
  %417 = fmul fast float %412, %415
  %418 = fmul fast float %413, %416
  %419 = fsub fast float 1.000000e+00, %418
  %420 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %421 = extractvalue %dx.types.CBufRet.i32 %420, 3
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %429, label %423, !dx.controlflow.hints !30

; <label>:423                                     ; preds = %406
  %424 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %417, float %419, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %425 = extractvalue %dx.types.ResRet.f32 %424, 0
  %426 = extractvalue %dx.types.ResRet.f32 %424, 1
  %427 = extractvalue %dx.types.ResRet.f32 %424, 2
  %428 = extractvalue %dx.types.ResRet.f32 %424, 3
  br label %435

; <label>:429                                     ; preds = %406
  %430 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %5, float %417, float %419, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %431 = extractvalue %dx.types.ResRet.f32 %430, 0
  %432 = extractvalue %dx.types.ResRet.f32 %430, 1
  %433 = extractvalue %dx.types.ResRet.f32 %430, 2
  %434 = extractvalue %dx.types.ResRet.f32 %430, 3
  br label %435

; <label>:435                                     ; preds = %429, %423
  %436 = phi float [ %425, %423 ], [ %431, %429 ]
  %437 = phi float [ %426, %423 ], [ %432, %429 ]
  %438 = phi float [ %427, %423 ], [ %433, %429 ]
  %439 = phi float [ %428, %423 ], [ %434, %429 ]
  %440 = extractvalue %dx.types.CBufRet.f32 %414, 3
  %441 = fmul fast float %440, %437
  %442 = fmul fast float %441, %436
  %443 = fsub fast float %441, %442
  %444 = fcmp fast ole float %443, 0.000000e+00
  %445 = extractvalue %dx.types.CBufRet.f32 %409, 2
  %446 = fadd fast float %442, %445
  %447 = fmul fast float %440, %438
  %448 = fadd fast float %447, %445
  %449 = fdiv fast float 1.000000e+00, %443
  %450 = select i1 %444, float 1.000000e+06, float %449
  %451 = fsub fast float %394, %446
  %452 = fmul fast float %450, %451
  %453 = call float @dx.op.unary.f32(i32 7, float %452)  ; Saturate(value)
  %454 = extractvalue %dx.types.CBufRet.f32 %414, 2
  %455 = fmul fast float %454, %453
  %456 = fsub fast float %454, %455
  %457 = fcmp fast olt float %394, %448
  %458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %459 = extractvalue %dx.types.CBufRet.f32 %458, 3
  %460 = select i1 %457, float %459, float 1.000000e+00
  %461 = fmul fast float %456, %460
  %462 = fsub fast float %397, %446
  %463 = fmul fast float %450, %462
  %464 = call float @dx.op.unary.f32(i32 7, float %463)  ; Saturate(value)
  %465 = fmul fast float %454, %464
  %466 = fsub fast float %454, %465
  %467 = fcmp fast olt float %397, %448
  %468 = select i1 %467, float %459, float 1.000000e+00
  %469 = fmul fast float %466, %468
  %470 = fadd fast float %469, %461
  %471 = fsub fast float %400, %446
  %472 = fmul fast float %450, %471
  %473 = call float @dx.op.unary.f32(i32 7, float %472)  ; Saturate(value)
  %474 = fmul fast float %454, %473
  %475 = fsub fast float %454, %474
  %476 = fcmp fast olt float %400, %448
  %477 = select i1 %476, float %459, float 1.000000e+00
  %478 = fmul fast float %475, %477
  %479 = fadd fast float %470, %478
  %480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %481 = extractvalue %dx.types.CBufRet.f32 %480, 2
  %482 = fmul fast float %388, 0x3FD5555560000000
  %483 = fmul fast float %482, %439
  %484 = fmul fast float %483, %481
  %485 = fmul fast float %484, %479
  br label %486

; <label>:486                                     ; preds = %435, %376
  %487 = phi float [ %485, %435 ], [ 0.000000e+00, %376 ]
  br i1 %363, label %534, label %488, !dx.controlflow.hints !38

; <label>:488                                     ; preds = %486
  %489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %490 = extractvalue %dx.types.CBufRet.f32 %489, 0
  %491 = fsub fast float %490, %179
  %492 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %187, float %186, float %491)  ; Dot3(ax,ay,az,bx,by,bz)
  %493 = fmul fast float %133, %492
  %494 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %493)  ; FMax(a,b)
  %495 = fcmp ogt float %52, -0.000000e+00
  %496 = call float @dx.op.binary.f32(i32 36, float %388, float %494)  ; FMin(a,b)
  br i1 %495, label %498, label %497, !dx.controlflow.hints !39

; <label>:497                                     ; preds = %488
  br label %498

; <label>:498                                     ; preds = %497, %488
  %499 = phi float [ 0.000000e+00, %497 ], [ %496, %488 ]
  %500 = phi float [ %496, %497 ], [ %388, %488 ]
  %501 = phi float [ %496, %497 ], [ 0.000000e+00, %488 ]
  %502 = phi float [ %388, %497 ], [ %496, %488 ]
  %503 = fsub fast float %500, %499
  %504 = extractvalue %dx.types.CBufRet.f32 %489, 1
  %505 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %504)  ; FMin(a,b)
  %506 = fsub fast float %179, %490
  %507 = fmul fast float %505, 0x3FF7154760000000
  %508 = fmul fast float %507, %506
  %509 = call float @dx.op.unary.f32(i32 21, float %508)  ; Exp(value)
  %510 = fmul fast float %52, 0xBFF7154760000000
  %511 = fmul fast float %510, %502
  %512 = fmul fast float %511, %505
  %513 = call float @dx.op.unary.f32(i32 21, float %512)  ; Exp(value)
  %514 = fmul fast float %510, %501
  %515 = fmul fast float %514, %505
  %516 = call float @dx.op.unary.f32(i32 21, float %515)  ; Exp(value)
  %517 = fsub fast float %513, %516
  %518 = fmul fast float %517, %509
  %519 = fmul fast float %505, %55
  %520 = fdiv fast float %518, %519
  %521 = fadd fast float %503, %520
  %522 = call float @dx.op.unary.f32(i32 6, float %55)  ; FAbs(value)
  %523 = fcmp fast olt float %522, 0x3F0FFB4800000000
  %524 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %506)  ; FMax(a,b)
  %525 = fmul fast float %524, 0x3FF7154760000000
  %526 = fmul fast float %525, %504
  %527 = call float @dx.op.unary.f32(i32 21, float %526)  ; Exp(value)
  %528 = fmul fast float %527, %388
  %529 = select i1 %523, float %528, float %521
  %530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %531 = extractvalue %dx.types.CBufRet.f32 %530, 1
  %532 = fmul fast float %529, %531
  %533 = fadd fast float %532, %487
  br label %534

; <label>:534                                     ; preds = %498, %486
  %535 = phi float [ %533, %498 ], [ %487, %486 ]
  %536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %537 = extractvalue %dx.types.CBufRet.f32 %536, 1
  %538 = fcmp fast ogt float %535, %537
  br i1 %538, label %539, label %551, !dx.controlflow.hints !40

; <label>:539                                     ; preds = %534
  %540 = fmul fast float %535, 0xBFF7154760000000
  %541 = call float @dx.op.unary.f32(i32 21, float %540)  ; Exp(value)
  %542 = call float @dx.op.unary.f32(i32 7, float %541)  ; Saturate(value)
  %543 = icmp eq i32 %182, 0
  br i1 %543, label %544, label %545, !dx.controlflow.hints !41

; <label>:544                                     ; preds = %539
  br label %545

; <label>:545                                     ; preds = %544, %539
  %546 = phi i32 [ %182, %539 ], [ 1, %544 ]
  %547 = phi float [ %183, %539 ], [ %180, %544 ]
  %548 = fadd fast float %388, %184
  %549 = fadd fast float %535, %185
  %550 = fmul fast float %542, %176
  br label %551

; <label>:551                                     ; preds = %545, %534
  %552 = phi float [ %550, %545 ], [ %176, %534 ]
  %553 = phi i32 [ %546, %545 ], [ %182, %534 ]
  %554 = phi float [ %547, %545 ], [ %183, %534 ]
  %555 = phi float [ %548, %545 ], [ %184, %534 ]
  %556 = phi float [ %549, %545 ], [ %185, %534 ]
  %557 = fadd fast float %388, %180
  %558 = fmul fast float %388, %53
  %559 = fmul fast float %388, %54
  %560 = fmul fast float %388, %55
  %561 = fadd fast float %558, %177
  %562 = fadd fast float %559, %178
  %563 = fadd fast float %560, %179
  %564 = fcmp fast olt float %557, %153
  %565 = extractvalue %dx.types.CBufRet.f32 %536, 2
  %566 = fcmp fast olt float %565, %552
  %567 = and i1 %564, %566
  br i1 %567, label %175, label %568

; <label>:568                                     ; preds = %551
  br label %569

; <label>:569                                     ; preds = %568, %149
  %570 = phi float [ 0.000000e+00, %149 ], [ %554, %568 ]
  %571 = phi float [ 0.000000e+00, %149 ], [ %555, %568 ]
  %572 = phi float [ 0.000000e+00, %149 ], [ %556, %568 ]
  %573 = extractvalue %dx.types.CBufRet.f32 %47, 3
  %574 = fmul fast float %573, %570
  %575 = fdiv fast float 1.000000e+00, %571
  %576 = fmul fast float %575, %572
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %8, i32 %9, i32 undef, float %574, float %576, float %572, float %574, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!17 = !{void ()* @cs_fog_raymarching_air_heightmap, !"cs_fog_raymarching_air_heightmap", null, !4, !18}
!18 = !{i32 0, i64 256, i32 4, !19}
!19 = !{i32 8, i32 8, i32 1}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 1}
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
!41 = distinct !{!41, !"dx.controlflow.hints", i32 1}

