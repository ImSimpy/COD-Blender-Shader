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
; shader hash: d9996fff02cadc3eb50326ed947358cd
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
; r_reconstructed_previous_nearest_depth   texture     u32          2d      T0             t0     1
; r_dilated_motion_vectors          texture     f32          2d      T1             t1     1
; r_dilatedDepth                    texture     f32          2d      T2             t2     1
; rw_depth_clip                         UAV     f32          2d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:8-i16:16-i32:32-i64:64-f16:16-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 2> >" = type { <2 x float>, %"class.Texture2D<vector<float, 2> >::mips_type" }
%"class.Texture2D<vector<float, 2> >::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.RWTexture2D<float>" = type { float }
%cbFSR2 = type { <2 x i32>, <2 x i32>, <2 x i32>, i32, i32, <2 x float>, <2 x float>, <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, float, float, <2 x float>, float, float, float, float, float, float }

define void @CS() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %7 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %8 = alloca [4 x float], align 4
  %9 = sitofp i32 %6 to float
  %10 = sitofp i32 %7 to float
  %11 = fadd fast float %9, 5.000000e-01
  %12 = fadd fast float %10, 5.000000e-01
  %13 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %14 = extractvalue %dx.types.CBufRet.i32 %13, 0
  %15 = extractvalue %dx.types.CBufRet.i32 %13, 1
  %16 = sitofp i32 %14 to float
  %17 = sitofp i32 %15 to float
  %18 = fdiv fast float %11, %16
  %19 = fdiv fast float %12, %17
  %20 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %6, i32 %7, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %21 = extractvalue %dx.types.ResRet.f32 %20, 0
  %22 = extractvalue %dx.types.ResRet.f32 %20, 1
  %23 = fadd fast float %21, %18
  %24 = fadd fast float %22, %19
  %25 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %6, i32 %7, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %26 = extractvalue %dx.types.ResRet.f32 %25, 0
  %27 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.f32 %27, 2
  %29 = fsub fast float -0.000000e+00, %28
  %30 = extractvalue %dx.types.CBufRet.f32 %27, 1
  %31 = fmul fast float %30, %26
  %32 = extractvalue %dx.types.CBufRet.f32 %27, 0
  %33 = fsub fast float %31, %32
  %34 = fdiv fast float %29, %33
  %35 = call float @dx.op.unary.f32(i32 6, float %34)  ; FAbs(value)
  %36 = fmul fast float %16, %23
  %37 = fmul fast float %17, %24
  %38 = fadd fast float %36, -5.000000e-01
  %39 = fadd fast float %37, -5.000000e-01
  %40 = call float @dx.op.unary.f32(i32 27, float %38)  ; Round_ni(value)
  %41 = call float @dx.op.unary.f32(i32 27, float %39)  ; Round_ni(value)
  %42 = fptosi float %40 to i32
  %43 = fptosi float %41 to i32
  %44 = fsub fast float %38, %40
  %45 = fsub fast float %39, %41
  %46 = getelementptr [4 x float], [4 x float]* %8, i32 0, i32 0
  %47 = fsub fast float 1.000000e+00, %44
  %48 = fsub fast float 1.000000e+00, %45
  %49 = fmul fast float %47, %48
  store float %49, float* %46, align 4, !tbaa !18
  %50 = getelementptr [4 x float], [4 x float]* %8, i32 0, i32 1
  %51 = fmul fast float %48, %44
  store float %51, float* %50, align 4, !tbaa !18
  %52 = getelementptr [4 x float], [4 x float]* %8, i32 0, i32 2
  %53 = fmul fast float %47, %45
  store float %53, float* %52, align 4, !tbaa !18
  %54 = getelementptr [4 x float], [4 x float]* %8, i32 0, i32 3
  %55 = fmul fast float %44, %45
  store float %55, float* %54, align 4, !tbaa !18
  br label %56

; <label>:56                                      ; preds = %119, %0
  %57 = phi float [ 0.000000e+00, %0 ], [ %115, %119 ]
  %58 = phi float [ 0.000000e+00, %0 ], [ %116, %119 ]
  %59 = phi i32 [ 0, %0 ], [ %120, %119 ]
  br label %60

