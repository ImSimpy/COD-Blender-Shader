;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float       
; NORMAL                   0   xyz         1     NONE   float   xyz 
; TRIID                    0   x           2     NONE    uint   x   
; ENTITY_IDS               0    yz         2     NONE    uint     z 
; SV_IsFrontFace           0      w        2    FFACE    uint      w
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
; shader hash: 2007a79732460f8f152a564267b69af0
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
;   output 4 depends on inputs: { 4, 5, 6, 11 }
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
  %2 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %3 = icmp ne i32 %2, 0
  %4 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %5 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %6 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %7 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %8 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call i32 @dx.op.loadInput.i32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call i32 @dx.op.loadInput.i32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = select i1 %3, float 1.000000e+00, float -1.000000e+00
  %16 = call float @dx.op.dot3.f32(i32 55, float %12, float %13, float %14, float %12, float %13, float %14)  ; Dot3(ax,ay,az,bx,by,bz)
  %17 = bitcast float %16 to i32
  %18 = ashr i32 %17, 1
  %19 = sub nsw i32 1597250115, %18
  %20 = bitcast i32 %19 to float
  %21 = fmul fast float %12, %15
  %22 = fmul fast float %21, %20
  %23 = fmul fast float %13, %15
  %24 = fmul fast float %23, %20
  %25 = fmul fast float %14, %15
  %26 = fmul fast float %25, %20
  %27 = and i32 %10, 255
  %28 = uitofp i32 %27 to float
  %29 = fmul fast float %28, 0x3F70101020000000
  %30 = lshr i32 %10, 8
  %31 = uitofp i32 %30 to float
  %32 = fmul fast float %31, 0x3F70101020000000
  %33 = fdiv fast float %7, %9
  %34 = fdiv fast float %8, %9
  %35 = fdiv fast float %4, %6
  %36 = fdiv fast float %5, %6
  %37 = fsub fast float %33, %35
  %38 = fsub fast float %34, %36
  %39 = fmul fast float %37, 5.000000e-01
  %40 = fmul fast float %38, -5.000000e-01
  %41 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %1, i32 240)  ; CBufferLoadLegacy(handle,regIndex)
  %42 = extractvalue %dx.types.CBufRet.i32 %41, 0
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %83

; <label>:44                                      ; preds = %0
  %45 = fmul fast float %37, 9.600000e+02
  %46 = fmul fast float %38, -5.400000e+02
  %47 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %48 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %49 = fadd fast float %47, -3.000000e+00
  %50 = fadd fast float %48, -3.000000e+00
  %51 = fmul fast float %49, 0x3F8A98EF60000000
  %52 = fmul fast float %50, 0x3F8A98EF60000000
  %53 = call float @dx.op.unary.f32(i32 7, float %51)  ; Saturate(value)
  %54 = call float @dx.op.unary.f32(i32 7, float %52)  ; Saturate(value)
  %55 = fmul fast float %47, 0x3FD5555560000000
  %56 = fmul fast float %48, 0x3FD5555560000000
  %57 = call float @dx.op.unary.f32(i32 7, float %55)  ; Saturate(value)
  %58 = call float @dx.op.unary.f32(i32 7, float %56)  ; Saturate(value)
  %59 = call float @dx.op.unary.f32(i32 24, float %53)  ; Sqrt(value)
  %60 = call float @dx.op.unary.f32(i32 24, float %54)  ; Sqrt(value)
  %61 = fsub fast float %57, %59
  %62 = fsub fast float %58, %60
  %63 = fmul fast float %61, 5.000000e-01
  %64 = fmul fast float %62, 5.000000e-01
  %65 = fadd fast float %63, %59
  %66 = fadd fast float %64, %60
  %67 = fsub fast float -0.000000e+00, %65
  %68 = fsub fast float -0.000000e+00, %66
  %69 = fcmp fast olt float %45, 0.000000e+00
  %70 = fcmp fast olt float %46, 0.000000e+00
  %71 = select i1 %69, float 0.000000e+00, float 1.000000e+00
  %72 = select i1 %70, float 0.000000e+00, float 1.000000e+00
  %73 = fcmp fast une float %71, 0.000000e+00
  %74 = fcmp fast une float %72, 0.000000e+00
  %75 = select i1 %73, float %65, float %67
  %76 = select i1 %74, float %66, float %68
  %77 = fmul fast float %75, 5.000000e-01
  %78 = fmul fast float %76, 5.000000e-01
  %79 = fadd fast float %77, 0x3FE0101020000000
  %80 = fadd fast float %78, 0x3FE0101020000000
  %81 = call float @dx.op.unary.f32(i32 7, float %79)  ; Saturate(value)
  %82 = call float @dx.op.unary.f32(i32 7, float %80)  ; Saturate(value)
  br label %83

