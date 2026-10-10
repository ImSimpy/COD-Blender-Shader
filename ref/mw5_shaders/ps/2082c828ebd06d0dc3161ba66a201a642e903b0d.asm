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
; shader hash: 29b12999d964ef1f4258bad6062682af
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
;   [272 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S0             s1     1
;                                   sampler      NA          NA      S1             s2     1
;                                   sampler      NA          NA      S2             s3     1
;                                   sampler      NA          NA      S3             s4     1
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
%perObject = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
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
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %42 = extractvalue %dx.types.CBufRet.f32 %41, 0
  %43 = extractvalue %dx.types.CBufRet.f32 %41, 1
  %44 = fsub fast float %39, %42
  %45 = fsub fast float %40, %43
  %46 = extractvalue %dx.types.CBufRet.f32 %41, 2
  %47 = extractvalue %dx.types.CBufRet.f32 %41, 3
  %48 = fmul fast float %44, %46
  %49 = fmul fast float %45, %47
  %50 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.f32 %50, 0
  %52 = extractvalue %dx.types.CBufRet.f32 %50, 1
  %53 = fmul fast float %48, %51
  %54 = fmul fast float %49, %52
  %55 = fptoui float %53 to i32
  %56 = fptoui float %54 to i32
  %57 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %58 = extractvalue %dx.types.CBufRet.i32 %57, 1
  %59 = shl i32 %58, 2
  %60 = extractvalue %dx.types.CBufRet.i32 %57, 3
  %61 = add i32 %59, %60
  %62 = lshr i32 %56, 2
  %63 = extractvalue %dx.types.CBufRet.i32 %57, 2
  %64 = mul i32 %62, %63
  %65 = lshr i32 %55, 3
  %66 = add i32 %61, %65
  %67 = add i32 %66, %64
  %68 = shl i32 %67, 2
  %69 = shl i32 %56, 3
  %70 = and i32 %69, 24
  %71 = and i32 %55, 7
  %72 = or i32 %70, %71
  %73 = shl i32 1, %72
  %74 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %68, i32 undef)  ; BufferLoad(srv,index,wot)
  %75 = extractvalue %dx.types.ResRet.i32 %74, 0
  %76 = and i32 %75, %73
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79, !dx.controlflow.hints !54

; <label>:78                                      ; preds = %0
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %79

; <label>:79                                      ; preds = %78, %0
  %80 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.f32 %80, 3
  %82 = fcmp fast ogt float %81, 0.000000e+00
  br i1 %82, label %83, label %133, !dx.controlflow.hints !55

; <label>:83                                      ; preds = %79
  %84 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %85 = extractvalue %dx.types.CBufRet.f32 %84, 3
  %86 = fmul fast float %85, 1.000000e+01
  %87 = call float @dx.op.unary.f32(i32 27, float %86)  ; Round_ni(value)
  %88 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.f32 %88, 0
  %90 = extractvalue %dx.types.CBufRet.f32 %88, 1
  %91 = fmul fast float %89, %39
  %92 = fmul fast float %90, %40
  %93 = call float @dx.op.unary.f32(i32 27, float %91)  ; Round_ni(value)
  %94 = call float @dx.op.unary.f32(i32 27, float %92)  ; Round_ni(value)
  %95 = fmul fast float %87, 0x4002B851E0000000
  %96 = call float @dx.op.unary.f32(i32 22, float %95)  ; Frc(value)
  %97 = fadd fast float %96, 0x3FB99999A0000000
  %98 = fadd fast float %97, %93
  %99 = fadd fast float %97, %94
  %100 = fmul fast float %98, 0x3FE1BEDF00000000
  %101 = call float @dx.op.unary.f32(i32 22, float %100)  ; Frc(value)
  %102 = fmul fast float %98, %101
  %103 = fadd fast float %102, %99
  %104 = fmul fast float %99, 0x3FD3BEBE20000000
  %105 = call float @dx.op.unary.f32(i32 22, float %104)  ; Frc(value)
  %106 = fmul fast float %99, %105
  %107 = fadd fast float %106, %98
  %108 = fmul fast float %103, %107
  %109 = call float @dx.op.unary.f32(i32 22, float %108)  ; Frc(value)
  %110 = extractvalue %dx.types.CBufRet.f32 %88, 3
  %111 = bitcast float %110 to i32
  %112 = and i32 %111, 255
  %113 = uitofp i32 %112 to float
  %114 = fmul fast float %109, 0x4085373340000000
  %115 = call float @dx.op.unary.f32(i32 22, float %114)  ; Frc(value)
  %116 = fmul fast float %113, 0x3F6CE9B6A0000000
  %117 = fcmp fast olt float %115, %116
  br i1 %117, label %118, label %133, !dx.controlflow.hints !56

; <label>:118                                     ; preds = %83
  %119 = fdiv fast float %115, %116
  %120 = fmul fast float %119, 2.000000e+00
  %121 = fadd fast float %120, -1.000000e+00
  %122 = lshr i32 %111, 8
  %123 = and i32 %122, 255
  %124 = uitofp i32 %123 to float
  %125 = call float @dx.op.unary.f32(i32 83, float %33)  ; DerivCoarseX(value)
  %126 = call float @dx.op.unary.f32(i32 83, float %34)  ; DerivCoarseX(value)
  %127 = fmul fast float %121, %125
  %128 = fmul fast float %127, %124
  %129 = fmul fast float %126, %121
  %130 = fmul fast float %129, %124
  %131 = fadd fast float %128, %33
  %132 = fadd fast float %130, %34
  br label %133

; <label>:133                                     ; preds = %118, %83, %79
  %134 = phi float [ %131, %118 ], [ %33, %83 ], [ %33, %79 ]
  %135 = phi float [ %132, %118 ], [ %34, %83 ], [ %34, %79 ]
  %136 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %16, float %134, float %135, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %137 = extractvalue %dx.types.ResRet.f32 %136, 3
  %138 = fmul fast float %137, %38
  %139 = fcmp fast ole float %35, 0x3FA4B5DCC0000000
  %140 = fmul fast float %35, 0x3FB3D07220000000
  %141 = fadd fast float %35, 0x3FAC28F5C0000000
  %142 = fmul fast float %141, 0x3FEE54EDE0000000
  %143 = call float @dx.op.unary.f32(i32 23, float %142)  ; Log(value)
  %144 = fmul fast float %143, 0x4003333340000000
  %145 = call float @dx.op.unary.f32(i32 21, float %144)  ; Exp(value)
  %146 = select i1 %139, float %140, float %145
  %147 = fcmp fast ole float %36, 0x3FA4B5DCC0000000
  %148 = fmul fast float %36, 0x3FB3D07220000000
  %149 = fadd fast float %36, 0x3FAC28F5C0000000
  %150 = fmul fast float %149, 0x3FEE54EDE0000000
  %151 = call float @dx.op.unary.f32(i32 23, float %150)  ; Log(value)
  %152 = fmul fast float %151, 0x4003333340000000
  %153 = call float @dx.op.unary.f32(i32 21, float %152)  ; Exp(value)
  %154 = select i1 %147, float %148, float %153
  %155 = fcmp fast ole float %37, 0x3FA4B5DCC0000000
  %156 = fmul fast float %37, 0x3FB3D07220000000
  %157 = fadd fast float %37, 0x3FAC28F5C0000000
  %158 = fmul fast float %157, 0x3FEE54EDE0000000
  %159 = call float @dx.op.unary.f32(i32 23, float %158)  ; Log(value)
  %160 = fmul fast float %159, 0x4003333340000000
  %161 = call float @dx.op.unary.f32(i32 21, float %160)  ; Exp(value)
  %162 = select i1 %155, float %156, float %161
  %163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.f32 %163, 3
  %165 = bitcast float %164 to i32
  %166 = lshr i32 %165, 4
  %167 = lshr i32 %165, 9
  %168 = and i32 %167, 1
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %264, label %170

; <label>:170                                     ; preds = %133
  %171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.f32 %171, 3
  %173 = bitcast float %172 to i32
  %174 = and i32 %173, 65535
  %175 = call float @dx.op.legacyF16ToF32(i32 131, i32 %174)  ; LegacyF16ToF32(value)
  %176 = lshr i32 %173, 16
  %177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %176)  ; LegacyF16ToF32(value)
  %178 = extractvalue %dx.types.CBufRet.f32 %171, 2
  %179 = bitcast float %178 to i32
  %180 = and i32 %179, 65535
  %181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %180)  ; LegacyF16ToF32(value)
  %182 = lshr i32 %179, 16
  %183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %182)  ; LegacyF16ToF32(value)
  %184 = and i32 %166, 1
  %185 = icmp ne i32 %184, 0
  %186 = fcmp fast ogt float %175, 0.000000e+00
  %187 = fcmp fast ogt float %177, 0.000000e+00
  %188 = and i1 %186, %187
  %189 = fcmp fast ogt float %181, 0.000000e+00
  br i1 %188, label %190, label %250

; <label>:190                                     ; preds = %170
  br i1 %189, label %191, label %199

; <label>:191                                     ; preds = %190
  %192 = fmul fast float %177, %32
  %193 = fmul fast float %175, %31
  %194 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %13, float %193, float %192, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %195 = extractvalue %dx.types.ResRet.f32 %194, 0
  %196 = fsub fast float 1.000000e+00, %195
  %197 = select i1 %185, float %196, float %195
  %198 = fmul fast float %197, %181
  br label %199

; <label>:199                                     ; preds = %191, %190
  %200 = phi float [ %198, %191 ], [ 0.000000e+00, %190 ]
  %201 = fadd fast float %200, %183
  %202 = call float @dx.op.unary.f32(i32 7, float %201)  ; Saturate(value)
  br i1 %189, label %203, label %213

; <label>:203                                     ; preds = %199
  %204 = fmul fast float %177, %32
  %205 = fsub fast float 1.000000e+00, %31
  %206 = fmul fast float %175, %205
  %207 = fsub fast float 1.000000e+00, %206
  %208 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %13, float %207, float %204, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %209 = extractvalue %dx.types.ResRet.f32 %208, 1
  %210 = fsub fast float 1.000000e+00, %209
  %211 = select i1 %185, float %210, float %209
  %212 = fmul fast float %211, %181
  br label %213

; <label>:213                                     ; preds = %203, %199
  %214 = phi float [ %212, %203 ], [ 0.000000e+00, %199 ]
  %215 = fadd fast float %214, %183
  %216 = call float @dx.op.unary.f32(i32 7, float %215)  ; Saturate(value)
  %217 = fmul fast float %216, %202
  br i1 %189, label %218, label %230

; <label>:218                                     ; preds = %213
  %219 = fsub fast float 1.000000e+00, %32
  %220 = fmul fast float %177, %219
  %221 = fsub fast float 1.000000e+00, %220
  %222 = fsub fast float 1.000000e+00, %31
  %223 = fmul fast float %175, %222
  %224 = fsub fast float 1.000000e+00, %223
  %225 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %13, float %224, float %221, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %226 = extractvalue %dx.types.ResRet.f32 %225, 2
  %227 = fsub fast float 1.000000e+00, %226
  %228 = select i1 %185, float %227, float %226
  %229 = fmul fast float %228, %181
  br label %230

; <label>:230                                     ; preds = %218, %213
  %231 = phi float [ %229, %218 ], [ 0.000000e+00, %213 ]
  %232 = fadd fast float %231, %183
  %233 = call float @dx.op.unary.f32(i32 7, float %232)  ; Saturate(value)
  %234 = fmul fast float %217, %233
  br i1 %189, label %235, label %245

; <label>:235                                     ; preds = %230
  %236 = fsub fast float 1.000000e+00, %32
  %237 = fmul fast float %177, %236
  %238 = fsub fast float 1.000000e+00, %237
  %239 = fmul fast float %175, %31
  %240 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %13, float %239, float %238, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %241 = extractvalue %dx.types.ResRet.f32 %240, 3
  %242 = fsub fast float 1.000000e+00, %241
  %243 = select i1 %185, float %242, float %241
  %244 = fmul fast float %243, %181
  br label %245

