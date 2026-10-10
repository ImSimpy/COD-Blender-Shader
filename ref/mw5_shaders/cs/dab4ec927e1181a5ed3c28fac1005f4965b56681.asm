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
; shader hash: d03dc3a67162271d490ae87e2f294db3
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

define void @cs_fog_raymarching_air_clouds() {
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
  %45 = fsub fast float -0.000000e+00, %44
  %46 = fadd fast float %43, %37
  %47 = fsub fast float -0.000000e+00, %46
  %48 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %49 = extractvalue %dx.types.CBufRet.f32 %48, 2
  %50 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.f32 %50, 0
  %52 = extractvalue %dx.types.CBufRet.f32 %50, 1
  %53 = extractvalue %dx.types.CBufRet.f32 %50, 2
  %54 = fsub fast float -0.000000e+00, %51
  %55 = fsub fast float -0.000000e+00, %52
  %56 = fsub fast float -0.000000e+00, %53
  %57 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %58 = extractvalue %dx.types.CBufRet.f32 %57, 3
  %59 = fsub fast float %58, %38
  %60 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %45, float %47, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %61 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %54, float %55, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %62 = fdiv fast float 1.000000e+00, %61
  %63 = fmul fast float %62, %60
  %64 = fcmp fast olt float %63, 0.000000e+00
  %65 = fcmp olt float %53, -0.000000e+00
  %66 = and i1 %65, %64
  br i1 %66, label %71, label %67, !dx.controlflow.hints !25

; <label>:67                                      ; preds = %0
  %68 = fcmp ogt float %53, -0.000000e+00
  br i1 %68, label %69, label %71, !dx.controlflow.hints !26

; <label>:69                                      ; preds = %67
  %70 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %63)  ; FMax(a,b)
  br label %71

; <label>:71                                      ; preds = %69, %67, %0
  %72 = phi float [ 0.000000e+00, %0 ], [ %70, %69 ], [ 0.000000e+00, %67 ]
  %73 = phi float [ 0.000000e+00, %0 ], [ 0x47EFFFFFE0000000, %69 ], [ %63, %67 ]
  %74 = fcmp fast oeq float %73, 0.000000e+00
  br i1 %74, label %78, label %75, !dx.controlflow.hints !27

; <label>:75                                      ; preds = %71
  %76 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %72)  ; FMin(a,b)
  %77 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %73)  ; FMax(a,b)
  br label %78

; <label>:78                                      ; preds = %75, %71
  %79 = phi float [ %77, %75 ], [ -1.000000e+00, %71 ]
  %80 = phi i32 [ 1, %75 ], [ 0, %71 ]
  %81 = phi float [ %76, %75 ], [ 0x47EFFFFFE0000000, %71 ]
  %82 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.i32 %82, 3
  %84 = icmp eq i32 %83, 0
  %85 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %86 = extractvalue %dx.types.CBufRet.f32 %85, 2
  %87 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %88 = extractvalue %dx.types.CBufRet.f32 %87, 2
  %89 = fsub fast float %86, %38
  %90 = fadd fast float %89, %88
  br i1 %84, label %98, label %91, !dx.controlflow.hints !28

; <label>:91                                      ; preds = %78
  %92 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %45, float %47, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %93 = fmul fast float %62, %92
  %94 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %45, float %47, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %95 = fmul fast float %62, %94
  %96 = call float @dx.op.binary.f32(i32 36, float %93, float %95)  ; FMin(a,b)
  %97 = call float @dx.op.binary.f32(i32 35, float %93, float %95)  ; FMax(a,b)
  br label %131

