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
; shader hash: 2ec6706266597095563ec5e050c47635
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 70, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 73, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 74, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %45 = extractvalue %dx.types.CBufRet.f32 %44, 0
  %46 = extractvalue %dx.types.CBufRet.f32 %44, 1
  %47 = fsub fast float %42, %45
  %48 = fsub fast float %43, %46
  %49 = extractvalue %dx.types.CBufRet.f32 %44, 2
  %50 = extractvalue %dx.types.CBufRet.f32 %44, 3
  %51 = fmul fast float %47, %49
  %52 = fmul fast float %48, %50
  %53 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.f32 %53, 0
  %55 = extractvalue %dx.types.CBufRet.f32 %53, 1
  %56 = fmul fast float %51, %54
  %57 = fmul fast float %52, %55
  %58 = fptoui float %56 to i32
  %59 = fptoui float %57 to i32
  %60 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.i32 %60, 1
  %62 = shl i32 %61, 2
  %63 = extractvalue %dx.types.CBufRet.i32 %60, 3
  %64 = add i32 %62, %63
  %65 = lshr i32 %59, 2
  %66 = extractvalue %dx.types.CBufRet.i32 %60, 2
  %67 = mul i32 %65, %66
  %68 = lshr i32 %58, 3
  %69 = add i32 %64, %68
  %70 = add i32 %69, %67
  %71 = shl i32 %70, 2
  %72 = shl i32 %59, 3
  %73 = and i32 %72, 24
  %74 = and i32 %58, 7
  %75 = or i32 %73, %74
  %76 = shl i32 1, %75
  %77 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %71, i32 undef)  ; BufferLoad(srv,index,wot)
  %78 = extractvalue %dx.types.ResRet.i32 %77, 0
  %79 = and i32 %78, %76
  %80 = icmp ne i32 %79, 0
  %81 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 228)  ; CBufferLoadLegacy(handle,regIndex)
  %82 = extractvalue %dx.types.CBufRet.f32 %81, 2
  %83 = extractvalue %dx.types.CBufRet.f32 %81, 0
  %84 = call float @dx.op.binary.f32(i32 35, float %51, float %83)  ; FMax(a,b)
  %85 = call float @dx.op.binary.f32(i32 36, float %84, float %82)  ; FMin(a,b)
  %86 = call float @dx.op.binary.f32(i32 36, float %51, float %83)  ; FMin(a,b)
  %87 = call float @dx.op.binary.f32(i32 35, float %86, float %85)  ; FMax(a,b)
  %88 = fcmp fast oeq float %51, %87
  %89 = extractvalue %dx.types.CBufRet.f32 %81, 3
  %90 = extractvalue %dx.types.CBufRet.f32 %81, 1
  %91 = call float @dx.op.binary.f32(i32 35, float %52, float %90)  ; FMax(a,b)
  %92 = call float @dx.op.binary.f32(i32 36, float %91, float %89)  ; FMin(a,b)
  %93 = call float @dx.op.binary.f32(i32 36, float %52, float %90)  ; FMin(a,b)
  %94 = call float @dx.op.binary.f32(i32 35, float %93, float %92)  ; FMax(a,b)
  %95 = fcmp fast oeq float %52, %94
  %96 = and i1 %88, %95
  %97 = select i1 %96, float 0.000000e+00, float 1.000000e+00
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 1
  %100 = fcmp fast une float %99, 0.000000e+00
  %101 = extractvalue %dx.types.CBufRet.f32 %98, 0
  %102 = select i1 %100, float %97, float %101
  %103 = fcmp fast oeq float %102, %101
  %104 = and i1 %80, %103
  br i1 %104, label %106, label %105, !dx.controlflow.hints !57

; <label>:105                                     ; preds = %0
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %106

; <label>:106                                     ; preds = %105, %0
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 3
  %109 = fcmp fast ogt float %108, 0.000000e+00
  br i1 %109, label %110, label %160, !dx.controlflow.hints !58

; <label>:110                                     ; preds = %106
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 3
  %113 = fmul fast float %112, 1.000000e+01
  %114 = call float @dx.op.unary.f32(i32 27, float %113)  ; Round_ni(value)
  %115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %116 = extractvalue %dx.types.CBufRet.f32 %115, 0
  %117 = extractvalue %dx.types.CBufRet.f32 %115, 1
  %118 = fmul fast float %116, %42
  %119 = fmul fast float %117, %43
  %120 = call float @dx.op.unary.f32(i32 27, float %118)  ; Round_ni(value)
  %121 = call float @dx.op.unary.f32(i32 27, float %119)  ; Round_ni(value)
  %122 = fmul fast float %114, 0x4002B851E0000000
  %123 = call float @dx.op.unary.f32(i32 22, float %122)  ; Frc(value)
  %124 = fadd fast float %123, 0x3FB99999A0000000
  %125 = fadd fast float %124, %120
  %126 = fadd fast float %124, %121
  %127 = fmul fast float %125, 0x3FE1BEDF00000000
  %128 = call float @dx.op.unary.f32(i32 22, float %127)  ; Frc(value)
  %129 = fmul fast float %125, %128
  %130 = fadd fast float %129, %126
  %131 = fmul fast float %126, 0x3FD3BEBE20000000
  %132 = call float @dx.op.unary.f32(i32 22, float %131)  ; Frc(value)
  %133 = fmul fast float %126, %132
  %134 = fadd fast float %133, %125
  %135 = fmul fast float %130, %134
  %136 = call float @dx.op.unary.f32(i32 22, float %135)  ; Frc(value)
  %137 = extractvalue %dx.types.CBufRet.f32 %115, 3
  %138 = bitcast float %137 to i32
  %139 = and i32 %138, 255
  %140 = uitofp i32 %139 to float
  %141 = fmul fast float %136, 0x4085373340000000
  %142 = call float @dx.op.unary.f32(i32 22, float %141)  ; Frc(value)
  %143 = fmul fast float %140, 0x3F6CE9B6A0000000
  %144 = fcmp fast olt float %142, %143
  br i1 %144, label %145, label %160, !dx.controlflow.hints !59

; <label>:145                                     ; preds = %110
  %146 = fdiv fast float %142, %143
  %147 = fmul fast float %146, 2.000000e+00
  %148 = fadd fast float %147, -1.000000e+00
  %149 = lshr i32 %138, 8
  %150 = and i32 %149, 255
  %151 = uitofp i32 %150 to float
  %152 = call float @dx.op.unary.f32(i32 83, float %36)  ; DerivCoarseX(value)
  %153 = call float @dx.op.unary.f32(i32 83, float %37)  ; DerivCoarseX(value)
  %154 = fmul fast float %148, %152
  %155 = fmul fast float %154, %151
  %156 = fmul fast float %153, %148
  %157 = fmul fast float %156, %151
  %158 = fadd fast float %155, %36
  %159 = fadd fast float %157, %37
  br label %160

; <label>:160                                     ; preds = %145, %110, %106
  %161 = phi float [ %158, %145 ], [ %36, %110 ], [ %36, %106 ]
  %162 = phi float [ %159, %145 ], [ %37, %110 ], [ %37, %106 ]
  %163 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %7, i32 0)  ; GetDimensions(handle,mipLevel)
  %164 = extractvalue %dx.types.Dimensions %163, 0
  %165 = sitofp i32 %164 to float
  %166 = extractvalue %dx.types.Dimensions %163, 1
  %167 = sitofp i32 %166 to float
  %168 = fdiv fast float 5.000000e-01, %165
  %169 = fdiv fast float 5.000000e-01, %167
  %170 = fsub fast float 1.000000e+00, %168
  %171 = call float @dx.op.binary.f32(i32 35, float %161, float %168)  ; FMax(a,b)
  %172 = call float @dx.op.binary.f32(i32 36, float %171, float %170)  ; FMin(a,b)
  %173 = fsub fast float 1.000000e+00, %169
  %174 = call float @dx.op.binary.f32(i32 35, float %162, float %169)  ; FMax(a,b)
  %175 = call float @dx.op.binary.f32(i32 36, float %174, float %173)  ; FMin(a,b)
  %176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %177 = extractvalue %dx.types.CBufRet.f32 %176, 3
  %178 = bitcast float %177 to i32
  %179 = and i32 %178, 1
  %180 = icmp ne i32 %179, 0
  %181 = select i1 %180, float %172, float %161
  %182 = and i32 %178, 2
  %183 = icmp ne i32 %182, 0
  %184 = select i1 %183, float %175, float %162
  %185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %186 = extractvalue %dx.types.CBufRet.f32 %185, 3
  %187 = bitcast float %186 to i32
  %188 = and i32 %187, 4
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %196, label %190, !dx.controlflow.hints !60

; <label>:190                                     ; preds = %160
  %191 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %13, float %181, float %184, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %192 = extractvalue %dx.types.ResRet.f32 %191, 0
  %193 = extractvalue %dx.types.ResRet.f32 %191, 1
  %194 = extractvalue %dx.types.ResRet.f32 %191, 2
  %195 = extractvalue %dx.types.ResRet.f32 %191, 3
  br label %204

; <label>:196                                     ; preds = %160
  %197 = call float @dx.op.unary.f32(i32 22, float %181)  ; Frc(value)
  %198 = call float @dx.op.unary.f32(i32 22, float %184)  ; Frc(value)
  %199 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %17, float %197, float %198, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %200 = extractvalue %dx.types.ResRet.f32 %199, 0
  %201 = extractvalue %dx.types.ResRet.f32 %199, 1
  %202 = extractvalue %dx.types.ResRet.f32 %199, 2
  %203 = extractvalue %dx.types.ResRet.f32 %199, 3
  br label %204

; <label>:204                                     ; preds = %196, %190
  %205 = phi float [ %192, %190 ], [ %200, %196 ]
  %206 = phi float [ %193, %190 ], [ %201, %196 ]
  %207 = phi float [ %194, %190 ], [ %202, %196 ]
  %208 = phi float [ %195, %190 ], [ %203, %196 ]
  %209 = and i32 %187, 8
  %210 = icmp ne i32 %209, 0
  %211 = select i1 %210, float 1.000000e+00, float %205
  %212 = select i1 %210, float 1.000000e+00, float %206
  %213 = select i1 %210, float 1.000000e+00, float %207
  %214 = select i1 %210, float %205, float %208
  %215 = fmul fast float %211, %38
  %216 = fmul fast float %212, %39
  %217 = fmul fast float %213, %40
  %218 = fmul fast float %214, %41
  %219 = fcmp fast oeq float %102, 0.000000e+00
  %220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %221 = extractvalue %dx.types.CBufRet.f32 %220, 3
  %222 = fcmp fast une float %221, 0.000000e+00
  %223 = and i1 %219, %222
  br i1 %223, label %224, label %240

