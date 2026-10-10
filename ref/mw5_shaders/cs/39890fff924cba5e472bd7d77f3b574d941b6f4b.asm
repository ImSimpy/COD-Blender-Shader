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
; shader hash: 3ab55e311f7d1ae108a8412d0664925f
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

define void @cs_fog_raymarching_air_clouds_brfog() {
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
  %46 = fsub fast float -0.000000e+00, %45
  %47 = fadd fast float %44, %38
  %48 = fsub fast float -0.000000e+00, %47
  %49 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.f32 %49, 2
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 0
  %53 = extractvalue %dx.types.CBufRet.f32 %51, 1
  %54 = extractvalue %dx.types.CBufRet.f32 %51, 2
  %55 = fsub fast float -0.000000e+00, %52
  %56 = fsub fast float -0.000000e+00, %53
  %57 = fsub fast float -0.000000e+00, %54
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 3
  %60 = fsub fast float %59, %39
  %61 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %46, float %48, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %62 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %55, float %56, float %57)  ; Dot3(ax,ay,az,bx,by,bz)
  %63 = fdiv fast float 1.000000e+00, %62
  %64 = fmul fast float %63, %61
  %65 = fcmp fast olt float %64, 0.000000e+00
  %66 = fcmp olt float %54, -0.000000e+00
  %67 = and i1 %66, %65
  br i1 %67, label %72, label %68, !dx.controlflow.hints !26

; <label>:68                                      ; preds = %0
  %69 = fcmp ogt float %54, -0.000000e+00
  br i1 %69, label %70, label %72, !dx.controlflow.hints !27

; <label>:70                                      ; preds = %68
  %71 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %64)  ; FMax(a,b)
  br label %72

; <label>:72                                      ; preds = %70, %68, %0
  %73 = phi float [ 0.000000e+00, %0 ], [ %71, %70 ], [ 0.000000e+00, %68 ]
  %74 = phi float [ 0.000000e+00, %0 ], [ 0x47EFFFFFE0000000, %70 ], [ %64, %68 ]
  %75 = fcmp fast oeq float %74, 0.000000e+00
  br i1 %75, label %79, label %76, !dx.controlflow.hints !28

; <label>:76                                      ; preds = %72
  %77 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %73)  ; FMin(a,b)
  %78 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %74)  ; FMax(a,b)
  br label %79

; <label>:79                                      ; preds = %76, %72
  %80 = phi float [ %78, %76 ], [ -1.000000e+00, %72 ]
  %81 = phi i32 [ 1, %76 ], [ 0, %72 ]
  %82 = phi float [ %77, %76 ], [ 0x47EFFFFFE0000000, %72 ]
  %83 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.i32 %83, 3
  %85 = icmp eq i32 %84, 0
  %86 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.f32 %86, 2
  %88 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.f32 %88, 2
  %90 = fsub fast float %87, %39
  %91 = fadd fast float %90, %89
  br i1 %85, label %99, label %92, !dx.controlflow.hints !29

; <label>:92                                      ; preds = %79
  %93 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %46, float %48, float %91)  ; Dot3(ax,ay,az,bx,by,bz)
  %94 = fmul fast float %63, %93
  %95 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %46, float %48, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %96 = fmul fast float %63, %95
  %97 = call float @dx.op.binary.f32(i32 36, float %94, float %96)  ; FMin(a,b)
  %98 = call float @dx.op.binary.f32(i32 35, float %94, float %96)  ; FMax(a,b)
  br label %132

; <label>:99                                      ; preds = %79
  %100 = fdiv fast float 1.000000e+00, %55
  %101 = fdiv fast float 1.000000e+00, %56
  %102 = fdiv fast float 1.000000e+00, %57
  %103 = extractvalue %dx.types.CBufRet.f32 %86, 0
  %104 = extractvalue %dx.types.CBufRet.f32 %86, 1
  %105 = extractvalue %dx.types.CBufRet.f32 %88, 0
  %106 = extractvalue %dx.types.CBufRet.f32 %88, 1
  %107 = fsub fast float %103, %45
  %108 = fmul fast float %107, %100
  %109 = fadd fast float %107, %105
  %110 = fmul fast float %109, %100
  %111 = call float @dx.op.binary.f32(i32 36, float %108, float %110)  ; FMin(a,b)
  %112 = call float @dx.op.binary.f32(i32 35, float %108, float %110)  ; FMax(a,b)
  %113 = fsub fast float %104, %47
  %114 = fmul fast float %113, %101
  %115 = fadd fast float %113, %106
  %116 = fmul fast float %115, %101
  %117 = call float @dx.op.binary.f32(i32 36, float %114, float %116)  ; FMin(a,b)
  %118 = call float @dx.op.binary.f32(i32 35, float %111, float %117)  ; FMax(a,b)
  %119 = call float @dx.op.binary.f32(i32 35, float %114, float %116)  ; FMax(a,b)
  %120 = call float @dx.op.binary.f32(i32 36, float %112, float %119)  ; FMin(a,b)
  %121 = fmul fast float %90, %102
  %122 = fmul fast float %91, %102
  %123 = call float @dx.op.binary.f32(i32 36, float %121, float %122)  ; FMin(a,b)
  %124 = call float @dx.op.binary.f32(i32 35, float %118, float %123)  ; FMax(a,b)
  %125 = call float @dx.op.binary.f32(i32 35, float %121, float %122)  ; FMax(a,b)
  %126 = call float @dx.op.binary.f32(i32 36, float %120, float %125)  ; FMin(a,b)
  %127 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %124)  ; FMax(a,b)
  %128 = fcmp fast ult float %126, %127
  br i1 %128, label %132, label %129, !dx.controlflow.hints !30

