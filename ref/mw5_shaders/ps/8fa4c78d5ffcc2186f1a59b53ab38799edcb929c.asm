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
; shader hash: 18afd046f4e8901959981a1ea7c250e8
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
;   [304 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S4             s5     1
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
%perObject = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
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
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %46 = extractvalue %dx.types.CBufRet.f32 %45, 0
  %47 = extractvalue %dx.types.CBufRet.f32 %45, 1
  %48 = fsub fast float %43, %46
  %49 = fsub fast float %44, %47
  %50 = extractvalue %dx.types.CBufRet.f32 %45, 2
  %51 = extractvalue %dx.types.CBufRet.f32 %45, 3
  %52 = fmul fast float %48, %50
  %53 = fmul fast float %49, %51
  %54 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %55 = extractvalue %dx.types.CBufRet.f32 %54, 0
  %56 = extractvalue %dx.types.CBufRet.f32 %54, 1
  %57 = fmul fast float %52, %55
  %58 = fmul fast float %53, %56
  %59 = fptoui float %57 to i32
  %60 = fptoui float %58 to i32
  %61 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %62 = extractvalue %dx.types.CBufRet.i32 %61, 1
  %63 = shl i32 %62, 2
  %64 = extractvalue %dx.types.CBufRet.i32 %61, 3
  %65 = add i32 %63, %64
  %66 = lshr i32 %60, 2
  %67 = extractvalue %dx.types.CBufRet.i32 %61, 2
  %68 = mul i32 %66, %67
  %69 = lshr i32 %59, 3
  %70 = add i32 %65, %69
  %71 = add i32 %70, %68
  %72 = shl i32 %71, 2
  %73 = shl i32 %60, 3
  %74 = and i32 %73, 24
  %75 = and i32 %59, 7
  %76 = or i32 %74, %75
  %77 = shl i32 1, %76
  %78 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %72, i32 undef)  ; BufferLoad(srv,index,wot)
  %79 = extractvalue %dx.types.ResRet.i32 %78, 0
  %80 = and i32 %79, %77
  %81 = icmp ne i32 %80, 0
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 228)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.f32 %82, 2
  %84 = extractvalue %dx.types.CBufRet.f32 %82, 0
  %85 = call float @dx.op.binary.f32(i32 35, float %52, float %84)  ; FMax(a,b)
  %86 = call float @dx.op.binary.f32(i32 36, float %85, float %83)  ; FMin(a,b)
  %87 = call float @dx.op.binary.f32(i32 36, float %52, float %84)  ; FMin(a,b)
  %88 = call float @dx.op.binary.f32(i32 35, float %87, float %86)  ; FMax(a,b)
  %89 = fcmp fast oeq float %52, %88
  %90 = extractvalue %dx.types.CBufRet.f32 %82, 3
  %91 = extractvalue %dx.types.CBufRet.f32 %82, 1
  %92 = call float @dx.op.binary.f32(i32 35, float %53, float %91)  ; FMax(a,b)
  %93 = call float @dx.op.binary.f32(i32 36, float %92, float %90)  ; FMin(a,b)
  %94 = call float @dx.op.binary.f32(i32 36, float %53, float %91)  ; FMin(a,b)
  %95 = call float @dx.op.binary.f32(i32 35, float %94, float %93)  ; FMax(a,b)
  %96 = fcmp fast oeq float %53, %95
  %97 = and i1 %89, %96
  %98 = select i1 %97, float 0.000000e+00, float 1.000000e+00
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 1
  %101 = fcmp fast une float %100, 0.000000e+00
  %102 = extractvalue %dx.types.CBufRet.f32 %99, 0
  %103 = select i1 %101, float %98, float %102
  %104 = fcmp fast oeq float %103, %102
  %105 = and i1 %81, %104
  br i1 %105, label %107, label %106, !dx.controlflow.hints !58

; <label>:106                                     ; preds = %0
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %107

; <label>:107                                     ; preds = %106, %0
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 3
  %110 = fcmp fast ogt float %109, 0.000000e+00
  br i1 %110, label %111, label %161, !dx.controlflow.hints !59

; <label>:111                                     ; preds = %107
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 3
  %114 = fmul fast float %113, 1.000000e+01
  %115 = call float @dx.op.unary.f32(i32 27, float %114)  ; Round_ni(value)
  %116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %117 = extractvalue %dx.types.CBufRet.f32 %116, 0
  %118 = extractvalue %dx.types.CBufRet.f32 %116, 1
  %119 = fmul fast float %117, %43
  %120 = fmul fast float %118, %44
  %121 = call float @dx.op.unary.f32(i32 27, float %119)  ; Round_ni(value)
  %122 = call float @dx.op.unary.f32(i32 27, float %120)  ; Round_ni(value)
  %123 = fmul fast float %115, 0x4002B851E0000000
  %124 = call float @dx.op.unary.f32(i32 22, float %123)  ; Frc(value)
  %125 = fadd fast float %124, 0x3FB99999A0000000
  %126 = fadd fast float %125, %121
  %127 = fadd fast float %125, %122
  %128 = fmul fast float %126, 0x3FE1BEDF00000000
  %129 = call float @dx.op.unary.f32(i32 22, float %128)  ; Frc(value)
  %130 = fmul fast float %126, %129
  %131 = fadd fast float %130, %127
  %132 = fmul fast float %127, 0x3FD3BEBE20000000
  %133 = call float @dx.op.unary.f32(i32 22, float %132)  ; Frc(value)
  %134 = fmul fast float %127, %133
  %135 = fadd fast float %134, %126
  %136 = fmul fast float %131, %135
  %137 = call float @dx.op.unary.f32(i32 22, float %136)  ; Frc(value)
  %138 = extractvalue %dx.types.CBufRet.f32 %116, 3
  %139 = bitcast float %138 to i32
  %140 = and i32 %139, 255
  %141 = uitofp i32 %140 to float
  %142 = fmul fast float %137, 0x4085373340000000
  %143 = call float @dx.op.unary.f32(i32 22, float %142)  ; Frc(value)
  %144 = fmul fast float %141, 0x3F6CE9B6A0000000
  %145 = fcmp fast olt float %143, %144
  br i1 %145, label %146, label %161, !dx.controlflow.hints !60

; <label>:146                                     ; preds = %111
  %147 = fdiv fast float %143, %144
  %148 = fmul fast float %147, 2.000000e+00
  %149 = fadd fast float %148, -1.000000e+00
  %150 = lshr i32 %139, 8
  %151 = and i32 %150, 255
  %152 = uitofp i32 %151 to float
  %153 = call float @dx.op.unary.f32(i32 83, float %37)  ; DerivCoarseX(value)
  %154 = call float @dx.op.unary.f32(i32 83, float %38)  ; DerivCoarseX(value)
  %155 = fmul fast float %149, %153
  %156 = fmul fast float %155, %152
  %157 = fmul fast float %154, %149
  %158 = fmul fast float %157, %152
  %159 = fadd fast float %156, %37
  %160 = fadd fast float %158, %38
  br label %161

; <label>:161                                     ; preds = %146, %111, %107
  %162 = phi float [ %159, %146 ], [ %37, %111 ], [ %37, %107 ]
  %163 = phi float [ %160, %146 ], [ %38, %111 ], [ %38, %107 ]
  %164 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %165 = extractvalue %dx.types.Dimensions %164, 0
  %166 = sitofp i32 %165 to float
  %167 = extractvalue %dx.types.Dimensions %164, 1
  %168 = sitofp i32 %167 to float
  %169 = fdiv fast float 5.000000e-01, %166
  %170 = fdiv fast float 5.000000e-01, %168
  %171 = fsub fast float 1.000000e+00, %169
  %172 = call float @dx.op.binary.f32(i32 35, float %162, float %169)  ; FMax(a,b)
  %173 = call float @dx.op.binary.f32(i32 36, float %172, float %171)  ; FMin(a,b)
  %174 = fsub fast float 1.000000e+00, %170
  %175 = call float @dx.op.binary.f32(i32 35, float %163, float %170)  ; FMax(a,b)
  %176 = call float @dx.op.binary.f32(i32 36, float %175, float %174)  ; FMin(a,b)
  %177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %178 = extractvalue %dx.types.CBufRet.f32 %177, 3
  %179 = bitcast float %178 to i32
  %180 = and i32 %179, 1
  %181 = icmp ne i32 %180, 0
  %182 = select i1 %181, float %173, float %162
  %183 = and i32 %179, 2
  %184 = icmp ne i32 %183, 0
  %185 = select i1 %184, float %176, float %163
  %186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = extractvalue %dx.types.CBufRet.f32 %186, 3
  %188 = bitcast float %187 to i32
  %189 = and i32 %188, 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %197, label %191, !dx.controlflow.hints !61

; <label>:191                                     ; preds = %161
  %192 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %8, %dx.types.Handle %14, float %182, float %185, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %193 = extractvalue %dx.types.ResRet.f32 %192, 0
  %194 = extractvalue %dx.types.ResRet.f32 %192, 1
  %195 = extractvalue %dx.types.ResRet.f32 %192, 2
  %196 = extractvalue %dx.types.ResRet.f32 %192, 3
  br label %205

; <label>:197                                     ; preds = %161
  %198 = call float @dx.op.unary.f32(i32 22, float %182)  ; Frc(value)
  %199 = call float @dx.op.unary.f32(i32 22, float %185)  ; Frc(value)
  %200 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %8, %dx.types.Handle %18, float %198, float %199, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %201 = extractvalue %dx.types.ResRet.f32 %200, 0
  %202 = extractvalue %dx.types.ResRet.f32 %200, 1
  %203 = extractvalue %dx.types.ResRet.f32 %200, 2
  %204 = extractvalue %dx.types.ResRet.f32 %200, 3
  br label %205

; <label>:205                                     ; preds = %197, %191
  %206 = phi float [ %193, %191 ], [ %201, %197 ]
  %207 = phi float [ %194, %191 ], [ %202, %197 ]
  %208 = phi float [ %195, %191 ], [ %203, %197 ]
  %209 = phi float [ %196, %191 ], [ %204, %197 ]
  %210 = and i32 %188, 8
  %211 = icmp ne i32 %210, 0
  %212 = select i1 %211, float 1.000000e+00, float %206
  %213 = select i1 %211, float 1.000000e+00, float %207
  %214 = select i1 %211, float 1.000000e+00, float %208
  %215 = select i1 %211, float %206, float %209
  %216 = fmul fast float %212, %39
  %217 = fmul fast float %213, %40
  %218 = fmul fast float %214, %41
  %219 = fmul fast float %215, %42
  %220 = fcmp fast oeq float %103, 0.000000e+00
  %221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.f32 %221, 3
  %223 = fcmp fast une float %222, 0.000000e+00
  %224 = and i1 %220, %223
  br i1 %224, label %225, label %241

; <label>:225                                     ; preds = %205
  %226 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %17, float %52, float %53, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %227 = extractvalue %dx.types.ResRet.f32 %226, 0
  %228 = fsub fast float 1.000000e+00, %227
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.f32 %229, 0
  %231 = extractvalue %dx.types.CBufRet.f32 %229, 1
  %232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 222)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.f32 %232, 3
  %234 = fdiv fast float %228, %233
  %235 = fsub fast float %234, %230
  %236 = fmul fast float %235, %231
  %237 = call float @dx.op.unary.f32(i32 7, float %236)  ; Saturate(value)
  %238 = fsub fast float 1.000000e+00, %237
  %239 = fmul fast float %238, %238
  %240 = fmul fast float %239, %219
  br label %241

; <label>:241                                     ; preds = %225, %205
  %242 = phi float [ %240, %225 ], [ %219, %205 ]
  %243 = lshr i32 %188, 4
  %244 = lshr i32 %188, 9
  %245 = and i32 %244, 1
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %341, label %247

; <label>:247                                     ; preds = %241
  %248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %249 = extractvalue %dx.types.CBufRet.f32 %248, 3
  %250 = bitcast float %249 to i32
  %251 = and i32 %250, 65535
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = lshr i32 %250, 16
  %254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %253)  ; LegacyF16ToF32(value)
  %255 = extractvalue %dx.types.CBufRet.f32 %248, 2
  %256 = bitcast float %255 to i32
  %257 = and i32 %256, 65535
  %258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %257)  ; LegacyF16ToF32(value)
  %259 = lshr i32 %256, 16
  %260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %259)  ; LegacyF16ToF32(value)
  %261 = and i32 %243, 1
  %262 = icmp ne i32 %261, 0
  %263 = fcmp fast ogt float %252, 0.000000e+00
  %264 = fcmp fast ogt float %254, 0.000000e+00
  %265 = and i1 %263, %264
  %266 = fcmp fast ogt float %258, 0.000000e+00
  br i1 %265, label %267, label %327

; <label>:267                                     ; preds = %247
  br i1 %266, label %268, label %276

