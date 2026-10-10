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
; shader hash: d36e607491dfe5d04b272884cec51f15
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
  %192 = add i32 %23, 128
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
  br i1 %268, label %519, label %269, !dx.controlflow.hints !63

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
  %516 = fmul fast float %515, %42
  %517 = fmul fast float %514, %227
  %518 = fmul fast float %517, %515
  br label %519

; <label>:519                                     ; preds = %509, %266
  %520 = phi float [ %511, %509 ], [ %39, %266 ]
  %521 = phi float [ %512, %509 ], [ %40, %266 ]
  %522 = phi float [ %513, %509 ], [ %41, %266 ]
  %523 = phi float [ %518, %509 ], [ %227, %266 ]
  %524 = phi float [ %516, %509 ], [ %42, %266 ]
  %525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %526 = extractvalue %dx.types.CBufRet.f32 %525, 2
  %527 = fptosi float %45 to i32
  %528 = sitofp i32 %527 to float
  %529 = fadd fast float %526, %528
  %530 = fmul fast float %529, 0x3FE3C6EF40000000
  %531 = frem fast float %50, 2.560000e+02
  %532 = frem fast float %51, 2.560000e+02
  %533 = fptoui float %531 to i32
  %534 = fptoui float %532 to i32
  %535 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %533, i32 %534, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %536 = extractvalue %dx.types.ResRet.f32 %535, 0
  %537 = fadd fast float %536, %530
  %538 = call float @dx.op.unary.f32(i32 22, float %537)  ; Frc(value)
  %539 = and i32 %140, 1
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %598, label %541, !dx.controlflow.hints !66

; <label>:541                                     ; preds = %519
  %542 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %137, i32 undef)  ; BufferLoad(srv,index,wot)
  %543 = extractvalue %dx.types.ResRet.f32 %542, 2
  %544 = extractvalue %dx.types.ResRet.f32 %542, 3
  %545 = add i32 %137, 16
  %546 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %545, i32 undef)  ; BufferLoad(srv,index,wot)
  %547 = extractvalue %dx.types.ResRet.f32 %546, 0
  %548 = extractvalue %dx.types.ResRet.f32 %546, 1
  %549 = extractvalue %dx.types.ResRet.f32 %546, 2
  %550 = add i32 %137, 32
  %551 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %550, i32 undef)  ; BufferLoad(srv,index,wot)
  %552 = extractvalue %dx.types.ResRet.f32 %551, 0
  %553 = extractvalue %dx.types.ResRet.f32 %551, 1
  %554 = extractvalue %dx.types.ResRet.f32 %551, 2
  %555 = and i32 %140, 2
  %556 = icmp eq i32 %555, 0
  %557 = call float @dx.op.dot3.f32(i32 55, float %34, float %35, float %36, float %34, float %35, float %36)  ; Dot3(ax,ay,az,bx,by,bz)
  %558 = call float @dx.op.unary.f32(i32 25, float %557)  ; Rsqrt(value)
  %559 = fmul fast float %558, %34
  %560 = fmul fast float %558, %35
  %561 = fmul fast float %558, %36
  %562 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %563 = call float @dx.op.unary.f32(i32 25, float %562)  ; Rsqrt(value)
  %564 = fmul fast float %563, %85
  %565 = fmul fast float %563, %86
  %566 = fmul fast float %563, %87
  %567 = call float @dx.op.dot3.f32(i32 55, float %564, float %565, float %566, float %559, float %560, float %561)  ; Dot3(ax,ay,az,bx,by,bz)
  %568 = fmul fast float %567, %567
  %569 = fmul fast float %568, %543
  %570 = fadd fast float %569, %544
  %571 = call float @dx.op.unary.f32(i32 7, float %570)  ; Saturate(value)
  br i1 %556, label %572, label %582, !dx.controlflow.hints !67

; <label>:572                                     ; preds = %541
  %573 = extractvalue %dx.types.ResRet.f32 %542, 1
  %574 = extractvalue %dx.types.ResRet.f32 %542, 0
  %575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %576 = extractvalue %dx.types.CBufRet.f32 %575, 3
  %577 = fmul fast float %576, %562
  %578 = fsub fast float %574, %577
  %579 = fmul fast float %578, %573
  %580 = call float @dx.op.unary.f32(i32 7, float %579)  ; Saturate(value)
  %581 = fmul fast float %580, %571
  br label %582

; <label>:582                                     ; preds = %572, %541
  %583 = phi float [ %581, %572 ], [ %571, %541 ]
  %584 = fsub fast float %547, %552
  %585 = fsub fast float %548, %553
  %586 = fsub fast float %549, %554
  %587 = fmul fast float %583, %584
  %588 = fmul fast float %583, %585
  %589 = fmul fast float %583, %586
  %590 = fadd fast float %587, %552
  %591 = fadd fast float %588, %553
  %592 = fadd fast float %589, %554
  %593 = fmul fast float %590, %520
  %594 = fmul fast float %591, %521
  %595 = fmul fast float %592, %522
  %596 = fmul fast float %583, %523
  %597 = fmul fast float %583, %524
  br label %598

; <label>:598                                     ; preds = %582, %519
  %599 = phi float [ %593, %582 ], [ %520, %519 ]
  %600 = phi float [ %594, %582 ], [ %521, %519 ]
  %601 = phi float [ %595, %582 ], [ %522, %519 ]
  %602 = phi float [ %596, %582 ], [ %523, %519 ]
  %603 = phi float [ %597, %582 ], [ %524, %519 ]
  %604 = add i32 %23, 120
  %605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %604, i32 undef)  ; BufferLoad(srv,index,wot)
  %606 = extractvalue %dx.types.ResRet.i32 %605, 0
  %607 = add i32 %606, 0
  %608 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %607, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %609 = add i32 %23, 24
  %610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %609, i32 undef)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.i32 %610, 0
  %612 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %608, %dx.types.Handle %46, float %177, float %178, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %613 = extractvalue %dx.types.ResRet.f32 %612, 0
  %614 = extractvalue %dx.types.ResRet.f32 %612, 1
  %615 = extractvalue %dx.types.ResRet.f32 %612, 2
  %616 = extractvalue %dx.types.ResRet.f32 %612, 3
  %617 = and i32 %611, 255
  %618 = uitofp i32 %617 to float
  %619 = lshr i32 %611, 8
  %620 = and i32 %619, 255
  %621 = uitofp i32 %620 to float
  %622 = fmul fast float %616, %618
  %623 = fadd fast float %622, %621
  %624 = fmul fast float %623, 0x3F70101000000000
  %625 = add i32 %23, 56
  %626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %625, i32 undef)  ; BufferLoad(srv,index,wot)
  %627 = extractvalue %dx.types.ResRet.i32 %626, 0
  %628 = and i32 %627, 255
  %629 = uitofp i32 %628 to float
  %630 = fmul fast float %629, 0x3F70101020000000
  %631 = lshr i32 %627, 8
  %632 = and i32 %631, 255
  %633 = uitofp i32 %632 to float
  %634 = fmul fast float %633, 0x3F70101020000000
  %635 = lshr i32 %627, 16
  %636 = and i32 %635, 255
  %637 = uitofp i32 %636 to float
  %638 = fmul fast float %637, 0x3F70101020000000
  %639 = fmul fast float %613, %599
  %640 = fmul fast float %630, %630
  %641 = fmul fast float %640, %639
  %642 = fmul fast float %614, %600
  %643 = fmul fast float %634, %634
  %644 = fmul fast float %643, %642
  %645 = fmul fast float %615, %601
  %646 = fmul fast float %638, %638
  %647 = fmul fast float %646, %645
  %648 = add i32 %23, 28
  %649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %648, i32 undef)  ; BufferLoad(srv,index,wot)
  %650 = extractvalue %dx.types.ResRet.i32 %649, 0
  %651 = add i32 %23, 124
  %652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %651, i32 undef)  ; BufferLoad(srv,index,wot)
  %653 = extractvalue %dx.types.ResRet.i32 %652, 0
  %654 = add i32 %653, 0
  %655 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %654, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %656 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %655, %dx.types.Handle %46, float %177, float %178, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %657 = extractvalue %dx.types.ResRet.f32 %656, 0
  %658 = extractvalue %dx.types.ResRet.f32 %656, 1
  %659 = extractvalue %dx.types.ResRet.f32 %656, 3
  %660 = and i32 %650, 255
  %661 = uitofp i32 %660 to float
  %662 = lshr i32 %650, 8
  %663 = and i32 %662, 255
  %664 = uitofp i32 %663 to float
  %665 = lshr i32 %650, 16
  %666 = and i32 %665, 255
  %667 = uitofp i32 %666 to float
  %668 = fmul fast float %667, 0x3F70101000000000
  %669 = fmul fast float %657, %661
  %670 = fadd fast float %669, %664
  %671 = fmul fast float %670, 0x3F70101000000000
  %672 = fadd fast float %658, -5.000000e-01
  %673 = fadd fast float %659, -5.000000e-01
  %674 = fmul fast float %672, %668
  %675 = fmul fast float %673, %668
  %676 = fadd fast float %674, 5.000000e-01
  %677 = fadd fast float %675, 5.000000e-01
  %678 = fmul fast float %676, 2.000000e+00
  %679 = fadd fast float %678, -1.000000e+00
  %680 = fmul fast float %677, 2.000000e+00
  %681 = fadd fast float %680, -1.000000e+00
  %682 = fadd fast float %679, %681
  %683 = fmul fast float %682, 5.000000e-01
  %684 = fsub fast float %679, %681
  %685 = fmul fast float %684, 5.000000e-01
  %686 = call float @dx.op.unary.f32(i32 6, float %683)  ; FAbs(value)
  %687 = fsub fast float 1.000000e+00, %686
  %688 = call float @dx.op.unary.f32(i32 6, float %685)  ; FAbs(value)
  %689 = fsub fast float %687, %688
  %690 = call float @dx.op.dot3.f32(i32 55, float %683, float %685, float %689, float %683, float %685, float %689)  ; Dot3(ax,ay,az,bx,by,bz)
  %691 = call float @dx.op.unary.f32(i32 25, float %690)  ; Rsqrt(value)
  %692 = fmul fast float %683, %691
  %693 = fmul fast float %685, %691
  %694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %695 = extractvalue %dx.types.CBufRet.f32 %694, 3
  %696 = fcmp fast ogt float %695, 0.000000e+00
  %697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %698 = extractvalue %dx.types.CBufRet.f32 %697, 1
  br i1 %696, label %699, label %724

