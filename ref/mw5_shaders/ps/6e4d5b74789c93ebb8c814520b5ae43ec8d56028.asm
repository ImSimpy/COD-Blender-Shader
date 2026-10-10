;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float       
; COLOR                    0   xyzw        1     NONE   float       
; TEXCOORD                 0   xy          2     NONE   float   xy  
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 9767243c61af6788ab57d6502516bd14
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
; COLOR                    0                 linear       
; TEXCOORD                 0                 linear       
;
; Output signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Target                0                              
;
; Buffer Definitions:
;
; cbuffer 
; {
;
;   [64 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb1     1
;                                   sampler      NA          NA      S0             s2     1
;                                   texture     f32          2d      T0             t0     1
;                                   texture     f32          2d      T1             t1     1
;
;
; ViewId state:
;
; Number of inputs: 10, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 8, 9 }
;   output 1 depends on inputs: { 8, 9 }
;   output 2 depends on inputs: { 8, 9 }
;   output 3 depends on inputs: { 8, 9 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%perObject = type { <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %6 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %8 = extractvalue %dx.types.CBufRet.f32 %7, 2
  %9 = fptosi float %8 to i32
  %10 = extractvalue %dx.types.CBufRet.f32 %7, 3
  %11 = extractvalue %dx.types.CBufRet.f32 %7, 0
  %12 = extractvalue %dx.types.CBufRet.f32 %7, 1
  %13 = fmul fast float %11, %10
  %14 = fmul fast float %12, %10
  %15 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %16 = extractvalue %dx.types.CBufRet.f32 %15, 0
  %17 = extractvalue %dx.types.CBufRet.f32 %15, 1
  %18 = icmp sgt i32 %9, -1
  br i1 %18, label %19, label %70

; <label>:19                                      ; preds = %0
  br label %20

; <label>:20                                      ; preds = %20, %19
  %21 = phi float [ %62, %20 ], [ 0.000000e+00, %19 ]
  %22 = phi float [ %63, %20 ], [ 0.000000e+00, %19 ]
  %23 = phi float [ %64, %20 ], [ 0.000000e+00, %19 ]
  %24 = phi float [ %65, %20 ], [ 0.000000e+00, %19 ]
  %25 = phi float [ %66, %20 ], [ 0.000000e+00, %19 ]
  %26 = phi i32 [ %67, %20 ], [ 0, %19 ]
  %27 = sitofp i32 %26 to float
  %28 = fmul fast float %13, %27
  %29 = fmul fast float %14, %27
  %30 = fadd fast float %28, %5
  %31 = fadd fast float %29, %6
  %32 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %30, float %31, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %33 = extractvalue %dx.types.ResRet.f32 %32, 0
  %34 = extractvalue %dx.types.ResRet.f32 %32, 1
  %35 = extractvalue %dx.types.ResRet.f32 %32, 2
  %36 = extractvalue %dx.types.ResRet.f32 %32, 3
  %37 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %38 = extractvalue %dx.types.CBufRet.f32 %37, 0
  %39 = extractvalue %dx.types.CBufRet.f32 %37, 1
  %40 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %41 = extractvalue %dx.types.CBufRet.f32 %40, 0
  %42 = extractvalue %dx.types.CBufRet.f32 %40, 1
  %43 = extractvalue %dx.types.CBufRet.f32 %40, 2
  %44 = extractvalue %dx.types.CBufRet.f32 %40, 3
  %45 = call float @dx.op.dot4.f32(i32 56, float %33, float %34, float %35, float %36, float %41, float %42, float %43, float %44)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %46 = fsub fast float %45, %38
  %47 = fmul fast float %46, %39
  %48 = call float @dx.op.unary.f32(i32 7, float %47)  ; Saturate(value)
  %49 = extractvalue %dx.types.CBufRet.f32 %37, 2
  %50 = extractvalue %dx.types.CBufRet.f32 %37, 3
  %51 = fmul fast float %50, %48
  %52 = fadd fast float %51, %49
  %53 = fsub fast float %16, %17
  %54 = fmul fast float %53, %10
  %55 = fmul fast float %54, %27
  %56 = fadd fast float %55, %17
  %57 = fmul fast float %52, %56
  %58 = fmul fast float %57, %33
  %59 = fmul fast float %57, %34
  %60 = fmul fast float %57, %35
  %61 = fmul fast float %57, %36
  %62 = fadd fast float %58, %21
  %63 = fadd fast float %59, %22
  %64 = fadd fast float %60, %23
  %65 = fadd fast float %61, %24
  %66 = fadd fast float %57, %25
  %67 = add nuw nsw i32 %26, 1
  %68 = icmp eq i32 %26, %9
  br i1 %68, label %69, label %20

; <label>:69                                      ; preds = %20
  br label %70

; <label>:70                                      ; preds = %69, %0
  %71 = phi float [ 0.000000e+00, %0 ], [ %62, %69 ]
  %72 = phi float [ 0.000000e+00, %0 ], [ %63, %69 ]
  %73 = phi float [ 0.000000e+00, %0 ], [ %64, %69 ]
  %74 = phi float [ 0.000000e+00, %0 ], [ %65, %69 ]
  %75 = phi float [ 0.000000e+00, %0 ], [ %66, %69 ]
  %76 = fcmp fast ogt float %75, 0.000000e+00
  %77 = fdiv fast float %71, %75
  %78 = fdiv fast float %72, %75
  %79 = fdiv fast float %73, %75
  %80 = fdiv fast float %74, %75
  %81 = select i1 %76, float %77, float 0.000000e+00
  %82 = select i1 %76, float %78, float 0.000000e+00
  %83 = select i1 %76, float %79, float 0.000000e+00
  %84 = select i1 %76, float %80, float 0.000000e+00
  %85 = extractvalue %dx.types.CBufRet.f32 %15, 2
  %86 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %3, float %5, float %6, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %87 = extractvalue %dx.types.ResRet.f32 %86, 0
  %88 = extractvalue %dx.types.ResRet.f32 %86, 1
  %89 = extractvalue %dx.types.ResRet.f32 %86, 2
  %90 = extractvalue %dx.types.ResRet.f32 %86, 3
  %91 = fmul fast float %87, %85
  %92 = fmul fast float %88, %85
  %93 = fmul fast float %89, %85
  %94 = fmul fast float %90, %85
  %95 = call float @dx.op.binary.f32(i32 35, float %81, float %91)  ; FMax(a,b)
  %96 = call float @dx.op.binary.f32(i32 35, float %82, float %92)  ; FMax(a,b)
  %97 = call float @dx.op.binary.f32(i32 35, float %83, float %93)  ; FMax(a,b)
  %98 = call float @dx.op.binary.f32(i32 35, float %84, float %94)  ; FMax(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %95)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %96)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %97)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %98)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

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
!dx.viewIdState = !{!13}
!dx.entryPoints = !{!14}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !9, !11}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!9 = !{!10}
!10 = !{i32 0, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 64, null}
!11 = !{!12}
!12 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!13 = !{[12 x i32] [i32 10, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 15, i32 15]}
!14 = !{void ()* @ps_main, !"ps_main", !15, !4, null}
!15 = !{!16, !22, null}
!16 = !{!17, !19, !20}
!17 = !{i32 0, !"SV_Position", i8 9, i8 3, !18, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!18 = !{i32 0}
!19 = !{i32 1, !"COLOR", i8 9, i8 0, !18, i8 2, i32 1, i8 4, i32 1, i8 0, null}
!20 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !18, i8 2, i32 1, i8 2, i32 2, i8 0, !21}
!21 = !{i32 3, i32 3}
!22 = !{!23}
!23 = !{i32 0, !"SV_Target", i8 9, i8 16, !18, i8 0, i32 1, i8 4, i32 0, i8 0, !24}
!24 = !{i32 3, i32 15}

