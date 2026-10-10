;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 3   xyzw        3     NONE   float   xyz 
; TEXCOORD                 4   xyzw        4     NONE   float   xyzw
; TEXCOORD                 5   xy          5     NONE   float   xy  
; TEXCOORD                 8   xyzw        6     NONE   float       
; QUAD_POSITION            0   xyzw        7     NONE   float   xyzw
; COLOR                    3   xyz         8     NONE    uint   x z 
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
; SV_Target                1   xyzw        1   TARGET   float   xyzw
;
; shader hash: a423f3178856572f7a3b3a0b82769e2b
;
; Pipeline Runtime Information: 
;
; Pixel Shader
; DepthOutput=0
; SampleFrequency=1
;
;
; Input signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Position              0          noperspective       
; COLOR                    0                 linear       
; TEXCOORD                 0                 linear       
; TEXCOORD                 3                 linear       
; TEXCOORD                 4                 linear       
; TEXCOORD                 5               centroid       
; TEXCOORD                 8                 linear       
; QUAD_POSITION            0        nointerpolation       
; COLOR                    3        nointerpolation       
; SV_SampleIndex           0        nointerpolation       
;
; Output signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Target                0                              
; SV_Target                1                              
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
;   [128 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S0             s7     4
;                                   sampler      NA          NA      S1             s1     1
;                                   sampler      NA          NA      S2             s2     1
;                                   sampler      NA          NA      S3             s4     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1     t37,space2     1
;                                   texture    byte         r/o      T2     t37,space1     1
;                                   texture     f32     2darray      T3     t78,space2     1
;                                   texture     f32          2d      T4     t77,space2     1
;                                   texture     f32          2d      T5     t69,space2     1
;                                   texture     f32          2d      T6     t33,space2     1
;                                   texture    byte         r/o      T7      t3,space1     1
;                                   texture    byte         r/o      T8      t4,space1     1
;                                   texture    byte         r/o      T9      t5,space1     1
;                                   texture    byte         r/o     T10      t6,space1     1
;                                   texture     f32          2d     T11             t0     1
;                                   texture     f32          2d     T12     t57,space2     1
;                                   texture    byte         r/o     T13     t69,space1     1
;                                   texture     u32          2d     T14     t56,space2     1
;                                   texture     f32     2darray     T15     t35,space2     1
;                                   texture    byte         r/o     T16             t1     1
;
;
; ViewId state:
;
; Number of inputs: 35, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 1 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 2 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 3 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 28, 29, 30, 31, 32, 34 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 28, 29, 30, 31, 32, 34 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 28, 29, 30, 31, 32, 34 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 28, 29, 30, 31, 32, 34 }
;   output 7 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 28, 29, 30, 31, 32, 34 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 77, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 78, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %49 = extractvalue %dx.types.CBufRet.f32 %48, 0
  %50 = fmul fast float %49, %43
  %51 = fmul fast float %49, %44
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 2
  %54 = extractvalue %dx.types.CBufRet.f32 %52, 3
  %55 = fmul fast float %50, 2.000000e+00
  %56 = fmul fast float %55, %53
  %57 = fmul fast float %51, 2.000000e+00
  %58 = fmul fast float %57, %54
  %59 = fsub fast float 1.000000e+00, %56
  %60 = fsub fast float 1.000000e+00, %58
  %61 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %62 = extractvalue %dx.types.CBufRet.f32 %61, 0
  %63 = extractvalue %dx.types.CBufRet.f32 %61, 1
  %64 = extractvalue %dx.types.CBufRet.f32 %61, 2
  %65 = fmul fast float %59, %62
  %66 = fmul fast float %59, %63
  %67 = fmul fast float %59, %64
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 0
  %70 = extractvalue %dx.types.CBufRet.f32 %68, 1
  %71 = extractvalue %dx.types.CBufRet.f32 %68, 2
  %72 = fmul fast float %60, %69
  %73 = fmul fast float %60, %70
  %74 = fmul fast float %60, %71
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 0
  %77 = extractvalue %dx.types.CBufRet.f32 %75, 1
  %78 = extractvalue %dx.types.CBufRet.f32 %75, 2
  %79 = fadd fast float %72, %76
  %80 = fadd fast float %79, %65
  %81 = fadd fast float %73, %77
  %82 = fadd fast float %81, %66
  %83 = fadd fast float %74, %78
  %84 = fadd fast float %83, %67
  %85 = fmul fast float %80, %45
  %86 = fmul fast float %82, %45
  %87 = fmul fast float %84, %45
  %88 = fmul fast float %35, %32
  %89 = fmul fast float %36, %31
  %90 = fsub fast float %88, %89
  %91 = fmul fast float %36, %30
  %92 = fmul fast float %34, %32
  %93 = fsub fast float %91, %92
  %94 = fmul fast float %34, %31
  %95 = fmul fast float %35, %30
  %96 = fsub fast float %94, %95
  %97 = fmul fast float %90, %33
  %98 = fmul fast float %93, %33
  %99 = fmul fast float %96, %33
  %100 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.i32 %100, 3
  %102 = and i32 %101, 3
  %103 = icmp ne i32 %102, 0
  %104 = and i32 %101, 4
  %105 = icmp ne i32 %104, 0
  %106 = and i1 %103, %105
  br i1 %106, label %107, label %116

; <label>:107                                     ; preds = %0
  %108 = fmul fast float %54, %51
  %109 = fmul fast float %53, %50
  %110 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %18, float %109, float %108, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %111 = extractvalue %dx.types.ResRet.f32 %110, 0
  %112 = fsub fast float 1.000000e+00, %111
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 0
  %115 = fcmp fast olt float %112, %114
  br label %119

; <label>:116                                     ; preds = %0
  %117 = icmp eq i32 %104, 0
  %118 = and i1 %103, %117
  br label %119

; <label>:119                                     ; preds = %116, %107
  %120 = phi i1 [ %115, %107 ], [ %118, %116 ]
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 2
  %123 = extractvalue %dx.types.CBufRet.f32 %121, 3
  %124 = fmul fast float %122, %50
  %125 = fmul fast float %123, %51
  %126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %127 = extractvalue %dx.types.ResRet.i32 %126, 0
  %128 = and i32 %127, 114688
  %129 = icmp ne i32 %128, 0
  %130 = select i1 %129, float %124, float 0.000000e+00
  %131 = select i1 %129, float %125, float 0.000000e+00
  %132 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %19, float %130, float %131, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %133 = extractvalue %dx.types.ResRet.f32 %132, 0
  %134 = fmul fast float %133, 2.550000e+02
  %135 = fptoui float %134 to i32
  %136 = select i1 %129, i32 %135, i32 0
  %137 = mul i32 %22, 208
  %138 = add i32 %137, 188
  %139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %138, i32 undef)  ; BufferLoad(srv,index,wot)
  %140 = extractvalue %dx.types.ResRet.i32 %139, 0
  %141 = and i32 %101, 114688
  %142 = and i32 %101, 8
  %143 = icmp ne i32 %142, 0
  %144 = or i1 %120, %143
  %145 = select i1 %144, i32 %141, i32 16384
  %146 = and i32 %145, %140
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %149

; <label>:148                                     ; preds = %119
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %149

; <label>:149                                     ; preds = %148, %119
  %150 = and i32 %140, 512
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %176, label %152

; <label>:152                                     ; preds = %149
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.f32 %153, 2
  %155 = extractvalue %dx.types.CBufRet.f32 %153, 3
  %156 = fmul fast float %154, %50
  %157 = fmul fast float %155, %51
  %158 = extractvalue %dx.types.CBufRet.f32 %153, 0
  %159 = extractvalue %dx.types.CBufRet.f32 %153, 1
  %160 = fdiv fast float %158, %159
  %161 = fcmp fast ogt float %160, 0x3FFC71C720000000
  br i1 %161, label %162, label %168

; <label>:162                                     ; preds = %152
  %163 = fdiv fast float 0x3FFC71C720000000, %160
  %164 = fmul fast float %163, %157
  %165 = fsub fast float 1.000000e+00, %163
  %166 = fmul fast float %165, 5.000000e-01
  %167 = fadd fast float %166, %164
  br label %176

; <label>:168                                     ; preds = %152
  %169 = fcmp fast olt float %160, 0x3FFC71C720000000
  br i1 %169, label %170, label %176

; <label>:170                                     ; preds = %168
  %171 = fmul fast float %156, 5.625000e-01
  %172 = fmul fast float %171, %160
  %173 = fmul fast float %160, 2.812500e-01
  %174 = fsub fast float 5.000000e-01, %173
  %175 = fadd fast float %174, %172
  br label %176

; <label>:176                                     ; preds = %170, %168, %162, %149
  %177 = phi float [ %37, %149 ], [ %156, %162 ], [ %175, %170 ], [ %156, %168 ]
  %178 = phi float [ %38, %149 ], [ %167, %162 ], [ %157, %170 ], [ %157, %168 ]
  %179 = add i32 %23, 72
  %180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %179, i32 undef)  ; BufferLoad(srv,index,wot)
  %181 = extractvalue %dx.types.ResRet.i32 %180, 0
  %182 = extractvalue %dx.types.ResRet.i32 %180, 1
  %183 = bitcast i32 %181 to float
  %184 = bitcast i32 %182 to float
  %185 = fmul fast float %183, %37
  %186 = fmul fast float %184, %38
  %187 = call float @dx.op.unary.f32(i32 22, float %185)  ; Frc(value)
  %188 = call float @dx.op.unary.f32(i32 22, float %186)  ; Frc(value)
  %189 = and i32 %140, 16
  %190 = icmp ne i32 %189, 0
  %191 = select i1 %190, float 1.000000e+00, float %42
  %192 = add i32 %23, 112
  %193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %192, i32 undef)  ; BufferLoad(srv,index,wot)
  %194 = extractvalue %dx.types.ResRet.i32 %193, 0
  %195 = add i32 %194, 0
  %196 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %195, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %198 = extractvalue %dx.types.CBufRet.f32 %197, 2
  %199 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %196, %dx.types.Handle %47, float %177, float %178, float undef, float undef, i32 0, i32 0, i32 undef, float %198, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %200 = extractvalue %dx.types.ResRet.f32 %199, 0
  %201 = fmul fast float %200, %191
  %202 = icmp eq i32 %189, 0
  br i1 %202, label %222, label %203, !dx.controlflow.hints !62

; <label>:203                                     ; preds = %176
  %204 = add i32 %137, 64
  %205 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %204, i32 undef)  ; BufferLoad(srv,index,wot)
  %206 = extractvalue %dx.types.ResRet.f32 %205, 0
  %207 = fadd fast float %206, 1.000000e+00
  %208 = fmul fast float %207, %42
  %209 = fsub fast float %208, %206
  %210 = fsub fast float %207, %209
  %211 = call float @dx.op.unary.f32(i32 7, float %210)  ; Saturate(value)
  %212 = fsub fast float 1.000000e+00, %208
  %213 = call float @dx.op.unary.f32(i32 7, float %212)  ; Saturate(value)
  %214 = fsub fast float %211, %213
  %215 = fsub fast float %201, %213
  %216 = fdiv fast float %215, %214
  %217 = call float @dx.op.unary.f32(i32 7, float %216)  ; Saturate(value)
  %218 = fmul fast float %217, 2.000000e+00
  %219 = fsub fast float 3.000000e+00, %218
  %220 = fmul fast float %217, %217
  %221 = fmul fast float %220, %219
  br label %222

; <label>:222                                     ; preds = %203, %176
  %223 = phi float [ %221, %203 ], [ %201, %176 ]
  %224 = fcmp fast ogt float %223, 0.000000e+00
  br i1 %224, label %226, label %225

; <label>:225                                     ; preds = %222
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %226

