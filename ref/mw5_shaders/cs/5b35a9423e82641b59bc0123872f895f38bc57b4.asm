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
; shader hash: 3ee44461dd85055796dbd86614fbba0b
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   sampler      NA          NA      S0             s2     1
;                                   sampler      NA          NA      S1             s4     1
;                                   texture     f32     2darray      T0      t0,space6unbounded
;                                   texture    byte         r/o      T1            t19     1
;                                   texture    byte         r/o      T2             t0     1
;                                   texture    byte         r/o      T3             t4     1
;                                   texture    byte         r/o      T4             t5     1
;                                   texture    byte         r/o      T5             t9     1
;                                   texture     f32          2d      T6             t6     1
;                                   texture     f32          2d      T7             t7     1
;                                   texture     f32          2d      T8             t8     1
;                                       UAV    byte         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
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
%struct.SamplerState = type { i32 }

define void @cs_water_update_frustum_lights() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %14 = icmp ugt i32 %13, 255
  br i1 %14, label %381, label %15, !dx.controlflow.hints !26

; <label>:15                                      ; preds = %0
  %16 = mul i32 %13, 112
  %17 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %16, i32 undef)  ; BufferLoad(srv,index,wot)
  %18 = extractvalue %dx.types.ResRet.f32 %17, 0
  %19 = extractvalue %dx.types.ResRet.f32 %17, 1
  %20 = extractvalue %dx.types.ResRet.f32 %17, 2
  %21 = or i32 %16, 12
  %22 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %21, i32 undef)  ; BufferLoad(srv,index,wot)
  %23 = extractvalue %dx.types.ResRet.f32 %22, 0
  %24 = add i32 %16, 16
  %25 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %24, i32 undef)  ; BufferLoad(srv,index,wot)
  %26 = extractvalue %dx.types.ResRet.f32 %25, 0
  %27 = extractvalue %dx.types.ResRet.f32 %25, 1
  %28 = extractvalue %dx.types.ResRet.f32 %25, 2
  %29 = add i32 %16, 28
  %30 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %29, i32 undef)  ; BufferLoad(srv,index,wot)
  %31 = extractvalue %dx.types.ResRet.i32 %30, 0
  %32 = add i32 %16, 32
  %33 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %32, i32 undef)  ; BufferLoad(srv,index,wot)
  %34 = extractvalue %dx.types.ResRet.f32 %33, 0
  %35 = extractvalue %dx.types.ResRet.f32 %33, 1
  %36 = extractvalue %dx.types.ResRet.f32 %33, 2
  %37 = add i32 %16, 44
  %38 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %37, i32 undef)  ; BufferLoad(srv,index,wot)
  %39 = extractvalue %dx.types.ResRet.f32 %38, 0
  %40 = add i32 %16, 48
  %41 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %40, i32 undef)  ; BufferLoad(srv,index,wot)
  %42 = extractvalue %dx.types.ResRet.f32 %41, 0
  %43 = extractvalue %dx.types.ResRet.f32 %41, 1
  %44 = extractvalue %dx.types.ResRet.f32 %41, 2
  %45 = extractvalue %dx.types.ResRet.f32 %41, 3
  %46 = add i32 %16, 64
  %47 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %46, i32 undef)  ; BufferLoad(srv,index,wot)
  %48 = extractvalue %dx.types.ResRet.f32 %47, 0
  %49 = extractvalue %dx.types.ResRet.f32 %47, 1
  %50 = extractvalue %dx.types.ResRet.f32 %47, 2
  %51 = extractvalue %dx.types.ResRet.f32 %47, 3
  %52 = add i32 %16, 80
  %53 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %52, i32 undef)  ; BufferLoad(srv,index,wot)
  %54 = extractvalue %dx.types.ResRet.f32 %53, 0
  %55 = extractvalue %dx.types.ResRet.f32 %53, 1
  %56 = extractvalue %dx.types.ResRet.f32 %53, 2
  %57 = add i32 %16, 92
  %58 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %57, i32 undef)  ; BufferLoad(srv,index,wot)
  %59 = extractvalue %dx.types.ResRet.i32 %58, 0
  %60 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.f32 %60, 0
  %62 = extractvalue %dx.types.CBufRet.f32 %60, 1
  %63 = extractvalue %dx.types.CBufRet.f32 %60, 2
  %64 = fadd fast float %61, %42
  %65 = fadd fast float %62, %43
  %66 = fadd fast float %63, %44
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 0
  %69 = extractvalue %dx.types.CBufRet.f32 %67, 1
  %70 = fsub fast float %64, %68
  %71 = fsub fast float %65, %69
  %72 = fmul fast float %70, %70
  %73 = fmul fast float %71, %71
  %74 = fadd fast float %72, %73
  %75 = call float @dx.op.unary.f32(i32 24, float %74)  ; Sqrt(value)
  %76 = extractvalue %dx.types.CBufRet.f32 %67, 2
  %77 = fcmp fast olt float %75, %76
  %78 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %79 = extractvalue %dx.types.CBufRet.f32 %78, 0
  %80 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.f32 %80, 0
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.f32 %82, 0
  %84 = extractvalue %dx.types.CBufRet.f32 %78, 1
  %85 = extractvalue %dx.types.CBufRet.f32 %80, 1
  %86 = extractvalue %dx.types.CBufRet.f32 %82, 1
  %87 = extractvalue %dx.types.CBufRet.f32 %78, 3
  %88 = extractvalue %dx.types.CBufRet.f32 %80, 3
  %89 = extractvalue %dx.types.CBufRet.f32 %82, 3
  %90 = fadd fast float %87, %64
  %91 = fadd fast float %88, %65
  %92 = fadd fast float %89, %66
  %93 = fmul fast float %90, %79
  %94 = call float @dx.op.tertiary.f32(i32 46, float %91, float %81, float %93)  ; FMad(a,b,c)
  %95 = call float @dx.op.tertiary.f32(i32 46, float %92, float %83, float %94)  ; FMad(a,b,c)
  %96 = fmul fast float %90, %84
  %97 = call float @dx.op.tertiary.f32(i32 46, float %91, float %85, float %96)  ; FMad(a,b,c)
  %98 = call float @dx.op.tertiary.f32(i32 46, float %92, float %86, float %97)  ; FMad(a,b,c)
  %99 = fsub fast float %95, %87
  %100 = fsub fast float %98, %88
  br i1 %77, label %101, label %143, !dx.controlflow.hints !27

