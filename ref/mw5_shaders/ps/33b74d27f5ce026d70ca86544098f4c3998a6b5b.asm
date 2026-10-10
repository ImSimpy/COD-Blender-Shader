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
; TEXCOORD                 7     zw        5     NONE   float     zw
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 18789b2da1ed9b0285ace85924b6a515
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
;   [272 x i8] (type annotation not present)
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
;                                   texture     f32          2d      T6             t3     1
;                                   texture     f32          2d      T7             t4     1
;                                   texture     f32          2d      T8             t5     1
;                                   texture     f32          2d      T9             t6     1
;                                   texture     f32          3d     T10     t71,space2     1
;
;
; ViewId state:
;
; Number of inputs: 24, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23 }
;   output 1 depends on inputs: { 0, 1, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23 }
;   output 2 depends on inputs: { 0, 1, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23 }
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
%perObject = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 71, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 70, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 73, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 74, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %43 = extractvalue %dx.types.CBufRet.f32 %42, 3
  %44 = fcmp fast ogt float %43, 0.000000e+00
  br i1 %44, label %45, label %95, !dx.controlflow.hints !54

; <label>:45                                      ; preds = %0
  %46 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %47 = extractvalue %dx.types.CBufRet.f32 %46, 3
  %48 = fmul fast float %47, 1.000000e+01
  %49 = call float @dx.op.unary.f32(i32 27, float %48)  ; Round_ni(value)
  %50 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.f32 %50, 0
  %52 = extractvalue %dx.types.CBufRet.f32 %50, 1
  %53 = fmul fast float %51, %40
  %54 = fmul fast float %52, %41
  %55 = call float @dx.op.unary.f32(i32 27, float %53)  ; Round_ni(value)
  %56 = call float @dx.op.unary.f32(i32 27, float %54)  ; Round_ni(value)
  %57 = fmul fast float %49, 0x4002B851E0000000
  %58 = call float @dx.op.unary.f32(i32 22, float %57)  ; Frc(value)
  %59 = fadd fast float %58, 0x3FB99999A0000000
  %60 = fadd fast float %59, %55
  %61 = fadd fast float %59, %56
  %62 = fmul fast float %60, 0x3FE1BEDF00000000
  %63 = call float @dx.op.unary.f32(i32 22, float %62)  ; Frc(value)
  %64 = fmul fast float %60, %63
  %65 = fadd fast float %64, %61
  %66 = fmul fast float %61, 0x3FD3BEBE20000000
  %67 = call float @dx.op.unary.f32(i32 22, float %66)  ; Frc(value)
  %68 = fmul fast float %61, %67
  %69 = fadd fast float %68, %60
  %70 = fmul fast float %65, %69
  %71 = call float @dx.op.unary.f32(i32 22, float %70)  ; Frc(value)
  %72 = extractvalue %dx.types.CBufRet.f32 %50, 3
  %73 = bitcast float %72 to i32
  %74 = and i32 %73, 255
  %75 = uitofp i32 %74 to float
  %76 = fmul fast float %71, 0x4085373340000000
  %77 = call float @dx.op.unary.f32(i32 22, float %76)  ; Frc(value)
  %78 = fmul fast float %75, 0x3F6CE9B6A0000000
  %79 = fcmp fast olt float %77, %78
  br i1 %79, label %80, label %95, !dx.controlflow.hints !55

; <label>:80                                      ; preds = %45
  %81 = fdiv fast float %77, %78
  %82 = fmul fast float %81, 2.000000e+00
  %83 = fadd fast float %82, -1.000000e+00
  %84 = lshr i32 %73, 8
  %85 = and i32 %84, 255
  %86 = uitofp i32 %85 to float
  %87 = call float @dx.op.unary.f32(i32 83, float %34)  ; DerivCoarseX(value)
  %88 = call float @dx.op.unary.f32(i32 83, float %35)  ; DerivCoarseX(value)
  %89 = fmul fast float %83, %87
  %90 = fmul fast float %89, %86
  %91 = fmul fast float %88, %83
  %92 = fmul fast float %91, %86
  %93 = fadd fast float %90, %34
  %94 = fadd fast float %92, %35
  br label %95

; <label>:95                                      ; preds = %80, %45, %0
  %96 = phi float [ %93, %80 ], [ %34, %45 ], [ %34, %0 ]
  %97 = phi float [ %94, %80 ], [ %35, %45 ], [ %35, %0 ]
  %98 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %99 = extractvalue %dx.types.Dimensions %98, 0
  %100 = sitofp i32 %99 to float
  %101 = extractvalue %dx.types.Dimensions %98, 1
  %102 = sitofp i32 %101 to float
  %103 = fdiv fast float 5.000000e-01, %100
  %104 = fdiv fast float 5.000000e-01, %102
  %105 = fsub fast float 1.000000e+00, %103
  %106 = call float @dx.op.binary.f32(i32 35, float %96, float %103)  ; FMax(a,b)
  %107 = call float @dx.op.binary.f32(i32 36, float %106, float %105)  ; FMin(a,b)
  %108 = fsub fast float 1.000000e+00, %104
  %109 = call float @dx.op.binary.f32(i32 35, float %97, float %104)  ; FMax(a,b)
  %110 = call float @dx.op.binary.f32(i32 36, float %109, float %108)  ; FMin(a,b)
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 3
  %113 = bitcast float %112 to i32
  %114 = and i32 %113, 1
  %115 = icmp ne i32 %114, 0
  %116 = select i1 %115, float %107, float %96
  %117 = and i32 %113, 2
  %118 = icmp ne i32 %117, 0
  %119 = select i1 %118, float %110, float %97
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 3
  %122 = bitcast float %121 to i32
  %123 = and i32 %122, 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %131, label %125, !dx.controlflow.hints !56

; <label>:125                                     ; preds = %95
  %126 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %8, %dx.types.Handle %12, float %116, float %119, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %127 = extractvalue %dx.types.ResRet.f32 %126, 0
  %128 = extractvalue %dx.types.ResRet.f32 %126, 1
  %129 = extractvalue %dx.types.ResRet.f32 %126, 2
  %130 = extractvalue %dx.types.ResRet.f32 %126, 3
  br label %139

; <label>:131                                     ; preds = %95
  %132 = call float @dx.op.unary.f32(i32 22, float %116)  ; Frc(value)
  %133 = call float @dx.op.unary.f32(i32 22, float %119)  ; Frc(value)
  %134 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %8, %dx.types.Handle %16, float %132, float %133, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %135 = extractvalue %dx.types.ResRet.f32 %134, 0
  %136 = extractvalue %dx.types.ResRet.f32 %134, 1
  %137 = extractvalue %dx.types.ResRet.f32 %134, 2
  %138 = extractvalue %dx.types.ResRet.f32 %134, 3
  br label %139

; <label>:139                                     ; preds = %131, %125
  %140 = phi float [ %127, %125 ], [ %135, %131 ]
  %141 = phi float [ %128, %125 ], [ %136, %131 ]
  %142 = phi float [ %129, %125 ], [ %137, %131 ]
  %143 = phi float [ %130, %125 ], [ %138, %131 ]
  %144 = and i32 %122, 8
  %145 = icmp ne i32 %144, 0
  %146 = select i1 %145, float 1.000000e+00, float %140
  %147 = select i1 %145, float 1.000000e+00, float %141
  %148 = select i1 %145, float 1.000000e+00, float %142
  %149 = select i1 %145, float %140, float %143
  %150 = fmul fast float %146, %36
  %151 = fmul fast float %147, %37
  %152 = fmul fast float %148, %38
  %153 = fmul fast float %149, %39
  %154 = lshr i32 %122, 4
  %155 = lshr i32 %122, 9
  %156 = and i32 %155, 1
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %252, label %158

; <label>:158                                     ; preds = %139
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.f32 %159, 3
  %161 = bitcast float %160 to i32
  %162 = and i32 %161, 65535
  %163 = call float @dx.op.legacyF16ToF32(i32 131, i32 %162)  ; LegacyF16ToF32(value)
  %164 = lshr i32 %161, 16
  %165 = call float @dx.op.legacyF16ToF32(i32 131, i32 %164)  ; LegacyF16ToF32(value)
  %166 = extractvalue %dx.types.CBufRet.f32 %159, 2
  %167 = bitcast float %166 to i32
  %168 = and i32 %167, 65535
  %169 = call float @dx.op.legacyF16ToF32(i32 131, i32 %168)  ; LegacyF16ToF32(value)
  %170 = lshr i32 %167, 16
  %171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %170)  ; LegacyF16ToF32(value)
  %172 = and i32 %154, 1
  %173 = icmp ne i32 %172, 0
  %174 = fcmp fast ogt float %163, 0.000000e+00
  %175 = fcmp fast ogt float %165, 0.000000e+00
  %176 = and i1 %174, %175
  %177 = fcmp fast ogt float %169, 0.000000e+00
  br i1 %176, label %178, label %238

; <label>:178                                     ; preds = %158
  br i1 %177, label %179, label %187

; <label>:179                                     ; preds = %178
  %180 = fmul fast float %165, %33
  %181 = fmul fast float %163, %32
  %182 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %13, float %181, float %180, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %183 = extractvalue %dx.types.ResRet.f32 %182, 0
  %184 = fsub fast float 1.000000e+00, %183
  %185 = select i1 %173, float %184, float %183
  %186 = fmul fast float %185, %169
  br label %187

; <label>:187                                     ; preds = %179, %178
  %188 = phi float [ %186, %179 ], [ 0.000000e+00, %178 ]
  %189 = fadd fast float %188, %171
  %190 = call float @dx.op.unary.f32(i32 7, float %189)  ; Saturate(value)
  br i1 %177, label %191, label %201

; <label>:191                                     ; preds = %187
  %192 = fmul fast float %165, %33
  %193 = fsub fast float 1.000000e+00, %32
  %194 = fmul fast float %163, %193
  %195 = fsub fast float 1.000000e+00, %194
  %196 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %13, float %195, float %192, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %197 = extractvalue %dx.types.ResRet.f32 %196, 1
  %198 = fsub fast float 1.000000e+00, %197
  %199 = select i1 %173, float %198, float %197
  %200 = fmul fast float %199, %169
  br label %201

; <label>:201                                     ; preds = %191, %187
  %202 = phi float [ %200, %191 ], [ 0.000000e+00, %187 ]
  %203 = fadd fast float %202, %171
  %204 = call float @dx.op.unary.f32(i32 7, float %203)  ; Saturate(value)
  %205 = fmul fast float %204, %190
  br i1 %177, label %206, label %218

; <label>:206                                     ; preds = %201
  %207 = fsub fast float 1.000000e+00, %33
  %208 = fmul fast float %165, %207
  %209 = fsub fast float 1.000000e+00, %208
  %210 = fsub fast float 1.000000e+00, %32
  %211 = fmul fast float %163, %210
  %212 = fsub fast float 1.000000e+00, %211
  %213 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %13, float %212, float %209, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %214 = extractvalue %dx.types.ResRet.f32 %213, 2
  %215 = fsub fast float 1.000000e+00, %214
  %216 = select i1 %173, float %215, float %214
  %217 = fmul fast float %216, %169
  br label %218

; <label>:218                                     ; preds = %206, %201
  %219 = phi float [ %217, %206 ], [ 0.000000e+00, %201 ]
  %220 = fadd fast float %219, %171
  %221 = call float @dx.op.unary.f32(i32 7, float %220)  ; Saturate(value)
  %222 = fmul fast float %205, %221
  br i1 %177, label %223, label %233