; <label>:226                                     ; preds = %225, %222
  %227 = call float @dx.op.unary.f32(i32 7, float %223)  ; Saturate(value)
  %228 = fmul fast float %50, 5.000000e-01
  %229 = fmul fast float %51, 5.000000e-01
  %230 = fptosi float %228 to i32
  %231 = fptosi float %229 to i32
  %232 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %3, i32 0, i32 %230, i32 %231, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %233 = extractvalue %dx.types.ResRet.i32 %232, 0
  %234 = lshr i32 %233, 18
  %235 = uitofp i32 %234 to float
  %236 = fmul fast float %235, 0x3F4C00EBA0000000
  %237 = call float @dx.op.unary.f32(i32 21, float %236)  ; Exp(value)
  %238 = fadd fast float %237, -1.000000e+00
  %239 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3, i32 0)  ; GetDimensions(handle,mipLevel)
  %240 = extractvalue %dx.types.Dimensions %239, 0
  %241 = sitofp i32 %240 to float
  %242 = extractvalue %dx.types.Dimensions %239, 1
  %243 = sitofp i32 %242 to float
  %244 = fcmp fast oge float %228, %241
  %245 = fcmp fast oge float %229, %243
  %246 = or i1 %244, %245
  %247 = select i1 %246, float 0x4197782600000000, float %238
  %248 = fsub fast float %247, %45
  %249 = fcmp fast ogt float %248, 0.000000e+00
  %250 = and i32 %136, -2
  %251 = icmp eq i32 %250, 2
  %252 = and i1 %251, %249
  %253 = xor i1 %249, true
  %254 = icmp eq i32 %136, 1
  %255 = and i1 %254, %253
  %256 = or i1 %252, %255
  %257 = and i32 %140, 262144
  %258 = icmp ne i32 %257, 0
  %259 = and i1 %258, %256
  %260 = xor i1 %256, true
  %261 = and i32 %140, 131072
  %262 = icmp ne i32 %261, 0
  %263 = and i1 %262, %260
  %264 = or i1 %259, %263
  br i1 %264, label %265, label %266

; <label>:265                                     ; preds = %226
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %266

; <label>:266                                     ; preds = %265, %226
  %267 = and i32 %140, 32
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %518, label %269, !dx.controlflow.hints !63

; <label>:269                                     ; preds = %266
  %270 = add i32 %137, 80
  %271 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.f32 %271, 0
  %273 = extractvalue %dx.types.ResRet.f32 %271, 1
  %274 = extractvalue %dx.types.ResRet.f32 %271, 2
  %275 = extractvalue %dx.types.ResRet.f32 %271, 3
  %276 = add i32 %137, 96
  %277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.f32 %277, 0
  %279 = extractvalue %dx.types.ResRet.f32 %277, 1
  %280 = extractvalue %dx.types.ResRet.f32 %277, 2
  %281 = add i32 %137, 112
  %282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.f32 %282, 0
  %284 = extractvalue %dx.types.ResRet.f32 %282, 1
  %285 = extractvalue %dx.types.ResRet.f32 %282, 2
  %286 = extractvalue %dx.types.ResRet.f32 %282, 3
  %287 = add i32 %137, 128
  %288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.f32 %288, 0
  %290 = extractvalue %dx.types.ResRet.f32 %288, 1
  %291 = extractvalue %dx.types.ResRet.f32 %288, 2
  %292 = extractvalue %dx.types.ResRet.f32 %288, 3
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %138, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = and i32 %294, 4096
  %296 = icmp ne i32 %295, 0
  %297 = fcmp fast une float %280, 0.000000e+00
  %298 = and i32 %294, 64
  %299 = icmp ne i32 %298, 0
  %300 = and i32 %294, 128
  %301 = icmp eq i32 %300, 0
  %302 = and i32 %294, 2048
  %303 = icmp eq i32 %302, 0
  %304 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %6, i32 0)  ; GetDimensions(handle,mipLevel)
  %305 = extractvalue %dx.types.Dimensions %304, 0
  %306 = sitofp i32 %305 to float
  %307 = extractvalue %dx.types.Dimensions %304, 1
  %308 = sitofp i32 %307 to float
  %309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %310 = extractvalue %dx.types.CBufRet.f32 %309, 2
  %311 = extractvalue %dx.types.CBufRet.f32 %309, 3
  %312 = fmul fast float %310, %50
  %313 = fmul fast float %311, %51
  %314 = fmul fast float %312, %306
  %315 = fmul fast float %313, %308
  %316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %317 = extractvalue %dx.types.CBufRet.f32 %316, 1
  %318 = fsub fast float -0.000000e+00, %317
  %319 = fptoui float %318 to i32
  %320 = fptoui float %314 to i32
  %321 = fptoui float %315 to i32
  %322 = and i32 %319, 31
  %323 = lshr i32 %320, %322
  %324 = lshr i32 %321, %322
  %325 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 %319, i32 %323, i32 %324, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %326 = extractvalue %dx.types.ResRet.f32 %325, 0
  %327 = fcmp fast ogt float %326, -1.000000e+00
  %328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %329 = extractvalue %dx.types.CBufRet.f32 %328, 1
  %330 = select i1 %327, float %329, float 1.000000e+00
  %331 = fadd fast float %326, 1.000000e+00
  %332 = fmul fast float %330, %331
  %333 = call float @dx.op.unary.f32(i32 6, float %332)  ; FAbs(value)
  %334 = extractvalue %dx.types.CBufRet.f32 %328, 3
  %335 = fcmp fast oge float %333, %334
  %336 = select i1 %335, float 0x4197782600000000, float %333
  br i1 %303, label %414, label %337, !dx.controlflow.hints !64

; <label>:337                                     ; preds = %269
  %338 = fmul fast float %55, %310
  %339 = fmul fast float %57, %311
  %340 = fsub fast float 1.000000e+00, %338
  %341 = fsub fast float 1.000000e+00, %339
  %342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %343 = extractvalue %dx.types.CBufRet.f32 %342, 0
  %344 = extractvalue %dx.types.CBufRet.f32 %342, 1
  %345 = extractvalue %dx.types.CBufRet.f32 %342, 2
  %346 = fmul fast float %340, %343
  %347 = fmul fast float %340, %344
  %348 = fmul fast float %340, %345
  %349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %350 = extractvalue %dx.types.CBufRet.f32 %349, 0
  %351 = extractvalue %dx.types.CBufRet.f32 %349, 1
  %352 = extractvalue %dx.types.CBufRet.f32 %349, 2
  %353 = fmul fast float %341, %350
  %354 = fmul fast float %341, %351
  %355 = fmul fast float %341, %352
  %356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %357 = extractvalue %dx.types.CBufRet.f32 %356, 0
  %358 = extractvalue %dx.types.CBufRet.f32 %356, 1
  %359 = extractvalue %dx.types.CBufRet.f32 %356, 2
  %360 = fadd fast float %353, %357
  %361 = fadd fast float %360, %346
  %362 = fadd fast float %354, %358
  %363 = fadd fast float %362, %347
  %364 = fadd fast float %355, %359
  %365 = fadd fast float %364, %348
  %366 = fmul fast float %361, %336
  %367 = fmul fast float %363, %336
  %368 = fmul fast float %365, %336
  %369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %370 = extractvalue %dx.types.CBufRet.f32 %369, 0
  %371 = extractvalue %dx.types.CBufRet.f32 %369, 1
  %372 = extractvalue %dx.types.CBufRet.f32 %369, 2
  %373 = fsub fast float %370, %24
  %374 = fadd fast float %373, %366
  %375 = fsub fast float %371, %25
  %376 = fadd fast float %375, %367
  %377 = fsub fast float %372, %26
  %378 = fadd fast float %377, %368
  %379 = fmul fast float %27, %27
  %380 = call float @dx.op.dot3.f32(i32 55, float %374, float %376, float %378, float %374, float %376, float %378)  ; Dot3(ax,ay,az,bx,by,bz)
  %381 = fsub fast float %379, %380
  %382 = fmul fast float %279, %379
  %383 = fmul fast float %278, %379
  %384 = fcmp fast olt float %381, %382
  %385 = fcmp fast ogt float %381, %383
  %386 = or i1 %384, %385
  %387 = select i1 %386, float 0.000000e+00, float %381
  %388 = fsub fast float %278, %279
  %389 = fmul fast float %388, %379
  %390 = fsub fast float %387, %382
  %391 = fdiv fast float %390, %389
  %392 = call float @dx.op.unary.f32(i32 7, float %391)  ; Saturate(value)
  %393 = fmul fast float %392, 2.000000e+00
  %394 = fsub fast float 3.000000e+00, %393
  %395 = fmul fast float %392, %392
  %396 = fmul fast float %395, %394
  %397 = fmul fast float %283, %39
  %398 = fmul fast float %284, %40
  %399 = fmul fast float %285, %41
  %400 = fsub fast float %397, %289
  %401 = fsub fast float %398, %290
  %402 = fsub fast float %399, %291
  %403 = fsub fast float %286, %292
  %404 = fmul fast float %396, %400
  %405 = fmul fast float %396, %401
  %406 = fmul fast float %396, %402
  %407 = fmul fast float %396, %403
  %408 = fadd fast float %404, %289
  %409 = fadd fast float %405, %290
  %410 = fadd fast float %406, %291
  %411 = fadd fast float %407, %292
  %412 = fmul fast float %272, %272
  %413 = fmul fast float %412, %387
  br label %509

; <label>:414                                     ; preds = %269
  %415 = and i32 %294, 256
  %416 = icmp eq i32 %415, 0
  %417 = fsub fast float %336, %45
  br i1 %416, label %466, label %418

; <label>:418                                     ; preds = %414
  %419 = fadd fast float %278, %45
  %420 = fcmp fast olt float %336, %45
  %421 = fcmp fast ogt float %336, %419
  %422 = or i1 %420, %421
  %423 = select i1 %422, float 0.000000e+00, float %417
  %424 = call float @dx.op.unary.f32(i32 83, float %336)  ; DerivCoarseX(value)
  %425 = call float @dx.op.unary.f32(i32 84, float %336)  ; DerivCoarseY(value)
  %426 = fmul fast float %424, %424
  %427 = fmul fast float %425, %425
  %428 = fadd fast float %427, %426
  %429 = call float @dx.op.unary.f32(i32 24, float %428)  ; Sqrt(value)
  %430 = extractvalue %dx.types.CBufRet.f32 %316, 2
  %431 = fmul fast float %430, %429
  %432 = call float @dx.op.unary.f32(i32 7, float %431)  ; Saturate(value)
  %433 = fmul fast float %432, %279
  %434 = fdiv fast float %417, %433
  %435 = call float @dx.op.unary.f32(i32 7, float %434)  ; Saturate(value)
  %436 = fmul fast float %435, 2.000000e+00
  %437 = fsub fast float 3.000000e+00, %436
  %438 = fmul fast float %435, %435
  %439 = fmul fast float %438, %437
  %440 = fsub fast float %336, %419
  %441 = fadd fast float %440, %433
  %442 = fdiv fast float %441, %433
  %443 = call float @dx.op.unary.f32(i32 7, float %442)  ; Saturate(value)
  %444 = fmul fast float %443, 2.000000e+00
  %445 = fsub fast float 3.000000e+00, %444
  %446 = fmul fast float %443, %443
  %447 = fmul fast float %446, %445
  %448 = fsub fast float %439, %447
  %449 = fmul fast float %283, %39
  %450 = fmul fast float %284, %40
  %451 = fmul fast float %285, %41
  %452 = fsub fast float %449, %289
  %453 = fsub fast float %450, %290
  %454 = fsub fast float %451, %291
  %455 = fsub fast float %286, %292
  %456 = fmul fast float %448, %452
  %457 = fmul fast float %448, %453
  %458 = fmul fast float %448, %454
  %459 = fmul fast float %448, %455
  %460 = fadd fast float %456, %289
  %461 = fadd fast float %457, %290
  %462 = fadd fast float %458, %291
  %463 = fadd fast float %459, %292
  %464 = fmul fast float %423, %272
  %465 = call float @dx.op.unary.f32(i32 6, float %464)  ; FAbs(value)
  br label %509

; <label>:466                                     ; preds = %414
  br i1 %297, label %467, label %480

