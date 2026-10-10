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
; shader hash: 830d7b5c1bfc92b4f8368f2314a42355
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
;                                   cbuffer      NA          NA     CB1            cb1     1
;                                   texture    byte         r/o      T0             t1     1
;                                       UAV     u32          2d      U0             u2     1
;                                       UAV    byte         r/w      U1             u0     1
;                                       UAV    byte         r/w      U2             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.RWTexture2D<unsigned int>" = type { i32 }
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
%MSMUpdateMomentsConstants = type { <4 x float> }

define void @cs_update_msm_prepass() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %8 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %9 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %10 = extractvalue %dx.types.CBufRet.f32 %9, 3
  %11 = fcmp fast ogt float %10, 0.000000e+00
  br i1 %11, label %12, label %432, !dx.controlflow.hints !18

; <label>:12                                      ; preds = %0
  %13 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %14 = extractvalue %dx.types.CBufRet.i32 %13, 2
  %15 = extractvalue %dx.types.CBufRet.i32 %13, 3
  %16 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %3, i32 undef, i32 %7, i32 %8, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %17 = extractvalue %dx.types.ResRet.i32 %16, 0
  %18 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 8, i32 undef)  ; BufferLoad(srv,index,wot)
  %19 = extractvalue %dx.types.ResRet.i32 %18, 0
  %20 = bitcast i32 %19 to float
  %21 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %22 = extractvalue %dx.types.ResRet.i32 %21, 0
  %23 = and i32 %22, 536870911
  %24 = uitofp i32 %23 to float
  %25 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %26 = extractvalue %dx.types.CBufRet.f32 %25, 0
  %27 = extractvalue %dx.types.CBufRet.f32 %25, 1
  %28 = shl i32 %7, 3
  %29 = shl i32 %8, 3
  %30 = uitofp i32 %28 to float
  %31 = uitofp i32 %29 to float
  %32 = fmul fast float %27, %30
  %33 = fmul fast float %27, %31
  %34 = and i32 %14, 31
  %35 = shl i32 1, %34
  %36 = uitofp i32 %14 to float
  %37 = fsub fast float -0.000000e+00, %36
  %38 = call float @dx.op.unary.f32(i32 21, float %37)  ; Exp(value)
  %39 = fmul fast float %38, %24
  %40 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 320)  ; CBufferLoadLegacy(handle,regIndex)
  %41 = extractvalue %dx.types.CBufRet.f32 %40, 0
  %42 = extractvalue %dx.types.CBufRet.f32 %40, 1
  %43 = extractvalue %dx.types.CBufRet.f32 %40, 2
  %44 = extractvalue %dx.types.CBufRet.f32 %40, 3
  %45 = uitofp i32 %35 to float
  %46 = fmul fast float %45, %20
  %47 = fmul fast float %39, %27
  %48 = fmul fast float %41, %47
  %49 = fmul fast float %42, %47
  %50 = fsub fast float %32, %48
  %51 = fsub fast float %33, %49
  %52 = call float @dx.op.unary.f32(i32 22, float %50)  ; Frc(value)
  %53 = call float @dx.op.unary.f32(i32 22, float %51)  ; Frc(value)
  %54 = fmul fast float %46, %26
  %55 = fmul fast float %54, %52
  %56 = fmul fast float %53, %54
  %57 = fadd fast float %55, %41
  %58 = fadd fast float %56, %42
  %59 = fmul fast float %27, 8.000000e+00
  %60 = fadd fast float %53, %59
  %61 = fcmp fast une float %43, %41
  br i1 %61, label %62, label %74, !dx.controlflow.hints !19

; <label>:62                                      ; preds = %12
  %63 = fadd fast float %52, %59
  %64 = fcmp fast oge float %63, 1.000000e+00
  %65 = fcmp fast olt float %41, %43
  %66 = fcmp fast ole float %57, %43
  %67 = fsub fast float 8.000000e+00, %26
  %68 = fmul fast float %46, %67
  %69 = fadd fast float %68, %57
  %70 = fcmp fast oge float %69, %43
  %71 = select i1 %65, i1 %66, i1 %70
  %72 = or i1 %64, %71
  %73 = zext i1 %72 to i32
  br label %74

