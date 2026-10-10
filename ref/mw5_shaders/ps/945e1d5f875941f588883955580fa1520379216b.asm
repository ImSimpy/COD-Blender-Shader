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
; shader hash: 3d865137f4d1f5f7dbff9ceb347211d5
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
;   [320 x i8] (type annotation not present)
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
;                                   texture     f32          2d      T1     t69,space2     1
;                                   texture     f32          2d      T2     t73,space2     1
;                                   texture     f32          2d      T3     t70,space2     1
;                                   texture    byte         r/o      T4     t15,space1     1
;                                   texture     f32          2d      T5             t0     1
;                                   texture     f32          2d      T6             t1     1
;                                   texture     f32          2d      T7             t2     1
;                                   texture     f32          2d      T8             t3     1
;                                   texture     f32          2d      T9             t4     1
;                                   texture     f32          2d     T10             t5     1
;                                   texture     f32          2d     T11             t6     1
;                                   texture     f32          3d     T12     t71,space2     1
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
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
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
%perObject = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%tonemapping = type { i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 71, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 70, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 73, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 74, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.f32 %43, 0
  %45 = extractvalue %dx.types.CBufRet.f32 %43, 1
  %46 = fsub fast float %41, %44
  %47 = fsub fast float %42, %45
  %48 = extractvalue %dx.types.CBufRet.f32 %43, 2
  %49 = extractvalue %dx.types.CBufRet.f32 %43, 3
  %50 = fmul fast float %46, %48
  %51 = fmul fast float %47, %49
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 0
  %54 = extractvalue %dx.types.CBufRet.f32 %52, 1
  %55 = fmul fast float %50, %53
  %56 = fmul fast float %51, %54
  %57 = fptoui float %55 to i32
  %58 = fptoui float %56 to i32
  %59 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.i32 %59, 1
  %61 = shl i32 %60, 2
  %62 = extractvalue %dx.types.CBufRet.i32 %59, 3
  %63 = add i32 %61, %62
  %64 = lshr i32 %58, 2
  %65 = extractvalue %dx.types.CBufRet.i32 %59, 2
  %66 = mul i32 %64, %65
  %67 = lshr i32 %57, 3
  %68 = add i32 %63, %67
  %69 = add i32 %68, %66
  %70 = shl i32 %69, 2
  %71 = shl i32 %58, 3
  %72 = and i32 %71, 24
  %73 = and i32 %57, 7
  %74 = or i32 %72, %73
  %75 = shl i32 1, %74
  %76 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %70, i32 undef)  ; BufferLoad(srv,index,wot)
  %77 = extractvalue %dx.types.ResRet.i32 %76, 0
  %78 = and i32 %77, %75
  %79 = icmp ne i32 %78, 0
  %80 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 228)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.f32 %80, 2
  %82 = extractvalue %dx.types.CBufRet.f32 %80, 0
  %83 = call float @dx.op.binary.f32(i32 35, float %50, float %82)  ; FMax(a,b)
  %84 = call float @dx.op.binary.f32(i32 36, float %83, float %81)  ; FMin(a,b)
  %85 = call float @dx.op.binary.f32(i32 36, float %50, float %82)  ; FMin(a,b)
  %86 = call float @dx.op.binary.f32(i32 35, float %85, float %84)  ; FMax(a,b)
  %87 = fcmp fast oeq float %50, %86
  %88 = extractvalue %dx.types.CBufRet.f32 %80, 3
  %89 = extractvalue %dx.types.CBufRet.f32 %80, 1
  %90 = call float @dx.op.binary.f32(i32 35, float %51, float %89)  ; FMax(a,b)
  %91 = call float @dx.op.binary.f32(i32 36, float %90, float %88)  ; FMin(a,b)
  %92 = call float @dx.op.binary.f32(i32 36, float %51, float %89)  ; FMin(a,b)
  %93 = call float @dx.op.binary.f32(i32 35, float %92, float %91)  ; FMax(a,b)
  %94 = fcmp fast oeq float %51, %93
  %95 = and i1 %87, %94
  %96 = select i1 %95, float 0.000000e+00, float 1.000000e+00
  %97 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %98 = extractvalue %dx.types.CBufRet.f32 %97, 1
  %99 = fcmp fast une float %98, 0.000000e+00
  %100 = extractvalue %dx.types.CBufRet.f32 %97, 0
  %101 = select i1 %99, float %96, float %100
  %102 = fcmp fast oeq float %101, %100
  %103 = and i1 %79, %102
  br i1 %103, label %105, label %104, !dx.controlflow.hints !56

; <label>:104                                     ; preds = %0
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %105

; <label>:105                                     ; preds = %104, %0
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 3
  %108 = fcmp fast ogt float %107, 0.000000e+00
  br i1 %108, label %109, label %159, !dx.controlflow.hints !57

; <label>:109                                     ; preds = %105
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 3
  %112 = fmul fast float %111, 1.000000e+01
  %113 = call float @dx.op.unary.f32(i32 27, float %112)  ; Round_ni(value)
  %114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.f32 %114, 0
  %116 = extractvalue %dx.types.CBufRet.f32 %114, 1
  %117 = fmul fast float %115, %41
  %118 = fmul fast float %116, %42
  %119 = call float @dx.op.unary.f32(i32 27, float %117)  ; Round_ni(value)
  %120 = call float @dx.op.unary.f32(i32 27, float %118)  ; Round_ni(value)
  %121 = fmul fast float %113, 0x4002B851E0000000
  %122 = call float @dx.op.unary.f32(i32 22, float %121)  ; Frc(value)
  %123 = fadd fast float %122, 0x3FB99999A0000000
  %124 = fadd fast float %123, %119
  %125 = fadd fast float %123, %120
  %126 = fmul fast float %124, 0x3FE1BEDF00000000
  %127 = call float @dx.op.unary.f32(i32 22, float %126)  ; Frc(value)
  %128 = fmul fast float %124, %127
  %129 = fadd fast float %128, %125
  %130 = fmul fast float %125, 0x3FD3BEBE20000000
  %131 = call float @dx.op.unary.f32(i32 22, float %130)  ; Frc(value)
  %132 = fmul fast float %125, %131
  %133 = fadd fast float %132, %124
  %134 = fmul fast float %129, %133
  %135 = call float @dx.op.unary.f32(i32 22, float %134)  ; Frc(value)
  %136 = extractvalue %dx.types.CBufRet.f32 %114, 3
  %137 = bitcast float %136 to i32
  %138 = and i32 %137, 255
  %139 = uitofp i32 %138 to float
  %140 = fmul fast float %135, 0x4085373340000000
  %141 = call float @dx.op.unary.f32(i32 22, float %140)  ; Frc(value)
  %142 = fmul fast float %139, 0x3F6CE9B6A0000000
  %143 = fcmp fast olt float %141, %142
  br i1 %143, label %144, label %159, !dx.controlflow.hints !58

; <label>:144                                     ; preds = %109
  %145 = fdiv fast float %141, %142
  %146 = fmul fast float %145, 2.000000e+00
  %147 = fadd fast float %146, -1.000000e+00
  %148 = lshr i32 %137, 8
  %149 = and i32 %148, 255
  %150 = uitofp i32 %149 to float
  %151 = call float @dx.op.unary.f32(i32 83, float %35)  ; DerivCoarseX(value)
  %152 = call float @dx.op.unary.f32(i32 83, float %36)  ; DerivCoarseX(value)
  %153 = fmul fast float %147, %151
  %154 = fmul fast float %153, %150
  %155 = fmul fast float %152, %147
  %156 = fmul fast float %155, %150
  %157 = fadd fast float %154, %35
  %158 = fadd fast float %156, %36
  br label %159

; <label>:159                                     ; preds = %144, %109, %105
  %160 = phi float [ %157, %144 ], [ %35, %109 ], [ %35, %105 ]
  %161 = phi float [ %158, %144 ], [ %36, %109 ], [ %36, %105 ]
  %162 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %163 = extractvalue %dx.types.Dimensions %162, 0
  %164 = sitofp i32 %163 to float
  %165 = extractvalue %dx.types.Dimensions %162, 1
  %166 = sitofp i32 %165 to float
  %167 = fdiv fast float 5.000000e-01, %164
  %168 = fdiv fast float 5.000000e-01, %166
  %169 = fsub fast float 1.000000e+00, %167
  %170 = call float @dx.op.binary.f32(i32 35, float %160, float %167)  ; FMax(a,b)
  %171 = call float @dx.op.binary.f32(i32 36, float %170, float %169)  ; FMin(a,b)
  %172 = fsub fast float 1.000000e+00, %168
  %173 = call float @dx.op.binary.f32(i32 35, float %161, float %168)  ; FMax(a,b)
  %174 = call float @dx.op.binary.f32(i32 36, float %173, float %172)  ; FMin(a,b)
  %175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %176 = extractvalue %dx.types.CBufRet.f32 %175, 3
  %177 = bitcast float %176 to i32
  %178 = and i32 %177, 1
  %179 = icmp ne i32 %178, 0
  %180 = select i1 %179, float %171, float %160
  %181 = and i32 %177, 2
  %182 = icmp ne i32 %181, 0
  %183 = select i1 %182, float %174, float %161
  %184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %185 = extractvalue %dx.types.CBufRet.f32 %184, 2
  %186 = fadd fast float %185, -2.000000e+00
  %187 = call float @dx.op.unary.f32(i32 6, float %186)  ; FAbs(value)
  %188 = fcmp fast olt float %187, 0x3F1A36E2E0000000
  %189 = fmul fast float %180, 2.000000e+00
  %190 = fmul fast float %183, 2.000000e+00
  %191 = fadd fast float %189, -1.000000e+00
  %192 = fadd fast float %190, -1.000000e+00
  %193 = call float @dx.op.unary.f32(i32 6, float %191)  ; FAbs(value)
  %194 = call float @dx.op.unary.f32(i32 6, float %192)  ; FAbs(value)
  %195 = extractvalue %dx.types.CBufRet.f32 %184, 0
  %196 = extractvalue %dx.types.CBufRet.f32 %184, 1
  %197 = extractvalue %dx.types.CBufRet.f32 %184, 3
  %198 = fsub fast float %196, %195
  %199 = fcmp fast ogt float %197, 1.000000e+00
  %200 = fdiv fast float 1.000000e+00, %197
  %201 = fmul fast float %198, %200
  %202 = select i1 %199, float %201, float %198
  %203 = fmul fast float %198, %197
  %204 = select i1 %199, float %198, float %203
  %205 = fsub fast float %196, %202
  %206 = fcmp fast ogt float %193, %205
  %207 = fsub fast float %196, %204
  %208 = fcmp fast ogt float %194, %207
  %209 = or i1 %206, %208
  %210 = select i1 %209, float 1.000000e+00, float 0.000000e+00
  %211 = call float @dx.op.dot2.f32(i32 54, float %191, float %192, float %191, float %192)  ; Dot2(ax,ay,bx,by)
  %212 = call float @dx.op.unary.f32(i32 24, float %211)  ; Sqrt(value)
  %213 = fsub fast float %212, %195
  %214 = fdiv fast float %213, %198
  %215 = call float @dx.op.unary.f32(i32 7, float %214)  ; Saturate(value)
  %216 = fmul fast float %215, 2.000000e+00
  %217 = fsub fast float 3.000000e+00, %216
  %218 = fmul fast float %215, %215
  %219 = fmul fast float %218, 2.000000e+00
  %220 = fmul fast float %219, %217
  %221 = fadd fast float %220, -1.000000e+00
  %222 = call float @dx.op.unary.f32(i32 6, float %221)  ; FAbs(value)
  %223 = fsub fast float 1.000000e+00, %222
  %224 = select i1 %188, float %210, float %223
  %225 = fmul fast float %224, %40
  %226 = fcmp fast oeq float %101, 0.000000e+00
  %227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %228 = extractvalue %dx.types.CBufRet.f32 %227, 3
  %229 = fcmp fast une float %228, 0.000000e+00
  %230 = and i1 %226, %229
  br i1 %230, label %231, label %247

