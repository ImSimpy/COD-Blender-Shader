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
; shader hash: 912dfb2cda698ce49c7b51b74c413783
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
;                                   sampler      NA          NA      S0             s1     1
;                                   sampler      NA          NA      S1             s2     1
;                                   sampler      NA          NA      S2             s3     1
;                                   sampler      NA          NA      S3             s4     1
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
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %40 = extractvalue %dx.types.CBufRet.f32 %39, 3
  %41 = fcmp fast ogt float %40, 0.000000e+00
  br i1 %41, label %42, label %92, !dx.controlflow.hints !51

; <label>:42                                      ; preds = %0
  %43 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.f32 %43, 3
  %45 = fmul fast float %44, 1.000000e+01
  %46 = call float @dx.op.unary.f32(i32 27, float %45)  ; Round_ni(value)
  %47 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %48 = extractvalue %dx.types.CBufRet.f32 %47, 0
  %49 = extractvalue %dx.types.CBufRet.f32 %47, 1
  %50 = fmul fast float %48, %37
  %51 = fmul fast float %49, %38
  %52 = call float @dx.op.unary.f32(i32 27, float %50)  ; Round_ni(value)
  %53 = call float @dx.op.unary.f32(i32 27, float %51)  ; Round_ni(value)
  %54 = fmul fast float %46, 0x4002B851E0000000
  %55 = call float @dx.op.unary.f32(i32 22, float %54)  ; Frc(value)
  %56 = fadd fast float %55, 0x3FB99999A0000000
  %57 = fadd fast float %56, %52
  %58 = fadd fast float %56, %53
  %59 = fmul fast float %57, 0x3FE1BEDF00000000
  %60 = call float @dx.op.unary.f32(i32 22, float %59)  ; Frc(value)
  %61 = fmul fast float %57, %60
  %62 = fadd fast float %61, %58
  %63 = fmul fast float %58, 0x3FD3BEBE20000000
  %64 = call float @dx.op.unary.f32(i32 22, float %63)  ; Frc(value)
  %65 = fmul fast float %58, %64
  %66 = fadd fast float %65, %57
  %67 = fmul fast float %62, %66
  %68 = call float @dx.op.unary.f32(i32 22, float %67)  ; Frc(value)
  %69 = extractvalue %dx.types.CBufRet.f32 %47, 3
  %70 = bitcast float %69 to i32
  %71 = and i32 %70, 255
  %72 = uitofp i32 %71 to float
  %73 = fmul fast float %68, 0x4085373340000000
  %74 = call float @dx.op.unary.f32(i32 22, float %73)  ; Frc(value)
  %75 = fmul fast float %72, 0x3F6CE9B6A0000000
  %76 = fcmp fast olt float %74, %75
  br i1 %76, label %77, label %92, !dx.controlflow.hints !52

; <label>:77                                      ; preds = %42
  %78 = fdiv fast float %74, %75
  %79 = fmul fast float %78, 2.000000e+00
  %80 = fadd fast float %79, -1.000000e+00
  %81 = lshr i32 %70, 8
  %82 = and i32 %81, 255
  %83 = uitofp i32 %82 to float
  %84 = call float @dx.op.unary.f32(i32 83, float %31)  ; DerivCoarseX(value)
  %85 = call float @dx.op.unary.f32(i32 83, float %32)  ; DerivCoarseX(value)
  %86 = fmul fast float %80, %84
  %87 = fmul fast float %86, %83
  %88 = fmul fast float %85, %80
  %89 = fmul fast float %88, %83
  %90 = fadd fast float %87, %31
  %91 = fadd fast float %89, %32
  br label %92

; <label>:92                                      ; preds = %77, %42, %0
  %93 = phi float [ %90, %77 ], [ %31, %42 ], [ %31, %0 ]
  %94 = phi float [ %91, %77 ], [ %32, %42 ], [ %32, %0 ]
  %95 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %15, float %93, float %94, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %96 = extractvalue %dx.types.ResRet.f32 %95, 3
  %97 = fmul fast float %96, %36
  %98 = fcmp fast ole float %33, 0x3FA4B5DCC0000000
  %99 = fmul fast float %33, 0x3FB3D07220000000
  %100 = fadd fast float %33, 0x3FAC28F5C0000000
  %101 = fmul fast float %100, 0x3FEE54EDE0000000
  %102 = call float @dx.op.unary.f32(i32 23, float %101)  ; Log(value)
  %103 = fmul fast float %102, 0x4003333340000000
  %104 = call float @dx.op.unary.f32(i32 21, float %103)  ; Exp(value)
  %105 = select i1 %98, float %99, float %104
  %106 = fcmp fast ole float %34, 0x3FA4B5DCC0000000
  %107 = fmul fast float %34, 0x3FB3D07220000000
  %108 = fadd fast float %34, 0x3FAC28F5C0000000
  %109 = fmul fast float %108, 0x3FEE54EDE0000000
  %110 = call float @dx.op.unary.f32(i32 23, float %109)  ; Log(value)
  %111 = fmul fast float %110, 0x4003333340000000
  %112 = call float @dx.op.unary.f32(i32 21, float %111)  ; Exp(value)
  %113 = select i1 %106, float %107, float %112
  %114 = fcmp fast ole float %35, 0x3FA4B5DCC0000000
  %115 = fmul fast float %35, 0x3FB3D07220000000
  %116 = fadd fast float %35, 0x3FAC28F5C0000000
  %117 = fmul fast float %116, 0x3FEE54EDE0000000
  %118 = call float @dx.op.unary.f32(i32 23, float %117)  ; Log(value)
  %119 = fmul fast float %118, 0x4003333340000000
  %120 = call float @dx.op.unary.f32(i32 21, float %119)  ; Exp(value)
  %121 = select i1 %114, float %115, float %120
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 3
  %124 = bitcast float %123 to i32
  %125 = lshr i32 %124, 4
  %126 = lshr i32 %124, 9
  %127 = and i32 %126, 1
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %223, label %129

; <label>:129                                     ; preds = %92
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 3
  %132 = bitcast float %131 to i32
  %133 = and i32 %132, 65535
  %134 = call float @dx.op.legacyF16ToF32(i32 131, i32 %133)  ; LegacyF16ToF32(value)
  %135 = lshr i32 %132, 16
  %136 = call float @dx.op.legacyF16ToF32(i32 131, i32 %135)  ; LegacyF16ToF32(value)
  %137 = extractvalue %dx.types.CBufRet.f32 %130, 2
  %138 = bitcast float %137 to i32
  %139 = and i32 %138, 65535
  %140 = call float @dx.op.legacyF16ToF32(i32 131, i32 %139)  ; LegacyF16ToF32(value)
  %141 = lshr i32 %138, 16
  %142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %141)  ; LegacyF16ToF32(value)
  %143 = and i32 %125, 1
  %144 = icmp ne i32 %143, 0
  %145 = fcmp fast ogt float %134, 0.000000e+00
  %146 = fcmp fast ogt float %136, 0.000000e+00
  %147 = and i1 %145, %146
  %148 = fcmp fast ogt float %140, 0.000000e+00
  br i1 %147, label %149, label %209

; <label>:149                                     ; preds = %129
  br i1 %148, label %150, label %158

; <label>:150                                     ; preds = %149
  %151 = fmul fast float %136, %30
  %152 = fmul fast float %134, %29
  %153 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %12, float %152, float %151, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %154 = extractvalue %dx.types.ResRet.f32 %153, 0
  %155 = fsub fast float 1.000000e+00, %154
  %156 = select i1 %144, float %155, float %154
  %157 = fmul fast float %156, %140
  br label %158

; <label>:158                                     ; preds = %150, %149
  %159 = phi float [ %157, %150 ], [ 0.000000e+00, %149 ]
  %160 = fadd fast float %159, %142
  %161 = call float @dx.op.unary.f32(i32 7, float %160)  ; Saturate(value)
  br i1 %148, label %162, label %172

; <label>:162                                     ; preds = %158
  %163 = fmul fast float %136, %30
  %164 = fsub fast float 1.000000e+00, %29
  %165 = fmul fast float %134, %164
  %166 = fsub fast float 1.000000e+00, %165
  %167 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %12, float %166, float %163, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %168 = extractvalue %dx.types.ResRet.f32 %167, 1
  %169 = fsub fast float 1.000000e+00, %168
  %170 = select i1 %144, float %169, float %168
  %171 = fmul fast float %170, %140
  br label %172

