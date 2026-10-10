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
; shader hash: 1420e61a4e4ac25ca47fb05c558d9b99
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
  br i1 %190, label %194, label %191, !dx.controlflow.hints !61

; <label>:191                                     ; preds = %161
  %192 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %8, %dx.types.Handle %14, float %182, float %185, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %193 = extractvalue %dx.types.ResRet.f32 %192, 0
  br label %199

; <label>:194                                     ; preds = %161
  %195 = call float @dx.op.unary.f32(i32 22, float %182)  ; Frc(value)
  %196 = call float @dx.op.unary.f32(i32 22, float %185)  ; Frc(value)
  %197 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %8, %dx.types.Handle %18, float %195, float %196, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %198 = extractvalue %dx.types.ResRet.f32 %197, 0
  br label %199

; <label>:199                                     ; preds = %194, %191
  %200 = phi float [ %193, %191 ], [ %198, %194 ]
  %201 = fmul fast float %200, 2.000000e+00
  %202 = fadd fast float %201, -1.000000e+00
  %203 = call float @dx.op.unary.f32(i32 83, float %202)  ; DerivCoarseX(value)
  %204 = call float @dx.op.unary.f32(i32 84, float %202)  ; DerivCoarseY(value)
  %205 = fmul fast float %203, %203
  %206 = fmul fast float %204, %204
  %207 = fadd fast float %206, %205
  %208 = call float @dx.op.unary.f32(i32 24, float %207)  ; Sqrt(value)
  %209 = fmul fast float %208, 2.000000e+00
  %210 = fadd fast float %208, %202
  %211 = fdiv fast float %210, %209
  %212 = call float @dx.op.unary.f32(i32 7, float %211)  ; Saturate(value)
  %213 = fmul fast float %212, 2.000000e+00
  %214 = fsub fast float 3.000000e+00, %213
  %215 = fmul fast float %212, %212
  %216 = fmul fast float %215, %42
  %217 = fmul fast float %216, %214
  %218 = fcmp fast oeq float %103, 0.000000e+00
  %219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %220 = extractvalue %dx.types.CBufRet.f32 %219, 3
  %221 = fcmp fast une float %220, 0.000000e+00
  %222 = and i1 %218, %221
  br i1 %222, label %223, label %239

; <label>:223                                     ; preds = %199
  %224 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %17, float %52, float %53, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %225 = extractvalue %dx.types.ResRet.f32 %224, 0
  %226 = fsub fast float 1.000000e+00, %225
  %227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %228 = extractvalue %dx.types.CBufRet.f32 %227, 0
  %229 = extractvalue %dx.types.CBufRet.f32 %227, 1
  %230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 222)  ; CBufferLoadLegacy(handle,regIndex)
  %231 = extractvalue %dx.types.CBufRet.f32 %230, 3
  %232 = fdiv fast float %226, %231
  %233 = fsub fast float %232, %228
  %234 = fmul fast float %233, %229
  %235 = call float @dx.op.unary.f32(i32 7, float %234)  ; Saturate(value)
  %236 = fsub fast float 1.000000e+00, %235
  %237 = fmul fast float %236, %236
  %238 = fmul fast float %237, %217
  br label %239

; <label>:239                                     ; preds = %223, %199
  %240 = phi float [ %238, %223 ], [ %217, %199 ]
  %241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %242 = extractvalue %dx.types.CBufRet.f32 %241, 3
  %243 = bitcast float %242 to i32
  %244 = lshr i32 %243, 4
  %245 = lshr i32 %243, 9
  %246 = and i32 %245, 1
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %342, label %248

; <label>:248                                     ; preds = %239
  %249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %250 = extractvalue %dx.types.CBufRet.f32 %249, 3
  %251 = bitcast float %250 to i32
  %252 = and i32 %251, 65535
  %253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %252)  ; LegacyF16ToF32(value)
  %254 = lshr i32 %251, 16
  %255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %254)  ; LegacyF16ToF32(value)
  %256 = extractvalue %dx.types.CBufRet.f32 %249, 2
  %257 = bitcast float %256 to i32
  %258 = and i32 %257, 65535
  %259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %258)  ; LegacyF16ToF32(value)
  %260 = lshr i32 %257, 16
  %261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %260)  ; LegacyF16ToF32(value)
  %262 = and i32 %244, 1
  %263 = icmp ne i32 %262, 0
  %264 = fcmp fast ogt float %253, 0.000000e+00
  %265 = fcmp fast ogt float %255, 0.000000e+00
  %266 = and i1 %264, %265
  %267 = fcmp fast ogt float %259, 0.000000e+00
  br i1 %266, label %268, label %328

; <label>:268                                     ; preds = %248
  br i1 %267, label %269, label %277

; <label>:269                                     ; preds = %268
  %270 = fmul fast float %255, %36
  %271 = fmul fast float %253, %35
  %272 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %15, float %271, float %270, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %273 = extractvalue %dx.types.ResRet.f32 %272, 0
  %274 = fsub fast float 1.000000e+00, %273
  %275 = select i1 %263, float %274, float %273
  %276 = fmul fast float %275, %259
  br label %277

; <label>:277                                     ; preds = %269, %268
  %278 = phi float [ %276, %269 ], [ 0.000000e+00, %268 ]
  %279 = fadd fast float %278, %261
  %280 = call float @dx.op.unary.f32(i32 7, float %279)  ; Saturate(value)
  br i1 %267, label %281, label %291

; <label>:281                                     ; preds = %277
  %282 = fmul fast float %255, %36
  %283 = fsub fast float 1.000000e+00, %35
  %284 = fmul fast float %253, %283
  %285 = fsub fast float 1.000000e+00, %284
  %286 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %15, float %285, float %282, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %287 = extractvalue %dx.types.ResRet.f32 %286, 1
  %288 = fsub fast float 1.000000e+00, %287
  %289 = select i1 %263, float %288, float %287
  %290 = fmul fast float %289, %259
  br label %291

; <label>:291                                     ; preds = %281, %277
  %292 = phi float [ %290, %281 ], [ 0.000000e+00, %277 ]
  %293 = fadd fast float %292, %261
  %294 = call float @dx.op.unary.f32(i32 7, float %293)  ; Saturate(value)
  %295 = fmul fast float %294, %280
  br i1 %267, label %296, label %308

; <label>:296                                     ; preds = %291
  %297 = fsub fast float 1.000000e+00, %36
  %298 = fmul fast float %255, %297
  %299 = fsub fast float 1.000000e+00, %298
  %300 = fsub fast float 1.000000e+00, %35
  %301 = fmul fast float %253, %300
  %302 = fsub fast float 1.000000e+00, %301
  %303 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %15, float %302, float %299, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %304 = extractvalue %dx.types.ResRet.f32 %303, 2
  %305 = fsub fast float 1.000000e+00, %304
  %306 = select i1 %263, float %305, float %304
  %307 = fmul fast float %306, %259
  br label %308

; <label>:308                                     ; preds = %296, %291
  %309 = phi float [ %307, %296 ], [ 0.000000e+00, %291 ]
  %310 = fadd fast float %309, %261
  %311 = call float @dx.op.unary.f32(i32 7, float %310)  ; Saturate(value)
  %312 = fmul fast float %295, %311
  br i1 %267, label %313, label %323

; <label>:313                                     ; preds = %308
  %314 = fsub fast float 1.000000e+00, %36
  %315 = fmul fast float %255, %314
  %316 = fsub fast float 1.000000e+00, %315
  %317 = fmul fast float %253, %35
  %318 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %15, float %317, float %316, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %319 = extractvalue %dx.types.ResRet.f32 %318, 3
  %320 = fsub fast float 1.000000e+00, %319
  %321 = select i1 %263, float %320, float %319
  %322 = fmul fast float %321, %259
  br label %323

; <label>:323                                     ; preds = %313, %308
  %324 = phi float [ %322, %313 ], [ 0.000000e+00, %308 ]
  %325 = fadd fast float %324, %261
  %326 = call float @dx.op.unary.f32(i32 7, float %325)  ; Saturate(value)
  %327 = fmul fast float %312, %326
  br label %339

; <label>:328                                     ; preds = %248
  br i1 %267, label %329, label %335

; <label>:329                                     ; preds = %328
  %330 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %15, float %35, float %36, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %331 = extractvalue %dx.types.ResRet.f32 %330, 0
  %332 = fsub fast float 1.000000e+00, %331
  %333 = select i1 %263, float %332, float %331
  %334 = fmul fast float %333, %259
  br label %335

; <label>:335                                     ; preds = %329, %328
  %336 = phi float [ %334, %329 ], [ 0.000000e+00, %328 ]
  %337 = fadd fast float %336, %261
  %338 = call float @dx.op.unary.f32(i32 7, float %337)  ; Saturate(value)
  br label %339

; <label>:339                                     ; preds = %335, %323
  %340 = phi float [ %327, %323 ], [ %338, %335 ]
  %341 = fmul fast float %340, %240
  br label %342

; <label>:342                                     ; preds = %339, %239
  %343 = phi float [ %341, %339 ], [ %240, %239 ]
  %344 = and i32 %245, 2
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %440, label %346

; <label>:346                                     ; preds = %342
  %347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %348 = extractvalue %dx.types.CBufRet.f32 %347, 3
  %349 = bitcast float %348 to i32
  %350 = and i32 %349, 65535
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = lshr i32 %349, 16
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = extractvalue %dx.types.CBufRet.f32 %347, 2
  %355 = bitcast float %354 to i32
  %356 = and i32 %355, 65535
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = lshr i32 %355, 16
  %359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %358)  ; LegacyF16ToF32(value)
  %360 = and i32 %244, 2
  %361 = icmp ne i32 %360, 0
  %362 = fcmp fast ogt float %351, 0.000000e+00
  %363 = fcmp fast ogt float %353, 0.000000e+00
  %364 = and i1 %362, %363
  %365 = fcmp fast ogt float %357, 0.000000e+00
  br i1 %364, label %366, label %426

; <label>:366                                     ; preds = %346
  br i1 %365, label %367, label %375

; <label>:367                                     ; preds = %366
  %368 = fmul fast float %353, %34
  %369 = fmul fast float %351, %33
  %370 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %15, float %369, float %368, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %371 = extractvalue %dx.types.ResRet.f32 %370, 0
  %372 = fsub fast float 1.000000e+00, %371
  %373 = select i1 %361, float %372, float %371
  %374 = fmul fast float %373, %357
  br label %375

; <label>:375                                     ; preds = %367, %366
  %376 = phi float [ %374, %367 ], [ 0.000000e+00, %366 ]
  %377 = fadd fast float %376, %359
  %378 = call float @dx.op.unary.f32(i32 7, float %377)  ; Saturate(value)
  br i1 %365, label %379, label %389

; <label>:379                                     ; preds = %375
  %380 = fmul fast float %353, %34
  %381 = fsub fast float 1.000000e+00, %33
  %382 = fmul fast float %351, %381
  %383 = fsub fast float 1.000000e+00, %382
  %384 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %15, float %383, float %380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %385 = extractvalue %dx.types.ResRet.f32 %384, 1
  %386 = fsub fast float 1.000000e+00, %385
  %387 = select i1 %361, float %386, float %385
  %388 = fmul fast float %387, %357
  br label %389

; <label>:389                                     ; preds = %379, %375
  %390 = phi float [ %388, %379 ], [ 0.000000e+00, %375 ]
  %391 = fadd fast float %390, %359
  %392 = call float @dx.op.unary.f32(i32 7, float %391)  ; Saturate(value)
  %393 = fmul fast float %392, %378
  br i1 %365, label %394, label %406