; <label>:231                                     ; preds = %159
  %232 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %16, float %50, float %51, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %233 = extractvalue %dx.types.ResRet.f32 %232, 0
  %234 = fsub fast float 1.000000e+00, %233
  %235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %236 = extractvalue %dx.types.CBufRet.f32 %235, 0
  %237 = extractvalue %dx.types.CBufRet.f32 %235, 1
  %238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 222)  ; CBufferLoadLegacy(handle,regIndex)
  %239 = extractvalue %dx.types.CBufRet.f32 %238, 3
  %240 = fdiv fast float %234, %239
  %241 = fsub fast float %240, %236
  %242 = fmul fast float %241, %237
  %243 = call float @dx.op.unary.f32(i32 7, float %242)  ; Saturate(value)
  %244 = fsub fast float 1.000000e+00, %243
  %245 = fmul fast float %244, %244
  %246 = fmul fast float %245, %225
  br label %247

; <label>:247                                     ; preds = %231, %159
  %248 = phi float [ %246, %231 ], [ %225, %159 ]
  %249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %250 = extractvalue %dx.types.CBufRet.f32 %249, 3
  %251 = bitcast float %250 to i32
  %252 = lshr i32 %251, 4
  %253 = lshr i32 %251, 9
  %254 = and i32 %253, 1
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %350, label %256

; <label>:256                                     ; preds = %247
  %257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
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
  %270 = and i32 %252, 1
  %271 = icmp ne i32 %270, 0
  %272 = fcmp fast ogt float %261, 0.000000e+00
  %273 = fcmp fast ogt float %263, 0.000000e+00
  %274 = and i1 %272, %273
  %275 = fcmp fast ogt float %267, 0.000000e+00
  br i1 %274, label %276, label %336

; <label>:276                                     ; preds = %256
  br i1 %275, label %277, label %285

; <label>:277                                     ; preds = %276
  %278 = fmul fast float %263, %34
  %279 = fmul fast float %261, %33
  %280 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %14, float %279, float %278, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %290 = fmul fast float %263, %34
  %291 = fsub fast float 1.000000e+00, %33
  %292 = fmul fast float %261, %291
  %293 = fsub fast float 1.000000e+00, %292
  %294 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %14, float %293, float %290, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %305 = fsub fast float 1.000000e+00, %34
  %306 = fmul fast float %263, %305
  %307 = fsub fast float 1.000000e+00, %306
  %308 = fsub fast float 1.000000e+00, %33
  %309 = fmul fast float %261, %308
  %310 = fsub fast float 1.000000e+00, %309
  %311 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %14, float %310, float %307, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %322 = fsub fast float 1.000000e+00, %34
  %323 = fmul fast float %263, %322
  %324 = fsub fast float 1.000000e+00, %323
  %325 = fmul fast float %261, %33
  %326 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %14, float %325, float %324, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %338 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %14, float %33, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %349 = fmul fast float %348, %248
  br label %350

; <label>:350                                     ; preds = %347, %247
  %351 = phi float [ %349, %347 ], [ %248, %247 ]
  %352 = and i32 %253, 2
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %448, label %354

; <label>:354                                     ; preds = %350
  %355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
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
  %368 = and i32 %252, 2
  %369 = icmp ne i32 %368, 0
  %370 = fcmp fast ogt float %359, 0.000000e+00
  %371 = fcmp fast ogt float %361, 0.000000e+00
  %372 = and i1 %370, %371
  %373 = fcmp fast ogt float %365, 0.000000e+00
  br i1 %372, label %374, label %434

; <label>:374                                     ; preds = %354
  br i1 %373, label %375, label %383

; <label>:375                                     ; preds = %374
  %376 = fmul fast float %361, %32
  %377 = fmul fast float %359, %31
  %378 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %14, float %377, float %376, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %388 = fmul fast float %361, %32
  %389 = fsub fast float 1.000000e+00, %31
  %390 = fmul fast float %359, %389
  %391 = fsub fast float 1.000000e+00, %390
  %392 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %14, float %391, float %388, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %403 = fsub fast float 1.000000e+00, %32
  %404 = fmul fast float %361, %403
  %405 = fsub fast float 1.000000e+00, %404
  %406 = fsub fast float 1.000000e+00, %31
  %407 = fmul fast float %359, %406
  %408 = fsub fast float 1.000000e+00, %407
  %409 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %14, float %408, float %405, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %420 = fsub fast float 1.000000e+00, %32
  %421 = fmul fast float %361, %420
  %422 = fsub fast float 1.000000e+00, %421
  %423 = fmul fast float %359, %31
  %424 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %14, float %423, float %422, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %436 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %14, float %31, float %32, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %450 = and i32 %253, 4
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %546, label %452

; <label>:452                                     ; preds = %448
  %453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
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
  %466 = and i32 %252, 4
  %467 = icmp ne i32 %466, 0
  %468 = fcmp fast ogt float %457, 0.000000e+00
  %469 = fcmp fast ogt float %459, 0.000000e+00
  %470 = and i1 %468, %469
  %471 = fcmp fast ogt float %463, 0.000000e+00
  br i1 %470, label %472, label %532

; <label>:472                                     ; preds = %452
  br i1 %471, label %473, label %481

; <label>:473                                     ; preds = %472
  %474 = fmul fast float %459, %30
  %475 = fmul fast float %457, %29
  %476 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %14, float %475, float %474, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %486 = fmul fast float %459, %30
  %487 = fsub fast float 1.000000e+00, %29
  %488 = fmul fast float %457, %487
  %489 = fsub fast float 1.000000e+00, %488
  %490 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %14, float %489, float %486, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %501 = fsub fast float 1.000000e+00, %30
  %502 = fmul fast float %459, %501
  %503 = fsub fast float 1.000000e+00, %502
  %504 = fsub fast float 1.000000e+00, %29
  %505 = fmul fast float %457, %504
  %506 = fsub fast float 1.000000e+00, %505
  %507 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %14, float %506, float %503, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %518 = fsub fast float 1.000000e+00, %30
  %519 = fmul fast float %459, %518
  %520 = fsub fast float 1.000000e+00, %519
  %521 = fmul fast float %457, %29
  %522 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %14, float %521, float %520, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %534 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %14, float %29, float %30, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %548 = and i32 %253, 8
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %644, label %550

; <label>:550                                     ; preds = %546
  %551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
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
  %564 = and i32 %252, 8
  %565 = icmp ne i32 %564, 0
  %566 = fcmp fast ogt float %555, 0.000000e+00
  %567 = fcmp fast ogt float %557, 0.000000e+00
  %568 = and i1 %566, %567
  %569 = fcmp fast ogt float %561, 0.000000e+00
  br i1 %568, label %570, label %630

; <label>:570                                     ; preds = %550
  br i1 %569, label %571, label %579

; <label>:571                                     ; preds = %570
  %572 = fmul fast float %557, %28
  %573 = fmul fast float %555, %27
  %574 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %14, float %573, float %572, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %584 = fmul fast float %557, %28
  %585 = fsub fast float 1.000000e+00, %27
  %586 = fmul fast float %555, %585
  %587 = fsub fast float 1.000000e+00, %586
  %588 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %14, float %587, float %584, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %599 = fsub fast float 1.000000e+00, %28
  %600 = fmul fast float %557, %599
  %601 = fsub fast float 1.000000e+00, %600
  %602 = fsub fast float 1.000000e+00, %27
  %603 = fmul fast float %555, %602
  %604 = fsub fast float 1.000000e+00, %603
  %605 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %14, float %604, float %601, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %616 = fsub fast float 1.000000e+00, %28
  %617 = fmul fast float %557, %616
  %618 = fsub fast float 1.000000e+00, %617
  %619 = fmul fast float %555, %27
  %620 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %14, float %619, float %618, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %632 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %14, float %27, float %28, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %646 = and i32 %253, 16
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %742, label %648

; <label>:648                                     ; preds = %644
  %649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %650 = extractvalue %dx.types.CBufRet.f32 %649, 3
  %651 = bitcast float %650 to i32
  %652 = and i32 %651, 65535
  %653 = call float @dx.op.legacyF16ToF32(i32 131, i32 %652)  ; LegacyF16ToF32(value)
  %654 = lshr i32 %651, 16
  %655 = call float @dx.op.legacyF16ToF32(i32 131, i32 %654)  ; LegacyF16ToF32(value)
  %656 = extractvalue %dx.types.CBufRet.f32 %649, 2
  %657 = bitcast float %656 to i32
  %658 = and i32 %657, 65535
  %659 = call float @dx.op.legacyF16ToF32(i32 131, i32 %658)  ; LegacyF16ToF32(value)
  %660 = lshr i32 %657, 16
  %661 = call float @dx.op.legacyF16ToF32(i32 131, i32 %660)  ; LegacyF16ToF32(value)
  %662 = and i32 %252, 16
  %663 = icmp ne i32 %662, 0
  %664 = fcmp fast ogt float %653, 0.000000e+00
  %665 = fcmp fast ogt float %655, 0.000000e+00
  %666 = and i1 %664, %665
  %667 = fcmp fast ogt float %659, 0.000000e+00
  br i1 %666, label %668, label %728

; <label>:668                                     ; preds = %648
  br i1 %667, label %669, label %677

; <label>:669                                     ; preds = %668
  %670 = fmul fast float %655, %26
  %671 = fmul fast float %653, %25
  %672 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %14, float %671, float %670, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %673 = extractvalue %dx.types.ResRet.f32 %672, 0
  %674 = fsub fast float 1.000000e+00, %673
  %675 = select i1 %663, float %674, float %673
  %676 = fmul fast float %675, %659
  br label %677

; <label>:677                                     ; preds = %669, %668
  %678 = phi float [ %676, %669 ], [ 0.000000e+00, %668 ]
  %679 = fadd fast float %678, %661
  %680 = call float @dx.op.unary.f32(i32 7, float %679)  ; Saturate(value)
  br i1 %667, label %681, label %691

