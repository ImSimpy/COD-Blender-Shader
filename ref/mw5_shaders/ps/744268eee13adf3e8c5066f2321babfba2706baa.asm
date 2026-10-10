;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy  
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 2     zw        2     NONE   float     zw
; TEXCOORD                 3   xy          3     NONE   float   xy  
; TEXCOORD                 4     zw        3     NONE   float     zw
; TEXCOORD                 5   xy          4     NONE   float   xy  
; TEXCOORD                 6     zw        4     NONE   float     zw
; TEXCOORD                 7   xy          5     NONE   float   xy  
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: ad3f2c4d6571f4eb9d12fb62eadd1bbd
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
;   [240 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S0             s2     1
;                                   sampler      NA          NA      S1             s3     1
;                                   sampler      NA          NA      S2             s4     1
;                                   texture     f32          3d      T0     t74,space2     1
;                                   texture     f32          2d      T1     t73,space2     1
;                                   texture     f32          2d      T2     t70,space2     1
;                                   texture     f32          2d      T3     t76,space2     1
;                                   texture     f32          2d      T4             t0     1
;                                   texture     f32          2d      T5             t1     1
;                                   texture     f32          2d      T6             t2     1
;                                   texture     f32          2d      T7             t3     1
;                                   texture     f32          2d      T8             t4     1
;                                   texture     f32          2d      T9             t5     1
;                                   texture     f32          3d     T10     t71,space2     1
;
;
; ViewId state:
;
; Number of inputs: 22, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21 }
;   output 1 depends on inputs: { 0, 1, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21 }
;   output 2 depends on inputs: { 0, 1, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21 }
;   output 3 depends on inputs: { 0, 1, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
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
%perObject = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 71, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 76, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 70, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 73, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 74, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %39 = extractvalue %dx.types.CBufRet.f32 %38, 3
  %40 = fcmp fast ogt float %39, 0.000000e+00
  br i1 %40, label %41, label %91, !dx.controlflow.hints !50

; <label>:41                                      ; preds = %0
  %42 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %43 = extractvalue %dx.types.CBufRet.f32 %42, 3
  %44 = fmul fast float %43, 1.000000e+01
  %45 = call float @dx.op.unary.f32(i32 27, float %44)  ; Round_ni(value)
  %46 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %47 = extractvalue %dx.types.CBufRet.f32 %46, 0
  %48 = extractvalue %dx.types.CBufRet.f32 %46, 1
  %49 = fmul fast float %47, %36
  %50 = fmul fast float %48, %37
  %51 = call float @dx.op.unary.f32(i32 27, float %49)  ; Round_ni(value)
  %52 = call float @dx.op.unary.f32(i32 27, float %50)  ; Round_ni(value)
  %53 = fmul fast float %45, 0x4002B851E0000000
  %54 = call float @dx.op.unary.f32(i32 22, float %53)  ; Frc(value)
  %55 = fadd fast float %54, 0x3FB99999A0000000
  %56 = fadd fast float %55, %51
  %57 = fadd fast float %55, %52
  %58 = fmul fast float %56, 0x3FE1BEDF00000000
  %59 = call float @dx.op.unary.f32(i32 22, float %58)  ; Frc(value)
  %60 = fmul fast float %56, %59
  %61 = fadd fast float %60, %57
  %62 = fmul fast float %57, 0x3FD3BEBE20000000
  %63 = call float @dx.op.unary.f32(i32 22, float %62)  ; Frc(value)
  %64 = fmul fast float %57, %63
  %65 = fadd fast float %64, %56
  %66 = fmul fast float %61, %65
  %67 = call float @dx.op.unary.f32(i32 22, float %66)  ; Frc(value)
  %68 = extractvalue %dx.types.CBufRet.f32 %46, 3
  %69 = bitcast float %68 to i32
  %70 = and i32 %69, 255
  %71 = uitofp i32 %70 to float
  %72 = fmul fast float %67, 0x4085373340000000
  %73 = call float @dx.op.unary.f32(i32 22, float %72)  ; Frc(value)
  %74 = fmul fast float %71, 0x3F6CE9B6A0000000
  %75 = fcmp fast olt float %73, %74
  br i1 %75, label %76, label %91, !dx.controlflow.hints !51

; <label>:76                                      ; preds = %41
  %77 = fdiv fast float %73, %74
  %78 = fmul fast float %77, 2.000000e+00
  %79 = fadd fast float %78, -1.000000e+00
  %80 = lshr i32 %69, 8
  %81 = and i32 %80, 255
  %82 = uitofp i32 %81 to float
  %83 = call float @dx.op.unary.f32(i32 83, float %30)  ; DerivCoarseX(value)
  %84 = call float @dx.op.unary.f32(i32 83, float %31)  ; DerivCoarseX(value)
  %85 = fmul fast float %79, %83
  %86 = fmul fast float %85, %82
  %87 = fmul fast float %84, %79
  %88 = fmul fast float %87, %82
  %89 = fadd fast float %86, %30
  %90 = fadd fast float %88, %31
  br label %91

; <label>:91                                      ; preds = %76, %41, %0
  %92 = phi float [ %89, %76 ], [ %30, %41 ], [ %30, %0 ]
  %93 = phi float [ %90, %76 ], [ %31, %41 ], [ %31, %0 ]
  %94 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %14, float %92, float %93, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %95 = extractvalue %dx.types.ResRet.f32 %94, 3
  %96 = fmul fast float %95, 2.000000e+00
  %97 = fadd fast float %96, -1.000000e+00
  %98 = call float @dx.op.unary.f32(i32 83, float %97)  ; DerivCoarseX(value)
  %99 = call float @dx.op.unary.f32(i32 84, float %97)  ; DerivCoarseY(value)
  %100 = fmul fast float %98, %98
  %101 = fmul fast float %99, %99
  %102 = fadd fast float %101, %100
  %103 = call float @dx.op.unary.f32(i32 24, float %102)  ; Sqrt(value)
  %104 = fmul fast float %103, 2.000000e+00
  %105 = fadd fast float %103, %97
  %106 = fdiv fast float %105, %104
  %107 = call float @dx.op.unary.f32(i32 7, float %106)  ; Saturate(value)
  %108 = fmul fast float %107, 2.000000e+00
  %109 = fsub fast float 3.000000e+00, %108
  %110 = fmul fast float %107, %107
  %111 = fmul fast float %110, %35
  %112 = fmul fast float %111, %109
  %113 = fcmp fast ole float %32, 0x3FA4B5DCC0000000
  %114 = fmul fast float %32, 0x3FB3D07220000000
  %115 = fadd fast float %32, 0x3FAC28F5C0000000
  %116 = fmul fast float %115, 0x3FEE54EDE0000000
  %117 = call float @dx.op.unary.f32(i32 23, float %116)  ; Log(value)
  %118 = fmul fast float %117, 0x4003333340000000
  %119 = call float @dx.op.unary.f32(i32 21, float %118)  ; Exp(value)
  %120 = select i1 %113, float %114, float %119
  %121 = fcmp fast ole float %33, 0x3FA4B5DCC0000000
  %122 = fmul fast float %33, 0x3FB3D07220000000
  %123 = fadd fast float %33, 0x3FAC28F5C0000000
  %124 = fmul fast float %123, 0x3FEE54EDE0000000
  %125 = call float @dx.op.unary.f32(i32 23, float %124)  ; Log(value)
  %126 = fmul fast float %125, 0x4003333340000000
  %127 = call float @dx.op.unary.f32(i32 21, float %126)  ; Exp(value)
  %128 = select i1 %121, float %122, float %127
  %129 = fcmp fast ole float %34, 0x3FA4B5DCC0000000
  %130 = fmul fast float %34, 0x3FB3D07220000000
  %131 = fadd fast float %34, 0x3FAC28F5C0000000
  %132 = fmul fast float %131, 0x3FEE54EDE0000000
  %133 = call float @dx.op.unary.f32(i32 23, float %132)  ; Log(value)
  %134 = fmul fast float %133, 0x4003333340000000
  %135 = call float @dx.op.unary.f32(i32 21, float %134)  ; Exp(value)
  %136 = select i1 %129, float %130, float %135
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 3
  %139 = bitcast float %138 to i32
  %140 = lshr i32 %139, 4
  %141 = lshr i32 %139, 9
  %142 = and i32 %141, 1
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %238, label %144

; <label>:144                                     ; preds = %91
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 3
  %147 = bitcast float %146 to i32
  %148 = and i32 %147, 65535
  %149 = call float @dx.op.legacyF16ToF32(i32 131, i32 %148)  ; LegacyF16ToF32(value)
  %150 = lshr i32 %147, 16
  %151 = call float @dx.op.legacyF16ToF32(i32 131, i32 %150)  ; LegacyF16ToF32(value)
  %152 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %153 = bitcast float %152 to i32
  %154 = and i32 %153, 65535
  %155 = call float @dx.op.legacyF16ToF32(i32 131, i32 %154)  ; LegacyF16ToF32(value)
  %156 = lshr i32 %153, 16
  %157 = call float @dx.op.legacyF16ToF32(i32 131, i32 %156)  ; LegacyF16ToF32(value)
  %158 = and i32 %140, 1
  %159 = icmp ne i32 %158, 0
  %160 = fcmp fast ogt float %149, 0.000000e+00
  %161 = fcmp fast ogt float %151, 0.000000e+00
  %162 = and i1 %160, %161
  %163 = fcmp fast ogt float %155, 0.000000e+00
  br i1 %162, label %164, label %224

; <label>:164                                     ; preds = %144
  br i1 %163, label %165, label %173

; <label>:165                                     ; preds = %164
  %166 = fmul fast float %151, %29
  %167 = fmul fast float %149, %28
  %168 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %12, float %167, float %166, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %169 = extractvalue %dx.types.ResRet.f32 %168, 0
  %170 = fsub fast float 1.000000e+00, %169
  %171 = select i1 %159, float %170, float %169
  %172 = fmul fast float %171, %155
  br label %173

; <label>:173                                     ; preds = %165, %164
  %174 = phi float [ %172, %165 ], [ 0.000000e+00, %164 ]
  %175 = fadd fast float %174, %157
  %176 = call float @dx.op.unary.f32(i32 7, float %175)  ; Saturate(value)
  br i1 %163, label %177, label %187

; <label>:177                                     ; preds = %173
  %178 = fmul fast float %151, %29
  %179 = fsub fast float 1.000000e+00, %28
  %180 = fmul fast float %149, %179
  %181 = fsub fast float 1.000000e+00, %180
  %182 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %12, float %181, float %178, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %183 = extractvalue %dx.types.ResRet.f32 %182, 1
  %184 = fsub fast float 1.000000e+00, %183
  %185 = select i1 %159, float %184, float %183
  %186 = fmul fast float %185, %155
  br label %187

; <label>:187                                     ; preds = %177, %173
  %188 = phi float [ %186, %177 ], [ 0.000000e+00, %173 ]
  %189 = fadd fast float %188, %157
  %190 = call float @dx.op.unary.f32(i32 7, float %189)  ; Saturate(value)
  %191 = fmul fast float %190, %176
  br i1 %163, label %192, label %204

; <label>:192                                     ; preds = %187
  %193 = fsub fast float 1.000000e+00, %29
  %194 = fmul fast float %151, %193
  %195 = fsub fast float 1.000000e+00, %194
  %196 = fsub fast float 1.000000e+00, %28
  %197 = fmul fast float %149, %196
  %198 = fsub fast float 1.000000e+00, %197
  %199 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %12, float %198, float %195, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %200 = extractvalue %dx.types.ResRet.f32 %199, 2
  %201 = fsub fast float 1.000000e+00, %200
  %202 = select i1 %159, float %201, float %200
  %203 = fmul fast float %202, %155
  br label %204

; <label>:204                                     ; preds = %192, %187
  %205 = phi float [ %203, %192 ], [ 0.000000e+00, %187 ]
  %206 = fadd fast float %205, %157
  %207 = call float @dx.op.unary.f32(i32 7, float %206)  ; Saturate(value)
  %208 = fmul fast float %191, %207
  br i1 %163, label %209, label %219

; <label>:209                                     ; preds = %204
  %210 = fsub fast float 1.000000e+00, %29
  %211 = fmul fast float %151, %210
  %212 = fsub fast float 1.000000e+00, %211
  %213 = fmul fast float %149, %28
  %214 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %12, float %213, float %212, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %215 = extractvalue %dx.types.ResRet.f32 %214, 3
  %216 = fsub fast float 1.000000e+00, %215
  %217 = select i1 %159, float %216, float %215
  %218 = fmul fast float %217, %155
  br label %219

; <label>:219                                     ; preds = %209, %204
  %220 = phi float [ %218, %209 ], [ 0.000000e+00, %204 ]
  %221 = fadd fast float %220, %157
  %222 = call float @dx.op.unary.f32(i32 7, float %221)  ; Saturate(value)
  %223 = fmul fast float %208, %222
  br label %235

; <label>:224                                     ; preds = %144
  br i1 %163, label %225, label %231

; <label>:225                                     ; preds = %224
  %226 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %12, float %28, float %29, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %227 = extractvalue %dx.types.ResRet.f32 %226, 0
  %228 = fsub fast float 1.000000e+00, %227
  %229 = select i1 %159, float %228, float %227
  %230 = fmul fast float %229, %155
  br label %231

; <label>:231                                     ; preds = %225, %224
  %232 = phi float [ %230, %225 ], [ 0.000000e+00, %224 ]
  %233 = fadd fast float %232, %157
  %234 = call float @dx.op.unary.f32(i32 7, float %233)  ; Saturate(value)
  br label %235

; <label>:235                                     ; preds = %231, %219
  %236 = phi float [ %223, %219 ], [ %234, %231 ]
  %237 = fmul fast float %236, %112
  br label %238

; <label>:238                                     ; preds = %235, %91
  %239 = phi float [ %237, %235 ], [ %112, %91 ]
  %240 = and i32 %141, 2
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %336, label %242

; <label>:242                                     ; preds = %238
  %243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %244 = extractvalue %dx.types.CBufRet.f32 %243, 3
  %245 = bitcast float %244 to i32
  %246 = and i32 %245, 65535
  %247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %246)  ; LegacyF16ToF32(value)
  %248 = lshr i32 %245, 16
  %249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %248)  ; LegacyF16ToF32(value)
  %250 = extractvalue %dx.types.CBufRet.f32 %243, 2
  %251 = bitcast float %250 to i32
  %252 = and i32 %251, 65535
  %253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %252)  ; LegacyF16ToF32(value)
  %254 = lshr i32 %251, 16
  %255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %254)  ; LegacyF16ToF32(value)
  %256 = and i32 %140, 2
  %257 = icmp ne i32 %256, 0
  %258 = fcmp fast ogt float %247, 0.000000e+00
  %259 = fcmp fast ogt float %249, 0.000000e+00
  %260 = and i1 %258, %259
  %261 = fcmp fast ogt float %253, 0.000000e+00
  br i1 %260, label %262, label %322