; <label>:268                                     ; preds = %267
  %269 = fmul fast float %254, %36
  %270 = fmul fast float %252, %35
  %271 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %15, float %270, float %269, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %272 = extractvalue %dx.types.ResRet.f32 %271, 0
  %273 = fsub fast float 1.000000e+00, %272
  %274 = select i1 %262, float %273, float %272
  %275 = fmul fast float %274, %258
  br label %276

; <label>:276                                     ; preds = %268, %267
  %277 = phi float [ %275, %268 ], [ 0.000000e+00, %267 ]
  %278 = fadd fast float %277, %260
  %279 = call float @dx.op.unary.f32(i32 7, float %278)  ; Saturate(value)
  br i1 %266, label %280, label %290

; <label>:280                                     ; preds = %276
  %281 = fmul fast float %254, %36
  %282 = fsub fast float 1.000000e+00, %35
  %283 = fmul fast float %252, %282
  %284 = fsub fast float 1.000000e+00, %283
  %285 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %15, float %284, float %281, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %286 = extractvalue %dx.types.ResRet.f32 %285, 1
  %287 = fsub fast float 1.000000e+00, %286
  %288 = select i1 %262, float %287, float %286
  %289 = fmul fast float %288, %258
  br label %290

; <label>:290                                     ; preds = %280, %276
  %291 = phi float [ %289, %280 ], [ 0.000000e+00, %276 ]
  %292 = fadd fast float %291, %260
  %293 = call float @dx.op.unary.f32(i32 7, float %292)  ; Saturate(value)
  %294 = fmul fast float %293, %279
  br i1 %266, label %295, label %307

; <label>:295                                     ; preds = %290
  %296 = fsub fast float 1.000000e+00, %36
  %297 = fmul fast float %254, %296
  %298 = fsub fast float 1.000000e+00, %297
  %299 = fsub fast float 1.000000e+00, %35
  %300 = fmul fast float %252, %299
  %301 = fsub fast float 1.000000e+00, %300
  %302 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %15, float %301, float %298, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %303 = extractvalue %dx.types.ResRet.f32 %302, 2
  %304 = fsub fast float 1.000000e+00, %303
  %305 = select i1 %262, float %304, float %303
  %306 = fmul fast float %305, %258
  br label %307

; <label>:307                                     ; preds = %295, %290
  %308 = phi float [ %306, %295 ], [ 0.000000e+00, %290 ]
  %309 = fadd fast float %308, %260
  %310 = call float @dx.op.unary.f32(i32 7, float %309)  ; Saturate(value)
  %311 = fmul fast float %294, %310
  br i1 %266, label %312, label %322

; <label>:312                                     ; preds = %307
  %313 = fsub fast float 1.000000e+00, %36
  %314 = fmul fast float %254, %313
  %315 = fsub fast float 1.000000e+00, %314
  %316 = fmul fast float %252, %35
  %317 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %15, float %316, float %315, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %318 = extractvalue %dx.types.ResRet.f32 %317, 3
  %319 = fsub fast float 1.000000e+00, %318
  %320 = select i1 %262, float %319, float %318
  %321 = fmul fast float %320, %258
  br label %322

; <label>:322                                     ; preds = %312, %307
  %323 = phi float [ %321, %312 ], [ 0.000000e+00, %307 ]
  %324 = fadd fast float %323, %260
  %325 = call float @dx.op.unary.f32(i32 7, float %324)  ; Saturate(value)
  %326 = fmul fast float %311, %325
  br label %338

; <label>:327                                     ; preds = %247
  br i1 %266, label %328, label %334

; <label>:328                                     ; preds = %327
  %329 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %15, float %35, float %36, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %330 = extractvalue %dx.types.ResRet.f32 %329, 0
  %331 = fsub fast float 1.000000e+00, %330
  %332 = select i1 %262, float %331, float %330
  %333 = fmul fast float %332, %258
  br label %334

; <label>:334                                     ; preds = %328, %327
  %335 = phi float [ %333, %328 ], [ 0.000000e+00, %327 ]
  %336 = fadd fast float %335, %260
  %337 = call float @dx.op.unary.f32(i32 7, float %336)  ; Saturate(value)
  br label %338

; <label>:338                                     ; preds = %334, %322
  %339 = phi float [ %326, %322 ], [ %337, %334 ]
  %340 = fmul fast float %339, %242
  br label %341

; <label>:341                                     ; preds = %338, %241
  %342 = phi float [ %340, %338 ], [ %242, %241 ]
  %343 = and i32 %244, 2
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %439, label %345

; <label>:345                                     ; preds = %341
  %346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %347 = extractvalue %dx.types.CBufRet.f32 %346, 3
  %348 = bitcast float %347 to i32
  %349 = and i32 %348, 65535
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = lshr i32 %348, 16
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = extractvalue %dx.types.CBufRet.f32 %346, 2
  %354 = bitcast float %353 to i32
  %355 = and i32 %354, 65535
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = lshr i32 %354, 16
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = and i32 %243, 2
  %360 = icmp ne i32 %359, 0
  %361 = fcmp fast ogt float %350, 0.000000e+00
  %362 = fcmp fast ogt float %352, 0.000000e+00
  %363 = and i1 %361, %362
  %364 = fcmp fast ogt float %356, 0.000000e+00
  br i1 %363, label %365, label %425

; <label>:365                                     ; preds = %345
  br i1 %364, label %366, label %374

; <label>:366                                     ; preds = %365
  %367 = fmul fast float %352, %34
  %368 = fmul fast float %350, %33
  %369 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %15, float %368, float %367, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %370 = extractvalue %dx.types.ResRet.f32 %369, 0
  %371 = fsub fast float 1.000000e+00, %370
  %372 = select i1 %360, float %371, float %370
  %373 = fmul fast float %372, %356
  br label %374

; <label>:374                                     ; preds = %366, %365
  %375 = phi float [ %373, %366 ], [ 0.000000e+00, %365 ]
  %376 = fadd fast float %375, %358
  %377 = call float @dx.op.unary.f32(i32 7, float %376)  ; Saturate(value)
  br i1 %364, label %378, label %388

; <label>:378                                     ; preds = %374
  %379 = fmul fast float %352, %34
  %380 = fsub fast float 1.000000e+00, %33
  %381 = fmul fast float %350, %380
  %382 = fsub fast float 1.000000e+00, %381
  %383 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %15, float %382, float %379, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %384 = extractvalue %dx.types.ResRet.f32 %383, 1
  %385 = fsub fast float 1.000000e+00, %384
  %386 = select i1 %360, float %385, float %384
  %387 = fmul fast float %386, %356
  br label %388

; <label>:388                                     ; preds = %378, %374
  %389 = phi float [ %387, %378 ], [ 0.000000e+00, %374 ]
  %390 = fadd fast float %389, %358
  %391 = call float @dx.op.unary.f32(i32 7, float %390)  ; Saturate(value)
  %392 = fmul fast float %391, %377
  br i1 %364, label %393, label %405

; <label>:393                                     ; preds = %388
  %394 = fsub fast float 1.000000e+00, %34
  %395 = fmul fast float %352, %394
  %396 = fsub fast float 1.000000e+00, %395
  %397 = fsub fast float 1.000000e+00, %33
  %398 = fmul fast float %350, %397
  %399 = fsub fast float 1.000000e+00, %398
  %400 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %15, float %399, float %396, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %401 = extractvalue %dx.types.ResRet.f32 %400, 2
  %402 = fsub fast float 1.000000e+00, %401
  %403 = select i1 %360, float %402, float %401
  %404 = fmul fast float %403, %356
  br label %405

; <label>:405                                     ; preds = %393, %388
  %406 = phi float [ %404, %393 ], [ 0.000000e+00, %388 ]
  %407 = fadd fast float %406, %358
  %408 = call float @dx.op.unary.f32(i32 7, float %407)  ; Saturate(value)
  %409 = fmul fast float %392, %408
  br i1 %364, label %410, label %420

; <label>:410                                     ; preds = %405
  %411 = fsub fast float 1.000000e+00, %34
  %412 = fmul fast float %352, %411
  %413 = fsub fast float 1.000000e+00, %412
  %414 = fmul fast float %350, %33
  %415 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %15, float %414, float %413, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %416 = extractvalue %dx.types.ResRet.f32 %415, 3
  %417 = fsub fast float 1.000000e+00, %416
  %418 = select i1 %360, float %417, float %416
  %419 = fmul fast float %418, %356
  br label %420

; <label>:420                                     ; preds = %410, %405
  %421 = phi float [ %419, %410 ], [ 0.000000e+00, %405 ]
  %422 = fadd fast float %421, %358
  %423 = call float @dx.op.unary.f32(i32 7, float %422)  ; Saturate(value)
  %424 = fmul fast float %409, %423
  br label %436

; <label>:425                                     ; preds = %345
  br i1 %364, label %426, label %432

; <label>:426                                     ; preds = %425
  %427 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %15, float %33, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %428 = extractvalue %dx.types.ResRet.f32 %427, 0
  %429 = fsub fast float 1.000000e+00, %428
  %430 = select i1 %360, float %429, float %428
  %431 = fmul fast float %430, %356
  br label %432

; <label>:432                                     ; preds = %426, %425
  %433 = phi float [ %431, %426 ], [ 0.000000e+00, %425 ]
  %434 = fadd fast float %433, %358
  %435 = call float @dx.op.unary.f32(i32 7, float %434)  ; Saturate(value)
  br label %436

; <label>:436                                     ; preds = %432, %420
  %437 = phi float [ %424, %420 ], [ %435, %432 ]
  %438 = fmul fast float %437, %342
  br label %439

; <label>:439                                     ; preds = %436, %341
  %440 = phi float [ %438, %436 ], [ %342, %341 ]
  %441 = and i32 %244, 4
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %537, label %443

; <label>:443                                     ; preds = %439
  %444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %445 = extractvalue %dx.types.CBufRet.f32 %444, 3
  %446 = bitcast float %445 to i32
  %447 = and i32 %446, 65535
  %448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %447)  ; LegacyF16ToF32(value)
  %449 = lshr i32 %446, 16
  %450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %449)  ; LegacyF16ToF32(value)
  %451 = extractvalue %dx.types.CBufRet.f32 %444, 2
  %452 = bitcast float %451 to i32
  %453 = and i32 %452, 65535
  %454 = call float @dx.op.legacyF16ToF32(i32 131, i32 %453)  ; LegacyF16ToF32(value)
  %455 = lshr i32 %452, 16
  %456 = call float @dx.op.legacyF16ToF32(i32 131, i32 %455)  ; LegacyF16ToF32(value)
  %457 = and i32 %243, 4
  %458 = icmp ne i32 %457, 0
  %459 = fcmp fast ogt float %448, 0.000000e+00
  %460 = fcmp fast ogt float %450, 0.000000e+00
  %461 = and i1 %459, %460
  %462 = fcmp fast ogt float %454, 0.000000e+00
  br i1 %461, label %463, label %523

; <label>:463                                     ; preds = %443
  br i1 %462, label %464, label %472

; <label>:464                                     ; preds = %463
  %465 = fmul fast float %450, %32
  %466 = fmul fast float %448, %31
  %467 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %15, float %466, float %465, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %468 = extractvalue %dx.types.ResRet.f32 %467, 0
  %469 = fsub fast float 1.000000e+00, %468
  %470 = select i1 %458, float %469, float %468
  %471 = fmul fast float %470, %454
  br label %472

; <label>:472                                     ; preds = %464, %463
  %473 = phi float [ %471, %464 ], [ 0.000000e+00, %463 ]
  %474 = fadd fast float %473, %456
  %475 = call float @dx.op.unary.f32(i32 7, float %474)  ; Saturate(value)
  br i1 %462, label %476, label %486

; <label>:476                                     ; preds = %472
  %477 = fmul fast float %450, %32
  %478 = fsub fast float 1.000000e+00, %31
  %479 = fmul fast float %448, %478
  %480 = fsub fast float 1.000000e+00, %479
  %481 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %15, float %480, float %477, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %482 = extractvalue %dx.types.ResRet.f32 %481, 1
  %483 = fsub fast float 1.000000e+00, %482
  %484 = select i1 %458, float %483, float %482
  %485 = fmul fast float %484, %454
  br label %486

; <label>:486                                     ; preds = %476, %472
  %487 = phi float [ %485, %476 ], [ 0.000000e+00, %472 ]
  %488 = fadd fast float %487, %456
  %489 = call float @dx.op.unary.f32(i32 7, float %488)  ; Saturate(value)
  %490 = fmul fast float %489, %475
  br i1 %462, label %491, label %503

; <label>:491                                     ; preds = %486
  %492 = fsub fast float 1.000000e+00, %32
  %493 = fmul fast float %450, %492
  %494 = fsub fast float 1.000000e+00, %493
  %495 = fsub fast float 1.000000e+00, %31
  %496 = fmul fast float %448, %495
  %497 = fsub fast float 1.000000e+00, %496
  %498 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %15, float %497, float %494, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %499 = extractvalue %dx.types.ResRet.f32 %498, 2
  %500 = fsub fast float 1.000000e+00, %499
  %501 = select i1 %458, float %500, float %499
  %502 = fmul fast float %501, %454
  br label %503

