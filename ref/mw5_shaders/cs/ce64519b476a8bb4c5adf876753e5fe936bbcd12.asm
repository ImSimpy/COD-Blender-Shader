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
; shader hash: 27814c1b328d78760ad3327ee0820e35
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
;   [144 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [64 x i8] (type annotation not present)
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
;                                   cbuffer      NA          NA     CB2            cb1     1
;                                   sampler      NA          NA      S0             s1     1
;                                   sampler      NA          NA      S1             s2     1
;                                   texture     f32          2d      T0             t0     1
;                                   texture     f32          2d      T1             t1     1
;                                   texture     f32          3d      T2             t2     1
;                                   texture     f32          3d      T3             t3     1
;                                   texture     f32          2d      T4             t4     1
;                                   texture     f32          2d      T5             t7     1
;                                   texture     f32          2d      T6             t6     1
;                                   texture     f32          2d      T7             t8     1
;                                   texture    byte         r/o      T8             t9     1
;                                       UAV     f32          2d      U0             u0     1
;                                       UAV     f32          2d      U1             u1     1
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
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.RWTexture2D<vector<float, 4> >" = type { <4 x float> }
%"class.RWTexture2D<float>" = type { float }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%TonemapConstants = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32 }
%ExposureConstants = type { i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.SamplerState = type { i32 }

define void @tonemap() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %18 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %19 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %20 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %21 = uitofp i32 %17 to float
  %22 = uitofp i32 %18 to float
  %23 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %24 = extractvalue %dx.types.CBufRet.f32 %23, 0
  %25 = extractvalue %dx.types.CBufRet.f32 %23, 1
  %26 = fcmp fast oge float %21, %24
  %27 = fcmp fast oge float %22, %25
  %28 = or i1 %26, %27
  br i1 %28, label %641, label %29, !dx.controlflow.hints !29

; <label>:29                                      ; preds = %0
  %30 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %31 = extractvalue %dx.types.CBufRet.f32 %30, 2
  %32 = extractvalue %dx.types.CBufRet.f32 %30, 3
  %33 = fmul fast float %31, %21
  %34 = fmul fast float %32, %22
  %35 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 0, i32 %17, i32 %18, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %36 = extractvalue %dx.types.ResRet.f32 %35, 0
  %37 = extractvalue %dx.types.ResRet.f32 %35, 1
  %38 = extractvalue %dx.types.ResRet.f32 %35, 2
  %39 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %12, float %33, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %40 = extractvalue %dx.types.ResRet.f32 %39, 0
  %41 = fsub fast float 1.000000e+00, %40
  %42 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %43 = extractvalue %dx.types.CBufRet.f32 %42, 0
  %44 = fcmp fast olt float %41, %43
  %45 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %46 = extractvalue %dx.types.CBufRet.f32 %45, 0
  %47 = fcmp fast oge float %37, %46
  %48 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %49 = extractvalue %dx.types.CBufRet.i32 %48, 3
  %50 = and i32 %49, 3
  %51 = icmp ne i32 %50, 0
  %52 = and i32 %49, 4
  %53 = icmp eq i32 %52, 0
  %54 = and i1 %51, %53
  %55 = and i1 %47, %54
  br i1 %54, label %56, label %96, !dx.controlflow.hints !30

; <label>:56                                      ; preds = %29
  %57 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %12, float %33, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %58 = extractvalue %dx.types.ResRet.f32 %57, 0
  %59 = extractvalue %dx.types.ResRet.f32 %57, 1
  %60 = call float @dx.op.binary.f32(i32 35, float %58, float 0.000000e+00)  ; FMax(a,b)
  %61 = call float @dx.op.binary.f32(i32 35, float %59, float 0.000000e+00)  ; FMax(a,b)
  %62 = call float @dx.op.binary.f32(i32 36, float %60, float 3.225500e+04)  ; FMin(a,b)
  %63 = call float @dx.op.binary.f32(i32 36, float %61, float 3.225500e+04)  ; FMin(a,b)
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 1
  %66 = fmul fast float %65, %36
  %67 = fmul fast float %65, %37
  %68 = extractvalue %dx.types.CBufRet.f32 %64, 0
  %69 = fmul fast float %68, %62
  %70 = fmul fast float %68, %63
  %71 = fadd fast float %69, %66
  %72 = fadd fast float %70, %67
  br i1 %55, label %73, label %96, !dx.controlflow.hints !31

; <label>:73                                      ; preds = %56
  %74 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %75 = extractvalue %dx.types.CBufRet.f32 %74, 3
  %76 = call float @dx.op.unary.f32(i32 7, float %72)  ; Saturate(value)
  %77 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 238)  ; CBufferLoadLegacy(handle,regIndex)
  %78 = extractvalue %dx.types.CBufRet.f32 %77, 0
  %79 = extractvalue %dx.types.CBufRet.f32 %77, 1
  %80 = extractvalue %dx.types.CBufRet.f32 %77, 2
  %81 = extractvalue %dx.types.CBufRet.f32 %74, 0
  %82 = extractvalue %dx.types.CBufRet.f32 %74, 1
  %83 = extractvalue %dx.types.CBufRet.f32 %74, 2
  %84 = fsub fast float %78, %81
  %85 = fsub fast float %79, %82
  %86 = fsub fast float %80, %83
  %87 = fmul fast float %84, %76
  %88 = fmul fast float %85, %76
  %89 = fmul fast float %86, %76
  %90 = fadd fast float %87, %81
  %91 = fadd fast float %88, %82
  %92 = fadd fast float %89, %83
  %93 = fmul fast float %90, %75
  %94 = fmul fast float %91, %75
  %95 = fmul fast float %92, %75
  br label %96