; <label>:262                                     ; preds = %242
  br i1 %261, label %263, label %271

; <label>:263                                     ; preds = %262
  %264 = fmul fast float %249, %27
  %265 = fmul fast float %247, %26
  %266 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %12, float %265, float %264, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %267 = extractvalue %dx.types.ResRet.f32 %266, 0
  %268 = fsub fast float 1.000000e+00, %267
  %269 = select i1 %257, float %268, float %267
  %270 = fmul fast float %269, %253
  br label %271

; <label>:271                                     ; preds = %263, %262
  %272 = phi float [ %270, %263 ], [ 0.000000e+00, %262 ]
  %273 = fadd fast float %272, %255
  %274 = call float @dx.op.unary.f32(i32 7, float %273)  ; Saturate(value)
  br i1 %261, label %275, label %285

; <label>:275                                     ; preds = %271
  %276 = fmul fast float %249, %27
  %277 = fsub fast float 1.000000e+00, %26
  %278 = fmul fast float %247, %277
  %279 = fsub fast float 1.000000e+00, %278
  %280 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %12, float %279, float %276, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %281 = extractvalue %dx.types.ResRet.f32 %280, 1
  %282 = fsub fast float 1.000000e+00, %281
  %283 = select i1 %257, float %282, float %281
  %284 = fmul fast float %283, %253
  br label %285

; <label>:285                                     ; preds = %275, %271
  %286 = phi float [ %284, %275 ], [ 0.000000e+00, %271 ]
  %287 = fadd fast float %286, %255
  %288 = call float @dx.op.unary.f32(i32 7, float %287)  ; Saturate(value)
  %289 = fmul fast float %288, %274
  br i1 %261, label %290, label %302

; <label>:290                                     ; preds = %285
  %291 = fsub fast float 1.000000e+00, %27
  %292 = fmul fast float %249, %291
  %293 = fsub fast float 1.000000e+00, %292
  %294 = fsub fast float 1.000000e+00, %26
  %295 = fmul fast float %247, %294
  %296 = fsub fast float 1.000000e+00, %295
  %297 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %12, float %296, float %293, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %298 = extractvalue %dx.types.ResRet.f32 %297, 2
  %299 = fsub fast float 1.000000e+00, %298
  %300 = select i1 %257, float %299, float %298
  %301 = fmul fast float %300, %253
  br label %302

; <label>:302                                     ; preds = %290, %285
  %303 = phi float [ %301, %290 ], [ 0.000000e+00, %285 ]
  %304 = fadd fast float %303, %255
  %305 = call float @dx.op.unary.f32(i32 7, float %304)  ; Saturate(value)
  %306 = fmul fast float %289, %305
  br i1 %261, label %307, label %317

; <label>:307                                     ; preds = %302
  %308 = fsub fast float 1.000000e+00, %27
  %309 = fmul fast float %249, %308
  %310 = fsub fast float 1.000000e+00, %309
  %311 = fmul fast float %247, %26
  %312 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %12, float %311, float %310, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %313 = extractvalue %dx.types.ResRet.f32 %312, 3
  %314 = fsub fast float 1.000000e+00, %313
  %315 = select i1 %257, float %314, float %313
  %316 = fmul fast float %315, %253
  br label %317

; <label>:317                                     ; preds = %307, %302
  %318 = phi float [ %316, %307 ], [ 0.000000e+00, %302 ]
  %319 = fadd fast float %318, %255
  %320 = call float @dx.op.unary.f32(i32 7, float %319)  ; Saturate(value)
  %321 = fmul fast float %306, %320
  br label %333

; <label>:322                                     ; preds = %242
  br i1 %261, label %323, label %329

; <label>:323                                     ; preds = %322
  %324 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %12, float %26, float %27, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %325 = extractvalue %dx.types.ResRet.f32 %324, 0
  %326 = fsub fast float 1.000000e+00, %325
  %327 = select i1 %257, float %326, float %325
  %328 = fmul fast float %327, %253
  br label %329

; <label>:329                                     ; preds = %323, %322
  %330 = phi float [ %328, %323 ], [ 0.000000e+00, %322 ]
  %331 = fadd fast float %330, %255
  %332 = call float @dx.op.unary.f32(i32 7, float %331)  ; Saturate(value)
  br label %333

; <label>:333                                     ; preds = %329, %317
  %334 = phi float [ %321, %317 ], [ %332, %329 ]
  %335 = fmul fast float %334, %239
  br label %336

; <label>:336                                     ; preds = %333, %238
  %337 = phi float [ %335, %333 ], [ %239, %238 ]
  %338 = and i32 %141, 4
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %434, label %340

; <label>:340                                     ; preds = %336
  %341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %342 = extractvalue %dx.types.CBufRet.f32 %341, 3
  %343 = bitcast float %342 to i32
  %344 = and i32 %343, 65535
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = lshr i32 %343, 16
  %347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %346)  ; LegacyF16ToF32(value)
  %348 = extractvalue %dx.types.CBufRet.f32 %341, 2
  %349 = bitcast float %348 to i32
  %350 = and i32 %349, 65535
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = lshr i32 %349, 16
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = and i32 %140, 4
  %355 = icmp ne i32 %354, 0
  %356 = fcmp fast ogt float %345, 0.000000e+00
  %357 = fcmp fast ogt float %347, 0.000000e+00
  %358 = and i1 %356, %357
  %359 = fcmp fast ogt float %351, 0.000000e+00
  br i1 %358, label %360, label %420

; <label>:360                                     ; preds = %340
  br i1 %359, label %361, label %369

; <label>:361                                     ; preds = %360
  %362 = fmul fast float %347, %25
  %363 = fmul fast float %345, %24
  %364 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %12, float %363, float %362, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %365 = extractvalue %dx.types.ResRet.f32 %364, 0
  %366 = fsub fast float 1.000000e+00, %365
  %367 = select i1 %355, float %366, float %365
  %368 = fmul fast float %367, %351
  br label %369

; <label>:369                                     ; preds = %361, %360
  %370 = phi float [ %368, %361 ], [ 0.000000e+00, %360 ]
  %371 = fadd fast float %370, %353
  %372 = call float @dx.op.unary.f32(i32 7, float %371)  ; Saturate(value)
  br i1 %359, label %373, label %383

; <label>:373                                     ; preds = %369
  %374 = fmul fast float %347, %25
  %375 = fsub fast float 1.000000e+00, %24
  %376 = fmul fast float %345, %375
  %377 = fsub fast float 1.000000e+00, %376
  %378 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %12, float %377, float %374, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %379 = extractvalue %dx.types.ResRet.f32 %378, 1
  %380 = fsub fast float 1.000000e+00, %379
  %381 = select i1 %355, float %380, float %379
  %382 = fmul fast float %381, %351
  br label %383

; <label>:383                                     ; preds = %373, %369
  %384 = phi float [ %382, %373 ], [ 0.000000e+00, %369 ]
  %385 = fadd fast float %384, %353
  %386 = call float @dx.op.unary.f32(i32 7, float %385)  ; Saturate(value)
  %387 = fmul fast float %386, %372
  br i1 %359, label %388, label %400

