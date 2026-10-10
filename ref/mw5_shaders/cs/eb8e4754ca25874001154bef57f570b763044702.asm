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
; shader hash: 99e9f3f01799f29c1e192ba02943fa56
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

define void @cs_fog_raymarching_air_clouds_particles() {
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
  %48 = fsub fast float -0.000000e+00, %47
  %49 = fadd fast float %46, %40
  %50 = fsub fast float -0.000000e+00, %49
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 2
  %53 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.f32 %53, 0
  %55 = extractvalue %dx.types.CBufRet.f32 %53, 1
  %56 = extractvalue %dx.types.CBufRet.f32 %53, 2
  %57 = fsub fast float -0.000000e+00, %54
  %58 = fsub fast float -0.000000e+00, %55
  %59 = fsub fast float -0.000000e+00, %56
  %60 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.f32 %60, 3
  %62 = fsub fast float %61, %41
  %63 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %48, float %50, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %64 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %65 = fdiv fast float 1.000000e+00, %64
  %66 = fmul fast float %65, %63
  %67 = fcmp fast olt float %66, 0.000000e+00
  %68 = fcmp olt float %56, -0.000000e+00
  %69 = and i1 %68, %67
  br i1 %69, label %74, label %70, !dx.controlflow.hints !29

; <label>:70                                      ; preds = %0
  %71 = fcmp ogt float %56, -0.000000e+00
  br i1 %71, label %72, label %74, !dx.controlflow.hints !30

; <label>:72                                      ; preds = %70
  %73 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %66)  ; FMax(a,b)
  br label %74

; <label>:74                                      ; preds = %72, %70, %0
  %75 = phi float [ 0.000000e+00, %0 ], [ %73, %72 ], [ 0.000000e+00, %70 ]
  %76 = phi float [ 0.000000e+00, %0 ], [ 0x47EFFFFFE0000000, %72 ], [ %66, %70 ]
  %77 = fcmp fast oeq float %76, 0.000000e+00
  br i1 %77, label %81, label %78, !dx.controlflow.hints !31

; <label>:78                                      ; preds = %74
  %79 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %75)  ; FMin(a,b)
  %80 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %76)  ; FMax(a,b)
  br label %81

; <label>:81                                      ; preds = %78, %74
  %82 = phi float [ %80, %78 ], [ -1.000000e+00, %74 ]
  %83 = phi i32 [ 1, %78 ], [ 0, %74 ]
  %84 = phi float [ %79, %78 ], [ 0x47EFFFFFE0000000, %74 ]
  %85 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %86 = extractvalue %dx.types.CBufRet.i32 %85, 3
  %87 = icmp eq i32 %86, 0
  %88 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.f32 %88, 2
  %90 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.f32 %90, 2
  %92 = fsub fast float %89, %41
  %93 = fadd fast float %92, %91
  br i1 %87, label %101, label %94, !dx.controlflow.hints !32

; <label>:94                                      ; preds = %81
  %95 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %48, float %50, float %93)  ; Dot3(ax,ay,az,bx,by,bz)
  %96 = fmul fast float %65, %95
  %97 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %48, float %50, float %92)  ; Dot3(ax,ay,az,bx,by,bz)
  %98 = fmul fast float %65, %97
  %99 = call float @dx.op.binary.f32(i32 36, float %96, float %98)  ; FMin(a,b)
  %100 = call float @dx.op.binary.f32(i32 35, float %96, float %98)  ; FMax(a,b)
  br label %134

; <label>:101                                     ; preds = %81
  %102 = fdiv fast float 1.000000e+00, %57
  %103 = fdiv fast float 1.000000e+00, %58
  %104 = fdiv fast float 1.000000e+00, %59
  %105 = extractvalue %dx.types.CBufRet.f32 %88, 0
  %106 = extractvalue %dx.types.CBufRet.f32 %88, 1
  %107 = extractvalue %dx.types.CBufRet.f32 %90, 0
  %108 = extractvalue %dx.types.CBufRet.f32 %90, 1
  %109 = fsub fast float %105, %47
  %110 = fmul fast float %109, %102
  %111 = fadd fast float %109, %107
  %112 = fmul fast float %111, %102
  %113 = call float @dx.op.binary.f32(i32 36, float %110, float %112)  ; FMin(a,b)
  %114 = call float @dx.op.binary.f32(i32 35, float %110, float %112)  ; FMax(a,b)
  %115 = fsub fast float %106, %49
  %116 = fmul fast float %115, %103
  %117 = fadd fast float %115, %108
  %118 = fmul fast float %117, %103
  %119 = call float @dx.op.binary.f32(i32 36, float %116, float %118)  ; FMin(a,b)
  %120 = call float @dx.op.binary.f32(i32 35, float %113, float %119)  ; FMax(a,b)
  %121 = call float @dx.op.binary.f32(i32 35, float %116, float %118)  ; FMax(a,b)
  %122 = call float @dx.op.binary.f32(i32 36, float %114, float %121)  ; FMin(a,b)
  %123 = fmul fast float %92, %104
  %124 = fmul fast float %93, %104
  %125 = call float @dx.op.binary.f32(i32 36, float %123, float %124)  ; FMin(a,b)
  %126 = call float @dx.op.binary.f32(i32 35, float %120, float %125)  ; FMax(a,b)
  %127 = call float @dx.op.binary.f32(i32 35, float %123, float %124)  ; FMax(a,b)
  %128 = call float @dx.op.binary.f32(i32 36, float %122, float %127)  ; FMin(a,b)
  %129 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %126)  ; FMax(a,b)
  %130 = fcmp fast ult float %128, %129
  br i1 %130, label %134, label %131, !dx.controlflow.hints !33

; <label>:131                                     ; preds = %101
  %132 = call float @dx.op.binary.f32(i32 36, float %126, float %128)  ; FMin(a,b)
  %133 = call float @dx.op.binary.f32(i32 35, float %126, float %128)  ; FMax(a,b)
  br label %134