; <label>:699                                     ; preds = %598
  %700 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %28, float %29, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %701 = extractvalue %dx.types.ResRet.f32 %700, 0
  %702 = extractvalue %dx.types.ResRet.f32 %700, 1
  %703 = extractvalue %dx.types.ResRet.f32 %700, 2
  %704 = extractvalue %dx.types.ResRet.f32 %700, 3
  %705 = fmul fast float %698, %704
  %706 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %28, float %29, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %707 = extractvalue %dx.types.ResRet.f32 %706, 0
  %708 = extractvalue %dx.types.ResRet.f32 %706, 1
  %709 = extractvalue %dx.types.ResRet.f32 %706, 2
  %710 = extractvalue %dx.types.ResRet.f32 %706, 3
  %711 = fmul fast float %698, %707
  %712 = fmul fast float %698, %708
  %713 = fmul fast float %698, %709
  %714 = fmul fast float %698, %710
  %715 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %28, float %29, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %716 = extractvalue %dx.types.ResRet.f32 %715, 0
  %717 = extractvalue %dx.types.ResRet.f32 %715, 1
  %718 = extractvalue %dx.types.ResRet.f32 %715, 2
  %719 = extractvalue %dx.types.ResRet.f32 %715, 3
  %720 = fmul fast float %698, %716
  %721 = fmul fast float %698, %717
  %722 = fmul fast float %698, %718
  %723 = fmul fast float %698, %719
  br label %729

; <label>:724                                     ; preds = %598
  %725 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %28, float %29, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %726 = extractvalue %dx.types.ResRet.f32 %725, 0
  %727 = extractvalue %dx.types.ResRet.f32 %725, 1
  %728 = extractvalue %dx.types.ResRet.f32 %725, 2
  br label %729

; <label>:729                                     ; preds = %724, %699
  %730 = phi float [ %701, %699 ], [ %726, %724 ]
  %731 = phi float [ %702, %699 ], [ %727, %724 ]
  %732 = phi float [ %703, %699 ], [ %728, %724 ]
  %733 = phi float [ %705, %699 ], [ 0.000000e+00, %724 ]
  %734 = phi float [ %711, %699 ], [ 0.000000e+00, %724 ]
  %735 = phi float [ %712, %699 ], [ 0.000000e+00, %724 ]
  %736 = phi float [ %713, %699 ], [ 0.000000e+00, %724 ]
  %737 = phi float [ %714, %699 ], [ 0.000000e+00, %724 ]
  %738 = phi float [ %720, %699 ], [ 0.000000e+00, %724 ]
  %739 = phi float [ %721, %699 ], [ 0.000000e+00, %724 ]
  %740 = phi float [ %722, %699 ], [ 0.000000e+00, %724 ]
  %741 = phi float [ %723, %699 ], [ 0.000000e+00, %724 ]
  %742 = fmul float %698, %732
  %743 = fmul float %698, %731
  %744 = fmul float %698, %730
  %745 = call float @dx.op.dot2.f32(i32 54, float %692, float %693, float %692, float %693)  ; Dot2(ax,ay,bx,by)
  %746 = fsub fast float 1.000000e+00, %745
  %747 = call float @dx.op.unary.f32(i32 7, float %746)  ; Saturate(value)
  %748 = call float @dx.op.unary.f32(i32 24, float %747)  ; Sqrt(value)
  %749 = fmul fast float %748, %34
  %750 = fmul fast float %748, %35
  %751 = fmul fast float %748, %36
  %752 = fmul fast float %692, %30
  %753 = fmul fast float %692, %31
  %754 = fmul fast float %692, %32
  %755 = fmul fast float %97, %693
  %756 = fmul fast float %98, %693
  %757 = fmul fast float %99, %693
  %758 = fadd fast float %755, %752
  %759 = fadd fast float %758, %749
  %760 = fadd fast float %756, %753
  %761 = fadd fast float %760, %750
  %762 = fadd fast float %757, %754
  %763 = fadd fast float %762, %751
  %764 = call float @dx.op.dot3.f32(i32 55, float %759, float %761, float %763, float %759, float %761, float %763)  ; Dot3(ax,ay,az,bx,by,bz)
  %765 = call float @dx.op.unary.f32(i32 25, float %764)  ; Rsqrt(value)
  %766 = fmul fast float %759, %765
  %767 = fmul fast float %761, %765
  %768 = fmul fast float %763, %765
  %769 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %770 = call float @dx.op.unary.f32(i32 25, float %769)  ; Rsqrt(value)
  %771 = fmul fast float %770, %85
  %772 = fmul fast float %770, %86
  %773 = fmul fast float %770, %87
  %774 = fsub fast float -0.000000e+00, %771
  %775 = fsub fast float -0.000000e+00, %772
  %776 = fsub fast float -0.000000e+00, %773
  %777 = fadd fast float %624, 0xBFB99999A0000000
  %778 = call float @dx.op.unary.f32(i32 7, float %777)  ; Saturate(value)
  %779 = fmul fast float %778, 0x3FF1C71C80000000
  %780 = call float @dx.op.binary.f32(i32 36, float %624, float 0x3FB99999A0000000)  ; FMin(a,b)
  %781 = fsub fast float 1.000000e+00, %779
  %782 = call float @dx.op.unary.f32(i32 7, float %781)  ; Saturate(value)
  %783 = fmul fast float %782, %641
  %784 = fmul fast float %782, %644
  %785 = fmul fast float %782, %647
  %786 = call float @dx.op.unary.f32(i32 7, float %783)  ; Saturate(value)
  %787 = call float @dx.op.unary.f32(i32 7, float %784)  ; Saturate(value)
  %788 = call float @dx.op.unary.f32(i32 7, float %785)  ; Saturate(value)
  %789 = fmul fast float %779, %641
  %790 = fmul fast float %779, %644
  %791 = fmul fast float %779, %647
  %792 = fadd fast float %789, %780
  %793 = fadd fast float %790, %780
  %794 = fadd fast float %791, %780
  %795 = call float @dx.op.unary.f32(i32 7, float %792)  ; Saturate(value)
  %796 = call float @dx.op.unary.f32(i32 7, float %793)  ; Saturate(value)
  %797 = call float @dx.op.unary.f32(i32 7, float %794)  ; Saturate(value)
  %798 = call float @dx.op.unary.f32(i32 7, float %671)  ; Saturate(value)
  %799 = call float @dx.op.dot3.f32(i32 55, float %786, float %787, float %788, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %800 = add i32 %23, 32
  %801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %800, i32 undef)  ; BufferLoad(srv,index,wot)
  %802 = extractvalue %dx.types.ResRet.i32 %801, 0
  %803 = and i32 %802, 255
  %804 = uitofp i32 %803 to float
  %805 = lshr i32 %802, 8
  %806 = and i32 %805, 255
  %807 = uitofp i32 %806 to float
  %808 = fmul fast float %807, %799
  %809 = fadd fast float %808, %804
  %810 = fmul fast float %809, 0x3F70101020000000
  %811 = call float @dx.op.unary.f32(i32 7, float %810)  ; Saturate(value)
  %812 = and i32 %140, 8192
  %813 = icmp eq i32 %812, 0
  %814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %815 = extractvalue %dx.types.CBufRet.f32 %814, 0
  br i1 %813, label %822, label %816, !dx.controlflow.hints !68