; <label>:172                                     ; preds = %162, %158
  %173 = phi float [ %171, %162 ], [ 0.000000e+00, %158 ]
  %174 = fadd fast float %173, %142
  %175 = call float @dx.op.unary.f32(i32 7, float %174)  ; Saturate(value)
  %176 = fmul fast float %175, %161
  br i1 %148, label %177, label %189

; <label>:177                                     ; preds = %172
  %178 = fsub fast float 1.000000e+00, %30
  %179 = fmul fast float %136, %178
  %180 = fsub fast float 1.000000e+00, %179
  %181 = fsub fast float 1.000000e+00, %29
  %182 = fmul fast float %134, %181
  %183 = fsub fast float 1.000000e+00, %182
  %184 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %12, float %183, float %180, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %185 = extractvalue %dx.types.ResRet.f32 %184, 2
  %186 = fsub fast float 1.000000e+00, %185
  %187 = select i1 %144, float %186, float %185
  %188 = fmul fast float %187, %140
  br label %189

; <label>:189                                     ; preds = %177, %172
  %190 = phi float [ %188, %177 ], [ 0.000000e+00, %172 ]
  %191 = fadd fast float %190, %142
  %192 = call float @dx.op.unary.f32(i32 7, float %191)  ; Saturate(value)
  %193 = fmul fast float %176, %192
  br i1 %148, label %194, label %204

; <label>:194                                     ; preds = %189
  %195 = fsub fast float 1.000000e+00, %30
  %196 = fmul fast float %136, %195
  %197 = fsub fast float 1.000000e+00, %196
  %198 = fmul fast float %134, %29
  %199 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %12, float %198, float %197, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %200 = extractvalue %dx.types.ResRet.f32 %199, 3
  %201 = fsub fast float 1.000000e+00, %200
  %202 = select i1 %144, float %201, float %200
  %203 = fmul fast float %202, %140
  br label %204

; <label>:204                                     ; preds = %194, %189
  %205 = phi float [ %203, %194 ], [ 0.000000e+00, %189 ]
  %206 = fadd fast float %205, %142
  %207 = call float @dx.op.unary.f32(i32 7, float %206)  ; Saturate(value)
  %208 = fmul fast float %193, %207
  br label %220

; <label>:209                                     ; preds = %129
  br i1 %148, label %210, label %216

; <label>:210                                     ; preds = %209
  %211 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %12, float %29, float %30, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %212 = extractvalue %dx.types.ResRet.f32 %211, 0
  %213 = fsub fast float 1.000000e+00, %212
  %214 = select i1 %144, float %213, float %212
  %215 = fmul fast float %214, %140
  br label %216

; <label>:216                                     ; preds = %210, %209
  %217 = phi float [ %215, %210 ], [ 0.000000e+00, %209 ]
  %218 = fadd fast float %217, %142
  %219 = call float @dx.op.unary.f32(i32 7, float %218)  ; Saturate(value)
  br label %220

; <label>:220                                     ; preds = %216, %204
  %221 = phi float [ %208, %204 ], [ %219, %216 ]
  %222 = fmul fast float %221, %97
  br label %223

; <label>:223                                     ; preds = %220, %92
  %224 = phi float [ %222, %220 ], [ %97, %92 ]
  %225 = and i32 %126, 2
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %321, label %227

; <label>:227                                     ; preds = %223
  %228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %229 = extractvalue %dx.types.CBufRet.f32 %228, 3
  %230 = bitcast float %229 to i32
  %231 = and i32 %230, 65535
  %232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %231)  ; LegacyF16ToF32(value)
  %233 = lshr i32 %230, 16
  %234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %233)  ; LegacyF16ToF32(value)
  %235 = extractvalue %dx.types.CBufRet.f32 %228, 2
  %236 = bitcast float %235 to i32
  %237 = and i32 %236, 65535
  %238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %237)  ; LegacyF16ToF32(value)
  %239 = lshr i32 %236, 16
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = and i32 %125, 2
  %242 = icmp ne i32 %241, 0
  %243 = fcmp fast ogt float %232, 0.000000e+00
  %244 = fcmp fast ogt float %234, 0.000000e+00
  %245 = and i1 %243, %244
  %246 = fcmp fast ogt float %238, 0.000000e+00
  br i1 %245, label %247, label %307

; <label>:247                                     ; preds = %227
  br i1 %246, label %248, label %256

; <label>:248                                     ; preds = %247
  %249 = fmul fast float %234, %28
  %250 = fmul fast float %232, %27
  %251 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %12, float %250, float %249, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %252 = extractvalue %dx.types.ResRet.f32 %251, 0
  %253 = fsub fast float 1.000000e+00, %252
  %254 = select i1 %242, float %253, float %252
  %255 = fmul fast float %254, %238
  br label %256

; <label>:256                                     ; preds = %248, %247
  %257 = phi float [ %255, %248 ], [ 0.000000e+00, %247 ]
  %258 = fadd fast float %257, %240
  %259 = call float @dx.op.unary.f32(i32 7, float %258)  ; Saturate(value)
  br i1 %246, label %260, label %270

; <label>:260                                     ; preds = %256
  %261 = fmul fast float %234, %28
  %262 = fsub fast float 1.000000e+00, %27
  %263 = fmul fast float %232, %262
  %264 = fsub fast float 1.000000e+00, %263
  %265 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %12, float %264, float %261, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %266 = extractvalue %dx.types.ResRet.f32 %265, 1
  %267 = fsub fast float 1.000000e+00, %266
  %268 = select i1 %242, float %267, float %266
  %269 = fmul fast float %268, %238
  br label %270

; <label>:270                                     ; preds = %260, %256
  %271 = phi float [ %269, %260 ], [ 0.000000e+00, %256 ]
  %272 = fadd fast float %271, %240
  %273 = call float @dx.op.unary.f32(i32 7, float %272)  ; Saturate(value)
  %274 = fmul fast float %273, %259
  br i1 %246, label %275, label %287

; <label>:275                                     ; preds = %270
  %276 = fsub fast float 1.000000e+00, %28
  %277 = fmul fast float %234, %276
  %278 = fsub fast float 1.000000e+00, %277
  %279 = fsub fast float 1.000000e+00, %27
  %280 = fmul fast float %232, %279
  %281 = fsub fast float 1.000000e+00, %280
  %282 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %12, float %281, float %278, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %283 = extractvalue %dx.types.ResRet.f32 %282, 2
  %284 = fsub fast float 1.000000e+00, %283
  %285 = select i1 %242, float %284, float %283
  %286 = fmul fast float %285, %238
  br label %287

; <label>:287                                     ; preds = %275, %270
  %288 = phi float [ %286, %275 ], [ 0.000000e+00, %270 ]
  %289 = fadd fast float %288, %240
  %290 = call float @dx.op.unary.f32(i32 7, float %289)  ; Saturate(value)
  %291 = fmul fast float %274, %290
  br i1 %246, label %292, label %302

; <label>:292                                     ; preds = %287
  %293 = fsub fast float 1.000000e+00, %28
  %294 = fmul fast float %234, %293
  %295 = fsub fast float 1.000000e+00, %294
  %296 = fmul fast float %232, %27
  %297 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %12, float %296, float %295, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %298 = extractvalue %dx.types.ResRet.f32 %297, 3
  %299 = fsub fast float 1.000000e+00, %298
  %300 = select i1 %242, float %299, float %298
  %301 = fmul fast float %300, %238
  br label %302

; <label>:302                                     ; preds = %292, %287
  %303 = phi float [ %301, %292 ], [ 0.000000e+00, %287 ]
  %304 = fadd fast float %303, %240
  %305 = call float @dx.op.unary.f32(i32 7, float %304)  ; Saturate(value)
  %306 = fmul fast float %291, %305
  br label %318

; <label>:307                                     ; preds = %227
  br i1 %246, label %308, label %314

; <label>:308                                     ; preds = %307
  %309 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %12, float %27, float %28, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %310 = extractvalue %dx.types.ResRet.f32 %309, 0
  %311 = fsub fast float 1.000000e+00, %310
  %312 = select i1 %242, float %311, float %310
  %313 = fmul fast float %312, %238
  br label %314

; <label>:314                                     ; preds = %308, %307
  %315 = phi float [ %313, %308 ], [ 0.000000e+00, %307 ]
  %316 = fadd fast float %315, %240
  %317 = call float @dx.op.unary.f32(i32 7, float %316)  ; Saturate(value)
  br label %318

; <label>:318                                     ; preds = %314, %302
  %319 = phi float [ %306, %302 ], [ %317, %314 ]
  %320 = fmul fast float %319, %224
  br label %321

; <label>:321                                     ; preds = %318, %223
  %322 = phi float [ %320, %318 ], [ %224, %223 ]
  %323 = and i32 %126, 4
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %419, label %325