; <label>:245                                     ; preds = %235, %230
  %246 = phi float [ %244, %235 ], [ 0.000000e+00, %230 ]
  %247 = fadd fast float %246, %183
  %248 = call float @dx.op.unary.f32(i32 7, float %247)  ; Saturate(value)
  %249 = fmul fast float %234, %248
  br label %261

; <label>:250                                     ; preds = %170
  br i1 %189, label %251, label %257

; <label>:251                                     ; preds = %250
  %252 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %13, float %31, float %32, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %253 = extractvalue %dx.types.ResRet.f32 %252, 0
  %254 = fsub fast float 1.000000e+00, %253
  %255 = select i1 %185, float %254, float %253
  %256 = fmul fast float %255, %181
  br label %257

; <label>:257                                     ; preds = %251, %250
  %258 = phi float [ %256, %251 ], [ 0.000000e+00, %250 ]
  %259 = fadd fast float %258, %183
  %260 = call float @dx.op.unary.f32(i32 7, float %259)  ; Saturate(value)
  br label %261

; <label>:261                                     ; preds = %257, %245
  %262 = phi float [ %249, %245 ], [ %260, %257 ]
  %263 = fmul fast float %262, %138
  br label %264

; <label>:264                                     ; preds = %261, %133
  %265 = phi float [ %263, %261 ], [ %138, %133 ]
  %266 = and i32 %167, 2
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %362, label %268

; <label>:268                                     ; preds = %264
  %269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %270 = extractvalue %dx.types.CBufRet.f32 %269, 3
  %271 = bitcast float %270 to i32
  %272 = and i32 %271, 65535
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = lshr i32 %271, 16
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274)  ; LegacyF16ToF32(value)
  %276 = extractvalue %dx.types.CBufRet.f32 %269, 2
  %277 = bitcast float %276 to i32
  %278 = and i32 %277, 65535
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = lshr i32 %277, 16
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = and i32 %166, 2
  %283 = icmp ne i32 %282, 0
  %284 = fcmp fast ogt float %273, 0.000000e+00
  %285 = fcmp fast ogt float %275, 0.000000e+00
  %286 = and i1 %284, %285
  %287 = fcmp fast ogt float %279, 0.000000e+00
  br i1 %286, label %288, label %348

; <label>:288                                     ; preds = %268
  br i1 %287, label %289, label %297

; <label>:289                                     ; preds = %288
  %290 = fmul fast float %275, %30
  %291 = fmul fast float %273, %29
  %292 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %13, float %291, float %290, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %293 = extractvalue %dx.types.ResRet.f32 %292, 0
  %294 = fsub fast float 1.000000e+00, %293
  %295 = select i1 %283, float %294, float %293
  %296 = fmul fast float %295, %279
  br label %297

; <label>:297                                     ; preds = %289, %288
  %298 = phi float [ %296, %289 ], [ 0.000000e+00, %288 ]
  %299 = fadd fast float %298, %281
  %300 = call float @dx.op.unary.f32(i32 7, float %299)  ; Saturate(value)
  br i1 %287, label %301, label %311

; <label>:301                                     ; preds = %297
  %302 = fmul fast float %275, %30
  %303 = fsub fast float 1.000000e+00, %29
  %304 = fmul fast float %273, %303
  %305 = fsub fast float 1.000000e+00, %304
  %306 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %13, float %305, float %302, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %307 = extractvalue %dx.types.ResRet.f32 %306, 1
  %308 = fsub fast float 1.000000e+00, %307
  %309 = select i1 %283, float %308, float %307
  %310 = fmul fast float %309, %279
  br label %311

; <label>:311                                     ; preds = %301, %297
  %312 = phi float [ %310, %301 ], [ 0.000000e+00, %297 ]
  %313 = fadd fast float %312, %281
  %314 = call float @dx.op.unary.f32(i32 7, float %313)  ; Saturate(value)
  %315 = fmul fast float %314, %300
  br i1 %287, label %316, label %328

; <label>:316                                     ; preds = %311
  %317 = fsub fast float 1.000000e+00, %30
  %318 = fmul fast float %275, %317
  %319 = fsub fast float 1.000000e+00, %318
  %320 = fsub fast float 1.000000e+00, %29
  %321 = fmul fast float %273, %320
  %322 = fsub fast float 1.000000e+00, %321
  %323 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %13, float %322, float %319, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %324 = extractvalue %dx.types.ResRet.f32 %323, 2
  %325 = fsub fast float 1.000000e+00, %324
  %326 = select i1 %283, float %325, float %324
  %327 = fmul fast float %326, %279
  br label %328

; <label>:328                                     ; preds = %316, %311
  %329 = phi float [ %327, %316 ], [ 0.000000e+00, %311 ]
  %330 = fadd fast float %329, %281
  %331 = call float @dx.op.unary.f32(i32 7, float %330)  ; Saturate(value)
  %332 = fmul fast float %315, %331
  br i1 %287, label %333, label %343

; <label>:333                                     ; preds = %328
  %334 = fsub fast float 1.000000e+00, %30
  %335 = fmul fast float %275, %334
  %336 = fsub fast float 1.000000e+00, %335
  %337 = fmul fast float %273, %29
  %338 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %13, float %337, float %336, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %339 = extractvalue %dx.types.ResRet.f32 %338, 3
  %340 = fsub fast float 1.000000e+00, %339
  %341 = select i1 %283, float %340, float %339
  %342 = fmul fast float %341, %279
  br label %343

; <label>:343                                     ; preds = %333, %328
  %344 = phi float [ %342, %333 ], [ 0.000000e+00, %328 ]
  %345 = fadd fast float %344, %281
  %346 = call float @dx.op.unary.f32(i32 7, float %345)  ; Saturate(value)
  %347 = fmul fast float %332, %346
  br label %359

; <label>:348                                     ; preds = %268
  br i1 %287, label %349, label %355

; <label>:349                                     ; preds = %348
  %350 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %13, float %29, float %30, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %351 = extractvalue %dx.types.ResRet.f32 %350, 0
  %352 = fsub fast float 1.000000e+00, %351
  %353 = select i1 %283, float %352, float %351
  %354 = fmul fast float %353, %279
  br label %355

; <label>:355                                     ; preds = %349, %348
  %356 = phi float [ %354, %349 ], [ 0.000000e+00, %348 ]
  %357 = fadd fast float %356, %281
  %358 = call float @dx.op.unary.f32(i32 7, float %357)  ; Saturate(value)
  br label %359

; <label>:359                                     ; preds = %355, %343
  %360 = phi float [ %347, %343 ], [ %358, %355 ]
  %361 = fmul fast float %360, %265
  br label %362

; <label>:362                                     ; preds = %359, %264
  %363 = phi float [ %361, %359 ], [ %265, %264 ]
  %364 = and i32 %167, 4
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %460, label %366

; <label>:366                                     ; preds = %362
  %367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %368 = extractvalue %dx.types.CBufRet.f32 %367, 3
  %369 = bitcast float %368 to i32
  %370 = and i32 %369, 65535
  %371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %370)  ; LegacyF16ToF32(value)
  %372 = lshr i32 %369, 16
  %373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %372)  ; LegacyF16ToF32(value)
  %374 = extractvalue %dx.types.CBufRet.f32 %367, 2
  %375 = bitcast float %374 to i32
  %376 = and i32 %375, 65535
  %377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %376)  ; LegacyF16ToF32(value)
  %378 = lshr i32 %375, 16
  %379 = call float @dx.op.legacyF16ToF32(i32 131, i32 %378)  ; LegacyF16ToF32(value)
  %380 = and i32 %166, 4
  %381 = icmp ne i32 %380, 0
  %382 = fcmp fast ogt float %371, 0.000000e+00
  %383 = fcmp fast ogt float %373, 0.000000e+00
  %384 = and i1 %382, %383
  %385 = fcmp fast ogt float %377, 0.000000e+00
  br i1 %384, label %386, label %446

; <label>:386                                     ; preds = %366
  br i1 %385, label %387, label %395

; <label>:387                                     ; preds = %386
  %388 = fmul fast float %373, %28
  %389 = fmul fast float %371, %27
  %390 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %13, float %389, float %388, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %391 = extractvalue %dx.types.ResRet.f32 %390, 0
  %392 = fsub fast float 1.000000e+00, %391
  %393 = select i1 %381, float %392, float %391
  %394 = fmul fast float %393, %377
  br label %395

; <label>:395                                     ; preds = %387, %386
  %396 = phi float [ %394, %387 ], [ 0.000000e+00, %386 ]
  %397 = fadd fast float %396, %379
  %398 = call float @dx.op.unary.f32(i32 7, float %397)  ; Saturate(value)
  br i1 %385, label %399, label %409

; <label>:399                                     ; preds = %395
  %400 = fmul fast float %373, %28
  %401 = fsub fast float 1.000000e+00, %27
  %402 = fmul fast float %371, %401
  %403 = fsub fast float 1.000000e+00, %402
  %404 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %13, float %403, float %400, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %405 = extractvalue %dx.types.ResRet.f32 %404, 1
  %406 = fsub fast float 1.000000e+00, %405
  %407 = select i1 %381, float %406, float %405
  %408 = fmul fast float %407, %377
  br label %409

; <label>:409                                     ; preds = %399, %395
  %410 = phi float [ %408, %399 ], [ 0.000000e+00, %395 ]
  %411 = fadd fast float %410, %379
  %412 = call float @dx.op.unary.f32(i32 7, float %411)  ; Saturate(value)
  %413 = fmul fast float %412, %398
  br i1 %385, label %414, label %426

; <label>:414                                     ; preds = %409
  %415 = fsub fast float 1.000000e+00, %28
  %416 = fmul fast float %373, %415
  %417 = fsub fast float 1.000000e+00, %416
  %418 = fsub fast float 1.000000e+00, %27
  %419 = fmul fast float %371, %418
  %420 = fsub fast float 1.000000e+00, %419
  %421 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %13, float %420, float %417, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %422 = extractvalue %dx.types.ResRet.f32 %421, 2
  %423 = fsub fast float 1.000000e+00, %422
  %424 = select i1 %381, float %423, float %422
  %425 = fmul fast float %424, %377
  br label %426

; <label>:426                                     ; preds = %414, %409
  %427 = phi float [ %425, %414 ], [ 0.000000e+00, %409 ]
  %428 = fadd fast float %427, %379
  %429 = call float @dx.op.unary.f32(i32 7, float %428)  ; Saturate(value)
  %430 = fmul fast float %413, %429
  br i1 %385, label %431, label %441

; <label>:431                                     ; preds = %426
  %432 = fsub fast float 1.000000e+00, %28
  %433 = fmul fast float %373, %432
  %434 = fsub fast float 1.000000e+00, %433
  %435 = fmul fast float %371, %27
  %436 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %13, float %435, float %434, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %437 = extractvalue %dx.types.ResRet.f32 %436, 3
  %438 = fsub fast float 1.000000e+00, %437
  %439 = select i1 %381, float %438, float %437
  %440 = fmul fast float %439, %377
  br label %441

; <label>:441                                     ; preds = %431, %426
  %442 = phi float [ %440, %431 ], [ 0.000000e+00, %426 ]
  %443 = fadd fast float %442, %379
  %444 = call float @dx.op.unary.f32(i32 7, float %443)  ; Saturate(value)
  %445 = fmul fast float %430, %444
  br label %457

; <label>:446                                     ; preds = %366
  br i1 %385, label %447, label %453

; <label>:447                                     ; preds = %446
  %448 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %13, float %27, float %28, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %449 = extractvalue %dx.types.ResRet.f32 %448, 0
  %450 = fsub fast float 1.000000e+00, %449
  %451 = select i1 %381, float %450, float %449
  %452 = fmul fast float %451, %377
  br label %453