; <label>:816                                     ; preds = %729
  %817 = add i32 %137, 176
  %818 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %817, i32 undef)  ; BufferLoad(srv,index,wot)
  %819 = extractvalue %dx.types.ResRet.f32 %818, 0
  %820 = fcmp fast oge float %819, 0.000000e+00
  %821 = select i1 %820, float %819, float %815
  br label %829

; <label>:822                                     ; preds = %729
  %823 = add i32 %23, 104
  %824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %823, i32 undef)  ; BufferLoad(srv,index,wot)
  %825 = extractvalue %dx.types.ResRet.i32 %824, 0
  %826 = bitcast i32 %825 to float
  %827 = fcmp fast oge float %826, 0.000000e+00
  %828 = select i1 %827, float %826, float %815
  br label %829

; <label>:829                                     ; preds = %822, %816
  %830 = phi float [ %821, %816 ], [ %828, %822 ]
  %831 = fmul fast float %603, %602
  %832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %833 = extractvalue %dx.types.CBufRet.f32 %832, 3
  %834 = fcmp fast ogt float %833, 0.000000e+00
  br i1 %834, label %835, label %842

; <label>:835                                     ; preds = %829
  %836 = fmul fast float %767, 0xBFDF454380000000
  %837 = fmul fast float %768, 0x3FDF454380000000
  %838 = fmul fast float %766, 0xBFDF454380000000
  %839 = call float @dx.op.dot4.f32(i32 56, float %744, float %743, float %742, float %733, float 0x3FD20DD760000000, float %836, float %837, float %838)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %840 = call float @dx.op.dot4.f32(i32 56, float %734, float %735, float %736, float %737, float 0x3FD20DD760000000, float %836, float %837, float %838)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %841 = call float @dx.op.dot4.f32(i32 56, float %738, float %739, float %740, float %741, float 0x3FD20DD760000000, float %836, float %837, float %838)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %842

; <label>:842                                     ; preds = %835, %829
  %843 = phi float [ %839, %835 ], [ %744, %829 ]
  %844 = phi float [ %840, %835 ], [ %743, %829 ]
  %845 = phi float [ %841, %835 ], [ %742, %829 ]
  %846 = call float @dx.op.dot3.f32(i32 55, float %766, float %767, float %768, float %774, float %775, float %776)  ; Dot3(ax,ay,az,bx,by,bz)
  %847 = call float @dx.op.unary.f32(i32 7, float %846)  ; Saturate(value)
  br i1 %834, label %848, label %948

; <label>:848                                     ; preds = %842
  %849 = fsub fast float -0.000000e+00, %733
  %850 = fsub fast float %849, %737
  %851 = fsub fast float -0.000000e+00, %743
  %852 = fsub fast float %851, %735
  %853 = fadd fast float %736, %742
  %854 = fsub fast float %850, %741
  %855 = fsub fast float %852, %739
  %856 = fadd fast float %853, %740
  %857 = call float @dx.op.dot3.f32(i32 55, float %854, float %855, float %856, float %854, float %855, float %856)  ; Dot3(ax,ay,az,bx,by,bz)
  %858 = call float @dx.op.unary.f32(i32 25, float %857)  ; Rsqrt(value)
  %859 = fmul fast float %858, %854
  %860 = fmul fast float %858, %855
  %861 = fmul fast float %858, %856
  %862 = fmul fast float %860, 0xBFD4D8D7C0000000
  %863 = fmul fast float %861, 0x3FD4D8D7C0000000
  %864 = fmul fast float %859, 0xBFD4D8D7C0000000
  %865 = call float @dx.op.dot4.f32(i32 56, float %744, float %743, float %742, float %733, float 0x3FD20DD760000000, float %862, float %863, float %864)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %866 = call float @dx.op.dot4.f32(i32 56, float %734, float %735, float %736, float %737, float 0x3FD20DD760000000, float %862, float %863, float %864)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %867 = call float @dx.op.dot4.f32(i32 56, float %738, float %739, float %740, float %741, float 0x3FD20DD760000000, float %862, float %863, float %864)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %868 = fmul fast float %865, 0x4003333340000000
  %869 = fmul fast float %744, 0x3FE5AA35A0000000
  %870 = fsub fast float %868, %869
  %871 = fmul fast float %866, 0x4003333340000000
  %872 = fmul fast float %734, 0x3FE5AA35A0000000
  %873 = fsub fast float %871, %872
  %874 = fmul fast float %867, 0x4003333340000000
  %875 = fmul fast float %738, 0x3FE5AA35A0000000
  %876 = fsub fast float %874, %875
  %877 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %870)  ; FMax(a,b)
  %878 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %873)  ; FMax(a,b)
  %879 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %876)  ; FMax(a,b)
  %880 = fsub fast float %859, %771
  %881 = fsub fast float %860, %772
  %882 = fsub fast float %861, %773
  %883 = call float @dx.op.dot3.f32(i32 55, float %880, float %881, float %882, float %880, float %881, float %882)  ; Dot3(ax,ay,az,bx,by,bz)
  %884 = call float @dx.op.unary.f32(i32 25, float %883)  ; Rsqrt(value)
  %885 = fmul fast float %884, %880
  %886 = fmul fast float %884, %881
  %887 = fmul fast float %884, %882
  %888 = call float @dx.op.dot3.f32(i32 55, float %766, float %767, float %768, float %859, float %860, float %861)  ; Dot3(ax,ay,az,bx,by,bz)
  %889 = call float @dx.op.unary.f32(i32 6, float %888)  ; FAbs(value)
  %890 = call float @dx.op.dot3.f32(i32 55, float %766, float %767, float %768, float %885, float %886, float %887)  ; Dot3(ax,ay,az,bx,by,bz)
  %891 = fmul fast float %890, %890
  %892 = call float @dx.op.dot3.f32(i32 55, float %774, float %775, float %776, float %885, float %886, float %887)  ; Dot3(ax,ay,az,bx,by,bz)
  %893 = call float @dx.op.unary.f32(i32 6, float %892)  ; FAbs(value)
  %894 = fsub fast float 1.000000e+00, %798
  %895 = call float @dx.op.binary.f32(i32 35, float %894, float 0x3F847AE140000000)  ; FMax(a,b)
  %896 = fmul fast float %895, %895
  %897 = fmul fast float %896, %896
  %898 = fsub fast float 1.000000e+00, %897
  %899 = fmul fast float %847, %847
  %900 = fmul fast float %899, %898
  %901 = fadd fast float %900, %897
  %902 = bitcast float %901 to i32
  %903 = ashr i32 %902, 1
  %904 = add nsw i32 %903, 532487669
  %905 = bitcast i32 %904 to float
  %906 = fadd fast float %905, %847
  %907 = fmul fast float %897, %891
  %908 = fsub fast float 1.000000e+00, %891
  %909 = fadd fast float %908, %907
  %910 = fmul fast float %889, %889
  %911 = fmul fast float %910, %898
  %912 = fadd fast float %911, %897
  %913 = bitcast float %912 to i32
  %914 = ashr i32 %913, 1
  %915 = add nsw i32 %914, 532487669
  %916 = bitcast i32 %915 to float
  %917 = fadd fast float %916, %889
  %918 = fmul fast float %909, %909
  %919 = fmul fast float %918, %906
  %920 = fmul fast float %919, %917
  %921 = fdiv fast float 1.000000e+00, %920
  %922 = fmul fast float %897, %921
  %923 = fsub fast float 1.000000e+00, %893
  %924 = bitcast float %923 to i32
  %925 = sitofp i32 %924 to float
  %926 = fmul fast float %925, 5.000000e+00
  %927 = fadd fast float %926, 0xC1EFBF8940000000
  %928 = fptosi float %927 to i32
  %929 = bitcast i32 %928 to float
  %930 = fsub fast float 1.000000e+00, %795
  %931 = fsub fast float 1.000000e+00, %796
  %932 = fsub fast float 1.000000e+00, %797
  %933 = fmul fast float %929, %930
  %934 = fmul fast float %929, %931
  %935 = fmul fast float %929, %932
  %936 = fadd fast float %933, %795
  %937 = fadd fast float %934, %796
  %938 = fadd fast float %935, %797
  %939 = fmul fast float %922, %877
  %940 = fmul fast float %939, %936
  %941 = fmul fast float %922, %878
  %942 = fmul fast float %941, %937
  %943 = fmul fast float %922, %879
  %944 = fmul fast float %943, %938
  %945 = call float @dx.op.binary.f32(i32 35, float %940, float 0.000000e+00)  ; FMax(a,b)
  %946 = call float @dx.op.binary.f32(i32 35, float %942, float 0.000000e+00)  ; FMax(a,b)
  %947 = call float @dx.op.binary.f32(i32 35, float %944, float 0.000000e+00)  ; FMax(a,b)
  br label %948