; <label>:134                                     ; preds = %131, %101, %94
  %135 = phi float [ %99, %94 ], [ %132, %131 ], [ 0.000000e+00, %101 ]
  %136 = phi float [ %100, %94 ], [ %133, %131 ], [ 0.000000e+00, %101 ]
  %137 = fcmp fast oeq float %136, 0.000000e+00
  br i1 %137, label %141, label %138, !dx.controlflow.hints !34

; <label>:138                                     ; preds = %134
  %139 = call float @dx.op.binary.f32(i32 36, float %84, float %135)  ; FMin(a,b)
  %140 = call float @dx.op.binary.f32(i32 35, float %82, float %136)  ; FMax(a,b)
  br label %141

; <label>:141                                     ; preds = %138, %134
  %142 = phi float [ %140, %138 ], [ %82, %134 ]
  %143 = phi i32 [ 1, %138 ], [ 0, %134 ]
  %144 = phi float [ %139, %138 ], [ %84, %134 ]
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 3
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 0
  %149 = fsub fast float %146, %41
  %150 = fadd fast float %149, %148
  %151 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %48, float %50, float %150)  ; Dot3(ax,ay,az,bx,by,bz)
  %152 = fmul fast float %65, %151
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.f32 %153, 2
  %155 = fsub fast float %154, %41
  %156 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %48, float %50, float %155)  ; Dot3(ax,ay,az,bx,by,bz)
  %157 = fmul fast float %65, %156
  %158 = call float @dx.op.binary.f32(i32 36, float %152, float %157)  ; FMin(a,b)
  %159 = call float @dx.op.binary.f32(i32 35, float %152, float %157)  ; FMax(a,b)
  %160 = call float @dx.op.binary.f32(i32 36, float %144, float %158)  ; FMin(a,b)
  %161 = call float @dx.op.binary.f32(i32 35, float %142, float %159)  ; FMax(a,b)
  %162 = fdiv fast float 1.000000e+00, %57
  %163 = fdiv fast float 1.000000e+00, %58
  %164 = fdiv fast float 1.000000e+00, %59
  %165 = call float @dx.op.binary.f32(i32 36, float %52, float %161)  ; FMin(a,b)
  %166 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %160)  ; FMax(a,b)
  %167 = extractvalue %dx.types.CBufRet.f32 %60, 1
  %168 = fmul fast float %30, 2.000000e+00
  %169 = fadd fast float %168, -1.000000e+00
  %170 = fmul fast float %167, %169
  %171 = fadd fast float %170, %166
  %172 = fcmp fast olt float %171, %165
  %173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %174 = extractvalue %dx.types.CBufRet.f32 %173, 2
  %175 = fcmp fast olt float %174, 1.000000e+00
  %176 = and i1 %175, %172
  br i1 %176, label %177, label %791

; <label>:177                                     ; preds = %141
  %178 = fmul fast float %171, %59
  %179 = fadd fast float %178, %41
  %180 = fmul fast float %171, %58
  %181 = fadd fast float %180, %49
  %182 = fmul fast float %171, %57
  %183 = fadd fast float %182, %47
  br label %184

; <label>:184                                     ; preds = %773, %177
  %185 = phi float [ %305, %773 ], [ undef, %177 ]
  %186 = phi float [ %306, %773 ], [ undef, %177 ]
  %187 = phi float [ %307, %773 ], [ undef, %177 ]
  %188 = phi float [ %308, %773 ], [ undef, %177 ]
  %189 = phi float [ %774, %773 ], [ 1.000000e+00, %177 ]
  %190 = phi float [ %783, %773 ], [ %183, %177 ]
  %191 = phi float [ %784, %773 ], [ %181, %177 ]
  %192 = phi float [ %785, %773 ], [ %179, %177 ]
  %193 = phi float [ %779, %773 ], [ %171, %177 ]
  %194 = phi i32 [ %310, %773 ], [ 10, %177 ]
  %195 = phi i32 [ %775, %773 ], [ 0, %177 ]
  %196 = phi float [ %776, %773 ], [ 0.000000e+00, %177 ]
  %197 = phi float [ %777, %773 ], [ 0.000000e+00, %177 ]
  %198 = phi float [ %778, %773 ], [ 0.000000e+00, %177 ]
  %199 = fsub fast float -0.000000e+00, %191
  %200 = fsub fast float -0.000000e+00, %190
  %201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %202 = extractvalue %dx.types.CBufRet.f32 %201, 1
  %203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %204 = extractvalue %dx.types.CBufRet.f32 %203, 0
  %205 = extractvalue %dx.types.CBufRet.f32 %203, 1
  %206 = fsub fast float %190, %204
  %207 = fsub fast float %191, %205
  %208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %209 = extractvalue %dx.types.CBufRet.f32 %208, 2
  %210 = extractvalue %dx.types.CBufRet.f32 %208, 3
  %211 = fmul fast float %206, %209
  %212 = fmul fast float %207, %210
  %213 = call float @dx.op.binary.f32(i32 36, float %211, float %212)  ; FMin(a,b)
  %214 = fcmp fast olt float %213, 0.000000e+00
  %215 = call float @dx.op.binary.f32(i32 35, float %211, float %212)  ; FMax(a,b)
  %216 = fcmp fast ogt float %215, 1.000000e+00
  %217 = or i1 %214, %216
  %218 = extractvalue %dx.types.CBufRet.f32 %203, 2
  %219 = fcmp fast olt float %192, %218
  %220 = or i1 %217, %219
  %221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.f32 %221, 3
  %223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %224 = extractvalue %dx.types.CBufRet.f32 %223, 0
  %225 = fadd fast float %224, %222
  %226 = fcmp fast ogt float %192, %225
  %227 = or i1 %220, %226
  br i1 %227, label %228, label %257, !dx.controlflow.hints !35