; <label>:96                                      ; preds = %73, %56, %29
  %97 = phi float [ %93, %73 ], [ %36, %29 ], [ %71, %56 ]
  %98 = phi float [ %94, %73 ], [ %37, %29 ], [ %71, %56 ]
  %99 = phi float [ %95, %73 ], [ %38, %29 ], [ %71, %56 ]
  %100 = phi float [ %71, %73 ], [ %36, %29 ], [ %71, %56 ]
  %101 = phi float [ %72, %73 ], [ %37, %29 ], [ %72, %56 ]
  br i1 %55, label %102, label %296, !dx.controlflow.hints !32

; <label>:102                                     ; preds = %96
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 219)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 0
  %105 = bitcast float %104 to i32
  %106 = icmp eq i32 %105, 3
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 2
  %109 = fsub fast float 1.000000e+00, %108
  br i1 %106, label %110, label %192, !dx.controlflow.hints !33

; <label>:110                                     ; preds = %102
  %111 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %112 = fmul fast float %111, 0x3FDAAAAAA0000000
  %113 = call float @dx.op.unary.f32(i32 21, float %112)  ; Exp(value)
  %114 = fsub fast float 1.000000e+00, %113
  %115 = call float @dx.op.unary.f32(i32 23, float %114)  ; Log(value)
  %116 = fmul fast float %115, 0x4003333340000000
  %117 = call float @dx.op.unary.f32(i32 21, float %116)  ; Exp(value)
  %118 = fdiv fast float %113, %114
  %119 = fadd fast float %118, %97
  %120 = fadd fast float %118, %98
  %121 = fadd fast float %118, %99
  %122 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %119)  ; FMax(a,b)
  %123 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %120)  ; FMax(a,b)
  %124 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %121)  ; FMax(a,b)
  %125 = call float @dx.op.unary.f32(i32 23, float %122)  ; Log(value)
  %126 = call float @dx.op.unary.f32(i32 23, float %123)  ; Log(value)
  %127 = call float @dx.op.unary.f32(i32 23, float %124)  ; Log(value)
  %128 = fmul fast float %125, 0x4003333340000000
  %129 = fmul fast float %126, 0x4003333340000000
  %130 = fmul fast float %127, 0x4003333340000000
  %131 = call float @dx.op.unary.f32(i32 21, float %128)  ; Exp(value)
  %132 = call float @dx.op.unary.f32(i32 21, float %129)  ; Exp(value)
  %133 = call float @dx.op.unary.f32(i32 21, float %130)  ; Exp(value)
  %134 = fmul fast float %131, %117
  %135 = fmul fast float %132, %117
  %136 = fmul fast float %133, %117
  %137 = extractvalue %dx.types.CBufRet.f32 %103, 1
  %138 = fmul fast float %134, %137
  %139 = fmul fast float %135, %137
  %140 = fmul fast float %136, %137
  %141 = fmul fast float %138, 0x3FE413A920000000
  %142 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %139, float %141)  ; FMad(a,b,c)
  %143 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %140, float %142)  ; FMad(a,b,c)
  %144 = fmul fast float %138, 0x3FB1B089A0000000
  %145 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %139, float %144)  ; FMad(a,b,c)
  %146 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %140, float %145)  ; FMad(a,b,c)
  %147 = fmul fast float %138, 0x3F90CB2960000000
  %148 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %139, float %147)  ; FMad(a,b,c)
  %149 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %140, float %148)  ; FMad(a,b,c)
  %150 = fmul fast float %143, 0x3F1A36E2E0000000
  %151 = fmul fast float %146, 0x3F1A36E2E0000000
  %152 = fmul fast float %149, 0x3F1A36E2E0000000
  %153 = call float @dx.op.unary.f32(i32 23, float %150)  ; Log(value)
  %154 = call float @dx.op.unary.f32(i32 23, float %151)  ; Log(value)
  %155 = call float @dx.op.unary.f32(i32 23, float %152)  ; Log(value)
  %156 = fmul fast float %153, 0x3FC4640000000000
  %157 = fmul fast float %154, 0x3FC4640000000000
  %158 = fmul fast float %155, 0x3FC4640000000000
  %159 = call float @dx.op.unary.f32(i32 21, float %156)  ; Exp(value)
  %160 = call float @dx.op.unary.f32(i32 21, float %157)  ; Exp(value)
  %161 = call float @dx.op.unary.f32(i32 21, float %158)  ; Exp(value)
  %162 = fmul fast float %159, 0x4032DA0000000000
  %163 = fmul fast float %160, 0x4032DA0000000000
  %164 = fmul fast float %161, 0x4032DA0000000000
  %165 = fadd fast float %162, 8.359375e-01
  %166 = fadd fast float %163, 8.359375e-01
  %167 = fadd fast float %164, 8.359375e-01
  %168 = fmul fast float %159, 1.868750e+01
  %169 = fmul fast float %160, 1.868750e+01
  %170 = fmul fast float %161, 1.868750e+01
  %171 = fadd fast float %168, 1.000000e+00
  %172 = fadd fast float %169, 1.000000e+00
  %173 = fadd fast float %170, 1.000000e+00
  %174 = fdiv fast float %165, %171
  %175 = fdiv fast float %166, %172
  %176 = fdiv fast float %167, %173
  %177 = call float @dx.op.unary.f32(i32 23, float %174)  ; Log(value)
  %178 = call float @dx.op.unary.f32(i32 23, float %175)  ; Log(value)
  %179 = call float @dx.op.unary.f32(i32 23, float %176)  ; Log(value)
  %180 = fmul fast float %177, 7.884375e+01
  %181 = fmul fast float %178, 7.884375e+01
  %182 = fmul fast float %179, 7.884375e+01
  %183 = call float @dx.op.unary.f32(i32 21, float %180)  ; Exp(value)
  %184 = call float @dx.op.unary.f32(i32 21, float %181)  ; Exp(value)
  %185 = call float @dx.op.unary.f32(i32 21, float %182)  ; Exp(value)
  %186 = fmul fast float %109, %183
  %187 = fmul fast float %109, %184
  %188 = fmul fast float %109, %185
  %189 = fadd fast float %186, %108
  %190 = fadd fast float %187, %108
  %191 = fadd fast float %188, %108
  br label %587

