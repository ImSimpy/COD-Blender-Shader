;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 1   xyz         3     NONE   float   xyz 
; TEXCOORD                 3   xyzw        4     NONE   float   xyz 
; TEXCOORD                 4   xyzw        5     NONE   float   xyzw
; TEXCOORD                 5   xy          6     NONE   float   xy  
; TEXCOORD                 8   xyzw        7     NONE   float       
; QUAD_POSITION            0   xyzw        8     NONE   float   xyzw
; COLOR                    3   xyz         9     NONE    uint   x z 
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
; shader hash: b72fe9fc672a6a47f934d74336577787
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
; TEXCOORD                 1                 linear       
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
;                                   sampler      NA          NA      S1             s0     1
;                                   sampler      NA          NA      S2             s1     1
;                                   sampler      NA          NA      S3             s2     1
;                                   sampler      NA          NA      S4             s4     1
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
;                                   texture     f32          2d     T16     t12,space2     1
;                                   texture    byte         r/o     T17             t1     1
;
;
; ViewId state:
;
; Number of inputs: 39, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 32, 33, 34, 35, 36, 38 }
;   output 1 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 32, 33, 34, 35, 36, 38 }
;   output 2 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 32, 33, 34, 35, 36, 38 }
;   output 3 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 32, 33, 34, 35, 36, 38 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 32, 33, 34, 35, 36, 38 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 32, 33, 34, 35, 36, 38 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 32, 33, 34, 35, 36, 38 }
;   output 7 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 32, 33, 34, 35, 36, 38 }
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
%struct.SamplerComparisonState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 77, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 78, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.f32 %53, 0
  %55 = fmul fast float %54, %48
  %56 = fmul fast float %54, %49
  %57 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %58 = extractvalue %dx.types.CBufRet.f32 %57, 2
  %59 = extractvalue %dx.types.CBufRet.f32 %57, 3
  %60 = fmul fast float %55, 2.000000e+00
  %61 = fmul fast float %60, %58
  %62 = fmul fast float %56, 2.000000e+00
  %63 = fmul fast float %62, %59
  %64 = fsub fast float 1.000000e+00, %61
  %65 = fsub fast float 1.000000e+00, %63
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.f32 %66, 0
  %68 = extractvalue %dx.types.CBufRet.f32 %66, 1
  %69 = extractvalue %dx.types.CBufRet.f32 %66, 2
  %70 = fmul fast float %64, %67
  %71 = fmul fast float %64, %68
  %72 = fmul fast float %64, %69
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.f32 %73, 0
  %75 = extractvalue %dx.types.CBufRet.f32 %73, 1
  %76 = extractvalue %dx.types.CBufRet.f32 %73, 2
  %77 = fmul fast float %65, %74
  %78 = fmul fast float %65, %75
  %79 = fmul fast float %65, %76
  %80 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.f32 %80, 0
  %82 = extractvalue %dx.types.CBufRet.f32 %80, 1
  %83 = extractvalue %dx.types.CBufRet.f32 %80, 2
  %84 = fadd fast float %77, %81
  %85 = fadd fast float %84, %70
  %86 = fadd fast float %78, %82
  %87 = fadd fast float %86, %71
  %88 = fadd fast float %79, %83
  %89 = fadd fast float %88, %72
  %90 = fmul fast float %85, %50
  %91 = fmul fast float %87, %50
  %92 = fmul fast float %89, %50
  %93 = fmul fast float %37, %34
  %94 = fmul fast float %38, %33
  %95 = fsub fast float %93, %94
  %96 = fmul fast float %38, %32
  %97 = fmul fast float %36, %34
  %98 = fsub fast float %96, %97
  %99 = fmul fast float %36, %33
  %100 = fmul fast float %37, %32
  %101 = fsub fast float %99, %100
  %102 = fmul fast float %95, %35
  %103 = fmul fast float %98, %35
  %104 = fmul fast float %101, %35
  %105 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %106 = extractvalue %dx.types.CBufRet.i32 %105, 3
  %107 = and i32 %106, 3
  %108 = icmp ne i32 %107, 0
  %109 = and i32 %106, 4
  %110 = icmp ne i32 %109, 0
  %111 = and i1 %108, %110
  br i1 %111, label %112, label %121

; <label>:112                                     ; preds = %0
  %113 = fmul fast float %59, %56
  %114 = fmul fast float %58, %55
  %115 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %19, float %114, float %113, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %116 = extractvalue %dx.types.ResRet.f32 %115, 0
  %117 = fsub fast float 1.000000e+00, %116
  %118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %119 = extractvalue %dx.types.CBufRet.f32 %118, 0
  %120 = fcmp fast olt float %117, %119
  br label %124

; <label>:121                                     ; preds = %0
  %122 = icmp eq i32 %109, 0
  %123 = and i1 %108, %122
  br label %124

; <label>:124                                     ; preds = %121, %112
  %125 = phi i1 [ %120, %112 ], [ %123, %121 ]
  %126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %127 = extractvalue %dx.types.CBufRet.f32 %126, 2
  %128 = extractvalue %dx.types.CBufRet.f32 %126, 3
  %129 = fmul fast float %127, %55
  %130 = fmul fast float %128, %56
  %131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %132 = extractvalue %dx.types.ResRet.i32 %131, 0
  %133 = and i32 %132, 114688
  %134 = icmp ne i32 %133, 0
  %135 = select i1 %134, float %129, float 0.000000e+00
  %136 = select i1 %134, float %130, float 0.000000e+00
  %137 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %20, float %135, float %136, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %138 = extractvalue %dx.types.ResRet.f32 %137, 0
  %139 = fmul fast float %138, 2.550000e+02
  %140 = fptoui float %139 to i32
  %141 = select i1 %134, i32 %140, i32 0
  %142 = mul i32 %24, 208
  %143 = add i32 %142, 188
  %144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %143, i32 undef)  ; BufferLoad(srv,index,wot)
  %145 = extractvalue %dx.types.ResRet.i32 %144, 0
  %146 = and i32 %106, 114688
  %147 = and i32 %106, 8
  %148 = icmp ne i32 %147, 0
  %149 = or i1 %125, %148
  %150 = select i1 %149, i32 %146, i32 16384
  %151 = and i32 %150, %145
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %154

; <label>:153                                     ; preds = %124
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %154

; <label>:154                                     ; preds = %153, %124
  %155 = and i32 %145, 512
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %181, label %157

; <label>:157                                     ; preds = %154
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.f32 %158, 2
  %160 = extractvalue %dx.types.CBufRet.f32 %158, 3
  %161 = fmul fast float %159, %55
  %162 = fmul fast float %160, %56
  %163 = extractvalue %dx.types.CBufRet.f32 %158, 0
  %164 = extractvalue %dx.types.CBufRet.f32 %158, 1
  %165 = fdiv fast float %163, %164
  %166 = fcmp fast ogt float %165, 0x3FFC71C720000000
  br i1 %166, label %167, label %173

; <label>:167                                     ; preds = %157
  %168 = fdiv fast float 0x3FFC71C720000000, %165
  %169 = fmul fast float %168, %162
  %170 = fsub fast float 1.000000e+00, %168
  %171 = fmul fast float %170, 5.000000e-01
  %172 = fadd fast float %171, %169
  br label %181

; <label>:173                                     ; preds = %157
  %174 = fcmp fast olt float %165, 0x3FFC71C720000000
  br i1 %174, label %175, label %181

; <label>:175                                     ; preds = %173
  %176 = fmul fast float %161, 5.625000e-01
  %177 = fmul fast float %176, %165
  %178 = fmul fast float %165, 2.812500e-01
  %179 = fsub fast float 5.000000e-01, %178
  %180 = fadd fast float %179, %177
  br label %181

; <label>:181                                     ; preds = %175, %173, %167, %154
  %182 = phi float [ %42, %154 ], [ %161, %167 ], [ %180, %175 ], [ %161, %173 ]
  %183 = phi float [ %43, %154 ], [ %172, %167 ], [ %162, %175 ], [ %162, %173 ]
  %184 = add i32 %25, 72
  %185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %184, i32 undef)  ; BufferLoad(srv,index,wot)
  %186 = extractvalue %dx.types.ResRet.i32 %185, 0
  %187 = extractvalue %dx.types.ResRet.i32 %185, 1
  %188 = bitcast i32 %186 to float
  %189 = bitcast i32 %187 to float
  %190 = fmul fast float %188, %42
  %191 = fmul fast float %189, %43
  %192 = call float @dx.op.unary.f32(i32 22, float %190)  ; Frc(value)
  %193 = call float @dx.op.unary.f32(i32 22, float %191)  ; Frc(value)
  %194 = and i32 %145, 16
  %195 = icmp ne i32 %194, 0
  %196 = select i1 %195, float 1.000000e+00, float %47
  %197 = add i32 %25, 112
  %198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %197, i32 undef)  ; BufferLoad(srv,index,wot)
  %199 = extractvalue %dx.types.ResRet.i32 %198, 0
  %200 = add i32 %199, 0
  %201 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %200, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %203 = extractvalue %dx.types.CBufRet.f32 %202, 2
  %204 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %201, %dx.types.Handle %52, float %182, float %183, float undef, float undef, i32 0, i32 0, i32 undef, float %203, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %205 = extractvalue %dx.types.ResRet.f32 %204, 0
  %206 = fmul fast float %205, %196
  %207 = icmp eq i32 %194, 0
  br i1 %207, label %227, label %208, !dx.controlflow.hints !65

