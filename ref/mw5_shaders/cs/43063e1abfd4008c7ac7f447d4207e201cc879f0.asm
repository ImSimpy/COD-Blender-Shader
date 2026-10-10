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
; shader hash: c7504a14378d4a4187a46cfbb2414a39
;
; Pipeline Runtime Information: 
;
;
;
; Buffer Definitions:
;
; cbuffer cbGenerateReactive
; {
;
;   struct cbGenerateReactive
;   {
;
;       float scale;                                  ; Offset:    0
;       float threshold;                              ; Offset:    4
;       float binaryValue;                            ; Offset:    8
;       uint flags;                                   ; Offset:   12
;   
;   } cbGenerateReactive;                             ; Offset:    0 Size:    16
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
; cbGenerateReactive                cbuffer      NA          NA     CB0            cb0     1
; r_input_color_pre_alpha           texture     f32          2d      T0             t0     1
; r_input_color_post_alpha          texture     f32          2d      T1             t1     1
; rw_output_reactive_mask               UAV     f32          2d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2D<float>" = type { float }
%cbGenerateReactive = type { float, float, float, i32 }

define void @CS() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %6 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %7 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %8 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %9 = shl i32 %5, 3
  %10 = shl i32 %6, 3
  %11 = add i32 %7, %9
  %12 = add i32 %8, %10
  %13 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %11, i32 %12, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %14 = extractvalue %dx.types.ResRet.f32 %13, 0
  %15 = extractvalue %dx.types.ResRet.f32 %13, 1
  %16 = extractvalue %dx.types.ResRet.f32 %13, 2
  %17 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %11, i32 %12, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %18 = extractvalue %dx.types.ResRet.f32 %17, 0
  %19 = extractvalue %dx.types.ResRet.f32 %17, 1
  %20 = extractvalue %dx.types.ResRet.f32 %17, 2
  %21 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %22 = extractvalue %dx.types.CBufRet.i32 %21, 3
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %40, label %25

; <label>:25                                      ; preds = %0
  %26 = call float @dx.op.binary.f32(i32 35, float %15, float %16)  ; FMax(a,b)
  %27 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %14)  ; FMax(a,b)
  %28 = call float @dx.op.binary.f32(i32 35, float %27, float %26)  ; FMax(a,b)
  %29 = fadd fast float %28, 1.000000e+00
  %30 = fdiv fast float %14, %29
  %31 = fdiv fast float %15, %29
  %32 = fdiv fast float %16, %29
  %33 = call float @dx.op.binary.f32(i32 35, float %19, float %20)  ; FMax(a,b)
  %34 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %18)  ; FMax(a,b)
  %35 = call float @dx.op.binary.f32(i32 35, float %34, float %33)  ; FMax(a,b)
  %36 = fadd fast float %35, 1.000000e+00
  %37 = fdiv fast float %18, %36
  %38 = fdiv fast float %19, %36
  %39 = fdiv fast float %20, %36
  br label %40

; <label>:40                                      ; preds = %25, %0
  %41 = phi float [ %30, %25 ], [ %14, %0 ]
  %42 = phi float [ %31, %25 ], [ %15, %0 ]
  %43 = phi float [ %32, %25 ], [ %16, %0 ]
  %44 = phi float [ %37, %25 ], [ %18, %0 ]
  %45 = phi float [ %38, %25 ], [ %19, %0 ]
  %46 = phi float [ %39, %25 ], [ %20, %0 ]
  %47 = and i32 %22, 2
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %64, label %49

; <label>:49                                      ; preds = %40
  %50 = call float @dx.op.binary.f32(i32 35, float %42, float %43)  ; FMax(a,b)
  %51 = call float @dx.op.binary.f32(i32 35, float %41, float %50)  ; FMax(a,b)
  %52 = fsub fast float 1.000000e+00, %51
  %53 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %52)  ; FMax(a,b)
  %54 = fdiv fast float %41, %53
  %55 = fdiv fast float %42, %53
  %56 = fdiv fast float %43, %53
  %57 = call float @dx.op.binary.f32(i32 35, float %45, float %46)  ; FMax(a,b)
  %58 = call float @dx.op.binary.f32(i32 35, float %44, float %57)  ; FMax(a,b)
  %59 = fsub fast float 1.000000e+00, %58
  %60 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %59)  ; FMax(a,b)
  %61 = fdiv fast float %44, %60
  %62 = fdiv fast float %45, %60
  %63 = fdiv fast float %46, %60
  br label %64

; <label>:64                                      ; preds = %49, %40
  %65 = phi float [ %54, %49 ], [ %41, %40 ]
  %66 = phi float [ %55, %49 ], [ %42, %40 ]
  %67 = phi float [ %56, %49 ], [ %43, %40 ]
  %68 = phi float [ %61, %49 ], [ %44, %40 ]
  %69 = phi float [ %62, %49 ], [ %45, %40 ]
  %70 = phi float [ %63, %49 ], [ %46, %40 ]
  %71 = fsub fast float %68, %65
  %72 = fsub fast float %69, %66
  %73 = fsub fast float %70, %67
  %74 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %75 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %76 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %77 = and i32 %22, 8
  %78 = icmp ne i32 %77, 0
  %79 = call float @dx.op.binary.f32(i32 35, float %75, float %76)  ; FMax(a,b)
  %80 = call float @dx.op.binary.f32(i32 35, float %74, float %79)  ; FMax(a,b)
  %81 = fmul fast float %74, %74
  %82 = fmul fast float %75, %75
  %83 = fadd fast float %82, %81
  %84 = fmul fast float %76, %76
  %85 = fadd fast float %83, %84
  %86 = call float @dx.op.unary.f32(i32 24, float %85)  ; Sqrt(value)
  %87 = select i1 %78, float %80, float %86
  %88 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.f32 %88, 0
  %90 = fmul fast float %89, %87
  %91 = and i32 %22, 4
  %92 = icmp ne i32 %91, 0
  %93 = extractvalue %dx.types.CBufRet.f32 %88, 1
  %94 = fcmp fast olt float %90, %93
  %95 = extractvalue %dx.types.CBufRet.f32 %88, 2
  %96 = select i1 %94, float 0.000000e+00, float %95
  %97 = select i1 %92, float %96, float %90
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %11, i32 %12, i32 undef, float %97, float %97, float %97, float %97, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

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
!dx.entryPoints = !{!13}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 2}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 2}
!4 = !{!5, !9, !11, null}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!9 = !{!10}
!10 = !{i32 0, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!11 = !{!12}
!12 = !{i32 0, %cbGenerateReactive* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!13 = !{void ()* @CS, !"CS", null, !4, !14}
!14 = !{i32 4, !15}
!15 = !{i32 8, i32 8, i32 1}

