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
; shader hash: 855831e1b1e0283106c1fca068c250d7
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
;   [16 x i8] (type annotation not present)
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
;                                   texture    byte         r/o      T0             t0     1
;                                       UAV    byte         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
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
%FrustumGridClusteringConsts = type { i32, i32, i32, i32 }

define void @cs_frustum_grid_clustering() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %7 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %8 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %9 = extractvalue %dx.types.CBufRet.i32 %8, 0
  %10 = extractvalue %dx.types.CBufRet.i32 %8, 1
  %11 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %12 = extractvalue %dx.types.CBufRet.i32 %11, 1
  %13 = icmp ult i32 %5, %9
  %14 = icmp ult i32 %6, %10
  %15 = icmp ult i32 %7, %12
  %16 = and i1 %13, %14
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %659, !dx.controlflow.hints !15

; <label>:18                                      ; preds = %0
  %19 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %20 = extractvalue %dx.types.CBufRet.i32 %19, 2
  %21 = icmp eq i32 %20, 0
  %22 = uitofp i32 %5 to float
  %23 = uitofp i32 %6 to float
  %24 = fadd fast float %22, 5.000000e-01
  %25 = fadd fast float %23, 5.000000e-01
  %26 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %27 = extractvalue %dx.types.CBufRet.f32 %26, 0
  %28 = extractvalue %dx.types.CBufRet.f32 %26, 1
  %29 = fmul fast float %27, %24
  %30 = fmul fast float %28, %25
  %31 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %32 = extractvalue %dx.types.CBufRet.f32 %31, 2
  %33 = extractvalue %dx.types.CBufRet.f32 %31, 3
  %34 = fmul fast float %29, %32
  %35 = fmul fast float %30, %33
  %36 = shl i32 %7, 2
  %37 = uitofp i32 %36 to float
  %38 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %39 = extractvalue %dx.types.CBufRet.f32 %38, 0
  %40 = extractvalue %dx.types.CBufRet.f32 %38, 1
  %41 = fmul fast float %40, %37
  %42 = call float @dx.op.unary.f32(i32 21, float %41)  ; Exp(value)
  %43 = fmul fast float %42, %39
  %44 = fsub fast float 4.000000e+00, %39
  %45 = fadd fast float %44, %43
  %46 = add i32 %12, -1
  %47 = icmp eq i32 %7, %46
  %48 = and i1 %21, %47
  br i1 %48, label %56, label %49, !dx.controlflow.hints !16

; <label>:49                                      ; preds = %18
  %50 = add i32 %36, 4
  %51 = uitofp i32 %50 to float
  %52 = fmul fast float %40, %51
  %53 = call float @dx.op.unary.f32(i32 21, float %52)  ; Exp(value)
  %54 = fmul fast float %53, %39
  %55 = fadd fast float %44, %54
  br label %56

; <label>:56                                      ; preds = %49, %18
  %57 = phi float [ %55, %49 ], [ 2.560000e+05, %18 ]
  %58 = fmul fast float %32, %27
  %59 = fmul fast float %33, %28
  %60 = fmul fast float %34, 2.000000e+00
  %61 = fmul fast float %35, 2.000000e+00
  %62 = fsub fast float 1.000000e+00, %60
  %63 = fsub fast float 1.000000e+00, %61
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 0
  %66 = extractvalue %dx.types.CBufRet.f32 %64, 1
  %67 = extractvalue %dx.types.CBufRet.f32 %64, 2
  %68 = fmul fast float %65, %62
  %69 = fmul fast float %66, %62
  %70 = fmul fast float %67, %62
  %71 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.f32 %71, 0
  %73 = extractvalue %dx.types.CBufRet.f32 %71, 1
  %74 = extractvalue %dx.types.CBufRet.f32 %71, 2
  %75 = fmul fast float %72, %63
  %76 = fmul fast float %73, %63
  %77 = fmul fast float %74, %63
  %78 = fadd fast float %75, %68
  %79 = fadd fast float %76, %69
  %80 = fadd fast float %77, %70
  %81 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %82 = extractvalue %dx.types.CBufRet.f32 %81, 0
  %83 = extractvalue %dx.types.CBufRet.f32 %81, 1
  %84 = extractvalue %dx.types.CBufRet.f32 %81, 2
  %85 = fadd fast float %78, %82
  %86 = fadd fast float %79, %83
  %87 = fadd fast float %80, %84
  %88 = fmul fast float %85, %45
  %89 = fmul fast float %86, %45
  %90 = fmul fast float %87, %45
  %91 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %92 = extractvalue %dx.types.CBufRet.f32 %91, 0
  %93 = extractvalue %dx.types.CBufRet.f32 %91, 1
  %94 = extractvalue %dx.types.CBufRet.f32 %91, 2
  %95 = fadd fast float %88, %92
  %96 = fadd fast float %89, %93
  %97 = fadd fast float %90, %94
  %98 = fmul fast float %58, %45
  %99 = fmul fast float %98, %65
  %100 = fsub fast float -0.000000e+00, %99
  %101 = fmul fast float %98, %66
  %102 = fsub fast float -0.000000e+00, %101
  %103 = fmul fast float %98, %67
  %104 = fsub fast float -0.000000e+00, %103
  %105 = fmul fast float %59, %45
  %106 = fmul fast float %105, %72
  %107 = fmul fast float %105, %73
  %108 = fmul fast float %105, %74
  %109 = fmul fast float %85, %57
  %110 = fmul fast float %86, %57
  %111 = fmul fast float %87, %57
  %112 = fadd fast float %109, %92
  %113 = fadd fast float %110, %93
  %114 = fadd fast float %111, %94
  %115 = fmul fast float %58, %57
  %116 = fmul fast float %115, %65
  %117 = fmul fast float %115, %66
  %118 = fmul fast float %115, %67
  %119 = fmul fast float %59, %57
  %120 = fmul fast float %119, %72
  %121 = fmul fast float %119, %73
  %122 = fmul fast float %119, %74
  %123 = extractvalue %dx.types.CBufRet.i32 %19, 1
  %124 = extractvalue %dx.types.CBufRet.i32 %19, 0
  %125 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.i32 %125, 2
  %127 = extractvalue %dx.types.CBufRet.i32 %125, 3
  %128 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6, i32 %126, i32 %5)  ; UMad(a,b,c)
  %129 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7, i32 %127, i32 %128)  ; UMad(a,b,c)
  %130 = mul i32 %129, %123
  %131 = icmp eq i32 %123, 0
  br i1 %131, label %659, label %132