; <label>:129                                     ; preds = %99
  %130 = call float @dx.op.binary.f32(i32 36, float %124, float %126)  ; FMin(a,b)
  %131 = call float @dx.op.binary.f32(i32 35, float %124, float %126)  ; FMax(a,b)
  br label %132

; <label>:132                                     ; preds = %129, %99, %92
  %133 = phi float [ %97, %92 ], [ %130, %129 ], [ 0.000000e+00, %99 ]
  %134 = phi float [ %98, %92 ], [ %131, %129 ], [ 0.000000e+00, %99 ]
  %135 = fcmp fast oeq float %134, 0.000000e+00
  br i1 %135, label %139, label %136, !dx.controlflow.hints !31

; <label>:136                                     ; preds = %132
  %137 = call float @dx.op.binary.f32(i32 36, float %82, float %133)  ; FMin(a,b)
  %138 = call float @dx.op.binary.f32(i32 35, float %80, float %134)  ; FMax(a,b)
  br label %139

; <label>:139                                     ; preds = %136, %132
  %140 = phi float [ %138, %136 ], [ %80, %132 ]
  %141 = phi i32 [ 1, %136 ], [ 0, %132 ]
  %142 = phi float [ %137, %136 ], [ %82, %132 ]
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 2
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 3
  %147 = fsub fast float %144, %39
  %148 = fadd fast float %147, %146
  %149 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %46, float %48, float %148)  ; Dot3(ax,ay,az,bx,by,bz)
  %150 = fmul fast float %63, %149
  %151 = fcmp fast olt float %150, 0.000000e+00
  %152 = and i1 %66, %151
  br i1 %152, label %157, label %153, !dx.controlflow.hints !32

; <label>:153                                     ; preds = %139
  %154 = fcmp ogt float %54, -0.000000e+00
  br i1 %154, label %155, label %157, !dx.controlflow.hints !33

; <label>:155                                     ; preds = %153
  %156 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %150)  ; FMax(a,b)
  br label %157

; <label>:157                                     ; preds = %155, %153, %139
  %158 = phi float [ 0.000000e+00, %139 ], [ %156, %155 ], [ 0.000000e+00, %153 ]
  %159 = phi float [ 0.000000e+00, %139 ], [ 0x47EFFFFFE0000000, %155 ], [ %150, %153 ]
  %160 = fcmp fast oeq float %159, 0.000000e+00
  br i1 %160, label %164, label %161, !dx.controlflow.hints !34

; <label>:161                                     ; preds = %157
  %162 = call float @dx.op.binary.f32(i32 36, float %142, float %158)  ; FMin(a,b)
  %163 = call float @dx.op.binary.f32(i32 35, float %140, float %159)  ; FMax(a,b)
  br label %164

; <label>:164                                     ; preds = %161, %157
  %165 = phi i32 [ 1, %161 ], [ 0, %157 ]
  %166 = phi float [ %163, %161 ], [ %140, %157 ]
  %167 = phi float [ %162, %161 ], [ %142, %157 ]
  %168 = call float @dx.op.binary.f32(i32 36, float %50, float %166)  ; FMin(a,b)
  %169 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %167)  ; FMax(a,b)
  %170 = extractvalue %dx.types.CBufRet.f32 %58, 1
  %171 = fmul fast float %28, 2.000000e+00
  %172 = fadd fast float %171, -1.000000e+00
  %173 = fmul fast float %170, %172
  %174 = fadd fast float %173, %169
  %175 = fcmp fast olt float %174, %168
  %176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %177 = extractvalue %dx.types.CBufRet.f32 %176, 2
  %178 = fcmp fast olt float %177, 1.000000e+00
  %179 = and i1 %178, %175
  br i1 %179, label %180, label %764

; <label>:180                                     ; preds = %164
  %181 = fmul fast float %174, %57
  %182 = fadd fast float %181, %39
  %183 = fmul fast float %174, %56
  %184 = fadd fast float %183, %47
  %185 = fmul fast float %174, %55
  %186 = fadd fast float %185, %45
  br label %187

; <label>:187                                     ; preds = %746, %180
  %188 = phi i32 [ %450, %746 ], [ undef, %180 ]
  %189 = phi float [ %451, %746 ], [ undef, %180 ]
  %190 = phi float [ %747, %746 ], [ 1.000000e+00, %180 ]
  %191 = phi float [ %756, %746 ], [ %186, %180 ]
  %192 = phi float [ %757, %746 ], [ %184, %180 ]
  %193 = phi float [ %758, %746 ], [ %182, %180 ]
  %194 = phi float [ %752, %746 ], [ %174, %180 ]
  %195 = phi i32 [ %748, %746 ], [ 0, %180 ]
  %196 = phi float [ %749, %746 ], [ 0.000000e+00, %180 ]
  %197 = phi float [ %750, %746 ], [ 0.000000e+00, %180 ]
  %198 = phi float [ %751, %746 ], [ 0.000000e+00, %180 ]
  %199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %200 = extractvalue %dx.types.CBufRet.f32 %199, 1
  %201 = icmp eq i32 %81, 0
  br i1 %201, label %214, label %202, !dx.controlflow.hints !35

; <label>:202                                     ; preds = %187
  %203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %204 = extractvalue %dx.types.CBufRet.f32 %203, 3
  %205 = extractvalue %dx.types.CBufRet.f32 %203, 2
  %206 = fmul fast float %204, %194
  %207 = fdiv fast float %206, %168
  %208 = fadd fast float %207, 1.000000e+00
  %209 = call float @dx.op.unary.f32(i32 23, float %208)  ; Log(value)
  %210 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %209)  ; FMin(a,b)
  %211 = fmul fast float %205, %168
  %212 = fmul fast float %211, %210
  %213 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %212)  ; FMin(a,b)
  br label %214

