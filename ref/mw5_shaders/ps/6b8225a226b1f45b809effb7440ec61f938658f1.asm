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
; TEXCOORD                 1   xy          5     NONE   float   xy  
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: d52b3c78da1bf9963dae7d29901638c6
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
;                                   sampler      NA          NA      S0             s1     1
;                                   sampler      NA          NA      S1             s2     1
;                                   sampler      NA          NA      S2             s4     1
;                                   sampler      NA          NA      S3             s5     1
;                                   texture     f32          3d      T0     t74,space2     1
;                                   texture     f32          2d      T1     t73,space2     1
;                                   texture     f32          2d      T2     t70,space2     1
;                                   texture     f32          2d      T3             t0     1
;                                   texture     f32          2d      T4             t1     1
;                                   texture     f32          2d      T5             t2     1
;                                   texture     f32          2d      T6             t3     1
;                                   texture     f32          2d      T7             t4     1
;                                   texture     f32          2d      T8             t5     1
;                                   texture     f32          3d      T9     t71,space2     1
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
;   output 3 depends on inputs: { 0, 1, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21 }
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
%perObject = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 71, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 70, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 73, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 74, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %94 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %7, i32 0)  ; GetDimensions(handle,mipLevel)
  %95 = extractvalue %dx.types.Dimensions %94, 0
  %96 = sitofp i32 %95 to float
  %97 = extractvalue %dx.types.Dimensions %94, 1
  %98 = sitofp i32 %97 to float
  %99 = fdiv fast float 5.000000e-01, %96
  %100 = fdiv fast float 5.000000e-01, %98
  %101 = fsub fast float 1.000000e+00, %99
  %102 = call float @dx.op.binary.f32(i32 35, float %92, float %99)  ; FMax(a,b)
  %103 = call float @dx.op.binary.f32(i32 36, float %102, float %101)  ; FMin(a,b)
  %104 = fsub fast float 1.000000e+00, %100
  %105 = call float @dx.op.binary.f32(i32 35, float %93, float %100)  ; FMax(a,b)
  %106 = call float @dx.op.binary.f32(i32 36, float %105, float %104)  ; FMin(a,b)
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 3
  %109 = bitcast float %108 to i32
  %110 = and i32 %109, 1
  %111 = icmp ne i32 %110, 0
  %112 = select i1 %111, float %103, float %92
  %113 = and i32 %109, 2
  %114 = icmp ne i32 %113, 0
  %115 = select i1 %114, float %106, float %93
  %116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %117 = extractvalue %dx.types.CBufRet.f32 %116, 3
  %118 = bitcast float %117 to i32
  %119 = and i32 %118, 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %124, label %121, !dx.controlflow.hints !52

; <label>:121                                     ; preds = %91
  %122 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %11, float %112, float %115, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %123 = extractvalue %dx.types.ResRet.f32 %122, 0
  br label %129

; <label>:124                                     ; preds = %91
  %125 = call float @dx.op.unary.f32(i32 22, float %112)  ; Frc(value)
  %126 = call float @dx.op.unary.f32(i32 22, float %115)  ; Frc(value)
  %127 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %14, float %125, float %126, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %128 = extractvalue %dx.types.ResRet.f32 %127, 0
  br label %129

; <label>:129                                     ; preds = %124, %121
  %130 = phi float [ %123, %121 ], [ %128, %124 ]
  %131 = fmul fast float %130, 2.000000e+00
  %132 = fadd fast float %131, -1.000000e+00
  %133 = call float @dx.op.unary.f32(i32 83, float %132)  ; DerivCoarseX(value)
  %134 = call float @dx.op.unary.f32(i32 84, float %132)  ; DerivCoarseY(value)
  %135 = fmul fast float %133, %133
  %136 = fmul fast float %134, %134
  %137 = fadd fast float %136, %135
  %138 = call float @dx.op.unary.f32(i32 24, float %137)  ; Sqrt(value)
  %139 = fmul fast float %138, 2.000000e+00
  %140 = fadd fast float %138, %132
  %141 = fdiv fast float %140, %139
  %142 = call float @dx.op.unary.f32(i32 7, float %141)  ; Saturate(value)
  %143 = fmul fast float %142, 2.000000e+00
  %144 = fsub fast float 3.000000e+00, %143
  %145 = fmul fast float %142, %142
  %146 = fmul fast float %145, %35
  %147 = fmul fast float %146, %144
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 3
  %150 = bitcast float %149 to i32
  %151 = lshr i32 %150, 4
  %152 = lshr i32 %150, 9
  %153 = and i32 %152, 1
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %249, label %155

; <label>:155                                     ; preds = %129
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 3
  %158 = bitcast float %157 to i32
  %159 = and i32 %158, 65535
  %160 = call float @dx.op.legacyF16ToF32(i32 131, i32 %159)  ; LegacyF16ToF32(value)
  %161 = lshr i32 %158, 16
  %162 = call float @dx.op.legacyF16ToF32(i32 131, i32 %161)  ; LegacyF16ToF32(value)
  %163 = extractvalue %dx.types.CBufRet.f32 %156, 2
  %164 = bitcast float %163 to i32
  %165 = and i32 %164, 65535
  %166 = call float @dx.op.legacyF16ToF32(i32 131, i32 %165)  ; LegacyF16ToF32(value)
  %167 = lshr i32 %164, 16
  %168 = call float @dx.op.legacyF16ToF32(i32 131, i32 %167)  ; LegacyF16ToF32(value)
  %169 = and i32 %151, 1
  %170 = icmp ne i32 %169, 0
  %171 = fcmp fast ogt float %160, 0.000000e+00
  %172 = fcmp fast ogt float %162, 0.000000e+00
  %173 = and i1 %171, %172
  %174 = fcmp fast ogt float %166, 0.000000e+00
  br i1 %173, label %175, label %235

; <label>:175                                     ; preds = %155
  br i1 %174, label %176, label %184

; <label>:176                                     ; preds = %175
  %177 = fmul fast float %162, %29
  %178 = fmul fast float %160, %28
  %179 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %12, float %178, float %177, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %180 = extractvalue %dx.types.ResRet.f32 %179, 0
  %181 = fsub fast float 1.000000e+00, %180
  %182 = select i1 %170, float %181, float %180
  %183 = fmul fast float %182, %166
  br label %184

; <label>:184                                     ; preds = %176, %175
  %185 = phi float [ %183, %176 ], [ 0.000000e+00, %175 ]
  %186 = fadd fast float %185, %168
  %187 = call float @dx.op.unary.f32(i32 7, float %186)  ; Saturate(value)
  br i1 %174, label %188, label %198

; <label>:188                                     ; preds = %184
  %189 = fmul fast float %162, %29
  %190 = fsub fast float 1.000000e+00, %28
  %191 = fmul fast float %160, %190
  %192 = fsub fast float 1.000000e+00, %191
  %193 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %12, float %192, float %189, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %194 = extractvalue %dx.types.ResRet.f32 %193, 1
  %195 = fsub fast float 1.000000e+00, %194
  %196 = select i1 %170, float %195, float %194
  %197 = fmul fast float %196, %166
  br label %198

; <label>:198                                     ; preds = %188, %184
  %199 = phi float [ %197, %188 ], [ 0.000000e+00, %184 ]
  %200 = fadd fast float %199, %168
  %201 = call float @dx.op.unary.f32(i32 7, float %200)  ; Saturate(value)
  %202 = fmul fast float %201, %187
  br i1 %174, label %203, label %215

; <label>:203                                     ; preds = %198
  %204 = fsub fast float 1.000000e+00, %29
  %205 = fmul fast float %162, %204
  %206 = fsub fast float 1.000000e+00, %205
  %207 = fsub fast float 1.000000e+00, %28
  %208 = fmul fast float %160, %207
  %209 = fsub fast float 1.000000e+00, %208
  %210 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %12, float %209, float %206, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %211 = extractvalue %dx.types.ResRet.f32 %210, 2
  %212 = fsub fast float 1.000000e+00, %211
  %213 = select i1 %170, float %212, float %211
  %214 = fmul fast float %213, %166
  br label %215

; <label>:215                                     ; preds = %203, %198
  %216 = phi float [ %214, %203 ], [ 0.000000e+00, %198 ]
  %217 = fadd fast float %216, %168
  %218 = call float @dx.op.unary.f32(i32 7, float %217)  ; Saturate(value)
  %219 = fmul fast float %202, %218
  br i1 %174, label %220, label %230

; <label>:220                                     ; preds = %215
  %221 = fsub fast float 1.000000e+00, %29
  %222 = fmul fast float %162, %221
  %223 = fsub fast float 1.000000e+00, %222
  %224 = fmul fast float %160, %28
  %225 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %12, float %224, float %223, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %226 = extractvalue %dx.types.ResRet.f32 %225, 3
  %227 = fsub fast float 1.000000e+00, %226
  %228 = select i1 %170, float %227, float %226
  %229 = fmul fast float %228, %166
  br label %230

; <label>:230                                     ; preds = %220, %215
  %231 = phi float [ %229, %220 ], [ 0.000000e+00, %215 ]
  %232 = fadd fast float %231, %168
  %233 = call float @dx.op.unary.f32(i32 7, float %232)  ; Saturate(value)
  %234 = fmul fast float %219, %233
  br label %246

; <label>:235                                     ; preds = %155
  br i1 %174, label %236, label %242

; <label>:236                                     ; preds = %235
  %237 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %12, float %28, float %29, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %238 = extractvalue %dx.types.ResRet.f32 %237, 0
  %239 = fsub fast float 1.000000e+00, %238
  %240 = select i1 %170, float %239, float %238
  %241 = fmul fast float %240, %166
  br label %242

; <label>:242                                     ; preds = %236, %235
  %243 = phi float [ %241, %236 ], [ 0.000000e+00, %235 ]
  %244 = fadd fast float %243, %168
  %245 = call float @dx.op.unary.f32(i32 7, float %244)  ; Saturate(value)
  br label %246

; <label>:246                                     ; preds = %242, %230
  %247 = phi float [ %234, %230 ], [ %245, %242 ]
  %248 = fmul fast float %247, %147
  br label %249

; <label>:249                                     ; preds = %246, %129
  %250 = phi float [ %248, %246 ], [ %147, %129 ]
  %251 = and i32 %152, 2
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %347, label %253