; <label>:228                                     ; preds = %184
  %229 = extractvalue %dx.types.CBufRet.f32 %208, 0
  %230 = extractvalue %dx.types.CBufRet.f32 %208, 1
  %231 = fsub fast float %204, %190
  %232 = fmul fast float %231, %162
  %233 = fadd fast float %231, %229
  %234 = fmul fast float %233, %162
  %235 = call float @dx.op.binary.f32(i32 36, float %232, float %234)  ; FMin(a,b)
  %236 = call float @dx.op.binary.f32(i32 35, float %232, float %234)  ; FMax(a,b)
  %237 = fsub fast float %205, %191
  %238 = fmul fast float %237, %163
  %239 = fadd fast float %237, %230
  %240 = fmul fast float %239, %163
  %241 = call float @dx.op.binary.f32(i32 36, float %238, float %240)  ; FMin(a,b)
  %242 = call float @dx.op.binary.f32(i32 35, float %235, float %241)  ; FMax(a,b)
  %243 = call float @dx.op.binary.f32(i32 35, float %238, float %240)  ; FMax(a,b)
  %244 = call float @dx.op.binary.f32(i32 36, float %236, float %243)  ; FMin(a,b)
  %245 = fsub fast float %218, %192
  %246 = fmul fast float %245, %164
  %247 = fsub fast float %222, %192
  %248 = fadd fast float %247, %224
  %249 = fmul fast float %248, %164
  %250 = call float @dx.op.binary.f32(i32 36, float %246, float %249)  ; FMin(a,b)
  %251 = call float @dx.op.binary.f32(i32 35, float %242, float %250)  ; FMax(a,b)
  %252 = call float @dx.op.binary.f32(i32 35, float %246, float %249)  ; FMax(a,b)
  %253 = call float @dx.op.binary.f32(i32 36, float %244, float %252)  ; FMin(a,b)
  %254 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %251)  ; FMax(a,b)
  %255 = fcmp fast oge float %253, %254
  %256 = select i1 %255, float %251, float 1.000000e+07
  br label %303

; <label>:257                                     ; preds = %184
  %258 = fsub fast float 1.000000e+00, %212
  %259 = icmp eq i32 %194, 0
  br i1 %259, label %288, label %260

; <label>:260                                     ; preds = %257
  br label %261

; <label>:261                                     ; preds = %284, %260
  %262 = phi i32 [ %285, %284 ], [ %194, %260 ]
  %263 = uitofp i32 %262 to float
  %264 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %13, float %211, float %258, float undef, float undef, i32 0, i32 0, i32 undef, float %263)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %265 = extractvalue %dx.types.ResRet.f32 %264, 0
  %266 = extractvalue %dx.types.ResRet.f32 %264, 1
  %267 = extractvalue %dx.types.ResRet.f32 %264, 2
  %268 = fcmp fast oeq float %265, 0.000000e+00
  %269 = fcmp ule float %192, %267
  %270 = fcmp uge float %192, %266
  %271 = or i1 %270, %269
  %272 = or i1 %268, %271
  br i1 %272, label %273, label %284, !dx.controlflow.hints !36

; <label>:273                                     ; preds = %261
  %274 = extractvalue %dx.types.ResRet.f32 %264, 3
  %275 = extractvalue %dx.types.CBufRet.f32 %208, 0
  %276 = and i32 %262, 31
  %277 = lshr i32 1024, %276
  %278 = uitofp i32 %277 to float
  %279 = fdiv fast float %275, %278
  %280 = add i32 %262, 1
  %281 = uitofp i32 %280 to float
  %282 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %281)  ; FMin(a,b)
  %283 = fptosi float %282 to i32
  br label %303

; <label>:284                                     ; preds = %261
  %285 = add i32 %262, -1
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %261, !llvm.loop !37

; <label>:287                                     ; preds = %284
  br label %288

; <label>:288                                     ; preds = %287, %257
  %289 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %12, float %211, float %258, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %290 = extractvalue %dx.types.ResRet.f32 %289, 0
  %291 = extractvalue %dx.types.ResRet.f32 %289, 1
  %292 = extractvalue %dx.types.ResRet.f32 %289, 2
  %293 = extractvalue %dx.types.ResRet.f32 %289, 3
  %294 = extractvalue %dx.types.CBufRet.f32 %208, 0
  %295 = fmul fast float %294, 9.765625e-04
  %296 = fcmp fast oeq float %290, 0.000000e+00
  %297 = fcmp ule float %192, %292
  %298 = fcmp uge float %192, %291
  %299 = or i1 %298, %297
  %300 = or i1 %296, %299
  %301 = zext i1 %300 to i32
  %302 = xor i32 %301, 1
  br label %303

; <label>:303                                     ; preds = %288, %273, %228
  %304 = phi float [ %256, %228 ], [ %279, %273 ], [ %295, %288 ]
  %305 = phi float [ %185, %228 ], [ %265, %273 ], [ %290, %288 ]
  %306 = phi float [ %186, %228 ], [ %266, %273 ], [ %291, %288 ]
  %307 = phi float [ %187, %228 ], [ %267, %273 ], [ %292, %288 ]
  %308 = phi float [ %188, %228 ], [ %274, %273 ], [ %293, %288 ]
  %309 = phi i32 [ 0, %228 ], [ 0, %273 ], [ %302, %288 ]
  %310 = phi i32 [ 10, %228 ], [ %283, %273 ], [ 1, %288 ]
  %311 = icmp eq i32 %309, 0
  %312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %313 = extractvalue %dx.types.CBufRet.f32 %312, 2
  %314 = call float @dx.op.binary.f32(i32 35, float %304, float %313)  ; FMax(a,b)
  %315 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %314)  ; FMin(a,b)
  %316 = icmp eq i32 %83, 0
  br i1 %316, label %329, label %317, !dx.controlflow.hints !39

