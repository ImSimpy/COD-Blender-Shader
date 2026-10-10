;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float       
; NORMAL                   0   xyz         1     NONE   float   xyz 
; TRIID                    0   x           2     NONE    uint   x   
; ENTITY_IDS               0    yz         2     NONE    uint     z 
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
; shader hash: 0ef6f7893feaefd09ff4648f166367a7
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
; ENTITY_IDS               0        nointerpolation       
; CLIP_POS                 0                 linear       
; PREV_CLIP_POS            0                 linear       
; PACKED_TRI_DATA          0        nointerpolation       
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
;   output 4 depends on inputs: { 4, 5, 6 }
;   output 8 depends on inputs: { 10 }
;   output 9 depends on inputs: { 10 }
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
  %2 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %3 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %4 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %5 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %6 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %7 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %8 = call i32 @dx.op.loadInput.i32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call i32 @dx.op.loadInput.i32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.dot3.f32(i32 55, float %10, float %11, float %12, float %10, float %11, float %12)  ; Dot3(ax,ay,az,bx,by,bz)
  %14 = bitcast float %13 to i32
  %15 = ashr i32 %14, 1
  %16 = sub nsw i32 1597250115, %15
  %17 = bitcast i32 %16 to float
  %18 = fmul fast float %17, %10
  %19 = fmul fast float %17, %11
  %20 = fmul fast float %17, %12
  %21 = and i32 %8, 255
  %22 = uitofp i32 %21 to float
  %23 = fmul fast float %22, 0x3F70101020000000
  %24 = lshr i32 %8, 8
  %25 = uitofp i32 %24 to float
  %26 = fmul fast float %25, 0x3F70101020000000
  %27 = fdiv fast float %5, %7
  %28 = fdiv fast float %6, %7
  %29 = fdiv fast float %2, %4
  %30 = fdiv fast float %3, %4
  %31 = fsub fast float %27, %29
  %32 = fsub fast float %28, %30
  %33 = fmul fast float %31, 5.000000e-01
  %34 = fmul fast float %32, -5.000000e-01
  %35 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %1, i32 240)  ; CBufferLoadLegacy(handle,regIndex)
  %36 = extractvalue %dx.types.CBufRet.i32 %35, 0
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %77

; <label>:38                                      ; preds = %0
  %39 = fmul fast float %31, 9.600000e+02
  %40 = fmul fast float %32, -5.400000e+02
  %41 = call float @dx.op.unary.f32(i32 6, float %39)  ; FAbs(value)
  %42 = call float @dx.op.unary.f32(i32 6, float %40)  ; FAbs(value)
  %43 = fadd fast float %41, -3.000000e+00
  %44 = fadd fast float %42, -3.000000e+00
  %45 = fmul fast float %43, 0x3F8A98EF60000000
  %46 = fmul fast float %44, 0x3F8A98EF60000000
  %47 = call float @dx.op.unary.f32(i32 7, float %45)  ; Saturate(value)
  %48 = call float @dx.op.unary.f32(i32 7, float %46)  ; Saturate(value)
  %49 = fmul fast float %41, 0x3FD5555560000000
  %50 = fmul fast float %42, 0x3FD5555560000000
  %51 = call float @dx.op.unary.f32(i32 7, float %49)  ; Saturate(value)
  %52 = call float @dx.op.unary.f32(i32 7, float %50)  ; Saturate(value)
  %53 = call float @dx.op.unary.f32(i32 24, float %47)  ; Sqrt(value)
  %54 = call float @dx.op.unary.f32(i32 24, float %48)  ; Sqrt(value)
  %55 = fsub fast float %51, %53
  %56 = fsub fast float %52, %54
  %57 = fmul fast float %55, 5.000000e-01
  %58 = fmul fast float %56, 5.000000e-01
  %59 = fadd fast float %57, %53
  %60 = fadd fast float %58, %54
  %61 = fsub fast float -0.000000e+00, %59
  %62 = fsub fast float -0.000000e+00, %60
  %63 = fcmp fast olt float %39, 0.000000e+00
  %64 = fcmp fast olt float %40, 0.000000e+00
  %65 = select i1 %63, float 0.000000e+00, float 1.000000e+00
  %66 = select i1 %64, float 0.000000e+00, float 1.000000e+00
  %67 = fcmp fast une float %65, 0.000000e+00
  %68 = fcmp fast une float %66, 0.000000e+00
  %69 = select i1 %67, float %59, float %61
  %70 = select i1 %68, float %60, float %62
  %71 = fmul fast float %69, 5.000000e-01
  %72 = fmul fast float %70, 5.000000e-01
  %73 = fadd fast float %71, 0x3FE0101020000000
  %74 = fadd fast float %72, 0x3FE0101020000000
  %75 = call float @dx.op.unary.f32(i32 7, float %73)  ; Saturate(value)
  %76 = call float @dx.op.unary.f32(i32 7, float %74)  ; Saturate(value)
  br label %77

