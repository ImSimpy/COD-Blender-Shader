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
; shader hash: 42c2dc51fd0280ba878389df391bf571
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
;   [336 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [64 x i8] (type annotation not present)
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
;                                   cbuffer      NA          NA     CB3            cb4     1
;                                   sampler      NA          NA      S0             s2     1
;                                   sampler      NA          NA      S1             s3     1
;                                   sampler      NA          NA      S2             s4     1
;                                   texture     f32          3d      T0     t74,space2     1
;                                   texture     f32          2d      T1     t73,space2     1
;                                   texture     f32          2d      T2     t70,space2     1
;                                   texture    byte         r/o      T3     t15,space1     1
;                                   texture     f32          2d      T4     t76,space2     1
;                                   texture     f32          2d      T5             t0     1
;                                   texture     f32          2d      T6             t1     1
;                                   texture     f32          2d      T7             t2     1
;                                   texture     f32          2d      T8             t3     1
;                                   texture     f32          2d      T9             t4     1
;                                   texture     f32          2d     T10             t5     1
;                                   texture     f32          3d     T11     t71,space2     1
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
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%perObject = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%tonemapping = type { i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 71, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 76, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 70, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 73, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 74, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %41 = extractvalue %dx.types.CBufRet.f32 %40, 0
  %42 = extractvalue %dx.types.CBufRet.f32 %40, 1
  %43 = fsub fast float %38, %41
  %44 = fsub fast float %39, %42
  %45 = extractvalue %dx.types.CBufRet.f32 %40, 2
  %46 = extractvalue %dx.types.CBufRet.f32 %40, 3
  %47 = fmul fast float %43, %45
  %48 = fmul fast float %44, %46
  %49 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.f32 %49, 0
  %51 = extractvalue %dx.types.CBufRet.f32 %49, 1
  %52 = fmul fast float %47, %50
  %53 = fmul fast float %48, %51
  %54 = fptoui float %52 to i32
  %55 = fptoui float %53 to i32
  %56 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.i32 %56, 1
  %58 = shl i32 %57, 2
  %59 = extractvalue %dx.types.CBufRet.i32 %56, 3
  %60 = add i32 %58, %59
  %61 = lshr i32 %55, 2
  %62 = extractvalue %dx.types.CBufRet.i32 %56, 2
  %63 = mul i32 %61, %62
  %64 = lshr i32 %54, 3
  %65 = add i32 %60, %64
  %66 = add i32 %65, %63
  %67 = shl i32 %66, 2
  %68 = shl i32 %55, 3
  %69 = and i32 %68, 24
  %70 = and i32 %54, 7
  %71 = or i32 %69, %70
  %72 = shl i32 1, %71
  %73 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %67, i32 undef)  ; BufferLoad(srv,index,wot)
  %74 = extractvalue %dx.types.ResRet.i32 %73, 0
  %75 = and i32 %74, %72
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78, !dx.controlflow.hints !53

; <label>:77                                      ; preds = %0
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %78

; <label>:78                                      ; preds = %77, %0
  %79 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %80 = extractvalue %dx.types.CBufRet.f32 %79, 3
  %81 = fcmp fast ogt float %80, 0.000000e+00
  br i1 %81, label %82, label %132, !dx.controlflow.hints !54

; <label>:82                                      ; preds = %78
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.f32 %83, 3
  %85 = fmul fast float %84, 1.000000e+01
  %86 = call float @dx.op.unary.f32(i32 27, float %85)  ; Round_ni(value)
  %87 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %88 = extractvalue %dx.types.CBufRet.f32 %87, 0
  %89 = extractvalue %dx.types.CBufRet.f32 %87, 1
  %90 = fmul fast float %88, %38
  %91 = fmul fast float %89, %39
  %92 = call float @dx.op.unary.f32(i32 27, float %90)  ; Round_ni(value)
  %93 = call float @dx.op.unary.f32(i32 27, float %91)  ; Round_ni(value)
  %94 = fmul fast float %86, 0x4002B851E0000000
  %95 = call float @dx.op.unary.f32(i32 22, float %94)  ; Frc(value)
  %96 = fadd fast float %95, 0x3FB99999A0000000
  %97 = fadd fast float %96, %92
  %98 = fadd fast float %96, %93
  %99 = fmul fast float %97, 0x3FE1BEDF00000000
  %100 = call float @dx.op.unary.f32(i32 22, float %99)  ; Frc(value)
  %101 = fmul fast float %97, %100
  %102 = fadd fast float %101, %98
  %103 = fmul fast float %98, 0x3FD3BEBE20000000
  %104 = call float @dx.op.unary.f32(i32 22, float %103)  ; Frc(value)
  %105 = fmul fast float %98, %104
  %106 = fadd fast float %105, %97
  %107 = fmul fast float %102, %106
  %108 = call float @dx.op.unary.f32(i32 22, float %107)  ; Frc(value)
  %109 = extractvalue %dx.types.CBufRet.f32 %87, 3
  %110 = bitcast float %109 to i32
  %111 = and i32 %110, 255
  %112 = uitofp i32 %111 to float
  %113 = fmul fast float %108, 0x4085373340000000
  %114 = call float @dx.op.unary.f32(i32 22, float %113)  ; Frc(value)
  %115 = fmul fast float %112, 0x3F6CE9B6A0000000
  %116 = fcmp fast olt float %114, %115
  br i1 %116, label %117, label %132, !dx.controlflow.hints !55

; <label>:117                                     ; preds = %82
  %118 = fdiv fast float %114, %115
  %119 = fmul fast float %118, 2.000000e+00
  %120 = fadd fast float %119, -1.000000e+00
  %121 = lshr i32 %110, 8
  %122 = and i32 %121, 255
  %123 = uitofp i32 %122 to float
  %124 = call float @dx.op.unary.f32(i32 83, float %32)  ; DerivCoarseX(value)
  %125 = call float @dx.op.unary.f32(i32 83, float %33)  ; DerivCoarseX(value)
  %126 = fmul fast float %120, %124
  %127 = fmul fast float %126, %123
  %128 = fmul fast float %125, %120
  %129 = fmul fast float %128, %123
  %130 = fadd fast float %127, %32
  %131 = fadd fast float %129, %33
  br label %132

; <label>:132                                     ; preds = %117, %82, %78
  %133 = phi float [ %130, %117 ], [ %32, %82 ], [ %32, %78 ]
  %134 = phi float [ %131, %117 ], [ %33, %82 ], [ %33, %78 ]
  %135 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %15, float %133, float %134, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %136 = extractvalue %dx.types.ResRet.f32 %135, 3
  %137 = fmul fast float %136, 2.000000e+00
  %138 = fadd fast float %137, -1.000000e+00
  %139 = call float @dx.op.unary.f32(i32 83, float %138)  ; DerivCoarseX(value)
  %140 = call float @dx.op.unary.f32(i32 84, float %138)  ; DerivCoarseY(value)
  %141 = fmul fast float %139, %139
  %142 = fmul fast float %140, %140
  %143 = fadd fast float %142, %141
  %144 = call float @dx.op.unary.f32(i32 24, float %143)  ; Sqrt(value)
  %145 = fmul fast float %144, 2.000000e+00
  %146 = fadd fast float %144, %138
  %147 = fdiv fast float %146, %145
  %148 = call float @dx.op.unary.f32(i32 7, float %147)  ; Saturate(value)
  %149 = fmul fast float %148, 2.000000e+00
  %150 = fsub fast float 3.000000e+00, %149
  %151 = fmul fast float %148, %148
  %152 = fmul fast float %151, %150
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.f32 %153, 0
  %155 = extractvalue %dx.types.CBufRet.f32 %153, 1
  %156 = extractvalue %dx.types.CBufRet.f32 %153, 2
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.f32 %157, 0
  %159 = extractvalue %dx.types.CBufRet.f32 %157, 1
  %160 = extractvalue %dx.types.CBufRet.f32 %157, 2
  %161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 0
  %164 = extractvalue %dx.types.CBufRet.f32 %162, 1
  %165 = fcmp fast une float %163, %164
  br i1 %165, label %166, label %183

; <label>:166                                     ; preds = %132
  %167 = extractvalue %dx.types.CBufRet.f32 %161, 0
  %168 = fadd fast float %167, %133
  %169 = extractvalue %dx.types.CBufRet.f32 %161, 1
  %170 = fadd fast float %169, %134
  %171 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %15, float %168, float %170, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %172 = extractvalue %dx.types.ResRet.f32 %171, 3
  %173 = fmul fast float %172, 2.000000e+00
  %174 = fadd fast float %173, -1.000000e+00
  %175 = fsub fast float %164, %163
  %176 = fsub fast float %174, %163
  %177 = fdiv fast float %176, %175
  %178 = call float @dx.op.unary.f32(i32 7, float %177)  ; Saturate(value)
  %179 = fmul fast float %178, 2.000000e+00
  %180 = fsub fast float 3.000000e+00, %179
  %181 = fmul fast float %178, %178
  %182 = fmul fast float %181, %180
  br label %183

; <label>:183                                     ; preds = %166, %132
  %184 = phi float [ %182, %166 ], [ 0.000000e+00, %132 ]
  %185 = extractvalue %dx.types.CBufRet.f32 %162, 2
  %186 = extractvalue %dx.types.CBufRet.f32 %162, 3
  %187 = fcmp fast une float %185, %186
  br i1 %187, label %188, label %197

; <label>:188                                     ; preds = %183
  %189 = fsub fast float %186, %185
  %190 = fsub fast float %138, %185
  %191 = fdiv fast float %190, %189
  %192 = call float @dx.op.unary.f32(i32 7, float %191)  ; Saturate(value)
  %193 = fmul fast float %192, 2.000000e+00
  %194 = fsub fast float 3.000000e+00, %193
  %195 = fmul fast float %192, %192
  %196 = fmul fast float %195, %194
  br label %197

; <label>:197                                     ; preds = %188, %183
  %198 = phi float [ %196, %188 ], [ 0.000000e+00, %183 ]
  %199 = fsub fast float %158, %154
  %200 = fsub fast float %159, %155
  %201 = fsub fast float %160, %156
  %202 = fmul fast float %198, %199
  %203 = fmul fast float %198, %200
  %204 = fmul fast float %198, %201
  %205 = fadd fast float %202, %154
  %206 = fadd fast float %203, %155
  %207 = fadd fast float %204, %156
  %208 = fsub fast float %34, %205
  %209 = fsub fast float %35, %206
  %210 = fsub fast float %36, %207
  %211 = fmul fast float %208, %152
  %212 = fmul fast float %209, %152
  %213 = fmul fast float %210, %152
  %214 = fadd fast float %211, %205
  %215 = fadd fast float %212, %206
  %216 = fadd fast float %213, %207
  %217 = fsub fast float %198, %184
  %218 = fmul fast float %217, %198
  %219 = fadd fast float %218, %184
  %220 = fsub fast float %152, %219
  %221 = fmul fast float %220, %152
  %222 = fadd fast float %221, %219
  %223 = fmul fast float %222, %37
  %224 = fcmp fast ole float %214, 0x3FA4B5DCC0000000
  %225 = fmul fast float %214, 0x3FB3D07220000000
  %226 = fadd fast float %214, 0x3FAC28F5C0000000
  %227 = fmul fast float %226, 0x3FEE54EDE0000000
  %228 = call float @dx.op.unary.f32(i32 23, float %227)  ; Log(value)
  %229 = fmul fast float %228, 0x4003333340000000
  %230 = call float @dx.op.unary.f32(i32 21, float %229)  ; Exp(value)
  %231 = select i1 %224, float %225, float %230
  %232 = fcmp fast ole float %215, 0x3FA4B5DCC0000000
  %233 = fmul fast float %215, 0x3FB3D07220000000
  %234 = fadd fast float %215, 0x3FAC28F5C0000000
  %235 = fmul fast float %234, 0x3FEE54EDE0000000
  %236 = call float @dx.op.unary.f32(i32 23, float %235)  ; Log(value)
  %237 = fmul fast float %236, 0x4003333340000000
  %238 = call float @dx.op.unary.f32(i32 21, float %237)  ; Exp(value)
  %239 = select i1 %232, float %233, float %238
  %240 = fcmp fast ole float %216, 0x3FA4B5DCC0000000
  %241 = fmul fast float %216, 0x3FB3D07220000000
  %242 = fadd fast float %216, 0x3FAC28F5C0000000
  %243 = fmul fast float %242, 0x3FEE54EDE0000000
  %244 = call float @dx.op.unary.f32(i32 23, float %243)  ; Log(value)
  %245 = fmul fast float %244, 0x4003333340000000
  %246 = call float @dx.op.unary.f32(i32 21, float %245)  ; Exp(value)
  %247 = select i1 %240, float %241, float %246
  %248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %249 = extractvalue %dx.types.CBufRet.f32 %248, 3
  %250 = bitcast float %249 to i32
  %251 = lshr i32 %250, 4
  %252 = lshr i32 %250, 9
  %253 = and i32 %252, 1
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %349, label %255

; <label>:255                                     ; preds = %197
  %256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %257 = extractvalue %dx.types.CBufRet.f32 %256, 3
  %258 = bitcast float %257 to i32
  %259 = and i32 %258, 65535
  %260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %259)  ; LegacyF16ToF32(value)
  %261 = lshr i32 %258, 16
  %262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %261)  ; LegacyF16ToF32(value)
  %263 = extractvalue %dx.types.CBufRet.f32 %256, 2
  %264 = bitcast float %263 to i32
  %265 = and i32 %264, 65535
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = lshr i32 %264, 16
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = and i32 %251, 1
  %270 = icmp ne i32 %269, 0
  %271 = fcmp fast ogt float %260, 0.000000e+00
  %272 = fcmp fast ogt float %262, 0.000000e+00
  %273 = and i1 %271, %272
  %274 = fcmp fast ogt float %266, 0.000000e+00
  br i1 %273, label %275, label %335