; <label>:503                                     ; preds = %491, %486
  %504 = phi float [ %502, %491 ], [ 0.000000e+00, %486 ]
  %505 = fadd fast float %504, %456
  %506 = call float @dx.op.unary.f32(i32 7, float %505)  ; Saturate(value)
  %507 = fmul fast float %490, %506
  br i1 %462, label %508, label %518

; <label>:508                                     ; preds = %503
  %509 = fsub fast float 1.000000e+00, %32
  %510 = fmul fast float %450, %509
  %511 = fsub fast float 1.000000e+00, %510
  %512 = fmul fast float %448, %31
  %513 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %15, float %512, float %511, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %514 = extractvalue %dx.types.ResRet.f32 %513, 3
  %515 = fsub fast float 1.000000e+00, %514
  %516 = select i1 %458, float %515, float %514
  %517 = fmul fast float %516, %454
  br label %518

; <label>:518                                     ; preds = %508, %503
  %519 = phi float [ %517, %508 ], [ 0.000000e+00, %503 ]
  %520 = fadd fast float %519, %456
  %521 = call float @dx.op.unary.f32(i32 7, float %520)  ; Saturate(value)
  %522 = fmul fast float %507, %521
  br label %534

; <label>:523                                     ; preds = %443
  br i1 %462, label %524, label %530

; <label>:524                                     ; preds = %523
  %525 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %15, float %31, float %32, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %526 = extractvalue %dx.types.ResRet.f32 %525, 0
  %527 = fsub fast float 1.000000e+00, %526
  %528 = select i1 %458, float %527, float %526
  %529 = fmul fast float %528, %454
  br label %530

; <label>:530                                     ; preds = %524, %523
  %531 = phi float [ %529, %524 ], [ 0.000000e+00, %523 ]
  %532 = fadd fast float %531, %456
  %533 = call float @dx.op.unary.f32(i32 7, float %532)  ; Saturate(value)
  br label %534

; <label>:534                                     ; preds = %530, %518
  %535 = phi float [ %522, %518 ], [ %533, %530 ]
  %536 = fmul fast float %535, %440
  br label %537

; <label>:537                                     ; preds = %534, %439
  %538 = phi float [ %536, %534 ], [ %440, %439 ]
  %539 = and i32 %244, 8
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %635, label %541

; <label>:541                                     ; preds = %537
  %542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %543 = extractvalue %dx.types.CBufRet.f32 %542, 3
  %544 = bitcast float %543 to i32
  %545 = and i32 %544, 65535
  %546 = call float @dx.op.legacyF16ToF32(i32 131, i32 %545)  ; LegacyF16ToF32(value)
  %547 = lshr i32 %544, 16
  %548 = call float @dx.op.legacyF16ToF32(i32 131, i32 %547)  ; LegacyF16ToF32(value)
  %549 = extractvalue %dx.types.CBufRet.f32 %542, 2
  %550 = bitcast float %549 to i32
  %551 = and i32 %550, 65535
  %552 = call float @dx.op.legacyF16ToF32(i32 131, i32 %551)  ; LegacyF16ToF32(value)
  %553 = lshr i32 %550, 16
  %554 = call float @dx.op.legacyF16ToF32(i32 131, i32 %553)  ; LegacyF16ToF32(value)
  %555 = and i32 %243, 8
  %556 = icmp ne i32 %555, 0
  %557 = fcmp fast ogt float %546, 0.000000e+00
  %558 = fcmp fast ogt float %548, 0.000000e+00
  %559 = and i1 %557, %558
  %560 = fcmp fast ogt float %552, 0.000000e+00
  br i1 %559, label %561, label %621

; <label>:561                                     ; preds = %541
  br i1 %560, label %562, label %570

; <label>:562                                     ; preds = %561
  %563 = fmul fast float %548, %30
  %564 = fmul fast float %546, %29
  %565 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %15, float %564, float %563, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %566 = extractvalue %dx.types.ResRet.f32 %565, 0
  %567 = fsub fast float 1.000000e+00, %566
  %568 = select i1 %556, float %567, float %566
  %569 = fmul fast float %568, %552
  br label %570

; <label>:570                                     ; preds = %562, %561
  %571 = phi float [ %569, %562 ], [ 0.000000e+00, %561 ]
  %572 = fadd fast float %571, %554
  %573 = call float @dx.op.unary.f32(i32 7, float %572)  ; Saturate(value)
  br i1 %560, label %574, label %584

; <label>:574                                     ; preds = %570
  %575 = fmul fast float %548, %30
  %576 = fsub fast float 1.000000e+00, %29
  %577 = fmul fast float %546, %576
  %578 = fsub fast float 1.000000e+00, %577
  %579 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %15, float %578, float %575, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %580 = extractvalue %dx.types.ResRet.f32 %579, 1
  %581 = fsub fast float 1.000000e+00, %580
  %582 = select i1 %556, float %581, float %580
  %583 = fmul fast float %582, %552
  br label %584

; <label>:584                                     ; preds = %574, %570
  %585 = phi float [ %583, %574 ], [ 0.000000e+00, %570 ]
  %586 = fadd fast float %585, %554
  %587 = call float @dx.op.unary.f32(i32 7, float %586)  ; Saturate(value)
  %588 = fmul fast float %587, %573
  br i1 %560, label %589, label %601

; <label>:589                                     ; preds = %584
  %590 = fsub fast float 1.000000e+00, %30
  %591 = fmul fast float %548, %590
  %592 = fsub fast float 1.000000e+00, %591
  %593 = fsub fast float 1.000000e+00, %29
  %594 = fmul fast float %546, %593
  %595 = fsub fast float 1.000000e+00, %594
  %596 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %15, float %595, float %592, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %597 = extractvalue %dx.types.ResRet.f32 %596, 2
  %598 = fsub fast float 1.000000e+00, %597
  %599 = select i1 %556, float %598, float %597
  %600 = fmul fast float %599, %552
  br label %601

; <label>:601                                     ; preds = %589, %584
  %602 = phi float [ %600, %589 ], [ 0.000000e+00, %584 ]
  %603 = fadd fast float %602, %554
  %604 = call float @dx.op.unary.f32(i32 7, float %603)  ; Saturate(value)
  %605 = fmul fast float %588, %604
  br i1 %560, label %606, label %616

; <label>:606                                     ; preds = %601
  %607 = fsub fast float 1.000000e+00, %30
  %608 = fmul fast float %548, %607
  %609 = fsub fast float 1.000000e+00, %608
  %610 = fmul fast float %546, %29
  %611 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %15, float %610, float %609, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %612 = extractvalue %dx.types.ResRet.f32 %611, 3
  %613 = fsub fast float 1.000000e+00, %612
  %614 = select i1 %556, float %613, float %612
  %615 = fmul fast float %614, %552
  br label %616

; <label>:616                                     ; preds = %606, %601
  %617 = phi float [ %615, %606 ], [ 0.000000e+00, %601 ]
  %618 = fadd fast float %617, %554
  %619 = call float @dx.op.unary.f32(i32 7, float %618)  ; Saturate(value)
  %620 = fmul fast float %605, %619
  br label %632

; <label>:621                                     ; preds = %541
  br i1 %560, label %622, label %628

; <label>:622                                     ; preds = %621
  %623 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %15, float %29, float %30, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %624 = extractvalue %dx.types.ResRet.f32 %623, 0
  %625 = fsub fast float 1.000000e+00, %624
  %626 = select i1 %556, float %625, float %624
  %627 = fmul fast float %626, %552
  br label %628

; <label>:628                                     ; preds = %622, %621
  %629 = phi float [ %627, %622 ], [ 0.000000e+00, %621 ]
  %630 = fadd fast float %629, %554
  %631 = call float @dx.op.unary.f32(i32 7, float %630)  ; Saturate(value)
  br label %632

; <label>:632                                     ; preds = %628, %616
  %633 = phi float [ %620, %616 ], [ %631, %628 ]
  %634 = fmul fast float %633, %538
  br label %635

; <label>:635                                     ; preds = %632, %537
  %636 = phi float [ %634, %632 ], [ %538, %537 ]
  %637 = and i32 %244, 16
  %638 = icmp eq i32 %637, 0
  br i1 %638, label %733, label %639

; <label>:639                                     ; preds = %635
  %640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %641 = extractvalue %dx.types.CBufRet.f32 %640, 3
  %642 = bitcast float %641 to i32
  %643 = and i32 %642, 65535
  %644 = call float @dx.op.legacyF16ToF32(i32 131, i32 %643)  ; LegacyF16ToF32(value)
  %645 = lshr i32 %642, 16
  %646 = call float @dx.op.legacyF16ToF32(i32 131, i32 %645)  ; LegacyF16ToF32(value)
  %647 = extractvalue %dx.types.CBufRet.f32 %640, 2
  %648 = bitcast float %647 to i32
  %649 = and i32 %648, 65535
  %650 = call float @dx.op.legacyF16ToF32(i32 131, i32 %649)  ; LegacyF16ToF32(value)
  %651 = lshr i32 %648, 16
  %652 = call float @dx.op.legacyF16ToF32(i32 131, i32 %651)  ; LegacyF16ToF32(value)
  %653 = and i32 %243, 16
  %654 = icmp ne i32 %653, 0
  %655 = fcmp fast ogt float %644, 0.000000e+00
  %656 = fcmp fast ogt float %646, 0.000000e+00
  %657 = and i1 %655, %656
  %658 = fcmp fast ogt float %650, 0.000000e+00
  br i1 %657, label %659, label %719

; <label>:659                                     ; preds = %639
  br i1 %658, label %660, label %668

; <label>:660                                     ; preds = %659
  %661 = fmul fast float %646, %28
  %662 = fmul fast float %644, %27
  %663 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %15, float %662, float %661, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %664 = extractvalue %dx.types.ResRet.f32 %663, 0
  %665 = fsub fast float 1.000000e+00, %664
  %666 = select i1 %654, float %665, float %664
  %667 = fmul fast float %666, %650
  br label %668

; <label>:668                                     ; preds = %660, %659
  %669 = phi float [ %667, %660 ], [ 0.000000e+00, %659 ]
  %670 = fadd fast float %669, %652
  %671 = call float @dx.op.unary.f32(i32 7, float %670)  ; Saturate(value)
  br i1 %658, label %672, label %682

; <label>:672                                     ; preds = %668
  %673 = fmul fast float %646, %28
  %674 = fsub fast float 1.000000e+00, %27
  %675 = fmul fast float %644, %674
  %676 = fsub fast float 1.000000e+00, %675
  %677 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %15, float %676, float %673, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %678 = extractvalue %dx.types.ResRet.f32 %677, 1
  %679 = fsub fast float 1.000000e+00, %678
  %680 = select i1 %654, float %679, float %678
  %681 = fmul fast float %680, %650
  br label %682

; <label>:682                                     ; preds = %672, %668
  %683 = phi float [ %681, %672 ], [ 0.000000e+00, %668 ]
  %684 = fadd fast float %683, %652
  %685 = call float @dx.op.unary.f32(i32 7, float %684)  ; Saturate(value)
  %686 = fmul fast float %685, %671
  br i1 %658, label %687, label %699

; <label>:687                                     ; preds = %682
  %688 = fsub fast float 1.000000e+00, %28
  %689 = fmul fast float %646, %688
  %690 = fsub fast float 1.000000e+00, %689
  %691 = fsub fast float 1.000000e+00, %27
  %692 = fmul fast float %644, %691
  %693 = fsub fast float 1.000000e+00, %692
  %694 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %15, float %693, float %690, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %695 = extractvalue %dx.types.ResRet.f32 %694, 2
  %696 = fsub fast float 1.000000e+00, %695
  %697 = select i1 %654, float %696, float %695
  %698 = fmul fast float %697, %650
  br label %699

; <label>:699                                     ; preds = %687, %682
  %700 = phi float [ %698, %687 ], [ 0.000000e+00, %682 ]
  %701 = fadd fast float %700, %652
  %702 = call float @dx.op.unary.f32(i32 7, float %701)  ; Saturate(value)
  %703 = fmul fast float %686, %702
  br i1 %658, label %704, label %714

; <label>:704                                     ; preds = %699
  %705 = fsub fast float 1.000000e+00, %28
  %706 = fmul fast float %646, %705
  %707 = fsub fast float 1.000000e+00, %706
  %708 = fmul fast float %644, %27
  %709 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %15, float %708, float %707, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %710 = extractvalue %dx.types.ResRet.f32 %709, 3
  %711 = fsub fast float 1.000000e+00, %710
  %712 = select i1 %654, float %711, float %710
  %713 = fmul fast float %712, %650
  br label %714

; <label>:714                                     ; preds = %704, %699
  %715 = phi float [ %713, %704 ], [ 0.000000e+00, %699 ]
  %716 = fadd fast float %715, %652
  %717 = call float @dx.op.unary.f32(i32 7, float %716)  ; Saturate(value)
  %718 = fmul fast float %703, %717
  br label %730