; <label>:681                                     ; preds = %677
  %682 = fmul fast float %655, %26
  %683 = fsub fast float 1.000000e+00, %25
  %684 = fmul fast float %653, %683
  %685 = fsub fast float 1.000000e+00, %684
  %686 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %14, float %685, float %682, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %687 = extractvalue %dx.types.ResRet.f32 %686, 1
  %688 = fsub fast float 1.000000e+00, %687
  %689 = select i1 %663, float %688, float %687
  %690 = fmul fast float %689, %659
  br label %691

; <label>:691                                     ; preds = %681, %677
  %692 = phi float [ %690, %681 ], [ 0.000000e+00, %677 ]
  %693 = fadd fast float %692, %661
  %694 = call float @dx.op.unary.f32(i32 7, float %693)  ; Saturate(value)
  %695 = fmul fast float %694, %680
  br i1 %667, label %696, label %708

; <label>:696                                     ; preds = %691
  %697 = fsub fast float 1.000000e+00, %26
  %698 = fmul fast float %655, %697
  %699 = fsub fast float 1.000000e+00, %698
  %700 = fsub fast float 1.000000e+00, %25
  %701 = fmul fast float %653, %700
  %702 = fsub fast float 1.000000e+00, %701
  %703 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %14, float %702, float %699, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %704 = extractvalue %dx.types.ResRet.f32 %703, 2
  %705 = fsub fast float 1.000000e+00, %704
  %706 = select i1 %663, float %705, float %704
  %707 = fmul fast float %706, %659
  br label %708

; <label>:708                                     ; preds = %696, %691
  %709 = phi float [ %707, %696 ], [ 0.000000e+00, %691 ]
  %710 = fadd fast float %709, %661
  %711 = call float @dx.op.unary.f32(i32 7, float %710)  ; Saturate(value)
  %712 = fmul fast float %695, %711
  br i1 %667, label %713, label %723

; <label>:713                                     ; preds = %708
  %714 = fsub fast float 1.000000e+00, %26
  %715 = fmul fast float %655, %714
  %716 = fsub fast float 1.000000e+00, %715
  %717 = fmul fast float %653, %25
  %718 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %14, float %717, float %716, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %719 = extractvalue %dx.types.ResRet.f32 %718, 3
  %720 = fsub fast float 1.000000e+00, %719
  %721 = select i1 %663, float %720, float %719
  %722 = fmul fast float %721, %659
  br label %723

; <label>:723                                     ; preds = %713, %708
  %724 = phi float [ %722, %713 ], [ 0.000000e+00, %708 ]
  %725 = fadd fast float %724, %661
  %726 = call float @dx.op.unary.f32(i32 7, float %725)  ; Saturate(value)
  %727 = fmul fast float %712, %726
  br label %739

; <label>:728                                     ; preds = %648
  br i1 %667, label %729, label %735

; <label>:729                                     ; preds = %728
  %730 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %14, float %25, float %26, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %731 = extractvalue %dx.types.ResRet.f32 %730, 0
  %732 = fsub fast float 1.000000e+00, %731
  %733 = select i1 %663, float %732, float %731
  %734 = fmul fast float %733, %659
  br label %735

; <label>:735                                     ; preds = %729, %728
  %736 = phi float [ %734, %729 ], [ 0.000000e+00, %728 ]
  %737 = fadd fast float %736, %661
  %738 = call float @dx.op.unary.f32(i32 7, float %737)  ; Saturate(value)
  br label %739

; <label>:739                                     ; preds = %735, %723
  %740 = phi float [ %727, %723 ], [ %738, %735 ]
  %741 = fmul fast float %740, %645
  br label %742

; <label>:742                                     ; preds = %739, %644
  %743 = phi float [ %741, %739 ], [ %645, %644 ]
  %744 = call float @dx.op.binary.f32(i32 35, float %743, float 0.000000e+00)  ; FMax(a,b)
  %745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %746 = extractvalue %dx.types.CBufRet.f32 %745, 3
  %747 = bitcast float %746 to i32
  %748 = and i32 %747, 1
  %749 = icmp eq i32 %748, 0
  %750 = and i32 %747, 4
  %751 = icmp eq i32 %750, 0
  br i1 %749, label %825, label %752, !dx.controlflow.hints !59

; <label>:752                                     ; preds = %742
  %753 = and i32 %747, 2
  %754 = icmp eq i32 %753, 0
  %755 = extractvalue %dx.types.CBufRet.f32 %745, 0
  %756 = extractvalue %dx.types.CBufRet.f32 %745, 1
  %757 = extractvalue %dx.types.CBufRet.f32 %745, 2
  %758 = fmul fast float %755, %37
  %759 = fmul fast float %756, %38
  %760 = fmul fast float %757, %39
  %761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %762 = extractvalue %dx.types.CBufRet.f32 %761, 0
  %763 = fmul fast float %762, %758
  %764 = fmul fast float %762, %759
  %765 = fmul fast float %762, %760
  br i1 %754, label %825, label %766, !dx.controlflow.hints !60

; <label>:766                                     ; preds = %752
  %767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %768 = extractvalue %dx.types.CBufRet.f32 %767, 0
  %769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %770 = extractvalue %dx.types.CBufRet.f32 %769, 0
  %771 = extractvalue %dx.types.CBufRet.f32 %769, 1
  %772 = extractvalue %dx.types.CBufRet.f32 %769, 2
  %773 = call float @dx.op.dot3.f32(i32 55, float %763, float %764, float %765, float %770, float %771, float %772)  ; Dot3(ax,ay,az,bx,by,bz)
  %774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %775 = extractvalue %dx.types.CBufRet.f32 %774, 0
  %776 = extractvalue %dx.types.CBufRet.f32 %774, 1
  %777 = extractvalue %dx.types.CBufRet.f32 %774, 2
  %778 = call float @dx.op.dot3.f32(i32 55, float %763, float %764, float %765, float %775, float %776, float %777)  ; Dot3(ax,ay,az,bx,by,bz)
  %779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %780 = extractvalue %dx.types.CBufRet.f32 %779, 0
  %781 = extractvalue %dx.types.CBufRet.f32 %779, 1
  %782 = extractvalue %dx.types.CBufRet.f32 %779, 2
  %783 = call float @dx.op.dot3.f32(i32 55, float %763, float %764, float %765, float %780, float %781, float %782)  ; Dot3(ax,ay,az,bx,by,bz)
  %784 = fmul fast float %773, %768
  %785 = fmul fast float %778, %768
  %786 = fmul fast float %783, %768
  %787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %788 = extractvalue %dx.types.CBufRet.f32 %787, 2
  %789 = fmul fast float %784, %788
  %790 = fmul fast float %785, %788
  %791 = fmul fast float %786, %788
  %792 = fadd fast float %789, 9.765625e-04
  %793 = fadd fast float %790, 9.765625e-04
  %794 = fadd fast float %791, 9.765625e-04
  %795 = call float @dx.op.unary.f32(i32 23, float %792)  ; Log(value)
  %796 = call float @dx.op.unary.f32(i32 23, float %793)  ; Log(value)
  %797 = call float @dx.op.unary.f32(i32 23, float %794)  ; Log(value)
  %798 = fadd fast float %795, 1.000000e+01
  %799 = fadd fast float %796, 1.000000e+01
  %800 = fadd fast float %797, 1.000000e+01
  %801 = fmul fast float %798, 0x3FA99999A0000000
  %802 = fmul fast float %799, 0x3FA99999A0000000
  %803 = fmul fast float %800, 0x3FA99999A0000000
  %804 = call float @dx.op.unary.f32(i32 7, float %801)  ; Saturate(value)
  %805 = call float @dx.op.unary.f32(i32 7, float %802)  ; Saturate(value)
  %806 = call float @dx.op.unary.f32(i32 7, float %803)  ; Saturate(value)
  %807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %808 = extractvalue %dx.types.CBufRet.f32 %807, 0
  %809 = extractvalue %dx.types.CBufRet.f32 %807, 1
  %810 = extractvalue %dx.types.CBufRet.f32 %807, 2
  %811 = fmul fast float %808, %804
  %812 = fmul fast float %809, %805
  %813 = fmul fast float %810, %806
  %814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %815 = extractvalue %dx.types.CBufRet.f32 %814, 0
  %816 = extractvalue %dx.types.CBufRet.f32 %814, 1
  %817 = extractvalue %dx.types.CBufRet.f32 %814, 2
  %818 = fadd fast float %811, %815
  %819 = fadd fast float %812, %816
  %820 = fadd fast float %813, %817
  %821 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %16, float %818, float %819, float %820, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %822 = extractvalue %dx.types.ResRet.f32 %821, 0
  %823 = extractvalue %dx.types.ResRet.f32 %821, 1
  %824 = extractvalue %dx.types.ResRet.f32 %821, 2
  br label %825

; <label>:825                                     ; preds = %766, %752, %742
  %826 = phi float [ %822, %766 ], [ %37, %742 ], [ %763, %752 ]
  %827 = phi float [ %823, %766 ], [ %38, %742 ], [ %764, %752 ]
  %828 = phi float [ %824, %766 ], [ %39, %742 ], [ %765, %752 ]
  %829 = fcmp fast oeq float %744, 0.000000e+00
  br i1 %829, label %830, label %831, !dx.controlflow.hints !61

; <label>:830                                     ; preds = %825
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %831

; <label>:831                                     ; preds = %830, %825
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %832 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %15, float %21, float %22, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %833 = extractvalue %dx.types.ResRet.f32 %832, 0
  %834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %835 = extractvalue %dx.types.CBufRet.f32 %834, 3
  %836 = bitcast float %835 to i32
  %837 = and i32 %836, 65535
  %838 = call float @dx.op.legacyF16ToF32(i32 131, i32 %837)  ; LegacyF16ToF32(value)
  %839 = fcmp fast une float %838, 0.000000e+00
  %840 = select i1 %839, float 0.000000e+00, float 1.000000e+00
  %841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %842 = extractvalue %dx.types.CBufRet.f32 %841, 3
  %843 = fmul fast float %842, %833
  %844 = fmul fast float %843, %840
  %845 = fsub fast float 1.000000e+00, %844
  %846 = fmul fast float %845, %826
  %847 = fmul fast float %845, %827
  %848 = fmul fast float %845, %828
  %849 = extractvalue %dx.types.CBufRet.f32 %841, 0
  %850 = extractvalue %dx.types.CBufRet.f32 %841, 1
  %851 = extractvalue %dx.types.CBufRet.f32 %841, 2
  %852 = fmul fast float %849, %843
  %853 = fmul fast float %850, %843
  %854 = fmul fast float %851, %843
  %855 = fadd fast float %846, %852
  %856 = fadd fast float %847, %853
  %857 = fadd fast float %848, %854
  %858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %859 = extractvalue %dx.types.CBufRet.f32 %858, 2
  %860 = fcmp fast ogt float %859, 0.000000e+00
  br i1 %860, label %861, label %927, !dx.controlflow.hints !62

; <label>:861                                     ; preds = %831
  %862 = fcmp fast oeq float %859, 2.000000e+00
  br i1 %862, label %863, label %915, !dx.controlflow.hints !63