; <label>:98                                      ; preds = %78
  %99 = fdiv fast float 1.000000e+00, %54
  %100 = fdiv fast float 1.000000e+00, %55
  %101 = fdiv fast float 1.000000e+00, %56
  %102 = extractvalue %dx.types.CBufRet.f32 %85, 0
  %103 = extractvalue %dx.types.CBufRet.f32 %85, 1
  %104 = extractvalue %dx.types.CBufRet.f32 %87, 0
  %105 = extractvalue %dx.types.CBufRet.f32 %87, 1
  %106 = fsub fast float %102, %44
  %107 = fmul fast float %106, %99
  %108 = fadd fast float %106, %104
  %109 = fmul fast float %108, %99
  %110 = call float @dx.op.binary.f32(i32 36, float %107, float %109)  ; FMin(a,b)
  %111 = call float @dx.op.binary.f32(i32 35, float %107, float %109)  ; FMax(a,b)
  %112 = fsub fast float %103, %46
  %113 = fmul fast float %112, %100
  %114 = fadd fast float %112, %105
  %115 = fmul fast float %114, %100
  %116 = call float @dx.op.binary.f32(i32 36, float %113, float %115)  ; FMin(a,b)
  %117 = call float @dx.op.binary.f32(i32 35, float %110, float %116)  ; FMax(a,b)
  %118 = call float @dx.op.binary.f32(i32 35, float %113, float %115)  ; FMax(a,b)
  %119 = call float @dx.op.binary.f32(i32 36, float %111, float %118)  ; FMin(a,b)
  %120 = fmul fast float %89, %101
  %121 = fmul fast float %90, %101
  %122 = call float @dx.op.binary.f32(i32 36, float %120, float %121)  ; FMin(a,b)
  %123 = call float @dx.op.binary.f32(i32 35, float %117, float %122)  ; FMax(a,b)
  %124 = call float @dx.op.binary.f32(i32 35, float %120, float %121)  ; FMax(a,b)
  %125 = call float @dx.op.binary.f32(i32 36, float %119, float %124)  ; FMin(a,b)
  %126 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %123)  ; FMax(a,b)
  %127 = fcmp fast ult float %125, %126
  br i1 %127, label %131, label %128, !dx.controlflow.hints !29

; <label>:128                                     ; preds = %98
  %129 = call float @dx.op.binary.f32(i32 36, float %123, float %125)  ; FMin(a,b)
  %130 = call float @dx.op.binary.f32(i32 35, float %123, float %125)  ; FMax(a,b)
  br label %131

; <label>:131                                     ; preds = %128, %98, %91
  %132 = phi float [ %96, %91 ], [ %129, %128 ], [ 0.000000e+00, %98 ]
  %133 = phi float [ %97, %91 ], [ %130, %128 ], [ 0.000000e+00, %98 ]
  %134 = fcmp fast oeq float %133, 0.000000e+00
  br i1 %134, label %138, label %135, !dx.controlflow.hints !30

; <label>:135                                     ; preds = %131
  %136 = call float @dx.op.binary.f32(i32 36, float %81, float %132)  ; FMin(a,b)
  %137 = call float @dx.op.binary.f32(i32 35, float %79, float %133)  ; FMax(a,b)
  br label %138

; <label>:138                                     ; preds = %135, %131
  %139 = phi float [ %137, %135 ], [ %79, %131 ]
  %140 = phi i32 [ 1, %135 ], [ 0, %131 ]
  %141 = phi float [ %136, %135 ], [ %81, %131 ]
  %142 = call float @dx.op.binary.f32(i32 36, float %49, float %139)  ; FMin(a,b)
  %143 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %141)  ; FMax(a,b)
  %144 = extractvalue %dx.types.CBufRet.f32 %57, 1
  %145 = fmul fast float %27, 2.000000e+00
  %146 = fadd fast float %145, -1.000000e+00
  %147 = fmul fast float %144, %146
  %148 = fadd fast float %147, %143
  %149 = fcmp fast olt float %148, %142
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 2
  %152 = fcmp fast olt float %151, 1.000000e+00
  %153 = and i1 %152, %149
  br i1 %153, label %154, label %524

; <label>:154                                     ; preds = %138
  %155 = fmul fast float %148, %56
  %156 = fadd fast float %155, %38
  %157 = fmul fast float %148, %55
  %158 = fadd fast float %157, %46
  %159 = fmul fast float %148, %54
  %160 = fadd fast float %159, %44
  br label %161

; <label>:161                                     ; preds = %506, %154
  %162 = phi float [ %507, %506 ], [ 1.000000e+00, %154 ]
  %163 = phi float [ %516, %506 ], [ %160, %154 ]
  %164 = phi float [ %517, %506 ], [ %158, %154 ]
  %165 = phi float [ %518, %506 ], [ %156, %154 ]
  %166 = phi float [ %512, %506 ], [ %148, %154 ]
  %167 = phi i32 [ %508, %506 ], [ 0, %154 ]
  %168 = phi float [ %509, %506 ], [ 0.000000e+00, %154 ]
  %169 = phi float [ %510, %506 ], [ 0.000000e+00, %154 ]
  %170 = phi float [ %511, %506 ], [ 0.000000e+00, %154 ]
  %171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.f32 %171, 1
  %173 = icmp eq i32 %80, 0
  br i1 %173, label %186, label %174, !dx.controlflow.hints !31