; <label>:275                                     ; preds = %255
  br i1 %274, label %276, label %284

; <label>:276                                     ; preds = %275
  %277 = fmul fast float %262, %31
  %278 = fmul fast float %260, %30
  %279 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %13, float %278, float %277, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %280 = extractvalue %dx.types.ResRet.f32 %279, 0
  %281 = fsub fast float 1.000000e+00, %280
  %282 = select i1 %270, float %281, float %280
  %283 = fmul fast float %282, %266
  br label %284

; <label>:284                                     ; preds = %276, %275
  %285 = phi float [ %283, %276 ], [ 0.000000e+00, %275 ]
  %286 = fadd fast float %285, %268
  %287 = call float @dx.op.unary.f32(i32 7, float %286)  ; Saturate(value)
  br i1 %274, label %288, label %298

; <label>:288                                     ; preds = %284
  %289 = fmul fast float %262, %31
  %290 = fsub fast float 1.000000e+00, %30
  %291 = fmul fast float %260, %290
  %292 = fsub fast float 1.000000e+00, %291
  %293 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %13, float %292, float %289, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %294 = extractvalue %dx.types.ResRet.f32 %293, 1
  %295 = fsub fast float 1.000000e+00, %294
  %296 = select i1 %270, float %295, float %294
  %297 = fmul fast float %296, %266
  br label %298

; <label>:298                                     ; preds = %288, %284
  %299 = phi float [ %297, %288 ], [ 0.000000e+00, %284 ]
  %300 = fadd fast float %299, %268
  %301 = call float @dx.op.unary.f32(i32 7, float %300)  ; Saturate(value)
  %302 = fmul fast float %301, %287
  br i1 %274, label %303, label %315

; <label>:303                                     ; preds = %298
  %304 = fsub fast float 1.000000e+00, %31
  %305 = fmul fast float %262, %304
  %306 = fsub fast float 1.000000e+00, %305
  %307 = fsub fast float 1.000000e+00, %30
  %308 = fmul fast float %260, %307
  %309 = fsub fast float 1.000000e+00, %308
  %310 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %13, float %309, float %306, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %311 = extractvalue %dx.types.ResRet.f32 %310, 2
  %312 = fsub fast float 1.000000e+00, %311
  %313 = select i1 %270, float %312, float %311
  %314 = fmul fast float %313, %266
  br label %315

; <label>:315                                     ; preds = %303, %298
  %316 = phi float [ %314, %303 ], [ 0.000000e+00, %298 ]
  %317 = fadd fast float %316, %268
  %318 = call float @dx.op.unary.f32(i32 7, float %317)  ; Saturate(value)
  %319 = fmul fast float %302, %318
  br i1 %274, label %320, label %330

; <label>:320                                     ; preds = %315
  %321 = fsub fast float 1.000000e+00, %31
  %322 = fmul fast float %262, %321
  %323 = fsub fast float 1.000000e+00, %322
  %324 = fmul fast float %260, %30
  %325 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %13, float %324, float %323, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %326 = extractvalue %dx.types.ResRet.f32 %325, 3
  %327 = fsub fast float 1.000000e+00, %326
  %328 = select i1 %270, float %327, float %326
  %329 = fmul fast float %328, %266
  br label %330

; <label>:330                                     ; preds = %320, %315
  %331 = phi float [ %329, %320 ], [ 0.000000e+00, %315 ]
  %332 = fadd fast float %331, %268
  %333 = call float @dx.op.unary.f32(i32 7, float %332)  ; Saturate(value)
  %334 = fmul fast float %319, %333
  br label %346

; <label>:335                                     ; preds = %255
  br i1 %274, label %336, label %342

; <label>:336                                     ; preds = %335
  %337 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %13, float %30, float %31, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %338 = extractvalue %dx.types.ResRet.f32 %337, 0
  %339 = fsub fast float 1.000000e+00, %338
  %340 = select i1 %270, float %339, float %338
  %341 = fmul fast float %340, %266
  br label %342

; <label>:342                                     ; preds = %336, %335
  %343 = phi float [ %341, %336 ], [ 0.000000e+00, %335 ]
  %344 = fadd fast float %343, %268
  %345 = call float @dx.op.unary.f32(i32 7, float %344)  ; Saturate(value)
  br label %346

; <label>:346                                     ; preds = %342, %330
  %347 = phi float [ %334, %330 ], [ %345, %342 ]
  %348 = fmul fast float %347, %223
  br label %349

; <label>:349                                     ; preds = %346, %197
  %350 = phi float [ %348, %346 ], [ %223, %197 ]
  %351 = and i32 %252, 2
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %447, label %353

; <label>:353                                     ; preds = %349
  %354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %355 = extractvalue %dx.types.CBufRet.f32 %354, 3
  %356 = bitcast float %355 to i32
  %357 = and i32 %356, 65535
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = lshr i32 %356, 16
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = extractvalue %dx.types.CBufRet.f32 %354, 2
  %362 = bitcast float %361 to i32
  %363 = and i32 %362, 65535
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = lshr i32 %362, 16
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = and i32 %251, 2
  %368 = icmp ne i32 %367, 0
  %369 = fcmp fast ogt float %358, 0.000000e+00
  %370 = fcmp fast ogt float %360, 0.000000e+00
  %371 = and i1 %369, %370
  %372 = fcmp fast ogt float %364, 0.000000e+00
  br i1 %371, label %373, label %433

; <label>:373                                     ; preds = %353
  br i1 %372, label %374, label %382

; <label>:374                                     ; preds = %373
  %375 = fmul fast float %360, %29
  %376 = fmul fast float %358, %28
  %377 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %13, float %376, float %375, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %378 = extractvalue %dx.types.ResRet.f32 %377, 0
  %379 = fsub fast float 1.000000e+00, %378
  %380 = select i1 %368, float %379, float %378
  %381 = fmul fast float %380, %364
  br label %382

; <label>:382                                     ; preds = %374, %373
  %383 = phi float [ %381, %374 ], [ 0.000000e+00, %373 ]
  %384 = fadd fast float %383, %366
  %385 = call float @dx.op.unary.f32(i32 7, float %384)  ; Saturate(value)
  br i1 %372, label %386, label %396

; <label>:386                                     ; preds = %382
  %387 = fmul fast float %360, %29
  %388 = fsub fast float 1.000000e+00, %28
  %389 = fmul fast float %358, %388
  %390 = fsub fast float 1.000000e+00, %389
  %391 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %13, float %390, float %387, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %392 = extractvalue %dx.types.ResRet.f32 %391, 1
  %393 = fsub fast float 1.000000e+00, %392
  %394 = select i1 %368, float %393, float %392
  %395 = fmul fast float %394, %364
  br label %396

; <label>:396                                     ; preds = %386, %382
  %397 = phi float [ %395, %386 ], [ 0.000000e+00, %382 ]
  %398 = fadd fast float %397, %366
  %399 = call float @dx.op.unary.f32(i32 7, float %398)  ; Saturate(value)
  %400 = fmul fast float %399, %385
  br i1 %372, label %401, label %413

; <label>:401                                     ; preds = %396
  %402 = fsub fast float 1.000000e+00, %29
  %403 = fmul fast float %360, %402
  %404 = fsub fast float 1.000000e+00, %403
  %405 = fsub fast float 1.000000e+00, %28
  %406 = fmul fast float %358, %405
  %407 = fsub fast float 1.000000e+00, %406
  %408 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %13, float %407, float %404, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %409 = extractvalue %dx.types.ResRet.f32 %408, 2
  %410 = fsub fast float 1.000000e+00, %409
  %411 = select i1 %368, float %410, float %409
  %412 = fmul fast float %411, %364
  br label %413

; <label>:413                                     ; preds = %401, %396
  %414 = phi float [ %412, %401 ], [ 0.000000e+00, %396 ]
  %415 = fadd fast float %414, %366
  %416 = call float @dx.op.unary.f32(i32 7, float %415)  ; Saturate(value)
  %417 = fmul fast float %400, %416
  br i1 %372, label %418, label %428

; <label>:418                                     ; preds = %413
  %419 = fsub fast float 1.000000e+00, %29
  %420 = fmul fast float %360, %419
  %421 = fsub fast float 1.000000e+00, %420
  %422 = fmul fast float %358, %28
  %423 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %13, float %422, float %421, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %424 = extractvalue %dx.types.ResRet.f32 %423, 3
  %425 = fsub fast float 1.000000e+00, %424
  %426 = select i1 %368, float %425, float %424
  %427 = fmul fast float %426, %364
  br label %428

; <label>:428                                     ; preds = %418, %413
  %429 = phi float [ %427, %418 ], [ 0.000000e+00, %413 ]
  %430 = fadd fast float %429, %366
  %431 = call float @dx.op.unary.f32(i32 7, float %430)  ; Saturate(value)
  %432 = fmul fast float %417, %431
  br label %444

; <label>:433                                     ; preds = %353
  br i1 %372, label %434, label %440

; <label>:434                                     ; preds = %433
  %435 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %13, float %28, float %29, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %436 = extractvalue %dx.types.ResRet.f32 %435, 0
  %437 = fsub fast float 1.000000e+00, %436
  %438 = select i1 %368, float %437, float %436
  %439 = fmul fast float %438, %364
  br label %440

; <label>:440                                     ; preds = %434, %433
  %441 = phi float [ %439, %434 ], [ 0.000000e+00, %433 ]
  %442 = fadd fast float %441, %366
  %443 = call float @dx.op.unary.f32(i32 7, float %442)  ; Saturate(value)
  br label %444

; <label>:444                                     ; preds = %440, %428
  %445 = phi float [ %432, %428 ], [ %443, %440 ]
  %446 = fmul fast float %445, %350
  br label %447

; <label>:447                                     ; preds = %444, %349
  %448 = phi float [ %446, %444 ], [ %350, %349 ]
  %449 = and i32 %252, 4
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %545, label %451

; <label>:451                                     ; preds = %447
  %452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %453 = extractvalue %dx.types.CBufRet.f32 %452, 3
  %454 = bitcast float %453 to i32
  %455 = and i32 %454, 65535
  %456 = call float @dx.op.legacyF16ToF32(i32 131, i32 %455)  ; LegacyF16ToF32(value)
  %457 = lshr i32 %454, 16
  %458 = call float @dx.op.legacyF16ToF32(i32 131, i32 %457)  ; LegacyF16ToF32(value)
  %459 = extractvalue %dx.types.CBufRet.f32 %452, 2
  %460 = bitcast float %459 to i32
  %461 = and i32 %460, 65535
  %462 = call float @dx.op.legacyF16ToF32(i32 131, i32 %461)  ; LegacyF16ToF32(value)
  %463 = lshr i32 %460, 16
  %464 = call float @dx.op.legacyF16ToF32(i32 131, i32 %463)  ; LegacyF16ToF32(value)
  %465 = and i32 %251, 4
  %466 = icmp ne i32 %465, 0
  %467 = fcmp fast ogt float %456, 0.000000e+00
  %468 = fcmp fast ogt float %458, 0.000000e+00
  %469 = and i1 %467, %468
  %470 = fcmp fast ogt float %462, 0.000000e+00
  br i1 %469, label %471, label %531