; <label>:863                                     ; preds = %861
  %864 = fcmp fast ole float %855, 0x3F69A5C380000000
  %865 = fcmp fast ole float %856, 0x3F69A5C380000000
  %866 = fcmp fast ole float %857, 0x3F69A5C380000000
  %867 = fmul fast float %855, 0x4029D70A40000000
  %868 = fmul fast float %856, 0x4029D70A40000000
  %869 = fmul fast float %857, 0x4029D70A40000000
  %870 = call float @dx.op.unary.f32(i32 23, float %855)  ; Log(value)
  %871 = call float @dx.op.unary.f32(i32 23, float %856)  ; Log(value)
  %872 = call float @dx.op.unary.f32(i32 23, float %857)  ; Log(value)
  %873 = fmul fast float %870, 0x3FDAAAAAA0000000
  %874 = fmul fast float %871, 0x3FDAAAAAA0000000
  %875 = fmul fast float %872, 0x3FDAAAAAA0000000
  %876 = call float @dx.op.unary.f32(i32 21, float %873)  ; Exp(value)
  %877 = call float @dx.op.unary.f32(i32 21, float %874)  ; Exp(value)
  %878 = call float @dx.op.unary.f32(i32 21, float %875)  ; Exp(value)
  %879 = fmul fast float %876, 0x3FF0E147A0000000
  %880 = fmul fast float %877, 0x3FF0E147A0000000
  %881 = fmul fast float %878, 0x3FF0E147A0000000
  %882 = fadd fast float %879, 0xBFAC28F5C0000000
  %883 = fadd fast float %880, 0xBFAC28F5C0000000
  %884 = fadd fast float %881, 0xBFAC28F5C0000000
  %885 = select i1 %864, float %867, float %882
  %886 = select i1 %865, float %868, float %883
  %887 = select i1 %866, float %869, float %884
  %888 = fsub fast float 1.000000e+00, %885
  %889 = fsub fast float 1.000000e+00, %886
  %890 = fsub fast float 1.000000e+00, %887
  %891 = fcmp fast ole float %888, 0x3FA4B5DCC0000000
  %892 = fmul fast float %888, 0x3FB3D07220000000
  %893 = fsub fast float 0x3FF0E147A0000000, %885
  %894 = fmul fast float %893, 0x3FEE54EDE0000000
  %895 = call float @dx.op.unary.f32(i32 23, float %894)  ; Log(value)
  %896 = fmul fast float %895, 0x4003333340000000
  %897 = call float @dx.op.unary.f32(i32 21, float %896)  ; Exp(value)
  %898 = select i1 %891, float %892, float %897
  %899 = fcmp fast ole float %889, 0x3FA4B5DCC0000000
  %900 = fmul fast float %889, 0x3FB3D07220000000
  %901 = fsub fast float 0x3FF0E147A0000000, %886
  %902 = fmul fast float %901, 0x3FEE54EDE0000000
  %903 = call float @dx.op.unary.f32(i32 23, float %902)  ; Log(value)
  %904 = fmul fast float %903, 0x4003333340000000
  %905 = call float @dx.op.unary.f32(i32 21, float %904)  ; Exp(value)
  %906 = select i1 %899, float %900, float %905
  %907 = fcmp fast ole float %890, 0x3FA4B5DCC0000000
  %908 = fmul fast float %890, 0x3FB3D07220000000
  %909 = fsub fast float 0x3FF0E147A0000000, %887
  %910 = fmul fast float %909, 0x3FEE54EDE0000000
  %911 = call float @dx.op.unary.f32(i32 23, float %910)  ; Log(value)
  %912 = fmul fast float %911, 0x4003333340000000
  %913 = call float @dx.op.unary.f32(i32 21, float %912)  ; Exp(value)
  %914 = select i1 %907, float %908, float %913
  br label %927

; <label>:915                                     ; preds = %861
  %916 = call float @dx.op.dot3.f32(i32 55, float %855, float %856, float %857, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %917 = extractvalue %dx.types.CBufRet.f32 %858, 3
  %918 = fsub fast float %855, %916
  %919 = fsub fast float %856, %916
  %920 = fsub fast float %857, %916
  %921 = fmul fast float %917, %918
  %922 = fmul fast float %917, %919
  %923 = fmul fast float %917, %920
  %924 = fadd fast float %921, %916
  %925 = fadd fast float %922, %916
  %926 = fadd fast float %923, %916
  br label %927

; <label>:927                                     ; preds = %915, %863, %831
  %928 = phi float [ %898, %863 ], [ %924, %915 ], [ %855, %831 ]
  %929 = phi float [ %906, %863 ], [ %925, %915 ], [ %856, %831 ]
  %930 = phi float [ %914, %863 ], [ %926, %915 ], [ %857, %831 ]
  %931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %932 = extractvalue %dx.types.CBufRet.f32 %931, 0
  %933 = fcmp fast une float %932, 0.000000e+00
  br i1 %933, label %934, label %1108, !dx.controlflow.hints !64

; <label>:934                                     ; preds = %927
  %935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %936 = extractvalue %dx.types.CBufRet.f32 %935, 0
  %937 = extractvalue %dx.types.CBufRet.f32 %935, 1
  %938 = fsub fast float %41, %936
  %939 = fsub fast float %42, %937
  %940 = extractvalue %dx.types.CBufRet.f32 %935, 2
  %941 = extractvalue %dx.types.CBufRet.f32 %935, 3
  %942 = fmul fast float %938, %940
  %943 = fmul fast float %939, %941
  %944 = call float @dx.op.unary.f32(i32 6, float %932)  ; FAbs(value)
  %945 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %16, float %942, float %943, float undef, float undef, i32 0, i32 0, i32 undef, float %944)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %946 = extractvalue %dx.types.ResRet.f32 %945, 0
  %947 = extractvalue %dx.types.ResRet.f32 %945, 1
  %948 = extractvalue %dx.types.ResRet.f32 %945, 2
  %949 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %950 = extractvalue %dx.types.CBufRet.i32 %949, 3
  %951 = and i32 %950, 3
  %952 = icmp ne i32 %951, 0
  %953 = and i32 %950, 4
  %954 = icmp eq i32 %953, 0
  %955 = and i1 %952, %954
  br i1 %955, label %956, label %1000

; <label>:956                                     ; preds = %934
  %957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %958 = extractvalue %dx.types.CBufRet.f32 %957, 0
  %959 = fcmp fast oge float %947, %958
  %960 = zext i1 %959 to i32
  br i1 %959, label %961, label %1000

; <label>:961                                     ; preds = %956
  %962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %963 = extractvalue %dx.types.CBufRet.f32 %962, 3
  %964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %965 = extractvalue %dx.types.CBufRet.f32 %964, 2
  %966 = fcmp fast ogt float %965, 0.000000e+00
  br i1 %966, label %967, label %975, !dx.controlflow.hints !65

; <label>:967                                     ; preds = %961
  %968 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %16, float %947, float 0.000000e+00, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %969 = extractvalue %dx.types.ResRet.f32 %968, 0
  %970 = extractvalue %dx.types.ResRet.f32 %968, 1
  %971 = extractvalue %dx.types.ResRet.f32 %968, 2
  %972 = fcmp fast ogt float %965, 1.500000e+00
  %973 = select i1 %972, float %969, float %970
  %974 = select i1 %972, float %969, float %971
  br label %993

; <label>:975                                     ; preds = %961
  %976 = call float @dx.op.unary.f32(i32 7, float %947)  ; Saturate(value)
  %977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 238)  ; CBufferLoadLegacy(handle,regIndex)
  %978 = extractvalue %dx.types.CBufRet.f32 %977, 0
  %979 = extractvalue %dx.types.CBufRet.f32 %977, 1
  %980 = extractvalue %dx.types.CBufRet.f32 %977, 2
  %981 = extractvalue %dx.types.CBufRet.f32 %962, 0
  %982 = extractvalue %dx.types.CBufRet.f32 %962, 1
  %983 = extractvalue %dx.types.CBufRet.f32 %962, 2
  %984 = fsub fast float %978, %981
  %985 = fsub fast float %979, %982
  %986 = fsub fast float %980, %983
  %987 = fmul fast float %984, %976
  %988 = fmul fast float %985, %976
  %989 = fmul fast float %986, %976
  %990 = fadd fast float %987, %981
  %991 = fadd fast float %988, %982
  %992 = fadd fast float %989, %983
  br label %993

; <label>:993                                     ; preds = %975, %967
  %994 = phi float [ %969, %967 ], [ %990, %975 ]
  %995 = phi float [ %973, %967 ], [ %991, %975 ]
  %996 = phi float [ %974, %967 ], [ %992, %975 ]
  %997 = fmul fast float %994, %963
  %998 = fmul fast float %995, %963
  %999 = fmul fast float %996, %963
  br label %1000

; <label>:1000                                    ; preds = %993, %956, %934
  %1001 = phi float [ %997, %993 ], [ %946, %934 ], [ %946, %956 ]
  %1002 = phi float [ %998, %993 ], [ %947, %934 ], [ %946, %956 ]
  %1003 = phi float [ %999, %993 ], [ %948, %934 ], [ %946, %956 ]
  %1004 = phi i32 [ %960, %993 ], [ 0, %934 ], [ %960, %956 ]
  %1005 = icmp eq i32 %1004, 0
  br i1 %1005, label %1006, label %1060