; <label>:325                                     ; preds = %321
  %326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %327 = extractvalue %dx.types.CBufRet.f32 %326, 3
  %328 = bitcast float %327 to i32
  %329 = and i32 %328, 65535
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = lshr i32 %328, 16
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = extractvalue %dx.types.CBufRet.f32 %326, 2
  %334 = bitcast float %333 to i32
  %335 = and i32 %334, 65535
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = lshr i32 %334, 16
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = and i32 %125, 4
  %340 = icmp ne i32 %339, 0
  %341 = fcmp fast ogt float %330, 0.000000e+00
  %342 = fcmp fast ogt float %332, 0.000000e+00
  %343 = and i1 %341, %342
  %344 = fcmp fast ogt float %336, 0.000000e+00
  br i1 %343, label %345, label %405

; <label>:345                                     ; preds = %325
  br i1 %344, label %346, label %354

; <label>:346                                     ; preds = %345
  %347 = fmul fast float %332, %26
  %348 = fmul fast float %330, %25
  %349 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %12, float %348, float %347, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %350 = extractvalue %dx.types.ResRet.f32 %349, 0
  %351 = fsub fast float 1.000000e+00, %350
  %352 = select i1 %340, float %351, float %350
  %353 = fmul fast float %352, %336
  br label %354

; <label>:354                                     ; preds = %346, %345
  %355 = phi float [ %353, %346 ], [ 0.000000e+00, %345 ]
  %356 = fadd fast float %355, %338
  %357 = call float @dx.op.unary.f32(i32 7, float %356)  ; Saturate(value)
  br i1 %344, label %358, label %368

; <label>:358                                     ; preds = %354
  %359 = fmul fast float %332, %26
  %360 = fsub fast float 1.000000e+00, %25
  %361 = fmul fast float %330, %360
  %362 = fsub fast float 1.000000e+00, %361
  %363 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %12, float %362, float %359, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %364 = extractvalue %dx.types.ResRet.f32 %363, 1
  %365 = fsub fast float 1.000000e+00, %364
  %366 = select i1 %340, float %365, float %364
  %367 = fmul fast float %366, %336
  br label %368

; <label>:368                                     ; preds = %358, %354
  %369 = phi float [ %367, %358 ], [ 0.000000e+00, %354 ]
  %370 = fadd fast float %369, %338
  %371 = call float @dx.op.unary.f32(i32 7, float %370)  ; Saturate(value)
  %372 = fmul fast float %371, %357
  br i1 %344, label %373, label %385

; <label>:373                                     ; preds = %368
  %374 = fsub fast float 1.000000e+00, %26
  %375 = fmul fast float %332, %374
  %376 = fsub fast float 1.000000e+00, %375
  %377 = fsub fast float 1.000000e+00, %25
  %378 = fmul fast float %330, %377
  %379 = fsub fast float 1.000000e+00, %378
  %380 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %12, float %379, float %376, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %381 = extractvalue %dx.types.ResRet.f32 %380, 2
  %382 = fsub fast float 1.000000e+00, %381
  %383 = select i1 %340, float %382, float %381
  %384 = fmul fast float %383, %336
  br label %385

; <label>:385                                     ; preds = %373, %368
  %386 = phi float [ %384, %373 ], [ 0.000000e+00, %368 ]
  %387 = fadd fast float %386, %338
  %388 = call float @dx.op.unary.f32(i32 7, float %387)  ; Saturate(value)
  %389 = fmul fast float %372, %388
  br i1 %344, label %390, label %400

; <label>:390                                     ; preds = %385
  %391 = fsub fast float 1.000000e+00, %26
  %392 = fmul fast float %332, %391
  %393 = fsub fast float 1.000000e+00, %392
  %394 = fmul fast float %330, %25
  %395 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %12, float %394, float %393, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %396 = extractvalue %dx.types.ResRet.f32 %395, 3
  %397 = fsub fast float 1.000000e+00, %396
  %398 = select i1 %340, float %397, float %396
  %399 = fmul fast float %398, %336
  br label %400

; <label>:400                                     ; preds = %390, %385
  %401 = phi float [ %399, %390 ], [ 0.000000e+00, %385 ]
  %402 = fadd fast float %401, %338
  %403 = call float @dx.op.unary.f32(i32 7, float %402)  ; Saturate(value)
  %404 = fmul fast float %389, %403
  br label %416

; <label>:405                                     ; preds = %325
  br i1 %344, label %406, label %412

; <label>:406                                     ; preds = %405
  %407 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %12, float %25, float %26, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %408 = extractvalue %dx.types.ResRet.f32 %407, 0
  %409 = fsub fast float 1.000000e+00, %408
  %410 = select i1 %340, float %409, float %408
  %411 = fmul fast float %410, %336
  br label %412

; <label>:412                                     ; preds = %406, %405
  %413 = phi float [ %411, %406 ], [ 0.000000e+00, %405 ]
  %414 = fadd fast float %413, %338
  %415 = call float @dx.op.unary.f32(i32 7, float %414)  ; Saturate(value)
  br label %416

; <label>:416                                     ; preds = %412, %400
  %417 = phi float [ %404, %400 ], [ %415, %412 ]
  %418 = fmul fast float %417, %322
  br label %419

; <label>:419                                     ; preds = %416, %321
  %420 = phi float [ %418, %416 ], [ %322, %321 ]
  %421 = and i32 %126, 8
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %517, label %423

; <label>:423                                     ; preds = %419
  %424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %425 = extractvalue %dx.types.CBufRet.f32 %424, 3
  %426 = bitcast float %425 to i32
  %427 = and i32 %426, 65535
  %428 = call float @dx.op.legacyF16ToF32(i32 131, i32 %427)  ; LegacyF16ToF32(value)
  %429 = lshr i32 %426, 16
  %430 = call float @dx.op.legacyF16ToF32(i32 131, i32 %429)  ; LegacyF16ToF32(value)
  %431 = extractvalue %dx.types.CBufRet.f32 %424, 2
  %432 = bitcast float %431 to i32
  %433 = and i32 %432, 65535
  %434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %433)  ; LegacyF16ToF32(value)
  %435 = lshr i32 %432, 16
  %436 = call float @dx.op.legacyF16ToF32(i32 131, i32 %435)  ; LegacyF16ToF32(value)
  %437 = and i32 %125, 8
  %438 = icmp ne i32 %437, 0
  %439 = fcmp fast ogt float %428, 0.000000e+00
  %440 = fcmp fast ogt float %430, 0.000000e+00
  %441 = and i1 %439, %440
  %442 = fcmp fast ogt float %434, 0.000000e+00
  br i1 %441, label %443, label %503

; <label>:443                                     ; preds = %423
  br i1 %442, label %444, label %452

; <label>:444                                     ; preds = %443
  %445 = fmul fast float %430, %24
  %446 = fmul fast float %428, %23
  %447 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %12, float %446, float %445, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %448 = extractvalue %dx.types.ResRet.f32 %447, 0
  %449 = fsub fast float 1.000000e+00, %448
  %450 = select i1 %438, float %449, float %448
  %451 = fmul fast float %450, %434
  br label %452

; <label>:452                                     ; preds = %444, %443
  %453 = phi float [ %451, %444 ], [ 0.000000e+00, %443 ]
  %454 = fadd fast float %453, %436
  %455 = call float @dx.op.unary.f32(i32 7, float %454)  ; Saturate(value)
  br i1 %442, label %456, label %466

; <label>:456                                     ; preds = %452
  %457 = fmul fast float %430, %24
  %458 = fsub fast float 1.000000e+00, %23
  %459 = fmul fast float %428, %458
  %460 = fsub fast float 1.000000e+00, %459
  %461 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %12, float %460, float %457, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %462 = extractvalue %dx.types.ResRet.f32 %461, 1
  %463 = fsub fast float 1.000000e+00, %462
  %464 = select i1 %438, float %463, float %462
  %465 = fmul fast float %464, %434
  br label %466

; <label>:466                                     ; preds = %456, %452
  %467 = phi float [ %465, %456 ], [ 0.000000e+00, %452 ]
  %468 = fadd fast float %467, %436
  %469 = call float @dx.op.unary.f32(i32 7, float %468)  ; Saturate(value)
  %470 = fmul fast float %469, %455
  br i1 %442, label %471, label %483

