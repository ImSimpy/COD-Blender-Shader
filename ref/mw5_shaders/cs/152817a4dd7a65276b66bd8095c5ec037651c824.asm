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
; shader hash: 7e0d84f40a2762cfd9f25af19b152dc1
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
;                                   texture     u32          2d      T1             t0     1
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
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
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
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %9 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %10 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %11 = extractvalue %dx.types.CBufRet.f32 %10, 3
  %12 = fcmp fast ogt float %11, 0.000000e+00
  br i1 %12, label %13, label %438, !dx.controlflow.hints !19

; <label>:13                                      ; preds = %0
  %14 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %15 = extractvalue %dx.types.CBufRet.i32 %14, 2
  %16 = extractvalue %dx.types.CBufRet.i32 %14, 3
  %17 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %4, i32 0, i32 %8, i32 %9, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %18 = extractvalue %dx.types.ResRet.i32 %17, 0
  %19 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 8, i32 undef)  ; BufferLoad(srv,index,wot)
  %20 = extractvalue %dx.types.ResRet.i32 %19, 0
  %21 = bitcast i32 %20 to float
  %22 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %23 = extractvalue %dx.types.ResRet.i32 %22, 0
  %24 = and i32 %23, 536870911
  %25 = uitofp i32 %24 to float
  %26 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %27 = extractvalue %dx.types.CBufRet.f32 %26, 0
  %28 = extractvalue %dx.types.CBufRet.f32 %26, 1
  %29 = shl i32 %8, 3
  %30 = shl i32 %9, 3
  %31 = uitofp i32 %29 to float
  %32 = uitofp i32 %30 to float
  %33 = fmul fast float %28, %31
  %34 = fmul fast float %28, %32
  %35 = and i32 %15, 31
  %36 = shl i32 1, %35
  %37 = uitofp i32 %15 to float
  %38 = fsub fast float -0.000000e+00, %37
  %39 = call float @dx.op.unary.f32(i32 21, float %38)  ; Exp(value)
  %40 = fmul fast float %39, %25
  %41 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 320)  ; CBufferLoadLegacy(handle,regIndex)
  %42 = extractvalue %dx.types.CBufRet.f32 %41, 0
  %43 = extractvalue %dx.types.CBufRet.f32 %41, 1
  %44 = extractvalue %dx.types.CBufRet.f32 %41, 2
  %45 = extractvalue %dx.types.CBufRet.f32 %41, 3
  %46 = uitofp i32 %36 to float
  %47 = fmul fast float %46, %21
  %48 = fmul fast float %40, %28
  %49 = fmul fast float %42, %48
  %50 = fmul fast float %43, %48
  %51 = fsub fast float %33, %49
  %52 = fsub fast float %34, %50
  %53 = call float @dx.op.unary.f32(i32 22, float %51)  ; Frc(value)
  %54 = call float @dx.op.unary.f32(i32 22, float %52)  ; Frc(value)
  %55 = fmul fast float %47, %27
  %56 = fmul fast float %55, %53
  %57 = fmul fast float %54, %55
  %58 = fadd fast float %56, %42
  %59 = fadd fast float %57, %43
  %60 = fmul fast float %28, 8.000000e+00
  %61 = fadd fast float %54, %60
  %62 = fcmp fast une float %44, %42
  br i1 %62, label %63, label %75, !dx.controlflow.hints !20

; <label>:63                                      ; preds = %13
  %64 = fadd fast float %53, %60
  %65 = fcmp fast oge float %64, 1.000000e+00
  %66 = fcmp fast olt float %42, %44
  %67 = fcmp fast ole float %58, %44
  %68 = fsub fast float 8.000000e+00, %27
  %69 = fmul fast float %47, %68
  %70 = fadd fast float %69, %58
  %71 = fcmp fast oge float %70, %44
  %72 = select i1 %66, i1 %67, i1 %71
  %73 = or i1 %65, %72
  %74 = zext i1 %73 to i32
  br label %75

; <label>:75                                      ; preds = %63, %13
  %76 = phi i32 [ %74, %63 ], [ 0, %13 ]
  %77 = fcmp fast une float %45, %43
  br i1 %77, label %78, label %91, !dx.controlflow.hints !21