; <label>:453                                     ; preds = %447, %446
  %454 = phi float [ %452, %447 ], [ 0.000000e+00, %446 ]
  %455 = fadd fast float %454, %379
  %456 = call float @dx.op.unary.f32(i32 7, float %455)  ; Saturate(value)
  br label %457

; <label>:457                                     ; preds = %453, %441
  %458 = phi float [ %445, %441 ], [ %456, %453 ]
  %459 = fmul fast float %458, %363
  br label %460

; <label>:460                                     ; preds = %457, %362
  %461 = phi float [ %459, %457 ], [ %363, %362 ]
  %462 = and i32 %167, 8
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %558, label %464

; <label>:464                                     ; preds = %460
  %465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %466 = extractvalue %dx.types.CBufRet.f32 %465, 3
  %467 = bitcast float %466 to i32
  %468 = and i32 %467, 65535
  %469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %468)  ; LegacyF16ToF32(value)
  %470 = lshr i32 %467, 16
  %471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %470)  ; LegacyF16ToF32(value)
  %472 = extractvalue %dx.types.CBufRet.f32 %465, 2
  %473 = bitcast float %472 to i32
  %474 = and i32 %473, 65535
  %475 = call float @dx.op.legacyF16ToF32(i32 131, i32 %474)  ; LegacyF16ToF32(value)
  %476 = lshr i32 %473, 16
  %477 = call float @dx.op.legacyF16ToF32(i32 131, i32 %476)  ; LegacyF16ToF32(value)
  %478 = and i32 %166, 8
  %479 = icmp ne i32 %478, 0
  %480 = fcmp fast ogt float %469, 0.000000e+00
  %481 = fcmp fast ogt float %471, 0.000000e+00
  %482 = and i1 %480, %481
  %483 = fcmp fast ogt float %475, 0.000000e+00
  br i1 %482, label %484, label %544

; <label>:484                                     ; preds = %464
  br i1 %483, label %485, label %493

; <label>:485                                     ; preds = %484
  %486 = fmul fast float %471, %26
  %487 = fmul fast float %469, %25
  %488 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %13, float %487, float %486, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %489 = extractvalue %dx.types.ResRet.f32 %488, 0
  %490 = fsub fast float 1.000000e+00, %489
  %491 = select i1 %479, float %490, float %489
  %492 = fmul fast float %491, %475
  br label %493

; <label>:493                                     ; preds = %485, %484
  %494 = phi float [ %492, %485 ], [ 0.000000e+00, %484 ]
  %495 = fadd fast float %494, %477
  %496 = call float @dx.op.unary.f32(i32 7, float %495)  ; Saturate(value)
  br i1 %483, label %497, label %507

; <label>:497                                     ; preds = %493
  %498 = fmul fast float %471, %26
  %499 = fsub fast float 1.000000e+00, %25
  %500 = fmul fast float %469, %499
  %501 = fsub fast float 1.000000e+00, %500
  %502 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %13, float %501, float %498, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %503 = extractvalue %dx.types.ResRet.f32 %502, 1
  %504 = fsub fast float 1.000000e+00, %503
  %505 = select i1 %479, float %504, float %503
  %506 = fmul fast float %505, %475
  br label %507

; <label>:507                                     ; preds = %497, %493
  %508 = phi float [ %506, %497 ], [ 0.000000e+00, %493 ]
  %509 = fadd fast float %508, %477
  %510 = call float @dx.op.unary.f32(i32 7, float %509)  ; Saturate(value)
  %511 = fmul fast float %510, %496
  br i1 %483, label %512, label %524

; <label>:512                                     ; preds = %507
  %513 = fsub fast float 1.000000e+00, %26
  %514 = fmul fast float %471, %513
  %515 = fsub fast float 1.000000e+00, %514
  %516 = fsub fast float 1.000000e+00, %25
  %517 = fmul fast float %469, %516
  %518 = fsub fast float 1.000000e+00, %517
  %519 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %13, float %518, float %515, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %520 = extractvalue %dx.types.ResRet.f32 %519, 2
  %521 = fsub fast float 1.000000e+00, %520
  %522 = select i1 %479, float %521, float %520
  %523 = fmul fast float %522, %475
  br label %524

; <label>:524                                     ; preds = %512, %507
  %525 = phi float [ %523, %512 ], [ 0.000000e+00, %507 ]
  %526 = fadd fast float %525, %477
  %527 = call float @dx.op.unary.f32(i32 7, float %526)  ; Saturate(value)
  %528 = fmul fast float %511, %527
  br i1 %483, label %529, label %539

; <label>:529                                     ; preds = %524
  %530 = fsub fast float 1.000000e+00, %26
  %531 = fmul fast float %471, %530
  %532 = fsub fast float 1.000000e+00, %531
  %533 = fmul fast float %469, %25
  %534 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %13, float %533, float %532, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %535 = extractvalue %dx.types.ResRet.f32 %534, 3
  %536 = fsub fast float 1.000000e+00, %535
  %537 = select i1 %479, float %536, float %535
  %538 = fmul fast float %537, %475
  br label %539

; <label>:539                                     ; preds = %529, %524
  %540 = phi float [ %538, %529 ], [ 0.000000e+00, %524 ]
  %541 = fadd fast float %540, %477
  %542 = call float @dx.op.unary.f32(i32 7, float %541)  ; Saturate(value)
  %543 = fmul fast float %528, %542
  br label %555

; <label>:544                                     ; preds = %464
  br i1 %483, label %545, label %551

; <label>:545                                     ; preds = %544
  %546 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %13, float %25, float %26, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %547 = extractvalue %dx.types.ResRet.f32 %546, 0
  %548 = fsub fast float 1.000000e+00, %547
  %549 = select i1 %479, float %548, float %547
  %550 = fmul fast float %549, %475
  br label %551

; <label>:551                                     ; preds = %545, %544
  %552 = phi float [ %550, %545 ], [ 0.000000e+00, %544 ]
  %553 = fadd fast float %552, %477
  %554 = call float @dx.op.unary.f32(i32 7, float %553)  ; Saturate(value)
  br label %555

; <label>:555                                     ; preds = %551, %539
  %556 = phi float [ %543, %539 ], [ %554, %551 ]
  %557 = fmul fast float %556, %461
  br label %558

; <label>:558                                     ; preds = %555, %460
  %559 = phi float [ %557, %555 ], [ %461, %460 ]
  %560 = and i32 %167, 16
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %656, label %562

; <label>:562                                     ; preds = %558
  %563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %564 = extractvalue %dx.types.CBufRet.f32 %563, 3
  %565 = bitcast float %564 to i32
  %566 = and i32 %565, 65535
  %567 = call float @dx.op.legacyF16ToF32(i32 131, i32 %566)  ; LegacyF16ToF32(value)
  %568 = lshr i32 %565, 16
  %569 = call float @dx.op.legacyF16ToF32(i32 131, i32 %568)  ; LegacyF16ToF32(value)
  %570 = extractvalue %dx.types.CBufRet.f32 %563, 2
  %571 = bitcast float %570 to i32
  %572 = and i32 %571, 65535
  %573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %572)  ; LegacyF16ToF32(value)
  %574 = lshr i32 %571, 16
  %575 = call float @dx.op.legacyF16ToF32(i32 131, i32 %574)  ; LegacyF16ToF32(value)
  %576 = and i32 %166, 16
  %577 = icmp ne i32 %576, 0
  %578 = fcmp fast ogt float %567, 0.000000e+00
  %579 = fcmp fast ogt float %569, 0.000000e+00
  %580 = and i1 %578, %579
  %581 = fcmp fast ogt float %573, 0.000000e+00
  br i1 %580, label %582, label %642

; <label>:582                                     ; preds = %562
  br i1 %581, label %583, label %591

; <label>:583                                     ; preds = %582
  %584 = fmul fast float %569, %24
  %585 = fmul fast float %567, %23
  %586 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %13, float %585, float %584, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %587 = extractvalue %dx.types.ResRet.f32 %586, 0
  %588 = fsub fast float 1.000000e+00, %587
  %589 = select i1 %577, float %588, float %587
  %590 = fmul fast float %589, %573
  br label %591

; <label>:591                                     ; preds = %583, %582
  %592 = phi float [ %590, %583 ], [ 0.000000e+00, %582 ]
  %593 = fadd fast float %592, %575
  %594 = call float @dx.op.unary.f32(i32 7, float %593)  ; Saturate(value)
  br i1 %581, label %595, label %605

; <label>:595                                     ; preds = %591
  %596 = fmul fast float %569, %24
  %597 = fsub fast float 1.000000e+00, %23
  %598 = fmul fast float %567, %597
  %599 = fsub fast float 1.000000e+00, %598
  %600 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %13, float %599, float %596, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %601 = extractvalue %dx.types.ResRet.f32 %600, 1
  %602 = fsub fast float 1.000000e+00, %601
  %603 = select i1 %577, float %602, float %601
  %604 = fmul fast float %603, %573
  br label %605

; <label>:605                                     ; preds = %595, %591
  %606 = phi float [ %604, %595 ], [ 0.000000e+00, %591 ]
  %607 = fadd fast float %606, %575
  %608 = call float @dx.op.unary.f32(i32 7, float %607)  ; Saturate(value)
  %609 = fmul fast float %608, %594
  br i1 %581, label %610, label %622

; <label>:610                                     ; preds = %605
  %611 = fsub fast float 1.000000e+00, %24
  %612 = fmul fast float %569, %611
  %613 = fsub fast float 1.000000e+00, %612
  %614 = fsub fast float 1.000000e+00, %23
  %615 = fmul fast float %567, %614
  %616 = fsub fast float 1.000000e+00, %615
  %617 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %13, float %616, float %613, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %618 = extractvalue %dx.types.ResRet.f32 %617, 2
  %619 = fsub fast float 1.000000e+00, %618
  %620 = select i1 %577, float %619, float %618
  %621 = fmul fast float %620, %573
  br label %622

; <label>:622                                     ; preds = %610, %605
  %623 = phi float [ %621, %610 ], [ 0.000000e+00, %605 ]
  %624 = fadd fast float %623, %575
  %625 = call float @dx.op.unary.f32(i32 7, float %624)  ; Saturate(value)
  %626 = fmul fast float %609, %625
  br i1 %581, label %627, label %637

; <label>:627                                     ; preds = %622
  %628 = fsub fast float 1.000000e+00, %24
  %629 = fmul fast float %569, %628
  %630 = fsub fast float 1.000000e+00, %629
  %631 = fmul fast float %567, %23
  %632 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %13, float %631, float %630, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %633 = extractvalue %dx.types.ResRet.f32 %632, 3
  %634 = fsub fast float 1.000000e+00, %633
  %635 = select i1 %577, float %634, float %633
  %636 = fmul fast float %635, %573
  br label %637

; <label>:637                                     ; preds = %627, %622
  %638 = phi float [ %636, %627 ], [ 0.000000e+00, %622 ]
  %639 = fadd fast float %638, %575
  %640 = call float @dx.op.unary.f32(i32 7, float %639)  ; Saturate(value)
  %641 = fmul fast float %626, %640
  br label %653

; <label>:642                                     ; preds = %562
  br i1 %581, label %643, label %649

; <label>:643                                     ; preds = %642
  %644 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %13, float %23, float %24, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %645 = extractvalue %dx.types.ResRet.f32 %644, 0
  %646 = fsub fast float 1.000000e+00, %645
  %647 = select i1 %577, float %646, float %645
  %648 = fmul fast float %647, %573
  br label %649

; <label>:649                                     ; preds = %643, %642
  %650 = phi float [ %648, %643 ], [ 0.000000e+00, %642 ]
  %651 = fadd fast float %650, %575
  %652 = call float @dx.op.unary.f32(i32 7, float %651)  ; Saturate(value)
  br label %653

; <label>:653                                     ; preds = %649, %637
  %654 = phi float [ %641, %637 ], [ %652, %649 ]
  %655 = fmul fast float %654, %559
  br label %656

