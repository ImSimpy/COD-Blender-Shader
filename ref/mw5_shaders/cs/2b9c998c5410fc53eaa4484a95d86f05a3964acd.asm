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
; shader hash: 238d939f91ae987d56e1ced98d801fb4
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb0     1
;                                   sampler      NA          NA      S0             s1     1
;                                   sampler      NA          NA      S1             s2     1
;                                   sampler      NA          NA      S2             s4     1
;                                   texture     f32          1d      T0             t7     1
;                                   texture     f32          3d      T1             t4     1
;                                   texture     f32     2darray      T2             t5     1
;                                   texture     f32          2d      T3             t8     1
;                                   texture     f32          2d      T4            t12     1
;                                   texture     f32          2d      T5             t6     1
;                                   texture     f32        2dMS      T6             t1     1
;                                   texture    byte         r/o      T7             t0     1
;                                       UAV    byte         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2DMS<float, 0>" = type { float, %"class.Texture2DMS<float, 0>::sample_type" }
%"class.Texture2DMS<float, 0>::sample_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%hostlayout.FlareConstants = type { [4 x <4 x float>], <4 x float>, <4 x i32>, <4 x i32>, i32, i32, i32, i32, <4 x float> }
%struct.SamplerState = type { i32 }

define void @cs_flare_occlusion() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %19 = extractvalue %dx.types.CBufRet.i32 %18, 0
  %20 = extractvalue %dx.types.CBufRet.i32 %18, 1
  %21 = icmp ult i32 %15, %19
  br i1 %21, label %22, label %796, !dx.controlflow.hints !27

; <label>:22                                      ; preds = %0
  %23 = mul i32 %15, 12
  %24 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %23, i32 undef)  ; BufferLoad(srv,index,wot)
  %25 = extractvalue %dx.types.ResRet.f32 %24, 0
  %26 = extractvalue %dx.types.ResRet.f32 %24, 1
  %27 = extractvalue %dx.types.ResRet.f32 %24, 2
  %28 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %29 = extractvalue %dx.types.CBufRet.f32 %28, 0
  %30 = extractvalue %dx.types.CBufRet.f32 %28, 1
  %31 = extractvalue %dx.types.CBufRet.f32 %28, 2
  %32 = extractvalue %dx.types.CBufRet.f32 %28, 3
  %33 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %34 = extractvalue %dx.types.CBufRet.f32 %33, 0
  %35 = extractvalue %dx.types.CBufRet.f32 %33, 1
  %36 = extractvalue %dx.types.CBufRet.f32 %33, 2
  %37 = extractvalue %dx.types.CBufRet.f32 %33, 3
  %38 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %39 = extractvalue %dx.types.CBufRet.f32 %38, 0
  %40 = extractvalue %dx.types.CBufRet.f32 %38, 1
  %41 = extractvalue %dx.types.CBufRet.f32 %38, 2
  %42 = extractvalue %dx.types.CBufRet.f32 %38, 3
  %43 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.f32 %43, 0
  %45 = extractvalue %dx.types.CBufRet.f32 %43, 1
  %46 = extractvalue %dx.types.CBufRet.f32 %43, 2
  %47 = extractvalue %dx.types.CBufRet.f32 %43, 3
  %48 = fmul fast float %29, %25
  %49 = call float @dx.op.tertiary.f32(i32 46, float %34, float %26, float %48)  ; FMad(a,b,c)
  %50 = call float @dx.op.tertiary.f32(i32 46, float %39, float %27, float %49)  ; FMad(a,b,c)
  %51 = fadd fast float %50, %44
  %52 = fmul fast float %30, %25
  %53 = call float @dx.op.tertiary.f32(i32 46, float %35, float %26, float %52)  ; FMad(a,b,c)
  %54 = call float @dx.op.tertiary.f32(i32 46, float %40, float %27, float %53)  ; FMad(a,b,c)
  %55 = fadd fast float %54, %45
  %56 = fmul fast float %31, %25
  %57 = call float @dx.op.tertiary.f32(i32 46, float %36, float %26, float %56)  ; FMad(a,b,c)
  %58 = call float @dx.op.tertiary.f32(i32 46, float %41, float %27, float %57)  ; FMad(a,b,c)
  %59 = fadd fast float %58, %46
  %60 = fmul fast float %32, %25
  %61 = call float @dx.op.tertiary.f32(i32 46, float %37, float %26, float %60)  ; FMad(a,b,c)
  %62 = call float @dx.op.tertiary.f32(i32 46, float %42, float %27, float %61)  ; FMad(a,b,c)
  %63 = fadd fast float %62, %47
  %64 = fdiv fast float 1.000000e+00, %63
  %65 = fmul fast float %64, %59
  %66 = fmul fast float %51, 5.000000e-01
  %67 = fmul fast float %66, %64
  %68 = fmul fast float %55, 5.000000e-01
  %69 = fmul fast float %68, %64
  %70 = fadd fast float %67, 5.000000e-01
  %71 = fsub fast float 5.000000e-01, %69
  %72 = call float @dx.op.unary.f32(i32 7, float %70)  ; Saturate(value)
  %73 = call float @dx.op.unary.f32(i32 7, float %71)  ; Saturate(value)
  %74 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %75 = extractvalue %dx.types.CBufRet.f32 %74, 0
  %76 = extractvalue %dx.types.CBufRet.f32 %74, 1
  %77 = fmul fast float %75, %72
  %78 = fmul fast float %76, %73
  %79 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %80 = extractvalue %dx.types.CBufRet.f32 %79, 0
  %81 = extractvalue %dx.types.CBufRet.f32 %79, 1
  %82 = extractvalue %dx.types.CBufRet.f32 %79, 2
  %83 = extractvalue %dx.types.CBufRet.f32 %79, 3
  %84 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %85 = extractvalue %dx.types.CBufRet.f32 %84, 0
  %86 = extractvalue %dx.types.CBufRet.f32 %84, 1
  %87 = extractvalue %dx.types.CBufRet.f32 %84, 2
  %88 = extractvalue %dx.types.CBufRet.f32 %84, 3
  %89 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = extractvalue %dx.types.CBufRet.f32 %89, 3
  %91 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %92 = extractvalue %dx.types.CBufRet.f32 %91, 3
  %93 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %94 = extractvalue %dx.types.CBufRet.f32 %93, 3
  %95 = extractvalue %dx.types.CBufRet.f32 %93, 0
  %96 = extractvalue %dx.types.CBufRet.f32 %93, 1
  %97 = extractvalue %dx.types.CBufRet.f32 %93, 2
  %98 = fcmp fast olt float %97, -5.000000e-01
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 3
  %101 = call float @dx.op.dot3.f32(i32 55, float %25, float %26, float %27, float %25, float %26, float %27)  ; Dot3(ax,ay,az,bx,by,bz)
  %102 = call float @dx.op.unary.f32(i32 25, float %101)  ; Rsqrt(value)
  %103 = fmul fast float %102, %101
  %104 = fmul fast float %102, %25
  %105 = fmul fast float %102, %26
  %106 = fmul fast float %102, %27
  %107 = fadd fast float %103, %83
  %108 = call float @dx.op.dot3.f32(i32 55, float %104, float %105, float %106, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %109 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.i32 %109, 1
  %111 = and i32 %110, 1
  %112 = icmp ne i32 %111, 0
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 2
  %115 = fcmp fast ogt float %114, 0.000000e+00
  %116 = and i1 %112, %115
  br i1 %116, label %117, label %456, !dx.controlflow.hints !28

; <label>:117                                     ; preds = %22
  %118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %119 = extractvalue %dx.types.CBufRet.f32 %118, 3
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 2
  %124 = fsub fast float %121, %123
  %125 = and i32 %110, 2
  %126 = extractvalue %dx.types.CBufRet.i32 %109, 0
  %127 = call i32 @dx.op.binary.i32(i32 40, i32 %126, i32 3)  ; UMin(a,b)
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.f32 %128, 0
  %130 = extractvalue %dx.types.CBufRet.f32 %128, 1
  %131 = extractvalue %dx.types.CBufRet.f32 %122, 0
  %132 = extractvalue %dx.types.CBufRet.f32 %122, 1
  %133 = fsub fast float %129, %131
  %134 = fsub fast float %130, %132
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 0
  %137 = fcmp fast ogt float %136, 0.000000e+00
  %138 = fsub fast float -0.000000e+00, %133
  %139 = fsub fast float -0.000000e+00, %134
  %140 = call float @dx.op.dot2.f32(i32 54, float %104, float %105, float %104, float %105)  ; Dot2(ax,ay,bx,by)
  %141 = call float @dx.op.dot2.f32(i32 54, float %104, float %105, float %138, float %139)  ; Dot2(ax,ay,bx,by)
  %142 = fmul fast float %141, 2.000000e+00
  %143 = call float @dx.op.dot2.f32(i32 54, float %138, float %139, float %138, float %139)  ; Dot2(ax,ay,bx,by)
  %144 = fmul fast float %136, %136
  %145 = fsub fast float %143, %144
  %146 = fmul fast float %142, %142
  %147 = fmul fast float %140, 4.000000e+00
  %148 = fmul fast float %147, %145
  %149 = fsub fast float %146, %148
  %150 = fcmp fast ogt float %149, 0.000000e+00
  br i1 %150, label %151, label %166, !dx.controlflow.hints !29

; <label>:151                                     ; preds = %117
  %152 = fcmp fast ogt float %142, 0.000000e+00
  %153 = call float @dx.op.unary.f32(i32 24, float %149)  ; Sqrt(value)
  %154 = fsub fast float -0.000000e+00, %153
  %155 = select i1 %152, float %153, float %154
  %156 = fadd fast float %155, %142
  %157 = fmul float %156, -5.000000e-01
  %158 = fdiv fast float %157, %140
  %159 = call float @dx.op.binary.f32(i32 35, float %158, float 0.000000e+00)  ; FMax(a,b)
  %160 = call float @dx.op.binary.f32(i32 36, float %103, float %159)  ; FMin(a,b)
  %161 = fdiv fast float %145, %157
  %162 = call float @dx.op.binary.f32(i32 35, float %161, float 0.000000e+00)  ; FMax(a,b)
  %163 = call float @dx.op.binary.f32(i32 36, float %103, float %162)  ; FMin(a,b)
  %164 = call float @dx.op.binary.f32(i32 36, float %160, float %163)  ; FMin(a,b)
  %165 = call float @dx.op.binary.f32(i32 35, float %160, float %163)  ; FMax(a,b)
  br label %166

; <label>:166                                     ; preds = %151, %117
  %167 = phi float [ %165, %151 ], [ -1.000000e+00, %117 ]
  %168 = phi float [ %164, %151 ], [ -1.000000e+00, %117 ]
  %169 = phi i1 [ true, %151 ], [ false, %117 ]
  %170 = and i1 %137, %169
  br i1 %170, label %171, label %173, !dx.controlflow.hints !30

; <label>:171                                     ; preds = %166
  %172 = fcmp fast oeq float %168, %167
  br i1 %172, label %416, label %174, !dx.controlflow.hints !31

; <label>:173                                     ; preds = %166
  br i1 %137, label %416, label %174, !dx.controlflow.hints !32

; <label>:174                                     ; preds = %173, %171
  %175 = phi float [ %103, %173 ], [ %167, %171 ]
  %176 = phi float [ 0.000000e+00, %173 ], [ %168, %171 ]
  %177 = icmp ne i32 %125, 0
  %178 = fmul fast float %175, %106
  %179 = fadd fast float %178, %119
  %180 = fmul fast float %179, %175
  %181 = select i1 %177, float 0.000000e+00, float %180
  %182 = fcmp fast oeq float %106, 0.000000e+00
  %183 = fdiv fast float %124, %106
  %184 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %183)  ; FMax(a,b)
  %185 = select i1 %182, float %175, float %184
  %186 = call float @dx.op.binary.f32(i32 36, float %175, float %185)  ; FMin(a,b)
  %187 = fcmp fast ogt float %106, 0.000000e+00
  %188 = fcmp fast olt float %124, 0.000000e+00
  br i1 %187, label %189, label %226, !dx.controlflow.hints !33