; <label>:223                                     ; preds = %218
  %224 = fsub fast float 1.000000e+00, %33
  %225 = fmul fast float %165, %224
  %226 = fsub fast float 1.000000e+00, %225
  %227 = fmul fast float %163, %32
  %228 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %13, float %227, float %226, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %229 = extractvalue %dx.types.ResRet.f32 %228, 3
  %230 = fsub fast float 1.000000e+00, %229
  %231 = select i1 %173, float %230, float %229
  %232 = fmul fast float %231, %169
  br label %233

; <label>:233                                     ; preds = %223, %218
  %234 = phi float [ %232, %223 ], [ 0.000000e+00, %218 ]
  %235 = fadd fast float %234, %171
  %236 = call float @dx.op.unary.f32(i32 7, float %235)  ; Saturate(value)
  %237 = fmul fast float %222, %236
  br label %249

; <label>:238                                     ; preds = %158
  br i1 %177, label %239, label %245

; <label>:239                                     ; preds = %238
  %240 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %13, float %32, float %33, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %241 = extractvalue %dx.types.ResRet.f32 %240, 0
  %242 = fsub fast float 1.000000e+00, %241
  %243 = select i1 %173, float %242, float %241
  %244 = fmul fast float %243, %169
  br label %245

; <label>:245                                     ; preds = %239, %238
  %246 = phi float [ %244, %239 ], [ 0.000000e+00, %238 ]
  %247 = fadd fast float %246, %171
  %248 = call float @dx.op.unary.f32(i32 7, float %247)  ; Saturate(value)
  br label %249

; <label>:249                                     ; preds = %245, %233
  %250 = phi float [ %237, %233 ], [ %248, %245 ]
  %251 = fmul fast float %250, %153
  br label %252

; <label>:252                                     ; preds = %249, %139
  %253 = phi float [ %251, %249 ], [ %153, %139 ]
  %254 = and i32 %155, 2
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %350, label %256

; <label>:256                                     ; preds = %252
  %257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %258 = extractvalue %dx.types.CBufRet.f32 %257, 3
  %259 = bitcast float %258 to i32
  %260 = and i32 %259, 65535
  %261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %260)  ; LegacyF16ToF32(value)
  %262 = lshr i32 %259, 16
  %263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %262)  ; LegacyF16ToF32(value)
  %264 = extractvalue %dx.types.CBufRet.f32 %257, 2
  %265 = bitcast float %264 to i32
  %266 = and i32 %265, 65535
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = lshr i32 %265, 16
  %269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %268)  ; LegacyF16ToF32(value)
  %270 = and i32 %154, 2
  %271 = icmp ne i32 %270, 0
  %272 = fcmp fast ogt float %261, 0.000000e+00
  %273 = fcmp fast ogt float %263, 0.000000e+00
  %274 = and i1 %272, %273
  %275 = fcmp fast ogt float %267, 0.000000e+00
  br i1 %274, label %276, label %336

; <label>:276                                     ; preds = %256
  br i1 %275, label %277, label %285

; <label>:277                                     ; preds = %276
  %278 = fmul fast float %263, %31
  %279 = fmul fast float %261, %30
  %280 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %13, float %279, float %278, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %281 = extractvalue %dx.types.ResRet.f32 %280, 0
  %282 = fsub fast float 1.000000e+00, %281
  %283 = select i1 %271, float %282, float %281
  %284 = fmul fast float %283, %267
  br label %285

; <label>:285                                     ; preds = %277, %276
  %286 = phi float [ %284, %277 ], [ 0.000000e+00, %276 ]
  %287 = fadd fast float %286, %269
  %288 = call float @dx.op.unary.f32(i32 7, float %287)  ; Saturate(value)
  br i1 %275, label %289, label %299

; <label>:289                                     ; preds = %285
  %290 = fmul fast float %263, %31
  %291 = fsub fast float 1.000000e+00, %30
  %292 = fmul fast float %261, %291
  %293 = fsub fast float 1.000000e+00, %292
  %294 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %13, float %293, float %290, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %295 = extractvalue %dx.types.ResRet.f32 %294, 1
  %296 = fsub fast float 1.000000e+00, %295
  %297 = select i1 %271, float %296, float %295
  %298 = fmul fast float %297, %267
  br label %299

; <label>:299                                     ; preds = %289, %285
  %300 = phi float [ %298, %289 ], [ 0.000000e+00, %285 ]
  %301 = fadd fast float %300, %269
  %302 = call float @dx.op.unary.f32(i32 7, float %301)  ; Saturate(value)
  %303 = fmul fast float %302, %288
  br i1 %275, label %304, label %316

; <label>:304                                     ; preds = %299
  %305 = fsub fast float 1.000000e+00, %31
  %306 = fmul fast float %263, %305
  %307 = fsub fast float 1.000000e+00, %306
  %308 = fsub fast float 1.000000e+00, %30
  %309 = fmul fast float %261, %308
  %310 = fsub fast float 1.000000e+00, %309
  %311 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %13, float %310, float %307, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %312 = extractvalue %dx.types.ResRet.f32 %311, 2
  %313 = fsub fast float 1.000000e+00, %312
  %314 = select i1 %271, float %313, float %312
  %315 = fmul fast float %314, %267
  br label %316

; <label>:316                                     ; preds = %304, %299
  %317 = phi float [ %315, %304 ], [ 0.000000e+00, %299 ]
  %318 = fadd fast float %317, %269
  %319 = call float @dx.op.unary.f32(i32 7, float %318)  ; Saturate(value)
  %320 = fmul fast float %303, %319
  br i1 %275, label %321, label %331

; <label>:321                                     ; preds = %316
  %322 = fsub fast float 1.000000e+00, %31
  %323 = fmul fast float %263, %322
  %324 = fsub fast float 1.000000e+00, %323
  %325 = fmul fast float %261, %30
  %326 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %13, float %325, float %324, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %327 = extractvalue %dx.types.ResRet.f32 %326, 3
  %328 = fsub fast float 1.000000e+00, %327
  %329 = select i1 %271, float %328, float %327
  %330 = fmul fast float %329, %267
  br label %331

; <label>:331                                     ; preds = %321, %316
  %332 = phi float [ %330, %321 ], [ 0.000000e+00, %316 ]
  %333 = fadd fast float %332, %269
  %334 = call float @dx.op.unary.f32(i32 7, float %333)  ; Saturate(value)
  %335 = fmul fast float %320, %334
  br label %347

; <label>:336                                     ; preds = %256
  br i1 %275, label %337, label %343

; <label>:337                                     ; preds = %336
  %338 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %13, float %30, float %31, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %339 = extractvalue %dx.types.ResRet.f32 %338, 0
  %340 = fsub fast float 1.000000e+00, %339
  %341 = select i1 %271, float %340, float %339
  %342 = fmul fast float %341, %267
  br label %343

; <label>:343                                     ; preds = %337, %336
  %344 = phi float [ %342, %337 ], [ 0.000000e+00, %336 ]
  %345 = fadd fast float %344, %269
  %346 = call float @dx.op.unary.f32(i32 7, float %345)  ; Saturate(value)
  br label %347

; <label>:347                                     ; preds = %343, %331
  %348 = phi float [ %335, %331 ], [ %346, %343 ]
  %349 = fmul fast float %348, %253
  br label %350

; <label>:350                                     ; preds = %347, %252
  %351 = phi float [ %349, %347 ], [ %253, %252 ]
  %352 = and i32 %155, 4
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %448, label %354

; <label>:354                                     ; preds = %350
  %355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %356 = extractvalue %dx.types.CBufRet.f32 %355, 3
  %357 = bitcast float %356 to i32
  %358 = and i32 %357, 65535
  %359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %358)  ; LegacyF16ToF32(value)
  %360 = lshr i32 %357, 16
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = extractvalue %dx.types.CBufRet.f32 %355, 2
  %363 = bitcast float %362 to i32
  %364 = and i32 %363, 65535
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = lshr i32 %363, 16
  %367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %366)  ; LegacyF16ToF32(value)
  %368 = and i32 %154, 4
  %369 = icmp ne i32 %368, 0
  %370 = fcmp fast ogt float %359, 0.000000e+00
  %371 = fcmp fast ogt float %361, 0.000000e+00
  %372 = and i1 %370, %371
  %373 = fcmp fast ogt float %365, 0.000000e+00
  br i1 %372, label %374, label %434

; <label>:374                                     ; preds = %354
  br i1 %373, label %375, label %383

; <label>:375                                     ; preds = %374
  %376 = fmul fast float %361, %29
  %377 = fmul fast float %359, %28
  %378 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %13, float %377, float %376, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %379 = extractvalue %dx.types.ResRet.f32 %378, 0
  %380 = fsub fast float 1.000000e+00, %379
  %381 = select i1 %369, float %380, float %379
  %382 = fmul fast float %381, %365
  br label %383

; <label>:383                                     ; preds = %375, %374
  %384 = phi float [ %382, %375 ], [ 0.000000e+00, %374 ]
  %385 = fadd fast float %384, %367
  %386 = call float @dx.op.unary.f32(i32 7, float %385)  ; Saturate(value)
  br i1 %373, label %387, label %397

; <label>:387                                     ; preds = %383
  %388 = fmul fast float %361, %29
  %389 = fsub fast float 1.000000e+00, %28
  %390 = fmul fast float %359, %389
  %391 = fsub fast float 1.000000e+00, %390
  %392 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %13, float %391, float %388, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %393 = extractvalue %dx.types.ResRet.f32 %392, 1
  %394 = fsub fast float 1.000000e+00, %393
  %395 = select i1 %369, float %394, float %393
  %396 = fmul fast float %395, %365
  br label %397

; <label>:397                                     ; preds = %387, %383
  %398 = phi float [ %396, %387 ], [ 0.000000e+00, %383 ]
  %399 = fadd fast float %398, %367
  %400 = call float @dx.op.unary.f32(i32 7, float %399)  ; Saturate(value)
  %401 = fmul fast float %400, %386
  br i1 %373, label %402, label %414

; <label>:402                                     ; preds = %397
  %403 = fsub fast float 1.000000e+00, %29
  %404 = fmul fast float %361, %403
  %405 = fsub fast float 1.000000e+00, %404
  %406 = fsub fast float 1.000000e+00, %28
  %407 = fmul fast float %359, %406
  %408 = fsub fast float 1.000000e+00, %407
  %409 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %13, float %408, float %405, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %410 = extractvalue %dx.types.ResRet.f32 %409, 2
  %411 = fsub fast float 1.000000e+00, %410
  %412 = select i1 %369, float %411, float %410
  %413 = fmul fast float %412, %365
  br label %414

; <label>:414                                     ; preds = %402, %397
  %415 = phi float [ %413, %402 ], [ 0.000000e+00, %397 ]
  %416 = fadd fast float %415, %367
  %417 = call float @dx.op.unary.f32(i32 7, float %416)  ; Saturate(value)
  %418 = fmul fast float %401, %417
  br i1 %373, label %419, label %429

; <label>:419                                     ; preds = %414
  %420 = fsub fast float 1.000000e+00, %29
  %421 = fmul fast float %361, %420
  %422 = fsub fast float 1.000000e+00, %421
  %423 = fmul fast float %359, %28
  %424 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %13, float %423, float %422, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %425 = extractvalue %dx.types.ResRet.f32 %424, 3
  %426 = fsub fast float 1.000000e+00, %425
  %427 = select i1 %369, float %426, float %425
  %428 = fmul fast float %427, %365
  br label %429