; <label>:214                                     ; preds = %202, %187
  %215 = phi float [ %213, %202 ], [ 0x47EFFFFFE0000000, %187 ]
  %216 = icmp eq i32 %141, 0
  br i1 %216, label %273, label %217, !dx.controlflow.hints !36

; <label>:217                                     ; preds = %214
  %218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %219 = extractvalue %dx.types.CBufRet.f32 %218, 0
  %220 = extractvalue %dx.types.CBufRet.f32 %218, 1
  %221 = extractvalue %dx.types.CBufRet.f32 %218, 2
  %222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %223 = extractvalue %dx.types.CBufRet.f32 %222, 0
  %224 = extractvalue %dx.types.CBufRet.f32 %222, 1
  %225 = extractvalue %dx.types.CBufRet.f32 %222, 2
  %226 = fsub fast float %191, %223
  %227 = fsub fast float %192, %224
  %228 = fsub fast float %193, %225
  %229 = fmul fast float %226, %219
  %230 = fmul fast float %227, %220
  %231 = fmul fast float %228, %221
  %232 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.i32 %232, 3
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %238, label %235, !dx.controlflow.hints !37

; <label>:235                                     ; preds = %217
  %236 = call float @dx.op.unary.f32(i32 22, float %229)  ; Frc(value)
  %237 = call float @dx.op.unary.f32(i32 22, float %230)  ; Frc(value)
  br label %238

; <label>:238                                     ; preds = %235, %217
  %239 = phi float [ %236, %235 ], [ %229, %217 ]
  %240 = phi float [ %237, %235 ], [ %230, %217 ]
  %241 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %9, float %239, float %240, float %231, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %242 = extractvalue %dx.types.ResRet.f32 %241, 0
  %243 = fmul fast float %242, 2.000000e+00
  %244 = fadd fast float %243, -1.000000e+00
  %245 = extractvalue %dx.types.CBufRet.f32 %218, 3
  %246 = fmul fast float %244, %245
  %247 = fcmp fast olt float %246, 0.000000e+00
  %248 = fcmp fast oge float %231, 0.000000e+00
  %249 = fcmp fast ole float %231, 1.000000e+00
  br i1 %234, label %252, label %250, !dx.controlflow.hints !38

; <label>:250                                     ; preds = %238
  %251 = and i1 %248, %249
  br label %262

; <label>:252                                     ; preds = %238
  %253 = fcmp fast oge float %229, 0.000000e+00
  %254 = fcmp fast oge float %230, 0.000000e+00
  %255 = and i1 %253, %254
  %256 = and i1 %248, %255
  %257 = fcmp fast ole float %229, 1.000000e+00
  %258 = fcmp fast ole float %230, 1.000000e+00
  %259 = and i1 %257, %258
  %260 = and i1 %249, %259
  %261 = and i1 %256, %260
  br label %262

; <label>:262                                     ; preds = %252, %250
  %263 = phi i1 [ %251, %250 ], [ %261, %252 ]
  %264 = and i1 %247, %263
  %265 = call float @dx.op.unary.f32(i32 6, float %246)  ; FAbs(value)
  %266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %267 = extractvalue %dx.types.CBufRet.f32 %266, 1
  %268 = extractvalue %dx.types.CBufRet.f32 %266, 0
  %269 = call float @dx.op.binary.f32(i32 35, float %265, float %268)  ; FMax(a,b)
  %270 = select i1 %264, float %267, float %269
  %271 = zext i1 %264 to i32
  %272 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %270)  ; FMin(a,b)
  br label %273

; <label>:273                                     ; preds = %262, %214
  %274 = phi float [ %272, %262 ], [ 0x47EFFFFFE0000000, %214 ]
  %275 = phi i32 [ %271, %262 ], [ 0, %214 ]
  %276 = icmp eq i32 %165, 0
  br i1 %276, label %449, label %277, !dx.controlflow.hints !39

; <label>:277                                     ; preds = %273
  %278 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %279 = extractvalue %dx.types.CBufRet.i32 %278, 1
  %280 = and i32 %279, 1
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %439, !dx.controlflow.hints !40

; <label>:282                                     ; preds = %277
  %283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %284 = extractvalue %dx.types.CBufRet.f32 %283, 2
  %285 = extractvalue %dx.types.CBufRet.f32 %283, 3
  %286 = fmul fast float %284, %191
  %287 = fmul fast float %285, %192
  %288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %289 = extractvalue %dx.types.CBufRet.f32 %288, 0
  %290 = extractvalue %dx.types.CBufRet.f32 %288, 1
  %291 = fadd fast float %286, %289
  %292 = fadd fast float %287, %290
  %293 = call float @dx.op.unary.f32(i32 7, float %291)  ; Saturate(value)
  %294 = call float @dx.op.unary.f32(i32 7, float %292)  ; Saturate(value)
  %295 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %11, float %293, float %294, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %296 = extractvalue %dx.types.ResRet.f32 %295, 0
  %297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.f32 %297, 0
  %299 = fmul fast float %298, %296
  %300 = fsub fast float %291, %293
  %301 = fsub fast float %292, %294
  %302 = extractvalue %dx.types.CBufRet.f32 %283, 0
  %303 = extractvalue %dx.types.CBufRet.f32 %283, 1
  %304 = fmul fast float %302, %300
  %305 = fmul fast float %303, %301
  %306 = fmul fast float %304, %304
  %307 = fmul fast float %305, %305
  %308 = fadd fast float %306, %307
  %309 = call float @dx.op.unary.f32(i32 24, float %308)  ; Sqrt(value)
  %310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %311 = extractvalue %dx.types.CBufRet.f32 %310, 3
  %312 = fmul fast float %311, %309
  %313 = call float @dx.op.unary.f32(i32 7, float %312)  ; Saturate(value)
  %314 = extractvalue %dx.types.CBufRet.f32 %310, 2
  %315 = fsub fast float %314, %299
  %316 = fmul fast float %315, %313
  %317 = extractvalue %dx.types.CBufRet.f32 %297, 1
  %318 = fsub fast float %193, %299
  %319 = fsub fast float %318, %317
  %320 = fsub fast float %319, %316
  %321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %322 = extractvalue %dx.types.CBufRet.f32 %321, 2
  %323 = fsub fast float %320, %322
  %324 = fcmp fast olt float %323, 0.000000e+00
  %325 = call float @dx.op.unary.f32(i32 6, float %323)  ; FAbs(value)
  %326 = extractvalue %dx.types.CBufRet.i32 %278, 0
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %381, label %328