; <label>:189                                     ; preds = %174
  %190 = icmp eq i32 %125, 0
  br i1 %188, label %191, label %215, !dx.controlflow.hints !34

; <label>:191                                     ; preds = %189
  %192 = select i1 %190, float %175, float 0.000000e+00
  %193 = fsub fast float -0.000000e+00, %192
  %194 = call float @dx.op.unary.f32(i32 6, float %193)  ; FAbs(value)
  %195 = fmul fast float %192, %106
  %196 = fadd fast float %195, %119
  %197 = fmul fast float %194, %196
  %198 = fsub fast float %181, %197
  %199 = fsub fast float %175, %194
  %200 = select i1 %190, float %199, float 0.000000e+00
  %201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %202 = extractvalue %dx.types.CBufRet.f32 %201, 3
  %203 = call float @dx.op.binary.f32(i32 36, float %198, float %202)  ; FMin(a,b)
  %204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %205 = extractvalue %dx.types.CBufRet.f32 %204, 0
  %206 = extractvalue %dx.types.CBufRet.f32 %204, 1
  %207 = fadd fast float %206, %205
  %208 = call float @dx.op.unary.f32(i32 7, float %207)  ; Saturate(value)
  %209 = extractvalue %dx.types.CBufRet.f32 %204, 2
  %210 = extractvalue %dx.types.CBufRet.f32 %204, 3
  %211 = fadd fast float %210, %209
  %212 = call float @dx.op.unary.f32(i32 7, float %211)  ; Saturate(value)
  %213 = fmul fast float %208, %203
  %214 = fmul fast float %213, %212
  br label %416

; <label>:215                                     ; preds = %189
  br i1 %190, label %216, label %237, !dx.controlflow.hints !35

; <label>:216                                     ; preds = %215
  %217 = call float @dx.op.binary.f32(i32 36, float %186, float %176)  ; FMin(a,b)
  %218 = fsub fast float %186, %217
  %219 = fsub fast float %218, %175
  %220 = call float @dx.op.unary.f32(i32 6, float %219)  ; FAbs(value)
  %221 = fadd fast float %218, %175
  %222 = fmul fast float %221, %106
  %223 = fadd fast float %222, %119
  %224 = fmul fast float %223, %220
  %225 = fsub fast float %181, %224
  br label %237

; <label>:226                                     ; preds = %174
  br i1 %188, label %227, label %237, !dx.controlflow.hints !36