; <label>:192                                     ; preds = %102
  %193 = icmp eq i32 %105, 4
  br i1 %193, label %194, label %289, !dx.controlflow.hints !34

; <label>:194                                     ; preds = %192
  %195 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %196 = fmul fast float %195, 0x3FDAAAAAA0000000
  %197 = call float @dx.op.unary.f32(i32 21, float %196)  ; Exp(value)
  %198 = fsub fast float 1.000000e+00, %197
  %199 = call float @dx.op.unary.f32(i32 23, float %198)  ; Log(value)
  %200 = fmul fast float %199, 0x4003333340000000
  %201 = call float @dx.op.unary.f32(i32 21, float %200)  ; Exp(value)
  %202 = fdiv fast float %197, %198
  %203 = fadd fast float %202, %97
  %204 = fadd fast float %202, %98
  %205 = fadd fast float %202, %99
  %206 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %203)  ; FMax(a,b)
  %207 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %204)  ; FMax(a,b)
  %208 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %205)  ; FMax(a,b)
  %209 = call float @dx.op.unary.f32(i32 23, float %206)  ; Log(value)
  %210 = call float @dx.op.unary.f32(i32 23, float %207)  ; Log(value)
  %211 = call float @dx.op.unary.f32(i32 23, float %208)  ; Log(value)
  %212 = fmul fast float %209, 0x4003333340000000
  %213 = fmul fast float %210, 0x4003333340000000
  %214 = fmul fast float %211, 0x4003333340000000
  %215 = call float @dx.op.unary.f32(i32 21, float %212)  ; Exp(value)
  %216 = call float @dx.op.unary.f32(i32 21, float %213)  ; Exp(value)
  %217 = call float @dx.op.unary.f32(i32 21, float %214)  ; Exp(value)
  %218 = fmul fast float %215, %201
  %219 = fmul fast float %216, %201
  %220 = fmul fast float %217, %201
  %221 = extractvalue %dx.types.CBufRet.f32 %103, 1
  %222 = fmul fast float %218, %221
  %223 = fmul fast float %219, %221
  %224 = fmul fast float %220, %221
  %225 = fmul fast float %222, 0x3FEA519BC0000000
  %226 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %223, float %225)  ; FMad(a,b,c)
  %227 = fmul fast float %222, 0x3FA0FED480000000
  %228 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %223, float %227)  ; FMad(a,b,c)
  %229 = fmul fast float %222, 0x3F917E1C00000000
  %230 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %223, float %229)  ; FMad(a,b,c)
  %231 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %224, float %230)  ; FMad(a,b,c)
  %232 = call float @dx.op.binary.f32(i32 35, float %222, float %223)  ; FMax(a,b)
  %233 = call float @dx.op.binary.f32(i32 35, float %232, float %224)  ; FMax(a,b)
  %234 = fadd fast float %233, -1.000000e+00
  %235 = fmul fast float %234, 2.500000e-01
  %236 = call float @dx.op.unary.f32(i32 7, float %235)  ; Saturate(value)
  %237 = fsub fast float 1.000000e+00, %236
  %238 = fmul fast float %237, %226
  %239 = fmul fast float %237, %228
  %240 = fmul fast float %237, %231
  %241 = fmul fast float %236, %222
  %242 = fmul fast float %236, %223
  %243 = fmul fast float %236, %224
  %244 = fadd fast float %238, %241
  %245 = fadd fast float %239, %242
  %246 = fadd fast float %240, %243
  %247 = fmul fast float %244, 0x3F1A36E2E0000000
  %248 = fmul fast float %245, 0x3F1A36E2E0000000
  %249 = fmul fast float %246, 0x3F1A36E2E0000000
  %250 = call float @dx.op.unary.f32(i32 23, float %247)  ; Log(value)
  %251 = call float @dx.op.unary.f32(i32 23, float %248)  ; Log(value)
  %252 = call float @dx.op.unary.f32(i32 23, float %249)  ; Log(value)
  %253 = fmul fast float %250, 0x3FC4640000000000
  %254 = fmul fast float %251, 0x3FC4640000000000
  %255 = fmul fast float %252, 0x3FC4640000000000
  %256 = call float @dx.op.unary.f32(i32 21, float %253)  ; Exp(value)
  %257 = call float @dx.op.unary.f32(i32 21, float %254)  ; Exp(value)
  %258 = call float @dx.op.unary.f32(i32 21, float %255)  ; Exp(value)
  %259 = fmul fast float %256, 0x4032DA0000000000
  %260 = fmul fast float %257, 0x4032DA0000000000
  %261 = fmul fast float %258, 0x4032DA0000000000
  %262 = fadd fast float %259, 8.359375e-01
  %263 = fadd fast float %260, 8.359375e-01
  %264 = fadd fast float %261, 8.359375e-01
  %265 = fmul fast float %256, 1.868750e+01
  %266 = fmul fast float %257, 1.868750e+01
  %267 = fmul fast float %258, 1.868750e+01
  %268 = fadd fast float %265, 1.000000e+00
  %269 = fadd fast float %266, 1.000000e+00
  %270 = fadd fast float %267, 1.000000e+00
  %271 = fdiv fast float %262, %268
  %272 = fdiv fast float %263, %269
  %273 = fdiv fast float %264, %270
  %274 = call float @dx.op.unary.f32(i32 23, float %271)  ; Log(value)
  %275 = call float @dx.op.unary.f32(i32 23, float %272)  ; Log(value)
  %276 = call float @dx.op.unary.f32(i32 23, float %273)  ; Log(value)
  %277 = fmul fast float %274, 7.884375e+01
  %278 = fmul fast float %275, 7.884375e+01
  %279 = fmul fast float %276, 7.884375e+01
  %280 = call float @dx.op.unary.f32(i32 21, float %277)  ; Exp(value)
  %281 = call float @dx.op.unary.f32(i32 21, float %278)  ; Exp(value)
  %282 = call float @dx.op.unary.f32(i32 21, float %279)  ; Exp(value)
  %283 = fmul fast float %109, %280
  %284 = fmul fast float %109, %281
  %285 = fmul fast float %109, %282
  %286 = fadd fast float %283, %108
  %287 = fadd fast float %284, %108
  %288 = fadd fast float %285, %108
  br label %587