; <label>:174                                     ; preds = %161
  %175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %176 = extractvalue %dx.types.CBufRet.f32 %175, 3
  %177 = extractvalue %dx.types.CBufRet.f32 %175, 2
  %178 = fmul fast float %176, %166
  %179 = fdiv fast float %178, %142
  %180 = fadd fast float %179, 1.000000e+00
  %181 = call float @dx.op.unary.f32(i32 23, float %180)  ; Log(value)
  %182 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %181)  ; FMin(a,b)
  %183 = fmul fast float %177, %142
  %184 = fmul fast float %183, %182
  %185 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %184)  ; FMin(a,b)
  br label %186

; <label>:186                                     ; preds = %174, %161
  %187 = phi float [ %185, %174 ], [ 0x47EFFFFFE0000000, %161 ]
  %188 = icmp eq i32 %140, 0
  br i1 %188, label %245, label %189, !dx.controlflow.hints !32

; <label>:189                                     ; preds = %186
  %190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.f32 %190, 0
  %192 = extractvalue %dx.types.CBufRet.f32 %190, 1
  %193 = extractvalue %dx.types.CBufRet.f32 %190, 2
  %194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %195 = extractvalue %dx.types.CBufRet.f32 %194, 0
  %196 = extractvalue %dx.types.CBufRet.f32 %194, 1
  %197 = extractvalue %dx.types.CBufRet.f32 %194, 2
  %198 = fsub fast float %163, %195
  %199 = fsub fast float %164, %196
  %200 = fsub fast float %165, %197
  %201 = fmul fast float %198, %191
  %202 = fmul fast float %199, %192
  %203 = fmul fast float %200, %193
  %204 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %205 = extractvalue %dx.types.CBufRet.i32 %204, 3
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %210, label %207, !dx.controlflow.hints !33

; <label>:207                                     ; preds = %189
  %208 = call float @dx.op.unary.f32(i32 22, float %201)  ; Frc(value)
  %209 = call float @dx.op.unary.f32(i32 22, float %202)  ; Frc(value)
  br label %210

; <label>:210                                     ; preds = %207, %189
  %211 = phi float [ %208, %207 ], [ %201, %189 ]
  %212 = phi float [ %209, %207 ], [ %202, %189 ]
  %213 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %8, float %211, float %212, float %203, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %214 = extractvalue %dx.types.ResRet.f32 %213, 0
  %215 = fmul fast float %214, 2.000000e+00
  %216 = fadd fast float %215, -1.000000e+00
  %217 = extractvalue %dx.types.CBufRet.f32 %190, 3
  %218 = fmul fast float %216, %217
  %219 = fcmp fast olt float %218, 0.000000e+00
  %220 = fcmp fast oge float %203, 0.000000e+00
  %221 = fcmp fast ole float %203, 1.000000e+00
  br i1 %206, label %224, label %222, !dx.controlflow.hints !34

; <label>:222                                     ; preds = %210
  %223 = and i1 %220, %221
  br label %234

; <label>:224                                     ; preds = %210
  %225 = fcmp fast oge float %201, 0.000000e+00
  %226 = fcmp fast oge float %202, 0.000000e+00
  %227 = and i1 %225, %226
  %228 = and i1 %220, %227
  %229 = fcmp fast ole float %201, 1.000000e+00
  %230 = fcmp fast ole float %202, 1.000000e+00
  %231 = and i1 %229, %230
  %232 = and i1 %221, %231
  %233 = and i1 %228, %232
  br label %234

; <label>:234                                     ; preds = %224, %222
  %235 = phi i1 [ %223, %222 ], [ %233, %224 ]
  %236 = and i1 %219, %235
  %237 = call float @dx.op.unary.f32(i32 6, float %218)  ; FAbs(value)
  %238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %239 = extractvalue %dx.types.CBufRet.f32 %238, 1
  %240 = extractvalue %dx.types.CBufRet.f32 %238, 0
  %241 = call float @dx.op.binary.f32(i32 35, float %237, float %240)  ; FMax(a,b)
  %242 = select i1 %236, float %239, float %241
  %243 = zext i1 %236 to i32
  %244 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %242)  ; FMin(a,b)
  br label %245