; <label>:388                                     ; preds = %383
  %389 = fsub fast float 1.000000e+00, %25
  %390 = fmul fast float %347, %389
  %391 = fsub fast float 1.000000e+00, %390
  %392 = fsub fast float 1.000000e+00, %24
  %393 = fmul fast float %345, %392
  %394 = fsub fast float 1.000000e+00, %393
  %395 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %12, float %394, float %391, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %396 = extractvalue %dx.types.ResRet.f32 %395, 2
  %397 = fsub fast float 1.000000e+00, %396
  %398 = select i1 %355, float %397, float %396
  %399 = fmul fast float %398, %351
  br label %400

; <label>:400                                     ; preds = %388, %383
  %401 = phi float [ %399, %388 ], [ 0.000000e+00, %383 ]
  %402 = fadd fast float %401, %353
  %403 = call float @dx.op.unary.f32(i32 7, float %402)  ; Saturate(value)
  %404 = fmul fast float %387, %403
  br i1 %359, label %405, label %415

; <label>:405                                     ; preds = %400
  %406 = fsub fast float 1.000000e+00, %25
  %407 = fmul fast float %347, %406
  %408 = fsub fast float 1.000000e+00, %407
  %409 = fmul fast float %345, %24
  %410 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %12, float %409, float %408, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %411 = extractvalue %dx.types.ResRet.f32 %410, 3
  %412 = fsub fast float 1.000000e+00, %411
  %413 = select i1 %355, float %412, float %411
  %414 = fmul fast float %413, %351
  br label %415

; <label>:415                                     ; preds = %405, %400
  %416 = phi float [ %414, %405 ], [ 0.000000e+00, %400 ]
  %417 = fadd fast float %416, %353
  %418 = call float @dx.op.unary.f32(i32 7, float %417)  ; Saturate(value)
  %419 = fmul fast float %404, %418
  br label %431

; <label>:420                                     ; preds = %340
  br i1 %359, label %421, label %427

; <label>:421                                     ; preds = %420
  %422 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %12, float %24, float %25, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %423 = extractvalue %dx.types.ResRet.f32 %422, 0
  %424 = fsub fast float 1.000000e+00, %423
  %425 = select i1 %355, float %424, float %423
  %426 = fmul fast float %425, %351
  br label %427

; <label>:427                                     ; preds = %421, %420
  %428 = phi float [ %426, %421 ], [ 0.000000e+00, %420 ]
  %429 = fadd fast float %428, %353
  %430 = call float @dx.op.unary.f32(i32 7, float %429)  ; Saturate(value)
  br label %431

; <label>:431                                     ; preds = %427, %415
  %432 = phi float [ %419, %415 ], [ %430, %427 ]
  %433 = fmul fast float %432, %337
  br label %434

; <label>:434                                     ; preds = %431, %336
  %435 = phi float [ %433, %431 ], [ %337, %336 ]
  %436 = and i32 %141, 8
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %532, label %438

; <label>:438                                     ; preds = %434
  %439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %440 = extractvalue %dx.types.CBufRet.f32 %439, 3
  %441 = bitcast float %440 to i32
  %442 = and i32 %441, 65535
  %443 = call float @dx.op.legacyF16ToF32(i32 131, i32 %442)  ; LegacyF16ToF32(value)
  %444 = lshr i32 %441, 16
  %445 = call float @dx.op.legacyF16ToF32(i32 131, i32 %444)  ; LegacyF16ToF32(value)
  %446 = extractvalue %dx.types.CBufRet.f32 %439, 2
  %447 = bitcast float %446 to i32
  %448 = and i32 %447, 65535
  %449 = call float @dx.op.legacyF16ToF32(i32 131, i32 %448)  ; LegacyF16ToF32(value)
  %450 = lshr i32 %447, 16
  %451 = call float @dx.op.legacyF16ToF32(i32 131, i32 %450)  ; LegacyF16ToF32(value)
  %452 = and i32 %140, 8
  %453 = icmp ne i32 %452, 0
  %454 = fcmp fast ogt float %443, 0.000000e+00
  %455 = fcmp fast ogt float %445, 0.000000e+00
  %456 = and i1 %454, %455
  %457 = fcmp fast ogt float %449, 0.000000e+00
  br i1 %456, label %458, label %518

; <label>:458                                     ; preds = %438
  br i1 %457, label %459, label %467

; <label>:459                                     ; preds = %458
  %460 = fmul fast float %445, %23
  %461 = fmul fast float %443, %22
  %462 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %12, float %461, float %460, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %463 = extractvalue %dx.types.ResRet.f32 %462, 0
  %464 = fsub fast float 1.000000e+00, %463
  %465 = select i1 %453, float %464, float %463
  %466 = fmul fast float %465, %449
  br label %467

; <label>:467                                     ; preds = %459, %458
  %468 = phi float [ %466, %459 ], [ 0.000000e+00, %458 ]
  %469 = fadd fast float %468, %451
  %470 = call float @dx.op.unary.f32(i32 7, float %469)  ; Saturate(value)
  br i1 %457, label %471, label %481

; <label>:471                                     ; preds = %467
  %472 = fmul fast float %445, %23
  %473 = fsub fast float 1.000000e+00, %22
  %474 = fmul fast float %443, %473
  %475 = fsub fast float 1.000000e+00, %474
  %476 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %12, float %475, float %472, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %477 = extractvalue %dx.types.ResRet.f32 %476, 1
  %478 = fsub fast float 1.000000e+00, %477
  %479 = select i1 %453, float %478, float %477
  %480 = fmul fast float %479, %449
  br label %481

; <label>:481                                     ; preds = %471, %467
  %482 = phi float [ %480, %471 ], [ 0.000000e+00, %467 ]
  %483 = fadd fast float %482, %451
  %484 = call float @dx.op.unary.f32(i32 7, float %483)  ; Saturate(value)
  %485 = fmul fast float %484, %470
  br i1 %457, label %486, label %498

; <label>:486                                     ; preds = %481
  %487 = fsub fast float 1.000000e+00, %23
  %488 = fmul fast float %445, %487
  %489 = fsub fast float 1.000000e+00, %488
  %490 = fsub fast float 1.000000e+00, %22
  %491 = fmul fast float %443, %490
  %492 = fsub fast float 1.000000e+00, %491
  %493 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %12, float %492, float %489, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %494 = extractvalue %dx.types.ResRet.f32 %493, 2
  %495 = fsub fast float 1.000000e+00, %494
  %496 = select i1 %453, float %495, float %494
  %497 = fmul fast float %496, %449
  br label %498

; <label>:498                                     ; preds = %486, %481
  %499 = phi float [ %497, %486 ], [ 0.000000e+00, %481 ]
  %500 = fadd fast float %499, %451
  %501 = call float @dx.op.unary.f32(i32 7, float %500)  ; Saturate(value)
  %502 = fmul fast float %485, %501
  br i1 %457, label %503, label %513

; <label>:503                                     ; preds = %498
  %504 = fsub fast float 1.000000e+00, %23
  %505 = fmul fast float %445, %504
  %506 = fsub fast float 1.000000e+00, %505
  %507 = fmul fast float %443, %22
  %508 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %12, float %507, float %506, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %509 = extractvalue %dx.types.ResRet.f32 %508, 3
  %510 = fsub fast float 1.000000e+00, %509
  %511 = select i1 %453, float %510, float %509
  %512 = fmul fast float %511, %449
  br label %513

; <label>:513                                     ; preds = %503, %498
  %514 = phi float [ %512, %503 ], [ 0.000000e+00, %498 ]
  %515 = fadd fast float %514, %451
  %516 = call float @dx.op.unary.f32(i32 7, float %515)  ; Saturate(value)
  %517 = fmul fast float %502, %516
  br label %529

; <label>:518                                     ; preds = %438
  br i1 %457, label %519, label %525

; <label>:519                                     ; preds = %518
  %520 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %12, float %22, float %23, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %521 = extractvalue %dx.types.ResRet.f32 %520, 0
  %522 = fsub fast float 1.000000e+00, %521
  %523 = select i1 %453, float %522, float %521
  %524 = fmul fast float %523, %449
  br label %525

; <label>:525                                     ; preds = %519, %518
  %526 = phi float [ %524, %519 ], [ 0.000000e+00, %518 ]
  %527 = fadd fast float %526, %451
  %528 = call float @dx.op.unary.f32(i32 7, float %527)  ; Saturate(value)
  br label %529

; <label>:529                                     ; preds = %525, %513
  %530 = phi float [ %517, %513 ], [ %528, %525 ]
  %531 = fmul fast float %530, %435
  br label %532

; <label>:532                                     ; preds = %529, %434
  %533 = phi float [ %531, %529 ], [ %435, %434 ]
  %534 = and i32 %141, 16
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %630, label %536

; <label>:536                                     ; preds = %532
  %537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %538 = extractvalue %dx.types.CBufRet.f32 %537, 3
  %539 = bitcast float %538 to i32
  %540 = and i32 %539, 65535
  %541 = call float @dx.op.legacyF16ToF32(i32 131, i32 %540)  ; LegacyF16ToF32(value)
  %542 = lshr i32 %539, 16
  %543 = call float @dx.op.legacyF16ToF32(i32 131, i32 %542)  ; LegacyF16ToF32(value)
  %544 = extractvalue %dx.types.CBufRet.f32 %537, 2
  %545 = bitcast float %544 to i32
  %546 = and i32 %545, 65535
  %547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %546)  ; LegacyF16ToF32(value)
  %548 = lshr i32 %545, 16
  %549 = call float @dx.op.legacyF16ToF32(i32 131, i32 %548)  ; LegacyF16ToF32(value)
  %550 = and i32 %140, 16
  %551 = icmp ne i32 %550, 0
  %552 = fcmp fast ogt float %541, 0.000000e+00
  %553 = fcmp fast ogt float %543, 0.000000e+00
  %554 = and i1 %552, %553
  %555 = fcmp fast ogt float %547, 0.000000e+00
  br i1 %554, label %556, label %616

; <label>:556                                     ; preds = %536
  br i1 %555, label %557, label %565

; <label>:557                                     ; preds = %556
  %558 = fmul fast float %543, %21
  %559 = fmul fast float %541, %20
  %560 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %12, float %559, float %558, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %561 = extractvalue %dx.types.ResRet.f32 %560, 0
  %562 = fsub fast float 1.000000e+00, %561
  %563 = select i1 %551, float %562, float %561
  %564 = fmul fast float %563, %547
  br label %565

; <label>:565                                     ; preds = %557, %556
  %566 = phi float [ %564, %557 ], [ 0.000000e+00, %556 ]
  %567 = fadd fast float %566, %549
  %568 = call float @dx.op.unary.f32(i32 7, float %567)  ; Saturate(value)
  br i1 %555, label %569, label %579

; <label>:569                                     ; preds = %565
  %570 = fmul fast float %543, %21
  %571 = fsub fast float 1.000000e+00, %20
  %572 = fmul fast float %541, %571
  %573 = fsub fast float 1.000000e+00, %572
  %574 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %12, float %573, float %570, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %575 = extractvalue %dx.types.ResRet.f32 %574, 1
  %576 = fsub fast float 1.000000e+00, %575
  %577 = select i1 %551, float %576, float %575
  %578 = fmul fast float %577, %547
  br label %579

