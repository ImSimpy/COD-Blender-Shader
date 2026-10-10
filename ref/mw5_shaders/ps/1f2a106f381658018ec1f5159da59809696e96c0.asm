;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy  
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 2     zw        2     NONE   float     zw
; TEXCOORD                 3   xy          3     NONE   float       
; TEXCOORD                 4     zw        3     NONE   float       
; TEXCOORD                 5   xy          4     NONE   float       
; TEXCOORD                 6     zw        4     NONE   float       
; TEXCOORD                 1   xy          5     NONE   float   xy  
; TEXCOORD                 7     zw        5     NONE   float     zw
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 8afc7401ba9b0393dac974da80a21ae6
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
; TEXCOORD                 2                 linear       
; TEXCOORD                 3                 linear       
; TEXCOORD                 4                 linear       
; TEXCOORD                 5                 linear       
; TEXCOORD                 6                 linear       
; TEXCOORD                 1                 linear       
; TEXCOORD                 7                 linear       
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
;   [11728 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [320 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [144 x i8] (type annotation not present)
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
;                                   cbuffer      NA          NA     CB2            cb1     1
;                                   sampler      NA          NA      S0             s1     1
;                                   sampler      NA          NA      S1             s2     1
;                                   sampler      NA          NA      S2             s3     1
;                                   sampler      NA          NA      S3             s4     1
;                                   sampler      NA          NA      S4             s5     1
;                                   texture     f32          3d      T0     t74,space2     1
;                                   texture     f32          2d      T1     t73,space2     1
;                                   texture     f32          2d      T2     t70,space2     1
;                                   texture     f32          2d      T3             t0     1
;                                   texture     f32          2d      T4             t1     1
;                                   texture     f32          2d      T5             t2     1
;
;
; ViewId state:
;
; Number of inputs: 24, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 4, 5, 6, 7, 8, 9, 10, 11, 20, 21, 22, 23 }
;   output 1 depends on inputs: { 0, 1, 4, 5, 6, 7, 8, 9, 10, 11, 20, 21, 22, 23 }
;   output 2 depends on inputs: { 0, 1, 4, 5, 6, 7, 8, 9, 10, 11, 20, 21, 22, 23 }
;   output 3 depends on inputs: { 0, 1, 7, 8, 9, 10, 11, 20, 21 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%perObject = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 70, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 73, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 74, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %30 = extractvalue %dx.types.CBufRet.f32 %29, 3
  %31 = fcmp fast ogt float %30, 0.000000e+00
  br i1 %31, label %32, label %82, !dx.controlflow.hints !49

; <label>:32                                      ; preds = %0
  %33 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %34 = extractvalue %dx.types.CBufRet.f32 %33, 3
  %35 = fmul fast float %34, 1.000000e+01
  %36 = call float @dx.op.unary.f32(i32 27, float %35)  ; Round_ni(value)
  %37 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %38 = extractvalue %dx.types.CBufRet.f32 %37, 0
  %39 = extractvalue %dx.types.CBufRet.f32 %37, 1
  %40 = fmul fast float %38, %27
  %41 = fmul fast float %39, %28
  %42 = call float @dx.op.unary.f32(i32 27, float %40)  ; Round_ni(value)
  %43 = call float @dx.op.unary.f32(i32 27, float %41)  ; Round_ni(value)
  %44 = fmul fast float %36, 0x4002B851E0000000
  %45 = call float @dx.op.unary.f32(i32 22, float %44)  ; Frc(value)
  %46 = fadd fast float %45, 0x3FB99999A0000000
  %47 = fadd fast float %46, %42
  %48 = fadd fast float %46, %43
  %49 = fmul fast float %47, 0x3FE1BEDF00000000
  %50 = call float @dx.op.unary.f32(i32 22, float %49)  ; Frc(value)
  %51 = fmul fast float %47, %50
  %52 = fadd fast float %51, %48
  %53 = fmul fast float %48, 0x3FD3BEBE20000000
  %54 = call float @dx.op.unary.f32(i32 22, float %53)  ; Frc(value)
  %55 = fmul fast float %48, %54
  %56 = fadd fast float %55, %47
  %57 = fmul fast float %52, %56
  %58 = call float @dx.op.unary.f32(i32 22, float %57)  ; Frc(value)
  %59 = extractvalue %dx.types.CBufRet.f32 %37, 3
  %60 = bitcast float %59 to i32
  %61 = and i32 %60, 255
  %62 = uitofp i32 %61 to float
  %63 = fmul fast float %58, 0x4085373340000000
  %64 = call float @dx.op.unary.f32(i32 22, float %63)  ; Frc(value)
  %65 = fmul fast float %62, 0x3F6CE9B6A0000000
  %66 = fcmp fast olt float %64, %65
  br i1 %66, label %67, label %82, !dx.controlflow.hints !50

; <label>:67                                      ; preds = %32
  %68 = fdiv fast float %64, %65
  %69 = fmul fast float %68, 2.000000e+00
  %70 = fadd fast float %69, -1.000000e+00
  %71 = lshr i32 %60, 8
  %72 = and i32 %71, 255
  %73 = uitofp i32 %72 to float
  %74 = call float @dx.op.unary.f32(i32 83, float %21)  ; DerivCoarseX(value)
  %75 = call float @dx.op.unary.f32(i32 83, float %22)  ; DerivCoarseX(value)
  %76 = fmul fast float %70, %74
  %77 = fmul fast float %76, %73
  %78 = fmul fast float %75, %70
  %79 = fmul fast float %78, %73
  %80 = fadd fast float %77, %21
  %81 = fadd fast float %79, %22
  br label %82

; <label>:82                                      ; preds = %67, %32, %0
  %83 = phi float [ %80, %67 ], [ %21, %32 ], [ %21, %0 ]
  %84 = phi float [ %81, %67 ], [ %22, %32 ], [ %22, %0 ]
  %85 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3, i32 0)  ; GetDimensions(handle,mipLevel)
  %86 = extractvalue %dx.types.Dimensions %85, 0
  %87 = sitofp i32 %86 to float
  %88 = extractvalue %dx.types.Dimensions %85, 1
  %89 = sitofp i32 %88 to float
  %90 = fdiv fast float 5.000000e-01, %87
  %91 = fdiv fast float 5.000000e-01, %89
  %92 = fsub fast float 1.000000e+00, %90
  %93 = call float @dx.op.binary.f32(i32 35, float %83, float %90)  ; FMax(a,b)
  %94 = call float @dx.op.binary.f32(i32 36, float %93, float %92)  ; FMin(a,b)
  %95 = fsub fast float 1.000000e+00, %91
  %96 = call float @dx.op.binary.f32(i32 35, float %84, float %91)  ; FMax(a,b)
  %97 = call float @dx.op.binary.f32(i32 36, float %96, float %95)  ; FMin(a,b)
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 3
  %100 = bitcast float %99 to i32
  %101 = and i32 %100, 1
  %102 = icmp ne i32 %101, 0
  %103 = select i1 %102, float %94, float %83
  %104 = and i32 %100, 2
  %105 = icmp ne i32 %104, 0
  %106 = select i1 %105, float %97, float %84
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 3
  %109 = bitcast float %108 to i32
  %110 = and i32 %109, 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %118, label %112, !dx.controlflow.hints !51

; <label>:112                                     ; preds = %82
  %113 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %7, float %103, float %106, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %114 = extractvalue %dx.types.ResRet.f32 %113, 0
  %115 = extractvalue %dx.types.ResRet.f32 %113, 1
  %116 = extractvalue %dx.types.ResRet.f32 %113, 2
  %117 = extractvalue %dx.types.ResRet.f32 %113, 3
  br label %126

; <label>:118                                     ; preds = %82
  %119 = call float @dx.op.unary.f32(i32 22, float %103)  ; Frc(value)
  %120 = call float @dx.op.unary.f32(i32 22, float %106)  ; Frc(value)
  %121 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %11, float %119, float %120, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %122 = extractvalue %dx.types.ResRet.f32 %121, 0
  %123 = extractvalue %dx.types.ResRet.f32 %121, 1
  %124 = extractvalue %dx.types.ResRet.f32 %121, 2
  %125 = extractvalue %dx.types.ResRet.f32 %121, 3
  br label %126

; <label>:126                                     ; preds = %118, %112
  %127 = phi float [ %114, %112 ], [ %122, %118 ]
  %128 = phi float [ %115, %112 ], [ %123, %118 ]
  %129 = phi float [ %116, %112 ], [ %124, %118 ]
  %130 = phi float [ %117, %112 ], [ %125, %118 ]
  %131 = and i32 %109, 8
  %132 = icmp ne i32 %131, 0
  %133 = select i1 %132, float 1.000000e+00, float %127
  %134 = select i1 %132, float 1.000000e+00, float %128
  %135 = select i1 %132, float 1.000000e+00, float %129
  %136 = select i1 %132, float %127, float %130
  %137 = fmul fast float %133, %23
  %138 = fmul fast float %134, %24
  %139 = fmul fast float %135, %25
  %140 = fmul fast float %136, %26
  %141 = and i32 %109, 512
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %237, label %143

; <label>:143                                     ; preds = %126
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 3
  %146 = bitcast float %145 to i32
  %147 = and i32 %146, 65535
  %148 = call float @dx.op.legacyF16ToF32(i32 131, i32 %147)  ; LegacyF16ToF32(value)
  %149 = lshr i32 %146, 16
  %150 = call float @dx.op.legacyF16ToF32(i32 131, i32 %149)  ; LegacyF16ToF32(value)
  %151 = extractvalue %dx.types.CBufRet.f32 %144, 2
  %152 = bitcast float %151 to i32
  %153 = and i32 %152, 65535
  %154 = call float @dx.op.legacyF16ToF32(i32 131, i32 %153)  ; LegacyF16ToF32(value)
  %155 = lshr i32 %152, 16
  %156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %155)  ; LegacyF16ToF32(value)
  %157 = and i32 %109, 16
  %158 = icmp ne i32 %157, 0
  %159 = fcmp fast ogt float %148, 0.000000e+00
  %160 = fcmp fast ogt float %150, 0.000000e+00
  %161 = and i1 %159, %160
  %162 = fcmp fast ogt float %154, 0.000000e+00
  br i1 %161, label %163, label %223