; <label>:74                                      ; preds = %62, %12
  %75 = phi i32 [ %73, %62 ], [ 0, %12 ]
  %76 = fcmp fast une float %44, %42
  br i1 %76, label %77, label %90, !dx.controlflow.hints !20

; <label>:77                                      ; preds = %74
  %78 = icmp ne i32 %75, 0
  %79 = fcmp fast oge float %60, 1.000000e+00
  %80 = or i1 %79, %78
  %81 = fcmp fast olt float %42, %44
  %82 = fcmp fast ole float %58, %44
  %83 = fsub fast float 8.000000e+00, %26
  %84 = fmul fast float %46, %83
  %85 = fadd fast float %84, %58
  %86 = fcmp fast oge float %85, %44
  %87 = select i1 %81, i1 %82, i1 %86
  %88 = or i1 %87, %80
  %89 = zext i1 %88 to i32
  br label %90

; <label>:90                                      ; preds = %77, %74
  %91 = phi i32 [ %89, %77 ], [ %75, %74 ]
  %92 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = extractvalue %dx.types.CBufRet.f32 %92, 2
  %94 = extractvalue %dx.types.CBufRet.f32 %92, 3
  %95 = extractvalue %dx.types.CBufRet.f32 %92, 0
  %96 = extractvalue %dx.types.CBufRet.f32 %92, 1
  %97 = icmp ne i32 %91, 0
  %98 = fmul fast float %54, 5.000000e-01
  %99 = fsub fast float %57, %98
  %100 = fsub fast float %58, %98
  %101 = fcmp fast ole float %99, %93
  %102 = fcmp fast ole float %100, %94
  %103 = and i1 %101, %102
  %104 = fmul fast float %46, 8.000000e+00
  %105 = fsub fast float %104, %98
  %106 = fadd fast float %105, %57
  %107 = fadd fast float %105, %58
  %108 = fcmp fast oge float %106, %95
  %109 = fcmp fast oge float %107, %96
  %110 = and i1 %108, %109
  %111 = and i1 %103, %110
  %112 = or i1 %97, %111
  %113 = and i32 %17, -15
  %114 = zext i1 %112 to i32
  %115 = select i1 %112, i32 %113, i32 %17
  %116 = icmp eq i32 %15, %14
  br i1 %116, label %339, label %117, !dx.controlflow.hints !21

; <label>:117                                     ; preds = %90
  %118 = shl i32 %35, 1
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 321)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 0
  %121 = extractvalue %dx.types.CBufRet.f32 %119, 1
  %122 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %123 = extractvalue %dx.types.CBufRet.f32 %119, 3
  %124 = uitofp i32 %118 to float
  %125 = fmul fast float %124, %20
  %126 = fmul fast float %27, 5.000000e-01
  %127 = fmul fast float %126, %39
  %128 = fmul fast float %120, %127
  %129 = fmul fast float %121, %127
  %130 = fsub fast float %32, %128
  %131 = fsub fast float %33, %129
  %132 = call float @dx.op.unary.f32(i32 22, float %130)  ; Frc(value)
  %133 = call float @dx.op.unary.f32(i32 22, float %131)  ; Frc(value)
  %134 = fmul fast float %125, %26
  %135 = fmul fast float %132, %134
  %136 = fmul fast float %133, %134
  %137 = fadd fast float %135, %120
  %138 = fadd fast float %136, %121
  %139 = fadd fast float %133, %59
  %140 = fcmp fast une float %122, %120
  br i1 %140, label %141, label %153, !dx.controlflow.hints !19

; <label>:141                                     ; preds = %117
  %142 = fadd fast float %132, %59
  %143 = fcmp fast oge float %142, 1.000000e+00
  %144 = fcmp fast olt float %120, %122
  %145 = fcmp fast ole float %137, %122
  %146 = fsub fast float 8.000000e+00, %26
  %147 = fmul fast float %125, %146
  %148 = fadd fast float %147, %137
  %149 = fcmp fast oge float %148, %122
  %150 = select i1 %144, i1 %145, i1 %149
  %151 = or i1 %143, %150
  %152 = zext i1 %151 to i32
  br label %153