; <label>:656                                     ; preds = %653, %558
  %657 = phi float [ %655, %653 ], [ %559, %558 ]
  %658 = call float @dx.op.binary.f32(i32 35, float %657, float 0.000000e+00)  ; FMax(a,b)
  %659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %660 = extractvalue %dx.types.CBufRet.f32 %659, 3
  %661 = bitcast float %660 to i32
  %662 = and i32 %661, 1
  %663 = icmp eq i32 %662, 0
  %664 = and i32 %661, 4
  %665 = icmp eq i32 %664, 0
  br i1 %663, label %739, label %666, !dx.controlflow.hints !57

; <label>:666                                     ; preds = %656
  %667 = and i32 %661, 2
  %668 = icmp eq i32 %667, 0
  %669 = extractvalue %dx.types.CBufRet.f32 %659, 0
  %670 = extractvalue %dx.types.CBufRet.f32 %659, 1
  %671 = extractvalue %dx.types.CBufRet.f32 %659, 2
  %672 = fmul fast float %669, %146
  %673 = fmul fast float %670, %154
  %674 = fmul fast float %671, %162
  %675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %676 = extractvalue %dx.types.CBufRet.f32 %675, 0
  %677 = fmul fast float %676, %672
  %678 = fmul fast float %676, %673
  %679 = fmul fast float %676, %674
  br i1 %668, label %739, label %680, !dx.controlflow.hints !58

; <label>:680                                     ; preds = %666
  %681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %682 = extractvalue %dx.types.CBufRet.f32 %681, 0
  %683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %684 = extractvalue %dx.types.CBufRet.f32 %683, 0
  %685 = extractvalue %dx.types.CBufRet.f32 %683, 1
  %686 = extractvalue %dx.types.CBufRet.f32 %683, 2
  %687 = call float @dx.op.dot3.f32(i32 55, float %677, float %678, float %679, float %684, float %685, float %686)  ; Dot3(ax,ay,az,bx,by,bz)
  %688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %689 = extractvalue %dx.types.CBufRet.f32 %688, 0
  %690 = extractvalue %dx.types.CBufRet.f32 %688, 1
  %691 = extractvalue %dx.types.CBufRet.f32 %688, 2
  %692 = call float @dx.op.dot3.f32(i32 55, float %677, float %678, float %679, float %689, float %690, float %691)  ; Dot3(ax,ay,az,bx,by,bz)
  %693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %694 = extractvalue %dx.types.CBufRet.f32 %693, 0
  %695 = extractvalue %dx.types.CBufRet.f32 %693, 1
  %696 = extractvalue %dx.types.CBufRet.f32 %693, 2
  %697 = call float @dx.op.dot3.f32(i32 55, float %677, float %678, float %679, float %694, float %695, float %696)  ; Dot3(ax,ay,az,bx,by,bz)
  %698 = fmul fast float %687, %682
  %699 = fmul fast float %692, %682
  %700 = fmul fast float %697, %682
  %701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %702 = extractvalue %dx.types.CBufRet.f32 %701, 2
  %703 = fmul fast float %698, %702
  %704 = fmul fast float %699, %702
  %705 = fmul fast float %700, %702
  %706 = fadd fast float %703, 9.765625e-04
  %707 = fadd fast float %704, 9.765625e-04
  %708 = fadd fast float %705, 9.765625e-04
  %709 = call float @dx.op.unary.f32(i32 23, float %706)  ; Log(value)
  %710 = call float @dx.op.unary.f32(i32 23, float %707)  ; Log(value)
  %711 = call float @dx.op.unary.f32(i32 23, float %708)  ; Log(value)
  %712 = fadd fast float %709, 1.000000e+01
  %713 = fadd fast float %710, 1.000000e+01
  %714 = fadd fast float %711, 1.000000e+01
  %715 = fmul fast float %712, 0x3FA99999A0000000
  %716 = fmul fast float %713, 0x3FA99999A0000000
  %717 = fmul fast float %714, 0x3FA99999A0000000
  %718 = call float @dx.op.unary.f32(i32 7, float %715)  ; Saturate(value)
  %719 = call float @dx.op.unary.f32(i32 7, float %716)  ; Saturate(value)
  %720 = call float @dx.op.unary.f32(i32 7, float %717)  ; Saturate(value)
  %721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %722 = extractvalue %dx.types.CBufRet.f32 %721, 0
  %723 = extractvalue %dx.types.CBufRet.f32 %721, 1
  %724 = extractvalue %dx.types.CBufRet.f32 %721, 2
  %725 = fmul fast float %722, %718
  %726 = fmul fast float %723, %719
  %727 = fmul fast float %724, %720
  %728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %729 = extractvalue %dx.types.CBufRet.f32 %728, 0
  %730 = extractvalue %dx.types.CBufRet.f32 %728, 1
  %731 = extractvalue %dx.types.CBufRet.f32 %728, 2
  %732 = fadd fast float %725, %729
  %733 = fadd fast float %726, %730
  %734 = fadd fast float %727, %731
  %735 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %15, float %732, float %733, float %734, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %736 = extractvalue %dx.types.ResRet.f32 %735, 0
  %737 = extractvalue %dx.types.ResRet.f32 %735, 1
  %738 = extractvalue %dx.types.ResRet.f32 %735, 2
  br label %739

; <label>:739                                     ; preds = %680, %666, %656
  %740 = phi float [ %736, %680 ], [ %146, %656 ], [ %677, %666 ]
  %741 = phi float [ %737, %680 ], [ %154, %656 ], [ %678, %666 ]
  %742 = phi float [ %738, %680 ], [ %162, %656 ], [ %679, %666 ]
  %743 = fcmp fast oeq float %658, 0.000000e+00
  br i1 %743, label %744, label %745, !dx.controlflow.hints !59

; <label>:744                                     ; preds = %739
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %745

; <label>:745                                     ; preds = %744, %739
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %746 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %14, float %21, float %22, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %747 = extractvalue %dx.types.ResRet.f32 %746, 0
  %748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %749 = extractvalue %dx.types.CBufRet.f32 %748, 3
  %750 = bitcast float %749 to i32
  %751 = and i32 %750, 65535
  %752 = call float @dx.op.legacyF16ToF32(i32 131, i32 %751)  ; LegacyF16ToF32(value)
  %753 = fcmp fast une float %752, 0.000000e+00
  %754 = select i1 %753, float 0.000000e+00, float 1.000000e+00
  %755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %756 = extractvalue %dx.types.CBufRet.f32 %755, 3
  %757 = fmul fast float %756, %747
  %758 = fmul fast float %757, %754
  %759 = fsub fast float 1.000000e+00, %758
  %760 = fmul fast float %759, %740
  %761 = fmul fast float %759, %741
  %762 = fmul fast float %759, %742
  %763 = extractvalue %dx.types.CBufRet.f32 %755, 0
  %764 = extractvalue %dx.types.CBufRet.f32 %755, 1
  %765 = extractvalue %dx.types.CBufRet.f32 %755, 2
  %766 = fmul fast float %763, %757
  %767 = fmul fast float %764, %757
  %768 = fmul fast float %765, %757
  %769 = fadd fast float %760, %766
  %770 = fadd fast float %761, %767
  %771 = fadd fast float %762, %768
  %772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %773 = extractvalue %dx.types.CBufRet.f32 %772, 2
  %774 = fcmp fast ogt float %773, 0.000000e+00
  br i1 %774, label %775, label %841, !dx.controlflow.hints !60

; <label>:775                                     ; preds = %745
  %776 = fcmp fast oeq float %773, 2.000000e+00
  br i1 %776, label %777, label %829, !dx.controlflow.hints !61

; <label>:777                                     ; preds = %775
  %778 = fcmp fast ole float %769, 0x3F69A5C380000000
  %779 = fcmp fast ole float %770, 0x3F69A5C380000000
  %780 = fcmp fast ole float %771, 0x3F69A5C380000000
  %781 = fmul fast float %769, 0x4029D70A40000000
  %782 = fmul fast float %770, 0x4029D70A40000000
  %783 = fmul fast float %771, 0x4029D70A40000000
  %784 = call float @dx.op.unary.f32(i32 23, float %769)  ; Log(value)
  %785 = call float @dx.op.unary.f32(i32 23, float %770)  ; Log(value)
  %786 = call float @dx.op.unary.f32(i32 23, float %771)  ; Log(value)
  %787 = fmul fast float %784, 0x3FDAAAAAA0000000
  %788 = fmul fast float %785, 0x3FDAAAAAA0000000
  %789 = fmul fast float %786, 0x3FDAAAAAA0000000
  %790 = call float @dx.op.unary.f32(i32 21, float %787)  ; Exp(value)
  %791 = call float @dx.op.unary.f32(i32 21, float %788)  ; Exp(value)
  %792 = call float @dx.op.unary.f32(i32 21, float %789)  ; Exp(value)
  %793 = fmul fast float %790, 0x3FF0E147A0000000
  %794 = fmul fast float %791, 0x3FF0E147A0000000
  %795 = fmul fast float %792, 0x3FF0E147A0000000
  %796 = fadd fast float %793, 0xBFAC28F5C0000000
  %797 = fadd fast float %794, 0xBFAC28F5C0000000
  %798 = fadd fast float %795, 0xBFAC28F5C0000000
  %799 = select i1 %778, float %781, float %796
  %800 = select i1 %779, float %782, float %797
  %801 = select i1 %780, float %783, float %798
  %802 = fsub fast float 1.000000e+00, %799
  %803 = fsub fast float 1.000000e+00, %800
  %804 = fsub fast float 1.000000e+00, %801
  %805 = fcmp fast ole float %802, 0x3FA4B5DCC0000000
  %806 = fmul fast float %802, 0x3FB3D07220000000
  %807 = fsub fast float 0x3FF0E147A0000000, %799
  %808 = fmul fast float %807, 0x3FEE54EDE0000000
  %809 = call float @dx.op.unary.f32(i32 23, float %808)  ; Log(value)
  %810 = fmul fast float %809, 0x4003333340000000
  %811 = call float @dx.op.unary.f32(i32 21, float %810)  ; Exp(value)
  %812 = select i1 %805, float %806, float %811
  %813 = fcmp fast ole float %803, 0x3FA4B5DCC0000000
  %814 = fmul fast float %803, 0x3FB3D07220000000
  %815 = fsub fast float 0x3FF0E147A0000000, %800
  %816 = fmul fast float %815, 0x3FEE54EDE0000000
  %817 = call float @dx.op.unary.f32(i32 23, float %816)  ; Log(value)
  %818 = fmul fast float %817, 0x4003333340000000
  %819 = call float @dx.op.unary.f32(i32 21, float %818)  ; Exp(value)
  %820 = select i1 %813, float %814, float %819
  %821 = fcmp fast ole float %804, 0x3FA4B5DCC0000000
  %822 = fmul fast float %804, 0x3FB3D07220000000
  %823 = fsub fast float 0x3FF0E147A0000000, %801
  %824 = fmul fast float %823, 0x3FEE54EDE0000000
  %825 = call float @dx.op.unary.f32(i32 23, float %824)  ; Log(value)
  %826 = fmul fast float %825, 0x4003333340000000
  %827 = call float @dx.op.unary.f32(i32 21, float %826)  ; Exp(value)
  %828 = select i1 %821, float %822, float %827
  br label %841