; <label>:429                                     ; preds = %419, %414
  %430 = phi float [ %428, %419 ], [ 0.000000e+00, %414 ]
  %431 = fadd fast float %430, %367
  %432 = call float @dx.op.unary.f32(i32 7, float %431)  ; Saturate(value)
  %433 = fmul fast float %418, %432
  br label %445

; <label>:434                                     ; preds = %354
  br i1 %373, label %435, label %441

; <label>:435                                     ; preds = %434
  %436 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %13, float %28, float %29, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %437 = extractvalue %dx.types.ResRet.f32 %436, 0
  %438 = fsub fast float 1.000000e+00, %437
  %439 = select i1 %369, float %438, float %437
  %440 = fmul fast float %439, %365
  br label %441

; <label>:441                                     ; preds = %435, %434
  %442 = phi float [ %440, %435 ], [ 0.000000e+00, %434 ]
  %443 = fadd fast float %442, %367
  %444 = call float @dx.op.unary.f32(i32 7, float %443)  ; Saturate(value)
  br label %445

; <label>:445                                     ; preds = %441, %429
  %446 = phi float [ %433, %429 ], [ %444, %441 ]
  %447 = fmul fast float %446, %351
  br label %448

; <label>:448                                     ; preds = %445, %350
  %449 = phi float [ %447, %445 ], [ %351, %350 ]
  %450 = and i32 %155, 8
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %546, label %452

; <label>:452                                     ; preds = %448
  %453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %454 = extractvalue %dx.types.CBufRet.f32 %453, 3
  %455 = bitcast float %454 to i32
  %456 = and i32 %455, 65535
  %457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %456)  ; LegacyF16ToF32(value)
  %458 = lshr i32 %455, 16
  %459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %458)  ; LegacyF16ToF32(value)
  %460 = extractvalue %dx.types.CBufRet.f32 %453, 2
  %461 = bitcast float %460 to i32
  %462 = and i32 %461, 65535
  %463 = call float @dx.op.legacyF16ToF32(i32 131, i32 %462)  ; LegacyF16ToF32(value)
  %464 = lshr i32 %461, 16
  %465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %464)  ; LegacyF16ToF32(value)
  %466 = and i32 %154, 8
  %467 = icmp ne i32 %466, 0
  %468 = fcmp fast ogt float %457, 0.000000e+00
  %469 = fcmp fast ogt float %459, 0.000000e+00
  %470 = and i1 %468, %469
  %471 = fcmp fast ogt float %463, 0.000000e+00
  br i1 %470, label %472, label %532

; <label>:472                                     ; preds = %452
  br i1 %471, label %473, label %481

; <label>:473                                     ; preds = %472
  %474 = fmul fast float %459, %27
  %475 = fmul fast float %457, %26
  %476 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %13, float %475, float %474, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %477 = extractvalue %dx.types.ResRet.f32 %476, 0
  %478 = fsub fast float 1.000000e+00, %477
  %479 = select i1 %467, float %478, float %477
  %480 = fmul fast float %479, %463
  br label %481

; <label>:481                                     ; preds = %473, %472
  %482 = phi float [ %480, %473 ], [ 0.000000e+00, %472 ]
  %483 = fadd fast float %482, %465
  %484 = call float @dx.op.unary.f32(i32 7, float %483)  ; Saturate(value)
  br i1 %471, label %485, label %495

; <label>:485                                     ; preds = %481
  %486 = fmul fast float %459, %27
  %487 = fsub fast float 1.000000e+00, %26
  %488 = fmul fast float %457, %487
  %489 = fsub fast float 1.000000e+00, %488
  %490 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %13, float %489, float %486, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %491 = extractvalue %dx.types.ResRet.f32 %490, 1
  %492 = fsub fast float 1.000000e+00, %491
  %493 = select i1 %467, float %492, float %491
  %494 = fmul fast float %493, %463
  br label %495

; <label>:495                                     ; preds = %485, %481
  %496 = phi float [ %494, %485 ], [ 0.000000e+00, %481 ]
  %497 = fadd fast float %496, %465
  %498 = call float @dx.op.unary.f32(i32 7, float %497)  ; Saturate(value)
  %499 = fmul fast float %498, %484
  br i1 %471, label %500, label %512

; <label>:500                                     ; preds = %495
  %501 = fsub fast float 1.000000e+00, %27
  %502 = fmul fast float %459, %501
  %503 = fsub fast float 1.000000e+00, %502
  %504 = fsub fast float 1.000000e+00, %26
  %505 = fmul fast float %457, %504
  %506 = fsub fast float 1.000000e+00, %505
  %507 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %13, float %506, float %503, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %508 = extractvalue %dx.types.ResRet.f32 %507, 2
  %509 = fsub fast float 1.000000e+00, %508
  %510 = select i1 %467, float %509, float %508
  %511 = fmul fast float %510, %463
  br label %512

; <label>:512                                     ; preds = %500, %495
  %513 = phi float [ %511, %500 ], [ 0.000000e+00, %495 ]
  %514 = fadd fast float %513, %465
  %515 = call float @dx.op.unary.f32(i32 7, float %514)  ; Saturate(value)
  %516 = fmul fast float %499, %515
  br i1 %471, label %517, label %527

; <label>:517                                     ; preds = %512
  %518 = fsub fast float 1.000000e+00, %27
  %519 = fmul fast float %459, %518
  %520 = fsub fast float 1.000000e+00, %519
  %521 = fmul fast float %457, %26
  %522 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %13, float %521, float %520, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %523 = extractvalue %dx.types.ResRet.f32 %522, 3
  %524 = fsub fast float 1.000000e+00, %523
  %525 = select i1 %467, float %524, float %523
  %526 = fmul fast float %525, %463
  br label %527

; <label>:527                                     ; preds = %517, %512
  %528 = phi float [ %526, %517 ], [ 0.000000e+00, %512 ]
  %529 = fadd fast float %528, %465
  %530 = call float @dx.op.unary.f32(i32 7, float %529)  ; Saturate(value)
  %531 = fmul fast float %516, %530
  br label %543

; <label>:532                                     ; preds = %452
  br i1 %471, label %533, label %539

; <label>:533                                     ; preds = %532
  %534 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %13, float %26, float %27, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %535 = extractvalue %dx.types.ResRet.f32 %534, 0
  %536 = fsub fast float 1.000000e+00, %535
  %537 = select i1 %467, float %536, float %535
  %538 = fmul fast float %537, %463
  br label %539

; <label>:539                                     ; preds = %533, %532
  %540 = phi float [ %538, %533 ], [ 0.000000e+00, %532 ]
  %541 = fadd fast float %540, %465
  %542 = call float @dx.op.unary.f32(i32 7, float %541)  ; Saturate(value)
  br label %543

; <label>:543                                     ; preds = %539, %527
  %544 = phi float [ %531, %527 ], [ %542, %539 ]
  %545 = fmul fast float %544, %449
  br label %546

; <label>:546                                     ; preds = %543, %448
  %547 = phi float [ %545, %543 ], [ %449, %448 ]
  %548 = and i32 %155, 16
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %644, label %550

; <label>:550                                     ; preds = %546
  %551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %552 = extractvalue %dx.types.CBufRet.f32 %551, 3
  %553 = bitcast float %552 to i32
  %554 = and i32 %553, 65535
  %555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %554)  ; LegacyF16ToF32(value)
  %556 = lshr i32 %553, 16
  %557 = call float @dx.op.legacyF16ToF32(i32 131, i32 %556)  ; LegacyF16ToF32(value)
  %558 = extractvalue %dx.types.CBufRet.f32 %551, 2
  %559 = bitcast float %558 to i32
  %560 = and i32 %559, 65535
  %561 = call float @dx.op.legacyF16ToF32(i32 131, i32 %560)  ; LegacyF16ToF32(value)
  %562 = lshr i32 %559, 16
  %563 = call float @dx.op.legacyF16ToF32(i32 131, i32 %562)  ; LegacyF16ToF32(value)
  %564 = and i32 %154, 16
  %565 = icmp ne i32 %564, 0
  %566 = fcmp fast ogt float %555, 0.000000e+00
  %567 = fcmp fast ogt float %557, 0.000000e+00
  %568 = and i1 %566, %567
  %569 = fcmp fast ogt float %561, 0.000000e+00
  br i1 %568, label %570, label %630

; <label>:570                                     ; preds = %550
  br i1 %569, label %571, label %579

; <label>:571                                     ; preds = %570
  %572 = fmul fast float %557, %25
  %573 = fmul fast float %555, %24
  %574 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %13, float %573, float %572, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %575 = extractvalue %dx.types.ResRet.f32 %574, 0
  %576 = fsub fast float 1.000000e+00, %575
  %577 = select i1 %565, float %576, float %575
  %578 = fmul fast float %577, %561
  br label %579

; <label>:579                                     ; preds = %571, %570
  %580 = phi float [ %578, %571 ], [ 0.000000e+00, %570 ]
  %581 = fadd fast float %580, %563
  %582 = call float @dx.op.unary.f32(i32 7, float %581)  ; Saturate(value)
  br i1 %569, label %583, label %593

; <label>:583                                     ; preds = %579
  %584 = fmul fast float %557, %25
  %585 = fsub fast float 1.000000e+00, %24
  %586 = fmul fast float %555, %585
  %587 = fsub fast float 1.000000e+00, %586
  %588 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %13, float %587, float %584, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %589 = extractvalue %dx.types.ResRet.f32 %588, 1
  %590 = fsub fast float 1.000000e+00, %589
  %591 = select i1 %565, float %590, float %589
  %592 = fmul fast float %591, %561
  br label %593

; <label>:593                                     ; preds = %583, %579
  %594 = phi float [ %592, %583 ], [ 0.000000e+00, %579 ]
  %595 = fadd fast float %594, %563
  %596 = call float @dx.op.unary.f32(i32 7, float %595)  ; Saturate(value)
  %597 = fmul fast float %596, %582
  br i1 %569, label %598, label %610

; <label>:598                                     ; preds = %593
  %599 = fsub fast float 1.000000e+00, %25
  %600 = fmul fast float %557, %599
  %601 = fsub fast float 1.000000e+00, %600
  %602 = fsub fast float 1.000000e+00, %24
  %603 = fmul fast float %555, %602
  %604 = fsub fast float 1.000000e+00, %603
  %605 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %13, float %604, float %601, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %606 = extractvalue %dx.types.ResRet.f32 %605, 2
  %607 = fsub fast float 1.000000e+00, %606
  %608 = select i1 %565, float %607, float %606
  %609 = fmul fast float %608, %561
  br label %610

; <label>:610                                     ; preds = %598, %593
  %611 = phi float [ %609, %598 ], [ 0.000000e+00, %593 ]
  %612 = fadd fast float %611, %563
  %613 = call float @dx.op.unary.f32(i32 7, float %612)  ; Saturate(value)
  %614 = fmul fast float %597, %613
  br i1 %569, label %615, label %625

; <label>:615                                     ; preds = %610
  %616 = fsub fast float 1.000000e+00, %25
  %617 = fmul fast float %557, %616
  %618 = fsub fast float 1.000000e+00, %617
  %619 = fmul fast float %555, %24
  %620 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %13, float %619, float %618, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %621 = extractvalue %dx.types.ResRet.f32 %620, 3
  %622 = fsub fast float 1.000000e+00, %621
  %623 = select i1 %565, float %622, float %621
  %624 = fmul fast float %623, %561
  br label %625