; <label>:224                                     ; preds = %204
  %225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %16, float %51, float %52, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %226 = extractvalue %dx.types.ResRet.f32 %225, 0
  %227 = fsub fast float 1.000000e+00, %226
  %228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %229 = extractvalue %dx.types.CBufRet.f32 %228, 0
  %230 = extractvalue %dx.types.CBufRet.f32 %228, 1
  %231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 222)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = extractvalue %dx.types.CBufRet.f32 %231, 3
  %233 = fdiv fast float %227, %232
  %234 = fsub fast float %233, %229
  %235 = fmul fast float %234, %230
  %236 = call float @dx.op.unary.f32(i32 7, float %235)  ; Saturate(value)
  %237 = fsub fast float 1.000000e+00, %236
  %238 = fmul fast float %237, %237
  %239 = fmul fast float %238, %218
  br label %240

; <label>:240                                     ; preds = %224, %204
  %241 = phi float [ %239, %224 ], [ %218, %204 ]
  %242 = lshr i32 %187, 4
  %243 = lshr i32 %187, 9
  %244 = and i32 %243, 1
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %340, label %246

; <label>:246                                     ; preds = %240
  %247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %248 = extractvalue %dx.types.CBufRet.f32 %247, 3
  %249 = bitcast float %248 to i32
  %250 = and i32 %249, 65535
  %251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %250)  ; LegacyF16ToF32(value)
  %252 = lshr i32 %249, 16
  %253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %252)  ; LegacyF16ToF32(value)
  %254 = extractvalue %dx.types.CBufRet.f32 %247, 2
  %255 = bitcast float %254 to i32
  %256 = and i32 %255, 65535
  %257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %256)  ; LegacyF16ToF32(value)
  %258 = lshr i32 %255, 16
  %259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %258)  ; LegacyF16ToF32(value)
  %260 = and i32 %242, 1
  %261 = icmp ne i32 %260, 0
  %262 = fcmp fast ogt float %251, 0.000000e+00
  %263 = fcmp fast ogt float %253, 0.000000e+00
  %264 = and i1 %262, %263
  %265 = fcmp fast ogt float %257, 0.000000e+00
  br i1 %264, label %266, label %326

; <label>:266                                     ; preds = %246
  br i1 %265, label %267, label %275

; <label>:267                                     ; preds = %266
  %268 = fmul fast float %253, %35
  %269 = fmul fast float %251, %34
  %270 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %14, float %269, float %268, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %271 = extractvalue %dx.types.ResRet.f32 %270, 0
  %272 = fsub fast float 1.000000e+00, %271
  %273 = select i1 %261, float %272, float %271
  %274 = fmul fast float %273, %257
  br label %275

; <label>:275                                     ; preds = %267, %266
  %276 = phi float [ %274, %267 ], [ 0.000000e+00, %266 ]
  %277 = fadd fast float %276, %259
  %278 = call float @dx.op.unary.f32(i32 7, float %277)  ; Saturate(value)
  br i1 %265, label %279, label %289

; <label>:279                                     ; preds = %275
  %280 = fmul fast float %253, %35
  %281 = fsub fast float 1.000000e+00, %34
  %282 = fmul fast float %251, %281
  %283 = fsub fast float 1.000000e+00, %282
  %284 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %14, float %283, float %280, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %285 = extractvalue %dx.types.ResRet.f32 %284, 1
  %286 = fsub fast float 1.000000e+00, %285
  %287 = select i1 %261, float %286, float %285
  %288 = fmul fast float %287, %257
  br label %289

; <label>:289                                     ; preds = %279, %275
  %290 = phi float [ %288, %279 ], [ 0.000000e+00, %275 ]
  %291 = fadd fast float %290, %259
  %292 = call float @dx.op.unary.f32(i32 7, float %291)  ; Saturate(value)
  %293 = fmul fast float %292, %278
  br i1 %265, label %294, label %306

; <label>:294                                     ; preds = %289
  %295 = fsub fast float 1.000000e+00, %35
  %296 = fmul fast float %253, %295
  %297 = fsub fast float 1.000000e+00, %296
  %298 = fsub fast float 1.000000e+00, %34
  %299 = fmul fast float %251, %298
  %300 = fsub fast float 1.000000e+00, %299
  %301 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %14, float %300, float %297, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %302 = extractvalue %dx.types.ResRet.f32 %301, 2
  %303 = fsub fast float 1.000000e+00, %302
  %304 = select i1 %261, float %303, float %302
  %305 = fmul fast float %304, %257
  br label %306

; <label>:306                                     ; preds = %294, %289
  %307 = phi float [ %305, %294 ], [ 0.000000e+00, %289 ]
  %308 = fadd fast float %307, %259
  %309 = call float @dx.op.unary.f32(i32 7, float %308)  ; Saturate(value)
  %310 = fmul fast float %293, %309
  br i1 %265, label %311, label %321

; <label>:311                                     ; preds = %306
  %312 = fsub fast float 1.000000e+00, %35
  %313 = fmul fast float %253, %312
  %314 = fsub fast float 1.000000e+00, %313
  %315 = fmul fast float %251, %34
  %316 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %14, float %315, float %314, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %317 = extractvalue %dx.types.ResRet.f32 %316, 3
  %318 = fsub fast float 1.000000e+00, %317
  %319 = select i1 %261, float %318, float %317
  %320 = fmul fast float %319, %257
  br label %321

; <label>:321                                     ; preds = %311, %306
  %322 = phi float [ %320, %311 ], [ 0.000000e+00, %306 ]
  %323 = fadd fast float %322, %259
  %324 = call float @dx.op.unary.f32(i32 7, float %323)  ; Saturate(value)
  %325 = fmul fast float %310, %324
  br label %337

; <label>:326                                     ; preds = %246
  br i1 %265, label %327, label %333

; <label>:327                                     ; preds = %326
  %328 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %14, float %34, float %35, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %329 = extractvalue %dx.types.ResRet.f32 %328, 0
  %330 = fsub fast float 1.000000e+00, %329
  %331 = select i1 %261, float %330, float %329
  %332 = fmul fast float %331, %257
  br label %333

; <label>:333                                     ; preds = %327, %326
  %334 = phi float [ %332, %327 ], [ 0.000000e+00, %326 ]
  %335 = fadd fast float %334, %259
  %336 = call float @dx.op.unary.f32(i32 7, float %335)  ; Saturate(value)
  br label %337

; <label>:337                                     ; preds = %333, %321
  %338 = phi float [ %325, %321 ], [ %336, %333 ]
  %339 = fmul fast float %338, %241
  br label %340

; <label>:340                                     ; preds = %337, %240
  %341 = phi float [ %339, %337 ], [ %241, %240 ]
  %342 = and i32 %243, 2
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %438, label %344

; <label>:344                                     ; preds = %340
  %345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %346 = extractvalue %dx.types.CBufRet.f32 %345, 3
  %347 = bitcast float %346 to i32
  %348 = and i32 %347, 65535
  %349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %348)  ; LegacyF16ToF32(value)
  %350 = lshr i32 %347, 16
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = extractvalue %dx.types.CBufRet.f32 %345, 2
  %353 = bitcast float %352 to i32
  %354 = and i32 %353, 65535
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = lshr i32 %353, 16
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = and i32 %242, 2
  %359 = icmp ne i32 %358, 0
  %360 = fcmp fast ogt float %349, 0.000000e+00
  %361 = fcmp fast ogt float %351, 0.000000e+00
  %362 = and i1 %360, %361
  %363 = fcmp fast ogt float %355, 0.000000e+00
  br i1 %362, label %364, label %424

; <label>:364                                     ; preds = %344
  br i1 %363, label %365, label %373

; <label>:365                                     ; preds = %364
  %366 = fmul fast float %351, %33
  %367 = fmul fast float %349, %32
  %368 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %14, float %367, float %366, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %369 = extractvalue %dx.types.ResRet.f32 %368, 0
  %370 = fsub fast float 1.000000e+00, %369
  %371 = select i1 %359, float %370, float %369
  %372 = fmul fast float %371, %355
  br label %373

; <label>:373                                     ; preds = %365, %364
  %374 = phi float [ %372, %365 ], [ 0.000000e+00, %364 ]
  %375 = fadd fast float %374, %357
  %376 = call float @dx.op.unary.f32(i32 7, float %375)  ; Saturate(value)
  br i1 %363, label %377, label %387

; <label>:377                                     ; preds = %373
  %378 = fmul fast float %351, %33
  %379 = fsub fast float 1.000000e+00, %32
  %380 = fmul fast float %349, %379
  %381 = fsub fast float 1.000000e+00, %380
  %382 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %14, float %381, float %378, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %383 = extractvalue %dx.types.ResRet.f32 %382, 1
  %384 = fsub fast float 1.000000e+00, %383
  %385 = select i1 %359, float %384, float %383
  %386 = fmul fast float %385, %355
  br label %387

; <label>:387                                     ; preds = %377, %373
  %388 = phi float [ %386, %377 ], [ 0.000000e+00, %373 ]
  %389 = fadd fast float %388, %357
  %390 = call float @dx.op.unary.f32(i32 7, float %389)  ; Saturate(value)
  %391 = fmul fast float %390, %376
  br i1 %363, label %392, label %404

; <label>:392                                     ; preds = %387
  %393 = fsub fast float 1.000000e+00, %33
  %394 = fmul fast float %351, %393
  %395 = fsub fast float 1.000000e+00, %394
  %396 = fsub fast float 1.000000e+00, %32
  %397 = fmul fast float %349, %396
  %398 = fsub fast float 1.000000e+00, %397
  %399 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %14, float %398, float %395, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %400 = extractvalue %dx.types.ResRet.f32 %399, 2
  %401 = fsub fast float 1.000000e+00, %400
  %402 = select i1 %359, float %401, float %400
  %403 = fmul fast float %402, %355
  br label %404

; <label>:404                                     ; preds = %392, %387
  %405 = phi float [ %403, %392 ], [ 0.000000e+00, %387 ]
  %406 = fadd fast float %405, %357
  %407 = call float @dx.op.unary.f32(i32 7, float %406)  ; Saturate(value)
  %408 = fmul fast float %391, %407
  br i1 %363, label %409, label %419