; <label>:579                                     ; preds = %569, %565
  %580 = phi float [ %578, %569 ], [ 0.000000e+00, %565 ]
  %581 = fadd fast float %580, %549
  %582 = call float @dx.op.unary.f32(i32 7, float %581)  ; Saturate(value)
  %583 = fmul fast float %582, %568
  br i1 %555, label %584, label %596

; <label>:584                                     ; preds = %579
  %585 = fsub fast float 1.000000e+00, %21
  %586 = fmul fast float %543, %585
  %587 = fsub fast float 1.000000e+00, %586
  %588 = fsub fast float 1.000000e+00, %20
  %589 = fmul fast float %541, %588
  %590 = fsub fast float 1.000000e+00, %589
  %591 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %12, float %590, float %587, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %592 = extractvalue %dx.types.ResRet.f32 %591, 2
  %593 = fsub fast float 1.000000e+00, %592
  %594 = select i1 %551, float %593, float %592
  %595 = fmul fast float %594, %547
  br label %596

; <label>:596                                     ; preds = %584, %579
  %597 = phi float [ %595, %584 ], [ 0.000000e+00, %579 ]
  %598 = fadd fast float %597, %549
  %599 = call float @dx.op.unary.f32(i32 7, float %598)  ; Saturate(value)
  %600 = fmul fast float %583, %599
  br i1 %555, label %601, label %611

; <label>:601                                     ; preds = %596
  %602 = fsub fast float 1.000000e+00, %21
  %603 = fmul fast float %543, %602
  %604 = fsub fast float 1.000000e+00, %603
  %605 = fmul fast float %541, %20
  %606 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %12, float %605, float %604, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %607 = extractvalue %dx.types.ResRet.f32 %606, 3
  %608 = fsub fast float 1.000000e+00, %607
  %609 = select i1 %551, float %608, float %607
  %610 = fmul fast float %609, %547
  br label %611

; <label>:611                                     ; preds = %601, %596
  %612 = phi float [ %610, %601 ], [ 0.000000e+00, %596 ]
  %613 = fadd fast float %612, %549
  %614 = call float @dx.op.unary.f32(i32 7, float %613)  ; Saturate(value)
  %615 = fmul fast float %600, %614
  br label %627

; <label>:616                                     ; preds = %536
  br i1 %555, label %617, label %623

; <label>:617                                     ; preds = %616
  %618 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %12, float %20, float %21, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %619 = extractvalue %dx.types.ResRet.f32 %618, 0
  %620 = fsub fast float 1.000000e+00, %619
  %621 = select i1 %551, float %620, float %619
  %622 = fmul fast float %621, %547
  br label %623

; <label>:623                                     ; preds = %617, %616
  %624 = phi float [ %622, %617 ], [ 0.000000e+00, %616 ]
  %625 = fadd fast float %624, %549
  %626 = call float @dx.op.unary.f32(i32 7, float %625)  ; Saturate(value)
  br label %627

; <label>:627                                     ; preds = %623, %611
  %628 = phi float [ %615, %611 ], [ %626, %623 ]
  %629 = fmul fast float %628, %533
  br label %630

; <label>:630                                     ; preds = %627, %532
  %631 = phi float [ %629, %627 ], [ %533, %532 ]
  %632 = call float @dx.op.binary.f32(i32 35, float %631, float 0.000000e+00)  ; FMax(a,b)
  %633 = fcmp fast oeq float %632, 0.000000e+00
  br i1 %633, label %634, label %635, !dx.controlflow.hints !52

; <label>:634                                     ; preds = %630
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %635

; <label>:635                                     ; preds = %634, %630
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %636 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %13, float %18, float %19, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %637 = extractvalue %dx.types.ResRet.f32 %636, 0
  %638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %639 = extractvalue %dx.types.CBufRet.f32 %638, 3
  %640 = bitcast float %639 to i32
  %641 = and i32 %640, 65535
  %642 = call float @dx.op.legacyF16ToF32(i32 131, i32 %641)  ; LegacyF16ToF32(value)
  %643 = fcmp fast une float %642, 0.000000e+00
  %644 = select i1 %643, float 0.000000e+00, float 1.000000e+00
  %645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %646 = extractvalue %dx.types.CBufRet.f32 %645, 3
  %647 = fmul fast float %646, %637
  %648 = fmul fast float %647, %644
  %649 = fsub fast float 1.000000e+00, %648
  %650 = fmul fast float %649, %120
  %651 = fmul fast float %649, %128
  %652 = fmul fast float %649, %136
  %653 = extractvalue %dx.types.CBufRet.f32 %645, 0
  %654 = extractvalue %dx.types.CBufRet.f32 %645, 1
  %655 = extractvalue %dx.types.CBufRet.f32 %645, 2
  %656 = fmul fast float %653, %647
  %657 = fmul fast float %654, %647
  %658 = fmul fast float %655, %647
  %659 = fadd fast float %650, %656
  %660 = fadd fast float %651, %657
  %661 = fadd fast float %652, %658
  %662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %663 = extractvalue %dx.types.CBufRet.f32 %662, 2
  %664 = fcmp fast ogt float %663, 0.000000e+00
  br i1 %664, label %665, label %731, !dx.controlflow.hints !53

; <label>:665                                     ; preds = %635
  %666 = fcmp fast oeq float %663, 2.000000e+00
  br i1 %666, label %667, label %719, !dx.controlflow.hints !54

; <label>:667                                     ; preds = %665
  %668 = fcmp fast ole float %659, 0x3F69A5C380000000
  %669 = fcmp fast ole float %660, 0x3F69A5C380000000
  %670 = fcmp fast ole float %661, 0x3F69A5C380000000
  %671 = fmul fast float %659, 0x4029D70A40000000
  %672 = fmul fast float %660, 0x4029D70A40000000
  %673 = fmul fast float %661, 0x4029D70A40000000
  %674 = call float @dx.op.unary.f32(i32 23, float %659)  ; Log(value)
  %675 = call float @dx.op.unary.f32(i32 23, float %660)  ; Log(value)
  %676 = call float @dx.op.unary.f32(i32 23, float %661)  ; Log(value)
  %677 = fmul fast float %674, 0x3FDAAAAAA0000000
  %678 = fmul fast float %675, 0x3FDAAAAAA0000000
  %679 = fmul fast float %676, 0x3FDAAAAAA0000000
  %680 = call float @dx.op.unary.f32(i32 21, float %677)  ; Exp(value)
  %681 = call float @dx.op.unary.f32(i32 21, float %678)  ; Exp(value)
  %682 = call float @dx.op.unary.f32(i32 21, float %679)  ; Exp(value)
  %683 = fmul fast float %680, 0x3FF0E147A0000000
  %684 = fmul fast float %681, 0x3FF0E147A0000000
  %685 = fmul fast float %682, 0x3FF0E147A0000000
  %686 = fadd fast float %683, 0xBFAC28F5C0000000
  %687 = fadd fast float %684, 0xBFAC28F5C0000000
  %688 = fadd fast float %685, 0xBFAC28F5C0000000
  %689 = select i1 %668, float %671, float %686
  %690 = select i1 %669, float %672, float %687
  %691 = select i1 %670, float %673, float %688
  %692 = fsub fast float 1.000000e+00, %689
  %693 = fsub fast float 1.000000e+00, %690
  %694 = fsub fast float 1.000000e+00, %691
  %695 = fcmp fast ole float %692, 0x3FA4B5DCC0000000
  %696 = fmul fast float %692, 0x3FB3D07220000000
  %697 = fsub fast float 0x3FF0E147A0000000, %689
  %698 = fmul fast float %697, 0x3FEE54EDE0000000
  %699 = call float @dx.op.unary.f32(i32 23, float %698)  ; Log(value)
  %700 = fmul fast float %699, 0x4003333340000000
  %701 = call float @dx.op.unary.f32(i32 21, float %700)  ; Exp(value)
  %702 = select i1 %695, float %696, float %701
  %703 = fcmp fast ole float %693, 0x3FA4B5DCC0000000
  %704 = fmul fast float %693, 0x3FB3D07220000000
  %705 = fsub fast float 0x3FF0E147A0000000, %690
  %706 = fmul fast float %705, 0x3FEE54EDE0000000
  %707 = call float @dx.op.unary.f32(i32 23, float %706)  ; Log(value)
  %708 = fmul fast float %707, 0x4003333340000000
  %709 = call float @dx.op.unary.f32(i32 21, float %708)  ; Exp(value)
  %710 = select i1 %703, float %704, float %709
  %711 = fcmp fast ole float %694, 0x3FA4B5DCC0000000
  %712 = fmul fast float %694, 0x3FB3D07220000000
  %713 = fsub fast float 0x3FF0E147A0000000, %691
  %714 = fmul fast float %713, 0x3FEE54EDE0000000
  %715 = call float @dx.op.unary.f32(i32 23, float %714)  ; Log(value)
  %716 = fmul fast float %715, 0x4003333340000000
  %717 = call float @dx.op.unary.f32(i32 21, float %716)  ; Exp(value)
  %718 = select i1 %711, float %712, float %717
  br label %731

; <label>:719                                     ; preds = %665
  %720 = call float @dx.op.dot3.f32(i32 55, float %659, float %660, float %661, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %721 = extractvalue %dx.types.CBufRet.f32 %662, 3
  %722 = fsub fast float %659, %720
  %723 = fsub fast float %660, %720
  %724 = fsub fast float %661, %720
  %725 = fmul fast float %721, %722
  %726 = fmul fast float %721, %723
  %727 = fmul fast float %721, %724
  %728 = fadd fast float %725, %720
  %729 = fadd fast float %726, %720
  %730 = fadd fast float %727, %720
  br label %731

; <label>:731                                     ; preds = %719, %667, %635
  %732 = phi float [ %702, %667 ], [ %728, %719 ], [ %659, %635 ]
  %733 = phi float [ %710, %667 ], [ %729, %719 ], [ %660, %635 ]
  %734 = phi float [ %718, %667 ], [ %730, %719 ], [ %661, %635 ]
  %735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %736 = extractvalue %dx.types.CBufRet.f32 %735, 0
  %737 = fcmp fast une float %736, 0.000000e+00
  br i1 %737, label %738, label %912, !dx.controlflow.hints !55

; <label>:738                                     ; preds = %731
  %739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %740 = extractvalue %dx.types.CBufRet.f32 %739, 0
  %741 = extractvalue %dx.types.CBufRet.f32 %739, 1
  %742 = fsub fast float %36, %740
  %743 = fsub fast float %37, %741
  %744 = extractvalue %dx.types.CBufRet.f32 %739, 2
  %745 = extractvalue %dx.types.CBufRet.f32 %739, 3
  %746 = fmul fast float %742, %744
  %747 = fmul fast float %743, %745
  %748 = call float @dx.op.unary.f32(i32 6, float %736)  ; FAbs(value)
  %749 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %14, float %746, float %747, float undef, float undef, i32 0, i32 0, i32 undef, float %748)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %750 = extractvalue %dx.types.ResRet.f32 %749, 0
  %751 = extractvalue %dx.types.ResRet.f32 %749, 1
  %752 = extractvalue %dx.types.ResRet.f32 %749, 2
  %753 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %754 = extractvalue %dx.types.CBufRet.i32 %753, 3
  %755 = and i32 %754, 3
  %756 = icmp ne i32 %755, 0
  %757 = and i32 %754, 4
  %758 = icmp eq i32 %757, 0
  %759 = and i1 %756, %758
  br i1 %759, label %760, label %804