; <label>:625                                     ; preds = %615, %610
  %626 = phi float [ %624, %615 ], [ 0.000000e+00, %610 ]
  %627 = fadd fast float %626, %563
  %628 = call float @dx.op.unary.f32(i32 7, float %627)  ; Saturate(value)
  %629 = fmul fast float %614, %628
  br label %641

; <label>:630                                     ; preds = %550
  br i1 %569, label %631, label %637

; <label>:631                                     ; preds = %630
  %632 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %13, float %24, float %25, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %633 = extractvalue %dx.types.ResRet.f32 %632, 0
  %634 = fsub fast float 1.000000e+00, %633
  %635 = select i1 %565, float %634, float %633
  %636 = fmul fast float %635, %561
  br label %637

; <label>:637                                     ; preds = %631, %630
  %638 = phi float [ %636, %631 ], [ 0.000000e+00, %630 ]
  %639 = fadd fast float %638, %563
  %640 = call float @dx.op.unary.f32(i32 7, float %639)  ; Saturate(value)
  br label %641

; <label>:641                                     ; preds = %637, %625
  %642 = phi float [ %629, %625 ], [ %640, %637 ]
  %643 = fmul fast float %642, %547
  br label %644

; <label>:644                                     ; preds = %641, %546
  %645 = phi float [ %643, %641 ], [ %547, %546 ]
  %646 = call float @dx.op.binary.f32(i32 35, float %645, float 0.000000e+00)  ; FMax(a,b)
  %647 = fcmp fast oeq float %646, 0.000000e+00
  br i1 %647, label %648, label %649, !dx.controlflow.hints !57

; <label>:648                                     ; preds = %644
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %649

; <label>:649                                     ; preds = %648, %644
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %650 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %14, float %20, float %21, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %651 = extractvalue %dx.types.ResRet.f32 %650, 0
  %652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %653 = extractvalue %dx.types.CBufRet.f32 %652, 3
  %654 = bitcast float %653 to i32
  %655 = and i32 %654, 65535
  %656 = call float @dx.op.legacyF16ToF32(i32 131, i32 %655)  ; LegacyF16ToF32(value)
  %657 = fcmp fast une float %656, 0.000000e+00
  %658 = select i1 %657, float 0.000000e+00, float 1.000000e+00
  %659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %660 = extractvalue %dx.types.CBufRet.f32 %659, 3
  %661 = fmul fast float %660, %651
  %662 = fmul fast float %661, %658
  %663 = fsub fast float 1.000000e+00, %662
  %664 = fmul fast float %150, %663
  %665 = fmul fast float %151, %663
  %666 = fmul fast float %152, %663
  %667 = extractvalue %dx.types.CBufRet.f32 %659, 0
  %668 = extractvalue %dx.types.CBufRet.f32 %659, 1
  %669 = extractvalue %dx.types.CBufRet.f32 %659, 2
  %670 = fmul fast float %667, %661
  %671 = fmul fast float %668, %661
  %672 = fmul fast float %669, %661
  %673 = fadd fast float %664, %670
  %674 = fadd fast float %665, %671
  %675 = fadd fast float %666, %672
  %676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %677 = extractvalue %dx.types.CBufRet.f32 %676, 2
  %678 = fcmp fast ogt float %677, 0.000000e+00
  br i1 %678, label %679, label %745, !dx.controlflow.hints !58

; <label>:679                                     ; preds = %649
  %680 = fcmp fast oeq float %677, 2.000000e+00
  br i1 %680, label %681, label %733, !dx.controlflow.hints !59

; <label>:681                                     ; preds = %679
  %682 = fcmp fast ole float %673, 0x3F69A5C380000000
  %683 = fcmp fast ole float %674, 0x3F69A5C380000000
  %684 = fcmp fast ole float %675, 0x3F69A5C380000000
  %685 = fmul fast float %673, 0x4029D70A40000000
  %686 = fmul fast float %674, 0x4029D70A40000000
  %687 = fmul fast float %675, 0x4029D70A40000000
  %688 = call float @dx.op.unary.f32(i32 23, float %673)  ; Log(value)
  %689 = call float @dx.op.unary.f32(i32 23, float %674)  ; Log(value)
  %690 = call float @dx.op.unary.f32(i32 23, float %675)  ; Log(value)
  %691 = fmul fast float %688, 0x3FDAAAAAA0000000
  %692 = fmul fast float %689, 0x3FDAAAAAA0000000
  %693 = fmul fast float %690, 0x3FDAAAAAA0000000
  %694 = call float @dx.op.unary.f32(i32 21, float %691)  ; Exp(value)
  %695 = call float @dx.op.unary.f32(i32 21, float %692)  ; Exp(value)
  %696 = call float @dx.op.unary.f32(i32 21, float %693)  ; Exp(value)
  %697 = fmul fast float %694, 0x3FF0E147A0000000
  %698 = fmul fast float %695, 0x3FF0E147A0000000
  %699 = fmul fast float %696, 0x3FF0E147A0000000
  %700 = fadd fast float %697, 0xBFAC28F5C0000000
  %701 = fadd fast float %698, 0xBFAC28F5C0000000
  %702 = fadd fast float %699, 0xBFAC28F5C0000000
  %703 = select i1 %682, float %685, float %700
  %704 = select i1 %683, float %686, float %701
  %705 = select i1 %684, float %687, float %702
  %706 = fsub fast float 1.000000e+00, %703
  %707 = fsub fast float 1.000000e+00, %704
  %708 = fsub fast float 1.000000e+00, %705
  %709 = fcmp fast ole float %706, 0x3FA4B5DCC0000000
  %710 = fmul fast float %706, 0x3FB3D07220000000
  %711 = fsub fast float 0x3FF0E147A0000000, %703
  %712 = fmul fast float %711, 0x3FEE54EDE0000000
  %713 = call float @dx.op.unary.f32(i32 23, float %712)  ; Log(value)
  %714 = fmul fast float %713, 0x4003333340000000
  %715 = call float @dx.op.unary.f32(i32 21, float %714)  ; Exp(value)
  %716 = select i1 %709, float %710, float %715
  %717 = fcmp fast ole float %707, 0x3FA4B5DCC0000000
  %718 = fmul fast float %707, 0x3FB3D07220000000
  %719 = fsub fast float 0x3FF0E147A0000000, %704
  %720 = fmul fast float %719, 0x3FEE54EDE0000000
  %721 = call float @dx.op.unary.f32(i32 23, float %720)  ; Log(value)
  %722 = fmul fast float %721, 0x4003333340000000
  %723 = call float @dx.op.unary.f32(i32 21, float %722)  ; Exp(value)
  %724 = select i1 %717, float %718, float %723
  %725 = fcmp fast ole float %708, 0x3FA4B5DCC0000000
  %726 = fmul fast float %708, 0x3FB3D07220000000
  %727 = fsub fast float 0x3FF0E147A0000000, %705
  %728 = fmul fast float %727, 0x3FEE54EDE0000000
  %729 = call float @dx.op.unary.f32(i32 23, float %728)  ; Log(value)
  %730 = fmul fast float %729, 0x4003333340000000
  %731 = call float @dx.op.unary.f32(i32 21, float %730)  ; Exp(value)
  %732 = select i1 %725, float %726, float %731
  br label %745

; <label>:733                                     ; preds = %679
  %734 = call float @dx.op.dot3.f32(i32 55, float %673, float %674, float %675, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %735 = extractvalue %dx.types.CBufRet.f32 %676, 3
  %736 = fsub fast float %673, %734
  %737 = fsub fast float %674, %734
  %738 = fsub fast float %675, %734
  %739 = fmul fast float %735, %736
  %740 = fmul fast float %735, %737
  %741 = fmul fast float %735, %738
  %742 = fadd fast float %739, %734
  %743 = fadd fast float %740, %734
  %744 = fadd fast float %741, %734
  br label %745

; <label>:745                                     ; preds = %733, %681, %649
  %746 = phi float [ %716, %681 ], [ %742, %733 ], [ %673, %649 ]
  %747 = phi float [ %724, %681 ], [ %743, %733 ], [ %674, %649 ]
  %748 = phi float [ %732, %681 ], [ %744, %733 ], [ %675, %649 ]
  %749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %750 = extractvalue %dx.types.CBufRet.f32 %749, 0
  %751 = fcmp fast une float %750, 0.000000e+00
  br i1 %751, label %752, label %926, !dx.controlflow.hints !60

; <label>:752                                     ; preds = %745
  %753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %754 = extractvalue %dx.types.CBufRet.f32 %753, 0
  %755 = extractvalue %dx.types.CBufRet.f32 %753, 1
  %756 = fsub fast float %40, %754
  %757 = fsub fast float %41, %755
  %758 = extractvalue %dx.types.CBufRet.f32 %753, 2
  %759 = extractvalue %dx.types.CBufRet.f32 %753, 3
  %760 = fmul fast float %756, %758
  %761 = fmul fast float %757, %759
  %762 = call float @dx.op.unary.f32(i32 6, float %750)  ; FAbs(value)
  %763 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %15, float %760, float %761, float undef, float undef, i32 0, i32 0, i32 undef, float %762)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %764 = extractvalue %dx.types.ResRet.f32 %763, 0
  %765 = extractvalue %dx.types.ResRet.f32 %763, 1
  %766 = extractvalue %dx.types.ResRet.f32 %763, 2
  %767 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %768 = extractvalue %dx.types.CBufRet.i32 %767, 3
  %769 = and i32 %768, 3
  %770 = icmp ne i32 %769, 0
  %771 = and i32 %768, 4
  %772 = icmp eq i32 %771, 0
  %773 = and i1 %770, %772
  br i1 %773, label %774, label %818

; <label>:774                                     ; preds = %752
  %775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %776 = extractvalue %dx.types.CBufRet.f32 %775, 0
  %777 = fcmp fast oge float %765, %776
  %778 = zext i1 %777 to i32
  br i1 %777, label %779, label %818

; <label>:779                                     ; preds = %774
  %780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %781 = extractvalue %dx.types.CBufRet.f32 %780, 3
  %782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %783 = extractvalue %dx.types.CBufRet.f32 %782, 2
  %784 = fcmp fast ogt float %783, 0.000000e+00
  br i1 %784, label %785, label %793, !dx.controlflow.hints !61

; <label>:785                                     ; preds = %779
  %786 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %15, float %765, float 0.000000e+00, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %787 = extractvalue %dx.types.ResRet.f32 %786, 0
  %788 = extractvalue %dx.types.ResRet.f32 %786, 1
  %789 = extractvalue %dx.types.ResRet.f32 %786, 2
  %790 = fcmp fast ogt float %783, 1.500000e+00
  %791 = select i1 %790, float %787, float %788
  %792 = select i1 %790, float %787, float %789
  br label %811

; <label>:793                                     ; preds = %779
  %794 = call float @dx.op.unary.f32(i32 7, float %765)  ; Saturate(value)
  %795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 238)  ; CBufferLoadLegacy(handle,regIndex)
  %796 = extractvalue %dx.types.CBufRet.f32 %795, 0
  %797 = extractvalue %dx.types.CBufRet.f32 %795, 1
  %798 = extractvalue %dx.types.CBufRet.f32 %795, 2
  %799 = extractvalue %dx.types.CBufRet.f32 %780, 0
  %800 = extractvalue %dx.types.CBufRet.f32 %780, 1
  %801 = extractvalue %dx.types.CBufRet.f32 %780, 2
  %802 = fsub fast float %796, %799
  %803 = fsub fast float %797, %800
  %804 = fsub fast float %798, %801
  %805 = fmul fast float %802, %794
  %806 = fmul fast float %803, %794
  %807 = fmul fast float %804, %794
  %808 = fadd fast float %805, %799
  %809 = fadd fast float %806, %800
  %810 = fadd fast float %807, %801
  br label %811