; <label>:101                                     ; preds = %15
  %102 = fsub fast float %99, %68
  %103 = fadd fast float %102, %76
  %104 = fsub fast float %100, %69
  %105 = fadd fast float %104, %76
  %106 = extractvalue %dx.types.CBufRet.f32 %67, 3
  %107 = fmul fast float %103, %106
  %108 = fmul fast float %105, %106
  %109 = call float @dx.op.unary.f32(i32 7, float %107)  ; Saturate(value)
  %110 = call float @dx.op.unary.f32(i32 7, float %108)  ; Saturate(value)
  %111 = fsub fast float 1.000000e+00, %109
  %112 = fsub fast float 1.000000e+00, %110
  %113 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %11, float %111, float %112, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %114 = extractvalue %dx.types.ResRet.f32 %113, 0
  %115 = fcmp fast ugt float %114, 0.000000e+00
  br i1 %115, label %116, label %372, !dx.controlflow.hints !28

; <label>:116                                     ; preds = %101
  %117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %118 = extractvalue %dx.types.CBufRet.f32 %117, 2
  %119 = fmul fast float %118, %114
  %120 = extractvalue %dx.types.CBufRet.f32 %117, 3
  %121 = fadd fast float %120, %119
  %122 = extractvalue %dx.types.CBufRet.f32 %82, 2
  %123 = fadd fast float %121, %89
  %124 = fmul fast float %95, %83
  %125 = call float @dx.op.tertiary.f32(i32 46, float %98, float %86, float %124)  ; FMad(a,b,c)
  %126 = call float @dx.op.tertiary.f32(i32 46, float %123, float %122, float %125)  ; FMad(a,b,c)
  %127 = fsub fast float %126, %89
  %128 = fsub fast float %127, %63
  %129 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %11, float %111, float %112, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %130 = extractvalue %dx.types.ResRet.f32 %129, 0
  %131 = extractvalue %dx.types.ResRet.f32 %129, 1
  %132 = extractvalue %dx.types.ResRet.f32 %129, 2
  %133 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %11, float %111, float %112, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %134 = extractvalue %dx.types.ResRet.f32 %133, 0
  %135 = extractvalue %dx.types.ResRet.f32 %133, 1
  %136 = extractvalue %dx.types.ResRet.f32 %133, 2
  %137 = fadd fast float %134, %130
  %138 = fmul fast float %137, 0x3F847AE140000000
  %139 = fadd fast float %135, %131
  %140 = fmul fast float %139, 0x3F847AE140000000
  %141 = fadd fast float %136, %132
  %142 = fmul fast float %141, 0x3F847AE140000000
  br label %372