; <label>:317                                     ; preds = %303
  %318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %319 = extractvalue %dx.types.CBufRet.f32 %318, 3
  %320 = extractvalue %dx.types.CBufRet.f32 %318, 2
  %321 = fmul fast float %319, %193
  %322 = fdiv fast float %321, %165
  %323 = fadd fast float %322, 1.000000e+00
  %324 = call float @dx.op.unary.f32(i32 23, float %323)  ; Log(value)
  %325 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %324)  ; FMin(a,b)
  %326 = fmul fast float %320, %165
  %327 = fmul fast float %326, %325
  %328 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %327)  ; FMin(a,b)
  br label %329

; <label>:329                                     ; preds = %317, %303
  %330 = phi float [ %328, %317 ], [ 0x47EFFFFFE0000000, %303 ]
  %331 = icmp eq i32 %143, 0
  br i1 %331, label %387, label %332, !dx.controlflow.hints !40

; <label>:332                                     ; preds = %329
  %333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %334 = extractvalue %dx.types.CBufRet.f32 %333, 0
  %335 = extractvalue %dx.types.CBufRet.f32 %333, 1
  %336 = extractvalue %dx.types.CBufRet.f32 %333, 2
  %337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %338 = extractvalue %dx.types.CBufRet.f32 %337, 0
  %339 = extractvalue %dx.types.CBufRet.f32 %337, 1
  %340 = extractvalue %dx.types.CBufRet.f32 %337, 2
  %341 = fsub fast float %190, %338
  %342 = fsub fast float %191, %339
  %343 = fsub fast float %192, %340
  %344 = fmul fast float %341, %334
  %345 = fmul fast float %342, %335
  %346 = fmul fast float %343, %336
  %347 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %348 = extractvalue %dx.types.CBufRet.i32 %347, 3
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %353, label %350, !dx.controlflow.hints !41

; <label>:350                                     ; preds = %332
  %351 = call float @dx.op.unary.f32(i32 22, float %344)  ; Frc(value)
  %352 = call float @dx.op.unary.f32(i32 22, float %345)  ; Frc(value)
  br label %353

; <label>:353                                     ; preds = %350, %332
  %354 = phi float [ %351, %350 ], [ %344, %332 ]
  %355 = phi float [ %352, %350 ], [ %345, %332 ]
  %356 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %10, float %354, float %355, float %346, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %357 = extractvalue %dx.types.ResRet.f32 %356, 0
  %358 = fmul fast float %357, 2.000000e+00
  %359 = fadd fast float %358, -1.000000e+00
  %360 = extractvalue %dx.types.CBufRet.f32 %333, 3
  %361 = fmul fast float %359, %360
  %362 = fcmp fast olt float %361, 0.000000e+00
  %363 = fcmp fast oge float %346, 0.000000e+00
  %364 = fcmp fast ole float %346, 1.000000e+00
  br i1 %349, label %367, label %365, !dx.controlflow.hints !42

; <label>:365                                     ; preds = %353
  %366 = and i1 %363, %364
  br label %377

; <label>:367                                     ; preds = %353
  %368 = fcmp fast oge float %344, 0.000000e+00
  %369 = fcmp fast oge float %345, 0.000000e+00
  %370 = and i1 %368, %369
  %371 = and i1 %363, %370
  %372 = fcmp fast ole float %344, 1.000000e+00
  %373 = fcmp fast ole float %345, 1.000000e+00
  %374 = and i1 %372, %373
  %375 = and i1 %364, %374
  %376 = and i1 %371, %375
  br label %377

; <label>:377                                     ; preds = %367, %365
  %378 = phi i1 [ %366, %365 ], [ %376, %367 ]
  %379 = and i1 %362, %378
  %380 = call float @dx.op.unary.f32(i32 6, float %361)  ; FAbs(value)
  %381 = extractvalue %dx.types.CBufRet.f32 %312, 1
  %382 = extractvalue %dx.types.CBufRet.f32 %312, 0
  %383 = call float @dx.op.binary.f32(i32 35, float %380, float %382)  ; FMax(a,b)
  %384 = select i1 %379, float %381, float %383
  %385 = zext i1 %379 to i32
  %386 = call float @dx.op.binary.f32(i32 36, float %315, float %384)  ; FMin(a,b)
  br label %387

; <label>:387                                     ; preds = %377, %329
  %388 = phi float [ %386, %377 ], [ %315, %329 ]
  %389 = phi i32 [ %385, %377 ], [ 0, %329 ]
  %390 = extractvalue %dx.types.CBufRet.f32 %201, 2
  %391 = fmul fast float %390, %193
  %392 = call float @dx.op.unary.f32(i32 23, float %391)  ; Log(value)
  %393 = fmul fast float %392, 0x3FE62E4300000000
  %394 = call float @dx.op.binary.f32(i32 35, float %393, float 1.000000e+00)  ; FMax(a,b)
  %395 = fmul fast float %394, %330
  %396 = call float @dx.op.binary.f32(i32 36, float %395, float %388)  ; FMin(a,b)
  %397 = call float @dx.op.binary.f32(i32 35, float %396, float %202)  ; FMax(a,b)
  %398 = fadd fast float %165, 0x3F1A36E2E0000000
  %399 = fsub fast float %398, %193
  %400 = call float @dx.op.binary.f32(i32 36, float %399, float %397)  ; FMin(a,b)
  br i1 %316, label %446, label %401, !dx.controlflow.hints !43

; <label>:401                                     ; preds = %387
  %402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %403 = extractvalue %dx.types.CBufRet.f32 %402, 0
  %404 = fsub fast float %403, %192
  %405 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %200, float %199, float %404)  ; Dot3(ax,ay,az,bx,by,bz)
  %406 = fmul fast float %65, %405
  %407 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %406)  ; FMax(a,b)
  %408 = fcmp ogt float %56, -0.000000e+00
  %409 = call float @dx.op.binary.f32(i32 36, float %400, float %407)  ; FMin(a,b)
  br i1 %408, label %411, label %410, !dx.controlflow.hints !44

