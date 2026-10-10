;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float       
; NORMAL                   0   xyz         1     NONE   float   xyz 
; FOAMMASK                 0      w        1     NONE   float       
; TEXCOORD                 0   xy          2     NONE   float       
; WATER_SUBTILE_ID         0   x           3     NONE    uint       
; SV_IsFrontFace           0    y          3    FFACE    uint    y  
; SV_ClipDistance          0   x           4  CLIPDST   float       
; SV_ClipDistance          1    y          4  CLIPDST   float       
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   x           0   TARGET    uint   x   
; SV_Target                1   x           1   TARGET    uint   x   
;
; shader hash: 8245016bf5a7fd88865699cc5f144981
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
; TEXCOORD                 0                 linear       
; FOAMMASK                 0                 linear       
; WATER_SUBTILE_ID         0        nointerpolation       
; SV_IsFrontFace           0        nointerpolation       
; SV_ClipDistance          0                 linear       
; SV_ClipDistance          1                 linear       
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
; Number of inputs: 18, outputs: 5
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 4 depends on inputs: { 4, 5, 6, 13 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

define void @ps_main() {
  %1 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %2 = icmp ne i32 %1, 0
  %3 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %4 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %5 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %6 = call float @dx.op.dot3.f32(i32 55, float %3, float %4, float %5, float %3, float %4, float %5)  ; Dot3(ax,ay,az,bx,by,bz)
  %7 = call float @dx.op.unary.f32(i32 25, float %6)  ; Rsqrt(value)
  %8 = select i1 %2, float 1.000000e+00, float -1.000000e+00
  %9 = fmul fast float %3, %8
  %10 = fmul fast float %9, %7
  %11 = fmul fast float %4, %8
  %12 = fmul fast float %11, %7
  %13 = fmul fast float %5, %8
  %14 = fmul fast float %13, %7
  call void @dx.op.storeOutput.i32(i32 5, i32 0, i32 0, i8 0, i32 0)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 1, i32 0, i8 0, i32 0)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %15 = call float @dx.op.unary.f32(i32 6, float %10)  ; FAbs(value)
  %16 = call float @dx.op.unary.f32(i32 6, float %12)  ; FAbs(value)
  %17 = fadd fast float %16, %15
  %18 = call float @dx.op.unary.f32(i32 6, float %14)  ; FAbs(value)
  %19 = fadd fast float %17, %18
  %20 = fdiv fast float %10, %19
  %21 = fdiv fast float %12, %19
  %22 = fdiv fast float %14, %19
  %23 = fcmp fast oge float %22, 0.000000e+00
  %24 = call float @dx.op.unary.f32(i32 6, float %21)  ; FAbs(value)
  %25 = call float @dx.op.unary.f32(i32 6, float %20)  ; FAbs(value)
  %26 = fsub fast float 1.000000e+00, %24
  %27 = fsub fast float 1.000000e+00, %25
  %28 = fcmp fast oge float %20, 0.000000e+00
  %29 = select i1 %28, float 1.000000e+00, float -1.000000e+00
  %30 = fcmp fast oge float %21, 0.000000e+00
  %31 = select i1 %30, float 1.000000e+00, float -1.000000e+00
  %32 = fmul fast float %26, %29
  %33 = fmul fast float %27, %31
  %34 = select i1 %23, float %20, float %32
  %35 = select i1 %23, float %21, float %33
  %36 = fmul fast float %34, 1.275000e+02
  %37 = fmul fast float %35, 1.275000e+02
  %38 = fadd fast float %36, 1.275000e+02
  %39 = fadd fast float %37, 1.275000e+02
  %40 = call float @dx.op.unary.f32(i32 26, float %38)  ; Round_ne(value)
  %41 = call float @dx.op.unary.f32(i32 26, float %39)  ; Round_ne(value)
  %42 = fptoui float %40 to i32
  %43 = fptoui float %41 to i32
  %44 = shl i32 %43, 8
  %45 = or i32 %44, %42
  call void @dx.op.storeOutput.i32(i32 5, i32 1, i32 0, i8 0, i32 %45)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 0, i32 0, i8 0, i32 0)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!4 = !{[20 x i32] [i32 18, i32 5, i32 0, i32 0, i32 0, i32 0, i32 16, i32 16, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 0, i32 0, i32 0, i32 0]}
!5 = !{void ()* @ps_main, !"ps_main", !6, null, !23}
!6 = !{!7, !20, null}
!7 = !{!8, !10, !12, !13, !14, !15, !17, !18}
!8 = !{i32 0, !"SV_Position", i8 9, i8 3, !9, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!9 = !{i32 0}
!10 = !{i32 1, !"NORMAL", i8 9, i8 0, !9, i8 2, i32 1, i8 3, i32 1, i8 0, !11}
!11 = !{i32 3, i32 7}
!12 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !9, i8 2, i32 1, i8 2, i32 2, i8 0, null}
!13 = !{i32 3, !"FOAMMASK", i8 9, i8 0, !9, i8 2, i32 1, i8 1, i32 1, i8 3, null}
!14 = !{i32 4, !"WATER_SUBTILE_ID", i8 5, i8 0, !9, i8 1, i32 1, i8 1, i32 3, i8 0, null}
!15 = !{i32 5, !"SV_IsFrontFace", i8 5, i8 13, !9, i8 1, i32 1, i8 1, i32 3, i8 1, !16}
!16 = !{i32 3, i32 1}
!17 = !{i32 6, !"SV_ClipDistance", i8 9, i8 6, !9, i8 2, i32 1, i8 1, i32 4, i8 0, null}
!18 = !{i32 7, !"SV_ClipDistance", i8 9, i8 6, !19, i8 2, i32 1, i8 1, i32 4, i8 1, null}
!19 = !{i32 1}
!20 = !{!21, !22}
!21 = !{i32 0, !"SV_Target", i8 5, i8 16, !9, i8 0, i32 1, i8 1, i32 0, i8 0, !16}
!22 = !{i32 1, !"SV_Target", i8 5, i8 16, !19, i8 0, i32 1, i8 1, i32 1, i8 0, !16}
!23 = !{i32 0, i64 8}