; <label>:471                                     ; preds = %451
  br i1 %470, label %472, label %480

; <label>:472                                     ; preds = %471
  %473 = fmul fast float %458, %27
  %474 = fmul fast float %456, %26
  %475 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %13, float %474, float %473, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %476 = extractvalue %dx.types.ResRet.f32 %475, 0
  %477 = fsub fast float 1.000000e+00, %476
  %478 = select i1 %466, float %477, float %476
  %479 = fmul fast float %478, %462
  br label %480

; <label>:480                                     ; preds = %472, %471
  %481 = phi float [ %479, %472 ], [ 0.000000e+00, %471 ]
  %482 = fadd fast float %481, %464
  %483 = call float @dx.op.unary.f32(i32 7, float %482)  ; Saturate(value)
  br i1 %470, label %484, label %494

; <label>:484                                     ; preds = %480
  %485 = fmul fast float %458, %27
  %486 = fsub fast float 1.000000e+00, %26
  %487 = fmul fast float %456, %486
  %488 = fsub fast float 1.000000e+00, %487
  %489 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %13, float %488, float %485, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %490 = extractvalue %dx.types.ResRet.f32 %489, 1
  %491 = fsub fast float 1.000000e+00, %490
  %492 = select i1 %466, float %491, float %490
  %493 = fmul fast float %492, %462
  br label %494

; <label>:494                                     ; preds = %484, %480
  %495 = phi float [ %493, %484 ], [ 0.000000e+00, %480 ]
  %496 = fadd fast float %495, %464
  %497 = call float @dx.op.unary.f32(i32 7, float %496)  ; Saturate(value)
  %498 = fmul fast float %497, %483
  br i1 %470, label %499, label %511

; <label>:499                                     ; preds = %494
  %500 = fsub fast float 1.000000e+00, %27
  %501 = fmul fast float %458, %500
  %502 = fsub fast float 1.000000e+00, %501
  %503 = fsub fast float 1.000000e+00, %26
  %504 = fmul fast float %456, %503
  %505 = fsub fast float 1.000000e+00, %504
  %506 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %13, float %505, float %502, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %507 = extractvalue %dx.types.ResRet.f32 %506, 2
  %508 = fsub fast float 1.000000e+00, %507
  %509 = select i1 %466, float %508, float %507
  %510 = fmul fast float %509, %462
  br label %511

; <label>:511                                     ; preds = %499, %494
  %512 = phi float [ %510, %499 ], [ 0.000000e+00, %494 ]
  %513 = fadd fast float %512, %464
  %514 = call float @dx.op.unary.f32(i32 7, float %513)  ; Saturate(value)
  %515 = fmul fast float %498, %514
  br i1 %470, label %516, label %526

; <label>:516                                     ; preds = %511
  %517 = fsub fast float 1.000000e+00, %27
  %518 = fmul fast float %458, %517
  %519 = fsub fast float 1.000000e+00, %518
  %520 = fmul fast float %456, %26
  %521 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %13, float %520, float %519, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %522 = extractvalue %dx.types.ResRet.f32 %521, 3
  %523 = fsub fast float 1.000000e+00, %522
  %524 = select i1 %466, float %523, float %522
  %525 = fmul fast float %524, %462
  br label %526

; <label>:526                                     ; preds = %516, %511
  %527 = phi float [ %525, %516 ], [ 0.000000e+00, %511 ]
  %528 = fadd fast float %527, %464
  %529 = call float @dx.op.unary.f32(i32 7, float %528)  ; Saturate(value)
  %530 = fmul fast float %515, %529
  br label %542

; <label>:531                                     ; preds = %451
  br i1 %470, label %532, label %538

; <label>:532                                     ; preds = %531
  %533 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %13, float %26, float %27, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %534 = extractvalue %dx.types.ResRet.f32 %533, 0
  %535 = fsub fast float 1.000000e+00, %534
  %536 = select i1 %466, float %535, float %534
  %537 = fmul fast float %536, %462
  br label %538

; <label>:538                                     ; preds = %532, %531
  %539 = phi float [ %537, %532 ], [ 0.000000e+00, %531 ]
  %540 = fadd fast float %539, %464
  %541 = call float @dx.op.unary.f32(i32 7, float %540)  ; Saturate(value)
  br label %542

; <label>:542                                     ; preds = %538, %526
  %543 = phi float [ %530, %526 ], [ %541, %538 ]
  %544 = fmul fast float %543, %448
  br label %545

; <label>:545                                     ; preds = %542, %447
  %546 = phi float [ %544, %542 ], [ %448, %447 ]
  %547 = and i32 %252, 8
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %643, label %549

; <label>:549                                     ; preds = %545
  %550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %551 = extractvalue %dx.types.CBufRet.f32 %550, 3
  %552 = bitcast float %551 to i32
  %553 = and i32 %552, 65535
  %554 = call float @dx.op.legacyF16ToF32(i32 131, i32 %553)  ; LegacyF16ToF32(value)
  %555 = lshr i32 %552, 16
  %556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %555)  ; LegacyF16ToF32(value)
  %557 = extractvalue %dx.types.CBufRet.f32 %550, 2
  %558 = bitcast float %557 to i32
  %559 = and i32 %558, 65535
  %560 = call float @dx.op.legacyF16ToF32(i32 131, i32 %559)  ; LegacyF16ToF32(value)
  %561 = lshr i32 %558, 16
  %562 = call float @dx.op.legacyF16ToF32(i32 131, i32 %561)  ; LegacyF16ToF32(value)
  %563 = and i32 %251, 8
  %564 = icmp ne i32 %563, 0
  %565 = fcmp fast ogt float %554, 0.000000e+00
  %566 = fcmp fast ogt float %556, 0.000000e+00
  %567 = and i1 %565, %566
  %568 = fcmp fast ogt float %560, 0.000000e+00
  br i1 %567, label %569, label %629

; <label>:569                                     ; preds = %549
  br i1 %568, label %570, label %578

; <label>:570                                     ; preds = %569
  %571 = fmul fast float %556, %25
  %572 = fmul fast float %554, %24
  %573 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %13, float %572, float %571, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %574 = extractvalue %dx.types.ResRet.f32 %573, 0
  %575 = fsub fast float 1.000000e+00, %574
  %576 = select i1 %564, float %575, float %574
  %577 = fmul fast float %576, %560
  br label %578

; <label>:578                                     ; preds = %570, %569
  %579 = phi float [ %577, %570 ], [ 0.000000e+00, %569 ]
  %580 = fadd fast float %579, %562
  %581 = call float @dx.op.unary.f32(i32 7, float %580)  ; Saturate(value)
  br i1 %568, label %582, label %592

; <label>:582                                     ; preds = %578
  %583 = fmul fast float %556, %25
  %584 = fsub fast float 1.000000e+00, %24
  %585 = fmul fast float %554, %584
  %586 = fsub fast float 1.000000e+00, %585
  %587 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %13, float %586, float %583, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %588 = extractvalue %dx.types.ResRet.f32 %587, 1
  %589 = fsub fast float 1.000000e+00, %588
  %590 = select i1 %564, float %589, float %588
  %591 = fmul fast float %590, %560
  br label %592

; <label>:592                                     ; preds = %582, %578
  %593 = phi float [ %591, %582 ], [ 0.000000e+00, %578 ]
  %594 = fadd fast float %593, %562
  %595 = call float @dx.op.unary.f32(i32 7, float %594)  ; Saturate(value)
  %596 = fmul fast float %595, %581
  br i1 %568, label %597, label %609

; <label>:597                                     ; preds = %592
  %598 = fsub fast float 1.000000e+00, %25
  %599 = fmul fast float %556, %598
  %600 = fsub fast float 1.000000e+00, %599
  %601 = fsub fast float 1.000000e+00, %24
  %602 = fmul fast float %554, %601
  %603 = fsub fast float 1.000000e+00, %602
  %604 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %13, float %603, float %600, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %605 = extractvalue %dx.types.ResRet.f32 %604, 2
  %606 = fsub fast float 1.000000e+00, %605
  %607 = select i1 %564, float %606, float %605
  %608 = fmul fast float %607, %560
  br label %609

; <label>:609                                     ; preds = %597, %592
  %610 = phi float [ %608, %597 ], [ 0.000000e+00, %592 ]
  %611 = fadd fast float %610, %562
  %612 = call float @dx.op.unary.f32(i32 7, float %611)  ; Saturate(value)
  %613 = fmul fast float %596, %612
  br i1 %568, label %614, label %624

; <label>:614                                     ; preds = %609
  %615 = fsub fast float 1.000000e+00, %25
  %616 = fmul fast float %556, %615
  %617 = fsub fast float 1.000000e+00, %616
  %618 = fmul fast float %554, %24
  %619 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %13, float %618, float %617, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %620 = extractvalue %dx.types.ResRet.f32 %619, 3
  %621 = fsub fast float 1.000000e+00, %620
  %622 = select i1 %564, float %621, float %620
  %623 = fmul fast float %622, %560
  br label %624

; <label>:624                                     ; preds = %614, %609
  %625 = phi float [ %623, %614 ], [ 0.000000e+00, %609 ]
  %626 = fadd fast float %625, %562
  %627 = call float @dx.op.unary.f32(i32 7, float %626)  ; Saturate(value)
  %628 = fmul fast float %613, %627
  br label %640

; <label>:629                                     ; preds = %549
  br i1 %568, label %630, label %636

; <label>:630                                     ; preds = %629
  %631 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %13, float %24, float %25, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %632 = extractvalue %dx.types.ResRet.f32 %631, 0
  %633 = fsub fast float 1.000000e+00, %632
  %634 = select i1 %564, float %633, float %632
  %635 = fmul fast float %634, %560
  br label %636

; <label>:636                                     ; preds = %630, %629
  %637 = phi float [ %635, %630 ], [ 0.000000e+00, %629 ]
  %638 = fadd fast float %637, %562
  %639 = call float @dx.op.unary.f32(i32 7, float %638)  ; Saturate(value)
  br label %640

; <label>:640                                     ; preds = %636, %624
  %641 = phi float [ %628, %624 ], [ %639, %636 ]
  %642 = fmul fast float %641, %546
  br label %643

; <label>:643                                     ; preds = %640, %545
  %644 = phi float [ %642, %640 ], [ %546, %545 ]
  %645 = and i32 %252, 16
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %741, label %647

; <label>:647                                     ; preds = %643
  %648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %649 = extractvalue %dx.types.CBufRet.f32 %648, 3
  %650 = bitcast float %649 to i32
  %651 = and i32 %650, 65535
  %652 = call float @dx.op.legacyF16ToF32(i32 131, i32 %651)  ; LegacyF16ToF32(value)
  %653 = lshr i32 %650, 16
  %654 = call float @dx.op.legacyF16ToF32(i32 131, i32 %653)  ; LegacyF16ToF32(value)
  %655 = extractvalue %dx.types.CBufRet.f32 %648, 2
  %656 = bitcast float %655 to i32
  %657 = and i32 %656, 65535
  %658 = call float @dx.op.legacyF16ToF32(i32 131, i32 %657)  ; LegacyF16ToF32(value)
  %659 = lshr i32 %656, 16
  %660 = call float @dx.op.legacyF16ToF32(i32 131, i32 %659)  ; LegacyF16ToF32(value)
  %661 = and i32 %251, 16
  %662 = icmp ne i32 %661, 0
  %663 = fcmp fast ogt float %652, 0.000000e+00
  %664 = fcmp fast ogt float %654, 0.000000e+00
  %665 = and i1 %663, %664
  %666 = fcmp fast ogt float %658, 0.000000e+00
  br i1 %665, label %667, label %727

; <label>:667                                     ; preds = %647
  br i1 %666, label %668, label %676

; <label>:668                                     ; preds = %667
  %669 = fmul fast float %654, %23
  %670 = fmul fast float %652, %22
  %671 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %13, float %670, float %669, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %672 = extractvalue %dx.types.ResRet.f32 %671, 0
  %673 = fsub fast float 1.000000e+00, %672
  %674 = select i1 %662, float %673, float %672
  %675 = fmul fast float %674, %658
  br label %676

; <label>:676                                     ; preds = %668, %667
  %677 = phi float [ %675, %668 ], [ 0.000000e+00, %667 ]
  %678 = fadd fast float %677, %660
  %679 = call float @dx.op.unary.f32(i32 7, float %678)  ; Saturate(value)
  br i1 %666, label %680, label %690