; <label>:394                                     ; preds = %389
  %395 = fsub fast float 1.000000e+00, %34
  %396 = fmul fast float %353, %395
  %397 = fsub fast float 1.000000e+00, %396
  %398 = fsub fast float 1.000000e+00, %33
  %399 = fmul fast float %351, %398
  %400 = fsub fast float 1.000000e+00, %399
  %401 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %15, float %400, float %397, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %402 = extractvalue %dx.types.ResRet.f32 %401, 2
  %403 = fsub fast float 1.000000e+00, %402
  %404 = select i1 %361, float %403, float %402
  %405 = fmul fast float %404, %357
  br label %406

; <label>:406                                     ; preds = %394, %389
  %407 = phi float [ %405, %394 ], [ 0.000000e+00, %389 ]
  %408 = fadd fast float %407, %359
  %409 = call float @dx.op.unary.f32(i32 7, float %408)  ; Saturate(value)
  %410 = fmul fast float %393, %409
  br i1 %365, label %411, label %421

; <label>:411                                     ; preds = %406
  %412 = fsub fast float 1.000000e+00, %34
  %413 = fmul fast float %353, %412
  %414 = fsub fast float 1.000000e+00, %413
  %415 = fmul fast float %351, %33
  %416 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %15, float %415, float %414, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %417 = extractvalue %dx.types.ResRet.f32 %416, 3
  %418 = fsub fast float 1.000000e+00, %417
  %419 = select i1 %361, float %418, float %417
  %420 = fmul fast float %419, %357
  br label %421

; <label>:421                                     ; preds = %411, %406
  %422 = phi float [ %420, %411 ], [ 0.000000e+00, %406 ]
  %423 = fadd fast float %422, %359
  %424 = call float @dx.op.unary.f32(i32 7, float %423)  ; Saturate(value)
  %425 = fmul fast float %410, %424
  br label %437

; <label>:426                                     ; preds = %346
  br i1 %365, label %427, label %433

; <label>:427                                     ; preds = %426
  %428 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %15, float %33, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %429 = extractvalue %dx.types.ResRet.f32 %428, 0
  %430 = fsub fast float 1.000000e+00, %429
  %431 = select i1 %361, float %430, float %429
  %432 = fmul fast float %431, %357
  br label %433

; <label>:433                                     ; preds = %427, %426
  %434 = phi float [ %432, %427 ], [ 0.000000e+00, %426 ]
  %435 = fadd fast float %434, %359
  %436 = call float @dx.op.unary.f32(i32 7, float %435)  ; Saturate(value)
  br label %437

; <label>:437                                     ; preds = %433, %421
  %438 = phi float [ %425, %421 ], [ %436, %433 ]
  %439 = fmul fast float %438, %343
  br label %440

; <label>:440                                     ; preds = %437, %342
  %441 = phi float [ %439, %437 ], [ %343, %342 ]
  %442 = and i32 %245, 4
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %538, label %444

; <label>:444                                     ; preds = %440
  %445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %446 = extractvalue %dx.types.CBufRet.f32 %445, 3
  %447 = bitcast float %446 to i32
  %448 = and i32 %447, 65535
  %449 = call float @dx.op.legacyF16ToF32(i32 131, i32 %448)  ; LegacyF16ToF32(value)
  %450 = lshr i32 %447, 16
  %451 = call float @dx.op.legacyF16ToF32(i32 131, i32 %450)  ; LegacyF16ToF32(value)
  %452 = extractvalue %dx.types.CBufRet.f32 %445, 2
  %453 = bitcast float %452 to i32
  %454 = and i32 %453, 65535
  %455 = call float @dx.op.legacyF16ToF32(i32 131, i32 %454)  ; LegacyF16ToF32(value)
  %456 = lshr i32 %453, 16
  %457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %456)  ; LegacyF16ToF32(value)
  %458 = and i32 %244, 4
  %459 = icmp ne i32 %458, 0
  %460 = fcmp fast ogt float %449, 0.000000e+00
  %461 = fcmp fast ogt float %451, 0.000000e+00
  %462 = and i1 %460, %461
  %463 = fcmp fast ogt float %455, 0.000000e+00
  br i1 %462, label %464, label %524

; <label>:464                                     ; preds = %444
  br i1 %463, label %465, label %473

; <label>:465                                     ; preds = %464
  %466 = fmul fast float %451, %32
  %467 = fmul fast float %449, %31
  %468 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %15, float %467, float %466, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %469 = extractvalue %dx.types.ResRet.f32 %468, 0
  %470 = fsub fast float 1.000000e+00, %469
  %471 = select i1 %459, float %470, float %469
  %472 = fmul fast float %471, %455
  br label %473

; <label>:473                                     ; preds = %465, %464
  %474 = phi float [ %472, %465 ], [ 0.000000e+00, %464 ]
  %475 = fadd fast float %474, %457
  %476 = call float @dx.op.unary.f32(i32 7, float %475)  ; Saturate(value)
  br i1 %463, label %477, label %487

; <label>:477                                     ; preds = %473
  %478 = fmul fast float %451, %32
  %479 = fsub fast float 1.000000e+00, %31
  %480 = fmul fast float %449, %479
  %481 = fsub fast float 1.000000e+00, %480
  %482 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %15, float %481, float %478, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %483 = extractvalue %dx.types.ResRet.f32 %482, 1
  %484 = fsub fast float 1.000000e+00, %483
  %485 = select i1 %459, float %484, float %483
  %486 = fmul fast float %485, %455
  br label %487

; <label>:487                                     ; preds = %477, %473
  %488 = phi float [ %486, %477 ], [ 0.000000e+00, %473 ]
  %489 = fadd fast float %488, %457
  %490 = call float @dx.op.unary.f32(i32 7, float %489)  ; Saturate(value)
  %491 = fmul fast float %490, %476
  br i1 %463, label %492, label %504

; <label>:492                                     ; preds = %487
  %493 = fsub fast float 1.000000e+00, %32
  %494 = fmul fast float %451, %493
  %495 = fsub fast float 1.000000e+00, %494
  %496 = fsub fast float 1.000000e+00, %31
  %497 = fmul fast float %449, %496
  %498 = fsub fast float 1.000000e+00, %497
  %499 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %15, float %498, float %495, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %500 = extractvalue %dx.types.ResRet.f32 %499, 2
  %501 = fsub fast float 1.000000e+00, %500
  %502 = select i1 %459, float %501, float %500
  %503 = fmul fast float %502, %455
  br label %504

; <label>:504                                     ; preds = %492, %487
  %505 = phi float [ %503, %492 ], [ 0.000000e+00, %487 ]
  %506 = fadd fast float %505, %457
  %507 = call float @dx.op.unary.f32(i32 7, float %506)  ; Saturate(value)
  %508 = fmul fast float %491, %507
  br i1 %463, label %509, label %519

; <label>:509                                     ; preds = %504
  %510 = fsub fast float 1.000000e+00, %32
  %511 = fmul fast float %451, %510
  %512 = fsub fast float 1.000000e+00, %511
  %513 = fmul fast float %449, %31
  %514 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %15, float %513, float %512, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %515 = extractvalue %dx.types.ResRet.f32 %514, 3
  %516 = fsub fast float 1.000000e+00, %515
  %517 = select i1 %459, float %516, float %515
  %518 = fmul fast float %517, %455
  br label %519

; <label>:519                                     ; preds = %509, %504
  %520 = phi float [ %518, %509 ], [ 0.000000e+00, %504 ]
  %521 = fadd fast float %520, %457
  %522 = call float @dx.op.unary.f32(i32 7, float %521)  ; Saturate(value)
  %523 = fmul fast float %508, %522
  br label %535

; <label>:524                                     ; preds = %444
  br i1 %463, label %525, label %531

; <label>:525                                     ; preds = %524
  %526 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %15, float %31, float %32, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %527 = extractvalue %dx.types.ResRet.f32 %526, 0
  %528 = fsub fast float 1.000000e+00, %527
  %529 = select i1 %459, float %528, float %527
  %530 = fmul fast float %529, %455
  br label %531

; <label>:531                                     ; preds = %525, %524
  %532 = phi float [ %530, %525 ], [ 0.000000e+00, %524 ]
  %533 = fadd fast float %532, %457
  %534 = call float @dx.op.unary.f32(i32 7, float %533)  ; Saturate(value)
  br label %535

; <label>:535                                     ; preds = %531, %519
  %536 = phi float [ %523, %519 ], [ %534, %531 ]
  %537 = fmul fast float %536, %441
  br label %538

; <label>:538                                     ; preds = %535, %440
  %539 = phi float [ %537, %535 ], [ %441, %440 ]
  %540 = and i32 %245, 8
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %636, label %542

; <label>:542                                     ; preds = %538
  %543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %544 = extractvalue %dx.types.CBufRet.f32 %543, 3
  %545 = bitcast float %544 to i32
  %546 = and i32 %545, 65535
  %547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %546)  ; LegacyF16ToF32(value)
  %548 = lshr i32 %545, 16
  %549 = call float @dx.op.legacyF16ToF32(i32 131, i32 %548)  ; LegacyF16ToF32(value)
  %550 = extractvalue %dx.types.CBufRet.f32 %543, 2
  %551 = bitcast float %550 to i32
  %552 = and i32 %551, 65535
  %553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %552)  ; LegacyF16ToF32(value)
  %554 = lshr i32 %551, 16
  %555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %554)  ; LegacyF16ToF32(value)
  %556 = and i32 %244, 8
  %557 = icmp ne i32 %556, 0
  %558 = fcmp fast ogt float %547, 0.000000e+00
  %559 = fcmp fast ogt float %549, 0.000000e+00
  %560 = and i1 %558, %559
  %561 = fcmp fast ogt float %553, 0.000000e+00
  br i1 %560, label %562, label %622

; <label>:562                                     ; preds = %542
  br i1 %561, label %563, label %571

; <label>:563                                     ; preds = %562
  %564 = fmul fast float %549, %30
  %565 = fmul fast float %547, %29
  %566 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %15, float %565, float %564, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %567 = extractvalue %dx.types.ResRet.f32 %566, 0
  %568 = fsub fast float 1.000000e+00, %567
  %569 = select i1 %557, float %568, float %567
  %570 = fmul fast float %569, %553
  br label %571

; <label>:571                                     ; preds = %563, %562
  %572 = phi float [ %570, %563 ], [ 0.000000e+00, %562 ]
  %573 = fadd fast float %572, %555
  %574 = call float @dx.op.unary.f32(i32 7, float %573)  ; Saturate(value)
  br i1 %561, label %575, label %585

; <label>:575                                     ; preds = %571
  %576 = fmul fast float %549, %30
  %577 = fsub fast float 1.000000e+00, %29
  %578 = fmul fast float %547, %577
  %579 = fsub fast float 1.000000e+00, %578
  %580 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %15, float %579, float %576, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %581 = extractvalue %dx.types.ResRet.f32 %580, 1
  %582 = fsub fast float 1.000000e+00, %581
  %583 = select i1 %557, float %582, float %581
  %584 = fmul fast float %583, %553
  br label %585

; <label>:585                                     ; preds = %575, %571
  %586 = phi float [ %584, %575 ], [ 0.000000e+00, %571 ]
  %587 = fadd fast float %586, %555
  %588 = call float @dx.op.unary.f32(i32 7, float %587)  ; Saturate(value)
  %589 = fmul fast float %588, %574
  br i1 %561, label %590, label %602

