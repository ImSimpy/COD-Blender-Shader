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
; shader hash: e43bc5f42b9ae342f23e891478a661c1
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
;   [32 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S1             s3     1
;                                   texture     f32     2darray      T0             t0     1
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
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%perObject = type { <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %6 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %7 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %8 = extractvalue %dx.types.CBufRet.f32 %7, 0
  %9 = fcmp fast oeq float %8, 2.000000e+00
  %10 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %11 = extractvalue %dx.types.CBufRet.f32 %10, 3
  br i1 %9, label %12, label %19

; <label>:12                                      ; preds = %0
  %13 = extractvalue %dx.types.CBufRet.f32 %10, 1
  %14 = extractvalue %dx.types.CBufRet.f32 %10, 2
  %15 = fadd fast float %13, %5
  %16 = fadd fast float %14, %6
  %17 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %15, float %16, float %11, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %18 = extractvalue %dx.types.ResRet.f32 %17, 0
  br label %22

; <label>:19                                      ; preds = %0
  %20 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %3, float %5, float %6, float %11, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %21 = extractvalue %dx.types.ResRet.f32 %20, 0
  br label %22

; <label>:22                                      ; preds = %19, %12
  %23 = phi float [ %18, %12 ], [ %21, %19 ]
  %24 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.f32 %24, 0
  %26 = fcmp fast oeq float %25, 1.000000e+00
  br i1 %26, label %27, label %129

; <label>:27                                      ; preds = %22
  %28 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %29 = extractvalue %dx.types.CBufRet.f32 %28, 2
  %30 = extractvalue %dx.types.CBufRet.f32 %28, 3
  %31 = extractvalue %dx.types.CBufRet.f32 %24, 1
  %32 = fmul fast float %31, 2.000000e+01
  %33 = extractvalue %dx.types.CBufRet.f32 %24, 2
  %34 = fmul fast float %33, 2.000000e+01
  %35 = extractvalue %dx.types.CBufRet.f32 %28, 0
  %36 = extractvalue %dx.types.CBufRet.f32 %28, 1
  %37 = fsub fast float %35, %32
  %38 = fsub fast float %36, %34
  %39 = call float @dx.op.unary.f32(i32 22, float %37)  ; Frc(value)
  %40 = call float @dx.op.unary.f32(i32 22, float %38)  ; Frc(value)
  %41 = fadd fast float %32, %29
  %42 = fadd fast float %41, %39
  %43 = fadd fast float %34, %30
  %44 = fadd fast float %43, %40
  %45 = fcmp fast oge float %42, 1.000000e+00
  %46 = fcmp fast oge float %44, 1.000000e+00
  %47 = call float @dx.op.unary.f32(i32 22, float %39)  ; Frc(value)
  %48 = call float @dx.op.unary.f32(i32 22, float %40)  ; Frc(value)
  %49 = call float @dx.op.unary.f32(i32 22, float %42)  ; Frc(value)
  %50 = call float @dx.op.unary.f32(i32 22, float %44)  ; Frc(value)
  %51 = and i1 %45, %46
  %52 = fcmp fast oge float %5, %47
  %53 = fcmp fast ole float %5, %49
  %54 = fcmp fast oge float %6, %48
  %55 = fcmp fast ole float %6, %50
  br i1 %51, label %56, label %74

; <label>:56                                      ; preds = %27
  %57 = or i1 %52, %53
  %58 = or i1 %54, %55
  %59 = and i1 %57, %58
  br i1 %59, label %60, label %129

; <label>:60                                      ; preds = %56
  %61 = fadd fast float %47, %32
  %62 = fcmp fast oge float %5, %61
  %63 = fsub fast float %49, %32
  %64 = fcmp fast ole float %5, %63
  %65 = or i1 %62, %64
  %66 = fadd fast float %48, %34
  %67 = fcmp fast oge float %6, %66
  %68 = fsub fast float %50, %34
  %69 = fcmp fast ole float %6, %68
  %70 = or i1 %67, %69
  %71 = and i1 %65, %70
  %72 = select i1 %71, float %23, float 1.000000e+00
  %73 = select i1 %71, float %23, float 0.000000e+00
  br label %129

; <label>:74                                      ; preds = %27
  br i1 %45, label %75, label %93

; <label>:75                                      ; preds = %74
  %76 = or i1 %52, %53
  %77 = and i1 %54, %55
  %78 = and i1 %76, %77
  br i1 %78, label %79, label %129

; <label>:79                                      ; preds = %75
  %80 = fadd fast float %47, %32
  %81 = fcmp fast oge float %5, %80
  %82 = fsub fast float %49, %32
  %83 = fcmp fast ole float %5, %82
  %84 = or i1 %81, %83
  %85 = fadd fast float %48, %34
  %86 = fcmp fast oge float %6, %85
  %87 = fsub fast float %50, %34
  %88 = fcmp fast ole float %6, %87
  %89 = and i1 %86, %88
  %90 = and i1 %84, %89
  %91 = select i1 %90, float %23, float 1.000000e+00
  %92 = select i1 %90, float %23, float 0.000000e+00
  br label %129

; <label>:93                                      ; preds = %74
  %94 = and i1 %52, %53
  br i1 %46, label %95, label %112

; <label>:95                                      ; preds = %93
  %96 = or i1 %54, %55
  %97 = and i1 %94, %96
  br i1 %97, label %98, label %129

; <label>:98                                      ; preds = %95
  %99 = fadd fast float %47, %32
  %100 = fcmp fast oge float %5, %99
  %101 = fsub fast float %49, %32
  %102 = fcmp fast ole float %5, %101
  %103 = and i1 %100, %102
  %104 = fadd fast float %48, %34
  %105 = fcmp fast oge float %6, %104
  %106 = fsub fast float %50, %34
  %107 = fcmp fast ole float %6, %106
  %108 = or i1 %105, %107
  %109 = and i1 %103, %108
  %110 = select i1 %109, float %23, float 1.000000e+00
  %111 = select i1 %109, float %23, float 0.000000e+00
  br label %129

; <label>:112                                     ; preds = %93
  %113 = and i1 %54, %55
  %114 = and i1 %94, %113
  br i1 %114, label %115, label %129

; <label>:115                                     ; preds = %112
  %116 = fadd fast float %47, %32
  %117 = fcmp fast oge float %5, %116
  %118 = fsub fast float %49, %32
  %119 = fcmp fast ole float %5, %118
  %120 = and i1 %117, %119
  %121 = fadd fast float %48, %34
  %122 = fcmp fast oge float %6, %121
  %123 = fsub fast float %50, %34
  %124 = fcmp fast ole float %6, %123
  %125 = and i1 %122, %124
  %126 = and i1 %120, %125
  %127 = select i1 %126, float %23, float 1.000000e+00
  %128 = select i1 %126, float %23, float 0.000000e+00
  br label %129

; <label>:129                                     ; preds = %115, %112, %98, %95, %79, %75, %60, %56, %22
  %130 = phi float [ %23, %56 ], [ %23, %75 ], [ %23, %95 ], [ %23, %112 ], [ %23, %22 ], [ %72, %60 ], [ %91, %79 ], [ %110, %98 ], [ %127, %115 ]
  %131 = phi float [ %23, %56 ], [ %23, %75 ], [ %23, %95 ], [ %23, %112 ], [ %23, %22 ], [ %73, %60 ], [ %92, %79 ], [ %111, %98 ], [ %128, %115 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %130)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %131)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %131)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!4 = !{!5, null, !8, !10}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 7, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9}
!9 = !{i32 0, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 32, null}
!10 = !{!11, !12}
!11 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!12 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!13 = !{[12 x i32] [i32 10, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7]}
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

