;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; POSITION                 0   xyz         0     NONE   float   xyz 
; COLOR                    0   x           1     NONE    uint   x   
; TANGENT_FRAME            0    y          1     NONE    uint    y  
; DISPLACEMENT             0     z         1     NONE    uint     z 
; DISPLACEMENT             2      w        1     NONE    uint      w
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 1     zw        2     NONE   float     zw
; TEXCOORD                 2   xy          3     NONE   float   xy  
; TESSFACTORS_OFFSET       0   x           4     NONE    uint   x   
; TRANSIENT_INDEX          0    y          4     NONE    uint    y  
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; POSITION                 0   xyz         0     NONE   float   xyz 
; COLOR                    0   x           1     NONE    uint   x   
; TANGENT_FRAME            0    y          1     NONE    uint    y  
; DISPLACEMENT             0     z         1     NONE    uint     z 
; DISPLACEMENT             2      w        1     NONE    uint      w
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 1     zw        2     NONE   float     zw
; TEXCOORD                 2   xy          3     NONE   float   xy  
; TESSFACTORS_OFFSET       0   x           4     NONE    uint   x   
; TRANSIENT_INDEX          0    y          4     NONE    uint    y  
;
;
; Patch Constant signature signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_TessFactor            0      w        0  TRIEDGE   float      w
; SV_TessFactor            1      w        1  TRIEDGE   float      w
; SV_TessFactor            2      w        2  TRIEDGE   float      w
; SV_InsideTessFactor      0   x           3   TRIINT   float   x   
;
; shader hash: 698fce841ad4b6df7d5312c8e3728e79
;
; Pipeline Runtime Information: 
;
; Hull Shader
; InputControlPointCount=3
; OutputControlPointCount=3
; Domain=tri
; OutputPrimitive=triangle_cw
;
;
; Input signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; POSITION                 0                 linear       
; COLOR                    0        nointerpolation       
; TEXCOORD                 0                 linear       
; TEXCOORD                 1                 linear       
; TEXCOORD                 2                 linear       
; TANGENT_FRAME            0        nointerpolation       
; DISPLACEMENT             0        nointerpolation       
; DISPLACEMENT             2        nointerpolation       
; TESSFACTORS_OFFSET       0        nointerpolation       
; TRANSIENT_INDEX          0        nointerpolation       
;
; Output signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; POSITION                 0                 linear       
; COLOR                    0        nointerpolation       
; TEXCOORD                 0                 linear       
; TEXCOORD                 1                 linear       
; TEXCOORD                 2                 linear       
; TANGENT_FRAME            0        nointerpolation       
; DISPLACEMENT             0        nointerpolation       
; DISPLACEMENT             2        nointerpolation       
; TESSFACTORS_OFFSET       0        nointerpolation       
; TRANSIENT_INDEX          0        nointerpolation       
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
;                                   texture    byte         r/o      T0      t2,space1     1
;
;
; ViewId state:
;
; Number of inputs: 18, outputs: 18, patchconst: 13
; Outputs dependent on ViewId: {  }
; PCOutputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0 }
;   output 1 depends on inputs: { 1 }
;   output 2 depends on inputs: { 2 }
;   output 4 depends on inputs: { 4 }
;   output 5 depends on inputs: { 5 }
;   output 6 depends on inputs: { 6 }
;   output 7 depends on inputs: { 7 }
;   output 8 depends on inputs: { 8 }
;   output 9 depends on inputs: { 9 }
;   output 10 depends on inputs: { 10 }
;   output 11 depends on inputs: { 11 }
;   output 12 depends on inputs: { 12 }
;   output 13 depends on inputs: { 13 }
;   output 16 depends on inputs: { 16 }
;   output 17 depends on inputs: { 17 }
; Inputs contributing to computation of PCOutputs:
;   output 3 depends on inputs: { 16 }
;   output 7 depends on inputs: { 16 }
;   output 11 depends on inputs: { 16 }
;   output 12 depends on inputs: { 16 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }

define void @"\01?hs_constants_main@@YA?AUHullConstantsOutput@@V?$InputPatch@UPackedVertexInput@@$02@@I@Z"() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call i32 @dx.op.primitiveID.i32(i32 108)  ; PrimitiveID()
  %3 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %4 = shl i32 %2, 2
  %5 = add i32 %3, %4
  %6 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5, i32 undef)  ; BufferLoad(srv,index,wot)
  %7 = extractvalue %dx.types.ResRet.i32 %6, 0
  %8 = and i32 %7, 63
  %9 = add nuw nsw i32 %8, 1
  %10 = uitofp i32 %9 to float
  call void @dx.op.storePatchConstant.f32(i32 106, i32 0, i32 0, i8 0, float %10)  ; StorePatchConstant(outputSigID,row,col,value)
  %11 = lshr i32 %7, 6
  %12 = and i32 %11, 63
  %13 = add nuw nsw i32 %12, 1
  %14 = uitofp i32 %13 to float
  call void @dx.op.storePatchConstant.f32(i32 106, i32 0, i32 1, i8 0, float %14)  ; StorePatchConstant(outputSigID,row,col,value)
  %15 = lshr i32 %7, 12
  %16 = and i32 %15, 63
  %17 = add nuw nsw i32 %16, 1
  %18 = uitofp i32 %17 to float
  call void @dx.op.storePatchConstant.f32(i32 106, i32 0, i32 2, i8 0, float %18)  ; StorePatchConstant(outputSigID,row,col,value)
  %19 = lshr i32 %7, 18
  %20 = and i32 %19, 63
  %21 = add nuw nsw i32 %20, 1
  %22 = uitofp i32 %21 to float
  call void @dx.op.storePatchConstant.f32(i32 106, i32 1, i32 0, i8 0, float %22)  ; StorePatchConstant(outputSigID,row,col,value)
  ret void
}