; <label>:289                                     ; preds = %192
  %290 = fmul fast float %109, %97
  %291 = fmul fast float %109, %98
  %292 = fmul fast float %109, %99
  %293 = fadd fast float %290, %108
  %294 = fadd fast float %291, %108
  %295 = fadd fast float %292, %108
  br label %587

; <label>:296                                     ; preds = %96
  %297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.f32 %297, 0
  %299 = icmp eq i32 %50, 0
  %300 = icmp ne i32 %52, 0
  %301 = or i1 %299, %300
  %302 = and i1 %44, %301
  %303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %304 = extractvalue %dx.types.CBufRet.f32 %303, 3
  br i1 %302, label %305, label %409, !dx.controlflow.hints !35

; <label>:305                                     ; preds = %296
  %306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %307 = extractvalue %dx.types.CBufRet.f32 %306, 3
  %308 = call float @dx.op.unary.f32(i32 7, float %101)  ; Saturate(value)
  %309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 238)  ; CBufferLoadLegacy(handle,regIndex)
  %310 = extractvalue %dx.types.CBufRet.f32 %309, 0
  %311 = extractvalue %dx.types.CBufRet.f32 %309, 1
  %312 = extractvalue %dx.types.CBufRet.f32 %309, 2
  %313 = extractvalue %dx.types.CBufRet.f32 %306, 0
  %314 = extractvalue %dx.types.CBufRet.f32 %306, 1
  %315 = extractvalue %dx.types.CBufRet.f32 %306, 2
  %316 = fsub fast float %310, %313
  %317 = fsub fast float %311, %314
  %318 = fsub fast float %312, %315
  %319 = fmul fast float %316, %308
  %320 = fmul fast float %317, %308
  %321 = fmul fast float %318, %308
  %322 = fadd fast float %319, %313
  %323 = fadd fast float %320, %314
  %324 = fadd fast float %321, %315
  %325 = fmul fast float %322, %307
  %326 = fmul fast float %323, %307
  %327 = fmul fast float %324, %307
  %328 = fmul fast float %298, %100
  %329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %330 = extractvalue %dx.types.CBufRet.f32 %329, 1
  %331 = fmul fast float %328, %330
  %332 = fadd fast float %331, 9.765625e-04
  %333 = call float @dx.op.unary.f32(i32 23, float %332)  ; Log(value)
  %334 = fadd fast float %333, 1.000000e+01
  %335 = fmul fast float %334, 0x3FA99999A0000000
  %336 = call float @dx.op.unary.f32(i32 7, float %335)  ; Saturate(value)
  %337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %338 = extractvalue %dx.types.CBufRet.f32 %337, 0
  %339 = extractvalue %dx.types.CBufRet.f32 %337, 1
  %340 = extractvalue %dx.types.CBufRet.f32 %337, 2
  %341 = fmul fast float %338, %336
  %342 = fmul fast float %339, %336
  %343 = fmul fast float %340, %336
  %344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %345 = extractvalue %dx.types.CBufRet.f32 %344, 0
  %346 = extractvalue %dx.types.CBufRet.f32 %344, 1
  %347 = extractvalue %dx.types.CBufRet.f32 %344, 2
  %348 = fadd fast float %341, %345
  %349 = fadd fast float %342, %346
  %350 = fadd fast float %343, %347
  %351 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %12, float %348, float %349, float %350, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %352 = extractvalue %dx.types.ResRet.f32 %351, 0
  %353 = extractvalue %dx.types.ResRet.f32 %351, 1
  %354 = extractvalue %dx.types.ResRet.f32 %351, 2
  %355 = fsub fast float %101, %46
  %356 = fmul fast float %355, 1.000000e+01
  %357 = call float @dx.op.unary.f32(i32 7, float %356)  ; Saturate(value)
  %358 = fmul fast float %357, 2.000000e+00
  %359 = fsub fast float 3.000000e+00, %358
  %360 = fmul fast float %357, %357
  %361 = fmul fast float %360, %359
  %362 = fsub fast float %325, %352
  %363 = fsub fast float %326, %353
  %364 = fsub fast float %327, %354
  %365 = fmul fast float %361, %362
  %366 = fmul fast float %361, %363
  %367 = fmul fast float %361, %364
  %368 = fadd fast float %365, %352
  %369 = fadd fast float %366, %353
  %370 = fadd fast float %367, %354
  %371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %372 = extractvalue %dx.types.CBufRet.f32 %371, 0
  %373 = fmul fast float %372, 0x3FC70A3D80000000
  %374 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %375 = fmul fast float %374, 0x3FDAAAAAA0000000
  %376 = call float @dx.op.unary.f32(i32 21, float %375)  ; Exp(value)
  %377 = fsub fast float 1.000000e+00, %376
  %378 = call float @dx.op.unary.f32(i32 23, float %377)  ; Log(value)
  %379 = fmul fast float %378, 0x4003333340000000
  %380 = call float @dx.op.unary.f32(i32 21, float %379)  ; Exp(value)
  %381 = fdiv fast float %376, %377
  %382 = fadd fast float %368, %381
  %383 = fadd fast float %369, %381
  %384 = fadd fast float %370, %381
  %385 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %382)  ; FMax(a,b)
  %386 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %383)  ; FMax(a,b)
  %387 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %384)  ; FMax(a,b)
  %388 = call float @dx.op.unary.f32(i32 23, float %385)  ; Log(value)
  %389 = call float @dx.op.unary.f32(i32 23, float %386)  ; Log(value)
  %390 = call float @dx.op.unary.f32(i32 23, float %387)  ; Log(value)
  %391 = fmul fast float %388, 0x4003333340000000
  %392 = fmul fast float %389, 0x4003333340000000
  %393 = fmul fast float %390, 0x4003333340000000
  %394 = call float @dx.op.unary.f32(i32 21, float %391)  ; Exp(value)
  %395 = call float @dx.op.unary.f32(i32 21, float %392)  ; Exp(value)
  %396 = call float @dx.op.unary.f32(i32 21, float %393)  ; Exp(value)
  %397 = fmul fast float %380, %373
  %398 = fmul fast float %397, %394
  %399 = fmul fast float %397, %395
  %400 = fmul fast float %397, %396
  %401 = fadd fast float %398, %304
  %402 = fadd fast float %399, %304
  %403 = fadd fast float %400, %304
  %404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %405 = extractvalue %dx.types.CBufRet.f32 %404, 0
  %406 = fmul fast float %405, %401
  %407 = fmul fast float %402, %405
  %408 = fmul fast float %403, %405
  br label %437