; <label>:245                                     ; preds = %234, %186
  %246 = phi float [ %244, %234 ], [ 0x47EFFFFFE0000000, %186 ]
  %247 = phi i32 [ %243, %234 ], [ 0, %186 ]
  %248 = extractvalue %dx.types.CBufRet.f32 %171, 2
  %249 = fmul fast float %248, %166
  %250 = call float @dx.op.unary.f32(i32 23, float %249)  ; Log(value)
  %251 = fmul fast float %250, 0x3FE62E4300000000
  %252 = call float @dx.op.binary.f32(i32 35, float %251, float 1.000000e+00)  ; FMax(a,b)
  %253 = fmul fast float %252, %187
  %254 = call float @dx.op.binary.f32(i32 36, float %253, float %246)  ; FMin(a,b)
  %255 = call float @dx.op.binary.f32(i32 35, float %254, float %172)  ; FMax(a,b)
  %256 = fadd fast float %142, 0x3F1A36E2E0000000
  %257 = fsub fast float %256, %166
  %258 = call float @dx.op.binary.f32(i32 36, float %257, float %255)  ; FMin(a,b)
  br i1 %173, label %306, label %259, !dx.controlflow.hints !35

; <label>:259                                     ; preds = %245
  %260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %261 = extractvalue %dx.types.CBufRet.f32 %260, 0
  %262 = fsub fast float -0.000000e+00, %163
  %263 = fsub fast float -0.000000e+00, %164
  %264 = fsub fast float %261, %165
  %265 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %262, float %263, float %264)  ; Dot3(ax,ay,az,bx,by,bz)
  %266 = fmul fast float %62, %265
  %267 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %266)  ; FMax(a,b)
  %268 = fcmp ogt float %53, -0.000000e+00
  %269 = call float @dx.op.binary.f32(i32 36, float %258, float %267)  ; FMin(a,b)
  br i1 %268, label %271, label %270, !dx.controlflow.hints !36

; <label>:270                                     ; preds = %259
  br label %271

; <label>:271                                     ; preds = %270, %259
  %272 = phi float [ 0.000000e+00, %270 ], [ %269, %259 ]
  %273 = phi float [ %269, %270 ], [ %258, %259 ]
  %274 = phi float [ %269, %270 ], [ 0.000000e+00, %259 ]
  %275 = phi float [ %258, %270 ], [ %269, %259 ]
  %276 = fsub fast float %273, %272
  %277 = extractvalue %dx.types.CBufRet.f32 %260, 1
  %278 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %277)  ; FMin(a,b)
  %279 = fsub fast float %165, %261
  %280 = fmul fast float %278, 0x3FF7154760000000
  %281 = fmul fast float %280, %279
  %282 = call float @dx.op.unary.f32(i32 21, float %281)  ; Exp(value)
  %283 = fmul fast float %53, 0xBFF7154760000000
  %284 = fmul fast float %283, %275
  %285 = fmul fast float %284, %278
  %286 = call float @dx.op.unary.f32(i32 21, float %285)  ; Exp(value)
  %287 = fmul fast float %283, %274
  %288 = fmul fast float %287, %278
  %289 = call float @dx.op.unary.f32(i32 21, float %288)  ; Exp(value)
  %290 = fsub fast float %286, %289
  %291 = fmul fast float %290, %282
  %292 = fmul fast float %278, %56
  %293 = fdiv fast float %291, %292
  %294 = fadd fast float %276, %293
  %295 = call float @dx.op.unary.f32(i32 6, float %56)  ; FAbs(value)
  %296 = fcmp fast olt float %295, 0x3F0FFB4800000000
  %297 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %279)  ; FMax(a,b)
  %298 = fmul fast float %297, 0x3FF7154760000000
  %299 = fmul fast float %298, %277
  %300 = call float @dx.op.unary.f32(i32 21, float %299)  ; Exp(value)
  %301 = fmul fast float %300, %258
  %302 = select i1 %296, float %301, float %294
  %303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %304 = extractvalue %dx.types.CBufRet.f32 %303, 1
  %305 = fmul fast float %302, %304
  br label %306

; <label>:306                                     ; preds = %271, %245
  %307 = phi float [ %305, %271 ], [ 0.000000e+00, %245 ]
  %308 = icmp eq i32 %247, 0
  br i1 %308, label %489, label %309, !dx.controlflow.hints !37