; <label>:253                                     ; preds = %249
  %254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %255 = extractvalue %dx.types.CBufRet.f32 %254, 3
  %256 = bitcast float %255 to i32
  %257 = and i32 %256, 65535
  %258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %257)  ; LegacyF16ToF32(value)
  %259 = lshr i32 %256, 16
  %260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %259)  ; LegacyF16ToF32(value)
  %261 = extractvalue %dx.types.CBufRet.f32 %254, 2
  %262 = bitcast float %261 to i32
  %263 = and i32 %262, 65535
  %264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %263)  ; LegacyF16ToF32(value)
  %265 = lshr i32 %262, 16
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = and i32 %151, 2
  %268 = icmp ne i32 %267, 0
  %269 = fcmp fast ogt float %258, 0.000000e+00
  %270 = fcmp fast ogt float %260, 0.000000e+00
  %271 = and i1 %269, %270
  %272 = fcmp fast ogt float %264, 0.000000e+00
  br i1 %271, label %273, label %333

; <label>:273                                     ; preds = %253
  br i1 %272, label %274, label %282

; <label>:274                                     ; preds = %273
  %275 = fmul fast float %260, %27
  %276 = fmul fast float %258, %26
  %277 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %12, float %276, float %275, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %278 = extractvalue %dx.types.ResRet.f32 %277, 0
  %279 = fsub fast float 1.000000e+00, %278
  %280 = select i1 %268, float %279, float %278
  %281 = fmul fast float %280, %264
  br label %282

; <label>:282                                     ; preds = %274, %273
  %283 = phi float [ %281, %274 ], [ 0.000000e+00, %273 ]
  %284 = fadd fast float %283, %266
  %285 = call float @dx.op.unary.f32(i32 7, float %284)  ; Saturate(value)
  br i1 %272, label %286, label %296

; <label>:286                                     ; preds = %282
  %287 = fmul fast float %260, %27
  %288 = fsub fast float 1.000000e+00, %26
  %289 = fmul fast float %258, %288
  %290 = fsub fast float 1.000000e+00, %289
  %291 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %12, float %290, float %287, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %292 = extractvalue %dx.types.ResRet.f32 %291, 1
  %293 = fsub fast float 1.000000e+00, %292
  %294 = select i1 %268, float %293, float %292
  %295 = fmul fast float %294, %264
  br label %296

; <label>:296                                     ; preds = %286, %282
  %297 = phi float [ %295, %286 ], [ 0.000000e+00, %282 ]
  %298 = fadd fast float %297, %266
  %299 = call float @dx.op.unary.f32(i32 7, float %298)  ; Saturate(value)
  %300 = fmul fast float %299, %285
  br i1 %272, label %301, label %313

; <label>:301                                     ; preds = %296
  %302 = fsub fast float 1.000000e+00, %27
  %303 = fmul fast float %260, %302
  %304 = fsub fast float 1.000000e+00, %303
  %305 = fsub fast float 1.000000e+00, %26
  %306 = fmul fast float %258, %305
  %307 = fsub fast float 1.000000e+00, %306
  %308 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %12, float %307, float %304, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %309 = extractvalue %dx.types.ResRet.f32 %308, 2
  %310 = fsub fast float 1.000000e+00, %309
  %311 = select i1 %268, float %310, float %309
  %312 = fmul fast float %311, %264
  br label %313

; <label>:313                                     ; preds = %301, %296
  %314 = phi float [ %312, %301 ], [ 0.000000e+00, %296 ]
  %315 = fadd fast float %314, %266
  %316 = call float @dx.op.unary.f32(i32 7, float %315)  ; Saturate(value)
  %317 = fmul fast float %300, %316
  br i1 %272, label %318, label %328

; <label>:318                                     ; preds = %313
  %319 = fsub fast float 1.000000e+00, %27
  %320 = fmul fast float %260, %319
  %321 = fsub fast float 1.000000e+00, %320
  %322 = fmul fast float %258, %26
  %323 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %12, float %322, float %321, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %324 = extractvalue %dx.types.ResRet.f32 %323, 3
  %325 = fsub fast float 1.000000e+00, %324
  %326 = select i1 %268, float %325, float %324
  %327 = fmul fast float %326, %264
  br label %328

; <label>:328                                     ; preds = %318, %313
  %329 = phi float [ %327, %318 ], [ 0.000000e+00, %313 ]
  %330 = fadd fast float %329, %266
  %331 = call float @dx.op.unary.f32(i32 7, float %330)  ; Saturate(value)
  %332 = fmul fast float %317, %331
  br label %344

; <label>:333                                     ; preds = %253
  br i1 %272, label %334, label %340

; <label>:334                                     ; preds = %333
  %335 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %12, float %26, float %27, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %336 = extractvalue %dx.types.ResRet.f32 %335, 0
  %337 = fsub fast float 1.000000e+00, %336
  %338 = select i1 %268, float %337, float %336
  %339 = fmul fast float %338, %264
  br label %340

; <label>:340                                     ; preds = %334, %333
  %341 = phi float [ %339, %334 ], [ 0.000000e+00, %333 ]
  %342 = fadd fast float %341, %266
  %343 = call float @dx.op.unary.f32(i32 7, float %342)  ; Saturate(value)
  br label %344

; <label>:344                                     ; preds = %340, %328
  %345 = phi float [ %332, %328 ], [ %343, %340 ]
  %346 = fmul fast float %345, %250
  br label %347

; <label>:347                                     ; preds = %344, %249
  %348 = phi float [ %346, %344 ], [ %250, %249 ]
  %349 = and i32 %152, 4
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %445, label %351

; <label>:351                                     ; preds = %347
  %352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %353 = extractvalue %dx.types.CBufRet.f32 %352, 3
  %354 = bitcast float %353 to i32
  %355 = and i32 %354, 65535
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = lshr i32 %354, 16
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = extractvalue %dx.types.CBufRet.f32 %352, 2
  %360 = bitcast float %359 to i32
  %361 = and i32 %360, 65535
  %362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %361)  ; LegacyF16ToF32(value)
  %363 = lshr i32 %360, 16
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = and i32 %151, 4
  %366 = icmp ne i32 %365, 0
  %367 = fcmp fast ogt float %356, 0.000000e+00
  %368 = fcmp fast ogt float %358, 0.000000e+00
  %369 = and i1 %367, %368
  %370 = fcmp fast ogt float %362, 0.000000e+00
  br i1 %369, label %371, label %431

; <label>:371                                     ; preds = %351
  br i1 %370, label %372, label %380

; <label>:372                                     ; preds = %371
  %373 = fmul fast float %358, %25
  %374 = fmul fast float %356, %24
  %375 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %12, float %374, float %373, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %376 = extractvalue %dx.types.ResRet.f32 %375, 0
  %377 = fsub fast float 1.000000e+00, %376
  %378 = select i1 %366, float %377, float %376
  %379 = fmul fast float %378, %362
  br label %380

; <label>:380                                     ; preds = %372, %371
  %381 = phi float [ %379, %372 ], [ 0.000000e+00, %371 ]
  %382 = fadd fast float %381, %364
  %383 = call float @dx.op.unary.f32(i32 7, float %382)  ; Saturate(value)
  br i1 %370, label %384, label %394

; <label>:384                                     ; preds = %380
  %385 = fmul fast float %358, %25
  %386 = fsub fast float 1.000000e+00, %24
  %387 = fmul fast float %356, %386
  %388 = fsub fast float 1.000000e+00, %387
  %389 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %12, float %388, float %385, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %390 = extractvalue %dx.types.ResRet.f32 %389, 1
  %391 = fsub fast float 1.000000e+00, %390
  %392 = select i1 %366, float %391, float %390
  %393 = fmul fast float %392, %362
  br label %394

; <label>:394                                     ; preds = %384, %380
  %395 = phi float [ %393, %384 ], [ 0.000000e+00, %380 ]
  %396 = fadd fast float %395, %364
  %397 = call float @dx.op.unary.f32(i32 7, float %396)  ; Saturate(value)
  %398 = fmul fast float %397, %383
  br i1 %370, label %399, label %411

; <label>:399                                     ; preds = %394
  %400 = fsub fast float 1.000000e+00, %25
  %401 = fmul fast float %358, %400
  %402 = fsub fast float 1.000000e+00, %401
  %403 = fsub fast float 1.000000e+00, %24
  %404 = fmul fast float %356, %403
  %405 = fsub fast float 1.000000e+00, %404
  %406 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %12, float %405, float %402, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %407 = extractvalue %dx.types.ResRet.f32 %406, 2
  %408 = fsub fast float 1.000000e+00, %407
  %409 = select i1 %366, float %408, float %407
  %410 = fmul fast float %409, %362
  br label %411

; <label>:411                                     ; preds = %399, %394
  %412 = phi float [ %410, %399 ], [ 0.000000e+00, %394 ]
  %413 = fadd fast float %412, %364
  %414 = call float @dx.op.unary.f32(i32 7, float %413)  ; Saturate(value)
  %415 = fmul fast float %398, %414
  br i1 %370, label %416, label %426

; <label>:416                                     ; preds = %411
  %417 = fsub fast float 1.000000e+00, %25
  %418 = fmul fast float %358, %417
  %419 = fsub fast float 1.000000e+00, %418
  %420 = fmul fast float %356, %24
  %421 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %12, float %420, float %419, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %422 = extractvalue %dx.types.ResRet.f32 %421, 3
  %423 = fsub fast float 1.000000e+00, %422
  %424 = select i1 %366, float %423, float %422
  %425 = fmul fast float %424, %362
  br label %426

; <label>:426                                     ; preds = %416, %411
  %427 = phi float [ %425, %416 ], [ 0.000000e+00, %411 ]
  %428 = fadd fast float %427, %364
  %429 = call float @dx.op.unary.f32(i32 7, float %428)  ; Saturate(value)
  %430 = fmul fast float %415, %429
  br label %442

; <label>:431                                     ; preds = %351
  br i1 %370, label %432, label %438

; <label>:432                                     ; preds = %431
  %433 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %12, float %24, float %25, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %434 = extractvalue %dx.types.ResRet.f32 %433, 0
  %435 = fsub fast float 1.000000e+00, %434
  %436 = select i1 %366, float %435, float %434
  %437 = fmul fast float %436, %362
  br label %438

; <label>:438                                     ; preds = %432, %431
  %439 = phi float [ %437, %432 ], [ 0.000000e+00, %431 ]
  %440 = fadd fast float %439, %364
  %441 = call float @dx.op.unary.f32(i32 7, float %440)  ; Saturate(value)
  br label %442

; <label>:442                                     ; preds = %438, %426
  %443 = phi float [ %430, %426 ], [ %441, %438 ]
  %444 = fmul fast float %443, %348
  br label %445

; <label>:445                                     ; preds = %442, %347
  %446 = phi float [ %444, %442 ], [ %348, %347 ]
  %447 = and i32 %152, 8
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %543, label %449