; <label>:590                                     ; preds = %585
  %591 = fsub fast float 1.000000e+00, %30
  %592 = fmul fast float %549, %591
  %593 = fsub fast float 1.000000e+00, %592
  %594 = fsub fast float 1.000000e+00, %29
  %595 = fmul fast float %547, %594
  %596 = fsub fast float 1.000000e+00, %595
  %597 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %15, float %596, float %593, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %598 = extractvalue %dx.types.ResRet.f32 %597, 2
  %599 = fsub fast float 1.000000e+00, %598
  %600 = select i1 %557, float %599, float %598
  %601 = fmul fast float %600, %553
  br label %602

; <label>:602                                     ; preds = %590, %585
  %603 = phi float [ %601, %590 ], [ 0.000000e+00, %585 ]
  %604 = fadd fast float %603, %555
  %605 = call float @dx.op.unary.f32(i32 7, float %604)  ; Saturate(value)
  %606 = fmul fast float %589, %605
  br i1 %561, label %607, label %617

; <label>:607                                     ; preds = %602
  %608 = fsub fast float 1.000000e+00, %30
  %609 = fmul fast float %549, %608
  %610 = fsub fast float 1.000000e+00, %609
  %611 = fmul fast float %547, %29
  %612 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %15, float %611, float %610, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %613 = extractvalue %dx.types.ResRet.f32 %612, 3
  %614 = fsub fast float 1.000000e+00, %613
  %615 = select i1 %557, float %614, float %613
  %616 = fmul fast float %615, %553
  br label %617

; <label>:617                                     ; preds = %607, %602
  %618 = phi float [ %616, %607 ], [ 0.000000e+00, %602 ]
  %619 = fadd fast float %618, %555
  %620 = call float @dx.op.unary.f32(i32 7, float %619)  ; Saturate(value)
  %621 = fmul fast float %606, %620
  br label %633

; <label>:622                                     ; preds = %542
  br i1 %561, label %623, label %629

; <label>:623                                     ; preds = %622
  %624 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %15, float %29, float %30, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %625 = extractvalue %dx.types.ResRet.f32 %624, 0
  %626 = fsub fast float 1.000000e+00, %625
  %627 = select i1 %557, float %626, float %625
  %628 = fmul fast float %627, %553
  br label %629

; <label>:629                                     ; preds = %623, %622
  %630 = phi float [ %628, %623 ], [ 0.000000e+00, %622 ]
  %631 = fadd fast float %630, %555
  %632 = call float @dx.op.unary.f32(i32 7, float %631)  ; Saturate(value)
  br label %633

; <label>:633                                     ; preds = %629, %617
  %634 = phi float [ %621, %617 ], [ %632, %629 ]
  %635 = fmul fast float %634, %539
  br label %636

; <label>:636                                     ; preds = %633, %538
  %637 = phi float [ %635, %633 ], [ %539, %538 ]
  %638 = and i32 %245, 16
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %734, label %640

; <label>:640                                     ; preds = %636
  %641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %642 = extractvalue %dx.types.CBufRet.f32 %641, 3
  %643 = bitcast float %642 to i32
  %644 = and i32 %643, 65535
  %645 = call float @dx.op.legacyF16ToF32(i32 131, i32 %644)  ; LegacyF16ToF32(value)
  %646 = lshr i32 %643, 16
  %647 = call float @dx.op.legacyF16ToF32(i32 131, i32 %646)  ; LegacyF16ToF32(value)
  %648 = extractvalue %dx.types.CBufRet.f32 %641, 2
  %649 = bitcast float %648 to i32
  %650 = and i32 %649, 65535
  %651 = call float @dx.op.legacyF16ToF32(i32 131, i32 %650)  ; LegacyF16ToF32(value)
  %652 = lshr i32 %649, 16
  %653 = call float @dx.op.legacyF16ToF32(i32 131, i32 %652)  ; LegacyF16ToF32(value)
  %654 = and i32 %244, 16
  %655 = icmp ne i32 %654, 0
  %656 = fcmp fast ogt float %645, 0.000000e+00
  %657 = fcmp fast ogt float %647, 0.000000e+00
  %658 = and i1 %656, %657
  %659 = fcmp fast ogt float %651, 0.000000e+00
  br i1 %658, label %660, label %720

; <label>:660                                     ; preds = %640
  br i1 %659, label %661, label %669

; <label>:661                                     ; preds = %660
  %662 = fmul fast float %647, %28
  %663 = fmul fast float %645, %27
  %664 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %15, float %663, float %662, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %665 = extractvalue %dx.types.ResRet.f32 %664, 0
  %666 = fsub fast float 1.000000e+00, %665
  %667 = select i1 %655, float %666, float %665
  %668 = fmul fast float %667, %651
  br label %669

; <label>:669                                     ; preds = %661, %660
  %670 = phi float [ %668, %661 ], [ 0.000000e+00, %660 ]
  %671 = fadd fast float %670, %653
  %672 = call float @dx.op.unary.f32(i32 7, float %671)  ; Saturate(value)
  br i1 %659, label %673, label %683

; <label>:673                                     ; preds = %669
  %674 = fmul fast float %647, %28
  %675 = fsub fast float 1.000000e+00, %27
  %676 = fmul fast float %645, %675
  %677 = fsub fast float 1.000000e+00, %676
  %678 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %15, float %677, float %674, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %679 = extractvalue %dx.types.ResRet.f32 %678, 1
  %680 = fsub fast float 1.000000e+00, %679
  %681 = select i1 %655, float %680, float %679
  %682 = fmul fast float %681, %651
  br label %683

; <label>:683                                     ; preds = %673, %669
  %684 = phi float [ %682, %673 ], [ 0.000000e+00, %669 ]
  %685 = fadd fast float %684, %653
  %686 = call float @dx.op.unary.f32(i32 7, float %685)  ; Saturate(value)
  %687 = fmul fast float %686, %672
  br i1 %659, label %688, label %700

; <label>:688                                     ; preds = %683
  %689 = fsub fast float 1.000000e+00, %28
  %690 = fmul fast float %647, %689
  %691 = fsub fast float 1.000000e+00, %690
  %692 = fsub fast float 1.000000e+00, %27
  %693 = fmul fast float %645, %692
  %694 = fsub fast float 1.000000e+00, %693
  %695 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %15, float %694, float %691, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %696 = extractvalue %dx.types.ResRet.f32 %695, 2
  %697 = fsub fast float 1.000000e+00, %696
  %698 = select i1 %655, float %697, float %696
  %699 = fmul fast float %698, %651
  br label %700

; <label>:700                                     ; preds = %688, %683
  %701 = phi float [ %699, %688 ], [ 0.000000e+00, %683 ]
  %702 = fadd fast float %701, %653
  %703 = call float @dx.op.unary.f32(i32 7, float %702)  ; Saturate(value)
  %704 = fmul fast float %687, %703
  br i1 %659, label %705, label %715

; <label>:705                                     ; preds = %700
  %706 = fsub fast float 1.000000e+00, %28
  %707 = fmul fast float %647, %706
  %708 = fsub fast float 1.000000e+00, %707
  %709 = fmul fast float %645, %27
  %710 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %15, float %709, float %708, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %711 = extractvalue %dx.types.ResRet.f32 %710, 3
  %712 = fsub fast float 1.000000e+00, %711
  %713 = select i1 %655, float %712, float %711
  %714 = fmul fast float %713, %651
  br label %715

; <label>:715                                     ; preds = %705, %700
  %716 = phi float [ %714, %705 ], [ 0.000000e+00, %700 ]
  %717 = fadd fast float %716, %653
  %718 = call float @dx.op.unary.f32(i32 7, float %717)  ; Saturate(value)
  %719 = fmul fast float %704, %718
  br label %731

; <label>:720                                     ; preds = %640
  br i1 %659, label %721, label %727

; <label>:721                                     ; preds = %720
  %722 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %15, float %27, float %28, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %723 = extractvalue %dx.types.ResRet.f32 %722, 0
  %724 = fsub fast float 1.000000e+00, %723
  %725 = select i1 %655, float %724, float %723
  %726 = fmul fast float %725, %651
  br label %727

; <label>:727                                     ; preds = %721, %720
  %728 = phi float [ %726, %721 ], [ 0.000000e+00, %720 ]
  %729 = fadd fast float %728, %653
  %730 = call float @dx.op.unary.f32(i32 7, float %729)  ; Saturate(value)
  br label %731

; <label>:731                                     ; preds = %727, %715
  %732 = phi float [ %719, %715 ], [ %730, %727 ]
  %733 = fmul fast float %732, %637
  br label %734

; <label>:734                                     ; preds = %731, %636
  %735 = phi float [ %733, %731 ], [ %637, %636 ]
  %736 = call float @dx.op.binary.f32(i32 35, float %735, float 0.000000e+00)  ; FMax(a,b)
  %737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %738 = extractvalue %dx.types.CBufRet.f32 %737, 3
  %739 = bitcast float %738 to i32
  %740 = and i32 %739, 1
  %741 = icmp eq i32 %740, 0
  %742 = and i32 %739, 4
  %743 = icmp eq i32 %742, 0
  br i1 %741, label %817, label %744, !dx.controlflow.hints !62

; <label>:744                                     ; preds = %734
  %745 = and i32 %739, 2
  %746 = icmp eq i32 %745, 0
  %747 = extractvalue %dx.types.CBufRet.f32 %737, 0
  %748 = extractvalue %dx.types.CBufRet.f32 %737, 1
  %749 = extractvalue %dx.types.CBufRet.f32 %737, 2
  %750 = fmul fast float %747, %39
  %751 = fmul fast float %748, %40
  %752 = fmul fast float %749, %41
  %753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %754 = extractvalue %dx.types.CBufRet.f32 %753, 0
  %755 = fmul fast float %754, %750
  %756 = fmul fast float %754, %751
  %757 = fmul fast float %754, %752
  br i1 %746, label %817, label %758, !dx.controlflow.hints !63

; <label>:758                                     ; preds = %744
  %759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %760 = extractvalue %dx.types.CBufRet.f32 %759, 0
  %761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %762 = extractvalue %dx.types.CBufRet.f32 %761, 0
  %763 = extractvalue %dx.types.CBufRet.f32 %761, 1
  %764 = extractvalue %dx.types.CBufRet.f32 %761, 2
  %765 = call float @dx.op.dot3.f32(i32 55, float %755, float %756, float %757, float %762, float %763, float %764)  ; Dot3(ax,ay,az,bx,by,bz)
  %766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %767 = extractvalue %dx.types.CBufRet.f32 %766, 0
  %768 = extractvalue %dx.types.CBufRet.f32 %766, 1
  %769 = extractvalue %dx.types.CBufRet.f32 %766, 2
  %770 = call float @dx.op.dot3.f32(i32 55, float %755, float %756, float %757, float %767, float %768, float %769)  ; Dot3(ax,ay,az,bx,by,bz)
  %771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %772 = extractvalue %dx.types.CBufRet.f32 %771, 0
  %773 = extractvalue %dx.types.CBufRet.f32 %771, 1
  %774 = extractvalue %dx.types.CBufRet.f32 %771, 2
  %775 = call float @dx.op.dot3.f32(i32 55, float %755, float %756, float %757, float %772, float %773, float %774)  ; Dot3(ax,ay,az,bx,by,bz)
  %776 = fmul fast float %765, %760
  %777 = fmul fast float %770, %760
  %778 = fmul fast float %775, %760
  %779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %780 = extractvalue %dx.types.CBufRet.f32 %779, 2
  %781 = fmul fast float %776, %780
  %782 = fmul fast float %777, %780
  %783 = fmul fast float %778, %780
  %784 = fadd fast float %781, 9.765625e-04
  %785 = fadd fast float %782, 9.765625e-04
  %786 = fadd fast float %783, 9.765625e-04
  %787 = call float @dx.op.unary.f32(i32 23, float %784)  ; Log(value)
  %788 = call float @dx.op.unary.f32(i32 23, float %785)  ; Log(value)
  %789 = call float @dx.op.unary.f32(i32 23, float %786)  ; Log(value)
  %790 = fadd fast float %787, 1.000000e+01
  %791 = fadd fast float %788, 1.000000e+01
  %792 = fadd fast float %789, 1.000000e+01
  %793 = fmul fast float %790, 0x3FA99999A0000000
  %794 = fmul fast float %791, 0x3FA99999A0000000
  %795 = fmul fast float %792, 0x3FA99999A0000000
  %796 = call float @dx.op.unary.f32(i32 7, float %793)  ; Saturate(value)
  %797 = call float @dx.op.unary.f32(i32 7, float %794)  ; Saturate(value)
  %798 = call float @dx.op.unary.f32(i32 7, float %795)  ; Saturate(value)
  %799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %800 = extractvalue %dx.types.CBufRet.f32 %799, 0
  %801 = extractvalue %dx.types.CBufRet.f32 %799, 1
  %802 = extractvalue %dx.types.CBufRet.f32 %799, 2
  %803 = fmul fast float %800, %796
  %804 = fmul fast float %801, %797
  %805 = fmul fast float %802, %798
  %806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %807 = extractvalue %dx.types.CBufRet.f32 %806, 0
  %808 = extractvalue %dx.types.CBufRet.f32 %806, 1
  %809 = extractvalue %dx.types.CBufRet.f32 %806, 2
  %810 = fadd fast float %803, %807
  %811 = fadd fast float %804, %808
  %812 = fadd fast float %805, %809
  %813 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %810, float %811, float %812, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %814 = extractvalue %dx.types.ResRet.f32 %813, 0
  %815 = extractvalue %dx.types.ResRet.f32 %813, 1
  %816 = extractvalue %dx.types.ResRet.f32 %813, 2
  br label %817