; <label>:227                                     ; preds = %226
  %228 = call float @dx.op.binary.f32(i32 35, float %176, float %186)  ; FMax(a,b)
  %229 = icmp eq i32 %125, 0
  %230 = select i1 %229, float %186, float 0.000000e+00
  %231 = fsub fast float -0.000000e+00, %230
  %232 = call float @dx.op.unary.f32(i32 6, float %231)  ; FAbs(value)
  %233 = fmul fast float %230, %106
  %234 = fadd fast float %233, %119
  %235 = fmul fast float %232, %234
  %236 = fsub fast float %181, %235
  br label %237

; <label>:237                                     ; preds = %227, %226, %216, %215
  %238 = phi float [ %176, %215 ], [ %176, %216 ], [ %228, %227 ], [ %176, %226 ]
  %239 = phi float [ 0.000000e+00, %215 ], [ %220, %216 ], [ %232, %227 ], [ 0.000000e+00, %226 ]
  %240 = phi float [ %181, %215 ], [ %225, %216 ], [ %236, %227 ], [ %181, %226 ]
  %241 = phi float [ %186, %215 ], [ %186, %216 ], [ %175, %227 ], [ %175, %226 ]
  %242 = getelementptr inbounds [3 x float], [3 x float]* %16, i32 0, i32 0
  store float -1.000000e+00, float* %242, align 4, !tbaa !37, !noalias !41
  %243 = getelementptr inbounds [3 x float], [3 x float]* %16, i32 0, i32 1
  store float -1.000000e+00, float* %243, align 4, !tbaa !37, !noalias !41
  %244 = getelementptr inbounds [3 x float], [3 x float]* %16, i32 0, i32 2
  store float -1.000000e+00, float* %244, align 4, !tbaa !37, !noalias !41
  %245 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 0
  store float -1.000000e+00, float* %245, align 4, !tbaa !37, !noalias !41
  %246 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 1
  store float -1.000000e+00, float* %246, align 4, !tbaa !37, !noalias !41
  %247 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 2
  store float -1.000000e+00, float* %247, align 4, !tbaa !37, !noalias !41
  %248 = icmp sgt i32 %127, 0
  br i1 %248, label %249, label %310

; <label>:249                                     ; preds = %237
  br label %250

; <label>:250                                     ; preds = %299, %249
  %251 = phi i32 [ %300, %299 ], [ 0, %249 ]
  %252 = phi i32 [ %301, %299 ], [ 0, %249 ]
  %253 = add nuw i32 %252, 171
  %254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 %253)  ; CBufferLoadLegacy(handle,regIndex)
  %255 = extractvalue %dx.types.CBufRet.f32 %254, 0
  %256 = extractvalue %dx.types.CBufRet.f32 %254, 1
  %257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %258 = extractvalue %dx.types.CBufRet.f32 %257, 0
  %259 = extractvalue %dx.types.CBufRet.f32 %257, 1
  %260 = fsub fast float %255, %258
  %261 = fsub fast float %256, %259
  %262 = extractvalue %dx.types.CBufRet.f32 %254, 2
  %263 = fsub fast float -0.000000e+00, %260
  %264 = fsub fast float -0.000000e+00, %261
  %265 = call float @dx.op.dot2.f32(i32 54, float %104, float %105, float %263, float %264)  ; Dot2(ax,ay,bx,by)
  %266 = fmul fast float %265, 2.000000e+00
  %267 = call float @dx.op.dot2.f32(i32 54, float %263, float %264, float %263, float %264)  ; Dot2(ax,ay,bx,by)
  %268 = fmul fast float %262, %262
  %269 = fsub fast float %267, %268
  %270 = fmul fast float %266, %266
  %271 = fmul fast float %147, %269
  %272 = fsub fast float %270, %271
  %273 = fcmp fast ogt float %272, 0.000000e+00
  br i1 %273, label %274, label %289, !dx.controlflow.hints !29

; <label>:274                                     ; preds = %250
  %275 = fcmp fast ogt float %266, 0.000000e+00
  %276 = call float @dx.op.unary.f32(i32 24, float %272)  ; Sqrt(value)
  %277 = fsub fast float -0.000000e+00, %276
  %278 = select i1 %275, float %276, float %277
  %279 = fadd fast float %278, %266
  %280 = fmul float %279, -5.000000e-01
  %281 = fdiv fast float %280, %140
  %282 = call float @dx.op.binary.f32(i32 35, float %281, float 0.000000e+00)  ; FMax(a,b)
  %283 = call float @dx.op.binary.f32(i32 36, float %175, float %282)  ; FMin(a,b)
  %284 = fdiv fast float %269, %280
  %285 = call float @dx.op.binary.f32(i32 35, float %284, float 0.000000e+00)  ; FMax(a,b)
  %286 = call float @dx.op.binary.f32(i32 36, float %175, float %285)  ; FMin(a,b)
  %287 = call float @dx.op.binary.f32(i32 36, float %283, float %286)  ; FMin(a,b)
  %288 = call float @dx.op.binary.f32(i32 35, float %283, float %286)  ; FMax(a,b)
  br label %289

; <label>:289                                     ; preds = %274, %250
  %290 = phi float [ %288, %274 ], [ -1.000000e+00, %250 ]
  %291 = phi float [ %287, %274 ], [ -1.000000e+00, %250 ]
  %292 = phi i1 [ true, %274 ], [ false, %250 ]
  br i1 %292, label %293, label %299, !dx.controlflow.hints !47

; <label>:293                                     ; preds = %289
  %294 = call float @dx.op.binary.f32(i32 35, float %238, float %291)  ; FMax(a,b)
  %295 = getelementptr inbounds [3 x float], [3 x float]* %16, i32 0, i32 %252
  store float %294, float* %295, align 4, !tbaa !37, !noalias !41
  %296 = call float @dx.op.binary.f32(i32 35, float %238, float %290)  ; FMax(a,b)
  %297 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 %252
  store float %296, float* %297, align 4, !tbaa !37, !noalias !41
  %298 = add nsw i32 %251, 1
  br label %299

; <label>:299                                     ; preds = %293, %289
  %300 = phi i32 [ %298, %293 ], [ %251, %289 ]
  %301 = add nuw nsw i32 %252, 1
  %302 = icmp eq i32 %301, %127
  br i1 %302, label %303, label %250

; <label>:303                                     ; preds = %299
  %304 = load float, float* %244, align 4, !tbaa !37, !alias.scope !48, !noalias !51
  %305 = load float, float* %243, align 4, !tbaa !37, !alias.scope !54, !noalias !55
  %306 = load float, float* %242, align 4, !tbaa !37, !alias.scope !56, !noalias !57
  %307 = load float, float* %247, align 4, !tbaa !37, !alias.scope !58, !noalias !61
  %308 = load float, float* %246, align 4, !tbaa !37, !alias.scope !64, !noalias !65
  %309 = load float, float* %245, align 4, !tbaa !37, !alias.scope !66, !noalias !67
  br label %310