; <label>:449                                     ; preds = %445
  %450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %451 = extractvalue %dx.types.CBufRet.f32 %450, 3
  %452 = bitcast float %451 to i32
  %453 = and i32 %452, 65535
  %454 = call float @dx.op.legacyF16ToF32(i32 131, i32 %453)  ; LegacyF16ToF32(value)
  %455 = lshr i32 %452, 16
  %456 = call float @dx.op.legacyF16ToF32(i32 131, i32 %455)  ; LegacyF16ToF32(value)
  %457 = extractvalue %dx.types.CBufRet.f32 %450, 2
  %458 = bitcast float %457 to i32
  %459 = and i32 %458, 65535
  %460 = call float @dx.op.legacyF16ToF32(i32 131, i32 %459)  ; LegacyF16ToF32(value)
  %461 = lshr i32 %458, 16
  %462 = call float @dx.op.legacyF16ToF32(i32 131, i32 %461)  ; LegacyF16ToF32(value)
  %463 = and i32 %151, 8
  %464 = icmp ne i32 %463, 0
  %465 = fcmp fast ogt float %454, 0.000000e+00
  %466 = fcmp fast ogt float %456, 0.000000e+00
  %467 = and i1 %465, %466
  %468 = fcmp fast ogt float %460, 0.000000e+00
  br i1 %467, label %469, label %529

; <label>:469                                     ; preds = %449
  br i1 %468, label %470, label %478

; <label>:470                                     ; preds = %469
  %471 = fmul fast float %456, %23
  %472 = fmul fast float %454, %22
  %473 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %12, float %472, float %471, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %474 = extractvalue %dx.types.ResRet.f32 %473, 0
  %475 = fsub fast float 1.000000e+00, %474
  %476 = select i1 %464, float %475, float %474
  %477 = fmul fast float %476, %460
  br label %478

; <label>:478                                     ; preds = %470, %469
  %479 = phi float [ %477, %470 ], [ 0.000000e+00, %469 ]
  %480 = fadd fast float %479, %462
  %481 = call float @dx.op.unary.f32(i32 7, float %480)  ; Saturate(value)
  br i1 %468, label %482, label %492

; <label>:482                                     ; preds = %478
  %483 = fmul fast float %456, %23
  %484 = fsub fast float 1.000000e+00, %22
  %485 = fmul fast float %454, %484
  %486 = fsub fast float 1.000000e+00, %485
  %487 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %12, float %486, float %483, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %488 = extractvalue %dx.types.ResRet.f32 %487, 1
  %489 = fsub fast float 1.000000e+00, %488
  %490 = select i1 %464, float %489, float %488
  %491 = fmul fast float %490, %460
  br label %492

; <label>:492                                     ; preds = %482, %478
  %493 = phi float [ %491, %482 ], [ 0.000000e+00, %478 ]
  %494 = fadd fast float %493, %462
  %495 = call float @dx.op.unary.f32(i32 7, float %494)  ; Saturate(value)
  %496 = fmul fast float %495, %481
  br i1 %468, label %497, label %509

; <label>:497                                     ; preds = %492
  %498 = fsub fast float 1.000000e+00, %23
  %499 = fmul fast float %456, %498
  %500 = fsub fast float 1.000000e+00, %499
  %501 = fsub fast float 1.000000e+00, %22
  %502 = fmul fast float %454, %501
  %503 = fsub fast float 1.000000e+00, %502
  %504 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %12, float %503, float %500, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %505 = extractvalue %dx.types.ResRet.f32 %504, 2
  %506 = fsub fast float 1.000000e+00, %505
  %507 = select i1 %464, float %506, float %505
  %508 = fmul fast float %507, %460
  br label %509

; <label>:509                                     ; preds = %497, %492
  %510 = phi float [ %508, %497 ], [ 0.000000e+00, %492 ]
  %511 = fadd fast float %510, %462
  %512 = call float @dx.op.unary.f32(i32 7, float %511)  ; Saturate(value)
  %513 = fmul fast float %496, %512
  br i1 %468, label %514, label %524

; <label>:514                                     ; preds = %509
  %515 = fsub fast float 1.000000e+00, %23
  %516 = fmul fast float %456, %515
  %517 = fsub fast float 1.000000e+00, %516
  %518 = fmul fast float %454, %22
  %519 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %12, float %518, float %517, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %520 = extractvalue %dx.types.ResRet.f32 %519, 3
  %521 = fsub fast float 1.000000e+00, %520
  %522 = select i1 %464, float %521, float %520
  %523 = fmul fast float %522, %460
  br label %524

; <label>:524                                     ; preds = %514, %509
  %525 = phi float [ %523, %514 ], [ 0.000000e+00, %509 ]
  %526 = fadd fast float %525, %462
  %527 = call float @dx.op.unary.f32(i32 7, float %526)  ; Saturate(value)
  %528 = fmul fast float %513, %527
  br label %540

; <label>:529                                     ; preds = %449
  br i1 %468, label %530, label %536

; <label>:530                                     ; preds = %529
  %531 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %12, float %22, float %23, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %532 = extractvalue %dx.types.ResRet.f32 %531, 0
  %533 = fsub fast float 1.000000e+00, %532
  %534 = select i1 %464, float %533, float %532
  %535 = fmul fast float %534, %460
  br label %536

; <label>:536                                     ; preds = %530, %529
  %537 = phi float [ %535, %530 ], [ 0.000000e+00, %529 ]
  %538 = fadd fast float %537, %462
  %539 = call float @dx.op.unary.f32(i32 7, float %538)  ; Saturate(value)
  br label %540

; <label>:540                                     ; preds = %536, %524
  %541 = phi float [ %528, %524 ], [ %539, %536 ]
  %542 = fmul fast float %541, %446
  br label %543

; <label>:543                                     ; preds = %540, %445
  %544 = phi float [ %542, %540 ], [ %446, %445 ]
  %545 = and i32 %152, 16
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %641, label %547

; <label>:547                                     ; preds = %543
  %548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %549 = extractvalue %dx.types.CBufRet.f32 %548, 3
  %550 = bitcast float %549 to i32
  %551 = and i32 %550, 65535
  %552 = call float @dx.op.legacyF16ToF32(i32 131, i32 %551)  ; LegacyF16ToF32(value)
  %553 = lshr i32 %550, 16
  %554 = call float @dx.op.legacyF16ToF32(i32 131, i32 %553)  ; LegacyF16ToF32(value)
  %555 = extractvalue %dx.types.CBufRet.f32 %548, 2
  %556 = bitcast float %555 to i32
  %557 = and i32 %556, 65535
  %558 = call float @dx.op.legacyF16ToF32(i32 131, i32 %557)  ; LegacyF16ToF32(value)
  %559 = lshr i32 %556, 16
  %560 = call float @dx.op.legacyF16ToF32(i32 131, i32 %559)  ; LegacyF16ToF32(value)
  %561 = and i32 %151, 16
  %562 = icmp ne i32 %561, 0
  %563 = fcmp fast ogt float %552, 0.000000e+00
  %564 = fcmp fast ogt float %554, 0.000000e+00
  %565 = and i1 %563, %564
  %566 = fcmp fast ogt float %558, 0.000000e+00
  br i1 %565, label %567, label %627

; <label>:567                                     ; preds = %547
  br i1 %566, label %568, label %576

; <label>:568                                     ; preds = %567
  %569 = fmul fast float %554, %21
  %570 = fmul fast float %552, %20
  %571 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %12, float %570, float %569, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %572 = extractvalue %dx.types.ResRet.f32 %571, 0
  %573 = fsub fast float 1.000000e+00, %572
  %574 = select i1 %562, float %573, float %572
  %575 = fmul fast float %574, %558
  br label %576

; <label>:576                                     ; preds = %568, %567
  %577 = phi float [ %575, %568 ], [ 0.000000e+00, %567 ]
  %578 = fadd fast float %577, %560
  %579 = call float @dx.op.unary.f32(i32 7, float %578)  ; Saturate(value)
  br i1 %566, label %580, label %590

; <label>:580                                     ; preds = %576
  %581 = fmul fast float %554, %21
  %582 = fsub fast float 1.000000e+00, %20
  %583 = fmul fast float %552, %582
  %584 = fsub fast float 1.000000e+00, %583
  %585 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %12, float %584, float %581, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %586 = extractvalue %dx.types.ResRet.f32 %585, 1
  %587 = fsub fast float 1.000000e+00, %586
  %588 = select i1 %562, float %587, float %586
  %589 = fmul fast float %588, %558
  br label %590

; <label>:590                                     ; preds = %580, %576
  %591 = phi float [ %589, %580 ], [ 0.000000e+00, %576 ]
  %592 = fadd fast float %591, %560
  %593 = call float @dx.op.unary.f32(i32 7, float %592)  ; Saturate(value)
  %594 = fmul fast float %593, %579
  br i1 %566, label %595, label %607

; <label>:595                                     ; preds = %590
  %596 = fsub fast float 1.000000e+00, %21
  %597 = fmul fast float %554, %596
  %598 = fsub fast float 1.000000e+00, %597
  %599 = fsub fast float 1.000000e+00, %20
  %600 = fmul fast float %552, %599
  %601 = fsub fast float 1.000000e+00, %600
  %602 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %12, float %601, float %598, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %603 = extractvalue %dx.types.ResRet.f32 %602, 2
  %604 = fsub fast float 1.000000e+00, %603
  %605 = select i1 %562, float %604, float %603
  %606 = fmul fast float %605, %558
  br label %607

; <label>:607                                     ; preds = %595, %590
  %608 = phi float [ %606, %595 ], [ 0.000000e+00, %590 ]
  %609 = fadd fast float %608, %560
  %610 = call float @dx.op.unary.f32(i32 7, float %609)  ; Saturate(value)
  %611 = fmul fast float %594, %610
  br i1 %566, label %612, label %622

; <label>:612                                     ; preds = %607
  %613 = fsub fast float 1.000000e+00, %21
  %614 = fmul fast float %554, %613
  %615 = fsub fast float 1.000000e+00, %614
  %616 = fmul fast float %552, %20
  %617 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %12, float %616, float %615, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %618 = extractvalue %dx.types.ResRet.f32 %617, 3
  %619 = fsub fast float 1.000000e+00, %618
  %620 = select i1 %562, float %619, float %618
  %621 = fmul fast float %620, %558
  br label %622

; <label>:622                                     ; preds = %612, %607
  %623 = phi float [ %621, %612 ], [ 0.000000e+00, %607 ]
  %624 = fadd fast float %623, %560
  %625 = call float @dx.op.unary.f32(i32 7, float %624)  ; Saturate(value)
  %626 = fmul fast float %611, %625
  br label %638

; <label>:627                                     ; preds = %547
  br i1 %566, label %628, label %634