; <label>:78                                      ; preds = %75
  %79 = icmp ne i32 %76, 0
  %80 = fcmp fast oge float %61, 1.000000e+00
  %81 = or i1 %80, %79
  %82 = fcmp fast olt float %43, %45
  %83 = fcmp fast ole float %59, %45
  %84 = fsub fast float 8.000000e+00, %27
  %85 = fmul fast float %47, %84
  %86 = fadd fast float %85, %59
  %87 = fcmp fast oge float %86, %45
  %88 = select i1 %82, i1 %83, i1 %87
  %89 = or i1 %88, %81
  %90 = zext i1 %89 to i32
  br label %91

; <label>:91                                      ; preds = %78, %75
  %92 = phi i32 [ %90, %78 ], [ %76, %75 ]
  %93 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %94 = extractvalue %dx.types.CBufRet.f32 %93, 2
  %95 = extractvalue %dx.types.CBufRet.f32 %93, 3
  %96 = extractvalue %dx.types.CBufRet.f32 %93, 0
  %97 = extractvalue %dx.types.CBufRet.f32 %93, 1
  %98 = icmp ne i32 %92, 0
  %99 = fmul fast float %55, 5.000000e-01
  %100 = fsub fast float %58, %99
  %101 = fsub fast float %59, %99
  %102 = fcmp fast ole float %100, %94
  %103 = fcmp fast ole float %101, %95
  %104 = and i1 %102, %103
  %105 = fmul fast float %47, 8.000000e+00
  %106 = fsub fast float %105, %99
  %107 = fadd fast float %106, %58
  %108 = fadd fast float %106, %59
  %109 = fcmp fast oge float %107, %96
  %110 = fcmp fast oge float %108, %97
  %111 = and i1 %109, %110
  %112 = and i1 %104, %111
  %113 = or i1 %98, %112
  %114 = and i32 %18, -15
  %115 = zext i1 %113 to i32
  %116 = select i1 %113, i32 %114, i32 %18
  %117 = icmp eq i32 %16, %15
  br i1 %117, label %340, label %118, !dx.controlflow.hints !22

; <label>:118                                     ; preds = %91
  %119 = shl i32 %36, 1
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 321)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 0
  %122 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %123 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %124 = extractvalue %dx.types.CBufRet.f32 %120, 3
  %125 = uitofp i32 %119 to float
  %126 = fmul fast float %125, %21
  %127 = fmul fast float %28, 5.000000e-01
  %128 = fmul fast float %127, %40
  %129 = fmul fast float %121, %128
  %130 = fmul fast float %122, %128
  %131 = fsub fast float %33, %129
  %132 = fsub fast float %34, %130
  %133 = call float @dx.op.unary.f32(i32 22, float %131)  ; Frc(value)
  %134 = call float @dx.op.unary.f32(i32 22, float %132)  ; Frc(value)
  %135 = fmul fast float %126, %27
  %136 = fmul fast float %133, %135
  %137 = fmul fast float %134, %135
  %138 = fadd fast float %136, %121
  %139 = fadd fast float %137, %122
  %140 = fadd fast float %134, %60
  %141 = fcmp fast une float %123, %121
  br i1 %141, label %142, label %154, !dx.controlflow.hints !20

; <label>:142                                     ; preds = %118
  %143 = fadd fast float %133, %60
  %144 = fcmp fast oge float %143, 1.000000e+00
  %145 = fcmp fast olt float %121, %123
  %146 = fcmp fast ole float %138, %123
  %147 = fsub fast float 8.000000e+00, %27
  %148 = fmul fast float %126, %147
  %149 = fadd fast float %148, %138
  %150 = fcmp fast oge float %149, %123
  %151 = select i1 %145, i1 %146, i1 %150
  %152 = or i1 %144, %151
  %153 = zext i1 %152 to i32
  br label %154

; <label>:154                                     ; preds = %142, %118
  %155 = phi i32 [ %153, %142 ], [ 0, %118 ]
  %156 = fcmp fast une float %124, %122
  br i1 %156, label %157, label %170, !dx.controlflow.hints !21

