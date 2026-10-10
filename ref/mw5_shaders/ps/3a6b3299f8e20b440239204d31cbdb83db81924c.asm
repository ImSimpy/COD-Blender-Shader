;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy  
; TEXCOORD                 1   x           1     NONE    uint   x   
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; no parameters
; shader hash: 37b8ca6efba811bc92ad0d2e44de174c
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
; TEXCOORD                 1        nointerpolation       
;
; Buffer Definitions:
;
; cbuffer 
; {
;
;   [8208 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb1     1
;                                       UAV     u32          3d      U0             u4     1
;
;
; ViewId state:
;
; Number of inputs: 5, outputs: 0
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%"class.RWTexture3D<unsigned int>" = type { i32 }
%frustumLightsTile = type { %struct.FrustumLightsTileConstants }
%struct.FrustumLightsTileConstants = type { [256 x <4 x float>], [256 x <4 x float>], float, float, float, i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call i32 @dx.op.loadInput.i32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %4 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %5 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %6 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %2, i32 512)  ; CBufferLoadLegacy(handle,regIndex)
  %7 = extractvalue %dx.types.CBufRet.f32 %6, 2
  %8 = lshr i32 %3, 24
  %9 = fmul fast float %7, %4
  %10 = fmul fast float %7, %5
  %11 = fptoui float %9 to i32
  %12 = fptoui float %10 to i32
  %13 = lshr i32 %11, 4
  %14 = lshr i32 %12, 4
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %1, i32 %13, i32 %14, i32 %8, i32 1, i32 1, i32 1, i32 1, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.viewIdState = !{!10}
!dx.entryPoints = !{!11}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{null, !5, !8, null}
!5 = !{!6}
!6 = !{i32 0, %"class.RWTexture3D<unsigned int>"* undef, !"", i32 0, i32 4, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!7 = !{i32 0, i32 5}
!8 = !{!9}
!9 = !{i32 0, %frustumLightsTile* undef, !"", i32 0, i32 1, i32 1, i32 8208, null}
!10 = !{[2 x i32] [i32 5, i32 0]}
!11 = !{void ()* @ps_main, !"ps_main", !12, !4, !20}
!12 = !{!13, null, null}
!13 = !{!14, !17}
!14 = !{i32 0, !"SV_Position", i8 9, i8 3, !15, i8 4, i32 1, i8 4, i32 0, i8 0, !16}
!15 = !{i32 0}
!16 = !{i32 3, i32 3}
!17 = !{i32 1, !"TEXCOORD", i8 5, i8 0, !18, i8 1, i32 1, i8 1, i32 1, i8 0, !19}
!18 = !{i32 1}
!19 = !{i32 3, i32 1}
!20 = !{i32 0, i64 8}