; <label>:467                                     ; preds = %466
  %468 = fdiv fast float 5.000000e+01, %27
  %469 = select i1 %299, float %468, float 1.000000e+00
  %470 = fmul fast float %469, %272
  %471 = fmul fast float %187, 2.000000e+00
  %472 = fmul fast float %188, 2.000000e+00
  %473 = fadd fast float %471, -1.000000e+00
  %474 = fadd fast float %472, -1.000000e+00
  %475 = call float @dx.op.dot2.f32(i32 54, float %473, float %474, float %473, float %474)  ; Dot2(ax,ay,bx,by)
  %476 = fmul fast float %280, %27
  %477 = fmul fast float %476, %475
  %478 = fsub fast float %417, %477
  %479 = fmul fast float %470, %478
  br label %509

; <label>:480                                     ; preds = %466
  br i1 %301, label %501, label %481

; <label>:481                                     ; preds = %480
  %482 = fmul fast float %27, 0x3F947AE140000000
  %483 = select i1 %299, float %482, float 1.000000e+00
  %484 = fdiv fast float 1.000000e+00, %483
  %485 = fmul fast float %483, %273
  %486 = fmul fast float %483, %274
  %487 = fmul fast float %484, %275
  %488 = call float @dx.op.unary.f32(i32 6, float %417)  ; FAbs(value)
  %489 = fcmp fast olt float %488, %485
  br i1 %489, label %490, label %494, !dx.controlflow.hints !65

; <label>:490                                     ; preds = %481
  %491 = fmul fast float %484, %272
  %492 = fmul fast float %491, %488
  %493 = call float @dx.op.unary.f32(i32 6, float %492)  ; FAbs(value)
  br label %509

; <label>:494                                     ; preds = %481
  %495 = fcmp fast ogt float %488, %486
  br i1 %495, label %496, label %509

; <label>:496                                     ; preds = %494
  %497 = fsub fast float %488, %486
  %498 = fmul fast float %487, %497
  %499 = call float @dx.op.unary.f32(i32 6, float %498)  ; FAbs(value)
  %500 = fsub fast float 1.000000e+00, %499
  br label %509

; <label>:501                                     ; preds = %480
  %502 = fdiv fast float 5.000000e+01, %27
  %503 = select i1 %299, float %502, float 1.000000e+00
  %504 = fmul fast float %503, %272
  %505 = call float @dx.op.unary.f32(i32 6, float %248)  ; FAbs(value)
  %506 = select i1 %296, float %505, float 0x47EFFFFFE0000000
  %507 = call float @dx.op.binary.f32(i32 36, float %417, float %506)  ; FMin(a,b)
  %508 = fmul fast float %504, %507
  br label %509

; <label>:509                                     ; preds = %501, %496, %494, %490, %467, %418, %337
  %510 = phi float [ %413, %337 ], [ %465, %418 ], [ %479, %467 ], [ %508, %501 ], [ %493, %490 ], [ %500, %496 ], [ %488, %494 ]
  %511 = phi float [ %408, %337 ], [ %460, %418 ], [ %39, %467 ], [ %39, %501 ], [ %39, %490 ], [ %39, %496 ], [ %39, %494 ]
  %512 = phi float [ %409, %337 ], [ %461, %418 ], [ %40, %467 ], [ %40, %501 ], [ %40, %490 ], [ %40, %496 ], [ %40, %494 ]
  %513 = phi float [ %410, %337 ], [ %462, %418 ], [ %41, %467 ], [ %41, %501 ], [ %41, %490 ], [ %41, %496 ], [ %41, %494 ]
  %514 = phi float [ %411, %337 ], [ %463, %418 ], [ 1.000000e+00, %467 ], [ 1.000000e+00, %501 ], [ 1.000000e+00, %490 ], [ 1.000000e+00, %496 ], [ 1.000000e+00, %494 ]
  %515 = call float @dx.op.unary.f32(i32 7, float %510)  ; Saturate(value)
  %516 = fmul fast float %514, %227
  %517 = fmul fast float %516, %515
  br label %518

; <label>:518                                     ; preds = %509, %266
  %519 = phi float [ %511, %509 ], [ %39, %266 ]
  %520 = phi float [ %512, %509 ], [ %40, %266 ]
  %521 = phi float [ %513, %509 ], [ %41, %266 ]
  %522 = phi float [ %517, %509 ], [ %227, %266 ]
  %523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %524 = extractvalue %dx.types.CBufRet.f32 %523, 2
  %525 = fptosi float %45 to i32
  %526 = sitofp i32 %525 to float
  %527 = fadd fast float %524, %526
  %528 = fmul fast float %527, 0x3FE3C6EF40000000
  %529 = frem fast float %50, 2.560000e+02
  %530 = frem fast float %51, 2.560000e+02
  %531 = fptoui float %529 to i32
  %532 = fptoui float %530 to i32
  %533 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %531, i32 %532, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %534 = extractvalue %dx.types.ResRet.f32 %533, 0
  %535 = fadd fast float %534, %528
  %536 = call float @dx.op.unary.f32(i32 22, float %535)  ; Frc(value)
  %537 = and i32 %140, 1
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %595, label %539, !dx.controlflow.hints !66

; <label>:539                                     ; preds = %518
  %540 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %137, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.f32 %540, 2
  %542 = extractvalue %dx.types.ResRet.f32 %540, 3
  %543 = add i32 %137, 16
  %544 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %543, i32 undef)  ; BufferLoad(srv,index,wot)
  %545 = extractvalue %dx.types.ResRet.f32 %544, 0
  %546 = extractvalue %dx.types.ResRet.f32 %544, 1
  %547 = extractvalue %dx.types.ResRet.f32 %544, 2
  %548 = add i32 %137, 32
  %549 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %548, i32 undef)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.f32 %549, 0
  %551 = extractvalue %dx.types.ResRet.f32 %549, 1
  %552 = extractvalue %dx.types.ResRet.f32 %549, 2
  %553 = and i32 %140, 2
  %554 = icmp eq i32 %553, 0
  %555 = call float @dx.op.dot3.f32(i32 55, float %34, float %35, float %36, float %34, float %35, float %36)  ; Dot3(ax,ay,az,bx,by,bz)
  %556 = call float @dx.op.unary.f32(i32 25, float %555)  ; Rsqrt(value)
  %557 = fmul fast float %556, %34
  %558 = fmul fast float %556, %35
  %559 = fmul fast float %556, %36
  %560 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %561 = call float @dx.op.unary.f32(i32 25, float %560)  ; Rsqrt(value)
  %562 = fmul fast float %561, %85
  %563 = fmul fast float %561, %86
  %564 = fmul fast float %561, %87
  %565 = call float @dx.op.dot3.f32(i32 55, float %562, float %563, float %564, float %557, float %558, float %559)  ; Dot3(ax,ay,az,bx,by,bz)
  %566 = fmul fast float %565, %565
  %567 = fmul fast float %566, %541
  %568 = fadd fast float %567, %542
  %569 = call float @dx.op.unary.f32(i32 7, float %568)  ; Saturate(value)
  br i1 %554, label %570, label %580, !dx.controlflow.hints !67

; <label>:570                                     ; preds = %539
  %571 = extractvalue %dx.types.ResRet.f32 %540, 1
  %572 = extractvalue %dx.types.ResRet.f32 %540, 0
  %573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %574 = extractvalue %dx.types.CBufRet.f32 %573, 3
  %575 = fmul fast float %574, %560
  %576 = fsub fast float %572, %575
  %577 = fmul fast float %576, %571
  %578 = call float @dx.op.unary.f32(i32 7, float %577)  ; Saturate(value)
  %579 = fmul fast float %578, %569
  br label %580

; <label>:580                                     ; preds = %570, %539
  %581 = phi float [ %579, %570 ], [ %569, %539 ]
  %582 = fsub fast float %545, %550
  %583 = fsub fast float %546, %551
  %584 = fsub fast float %547, %552
  %585 = fmul fast float %581, %582
  %586 = fmul fast float %581, %583
  %587 = fmul fast float %581, %584
  %588 = fadd fast float %585, %550
  %589 = fadd fast float %586, %551
  %590 = fadd fast float %587, %552
  %591 = fmul fast float %588, %519
  %592 = fmul fast float %589, %520
  %593 = fmul fast float %590, %521
  %594 = fmul fast float %581, %522
  br label %595

; <label>:595                                     ; preds = %580, %518
  %596 = phi float [ %591, %580 ], [ %519, %518 ]
  %597 = phi float [ %592, %580 ], [ %520, %518 ]
  %598 = phi float [ %593, %580 ], [ %521, %518 ]
  %599 = phi float [ %594, %580 ], [ %522, %518 ]
  %600 = add i32 %23, 104
  %601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %600, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.i32 %601, 0
  %603 = add i32 %602, 0
  %604 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %603, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %605 = add i32 %23, 24
  %606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %605, i32 undef)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.i32 %606, 0
  %608 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %604, %dx.types.Handle %46, float %177, float %178, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %609 = extractvalue %dx.types.ResRet.f32 %608, 0
  %610 = extractvalue %dx.types.ResRet.f32 %608, 1
  %611 = extractvalue %dx.types.ResRet.f32 %608, 2
  %612 = extractvalue %dx.types.ResRet.f32 %608, 3
  %613 = and i32 %607, 255
  %614 = uitofp i32 %613 to float
  %615 = lshr i32 %607, 8
  %616 = and i32 %615, 255
  %617 = uitofp i32 %616 to float
  %618 = fmul fast float %612, %614
  %619 = fadd fast float %618, %617
  %620 = fmul fast float %619, 0x3F70101000000000
  %621 = add i32 %23, 56
  %622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %621, i32 undef)  ; BufferLoad(srv,index,wot)
  %623 = extractvalue %dx.types.ResRet.i32 %622, 0
  %624 = and i32 %623, 255
  %625 = uitofp i32 %624 to float
  %626 = fmul fast float %625, 0x3F70101020000000
  %627 = lshr i32 %623, 8
  %628 = and i32 %627, 255
  %629 = uitofp i32 %628 to float
  %630 = fmul fast float %629, 0x3F70101020000000
  %631 = lshr i32 %623, 16
  %632 = and i32 %631, 255
  %633 = uitofp i32 %632 to float
  %634 = fmul fast float %633, 0x3F70101020000000
  %635 = fmul fast float %609, %596
  %636 = fmul fast float %626, %626
  %637 = fmul fast float %636, %635
  %638 = fmul fast float %610, %597
  %639 = fmul fast float %630, %630
  %640 = fmul fast float %639, %638
  %641 = fmul fast float %611, %598
  %642 = fmul fast float %634, %634
  %643 = fmul fast float %642, %641
  %644 = add i32 %23, 28
  %645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %644, i32 undef)  ; BufferLoad(srv,index,wot)
  %646 = extractvalue %dx.types.ResRet.i32 %645, 0
  %647 = add i32 %23, 108
  %648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %647, i32 undef)  ; BufferLoad(srv,index,wot)
  %649 = extractvalue %dx.types.ResRet.i32 %648, 0
  %650 = add i32 %649, 0
  %651 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %650, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %652 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %651, %dx.types.Handle %46, float %177, float %178, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %653 = extractvalue %dx.types.ResRet.f32 %652, 0
  %654 = extractvalue %dx.types.ResRet.f32 %652, 1
  %655 = extractvalue %dx.types.ResRet.f32 %652, 3
  %656 = and i32 %646, 255
  %657 = uitofp i32 %656 to float
  %658 = lshr i32 %646, 8
  %659 = and i32 %658, 255
  %660 = uitofp i32 %659 to float
  %661 = lshr i32 %646, 16
  %662 = and i32 %661, 255
  %663 = uitofp i32 %662 to float
  %664 = fmul fast float %663, 0x3F70101000000000
  %665 = fmul fast float %653, %657
  %666 = fadd fast float %665, %660
  %667 = fmul fast float %666, 0x3F70101000000000
  %668 = fadd fast float %654, -5.000000e-01
  %669 = fadd fast float %655, -5.000000e-01
  %670 = fmul fast float %668, %664
  %671 = fmul fast float %669, %664
  %672 = fadd fast float %670, 5.000000e-01
  %673 = fadd fast float %671, 5.000000e-01
  %674 = fmul fast float %672, 2.000000e+00
  %675 = fadd fast float %674, -1.000000e+00
  %676 = fmul fast float %673, 2.000000e+00
  %677 = fadd fast float %676, -1.000000e+00
  %678 = fadd fast float %675, %677
  %679 = fmul fast float %678, 5.000000e-01
  %680 = fsub fast float %675, %677
  %681 = fmul fast float %680, 5.000000e-01
  %682 = call float @dx.op.unary.f32(i32 6, float %679)  ; FAbs(value)
  %683 = fsub fast float 1.000000e+00, %682
  %684 = call float @dx.op.unary.f32(i32 6, float %681)  ; FAbs(value)
  %685 = fsub fast float %683, %684
  %686 = call float @dx.op.dot3.f32(i32 55, float %679, float %681, float %685, float %679, float %681, float %685)  ; Dot3(ax,ay,az,bx,by,bz)
  %687 = call float @dx.op.unary.f32(i32 25, float %686)  ; Rsqrt(value)
  %688 = fmul fast float %679, %687
  %689 = fmul fast float %681, %687
  %690 = add i32 %23, 40
  %691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %690, i32 undef)  ; BufferLoad(srv,index,wot)
  %692 = extractvalue %dx.types.ResRet.i32 %691, 0
  %693 = and i32 %692, 255
  %694 = uitofp i32 %693 to float
  %695 = fmul fast float %694, 0x3F70101020000000
  %696 = lshr i32 %692, 8
  %697 = and i32 %696, 255
  %698 = uitofp i32 %697 to float
  %699 = fmul fast float %698, 0x3F70101020000000
  %700 = lshr i32 %692, 16
  %701 = and i32 %700, 255
  %702 = uitofp i32 %701 to float
  %703 = fmul fast float %702, 0x3F70101020000000
  %704 = fmul fast float %695, %695
  %705 = fmul fast float %699, %699
  %706 = fmul fast float %703, %703
  %707 = add i32 %23, 116
  %708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %707, i32 undef)  ; BufferLoad(srv,index,wot)
  %709 = extractvalue %dx.types.ResRet.i32 %708, 0
  %710 = add i32 %709, 0
  %711 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %710, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %712 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %711, %dx.types.Handle %47, float %177, float %178, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %713 = extractvalue %dx.types.ResRet.f32 %712, 0
  %714 = extractvalue %dx.types.ResRet.f32 %712, 1
  %715 = extractvalue %dx.types.ResRet.f32 %712, 2
  %716 = fmul fast float %704, %713
  %717 = fmul fast float %705, %714
  %718 = fmul fast float %706, %715
  %719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %720 = extractvalue %dx.types.CBufRet.f32 %719, 3
  %721 = fcmp fast ogt float %720, 0.000000e+00
  %722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %723 = extractvalue %dx.types.CBufRet.f32 %722, 1
  br i1 %721, label %724, label %749