; <label>:811                                     ; preds = %793, %785
  %812 = phi float [ %787, %785 ], [ %808, %793 ]
  %813 = phi float [ %791, %785 ], [ %809, %793 ]
  %814 = phi float [ %792, %785 ], [ %810, %793 ]
  %815 = fmul fast float %812, %781
  %816 = fmul fast float %813, %781
  %817 = fmul fast float %814, %781
  br label %818

; <label>:818                                     ; preds = %811, %774, %752
  %819 = phi float [ %815, %811 ], [ %764, %752 ], [ %764, %774 ]
  %820 = phi float [ %816, %811 ], [ %765, %752 ], [ %764, %774 ]
  %821 = phi float [ %817, %811 ], [ %766, %752 ], [ %764, %774 ]
  %822 = phi i32 [ %778, %811 ], [ 0, %752 ], [ %778, %774 ]
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %824, label %878

; <label>:824                                     ; preds = %818
  %825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %826 = extractvalue %dx.types.CBufRet.f32 %825, 0
  %827 = extractvalue %dx.types.CBufRet.f32 %825, 1
  %828 = extractvalue %dx.types.CBufRet.f32 %825, 2
  %829 = call float @dx.op.dot3.f32(i32 55, float %819, float %820, float %821, float %826, float %827, float %828)  ; Dot3(ax,ay,az,bx,by,bz)
  %830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %831 = extractvalue %dx.types.CBufRet.f32 %830, 0
  %832 = extractvalue %dx.types.CBufRet.f32 %830, 1
  %833 = extractvalue %dx.types.CBufRet.f32 %830, 2
  %834 = call float @dx.op.dot3.f32(i32 55, float %819, float %820, float %821, float %831, float %832, float %833)  ; Dot3(ax,ay,az,bx,by,bz)
  %835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %836 = extractvalue %dx.types.CBufRet.f32 %835, 0
  %837 = extractvalue %dx.types.CBufRet.f32 %835, 1
  %838 = extractvalue %dx.types.CBufRet.f32 %835, 2
  %839 = call float @dx.op.dot3.f32(i32 55, float %819, float %820, float %821, float %836, float %837, float %838)  ; Dot3(ax,ay,az,bx,by,bz)
  %840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %841 = extractvalue %dx.types.CBufRet.f32 %840, 2
  %842 = fmul fast float %841, %829
  %843 = fmul fast float %841, %834
  %844 = fmul fast float %841, %839
  %845 = fadd fast float %842, 9.765625e-04
  %846 = fadd fast float %843, 9.765625e-04
  %847 = fadd fast float %844, 9.765625e-04
  %848 = call float @dx.op.unary.f32(i32 23, float %845)  ; Log(value)
  %849 = call float @dx.op.unary.f32(i32 23, float %846)  ; Log(value)
  %850 = call float @dx.op.unary.f32(i32 23, float %847)  ; Log(value)
  %851 = fadd fast float %848, 1.000000e+01
  %852 = fadd fast float %849, 1.000000e+01
  %853 = fadd fast float %850, 1.000000e+01
  %854 = fmul fast float %851, 0x3FA99999A0000000
  %855 = fmul fast float %852, 0x3FA99999A0000000
  %856 = fmul fast float %853, 0x3FA99999A0000000
  %857 = call float @dx.op.unary.f32(i32 7, float %854)  ; Saturate(value)
  %858 = call float @dx.op.unary.f32(i32 7, float %855)  ; Saturate(value)
  %859 = call float @dx.op.unary.f32(i32 7, float %856)  ; Saturate(value)
  %860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %861 = extractvalue %dx.types.CBufRet.f32 %860, 0
  %862 = extractvalue %dx.types.CBufRet.f32 %860, 1
  %863 = extractvalue %dx.types.CBufRet.f32 %860, 2
  %864 = fmul fast float %861, %857
  %865 = fmul fast float %862, %858
  %866 = fmul fast float %863, %859
  %867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %868 = extractvalue %dx.types.CBufRet.f32 %867, 0
  %869 = extractvalue %dx.types.CBufRet.f32 %867, 1
  %870 = extractvalue %dx.types.CBufRet.f32 %867, 2
  %871 = fadd fast float %864, %868
  %872 = fadd fast float %865, %869
  %873 = fadd fast float %866, %870
  %874 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %871, float %872, float %873, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %875 = extractvalue %dx.types.ResRet.f32 %874, 0
  %876 = extractvalue %dx.types.ResRet.f32 %874, 1
  %877 = extractvalue %dx.types.ResRet.f32 %874, 2
  br label %878

; <label>:878                                     ; preds = %824, %818
  %879 = phi float [ %819, %818 ], [ %875, %824 ]
  %880 = phi float [ %820, %818 ], [ %876, %824 ]
  %881 = phi float [ %821, %818 ], [ %877, %824 ]
  %882 = fcmp fast ole float %879, 0x3FA4B5DCC0000000
  %883 = fmul fast float %879, 0x3FB3D07220000000
  %884 = fadd fast float %879, 0x3FAC28F5C0000000
  %885 = fmul fast float %884, 0x3FEE54EDE0000000
  %886 = call float @dx.op.unary.f32(i32 23, float %885)  ; Log(value)
  %887 = fmul fast float %886, 0x4003333340000000
  %888 = call float @dx.op.unary.f32(i32 21, float %887)  ; Exp(value)
  %889 = select i1 %882, float %883, float %888
  %890 = fcmp fast ole float %880, 0x3FA4B5DCC0000000
  %891 = fmul fast float %880, 0x3FB3D07220000000
  %892 = fadd fast float %880, 0x3FAC28F5C0000000
  %893 = fmul fast float %892, 0x3FEE54EDE0000000
  %894 = call float @dx.op.unary.f32(i32 23, float %893)  ; Log(value)
  %895 = fmul fast float %894, 0x4003333340000000
  %896 = call float @dx.op.unary.f32(i32 21, float %895)  ; Exp(value)
  %897 = select i1 %890, float %891, float %896
  %898 = fcmp fast ole float %881, 0x3FA4B5DCC0000000
  %899 = fmul fast float %881, 0x3FB3D07220000000
  %900 = fadd fast float %881, 0x3FAC28F5C0000000
  %901 = fmul fast float %900, 0x3FEE54EDE0000000
  %902 = call float @dx.op.unary.f32(i32 23, float %901)  ; Log(value)
  %903 = fmul fast float %902, 0x4003333340000000
  %904 = call float @dx.op.unary.f32(i32 21, float %903)  ; Exp(value)
  %905 = select i1 %898, float %899, float %904
  %906 = fcmp fast olt float %750, 0.000000e+00
  br i1 %906, label %907, label %919