; <label>:163                                     ; preds = %143
  br i1 %162, label %164, label %172

; <label>:164                                     ; preds = %163
  %165 = fmul fast float %150, %20
  %166 = fmul fast float %148, %19
  %167 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %8, float %166, float %165, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %168 = extractvalue %dx.types.ResRet.f32 %167, 0
  %169 = fsub fast float 1.000000e+00, %168
  %170 = select i1 %158, float %169, float %168
  %171 = fmul fast float %170, %154
  br label %172

; <label>:172                                     ; preds = %164, %163
  %173 = phi float [ %171, %164 ], [ 0.000000e+00, %163 ]
  %174 = fadd fast float %173, %156
  %175 = call float @dx.op.unary.f32(i32 7, float %174)  ; Saturate(value)
  br i1 %162, label %176, label %186

; <label>:176                                     ; preds = %172
  %177 = fmul fast float %150, %20
  %178 = fsub fast float 1.000000e+00, %19
  %179 = fmul fast float %148, %178
  %180 = fsub fast float 1.000000e+00, %179
  %181 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %8, float %180, float %177, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %182 = extractvalue %dx.types.ResRet.f32 %181, 1
  %183 = fsub fast float 1.000000e+00, %182
  %184 = select i1 %158, float %183, float %182
  %185 = fmul fast float %184, %154
  br label %186

; <label>:186                                     ; preds = %176, %172
  %187 = phi float [ %185, %176 ], [ 0.000000e+00, %172 ]
  %188 = fadd fast float %187, %156
  %189 = call float @dx.op.unary.f32(i32 7, float %188)  ; Saturate(value)
  %190 = fmul fast float %189, %175
  br i1 %162, label %191, label %203

; <label>:191                                     ; preds = %186
  %192 = fsub fast float 1.000000e+00, %20
  %193 = fmul fast float %150, %192
  %194 = fsub fast float 1.000000e+00, %193
  %195 = fsub fast float 1.000000e+00, %19
  %196 = fmul fast float %148, %195
  %197 = fsub fast float 1.000000e+00, %196
  %198 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %8, float %197, float %194, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %199 = extractvalue %dx.types.ResRet.f32 %198, 2
  %200 = fsub fast float 1.000000e+00, %199
  %201 = select i1 %158, float %200, float %199
  %202 = fmul fast float %201, %154
  br label %203