; <label>:724                                     ; preds = %595
  %725 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %28, float %29, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %726 = extractvalue %dx.types.ResRet.f32 %725, 0
  %727 = extractvalue %dx.types.ResRet.f32 %725, 1
  %728 = extractvalue %dx.types.ResRet.f32 %725, 2
  %729 = extractvalue %dx.types.ResRet.f32 %725, 3
  %730 = fmul fast float %723, %729
  %731 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %28, float %29, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %732 = extractvalue %dx.types.ResRet.f32 %731, 0
  %733 = extractvalue %dx.types.ResRet.f32 %731, 1
  %734 = extractvalue %dx.types.ResRet.f32 %731, 2
  %735 = extractvalue %dx.types.ResRet.f32 %731, 3
  %736 = fmul fast float %723, %732
  %737 = fmul fast float %723, %733
  %738 = fmul fast float %723, %734
  %739 = fmul fast float %723, %735
  %740 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %28, float %29, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %741 = extractvalue %dx.types.ResRet.f32 %740, 0
  %742 = extractvalue %dx.types.ResRet.f32 %740, 1
  %743 = extractvalue %dx.types.ResRet.f32 %740, 2
  %744 = extractvalue %dx.types.ResRet.f32 %740, 3
  %745 = fmul fast float %723, %741
  %746 = fmul fast float %723, %742
  %747 = fmul fast float %723, %743
  %748 = fmul fast float %723, %744
  br label %754

; <label>:749                                     ; preds = %595
  %750 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %28, float %29, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %751 = extractvalue %dx.types.ResRet.f32 %750, 0
  %752 = extractvalue %dx.types.ResRet.f32 %750, 1
  %753 = extractvalue %dx.types.ResRet.f32 %750, 2
  br label %754

; <label>:754                                     ; preds = %749, %724
  %755 = phi float [ %726, %724 ], [ %751, %749 ]
  %756 = phi float [ %727, %724 ], [ %752, %749 ]
  %757 = phi float [ %728, %724 ], [ %753, %749 ]
  %758 = phi float [ %730, %724 ], [ 0.000000e+00, %749 ]
  %759 = phi float [ %736, %724 ], [ 0.000000e+00, %749 ]
  %760 = phi float [ %737, %724 ], [ 0.000000e+00, %749 ]
  %761 = phi float [ %738, %724 ], [ 0.000000e+00, %749 ]
  %762 = phi float [ %739, %724 ], [ 0.000000e+00, %749 ]
  %763 = phi float [ %745, %724 ], [ 0.000000e+00, %749 ]
  %764 = phi float [ %746, %724 ], [ 0.000000e+00, %749 ]
  %765 = phi float [ %747, %724 ], [ 0.000000e+00, %749 ]
  %766 = phi float [ %748, %724 ], [ 0.000000e+00, %749 ]
  %767 = fmul float %723, %757
  %768 = fmul float %723, %756
  %769 = fmul float %723, %755
  %770 = call float @dx.op.dot2.f32(i32 54, float %688, float %689, float %688, float %689)  ; Dot2(ax,ay,bx,by)
  %771 = fsub fast float 1.000000e+00, %770
  %772 = call float @dx.op.unary.f32(i32 7, float %771)  ; Saturate(value)
  %773 = call float @dx.op.unary.f32(i32 24, float %772)  ; Sqrt(value)
  %774 = fmul fast float %773, %34
  %775 = fmul fast float %773, %35
  %776 = fmul fast float %773, %36
  %777 = fmul fast float %688, %30
  %778 = fmul fast float %688, %31
  %779 = fmul fast float %688, %32
  %780 = fmul fast float %97, %689
  %781 = fmul fast float %98, %689
  %782 = fmul fast float %99, %689
  %783 = fadd fast float %780, %777
  %784 = fadd fast float %783, %774
  %785 = fadd fast float %781, %778
  %786 = fadd fast float %785, %775
  %787 = fadd fast float %782, %779
  %788 = fadd fast float %787, %776
  %789 = call float @dx.op.dot3.f32(i32 55, float %784, float %786, float %788, float %784, float %786, float %788)  ; Dot3(ax,ay,az,bx,by,bz)
  %790 = call float @dx.op.unary.f32(i32 25, float %789)  ; Rsqrt(value)
  %791 = fmul fast float %784, %790
  %792 = fmul fast float %786, %790
  %793 = fmul fast float %788, %790
  %794 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %795 = call float @dx.op.unary.f32(i32 25, float %794)  ; Rsqrt(value)
  %796 = fmul fast float %795, %85
  %797 = fmul fast float %795, %86
  %798 = fmul fast float %795, %87
  %799 = fsub fast float -0.000000e+00, %796
  %800 = fsub fast float -0.000000e+00, %797
  %801 = fsub fast float -0.000000e+00, %798
  %802 = fadd fast float %620, 0xBFB99999A0000000
  %803 = call float @dx.op.unary.f32(i32 7, float %802)  ; Saturate(value)
  %804 = fmul fast float %803, 0x3FF1C71C80000000
  %805 = call float @dx.op.binary.f32(i32 36, float %620, float 0x3FB99999A0000000)  ; FMin(a,b)
  %806 = fsub fast float 1.000000e+00, %804
  %807 = call float @dx.op.unary.f32(i32 7, float %806)  ; Saturate(value)
  %808 = fmul fast float %807, %637
  %809 = fmul fast float %807, %640
  %810 = fmul fast float %807, %643
  %811 = call float @dx.op.unary.f32(i32 7, float %808)  ; Saturate(value)
  %812 = call float @dx.op.unary.f32(i32 7, float %809)  ; Saturate(value)
  %813 = call float @dx.op.unary.f32(i32 7, float %810)  ; Saturate(value)
  %814 = fmul fast float %804, %637
  %815 = fmul fast float %804, %640
  %816 = fmul fast float %804, %643
  %817 = fadd fast float %814, %805
  %818 = fadd fast float %815, %805
  %819 = fadd fast float %816, %805
  %820 = call float @dx.op.unary.f32(i32 7, float %817)  ; Saturate(value)
  %821 = call float @dx.op.unary.f32(i32 7, float %818)  ; Saturate(value)
  %822 = call float @dx.op.unary.f32(i32 7, float %819)  ; Saturate(value)
  %823 = call float @dx.op.unary.f32(i32 7, float %667)  ; Saturate(value)
  %824 = call float @dx.op.dot3.f32(i32 55, float %811, float %812, float %813, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %825 = add i32 %23, 32
  %826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %825, i32 undef)  ; BufferLoad(srv,index,wot)
  %827 = extractvalue %dx.types.ResRet.i32 %826, 0
  %828 = and i32 %827, 255
  %829 = uitofp i32 %828 to float
  %830 = lshr i32 %827, 8
  %831 = and i32 %830, 255
  %832 = uitofp i32 %831 to float
  %833 = fmul fast float %832, %824
  %834 = fadd fast float %833, %829
  %835 = fmul fast float %834, 0x3F70101020000000
  %836 = call float @dx.op.unary.f32(i32 7, float %835)  ; Saturate(value)
  %837 = and i32 %140, 8192
  %838 = icmp eq i32 %837, 0
  %839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %840 = extractvalue %dx.types.CBufRet.f32 %839, 0
  br i1 %838, label %847, label %841, !dx.controlflow.hints !68

; <label>:841                                     ; preds = %754
  %842 = add i32 %137, 176
  %843 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %842, i32 undef)  ; BufferLoad(srv,index,wot)
  %844 = extractvalue %dx.types.ResRet.f32 %843, 0
  %845 = fcmp fast oge float %844, 0.000000e+00
  %846 = select i1 %845, float %844, float %840
  br label %847

; <label>:847                                     ; preds = %841, %754
  %848 = phi float [ %846, %841 ], [ %840, %754 ]
  %849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %850 = extractvalue %dx.types.CBufRet.f32 %849, 3
  %851 = fcmp fast ogt float %850, 0.000000e+00
  br i1 %851, label %852, label %859

; <label>:852                                     ; preds = %847
  %853 = fmul fast float %792, 0xBFDF454380000000
  %854 = fmul fast float %793, 0x3FDF454380000000
  %855 = fmul fast float %791, 0xBFDF454380000000
  %856 = call float @dx.op.dot4.f32(i32 56, float %769, float %768, float %767, float %758, float 0x3FD20DD760000000, float %853, float %854, float %855)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %857 = call float @dx.op.dot4.f32(i32 56, float %759, float %760, float %761, float %762, float 0x3FD20DD760000000, float %853, float %854, float %855)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %858 = call float @dx.op.dot4.f32(i32 56, float %763, float %764, float %765, float %766, float 0x3FD20DD760000000, float %853, float %854, float %855)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %859

; <label>:859                                     ; preds = %852, %847
  %860 = phi float [ %856, %852 ], [ %769, %847 ]
  %861 = phi float [ %857, %852 ], [ %768, %847 ]
  %862 = phi float [ %858, %852 ], [ %767, %847 ]
  %863 = call float @dx.op.dot3.f32(i32 55, float %791, float %792, float %793, float %799, float %800, float %801)  ; Dot3(ax,ay,az,bx,by,bz)
  %864 = call float @dx.op.unary.f32(i32 7, float %863)  ; Saturate(value)
  br i1 %851, label %865, label %965