; <label>:132                                     ; preds = %56
  br label %133

; <label>:133                                     ; preds = %653, %132
  %134 = phi i32 [ %656, %653 ], [ 0, %132 ]
  br label %135

; <label>:135                                     ; preds = %649, %133
  %136 = phi i32 [ 0, %133 ], [ %650, %649 ]
  %137 = phi i32 [ 0, %133 ], [ %651, %649 ]
  %138 = call i32 @dx.op.tertiary.i32(i32 49, i32 %134, i32 32, i32 %137)  ; UMad(a,b,c)
  %139 = icmp ult i32 %138, %124
  br i1 %139, label %140, label %649, !dx.controlflow.hints !17

; <label>:140                                     ; preds = %135
  %141 = mul i32 %138, 60
  %142 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %141, i32 undef)  ; BufferLoad(srv,index,wot)
  %143 = extractvalue %dx.types.ResRet.f32 %142, 0
  %144 = extractvalue %dx.types.ResRet.f32 %142, 1
  %145 = extractvalue %dx.types.ResRet.f32 %142, 2
  %146 = add i32 %141, 12
  %147 = add i32 %141, 48
  %148 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %147, i32 undef)  ; BufferLoad(srv,index,wot)
  %149 = extractvalue %dx.types.ResRet.f32 %148, 0
  %150 = extractvalue %dx.types.ResRet.f32 %148, 1
  %151 = extractvalue %dx.types.ResRet.f32 %148, 2
  %152 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %146, i32 undef)  ; BufferLoad(srv,index,wot)
  %153 = extractvalue %dx.types.ResRet.f32 %152, 0
  %154 = extractvalue %dx.types.ResRet.f32 %152, 1
  %155 = extractvalue %dx.types.ResRet.f32 %152, 2
  %156 = call float @dx.op.dot3.f32(i32 55, float %143, float %144, float %145, float %153, float %154, float %155)  ; Dot3(ax,ay,az,bx,by,bz)
  %157 = call float @dx.op.dot3.f32(i32 55, float %153, float %154, float %155, float %153, float %154, float %155)  ; Dot3(ax,ay,az,bx,by,bz)
  %158 = fmul fast float %157, %149
  %159 = call float @dx.op.unary.f32(i32 6, float %158)  ; FAbs(value)
  %160 = add i32 %141, 24
  %161 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %160, i32 undef)  ; BufferLoad(srv,index,wot)
  %162 = extractvalue %dx.types.ResRet.f32 %161, 0
  %163 = extractvalue %dx.types.ResRet.f32 %161, 1
  %164 = extractvalue %dx.types.ResRet.f32 %161, 2
  %165 = call float @dx.op.dot3.f32(i32 55, float %162, float %163, float %164, float %153, float %154, float %155)  ; Dot3(ax,ay,az,bx,by,bz)
  %166 = fmul fast float %165, %150
  %167 = call float @dx.op.unary.f32(i32 6, float %166)  ; FAbs(value)
  %168 = fadd fast float %167, %159
  %169 = add i32 %141, 36
  %170 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %169, i32 undef)  ; BufferLoad(srv,index,wot)
  %171 = extractvalue %dx.types.ResRet.f32 %170, 0
  %172 = extractvalue %dx.types.ResRet.f32 %170, 1
  %173 = extractvalue %dx.types.ResRet.f32 %170, 2
  %174 = call float @dx.op.dot3.f32(i32 55, float %171, float %172, float %173, float %153, float %154, float %155)  ; Dot3(ax,ay,az,bx,by,bz)
  %175 = fmul fast float %174, %151
  %176 = call float @dx.op.unary.f32(i32 6, float %175)  ; FAbs(value)
  %177 = fadd fast float %168, %176
  %178 = fsub fast float %156, %177
  %179 = fadd fast float %177, %156
  %180 = call float @dx.op.dot3.f32(i32 55, float %95, float %96, float %97, float %153, float %154, float %155)  ; Dot3(ax,ay,az,bx,by,bz)
  %181 = call float @dx.op.dot3.f32(i32 55, float %99, float %101, float %103, float %153, float %154, float %155)  ; Dot3(ax,ay,az,bx,by,bz)
  %182 = call float @dx.op.unary.f32(i32 6, float %181)  ; FAbs(value)
  %183 = call float @dx.op.dot3.f32(i32 55, float %106, float %107, float %108, float %153, float %154, float %155)  ; Dot3(ax,ay,az,bx,by,bz)
  %184 = call float @dx.op.unary.f32(i32 6, float %183)  ; FAbs(value)
  %185 = fadd fast float %184, %182
  %186 = fsub fast float %180, %185
  %187 = fadd fast float %185, %180
  %188 = call float @dx.op.dot3.f32(i32 55, float %112, float %113, float %114, float %153, float %154, float %155)  ; Dot3(ax,ay,az,bx,by,bz)
  %189 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %153, float %154, float %155)  ; Dot3(ax,ay,az,bx,by,bz)
  %190 = call float @dx.op.unary.f32(i32 6, float %189)  ; FAbs(value)
  %191 = call float @dx.op.dot3.f32(i32 55, float %120, float %121, float %122, float %153, float %154, float %155)  ; Dot3(ax,ay,az,bx,by,bz)
  %192 = call float @dx.op.unary.f32(i32 6, float %191)  ; FAbs(value)
  %193 = fadd fast float %192, %190
  %194 = fsub fast float %188, %193
  %195 = fadd fast float %193, %188
  %196 = fcmp fast olt float %194, %186
  %197 = select i1 %196, float %194, float %186
  %198 = fcmp fast ogt float %195, %187
  %199 = select i1 %198, float %195, float %187
  %200 = fcmp fast olt float %199, %178
  %201 = fcmp fast olt float %179, %197
  %202 = or i1 %200, %201
  br i1 %202, label %644, label %203, !dx.controlflow.hints !18