; <label>:410                                     ; preds = %401
  br label %411

; <label>:411                                     ; preds = %410, %401
  %412 = phi float [ 0.000000e+00, %410 ], [ %409, %401 ]
  %413 = phi float [ %409, %410 ], [ %400, %401 ]
  %414 = phi float [ %409, %410 ], [ 0.000000e+00, %401 ]
  %415 = phi float [ %400, %410 ], [ %409, %401 ]
  %416 = fsub fast float %413, %412
  %417 = extractvalue %dx.types.CBufRet.f32 %402, 1
  %418 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %417)  ; FMin(a,b)
  %419 = fsub fast float %192, %403
  %420 = fmul fast float %418, 0x3FF7154760000000
  %421 = fmul fast float %420, %419
  %422 = call float @dx.op.unary.f32(i32 21, float %421)  ; Exp(value)
  %423 = fmul fast float %56, 0xBFF7154760000000
  %424 = fmul fast float %423, %415
  %425 = fmul fast float %424, %418
  %426 = call float @dx.op.unary.f32(i32 21, float %425)  ; Exp(value)
  %427 = fmul fast float %423, %414
  %428 = fmul fast float %427, %418
  %429 = call float @dx.op.unary.f32(i32 21, float %428)  ; Exp(value)
  %430 = fsub fast float %426, %429
  %431 = fmul fast float %430, %422
  %432 = fmul fast float %418, %59
  %433 = fdiv fast float %431, %432
  %434 = fadd fast float %416, %433
  %435 = call float @dx.op.unary.f32(i32 6, float %59)  ; FAbs(value)
  %436 = fcmp fast olt float %435, 0x3F0FFB4800000000
  %437 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %419)  ; FMax(a,b)
  %438 = fmul fast float %437, 0x3FF7154760000000
  %439 = fmul fast float %438, %417
  %440 = call float @dx.op.unary.f32(i32 21, float %439)  ; Exp(value)
  %441 = fmul fast float %440, %400
  %442 = select i1 %436, float %441, float %434
  %443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %444 = extractvalue %dx.types.CBufRet.f32 %443, 1
  %445 = fmul fast float %442, %444
  br label %446

; <label>:446                                     ; preds = %411, %387
  %447 = phi float [ %445, %411 ], [ 0.000000e+00, %387 ]
  %448 = icmp eq i32 %389, 0
  br i1 %448, label %629, label %449, !dx.controlflow.hints !45

; <label>:449                                     ; preds = %446
  %450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %451 = extractvalue %dx.types.CBufRet.f32 %450, 3
  %452 = fmul fast float %451, %193
  %453 = fcmp fast oeq float %452, 0.000000e+00
  br i1 %453, label %468, label %454, !dx.controlflow.hints !46

; <label>:454                                     ; preds = %449
  %455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %456 = extractvalue %dx.types.CBufRet.f32 %455, 3
  %457 = fmul fast float %456, %452
  %458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %459 = extractvalue %dx.types.CBufRet.f32 %458, 0
  %460 = extractvalue %dx.types.CBufRet.f32 %458, 1
  %461 = extractvalue %dx.types.CBufRet.f32 %458, 2
  %462 = fmul fast float %459, %457
  %463 = fmul fast float %460, %457
  %464 = fmul fast float %461, %457
  %465 = call float @dx.op.unary.f32(i32 23, float %462)  ; Log(value)
  %466 = call float @dx.op.unary.f32(i32 23, float %463)  ; Log(value)
  %467 = call float @dx.op.unary.f32(i32 23, float %464)  ; Log(value)
  br label %468