; <label>:409                                     ; preds = %404
  %410 = fsub fast float 1.000000e+00, %33
  %411 = fmul fast float %351, %410
  %412 = fsub fast float 1.000000e+00, %411
  %413 = fmul fast float %349, %32
  %414 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %14, float %413, float %412, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %415 = extractvalue %dx.types.ResRet.f32 %414, 3
  %416 = fsub fast float 1.000000e+00, %415
  %417 = select i1 %359, float %416, float %415
  %418 = fmul fast float %417, %355
  br label %419

; <label>:419                                     ; preds = %409, %404
  %420 = phi float [ %418, %409 ], [ 0.000000e+00, %404 ]
  %421 = fadd fast float %420, %357
  %422 = call float @dx.op.unary.f32(i32 7, float %421)  ; Saturate(value)
  %423 = fmul fast float %408, %422
  br label %435

; <label>:424                                     ; preds = %344
  br i1 %363, label %425, label %431

; <label>:425                                     ; preds = %424
  %426 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %14, float %32, float %33, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %427 = extractvalue %dx.types.ResRet.f32 %426, 0
  %428 = fsub fast float 1.000000e+00, %427
  %429 = select i1 %359, float %428, float %427
  %430 = fmul fast float %429, %355
  br label %431

; <label>:431                                     ; preds = %425, %424
  %432 = phi float [ %430, %425 ], [ 0.000000e+00, %424 ]
  %433 = fadd fast float %432, %357
  %434 = call float @dx.op.unary.f32(i32 7, float %433)  ; Saturate(value)
  br label %435

; <label>:435                                     ; preds = %431, %419
  %436 = phi float [ %423, %419 ], [ %434, %431 ]
  %437 = fmul fast float %436, %341
  br label %438

; <label>:438                                     ; preds = %435, %340
  %439 = phi float [ %437, %435 ], [ %341, %340 ]
  %440 = and i32 %243, 4
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %536, label %442

; <label>:442                                     ; preds = %438
  %443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %444 = extractvalue %dx.types.CBufRet.f32 %443, 3
  %445 = bitcast float %444 to i32
  %446 = and i32 %445, 65535
  %447 = call float @dx.op.legacyF16ToF32(i32 131, i32 %446)  ; LegacyF16ToF32(value)
  %448 = lshr i32 %445, 16
  %449 = call float @dx.op.legacyF16ToF32(i32 131, i32 %448)  ; LegacyF16ToF32(value)
  %450 = extractvalue %dx.types.CBufRet.f32 %443, 2
  %451 = bitcast float %450 to i32
  %452 = and i32 %451, 65535
  %453 = call float @dx.op.legacyF16ToF32(i32 131, i32 %452)  ; LegacyF16ToF32(value)
  %454 = lshr i32 %451, 16
  %455 = call float @dx.op.legacyF16ToF32(i32 131, i32 %454)  ; LegacyF16ToF32(value)
  %456 = and i32 %242, 4
  %457 = icmp ne i32 %456, 0
  %458 = fcmp fast ogt float %447, 0.000000e+00
  %459 = fcmp fast ogt float %449, 0.000000e+00
  %460 = and i1 %458, %459
  %461 = fcmp fast ogt float %453, 0.000000e+00
  br i1 %460, label %462, label %522

; <label>:462                                     ; preds = %442
  br i1 %461, label %463, label %471

; <label>:463                                     ; preds = %462
  %464 = fmul fast float %449, %31
  %465 = fmul fast float %447, %30
  %466 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %14, float %465, float %464, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %467 = extractvalue %dx.types.ResRet.f32 %466, 0
  %468 = fsub fast float 1.000000e+00, %467
  %469 = select i1 %457, float %468, float %467
  %470 = fmul fast float %469, %453
  br label %471

; <label>:471                                     ; preds = %463, %462
  %472 = phi float [ %470, %463 ], [ 0.000000e+00, %462 ]
  %473 = fadd fast float %472, %455
  %474 = call float @dx.op.unary.f32(i32 7, float %473)  ; Saturate(value)
  br i1 %461, label %475, label %485

; <label>:475                                     ; preds = %471
  %476 = fmul fast float %449, %31
  %477 = fsub fast float 1.000000e+00, %30
  %478 = fmul fast float %447, %477
  %479 = fsub fast float 1.000000e+00, %478
  %480 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %14, float %479, float %476, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %481 = extractvalue %dx.types.ResRet.f32 %480, 1
  %482 = fsub fast float 1.000000e+00, %481
  %483 = select i1 %457, float %482, float %481
  %484 = fmul fast float %483, %453
  br label %485

; <label>:485                                     ; preds = %475, %471
  %486 = phi float [ %484, %475 ], [ 0.000000e+00, %471 ]
  %487 = fadd fast float %486, %455
  %488 = call float @dx.op.unary.f32(i32 7, float %487)  ; Saturate(value)
  %489 = fmul fast float %488, %474
  br i1 %461, label %490, label %502

; <label>:490                                     ; preds = %485
  %491 = fsub fast float 1.000000e+00, %31
  %492 = fmul fast float %449, %491
  %493 = fsub fast float 1.000000e+00, %492
  %494 = fsub fast float 1.000000e+00, %30
  %495 = fmul fast float %447, %494
  %496 = fsub fast float 1.000000e+00, %495
  %497 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %14, float %496, float %493, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %498 = extractvalue %dx.types.ResRet.f32 %497, 2
  %499 = fsub fast float 1.000000e+00, %498
  %500 = select i1 %457, float %499, float %498
  %501 = fmul fast float %500, %453
  br label %502

; <label>:502                                     ; preds = %490, %485
  %503 = phi float [ %501, %490 ], [ 0.000000e+00, %485 ]
  %504 = fadd fast float %503, %455
  %505 = call float @dx.op.unary.f32(i32 7, float %504)  ; Saturate(value)
  %506 = fmul fast float %489, %505
  br i1 %461, label %507, label %517

; <label>:507                                     ; preds = %502
  %508 = fsub fast float 1.000000e+00, %31
  %509 = fmul fast float %449, %508
  %510 = fsub fast float 1.000000e+00, %509
  %511 = fmul fast float %447, %30
  %512 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %14, float %511, float %510, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %513 = extractvalue %dx.types.ResRet.f32 %512, 3
  %514 = fsub fast float 1.000000e+00, %513
  %515 = select i1 %457, float %514, float %513
  %516 = fmul fast float %515, %453
  br label %517

; <label>:517                                     ; preds = %507, %502
  %518 = phi float [ %516, %507 ], [ 0.000000e+00, %502 ]
  %519 = fadd fast float %518, %455
  %520 = call float @dx.op.unary.f32(i32 7, float %519)  ; Saturate(value)
  %521 = fmul fast float %506, %520
  br label %533

; <label>:522                                     ; preds = %442
  br i1 %461, label %523, label %529

; <label>:523                                     ; preds = %522
  %524 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %14, float %30, float %31, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %525 = extractvalue %dx.types.ResRet.f32 %524, 0
  %526 = fsub fast float 1.000000e+00, %525
  %527 = select i1 %457, float %526, float %525
  %528 = fmul fast float %527, %453
  br label %529

; <label>:529                                     ; preds = %523, %522
  %530 = phi float [ %528, %523 ], [ 0.000000e+00, %522 ]
  %531 = fadd fast float %530, %455
  %532 = call float @dx.op.unary.f32(i32 7, float %531)  ; Saturate(value)
  br label %533

; <label>:533                                     ; preds = %529, %517
  %534 = phi float [ %521, %517 ], [ %532, %529 ]
  %535 = fmul fast float %534, %439
  br label %536

; <label>:536                                     ; preds = %533, %438
  %537 = phi float [ %535, %533 ], [ %439, %438 ]
  %538 = and i32 %243, 8
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %634, label %540

; <label>:540                                     ; preds = %536
  %541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %542 = extractvalue %dx.types.CBufRet.f32 %541, 3
  %543 = bitcast float %542 to i32
  %544 = and i32 %543, 65535
  %545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %544)  ; LegacyF16ToF32(value)
  %546 = lshr i32 %543, 16
  %547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %546)  ; LegacyF16ToF32(value)
  %548 = extractvalue %dx.types.CBufRet.f32 %541, 2
  %549 = bitcast float %548 to i32
  %550 = and i32 %549, 65535
  %551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %550)  ; LegacyF16ToF32(value)
  %552 = lshr i32 %549, 16
  %553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %552)  ; LegacyF16ToF32(value)
  %554 = and i32 %242, 8
  %555 = icmp ne i32 %554, 0
  %556 = fcmp fast ogt float %545, 0.000000e+00
  %557 = fcmp fast ogt float %547, 0.000000e+00
  %558 = and i1 %556, %557
  %559 = fcmp fast ogt float %551, 0.000000e+00
  br i1 %558, label %560, label %620

; <label>:560                                     ; preds = %540
  br i1 %559, label %561, label %569

; <label>:561                                     ; preds = %560
  %562 = fmul fast float %547, %29
  %563 = fmul fast float %545, %28
  %564 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %14, float %563, float %562, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %565 = extractvalue %dx.types.ResRet.f32 %564, 0
  %566 = fsub fast float 1.000000e+00, %565
  %567 = select i1 %555, float %566, float %565
  %568 = fmul fast float %567, %551
  br label %569

; <label>:569                                     ; preds = %561, %560
  %570 = phi float [ %568, %561 ], [ 0.000000e+00, %560 ]
  %571 = fadd fast float %570, %553
  %572 = call float @dx.op.unary.f32(i32 7, float %571)  ; Saturate(value)
  br i1 %559, label %573, label %583

; <label>:573                                     ; preds = %569
  %574 = fmul fast float %547, %29
  %575 = fsub fast float 1.000000e+00, %28
  %576 = fmul fast float %545, %575
  %577 = fsub fast float 1.000000e+00, %576
  %578 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %14, float %577, float %574, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %579 = extractvalue %dx.types.ResRet.f32 %578, 1
  %580 = fsub fast float 1.000000e+00, %579
  %581 = select i1 %555, float %580, float %579
  %582 = fmul fast float %581, %551
  br label %583

; <label>:583                                     ; preds = %573, %569
  %584 = phi float [ %582, %573 ], [ 0.000000e+00, %569 ]
  %585 = fadd fast float %584, %553
  %586 = call float @dx.op.unary.f32(i32 7, float %585)  ; Saturate(value)
  %587 = fmul fast float %586, %572
  br i1 %559, label %588, label %600