; <label>:719                                     ; preds = %639
  br i1 %658, label %720, label %726

; <label>:720                                     ; preds = %719
  %721 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %15, float %27, float %28, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %722 = extractvalue %dx.types.ResRet.f32 %721, 0
  %723 = fsub fast float 1.000000e+00, %722
  %724 = select i1 %654, float %723, float %722
  %725 = fmul fast float %724, %650
  br label %726

; <label>:726                                     ; preds = %720, %719
  %727 = phi float [ %725, %720 ], [ 0.000000e+00, %719 ]
  %728 = fadd fast float %727, %652
  %729 = call float @dx.op.unary.f32(i32 7, float %728)  ; Saturate(value)
  br label %730

; <label>:730                                     ; preds = %726, %714
  %731 = phi float [ %718, %714 ], [ %729, %726 ]
  %732 = fmul fast float %731, %636
  br label %733

; <label>:733                                     ; preds = %730, %635
  %734 = phi float [ %732, %730 ], [ %636, %635 ]
  %735 = call float @dx.op.binary.f32(i32 35, float %734, float 0.000000e+00)  ; FMax(a,b)
  %736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %737 = extractvalue %dx.types.CBufRet.f32 %736, 3
  %738 = bitcast float %737 to i32
  %739 = and i32 %738, 1
  %740 = icmp eq i32 %739, 0
  %741 = and i32 %738, 4
  %742 = icmp eq i32 %741, 0
  br i1 %740, label %816, label %743, !dx.controlflow.hints !62

; <label>:743                                     ; preds = %733
  %744 = and i32 %738, 2
  %745 = icmp eq i32 %744, 0
  %746 = extractvalue %dx.types.CBufRet.f32 %736, 0
  %747 = extractvalue %dx.types.CBufRet.f32 %736, 1
  %748 = extractvalue %dx.types.CBufRet.f32 %736, 2
  %749 = fmul fast float %746, %216
  %750 = fmul fast float %747, %217
  %751 = fmul fast float %748, %218
  %752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %753 = extractvalue %dx.types.CBufRet.f32 %752, 0
  %754 = fmul fast float %753, %749
  %755 = fmul fast float %753, %750
  %756 = fmul fast float %753, %751
  br i1 %745, label %816, label %757, !dx.controlflow.hints !63

; <label>:757                                     ; preds = %743
  %758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %759 = extractvalue %dx.types.CBufRet.f32 %758, 0
  %760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %761 = extractvalue %dx.types.CBufRet.f32 %760, 0
  %762 = extractvalue %dx.types.CBufRet.f32 %760, 1
  %763 = extractvalue %dx.types.CBufRet.f32 %760, 2
  %764 = call float @dx.op.dot3.f32(i32 55, float %754, float %755, float %756, float %761, float %762, float %763)  ; Dot3(ax,ay,az,bx,by,bz)
  %765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %766 = extractvalue %dx.types.CBufRet.f32 %765, 0
  %767 = extractvalue %dx.types.CBufRet.f32 %765, 1
  %768 = extractvalue %dx.types.CBufRet.f32 %765, 2
  %769 = call float @dx.op.dot3.f32(i32 55, float %754, float %755, float %756, float %766, float %767, float %768)  ; Dot3(ax,ay,az,bx,by,bz)
  %770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %771 = extractvalue %dx.types.CBufRet.f32 %770, 0
  %772 = extractvalue %dx.types.CBufRet.f32 %770, 1
  %773 = extractvalue %dx.types.CBufRet.f32 %770, 2
  %774 = call float @dx.op.dot3.f32(i32 55, float %754, float %755, float %756, float %771, float %772, float %773)  ; Dot3(ax,ay,az,bx,by,bz)
  %775 = fmul fast float %764, %759
  %776 = fmul fast float %769, %759
  %777 = fmul fast float %774, %759
  %778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %779 = extractvalue %dx.types.CBufRet.f32 %778, 2
  %780 = fmul fast float %775, %779
  %781 = fmul fast float %776, %779
  %782 = fmul fast float %777, %779
  %783 = fadd fast float %780, 9.765625e-04
  %784 = fadd fast float %781, 9.765625e-04
  %785 = fadd fast float %782, 9.765625e-04
  %786 = call float @dx.op.unary.f32(i32 23, float %783)  ; Log(value)
  %787 = call float @dx.op.unary.f32(i32 23, float %784)  ; Log(value)
  %788 = call float @dx.op.unary.f32(i32 23, float %785)  ; Log(value)
  %789 = fadd fast float %786, 1.000000e+01
  %790 = fadd fast float %787, 1.000000e+01
  %791 = fadd fast float %788, 1.000000e+01
  %792 = fmul fast float %789, 0x3FA99999A0000000
  %793 = fmul fast float %790, 0x3FA99999A0000000
  %794 = fmul fast float %791, 0x3FA99999A0000000
  %795 = call float @dx.op.unary.f32(i32 7, float %792)  ; Saturate(value)
  %796 = call float @dx.op.unary.f32(i32 7, float %793)  ; Saturate(value)
  %797 = call float @dx.op.unary.f32(i32 7, float %794)  ; Saturate(value)
  %798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %799 = extractvalue %dx.types.CBufRet.f32 %798, 0
  %800 = extractvalue %dx.types.CBufRet.f32 %798, 1
  %801 = extractvalue %dx.types.CBufRet.f32 %798, 2
  %802 = fmul fast float %799, %795
  %803 = fmul fast float %800, %796
  %804 = fmul fast float %801, %797
  %805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %806 = extractvalue %dx.types.CBufRet.f32 %805, 0
  %807 = extractvalue %dx.types.CBufRet.f32 %805, 1
  %808 = extractvalue %dx.types.CBufRet.f32 %805, 2
  %809 = fadd fast float %802, %806
  %810 = fadd fast float %803, %807
  %811 = fadd fast float %804, %808
  %812 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %809, float %810, float %811, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %813 = extractvalue %dx.types.ResRet.f32 %812, 0
  %814 = extractvalue %dx.types.ResRet.f32 %812, 1
  %815 = extractvalue %dx.types.ResRet.f32 %812, 2
  br label %816

; <label>:816                                     ; preds = %757, %743, %733
  %817 = phi float [ %813, %757 ], [ %216, %733 ], [ %754, %743 ]
  %818 = phi float [ %814, %757 ], [ %217, %733 ], [ %755, %743 ]
  %819 = phi float [ %815, %757 ], [ %218, %733 ], [ %756, %743 ]
  %820 = fcmp fast oeq float %735, 0.000000e+00
  br i1 %820, label %821, label %822, !dx.controlflow.hints !64

; <label>:821                                     ; preds = %816
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %822

; <label>:822                                     ; preds = %821, %816
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %823 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %16, float %23, float %24, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %824 = extractvalue %dx.types.ResRet.f32 %823, 0
  %825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %826 = extractvalue %dx.types.CBufRet.f32 %825, 3
  %827 = bitcast float %826 to i32
  %828 = and i32 %827, 65535
  %829 = call float @dx.op.legacyF16ToF32(i32 131, i32 %828)  ; LegacyF16ToF32(value)
  %830 = fcmp fast une float %829, 0.000000e+00
  %831 = select i1 %830, float 0.000000e+00, float 1.000000e+00
  %832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %833 = extractvalue %dx.types.CBufRet.f32 %832, 3
  %834 = fmul fast float %833, %824
  %835 = fmul fast float %834, %831
  %836 = fsub fast float 1.000000e+00, %835
  %837 = fmul fast float %836, %817
  %838 = fmul fast float %836, %818
  %839 = fmul fast float %836, %819
  %840 = extractvalue %dx.types.CBufRet.f32 %832, 0
  %841 = extractvalue %dx.types.CBufRet.f32 %832, 1
  %842 = extractvalue %dx.types.CBufRet.f32 %832, 2
  %843 = fmul fast float %840, %834
  %844 = fmul fast float %841, %834
  %845 = fmul fast float %842, %834
  %846 = fadd fast float %837, %843
  %847 = fadd fast float %838, %844
  %848 = fadd fast float %839, %845
  %849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %850 = extractvalue %dx.types.CBufRet.f32 %849, 2
  %851 = fcmp fast ogt float %850, 0.000000e+00
  br i1 %851, label %852, label %918, !dx.controlflow.hints !65

; <label>:852                                     ; preds = %822
  %853 = fcmp fast oeq float %850, 2.000000e+00
  br i1 %853, label %854, label %906, !dx.controlflow.hints !66

; <label>:854                                     ; preds = %852
  %855 = fcmp fast ole float %846, 0x3F69A5C380000000
  %856 = fcmp fast ole float %847, 0x3F69A5C380000000
  %857 = fcmp fast ole float %848, 0x3F69A5C380000000
  %858 = fmul fast float %846, 0x4029D70A40000000
  %859 = fmul fast float %847, 0x4029D70A40000000
  %860 = fmul fast float %848, 0x4029D70A40000000
  %861 = call float @dx.op.unary.f32(i32 23, float %846)  ; Log(value)
  %862 = call float @dx.op.unary.f32(i32 23, float %847)  ; Log(value)
  %863 = call float @dx.op.unary.f32(i32 23, float %848)  ; Log(value)
  %864 = fmul fast float %861, 0x3FDAAAAAA0000000
  %865 = fmul fast float %862, 0x3FDAAAAAA0000000
  %866 = fmul fast float %863, 0x3FDAAAAAA0000000
  %867 = call float @dx.op.unary.f32(i32 21, float %864)  ; Exp(value)
  %868 = call float @dx.op.unary.f32(i32 21, float %865)  ; Exp(value)
  %869 = call float @dx.op.unary.f32(i32 21, float %866)  ; Exp(value)
  %870 = fmul fast float %867, 0x3FF0E147A0000000
  %871 = fmul fast float %868, 0x3FF0E147A0000000
  %872 = fmul fast float %869, 0x3FF0E147A0000000
  %873 = fadd fast float %870, 0xBFAC28F5C0000000
  %874 = fadd fast float %871, 0xBFAC28F5C0000000
  %875 = fadd fast float %872, 0xBFAC28F5C0000000
  %876 = select i1 %855, float %858, float %873
  %877 = select i1 %856, float %859, float %874
  %878 = select i1 %857, float %860, float %875
  %879 = fsub fast float 1.000000e+00, %876
  %880 = fsub fast float 1.000000e+00, %877
  %881 = fsub fast float 1.000000e+00, %878
  %882 = fcmp fast ole float %879, 0x3FA4B5DCC0000000
  %883 = fmul fast float %879, 0x3FB3D07220000000
  %884 = fsub fast float 0x3FF0E147A0000000, %876
  %885 = fmul fast float %884, 0x3FEE54EDE0000000
  %886 = call float @dx.op.unary.f32(i32 23, float %885)  ; Log(value)
  %887 = fmul fast float %886, 0x4003333340000000
  %888 = call float @dx.op.unary.f32(i32 21, float %887)  ; Exp(value)
  %889 = select i1 %882, float %883, float %888
  %890 = fcmp fast ole float %880, 0x3FA4B5DCC0000000
  %891 = fmul fast float %880, 0x3FB3D07220000000
  %892 = fsub fast float 0x3FF0E147A0000000, %877
  %893 = fmul fast float %892, 0x3FEE54EDE0000000
  %894 = call float @dx.op.unary.f32(i32 23, float %893)  ; Log(value)
  %895 = fmul fast float %894, 0x4003333340000000
  %896 = call float @dx.op.unary.f32(i32 21, float %895)  ; Exp(value)
  %897 = select i1 %890, float %891, float %896
  %898 = fcmp fast ole float %881, 0x3FA4B5DCC0000000
  %899 = fmul fast float %881, 0x3FB3D07220000000
  %900 = fsub fast float 0x3FF0E147A0000000, %878
  %901 = fmul fast float %900, 0x3FEE54EDE0000000
  %902 = call float @dx.op.unary.f32(i32 23, float %901)  ; Log(value)
  %903 = fmul fast float %902, 0x4003333340000000
  %904 = call float @dx.op.unary.f32(i32 21, float %903)  ; Exp(value)
  %905 = select i1 %898, float %899, float %904
  br label %918