; <label>:157                                     ; preds = %154
  %158 = icmp ne i32 %155, 0
  %159 = fcmp fast oge float %140, 1.000000e+00
  %160 = or i1 %159, %158
  %161 = fcmp fast olt float %122, %124
  %162 = fcmp fast ole float %139, %124
  %163 = fsub fast float 8.000000e+00, %27
  %164 = fmul fast float %126, %163
  %165 = fadd fast float %164, %139
  %166 = fcmp fast oge float %165, %124
  %167 = select i1 %161, i1 %162, i1 %166
  %168 = or i1 %167, %160
  %169 = zext i1 %168 to i32
  br label %170

; <label>:170                                     ; preds = %157, %154
  %171 = phi i32 [ %169, %157 ], [ %155, %154 ]
  %172 = icmp ne i32 %171, 0
  %173 = fmul fast float %135, 5.000000e-01
  %174 = fsub fast float %138, %173
  %175 = fsub fast float %139, %173
  %176 = fcmp fast ole float %174, %94
  %177 = fcmp fast ole float %175, %95
  %178 = and i1 %176, %177
  %179 = fmul fast float %126, 8.000000e+00
  %180 = fsub fast float %179, %173
  %181 = fadd fast float %180, %138
  %182 = fadd fast float %180, %139
  %183 = fcmp fast oge float %181, %96
  %184 = fcmp fast oge float %182, %97
  %185 = and i1 %183, %184
  %186 = and i1 %178, %185
  %187 = or i1 %172, %186
  %188 = and i32 %116, -497
  %189 = select i1 %187, i32 1, i32 %115
  %190 = select i1 %187, i32 %188, i32 %116
  %191 = sub i32 %16, %15
  %192 = icmp ult i32 %191, 2
  br i1 %192, label %340, label %193, !dx.controlflow.hints !22

; <label>:193                                     ; preds = %170
  %194 = shl i32 %36, 2
  %195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 322)  ; CBufferLoadLegacy(handle,regIndex)
  %196 = extractvalue %dx.types.CBufRet.f32 %195, 0
  %197 = extractvalue %dx.types.CBufRet.f32 %195, 1
  %198 = extractvalue %dx.types.CBufRet.f32 %195, 2
  %199 = extractvalue %dx.types.CBufRet.f32 %195, 3
  %200 = uitofp i32 %194 to float
  %201 = fmul fast float %200, %21
  %202 = fmul fast float %28, 2.500000e-01
  %203 = fmul fast float %202, %40
  %204 = fmul fast float %196, %203
  %205 = fmul fast float %197, %203
  %206 = fsub fast float %33, %204
  %207 = fsub fast float %34, %205
  %208 = call float @dx.op.unary.f32(i32 22, float %206)  ; Frc(value)
  %209 = call float @dx.op.unary.f32(i32 22, float %207)  ; Frc(value)
  %210 = fmul fast float %201, %27
  %211 = fmul fast float %208, %210
  %212 = fmul fast float %209, %210
  %213 = fadd fast float %211, %196
  %214 = fadd fast float %212, %197
  %215 = fadd fast float %209, %60
  %216 = fcmp fast une float %198, %196
  br i1 %216, label %217, label %229, !dx.controlflow.hints !20

; <label>:217                                     ; preds = %193
  %218 = fadd fast float %208, %60
  %219 = fcmp fast oge float %218, 1.000000e+00
  %220 = fcmp fast olt float %196, %198
  %221 = fcmp fast ole float %213, %198
  %222 = fsub fast float 8.000000e+00, %27
  %223 = fmul fast float %201, %222
  %224 = fadd fast float %223, %213
  %225 = fcmp fast oge float %224, %198
  %226 = select i1 %220, i1 %221, i1 %225
  %227 = or i1 %219, %226
  %228 = zext i1 %227 to i32
  br label %229

; <label>:229                                     ; preds = %217, %193
  %230 = phi i32 [ %228, %217 ], [ 0, %193 ]
  %231 = fcmp fast une float %199, %197
  br i1 %231, label %232, label %245, !dx.controlflow.hints !21