; <label>:588                                     ; preds = %583
  %589 = fsub fast float 1.000000e+00, %29
  %590 = fmul fast float %547, %589
  %591 = fsub fast float 1.000000e+00, %590
  %592 = fsub fast float 1.000000e+00, %28
  %593 = fmul fast float %545, %592
  %594 = fsub fast float 1.000000e+00, %593
  %595 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %14, float %594, float %591, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %596 = extractvalue %dx.types.ResRet.f32 %595, 2
  %597 = fsub fast float 1.000000e+00, %596
  %598 = select i1 %555, float %597, float %596
  %599 = fmul fast float %598, %551
  br label %600

; <label>:600                                     ; preds = %588, %583
  %601 = phi float [ %599, %588 ], [ 0.000000e+00, %583 ]
  %602 = fadd fast float %601, %553
  %603 = call float @dx.op.unary.f32(i32 7, float %602)  ; Saturate(value)
  %604 = fmul fast float %587, %603
  br i1 %559, label %605, label %615

; <label>:605                                     ; preds = %600
  %606 = fsub fast float 1.000000e+00, %29
  %607 = fmul fast float %547, %606
  %608 = fsub fast float 1.000000e+00, %607
  %609 = fmul fast float %545, %28
  %610 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %14, float %609, float %608, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %611 = extractvalue %dx.types.ResRet.f32 %610, 3
  %612 = fsub fast float 1.000000e+00, %611
  %613 = select i1 %555, float %612, float %611
  %614 = fmul fast float %613, %551
  br label %615

; <label>:615                                     ; preds = %605, %600
  %616 = phi float [ %614, %605 ], [ 0.000000e+00, %600 ]
  %617 = fadd fast float %616, %553
  %618 = call float @dx.op.unary.f32(i32 7, float %617)  ; Saturate(value)
  %619 = fmul fast float %604, %618
  br label %631

; <label>:620                                     ; preds = %540
  br i1 %559, label %621, label %627

; <label>:621                                     ; preds = %620
  %622 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %14, float %28, float %29, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %623 = extractvalue %dx.types.ResRet.f32 %622, 0
  %624 = fsub fast float 1.000000e+00, %623
  %625 = select i1 %555, float %624, float %623
  %626 = fmul fast float %625, %551
  br label %627

; <label>:627                                     ; preds = %621, %620
  %628 = phi float [ %626, %621 ], [ 0.000000e+00, %620 ]
  %629 = fadd fast float %628, %553
  %630 = call float @dx.op.unary.f32(i32 7, float %629)  ; Saturate(value)
  br label %631

; <label>:631                                     ; preds = %627, %615
  %632 = phi float [ %619, %615 ], [ %630, %627 ]
  %633 = fmul fast float %632, %537
  br label %634

; <label>:634                                     ; preds = %631, %536
  %635 = phi float [ %633, %631 ], [ %537, %536 ]
  %636 = and i32 %243, 16
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %732, label %638

; <label>:638                                     ; preds = %634
  %639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %640 = extractvalue %dx.types.CBufRet.f32 %639, 3
  %641 = bitcast float %640 to i32
  %642 = and i32 %641, 65535
  %643 = call float @dx.op.legacyF16ToF32(i32 131, i32 %642)  ; LegacyF16ToF32(value)
  %644 = lshr i32 %641, 16
  %645 = call float @dx.op.legacyF16ToF32(i32 131, i32 %644)  ; LegacyF16ToF32(value)
  %646 = extractvalue %dx.types.CBufRet.f32 %639, 2
  %647 = bitcast float %646 to i32
  %648 = and i32 %647, 65535
  %649 = call float @dx.op.legacyF16ToF32(i32 131, i32 %648)  ; LegacyF16ToF32(value)
  %650 = lshr i32 %647, 16
  %651 = call float @dx.op.legacyF16ToF32(i32 131, i32 %650)  ; LegacyF16ToF32(value)
  %652 = and i32 %242, 16
  %653 = icmp ne i32 %652, 0
  %654 = fcmp fast ogt float %643, 0.000000e+00
  %655 = fcmp fast ogt float %645, 0.000000e+00
  %656 = and i1 %654, %655
  %657 = fcmp fast ogt float %649, 0.000000e+00
  br i1 %656, label %658, label %718

; <label>:658                                     ; preds = %638
  br i1 %657, label %659, label %667

; <label>:659                                     ; preds = %658
  %660 = fmul fast float %645, %27
  %661 = fmul fast float %643, %26
  %662 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %14, float %661, float %660, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %663 = extractvalue %dx.types.ResRet.f32 %662, 0
  %664 = fsub fast float 1.000000e+00, %663
  %665 = select i1 %653, float %664, float %663
  %666 = fmul fast float %665, %649
  br label %667

; <label>:667                                     ; preds = %659, %658
  %668 = phi float [ %666, %659 ], [ 0.000000e+00, %658 ]
  %669 = fadd fast float %668, %651
  %670 = call float @dx.op.unary.f32(i32 7, float %669)  ; Saturate(value)
  br i1 %657, label %671, label %681

; <label>:671                                     ; preds = %667
  %672 = fmul fast float %645, %27
  %673 = fsub fast float 1.000000e+00, %26
  %674 = fmul fast float %643, %673
  %675 = fsub fast float 1.000000e+00, %674
  %676 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %14, float %675, float %672, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %677 = extractvalue %dx.types.ResRet.f32 %676, 1
  %678 = fsub fast float 1.000000e+00, %677
  %679 = select i1 %653, float %678, float %677
  %680 = fmul fast float %679, %649
  br label %681

; <label>:681                                     ; preds = %671, %667
  %682 = phi float [ %680, %671 ], [ 0.000000e+00, %667 ]
  %683 = fadd fast float %682, %651
  %684 = call float @dx.op.unary.f32(i32 7, float %683)  ; Saturate(value)
  %685 = fmul fast float %684, %670
  br i1 %657, label %686, label %698

; <label>:686                                     ; preds = %681
  %687 = fsub fast float 1.000000e+00, %27
  %688 = fmul fast float %645, %687
  %689 = fsub fast float 1.000000e+00, %688
  %690 = fsub fast float 1.000000e+00, %26
  %691 = fmul fast float %643, %690
  %692 = fsub fast float 1.000000e+00, %691
  %693 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %14, float %692, float %689, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %694 = extractvalue %dx.types.ResRet.f32 %693, 2
  %695 = fsub fast float 1.000000e+00, %694
  %696 = select i1 %653, float %695, float %694
  %697 = fmul fast float %696, %649
  br label %698

; <label>:698                                     ; preds = %686, %681
  %699 = phi float [ %697, %686 ], [ 0.000000e+00, %681 ]
  %700 = fadd fast float %699, %651
  %701 = call float @dx.op.unary.f32(i32 7, float %700)  ; Saturate(value)
  %702 = fmul fast float %685, %701
  br i1 %657, label %703, label %713

; <label>:703                                     ; preds = %698
  %704 = fsub fast float 1.000000e+00, %27
  %705 = fmul fast float %645, %704
  %706 = fsub fast float 1.000000e+00, %705
  %707 = fmul fast float %643, %26
  %708 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %14, float %707, float %706, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %709 = extractvalue %dx.types.ResRet.f32 %708, 3
  %710 = fsub fast float 1.000000e+00, %709
  %711 = select i1 %653, float %710, float %709
  %712 = fmul fast float %711, %649
  br label %713

; <label>:713                                     ; preds = %703, %698
  %714 = phi float [ %712, %703 ], [ 0.000000e+00, %698 ]
  %715 = fadd fast float %714, %651
  %716 = call float @dx.op.unary.f32(i32 7, float %715)  ; Saturate(value)
  %717 = fmul fast float %702, %716
  br label %729

; <label>:718                                     ; preds = %638
  br i1 %657, label %719, label %725

; <label>:719                                     ; preds = %718
  %720 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %14, float %26, float %27, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %721 = extractvalue %dx.types.ResRet.f32 %720, 0
  %722 = fsub fast float 1.000000e+00, %721
  %723 = select i1 %653, float %722, float %721
  %724 = fmul fast float %723, %649
  br label %725

; <label>:725                                     ; preds = %719, %718
  %726 = phi float [ %724, %719 ], [ 0.000000e+00, %718 ]
  %727 = fadd fast float %726, %651
  %728 = call float @dx.op.unary.f32(i32 7, float %727)  ; Saturate(value)
  br label %729

; <label>:729                                     ; preds = %725, %713
  %730 = phi float [ %717, %713 ], [ %728, %725 ]
  %731 = fmul fast float %730, %635
  br label %732

; <label>:732                                     ; preds = %729, %634
  %733 = phi float [ %731, %729 ], [ %635, %634 ]
  %734 = call float @dx.op.binary.f32(i32 35, float %733, float 0.000000e+00)  ; FMax(a,b)
  %735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %736 = extractvalue %dx.types.CBufRet.f32 %735, 3
  %737 = bitcast float %736 to i32
  %738 = and i32 %737, 1
  %739 = icmp eq i32 %738, 0
  br i1 %739, label %813, label %740, !dx.controlflow.hints !61

; <label>:740                                     ; preds = %732
  %741 = and i32 %737, 2
  %742 = icmp eq i32 %741, 0
  %743 = extractvalue %dx.types.CBufRet.f32 %735, 0
  %744 = extractvalue %dx.types.CBufRet.f32 %735, 1
  %745 = extractvalue %dx.types.CBufRet.f32 %735, 2
  %746 = fmul fast float %743, %215
  %747 = fmul fast float %744, %216
  %748 = fmul fast float %745, %217
  %749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %750 = extractvalue %dx.types.CBufRet.f32 %749, 0
  %751 = fmul fast float %750, %746
  %752 = fmul fast float %750, %747
  %753 = fmul fast float %750, %748
  br i1 %742, label %813, label %754, !dx.controlflow.hints !62