; <label>:203                                     ; preds = %191, %186
  %204 = phi float [ %202, %191 ], [ 0.000000e+00, %186 ]
  %205 = fadd fast float %204, %156
  %206 = call float @dx.op.unary.f32(i32 7, float %205)  ; Saturate(value)
  %207 = fmul fast float %190, %206
  br i1 %162, label %208, label %218

; <label>:208                                     ; preds = %203
  %209 = fsub fast float 1.000000e+00, %20
  %210 = fmul fast float %150, %209
  %211 = fsub fast float 1.000000e+00, %210
  %212 = fmul fast float %148, %19
  %213 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %8, float %212, float %211, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %214 = extractvalue %dx.types.ResRet.f32 %213, 3
  %215 = fsub fast float 1.000000e+00, %214
  %216 = select i1 %158, float %215, float %214
  %217 = fmul fast float %216, %154
  br label %218

; <label>:218                                     ; preds = %208, %203
  %219 = phi float [ %217, %208 ], [ 0.000000e+00, %203 ]
  %220 = fadd fast float %219, %156
  %221 = call float @dx.op.unary.f32(i32 7, float %220)  ; Saturate(value)
  %222 = fmul fast float %207, %221
  br label %234

; <label>:223                                     ; preds = %143
  br i1 %162, label %224, label %230

; <label>:224                                     ; preds = %223
  %225 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %8, float %19, float %20, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %226 = extractvalue %dx.types.ResRet.f32 %225, 0
  %227 = fsub fast float 1.000000e+00, %226
  %228 = select i1 %158, float %227, float %226
  %229 = fmul fast float %228, %154
  br label %230

; <label>:230                                     ; preds = %224, %223
  %231 = phi float [ %229, %224 ], [ 0.000000e+00, %223 ]
  %232 = fadd fast float %231, %156
  %233 = call float @dx.op.unary.f32(i32 7, float %232)  ; Saturate(value)
  br label %234

; <label>:234                                     ; preds = %230, %218
  %235 = phi float [ %222, %218 ], [ %233, %230 ]
  %236 = fmul fast float %235, %140
  br label %237

; <label>:237                                     ; preds = %234, %126
  %238 = phi float [ %236, %234 ], [ %140, %126 ]
  %239 = call float @dx.op.binary.f32(i32 35, float %238, float 0.000000e+00)  ; FMax(a,b)
  %240 = fcmp fast oeq float %239, 0.000000e+00
  br i1 %240, label %241, label %242, !dx.controlflow.hints !52

; <label>:241                                     ; preds = %237
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %242

; <label>:242                                     ; preds = %241, %237
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %243 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1, %dx.types.Handle %9, float %15, float %16, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %244 = extractvalue %dx.types.ResRet.f32 %243, 0
  %245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %246 = extractvalue %dx.types.CBufRet.f32 %245, 3
  %247 = bitcast float %246 to i32
  %248 = and i32 %247, 65535
  %249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %248)  ; LegacyF16ToF32(value)
  %250 = fcmp fast une float %249, 0.000000e+00
  %251 = select i1 %250, float 0.000000e+00, float 1.000000e+00
  %252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %253 = extractvalue %dx.types.CBufRet.f32 %252, 3
  %254 = fmul fast float %253, %244
  %255 = fmul fast float %254, %251
  %256 = fsub fast float 1.000000e+00, %255
  %257 = fmul fast float %137, %256
  %258 = fmul fast float %138, %256
  %259 = fmul fast float %139, %256
  %260 = extractvalue %dx.types.CBufRet.f32 %252, 0
  %261 = extractvalue %dx.types.CBufRet.f32 %252, 1
  %262 = extractvalue %dx.types.CBufRet.f32 %252, 2
  %263 = fmul fast float %260, %254
  %264 = fmul fast float %261, %254
  %265 = fmul fast float %262, %254
  %266 = fadd fast float %257, %263
  %267 = fadd fast float %258, %264
  %268 = fadd fast float %259, %265
  %269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %270 = extractvalue %dx.types.CBufRet.f32 %269, 2
  %271 = fcmp fast ogt float %270, 0.000000e+00
  br i1 %271, label %272, label %338, !dx.controlflow.hints !53

; <label>:272                                     ; preds = %242
  %273 = fcmp fast oeq float %270, 2.000000e+00
  br i1 %273, label %274, label %326, !dx.controlflow.hints !54