; <label>:309                                     ; preds = %306
  %310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %311 = extractvalue %dx.types.CBufRet.f32 %310, 3
  %312 = fmul fast float %311, %166
  %313 = fcmp fast oeq float %312, 0.000000e+00
  br i1 %313, label %328, label %314, !dx.controlflow.hints !38

; <label>:314                                     ; preds = %309
  %315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %316 = extractvalue %dx.types.CBufRet.f32 %315, 3
  %317 = fmul fast float %316, %312
  %318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %319 = extractvalue %dx.types.CBufRet.f32 %318, 0
  %320 = extractvalue %dx.types.CBufRet.f32 %318, 1
  %321 = extractvalue %dx.types.CBufRet.f32 %318, 2
  %322 = fmul fast float %319, %317
  %323 = fmul fast float %320, %317
  %324 = fmul fast float %321, %317
  %325 = call float @dx.op.unary.f32(i32 23, float %322)  ; Log(value)
  %326 = call float @dx.op.unary.f32(i32 23, float %323)  ; Log(value)
  %327 = call float @dx.op.unary.f32(i32 23, float %324)  ; Log(value)
  br label %328

; <label>:328                                     ; preds = %314, %309
  %329 = phi float [ %325, %314 ], [ 0.000000e+00, %309 ]
  %330 = phi float [ %326, %314 ], [ 0.000000e+00, %309 ]
  %331 = phi float [ %327, %314 ], [ 0.000000e+00, %309 ]
  %332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %333 = extractvalue %dx.types.CBufRet.f32 %332, 0
  %334 = extractvalue %dx.types.CBufRet.f32 %332, 1
  %335 = extractvalue %dx.types.CBufRet.f32 %332, 2
  %336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %337 = extractvalue %dx.types.CBufRet.f32 %336, 0
  %338 = extractvalue %dx.types.CBufRet.f32 %336, 1
  %339 = extractvalue %dx.types.CBufRet.f32 %336, 2
  %340 = fsub fast float %163, %337
  %341 = fsub fast float %164, %338
  %342 = fsub fast float %165, %339
  %343 = fmul fast float %340, %333
  %344 = fmul fast float %341, %334
  %345 = fmul fast float %342, %335
  %346 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %347 = extractvalue %dx.types.CBufRet.i32 %346, 0
  %348 = extractvalue %dx.types.CBufRet.i32 %346, 1
  %349 = uitofp i32 %347 to float
  %350 = uitofp i32 %348 to float
  %351 = fmul fast float %343, %349
  %352 = fmul fast float %344, %350
  %353 = fadd fast float %351, 5.000000e-01
  %354 = fadd fast float %352, 5.000000e-01
  %355 = call float @dx.op.unary.f32(i32 22, float %353)  ; Frc(value)
  %356 = call float @dx.op.unary.f32(i32 22, float %354)  ; Frc(value)
  %357 = call float @dx.op.unary.f32(i32 27, float %353)  ; Round_ni(value)
  %358 = call float @dx.op.unary.f32(i32 27, float %354)  ; Round_ni(value)
  %359 = fadd fast float %357, 1.000000e+00
  %360 = fadd fast float %358, 1.000000e+00
  %361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %362 = extractvalue %dx.types.CBufRet.f32 %361, 0
  %363 = extractvalue %dx.types.CBufRet.f32 %361, 1
  %364 = fmul fast float %362, %359
  %365 = fmul fast float %363, %360
  %366 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %9, float %364, float %365, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %367 = extractvalue %dx.types.ResRet.f32 %366, 0
  %368 = extractvalue %dx.types.ResRet.f32 %366, 1
  %369 = extractvalue %dx.types.ResRet.f32 %366, 2
  %370 = extractvalue %dx.types.ResRet.f32 %366, 3
  %371 = extractvalue %dx.types.CBufRet.i32 %346, 2
  %372 = extractvalue %dx.types.CBufRet.f32 %361, 2
  %373 = uitofp i32 %371 to float
  %374 = fadd fast float %373, -1.000000e+00
  %375 = fmul fast float %374, %367
  %376 = fmul fast float %374, %368
  %377 = fmul fast float %374, %369
  %378 = fmul fast float %374, %370
  %379 = fadd fast float %375, 5.000000e-01
  %380 = fadd fast float %376, 5.000000e-01
  %381 = fadd fast float %377, 5.000000e-01
  %382 = fadd fast float %378, 5.000000e-01
  %383 = fptoui float %379 to i32
  %384 = fptoui float %380 to i32
  %385 = fptoui float %381 to i32
  %386 = fptoui float %382 to i32
  %387 = uitofp i32 %383 to float
  %388 = uitofp i32 %384 to float
  %389 = uitofp i32 %385 to float
  %390 = uitofp i32 %386 to float
  %391 = fadd fast float %387, 5.000000e-01
  %392 = fadd fast float %388, 5.000000e-01
  %393 = fadd fast float %389, 5.000000e-01
  %394 = fadd fast float %390, 5.000000e-01
  %395 = fmul fast float %391, %372
  %396 = fmul fast float %392, %372
  %397 = fmul fast float %393, %372
  %398 = fmul fast float %394, %372
  %399 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %10, float %395, float %345, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %400 = extractvalue %dx.types.ResRet.f32 %399, 0
  %401 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %10, float %396, float %345, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %402 = extractvalue %dx.types.ResRet.f32 %401, 0
  %403 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %10, float %397, float %345, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %404 = extractvalue %dx.types.ResRet.f32 %403, 0
  %405 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %10, float %398, float %345, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %406 = extractvalue %dx.types.ResRet.f32 %405, 0
  %407 = fsub fast float %404, %406
  %408 = fmul fast float %407, %355
  %409 = fadd fast float %408, %406
  %410 = fsub fast float %402, %400
  %411 = fmul fast float %410, %355
  %412 = fadd fast float %411, %400
  %413 = fsub fast float %412, %409
  %414 = fmul fast float %413, %356
  %415 = fadd fast float %414, %409
  %416 = fcmp fast ogt float %415, 0.000000e+00
  br i1 %416, label %417, label %485, !dx.controlflow.hints !39