; <label>:948                                     ; preds = %848, %842
  %949 = phi float [ %945, %848 ], [ 0.000000e+00, %842 ]
  %950 = phi float [ %946, %848 ], [ 0.000000e+00, %842 ]
  %951 = phi float [ %947, %848 ], [ 0.000000e+00, %842 ]
  %952 = fmul fast float %847, 9.843750e-01
  %953 = fmul fast float %798, 9.843750e-01
  %954 = fadd fast float %952, 7.812500e-03
  %955 = fadd fast float %953, 7.812500e-03
  %956 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %18, float %954, float %955, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %957 = extractvalue %dx.types.ResRet.f32 %956, 2
  %958 = extractvalue %dx.types.ResRet.f32 %956, 3
  %959 = fmul fast float %957, %795
  %960 = fmul fast float %957, %796
  %961 = fmul fast float %957, %797
  %962 = fadd fast float %959, %958
  %963 = fadd fast float %960, %958
  %964 = fadd fast float %961, %958
  %965 = call float @dx.op.binary.f32(i32 35, float %963, float %964)  ; FMax(a,b)
  %966 = call float @dx.op.binary.f32(i32 35, float %962, float %965)  ; FMax(a,b)
  %967 = fsub fast float 1.000000e+00, %966
  %968 = call float @dx.op.dot3.f32(i32 55, float %771, float %772, float %773, float %766, float %767, float %768)  ; Dot3(ax,ay,az,bx,by,bz)
  %969 = fmul fast float %968, 2.000000e+00
  %970 = fmul fast float %969, %766
  %971 = fmul fast float %969, %767
  %972 = fmul fast float %969, %768
  %973 = fsub fast float %771, %970
  %974 = fsub fast float %772, %971
  %975 = fsub fast float %773, %972
  br i1 %834, label %976, label %983

; <label>:976                                     ; preds = %948
  %977 = fmul fast float %974, 0xBFDF454380000000
  %978 = fmul fast float %975, 0x3FDF454380000000
  %979 = fmul fast float %973, 0xBFDF454380000000
  %980 = call float @dx.op.dot4.f32(i32 56, float %744, float %743, float %742, float %733, float 0x3FD20DD760000000, float %977, float %978, float %979)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %981 = call float @dx.op.dot4.f32(i32 56, float %734, float %735, float %736, float %737, float 0x3FD20DD760000000, float %977, float %978, float %979)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %982 = call float @dx.op.dot4.f32(i32 56, float %738, float %739, float %740, float %741, float 0x3FD20DD760000000, float %977, float %978, float %979)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %983

; <label>:983                                     ; preds = %976, %948
  %984 = phi float [ %980, %976 ], [ %744, %948 ]
  %985 = phi float [ %981, %976 ], [ %743, %948 ]
  %986 = phi float [ %982, %976 ], [ %742, %948 ]
  %987 = call float @dx.op.dot3.f32(i32 55, float %984, float %985, float %986, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %989 = extractvalue %dx.types.CBufRet.f32 %988, 2
  %990 = extractvalue %dx.types.CBufRet.f32 %988, 3
  %991 = fmul fast float %989, %50
  %992 = fmul fast float %990, %51
  %993 = fptoui float %991 to i32
  %994 = fptoui float %992 to i32
  %995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %996 = extractvalue %dx.types.CBufRet.f32 %995, 0
  %997 = extractvalue %dx.types.CBufRet.f32 %995, 2
  %998 = extractvalue %dx.types.CBufRet.f32 %995, 3
  %999 = fadd fast float %45, -4.000000e+00
  %1000 = call float @dx.op.binary.f32(i32 35, float %999, float 0.000000e+00)  ; FMax(a,b)
  %1001 = fadd fast float %1000, %996
  %1002 = fmul fast float %1001, %997
  %1003 = call float @dx.op.unary.f32(i32 23, float %1002)  ; Log(value)
  %1004 = fmul fast float %1003, %998
  %1005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1006 = extractvalue %dx.types.CBufRet.f32 %1005, 2
  %1007 = fmul fast float %1004, %1006
  %1008 = call float @dx.op.unary.f32(i32 7, float %1007)  ; Saturate(value)
  %1009 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1010 = extractvalue %dx.types.CBufRet.i32 %1009, 1
  %1011 = add i32 %1010, -1
  %1012 = uitofp i32 %1010 to float
  %1013 = fmul fast float %1012, %1008
  %1014 = fptoui float %1013 to i32
  %1015 = call i32 @dx.op.binary.i32(i32 40, i32 %1014, i32 %1011)  ; UMin(a,b)
  %1016 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %1017 = extractvalue %dx.types.CBufRet.i32 %1016, 2
  %1018 = extractvalue %dx.types.CBufRet.i32 %1016, 3
  %1019 = call i32 @dx.op.tertiary.i32(i32 49, i32 %994, i32 %1017, i32 %993)  ; UMad(a,b,c)
  %1020 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1015, i32 %1018, i32 %1019)  ; UMad(a,b,c)
  %1021 = call float @dx.op.binary.f32(i32 35, float %45, float 0.000000e+00)  ; FMax(a,b)
  %1022 = fptoui float %1021 to i32
  %1023 = lshr i32 %1022, 5
  %1024 = call i32 @dx.op.binary.i32(i32 40, i32 %1023, i32 8191)  ; UMin(a,b)
  %1025 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1026 = extractvalue %dx.types.CBufRet.i32 %1025, 2
  %1027 = add nsw i32 %1026, -1
  %1028 = call i32 @dx.op.binary.i32(i32 37, i32 %1027, i32 0)  ; IMax(a,b)
  %1029 = shl i32 %1024, 2
  %1030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1029, i32 undef)  ; BufferLoad(srv,index,wot)
  %1031 = extractvalue %dx.types.ResRet.i32 %1030, 0
  %1032 = lshr i32 %1031, 16
  %1033 = and i32 %1031, 65535
  %1034 = lshr i32 %1031, 21
  %1035 = lshr i32 %1033, 5
  %1036 = call i32 @dx.op.binary.i32(i32 40, i32 %1035, i32 %1028)  ; UMin(a,b)
  %1037 = icmp ugt i32 %1034, %1036
  br i1 %1037, label %1400, label %1038

; <label>:1038                                    ; preds = %983
  br label %1039