; <label>:274                                     ; preds = %272
  %275 = fcmp fast ole float %266, 0x3F69A5C380000000
  %276 = fcmp fast ole float %267, 0x3F69A5C380000000
  %277 = fcmp fast ole float %268, 0x3F69A5C380000000
  %278 = fmul fast float %266, 0x4029D70A40000000
  %279 = fmul fast float %267, 0x4029D70A40000000
  %280 = fmul fast float %268, 0x4029D70A40000000
  %281 = call float @dx.op.unary.f32(i32 23, float %266)  ; Log(value)
  %282 = call float @dx.op.unary.f32(i32 23, float %267)  ; Log(value)
  %283 = call float @dx.op.unary.f32(i32 23, float %268)  ; Log(value)
  %284 = fmul fast float %281, 0x3FDAAAAAA0000000
  %285 = fmul fast float %282, 0x3FDAAAAAA0000000
  %286 = fmul fast float %283, 0x3FDAAAAAA0000000
  %287 = call float @dx.op.unary.f32(i32 21, float %284)  ; Exp(value)
  %288 = call float @dx.op.unary.f32(i32 21, float %285)  ; Exp(value)
  %289 = call float @dx.op.unary.f32(i32 21, float %286)  ; Exp(value)
  %290 = fmul fast float %287, 0x3FF0E147A0000000
  %291 = fmul fast float %288, 0x3FF0E147A0000000
  %292 = fmul fast float %289, 0x3FF0E147A0000000
  %293 = fadd fast float %290, 0xBFAC28F5C0000000
  %294 = fadd fast float %291, 0xBFAC28F5C0000000
  %295 = fadd fast float %292, 0xBFAC28F5C0000000
  %296 = select i1 %275, float %278, float %293
  %297 = select i1 %276, float %279, float %294
  %298 = select i1 %277, float %280, float %295
  %299 = fsub fast float 1.000000e+00, %296
  %300 = fsub fast float 1.000000e+00, %297
  %301 = fsub fast float 1.000000e+00, %298
  %302 = fcmp fast ole float %299, 0x3FA4B5DCC0000000
  %303 = fmul fast float %299, 0x3FB3D07220000000
  %304 = fsub fast float 0x3FF0E147A0000000, %296
  %305 = fmul fast float %304, 0x3FEE54EDE0000000
  %306 = call float @dx.op.unary.f32(i32 23, float %305)  ; Log(value)
  %307 = fmul fast float %306, 0x4003333340000000
  %308 = call float @dx.op.unary.f32(i32 21, float %307)  ; Exp(value)
  %309 = select i1 %302, float %303, float %308
  %310 = fcmp fast ole float %300, 0x3FA4B5DCC0000000
  %311 = fmul fast float %300, 0x3FB3D07220000000
  %312 = fsub fast float 0x3FF0E147A0000000, %297
  %313 = fmul fast float %312, 0x3FEE54EDE0000000
  %314 = call float @dx.op.unary.f32(i32 23, float %313)  ; Log(value)
  %315 = fmul fast float %314, 0x4003333340000000
  %316 = call float @dx.op.unary.f32(i32 21, float %315)  ; Exp(value)
  %317 = select i1 %310, float %311, float %316
  %318 = fcmp fast ole float %301, 0x3FA4B5DCC0000000
  %319 = fmul fast float %301, 0x3FB3D07220000000
  %320 = fsub fast float 0x3FF0E147A0000000, %298
  %321 = fmul fast float %320, 0x3FEE54EDE0000000
  %322 = call float @dx.op.unary.f32(i32 23, float %321)  ; Log(value)
  %323 = fmul fast float %322, 0x4003333340000000
  %324 = call float @dx.op.unary.f32(i32 21, float %323)  ; Exp(value)
  %325 = select i1 %318, float %319, float %324
  br label %338

; <label>:326                                     ; preds = %272
  %327 = call float @dx.op.dot3.f32(i32 55, float %266, float %267, float %268, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %328 = extractvalue %dx.types.CBufRet.f32 %269, 3
  %329 = fsub fast float %266, %327
  %330 = fsub fast float %267, %327
  %331 = fsub fast float %268, %327
  %332 = fmul fast float %328, %329
  %333 = fmul fast float %328, %330
  %334 = fmul fast float %328, %331
  %335 = fadd fast float %332, %327
  %336 = fadd fast float %333, %327
  %337 = fadd fast float %334, %327
  br label %338

; <label>:338                                     ; preds = %326, %274, %242
  %339 = phi float [ %309, %274 ], [ %335, %326 ], [ %266, %242 ]
  %340 = phi float [ %317, %274 ], [ %336, %326 ], [ %267, %242 ]
  %341 = phi float [ %325, %274 ], [ %337, %326 ], [ %268, %242 ]
  %342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %343 = extractvalue %dx.types.CBufRet.f32 %342, 0
  %344 = fcmp fast une float %343, 0.000000e+00
  br i1 %344, label %345, label %519, !dx.controlflow.hints !55

; <label>:345                                     ; preds = %338
  %346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %347 = extractvalue %dx.types.CBufRet.f32 %346, 0
  %348 = extractvalue %dx.types.CBufRet.f32 %346, 1
  %349 = fsub fast float %27, %347
  %350 = fsub fast float %28, %348
  %351 = extractvalue %dx.types.CBufRet.f32 %346, 2
  %352 = extractvalue %dx.types.CBufRet.f32 %346, 3
  %353 = fmul fast float %349, %351
  %354 = fmul fast float %350, %352
  %355 = call float @dx.op.unary.f32(i32 6, float %343)  ; FAbs(value)
  %356 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %10, float %353, float %354, float undef, float undef, i32 0, i32 0, i32 undef, float %355)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %357 = extractvalue %dx.types.ResRet.f32 %356, 0
  %358 = extractvalue %dx.types.ResRet.f32 %356, 1
  %359 = extractvalue %dx.types.ResRet.f32 %356, 2
  %360 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %361 = extractvalue %dx.types.CBufRet.i32 %360, 3
  %362 = and i32 %361, 3
  %363 = icmp ne i32 %362, 0
  %364 = and i32 %361, 4
  %365 = icmp eq i32 %364, 0
  %366 = and i1 %363, %365
  br i1 %366, label %367, label %411

; <label>:367                                     ; preds = %345
  %368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %369 = extractvalue %dx.types.CBufRet.f32 %368, 0
  %370 = fcmp fast oge float %358, %369
  %371 = zext i1 %370 to i32
  br i1 %370, label %372, label %411

; <label>:372                                     ; preds = %367
  %373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %374 = extractvalue %dx.types.CBufRet.f32 %373, 3
  %375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %376 = extractvalue %dx.types.CBufRet.f32 %375, 2
  %377 = fcmp fast ogt float %376, 0.000000e+00
  br i1 %377, label %378, label %386, !dx.controlflow.hints !56

; <label>:378                                     ; preds = %372
  %379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %10, float %358, float 0.000000e+00, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %380 = extractvalue %dx.types.ResRet.f32 %379, 0
  %381 = extractvalue %dx.types.ResRet.f32 %379, 1
  %382 = extractvalue %dx.types.ResRet.f32 %379, 2
  %383 = fcmp fast ogt float %376, 1.500000e+00
  %384 = select i1 %383, float %380, float %381
  %385 = select i1 %383, float %380, float %382
  br label %404

; <label>:386                                     ; preds = %372
  %387 = call float @dx.op.unary.f32(i32 7, float %358)  ; Saturate(value)
  %388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 238)  ; CBufferLoadLegacy(handle,regIndex)
  %389 = extractvalue %dx.types.CBufRet.f32 %388, 0
  %390 = extractvalue %dx.types.CBufRet.f32 %388, 1
  %391 = extractvalue %dx.types.CBufRet.f32 %388, 2
  %392 = extractvalue %dx.types.CBufRet.f32 %373, 0
  %393 = extractvalue %dx.types.CBufRet.f32 %373, 1
  %394 = extractvalue %dx.types.CBufRet.f32 %373, 2
  %395 = fsub fast float %389, %392
  %396 = fsub fast float %390, %393
  %397 = fsub fast float %391, %394
  %398 = fmul fast float %395, %387
  %399 = fmul fast float %396, %387
  %400 = fmul fast float %397, %387
  %401 = fadd fast float %398, %392
  %402 = fadd fast float %399, %393
  %403 = fadd fast float %400, %394
  br label %404