; <label>:907                                     ; preds = %878
  %908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %909 = extractvalue %dx.types.CBufRet.f32 %908, 0
  %910 = extractvalue %dx.types.CBufRet.f32 %908, 1
  %911 = extractvalue %dx.types.CBufRet.f32 %908, 2
  %912 = call float @dx.op.dot3.f32(i32 55, float %889, float %897, float %905, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %913 = fsub fast float %912, %909
  %914 = fmul fast float %913, %910
  %915 = call float @dx.op.unary.f32(i32 7, float %914)  ; Saturate(value)
  %916 = fsub fast float 1.000000e+00, %911
  %917 = fmul fast float %915, %916
  %918 = fadd fast float %917, %911
  br label %919

; <label>:919                                     ; preds = %907, %878
  %920 = phi float [ %918, %907 ], [ %889, %878 ]
  %921 = phi float [ %918, %907 ], [ %897, %878 ]
  %922 = phi float [ %918, %907 ], [ %905, %878 ]
  %923 = fmul fast float %920, %746
  %924 = fmul fast float %921, %747
  %925 = fmul fast float %922, %748
  br label %926

; <label>:926                                     ; preds = %919, %745
  %927 = phi float [ %923, %919 ], [ %746, %745 ]
  %928 = phi float [ %924, %919 ], [ %747, %745 ]
  %929 = phi float [ %925, %919 ], [ %748, %745 ]
  %930 = extractvalue %dx.types.CBufRet.f32 %749, 1
  %931 = fcmp fast ogt float %930, 0.000000e+00
  br i1 %931, label %932, label %973, !dx.controlflow.hints !62

; <label>:932                                     ; preds = %926
  %933 = extractvalue %dx.types.CBufRet.f32 %749, 2
  %934 = bitcast float %933 to i32
  %935 = and i32 %934, 255
  %936 = uitofp i32 %935 to float
  %937 = lshr i32 %934, 8
  %938 = and i32 %937, 255
  %939 = uitofp i32 %938 to float
  %940 = lshr i32 %934, 16
  %941 = and i32 %940, 255
  %942 = uitofp i32 %941 to float
  %943 = fmul fast float %942, 0x3F70101020000000
  %944 = lshr i32 %934, 24
  %945 = uitofp i32 %944 to float
  %946 = fmul fast float %945, 0x3F70101020000000
  %947 = fadd fast float %942, %936
  %948 = fmul fast float %947, 0x3F70101020000000
  %949 = fadd fast float %939, %945
  %950 = fmul fast float %949, 0x3F70101020000000
  %951 = fdiv fast float %40, %948
  %952 = fdiv fast float %41, %950
  %953 = fsub fast float -0.000000e+00, %951
  %954 = fsub fast float -0.000000e+00, %952
  %955 = fcmp fast oge float %951, %953
  %956 = fcmp fast oge float %952, %954
  %957 = call float @dx.op.unary.f32(i32 6, float %951)  ; FAbs(value)
  %958 = call float @dx.op.unary.f32(i32 6, float %952)  ; FAbs(value)
  %959 = call float @dx.op.unary.f32(i32 22, float %957)  ; Frc(value)
  %960 = call float @dx.op.unary.f32(i32 22, float %958)  ; Frc(value)
  %961 = fsub fast float -0.000000e+00, %959
  %962 = fsub fast float -0.000000e+00, %960
  %963 = select i1 %955, float %959, float %961
  %964 = select i1 %956, float %960, float %962
  %965 = fmul fast float %948, %963
  %966 = fmul fast float %964, %950
  %967 = fcmp fast olt float %965, %943
  %968 = fcmp fast olt float %966, %946
  %969 = or i1 %967, %968
  br i1 %969, label %970, label %973, !dx.controlflow.hints !63

; <label>:970                                     ; preds = %932
  %971 = fsub fast float 1.000000e+00, %930
  %972 = fmul fast float %971, %646
  br label %973

; <label>:973                                     ; preds = %970, %932, %926
  %974 = phi float [ %972, %970 ], [ %646, %932 ], [ %646, %926 ]
  %975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %976 = extractvalue %dx.types.CBufRet.f32 %975, 3
  %977 = fcmp fast ogt float %976, 0.000000e+00
  br i1 %977, label %978, label %1061, !dx.controlflow.hints !64

; <label>:978                                     ; preds = %973
  %979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %980 = extractvalue %dx.types.CBufRet.f32 %979, 2
  %981 = extractvalue %dx.types.CBufRet.f32 %979, 3
  %982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %983 = extractvalue %dx.types.CBufRet.f32 %982, 3
  %984 = fmul fast float %983, 1.000000e+01
  %985 = call float @dx.op.unary.f32(i32 27, float %984)  ; Round_ni(value)
  %986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %987 = extractvalue %dx.types.CBufRet.f32 %986, 0
  %988 = extractvalue %dx.types.CBufRet.f32 %986, 1
  %989 = fmul fast float %987, %40
  %990 = fmul fast float %988, %41
  %991 = call float @dx.op.unary.f32(i32 27, float %989)  ; Round_ni(value)
  %992 = call float @dx.op.unary.f32(i32 27, float %990)  ; Round_ni(value)
  %993 = fmul fast float %985, 0x4002B851E0000000
  %994 = call float @dx.op.unary.f32(i32 22, float %993)  ; Frc(value)
  %995 = fadd fast float %994, 0x3FB99999A0000000
  %996 = fadd fast float %995, %991
  %997 = fadd fast float %995, %992
  %998 = fmul fast float %996, 0x3FE1BEDF00000000
  %999 = call float @dx.op.unary.f32(i32 22, float %998)  ; Frc(value)
  %1000 = fmul fast float %996, %999
  %1001 = fadd fast float %1000, %997
  %1002 = fmul fast float %997, 0x3FD3BEBE20000000
  %1003 = call float @dx.op.unary.f32(i32 22, float %1002)  ; Frc(value)
  %1004 = fmul fast float %997, %1003
  %1005 = fadd fast float %1004, %996
  %1006 = fmul fast float %1001, %1005
  %1007 = call float @dx.op.unary.f32(i32 22, float %1006)  ; Frc(value)
  %1008 = extractvalue %dx.types.CBufRet.f32 %986, 3
  %1009 = bitcast float %1008 to i32
  %1010 = and i32 %1009, 255
  %1011 = uitofp i32 %1010 to float
  %1012 = fmul fast float %1011, 0x3F70101020000000
  %1013 = fmul fast float %1012, %980
  %1014 = fcmp fast olt float %1007, %1013
  br i1 %1014, label %1015, label %1022, !dx.controlflow.hints !65

; <label>:1015                                    ; preds = %978
  %1016 = fmul fast float %1007, 0x4057091680000000
  %1017 = call float @dx.op.unary.f32(i32 22, float %1016)  ; Frc(value)
  %1018 = fmul fast float %1017, %927
  %1019 = fmul fast float %1017, %929
  %1020 = fsub fast float 1.000000e+00, %1017
  %1021 = fmul fast float %1020, %928
  br label %1022

; <label>:1022                                    ; preds = %1015, %978
  %1023 = phi float [ %1018, %1015 ], [ %927, %978 ]
  %1024 = phi float [ %1021, %1015 ], [ %928, %978 ]
  %1025 = phi float [ %1019, %1015 ], [ %929, %978 ]
  %1026 = fmul fast float %1007, 0x4028B0A3E0000000
  %1027 = call float @dx.op.unary.f32(i32 22, float %1026)  ; Frc(value)
  %1028 = fmul fast float %1012, %981
  %1029 = fcmp fast olt float %1027, %1028
  br i1 %1029, label %1030, label %1049, !dx.controlflow.hints !66

; <label>:1030                                    ; preds = %1022
  %1031 = extractvalue %dx.types.CBufRet.f32 %986, 2
  %1032 = fmul fast float %1031, %40
  %1033 = call float @dx.op.unary.f32(i32 27, float %1032)  ; Round_ni(value)
  %1034 = fmul fast float %1033, 0x3FD5555560000000
  %1035 = call float @dx.op.unary.f32(i32 22, float %1034)  ; Frc(value)
  %1036 = extractvalue %dx.types.CBufRet.f32 %979, 0
  %1037 = extractvalue %dx.types.CBufRet.f32 %979, 1
  %1038 = fcmp fast olt float %1035, 0x3FD51EB860000000
  br i1 %1038, label %1042, label %1039, !dx.controlflow.hints !67

; <label>:1039                                    ; preds = %1030
  %1040 = fcmp fast olt float %1035, 0x3FE51EB860000000
  br i1 %1040, label %1042, label %1041, !dx.controlflow.hints !68

; <label>:1041                                    ; preds = %1039
  br label %1042

; <label>:1042                                    ; preds = %1041, %1039, %1030
  %1043 = phi float [ %1036, %1041 ], [ %1037, %1030 ], [ %1036, %1039 ]
  %1044 = phi float [ %1036, %1041 ], [ %1036, %1030 ], [ %1037, %1039 ]
  %1045 = phi float [ %1037, %1041 ], [ %1036, %1030 ], [ %1036, %1039 ]
  %1046 = fmul fast float %1043, %1023
  %1047 = fmul fast float %1044, %1024
  %1048 = fmul fast float %1045, %1025
  br label %1049

; <label>:1049                                    ; preds = %1042, %1022
  %1050 = phi float [ %1046, %1042 ], [ %1023, %1022 ]
  %1051 = phi float [ %1047, %1042 ], [ %1024, %1022 ]
  %1052 = phi float [ %1048, %1042 ], [ %1025, %1022 ]
  %1053 = fmul fast float %1007, 0x40223EF9E0000000
  %1054 = call float @dx.op.unary.f32(i32 22, float %1053)  ; Frc(value)
  %1055 = fmul fast float %1012, %976
  %1056 = fmul fast float %1054, %1054
  %1057 = fmul fast float %1056, %1055
  %1058 = fsub fast float 1.000000e+00, %1057
  %1059 = call float @dx.op.unary.f32(i32 7, float %1058)  ; Saturate(value)
  %1060 = fmul fast float %1059, %974
  br label %1061

; <label>:1061                                    ; preds = %1049, %973
  %1062 = phi float [ %1050, %1049 ], [ %927, %973 ]
  %1063 = phi float [ %1051, %1049 ], [ %928, %973 ]
  %1064 = phi float [ %1052, %1049 ], [ %929, %973 ]
  %1065 = phi float [ %1060, %1049 ], [ %974, %973 ]
  %1066 = extractvalue %dx.types.CBufRet.f32 %676, 0
  %1067 = fcmp fast ogt float %1066, 0.000000e+00
  br i1 %1067, label %1068, label %1117, !dx.controlflow.hints !69

; <label>:1068                                    ; preds = %1061
  %1069 = extractvalue %dx.types.CBufRet.f32 %676, 1
  %1070 = fmul fast float %1066, %22
  %1071 = fmul fast float %1069, %23
  %1072 = call float @dx.op.unary.f32(i32 85, float %1070)  ; DerivFineX(value)
  %1073 = call float @dx.op.unary.f32(i32 86, float %1070)  ; DerivFineY(value)
  %1074 = call float @dx.op.unary.f32(i32 85, float %1071)  ; DerivFineX(value)
  %1075 = call float @dx.op.unary.f32(i32 86, float %1071)  ; DerivFineY(value)
  %1076 = fmul fast float %1075, %1072
  %1077 = fmul fast float %1074, %1073
  %1078 = fsub fast float %1076, %1077
  %1079 = fdiv fast float 1.000000e+00, %1078
  %1080 = fmul fast float %1079, %1075
  %1081 = fmul fast float %1079, %1073
  %1082 = fmul fast float %1079, %1074
  %1083 = fmul fast float %1079, %1072
  %1084 = fmul fast float %1080, %1080
  %1085 = fmul fast float %1082, %1082
  %1086 = fadd fast float %1084, %1085
  %1087 = call float @dx.op.unary.f32(i32 24, float %1086)  ; Sqrt(value)
  %1088 = fmul fast float %1081, %1081
  %1089 = fmul fast float %1083, %1083
  %1090 = fadd fast float %1088, %1089
  %1091 = call float @dx.op.unary.f32(i32 24, float %1090)  ; Sqrt(value)
  %1092 = fmul fast float %1087, %1070
  %1093 = fmul fast float %1091, %1071
  %1094 = fsub fast float %1092, %1087
  %1095 = fsub fast float %1093, %1091
  %1096 = fsub fast float -0.000000e+00, %1092
  %1097 = fsub fast float -0.000000e+00, %1093
  %1098 = call float @dx.op.binary.f32(i32 35, float %1096, float %1094)  ; FMax(a,b)
  %1099 = call float @dx.op.binary.f32(i32 35, float %1097, float %1095)  ; FMax(a,b)
  %1100 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1098)  ; FMax(a,b)
  %1101 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1099)  ; FMax(a,b)
  %1102 = fmul fast float %1100, %1100
  %1103 = fmul fast float %1101, %1101
  %1104 = fadd fast float %1103, %1102
  %1105 = call float @dx.op.unary.f32(i32 24, float %1104)  ; Sqrt(value)
  %1106 = call float @dx.op.binary.f32(i32 35, float %1098, float %1099)  ; FMax(a,b)
  %1107 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %1106)  ; FMin(a,b)
  %1108 = fadd fast float %1105, -1.000000e+00
  %1109 = fadd fast float %1108, %1107
  %1110 = fmul fast float %1109, -5.000000e-01
  %1111 = call float @dx.op.unary.f32(i32 7, float %1110)  ; Saturate(value)
  %1112 = fmul fast float %1111, 2.000000e+00
  %1113 = fsub fast float 3.000000e+00, %1112
  %1114 = fmul fast float %1111, %1111
  %1115 = fmul fast float %1114, %1065
  %1116 = fmul fast float %1115, %1113
  br label %1117

; <label>:1117                                    ; preds = %1068, %1061
  %1118 = phi float [ %1116, %1068 ], [ %1065, %1061 ]
  %1119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1120 = extractvalue %dx.types.CBufRet.f32 %1119, 0
  %1121 = extractvalue %dx.types.CBufRet.f32 %1119, 1
  %1122 = extractvalue %dx.types.CBufRet.f32 %1119, 2
  %1123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1124 = extractvalue %dx.types.CBufRet.f32 %1123, 0
  %1125 = extractvalue %dx.types.CBufRet.f32 %1123, 1
  %1126 = extractvalue %dx.types.CBufRet.f32 %1123, 2
  %1127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1128 = extractvalue %dx.types.CBufRet.f32 %1127, 0
  %1129 = extractvalue %dx.types.CBufRet.f32 %1127, 1
  %1130 = extractvalue %dx.types.CBufRet.f32 %1127, 2
  %1131 = fmul fast float %1120, %1062
  %1132 = call float @dx.op.tertiary.f32(i32 46, float %1121, float %1063, float %1131)  ; FMad(a,b,c)
  %1133 = call float @dx.op.tertiary.f32(i32 46, float %1122, float %1064, float %1132)  ; FMad(a,b,c)
  %1134 = fmul fast float %1124, %1062
  %1135 = call float @dx.op.tertiary.f32(i32 46, float %1125, float %1063, float %1134)  ; FMad(a,b,c)
  %1136 = call float @dx.op.tertiary.f32(i32 46, float %1126, float %1064, float %1135)  ; FMad(a,b,c)
  %1137 = fmul fast float %1128, %1062
  %1138 = call float @dx.op.tertiary.f32(i32 46, float %1129, float %1063, float %1137)  ; FMad(a,b,c)
  %1139 = call float @dx.op.tertiary.f32(i32 46, float %1130, float %1064, float %1138)  ; FMad(a,b,c)
  %1140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1141 = extractvalue %dx.types.CBufRet.f32 %1140, 0
  %1142 = bitcast float %1141 to i32
  %1143 = and i32 %1142, 128
  %1144 = icmp eq i32 %1143, 0
  br i1 %1144, label %1159, label %1145