; <label>:471                                     ; preds = %466
  %472 = fsub fast float 1.000000e+00, %24
  %473 = fmul fast float %430, %472
  %474 = fsub fast float 1.000000e+00, %473
  %475 = fsub fast float 1.000000e+00, %23
  %476 = fmul fast float %428, %475
  %477 = fsub fast float 1.000000e+00, %476
  %478 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %12, float %477, float %474, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %479 = extractvalue %dx.types.ResRet.f32 %478, 2
  %480 = fsub fast float 1.000000e+00, %479
  %481 = select i1 %438, float %480, float %479
  %482 = fmul fast float %481, %434
  br label %483

; <label>:483                                     ; preds = %471, %466
  %484 = phi float [ %482, %471 ], [ 0.000000e+00, %466 ]
  %485 = fadd fast float %484, %436
  %486 = call float @dx.op.unary.f32(i32 7, float %485)  ; Saturate(value)
  %487 = fmul fast float %470, %486
  br i1 %442, label %488, label %498

; <label>:488                                     ; preds = %483
  %489 = fsub fast float 1.000000e+00, %24
  %490 = fmul fast float %430, %489
  %491 = fsub fast float 1.000000e+00, %490
  %492 = fmul fast float %428, %23
  %493 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %12, float %492, float %491, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %494 = extractvalue %dx.types.ResRet.f32 %493, 3
  %495 = fsub fast float 1.000000e+00, %494
  %496 = select i1 %438, float %495, float %494
  %497 = fmul fast float %496, %434
  br label %498

; <label>:498                                     ; preds = %488, %483
  %499 = phi float [ %497, %488 ], [ 0.000000e+00, %483 ]
  %500 = fadd fast float %499, %436
  %501 = call float @dx.op.unary.f32(i32 7, float %500)  ; Saturate(value)
  %502 = fmul fast float %487, %501
  br label %514

; <label>:503                                     ; preds = %423
  br i1 %442, label %504, label %510

; <label>:504                                     ; preds = %503
  %505 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %12, float %23, float %24, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %506 = extractvalue %dx.types.ResRet.f32 %505, 0
  %507 = fsub fast float 1.000000e+00, %506
  %508 = select i1 %438, float %507, float %506
  %509 = fmul fast float %508, %434
  br label %510

; <label>:510                                     ; preds = %504, %503
  %511 = phi float [ %509, %504 ], [ 0.000000e+00, %503 ]
  %512 = fadd fast float %511, %436
  %513 = call float @dx.op.unary.f32(i32 7, float %512)  ; Saturate(value)
  br label %514

; <label>:514                                     ; preds = %510, %498
  %515 = phi float [ %502, %498 ], [ %513, %510 ]
  %516 = fmul fast float %515, %420
  br label %517

; <label>:517                                     ; preds = %514, %419
  %518 = phi float [ %516, %514 ], [ %420, %419 ]
  %519 = and i32 %126, 16
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %615, label %521

; <label>:521                                     ; preds = %517
  %522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %523 = extractvalue %dx.types.CBufRet.f32 %522, 3
  %524 = bitcast float %523 to i32
  %525 = and i32 %524, 65535
  %526 = call float @dx.op.legacyF16ToF32(i32 131, i32 %525)  ; LegacyF16ToF32(value)
  %527 = lshr i32 %524, 16
  %528 = call float @dx.op.legacyF16ToF32(i32 131, i32 %527)  ; LegacyF16ToF32(value)
  %529 = extractvalue %dx.types.CBufRet.f32 %522, 2
  %530 = bitcast float %529 to i32
  %531 = and i32 %530, 65535
  %532 = call float @dx.op.legacyF16ToF32(i32 131, i32 %531)  ; LegacyF16ToF32(value)
  %533 = lshr i32 %530, 16
  %534 = call float @dx.op.legacyF16ToF32(i32 131, i32 %533)  ; LegacyF16ToF32(value)
  %535 = and i32 %125, 16
  %536 = icmp ne i32 %535, 0
  %537 = fcmp fast ogt float %526, 0.000000e+00
  %538 = fcmp fast ogt float %528, 0.000000e+00
  %539 = and i1 %537, %538
  %540 = fcmp fast ogt float %532, 0.000000e+00
  br i1 %539, label %541, label %601

; <label>:541                                     ; preds = %521
  br i1 %540, label %542, label %550

; <label>:542                                     ; preds = %541
  %543 = fmul fast float %528, %22
  %544 = fmul fast float %526, %21
  %545 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %12, float %544, float %543, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %546 = extractvalue %dx.types.ResRet.f32 %545, 0
  %547 = fsub fast float 1.000000e+00, %546
  %548 = select i1 %536, float %547, float %546
  %549 = fmul fast float %548, %532
  br label %550

; <label>:550                                     ; preds = %542, %541
  %551 = phi float [ %549, %542 ], [ 0.000000e+00, %541 ]
  %552 = fadd fast float %551, %534
  %553 = call float @dx.op.unary.f32(i32 7, float %552)  ; Saturate(value)
  br i1 %540, label %554, label %564

; <label>:554                                     ; preds = %550
  %555 = fmul fast float %528, %22
  %556 = fsub fast float 1.000000e+00, %21
  %557 = fmul fast float %526, %556
  %558 = fsub fast float 1.000000e+00, %557
  %559 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %12, float %558, float %555, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %560 = extractvalue %dx.types.ResRet.f32 %559, 1
  %561 = fsub fast float 1.000000e+00, %560
  %562 = select i1 %536, float %561, float %560
  %563 = fmul fast float %562, %532
  br label %564

; <label>:564                                     ; preds = %554, %550
  %565 = phi float [ %563, %554 ], [ 0.000000e+00, %550 ]
  %566 = fadd fast float %565, %534
  %567 = call float @dx.op.unary.f32(i32 7, float %566)  ; Saturate(value)
  %568 = fmul fast float %567, %553
  br i1 %540, label %569, label %581

; <label>:569                                     ; preds = %564
  %570 = fsub fast float 1.000000e+00, %22
  %571 = fmul fast float %528, %570
  %572 = fsub fast float 1.000000e+00, %571
  %573 = fsub fast float 1.000000e+00, %21
  %574 = fmul fast float %526, %573
  %575 = fsub fast float 1.000000e+00, %574
  %576 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %12, float %575, float %572, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %577 = extractvalue %dx.types.ResRet.f32 %576, 2
  %578 = fsub fast float 1.000000e+00, %577
  %579 = select i1 %536, float %578, float %577
  %580 = fmul fast float %579, %532
  br label %581

; <label>:581                                     ; preds = %569, %564
  %582 = phi float [ %580, %569 ], [ 0.000000e+00, %564 ]
  %583 = fadd fast float %582, %534
  %584 = call float @dx.op.unary.f32(i32 7, float %583)  ; Saturate(value)
  %585 = fmul fast float %568, %584
  br i1 %540, label %586, label %596

; <label>:586                                     ; preds = %581
  %587 = fsub fast float 1.000000e+00, %22
  %588 = fmul fast float %528, %587
  %589 = fsub fast float 1.000000e+00, %588
  %590 = fmul fast float %526, %21
  %591 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %12, float %590, float %589, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %592 = extractvalue %dx.types.ResRet.f32 %591, 3
  %593 = fsub fast float 1.000000e+00, %592
  %594 = select i1 %536, float %593, float %592
  %595 = fmul fast float %594, %532
  br label %596

; <label>:596                                     ; preds = %586, %581
  %597 = phi float [ %595, %586 ], [ 0.000000e+00, %581 ]
  %598 = fadd fast float %597, %534
  %599 = call float @dx.op.unary.f32(i32 7, float %598)  ; Saturate(value)
  %600 = fmul fast float %585, %599
  br label %612

; <label>:601                                     ; preds = %521
  br i1 %540, label %602, label %608

; <label>:602                                     ; preds = %601
  %603 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %12, float %21, float %22, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %604 = extractvalue %dx.types.ResRet.f32 %603, 0
  %605 = fsub fast float 1.000000e+00, %604
  %606 = select i1 %536, float %605, float %604
  %607 = fmul fast float %606, %532
  br label %608

; <label>:608                                     ; preds = %602, %601
  %609 = phi float [ %607, %602 ], [ 0.000000e+00, %601 ]
  %610 = fadd fast float %609, %534
  %611 = call float @dx.op.unary.f32(i32 7, float %610)  ; Saturate(value)
  br label %612

; <label>:612                                     ; preds = %608, %596
  %613 = phi float [ %600, %596 ], [ %611, %608 ]
  %614 = fmul fast float %613, %518
  br label %615

; <label>:615                                     ; preds = %612, %517
  %616 = phi float [ %614, %612 ], [ %518, %517 ]
  %617 = call float @dx.op.binary.f32(i32 35, float %616, float 0.000000e+00)  ; FMax(a,b)
  %618 = fcmp fast oeq float %617, 0.000000e+00
  br i1 %618, label %619, label %620, !dx.controlflow.hints !53

