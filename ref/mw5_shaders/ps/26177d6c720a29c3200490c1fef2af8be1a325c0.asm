;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy  
; ENTITY_IDS               0   xy          1     NONE    uint    y  
; CLIP_POS                 0   xyzw        2     NONE   float       
; PREV_CLIP_POS            0   xyzw        3     NONE   float       
; PACKED_TRI_DATA          0   xyzw        4     NONE    uint       
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; no parameters
; shader hash: a5887c56d0d4adff025cb553fb192300
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
; ENTITY_IDS               0        nointerpolation       
; CLIP_POS                 0                 linear       
; PREV_CLIP_POS            0                 linear       
; PACKED_TRI_DATA          0        nointerpolation       
;
; Buffer Definitions:
;
; cbuffer 
; {
;
;   [224 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb2     1
;                                   texture    byte         r/o      T0      t9,space1     1
;
;
; ViewId state:
;
; Number of inputs: 20, outputs: 0
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call i32 @dx.op.loadInput.i32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %4 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %2, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %5 = extractvalue %dx.types.CBufRet.f32 %4, 0
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %42, label %7

; <label>:7                                       ; preds = %0
  %8 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = fmul fast float %8, %5
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = fmul fast float %10, %5
  %12 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %2, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %13 = extractvalue %dx.types.CBufRet.f32 %12, 2
  %14 = extractvalue %dx.types.CBufRet.f32 %12, 3
  %15 = fmul fast float %11, %13
  %16 = fmul fast float %9, %14
  %17 = fmul fast float %15, 1.024000e+03
  %18 = fmul fast float %16, 1.024000e+03
  %19 = fadd fast float %17, -5.120000e+02
  %20 = fadd fast float %18, -5.120000e+02
  %21 = fmul fast float %15, 0x4081BEDF00000000
  %22 = fadd fast float %21, 0xC071BEDF00000000
  %23 = call float @dx.op.unary.f32(i32 22, float %22)  ; Frc(value)
  %24 = fmul fast float %19, %23
  %25 = fadd fast float %24, %20
  %26 = fmul fast float %16, 0x4073BEBE20000000
  %27 = fadd fast float %26, 0xC063BEBE20000000
  %28 = call float @dx.op.unary.f32(i32 22, float %27)  ; Frc(value)
  %29 = fmul fast float %20, %28
  %30 = fadd fast float %29, %19
  %31 = fmul fast float %25, %30
  %32 = call float @dx.op.unary.f32(i32 22, float %31)  ; Frc(value)
  %33 = mul i32 %3, 100
  %34 = add i32 %33, 12
  %35 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %34, i32 undef)  ; BufferLoad(srv,index,wot)
  %36 = extractvalue %dx.types.ResRet.i32 %35, 0
  %37 = and i32 %36, 255
  %38 = uitofp i32 %37 to float
  %39 = fmul fast float %38, 0x3F70101020000000
  %40 = fcmp fast olt float %32, %39
  br i1 %40, label %41, label %42

; <label>:41                                      ; preds = %7
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %42

; <label>:42                                      ; preds = %41, %7, %0
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.discard(i32, i1) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

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
!dx.viewIdState = !{!9}
!dx.entryPoints = !{!10}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !7, null}
!5 = !{!6}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 9, i32 1, i32 11, i32 0, null}
!7 = !{!8}
!8 = !{i32 0, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 224, null}
!9 = !{[2 x i32] [i32 20, i32 0]}
!10 = !{void ()* @ps_main, !"ps_main", !11, !4, !21}
!11 = !{!12, null, null}
!12 = !{!13, !16, !18, !19, !20}
!13 = !{i32 0, !"SV_Position", i8 9, i8 3, !14, i8 4, i32 1, i8 4, i32 0, i8 0, !15}
!14 = !{i32 0}
!15 = !{i32 3, i32 3}
!16 = !{i32 1, !"ENTITY_IDS", i8 5, i8 0, !14, i8 1, i32 1, i8 2, i32 1, i8 0, !17}
!17 = !{i32 3, i32 2}
!18 = !{i32 2, !"CLIP_POS", i8 9, i8 0, !14, i8 2, i32 1, i8 4, i32 2, i8 0, null}
!19 = !{i32 3, !"PREV_CLIP_POS", i8 9, i8 0, !14, i8 2, i32 1, i8 4, i32 3, i8 0, null}
!20 = !{i32 4, !"PACKED_TRI_DATA", i8 5, i8 0, !14, i8 1, i32 1, i8 4, i32 4, i8 0, null}
!21 = !{i32 0, i64 16}