; <label>:760                                     ; preds = %738
  %761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %762 = extractvalue %dx.types.CBufRet.f32 %761, 0
  %763 = fcmp fast oge float %751, %762
  %764 = zext i1 %763 to i32
  br i1 %763, label %765, label %804

; <label>:765                                     ; preds = %760
  %766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %767 = extractvalue %dx.types.CBufRet.f32 %766, 3
  %768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %769 = extractvalue %dx.types.CBufRet.f32 %768, 2
  %770 = fcmp fast ogt float %769, 0.000000e+00
  br i1 %770, label %771, label %779, !dx.controlflow.hints !56

; <label>:771                                     ; preds = %765
  %772 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %751, float 0.000000e+00, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %773 = extractvalue %dx.types.ResRet.f32 %772, 0
  %774 = extractvalue %dx.types.ResRet.f32 %772, 1
  %775 = extractvalue %dx.types.ResRet.f32 %772, 2
  %776 = fcmp fast ogt float %769, 1.500000e+00
  %777 = select i1 %776, float %773, float %774
  %778 = select i1 %776, float %773, float %775
  br label %797

; <label>:779                                     ; preds = %765
  %780 = call float @dx.op.unary.f32(i32 7, float %751)  ; Saturate(value)
  %781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 238)  ; CBufferLoadLegacy(handle,regIndex)
  %782 = extractvalue %dx.types.CBufRet.f32 %781, 0
  %783 = extractvalue %dx.types.CBufRet.f32 %781, 1
  %784 = extractvalue %dx.types.CBufRet.f32 %781, 2
  %785 = extractvalue %dx.types.CBufRet.f32 %766, 0
  %786 = extractvalue %dx.types.CBufRet.f32 %766, 1
  %787 = extractvalue %dx.types.CBufRet.f32 %766, 2
  %788 = fsub fast float %782, %785
  %789 = fsub fast float %783, %786
  %790 = fsub fast float %784, %787
  %791 = fmul fast float %788, %780
  %792 = fmul fast float %789, %780
  %793 = fmul fast float %790, %780
  %794 = fadd fast float %791, %785
  %795 = fadd fast float %792, %786
  %796 = fadd fast float %793, %787
  br label %797

; <label>:797                                     ; preds = %779, %771
  %798 = phi float [ %773, %771 ], [ %794, %779 ]
  %799 = phi float [ %777, %771 ], [ %795, %779 ]
  %800 = phi float [ %778, %771 ], [ %796, %779 ]
  %801 = fmul fast float %798, %767
  %802 = fmul fast float %799, %767
  %803 = fmul fast float %800, %767
  br label %804

; <label>:804                                     ; preds = %797, %760, %738
  %805 = phi float [ %801, %797 ], [ %750, %738 ], [ %750, %760 ]
  %806 = phi float [ %802, %797 ], [ %751, %738 ], [ %750, %760 ]
  %807 = phi float [ %803, %797 ], [ %752, %738 ], [ %750, %760 ]
  %808 = phi i32 [ %764, %797 ], [ 0, %738 ], [ %764, %760 ]
  %809 = icmp eq i32 %808, 0
  br i1 %809, label %810, label %864

; <label>:810                                     ; preds = %804
  %811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %812 = extractvalue %dx.types.CBufRet.f32 %811, 0
  %813 = extractvalue %dx.types.CBufRet.f32 %811, 1
  %814 = extractvalue %dx.types.CBufRet.f32 %811, 2
  %815 = call float @dx.op.dot3.f32(i32 55, float %805, float %806, float %807, float %812, float %813, float %814)  ; Dot3(ax,ay,az,bx,by,bz)
  %816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %817 = extractvalue %dx.types.CBufRet.f32 %816, 0
  %818 = extractvalue %dx.types.CBufRet.f32 %816, 1
  %819 = extractvalue %dx.types.CBufRet.f32 %816, 2
  %820 = call float @dx.op.dot3.f32(i32 55, float %805, float %806, float %807, float %817, float %818, float %819)  ; Dot3(ax,ay,az,bx,by,bz)
  %821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %822 = extractvalue %dx.types.CBufRet.f32 %821, 0
  %823 = extractvalue %dx.types.CBufRet.f32 %821, 1
  %824 = extractvalue %dx.types.CBufRet.f32 %821, 2
  %825 = call float @dx.op.dot3.f32(i32 55, float %805, float %806, float %807, float %822, float %823, float %824)  ; Dot3(ax,ay,az,bx,by,bz)
  %826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %827 = extractvalue %dx.types.CBufRet.f32 %826, 2
  %828 = fmul fast float %827, %815
  %829 = fmul fast float %827, %820
  %830 = fmul fast float %827, %825
  %831 = fadd fast float %828, 9.765625e-04
  %832 = fadd fast float %829, 9.765625e-04
  %833 = fadd fast float %830, 9.765625e-04
  %834 = call float @dx.op.unary.f32(i32 23, float %831)  ; Log(value)
  %835 = call float @dx.op.unary.f32(i32 23, float %832)  ; Log(value)
  %836 = call float @dx.op.unary.f32(i32 23, float %833)  ; Log(value)
  %837 = fadd fast float %834, 1.000000e+01
  %838 = fadd fast float %835, 1.000000e+01
  %839 = fadd fast float %836, 1.000000e+01
  %840 = fmul fast float %837, 0x3FA99999A0000000
  %841 = fmul fast float %838, 0x3FA99999A0000000
  %842 = fmul fast float %839, 0x3FA99999A0000000
  %843 = call float @dx.op.unary.f32(i32 7, float %840)  ; Saturate(value)
  %844 = call float @dx.op.unary.f32(i32 7, float %841)  ; Saturate(value)
  %845 = call float @dx.op.unary.f32(i32 7, float %842)  ; Saturate(value)
  %846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %847 = extractvalue %dx.types.CBufRet.f32 %846, 0
  %848 = extractvalue %dx.types.CBufRet.f32 %846, 1
  %849 = extractvalue %dx.types.CBufRet.f32 %846, 2
  %850 = fmul fast float %847, %843
  %851 = fmul fast float %848, %844
  %852 = fmul fast float %849, %845
  %853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %854 = extractvalue %dx.types.CBufRet.f32 %853, 0
  %855 = extractvalue %dx.types.CBufRet.f32 %853, 1
  %856 = extractvalue %dx.types.CBufRet.f32 %853, 2
  %857 = fadd fast float %850, %854
  %858 = fadd fast float %851, %855
  %859 = fadd fast float %852, %856
  %860 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %14, float %857, float %858, float %859, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %861 = extractvalue %dx.types.ResRet.f32 %860, 0
  %862 = extractvalue %dx.types.ResRet.f32 %860, 1
  %863 = extractvalue %dx.types.ResRet.f32 %860, 2
  br label %864

; <label>:864                                     ; preds = %810, %804
  %865 = phi float [ %805, %804 ], [ %861, %810 ]
  %866 = phi float [ %806, %804 ], [ %862, %810 ]
  %867 = phi float [ %807, %804 ], [ %863, %810 ]
  %868 = fcmp fast ole float %865, 0x3FA4B5DCC0000000
  %869 = fmul fast float %865, 0x3FB3D07220000000
  %870 = fadd fast float %865, 0x3FAC28F5C0000000
  %871 = fmul fast float %870, 0x3FEE54EDE0000000
  %872 = call float @dx.op.unary.f32(i32 23, float %871)  ; Log(value)
  %873 = fmul fast float %872, 0x4003333340000000
  %874 = call float @dx.op.unary.f32(i32 21, float %873)  ; Exp(value)
  %875 = select i1 %868, float %869, float %874
  %876 = fcmp fast ole float %866, 0x3FA4B5DCC0000000
  %877 = fmul fast float %866, 0x3FB3D07220000000
  %878 = fadd fast float %866, 0x3FAC28F5C0000000
  %879 = fmul fast float %878, 0x3FEE54EDE0000000
  %880 = call float @dx.op.unary.f32(i32 23, float %879)  ; Log(value)
  %881 = fmul fast float %880, 0x4003333340000000
  %882 = call float @dx.op.unary.f32(i32 21, float %881)  ; Exp(value)
  %883 = select i1 %876, float %877, float %882
  %884 = fcmp fast ole float %867, 0x3FA4B5DCC0000000
  %885 = fmul fast float %867, 0x3FB3D07220000000
  %886 = fadd fast float %867, 0x3FAC28F5C0000000
  %887 = fmul fast float %886, 0x3FEE54EDE0000000
  %888 = call float @dx.op.unary.f32(i32 23, float %887)  ; Log(value)
  %889 = fmul fast float %888, 0x4003333340000000
  %890 = call float @dx.op.unary.f32(i32 21, float %889)  ; Exp(value)
  %891 = select i1 %884, float %885, float %890
  %892 = fcmp fast olt float %736, 0.000000e+00
  br i1 %892, label %893, label %905

