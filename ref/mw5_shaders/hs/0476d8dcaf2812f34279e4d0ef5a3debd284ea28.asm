;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
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
; SV_TessFactor            0      w        0 QUADEDGE   float      w
; SV_TessFactor            1      w        1 QUADEDGE   float      w
; SV_TessFactor            2      w        2 QUADEDGE   float      w
; SV_TessFactor            3      w        3 QUADEDGE   float      w
; SV_InsideTessFactor      0      w        4  QUADINT   float      w
; SV_InsideTessFactor      1      w        5  QUADINT   float      w
;
; shader hash: 31df91aaf9439a002504aaf6c2307427
;
; Pipeline Runtime Information: 
;
; Hull Shader
; InputControlPointCount=4
; OutputControlPointCount=4
; Domain=quad
; OutputPrimitive=triangle_cw
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
; PCOutputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0 }
;   output 1 depends on inputs: { 1 }
;   output 2 depends on inputs: { 2 }
;   output 3 depends on inputs: { 3 }
; Inputs contributing to computation of PCOutputs:
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

define void @"\01?HSConstantFunc@@YA?AUHullConstOutput@@V?$InputPatch@UPackedPixelInput@@$03@@I@Z"() {
  call void @dx.op.storePatchConstant.f32(i32 106, i32 0, i32 0, i8 0, float 3.200000e+01)  ; StorePatchConstant(outputSigID,row,col,value)
  call void @dx.op.storePatchConstant.f32(i32 106, i32 0, i32 1, i8 0, float 3.200000e+01)  ; StorePatchConstant(outputSigID,row,col,value)
  call void @dx.op.storePatchConstant.f32(i32 106, i32 0, i32 2, i8 0, float 3.200000e+01)  ; StorePatchConstant(outputSigID,row,col,value)
  call void @dx.op.storePatchConstant.f32(i32 106, i32 0, i32 3, i8 0, float 3.200000e+01)  ; StorePatchConstant(outputSigID,row,col,value)
  call void @dx.op.storePatchConstant.f32(i32 106, i32 1, i32 0, i8 0, float 3.200000e+01)  ; StorePatchConstant(outputSigID,row,col,value)
  call void @dx.op.storePatchConstant.f32(i32 106, i32 1, i32 1, i8 0, float 3.200000e+01)  ; StorePatchConstant(outputSigID,row,col,value)
  ret void
}

define void @hs_main() {
  %1 = call i32 @dx.op.outputControlPointID.i32(i32 107)  ; OutputControlPointID()
  %2 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 %1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %3 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 %1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %4 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 %1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %5 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 %1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %2)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %4)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %5)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.outputControlPointID.i32(i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind
declare void @dx.op.storePatchConstant.f32(i32, i32, i32, i8, float) #1

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
!3 = !{!"hs", i32 6, i32 0}
!4 = !{[11 x i32] [i32 4, i32 4, i32 1, i32 2, i32 4, i32 8, i32 24, i32 0, i32 0, i32 0, i32 0]}
!5 = !{void ()* @hs_main, !"hs_main", !6, null, !17}
!6 = !{!7, !7, !11}
!7 = !{!8}
!8 = !{i32 0, !"SV_Position", i8 9, i8 3, !9, i8 4, i32 1, i8 4, i32 0, i8 0, !10}
!9 = !{i32 0}
!10 = !{i32 3, i32 15}
!11 = !{!12, !15}
!12 = !{i32 0, !"SV_TessFactor", i8 9, i8 25, !13, i8 0, i32 4, i8 1, i32 0, i8 3, !14}
!13 = !{i32 0, i32 1, i32 2, i32 3}
!14 = !{i32 3, i32 1}
!15 = !{i32 1, !"SV_InsideTessFactor", i8 9, i8 26, !16, i8 0, i32 2, i8 1, i32 4, i8 3, !14}
!16 = !{i32 0, i32 1}
!17 = !{i32 3, !18}
!18 = !{void ()* @"\01?HSConstantFunc@@YA?AUHullConstOutput@@V?$InputPatch@UPackedPixelInput@@$03@@I@Z", i32 4, i32 4, i32 3, i32 1, i32 3, float 6.400000e+01}