; <label>:153                                     ; preds = %141, %117
  %154 = phi i32 [ %152, %141 ], [ 0, %117 ]
  %155 = fcmp fast une float %123, %121
  br i1 %155, label %156, label %169, !dx.controlflow.hints !20

; <label>:156                                     ; preds = %153
  %157 = icmp ne i32 %154, 0
  %158 = fcmp fast oge float %139, 1.000000e+00
  %159 = or i1 %158, %157
  %160 = fcmp fast olt float %121, %123
  %161 = fcmp fast ole float %138, %123
  %162 = fsub fast float 8.000000e+00, %26
  %163 = fmul fast float %125, %162
  %164 = fadd fast float %163, %138
  %165 = fcmp fast oge float %164, %123
  %166 = select i1 %160, i1 %161, i1 %165
  %167 = or i1 %166, %159
  %168 = zext i1 %167 to i32
  br label %169

; <label>:169                                     ; preds = %156, %153
  %170 = phi i32 [ %168, %156 ], [ %154, %153 ]
  %171 = icmp ne i32 %170, 0
  %172 = fmul fast float %134, 5.000000e-01
  %173 = fsub fast float %137, %172
  %174 = fsub fast float %138, %172
  %175 = fcmp fast ole float %173, %93
  %176 = fcmp fast ole float %174, %94
  %177 = and i1 %175, %176
  %178 = fmul fast float %125, 8.000000e+00
  %179 = fsub fast float %178, %172
  %180 = fadd fast float %179, %137
  %181 = fadd fast float %179, %138
  %182 = fcmp fast oge float %180, %95
  %183 = fcmp fast oge float %181, %96
  %184 = and i1 %182, %183
  %185 = and i1 %177, %184
  %186 = or i1 %171, %185
  %187 = and i32 %115, -497
  %188 = select i1 %186, i32 1, i32 %114
  %189 = select i1 %186, i32 %187, i32 %115
  %190 = sub i32 %15, %14
  %191 = icmp ult i32 %190, 2
  br i1 %191, label %339, label %192, !dx.controlflow.hints !21

; <label>:192                                     ; preds = %169
  %193 = shl i32 %35, 2
  %194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 322)  ; CBufferLoadLegacy(handle,regIndex)
  %195 = extractvalue %dx.types.CBufRet.f32 %194, 0
  %196 = extractvalue %dx.types.CBufRet.f32 %194, 1
  %197 = extractvalue %dx.types.CBufRet.f32 %194, 2
  %198 = extractvalue %dx.types.CBufRet.f32 %194, 3
  %199 = uitofp i32 %193 to float
  %200 = fmul fast float %199, %20
  %201 = fmul fast float %27, 2.500000e-01
  %202 = fmul fast float %201, %39
  %203 = fmul fast float %195, %202
  %204 = fmul fast float %196, %202
  %205 = fsub fast float %32, %203
  %206 = fsub fast float %33, %204
  %207 = call float @dx.op.unary.f32(i32 22, float %205)  ; Frc(value)
  %208 = call float @dx.op.unary.f32(i32 22, float %206)  ; Frc(value)
  %209 = fmul fast float %200, %26
  %210 = fmul fast float %207, %209
  %211 = fmul fast float %208, %209
  %212 = fadd fast float %210, %195
  %213 = fadd fast float %211, %196
  %214 = fadd fast float %208, %59
  %215 = fcmp fast une float %197, %195
  br i1 %215, label %216, label %228, !dx.controlflow.hints !19

; <label>:216                                     ; preds = %192
  %217 = fadd fast float %207, %59
  %218 = fcmp fast oge float %217, 1.000000e+00
  %219 = fcmp fast olt float %195, %197
  %220 = fcmp fast ole float %212, %197
  %221 = fsub fast float 8.000000e+00, %26
  %222 = fmul fast float %200, %221
  %223 = fadd fast float %222, %212
  %224 = fcmp fast oge float %223, %197
  %225 = select i1 %219, i1 %220, i1 %224
  %226 = or i1 %218, %225
  %227 = zext i1 %226 to i32
  br label %228

