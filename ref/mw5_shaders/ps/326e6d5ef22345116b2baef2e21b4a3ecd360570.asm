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
; shader hash: b91da0eb6a95d7a2699eff1182c35920
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
;                                   texture     f32          3d      T6     t71,space2     1
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 71, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 70, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 73, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 74, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %31 = extractvalue %dx.types.CBufRet.f32 %30, 3
  %32 = fcmp fast ogt float %31, 0.000000e+00
  br i1 %32, label %33, label %83, !dx.controlflow.hints !50

; <label>:33                                      ; preds = %0
  %34 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %35 = extractvalue %dx.types.CBufRet.f32 %34, 3
  %36 = fmul fast float %35, 1.000000e+01
  %37 = call float @dx.op.unary.f32(i32 27, float %36)  ; Round_ni(value)
  %38 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %39 = extractvalue %dx.types.CBufRet.f32 %38, 0
  %40 = extractvalue %dx.types.CBufRet.f32 %38, 1
  %41 = fmul fast float %39, %28
  %42 = fmul fast float %40, %29
  %43 = call float @dx.op.unary.f32(i32 27, float %41)  ; Round_ni(value)
  %44 = call float @dx.op.unary.f32(i32 27, float %42)  ; Round_ni(value)
  %45 = fmul fast float %37, 0x4002B851E0000000
  %46 = call float @dx.op.unary.f32(i32 22, float %45)  ; Frc(value)
  %47 = fadd fast float %46, 0x3FB99999A0000000
  %48 = fadd fast float %47, %43
  %49 = fadd fast float %47, %44
  %50 = fmul fast float %48, 0x3FE1BEDF00000000
  %51 = call float @dx.op.unary.f32(i32 22, float %50)  ; Frc(value)
  %52 = fmul fast float %48, %51
  %53 = fadd fast float %52, %49
  %54 = fmul fast float %49, 0x3FD3BEBE20000000
  %55 = call float @dx.op.unary.f32(i32 22, float %54)  ; Frc(value)
  %56 = fmul fast float %49, %55
  %57 = fadd fast float %56, %48
  %58 = fmul fast float %53, %57
  %59 = call float @dx.op.unary.f32(i32 22, float %58)  ; Frc(value)
  %60 = extractvalue %dx.types.CBufRet.f32 %38, 3
  %61 = bitcast float %60 to i32
  %62 = and i32 %61, 255
  %63 = uitofp i32 %62 to float
  %64 = fmul fast float %59, 0x4085373340000000
  %65 = call float @dx.op.unary.f32(i32 22, float %64)  ; Frc(value)
  %66 = fmul fast float %63, 0x3F6CE9B6A0000000
  %67 = fcmp fast olt float %65, %66
  br i1 %67, label %68, label %83, !dx.controlflow.hints !51

; <label>:68                                      ; preds = %33
  %69 = fdiv fast float %65, %66
  %70 = fmul fast float %69, 2.000000e+00
  %71 = fadd fast float %70, -1.000000e+00
  %72 = lshr i32 %61, 8
  %73 = and i32 %72, 255
  %74 = uitofp i32 %73 to float
  %75 = call float @dx.op.unary.f32(i32 83, float %22)  ; DerivCoarseX(value)
  %76 = call float @dx.op.unary.f32(i32 83, float %23)  ; DerivCoarseX(value)
  %77 = fmul fast float %71, %75
  %78 = fmul fast float %77, %74
  %79 = fmul fast float %76, %71
  %80 = fmul fast float %79, %74
  %81 = fadd fast float %78, %22
  %82 = fadd fast float %80, %23
  br label %83

; <label>:83                                      ; preds = %68, %33, %0
  %84 = phi float [ %81, %68 ], [ %22, %33 ], [ %22, %0 ]
  %85 = phi float [ %82, %68 ], [ %23, %33 ], [ %23, %0 ]
  %86 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4, i32 0)  ; GetDimensions(handle,mipLevel)
  %87 = extractvalue %dx.types.Dimensions %86, 0
  %88 = sitofp i32 %87 to float
  %89 = extractvalue %dx.types.Dimensions %86, 1
  %90 = sitofp i32 %89 to float
  %91 = fdiv fast float 5.000000e-01, %88
  %92 = fdiv fast float 5.000000e-01, %90
  %93 = fsub fast float 1.000000e+00, %91
  %94 = call float @dx.op.binary.f32(i32 35, float %84, float %91)  ; FMax(a,b)
  %95 = call float @dx.op.binary.f32(i32 36, float %94, float %93)  ; FMin(a,b)
  %96 = fsub fast float 1.000000e+00, %92
  %97 = call float @dx.op.binary.f32(i32 35, float %85, float %92)  ; FMax(a,b)
  %98 = call float @dx.op.binary.f32(i32 36, float %97, float %96)  ; FMin(a,b)
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 3
  %101 = bitcast float %100 to i32
  %102 = and i32 %101, 1
  %103 = icmp ne i32 %102, 0
  %104 = select i1 %103, float %95, float %84
  %105 = and i32 %101, 2
  %106 = icmp ne i32 %105, 0
  %107 = select i1 %106, float %98, float %85
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 3
  %110 = bitcast float %109 to i32
  %111 = and i32 %110, 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %116, label %113, !dx.controlflow.hints !52

; <label>:113                                     ; preds = %83
  %114 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %8, float %104, float %107, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %115 = extractvalue %dx.types.ResRet.f32 %114, 0
  br label %121

; <label>:116                                     ; preds = %83
  %117 = call float @dx.op.unary.f32(i32 22, float %104)  ; Frc(value)
  %118 = call float @dx.op.unary.f32(i32 22, float %107)  ; Frc(value)
  %119 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %12, float %117, float %118, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %120 = extractvalue %dx.types.ResRet.f32 %119, 0
  br label %121

; <label>:121                                     ; preds = %116, %113
  %122 = phi float [ %115, %113 ], [ %120, %116 ]
  %123 = fmul fast float %122, 2.000000e+00
  %124 = fadd fast float %123, -1.000000e+00
  %125 = call float @dx.op.unary.f32(i32 83, float %124)  ; DerivCoarseX(value)
  %126 = call float @dx.op.unary.f32(i32 84, float %124)  ; DerivCoarseY(value)
  %127 = fmul fast float %125, %125
  %128 = fmul fast float %126, %126
  %129 = fadd fast float %128, %127
  %130 = call float @dx.op.unary.f32(i32 24, float %129)  ; Sqrt(value)
  %131 = fmul fast float %130, 2.000000e+00
  %132 = fadd fast float %130, %124
  %133 = fdiv fast float %132, %131
  %134 = call float @dx.op.unary.f32(i32 7, float %133)  ; Saturate(value)
  %135 = fmul fast float %134, 2.000000e+00
  %136 = fsub fast float 3.000000e+00, %135
  %137 = fmul fast float %134, %134
  %138 = fmul fast float %137, %27
  %139 = fmul fast float %138, %136
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 3
  %142 = bitcast float %141 to i32
  %143 = and i32 %142, 512
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %239, label %145

; <label>:145                                     ; preds = %121
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 3
  %148 = bitcast float %147 to i32
  %149 = and i32 %148, 65535
  %150 = call float @dx.op.legacyF16ToF32(i32 131, i32 %149)  ; LegacyF16ToF32(value)
  %151 = lshr i32 %148, 16
  %152 = call float @dx.op.legacyF16ToF32(i32 131, i32 %151)  ; LegacyF16ToF32(value)
  %153 = extractvalue %dx.types.CBufRet.f32 %146, 2
  %154 = bitcast float %153 to i32
  %155 = and i32 %154, 65535
  %156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %155)  ; LegacyF16ToF32(value)
  %157 = lshr i32 %154, 16
  %158 = call float @dx.op.legacyF16ToF32(i32 131, i32 %157)  ; LegacyF16ToF32(value)
  %159 = and i32 %142, 16
  %160 = icmp ne i32 %159, 0
  %161 = fcmp fast ogt float %150, 0.000000e+00
  %162 = fcmp fast ogt float %152, 0.000000e+00
  %163 = and i1 %161, %162
  %164 = fcmp fast ogt float %156, 0.000000e+00
  br i1 %163, label %165, label %225

; <label>:165                                     ; preds = %145
  br i1 %164, label %166, label %174

