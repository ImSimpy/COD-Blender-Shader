;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float       
; NORMAL                   0   xyz         1     NONE   float   xyz 
; TRIID                    0   x           2     NONE    uint   x   
; SV_IsFrontFace           0    y          2    FFACE    uint    y  
; CLIP_POS                 0   xyzw        3     NONE   float   xy w
; PREV_CLIP_POS            0   xyzw        4     NONE   float   xy w
; PACKED_TRI_DATA          0   xyzw        5     NONE    uint       
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
; shader hash: a3f9f3bb5a69ca47f6266e9122f2dd75
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
; PACKED_TRI_DATA          0        nointerpolation       
; SV_IsFrontFace           0        nointerpolation       
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
; Number of inputs: 24, outputs: 12
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 8 }
;   output 4 depends on inputs: { 4, 5, 6, 9 }
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
  %2 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %3 = icmp ne i32 %2, 0
  %4 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %5 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %6 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %7 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %8 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call i32 @dx.op.loadInput.i32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = select i1 %3, float 1.000000e+00, float -1.000000e+00
  %15 = call float @dx.op.dot3.f32(i32 55, float %11, float %12, float %13, float %11, float %12, float %13)  ; Dot3(ax,ay,az,bx,by,bz)
  %16 = bitcast float %15 to i32
  %17 = ashr i32 %16, 1
  %18 = sub nsw i32 1597250115, %17
  %19 = bitcast i32 %18 to float
  %20 = fmul fast float %11, %14
  %21 = fmul fast float %20, %19
  %22 = fmul fast float %12, %14
  %23 = fmul fast float %22, %19
  %24 = fmul fast float %13, %14
  %25 = fmul fast float %24, %19
  %26 = fdiv fast float %7, %9
  %27 = fdiv fast float %8, %9
  %28 = fdiv fast float %4, %6
  %29 = fdiv fast float %5, %6
  %30 = fsub fast float %26, %28
  %31 = fsub fast float %27, %29
  %32 = fmul fast float %30, 5.000000e-01
  %33 = fmul fast float %31, -5.000000e-01
  %34 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %1, i32 240)  ; CBufferLoadLegacy(handle,regIndex)
  %35 = extractvalue %dx.types.CBufRet.i32 %34, 0
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %76

; <label>:37                                      ; preds = %0
  %38 = fmul fast float %30, 9.600000e+02
  %39 = fmul fast float %31, -5.400000e+02
  %40 = call float @dx.op.unary.f32(i32 6, float %38)  ; FAbs(value)
  %41 = call float @dx.op.unary.f32(i32 6, float %39)  ; FAbs(value)
  %42 = fadd fast float %40, -3.000000e+00
  %43 = fadd fast float %41, -3.000000e+00
  %44 = fmul fast float %42, 0x3F8A98EF60000000
  %45 = fmul fast float %43, 0x3F8A98EF60000000
  %46 = call float @dx.op.unary.f32(i32 7, float %44)  ; Saturate(value)
  %47 = call float @dx.op.unary.f32(i32 7, float %45)  ; Saturate(value)
  %48 = fmul fast float %40, 0x3FD5555560000000
  %49 = fmul fast float %41, 0x3FD5555560000000
  %50 = call float @dx.op.unary.f32(i32 7, float %48)  ; Saturate(value)
  %51 = call float @dx.op.unary.f32(i32 7, float %49)  ; Saturate(value)
  %52 = call float @dx.op.unary.f32(i32 24, float %46)  ; Sqrt(value)
  %53 = call float @dx.op.unary.f32(i32 24, float %47)  ; Sqrt(value)
  %54 = fsub fast float %50, %52
  %55 = fsub fast float %51, %53
  %56 = fmul fast float %54, 5.000000e-01
  %57 = fmul fast float %55, 5.000000e-01
  %58 = fadd fast float %56, %52
  %59 = fadd fast float %57, %53
  %60 = fsub fast float -0.000000e+00, %58
  %61 = fsub fast float -0.000000e+00, %59
  %62 = fcmp fast olt float %38, 0.000000e+00
  %63 = fcmp fast olt float %39, 0.000000e+00
  %64 = select i1 %62, float 0.000000e+00, float 1.000000e+00
  %65 = select i1 %63, float 0.000000e+00, float 1.000000e+00
  %66 = fcmp fast une float %64, 0.000000e+00
  %67 = fcmp fast une float %65, 0.000000e+00
  %68 = select i1 %66, float %58, float %60
  %69 = select i1 %67, float %59, float %61
  %70 = fmul fast float %68, 5.000000e-01
  %71 = fmul fast float %69, 5.000000e-01
  %72 = fadd fast float %70, 0x3FE0101020000000
  %73 = fadd fast float %71, 0x3FE0101020000000
  %74 = call float @dx.op.unary.f32(i32 7, float %72)  ; Saturate(value)
  %75 = call float @dx.op.unary.f32(i32 7, float %73)  ; Saturate(value)
  br label %76