; <label>:228                                     ; preds = %216, %192
  %229 = phi i32 [ %227, %216 ], [ 0, %192 ]
  %230 = fcmp fast une float %198, %196
  br i1 %230, label %231, label %244, !dx.controlflow.hints !20

; <label>:231                                     ; preds = %228
  %232 = icmp ne i32 %229, 0
  %233 = fcmp fast oge float %214, 1.000000e+00
  %234 = or i1 %233, %232
  %235 = fcmp fast olt float %196, %198
  %236 = fcmp fast ole float %213, %198
  %237 = fsub fast float 8.000000e+00, %26
  %238 = fmul fast float %200, %237
  %239 = fadd fast float %238, %213
  %240 = fcmp fast oge float %239, %198
  %241 = select i1 %235, i1 %236, i1 %240
  %242 = or i1 %241, %234
  %243 = zext i1 %242 to i32
  br label %244

; <label>:244                                     ; preds = %231, %228
  %245 = phi i32 [ %243, %231 ], [ %229, %228 ]
  %246 = icmp ne i32 %245, 0
  %247 = fmul fast float %209, 5.000000e-01
  %248 = fsub fast float %212, %247
  %249 = fsub fast float %213, %247
  %250 = fcmp fast ole float %248, %93
  %251 = fcmp fast ole float %249, %94
  %252 = and i1 %250, %251
  %253 = fmul fast float %200, 8.000000e+00
  %254 = fsub fast float %253, %247
  %255 = fadd fast float %254, %212
  %256 = fadd fast float %254, %213
  %257 = fcmp fast oge float %255, %95
  %258 = fcmp fast oge float %256, %96
  %259 = and i1 %257, %258
  %260 = and i1 %252, %259
  %261 = or i1 %246, %260
  %262 = and i32 %189, -65025
  %263 = select i1 %261, i32 1, i32 %188
  %264 = select i1 %261, i32 %262, i32 %189
  %265 = icmp ult i32 %190, 3
  br i1 %265, label %339, label %266, !dx.controlflow.hints !21

; <label>:266                                     ; preds = %244
  %267 = shl i32 %35, 3
  %268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 323)  ; CBufferLoadLegacy(handle,regIndex)
  %269 = extractvalue %dx.types.CBufRet.f32 %268, 0
  %270 = extractvalue %dx.types.CBufRet.f32 %268, 1
  %271 = extractvalue %dx.types.CBufRet.f32 %268, 2
  %272 = extractvalue %dx.types.CBufRet.f32 %268, 3
  %273 = uitofp i32 %267 to float
  %274 = fmul fast float %273, %20
  %275 = fmul fast float %27, 1.250000e-01
  %276 = fmul fast float %275, %39
  %277 = fmul fast float %269, %276
  %278 = fmul fast float %270, %276
  %279 = fsub fast float %32, %277
  %280 = fsub fast float %33, %278
  %281 = call float @dx.op.unary.f32(i32 22, float %279)  ; Frc(value)
  %282 = call float @dx.op.unary.f32(i32 22, float %280)  ; Frc(value)
  %283 = fmul fast float %274, %26
  %284 = fmul fast float %281, %283
  %285 = fmul fast float %282, %283
  %286 = fadd fast float %284, %269
  %287 = fadd fast float %285, %270
  %288 = fadd fast float %282, %59
  %289 = fcmp fast une float %271, %269
  br i1 %289, label %290, label %302, !dx.controlflow.hints !19

; <label>:290                                     ; preds = %266
  %291 = fadd fast float %281, %59
  %292 = fcmp fast oge float %291, 1.000000e+00
  %293 = fcmp fast olt float %269, %271
  %294 = fcmp fast ole float %286, %271
  %295 = fsub fast float 8.000000e+00, %26
  %296 = fmul fast float %274, %295
  %297 = fadd fast float %296, %286
  %298 = fcmp fast oge float %297, %271
  %299 = select i1 %293, i1 %294, i1 %298
  %300 = or i1 %292, %299
  %301 = zext i1 %300 to i32
  br label %302

