;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float       
; TEXCOORD                 0   xy          1     NONE   float   xy  
; TANGENT                  0   xyz         2     NONE   float       
; COLOR                    0   xyzw        3     NONE   float      w
; COLOR_SATURATION         0   x           4     NONE   float       
; INDEX                    0    y          4     NONE    uint    y  
; TEXCOORD                 4   xyzw        5     NONE   float       
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 48978a53c5cc71210f96a41ed5350847
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
; TEXCOORD                 0                 linear       
; TANGENT                  0                 linear       
; COLOR                    0        nointerpolation       
; COLOR_SATURATION         0        nointerpolation       
; INDEX                    0        nointerpolation       
; TEXCOORD                 4        nointerpolation       
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
;                                   sampler      NA          NA      S0             s2     1
;                                   texture     f32          2d      T0      t0,space4unbounded
;                                   texture    byte         r/o      T1             t0     1
;
;
; ViewId state:
;
; Number of inputs: 24, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 4, 5, 17 }
;   output 3 depends on inputs: { 4, 5, 15, 17 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %4 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %5 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %6 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %7 = mul i32 %3, 116
  %8 = add i32 %7, 56
  %9 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %8, i32 undef)  ; BufferLoad(srv,index,wot)
  %10 = extractvalue %dx.types.ResRet.i32 %9, 0
  %11 = add i32 %7, 60
  %12 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %11, i32 undef)  ; BufferLoad(srv,index,wot)
  %13 = extractvalue %dx.types.ResRet.i32 %12, 0
  %14 = add i32 %7, 72
  %15 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %14, i32 undef)  ; BufferLoad(srv,index,wot)
  %16 = extractvalue %dx.types.ResRet.f32 %15, 0
  %17 = add i32 %7, 76
  %18 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %17, i32 undef)  ; BufferLoad(srv,index,wot)
  %19 = extractvalue %dx.types.ResRet.f32 %18, 0
  %20 = add i32 %10, 0
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = add i32 %13, 0
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %23, %dx.types.Handle %2, float %5, float %6, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %25 = extractvalue %dx.types.ResRet.f32 %24, 0
  %26 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %21, %dx.types.Handle %2, float %5, float %6, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %27 = extractvalue %dx.types.ResRet.f32 %26, 0
  %28 = fsub fast float %25, %19
  %29 = fmul fast float %28, %16
  %30 = fmul fast float %27, %4
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %29)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %30)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

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
!dx.viewIdState = !{!11}
!dx.entryPoints = !{!12}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, null, !9}
!5 = !{!6, !8}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!9 = !{!10}
!10 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!11 = !{[26 x i32] [i32 24, i32 4, i32 0, i32 0, i32 0, i32 0, i32 9, i32 9, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 0, i32 9, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]}
!12 = !{void ()* @ps_main, !"ps_main", !13, !4, !30}
!13 = !{!14, !27, null}
!14 = !{!15, !17, !19, !20, !22, !23, !25}
!15 = !{i32 0, !"SV_Position", i8 9, i8 3, !16, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!16 = !{i32 0}
!17 = !{i32 1, !"TEXCOORD", i8 9, i8 0, !16, i8 2, i32 1, i8 2, i32 1, i8 0, !18}
!18 = !{i32 3, i32 3}
!19 = !{i32 2, !"TANGENT", i8 9, i8 0, !16, i8 2, i32 1, i8 3, i32 2, i8 0, null}
!20 = !{i32 3, !"COLOR", i8 9, i8 0, !16, i8 1, i32 1, i8 4, i32 3, i8 0, !21}
!21 = !{i32 3, i32 8}
!22 = !{i32 4, !"COLOR_SATURATION", i8 9, i8 0, !16, i8 1, i32 1, i8 1, i32 4, i8 0, null}
!23 = !{i32 5, !"INDEX", i8 5, i8 0, !16, i8 1, i32 1, i8 1, i32 4, i8 1, !24}
!24 = !{i32 3, i32 1}
!25 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !26, i8 1, i32 1, i8 4, i32 5, i8 0, null}
!26 = !{i32 4}
!27 = !{!28}
!28 = !{i32 0, !"SV_Target", i8 9, i8 16, !16, i8 0, i32 1, i8 4, i32 0, i8 0, !29}
!29 = !{i32 3, i32 15}
!30 = !{i32 0, i64 16}