; <label>:1039                                    ; preds = %1392, %1038
  %1040 = phi float [ %1393, %1392 ], [ 0.000000e+00, %1038 ]
  %1041 = phi float [ %1394, %1392 ], [ 0.000000e+00, %1038 ]
  %1042 = phi float [ %1395, %1392 ], [ 0.000000e+00, %1038 ]
  %1043 = phi float [ %1396, %1392 ], [ 1.000000e+00, %1038 ]
  %1044 = phi i32 [ %1397, %1392 ], [ %1034, %1038 ]
  %1045 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1046 = extractvalue %dx.types.CBufRet.i32 %1045, 2
  %1047 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1020, i32 %1046, i32 %1044)  ; UMad(a,b,c)
  %1048 = shl i32 %1047, 2
  %1049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %1048, i32 undef)  ; BufferLoad(srv,index,wot)
  %1050 = extractvalue %dx.types.ResRet.i32 %1049, 0
  %1051 = shl i32 %1044, 5
  %1052 = sub nsw i32 %1032, %1051
  %1053 = call i32 @dx.op.binary.i32(i32 37, i32 %1052, i32 0)  ; IMax(a,b)
  %1054 = call i32 @dx.op.binary.i32(i32 38, i32 %1053, i32 31)  ; IMin(a,b)
  %1055 = sub nsw i32 1, %1032
  %1056 = add nsw i32 %1055, %1033
  %1057 = call i32 @dx.op.binary.i32(i32 37, i32 %1056, i32 0)  ; IMax(a,b)
  %1058 = call i32 @dx.op.binary.i32(i32 38, i32 %1057, i32 32)  ; IMin(a,b)
  %1059 = and i32 %1058, 31
  %1060 = shl i32 -1, %1059
  %1061 = xor i32 %1060, -1
  %1062 = and i32 %1054, 31
  %1063 = shl i32 %1061, %1062
  %1064 = icmp eq i32 %1058, 32
  %1065 = select i1 %1064, i32 -1, i32 %1063
  %1066 = and i32 %1065, %1050
  %1067 = icmp eq i32 %1066, 0
  br i1 %1067, label %1392, label %1068

; <label>:1068                                    ; preds = %1039
  br label %1069

; <label>:1069                                    ; preds = %1175, %1068
  %1070 = phi float [ %1176, %1175 ], [ %1040, %1068 ]
  %1071 = phi float [ %1177, %1175 ], [ %1041, %1068 ]
  %1072 = phi float [ %1178, %1175 ], [ %1042, %1068 ]
  %1073 = phi float [ %1179, %1175 ], [ %1043, %1068 ]
  %1074 = phi i32 [ %1079, %1175 ], [ %1066, %1068 ]
  %1075 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1074)  ; FirstbitLo(value)
  %1076 = add i32 %1075, %1051
  %1077 = and i32 %1075, 31
  %1078 = shl i32 1, %1077
  %1079 = xor i32 %1078, %1074
  %1080 = mul i32 %1076, 72
  %1081 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %1080, i32 undef)  ; BufferLoad(srv,index,wot)
  %1082 = extractvalue %dx.types.ResRet.f32 %1081, 0
  %1083 = extractvalue %dx.types.ResRet.f32 %1081, 1
  %1084 = extractvalue %dx.types.ResRet.f32 %1081, 2
  %1085 = add i32 %1080, 12
  %1086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1085, i32 undef)  ; BufferLoad(srv,index,wot)
  %1087 = extractvalue %dx.types.ResRet.i32 %1086, 0
  %1088 = add i32 %1080, 16
  %1089 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %1088, i32 undef)  ; BufferLoad(srv,index,wot)
  %1090 = extractvalue %dx.types.ResRet.f32 %1089, 0
  %1091 = extractvalue %dx.types.ResRet.f32 %1089, 1
  %1092 = extractvalue %dx.types.ResRet.f32 %1089, 2
  %1093 = add i32 %1080, 28
  %1094 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %1093, i32 undef)  ; BufferLoad(srv,index,wot)
  %1095 = extractvalue %dx.types.ResRet.f32 %1094, 0
  %1096 = add i32 %1080, 32
  %1097 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %1096, i32 undef)  ; BufferLoad(srv,index,wot)
  %1098 = extractvalue %dx.types.ResRet.f32 %1097, 0
  %1099 = extractvalue %dx.types.ResRet.f32 %1097, 1
  %1100 = extractvalue %dx.types.ResRet.f32 %1097, 2
  %1101 = extractvalue %dx.types.ResRet.f32 %1097, 3
  %1102 = add i32 %1080, 48
  %1103 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %1102, i32 undef)  ; BufferLoad(srv,index,wot)
  %1104 = extractvalue %dx.types.ResRet.f32 %1103, 0
  %1105 = extractvalue %dx.types.ResRet.f32 %1103, 1
  %1106 = add i32 %1080, 56
  %1107 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %1106, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.f32 %1107, 0
  %1109 = extractvalue %dx.types.ResRet.f32 %1107, 1
  %1110 = add i32 %1080, 64
  %1111 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %1110, i32 undef)  ; BufferLoad(srv,index,wot)
  %1112 = extractvalue %dx.types.ResRet.f32 %1111, 0
  %1113 = extractvalue %dx.types.ResRet.f32 %1111, 1
  %1114 = mul i32 %1076, 60
  %1115 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1114, i32 undef)  ; BufferLoad(srv,index,wot)
  %1116 = extractvalue %dx.types.ResRet.f32 %1115, 0
  %1117 = extractvalue %dx.types.ResRet.f32 %1115, 1
  %1118 = extractvalue %dx.types.ResRet.f32 %1115, 2
  %1119 = add i32 %1114, 12
  %1120 = add i32 %1114, 48
  %1121 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1122 = extractvalue %dx.types.ResRet.f32 %1121, 0
  %1123 = extractvalue %dx.types.ResRet.f32 %1121, 1
  %1124 = extractvalue %dx.types.ResRet.f32 %1121, 2
  %1125 = and i32 %1087, 32767
  %1126 = bitcast float %1082 to i32
  %1127 = icmp eq i32 %1126, -1
  %1128 = bitcast float %1083 to i32
  %1129 = and i32 %1087, 32768
  %1130 = icmp ne i32 %1129, 0
  %1131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1132 = extractvalue %dx.types.CBufRet.f32 %1131, 0
  %1133 = extractvalue %dx.types.CBufRet.f32 %1131, 1
  %1134 = extractvalue %dx.types.CBufRet.f32 %1131, 2
  %1135 = fsub fast float %1116, %1132
  %1136 = fsub fast float %1117, %1133
  %1137 = fsub fast float %1118, %1134
  %1138 = fsub fast float %85, %1135
  %1139 = fsub fast float %86, %1136
  %1140 = fsub fast float %87, %1137
  %1141 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1119, i32 undef)  ; BufferLoad(srv,index,wot)
  %1142 = extractvalue %dx.types.ResRet.f32 %1141, 0
  %1143 = extractvalue %dx.types.ResRet.f32 %1141, 1
  %1144 = extractvalue %dx.types.ResRet.f32 %1141, 2
  %1145 = call float @dx.op.dot3.f32(i32 55, float %1138, float %1139, float %1140, float %1142, float %1143, float %1144)  ; Dot3(ax,ay,az,bx,by,bz)
  %1146 = add i32 %1114, 24
  %1147 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1146, i32 undef)  ; BufferLoad(srv,index,wot)
  %1148 = extractvalue %dx.types.ResRet.f32 %1147, 0
  %1149 = extractvalue %dx.types.ResRet.f32 %1147, 1
  %1150 = extractvalue %dx.types.ResRet.f32 %1147, 2
  %1151 = call float @dx.op.dot3.f32(i32 55, float %1138, float %1139, float %1140, float %1148, float %1149, float %1150)  ; Dot3(ax,ay,az,bx,by,bz)
  %1152 = add i32 %1114, 36
  %1153 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1154 = extractvalue %dx.types.ResRet.f32 %1153, 0
  %1155 = extractvalue %dx.types.ResRet.f32 %1153, 1
  %1156 = extractvalue %dx.types.ResRet.f32 %1153, 2
  %1157 = call float @dx.op.dot3.f32(i32 55, float %1138, float %1139, float %1140, float %1154, float %1155, float %1156)  ; Dot3(ax,ay,az,bx,by,bz)
  %1158 = call float @dx.op.unary.f32(i32 6, float %1145)  ; FAbs(value)
  %1159 = call float @dx.op.unary.f32(i32 6, float %1151)  ; FAbs(value)
  %1160 = call float @dx.op.unary.f32(i32 6, float %1157)  ; FAbs(value)
  %1161 = fsub fast float %1122, %1158
  %1162 = fsub fast float %1123, %1159
  %1163 = fsub fast float %1124, %1160
  %1164 = fmul fast float %1161, %1090
  %1165 = fmul fast float %1162, %1091
  %1166 = fmul fast float %1163, %1092
  %1167 = call float @dx.op.binary.f32(i32 36, float %1165, float %1166)  ; FMin(a,b)
  %1168 = call float @dx.op.binary.f32(i32 36, float %1164, float %1167)  ; FMin(a,b)
  %1169 = call float @dx.op.unary.f32(i32 7, float %1168)  ; Saturate(value)
  %1170 = call float @dx.op.binary.f32(i32 36, float %1073, float %1169)  ; FMin(a,b)
  %1171 = uitofp i1 %1130 to float
  %1172 = fsub fast float 1.000000e+00, %1171
  %1173 = fmul fast float %1170, %1172
  %1174 = fcmp fast ogt float %1173, 0.000000e+00
  br i1 %1174, label %1181, label %1175