; <label>:310                                     ; preds = %303, %237
  %311 = phi float [ -1.000000e+00, %237 ], [ %309, %303 ]
  %312 = phi float [ -1.000000e+00, %237 ], [ %308, %303 ]
  %313 = phi float [ -1.000000e+00, %237 ], [ %307, %303 ]
  %314 = phi float [ -1.000000e+00, %237 ], [ %306, %303 ]
  %315 = phi float [ -1.000000e+00, %237 ], [ %305, %303 ]
  %316 = phi float [ -1.000000e+00, %237 ], [ %304, %303 ]
  %317 = phi i32 [ 0, %237 ], [ %300, %303 ]
  %318 = call float @dx.op.binary.f32(i32 36, float %315, float %316)  ; FMin(a,b)
  %319 = call float @dx.op.binary.f32(i32 36, float %314, float %318)  ; FMin(a,b)
  %320 = call float @dx.op.binary.f32(i32 35, float %314, float %315)  ; FMax(a,b)
  %321 = call float @dx.op.binary.f32(i32 36, float %320, float %316)  ; FMin(a,b)
  %322 = call float @dx.op.binary.f32(i32 36, float %314, float %315)  ; FMin(a,b)
  %323 = call float @dx.op.binary.f32(i32 35, float %322, float %321)  ; FMax(a,b)
  %324 = call float @dx.op.binary.f32(i32 35, float %315, float %316)  ; FMax(a,b)
  %325 = call float @dx.op.binary.f32(i32 35, float %314, float %324)  ; FMax(a,b)
  store float %319, float* %242, align 4, !tbaa !37, !alias.scope !56, !noalias !57
  store float %323, float* %243, align 4, !tbaa !37, !alias.scope !54, !noalias !55
  store float %325, float* %244, align 4, !tbaa !37, !alias.scope !48, !noalias !51
  %326 = call float @dx.op.binary.f32(i32 36, float %312, float %313)  ; FMin(a,b)
  %327 = call float @dx.op.binary.f32(i32 36, float %311, float %326)  ; FMin(a,b)
  %328 = call float @dx.op.binary.f32(i32 35, float %311, float %312)  ; FMax(a,b)
  %329 = call float @dx.op.binary.f32(i32 36, float %328, float %313)  ; FMin(a,b)
  %330 = call float @dx.op.binary.f32(i32 36, float %311, float %312)  ; FMin(a,b)
  %331 = call float @dx.op.binary.f32(i32 35, float %330, float %329)  ; FMax(a,b)
  %332 = call float @dx.op.binary.f32(i32 35, float %312, float %313)  ; FMax(a,b)
  %333 = call float @dx.op.binary.f32(i32 35, float %311, float %332)  ; FMax(a,b)
  store float %327, float* %245, align 4, !tbaa !37, !alias.scope !66, !noalias !67
  store float %331, float* %246, align 4, !tbaa !37, !alias.scope !64, !noalias !65
  store float %333, float* %247, align 4, !tbaa !37, !alias.scope !58, !noalias !61
  %334 = sub nsw i32 3, %317
  %335 = icmp sgt i32 %334, 2
  br i1 %335, label %336, label %354, !dx.controlflow.hints !68

; <label>:336                                     ; preds = %310
  %337 = icmp eq i32 %125, 0
  %338 = fsub fast float %175, %239
  %339 = select i1 %337, float %338, float %239
  %340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %341 = extractvalue %dx.types.CBufRet.f32 %340, 3
  %342 = call float @dx.op.binary.f32(i32 36, float %240, float %341)  ; FMin(a,b)
  %343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %344 = extractvalue %dx.types.CBufRet.f32 %343, 0
  %345 = extractvalue %dx.types.CBufRet.f32 %343, 1
  %346 = fadd fast float %345, %344
  %347 = call float @dx.op.unary.f32(i32 7, float %346)  ; Saturate(value)
  %348 = extractvalue %dx.types.CBufRet.f32 %343, 2
  %349 = extractvalue %dx.types.CBufRet.f32 %343, 3
  %350 = fadd fast float %349, %348
  %351 = call float @dx.op.unary.f32(i32 7, float %350)  ; Saturate(value)
  %352 = fmul fast float %347, %342
  %353 = fmul fast float %352, %351
  br label %416

; <label>:354                                     ; preds = %310
  %355 = getelementptr inbounds [3 x float], [3 x float]* %16, i32 0, i32 %334
  %356 = load float, float* %355, align 4, !tbaa !37, !noalias !41
  %357 = fcmp fast olt float %356, %241
  %358 = icmp sgt i32 %317, 0
  %359 = and i1 %358, %357
  br i1 %359, label %360, label %397

; <label>:360                                     ; preds = %354
  br label %361

; <label>:361                                     ; preds = %390, %360
  %362 = phi float [ %391, %390 ], [ %239, %360 ]
  %363 = phi float [ %392, %390 ], [ %240, %360 ]
  %364 = phi float [ %372, %390 ], [ %356, %360 ]
  %365 = phi i32 [ %369, %390 ], [ %334, %360 ]
  %366 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 %365
  %367 = load float, float* %366, align 4, !tbaa !37, !noalias !41
  %368 = icmp slt i32 %365, 2
  %369 = add nsw i32 %365, 1
  %370 = getelementptr inbounds [3 x float], [3 x float]* %16, i32 0, i32 %369
  %371 = load float, float* %370, align 4, !tbaa !37, !noalias !41
  %372 = select i1 %368, float %371, float %175
  %373 = call float @dx.op.binary.f32(i32 36, float %372, float %367)  ; FMin(a,b)
  %374 = call float @dx.op.binary.f32(i32 36, float %241, float %373)  ; FMin(a,b)
  %375 = icmp eq i32 %125, 0
  %376 = fadd fast float %374, %364
  %377 = fmul fast float %376, %106
  %378 = fadd fast float %377, %119
  br i1 %375, label %384, label %379, !dx.controlflow.hints !69

; <label>:379                                     ; preds = %361
  %380 = fsub fast float %374, %364
  %381 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %380)  ; FMax(a,b)
  %382 = fmul fast float %381, %378
  %383 = fadd fast float %382, %363
  br label %390

; <label>:384                                     ; preds = %361
  %385 = fsub fast float %364, %374
  %386 = call float @dx.op.unary.f32(i32 6, float %385)  ; FAbs(value)
  %387 = fadd fast float %386, %362
  %388 = fmul fast float %386, %378
  %389 = fsub fast float %363, %388
  br label %390

; <label>:390                                     ; preds = %384, %379
  %391 = phi float [ %381, %379 ], [ %387, %384 ]
  %392 = phi float [ %383, %379 ], [ %389, %384 ]
  %393 = fcmp fast olt float %372, %241
  %394 = icmp slt i32 %369, 3
  %395 = and i1 %394, %393
  br i1 %395, label %361, label %396

; <label>:396                                     ; preds = %390
  br label %397

; <label>:397                                     ; preds = %396, %354
  %398 = phi float [ %239, %354 ], [ %391, %396 ]
  %399 = phi float [ %240, %354 ], [ %392, %396 ]
  %400 = fsub fast float %175, %398
  %401 = select i1 %177, float %398, float %400
  %402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %403 = extractvalue %dx.types.CBufRet.f32 %402, 3
  %404 = call float @dx.op.binary.f32(i32 36, float %399, float %403)  ; FMin(a,b)
  %405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %406 = extractvalue %dx.types.CBufRet.f32 %405, 0
  %407 = extractvalue %dx.types.CBufRet.f32 %405, 1
  %408 = fadd fast float %407, %406
  %409 = call float @dx.op.unary.f32(i32 7, float %408)  ; Saturate(value)
  %410 = extractvalue %dx.types.CBufRet.f32 %405, 2
  %411 = extractvalue %dx.types.CBufRet.f32 %405, 3
  %412 = fadd fast float %411, %410
  %413 = call float @dx.op.unary.f32(i32 7, float %412)  ; Saturate(value)
  %414 = fmul fast float %409, %404
  %415 = fmul fast float %414, %413
  br label %416