; <label>:203                                     ; preds = %140
  %204 = call float @dx.op.dot3.f32(i32 55, float %143, float %144, float %145, float %162, float %163, float %164)  ; Dot3(ax,ay,az,bx,by,bz)
  %205 = call float @dx.op.dot3.f32(i32 55, float %153, float %154, float %155, float %162, float %163, float %164)  ; Dot3(ax,ay,az,bx,by,bz)
  %206 = fmul fast float %205, %149
  %207 = call float @dx.op.unary.f32(i32 6, float %206)  ; FAbs(value)
  %208 = call float @dx.op.dot3.f32(i32 55, float %162, float %163, float %164, float %162, float %163, float %164)  ; Dot3(ax,ay,az,bx,by,bz)
  %209 = fmul fast float %208, %150
  %210 = call float @dx.op.unary.f32(i32 6, float %209)  ; FAbs(value)
  %211 = fadd fast float %210, %207
  %212 = call float @dx.op.dot3.f32(i32 55, float %171, float %172, float %173, float %162, float %163, float %164)  ; Dot3(ax,ay,az,bx,by,bz)
  %213 = fmul fast float %212, %151
  %214 = call float @dx.op.unary.f32(i32 6, float %213)  ; FAbs(value)
  %215 = fadd fast float %211, %214
  %216 = fsub fast float %204, %215
  %217 = fadd fast float %215, %204
  %218 = call float @dx.op.dot3.f32(i32 55, float %95, float %96, float %97, float %162, float %163, float %164)  ; Dot3(ax,ay,az,bx,by,bz)
  %219 = call float @dx.op.dot3.f32(i32 55, float %99, float %101, float %103, float %162, float %163, float %164)  ; Dot3(ax,ay,az,bx,by,bz)
  %220 = call float @dx.op.unary.f32(i32 6, float %219)  ; FAbs(value)
  %221 = call float @dx.op.dot3.f32(i32 55, float %106, float %107, float %108, float %162, float %163, float %164)  ; Dot3(ax,ay,az,bx,by,bz)
  %222 = call float @dx.op.unary.f32(i32 6, float %221)  ; FAbs(value)
  %223 = fadd fast float %222, %220
  %224 = fsub fast float %218, %223
  %225 = fadd fast float %223, %218
  %226 = call float @dx.op.dot3.f32(i32 55, float %112, float %113, float %114, float %162, float %163, float %164)  ; Dot3(ax,ay,az,bx,by,bz)
  %227 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %162, float %163, float %164)  ; Dot3(ax,ay,az,bx,by,bz)
  %228 = call float @dx.op.unary.f32(i32 6, float %227)  ; FAbs(value)
  %229 = call float @dx.op.dot3.f32(i32 55, float %120, float %121, float %122, float %162, float %163, float %164)  ; Dot3(ax,ay,az,bx,by,bz)
  %230 = call float @dx.op.unary.f32(i32 6, float %229)  ; FAbs(value)
  %231 = fadd fast float %230, %228
  %232 = fsub fast float %226, %231
  %233 = fadd fast float %231, %226
  %234 = fcmp fast olt float %232, %224
  %235 = select i1 %234, float %232, float %224
  %236 = fcmp fast ogt float %233, %225
  %237 = select i1 %236, float %233, float %225
  %238 = fcmp fast olt float %237, %216
  %239 = fcmp fast olt float %217, %235
  %240 = or i1 %238, %239
  br i1 %240, label %644, label %241, !dx.controlflow.hints !18

; <label>:241                                     ; preds = %203
  %242 = call float @dx.op.dot3.f32(i32 55, float %143, float %144, float %145, float %171, float %172, float %173)  ; Dot3(ax,ay,az,bx,by,bz)
  %243 = call float @dx.op.dot3.f32(i32 55, float %153, float %154, float %155, float %171, float %172, float %173)  ; Dot3(ax,ay,az,bx,by,bz)
  %244 = fmul fast float %243, %149
  %245 = call float @dx.op.unary.f32(i32 6, float %244)  ; FAbs(value)
  %246 = call float @dx.op.dot3.f32(i32 55, float %162, float %163, float %164, float %171, float %172, float %173)  ; Dot3(ax,ay,az,bx,by,bz)
  %247 = fmul fast float %246, %150
  %248 = call float @dx.op.unary.f32(i32 6, float %247)  ; FAbs(value)
  %249 = fadd fast float %248, %245
  %250 = call float @dx.op.dot3.f32(i32 55, float %171, float %172, float %173, float %171, float %172, float %173)  ; Dot3(ax,ay,az,bx,by,bz)
  %251 = fmul fast float %250, %151
  %252 = call float @dx.op.unary.f32(i32 6, float %251)  ; FAbs(value)
  %253 = fadd fast float %249, %252
  %254 = fsub fast float %242, %253
  %255 = fadd fast float %253, %242
  %256 = call float @dx.op.dot3.f32(i32 55, float %95, float %96, float %97, float %171, float %172, float %173)  ; Dot3(ax,ay,az,bx,by,bz)
  %257 = call float @dx.op.dot3.f32(i32 55, float %99, float %101, float %103, float %171, float %172, float %173)  ; Dot3(ax,ay,az,bx,by,bz)
  %258 = call float @dx.op.unary.f32(i32 6, float %257)  ; FAbs(value)
  %259 = call float @dx.op.dot3.f32(i32 55, float %106, float %107, float %108, float %171, float %172, float %173)  ; Dot3(ax,ay,az,bx,by,bz)
  %260 = call float @dx.op.unary.f32(i32 6, float %259)  ; FAbs(value)
  %261 = fadd fast float %260, %258
  %262 = fsub fast float %256, %261
  %263 = fadd fast float %261, %256
  %264 = call float @dx.op.dot3.f32(i32 55, float %112, float %113, float %114, float %171, float %172, float %173)  ; Dot3(ax,ay,az,bx,by,bz)
  %265 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %171, float %172, float %173)  ; Dot3(ax,ay,az,bx,by,bz)
  %266 = call float @dx.op.unary.f32(i32 6, float %265)  ; FAbs(value)
  %267 = call float @dx.op.dot3.f32(i32 55, float %120, float %121, float %122, float %171, float %172, float %173)  ; Dot3(ax,ay,az,bx,by,bz)
  %268 = call float @dx.op.unary.f32(i32 6, float %267)  ; FAbs(value)
  %269 = fadd fast float %268, %266
  %270 = fsub fast float %264, %269
  %271 = fadd fast float %269, %264
  %272 = fcmp fast olt float %270, %262
  %273 = select i1 %272, float %270, float %262
  %274 = fcmp fast ogt float %271, %263
  %275 = select i1 %274, float %271, float %263
  %276 = fcmp fast olt float %275, %254
  %277 = fcmp fast olt float %255, %273
  %278 = or i1 %276, %277
  br i1 %278, label %644, label %279, !dx.controlflow.hints !18