; <label>:76                                      ; preds = %37, %0
  %77 = phi float [ %74, %37 ], [ %32, %0 ]
  %78 = phi float [ %75, %37 ], [ %33, %0 ]
  %79 = call float @dx.op.unary.f32(i32 6, float %21)  ; FAbs(value)
  %80 = call float @dx.op.unary.f32(i32 6, float %23)  ; FAbs(value)
  %81 = fadd fast float %80, %79
  %82 = call float @dx.op.unary.f32(i32 6, float %25)  ; FAbs(value)
  %83 = fadd fast float %81, %82
  %84 = fdiv fast float %21, %83
  %85 = fdiv fast float %23, %83
  %86 = fdiv fast float %25, %83
  %87 = fcmp fast oge float %86, 0.000000e+00
  %88 = call float @dx.op.unary.f32(i32 6, float %85)  ; FAbs(value)
  %89 = call float @dx.op.unary.f32(i32 6, float %84)  ; FAbs(value)
  %90 = fsub fast float 1.000000e+00, %88
  %91 = fsub fast float 1.000000e+00, %89
  %92 = fcmp fast oge float %84, 0.000000e+00
  %93 = select i1 %92, float 1.000000e+00, float -1.000000e+00
  %94 = fcmp fast oge float %85, 0.000000e+00
  %95 = select i1 %94, float 1.000000e+00, float -1.000000e+00
  %96 = fmul fast float %90, %93
  %97 = fmul fast float %91, %95
  %98 = select i1 %87, float %84, float %96
  %99 = select i1 %87, float %85, float %97
  %100 = fmul fast float %98, 1.275000e+02
  %101 = fmul fast float %99, 1.275000e+02
  %102 = fadd fast float %100, 1.275000e+02
  %103 = fadd fast float %101, 1.275000e+02
  %104 = call float @dx.op.unary.f32(i32 26, float %102)  ; Round_ne(value)
  %105 = call float @dx.op.unary.f32(i32 26, float %103)  ; Round_ne(value)
  %106 = fptoui float %104 to i32
  %107 = fptoui float %105 to i32
  %108 = shl i32 %107, 8
  %109 = or i32 %108, %106
  call void @dx.op.storeOutput.i32(i32 5, i32 0, i32 0, i8 0, i32 %10)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 1, i32 0, i8 0, i32 %109)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 2, float %77)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 3, float %78)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

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
!7 = !{[26 x i32] [i32 24, i32 12, i32 0, i32 0, i32 0, i32 0, i32 16, i32 16, i32 16, i32 0, i32 1, i32 16, i32 0, i32 0, i32 1024, i32 2048, i32 0, i32 3072, i32 1024, i32 2048, i32 0, i32 3072, i32 0, i32 0, i32 0, i32 0]}
!8 = !{void ()* @ps_main, !"ps_main", !9, !4, null}
!9 = !{!10, !22, null}
!10 = !{!11, !13, !15, !17, !19, !20, !21}
!11 = !{i32 0, !"SV_Position", i8 9, i8 3, !12, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!12 = !{i32 0}
!13 = !{i32 1, !"NORMAL", i8 9, i8 0, !12, i8 2, i32 1, i8 3, i32 1, i8 0, !14}
!14 = !{i32 3, i32 7}
!15 = !{i32 2, !"TRIID", i8 5, i8 0, !12, i8 1, i32 1, i8 1, i32 2, i8 0, !16}
!16 = !{i32 3, i32 1}
!17 = !{i32 3, !"CLIP_POS", i8 9, i8 0, !12, i8 2, i32 1, i8 4, i32 3, i8 0, !18}
!18 = !{i32 3, i32 11}
!19 = !{i32 4, !"PREV_CLIP_POS", i8 9, i8 0, !12, i8 2, i32 1, i8 4, i32 4, i8 0, !18}
!20 = !{i32 5, !"PACKED_TRI_DATA", i8 5, i8 0, !12, i8 1, i32 1, i8 4, i32 5, i8 0, null}
!21 = !{i32 6, !"SV_IsFrontFace", i8 5, i8 13, !12, i8 1, i32 1, i8 1, i32 2, i8 1, !16}
!22 = !{!23, !24, !26}
!23 = !{i32 0, !"SV_Target", i8 5, i8 16, !12, i8 0, i32 1, i8 1, i32 0, i8 0, !16}
!24 = !{i32 1, !"SV_Target", i8 5, i8 16, !25, i8 0, i32 1, i8 1, i32 1, i8 0, !16}
!25 = !{i32 1}
!26 = !{i32 2, !"SV_Target", i8 9, i8 16, !27, i8 0, i32 1, i8 4, i32 2, i8 0, !28}
!27 = !{i32 2}
!28 = !{i32 3, i32 15}