; <label>:906                                     ; preds = %852
  %907 = call float @dx.op.dot3.f32(i32 55, float %846, float %847, float %848, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %908 = extractvalue %dx.types.CBufRet.f32 %849, 3
  %909 = fsub fast float %846, %907
  %910 = fsub fast float %847, %907
  %911 = fsub fast float %848, %907
  %912 = fmul fast float %908, %909
  %913 = fmul fast float %908, %910
  %914 = fmul fast float %908, %911
  %915 = fadd fast float %912, %907
  %916 = fadd fast float %913, %907
  %917 = fadd fast float %914, %907
  br label %918

; <label>:918                                     ; preds = %906, %854, %822
  %919 = phi float [ %889, %854 ], [ %915, %906 ], [ %846, %822 ]
  %920 = phi float [ %897, %854 ], [ %916, %906 ], [ %847, %822 ]
  %921 = phi float [ %905, %854 ], [ %917, %906 ], [ %848, %822 ]
  %922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %923 = extractvalue %dx.types.CBufRet.f32 %922, 0
  %924 = fcmp fast une float %923, 0.000000e+00
  br i1 %924, label %925, label %1099, !dx.controlflow.hints !67

; <label>:925                                     ; preds = %918
  %926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %927 = extractvalue %dx.types.CBufRet.f32 %926, 0
  %928 = extractvalue %dx.types.CBufRet.f32 %926, 1
  %929 = fsub fast float %43, %927
  %930 = fsub fast float %44, %928
  %931 = extractvalue %dx.types.CBufRet.f32 %926, 2
  %932 = extractvalue %dx.types.CBufRet.f32 %926, 3
  %933 = fmul fast float %929, %931
  %934 = fmul fast float %930, %932
  %935 = call float @dx.op.unary.f32(i32 6, float %923)  ; FAbs(value)
  %936 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %933, float %934, float undef, float undef, i32 0, i32 0, i32 undef, float %935)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %937 = extractvalue %dx.types.ResRet.f32 %936, 0
  %938 = extractvalue %dx.types.ResRet.f32 %936, 1
  %939 = extractvalue %dx.types.ResRet.f32 %936, 2
  %940 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %941 = extractvalue %dx.types.CBufRet.i32 %940, 3
  %942 = and i32 %941, 3
  %943 = icmp ne i32 %942, 0
  %944 = and i32 %941, 4
  %945 = icmp eq i32 %944, 0
  %946 = and i1 %943, %945
  br i1 %946, label %947, label %991

; <label>:947                                     ; preds = %925
  %948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %949 = extractvalue %dx.types.CBufRet.f32 %948, 0
  %950 = fcmp fast oge float %938, %949
  %951 = zext i1 %950 to i32
  br i1 %950, label %952, label %991

; <label>:952                                     ; preds = %947
  %953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %954 = extractvalue %dx.types.CBufRet.f32 %953, 3
  %955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %956 = extractvalue %dx.types.CBufRet.f32 %955, 2
  %957 = fcmp fast ogt float %956, 0.000000e+00
  br i1 %957, label %958, label %966, !dx.controlflow.hints !68

; <label>:958                                     ; preds = %952
  %959 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %17, float %938, float 0.000000e+00, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %960 = extractvalue %dx.types.ResRet.f32 %959, 0
  %961 = extractvalue %dx.types.ResRet.f32 %959, 1
  %962 = extractvalue %dx.types.ResRet.f32 %959, 2
  %963 = fcmp fast ogt float %956, 1.500000e+00
  %964 = select i1 %963, float %960, float %961
  %965 = select i1 %963, float %960, float %962
  br label %984

; <label>:966                                     ; preds = %952
  %967 = call float @dx.op.unary.f32(i32 7, float %938)  ; Saturate(value)
  %968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 238)  ; CBufferLoadLegacy(handle,regIndex)
  %969 = extractvalue %dx.types.CBufRet.f32 %968, 0
  %970 = extractvalue %dx.types.CBufRet.f32 %968, 1
  %971 = extractvalue %dx.types.CBufRet.f32 %968, 2
  %972 = extractvalue %dx.types.CBufRet.f32 %953, 0
  %973 = extractvalue %dx.types.CBufRet.f32 %953, 1
  %974 = extractvalue %dx.types.CBufRet.f32 %953, 2
  %975 = fsub fast float %969, %972
  %976 = fsub fast float %970, %973
  %977 = fsub fast float %971, %974
  %978 = fmul fast float %975, %967
  %979 = fmul fast float %976, %967
  %980 = fmul fast float %977, %967
  %981 = fadd fast float %978, %972
  %982 = fadd fast float %979, %973
  %983 = fadd fast float %980, %974
  br label %984

; <label>:984                                     ; preds = %966, %958
  %985 = phi float [ %960, %958 ], [ %981, %966 ]
  %986 = phi float [ %964, %958 ], [ %982, %966 ]
  %987 = phi float [ %965, %958 ], [ %983, %966 ]
  %988 = fmul fast float %985, %954
  %989 = fmul fast float %986, %954
  %990 = fmul fast float %987, %954
  br label %991

; <label>:991                                     ; preds = %984, %947, %925
  %992 = phi float [ %988, %984 ], [ %937, %925 ], [ %937, %947 ]
  %993 = phi float [ %989, %984 ], [ %938, %925 ], [ %937, %947 ]
  %994 = phi float [ %990, %984 ], [ %939, %925 ], [ %937, %947 ]
  %995 = phi i32 [ %951, %984 ], [ 0, %925 ], [ %951, %947 ]
  %996 = icmp eq i32 %995, 0
  br i1 %996, label %997, label %1051

; <label>:997                                     ; preds = %991
  %998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %999 = extractvalue %dx.types.CBufRet.f32 %998, 0
  %1000 = extractvalue %dx.types.CBufRet.f32 %998, 1
  %1001 = extractvalue %dx.types.CBufRet.f32 %998, 2
  %1002 = call float @dx.op.dot3.f32(i32 55, float %992, float %993, float %994, float %999, float %1000, float %1001)  ; Dot3(ax,ay,az,bx,by,bz)
  %1003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1004 = extractvalue %dx.types.CBufRet.f32 %1003, 0
  %1005 = extractvalue %dx.types.CBufRet.f32 %1003, 1
  %1006 = extractvalue %dx.types.CBufRet.f32 %1003, 2
  %1007 = call float @dx.op.dot3.f32(i32 55, float %992, float %993, float %994, float %1004, float %1005, float %1006)  ; Dot3(ax,ay,az,bx,by,bz)
  %1008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1009 = extractvalue %dx.types.CBufRet.f32 %1008, 0
  %1010 = extractvalue %dx.types.CBufRet.f32 %1008, 1
  %1011 = extractvalue %dx.types.CBufRet.f32 %1008, 2
  %1012 = call float @dx.op.dot3.f32(i32 55, float %992, float %993, float %994, float %1009, float %1010, float %1011)  ; Dot3(ax,ay,az,bx,by,bz)
  %1013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %1014 = extractvalue %dx.types.CBufRet.f32 %1013, 2
  %1015 = fmul fast float %1014, %1002
  %1016 = fmul fast float %1014, %1007
  %1017 = fmul fast float %1014, %1012
  %1018 = fadd fast float %1015, 9.765625e-04
  %1019 = fadd fast float %1016, 9.765625e-04
  %1020 = fadd fast float %1017, 9.765625e-04
  %1021 = call float @dx.op.unary.f32(i32 23, float %1018)  ; Log(value)
  %1022 = call float @dx.op.unary.f32(i32 23, float %1019)  ; Log(value)
  %1023 = call float @dx.op.unary.f32(i32 23, float %1020)  ; Log(value)
  %1024 = fadd fast float %1021, 1.000000e+01
  %1025 = fadd fast float %1022, 1.000000e+01
  %1026 = fadd fast float %1023, 1.000000e+01
  %1027 = fmul fast float %1024, 0x3FA99999A0000000
  %1028 = fmul fast float %1025, 0x3FA99999A0000000
  %1029 = fmul fast float %1026, 0x3FA99999A0000000
  %1030 = call float @dx.op.unary.f32(i32 7, float %1027)  ; Saturate(value)
  %1031 = call float @dx.op.unary.f32(i32 7, float %1028)  ; Saturate(value)
  %1032 = call float @dx.op.unary.f32(i32 7, float %1029)  ; Saturate(value)
  %1033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %1034 = extractvalue %dx.types.CBufRet.f32 %1033, 0
  %1035 = extractvalue %dx.types.CBufRet.f32 %1033, 1
  %1036 = extractvalue %dx.types.CBufRet.f32 %1033, 2
  %1037 = fmul fast float %1034, %1030
  %1038 = fmul fast float %1035, %1031
  %1039 = fmul fast float %1036, %1032
  %1040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1041 = extractvalue %dx.types.CBufRet.f32 %1040, 0
  %1042 = extractvalue %dx.types.CBufRet.f32 %1040, 1
  %1043 = extractvalue %dx.types.CBufRet.f32 %1040, 2
  %1044 = fadd fast float %1037, %1041
  %1045 = fadd fast float %1038, %1042
  %1046 = fadd fast float %1039, %1043
  %1047 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %1044, float %1045, float %1046, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1048 = extractvalue %dx.types.ResRet.f32 %1047, 0
  %1049 = extractvalue %dx.types.ResRet.f32 %1047, 1
  %1050 = extractvalue %dx.types.ResRet.f32 %1047, 2
  br label %1051

; <label>:1051                                    ; preds = %997, %991
  %1052 = phi float [ %992, %991 ], [ %1048, %997 ]
  %1053 = phi float [ %993, %991 ], [ %1049, %997 ]
  %1054 = phi float [ %994, %991 ], [ %1050, %997 ]
  %1055 = fcmp fast ole float %1052, 0x3FA4B5DCC0000000
  %1056 = fmul fast float %1052, 0x3FB3D07220000000
  %1057 = fadd fast float %1052, 0x3FAC28F5C0000000
  %1058 = fmul fast float %1057, 0x3FEE54EDE0000000
  %1059 = call float @dx.op.unary.f32(i32 23, float %1058)  ; Log(value)
  %1060 = fmul fast float %1059, 0x4003333340000000
  %1061 = call float @dx.op.unary.f32(i32 21, float %1060)  ; Exp(value)
  %1062 = select i1 %1055, float %1056, float %1061
  %1063 = fcmp fast ole float %1053, 0x3FA4B5DCC0000000
  %1064 = fmul fast float %1053, 0x3FB3D07220000000
  %1065 = fadd fast float %1053, 0x3FAC28F5C0000000
  %1066 = fmul fast float %1065, 0x3FEE54EDE0000000
  %1067 = call float @dx.op.unary.f32(i32 23, float %1066)  ; Log(value)
  %1068 = fmul fast float %1067, 0x4003333340000000
  %1069 = call float @dx.op.unary.f32(i32 21, float %1068)  ; Exp(value)
  %1070 = select i1 %1063, float %1064, float %1069
  %1071 = fcmp fast ole float %1054, 0x3FA4B5DCC0000000
  %1072 = fmul fast float %1054, 0x3FB3D07220000000
  %1073 = fadd fast float %1054, 0x3FAC28F5C0000000
  %1074 = fmul fast float %1073, 0x3FEE54EDE0000000
  %1075 = call float @dx.op.unary.f32(i32 23, float %1074)  ; Log(value)
  %1076 = fmul fast float %1075, 0x4003333340000000
  %1077 = call float @dx.op.unary.f32(i32 21, float %1076)  ; Exp(value)
  %1078 = select i1 %1071, float %1072, float %1077
  %1079 = fcmp fast olt float %923, 0.000000e+00
  br i1 %1079, label %1080, label %1092