; <label>:232                                     ; preds = %229
  %233 = icmp ne i32 %230, 0
  %234 = fcmp fast oge float %215, 1.000000e+00
  %235 = or i1 %234, %233
  %236 = fcmp fast olt float %197, %199
  %237 = fcmp fast ole float %214, %199
  %238 = fsub fast float 8.000000e+00, %27
  %239 = fmul fast float %201, %238
  %240 = fadd fast float %239, %214
  %241 = fcmp fast oge float %240, %199
  %242 = select i1 %236, i1 %237, i1 %241
  %243 = or i1 %242, %235
  %244 = zext i1 %243 to i32
  br label %245

; <label>:245                                     ; preds = %232, %229
  %246 = phi i32 [ %244, %232 ], [ %230, %229 ]
  %247 = icmp ne i32 %246, 0
  %248 = fmul fast float %210, 5.000000e-01
  %249 = fsub fast float %213, %248
  %250 = fsub fast float %214, %248
  %251 = fcmp fast ole float %249, %94
  %252 = fcmp fast ole float %250, %95
  %253 = and i1 %251, %252
  %254 = fmul fast float %201, 8.000000e+00
  %255 = fsub fast float %254, %248
  %256 = fadd fast float %255, %213
  %257 = fadd fast float %255, %214
  %258 = fcmp fast oge float %256, %96
  %259 = fcmp fast oge float %257, %97
  %260 = and i1 %258, %259
  %261 = and i1 %253, %260
  %262 = or i1 %247, %261
  %263 = and i32 %190, -65025
  %264 = select i1 %262, i32 1, i32 %189
  %265 = select i1 %262, i32 %263, i32 %190
  %266 = icmp ult i32 %191, 3
  br i1 %266, label %340, label %267, !dx.controlflow.hints !22

; <label>:267                                     ; preds = %245
  %268 = shl i32 %36, 3
  %269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 323)  ; CBufferLoadLegacy(handle,regIndex)
  %270 = extractvalue %dx.types.CBufRet.f32 %269, 0
  %271 = extractvalue %dx.types.CBufRet.f32 %269, 1
  %272 = extractvalue %dx.types.CBufRet.f32 %269, 2
  %273 = extractvalue %dx.types.CBufRet.f32 %269, 3
  %274 = uitofp i32 %268 to float
  %275 = fmul fast float %274, %21
  %276 = fmul fast float %28, 1.250000e-01
  %277 = fmul fast float %276, %40
  %278 = fmul fast float %270, %277
  %279 = fmul fast float %271, %277
  %280 = fsub fast float %33, %278
  %281 = fsub fast float %34, %279
  %282 = call float @dx.op.unary.f32(i32 22, float %280)  ; Frc(value)
  %283 = call float @dx.op.unary.f32(i32 22, float %281)  ; Frc(value)
  %284 = fmul fast float %275, %27
  %285 = fmul fast float %282, %284
  %286 = fmul fast float %283, %284
  %287 = fadd fast float %285, %270
  %288 = fadd fast float %286, %271
  %289 = fadd fast float %283, %60
  %290 = fcmp fast une float %272, %270
  br i1 %290, label %291, label %303, !dx.controlflow.hints !20

; <label>:291                                     ; preds = %267
  %292 = fadd fast float %282, %60
  %293 = fcmp fast oge float %292, 1.000000e+00
  %294 = fcmp fast olt float %270, %272
  %295 = fcmp fast ole float %287, %272
  %296 = fsub fast float 8.000000e+00, %27
  %297 = fmul fast float %275, %296
  %298 = fadd fast float %297, %287
  %299 = fcmp fast oge float %298, %272
  %300 = select i1 %294, i1 %295, i1 %299
  %301 = or i1 %293, %300
  %302 = zext i1 %301 to i32
  br label %303

; <label>:303                                     ; preds = %291, %267
  %304 = phi i32 [ %302, %291 ], [ 0, %267 ]
  %305 = fcmp fast une float %273, %271
  br i1 %305, label %306, label %319, !dx.controlflow.hints !21