; <label>:1006                                    ; preds = %1000
  %1007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1008 = extractvalue %dx.types.CBufRet.f32 %1007, 0
  %1009 = extractvalue %dx.types.CBufRet.f32 %1007, 1
  %1010 = extractvalue %dx.types.CBufRet.f32 %1007, 2
  %1011 = call float @dx.op.dot3.f32(i32 55, float %1001, float %1002, float %1003, float %1008, float %1009, float %1010)  ; Dot3(ax,ay,az,bx,by,bz)
  %1012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1013 = extractvalue %dx.types.CBufRet.f32 %1012, 0
  %1014 = extractvalue %dx.types.CBufRet.f32 %1012, 1
  %1015 = extractvalue %dx.types.CBufRet.f32 %1012, 2
  %1016 = call float @dx.op.dot3.f32(i32 55, float %1001, float %1002, float %1003, float %1013, float %1014, float %1015)  ; Dot3(ax,ay,az,bx,by,bz)
  %1017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1018 = extractvalue %dx.types.CBufRet.f32 %1017, 0
  %1019 = extractvalue %dx.types.CBufRet.f32 %1017, 1
  %1020 = extractvalue %dx.types.CBufRet.f32 %1017, 2
  %1021 = call float @dx.op.dot3.f32(i32 55, float %1001, float %1002, float %1003, float %1018, float %1019, float %1020)  ; Dot3(ax,ay,az,bx,by,bz)
  %1022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %1023 = extractvalue %dx.types.CBufRet.f32 %1022, 2
  %1024 = fmul fast float %1023, %1011
  %1025 = fmul fast float %1023, %1016
  %1026 = fmul fast float %1023, %1021
  %1027 = fadd fast float %1024, 9.765625e-04
  %1028 = fadd fast float %1025, 9.765625e-04
  %1029 = fadd fast float %1026, 9.765625e-04
  %1030 = call float @dx.op.unary.f32(i32 23, float %1027)  ; Log(value)
  %1031 = call float @dx.op.unary.f32(i32 23, float %1028)  ; Log(value)
  %1032 = call float @dx.op.unary.f32(i32 23, float %1029)  ; Log(value)
  %1033 = fadd fast float %1030, 1.000000e+01
  %1034 = fadd fast float %1031, 1.000000e+01
  %1035 = fadd fast float %1032, 1.000000e+01
  %1036 = fmul fast float %1033, 0x3FA99999A0000000
  %1037 = fmul fast float %1034, 0x3FA99999A0000000
  %1038 = fmul fast float %1035, 0x3FA99999A0000000
  %1039 = call float @dx.op.unary.f32(i32 7, float %1036)  ; Saturate(value)
  %1040 = call float @dx.op.unary.f32(i32 7, float %1037)  ; Saturate(value)
  %1041 = call float @dx.op.unary.f32(i32 7, float %1038)  ; Saturate(value)
  %1042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %1043 = extractvalue %dx.types.CBufRet.f32 %1042, 0
  %1044 = extractvalue %dx.types.CBufRet.f32 %1042, 1
  %1045 = extractvalue %dx.types.CBufRet.f32 %1042, 2
  %1046 = fmul fast float %1043, %1039
  %1047 = fmul fast float %1044, %1040
  %1048 = fmul fast float %1045, %1041
  %1049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1050 = extractvalue %dx.types.CBufRet.f32 %1049, 0
  %1051 = extractvalue %dx.types.CBufRet.f32 %1049, 1
  %1052 = extractvalue %dx.types.CBufRet.f32 %1049, 2
  %1053 = fadd fast float %1046, %1050
  %1054 = fadd fast float %1047, %1051
  %1055 = fadd fast float %1048, %1052
  %1056 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %16, float %1053, float %1054, float %1055, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1057 = extractvalue %dx.types.ResRet.f32 %1056, 0
  %1058 = extractvalue %dx.types.ResRet.f32 %1056, 1
  %1059 = extractvalue %dx.types.ResRet.f32 %1056, 2
  br label %1060

; <label>:1060                                    ; preds = %1006, %1000
  %1061 = phi float [ %1001, %1000 ], [ %1057, %1006 ]
  %1062 = phi float [ %1002, %1000 ], [ %1058, %1006 ]
  %1063 = phi float [ %1003, %1000 ], [ %1059, %1006 ]
  %1064 = fcmp fast ole float %1061, 0x3FA4B5DCC0000000
  %1065 = fmul fast float %1061, 0x3FB3D07220000000
  %1066 = fadd fast float %1061, 0x3FAC28F5C0000000
  %1067 = fmul fast float %1066, 0x3FEE54EDE0000000
  %1068 = call float @dx.op.unary.f32(i32 23, float %1067)  ; Log(value)
  %1069 = fmul fast float %1068, 0x4003333340000000
  %1070 = call float @dx.op.unary.f32(i32 21, float %1069)  ; Exp(value)
  %1071 = select i1 %1064, float %1065, float %1070
  %1072 = fcmp fast ole float %1062, 0x3FA4B5DCC0000000
  %1073 = fmul fast float %1062, 0x3FB3D07220000000
  %1074 = fadd fast float %1062, 0x3FAC28F5C0000000
  %1075 = fmul fast float %1074, 0x3FEE54EDE0000000
  %1076 = call float @dx.op.unary.f32(i32 23, float %1075)  ; Log(value)
  %1077 = fmul fast float %1076, 0x4003333340000000
  %1078 = call float @dx.op.unary.f32(i32 21, float %1077)  ; Exp(value)
  %1079 = select i1 %1072, float %1073, float %1078
  %1080 = fcmp fast ole float %1063, 0x3FA4B5DCC0000000
  %1081 = fmul fast float %1063, 0x3FB3D07220000000
  %1082 = fadd fast float %1063, 0x3FAC28F5C0000000
  %1083 = fmul fast float %1082, 0x3FEE54EDE0000000
  %1084 = call float @dx.op.unary.f32(i32 23, float %1083)  ; Log(value)
  %1085 = fmul fast float %1084, 0x4003333340000000
  %1086 = call float @dx.op.unary.f32(i32 21, float %1085)  ; Exp(value)
  %1087 = select i1 %1080, float %1081, float %1086
  %1088 = fcmp fast olt float %932, 0.000000e+00
  br i1 %1088, label %1089, label %1101