; <label>:865                                     ; preds = %859
  %866 = fsub fast float -0.000000e+00, %758
  %867 = fsub fast float %866, %762
  %868 = fsub fast float -0.000000e+00, %768
  %869 = fsub fast float %868, %760
  %870 = fadd fast float %761, %767
  %871 = fsub fast float %867, %766
  %872 = fsub fast float %869, %764
  %873 = fadd fast float %870, %765
  %874 = call float @dx.op.dot3.f32(i32 55, float %871, float %872, float %873, float %871, float %872, float %873)  ; Dot3(ax,ay,az,bx,by,bz)
  %875 = call float @dx.op.unary.f32(i32 25, float %874)  ; Rsqrt(value)
  %876 = fmul fast float %875, %871
  %877 = fmul fast float %875, %872
  %878 = fmul fast float %875, %873
  %879 = fmul fast float %877, 0xBFD4D8D7C0000000
  %880 = fmul fast float %878, 0x3FD4D8D7C0000000
  %881 = fmul fast float %876, 0xBFD4D8D7C0000000
  %882 = call float @dx.op.dot4.f32(i32 56, float %769, float %768, float %767, float %758, float 0x3FD20DD760000000, float %879, float %880, float %881)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %883 = call float @dx.op.dot4.f32(i32 56, float %759, float %760, float %761, float %762, float 0x3FD20DD760000000, float %879, float %880, float %881)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %884 = call float @dx.op.dot4.f32(i32 56, float %763, float %764, float %765, float %766, float 0x3FD20DD760000000, float %879, float %880, float %881)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %885 = fmul fast float %882, 0x4003333340000000
  %886 = fmul fast float %769, 0x3FE5AA35A0000000
  %887 = fsub fast float %885, %886
  %888 = fmul fast float %883, 0x4003333340000000
  %889 = fmul fast float %759, 0x3FE5AA35A0000000
  %890 = fsub fast float %888, %889
  %891 = fmul fast float %884, 0x4003333340000000
  %892 = fmul fast float %763, 0x3FE5AA35A0000000
  %893 = fsub fast float %891, %892
  %894 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %887)  ; FMax(a,b)
  %895 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %890)  ; FMax(a,b)
  %896 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %893)  ; FMax(a,b)
  %897 = fsub fast float %876, %796
  %898 = fsub fast float %877, %797
  %899 = fsub fast float %878, %798
  %900 = call float @dx.op.dot3.f32(i32 55, float %897, float %898, float %899, float %897, float %898, float %899)  ; Dot3(ax,ay,az,bx,by,bz)
  %901 = call float @dx.op.unary.f32(i32 25, float %900)  ; Rsqrt(value)
  %902 = fmul fast float %901, %897
  %903 = fmul fast float %901, %898
  %904 = fmul fast float %901, %899
  %905 = call float @dx.op.dot3.f32(i32 55, float %791, float %792, float %793, float %876, float %877, float %878)  ; Dot3(ax,ay,az,bx,by,bz)
  %906 = call float @dx.op.unary.f32(i32 6, float %905)  ; FAbs(value)
  %907 = call float @dx.op.dot3.f32(i32 55, float %791, float %792, float %793, float %902, float %903, float %904)  ; Dot3(ax,ay,az,bx,by,bz)
  %908 = fmul fast float %907, %907
  %909 = call float @dx.op.dot3.f32(i32 55, float %799, float %800, float %801, float %902, float %903, float %904)  ; Dot3(ax,ay,az,bx,by,bz)
  %910 = call float @dx.op.unary.f32(i32 6, float %909)  ; FAbs(value)
  %911 = fsub fast float 1.000000e+00, %823
  %912 = call float @dx.op.binary.f32(i32 35, float %911, float 0x3F847AE140000000)  ; FMax(a,b)
  %913 = fmul fast float %912, %912
  %914 = fmul fast float %913, %913
  %915 = fsub fast float 1.000000e+00, %914
  %916 = fmul fast float %864, %864
  %917 = fmul fast float %916, %915
  %918 = fadd fast float %917, %914
  %919 = bitcast float %918 to i32
  %920 = ashr i32 %919, 1
  %921 = add nsw i32 %920, 532487669
  %922 = bitcast i32 %921 to float
  %923 = fadd fast float %922, %864
  %924 = fmul fast float %914, %908
  %925 = fsub fast float 1.000000e+00, %908
  %926 = fadd fast float %925, %924
  %927 = fmul fast float %906, %906
  %928 = fmul fast float %927, %915
  %929 = fadd fast float %928, %914
  %930 = bitcast float %929 to i32
  %931 = ashr i32 %930, 1
  %932 = add nsw i32 %931, 532487669
  %933 = bitcast i32 %932 to float
  %934 = fadd fast float %933, %906
  %935 = fmul fast float %926, %926
  %936 = fmul fast float %935, %923
  %937 = fmul fast float %936, %934
  %938 = fdiv fast float 1.000000e+00, %937
  %939 = fmul fast float %914, %938
  %940 = fsub fast float 1.000000e+00, %910
  %941 = bitcast float %940 to i32
  %942 = sitofp i32 %941 to float
  %943 = fmul fast float %942, 5.000000e+00
  %944 = fadd fast float %943, 0xC1EFBF8940000000
  %945 = fptosi float %944 to i32
  %946 = bitcast i32 %945 to float
  %947 = fsub fast float 1.000000e+00, %820
  %948 = fsub fast float 1.000000e+00, %821
  %949 = fsub fast float 1.000000e+00, %822
  %950 = fmul fast float %946, %947
  %951 = fmul fast float %946, %948
  %952 = fmul fast float %946, %949
  %953 = fadd fast float %950, %820
  %954 = fadd fast float %951, %821
  %955 = fadd fast float %952, %822
  %956 = fmul fast float %939, %894
  %957 = fmul fast float %956, %953
  %958 = fmul fast float %939, %895
  %959 = fmul fast float %958, %954
  %960 = fmul fast float %939, %896
  %961 = fmul fast float %960, %955
  %962 = call float @dx.op.binary.f32(i32 35, float %957, float 0.000000e+00)  ; FMax(a,b)
  %963 = call float @dx.op.binary.f32(i32 35, float %959, float 0.000000e+00)  ; FMax(a,b)
  %964 = call float @dx.op.binary.f32(i32 35, float %961, float 0.000000e+00)  ; FMax(a,b)
  br label %965

; <label>:965                                     ; preds = %865, %859
  %966 = phi float [ %962, %865 ], [ 0.000000e+00, %859 ]
  %967 = phi float [ %963, %865 ], [ 0.000000e+00, %859 ]
  %968 = phi float [ %964, %865 ], [ 0.000000e+00, %859 ]
  %969 = fmul fast float %864, 9.843750e-01
  %970 = fmul fast float %823, 9.843750e-01
  %971 = fadd fast float %969, 7.812500e-03
  %972 = fadd fast float %970, 7.812500e-03
  %973 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %18, float %971, float %972, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %974 = extractvalue %dx.types.ResRet.f32 %973, 2
  %975 = extractvalue %dx.types.ResRet.f32 %973, 3
  %976 = fmul fast float %974, %820
  %977 = fmul fast float %974, %821
  %978 = fmul fast float %974, %822
  %979 = fadd fast float %976, %975
  %980 = fadd fast float %977, %975
  %981 = fadd fast float %978, %975
  %982 = call float @dx.op.binary.f32(i32 35, float %980, float %981)  ; FMax(a,b)
  %983 = call float @dx.op.binary.f32(i32 35, float %979, float %982)  ; FMax(a,b)
  %984 = fsub fast float 1.000000e+00, %983
  %985 = call float @dx.op.dot3.f32(i32 55, float %796, float %797, float %798, float %791, float %792, float %793)  ; Dot3(ax,ay,az,bx,by,bz)
  %986 = fmul fast float %985, 2.000000e+00
  %987 = fmul fast float %986, %791
  %988 = fmul fast float %986, %792
  %989 = fmul fast float %986, %793
  %990 = fsub fast float %796, %987
  %991 = fsub fast float %797, %988
  %992 = fsub fast float %798, %989
  br i1 %851, label %993, label %1000

; <label>:993                                     ; preds = %965
  %994 = fmul fast float %991, 0xBFDF454380000000
  %995 = fmul fast float %992, 0x3FDF454380000000
  %996 = fmul fast float %990, 0xBFDF454380000000
  %997 = call float @dx.op.dot4.f32(i32 56, float %769, float %768, float %767, float %758, float 0x3FD20DD760000000, float %994, float %995, float %996)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %998 = call float @dx.op.dot4.f32(i32 56, float %759, float %760, float %761, float %762, float 0x3FD20DD760000000, float %994, float %995, float %996)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %999 = call float @dx.op.dot4.f32(i32 56, float %763, float %764, float %765, float %766, float 0x3FD20DD760000000, float %994, float %995, float %996)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %1000

; <label>:1000                                    ; preds = %993, %965
  %1001 = phi float [ %997, %993 ], [ %769, %965 ]
  %1002 = phi float [ %998, %993 ], [ %768, %965 ]
  %1003 = phi float [ %999, %993 ], [ %767, %965 ]
  %1004 = call float @dx.op.dot3.f32(i32 55, float %1001, float %1002, float %1003, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %1006 = extractvalue %dx.types.CBufRet.f32 %1005, 2
  %1007 = extractvalue %dx.types.CBufRet.f32 %1005, 3
  %1008 = fmul fast float %1006, %50
  %1009 = fmul fast float %1007, %51
  %1010 = fptoui float %1008 to i32
  %1011 = fptoui float %1009 to i32
  %1012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1013 = extractvalue %dx.types.CBufRet.f32 %1012, 0
  %1014 = extractvalue %dx.types.CBufRet.f32 %1012, 2
  %1015 = extractvalue %dx.types.CBufRet.f32 %1012, 3
  %1016 = fadd fast float %45, -4.000000e+00
  %1017 = call float @dx.op.binary.f32(i32 35, float %1016, float 0.000000e+00)  ; FMax(a,b)
  %1018 = fadd fast float %1017, %1013
  %1019 = fmul fast float %1018, %1014
  %1020 = call float @dx.op.unary.f32(i32 23, float %1019)  ; Log(value)
  %1021 = fmul fast float %1020, %1015
  %1022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1023 = extractvalue %dx.types.CBufRet.f32 %1022, 2
  %1024 = fmul fast float %1021, %1023
  %1025 = call float @dx.op.unary.f32(i32 7, float %1024)  ; Saturate(value)
  %1026 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1027 = extractvalue %dx.types.CBufRet.i32 %1026, 1
  %1028 = add i32 %1027, -1
  %1029 = uitofp i32 %1027 to float
  %1030 = fmul fast float %1029, %1025
  %1031 = fptoui float %1030 to i32
  %1032 = call i32 @dx.op.binary.i32(i32 40, i32 %1031, i32 %1028)  ; UMin(a,b)
  %1033 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %1034 = extractvalue %dx.types.CBufRet.i32 %1033, 2
  %1035 = extractvalue %dx.types.CBufRet.i32 %1033, 3
  %1036 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1011, i32 %1034, i32 %1010)  ; UMad(a,b,c)
  %1037 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1032, i32 %1035, i32 %1036)  ; UMad(a,b,c)
  %1038 = call float @dx.op.binary.f32(i32 35, float %45, float 0.000000e+00)  ; FMax(a,b)
  %1039 = fptoui float %1038 to i32
  %1040 = lshr i32 %1039, 5
  %1041 = call i32 @dx.op.binary.i32(i32 40, i32 %1040, i32 8191)  ; UMin(a,b)
  %1042 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1043 = extractvalue %dx.types.CBufRet.i32 %1042, 2
  %1044 = add nsw i32 %1043, -1
  %1045 = call i32 @dx.op.binary.i32(i32 37, i32 %1044, i32 0)  ; IMax(a,b)
  %1046 = shl i32 %1041, 2
  %1047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1046, i32 undef)  ; BufferLoad(srv,index,wot)
  %1048 = extractvalue %dx.types.ResRet.i32 %1047, 0
  %1049 = lshr i32 %1048, 16
  %1050 = and i32 %1048, 65535
  %1051 = lshr i32 %1048, 21
  %1052 = lshr i32 %1050, 5
  %1053 = call i32 @dx.op.binary.i32(i32 40, i32 %1052, i32 %1045)  ; UMin(a,b)
  %1054 = icmp ugt i32 %1051, %1053
  br i1 %1054, label %1417, label %1055