; <label>:143                                     ; preds = %15
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 0
  %146 = extractvalue %dx.types.CBufRet.f32 %144, 1
  %147 = extractvalue %dx.types.CBufRet.f32 %144, 2
  %148 = extractvalue %dx.types.CBufRet.f32 %144, 3
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.f32 %149, 3
  %151 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.i32 %151, 0
  %153 = extractvalue %dx.types.CBufRet.i32 %151, 1
  %154 = udiv i32 %153, %152
  %155 = fsub fast float %99, %145
  %156 = fsub fast float %100, %146
  %157 = call float @dx.op.binary.f32(i32 35, float %155, float 0.000000e+00)  ; FMax(a,b)
  %158 = call float @dx.op.binary.f32(i32 35, float %156, float 0.000000e+00)  ; FMax(a,b)
  %159 = call float @dx.op.binary.f32(i32 36, float %157, float %147)  ; FMin(a,b)
  %160 = call float @dx.op.binary.f32(i32 36, float %158, float %148)  ; FMin(a,b)
  %161 = add i32 %152, -1
  %162 = add i32 %154, -1
  %163 = fmul fast float %159, %150
  %164 = fmul fast float %160, %150
  %165 = fptoui float %163 to i32
  %166 = fptoui float %164 to i32
  %167 = call i32 @dx.op.binary.i32(i32 40, i32 %165, i32 %161)  ; UMin(a,b)
  %168 = call i32 @dx.op.binary.i32(i32 40, i32 %166, i32 %162)  ; UMin(a,b)
  %169 = mul i32 %168, %152
  %170 = add i32 %169, %167
  %171 = shl i32 %170, 2
  %172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %171, i32 undef)  ; BufferLoad(srv,index,wot)
  %173 = extractvalue %dx.types.ResRet.i32 %172, 0
  %174 = icmp eq i32 %173, -1
  br i1 %174, label %372, label %175, !dx.controlflow.hints !29

; <label>:175                                     ; preds = %143
  %176 = mul i32 %173, 148
  %177 = add i32 %176, 4
  %178 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %177, i32 undef)  ; BufferLoad(srv,index,wot)
  %179 = extractvalue %dx.types.ResRet.f32 %178, 0
  %180 = add i32 %176, 8
  %181 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %180, i32 undef)  ; BufferLoad(srv,index,wot)
  %182 = extractvalue %dx.types.ResRet.f32 %181, 0
  %183 = add i32 %176, 36
  %184 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %183, i32 undef)  ; BufferLoad(srv,index,wot)
  %185 = extractvalue %dx.types.ResRet.f32 %184, 0
  %186 = add i32 %176, 60
  %187 = add i32 %176, 92
  %188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %187, i32 undef)  ; BufferLoad(srv,index,wot)
  %189 = extractvalue %dx.types.ResRet.i32 %188, 0
  %190 = add i32 %176, 116
  %191 = fsub fast float %99, %179
  %192 = fsub fast float %100, %182
  %193 = fmul fast float %150, %191
  %194 = fmul fast float %150, %192
  %195 = call float @dx.op.unary.f32(i32 7, float %193)  ; Saturate(value)
  %196 = call float @dx.op.unary.f32(i32 7, float %194)  ; Saturate(value)
  %197 = fsub fast float 1.000000e+00, %196
  %198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %199 = extractvalue %dx.types.CBufRet.f32 %198, 3
  %200 = fadd fast float %199, 1.000000e+00
  %201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %202 = extractvalue %dx.types.CBufRet.f32 %201, 3
  %203 = fadd fast float %200, %202
  %204 = add i32 %189, 0
  %205 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %204, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %206 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %205, i32 0)  ; GetDimensions(handle,mipLevel)
  %207 = extractvalue %dx.types.Dimensions %206, 0
  %208 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %207)  ; FirstbitLo(value)
  %209 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %210 = extractvalue %dx.types.CBufRet.i32 %209, 1
  %211 = sub nsw i32 %210, %208
  %212 = sitofp i32 %211 to float
  %213 = fsub fast float %203, %212
  %214 = call float @dx.op.binary.f32(i32 35, float %213, float 0.000000e+00)  ; FMax(a,b)
  %215 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %205, %dx.types.Handle %10, float %195, float %197, float %185, float undef, i32 0, i32 0, i32 undef, float %214)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %216 = extractvalue %dx.types.ResRet.f32 %215, 0
  %217 = fcmp ule float %216, 0x3FE0101020000000
  %218 = extractvalue %dx.types.CBufRet.i32 %209, 0
  %219 = and i32 %218, 128
  %220 = icmp ne i32 %219, 0
  %221 = and i1 %217, %220
  br i1 %221, label %372, label %222, !dx.controlflow.hints !30