; <label>:1089                                    ; preds = %1060
  %1090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %1091 = extractvalue %dx.types.CBufRet.f32 %1090, 0
  %1092 = extractvalue %dx.types.CBufRet.f32 %1090, 1
  %1093 = extractvalue %dx.types.CBufRet.f32 %1090, 2
  %1094 = call float @dx.op.dot3.f32(i32 55, float %1071, float %1079, float %1087, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1095 = fsub fast float %1094, %1091
  %1096 = fmul fast float %1095, %1092
  %1097 = call float @dx.op.unary.f32(i32 7, float %1096)  ; Saturate(value)
  %1098 = fsub fast float 1.000000e+00, %1093
  %1099 = fmul fast float %1097, %1098
  %1100 = fadd fast float %1099, %1093
  br label %1101

; <label>:1101                                    ; preds = %1089, %1060
  %1102 = phi float [ %1100, %1089 ], [ %1071, %1060 ]
  %1103 = phi float [ %1100, %1089 ], [ %1079, %1060 ]
  %1104 = phi float [ %1100, %1089 ], [ %1087, %1060 ]
  %1105 = fmul fast float %1102, %928
  %1106 = fmul fast float %1103, %929
  %1107 = fmul fast float %1104, %930
  br label %1108

; <label>:1108                                    ; preds = %1101, %927
  %1109 = phi float [ %1105, %1101 ], [ %928, %927 ]
  %1110 = phi float [ %1106, %1101 ], [ %929, %927 ]
  %1111 = phi float [ %1107, %1101 ], [ %930, %927 ]
  %1112 = extractvalue %dx.types.CBufRet.f32 %931, 1
  %1113 = fcmp fast ogt float %1112, 0.000000e+00
  br i1 %1113, label %1114, label %1155, !dx.controlflow.hints !66

; <label>:1114                                    ; preds = %1108
  %1115 = extractvalue %dx.types.CBufRet.f32 %931, 2
  %1116 = bitcast float %1115 to i32
  %1117 = and i32 %1116, 255
  %1118 = uitofp i32 %1117 to float
  %1119 = lshr i32 %1116, 8
  %1120 = and i32 %1119, 255
  %1121 = uitofp i32 %1120 to float
  %1122 = lshr i32 %1116, 16
  %1123 = and i32 %1122, 255
  %1124 = uitofp i32 %1123 to float
  %1125 = fmul fast float %1124, 0x3F70101020000000
  %1126 = lshr i32 %1116, 24
  %1127 = uitofp i32 %1126 to float
  %1128 = fmul fast float %1127, 0x3F70101020000000
  %1129 = fadd fast float %1124, %1118
  %1130 = fmul fast float %1129, 0x3F70101020000000
  %1131 = fadd fast float %1121, %1127
  %1132 = fmul fast float %1131, 0x3F70101020000000
  %1133 = fdiv fast float %41, %1130
  %1134 = fdiv fast float %42, %1132
  %1135 = fsub fast float -0.000000e+00, %1133
  %1136 = fsub fast float -0.000000e+00, %1134
  %1137 = fcmp fast oge float %1133, %1135
  %1138 = fcmp fast oge float %1134, %1136
  %1139 = call float @dx.op.unary.f32(i32 6, float %1133)  ; FAbs(value)
  %1140 = call float @dx.op.unary.f32(i32 6, float %1134)  ; FAbs(value)
  %1141 = call float @dx.op.unary.f32(i32 22, float %1139)  ; Frc(value)
  %1142 = call float @dx.op.unary.f32(i32 22, float %1140)  ; Frc(value)
  %1143 = fsub fast float -0.000000e+00, %1141
  %1144 = fsub fast float -0.000000e+00, %1142
  %1145 = select i1 %1137, float %1141, float %1143
  %1146 = select i1 %1138, float %1142, float %1144
  %1147 = fmul fast float %1130, %1145
  %1148 = fmul fast float %1146, %1132
  %1149 = fcmp fast olt float %1147, %1125
  %1150 = fcmp fast olt float %1148, %1128
  %1151 = or i1 %1149, %1150
  br i1 %1151, label %1152, label %1155, !dx.controlflow.hints !67

; <label>:1152                                    ; preds = %1114
  %1153 = fsub fast float 1.000000e+00, %1112
  %1154 = fmul fast float %1153, %744
  br label %1155

; <label>:1155                                    ; preds = %1152, %1114, %1108
  %1156 = phi float [ %1154, %1152 ], [ %744, %1114 ], [ %744, %1108 ]
  %1157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %1158 = extractvalue %dx.types.CBufRet.f32 %1157, 3
  %1159 = fcmp fast ogt float %1158, 0.000000e+00
  br i1 %1159, label %1160, label %1243, !dx.controlflow.hints !68

; <label>:1160                                    ; preds = %1155
  %1161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %1162 = extractvalue %dx.types.CBufRet.f32 %1161, 2
  %1163 = extractvalue %dx.types.CBufRet.f32 %1161, 3
  %1164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1165 = extractvalue %dx.types.CBufRet.f32 %1164, 3
  %1166 = fmul fast float %1165, 1.000000e+01
  %1167 = call float @dx.op.unary.f32(i32 27, float %1166)  ; Round_ni(value)
  %1168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1169 = extractvalue %dx.types.CBufRet.f32 %1168, 0
  %1170 = extractvalue %dx.types.CBufRet.f32 %1168, 1
  %1171 = fmul fast float %1169, %41
  %1172 = fmul fast float %1170, %42
  %1173 = call float @dx.op.unary.f32(i32 27, float %1171)  ; Round_ni(value)
  %1174 = call float @dx.op.unary.f32(i32 27, float %1172)  ; Round_ni(value)
  %1175 = fmul fast float %1167, 0x4002B851E0000000
  %1176 = call float @dx.op.unary.f32(i32 22, float %1175)  ; Frc(value)
  %1177 = fadd fast float %1176, 0x3FB99999A0000000
  %1178 = fadd fast float %1177, %1173
  %1179 = fadd fast float %1177, %1174
  %1180 = fmul fast float %1178, 0x3FE1BEDF00000000
  %1181 = call float @dx.op.unary.f32(i32 22, float %1180)  ; Frc(value)
  %1182 = fmul fast float %1178, %1181
  %1183 = fadd fast float %1182, %1179
  %1184 = fmul fast float %1179, 0x3FD3BEBE20000000
  %1185 = call float @dx.op.unary.f32(i32 22, float %1184)  ; Frc(value)
  %1186 = fmul fast float %1179, %1185
  %1187 = fadd fast float %1186, %1178
  %1188 = fmul fast float %1183, %1187
  %1189 = call float @dx.op.unary.f32(i32 22, float %1188)  ; Frc(value)
  %1190 = extractvalue %dx.types.CBufRet.f32 %1168, 3
  %1191 = bitcast float %1190 to i32
  %1192 = and i32 %1191, 255
  %1193 = uitofp i32 %1192 to float
  %1194 = fmul fast float %1193, 0x3F70101020000000
  %1195 = fmul fast float %1194, %1162
  %1196 = fcmp fast olt float %1189, %1195
  br i1 %1196, label %1197, label %1204, !dx.controlflow.hints !69

; <label>:1197                                    ; preds = %1160
  %1198 = fmul fast float %1189, 0x4057091680000000
  %1199 = call float @dx.op.unary.f32(i32 22, float %1198)  ; Frc(value)
  %1200 = fmul fast float %1199, %1109
  %1201 = fmul fast float %1199, %1111
  %1202 = fsub fast float 1.000000e+00, %1199
  %1203 = fmul fast float %1202, %1110
  br label %1204

; <label>:1204                                    ; preds = %1197, %1160
  %1205 = phi float [ %1200, %1197 ], [ %1109, %1160 ]
  %1206 = phi float [ %1203, %1197 ], [ %1110, %1160 ]
  %1207 = phi float [ %1201, %1197 ], [ %1111, %1160 ]
  %1208 = fmul fast float %1189, 0x4028B0A3E0000000
  %1209 = call float @dx.op.unary.f32(i32 22, float %1208)  ; Frc(value)
  %1210 = fmul fast float %1194, %1163
  %1211 = fcmp fast olt float %1209, %1210
  br i1 %1211, label %1212, label %1231, !dx.controlflow.hints !70

; <label>:1212                                    ; preds = %1204
  %1213 = extractvalue %dx.types.CBufRet.f32 %1168, 2
  %1214 = fmul fast float %1213, %41
  %1215 = call float @dx.op.unary.f32(i32 27, float %1214)  ; Round_ni(value)
  %1216 = fmul fast float %1215, 0x3FD5555560000000
  %1217 = call float @dx.op.unary.f32(i32 22, float %1216)  ; Frc(value)
  %1218 = extractvalue %dx.types.CBufRet.f32 %1161, 0
  %1219 = extractvalue %dx.types.CBufRet.f32 %1161, 1
  %1220 = fcmp fast olt float %1217, 0x3FD51EB860000000
  br i1 %1220, label %1224, label %1221, !dx.controlflow.hints !71

; <label>:1221                                    ; preds = %1212
  %1222 = fcmp fast olt float %1217, 0x3FE51EB860000000
  br i1 %1222, label %1224, label %1223, !dx.controlflow.hints !72

; <label>:1223                                    ; preds = %1221
  br label %1224

; <label>:1224                                    ; preds = %1223, %1221, %1212
  %1225 = phi float [ %1218, %1223 ], [ %1219, %1212 ], [ %1218, %1221 ]
  %1226 = phi float [ %1218, %1223 ], [ %1218, %1212 ], [ %1219, %1221 ]
  %1227 = phi float [ %1219, %1223 ], [ %1218, %1212 ], [ %1218, %1221 ]
  %1228 = fmul fast float %1225, %1205
  %1229 = fmul fast float %1226, %1206
  %1230 = fmul fast float %1227, %1207
  br label %1231

; <label>:1231                                    ; preds = %1224, %1204
  %1232 = phi float [ %1228, %1224 ], [ %1205, %1204 ]
  %1233 = phi float [ %1229, %1224 ], [ %1206, %1204 ]
  %1234 = phi float [ %1230, %1224 ], [ %1207, %1204 ]
  %1235 = fmul fast float %1189, 0x40223EF9E0000000
  %1236 = call float @dx.op.unary.f32(i32 22, float %1235)  ; Frc(value)
  %1237 = fmul fast float %1194, %1158
  %1238 = fmul fast float %1236, %1236
  %1239 = fmul fast float %1238, %1237
  %1240 = fsub fast float 1.000000e+00, %1239
  %1241 = call float @dx.op.unary.f32(i32 7, float %1240)  ; Saturate(value)
  %1242 = fmul fast float %1241, %1156
  br label %1243

; <label>:1243                                    ; preds = %1231, %1155
  %1244 = phi float [ %1232, %1231 ], [ %1109, %1155 ]
  %1245 = phi float [ %1233, %1231 ], [ %1110, %1155 ]
  %1246 = phi float [ %1234, %1231 ], [ %1111, %1155 ]
  %1247 = phi float [ %1242, %1231 ], [ %1156, %1155 ]
  %1248 = extractvalue %dx.types.CBufRet.f32 %858, 0
  %1249 = fcmp fast ogt float %1248, 0.000000e+00
  br i1 %1249, label %1250, label %1299, !dx.controlflow.hints !73

; <label>:1250                                    ; preds = %1243
  %1251 = extractvalue %dx.types.CBufRet.f32 %858, 1
  %1252 = fmul fast float %1248, %23
  %1253 = fmul fast float %1251, %24
  %1254 = call float @dx.op.unary.f32(i32 85, float %1252)  ; DerivFineX(value)
  %1255 = call float @dx.op.unary.f32(i32 86, float %1252)  ; DerivFineY(value)
  %1256 = call float @dx.op.unary.f32(i32 85, float %1253)  ; DerivFineX(value)
  %1257 = call float @dx.op.unary.f32(i32 86, float %1253)  ; DerivFineY(value)
  %1258 = fmul fast float %1257, %1254
  %1259 = fmul fast float %1256, %1255
  %1260 = fsub fast float %1258, %1259
  %1261 = fdiv fast float 1.000000e+00, %1260
  %1262 = fmul fast float %1261, %1257
  %1263 = fmul fast float %1261, %1255
  %1264 = fmul fast float %1261, %1256
  %1265 = fmul fast float %1261, %1254
  %1266 = fmul fast float %1262, %1262
  %1267 = fmul fast float %1264, %1264
  %1268 = fadd fast float %1266, %1267
  %1269 = call float @dx.op.unary.f32(i32 24, float %1268)  ; Sqrt(value)
  %1270 = fmul fast float %1263, %1263
  %1271 = fmul fast float %1265, %1265
  %1272 = fadd fast float %1270, %1271
  %1273 = call float @dx.op.unary.f32(i32 24, float %1272)  ; Sqrt(value)
  %1274 = fmul fast float %1269, %1252
  %1275 = fmul fast float %1273, %1253
  %1276 = fsub fast float %1274, %1269
  %1277 = fsub fast float %1275, %1273
  %1278 = fsub fast float -0.000000e+00, %1274
  %1279 = fsub fast float -0.000000e+00, %1275
  %1280 = call float @dx.op.binary.f32(i32 35, float %1278, float %1276)  ; FMax(a,b)
  %1281 = call float @dx.op.binary.f32(i32 35, float %1279, float %1277)  ; FMax(a,b)
  %1282 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1280)  ; FMax(a,b)
  %1283 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1281)  ; FMax(a,b)
  %1284 = fmul fast float %1282, %1282
  %1285 = fmul fast float %1283, %1283
  %1286 = fadd fast float %1285, %1284
  %1287 = call float @dx.op.unary.f32(i32 24, float %1286)  ; Sqrt(value)
  %1288 = call float @dx.op.binary.f32(i32 35, float %1280, float %1281)  ; FMax(a,b)
  %1289 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %1288)  ; FMin(a,b)
  %1290 = fadd fast float %1287, -1.000000e+00
  %1291 = fadd fast float %1290, %1289
  %1292 = fmul fast float %1291, -5.000000e-01
  %1293 = call float @dx.op.unary.f32(i32 7, float %1292)  ; Saturate(value)
  %1294 = fmul fast float %1293, 2.000000e+00
  %1295 = fsub fast float 3.000000e+00, %1294
  %1296 = fmul fast float %1293, %1293
  %1297 = fmul fast float %1296, %1247
  %1298 = fmul fast float %1297, %1295
  br label %1299

; <label>:1299                                    ; preds = %1250, %1243
  %1300 = phi float [ %1298, %1250 ], [ %1247, %1243 ]
  %1301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1302 = extractvalue %dx.types.CBufRet.f32 %1301, 0
  %1303 = extractvalue %dx.types.CBufRet.f32 %1301, 1
  %1304 = extractvalue %dx.types.CBufRet.f32 %1301, 2
  %1305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1306 = extractvalue %dx.types.CBufRet.f32 %1305, 0
  %1307 = extractvalue %dx.types.CBufRet.f32 %1305, 1
  %1308 = extractvalue %dx.types.CBufRet.f32 %1305, 2
  %1309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1310 = extractvalue %dx.types.CBufRet.f32 %1309, 0
  %1311 = extractvalue %dx.types.CBufRet.f32 %1309, 1
  %1312 = extractvalue %dx.types.CBufRet.f32 %1309, 2
  %1313 = fmul fast float %1302, %1244
  %1314 = call float @dx.op.tertiary.f32(i32 46, float %1303, float %1245, float %1313)  ; FMad(a,b,c)
  %1315 = call float @dx.op.tertiary.f32(i32 46, float %1304, float %1246, float %1314)  ; FMad(a,b,c)
  %1316 = fmul fast float %1306, %1244
  %1317 = call float @dx.op.tertiary.f32(i32 46, float %1307, float %1245, float %1316)  ; FMad(a,b,c)
  %1318 = call float @dx.op.tertiary.f32(i32 46, float %1308, float %1246, float %1317)  ; FMad(a,b,c)
  %1319 = fmul fast float %1310, %1244
  %1320 = call float @dx.op.tertiary.f32(i32 46, float %1311, float %1245, float %1319)  ; FMad(a,b,c)
  %1321 = call float @dx.op.tertiary.f32(i32 46, float %1312, float %1246, float %1320)  ; FMad(a,b,c)
  br i1 %751, label %1322, label %1629, !dx.controlflow.hints !74

; <label>:1322                                    ; preds = %1299
  %1323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1324 = extractvalue %dx.types.CBufRet.f32 %1323, 0
  %1325 = bitcast float %1324 to i32
  %1326 = and i32 %1325, 128
  %1327 = icmp eq i32 %1326, 0
  br i1 %1327, label %1342, label %1328

; <label>:1328                                    ; preds = %1322
  %1329 = call float @dx.op.unary.f32(i32 24, float %1315)  ; Sqrt(value)
  %1330 = call float @dx.op.unary.f32(i32 24, float %1318)  ; Sqrt(value)
  %1331 = call float @dx.op.unary.f32(i32 24, float %1321)  ; Sqrt(value)
  %1332 = fmul fast float %1329, 9.687500e-01
  %1333 = fmul fast float %1330, 9.687500e-01
  %1334 = fmul fast float %1331, 9.687500e-01
  %1335 = fadd fast float %1332, 1.562500e-02
  %1336 = fadd fast float %1333, 1.562500e-02
  %1337 = fadd fast float %1334, 1.562500e-02
  %1338 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %16, float %1335, float %1336, float %1337, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1339 = extractvalue %dx.types.ResRet.f32 %1338, 0
  %1340 = extractvalue %dx.types.ResRet.f32 %1338, 1
  %1341 = extractvalue %dx.types.ResRet.f32 %1338, 2
  br label %1629

