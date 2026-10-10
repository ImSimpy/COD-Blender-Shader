;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyz 
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
;
;
; Patch Constant signature signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_TessFactor            0      w        0 QUADEDGE   float   xyzw
; SV_TessFactor            1      w        1 QUADEDGE   float   xyzw
; SV_TessFactor            2      w        2 QUADEDGE   float   xyzw
; SV_TessFactor            3      w        3 QUADEDGE   float   xyzw
; SV_InsideTessFactor      0      w        4  QUADINT   float   xyzw
; SV_InsideTessFactor      1      w        5  QUADINT   float   xyzw
;
; shader hash: 95a71269ea8439568c469fd75c0e7eb0
;
; Pipeline Runtime Information: 
;
; Domain Shader
; InputControlPointCount=4
; OutputPositionPresent=1
;
;
; Input signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Position              0          noperspective       
;
; Output signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Position              0          noperspective       
;
; Patch Constant signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_TessFactor            0                              
; SV_InsideTessFactor      0                              
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
; Number of inputs: 4, outputs: 4, patchconst: 24
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0 }
;   output 1 depends on inputs: { 1 }
;   output 2 depends on inputs: { 2 }
; PCInputs contributing to computation of Outputs:
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

define void @ds_main() {
  %1 = call float @dx.op.domainLocation.f32(i32 105, i8 0)  ; DomainLocation(component)
  %2 = call float @dx.op.domainLocation.f32(i32 105, i8 1)  ; DomainLocation(component)
  %3 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %4 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %5 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %6 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %7 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %8 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = fsub fast float %3, %6
  %10 = fsub fast float %4, %7
  %11 = fsub fast float %5, %8
  %12 = fmul fast float %9, %1
  %13 = fmul fast float %10, %1
  %14 = fmul fast float %11, %1
  %15 = fadd fast float %12, %6
  %16 = fadd fast float %13, %7
  %17 = fadd fast float %14, %8
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 3)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 3)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 3)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = fsub fast float %18, %21
  %25 = fsub fast float %19, %22
  %26 = fsub fast float %20, %23
  %27 = fmul fast float %24, %1
  %28 = fmul fast float %25, %1
  %29 = fmul fast float %26, %1
  %30 = fsub fast float %21, %15
  %31 = fadd fast float %30, %27
  %32 = fsub fast float %22, %16
  %33 = fadd fast float %32, %28
  %34 = fsub fast float %23, %17
  %35 = fadd fast float %34, %29
  %36 = fmul fast float %31, %2
  %37 = fmul fast float %33, %2
  %38 = fmul fast float %35, %2
  %39 = fadd fast float %36, %15
  %40 = fadd fast float %37, %16
  %41 = fadd fast float %38, %17
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %39)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %40)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %41)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.domainLocation.f32(i32, i8) #0

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.viewIdState = !{!4}
!dx.entryPoints = !{!5}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"ds", i32 6, i32 0}
!4 = !{[31 x i32] [i32 4, i32 4, i32 1, i32 2, i32 4, i32 0, i32 24, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]}
!5 = !{void ()* @ds_main, !"ds_main", !6, null, !19}
!6 = !{!7, !11, !14}
!7 = !{!8}
!8 = !{i32 0, !"SV_Position", i8 9, i8 3, !9, i8 4, i32 1, i8 4, i32 0, i8 0, !10}
!9 = !{i32 0}
!10 = !{i32 3, i32 7}
!11 = !{!12}
!12 = !{i32 0, !"SV_Position", i8 9, i8 3, !9, i8 4, i32 1, i8 4, i32 0, i8 0, !13}
!13 = !{i32 3, i32 15}
!14 = !{!15, !17}
!15 = !{i32 0, !"SV_TessFactor", i8 9, i8 25, !16, i8 0, i32 4, i8 1, i32 0, i8 3, null}
!16 = !{i32 0, i32 1, i32 2, i32 3}
!17 = !{i32 1, !"SV_InsideTessFactor", i8 9, i8 26, !18, i8 0, i32 2, i8 1, i32 4, i8 3, null}
!18 = !{i32 0, i32 1}
!19 = !{i32 2, !20}
!20 = !{i32 3, i32 4}