; <label>:328                                     ; preds = %282
  br label %329

; <label>:329                                     ; preds = %368, %328
  %330 = phi i32 [ %374, %368 ], [ 1, %328 ]
  %331 = phi float [ %376, %368 ], [ 0x47EFFFFFE0000000, %328 ]
  %332 = phi i32 [ %377, %368 ], [ 0, %328 ]
  %333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %334 = extractvalue %dx.types.CBufRet.f32 %333, 1
  %335 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %336 = extractvalue %dx.types.CBufRet.i32 %335, 1
  %337 = and i32 %336, 8
  %338 = icmp eq i32 %337, 0
  %339 = fcmp fast ogt float %334, %320
  %340 = or i1 %339, %338
  %341 = add i32 %332, 171
  %342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %341)  ; CBufferLoadLegacy(handle,regIndex)
  %343 = extractvalue %dx.types.CBufRet.f32 %342, 0
  %344 = extractvalue %dx.types.CBufRet.f32 %342, 1
  %345 = extractvalue %dx.types.CBufRet.f32 %342, 2
  br i1 %340, label %346, label %352, !dx.controlflow.hints !41

; <label>:346                                     ; preds = %329
  %347 = fsub fast float %343, %191
  %348 = fsub fast float %344, %192
  %349 = fmul fast float %347, %347
  %350 = fmul fast float %348, %348
  %351 = fadd fast float %349, %350
  br label %368

; <label>:352                                     ; preds = %329
  %353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %354 = extractvalue %dx.types.CBufRet.f32 %353, 2
  %355 = extractvalue %dx.types.CBufRet.f32 %333, 2
  %356 = fmul fast float %355, %354
  %357 = fsub fast float %356, %334
  %358 = fdiv fast float %345, %357
  %359 = fsub fast float %191, %343
  %360 = fsub fast float %192, %344
  %361 = fsub fast float %320, %334
  %362 = fmul fast float %358, %361
  %363 = fmul fast float %359, %359
  %364 = fmul fast float %360, %360
  %365 = fadd fast float %363, %364
  %366 = fmul fast float %362, %362
  %367 = fadd fast float %365, %366
  br label %368

; <label>:368                                     ; preds = %352, %346
  %369 = phi float [ %351, %346 ], [ %367, %352 ]
  %370 = call float @dx.op.unary.f32(i32 24, float %369)  ; Sqrt(value)
  %371 = fsub float %345, %370
  %372 = fcmp fast olt float %371, 0.000000e+00
  %373 = zext i1 %372 to i32
  %374 = and i32 %373, %330
  %375 = call float @dx.op.unary.f32(i32 6, float %371)  ; FAbs(value)
  %376 = call float @dx.op.binary.f32(i32 36, float %331, float %375)  ; FMin(a,b)
  %377 = add i32 %332, 1
  %378 = extractvalue %dx.types.CBufRet.i32 %335, 0
  %379 = icmp ult i32 %377, %378
  br i1 %379, label %329, label %380

; <label>:380                                     ; preds = %368
  br label %381

; <label>:381                                     ; preds = %380, %282
  %382 = phi i32 [ 1, %282 ], [ %374, %380 ]
  %383 = phi float [ 0x47EFFFFFE0000000, %282 ], [ %376, %380 ]
  br label %384