; <label>:222                                     ; preds = %175
  %223 = add i32 %176, 20
  %224 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %223, i32 undef)  ; BufferLoad(srv,index,wot)
  %225 = extractvalue %dx.types.ResRet.f32 %224, 0
  %226 = add i32 %176, 24
  %227 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %226, i32 undef)  ; BufferLoad(srv,index,wot)
  %228 = extractvalue %dx.types.ResRet.f32 %227, 0
  %229 = add i32 %176, 40
  %230 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %229, i32 undef)  ; BufferLoad(srv,index,wot)
  %231 = extractvalue %dx.types.ResRet.f32 %230, 0
  %232 = add i32 %176, 96
  %233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %232, i32 undef)  ; BufferLoad(srv,index,wot)
  %234 = extractvalue %dx.types.ResRet.i32 %233, 0
  %235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %236 = extractvalue %dx.types.CBufRet.f32 %235, 2
  %237 = fmul fast float %236, %195
  %238 = fmul fast float %236, %197
  %239 = extractvalue %dx.types.CBufRet.f32 %235, 3
  %240 = fadd fast float %237, %239
  %241 = fadd fast float %238, %239
  %242 = add i32 %234, 0
  %243 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %242, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %244 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %243, i32 0)  ; GetDimensions(handle,mipLevel)
  %245 = extractvalue %dx.types.Dimensions %244, 0
  %246 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %245)  ; FirstbitLo(value)
  %247 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %248 = extractvalue %dx.types.CBufRet.i32 %247, 1
  %249 = sub nsw i32 %248, %246
  %250 = sitofp i32 %249 to float
  %251 = fsub fast float %200, %250
  %252 = call float @dx.op.binary.f32(i32 35, float %251, float 0.000000e+00)  ; FMax(a,b)
  %253 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %243, %dx.types.Handle %10, float %240, float %241, float %231, float undef, i32 0, i32 0, i32 undef, float %252)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %254 = extractvalue %dx.types.ResRet.f32 %253, 0
  %255 = fmul fast float %254, %225
  %256 = fadd fast float %255, %228
  %257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %258 = extractvalue %dx.types.CBufRet.f32 %257, 0
  %259 = extractvalue %dx.types.CBufRet.f32 %257, 1
  %260 = extractvalue %dx.types.CBufRet.f32 %257, 2
  %261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %262 = extractvalue %dx.types.CBufRet.f32 %261, 3
  %263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %264 = extractvalue %dx.types.CBufRet.f32 %263, 3
  %265 = extractvalue %dx.types.CBufRet.f32 %257, 3
  %266 = fadd fast float %262, %99
  %267 = fadd fast float %264, %100
  %268 = fadd fast float %256, %265
  %269 = fmul fast float %266, %258
  %270 = call float @dx.op.tertiary.f32(i32 46, float %267, float %259, float %269)  ; FMad(a,b,c)
  %271 = call float @dx.op.tertiary.f32(i32 46, float %268, float %260, float %270)  ; FMad(a,b,c)
  %272 = fsub fast float %271, %265
  %273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %274 = extractvalue %dx.types.CBufRet.f32 %273, 2
  %275 = fsub fast float %272, %274
  %276 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %277 = extractvalue %dx.types.CBufRet.i32 %276, 0
  %278 = call i32 @dx.op.binary.i32(i32 40, i32 %173, i32 %277)  ; UMin(a,b)
  %279 = mul i32 %278, 36
  %280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %279, i32 undef)  ; BufferLoad(srv,index,wot)
  %281 = extractvalue %dx.types.ResRet.i32 %280, 0
  %282 = add i32 %279, 4
  %283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %284 = extractvalue %dx.types.CBufRet.f32 %283, 0
  %285 = fmul fast float %284, %195
  %286 = fmul fast float %284, %197
  %287 = extractvalue %dx.types.CBufRet.f32 %283, 1
  %288 = fadd fast float %285, %287
  %289 = fadd fast float %286, %287
  %290 = icmp eq i32 %281, 0
  br i1 %290, label %359, label %291