; <label>:404                                     ; preds = %386, %378
  %405 = phi float [ %380, %378 ], [ %401, %386 ]
  %406 = phi float [ %384, %378 ], [ %402, %386 ]
  %407 = phi float [ %385, %378 ], [ %403, %386 ]
  %408 = fmul fast float %405, %374
  %409 = fmul fast float %406, %374
  %410 = fmul fast float %407, %374
  br label %411

; <label>:411                                     ; preds = %404, %367, %345
  %412 = phi float [ %408, %404 ], [ %357, %345 ], [ %357, %367 ]
  %413 = phi float [ %409, %404 ], [ %358, %345 ], [ %357, %367 ]
  %414 = phi float [ %410, %404 ], [ %359, %345 ], [ %357, %367 ]
  %415 = phi i32 [ %371, %404 ], [ 0, %345 ], [ %371, %367 ]
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %417, label %471

; <label>:417                                     ; preds = %411
  %418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %419 = extractvalue %dx.types.CBufRet.f32 %418, 0
  %420 = extractvalue %dx.types.CBufRet.f32 %418, 1
  %421 = extractvalue %dx.types.CBufRet.f32 %418, 2
  %422 = call float @dx.op.dot3.f32(i32 55, float %412, float %413, float %414, float %419, float %420, float %421)  ; Dot3(ax,ay,az,bx,by,bz)
  %423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %424 = extractvalue %dx.types.CBufRet.f32 %423, 0
  %425 = extractvalue %dx.types.CBufRet.f32 %423, 1
  %426 = extractvalue %dx.types.CBufRet.f32 %423, 2
  %427 = call float @dx.op.dot3.f32(i32 55, float %412, float %413, float %414, float %424, float %425, float %426)  ; Dot3(ax,ay,az,bx,by,bz)
  %428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %429 = extractvalue %dx.types.CBufRet.f32 %428, 0
  %430 = extractvalue %dx.types.CBufRet.f32 %428, 1
  %431 = extractvalue %dx.types.CBufRet.f32 %428, 2
  %432 = call float @dx.op.dot3.f32(i32 55, float %412, float %413, float %414, float %429, float %430, float %431)  ; Dot3(ax,ay,az,bx,by,bz)
  %433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %434 = extractvalue %dx.types.CBufRet.f32 %433, 2
  %435 = fmul fast float %434, %422
  %436 = fmul fast float %434, %427
  %437 = fmul fast float %434, %432
  %438 = fadd fast float %435, 9.765625e-04
  %439 = fadd fast float %436, 9.765625e-04
  %440 = fadd fast float %437, 9.765625e-04
  %441 = call float @dx.op.unary.f32(i32 23, float %438)  ; Log(value)
  %442 = call float @dx.op.unary.f32(i32 23, float %439)  ; Log(value)
  %443 = call float @dx.op.unary.f32(i32 23, float %440)  ; Log(value)
  %444 = fadd fast float %441, 1.000000e+01
  %445 = fadd fast float %442, 1.000000e+01
  %446 = fadd fast float %443, 1.000000e+01
  %447 = fmul fast float %444, 0x3FA99999A0000000
  %448 = fmul fast float %445, 0x3FA99999A0000000
  %449 = fmul fast float %446, 0x3FA99999A0000000
  %450 = call float @dx.op.unary.f32(i32 7, float %447)  ; Saturate(value)
  %451 = call float @dx.op.unary.f32(i32 7, float %448)  ; Saturate(value)
  %452 = call float @dx.op.unary.f32(i32 7, float %449)  ; Saturate(value)
  %453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %454 = extractvalue %dx.types.CBufRet.f32 %453, 0
  %455 = extractvalue %dx.types.CBufRet.f32 %453, 1
  %456 = extractvalue %dx.types.CBufRet.f32 %453, 2
  %457 = fmul fast float %454, %450
  %458 = fmul fast float %455, %451
  %459 = fmul fast float %456, %452
  %460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %461 = extractvalue %dx.types.CBufRet.f32 %460, 0
  %462 = extractvalue %dx.types.CBufRet.f32 %460, 1
  %463 = extractvalue %dx.types.CBufRet.f32 %460, 2
  %464 = fadd fast float %457, %461
  %465 = fadd fast float %458, %462
  %466 = fadd fast float %459, %463
  %467 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %10, float %464, float %465, float %466, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %468 = extractvalue %dx.types.ResRet.f32 %467, 0
  %469 = extractvalue %dx.types.ResRet.f32 %467, 1
  %470 = extractvalue %dx.types.ResRet.f32 %467, 2
  br label %471

; <label>:471                                     ; preds = %417, %411
  %472 = phi float [ %412, %411 ], [ %468, %417 ]
  %473 = phi float [ %413, %411 ], [ %469, %417 ]
  %474 = phi float [ %414, %411 ], [ %470, %417 ]
  %475 = fcmp fast ole float %472, 0x3FA4B5DCC0000000
  %476 = fmul fast float %472, 0x3FB3D07220000000
  %477 = fadd fast float %472, 0x3FAC28F5C0000000
  %478 = fmul fast float %477, 0x3FEE54EDE0000000
  %479 = call float @dx.op.unary.f32(i32 23, float %478)  ; Log(value)
  %480 = fmul fast float %479, 0x4003333340000000
  %481 = call float @dx.op.unary.f32(i32 21, float %480)  ; Exp(value)
  %482 = select i1 %475, float %476, float %481
  %483 = fcmp fast ole float %473, 0x3FA4B5DCC0000000
  %484 = fmul fast float %473, 0x3FB3D07220000000
  %485 = fadd fast float %473, 0x3FAC28F5C0000000
  %486 = fmul fast float %485, 0x3FEE54EDE0000000
  %487 = call float @dx.op.unary.f32(i32 23, float %486)  ; Log(value)
  %488 = fmul fast float %487, 0x4003333340000000
  %489 = call float @dx.op.unary.f32(i32 21, float %488)  ; Exp(value)
  %490 = select i1 %483, float %484, float %489
  %491 = fcmp fast ole float %474, 0x3FA4B5DCC0000000
  %492 = fmul fast float %474, 0x3FB3D07220000000
  %493 = fadd fast float %474, 0x3FAC28F5C0000000
  %494 = fmul fast float %493, 0x3FEE54EDE0000000
  %495 = call float @dx.op.unary.f32(i32 23, float %494)  ; Log(value)
  %496 = fmul fast float %495, 0x4003333340000000
  %497 = call float @dx.op.unary.f32(i32 21, float %496)  ; Exp(value)
  %498 = select i1 %491, float %492, float %497
  %499 = fcmp fast olt float %343, 0.000000e+00
  br i1 %499, label %500, label %512