; <label>:628                                     ; preds = %627
  %629 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %12, float %20, float %21, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %630 = extractvalue %dx.types.ResRet.f32 %629, 0
  %631 = fsub fast float 1.000000e+00, %630
  %632 = select i1 %562, float %631, float %630
  %633 = fmul fast float %632, %558
  br label %634

; <label>:634                                     ; preds = %628, %627
  %635 = phi float [ %633, %628 ], [ 0.000000e+00, %627 ]
  %636 = fadd fast float %635, %560
  %637 = call float @dx.op.unary.f32(i32 7, float %636)  ; Saturate(value)
  br label %638

; <label>:638                                     ; preds = %634, %622
  %639 = phi float [ %626, %622 ], [ %637, %634 ]
  %640 = fmul fast float %639, %544
  br label %641

; <label>:641                                     ; preds = %638, %543
  %642 = phi float [ %640, %638 ], [ %544, %543 ]
  %643 = call float @dx.op.binary.f32(i32 35, float %642, float 0.000000e+00)  ; FMax(a,b)
  %644 = fcmp fast oeq float %643, 0.000000e+00
  br i1 %644, label %645, label %646, !dx.controlflow.hints !53

; <label>:645                                     ; preds = %641
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %646

; <label>:646                                     ; preds = %645, %641
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %648 = extractvalue %dx.types.CBufRet.f32 %647, 2
  %649 = fcmp fast ogt float %648, 0.000000e+00
  br i1 %649, label %650, label %716, !dx.controlflow.hints !54

; <label>:650                                     ; preds = %646
  %651 = fcmp fast oeq float %648, 2.000000e+00
  br i1 %651, label %652, label %704, !dx.controlflow.hints !55

; <label>:652                                     ; preds = %650
  %653 = fcmp fast ole float %32, 0x3F69A5C380000000
  %654 = fcmp fast ole float %33, 0x3F69A5C380000000
  %655 = fcmp fast ole float %34, 0x3F69A5C380000000
  %656 = fmul fast float %32, 0x4029D70A40000000
  %657 = fmul fast float %33, 0x4029D70A40000000
  %658 = fmul fast float %34, 0x4029D70A40000000
  %659 = call float @dx.op.unary.f32(i32 23, float %32)  ; Log(value)
  %660 = call float @dx.op.unary.f32(i32 23, float %33)  ; Log(value)
  %661 = call float @dx.op.unary.f32(i32 23, float %34)  ; Log(value)
  %662 = fmul fast float %659, 0x3FDAAAAAA0000000
  %663 = fmul fast float %660, 0x3FDAAAAAA0000000
  %664 = fmul fast float %661, 0x3FDAAAAAA0000000
  %665 = call float @dx.op.unary.f32(i32 21, float %662)  ; Exp(value)
  %666 = call float @dx.op.unary.f32(i32 21, float %663)  ; Exp(value)
  %667 = call float @dx.op.unary.f32(i32 21, float %664)  ; Exp(value)
  %668 = fmul fast float %665, 0x3FF0E147A0000000
  %669 = fmul fast float %666, 0x3FF0E147A0000000
  %670 = fmul fast float %667, 0x3FF0E147A0000000
  %671 = fadd fast float %668, 0xBFAC28F5C0000000
  %672 = fadd fast float %669, 0xBFAC28F5C0000000
  %673 = fadd fast float %670, 0xBFAC28F5C0000000
  %674 = select i1 %653, float %656, float %671
  %675 = select i1 %654, float %657, float %672
  %676 = select i1 %655, float %658, float %673
  %677 = fsub fast float 1.000000e+00, %674
  %678 = fsub fast float 1.000000e+00, %675
  %679 = fsub fast float 1.000000e+00, %676
  %680 = fcmp fast ole float %677, 0x3FA4B5DCC0000000
  %681 = fmul fast float %677, 0x3FB3D07220000000
  %682 = fsub fast float 0x3FF0E147A0000000, %674
  %683 = fmul fast float %682, 0x3FEE54EDE0000000
  %684 = call float @dx.op.unary.f32(i32 23, float %683)  ; Log(value)
  %685 = fmul fast float %684, 0x4003333340000000
  %686 = call float @dx.op.unary.f32(i32 21, float %685)  ; Exp(value)
  %687 = select i1 %680, float %681, float %686
  %688 = fcmp fast ole float %678, 0x3FA4B5DCC0000000
  %689 = fmul fast float %678, 0x3FB3D07220000000
  %690 = fsub fast float 0x3FF0E147A0000000, %675
  %691 = fmul fast float %690, 0x3FEE54EDE0000000
  %692 = call float @dx.op.unary.f32(i32 23, float %691)  ; Log(value)
  %693 = fmul fast float %692, 0x4003333340000000
  %694 = call float @dx.op.unary.f32(i32 21, float %693)  ; Exp(value)
  %695 = select i1 %688, float %689, float %694
  %696 = fcmp fast ole float %679, 0x3FA4B5DCC0000000
  %697 = fmul fast float %679, 0x3FB3D07220000000
  %698 = fsub fast float 0x3FF0E147A0000000, %676
  %699 = fmul fast float %698, 0x3FEE54EDE0000000
  %700 = call float @dx.op.unary.f32(i32 23, float %699)  ; Log(value)
  %701 = fmul fast float %700, 0x4003333340000000
  %702 = call float @dx.op.unary.f32(i32 21, float %701)  ; Exp(value)
  %703 = select i1 %696, float %697, float %702
  br label %716

; <label>:704                                     ; preds = %650
  %705 = call float @dx.op.dot3.f32(i32 55, float %32, float %33, float %34, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %706 = extractvalue %dx.types.CBufRet.f32 %647, 3
  %707 = fsub fast float %32, %705
  %708 = fsub fast float %33, %705
  %709 = fsub fast float %34, %705
  %710 = fmul fast float %706, %707
  %711 = fmul fast float %706, %708
  %712 = fmul fast float %706, %709
  %713 = fadd fast float %710, %705
  %714 = fadd fast float %711, %705
  %715 = fadd fast float %712, %705
  br label %716

; <label>:716                                     ; preds = %704, %652, %646
  %717 = phi float [ %687, %652 ], [ %713, %704 ], [ %32, %646 ]
  %718 = phi float [ %695, %652 ], [ %714, %704 ], [ %33, %646 ]
  %719 = phi float [ %703, %652 ], [ %715, %704 ], [ %34, %646 ]
  %720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %721 = extractvalue %dx.types.CBufRet.f32 %720, 0
  %722 = fcmp fast une float %721, 0.000000e+00
  br i1 %722, label %723, label %897, !dx.controlflow.hints !56

; <label>:723                                     ; preds = %716
  %724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %725 = extractvalue %dx.types.CBufRet.f32 %724, 0
  %726 = extractvalue %dx.types.CBufRet.f32 %724, 1
  %727 = fsub fast float %36, %725
  %728 = fsub fast float %37, %726
  %729 = extractvalue %dx.types.CBufRet.f32 %724, 2
  %730 = extractvalue %dx.types.CBufRet.f32 %724, 3
  %731 = fmul fast float %727, %729
  %732 = fmul fast float %728, %730
  %733 = call float @dx.op.unary.f32(i32 6, float %721)  ; FAbs(value)
  %734 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %13, float %731, float %732, float undef, float undef, i32 0, i32 0, i32 undef, float %733)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %735 = extractvalue %dx.types.ResRet.f32 %734, 0
  %736 = extractvalue %dx.types.ResRet.f32 %734, 1
  %737 = extractvalue %dx.types.ResRet.f32 %734, 2
  %738 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %739 = extractvalue %dx.types.CBufRet.i32 %738, 3
  %740 = and i32 %739, 3
  %741 = icmp ne i32 %740, 0
  %742 = and i32 %739, 4
  %743 = icmp eq i32 %742, 0
  %744 = and i1 %741, %743
  br i1 %744, label %745, label %789

; <label>:745                                     ; preds = %723
  %746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %747 = extractvalue %dx.types.CBufRet.f32 %746, 0
  %748 = fcmp fast oge float %736, %747
  %749 = zext i1 %748 to i32
  br i1 %748, label %750, label %789

; <label>:750                                     ; preds = %745
  %751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %752 = extractvalue %dx.types.CBufRet.f32 %751, 3
  %753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %754 = extractvalue %dx.types.CBufRet.f32 %753, 2
  %755 = fcmp fast ogt float %754, 0.000000e+00
  br i1 %755, label %756, label %764, !dx.controlflow.hints !57

; <label>:756                                     ; preds = %750
  %757 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %13, float %736, float 0.000000e+00, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %758 = extractvalue %dx.types.ResRet.f32 %757, 0
  %759 = extractvalue %dx.types.ResRet.f32 %757, 1
  %760 = extractvalue %dx.types.ResRet.f32 %757, 2
  %761 = fcmp fast ogt float %754, 1.500000e+00
  %762 = select i1 %761, float %758, float %759
  %763 = select i1 %761, float %758, float %760
  br label %782

; <label>:764                                     ; preds = %750
  %765 = call float @dx.op.unary.f32(i32 7, float %736)  ; Saturate(value)
  %766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 238)  ; CBufferLoadLegacy(handle,regIndex)
  %767 = extractvalue %dx.types.CBufRet.f32 %766, 0
  %768 = extractvalue %dx.types.CBufRet.f32 %766, 1
  %769 = extractvalue %dx.types.CBufRet.f32 %766, 2
  %770 = extractvalue %dx.types.CBufRet.f32 %751, 0
  %771 = extractvalue %dx.types.CBufRet.f32 %751, 1
  %772 = extractvalue %dx.types.CBufRet.f32 %751, 2
  %773 = fsub fast float %767, %770
  %774 = fsub fast float %768, %771
  %775 = fsub fast float %769, %772
  %776 = fmul fast float %773, %765
  %777 = fmul fast float %774, %765
  %778 = fmul fast float %775, %765
  %779 = fadd fast float %776, %770
  %780 = fadd fast float %777, %771
  %781 = fadd fast float %778, %772
  br label %782

; <label>:782                                     ; preds = %764, %756
  %783 = phi float [ %758, %756 ], [ %779, %764 ]
  %784 = phi float [ %762, %756 ], [ %780, %764 ]
  %785 = phi float [ %763, %756 ], [ %781, %764 ]
  %786 = fmul fast float %783, %752
  %787 = fmul fast float %784, %752
  %788 = fmul fast float %785, %752
  br label %789

; <label>:789                                     ; preds = %782, %745, %723
  %790 = phi float [ %786, %782 ], [ %735, %723 ], [ %735, %745 ]
  %791 = phi float [ %787, %782 ], [ %736, %723 ], [ %735, %745 ]
  %792 = phi float [ %788, %782 ], [ %737, %723 ], [ %735, %745 ]
  %793 = phi i32 [ %749, %782 ], [ 0, %723 ], [ %749, %745 ]
  %794 = icmp eq i32 %793, 0
  br i1 %794, label %795, label %849