; <label>:680                                     ; preds = %676
  %681 = fmul fast float %654, %23
  %682 = fsub fast float 1.000000e+00, %22
  %683 = fmul fast float %652, %682
  %684 = fsub fast float 1.000000e+00, %683
  %685 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %13, float %684, float %681, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %686 = extractvalue %dx.types.ResRet.f32 %685, 1
  %687 = fsub fast float 1.000000e+00, %686
  %688 = select i1 %662, float %687, float %686
  %689 = fmul fast float %688, %658
  br label %690

; <label>:690                                     ; preds = %680, %676
  %691 = phi float [ %689, %680 ], [ 0.000000e+00, %676 ]
  %692 = fadd fast float %691, %660
  %693 = call float @dx.op.unary.f32(i32 7, float %692)  ; Saturate(value)
  %694 = fmul fast float %693, %679
  br i1 %666, label %695, label %707

; <label>:695                                     ; preds = %690
  %696 = fsub fast float 1.000000e+00, %23
  %697 = fmul fast float %654, %696
  %698 = fsub fast float 1.000000e+00, %697
  %699 = fsub fast float 1.000000e+00, %22
  %700 = fmul fast float %652, %699
  %701 = fsub fast float 1.000000e+00, %700
  %702 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %13, float %701, float %698, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %703 = extractvalue %dx.types.ResRet.f32 %702, 2
  %704 = fsub fast float 1.000000e+00, %703
  %705 = select i1 %662, float %704, float %703
  %706 = fmul fast float %705, %658
  br label %707

; <label>:707                                     ; preds = %695, %690
  %708 = phi float [ %706, %695 ], [ 0.000000e+00, %690 ]
  %709 = fadd fast float %708, %660
  %710 = call float @dx.op.unary.f32(i32 7, float %709)  ; Saturate(value)
  %711 = fmul fast float %694, %710
  br i1 %666, label %712, label %722

; <label>:712                                     ; preds = %707
  %713 = fsub fast float 1.000000e+00, %23
  %714 = fmul fast float %654, %713
  %715 = fsub fast float 1.000000e+00, %714
  %716 = fmul fast float %652, %22
  %717 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %13, float %716, float %715, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %718 = extractvalue %dx.types.ResRet.f32 %717, 3
  %719 = fsub fast float 1.000000e+00, %718
  %720 = select i1 %662, float %719, float %718
  %721 = fmul fast float %720, %658
  br label %722

; <label>:722                                     ; preds = %712, %707
  %723 = phi float [ %721, %712 ], [ 0.000000e+00, %707 ]
  %724 = fadd fast float %723, %660
  %725 = call float @dx.op.unary.f32(i32 7, float %724)  ; Saturate(value)
  %726 = fmul fast float %711, %725
  br label %738

; <label>:727                                     ; preds = %647
  br i1 %666, label %728, label %734

; <label>:728                                     ; preds = %727
  %729 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %13, float %22, float %23, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %730 = extractvalue %dx.types.ResRet.f32 %729, 0
  %731 = fsub fast float 1.000000e+00, %730
  %732 = select i1 %662, float %731, float %730
  %733 = fmul fast float %732, %658
  br label %734

; <label>:734                                     ; preds = %728, %727
  %735 = phi float [ %733, %728 ], [ 0.000000e+00, %727 ]
  %736 = fadd fast float %735, %660
  %737 = call float @dx.op.unary.f32(i32 7, float %736)  ; Saturate(value)
  br label %738

; <label>:738                                     ; preds = %734, %722
  %739 = phi float [ %726, %722 ], [ %737, %734 ]
  %740 = fmul fast float %739, %644
  br label %741

; <label>:741                                     ; preds = %738, %643
  %742 = phi float [ %740, %738 ], [ %644, %643 ]
  %743 = call float @dx.op.binary.f32(i32 35, float %742, float 0.000000e+00)  ; FMax(a,b)
  %744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %745 = extractvalue %dx.types.CBufRet.f32 %744, 3
  %746 = bitcast float %745 to i32
  %747 = and i32 %746, 1
  %748 = icmp eq i32 %747, 0
  %749 = and i32 %746, 4
  %750 = icmp eq i32 %749, 0
  br i1 %748, label %824, label %751, !dx.controlflow.hints !56

; <label>:751                                     ; preds = %741
  %752 = and i32 %746, 2
  %753 = icmp eq i32 %752, 0
  %754 = extractvalue %dx.types.CBufRet.f32 %744, 0
  %755 = extractvalue %dx.types.CBufRet.f32 %744, 1
  %756 = extractvalue %dx.types.CBufRet.f32 %744, 2
  %757 = fmul fast float %754, %231
  %758 = fmul fast float %755, %239
  %759 = fmul fast float %756, %247
  %760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %761 = extractvalue %dx.types.CBufRet.f32 %760, 0
  %762 = fmul fast float %761, %757
  %763 = fmul fast float %761, %758
  %764 = fmul fast float %761, %759
  br i1 %753, label %824, label %765, !dx.controlflow.hints !57

; <label>:765                                     ; preds = %751
  %766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %767 = extractvalue %dx.types.CBufRet.f32 %766, 0
  %768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %769 = extractvalue %dx.types.CBufRet.f32 %768, 0
  %770 = extractvalue %dx.types.CBufRet.f32 %768, 1
  %771 = extractvalue %dx.types.CBufRet.f32 %768, 2
  %772 = call float @dx.op.dot3.f32(i32 55, float %762, float %763, float %764, float %769, float %770, float %771)  ; Dot3(ax,ay,az,bx,by,bz)
  %773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %774 = extractvalue %dx.types.CBufRet.f32 %773, 0
  %775 = extractvalue %dx.types.CBufRet.f32 %773, 1
  %776 = extractvalue %dx.types.CBufRet.f32 %773, 2
  %777 = call float @dx.op.dot3.f32(i32 55, float %762, float %763, float %764, float %774, float %775, float %776)  ; Dot3(ax,ay,az,bx,by,bz)
  %778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %779 = extractvalue %dx.types.CBufRet.f32 %778, 0
  %780 = extractvalue %dx.types.CBufRet.f32 %778, 1
  %781 = extractvalue %dx.types.CBufRet.f32 %778, 2
  %782 = call float @dx.op.dot3.f32(i32 55, float %762, float %763, float %764, float %779, float %780, float %781)  ; Dot3(ax,ay,az,bx,by,bz)
  %783 = fmul fast float %772, %767
  %784 = fmul fast float %777, %767
  %785 = fmul fast float %782, %767
  %786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %787 = extractvalue %dx.types.CBufRet.f32 %786, 2
  %788 = fmul fast float %783, %787
  %789 = fmul fast float %784, %787
  %790 = fmul fast float %785, %787
  %791 = fadd fast float %788, 9.765625e-04
  %792 = fadd fast float %789, 9.765625e-04
  %793 = fadd fast float %790, 9.765625e-04
  %794 = call float @dx.op.unary.f32(i32 23, float %791)  ; Log(value)
  %795 = call float @dx.op.unary.f32(i32 23, float %792)  ; Log(value)
  %796 = call float @dx.op.unary.f32(i32 23, float %793)  ; Log(value)
  %797 = fadd fast float %794, 1.000000e+01
  %798 = fadd fast float %795, 1.000000e+01
  %799 = fadd fast float %796, 1.000000e+01
  %800 = fmul fast float %797, 0x3FA99999A0000000
  %801 = fmul fast float %798, 0x3FA99999A0000000
  %802 = fmul fast float %799, 0x3FA99999A0000000
  %803 = call float @dx.op.unary.f32(i32 7, float %800)  ; Saturate(value)
  %804 = call float @dx.op.unary.f32(i32 7, float %801)  ; Saturate(value)
  %805 = call float @dx.op.unary.f32(i32 7, float %802)  ; Saturate(value)
  %806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %807 = extractvalue %dx.types.CBufRet.f32 %806, 0
  %808 = extractvalue %dx.types.CBufRet.f32 %806, 1
  %809 = extractvalue %dx.types.CBufRet.f32 %806, 2
  %810 = fmul fast float %807, %803
  %811 = fmul fast float %808, %804
  %812 = fmul fast float %809, %805
  %813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %814 = extractvalue %dx.types.CBufRet.f32 %813, 0
  %815 = extractvalue %dx.types.CBufRet.f32 %813, 1
  %816 = extractvalue %dx.types.CBufRet.f32 %813, 2
  %817 = fadd fast float %810, %814
  %818 = fadd fast float %811, %815
  %819 = fadd fast float %812, %816
  %820 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %15, float %817, float %818, float %819, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %821 = extractvalue %dx.types.ResRet.f32 %820, 0
  %822 = extractvalue %dx.types.ResRet.f32 %820, 1
  %823 = extractvalue %dx.types.ResRet.f32 %820, 2
  br label %824

; <label>:824                                     ; preds = %765, %751, %741
  %825 = phi float [ %821, %765 ], [ %231, %741 ], [ %762, %751 ]
  %826 = phi float [ %822, %765 ], [ %239, %741 ], [ %763, %751 ]
  %827 = phi float [ %823, %765 ], [ %247, %741 ], [ %764, %751 ]
  %828 = fcmp fast oeq float %743, 0.000000e+00
  br i1 %828, label %829, label %830, !dx.controlflow.hints !58

; <label>:829                                     ; preds = %824
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %830

; <label>:830                                     ; preds = %829, %824
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %831 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %14, float %20, float %21, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %832 = extractvalue %dx.types.ResRet.f32 %831, 0
  %833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %834 = extractvalue %dx.types.CBufRet.f32 %833, 3
  %835 = bitcast float %834 to i32
  %836 = and i32 %835, 65535
  %837 = call float @dx.op.legacyF16ToF32(i32 131, i32 %836)  ; LegacyF16ToF32(value)
  %838 = fcmp fast une float %837, 0.000000e+00
  %839 = select i1 %838, float 0.000000e+00, float 1.000000e+00
  %840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %841 = extractvalue %dx.types.CBufRet.f32 %840, 3
  %842 = fmul fast float %841, %832
  %843 = fmul fast float %842, %839
  %844 = fsub fast float 1.000000e+00, %843
  %845 = fmul fast float %844, %825
  %846 = fmul fast float %844, %826
  %847 = fmul fast float %844, %827
  %848 = extractvalue %dx.types.CBufRet.f32 %840, 0
  %849 = extractvalue %dx.types.CBufRet.f32 %840, 1
  %850 = extractvalue %dx.types.CBufRet.f32 %840, 2
  %851 = fmul fast float %848, %842
  %852 = fmul fast float %849, %842
  %853 = fmul fast float %850, %842
  %854 = fadd fast float %845, %851
  %855 = fadd fast float %846, %852
  %856 = fadd fast float %847, %853
  %857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %858 = extractvalue %dx.types.CBufRet.f32 %857, 2
  %859 = fcmp fast ogt float %858, 0.000000e+00
  br i1 %859, label %860, label %926, !dx.controlflow.hints !59

; <label>:860                                     ; preds = %830
  %861 = fcmp fast oeq float %858, 2.000000e+00
  br i1 %861, label %862, label %914, !dx.controlflow.hints !60