; <label>:208                                     ; preds = %181
  %209 = add i32 %142, 64
  %210 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %211 = extractvalue %dx.types.ResRet.f32 %210, 0
  %212 = fadd fast float %211, 1.000000e+00
  %213 = fmul fast float %212, %47
  %214 = fsub fast float %213, %211
  %215 = fsub fast float %212, %214
  %216 = call float @dx.op.unary.f32(i32 7, float %215)  ; Saturate(value)
  %217 = fsub fast float 1.000000e+00, %213
  %218 = call float @dx.op.unary.f32(i32 7, float %217)  ; Saturate(value)
  %219 = fsub fast float %216, %218
  %220 = fsub fast float %206, %218
  %221 = fdiv fast float %220, %219
  %222 = call float @dx.op.unary.f32(i32 7, float %221)  ; Saturate(value)
  %223 = fmul fast float %222, 2.000000e+00
  %224 = fsub fast float 3.000000e+00, %223
  %225 = fmul fast float %222, %222
  %226 = fmul fast float %225, %224
  br label %227

; <label>:227                                     ; preds = %208, %181
  %228 = phi float [ %226, %208 ], [ %206, %181 ]
  %229 = fcmp fast ogt float %228, 0.000000e+00
  br i1 %229, label %231, label %230

; <label>:230                                     ; preds = %227
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %231

; <label>:231                                     ; preds = %230, %227
  %232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 155)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.f32 %232, 1
  %234 = fsub fast float %39, %233
  %235 = fsub fast float %40, %233
  %236 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %2, %dx.types.Handle %21, float %234, float %235, float undef, float undef, i32 0, i32 0, i32 undef, float %41)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %237 = extractvalue %dx.types.ResRet.f32 %236, 0
  %238 = fmul fast float %237, %228
  %239 = call float @dx.op.unary.f32(i32 7, float %238)  ; Saturate(value)
  %240 = fmul fast float %55, 5.000000e-01
  %241 = fmul fast float %56, 5.000000e-01
  %242 = fptosi float %240 to i32
  %243 = fptosi float %241 to i32
  %244 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %4, i32 0, i32 %242, i32 %243, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %245 = extractvalue %dx.types.ResRet.i32 %244, 0
  %246 = lshr i32 %245, 18
  %247 = uitofp i32 %246 to float
  %248 = fmul fast float %247, 0x3F4C00EBA0000000
  %249 = call float @dx.op.unary.f32(i32 21, float %248)  ; Exp(value)
  %250 = fadd fast float %249, -1.000000e+00
  %251 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4, i32 0)  ; GetDimensions(handle,mipLevel)
  %252 = extractvalue %dx.types.Dimensions %251, 0
  %253 = sitofp i32 %252 to float
  %254 = extractvalue %dx.types.Dimensions %251, 1
  %255 = sitofp i32 %254 to float
  %256 = fcmp fast oge float %240, %253
  %257 = fcmp fast oge float %241, %255
  %258 = or i1 %256, %257
  %259 = select i1 %258, float 0x4197782600000000, float %250
  %260 = fsub fast float %259, %50
  %261 = fcmp fast ogt float %260, 0.000000e+00
  %262 = and i32 %141, -2
  %263 = icmp eq i32 %262, 2
  %264 = and i1 %263, %261
  %265 = xor i1 %261, true
  %266 = icmp eq i32 %141, 1
  %267 = and i1 %266, %265
  %268 = or i1 %264, %267
  %269 = and i32 %145, 262144
  %270 = icmp ne i32 %269, 0
  %271 = and i1 %270, %268
  %272 = xor i1 %268, true
  %273 = and i32 %145, 131072
  %274 = icmp ne i32 %273, 0
  %275 = and i1 %274, %272
  %276 = or i1 %271, %275
  br i1 %276, label %277, label %278

; <label>:277                                     ; preds = %231
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %278

; <label>:278                                     ; preds = %277, %231
  %279 = and i32 %145, 32
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %530, label %281, !dx.controlflow.hints !66

; <label>:281                                     ; preds = %278
  %282 = add i32 %142, 80
  %283 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.f32 %283, 0
  %285 = extractvalue %dx.types.ResRet.f32 %283, 1
  %286 = extractvalue %dx.types.ResRet.f32 %283, 2
  %287 = extractvalue %dx.types.ResRet.f32 %283, 3
  %288 = add i32 %142, 96
  %289 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.f32 %289, 0
  %291 = extractvalue %dx.types.ResRet.f32 %289, 1
  %292 = extractvalue %dx.types.ResRet.f32 %289, 2
  %293 = add i32 %142, 112
  %294 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.f32 %294, 0
  %296 = extractvalue %dx.types.ResRet.f32 %294, 1
  %297 = extractvalue %dx.types.ResRet.f32 %294, 2
  %298 = extractvalue %dx.types.ResRet.f32 %294, 3
  %299 = add i32 %142, 128
  %300 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.f32 %300, 0
  %302 = extractvalue %dx.types.ResRet.f32 %300, 1
  %303 = extractvalue %dx.types.ResRet.f32 %300, 2
  %304 = extractvalue %dx.types.ResRet.f32 %300, 3
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %143, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = and i32 %306, 4096
  %308 = icmp ne i32 %307, 0
  %309 = fcmp fast une float %292, 0.000000e+00
  %310 = and i32 %306, 64
  %311 = icmp ne i32 %310, 0
  %312 = and i32 %306, 128
  %313 = icmp eq i32 %312, 0
  %314 = and i32 %306, 2048
  %315 = icmp eq i32 %314, 0
  %316 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %7, i32 0)  ; GetDimensions(handle,mipLevel)
  %317 = extractvalue %dx.types.Dimensions %316, 0
  %318 = sitofp i32 %317 to float
  %319 = extractvalue %dx.types.Dimensions %316, 1
  %320 = sitofp i32 %319 to float
  %321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %322 = extractvalue %dx.types.CBufRet.f32 %321, 2
  %323 = extractvalue %dx.types.CBufRet.f32 %321, 3
  %324 = fmul fast float %322, %55
  %325 = fmul fast float %323, %56
  %326 = fmul fast float %324, %318
  %327 = fmul fast float %325, %320
  %328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %329 = extractvalue %dx.types.CBufRet.f32 %328, 1
  %330 = fsub fast float -0.000000e+00, %329
  %331 = fptoui float %330 to i32
  %332 = fptoui float %326 to i32
  %333 = fptoui float %327 to i32
  %334 = and i32 %331, 31
  %335 = lshr i32 %332, %334
  %336 = lshr i32 %333, %334
  %337 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 %331, i32 %335, i32 %336, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %338 = extractvalue %dx.types.ResRet.f32 %337, 0
  %339 = fcmp fast ogt float %338, -1.000000e+00
  %340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %341 = extractvalue %dx.types.CBufRet.f32 %340, 1
  %342 = select i1 %339, float %341, float 1.000000e+00
  %343 = fadd fast float %338, 1.000000e+00
  %344 = fmul fast float %342, %343
  %345 = call float @dx.op.unary.f32(i32 6, float %344)  ; FAbs(value)
  %346 = extractvalue %dx.types.CBufRet.f32 %340, 3
  %347 = fcmp fast oge float %345, %346
  %348 = select i1 %347, float 0x4197782600000000, float %345
  br i1 %315, label %426, label %349, !dx.controlflow.hints !67

; <label>:349                                     ; preds = %281
  %350 = fmul fast float %60, %322
  %351 = fmul fast float %62, %323
  %352 = fsub fast float 1.000000e+00, %350
  %353 = fsub fast float 1.000000e+00, %351
  %354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %355 = extractvalue %dx.types.CBufRet.f32 %354, 0
  %356 = extractvalue %dx.types.CBufRet.f32 %354, 1
  %357 = extractvalue %dx.types.CBufRet.f32 %354, 2
  %358 = fmul fast float %352, %355
  %359 = fmul fast float %352, %356
  %360 = fmul fast float %352, %357
  %361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %362 = extractvalue %dx.types.CBufRet.f32 %361, 0
  %363 = extractvalue %dx.types.CBufRet.f32 %361, 1
  %364 = extractvalue %dx.types.CBufRet.f32 %361, 2
  %365 = fmul fast float %353, %362
  %366 = fmul fast float %353, %363
  %367 = fmul fast float %353, %364
  %368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %369 = extractvalue %dx.types.CBufRet.f32 %368, 0
  %370 = extractvalue %dx.types.CBufRet.f32 %368, 1
  %371 = extractvalue %dx.types.CBufRet.f32 %368, 2
  %372 = fadd fast float %365, %369
  %373 = fadd fast float %372, %358
  %374 = fadd fast float %366, %370
  %375 = fadd fast float %374, %359
  %376 = fadd fast float %367, %371
  %377 = fadd fast float %376, %360
  %378 = fmul fast float %373, %348
  %379 = fmul fast float %375, %348
  %380 = fmul fast float %377, %348
  %381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %382 = extractvalue %dx.types.CBufRet.f32 %381, 0
  %383 = extractvalue %dx.types.CBufRet.f32 %381, 1
  %384 = extractvalue %dx.types.CBufRet.f32 %381, 2
  %385 = fsub fast float %382, %26
  %386 = fadd fast float %385, %378
  %387 = fsub fast float %383, %27
  %388 = fadd fast float %387, %379
  %389 = fsub fast float %384, %28
  %390 = fadd fast float %389, %380
  %391 = fmul fast float %29, %29
  %392 = call float @dx.op.dot3.f32(i32 55, float %386, float %388, float %390, float %386, float %388, float %390)  ; Dot3(ax,ay,az,bx,by,bz)
  %393 = fsub fast float %391, %392
  %394 = fmul fast float %291, %391
  %395 = fmul fast float %290, %391
  %396 = fcmp fast olt float %393, %394
  %397 = fcmp fast ogt float %393, %395
  %398 = or i1 %396, %397
  %399 = select i1 %398, float 0.000000e+00, float %393
  %400 = fsub fast float %290, %291
  %401 = fmul fast float %400, %391
  %402 = fsub fast float %399, %394
  %403 = fdiv fast float %402, %401
  %404 = call float @dx.op.unary.f32(i32 7, float %403)  ; Saturate(value)
  %405 = fmul fast float %404, 2.000000e+00
  %406 = fsub fast float 3.000000e+00, %405
  %407 = fmul fast float %404, %404
  %408 = fmul fast float %407, %406
  %409 = fmul fast float %295, %44
  %410 = fmul fast float %296, %45
  %411 = fmul fast float %297, %46
  %412 = fsub fast float %409, %301
  %413 = fsub fast float %410, %302
  %414 = fsub fast float %411, %303
  %415 = fsub fast float %298, %304
  %416 = fmul fast float %408, %412
  %417 = fmul fast float %408, %413
  %418 = fmul fast float %408, %414
  %419 = fmul fast float %408, %415
  %420 = fadd fast float %416, %301
  %421 = fadd fast float %417, %302
  %422 = fadd fast float %418, %303
  %423 = fadd fast float %419, %304
  %424 = fmul fast float %284, %284
  %425 = fmul fast float %424, %399
  br label %521