; <label>:754                                     ; preds = %740
  %755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %756 = extractvalue %dx.types.CBufRet.f32 %755, 0
  %757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %758 = extractvalue %dx.types.CBufRet.f32 %757, 0
  %759 = extractvalue %dx.types.CBufRet.f32 %757, 1
  %760 = extractvalue %dx.types.CBufRet.f32 %757, 2
  %761 = call float @dx.op.dot3.f32(i32 55, float %751, float %752, float %753, float %758, float %759, float %760)  ; Dot3(ax,ay,az,bx,by,bz)
  %762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %763 = extractvalue %dx.types.CBufRet.f32 %762, 0
  %764 = extractvalue %dx.types.CBufRet.f32 %762, 1
  %765 = extractvalue %dx.types.CBufRet.f32 %762, 2
  %766 = call float @dx.op.dot3.f32(i32 55, float %751, float %752, float %753, float %763, float %764, float %765)  ; Dot3(ax,ay,az,bx,by,bz)
  %767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %768 = extractvalue %dx.types.CBufRet.f32 %767, 0
  %769 = extractvalue %dx.types.CBufRet.f32 %767, 1
  %770 = extractvalue %dx.types.CBufRet.f32 %767, 2
  %771 = call float @dx.op.dot3.f32(i32 55, float %751, float %752, float %753, float %768, float %769, float %770)  ; Dot3(ax,ay,az,bx,by,bz)
  %772 = fmul fast float %761, %756
  %773 = fmul fast float %766, %756
  %774 = fmul fast float %771, %756
  %775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %776 = extractvalue %dx.types.CBufRet.f32 %775, 2
  %777 = fmul fast float %772, %776
  %778 = fmul fast float %773, %776
  %779 = fmul fast float %774, %776
  %780 = fadd fast float %777, 9.765625e-04
  %781 = fadd fast float %778, 9.765625e-04
  %782 = fadd fast float %779, 9.765625e-04
  %783 = call float @dx.op.unary.f32(i32 23, float %780)  ; Log(value)
  %784 = call float @dx.op.unary.f32(i32 23, float %781)  ; Log(value)
  %785 = call float @dx.op.unary.f32(i32 23, float %782)  ; Log(value)
  %786 = fadd fast float %783, 1.000000e+01
  %787 = fadd fast float %784, 1.000000e+01
  %788 = fadd fast float %785, 1.000000e+01
  %789 = fmul fast float %786, 0x3FA99999A0000000
  %790 = fmul fast float %787, 0x3FA99999A0000000
  %791 = fmul fast float %788, 0x3FA99999A0000000
  %792 = call float @dx.op.unary.f32(i32 7, float %789)  ; Saturate(value)
  %793 = call float @dx.op.unary.f32(i32 7, float %790)  ; Saturate(value)
  %794 = call float @dx.op.unary.f32(i32 7, float %791)  ; Saturate(value)
  %795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %796 = extractvalue %dx.types.CBufRet.f32 %795, 0
  %797 = extractvalue %dx.types.CBufRet.f32 %795, 1
  %798 = extractvalue %dx.types.CBufRet.f32 %795, 2
  %799 = fmul fast float %796, %792
  %800 = fmul fast float %797, %793
  %801 = fmul fast float %798, %794
  %802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %803 = extractvalue %dx.types.CBufRet.f32 %802, 0
  %804 = extractvalue %dx.types.CBufRet.f32 %802, 1
  %805 = extractvalue %dx.types.CBufRet.f32 %802, 2
  %806 = fadd fast float %799, %803
  %807 = fadd fast float %800, %804
  %808 = fadd fast float %801, %805
  %809 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %16, float %806, float %807, float %808, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %810 = extractvalue %dx.types.ResRet.f32 %809, 0
  %811 = extractvalue %dx.types.ResRet.f32 %809, 1
  %812 = extractvalue %dx.types.ResRet.f32 %809, 2
  br label %813

; <label>:813                                     ; preds = %754, %740, %732
  %814 = phi float [ %810, %754 ], [ %215, %732 ], [ %751, %740 ]
  %815 = phi float [ %811, %754 ], [ %216, %732 ], [ %752, %740 ]
  %816 = phi float [ %812, %754 ], [ %217, %732 ], [ %753, %740 ]
  %817 = fcmp fast oeq float %734, 0.000000e+00
  br i1 %817, label %818, label %819, !dx.controlflow.hints !63

; <label>:818                                     ; preds = %813
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %819

; <label>:819                                     ; preds = %818, %813
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %820 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1, %dx.types.Handle %15, float %22, float %23, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %821 = extractvalue %dx.types.ResRet.f32 %820, 0
  %822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %823 = extractvalue %dx.types.CBufRet.f32 %822, 3
  %824 = bitcast float %823 to i32
  %825 = and i32 %824, 65535
  %826 = call float @dx.op.legacyF16ToF32(i32 131, i32 %825)  ; LegacyF16ToF32(value)
  %827 = fcmp fast une float %826, 0.000000e+00
  %828 = select i1 %827, float 0.000000e+00, float 1.000000e+00
  %829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %830 = extractvalue %dx.types.CBufRet.f32 %829, 3
  %831 = fmul fast float %830, %821
  %832 = fmul fast float %831, %828
  %833 = fsub fast float 1.000000e+00, %832
  %834 = fmul fast float %833, %814
  %835 = fmul fast float %833, %815
  %836 = fmul fast float %833, %816
  %837 = extractvalue %dx.types.CBufRet.f32 %829, 0
  %838 = extractvalue %dx.types.CBufRet.f32 %829, 1
  %839 = extractvalue %dx.types.CBufRet.f32 %829, 2
  %840 = fmul fast float %837, %831
  %841 = fmul fast float %838, %831
  %842 = fmul fast float %839, %831
  %843 = fadd fast float %834, %840
  %844 = fadd fast float %835, %841
  %845 = fadd fast float %836, %842
  %846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %847 = extractvalue %dx.types.CBufRet.f32 %846, 2
  %848 = fcmp fast ogt float %847, 0.000000e+00
  br i1 %848, label %849, label %915, !dx.controlflow.hints !64

; <label>:849                                     ; preds = %819
  %850 = fcmp fast oeq float %847, 2.000000e+00
  br i1 %850, label %851, label %903, !dx.controlflow.hints !65

; <label>:851                                     ; preds = %849
  %852 = fcmp fast ole float %843, 0x3F69A5C380000000
  %853 = fcmp fast ole float %844, 0x3F69A5C380000000
  %854 = fcmp fast ole float %845, 0x3F69A5C380000000
  %855 = fmul fast float %843, 0x4029D70A40000000
  %856 = fmul fast float %844, 0x4029D70A40000000
  %857 = fmul fast float %845, 0x4029D70A40000000
  %858 = call float @dx.op.unary.f32(i32 23, float %843)  ; Log(value)
  %859 = call float @dx.op.unary.f32(i32 23, float %844)  ; Log(value)
  %860 = call float @dx.op.unary.f32(i32 23, float %845)  ; Log(value)
  %861 = fmul fast float %858, 0x3FDAAAAAA0000000
  %862 = fmul fast float %859, 0x3FDAAAAAA0000000
  %863 = fmul fast float %860, 0x3FDAAAAAA0000000
  %864 = call float @dx.op.unary.f32(i32 21, float %861)  ; Exp(value)
  %865 = call float @dx.op.unary.f32(i32 21, float %862)  ; Exp(value)
  %866 = call float @dx.op.unary.f32(i32 21, float %863)  ; Exp(value)
  %867 = fmul fast float %864, 0x3FF0E147A0000000
  %868 = fmul fast float %865, 0x3FF0E147A0000000
  %869 = fmul fast float %866, 0x3FF0E147A0000000
  %870 = fadd fast float %867, 0xBFAC28F5C0000000
  %871 = fadd fast float %868, 0xBFAC28F5C0000000
  %872 = fadd fast float %869, 0xBFAC28F5C0000000
  %873 = select i1 %852, float %855, float %870
  %874 = select i1 %853, float %856, float %871
  %875 = select i1 %854, float %857, float %872
  %876 = fsub fast float 1.000000e+00, %873
  %877 = fsub fast float 1.000000e+00, %874
  %878 = fsub fast float 1.000000e+00, %875
  %879 = fcmp fast ole float %876, 0x3FA4B5DCC0000000
  %880 = fmul fast float %876, 0x3FB3D07220000000
  %881 = fsub fast float 0x3FF0E147A0000000, %873
  %882 = fmul fast float %881, 0x3FEE54EDE0000000
  %883 = call float @dx.op.unary.f32(i32 23, float %882)  ; Log(value)
  %884 = fmul fast float %883, 0x4003333340000000
  %885 = call float @dx.op.unary.f32(i32 21, float %884)  ; Exp(value)
  %886 = select i1 %879, float %880, float %885
  %887 = fcmp fast ole float %877, 0x3FA4B5DCC0000000
  %888 = fmul fast float %877, 0x3FB3D07220000000
  %889 = fsub fast float 0x3FF0E147A0000000, %874
  %890 = fmul fast float %889, 0x3FEE54EDE0000000
  %891 = call float @dx.op.unary.f32(i32 23, float %890)  ; Log(value)
  %892 = fmul fast float %891, 0x4003333340000000
  %893 = call float @dx.op.unary.f32(i32 21, float %892)  ; Exp(value)
  %894 = select i1 %887, float %888, float %893
  %895 = fcmp fast ole float %878, 0x3FA4B5DCC0000000
  %896 = fmul fast float %878, 0x3FB3D07220000000
  %897 = fsub fast float 0x3FF0E147A0000000, %875
  %898 = fmul fast float %897, 0x3FEE54EDE0000000
  %899 = call float @dx.op.unary.f32(i32 23, float %898)  ; Log(value)
  %900 = fmul fast float %899, 0x4003333340000000
  %901 = call float @dx.op.unary.f32(i32 21, float %900)  ; Exp(value)
  %902 = select i1 %895, float %896, float %901
  br label %915