; <label>:416                                     ; preds = %397, %336, %191, %173, %171
  %417 = phi float [ %200, %191 ], [ %339, %336 ], [ %401, %397 ], [ 0.000000e+00, %171 ], [ 0.000000e+00, %173 ]
  %418 = phi float [ %214, %191 ], [ %353, %336 ], [ %415, %397 ], [ 0.000000e+00, %171 ], [ 0.000000e+00, %173 ]
  %419 = fmul fast float %114, %418
  %420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %421 = extractvalue %dx.types.CBufRet.f32 %420, 2
  %422 = fsub fast float %121, %421
  %423 = fcmp fast olt float %419, -2.000000e+01
  %424 = call float @dx.op.unary.f32(i32 21, float %419)  ; Exp(value)
  %425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %426 = extractvalue %dx.types.CBufRet.f32 %425, 2
  %427 = extractvalue %dx.types.CBufRet.f32 %425, 3
  %428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %429 = extractvalue %dx.types.CBufRet.f32 %428, 2
  %430 = fmul fast float %427, %422
  %431 = call float @dx.op.unary.f32(i32 7, float %430)  ; Saturate(value)
  %432 = fsub fast float 1.000000e+00, %431
  %433 = fmul fast float %106, 5.000000e-01
  %434 = fadd fast float %433, 5.000000e-01
  %435 = call float @dx.op.unary.f32(i32 7, float %434)  ; Saturate(value)
  %436 = fsub fast float 1.000000e+00, %435
  %437 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %432)  ; FMax(a,b)
  %438 = fdiv fast float %436, %437
  %439 = fsub fast float %422, %27
  %440 = call float @dx.op.unary.f32(i32 6, float %439)  ; FAbs(value)
  %441 = fmul fast float %440, %426
  %442 = call float @dx.op.unary.f32(i32 7, float %438)  ; Saturate(value)
  %443 = fsub fast float 1.000000e+00, %441
  %444 = fmul fast float %443, %442
  %445 = fadd fast float %444, %441
  %446 = fmul fast float %429, %422
  %447 = call float @dx.op.unary.f32(i32 7, float %446)  ; Saturate(value)
  %448 = fsub fast float 1.000000e+00, %445
  %449 = fmul fast float %448, %447
  %450 = fadd fast float %449, %445
  %451 = call float @dx.op.unary.f32(i32 7, float %450)  ; Saturate(value)
  %452 = fadd fast float %424, -1.000000e+00
  %453 = select i1 %423, float -1.000000e+00, float %452
  %454 = fmul fast float %451, %453
  %455 = fadd fast float %454, 1.000000e+00
  br label %456

; <label>:456                                     ; preds = %416, %22
  %457 = phi float [ %417, %416 ], [ 0.000000e+00, %22 ]
  %458 = phi float [ %455, %416 ], [ 1.000000e+00, %22 ]
  %459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %460 = extractvalue %dx.types.CBufRet.f32 %459, 1
  %461 = fsub fast float 1.000000e+00, %458
  %462 = fmul fast float %461, %107
  %463 = fmul fast float %462, %460
  %464 = fsub fast float %107, %463
  br i1 %98, label %465, label %481, !dx.controlflow.hints !70

; <label>:465                                     ; preds = %456
  %466 = fmul fast float %108, %95
  %467 = fadd fast float %466, %96
  %468 = call float @dx.op.unary.f32(i32 7, float %467)  ; Saturate(value)
  %469 = fmul fast float %85, %464
  %470 = fsub fast float -0.000000e+00, %469
  %471 = fmul fast float %86, %464
  %472 = fsub fast float -0.000000e+00, %471
  %473 = call float @dx.op.unary.f32(i32 21, float %470)  ; Exp(value)
  %474 = call float @dx.op.unary.f32(i32 21, float %472)  ; Exp(value)
  %475 = call float @dx.op.binary.f32(i32 35, float %100, float %473)  ; FMax(a,b)
  %476 = call float @dx.op.binary.f32(i32 35, float %100, float %474)  ; FMax(a,b)
  %477 = fsub fast float %476, %475
  %478 = fmul fast float %477, %468
  %479 = fadd fast float %478, %475
  %480 = call float @dx.op.unary.f32(i32 7, float %479)  ; Saturate(value)
  br label %514

; <label>:481                                     ; preds = %456
  %482 = fmul fast float %464, %94
  %483 = call float @dx.op.unary.f32(i32 7, float %482)  ; Saturate(value)
  %484 = fsub fast float 2.000000e+00, %483
  %485 = fmul fast float %483, 9.921875e-01
  %486 = fmul fast float %485, %484
  %487 = fadd fast float %486, 3.906250e-03
  %488 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %11, float %487, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %489 = extractvalue %dx.types.ResRet.f32 %488, 0
  %490 = fsub fast float %483, %489
  %491 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %490)  ; FMax(a,b)
  %492 = fmul fast float %88, %27
  %493 = call float @dx.op.unary.f32(i32 6, float %492)  ; FAbs(value)
  %494 = fcmp fast ogt float %493, 0x3EB0C6F7A0000000
  br i1 %494, label %495, label %501, !dx.controlflow.hints !71

; <label>:495                                     ; preds = %481
  %496 = fmul fast float %492, 0xBFF7154760000000
  %497 = call float @dx.op.unary.f32(i32 21, float %496)  ; Exp(value)
  %498 = fsub fast float 1.000000e+00, %497
  %499 = fdiv fast float %498, %492
  %500 = fmul fast float %499, %90
  br label %501

; <label>:501                                     ; preds = %495, %481
  %502 = phi float [ %500, %495 ], [ %90, %481 ]
  %503 = fadd fast float %502, %92
  %504 = fmul fast float %503, %491
  %505 = fmul fast float %85, %504
  %506 = fsub fast float -0.000000e+00, %505
  %507 = fmul fast float %86, %504
  %508 = fsub fast float -0.000000e+00, %507
  %509 = fmul fast float %87, %504
  %510 = fsub fast float -0.000000e+00, %509
  %511 = call float @dx.op.unary.f32(i32 21, float %506)  ; Exp(value)
  %512 = call float @dx.op.unary.f32(i32 21, float %508)  ; Exp(value)
  %513 = call float @dx.op.unary.f32(i32 21, float %510)  ; Exp(value)
  br label %514

; <label>:514                                     ; preds = %501, %465
  %515 = phi float [ %480, %465 ], [ %511, %501 ]
  %516 = phi float [ %480, %465 ], [ %512, %501 ]
  %517 = phi float [ %480, %465 ], [ %513, %501 ]
  br i1 %116, label %518, label %614, !dx.controlflow.hints !72