; <label>:417                                     ; preds = %328
  %418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %419 = extractvalue %dx.types.CBufRet.f32 %418, 0
  %420 = extractvalue %dx.types.CBufRet.f32 %418, 1
  %421 = extractvalue %dx.types.CBufRet.f32 %418, 2
  %422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %423 = extractvalue %dx.types.CBufRet.f32 %422, 0
  %424 = extractvalue %dx.types.CBufRet.f32 %422, 1
  %425 = extractvalue %dx.types.CBufRet.f32 %422, 2
  %426 = fmul fast float %341, %333
  %427 = fmul fast float %342, %333
  %428 = fadd fast float %343, %423
  %429 = fadd fast float %426, %424
  %430 = fadd fast float %427, %425
  %431 = fmul fast float %428, %419
  %432 = fmul fast float %429, %419
  %433 = fmul fast float %430, %419
  %434 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %7, float %431, float %432, float %433, float undef, i32 0, i32 0, i32 0, float %329)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %435 = extractvalue %dx.types.ResRet.f32 %434, 0
  %436 = fmul fast float %428, %420
  %437 = fmul fast float %429, %420
  %438 = fmul fast float %430, %420
  %439 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %7, float %436, float %437, float %438, float undef, i32 0, i32 0, i32 0, float %330)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %440 = extractvalue %dx.types.ResRet.f32 %439, 1
  %441 = fmul fast float %428, %421
  %442 = fmul fast float %429, %421
  %443 = fmul fast float %430, %421
  %444 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %7, float %441, float %442, float %443, float undef, i32 0, i32 0, i32 0, float %331)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %445 = extractvalue %dx.types.ResRet.f32 %444, 2
  %446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %447 = extractvalue %dx.types.CBufRet.f32 %446, 1
  %448 = fmul fast float %440, %435
  %449 = fmul fast float %448, %445
  %450 = call float @dx.op.unary.f32(i32 23, float %449)  ; Log(value)
  %451 = fmul fast float %450, %447
  %452 = call float @dx.op.unary.f32(i32 21, float %451)  ; Exp(value)
  %453 = extractvalue %dx.types.CBufRet.f32 %446, 2
  %454 = fmul fast float %415, %415
  %455 = fmul fast float %454, %452
  %456 = fmul fast float %455, %453
  %457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %458 = extractvalue %dx.types.CBufRet.f32 %457, 3
  %459 = fmul fast float %458, %456
  %460 = bitcast float %459 to i32
  %461 = sitofp i32 %460 to float
  %462 = fptosi float %461 to i32
  %463 = bitcast i32 %462 to float
  %464 = fsub fast float 1.000000e+00, %456
  %465 = bitcast float %464 to i32
  %466 = sitofp i32 %465 to float
  %467 = fptosi float %466 to i32
  %468 = bitcast i32 %467 to float
  %469 = fadd fast float %463, %468
  %470 = bitcast float %469 to i32
  %471 = sub nsw i32 2129859010, %470
  %472 = bitcast i32 %471 to float
  %473 = fmul fast float %472, %463
  %474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %475 = extractvalue %dx.types.CBufRet.f32 %474, 3
  %476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %477 = extractvalue %dx.types.CBufRet.f32 %476, 0
  %478 = fmul fast float %473, %477
  %479 = fadd fast float %478, 1.000000e+00
  %480 = bitcast float %479 to i32
  %481 = sub nsw i32 2129859010, %480
  %482 = bitcast i32 %481 to float
  %483 = fmul fast float %473, %475
  %484 = fmul fast float %483, %482
  br label %485