; <label>:1145                                    ; preds = %1117
  %1146 = call float @dx.op.unary.f32(i32 24, float %1133)  ; Sqrt(value)
  %1147 = call float @dx.op.unary.f32(i32 24, float %1136)  ; Sqrt(value)
  %1148 = call float @dx.op.unary.f32(i32 24, float %1139)  ; Sqrt(value)
  %1149 = fmul fast float %1146, 9.687500e-01
  %1150 = fmul fast float %1147, 9.687500e-01
  %1151 = fmul fast float %1148, 9.687500e-01
  %1152 = fadd fast float %1149, 1.562500e-02
  %1153 = fadd fast float %1150, 1.562500e-02
  %1154 = fadd fast float %1151, 1.562500e-02
  %1155 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %15, float %1152, float %1153, float %1154, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1156 = extractvalue %dx.types.ResRet.f32 %1155, 0
  %1157 = extractvalue %dx.types.ResRet.f32 %1155, 1
  %1158 = extractvalue %dx.types.ResRet.f32 %1155, 2
  br label %1446

; <label>:1159                                    ; preds = %1117
  %1160 = and i32 %1142, 127
  switch i32 %1160, label %1446 [
    i32 1, label %1161
    i32 2, label %1161
    i32 0, label %1161
    i32 3, label %1191
    i32 4, label %1312
  ]

; <label>:1161                                    ; preds = %1159, %1159, %1159
  %1162 = call float @dx.op.unary.f32(i32 7, float %1133)  ; Saturate(value)
  %1163 = call float @dx.op.unary.f32(i32 7, float %1136)  ; Saturate(value)
  %1164 = call float @dx.op.unary.f32(i32 7, float %1139)  ; Saturate(value)
  %1165 = call float @dx.op.unary.f32(i32 23, float %1162)  ; Log(value)
  %1166 = call float @dx.op.unary.f32(i32 23, float %1163)  ; Log(value)
  %1167 = call float @dx.op.unary.f32(i32 23, float %1164)  ; Log(value)
  %1168 = fmul fast float %1165, 0x3FDAAAAAA0000000
  %1169 = fmul fast float %1166, 0x3FDAAAAAA0000000
  %1170 = fmul fast float %1167, 0x3FDAAAAAA0000000
  %1171 = call float @dx.op.unary.f32(i32 21, float %1168)  ; Exp(value)
  %1172 = call float @dx.op.unary.f32(i32 21, float %1169)  ; Exp(value)
  %1173 = call float @dx.op.unary.f32(i32 21, float %1170)  ; Exp(value)
  %1174 = fmul fast float %1171, 0x3FF0E147A0000000
  %1175 = fmul fast float %1172, 0x3FF0E147A0000000
  %1176 = fmul fast float %1173, 0x3FF0E147A0000000
  %1177 = fadd fast float %1174, 0xBFAC28F5C0000000
  %1178 = fadd fast float %1175, 0xBFAC28F5C0000000
  %1179 = fadd fast float %1176, 0xBFAC28F5C0000000
  %1180 = call float @dx.op.unary.f32(i32 7, float %1177)  ; Saturate(value)
  %1181 = call float @dx.op.unary.f32(i32 7, float %1178)  ; Saturate(value)
  %1182 = call float @dx.op.unary.f32(i32 7, float %1179)  ; Saturate(value)
  %1183 = extractvalue %dx.types.CBufRet.f32 %1140, 2
  %1184 = extractvalue %dx.types.CBufRet.f32 %1140, 3
  %1185 = fmul fast float %1183, %1180
  %1186 = fmul fast float %1183, %1181
  %1187 = fmul fast float %1183, %1182
  %1188 = fadd fast float %1185, %1184
  %1189 = fadd fast float %1186, %1184
  %1190 = fadd fast float %1187, %1184
  br label %1446

; <label>:1191                                    ; preds = %1159
  %1192 = fmul fast float %1133, 0x4163D57C00000000
  %1193 = fmul fast float %1136, 0x4163D57C00000000
  %1194 = fmul fast float %1139, 0x4163D57C00000000
  %1195 = fadd fast float %1192, 9.999980e+05
  %1196 = fadd fast float %1193, 9.999980e+05
  %1197 = fadd fast float %1194, 9.999980e+05
  %1198 = fmul fast float %1195, %1133
  %1199 = fmul fast float %1196, %1136
  %1200 = fmul fast float %1197, %1139
  %1201 = fadd fast float %1198, 0xC0AFE17A60000000
  %1202 = fadd fast float %1199, 0xC0AFE17A60000000
  %1203 = fadd fast float %1200, 0xC0AFE17A60000000
  %1204 = fmul fast float %1201, %1133
  %1205 = fmul fast float %1202, %1136
  %1206 = fmul fast float %1203, %1139
  %1207 = fmul fast float %1133, 0x40F753C340000000
  %1208 = fmul fast float %1136, 0x40F753C340000000
  %1209 = fmul fast float %1139, 0x40F753C340000000
  %1210 = fsub fast float 9.999990e+06, %1207
  %1211 = fsub fast float 9.999990e+06, %1208
  %1212 = fsub fast float 9.999990e+06, %1209
  %1213 = fmul fast float %1210, %1133
  %1214 = fmul fast float %1211, %1136
  %1215 = fmul fast float %1212, %1139
  %1216 = fadd fast float %1213, 0x4136D1DD80000000
  %1217 = fadd fast float %1214, 0x4136D1DD80000000
  %1218 = fadd fast float %1215, 0x4136D1DD80000000
  %1219 = fmul fast float %1216, %1133
  %1220 = fmul fast float %1217, %1136
  %1221 = fmul fast float %1218, %1139
  %1222 = fadd fast float %1219, 1.000000e+00
  %1223 = fadd fast float %1220, 1.000000e+00
  %1224 = fadd fast float %1221, 1.000000e+00
  %1225 = fdiv fast float %1204, %1222
  %1226 = fdiv fast float %1205, %1223
  %1227 = fdiv fast float %1206, %1224
  %1228 = call float @dx.op.unary.f32(i32 7, float %1225)  ; Saturate(value)
  %1229 = call float @dx.op.unary.f32(i32 7, float %1226)  ; Saturate(value)
  %1230 = call float @dx.op.unary.f32(i32 7, float %1227)  ; Saturate(value)
  %1231 = extractvalue %dx.types.CBufRet.f32 %1140, 1
  %1232 = fmul fast float %1228, 0x3FE413A920000000
  %1233 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %1229, float %1232)  ; FMad(a,b,c)
  %1234 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %1230, float %1233)  ; FMad(a,b,c)
  %1235 = fmul fast float %1228, 0x3FB1B089A0000000
  %1236 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %1229, float %1235)  ; FMad(a,b,c)
  %1237 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %1230, float %1236)  ; FMad(a,b,c)
  %1238 = fmul fast float %1228, 0x3F90CB2960000000
  %1239 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %1229, float %1238)  ; FMad(a,b,c)
  %1240 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %1230, float %1239)  ; FMad(a,b,c)
  %1241 = fmul fast float %1234, %1231
  %1242 = fmul fast float %1237, %1231
  %1243 = fmul fast float %1240, %1231
  %1244 = fmul fast float %1241, 0x3F847AE140000000
  %1245 = fmul fast float %1242, 0x3F847AE140000000
  %1246 = fmul fast float %1243, 0x3F847AE140000000
  %1247 = fmul fast float %1241, 0x40B4D2F520000000
  %1248 = fmul fast float %1242, 0x40B4D2F520000000
  %1249 = fmul fast float %1243, 0x40B4D2F520000000
  %1250 = fadd fast float %1247, 0x41869ECF20000000
  %1251 = fadd fast float %1248, 0x41869ECF20000000
  %1252 = fadd fast float %1249, 0x41869ECF20000000
  %1253 = fmul fast float %1250, %1244
  %1254 = fmul fast float %1251, %1245
  %1255 = fmul fast float %1252, %1246
  %1256 = fadd fast float %1253, 0x417BB79C60000000
  %1257 = fadd fast float %1254, 0x417BB79C60000000
  %1258 = fadd fast float %1255, 0x417BB79C60000000
  %1259 = fmul fast float %1256, %1244
  %1260 = fmul fast float %1257, %1245
  %1261 = fmul fast float %1258, %1246
  %1262 = fadd fast float %1259, 0x41218DE180000000
  %1263 = fadd fast float %1260, 0x41218DE180000000
  %1264 = fadd fast float %1261, 0x41218DE180000000
  %1265 = fmul fast float %1262, %1244
  %1266 = fmul fast float %1263, %1245
  %1267 = fmul fast float %1264, %1246
  %1268 = fadd fast float %1265, 0x4077F174E0000000
  %1269 = fadd fast float %1266, 0x4077F174E0000000
  %1270 = fadd fast float %1267, 0x4077F174E0000000
  %1271 = fmul fast float %1268, %1244
  %1272 = fmul fast float %1269, %1245
  %1273 = fmul fast float %1270, %1246
  %1274 = fadd fast float %1271, 0x3F3FF79B80000000
  %1275 = fadd fast float %1272, 0x3F3FF79B80000000
  %1276 = fadd fast float %1273, 0x3F3FF79B80000000
  %1277 = fmul fast float %1241, 0x412442D320000000
  %1278 = fmul fast float %1242, 0x412442D320000000
  %1279 = fmul fast float %1243, 0x412442D320000000
  %1280 = fadd fast float %1277, 0x419385D5C0000000
  %1281 = fadd fast float %1278, 0x419385D5C0000000
  %1282 = fadd fast float %1279, 0x419385D5C0000000
  %1283 = fmul fast float %1280, %1244
  %1284 = fmul fast float %1281, %1245
  %1285 = fmul fast float %1282, %1246
  %1286 = fadd fast float %1283, 4.182885e+06
  %1287 = fadd fast float %1284, 4.182885e+06
  %1288 = fadd fast float %1285, 4.182885e+06
  %1289 = fmul fast float %1286, %1244
  %1290 = fmul fast float %1287, %1245
  %1291 = fmul fast float %1288, %1246
  %1292 = fadd fast float %1289, 0x40C4D633C0000000
  %1293 = fadd fast float %1290, 0x40C4D633C0000000
  %1294 = fadd fast float %1291, 0x40C4D633C0000000
  %1295 = fmul fast float %1292, %1244
  %1296 = fmul fast float %1293, %1245
  %1297 = fmul fast float %1294, %1246
  %1298 = fadd fast float %1295, 1.000000e+00
  %1299 = fadd fast float %1296, 1.000000e+00
  %1300 = fadd fast float %1297, 1.000000e+00
  %1301 = fdiv fast float %1274, %1298
  %1302 = fdiv fast float %1275, %1299
  %1303 = fdiv fast float %1276, %1300
  %1304 = extractvalue %dx.types.CBufRet.f32 %1140, 2
  %1305 = extractvalue %dx.types.CBufRet.f32 %1140, 3
  %1306 = fmul fast float %1304, %1301
  %1307 = fmul fast float %1304, %1302
  %1308 = fmul fast float %1304, %1303
  %1309 = fadd fast float %1306, %1305
  %1310 = fadd fast float %1307, %1305
  %1311 = fadd fast float %1308, %1305
  br label %1446