; <label>:893                                     ; preds = %864
  %894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %895 = extractvalue %dx.types.CBufRet.f32 %894, 0
  %896 = extractvalue %dx.types.CBufRet.f32 %894, 1
  %897 = extractvalue %dx.types.CBufRet.f32 %894, 2
  %898 = call float @dx.op.dot3.f32(i32 55, float %875, float %883, float %891, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %899 = fsub fast float %898, %895
  %900 = fmul fast float %899, %896
  %901 = call float @dx.op.unary.f32(i32 7, float %900)  ; Saturate(value)
  %902 = fsub fast float 1.000000e+00, %897
  %903 = fmul fast float %901, %902
  %904 = fadd fast float %903, %897
  br label %905

; <label>:905                                     ; preds = %893, %864
  %906 = phi float [ %904, %893 ], [ %875, %864 ]
  %907 = phi float [ %904, %893 ], [ %883, %864 ]
  %908 = phi float [ %904, %893 ], [ %891, %864 ]
  %909 = fmul fast float %906, %732
  %910 = fmul fast float %907, %733
  %911 = fmul fast float %908, %734
  br label %912

; <label>:912                                     ; preds = %905, %731
  %913 = phi float [ %909, %905 ], [ %732, %731 ]
  %914 = phi float [ %910, %905 ], [ %733, %731 ]
  %915 = phi float [ %911, %905 ], [ %734, %731 ]
  %916 = extractvalue %dx.types.CBufRet.f32 %735, 1
  %917 = fcmp fast ogt float %916, 0.000000e+00
  br i1 %917, label %918, label %959, !dx.controlflow.hints !57

; <label>:918                                     ; preds = %912
  %919 = extractvalue %dx.types.CBufRet.f32 %735, 2
  %920 = bitcast float %919 to i32
  %921 = and i32 %920, 255
  %922 = uitofp i32 %921 to float
  %923 = lshr i32 %920, 8
  %924 = and i32 %923, 255
  %925 = uitofp i32 %924 to float
  %926 = lshr i32 %920, 16
  %927 = and i32 %926, 255
  %928 = uitofp i32 %927 to float
  %929 = fmul fast float %928, 0x3F70101020000000
  %930 = lshr i32 %920, 24
  %931 = uitofp i32 %930 to float
  %932 = fmul fast float %931, 0x3F70101020000000
  %933 = fadd fast float %928, %922
  %934 = fmul fast float %933, 0x3F70101020000000
  %935 = fadd fast float %925, %931
  %936 = fmul fast float %935, 0x3F70101020000000
  %937 = fdiv fast float %36, %934
  %938 = fdiv fast float %37, %936
  %939 = fsub fast float -0.000000e+00, %937
  %940 = fsub fast float -0.000000e+00, %938
  %941 = fcmp fast oge float %937, %939
  %942 = fcmp fast oge float %938, %940
  %943 = call float @dx.op.unary.f32(i32 6, float %937)  ; FAbs(value)
  %944 = call float @dx.op.unary.f32(i32 6, float %938)  ; FAbs(value)
  %945 = call float @dx.op.unary.f32(i32 22, float %943)  ; Frc(value)
  %946 = call float @dx.op.unary.f32(i32 22, float %944)  ; Frc(value)
  %947 = fsub fast float -0.000000e+00, %945
  %948 = fsub fast float -0.000000e+00, %946
  %949 = select i1 %941, float %945, float %947
  %950 = select i1 %942, float %946, float %948
  %951 = fmul fast float %934, %949
  %952 = fmul fast float %950, %936
  %953 = fcmp fast olt float %951, %929
  %954 = fcmp fast olt float %952, %932
  %955 = or i1 %953, %954
  br i1 %955, label %956, label %959, !dx.controlflow.hints !58

; <label>:956                                     ; preds = %918
  %957 = fsub fast float 1.000000e+00, %916
  %958 = fmul fast float %957, %632
  br label %959

; <label>:959                                     ; preds = %956, %918, %912
  %960 = phi float [ %958, %956 ], [ %632, %918 ], [ %632, %912 ]
  %961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %962 = extractvalue %dx.types.CBufRet.f32 %961, 3
  %963 = fcmp fast ogt float %962, 0.000000e+00
  br i1 %963, label %964, label %1047, !dx.controlflow.hints !59

; <label>:964                                     ; preds = %959
  %965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %966 = extractvalue %dx.types.CBufRet.f32 %965, 2
  %967 = extractvalue %dx.types.CBufRet.f32 %965, 3
  %968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %969 = extractvalue %dx.types.CBufRet.f32 %968, 3
  %970 = fmul fast float %969, 1.000000e+01
  %971 = call float @dx.op.unary.f32(i32 27, float %970)  ; Round_ni(value)
  %972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %973 = extractvalue %dx.types.CBufRet.f32 %972, 0
  %974 = extractvalue %dx.types.CBufRet.f32 %972, 1
  %975 = fmul fast float %973, %36
  %976 = fmul fast float %974, %37
  %977 = call float @dx.op.unary.f32(i32 27, float %975)  ; Round_ni(value)
  %978 = call float @dx.op.unary.f32(i32 27, float %976)  ; Round_ni(value)
  %979 = fmul fast float %971, 0x4002B851E0000000
  %980 = call float @dx.op.unary.f32(i32 22, float %979)  ; Frc(value)
  %981 = fadd fast float %980, 0x3FB99999A0000000
  %982 = fadd fast float %981, %977
  %983 = fadd fast float %981, %978
  %984 = fmul fast float %982, 0x3FE1BEDF00000000
  %985 = call float @dx.op.unary.f32(i32 22, float %984)  ; Frc(value)
  %986 = fmul fast float %982, %985
  %987 = fadd fast float %986, %983
  %988 = fmul fast float %983, 0x3FD3BEBE20000000
  %989 = call float @dx.op.unary.f32(i32 22, float %988)  ; Frc(value)
  %990 = fmul fast float %983, %989
  %991 = fadd fast float %990, %982
  %992 = fmul fast float %987, %991
  %993 = call float @dx.op.unary.f32(i32 22, float %992)  ; Frc(value)
  %994 = extractvalue %dx.types.CBufRet.f32 %972, 3
  %995 = bitcast float %994 to i32
  %996 = and i32 %995, 255
  %997 = uitofp i32 %996 to float
  %998 = fmul fast float %997, 0x3F70101020000000
  %999 = fmul fast float %998, %966
  %1000 = fcmp fast olt float %993, %999
  br i1 %1000, label %1001, label %1008, !dx.controlflow.hints !60

; <label>:1001                                    ; preds = %964
  %1002 = fmul fast float %993, 0x4057091680000000
  %1003 = call float @dx.op.unary.f32(i32 22, float %1002)  ; Frc(value)
  %1004 = fmul fast float %1003, %913
  %1005 = fmul fast float %1003, %915
  %1006 = fsub fast float 1.000000e+00, %1003
  %1007 = fmul fast float %1006, %914
  br label %1008

; <label>:1008                                    ; preds = %1001, %964
  %1009 = phi float [ %1004, %1001 ], [ %913, %964 ]
  %1010 = phi float [ %1007, %1001 ], [ %914, %964 ]
  %1011 = phi float [ %1005, %1001 ], [ %915, %964 ]
  %1012 = fmul fast float %993, 0x4028B0A3E0000000
  %1013 = call float @dx.op.unary.f32(i32 22, float %1012)  ; Frc(value)
  %1014 = fmul fast float %998, %967
  %1015 = fcmp fast olt float %1013, %1014
  br i1 %1015, label %1016, label %1035, !dx.controlflow.hints !61

; <label>:1016                                    ; preds = %1008
  %1017 = extractvalue %dx.types.CBufRet.f32 %972, 2
  %1018 = fmul fast float %1017, %36
  %1019 = call float @dx.op.unary.f32(i32 27, float %1018)  ; Round_ni(value)
  %1020 = fmul fast float %1019, 0x3FD5555560000000
  %1021 = call float @dx.op.unary.f32(i32 22, float %1020)  ; Frc(value)
  %1022 = extractvalue %dx.types.CBufRet.f32 %965, 0
  %1023 = extractvalue %dx.types.CBufRet.f32 %965, 1
  %1024 = fcmp fast olt float %1021, 0x3FD51EB860000000
  br i1 %1024, label %1028, label %1025, !dx.controlflow.hints !62

; <label>:1025                                    ; preds = %1016
  %1026 = fcmp fast olt float %1021, 0x3FE51EB860000000
  br i1 %1026, label %1028, label %1027, !dx.controlflow.hints !63

; <label>:1027                                    ; preds = %1025
  br label %1028

; <label>:1028                                    ; preds = %1027, %1025, %1016
  %1029 = phi float [ %1022, %1027 ], [ %1023, %1016 ], [ %1022, %1025 ]
  %1030 = phi float [ %1022, %1027 ], [ %1022, %1016 ], [ %1023, %1025 ]
  %1031 = phi float [ %1023, %1027 ], [ %1022, %1016 ], [ %1022, %1025 ]
  %1032 = fmul fast float %1029, %1009
  %1033 = fmul fast float %1030, %1010
  %1034 = fmul fast float %1031, %1011
  br label %1035

; <label>:1035                                    ; preds = %1028, %1008
  %1036 = phi float [ %1032, %1028 ], [ %1009, %1008 ]
  %1037 = phi float [ %1033, %1028 ], [ %1010, %1008 ]
  %1038 = phi float [ %1034, %1028 ], [ %1011, %1008 ]
  %1039 = fmul fast float %993, 0x40223EF9E0000000
  %1040 = call float @dx.op.unary.f32(i32 22, float %1039)  ; Frc(value)
  %1041 = fmul fast float %998, %962
  %1042 = fmul fast float %1040, %1040
  %1043 = fmul fast float %1042, %1041
  %1044 = fsub fast float 1.000000e+00, %1043
  %1045 = call float @dx.op.unary.f32(i32 7, float %1044)  ; Saturate(value)
  %1046 = fmul fast float %1045, %960
  br label %1047

; <label>:1047                                    ; preds = %1035, %959
  %1048 = phi float [ %1036, %1035 ], [ %913, %959 ]
  %1049 = phi float [ %1037, %1035 ], [ %914, %959 ]
  %1050 = phi float [ %1038, %1035 ], [ %915, %959 ]
  %1051 = phi float [ %1046, %1035 ], [ %960, %959 ]
  %1052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1053 = extractvalue %dx.types.CBufRet.f32 %1052, 0
  %1054 = extractvalue %dx.types.CBufRet.f32 %1052, 1
  %1055 = extractvalue %dx.types.CBufRet.f32 %1052, 2
  %1056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1057 = extractvalue %dx.types.CBufRet.f32 %1056, 0
  %1058 = extractvalue %dx.types.CBufRet.f32 %1056, 1
  %1059 = extractvalue %dx.types.CBufRet.f32 %1056, 2
  %1060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1061 = extractvalue %dx.types.CBufRet.f32 %1060, 0
  %1062 = extractvalue %dx.types.CBufRet.f32 %1060, 1
  %1063 = extractvalue %dx.types.CBufRet.f32 %1060, 2
  %1064 = fmul fast float %1053, %1048
  %1065 = call float @dx.op.tertiary.f32(i32 46, float %1054, float %1049, float %1064)  ; FMad(a,b,c)
  %1066 = call float @dx.op.tertiary.f32(i32 46, float %1055, float %1050, float %1065)  ; FMad(a,b,c)
  %1067 = fmul fast float %1057, %1048
  %1068 = call float @dx.op.tertiary.f32(i32 46, float %1058, float %1049, float %1067)  ; FMad(a,b,c)
  %1069 = call float @dx.op.tertiary.f32(i32 46, float %1059, float %1050, float %1068)  ; FMad(a,b,c)
  %1070 = fmul fast float %1061, %1048
  %1071 = call float @dx.op.tertiary.f32(i32 46, float %1062, float %1049, float %1070)  ; FMad(a,b,c)
  %1072 = call float @dx.op.tertiary.f32(i32 46, float %1063, float %1050, float %1071)  ; FMad(a,b,c)
  %1073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1074 = extractvalue %dx.types.CBufRet.f32 %1073, 0
  %1075 = bitcast float %1074 to i32
  %1076 = and i32 %1075, 128
  %1077 = icmp eq i32 %1076, 0
  br i1 %1077, label %1092, label %1078

; <label>:1078                                    ; preds = %1047
  %1079 = call float @dx.op.unary.f32(i32 24, float %1066)  ; Sqrt(value)
  %1080 = call float @dx.op.unary.f32(i32 24, float %1069)  ; Sqrt(value)
  %1081 = call float @dx.op.unary.f32(i32 24, float %1072)  ; Sqrt(value)
  %1082 = fmul fast float %1079, 9.687500e-01
  %1083 = fmul fast float %1080, 9.687500e-01
  %1084 = fmul fast float %1081, 9.687500e-01
  %1085 = fadd fast float %1082, 1.562500e-02
  %1086 = fadd fast float %1083, 1.562500e-02
  %1087 = fadd fast float %1084, 1.562500e-02
  %1088 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %14, float %1085, float %1086, float %1087, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1089 = extractvalue %dx.types.ResRet.f32 %1088, 0
  %1090 = extractvalue %dx.types.ResRet.f32 %1088, 1
  %1091 = extractvalue %dx.types.ResRet.f32 %1088, 2
  br label %1379

; <label>:1092                                    ; preds = %1047
  %1093 = and i32 %1075, 127
  switch i32 %1093, label %1379 [
    i32 1, label %1094
    i32 2, label %1094
    i32 0, label %1094
    i32 3, label %1124
    i32 4, label %1245
  ]

; <label>:1094                                    ; preds = %1092, %1092, %1092
  %1095 = call float @dx.op.unary.f32(i32 7, float %1066)  ; Saturate(value)
  %1096 = call float @dx.op.unary.f32(i32 7, float %1069)  ; Saturate(value)
  %1097 = call float @dx.op.unary.f32(i32 7, float %1072)  ; Saturate(value)
  %1098 = call float @dx.op.unary.f32(i32 23, float %1095)  ; Log(value)
  %1099 = call float @dx.op.unary.f32(i32 23, float %1096)  ; Log(value)
  %1100 = call float @dx.op.unary.f32(i32 23, float %1097)  ; Log(value)
  %1101 = fmul fast float %1098, 0x3FDAAAAAA0000000
  %1102 = fmul fast float %1099, 0x3FDAAAAAA0000000
  %1103 = fmul fast float %1100, 0x3FDAAAAAA0000000
  %1104 = call float @dx.op.unary.f32(i32 21, float %1101)  ; Exp(value)
  %1105 = call float @dx.op.unary.f32(i32 21, float %1102)  ; Exp(value)
  %1106 = call float @dx.op.unary.f32(i32 21, float %1103)  ; Exp(value)
  %1107 = fmul fast float %1104, 0x3FF0E147A0000000
  %1108 = fmul fast float %1105, 0x3FF0E147A0000000
  %1109 = fmul fast float %1106, 0x3FF0E147A0000000
  %1110 = fadd fast float %1107, 0xBFAC28F5C0000000
  %1111 = fadd fast float %1108, 0xBFAC28F5C0000000
  %1112 = fadd fast float %1109, 0xBFAC28F5C0000000
  %1113 = call float @dx.op.unary.f32(i32 7, float %1110)  ; Saturate(value)
  %1114 = call float @dx.op.unary.f32(i32 7, float %1111)  ; Saturate(value)
  %1115 = call float @dx.op.unary.f32(i32 7, float %1112)  ; Saturate(value)
  %1116 = extractvalue %dx.types.CBufRet.f32 %1073, 2
  %1117 = extractvalue %dx.types.CBufRet.f32 %1073, 3
  %1118 = fmul fast float %1116, %1113
  %1119 = fmul fast float %1116, %1114
  %1120 = fmul fast float %1116, %1115
  %1121 = fadd fast float %1118, %1117
  %1122 = fadd fast float %1119, %1117
  %1123 = fadd fast float %1120, %1117
  br label %1379

; <label>:1124                                    ; preds = %1092
  %1125 = fmul fast float %1066, 0x4163D57C00000000
  %1126 = fmul fast float %1069, 0x4163D57C00000000
  %1127 = fmul fast float %1072, 0x4163D57C00000000
  %1128 = fadd fast float %1125, 9.999980e+05
  %1129 = fadd fast float %1126, 9.999980e+05
  %1130 = fadd fast float %1127, 9.999980e+05
  %1131 = fmul fast float %1128, %1066
  %1132 = fmul fast float %1129, %1069
  %1133 = fmul fast float %1130, %1072
  %1134 = fadd fast float %1131, 0xC0AFE17A60000000
  %1135 = fadd fast float %1132, 0xC0AFE17A60000000
  %1136 = fadd fast float %1133, 0xC0AFE17A60000000
  %1137 = fmul fast float %1134, %1066
  %1138 = fmul fast float %1135, %1069
  %1139 = fmul fast float %1136, %1072
  %1140 = fmul fast float %1066, 0x40F753C340000000
  %1141 = fmul fast float %1069, 0x40F753C340000000
  %1142 = fmul fast float %1072, 0x40F753C340000000
  %1143 = fsub fast float 9.999990e+06, %1140
  %1144 = fsub fast float 9.999990e+06, %1141
  %1145 = fsub fast float 9.999990e+06, %1142
  %1146 = fmul fast float %1143, %1066
  %1147 = fmul fast float %1144, %1069
  %1148 = fmul fast float %1145, %1072
  %1149 = fadd fast float %1146, 0x4136D1DD80000000
  %1150 = fadd fast float %1147, 0x4136D1DD80000000
  %1151 = fadd fast float %1148, 0x4136D1DD80000000
  %1152 = fmul fast float %1149, %1066
  %1153 = fmul fast float %1150, %1069
  %1154 = fmul fast float %1151, %1072
  %1155 = fadd fast float %1152, 1.000000e+00
  %1156 = fadd fast float %1153, 1.000000e+00
  %1157 = fadd fast float %1154, 1.000000e+00
  %1158 = fdiv fast float %1137, %1155
  %1159 = fdiv fast float %1138, %1156
  %1160 = fdiv fast float %1139, %1157
  %1161 = call float @dx.op.unary.f32(i32 7, float %1158)  ; Saturate(value)
  %1162 = call float @dx.op.unary.f32(i32 7, float %1159)  ; Saturate(value)
  %1163 = call float @dx.op.unary.f32(i32 7, float %1160)  ; Saturate(value)
  %1164 = extractvalue %dx.types.CBufRet.f32 %1073, 1
  %1165 = fmul fast float %1161, 0x3FE413A920000000
  %1166 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %1162, float %1165)  ; FMad(a,b,c)
  %1167 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %1163, float %1166)  ; FMad(a,b,c)
  %1168 = fmul fast float %1161, 0x3FB1B089A0000000
  %1169 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %1162, float %1168)  ; FMad(a,b,c)
  %1170 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %1163, float %1169)  ; FMad(a,b,c)
  %1171 = fmul fast float %1161, 0x3F90CB2960000000
  %1172 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %1162, float %1171)  ; FMad(a,b,c)
  %1173 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %1163, float %1172)  ; FMad(a,b,c)
  %1174 = fmul fast float %1167, %1164
  %1175 = fmul fast float %1170, %1164
  %1176 = fmul fast float %1173, %1164
  %1177 = fmul fast float %1174, 0x3F847AE140000000
  %1178 = fmul fast float %1175, 0x3F847AE140000000
  %1179 = fmul fast float %1176, 0x3F847AE140000000
  %1180 = fmul fast float %1174, 0x40B4D2F520000000
  %1181 = fmul fast float %1175, 0x40B4D2F520000000
  %1182 = fmul fast float %1176, 0x40B4D2F520000000
  %1183 = fadd fast float %1180, 0x41869ECF20000000
  %1184 = fadd fast float %1181, 0x41869ECF20000000
  %1185 = fadd fast float %1182, 0x41869ECF20000000
  %1186 = fmul fast float %1183, %1177
  %1187 = fmul fast float %1184, %1178
  %1188 = fmul fast float %1185, %1179
  %1189 = fadd fast float %1186, 0x417BB79C60000000
  %1190 = fadd fast float %1187, 0x417BB79C60000000
  %1191 = fadd fast float %1188, 0x417BB79C60000000
  %1192 = fmul fast float %1189, %1177
  %1193 = fmul fast float %1190, %1178
  %1194 = fmul fast float %1191, %1179
  %1195 = fadd fast float %1192, 0x41218DE180000000
  %1196 = fadd fast float %1193, 0x41218DE180000000
  %1197 = fadd fast float %1194, 0x41218DE180000000
  %1198 = fmul fast float %1195, %1177
  %1199 = fmul fast float %1196, %1178
  %1200 = fmul fast float %1197, %1179
  %1201 = fadd fast float %1198, 0x4077F174E0000000
  %1202 = fadd fast float %1199, 0x4077F174E0000000
  %1203 = fadd fast float %1200, 0x4077F174E0000000
  %1204 = fmul fast float %1201, %1177
  %1205 = fmul fast float %1202, %1178
  %1206 = fmul fast float %1203, %1179
  %1207 = fadd fast float %1204, 0x3F3FF79B80000000
  %1208 = fadd fast float %1205, 0x3F3FF79B80000000
  %1209 = fadd fast float %1206, 0x3F3FF79B80000000
  %1210 = fmul fast float %1174, 0x412442D320000000
  %1211 = fmul fast float %1175, 0x412442D320000000
  %1212 = fmul fast float %1176, 0x412442D320000000
  %1213 = fadd fast float %1210, 0x419385D5C0000000
  %1214 = fadd fast float %1211, 0x419385D5C0000000
  %1215 = fadd fast float %1212, 0x419385D5C0000000
  %1216 = fmul fast float %1213, %1177
  %1217 = fmul fast float %1214, %1178
  %1218 = fmul fast float %1215, %1179
  %1219 = fadd fast float %1216, 4.182885e+06
  %1220 = fadd fast float %1217, 4.182885e+06
  %1221 = fadd fast float %1218, 4.182885e+06
  %1222 = fmul fast float %1219, %1177
  %1223 = fmul fast float %1220, %1178
  %1224 = fmul fast float %1221, %1179
  %1225 = fadd fast float %1222, 0x40C4D633C0000000
  %1226 = fadd fast float %1223, 0x40C4D633C0000000
  %1227 = fadd fast float %1224, 0x40C4D633C0000000
  %1228 = fmul fast float %1225, %1177
  %1229 = fmul fast float %1226, %1178
  %1230 = fmul fast float %1227, %1179
  %1231 = fadd fast float %1228, 1.000000e+00
  %1232 = fadd fast float %1229, 1.000000e+00
  %1233 = fadd fast float %1230, 1.000000e+00
  %1234 = fdiv fast float %1207, %1231
  %1235 = fdiv fast float %1208, %1232
  %1236 = fdiv fast float %1209, %1233
  %1237 = extractvalue %dx.types.CBufRet.f32 %1073, 2
  %1238 = extractvalue %dx.types.CBufRet.f32 %1073, 3
  %1239 = fmul fast float %1237, %1234
  %1240 = fmul fast float %1237, %1235
  %1241 = fmul fast float %1237, %1236
  %1242 = fadd fast float %1239, %1238
  %1243 = fadd fast float %1240, %1238
  %1244 = fadd fast float %1241, %1238
  br label %1379