; <label>:409                                     ; preds = %296
  %410 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %12, float %33, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %411 = extractvalue %dx.types.ResRet.f32 %410, 0
  %412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %413 = extractvalue %dx.types.CBufRet.f32 %412, 3
  %414 = extractvalue %dx.types.CBufRet.f32 %303, 1
  %415 = fsub fast float %414, %411
  %416 = fcmp fast ogt float %415, 0.000000e+00
  %417 = fcmp fast olt float %415, 0.000000e+00
  %418 = zext i1 %416 to i32
  %419 = zext i1 %417 to i32
  %420 = sub nsw i32 %418, %419
  %421 = sitofp i32 %420 to float
  %422 = call float @dx.op.unary.f32(i32 6, float %415)  ; FAbs(value)
  %423 = fsub fast float %422, %413
  %424 = call float @dx.op.binary.f32(i32 35, float %423, float 0.000000e+00)  ; FMax(a,b)
  %425 = fmul fast float %421, %424
  %426 = fsub fast float %414, %425
  %427 = fmul fast float %426, 0xBFF7154760000000
  %428 = call float @dx.op.unary.f32(i32 21, float %427)  ; Exp(value)
  %429 = fmul fast float %428, %304
  %430 = extractvalue %dx.types.CBufRet.f32 %412, 2
  %431 = fadd fast float %429, -1.000000e+00
  %432 = fmul fast float %430, %431
  %433 = fadd fast float %432, 1.000000e+00
  %434 = fmul fast float %433, %97
  %435 = fmul fast float %433, %98
  %436 = fmul fast float %433, %99
  br label %437

