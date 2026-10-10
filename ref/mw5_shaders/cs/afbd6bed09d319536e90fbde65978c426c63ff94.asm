;
; Note: shader requires additional functionality:
;       Typed UAV Load Additional Formats
;
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
; shader hash: 1210d410d89e18904c0d6506a968eaf0
;
; Pipeline Runtime Information: 
;
;
;
; Buffer Definitions:
;
; cbuffer cbFSR2
; {
;
;   struct cbFSR2
;   {
;
;       int2 uRenderSize;                             ; Offset:    0
;       int2 uDisplaySize;                            ; Offset:    8
;       int2 uLumaMipDimensions;                      ; Offset:   16
;       int uLumaMipLevelToUse;                       ; Offset:   24
;       uint uFrameIndex;                             ; Offset:   28
;       float2 fDisplaySizeRcp;                       ; Offset:   32
;       float2 fJitter;                               ; Offset:   40
;       float4 fDeviceToViewDepth;                    ; Offset:   48
;       float2 depthclip_uv_scale;                    ; Offset:   64
;       float2 postprocessed_lockstatus_uv_scale;     ; Offset:   72
;       float2 reactive_mask_dim_rcp;                 ; Offset:   80
;       float2 MotionVectorScale;                     ; Offset:   88
;       float2 fDownscaleFactor;                      ; Offset:   96
;       float fPreExposure;                           ; Offset:  104
;       float fTanHalfFOV;                            ; Offset:  108
;       float2 fMotionVectorJitterCancellation;       ; Offset:  112
;       float fJitterSequenceLength;                  ; Offset:  120
;       float fLockInitialLifetime;                   ; Offset:  124
;       float fLockTickDelta;                         ; Offset:  128
;       float fDeltaTime;                             ; Offset:  132
;       float fDynamicResChangeFactor;                ; Offset:  136
;       float fLumaMipRcp;                            ; Offset:  140
;   
;   } cbFSR2;                                         ; Offset:    0 Size:   144
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
; cbFSR2                            cbuffer      NA          NA     CB0            cb0     1
; r_input_color_jittered            texture     f32          2d      T0             t0     1
; r_exposure                        texture     f32          2d      T1             t1     1
; rw_reconstructed_previous_nearest_depth       UAV     u32          2d      U0             u0     1
; rw_prepared_input_color               UAV     f32          2d      U1             u1     1
; rw_luma_history                       UAVunorm_f32          2d      U2             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:8-i16:16-i32:32-i64:64-f16:16-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 2> >" = type { <2 x float>, %"class.Texture2D<vector<float, 2> >::mips_type" }
%"class.Texture2D<vector<float, 2> >::mips_type" = type { i32 }
%"class.RWTexture2D<unsigned int>" = type { i32 }
%"class.RWTexture2D<vector<float, 4> >" = type { <4 x float> }
%cbFSR2 = type { <2 x i32>, <2 x i32>, <2 x i32>, i32, i32, <2 x float>, <2 x float>, <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, float, float, <2 x float>, float, float, float, float, float, float }

define void @CS() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %8 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %9 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %7, i32 %8, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %10 = extractvalue %dx.types.ResRet.f32 %9, 0
  %11 = extractvalue %dx.types.ResRet.f32 %9, 1
  %12 = extractvalue %dx.types.ResRet.f32 %9, 2
  %13 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %14 = extractvalue %dx.types.CBufRet.f32 %13, 2
  %15 = fdiv fast float %10, %14
  %16 = fdiv fast float %11, %14
  %17 = fdiv fast float %12, %14
  %18 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %15)  ; FMax(a,b)
  %19 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %16)  ; FMax(a,b)
  %20 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %17)  ; FMax(a,b)
  %21 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %22 = extractvalue %dx.types.ResRet.f32 %21, 0
  %23 = fcmp fast oeq float %22, 0.000000e+00
  %24 = select i1 %23, float 1.000000e+00, float %22
  %25 = fmul fast float %24, %18
  %26 = fmul fast float %24, %19
  %27 = fmul fast float %24, %20
  %28 = call float @dx.op.binary.f32(i32 35, float %26, float %27)  ; FMax(a,b)
  %29 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %25)  ; FMax(a,b)
  %30 = call float @dx.op.binary.f32(i32 35, float %29, float %28)  ; FMax(a,b)
  %31 = fadd fast float %30, 1.000000e+00
  %32 = fdiv fast float %25, %31
  %33 = fdiv fast float %26, %31
  %34 = fdiv fast float %27, %31
  %35 = fmul fast float %33, 5.000000e-01
  %36 = fadd fast float %20, %18
  %37 = fmul fast float %24, %36
  %38 = fdiv fast float %37, %31
  %39 = fmul fast float %38, 2.500000e-01
  %40 = fadd fast float %39, %35
  %41 = fsub fast float %18, %20
  %42 = fmul fast float %24, %41
  %43 = fdiv fast float %42, %31
  %44 = fmul fast float %43, 5.000000e-01
  %45 = fmul fast float %32, 2.500000e-01
  %46 = fmul fast float %34, 2.500000e-01
  %47 = fadd fast float %44, 5.000000e-01
  %48 = fsub fast float 5.000000e-01, %45
  %49 = fadd fast float %48, %35
  %50 = fsub fast float %49, %46
  %51 = call float @dx.op.dot3.f32(i32 55, float %32, float %33, float %34, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %52 = fcmp fast ugt float %51, 0x3F822354E0000000
  br i1 %52, label %55, label %53

; <label>:53                                      ; preds = %0
  %54 = fmul fast float %51, 0x408C3A5EE0000000
  br label %61

; <label>:55                                      ; preds = %0
  %56 = call float @dx.op.unary.f32(i32 23, float %51)  ; Log(value)
  %57 = fmul fast float %56, 0x3FD5555560000000
  %58 = call float @dx.op.unary.f32(i32 21, float %57)  ; Exp(value)
  %59 = fmul fast float %58, 1.160000e+02
  %60 = fadd fast float %59, -1.600000e+01
  br label %61

; <label>:61                                      ; preds = %55, %53
  %62 = phi float [ %54, %53 ], [ %60, %55 ]
  %63 = fmul fast float %62, 0x3F847AE140000000
  %64 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 undef, i32 %7, i32 %8, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %65 = extractvalue %dx.types.ResRet.f32 %64, 0
  %66 = extractvalue %dx.types.ResRet.f32 %64, 1
  %67 = extractvalue %dx.types.ResRet.f32 %64, 2
  %68 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.i32 %68, 3
  %70 = icmp ugt i32 %69, 3
  br i1 %70, label %71, label %90

; <label>:71                                      ; preds = %61
  %72 = call float @dx.op.binary.f32(i32 35, float %67, float %63)  ; FMax(a,b)
  %73 = fcmp fast une float %72, 0.000000e+00
  %74 = call float @dx.op.binary.f32(i32 36, float %67, float %63)  ; FMin(a,b)
  %75 = fdiv fast float %74, %72
  %76 = select i1 %73, float %75, float 0.000000e+00
  %77 = call float @dx.op.binary.f32(i32 35, float %66, float %63)  ; FMax(a,b)
  %78 = fcmp fast une float %77, 0.000000e+00
  %79 = call float @dx.op.binary.f32(i32 36, float %66, float %63)  ; FMin(a,b)
  %80 = fdiv fast float %79, %77
  %81 = select i1 %78, float %80, float 0.000000e+00
  %82 = call float @dx.op.binary.f32(i32 35, float %65, float %63)  ; FMax(a,b)
  %83 = fcmp fast une float %82, 0.000000e+00
  %84 = call float @dx.op.binary.f32(i32 36, float %65, float %63)  ; FMin(a,b)
  %85 = fdiv fast float %84, %82
  %86 = select i1 %83, float %85, float 0.000000e+00
  %87 = call float @dx.op.binary.f32(i32 35, float %86, float %81)  ; FMax(a,b)
  %88 = fsub fast float %87, %76
  %89 = call float @dx.op.unary.f32(i32 7, float %88)  ; Saturate(value)
  br label %90

; <label>:90                                      ; preds = %71, %61
  %91 = phi float [ %89, %71 ], [ 0.000000e+00, %61 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %7, i32 %8, i32 undef, float %66, float %67, float %63, float %91, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %92 = call float @dx.op.unary.f32(i32 23, float %63)  ; Log(value)
  %93 = fmul fast float %92, 0x3FC5555560000000
  %94 = call float @dx.op.unary.f32(i32 21, float %93)  ; Exp(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %7, i32 %8, i32 undef, float %40, float %47, float %50, float %94, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %95 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %96 = extractvalue %dx.types.CBufRet.i32 %95, 0
  %97 = extractvalue %dx.types.CBufRet.i32 %95, 1
  %98 = icmp slt i32 %7, %96
  %99 = icmp slt i32 %8, %97
  %100 = and i1 %98, %99
  br i1 %100, label %101, label %102

; <label>:101                                     ; preds = %90
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %3, i32 %7, i32 %8, i32 undef, i32 0, i32 0, i32 0, i32 0, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %102

; <label>:102                                     ; preds = %101, %90
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

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
!1 = !{i32 1, i32 2}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 2}
!4 = !{!5, !9, !15, null}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!9 = !{!10, !12, !13}
!10 = !{i32 0, %"class.RWTexture2D<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !11}
!11 = !{i32 0, i32 5}
!12 = !{i32 1, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!13 = !{i32 2, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !14}
!14 = !{i32 0, i32 14}
!15 = !{!16}
!16 = !{i32 0, %cbFSR2* undef, !"", i32 0, i32 0, i32 1, i32 144, null}
!17 = !{void ()* @CS, !"CS", null, !4, !18}
!18 = !{i32 0, i64 8396800, i32 4, !19}
!19 = !{i32 8, i32 8, i32 1}