; <label>:1342                                    ; preds = %1322
  %1343 = and i32 %1325, 127
  switch i32 %1343, label %1629 [
    i32 1, label %1344
    i32 2, label %1344
    i32 0, label %1344
    i32 3, label %1374
    i32 4, label %1495
  ]

; <label>:1344                                    ; preds = %1342, %1342, %1342
  %1345 = call float @dx.op.unary.f32(i32 7, float %1315)  ; Saturate(value)
  %1346 = call float @dx.op.unary.f32(i32 7, float %1318)  ; Saturate(value)
  %1347 = call float @dx.op.unary.f32(i32 7, float %1321)  ; Saturate(value)
  %1348 = call float @dx.op.unary.f32(i32 23, float %1345)  ; Log(value)
  %1349 = call float @dx.op.unary.f32(i32 23, float %1346)  ; Log(value)
  %1350 = call float @dx.op.unary.f32(i32 23, float %1347)  ; Log(value)
  %1351 = fmul fast float %1348, 0x3FDAAAAAA0000000
  %1352 = fmul fast float %1349, 0x3FDAAAAAA0000000
  %1353 = fmul fast float %1350, 0x3FDAAAAAA0000000
  %1354 = call float @dx.op.unary.f32(i32 21, float %1351)  ; Exp(value)
  %1355 = call float @dx.op.unary.f32(i32 21, float %1352)  ; Exp(value)
  %1356 = call float @dx.op.unary.f32(i32 21, float %1353)  ; Exp(value)
  %1357 = fmul fast float %1354, 0x3FF0E147A0000000
  %1358 = fmul fast float %1355, 0x3FF0E147A0000000
  %1359 = fmul fast float %1356, 0x3FF0E147A0000000
  %1360 = fadd fast float %1357, 0xBFAC28F5C0000000
  %1361 = fadd fast float %1358, 0xBFAC28F5C0000000
  %1362 = fadd fast float %1359, 0xBFAC28F5C0000000
  %1363 = call float @dx.op.unary.f32(i32 7, float %1360)  ; Saturate(value)
  %1364 = call float @dx.op.unary.f32(i32 7, float %1361)  ; Saturate(value)
  %1365 = call float @dx.op.unary.f32(i32 7, float %1362)  ; Saturate(value)
  %1366 = extractvalue %dx.types.CBufRet.f32 %1323, 2
  %1367 = extractvalue %dx.types.CBufRet.f32 %1323, 3
  %1368 = fmul fast float %1366, %1363
  %1369 = fmul fast float %1366, %1364
  %1370 = fmul fast float %1366, %1365
  %1371 = fadd fast float %1368, %1367
  %1372 = fadd fast float %1369, %1367
  %1373 = fadd fast float %1370, %1367
  br label %1629

; <label>:1374                                    ; preds = %1342
  %1375 = fmul fast float %1315, 0x4163D57C00000000
  %1376 = fmul fast float %1318, 0x4163D57C00000000
  %1377 = fmul fast float %1321, 0x4163D57C00000000
  %1378 = fadd fast float %1375, 9.999980e+05
  %1379 = fadd fast float %1376, 9.999980e+05
  %1380 = fadd fast float %1377, 9.999980e+05
  %1381 = fmul fast float %1378, %1315
  %1382 = fmul fast float %1379, %1318
  %1383 = fmul fast float %1380, %1321
  %1384 = fadd fast float %1381, 0xC0AFE17A60000000
  %1385 = fadd fast float %1382, 0xC0AFE17A60000000
  %1386 = fadd fast float %1383, 0xC0AFE17A60000000
  %1387 = fmul fast float %1384, %1315
  %1388 = fmul fast float %1385, %1318
  %1389 = fmul fast float %1386, %1321
  %1390 = fmul fast float %1315, 0x40F753C340000000
  %1391 = fmul fast float %1318, 0x40F753C340000000
  %1392 = fmul fast float %1321, 0x40F753C340000000
  %1393 = fsub fast float 9.999990e+06, %1390
  %1394 = fsub fast float 9.999990e+06, %1391
  %1395 = fsub fast float 9.999990e+06, %1392
  %1396 = fmul fast float %1393, %1315
  %1397 = fmul fast float %1394, %1318
  %1398 = fmul fast float %1395, %1321
  %1399 = fadd fast float %1396, 0x4136D1DD80000000
  %1400 = fadd fast float %1397, 0x4136D1DD80000000
  %1401 = fadd fast float %1398, 0x4136D1DD80000000
  %1402 = fmul fast float %1399, %1315
  %1403 = fmul fast float %1400, %1318
  %1404 = fmul fast float %1401, %1321
  %1405 = fadd fast float %1402, 1.000000e+00
  %1406 = fadd fast float %1403, 1.000000e+00
  %1407 = fadd fast float %1404, 1.000000e+00
  %1408 = fdiv fast float %1387, %1405
  %1409 = fdiv fast float %1388, %1406
  %1410 = fdiv fast float %1389, %1407
  %1411 = call float @dx.op.unary.f32(i32 7, float %1408)  ; Saturate(value)
  %1412 = call float @dx.op.unary.f32(i32 7, float %1409)  ; Saturate(value)
  %1413 = call float @dx.op.unary.f32(i32 7, float %1410)  ; Saturate(value)
  %1414 = extractvalue %dx.types.CBufRet.f32 %1323, 1
  %1415 = fmul fast float %1411, 0x3FE413A920000000
  %1416 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %1412, float %1415)  ; FMad(a,b,c)
  %1417 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %1413, float %1416)  ; FMad(a,b,c)
  %1418 = fmul fast float %1411, 0x3FB1B089A0000000
  %1419 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %1412, float %1418)  ; FMad(a,b,c)
  %1420 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %1413, float %1419)  ; FMad(a,b,c)
  %1421 = fmul fast float %1411, 0x3F90CB2960000000
  %1422 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %1412, float %1421)  ; FMad(a,b,c)
  %1423 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %1413, float %1422)  ; FMad(a,b,c)
  %1424 = fmul fast float %1417, %1414
  %1425 = fmul fast float %1420, %1414
  %1426 = fmul fast float %1423, %1414
  %1427 = fmul fast float %1424, 0x3F847AE140000000
  %1428 = fmul fast float %1425, 0x3F847AE140000000
  %1429 = fmul fast float %1426, 0x3F847AE140000000
  %1430 = fmul fast float %1424, 0x40B4D2F520000000
  %1431 = fmul fast float %1425, 0x40B4D2F520000000
  %1432 = fmul fast float %1426, 0x40B4D2F520000000
  %1433 = fadd fast float %1430, 0x41869ECF20000000
  %1434 = fadd fast float %1431, 0x41869ECF20000000
  %1435 = fadd fast float %1432, 0x41869ECF20000000
  %1436 = fmul fast float %1433, %1427
  %1437 = fmul fast float %1434, %1428
  %1438 = fmul fast float %1435, %1429
  %1439 = fadd fast float %1436, 0x417BB79C60000000
  %1440 = fadd fast float %1437, 0x417BB79C60000000
  %1441 = fadd fast float %1438, 0x417BB79C60000000
  %1442 = fmul fast float %1439, %1427
  %1443 = fmul fast float %1440, %1428
  %1444 = fmul fast float %1441, %1429
  %1445 = fadd fast float %1442, 0x41218DE180000000
  %1446 = fadd fast float %1443, 0x41218DE180000000
  %1447 = fadd fast float %1444, 0x41218DE180000000
  %1448 = fmul fast float %1445, %1427
  %1449 = fmul fast float %1446, %1428
  %1450 = fmul fast float %1447, %1429
  %1451 = fadd fast float %1448, 0x4077F174E0000000
  %1452 = fadd fast float %1449, 0x4077F174E0000000
  %1453 = fadd fast float %1450, 0x4077F174E0000000
  %1454 = fmul fast float %1451, %1427
  %1455 = fmul fast float %1452, %1428
  %1456 = fmul fast float %1453, %1429
  %1457 = fadd fast float %1454, 0x3F3FF79B80000000
  %1458 = fadd fast float %1455, 0x3F3FF79B80000000
  %1459 = fadd fast float %1456, 0x3F3FF79B80000000
  %1460 = fmul fast float %1424, 0x412442D320000000
  %1461 = fmul fast float %1425, 0x412442D320000000
  %1462 = fmul fast float %1426, 0x412442D320000000
  %1463 = fadd fast float %1460, 0x419385D5C0000000
  %1464 = fadd fast float %1461, 0x419385D5C0000000
  %1465 = fadd fast float %1462, 0x419385D5C0000000
  %1466 = fmul fast float %1463, %1427
  %1467 = fmul fast float %1464, %1428
  %1468 = fmul fast float %1465, %1429
  %1469 = fadd fast float %1466, 4.182885e+06
  %1470 = fadd fast float %1467, 4.182885e+06
  %1471 = fadd fast float %1468, 4.182885e+06
  %1472 = fmul fast float %1469, %1427
  %1473 = fmul fast float %1470, %1428
  %1474 = fmul fast float %1471, %1429
  %1475 = fadd fast float %1472, 0x40C4D633C0000000
  %1476 = fadd fast float %1473, 0x40C4D633C0000000
  %1477 = fadd fast float %1474, 0x40C4D633C0000000
  %1478 = fmul fast float %1475, %1427
  %1479 = fmul fast float %1476, %1428
  %1480 = fmul fast float %1477, %1429
  %1481 = fadd fast float %1478, 1.000000e+00
  %1482 = fadd fast float %1479, 1.000000e+00
  %1483 = fadd fast float %1480, 1.000000e+00
  %1484 = fdiv fast float %1457, %1481
  %1485 = fdiv fast float %1458, %1482
  %1486 = fdiv fast float %1459, %1483
  %1487 = extractvalue %dx.types.CBufRet.f32 %1323, 2
  %1488 = extractvalue %dx.types.CBufRet.f32 %1323, 3
  %1489 = fmul fast float %1487, %1484
  %1490 = fmul fast float %1487, %1485
  %1491 = fmul fast float %1487, %1486
  %1492 = fadd fast float %1489, %1488
  %1493 = fadd fast float %1490, %1488
  %1494 = fadd fast float %1491, %1488
  br label %1629

