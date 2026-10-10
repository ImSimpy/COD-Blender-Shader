;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float       
; INTERPOLANT_POSITION     0   xyzw        1     NONE   float       
; COLOR                    0   xyzw        2     NONE   float    y w
; TEXCOORD                 0   xy          3     NONE   float       
; TEXCOORD                 2   xyzw        4     NONE   float       
; TEXCOORD                 3   xyz         5     NONE   float       
; QUAD_POSITION            0   xyzw        6     NONE   float       
; COLOR                    3   xyz         7     NONE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 163a416779113cb2b8315508d7900e78
;
; Pipeline Runtime Information: 
;
; Pixel Shader
; DepthOutput=0
; SampleFrequency=1
;
;
; Input signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Position              0          noperspective       
; INTERPOLANT_POSITION     0                 linear       
; COLOR                    0                 linear       
; TEXCOORD                 0                 linear       
; TEXCOORD                 2        nointerpolation       
; TEXCOORD                 3                 linear       
; QUAD_POSITION            0        nointerpolation       
; COLOR                    3        nointerpolation       
; SV_SampleIndex           0        nointerpolation       
;
; Output signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Target                0                              
;
; Buffer Definitions:
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   texture    byte         r/o      T0             t0     1
;
;
; ViewId state:
;
; Number of inputs: 31, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %3 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %4 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %5 = mul i32 %2, 208
  %6 = add i32 %5, 188
  %7 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %6, i32 undef)  ; BufferLoad(srv,index,wot)
  %8 = extractvalue %dx.types.ResRet.i32 %7, 0
  %9 = and i32 %8, 16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11, !dx.controlflow.hints !29

; <label>:11                                      ; preds = %0
  %12 = fsub fast float %4, %3
  %13 = fsub fast float 1.000000e+00, %3
  %14 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %13)  ; FMax(a,b)
  %15 = fdiv fast float %12, %14
  %16 = call float @dx.op.unary.f32(i32 7, float %15)  ; Saturate(value)
  br label %17

; <label>:17                                      ; preds = %11, %0
  %18 = phi float [ %16, %11 ], [ %4, %0 ]
  %19 = fcmp fast ogt float %18, 0.000000e+00
  br i1 %19, label %21, label %20

; <label>:20                                      ; preds = %17
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %21

; <label>:21                                      ; preds = %20, %17
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float -0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float -0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float -0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float -0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind
declare void @dx.op.discard(i32, i1) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.viewIdState = !{!7}
!dx.entryPoints = !{!8}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, null, null}
!5 = !{!6}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{[33 x i32] [i32 31, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]}
!8 = !{void ()* @ps_main, !"ps_main", !9, !4, !28}
!9 = !{!10, !25, null}
!10 = !{!11, !13, !14, !16, !17, !19, !21, !22, !24}
!11 = !{i32 0, !"SV_Position", i8 9, i8 3, !12, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!12 = !{i32 0}
!13 = !{i32 1, !"INTERPOLANT_POSITION", i8 9, i8 0, !12, i8 2, i32 1, i8 4, i32 1, i8 0, null}
!14 = !{i32 2, !"COLOR", i8 9, i8 0, !12, i8 2, i32 1, i8 4, i32 2, i8 0, !15}
!15 = !{i32 3, i32 10}
!16 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !12, i8 2, i32 1, i8 2, i32 3, i8 0, null}
!17 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !18, i8 1, i32 1, i8 4, i32 4, i8 0, null}
!18 = !{i32 2}
!19 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !20, i8 2, i32 1, i8 3, i32 5, i8 0, null}
!20 = !{i32 3}
!21 = !{i32 6, !"QUAD_POSITION", i8 9, i8 0, !12, i8 1, i32 1, i8 4, i32 6, i8 0, null}
!22 = !{i32 7, !"COLOR", i8 5, i8 0, !20, i8 1, i32 1, i8 3, i32 7, i8 0, !23}
!23 = !{i32 3, i32 1}
!24 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !12, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!25 = !{!26}
!26 = !{i32 0, !"SV_Target", i8 9, i8 16, !12, i8 0, i32 1, i8 4, i32 0, i8 0, !27}
!27 = !{i32 3, i32 15}
!28 = !{i32 0, i64 24}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 1}