; <label>:619                                     ; preds = %615
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %620

; <label>:620                                     ; preds = %619, %615
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %621 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %13, float %19, float %20, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %622 = extractvalue %dx.types.ResRet.f32 %621, 0
  %623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %624 = extractvalue %dx.types.CBufRet.f32 %623, 3
  %625 = bitcast float %624 to i32
  %626 = and i32 %625, 65535
  %627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %626)  ; LegacyF16ToF32(value)
  %628 = fcmp fast une float %627, 0.000000e+00
  %629 = select i1 %628, float 0.000000e+00, float 1.000000e+00
  %630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %631 = extractvalue %dx.types.CBufRet.f32 %630, 3
  %632 = fmul fast float %631, %622
  %633 = fmul fast float %632, %629
  %634 = fsub fast float 1.000000e+00, %633
  %635 = fmul fast float %634, %105
  %636 = fmul fast float %634, %113
  %637 = fmul fast float %634, %121
  %638 = extractvalue %dx.types.CBufRet.f32 %630, 0
  %639 = extractvalue %dx.types.CBufRet.f32 %630, 1
  %640 = extractvalue %dx.types.CBufRet.f32 %630, 2
  %641 = fmul fast float %638, %632
  %642 = fmul fast float %639, %632
  %643 = fmul fast float %640, %632
  %644 = fadd fast float %635, %641
  %645 = fadd fast float %636, %642
  %646 = fadd fast float %637, %643
  %647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %648 = extractvalue %dx.types.CBufRet.f32 %647, 2
  %649 = fcmp fast ogt float %648, 0.000000e+00
  br i1 %649, label %650, label %716, !dx.controlflow.hints !54

; <label>:650                                     ; preds = %620
  %651 = fcmp fast oeq float %648, 2.000000e+00
  br i1 %651, label %652, label %704, !dx.controlflow.hints !55

; <label>:652                                     ; preds = %650
  %653 = fcmp fast ole float %644, 0x3F69A5C380000000
  %654 = fcmp fast ole float %645, 0x3F69A5C380000000
  %655 = fcmp fast ole float %646, 0x3F69A5C380000000
  %656 = fmul fast float %644, 0x4029D70A40000000
  %657 = fmul fast float %645, 0x4029D70A40000000
  %658 = fmul fast float %646, 0x4029D70A40000000
  %659 = call float @dx.op.unary.f32(i32 23, float %644)  ; Log(value)
  %660 = call float @dx.op.unary.f32(i32 23, float %645)  ; Log(value)
  %661 = call float @dx.op.unary.f32(i32 23, float %646)  ; Log(value)
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
  %705 = call float @dx.op.dot3.f32(i32 55, float %644, float %645, float %646, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %706 = extractvalue %dx.types.CBufRet.f32 %647, 3
  %707 = fsub fast float %644, %705
  %708 = fsub fast float %645, %705
  %709 = fsub fast float %646, %705
  %710 = fmul fast float %706, %707
  %711 = fmul fast float %706, %708
  %712 = fmul fast float %706, %709
  %713 = fadd fast float %710, %705
  %714 = fadd fast float %711, %705
  %715 = fadd fast float %712, %705
  br label %716

; <label>:716                                     ; preds = %704, %652, %620
  %717 = phi float [ %687, %652 ], [ %713, %704 ], [ %644, %620 ]
  %718 = phi float [ %695, %652 ], [ %714, %704 ], [ %645, %620 ]
  %719 = phi float [ %703, %652 ], [ %715, %704 ], [ %646, %620 ]
  %720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %721 = extractvalue %dx.types.CBufRet.f32 %720, 0
  %722 = fcmp fast une float %721, 0.000000e+00
  br i1 %722, label %723, label %897, !dx.controlflow.hints !56

; <label>:723                                     ; preds = %716
  %724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %725 = extractvalue %dx.types.CBufRet.f32 %724, 0
  %726 = extractvalue %dx.types.CBufRet.f32 %724, 1
  %727 = fsub fast float %37, %725
  %728 = fsub fast float %38, %726
  %729 = extractvalue %dx.types.CBufRet.f32 %724, 2
  %730 = extractvalue %dx.types.CBufRet.f32 %724, 3
  %731 = fmul fast float %727, %729
  %732 = fmul fast float %728, %730
  %733 = call float @dx.op.unary.f32(i32 6, float %721)  ; FAbs(value)
  %734 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %14, float %731, float %732, float undef, float undef, i32 0, i32 0, i32 undef, float %733)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %735 = extractvalue %dx.types.ResRet.f32 %734, 0
  %736 = extractvalue %dx.types.ResRet.f32 %734, 1
  %737 = extractvalue %dx.types.ResRet.f32 %734, 2
  %738 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %739 = extractvalue %dx.types.CBufRet.i32 %738, 3
  %740 = and i32 %739, 3
  %741 = icmp ne i32 %740, 0
  %742 = and i32 %739, 4
  %743 = icmp eq i32 %742, 0
  %744 = and i1 %741, %743
  br i1 %744, label %745, label %789

; <label>:745                                     ; preds = %723
  %746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %747 = extractvalue %dx.types.CBufRet.f32 %746, 0
  %748 = fcmp fast oge float %736, %747
  %749 = zext i1 %748 to i32
  br i1 %748, label %750, label %789

; <label>:750                                     ; preds = %745
  %751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %752 = extractvalue %dx.types.CBufRet.f32 %751, 3
  %753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %754 = extractvalue %dx.types.CBufRet.f32 %753, 2
  %755 = fcmp fast ogt float %754, 0.000000e+00
  br i1 %755, label %756, label %764, !dx.controlflow.hints !57

; <label>:756                                     ; preds = %750
  %757 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %736, float 0.000000e+00, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %758 = extractvalue %dx.types.ResRet.f32 %757, 0
  %759 = extractvalue %dx.types.ResRet.f32 %757, 1
  %760 = extractvalue %dx.types.ResRet.f32 %757, 2
  %761 = fcmp fast ogt float %754, 1.500000e+00
  %762 = select i1 %761, float %758, float %759
  %763 = select i1 %761, float %758, float %760
  br label %782

; <label>:764                                     ; preds = %750
  %765 = call float @dx.op.unary.f32(i32 7, float %736)  ; Saturate(value)
  %766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 238)  ; CBufferLoadLegacy(handle,regIndex)
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
  %796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %797 = extractvalue %dx.types.CBufRet.f32 %796, 0
  %798 = extractvalue %dx.types.CBufRet.f32 %796, 1
  %799 = extractvalue %dx.types.CBufRet.f32 %796, 2
  %800 = call float @dx.op.dot3.f32(i32 55, float %790, float %791, float %792, float %797, float %798, float %799)  ; Dot3(ax,ay,az,bx,by,bz)
  %801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %802 = extractvalue %dx.types.CBufRet.f32 %801, 0
  %803 = extractvalue %dx.types.CBufRet.f32 %801, 1
  %804 = extractvalue %dx.types.CBufRet.f32 %801, 2
  %805 = call float @dx.op.dot3.f32(i32 55, float %790, float %791, float %792, float %802, float %803, float %804)  ; Dot3(ax,ay,az,bx,by,bz)
  %806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %807 = extractvalue %dx.types.CBufRet.f32 %806, 0
  %808 = extractvalue %dx.types.CBufRet.f32 %806, 1
  %809 = extractvalue %dx.types.CBufRet.f32 %806, 2
  %810 = call float @dx.op.dot3.f32(i32 55, float %790, float %791, float %792, float %807, float %808, float %809)  ; Dot3(ax,ay,az,bx,by,bz)
  %811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
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
  %831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %832 = extractvalue %dx.types.CBufRet.f32 %831, 0
  %833 = extractvalue %dx.types.CBufRet.f32 %831, 1
  %834 = extractvalue %dx.types.CBufRet.f32 %831, 2
  %835 = fmul fast float %832, %828
  %836 = fmul fast float %833, %829
  %837 = fmul fast float %834, %830
  %838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %839 = extractvalue %dx.types.CBufRet.f32 %838, 0
  %840 = extractvalue %dx.types.CBufRet.f32 %838, 1
  %841 = extractvalue %dx.types.CBufRet.f32 %838, 2
  %842 = fadd fast float %835, %839
  %843 = fadd fast float %836, %840
  %844 = fadd fast float %837, %841
  %845 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %14, float %842, float %843, float %844, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  %879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
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
  %922 = fdiv fast float %37, %919
  %923 = fdiv fast float %38, %921
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
  %943 = fmul fast float %942, %617
  br label %944