; <label>:862                                     ; preds = %860
  %863 = fcmp fast ole float %854, 0x3F69A5C380000000
  %864 = fcmp fast ole float %855, 0x3F69A5C380000000
  %865 = fcmp fast ole float %856, 0x3F69A5C380000000
  %866 = fmul fast float %854, 0x4029D70A40000000
  %867 = fmul fast float %855, 0x4029D70A40000000
  %868 = fmul fast float %856, 0x4029D70A40000000
  %869 = call float @dx.op.unary.f32(i32 23, float %854)  ; Log(value)
  %870 = call float @dx.op.unary.f32(i32 23, float %855)  ; Log(value)
  %871 = call float @dx.op.unary.f32(i32 23, float %856)  ; Log(value)
  %872 = fmul fast float %869, 0x3FDAAAAAA0000000
  %873 = fmul fast float %870, 0x3FDAAAAAA0000000
  %874 = fmul fast float %871, 0x3FDAAAAAA0000000
  %875 = call float @dx.op.unary.f32(i32 21, float %872)  ; Exp(value)
  %876 = call float @dx.op.unary.f32(i32 21, float %873)  ; Exp(value)
  %877 = call float @dx.op.unary.f32(i32 21, float %874)  ; Exp(value)
  %878 = fmul fast float %875, 0x3FF0E147A0000000
  %879 = fmul fast float %876, 0x3FF0E147A0000000
  %880 = fmul fast float %877, 0x3FF0E147A0000000
  %881 = fadd fast float %878, 0xBFAC28F5C0000000
  %882 = fadd fast float %879, 0xBFAC28F5C0000000
  %883 = fadd fast float %880, 0xBFAC28F5C0000000
  %884 = select i1 %863, float %866, float %881
  %885 = select i1 %864, float %867, float %882
  %886 = select i1 %865, float %868, float %883
  %887 = fsub fast float 1.000000e+00, %884
  %888 = fsub fast float 1.000000e+00, %885
  %889 = fsub fast float 1.000000e+00, %886
  %890 = fcmp fast ole float %887, 0x3FA4B5DCC0000000
  %891 = fmul fast float %887, 0x3FB3D07220000000
  %892 = fsub fast float 0x3FF0E147A0000000, %884
  %893 = fmul fast float %892, 0x3FEE54EDE0000000
  %894 = call float @dx.op.unary.f32(i32 23, float %893)  ; Log(value)
  %895 = fmul fast float %894, 0x4003333340000000
  %896 = call float @dx.op.unary.f32(i32 21, float %895)  ; Exp(value)
  %897 = select i1 %890, float %891, float %896
  %898 = fcmp fast ole float %888, 0x3FA4B5DCC0000000
  %899 = fmul fast float %888, 0x3FB3D07220000000
  %900 = fsub fast float 0x3FF0E147A0000000, %885
  %901 = fmul fast float %900, 0x3FEE54EDE0000000
  %902 = call float @dx.op.unary.f32(i32 23, float %901)  ; Log(value)
  %903 = fmul fast float %902, 0x4003333340000000
  %904 = call float @dx.op.unary.f32(i32 21, float %903)  ; Exp(value)
  %905 = select i1 %898, float %899, float %904
  %906 = fcmp fast ole float %889, 0x3FA4B5DCC0000000
  %907 = fmul fast float %889, 0x3FB3D07220000000
  %908 = fsub fast float 0x3FF0E147A0000000, %886
  %909 = fmul fast float %908, 0x3FEE54EDE0000000
  %910 = call float @dx.op.unary.f32(i32 23, float %909)  ; Log(value)
  %911 = fmul fast float %910, 0x4003333340000000
  %912 = call float @dx.op.unary.f32(i32 21, float %911)  ; Exp(value)
  %913 = select i1 %906, float %907, float %912
  br label %926

; <label>:914                                     ; preds = %860
  %915 = call float @dx.op.dot3.f32(i32 55, float %854, float %855, float %856, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %916 = extractvalue %dx.types.CBufRet.f32 %857, 3
  %917 = fsub fast float %854, %915
  %918 = fsub fast float %855, %915
  %919 = fsub fast float %856, %915
  %920 = fmul fast float %916, %917
  %921 = fmul fast float %916, %918
  %922 = fmul fast float %916, %919
  %923 = fadd fast float %920, %915
  %924 = fadd fast float %921, %915
  %925 = fadd fast float %922, %915
  br label %926

; <label>:926                                     ; preds = %914, %862, %830
  %927 = phi float [ %897, %862 ], [ %923, %914 ], [ %854, %830 ]
  %928 = phi float [ %905, %862 ], [ %924, %914 ], [ %855, %830 ]
  %929 = phi float [ %913, %862 ], [ %925, %914 ], [ %856, %830 ]
  %930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %931 = extractvalue %dx.types.CBufRet.f32 %930, 0
  %932 = fcmp fast une float %931, 0.000000e+00
  br i1 %932, label %933, label %1107, !dx.controlflow.hints !61

; <label>:933                                     ; preds = %926
  %934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %935 = extractvalue %dx.types.CBufRet.f32 %934, 0
  %936 = extractvalue %dx.types.CBufRet.f32 %934, 1
  %937 = fsub fast float %38, %935
  %938 = fsub fast float %39, %936
  %939 = extractvalue %dx.types.CBufRet.f32 %934, 2
  %940 = extractvalue %dx.types.CBufRet.f32 %934, 3
  %941 = fmul fast float %937, %939
  %942 = fmul fast float %938, %940
  %943 = call float @dx.op.unary.f32(i32 6, float %931)  ; FAbs(value)
  %944 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %15, float %941, float %942, float undef, float undef, i32 0, i32 0, i32 undef, float %943)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %945 = extractvalue %dx.types.ResRet.f32 %944, 0
  %946 = extractvalue %dx.types.ResRet.f32 %944, 1
  %947 = extractvalue %dx.types.ResRet.f32 %944, 2
  %948 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %949 = extractvalue %dx.types.CBufRet.i32 %948, 3
  %950 = and i32 %949, 3
  %951 = icmp ne i32 %950, 0
  %952 = and i32 %949, 4
  %953 = icmp eq i32 %952, 0
  %954 = and i1 %951, %953
  br i1 %954, label %955, label %999

; <label>:955                                     ; preds = %933
  %956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %957 = extractvalue %dx.types.CBufRet.f32 %956, 0
  %958 = fcmp fast oge float %946, %957
  %959 = zext i1 %958 to i32
  br i1 %958, label %960, label %999

; <label>:960                                     ; preds = %955
  %961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %962 = extractvalue %dx.types.CBufRet.f32 %961, 3
  %963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %964 = extractvalue %dx.types.CBufRet.f32 %963, 2
  %965 = fcmp fast ogt float %964, 0.000000e+00
  br i1 %965, label %966, label %974, !dx.controlflow.hints !62

; <label>:966                                     ; preds = %960
  %967 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %946, float 0.000000e+00, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %968 = extractvalue %dx.types.ResRet.f32 %967, 0
  %969 = extractvalue %dx.types.ResRet.f32 %967, 1
  %970 = extractvalue %dx.types.ResRet.f32 %967, 2
  %971 = fcmp fast ogt float %964, 1.500000e+00
  %972 = select i1 %971, float %968, float %969
  %973 = select i1 %971, float %968, float %970
  br label %992

; <label>:974                                     ; preds = %960
  %975 = call float @dx.op.unary.f32(i32 7, float %946)  ; Saturate(value)
  %976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 238)  ; CBufferLoadLegacy(handle,regIndex)
  %977 = extractvalue %dx.types.CBufRet.f32 %976, 0
  %978 = extractvalue %dx.types.CBufRet.f32 %976, 1
  %979 = extractvalue %dx.types.CBufRet.f32 %976, 2
  %980 = extractvalue %dx.types.CBufRet.f32 %961, 0
  %981 = extractvalue %dx.types.CBufRet.f32 %961, 1
  %982 = extractvalue %dx.types.CBufRet.f32 %961, 2
  %983 = fsub fast float %977, %980
  %984 = fsub fast float %978, %981
  %985 = fsub fast float %979, %982
  %986 = fmul fast float %983, %975
  %987 = fmul fast float %984, %975
  %988 = fmul fast float %985, %975
  %989 = fadd fast float %986, %980
  %990 = fadd fast float %987, %981
  %991 = fadd fast float %988, %982
  br label %992

; <label>:992                                     ; preds = %974, %966
  %993 = phi float [ %968, %966 ], [ %989, %974 ]
  %994 = phi float [ %972, %966 ], [ %990, %974 ]
  %995 = phi float [ %973, %966 ], [ %991, %974 ]
  %996 = fmul fast float %993, %962
  %997 = fmul fast float %994, %962
  %998 = fmul fast float %995, %962
  br label %999

; <label>:999                                     ; preds = %992, %955, %933
  %1000 = phi float [ %996, %992 ], [ %945, %933 ], [ %945, %955 ]
  %1001 = phi float [ %997, %992 ], [ %946, %933 ], [ %945, %955 ]
  %1002 = phi float [ %998, %992 ], [ %947, %933 ], [ %945, %955 ]
  %1003 = phi i32 [ %959, %992 ], [ 0, %933 ], [ %959, %955 ]
  %1004 = icmp eq i32 %1003, 0
  br i1 %1004, label %1005, label %1059

; <label>:1005                                    ; preds = %999
  %1006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1007 = extractvalue %dx.types.CBufRet.f32 %1006, 0
  %1008 = extractvalue %dx.types.CBufRet.f32 %1006, 1
  %1009 = extractvalue %dx.types.CBufRet.f32 %1006, 2
  %1010 = call float @dx.op.dot3.f32(i32 55, float %1000, float %1001, float %1002, float %1007, float %1008, float %1009)  ; Dot3(ax,ay,az,bx,by,bz)
  %1011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1012 = extractvalue %dx.types.CBufRet.f32 %1011, 0
  %1013 = extractvalue %dx.types.CBufRet.f32 %1011, 1
  %1014 = extractvalue %dx.types.CBufRet.f32 %1011, 2
  %1015 = call float @dx.op.dot3.f32(i32 55, float %1000, float %1001, float %1002, float %1012, float %1013, float %1014)  ; Dot3(ax,ay,az,bx,by,bz)
  %1016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1017 = extractvalue %dx.types.CBufRet.f32 %1016, 0
  %1018 = extractvalue %dx.types.CBufRet.f32 %1016, 1
  %1019 = extractvalue %dx.types.CBufRet.f32 %1016, 2
  %1020 = call float @dx.op.dot3.f32(i32 55, float %1000, float %1001, float %1002, float %1017, float %1018, float %1019)  ; Dot3(ax,ay,az,bx,by,bz)
  %1021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %1022 = extractvalue %dx.types.CBufRet.f32 %1021, 2
  %1023 = fmul fast float %1022, %1010
  %1024 = fmul fast float %1022, %1015
  %1025 = fmul fast float %1022, %1020
  %1026 = fadd fast float %1023, 9.765625e-04
  %1027 = fadd fast float %1024, 9.765625e-04
  %1028 = fadd fast float %1025, 9.765625e-04
  %1029 = call float @dx.op.unary.f32(i32 23, float %1026)  ; Log(value)
  %1030 = call float @dx.op.unary.f32(i32 23, float %1027)  ; Log(value)
  %1031 = call float @dx.op.unary.f32(i32 23, float %1028)  ; Log(value)
  %1032 = fadd fast float %1029, 1.000000e+01
  %1033 = fadd fast float %1030, 1.000000e+01
  %1034 = fadd fast float %1031, 1.000000e+01
  %1035 = fmul fast float %1032, 0x3FA99999A0000000
  %1036 = fmul fast float %1033, 0x3FA99999A0000000
  %1037 = fmul fast float %1034, 0x3FA99999A0000000
  %1038 = call float @dx.op.unary.f32(i32 7, float %1035)  ; Saturate(value)
  %1039 = call float @dx.op.unary.f32(i32 7, float %1036)  ; Saturate(value)
  %1040 = call float @dx.op.unary.f32(i32 7, float %1037)  ; Saturate(value)
  %1041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %1042 = extractvalue %dx.types.CBufRet.f32 %1041, 0
  %1043 = extractvalue %dx.types.CBufRet.f32 %1041, 1
  %1044 = extractvalue %dx.types.CBufRet.f32 %1041, 2
  %1045 = fmul fast float %1042, %1038
  %1046 = fmul fast float %1043, %1039
  %1047 = fmul fast float %1044, %1040
  %1048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1049 = extractvalue %dx.types.CBufRet.f32 %1048, 0
  %1050 = extractvalue %dx.types.CBufRet.f32 %1048, 1
  %1051 = extractvalue %dx.types.CBufRet.f32 %1048, 2
  %1052 = fadd fast float %1045, %1049
  %1053 = fadd fast float %1046, %1050
  %1054 = fadd fast float %1047, %1051
  %1055 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %15, float %1052, float %1053, float %1054, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1056 = extractvalue %dx.types.ResRet.f32 %1055, 0
  %1057 = extractvalue %dx.types.ResRet.f32 %1055, 1
  %1058 = extractvalue %dx.types.ResRet.f32 %1055, 2
  br label %1059