; <label>:166                                     ; preds = %165
  %167 = fmul fast float %152, %21
  %168 = fmul fast float %150, %20
  %169 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %9, float %168, float %167, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %170 = extractvalue %dx.types.ResRet.f32 %169, 0
  %171 = fsub fast float 1.000000e+00, %170
  %172 = select i1 %160, float %171, float %170
  %173 = fmul fast float %172, %156
  br label %174

; <label>:174                                     ; preds = %166, %165
  %175 = phi float [ %173, %166 ], [ 0.000000e+00, %165 ]
  %176 = fadd fast float %175, %158
  %177 = call float @dx.op.unary.f32(i32 7, float %176)  ; Saturate(value)
  br i1 %164, label %178, label %188

; <label>:178                                     ; preds = %174
  %179 = fmul fast float %152, %21
  %180 = fsub fast float 1.000000e+00, %20
  %181 = fmul fast float %150, %180
  %182 = fsub fast float 1.000000e+00, %181
  %183 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %9, float %182, float %179, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %184 = extractvalue %dx.types.ResRet.f32 %183, 1
  %185 = fsub fast float 1.000000e+00, %184
  %186 = select i1 %160, float %185, float %184
  %187 = fmul fast float %186, %156
  br label %188

; <label>:188                                     ; preds = %178, %174
  %189 = phi float [ %187, %178 ], [ 0.000000e+00, %174 ]
  %190 = fadd fast float %189, %158
  %191 = call float @dx.op.unary.f32(i32 7, float %190)  ; Saturate(value)
  %192 = fmul fast float %191, %177
  br i1 %164, label %193, label %205

; <label>:193                                     ; preds = %188
  %194 = fsub fast float 1.000000e+00, %21
  %195 = fmul fast float %152, %194
  %196 = fsub fast float 1.000000e+00, %195
  %197 = fsub fast float 1.000000e+00, %20
  %198 = fmul fast float %150, %197
  %199 = fsub fast float 1.000000e+00, %198
  %200 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %9, float %199, float %196, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %201 = extractvalue %dx.types.ResRet.f32 %200, 2
  %202 = fsub fast float 1.000000e+00, %201
  %203 = select i1 %160, float %202, float %201
  %204 = fmul fast float %203, %156
  br label %205

; <label>:205                                     ; preds = %193, %188
  %206 = phi float [ %204, %193 ], [ 0.000000e+00, %188 ]
  %207 = fadd fast float %206, %158
  %208 = call float @dx.op.unary.f32(i32 7, float %207)  ; Saturate(value)
  %209 = fmul fast float %192, %208
  br i1 %164, label %210, label %220

; <label>:210                                     ; preds = %205
  %211 = fsub fast float 1.000000e+00, %21
  %212 = fmul fast float %152, %211
  %213 = fsub fast float 1.000000e+00, %212
  %214 = fmul fast float %150, %20
  %215 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %9, float %214, float %213, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %216 = extractvalue %dx.types.ResRet.f32 %215, 3
  %217 = fsub fast float 1.000000e+00, %216
  %218 = select i1 %160, float %217, float %216
  %219 = fmul fast float %218, %156
  br label %220

; <label>:220                                     ; preds = %210, %205
  %221 = phi float [ %219, %210 ], [ 0.000000e+00, %205 ]
  %222 = fadd fast float %221, %158
  %223 = call float @dx.op.unary.f32(i32 7, float %222)  ; Saturate(value)
  %224 = fmul fast float %209, %223
  br label %236

; <label>:225                                     ; preds = %145
  br i1 %164, label %226, label %232

; <label>:226                                     ; preds = %225
  %227 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %9, float %20, float %21, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %228 = extractvalue %dx.types.ResRet.f32 %227, 0
  %229 = fsub fast float 1.000000e+00, %228
  %230 = select i1 %160, float %229, float %228
  %231 = fmul fast float %230, %156
  br label %232

; <label>:232                                     ; preds = %226, %225
  %233 = phi float [ %231, %226 ], [ 0.000000e+00, %225 ]
  %234 = fadd fast float %233, %158
  %235 = call float @dx.op.unary.f32(i32 7, float %234)  ; Saturate(value)
  br label %236

; <label>:236                                     ; preds = %232, %220
  %237 = phi float [ %224, %220 ], [ %235, %232 ]
  %238 = fmul fast float %237, %139
  br label %239

; <label>:239                                     ; preds = %236, %121
  %240 = phi float [ %238, %236 ], [ %139, %121 ]
  %241 = call float @dx.op.binary.f32(i32 35, float %240, float 0.000000e+00)  ; FMax(a,b)
  %242 = fcmp fast oeq float %241, 0.000000e+00
  br i1 %242, label %243, label %244, !dx.controlflow.hints !53

; <label>:243                                     ; preds = %239
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %244

; <label>:244                                     ; preds = %243, %239
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %245 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %10, float %16, float %17, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %246 = extractvalue %dx.types.ResRet.f32 %245, 0
  %247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %248 = extractvalue %dx.types.CBufRet.f32 %247, 3
  %249 = bitcast float %248 to i32
  %250 = and i32 %249, 65535
  %251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %250)  ; LegacyF16ToF32(value)
  %252 = fcmp fast une float %251, 0.000000e+00
  %253 = select i1 %252, float 0.000000e+00, float 1.000000e+00
  %254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %255 = extractvalue %dx.types.CBufRet.f32 %254, 3
  %256 = fmul fast float %255, %246
  %257 = fmul fast float %256, %253
  %258 = fsub fast float 1.000000e+00, %257
  %259 = fmul fast float %258, %24
  %260 = fmul fast float %258, %25
  %261 = fmul fast float %258, %26
  %262 = extractvalue %dx.types.CBufRet.f32 %254, 0
  %263 = extractvalue %dx.types.CBufRet.f32 %254, 1
  %264 = extractvalue %dx.types.CBufRet.f32 %254, 2
  %265 = fmul fast float %262, %256
  %266 = fmul fast float %263, %256
  %267 = fmul fast float %264, %256
  %268 = fadd fast float %259, %265
  %269 = fadd fast float %260, %266
  %270 = fadd fast float %261, %267
  %271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %272 = extractvalue %dx.types.CBufRet.f32 %271, 2
  %273 = fcmp fast ogt float %272, 0.000000e+00
  br i1 %273, label %274, label %340, !dx.controlflow.hints !54

; <label>:274                                     ; preds = %244
  %275 = fcmp fast oeq float %272, 2.000000e+00
  br i1 %275, label %276, label %328, !dx.controlflow.hints !55