; <label>:302                                     ; preds = %290, %266
  %303 = phi i32 [ %301, %290 ], [ 0, %266 ]
  %304 = fcmp fast une float %272, %270
  br i1 %304, label %305, label %318, !dx.controlflow.hints !20

; <label>:305                                     ; preds = %302
  %306 = icmp ne i32 %303, 0
  %307 = fcmp fast oge float %288, 1.000000e+00
  %308 = or i1 %307, %306
  %309 = fcmp fast olt float %270, %272
  %310 = fcmp fast ole float %287, %272
  %311 = fsub fast float 8.000000e+00, %26
  %312 = fmul fast float %274, %311
  %313 = fadd fast float %312, %287
  %314 = fcmp fast oge float %313, %272
  %315 = select i1 %309, i1 %310, i1 %314
  %316 = or i1 %315, %308
  %317 = zext i1 %316 to i32
  br label %318

; <label>:318                                     ; preds = %305, %302
  %319 = phi i32 [ %317, %305 ], [ %303, %302 ]
  %320 = icmp ne i32 %319, 0
  %321 = fmul fast float %283, 5.000000e-01
  %322 = fsub fast float %286, %321
  %323 = fsub fast float %287, %321
  %324 = fcmp fast ole float %322, %93
  %325 = fcmp fast ole float %323, %94
  %326 = and i1 %324, %325
  %327 = fmul fast float %274, 8.000000e+00
  %328 = fsub fast float %327, %321
  %329 = fadd fast float %328, %286
  %330 = fadd fast float %328, %287
  %331 = fcmp fast oge float %329, %95
  %332 = fcmp fast oge float %330, %96
  %333 = and i1 %331, %332
  %334 = and i1 %326, %333
  %335 = or i1 %320, %334
  %336 = and i32 %264, -33488897
  %337 = select i1 %335, i32 1, i32 %263
  %338 = select i1 %335, i32 %336, i32 %264
  br label %339

; <label>:339                                     ; preds = %318, %244, %169, %90
  %340 = phi i32 [ %114, %90 ], [ %188, %169 ], [ %337, %318 ], [ %263, %244 ]
  %341 = phi i32 [ %115, %90 ], [ %189, %169 ], [ %338, %318 ], [ %264, %244 ]
  %342 = icmp ne i32 %340, 0
  %343 = zext i1 %342 to i32
  br i1 %342, label %344, label %345, !dx.controlflow.hints !22

; <label>:344                                     ; preds = %339
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %3, i32 %7, i32 %8, i32 undef, i32 %341, i32 %341, i32 %341, i32 %341, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %345

; <label>:345                                     ; preds = %344, %339
  %346 = phi i1 [ true, %344 ], [ false, %339 ]
  br i1 %346, label %423, label %347, !dx.controlflow.hints !23

; <label>:347                                     ; preds = %345
  %348 = and i32 %15, 31
  %349 = shl i32 1, %348
  %350 = sub i32 %15, %14
  %351 = icmp ult i32 %350, 3
  br i1 %351, label %366, label %352, !dx.controlflow.hints !24

; <label>:352                                     ; preds = %347
  %353 = lshr i32 %341, 16
  %354 = and i32 %353, 511
  %355 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %356 = extractvalue %dx.types.CBufRet.i32 %355, 1
  %357 = and i32 %356, 31
  %358 = lshr i32 %349, %357
  %359 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %358)  ; UMax(a,b)
  %360 = mul i32 %359, %359
  %361 = lshr i32 %360, 8
  %362 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %361)  ; UMax(a,b)
  %363 = mul i32 %362, %354
  %364 = icmp ult i32 %363, %360
  %365 = lshr i32 %349, 1
  br label %366

; <label>:366                                     ; preds = %352, %347
  %367 = phi i1 [ %364, %352 ], [ false, %347 ]
  %368 = phi i32 [ 1, %352 ], [ 0, %347 ]
  %369 = phi i32 [ %365, %352 ], [ %349, %347 ]
  br i1 %367, label %423, label %370