; <label>:795                                     ; preds = %789
  %796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %797 = extractvalue %dx.types.CBufRet.f32 %796, 0
  %798 = extractvalue %dx.types.CBufRet.f32 %796, 1
  %799 = extractvalue %dx.types.CBufRet.f32 %796, 2
  %800 = call float @dx.op.dot3.f32(i32 55, float %790, float %791, float %792, float %797, float %798, float %799)  ; Dot3(ax,ay,az,bx,by,bz)
  %801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %802 = extractvalue %dx.types.CBufRet.f32 %801, 0
  %803 = extractvalue %dx.types.CBufRet.f32 %801, 1
  %804 = extractvalue %dx.types.CBufRet.f32 %801, 2
  %805 = call float @dx.op.dot3.f32(i32 55, float %790, float %791, float %792, float %802, float %803, float %804)  ; Dot3(ax,ay,az,bx,by,bz)
  %806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %807 = extractvalue %dx.types.CBufRet.f32 %806, 0
  %808 = extractvalue %dx.types.CBufRet.f32 %806, 1
  %809 = extractvalue %dx.types.CBufRet.f32 %806, 2
  %810 = call float @dx.op.dot3.f32(i32 55, float %790, float %791, float %792, float %807, float %808, float %809)  ; Dot3(ax,ay,az,bx,by,bz)
  %811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %812 = extractvalue %dx.types.CBufRet.f32 %811, 2
  %813 = fmul fast float %812, %800
  %814 = fmul fast float %812, %805
  %815 = fmul fast float %812, %810
  %816 = fadd fast float %813, 9.765625e-04
  %817 = fadd fast float %814, 9.765625e-04
  %818 = fadd fast float %815, 9.765625e-04
  %819 = call float @dx.op.unary.f32(i32 23, float %816)  ; Log(value)
  %820 = call float @dx.op.unary.f32(i32 23, float %817)  ; Log(value)
  %821 = call float @dx.op.unary.f32(i32 23, float %818)  ; Log(value)
  %822 = fadd fast float %819, 1.000000e+01
  %823 = fadd fast float %820, 1.000000e+01
  %824 = fadd fast float %821, 1.000000e+01
  %825 = fmul fast float %822, 0x3FA99999A0000000
  %826 = fmul fast float %823, 0x3FA99999A0000000
  %827 = fmul fast float %824, 0x3FA99999A0000000
  %828 = call float @dx.op.unary.f32(i32 7, float %825)  ; Saturate(value)
  %829 = call float @dx.op.unary.f32(i32 7, float %826)  ; Saturate(value)
  %830 = call float @dx.op.unary.f32(i32 7, float %827)  ; Saturate(value)
  %831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %832 = extractvalue %dx.types.CBufRet.f32 %831, 0
  %833 = extractvalue %dx.types.CBufRet.f32 %831, 1
  %834 = extractvalue %dx.types.CBufRet.f32 %831, 2
  %835 = fmul fast float %832, %828
  %836 = fmul fast float %833, %829
  %837 = fmul fast float %834, %830
  %838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %839 = extractvalue %dx.types.CBufRet.f32 %838, 0
  %840 = extractvalue %dx.types.CBufRet.f32 %838, 1
  %841 = extractvalue %dx.types.CBufRet.f32 %838, 2
  %842 = fadd fast float %835, %839
  %843 = fadd fast float %836, %840
  %844 = fadd fast float %837, %841
  %845 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %842, float %843, float %844, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %846 = extractvalue %dx.types.ResRet.f32 %845, 0
  %847 = extractvalue %dx.types.ResRet.f32 %845, 1
  %848 = extractvalue %dx.types.ResRet.f32 %845, 2
  br label %849

; <label>:849                                     ; preds = %795, %789
  %850 = phi float [ %790, %789 ], [ %846, %795 ]
  %851 = phi float [ %791, %789 ], [ %847, %795 ]
  %852 = phi float [ %792, %789 ], [ %848, %795 ]
  %853 = fcmp fast ole float %850, 0x3FA4B5DCC0000000
  %854 = fmul fast float %850, 0x3FB3D07220000000
  %855 = fadd fast float %850, 0x3FAC28F5C0000000
  %856 = fmul fast float %855, 0x3FEE54EDE0000000
  %857 = call float @dx.op.unary.f32(i32 23, float %856)  ; Log(value)
  %858 = fmul fast float %857, 0x4003333340000000
  %859 = call float @dx.op.unary.f32(i32 21, float %858)  ; Exp(value)
  %860 = select i1 %853, float %854, float %859
  %861 = fcmp fast ole float %851, 0x3FA4B5DCC0000000
  %862 = fmul fast float %851, 0x3FB3D07220000000
  %863 = fadd fast float %851, 0x3FAC28F5C0000000
  %864 = fmul fast float %863, 0x3FEE54EDE0000000
  %865 = call float @dx.op.unary.f32(i32 23, float %864)  ; Log(value)
  %866 = fmul fast float %865, 0x4003333340000000
  %867 = call float @dx.op.unary.f32(i32 21, float %866)  ; Exp(value)
  %868 = select i1 %861, float %862, float %867
  %869 = fcmp fast ole float %852, 0x3FA4B5DCC0000000
  %870 = fmul fast float %852, 0x3FB3D07220000000
  %871 = fadd fast float %852, 0x3FAC28F5C0000000
  %872 = fmul fast float %871, 0x3FEE54EDE0000000
  %873 = call float @dx.op.unary.f32(i32 23, float %872)  ; Log(value)
  %874 = fmul fast float %873, 0x4003333340000000
  %875 = call float @dx.op.unary.f32(i32 21, float %874)  ; Exp(value)
  %876 = select i1 %869, float %870, float %875
  %877 = fcmp fast olt float %721, 0.000000e+00
  br i1 %877, label %878, label %890