; <label>:276                                     ; preds = %274
  %277 = fcmp fast ole float %268, 0x3F69A5C380000000
  %278 = fcmp fast ole float %269, 0x3F69A5C380000000
  %279 = fcmp fast ole float %270, 0x3F69A5C380000000
  %280 = fmul fast float %268, 0x4029D70A40000000
  %281 = fmul fast float %269, 0x4029D70A40000000
  %282 = fmul fast float %270, 0x4029D70A40000000
  %283 = call float @dx.op.unary.f32(i32 23, float %268)  ; Log(value)
  %284 = call float @dx.op.unary.f32(i32 23, float %269)  ; Log(value)
  %285 = call float @dx.op.unary.f32(i32 23, float %270)  ; Log(value)
  %286 = fmul fast float %283, 0x3FDAAAAAA0000000
  %287 = fmul fast float %284, 0x3FDAAAAAA0000000
  %288 = fmul fast float %285, 0x3FDAAAAAA0000000
  %289 = call float @dx.op.unary.f32(i32 21, float %286)  ; Exp(value)
  %290 = call float @dx.op.unary.f32(i32 21, float %287)  ; Exp(value)
  %291 = call float @dx.op.unary.f32(i32 21, float %288)  ; Exp(value)
  %292 = fmul fast float %289, 0x3FF0E147A0000000
  %293 = fmul fast float %290, 0x3FF0E147A0000000
  %294 = fmul fast float %291, 0x3FF0E147A0000000
  %295 = fadd fast float %292, 0xBFAC28F5C0000000
  %296 = fadd fast float %293, 0xBFAC28F5C0000000
  %297 = fadd fast float %294, 0xBFAC28F5C0000000
  %298 = select i1 %277, float %280, float %295
  %299 = select i1 %278, float %281, float %296
  %300 = select i1 %279, float %282, float %297
  %301 = fsub fast float 1.000000e+00, %298
  %302 = fsub fast float 1.000000e+00, %299
  %303 = fsub fast float 1.000000e+00, %300
  %304 = fcmp fast ole float %301, 0x3FA4B5DCC0000000
  %305 = fmul fast float %301, 0x3FB3D07220000000
  %306 = fsub fast float 0x3FF0E147A0000000, %298
  %307 = fmul fast float %306, 0x3FEE54EDE0000000
  %308 = call float @dx.op.unary.f32(i32 23, float %307)  ; Log(value)
  %309 = fmul fast float %308, 0x4003333340000000
  %310 = call float @dx.op.unary.f32(i32 21, float %309)  ; Exp(value)
  %311 = select i1 %304, float %305, float %310
  %312 = fcmp fast ole float %302, 0x3FA4B5DCC0000000
  %313 = fmul fast float %302, 0x3FB3D07220000000
  %314 = fsub fast float 0x3FF0E147A0000000, %299
  %315 = fmul fast float %314, 0x3FEE54EDE0000000
  %316 = call float @dx.op.unary.f32(i32 23, float %315)  ; Log(value)
  %317 = fmul fast float %316, 0x4003333340000000
  %318 = call float @dx.op.unary.f32(i32 21, float %317)  ; Exp(value)
  %319 = select i1 %312, float %313, float %318
  %320 = fcmp fast ole float %303, 0x3FA4B5DCC0000000
  %321 = fmul fast float %303, 0x3FB3D07220000000
  %322 = fsub fast float 0x3FF0E147A0000000, %300
  %323 = fmul fast float %322, 0x3FEE54EDE0000000
  %324 = call float @dx.op.unary.f32(i32 23, float %323)  ; Log(value)
  %325 = fmul fast float %324, 0x4003333340000000
  %326 = call float @dx.op.unary.f32(i32 21, float %325)  ; Exp(value)
  %327 = select i1 %320, float %321, float %326
  br label %340

; <label>:328                                     ; preds = %274
  %329 = call float @dx.op.dot3.f32(i32 55, float %268, float %269, float %270, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %330 = extractvalue %dx.types.CBufRet.f32 %271, 3
  %331 = fsub fast float %268, %329
  %332 = fsub fast float %269, %329
  %333 = fsub fast float %270, %329
  %334 = fmul fast float %330, %331
  %335 = fmul fast float %330, %332
  %336 = fmul fast float %330, %333
  %337 = fadd fast float %334, %329
  %338 = fadd fast float %335, %329
  %339 = fadd fast float %336, %329
  br label %340

; <label>:340                                     ; preds = %328, %276, %244
  %341 = phi float [ %311, %276 ], [ %337, %328 ], [ %268, %244 ]
  %342 = phi float [ %319, %276 ], [ %338, %328 ], [ %269, %244 ]
  %343 = phi float [ %327, %276 ], [ %339, %328 ], [ %270, %244 ]
  %344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %345 = extractvalue %dx.types.CBufRet.f32 %344, 0
  %346 = fcmp fast une float %345, 0.000000e+00
  br i1 %346, label %347, label %521, !dx.controlflow.hints !56

; <label>:347                                     ; preds = %340
  %348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %349 = extractvalue %dx.types.CBufRet.f32 %348, 0
  %350 = extractvalue %dx.types.CBufRet.f32 %348, 1
  %351 = fsub fast float %28, %349
  %352 = fsub fast float %29, %350
  %353 = extractvalue %dx.types.CBufRet.f32 %348, 2
  %354 = extractvalue %dx.types.CBufRet.f32 %348, 3
  %355 = fmul fast float %351, %353
  %356 = fmul fast float %352, %354
  %357 = call float @dx.op.unary.f32(i32 6, float %345)  ; FAbs(value)
  %358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %11, float %355, float %356, float undef, float undef, i32 0, i32 0, i32 undef, float %357)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %359 = extractvalue %dx.types.ResRet.f32 %358, 0
  %360 = extractvalue %dx.types.ResRet.f32 %358, 1
  %361 = extractvalue %dx.types.ResRet.f32 %358, 2
  %362 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %363 = extractvalue %dx.types.CBufRet.i32 %362, 3
  %364 = and i32 %363, 3
  %365 = icmp ne i32 %364, 0
  %366 = and i32 %363, 4
  %367 = icmp eq i32 %366, 0
  %368 = and i1 %365, %367
  br i1 %368, label %369, label %413

; <label>:369                                     ; preds = %347
  %370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %371 = extractvalue %dx.types.CBufRet.f32 %370, 0
  %372 = fcmp fast oge float %360, %371
  %373 = zext i1 %372 to i32
  br i1 %372, label %374, label %413

; <label>:374                                     ; preds = %369
  %375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %376 = extractvalue %dx.types.CBufRet.f32 %375, 3
  %377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %378 = extractvalue %dx.types.CBufRet.f32 %377, 2
  %379 = fcmp fast ogt float %378, 0.000000e+00
  br i1 %379, label %380, label %388, !dx.controlflow.hints !57

; <label>:380                                     ; preds = %374
  %381 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %11, float %360, float 0.000000e+00, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %382 = extractvalue %dx.types.ResRet.f32 %381, 0
  %383 = extractvalue %dx.types.ResRet.f32 %381, 1
  %384 = extractvalue %dx.types.ResRet.f32 %381, 2
  %385 = fcmp fast ogt float %378, 1.500000e+00
  %386 = select i1 %385, float %382, float %383
  %387 = select i1 %385, float %382, float %384
  br label %406

; <label>:388                                     ; preds = %374
  %389 = call float @dx.op.unary.f32(i32 7, float %360)  ; Saturate(value)
  %390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 238)  ; CBufferLoadLegacy(handle,regIndex)
  %391 = extractvalue %dx.types.CBufRet.f32 %390, 0
  %392 = extractvalue %dx.types.CBufRet.f32 %390, 1
  %393 = extractvalue %dx.types.CBufRet.f32 %390, 2
  %394 = extractvalue %dx.types.CBufRet.f32 %375, 0
  %395 = extractvalue %dx.types.CBufRet.f32 %375, 1
  %396 = extractvalue %dx.types.CBufRet.f32 %375, 2
  %397 = fsub fast float %391, %394
  %398 = fsub fast float %392, %395
  %399 = fsub fast float %393, %396
  %400 = fmul fast float %397, %389
  %401 = fmul fast float %398, %389
  %402 = fmul fast float %399, %389
  %403 = fadd fast float %400, %394
  %404 = fadd fast float %401, %395
  %405 = fadd fast float %402, %396
  br label %406

; <label>:406                                     ; preds = %388, %380
  %407 = phi float [ %382, %380 ], [ %403, %388 ]
  %408 = phi float [ %386, %380 ], [ %404, %388 ]
  %409 = phi float [ %387, %380 ], [ %405, %388 ]
  %410 = fmul fast float %407, %376
  %411 = fmul fast float %408, %376
  %412 = fmul fast float %409, %376
  br label %413

; <label>:413                                     ; preds = %406, %369, %347
  %414 = phi float [ %410, %406 ], [ %359, %347 ], [ %359, %369 ]
  %415 = phi float [ %411, %406 ], [ %360, %347 ], [ %359, %369 ]
  %416 = phi float [ %412, %406 ], [ %361, %347 ], [ %359, %369 ]
  %417 = phi i32 [ %373, %406 ], [ 0, %347 ], [ %373, %369 ]
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %419, label %473