; <label>:1059                                    ; preds = %1005, %999
  %1060 = phi float [ %1000, %999 ], [ %1056, %1005 ]
  %1061 = phi float [ %1001, %999 ], [ %1057, %1005 ]
  %1062 = phi float [ %1002, %999 ], [ %1058, %1005 ]
  %1063 = fcmp fast ole float %1060, 0x3FA4B5DCC0000000
  %1064 = fmul fast float %1060, 0x3FB3D07220000000
  %1065 = fadd fast float %1060, 0x3FAC28F5C0000000
  %1066 = fmul fast float %1065, 0x3FEE54EDE0000000
  %1067 = call float @dx.op.unary.f32(i32 23, float %1066)  ; Log(value)
  %1068 = fmul fast float %1067, 0x4003333340000000
  %1069 = call float @dx.op.unary.f32(i32 21, float %1068)  ; Exp(value)
  %1070 = select i1 %1063, float %1064, float %1069
  %1071 = fcmp fast ole float %1061, 0x3FA4B5DCC0000000
  %1072 = fmul fast float %1061, 0x3FB3D07220000000
  %1073 = fadd fast float %1061, 0x3FAC28F5C0000000
  %1074 = fmul fast float %1073, 0x3FEE54EDE0000000
  %1075 = call float @dx.op.unary.f32(i32 23, float %1074)  ; Log(value)
  %1076 = fmul fast float %1075, 0x4003333340000000
  %1077 = call float @dx.op.unary.f32(i32 21, float %1076)  ; Exp(value)
  %1078 = select i1 %1071, float %1072, float %1077
  %1079 = fcmp fast ole float %1062, 0x3FA4B5DCC0000000
  %1080 = fmul fast float %1062, 0x3FB3D07220000000
  %1081 = fadd fast float %1062, 0x3FAC28F5C0000000
  %1082 = fmul fast float %1081, 0x3FEE54EDE0000000
  %1083 = call float @dx.op.unary.f32(i32 23, float %1082)  ; Log(value)
  %1084 = fmul fast float %1083, 0x4003333340000000
  %1085 = call float @dx.op.unary.f32(i32 21, float %1084)  ; Exp(value)
  %1086 = select i1 %1079, float %1080, float %1085
  %1087 = fcmp fast olt float %931, 0.000000e+00
  br i1 %1087, label %1088, label %1100