; <label>:1175                                    ; preds = %1323, %1069
  %1176 = phi float [ %1387, %1323 ], [ %1070, %1069 ]
  %1177 = phi float [ %1388, %1323 ], [ %1071, %1069 ]
  %1178 = phi float [ %1389, %1323 ], [ %1072, %1069 ]
  %1179 = phi float [ %1390, %1323 ], [ %1073, %1069 ]
  %1180 = icmp eq i32 %1074, %1078
  br i1 %1180, label %1391, label %1069

; <label>:1181                                    ; preds = %1069
  br i1 %1127, label %1239, label %1182

; <label>:1182                                    ; preds = %1181
  %1183 = fsub fast float -0.000000e+00, %1142
  %1184 = fsub fast float -0.000000e+00, %1143
  %1185 = fsub fast float -0.000000e+00, %1144
  %1186 = call float @dx.op.dot3.f32(i32 55, float %973, float %974, float %975, float %1183, float %1184, float %1185)  ; Dot3(ax,ay,az,bx,by,bz)
  %1187 = fsub fast float -0.000000e+00, %1186
  %1188 = call float @dx.op.dot3.f32(i32 55, float %1138, float %1139, float %1140, float %1183, float %1184, float %1185)  ; Dot3(ax,ay,az,bx,by,bz)
  %1189 = fadd fast float %1188, %1105
  %1190 = fadd fast float %1104, %1188
  %1191 = fsub fast float -0.000000e+00, %1190
  %1192 = fcmp ogt float %1186, -0.000000e+00
  %1193 = select i1 %1192, float %1191, float %1189
  %1194 = call float @dx.op.unary.f32(i32 6, float %1187)  ; FAbs(value)
  %1195 = fdiv fast float 1.000000e+00, %1194
  %1196 = fmul fast float %1193, %1195
  %1197 = call float @dx.op.binary.f32(i32 35, float %1196, float 0.000000e+00)  ; FMax(a,b)
  %1198 = fsub fast float -0.000000e+00, %1148
  %1199 = fsub fast float -0.000000e+00, %1149
  %1200 = fsub fast float -0.000000e+00, %1150
  %1201 = call float @dx.op.dot3.f32(i32 55, float %973, float %974, float %975, float %1198, float %1199, float %1200)  ; Dot3(ax,ay,az,bx,by,bz)
  %1202 = fsub fast float -0.000000e+00, %1201
  %1203 = call float @dx.op.dot3.f32(i32 55, float %1138, float %1139, float %1140, float %1198, float %1199, float %1200)  ; Dot3(ax,ay,az,bx,by,bz)
  %1204 = fadd fast float %1203, %1109
  %1205 = fadd fast float %1108, %1203
  %1206 = fsub fast float -0.000000e+00, %1205
  %1207 = fcmp ogt float %1201, -0.000000e+00
  %1208 = select i1 %1207, float %1206, float %1204
  %1209 = call float @dx.op.unary.f32(i32 6, float %1202)  ; FAbs(value)
  %1210 = fdiv fast float 1.000000e+00, %1209
  %1211 = fmul fast float %1208, %1210
  %1212 = call float @dx.op.binary.f32(i32 35, float %1211, float 0.000000e+00)  ; FMax(a,b)
  %1213 = fsub fast float -0.000000e+00, %1154
  %1214 = fsub fast float -0.000000e+00, %1155
  %1215 = fsub fast float -0.000000e+00, %1156
  %1216 = call float @dx.op.dot3.f32(i32 55, float %973, float %974, float %975, float %1213, float %1214, float %1215)  ; Dot3(ax,ay,az,bx,by,bz)
  %1217 = fsub fast float -0.000000e+00, %1216
  %1218 = call float @dx.op.dot3.f32(i32 55, float %1138, float %1139, float %1140, float %1213, float %1214, float %1215)  ; Dot3(ax,ay,az,bx,by,bz)
  %1219 = fadd fast float %1218, %1113
  %1220 = fadd fast float %1112, %1218
  %1221 = fsub fast float -0.000000e+00, %1220
  %1222 = fcmp ogt float %1216, -0.000000e+00
  %1223 = select i1 %1222, float %1221, float %1219
  %1224 = call float @dx.op.unary.f32(i32 6, float %1217)  ; FAbs(value)
  %1225 = fdiv fast float 1.000000e+00, %1224
  %1226 = fmul fast float %1223, %1225
  %1227 = call float @dx.op.binary.f32(i32 35, float %1226, float 0.000000e+00)  ; FMax(a,b)
  %1228 = call float @dx.op.binary.f32(i32 36, float %1212, float %1227)  ; FMin(a,b)
  %1229 = call float @dx.op.binary.f32(i32 36, float %1197, float %1228)  ; FMin(a,b)
  %1230 = fmul fast float %1229, %973
  %1231 = fmul fast float %1229, %974
  %1232 = fmul fast float %1229, %975
  %1233 = fadd fast float %1230, %85
  %1234 = fadd fast float %1231, %86
  %1235 = fadd fast float %1232, %87
  %1236 = fsub fast float %1233, %1082
  %1237 = fsub fast float %1234, %1083
  %1238 = fsub fast float %1235, %1084
  br label %1246

; <label>:1239                                    ; preds = %1181
  %1240 = fmul fast float %973, 8.096000e+03
  %1241 = fmul fast float %974, 8.096000e+03
  %1242 = fmul fast float %975, 8.096000e+03
  %1243 = fadd fast float %1240, %85
  %1244 = fadd fast float %1241, %86
  %1245 = fadd fast float %1242, %87
  br label %1246

; <label>:1246                                    ; preds = %1239, %1182
  %1247 = phi float [ %973, %1239 ], [ %1236, %1182 ]
  %1248 = phi float [ %974, %1239 ], [ %1237, %1182 ]
  %1249 = phi float [ %975, %1239 ], [ %1238, %1182 ]
  %1250 = phi float [ %1243, %1239 ], [ %1233, %1182 ]
  %1251 = phi float [ %1244, %1239 ], [ %1234, %1182 ]
  %1252 = phi float [ %1245, %1239 ], [ %1235, %1182 ]
  %1253 = fcmp fast olt float %1101, 1.000000e+00
  br i1 %1253, label %1254, label %1285, !dx.controlflow.hints !69

; <label>:1254                                    ; preds = %1246
  %1255 = fmul fast float %1249, %1099
  %1256 = fmul fast float %1248, %1100
  %1257 = fsub fast float %1255, %1256
  %1258 = fmul fast float %1247, %1100
  %1259 = fmul fast float %1249, %1098
  %1260 = fsub fast float %1258, %1259
  %1261 = fmul fast float %1248, %1098
  %1262 = fmul fast float %1247, %1099
  %1263 = fsub fast float %1261, %1262
  %1264 = fmul fast float %1257, 2.000000e+00
  %1265 = fmul fast float %1260, 2.000000e+00
  %1266 = fmul fast float %1263, 2.000000e+00
  %1267 = fmul fast float %1264, %1101
  %1268 = fmul fast float %1265, %1101
  %1269 = fmul fast float %1266, %1101
  %1270 = fmul fast float %1266, %1099
  %1271 = fmul fast float %1265, %1100
  %1272 = fmul fast float %1264, %1100
  %1273 = fmul fast float %1266, %1098
  %1274 = fmul fast float %1265, %1098
  %1275 = fmul fast float %1264, %1099
  %1276 = fadd fast float %1270, %1247
  %1277 = fadd fast float %1276, %1267
  %1278 = fsub fast float %1277, %1271
  %1279 = fsub fast float %1248, %1273
  %1280 = fadd fast float %1279, %1268
  %1281 = fadd fast float %1280, %1272
  %1282 = fadd fast float %1269, %1249
  %1283 = fsub fast float %1282, %1275
  %1284 = fadd fast float %1283, %1274
  br label %1285