; <label>:279                                     ; preds = %241
  %280 = fcmp fast ole float %178, %197
  %281 = fcmp fast ole float %199, %179
  %282 = and i1 %280, %281
  %283 = zext i1 %282 to i32
  %284 = shl nuw nsw i32 %283, 1
  %285 = fcmp fast ole float %216, %235
  %286 = fcmp fast ole float %237, %217
  %287 = and i1 %285, %286
  %288 = zext i1 %287 to i32
  %289 = or i32 %288, %284
  %290 = shl nuw nsw i32 %289, 1
  %291 = fcmp fast ole float %254, %273
  %292 = fcmp fast ole float %275, %255
  %293 = and i1 %291, %292
  %294 = zext i1 %293 to i32
  %295 = or i32 %294, %290
  %296 = icmp eq i32 %295, 7
  br i1 %296, label %644, label %297, !dx.controlflow.hints !19

; <label>:297                                     ; preds = %279
  %298 = fsub fast float %143, %95
  %299 = fsub fast float %144, %96
  %300 = fsub fast float %145, %97
  %301 = call float @dx.op.dot3.f32(i32 55, float %143, float %144, float %145, float %298, float %299, float %300)  ; Dot3(ax,ay,az,bx,by,bz)
  %302 = call float @dx.op.dot3.f32(i32 55, float %153, float %154, float %155, float %298, float %299, float %300)  ; Dot3(ax,ay,az,bx,by,bz)
  %303 = fmul fast float %302, %149
  %304 = call float @dx.op.unary.f32(i32 6, float %303)  ; FAbs(value)
  %305 = call float @dx.op.dot3.f32(i32 55, float %162, float %163, float %164, float %298, float %299, float %300)  ; Dot3(ax,ay,az,bx,by,bz)
  %306 = fmul fast float %305, %150
  %307 = call float @dx.op.unary.f32(i32 6, float %306)  ; FAbs(value)
  %308 = fadd fast float %307, %304
  %309 = call float @dx.op.dot3.f32(i32 55, float %171, float %172, float %173, float %298, float %299, float %300)  ; Dot3(ax,ay,az,bx,by,bz)
  %310 = fmul fast float %309, %151
  %311 = call float @dx.op.unary.f32(i32 6, float %310)  ; FAbs(value)
  %312 = fadd fast float %308, %311
  %313 = fsub fast float %301, %312
  %314 = fadd fast float %312, %301
  %315 = call float @dx.op.dot3.f32(i32 55, float %95, float %96, float %97, float %298, float %299, float %300)  ; Dot3(ax,ay,az,bx,by,bz)
  %316 = call float @dx.op.dot3.f32(i32 55, float %99, float %101, float %103, float %298, float %299, float %300)  ; Dot3(ax,ay,az,bx,by,bz)
  %317 = call float @dx.op.unary.f32(i32 6, float %316)  ; FAbs(value)
  %318 = call float @dx.op.dot3.f32(i32 55, float %106, float %107, float %108, float %298, float %299, float %300)  ; Dot3(ax,ay,az,bx,by,bz)
  %319 = call float @dx.op.unary.f32(i32 6, float %318)  ; FAbs(value)
  %320 = fadd fast float %319, %317
  %321 = fsub fast float %315, %320
  %322 = fadd fast float %320, %315
  %323 = call float @dx.op.dot3.f32(i32 55, float %112, float %113, float %114, float %298, float %299, float %300)  ; Dot3(ax,ay,az,bx,by,bz)
  %324 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %298, float %299, float %300)  ; Dot3(ax,ay,az,bx,by,bz)
  %325 = call float @dx.op.unary.f32(i32 6, float %324)  ; FAbs(value)
  %326 = call float @dx.op.dot3.f32(i32 55, float %120, float %121, float %122, float %298, float %299, float %300)  ; Dot3(ax,ay,az,bx,by,bz)
  %327 = call float @dx.op.unary.f32(i32 6, float %326)  ; FAbs(value)
  %328 = fadd fast float %327, %325
  %329 = fsub fast float %323, %328
  %330 = fadd fast float %328, %323
  %331 = fcmp fast olt float %329, %321
  %332 = select i1 %331, float %329, float %321
  %333 = fcmp fast ogt float %330, %322
  %334 = select i1 %333, float %330, float %322
  %335 = fcmp fast olt float %334, %313
  %336 = fcmp fast olt float %314, %332
  %337 = or i1 %335, %336
  br i1 %337, label %644, label %338, !dx.controlflow.hints !20