; <label>:437                                     ; preds = %409, %305
  %438 = phi float [ %406, %305 ], [ %434, %409 ]
  %439 = phi float [ %407, %305 ], [ %435, %409 ]
  %440 = phi float [ %408, %305 ], [ %436, %409 ]
  br i1 %54, label %464, label %441, !dx.controlflow.hints !36

; <label>:441                                     ; preds = %437
  %442 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %12, float %33, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %443 = extractvalue %dx.types.ResRet.f32 %442, 0
  %444 = extractvalue %dx.types.ResRet.f32 %442, 1
  %445 = extractvalue %dx.types.ResRet.f32 %442, 2
  %446 = call float @dx.op.binary.f32(i32 35, float %443, float 0.000000e+00)  ; FMax(a,b)
  %447 = call float @dx.op.binary.f32(i32 35, float %444, float 0.000000e+00)  ; FMax(a,b)
  %448 = call float @dx.op.binary.f32(i32 35, float %445, float 0.000000e+00)  ; FMax(a,b)
  %449 = call float @dx.op.binary.f32(i32 36, float %446, float 3.225500e+04)  ; FMin(a,b)
  %450 = call float @dx.op.binary.f32(i32 36, float %447, float 3.225500e+04)  ; FMin(a,b)
  %451 = call float @dx.op.binary.f32(i32 36, float %448, float 3.225500e+04)  ; FMin(a,b)
  %452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %453 = extractvalue %dx.types.CBufRet.f32 %452, 1
  %454 = fmul fast float %453, %438
  %455 = fmul fast float %453, %439
  %456 = fmul fast float %453, %440
  %457 = extractvalue %dx.types.CBufRet.f32 %452, 0
  %458 = fmul fast float %457, %449
  %459 = fmul fast float %457, %450
  %460 = fmul fast float %457, %451
  %461 = fadd fast float %458, %454
  %462 = fadd fast float %459, %455
  %463 = fadd fast float %460, %456
  br label %464

; <label>:464                                     ; preds = %441, %437
  %465 = phi float [ %438, %437 ], [ %461, %441 ]
  %466 = phi float [ %439, %437 ], [ %462, %441 ]
  %467 = phi float [ %440, %437 ], [ %463, %441 ]
  %468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 304)  ; CBufferLoadLegacy(handle,regIndex)
  %469 = extractvalue %dx.types.CBufRet.f32 %468, 2
  %470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 305)  ; CBufferLoadLegacy(handle,regIndex)
  %471 = extractvalue %dx.types.CBufRet.f32 %470, 2
  %472 = extractvalue %dx.types.CBufRet.f32 %470, 3
  %473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 306)  ; CBufferLoadLegacy(handle,regIndex)
  %474 = extractvalue %dx.types.CBufRet.f32 %473, 0
  %475 = extractvalue %dx.types.CBufRet.f32 %473, 1
  %476 = fcmp fast ugt float %469, 0.000000e+00
  br i1 %476, label %477, label %527, !dx.controlflow.hints !37

; <label>:477                                     ; preds = %464
  %478 = extractvalue %dx.types.CBufRet.f32 %473, 2
  %479 = fcmp fast ogt float %478, 0.000000e+00
  %480 = extractvalue %dx.types.CBufRet.f32 %470, 1
  %481 = extractvalue %dx.types.CBufRet.f32 %470, 0
  %482 = extractvalue %dx.types.CBufRet.f32 %468, 1
  %483 = extractvalue %dx.types.CBufRet.f32 %468, 0
  %484 = fadd fast float %33, -5.000000e-01
  %485 = fadd fast float %34, -5.000000e-01
  %486 = fmul fast float %483, %484
  %487 = fmul fast float %482, %485
  %488 = fadd fast float %486, %481
  %489 = fadd fast float %487, %480
  br i1 %479, label %490, label %497, !dx.controlflow.hints !38

; <label>:490                                     ; preds = %477
  %491 = fmul fast float %488, 5.000000e-01
  %492 = fmul fast float %489, 5.000000e-01
  %493 = fadd fast float %491, 5.000000e-01
  %494 = fadd fast float %492, 5.000000e-01
  %495 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %12, float %493, float %494, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %496 = extractvalue %dx.types.ResRet.f32 %495, 0
  br label %510

