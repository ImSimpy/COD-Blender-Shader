;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float       
; NORMAL                   0   xyz         1     NONE   float   xyz 
; TRIID                    0   x           2     NONE    uint   x   
; MATERIAL_DATA_OFFSET     0    y          2     NONE    uint       
; CLIP_POS                 0   xyzw        3     NONE   float   xy w
; PREV_CLIP_POS            0   xyzw        4     NONE   float   xy w
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   x           0   TARGET    uint   x   
; SV_Target                1   x           1   TARGET    uint   x   
; SV_Target                2   xyzw        2   TARGET   float   xyzw
;
; shader hash: 7b773dc38718cfb4b18b9492a1d9e92c
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
; CLIP_POS                 0                 linear       
; PREV_CLIP_POS            0                 linear       
; MATERIAL_DATA_OFFSET     0        nointerpolation       
;
; Output signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Target                0                              
; SV_Target                1                              
; SV_Target                2                              
;
; Buffer Definitions:
;
; cbuffer 
; {
;
;   [11728 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;
;
; ViewId state:
;
; Number of inputs: 20, outputs: 12
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 8 }
;   output 4 depends on inputs: { 4, 5, 6 }
;   output 10 depends on inputs: { 12, 15, 16, 19 }
;   output 11 depends on inputs: { 13, 15, 17, 19 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %3 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %4 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %5 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %6 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %7 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %8 = call i32 @dx.op.loadInput.i32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = fdiv fast float %5, %7
  %13 = fdiv fast float %6, %7
  %14 = fdiv fast float %2, %4
  %15 = fdiv fast float %3, %4
  %16 = fsub fast float %12, %14
  %17 = fsub fast float %13, %15
  %18 = fmul fast float %16, 5.000000e-01
  %19 = fmul fast float %17, -5.000000e-01
  %20 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %1, i32 240)  ; CBufferLoadLegacy(handle,regIndex)
  %21 = extractvalue %dx.types.CBufRet.i32 %20, 0
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %62

; <label>:23                                      ; preds = %0
  %24 = fmul fast float %16, 9.600000e+02
  %25 = fmul fast float %17, -5.400000e+02
  %26 = call float @dx.op.unary.f32(i32 6, float %24)  ; FAbs(value)
  %27 = call float @dx.op.unary.f32(i32 6, float %25)  ; FAbs(value)
  %28 = fadd fast float %26, -3.000000e+00
  %29 = fadd fast float %27, -3.000000e+00
  %30 = fmul fast float %28, 0x3F8A98EF60000000
  %31 = fmul fast float %29, 0x3F8A98EF60000000
  %32 = call float @dx.op.unary.f32(i32 7, float %30)  ; Saturate(value)
  %33 = call float @dx.op.unary.f32(i32 7, float %31)  ; Saturate(value)
  %34 = fmul fast float %26, 0x3FD5555560000000
  %35 = fmul fast float %27, 0x3FD5555560000000
  %36 = call float @dx.op.unary.f32(i32 7, float %34)  ; Saturate(value)
  %37 = call float @dx.op.unary.f32(i32 7, float %35)  ; Saturate(value)
  %38 = call float @dx.op.unary.f32(i32 24, float %32)  ; Sqrt(value)
  %39 = call float @dx.op.unary.f32(i32 24, float %33)  ; Sqrt(value)
  %40 = fsub fast float %36, %38
  %41 = fsub fast float %37, %39
  %42 = fmul fast float %40, 5.000000e-01
  %43 = fmul fast float %41, 5.000000e-01
  %44 = fadd fast float %42, %38
  %45 = fadd fast float %43, %39
  %46 = fsub fast float -0.000000e+00, %44
  %47 = fsub fast float -0.000000e+00, %45
  %48 = fcmp fast olt float %24, 0.000000e+00
  %49 = fcmp fast olt float %25, 0.000000e+00
  %50 = select i1 %48, float 0.000000e+00, float 1.000000e+00
  %51 = select i1 %49, float 0.000000e+00, float 1.000000e+00
  %52 = fcmp fast une float %50, 0.000000e+00
  %53 = fcmp fast une float %51, 0.000000e+00
  %54 = select i1 %52, float %44, float %46
  %55 = select i1 %53, float %45, float %47
  %56 = fmul fast float %54, 5.000000e-01
  %57 = fmul fast float %55, 5.000000e-01
  %58 = fadd fast float %56, 0x3FE0101020000000
  %59 = fadd fast float %57, 0x3FE0101020000000
  %60 = call float @dx.op.unary.f32(i32 7, float %58)  ; Saturate(value)
  %61 = call float @dx.op.unary.f32(i32 7, float %59)  ; Saturate(value)
  br label %62

; <label>:62                                      ; preds = %23, %0
  %63 = phi float [ %60, %23 ], [ %18, %0 ]
  %64 = phi float [ %61, %23 ], [ %19, %0 ]
  %65 = call float @dx.op.unary.f32(i32 6, float %9)  ; FAbs(value)
  %66 = call float @dx.op.unary.f32(i32 6, float %10)  ; FAbs(value)
  %67 = fadd fast float %66, %65
  %68 = call float @dx.op.unary.f32(i32 6, float %11)  ; FAbs(value)
  %69 = fadd fast float %67, %68
  %70 = fdiv fast float %9, %69
  %71 = fdiv fast float %10, %69
  %72 = fdiv fast float %11, %69
  %73 = fcmp fast oge float %72, 0.000000e+00
  %74 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %75 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %76 = fsub fast float 1.000000e+00, %74
  %77 = fsub fast float 1.000000e+00, %75
  %78 = fcmp fast oge float %70, 0.000000e+00
  %79 = select i1 %78, float 1.000000e+00, float -1.000000e+00
  %80 = fcmp fast oge float %71, 0.000000e+00
  %81 = select i1 %80, float 1.000000e+00, float -1.000000e+00
  %82 = fmul fast float %76, %79
  %83 = fmul fast float %77, %81
  %84 = select i1 %73, float %70, float %82
  %85 = select i1 %73, float %71, float %83
  %86 = fmul fast float %84, 1.275000e+02
  %87 = fmul fast float %85, 1.275000e+02
  %88 = fadd fast float %86, 1.275000e+02
  %89 = fadd fast float %87, 1.275000e+02
  %90 = call float @dx.op.unary.f32(i32 26, float %88)  ; Round_ne(value)
  %91 = call float @dx.op.unary.f32(i32 26, float %89)  ; Round_ne(value)
  %92 = fptoui float %90 to i32
  %93 = fptoui float %91 to i32
  %94 = shl i32 %93, 8
  %95 = or i32 %94, %92
  call void @dx.op.storeOutput.i32(i32 5, i32 0, i32 0, i8 0, i32 %8)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 1, i32 0, i8 0, i32 %95)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 2, float %63)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 3, float %64)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.i32(i32, i32, i32, i8, i32) #1

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

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
!dx.viewIdState = !{!7}
!dx.entryPoints = !{!8}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{null, null, !5, null}
!5 = !{!6}
!6 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!7 = !{[22 x i32] [i32 20, i32 12, i32 0, i32 0, i32 0, i32 0, i32 16, i32 16, i32 16, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1024, i32 2048, i32 0, i32 3072, i32 1024, i32 2048, i32 0, i32 3072]}
!8 = !{void ()* @ps_main, !"ps_main", !9, !4, null}
!9 = !{!10, !21, null}
!10 = !{!11, !13, !15, !17, !19, !20}
!11 = !{i32 0, !"SV_Position", i8 9, i8 3, !12, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!12 = !{i32 0}
!13 = !{i32 1, !"NORMAL", i8 9, i8 0, !12, i8 2, i32 1, i8 3, i32 1, i8 0, !14}
!14 = !{i32 3, i32 7}
!15 = !{i32 2, !"TRIID", i8 5, i8 0, !12, i8 1, i32 1, i8 1, i32 2, i8 0, !16}
!16 = !{i32 3, i32 1}
!17 = !{i32 3, !"CLIP_POS", i8 9, i8 0, !12, i8 2, i32 1, i8 4, i32 3, i8 0, !18}
!18 = !{i32 3, i32 11}
!19 = !{i32 4, !"PREV_CLIP_POS", i8 9, i8 0, !12, i8 2, i32 1, i8 4, i32 4, i8 0, !18}
!20 = !{i32 5, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !12, i8 1, i32 1, i8 1, i32 2, i8 1, null}
!21 = !{!22, !23, !25}
!22 = !{i32 0, !"SV_Target", i8 5, i8 16, !12, i8 0, i32 1, i8 1, i32 0, i8 0, !16}
!23 = !{i32 1, !"SV_Target", i8 5, i8 16, !24, i8 0, i32 1, i8 1, i32 1, i8 0, !16}
!24 = !{i32 1}
!25 = !{i32 2, !"SV_Target", i8 9, i8 16, !26, i8 0, i32 1, i8 4, i32 2, i8 0, !27}
!26 = !{i32 2}
!27 = !{i32 3, i32 15}