; <label>:338                                     ; preds = %297
  %339 = fmul fast float %108, %101
  %340 = fmul fast float %107, %103
  %341 = fsub fast float %339, %340
  %342 = fmul fast float %106, %103
  %343 = fmul fast float %108, %99
  %344 = fsub fast float %342, %343
  %345 = fmul fast float %107, %99
  %346 = fmul fast float %106, %101
  %347 = fsub fast float %345, %346
  %348 = call float @dx.op.dot3.f32(i32 55, float %143, float %144, float %145, float %341, float %344, float %347)  ; Dot3(ax,ay,az,bx,by,bz)
  %349 = call float @dx.op.dot3.f32(i32 55, float %153, float %154, float %155, float %341, float %344, float %347)  ; Dot3(ax,ay,az,bx,by,bz)
  %350 = fmul fast float %349, %149
  %351 = call float @dx.op.unary.f32(i32 6, float %350)  ; FAbs(value)
  %352 = call float @dx.op.dot3.f32(i32 55, float %162, float %163, float %164, float %341, float %344, float %347)  ; Dot3(ax,ay,az,bx,by,bz)
  %353 = fmul fast float %352, %150
  %354 = call float @dx.op.unary.f32(i32 6, float %353)  ; FAbs(value)
  %355 = fadd fast float %354, %351
  %356 = call float @dx.op.dot3.f32(i32 55, float %171, float %172, float %173, float %341, float %344, float %347)  ; Dot3(ax,ay,az,bx,by,bz)
  %357 = fmul fast float %356, %151
  %358 = call float @dx.op.unary.f32(i32 6, float %357)  ; FAbs(value)
  %359 = fadd fast float %355, %358
  %360 = fsub fast float %348, %359
  %361 = fadd fast float %359, %348
  %362 = call float @dx.op.dot3.f32(i32 55, float %95, float %96, float %97, float %341, float %344, float %347)  ; Dot3(ax,ay,az,bx,by,bz)
  %363 = call float @dx.op.dot3.f32(i32 55, float %99, float %101, float %103, float %341, float %344, float %347)  ; Dot3(ax,ay,az,bx,by,bz)
  %364 = call float @dx.op.unary.f32(i32 6, float %363)  ; FAbs(value)
  %365 = call float @dx.op.dot3.f32(i32 55, float %106, float %107, float %108, float %341, float %344, float %347)  ; Dot3(ax,ay,az,bx,by,bz)
  %366 = call float @dx.op.unary.f32(i32 6, float %365)  ; FAbs(value)
  %367 = fadd fast float %366, %364
  %368 = fsub fast float %362, %367
  %369 = fadd fast float %367, %362
  %370 = call float @dx.op.dot3.f32(i32 55, float %112, float %113, float %114, float %341, float %344, float %347)  ; Dot3(ax,ay,az,bx,by,bz)
  %371 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %341, float %344, float %347)  ; Dot3(ax,ay,az,bx,by,bz)
  %372 = call float @dx.op.unary.f32(i32 6, float %371)  ; FAbs(value)
  %373 = call float @dx.op.dot3.f32(i32 55, float %120, float %121, float %122, float %341, float %344, float %347)  ; Dot3(ax,ay,az,bx,by,bz)
  %374 = call float @dx.op.unary.f32(i32 6, float %373)  ; FAbs(value)
  %375 = fadd fast float %374, %372
  %376 = fsub fast float %370, %375
  %377 = fadd fast float %375, %370
  %378 = fcmp fast olt float %376, %368
  %379 = select i1 %378, float %376, float %368
  %380 = fcmp fast ogt float %377, %369
  %381 = select i1 %380, float %377, float %369
  %382 = fcmp fast olt float %381, %360
  %383 = fcmp fast olt float %361, %379
  %384 = or i1 %382, %383
  br i1 %384, label %644, label %385, !dx.controlflow.hints !21

; <label>:385                                     ; preds = %338
  %386 = fsub fast float %99, %95
  %387 = fadd fast float %386, %106
  %388 = fsub fast float %387, %116
  %389 = fadd fast float %388, %112
  %390 = fsub fast float %389, %120
  %391 = fsub fast float %101, %96
  %392 = fadd fast float %391, %107
  %393 = fsub fast float %392, %117
  %394 = fadd fast float %393, %113
  %395 = fsub fast float %394, %121
  %396 = fsub fast float %103, %97
  %397 = fadd fast float %396, %108
  %398 = fsub fast float %397, %118
  %399 = fadd fast float %398, %114
  %400 = fsub fast float %399, %122
  %401 = fmul fast float %400, %101
  %402 = fmul fast float %395, %103
  %403 = fsub fast float %401, %402
  %404 = fmul fast float %390, %103
  %405 = fmul fast float %400, %99
  %406 = fsub fast float %404, %405
  %407 = fmul fast float %395, %99
  %408 = fmul fast float %390, %101
  %409 = fsub fast float %407, %408
  %410 = call float @dx.op.dot3.f32(i32 55, float %143, float %144, float %145, float %403, float %406, float %409)  ; Dot3(ax,ay,az,bx,by,bz)
  %411 = call float @dx.op.dot3.f32(i32 55, float %153, float %154, float %155, float %403, float %406, float %409)  ; Dot3(ax,ay,az,bx,by,bz)
  %412 = fmul fast float %411, %149
  %413 = call float @dx.op.unary.f32(i32 6, float %412)  ; FAbs(value)
  %414 = call float @dx.op.dot3.f32(i32 55, float %162, float %163, float %164, float %403, float %406, float %409)  ; Dot3(ax,ay,az,bx,by,bz)
  %415 = fmul fast float %414, %150
  %416 = call float @dx.op.unary.f32(i32 6, float %415)  ; FAbs(value)
  %417 = fadd fast float %416, %413
  %418 = call float @dx.op.dot3.f32(i32 55, float %171, float %172, float %173, float %403, float %406, float %409)  ; Dot3(ax,ay,az,bx,by,bz)
  %419 = fmul fast float %418, %151
  %420 = call float @dx.op.unary.f32(i32 6, float %419)  ; FAbs(value)
  %421 = fadd fast float %417, %420
  %422 = fsub fast float %410, %421
  %423 = fadd fast float %421, %410
  %424 = call float @dx.op.dot3.f32(i32 55, float %95, float %96, float %97, float %403, float %406, float %409)  ; Dot3(ax,ay,az,bx,by,bz)
  %425 = call float @dx.op.dot3.f32(i32 55, float %99, float %101, float %103, float %403, float %406, float %409)  ; Dot3(ax,ay,az,bx,by,bz)
  %426 = call float @dx.op.unary.f32(i32 6, float %425)  ; FAbs(value)
  %427 = call float @dx.op.dot3.f32(i32 55, float %106, float %107, float %108, float %403, float %406, float %409)  ; Dot3(ax,ay,az,bx,by,bz)
  %428 = call float @dx.op.unary.f32(i32 6, float %427)  ; FAbs(value)
  %429 = fadd fast float %428, %426
  %430 = fsub fast float %424, %429
  %431 = fadd fast float %429, %424
  %432 = call float @dx.op.dot3.f32(i32 55, float %112, float %113, float %114, float %403, float %406, float %409)  ; Dot3(ax,ay,az,bx,by,bz)
  %433 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %403, float %406, float %409)  ; Dot3(ax,ay,az,bx,by,bz)
  %434 = call float @dx.op.unary.f32(i32 6, float %433)  ; FAbs(value)
  %435 = call float @dx.op.dot3.f32(i32 55, float %120, float %121, float %122, float %403, float %406, float %409)  ; Dot3(ax,ay,az,bx,by,bz)
  %436 = call float @dx.op.unary.f32(i32 6, float %435)  ; FAbs(value)
  %437 = fadd fast float %436, %434
  %438 = fsub fast float %432, %437
  %439 = fadd fast float %437, %432
  %440 = fcmp fast olt float %438, %430
  %441 = select i1 %440, float %438, float %430
  %442 = fcmp fast ogt float %439, %431
  %443 = select i1 %442, float %439, float %431
  %444 = fcmp fast olt float %443, %422
  %445 = fcmp fast olt float %423, %441
  %446 = or i1 %444, %445
  br i1 %446, label %644, label %447, !dx.controlflow.hints !22