; <label>:497                                     ; preds = %477
  %498 = fsub fast float -0.000000e+00, %471
  %499 = fsub fast float -0.000000e+00, %472
  %500 = call float @dx.op.binary.f32(i32 35, float %488, float %498)  ; FMax(a,b)
  %501 = call float @dx.op.binary.f32(i32 35, float %489, float %499)  ; FMax(a,b)
  %502 = call float @dx.op.binary.f32(i32 36, float %500, float %471)  ; FMin(a,b)
  %503 = call float @dx.op.binary.f32(i32 36, float %501, float %472)  ; FMin(a,b)
  %504 = fsub fast float %488, %502
  %505 = fsub fast float %489, %503
  %506 = fmul fast float %504, %504
  %507 = fmul fast float %505, %505
  %508 = fadd fast float %507, %506
  %509 = call float @dx.op.unary.f32(i32 24, float %508)  ; Sqrt(value)
  br label %510

; <label>:510                                     ; preds = %497, %490
  %511 = phi float [ %496, %490 ], [ %509, %497 ]
  %512 = fmul fast float %511, %474
  %513 = fadd fast float %512, %475
  %514 = call float @dx.op.unary.f32(i32 7, float %513)  ; Saturate(value)
  %515 = fmul fast float %514, %514
  %516 = fmul fast float %514, 2.000000e+00
  %517 = fsub fast float 3.000000e+00, %516
  %518 = fmul fast float %515, %517
  %519 = fsub fast float %518, %514
  %520 = fmul fast float %519, 0x3FE3333340000000
  %521 = fadd fast float %520, %514
  %522 = fmul fast float %521, %469
  %523 = fsub fast float 1.000000e+00, %522
  %524 = fmul fast float %523, %465
  %525 = fmul fast float %523, %466
  %526 = fmul fast float %523, %467
  br label %527

; <label>:527                                     ; preds = %510, %464
  %528 = phi float [ %524, %510 ], [ %465, %464 ]
  %529 = phi float [ %525, %510 ], [ %466, %464 ]
  %530 = phi float [ %526, %510 ], [ %467, %464 ]
  %531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %532 = extractvalue %dx.types.CBufRet.f32 %531, 0
  %533 = extractvalue %dx.types.CBufRet.f32 %531, 1
  %534 = extractvalue %dx.types.CBufRet.f32 %531, 2
  %535 = call float @dx.op.dot3.f32(i32 55, float %528, float %529, float %530, float %532, float %533, float %534)  ; Dot3(ax,ay,az,bx,by,bz)
  %536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %537 = extractvalue %dx.types.CBufRet.f32 %536, 0
  %538 = extractvalue %dx.types.CBufRet.f32 %536, 1
  %539 = extractvalue %dx.types.CBufRet.f32 %536, 2
  %540 = call float @dx.op.dot3.f32(i32 55, float %528, float %529, float %530, float %537, float %538, float %539)  ; Dot3(ax,ay,az,bx,by,bz)
  %541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %542 = extractvalue %dx.types.CBufRet.f32 %541, 0
  %543 = extractvalue %dx.types.CBufRet.f32 %541, 1
  %544 = extractvalue %dx.types.CBufRet.f32 %541, 2
  %545 = call float @dx.op.dot3.f32(i32 55, float %528, float %529, float %530, float %542, float %543, float %544)  ; Dot3(ax,ay,az,bx,by,bz)
  %546 = fmul fast float %535, %298
  %547 = fmul fast float %540, %298
  %548 = fmul fast float %545, %298
  %549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %550 = extractvalue %dx.types.CBufRet.f32 %549, 2
  %551 = fmul fast float %546, %550
  %552 = fmul fast float %547, %550
  %553 = fmul fast float %548, %550
  %554 = fadd fast float %551, 9.765625e-04
  %555 = fadd fast float %552, 9.765625e-04
  %556 = fadd fast float %553, 9.765625e-04
  %557 = call float @dx.op.unary.f32(i32 23, float %554)  ; Log(value)
  %558 = call float @dx.op.unary.f32(i32 23, float %555)  ; Log(value)
  %559 = call float @dx.op.unary.f32(i32 23, float %556)  ; Log(value)
  %560 = fadd fast float %557, 1.000000e+01
  %561 = fadd fast float %558, 1.000000e+01
  %562 = fadd fast float %559, 1.000000e+01
  %563 = fmul fast float %560, 0x3FA99999A0000000
  %564 = fmul fast float %561, 0x3FA99999A0000000
  %565 = fmul fast float %562, 0x3FA99999A0000000
  %566 = call float @dx.op.unary.f32(i32 7, float %563)  ; Saturate(value)
  %567 = call float @dx.op.unary.f32(i32 7, float %564)  ; Saturate(value)
  %568 = call float @dx.op.unary.f32(i32 7, float %565)  ; Saturate(value)
  %569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %570 = extractvalue %dx.types.CBufRet.f32 %569, 0
  %571 = extractvalue %dx.types.CBufRet.f32 %569, 1
  %572 = extractvalue %dx.types.CBufRet.f32 %569, 2
  %573 = fmul fast float %570, %566
  %574 = fmul fast float %571, %567
  %575 = fmul fast float %572, %568
  %576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %577 = extractvalue %dx.types.CBufRet.f32 %576, 0
  %578 = extractvalue %dx.types.CBufRet.f32 %576, 1
  %579 = extractvalue %dx.types.CBufRet.f32 %576, 2
  %580 = fadd fast float %573, %577
  %581 = fadd fast float %574, %578
  %582 = fadd fast float %575, %579
  %583 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %12, float %580, float %581, float %582, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %584 = extractvalue %dx.types.ResRet.f32 %583, 0
  %585 = extractvalue %dx.types.ResRet.f32 %583, 1
  %586 = extractvalue %dx.types.ResRet.f32 %583, 2
  br label %587