; <label>:829                                     ; preds = %775
  %830 = call float @dx.op.dot3.f32(i32 55, float %769, float %770, float %771, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %831 = extractvalue %dx.types.CBufRet.f32 %772, 3
  %832 = fsub fast float %769, %830
  %833 = fsub fast float %770, %830
  %834 = fsub fast float %771, %830
  %835 = fmul fast float %831, %832
  %836 = fmul fast float %831, %833
  %837 = fmul fast float %831, %834
  %838 = fadd fast float %835, %830
  %839 = fadd fast float %836, %830
  %840 = fadd fast float %837, %830
  br label %841

; <label>:841                                     ; preds = %829, %777, %745
  %842 = phi float [ %812, %777 ], [ %838, %829 ], [ %769, %745 ]
  %843 = phi float [ %820, %777 ], [ %839, %829 ], [ %770, %745 ]
  %844 = phi float [ %828, %777 ], [ %840, %829 ], [ %771, %745 ]
  %845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %846 = extractvalue %dx.types.CBufRet.f32 %845, 0
  %847 = fcmp fast une float %846, 0.000000e+00
  br i1 %847, label %848, label %1022, !dx.controlflow.hints !62

; <label>:848                                     ; preds = %841
  %849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %850 = extractvalue %dx.types.CBufRet.f32 %849, 0
  %851 = extractvalue %dx.types.CBufRet.f32 %849, 1
  %852 = fsub fast float %39, %850
  %853 = fsub fast float %40, %851
  %854 = extractvalue %dx.types.CBufRet.f32 %849, 2
  %855 = extractvalue %dx.types.CBufRet.f32 %849, 3
  %856 = fmul fast float %852, %854
  %857 = fmul fast float %853, %855
  %858 = call float @dx.op.unary.f32(i32 6, float %846)  ; FAbs(value)
  %859 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %15, float %856, float %857, float undef, float undef, i32 0, i32 0, i32 undef, float %858)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %860 = extractvalue %dx.types.ResRet.f32 %859, 0
  %861 = extractvalue %dx.types.ResRet.f32 %859, 1
  %862 = extractvalue %dx.types.ResRet.f32 %859, 2
  %863 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %864 = extractvalue %dx.types.CBufRet.i32 %863, 3
  %865 = and i32 %864, 3
  %866 = icmp ne i32 %865, 0
  %867 = and i32 %864, 4
  %868 = icmp eq i32 %867, 0
  %869 = and i1 %866, %868
  br i1 %869, label %870, label %914

; <label>:870                                     ; preds = %848
  %871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %872 = extractvalue %dx.types.CBufRet.f32 %871, 0
  %873 = fcmp fast oge float %861, %872
  %874 = zext i1 %873 to i32
  br i1 %873, label %875, label %914

; <label>:875                                     ; preds = %870
  %876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %877 = extractvalue %dx.types.CBufRet.f32 %876, 3
  %878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %879 = extractvalue %dx.types.CBufRet.f32 %878, 2
  %880 = fcmp fast ogt float %879, 0.000000e+00
  br i1 %880, label %881, label %889, !dx.controlflow.hints !63

; <label>:881                                     ; preds = %875
  %882 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %861, float 0.000000e+00, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %883 = extractvalue %dx.types.ResRet.f32 %882, 0
  %884 = extractvalue %dx.types.ResRet.f32 %882, 1
  %885 = extractvalue %dx.types.ResRet.f32 %882, 2
  %886 = fcmp fast ogt float %879, 1.500000e+00
  %887 = select i1 %886, float %883, float %884
  %888 = select i1 %886, float %883, float %885
  br label %907

; <label>:889                                     ; preds = %875
  %890 = call float @dx.op.unary.f32(i32 7, float %861)  ; Saturate(value)
  %891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 238)  ; CBufferLoadLegacy(handle,regIndex)
  %892 = extractvalue %dx.types.CBufRet.f32 %891, 0
  %893 = extractvalue %dx.types.CBufRet.f32 %891, 1
  %894 = extractvalue %dx.types.CBufRet.f32 %891, 2
  %895 = extractvalue %dx.types.CBufRet.f32 %876, 0
  %896 = extractvalue %dx.types.CBufRet.f32 %876, 1
  %897 = extractvalue %dx.types.CBufRet.f32 %876, 2
  %898 = fsub fast float %892, %895
  %899 = fsub fast float %893, %896
  %900 = fsub fast float %894, %897
  %901 = fmul fast float %898, %890
  %902 = fmul fast float %899, %890
  %903 = fmul fast float %900, %890
  %904 = fadd fast float %901, %895
  %905 = fadd fast float %902, %896
  %906 = fadd fast float %903, %897
  br label %907

; <label>:907                                     ; preds = %889, %881
  %908 = phi float [ %883, %881 ], [ %904, %889 ]
  %909 = phi float [ %887, %881 ], [ %905, %889 ]
  %910 = phi float [ %888, %881 ], [ %906, %889 ]
  %911 = fmul fast float %908, %877
  %912 = fmul fast float %909, %877
  %913 = fmul fast float %910, %877
  br label %914

; <label>:914                                     ; preds = %907, %870, %848
  %915 = phi float [ %911, %907 ], [ %860, %848 ], [ %860, %870 ]
  %916 = phi float [ %912, %907 ], [ %861, %848 ], [ %860, %870 ]
  %917 = phi float [ %913, %907 ], [ %862, %848 ], [ %860, %870 ]
  %918 = phi i32 [ %874, %907 ], [ 0, %848 ], [ %874, %870 ]
  %919 = icmp eq i32 %918, 0
  br i1 %919, label %920, label %974

; <label>:920                                     ; preds = %914
  %921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %922 = extractvalue %dx.types.CBufRet.f32 %921, 0
  %923 = extractvalue %dx.types.CBufRet.f32 %921, 1
  %924 = extractvalue %dx.types.CBufRet.f32 %921, 2
  %925 = call float @dx.op.dot3.f32(i32 55, float %915, float %916, float %917, float %922, float %923, float %924)  ; Dot3(ax,ay,az,bx,by,bz)
  %926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %927 = extractvalue %dx.types.CBufRet.f32 %926, 0
  %928 = extractvalue %dx.types.CBufRet.f32 %926, 1
  %929 = extractvalue %dx.types.CBufRet.f32 %926, 2
  %930 = call float @dx.op.dot3.f32(i32 55, float %915, float %916, float %917, float %927, float %928, float %929)  ; Dot3(ax,ay,az,bx,by,bz)
  %931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %932 = extractvalue %dx.types.CBufRet.f32 %931, 0
  %933 = extractvalue %dx.types.CBufRet.f32 %931, 1
  %934 = extractvalue %dx.types.CBufRet.f32 %931, 2
  %935 = call float @dx.op.dot3.f32(i32 55, float %915, float %916, float %917, float %932, float %933, float %934)  ; Dot3(ax,ay,az,bx,by,bz)
  %936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %937 = extractvalue %dx.types.CBufRet.f32 %936, 2
  %938 = fmul fast float %937, %925
  %939 = fmul fast float %937, %930
  %940 = fmul fast float %937, %935
  %941 = fadd fast float %938, 9.765625e-04
  %942 = fadd fast float %939, 9.765625e-04
  %943 = fadd fast float %940, 9.765625e-04
  %944 = call float @dx.op.unary.f32(i32 23, float %941)  ; Log(value)
  %945 = call float @dx.op.unary.f32(i32 23, float %942)  ; Log(value)
  %946 = call float @dx.op.unary.f32(i32 23, float %943)  ; Log(value)
  %947 = fadd fast float %944, 1.000000e+01
  %948 = fadd fast float %945, 1.000000e+01
  %949 = fadd fast float %946, 1.000000e+01
  %950 = fmul fast float %947, 0x3FA99999A0000000
  %951 = fmul fast float %948, 0x3FA99999A0000000
  %952 = fmul fast float %949, 0x3FA99999A0000000
  %953 = call float @dx.op.unary.f32(i32 7, float %950)  ; Saturate(value)
  %954 = call float @dx.op.unary.f32(i32 7, float %951)  ; Saturate(value)
  %955 = call float @dx.op.unary.f32(i32 7, float %952)  ; Saturate(value)
  %956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %957 = extractvalue %dx.types.CBufRet.f32 %956, 0
  %958 = extractvalue %dx.types.CBufRet.f32 %956, 1
  %959 = extractvalue %dx.types.CBufRet.f32 %956, 2
  %960 = fmul fast float %957, %953
  %961 = fmul fast float %958, %954
  %962 = fmul fast float %959, %955
  %963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %964 = extractvalue %dx.types.CBufRet.f32 %963, 0
  %965 = extractvalue %dx.types.CBufRet.f32 %963, 1
  %966 = extractvalue %dx.types.CBufRet.f32 %963, 2
  %967 = fadd fast float %960, %964
  %968 = fadd fast float %961, %965
  %969 = fadd fast float %962, %966
  %970 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %15, float %967, float %968, float %969, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %971 = extractvalue %dx.types.ResRet.f32 %970, 0
  %972 = extractvalue %dx.types.ResRet.f32 %970, 1
  %973 = extractvalue %dx.types.ResRet.f32 %970, 2
  br label %974

; <label>:974                                     ; preds = %920, %914
  %975 = phi float [ %915, %914 ], [ %971, %920 ]
  %976 = phi float [ %916, %914 ], [ %972, %920 ]
  %977 = phi float [ %917, %914 ], [ %973, %920 ]
  %978 = fcmp fast ole float %975, 0x3FA4B5DCC0000000
  %979 = fmul fast float %975, 0x3FB3D07220000000
  %980 = fadd fast float %975, 0x3FAC28F5C0000000
  %981 = fmul fast float %980, 0x3FEE54EDE0000000
  %982 = call float @dx.op.unary.f32(i32 23, float %981)  ; Log(value)
  %983 = fmul fast float %982, 0x4003333340000000
  %984 = call float @dx.op.unary.f32(i32 21, float %983)  ; Exp(value)
  %985 = select i1 %978, float %979, float %984
  %986 = fcmp fast ole float %976, 0x3FA4B5DCC0000000
  %987 = fmul fast float %976, 0x3FB3D07220000000
  %988 = fadd fast float %976, 0x3FAC28F5C0000000
  %989 = fmul fast float %988, 0x3FEE54EDE0000000
  %990 = call float @dx.op.unary.f32(i32 23, float %989)  ; Log(value)
  %991 = fmul fast float %990, 0x4003333340000000
  %992 = call float @dx.op.unary.f32(i32 21, float %991)  ; Exp(value)
  %993 = select i1 %986, float %987, float %992
  %994 = fcmp fast ole float %977, 0x3FA4B5DCC0000000
  %995 = fmul fast float %977, 0x3FB3D07220000000
  %996 = fadd fast float %977, 0x3FAC28F5C0000000
  %997 = fmul fast float %996, 0x3FEE54EDE0000000
  %998 = call float @dx.op.unary.f32(i32 23, float %997)  ; Log(value)
  %999 = fmul fast float %998, 0x4003333340000000
  %1000 = call float @dx.op.unary.f32(i32 21, float %999)  ; Exp(value)
  %1001 = select i1 %994, float %995, float %1000
  %1002 = fcmp fast olt float %846, 0.000000e+00
  br i1 %1002, label %1003, label %1015