; <label>:500                                     ; preds = %471
  %501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %502 = extractvalue %dx.types.CBufRet.f32 %501, 0
  %503 = extractvalue %dx.types.CBufRet.f32 %501, 1
  %504 = extractvalue %dx.types.CBufRet.f32 %501, 2
  %505 = call float @dx.op.dot3.f32(i32 55, float %482, float %490, float %498, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %506 = fsub fast float %505, %502
  %507 = fmul fast float %506, %503
  %508 = call float @dx.op.unary.f32(i32 7, float %507)  ; Saturate(value)
  %509 = fsub fast float 1.000000e+00, %504
  %510 = fmul fast float %508, %509
  %511 = fadd fast float %510, %504
  br label %512

; <label>:512                                     ; preds = %500, %471
  %513 = phi float [ %511, %500 ], [ %482, %471 ]
  %514 = phi float [ %511, %500 ], [ %490, %471 ]
  %515 = phi float [ %511, %500 ], [ %498, %471 ]
  %516 = fmul fast float %513, %339
  %517 = fmul fast float %514, %340
  %518 = fmul fast float %515, %341
  br label %519

; <label>:519                                     ; preds = %512, %338
  %520 = phi float [ %516, %512 ], [ %339, %338 ]
  %521 = phi float [ %517, %512 ], [ %340, %338 ]
  %522 = phi float [ %518, %512 ], [ %341, %338 ]
  %523 = extractvalue %dx.types.CBufRet.f32 %342, 1
  %524 = fcmp fast ogt float %523, 0.000000e+00
  br i1 %524, label %525, label %566, !dx.controlflow.hints !57

; <label>:525                                     ; preds = %519
  %526 = extractvalue %dx.types.CBufRet.f32 %342, 2
  %527 = bitcast float %526 to i32
  %528 = and i32 %527, 255
  %529 = uitofp i32 %528 to float
  %530 = lshr i32 %527, 8
  %531 = and i32 %530, 255
  %532 = uitofp i32 %531 to float
  %533 = lshr i32 %527, 16
  %534 = and i32 %533, 255
  %535 = uitofp i32 %534 to float
  %536 = fmul fast float %535, 0x3F70101020000000
  %537 = lshr i32 %527, 24
  %538 = uitofp i32 %537 to float
  %539 = fmul fast float %538, 0x3F70101020000000
  %540 = fadd fast float %535, %529
  %541 = fmul fast float %540, 0x3F70101020000000
  %542 = fadd fast float %532, %538
  %543 = fmul fast float %542, 0x3F70101020000000
  %544 = fdiv fast float %27, %541
  %545 = fdiv fast float %28, %543
  %546 = fsub fast float -0.000000e+00, %544
  %547 = fsub fast float -0.000000e+00, %545
  %548 = fcmp fast oge float %544, %546
  %549 = fcmp fast oge float %545, %547
  %550 = call float @dx.op.unary.f32(i32 6, float %544)  ; FAbs(value)
  %551 = call float @dx.op.unary.f32(i32 6, float %545)  ; FAbs(value)
  %552 = call float @dx.op.unary.f32(i32 22, float %550)  ; Frc(value)
  %553 = call float @dx.op.unary.f32(i32 22, float %551)  ; Frc(value)
  %554 = fsub fast float -0.000000e+00, %552
  %555 = fsub fast float -0.000000e+00, %553
  %556 = select i1 %548, float %552, float %554
  %557 = select i1 %549, float %553, float %555
  %558 = fmul fast float %541, %556
  %559 = fmul fast float %557, %543
  %560 = fcmp fast olt float %558, %536
  %561 = fcmp fast olt float %559, %539
  %562 = or i1 %560, %561
  br i1 %562, label %563, label %566, !dx.controlflow.hints !58

; <label>:563                                     ; preds = %525
  %564 = fsub fast float 1.000000e+00, %523
  %565 = fmul fast float %564, %239
  br label %566

; <label>:566                                     ; preds = %563, %525, %519
  %567 = phi float [ %565, %563 ], [ %239, %525 ], [ %239, %519 ]
  %568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %569 = extractvalue %dx.types.CBufRet.f32 %568, 3
  %570 = fcmp fast ogt float %569, 0.000000e+00
  br i1 %570, label %571, label %654, !dx.controlflow.hints !59

; <label>:571                                     ; preds = %566
  %572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %573 = extractvalue %dx.types.CBufRet.f32 %572, 2
  %574 = extractvalue %dx.types.CBufRet.f32 %572, 3
  %575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %576 = extractvalue %dx.types.CBufRet.f32 %575, 3
  %577 = fmul fast float %576, 1.000000e+01
  %578 = call float @dx.op.unary.f32(i32 27, float %577)  ; Round_ni(value)
  %579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %580 = extractvalue %dx.types.CBufRet.f32 %579, 0
  %581 = extractvalue %dx.types.CBufRet.f32 %579, 1
  %582 = fmul fast float %580, %27
  %583 = fmul fast float %581, %28
  %584 = call float @dx.op.unary.f32(i32 27, float %582)  ; Round_ni(value)
  %585 = call float @dx.op.unary.f32(i32 27, float %583)  ; Round_ni(value)
  %586 = fmul fast float %578, 0x4002B851E0000000
  %587 = call float @dx.op.unary.f32(i32 22, float %586)  ; Frc(value)
  %588 = fadd fast float %587, 0x3FB99999A0000000
  %589 = fadd fast float %588, %584
  %590 = fadd fast float %588, %585
  %591 = fmul fast float %589, 0x3FE1BEDF00000000
  %592 = call float @dx.op.unary.f32(i32 22, float %591)  ; Frc(value)
  %593 = fmul fast float %589, %592
  %594 = fadd fast float %593, %590
  %595 = fmul fast float %590, 0x3FD3BEBE20000000
  %596 = call float @dx.op.unary.f32(i32 22, float %595)  ; Frc(value)
  %597 = fmul fast float %590, %596
  %598 = fadd fast float %597, %589
  %599 = fmul fast float %594, %598
  %600 = call float @dx.op.unary.f32(i32 22, float %599)  ; Frc(value)
  %601 = extractvalue %dx.types.CBufRet.f32 %579, 3
  %602 = bitcast float %601 to i32
  %603 = and i32 %602, 255
  %604 = uitofp i32 %603 to float
  %605 = fmul fast float %604, 0x3F70101020000000
  %606 = fmul fast float %605, %573
  %607 = fcmp fast olt float %600, %606
  br i1 %607, label %608, label %615, !dx.controlflow.hints !60

; <label>:608                                     ; preds = %571
  %609 = fmul fast float %600, 0x4057091680000000
  %610 = call float @dx.op.unary.f32(i32 22, float %609)  ; Frc(value)
  %611 = fmul fast float %610, %520
  %612 = fmul fast float %610, %522
  %613 = fsub fast float 1.000000e+00, %610
  %614 = fmul fast float %613, %521
  br label %615

; <label>:615                                     ; preds = %608, %571
  %616 = phi float [ %611, %608 ], [ %520, %571 ]
  %617 = phi float [ %614, %608 ], [ %521, %571 ]
  %618 = phi float [ %612, %608 ], [ %522, %571 ]
  %619 = fmul fast float %600, 0x4028B0A3E0000000
  %620 = call float @dx.op.unary.f32(i32 22, float %619)  ; Frc(value)
  %621 = fmul fast float %605, %574
  %622 = fcmp fast olt float %620, %621
  br i1 %622, label %623, label %642, !dx.controlflow.hints !61

; <label>:623                                     ; preds = %615
  %624 = extractvalue %dx.types.CBufRet.f32 %579, 2
  %625 = fmul fast float %624, %27
  %626 = call float @dx.op.unary.f32(i32 27, float %625)  ; Round_ni(value)
  %627 = fmul fast float %626, 0x3FD5555560000000
  %628 = call float @dx.op.unary.f32(i32 22, float %627)  ; Frc(value)
  %629 = extractvalue %dx.types.CBufRet.f32 %572, 0
  %630 = extractvalue %dx.types.CBufRet.f32 %572, 1
  %631 = fcmp fast olt float %628, 0x3FD51EB860000000
  br i1 %631, label %635, label %632, !dx.controlflow.hints !62

; <label>:632                                     ; preds = %623
  %633 = fcmp fast olt float %628, 0x3FE51EB860000000
  br i1 %633, label %635, label %634, !dx.controlflow.hints !63

; <label>:634                                     ; preds = %632
  br label %635

; <label>:635                                     ; preds = %634, %632, %623
  %636 = phi float [ %629, %634 ], [ %630, %623 ], [ %629, %632 ]
  %637 = phi float [ %629, %634 ], [ %629, %623 ], [ %630, %632 ]
  %638 = phi float [ %630, %634 ], [ %629, %623 ], [ %629, %632 ]
  %639 = fmul fast float %636, %616
  %640 = fmul fast float %637, %617
  %641 = fmul fast float %638, %618
  br label %642

; <label>:642                                     ; preds = %635, %615
  %643 = phi float [ %639, %635 ], [ %616, %615 ]
  %644 = phi float [ %640, %635 ], [ %617, %615 ]
  %645 = phi float [ %641, %635 ], [ %618, %615 ]
  %646 = fmul fast float %600, 0x40223EF9E0000000
  %647 = call float @dx.op.unary.f32(i32 22, float %646)  ; Frc(value)
  %648 = fmul fast float %605, %569
  %649 = fmul fast float %647, %647
  %650 = fmul fast float %649, %648
  %651 = fsub fast float 1.000000e+00, %650
  %652 = call float @dx.op.unary.f32(i32 7, float %651)  ; Saturate(value)
  %653 = fmul fast float %652, %567
  br label %654

; <label>:654                                     ; preds = %642, %566
  %655 = phi float [ %643, %642 ], [ %520, %566 ]
  %656 = phi float [ %644, %642 ], [ %521, %566 ]
  %657 = phi float [ %645, %642 ], [ %522, %566 ]
  %658 = phi float [ %653, %642 ], [ %567, %566 ]
  %659 = extractvalue %dx.types.CBufRet.f32 %269, 0
  %660 = fcmp fast ogt float %659, 0.000000e+00
  br i1 %660, label %661, label %710, !dx.controlflow.hints !64

; <label>:661                                     ; preds = %654
  %662 = extractvalue %dx.types.CBufRet.f32 %269, 1
  %663 = fmul fast float %659, %17
  %664 = fmul fast float %662, %18
  %665 = call float @dx.op.unary.f32(i32 85, float %663)  ; DerivFineX(value)
  %666 = call float @dx.op.unary.f32(i32 86, float %663)  ; DerivFineY(value)
  %667 = call float @dx.op.unary.f32(i32 85, float %664)  ; DerivFineX(value)
  %668 = call float @dx.op.unary.f32(i32 86, float %664)  ; DerivFineY(value)
  %669 = fmul fast float %668, %665
  %670 = fmul fast float %667, %666
  %671 = fsub fast float %669, %670
  %672 = fdiv fast float 1.000000e+00, %671
  %673 = fmul fast float %672, %668
  %674 = fmul fast float %672, %666
  %675 = fmul fast float %672, %667
  %676 = fmul fast float %672, %665
  %677 = fmul fast float %673, %673
  %678 = fmul fast float %675, %675
  %679 = fadd fast float %677, %678
  %680 = call float @dx.op.unary.f32(i32 24, float %679)  ; Sqrt(value)
  %681 = fmul fast float %674, %674
  %682 = fmul fast float %676, %676
  %683 = fadd fast float %681, %682
  %684 = call float @dx.op.unary.f32(i32 24, float %683)  ; Sqrt(value)
  %685 = fmul fast float %680, %663
  %686 = fmul fast float %684, %664
  %687 = fsub fast float %685, %680
  %688 = fsub fast float %686, %684
  %689 = fsub fast float -0.000000e+00, %685
  %690 = fsub fast float -0.000000e+00, %686
  %691 = call float @dx.op.binary.f32(i32 35, float %689, float %687)  ; FMax(a,b)
  %692 = call float @dx.op.binary.f32(i32 35, float %690, float %688)  ; FMax(a,b)
  %693 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %691)  ; FMax(a,b)
  %694 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %692)  ; FMax(a,b)
  %695 = fmul fast float %693, %693
  %696 = fmul fast float %694, %694
  %697 = fadd fast float %696, %695
  %698 = call float @dx.op.unary.f32(i32 24, float %697)  ; Sqrt(value)
  %699 = call float @dx.op.binary.f32(i32 35, float %691, float %692)  ; FMax(a,b)
  %700 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %699)  ; FMin(a,b)
  %701 = fadd fast float %698, -1.000000e+00
  %702 = fadd fast float %701, %700
  %703 = fmul fast float %702, -5.000000e-01
  %704 = call float @dx.op.unary.f32(i32 7, float %703)  ; Saturate(value)
  %705 = fmul fast float %704, 2.000000e+00
  %706 = fsub fast float 3.000000e+00, %705
  %707 = fmul fast float %704, %704
  %708 = fmul fast float %707, %658
  %709 = fmul fast float %708, %706
  br label %710