; <label>:1080                                    ; preds = %1051
  %1081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %1082 = extractvalue %dx.types.CBufRet.f32 %1081, 0
  %1083 = extractvalue %dx.types.CBufRet.f32 %1081, 1
  %1084 = extractvalue %dx.types.CBufRet.f32 %1081, 2
  %1085 = call float @dx.op.dot3.f32(i32 55, float %1062, float %1070, float %1078, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1086 = fsub fast float %1085, %1082
  %1087 = fmul fast float %1086, %1083
  %1088 = call float @dx.op.unary.f32(i32 7, float %1087)  ; Saturate(value)
  %1089 = fsub fast float 1.000000e+00, %1084
  %1090 = fmul fast float %1088, %1089
  %1091 = fadd fast float %1090, %1084
  br label %1092

; <label>:1092                                    ; preds = %1080, %1051
  %1093 = phi float [ %1091, %1080 ], [ %1062, %1051 ]
  %1094 = phi float [ %1091, %1080 ], [ %1070, %1051 ]
  %1095 = phi float [ %1091, %1080 ], [ %1078, %1051 ]
  %1096 = fmul fast float %1093, %919
  %1097 = fmul fast float %1094, %920
  %1098 = fmul fast float %1095, %921
  br label %1099

; <label>:1099                                    ; preds = %1092, %918
  %1100 = phi float [ %1096, %1092 ], [ %919, %918 ]
  %1101 = phi float [ %1097, %1092 ], [ %920, %918 ]
  %1102 = phi float [ %1098, %1092 ], [ %921, %918 ]
  %1103 = extractvalue %dx.types.CBufRet.f32 %922, 1
  %1104 = fcmp fast ogt float %1103, 0.000000e+00
  br i1 %1104, label %1105, label %1146, !dx.controlflow.hints !69

; <label>:1105                                    ; preds = %1099
  %1106 = extractvalue %dx.types.CBufRet.f32 %922, 2
  %1107 = bitcast float %1106 to i32
  %1108 = and i32 %1107, 255
  %1109 = uitofp i32 %1108 to float
  %1110 = lshr i32 %1107, 8
  %1111 = and i32 %1110, 255
  %1112 = uitofp i32 %1111 to float
  %1113 = lshr i32 %1107, 16
  %1114 = and i32 %1113, 255
  %1115 = uitofp i32 %1114 to float
  %1116 = fmul fast float %1115, 0x3F70101020000000
  %1117 = lshr i32 %1107, 24
  %1118 = uitofp i32 %1117 to float
  %1119 = fmul fast float %1118, 0x3F70101020000000
  %1120 = fadd fast float %1115, %1109
  %1121 = fmul fast float %1120, 0x3F70101020000000
  %1122 = fadd fast float %1112, %1118
  %1123 = fmul fast float %1122, 0x3F70101020000000
  %1124 = fdiv fast float %43, %1121
  %1125 = fdiv fast float %44, %1123
  %1126 = fsub fast float -0.000000e+00, %1124
  %1127 = fsub fast float -0.000000e+00, %1125
  %1128 = fcmp fast oge float %1124, %1126
  %1129 = fcmp fast oge float %1125, %1127
  %1130 = call float @dx.op.unary.f32(i32 6, float %1124)  ; FAbs(value)
  %1131 = call float @dx.op.unary.f32(i32 6, float %1125)  ; FAbs(value)
  %1132 = call float @dx.op.unary.f32(i32 22, float %1130)  ; Frc(value)
  %1133 = call float @dx.op.unary.f32(i32 22, float %1131)  ; Frc(value)
  %1134 = fsub fast float -0.000000e+00, %1132
  %1135 = fsub fast float -0.000000e+00, %1133
  %1136 = select i1 %1128, float %1132, float %1134
  %1137 = select i1 %1129, float %1133, float %1135
  %1138 = fmul fast float %1121, %1136
  %1139 = fmul fast float %1137, %1123
  %1140 = fcmp fast olt float %1138, %1116
  %1141 = fcmp fast olt float %1139, %1119
  %1142 = or i1 %1140, %1141
  br i1 %1142, label %1143, label %1146, !dx.controlflow.hints !70

; <label>:1143                                    ; preds = %1105
  %1144 = fsub fast float 1.000000e+00, %1103
  %1145 = fmul fast float %1144, %735
  br label %1146

; <label>:1146                                    ; preds = %1143, %1105, %1099
  %1147 = phi float [ %1145, %1143 ], [ %735, %1105 ], [ %735, %1099 ]
  %1148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %1149 = extractvalue %dx.types.CBufRet.f32 %1148, 3
  %1150 = fcmp fast ogt float %1149, 0.000000e+00
  br i1 %1150, label %1151, label %1234, !dx.controlflow.hints !71

; <label>:1151                                    ; preds = %1146
  %1152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %1153 = extractvalue %dx.types.CBufRet.f32 %1152, 2
  %1154 = extractvalue %dx.types.CBufRet.f32 %1152, 3
  %1155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1156 = extractvalue %dx.types.CBufRet.f32 %1155, 3
  %1157 = fmul fast float %1156, 1.000000e+01
  %1158 = call float @dx.op.unary.f32(i32 27, float %1157)  ; Round_ni(value)
  %1159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1160 = extractvalue %dx.types.CBufRet.f32 %1159, 0
  %1161 = extractvalue %dx.types.CBufRet.f32 %1159, 1
  %1162 = fmul fast float %1160, %43
  %1163 = fmul fast float %1161, %44
  %1164 = call float @dx.op.unary.f32(i32 27, float %1162)  ; Round_ni(value)
  %1165 = call float @dx.op.unary.f32(i32 27, float %1163)  ; Round_ni(value)
  %1166 = fmul fast float %1158, 0x4002B851E0000000
  %1167 = call float @dx.op.unary.f32(i32 22, float %1166)  ; Frc(value)
  %1168 = fadd fast float %1167, 0x3FB99999A0000000
  %1169 = fadd fast float %1168, %1164
  %1170 = fadd fast float %1168, %1165
  %1171 = fmul fast float %1169, 0x3FE1BEDF00000000
  %1172 = call float @dx.op.unary.f32(i32 22, float %1171)  ; Frc(value)
  %1173 = fmul fast float %1169, %1172
  %1174 = fadd fast float %1173, %1170
  %1175 = fmul fast float %1170, 0x3FD3BEBE20000000
  %1176 = call float @dx.op.unary.f32(i32 22, float %1175)  ; Frc(value)
  %1177 = fmul fast float %1170, %1176
  %1178 = fadd fast float %1177, %1169
  %1179 = fmul fast float %1174, %1178
  %1180 = call float @dx.op.unary.f32(i32 22, float %1179)  ; Frc(value)
  %1181 = extractvalue %dx.types.CBufRet.f32 %1159, 3
  %1182 = bitcast float %1181 to i32
  %1183 = and i32 %1182, 255
  %1184 = uitofp i32 %1183 to float
  %1185 = fmul fast float %1184, 0x3F70101020000000
  %1186 = fmul fast float %1185, %1153
  %1187 = fcmp fast olt float %1180, %1186
  br i1 %1187, label %1188, label %1195, !dx.controlflow.hints !72

; <label>:1188                                    ; preds = %1151
  %1189 = fmul fast float %1180, 0x4057091680000000
  %1190 = call float @dx.op.unary.f32(i32 22, float %1189)  ; Frc(value)
  %1191 = fmul fast float %1190, %1100
  %1192 = fmul fast float %1190, %1102
  %1193 = fsub fast float 1.000000e+00, %1190
  %1194 = fmul fast float %1193, %1101
  br label %1195

; <label>:1195                                    ; preds = %1188, %1151
  %1196 = phi float [ %1191, %1188 ], [ %1100, %1151 ]
  %1197 = phi float [ %1194, %1188 ], [ %1101, %1151 ]
  %1198 = phi float [ %1192, %1188 ], [ %1102, %1151 ]
  %1199 = fmul fast float %1180, 0x4028B0A3E0000000
  %1200 = call float @dx.op.unary.f32(i32 22, float %1199)  ; Frc(value)
  %1201 = fmul fast float %1185, %1154
  %1202 = fcmp fast olt float %1200, %1201
  br i1 %1202, label %1203, label %1222, !dx.controlflow.hints !73

; <label>:1203                                    ; preds = %1195
  %1204 = extractvalue %dx.types.CBufRet.f32 %1159, 2
  %1205 = fmul fast float %1204, %43
  %1206 = call float @dx.op.unary.f32(i32 27, float %1205)  ; Round_ni(value)
  %1207 = fmul fast float %1206, 0x3FD5555560000000
  %1208 = call float @dx.op.unary.f32(i32 22, float %1207)  ; Frc(value)
  %1209 = extractvalue %dx.types.CBufRet.f32 %1152, 0
  %1210 = extractvalue %dx.types.CBufRet.f32 %1152, 1
  %1211 = fcmp fast olt float %1208, 0x3FD51EB860000000
  br i1 %1211, label %1215, label %1212, !dx.controlflow.hints !74

; <label>:1212                                    ; preds = %1203
  %1213 = fcmp fast olt float %1208, 0x3FE51EB860000000
  br i1 %1213, label %1215, label %1214, !dx.controlflow.hints !75

; <label>:1214                                    ; preds = %1212
  br label %1215

; <label>:1215                                    ; preds = %1214, %1212, %1203
  %1216 = phi float [ %1209, %1214 ], [ %1210, %1203 ], [ %1209, %1212 ]
  %1217 = phi float [ %1209, %1214 ], [ %1209, %1203 ], [ %1210, %1212 ]
  %1218 = phi float [ %1210, %1214 ], [ %1209, %1203 ], [ %1209, %1212 ]
  %1219 = fmul fast float %1216, %1196
  %1220 = fmul fast float %1217, %1197
  %1221 = fmul fast float %1218, %1198
  br label %1222

; <label>:1222                                    ; preds = %1215, %1195
  %1223 = phi float [ %1219, %1215 ], [ %1196, %1195 ]
  %1224 = phi float [ %1220, %1215 ], [ %1197, %1195 ]
  %1225 = phi float [ %1221, %1215 ], [ %1198, %1195 ]
  %1226 = fmul fast float %1180, 0x40223EF9E0000000
  %1227 = call float @dx.op.unary.f32(i32 22, float %1226)  ; Frc(value)
  %1228 = fmul fast float %1185, %1149
  %1229 = fmul fast float %1227, %1227
  %1230 = fmul fast float %1229, %1228
  %1231 = fsub fast float 1.000000e+00, %1230
  %1232 = call float @dx.op.unary.f32(i32 7, float %1231)  ; Saturate(value)
  %1233 = fmul fast float %1232, %1147
  br label %1234

; <label>:1234                                    ; preds = %1222, %1146
  %1235 = phi float [ %1223, %1222 ], [ %1100, %1146 ]
  %1236 = phi float [ %1224, %1222 ], [ %1101, %1146 ]
  %1237 = phi float [ %1225, %1222 ], [ %1102, %1146 ]
  %1238 = phi float [ %1233, %1222 ], [ %1147, %1146 ]
  %1239 = extractvalue %dx.types.CBufRet.f32 %849, 0
  %1240 = fcmp fast ogt float %1239, 0.000000e+00
  br i1 %1240, label %1241, label %1290, !dx.controlflow.hints !76

; <label>:1241                                    ; preds = %1234
  %1242 = extractvalue %dx.types.CBufRet.f32 %849, 1
  %1243 = fmul fast float %1239, %25
  %1244 = fmul fast float %1242, %26
  %1245 = call float @dx.op.unary.f32(i32 85, float %1243)  ; DerivFineX(value)
  %1246 = call float @dx.op.unary.f32(i32 86, float %1243)  ; DerivFineY(value)
  %1247 = call float @dx.op.unary.f32(i32 85, float %1244)  ; DerivFineX(value)
  %1248 = call float @dx.op.unary.f32(i32 86, float %1244)  ; DerivFineY(value)
  %1249 = fmul fast float %1248, %1245
  %1250 = fmul fast float %1247, %1246
  %1251 = fsub fast float %1249, %1250
  %1252 = fdiv fast float 1.000000e+00, %1251
  %1253 = fmul fast float %1252, %1248
  %1254 = fmul fast float %1252, %1246
  %1255 = fmul fast float %1252, %1247
  %1256 = fmul fast float %1252, %1245
  %1257 = fmul fast float %1253, %1253
  %1258 = fmul fast float %1255, %1255
  %1259 = fadd fast float %1257, %1258
  %1260 = call float @dx.op.unary.f32(i32 24, float %1259)  ; Sqrt(value)
  %1261 = fmul fast float %1254, %1254
  %1262 = fmul fast float %1256, %1256
  %1263 = fadd fast float %1261, %1262
  %1264 = call float @dx.op.unary.f32(i32 24, float %1263)  ; Sqrt(value)
  %1265 = fmul fast float %1260, %1243
  %1266 = fmul fast float %1264, %1244
  %1267 = fsub fast float %1265, %1260
  %1268 = fsub fast float %1266, %1264
  %1269 = fsub fast float -0.000000e+00, %1265
  %1270 = fsub fast float -0.000000e+00, %1266
  %1271 = call float @dx.op.binary.f32(i32 35, float %1269, float %1267)  ; FMax(a,b)
  %1272 = call float @dx.op.binary.f32(i32 35, float %1270, float %1268)  ; FMax(a,b)
  %1273 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1271)  ; FMax(a,b)
  %1274 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1272)  ; FMax(a,b)
  %1275 = fmul fast float %1273, %1273
  %1276 = fmul fast float %1274, %1274
  %1277 = fadd fast float %1276, %1275
  %1278 = call float @dx.op.unary.f32(i32 24, float %1277)  ; Sqrt(value)
  %1279 = call float @dx.op.binary.f32(i32 35, float %1271, float %1272)  ; FMax(a,b)
  %1280 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %1279)  ; FMin(a,b)
  %1281 = fadd fast float %1278, -1.000000e+00
  %1282 = fadd fast float %1281, %1280
  %1283 = fmul fast float %1282, -5.000000e-01
  %1284 = call float @dx.op.unary.f32(i32 7, float %1283)  ; Saturate(value)
  %1285 = fmul fast float %1284, 2.000000e+00
  %1286 = fsub fast float 3.000000e+00, %1285
  %1287 = fmul fast float %1284, %1284
  %1288 = fmul fast float %1287, %1238
  %1289 = fmul fast float %1288, %1286
  br label %1290