; <label>:1245                                    ; preds = %1092
  %1246 = fmul fast float %1066, 0x4163D57C00000000
  %1247 = fmul fast float %1069, 0x4163D57C00000000
  %1248 = fmul fast float %1072, 0x4163D57C00000000
  %1249 = fadd fast float %1246, 9.999980e+05
  %1250 = fadd fast float %1247, 9.999980e+05
  %1251 = fadd fast float %1248, 9.999980e+05
  %1252 = fmul fast float %1249, %1066
  %1253 = fmul fast float %1250, %1069
  %1254 = fmul fast float %1251, %1072
  %1255 = fadd fast float %1252, 0xC0AFE17A60000000
  %1256 = fadd fast float %1253, 0xC0AFE17A60000000
  %1257 = fadd fast float %1254, 0xC0AFE17A60000000
  %1258 = fmul fast float %1255, %1066
  %1259 = fmul fast float %1256, %1069
  %1260 = fmul fast float %1257, %1072
  %1261 = fmul fast float %1066, 0x40F753C340000000
  %1262 = fmul fast float %1069, 0x40F753C340000000
  %1263 = fmul fast float %1072, 0x40F753C340000000
  %1264 = fsub fast float 9.999990e+06, %1261
  %1265 = fsub fast float 9.999990e+06, %1262
  %1266 = fsub fast float 9.999990e+06, %1263
  %1267 = fmul fast float %1264, %1066
  %1268 = fmul fast float %1265, %1069
  %1269 = fmul fast float %1266, %1072
  %1270 = fadd fast float %1267, 0x4136D1DD80000000
  %1271 = fadd fast float %1268, 0x4136D1DD80000000
  %1272 = fadd fast float %1269, 0x4136D1DD80000000
  %1273 = fmul fast float %1270, %1066
  %1274 = fmul fast float %1271, %1069
  %1275 = fmul fast float %1272, %1072
  %1276 = fadd fast float %1273, 1.000000e+00
  %1277 = fadd fast float %1274, 1.000000e+00
  %1278 = fadd fast float %1275, 1.000000e+00
  %1279 = fdiv fast float %1258, %1276
  %1280 = fdiv fast float %1259, %1277
  %1281 = fdiv fast float %1260, %1278
  %1282 = call float @dx.op.unary.f32(i32 7, float %1279)  ; Saturate(value)
  %1283 = call float @dx.op.unary.f32(i32 7, float %1280)  ; Saturate(value)
  %1284 = call float @dx.op.unary.f32(i32 7, float %1281)  ; Saturate(value)
  %1285 = extractvalue %dx.types.CBufRet.f32 %1073, 1
  %1286 = fmul fast float %1282, 0x3FEA519BC0000000
  %1287 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %1283, float %1286)  ; FMad(a,b,c)
  %1288 = fmul fast float %1282, 0x3FA0FED480000000
  %1289 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %1283, float %1288)  ; FMad(a,b,c)
  %1290 = fmul fast float %1282, 0x3F917E1C00000000
  %1291 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %1283, float %1290)  ; FMad(a,b,c)
  %1292 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %1284, float %1291)  ; FMad(a,b,c)
  %1293 = call float @dx.op.binary.f32(i32 35, float %1282, float %1283)  ; FMax(a,b)
  %1294 = call float @dx.op.binary.f32(i32 35, float %1293, float %1284)  ; FMax(a,b)
  %1295 = fadd fast float %1294, -1.000000e+00
  %1296 = fmul fast float %1295, 2.500000e-01
  %1297 = call float @dx.op.unary.f32(i32 7, float %1296)  ; Saturate(value)
  %1298 = fsub fast float 1.000000e+00, %1297
  %1299 = fmul fast float %1298, %1287
  %1300 = fmul fast float %1298, %1289
  %1301 = fmul fast float %1298, %1292
  %1302 = fmul fast float %1297, %1282
  %1303 = fmul fast float %1297, %1283
  %1304 = fmul fast float %1297, %1284
  %1305 = fadd fast float %1299, %1302
  %1306 = fadd fast float %1300, %1303
  %1307 = fadd fast float %1301, %1304
  %1308 = fmul fast float %1305, %1285
  %1309 = fmul fast float %1306, %1285
  %1310 = fmul fast float %1307, %1285
  %1311 = fmul fast float %1308, 0x3F847AE140000000
  %1312 = fmul fast float %1309, 0x3F847AE140000000
  %1313 = fmul fast float %1310, 0x3F847AE140000000
  %1314 = fmul fast float %1308, 0x40B4D2F520000000
  %1315 = fmul fast float %1309, 0x40B4D2F520000000
  %1316 = fmul fast float %1310, 0x40B4D2F520000000
  %1317 = fadd fast float %1314, 0x41869ECF20000000
  %1318 = fadd fast float %1315, 0x41869ECF20000000
  %1319 = fadd fast float %1316, 0x41869ECF20000000
  %1320 = fmul fast float %1317, %1311
  %1321 = fmul fast float %1318, %1312
  %1322 = fmul fast float %1319, %1313
  %1323 = fadd fast float %1320, 0x417BB79C60000000
  %1324 = fadd fast float %1321, 0x417BB79C60000000
  %1325 = fadd fast float %1322, 0x417BB79C60000000
  %1326 = fmul fast float %1323, %1311
  %1327 = fmul fast float %1324, %1312
  %1328 = fmul fast float %1325, %1313
  %1329 = fadd fast float %1326, 0x41218DE180000000
  %1330 = fadd fast float %1327, 0x41218DE180000000
  %1331 = fadd fast float %1328, 0x41218DE180000000
  %1332 = fmul fast float %1329, %1311
  %1333 = fmul fast float %1330, %1312
  %1334 = fmul fast float %1331, %1313
  %1335 = fadd fast float %1332, 0x4077F174E0000000
  %1336 = fadd fast float %1333, 0x4077F174E0000000
  %1337 = fadd fast float %1334, 0x4077F174E0000000
  %1338 = fmul fast float %1335, %1311
  %1339 = fmul fast float %1336, %1312
  %1340 = fmul fast float %1337, %1313
  %1341 = fadd fast float %1338, 0x3F3FF79B80000000
  %1342 = fadd fast float %1339, 0x3F3FF79B80000000
  %1343 = fadd fast float %1340, 0x3F3FF79B80000000
  %1344 = fmul fast float %1308, 0x412442D320000000
  %1345 = fmul fast float %1309, 0x412442D320000000
  %1346 = fmul fast float %1310, 0x412442D320000000
  %1347 = fadd fast float %1344, 0x419385D5C0000000
  %1348 = fadd fast float %1345, 0x419385D5C0000000
  %1349 = fadd fast float %1346, 0x419385D5C0000000
  %1350 = fmul fast float %1347, %1311
  %1351 = fmul fast float %1348, %1312
  %1352 = fmul fast float %1349, %1313
  %1353 = fadd fast float %1350, 4.182885e+06
  %1354 = fadd fast float %1351, 4.182885e+06
  %1355 = fadd fast float %1352, 4.182885e+06
  %1356 = fmul fast float %1353, %1311
  %1357 = fmul fast float %1354, %1312
  %1358 = fmul fast float %1355, %1313
  %1359 = fadd fast float %1356, 0x40C4D633C0000000
  %1360 = fadd fast float %1357, 0x40C4D633C0000000
  %1361 = fadd fast float %1358, 0x40C4D633C0000000
  %1362 = fmul fast float %1359, %1311
  %1363 = fmul fast float %1360, %1312
  %1364 = fmul fast float %1361, %1313
  %1365 = fadd fast float %1362, 1.000000e+00
  %1366 = fadd fast float %1363, 1.000000e+00
  %1367 = fadd fast float %1364, 1.000000e+00
  %1368 = fdiv fast float %1341, %1365
  %1369 = fdiv fast float %1342, %1366
  %1370 = fdiv fast float %1343, %1367
  %1371 = extractvalue %dx.types.CBufRet.f32 %1073, 2
  %1372 = extractvalue %dx.types.CBufRet.f32 %1073, 3
  %1373 = fmul fast float %1371, %1368
  %1374 = fmul fast float %1371, %1369
  %1375 = fmul fast float %1371, %1370
  %1376 = fadd fast float %1373, %1372
  %1377 = fadd fast float %1374, %1372
  %1378 = fadd fast float %1375, %1372
  br label %1379