; <label>:419                                     ; preds = %413
  %420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %421 = extractvalue %dx.types.CBufRet.f32 %420, 0
  %422 = extractvalue %dx.types.CBufRet.f32 %420, 1
  %423 = extractvalue %dx.types.CBufRet.f32 %420, 2
  %424 = call float @dx.op.dot3.f32(i32 55, float %414, float %415, float %416, float %421, float %422, float %423)  ; Dot3(ax,ay,az,bx,by,bz)
  %425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %426 = extractvalue %dx.types.CBufRet.f32 %425, 0
  %427 = extractvalue %dx.types.CBufRet.f32 %425, 1
  %428 = extractvalue %dx.types.CBufRet.f32 %425, 2
  %429 = call float @dx.op.dot3.f32(i32 55, float %414, float %415, float %416, float %426, float %427, float %428)  ; Dot3(ax,ay,az,bx,by,bz)
  %430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %431 = extractvalue %dx.types.CBufRet.f32 %430, 0
  %432 = extractvalue %dx.types.CBufRet.f32 %430, 1
  %433 = extractvalue %dx.types.CBufRet.f32 %430, 2
  %434 = call float @dx.op.dot3.f32(i32 55, float %414, float %415, float %416, float %431, float %432, float %433)  ; Dot3(ax,ay,az,bx,by,bz)
  %435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %436 = extractvalue %dx.types.CBufRet.f32 %435, 2
  %437 = fmul fast float %436, %424
  %438 = fmul fast float %436, %429
  %439 = fmul fast float %436, %434
  %440 = fadd fast float %437, 9.765625e-04
  %441 = fadd fast float %438, 9.765625e-04
  %442 = fadd fast float %439, 9.765625e-04
  %443 = call float @dx.op.unary.f32(i32 23, float %440)  ; Log(value)
  %444 = call float @dx.op.unary.f32(i32 23, float %441)  ; Log(value)
  %445 = call float @dx.op.unary.f32(i32 23, float %442)  ; Log(value)
  %446 = fadd fast float %443, 1.000000e+01
  %447 = fadd fast float %444, 1.000000e+01
  %448 = fadd fast float %445, 1.000000e+01
  %449 = fmul fast float %446, 0x3FA99999A0000000
  %450 = fmul fast float %447, 0x3FA99999A0000000
  %451 = fmul fast float %448, 0x3FA99999A0000000
  %452 = call float @dx.op.unary.f32(i32 7, float %449)  ; Saturate(value)
  %453 = call float @dx.op.unary.f32(i32 7, float %450)  ; Saturate(value)
  %454 = call float @dx.op.unary.f32(i32 7, float %451)  ; Saturate(value)
  %455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %456 = extractvalue %dx.types.CBufRet.f32 %455, 0
  %457 = extractvalue %dx.types.CBufRet.f32 %455, 1
  %458 = extractvalue %dx.types.CBufRet.f32 %455, 2
  %459 = fmul fast float %456, %452
  %460 = fmul fast float %457, %453
  %461 = fmul fast float %458, %454
  %462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %463 = extractvalue %dx.types.CBufRet.f32 %462, 0
  %464 = extractvalue %dx.types.CBufRet.f32 %462, 1
  %465 = extractvalue %dx.types.CBufRet.f32 %462, 2
  %466 = fadd fast float %459, %463
  %467 = fadd fast float %460, %464
  %468 = fadd fast float %461, %465
  %469 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %11, float %466, float %467, float %468, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %470 = extractvalue %dx.types.ResRet.f32 %469, 0
  %471 = extractvalue %dx.types.ResRet.f32 %469, 1
  %472 = extractvalue %dx.types.ResRet.f32 %469, 2
  br label %473

; <label>:473                                     ; preds = %419, %413
  %474 = phi float [ %414, %413 ], [ %470, %419 ]
  %475 = phi float [ %415, %413 ], [ %471, %419 ]
  %476 = phi float [ %416, %413 ], [ %472, %419 ]
  %477 = fcmp fast ole float %474, 0x3FA4B5DCC0000000
  %478 = fmul fast float %474, 0x3FB3D07220000000
  %479 = fadd fast float %474, 0x3FAC28F5C0000000
  %480 = fmul fast float %479, 0x3FEE54EDE0000000
  %481 = call float @dx.op.unary.f32(i32 23, float %480)  ; Log(value)
  %482 = fmul fast float %481, 0x4003333340000000
  %483 = call float @dx.op.unary.f32(i32 21, float %482)  ; Exp(value)
  %484 = select i1 %477, float %478, float %483
  %485 = fcmp fast ole float %475, 0x3FA4B5DCC0000000
  %486 = fmul fast float %475, 0x3FB3D07220000000
  %487 = fadd fast float %475, 0x3FAC28F5C0000000
  %488 = fmul fast float %487, 0x3FEE54EDE0000000
  %489 = call float @dx.op.unary.f32(i32 23, float %488)  ; Log(value)
  %490 = fmul fast float %489, 0x4003333340000000
  %491 = call float @dx.op.unary.f32(i32 21, float %490)  ; Exp(value)
  %492 = select i1 %485, float %486, float %491
  %493 = fcmp fast ole float %476, 0x3FA4B5DCC0000000
  %494 = fmul fast float %476, 0x3FB3D07220000000
  %495 = fadd fast float %476, 0x3FAC28F5C0000000
  %496 = fmul fast float %495, 0x3FEE54EDE0000000
  %497 = call float @dx.op.unary.f32(i32 23, float %496)  ; Log(value)
  %498 = fmul fast float %497, 0x4003333340000000
  %499 = call float @dx.op.unary.f32(i32 21, float %498)  ; Exp(value)
  %500 = select i1 %493, float %494, float %499
  %501 = fcmp fast olt float %345, 0.000000e+00
  br i1 %501, label %502, label %514