; <label>:817                                     ; preds = %758, %744, %734
  %818 = phi float [ %814, %758 ], [ %39, %734 ], [ %755, %744 ]
  %819 = phi float [ %815, %758 ], [ %40, %734 ], [ %756, %744 ]
  %820 = phi float [ %816, %758 ], [ %41, %734 ], [ %757, %744 ]
  %821 = fcmp fast oeq float %736, 0.000000e+00
  br i1 %821, label %822, label %823, !dx.controlflow.hints !64

; <label>:822                                     ; preds = %817
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %823

; <label>:823                                     ; preds = %822, %817
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %824 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %16, float %23, float %24, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %825 = extractvalue %dx.types.ResRet.f32 %824, 0
  %826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %827 = extractvalue %dx.types.CBufRet.f32 %826, 3
  %828 = bitcast float %827 to i32
  %829 = and i32 %828, 65535
  %830 = call float @dx.op.legacyF16ToF32(i32 131, i32 %829)  ; LegacyF16ToF32(value)
  %831 = fcmp fast une float %830, 0.000000e+00
  %832 = select i1 %831, float 0.000000e+00, float 1.000000e+00
  %833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %834 = extractvalue %dx.types.CBufRet.f32 %833, 3
  %835 = fmul fast float %834, %825
  %836 = fmul fast float %835, %832
  %837 = fsub fast float 1.000000e+00, %836
  %838 = fmul fast float %837, %818
  %839 = fmul fast float %837, %819
  %840 = fmul fast float %837, %820
  %841 = extractvalue %dx.types.CBufRet.f32 %833, 0
  %842 = extractvalue %dx.types.CBufRet.f32 %833, 1
  %843 = extractvalue %dx.types.CBufRet.f32 %833, 2
  %844 = fmul fast float %841, %835
  %845 = fmul fast float %842, %835
  %846 = fmul fast float %843, %835
  %847 = fadd fast float %838, %844
  %848 = fadd fast float %839, %845
  %849 = fadd fast float %840, %846
  %850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %851 = extractvalue %dx.types.CBufRet.f32 %850, 2
  %852 = fcmp fast ogt float %851, 0.000000e+00
  br i1 %852, label %853, label %919, !dx.controlflow.hints !65

; <label>:853                                     ; preds = %823
  %854 = fcmp fast oeq float %851, 2.000000e+00
  br i1 %854, label %855, label %907, !dx.controlflow.hints !66

; <label>:855                                     ; preds = %853
  %856 = fcmp fast ole float %847, 0x3F69A5C380000000
  %857 = fcmp fast ole float %848, 0x3F69A5C380000000
  %858 = fcmp fast ole float %849, 0x3F69A5C380000000
  %859 = fmul fast float %847, 0x4029D70A40000000
  %860 = fmul fast float %848, 0x4029D70A40000000
  %861 = fmul fast float %849, 0x4029D70A40000000
  %862 = call float @dx.op.unary.f32(i32 23, float %847)  ; Log(value)
  %863 = call float @dx.op.unary.f32(i32 23, float %848)  ; Log(value)
  %864 = call float @dx.op.unary.f32(i32 23, float %849)  ; Log(value)
  %865 = fmul fast float %862, 0x3FDAAAAAA0000000
  %866 = fmul fast float %863, 0x3FDAAAAAA0000000
  %867 = fmul fast float %864, 0x3FDAAAAAA0000000
  %868 = call float @dx.op.unary.f32(i32 21, float %865)  ; Exp(value)
  %869 = call float @dx.op.unary.f32(i32 21, float %866)  ; Exp(value)
  %870 = call float @dx.op.unary.f32(i32 21, float %867)  ; Exp(value)
  %871 = fmul fast float %868, 0x3FF0E147A0000000
  %872 = fmul fast float %869, 0x3FF0E147A0000000
  %873 = fmul fast float %870, 0x3FF0E147A0000000
  %874 = fadd fast float %871, 0xBFAC28F5C0000000
  %875 = fadd fast float %872, 0xBFAC28F5C0000000
  %876 = fadd fast float %873, 0xBFAC28F5C0000000
  %877 = select i1 %856, float %859, float %874
  %878 = select i1 %857, float %860, float %875
  %879 = select i1 %858, float %861, float %876
  %880 = fsub fast float 1.000000e+00, %877
  %881 = fsub fast float 1.000000e+00, %878
  %882 = fsub fast float 1.000000e+00, %879
  %883 = fcmp fast ole float %880, 0x3FA4B5DCC0000000
  %884 = fmul fast float %880, 0x3FB3D07220000000
  %885 = fsub fast float 0x3FF0E147A0000000, %877
  %886 = fmul fast float %885, 0x3FEE54EDE0000000
  %887 = call float @dx.op.unary.f32(i32 23, float %886)  ; Log(value)
  %888 = fmul fast float %887, 0x4003333340000000
  %889 = call float @dx.op.unary.f32(i32 21, float %888)  ; Exp(value)
  %890 = select i1 %883, float %884, float %889
  %891 = fcmp fast ole float %881, 0x3FA4B5DCC0000000
  %892 = fmul fast float %881, 0x3FB3D07220000000
  %893 = fsub fast float 0x3FF0E147A0000000, %878
  %894 = fmul fast float %893, 0x3FEE54EDE0000000
  %895 = call float @dx.op.unary.f32(i32 23, float %894)  ; Log(value)
  %896 = fmul fast float %895, 0x4003333340000000
  %897 = call float @dx.op.unary.f32(i32 21, float %896)  ; Exp(value)
  %898 = select i1 %891, float %892, float %897
  %899 = fcmp fast ole float %882, 0x3FA4B5DCC0000000
  %900 = fmul fast float %882, 0x3FB3D07220000000
  %901 = fsub fast float 0x3FF0E147A0000000, %879
  %902 = fmul fast float %901, 0x3FEE54EDE0000000
  %903 = call float @dx.op.unary.f32(i32 23, float %902)  ; Log(value)
  %904 = fmul fast float %903, 0x4003333340000000
  %905 = call float @dx.op.unary.f32(i32 21, float %904)  ; Exp(value)
  %906 = select i1 %899, float %900, float %905
  br label %919

; <label>:907                                     ; preds = %853
  %908 = call float @dx.op.dot3.f32(i32 55, float %847, float %848, float %849, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %909 = extractvalue %dx.types.CBufRet.f32 %850, 3
  %910 = fsub fast float %847, %908
  %911 = fsub fast float %848, %908
  %912 = fsub fast float %849, %908
  %913 = fmul fast float %909, %910
  %914 = fmul fast float %909, %911
  %915 = fmul fast float %909, %912
  %916 = fadd fast float %913, %908
  %917 = fadd fast float %914, %908
  %918 = fadd fast float %915, %908
  br label %919

; <label>:919                                     ; preds = %907, %855, %823
  %920 = phi float [ %890, %855 ], [ %916, %907 ], [ %847, %823 ]
  %921 = phi float [ %898, %855 ], [ %917, %907 ], [ %848, %823 ]
  %922 = phi float [ %906, %855 ], [ %918, %907 ], [ %849, %823 ]
  %923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %924 = extractvalue %dx.types.CBufRet.f32 %923, 0
  %925 = fcmp fast une float %924, 0.000000e+00
  br i1 %925, label %926, label %1100, !dx.controlflow.hints !67

; <label>:926                                     ; preds = %919
  %927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %928 = extractvalue %dx.types.CBufRet.f32 %927, 0
  %929 = extractvalue %dx.types.CBufRet.f32 %927, 1
  %930 = fsub fast float %43, %928
  %931 = fsub fast float %44, %929
  %932 = extractvalue %dx.types.CBufRet.f32 %927, 2
  %933 = extractvalue %dx.types.CBufRet.f32 %927, 3
  %934 = fmul fast float %930, %932
  %935 = fmul fast float %931, %933
  %936 = call float @dx.op.unary.f32(i32 6, float %924)  ; FAbs(value)
  %937 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %934, float %935, float undef, float undef, i32 0, i32 0, i32 undef, float %936)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %938 = extractvalue %dx.types.ResRet.f32 %937, 0
  %939 = extractvalue %dx.types.ResRet.f32 %937, 1
  %940 = extractvalue %dx.types.ResRet.f32 %937, 2
  %941 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %942 = extractvalue %dx.types.CBufRet.i32 %941, 3
  %943 = and i32 %942, 3
  %944 = icmp ne i32 %943, 0
  %945 = and i32 %942, 4
  %946 = icmp eq i32 %945, 0
  %947 = and i1 %944, %946
  br i1 %947, label %948, label %992

; <label>:948                                     ; preds = %926
  %949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %950 = extractvalue %dx.types.CBufRet.f32 %949, 0
  %951 = fcmp fast oge float %939, %950
  %952 = zext i1 %951 to i32
  br i1 %951, label %953, label %992

; <label>:953                                     ; preds = %948
  %954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %955 = extractvalue %dx.types.CBufRet.f32 %954, 3
  %956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %957 = extractvalue %dx.types.CBufRet.f32 %956, 2
  %958 = fcmp fast ogt float %957, 0.000000e+00
  br i1 %958, label %959, label %967, !dx.controlflow.hints !68

; <label>:959                                     ; preds = %953
  %960 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %17, float %939, float 0.000000e+00, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %961 = extractvalue %dx.types.ResRet.f32 %960, 0
  %962 = extractvalue %dx.types.ResRet.f32 %960, 1
  %963 = extractvalue %dx.types.ResRet.f32 %960, 2
  %964 = fcmp fast ogt float %957, 1.500000e+00
  %965 = select i1 %964, float %961, float %962
  %966 = select i1 %964, float %961, float %963
  br label %985