; <label>:944                                     ; preds = %941, %903, %897
  %945 = phi float [ %943, %941 ], [ %617, %903 ], [ %617, %897 ]
  %946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %947 = extractvalue %dx.types.CBufRet.f32 %946, 3
  %948 = fcmp fast ogt float %947, 0.000000e+00
  br i1 %948, label %949, label %1032, !dx.controlflow.hints !60

; <label>:949                                     ; preds = %944
  %950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %951 = extractvalue %dx.types.CBufRet.f32 %950, 2
  %952 = extractvalue %dx.types.CBufRet.f32 %950, 3
  %953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %954 = extractvalue %dx.types.CBufRet.f32 %953, 3
  %955 = fmul fast float %954, 1.000000e+01
  %956 = call float @dx.op.unary.f32(i32 27, float %955)  ; Round_ni(value)
  %957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %958 = extractvalue %dx.types.CBufRet.f32 %957, 0
  %959 = extractvalue %dx.types.CBufRet.f32 %957, 1
  %960 = fmul fast float %958, %37
  %961 = fmul fast float %959, %38
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
  %1003 = fmul fast float %1002, %37
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
  %1037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1038 = extractvalue %dx.types.CBufRet.f32 %1037, 0
  %1039 = extractvalue %dx.types.CBufRet.f32 %1037, 1
  %1040 = extractvalue %dx.types.CBufRet.f32 %1037, 2
  %1041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1042 = extractvalue %dx.types.CBufRet.f32 %1041, 0
  %1043 = extractvalue %dx.types.CBufRet.f32 %1041, 1
  %1044 = extractvalue %dx.types.CBufRet.f32 %1041, 2
  %1045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1046 = extractvalue %dx.types.CBufRet.f32 %1045, 0
  %1047 = extractvalue %dx.types.CBufRet.f32 %1045, 1
  %1048 = extractvalue %dx.types.CBufRet.f32 %1045, 2
  %1049 = fmul fast float %1038, %1033
  %1050 = call float @dx.op.tertiary.f32(i32 46, float %1039, float %1034, float %1049)  ; FMad(a,b,c)
  %1051 = call float @dx.op.tertiary.f32(i32 46, float %1040, float %1035, float %1050)  ; FMad(a,b,c)
  %1052 = fmul fast float %1042, %1033
  %1053 = call float @dx.op.tertiary.f32(i32 46, float %1043, float %1034, float %1052)  ; FMad(a,b,c)
  %1054 = call float @dx.op.tertiary.f32(i32 46, float %1044, float %1035, float %1053)  ; FMad(a,b,c)
  %1055 = fmul fast float %1046, %1033
  %1056 = call float @dx.op.tertiary.f32(i32 46, float %1047, float %1034, float %1055)  ; FMad(a,b,c)
  %1057 = call float @dx.op.tertiary.f32(i32 46, float %1048, float %1035, float %1056)  ; FMad(a,b,c)
  %1058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1059 = extractvalue %dx.types.CBufRet.f32 %1058, 0
  %1060 = bitcast float %1059 to i32
  %1061 = and i32 %1060, 128
  %1062 = icmp eq i32 %1061, 0
  br i1 %1062, label %1077, label %1063

; <label>:1063                                    ; preds = %1032
  %1064 = call float @dx.op.unary.f32(i32 24, float %1051)  ; Sqrt(value)
  %1065 = call float @dx.op.unary.f32(i32 24, float %1054)  ; Sqrt(value)
  %1066 = call float @dx.op.unary.f32(i32 24, float %1057)  ; Sqrt(value)
  %1067 = fmul fast float %1064, 9.687500e-01
  %1068 = fmul fast float %1065, 9.687500e-01
  %1069 = fmul fast float %1066, 9.687500e-01
  %1070 = fadd fast float %1067, 1.562500e-02
  %1071 = fadd fast float %1068, 1.562500e-02
  %1072 = fadd fast float %1069, 1.562500e-02
  %1073 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %14, float %1070, float %1071, float %1072, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1074 = extractvalue %dx.types.ResRet.f32 %1073, 0
  %1075 = extractvalue %dx.types.ResRet.f32 %1073, 1
  %1076 = extractvalue %dx.types.ResRet.f32 %1073, 2
  br label %1364

; <label>:1077                                    ; preds = %1032
  %1078 = and i32 %1060, 127
  switch i32 %1078, label %1364 [
    i32 1, label %1079
    i32 2, label %1079
    i32 0, label %1079
    i32 3, label %1109
    i32 4, label %1230
  ]

; <label>:1079                                    ; preds = %1077, %1077, %1077
  %1080 = call float @dx.op.unary.f32(i32 7, float %1051)  ; Saturate(value)
  %1081 = call float @dx.op.unary.f32(i32 7, float %1054)  ; Saturate(value)
  %1082 = call float @dx.op.unary.f32(i32 7, float %1057)  ; Saturate(value)
  %1083 = call float @dx.op.unary.f32(i32 23, float %1080)  ; Log(value)
  %1084 = call float @dx.op.unary.f32(i32 23, float %1081)  ; Log(value)
  %1085 = call float @dx.op.unary.f32(i32 23, float %1082)  ; Log(value)
  %1086 = fmul fast float %1083, 0x3FDAAAAAA0000000
  %1087 = fmul fast float %1084, 0x3FDAAAAAA0000000
  %1088 = fmul fast float %1085, 0x3FDAAAAAA0000000
  %1089 = call float @dx.op.unary.f32(i32 21, float %1086)  ; Exp(value)
  %1090 = call float @dx.op.unary.f32(i32 21, float %1087)  ; Exp(value)
  %1091 = call float @dx.op.unary.f32(i32 21, float %1088)  ; Exp(value)
  %1092 = fmul fast float %1089, 0x3FF0E147A0000000
  %1093 = fmul fast float %1090, 0x3FF0E147A0000000
  %1094 = fmul fast float %1091, 0x3FF0E147A0000000
  %1095 = fadd fast float %1092, 0xBFAC28F5C0000000
  %1096 = fadd fast float %1093, 0xBFAC28F5C0000000
  %1097 = fadd fast float %1094, 0xBFAC28F5C0000000
  %1098 = call float @dx.op.unary.f32(i32 7, float %1095)  ; Saturate(value)
  %1099 = call float @dx.op.unary.f32(i32 7, float %1096)  ; Saturate(value)
  %1100 = call float @dx.op.unary.f32(i32 7, float %1097)  ; Saturate(value)
  %1101 = extractvalue %dx.types.CBufRet.f32 %1058, 2
  %1102 = extractvalue %dx.types.CBufRet.f32 %1058, 3
  %1103 = fmul fast float %1101, %1098
  %1104 = fmul fast float %1101, %1099
  %1105 = fmul fast float %1101, %1100
  %1106 = fadd fast float %1103, %1102
  %1107 = fadd fast float %1104, %1102
  %1108 = fadd fast float %1105, %1102
  br label %1364