; <label>:384                                     ; preds = %384, %381
  %385 = phi i32 [ %382, %381 ], [ %424, %384 ]
  %386 = phi float [ 0x47EFFFFFE0000000, %381 ], [ %426, %384 ]
  %387 = phi i32 [ 0, %381 ], [ %427, %384 ]
  %388 = add nuw nsw i32 %387, 191
  %389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %388)  ; CBufferLoadLegacy(handle,regIndex)
  %390 = extractvalue %dx.types.CBufRet.f32 %389, 0
  %391 = extractvalue %dx.types.CBufRet.f32 %389, 1
  %392 = extractvalue %dx.types.CBufRet.f32 %389, 2
  %393 = add nuw nsw i32 %387, 195
  %394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %393)  ; CBufferLoadLegacy(handle,regIndex)
  %395 = extractvalue %dx.types.CBufRet.f32 %394, 0
  %396 = extractvalue %dx.types.CBufRet.f32 %394, 1
  %397 = extractvalue %dx.types.CBufRet.f32 %394, 2
  %398 = fsub fast float %191, %390
  %399 = fsub fast float %192, %391
  %400 = fsub fast float %320, %392
  %401 = call float @dx.op.unary.f32(i32 6, float %398)  ; FAbs(value)
  %402 = call float @dx.op.unary.f32(i32 6, float %399)  ; FAbs(value)
  %403 = call float @dx.op.unary.f32(i32 6, float %400)  ; FAbs(value)
  %404 = fsub fast float %401, %395
  %405 = fsub fast float %402, %396
  %406 = fsub fast float %403, %397
  %407 = call float @dx.op.binary.f32(i32 35, float %404, float 0.000000e+00)  ; FMax(a,b)
  %408 = call float @dx.op.binary.f32(i32 35, float %405, float 0.000000e+00)  ; FMax(a,b)
  %409 = call float @dx.op.binary.f32(i32 35, float %406, float 0.000000e+00)  ; FMax(a,b)
  %410 = fmul fast float %407, %407
  %411 = fmul fast float %408, %408
  %412 = fadd fast float %411, %410
  %413 = fmul fast float %409, %409
  %414 = fadd fast float %412, %413
  %415 = call float @dx.op.unary.f32(i32 24, float %414)  ; Sqrt(value)
  %416 = call float @dx.op.binary.f32(i32 35, float %405, float %406)  ; FMax(a,b)
  %417 = call float @dx.op.binary.f32(i32 35, float %404, float %416)  ; FMax(a,b)
  %418 = call float @dx.op.binary.f32(i32 36, float %417, float 0.000000e+00)  ; FMin(a,b)
  %419 = fadd fast float %418, %415
  %420 = fsub fast float -0.000000e+00, %419
  %421 = fcmp ogt float %419, -0.000000e+00
  %422 = icmp ne i32 %385, 0
  %423 = and i1 %422, %421
  %424 = zext i1 %423 to i32
  %425 = call float @dx.op.unary.f32(i32 6, float %420)  ; FAbs(value)
  %426 = call float @dx.op.binary.f32(i32 36, float %386, float %425)  ; FMin(a,b)
  %427 = add nuw nsw i32 %387, 1
  %428 = icmp eq i32 %427, 4
  br i1 %428, label %429, label %384

; <label>:429                                     ; preds = %384
  %430 = call float @dx.op.binary.f32(i32 36, float %325, float %426)  ; FMin(a,b)
  %431 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %432 = extractvalue %dx.types.CBufRet.i32 %431, 1
  %433 = and i32 %432, 2
  %434 = icmp ne i32 %433, 0
  %435 = xor i1 %423, %434
  %436 = call float @dx.op.binary.f32(i32 36, float %430, float %383)  ; FMin(a,b)
  %437 = and i1 %435, %324
  %438 = zext i1 %437 to i32
  br label %439

; <label>:439                                     ; preds = %429, %277
  %440 = phi i32 [ %188, %277 ], [ %438, %429 ]
  %441 = phi float [ 0.000000e+00, %277 ], [ %436, %429 ]
  %442 = phi float [ %193, %277 ], [ %320, %429 ]
  %443 = icmp ne i32 %440, 0
  %444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %445 = extractvalue %dx.types.CBufRet.f32 %444, 3
  %446 = call float @dx.op.binary.f32(i32 35, float %441, float %445)  ; FMax(a,b)
  %447 = call float @dx.op.binary.f32(i32 36, float %215, float %446)  ; FMin(a,b)
  %448 = zext i1 %443 to i32
  br label %449

; <label>:449                                     ; preds = %439, %273
  %450 = phi i32 [ %440, %439 ], [ %188, %273 ]
  %451 = phi float [ %442, %439 ], [ %189, %273 ]
  %452 = phi float [ %447, %439 ], [ %215, %273 ]
  %453 = phi i32 [ %448, %439 ], [ 0, %273 ]
  %454 = extractvalue %dx.types.CBufRet.f32 %199, 2
  %455 = fmul fast float %454, %194
  %456 = call float @dx.op.unary.f32(i32 23, float %455)  ; Log(value)
  %457 = fmul fast float %456, 0x3FE62E4300000000
  %458 = call float @dx.op.binary.f32(i32 35, float %457, float 1.000000e+00)  ; FMax(a,b)
  %459 = fmul fast float %458, %452
  %460 = call float @dx.op.binary.f32(i32 36, float %459, float %274)  ; FMin(a,b)
  %461 = call float @dx.op.binary.f32(i32 35, float %460, float %200)  ; FMax(a,b)
  %462 = fadd fast float %168, 0x3F1A36E2E0000000
  %463 = fsub fast float %462, %194
  %464 = call float @dx.op.binary.f32(i32 36, float %463, float %461)  ; FMin(a,b)
  br i1 %201, label %512, label %465, !dx.controlflow.hints !42

; <label>:465                                     ; preds = %449
  %466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %467 = extractvalue %dx.types.CBufRet.f32 %466, 0
  %468 = fsub fast float -0.000000e+00, %191
  %469 = fsub fast float -0.000000e+00, %192
  %470 = fsub fast float %467, %193
  %471 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %468, float %469, float %470)  ; Dot3(ax,ay,az,bx,by,bz)
  %472 = fmul fast float %63, %471
  %473 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %472)  ; FMax(a,b)
  %474 = fcmp ogt float %54, -0.000000e+00
  %475 = call float @dx.op.binary.f32(i32 36, float %464, float %473)  ; FMin(a,b)
  br i1 %474, label %477, label %476, !dx.controlflow.hints !43

; <label>:476                                     ; preds = %465
  br label %477