; <label>:1290                                    ; preds = %1241, %1234
  %1291 = phi float [ %1289, %1241 ], [ %1238, %1234 ]
  %1292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1293 = extractvalue %dx.types.CBufRet.f32 %1292, 0
  %1294 = extractvalue %dx.types.CBufRet.f32 %1292, 1
  %1295 = extractvalue %dx.types.CBufRet.f32 %1292, 2
  %1296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1297 = extractvalue %dx.types.CBufRet.f32 %1296, 0
  %1298 = extractvalue %dx.types.CBufRet.f32 %1296, 1
  %1299 = extractvalue %dx.types.CBufRet.f32 %1296, 2
  %1300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1301 = extractvalue %dx.types.CBufRet.f32 %1300, 0
  %1302 = extractvalue %dx.types.CBufRet.f32 %1300, 1
  %1303 = extractvalue %dx.types.CBufRet.f32 %1300, 2
  %1304 = fmul fast float %1293, %1235
  %1305 = call float @dx.op.tertiary.f32(i32 46, float %1294, float %1236, float %1304)  ; FMad(a,b,c)
  %1306 = call float @dx.op.tertiary.f32(i32 46, float %1295, float %1237, float %1305)  ; FMad(a,b,c)
  %1307 = fmul fast float %1297, %1235
  %1308 = call float @dx.op.tertiary.f32(i32 46, float %1298, float %1236, float %1307)  ; FMad(a,b,c)
  %1309 = call float @dx.op.tertiary.f32(i32 46, float %1299, float %1237, float %1308)  ; FMad(a,b,c)
  %1310 = fmul fast float %1301, %1235
  %1311 = call float @dx.op.tertiary.f32(i32 46, float %1302, float %1236, float %1310)  ; FMad(a,b,c)
  %1312 = call float @dx.op.tertiary.f32(i32 46, float %1303, float %1237, float %1311)  ; FMad(a,b,c)
  br i1 %742, label %1313, label %1620, !dx.controlflow.hints !77

; <label>:1313                                    ; preds = %1290
  %1314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1315 = extractvalue %dx.types.CBufRet.f32 %1314, 0
  %1316 = bitcast float %1315 to i32
  %1317 = and i32 %1316, 128
  %1318 = icmp eq i32 %1317, 0
  br i1 %1318, label %1333, label %1319

; <label>:1319                                    ; preds = %1313
  %1320 = call float @dx.op.unary.f32(i32 24, float %1306)  ; Sqrt(value)
  %1321 = call float @dx.op.unary.f32(i32 24, float %1309)  ; Sqrt(value)
  %1322 = call float @dx.op.unary.f32(i32 24, float %1312)  ; Sqrt(value)
  %1323 = fmul fast float %1320, 9.687500e-01
  %1324 = fmul fast float %1321, 9.687500e-01
  %1325 = fmul fast float %1322, 9.687500e-01
  %1326 = fadd fast float %1323, 1.562500e-02
  %1327 = fadd fast float %1324, 1.562500e-02
  %1328 = fadd fast float %1325, 1.562500e-02
  %1329 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %17, float %1326, float %1327, float %1328, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1330 = extractvalue %dx.types.ResRet.f32 %1329, 0
  %1331 = extractvalue %dx.types.ResRet.f32 %1329, 1
  %1332 = extractvalue %dx.types.ResRet.f32 %1329, 2
  br label %1620

; <label>:1333                                    ; preds = %1313
  %1334 = and i32 %1316, 127
  switch i32 %1334, label %1620 [
    i32 1, label %1335
    i32 2, label %1335
    i32 0, label %1335
    i32 3, label %1365
    i32 4, label %1486
  ]

; <label>:1335                                    ; preds = %1333, %1333, %1333
  %1336 = call float @dx.op.unary.f32(i32 7, float %1306)  ; Saturate(value)
  %1337 = call float @dx.op.unary.f32(i32 7, float %1309)  ; Saturate(value)
  %1338 = call float @dx.op.unary.f32(i32 7, float %1312)  ; Saturate(value)
  %1339 = call float @dx.op.unary.f32(i32 23, float %1336)  ; Log(value)
  %1340 = call float @dx.op.unary.f32(i32 23, float %1337)  ; Log(value)
  %1341 = call float @dx.op.unary.f32(i32 23, float %1338)  ; Log(value)
  %1342 = fmul fast float %1339, 0x3FDAAAAAA0000000
  %1343 = fmul fast float %1340, 0x3FDAAAAAA0000000
  %1344 = fmul fast float %1341, 0x3FDAAAAAA0000000
  %1345 = call float @dx.op.unary.f32(i32 21, float %1342)  ; Exp(value)
  %1346 = call float @dx.op.unary.f32(i32 21, float %1343)  ; Exp(value)
  %1347 = call float @dx.op.unary.f32(i32 21, float %1344)  ; Exp(value)
  %1348 = fmul fast float %1345, 0x3FF0E147A0000000
  %1349 = fmul fast float %1346, 0x3FF0E147A0000000
  %1350 = fmul fast float %1347, 0x3FF0E147A0000000
  %1351 = fadd fast float %1348, 0xBFAC28F5C0000000
  %1352 = fadd fast float %1349, 0xBFAC28F5C0000000
  %1353 = fadd fast float %1350, 0xBFAC28F5C0000000
  %1354 = call float @dx.op.unary.f32(i32 7, float %1351)  ; Saturate(value)
  %1355 = call float @dx.op.unary.f32(i32 7, float %1352)  ; Saturate(value)
  %1356 = call float @dx.op.unary.f32(i32 7, float %1353)  ; Saturate(value)
  %1357 = extractvalue %dx.types.CBufRet.f32 %1314, 2
  %1358 = extractvalue %dx.types.CBufRet.f32 %1314, 3
  %1359 = fmul fast float %1357, %1354
  %1360 = fmul fast float %1357, %1355
  %1361 = fmul fast float %1357, %1356
  %1362 = fadd fast float %1359, %1358
  %1363 = fadd fast float %1360, %1358
  %1364 = fadd fast float %1361, %1358
  br label %1620

; <label>:1365                                    ; preds = %1333
  %1366 = fmul fast float %1306, 0x4163D57C00000000
  %1367 = fmul fast float %1309, 0x4163D57C00000000
  %1368 = fmul fast float %1312, 0x4163D57C00000000
  %1369 = fadd fast float %1366, 9.999980e+05
  %1370 = fadd fast float %1367, 9.999980e+05
  %1371 = fadd fast float %1368, 9.999980e+05
  %1372 = fmul fast float %1369, %1306
  %1373 = fmul fast float %1370, %1309
  %1374 = fmul fast float %1371, %1312
  %1375 = fadd fast float %1372, 0xC0AFE17A60000000
  %1376 = fadd fast float %1373, 0xC0AFE17A60000000
  %1377 = fadd fast float %1374, 0xC0AFE17A60000000
  %1378 = fmul fast float %1375, %1306
  %1379 = fmul fast float %1376, %1309
  %1380 = fmul fast float %1377, %1312
  %1381 = fmul fast float %1306, 0x40F753C340000000
  %1382 = fmul fast float %1309, 0x40F753C340000000
  %1383 = fmul fast float %1312, 0x40F753C340000000
  %1384 = fsub fast float 9.999990e+06, %1381
  %1385 = fsub fast float 9.999990e+06, %1382
  %1386 = fsub fast float 9.999990e+06, %1383
  %1387 = fmul fast float %1384, %1306
  %1388 = fmul fast float %1385, %1309
  %1389 = fmul fast float %1386, %1312
  %1390 = fadd fast float %1387, 0x4136D1DD80000000
  %1391 = fadd fast float %1388, 0x4136D1DD80000000
  %1392 = fadd fast float %1389, 0x4136D1DD80000000
  %1393 = fmul fast float %1390, %1306
  %1394 = fmul fast float %1391, %1309
  %1395 = fmul fast float %1392, %1312
  %1396 = fadd fast float %1393, 1.000000e+00
  %1397 = fadd fast float %1394, 1.000000e+00
  %1398 = fadd fast float %1395, 1.000000e+00
  %1399 = fdiv fast float %1378, %1396
  %1400 = fdiv fast float %1379, %1397
  %1401 = fdiv fast float %1380, %1398
  %1402 = call float @dx.op.unary.f32(i32 7, float %1399)  ; Saturate(value)
  %1403 = call float @dx.op.unary.f32(i32 7, float %1400)  ; Saturate(value)
  %1404 = call float @dx.op.unary.f32(i32 7, float %1401)  ; Saturate(value)
  %1405 = extractvalue %dx.types.CBufRet.f32 %1314, 1
  %1406 = fmul fast float %1402, 0x3FE413A920000000
  %1407 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %1403, float %1406)  ; FMad(a,b,c)
  %1408 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %1404, float %1407)  ; FMad(a,b,c)
  %1409 = fmul fast float %1402, 0x3FB1B089A0000000
  %1410 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %1403, float %1409)  ; FMad(a,b,c)
  %1411 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %1404, float %1410)  ; FMad(a,b,c)
  %1412 = fmul fast float %1402, 0x3F90CB2960000000
  %1413 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %1403, float %1412)  ; FMad(a,b,c)
  %1414 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %1404, float %1413)  ; FMad(a,b,c)
  %1415 = fmul fast float %1408, %1405
  %1416 = fmul fast float %1411, %1405
  %1417 = fmul fast float %1414, %1405
  %1418 = fmul fast float %1415, 0x3F847AE140000000
  %1419 = fmul fast float %1416, 0x3F847AE140000000
  %1420 = fmul fast float %1417, 0x3F847AE140000000
  %1421 = fmul fast float %1415, 0x40B4D2F520000000
  %1422 = fmul fast float %1416, 0x40B4D2F520000000
  %1423 = fmul fast float %1417, 0x40B4D2F520000000
  %1424 = fadd fast float %1421, 0x41869ECF20000000
  %1425 = fadd fast float %1422, 0x41869ECF20000000
  %1426 = fadd fast float %1423, 0x41869ECF20000000
  %1427 = fmul fast float %1424, %1418
  %1428 = fmul fast float %1425, %1419
  %1429 = fmul fast float %1426, %1420
  %1430 = fadd fast float %1427, 0x417BB79C60000000
  %1431 = fadd fast float %1428, 0x417BB79C60000000
  %1432 = fadd fast float %1429, 0x417BB79C60000000
  %1433 = fmul fast float %1430, %1418
  %1434 = fmul fast float %1431, %1419
  %1435 = fmul fast float %1432, %1420
  %1436 = fadd fast float %1433, 0x41218DE180000000
  %1437 = fadd fast float %1434, 0x41218DE180000000
  %1438 = fadd fast float %1435, 0x41218DE180000000
  %1439 = fmul fast float %1436, %1418
  %1440 = fmul fast float %1437, %1419
  %1441 = fmul fast float %1438, %1420
  %1442 = fadd fast float %1439, 0x4077F174E0000000
  %1443 = fadd fast float %1440, 0x4077F174E0000000
  %1444 = fadd fast float %1441, 0x4077F174E0000000
  %1445 = fmul fast float %1442, %1418
  %1446 = fmul fast float %1443, %1419
  %1447 = fmul fast float %1444, %1420
  %1448 = fadd fast float %1445, 0x3F3FF79B80000000
  %1449 = fadd fast float %1446, 0x3F3FF79B80000000
  %1450 = fadd fast float %1447, 0x3F3FF79B80000000
  %1451 = fmul fast float %1415, 0x412442D320000000
  %1452 = fmul fast float %1416, 0x412442D320000000
  %1453 = fmul fast float %1417, 0x412442D320000000
  %1454 = fadd fast float %1451, 0x419385D5C0000000
  %1455 = fadd fast float %1452, 0x419385D5C0000000
  %1456 = fadd fast float %1453, 0x419385D5C0000000
  %1457 = fmul fast float %1454, %1418
  %1458 = fmul fast float %1455, %1419
  %1459 = fmul fast float %1456, %1420
  %1460 = fadd fast float %1457, 4.182885e+06
  %1461 = fadd fast float %1458, 4.182885e+06
  %1462 = fadd fast float %1459, 4.182885e+06
  %1463 = fmul fast float %1460, %1418
  %1464 = fmul fast float %1461, %1419
  %1465 = fmul fast float %1462, %1420
  %1466 = fadd fast float %1463, 0x40C4D633C0000000
  %1467 = fadd fast float %1464, 0x40C4D633C0000000
  %1468 = fadd fast float %1465, 0x40C4D633C0000000
  %1469 = fmul fast float %1466, %1418
  %1470 = fmul fast float %1467, %1419
  %1471 = fmul fast float %1468, %1420
  %1472 = fadd fast float %1469, 1.000000e+00
  %1473 = fadd fast float %1470, 1.000000e+00
  %1474 = fadd fast float %1471, 1.000000e+00
  %1475 = fdiv fast float %1448, %1472
  %1476 = fdiv fast float %1449, %1473
  %1477 = fdiv fast float %1450, %1474
  %1478 = extractvalue %dx.types.CBufRet.f32 %1314, 2
  %1479 = extractvalue %dx.types.CBufRet.f32 %1314, 3
  %1480 = fmul fast float %1478, %1475
  %1481 = fmul fast float %1478, %1476
  %1482 = fmul fast float %1478, %1477
  %1483 = fadd fast float %1480, %1479
  %1484 = fadd fast float %1481, %1479
  %1485 = fadd fast float %1482, %1479
  br label %1620