; <label>:426                                     ; preds = %281
  %427 = and i32 %306, 256
  %428 = icmp eq i32 %427, 0
  %429 = fsub fast float %348, %50
  br i1 %428, label %478, label %430

; <label>:430                                     ; preds = %426
  %431 = fadd fast float %290, %50
  %432 = fcmp fast olt float %348, %50
  %433 = fcmp fast ogt float %348, %431
  %434 = or i1 %432, %433
  %435 = select i1 %434, float 0.000000e+00, float %429
  %436 = call float @dx.op.unary.f32(i32 83, float %348)  ; DerivCoarseX(value)
  %437 = call float @dx.op.unary.f32(i32 84, float %348)  ; DerivCoarseY(value)
  %438 = fmul fast float %436, %436
  %439 = fmul fast float %437, %437
  %440 = fadd fast float %439, %438
  %441 = call float @dx.op.unary.f32(i32 24, float %440)  ; Sqrt(value)
  %442 = extractvalue %dx.types.CBufRet.f32 %328, 2
  %443 = fmul fast float %442, %441
  %444 = call float @dx.op.unary.f32(i32 7, float %443)  ; Saturate(value)
  %445 = fmul fast float %444, %291
  %446 = fdiv fast float %429, %445
  %447 = call float @dx.op.unary.f32(i32 7, float %446)  ; Saturate(value)
  %448 = fmul fast float %447, 2.000000e+00
  %449 = fsub fast float 3.000000e+00, %448
  %450 = fmul fast float %447, %447
  %451 = fmul fast float %450, %449
  %452 = fsub fast float %348, %431
  %453 = fadd fast float %452, %445
  %454 = fdiv fast float %453, %445
  %455 = call float @dx.op.unary.f32(i32 7, float %454)  ; Saturate(value)
  %456 = fmul fast float %455, 2.000000e+00
  %457 = fsub fast float 3.000000e+00, %456
  %458 = fmul fast float %455, %455
  %459 = fmul fast float %458, %457
  %460 = fsub fast float %451, %459
  %461 = fmul fast float %295, %44
  %462 = fmul fast float %296, %45
  %463 = fmul fast float %297, %46
  %464 = fsub fast float %461, %301
  %465 = fsub fast float %462, %302
  %466 = fsub fast float %463, %303
  %467 = fsub fast float %298, %304
  %468 = fmul fast float %460, %464
  %469 = fmul fast float %460, %465
  %470 = fmul fast float %460, %466
  %471 = fmul fast float %460, %467
  %472 = fadd fast float %468, %301
  %473 = fadd fast float %469, %302
  %474 = fadd fast float %470, %303
  %475 = fadd fast float %471, %304
  %476 = fmul fast float %435, %284
  %477 = call float @dx.op.unary.f32(i32 6, float %476)  ; FAbs(value)
  br label %521

; <label>:478                                     ; preds = %426
  br i1 %309, label %479, label %492

; <label>:479                                     ; preds = %478
  %480 = fdiv fast float 5.000000e+01, %29
  %481 = select i1 %311, float %480, float 1.000000e+00
  %482 = fmul fast float %481, %284
  %483 = fmul fast float %192, 2.000000e+00
  %484 = fmul fast float %193, 2.000000e+00
  %485 = fadd fast float %483, -1.000000e+00
  %486 = fadd fast float %484, -1.000000e+00
  %487 = call float @dx.op.dot2.f32(i32 54, float %485, float %486, float %485, float %486)  ; Dot2(ax,ay,bx,by)
  %488 = fmul fast float %292, %29
  %489 = fmul fast float %488, %487
  %490 = fsub fast float %429, %489
  %491 = fmul fast float %482, %490
  br label %521

; <label>:492                                     ; preds = %478
  br i1 %313, label %513, label %493

; <label>:493                                     ; preds = %492
  %494 = fmul fast float %29, 0x3F947AE140000000
  %495 = select i1 %311, float %494, float 1.000000e+00
  %496 = fdiv fast float 1.000000e+00, %495
  %497 = fmul fast float %495, %285
  %498 = fmul fast float %495, %286
  %499 = fmul fast float %496, %287
  %500 = call float @dx.op.unary.f32(i32 6, float %429)  ; FAbs(value)
  %501 = fcmp fast olt float %500, %497
  br i1 %501, label %502, label %506, !dx.controlflow.hints !68

; <label>:502                                     ; preds = %493
  %503 = fmul fast float %496, %284
  %504 = fmul fast float %503, %500
  %505 = call float @dx.op.unary.f32(i32 6, float %504)  ; FAbs(value)
  br label %521

; <label>:506                                     ; preds = %493
  %507 = fcmp fast ogt float %500, %498
  br i1 %507, label %508, label %521

; <label>:508                                     ; preds = %506
  %509 = fsub fast float %500, %498
  %510 = fmul fast float %499, %509
  %511 = call float @dx.op.unary.f32(i32 6, float %510)  ; FAbs(value)
  %512 = fsub fast float 1.000000e+00, %511
  br label %521

; <label>:513                                     ; preds = %492
  %514 = fdiv fast float 5.000000e+01, %29
  %515 = select i1 %311, float %514, float 1.000000e+00
  %516 = fmul fast float %515, %284
  %517 = call float @dx.op.unary.f32(i32 6, float %260)  ; FAbs(value)
  %518 = select i1 %308, float %517, float 0x47EFFFFFE0000000
  %519 = call float @dx.op.binary.f32(i32 36, float %429, float %518)  ; FMin(a,b)
  %520 = fmul fast float %516, %519
  br label %521

; <label>:521                                     ; preds = %513, %508, %506, %502, %479, %430, %349
  %522 = phi float [ %425, %349 ], [ %477, %430 ], [ %491, %479 ], [ %520, %513 ], [ %505, %502 ], [ %512, %508 ], [ %500, %506 ]
  %523 = phi float [ %420, %349 ], [ %472, %430 ], [ %44, %479 ], [ %44, %513 ], [ %44, %502 ], [ %44, %508 ], [ %44, %506 ]
  %524 = phi float [ %421, %349 ], [ %473, %430 ], [ %45, %479 ], [ %45, %513 ], [ %45, %502 ], [ %45, %508 ], [ %45, %506 ]
  %525 = phi float [ %422, %349 ], [ %474, %430 ], [ %46, %479 ], [ %46, %513 ], [ %46, %502 ], [ %46, %508 ], [ %46, %506 ]
  %526 = phi float [ %423, %349 ], [ %475, %430 ], [ 1.000000e+00, %479 ], [ 1.000000e+00, %513 ], [ 1.000000e+00, %502 ], [ 1.000000e+00, %508 ], [ 1.000000e+00, %506 ]
  %527 = call float @dx.op.unary.f32(i32 7, float %522)  ; Saturate(value)
  %528 = fmul fast float %526, %239
  %529 = fmul fast float %528, %527
  br label %530

; <label>:530                                     ; preds = %521, %278
  %531 = phi float [ %523, %521 ], [ %44, %278 ]
  %532 = phi float [ %524, %521 ], [ %45, %278 ]
  %533 = phi float [ %525, %521 ], [ %46, %278 ]
  %534 = phi float [ %529, %521 ], [ %239, %278 ]
  %535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %536 = extractvalue %dx.types.CBufRet.f32 %535, 2
  %537 = fptosi float %50 to i32
  %538 = sitofp i32 %537 to float
  %539 = fadd fast float %536, %538
  %540 = fmul fast float %539, 0x3FE3C6EF40000000
  %541 = frem fast float %55, 2.560000e+02
  %542 = frem fast float %56, 2.560000e+02
  %543 = fptoui float %541 to i32
  %544 = fptoui float %542 to i32
  %545 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %543, i32 %544, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %546 = extractvalue %dx.types.ResRet.f32 %545, 0
  %547 = fadd fast float %546, %540
  %548 = call float @dx.op.unary.f32(i32 22, float %547)  ; Frc(value)
  %549 = and i32 %145, 1
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %607, label %551, !dx.controlflow.hints !69