; <label>:878                                     ; preds = %849
  %879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %880 = extractvalue %dx.types.CBufRet.f32 %879, 0
  %881 = extractvalue %dx.types.CBufRet.f32 %879, 1
  %882 = extractvalue %dx.types.CBufRet.f32 %879, 2
  %883 = call float @dx.op.dot3.f32(i32 55, float %860, float %868, float %876, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %884 = fsub fast float %883, %880
  %885 = fmul fast float %884, %881
  %886 = call float @dx.op.unary.f32(i32 7, float %885)  ; Saturate(value)
  %887 = fsub fast float 1.000000e+00, %882
  %888 = fmul fast float %886, %887
  %889 = fadd fast float %888, %882
  br label %890

; <label>:890                                     ; preds = %878, %849
  %891 = phi float [ %889, %878 ], [ %860, %849 ]
  %892 = phi float [ %889, %878 ], [ %868, %849 ]
  %893 = phi float [ %889, %878 ], [ %876, %849 ]
  %894 = fmul fast float %891, %717
  %895 = fmul fast float %892, %718
  %896 = fmul fast float %893, %719
  br label %897

; <label>:897                                     ; preds = %890, %716
  %898 = phi float [ %894, %890 ], [ %717, %716 ]
  %899 = phi float [ %895, %890 ], [ %718, %716 ]
  %900 = phi float [ %896, %890 ], [ %719, %716 ]
  %901 = extractvalue %dx.types.CBufRet.f32 %720, 1
  %902 = fcmp fast ogt float %901, 0.000000e+00
  br i1 %902, label %903, label %944, !dx.controlflow.hints !58

; <label>:903                                     ; preds = %897
  %904 = extractvalue %dx.types.CBufRet.f32 %720, 2
  %905 = bitcast float %904 to i32
  %906 = and i32 %905, 255
  %907 = uitofp i32 %906 to float
  %908 = lshr i32 %905, 8
  %909 = and i32 %908, 255
  %910 = uitofp i32 %909 to float
  %911 = lshr i32 %905, 16
  %912 = and i32 %911, 255
  %913 = uitofp i32 %912 to float
  %914 = fmul fast float %913, 0x3F70101020000000
  %915 = lshr i32 %905, 24
  %916 = uitofp i32 %915 to float
  %917 = fmul fast float %916, 0x3F70101020000000
  %918 = fadd fast float %913, %907
  %919 = fmul fast float %918, 0x3F70101020000000
  %920 = fadd fast float %910, %916
  %921 = fmul fast float %920, 0x3F70101020000000
  %922 = fdiv fast float %36, %919
  %923 = fdiv fast float %37, %921
  %924 = fsub fast float -0.000000e+00, %922
  %925 = fsub fast float -0.000000e+00, %923
  %926 = fcmp fast oge float %922, %924
  %927 = fcmp fast oge float %923, %925
  %928 = call float @dx.op.unary.f32(i32 6, float %922)  ; FAbs(value)
  %929 = call float @dx.op.unary.f32(i32 6, float %923)  ; FAbs(value)
  %930 = call float @dx.op.unary.f32(i32 22, float %928)  ; Frc(value)
  %931 = call float @dx.op.unary.f32(i32 22, float %929)  ; Frc(value)
  %932 = fsub fast float -0.000000e+00, %930
  %933 = fsub fast float -0.000000e+00, %931
  %934 = select i1 %926, float %930, float %932
  %935 = select i1 %927, float %931, float %933
  %936 = fmul fast float %919, %934
  %937 = fmul fast float %935, %921
  %938 = fcmp fast olt float %936, %914
  %939 = fcmp fast olt float %937, %917
  %940 = or i1 %938, %939
  br i1 %940, label %941, label %944, !dx.controlflow.hints !59

; <label>:941                                     ; preds = %903
  %942 = fsub fast float 1.000000e+00, %901
  %943 = fmul fast float %942, %643
  br label %944

; <label>:944                                     ; preds = %941, %903, %897
  %945 = phi float [ %943, %941 ], [ %643, %903 ], [ %643, %897 ]
  %946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %947 = extractvalue %dx.types.CBufRet.f32 %946, 3
  %948 = fcmp fast ogt float %947, 0.000000e+00
  br i1 %948, label %949, label %1032, !dx.controlflow.hints !60

; <label>:949                                     ; preds = %944
  %950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %951 = extractvalue %dx.types.CBufRet.f32 %950, 2
  %952 = extractvalue %dx.types.CBufRet.f32 %950, 3
  %953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %954 = extractvalue %dx.types.CBufRet.f32 %953, 3
  %955 = fmul fast float %954, 1.000000e+01
  %956 = call float @dx.op.unary.f32(i32 27, float %955)  ; Round_ni(value)
  %957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %958 = extractvalue %dx.types.CBufRet.f32 %957, 0
  %959 = extractvalue %dx.types.CBufRet.f32 %957, 1
  %960 = fmul fast float %958, %36
  %961 = fmul fast float %959, %37
  %962 = call float @dx.op.unary.f32(i32 27, float %960)  ; Round_ni(value)
  %963 = call float @dx.op.unary.f32(i32 27, float %961)  ; Round_ni(value)
  %964 = fmul fast float %956, 0x4002B851E0000000
  %965 = call float @dx.op.unary.f32(i32 22, float %964)  ; Frc(value)
  %966 = fadd fast float %965, 0x3FB99999A0000000
  %967 = fadd fast float %966, %962
  %968 = fadd fast float %966, %963
  %969 = fmul fast float %967, 0x3FE1BEDF00000000
  %970 = call float @dx.op.unary.f32(i32 22, float %969)  ; Frc(value)
  %971 = fmul fast float %967, %970
  %972 = fadd fast float %971, %968
  %973 = fmul fast float %968, 0x3FD3BEBE20000000
  %974 = call float @dx.op.unary.f32(i32 22, float %973)  ; Frc(value)
  %975 = fmul fast float %968, %974
  %976 = fadd fast float %975, %967
  %977 = fmul fast float %972, %976
  %978 = call float @dx.op.unary.f32(i32 22, float %977)  ; Frc(value)
  %979 = extractvalue %dx.types.CBufRet.f32 %957, 3
  %980 = bitcast float %979 to i32
  %981 = and i32 %980, 255
  %982 = uitofp i32 %981 to float
  %983 = fmul fast float %982, 0x3F70101020000000
  %984 = fmul fast float %983, %951
  %985 = fcmp fast olt float %978, %984
  br i1 %985, label %986, label %993, !dx.controlflow.hints !61

; <label>:986                                     ; preds = %949
  %987 = fmul fast float %978, 0x4057091680000000
  %988 = call float @dx.op.unary.f32(i32 22, float %987)  ; Frc(value)
  %989 = fmul fast float %988, %898
  %990 = fmul fast float %988, %900
  %991 = fsub fast float 1.000000e+00, %988
  %992 = fmul fast float %991, %899
  br label %993

; <label>:993                                     ; preds = %986, %949
  %994 = phi float [ %989, %986 ], [ %898, %949 ]
  %995 = phi float [ %992, %986 ], [ %899, %949 ]
  %996 = phi float [ %990, %986 ], [ %900, %949 ]
  %997 = fmul fast float %978, 0x4028B0A3E0000000
  %998 = call float @dx.op.unary.f32(i32 22, float %997)  ; Frc(value)
  %999 = fmul fast float %983, %952
  %1000 = fcmp fast olt float %998, %999
  br i1 %1000, label %1001, label %1020, !dx.controlflow.hints !62

; <label>:1001                                    ; preds = %993
  %1002 = extractvalue %dx.types.CBufRet.f32 %957, 2
  %1003 = fmul fast float %1002, %36
  %1004 = call float @dx.op.unary.f32(i32 27, float %1003)  ; Round_ni(value)
  %1005 = fmul fast float %1004, 0x3FD5555560000000
  %1006 = call float @dx.op.unary.f32(i32 22, float %1005)  ; Frc(value)
  %1007 = extractvalue %dx.types.CBufRet.f32 %950, 0
  %1008 = extractvalue %dx.types.CBufRet.f32 %950, 1
  %1009 = fcmp fast olt float %1006, 0x3FD51EB860000000
  br i1 %1009, label %1013, label %1010, !dx.controlflow.hints !63

; <label>:1010                                    ; preds = %1001
  %1011 = fcmp fast olt float %1006, 0x3FE51EB860000000
  br i1 %1011, label %1013, label %1012, !dx.controlflow.hints !64

; <label>:1012                                    ; preds = %1010
  br label %1013

; <label>:1013                                    ; preds = %1012, %1010, %1001
  %1014 = phi float [ %1007, %1012 ], [ %1008, %1001 ], [ %1007, %1010 ]
  %1015 = phi float [ %1007, %1012 ], [ %1007, %1001 ], [ %1008, %1010 ]
  %1016 = phi float [ %1008, %1012 ], [ %1007, %1001 ], [ %1007, %1010 ]
  %1017 = fmul fast float %1014, %994
  %1018 = fmul fast float %1015, %995
  %1019 = fmul fast float %1016, %996
  br label %1020

; <label>:1020                                    ; preds = %1013, %993
  %1021 = phi float [ %1017, %1013 ], [ %994, %993 ]
  %1022 = phi float [ %1018, %1013 ], [ %995, %993 ]
  %1023 = phi float [ %1019, %1013 ], [ %996, %993 ]
  %1024 = fmul fast float %978, 0x40223EF9E0000000
  %1025 = call float @dx.op.unary.f32(i32 22, float %1024)  ; Frc(value)
  %1026 = fmul fast float %983, %947
  %1027 = fmul fast float %1025, %1025
  %1028 = fmul fast float %1027, %1026
  %1029 = fsub fast float 1.000000e+00, %1028
  %1030 = call float @dx.op.unary.f32(i32 7, float %1029)  ; Saturate(value)
  %1031 = fmul fast float %1030, %945
  br label %1032

; <label>:1032                                    ; preds = %1020, %944
  %1033 = phi float [ %1021, %1020 ], [ %898, %944 ]
  %1034 = phi float [ %1022, %1020 ], [ %899, %944 ]
  %1035 = phi float [ %1023, %1020 ], [ %900, %944 ]
  %1036 = phi float [ %1031, %1020 ], [ %945, %944 ]
  %1037 = extractvalue %dx.types.CBufRet.f32 %647, 0
  %1038 = fcmp fast ogt float %1037, 0.000000e+00
  br i1 %1038, label %1039, label %1088, !dx.controlflow.hints !65

; <label>:1039                                    ; preds = %1032
  %1040 = extractvalue %dx.types.CBufRet.f32 %647, 1
  %1041 = fmul fast float %1037, %18
  %1042 = fmul fast float %1040, %19
  %1043 = call float @dx.op.unary.f32(i32 85, float %1041)  ; DerivFineX(value)
  %1044 = call float @dx.op.unary.f32(i32 86, float %1041)  ; DerivFineY(value)
  %1045 = call float @dx.op.unary.f32(i32 85, float %1042)  ; DerivFineX(value)
  %1046 = call float @dx.op.unary.f32(i32 86, float %1042)  ; DerivFineY(value)
  %1047 = fmul fast float %1046, %1043
  %1048 = fmul fast float %1045, %1044
  %1049 = fsub fast float %1047, %1048
  %1050 = fdiv fast float 1.000000e+00, %1049
  %1051 = fmul fast float %1050, %1046
  %1052 = fmul fast float %1050, %1044
  %1053 = fmul fast float %1050, %1045
  %1054 = fmul fast float %1050, %1043
  %1055 = fmul fast float %1051, %1051
  %1056 = fmul fast float %1053, %1053
  %1057 = fadd fast float %1055, %1056
  %1058 = call float @dx.op.unary.f32(i32 24, float %1057)  ; Sqrt(value)
  %1059 = fmul fast float %1052, %1052
  %1060 = fmul fast float %1054, %1054
  %1061 = fadd fast float %1059, %1060
  %1062 = call float @dx.op.unary.f32(i32 24, float %1061)  ; Sqrt(value)
  %1063 = fmul fast float %1058, %1041
  %1064 = fmul fast float %1062, %1042
  %1065 = fsub fast float %1063, %1058
  %1066 = fsub fast float %1064, %1062
  %1067 = fsub fast float -0.000000e+00, %1063
  %1068 = fsub fast float -0.000000e+00, %1064
  %1069 = call float @dx.op.binary.f32(i32 35, float %1067, float %1065)  ; FMax(a,b)
  %1070 = call float @dx.op.binary.f32(i32 35, float %1068, float %1066)  ; FMax(a,b)
  %1071 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1069)  ; FMax(a,b)
  %1072 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1070)  ; FMax(a,b)
  %1073 = fmul fast float %1071, %1071
  %1074 = fmul fast float %1072, %1072
  %1075 = fadd fast float %1074, %1073
  %1076 = call float @dx.op.unary.f32(i32 24, float %1075)  ; Sqrt(value)
  %1077 = call float @dx.op.binary.f32(i32 35, float %1069, float %1070)  ; FMax(a,b)
  %1078 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %1077)  ; FMin(a,b)
  %1079 = fadd fast float %1076, -1.000000e+00
  %1080 = fadd fast float %1079, %1078
  %1081 = fmul fast float %1080, -5.000000e-01
  %1082 = call float @dx.op.unary.f32(i32 7, float %1081)  ; Saturate(value)
  %1083 = fmul fast float %1082, 2.000000e+00
  %1084 = fsub fast float 3.000000e+00, %1083
  %1085 = fmul fast float %1082, %1082
  %1086 = fmul fast float %1085, %1036
  %1087 = fmul fast float %1086, %1084
  br label %1088

; <label>:1088                                    ; preds = %1039, %1032
  %1089 = phi float [ %1087, %1039 ], [ %1036, %1032 ]
  %1090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1091 = extractvalue %dx.types.CBufRet.f32 %1090, 0
  %1092 = extractvalue %dx.types.CBufRet.f32 %1090, 1
  %1093 = extractvalue %dx.types.CBufRet.f32 %1090, 2
  %1094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1095 = extractvalue %dx.types.CBufRet.f32 %1094, 0
  %1096 = extractvalue %dx.types.CBufRet.f32 %1094, 1
  %1097 = extractvalue %dx.types.CBufRet.f32 %1094, 2
  %1098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1099 = extractvalue %dx.types.CBufRet.f32 %1098, 0
  %1100 = extractvalue %dx.types.CBufRet.f32 %1098, 1
  %1101 = extractvalue %dx.types.CBufRet.f32 %1098, 2
  %1102 = fmul fast float %1091, %1033
  %1103 = call float @dx.op.tertiary.f32(i32 46, float %1092, float %1034, float %1102)  ; FMad(a,b,c)
  %1104 = call float @dx.op.tertiary.f32(i32 46, float %1093, float %1035, float %1103)  ; FMad(a,b,c)
  %1105 = fmul fast float %1095, %1033
  %1106 = call float @dx.op.tertiary.f32(i32 46, float %1096, float %1034, float %1105)  ; FMad(a,b,c)
  %1107 = call float @dx.op.tertiary.f32(i32 46, float %1097, float %1035, float %1106)  ; FMad(a,b,c)
  %1108 = fmul fast float %1099, %1033
  %1109 = call float @dx.op.tertiary.f32(i32 46, float %1100, float %1034, float %1108)  ; FMad(a,b,c)
  %1110 = call float @dx.op.tertiary.f32(i32 46, float %1101, float %1035, float %1109)  ; FMad(a,b,c)
  %1111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1112 = extractvalue %dx.types.CBufRet.f32 %1111, 0
  %1113 = bitcast float %1112 to i32
  %1114 = and i32 %1113, 128
  %1115 = icmp eq i32 %1114, 0
  br i1 %1115, label %1130, label %1116