; <label>:518                                     ; preds = %514
  %519 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %515)  ; FMax(a,b)
  %520 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %516)  ; FMax(a,b)
  %521 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %517)  ; FMax(a,b)
  %522 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %458)  ; FMax(a,b)
  %523 = call float @dx.op.binary.f32(i32 35, float %457, float %464)  ; FMax(a,b)
  %524 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %523)  ; FMax(a,b)
  %525 = fdiv fast float %457, %524
  %526 = call float @dx.op.unary.f32(i32 7, float %525)  ; Saturate(value)
  %527 = fdiv fast float %464, %524
  %528 = call float @dx.op.unary.f32(i32 7, float %527)  ; Saturate(value)
  %529 = fcmp fast une float %522, 1.000000e+00
  br i1 %529, label %530, label %533, !dx.controlflow.hints !73

; <label>:530                                     ; preds = %518
  %531 = call float @dx.op.unary.f32(i32 23, float %522)  ; Log(value)
  %532 = fmul fast float %531, 0x3FE62E4300000000
  br label %533

; <label>:533                                     ; preds = %530, %518
  %534 = phi float [ %532, %530 ], [ 0.000000e+00, %518 ]
  %535 = fcmp fast une float %519, 1.000000e+00
  br i1 %535, label %536, label %539, !dx.controlflow.hints !74

; <label>:536                                     ; preds = %533
  %537 = call float @dx.op.unary.f32(i32 23, float %519)  ; Log(value)
  %538 = fmul fast float %537, 0x3FE62E4300000000
  br label %539

; <label>:539                                     ; preds = %536, %533
  %540 = phi float [ %538, %536 ], [ 0.000000e+00, %533 ]
  %541 = fcmp fast une float %520, 1.000000e+00
  br i1 %541, label %542, label %545, !dx.controlflow.hints !74

; <label>:542                                     ; preds = %539
  %543 = call float @dx.op.unary.f32(i32 23, float %520)  ; Log(value)
  %544 = fmul fast float %543, 0x3FE62E4300000000
  br label %545

; <label>:545                                     ; preds = %542, %539
  %546 = phi float [ %544, %542 ], [ 0.000000e+00, %539 ]
  %547 = fcmp fast une float %521, 1.000000e+00
  br i1 %547, label %548, label %551, !dx.controlflow.hints !74

; <label>:548                                     ; preds = %545
  %549 = call float @dx.op.unary.f32(i32 23, float %521)  ; Log(value)
  %550 = fmul fast float %549, 0x3FE62E4300000000
  br label %551

; <label>:551                                     ; preds = %548, %545
  %552 = phi float [ %550, %548 ], [ 0.000000e+00, %545 ]
  %553 = fmul fast float %534, %528
  %554 = fmul fast float %540, %526
  %555 = fmul fast float %546, %526
  %556 = fmul fast float %552, %526
  %557 = fadd fast float %554, %553
  %558 = fadd fast float %555, %553
  %559 = fadd fast float %556, %553
  %560 = fcmp fast une float %557, 0.000000e+00
  br i1 %560, label %561, label %564, !dx.controlflow.hints !75

; <label>:561                                     ; preds = %551
  %562 = fmul fast float %557, 0x3FF7154760000000
  %563 = call float @dx.op.unary.f32(i32 21, float %562)  ; Exp(value)
  br label %564

; <label>:564                                     ; preds = %561, %551
  %565 = phi float [ %563, %561 ], [ 1.000000e+00, %551 ]
  %566 = fcmp fast une float %558, 0.000000e+00
  br i1 %566, label %567, label %570, !dx.controlflow.hints !75

; <label>:567                                     ; preds = %564
  %568 = fmul fast float %558, 0x3FF7154760000000
  %569 = call float @dx.op.unary.f32(i32 21, float %568)  ; Exp(value)
  br label %570

; <label>:570                                     ; preds = %567, %564
  %571 = phi float [ %569, %567 ], [ 1.000000e+00, %564 ]
  %572 = fcmp fast une float %559, 0.000000e+00
  br i1 %572, label %573, label %576, !dx.controlflow.hints !75

; <label>:573                                     ; preds = %570
  %574 = fmul fast float %559, 0x3FF7154760000000
  %575 = call float @dx.op.unary.f32(i32 21, float %574)  ; Exp(value)
  br label %576

; <label>:576                                     ; preds = %573, %570
  %577 = phi float [ %575, %573 ], [ 1.000000e+00, %570 ]
  %578 = fcmp fast ogt float %526, %528
  br i1 %578, label %579, label %586, !dx.controlflow.hints !76

; <label>:579                                     ; preds = %576
  %580 = fsub fast float 1.000000e+00, %528
  %581 = fmul fast float %534, %580
  %582 = fcmp fast une float %581, 0.000000e+00
  br i1 %582, label %583, label %607, !dx.controlflow.hints !77

; <label>:583                                     ; preds = %579
  %584 = fmul fast float %581, 0x3FF7154760000000
  %585 = call float @dx.op.unary.f32(i32 21, float %584)  ; Exp(value)
  br label %607

; <label>:586                                     ; preds = %576
  %587 = fsub fast float 1.000000e+00, %526
  %588 = fmul fast float %540, %587
  %589 = fmul fast float %546, %587
  %590 = fmul fast float %552, %587
  %591 = fcmp fast une float %588, 0.000000e+00
  br i1 %591, label %592, label %595, !dx.controlflow.hints !75

; <label>:592                                     ; preds = %586
  %593 = fmul fast float %588, 0x3FF7154760000000
  %594 = call float @dx.op.unary.f32(i32 21, float %593)  ; Exp(value)
  br label %595

; <label>:595                                     ; preds = %592, %586
  %596 = phi float [ %594, %592 ], [ 1.000000e+00, %586 ]
  %597 = fcmp fast une float %589, 0.000000e+00
  br i1 %597, label %598, label %601, !dx.controlflow.hints !75

; <label>:598                                     ; preds = %595
  %599 = fmul fast float %589, 0x3FF7154760000000
  %600 = call float @dx.op.unary.f32(i32 21, float %599)  ; Exp(value)
  br label %601

; <label>:601                                     ; preds = %598, %595
  %602 = phi float [ %600, %598 ], [ 1.000000e+00, %595 ]
  %603 = fcmp fast une float %590, 0.000000e+00
  br i1 %603, label %604, label %607, !dx.controlflow.hints !75

; <label>:604                                     ; preds = %601
  %605 = fmul fast float %590, 0x3FF7154760000000
  %606 = call float @dx.op.unary.f32(i32 21, float %605)  ; Exp(value)
  br label %607

; <label>:607                                     ; preds = %604, %601, %583, %579
  %608 = phi float [ %606, %604 ], [ %585, %583 ], [ 1.000000e+00, %579 ], [ 1.000000e+00, %601 ]
  %609 = phi float [ %602, %604 ], [ %585, %583 ], [ 1.000000e+00, %579 ], [ %602, %601 ]
  %610 = phi float [ %596, %604 ], [ %585, %583 ], [ 1.000000e+00, %579 ], [ %596, %601 ]
  %611 = fmul fast float %610, %565
  %612 = fmul fast float %609, %571
  %613 = fmul fast float %608, %577
  br label %614