; <label>:551                                     ; preds = %530
  %552 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %142, i32 undef)  ; BufferLoad(srv,index,wot)
  %553 = extractvalue %dx.types.ResRet.f32 %552, 2
  %554 = extractvalue %dx.types.ResRet.f32 %552, 3
  %555 = add i32 %142, 16
  %556 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %555, i32 undef)  ; BufferLoad(srv,index,wot)
  %557 = extractvalue %dx.types.ResRet.f32 %556, 0
  %558 = extractvalue %dx.types.ResRet.f32 %556, 1
  %559 = extractvalue %dx.types.ResRet.f32 %556, 2
  %560 = add i32 %142, 32
  %561 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %560, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.f32 %561, 0
  %563 = extractvalue %dx.types.ResRet.f32 %561, 1
  %564 = extractvalue %dx.types.ResRet.f32 %561, 2
  %565 = and i32 %145, 2
  %566 = icmp eq i32 %565, 0
  %567 = call float @dx.op.dot3.f32(i32 55, float %36, float %37, float %38, float %36, float %37, float %38)  ; Dot3(ax,ay,az,bx,by,bz)
  %568 = call float @dx.op.unary.f32(i32 25, float %567)  ; Rsqrt(value)
  %569 = fmul fast float %568, %36
  %570 = fmul fast float %568, %37
  %571 = fmul fast float %568, %38
  %572 = call float @dx.op.dot3.f32(i32 55, float %90, float %91, float %92, float %90, float %91, float %92)  ; Dot3(ax,ay,az,bx,by,bz)
  %573 = call float @dx.op.unary.f32(i32 25, float %572)  ; Rsqrt(value)
  %574 = fmul fast float %573, %90
  %575 = fmul fast float %573, %91
  %576 = fmul fast float %573, %92
  %577 = call float @dx.op.dot3.f32(i32 55, float %574, float %575, float %576, float %569, float %570, float %571)  ; Dot3(ax,ay,az,bx,by,bz)
  %578 = fmul fast float %577, %577
  %579 = fmul fast float %578, %553
  %580 = fadd fast float %579, %554
  %581 = call float @dx.op.unary.f32(i32 7, float %580)  ; Saturate(value)
  br i1 %566, label %582, label %592, !dx.controlflow.hints !70

; <label>:582                                     ; preds = %551
  %583 = extractvalue %dx.types.ResRet.f32 %552, 1
  %584 = extractvalue %dx.types.ResRet.f32 %552, 0
  %585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %586 = extractvalue %dx.types.CBufRet.f32 %585, 3
  %587 = fmul fast float %586, %572
  %588 = fsub fast float %584, %587
  %589 = fmul fast float %588, %583
  %590 = call float @dx.op.unary.f32(i32 7, float %589)  ; Saturate(value)
  %591 = fmul fast float %590, %581
  br label %592

; <label>:592                                     ; preds = %582, %551
  %593 = phi float [ %591, %582 ], [ %581, %551 ]
  %594 = fsub fast float %557, %562
  %595 = fsub fast float %558, %563
  %596 = fsub fast float %559, %564
  %597 = fmul fast float %593, %594
  %598 = fmul fast float %593, %595
  %599 = fmul fast float %593, %596
  %600 = fadd fast float %597, %562
  %601 = fadd fast float %598, %563
  %602 = fadd fast float %599, %564
  %603 = fmul fast float %600, %531
  %604 = fmul fast float %601, %532
  %605 = fmul fast float %602, %533
  %606 = fmul fast float %593, %534
  br label %607

; <label>:607                                     ; preds = %592, %530
  %608 = phi float [ %603, %592 ], [ %531, %530 ]
  %609 = phi float [ %604, %592 ], [ %532, %530 ]
  %610 = phi float [ %605, %592 ], [ %533, %530 ]
  %611 = phi float [ %606, %592 ], [ %534, %530 ]
  %612 = add i32 %25, 104
  %613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %612, i32 undef)  ; BufferLoad(srv,index,wot)
  %614 = extractvalue %dx.types.ResRet.i32 %613, 0
  %615 = add i32 %614, 0
  %616 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %615, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %617 = add i32 %25, 24
  %618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %617, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.i32 %618, 0
  %620 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %616, %dx.types.Handle %51, float %182, float %183, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %621 = extractvalue %dx.types.ResRet.f32 %620, 0
  %622 = extractvalue %dx.types.ResRet.f32 %620, 1
  %623 = extractvalue %dx.types.ResRet.f32 %620, 2
  %624 = extractvalue %dx.types.ResRet.f32 %620, 3
  %625 = and i32 %619, 255
  %626 = uitofp i32 %625 to float
  %627 = lshr i32 %619, 8
  %628 = and i32 %627, 255
  %629 = uitofp i32 %628 to float
  %630 = fmul fast float %624, %626
  %631 = fadd fast float %630, %629
  %632 = fmul fast float %631, 0x3F70101000000000
  %633 = add i32 %25, 56
  %634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %633, i32 undef)  ; BufferLoad(srv,index,wot)
  %635 = extractvalue %dx.types.ResRet.i32 %634, 0
  %636 = and i32 %635, 255
  %637 = uitofp i32 %636 to float
  %638 = fmul fast float %637, 0x3F70101020000000
  %639 = lshr i32 %635, 8
  %640 = and i32 %639, 255
  %641 = uitofp i32 %640 to float
  %642 = fmul fast float %641, 0x3F70101020000000
  %643 = lshr i32 %635, 16
  %644 = and i32 %643, 255
  %645 = uitofp i32 %644 to float
  %646 = fmul fast float %645, 0x3F70101020000000
  %647 = fmul fast float %621, %608
  %648 = fmul fast float %638, %638
  %649 = fmul fast float %648, %647
  %650 = fmul fast float %622, %609
  %651 = fmul fast float %642, %642
  %652 = fmul fast float %651, %650
  %653 = fmul fast float %623, %610
  %654 = fmul fast float %646, %646
  %655 = fmul fast float %654, %653
  %656 = add i32 %25, 28
  %657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %656, i32 undef)  ; BufferLoad(srv,index,wot)
  %658 = extractvalue %dx.types.ResRet.i32 %657, 0
  %659 = add i32 %25, 108
  %660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %659, i32 undef)  ; BufferLoad(srv,index,wot)
  %661 = extractvalue %dx.types.ResRet.i32 %660, 0
  %662 = add i32 %661, 0
  %663 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %662, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %664 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %663, %dx.types.Handle %51, float %182, float %183, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %665 = extractvalue %dx.types.ResRet.f32 %664, 0
  %666 = extractvalue %dx.types.ResRet.f32 %664, 1
  %667 = extractvalue %dx.types.ResRet.f32 %664, 3
  %668 = and i32 %658, 255
  %669 = uitofp i32 %668 to float
  %670 = lshr i32 %658, 8
  %671 = and i32 %670, 255
  %672 = uitofp i32 %671 to float
  %673 = lshr i32 %658, 16
  %674 = and i32 %673, 255
  %675 = uitofp i32 %674 to float
  %676 = fmul fast float %675, 0x3F70101000000000
  %677 = fmul fast float %665, %669
  %678 = fadd fast float %677, %672
  %679 = fmul fast float %678, 0x3F70101000000000
  %680 = fadd fast float %666, -5.000000e-01
  %681 = fadd fast float %667, -5.000000e-01
  %682 = fmul fast float %680, %676
  %683 = fmul fast float %681, %676
  %684 = fadd fast float %682, 5.000000e-01
  %685 = fadd fast float %683, 5.000000e-01
  %686 = fmul fast float %684, 2.000000e+00
  %687 = fadd fast float %686, -1.000000e+00
  %688 = fmul fast float %685, 2.000000e+00
  %689 = fadd fast float %688, -1.000000e+00
  %690 = fadd fast float %687, %689
  %691 = fmul fast float %690, 5.000000e-01
  %692 = fsub fast float %687, %689
  %693 = fmul fast float %692, 5.000000e-01
  %694 = call float @dx.op.unary.f32(i32 6, float %691)  ; FAbs(value)
  %695 = fsub fast float 1.000000e+00, %694
  %696 = call float @dx.op.unary.f32(i32 6, float %693)  ; FAbs(value)
  %697 = fsub fast float %695, %696
  %698 = call float @dx.op.dot3.f32(i32 55, float %691, float %693, float %697, float %691, float %693, float %697)  ; Dot3(ax,ay,az,bx,by,bz)
  %699 = call float @dx.op.unary.f32(i32 25, float %698)  ; Rsqrt(value)
  %700 = fmul fast float %691, %699
  %701 = fmul fast float %693, %699
  %702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %703 = extractvalue %dx.types.CBufRet.f32 %702, 3
  %704 = fcmp fast ogt float %703, 0.000000e+00
  %705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %706 = extractvalue %dx.types.CBufRet.f32 %705, 1
  br i1 %704, label %707, label %732