; <label>:447                                     ; preds = %385
  %448 = fmul fast float %400, %107
  %449 = fmul fast float %395, %108
  %450 = fsub fast float %448, %449
  %451 = fmul fast float %390, %108
  %452 = fmul fast float %400, %106
  %453 = fsub fast float %451, %452
  %454 = fmul fast float %395, %106
  %455 = fmul fast float %390, %107
  %456 = fsub fast float %454, %455
  %457 = call float @dx.op.dot3.f32(i32 55, float %143, float %144, float %145, float %450, float %453, float %456)  ; Dot3(ax,ay,az,bx,by,bz)
  %458 = call float @dx.op.dot3.f32(i32 55, float %153, float %154, float %155, float %450, float %453, float %456)  ; Dot3(ax,ay,az,bx,by,bz)
  %459 = fmul fast float %458, %149
  %460 = call float @dx.op.unary.f32(i32 6, float %459)  ; FAbs(value)
  %461 = call float @dx.op.dot3.f32(i32 55, float %162, float %163, float %164, float %450, float %453, float %456)  ; Dot3(ax,ay,az,bx,by,bz)
  %462 = fmul fast float %461, %150
  %463 = call float @dx.op.unary.f32(i32 6, float %462)  ; FAbs(value)
  %464 = fadd fast float %463, %460
  %465 = call float @dx.op.dot3.f32(i32 55, float %171, float %172, float %173, float %450, float %453, float %456)  ; Dot3(ax,ay,az,bx,by,bz)
  %466 = fmul fast float %465, %151
  %467 = call float @dx.op.unary.f32(i32 6, float %466)  ; FAbs(value)
  %468 = fadd fast float %464, %467
  %469 = fsub fast float %457, %468
  %470 = fadd fast float %468, %457
  %471 = call float @dx.op.dot3.f32(i32 55, float %95, float %96, float %97, float %450, float %453, float %456)  ; Dot3(ax,ay,az,bx,by,bz)
  %472 = call float @dx.op.dot3.f32(i32 55, float %99, float %101, float %103, float %450, float %453, float %456)  ; Dot3(ax,ay,az,bx,by,bz)
  %473 = call float @dx.op.unary.f32(i32 6, float %472)  ; FAbs(value)
  %474 = call float @dx.op.dot3.f32(i32 55, float %106, float %107, float %108, float %450, float %453, float %456)  ; Dot3(ax,ay,az,bx,by,bz)
  %475 = call float @dx.op.unary.f32(i32 6, float %474)  ; FAbs(value)
  %476 = fadd fast float %475, %473
  %477 = fsub fast float %471, %476
  %478 = fadd fast float %476, %471
  %479 = call float @dx.op.dot3.f32(i32 55, float %112, float %113, float %114, float %450, float %453, float %456)  ; Dot3(ax,ay,az,bx,by,bz)
  %480 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %450, float %453, float %456)  ; Dot3(ax,ay,az,bx,by,bz)
  %481 = call float @dx.op.unary.f32(i32 6, float %480)  ; FAbs(value)
  %482 = call float @dx.op.dot3.f32(i32 55, float %120, float %121, float %122, float %450, float %453, float %456)  ; Dot3(ax,ay,az,bx,by,bz)
  %483 = call float @dx.op.unary.f32(i32 6, float %482)  ; FAbs(value)
  %484 = fadd fast float %483, %481
  %485 = fsub fast float %479, %484
  %486 = fadd fast float %484, %479
  %487 = fcmp fast olt float %485, %477
  %488 = select i1 %487, float %485, float %477
  %489 = fcmp fast ogt float %486, %478
  %490 = select i1 %489, float %486, float %478
  %491 = fcmp fast olt float %490, %469
  %492 = fcmp fast olt float %470, %488
  %493 = or i1 %491, %492
  br i1 %493, label %644, label %494, !dx.controlflow.hints !23