; <label>:1109                                    ; preds = %1077
  %1110 = fmul fast float %1051, 0x4163D57C00000000
  %1111 = fmul fast float %1054, 0x4163D57C00000000
  %1112 = fmul fast float %1057, 0x4163D57C00000000
  %1113 = fadd fast float %1110, 9.999980e+05
  %1114 = fadd fast float %1111, 9.999980e+05
  %1115 = fadd fast float %1112, 9.999980e+05
  %1116 = fmul fast float %1113, %1051
  %1117 = fmul fast float %1114, %1054
  %1118 = fmul fast float %1115, %1057
  %1119 = fadd fast float %1116, 0xC0AFE17A60000000
  %1120 = fadd fast float %1117, 0xC0AFE17A60000000
  %1121 = fadd fast float %1118, 0xC0AFE17A60000000
  %1122 = fmul fast float %1119, %1051
  %1123 = fmul fast float %1120, %1054
  %1124 = fmul fast float %1121, %1057
  %1125 = fmul fast float %1051, 0x40F753C340000000
  %1126 = fmul fast float %1054, 0x40F753C340000000
  %1127 = fmul fast float %1057, 0x40F753C340000000
  %1128 = fsub fast float 9.999990e+06, %1125
  %1129 = fsub fast float 9.999990e+06, %1126
  %1130 = fsub fast float 9.999990e+06, %1127
  %1131 = fmul fast float %1128, %1051
  %1132 = fmul fast float %1129, %1054
  %1133 = fmul fast float %1130, %1057
  %1134 = fadd fast float %1131, 0x4136D1DD80000000
  %1135 = fadd fast float %1132, 0x4136D1DD80000000
  %1136 = fadd fast float %1133, 0x4136D1DD80000000
  %1137 = fmul fast float %1134, %1051
  %1138 = fmul fast float %1135, %1054
  %1139 = fmul fast float %1136, %1057
  %1140 = fadd fast float %1137, 1.000000e+00
  %1141 = fadd fast float %1138, 1.000000e+00
  %1142 = fadd fast float %1139, 1.000000e+00
  %1143 = fdiv fast float %1122, %1140
  %1144 = fdiv fast float %1123, %1141
  %1145 = fdiv fast float %1124, %1142
  %1146 = call float @dx.op.unary.f32(i32 7, float %1143)  ; Saturate(value)
  %1147 = call float @dx.op.unary.f32(i32 7, float %1144)  ; Saturate(value)
  %1148 = call float @dx.op.unary.f32(i32 7, float %1145)  ; Saturate(value)
  %1149 = extractvalue %dx.types.CBufRet.f32 %1058, 1
  %1150 = fmul fast float %1146, 0x3FE413A920000000
  %1151 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %1147, float %1150)  ; FMad(a,b,c)
  %1152 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %1148, float %1151)  ; FMad(a,b,c)
  %1153 = fmul fast float %1146, 0x3FB1B089A0000000
  %1154 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %1147, float %1153)  ; FMad(a,b,c)
  %1155 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %1148, float %1154)  ; FMad(a,b,c)
  %1156 = fmul fast float %1146, 0x3F90CB2960000000
  %1157 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %1147, float %1156)  ; FMad(a,b,c)
  %1158 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %1148, float %1157)  ; FMad(a,b,c)
  %1159 = fmul fast float %1152, %1149
  %1160 = fmul fast float %1155, %1149
  %1161 = fmul fast float %1158, %1149
  %1162 = fmul fast float %1159, 0x3F847AE140000000
  %1163 = fmul fast float %1160, 0x3F847AE140000000
  %1164 = fmul fast float %1161, 0x3F847AE140000000
  %1165 = fmul fast float %1159, 0x40B4D2F520000000
  %1166 = fmul fast float %1160, 0x40B4D2F520000000
  %1167 = fmul fast float %1161, 0x40B4D2F520000000
  %1168 = fadd fast float %1165, 0x41869ECF20000000
  %1169 = fadd fast float %1166, 0x41869ECF20000000
  %1170 = fadd fast float %1167, 0x41869ECF20000000
  %1171 = fmul fast float %1168, %1162
  %1172 = fmul fast float %1169, %1163
  %1173 = fmul fast float %1170, %1164
  %1174 = fadd fast float %1171, 0x417BB79C60000000
  %1175 = fadd fast float %1172, 0x417BB79C60000000
  %1176 = fadd fast float %1173, 0x417BB79C60000000
  %1177 = fmul fast float %1174, %1162
  %1178 = fmul fast float %1175, %1163
  %1179 = fmul fast float %1176, %1164
  %1180 = fadd fast float %1177, 0x41218DE180000000
  %1181 = fadd fast float %1178, 0x41218DE180000000
  %1182 = fadd fast float %1179, 0x41218DE180000000
  %1183 = fmul fast float %1180, %1162
  %1184 = fmul fast float %1181, %1163
  %1185 = fmul fast float %1182, %1164
  %1186 = fadd fast float %1183, 0x4077F174E0000000
  %1187 = fadd fast float %1184, 0x4077F174E0000000
  %1188 = fadd fast float %1185, 0x4077F174E0000000
  %1189 = fmul fast float %1186, %1162
  %1190 = fmul fast float %1187, %1163
  %1191 = fmul fast float %1188, %1164
  %1192 = fadd fast float %1189, 0x3F3FF79B80000000
  %1193 = fadd fast float %1190, 0x3F3FF79B80000000
  %1194 = fadd fast float %1191, 0x3F3FF79B80000000
  %1195 = fmul fast float %1159, 0x412442D320000000
  %1196 = fmul fast float %1160, 0x412442D320000000
  %1197 = fmul fast float %1161, 0x412442D320000000
  %1198 = fadd fast float %1195, 0x419385D5C0000000
  %1199 = fadd fast float %1196, 0x419385D5C0000000
  %1200 = fadd fast float %1197, 0x419385D5C0000000
  %1201 = fmul fast float %1198, %1162
  %1202 = fmul fast float %1199, %1163
  %1203 = fmul fast float %1200, %1164
  %1204 = fadd fast float %1201, 4.182885e+06
  %1205 = fadd fast float %1202, 4.182885e+06
  %1206 = fadd fast float %1203, 4.182885e+06
  %1207 = fmul fast float %1204, %1162
  %1208 = fmul fast float %1205, %1163
  %1209 = fmul fast float %1206, %1164
  %1210 = fadd fast float %1207, 0x40C4D633C0000000
  %1211 = fadd fast float %1208, 0x40C4D633C0000000
  %1212 = fadd fast float %1209, 0x40C4D633C0000000
  %1213 = fmul fast float %1210, %1162
  %1214 = fmul fast float %1211, %1163
  %1215 = fmul fast float %1212, %1164
  %1216 = fadd fast float %1213, 1.000000e+00
  %1217 = fadd fast float %1214, 1.000000e+00
  %1218 = fadd fast float %1215, 1.000000e+00
  %1219 = fdiv fast float %1192, %1216
  %1220 = fdiv fast float %1193, %1217
  %1221 = fdiv fast float %1194, %1218
  %1222 = extractvalue %dx.types.CBufRet.f32 %1058, 2
  %1223 = extractvalue %dx.types.CBufRet.f32 %1058, 3
  %1224 = fmul fast float %1222, %1219
  %1225 = fmul fast float %1222, %1220
  %1226 = fmul fast float %1222, %1221
  %1227 = fadd fast float %1224, %1223
  %1228 = fadd fast float %1225, %1223
  %1229 = fadd fast float %1226, %1223
  br label %1364