; <label>:1088                                    ; preds = %1059
  %1089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %1090 = extractvalue %dx.types.CBufRet.f32 %1089, 0
  %1091 = extractvalue %dx.types.CBufRet.f32 %1089, 1
  %1092 = extractvalue %dx.types.CBufRet.f32 %1089, 2
  %1093 = call float @dx.op.dot3.f32(i32 55, float %1070, float %1078, float %1086, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1094 = fsub fast float %1093, %1090
  %1095 = fmul fast float %1094, %1091
  %1096 = call float @dx.op.unary.f32(i32 7, float %1095)  ; Saturate(value)
  %1097 = fsub fast float 1.000000e+00, %1092
  %1098 = fmul fast float %1096, %1097
  %1099 = fadd fast float %1098, %1092
  br label %1100

; <label>:1100                                    ; preds = %1088, %1059
  %1101 = phi float [ %1099, %1088 ], [ %1070, %1059 ]
  %1102 = phi float [ %1099, %1088 ], [ %1078, %1059 ]
  %1103 = phi float [ %1099, %1088 ], [ %1086, %1059 ]
  %1104 = fmul fast float %1101, %927
  %1105 = fmul fast float %1102, %928
  %1106 = fmul fast float %1103, %929
  br label %1107

; <label>:1107                                    ; preds = %1100, %926
  %1108 = phi float [ %1104, %1100 ], [ %927, %926 ]
  %1109 = phi float [ %1105, %1100 ], [ %928, %926 ]
  %1110 = phi float [ %1106, %1100 ], [ %929, %926 ]
  %1111 = extractvalue %dx.types.CBufRet.f32 %930, 1
  %1112 = fcmp fast ogt float %1111, 0.000000e+00
  br i1 %1112, label %1113, label %1154, !dx.controlflow.hints !63

; <label>:1113                                    ; preds = %1107
  %1114 = extractvalue %dx.types.CBufRet.f32 %930, 2
  %1115 = bitcast float %1114 to i32
  %1116 = and i32 %1115, 255
  %1117 = uitofp i32 %1116 to float
  %1118 = lshr i32 %1115, 8
  %1119 = and i32 %1118, 255
  %1120 = uitofp i32 %1119 to float
  %1121 = lshr i32 %1115, 16
  %1122 = and i32 %1121, 255
  %1123 = uitofp i32 %1122 to float
  %1124 = fmul fast float %1123, 0x3F70101020000000
  %1125 = lshr i32 %1115, 24
  %1126 = uitofp i32 %1125 to float
  %1127 = fmul fast float %1126, 0x3F70101020000000
  %1128 = fadd fast float %1123, %1117
  %1129 = fmul fast float %1128, 0x3F70101020000000
  %1130 = fadd fast float %1120, %1126
  %1131 = fmul fast float %1130, 0x3F70101020000000
  %1132 = fdiv fast float %38, %1129
  %1133 = fdiv fast float %39, %1131
  %1134 = fsub fast float -0.000000e+00, %1132
  %1135 = fsub fast float -0.000000e+00, %1133
  %1136 = fcmp fast oge float %1132, %1134
  %1137 = fcmp fast oge float %1133, %1135
  %1138 = call float @dx.op.unary.f32(i32 6, float %1132)  ; FAbs(value)
  %1139 = call float @dx.op.unary.f32(i32 6, float %1133)  ; FAbs(value)
  %1140 = call float @dx.op.unary.f32(i32 22, float %1138)  ; Frc(value)
  %1141 = call float @dx.op.unary.f32(i32 22, float %1139)  ; Frc(value)
  %1142 = fsub fast float -0.000000e+00, %1140
  %1143 = fsub fast float -0.000000e+00, %1141
  %1144 = select i1 %1136, float %1140, float %1142
  %1145 = select i1 %1137, float %1141, float %1143
  %1146 = fmul fast float %1129, %1144
  %1147 = fmul fast float %1145, %1131
  %1148 = fcmp fast olt float %1146, %1124
  %1149 = fcmp fast olt float %1147, %1127
  %1150 = or i1 %1148, %1149
  br i1 %1150, label %1151, label %1154, !dx.controlflow.hints !64

; <label>:1151                                    ; preds = %1113
  %1152 = fsub fast float 1.000000e+00, %1111
  %1153 = fmul fast float %1152, %743
  br label %1154

; <label>:1154                                    ; preds = %1151, %1113, %1107
  %1155 = phi float [ %1153, %1151 ], [ %743, %1113 ], [ %743, %1107 ]
  %1156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %1157 = extractvalue %dx.types.CBufRet.f32 %1156, 3
  %1158 = fcmp fast ogt float %1157, 0.000000e+00
  br i1 %1158, label %1159, label %1242, !dx.controlflow.hints !65

; <label>:1159                                    ; preds = %1154
  %1160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %1161 = extractvalue %dx.types.CBufRet.f32 %1160, 2
  %1162 = extractvalue %dx.types.CBufRet.f32 %1160, 3
  %1163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1164 = extractvalue %dx.types.CBufRet.f32 %1163, 3
  %1165 = fmul fast float %1164, 1.000000e+01
  %1166 = call float @dx.op.unary.f32(i32 27, float %1165)  ; Round_ni(value)
  %1167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1168 = extractvalue %dx.types.CBufRet.f32 %1167, 0
  %1169 = extractvalue %dx.types.CBufRet.f32 %1167, 1
  %1170 = fmul fast float %1168, %38
  %1171 = fmul fast float %1169, %39
  %1172 = call float @dx.op.unary.f32(i32 27, float %1170)  ; Round_ni(value)
  %1173 = call float @dx.op.unary.f32(i32 27, float %1171)  ; Round_ni(value)
  %1174 = fmul fast float %1166, 0x4002B851E0000000
  %1175 = call float @dx.op.unary.f32(i32 22, float %1174)  ; Frc(value)
  %1176 = fadd fast float %1175, 0x3FB99999A0000000
  %1177 = fadd fast float %1176, %1172
  %1178 = fadd fast float %1176, %1173
  %1179 = fmul fast float %1177, 0x3FE1BEDF00000000
  %1180 = call float @dx.op.unary.f32(i32 22, float %1179)  ; Frc(value)
  %1181 = fmul fast float %1177, %1180
  %1182 = fadd fast float %1181, %1178
  %1183 = fmul fast float %1178, 0x3FD3BEBE20000000
  %1184 = call float @dx.op.unary.f32(i32 22, float %1183)  ; Frc(value)
  %1185 = fmul fast float %1178, %1184
  %1186 = fadd fast float %1185, %1177
  %1187 = fmul fast float %1182, %1186
  %1188 = call float @dx.op.unary.f32(i32 22, float %1187)  ; Frc(value)
  %1189 = extractvalue %dx.types.CBufRet.f32 %1167, 3
  %1190 = bitcast float %1189 to i32
  %1191 = and i32 %1190, 255
  %1192 = uitofp i32 %1191 to float
  %1193 = fmul fast float %1192, 0x3F70101020000000
  %1194 = fmul fast float %1193, %1161
  %1195 = fcmp fast olt float %1188, %1194
  br i1 %1195, label %1196, label %1203, !dx.controlflow.hints !66

; <label>:1196                                    ; preds = %1159
  %1197 = fmul fast float %1188, 0x4057091680000000
  %1198 = call float @dx.op.unary.f32(i32 22, float %1197)  ; Frc(value)
  %1199 = fmul fast float %1198, %1108
  %1200 = fmul fast float %1198, %1110
  %1201 = fsub fast float 1.000000e+00, %1198
  %1202 = fmul fast float %1201, %1109
  br label %1203

; <label>:1203                                    ; preds = %1196, %1159
  %1204 = phi float [ %1199, %1196 ], [ %1108, %1159 ]
  %1205 = phi float [ %1202, %1196 ], [ %1109, %1159 ]
  %1206 = phi float [ %1200, %1196 ], [ %1110, %1159 ]
  %1207 = fmul fast float %1188, 0x4028B0A3E0000000
  %1208 = call float @dx.op.unary.f32(i32 22, float %1207)  ; Frc(value)
  %1209 = fmul fast float %1193, %1162
  %1210 = fcmp fast olt float %1208, %1209
  br i1 %1210, label %1211, label %1230, !dx.controlflow.hints !67

; <label>:1211                                    ; preds = %1203
  %1212 = extractvalue %dx.types.CBufRet.f32 %1167, 2
  %1213 = fmul fast float %1212, %38
  %1214 = call float @dx.op.unary.f32(i32 27, float %1213)  ; Round_ni(value)
  %1215 = fmul fast float %1214, 0x3FD5555560000000
  %1216 = call float @dx.op.unary.f32(i32 22, float %1215)  ; Frc(value)
  %1217 = extractvalue %dx.types.CBufRet.f32 %1160, 0
  %1218 = extractvalue %dx.types.CBufRet.f32 %1160, 1
  %1219 = fcmp fast olt float %1216, 0x3FD51EB860000000
  br i1 %1219, label %1223, label %1220, !dx.controlflow.hints !68

; <label>:1220                                    ; preds = %1211
  %1221 = fcmp fast olt float %1216, 0x3FE51EB860000000
  br i1 %1221, label %1223, label %1222, !dx.controlflow.hints !69

; <label>:1222                                    ; preds = %1220
  br label %1223

; <label>:1223                                    ; preds = %1222, %1220, %1211
  %1224 = phi float [ %1217, %1222 ], [ %1218, %1211 ], [ %1217, %1220 ]
  %1225 = phi float [ %1217, %1222 ], [ %1217, %1211 ], [ %1218, %1220 ]
  %1226 = phi float [ %1218, %1222 ], [ %1217, %1211 ], [ %1217, %1220 ]
  %1227 = fmul fast float %1224, %1204
  %1228 = fmul fast float %1225, %1205
  %1229 = fmul fast float %1226, %1206
  br label %1230

; <label>:1230                                    ; preds = %1223, %1203
  %1231 = phi float [ %1227, %1223 ], [ %1204, %1203 ]
  %1232 = phi float [ %1228, %1223 ], [ %1205, %1203 ]
  %1233 = phi float [ %1229, %1223 ], [ %1206, %1203 ]
  %1234 = fmul fast float %1188, 0x40223EF9E0000000
  %1235 = call float @dx.op.unary.f32(i32 22, float %1234)  ; Frc(value)
  %1236 = fmul fast float %1193, %1157
  %1237 = fmul fast float %1235, %1235
  %1238 = fmul fast float %1237, %1236
  %1239 = fsub fast float 1.000000e+00, %1238
  %1240 = call float @dx.op.unary.f32(i32 7, float %1239)  ; Saturate(value)
  %1241 = fmul fast float %1240, %1155
  br label %1242

; <label>:1242                                    ; preds = %1230, %1154
  %1243 = phi float [ %1231, %1230 ], [ %1108, %1154 ]
  %1244 = phi float [ %1232, %1230 ], [ %1109, %1154 ]
  %1245 = phi float [ %1233, %1230 ], [ %1110, %1154 ]
  %1246 = phi float [ %1241, %1230 ], [ %1155, %1154 ]
  %1247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1248 = extractvalue %dx.types.CBufRet.f32 %1247, 0
  %1249 = extractvalue %dx.types.CBufRet.f32 %1247, 1
  %1250 = extractvalue %dx.types.CBufRet.f32 %1247, 2
  %1251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1252 = extractvalue %dx.types.CBufRet.f32 %1251, 0
  %1253 = extractvalue %dx.types.CBufRet.f32 %1251, 1
  %1254 = extractvalue %dx.types.CBufRet.f32 %1251, 2
  %1255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1256 = extractvalue %dx.types.CBufRet.f32 %1255, 0
  %1257 = extractvalue %dx.types.CBufRet.f32 %1255, 1
  %1258 = extractvalue %dx.types.CBufRet.f32 %1255, 2
  %1259 = fmul fast float %1248, %1243
  %1260 = call float @dx.op.tertiary.f32(i32 46, float %1249, float %1244, float %1259)  ; FMad(a,b,c)
  %1261 = call float @dx.op.tertiary.f32(i32 46, float %1250, float %1245, float %1260)  ; FMad(a,b,c)
  %1262 = fmul fast float %1252, %1243
  %1263 = call float @dx.op.tertiary.f32(i32 46, float %1253, float %1244, float %1262)  ; FMad(a,b,c)
  %1264 = call float @dx.op.tertiary.f32(i32 46, float %1254, float %1245, float %1263)  ; FMad(a,b,c)
  %1265 = fmul fast float %1256, %1243
  %1266 = call float @dx.op.tertiary.f32(i32 46, float %1257, float %1244, float %1265)  ; FMad(a,b,c)
  %1267 = call float @dx.op.tertiary.f32(i32 46, float %1258, float %1245, float %1266)  ; FMad(a,b,c)
  br i1 %750, label %1268, label %1575, !dx.controlflow.hints !70

; <label>:1268                                    ; preds = %1242
  %1269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1270 = extractvalue %dx.types.CBufRet.f32 %1269, 0
  %1271 = bitcast float %1270 to i32
  %1272 = and i32 %1271, 128
  %1273 = icmp eq i32 %1272, 0
  br i1 %1273, label %1288, label %1274

; <label>:1274                                    ; preds = %1268
  %1275 = call float @dx.op.unary.f32(i32 24, float %1261)  ; Sqrt(value)
  %1276 = call float @dx.op.unary.f32(i32 24, float %1264)  ; Sqrt(value)
  %1277 = call float @dx.op.unary.f32(i32 24, float %1267)  ; Sqrt(value)
  %1278 = fmul fast float %1275, 9.687500e-01
  %1279 = fmul fast float %1276, 9.687500e-01
  %1280 = fmul fast float %1277, 9.687500e-01
  %1281 = fadd fast float %1278, 1.562500e-02
  %1282 = fadd fast float %1279, 1.562500e-02
  %1283 = fadd fast float %1280, 1.562500e-02
  %1284 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %15, float %1281, float %1282, float %1283, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1285 = extractvalue %dx.types.ResRet.f32 %1284, 0
  %1286 = extractvalue %dx.types.ResRet.f32 %1284, 1
  %1287 = extractvalue %dx.types.ResRet.f32 %1284, 2
  br label %1575

; <label>:1288                                    ; preds = %1268
  %1289 = and i32 %1271, 127
  switch i32 %1289, label %1575 [
    i32 1, label %1290
    i32 2, label %1290
    i32 0, label %1290
    i32 3, label %1320
    i32 4, label %1441
  ]

; <label>:1290                                    ; preds = %1288, %1288, %1288
  %1291 = call float @dx.op.unary.f32(i32 7, float %1261)  ; Saturate(value)
  %1292 = call float @dx.op.unary.f32(i32 7, float %1264)  ; Saturate(value)
  %1293 = call float @dx.op.unary.f32(i32 7, float %1267)  ; Saturate(value)
  %1294 = call float @dx.op.unary.f32(i32 23, float %1291)  ; Log(value)
  %1295 = call float @dx.op.unary.f32(i32 23, float %1292)  ; Log(value)
  %1296 = call float @dx.op.unary.f32(i32 23, float %1293)  ; Log(value)
  %1297 = fmul fast float %1294, 0x3FDAAAAAA0000000
  %1298 = fmul fast float %1295, 0x3FDAAAAAA0000000
  %1299 = fmul fast float %1296, 0x3FDAAAAAA0000000
  %1300 = call float @dx.op.unary.f32(i32 21, float %1297)  ; Exp(value)
  %1301 = call float @dx.op.unary.f32(i32 21, float %1298)  ; Exp(value)
  %1302 = call float @dx.op.unary.f32(i32 21, float %1299)  ; Exp(value)
  %1303 = fmul fast float %1300, 0x3FF0E147A0000000
  %1304 = fmul fast float %1301, 0x3FF0E147A0000000
  %1305 = fmul fast float %1302, 0x3FF0E147A0000000
  %1306 = fadd fast float %1303, 0xBFAC28F5C0000000
  %1307 = fadd fast float %1304, 0xBFAC28F5C0000000
  %1308 = fadd fast float %1305, 0xBFAC28F5C0000000
  %1309 = call float @dx.op.unary.f32(i32 7, float %1306)  ; Saturate(value)
  %1310 = call float @dx.op.unary.f32(i32 7, float %1307)  ; Saturate(value)
  %1311 = call float @dx.op.unary.f32(i32 7, float %1308)  ; Saturate(value)
  %1312 = extractvalue %dx.types.CBufRet.f32 %1269, 2
  %1313 = extractvalue %dx.types.CBufRet.f32 %1269, 3
  %1314 = fmul fast float %1312, %1309
  %1315 = fmul fast float %1312, %1310
  %1316 = fmul fast float %1312, %1311
  %1317 = fadd fast float %1314, %1313
  %1318 = fadd fast float %1315, %1313
  %1319 = fadd fast float %1316, %1313
  br label %1575

; <label>:1320                                    ; preds = %1288
  %1321 = fmul fast float %1261, 0x4163D57C00000000
  %1322 = fmul fast float %1264, 0x4163D57C00000000
  %1323 = fmul fast float %1267, 0x4163D57C00000000
  %1324 = fadd fast float %1321, 9.999980e+05
  %1325 = fadd fast float %1322, 9.999980e+05
  %1326 = fadd fast float %1323, 9.999980e+05
  %1327 = fmul fast float %1324, %1261
  %1328 = fmul fast float %1325, %1264
  %1329 = fmul fast float %1326, %1267
  %1330 = fadd fast float %1327, 0xC0AFE17A60000000
  %1331 = fadd fast float %1328, 0xC0AFE17A60000000
  %1332 = fadd fast float %1329, 0xC0AFE17A60000000
  %1333 = fmul fast float %1330, %1261
  %1334 = fmul fast float %1331, %1264
  %1335 = fmul fast float %1332, %1267
  %1336 = fmul fast float %1261, 0x40F753C340000000
  %1337 = fmul fast float %1264, 0x40F753C340000000
  %1338 = fmul fast float %1267, 0x40F753C340000000
  %1339 = fsub fast float 9.999990e+06, %1336
  %1340 = fsub fast float 9.999990e+06, %1337
  %1341 = fsub fast float 9.999990e+06, %1338
  %1342 = fmul fast float %1339, %1261
  %1343 = fmul fast float %1340, %1264
  %1344 = fmul fast float %1341, %1267
  %1345 = fadd fast float %1342, 0x4136D1DD80000000
  %1346 = fadd fast float %1343, 0x4136D1DD80000000
  %1347 = fadd fast float %1344, 0x4136D1DD80000000
  %1348 = fmul fast float %1345, %1261
  %1349 = fmul fast float %1346, %1264
  %1350 = fmul fast float %1347, %1267
  %1351 = fadd fast float %1348, 1.000000e+00
  %1352 = fadd fast float %1349, 1.000000e+00
  %1353 = fadd fast float %1350, 1.000000e+00
  %1354 = fdiv fast float %1333, %1351
  %1355 = fdiv fast float %1334, %1352
  %1356 = fdiv fast float %1335, %1353
  %1357 = call float @dx.op.unary.f32(i32 7, float %1354)  ; Saturate(value)
  %1358 = call float @dx.op.unary.f32(i32 7, float %1355)  ; Saturate(value)
  %1359 = call float @dx.op.unary.f32(i32 7, float %1356)  ; Saturate(value)
  %1360 = extractvalue %dx.types.CBufRet.f32 %1269, 1
  %1361 = fmul fast float %1357, 0x3FE413A920000000
  %1362 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %1358, float %1361)  ; FMad(a,b,c)
  %1363 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %1359, float %1362)  ; FMad(a,b,c)
  %1364 = fmul fast float %1357, 0x3FB1B089A0000000
  %1365 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %1358, float %1364)  ; FMad(a,b,c)
  %1366 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %1359, float %1365)  ; FMad(a,b,c)
  %1367 = fmul fast float %1357, 0x3F90CB2960000000
  %1368 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %1358, float %1367)  ; FMad(a,b,c)
  %1369 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %1359, float %1368)  ; FMad(a,b,c)
  %1370 = fmul fast float %1363, %1360
  %1371 = fmul fast float %1366, %1360
  %1372 = fmul fast float %1369, %1360
  %1373 = fmul fast float %1370, 0x3F847AE140000000
  %1374 = fmul fast float %1371, 0x3F847AE140000000
  %1375 = fmul fast float %1372, 0x3F847AE140000000
  %1376 = fmul fast float %1370, 0x40B4D2F520000000
  %1377 = fmul fast float %1371, 0x40B4D2F520000000
  %1378 = fmul fast float %1372, 0x40B4D2F520000000
  %1379 = fadd fast float %1376, 0x41869ECF20000000
  %1380 = fadd fast float %1377, 0x41869ECF20000000
  %1381 = fadd fast float %1378, 0x41869ECF20000000
  %1382 = fmul fast float %1379, %1373
  %1383 = fmul fast float %1380, %1374
  %1384 = fmul fast float %1381, %1375
  %1385 = fadd fast float %1382, 0x417BB79C60000000
  %1386 = fadd fast float %1383, 0x417BB79C60000000
  %1387 = fadd fast float %1384, 0x417BB79C60000000
  %1388 = fmul fast float %1385, %1373
  %1389 = fmul fast float %1386, %1374
  %1390 = fmul fast float %1387, %1375
  %1391 = fadd fast float %1388, 0x41218DE180000000
  %1392 = fadd fast float %1389, 0x41218DE180000000
  %1393 = fadd fast float %1390, 0x41218DE180000000
  %1394 = fmul fast float %1391, %1373
  %1395 = fmul fast float %1392, %1374
  %1396 = fmul fast float %1393, %1375
  %1397 = fadd fast float %1394, 0x4077F174E0000000
  %1398 = fadd fast float %1395, 0x4077F174E0000000
  %1399 = fadd fast float %1396, 0x4077F174E0000000
  %1400 = fmul fast float %1397, %1373
  %1401 = fmul fast float %1398, %1374
  %1402 = fmul fast float %1399, %1375
  %1403 = fadd fast float %1400, 0x3F3FF79B80000000
  %1404 = fadd fast float %1401, 0x3F3FF79B80000000
  %1405 = fadd fast float %1402, 0x3F3FF79B80000000
  %1406 = fmul fast float %1370, 0x412442D320000000
  %1407 = fmul fast float %1371, 0x412442D320000000
  %1408 = fmul fast float %1372, 0x412442D320000000
  %1409 = fadd fast float %1406, 0x419385D5C0000000
  %1410 = fadd fast float %1407, 0x419385D5C0000000
  %1411 = fadd fast float %1408, 0x419385D5C0000000
  %1412 = fmul fast float %1409, %1373
  %1413 = fmul fast float %1410, %1374
  %1414 = fmul fast float %1411, %1375
  %1415 = fadd fast float %1412, 4.182885e+06
  %1416 = fadd fast float %1413, 4.182885e+06
  %1417 = fadd fast float %1414, 4.182885e+06
  %1418 = fmul fast float %1415, %1373
  %1419 = fmul fast float %1416, %1374
  %1420 = fmul fast float %1417, %1375
  %1421 = fadd fast float %1418, 0x40C4D633C0000000
  %1422 = fadd fast float %1419, 0x40C4D633C0000000
  %1423 = fadd fast float %1420, 0x40C4D633C0000000
  %1424 = fmul fast float %1421, %1373
  %1425 = fmul fast float %1422, %1374
  %1426 = fmul fast float %1423, %1375
  %1427 = fadd fast float %1424, 1.000000e+00
  %1428 = fadd fast float %1425, 1.000000e+00
  %1429 = fadd fast float %1426, 1.000000e+00
  %1430 = fdiv fast float %1403, %1427
  %1431 = fdiv fast float %1404, %1428
  %1432 = fdiv fast float %1405, %1429
  %1433 = extractvalue %dx.types.CBufRet.f32 %1269, 2
  %1434 = extractvalue %dx.types.CBufRet.f32 %1269, 3
  %1435 = fmul fast float %1433, %1430
  %1436 = fmul fast float %1433, %1431
  %1437 = fmul fast float %1433, %1432
  %1438 = fadd fast float %1435, %1434
  %1439 = fadd fast float %1436, %1434
  %1440 = fadd fast float %1437, %1434
  br label %1575

