;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float       
; NORMAL                   0   xyz         1     NONE   float   xyz 
; TRIID                    0   x           2     NONE    uint   x   
; MATERIAL_DATA_OFFSET     0    y          2     NONE    uint       
; TRANSIENT_INDEX          0     z         2     NONE    uint       
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   x           0   TARGET    uint   x   
; SV_Target                1   x           1   TARGET    uint   x   
;
; shader hash: ae61fbf0679aa9bd59cae0babd6a92a1
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
; TRIID                    0        nointerpolation       
; MATERIAL_DATA_OFFSET     0        nointerpolation       
; TRANSIENT_INDEX          0        nointerpolation       
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
; Number of inputs: 11, outputs: 5
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 8 }
;   output 4 depends on inputs: { 4, 5, 6 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

define void @ps_main() {
  %1 = call i32 @dx.op.loadInput.i32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %2 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %3 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %4 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %5 = call float @dx.op.unary.f32(i32 6, float %2)  ; FAbs(value)
  %6 = call float @dx.op.unary.f32(i32 6, float %3)  ; FAbs(value)
  %7 = fadd fast float %6, %5
  %8 = call float @dx.op.unary.f32(i32 6, float %4)  ; FAbs(value)
  %9 = fadd fast float %7, %8
  %10 = fdiv fast float %2, %9
  %11 = fdiv fast float %3, %9
  %12 = fdiv fast float %4, %9
  %13 = fcmp fast oge float %12, 0.000000e+00
  %14 = call float @dx.op.unary.f32(i32 6, float %11)  ; FAbs(value)
  %15 = call float @dx.op.unary.f32(i32 6, float %10)  ; FAbs(value)
  %16 = fsub fast float 1.000000e+00, %14
  %17 = fsub fast float 1.000000e+00, %15
  %18 = fcmp fast oge float %10, 0.000000e+00
  %19 = select i1 %18, float 1.000000e+00, float -1.000000e+00
  %20 = fcmp fast oge float %11, 0.000000e+00
  %21 = select i1 %20, float 1.000000e+00, float -1.000000e+00
  %22 = fmul fast float %16, %19
  %23 = fmul fast float %17, %21
  %24 = select i1 %13, float %10, float %22
  %25 = select i1 %13, float %11, float %23
  %26 = fmul fast float %24, 1.275000e+02
  %27 = fmul fast float %25, 1.275000e+02
  %28 = fadd fast float %26, 1.275000e+02
  %29 = fadd fast float %27, 1.275000e+02
  %30 = call float @dx.op.unary.f32(i32 26, float %28)  ; Round_ne(value)
  %31 = call float @dx.op.unary.f32(i32 26, float %29)  ; Round_ne(value)
  %32 = fptoui float %30 to i32
  %33 = fptoui float %31 to i32
  %34 = shl i32 %33, 8
  %35 = or i32 %34, %32
  call void @dx.op.storeOutput.i32(i32 5, i32 0, i32 0, i8 0, i32 %1)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 1, i32 0, i8 0, i32 %35)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!4 = !{[13 x i32] [i32 11, i32 5, i32 0, i32 0, i32 0, i32 0, i32 16, i32 16, i32 16, i32 0, i32 1, i32 0, i32 0]}
!5 = !{void ()* @ps_main, !"ps_main", !6, null, null}
!6 = !{!7, !16, null}
!7 = !{!8, !10, !12, !14, !15}
!8 = !{i32 0, !"SV_Position", i8 9, i8 3, !9, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!9 = !{i32 0}
!10 = !{i32 1, !"NORMAL", i8 9, i8 0, !9, i8 2, i32 1, i8 3, i32 1, i8 0, !11}
!11 = !{i32 3, i32 7}
!12 = !{i32 2, !"TRIID", i8 5, i8 0, !9, i8 1, i32 1, i8 1, i32 2, i8 0, !13}
!13 = !{i32 3, i32 1}
!14 = !{i32 3, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !9, i8 1, i32 1, i8 1, i32 2, i8 1, null}
!15 = !{i32 4, !"TRANSIENT_INDEX", i8 5, i8 0, !9, i8 1, i32 1, i8 1, i32 2, i8 2, null}
!16 = !{!17, !18}
!17 = !{i32 0, !"SV_Target", i8 5, i8 16, !9, i8 0, i32 1, i8 1, i32 0, i8 0, !13}
!18 = !{i32 1, !"SV_Target", i8 5, i8 16, !19, i8 0, i32 1, i8 1, i32 1, i8 0, !13}
!19 = !{i32 1}