; <label>:83                                      ; preds = %44, %0
  %84 = phi float [ %81, %44 ], [ %39, %0 ]
  %85 = phi float [ %82, %44 ], [ %40, %0 ]
  %86 = call float @dx.op.unary.f32(i32 6, float %22)  ; FAbs(value)
  %87 = call float @dx.op.unary.f32(i32 6, float %24)  ; FAbs(value)
  %88 = fadd fast float %87, %86
  %89 = call float @dx.op.unary.f32(i32 6, float %26)  ; FAbs(value)
  %90 = fadd fast float %88, %89
  %91 = fdiv fast float %22, %90
  %92 = fdiv fast float %24, %90
  %93 = fdiv fast float %26, %90
  %94 = fcmp fast oge float %93, 0.000000e+00
  %95 = call float @dx.op.unary.f32(i32 6, float %92)  ; FAbs(value)
  %96 = call float @dx.op.unary.f32(i32 6, float %91)  ; FAbs(value)
  %97 = fsub fast float 1.000000e+00, %95
  %98 = fsub fast float 1.000000e+00, %96
  %99 = fcmp fast oge float %91, 0.000000e+00
  %100 = select i1 %99, float 1.000000e+00, float -1.000000e+00
  %101 = fcmp fast oge float %92, 0.000000e+00
  %102 = select i1 %101, float 1.000000e+00, float -1.000000e+00
  %103 = fmul fast float %97, %100
  %104 = fmul fast float %98, %102
  %105 = select i1 %94, float %91, float %103
  %106 = select i1 %94, float %92, float %104
  %107 = fmul fast float %105, 1.275000e+02
  %108 = fmul fast float %106, 1.275000e+02
  %109 = fadd fast float %107, 1.275000e+02
  %110 = fadd fast float %108, 1.275000e+02
  %111 = call float @dx.op.unary.f32(i32 26, float %109)  ; Round_ne(value)
  %112 = call float @dx.op.unary.f32(i32 26, float %110)  ; Round_ne(value)
  %113 = fptoui float %111 to i32
  %114 = fptoui float %112 to i32
  %115 = shl i32 %114, 8
  %116 = or i32 %115, %113
  call void @dx.op.storeOutput.i32(i32 5, i32 0, i32 0, i8 0, i32 %11)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 1, i32 0, i8 0, i32 %116)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 0, float %29)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 1, float %32)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 2, float %84)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 3, float %85)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!7 = !{[26 x i32] [i32 24, i32 12, i32 0, i32 0, i32 0, i32 0, i32 16, i32 16, i32 16, i32 0, i32 1, i32 0, i32 768, i32 16, i32 1024, i32 2048, i32 0, i32 3072, i32 1024, i32 2048, i32 0, i32 3072, i32 0, i32 0, i32 0, i32 0]}
!8 = !{void ()* @ps_main, !"ps_main", !9, !4, null}
!9 = !{!10, !24, null}
!10 = !{!11, !13, !15, !17, !19, !21, !22, !23}
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
!23 = !{i32 7, !"SV_IsFrontFace", i8 5, i8 13, !12, i8 1, i32 1, i8 1, i32 2, i8 3, !16}
!24 = !{!25, !26, !28}
!25 = !{i32 0, !"SV_Target", i8 5, i8 16, !12, i8 0, i32 1, i8 1, i32 0, i8 0, !16}
!26 = !{i32 1, !"SV_Target", i8 5, i8 16, !27, i8 0, i32 1, i8 1, i32 1, i8 0, !16}
!27 = !{i32 1}
!28 = !{i32 2, !"SV_Target", i8 9, i8 16, !29, i8 0, i32 1, i8 4, i32 2, i8 0, !30}
!29 = !{i32 2}
!30 = !{i32 3, i32 15}