; <label>:494                                     ; preds = %447
  %495 = fsub fast float %143, %112
  %496 = fsub fast float %144, %113
  %497 = fsub fast float %145, %114
  %498 = call float @dx.op.dot3.f32(i32 55, float %143, float %144, float %145, float %495, float %496, float %497)  ; Dot3(ax,ay,az,bx,by,bz)
  %499 = call float @dx.op.dot3.f32(i32 55, float %153, float %154, float %155, float %495, float %496, float %497)  ; Dot3(ax,ay,az,bx,by,bz)
  %500 = fmul fast float %499, %149
  %501 = call float @dx.op.unary.f32(i32 6, float %500)  ; FAbs(value)
  %502 = call float @dx.op.dot3.f32(i32 55, float %162, float %163, float %164, float %495, float %496, float %497)  ; Dot3(ax,ay,az,bx,by,bz)
  %503 = fmul fast float %502, %150
  %504 = call float @dx.op.unary.f32(i32 6, float %503)  ; FAbs(value)
  %505 = fadd fast float %504, %501
  %506 = call float @dx.op.dot3.f32(i32 55, float %171, float %172, float %173, float %495, float %496, float %497)  ; Dot3(ax,ay,az,bx,by,bz)
  %507 = fmul fast float %506, %151
  %508 = call float @dx.op.unary.f32(i32 6, float %507)  ; FAbs(value)
  %509 = fadd fast float %505, %508
  %510 = fsub fast float %498, %509
  %511 = fadd fast float %509, %498
  %512 = call float @dx.op.dot3.f32(i32 55, float %95, float %96, float %97, float %495, float %496, float %497)  ; Dot3(ax,ay,az,bx,by,bz)
  %513 = call float @dx.op.dot3.f32(i32 55, float %99, float %101, float %103, float %495, float %496, float %497)  ; Dot3(ax,ay,az,bx,by,bz)
  %514 = call float @dx.op.unary.f32(i32 6, float %513)  ; FAbs(value)
  %515 = call float @dx.op.dot3.f32(i32 55, float %106, float %107, float %108, float %495, float %496, float %497)  ; Dot3(ax,ay,az,bx,by,bz)
  %516 = call float @dx.op.unary.f32(i32 6, float %515)  ; FAbs(value)
  %517 = fadd fast float %516, %514
  %518 = fsub fast float %512, %517
  %519 = fadd fast float %517, %512
  %520 = call float @dx.op.dot3.f32(i32 55, float %112, float %113, float %114, float %495, float %496, float %497)  ; Dot3(ax,ay,az,bx,by,bz)
  %521 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %495, float %496, float %497)  ; Dot3(ax,ay,az,bx,by,bz)
  %522 = call float @dx.op.unary.f32(i32 6, float %521)  ; FAbs(value)
  %523 = call float @dx.op.dot3.f32(i32 55, float %120, float %121, float %122, float %495, float %496, float %497)  ; Dot3(ax,ay,az,bx,by,bz)
  %524 = call float @dx.op.unary.f32(i32 6, float %523)  ; FAbs(value)
  %525 = fadd fast float %524, %522
  %526 = fsub fast float %520, %525
  %527 = fadd fast float %525, %520
  %528 = fcmp fast olt float %526, %518
  %529 = select i1 %528, float %526, float %518
  %530 = fcmp fast ogt float %527, %519
  %531 = select i1 %530, float %527, float %519
  %532 = fcmp fast olt float %531, %510
  %533 = fcmp fast olt float %511, %529
  %534 = or i1 %532, %533
  br i1 %534, label %644, label %535, !dx.controlflow.hints !24

; <label>:535                                     ; preds = %494
  %536 = fsub fast float %100, %95
  %537 = fsub fast float %536, %106
  %538 = fadd fast float %537, %116
  %539 = fadd fast float %538, %112
  %540 = fadd fast float %539, %120
  %541 = fsub fast float %102, %96
  %542 = fsub fast float %541, %107
  %543 = fadd fast float %542, %117
  %544 = fadd fast float %543, %113
  %545 = fadd fast float %544, %121
  %546 = fsub fast float %104, %97
  %547 = fsub fast float %546, %108
  %548 = fadd fast float %547, %118
  %549 = fadd fast float %548, %114
  %550 = fadd fast float %549, %122
  %551 = fmul fast float %550, %101
  %552 = fmul fast float %545, %103
  %553 = fsub fast float %551, %552
  %554 = fmul fast float %540, %103
  %555 = fmul fast float %550, %99
  %556 = fsub fast float %554, %555
  %557 = fmul fast float %545, %99
  %558 = fmul fast float %540, %101
  %559 = fsub fast float %557, %558
  %560 = call float @dx.op.dot3.f32(i32 55, float %143, float %144, float %145, float %553, float %556, float %559)  ; Dot3(ax,ay,az,bx,by,bz)
  %561 = call float @dx.op.dot3.f32(i32 55, float %153, float %154, float %155, float %553, float %556, float %559)  ; Dot3(ax,ay,az,bx,by,bz)
  %562 = fmul fast float %561, %149
  %563 = call float @dx.op.unary.f32(i32 6, float %562)  ; FAbs(value)
  %564 = call float @dx.op.dot3.f32(i32 55, float %162, float %163, float %164, float %553, float %556, float %559)  ; Dot3(ax,ay,az,bx,by,bz)
  %565 = fmul fast float %564, %150
  %566 = call float @dx.op.unary.f32(i32 6, float %565)  ; FAbs(value)
  %567 = fadd fast float %566, %563
  %568 = call float @dx.op.dot3.f32(i32 55, float %171, float %172, float %173, float %553, float %556, float %559)  ; Dot3(ax,ay,az,bx,by,bz)
  %569 = fmul fast float %568, %151
  %570 = call float @dx.op.unary.f32(i32 6, float %569)  ; FAbs(value)
  %571 = fadd fast float %567, %570
  %572 = fsub fast float %560, %571
  %573 = fadd fast float %571, %560
  %574 = call float @dx.op.dot3.f32(i32 55, float %95, float %96, float %97, float %553, float %556, float %559)  ; Dot3(ax,ay,az,bx,by,bz)
  %575 = call float @dx.op.dot3.f32(i32 55, float %99, float %101, float %103, float %553, float %556, float %559)  ; Dot3(ax,ay,az,bx,by,bz)
  %576 = call float @dx.op.unary.f32(i32 6, float %575)  ; FAbs(value)
  %577 = call float @dx.op.dot3.f32(i32 55, float %106, float %107, float %108, float %553, float %556, float %559)  ; Dot3(ax,ay,az,bx,by,bz)
  %578 = call float @dx.op.unary.f32(i32 6, float %577)  ; FAbs(value)
  %579 = fadd fast float %578, %576
  %580 = fsub fast float %574, %579
  %581 = fadd fast float %579, %574
  %582 = call float @dx.op.dot3.f32(i32 55, float %112, float %113, float %114, float %553, float %556, float %559)  ; Dot3(ax,ay,az,bx,by,bz)
  %583 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %553, float %556, float %559)  ; Dot3(ax,ay,az,bx,by,bz)
  %584 = call float @dx.op.unary.f32(i32 6, float %583)  ; FAbs(value)
  %585 = call float @dx.op.dot3.f32(i32 55, float %120, float %121, float %122, float %553, float %556, float %559)  ; Dot3(ax,ay,az,bx,by,bz)
  %586 = call float @dx.op.unary.f32(i32 6, float %585)  ; FAbs(value)
  %587 = fadd fast float %586, %584
  %588 = fsub fast float %582, %587
  %589 = fadd fast float %587, %582
  %590 = fcmp fast olt float %588, %580
  %591 = select i1 %590, float %588, float %580
  %592 = fcmp fast ogt float %589, %581
  %593 = select i1 %592, float %589, float %581
  %594 = fcmp fast olt float %593, %572
  %595 = fcmp fast olt float %573, %591
  %596 = or i1 %594, %595
  br i1 %596, label %644, label %597, !dx.controlflow.hints !25