; <label>:502                                     ; preds = %473
  %503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %504 = extractvalue %dx.types.CBufRet.f32 %503, 0
  %505 = extractvalue %dx.types.CBufRet.f32 %503, 1
  %506 = extractvalue %dx.types.CBufRet.f32 %503, 2
  %507 = call float @dx.op.dot3.f32(i32 55, float %484, float %492, float %500, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %508 = fsub fast float %507, %504
  %509 = fmul fast float %508, %505
  %510 = call float @dx.op.unary.f32(i32 7, float %509)  ; Saturate(value)
  %511 = fsub fast float 1.000000e+00, %506
  %512 = fmul fast float %510, %511
  %513 = fadd fast float %512, %506
  br label %514

; <label>:514                                     ; preds = %502, %473
  %515 = phi float [ %513, %502 ], [ %484, %473 ]
  %516 = phi float [ %513, %502 ], [ %492, %473 ]
  %517 = phi float [ %513, %502 ], [ %500, %473 ]
  %518 = fmul fast float %515, %341
  %519 = fmul fast float %516, %342
  %520 = fmul fast float %517, %343
  br label %521

; <label>:521                                     ; preds = %514, %340
  %522 = phi float [ %518, %514 ], [ %341, %340 ]
  %523 = phi float [ %519, %514 ], [ %342, %340 ]
  %524 = phi float [ %520, %514 ], [ %343, %340 ]
  %525 = extractvalue %dx.types.CBufRet.f32 %344, 1
  %526 = fcmp fast ogt float %525, 0.000000e+00
  br i1 %526, label %527, label %568, !dx.controlflow.hints !58

; <label>:527                                     ; preds = %521
  %528 = extractvalue %dx.types.CBufRet.f32 %344, 2
  %529 = bitcast float %528 to i32
  %530 = and i32 %529, 255
  %531 = uitofp i32 %530 to float
  %532 = lshr i32 %529, 8
  %533 = and i32 %532, 255
  %534 = uitofp i32 %533 to float
  %535 = lshr i32 %529, 16
  %536 = and i32 %535, 255
  %537 = uitofp i32 %536 to float
  %538 = fmul fast float %537, 0x3F70101020000000
  %539 = lshr i32 %529, 24
  %540 = uitofp i32 %539 to float
  %541 = fmul fast float %540, 0x3F70101020000000
  %542 = fadd fast float %537, %531
  %543 = fmul fast float %542, 0x3F70101020000000
  %544 = fadd fast float %534, %540
  %545 = fmul fast float %544, 0x3F70101020000000
  %546 = fdiv fast float %28, %543
  %547 = fdiv fast float %29, %545
  %548 = fsub fast float -0.000000e+00, %546
  %549 = fsub fast float -0.000000e+00, %547
  %550 = fcmp fast oge float %546, %548
  %551 = fcmp fast oge float %547, %549
  %552 = call float @dx.op.unary.f32(i32 6, float %546)  ; FAbs(value)
  %553 = call float @dx.op.unary.f32(i32 6, float %547)  ; FAbs(value)
  %554 = call float @dx.op.unary.f32(i32 22, float %552)  ; Frc(value)
  %555 = call float @dx.op.unary.f32(i32 22, float %553)  ; Frc(value)
  %556 = fsub fast float -0.000000e+00, %554
  %557 = fsub fast float -0.000000e+00, %555
  %558 = select i1 %550, float %554, float %556
  %559 = select i1 %551, float %555, float %557
  %560 = fmul fast float %543, %558
  %561 = fmul fast float %559, %545
  %562 = fcmp fast olt float %560, %538
  %563 = fcmp fast olt float %561, %541
  %564 = or i1 %562, %563
  br i1 %564, label %565, label %568, !dx.controlflow.hints !59

; <label>:565                                     ; preds = %527
  %566 = fsub fast float 1.000000e+00, %525
  %567 = fmul fast float %566, %241
  br label %568

; <label>:568                                     ; preds = %565, %527, %521
  %569 = phi float [ %567, %565 ], [ %241, %527 ], [ %241, %521 ]
  %570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %571 = extractvalue %dx.types.CBufRet.f32 %570, 3
  %572 = fcmp fast ogt float %571, 0.000000e+00
  br i1 %572, label %573, label %656, !dx.controlflow.hints !60

; <label>:573                                     ; preds = %568
  %574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %575 = extractvalue %dx.types.CBufRet.f32 %574, 2
  %576 = extractvalue %dx.types.CBufRet.f32 %574, 3
  %577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %578 = extractvalue %dx.types.CBufRet.f32 %577, 3
  %579 = fmul fast float %578, 1.000000e+01
  %580 = call float @dx.op.unary.f32(i32 27, float %579)  ; Round_ni(value)
  %581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %582 = extractvalue %dx.types.CBufRet.f32 %581, 0
  %583 = extractvalue %dx.types.CBufRet.f32 %581, 1
  %584 = fmul fast float %582, %28
  %585 = fmul fast float %583, %29
  %586 = call float @dx.op.unary.f32(i32 27, float %584)  ; Round_ni(value)
  %587 = call float @dx.op.unary.f32(i32 27, float %585)  ; Round_ni(value)
  %588 = fmul fast float %580, 0x4002B851E0000000
  %589 = call float @dx.op.unary.f32(i32 22, float %588)  ; Frc(value)
  %590 = fadd fast float %589, 0x3FB99999A0000000
  %591 = fadd fast float %590, %586
  %592 = fadd fast float %590, %587
  %593 = fmul fast float %591, 0x3FE1BEDF00000000
  %594 = call float @dx.op.unary.f32(i32 22, float %593)  ; Frc(value)
  %595 = fmul fast float %591, %594
  %596 = fadd fast float %595, %592
  %597 = fmul fast float %592, 0x3FD3BEBE20000000
  %598 = call float @dx.op.unary.f32(i32 22, float %597)  ; Frc(value)
  %599 = fmul fast float %592, %598
  %600 = fadd fast float %599, %591
  %601 = fmul fast float %596, %600
  %602 = call float @dx.op.unary.f32(i32 22, float %601)  ; Frc(value)
  %603 = extractvalue %dx.types.CBufRet.f32 %581, 3
  %604 = bitcast float %603 to i32
  %605 = and i32 %604, 255
  %606 = uitofp i32 %605 to float
  %607 = fmul fast float %606, 0x3F70101020000000
  %608 = fmul fast float %607, %575
  %609 = fcmp fast olt float %602, %608
  br i1 %609, label %610, label %617, !dx.controlflow.hints !61

; <label>:610                                     ; preds = %573
  %611 = fmul fast float %602, 0x4057091680000000
  %612 = call float @dx.op.unary.f32(i32 22, float %611)  ; Frc(value)
  %613 = fmul fast float %612, %522
  %614 = fmul fast float %612, %524
  %615 = fsub fast float 1.000000e+00, %612
  %616 = fmul fast float %615, %523
  br label %617

; <label>:617                                     ; preds = %610, %573
  %618 = phi float [ %613, %610 ], [ %522, %573 ]
  %619 = phi float [ %616, %610 ], [ %523, %573 ]
  %620 = phi float [ %614, %610 ], [ %524, %573 ]
  %621 = fmul fast float %602, 0x4028B0A3E0000000
  %622 = call float @dx.op.unary.f32(i32 22, float %621)  ; Frc(value)
  %623 = fmul fast float %607, %576
  %624 = fcmp fast olt float %622, %623
  br i1 %624, label %625, label %644, !dx.controlflow.hints !62

; <label>:625                                     ; preds = %617
  %626 = extractvalue %dx.types.CBufRet.f32 %581, 2
  %627 = fmul fast float %626, %28
  %628 = call float @dx.op.unary.f32(i32 27, float %627)  ; Round_ni(value)
  %629 = fmul fast float %628, 0x3FD5555560000000
  %630 = call float @dx.op.unary.f32(i32 22, float %629)  ; Frc(value)
  %631 = extractvalue %dx.types.CBufRet.f32 %574, 0
  %632 = extractvalue %dx.types.CBufRet.f32 %574, 1
  %633 = fcmp fast olt float %630, 0x3FD51EB860000000
  br i1 %633, label %637, label %634, !dx.controlflow.hints !63

; <label>:634                                     ; preds = %625
  %635 = fcmp fast olt float %630, 0x3FE51EB860000000
  br i1 %635, label %637, label %636, !dx.controlflow.hints !64

; <label>:636                                     ; preds = %634
  br label %637

; <label>:637                                     ; preds = %636, %634, %625
  %638 = phi float [ %631, %636 ], [ %632, %625 ], [ %631, %634 ]
  %639 = phi float [ %631, %636 ], [ %631, %625 ], [ %632, %634 ]
  %640 = phi float [ %632, %636 ], [ %631, %625 ], [ %631, %634 ]
  %641 = fmul fast float %638, %618
  %642 = fmul fast float %639, %619
  %643 = fmul fast float %640, %620
  br label %644

; <label>:644                                     ; preds = %637, %617
  %645 = phi float [ %641, %637 ], [ %618, %617 ]
  %646 = phi float [ %642, %637 ], [ %619, %617 ]
  %647 = phi float [ %643, %637 ], [ %620, %617 ]
  %648 = fmul fast float %602, 0x40223EF9E0000000
  %649 = call float @dx.op.unary.f32(i32 22, float %648)  ; Frc(value)
  %650 = fmul fast float %607, %571
  %651 = fmul fast float %649, %649
  %652 = fmul fast float %651, %650
  %653 = fsub fast float 1.000000e+00, %652
  %654 = call float @dx.op.unary.f32(i32 7, float %653)  ; Saturate(value)
  %655 = fmul fast float %654, %569
  br label %656

; <label>:656                                     ; preds = %644, %568
  %657 = phi float [ %645, %644 ], [ %522, %568 ]
  %658 = phi float [ %646, %644 ], [ %523, %568 ]
  %659 = phi float [ %647, %644 ], [ %524, %568 ]
  %660 = phi float [ %655, %644 ], [ %569, %568 ]
  %661 = extractvalue %dx.types.CBufRet.f32 %271, 0
  %662 = fcmp fast ogt float %661, 0.000000e+00
  br i1 %662, label %663, label %712, !dx.controlflow.hints !65

; <label>:663                                     ; preds = %656
  %664 = extractvalue %dx.types.CBufRet.f32 %271, 1
  %665 = fmul fast float %661, %18
  %666 = fmul fast float %664, %19
  %667 = call float @dx.op.unary.f32(i32 85, float %665)  ; DerivFineX(value)
  %668 = call float @dx.op.unary.f32(i32 86, float %665)  ; DerivFineY(value)
  %669 = call float @dx.op.unary.f32(i32 85, float %666)  ; DerivFineX(value)
  %670 = call float @dx.op.unary.f32(i32 86, float %666)  ; DerivFineY(value)
  %671 = fmul fast float %670, %667
  %672 = fmul fast float %669, %668
  %673 = fsub fast float %671, %672
  %674 = fdiv fast float 1.000000e+00, %673
  %675 = fmul fast float %674, %670
  %676 = fmul fast float %674, %668
  %677 = fmul fast float %674, %669
  %678 = fmul fast float %674, %667
  %679 = fmul fast float %675, %675
  %680 = fmul fast float %677, %677
  %681 = fadd fast float %679, %680
  %682 = call float @dx.op.unary.f32(i32 24, float %681)  ; Sqrt(value)
  %683 = fmul fast float %676, %676
  %684 = fmul fast float %678, %678
  %685 = fadd fast float %683, %684
  %686 = call float @dx.op.unary.f32(i32 24, float %685)  ; Sqrt(value)
  %687 = fmul fast float %682, %665
  %688 = fmul fast float %686, %666
  %689 = fsub fast float %687, %682
  %690 = fsub fast float %688, %686
  %691 = fsub fast float -0.000000e+00, %687
  %692 = fsub fast float -0.000000e+00, %688
  %693 = call float @dx.op.binary.f32(i32 35, float %691, float %689)  ; FMax(a,b)
  %694 = call float @dx.op.binary.f32(i32 35, float %692, float %690)  ; FMax(a,b)
  %695 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %693)  ; FMax(a,b)
  %696 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %694)  ; FMax(a,b)
  %697 = fmul fast float %695, %695
  %698 = fmul fast float %696, %696
  %699 = fadd fast float %698, %697
  %700 = call float @dx.op.unary.f32(i32 24, float %699)  ; Sqrt(value)
  %701 = call float @dx.op.binary.f32(i32 35, float %693, float %694)  ; FMax(a,b)
  %702 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %701)  ; FMin(a,b)
  %703 = fadd fast float %700, -1.000000e+00
  %704 = fadd fast float %703, %702
  %705 = fmul fast float %704, -5.000000e-01
  %706 = call float @dx.op.unary.f32(i32 7, float %705)  ; Saturate(value)
  %707 = fmul fast float %706, 2.000000e+00
  %708 = fsub fast float 3.000000e+00, %707
  %709 = fmul fast float %706, %706
  %710 = fmul fast float %709, %660
  %711 = fmul fast float %710, %708
  br label %712

