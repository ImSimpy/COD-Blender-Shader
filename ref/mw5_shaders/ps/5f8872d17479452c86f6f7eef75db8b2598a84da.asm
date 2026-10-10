;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float       
; NORMAL                   0   xyz         1     NONE   float   xyz 
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   x           0   TARGET    uint   x   
; SV_Target                1   x           1   TARGET    uint   x   
;
; shader hash: b026a3cb34027579890977fd268b8a5c
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
; Number of inputs: 7, outputs: 5
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 4 depends on inputs: { 4, 5, 6 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

define void @ps_main() {
  %1 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %2 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %3 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %4 = call float @dx.op.unary.f32(i32 6, float %1)  ; FAbs(value)
  %5 = call float @dx.op.unary.f32(i32 6, float %2)  ; FAbs(value)
  %6 = fadd fast float %5, %4
  %7 = call float @dx.op.unary.f32(i32 6, float %3)  ; FAbs(value)
  %8 = fadd fast float %6, %7
  %9 = fdiv fast float %1, %8
  %10 = fdiv fast float %2, %8
  %11 = fdiv fast float %3, %8
  %12 = fcmp fast oge float %11, 0.000000e+00
  %13 = call float @dx.op.unary.f32(i32 6, float %10)  ; FAbs(value)
  %14 = call float @dx.op.unary.f32(i32 6, float %9)  ; FAbs(value)
  %15 = fsub fast float 1.000000e+00, %13
  %16 = fsub fast float 1.000000e+00, %14
  %17 = fcmp fast oge float %9, 0.000000e+00
  %18 = select i1 %17, float 1.000000e+00, float -1.000000e+00
  %19 = fcmp fast oge float %10, 0.000000e+00
  %20 = select i1 %19, float 1.000000e+00, float -1.000000e+00
  %21 = fmul fast float %15, %18
  %22 = fmul fast float %16, %20
  %23 = select i1 %12, float %9, float %21
  %24 = select i1 %12, float %10, float %22
  %25 = fmul fast float %23, 1.275000e+02
  %26 = fmul fast float %24, 1.275000e+02
  %27 = fadd fast float %25, 1.275000e+02
  %28 = fadd fast float %26, 1.275000e+02
  %29 = call float @dx.op.unary.f32(i32 26, float %27)  ; Round_ne(value)
  %30 = call float @dx.op.unary.f32(i32 26, float %28)  ; Round_ne(value)
  %31 = fptoui float %29 to i32
  %32 = fptoui float %30 to i32
  %33 = shl i32 %32, 8
  %34 = or i32 %33, %31
  call void @dx.op.storeOutput.i32(i32 5, i32 0, i32 0, i8 0, i32 0)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 1, i32 0, i8 0, i32 %34)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

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
!4 = !{[9 x i32] [i32 7, i32 5, i32 0, i32 0, i32 0, i32 0, i32 16, i32 16, i32 16]}
!5 = !{void ()* @ps_main, !"ps_main", !6, null, null}
!6 = !{!7, !12, null}
!7 = !{!8, !10}
!8 = !{i32 0, !"SV_Position", i8 9, i8 3, !9, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!9 = !{i32 0}
!10 = !{i32 1, !"NORMAL", i8 9, i8 0, !9, i8 2, i32 1, i8 3, i32 1, i8 0, !11}
!11 = !{i32 3, i32 7}
!12 = !{!13, !15}
!13 = !{i32 0, !"SV_Target", i8 5, i8 16, !9, i8 0, i32 1, i8 1, i32 0, i8 0, !14}
!14 = !{i32 3, i32 1}
!15 = !{i32 1, !"SV_Target", i8 5, i8 16, !16, i8 0, i32 1, i8 1, i32 1, i8 0, !14}
!16 = !{i32 1}