; <label>:77                                      ; preds = %38, %0
  %78 = phi float [ %75, %38 ], [ %33, %0 ]
  %79 = phi float [ %76, %38 ], [ %34, %0 ]
  %80 = call float @dx.op.unary.f32(i32 6, float %18)  ; FAbs(value)
  %81 = call float @dx.op.unary.f32(i32 6, float %19)  ; FAbs(value)
  %82 = fadd fast float %81, %80
  %83 = call float @dx.op.unary.f32(i32 6, float %20)  ; FAbs(value)
  %84 = fadd fast float %82, %83
  %85 = fdiv fast float %18, %84
  %86 = fdiv fast float %19, %84
  %87 = fdiv fast float %20, %84
  %88 = fcmp fast oge float %87, 0.000000e+00
  %89 = call float @dx.op.unary.f32(i32 6, float %86)  ; FAbs(value)
  %90 = call float @dx.op.unary.f32(i32 6, float %85)  ; FAbs(value)
  %91 = fsub fast float 1.000000e+00, %89
  %92 = fsub fast float 1.000000e+00, %90
  %93 = fcmp fast oge float %85, 0.000000e+00
  %94 = select i1 %93, float 1.000000e+00, float -1.000000e+00
  %95 = fcmp fast oge float %86, 0.000000e+00
  %96 = select i1 %95, float 1.000000e+00, float -1.000000e+00
  %97 = fmul fast float %91, %94
  %98 = fmul fast float %92, %96
  %99 = select i1 %88, float %85, float %97
  %100 = select i1 %88, float %86, float %98
  %101 = fmul fast float %99, 1.275000e+02
  %102 = fmul fast float %100, 1.275000e+02
  %103 = fadd fast float %101, 1.275000e+02
  %104 = fadd fast float %102, 1.275000e+02
  %105 = call float @dx.op.unary.f32(i32 26, float %103)  ; Round_ne(value)
  %106 = call float @dx.op.unary.f32(i32 26, float %104)  ; Round_ne(value)
  %107 = fptoui float %105 to i32
  %108 = fptoui float %106 to i32
  %109 = shl i32 %108, 8
  %110 = or i32 %109, %107
  call void @dx.op.storeOutput.i32(i32 5, i32 0, i32 0, i8 0, i32 %9)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 1, i32 0, i8 0, i32 %110)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 0, float %23)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 1, float %26)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 2, float %78)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 3, float %79)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!7 = !{[26 x i32] [i32 24, i32 12, i32 0, i32 0, i32 0, i32 0, i32 16, i32 16, i32 16, i32 0, i32 1, i32 0, i32 768, i32 0, i32 1024, i32 2048, i32 0, i32 3072, i32 1024, i32 2048, i32 0, i32 3072, i32 0, i32 0, i32 0, i32 0]}
!8 = !{void ()* @ps_main, !"ps_main", !9, !4, null}
!9 = !{!10, !23, null}
!10 = !{!11, !13, !15, !17, !19, !21, !22}
!11 = !{i32 0, !"SV_Position", i8 9, i8 3, !12, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!12 = !{i32 0}
!13 = !{i32 1, !"NORMAL", i8 9, i8 0, !12, i8 2, i32 1, i8 3, i32 1, i8 0, !14}
!14 = !{i32 3, i32 7}
!15 = !{i32 2, !"TRIID", i8 5, i8 0, !12, i8 1, i32 1, i8 1, i32 2, i8 0, !16}
!16 = !{i32 3, i32 1}
!17 = !{i32 3, !"ENTITY_IDS", i8 5, i8 0, !12, i8 1, i32 1, i8 2, i32 2, i8 1, !18}
!18 = !{i32 3, i32 2}
!19 = !{i32 4, !"CLIP_POS", i8 9, i8 0, !12, i8 2, i32 1, i8 4, i32 3, i8 0, !20}
!20 = !{i32 3, i32 11}
!21 = !{i32 5, !"PREV_CLIP_POS", i8 9, i8 0, !12, i8 2, i32 1, i8 4, i32 4, i8 0, !20}
!22 = !{i32 6, !"PACKED_TRI_DATA", i8 5, i8 0, !12, i8 1, i32 1, i8 4, i32 5, i8 0, null}
!23 = !{!24, !25, !27}
!24 = !{i32 0, !"SV_Target", i8 5, i8 16, !12, i8 0, i32 1, i8 1, i32 0, i8 0, !16}
!25 = !{i32 1, !"SV_Target", i8 5, i8 16, !26, i8 0, i32 1, i8 1, i32 1, i8 0, !16}
!26 = !{i32 1}
!27 = !{i32 2, !"SV_Target", i8 9, i8 16, !28, i8 0, i32 1, i8 4, i32 2, i8 0, !29}
!28 = !{i32 2}
!29 = !{i32 3, i32 15}