; <label>:597                                     ; preds = %535
  %598 = fmul fast float %550, %107
  %599 = fmul fast float %545, %108
  %600 = fsub fast float %598, %599
  %601 = fmul fast float %540, %108
  %602 = fmul fast float %550, %106
  %603 = fsub fast float %601, %602
  %604 = fmul fast float %545, %106
  %605 = fmul fast float %540, %107
  %606 = fsub fast float %604, %605
  %607 = call float @dx.op.dot3.f32(i32 55, float %143, float %144, float %145, float %600, float %603, float %606)  ; Dot3(ax,ay,az,bx,by,bz)
  %608 = call float @dx.op.dot3.f32(i32 55, float %153, float %154, float %155, float %600, float %603, float %606)  ; Dot3(ax,ay,az,bx,by,bz)
  %609 = fmul fast float %608, %149
  %610 = call float @dx.op.unary.f32(i32 6, float %609)  ; FAbs(value)
  %611 = call float @dx.op.dot3.f32(i32 55, float %162, float %163, float %164, float %600, float %603, float %606)  ; Dot3(ax,ay,az,bx,by,bz)
  %612 = fmul fast float %611, %150
  %613 = call float @dx.op.unary.f32(i32 6, float %612)  ; FAbs(value)
  %614 = fadd fast float %613, %610
  %615 = call float @dx.op.dot3.f32(i32 55, float %171, float %172, float %173, float %600, float %603, float %606)  ; Dot3(ax,ay,az,bx,by,bz)
  %616 = fmul fast float %615, %151
  %617 = call float @dx.op.unary.f32(i32 6, float %616)  ; FAbs(value)
  %618 = fadd fast float %614, %617
  %619 = fsub fast float %607, %618
  %620 = fadd fast float %618, %607
  %621 = call float @dx.op.dot3.f32(i32 55, float %95, float %96, float %97, float %600, float %603, float %606)  ; Dot3(ax,ay,az,bx,by,bz)
  %622 = call float @dx.op.dot3.f32(i32 55, float %99, float %101, float %103, float %600, float %603, float %606)  ; Dot3(ax,ay,az,bx,by,bz)
  %623 = call float @dx.op.unary.f32(i32 6, float %622)  ; FAbs(value)
  %624 = call float @dx.op.dot3.f32(i32 55, float %106, float %107, float %108, float %600, float %603, float %606)  ; Dot3(ax,ay,az,bx,by,bz)
  %625 = call float @dx.op.unary.f32(i32 6, float %624)  ; FAbs(value)
  %626 = fadd fast float %625, %623
  %627 = fsub fast float %621, %626
  %628 = fadd fast float %626, %621
  %629 = call float @dx.op.dot3.f32(i32 55, float %112, float %113, float %114, float %600, float %603, float %606)  ; Dot3(ax,ay,az,bx,by,bz)
  %630 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %600, float %603, float %606)  ; Dot3(ax,ay,az,bx,by,bz)
  %631 = call float @dx.op.unary.f32(i32 6, float %630)  ; FAbs(value)
  %632 = call float @dx.op.dot3.f32(i32 55, float %120, float %121, float %122, float %600, float %603, float %606)  ; Dot3(ax,ay,az,bx,by,bz)
  %633 = call float @dx.op.unary.f32(i32 6, float %632)  ; FAbs(value)
  %634 = fadd fast float %633, %631
  %635 = fsub fast float %629, %634
  %636 = fadd fast float %634, %629
  %637 = fcmp fast olt float %635, %627
  %638 = select i1 %637, float %635, float %627
  %639 = fcmp fast ogt float %636, %628
  %640 = select i1 %639, float %636, float %628
  %641 = fcmp uge float %640, %619
  %642 = fcmp uge float %620, %638
  %643 = and i1 %642, %641
  br label %644

; <label>:644                                     ; preds = %597, %535, %494, %447, %385, %338, %297, %279, %241, %203, %140
  %645 = phi i1 [ true, %279 ], [ false, %297 ], [ false, %338 ], [ false, %385 ], [ false, %447 ], [ false, %494 ], [ false, %535 ], [ %643, %597 ], [ false, %241 ], [ false, %203 ], [ false, %140 ]
  br i1 %645, label %646, label %649, !dx.controlflow.hints !26

; <label>:646                                     ; preds = %644
  %647 = shl i32 1, %137
  %648 = or i32 %647, %136
  br label %649

; <label>:649                                     ; preds = %646, %644, %135
  %650 = phi i32 [ %648, %646 ], [ %136, %644 ], [ %136, %135 ]
  %651 = add nuw nsw i32 %137, 1
  %652 = icmp eq i32 %651, 32
  br i1 %652, label %653, label %135

; <label>:653                                     ; preds = %649
  %654 = add i32 %134, %130
  %655 = shl i32 %654, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %655, i32 undef, i32 %650, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %656 = add nuw i32 %134, 1
  %657 = icmp eq i32 %656, %123
  br i1 %657, label %658, label %133

; <label>:658                                     ; preds = %653
  br label %659

; <label>:659                                     ; preds = %658, %56, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

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
!dx.entryPoints = !{!12}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !7, !9, null}
!5 = !{!6}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{!8}
!8 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!9 = !{!10, !11}
!10 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!11 = !{i32 1, %FrustumGridClusteringConsts* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!12 = !{void ()* @cs_frustum_grid_clustering, !"cs_frustum_grid_clustering", null, !4, !13}
!13 = !{i32 0, i64 272, i32 4, !14}
!14 = !{i32 4, i32 4, i32 4}
!15 = distinct !{!15, !"dx.controlflow.hints", i32 1}
!16 = distinct !{!16, !"dx.controlflow.hints", i32 2}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}