; <label>:614                                     ; preds = %607, %514
  %615 = phi float [ %517, %514 ], [ %613, %607 ]
  %616 = phi float [ %516, %514 ], [ %612, %607 ]
  %617 = phi float [ %515, %514 ], [ %611, %607 ]
  %618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %619 = extractvalue %dx.types.CBufRet.f32 %618, 2
  %620 = extractvalue %dx.types.CBufRet.f32 %618, 3
  %621 = fmul fast float %619, %77
  %622 = fmul fast float %620, %78
  %623 = call float @dx.op.unary.f32(i32 7, float %621)  ; Saturate(value)
  %624 = call float @dx.op.unary.f32(i32 7, float %622)  ; Saturate(value)
  %625 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %11, float %623, float %624, float 1.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %626 = extractvalue %dx.types.ResRet.f32 %625, 0
  %627 = extractvalue %dx.types.ResRet.f32 %625, 1
  %628 = extractvalue %dx.types.ResRet.f32 %625, 2
  %629 = extractvalue %dx.types.ResRet.f32 %625, 3
  %630 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %11, float %623, float %624, float 2.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %631 = extractvalue %dx.types.ResRet.f32 %630, 0
  %632 = extractvalue %dx.types.ResRet.f32 %630, 1
  %633 = extractvalue %dx.types.ResRet.f32 %630, 2
  %634 = extractvalue %dx.types.ResRet.f32 %630, 3
  %635 = call float @dx.op.binary.f32(i32 35, float %627, float %628)  ; FMax(a,b)
  %636 = call float @dx.op.binary.f32(i32 35, float %626, float %635)  ; FMax(a,b)
  %637 = call float @dx.op.binary.f32(i32 35, float %636, float %629)  ; FMax(a,b)
  %638 = call float @dx.op.binary.f32(i32 36, float %632, float %633)  ; FMin(a,b)
  %639 = call float @dx.op.binary.f32(i32 36, float %631, float %638)  ; FMin(a,b)
  %640 = call float @dx.op.binary.f32(i32 36, float %639, float %634)  ; FMin(a,b)
  %641 = fmul fast float %637, 2.550000e+02
  %642 = fadd fast float %641, 0x3F70101020000000
  %643 = fptoui float %642 to i32
  %644 = fmul fast float %640, 2.550000e+02
  %645 = fadd fast float %644, 0x3F70101020000000
  %646 = fptoui float %645 to i32
  %647 = icmp ult i32 %643, %646
  br i1 %647, label %648, label %686, !dx.controlflow.hints !78

; <label>:648                                     ; preds = %614
  %649 = fcmp fast ogt float %65, 9.843750e-01
  %650 = fadd fast float %63, -4.000000e+00
  %651 = select i1 %649, float -4.000000e+00, float %650
  %652 = call float @dx.op.binary.f32(i32 35, float %651, float 0.000000e+00)  ; FMax(a,b)
  %653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %654 = extractvalue %dx.types.CBufRet.f32 %653, 0
  %655 = fadd fast float %654, %652
  %656 = extractvalue %dx.types.CBufRet.f32 %653, 2
  %657 = fmul fast float %655, %656
  %658 = call float @dx.op.unary.f32(i32 23, float %657)  ; Log(value)
  %659 = extractvalue %dx.types.CBufRet.f32 %653, 3
  %660 = fmul fast float %659, %658
  %661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %662 = extractvalue %dx.types.CBufRet.f32 %661, 2
  %663 = fmul fast float %660, %662
  %664 = call float @dx.op.unary.f32(i32 7, float %663)  ; Saturate(value)
  %665 = uitofp i32 %643 to float
  %666 = uitofp i32 %646 to float
  %667 = fadd fast float %665, 5.000000e-01
  %668 = fadd fast float %666, 5.000000e-01
  %669 = fmul fast float %662, %667
  %670 = fmul fast float %662, %668
  %671 = fadd fast float %669, 0x3F0FFB4800000000
  %672 = fadd fast float %670, 0xBF0FFB4800000000
  %673 = call float @dx.op.binary.f32(i32 35, float %664, float %671)  ; FMax(a,b)
  %674 = call float @dx.op.binary.f32(i32 36, float %673, float %672)  ; FMin(a,b)
  %675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %676 = extractvalue %dx.types.CBufRet.f32 %675, 1
  %677 = extractvalue %dx.types.CBufRet.f32 %675, 2
  %678 = fmul fast float %676, %674
  %679 = fsub fast float %676, %677
  %680 = call float @dx.op.binary.f32(i32 35, float %678, float %677)  ; FMax(a,b)
  %681 = call float @dx.op.binary.f32(i32 36, float %680, float %679)  ; FMin(a,b)
  %682 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %10, float %623, float %624, float %681, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %683 = extractvalue %dx.types.ResRet.f32 %682, 0
  %684 = extractvalue %dx.types.ResRet.f32 %682, 1
  %685 = extractvalue %dx.types.ResRet.f32 %682, 2
  br label %686