; <label>:477                                     ; preds = %476, %465
  %478 = phi float [ 0.000000e+00, %476 ], [ %475, %465 ]
  %479 = phi float [ %475, %476 ], [ %464, %465 ]
  %480 = phi float [ %475, %476 ], [ 0.000000e+00, %465 ]
  %481 = phi float [ %464, %476 ], [ %475, %465 ]
  %482 = fsub fast float %479, %478
  %483 = extractvalue %dx.types.CBufRet.f32 %466, 1
  %484 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %483)  ; FMin(a,b)
  %485 = fsub fast float %193, %467
  %486 = fmul fast float %484, 0x3FF7154760000000
  %487 = fmul fast float %486, %485
  %488 = call float @dx.op.unary.f32(i32 21, float %487)  ; Exp(value)
  %489 = fmul fast float %54, 0xBFF7154760000000
  %490 = fmul fast float %489, %481
  %491 = fmul fast float %490, %484
  %492 = call float @dx.op.unary.f32(i32 21, float %491)  ; Exp(value)
  %493 = fmul fast float %489, %480
  %494 = fmul fast float %493, %484
  %495 = call float @dx.op.unary.f32(i32 21, float %494)  ; Exp(value)
  %496 = fsub fast float %492, %495
  %497 = fmul fast float %496, %488
  %498 = fmul fast float %484, %57
  %499 = fdiv fast float %497, %498
  %500 = fadd fast float %482, %499
  %501 = call float @dx.op.unary.f32(i32 6, float %57)  ; FAbs(value)
  %502 = fcmp fast olt float %501, 0x3F0FFB4800000000
  %503 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %485)  ; FMax(a,b)
  %504 = fmul fast float %503, 0x3FF7154760000000
  %505 = fmul fast float %504, %483
  %506 = call float @dx.op.unary.f32(i32 21, float %505)  ; Exp(value)
  %507 = fmul fast float %506, %464
  %508 = select i1 %502, float %507, float %500
  %509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %510 = extractvalue %dx.types.CBufRet.f32 %509, 1
  %511 = fmul fast float %508, %510
  br label %512

; <label>:512                                     ; preds = %477, %449
  %513 = phi float [ %511, %477 ], [ 0.000000e+00, %449 ]
  %514 = icmp eq i32 %275, 0
  br i1 %514, label %695, label %515, !dx.controlflow.hints !44

; <label>:515                                     ; preds = %512
  %516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %517 = extractvalue %dx.types.CBufRet.f32 %516, 3
  %518 = fmul fast float %517, %194
  %519 = fcmp fast oeq float %518, 0.000000e+00
  br i1 %519, label %534, label %520, !dx.controlflow.hints !45

; <label>:520                                     ; preds = %515
  %521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %522 = extractvalue %dx.types.CBufRet.f32 %521, 3
  %523 = fmul fast float %522, %518
  %524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %525 = extractvalue %dx.types.CBufRet.f32 %524, 0
  %526 = extractvalue %dx.types.CBufRet.f32 %524, 1
  %527 = extractvalue %dx.types.CBufRet.f32 %524, 2
  %528 = fmul fast float %525, %523
  %529 = fmul fast float %526, %523
  %530 = fmul fast float %527, %523
  %531 = call float @dx.op.unary.f32(i32 23, float %528)  ; Log(value)
  %532 = call float @dx.op.unary.f32(i32 23, float %529)  ; Log(value)
  %533 = call float @dx.op.unary.f32(i32 23, float %530)  ; Log(value)
  br label %534