; <label>:1441                                    ; preds = %1288
  %1442 = fmul fast float %1261, 0x4163D57C00000000
  %1443 = fmul fast float %1264, 0x4163D57C00000000
  %1444 = fmul fast float %1267, 0x4163D57C00000000
  %1445 = fadd fast float %1442, 9.999980e+05
  %1446 = fadd fast float %1443, 9.999980e+05
  %1447 = fadd fast float %1444, 9.999980e+05
  %1448 = fmul fast float %1445, %1261
  %1449 = fmul fast float %1446, %1264
  %1450 = fmul fast float %1447, %1267
  %1451 = fadd fast float %1448, 0xC0AFE17A60000000
  %1452 = fadd fast float %1449, 0xC0AFE17A60000000
  %1453 = fadd fast float %1450, 0xC0AFE17A60000000
  %1454 = fmul fast float %1451, %1261
  %1455 = fmul fast float %1452, %1264
  %1456 = fmul fast float %1453, %1267
  %1457 = fmul fast float %1261, 0x40F753C340000000
  %1458 = fmul fast float %1264, 0x40F753C340000000
  %1459 = fmul fast float %1267, 0x40F753C340000000
  %1460 = fsub fast float 9.999990e+06, %1457
  %1461 = fsub fast float 9.999990e+06, %1458
  %1462 = fsub fast float 9.999990e+06, %1459
  %1463 = fmul fast float %1460, %1261
  %1464 = fmul fast float %1461, %1264
  %1465 = fmul fast float %1462, %1267
  %1466 = fadd fast float %1463, 0x4136D1DD80000000
  %1467 = fadd fast float %1464, 0x4136D1DD80000000
  %1468 = fadd fast float %1465, 0x4136D1DD80000000
  %1469 = fmul fast float %1466, %1261
  %1470 = fmul fast float %1467, %1264
  %1471 = fmul fast float %1468, %1267
  %1472 = fadd fast float %1469, 1.000000e+00
  %1473 = fadd fast float %1470, 1.000000e+00
  %1474 = fadd fast float %1471, 1.000000e+00
  %1475 = fdiv fast float %1454, %1472
  %1476 = fdiv fast float %1455, %1473
  %1477 = fdiv fast float %1456, %1474
  %1478 = call float @dx.op.unary.f32(i32 7, float %1475)  ; Saturate(value)
  %1479 = call float @dx.op.unary.f32(i32 7, float %1476)  ; Saturate(value)
  %1480 = call float @dx.op.unary.f32(i32 7, float %1477)  ; Saturate(value)
  %1481 = extractvalue %dx.types.CBufRet.f32 %1269, 1
  %1482 = fmul fast float %1478, 0x3FEA519BC0000000
  %1483 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %1479, float %1482)  ; FMad(a,b,c)
  %1484 = fmul fast float %1478, 0x3FA0FED480000000
  %1485 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %1479, float %1484)  ; FMad(a,b,c)
  %1486 = fmul fast float %1478, 0x3F917E1C00000000
  %1487 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %1479, float %1486)  ; FMad(a,b,c)
  %1488 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %1480, float %1487)  ; FMad(a,b,c)
  %1489 = call float @dx.op.binary.f32(i32 35, float %1478, float %1479)  ; FMax(a,b)
  %1490 = call float @dx.op.binary.f32(i32 35, float %1489, float %1480)  ; FMax(a,b)
  %1491 = fadd fast float %1490, -1.000000e+00
  %1492 = fmul fast float %1491, 2.500000e-01
  %1493 = call float @dx.op.unary.f32(i32 7, float %1492)  ; Saturate(value)
  %1494 = fsub fast float 1.000000e+00, %1493
  %1495 = fmul fast float %1494, %1483
  %1496 = fmul fast float %1494, %1485
  %1497 = fmul fast float %1494, %1488
  %1498 = fmul fast float %1493, %1478
  %1499 = fmul fast float %1493, %1479
  %1500 = fmul fast float %1493, %1480
  %1501 = fadd fast float %1495, %1498
  %1502 = fadd fast float %1496, %1499
  %1503 = fadd fast float %1497, %1500
  %1504 = fmul fast float %1501, %1481
  %1505 = fmul fast float %1502, %1481
  %1506 = fmul fast float %1503, %1481
  %1507 = fmul fast float %1504, 0x3F847AE140000000
  %1508 = fmul fast float %1505, 0x3F847AE140000000
  %1509 = fmul fast float %1506, 0x3F847AE140000000
  %1510 = fmul fast float %1504, 0x40B4D2F520000000
  %1511 = fmul fast float %1505, 0x40B4D2F520000000
  %1512 = fmul fast float %1506, 0x40B4D2F520000000
  %1513 = fadd fast float %1510, 0x41869ECF20000000
  %1514 = fadd fast float %1511, 0x41869ECF20000000
  %1515 = fadd fast float %1512, 0x41869ECF20000000
  %1516 = fmul fast float %1513, %1507
  %1517 = fmul fast float %1514, %1508
  %1518 = fmul fast float %1515, %1509
  %1519 = fadd fast float %1516, 0x417BB79C60000000
  %1520 = fadd fast float %1517, 0x417BB79C60000000
  %1521 = fadd fast float %1518, 0x417BB79C60000000
  %1522 = fmul fast float %1519, %1507
  %1523 = fmul fast float %1520, %1508
  %1524 = fmul fast float %1521, %1509
  %1525 = fadd fast float %1522, 0x41218DE180000000
  %1526 = fadd fast float %1523, 0x41218DE180000000
  %1527 = fadd fast float %1524, 0x41218DE180000000
  %1528 = fmul fast float %1525, %1507
  %1529 = fmul fast float %1526, %1508
  %1530 = fmul fast float %1527, %1509
  %1531 = fadd fast float %1528, 0x4077F174E0000000
  %1532 = fadd fast float %1529, 0x4077F174E0000000
  %1533 = fadd fast float %1530, 0x4077F174E0000000
  %1534 = fmul fast float %1531, %1507
  %1535 = fmul fast float %1532, %1508
  %1536 = fmul fast float %1533, %1509
  %1537 = fadd fast float %1534, 0x3F3FF79B80000000
  %1538 = fadd fast float %1535, 0x3F3FF79B80000000
  %1539 = fadd fast float %1536, 0x3F3FF79B80000000
  %1540 = fmul fast float %1504, 0x412442D320000000
  %1541 = fmul fast float %1505, 0x412442D320000000
  %1542 = fmul fast float %1506, 0x412442D320000000
  %1543 = fadd fast float %1540, 0x419385D5C0000000
  %1544 = fadd fast float %1541, 0x419385D5C0000000
  %1545 = fadd fast float %1542, 0x419385D5C0000000
  %1546 = fmul fast float %1543, %1507
  %1547 = fmul fast float %1544, %1508
  %1548 = fmul fast float %1545, %1509
  %1549 = fadd fast float %1546, 4.182885e+06
  %1550 = fadd fast float %1547, 4.182885e+06
  %1551 = fadd fast float %1548, 4.182885e+06
  %1552 = fmul fast float %1549, %1507
  %1553 = fmul fast float %1550, %1508
  %1554 = fmul fast float %1551, %1509
  %1555 = fadd fast float %1552, 0x40C4D633C0000000
  %1556 = fadd fast float %1553, 0x40C4D633C0000000
  %1557 = fadd fast float %1554, 0x40C4D633C0000000
  %1558 = fmul fast float %1555, %1507
  %1559 = fmul fast float %1556, %1508
  %1560 = fmul fast float %1557, %1509
  %1561 = fadd fast float %1558, 1.000000e+00
  %1562 = fadd fast float %1559, 1.000000e+00
  %1563 = fadd fast float %1560, 1.000000e+00
  %1564 = fdiv fast float %1537, %1561
  %1565 = fdiv fast float %1538, %1562
  %1566 = fdiv fast float %1539, %1563
  %1567 = extractvalue %dx.types.CBufRet.f32 %1269, 2
  %1568 = extractvalue %dx.types.CBufRet.f32 %1269, 3
  %1569 = fmul fast float %1567, %1564
  %1570 = fmul fast float %1567, %1565
  %1571 = fmul fast float %1567, %1566
  %1572 = fadd fast float %1569, %1568
  %1573 = fadd fast float %1570, %1568
  %1574 = fadd fast float %1571, %1568
  br label %1575

; <label>:1575                                    ; preds = %1441, %1320, %1290, %1288, %1274, %1242
  %1576 = phi float [ %1261, %1242 ], [ %1285, %1274 ], [ %1261, %1288 ], [ %1572, %1441 ], [ %1438, %1320 ], [ %1317, %1290 ]
  %1577 = phi float [ %1264, %1242 ], [ %1286, %1274 ], [ %1264, %1288 ], [ %1573, %1441 ], [ %1439, %1320 ], [ %1318, %1290 ]
  %1578 = phi float [ %1267, %1242 ], [ %1287, %1274 ], [ %1267, %1288 ], [ %1574, %1441 ], [ %1440, %1320 ], [ %1319, %1290 ]
  %1579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 234)  ; CBufferLoadLegacy(handle,regIndex)
  %1580 = extractvalue %dx.types.CBufRet.f32 %1579, 0
  %1581 = extractvalue %dx.types.CBufRet.f32 %1579, 2
  %1582 = call float @dx.op.unary.f32(i32 23, float %1246)  ; Log(value)
  %1583 = fmul fast float %1582, %1581
  %1584 = call float @dx.op.unary.f32(i32 21, float %1583)  ; Exp(value)
  %1585 = fmul fast float %1584, %1580
  %1586 = extractvalue %dx.types.CBufRet.f32 %1579, 1
  %1587 = extractvalue %dx.types.CBufRet.f32 %1579, 3
  %1588 = fmul fast float %1582, %1587
  %1589 = call float @dx.op.unary.f32(i32 21, float %1588)  ; Exp(value)
  %1590 = fmul fast float %1589, %1586
  %1591 = fadd fast float %1590, %1585
  %1592 = fmul fast float %1591, %1576
  %1593 = fmul fast float %1591, %1577
  %1594 = fmul fast float %1591, %1578
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1592)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1593)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1594)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1591)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!28}
!dx.entryPoints = !{!29}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !19, !24}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!6 = !{i32 0, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 74, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 73, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 70, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 15, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 76, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!17 = !{i32 10, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 5, i32 1, i32 2, i32 0, !7}
!18 = !{i32 11, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 71, i32 1, i32 4, i32 0, !7}
!19 = !{!20, !21, !22, !23}
!20 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!21 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 320, null}
!22 = !{i32 2, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 336, null}
!23 = !{i32 3, %tonemapping* undef, !"", i32 0, i32 4, i32 1, i32 64, null}
!24 = !{!25, !26, !27}
!25 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!26 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!27 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!28 = !{[24 x i32] [i32 22, i32 4, i32 15, i32 15, i32 0, i32 0, i32 7, i32 7, i32 7, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 7, i32 7]}
!29 = !{void ()* @ps_main, !"ps_main", !30, !4, !52}
!30 = !{!31, !50, null}
!31 = !{!32, !35, !37, !38, !40, !42, !44, !46, !48}
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
!49 = !{i32 7}
!50 = !{!51}
!51 = !{i32 0, !"SV_Target", i8 9, i8 16, !33, i8 0, i32 1, i8 4, i32 0, i8 0, !36}
!52 = !{i32 0, i64 16}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 1}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 1}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 1}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 1}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}