; <label>:370                                     ; preds = %366
  %371 = icmp ult i32 %350, 2
  br i1 %371, label %386, label %372, !dx.controlflow.hints !24

; <label>:372                                     ; preds = %370
  %373 = lshr i32 %341, 9
  %374 = and i32 %373, 127
  %375 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %376 = extractvalue %dx.types.CBufRet.i32 %375, 1
  %377 = and i32 %376, 31
  %378 = lshr i32 %369, %377
  %379 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %378)  ; UMax(a,b)
  %380 = mul i32 %379, %379
  %381 = lshr i32 %380, 6
  %382 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %381)  ; UMax(a,b)
  %383 = mul i32 %382, %374
  %384 = icmp ult i32 %383, %380
  %385 = lshr i32 %369, 1
  br label %386

; <label>:386                                     ; preds = %372, %370
  %387 = phi i1 [ %384, %372 ], [ false, %370 ]
  %388 = phi i32 [ 1, %372 ], [ 0, %370 ]
  %389 = phi i32 [ %385, %372 ], [ %369, %370 ]
  br i1 %387, label %423, label %390

; <label>:390                                     ; preds = %386
  br i1 %116, label %405, label %391, !dx.controlflow.hints !24

; <label>:391                                     ; preds = %390
  %392 = lshr i32 %341, 4
  %393 = and i32 %392, 31
  %394 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %395 = extractvalue %dx.types.CBufRet.i32 %394, 1
  %396 = and i32 %395, 31
  %397 = lshr i32 %389, %396
  %398 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %397)  ; UMax(a,b)
  %399 = mul i32 %398, %398
  %400 = lshr i32 %399, 4
  %401 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %400)  ; UMax(a,b)
  %402 = mul i32 %401, %393
  %403 = icmp ult i32 %402, %399
  %404 = lshr i32 %389, 1
  br label %405

; <label>:405                                     ; preds = %391, %390
  %406 = phi i1 [ %403, %391 ], [ false, %390 ]
  %407 = phi i32 [ 1, %391 ], [ 0, %390 ]
  %408 = phi i32 [ %404, %391 ], [ %389, %390 ]
  br i1 %406, label %423, label %409

; <label>:409                                     ; preds = %405
  %410 = lshr i32 %341, 1
  %411 = and i32 %410, 7
  %412 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %413 = extractvalue %dx.types.CBufRet.i32 %412, 1
  %414 = and i32 %413, 31
  %415 = lshr i32 %408, %414
  %416 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %415)  ; UMax(a,b)
  %417 = mul i32 %416, %416
  %418 = lshr i32 %417, 2
  %419 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %418)  ; UMax(a,b)
  %420 = mul i32 %419, %411
  %421 = icmp ult i32 %420, %417
  %422 = select i1 %421, i32 1, i32 %343
  br label %423

; <label>:423                                     ; preds = %409, %405, %386, %366, %345
  %424 = phi i32 [ %343, %345 ], [ %368, %366 ], [ %388, %386 ], [ %407, %405 ], [ %422, %409 ]
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %432, label %426, !dx.controlflow.hints !25

; <label>:426                                     ; preds = %423
  %427 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 undef, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %428 = and i32 %7, 65535
  %429 = shl i32 %8, 16
  %430 = or i32 %429, %428
  %431 = shl i32 %427, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %431, i32 undef, i32 %430, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %432

; <label>:432                                     ; preds = %426, %423, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #1

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
!dx.entryPoints = !{!15}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !7, !12, null}
!5 = !{!6}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!7 = !{!8, !10, !11}
!8 = !{i32 0, %"class.RWTexture2D<unsigned int>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !9}
!9 = !{i32 0, i32 5}
!10 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!11 = !{i32 2, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!12 = !{!13, !14}
!13 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!14 = !{i32 1, %MSMUpdateMomentsConstants* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!15 = !{void ()* @cs_update_msm_prepass, !"cs_update_msm_prepass", null, !4, !16}
!16 = !{i32 0, i64 272, i32 4, !17}
!17 = !{i32 8, i32 8, i32 1}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 1}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 1}