; <label>:967                                     ; preds = %953
  %968 = call float @dx.op.unary.f32(i32 7, float %939)  ; Saturate(value)
  %969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 238)  ; CBufferLoadLegacy(handle,regIndex)
  %970 = extractvalue %dx.types.CBufRet.f32 %969, 0
  %971 = extractvalue %dx.types.CBufRet.f32 %969, 1
  %972 = extractvalue %dx.types.CBufRet.f32 %969, 2
  %973 = extractvalue %dx.types.CBufRet.f32 %954, 0
  %974 = extractvalue %dx.types.CBufRet.f32 %954, 1
  %975 = extractvalue %dx.types.CBufRet.f32 %954, 2
  %976 = fsub fast float %970, %973
  %977 = fsub fast float %971, %974
  %978 = fsub fast float %972, %975
  %979 = fmul fast float %976, %968
  %980 = fmul fast float %977, %968
  %981 = fmul fast float %978, %968
  %982 = fadd fast float %979, %973
  %983 = fadd fast float %980, %974
  %984 = fadd fast float %981, %975
  br label %985

; <label>:985                                     ; preds = %967, %959
  %986 = phi float [ %961, %959 ], [ %982, %967 ]
  %987 = phi float [ %965, %959 ], [ %983, %967 ]
  %988 = phi float [ %966, %959 ], [ %984, %967 ]
  %989 = fmul fast float %986, %955
  %990 = fmul fast float %987, %955
  %991 = fmul fast float %988, %955
  br label %992

; <label>:992                                     ; preds = %985, %948, %926
  %993 = phi float [ %989, %985 ], [ %938, %926 ], [ %938, %948 ]
  %994 = phi float [ %990, %985 ], [ %939, %926 ], [ %938, %948 ]
  %995 = phi float [ %991, %985 ], [ %940, %926 ], [ %938, %948 ]
  %996 = phi i32 [ %952, %985 ], [ 0, %926 ], [ %952, %948 ]
  %997 = icmp eq i32 %996, 0
  br i1 %997, label %998, label %1052

; <label>:998                                     ; preds = %992
  %999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1000 = extractvalue %dx.types.CBufRet.f32 %999, 0
  %1001 = extractvalue %dx.types.CBufRet.f32 %999, 1
  %1002 = extractvalue %dx.types.CBufRet.f32 %999, 2
  %1003 = call float @dx.op.dot3.f32(i32 55, float %993, float %994, float %995, float %1000, float %1001, float %1002)  ; Dot3(ax,ay,az,bx,by,bz)
  %1004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1005 = extractvalue %dx.types.CBufRet.f32 %1004, 0
  %1006 = extractvalue %dx.types.CBufRet.f32 %1004, 1
  %1007 = extractvalue %dx.types.CBufRet.f32 %1004, 2
  %1008 = call float @dx.op.dot3.f32(i32 55, float %993, float %994, float %995, float %1005, float %1006, float %1007)  ; Dot3(ax,ay,az,bx,by,bz)
  %1009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1010 = extractvalue %dx.types.CBufRet.f32 %1009, 0
  %1011 = extractvalue %dx.types.CBufRet.f32 %1009, 1
  %1012 = extractvalue %dx.types.CBufRet.f32 %1009, 2
  %1013 = call float @dx.op.dot3.f32(i32 55, float %993, float %994, float %995, float %1010, float %1011, float %1012)  ; Dot3(ax,ay,az,bx,by,bz)
  %1014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %1015 = extractvalue %dx.types.CBufRet.f32 %1014, 2
  %1016 = fmul fast float %1015, %1003
  %1017 = fmul fast float %1015, %1008
  %1018 = fmul fast float %1015, %1013
  %1019 = fadd fast float %1016, 9.765625e-04
  %1020 = fadd fast float %1017, 9.765625e-04
  %1021 = fadd fast float %1018, 9.765625e-04
  %1022 = call float @dx.op.unary.f32(i32 23, float %1019)  ; Log(value)
  %1023 = call float @dx.op.unary.f32(i32 23, float %1020)  ; Log(value)
  %1024 = call float @dx.op.unary.f32(i32 23, float %1021)  ; Log(value)
  %1025 = fadd fast float %1022, 1.000000e+01
  %1026 = fadd fast float %1023, 1.000000e+01
  %1027 = fadd fast float %1024, 1.000000e+01
  %1028 = fmul fast float %1025, 0x3FA99999A0000000
  %1029 = fmul fast float %1026, 0x3FA99999A0000000
  %1030 = fmul fast float %1027, 0x3FA99999A0000000
  %1031 = call float @dx.op.unary.f32(i32 7, float %1028)  ; Saturate(value)
  %1032 = call float @dx.op.unary.f32(i32 7, float %1029)  ; Saturate(value)
  %1033 = call float @dx.op.unary.f32(i32 7, float %1030)  ; Saturate(value)
  %1034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %1035 = extractvalue %dx.types.CBufRet.f32 %1034, 0
  %1036 = extractvalue %dx.types.CBufRet.f32 %1034, 1
  %1037 = extractvalue %dx.types.CBufRet.f32 %1034, 2
  %1038 = fmul fast float %1035, %1031
  %1039 = fmul fast float %1036, %1032
  %1040 = fmul fast float %1037, %1033
  %1041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1042 = extractvalue %dx.types.CBufRet.f32 %1041, 0
  %1043 = extractvalue %dx.types.CBufRet.f32 %1041, 1
  %1044 = extractvalue %dx.types.CBufRet.f32 %1041, 2
  %1045 = fadd fast float %1038, %1042
  %1046 = fadd fast float %1039, %1043
  %1047 = fadd fast float %1040, %1044
  %1048 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %1045, float %1046, float %1047, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1049 = extractvalue %dx.types.ResRet.f32 %1048, 0
  %1050 = extractvalue %dx.types.ResRet.f32 %1048, 1
  %1051 = extractvalue %dx.types.ResRet.f32 %1048, 2
  br label %1052

; <label>:1052                                    ; preds = %998, %992
  %1053 = phi float [ %993, %992 ], [ %1049, %998 ]
  %1054 = phi float [ %994, %992 ], [ %1050, %998 ]
  %1055 = phi float [ %995, %992 ], [ %1051, %998 ]
  %1056 = fcmp fast ole float %1053, 0x3FA4B5DCC0000000
  %1057 = fmul fast float %1053, 0x3FB3D07220000000
  %1058 = fadd fast float %1053, 0x3FAC28F5C0000000
  %1059 = fmul fast float %1058, 0x3FEE54EDE0000000
  %1060 = call float @dx.op.unary.f32(i32 23, float %1059)  ; Log(value)
  %1061 = fmul fast float %1060, 0x4003333340000000
  %1062 = call float @dx.op.unary.f32(i32 21, float %1061)  ; Exp(value)
  %1063 = select i1 %1056, float %1057, float %1062
  %1064 = fcmp fast ole float %1054, 0x3FA4B5DCC0000000
  %1065 = fmul fast float %1054, 0x3FB3D07220000000
  %1066 = fadd fast float %1054, 0x3FAC28F5C0000000
  %1067 = fmul fast float %1066, 0x3FEE54EDE0000000
  %1068 = call float @dx.op.unary.f32(i32 23, float %1067)  ; Log(value)
  %1069 = fmul fast float %1068, 0x4003333340000000
  %1070 = call float @dx.op.unary.f32(i32 21, float %1069)  ; Exp(value)
  %1071 = select i1 %1064, float %1065, float %1070
  %1072 = fcmp fast ole float %1055, 0x3FA4B5DCC0000000
  %1073 = fmul fast float %1055, 0x3FB3D07220000000
  %1074 = fadd fast float %1055, 0x3FAC28F5C0000000
  %1075 = fmul fast float %1074, 0x3FEE54EDE0000000
  %1076 = call float @dx.op.unary.f32(i32 23, float %1075)  ; Log(value)
  %1077 = fmul fast float %1076, 0x4003333340000000
  %1078 = call float @dx.op.unary.f32(i32 21, float %1077)  ; Exp(value)
  %1079 = select i1 %1072, float %1073, float %1078
  %1080 = fcmp fast olt float %924, 0.000000e+00
  br i1 %1080, label %1081, label %1093

