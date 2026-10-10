;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy  
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
; shader hash: d5c7603f36e2d28e2e1ae7a6ea7f0d7e
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
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb2     1
;                                   texture    byte         r/o      T0      t9,space1     1
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
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %5 = icmp ne i32 %4, 0
  %6 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %7 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %8 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call i32 @dx.op.loadInput.i32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call i32 @dx.op.loadInput.i32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %2, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %18 = extractvalue %dx.types.CBufRet.f32 %17, 0
  %19 = select i1 %5, float 1.000000e+00, float -1.000000e+00
  %20 = call float @dx.op.dot3.f32(i32 55, float %14, float %15, float %16, float %14, float %15, float %16)  ; Dot3(ax,ay,az,bx,by,bz)
  %21 = bitcast float %20 to i32
  %22 = ashr i32 %21, 1
  %23 = sub nsw i32 1597250115, %22
  %24 = bitcast i32 %23 to float
  %25 = fmul fast float %14, %19
  %26 = fmul fast float %25, %24
  %27 = fmul fast float %15, %19
  %28 = fmul fast float %27, %24
  %29 = fmul fast float %16, %19
  %30 = fmul fast float %29, %24
  %31 = and i32 %12, 255
  %32 = uitofp i32 %31 to float
  %33 = fmul fast float %32, 0x3F70101020000000
  %34 = lshr i32 %12, 8
  %35 = uitofp i32 %34 to float
  %36 = fmul fast float %35, 0x3F70101020000000
  %37 = icmp eq i32 %12, 0
  br i1 %37, label %73, label %38

; <label>:38                                      ; preds = %0
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = fmul fast float %39, %18
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = fmul fast float %41, %18
  %43 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %2, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.f32 %43, 2
  %45 = extractvalue %dx.types.CBufRet.f32 %43, 3
  %46 = fmul fast float %42, %44
  %47 = fmul fast float %40, %45
  %48 = fmul fast float %46, 1.024000e+03
  %49 = fmul fast float %47, 1.024000e+03
  %50 = fadd fast float %48, -5.120000e+02
  %51 = fadd fast float %49, -5.120000e+02
  %52 = fmul fast float %46, 0x4081BEDF00000000
  %53 = fadd fast float %52, 0xC071BEDF00000000
  %54 = call float @dx.op.unary.f32(i32 22, float %53)  ; Frc(value)
  %55 = fmul fast float %50, %54
  %56 = fadd fast float %55, %51
  %57 = fmul fast float %47, 0x4073BEBE20000000
  %58 = fadd fast float %57, 0xC063BEBE20000000
  %59 = call float @dx.op.unary.f32(i32 22, float %58)  ; Frc(value)
  %60 = fmul fast float %51, %59
  %61 = fadd fast float %60, %50
  %62 = fmul fast float %56, %61
  %63 = call float @dx.op.unary.f32(i32 22, float %62)  ; Frc(value)
  %64 = mul i32 %12, 100
  %65 = add i32 %64, 12
  %66 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %65, i32 undef)  ; BufferLoad(srv,index,wot)
  %67 = extractvalue %dx.types.ResRet.i32 %66, 0
  %68 = and i32 %67, 255
  %69 = uitofp i32 %68 to float
  %70 = fmul fast float %69, 0x3F70101020000000
  %71 = fcmp fast olt float %63, %70
  br i1 %71, label %72, label %73

; <label>:72                                      ; preds = %38
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %73

; <label>:73                                      ; preds = %72, %38, %0
  %74 = fdiv fast float %9, %11
  %75 = fdiv fast float %10, %11
  %76 = fdiv fast float %6, %8
  %77 = fdiv fast float %7, %8
  %78 = fsub fast float %74, %76
  %79 = fsub fast float %75, %77
  %80 = fmul fast float %78, 5.000000e-01
  %81 = fmul fast float %79, -5.000000e-01
  %82 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 240)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.i32 %82, 0
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %124