; <label>:534                                     ; preds = %520, %515
  %535 = phi float [ %531, %520 ], [ 0.000000e+00, %515 ]
  %536 = phi float [ %532, %520 ], [ 0.000000e+00, %515 ]
  %537 = phi float [ %533, %520 ], [ 0.000000e+00, %515 ]
  %538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %539 = extractvalue %dx.types.CBufRet.f32 %538, 0
  %540 = extractvalue %dx.types.CBufRet.f32 %538, 1
  %541 = extractvalue %dx.types.CBufRet.f32 %538, 2
  %542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %543 = extractvalue %dx.types.CBufRet.f32 %542, 0
  %544 = extractvalue %dx.types.CBufRet.f32 %542, 1
  %545 = extractvalue %dx.types.CBufRet.f32 %542, 2
  %546 = fsub fast float %191, %543
  %547 = fsub fast float %192, %544
  %548 = fsub fast float %193, %545
  %549 = fmul fast float %546, %539
  %550 = fmul fast float %547, %540
  %551 = fmul fast float %548, %541
  %552 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %553 = extractvalue %dx.types.CBufRet.i32 %552, 0
  %554 = extractvalue %dx.types.CBufRet.i32 %552, 1
  %555 = uitofp i32 %553 to float
  %556 = uitofp i32 %554 to float
  %557 = fmul fast float %549, %555
  %558 = fmul fast float %550, %556
  %559 = fadd fast float %557, 5.000000e-01
  %560 = fadd fast float %558, 5.000000e-01
  %561 = call float @dx.op.unary.f32(i32 22, float %559)  ; Frc(value)
  %562 = call float @dx.op.unary.f32(i32 22, float %560)  ; Frc(value)
  %563 = call float @dx.op.unary.f32(i32 27, float %559)  ; Round_ni(value)
  %564 = call float @dx.op.unary.f32(i32 27, float %560)  ; Round_ni(value)
  %565 = fadd fast float %563, 1.000000e+00
  %566 = fadd fast float %564, 1.000000e+00
  %567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %568 = extractvalue %dx.types.CBufRet.f32 %567, 0
  %569 = extractvalue %dx.types.CBufRet.f32 %567, 1
  %570 = fmul fast float %568, %565
  %571 = fmul fast float %569, %566
  %572 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %10, float %570, float %571, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %573 = extractvalue %dx.types.ResRet.f32 %572, 0
  %574 = extractvalue %dx.types.ResRet.f32 %572, 1
  %575 = extractvalue %dx.types.ResRet.f32 %572, 2
  %576 = extractvalue %dx.types.ResRet.f32 %572, 3
  %577 = extractvalue %dx.types.CBufRet.i32 %552, 2
  %578 = extractvalue %dx.types.CBufRet.f32 %567, 2
  %579 = uitofp i32 %577 to float
  %580 = fadd fast float %579, -1.000000e+00
  %581 = fmul fast float %580, %573
  %582 = fmul fast float %580, %574
  %583 = fmul fast float %580, %575
  %584 = fmul fast float %580, %576
  %585 = fadd fast float %581, 5.000000e-01
  %586 = fadd fast float %582, 5.000000e-01
  %587 = fadd fast float %583, 5.000000e-01
  %588 = fadd fast float %584, 5.000000e-01
  %589 = fptoui float %585 to i32
  %590 = fptoui float %586 to i32
  %591 = fptoui float %587 to i32
  %592 = fptoui float %588 to i32
  %593 = uitofp i32 %589 to float
  %594 = uitofp i32 %590 to float
  %595 = uitofp i32 %591 to float
  %596 = uitofp i32 %592 to float
  %597 = fadd fast float %593, 5.000000e-01
  %598 = fadd fast float %594, 5.000000e-01
  %599 = fadd fast float %595, 5.000000e-01
  %600 = fadd fast float %596, 5.000000e-01
  %601 = fmul fast float %597, %578
  %602 = fmul fast float %598, %578
  %603 = fmul fast float %599, %578
  %604 = fmul fast float %600, %578
  %605 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %11, float %601, float %551, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %606 = extractvalue %dx.types.ResRet.f32 %605, 0
  %607 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %11, float %602, float %551, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %608 = extractvalue %dx.types.ResRet.f32 %607, 0
  %609 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %11, float %603, float %551, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %610 = extractvalue %dx.types.ResRet.f32 %609, 0
  %611 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %11, float %604, float %551, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %612 = extractvalue %dx.types.ResRet.f32 %611, 0
  %613 = fsub fast float %610, %612
  %614 = fmul fast float %613, %561
  %615 = fadd fast float %614, %612
  %616 = fsub fast float %608, %606
  %617 = fmul fast float %616, %561
  %618 = fadd fast float %617, %606
  %619 = fsub fast float %618, %615
  %620 = fmul fast float %619, %562
  %621 = fadd fast float %620, %615
  %622 = fcmp fast ogt float %621, 0.000000e+00
  br i1 %622, label %623, label %691, !dx.controlflow.hints !46

; <label>:623                                     ; preds = %534
  %624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %625 = extractvalue %dx.types.CBufRet.f32 %624, 0
  %626 = extractvalue %dx.types.CBufRet.f32 %624, 1
  %627 = extractvalue %dx.types.CBufRet.f32 %624, 2
  %628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %629 = extractvalue %dx.types.CBufRet.f32 %628, 0
  %630 = extractvalue %dx.types.CBufRet.f32 %628, 1
  %631 = extractvalue %dx.types.CBufRet.f32 %628, 2
  %632 = fmul fast float %547, %539
  %633 = fmul fast float %548, %539
  %634 = fadd fast float %549, %629
  %635 = fadd fast float %632, %630
  %636 = fadd fast float %633, %631
  %637 = fmul fast float %634, %625
  %638 = fmul fast float %635, %625
  %639 = fmul fast float %636, %625
  %640 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %8, float %637, float %638, float %639, float undef, i32 0, i32 0, i32 0, float %535)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %641 = extractvalue %dx.types.ResRet.f32 %640, 0
  %642 = fmul fast float %634, %626
  %643 = fmul fast float %635, %626
  %644 = fmul fast float %636, %626
  %645 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %8, float %642, float %643, float %644, float undef, i32 0, i32 0, i32 0, float %536)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %646 = extractvalue %dx.types.ResRet.f32 %645, 1
  %647 = fmul fast float %634, %627
  %648 = fmul fast float %635, %627
  %649 = fmul fast float %636, %627
  %650 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %8, float %647, float %648, float %649, float undef, i32 0, i32 0, i32 0, float %537)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %651 = extractvalue %dx.types.ResRet.f32 %650, 2
  %652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %653 = extractvalue %dx.types.CBufRet.f32 %652, 1
  %654 = fmul fast float %646, %641
  %655 = fmul fast float %654, %651
  %656 = call float @dx.op.unary.f32(i32 23, float %655)  ; Log(value)
  %657 = fmul fast float %656, %653
  %658 = call float @dx.op.unary.f32(i32 21, float %657)  ; Exp(value)
  %659 = extractvalue %dx.types.CBufRet.f32 %652, 2
  %660 = fmul fast float %621, %621
  %661 = fmul fast float %660, %658
  %662 = fmul fast float %661, %659
  %663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %664 = extractvalue %dx.types.CBufRet.f32 %663, 3
  %665 = fmul fast float %664, %662
  %666 = bitcast float %665 to i32
  %667 = sitofp i32 %666 to float
  %668 = fptosi float %667 to i32
  %669 = bitcast i32 %668 to float
  %670 = fsub fast float 1.000000e+00, %662
  %671 = bitcast float %670 to i32
  %672 = sitofp i32 %671 to float
  %673 = fptosi float %672 to i32
  %674 = bitcast i32 %673 to float
  %675 = fadd fast float %669, %674
  %676 = bitcast float %675 to i32
  %677 = sub nsw i32 2129859010, %676
  %678 = bitcast i32 %677 to float
  %679 = fmul fast float %678, %669
  %680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %681 = extractvalue %dx.types.CBufRet.f32 %680, 3
  %682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %683 = extractvalue %dx.types.CBufRet.f32 %682, 0
  %684 = fmul fast float %679, %683
  %685 = fadd fast float %684, 1.000000e+00
  %686 = bitcast float %685 to i32
  %687 = sub nsw i32 2129859010, %686
  %688 = bitcast i32 %687 to float
  %689 = fmul fast float %679, %681
  %690 = fmul fast float %689, %688
  br label %691