; <label>:707                                     ; preds = %607
  %708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %30, float %31, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %709 = extractvalue %dx.types.ResRet.f32 %708, 0
  %710 = extractvalue %dx.types.ResRet.f32 %708, 1
  %711 = extractvalue %dx.types.ResRet.f32 %708, 2
  %712 = extractvalue %dx.types.ResRet.f32 %708, 3
  %713 = fmul fast float %706, %712
  %714 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %30, float %31, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %715 = extractvalue %dx.types.ResRet.f32 %714, 0
  %716 = extractvalue %dx.types.ResRet.f32 %714, 1
  %717 = extractvalue %dx.types.ResRet.f32 %714, 2
  %718 = extractvalue %dx.types.ResRet.f32 %714, 3
  %719 = fmul fast float %706, %715
  %720 = fmul fast float %706, %716
  %721 = fmul fast float %706, %717
  %722 = fmul fast float %706, %718
  %723 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %30, float %31, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %724 = extractvalue %dx.types.ResRet.f32 %723, 0
  %725 = extractvalue %dx.types.ResRet.f32 %723, 1
  %726 = extractvalue %dx.types.ResRet.f32 %723, 2
  %727 = extractvalue %dx.types.ResRet.f32 %723, 3
  %728 = fmul fast float %706, %724
  %729 = fmul fast float %706, %725
  %730 = fmul fast float %706, %726
  %731 = fmul fast float %706, %727
  br label %737

; <label>:732                                     ; preds = %607
  %733 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %30, float %31, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %734 = extractvalue %dx.types.ResRet.f32 %733, 0
  %735 = extractvalue %dx.types.ResRet.f32 %733, 1
  %736 = extractvalue %dx.types.ResRet.f32 %733, 2
  br label %737

; <label>:737                                     ; preds = %732, %707
  %738 = phi float [ %709, %707 ], [ %734, %732 ]
  %739 = phi float [ %710, %707 ], [ %735, %732 ]
  %740 = phi float [ %711, %707 ], [ %736, %732 ]
  %741 = phi float [ %713, %707 ], [ 0.000000e+00, %732 ]
  %742 = phi float [ %719, %707 ], [ 0.000000e+00, %732 ]
  %743 = phi float [ %720, %707 ], [ 0.000000e+00, %732 ]
  %744 = phi float [ %721, %707 ], [ 0.000000e+00, %732 ]
  %745 = phi float [ %722, %707 ], [ 0.000000e+00, %732 ]
  %746 = phi float [ %728, %707 ], [ 0.000000e+00, %732 ]
  %747 = phi float [ %729, %707 ], [ 0.000000e+00, %732 ]
  %748 = phi float [ %730, %707 ], [ 0.000000e+00, %732 ]
  %749 = phi float [ %731, %707 ], [ 0.000000e+00, %732 ]
  %750 = fmul float %706, %740
  %751 = fmul float %706, %739
  %752 = fmul float %706, %738
  %753 = call float @dx.op.dot2.f32(i32 54, float %700, float %701, float %700, float %701)  ; Dot2(ax,ay,bx,by)
  %754 = fsub fast float 1.000000e+00, %753
  %755 = call float @dx.op.unary.f32(i32 7, float %754)  ; Saturate(value)
  %756 = call float @dx.op.unary.f32(i32 24, float %755)  ; Sqrt(value)
  %757 = fmul fast float %756, %36
  %758 = fmul fast float %756, %37
  %759 = fmul fast float %756, %38
  %760 = fmul fast float %700, %32
  %761 = fmul fast float %700, %33
  %762 = fmul fast float %700, %34
  %763 = fmul fast float %102, %701
  %764 = fmul fast float %103, %701
  %765 = fmul fast float %104, %701
  %766 = fadd fast float %763, %760
  %767 = fadd fast float %766, %757
  %768 = fadd fast float %764, %761
  %769 = fadd fast float %768, %758
  %770 = fadd fast float %765, %762
  %771 = fadd fast float %770, %759
  %772 = call float @dx.op.dot3.f32(i32 55, float %767, float %769, float %771, float %767, float %769, float %771)  ; Dot3(ax,ay,az,bx,by,bz)
  %773 = call float @dx.op.unary.f32(i32 25, float %772)  ; Rsqrt(value)
  %774 = fmul fast float %767, %773
  %775 = fmul fast float %769, %773
  %776 = fmul fast float %771, %773
  %777 = call float @dx.op.dot3.f32(i32 55, float %90, float %91, float %92, float %90, float %91, float %92)  ; Dot3(ax,ay,az,bx,by,bz)
  %778 = call float @dx.op.unary.f32(i32 25, float %777)  ; Rsqrt(value)
  %779 = fmul fast float %778, %90
  %780 = fmul fast float %778, %91
  %781 = fmul fast float %778, %92
  %782 = fsub fast float -0.000000e+00, %779
  %783 = fsub fast float -0.000000e+00, %780
  %784 = fsub fast float -0.000000e+00, %781
  %785 = fadd fast float %632, 0xBFB99999A0000000
  %786 = call float @dx.op.unary.f32(i32 7, float %785)  ; Saturate(value)
  %787 = fmul fast float %786, 0x3FF1C71C80000000
  %788 = call float @dx.op.binary.f32(i32 36, float %632, float 0x3FB99999A0000000)  ; FMin(a,b)
  %789 = fsub fast float 1.000000e+00, %787
  %790 = call float @dx.op.unary.f32(i32 7, float %789)  ; Saturate(value)
  %791 = fmul fast float %790, %649
  %792 = fmul fast float %790, %652
  %793 = fmul fast float %790, %655
  %794 = call float @dx.op.unary.f32(i32 7, float %791)  ; Saturate(value)
  %795 = call float @dx.op.unary.f32(i32 7, float %792)  ; Saturate(value)
  %796 = call float @dx.op.unary.f32(i32 7, float %793)  ; Saturate(value)
  %797 = fmul fast float %787, %649
  %798 = fmul fast float %787, %652
  %799 = fmul fast float %787, %655
  %800 = fadd fast float %797, %788
  %801 = fadd fast float %798, %788
  %802 = fadd fast float %799, %788
  %803 = call float @dx.op.unary.f32(i32 7, float %800)  ; Saturate(value)
  %804 = call float @dx.op.unary.f32(i32 7, float %801)  ; Saturate(value)
  %805 = call float @dx.op.unary.f32(i32 7, float %802)  ; Saturate(value)
  %806 = call float @dx.op.unary.f32(i32 7, float %679)  ; Saturate(value)
  %807 = call float @dx.op.dot3.f32(i32 55, float %794, float %795, float %796, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %808 = add i32 %25, 32
  %809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %808, i32 undef)  ; BufferLoad(srv,index,wot)
  %810 = extractvalue %dx.types.ResRet.i32 %809, 0
  %811 = and i32 %810, 255
  %812 = uitofp i32 %811 to float
  %813 = lshr i32 %810, 8
  %814 = and i32 %813, 255
  %815 = uitofp i32 %814 to float
  %816 = fmul fast float %815, %807
  %817 = fadd fast float %816, %812
  %818 = fmul fast float %817, 0x3F70101020000000
  %819 = call float @dx.op.unary.f32(i32 7, float %818)  ; Saturate(value)
  %820 = and i32 %145, 8192
  %821 = icmp eq i32 %820, 0
  %822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %823 = extractvalue %dx.types.CBufRet.f32 %822, 0
  br i1 %821, label %830, label %824, !dx.controlflow.hints !71

; <label>:824                                     ; preds = %737
  %825 = add i32 %142, 176
  %826 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %825, i32 undef)  ; BufferLoad(srv,index,wot)
  %827 = extractvalue %dx.types.ResRet.f32 %826, 0
  %828 = fcmp fast oge float %827, 0.000000e+00
  %829 = select i1 %828, float %827, float %823
  br label %830

; <label>:830                                     ; preds = %824, %737
  %831 = phi float [ %829, %824 ], [ %823, %737 ]
  %832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %833 = extractvalue %dx.types.CBufRet.f32 %832, 3
  %834 = fcmp fast ogt float %833, 0.000000e+00
  br i1 %834, label %835, label %842

; <label>:835                                     ; preds = %830
  %836 = fmul fast float %775, 0xBFDF454380000000
  %837 = fmul fast float %776, 0x3FDF454380000000
  %838 = fmul fast float %774, 0xBFDF454380000000
  %839 = call float @dx.op.dot4.f32(i32 56, float %752, float %751, float %750, float %741, float 0x3FD20DD760000000, float %836, float %837, float %838)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %840 = call float @dx.op.dot4.f32(i32 56, float %742, float %743, float %744, float %745, float 0x3FD20DD760000000, float %836, float %837, float %838)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %841 = call float @dx.op.dot4.f32(i32 56, float %746, float %747, float %748, float %749, float 0x3FD20DD760000000, float %836, float %837, float %838)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %842

; <label>:842                                     ; preds = %835, %830
  %843 = phi float [ %839, %835 ], [ %752, %830 ]
  %844 = phi float [ %840, %835 ], [ %751, %830 ]
  %845 = phi float [ %841, %835 ], [ %750, %830 ]
  %846 = call float @dx.op.dot3.f32(i32 55, float %774, float %775, float %776, float %782, float %783, float %784)  ; Dot3(ax,ay,az,bx,by,bz)
  %847 = call float @dx.op.unary.f32(i32 7, float %846)  ; Saturate(value)
  br i1 %834, label %848, label %948