; <label>:1312                                    ; preds = %1159
  %1313 = fmul fast float %1133, 0x4163D57C00000000
  %1314 = fmul fast float %1136, 0x4163D57C00000000
  %1315 = fmul fast float %1139, 0x4163D57C00000000
  %1316 = fadd fast float %1313, 9.999980e+05
  %1317 = fadd fast float %1314, 9.999980e+05
  %1318 = fadd fast float %1315, 9.999980e+05
  %1319 = fmul fast float %1316, %1133
  %1320 = fmul fast float %1317, %1136
  %1321 = fmul fast float %1318, %1139
  %1322 = fadd fast float %1319, 0xC0AFE17A60000000
  %1323 = fadd fast float %1320, 0xC0AFE17A60000000
  %1324 = fadd fast float %1321, 0xC0AFE17A60000000
  %1325 = fmul fast float %1322, %1133
  %1326 = fmul fast float %1323, %1136
  %1327 = fmul fast float %1324, %1139
  %1328 = fmul fast float %1133, 0x40F753C340000000
  %1329 = fmul fast float %1136, 0x40F753C340000000
  %1330 = fmul fast float %1139, 0x40F753C340000000
  %1331 = fsub fast float 9.999990e+06, %1328
  %1332 = fsub fast float 9.999990e+06, %1329
  %1333 = fsub fast float 9.999990e+06, %1330
  %1334 = fmul fast float %1331, %1133
  %1335 = fmul fast float %1332, %1136
  %1336 = fmul fast float %1333, %1139
  %1337 = fadd fast float %1334, 0x4136D1DD80000000
  %1338 = fadd fast float %1335, 0x4136D1DD80000000
  %1339 = fadd fast float %1336, 0x4136D1DD80000000
  %1340 = fmul fast float %1337, %1133
  %1341 = fmul fast float %1338, %1136
  %1342 = fmul fast float %1339, %1139
  %1343 = fadd fast float %1340, 1.000000e+00
  %1344 = fadd fast float %1341, 1.000000e+00
  %1345 = fadd fast float %1342, 1.000000e+00
  %1346 = fdiv fast float %1325, %1343
  %1347 = fdiv fast float %1326, %1344
  %1348 = fdiv fast float %1327, %1345
  %1349 = call float @dx.op.unary.f32(i32 7, float %1346)  ; Saturate(value)
  %1350 = call float @dx.op.unary.f32(i32 7, float %1347)  ; Saturate(value)
  %1351 = call float @dx.op.unary.f32(i32 7, float %1348)  ; Saturate(value)
  %1352 = extractvalue %dx.types.CBufRet.f32 %1140, 1
  %1353 = fmul fast float %1349, 0x3FEA519BC0000000
  %1354 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %1350, float %1353)  ; FMad(a,b,c)
  %1355 = fmul fast float %1349, 0x3FA0FED480000000
  %1356 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %1350, float %1355)  ; FMad(a,b,c)
  %1357 = fmul fast float %1349, 0x3F917E1C00000000
  %1358 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %1350, float %1357)  ; FMad(a,b,c)
  %1359 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %1351, float %1358)  ; FMad(a,b,c)
  %1360 = call float @dx.op.binary.f32(i32 35, float %1349, float %1350)  ; FMax(a,b)
  %1361 = call float @dx.op.binary.f32(i32 35, float %1360, float %1351)  ; FMax(a,b)
  %1362 = fadd fast float %1361, -1.000000e+00
  %1363 = fmul fast float %1362, 2.500000e-01
  %1364 = call float @dx.op.unary.f32(i32 7, float %1363)  ; Saturate(value)
  %1365 = fsub fast float 1.000000e+00, %1364
  %1366 = fmul fast float %1365, %1354
  %1367 = fmul fast float %1365, %1356
  %1368 = fmul fast float %1365, %1359
  %1369 = fmul fast float %1364, %1349
  %1370 = fmul fast float %1364, %1350
  %1371 = fmul fast float %1364, %1351
  %1372 = fadd fast float %1366, %1369
  %1373 = fadd fast float %1367, %1370
  %1374 = fadd fast float %1368, %1371
  %1375 = fmul fast float %1372, %1352
  %1376 = fmul fast float %1373, %1352
  %1377 = fmul fast float %1374, %1352
  %1378 = fmul fast float %1375, 0x3F847AE140000000
  %1379 = fmul fast float %1376, 0x3F847AE140000000
  %1380 = fmul fast float %1377, 0x3F847AE140000000
  %1381 = fmul fast float %1375, 0x40B4D2F520000000
  %1382 = fmul fast float %1376, 0x40B4D2F520000000
  %1383 = fmul fast float %1377, 0x40B4D2F520000000
  %1384 = fadd fast float %1381, 0x41869ECF20000000
  %1385 = fadd fast float %1382, 0x41869ECF20000000
  %1386 = fadd fast float %1383, 0x41869ECF20000000
  %1387 = fmul fast float %1384, %1378
  %1388 = fmul fast float %1385, %1379
  %1389 = fmul fast float %1386, %1380
  %1390 = fadd fast float %1387, 0x417BB79C60000000
  %1391 = fadd fast float %1388, 0x417BB79C60000000
  %1392 = fadd fast float %1389, 0x417BB79C60000000
  %1393 = fmul fast float %1390, %1378
  %1394 = fmul fast float %1391, %1379
  %1395 = fmul fast float %1392, %1380
  %1396 = fadd fast float %1393, 0x41218DE180000000
  %1397 = fadd fast float %1394, 0x41218DE180000000
  %1398 = fadd fast float %1395, 0x41218DE180000000
  %1399 = fmul fast float %1396, %1378
  %1400 = fmul fast float %1397, %1379
  %1401 = fmul fast float %1398, %1380
  %1402 = fadd fast float %1399, 0x4077F174E0000000
  %1403 = fadd fast float %1400, 0x4077F174E0000000
  %1404 = fadd fast float %1401, 0x4077F174E0000000
  %1405 = fmul fast float %1402, %1378
  %1406 = fmul fast float %1403, %1379
  %1407 = fmul fast float %1404, %1380
  %1408 = fadd fast float %1405, 0x3F3FF79B80000000
  %1409 = fadd fast float %1406, 0x3F3FF79B80000000
  %1410 = fadd fast float %1407, 0x3F3FF79B80000000
  %1411 = fmul fast float %1375, 0x412442D320000000
  %1412 = fmul fast float %1376, 0x412442D320000000
  %1413 = fmul fast float %1377, 0x412442D320000000
  %1414 = fadd fast float %1411, 0x419385D5C0000000
  %1415 = fadd fast float %1412, 0x419385D5C0000000
  %1416 = fadd fast float %1413, 0x419385D5C0000000
  %1417 = fmul fast float %1414, %1378
  %1418 = fmul fast float %1415, %1379
  %1419 = fmul fast float %1416, %1380
  %1420 = fadd fast float %1417, 4.182885e+06
  %1421 = fadd fast float %1418, 4.182885e+06
  %1422 = fadd fast float %1419, 4.182885e+06
  %1423 = fmul fast float %1420, %1378
  %1424 = fmul fast float %1421, %1379
  %1425 = fmul fast float %1422, %1380
  %1426 = fadd fast float %1423, 0x40C4D633C0000000
  %1427 = fadd fast float %1424, 0x40C4D633C0000000
  %1428 = fadd fast float %1425, 0x40C4D633C0000000
  %1429 = fmul fast float %1426, %1378
  %1430 = fmul fast float %1427, %1379
  %1431 = fmul fast float %1428, %1380
  %1432 = fadd fast float %1429, 1.000000e+00
  %1433 = fadd fast float %1430, 1.000000e+00
  %1434 = fadd fast float %1431, 1.000000e+00
  %1435 = fdiv fast float %1408, %1432
  %1436 = fdiv fast float %1409, %1433
  %1437 = fdiv fast float %1410, %1434
  %1438 = extractvalue %dx.types.CBufRet.f32 %1140, 2
  %1439 = extractvalue %dx.types.CBufRet.f32 %1140, 3
  %1440 = fmul fast float %1438, %1435
  %1441 = fmul fast float %1438, %1436
  %1442 = fmul fast float %1438, %1437
  %1443 = fadd fast float %1440, %1439
  %1444 = fadd fast float %1441, %1439
  %1445 = fadd fast float %1442, %1439
  br label %1446

; <label>:1446                                    ; preds = %1312, %1191, %1161, %1159, %1145
  %1447 = phi float [ %1156, %1145 ], [ %1133, %1159 ], [ %1443, %1312 ], [ %1309, %1191 ], [ %1188, %1161 ]
  %1448 = phi float [ %1157, %1145 ], [ %1136, %1159 ], [ %1444, %1312 ], [ %1310, %1191 ], [ %1189, %1161 ]
  %1449 = phi float [ %1158, %1145 ], [ %1139, %1159 ], [ %1445, %1312 ], [ %1311, %1191 ], [ %1190, %1161 ]
  %1450 = fmul fast float %1447, %1118
  %1451 = fmul fast float %1448, %1118
  %1452 = fmul fast float %1449, %1118
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1450)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1451)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1452)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1118)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!28}
!dx.entryPoints = !{!29}

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
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 5, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 6, i32 1, i32 2, i32 0, !7}
!17 = !{i32 10, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 71, i32 1, i32 4, i32 0, !7}
!18 = !{!19, !20, !21}
!19 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!20 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 320, null}
!21 = !{i32 2, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 272, null}
!22 = !{!23, !24, !25, !26, !27}
!23 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!24 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!25 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!26 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!27 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!28 = !{[26 x i32] [i32 24, i32 4, i32 15, i32 15, i32 0, i32 0, i32 7, i32 7, i32 7, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 7, i32 7]}
!29 = !{void ()* @ps_main, !"ps_main", !30, !4, null}
!30 = !{!31, !52, null}
!31 = !{!32, !35, !37, !38, !40, !42, !44, !46, !48, !50}
!32 = !{i32 0, !"SV_Position", i8 9, i8 3, !33, i8 4, i32 1, i8 4, i32 0, i8 0, !34}
!33 = !{i32 0}
!34 = !{i32 3, i32 3}
!35 = !{i32 1, !"COLOR", i8 9, i8 0, !33, i8 2, i32 1, i8 4, i32 1, i8 0, !36}
!36 = !{i32 3, i32 15}
!37 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !33, i8 2, i32 1, i8 2, i32 2, i8 0, !34}
!38 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !39, i8 2, i32 1, i8 2, i32 2, i8 2, !34}
!39 = !{i32 2}
!40 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !41, i8 2, i32 1, i8 2, i32 3, i8 0, !34}
!41 = !{i32 3}
!42 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !43, i8 2, i32 1, i8 2, i32 3, i8 2, !34}
!43 = !{i32 4}
!44 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !45, i8 2, i32 1, i8 2, i32 4, i8 0, !34}
!45 = !{i32 5}
!46 = !{i32 7, !"TEXCOORD", i8 9, i8 0, !47, i8 2, i32 1, i8 2, i32 4, i8 2, !34}
!47 = !{i32 6}
!48 = !{i32 8, !"TEXCOORD", i8 9, i8 0, !49, i8 2, i32 1, i8 2, i32 5, i8 0, !34}
!49 = !{i32 1}
!50 = !{i32 9, !"TEXCOORD", i8 9, i8 0, !51, i8 2, i32 1, i8 2, i32 5, i8 2, !34}
!51 = !{i32 7}
!52 = !{!53}
!53 = !{i32 0, !"SV_Target", i8 9, i8 16, !33, i8 0, i32 1, i8 4, i32 0, i8 0, !36}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 1}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 1}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 1}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}

