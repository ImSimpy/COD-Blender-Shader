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
; shader hash: a7e8a2b5495b6567f45e09fd1508459b
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
  %28 = fmul fast float %26, 5.000000e-01
  %29 = fadd fast float %20, %18
  %30 = fmul fast float %24, %29
  %31 = fmul fast float %30, 2.500000e-01
  %32 = fadd fast float %31, %28
  %33 = fsub fast float %18, %20
  %34 = fmul fast float %33, 5.000000e-01
  %35 = fmul fast float %34, %24
  %36 = fmul fast float %25, 2.500000e-01
  %37 = fmul fast float %27, 2.500000e-01
  %38 = fadd fast float %35, 5.000000e-01
  %39 = fsub fast float 5.000000e-01, %36
  %40 = fadd fast float %39, %28
  %41 = fsub fast float %40, %37
  %42 = call float @dx.op.dot3.f32(i32 55, float %25, float %26, float %27, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %43 = fcmp fast ugt float %42, 0x3F822354E0000000
  br i1 %43, label %46, label %44

; <label>:44                                      ; preds = %0
  %45 = fmul fast float %42, 0x408C3A5EE0000000
  br label %52

; <label>:46                                      ; preds = %0
  %47 = call float @dx.op.unary.f32(i32 23, float %42)  ; Log(value)
  %48 = fmul fast float %47, 0x3FD5555560000000
  %49 = call float @dx.op.unary.f32(i32 21, float %48)  ; Exp(value)
  %50 = fmul fast float %49, 1.160000e+02
  %51 = fadd fast float %50, -1.600000e+01
  br label %52

; <label>:52                                      ; preds = %46, %44
  %53 = phi float [ %45, %44 ], [ %51, %46 ]
  %54 = fmul fast float %53, 0x3F847AE140000000
  %55 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 undef, i32 %7, i32 %8, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %56 = extractvalue %dx.types.ResRet.f32 %55, 0
  %57 = extractvalue %dx.types.ResRet.f32 %55, 1
  %58 = extractvalue %dx.types.ResRet.f32 %55, 2
  %59 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.i32 %59, 3
  %61 = icmp ugt i32 %60, 3
  br i1 %61, label %62, label %81

; <label>:62                                      ; preds = %52
  %63 = call float @dx.op.binary.f32(i32 35, float %58, float %54)  ; FMax(a,b)
  %64 = fcmp fast une float %63, 0.000000e+00
  %65 = call float @dx.op.binary.f32(i32 36, float %58, float %54)  ; FMin(a,b)
  %66 = fdiv fast float %65, %63
  %67 = select i1 %64, float %66, float 0.000000e+00
  %68 = call float @dx.op.binary.f32(i32 35, float %57, float %54)  ; FMax(a,b)
  %69 = fcmp fast une float %68, 0.000000e+00
  %70 = call float @dx.op.binary.f32(i32 36, float %57, float %54)  ; FMin(a,b)
  %71 = fdiv fast float %70, %68
  %72 = select i1 %69, float %71, float 0.000000e+00
  %73 = call float @dx.op.binary.f32(i32 35, float %56, float %54)  ; FMax(a,b)
  %74 = fcmp fast une float %73, 0.000000e+00
  %75 = call float @dx.op.binary.f32(i32 36, float %56, float %54)  ; FMin(a,b)
  %76 = fdiv fast float %75, %73
  %77 = select i1 %74, float %76, float 0.000000e+00
  %78 = call float @dx.op.binary.f32(i32 35, float %77, float %72)  ; FMax(a,b)
  %79 = fsub fast float %78, %67
  %80 = call float @dx.op.unary.f32(i32 7, float %79)  ; Saturate(value)
  br label %81

; <label>:81                                      ; preds = %62, %52
  %82 = phi float [ %80, %62 ], [ 0.000000e+00, %52 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %7, i32 %8, i32 undef, float %57, float %58, float %54, float %82, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %83 = call float @dx.op.unary.f32(i32 23, float %54)  ; Log(value)
  %84 = fmul fast float %83, 0x3FC5555560000000
  %85 = call float @dx.op.unary.f32(i32 21, float %84)  ; Exp(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %7, i32 %8, i32 undef, float %32, float %38, float %41, float %85, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %86 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.i32 %86, 0
  %88 = extractvalue %dx.types.CBufRet.i32 %86, 1
  %89 = icmp slt i32 %7, %87
  %90 = icmp slt i32 %8, %88
  %91 = and i1 %89, %90
  br i1 %91, label %92, label %93

; <label>:92                                      ; preds = %81
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %3, i32 %7, i32 %8, i32 undef, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %93

; <label>:93                                      ; preds = %92, %81
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
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

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