; <label>:712                                     ; preds = %663, %656
  %713 = phi float [ %711, %663 ], [ %660, %656 ]
  %714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %715 = extractvalue %dx.types.CBufRet.f32 %714, 0
  %716 = extractvalue %dx.types.CBufRet.f32 %714, 1
  %717 = extractvalue %dx.types.CBufRet.f32 %714, 2
  %718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %719 = extractvalue %dx.types.CBufRet.f32 %718, 0
  %720 = extractvalue %dx.types.CBufRet.f32 %718, 1
  %721 = extractvalue %dx.types.CBufRet.f32 %718, 2
  %722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %723 = extractvalue %dx.types.CBufRet.f32 %722, 0
  %724 = extractvalue %dx.types.CBufRet.f32 %722, 1
  %725 = extractvalue %dx.types.CBufRet.f32 %722, 2
  %726 = fmul fast float %715, %657
  %727 = call float @dx.op.tertiary.f32(i32 46, float %716, float %658, float %726)  ; FMad(a,b,c)
  %728 = call float @dx.op.tertiary.f32(i32 46, float %717, float %659, float %727)  ; FMad(a,b,c)
  %729 = fmul fast float %719, %657
  %730 = call float @dx.op.tertiary.f32(i32 46, float %720, float %658, float %729)  ; FMad(a,b,c)
  %731 = call float @dx.op.tertiary.f32(i32 46, float %721, float %659, float %730)  ; FMad(a,b,c)
  %732 = fmul fast float %723, %657
  %733 = call float @dx.op.tertiary.f32(i32 46, float %724, float %658, float %732)  ; FMad(a,b,c)
  %734 = call float @dx.op.tertiary.f32(i32 46, float %725, float %659, float %733)  ; FMad(a,b,c)
  %735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %736 = extractvalue %dx.types.CBufRet.f32 %735, 0
  %737 = bitcast float %736 to i32
  %738 = and i32 %737, 128
  %739 = icmp eq i32 %738, 0
  br i1 %739, label %754, label %740

; <label>:740                                     ; preds = %712
  %741 = call float @dx.op.unary.f32(i32 24, float %728)  ; Sqrt(value)
  %742 = call float @dx.op.unary.f32(i32 24, float %731)  ; Sqrt(value)
  %743 = call float @dx.op.unary.f32(i32 24, float %734)  ; Sqrt(value)
  %744 = fmul fast float %741, 9.687500e-01
  %745 = fmul fast float %742, 9.687500e-01
  %746 = fmul fast float %743, 9.687500e-01
  %747 = fadd fast float %744, 1.562500e-02
  %748 = fadd fast float %745, 1.562500e-02
  %749 = fadd fast float %746, 1.562500e-02
  %750 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %11, float %747, float %748, float %749, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %751 = extractvalue %dx.types.ResRet.f32 %750, 0
  %752 = extractvalue %dx.types.ResRet.f32 %750, 1
  %753 = extractvalue %dx.types.ResRet.f32 %750, 2
  br label %1041

; <label>:754                                     ; preds = %712
  %755 = and i32 %737, 127
  switch i32 %755, label %1041 [
    i32 1, label %756
    i32 2, label %756
    i32 0, label %756
    i32 3, label %786
    i32 4, label %907
  ]

; <label>:756                                     ; preds = %754, %754, %754
  %757 = call float @dx.op.unary.f32(i32 7, float %728)  ; Saturate(value)
  %758 = call float @dx.op.unary.f32(i32 7, float %731)  ; Saturate(value)
  %759 = call float @dx.op.unary.f32(i32 7, float %734)  ; Saturate(value)
  %760 = call float @dx.op.unary.f32(i32 23, float %757)  ; Log(value)
  %761 = call float @dx.op.unary.f32(i32 23, float %758)  ; Log(value)
  %762 = call float @dx.op.unary.f32(i32 23, float %759)  ; Log(value)
  %763 = fmul fast float %760, 0x3FDAAAAAA0000000
  %764 = fmul fast float %761, 0x3FDAAAAAA0000000
  %765 = fmul fast float %762, 0x3FDAAAAAA0000000
  %766 = call float @dx.op.unary.f32(i32 21, float %763)  ; Exp(value)
  %767 = call float @dx.op.unary.f32(i32 21, float %764)  ; Exp(value)
  %768 = call float @dx.op.unary.f32(i32 21, float %765)  ; Exp(value)
  %769 = fmul fast float %766, 0x3FF0E147A0000000
  %770 = fmul fast float %767, 0x3FF0E147A0000000
  %771 = fmul fast float %768, 0x3FF0E147A0000000
  %772 = fadd fast float %769, 0xBFAC28F5C0000000
  %773 = fadd fast float %770, 0xBFAC28F5C0000000
  %774 = fadd fast float %771, 0xBFAC28F5C0000000
  %775 = call float @dx.op.unary.f32(i32 7, float %772)  ; Saturate(value)
  %776 = call float @dx.op.unary.f32(i32 7, float %773)  ; Saturate(value)
  %777 = call float @dx.op.unary.f32(i32 7, float %774)  ; Saturate(value)
  %778 = extractvalue %dx.types.CBufRet.f32 %735, 2
  %779 = extractvalue %dx.types.CBufRet.f32 %735, 3
  %780 = fmul fast float %778, %775
  %781 = fmul fast float %778, %776
  %782 = fmul fast float %778, %777
  %783 = fadd fast float %780, %779
  %784 = fadd fast float %781, %779
  %785 = fadd fast float %782, %779
  br label %1041