; <label>:848                                     ; preds = %842
  %849 = fsub fast float -0.000000e+00, %741
  %850 = fsub fast float %849, %745
  %851 = fsub fast float -0.000000e+00, %751
  %852 = fsub fast float %851, %743
  %853 = fadd fast float %744, %750
  %854 = fsub fast float %850, %749
  %855 = fsub fast float %852, %747
  %856 = fadd fast float %853, %748
  %857 = call float @dx.op.dot3.f32(i32 55, float %854, float %855, float %856, float %854, float %855, float %856)  ; Dot3(ax,ay,az,bx,by,bz)
  %858 = call float @dx.op.unary.f32(i32 25, float %857)  ; Rsqrt(value)
  %859 = fmul fast float %858, %854
  %860 = fmul fast float %858, %855
  %861 = fmul fast float %858, %856
  %862 = fmul fast float %860, 0xBFD4D8D7C0000000
  %863 = fmul fast float %861, 0x3FD4D8D7C0000000
  %864 = fmul fast float %859, 0xBFD4D8D7C0000000
  %865 = call float @dx.op.dot4.f32(i32 56, float %752, float %751, float %750, float %741, float 0x3FD20DD760000000, float %862, float %863, float %864)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %866 = call float @dx.op.dot4.f32(i32 56, float %742, float %743, float %744, float %745, float 0x3FD20DD760000000, float %862, float %863, float %864)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %867 = call float @dx.op.dot4.f32(i32 56, float %746, float %747, float %748, float %749, float 0x3FD20DD760000000, float %862, float %863, float %864)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %868 = fmul fast float %865, 0x4003333340000000
  %869 = fmul fast float %752, 0x3FE5AA35A0000000
  %870 = fsub fast float %868, %869
  %871 = fmul fast float %866, 0x4003333340000000
  %872 = fmul fast float %742, 0x3FE5AA35A0000000
  %873 = fsub fast float %871, %872
  %874 = fmul fast float %867, 0x4003333340000000
  %875 = fmul fast float %746, 0x3FE5AA35A0000000
  %876 = fsub fast float %874, %875
  %877 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %870)  ; FMax(a,b)
  %878 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %873)  ; FMax(a,b)
  %879 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %876)  ; FMax(a,b)
  %880 = fsub fast float %859, %779
  %881 = fsub fast float %860, %780
  %882 = fsub fast float %861, %781
  %883 = call float @dx.op.dot3.f32(i32 55, float %880, float %881, float %882, float %880, float %881, float %882)  ; Dot3(ax,ay,az,bx,by,bz)
  %884 = call float @dx.op.unary.f32(i32 25, float %883)  ; Rsqrt(value)
  %885 = fmul fast float %884, %880
  %886 = fmul fast float %884, %881
  %887 = fmul fast float %884, %882
  %888 = call float @dx.op.dot3.f32(i32 55, float %774, float %775, float %776, float %859, float %860, float %861)  ; Dot3(ax,ay,az,bx,by,bz)
  %889 = call float @dx.op.unary.f32(i32 6, float %888)  ; FAbs(value)
  %890 = call float @dx.op.dot3.f32(i32 55, float %774, float %775, float %776, float %885, float %886, float %887)  ; Dot3(ax,ay,az,bx,by,bz)
  %891 = fmul fast float %890, %890
  %892 = call float @dx.op.dot3.f32(i32 55, float %782, float %783, float %784, float %885, float %886, float %887)  ; Dot3(ax,ay,az,bx,by,bz)
  %893 = call float @dx.op.unary.f32(i32 6, float %892)  ; FAbs(value)
  %894 = fsub fast float 1.000000e+00, %806
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
  %930 = fsub fast float 1.000000e+00, %803
  %931 = fsub fast float 1.000000e+00, %804
  %932 = fsub fast float 1.000000e+00, %805
  %933 = fmul fast float %929, %930
  %934 = fmul fast float %929, %931
  %935 = fmul fast float %929, %932
  %936 = fadd fast float %933, %803
  %937 = fadd fast float %934, %804
  %938 = fadd fast float %935, %805
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
  %953 = fmul fast float %806, 9.843750e-01
  %954 = fadd fast float %952, 7.812500e-03
  %955 = fadd fast float %953, 7.812500e-03
  %956 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %19, float %954, float %955, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %957 = extractvalue %dx.types.ResRet.f32 %956, 2
  %958 = extractvalue %dx.types.ResRet.f32 %956, 3
  %959 = fmul fast float %957, %803
  %960 = fmul fast float %957, %804
  %961 = fmul fast float %957, %805
  %962 = fadd fast float %959, %958
  %963 = fadd fast float %960, %958
  %964 = fadd fast float %961, %958
  %965 = call float @dx.op.binary.f32(i32 35, float %963, float %964)  ; FMax(a,b)
  %966 = call float @dx.op.binary.f32(i32 35, float %962, float %965)  ; FMax(a,b)
  %967 = fsub fast float 1.000000e+00, %966
  %968 = call float @dx.op.dot3.f32(i32 55, float %779, float %780, float %781, float %774, float %775, float %776)  ; Dot3(ax,ay,az,bx,by,bz)
  %969 = fmul fast float %968, 2.000000e+00
  %970 = fmul fast float %969, %774
  %971 = fmul fast float %969, %775
  %972 = fmul fast float %969, %776
  %973 = fsub fast float %779, %970
  %974 = fsub fast float %780, %971
  %975 = fsub fast float %781, %972
  br i1 %834, label %976, label %983

; <label>:976                                     ; preds = %948
  %977 = fmul fast float %974, 0xBFDF454380000000
  %978 = fmul fast float %975, 0x3FDF454380000000
  %979 = fmul fast float %973, 0xBFDF454380000000
  %980 = call float @dx.op.dot4.f32(i32 56, float %752, float %751, float %750, float %741, float 0x3FD20DD760000000, float %977, float %978, float %979)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %981 = call float @dx.op.dot4.f32(i32 56, float %742, float %743, float %744, float %745, float 0x3FD20DD760000000, float %977, float %978, float %979)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %982 = call float @dx.op.dot4.f32(i32 56, float %746, float %747, float %748, float %749, float 0x3FD20DD760000000, float %977, float %978, float %979)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %983