; <label>:1055                                    ; preds = %1000
  br label %1056

; <label>:1056                                    ; preds = %1409, %1055
  %1057 = phi float [ %1410, %1409 ], [ 0.000000e+00, %1055 ]
  %1058 = phi float [ %1411, %1409 ], [ 0.000000e+00, %1055 ]
  %1059 = phi float [ %1412, %1409 ], [ 0.000000e+00, %1055 ]
  %1060 = phi float [ %1413, %1409 ], [ 1.000000e+00, %1055 ]
  %1061 = phi i32 [ %1414, %1409 ], [ %1051, %1055 ]
  %1062 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1063 = extractvalue %dx.types.CBufRet.i32 %1062, 2
  %1064 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1037, i32 %1063, i32 %1061)  ; UMad(a,b,c)
  %1065 = shl i32 %1064, 2
  %1066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %1065, i32 undef)  ; BufferLoad(srv,index,wot)
  %1067 = extractvalue %dx.types.ResRet.i32 %1066, 0
  %1068 = shl i32 %1061, 5
  %1069 = sub nsw i32 %1049, %1068
  %1070 = call i32 @dx.op.binary.i32(i32 37, i32 %1069, i32 0)  ; IMax(a,b)
  %1071 = call i32 @dx.op.binary.i32(i32 38, i32 %1070, i32 31)  ; IMin(a,b)
  %1072 = sub nsw i32 1, %1049
  %1073 = add nsw i32 %1072, %1050
  %1074 = call i32 @dx.op.binary.i32(i32 37, i32 %1073, i32 0)  ; IMax(a,b)
  %1075 = call i32 @dx.op.binary.i32(i32 38, i32 %1074, i32 32)  ; IMin(a,b)
  %1076 = and i32 %1075, 31
  %1077 = shl i32 -1, %1076
  %1078 = xor i32 %1077, -1
  %1079 = and i32 %1071, 31
  %1080 = shl i32 %1078, %1079
  %1081 = icmp eq i32 %1075, 32
  %1082 = select i1 %1081, i32 -1, i32 %1080
  %1083 = and i32 %1082, %1067
  %1084 = icmp eq i32 %1083, 0
  br i1 %1084, label %1409, label %1085

; <label>:1085                                    ; preds = %1056
  br label %1086

; <label>:1086                                    ; preds = %1192, %1085
  %1087 = phi float [ %1193, %1192 ], [ %1057, %1085 ]
  %1088 = phi float [ %1194, %1192 ], [ %1058, %1085 ]
  %1089 = phi float [ %1195, %1192 ], [ %1059, %1085 ]
  %1090 = phi float [ %1196, %1192 ], [ %1060, %1085 ]
  %1091 = phi i32 [ %1096, %1192 ], [ %1083, %1085 ]
  %1092 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1091)  ; FirstbitLo(value)
  %1093 = add i32 %1092, %1068
  %1094 = and i32 %1092, 31
  %1095 = shl i32 1, %1094
  %1096 = xor i32 %1095, %1091
  %1097 = mul i32 %1093, 72
  %1098 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %1097, i32 undef)  ; BufferLoad(srv,index,wot)
  %1099 = extractvalue %dx.types.ResRet.f32 %1098, 0
  %1100 = extractvalue %dx.types.ResRet.f32 %1098, 1
  %1101 = extractvalue %dx.types.ResRet.f32 %1098, 2
  %1102 = add i32 %1097, 12
  %1103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1102, i32 undef)  ; BufferLoad(srv,index,wot)
  %1104 = extractvalue %dx.types.ResRet.i32 %1103, 0
  %1105 = add i32 %1097, 16
  %1106 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %1105, i32 undef)  ; BufferLoad(srv,index,wot)
  %1107 = extractvalue %dx.types.ResRet.f32 %1106, 0
  %1108 = extractvalue %dx.types.ResRet.f32 %1106, 1
  %1109 = extractvalue %dx.types.ResRet.f32 %1106, 2
  %1110 = add i32 %1097, 28
  %1111 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %1110, i32 undef)  ; BufferLoad(srv,index,wot)
  %1112 = extractvalue %dx.types.ResRet.f32 %1111, 0
  %1113 = add i32 %1097, 32
  %1114 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %1113, i32 undef)  ; BufferLoad(srv,index,wot)
  %1115 = extractvalue %dx.types.ResRet.f32 %1114, 0
  %1116 = extractvalue %dx.types.ResRet.f32 %1114, 1
  %1117 = extractvalue %dx.types.ResRet.f32 %1114, 2
  %1118 = extractvalue %dx.types.ResRet.f32 %1114, 3
  %1119 = add i32 %1097, 48
  %1120 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %1119, i32 undef)  ; BufferLoad(srv,index,wot)
  %1121 = extractvalue %dx.types.ResRet.f32 %1120, 0
  %1122 = extractvalue %dx.types.ResRet.f32 %1120, 1
  %1123 = add i32 %1097, 56
  %1124 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %1123, i32 undef)  ; BufferLoad(srv,index,wot)
  %1125 = extractvalue %dx.types.ResRet.f32 %1124, 0
  %1126 = extractvalue %dx.types.ResRet.f32 %1124, 1
  %1127 = add i32 %1097, 64
  %1128 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %1127, i32 undef)  ; BufferLoad(srv,index,wot)
  %1129 = extractvalue %dx.types.ResRet.f32 %1128, 0
  %1130 = extractvalue %dx.types.ResRet.f32 %1128, 1
  %1131 = mul i32 %1093, 60
  %1132 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1131, i32 undef)  ; BufferLoad(srv,index,wot)
  %1133 = extractvalue %dx.types.ResRet.f32 %1132, 0
  %1134 = extractvalue %dx.types.ResRet.f32 %1132, 1
  %1135 = extractvalue %dx.types.ResRet.f32 %1132, 2
  %1136 = add i32 %1131, 12
  %1137 = add i32 %1131, 48
  %1138 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1137, i32 undef)  ; BufferLoad(srv,index,wot)
  %1139 = extractvalue %dx.types.ResRet.f32 %1138, 0
  %1140 = extractvalue %dx.types.ResRet.f32 %1138, 1
  %1141 = extractvalue %dx.types.ResRet.f32 %1138, 2
  %1142 = and i32 %1104, 32767
  %1143 = bitcast float %1099 to i32
  %1144 = icmp eq i32 %1143, -1
  %1145 = bitcast float %1100 to i32
  %1146 = and i32 %1104, 32768
  %1147 = icmp ne i32 %1146, 0
  %1148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1149 = extractvalue %dx.types.CBufRet.f32 %1148, 0
  %1150 = extractvalue %dx.types.CBufRet.f32 %1148, 1
  %1151 = extractvalue %dx.types.CBufRet.f32 %1148, 2
  %1152 = fsub fast float %1133, %1149
  %1153 = fsub fast float %1134, %1150
  %1154 = fsub fast float %1135, %1151
  %1155 = fsub fast float %85, %1152
  %1156 = fsub fast float %86, %1153
  %1157 = fsub fast float %87, %1154
  %1158 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1159 = extractvalue %dx.types.ResRet.f32 %1158, 0
  %1160 = extractvalue %dx.types.ResRet.f32 %1158, 1
  %1161 = extractvalue %dx.types.ResRet.f32 %1158, 2
  %1162 = call float @dx.op.dot3.f32(i32 55, float %1155, float %1156, float %1157, float %1159, float %1160, float %1161)  ; Dot3(ax,ay,az,bx,by,bz)
  %1163 = add i32 %1131, 24
  %1164 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1163, i32 undef)  ; BufferLoad(srv,index,wot)
  %1165 = extractvalue %dx.types.ResRet.f32 %1164, 0
  %1166 = extractvalue %dx.types.ResRet.f32 %1164, 1
  %1167 = extractvalue %dx.types.ResRet.f32 %1164, 2
  %1168 = call float @dx.op.dot3.f32(i32 55, float %1155, float %1156, float %1157, float %1165, float %1166, float %1167)  ; Dot3(ax,ay,az,bx,by,bz)
  %1169 = add i32 %1131, 36
  %1170 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1171 = extractvalue %dx.types.ResRet.f32 %1170, 0
  %1172 = extractvalue %dx.types.ResRet.f32 %1170, 1
  %1173 = extractvalue %dx.types.ResRet.f32 %1170, 2
  %1174 = call float @dx.op.dot3.f32(i32 55, float %1155, float %1156, float %1157, float %1171, float %1172, float %1173)  ; Dot3(ax,ay,az,bx,by,bz)
  %1175 = call float @dx.op.unary.f32(i32 6, float %1162)  ; FAbs(value)
  %1176 = call float @dx.op.unary.f32(i32 6, float %1168)  ; FAbs(value)
  %1177 = call float @dx.op.unary.f32(i32 6, float %1174)  ; FAbs(value)
  %1178 = fsub fast float %1139, %1175
  %1179 = fsub fast float %1140, %1176
  %1180 = fsub fast float %1141, %1177
  %1181 = fmul fast float %1178, %1107
  %1182 = fmul fast float %1179, %1108
  %1183 = fmul fast float %1180, %1109
  %1184 = call float @dx.op.binary.f32(i32 36, float %1182, float %1183)  ; FMin(a,b)
  %1185 = call float @dx.op.binary.f32(i32 36, float %1181, float %1184)  ; FMin(a,b)
  %1186 = call float @dx.op.unary.f32(i32 7, float %1185)  ; Saturate(value)
  %1187 = call float @dx.op.binary.f32(i32 36, float %1090, float %1186)  ; FMin(a,b)
  %1188 = uitofp i1 %1147 to float
  %1189 = fsub fast float 1.000000e+00, %1188
  %1190 = fmul fast float %1187, %1189
  %1191 = fcmp fast ogt float %1190, 0.000000e+00
  br i1 %1191, label %1198, label %1192

; <label>:1192                                    ; preds = %1340, %1086
  %1193 = phi float [ %1404, %1340 ], [ %1087, %1086 ]
  %1194 = phi float [ %1405, %1340 ], [ %1088, %1086 ]
  %1195 = phi float [ %1406, %1340 ], [ %1089, %1086 ]
  %1196 = phi float [ %1407, %1340 ], [ %1090, %1086 ]
  %1197 = icmp eq i32 %1091, %1095
  br i1 %1197, label %1408, label %1086

; <label>:1198                                    ; preds = %1086
  br i1 %1144, label %1256, label %1199