; <label>:786                                     ; preds = %754
  %787 = fmul fast float %728, 0x4163D57C00000000
  %788 = fmul fast float %731, 0x4163D57C00000000
  %789 = fmul fast float %734, 0x4163D57C00000000
  %790 = fadd fast float %787, 9.999980e+05
  %791 = fadd fast float %788, 9.999980e+05
  %792 = fadd fast float %789, 9.999980e+05
  %793 = fmul fast float %790, %728
  %794 = fmul fast float %791, %731
  %795 = fmul fast float %792, %734
  %796 = fadd fast float %793, 0xC0AFE17A60000000
  %797 = fadd fast float %794, 0xC0AFE17A60000000
  %798 = fadd fast float %795, 0xC0AFE17A60000000
  %799 = fmul fast float %796, %728
  %800 = fmul fast float %797, %731
  %801 = fmul fast float %798, %734
  %802 = fmul fast float %728, 0x40F753C340000000
  %803 = fmul fast float %731, 0x40F753C340000000
  %804 = fmul fast float %734, 0x40F753C340000000
  %805 = fsub fast float 9.999990e+06, %802
  %806 = fsub fast float 9.999990e+06, %803
  %807 = fsub fast float 9.999990e+06, %804
  %808 = fmul fast float %805, %728
  %809 = fmul fast float %806, %731
  %810 = fmul fast float %807, %734
  %811 = fadd fast float %808, 0x4136D1DD80000000
  %812 = fadd fast float %809, 0x4136D1DD80000000
  %813 = fadd fast float %810, 0x4136D1DD80000000
  %814 = fmul fast float %811, %728
  %815 = fmul fast float %812, %731
  %816 = fmul fast float %813, %734
  %817 = fadd fast float %814, 1.000000e+00
  %818 = fadd fast float %815, 1.000000e+00
  %819 = fadd fast float %816, 1.000000e+00
  %820 = fdiv fast float %799, %817
  %821 = fdiv fast float %800, %818
  %822 = fdiv fast float %801, %819
  %823 = call float @dx.op.unary.f32(i32 7, float %820)  ; Saturate(value)
  %824 = call float @dx.op.unary.f32(i32 7, float %821)  ; Saturate(value)
  %825 = call float @dx.op.unary.f32(i32 7, float %822)  ; Saturate(value)
  %826 = extractvalue %dx.types.CBufRet.f32 %735, 1
  %827 = fmul fast float %823, 0x3FE413A920000000
  %828 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %824, float %827)  ; FMad(a,b,c)
  %829 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %825, float %828)  ; FMad(a,b,c)
  %830 = fmul fast float %823, 0x3FB1B089A0000000
  %831 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %824, float %830)  ; FMad(a,b,c)
  %832 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %825, float %831)  ; FMad(a,b,c)
  %833 = fmul fast float %823, 0x3F90CB2960000000
  %834 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %824, float %833)  ; FMad(a,b,c)
  %835 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %825, float %834)  ; FMad(a,b,c)
  %836 = fmul fast float %829, %826
  %837 = fmul fast float %832, %826
  %838 = fmul fast float %835, %826
  %839 = fmul fast float %836, 0x3F847AE140000000
  %840 = fmul fast float %837, 0x3F847AE140000000
  %841 = fmul fast float %838, 0x3F847AE140000000
  %842 = fmul fast float %836, 0x40B4D2F520000000
  %843 = fmul fast float %837, 0x40B4D2F520000000
  %844 = fmul fast float %838, 0x40B4D2F520000000
  %845 = fadd fast float %842, 0x41869ECF20000000
  %846 = fadd fast float %843, 0x41869ECF20000000
  %847 = fadd fast float %844, 0x41869ECF20000000
  %848 = fmul fast float %845, %839
  %849 = fmul fast float %846, %840
  %850 = fmul fast float %847, %841
  %851 = fadd fast float %848, 0x417BB79C60000000
  %852 = fadd fast float %849, 0x417BB79C60000000
  %853 = fadd fast float %850, 0x417BB79C60000000
  %854 = fmul fast float %851, %839
  %855 = fmul fast float %852, %840
  %856 = fmul fast float %853, %841
  %857 = fadd fast float %854, 0x41218DE180000000
  %858 = fadd fast float %855, 0x41218DE180000000
  %859 = fadd fast float %856, 0x41218DE180000000
  %860 = fmul fast float %857, %839
  %861 = fmul fast float %858, %840
  %862 = fmul fast float %859, %841
  %863 = fadd fast float %860, 0x4077F174E0000000
  %864 = fadd fast float %861, 0x4077F174E0000000
  %865 = fadd fast float %862, 0x4077F174E0000000
  %866 = fmul fast float %863, %839
  %867 = fmul fast float %864, %840
  %868 = fmul fast float %865, %841
  %869 = fadd fast float %866, 0x3F3FF79B80000000
  %870 = fadd fast float %867, 0x3F3FF79B80000000
  %871 = fadd fast float %868, 0x3F3FF79B80000000
  %872 = fmul fast float %836, 0x412442D320000000
  %873 = fmul fast float %837, 0x412442D320000000
  %874 = fmul fast float %838, 0x412442D320000000
  %875 = fadd fast float %872, 0x419385D5C0000000
  %876 = fadd fast float %873, 0x419385D5C0000000
  %877 = fadd fast float %874, 0x419385D5C0000000
  %878 = fmul fast float %875, %839
  %879 = fmul fast float %876, %840
  %880 = fmul fast float %877, %841
  %881 = fadd fast float %878, 4.182885e+06
  %882 = fadd fast float %879, 4.182885e+06
  %883 = fadd fast float %880, 4.182885e+06
  %884 = fmul fast float %881, %839
  %885 = fmul fast float %882, %840
  %886 = fmul fast float %883, %841
  %887 = fadd fast float %884, 0x40C4D633C0000000
  %888 = fadd fast float %885, 0x40C4D633C0000000
  %889 = fadd fast float %886, 0x40C4D633C0000000
  %890 = fmul fast float %887, %839
  %891 = fmul fast float %888, %840
  %892 = fmul fast float %889, %841
  %893 = fadd fast float %890, 1.000000e+00
  %894 = fadd fast float %891, 1.000000e+00
  %895 = fadd fast float %892, 1.000000e+00
  %896 = fdiv fast float %869, %893
  %897 = fdiv fast float %870, %894
  %898 = fdiv fast float %871, %895
  %899 = extractvalue %dx.types.CBufRet.f32 %735, 2
  %900 = extractvalue %dx.types.CBufRet.f32 %735, 3
  %901 = fmul fast float %899, %896
  %902 = fmul fast float %899, %897
  %903 = fmul fast float %899, %898
  %904 = fadd fast float %901, %900
  %905 = fadd fast float %902, %900
  %906 = fadd fast float %903, %900
  br label %1041