; <label>:903                                     ; preds = %849
  %904 = call float @dx.op.dot3.f32(i32 55, float %843, float %844, float %845, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %905 = extractvalue %dx.types.CBufRet.f32 %846, 3
  %906 = fsub fast float %843, %904
  %907 = fsub fast float %844, %904
  %908 = fsub fast float %845, %904
  %909 = fmul fast float %905, %906
  %910 = fmul fast float %905, %907
  %911 = fmul fast float %905, %908
  %912 = fadd fast float %909, %904
  %913 = fadd fast float %910, %904
  %914 = fadd fast float %911, %904
  br label %915

; <label>:915                                     ; preds = %903, %851, %819
  %916 = phi float [ %886, %851 ], [ %912, %903 ], [ %843, %819 ]
  %917 = phi float [ %894, %851 ], [ %913, %903 ], [ %844, %819 ]
  %918 = phi float [ %902, %851 ], [ %914, %903 ], [ %845, %819 ]
  %919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %920 = extractvalue %dx.types.CBufRet.f32 %919, 0
  %921 = fcmp fast une float %920, 0.000000e+00
  br i1 %921, label %922, label %1096, !dx.controlflow.hints !66

; <label>:922                                     ; preds = %915
  %923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %924 = extractvalue %dx.types.CBufRet.f32 %923, 0
  %925 = extractvalue %dx.types.CBufRet.f32 %923, 1
  %926 = fsub fast float %42, %924
  %927 = fsub fast float %43, %925
  %928 = extractvalue %dx.types.CBufRet.f32 %923, 2
  %929 = extractvalue %dx.types.CBufRet.f32 %923, 3
  %930 = fmul fast float %926, %928
  %931 = fmul fast float %927, %929
  %932 = call float @dx.op.unary.f32(i32 6, float %920)  ; FAbs(value)
  %933 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %16, float %930, float %931, float undef, float undef, i32 0, i32 0, i32 undef, float %932)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %934 = extractvalue %dx.types.ResRet.f32 %933, 0
  %935 = extractvalue %dx.types.ResRet.f32 %933, 1
  %936 = extractvalue %dx.types.ResRet.f32 %933, 2
  %937 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %938 = extractvalue %dx.types.CBufRet.i32 %937, 3
  %939 = and i32 %938, 3
  %940 = icmp ne i32 %939, 0
  %941 = and i32 %938, 4
  %942 = icmp eq i32 %941, 0
  %943 = and i1 %940, %942
  br i1 %943, label %944, label %988

; <label>:944                                     ; preds = %922
  %945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %946 = extractvalue %dx.types.CBufRet.f32 %945, 0
  %947 = fcmp fast oge float %935, %946
  %948 = zext i1 %947 to i32
  br i1 %947, label %949, label %988

; <label>:949                                     ; preds = %944
  %950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %951 = extractvalue %dx.types.CBufRet.f32 %950, 3
  %952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %953 = extractvalue %dx.types.CBufRet.f32 %952, 2
  %954 = fcmp fast ogt float %953, 0.000000e+00
  br i1 %954, label %955, label %963, !dx.controlflow.hints !67

; <label>:955                                     ; preds = %949
  %956 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %16, float %935, float 0.000000e+00, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %957 = extractvalue %dx.types.ResRet.f32 %956, 0
  %958 = extractvalue %dx.types.ResRet.f32 %956, 1
  %959 = extractvalue %dx.types.ResRet.f32 %956, 2
  %960 = fcmp fast ogt float %953, 1.500000e+00
  %961 = select i1 %960, float %957, float %958
  %962 = select i1 %960, float %957, float %959
  br label %981

; <label>:963                                     ; preds = %949
  %964 = call float @dx.op.unary.f32(i32 7, float %935)  ; Saturate(value)
  %965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 238)  ; CBufferLoadLegacy(handle,regIndex)
  %966 = extractvalue %dx.types.CBufRet.f32 %965, 0
  %967 = extractvalue %dx.types.CBufRet.f32 %965, 1
  %968 = extractvalue %dx.types.CBufRet.f32 %965, 2
  %969 = extractvalue %dx.types.CBufRet.f32 %950, 0
  %970 = extractvalue %dx.types.CBufRet.f32 %950, 1
  %971 = extractvalue %dx.types.CBufRet.f32 %950, 2
  %972 = fsub fast float %966, %969
  %973 = fsub fast float %967, %970
  %974 = fsub fast float %968, %971
  %975 = fmul fast float %972, %964
  %976 = fmul fast float %973, %964
  %977 = fmul fast float %974, %964
  %978 = fadd fast float %975, %969
  %979 = fadd fast float %976, %970
  %980 = fadd fast float %977, %971
  br label %981

; <label>:981                                     ; preds = %963, %955
  %982 = phi float [ %957, %955 ], [ %978, %963 ]
  %983 = phi float [ %961, %955 ], [ %979, %963 ]
  %984 = phi float [ %962, %955 ], [ %980, %963 ]
  %985 = fmul fast float %982, %951
  %986 = fmul fast float %983, %951
  %987 = fmul fast float %984, %951
  br label %988

; <label>:988                                     ; preds = %981, %944, %922
  %989 = phi float [ %985, %981 ], [ %934, %922 ], [ %934, %944 ]
  %990 = phi float [ %986, %981 ], [ %935, %922 ], [ %934, %944 ]
  %991 = phi float [ %987, %981 ], [ %936, %922 ], [ %934, %944 ]
  %992 = phi i32 [ %948, %981 ], [ 0, %922 ], [ %948, %944 ]
  %993 = icmp eq i32 %992, 0
  br i1 %993, label %994, label %1048

; <label>:994                                     ; preds = %988
  %995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %996 = extractvalue %dx.types.CBufRet.f32 %995, 0
  %997 = extractvalue %dx.types.CBufRet.f32 %995, 1
  %998 = extractvalue %dx.types.CBufRet.f32 %995, 2
  %999 = call float @dx.op.dot3.f32(i32 55, float %989, float %990, float %991, float %996, float %997, float %998)  ; Dot3(ax,ay,az,bx,by,bz)
  %1000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1001 = extractvalue %dx.types.CBufRet.f32 %1000, 0
  %1002 = extractvalue %dx.types.CBufRet.f32 %1000, 1
  %1003 = extractvalue %dx.types.CBufRet.f32 %1000, 2
  %1004 = call float @dx.op.dot3.f32(i32 55, float %989, float %990, float %991, float %1001, float %1002, float %1003)  ; Dot3(ax,ay,az,bx,by,bz)
  %1005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1006 = extractvalue %dx.types.CBufRet.f32 %1005, 0
  %1007 = extractvalue %dx.types.CBufRet.f32 %1005, 1
  %1008 = extractvalue %dx.types.CBufRet.f32 %1005, 2
  %1009 = call float @dx.op.dot3.f32(i32 55, float %989, float %990, float %991, float %1006, float %1007, float %1008)  ; Dot3(ax,ay,az,bx,by,bz)
  %1010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %1011 = extractvalue %dx.types.CBufRet.f32 %1010, 2
  %1012 = fmul fast float %1011, %999
  %1013 = fmul fast float %1011, %1004
  %1014 = fmul fast float %1011, %1009
  %1015 = fadd fast float %1012, 9.765625e-04
  %1016 = fadd fast float %1013, 9.765625e-04
  %1017 = fadd fast float %1014, 9.765625e-04
  %1018 = call float @dx.op.unary.f32(i32 23, float %1015)  ; Log(value)
  %1019 = call float @dx.op.unary.f32(i32 23, float %1016)  ; Log(value)
  %1020 = call float @dx.op.unary.f32(i32 23, float %1017)  ; Log(value)
  %1021 = fadd fast float %1018, 1.000000e+01
  %1022 = fadd fast float %1019, 1.000000e+01
  %1023 = fadd fast float %1020, 1.000000e+01
  %1024 = fmul fast float %1021, 0x3FA99999A0000000
  %1025 = fmul fast float %1022, 0x3FA99999A0000000
  %1026 = fmul fast float %1023, 0x3FA99999A0000000
  %1027 = call float @dx.op.unary.f32(i32 7, float %1024)  ; Saturate(value)
  %1028 = call float @dx.op.unary.f32(i32 7, float %1025)  ; Saturate(value)
  %1029 = call float @dx.op.unary.f32(i32 7, float %1026)  ; Saturate(value)
  %1030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %1031 = extractvalue %dx.types.CBufRet.f32 %1030, 0
  %1032 = extractvalue %dx.types.CBufRet.f32 %1030, 1
  %1033 = extractvalue %dx.types.CBufRet.f32 %1030, 2
  %1034 = fmul fast float %1031, %1027
  %1035 = fmul fast float %1032, %1028
  %1036 = fmul fast float %1033, %1029
  %1037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1038 = extractvalue %dx.types.CBufRet.f32 %1037, 0
  %1039 = extractvalue %dx.types.CBufRet.f32 %1037, 1
  %1040 = extractvalue %dx.types.CBufRet.f32 %1037, 2
  %1041 = fadd fast float %1034, %1038
  %1042 = fadd fast float %1035, %1039
  %1043 = fadd fast float %1036, %1040
  %1044 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %16, float %1041, float %1042, float %1043, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1045 = extractvalue %dx.types.ResRet.f32 %1044, 0
  %1046 = extractvalue %dx.types.ResRet.f32 %1044, 1
  %1047 = extractvalue %dx.types.ResRet.f32 %1044, 2
  br label %1048

; <label>:1048                                    ; preds = %994, %988
  %1049 = phi float [ %989, %988 ], [ %1045, %994 ]
  %1050 = phi float [ %990, %988 ], [ %1046, %994 ]
  %1051 = phi float [ %991, %988 ], [ %1047, %994 ]
  %1052 = fcmp fast ole float %1049, 0x3FA4B5DCC0000000
  %1053 = fmul fast float %1049, 0x3FB3D07220000000
  %1054 = fadd fast float %1049, 0x3FAC28F5C0000000
  %1055 = fmul fast float %1054, 0x3FEE54EDE0000000
  %1056 = call float @dx.op.unary.f32(i32 23, float %1055)  ; Log(value)
  %1057 = fmul fast float %1056, 0x4003333340000000
  %1058 = call float @dx.op.unary.f32(i32 21, float %1057)  ; Exp(value)
  %1059 = select i1 %1052, float %1053, float %1058
  %1060 = fcmp fast ole float %1050, 0x3FA4B5DCC0000000
  %1061 = fmul fast float %1050, 0x3FB3D07220000000
  %1062 = fadd fast float %1050, 0x3FAC28F5C0000000
  %1063 = fmul fast float %1062, 0x3FEE54EDE0000000
  %1064 = call float @dx.op.unary.f32(i32 23, float %1063)  ; Log(value)
  %1065 = fmul fast float %1064, 0x4003333340000000
  %1066 = call float @dx.op.unary.f32(i32 21, float %1065)  ; Exp(value)
  %1067 = select i1 %1060, float %1061, float %1066
  %1068 = fcmp fast ole float %1051, 0x3FA4B5DCC0000000
  %1069 = fmul fast float %1051, 0x3FB3D07220000000
  %1070 = fadd fast float %1051, 0x3FAC28F5C0000000
  %1071 = fmul fast float %1070, 0x3FEE54EDE0000000
  %1072 = call float @dx.op.unary.f32(i32 23, float %1071)  ; Log(value)
  %1073 = fmul fast float %1072, 0x4003333340000000
  %1074 = call float @dx.op.unary.f32(i32 21, float %1073)  ; Exp(value)
  %1075 = select i1 %1068, float %1069, float %1074
  %1076 = fcmp fast olt float %920, 0.000000e+00
  br i1 %1076, label %1077, label %1089