define void @hs_main() {
  %1 = call i32 @dx.op.outputControlPointID.i32(i32 107)  ; OutputControlPointID()
  %2 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 %1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %3 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 %1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %4 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 %1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %2)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %4)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %5 = call i32 @dx.op.loadInput.i32(i32 4, i32 1, i32 0, i8 0, i32 %1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  call void @dx.op.storeOutput.i32(i32 5, i32 1, i32 0, i8 0, i32 %5)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %6 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 %1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %7 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 %1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 0, float %6)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 1, float %7)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 %1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 %1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 0, float %8)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 1, float %9)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 %1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 %1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 0, float %10)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 1, float %11)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %12 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 %1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  call void @dx.op.storeOutput.i32(i32 5, i32 5, i32 0, i8 0, i32 %12)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %13 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 %1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  call void @dx.op.storeOutput.i32(i32 5, i32 6, i32 0, i8 0, i32 %13)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %14 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 %1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  call void @dx.op.storeOutput.i32(i32 5, i32 7, i32 0, i8 0, i32 %14)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %15 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 %1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  call void @dx.op.storeOutput.i32(i32 5, i32 8, i32 0, i8 0, i32 %15)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %16 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 %1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  call void @dx.op.storeOutput.i32(i32 5, i32 9, i32 0, i8 0, i32 %16)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.outputControlPointID.i32(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.primitiveID.i32(i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind
declare void @dx.op.storeOutput.i32(i32, i32, i32, i8, i32) #1

; Function Attrs: nounwind
declare void @dx.op.storePatchConstant.f32(i32, i32, i32, i8, float) #1

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
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"hs", i32 6, i32 0}
!4 = !{!5, null, null, null}
!5 = !{!6}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 2, i32 1, i32 11, i32 0, null}
!7 = !{[39 x i32] [i32 18, i32 18, i32 1, i32 2, i32 4, i32 0, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 0, i32 0, i32 65536, i32 131072, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6280, i32 0]}
!8 = !{void ()* @hs_main, !"hs_main", !9, !4, !31}
!9 = !{!10, !10, !27}
!10 = !{!11, !14, !16, !18, !20, !22, !23, !24, !25, !26}
!11 = !{i32 0, !"POSITION", i8 9, i8 0, !12, i8 2, i32 1, i8 3, i32 0, i8 0, !13}
!12 = !{i32 0}
!13 = !{i32 3, i32 7}
!14 = !{i32 1, !"COLOR", i8 5, i8 0, !12, i8 1, i32 1, i8 1, i32 1, i8 0, !15}
!15 = !{i32 3, i32 1}
!16 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !12, i8 2, i32 1, i8 2, i32 2, i8 0, !17}
!17 = !{i32 3, i32 3}
!18 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !19, i8 2, i32 1, i8 2, i32 2, i8 2, !17}
!19 = !{i32 1}
!20 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !21, i8 2, i32 1, i8 2, i32 3, i8 0, !17}
!21 = !{i32 2}
!22 = !{i32 5, !"TANGENT_FRAME", i8 5, i8 0, !12, i8 1, i32 1, i8 1, i32 1, i8 1, !15}
!23 = !{i32 6, !"DISPLACEMENT", i8 5, i8 0, !12, i8 1, i32 1, i8 1, i32 1, i8 2, !15}
!24 = !{i32 7, !"DISPLACEMENT", i8 5, i8 0, !21, i8 1, i32 1, i8 1, i32 1, i8 3, !15}
!25 = !{i32 8, !"TESSFACTORS_OFFSET", i8 5, i8 0, !12, i8 1, i32 1, i8 1, i32 4, i8 0, !15}
!26 = !{i32 9, !"TRANSIENT_INDEX", i8 5, i8 0, !12, i8 1, i32 1, i8 1, i32 4, i8 1, !15}
!27 = !{!28, !30}
!28 = !{i32 0, !"SV_TessFactor", i8 9, i8 25, !29, i8 0, i32 3, i8 1, i32 0, i8 3, !15}
!29 = !{i32 0, i32 1, i32 2}
!30 = !{i32 1, !"SV_InsideTessFactor", i8 9, i8 26, !12, i8 0, i32 1, i8 1, i32 3, i8 0, !15}
!31 = !{i32 0, i64 16, i32 3, !32}
!32 = !{void ()* @"\01?hs_constants_main@@YA?AUHullConstantsOutput@@V?$InputPatch@UPackedVertexInput@@$02@@I@Z", i32 3, i32 3, i32 2, i32 1, i32 3, float 6.400000e+01}