; <label>:907                                     ; preds = %754
  %908 = fmul fast float %728, 0x4163D57C00000000
  %909 = fmul fast float %731, 0x4163D57C00000000
  %910 = fmul fast float %734, 0x4163D57C00000000
  %911 = fadd fast float %908, 9.999980e+05
  %912 = fadd fast float %909, 9.999980e+05
  %913 = fadd fast float %910, 9.999980e+05
  %914 = fmul fast float %911, %728
  %915 = fmul fast float %912, %731
  %916 = fmul fast float %913, %734
  %917 = fadd fast float %914, 0xC0AFE17A60000000
  %918 = fadd fast float %915, 0xC0AFE17A60000000
  %919 = fadd fast float %916, 0xC0AFE17A60000000
  %920 = fmul fast float %917, %728
  %921 = fmul fast float %918, %731
  %922 = fmul fast float %919, %734
  %923 = fmul fast float %728, 0x40F753C340000000
  %924 = fmul fast float %731, 0x40F753C340000000
  %925 = fmul fast float %734, 0x40F753C340000000
  %926 = fsub fast float 9.999990e+06, %923
  %927 = fsub fast float 9.999990e+06, %924
  %928 = fsub fast float 9.999990e+06, %925
  %929 = fmul fast float %926, %728
  %930 = fmul fast float %927, %731
  %931 = fmul fast float %928, %734
  %932 = fadd fast float %929, 0x4136D1DD80000000
  %933 = fadd fast float %930, 0x4136D1DD80000000
  %934 = fadd fast float %931, 0x4136D1DD80000000
  %935 = fmul fast float %932, %728
  %936 = fmul fast float %933, %731
  %937 = fmul fast float %934, %734
  %938 = fadd fast float %935, 1.000000e+00
  %939 = fadd fast float %936, 1.000000e+00
  %940 = fadd fast float %937, 1.000000e+00
  %941 = fdiv fast float %920, %938
  %942 = fdiv fast float %921, %939
  %943 = fdiv fast float %922, %940
  %944 = call float @dx.op.unary.f32(i32 7, float %941)  ; Saturate(value)
  %945 = call float @dx.op.unary.f32(i32 7, float %942)  ; Saturate(value)
  %946 = call float @dx.op.unary.f32(i32 7, float %943)  ; Saturate(value)
  %947 = extractvalue %dx.types.CBufRet.f32 %735, 1
  %948 = fmul fast float %944, 0x3FEA519BC0000000
  %949 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %945, float %948)  ; FMad(a,b,c)
  %950 = fmul fast float %944, 0x3FA0FED480000000
  %951 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %945, float %950)  ; FMad(a,b,c)
  %952 = fmul fast float %944, 0x3F917E1C00000000
  %953 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %945, float %952)  ; FMad(a,b,c)
  %954 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %946, float %953)  ; FMad(a,b,c)
  %955 = call float @dx.op.binary.f32(i32 35, float %944, float %945)  ; FMax(a,b)
  %956 = call float @dx.op.binary.f32(i32 35, float %955, float %946)  ; FMax(a,b)
  %957 = fadd fast float %956, -1.000000e+00
  %958 = fmul fast float %957, 2.500000e-01
  %959 = call float @dx.op.unary.f32(i32 7, float %958)  ; Saturate(value)
  %960 = fsub fast float 1.000000e+00, %959
  %961 = fmul fast float %960, %949
  %962 = fmul fast float %960, %951
  %963 = fmul fast float %960, %954
  %964 = fmul fast float %959, %944
  %965 = fmul fast float %959, %945
  %966 = fmul fast float %959, %946
  %967 = fadd fast float %961, %964
  %968 = fadd fast float %962, %965
  %969 = fadd fast float %963, %966
  %970 = fmul fast float %967, %947
  %971 = fmul fast float %968, %947
  %972 = fmul fast float %969, %947
  %973 = fmul fast float %970, 0x3F847AE140000000
  %974 = fmul fast float %971, 0x3F847AE140000000
  %975 = fmul fast float %972, 0x3F847AE140000000
  %976 = fmul fast float %970, 0x40B4D2F520000000
  %977 = fmul fast float %971, 0x40B4D2F520000000
  %978 = fmul fast float %972, 0x40B4D2F520000000
  %979 = fadd fast float %976, 0x41869ECF20000000
  %980 = fadd fast float %977, 0x41869ECF20000000
  %981 = fadd fast float %978, 0x41869ECF20000000
  %982 = fmul fast float %979, %973
  %983 = fmul fast float %980, %974
  %984 = fmul fast float %981, %975
  %985 = fadd fast float %982, 0x417BB79C60000000
  %986 = fadd fast float %983, 0x417BB79C60000000
  %987 = fadd fast float %984, 0x417BB79C60000000
  %988 = fmul fast float %985, %973
  %989 = fmul fast float %986, %974
  %990 = fmul fast float %987, %975
  %991 = fadd fast float %988, 0x41218DE180000000
  %992 = fadd fast float %989, 0x41218DE180000000
  %993 = fadd fast float %990, 0x41218DE180000000
  %994 = fmul fast float %991, %973
  %995 = fmul fast float %992, %974
  %996 = fmul fast float %993, %975
  %997 = fadd fast float %994, 0x4077F174E0000000
  %998 = fadd fast float %995, 0x4077F174E0000000
  %999 = fadd fast float %996, 0x4077F174E0000000
  %1000 = fmul fast float %997, %973
  %1001 = fmul fast float %998, %974
  %1002 = fmul fast float %999, %975
  %1003 = fadd fast float %1000, 0x3F3FF79B80000000
  %1004 = fadd fast float %1001, 0x3F3FF79B80000000
  %1005 = fadd fast float %1002, 0x3F3FF79B80000000
  %1006 = fmul fast float %970, 0x412442D320000000
  %1007 = fmul fast float %971, 0x412442D320000000
  %1008 = fmul fast float %972, 0x412442D320000000
  %1009 = fadd fast float %1006, 0x419385D5C0000000
  %1010 = fadd fast float %1007, 0x419385D5C0000000
  %1011 = fadd fast float %1008, 0x419385D5C0000000
  %1012 = fmul fast float %1009, %973
  %1013 = fmul fast float %1010, %974
  %1014 = fmul fast float %1011, %975
  %1015 = fadd fast float %1012, 4.182885e+06
  %1016 = fadd fast float %1013, 4.182885e+06
  %1017 = fadd fast float %1014, 4.182885e+06
  %1018 = fmul fast float %1015, %973
  %1019 = fmul fast float %1016, %974
  %1020 = fmul fast float %1017, %975
  %1021 = fadd fast float %1018, 0x40C4D633C0000000
  %1022 = fadd fast float %1019, 0x40C4D633C0000000
  %1023 = fadd fast float %1020, 0x40C4D633C0000000
  %1024 = fmul fast float %1021, %973
  %1025 = fmul fast float %1022, %974
  %1026 = fmul fast float %1023, %975
  %1027 = fadd fast float %1024, 1.000000e+00
  %1028 = fadd fast float %1025, 1.000000e+00
  %1029 = fadd fast float %1026, 1.000000e+00
  %1030 = fdiv fast float %1003, %1027
  %1031 = fdiv fast float %1004, %1028
  %1032 = fdiv fast float %1005, %1029
  %1033 = extractvalue %dx.types.CBufRet.f32 %735, 2
  %1034 = extractvalue %dx.types.CBufRet.f32 %735, 3
  %1035 = fmul fast float %1033, %1030
  %1036 = fmul fast float %1033, %1031
  %1037 = fmul fast float %1033, %1032
  %1038 = fadd fast float %1035, %1034
  %1039 = fadd fast float %1036, %1034
  %1040 = fadd fast float %1037, %1034
  br label %1041

; <label>:1041                                    ; preds = %907, %786, %756, %754, %740
  %1042 = phi float [ %751, %740 ], [ %728, %754 ], [ %1038, %907 ], [ %904, %786 ], [ %783, %756 ]
  %1043 = phi float [ %752, %740 ], [ %731, %754 ], [ %1039, %907 ], [ %905, %786 ], [ %784, %756 ]
  %1044 = phi float [ %753, %740 ], [ %734, %754 ], [ %1040, %907 ], [ %906, %786 ], [ %785, %756 ]
  %1045 = fmul fast float %1042, %713
  %1046 = fmul fast float %1043, %713
  %1047 = fmul fast float %1044, %713
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1045)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1046)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1047)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %713)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

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
!dx.viewIdState = !{!24}
!dx.entryPoints = !{!25}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !14, !18}
!5 = !{!6, !8, !9, !10, !11, !12, !13}
!6 = !{i32 0, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 74, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 73, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 70, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 71, i32 1, i32 4, i32 0, !7}
!14 = !{!15, !16, !17}
!15 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!16 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 320, null}
!17 = !{i32 2, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 144, null}
!18 = !{!19, !20, !21, !22, !23}
!19 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!20 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!21 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!22 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!23 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!24 = !{[26 x i32] [i32 24, i32 4, i32 15, i32 15, i32 0, i32 0, i32 7, i32 7, i32 7, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 15, i32 15, i32 7, i32 7]}
!25 = !{void ()* @ps_main, !"ps_main", !26, !4, null}
!26 = !{!27, !48, null}
!27 = !{!28, !31, !33, !34, !36, !38, !40, !42, !44, !46}
!28 = !{i32 0, !"SV_Position", i8 9, i8 3, !29, i8 4, i32 1, i8 4, i32 0, i8 0, !30}
!29 = !{i32 0}
!30 = !{i32 3, i32 3}
!31 = !{i32 1, !"COLOR", i8 9, i8 0, !29, i8 2, i32 1, i8 4, i32 1, i8 0, !32}
!32 = !{i32 3, i32 15}
!33 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !29, i8 2, i32 1, i8 2, i32 2, i8 0, !30}
!34 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !35, i8 2, i32 1, i8 2, i32 2, i8 2, !30}
!35 = !{i32 2}
!36 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !37, i8 2, i32 1, i8 2, i32 3, i8 0, null}
!37 = !{i32 3}
!38 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !39, i8 2, i32 1, i8 2, i32 3, i8 2, null}
!39 = !{i32 4}
!40 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !41, i8 2, i32 1, i8 2, i32 4, i8 0, null}
!41 = !{i32 5}
!42 = !{i32 7, !"TEXCOORD", i8 9, i8 0, !43, i8 2, i32 1, i8 2, i32 4, i8 2, null}
!43 = !{i32 6}
!44 = !{i32 8, !"TEXCOORD", i8 9, i8 0, !45, i8 2, i32 1, i8 2, i32 5, i8 0, !30}
!45 = !{i32 1}
!46 = !{i32 9, !"TEXCOORD", i8 9, i8 0, !47, i8 2, i32 1, i8 2, i32 5, i8 2, !30}
!47 = !{i32 7}
!48 = !{!49}
!49 = !{i32 0, !"SV_Target", i8 9, i8 16, !29, i8 0, i32 1, i8 4, i32 0, i8 0, !32}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 1}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 1}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 1}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 1}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 1}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}