; <label>:1077                                    ; preds = %1048
  %1078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %1079 = extractvalue %dx.types.CBufRet.f32 %1078, 0
  %1080 = extractvalue %dx.types.CBufRet.f32 %1078, 1
  %1081 = extractvalue %dx.types.CBufRet.f32 %1078, 2
  %1082 = call float @dx.op.dot3.f32(i32 55, float %1059, float %1067, float %1075, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1083 = fsub fast float %1082, %1079
  %1084 = fmul fast float %1083, %1080
  %1085 = call float @dx.op.unary.f32(i32 7, float %1084)  ; Saturate(value)
  %1086 = fsub fast float 1.000000e+00, %1081
  %1087 = fmul fast float %1085, %1086
  %1088 = fadd fast float %1087, %1081
  br label %1089

; <label>:1089                                    ; preds = %1077, %1048
  %1090 = phi float [ %1088, %1077 ], [ %1059, %1048 ]
  %1091 = phi float [ %1088, %1077 ], [ %1067, %1048 ]
  %1092 = phi float [ %1088, %1077 ], [ %1075, %1048 ]
  %1093 = fmul fast float %1090, %916
  %1094 = fmul fast float %1091, %917
  %1095 = fmul fast float %1092, %918
  br label %1096

; <label>:1096                                    ; preds = %1089, %915
  %1097 = phi float [ %1093, %1089 ], [ %916, %915 ]
  %1098 = phi float [ %1094, %1089 ], [ %917, %915 ]
  %1099 = phi float [ %1095, %1089 ], [ %918, %915 ]
  %1100 = extractvalue %dx.types.CBufRet.f32 %919, 1
  %1101 = fcmp fast ogt float %1100, 0.000000e+00
  br i1 %1101, label %1102, label %1143, !dx.controlflow.hints !68

; <label>:1102                                    ; preds = %1096
  %1103 = extractvalue %dx.types.CBufRet.f32 %919, 2
  %1104 = bitcast float %1103 to i32
  %1105 = and i32 %1104, 255
  %1106 = uitofp i32 %1105 to float
  %1107 = lshr i32 %1104, 8
  %1108 = and i32 %1107, 255
  %1109 = uitofp i32 %1108 to float
  %1110 = lshr i32 %1104, 16
  %1111 = and i32 %1110, 255
  %1112 = uitofp i32 %1111 to float
  %1113 = fmul fast float %1112, 0x3F70101020000000
  %1114 = lshr i32 %1104, 24
  %1115 = uitofp i32 %1114 to float
  %1116 = fmul fast float %1115, 0x3F70101020000000
  %1117 = fadd fast float %1112, %1106
  %1118 = fmul fast float %1117, 0x3F70101020000000
  %1119 = fadd fast float %1109, %1115
  %1120 = fmul fast float %1119, 0x3F70101020000000
  %1121 = fdiv fast float %42, %1118
  %1122 = fdiv fast float %43, %1120
  %1123 = fsub fast float -0.000000e+00, %1121
  %1124 = fsub fast float -0.000000e+00, %1122
  %1125 = fcmp fast oge float %1121, %1123
  %1126 = fcmp fast oge float %1122, %1124
  %1127 = call float @dx.op.unary.f32(i32 6, float %1121)  ; FAbs(value)
  %1128 = call float @dx.op.unary.f32(i32 6, float %1122)  ; FAbs(value)
  %1129 = call float @dx.op.unary.f32(i32 22, float %1127)  ; Frc(value)
  %1130 = call float @dx.op.unary.f32(i32 22, float %1128)  ; Frc(value)
  %1131 = fsub fast float -0.000000e+00, %1129
  %1132 = fsub fast float -0.000000e+00, %1130
  %1133 = select i1 %1125, float %1129, float %1131
  %1134 = select i1 %1126, float %1130, float %1132
  %1135 = fmul fast float %1118, %1133
  %1136 = fmul fast float %1134, %1120
  %1137 = fcmp fast olt float %1135, %1113
  %1138 = fcmp fast olt float %1136, %1116
  %1139 = or i1 %1137, %1138
  br i1 %1139, label %1140, label %1143, !dx.controlflow.hints !69

; <label>:1140                                    ; preds = %1102
  %1141 = fsub fast float 1.000000e+00, %1100
  %1142 = fmul fast float %1141, %734
  br label %1143

; <label>:1143                                    ; preds = %1140, %1102, %1096
  %1144 = phi float [ %1142, %1140 ], [ %734, %1102 ], [ %734, %1096 ]
  %1145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %1146 = extractvalue %dx.types.CBufRet.f32 %1145, 3
  %1147 = fcmp fast ogt float %1146, 0.000000e+00
  br i1 %1147, label %1148, label %1231, !dx.controlflow.hints !70

; <label>:1148                                    ; preds = %1143
  %1149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %1150 = extractvalue %dx.types.CBufRet.f32 %1149, 2
  %1151 = extractvalue %dx.types.CBufRet.f32 %1149, 3
  %1152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1153 = extractvalue %dx.types.CBufRet.f32 %1152, 3
  %1154 = fmul fast float %1153, 1.000000e+01
  %1155 = call float @dx.op.unary.f32(i32 27, float %1154)  ; Round_ni(value)
  %1156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1157 = extractvalue %dx.types.CBufRet.f32 %1156, 0
  %1158 = extractvalue %dx.types.CBufRet.f32 %1156, 1
  %1159 = fmul fast float %1157, %42
  %1160 = fmul fast float %1158, %43
  %1161 = call float @dx.op.unary.f32(i32 27, float %1159)  ; Round_ni(value)
  %1162 = call float @dx.op.unary.f32(i32 27, float %1160)  ; Round_ni(value)
  %1163 = fmul fast float %1155, 0x4002B851E0000000
  %1164 = call float @dx.op.unary.f32(i32 22, float %1163)  ; Frc(value)
  %1165 = fadd fast float %1164, 0x3FB99999A0000000
  %1166 = fadd fast float %1165, %1161
  %1167 = fadd fast float %1165, %1162
  %1168 = fmul fast float %1166, 0x3FE1BEDF00000000
  %1169 = call float @dx.op.unary.f32(i32 22, float %1168)  ; Frc(value)
  %1170 = fmul fast float %1166, %1169
  %1171 = fadd fast float %1170, %1167
  %1172 = fmul fast float %1167, 0x3FD3BEBE20000000
  %1173 = call float @dx.op.unary.f32(i32 22, float %1172)  ; Frc(value)
  %1174 = fmul fast float %1167, %1173
  %1175 = fadd fast float %1174, %1166
  %1176 = fmul fast float %1171, %1175
  %1177 = call float @dx.op.unary.f32(i32 22, float %1176)  ; Frc(value)
  %1178 = extractvalue %dx.types.CBufRet.f32 %1156, 3
  %1179 = bitcast float %1178 to i32
  %1180 = and i32 %1179, 255
  %1181 = uitofp i32 %1180 to float
  %1182 = fmul fast float %1181, 0x3F70101020000000
  %1183 = fmul fast float %1182, %1150
  %1184 = fcmp fast olt float %1177, %1183
  br i1 %1184, label %1185, label %1192, !dx.controlflow.hints !71

; <label>:1185                                    ; preds = %1148
  %1186 = fmul fast float %1177, 0x4057091680000000
  %1187 = call float @dx.op.unary.f32(i32 22, float %1186)  ; Frc(value)
  %1188 = fmul fast float %1187, %1097
  %1189 = fmul fast float %1187, %1099
  %1190 = fsub fast float 1.000000e+00, %1187
  %1191 = fmul fast float %1190, %1098
  br label %1192

; <label>:1192                                    ; preds = %1185, %1148
  %1193 = phi float [ %1188, %1185 ], [ %1097, %1148 ]
  %1194 = phi float [ %1191, %1185 ], [ %1098, %1148 ]
  %1195 = phi float [ %1189, %1185 ], [ %1099, %1148 ]
  %1196 = fmul fast float %1177, 0x4028B0A3E0000000
  %1197 = call float @dx.op.unary.f32(i32 22, float %1196)  ; Frc(value)
  %1198 = fmul fast float %1182, %1151
  %1199 = fcmp fast olt float %1197, %1198
  br i1 %1199, label %1200, label %1219, !dx.controlflow.hints !72

; <label>:1200                                    ; preds = %1192
  %1201 = extractvalue %dx.types.CBufRet.f32 %1156, 2
  %1202 = fmul fast float %1201, %42
  %1203 = call float @dx.op.unary.f32(i32 27, float %1202)  ; Round_ni(value)
  %1204 = fmul fast float %1203, 0x3FD5555560000000
  %1205 = call float @dx.op.unary.f32(i32 22, float %1204)  ; Frc(value)
  %1206 = extractvalue %dx.types.CBufRet.f32 %1149, 0
  %1207 = extractvalue %dx.types.CBufRet.f32 %1149, 1
  %1208 = fcmp fast olt float %1205, 0x3FD51EB860000000
  br i1 %1208, label %1212, label %1209, !dx.controlflow.hints !73

; <label>:1209                                    ; preds = %1200
  %1210 = fcmp fast olt float %1205, 0x3FE51EB860000000
  br i1 %1210, label %1212, label %1211, !dx.controlflow.hints !74

; <label>:1211                                    ; preds = %1209
  br label %1212

; <label>:1212                                    ; preds = %1211, %1209, %1200
  %1213 = phi float [ %1206, %1211 ], [ %1207, %1200 ], [ %1206, %1209 ]
  %1214 = phi float [ %1206, %1211 ], [ %1206, %1200 ], [ %1207, %1209 ]
  %1215 = phi float [ %1207, %1211 ], [ %1206, %1200 ], [ %1206, %1209 ]
  %1216 = fmul fast float %1213, %1193
  %1217 = fmul fast float %1214, %1194
  %1218 = fmul fast float %1215, %1195
  br label %1219

; <label>:1219                                    ; preds = %1212, %1192
  %1220 = phi float [ %1216, %1212 ], [ %1193, %1192 ]
  %1221 = phi float [ %1217, %1212 ], [ %1194, %1192 ]
  %1222 = phi float [ %1218, %1212 ], [ %1195, %1192 ]
  %1223 = fmul fast float %1177, 0x40223EF9E0000000
  %1224 = call float @dx.op.unary.f32(i32 22, float %1223)  ; Frc(value)
  %1225 = fmul fast float %1182, %1146
  %1226 = fmul fast float %1224, %1224
  %1227 = fmul fast float %1226, %1225
  %1228 = fsub fast float 1.000000e+00, %1227
  %1229 = call float @dx.op.unary.f32(i32 7, float %1228)  ; Saturate(value)
  %1230 = fmul fast float %1229, %1144
  br label %1231

; <label>:1231                                    ; preds = %1219, %1143
  %1232 = phi float [ %1220, %1219 ], [ %1097, %1143 ]
  %1233 = phi float [ %1221, %1219 ], [ %1098, %1143 ]
  %1234 = phi float [ %1222, %1219 ], [ %1099, %1143 ]
  %1235 = phi float [ %1230, %1219 ], [ %1144, %1143 ]
  %1236 = extractvalue %dx.types.CBufRet.f32 %846, 0
  %1237 = fcmp fast ogt float %1236, 0.000000e+00
  br i1 %1237, label %1238, label %1287, !dx.controlflow.hints !75

; <label>:1238                                    ; preds = %1231
  %1239 = extractvalue %dx.types.CBufRet.f32 %846, 1
  %1240 = fmul fast float %1236, %24
  %1241 = fmul fast float %1239, %25
  %1242 = call float @dx.op.unary.f32(i32 85, float %1240)  ; DerivFineX(value)
  %1243 = call float @dx.op.unary.f32(i32 86, float %1240)  ; DerivFineY(value)
  %1244 = call float @dx.op.unary.f32(i32 85, float %1241)  ; DerivFineX(value)
  %1245 = call float @dx.op.unary.f32(i32 86, float %1241)  ; DerivFineY(value)
  %1246 = fmul fast float %1245, %1242
  %1247 = fmul fast float %1244, %1243
  %1248 = fsub fast float %1246, %1247
  %1249 = fdiv fast float 1.000000e+00, %1248
  %1250 = fmul fast float %1249, %1245
  %1251 = fmul fast float %1249, %1243
  %1252 = fmul fast float %1249, %1244
  %1253 = fmul fast float %1249, %1242
  %1254 = fmul fast float %1250, %1250
  %1255 = fmul fast float %1252, %1252
  %1256 = fadd fast float %1254, %1255
  %1257 = call float @dx.op.unary.f32(i32 24, float %1256)  ; Sqrt(value)
  %1258 = fmul fast float %1251, %1251
  %1259 = fmul fast float %1253, %1253
  %1260 = fadd fast float %1258, %1259
  %1261 = call float @dx.op.unary.f32(i32 24, float %1260)  ; Sqrt(value)
  %1262 = fmul fast float %1257, %1240
  %1263 = fmul fast float %1261, %1241
  %1264 = fsub fast float %1262, %1257
  %1265 = fsub fast float %1263, %1261
  %1266 = fsub fast float -0.000000e+00, %1262
  %1267 = fsub fast float -0.000000e+00, %1263
  %1268 = call float @dx.op.binary.f32(i32 35, float %1266, float %1264)  ; FMax(a,b)
  %1269 = call float @dx.op.binary.f32(i32 35, float %1267, float %1265)  ; FMax(a,b)
  %1270 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1268)  ; FMax(a,b)
  %1271 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1269)  ; FMax(a,b)
  %1272 = fmul fast float %1270, %1270
  %1273 = fmul fast float %1271, %1271
  %1274 = fadd fast float %1273, %1272
  %1275 = call float @dx.op.unary.f32(i32 24, float %1274)  ; Sqrt(value)
  %1276 = call float @dx.op.binary.f32(i32 35, float %1268, float %1269)  ; FMax(a,b)
  %1277 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %1276)  ; FMin(a,b)
  %1278 = fadd fast float %1275, -1.000000e+00
  %1279 = fadd fast float %1278, %1277
  %1280 = fmul fast float %1279, -5.000000e-01
  %1281 = call float @dx.op.unary.f32(i32 7, float %1280)  ; Saturate(value)
  %1282 = fmul fast float %1281, 2.000000e+00
  %1283 = fsub fast float 3.000000e+00, %1282
  %1284 = fmul fast float %1281, %1281
  %1285 = fmul fast float %1284, %1235
  %1286 = fmul fast float %1285, %1283
  br label %1287