; <label>:1285                                    ; preds = %1254, %1246
  %1286 = phi float [ %1278, %1254 ], [ %1247, %1246 ]
  %1287 = phi float [ %1281, %1254 ], [ %1248, %1246 ]
  %1288 = phi float [ %1284, %1254 ], [ %1249, %1246 ]
  br i1 %1127, label %1320, label %1289

; <label>:1289                                    ; preds = %1285
  %1290 = fmul fast float %798, 0x400187C840000000
  %1291 = fadd fast float %1290, 0xC00EFC2120000000
  %1292 = fmul fast float %1291, %798
  %1293 = fadd fast float %1292, 0x3FE5D16340000000
  %1294 = fmul fast float %1293, %798
  %1295 = fadd fast float %1294, 1.000000e+00
  %1296 = call float @dx.op.unary.f32(i32 7, float %1295)  ; Saturate(value)
  %1297 = fsub fast float %1250, %85
  %1298 = fsub fast float %1251, %86
  %1299 = fsub fast float %1252, %87
  %1300 = fsub fast float %1250, %1082
  %1301 = fsub fast float %1251, %1083
  %1302 = fsub fast float %1252, %1084
  %1303 = call float @dx.op.dot3.f32(i32 55, float %1297, float %1298, float %1299, float %1297, float %1298, float %1299)  ; Dot3(ax,ay,az,bx,by,bz)
  %1304 = call float @dx.op.dot3.f32(i32 55, float %1300, float %1301, float %1302, float %1300, float %1301, float %1302)  ; Dot3(ax,ay,az,bx,by,bz)
  %1305 = fadd fast float %1304, 0x3EE4F8B580000000
  %1306 = fdiv fast float %1303, %1305
  %1307 = bitcast float %1306 to i32
  %1308 = ashr i32 %1307, 1
  %1309 = add nsw i32 %1308, 532487669
  %1310 = bitcast i32 %1309 to float
  %1311 = fmul fast float %1310, %1296
  %1312 = call float @dx.op.unary.f32(i32 7, float %1311)  ; Saturate(value)
  %1313 = fmul fast float %1312, 0x4009981AE0000000
  %1314 = fsub fast float 0x40111BBD80000000, %1313
  %1315 = fmul fast float %1314, %1312
  %1316 = fadd fast float %1315, 0xC0009F6020000000
  %1317 = fmul fast float %1316, %1312
  %1318 = fadd fast float %1317, 1.000000e+00
  %1319 = call float @dx.op.unary.f32(i32 7, float %1318)  ; Saturate(value)
  br label %1323

; <label>:1320                                    ; preds = %1285
  %1321 = icmp ne i32 %1128, -1
  %1322 = zext i1 %1321 to i32
  br label %1323

; <label>:1323                                    ; preds = %1320, %1289
  %1324 = phi float [ %798, %1320 ], [ %1319, %1289 ]
  %1325 = phi i32 [ %1322, %1320 ], [ 0, %1289 ]
  %1326 = fmul float %1324, 5.000000e+00
  %1327 = fsub float 5.000000e+00, %1326
  %1328 = icmp ne i32 %1325, 0
  %1329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %1330 = extractvalue %dx.types.CBufRet.f32 %1329, 3
  %1331 = fadd fast float %1330, %1327
  %1332 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1331)  ; FMax(a,b)
  %1333 = call float @dx.op.unary.f32(i32 6, float %1286)  ; FAbs(value)
  %1334 = call float @dx.op.unary.f32(i32 6, float %1287)  ; FAbs(value)
  %1335 = fadd fast float %1334, %1333
  %1336 = call float @dx.op.unary.f32(i32 6, float %1288)  ; FAbs(value)
  %1337 = fadd fast float %1335, %1336
  %1338 = fcmp fast oeq float %1337, 0.000000e+00
  %1339 = fdiv fast float 1.000000e+00, %1337
  %1340 = select i1 %1338, float 1.000000e+00, float %1339
  %1341 = fmul fast float %1340, %1286
  %1342 = fmul fast float %1340, %1287
  %1343 = call float @dx.op.unary.f32(i32 6, float %1342)  ; FAbs(value)
  %1344 = call float @dx.op.unary.f32(i32 6, float %1341)  ; FAbs(value)
  %1345 = fsub fast float 1.000000e+00, %1343
  %1346 = fsub fast float 1.000000e+00, %1344
  %1347 = fcmp fast oge float %1341, 0.000000e+00
  %1348 = fcmp fast oge float %1342, 0.000000e+00
  %1349 = select i1 %1347, float 1.000000e+00, float -1.000000e+00
  %1350 = select i1 %1348, float 1.000000e+00, float -1.000000e+00
  %1351 = fcmp fast ole float %1288, 0.000000e+00
  %1352 = fmul fast float %1349, %1345
  %1353 = fmul fast float %1350, %1346
  %1354 = select i1 %1351, float %1352, float %1341
  %1355 = select i1 %1351, float %1353, float %1342
  %1356 = fmul fast float %1354, 5.000000e-01
  %1357 = fmul fast float %1355, 5.000000e-01
  %1358 = fadd fast float %1356, 5.000000e-01
  %1359 = fadd fast float %1357, 5.000000e-01
  %1360 = uitofp i32 %1125 to float
  %1361 = call float @dx.op.binary.f32(i32 36, float %1332, float 3.000000e+00)  ; FMin(a,b)
  %1362 = fadd fast float %1361, 2.000000e+00
  %1363 = call float @dx.op.unary.f32(i32 21, float %1362)  ; Exp(value)
  %1364 = extractvalue %dx.types.CBufRet.f32 %1329, 1
  %1365 = fmul fast float %1364, %1363
  %1366 = fmul fast float %1365, 2.000000e+00
  %1367 = fsub fast float 1.000000e+00, %1366
  %1368 = fmul fast float %1358, %1367
  %1369 = fmul fast float %1359, %1367
  %1370 = fadd fast float %1368, %1365
  %1371 = fadd fast float %1369, %1365
  %1372 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %17, float %1370, float %1371, float %1360, float undef, i32 0, i32 0, i32 undef, float %1332)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1373 = extractvalue %dx.types.ResRet.f32 %1372, 0
  %1374 = extractvalue %dx.types.ResRet.f32 %1372, 1
  %1375 = extractvalue %dx.types.ResRet.f32 %1372, 2
  %1376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1377 = extractvalue %dx.types.CBufRet.f32 %1376, 3
  %1378 = fmul fast float %1377, %1095
  %1379 = call float @dx.op.binary.f32(i32 36, float %987, float %1378)  ; FMin(a,b)
  %1380 = select i1 %1328, float %1379, float %1378
  %1381 = fmul fast float %1373, %1173
  %1382 = fmul fast float %1381, %1380
  %1383 = fmul fast float %1374, %1173
  %1384 = fmul fast float %1383, %1380
  %1385 = fmul fast float %1375, %1173
  %1386 = fmul fast float %1385, %1380
  %1387 = fadd fast float %1382, %1070
  %1388 = fadd fast float %1384, %1071
  %1389 = fadd fast float %1386, %1072
  %1390 = fsub fast float %1073, %1173
  br label %1175

; <label>:1391                                    ; preds = %1175
  br label %1392

; <label>:1392                                    ; preds = %1391, %1039
  %1393 = phi float [ %1040, %1039 ], [ %1176, %1391 ]
  %1394 = phi float [ %1041, %1039 ], [ %1177, %1391 ]
  %1395 = phi float [ %1042, %1039 ], [ %1178, %1391 ]
  %1396 = phi float [ %1043, %1039 ], [ %1179, %1391 ]
  %1397 = add i32 %1044, 1
  %1398 = icmp ugt i32 %1397, %1036
  br i1 %1398, label %1399, label %1039, !llvm.loop !70