; <label>:1199                                    ; preds = %1198
  %1200 = fsub fast float -0.000000e+00, %1159
  %1201 = fsub fast float -0.000000e+00, %1160
  %1202 = fsub fast float -0.000000e+00, %1161
  %1203 = call float @dx.op.dot3.f32(i32 55, float %990, float %991, float %992, float %1200, float %1201, float %1202)  ; Dot3(ax,ay,az,bx,by,bz)
  %1204 = fsub fast float -0.000000e+00, %1203
  %1205 = call float @dx.op.dot3.f32(i32 55, float %1155, float %1156, float %1157, float %1200, float %1201, float %1202)  ; Dot3(ax,ay,az,bx,by,bz)
  %1206 = fadd fast float %1205, %1122
  %1207 = fadd fast float %1121, %1205
  %1208 = fsub fast float -0.000000e+00, %1207
  %1209 = fcmp ogt float %1203, -0.000000e+00
  %1210 = select i1 %1209, float %1208, float %1206
  %1211 = call float @dx.op.unary.f32(i32 6, float %1204)  ; FAbs(value)
  %1212 = fdiv fast float 1.000000e+00, %1211
  %1213 = fmul fast float %1210, %1212
  %1214 = call float @dx.op.binary.f32(i32 35, float %1213, float 0.000000e+00)  ; FMax(a,b)
  %1215 = fsub fast float -0.000000e+00, %1165
  %1216 = fsub fast float -0.000000e+00, %1166
  %1217 = fsub fast float -0.000000e+00, %1167
  %1218 = call float @dx.op.dot3.f32(i32 55, float %990, float %991, float %992, float %1215, float %1216, float %1217)  ; Dot3(ax,ay,az,bx,by,bz)
  %1219 = fsub fast float -0.000000e+00, %1218
  %1220 = call float @dx.op.dot3.f32(i32 55, float %1155, float %1156, float %1157, float %1215, float %1216, float %1217)  ; Dot3(ax,ay,az,bx,by,bz)
  %1221 = fadd fast float %1220, %1126
  %1222 = fadd fast float %1125, %1220
  %1223 = fsub fast float -0.000000e+00, %1222
  %1224 = fcmp ogt float %1218, -0.000000e+00
  %1225 = select i1 %1224, float %1223, float %1221
  %1226 = call float @dx.op.unary.f32(i32 6, float %1219)  ; FAbs(value)
  %1227 = fdiv fast float 1.000000e+00, %1226
  %1228 = fmul fast float %1225, %1227
  %1229 = call float @dx.op.binary.f32(i32 35, float %1228, float 0.000000e+00)  ; FMax(a,b)
  %1230 = fsub fast float -0.000000e+00, %1171
  %1231 = fsub fast float -0.000000e+00, %1172
  %1232 = fsub fast float -0.000000e+00, %1173
  %1233 = call float @dx.op.dot3.f32(i32 55, float %990, float %991, float %992, float %1230, float %1231, float %1232)  ; Dot3(ax,ay,az,bx,by,bz)
  %1234 = fsub fast float -0.000000e+00, %1233
  %1235 = call float @dx.op.dot3.f32(i32 55, float %1155, float %1156, float %1157, float %1230, float %1231, float %1232)  ; Dot3(ax,ay,az,bx,by,bz)
  %1236 = fadd fast float %1235, %1130
  %1237 = fadd fast float %1129, %1235
  %1238 = fsub fast float -0.000000e+00, %1237
  %1239 = fcmp ogt float %1233, -0.000000e+00
  %1240 = select i1 %1239, float %1238, float %1236
  %1241 = call float @dx.op.unary.f32(i32 6, float %1234)  ; FAbs(value)
  %1242 = fdiv fast float 1.000000e+00, %1241
  %1243 = fmul fast float %1240, %1242
  %1244 = call float @dx.op.binary.f32(i32 35, float %1243, float 0.000000e+00)  ; FMax(a,b)
  %1245 = call float @dx.op.binary.f32(i32 36, float %1229, float %1244)  ; FMin(a,b)
  %1246 = call float @dx.op.binary.f32(i32 36, float %1214, float %1245)  ; FMin(a,b)
  %1247 = fmul fast float %1246, %990
  %1248 = fmul fast float %1246, %991
  %1249 = fmul fast float %1246, %992
  %1250 = fadd fast float %1247, %85
  %1251 = fadd fast float %1248, %86
  %1252 = fadd fast float %1249, %87
  %1253 = fsub fast float %1250, %1099
  %1254 = fsub fast float %1251, %1100
  %1255 = fsub fast float %1252, %1101
  br label %1263

; <label>:1256                                    ; preds = %1198
  %1257 = fmul fast float %990, 8.096000e+03
  %1258 = fmul fast float %991, 8.096000e+03
  %1259 = fmul fast float %992, 8.096000e+03
  %1260 = fadd fast float %1257, %85
  %1261 = fadd fast float %1258, %86
  %1262 = fadd fast float %1259, %87
  br label %1263

; <label>:1263                                    ; preds = %1256, %1199
  %1264 = phi float [ %990, %1256 ], [ %1253, %1199 ]
  %1265 = phi float [ %991, %1256 ], [ %1254, %1199 ]
  %1266 = phi float [ %992, %1256 ], [ %1255, %1199 ]
  %1267 = phi float [ %1260, %1256 ], [ %1250, %1199 ]
  %1268 = phi float [ %1261, %1256 ], [ %1251, %1199 ]
  %1269 = phi float [ %1262, %1256 ], [ %1252, %1199 ]
  %1270 = fcmp fast olt float %1118, 1.000000e+00
  br i1 %1270, label %1271, label %1302, !dx.controlflow.hints !69

; <label>:1271                                    ; preds = %1263
  %1272 = fmul fast float %1266, %1116
  %1273 = fmul fast float %1265, %1117
  %1274 = fsub fast float %1272, %1273
  %1275 = fmul fast float %1264, %1117
  %1276 = fmul fast float %1266, %1115
  %1277 = fsub fast float %1275, %1276
  %1278 = fmul fast float %1265, %1115
  %1279 = fmul fast float %1264, %1116
  %1280 = fsub fast float %1278, %1279
  %1281 = fmul fast float %1274, 2.000000e+00
  %1282 = fmul fast float %1277, 2.000000e+00
  %1283 = fmul fast float %1280, 2.000000e+00
  %1284 = fmul fast float %1281, %1118
  %1285 = fmul fast float %1282, %1118
  %1286 = fmul fast float %1283, %1118
  %1287 = fmul fast float %1283, %1116
  %1288 = fmul fast float %1282, %1117
  %1289 = fmul fast float %1281, %1117
  %1290 = fmul fast float %1283, %1115
  %1291 = fmul fast float %1282, %1115
  %1292 = fmul fast float %1281, %1116
  %1293 = fadd fast float %1287, %1264
  %1294 = fadd fast float %1293, %1284
  %1295 = fsub fast float %1294, %1288
  %1296 = fsub fast float %1265, %1290
  %1297 = fadd fast float %1296, %1285
  %1298 = fadd fast float %1297, %1289
  %1299 = fadd fast float %1286, %1266
  %1300 = fsub fast float %1299, %1292
  %1301 = fadd fast float %1300, %1291
  br label %1302

; <label>:1302                                    ; preds = %1271, %1263
  %1303 = phi float [ %1295, %1271 ], [ %1264, %1263 ]
  %1304 = phi float [ %1298, %1271 ], [ %1265, %1263 ]
  %1305 = phi float [ %1301, %1271 ], [ %1266, %1263 ]
  br i1 %1144, label %1337, label %1306

; <label>:1306                                    ; preds = %1302
  %1307 = fmul fast float %823, 0x400187C840000000
  %1308 = fadd fast float %1307, 0xC00EFC2120000000
  %1309 = fmul fast float %1308, %823
  %1310 = fadd fast float %1309, 0x3FE5D16340000000
  %1311 = fmul fast float %1310, %823
  %1312 = fadd fast float %1311, 1.000000e+00
  %1313 = call float @dx.op.unary.f32(i32 7, float %1312)  ; Saturate(value)
  %1314 = fsub fast float %1267, %85
  %1315 = fsub fast float %1268, %86
  %1316 = fsub fast float %1269, %87
  %1317 = fsub fast float %1267, %1099
  %1318 = fsub fast float %1268, %1100
  %1319 = fsub fast float %1269, %1101
  %1320 = call float @dx.op.dot3.f32(i32 55, float %1314, float %1315, float %1316, float %1314, float %1315, float %1316)  ; Dot3(ax,ay,az,bx,by,bz)
  %1321 = call float @dx.op.dot3.f32(i32 55, float %1317, float %1318, float %1319, float %1317, float %1318, float %1319)  ; Dot3(ax,ay,az,bx,by,bz)
  %1322 = fadd fast float %1321, 0x3EE4F8B580000000
  %1323 = fdiv fast float %1320, %1322
  %1324 = bitcast float %1323 to i32
  %1325 = ashr i32 %1324, 1
  %1326 = add nsw i32 %1325, 532487669
  %1327 = bitcast i32 %1326 to float
  %1328 = fmul fast float %1327, %1313
  %1329 = call float @dx.op.unary.f32(i32 7, float %1328)  ; Saturate(value)
  %1330 = fmul fast float %1329, 0x4009981AE0000000
  %1331 = fsub fast float 0x40111BBD80000000, %1330
  %1332 = fmul fast float %1331, %1329
  %1333 = fadd fast float %1332, 0xC0009F6020000000
  %1334 = fmul fast float %1333, %1329
  %1335 = fadd fast float %1334, 1.000000e+00
  %1336 = call float @dx.op.unary.f32(i32 7, float %1335)  ; Saturate(value)
  br label %1340

; <label>:1337                                    ; preds = %1302
  %1338 = icmp ne i32 %1145, -1
  %1339 = zext i1 %1338 to i32
  br label %1340

; <label>:1340                                    ; preds = %1337, %1306
  %1341 = phi float [ %823, %1337 ], [ %1336, %1306 ]
  %1342 = phi i32 [ %1339, %1337 ], [ 0, %1306 ]
  %1343 = fmul float %1341, 5.000000e+00
  %1344 = fsub float 5.000000e+00, %1343
  %1345 = icmp ne i32 %1342, 0
  %1346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %1347 = extractvalue %dx.types.CBufRet.f32 %1346, 3
  %1348 = fadd fast float %1347, %1344
  %1349 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1348)  ; FMax(a,b)
  %1350 = call float @dx.op.unary.f32(i32 6, float %1303)  ; FAbs(value)
  %1351 = call float @dx.op.unary.f32(i32 6, float %1304)  ; FAbs(value)
  %1352 = fadd fast float %1351, %1350
  %1353 = call float @dx.op.unary.f32(i32 6, float %1305)  ; FAbs(value)
  %1354 = fadd fast float %1352, %1353
  %1355 = fcmp fast oeq float %1354, 0.000000e+00
  %1356 = fdiv fast float 1.000000e+00, %1354
  %1357 = select i1 %1355, float 1.000000e+00, float %1356
  %1358 = fmul fast float %1357, %1303
  %1359 = fmul fast float %1357, %1304
  %1360 = call float @dx.op.unary.f32(i32 6, float %1359)  ; FAbs(value)
  %1361 = call float @dx.op.unary.f32(i32 6, float %1358)  ; FAbs(value)
  %1362 = fsub fast float 1.000000e+00, %1360
  %1363 = fsub fast float 1.000000e+00, %1361
  %1364 = fcmp fast oge float %1358, 0.000000e+00
  %1365 = fcmp fast oge float %1359, 0.000000e+00
  %1366 = select i1 %1364, float 1.000000e+00, float -1.000000e+00
  %1367 = select i1 %1365, float 1.000000e+00, float -1.000000e+00
  %1368 = fcmp fast ole float %1305, 0.000000e+00
  %1369 = fmul fast float %1366, %1362
  %1370 = fmul fast float %1367, %1363
  %1371 = select i1 %1368, float %1369, float %1358
  %1372 = select i1 %1368, float %1370, float %1359
  %1373 = fmul fast float %1371, 5.000000e-01
  %1374 = fmul fast float %1372, 5.000000e-01
  %1375 = fadd fast float %1373, 5.000000e-01
  %1376 = fadd fast float %1374, 5.000000e-01
  %1377 = uitofp i32 %1142 to float
  %1378 = call float @dx.op.binary.f32(i32 36, float %1349, float 3.000000e+00)  ; FMin(a,b)
  %1379 = fadd fast float %1378, 2.000000e+00
  %1380 = call float @dx.op.unary.f32(i32 21, float %1379)  ; Exp(value)
  %1381 = extractvalue %dx.types.CBufRet.f32 %1346, 1
  %1382 = fmul fast float %1381, %1380
  %1383 = fmul fast float %1382, 2.000000e+00
  %1384 = fsub fast float 1.000000e+00, %1383
  %1385 = fmul fast float %1375, %1384
  %1386 = fmul fast float %1376, %1384
  %1387 = fadd fast float %1385, %1382
  %1388 = fadd fast float %1386, %1382
  %1389 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %17, float %1387, float %1388, float %1377, float undef, i32 0, i32 0, i32 undef, float %1349)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1390 = extractvalue %dx.types.ResRet.f32 %1389, 0
  %1391 = extractvalue %dx.types.ResRet.f32 %1389, 1
  %1392 = extractvalue %dx.types.ResRet.f32 %1389, 2
  %1393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1394 = extractvalue %dx.types.CBufRet.f32 %1393, 3
  %1395 = fmul fast float %1394, %1112
  %1396 = call float @dx.op.binary.f32(i32 36, float %1004, float %1395)  ; FMin(a,b)
  %1397 = select i1 %1345, float %1396, float %1395
  %1398 = fmul fast float %1390, %1190
  %1399 = fmul fast float %1398, %1397
  %1400 = fmul fast float %1391, %1190
  %1401 = fmul fast float %1400, %1397
  %1402 = fmul fast float %1392, %1190
  %1403 = fmul fast float %1402, %1397
  %1404 = fadd fast float %1399, %1087
  %1405 = fadd fast float %1401, %1088
  %1406 = fadd fast float %1403, %1089
  %1407 = fsub fast float %1090, %1190
  br label %1192