; <label>:686                                     ; preds = %648, %614
  %687 = phi float [ %683, %648 ], [ 1.000000e+00, %614 ]
  %688 = phi float [ %684, %648 ], [ 1.000000e+00, %614 ]
  %689 = phi float [ %685, %648 ], [ 1.000000e+00, %614 ]
  %690 = fmul fast float %687, %617
  %691 = fmul fast float %688, %616
  %692 = fmul fast float %689, %615
  %693 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %11, float %72, float %73, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %694 = extractvalue %dx.types.ResRet.f32 %693, 0
  %695 = fmul fast float %690, %694
  %696 = fmul fast float %691, %694
  %697 = fmul fast float %692, %694
  %698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %699 = extractvalue %dx.types.CBufRet.f32 %698, 2
  %700 = call float @dx.op.binary.f32(i32 35, float %696, float %697)  ; FMax(a,b)
  %701 = call float @dx.op.binary.f32(i32 35, float %695, float %700)  ; FMax(a,b)
  %702 = fadd fast float %701, %699
  %703 = call float @dx.op.unary.f32(i32 7, float %702)  ; Saturate(value)
  %704 = fmul fast float %77, 5.000000e-01
  %705 = fmul fast float %78, 5.000000e-01
  %706 = fadd fast float %704, -1.000000e+00
  %707 = fadd fast float %705, -1.000000e+00
  %708 = call float @dx.op.binary.f32(i32 35, float %706, float 0.000000e+00)  ; FMax(a,b)
  %709 = call float @dx.op.binary.f32(i32 35, float %707, float 0.000000e+00)  ; FMax(a,b)
  %710 = call float @dx.op.binary.f32(i32 36, float %708, float %75)  ; FMin(a,b)
  %711 = call float @dx.op.binary.f32(i32 36, float %709, float %76)  ; FMin(a,b)
  %712 = fptoui float %710 to i32
  %713 = fptoui float %711 to i32
  %714 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %715 = extractvalue %dx.types.CBufRet.i32 %714, 0
  %716 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 %715, i32 %712, i32 %713, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %717 = extractvalue %dx.types.ResRet.f32 %716, 0
  %718 = call float @dx.op.binary.f32(i32 35, float %704, float 0.000000e+00)  ; FMax(a,b)
  %719 = call float @dx.op.binary.f32(i32 36, float %718, float %75)  ; FMin(a,b)
  %720 = fptoui float %719 to i32
  %721 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 %715, i32 %720, i32 %713, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %722 = extractvalue %dx.types.ResRet.f32 %721, 0
  %723 = fadd fast float %722, %717
  %724 = fadd fast float %704, 1.000000e+00
  %725 = call float @dx.op.binary.f32(i32 35, float %724, float 0.000000e+00)  ; FMax(a,b)
  %726 = call float @dx.op.binary.f32(i32 36, float %725, float %75)  ; FMin(a,b)
  %727 = fptoui float %726 to i32
  %728 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 %715, i32 %727, i32 %713, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %729 = extractvalue %dx.types.ResRet.f32 %728, 0
  %730 = fadd fast float %723, %729
  %731 = call float @dx.op.binary.f32(i32 35, float %705, float 0.000000e+00)  ; FMax(a,b)
  %732 = call float @dx.op.binary.f32(i32 36, float %731, float %76)  ; FMin(a,b)
  %733 = fptoui float %732 to i32
  %734 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 %715, i32 %712, i32 %733, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %735 = extractvalue %dx.types.ResRet.f32 %734, 0
  %736 = fadd fast float %730, %735
  %737 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 %715, i32 %720, i32 %733, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %738 = extractvalue %dx.types.ResRet.f32 %737, 0
  %739 = fadd fast float %736, %738
  %740 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 %715, i32 %727, i32 %733, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %741 = extractvalue %dx.types.ResRet.f32 %740, 0
  %742 = fadd fast float %739, %741
  %743 = fadd fast float %705, 1.000000e+00
  %744 = call float @dx.op.binary.f32(i32 35, float %743, float 0.000000e+00)  ; FMax(a,b)
  %745 = call float @dx.op.binary.f32(i32 36, float %744, float %76)  ; FMin(a,b)
  %746 = fptoui float %745 to i32
  %747 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 %715, i32 %712, i32 %746, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %748 = extractvalue %dx.types.ResRet.f32 %747, 0
  %749 = fadd fast float %742, %748
  %750 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 %715, i32 %720, i32 %746, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %751 = extractvalue %dx.types.ResRet.f32 %750, 0
  %752 = fadd fast float %749, %751
  %753 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 %715, i32 %727, i32 %746, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %754 = extractvalue %dx.types.ResRet.f32 %753, 0
  %755 = fadd fast float %752, %754
  %756 = fmul fast float %755, 0x3FBC71C720000000
  %757 = call float @dx.op.unary.f32(i32 7, float %756)  ; Saturate(value)
  %758 = fsub fast float 1.000000e+00, %757
  %759 = fmul fast float %758, %703
  %760 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %12, float %72, float %73, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %761 = extractvalue %dx.types.ResRet.f32 %760, 0
  %762 = extractvalue %dx.types.ResRet.f32 %760, 1
  %763 = call float @dx.op.unary.f32(i32 6, float %762)  ; FAbs(value)
  %764 = call float @dx.op.unary.f32(i32 7, float %763)  ; Saturate(value)
  %765 = call float @dx.op.unary.f32(i32 6, float %761)  ; FAbs(value)
  %766 = call float @dx.op.unary.f32(i32 7, float %765)  ; Saturate(value)
  %767 = call float @dx.op.binary.f32(i32 35, float %766, float %764)  ; FMax(a,b)
  %768 = fsub fast float 1.000000e+00, %767
  %769 = call float @dx.op.unary.f32(i32 7, float %768)  ; Saturate(value)
  %770 = fmul fast float %759, %769
  %771 = extractvalue %dx.types.CBufRet.f32 %698, 0
  %772 = extractvalue %dx.types.CBufRet.f32 %698, 1
  %773 = fmul fast float %770, %771
  %774 = call float @dx.op.binary.f32(i32 35, float %773, float %772)  ; FMax(a,b)
  %775 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %776 = extractvalue %dx.types.CBufRet.i32 %775, 3
  %777 = and i32 %776, 3
  %778 = icmp ne i32 %777, 0
  %779 = and i32 %776, 4
  %780 = icmp ne i32 %779, 0
  %781 = and i1 %778, %780
  br i1 %781, label %782, label %790, !dx.controlflow.hints !79

; <label>:782                                     ; preds = %686
  %783 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %11, float %72, float %73, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %784 = extractvalue %dx.types.ResRet.f32 %783, 0
  %785 = fcmp fast ogt float %784, 0.000000e+00
  %786 = select i1 %785, float 1.000000e+00, float 0.000000e+00
  %787 = fsub fast float 1.000000e+00, %786
  %788 = fmul fast float %787, %774
  %789 = fmul fast float %786, %774
  br label %790

; <label>:790                                     ; preds = %782, %686
  %791 = phi float [ %788, %782 ], [ %774, %686 ]
  %792 = phi float [ %789, %782 ], [ %774, %686 ]
  %793 = add i32 %20, %15
  %794 = shl i32 %793, 3
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %794, i32 undef, float %791, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %795 = or i32 %794, 4
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %795, i32 undef, float %792, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %796

; <label>:796                                     ; preds = %790, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.f32(i32, %dx.types.Handle, i32, i32, float, float, float, float, i8) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!24}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !15, !17, !20}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14}
!6 = !{i32 0, %"class.Texture1D<float>"* undef, !"", i32 0, i32 7, i32 1, i32 1, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 4, i32 0, !7}
!9 = !{i32 2, %"class.Texture2DArray<float>"* undef, !"", i32 0, i32 5, i32 1, i32 7, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 12, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<float>"* undef, !"", i32 0, i32 6, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2DMS<float, 0>"* undef, !"", i32 0, i32 1, i32 1, i32 3, i32 0, !7}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!15 = !{!16}
!16 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!17 = !{!18, !19}
!18 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!19 = !{i32 1, %hostlayout.FlareConstants* undef, !"", i32 0, i32 0, i32 1, i32 144, null}
!20 = !{!21, !22, !23}
!21 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!22 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!23 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!24 = !{void ()* @cs_flare_occlusion, !"cs_flare_occlusion", null, !4, !25}
!25 = !{i32 0, i64 272, i32 4, !26}
!26 = !{i32 64, i32 1, i32 1}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 1}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = !{!38, !38, i64 0}
!38 = !{!"float", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!42, !44, !46}
!42 = distinct !{!42, !43, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!43 = distinct !{!43, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!44 = distinct !{!44, !45, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!45 = distinct !{!45, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!46 = distinct !{!46, !45, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = !{!49}
!49 = distinct !{!49, !50, !"\01?sort@@YAXAIAM00@Z: %c"}
!50 = distinct !{!50, !"\01?sort@@YAXAIAM00@Z"}
!51 = !{!52, !53, !42, !44, !46}
!52 = distinct !{!52, !50, !"\01?sort@@YAXAIAM00@Z: %a"}
!53 = distinct !{!53, !50, !"\01?sort@@YAXAIAM00@Z: %b"}
!54 = !{!53}
!55 = !{!52, !49, !42, !44, !46}
!56 = !{!52}
!57 = !{!53, !49, !42, !44, !46}
!58 = !{!59}
!59 = distinct !{!59, !60, !"\01?sort@@YAXAIAM00@Z: %c"}
!60 = distinct !{!60, !"\01?sort@@YAXAIAM00@Z"}
!61 = !{!62, !63, !42, !44, !46}
!62 = distinct !{!62, !60, !"\01?sort@@YAXAIAM00@Z: %a"}
!63 = distinct !{!63, !60, !"\01?sort@@YAXAIAM00@Z: %b"}
!64 = !{!63}
!65 = !{!62, !59, !42, !44, !46}
!66 = !{!62}
!67 = !{!63, !59, !42, !44, !46}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}