; <label>:1287                                    ; preds = %1238, %1231
  %1288 = phi float [ %1286, %1238 ], [ %1235, %1231 ]
  %1289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1290 = extractvalue %dx.types.CBufRet.f32 %1289, 0
  %1291 = extractvalue %dx.types.CBufRet.f32 %1289, 1
  %1292 = extractvalue %dx.types.CBufRet.f32 %1289, 2
  %1293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1294 = extractvalue %dx.types.CBufRet.f32 %1293, 0
  %1295 = extractvalue %dx.types.CBufRet.f32 %1293, 1
  %1296 = extractvalue %dx.types.CBufRet.f32 %1293, 2
  %1297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1298 = extractvalue %dx.types.CBufRet.f32 %1297, 0
  %1299 = extractvalue %dx.types.CBufRet.f32 %1297, 1
  %1300 = extractvalue %dx.types.CBufRet.f32 %1297, 2
  %1301 = fmul fast float %1290, %1232
  %1302 = call float @dx.op.tertiary.f32(i32 46, float %1291, float %1233, float %1301)  ; FMad(a,b,c)
  %1303 = call float @dx.op.tertiary.f32(i32 46, float %1292, float %1234, float %1302)  ; FMad(a,b,c)
  %1304 = fmul fast float %1294, %1232
  %1305 = call float @dx.op.tertiary.f32(i32 46, float %1295, float %1233, float %1304)  ; FMad(a,b,c)
  %1306 = call float @dx.op.tertiary.f32(i32 46, float %1296, float %1234, float %1305)  ; FMad(a,b,c)
  %1307 = fmul fast float %1298, %1232
  %1308 = call float @dx.op.tertiary.f32(i32 46, float %1299, float %1233, float %1307)  ; FMad(a,b,c)
  %1309 = call float @dx.op.tertiary.f32(i32 46, float %1300, float %1234, float %1308)  ; FMad(a,b,c)
  %1310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 225)  ; CBufferLoadLegacy(handle,regIndex)
  %1311 = extractvalue %dx.types.CBufRet.f32 %1310, 1
  %1312 = extractvalue %dx.types.CBufRet.f32 %1310, 3
  %1313 = select i1 %219, float %1311, float %1312
  %1314 = fmul fast float %1313, %1288
  %1315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 234)  ; CBufferLoadLegacy(handle,regIndex)
  %1316 = extractvalue %dx.types.CBufRet.f32 %1315, 0
  %1317 = extractvalue %dx.types.CBufRet.f32 %1315, 2
  %1318 = call float @dx.op.unary.f32(i32 23, float %1314)  ; Log(value)
  %1319 = fmul fast float %1318, %1317
  %1320 = call float @dx.op.unary.f32(i32 21, float %1319)  ; Exp(value)
  %1321 = fmul fast float %1320, %1316
  %1322 = extractvalue %dx.types.CBufRet.f32 %1315, 1
  %1323 = extractvalue %dx.types.CBufRet.f32 %1315, 3
  %1324 = fmul fast float %1318, %1323
  %1325 = call float @dx.op.unary.f32(i32 21, float %1324)  ; Exp(value)
  %1326 = fmul fast float %1325, %1322
  %1327 = fadd fast float %1326, %1321
  %1328 = fmul fast float %1327, %1303
  %1329 = fmul fast float %1327, %1306
  %1330 = fmul fast float %1327, %1309
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1328)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1329)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1330)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1327)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind
declare void @dx.op.discard(i32, i1) #1

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!dx.viewIdState = !{!30}
!dx.entryPoints = !{!31}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !19, !24}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
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
!19 = !{!20, !21, !22, !23}
!20 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!21 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 320, null}
!22 = !{i32 2, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 304, null}
!23 = !{i32 3, %tonemapping* undef, !"", i32 0, i32 4, i32 1, i32 64, null}
!24 = !{!25, !26, !27, !28, !29}
!25 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!26 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!27 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!28 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!29 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!30 = !{[26 x i32] [i32 24, i32 4, i32 15, i32 15, i32 0, i32 0, i32 7, i32 7, i32 7, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 7, i32 7]}
!31 = !{void ()* @ps_main, !"ps_main", !32, !4, !56}
!32 = !{!33, !54, null}
!33 = !{!34, !37, !39, !40, !42, !44, !46, !48, !50, !52}
!34 = !{i32 0, !"SV_Position", i8 9, i8 3, !35, i8 4, i32 1, i8 4, i32 0, i8 0, !36}
!35 = !{i32 0}
!36 = !{i32 3, i32 3}
!37 = !{i32 1, !"COLOR", i8 9, i8 0, !35, i8 2, i32 1, i8 4, i32 1, i8 0, !38}
!38 = !{i32 3, i32 15}
!39 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !35, i8 2, i32 1, i8 2, i32 2, i8 0, !36}
!40 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !41, i8 2, i32 1, i8 2, i32 2, i8 2, !36}
!41 = !{i32 2}
!42 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !43, i8 2, i32 1, i8 2, i32 3, i8 0, !36}
!43 = !{i32 3}
!44 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !45, i8 2, i32 1, i8 2, i32 3, i8 2, !36}
!45 = !{i32 4}
!46 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !47, i8 2, i32 1, i8 2, i32 4, i8 0, !36}
!47 = !{i32 5}
!48 = !{i32 7, !"TEXCOORD", i8 9, i8 0, !49, i8 2, i32 1, i8 2, i32 4, i8 2, !36}
!49 = !{i32 6}
!50 = !{i32 8, !"TEXCOORD", i8 9, i8 0, !51, i8 2, i32 1, i8 2, i32 5, i8 0, !36}
!51 = !{i32 1}
!52 = !{i32 9, !"TEXCOORD", i8 9, i8 0, !53, i8 2, i32 1, i8 2, i32 5, i8 2, !36}
!53 = !{i32 7}
!54 = !{!55}
!55 = !{i32 0, !"SV_Target", i8 9, i8 16, !35, i8 0, i32 1, i8 4, i32 0, i8 0, !38}
!56 = !{i32 0, i64 16}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 1}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 1}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}

