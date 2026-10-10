;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float       
; NORMAL                   0   xyz         1     NONE   float   xyz 
; TRIID                    0   x           2     NONE    uint   x   
; SV_IsFrontFace           0    y          2    FFACE    uint    y  
; PACKED_TRI_DATA          0   xyzw        3     NONE    uint       
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   x           0   TARGET    uint   x   
; SV_Target                1   x           1   TARGET    uint   x   
;
; shader hash: e677710f1f611cab23ed35977f45bf33
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
; PACKED_TRI_DATA          0        nointerpolation       
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
; Number of inputs: 16, outputs: 5
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 8 }
;   output 4 depends on inputs: { 4, 5, 6, 9 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

define void @ps_main() {
  %1 = call i32 @dx.op.loadInput.i32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %2 = icmp ne i32 %1, 0
  %3 = call i32 @dx.op.loadInput.i32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %4 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %5 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %6 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %7 = select i1 %2, float 1.000000e+00, float -1.000000e+00
  %8 = call float @dx.op.dot3.f32(i32 55, float %4, float %5, float %6, float %4, float %5, float %6)  ; Dot3(ax,ay,az,bx,by,bz)
  %9 = bitcast float %8 to i32
  %10 = ashr i32 %9, 1
  %11 = sub nsw i32 1597250115, %10
  %12 = bitcast i32 %11 to float
  %13 = fmul fast float %7, %4
  %14 = fmul fast float %13, %12
  %15 = fmul fast float %5, %7
  %16 = fmul fast float %15, %12
  %17 = fmul fast float %6, %7
  %18 = fmul fast float %17, %12
  %19 = call float @dx.op.unary.f32(i32 6, float %14)  ; FAbs(value)
  %20 = call float @dx.op.unary.f32(i32 6, float %16)  ; FAbs(value)
  %21 = fadd fast float %20, %19
  %22 = call float @dx.op.unary.f32(i32 6, float %18)  ; FAbs(value)
  %23 = fadd fast float %21, %22
  %24 = fdiv fast float %14, %23
  %25 = fdiv fast float %16, %23
  %26 = fdiv fast float %18, %23
  %27 = fcmp fast oge float %26, 0.000000e+00
  %28 = call float @dx.op.unary.f32(i32 6, float %25)  ; FAbs(value)
  %29 = call float @dx.op.unary.f32(i32 6, float %24)  ; FAbs(value)
  %30 = fsub fast float 1.000000e+00, %28
  %31 = fsub fast float 1.000000e+00, %29
  %32 = fcmp fast oge float %24, 0.000000e+00
  %33 = select i1 %32, float 1.000000e+00, float -1.000000e+00
  %34 = fcmp fast oge float %25, 0.000000e+00
  %35 = select i1 %34, float 1.000000e+00, float -1.000000e+00
  %36 = fmul fast float %30, %33
  %37 = fmul fast float %31, %35
  %38 = select i1 %27, float %24, float %36
  %39 = select i1 %27, float %25, float %37
  %40 = fmul fast float %38, 1.275000e+02
  %41 = fmul fast float %39, 1.275000e+02
  %42 = fadd fast float %40, 1.275000e+02
  %43 = fadd fast float %41, 1.275000e+02
  %44 = call float @dx.op.unary.f32(i32 26, float %42)  ; Round_ne(value)
  %45 = call float @dx.op.unary.f32(i32 26, float %43)  ; Round_ne(value)
  %46 = fptoui float %44 to i32
  %47 = fptoui float %45 to i32
  %48 = shl i32 %47, 8
  %49 = or i32 %48, %46
  call void @dx.op.storeOutput.i32(i32 5, i32 0, i32 0, i8 0, i32 %3)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 1, i32 0, i8 0, i32 %49)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.i32(i32, i32, i32, i8, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

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
!4 = !{[18 x i32] [i32 16, i32 5, i32 0, i32 0, i32 0, i32 0, i32 16, i32 16, i32 16, i32 0, i32 1, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]}
!5 = !{void ()* @ps_main, !"ps_main", !6, null, null}
!6 = !{!7, !16, null}
!7 = !{!8, !10, !12, !14, !15}
!8 = !{i32 0, !"SV_Position", i8 9, i8 3, !9, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!9 = !{i32 0}
!10 = !{i32 1, !"NORMAL", i8 9, i8 0, !9, i8 2, i32 1, i8 3, i32 1, i8 0, !11}
!11 = !{i32 3, i32 7}
!12 = !{i32 2, !"TRIID", i8 5, i8 0, !9, i8 1, i32 1, i8 1, i32 2, i8 0, !13}
!13 = !{i32 3, i32 1}
!14 = !{i32 3, !"PACKED_TRI_DATA", i8 5, i8 0, !9, i8 1, i32 1, i8 4, i32 3, i8 0, null}
!15 = !{i32 4, !"SV_IsFrontFace", i8 5, i8 13, !9, i8 1, i32 1, i8 1, i32 2, i8 1, !13}
!16 = !{!17, !18}
!17 = !{i32 0, !"SV_Target", i8 5, i8 16, !9, i8 0, i32 1, i8 1, i32 0, i8 0, !13}
!18 = !{i32 1, !"SV_Target", i8 5, i8 16, !19, i8 0, i32 1, i8 1, i32 1, i8 0, !13}
!19 = !{i32 1}