; <label>:1081                                    ; preds = %1052
  %1082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %1083 = extractvalue %dx.types.CBufRet.f32 %1082, 0
  %1084 = extractvalue %dx.types.CBufRet.f32 %1082, 1
  %1085 = extractvalue %dx.types.CBufRet.f32 %1082, 2
  %1086 = call float @dx.op.dot3.f32(i32 55, float %1063, float %1071, float %1079, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1087 = fsub fast float %1086, %1083
  %1088 = fmul fast float %1087, %1084
  %1089 = call float @dx.op.unary.f32(i32 7, float %1088)  ; Saturate(value)
  %1090 = fsub fast float 1.000000e+00, %1085
  %1091 = fmul fast float %1089, %1090
  %1092 = fadd fast float %1091, %1085
  br label %1093

; <label>:1093                                    ; preds = %1081, %1052
  %1094 = phi float [ %1092, %1081 ], [ %1063, %1052 ]
  %1095 = phi float [ %1092, %1081 ], [ %1071, %1052 ]
  %1096 = phi float [ %1092, %1081 ], [ %1079, %1052 ]
  %1097 = fmul fast float %1094, %920
  %1098 = fmul fast float %1095, %921
  %1099 = fmul fast float %1096, %922
  br label %1100

; <label>:1100                                    ; preds = %1093, %919
  %1101 = phi float [ %1097, %1093 ], [ %920, %919 ]
  %1102 = phi float [ %1098, %1093 ], [ %921, %919 ]
  %1103 = phi float [ %1099, %1093 ], [ %922, %919 ]
  %1104 = extractvalue %dx.types.CBufRet.f32 %923, 1
  %1105 = fcmp fast ogt float %1104, 0.000000e+00
  br i1 %1105, label %1106, label %1147, !dx.controlflow.hints !69

; <label>:1106                                    ; preds = %1100
  %1107 = extractvalue %dx.types.CBufRet.f32 %923, 2
  %1108 = bitcast float %1107 to i32
  %1109 = and i32 %1108, 255
  %1110 = uitofp i32 %1109 to float
  %1111 = lshr i32 %1108, 8
  %1112 = and i32 %1111, 255
  %1113 = uitofp i32 %1112 to float
  %1114 = lshr i32 %1108, 16
  %1115 = and i32 %1114, 255
  %1116 = uitofp i32 %1115 to float
  %1117 = fmul fast float %1116, 0x3F70101020000000
  %1118 = lshr i32 %1108, 24
  %1119 = uitofp i32 %1118 to float
  %1120 = fmul fast float %1119, 0x3F70101020000000
  %1121 = fadd fast float %1116, %1110
  %1122 = fmul fast float %1121, 0x3F70101020000000
  %1123 = fadd fast float %1113, %1119
  %1124 = fmul fast float %1123, 0x3F70101020000000
  %1125 = fdiv fast float %43, %1122
  %1126 = fdiv fast float %44, %1124
  %1127 = fsub fast float -0.000000e+00, %1125
  %1128 = fsub fast float -0.000000e+00, %1126
  %1129 = fcmp fast oge float %1125, %1127
  %1130 = fcmp fast oge float %1126, %1128
  %1131 = call float @dx.op.unary.f32(i32 6, float %1125)  ; FAbs(value)
  %1132 = call float @dx.op.unary.f32(i32 6, float %1126)  ; FAbs(value)
  %1133 = call float @dx.op.unary.f32(i32 22, float %1131)  ; Frc(value)
  %1134 = call float @dx.op.unary.f32(i32 22, float %1132)  ; Frc(value)
  %1135 = fsub fast float -0.000000e+00, %1133
  %1136 = fsub fast float -0.000000e+00, %1134
  %1137 = select i1 %1129, float %1133, float %1135
  %1138 = select i1 %1130, float %1134, float %1136
  %1139 = fmul fast float %1122, %1137
  %1140 = fmul fast float %1138, %1124
  %1141 = fcmp fast olt float %1139, %1117
  %1142 = fcmp fast olt float %1140, %1120
  %1143 = or i1 %1141, %1142
  br i1 %1143, label %1144, label %1147, !dx.controlflow.hints !70

; <label>:1144                                    ; preds = %1106
  %1145 = fsub fast float 1.000000e+00, %1104
  %1146 = fmul fast float %1145, %736
  br label %1147

; <label>:1147                                    ; preds = %1144, %1106, %1100
  %1148 = phi float [ %1146, %1144 ], [ %736, %1106 ], [ %736, %1100 ]
  %1149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %1150 = extractvalue %dx.types.CBufRet.f32 %1149, 3
  %1151 = fcmp fast ogt float %1150, 0.000000e+00
  br i1 %1151, label %1152, label %1235, !dx.controlflow.hints !71

; <label>:1152                                    ; preds = %1147
  %1153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %1154 = extractvalue %dx.types.CBufRet.f32 %1153, 2
  %1155 = extractvalue %dx.types.CBufRet.f32 %1153, 3
  %1156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1157 = extractvalue %dx.types.CBufRet.f32 %1156, 3
  %1158 = fmul fast float %1157, 1.000000e+01
  %1159 = call float @dx.op.unary.f32(i32 27, float %1158)  ; Round_ni(value)
  %1160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1161 = extractvalue %dx.types.CBufRet.f32 %1160, 0
  %1162 = extractvalue %dx.types.CBufRet.f32 %1160, 1
  %1163 = fmul fast float %1161, %43
  %1164 = fmul fast float %1162, %44
  %1165 = call float @dx.op.unary.f32(i32 27, float %1163)  ; Round_ni(value)
  %1166 = call float @dx.op.unary.f32(i32 27, float %1164)  ; Round_ni(value)
  %1167 = fmul fast float %1159, 0x4002B851E0000000
  %1168 = call float @dx.op.unary.f32(i32 22, float %1167)  ; Frc(value)
  %1169 = fadd fast float %1168, 0x3FB99999A0000000
  %1170 = fadd fast float %1169, %1165
  %1171 = fadd fast float %1169, %1166
  %1172 = fmul fast float %1170, 0x3FE1BEDF00000000
  %1173 = call float @dx.op.unary.f32(i32 22, float %1172)  ; Frc(value)
  %1174 = fmul fast float %1170, %1173
  %1175 = fadd fast float %1174, %1171
  %1176 = fmul fast float %1171, 0x3FD3BEBE20000000
  %1177 = call float @dx.op.unary.f32(i32 22, float %1176)  ; Frc(value)
  %1178 = fmul fast float %1171, %1177
  %1179 = fadd fast float %1178, %1170
  %1180 = fmul fast float %1175, %1179
  %1181 = call float @dx.op.unary.f32(i32 22, float %1180)  ; Frc(value)
  %1182 = extractvalue %dx.types.CBufRet.f32 %1160, 3
  %1183 = bitcast float %1182 to i32
  %1184 = and i32 %1183, 255
  %1185 = uitofp i32 %1184 to float
  %1186 = fmul fast float %1185, 0x3F70101020000000
  %1187 = fmul fast float %1186, %1154
  %1188 = fcmp fast olt float %1181, %1187
  br i1 %1188, label %1189, label %1196, !dx.controlflow.hints !72

; <label>:1189                                    ; preds = %1152
  %1190 = fmul fast float %1181, 0x4057091680000000
  %1191 = call float @dx.op.unary.f32(i32 22, float %1190)  ; Frc(value)
  %1192 = fmul fast float %1191, %1101
  %1193 = fmul fast float %1191, %1103
  %1194 = fsub fast float 1.000000e+00, %1191
  %1195 = fmul fast float %1194, %1102
  br label %1196

; <label>:1196                                    ; preds = %1189, %1152
  %1197 = phi float [ %1192, %1189 ], [ %1101, %1152 ]
  %1198 = phi float [ %1195, %1189 ], [ %1102, %1152 ]
  %1199 = phi float [ %1193, %1189 ], [ %1103, %1152 ]
  %1200 = fmul fast float %1181, 0x4028B0A3E0000000
  %1201 = call float @dx.op.unary.f32(i32 22, float %1200)  ; Frc(value)
  %1202 = fmul fast float %1186, %1155
  %1203 = fcmp fast olt float %1201, %1202
  br i1 %1203, label %1204, label %1223, !dx.controlflow.hints !73

; <label>:1204                                    ; preds = %1196
  %1205 = extractvalue %dx.types.CBufRet.f32 %1160, 2
  %1206 = fmul fast float %1205, %43
  %1207 = call float @dx.op.unary.f32(i32 27, float %1206)  ; Round_ni(value)
  %1208 = fmul fast float %1207, 0x3FD5555560000000
  %1209 = call float @dx.op.unary.f32(i32 22, float %1208)  ; Frc(value)
  %1210 = extractvalue %dx.types.CBufRet.f32 %1153, 0
  %1211 = extractvalue %dx.types.CBufRet.f32 %1153, 1
  %1212 = fcmp fast olt float %1209, 0x3FD51EB860000000
  br i1 %1212, label %1216, label %1213, !dx.controlflow.hints !74

; <label>:1213                                    ; preds = %1204
  %1214 = fcmp fast olt float %1209, 0x3FE51EB860000000
  br i1 %1214, label %1216, label %1215, !dx.controlflow.hints !75

; <label>:1215                                    ; preds = %1213
  br label %1216

; <label>:1216                                    ; preds = %1215, %1213, %1204
  %1217 = phi float [ %1210, %1215 ], [ %1211, %1204 ], [ %1210, %1213 ]
  %1218 = phi float [ %1210, %1215 ], [ %1210, %1204 ], [ %1211, %1213 ]
  %1219 = phi float [ %1211, %1215 ], [ %1210, %1204 ], [ %1210, %1213 ]
  %1220 = fmul fast float %1217, %1197
  %1221 = fmul fast float %1218, %1198
  %1222 = fmul fast float %1219, %1199
  br label %1223

; <label>:1223                                    ; preds = %1216, %1196
  %1224 = phi float [ %1220, %1216 ], [ %1197, %1196 ]
  %1225 = phi float [ %1221, %1216 ], [ %1198, %1196 ]
  %1226 = phi float [ %1222, %1216 ], [ %1199, %1196 ]
  %1227 = fmul fast float %1181, 0x40223EF9E0000000
  %1228 = call float @dx.op.unary.f32(i32 22, float %1227)  ; Frc(value)
  %1229 = fmul fast float %1186, %1150
  %1230 = fmul fast float %1228, %1228
  %1231 = fmul fast float %1230, %1229
  %1232 = fsub fast float 1.000000e+00, %1231
  %1233 = call float @dx.op.unary.f32(i32 7, float %1232)  ; Saturate(value)
  %1234 = fmul fast float %1233, %1148
  br label %1235

; <label>:1235                                    ; preds = %1223, %1147
  %1236 = phi float [ %1224, %1223 ], [ %1101, %1147 ]
  %1237 = phi float [ %1225, %1223 ], [ %1102, %1147 ]
  %1238 = phi float [ %1226, %1223 ], [ %1103, %1147 ]
  %1239 = phi float [ %1234, %1223 ], [ %1148, %1147 ]
  %1240 = extractvalue %dx.types.CBufRet.f32 %850, 0
  %1241 = fcmp fast ogt float %1240, 0.000000e+00
  br i1 %1241, label %1242, label %1291, !dx.controlflow.hints !76

; <label>:1242                                    ; preds = %1235
  %1243 = extractvalue %dx.types.CBufRet.f32 %850, 1
  %1244 = fmul fast float %1240, %25
  %1245 = fmul fast float %1243, %26
  %1246 = call float @dx.op.unary.f32(i32 85, float %1244)  ; DerivFineX(value)
  %1247 = call float @dx.op.unary.f32(i32 86, float %1244)  ; DerivFineY(value)
  %1248 = call float @dx.op.unary.f32(i32 85, float %1245)  ; DerivFineX(value)
  %1249 = call float @dx.op.unary.f32(i32 86, float %1245)  ; DerivFineY(value)
  %1250 = fmul fast float %1249, %1246
  %1251 = fmul fast float %1248, %1247
  %1252 = fsub fast float %1250, %1251
  %1253 = fdiv fast float 1.000000e+00, %1252
  %1254 = fmul fast float %1253, %1249
  %1255 = fmul fast float %1253, %1247
  %1256 = fmul fast float %1253, %1248
  %1257 = fmul fast float %1253, %1246
  %1258 = fmul fast float %1254, %1254
  %1259 = fmul fast float %1256, %1256
  %1260 = fadd fast float %1258, %1259
  %1261 = call float @dx.op.unary.f32(i32 24, float %1260)  ; Sqrt(value)
  %1262 = fmul fast float %1255, %1255
  %1263 = fmul fast float %1257, %1257
  %1264 = fadd fast float %1262, %1263
  %1265 = call float @dx.op.unary.f32(i32 24, float %1264)  ; Sqrt(value)
  %1266 = fmul fast float %1261, %1244
  %1267 = fmul fast float %1265, %1245
  %1268 = fsub fast float %1266, %1261
  %1269 = fsub fast float %1267, %1265
  %1270 = fsub fast float -0.000000e+00, %1266
  %1271 = fsub fast float -0.000000e+00, %1267
  %1272 = call float @dx.op.binary.f32(i32 35, float %1270, float %1268)  ; FMax(a,b)
  %1273 = call float @dx.op.binary.f32(i32 35, float %1271, float %1269)  ; FMax(a,b)
  %1274 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1272)  ; FMax(a,b)
  %1275 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1273)  ; FMax(a,b)
  %1276 = fmul fast float %1274, %1274
  %1277 = fmul fast float %1275, %1275
  %1278 = fadd fast float %1277, %1276
  %1279 = call float @dx.op.unary.f32(i32 24, float %1278)  ; Sqrt(value)
  %1280 = call float @dx.op.binary.f32(i32 35, float %1272, float %1273)  ; FMax(a,b)
  %1281 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %1280)  ; FMin(a,b)
  %1282 = fadd fast float %1279, -1.000000e+00
  %1283 = fadd fast float %1282, %1281
  %1284 = fmul fast float %1283, -5.000000e-01
  %1285 = call float @dx.op.unary.f32(i32 7, float %1284)  ; Saturate(value)
  %1286 = fmul fast float %1285, 2.000000e+00
  %1287 = fsub fast float 3.000000e+00, %1286
  %1288 = fmul fast float %1285, %1285
  %1289 = fmul fast float %1288, %1239
  %1290 = fmul fast float %1289, %1287
  br label %1291