; <label>:306                                     ; preds = %303
  %307 = icmp ne i32 %304, 0
  %308 = fcmp fast oge float %289, 1.000000e+00
  %309 = or i1 %308, %307
  %310 = fcmp fast olt float %271, %273
  %311 = fcmp fast ole float %288, %273
  %312 = fsub fast float 8.000000e+00, %27
  %313 = fmul fast float %275, %312
  %314 = fadd fast float %313, %288
  %315 = fcmp fast oge float %314, %273
  %316 = select i1 %310, i1 %311, i1 %315
  %317 = or i1 %316, %309
  %318 = zext i1 %317 to i32
  br label %319

; <label>:319                                     ; preds = %306, %303
  %320 = phi i32 [ %318, %306 ], [ %304, %303 ]
  %321 = icmp ne i32 %320, 0
  %322 = fmul fast float %284, 5.000000e-01
  %323 = fsub fast float %287, %322
  %324 = fsub fast float %288, %322
  %325 = fcmp fast ole float %323, %94
  %326 = fcmp fast ole float %324, %95
  %327 = and i1 %325, %326
  %328 = fmul fast float %275, 8.000000e+00
  %329 = fsub fast float %328, %322
  %330 = fadd fast float %329, %287
  %331 = fadd fast float %329, %288
  %332 = fcmp fast oge float %330, %96
  %333 = fcmp fast oge float %331, %97
  %334 = and i1 %332, %333
  %335 = and i1 %327, %334
  %336 = or i1 %321, %335
  %337 = and i32 %265, -33488897
  %338 = select i1 %336, i32 1, i32 %264
  %339 = select i1 %336, i32 %337, i32 %265
  br label %340

; <label>:340                                     ; preds = %319, %245, %170, %91
  %341 = phi i32 [ %115, %91 ], [ %189, %170 ], [ %338, %319 ], [ %264, %245 ]
  %342 = phi i32 [ %116, %91 ], [ %190, %170 ], [ %339, %319 ], [ %265, %245 ]
  %343 = icmp eq i32 %341, 0
  br i1 %343, label %345, label %344, !dx.controlflow.hints !23

; <label>:344                                     ; preds = %340
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %3, i32 %8, i32 %9, i32 undef, i32 %342, i32 %342, i32 %342, i32 %342, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %350

; <label>:345                                     ; preds = %340
  %346 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %3, i32 undef, i32 %8, i32 %9, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %347 = extractvalue %dx.types.ResRet.i32 %346, 0
  %348 = icmp ne i32 %347, %342
  %349 = zext i1 %348 to i32
  br label %350

; <label>:350                                     ; preds = %345, %344
  %351 = phi i32 [ 1, %344 ], [ %349, %345 ]
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %429, !dx.controlflow.hints !24

; <label>:353                                     ; preds = %350
  %354 = and i32 %16, 31
  %355 = shl i32 1, %354
  %356 = sub i32 %16, %15
  %357 = icmp ult i32 %356, 3
  br i1 %357, label %372, label %358, !dx.controlflow.hints !25

; <label>:358                                     ; preds = %353
  %359 = lshr i32 %342, 16
  %360 = and i32 %359, 511
  %361 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %362 = extractvalue %dx.types.CBufRet.i32 %361, 1
  %363 = and i32 %362, 31
  %364 = lshr i32 %355, %363
  %365 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %364)  ; UMax(a,b)
  %366 = mul i32 %365, %365
  %367 = lshr i32 %366, 8
  %368 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %367)  ; UMax(a,b)
  %369 = mul i32 %368, %360
  %370 = icmp ult i32 %369, %366
  %371 = lshr i32 %355, 1
  br label %372

; <label>:372                                     ; preds = %358, %353
  %373 = phi i1 [ %370, %358 ], [ false, %353 ]
  %374 = phi i32 [ 1, %358 ], [ 0, %353 ]
  %375 = phi i32 [ %371, %358 ], [ %355, %353 ]
  br i1 %373, label %429, label %376