; <label>:468                                     ; preds = %454, %449
  %469 = phi float [ %465, %454 ], [ 0.000000e+00, %449 ]
  %470 = phi float [ %466, %454 ], [ 0.000000e+00, %449 ]
  %471 = phi float [ %467, %454 ], [ 0.000000e+00, %449 ]
  %472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %473 = extractvalue %dx.types.CBufRet.f32 %472, 0
  %474 = extractvalue %dx.types.CBufRet.f32 %472, 1
  %475 = extractvalue %dx.types.CBufRet.f32 %472, 2
  %476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %477 = extractvalue %dx.types.CBufRet.f32 %476, 0
  %478 = extractvalue %dx.types.CBufRet.f32 %476, 1
  %479 = extractvalue %dx.types.CBufRet.f32 %476, 2
  %480 = fsub fast float %190, %477
  %481 = fsub fast float %191, %478
  %482 = fsub fast float %192, %479
  %483 = fmul fast float %480, %473
  %484 = fmul fast float %481, %474
  %485 = fmul fast float %482, %475
  %486 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %487 = extractvalue %dx.types.CBufRet.i32 %486, 0
  %488 = extractvalue %dx.types.CBufRet.i32 %486, 1
  %489 = uitofp i32 %487 to float
  %490 = uitofp i32 %488 to float
  %491 = fmul fast float %483, %489
  %492 = fmul fast float %484, %490
  %493 = fadd fast float %491, 5.000000e-01
  %494 = fadd fast float %492, 5.000000e-01
  %495 = call float @dx.op.unary.f32(i32 22, float %493)  ; Frc(value)
  %496 = call float @dx.op.unary.f32(i32 22, float %494)  ; Frc(value)
  %497 = call float @dx.op.unary.f32(i32 27, float %493)  ; Round_ni(value)
  %498 = call float @dx.op.unary.f32(i32 27, float %494)  ; Round_ni(value)
  %499 = fadd fast float %497, 1.000000e+00
  %500 = fadd fast float %498, 1.000000e+00
  %501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %502 = extractvalue %dx.types.CBufRet.f32 %501, 0
  %503 = extractvalue %dx.types.CBufRet.f32 %501, 1
  %504 = fmul fast float %502, %499
  %505 = fmul fast float %503, %500
  %506 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %11, float %504, float %505, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %507 = extractvalue %dx.types.ResRet.f32 %506, 0
  %508 = extractvalue %dx.types.ResRet.f32 %506, 1
  %509 = extractvalue %dx.types.ResRet.f32 %506, 2
  %510 = extractvalue %dx.types.ResRet.f32 %506, 3
  %511 = extractvalue %dx.types.CBufRet.i32 %486, 2
  %512 = extractvalue %dx.types.CBufRet.f32 %501, 2
  %513 = uitofp i32 %511 to float
  %514 = fadd fast float %513, -1.000000e+00
  %515 = fmul fast float %514, %507
  %516 = fmul fast float %514, %508
  %517 = fmul fast float %514, %509
  %518 = fmul fast float %514, %510
  %519 = fadd fast float %515, 5.000000e-01
  %520 = fadd fast float %516, 5.000000e-01
  %521 = fadd fast float %517, 5.000000e-01
  %522 = fadd fast float %518, 5.000000e-01
  %523 = fptoui float %519 to i32
  %524 = fptoui float %520 to i32
  %525 = fptoui float %521 to i32
  %526 = fptoui float %522 to i32
  %527 = uitofp i32 %523 to float
  %528 = uitofp i32 %524 to float
  %529 = uitofp i32 %525 to float
  %530 = uitofp i32 %526 to float
  %531 = fadd fast float %527, 5.000000e-01
  %532 = fadd fast float %528, 5.000000e-01
  %533 = fadd fast float %529, 5.000000e-01
  %534 = fadd fast float %530, 5.000000e-01
  %535 = fmul fast float %531, %512
  %536 = fmul fast float %532, %512
  %537 = fmul fast float %533, %512
  %538 = fmul fast float %534, %512
  %539 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %12, float %535, float %485, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %540 = extractvalue %dx.types.ResRet.f32 %539, 0
  %541 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %12, float %536, float %485, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %542 = extractvalue %dx.types.ResRet.f32 %541, 0
  %543 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %12, float %537, float %485, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %544 = extractvalue %dx.types.ResRet.f32 %543, 0
  %545 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %12, float %538, float %485, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %546 = extractvalue %dx.types.ResRet.f32 %545, 0
  %547 = fsub fast float %544, %546
  %548 = fmul fast float %547, %495
  %549 = fadd fast float %548, %546
  %550 = fsub fast float %542, %540
  %551 = fmul fast float %550, %495
  %552 = fadd fast float %551, %540
  %553 = fsub fast float %552, %549
  %554 = fmul fast float %553, %496
  %555 = fadd fast float %554, %549
  %556 = fcmp fast ogt float %555, 0.000000e+00
  br i1 %556, label %557, label %625, !dx.controlflow.hints !47

; <label>:557                                     ; preds = %468
  %558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %559 = extractvalue %dx.types.CBufRet.f32 %558, 0
  %560 = extractvalue %dx.types.CBufRet.f32 %558, 1
  %561 = extractvalue %dx.types.CBufRet.f32 %558, 2
  %562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %563 = extractvalue %dx.types.CBufRet.f32 %562, 0
  %564 = extractvalue %dx.types.CBufRet.f32 %562, 1
  %565 = extractvalue %dx.types.CBufRet.f32 %562, 2
  %566 = fmul fast float %481, %473
  %567 = fmul fast float %482, %473
  %568 = fadd fast float %483, %563
  %569 = fadd fast float %566, %564
  %570 = fadd fast float %567, %565
  %571 = fmul fast float %568, %559
  %572 = fmul fast float %569, %559
  %573 = fmul fast float %570, %559
  %574 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %9, float %571, float %572, float %573, float undef, i32 0, i32 0, i32 0, float %469)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %575 = extractvalue %dx.types.ResRet.f32 %574, 0
  %576 = fmul fast float %568, %560
  %577 = fmul fast float %569, %560
  %578 = fmul fast float %570, %560
  %579 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %9, float %576, float %577, float %578, float undef, i32 0, i32 0, i32 0, float %470)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %580 = extractvalue %dx.types.ResRet.f32 %579, 1
  %581 = fmul fast float %568, %561
  %582 = fmul fast float %569, %561
  %583 = fmul fast float %570, %561
  %584 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %9, float %581, float %582, float %583, float undef, i32 0, i32 0, i32 0, float %471)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %585 = extractvalue %dx.types.ResRet.f32 %584, 2
  %586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %587 = extractvalue %dx.types.CBufRet.f32 %586, 1
  %588 = fmul fast float %580, %575
  %589 = fmul fast float %588, %585
  %590 = call float @dx.op.unary.f32(i32 23, float %589)  ; Log(value)
  %591 = fmul fast float %590, %587
  %592 = call float @dx.op.unary.f32(i32 21, float %591)  ; Exp(value)
  %593 = extractvalue %dx.types.CBufRet.f32 %586, 2
  %594 = fmul fast float %555, %555
  %595 = fmul fast float %594, %592
  %596 = fmul fast float %595, %593
  %597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %598 = extractvalue %dx.types.CBufRet.f32 %597, 3
  %599 = fmul fast float %598, %596
  %600 = bitcast float %599 to i32
  %601 = sitofp i32 %600 to float
  %602 = fptosi float %601 to i32
  %603 = bitcast i32 %602 to float
  %604 = fsub fast float 1.000000e+00, %596
  %605 = bitcast float %604 to i32
  %606 = sitofp i32 %605 to float
  %607 = fptosi float %606 to i32
  %608 = bitcast i32 %607 to float
  %609 = fadd fast float %603, %608
  %610 = bitcast float %609 to i32
  %611 = sub nsw i32 2129859010, %610
  %612 = bitcast i32 %611 to float
  %613 = fmul fast float %612, %603
  %614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %615 = extractvalue %dx.types.CBufRet.f32 %614, 3
  %616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %617 = extractvalue %dx.types.CBufRet.f32 %616, 0
  %618 = fmul fast float %613, %617
  %619 = fadd fast float %618, 1.000000e+00
  %620 = bitcast float %619 to i32
  %621 = sub nsw i32 2129859010, %620
  %622 = bitcast i32 %621 to float
  %623 = fmul fast float %613, %615
  %624 = fmul fast float %623, %622
  br label %625