; <label>:983                                     ; preds = %976, %948
  %984 = phi float [ %980, %976 ], [ %752, %948 ]
  %985 = phi float [ %981, %976 ], [ %751, %948 ]
  %986 = phi float [ %982, %976 ], [ %750, %948 ]
  %987 = call float @dx.op.dot3.f32(i32 55, float %984, float %985, float %986, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %989 = extractvalue %dx.types.CBufRet.f32 %988, 2
  %990 = extractvalue %dx.types.CBufRet.f32 %988, 3
  %991 = fmul fast float %989, %55
  %992 = fmul fast float %990, %56
  %993 = fptoui float %991 to i32
  %994 = fptoui float %992 to i32
  %995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %996 = extractvalue %dx.types.CBufRet.f32 %995, 0
  %997 = extractvalue %dx.types.CBufRet.f32 %995, 2
  %998 = extractvalue %dx.types.CBufRet.f32 %995, 3
  %999 = fadd fast float %50, -4.000000e+00
  %1000 = call float @dx.op.binary.f32(i32 35, float %999, float 0.000000e+00)  ; FMax(a,b)
  %1001 = fadd fast float %1000, %996
  %1002 = fmul fast float %1001, %997
  %1003 = call float @dx.op.unary.f32(i32 23, float %1002)  ; Log(value)
  %1004 = fmul fast float %1003, %998
  %1005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1006 = extractvalue %dx.types.CBufRet.f32 %1005, 2
  %1007 = fmul fast float %1004, %1006
  %1008 = call float @dx.op.unary.f32(i32 7, float %1007)  ; Saturate(value)
  %1009 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1010 = extractvalue %dx.types.CBufRet.i32 %1009, 1
  %1011 = add i32 %1010, -1
  %1012 = uitofp i32 %1010 to float
  %1013 = fmul fast float %1012, %1008
  %1014 = fptoui float %1013 to i32
  %1015 = call i32 @dx.op.binary.i32(i32 40, i32 %1014, i32 %1011)  ; UMin(a,b)
  %1016 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %1017 = extractvalue %dx.types.CBufRet.i32 %1016, 2
  %1018 = extractvalue %dx.types.CBufRet.i32 %1016, 3
  %1019 = call i32 @dx.op.tertiary.i32(i32 49, i32 %994, i32 %1017, i32 %993)  ; UMad(a,b,c)
  %1020 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1015, i32 %1018, i32 %1019)  ; UMad(a,b,c)
  %1021 = call float @dx.op.binary.f32(i32 35, float %50, float 0.000000e+00)  ; FMax(a,b)
  %1022 = fptoui float %1021 to i32
  %1023 = lshr i32 %1022, 5
  %1024 = call i32 @dx.op.binary.i32(i32 40, i32 %1023, i32 8191)  ; UMin(a,b)
  %1025 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1026 = extractvalue %dx.types.CBufRet.i32 %1025, 2
  %1027 = add nsw i32 %1026, -1
  %1028 = call i32 @dx.op.binary.i32(i32 37, i32 %1027, i32 0)  ; IMax(a,b)
  %1029 = shl i32 %1024, 2
  %1030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %1029, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1045 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1046 = extractvalue %dx.types.CBufRet.i32 %1045, 2
  %1047 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1020, i32 %1046, i32 %1044)  ; UMad(a,b,c)
  %1048 = shl i32 %1047, 2
  %1049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1048, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1081 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1080, i32 undef)  ; BufferLoad(srv,index,wot)
  %1082 = extractvalue %dx.types.ResRet.f32 %1081, 0
  %1083 = extractvalue %dx.types.ResRet.f32 %1081, 1
  %1084 = extractvalue %dx.types.ResRet.f32 %1081, 2
  %1085 = add i32 %1080, 12
  %1086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1085, i32 undef)  ; BufferLoad(srv,index,wot)
  %1087 = extractvalue %dx.types.ResRet.i32 %1086, 0
  %1088 = add i32 %1080, 16
  %1089 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1088, i32 undef)  ; BufferLoad(srv,index,wot)
  %1090 = extractvalue %dx.types.ResRet.f32 %1089, 0
  %1091 = extractvalue %dx.types.ResRet.f32 %1089, 1
  %1092 = extractvalue %dx.types.ResRet.f32 %1089, 2
  %1093 = add i32 %1080, 28
  %1094 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1093, i32 undef)  ; BufferLoad(srv,index,wot)
  %1095 = extractvalue %dx.types.ResRet.f32 %1094, 0
  %1096 = add i32 %1080, 32
  %1097 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1096, i32 undef)  ; BufferLoad(srv,index,wot)
  %1098 = extractvalue %dx.types.ResRet.f32 %1097, 0
  %1099 = extractvalue %dx.types.ResRet.f32 %1097, 1
  %1100 = extractvalue %dx.types.ResRet.f32 %1097, 2
  %1101 = extractvalue %dx.types.ResRet.f32 %1097, 3
  %1102 = add i32 %1080, 48
  %1103 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1102, i32 undef)  ; BufferLoad(srv,index,wot)
  %1104 = extractvalue %dx.types.ResRet.f32 %1103, 0
  %1105 = extractvalue %dx.types.ResRet.f32 %1103, 1
  %1106 = add i32 %1080, 56
  %1107 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1106, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.f32 %1107, 0
  %1109 = extractvalue %dx.types.ResRet.f32 %1107, 1
  %1110 = add i32 %1080, 64
  %1111 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1110, i32 undef)  ; BufferLoad(srv,index,wot)
  %1112 = extractvalue %dx.types.ResRet.f32 %1111, 0
  %1113 = extractvalue %dx.types.ResRet.f32 %1111, 1
  %1114 = mul i32 %1076, 60
  %1115 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %1114, i32 undef)  ; BufferLoad(srv,index,wot)
  %1116 = extractvalue %dx.types.ResRet.f32 %1115, 0
  %1117 = extractvalue %dx.types.ResRet.f32 %1115, 1
  %1118 = extractvalue %dx.types.ResRet.f32 %1115, 2
  %1119 = add i32 %1114, 12
  %1120 = add i32 %1114, 48
  %1121 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %1120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1122 = extractvalue %dx.types.ResRet.f32 %1121, 0
  %1123 = extractvalue %dx.types.ResRet.f32 %1121, 1
  %1124 = extractvalue %dx.types.ResRet.f32 %1121, 2
  %1125 = and i32 %1087, 32767
  %1126 = bitcast float %1082 to i32
  %1127 = icmp eq i32 %1126, -1
  %1128 = bitcast float %1083 to i32
  %1129 = and i32 %1087, 32768
  %1130 = icmp ne i32 %1129, 0
  %1131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1132 = extractvalue %dx.types.CBufRet.f32 %1131, 0
  %1133 = extractvalue %dx.types.CBufRet.f32 %1131, 1
  %1134 = extractvalue %dx.types.CBufRet.f32 %1131, 2
  %1135 = fsub fast float %1116, %1132
  %1136 = fsub fast float %1117, %1133
  %1137 = fsub fast float %1118, %1134
  %1138 = fsub fast float %90, %1135
  %1139 = fsub fast float %91, %1136
  %1140 = fsub fast float %92, %1137
  %1141 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %1119, i32 undef)  ; BufferLoad(srv,index,wot)
  %1142 = extractvalue %dx.types.ResRet.f32 %1141, 0
  %1143 = extractvalue %dx.types.ResRet.f32 %1141, 1
  %1144 = extractvalue %dx.types.ResRet.f32 %1141, 2
  %1145 = call float @dx.op.dot3.f32(i32 55, float %1138, float %1139, float %1140, float %1142, float %1143, float %1144)  ; Dot3(ax,ay,az,bx,by,bz)
  %1146 = add i32 %1114, 24
  %1147 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %1146, i32 undef)  ; BufferLoad(srv,index,wot)
  %1148 = extractvalue %dx.types.ResRet.f32 %1147, 0
  %1149 = extractvalue %dx.types.ResRet.f32 %1147, 1
  %1150 = extractvalue %dx.types.ResRet.f32 %1147, 2
  %1151 = call float @dx.op.dot3.f32(i32 55, float %1138, float %1139, float %1140, float %1148, float %1149, float %1150)  ; Dot3(ax,ay,az,bx,by,bz)
  %1152 = add i32 %1114, 36
  %1153 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1233 = fadd fast float %1230, %90
  %1234 = fadd fast float %1231, %91
  %1235 = fadd fast float %1232, %92
  %1236 = fsub fast float %1233, %1082
  %1237 = fsub fast float %1234, %1083
  %1238 = fsub fast float %1235, %1084
  br label %1246

; <label>:1239                                    ; preds = %1181
  %1240 = fmul fast float %973, 8.096000e+03
  %1241 = fmul fast float %974, 8.096000e+03
  %1242 = fmul fast float %975, 8.096000e+03
  %1243 = fadd fast float %1240, %90
  %1244 = fadd fast float %1241, %91
  %1245 = fadd fast float %1242, %92
  br label %1246

; <label>:1246                                    ; preds = %1239, %1182
  %1247 = phi float [ %973, %1239 ], [ %1236, %1182 ]
  %1248 = phi float [ %974, %1239 ], [ %1237, %1182 ]
  %1249 = phi float [ %975, %1239 ], [ %1238, %1182 ]
  %1250 = phi float [ %1243, %1239 ], [ %1233, %1182 ]
  %1251 = phi float [ %1244, %1239 ], [ %1234, %1182 ]
  %1252 = phi float [ %1245, %1239 ], [ %1235, %1182 ]
  %1253 = fcmp fast olt float %1101, 1.000000e+00
  br i1 %1253, label %1254, label %1285, !dx.controlflow.hints !72

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
  %1290 = fmul fast float %806, 0x400187C840000000
  %1291 = fadd fast float %1290, 0xC00EFC2120000000
  %1292 = fmul fast float %1291, %806
  %1293 = fadd fast float %1292, 0x3FE5D16340000000
  %1294 = fmul fast float %1293, %806
  %1295 = fadd fast float %1294, 1.000000e+00
  %1296 = call float @dx.op.unary.f32(i32 7, float %1295)  ; Saturate(value)
  %1297 = fsub fast float %1250, %90
  %1298 = fsub fast float %1251, %91
  %1299 = fsub fast float %1252, %92
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
  %1324 = phi float [ %806, %1320 ], [ %1319, %1289 ]
  %1325 = phi i32 [ %1322, %1320 ], [ 0, %1289 ]
  %1326 = fmul float %1324, 5.000000e+00
  %1327 = fsub float 5.000000e+00, %1326
  %1328 = icmp ne i32 %1325, 0
  %1329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1372 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %18, float %1370, float %1371, float %1360, float undef, i32 0, i32 0, i32 undef, float %1332)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1373 = extractvalue %dx.types.ResRet.f32 %1372, 0
  %1374 = extractvalue %dx.types.ResRet.f32 %1372, 1
  %1375 = extractvalue %dx.types.ResRet.f32 %1372, 2
  %1376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %1398, label %1399, label %1039, !llvm.loop !73

; <label>:1399                                    ; preds = %1392
  br label %1400