; <label>:485                                     ; preds = %417, %328
  %486 = phi float [ %484, %417 ], [ %415, %328 ]
  %487 = fmul fast float %486, %258
  %488 = fadd fast float %487, %307
  br label %489

; <label>:489                                     ; preds = %485, %306
  %490 = phi float [ %488, %485 ], [ %307, %306 ]
  %491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %492 = extractvalue %dx.types.CBufRet.f32 %491, 1
  %493 = fcmp fast ogt float %490, %492
  br i1 %493, label %494, label %506, !dx.controlflow.hints !40

; <label>:494                                     ; preds = %489
  %495 = fmul fast float %490, 0xBFF7154760000000
  %496 = call float @dx.op.unary.f32(i32 21, float %495)  ; Exp(value)
  %497 = call float @dx.op.unary.f32(i32 7, float %496)  ; Saturate(value)
  %498 = icmp eq i32 %167, 0
  br i1 %498, label %499, label %500, !dx.controlflow.hints !41

; <label>:499                                     ; preds = %494
  br label %500

; <label>:500                                     ; preds = %499, %494
  %501 = phi i32 [ %167, %494 ], [ 1, %499 ]
  %502 = phi float [ %168, %494 ], [ %166, %499 ]
  %503 = fadd fast float %258, %169
  %504 = fadd fast float %490, %170
  %505 = fmul fast float %497, %162
  br label %506

; <label>:506                                     ; preds = %500, %489
  %507 = phi float [ %505, %500 ], [ %162, %489 ]
  %508 = phi i32 [ %501, %500 ], [ %167, %489 ]
  %509 = phi float [ %502, %500 ], [ %168, %489 ]
  %510 = phi float [ %503, %500 ], [ %169, %489 ]
  %511 = phi float [ %504, %500 ], [ %170, %489 ]
  %512 = fadd fast float %258, %166
  %513 = fmul fast float %258, %54
  %514 = fmul fast float %258, %55
  %515 = fmul fast float %258, %56
  %516 = fadd fast float %513, %163
  %517 = fadd fast float %514, %164
  %518 = fadd fast float %515, %165
  %519 = fcmp fast olt float %512, %142
  %520 = extractvalue %dx.types.CBufRet.f32 %491, 2
  %521 = fcmp fast olt float %520, %507
  %522 = and i1 %519, %521
  br i1 %522, label %161, label %523

; <label>:523                                     ; preds = %506
  br label %524

; <label>:524                                     ; preds = %523, %138
  %525 = phi float [ 0.000000e+00, %138 ], [ %509, %523 ]
  %526 = phi float [ 0.000000e+00, %138 ], [ %510, %523 ]
  %527 = phi float [ 0.000000e+00, %138 ], [ %511, %523 ]
  %528 = extractvalue %dx.types.CBufRet.f32 %48, 3
  %529 = fmul fast float %528, %525
  %530 = fdiv fast float 1.000000e+00, %526
  %531 = fmul fast float %530, %527
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %13, i32 %14, i32 undef, float %529, float %531, float %527, float %529, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!22 = !{void ()* @cs_fog_raymarching_air_clouds, !"cs_fog_raymarching_air_clouds", null, !4, !23}
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
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 1}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 1}