; <label>:1116                                    ; preds = %1088
  %1117 = call float @dx.op.unary.f32(i32 24, float %1104)  ; Sqrt(value)
  %1118 = call float @dx.op.unary.f32(i32 24, float %1107)  ; Sqrt(value)
  %1119 = call float @dx.op.unary.f32(i32 24, float %1110)  ; Sqrt(value)
  %1120 = fmul fast float %1117, 9.687500e-01
  %1121 = fmul fast float %1118, 9.687500e-01
  %1122 = fmul fast float %1119, 9.687500e-01
  %1123 = fadd fast float %1120, 1.562500e-02
  %1124 = fadd fast float %1121, 1.562500e-02
  %1125 = fadd fast float %1122, 1.562500e-02
  %1126 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %13, float %1123, float %1124, float %1125, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1127 = extractvalue %dx.types.ResRet.f32 %1126, 0
  %1128 = extractvalue %dx.types.ResRet.f32 %1126, 1
  %1129 = extractvalue %dx.types.ResRet.f32 %1126, 2
  br label %1417

; <label>:1130                                    ; preds = %1088
  %1131 = and i32 %1113, 127
  switch i32 %1131, label %1417 [
    i32 1, label %1132
    i32 2, label %1132
    i32 0, label %1132
    i32 3, label %1162
    i32 4, label %1283
  ]

; <label>:1132                                    ; preds = %1130, %1130, %1130
  %1133 = call float @dx.op.unary.f32(i32 7, float %1104)  ; Saturate(value)
  %1134 = call float @dx.op.unary.f32(i32 7, float %1107)  ; Saturate(value)
  %1135 = call float @dx.op.unary.f32(i32 7, float %1110)  ; Saturate(value)
  %1136 = call float @dx.op.unary.f32(i32 23, float %1133)  ; Log(value)
  %1137 = call float @dx.op.unary.f32(i32 23, float %1134)  ; Log(value)
  %1138 = call float @dx.op.unary.f32(i32 23, float %1135)  ; Log(value)
  %1139 = fmul fast float %1136, 0x3FDAAAAAA0000000
  %1140 = fmul fast float %1137, 0x3FDAAAAAA0000000
  %1141 = fmul fast float %1138, 0x3FDAAAAAA0000000
  %1142 = call float @dx.op.unary.f32(i32 21, float %1139)  ; Exp(value)
  %1143 = call float @dx.op.unary.f32(i32 21, float %1140)  ; Exp(value)
  %1144 = call float @dx.op.unary.f32(i32 21, float %1141)  ; Exp(value)
  %1145 = fmul fast float %1142, 0x3FF0E147A0000000
  %1146 = fmul fast float %1143, 0x3FF0E147A0000000
  %1147 = fmul fast float %1144, 0x3FF0E147A0000000
  %1148 = fadd fast float %1145, 0xBFAC28F5C0000000
  %1149 = fadd fast float %1146, 0xBFAC28F5C0000000
  %1150 = fadd fast float %1147, 0xBFAC28F5C0000000
  %1151 = call float @dx.op.unary.f32(i32 7, float %1148)  ; Saturate(value)
  %1152 = call float @dx.op.unary.f32(i32 7, float %1149)  ; Saturate(value)
  %1153 = call float @dx.op.unary.f32(i32 7, float %1150)  ; Saturate(value)
  %1154 = extractvalue %dx.types.CBufRet.f32 %1111, 2
  %1155 = extractvalue %dx.types.CBufRet.f32 %1111, 3
  %1156 = fmul fast float %1154, %1151
  %1157 = fmul fast float %1154, %1152
  %1158 = fmul fast float %1154, %1153
  %1159 = fadd fast float %1156, %1155
  %1160 = fadd fast float %1157, %1155
  %1161 = fadd fast float %1158, %1155
  br label %1417

; <label>:1162                                    ; preds = %1130
  %1163 = fmul fast float %1104, 0x4163D57C00000000
  %1164 = fmul fast float %1107, 0x4163D57C00000000
  %1165 = fmul fast float %1110, 0x4163D57C00000000
  %1166 = fadd fast float %1163, 9.999980e+05
  %1167 = fadd fast float %1164, 9.999980e+05
  %1168 = fadd fast float %1165, 9.999980e+05
  %1169 = fmul fast float %1166, %1104
  %1170 = fmul fast float %1167, %1107
  %1171 = fmul fast float %1168, %1110
  %1172 = fadd fast float %1169, 0xC0AFE17A60000000
  %1173 = fadd fast float %1170, 0xC0AFE17A60000000
  %1174 = fadd fast float %1171, 0xC0AFE17A60000000
  %1175 = fmul fast float %1172, %1104
  %1176 = fmul fast float %1173, %1107
  %1177 = fmul fast float %1174, %1110
  %1178 = fmul fast float %1104, 0x40F753C340000000
  %1179 = fmul fast float %1107, 0x40F753C340000000
  %1180 = fmul fast float %1110, 0x40F753C340000000
  %1181 = fsub fast float 9.999990e+06, %1178
  %1182 = fsub fast float 9.999990e+06, %1179
  %1183 = fsub fast float 9.999990e+06, %1180
  %1184 = fmul fast float %1181, %1104
  %1185 = fmul fast float %1182, %1107
  %1186 = fmul fast float %1183, %1110
  %1187 = fadd fast float %1184, 0x4136D1DD80000000
  %1188 = fadd fast float %1185, 0x4136D1DD80000000
  %1189 = fadd fast float %1186, 0x4136D1DD80000000
  %1190 = fmul fast float %1187, %1104
  %1191 = fmul fast float %1188, %1107
  %1192 = fmul fast float %1189, %1110
  %1193 = fadd fast float %1190, 1.000000e+00
  %1194 = fadd fast float %1191, 1.000000e+00
  %1195 = fadd fast float %1192, 1.000000e+00
  %1196 = fdiv fast float %1175, %1193
  %1197 = fdiv fast float %1176, %1194
  %1198 = fdiv fast float %1177, %1195
  %1199 = call float @dx.op.unary.f32(i32 7, float %1196)  ; Saturate(value)
  %1200 = call float @dx.op.unary.f32(i32 7, float %1197)  ; Saturate(value)
  %1201 = call float @dx.op.unary.f32(i32 7, float %1198)  ; Saturate(value)
  %1202 = extractvalue %dx.types.CBufRet.f32 %1111, 1
  %1203 = fmul fast float %1199, 0x3FE413A920000000
  %1204 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %1200, float %1203)  ; FMad(a,b,c)
  %1205 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %1201, float %1204)  ; FMad(a,b,c)
  %1206 = fmul fast float %1199, 0x3FB1B089A0000000
  %1207 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %1200, float %1206)  ; FMad(a,b,c)
  %1208 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %1201, float %1207)  ; FMad(a,b,c)
  %1209 = fmul fast float %1199, 0x3F90CB2960000000
  %1210 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %1200, float %1209)  ; FMad(a,b,c)
  %1211 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %1201, float %1210)  ; FMad(a,b,c)
  %1212 = fmul fast float %1205, %1202
  %1213 = fmul fast float %1208, %1202
  %1214 = fmul fast float %1211, %1202
  %1215 = fmul fast float %1212, 0x3F847AE140000000
  %1216 = fmul fast float %1213, 0x3F847AE140000000
  %1217 = fmul fast float %1214, 0x3F847AE140000000
  %1218 = fmul fast float %1212, 0x40B4D2F520000000
  %1219 = fmul fast float %1213, 0x40B4D2F520000000
  %1220 = fmul fast float %1214, 0x40B4D2F520000000
  %1221 = fadd fast float %1218, 0x41869ECF20000000
  %1222 = fadd fast float %1219, 0x41869ECF20000000
  %1223 = fadd fast float %1220, 0x41869ECF20000000
  %1224 = fmul fast float %1221, %1215
  %1225 = fmul fast float %1222, %1216
  %1226 = fmul fast float %1223, %1217
  %1227 = fadd fast float %1224, 0x417BB79C60000000
  %1228 = fadd fast float %1225, 0x417BB79C60000000
  %1229 = fadd fast float %1226, 0x417BB79C60000000
  %1230 = fmul fast float %1227, %1215
  %1231 = fmul fast float %1228, %1216
  %1232 = fmul fast float %1229, %1217
  %1233 = fadd fast float %1230, 0x41218DE180000000
  %1234 = fadd fast float %1231, 0x41218DE180000000
  %1235 = fadd fast float %1232, 0x41218DE180000000
  %1236 = fmul fast float %1233, %1215
  %1237 = fmul fast float %1234, %1216
  %1238 = fmul fast float %1235, %1217
  %1239 = fadd fast float %1236, 0x4077F174E0000000
  %1240 = fadd fast float %1237, 0x4077F174E0000000
  %1241 = fadd fast float %1238, 0x4077F174E0000000
  %1242 = fmul fast float %1239, %1215
  %1243 = fmul fast float %1240, %1216
  %1244 = fmul fast float %1241, %1217
  %1245 = fadd fast float %1242, 0x3F3FF79B80000000
  %1246 = fadd fast float %1243, 0x3F3FF79B80000000
  %1247 = fadd fast float %1244, 0x3F3FF79B80000000
  %1248 = fmul fast float %1212, 0x412442D320000000
  %1249 = fmul fast float %1213, 0x412442D320000000
  %1250 = fmul fast float %1214, 0x412442D320000000
  %1251 = fadd fast float %1248, 0x419385D5C0000000
  %1252 = fadd fast float %1249, 0x419385D5C0000000
  %1253 = fadd fast float %1250, 0x419385D5C0000000
  %1254 = fmul fast float %1251, %1215
  %1255 = fmul fast float %1252, %1216
  %1256 = fmul fast float %1253, %1217
  %1257 = fadd fast float %1254, 4.182885e+06
  %1258 = fadd fast float %1255, 4.182885e+06
  %1259 = fadd fast float %1256, 4.182885e+06
  %1260 = fmul fast float %1257, %1215
  %1261 = fmul fast float %1258, %1216
  %1262 = fmul fast float %1259, %1217
  %1263 = fadd fast float %1260, 0x40C4D633C0000000
  %1264 = fadd fast float %1261, 0x40C4D633C0000000
  %1265 = fadd fast float %1262, 0x40C4D633C0000000
  %1266 = fmul fast float %1263, %1215
  %1267 = fmul fast float %1264, %1216
  %1268 = fmul fast float %1265, %1217
  %1269 = fadd fast float %1266, 1.000000e+00
  %1270 = fadd fast float %1267, 1.000000e+00
  %1271 = fadd fast float %1268, 1.000000e+00
  %1272 = fdiv fast float %1245, %1269
  %1273 = fdiv fast float %1246, %1270
  %1274 = fdiv fast float %1247, %1271
  %1275 = extractvalue %dx.types.CBufRet.f32 %1111, 2
  %1276 = extractvalue %dx.types.CBufRet.f32 %1111, 3
  %1277 = fmul fast float %1275, %1272
  %1278 = fmul fast float %1275, %1273
  %1279 = fmul fast float %1275, %1274
  %1280 = fadd fast float %1277, %1276
  %1281 = fadd fast float %1278, %1276
  %1282 = fadd fast float %1279, %1276
  br label %1417