; <label>:1379                                    ; preds = %1245, %1124, %1094, %1092, %1078
  %1380 = phi float [ %1089, %1078 ], [ %1066, %1092 ], [ %1376, %1245 ], [ %1242, %1124 ], [ %1121, %1094 ]
  %1381 = phi float [ %1090, %1078 ], [ %1069, %1092 ], [ %1377, %1245 ], [ %1243, %1124 ], [ %1122, %1094 ]
  %1382 = phi float [ %1091, %1078 ], [ %1072, %1092 ], [ %1378, %1245 ], [ %1244, %1124 ], [ %1123, %1094 ]
  %1383 = fmul fast float %1380, %1051
  %1384 = fmul fast float %1381, %1051
  %1385 = fmul fast float %1382, %1051
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1383)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1384)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1385)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1051)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind
declare void @dx.op.discard(i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!dx.viewIdState = !{!26}
!dx.entryPoints = !{!27}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !18, !22}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17}
!6 = !{i32 0, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 74, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 73, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 70, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 76, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 5, i32 1, i32 2, i32 0, !7}
!17 = !{i32 10, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 71, i32 1, i32 4, i32 0, !7}
!18 = !{!19, !20, !21}
!19 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!20 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 320, null}
!21 = !{i32 2, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 240, null}
!22 = !{!23, !24, !25}
!23 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!24 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!25 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!26 = !{[24 x i32] [i32 22, i32 4, i32 15, i32 15, i32 0, i32 0, i32 7, i32 7, i32 7, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 7, i32 7]}
!27 = !{void ()* @ps_main, !"ps_main", !28, !4, null}
!28 = !{!29, !48, null}
!29 = !{!30, !33, !35, !36, !38, !40, !42, !44, !46}
!30 = !{i32 0, !"SV_Position", i8 9, i8 3, !31, i8 4, i32 1, i8 4, i32 0, i8 0, !32}
!31 = !{i32 0}
!32 = !{i32 3, i32 3}
!33 = !{i32 1, !"COLOR", i8 9, i8 0, !31, i8 2, i32 1, i8 4, i32 1, i8 0, !34}
!34 = !{i32 3, i32 15}
!35 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !31, i8 2, i32 1, i8 2, i32 2, i8 0, !32}
!36 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !37, i8 2, i32 1, i8 2, i32 2, i8 2, !32}
!37 = !{i32 2}
!38 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !39, i8 2, i32 1, i8 2, i32 3, i8 0, !32}
!39 = !{i32 3}
!40 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !41, i8 2, i32 1, i8 2, i32 3, i8 2, !32}
!41 = !{i32 4}
!42 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !43, i8 2, i32 1, i8 2, i32 4, i8 0, !32}
!43 = !{i32 5}
!44 = !{i32 7, !"TEXCOORD", i8 9, i8 0, !45, i8 2, i32 1, i8 2, i32 4, i8 2, !32}
!45 = !{i32 6}
!46 = !{i32 8, !"TEXCOORD", i8 9, i8 0, !47, i8 2, i32 1, i8 2, i32 5, i8 0, !32}
!47 = !{i32 7}
!48 = !{!49}
!49 = !{i32 0, !"SV_Target", i8 9, i8 16, !31, i8 0, i32 1, i8 4, i32 0, i8 0, !34}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 1}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
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