; <label>:691                                     ; preds = %623, %534
  %692 = phi float [ %690, %623 ], [ %621, %534 ]
  %693 = fmul fast float %692, %464
  %694 = fadd fast float %693, %513
  br label %695

; <label>:695                                     ; preds = %691, %512
  %696 = phi float [ %694, %691 ], [ %513, %512 ]
  %697 = icmp eq i32 %453, 0
  br i1 %697, label %729, label %698, !dx.controlflow.hints !47

; <label>:698                                     ; preds = %695
  %699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %700 = extractvalue %dx.types.CBufRet.f32 %699, 1
  %701 = fsub fast float %464, %700
  %702 = extractvalue %dx.types.CBufRet.f32 %699, 3
  %703 = fmul fast float %701, %702
  %704 = call float @dx.op.unary.f32(i32 7, float %703)  ; Saturate(value)
  %705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %706 = extractvalue %dx.types.CBufRet.f32 %705, 3
  %707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %708 = extractvalue %dx.types.CBufRet.f32 %707, 2
  %709 = fsub fast float %708, %451
  %710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %711 = extractvalue %dx.types.CBufRet.f32 %710, 3
  %712 = fmul fast float %709, %711
  %713 = call float @dx.op.unary.f32(i32 7, float %712)  ; Saturate(value)
  %714 = fmul fast float %713, %706
  %715 = extractvalue %dx.types.CBufRet.f32 %710, 0
  %716 = fsub fast float %194, %715
  %717 = extractvalue %dx.types.CBufRet.f32 %710, 1
  %718 = fmul fast float %716, %717
  %719 = call float @dx.op.unary.f32(i32 7, float %718)  ; Saturate(value)
  %720 = fsub fast float 1.000000e+00, %704
  %721 = fmul fast float %719, %720
  %722 = fadd fast float %721, %704
  %723 = extractvalue %dx.types.CBufRet.f32 %699, 0
  %724 = fsub fast float %714, %723
  %725 = fmul fast float %724, %722
  %726 = fadd fast float %725, %723
  %727 = fmul fast float %726, %464
  %728 = fadd fast float %727, %696
  br label %729

; <label>:729                                     ; preds = %698, %695
  %730 = phi float [ %728, %698 ], [ %696, %695 ]
  %731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %732 = extractvalue %dx.types.CBufRet.f32 %731, 1
  %733 = fcmp fast ogt float %730, %732
  br i1 %733, label %734, label %746, !dx.controlflow.hints !48

; <label>:734                                     ; preds = %729
  %735 = fmul fast float %730, 0xBFF7154760000000
  %736 = call float @dx.op.unary.f32(i32 21, float %735)  ; Exp(value)
  %737 = call float @dx.op.unary.f32(i32 7, float %736)  ; Saturate(value)
  %738 = icmp eq i32 %195, 0
  br i1 %738, label %739, label %740, !dx.controlflow.hints !49

; <label>:739                                     ; preds = %734
  br label %740

; <label>:740                                     ; preds = %739, %734
  %741 = phi i32 [ %195, %734 ], [ 1, %739 ]
  %742 = phi float [ %196, %734 ], [ %194, %739 ]
  %743 = fadd fast float %464, %197
  %744 = fadd fast float %730, %198
  %745 = fmul fast float %737, %190
  br label %746

; <label>:746                                     ; preds = %740, %729
  %747 = phi float [ %745, %740 ], [ %190, %729 ]
  %748 = phi i32 [ %741, %740 ], [ %195, %729 ]
  %749 = phi float [ %742, %740 ], [ %196, %729 ]
  %750 = phi float [ %743, %740 ], [ %197, %729 ]
  %751 = phi float [ %744, %740 ], [ %198, %729 ]
  %752 = fadd fast float %464, %194
  %753 = fmul fast float %464, %55
  %754 = fmul fast float %464, %56
  %755 = fmul fast float %464, %57
  %756 = fadd fast float %753, %191
  %757 = fadd fast float %754, %192
  %758 = fadd fast float %755, %193
  %759 = fcmp fast olt float %752, %168
  %760 = extractvalue %dx.types.CBufRet.f32 %731, 2
  %761 = fcmp fast olt float %760, %747
  %762 = and i1 %759, %761
  br i1 %762, label %187, label %763

; <label>:763                                     ; preds = %746
  br label %764

; <label>:764                                     ; preds = %763, %164
  %765 = phi float [ 0.000000e+00, %164 ], [ %749, %763 ]
  %766 = phi float [ 0.000000e+00, %164 ], [ %750, %763 ]
  %767 = phi float [ 0.000000e+00, %164 ], [ %751, %763 ]
  %768 = extractvalue %dx.types.CBufRet.f32 %49, 3
  %769 = fmul fast float %768, %765
  %770 = fdiv fast float 1.000000e+00, %766
  %771 = fmul fast float %770, %767
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %14, i32 %15, i32 undef, float %769, float %771, float %767, float %769, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!23 = !{void ()* @cs_fog_raymarching_air_clouds_brfog, !"cs_fog_raymarching_air_clouds_brfog", null, !4, !24}
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
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 1}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 1}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 1}