; <label>:1283                                    ; preds = %1130
  %1284 = fmul fast float %1104, 0x4163D57C00000000
  %1285 = fmul fast float %1107, 0x4163D57C00000000
  %1286 = fmul fast float %1110, 0x4163D57C00000000
  %1287 = fadd fast float %1284, 9.999980e+05
  %1288 = fadd fast float %1285, 9.999980e+05
  %1289 = fadd fast float %1286, 9.999980e+05
  %1290 = fmul fast float %1287, %1104
  %1291 = fmul fast float %1288, %1107
  %1292 = fmul fast float %1289, %1110
  %1293 = fadd fast float %1290, 0xC0AFE17A60000000
  %1294 = fadd fast float %1291, 0xC0AFE17A60000000
  %1295 = fadd fast float %1292, 0xC0AFE17A60000000
  %1296 = fmul fast float %1293, %1104
  %1297 = fmul fast float %1294, %1107
  %1298 = fmul fast float %1295, %1110
  %1299 = fmul fast float %1104, 0x40F753C340000000
  %1300 = fmul fast float %1107, 0x40F753C340000000
  %1301 = fmul fast float %1110, 0x40F753C340000000
  %1302 = fsub fast float 9.999990e+06, %1299
  %1303 = fsub fast float 9.999990e+06, %1300
  %1304 = fsub fast float 9.999990e+06, %1301
  %1305 = fmul fast float %1302, %1104
  %1306 = fmul fast float %1303, %1107
  %1307 = fmul fast float %1304, %1110
  %1308 = fadd fast float %1305, 0x4136D1DD80000000
  %1309 = fadd fast float %1306, 0x4136D1DD80000000
  %1310 = fadd fast float %1307, 0x4136D1DD80000000
  %1311 = fmul fast float %1308, %1104
  %1312 = fmul fast float %1309, %1107
  %1313 = fmul fast float %1310, %1110
  %1314 = fadd fast float %1311, 1.000000e+00
  %1315 = fadd fast float %1312, 1.000000e+00
  %1316 = fadd fast float %1313, 1.000000e+00
  %1317 = fdiv fast float %1296, %1314
  %1318 = fdiv fast float %1297, %1315
  %1319 = fdiv fast float %1298, %1316
  %1320 = call float @dx.op.unary.f32(i32 7, float %1317)  ; Saturate(value)
  %1321 = call float @dx.op.unary.f32(i32 7, float %1318)  ; Saturate(value)
  %1322 = call float @dx.op.unary.f32(i32 7, float %1319)  ; Saturate(value)
  %1323 = extractvalue %dx.types.CBufRet.f32 %1111, 1
  %1324 = fmul fast float %1320, 0x3FEA519BC0000000
  %1325 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %1321, float %1324)  ; FMad(a,b,c)
  %1326 = fmul fast float %1320, 0x3FA0FED480000000
  %1327 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %1321, float %1326)  ; FMad(a,b,c)
  %1328 = fmul fast float %1320, 0x3F917E1C00000000
  %1329 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %1321, float %1328)  ; FMad(a,b,c)
  %1330 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %1322, float %1329)  ; FMad(a,b,c)
  %1331 = call float @dx.op.binary.f32(i32 35, float %1320, float %1321)  ; FMax(a,b)
  %1332 = call float @dx.op.binary.f32(i32 35, float %1331, float %1322)  ; FMax(a,b)
  %1333 = fadd fast float %1332, -1.000000e+00
  %1334 = fmul fast float %1333, 2.500000e-01
  %1335 = call float @dx.op.unary.f32(i32 7, float %1334)  ; Saturate(value)
  %1336 = fsub fast float 1.000000e+00, %1335
  %1337 = fmul fast float %1336, %1325
  %1338 = fmul fast float %1336, %1327
  %1339 = fmul fast float %1336, %1330
  %1340 = fmul fast float %1335, %1320
  %1341 = fmul fast float %1335, %1321
  %1342 = fmul fast float %1335, %1322
  %1343 = fadd fast float %1337, %1340
  %1344 = fadd fast float %1338, %1341
  %1345 = fadd fast float %1339, %1342
  %1346 = fmul fast float %1343, %1323
  %1347 = fmul fast float %1344, %1323
  %1348 = fmul fast float %1345, %1323
  %1349 = fmul fast float %1346, 0x3F847AE140000000
  %1350 = fmul fast float %1347, 0x3F847AE140000000
  %1351 = fmul fast float %1348, 0x3F847AE140000000
  %1352 = fmul fast float %1346, 0x40B4D2F520000000
  %1353 = fmul fast float %1347, 0x40B4D2F520000000
  %1354 = fmul fast float %1348, 0x40B4D2F520000000
  %1355 = fadd fast float %1352, 0x41869ECF20000000
  %1356 = fadd fast float %1353, 0x41869ECF20000000
  %1357 = fadd fast float %1354, 0x41869ECF20000000
  %1358 = fmul fast float %1355, %1349
  %1359 = fmul fast float %1356, %1350
  %1360 = fmul fast float %1357, %1351
  %1361 = fadd fast float %1358, 0x417BB79C60000000
  %1362 = fadd fast float %1359, 0x417BB79C60000000
  %1363 = fadd fast float %1360, 0x417BB79C60000000
  %1364 = fmul fast float %1361, %1349
  %1365 = fmul fast float %1362, %1350
  %1366 = fmul fast float %1363, %1351
  %1367 = fadd fast float %1364, 0x41218DE180000000
  %1368 = fadd fast float %1365, 0x41218DE180000000
  %1369 = fadd fast float %1366, 0x41218DE180000000
  %1370 = fmul fast float %1367, %1349
  %1371 = fmul fast float %1368, %1350
  %1372 = fmul fast float %1369, %1351
  %1373 = fadd fast float %1370, 0x4077F174E0000000
  %1374 = fadd fast float %1371, 0x4077F174E0000000
  %1375 = fadd fast float %1372, 0x4077F174E0000000
  %1376 = fmul fast float %1373, %1349
  %1377 = fmul fast float %1374, %1350
  %1378 = fmul fast float %1375, %1351
  %1379 = fadd fast float %1376, 0x3F3FF79B80000000
  %1380 = fadd fast float %1377, 0x3F3FF79B80000000
  %1381 = fadd fast float %1378, 0x3F3FF79B80000000
  %1382 = fmul fast float %1346, 0x412442D320000000
  %1383 = fmul fast float %1347, 0x412442D320000000
  %1384 = fmul fast float %1348, 0x412442D320000000
  %1385 = fadd fast float %1382, 0x419385D5C0000000
  %1386 = fadd fast float %1383, 0x419385D5C0000000
  %1387 = fadd fast float %1384, 0x419385D5C0000000
  %1388 = fmul fast float %1385, %1349
  %1389 = fmul fast float %1386, %1350
  %1390 = fmul fast float %1387, %1351
  %1391 = fadd fast float %1388, 4.182885e+06
  %1392 = fadd fast float %1389, 4.182885e+06
  %1393 = fadd fast float %1390, 4.182885e+06
  %1394 = fmul fast float %1391, %1349
  %1395 = fmul fast float %1392, %1350
  %1396 = fmul fast float %1393, %1351
  %1397 = fadd fast float %1394, 0x40C4D633C0000000
  %1398 = fadd fast float %1395, 0x40C4D633C0000000
  %1399 = fadd fast float %1396, 0x40C4D633C0000000
  %1400 = fmul fast float %1397, %1349
  %1401 = fmul fast float %1398, %1350
  %1402 = fmul fast float %1399, %1351
  %1403 = fadd fast float %1400, 1.000000e+00
  %1404 = fadd fast float %1401, 1.000000e+00
  %1405 = fadd fast float %1402, 1.000000e+00
  %1406 = fdiv fast float %1379, %1403
  %1407 = fdiv fast float %1380, %1404
  %1408 = fdiv fast float %1381, %1405
  %1409 = extractvalue %dx.types.CBufRet.f32 %1111, 2
  %1410 = extractvalue %dx.types.CBufRet.f32 %1111, 3
  %1411 = fmul fast float %1409, %1406
  %1412 = fmul fast float %1409, %1407
  %1413 = fmul fast float %1409, %1408
  %1414 = fadd fast float %1411, %1410
  %1415 = fadd fast float %1412, %1410
  %1416 = fadd fast float %1413, %1410
  br label %1417

; <label>:1417                                    ; preds = %1283, %1162, %1132, %1130, %1116
  %1418 = phi float [ %1127, %1116 ], [ %1104, %1130 ], [ %1414, %1283 ], [ %1280, %1162 ], [ %1159, %1132 ]
  %1419 = phi float [ %1128, %1116 ], [ %1107, %1130 ], [ %1415, %1283 ], [ %1281, %1162 ], [ %1160, %1132 ]
  %1420 = phi float [ %1129, %1116 ], [ %1110, %1130 ], [ %1416, %1283 ], [ %1282, %1162 ], [ %1161, %1132 ]
  %1421 = fmul fast float %1418, %1089
  %1422 = fmul fast float %1419, %1089
  %1423 = fmul fast float %1420, %1089
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1421)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1422)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1423)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1089)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

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
!4 = !{!5, null, !17, !21}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16}
!6 = !{i32 0, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 74, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 73, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 70, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 5, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 71, i32 1, i32 4, i32 0, !7}
!17 = !{!18, !19, !20}
!18 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!19 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 320, null}
!20 = !{i32 2, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 240, null}
!21 = !{!22, !23, !24, !25}
!22 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!23 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!24 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!25 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!26 = !{[24 x i32] [i32 22, i32 4, i32 15, i32 15, i32 0, i32 0, i32 7, i32 7, i32 7, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15]}
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
!47 = !{i32 1}
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
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}