; <label>:1003                                    ; preds = %974
  %1004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %1005 = extractvalue %dx.types.CBufRet.f32 %1004, 0
  %1006 = extractvalue %dx.types.CBufRet.f32 %1004, 1
  %1007 = extractvalue %dx.types.CBufRet.f32 %1004, 2
  %1008 = call float @dx.op.dot3.f32(i32 55, float %985, float %993, float %1001, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1009 = fsub fast float %1008, %1005
  %1010 = fmul fast float %1009, %1006
  %1011 = call float @dx.op.unary.f32(i32 7, float %1010)  ; Saturate(value)
  %1012 = fsub fast float 1.000000e+00, %1007
  %1013 = fmul fast float %1011, %1012
  %1014 = fadd fast float %1013, %1007
  br label %1015

; <label>:1015                                    ; preds = %1003, %974
  %1016 = phi float [ %1014, %1003 ], [ %985, %974 ]
  %1017 = phi float [ %1014, %1003 ], [ %993, %974 ]
  %1018 = phi float [ %1014, %1003 ], [ %1001, %974 ]
  %1019 = fmul fast float %1016, %842
  %1020 = fmul fast float %1017, %843
  %1021 = fmul fast float %1018, %844
  br label %1022

; <label>:1022                                    ; preds = %1015, %841
  %1023 = phi float [ %1019, %1015 ], [ %842, %841 ]
  %1024 = phi float [ %1020, %1015 ], [ %843, %841 ]
  %1025 = phi float [ %1021, %1015 ], [ %844, %841 ]
  %1026 = extractvalue %dx.types.CBufRet.f32 %845, 1
  %1027 = fcmp fast ogt float %1026, 0.000000e+00
  br i1 %1027, label %1028, label %1069, !dx.controlflow.hints !64

; <label>:1028                                    ; preds = %1022
  %1029 = extractvalue %dx.types.CBufRet.f32 %845, 2
  %1030 = bitcast float %1029 to i32
  %1031 = and i32 %1030, 255
  %1032 = uitofp i32 %1031 to float
  %1033 = lshr i32 %1030, 8
  %1034 = and i32 %1033, 255
  %1035 = uitofp i32 %1034 to float
  %1036 = lshr i32 %1030, 16
  %1037 = and i32 %1036, 255
  %1038 = uitofp i32 %1037 to float
  %1039 = fmul fast float %1038, 0x3F70101020000000
  %1040 = lshr i32 %1030, 24
  %1041 = uitofp i32 %1040 to float
  %1042 = fmul fast float %1041, 0x3F70101020000000
  %1043 = fadd fast float %1038, %1032
  %1044 = fmul fast float %1043, 0x3F70101020000000
  %1045 = fadd fast float %1035, %1041
  %1046 = fmul fast float %1045, 0x3F70101020000000
  %1047 = fdiv fast float %39, %1044
  %1048 = fdiv fast float %40, %1046
  %1049 = fsub fast float -0.000000e+00, %1047
  %1050 = fsub fast float -0.000000e+00, %1048
  %1051 = fcmp fast oge float %1047, %1049
  %1052 = fcmp fast oge float %1048, %1050
  %1053 = call float @dx.op.unary.f32(i32 6, float %1047)  ; FAbs(value)
  %1054 = call float @dx.op.unary.f32(i32 6, float %1048)  ; FAbs(value)
  %1055 = call float @dx.op.unary.f32(i32 22, float %1053)  ; Frc(value)
  %1056 = call float @dx.op.unary.f32(i32 22, float %1054)  ; Frc(value)
  %1057 = fsub fast float -0.000000e+00, %1055
  %1058 = fsub fast float -0.000000e+00, %1056
  %1059 = select i1 %1051, float %1055, float %1057
  %1060 = select i1 %1052, float %1056, float %1058
  %1061 = fmul fast float %1044, %1059
  %1062 = fmul fast float %1060, %1046
  %1063 = fcmp fast olt float %1061, %1039
  %1064 = fcmp fast olt float %1062, %1042
  %1065 = or i1 %1063, %1064
  br i1 %1065, label %1066, label %1069, !dx.controlflow.hints !65

; <label>:1066                                    ; preds = %1028
  %1067 = fsub fast float 1.000000e+00, %1026
  %1068 = fmul fast float %1067, %658
  br label %1069

; <label>:1069                                    ; preds = %1066, %1028, %1022
  %1070 = phi float [ %1068, %1066 ], [ %658, %1028 ], [ %658, %1022 ]
  %1071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %1072 = extractvalue %dx.types.CBufRet.f32 %1071, 3
  %1073 = fcmp fast ogt float %1072, 0.000000e+00
  br i1 %1073, label %1074, label %1157, !dx.controlflow.hints !66

; <label>:1074                                    ; preds = %1069
  %1075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %1076 = extractvalue %dx.types.CBufRet.f32 %1075, 2
  %1077 = extractvalue %dx.types.CBufRet.f32 %1075, 3
  %1078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1079 = extractvalue %dx.types.CBufRet.f32 %1078, 3
  %1080 = fmul fast float %1079, 1.000000e+01
  %1081 = call float @dx.op.unary.f32(i32 27, float %1080)  ; Round_ni(value)
  %1082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1083 = extractvalue %dx.types.CBufRet.f32 %1082, 0
  %1084 = extractvalue %dx.types.CBufRet.f32 %1082, 1
  %1085 = fmul fast float %1083, %39
  %1086 = fmul fast float %1084, %40
  %1087 = call float @dx.op.unary.f32(i32 27, float %1085)  ; Round_ni(value)
  %1088 = call float @dx.op.unary.f32(i32 27, float %1086)  ; Round_ni(value)
  %1089 = fmul fast float %1081, 0x4002B851E0000000
  %1090 = call float @dx.op.unary.f32(i32 22, float %1089)  ; Frc(value)
  %1091 = fadd fast float %1090, 0x3FB99999A0000000
  %1092 = fadd fast float %1091, %1087
  %1093 = fadd fast float %1091, %1088
  %1094 = fmul fast float %1092, 0x3FE1BEDF00000000
  %1095 = call float @dx.op.unary.f32(i32 22, float %1094)  ; Frc(value)
  %1096 = fmul fast float %1092, %1095
  %1097 = fadd fast float %1096, %1093
  %1098 = fmul fast float %1093, 0x3FD3BEBE20000000
  %1099 = call float @dx.op.unary.f32(i32 22, float %1098)  ; Frc(value)
  %1100 = fmul fast float %1093, %1099
  %1101 = fadd fast float %1100, %1092
  %1102 = fmul fast float %1097, %1101
  %1103 = call float @dx.op.unary.f32(i32 22, float %1102)  ; Frc(value)
  %1104 = extractvalue %dx.types.CBufRet.f32 %1082, 3
  %1105 = bitcast float %1104 to i32
  %1106 = and i32 %1105, 255
  %1107 = uitofp i32 %1106 to float
  %1108 = fmul fast float %1107, 0x3F70101020000000
  %1109 = fmul fast float %1108, %1076
  %1110 = fcmp fast olt float %1103, %1109
  br i1 %1110, label %1111, label %1118, !dx.controlflow.hints !67

; <label>:1111                                    ; preds = %1074
  %1112 = fmul fast float %1103, 0x4057091680000000
  %1113 = call float @dx.op.unary.f32(i32 22, float %1112)  ; Frc(value)
  %1114 = fmul fast float %1113, %1023
  %1115 = fmul fast float %1113, %1025
  %1116 = fsub fast float 1.000000e+00, %1113
  %1117 = fmul fast float %1116, %1024
  br label %1118

; <label>:1118                                    ; preds = %1111, %1074
  %1119 = phi float [ %1114, %1111 ], [ %1023, %1074 ]
  %1120 = phi float [ %1117, %1111 ], [ %1024, %1074 ]
  %1121 = phi float [ %1115, %1111 ], [ %1025, %1074 ]
  %1122 = fmul fast float %1103, 0x4028B0A3E0000000
  %1123 = call float @dx.op.unary.f32(i32 22, float %1122)  ; Frc(value)
  %1124 = fmul fast float %1108, %1077
  %1125 = fcmp fast olt float %1123, %1124
  br i1 %1125, label %1126, label %1145, !dx.controlflow.hints !68

; <label>:1126                                    ; preds = %1118
  %1127 = extractvalue %dx.types.CBufRet.f32 %1082, 2
  %1128 = fmul fast float %1127, %39
  %1129 = call float @dx.op.unary.f32(i32 27, float %1128)  ; Round_ni(value)
  %1130 = fmul fast float %1129, 0x3FD5555560000000
  %1131 = call float @dx.op.unary.f32(i32 22, float %1130)  ; Frc(value)
  %1132 = extractvalue %dx.types.CBufRet.f32 %1075, 0
  %1133 = extractvalue %dx.types.CBufRet.f32 %1075, 1
  %1134 = fcmp fast olt float %1131, 0x3FD51EB860000000
  br i1 %1134, label %1138, label %1135, !dx.controlflow.hints !69

; <label>:1135                                    ; preds = %1126
  %1136 = fcmp fast olt float %1131, 0x3FE51EB860000000
  br i1 %1136, label %1138, label %1137, !dx.controlflow.hints !70

; <label>:1137                                    ; preds = %1135
  br label %1138

; <label>:1138                                    ; preds = %1137, %1135, %1126
  %1139 = phi float [ %1132, %1137 ], [ %1133, %1126 ], [ %1132, %1135 ]
  %1140 = phi float [ %1132, %1137 ], [ %1132, %1126 ], [ %1133, %1135 ]
  %1141 = phi float [ %1133, %1137 ], [ %1132, %1126 ], [ %1132, %1135 ]
  %1142 = fmul fast float %1139, %1119
  %1143 = fmul fast float %1140, %1120
  %1144 = fmul fast float %1141, %1121
  br label %1145

; <label>:1145                                    ; preds = %1138, %1118
  %1146 = phi float [ %1142, %1138 ], [ %1119, %1118 ]
  %1147 = phi float [ %1143, %1138 ], [ %1120, %1118 ]
  %1148 = phi float [ %1144, %1138 ], [ %1121, %1118 ]
  %1149 = fmul fast float %1103, 0x40223EF9E0000000
  %1150 = call float @dx.op.unary.f32(i32 22, float %1149)  ; Frc(value)
  %1151 = fmul fast float %1108, %1072
  %1152 = fmul fast float %1150, %1150
  %1153 = fmul fast float %1152, %1151
  %1154 = fsub fast float 1.000000e+00, %1153
  %1155 = call float @dx.op.unary.f32(i32 7, float %1154)  ; Saturate(value)
  %1156 = fmul fast float %1155, %1070
  br label %1157

; <label>:1157                                    ; preds = %1145, %1069
  %1158 = phi float [ %1146, %1145 ], [ %1023, %1069 ]
  %1159 = phi float [ %1147, %1145 ], [ %1024, %1069 ]
  %1160 = phi float [ %1148, %1145 ], [ %1025, %1069 ]
  %1161 = phi float [ %1156, %1145 ], [ %1070, %1069 ]
  %1162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1163 = extractvalue %dx.types.CBufRet.f32 %1162, 0
  %1164 = extractvalue %dx.types.CBufRet.f32 %1162, 1
  %1165 = extractvalue %dx.types.CBufRet.f32 %1162, 2
  %1166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1167 = extractvalue %dx.types.CBufRet.f32 %1166, 0
  %1168 = extractvalue %dx.types.CBufRet.f32 %1166, 1
  %1169 = extractvalue %dx.types.CBufRet.f32 %1166, 2
  %1170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1171 = extractvalue %dx.types.CBufRet.f32 %1170, 0
  %1172 = extractvalue %dx.types.CBufRet.f32 %1170, 1
  %1173 = extractvalue %dx.types.CBufRet.f32 %1170, 2
  %1174 = fmul fast float %1163, %1158
  %1175 = call float @dx.op.tertiary.f32(i32 46, float %1164, float %1159, float %1174)  ; FMad(a,b,c)
  %1176 = call float @dx.op.tertiary.f32(i32 46, float %1165, float %1160, float %1175)  ; FMad(a,b,c)
  %1177 = fmul fast float %1167, %1158
  %1178 = call float @dx.op.tertiary.f32(i32 46, float %1168, float %1159, float %1177)  ; FMad(a,b,c)
  %1179 = call float @dx.op.tertiary.f32(i32 46, float %1169, float %1160, float %1178)  ; FMad(a,b,c)
  %1180 = fmul fast float %1171, %1158
  %1181 = call float @dx.op.tertiary.f32(i32 46, float %1172, float %1159, float %1180)  ; FMad(a,b,c)
  %1182 = call float @dx.op.tertiary.f32(i32 46, float %1173, float %1160, float %1181)  ; FMad(a,b,c)
  br i1 %665, label %1183, label %1490, !dx.controlflow.hints !71

; <label>:1183                                    ; preds = %1157
  %1184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1185 = extractvalue %dx.types.CBufRet.f32 %1184, 0
  %1186 = bitcast float %1185 to i32
  %1187 = and i32 %1186, 128
  %1188 = icmp eq i32 %1187, 0
  br i1 %1188, label %1203, label %1189

; <label>:1189                                    ; preds = %1183
  %1190 = call float @dx.op.unary.f32(i32 24, float %1176)  ; Sqrt(value)
  %1191 = call float @dx.op.unary.f32(i32 24, float %1179)  ; Sqrt(value)
  %1192 = call float @dx.op.unary.f32(i32 24, float %1182)  ; Sqrt(value)
  %1193 = fmul fast float %1190, 9.687500e-01
  %1194 = fmul fast float %1191, 9.687500e-01
  %1195 = fmul fast float %1192, 9.687500e-01
  %1196 = fadd fast float %1193, 1.562500e-02
  %1197 = fadd fast float %1194, 1.562500e-02
  %1198 = fadd fast float %1195, 1.562500e-02
  %1199 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %15, float %1196, float %1197, float %1198, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1200 = extractvalue %dx.types.ResRet.f32 %1199, 0
  %1201 = extractvalue %dx.types.ResRet.f32 %1199, 1
  %1202 = extractvalue %dx.types.ResRet.f32 %1199, 2
  br label %1490

; <label>:1203                                    ; preds = %1183
  %1204 = and i32 %1186, 127
  switch i32 %1204, label %1490 [
    i32 1, label %1205
    i32 2, label %1205
    i32 0, label %1205
    i32 3, label %1235
    i32 4, label %1356
  ]

; <label>:1205                                    ; preds = %1203, %1203, %1203
  %1206 = call float @dx.op.unary.f32(i32 7, float %1176)  ; Saturate(value)
  %1207 = call float @dx.op.unary.f32(i32 7, float %1179)  ; Saturate(value)
  %1208 = call float @dx.op.unary.f32(i32 7, float %1182)  ; Saturate(value)
  %1209 = call float @dx.op.unary.f32(i32 23, float %1206)  ; Log(value)
  %1210 = call float @dx.op.unary.f32(i32 23, float %1207)  ; Log(value)
  %1211 = call float @dx.op.unary.f32(i32 23, float %1208)  ; Log(value)
  %1212 = fmul fast float %1209, 0x3FDAAAAAA0000000
  %1213 = fmul fast float %1210, 0x3FDAAAAAA0000000
  %1214 = fmul fast float %1211, 0x3FDAAAAAA0000000
  %1215 = call float @dx.op.unary.f32(i32 21, float %1212)  ; Exp(value)
  %1216 = call float @dx.op.unary.f32(i32 21, float %1213)  ; Exp(value)
  %1217 = call float @dx.op.unary.f32(i32 21, float %1214)  ; Exp(value)
  %1218 = fmul fast float %1215, 0x3FF0E147A0000000
  %1219 = fmul fast float %1216, 0x3FF0E147A0000000
  %1220 = fmul fast float %1217, 0x3FF0E147A0000000
  %1221 = fadd fast float %1218, 0xBFAC28F5C0000000
  %1222 = fadd fast float %1219, 0xBFAC28F5C0000000
  %1223 = fadd fast float %1220, 0xBFAC28F5C0000000
  %1224 = call float @dx.op.unary.f32(i32 7, float %1221)  ; Saturate(value)
  %1225 = call float @dx.op.unary.f32(i32 7, float %1222)  ; Saturate(value)
  %1226 = call float @dx.op.unary.f32(i32 7, float %1223)  ; Saturate(value)
  %1227 = extractvalue %dx.types.CBufRet.f32 %1184, 2
  %1228 = extractvalue %dx.types.CBufRet.f32 %1184, 3
  %1229 = fmul fast float %1227, %1224
  %1230 = fmul fast float %1227, %1225
  %1231 = fmul fast float %1227, %1226
  %1232 = fadd fast float %1229, %1228
  %1233 = fadd fast float %1230, %1228
  %1234 = fadd fast float %1231, %1228
  br label %1490

; <label>:1235                                    ; preds = %1203
  %1236 = fmul fast float %1176, 0x4163D57C00000000
  %1237 = fmul fast float %1179, 0x4163D57C00000000
  %1238 = fmul fast float %1182, 0x4163D57C00000000
  %1239 = fadd fast float %1236, 9.999980e+05
  %1240 = fadd fast float %1237, 9.999980e+05
  %1241 = fadd fast float %1238, 9.999980e+05
  %1242 = fmul fast float %1239, %1176
  %1243 = fmul fast float %1240, %1179
  %1244 = fmul fast float %1241, %1182
  %1245 = fadd fast float %1242, 0xC0AFE17A60000000
  %1246 = fadd fast float %1243, 0xC0AFE17A60000000
  %1247 = fadd fast float %1244, 0xC0AFE17A60000000
  %1248 = fmul fast float %1245, %1176
  %1249 = fmul fast float %1246, %1179
  %1250 = fmul fast float %1247, %1182
  %1251 = fmul fast float %1176, 0x40F753C340000000
  %1252 = fmul fast float %1179, 0x40F753C340000000
  %1253 = fmul fast float %1182, 0x40F753C340000000
  %1254 = fsub fast float 9.999990e+06, %1251
  %1255 = fsub fast float 9.999990e+06, %1252
  %1256 = fsub fast float 9.999990e+06, %1253
  %1257 = fmul fast float %1254, %1176
  %1258 = fmul fast float %1255, %1179
  %1259 = fmul fast float %1256, %1182
  %1260 = fadd fast float %1257, 0x4136D1DD80000000
  %1261 = fadd fast float %1258, 0x4136D1DD80000000
  %1262 = fadd fast float %1259, 0x4136D1DD80000000
  %1263 = fmul fast float %1260, %1176
  %1264 = fmul fast float %1261, %1179
  %1265 = fmul fast float %1262, %1182
  %1266 = fadd fast float %1263, 1.000000e+00
  %1267 = fadd fast float %1264, 1.000000e+00
  %1268 = fadd fast float %1265, 1.000000e+00
  %1269 = fdiv fast float %1248, %1266
  %1270 = fdiv fast float %1249, %1267
  %1271 = fdiv fast float %1250, %1268
  %1272 = call float @dx.op.unary.f32(i32 7, float %1269)  ; Saturate(value)
  %1273 = call float @dx.op.unary.f32(i32 7, float %1270)  ; Saturate(value)
  %1274 = call float @dx.op.unary.f32(i32 7, float %1271)  ; Saturate(value)
  %1275 = extractvalue %dx.types.CBufRet.f32 %1184, 1
  %1276 = fmul fast float %1272, 0x3FE413A920000000
  %1277 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %1273, float %1276)  ; FMad(a,b,c)
  %1278 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %1274, float %1277)  ; FMad(a,b,c)
  %1279 = fmul fast float %1272, 0x3FB1B089A0000000
  %1280 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %1273, float %1279)  ; FMad(a,b,c)
  %1281 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %1274, float %1280)  ; FMad(a,b,c)
  %1282 = fmul fast float %1272, 0x3F90CB2960000000
  %1283 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %1273, float %1282)  ; FMad(a,b,c)
  %1284 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %1274, float %1283)  ; FMad(a,b,c)
  %1285 = fmul fast float %1278, %1275
  %1286 = fmul fast float %1281, %1275
  %1287 = fmul fast float %1284, %1275
  %1288 = fmul fast float %1285, 0x3F847AE140000000
  %1289 = fmul fast float %1286, 0x3F847AE140000000
  %1290 = fmul fast float %1287, 0x3F847AE140000000
  %1291 = fmul fast float %1285, 0x40B4D2F520000000
  %1292 = fmul fast float %1286, 0x40B4D2F520000000
  %1293 = fmul fast float %1287, 0x40B4D2F520000000
  %1294 = fadd fast float %1291, 0x41869ECF20000000
  %1295 = fadd fast float %1292, 0x41869ECF20000000
  %1296 = fadd fast float %1293, 0x41869ECF20000000
  %1297 = fmul fast float %1294, %1288
  %1298 = fmul fast float %1295, %1289
  %1299 = fmul fast float %1296, %1290
  %1300 = fadd fast float %1297, 0x417BB79C60000000
  %1301 = fadd fast float %1298, 0x417BB79C60000000
  %1302 = fadd fast float %1299, 0x417BB79C60000000
  %1303 = fmul fast float %1300, %1288
  %1304 = fmul fast float %1301, %1289
  %1305 = fmul fast float %1302, %1290
  %1306 = fadd fast float %1303, 0x41218DE180000000
  %1307 = fadd fast float %1304, 0x41218DE180000000
  %1308 = fadd fast float %1305, 0x41218DE180000000
  %1309 = fmul fast float %1306, %1288
  %1310 = fmul fast float %1307, %1289
  %1311 = fmul fast float %1308, %1290
  %1312 = fadd fast float %1309, 0x4077F174E0000000
  %1313 = fadd fast float %1310, 0x4077F174E0000000
  %1314 = fadd fast float %1311, 0x4077F174E0000000
  %1315 = fmul fast float %1312, %1288
  %1316 = fmul fast float %1313, %1289
  %1317 = fmul fast float %1314, %1290
  %1318 = fadd fast float %1315, 0x3F3FF79B80000000
  %1319 = fadd fast float %1316, 0x3F3FF79B80000000
  %1320 = fadd fast float %1317, 0x3F3FF79B80000000
  %1321 = fmul fast float %1285, 0x412442D320000000
  %1322 = fmul fast float %1286, 0x412442D320000000
  %1323 = fmul fast float %1287, 0x412442D320000000
  %1324 = fadd fast float %1321, 0x419385D5C0000000
  %1325 = fadd fast float %1322, 0x419385D5C0000000
  %1326 = fadd fast float %1323, 0x419385D5C0000000
  %1327 = fmul fast float %1324, %1288
  %1328 = fmul fast float %1325, %1289
  %1329 = fmul fast float %1326, %1290
  %1330 = fadd fast float %1327, 4.182885e+06
  %1331 = fadd fast float %1328, 4.182885e+06
  %1332 = fadd fast float %1329, 4.182885e+06
  %1333 = fmul fast float %1330, %1288
  %1334 = fmul fast float %1331, %1289
  %1335 = fmul fast float %1332, %1290
  %1336 = fadd fast float %1333, 0x40C4D633C0000000
  %1337 = fadd fast float %1334, 0x40C4D633C0000000
  %1338 = fadd fast float %1335, 0x40C4D633C0000000
  %1339 = fmul fast float %1336, %1288
  %1340 = fmul fast float %1337, %1289
  %1341 = fmul fast float %1338, %1290
  %1342 = fadd fast float %1339, 1.000000e+00
  %1343 = fadd fast float %1340, 1.000000e+00
  %1344 = fadd fast float %1341, 1.000000e+00
  %1345 = fdiv fast float %1318, %1342
  %1346 = fdiv fast float %1319, %1343
  %1347 = fdiv fast float %1320, %1344
  %1348 = extractvalue %dx.types.CBufRet.f32 %1184, 2
  %1349 = extractvalue %dx.types.CBufRet.f32 %1184, 3
  %1350 = fmul fast float %1348, %1345
  %1351 = fmul fast float %1348, %1346
  %1352 = fmul fast float %1348, %1347
  %1353 = fadd fast float %1350, %1349
  %1354 = fadd fast float %1351, %1349
  %1355 = fadd fast float %1352, %1349
  br label %1490