; <label>:1495                                    ; preds = %1342
  %1496 = fmul fast float %1315, 0x4163D57C00000000
  %1497 = fmul fast float %1318, 0x4163D57C00000000
  %1498 = fmul fast float %1321, 0x4163D57C00000000
  %1499 = fadd fast float %1496, 9.999980e+05
  %1500 = fadd fast float %1497, 9.999980e+05
  %1501 = fadd fast float %1498, 9.999980e+05
  %1502 = fmul fast float %1499, %1315
  %1503 = fmul fast float %1500, %1318
  %1504 = fmul fast float %1501, %1321
  %1505 = fadd fast float %1502, 0xC0AFE17A60000000
  %1506 = fadd fast float %1503, 0xC0AFE17A60000000
  %1507 = fadd fast float %1504, 0xC0AFE17A60000000
  %1508 = fmul fast float %1505, %1315
  %1509 = fmul fast float %1506, %1318
  %1510 = fmul fast float %1507, %1321
  %1511 = fmul fast float %1315, 0x40F753C340000000
  %1512 = fmul fast float %1318, 0x40F753C340000000
  %1513 = fmul fast float %1321, 0x40F753C340000000
  %1514 = fsub fast float 9.999990e+06, %1511
  %1515 = fsub fast float 9.999990e+06, %1512
  %1516 = fsub fast float 9.999990e+06, %1513
  %1517 = fmul fast float %1514, %1315
  %1518 = fmul fast float %1515, %1318
  %1519 = fmul fast float %1516, %1321
  %1520 = fadd fast float %1517, 0x4136D1DD80000000
  %1521 = fadd fast float %1518, 0x4136D1DD80000000
  %1522 = fadd fast float %1519, 0x4136D1DD80000000
  %1523 = fmul fast float %1520, %1315
  %1524 = fmul fast float %1521, %1318
  %1525 = fmul fast float %1522, %1321
  %1526 = fadd fast float %1523, 1.000000e+00
  %1527 = fadd fast float %1524, 1.000000e+00
  %1528 = fadd fast float %1525, 1.000000e+00
  %1529 = fdiv fast float %1508, %1526
  %1530 = fdiv fast float %1509, %1527
  %1531 = fdiv fast float %1510, %1528
  %1532 = call float @dx.op.unary.f32(i32 7, float %1529)  ; Saturate(value)
  %1533 = call float @dx.op.unary.f32(i32 7, float %1530)  ; Saturate(value)
  %1534 = call float @dx.op.unary.f32(i32 7, float %1531)  ; Saturate(value)
  %1535 = extractvalue %dx.types.CBufRet.f32 %1323, 1
  %1536 = fmul fast float %1532, 0x3FEA519BC0000000
  %1537 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %1533, float %1536)  ; FMad(a,b,c)
  %1538 = fmul fast float %1532, 0x3FA0FED480000000
  %1539 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %1533, float %1538)  ; FMad(a,b,c)
  %1540 = fmul fast float %1532, 0x3F917E1C00000000
  %1541 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %1533, float %1540)  ; FMad(a,b,c)
  %1542 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %1534, float %1541)  ; FMad(a,b,c)
  %1543 = call float @dx.op.binary.f32(i32 35, float %1532, float %1533)  ; FMax(a,b)
  %1544 = call float @dx.op.binary.f32(i32 35, float %1543, float %1534)  ; FMax(a,b)
  %1545 = fadd fast float %1544, -1.000000e+00
  %1546 = fmul fast float %1545, 2.500000e-01
  %1547 = call float @dx.op.unary.f32(i32 7, float %1546)  ; Saturate(value)
  %1548 = fsub fast float 1.000000e+00, %1547
  %1549 = fmul fast float %1548, %1537
  %1550 = fmul fast float %1548, %1539
  %1551 = fmul fast float %1548, %1542
  %1552 = fmul fast float %1547, %1532
  %1553 = fmul fast float %1547, %1533
  %1554 = fmul fast float %1547, %1534
  %1555 = fadd fast float %1549, %1552
  %1556 = fadd fast float %1550, %1553
  %1557 = fadd fast float %1551, %1554
  %1558 = fmul fast float %1555, %1535
  %1559 = fmul fast float %1556, %1535
  %1560 = fmul fast float %1557, %1535
  %1561 = fmul fast float %1558, 0x3F847AE140000000
  %1562 = fmul fast float %1559, 0x3F847AE140000000
  %1563 = fmul fast float %1560, 0x3F847AE140000000
  %1564 = fmul fast float %1558, 0x40B4D2F520000000
  %1565 = fmul fast float %1559, 0x40B4D2F520000000
  %1566 = fmul fast float %1560, 0x40B4D2F520000000
  %1567 = fadd fast float %1564, 0x41869ECF20000000
  %1568 = fadd fast float %1565, 0x41869ECF20000000
  %1569 = fadd fast float %1566, 0x41869ECF20000000
  %1570 = fmul fast float %1567, %1561
  %1571 = fmul fast float %1568, %1562
  %1572 = fmul fast float %1569, %1563
  %1573 = fadd fast float %1570, 0x417BB79C60000000
  %1574 = fadd fast float %1571, 0x417BB79C60000000
  %1575 = fadd fast float %1572, 0x417BB79C60000000
  %1576 = fmul fast float %1573, %1561
  %1577 = fmul fast float %1574, %1562
  %1578 = fmul fast float %1575, %1563
  %1579 = fadd fast float %1576, 0x41218DE180000000
  %1580 = fadd fast float %1577, 0x41218DE180000000
  %1581 = fadd fast float %1578, 0x41218DE180000000
  %1582 = fmul fast float %1579, %1561
  %1583 = fmul fast float %1580, %1562
  %1584 = fmul fast float %1581, %1563
  %1585 = fadd fast float %1582, 0x4077F174E0000000
  %1586 = fadd fast float %1583, 0x4077F174E0000000
  %1587 = fadd fast float %1584, 0x4077F174E0000000
  %1588 = fmul fast float %1585, %1561
  %1589 = fmul fast float %1586, %1562
  %1590 = fmul fast float %1587, %1563
  %1591 = fadd fast float %1588, 0x3F3FF79B80000000
  %1592 = fadd fast float %1589, 0x3F3FF79B80000000
  %1593 = fadd fast float %1590, 0x3F3FF79B80000000
  %1594 = fmul fast float %1558, 0x412442D320000000
  %1595 = fmul fast float %1559, 0x412442D320000000
  %1596 = fmul fast float %1560, 0x412442D320000000
  %1597 = fadd fast float %1594, 0x419385D5C0000000
  %1598 = fadd fast float %1595, 0x419385D5C0000000
  %1599 = fadd fast float %1596, 0x419385D5C0000000
  %1600 = fmul fast float %1597, %1561
  %1601 = fmul fast float %1598, %1562
  %1602 = fmul fast float %1599, %1563
  %1603 = fadd fast float %1600, 4.182885e+06
  %1604 = fadd fast float %1601, 4.182885e+06
  %1605 = fadd fast float %1602, 4.182885e+06
  %1606 = fmul fast float %1603, %1561
  %1607 = fmul fast float %1604, %1562
  %1608 = fmul fast float %1605, %1563
  %1609 = fadd fast float %1606, 0x40C4D633C0000000
  %1610 = fadd fast float %1607, 0x40C4D633C0000000
  %1611 = fadd fast float %1608, 0x40C4D633C0000000
  %1612 = fmul fast float %1609, %1561
  %1613 = fmul fast float %1610, %1562
  %1614 = fmul fast float %1611, %1563
  %1615 = fadd fast float %1612, 1.000000e+00
  %1616 = fadd fast float %1613, 1.000000e+00
  %1617 = fadd fast float %1614, 1.000000e+00
  %1618 = fdiv fast float %1591, %1615
  %1619 = fdiv fast float %1592, %1616
  %1620 = fdiv fast float %1593, %1617
  %1621 = extractvalue %dx.types.CBufRet.f32 %1323, 2
  %1622 = extractvalue %dx.types.CBufRet.f32 %1323, 3
  %1623 = fmul fast float %1621, %1618
  %1624 = fmul fast float %1621, %1619
  %1625 = fmul fast float %1621, %1620
  %1626 = fadd fast float %1623, %1622
  %1627 = fadd fast float %1624, %1622
  %1628 = fadd fast float %1625, %1622
  br label %1629

; <label>:1629                                    ; preds = %1495, %1374, %1344, %1342, %1328, %1299
  %1630 = phi float [ %1315, %1299 ], [ %1339, %1328 ], [ %1315, %1342 ], [ %1626, %1495 ], [ %1492, %1374 ], [ %1371, %1344 ]
  %1631 = phi float [ %1318, %1299 ], [ %1340, %1328 ], [ %1318, %1342 ], [ %1627, %1495 ], [ %1493, %1374 ], [ %1372, %1344 ]
  %1632 = phi float [ %1321, %1299 ], [ %1341, %1328 ], [ %1321, %1342 ], [ %1628, %1495 ], [ %1494, %1374 ], [ %1373, %1344 ]
  %1633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 225)  ; CBufferLoadLegacy(handle,regIndex)
  %1634 = extractvalue %dx.types.CBufRet.f32 %1633, 1
  %1635 = extractvalue %dx.types.CBufRet.f32 %1633, 3
  %1636 = select i1 %226, float %1634, float %1635
  %1637 = fmul fast float %1636, %1300
  %1638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 234)  ; CBufferLoadLegacy(handle,regIndex)
  %1639 = extractvalue %dx.types.CBufRet.f32 %1638, 0
  %1640 = extractvalue %dx.types.CBufRet.f32 %1638, 2
  %1641 = call float @dx.op.unary.f32(i32 23, float %1637)  ; Log(value)
  %1642 = fmul fast float %1641, %1640
  %1643 = call float @dx.op.unary.f32(i32 21, float %1642)  ; Exp(value)
  %1644 = fmul fast float %1643, %1639
  %1645 = extractvalue %dx.types.CBufRet.f32 %1638, 1
  %1646 = extractvalue %dx.types.CBufRet.f32 %1638, 3
  %1647 = fmul fast float %1641, %1646
  %1648 = call float @dx.op.unary.f32(i32 21, float %1647)  ; Exp(value)
  %1649 = fmul fast float %1648, %1645
  %1650 = fadd fast float %1649, %1644
  %1651 = fmul fast float %1650, %1630
  %1652 = fmul fast float %1650, %1631
  %1653 = fmul fast float %1650, %1632
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1651)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1652)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1653)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1650)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

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
!dx.viewIdState = !{!29}
!dx.entryPoints = !{!30}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !20, !25}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19}
!6 = !{i32 0, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 74, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 73, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 70, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 15, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!17 = !{i32 10, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 5, i32 1, i32 2, i32 0, !7}
!18 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 6, i32 1, i32 2, i32 0, !7}
!19 = !{i32 12, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 71, i32 1, i32 4, i32 0, !7}
!20 = !{!21, !22, !23, !24}
!21 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!22 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 320, null}
!23 = !{i32 2, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 320, null}
!24 = !{i32 3, %tonemapping* undef, !"", i32 0, i32 4, i32 1, i32 64, null}
!25 = !{!26, !27, !28}
!26 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!27 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!28 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!29 = !{[26 x i32] [i32 24, i32 4, i32 15, i32 15, i32 0, i32 0, i32 7, i32 7, i32 7, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 7, i32 7]}
!30 = !{void ()* @ps_main, !"ps_main", !31, !4, !55}
!31 = !{!32, !53, null}
!32 = !{!33, !36, !38, !39, !41, !43, !45, !47, !49, !51}
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
!50 = !{i32 1}
!51 = !{i32 9, !"TEXCOORD", i8 9, i8 0, !52, i8 2, i32 1, i8 2, i32 5, i8 2, !35}
!52 = !{i32 7}
!53 = !{!54}
!54 = !{i32 0, !"SV_Target", i8 9, i8 16, !34, i8 0, i32 1, i8 4, i32 0, i8 0, !37}
!55 = !{i32 0, i64 16}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 1}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 1}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 1}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}