; <label>:1486                                    ; preds = %1333
  %1487 = fmul fast float %1306, 0x4163D57C00000000
  %1488 = fmul fast float %1309, 0x4163D57C00000000
  %1489 = fmul fast float %1312, 0x4163D57C00000000
  %1490 = fadd fast float %1487, 9.999980e+05
  %1491 = fadd fast float %1488, 9.999980e+05
  %1492 = fadd fast float %1489, 9.999980e+05
  %1493 = fmul fast float %1490, %1306
  %1494 = fmul fast float %1491, %1309
  %1495 = fmul fast float %1492, %1312
  %1496 = fadd fast float %1493, 0xC0AFE17A60000000
  %1497 = fadd fast float %1494, 0xC0AFE17A60000000
  %1498 = fadd fast float %1495, 0xC0AFE17A60000000
  %1499 = fmul fast float %1496, %1306
  %1500 = fmul fast float %1497, %1309
  %1501 = fmul fast float %1498, %1312
  %1502 = fmul fast float %1306, 0x40F753C340000000
  %1503 = fmul fast float %1309, 0x40F753C340000000
  %1504 = fmul fast float %1312, 0x40F753C340000000
  %1505 = fsub fast float 9.999990e+06, %1502
  %1506 = fsub fast float 9.999990e+06, %1503
  %1507 = fsub fast float 9.999990e+06, %1504
  %1508 = fmul fast float %1505, %1306
  %1509 = fmul fast float %1506, %1309
  %1510 = fmul fast float %1507, %1312
  %1511 = fadd fast float %1508, 0x4136D1DD80000000
  %1512 = fadd fast float %1509, 0x4136D1DD80000000
  %1513 = fadd fast float %1510, 0x4136D1DD80000000
  %1514 = fmul fast float %1511, %1306
  %1515 = fmul fast float %1512, %1309
  %1516 = fmul fast float %1513, %1312
  %1517 = fadd fast float %1514, 1.000000e+00
  %1518 = fadd fast float %1515, 1.000000e+00
  %1519 = fadd fast float %1516, 1.000000e+00
  %1520 = fdiv fast float %1499, %1517
  %1521 = fdiv fast float %1500, %1518
  %1522 = fdiv fast float %1501, %1519
  %1523 = call float @dx.op.unary.f32(i32 7, float %1520)  ; Saturate(value)
  %1524 = call float @dx.op.unary.f32(i32 7, float %1521)  ; Saturate(value)
  %1525 = call float @dx.op.unary.f32(i32 7, float %1522)  ; Saturate(value)
  %1526 = extractvalue %dx.types.CBufRet.f32 %1314, 1
  %1527 = fmul fast float %1523, 0x3FEA519BC0000000
  %1528 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %1524, float %1527)  ; FMad(a,b,c)
  %1529 = fmul fast float %1523, 0x3FA0FED480000000
  %1530 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %1524, float %1529)  ; FMad(a,b,c)
  %1531 = fmul fast float %1523, 0x3F917E1C00000000
  %1532 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %1524, float %1531)  ; FMad(a,b,c)
  %1533 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %1525, float %1532)  ; FMad(a,b,c)
  %1534 = call float @dx.op.binary.f32(i32 35, float %1523, float %1524)  ; FMax(a,b)
  %1535 = call float @dx.op.binary.f32(i32 35, float %1534, float %1525)  ; FMax(a,b)
  %1536 = fadd fast float %1535, -1.000000e+00
  %1537 = fmul fast float %1536, 2.500000e-01
  %1538 = call float @dx.op.unary.f32(i32 7, float %1537)  ; Saturate(value)
  %1539 = fsub fast float 1.000000e+00, %1538
  %1540 = fmul fast float %1539, %1528
  %1541 = fmul fast float %1539, %1530
  %1542 = fmul fast float %1539, %1533
  %1543 = fmul fast float %1538, %1523
  %1544 = fmul fast float %1538, %1524
  %1545 = fmul fast float %1538, %1525
  %1546 = fadd fast float %1540, %1543
  %1547 = fadd fast float %1541, %1544
  %1548 = fadd fast float %1542, %1545
  %1549 = fmul fast float %1546, %1526
  %1550 = fmul fast float %1547, %1526
  %1551 = fmul fast float %1548, %1526
  %1552 = fmul fast float %1549, 0x3F847AE140000000
  %1553 = fmul fast float %1550, 0x3F847AE140000000
  %1554 = fmul fast float %1551, 0x3F847AE140000000
  %1555 = fmul fast float %1549, 0x40B4D2F520000000
  %1556 = fmul fast float %1550, 0x40B4D2F520000000
  %1557 = fmul fast float %1551, 0x40B4D2F520000000
  %1558 = fadd fast float %1555, 0x41869ECF20000000
  %1559 = fadd fast float %1556, 0x41869ECF20000000
  %1560 = fadd fast float %1557, 0x41869ECF20000000
  %1561 = fmul fast float %1558, %1552
  %1562 = fmul fast float %1559, %1553
  %1563 = fmul fast float %1560, %1554
  %1564 = fadd fast float %1561, 0x417BB79C60000000
  %1565 = fadd fast float %1562, 0x417BB79C60000000
  %1566 = fadd fast float %1563, 0x417BB79C60000000
  %1567 = fmul fast float %1564, %1552
  %1568 = fmul fast float %1565, %1553
  %1569 = fmul fast float %1566, %1554
  %1570 = fadd fast float %1567, 0x41218DE180000000
  %1571 = fadd fast float %1568, 0x41218DE180000000
  %1572 = fadd fast float %1569, 0x41218DE180000000
  %1573 = fmul fast float %1570, %1552
  %1574 = fmul fast float %1571, %1553
  %1575 = fmul fast float %1572, %1554
  %1576 = fadd fast float %1573, 0x4077F174E0000000
  %1577 = fadd fast float %1574, 0x4077F174E0000000
  %1578 = fadd fast float %1575, 0x4077F174E0000000
  %1579 = fmul fast float %1576, %1552
  %1580 = fmul fast float %1577, %1553
  %1581 = fmul fast float %1578, %1554
  %1582 = fadd fast float %1579, 0x3F3FF79B80000000
  %1583 = fadd fast float %1580, 0x3F3FF79B80000000
  %1584 = fadd fast float %1581, 0x3F3FF79B80000000
  %1585 = fmul fast float %1549, 0x412442D320000000
  %1586 = fmul fast float %1550, 0x412442D320000000
  %1587 = fmul fast float %1551, 0x412442D320000000
  %1588 = fadd fast float %1585, 0x419385D5C0000000
  %1589 = fadd fast float %1586, 0x419385D5C0000000
  %1590 = fadd fast float %1587, 0x419385D5C0000000
  %1591 = fmul fast float %1588, %1552
  %1592 = fmul fast float %1589, %1553
  %1593 = fmul fast float %1590, %1554
  %1594 = fadd fast float %1591, 4.182885e+06
  %1595 = fadd fast float %1592, 4.182885e+06
  %1596 = fadd fast float %1593, 4.182885e+06
  %1597 = fmul fast float %1594, %1552
  %1598 = fmul fast float %1595, %1553
  %1599 = fmul fast float %1596, %1554
  %1600 = fadd fast float %1597, 0x40C4D633C0000000
  %1601 = fadd fast float %1598, 0x40C4D633C0000000
  %1602 = fadd fast float %1599, 0x40C4D633C0000000
  %1603 = fmul fast float %1600, %1552
  %1604 = fmul fast float %1601, %1553
  %1605 = fmul fast float %1602, %1554
  %1606 = fadd fast float %1603, 1.000000e+00
  %1607 = fadd fast float %1604, 1.000000e+00
  %1608 = fadd fast float %1605, 1.000000e+00
  %1609 = fdiv fast float %1582, %1606
  %1610 = fdiv fast float %1583, %1607
  %1611 = fdiv fast float %1584, %1608
  %1612 = extractvalue %dx.types.CBufRet.f32 %1314, 2
  %1613 = extractvalue %dx.types.CBufRet.f32 %1314, 3
  %1614 = fmul fast float %1612, %1609
  %1615 = fmul fast float %1612, %1610
  %1616 = fmul fast float %1612, %1611
  %1617 = fadd fast float %1614, %1613
  %1618 = fadd fast float %1615, %1613
  %1619 = fadd fast float %1616, %1613
  br label %1620

; <label>:1620                                    ; preds = %1486, %1365, %1335, %1333, %1319, %1290
  %1621 = phi float [ %1306, %1290 ], [ %1330, %1319 ], [ %1306, %1333 ], [ %1617, %1486 ], [ %1483, %1365 ], [ %1362, %1335 ]
  %1622 = phi float [ %1309, %1290 ], [ %1331, %1319 ], [ %1309, %1333 ], [ %1618, %1486 ], [ %1484, %1365 ], [ %1363, %1335 ]
  %1623 = phi float [ %1312, %1290 ], [ %1332, %1319 ], [ %1312, %1333 ], [ %1619, %1486 ], [ %1485, %1365 ], [ %1364, %1335 ]
  %1624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 225)  ; CBufferLoadLegacy(handle,regIndex)
  %1625 = extractvalue %dx.types.CBufRet.f32 %1624, 1
  %1626 = extractvalue %dx.types.CBufRet.f32 %1624, 3
  %1627 = select i1 %220, float %1625, float %1626
  %1628 = fmul fast float %1627, %1291
  %1629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 234)  ; CBufferLoadLegacy(handle,regIndex)
  %1630 = extractvalue %dx.types.CBufRet.f32 %1629, 0
  %1631 = extractvalue %dx.types.CBufRet.f32 %1629, 2
  %1632 = call float @dx.op.unary.f32(i32 23, float %1628)  ; Log(value)
  %1633 = fmul fast float %1632, %1631
  %1634 = call float @dx.op.unary.f32(i32 21, float %1633)  ; Exp(value)
  %1635 = fmul fast float %1634, %1630
  %1636 = extractvalue %dx.types.CBufRet.f32 %1629, 1
  %1637 = extractvalue %dx.types.CBufRet.f32 %1629, 3
  %1638 = fmul fast float %1632, %1637
  %1639 = call float @dx.op.unary.f32(i32 21, float %1638)  ; Exp(value)
  %1640 = fmul fast float %1639, %1636
  %1641 = fadd fast float %1640, %1635
  %1642 = fmul fast float %1641, %1621
  %1643 = fmul fast float %1641, %1622
  %1644 = fmul fast float %1641, %1623
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1642)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1643)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1644)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1641)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!31}
!dx.entryPoints = !{!32}

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
!23 = !{i32 2, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 304, null}
!24 = !{i32 3, %tonemapping* undef, !"", i32 0, i32 4, i32 1, i32 64, null}
!25 = !{!26, !27, !28, !29, !30}
!26 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!27 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!28 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!29 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!30 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!31 = !{[26 x i32] [i32 24, i32 4, i32 15, i32 15, i32 0, i32 0, i32 7, i32 7, i32 7, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 7, i32 7]}
!32 = !{void ()* @ps_main, !"ps_main", !33, !4, !57}
!33 = !{!34, !55, null}
!34 = !{!35, !38, !40, !41, !43, !45, !47, !49, !51, !53}
!35 = !{i32 0, !"SV_Position", i8 9, i8 3, !36, i8 4, i32 1, i8 4, i32 0, i8 0, !37}
!36 = !{i32 0}
!37 = !{i32 3, i32 3}
!38 = !{i32 1, !"COLOR", i8 9, i8 0, !36, i8 2, i32 1, i8 4, i32 1, i8 0, !39}
!39 = !{i32 3, i32 15}
!40 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !36, i8 2, i32 1, i8 2, i32 2, i8 0, !37}
!41 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !42, i8 2, i32 1, i8 2, i32 2, i8 2, !37}
!42 = !{i32 2}
!43 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !44, i8 2, i32 1, i8 2, i32 3, i8 0, !37}
!44 = !{i32 3}
!45 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !46, i8 2, i32 1, i8 2, i32 3, i8 2, !37}
!46 = !{i32 4}
!47 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !48, i8 2, i32 1, i8 2, i32 4, i8 0, !37}
!48 = !{i32 5}
!49 = !{i32 7, !"TEXCOORD", i8 9, i8 0, !50, i8 2, i32 1, i8 2, i32 4, i8 2, !37}
!50 = !{i32 6}
!51 = !{i32 8, !"TEXCOORD", i8 9, i8 0, !52, i8 2, i32 1, i8 2, i32 5, i8 0, !37}
!52 = !{i32 1}
!53 = !{i32 9, !"TEXCOORD", i8 9, i8 0, !54, i8 2, i32 1, i8 2, i32 5, i8 2, !37}
!54 = !{i32 7}
!55 = !{!56}
!56 = !{i32 0, !"SV_Target", i8 9, i8 16, !36, i8 0, i32 1, i8 4, i32 0, i8 0, !39}
!57 = !{i32 0, i64 16}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 1}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 1}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}