; <label>:625                                     ; preds = %557, %468
  %626 = phi float [ %624, %557 ], [ %555, %468 ]
  %627 = fmul fast float %626, %400
  %628 = fadd fast float %627, %447
  br label %629

; <label>:629                                     ; preds = %625, %446
  %630 = phi float [ %628, %625 ], [ %447, %446 ]
  br i1 %311, label %756, label %631, !dx.controlflow.hints !48

; <label>:631                                     ; preds = %629
  %632 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %633 = extractvalue %dx.types.CBufRet.i32 %632, 0
  %634 = icmp ne i32 %633, 0
  %635 = zext i1 %634 to i32
  %636 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %637 = extractvalue %dx.types.CBufRet.i32 %636, 0
  %638 = icmp eq i32 %637, 0
  br i1 %638, label %672, label %639

; <label>:639                                     ; preds = %631
  br label %640

; <label>:640                                     ; preds = %667, %639
  %641 = phi i32 [ %668, %667 ], [ 0, %639 ]
  %642 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %641, i32 0)  ; BufferLoad(srv,index,wot)
  %643 = extractvalue %dx.types.ResRet.f32 %642, 0
  %644 = extractvalue %dx.types.ResRet.f32 %642, 1
  %645 = extractvalue %dx.types.ResRet.f32 %642, 2
  %646 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %641, i32 16)  ; BufferLoad(srv,index,wot)
  %647 = extractvalue %dx.types.ResRet.f32 %646, 0
  %648 = extractvalue %dx.types.ResRet.f32 %646, 1
  %649 = extractvalue %dx.types.ResRet.f32 %646, 2
  %650 = fsub fast float %643, %647
  %651 = fsub fast float %644, %648
  %652 = fsub fast float %645, %649
  %653 = fadd fast float %647, %643
  %654 = fadd fast float %648, %644
  %655 = fadd fast float %649, %645
  %656 = fcmp fast olt float %190, %650
  %657 = fcmp fast olt float %191, %651
  %658 = fcmp fast olt float %192, %652
  %659 = or i1 %656, %657
  %660 = or i1 %658, %659
  %661 = fcmp fast ogt float %190, %653
  %662 = fcmp fast ogt float %191, %654
  %663 = fcmp fast ogt float %192, %655
  %664 = or i1 %661, %662
  %665 = or i1 %663, %664
  %666 = or i1 %660, %665
  br i1 %666, label %667, label %670, !dx.controlflow.hints !49

; <label>:667                                     ; preds = %640
  %668 = add nuw i32 %641, 1
  %669 = icmp ult i32 %668, %637
  br i1 %669, label %640, label %670

; <label>:670                                     ; preds = %667, %640
  %671 = phi i32 [ 255, %667 ], [ %641, %640 ]
  br label %672

; <label>:672                                     ; preds = %670, %631
  %673 = phi i32 [ 255, %631 ], [ %671, %670 ]
  %674 = icmp eq i32 %673, 255
  br i1 %674, label %680, label %675, !dx.controlflow.hints !50

; <label>:675                                     ; preds = %672
  %676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %673, i32 156)  ; BufferLoad(srv,index,wot)
  %677 = extractvalue %dx.types.ResRet.i32 %676, 0
  %678 = icmp ne i32 %677, 0
  %679 = zext i1 %678 to i32
  br label %680

; <label>:680                                     ; preds = %675, %672
  %681 = phi i32 [ %679, %675 ], [ %635, %672 ]
  %682 = icmp eq i32 %681, 0
  br i1 %682, label %683, label %752, !dx.controlflow.hints !51

; <label>:683                                     ; preds = %680
  %684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %685 = extractvalue %dx.types.CBufRet.f32 %684, 3
  %686 = extractvalue %dx.types.CBufRet.f32 %221, 0
  %687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %688 = extractvalue %dx.types.CBufRet.f32 %687, 2
  %689 = extractvalue %dx.types.CBufRet.f32 %687, 3
  br i1 %674, label %700, label %690, !dx.controlflow.hints !52

; <label>:690                                     ; preds = %683
  %691 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %673, i32 60)  ; BufferLoad(srv,index,wot)
  %692 = extractvalue %dx.types.ResRet.f32 %691, 0
  %693 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %673, i32 64)  ; BufferLoad(srv,index,wot)
  %694 = extractvalue %dx.types.ResRet.f32 %693, 0
  %695 = extractvalue %dx.types.ResRet.f32 %693, 1
  %696 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %673, i32 72)  ; BufferLoad(srv,index,wot)
  %697 = extractvalue %dx.types.ResRet.f32 %696, 0
  %698 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %673, i32 96)  ; BufferLoad(srv,index,wot)
  %699 = extractvalue %dx.types.ResRet.f32 %698, 0
  br label %700

