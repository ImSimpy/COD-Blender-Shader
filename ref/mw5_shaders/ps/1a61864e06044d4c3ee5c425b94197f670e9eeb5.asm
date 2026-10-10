;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float       
; NORMAL                   0   xyz         1     NONE   float   xyz 
; SV_IsFrontFace           0   x           2    FFACE    uint   x   
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   x           0   TARGET    uint   x   
; SV_Target                1   x           1   TARGET    uint   x   
;
; shader hash: af6a80e648259daddd807eb254ff5509
;
; Pipeline Runtime Information: 
;
; Pixel Shader
; DepthOutput=0
; SampleFrequency=0
;
;
; Input signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Position              0          noperspective       
; NORMAL                   0                 linear       
; SV_IsFrontFace           0        nointerpolation       
;
; Output signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Target                0                              
; SV_Target                1                              
;
; Buffer Definitions:
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;
;
; ViewId state:
;
; Number of inputs: 9, outputs: 5
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 4 depends on inputs: { 4, 5, 6, 8 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

define void @ps_main() {
  %1 = call i32 @dx.op.loadInput.i32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %2 = icmp ne i32 %1, 0
  %3 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %4 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %5 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %6 = select i1 %2, float 1.000000e+00, float -1.000000e+00
  %7 = fmul fast float %6, %3
  %8 = fmul fast float %6, %4
  %9 = fmul fast float %5, %6
  %10 = call float @dx.op.unary.f32(i32 6, float %7)  ; FAbs(value)
  %11 = call float @dx.op.unary.f32(i32 6, float %8)  ; FAbs(value)
  %12 = fadd fast float %11, %10
  %13 = call float @dx.op.unary.f32(i32 6, float %9)  ; FAbs(value)
  %14 = fadd fast float %12, %13
  %15 = fdiv fast float %7, %14
  %16 = fdiv fast float %8, %14
  %17 = fdiv fast float %9, %14
  %18 = fcmp fast oge float %17, 0.000000e+00
  %19 = call float @dx.op.unary.f32(i32 6, float %16)  ; FAbs(value)
  %20 = call float @dx.op.unary.f32(i32 6, float %15)  ; FAbs(value)
  %21 = fsub fast float 1.000000e+00, %19
  %22 = fsub fast float 1.000000e+00, %20
  %23 = fcmp fast oge float %15, 0.000000e+00
  %24 = select i1 %23, float 1.000000e+00, float -1.000000e+00
  %25 = fcmp fast oge float %16, 0.000000e+00
  %26 = select i1 %25, float 1.000000e+00, float -1.000000e+00
  %27 = fmul fast float %21, %24
  %28 = fmul fast float %22, %26
  %29 = select i1 %18, float %15, float %27
  %30 = select i1 %18, float %16, float %28
  %31 = fmul fast float %29, 1.275000e+02
  %32 = fmul fast float %30, 1.275000e+02
  %33 = fadd fast float %31, 1.275000e+02
  %34 = fadd fast float %32, 1.275000e+02
  %35 = call float @dx.op.unary.f32(i32 26, float %33)  ; Round_ne(value)
  %36 = call float @dx.op.unary.f32(i32 26, float %34)  ; Round_ne(value)
  %37 = fptoui float %35 to i32
  %38 = fptoui float %36 to i32
  %39 = shl i32 %38, 8
  %40 = or i32 %39, %37
  call void @dx.op.storeOutput.i32(i32 5, i32 0, i32 0, i8 0, i32 0)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 1, i32 0, i8 0, i32 %40)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.i32(i32, i32, i32, i8, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.viewIdState = !{!4}
!dx.entryPoints = !{!5}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{[11 x i32] [i32 9, i32 5, i32 0, i32 0, i32 0, i32 0, i32 16, i32 16, i32 16, i32 0, i32 16]}
!5 = !{void ()* @ps_main, !"ps_main", !6, null, null}
!6 = !{!7, !14, null}
!7 = !{!8, !10, !12}
!8 = !{i32 0, !"SV_Position", i8 9, i8 3, !9, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!9 = !{i32 0}
!10 = !{i32 1, !"NORMAL", i8 9, i8 0, !9, i8 2, i32 1, i8 3, i32 1, i8 0, !11}
!11 = !{i32 3, i32 7}
!12 = !{i32 2, !"SV_IsFrontFace", i8 5, i8 13, !9, i8 1, i32 1, i8 1, i32 2, i8 0, !13}
!13 = !{i32 3, i32 1}
!14 = !{!15, !16}
!15 = !{i32 0, !"SV_Target", i8 5, i8 16, !9, i8 0, i32 1, i8 1, i32 0, i8 0, !13}
!16 = !{i32 1, !"SV_Target", i8 5, i8 16, !17, i8 0, i32 1, i8 1, i32 1, i8 0, !13}
!17 = !{i32 1}