; <label>:1408                                    ; preds = %1192
  br label %1409

; <label>:1409                                    ; preds = %1408, %1056
  %1410 = phi float [ %1057, %1056 ], [ %1193, %1408 ]
  %1411 = phi float [ %1058, %1056 ], [ %1194, %1408 ]
  %1412 = phi float [ %1059, %1056 ], [ %1195, %1408 ]
  %1413 = phi float [ %1060, %1056 ], [ %1196, %1408 ]
  %1414 = add i32 %1061, 1
  %1415 = icmp ugt i32 %1414, %1053
  br i1 %1415, label %1416, label %1056, !llvm.loop !70

; <label>:1416                                    ; preds = %1409
  br label %1417

; <label>:1417                                    ; preds = %1416, %1000
  %1418 = phi float [ 0.000000e+00, %1000 ], [ %1410, %1416 ]
  %1419 = phi float [ 0.000000e+00, %1000 ], [ %1411, %1416 ]
  %1420 = phi float [ 0.000000e+00, %1000 ], [ %1412, %1416 ]
  %1421 = call float @dx.op.dot3.f32(i32 55, float %1418, float %1419, float %1420, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1422 = select i1 %120, float 0.000000e+00, float %1418
  %1423 = select i1 %120, float %1421, float %1419
  %1424 = fmul fast float %1422, %979
  %1425 = fmul fast float %1423, %980
  %1426 = call float @dx.op.binary.f32(i32 35, float %1424, float 0.000000e+00)  ; FMax(a,b)
  %1427 = call float @dx.op.binary.f32(i32 35, float %1425, float 0.000000e+00)  ; FMax(a,b)
  %1428 = fadd fast float %716, -1.000000e+00
  %1429 = fadd fast float %717, -1.000000e+00
  %1430 = fadd fast float %718, -1.000000e+00
  %1431 = fmul fast float %1428, %599
  %1432 = fmul fast float %1429, %599
  %1433 = fmul fast float %1430, %599
  %1434 = fadd fast float %1431, 1.000000e+00
  %1435 = fadd fast float %1432, 1.000000e+00
  %1436 = fadd fast float %1433, 1.000000e+00
  %1437 = call float @dx.op.dot3.f32(i32 55, float %1434, float %1435, float %1436, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1438 = fsub fast float 1.000000e+00, %1437
  %1439 = fmul fast float %860, %811
  %1440 = fmul fast float %1439, %984
  %1441 = fmul fast float %861, %812
  %1442 = fmul fast float %1441, %984
  %1443 = fadd fast float %1440, %966
  %1444 = fadd fast float %1443, %1426
  %1445 = fadd fast float %1442, %967
  %1446 = fadd fast float %1445, %1427
  %1447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1448 = extractvalue %dx.types.CBufRet.f32 %1447, 0
  br i1 %120, label %1449, label %1473

; <label>:1449                                    ; preds = %1417
  %1450 = fmul fast float %848, %836
  %1451 = fsub fast float 1.000000e+00, %836
  %1452 = call float @dx.op.unary.f32(i32 7, float %1451)  ; Saturate(value)
  %1453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1454 = extractvalue %dx.types.CBufRet.f32 %1453, 3
  %1455 = fmul fast float %1454, %1452
  %1456 = fadd fast float %1455, %1450
  %1457 = fadd fast float %1446, %1444
  %1458 = fmul fast float %599, %1457
  %1459 = fmul fast float %1448, %1458
  %1460 = extractvalue %dx.types.CBufRet.f32 %1453, 1
  %1461 = fsub fast float %1456, %1460
  %1462 = extractvalue %dx.types.CBufRet.f32 %1453, 2
  %1463 = fmul fast float %1461, %1462
  %1464 = call float @dx.op.unary.f32(i32 7, float %1463)  ; Saturate(value)
  %1465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1466 = extractvalue %dx.types.CBufRet.f32 %1465, 0
  %1467 = fsub fast float %1464, %1466
  %1468 = fmul fast float %1467, 1.000000e+01
  %1469 = call float @dx.op.unary.f32(i32 7, float %1468)  ; Saturate(value)
  %1470 = fmul fast float %1469, %1438
  %1471 = fsub fast float %1438, %1470
  %1472 = fmul fast float %1471, %1464
  br label %1491

; <label>:1473                                    ; preds = %1417
  %1474 = fmul fast float %1446, %599
  %1475 = fmul fast float %1444, %599
  %1476 = fmul fast float %862, %813
  %1477 = fmul fast float %1476, %984
  %1478 = fmul fast float %1420, %981
  %1479 = call float @dx.op.binary.f32(i32 35, float %1478, float 0.000000e+00)  ; FMax(a,b)
  %1480 = fadd fast float %1477, %968
  %1481 = fadd fast float %1480, %1479
  %1482 = fmul fast float %599, %1481
  %1483 = fmul fast float %1448, %1475
  %1484 = fmul fast float %1448, %1474
  %1485 = fmul fast float %1482, %1448
  %1486 = call float @dx.op.binary.f32(i32 35, float %1484, float %1485)  ; FMax(a,b)
  %1487 = call float @dx.op.binary.f32(i32 35, float %1483, float %1486)  ; FMax(a,b)
  %1488 = call float @dx.op.binary.f32(i32 35, float %1487, float %1438)  ; FMax(a,b)
  %1489 = fcmp fast ugt float %1488, 0x3F10000000000000
  br i1 %1489, label %1491, label %1490

; <label>:1490                                    ; preds = %1473
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1491

; <label>:1491                                    ; preds = %1490, %1473, %1449
  %1492 = phi float [ %1459, %1449 ], [ %1483, %1490 ], [ %1483, %1473 ]
  %1493 = phi float [ %1472, %1449 ], [ %1484, %1490 ], [ %1484, %1473 ]
  %1494 = phi float [ %1471, %1449 ], [ %1485, %1490 ], [ %1485, %1473 ]
  %1495 = phi float [ %1471, %1449 ], [ %1438, %1490 ], [ %1438, %1473 ]
  %1496 = fadd fast float %536, 0x3FE3C6EF40000000
  %1497 = call float @dx.op.unary.f32(i32 22, float %1496)  ; Frc(value)
  %1498 = call float @dx.op.unary.f32(i32 23, float %1492)  ; Log(value)
  %1499 = fadd fast float %1498, -7.000000e+00
  %1500 = call float @dx.op.unary.f32(i32 21, float %1499)  ; Exp(value)
  %1501 = fmul fast float %1497, 2.000000e+00
  %1502 = fadd fast float %1501, -1.000000e+00
  %1503 = fmul fast float %1500, %1502
  %1504 = fcmp fast ogt float %1492, 0.000000e+00
  %1505 = select i1 %1504, float %1503, float 0.000000e+00
  %1506 = fadd fast float %1505, %1492
  %1507 = fadd fast float %536, 0x3FF3C6EF40000000
  %1508 = call float @dx.op.unary.f32(i32 22, float %1507)  ; Frc(value)
  %1509 = call float @dx.op.unary.f32(i32 23, float %1493)  ; Log(value)
  %1510 = fadd fast float %1509, -7.000000e+00
  %1511 = call float @dx.op.unary.f32(i32 21, float %1510)  ; Exp(value)
  %1512 = fmul fast float %1508, 2.000000e+00
  %1513 = fadd fast float %1512, -1.000000e+00
  %1514 = fmul fast float %1511, %1513
  %1515 = fcmp fast ogt float %1493, 0.000000e+00
  %1516 = select i1 %1515, float %1514, float 0.000000e+00
  %1517 = fadd fast float %1516, %1493
  %1518 = fadd fast float %536, 0x3FFDAA66E0000000
  %1519 = call float @dx.op.unary.f32(i32 22, float %1518)  ; Frc(value)
  %1520 = call float @dx.op.unary.f32(i32 23, float %1494)  ; Log(value)
  %1521 = fadd fast float %1520, -6.000000e+00
  %1522 = call float @dx.op.unary.f32(i32 21, float %1521)  ; Exp(value)
  %1523 = fmul fast float %1519, 2.000000e+00
  %1524 = fadd fast float %1523, -1.000000e+00
  %1525 = fmul fast float %1522, %1524
  %1526 = fcmp fast ogt float %1494, 0.000000e+00
  %1527 = select i1 %1526, float %1525, float 0.000000e+00
  %1528 = fadd fast float %1527, %1494
  %1529 = select i1 %120, float %1493, float %1517
  %1530 = select i1 %120, float %1494, float %1528
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1531 = call float @dx.op.binary.f32(i32 36, float %1506, float 3.225500e+04)  ; FMin(a,b)
  %1532 = call float @dx.op.binary.f32(i32 36, float %1529, float 3.225500e+04)  ; FMin(a,b)
  %1533 = call float @dx.op.binary.f32(i32 36, float %1530, float 3.225500e+04)  ; FMin(a,b)
  %1534 = call float @dx.op.binary.f32(i32 36, float %1495, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1531)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1532)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1533)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1534)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1495)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1495)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1495)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1495)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind
declare void @dx.op.discard(i32, i1) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.viewIdState = !{!33}
!dx.entryPoints = !{!34}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !25, !28}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !23, !24}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 78, i32 1, i32 7, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 77, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!19 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!21 = !{i32 14, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !22}
!22 = !{i32 0, i32 5}
!23 = !{i32 15, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!24 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!25 = !{!26, !27}
!26 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!27 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!28 = !{!29, !30, !31, !32}
!29 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!30 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!31 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!32 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!33 = !{[37 x i32] [i32 35, i32 8, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255]}
!34 = !{void ()* @ps_main, !"ps_main", !35, !4, !61}
!35 = !{!36, !57, null}
!36 = !{!37, !40, !42, !44, !47, !49, !51, !53, !54, !56}
!37 = !{i32 0, !"SV_Position", i8 9, i8 3, !38, i8 4, i32 1, i8 4, i32 0, i8 0, !39}
!38 = !{i32 0}
!39 = !{i32 3, i32 11}
!40 = !{i32 1, !"COLOR", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 1, i8 0, !41}
!41 = !{i32 3, i32 15}
!42 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !38, i8 2, i32 1, i8 2, i32 2, i8 0, !43}
!43 = !{i32 3, i32 3}
!44 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !45, i8 2, i32 1, i8 4, i32 3, i8 0, !46}
!45 = !{i32 3}
!46 = !{i32 3, i32 7}
!47 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !48, i8 2, i32 1, i8 4, i32 4, i8 0, !41}
!48 = !{i32 4}
!49 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !50, i8 3, i32 1, i8 2, i32 5, i8 0, !43}
!50 = !{i32 5}
!51 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 6, i8 0, null}
!52 = !{i32 8}
!53 = !{i32 7, !"QUAD_POSITION", i8 9, i8 0, !38, i8 1, i32 1, i8 4, i32 7, i8 0, !41}
!54 = !{i32 8, !"COLOR", i8 5, i8 0, !45, i8 1, i32 1, i8 3, i32 8, i8 0, !55}
!55 = !{i32 3, i32 5}
!56 = !{i32 9, !"SV_SampleIndex", i8 5, i8 12, !38, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!57 = !{!58, !59}
!58 = !{i32 0, !"SV_Target", i8 9, i8 16, !38, i8 0, i32 1, i8 4, i32 0, i8 0, !41}
!59 = !{i32 1, !"SV_Target", i8 9, i8 16, !60, i8 0, i32 1, i8 4, i32 1, i8 0, !41}
!60 = !{i32 1}
!61 = !{i32 0, i64 24}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !71}
!71 = !{!"llvm.loop.unroll.disable"}