; <label>:1291                                    ; preds = %1242, %1235
  %1292 = phi float [ %1290, %1242 ], [ %1239, %1235 ]
  %1293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1294 = extractvalue %dx.types.CBufRet.f32 %1293, 0
  %1295 = extractvalue %dx.types.CBufRet.f32 %1293, 1
  %1296 = extractvalue %dx.types.CBufRet.f32 %1293, 2
  %1297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1298 = extractvalue %dx.types.CBufRet.f32 %1297, 0
  %1299 = extractvalue %dx.types.CBufRet.f32 %1297, 1
  %1300 = extractvalue %dx.types.CBufRet.f32 %1297, 2
  %1301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1302 = extractvalue %dx.types.CBufRet.f32 %1301, 0
  %1303 = extractvalue %dx.types.CBufRet.f32 %1301, 1
  %1304 = extractvalue %dx.types.CBufRet.f32 %1301, 2
  %1305 = fmul fast float %1294, %1236
  %1306 = call float @dx.op.tertiary.f32(i32 46, float %1295, float %1237, float %1305)  ; FMad(a,b,c)
  %1307 = call float @dx.op.tertiary.f32(i32 46, float %1296, float %1238, float %1306)  ; FMad(a,b,c)
  %1308 = fmul fast float %1298, %1236
  %1309 = call float @dx.op.tertiary.f32(i32 46, float %1299, float %1237, float %1308)  ; FMad(a,b,c)
  %1310 = call float @dx.op.tertiary.f32(i32 46, float %1300, float %1238, float %1309)  ; FMad(a,b,c)
  %1311 = fmul fast float %1302, %1236
  %1312 = call float @dx.op.tertiary.f32(i32 46, float %1303, float %1237, float %1311)  ; FMad(a,b,c)
  %1313 = call float @dx.op.tertiary.f32(i32 46, float %1304, float %1238, float %1312)  ; FMad(a,b,c)
  br i1 %743, label %1314, label %1621, !dx.controlflow.hints !77

; <label>:1314                                    ; preds = %1291
  %1315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1316 = extractvalue %dx.types.CBufRet.f32 %1315, 0
  %1317 = bitcast float %1316 to i32
  %1318 = and i32 %1317, 128
  %1319 = icmp eq i32 %1318, 0
  br i1 %1319, label %1334, label %1320

; <label>:1320                                    ; preds = %1314
  %1321 = call float @dx.op.unary.f32(i32 24, float %1307)  ; Sqrt(value)
  %1322 = call float @dx.op.unary.f32(i32 24, float %1310)  ; Sqrt(value)
  %1323 = call float @dx.op.unary.f32(i32 24, float %1313)  ; Sqrt(value)
  %1324 = fmul fast float %1321, 9.687500e-01
  %1325 = fmul fast float %1322, 9.687500e-01
  %1326 = fmul fast float %1323, 9.687500e-01
  %1327 = fadd fast float %1324, 1.562500e-02
  %1328 = fadd fast float %1325, 1.562500e-02
  %1329 = fadd fast float %1326, 1.562500e-02
  %1330 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %17, float %1327, float %1328, float %1329, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1331 = extractvalue %dx.types.ResRet.f32 %1330, 0
  %1332 = extractvalue %dx.types.ResRet.f32 %1330, 1
  %1333 = extractvalue %dx.types.ResRet.f32 %1330, 2
  br label %1621

; <label>:1334                                    ; preds = %1314
  %1335 = and i32 %1317, 127
  switch i32 %1335, label %1621 [
    i32 1, label %1336
    i32 2, label %1336
    i32 0, label %1336
    i32 3, label %1366
    i32 4, label %1487
  ]

; <label>:1336                                    ; preds = %1334, %1334, %1334
  %1337 = call float @dx.op.unary.f32(i32 7, float %1307)  ; Saturate(value)
  %1338 = call float @dx.op.unary.f32(i32 7, float %1310)  ; Saturate(value)
  %1339 = call float @dx.op.unary.f32(i32 7, float %1313)  ; Saturate(value)
  %1340 = call float @dx.op.unary.f32(i32 23, float %1337)  ; Log(value)
  %1341 = call float @dx.op.unary.f32(i32 23, float %1338)  ; Log(value)
  %1342 = call float @dx.op.unary.f32(i32 23, float %1339)  ; Log(value)
  %1343 = fmul fast float %1340, 0x3FDAAAAAA0000000
  %1344 = fmul fast float %1341, 0x3FDAAAAAA0000000
  %1345 = fmul fast float %1342, 0x3FDAAAAAA0000000
  %1346 = call float @dx.op.unary.f32(i32 21, float %1343)  ; Exp(value)
  %1347 = call float @dx.op.unary.f32(i32 21, float %1344)  ; Exp(value)
  %1348 = call float @dx.op.unary.f32(i32 21, float %1345)  ; Exp(value)
  %1349 = fmul fast float %1346, 0x3FF0E147A0000000
  %1350 = fmul fast float %1347, 0x3FF0E147A0000000
  %1351 = fmul fast float %1348, 0x3FF0E147A0000000
  %1352 = fadd fast float %1349, 0xBFAC28F5C0000000
  %1353 = fadd fast float %1350, 0xBFAC28F5C0000000
  %1354 = fadd fast float %1351, 0xBFAC28F5C0000000
  %1355 = call float @dx.op.unary.f32(i32 7, float %1352)  ; Saturate(value)
  %1356 = call float @dx.op.unary.f32(i32 7, float %1353)  ; Saturate(value)
  %1357 = call float @dx.op.unary.f32(i32 7, float %1354)  ; Saturate(value)
  %1358 = extractvalue %dx.types.CBufRet.f32 %1315, 2
  %1359 = extractvalue %dx.types.CBufRet.f32 %1315, 3
  %1360 = fmul fast float %1358, %1355
  %1361 = fmul fast float %1358, %1356
  %1362 = fmul fast float %1358, %1357
  %1363 = fadd fast float %1360, %1359
  %1364 = fadd fast float %1361, %1359
  %1365 = fadd fast float %1362, %1359
  br label %1621

; <label>:1366                                    ; preds = %1334
  %1367 = fmul fast float %1307, 0x4163D57C00000000
  %1368 = fmul fast float %1310, 0x4163D57C00000000
  %1369 = fmul fast float %1313, 0x4163D57C00000000
  %1370 = fadd fast float %1367, 9.999980e+05
  %1371 = fadd fast float %1368, 9.999980e+05
  %1372 = fadd fast float %1369, 9.999980e+05
  %1373 = fmul fast float %1370, %1307
  %1374 = fmul fast float %1371, %1310
  %1375 = fmul fast float %1372, %1313
  %1376 = fadd fast float %1373, 0xC0AFE17A60000000
  %1377 = fadd fast float %1374, 0xC0AFE17A60000000
  %1378 = fadd fast float %1375, 0xC0AFE17A60000000
  %1379 = fmul fast float %1376, %1307
  %1380 = fmul fast float %1377, %1310
  %1381 = fmul fast float %1378, %1313
  %1382 = fmul fast float %1307, 0x40F753C340000000
  %1383 = fmul fast float %1310, 0x40F753C340000000
  %1384 = fmul fast float %1313, 0x40F753C340000000
  %1385 = fsub fast float 9.999990e+06, %1382
  %1386 = fsub fast float 9.999990e+06, %1383
  %1387 = fsub fast float 9.999990e+06, %1384
  %1388 = fmul fast float %1385, %1307
  %1389 = fmul fast float %1386, %1310
  %1390 = fmul fast float %1387, %1313
  %1391 = fadd fast float %1388, 0x4136D1DD80000000
  %1392 = fadd fast float %1389, 0x4136D1DD80000000
  %1393 = fadd fast float %1390, 0x4136D1DD80000000
  %1394 = fmul fast float %1391, %1307
  %1395 = fmul fast float %1392, %1310
  %1396 = fmul fast float %1393, %1313
  %1397 = fadd fast float %1394, 1.000000e+00
  %1398 = fadd fast float %1395, 1.000000e+00
  %1399 = fadd fast float %1396, 1.000000e+00
  %1400 = fdiv fast float %1379, %1397
  %1401 = fdiv fast float %1380, %1398
  %1402 = fdiv fast float %1381, %1399
  %1403 = call float @dx.op.unary.f32(i32 7, float %1400)  ; Saturate(value)
  %1404 = call float @dx.op.unary.f32(i32 7, float %1401)  ; Saturate(value)
  %1405 = call float @dx.op.unary.f32(i32 7, float %1402)  ; Saturate(value)
  %1406 = extractvalue %dx.types.CBufRet.f32 %1315, 1
  %1407 = fmul fast float %1403, 0x3FE413A920000000
  %1408 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %1404, float %1407)  ; FMad(a,b,c)
  %1409 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %1405, float %1408)  ; FMad(a,b,c)
  %1410 = fmul fast float %1403, 0x3FB1B089A0000000
  %1411 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %1404, float %1410)  ; FMad(a,b,c)
  %1412 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %1405, float %1411)  ; FMad(a,b,c)
  %1413 = fmul fast float %1403, 0x3F90CB2960000000
  %1414 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %1404, float %1413)  ; FMad(a,b,c)
  %1415 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %1405, float %1414)  ; FMad(a,b,c)
  %1416 = fmul fast float %1409, %1406
  %1417 = fmul fast float %1412, %1406
  %1418 = fmul fast float %1415, %1406
  %1419 = fmul fast float %1416, 0x3F847AE140000000
  %1420 = fmul fast float %1417, 0x3F847AE140000000
  %1421 = fmul fast float %1418, 0x3F847AE140000000
  %1422 = fmul fast float %1416, 0x40B4D2F520000000
  %1423 = fmul fast float %1417, 0x40B4D2F520000000
  %1424 = fmul fast float %1418, 0x40B4D2F520000000
  %1425 = fadd fast float %1422, 0x41869ECF20000000
  %1426 = fadd fast float %1423, 0x41869ECF20000000
  %1427 = fadd fast float %1424, 0x41869ECF20000000
  %1428 = fmul fast float %1425, %1419
  %1429 = fmul fast float %1426, %1420
  %1430 = fmul fast float %1427, %1421
  %1431 = fadd fast float %1428, 0x417BB79C60000000
  %1432 = fadd fast float %1429, 0x417BB79C60000000
  %1433 = fadd fast float %1430, 0x417BB79C60000000
  %1434 = fmul fast float %1431, %1419
  %1435 = fmul fast float %1432, %1420
  %1436 = fmul fast float %1433, %1421
  %1437 = fadd fast float %1434, 0x41218DE180000000
  %1438 = fadd fast float %1435, 0x41218DE180000000
  %1439 = fadd fast float %1436, 0x41218DE180000000
  %1440 = fmul fast float %1437, %1419
  %1441 = fmul fast float %1438, %1420
  %1442 = fmul fast float %1439, %1421
  %1443 = fadd fast float %1440, 0x4077F174E0000000
  %1444 = fadd fast float %1441, 0x4077F174E0000000
  %1445 = fadd fast float %1442, 0x4077F174E0000000
  %1446 = fmul fast float %1443, %1419
  %1447 = fmul fast float %1444, %1420
  %1448 = fmul fast float %1445, %1421
  %1449 = fadd fast float %1446, 0x3F3FF79B80000000
  %1450 = fadd fast float %1447, 0x3F3FF79B80000000
  %1451 = fadd fast float %1448, 0x3F3FF79B80000000
  %1452 = fmul fast float %1416, 0x412442D320000000
  %1453 = fmul fast float %1417, 0x412442D320000000
  %1454 = fmul fast float %1418, 0x412442D320000000
  %1455 = fadd fast float %1452, 0x419385D5C0000000
  %1456 = fadd fast float %1453, 0x419385D5C0000000
  %1457 = fadd fast float %1454, 0x419385D5C0000000
  %1458 = fmul fast float %1455, %1419
  %1459 = fmul fast float %1456, %1420
  %1460 = fmul fast float %1457, %1421
  %1461 = fadd fast float %1458, 4.182885e+06
  %1462 = fadd fast float %1459, 4.182885e+06
  %1463 = fadd fast float %1460, 4.182885e+06
  %1464 = fmul fast float %1461, %1419
  %1465 = fmul fast float %1462, %1420
  %1466 = fmul fast float %1463, %1421
  %1467 = fadd fast float %1464, 0x40C4D633C0000000
  %1468 = fadd fast float %1465, 0x40C4D633C0000000
  %1469 = fadd fast float %1466, 0x40C4D633C0000000
  %1470 = fmul fast float %1467, %1419
  %1471 = fmul fast float %1468, %1420
  %1472 = fmul fast float %1469, %1421
  %1473 = fadd fast float %1470, 1.000000e+00
  %1474 = fadd fast float %1471, 1.000000e+00
  %1475 = fadd fast float %1472, 1.000000e+00
  %1476 = fdiv fast float %1449, %1473
  %1477 = fdiv fast float %1450, %1474
  %1478 = fdiv fast float %1451, %1475
  %1479 = extractvalue %dx.types.CBufRet.f32 %1315, 2
  %1480 = extractvalue %dx.types.CBufRet.f32 %1315, 3
  %1481 = fmul fast float %1479, %1476
  %1482 = fmul fast float %1479, %1477
  %1483 = fmul fast float %1479, %1478
  %1484 = fadd fast float %1481, %1480
  %1485 = fadd fast float %1482, %1480
  %1486 = fadd fast float %1483, %1480
  br label %1621