; <label>:587                                     ; preds = %527, %289, %194, %110
  %588 = phi float [ %189, %110 ], [ %286, %194 ], [ %293, %289 ], [ %584, %527 ]
  %589 = phi float [ %190, %110 ], [ %287, %194 ], [ %294, %289 ], [ %585, %527 ]
  %590 = phi float [ %191, %110 ], [ %288, %194 ], [ %295, %289 ], [ %586, %527 ]
  %591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %592 = extractvalue %dx.types.CBufRet.f32 %591, 0
  %593 = fcmp fast ogt float %592, 0.000000e+00
  br i1 %593, label %594, label %627, !dx.controlflow.hints !39

; <label>:594                                     ; preds = %587
  %595 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %596 = extractvalue %dx.types.CBufRet.i32 %595, 1
  %597 = shl i32 %596, 1
  %598 = lshr i32 %20, 2
  %599 = extractvalue %dx.types.CBufRet.i32 %595, 0
  %600 = mul i32 %599, %598
  %601 = lshr i32 %19, 3
  %602 = add i32 %597, %601
  %603 = add i32 %602, %600
  %604 = shl i32 %603, 2
  %605 = shl i32 %20, 3
  %606 = and i32 %605, 24
  %607 = and i32 %19, 7
  %608 = or i32 %606, %607
  %609 = shl i32 1, %608
  %610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %604, i32 undef)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.i32 %610, 0
  %612 = and i32 %611, %609
  %613 = icmp eq i32 %612, 0
  br i1 %613, label %627, label %614, !dx.controlflow.hints !40

; <label>:614                                     ; preds = %594
  %615 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %13, float %33, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %616 = extractvalue %dx.types.ResRet.f32 %615, 0
  %617 = extractvalue %dx.types.ResRet.f32 %615, 1
  %618 = extractvalue %dx.types.ResRet.f32 %615, 2
  %619 = extractvalue %dx.types.ResRet.f32 %615, 3
  %620 = fsub fast float 1.000000e+00, %619
  %621 = fmul fast float %620, %588
  %622 = fmul fast float %620, %589
  %623 = fmul fast float %620, %590
  %624 = fadd fast float %621, %616
  %625 = fadd fast float %622, %617
  %626 = fadd fast float %623, %618
  br label %627

; <label>:627                                     ; preds = %614, %594, %587
  %628 = phi float [ %624, %614 ], [ %588, %594 ], [ %588, %587 ]
  %629 = phi float [ %625, %614 ], [ %589, %594 ], [ %589, %587 ]
  %630 = phi float [ %626, %614 ], [ %590, %594 ], [ %590, %587 ]
  %631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %632 = extractvalue %dx.types.CBufRet.f32 %631, 0
  %633 = extractvalue %dx.types.CBufRet.f32 %631, 1
  %634 = extractvalue %dx.types.CBufRet.f32 %631, 2
  %635 = call float @dx.op.dot3.f32(i32 55, float %628, float %629, float %630, float %632, float %633, float %634)  ; Dot3(ax,ay,az,bx,by,bz)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %17, i32 %18, i32 undef, float %628, float %629, float %630, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %636 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %637 = extractvalue %dx.types.CBufRet.i32 %636, 1
  %638 = and i32 %637, 1
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %641, label %640, !dx.controlflow.hints !41

; <label>:640                                     ; preds = %627
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %17, i32 %18, i32 undef, float %635, float %635, float %635, float %635, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %641

; <label>:641                                     ; preds = %640, %627, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

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
!4 = !{!5, !16, !19, !23}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 4, i32 0, !7}
!10 = !{i32 3, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 4, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 7, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 6, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 9, i32 1, i32 11, i32 0, null}
!16 = !{!17, !18}
!17 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!18 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!19 = !{!20, !21, !22}
!20 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!21 = !{i32 1, %TonemapConstants* undef, !"", i32 0, i32 0, i32 1, i32 144, null}
!22 = !{i32 2, %ExposureConstants* undef, !"", i32 0, i32 1, i32 1, i32 64, null}
!23 = !{!24, !25}
!24 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!25 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!26 = !{void ()* @tonemap, !"tonemap", null, !4, !27}
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
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}