; <label>:60                                      ; preds = %114, %56
  %61 = phi float [ %57, %56 ], [ %115, %114 ]
  %62 = phi float [ %58, %56 ], [ %116, %114 ]
  %63 = phi i32 [ 0, %56 ], [ %117, %114 ]
  %64 = add i32 %63, %42
  %65 = add i32 %59, %43
  %66 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.i32 %66, 0
  %68 = extractvalue %dx.types.CBufRet.i32 %66, 1
  %69 = or i32 %64, %65
  %70 = icmp sgt i32 %69, -1
  %71 = icmp slt i32 %64, %67
  %72 = icmp slt i32 %65, %68
  %73 = and i1 %71, %72
  %74 = and i1 %70, %73
  br i1 %74, label %75, label %114

; <label>:75                                      ; preds = %60
  %76 = mul i32 %59, 2
  %77 = add i32 %63, %76
  %78 = getelementptr [4 x float], [4 x float]* %8, i32 0, i32 %77
  %79 = load float, float* %78, align 4, !tbaa !18
  %80 = fcmp fast ogt float %79, 0x3FA99999A0000000
  br i1 %80, label %81, label %114

; <label>:81                                      ; preds = %75
  %82 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %4, i32 0, i32 %64, i32 %65, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %83 = extractvalue %dx.types.ResRet.i32 %82, 0
  %84 = bitcast i32 %83 to float
  %85 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %86 = extractvalue %dx.types.CBufRet.f32 %85, 2
  %87 = fsub fast float -0.000000e+00, %86
  %88 = extractvalue %dx.types.CBufRet.f32 %85, 1
  %89 = fmul fast float %88, %84
  %90 = extractvalue %dx.types.CBufRet.f32 %85, 0
  %91 = fsub fast float %89, %90
  %92 = fdiv fast float %87, %91
  %93 = call float @dx.op.unary.f32(i32 6, float %92)  ; FAbs(value)
  %94 = sitofp i32 %67 to float
  %95 = call float @dx.op.binary.f32(i32 36, float %35, float %93)  ; FMin(a,b)
  %96 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %97 = extractvalue %dx.types.CBufRet.f32 %96, 3
  %98 = fmul fast float %95, 0x3EDCBB21A0000000
  %99 = fmul fast float %98, %94
  %100 = fmul fast float %99, %97
  %101 = fsub fast float %35, %93
  %102 = fcmp fast ogt float %101, 0.000000e+00
  %103 = fdiv fast float %100, %101
  %104 = call float @dx.op.unary.f32(i32 7, float %103)  ; Saturate(value)
  %105 = select i1 %102, float %104, float 1.000000e+00
  %106 = fmul fast float %105, %79
  %107 = fmul fast float %101, %101
  %108 = call float @dx.op.unary.f32(i32 7, float %107)  ; Saturate(value)
  %109 = fmul fast float %108, 3.000000e+00
  %110 = fadd fast float %109, 1.000000e+00
  %111 = fmul fast float %106, %110
  %112 = fadd fast float %111, %61
  %113 = fadd fast float %79, %62
  br label %114

; <label>:114                                     ; preds = %81, %75, %60
  %115 = phi float [ %112, %81 ], [ %61, %75 ], [ %61, %60 ]
  %116 = phi float [ %113, %81 ], [ %62, %75 ], [ %62, %60 ]
  %117 = add nuw nsw i32 %63, 1
  %118 = icmp eq i32 %117, 2
  br i1 %118, label %119, label %60

; <label>:119                                     ; preds = %114
  %120 = add nuw nsw i32 %59, 1
  %121 = icmp eq i32 %120, 2
  br i1 %121, label %122, label %56

; <label>:122                                     ; preds = %119
  %123 = fcmp fast ogt float %116, 0.000000e+00
  %124 = fdiv fast float %115, %116
  %125 = select i1 %123, float %124, float 4.000000e+00
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %6, i32 %7, i32 undef, float %125, float %125, float %125, float %125, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!15}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 2}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 2}
!4 = !{!5, !11, !13, null}
!5 = !{!6, !8, !10}
!6 = !{i32 0, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 5}
!8 = !{i32 1, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !9}
!9 = !{i32 0, i32 9}
!10 = !{i32 2, %"class.Texture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !9}
!11 = !{!12}
!12 = !{i32 0, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !9}
!13 = !{!14}
!14 = !{i32 0, %cbFSR2* undef, !"", i32 0, i32 0, i32 1, i32 144, null}
!15 = !{void ()* @CS, !"CS", null, !4, !16}
!16 = !{i32 0, i64 8388608, i32 4, !17}
!17 = !{i32 8, i32 8, i32 1}
!18 = !{!19, !19, i64 0}
!19 = !{!"float", !20, i64 0}
!20 = !{!"omnipotent char", !21, i64 0}
!21 = !{!"Simple C/C++ TBAA"}