; <label>:1400                                    ; preds = %1399, %983
  %1401 = phi float [ 0.000000e+00, %983 ], [ %1393, %1399 ]
  %1402 = phi float [ 0.000000e+00, %983 ], [ %1394, %1399 ]
  %1403 = phi float [ 0.000000e+00, %983 ], [ %1395, %1399 ]
  %1404 = call float @dx.op.dot3.f32(i32 55, float %1401, float %1402, float %1403, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1405 = select i1 %125, float 0.000000e+00, float %1401
  %1406 = select i1 %125, float %1404, float %1402
  %1407 = fmul fast float %1405, %962
  %1408 = fmul fast float %1406, %963
  %1409 = call float @dx.op.binary.f32(i32 35, float %1407, float 0.000000e+00)  ; FMax(a,b)
  %1410 = call float @dx.op.binary.f32(i32 35, float %1408, float 0.000000e+00)  ; FMax(a,b)
  %1411 = fsub fast float 1.000000e+00, %611
  %1412 = call float @dx.op.dot3.f32(i32 55, float %1411, float %1411, float %1411, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1413 = fsub fast float 1.000000e+00, %1412
  %1414 = fmul fast float %843, %794
  %1415 = fmul fast float %1414, %967
  %1416 = fmul fast float %844, %795
  %1417 = fmul fast float %1416, %967
  %1418 = fadd fast float %1415, %949
  %1419 = fadd fast float %1418, %1409
  %1420 = fadd fast float %1417, %950
  %1421 = fadd fast float %1420, %1410
  %1422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1423 = extractvalue %dx.types.CBufRet.f32 %1422, 0
  br i1 %125, label %1424, label %1448

; <label>:1424                                    ; preds = %1400
  %1425 = fmul fast float %831, %819
  %1426 = fsub fast float 1.000000e+00, %819
  %1427 = call float @dx.op.unary.f32(i32 7, float %1426)  ; Saturate(value)
  %1428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1429 = extractvalue %dx.types.CBufRet.f32 %1428, 3
  %1430 = fmul fast float %1429, %1427
  %1431 = fadd fast float %1430, %1425
  %1432 = fadd fast float %1421, %1419
  %1433 = fmul fast float %611, %1432
  %1434 = fmul fast float %1423, %1433
  %1435 = extractvalue %dx.types.CBufRet.f32 %1428, 1
  %1436 = fsub fast float %1431, %1435
  %1437 = extractvalue %dx.types.CBufRet.f32 %1428, 2
  %1438 = fmul fast float %1436, %1437
  %1439 = call float @dx.op.unary.f32(i32 7, float %1438)  ; Saturate(value)
  %1440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1441 = extractvalue %dx.types.CBufRet.f32 %1440, 0
  %1442 = fsub fast float %1439, %1441
  %1443 = fmul fast float %1442, 1.000000e+01
  %1444 = call float @dx.op.unary.f32(i32 7, float %1443)  ; Saturate(value)
  %1445 = fmul fast float %1444, %1413
  %1446 = fsub fast float %1413, %1445
  %1447 = fmul fast float %1446, %1439
  br label %1466

; <label>:1448                                    ; preds = %1400
  %1449 = fmul fast float %1421, %611
  %1450 = fmul fast float %1419, %611
  %1451 = fmul fast float %845, %796
  %1452 = fmul fast float %1451, %967
  %1453 = fmul fast float %1403, %964
  %1454 = call float @dx.op.binary.f32(i32 35, float %1453, float 0.000000e+00)  ; FMax(a,b)
  %1455 = fadd fast float %1452, %951
  %1456 = fadd fast float %1455, %1454
  %1457 = fmul fast float %611, %1456
  %1458 = fmul fast float %1423, %1450
  %1459 = fmul fast float %1423, %1449
  %1460 = fmul fast float %1457, %1423
  %1461 = call float @dx.op.binary.f32(i32 35, float %1459, float %1460)  ; FMax(a,b)
  %1462 = call float @dx.op.binary.f32(i32 35, float %1458, float %1461)  ; FMax(a,b)
  %1463 = call float @dx.op.binary.f32(i32 35, float %1462, float %1413)  ; FMax(a,b)
  %1464 = fcmp fast ugt float %1463, 0x3F10000000000000
  br i1 %1464, label %1466, label %1465

; <label>:1465                                    ; preds = %1448
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1466

; <label>:1466                                    ; preds = %1465, %1448, %1424
  %1467 = phi float [ %1434, %1424 ], [ %1458, %1465 ], [ %1458, %1448 ]
  %1468 = phi float [ %1447, %1424 ], [ %1459, %1465 ], [ %1459, %1448 ]
  %1469 = phi float [ %1446, %1424 ], [ %1460, %1465 ], [ %1460, %1448 ]
  %1470 = phi float [ %1446, %1424 ], [ %1413, %1465 ], [ %1413, %1448 ]
  %1471 = fadd fast float %548, 0x3FE3C6EF40000000
  %1472 = call float @dx.op.unary.f32(i32 22, float %1471)  ; Frc(value)
  %1473 = call float @dx.op.unary.f32(i32 23, float %1467)  ; Log(value)
  %1474 = fadd fast float %1473, -7.000000e+00
  %1475 = call float @dx.op.unary.f32(i32 21, float %1474)  ; Exp(value)
  %1476 = fmul fast float %1472, 2.000000e+00
  %1477 = fadd fast float %1476, -1.000000e+00
  %1478 = fmul fast float %1475, %1477
  %1479 = fcmp fast ogt float %1467, 0.000000e+00
  %1480 = select i1 %1479, float %1478, float 0.000000e+00
  %1481 = fadd fast float %1480, %1467
  %1482 = fadd fast float %548, 0x3FF3C6EF40000000
  %1483 = call float @dx.op.unary.f32(i32 22, float %1482)  ; Frc(value)
  %1484 = call float @dx.op.unary.f32(i32 23, float %1468)  ; Log(value)
  %1485 = fadd fast float %1484, -7.000000e+00
  %1486 = call float @dx.op.unary.f32(i32 21, float %1485)  ; Exp(value)
  %1487 = fmul fast float %1483, 2.000000e+00
  %1488 = fadd fast float %1487, -1.000000e+00
  %1489 = fmul fast float %1486, %1488
  %1490 = fcmp fast ogt float %1468, 0.000000e+00
  %1491 = select i1 %1490, float %1489, float 0.000000e+00
  %1492 = fadd fast float %1491, %1468
  %1493 = fadd fast float %548, 0x3FFDAA66E0000000
  %1494 = call float @dx.op.unary.f32(i32 22, float %1493)  ; Frc(value)
  %1495 = call float @dx.op.unary.f32(i32 23, float %1469)  ; Log(value)
  %1496 = fadd fast float %1495, -6.000000e+00
  %1497 = call float @dx.op.unary.f32(i32 21, float %1496)  ; Exp(value)
  %1498 = fmul fast float %1494, 2.000000e+00
  %1499 = fadd fast float %1498, -1.000000e+00
  %1500 = fmul fast float %1497, %1499
  %1501 = fcmp fast ogt float %1469, 0.000000e+00
  %1502 = select i1 %1501, float %1500, float 0.000000e+00
  %1503 = fadd fast float %1502, %1469
  %1504 = select i1 %125, float %1468, float %1492
  %1505 = select i1 %125, float %1469, float %1503
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1506 = call float @dx.op.binary.f32(i32 36, float %1481, float 3.225500e+04)  ; FMin(a,b)
  %1507 = call float @dx.op.binary.f32(i32 36, float %1504, float 3.225500e+04)  ; FMin(a,b)
  %1508 = call float @dx.op.binary.f32(i32 36, float %1505, float 3.225500e+04)  ; FMin(a,b)
  %1509 = call float @dx.op.binary.f32(i32 36, float %1470, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1506)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1507)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1508)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1509)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1470)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1470)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1470)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1470)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!dx.viewIdState = !{!35}
!dx.entryPoints = !{!36}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !26, !29}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25}
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
!24 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 12, i32 1, i32 2, i32 0, !7}
!25 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!26 = !{!27, !28}
!27 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!28 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!29 = !{!30, !31, !32, !33, !34}
!30 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!31 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!32 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!33 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!34 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!35 = !{[41 x i32] [i32 39, i32 8, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255]}
!36 = !{void ()* @ps_main, !"ps_main", !37, !4, !64}
!37 = !{!38, !61, null}
!38 = !{!39, !42, !44, !46, !49, !51, !53, !55, !57, !58, !60}
!39 = !{i32 0, !"SV_Position", i8 9, i8 3, !40, i8 4, i32 1, i8 4, i32 0, i8 0, !41}
!40 = !{i32 0}
!41 = !{i32 3, i32 11}
!42 = !{i32 1, !"COLOR", i8 9, i8 0, !40, i8 2, i32 1, i8 4, i32 1, i8 0, !43}
!43 = !{i32 3, i32 15}
!44 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !40, i8 2, i32 1, i8 2, i32 2, i8 0, !45}
!45 = !{i32 3, i32 3}
!46 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !47, i8 2, i32 1, i8 3, i32 3, i8 0, !48}
!47 = !{i32 1}
!48 = !{i32 3, i32 7}
!49 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !50, i8 2, i32 1, i8 4, i32 4, i8 0, !48}
!50 = !{i32 3}
!51 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 5, i8 0, !43}
!52 = !{i32 4}
!53 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !54, i8 3, i32 1, i8 2, i32 6, i8 0, !45}
!54 = !{i32 5}
!55 = !{i32 7, !"TEXCOORD", i8 9, i8 0, !56, i8 2, i32 1, i8 4, i32 7, i8 0, null}
!56 = !{i32 8}
!57 = !{i32 8, !"QUAD_POSITION", i8 9, i8 0, !40, i8 1, i32 1, i8 4, i32 8, i8 0, !43}
!58 = !{i32 9, !"COLOR", i8 5, i8 0, !50, i8 1, i32 1, i8 3, i32 9, i8 0, !59}
!59 = !{i32 3, i32 5}
!60 = !{i32 10, !"SV_SampleIndex", i8 5, i8 12, !40, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!61 = !{!62, !63}
!62 = !{i32 0, !"SV_Target", i8 9, i8 16, !40, i8 0, i32 1, i8 4, i32 0, i8 0, !43}
!63 = !{i32 1, !"SV_Target", i8 9, i8 16, !47, i8 0, i32 1, i8 4, i32 1, i8 0, !43}
!64 = !{i32 0, i64 24}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !74}
!74 = !{!"llvm.loop.unroll.disable"}