; <label>:291                                     ; preds = %222
  br label %292

; <label>:292                                     ; preds = %349, %291
  %293 = phi float [ %350, %349 ], [ 0.000000e+00, %291 ]
  %294 = phi float [ %351, %349 ], [ 0.000000e+00, %291 ]
  %295 = phi float [ %352, %349 ], [ 0.000000e+00, %291 ]
  %296 = phi float [ %353, %349 ], [ 0.000000e+00, %291 ]
  %297 = phi float [ %354, %349 ], [ 0.000000e+00, %291 ]
  %298 = phi float [ %355, %349 ], [ 0.000000e+00, %291 ]
  %299 = phi i32 [ %356, %349 ], [ 0, %291 ]
  %300 = shl i32 %299, 2
  %301 = add i32 %186, %300
  %302 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %301, i32 undef)  ; BufferLoad(srv,index,wot)
  %303 = extractvalue %dx.types.ResRet.f32 %302, 0
  %304 = add i32 %190, %300
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = add i32 %306, 0
  %308 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %307, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %309 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %308, i32 0)  ; GetDimensions(handle,mipLevel)
  %310 = extractvalue %dx.types.Dimensions %309, 0
  %311 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %310)  ; FirstbitLo(value)
  %312 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %313 = extractvalue %dx.types.CBufRet.i32 %312, 1
  %314 = sub nsw i32 %313, %311
  %315 = sitofp i32 %314 to float
  %316 = fsub fast float %200, %315
  %317 = call float @dx.op.binary.f32(i32 35, float %316, float 0.000000e+00)  ; FMax(a,b)
  %318 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %308, %dx.types.Handle %10, float %288, float %289, float %303, float undef, i32 0, i32 0, i32 undef, float %317)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %319 = extractvalue %dx.types.ResRet.f32 %318, 0
  %320 = fcmp fast ogt float %319, 0.000000e+00
  br i1 %320, label %321, label %349, !dx.controlflow.hints !31

; <label>:321                                     ; preds = %292
  %322 = add i32 %282, %300
  %323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %322, i32 undef)  ; BufferLoad(srv,index,wot)
  %324 = extractvalue %dx.types.ResRet.i32 %323, 0
  %325 = and i32 %324, 32767
  %326 = mul nuw nsw i32 %325, 928
  %327 = add nuw nsw i32 %326, 48
  %328 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.f32 %328, 0
  %330 = extractvalue %dx.types.ResRet.f32 %328, 1
  %331 = extractvalue %dx.types.ResRet.f32 %328, 2
  %332 = add nuw nsw i32 %326, 60
  %333 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.f32 %333, 0
  %335 = extractvalue %dx.types.ResRet.f32 %333, 1
  %336 = extractvalue %dx.types.ResRet.f32 %333, 2
  %337 = fmul fast float %329, %319
  %338 = fmul fast float %330, %319
  %339 = fmul fast float %331, %319
  %340 = fadd fast float %337, %293
  %341 = fadd fast float %338, %294
  %342 = fadd fast float %339, %295
  %343 = fmul fast float %334, %319
  %344 = fmul fast float %335, %319
  %345 = fmul fast float %336, %319
  %346 = fadd fast float %343, %296
  %347 = fadd fast float %344, %297
  %348 = fadd fast float %345, %298
  br label %349