; <label>:710                                     ; preds = %661, %654
  %711 = phi float [ %709, %661 ], [ %658, %654 ]
  %712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %713 = extractvalue %dx.types.CBufRet.f32 %712, 0
  %714 = extractvalue %dx.types.CBufRet.f32 %712, 1
  %715 = extractvalue %dx.types.CBufRet.f32 %712, 2
  %716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %717 = extractvalue %dx.types.CBufRet.f32 %716, 0
  %718 = extractvalue %dx.types.CBufRet.f32 %716, 1
  %719 = extractvalue %dx.types.CBufRet.f32 %716, 2
  %720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %721 = extractvalue %dx.types.CBufRet.f32 %720, 0
  %722 = extractvalue %dx.types.CBufRet.f32 %720, 1
  %723 = extractvalue %dx.types.CBufRet.f32 %720, 2
  %724 = fmul fast float %713, %655
  %725 = call float @dx.op.tertiary.f32(i32 46, float %714, float %656, float %724)  ; FMad(a,b,c)
  %726 = call float @dx.op.tertiary.f32(i32 46, float %715, float %657, float %725)  ; FMad(a,b,c)
  %727 = fmul fast float %717, %655
  %728 = call float @dx.op.tertiary.f32(i32 46, float %718, float %656, float %727)  ; FMad(a,b,c)
  %729 = call float @dx.op.tertiary.f32(i32 46, float %719, float %657, float %728)  ; FMad(a,b,c)
  %730 = fmul fast float %721, %655
  %731 = call float @dx.op.tertiary.f32(i32 46, float %722, float %656, float %730)  ; FMad(a,b,c)
  %732 = call float @dx.op.tertiary.f32(i32 46, float %723, float %657, float %731)  ; FMad(a,b,c)
  %733 = fmul fast float %726, %711
  %734 = fmul fast float %729, %711
  %735 = fmul fast float %732, %711
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %733)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %734)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %735)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %711)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind
declare void @dx.op.discard(i32, i1) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

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
!dx.viewIdState = !{!23}
!dx.entryPoints = !{!24}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !13, !17}
!5 = !{!6, !8, !9, !10, !11, !12}
!6 = !{i32 0, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 74, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 73, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 70, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!13 = !{!14, !15, !16}
!14 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!15 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 320, null}
!16 = !{i32 2, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 144, null}
!17 = !{!18, !19, !20, !21, !22}
!18 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!19 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!20 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!21 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!22 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!23 = !{[26 x i32] [i32 24, i32 4, i32 15, i32 15, i32 0, i32 0, i32 7, i32 7, i32 7, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 15, i32 15, i32 7, i32 7]}
!24 = !{void ()* @ps_main, !"ps_main", !25, !4, null}
!25 = !{!26, !47, null}
!26 = !{!27, !30, !32, !33, !35, !37, !39, !41, !43, !45}
!27 = !{i32 0, !"SV_Position", i8 9, i8 3, !28, i8 4, i32 1, i8 4, i32 0, i8 0, !29}
!28 = !{i32 0}
!29 = !{i32 3, i32 3}
!30 = !{i32 1, !"COLOR", i8 9, i8 0, !28, i8 2, i32 1, i8 4, i32 1, i8 0, !31}
!31 = !{i32 3, i32 15}
!32 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !28, i8 2, i32 1, i8 2, i32 2, i8 0, !29}
!33 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !34, i8 2, i32 1, i8 2, i32 2, i8 2, !29}
!34 = !{i32 2}
!35 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !36, i8 2, i32 1, i8 2, i32 3, i8 0, null}
!36 = !{i32 3}
!37 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !38, i8 2, i32 1, i8 2, i32 3, i8 2, null}
!38 = !{i32 4}
!39 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !40, i8 2, i32 1, i8 2, i32 4, i8 0, null}
!40 = !{i32 5}
!41 = !{i32 7, !"TEXCOORD", i8 9, i8 0, !42, i8 2, i32 1, i8 2, i32 4, i8 2, null}
!42 = !{i32 6}
!43 = !{i32 8, !"TEXCOORD", i8 9, i8 0, !44, i8 2, i32 1, i8 2, i32 5, i8 0, !29}
!44 = !{i32 1}
!45 = !{i32 9, !"TEXCOORD", i8 9, i8 0, !46, i8 2, i32 1, i8 2, i32 5, i8 2, !29}
!46 = !{i32 7}
!47 = !{!48}
!48 = !{i32 0, !"SV_Target", i8 9, i8 16, !28, i8 0, i32 1, i8 4, i32 0, i8 0, !31}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 1}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 1}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 1}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 1}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 1}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 1}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 1}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}