; <label>:1356                                    ; preds = %1203
  %1357 = fmul fast float %1176, 0x4163D57C00000000
  %1358 = fmul fast float %1179, 0x4163D57C00000000
  %1359 = fmul fast float %1182, 0x4163D57C00000000
  %1360 = fadd fast float %1357, 9.999980e+05
  %1361 = fadd fast float %1358, 9.999980e+05
  %1362 = fadd fast float %1359, 9.999980e+05
  %1363 = fmul fast float %1360, %1176
  %1364 = fmul fast float %1361, %1179
  %1365 = fmul fast float %1362, %1182
  %1366 = fadd fast float %1363, 0xC0AFE17A60000000
  %1367 = fadd fast float %1364, 0xC0AFE17A60000000
  %1368 = fadd fast float %1365, 0xC0AFE17A60000000
  %1369 = fmul fast float %1366, %1176
  %1370 = fmul fast float %1367, %1179
  %1371 = fmul fast float %1368, %1182
  %1372 = fmul fast float %1176, 0x40F753C340000000
  %1373 = fmul fast float %1179, 0x40F753C340000000
  %1374 = fmul fast float %1182, 0x40F753C340000000
  %1375 = fsub fast float 9.999990e+06, %1372
  %1376 = fsub fast float 9.999990e+06, %1373
  %1377 = fsub fast float 9.999990e+06, %1374
  %1378 = fmul fast float %1375, %1176
  %1379 = fmul fast float %1376, %1179
  %1380 = fmul fast float %1377, %1182
  %1381 = fadd fast float %1378, 0x4136D1DD80000000
  %1382 = fadd fast float %1379, 0x4136D1DD80000000
  %1383 = fadd fast float %1380, 0x4136D1DD80000000
  %1384 = fmul fast float %1381, %1176
  %1385 = fmul fast float %1382, %1179
  %1386 = fmul fast float %1383, %1182
  %1387 = fadd fast float %1384, 1.000000e+00
  %1388 = fadd fast float %1385, 1.000000e+00
  %1389 = fadd fast float %1386, 1.000000e+00
  %1390 = fdiv fast float %1369, %1387
  %1391 = fdiv fast float %1370, %1388
  %1392 = fdiv fast float %1371, %1389
  %1393 = call float @dx.op.unary.f32(i32 7, float %1390)  ; Saturate(value)
  %1394 = call float @dx.op.unary.f32(i32 7, float %1391)  ; Saturate(value)
  %1395 = call float @dx.op.unary.f32(i32 7, float %1392)  ; Saturate(value)
  %1396 = extractvalue %dx.types.CBufRet.f32 %1184, 1
  %1397 = fmul fast float %1393, 0x3FEA519BC0000000
  %1398 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %1394, float %1397)  ; FMad(a,b,c)
  %1399 = fmul fast float %1393, 0x3FA0FED480000000
  %1400 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %1394, float %1399)  ; FMad(a,b,c)
  %1401 = fmul fast float %1393, 0x3F917E1C00000000
  %1402 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %1394, float %1401)  ; FMad(a,b,c)
  %1403 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %1395, float %1402)  ; FMad(a,b,c)
  %1404 = call float @dx.op.binary.f32(i32 35, float %1393, float %1394)  ; FMax(a,b)
  %1405 = call float @dx.op.binary.f32(i32 35, float %1404, float %1395)  ; FMax(a,b)
  %1406 = fadd fast float %1405, -1.000000e+00
  %1407 = fmul fast float %1406, 2.500000e-01
  %1408 = call float @dx.op.unary.f32(i32 7, float %1407)  ; Saturate(value)
  %1409 = fsub fast float 1.000000e+00, %1408
  %1410 = fmul fast float %1409, %1398
  %1411 = fmul fast float %1409, %1400
  %1412 = fmul fast float %1409, %1403
  %1413 = fmul fast float %1408, %1393
  %1414 = fmul fast float %1408, %1394
  %1415 = fmul fast float %1408, %1395
  %1416 = fadd fast float %1410, %1413
  %1417 = fadd fast float %1411, %1414
  %1418 = fadd fast float %1412, %1415
  %1419 = fmul fast float %1416, %1396
  %1420 = fmul fast float %1417, %1396
  %1421 = fmul fast float %1418, %1396
  %1422 = fmul fast float %1419, 0x3F847AE140000000
  %1423 = fmul fast float %1420, 0x3F847AE140000000
  %1424 = fmul fast float %1421, 0x3F847AE140000000
  %1425 = fmul fast float %1419, 0x40B4D2F520000000
  %1426 = fmul fast float %1420, 0x40B4D2F520000000
  %1427 = fmul fast float %1421, 0x40B4D2F520000000
  %1428 = fadd fast float %1425, 0x41869ECF20000000
  %1429 = fadd fast float %1426, 0x41869ECF20000000
  %1430 = fadd fast float %1427, 0x41869ECF20000000
  %1431 = fmul fast float %1428, %1422
  %1432 = fmul fast float %1429, %1423
  %1433 = fmul fast float %1430, %1424
  %1434 = fadd fast float %1431, 0x417BB79C60000000
  %1435 = fadd fast float %1432, 0x417BB79C60000000
  %1436 = fadd fast float %1433, 0x417BB79C60000000
  %1437 = fmul fast float %1434, %1422
  %1438 = fmul fast float %1435, %1423
  %1439 = fmul fast float %1436, %1424
  %1440 = fadd fast float %1437, 0x41218DE180000000
  %1441 = fadd fast float %1438, 0x41218DE180000000
  %1442 = fadd fast float %1439, 0x41218DE180000000
  %1443 = fmul fast float %1440, %1422
  %1444 = fmul fast float %1441, %1423
  %1445 = fmul fast float %1442, %1424
  %1446 = fadd fast float %1443, 0x4077F174E0000000
  %1447 = fadd fast float %1444, 0x4077F174E0000000
  %1448 = fadd fast float %1445, 0x4077F174E0000000
  %1449 = fmul fast float %1446, %1422
  %1450 = fmul fast float %1447, %1423
  %1451 = fmul fast float %1448, %1424
  %1452 = fadd fast float %1449, 0x3F3FF79B80000000
  %1453 = fadd fast float %1450, 0x3F3FF79B80000000
  %1454 = fadd fast float %1451, 0x3F3FF79B80000000
  %1455 = fmul fast float %1419, 0x412442D320000000
  %1456 = fmul fast float %1420, 0x412442D320000000
  %1457 = fmul fast float %1421, 0x412442D320000000
  %1458 = fadd fast float %1455, 0x419385D5C0000000
  %1459 = fadd fast float %1456, 0x419385D5C0000000
  %1460 = fadd fast float %1457, 0x419385D5C0000000
  %1461 = fmul fast float %1458, %1422
  %1462 = fmul fast float %1459, %1423
  %1463 = fmul fast float %1460, %1424
  %1464 = fadd fast float %1461, 4.182885e+06
  %1465 = fadd fast float %1462, 4.182885e+06
  %1466 = fadd fast float %1463, 4.182885e+06
  %1467 = fmul fast float %1464, %1422
  %1468 = fmul fast float %1465, %1423
  %1469 = fmul fast float %1466, %1424
  %1470 = fadd fast float %1467, 0x40C4D633C0000000
  %1471 = fadd fast float %1468, 0x40C4D633C0000000
  %1472 = fadd fast float %1469, 0x40C4D633C0000000
  %1473 = fmul fast float %1470, %1422
  %1474 = fmul fast float %1471, %1423
  %1475 = fmul fast float %1472, %1424
  %1476 = fadd fast float %1473, 1.000000e+00
  %1477 = fadd fast float %1474, 1.000000e+00
  %1478 = fadd fast float %1475, 1.000000e+00
  %1479 = fdiv fast float %1452, %1476
  %1480 = fdiv fast float %1453, %1477
  %1481 = fdiv fast float %1454, %1478
  %1482 = extractvalue %dx.types.CBufRet.f32 %1184, 2
  %1483 = extractvalue %dx.types.CBufRet.f32 %1184, 3
  %1484 = fmul fast float %1482, %1479
  %1485 = fmul fast float %1482, %1480
  %1486 = fmul fast float %1482, %1481
  %1487 = fadd fast float %1484, %1483
  %1488 = fadd fast float %1485, %1483
  %1489 = fadd fast float %1486, %1483
  br label %1490