; <label>:1399                                    ; preds = %1392
  br label %1400

; <label>:1400                                    ; preds = %1399, %983
  %1401 = phi float [ 0.000000e+00, %983 ], [ %1393, %1399 ]
  %1402 = phi float [ 0.000000e+00, %983 ], [ %1394, %1399 ]
  %1403 = phi float [ 0.000000e+00, %983 ], [ %1395, %1399 ]
  %1404 = call float @dx.op.dot3.f32(i32 55, float %1401, float %1402, float %1403, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1405 = select i1 %120, float 0.000000e+00, float %1401
  %1406 = select i1 %120, float %1404, float %1402
  %1407 = fmul fast float %1405, %962
  %1408 = fmul fast float %1406, %963
  %1409 = call float @dx.op.binary.f32(i32 35, float %1407, float 0.000000e+00)  ; FMax(a,b)
  %1410 = call float @dx.op.binary.f32(i32 35, float %1408, float 0.000000e+00)  ; FMax(a,b)
  %1411 = fsub fast float 1.000000e+00, %602
  %1412 = call float @dx.op.dot3.f32(i32 55, float %1411, float %1411, float %1411, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1413 = fsub fast float 1.000000e+00, %1412
  %1414 = fmul fast float %843, %786
  %1415 = fmul fast float %1414, %967
  %1416 = fmul fast float %844, %787
  %1417 = fmul fast float %1416, %967
  %1418 = fadd fast float %1415, %949
  %1419 = fadd fast float %1418, %1409
  %1420 = fadd fast float %1417, %950
  %1421 = fadd fast float %1420, %1410
  %1422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1423 = extractvalue %dx.types.CBufRet.f32 %1422, 0
  br i1 %120, label %1424, label %1450

; <label>:1424                                    ; preds = %1400
  %1425 = fmul fast float %830, %811
  %1426 = fsub fast float 1.000000e+00, %831
  %1427 = fsub fast float %1426, %811
  %1428 = call float @dx.op.unary.f32(i32 7, float %1427)  ; Saturate(value)
  %1429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1430 = extractvalue %dx.types.CBufRet.f32 %1429, 3
  %1431 = fmul fast float %1430, %1428
  %1432 = fadd fast float %1431, %1425
  %1433 = fadd fast float %1421, %1419
  %1434 = fmul fast float %602, %1433
  %1435 = fmul fast float %1423, %1434
  %1436 = extractvalue %dx.types.CBufRet.f32 %1429, 1
  %1437 = fsub fast float %1432, %1436
  %1438 = extractvalue %dx.types.CBufRet.f32 %1429, 2
  %1439 = fmul fast float %1437, %1438
  %1440 = call float @dx.op.unary.f32(i32 7, float %1439)  ; Saturate(value)
  %1441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1442 = extractvalue %dx.types.CBufRet.f32 %1441, 0
  %1443 = fsub fast float %1440, %1442
  %1444 = fmul fast float %1443, 1.000000e+01
  %1445 = call float @dx.op.unary.f32(i32 7, float %1444)  ; Saturate(value)
  %1446 = fsub fast float %831, %1413
  %1447 = fmul fast float %1445, %1446
  %1448 = fadd fast float %1447, %1413
  %1449 = fmul fast float %1448, %1440
  br label %1468

; <label>:1450                                    ; preds = %1400
  %1451 = fmul fast float %1421, %602
  %1452 = fmul fast float %1419, %602
  %1453 = fmul fast float %845, %788
  %1454 = fmul fast float %1453, %967
  %1455 = fmul fast float %1403, %964
  %1456 = call float @dx.op.binary.f32(i32 35, float %1455, float 0.000000e+00)  ; FMax(a,b)
  %1457 = fadd fast float %1454, %951
  %1458 = fadd fast float %1457, %1456
  %1459 = fmul fast float %602, %1458
  %1460 = fmul fast float %1423, %1452
  %1461 = fmul fast float %1423, %1451
  %1462 = fmul fast float %1459, %1423
  %1463 = call float @dx.op.binary.f32(i32 35, float %1461, float %1462)  ; FMax(a,b)
  %1464 = call float @dx.op.binary.f32(i32 35, float %1460, float %1463)  ; FMax(a,b)
  %1465 = call float @dx.op.binary.f32(i32 35, float %1464, float %1413)  ; FMax(a,b)
  %1466 = fcmp fast ugt float %1465, 0x3F10000000000000
  br i1 %1466, label %1468, label %1467

; <label>:1467                                    ; preds = %1450
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1468

; <label>:1468                                    ; preds = %1467, %1450, %1424
  %1469 = phi float [ %1435, %1424 ], [ %1460, %1467 ], [ %1460, %1450 ]
  %1470 = phi float [ %1449, %1424 ], [ %1461, %1467 ], [ %1461, %1450 ]
  %1471 = phi float [ %1448, %1424 ], [ %1462, %1467 ], [ %1462, %1450 ]
  %1472 = phi float [ %1448, %1424 ], [ %1413, %1467 ], [ %1413, %1450 ]
  %1473 = fadd fast float %538, 0x3FE3C6EF40000000
  %1474 = call float @dx.op.unary.f32(i32 22, float %1473)  ; Frc(value)
  %1475 = call float @dx.op.unary.f32(i32 23, float %1469)  ; Log(value)
  %1476 = fadd fast float %1475, -7.000000e+00
  %1477 = call float @dx.op.unary.f32(i32 21, float %1476)  ; Exp(value)
  %1478 = fmul fast float %1474, 2.000000e+00
  %1479 = fadd fast float %1478, -1.000000e+00
  %1480 = fmul fast float %1477, %1479
  %1481 = fcmp fast ogt float %1469, 0.000000e+00
  %1482 = select i1 %1481, float %1480, float 0.000000e+00
  %1483 = fadd fast float %1482, %1469
  %1484 = fadd fast float %538, 0x3FF3C6EF40000000
  %1485 = call float @dx.op.unary.f32(i32 22, float %1484)  ; Frc(value)
  %1486 = call float @dx.op.unary.f32(i32 23, float %1470)  ; Log(value)
  %1487 = fadd fast float %1486, -7.000000e+00
  %1488 = call float @dx.op.unary.f32(i32 21, float %1487)  ; Exp(value)
  %1489 = fmul fast float %1485, 2.000000e+00
  %1490 = fadd fast float %1489, -1.000000e+00
  %1491 = fmul fast float %1488, %1490
  %1492 = fcmp fast ogt float %1470, 0.000000e+00
  %1493 = select i1 %1492, float %1491, float 0.000000e+00
  %1494 = fadd fast float %1493, %1470
  %1495 = fadd fast float %538, 0x3FFDAA66E0000000
  %1496 = call float @dx.op.unary.f32(i32 22, float %1495)  ; Frc(value)
  %1497 = call float @dx.op.unary.f32(i32 23, float %1471)  ; Log(value)
  %1498 = fadd fast float %1497, -6.000000e+00
  %1499 = call float @dx.op.unary.f32(i32 21, float %1498)  ; Exp(value)
  %1500 = fmul fast float %1496, 2.000000e+00
  %1501 = fadd fast float %1500, -1.000000e+00
  %1502 = fmul fast float %1499, %1501
  %1503 = fcmp fast ogt float %1471, 0.000000e+00
  %1504 = select i1 %1503, float %1502, float 0.000000e+00
  %1505 = fadd fast float %1504, %1471
  %1506 = select i1 %120, float %1470, float %1494
  %1507 = select i1 %120, float %1471, float %1505
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1508 = call float @dx.op.binary.f32(i32 36, float %1483, float 3.225500e+04)  ; FMin(a,b)
  %1509 = call float @dx.op.binary.f32(i32 36, float %1506, float 3.225500e+04)  ; FMin(a,b)
  %1510 = call float @dx.op.binary.f32(i32 36, float %1507, float 3.225500e+04)  ; FMin(a,b)
  %1511 = call float @dx.op.binary.f32(i32 36, float %1472, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1508)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1509)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1510)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1511)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1472)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1472)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1472)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1472)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