; <label>:376                                     ; preds = %372
  %377 = icmp ult i32 %356, 2
  br i1 %377, label %392, label %378, !dx.controlflow.hints !25

; <label>:378                                     ; preds = %376
  %379 = lshr i32 %342, 9
  %380 = and i32 %379, 127
  %381 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %382 = extractvalue %dx.types.CBufRet.i32 %381, 1
  %383 = and i32 %382, 31
  %384 = lshr i32 %375, %383
  %385 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %384)  ; UMax(a,b)
  %386 = mul i32 %385, %385
  %387 = lshr i32 %386, 6
  %388 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %387)  ; UMax(a,b)
  %389 = mul i32 %388, %380
  %390 = icmp ult i32 %389, %386
  %391 = lshr i32 %375, 1
  br label %392

; <label>:392                                     ; preds = %378, %376
  %393 = phi i1 [ %390, %378 ], [ false, %376 ]
  %394 = phi i32 [ 1, %378 ], [ 0, %376 ]
  %395 = phi i32 [ %391, %378 ], [ %375, %376 ]
  br i1 %393, label %429, label %396

; <label>:396                                     ; preds = %392
  br i1 %117, label %411, label %397, !dx.controlflow.hints !25

; <label>:397                                     ; preds = %396
  %398 = lshr i32 %342, 4
  %399 = and i32 %398, 31
  %400 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %401 = extractvalue %dx.types.CBufRet.i32 %400, 1
  %402 = and i32 %401, 31
  %403 = lshr i32 %395, %402
  %404 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %403)  ; UMax(a,b)
  %405 = mul i32 %404, %404
  %406 = lshr i32 %405, 4
  %407 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %406)  ; UMax(a,b)
  %408 = mul i32 %407, %399
  %409 = icmp ult i32 %408, %405
  %410 = lshr i32 %395, 1
  br label %411

; <label>:411                                     ; preds = %397, %396
  %412 = phi i1 [ %409, %397 ], [ false, %396 ]
  %413 = phi i32 [ 1, %397 ], [ 0, %396 ]
  %414 = phi i32 [ %410, %397 ], [ %395, %396 ]
  br i1 %412, label %429, label %415

; <label>:415                                     ; preds = %411
  %416 = lshr i32 %342, 1
  %417 = and i32 %416, 7
  %418 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %419 = extractvalue %dx.types.CBufRet.i32 %418, 1
  %420 = and i32 %419, 31
  %421 = lshr i32 %414, %420
  %422 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %421)  ; UMax(a,b)
  %423 = mul i32 %422, %422
  %424 = lshr i32 %423, 2
  %425 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %424)  ; UMax(a,b)
  %426 = mul i32 %425, %417
  %427 = icmp ult i32 %426, %423
  %428 = zext i1 %427 to i32
  br label %429

; <label>:429                                     ; preds = %415, %411, %392, %372, %350
  %430 = phi i32 [ %351, %350 ], [ %374, %372 ], [ %394, %392 ], [ %413, %411 ], [ %428, %415 ]
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %438, label %432, !dx.controlflow.hints !26

; <label>:432                                     ; preds = %429
  %433 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 undef, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %434 = and i32 %8, 65535
  %435 = shl i32 %9, 16
  %436 = or i32 %435, %434
  %437 = shl i32 %433, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %437, i32 undef, i32 %436, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %438

; <label>:438                                     ; preds = %432, %429, %0
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
!dx.entryPoints = !{!16}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !9, !13, null}
!5 = !{!6, !7}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !8}
!8 = !{i32 0, i32 5}
!9 = !{!10, !11, !12}
!10 = !{i32 0, %"class.RWTexture2D<unsigned int>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !8}
!11 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!12 = !{i32 2, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!13 = !{!14, !15}
!14 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!15 = !{i32 1, %MSMUpdateMomentsConstants* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!16 = !{void ()* @cs_update_msm_prepass, !"cs_update_msm_prepass", null, !4, !17}
!17 = !{i32 0, i64 272, i32 4, !18}
!18 = !{i32 8, i32 8, i32 1}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 1}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 1}