; <label>:1490                                    ; preds = %1356, %1235, %1205, %1203, %1189, %1157
  %1491 = phi float [ %1176, %1157 ], [ %1200, %1189 ], [ %1176, %1203 ], [ %1487, %1356 ], [ %1353, %1235 ], [ %1232, %1205 ]
  %1492 = phi float [ %1179, %1157 ], [ %1201, %1189 ], [ %1179, %1203 ], [ %1488, %1356 ], [ %1354, %1235 ], [ %1233, %1205 ]
  %1493 = phi float [ %1182, %1157 ], [ %1202, %1189 ], [ %1182, %1203 ], [ %1489, %1356 ], [ %1355, %1235 ], [ %1234, %1205 ]
  %1494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 234)  ; CBufferLoadLegacy(handle,regIndex)
  %1495 = extractvalue %dx.types.CBufRet.f32 %1494, 0
  %1496 = extractvalue %dx.types.CBufRet.f32 %1494, 2
  %1497 = call float @dx.op.unary.f32(i32 23, float %1161)  ; Log(value)
  %1498 = fmul fast float %1497, %1496
  %1499 = call float @dx.op.unary.f32(i32 21, float %1498)  ; Exp(value)
  %1500 = fmul fast float %1499, %1495
  %1501 = extractvalue %dx.types.CBufRet.f32 %1494, 1
  %1502 = extractvalue %dx.types.CBufRet.f32 %1494, 3
  %1503 = fmul fast float %1497, %1502
  %1504 = call float @dx.op.unary.f32(i32 21, float %1503)  ; Exp(value)
  %1505 = fmul fast float %1504, %1501
  %1506 = fadd fast float %1505, %1500
  %1507 = fmul fast float %1506, %1491
  %1508 = fmul fast float %1506, %1492
  %1509 = fmul fast float %1506, %1493
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1507)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1508)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1509)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1506)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

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
!dx.viewIdState = !{!29}
!dx.entryPoints = !{!30}

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
!22 = !{i32 2, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 272, null}
!23 = !{i32 3, %tonemapping* undef, !"", i32 0, i32 4, i32 1, i32 64, null}
!24 = !{!25, !26, !27, !28}
!25 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!26 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!27 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!28 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!29 = !{[24 x i32] [i32 22, i32 4, i32 15, i32 15, i32 0, i32 0, i32 7, i32 7, i32 7, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 7, i32 7]}
!30 = !{void ()* @ps_main, !"ps_main", !31, !4, !53}
!31 = !{!32, !51, null}
!32 = !{!33, !36, !38, !39, !41, !43, !45, !47, !49}
!33 = !{i32 0, !"SV_Position", i8 9, i8 3, !34, i8 4, i32 1, i8 4, i32 0, i8 0, !35}
!34 = !{i32 0}
!35 = !{i32 3, i32 3}
!36 = !{i32 1, !"COLOR", i8 9, i8 0, !34, i8 2, i32 1, i8 4, i32 1, i8 0, !37}
!37 = !{i32 3, i32 15}
!38 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !34, i8 2, i32 1, i8 2, i32 2, i8 0, !35}
!39 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !40, i8 2, i32 1, i8 2, i32 2, i8 2, !35}
!40 = !{i32 2}
!41 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !42, i8 2, i32 1, i8 2, i32 3, i8 0, !35}
!42 = !{i32 3}
!43 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !44, i8 2, i32 1, i8 2, i32 3, i8 2, !35}
!44 = !{i32 4}
!45 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !46, i8 2, i32 1, i8 2, i32 4, i8 0, !35}
!46 = !{i32 5}
!47 = !{i32 7, !"TEXCOORD", i8 9, i8 0, !48, i8 2, i32 1, i8 2, i32 4, i8 2, !35}
!48 = !{i32 6}
!49 = !{i32 8, !"TEXCOORD", i8 9, i8 0, !50, i8 2, i32 1, i8 2, i32 5, i8 0, !35}
!50 = !{i32 7}
!51 = !{!52}
!52 = !{i32 0, !"SV_Target", i8 9, i8 16, !34, i8 0, i32 1, i8 4, i32 0, i8 0, !37}
!53 = !{i32 0, i64 16}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 1}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 1}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 1}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 1}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}