; <label>:1230                                    ; preds = %1077
  %1231 = fmul fast float %1051, 0x4163D57C00000000
  %1232 = fmul fast float %1054, 0x4163D57C00000000
  %1233 = fmul fast float %1057, 0x4163D57C00000000
  %1234 = fadd fast float %1231, 9.999980e+05
  %1235 = fadd fast float %1232, 9.999980e+05
  %1236 = fadd fast float %1233, 9.999980e+05
  %1237 = fmul fast float %1234, %1051
  %1238 = fmul fast float %1235, %1054
  %1239 = fmul fast float %1236, %1057
  %1240 = fadd fast float %1237, 0xC0AFE17A60000000
  %1241 = fadd fast float %1238, 0xC0AFE17A60000000
  %1242 = fadd fast float %1239, 0xC0AFE17A60000000
  %1243 = fmul fast float %1240, %1051
  %1244 = fmul fast float %1241, %1054
  %1245 = fmul fast float %1242, %1057
  %1246 = fmul fast float %1051, 0x40F753C340000000
  %1247 = fmul fast float %1054, 0x40F753C340000000
  %1248 = fmul fast float %1057, 0x40F753C340000000
  %1249 = fsub fast float 9.999990e+06, %1246
  %1250 = fsub fast float 9.999990e+06, %1247
  %1251 = fsub fast float 9.999990e+06, %1248
  %1252 = fmul fast float %1249, %1051
  %1253 = fmul fast float %1250, %1054
  %1254 = fmul fast float %1251, %1057
  %1255 = fadd fast float %1252, 0x4136D1DD80000000
  %1256 = fadd fast float %1253, 0x4136D1DD80000000
  %1257 = fadd fast float %1254, 0x4136D1DD80000000
  %1258 = fmul fast float %1255, %1051
  %1259 = fmul fast float %1256, %1054
  %1260 = fmul fast float %1257, %1057
  %1261 = fadd fast float %1258, 1.000000e+00
  %1262 = fadd fast float %1259, 1.000000e+00
  %1263 = fadd fast float %1260, 1.000000e+00
  %1264 = fdiv fast float %1243, %1261
  %1265 = fdiv fast float %1244, %1262
  %1266 = fdiv fast float %1245, %1263
  %1267 = call float @dx.op.unary.f32(i32 7, float %1264)  ; Saturate(value)
  %1268 = call float @dx.op.unary.f32(i32 7, float %1265)  ; Saturate(value)
  %1269 = call float @dx.op.unary.f32(i32 7, float %1266)  ; Saturate(value)
  %1270 = extractvalue %dx.types.CBufRet.f32 %1058, 1
  %1271 = fmul fast float %1267, 0x3FEA519BC0000000
  %1272 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %1268, float %1271)  ; FMad(a,b,c)
  %1273 = fmul fast float %1267, 0x3FA0FED480000000
  %1274 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %1268, float %1273)  ; FMad(a,b,c)
  %1275 = fmul fast float %1267, 0x3F917E1C00000000
  %1276 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %1268, float %1275)  ; FMad(a,b,c)
  %1277 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %1269, float %1276)  ; FMad(a,b,c)
  %1278 = call float @dx.op.binary.f32(i32 35, float %1267, float %1268)  ; FMax(a,b)
  %1279 = call float @dx.op.binary.f32(i32 35, float %1278, float %1269)  ; FMax(a,b)
  %1280 = fadd fast float %1279, -1.000000e+00
  %1281 = fmul fast float %1280, 2.500000e-01
  %1282 = call float @dx.op.unary.f32(i32 7, float %1281)  ; Saturate(value)
  %1283 = fsub fast float 1.000000e+00, %1282
  %1284 = fmul fast float %1283, %1272
  %1285 = fmul fast float %1283, %1274
  %1286 = fmul fast float %1283, %1277
  %1287 = fmul fast float %1282, %1267
  %1288 = fmul fast float %1282, %1268
  %1289 = fmul fast float %1282, %1269
  %1290 = fadd fast float %1284, %1287
  %1291 = fadd fast float %1285, %1288
  %1292 = fadd fast float %1286, %1289
  %1293 = fmul fast float %1290, %1270
  %1294 = fmul fast float %1291, %1270
  %1295 = fmul fast float %1292, %1270
  %1296 = fmul fast float %1293, 0x3F847AE140000000
  %1297 = fmul fast float %1294, 0x3F847AE140000000
  %1298 = fmul fast float %1295, 0x3F847AE140000000
  %1299 = fmul fast float %1293, 0x40B4D2F520000000
  %1300 = fmul fast float %1294, 0x40B4D2F520000000
  %1301 = fmul fast float %1295, 0x40B4D2F520000000
  %1302 = fadd fast float %1299, 0x41869ECF20000000
  %1303 = fadd fast float %1300, 0x41869ECF20000000
  %1304 = fadd fast float %1301, 0x41869ECF20000000
  %1305 = fmul fast float %1302, %1296
  %1306 = fmul fast float %1303, %1297
  %1307 = fmul fast float %1304, %1298
  %1308 = fadd fast float %1305, 0x417BB79C60000000
  %1309 = fadd fast float %1306, 0x417BB79C60000000
  %1310 = fadd fast float %1307, 0x417BB79C60000000
  %1311 = fmul fast float %1308, %1296
  %1312 = fmul fast float %1309, %1297
  %1313 = fmul fast float %1310, %1298
  %1314 = fadd fast float %1311, 0x41218DE180000000
  %1315 = fadd fast float %1312, 0x41218DE180000000
  %1316 = fadd fast float %1313, 0x41218DE180000000
  %1317 = fmul fast float %1314, %1296
  %1318 = fmul fast float %1315, %1297
  %1319 = fmul fast float %1316, %1298
  %1320 = fadd fast float %1317, 0x4077F174E0000000
  %1321 = fadd fast float %1318, 0x4077F174E0000000
  %1322 = fadd fast float %1319, 0x4077F174E0000000
  %1323 = fmul fast float %1320, %1296
  %1324 = fmul fast float %1321, %1297
  %1325 = fmul fast float %1322, %1298
  %1326 = fadd fast float %1323, 0x3F3FF79B80000000
  %1327 = fadd fast float %1324, 0x3F3FF79B80000000
  %1328 = fadd fast float %1325, 0x3F3FF79B80000000
  %1329 = fmul fast float %1293, 0x412442D320000000
  %1330 = fmul fast float %1294, 0x412442D320000000
  %1331 = fmul fast float %1295, 0x412442D320000000
  %1332 = fadd fast float %1329, 0x419385D5C0000000
  %1333 = fadd fast float %1330, 0x419385D5C0000000
  %1334 = fadd fast float %1331, 0x419385D5C0000000
  %1335 = fmul fast float %1332, %1296
  %1336 = fmul fast float %1333, %1297
  %1337 = fmul fast float %1334, %1298
  %1338 = fadd fast float %1335, 4.182885e+06
  %1339 = fadd fast float %1336, 4.182885e+06
  %1340 = fadd fast float %1337, 4.182885e+06
  %1341 = fmul fast float %1338, %1296
  %1342 = fmul fast float %1339, %1297
  %1343 = fmul fast float %1340, %1298
  %1344 = fadd fast float %1341, 0x40C4D633C0000000
  %1345 = fadd fast float %1342, 0x40C4D633C0000000
  %1346 = fadd fast float %1343, 0x40C4D633C0000000
  %1347 = fmul fast float %1344, %1296
  %1348 = fmul fast float %1345, %1297
  %1349 = fmul fast float %1346, %1298
  %1350 = fadd fast float %1347, 1.000000e+00
  %1351 = fadd fast float %1348, 1.000000e+00
  %1352 = fadd fast float %1349, 1.000000e+00
  %1353 = fdiv fast float %1326, %1350
  %1354 = fdiv fast float %1327, %1351
  %1355 = fdiv fast float %1328, %1352
  %1356 = extractvalue %dx.types.CBufRet.f32 %1058, 2
  %1357 = extractvalue %dx.types.CBufRet.f32 %1058, 3
  %1358 = fmul fast float %1356, %1353
  %1359 = fmul fast float %1356, %1354
  %1360 = fmul fast float %1356, %1355
  %1361 = fadd fast float %1358, %1357
  %1362 = fadd fast float %1359, %1357
  %1363 = fadd fast float %1360, %1357
  br label %1364

; <label>:1364                                    ; preds = %1230, %1109, %1079, %1077, %1063
  %1365 = phi float [ %1074, %1063 ], [ %1051, %1077 ], [ %1361, %1230 ], [ %1227, %1109 ], [ %1106, %1079 ]
  %1366 = phi float [ %1075, %1063 ], [ %1054, %1077 ], [ %1362, %1230 ], [ %1228, %1109 ], [ %1107, %1079 ]
  %1367 = phi float [ %1076, %1063 ], [ %1057, %1077 ], [ %1363, %1230 ], [ %1229, %1109 ], [ %1108, %1079 ]
  %1368 = fmul fast float %1365, %1036
  %1369 = fmul fast float %1366, %1036
  %1370 = fmul fast float %1367, %1036
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1368)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1369)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1370)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1036)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

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
!dx.viewIdState = !{!27}
!dx.entryPoints = !{!28}

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
!22 = !{!23, !24, !25, !26}
!23 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!24 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!25 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!26 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!27 = !{[24 x i32] [i32 22, i32 4, i32 15, i32 15, i32 0, i32 0, i32 7, i32 7, i32 7, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 7, i32 7]}
!28 = !{void ()* @ps_main, !"ps_main", !29, !4, null}
!29 = !{!30, !49, null}
!30 = !{!31, !34, !36, !37, !39, !41, !43, !45, !47}
!31 = !{i32 0, !"SV_Position", i8 9, i8 3, !32, i8 4, i32 1, i8 4, i32 0, i8 0, !33}
!32 = !{i32 0}
!33 = !{i32 3, i32 3}
!34 = !{i32 1, !"COLOR", i8 9, i8 0, !32, i8 2, i32 1, i8 4, i32 1, i8 0, !35}
!35 = !{i32 3, i32 15}
!36 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !32, i8 2, i32 1, i8 2, i32 2, i8 0, !33}
!37 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !38, i8 2, i32 1, i8 2, i32 2, i8 2, !33}
!38 = !{i32 2}
!39 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !40, i8 2, i32 1, i8 2, i32 3, i8 0, !33}
!40 = !{i32 3}
!41 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !42, i8 2, i32 1, i8 2, i32 3, i8 2, !33}
!42 = !{i32 4}
!43 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !44, i8 2, i32 1, i8 2, i32 4, i8 0, !33}
!44 = !{i32 5}
!45 = !{i32 7, !"TEXCOORD", i8 9, i8 0, !46, i8 2, i32 1, i8 2, i32 4, i8 2, !33}
!46 = !{i32 6}
!47 = !{i32 8, !"TEXCOORD", i8 9, i8 0, !48, i8 2, i32 1, i8 2, i32 5, i8 0, !33}
!48 = !{i32 7}
!49 = !{!50}
!50 = !{i32 0, !"SV_Target", i8 9, i8 16, !32, i8 0, i32 1, i8 4, i32 0, i8 0, !35}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 1}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
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