; <label>:700                                     ; preds = %690, %683
  %701 = phi float [ %694, %690 ], [ %688, %683 ]
  %702 = phi float [ %695, %690 ], [ %689, %683 ]
  %703 = phi float [ %699, %690 ], [ %686, %683 ]
  %704 = phi float [ %697, %690 ], [ %222, %683 ]
  %705 = phi float [ %692, %690 ], [ %224, %683 ]
  %706 = call float @dx.op.binary.f32(i32 35, float %305, float 0.000000e+00)  ; FMax(a,b)
  %707 = call float @dx.op.binary.f32(i32 36, float %706, float 1.000000e+00)  ; FMin(a,b)
  %708 = call float @dx.op.unary.f32(i32 24, float %707)  ; Sqrt(value)
  %709 = call float @dx.op.binary.f32(i32 35, float %308, float 0x3F847AE140000000)  ; FMax(a,b)
  %710 = fsub fast float %306, %192
  %711 = fsub fast float %192, %307
  %712 = call float @dx.op.binary.f32(i32 36, float %711, float %710)  ; FMin(a,b)
  %713 = fdiv fast float %712, %709
  %714 = call float @dx.op.unary.f32(i32 7, float %713)  ; Saturate(value)
  %715 = fsub fast float %192, %704
  %716 = fdiv fast float %715, %705
  %717 = call float @dx.op.unary.f32(i32 7, float %716)  ; Saturate(value)
  %718 = fsub fast float 1.000000e+00, %717
  %719 = fmul float %714, %718
  %720 = fmul float %719, %719
  %721 = fmul fast float %708, %685
  %722 = fmul fast float %721, %720
  %723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %724 = extractvalue %dx.types.CBufRet.f32 %723, 2
  %725 = extractvalue %dx.types.CBufRet.f32 %723, 1
  %726 = fsub fast float %722, %725
  %727 = fsub fast float %724, %725
  %728 = fdiv fast float %726, %727
  %729 = call float @dx.op.unary.f32(i32 7, float %728)  ; Saturate(value)
  %730 = fmul fast float %729, %703
  %731 = fcmp fast ogt float %702, 0.000000e+00
  br i1 %731, label %732, label %752, !dx.controlflow.hints !53

; <label>:732                                     ; preds = %700
  %733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %734 = extractvalue %dx.types.CBufRet.f32 %733, 0
  %735 = extractvalue %dx.types.CBufRet.f32 %733, 1
  %736 = extractvalue %dx.types.CBufRet.f32 %733, 2
  %737 = fsub fast float %190, %734
  %738 = fsub fast float %191, %735
  %739 = fsub fast float %192, %736
  %740 = fmul fast float %737, %737
  %741 = fmul fast float %738, %738
  %742 = fadd fast float %740, %741
  %743 = fmul fast float %739, %739
  %744 = fadd fast float %742, %743
  %745 = call float @dx.op.unary.f32(i32 24, float %744)  ; Sqrt(value)
  %746 = fsub fast float %745, %701
  %747 = fsub fast float %702, %701
  %748 = fdiv fast float %746, %747
  %749 = call float @dx.op.unary.f32(i32 7, float %748)  ; Saturate(value)
  %750 = fmul fast float %749, %749
  %751 = fmul fast float %750, %730
  br label %752

; <label>:752                                     ; preds = %732, %700, %680
  %753 = phi float [ 0.000000e+00, %680 ], [ %751, %732 ], [ %730, %700 ]
  %754 = fmul fast float %753, %400
  %755 = fadd fast float %754, %630
  br label %756

; <label>:756                                     ; preds = %752, %629
  %757 = phi float [ %755, %752 ], [ %630, %629 ]
  %758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %759 = extractvalue %dx.types.CBufRet.f32 %758, 1
  %760 = fcmp fast ogt float %757, %759
  br i1 %760, label %761, label %773, !dx.controlflow.hints !54

; <label>:761                                     ; preds = %756
  %762 = fmul fast float %757, 0xBFF7154760000000
  %763 = call float @dx.op.unary.f32(i32 21, float %762)  ; Exp(value)
  %764 = call float @dx.op.unary.f32(i32 7, float %763)  ; Saturate(value)
  %765 = icmp eq i32 %195, 0
  br i1 %765, label %766, label %767, !dx.controlflow.hints !55

; <label>:766                                     ; preds = %761
  br label %767

; <label>:767                                     ; preds = %766, %761
  %768 = phi i32 [ %195, %761 ], [ 1, %766 ]
  %769 = phi float [ %196, %761 ], [ %193, %766 ]
  %770 = fadd fast float %400, %197
  %771 = fadd fast float %757, %198
  %772 = fmul fast float %764, %189
  br label %773

; <label>:773                                     ; preds = %767, %756
  %774 = phi float [ %772, %767 ], [ %189, %756 ]
  %775 = phi i32 [ %768, %767 ], [ %195, %756 ]
  %776 = phi float [ %769, %767 ], [ %196, %756 ]
  %777 = phi float [ %770, %767 ], [ %197, %756 ]
  %778 = phi float [ %771, %767 ], [ %198, %756 ]
  %779 = fadd fast float %400, %193
  %780 = fmul fast float %400, %57
  %781 = fmul fast float %400, %58
  %782 = fmul fast float %400, %59
  %783 = fadd fast float %780, %190
  %784 = fadd fast float %781, %191
  %785 = fadd fast float %782, %192
  %786 = fcmp fast olt float %779, %165
  %787 = extractvalue %dx.types.CBufRet.f32 %758, 2
  %788 = fcmp fast olt float %787, %774
  %789 = and i1 %786, %788
  br i1 %789, label %184, label %790

; <label>:790                                     ; preds = %773
  br label %791

; <label>:791                                     ; preds = %790, %141
  %792 = phi float [ 0.000000e+00, %141 ], [ %776, %790 ]
  %793 = phi float [ 0.000000e+00, %141 ], [ %777, %790 ]
  %794 = phi float [ 0.000000e+00, %141 ], [ %778, %790 ]
  %795 = extractvalue %dx.types.CBufRet.f32 %51, 3
  %796 = fmul fast float %795, %792
  %797 = fdiv fast float 1.000000e+00, %793
  %798 = fmul fast float %797, %794
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %16, i32 %17, i32 undef, float %796, float %798, float %794, float %796, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!26 = !{void ()* @cs_fog_raymarching_air_clouds_particles, !"cs_fog_raymarching_air_clouds_particles", null, !4, !27}
!27 = !{i32 0, i64 272, i32 4, !28}
!28 = !{i32 8, i32 8, i32 1}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.unroll.disable"}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 1}