; <label>:85                                      ; preds = %73
  %86 = fmul fast float %78, 9.600000e+02
  %87 = fmul fast float %79, -5.400000e+02
  %88 = call float @dx.op.unary.f32(i32 6, float %86)  ; FAbs(value)
  %89 = call float @dx.op.unary.f32(i32 6, float %87)  ; FAbs(value)
  %90 = fadd fast float %88, -3.000000e+00
  %91 = fadd fast float %89, -3.000000e+00
  %92 = fmul fast float %90, 0x3F8A98EF60000000
  %93 = fmul fast float %91, 0x3F8A98EF60000000
  %94 = call float @dx.op.unary.f32(i32 7, float %92)  ; Saturate(value)
  %95 = call float @dx.op.unary.f32(i32 7, float %93)  ; Saturate(value)
  %96 = fmul fast float %88, 0x3FD5555560000000
  %97 = fmul fast float %89, 0x3FD5555560000000
  %98 = call float @dx.op.unary.f32(i32 7, float %96)  ; Saturate(value)
  %99 = call float @dx.op.unary.f32(i32 7, float %97)  ; Saturate(value)
  %100 = call float @dx.op.unary.f32(i32 24, float %94)  ; Sqrt(value)
  %101 = call float @dx.op.unary.f32(i32 24, float %95)  ; Sqrt(value)
  %102 = fsub fast float %98, %100
  %103 = fsub fast float %99, %101
  %104 = fmul fast float %102, 5.000000e-01
  %105 = fmul fast float %103, 5.000000e-01
  %106 = fadd fast float %104, %100
  %107 = fadd fast float %105, %101
  %108 = fsub fast float -0.000000e+00, %106
  %109 = fsub fast float -0.000000e+00, %107
  %110 = fcmp fast olt float %86, 0.000000e+00
  %111 = fcmp fast olt float %87, 0.000000e+00
  %112 = select i1 %110, float 0.000000e+00, float 1.000000e+00
  %113 = select i1 %111, float 0.000000e+00, float 1.000000e+00
  %114 = fcmp fast une float %112, 0.000000e+00
  %115 = fcmp fast une float %113, 0.000000e+00
  %116 = select i1 %114, float %106, float %108
  %117 = select i1 %115, float %107, float %109
  %118 = fmul fast float %116, 5.000000e-01
  %119 = fmul fast float %117, 5.000000e-01
  %120 = fadd fast float %118, 0x3FE0101020000000
  %121 = fadd fast float %119, 0x3FE0101020000000
  %122 = call float @dx.op.unary.f32(i32 7, float %120)  ; Saturate(value)
  %123 = call float @dx.op.unary.f32(i32 7, float %121)  ; Saturate(value)
  br label %124

; <label>:124                                     ; preds = %85, %73
  %125 = phi float [ %122, %85 ], [ %80, %73 ]
  %126 = phi float [ %123, %85 ], [ %81, %73 ]
  %127 = call float @dx.op.unary.f32(i32 6, float %26)  ; FAbs(value)
  %128 = call float @dx.op.unary.f32(i32 6, float %28)  ; FAbs(value)
  %129 = fadd fast float %128, %127
  %130 = call float @dx.op.unary.f32(i32 6, float %30)  ; FAbs(value)
  %131 = fadd fast float %129, %130
  %132 = fdiv fast float %26, %131
  %133 = fdiv fast float %28, %131
  %134 = fdiv fast float %30, %131
  %135 = fcmp fast oge float %134, 0.000000e+00
  %136 = call float @dx.op.unary.f32(i32 6, float %133)  ; FAbs(value)
  %137 = call float @dx.op.unary.f32(i32 6, float %132)  ; FAbs(value)
  %138 = fsub fast float 1.000000e+00, %136
  %139 = fsub fast float 1.000000e+00, %137
  %140 = fcmp fast oge float %132, 0.000000e+00
  %141 = select i1 %140, float 1.000000e+00, float -1.000000e+00
  %142 = fcmp fast oge float %133, 0.000000e+00
  %143 = select i1 %142, float 1.000000e+00, float -1.000000e+00
  %144 = fmul fast float %138, %141
  %145 = fmul fast float %139, %143
  %146 = select i1 %135, float %132, float %144
  %147 = select i1 %135, float %133, float %145
  %148 = fmul fast float %146, 1.275000e+02
  %149 = fmul fast float %147, 1.275000e+02
  %150 = fadd fast float %148, 1.275000e+02
  %151 = fadd fast float %149, 1.275000e+02
  %152 = call float @dx.op.unary.f32(i32 26, float %150)  ; Round_ne(value)
  %153 = call float @dx.op.unary.f32(i32 26, float %151)  ; Round_ne(value)
  %154 = fptoui float %152 to i32
  %155 = fptoui float %153 to i32
  %156 = shl i32 %155, 8
  %157 = or i32 %156, %154
  call void @dx.op.storeOutput.i32(i32 5, i32 0, i32 0, i8 0, i32 %13)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 1, i32 0, i8 0, i32 %157)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 0, float %33)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 1, float %36)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 2, float %125)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 3, float %126)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind
declare void @dx.op.discard(i32, i1) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

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
!dx.viewIdState = !{!10}
!dx.entryPoints = !{!11}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !7, null}
!5 = !{!6}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 9, i32 1, i32 11, i32 0, null}
!7 = !{!8, !9}
!8 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!9 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 224, null}
!10 = !{[26 x i32] [i32 24, i32 12, i32 0, i32 0, i32 0, i32 0, i32 16, i32 16, i32 16, i32 0, i32 1, i32 0, i32 768, i32 16, i32 1024, i32 2048, i32 0, i32 3072, i32 1024, i32 2048, i32 0, i32 3072, i32 0, i32 0, i32 0, i32 0]}
!11 = !{void ()* @ps_main, !"ps_main", !12, !4, !35}
!12 = !{!13, !28, null}
!13 = !{!14, !17, !19, !21, !23, !25, !26, !27}
!14 = !{i32 0, !"SV_Position", i8 9, i8 3, !15, i8 4, i32 1, i8 4, i32 0, i8 0, !16}
!15 = !{i32 0}
!16 = !{i32 3, i32 3}
!17 = !{i32 1, !"NORMAL", i8 9, i8 0, !15, i8 2, i32 1, i8 3, i32 1, i8 0, !18}
!18 = !{i32 3, i32 7}
!19 = !{i32 2, !"TRIID", i8 5, i8 0, !15, i8 1, i32 1, i8 1, i32 2, i8 0, !20}
!20 = !{i32 3, i32 1}
!21 = !{i32 3, !"ENTITY_IDS", i8 5, i8 0, !15, i8 1, i32 1, i8 2, i32 2, i8 1, !22}
!22 = !{i32 3, i32 2}
!23 = !{i32 4, !"CLIP_POS", i8 9, i8 0, !15, i8 2, i32 1, i8 4, i32 3, i8 0, !24}
!24 = !{i32 3, i32 11}
!25 = !{i32 5, !"PREV_CLIP_POS", i8 9, i8 0, !15, i8 2, i32 1, i8 4, i32 4, i8 0, !24}
!26 = !{i32 6, !"PACKED_TRI_DATA", i8 5, i8 0, !15, i8 1, i32 1, i8 4, i32 5, i8 0, null}
!27 = !{i32 7, !"SV_IsFrontFace", i8 5, i8 13, !15, i8 1, i32 1, i8 1, i32 2, i8 3, !20}
!28 = !{!29, !30, !32}
!29 = !{i32 0, !"SV_Target", i8 5, i8 16, !15, i8 0, i32 1, i8 1, i32 0, i8 0, !20}
!30 = !{i32 1, !"SV_Target", i8 5, i8 16, !31, i8 0, i32 1, i8 1, i32 1, i8 0, !20}
!31 = !{i32 1}
!32 = !{i32 2, !"SV_Target", i8 9, i8 16, !33, i8 0, i32 1, i8 4, i32 2, i8 0, !34}
!33 = !{i32 2}
!34 = !{i32 3, i32 15}
!35 = !{i32 0, i64 16}