; <label>:349                                     ; preds = %321, %292
  %350 = phi float [ %340, %321 ], [ %293, %292 ]
  %351 = phi float [ %341, %321 ], [ %294, %292 ]
  %352 = phi float [ %342, %321 ], [ %295, %292 ]
  %353 = phi float [ %346, %321 ], [ %296, %292 ]
  %354 = phi float [ %347, %321 ], [ %297, %292 ]
  %355 = phi float [ %348, %321 ], [ %298, %292 ]
  %356 = add nuw i32 %299, 1
  %357 = icmp eq i32 %356, %281
  br i1 %357, label %358, label %292

; <label>:358                                     ; preds = %349
  br label %359

; <label>:359                                     ; preds = %358, %222
  %360 = phi float [ 0.000000e+00, %222 ], [ %350, %358 ]
  %361 = phi float [ 0.000000e+00, %222 ], [ %351, %358 ]
  %362 = phi float [ 0.000000e+00, %222 ], [ %352, %358 ]
  %363 = phi float [ 0.000000e+00, %222 ], [ %353, %358 ]
  %364 = phi float [ 0.000000e+00, %222 ], [ %354, %358 ]
  %365 = phi float [ 0.000000e+00, %222 ], [ %355, %358 ]
  %366 = fadd fast float %363, %360
  %367 = fmul fast float %366, 0x3F847AE140000000
  %368 = fadd fast float %364, %361
  %369 = fmul fast float %368, 0x3F847AE140000000
  %370 = fadd fast float %365, %362
  %371 = fmul fast float %370, 0x3F847AE140000000
  br label %372

; <label>:372                                     ; preds = %359, %175, %143, %116, %101
  %373 = phi float [ %128, %116 ], [ -1.310720e+05, %101 ], [ %275, %359 ], [ -1.310720e+05, %143 ], [ -1.310720e+05, %175 ]
  %374 = phi float [ %138, %116 ], [ 0.000000e+00, %101 ], [ %367, %359 ], [ 0.000000e+00, %143 ], [ 0.000000e+00, %175 ]
  %375 = phi float [ %140, %116 ], [ 0.000000e+00, %101 ], [ %369, %359 ], [ 0.000000e+00, %143 ], [ 0.000000e+00, %175 ]
  %376 = phi float [ %142, %116 ], [ 0.000000e+00, %101 ], [ %371, %359 ], [ 0.000000e+00, %143 ], [ 0.000000e+00, %175 ]
  %377 = fsub fast float %44, %373
  %378 = call float @dx.op.binary.f32(i32 35, float %377, float 0.000000e+00)  ; FMax(a,b)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %16, i32 undef, float %18, float %19, float %20, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %21, i32 undef, float %23, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %24, i32 undef, float %26, float %27, float %28, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %29, i32 undef, i32 %31, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %32, i32 undef, float %34, float %35, float %36, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %37, i32 undef, float %39, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %40, i32 undef, float %42, float %43, float %44, float %45, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %46, i32 undef, float %48, float %49, float %50, float %51, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %52, i32 undef, float %54, float %55, float %56, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %57, i32 undef, i32 %59, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %379 = add i32 %16, 96
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %379, i32 undef, float %374, float %375, float %376, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %380 = add i32 %16, 108
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %380, i32 undef, float %378, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %381

; <label>:381                                     ; preds = %372, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.f32(i32, %dx.types.Handle, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

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
!4 = !{!5, !16, !18, !20}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{i32 0, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 19, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 5, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 9, i32 1, i32 11, i32 0, null}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 6, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 7, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!16 = !{!17}
!17 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!18 = !{!19}
!19 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!20 = !{!21, !22}
!21 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!22 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!23 = !{void ()* @cs_water_update_frustum_lights, !"cs_water_update_frustum_lights", null, !4, !24}
!24 = !{i32 0, i64 272, i32 4, !25}
!25 = !{i32 64, i32 1, i32 1}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}

