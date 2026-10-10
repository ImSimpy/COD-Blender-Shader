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
; shader hash: 76fb9f29283fdce8b0d9272e030310fb
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
  %4 = call float @dx.op.dot3.f32(i32 55, float %1, float %2, float %3, float %1, float %2, float %3)  ; Dot3(ax,ay,az,bx,by,bz)
  %5 = call float @dx.op.unary.f32(i32 25, float %4)  ; Rsqrt(value)
  %6 = fmul fast float %5, %1
  %7 = fmul fast float %5, %2
  %8 = fmul fast float %5, %3
  call void @dx.op.storeOutput.i32(i32 5, i32 0, i32 0, i8 0, i32 0)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 1, i32 0, i8 0, i32 0)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9 = call float @dx.op.unary.f32(i32 6, float %6)  ; FAbs(value)
  %10 = call float @dx.op.unary.f32(i32 6, float %7)  ; FAbs(value)
  %11 = fadd fast float %10, %9
  %12 = call float @dx.op.unary.f32(i32 6, float %8)  ; FAbs(value)
  %13 = fadd fast float %11, %12
  %14 = fdiv fast float %6, %13
  %15 = fdiv fast float %7, %13
  %16 = fdiv fast float %8, %13
  %17 = fcmp fast oge float %16, 0.000000e+00
  %18 = call float @dx.op.unary.f32(i32 6, float %15)  ; FAbs(value)
  %19 = call float @dx.op.unary.f32(i32 6, float %14)  ; FAbs(value)
  %20 = fsub fast float 1.000000e+00, %18
  %21 = fsub fast float 1.000000e+00, %19
  %22 = fcmp fast oge float %14, 0.000000e+00
  %23 = select i1 %22, float 1.000000e+00, float -1.000000e+00
  %24 = fcmp fast oge float %15, 0.000000e+00
  %25 = select i1 %24, float 1.000000e+00, float -1.000000e+00
  %26 = fmul fast float %20, %23
  %27 = fmul fast float %21, %25
  %28 = select i1 %17, float %14, float %26
  %29 = select i1 %17, float %15, float %27
  %30 = fmul fast float %28, 1.275000e+02
  %31 = fmul fast float %29, 1.275000e+02
  %32 = fadd fast float %30, 1.275000e+02
  %33 = fadd fast float %31, 1.275000e+02
  %34 = call float @dx.op.unary.f32(i32 26, float %32)  ; Round_ne(value)
  %35 = call float @dx.op.unary.f32(i32 26, float %33)  ; Round_ne(value)
  %36 = fptoui float %34 to i32
  %37 = fptoui float %35 to i32
  %38 = shl i32 %37, 8
  %39 = or i32 %38, %36
  call void @dx.op.storeOutput.i32(i32 5, i32 1, i32 0, i8 0, i32 %39)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 0, i32 0, i8 0, i32 0)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.i32(i32, i32, i32, i8, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

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
!5 = !{void ()* @ps_main, !"ps_main", !6, null, !17}
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
!17 = !{i32 0, i64 8}