; <label>:1487                                    ; preds = %1334
  %1488 = fmul fast float %1307, 0x4163D57C00000000
  %1489 = fmul fast float %1310, 0x4163D57C00000000
  %1490 = fmul fast float %1313, 0x4163D57C00000000
  %1491 = fadd fast float %1488, 9.999980e+05
  %1492 = fadd fast float %1489, 9.999980e+05
  %1493 = fadd fast float %1490, 9.999980e+05
  %1494 = fmul fast float %1491, %1307
  %1495 = fmul fast float %1492, %1310
  %1496 = fmul fast float %1493, %1313
  %1497 = fadd fast float %1494, 0xC0AFE17A60000000
  %1498 = fadd fast float %1495, 0xC0AFE17A60000000
  %1499 = fadd fast float %1496, 0xC0AFE17A60000000
  %1500 = fmul fast float %1497, %1307
  %1501 = fmul fast float %1498, %1310
  %1502 = fmul fast float %1499, %1313
  %1503 = fmul fast float %1307, 0x40F753C340000000
  %1504 = fmul fast float %1310, 0x40F753C340000000
  %1505 = fmul fast float %1313, 0x40F753C340000000
  %1506 = fsub fast float 9.999990e+06, %1503
  %1507 = fsub fast float 9.999990e+06, %1504
  %1508 = fsub fast float 9.999990e+06, %1505
  %1509 = fmul fast float %1506, %1307
  %1510 = fmul fast float %1507, %1310
  %1511 = fmul fast float %1508, %1313
  %1512 = fadd fast float %1509, 0x4136D1DD80000000
  %1513 = fadd fast float %1510, 0x4136D1DD80000000
  %1514 = fadd fast float %1511, 0x4136D1DD80000000
  %1515 = fmul fast float %1512, %1307
  %1516 = fmul fast float %1513, %1310
  %1517 = fmul fast float %1514, %1313
  %1518 = fadd fast float %1515, 1.000000e+00
  %1519 = fadd fast float %1516, 1.000000e+00
  %1520 = fadd fast float %1517, 1.000000e+00
  %1521 = fdiv fast float %1500, %1518
  %1522 = fdiv fast float %1501, %1519
  %1523 = fdiv fast float %1502, %1520
  %1524 = call float @dx.op.unary.f32(i32 7, float %1521)  ; Saturate(value)
  %1525 = call float @dx.op.unary.f32(i32 7, float %1522)  ; Saturate(value)
  %1526 = call float @dx.op.unary.f32(i32 7, float %1523)  ; Saturate(value)
  %1527 = extractvalue %dx.types.CBufRet.f32 %1315, 1
  %1528 = fmul fast float %1524, 0x3FEA519BC0000000
  %1529 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %1525, float %1528)  ; FMad(a,b,c)
  %1530 = fmul fast float %1524, 0x3FA0FED480000000
  %1531 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %1525, float %1530)  ; FMad(a,b,c)
  %1532 = fmul fast float %1524, 0x3F917E1C00000000
  %1533 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %1525, float %1532)  ; FMad(a,b,c)
  %1534 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %1526, float %1533)  ; FMad(a,b,c)
  %1535 = call float @dx.op.binary.f32(i32 35, float %1524, float %1525)  ; FMax(a,b)
  %1536 = call float @dx.op.binary.f32(i32 35, float %1535, float %1526)  ; FMax(a,b)
  %1537 = fadd fast float %1536, -1.000000e+00
  %1538 = fmul fast float %1537, 2.500000e-01
  %1539 = call float @dx.op.unary.f32(i32 7, float %1538)  ; Saturate(value)
  %1540 = fsub fast float 1.000000e+00, %1539
  %1541 = fmul fast float %1540, %1529
  %1542 = fmul fast float %1540, %1531
  %1543 = fmul fast float %1540, %1534
  %1544 = fmul fast float %1539, %1524
  %1545 = fmul fast float %1539, %1525
  %1546 = fmul fast float %1539, %1526
  %1547 = fadd fast float %1541, %1544
  %1548 = fadd fast float %1542, %1545
  %1549 = fadd fast float %1543, %1546
  %1550 = fmul fast float %1547, %1527
  %1551 = fmul fast float %1548, %1527
  %1552 = fmul fast float %1549, %1527
  %1553 = fmul fast float %1550, 0x3F847AE140000000
  %1554 = fmul fast float %1551, 0x3F847AE140000000
  %1555 = fmul fast float %1552, 0x3F847AE140000000
  %1556 = fmul fast float %1550, 0x40B4D2F520000000
  %1557 = fmul fast float %1551, 0x40B4D2F520000000
  %1558 = fmul fast float %1552, 0x40B4D2F520000000
  %1559 = fadd fast float %1556, 0x41869ECF20000000
  %1560 = fadd fast float %1557, 0x41869ECF20000000
  %1561 = fadd fast float %1558, 0x41869ECF20000000
  %1562 = fmul fast float %1559, %1553
  %1563 = fmul fast float %1560, %1554
  %1564 = fmul fast float %1561, %1555
  %1565 = fadd fast float %1562, 0x417BB79C60000000
  %1566 = fadd fast float %1563, 0x417BB79C60000000
  %1567 = fadd fast float %1564, 0x417BB79C60000000
  %1568 = fmul fast float %1565, %1553
  %1569 = fmul fast float %1566, %1554
  %1570 = fmul fast float %1567, %1555
  %1571 = fadd fast float %1568, 0x41218DE180000000
  %1572 = fadd fast float %1569, 0x41218DE180000000
  %1573 = fadd fast float %1570, 0x41218DE180000000
  %1574 = fmul fast float %1571, %1553
  %1575 = fmul fast float %1572, %1554
  %1576 = fmul fast float %1573, %1555
  %1577 = fadd fast float %1574, 0x4077F174E0000000
  %1578 = fadd fast float %1575, 0x4077F174E0000000
  %1579 = fadd fast float %1576, 0x4077F174E0000000
  %1580 = fmul fast float %1577, %1553
  %1581 = fmul fast float %1578, %1554
  %1582 = fmul fast float %1579, %1555
  %1583 = fadd fast float %1580, 0x3F3FF79B80000000
  %1584 = fadd fast float %1581, 0x3F3FF79B80000000
  %1585 = fadd fast float %1582, 0x3F3FF79B80000000
  %1586 = fmul fast float %1550, 0x412442D320000000
  %1587 = fmul fast float %1551, 0x412442D320000000
  %1588 = fmul fast float %1552, 0x412442D320000000
  %1589 = fadd fast float %1586, 0x419385D5C0000000
  %1590 = fadd fast float %1587, 0x419385D5C0000000
  %1591 = fadd fast float %1588, 0x419385D5C0000000
  %1592 = fmul fast float %1589, %1553
  %1593 = fmul fast float %1590, %1554
  %1594 = fmul fast float %1591, %1555
  %1595 = fadd fast float %1592, 4.182885e+06
  %1596 = fadd fast float %1593, 4.182885e+06
  %1597 = fadd fast float %1594, 4.182885e+06
  %1598 = fmul fast float %1595, %1553
  %1599 = fmul fast float %1596, %1554
  %1600 = fmul fast float %1597, %1555
  %1601 = fadd fast float %1598, 0x40C4D633C0000000
  %1602 = fadd fast float %1599, 0x40C4D633C0000000
  %1603 = fadd fast float %1600, 0x40C4D633C0000000
  %1604 = fmul fast float %1601, %1553
  %1605 = fmul fast float %1602, %1554
  %1606 = fmul fast float %1603, %1555
  %1607 = fadd fast float %1604, 1.000000e+00
  %1608 = fadd fast float %1605, 1.000000e+00
  %1609 = fadd fast float %1606, 1.000000e+00
  %1610 = fdiv fast float %1583, %1607
  %1611 = fdiv fast float %1584, %1608
  %1612 = fdiv fast float %1585, %1609
  %1613 = extractvalue %dx.types.CBufRet.f32 %1315, 2
  %1614 = extractvalue %dx.types.CBufRet.f32 %1315, 3
  %1615 = fmul fast float %1613, %1610
  %1616 = fmul fast float %1613, %1611
  %1617 = fmul fast float %1613, %1612
  %1618 = fadd fast float %1615, %1614
  %1619 = fadd fast float %1616, %1614
  %1620 = fadd fast float %1617, %1614
  br label %1621

; <label>:1621                                    ; preds = %1487, %1366, %1336, %1334, %1320, %1291
  %1622 = phi float [ %1307, %1291 ], [ %1331, %1320 ], [ %1307, %1334 ], [ %1618, %1487 ], [ %1484, %1366 ], [ %1363, %1336 ]
  %1623 = phi float [ %1310, %1291 ], [ %1332, %1320 ], [ %1310, %1334 ], [ %1619, %1487 ], [ %1485, %1366 ], [ %1364, %1336 ]
  %1624 = phi float [ %1313, %1291 ], [ %1333, %1320 ], [ %1313, %1334 ], [ %1620, %1487 ], [ %1486, %1366 ], [ %1365, %1336 ]
  %1625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 225)  ; CBufferLoadLegacy(handle,regIndex)
  %1626 = extractvalue %dx.types.CBufRet.f32 %1625, 1
  %1627 = extractvalue %dx.types.CBufRet.f32 %1625, 3
  %1628 = select i1 %218, float %1626, float %1627
  %1629 = fmul fast float %1628, %1292
  %1630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 234)  ; CBufferLoadLegacy(handle,regIndex)
  %1631 = extractvalue %dx.types.CBufRet.f32 %1630, 0
  %1632 = extractvalue %dx.types.CBufRet.f32 %1630, 2
  %1633 = call float @dx.op.unary.f32(i32 23, float %1629)  ; Log(value)
  %1634 = fmul fast float %1633, %1632
  %1635 = call float @dx.op.unary.f32(i32 21, float %1634)  ; Exp(value)
  %1636 = fmul fast float %1635, %1631
  %1637 = extractvalue %dx.types.CBufRet.f32 %1630, 1
  %1638 = extractvalue %dx.types.CBufRet.f32 %1630, 3
  %1639 = fmul fast float %1633, %1638
  %1640 = call float @dx.op.unary.f32(i32 21, float %1639)  ; Exp(value)
  %1641 = fmul fast float %1640, %1637
  %1642 = fadd fast float %1641, %1636
  %1643 = fmul fast float %1642, %1622
  %1644 = fmul fast float %1642, %1623
  %1645 = fmul fast float %1642, %1624
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1643)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1644)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1645)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1642)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

