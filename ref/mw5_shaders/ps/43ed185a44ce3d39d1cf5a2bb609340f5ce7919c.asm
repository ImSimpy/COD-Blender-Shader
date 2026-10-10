;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xyzw        2     NONE   float   xyzw
; TEXCOORD                 1   xyz         3     NONE   float   xyz 
; TEXCOORD                 3   xyzw        4     NONE   float   xyz 
; TEXCOORD                 4   xyzw        5     NONE   float   xy  
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
; shader hash: 80ed58f083dfd89346d64830707c8783
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
;                                   texture     f32          2d      T3     t77,space2     1
;                                   texture     f32          2d      T4     t69,space2     1
;                                   texture     f32          2d      T5             t0     1
;                                   texture     f32          2d      T6     t57,space2     1
;                                   texture    byte         r/o      T7     t69,space1     1
;                                   texture     u32          2d      T8     t56,space2     1
;                                   texture     f32          2d      T9     t12,space2     1
;                                   texture     f32          3d     T10     t44,space2     1
;                                   texture     f32          3d     T11     t45,space2     1
;                                   texture     f32     2darray     T12     t47,space2     1
;                                   textureunorm_f32     2darray     T13     t85,space2     1
;                                   texture     f32          2d     T14     t83,space2     1
;                                   texture     f32          2d     T15     t86,space2     1
;                                   texture     f32     2darray     T16             t1     1
;                                   texture    byte         r/o     T17             t2     1
;
;
; ViewId state:
;
; Number of inputs: 39, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 18, 20, 21, 24, 25, 32, 33, 34, 35, 36, 38 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 18, 20, 21, 24, 25, 32, 33, 34, 35, 36, 38 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 18, 20, 21, 24, 25, 32, 33, 34, 35, 36, 38 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 18, 20, 21, 24, 25, 32, 33, 34, 35, 36, 38 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 18, 20, 21, 24, 25, 32, 33, 34, 35, 36, 38 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 18, 20, 21, 24, 25, 32, 33, 34, 35, 36, 38 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 18, 20, 21, 24, 25, 32, 33, 34, 35, 36, 38 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 18, 20, 21, 24, 25, 32, 33, 34, 35, 36, 38 }
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
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 77, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %55 = extractvalue %dx.types.CBufRet.f32 %54, 0
  %56 = fmul fast float %55, %48
  %57 = fmul fast float %55, %49
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 2
  %60 = extractvalue %dx.types.CBufRet.f32 %58, 3
  %61 = fmul fast float %56, 2.000000e+00
  %62 = fmul fast float %61, %59
  %63 = fmul fast float %57, 2.000000e+00
  %64 = fmul fast float %63, %60
  %65 = fsub fast float 1.000000e+00, %62
  %66 = fsub fast float 1.000000e+00, %64
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 0
  %69 = extractvalue %dx.types.CBufRet.f32 %67, 1
  %70 = extractvalue %dx.types.CBufRet.f32 %67, 2
  %71 = fmul fast float %65, %68
  %72 = fmul fast float %65, %69
  %73 = fmul fast float %65, %70
  %74 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %75 = extractvalue %dx.types.CBufRet.f32 %74, 0
  %76 = extractvalue %dx.types.CBufRet.f32 %74, 1
  %77 = extractvalue %dx.types.CBufRet.f32 %74, 2
  %78 = fmul fast float %66, %75
  %79 = fmul fast float %66, %76
  %80 = fmul fast float %66, %77
  %81 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %82 = extractvalue %dx.types.CBufRet.f32 %81, 0
  %83 = extractvalue %dx.types.CBufRet.f32 %81, 1
  %84 = extractvalue %dx.types.CBufRet.f32 %81, 2
  %85 = fadd fast float %78, %82
  %86 = fadd fast float %85, %71
  %87 = fadd fast float %79, %83
  %88 = fadd fast float %87, %72
  %89 = fadd fast float %80, %84
  %90 = fadd fast float %89, %73
  %91 = fmul fast float %86, %51
  %92 = fmul fast float %88, %51
  %93 = fmul fast float %90, %51
  %94 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %96 = extractvalue %dx.types.CBufRet.i32 %95, 3
  %97 = and i32 %96, 3
  %98 = icmp ne i32 %97, 0
  %99 = and i32 %96, 4
  %100 = icmp ne i32 %99, 0
  %101 = and i1 %98, %100
  br i1 %101, label %102, label %113

; <label>:102                                     ; preds = %0
  %103 = extractvalue %dx.types.CBufRet.f32 %94, 3
  %104 = fmul fast float %103, %57
  %105 = extractvalue %dx.types.CBufRet.f32 %94, 2
  %106 = fmul fast float %105, %56
  %107 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %106, float %104, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %108 = extractvalue %dx.types.ResRet.f32 %107, 0
  %109 = fsub fast float 1.000000e+00, %108
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 0
  %112 = fcmp fast olt float %109, %111
  br label %116

; <label>:113                                     ; preds = %0
  %114 = icmp eq i32 %99, 0
  %115 = and i1 %98, %114
  br label %116

; <label>:116                                     ; preds = %113, %102
  %117 = phi i1 [ %112, %102 ], [ %115, %113 ]
  %118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %119 = extractvalue %dx.types.CBufRet.f32 %118, 2
  %120 = extractvalue %dx.types.CBufRet.f32 %118, 3
  %121 = fmul fast float %119, %56
  %122 = fmul fast float %120, %57
  %123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %124 = extractvalue %dx.types.ResRet.i32 %123, 0
  %125 = and i32 %124, 114688
  %126 = icmp ne i32 %125, 0
  %127 = select i1 %126, float %121, float 0.000000e+00
  %128 = select i1 %126, float %122, float 0.000000e+00
  %129 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %20, float %127, float %128, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %130 = extractvalue %dx.types.ResRet.f32 %129, 0
  %131 = fmul fast float %130, 2.550000e+02
  %132 = fptoui float %131 to i32
  %133 = select i1 %126, i32 %132, i32 0
  %134 = mul i32 %24, 208
  %135 = add i32 %134, 188
  %136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %135, i32 undef)  ; BufferLoad(srv,index,wot)
  %137 = extractvalue %dx.types.ResRet.i32 %136, 0
  %138 = and i32 %96, 114688
  %139 = and i32 %96, 8
  %140 = icmp ne i32 %139, 0
  %141 = or i1 %117, %140
  %142 = select i1 %141, i32 %138, i32 16384
  %143 = and i32 %142, %137
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %146

; <label>:145                                     ; preds = %116
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %146

; <label>:146                                     ; preds = %145, %116
  %147 = and i32 %137, 512
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %173, label %149

; <label>:149                                     ; preds = %146
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 2
  %152 = extractvalue %dx.types.CBufRet.f32 %150, 3
  %153 = fmul fast float %151, %56
  %154 = fmul fast float %152, %57
  %155 = extractvalue %dx.types.CBufRet.f32 %150, 0
  %156 = extractvalue %dx.types.CBufRet.f32 %150, 1
  %157 = fdiv fast float %155, %156
  %158 = fcmp fast ogt float %157, 0x3FFC71C720000000
  br i1 %158, label %159, label %165

; <label>:159                                     ; preds = %149
  %160 = fdiv fast float 0x3FFC71C720000000, %157
  %161 = fmul fast float %160, %154
  %162 = fsub fast float 1.000000e+00, %160
  %163 = fmul fast float %162, 5.000000e-01
  %164 = fadd fast float %163, %161
  br label %173

; <label>:165                                     ; preds = %149
  %166 = fcmp fast olt float %157, 0x3FFC71C720000000
  br i1 %166, label %167, label %173

; <label>:167                                     ; preds = %165
  %168 = fmul fast float %153, 5.625000e-01
  %169 = fmul fast float %168, %157
  %170 = fmul fast float %157, 2.812500e-01
  %171 = fsub fast float 5.000000e-01, %170
  %172 = fadd fast float %171, %169
  br label %173

; <label>:173                                     ; preds = %167, %165, %159, %146
  %174 = phi float [ %40, %146 ], [ %153, %159 ], [ %172, %167 ], [ %153, %165 ]
  %175 = phi float [ %41, %146 ], [ %164, %159 ], [ %154, %167 ], [ %154, %165 ]
  %176 = and i32 %137, 16
  %177 = icmp ne i32 %176, 0
  %178 = select i1 %177, float 1.000000e+00, float %47
  %179 = icmp eq i32 %176, 0
  br i1 %179, label %199, label %180, !dx.controlflow.hints !65

; <label>:180                                     ; preds = %173
  %181 = add i32 %134, 64
  %182 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %181, i32 undef)  ; BufferLoad(srv,index,wot)
  %183 = extractvalue %dx.types.ResRet.f32 %182, 0
  %184 = fadd fast float %183, 1.000000e+00
  %185 = fmul fast float %184, %47
  %186 = fsub fast float %185, %183
  %187 = fsub fast float %184, %186
  %188 = call float @dx.op.unary.f32(i32 7, float %187)  ; Saturate(value)
  %189 = fsub fast float 1.000000e+00, %185
  %190 = call float @dx.op.unary.f32(i32 7, float %189)  ; Saturate(value)
  %191 = fsub fast float %188, %190
  %192 = fsub fast float %178, %190
  %193 = fdiv fast float %192, %191
  %194 = call float @dx.op.unary.f32(i32 7, float %193)  ; Saturate(value)
  %195 = fmul fast float %194, 2.000000e+00
  %196 = fsub fast float 3.000000e+00, %195
  %197 = fmul fast float %194, %194
  %198 = fmul fast float %197, %196
  br label %199

; <label>:199                                     ; preds = %180, %173
  %200 = phi float [ %198, %180 ], [ %178, %173 ]
  %201 = and i32 %137, 1024
  %202 = icmp eq i32 %201, 0
  %203 = add i32 %25, 96
  br i1 %202, label %236, label %204, !dx.controlflow.hints !66

; <label>:204                                     ; preds = %199
  %205 = add i32 %134, 48
  %206 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %205, i32 undef)  ; BufferLoad(srv,index,wot)
  %207 = extractvalue %dx.types.ResRet.f32 %206, 0
  %208 = extractvalue %dx.types.ResRet.f32 %206, 1
  %209 = fadd fast float %42, -5.000000e-01
  %210 = fmul fast float %209, 2.000000e+00
  %211 = fmul fast float %32, %210
  %212 = fmul fast float %33, %210
  %213 = fmul fast float %211, %208
  %214 = fmul fast float %212, %208
  %215 = call float @dx.op.dot2.f32(i32 54, float %32, float %33, float %32, float %33)  ; Dot2(ax,ay,bx,by)
  %216 = call float @dx.op.unary.f32(i32 25, float %215)  ; Rsqrt(value)
  %217 = fmul fast float %213, %216
  %218 = fmul fast float %214, %216
  %219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %220 = extractvalue %dx.types.CBufRet.f32 %219, 0
  %221 = extractvalue %dx.types.CBufRet.f32 %219, 1
  %222 = fsub fast float %91, %213
  %223 = fadd fast float %222, %220
  %224 = fadd fast float %223, %217
  %225 = fsub fast float %92, %214
  %226 = fadd fast float %225, %221
  %227 = fadd fast float %226, %218
  %228 = fmul fast float %224, %207
  %229 = fmul fast float %227, %207
  %230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %203, i32 undef)  ; BufferLoad(srv,index,wot)
  %231 = extractvalue %dx.types.ResRet.i32 %230, 0
  %232 = add i32 %231, 0
  %233 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %232, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %234 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %233, %dx.types.Handle %53, float %229, float %228, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %235 = extractvalue %dx.types.ResRet.f32 %234, 0
  br label %243

; <label>:236                                     ; preds = %199
  %237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %203, i32 undef)  ; BufferLoad(srv,index,wot)
  %238 = extractvalue %dx.types.ResRet.i32 %237, 0
  %239 = add i32 %238, 0
  %240 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %239, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %241 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %240, %dx.types.Handle %53, float %42, float %43, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %242 = extractvalue %dx.types.ResRet.f32 %241, 0
  br label %243

; <label>:243                                     ; preds = %236, %204
  %244 = phi float [ %235, %204 ], [ %242, %236 ]
  %245 = fmul fast float %244, %200
  %246 = fcmp fast ogt float %245, 0.000000e+00
  br i1 %246, label %248, label %247

; <label>:247                                     ; preds = %243
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %248

; <label>:248                                     ; preds = %247, %243
  %249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 155)  ; CBufferLoadLegacy(handle,regIndex)
  %250 = extractvalue %dx.types.CBufRet.f32 %249, 1
  %251 = fsub fast float %37, %250
  %252 = fsub fast float %38, %250
  %253 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %21, float %251, float %252, float undef, float undef, i32 0, i32 0, i32 undef, float %39)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %254 = extractvalue %dx.types.ResRet.f32 %253, 0
  %255 = fmul fast float %254, %245
  %256 = call float @dx.op.unary.f32(i32 7, float %255)  ; Saturate(value)
  %257 = fmul fast float %56, 5.000000e-01
  %258 = fmul fast float %57, 5.000000e-01
  %259 = fptosi float %257 to i32
  %260 = fptosi float %258 to i32
  %261 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %259, i32 %260, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %262 = extractvalue %dx.types.ResRet.i32 %261, 0
  %263 = lshr i32 %262, 18
  %264 = uitofp i32 %263 to float
  %265 = fmul fast float %264, 0x3F4C00EBA0000000
  %266 = call float @dx.op.unary.f32(i32 21, float %265)  ; Exp(value)
  %267 = fadd fast float %266, -1.000000e+00
  %268 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %269 = extractvalue %dx.types.Dimensions %268, 0
  %270 = sitofp i32 %269 to float
  %271 = extractvalue %dx.types.Dimensions %268, 1
  %272 = sitofp i32 %271 to float
  %273 = fcmp fast oge float %257, %270
  %274 = fcmp fast oge float %258, %272
  %275 = or i1 %273, %274
  %276 = select i1 %275, float 0x4197782600000000, float %267
  %277 = fsub fast float %276, %51
  %278 = fcmp fast ogt float %277, 0.000000e+00
  %279 = and i32 %133, -2
  %280 = icmp eq i32 %279, 2
  %281 = and i1 %280, %278
  %282 = xor i1 %278, true
  %283 = icmp eq i32 %133, 1
  %284 = and i1 %283, %282
  %285 = or i1 %281, %284
  %286 = and i32 %137, 262144
  %287 = icmp ne i32 %286, 0
  %288 = and i1 %287, %285
  %289 = xor i1 %285, true
  %290 = and i32 %137, 131072
  %291 = icmp ne i32 %290, 0
  %292 = and i1 %291, %289
  %293 = or i1 %288, %292
  br i1 %293, label %294, label %295

; <label>:294                                     ; preds = %248
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %295

; <label>:295                                     ; preds = %294, %248
  %296 = and i32 %137, 32
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %547, label %298, !dx.controlflow.hints !67

; <label>:298                                     ; preds = %295
  %299 = add i32 %134, 80
  %300 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.f32 %300, 0
  %302 = extractvalue %dx.types.ResRet.f32 %300, 1
  %303 = extractvalue %dx.types.ResRet.f32 %300, 2
  %304 = extractvalue %dx.types.ResRet.f32 %300, 3
  %305 = add i32 %134, 96
  %306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %305, i32 undef)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.f32 %306, 0
  %308 = extractvalue %dx.types.ResRet.f32 %306, 1
  %309 = extractvalue %dx.types.ResRet.f32 %306, 2
  %310 = add i32 %134, 112
  %311 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.f32 %311, 0
  %313 = extractvalue %dx.types.ResRet.f32 %311, 1
  %314 = extractvalue %dx.types.ResRet.f32 %311, 2
  %315 = extractvalue %dx.types.ResRet.f32 %311, 3
  %316 = add i32 %134, 128
  %317 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.f32 %317, 0
  %319 = extractvalue %dx.types.ResRet.f32 %317, 1
  %320 = extractvalue %dx.types.ResRet.f32 %317, 2
  %321 = extractvalue %dx.types.ResRet.f32 %317, 3
  %322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %135, i32 undef)  ; BufferLoad(srv,index,wot)
  %323 = extractvalue %dx.types.ResRet.i32 %322, 0
  %324 = and i32 %323, 4096
  %325 = icmp ne i32 %324, 0
  %326 = fcmp fast une float %309, 0.000000e+00
  %327 = and i32 %323, 64
  %328 = icmp ne i32 %327, 0
  %329 = and i32 %323, 128
  %330 = icmp eq i32 %329, 0
  %331 = and i32 %323, 2048
  %332 = icmp eq i32 %331, 0
  %333 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %13, i32 0)  ; GetDimensions(handle,mipLevel)
  %334 = extractvalue %dx.types.Dimensions %333, 0
  %335 = sitofp i32 %334 to float
  %336 = extractvalue %dx.types.Dimensions %333, 1
  %337 = sitofp i32 %336 to float
  %338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %339 = extractvalue %dx.types.CBufRet.f32 %338, 2
  %340 = extractvalue %dx.types.CBufRet.f32 %338, 3
  %341 = fmul fast float %339, %56
  %342 = fmul fast float %340, %57
  %343 = fmul fast float %341, %335
  %344 = fmul fast float %342, %337
  %345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %346 = extractvalue %dx.types.CBufRet.f32 %345, 1
  %347 = fsub fast float -0.000000e+00, %346
  %348 = fptoui float %347 to i32
  %349 = fptoui float %343 to i32
  %350 = fptoui float %344 to i32
  %351 = and i32 %348, 31
  %352 = lshr i32 %349, %351
  %353 = lshr i32 %350, %351
  %354 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 %348, i32 %352, i32 %353, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %355 = extractvalue %dx.types.ResRet.f32 %354, 0
  %356 = fcmp fast ogt float %355, -1.000000e+00
  %357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %358 = extractvalue %dx.types.CBufRet.f32 %357, 1
  %359 = select i1 %356, float %358, float 1.000000e+00
  %360 = fadd fast float %355, 1.000000e+00
  %361 = fmul fast float %359, %360
  %362 = call float @dx.op.unary.f32(i32 6, float %361)  ; FAbs(value)
  %363 = extractvalue %dx.types.CBufRet.f32 %357, 3
  %364 = fcmp fast oge float %362, %363
  %365 = select i1 %364, float 0x4197782600000000, float %362
  br i1 %332, label %443, label %366, !dx.controlflow.hints !68

; <label>:366                                     ; preds = %298
  %367 = fmul fast float %61, %339
  %368 = fmul fast float %63, %340
  %369 = fsub fast float 1.000000e+00, %367
  %370 = fsub fast float 1.000000e+00, %368
  %371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %372 = extractvalue %dx.types.CBufRet.f32 %371, 0
  %373 = extractvalue %dx.types.CBufRet.f32 %371, 1
  %374 = extractvalue %dx.types.CBufRet.f32 %371, 2
  %375 = fmul fast float %369, %372
  %376 = fmul fast float %369, %373
  %377 = fmul fast float %369, %374
  %378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %379 = extractvalue %dx.types.CBufRet.f32 %378, 0
  %380 = extractvalue %dx.types.CBufRet.f32 %378, 1
  %381 = extractvalue %dx.types.CBufRet.f32 %378, 2
  %382 = fmul fast float %370, %379
  %383 = fmul fast float %370, %380
  %384 = fmul fast float %370, %381
  %385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %386 = extractvalue %dx.types.CBufRet.f32 %385, 0
  %387 = extractvalue %dx.types.CBufRet.f32 %385, 1
  %388 = extractvalue %dx.types.CBufRet.f32 %385, 2
  %389 = fadd fast float %382, %386
  %390 = fadd fast float %389, %375
  %391 = fadd fast float %383, %387
  %392 = fadd fast float %391, %376
  %393 = fadd fast float %384, %388
  %394 = fadd fast float %393, %377
  %395 = fmul fast float %390, %365
  %396 = fmul fast float %392, %365
  %397 = fmul fast float %394, %365
  %398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %399 = extractvalue %dx.types.CBufRet.f32 %398, 0
  %400 = extractvalue %dx.types.CBufRet.f32 %398, 1
  %401 = extractvalue %dx.types.CBufRet.f32 %398, 2
  %402 = fsub fast float %399, %26
  %403 = fadd fast float %402, %395
  %404 = fsub fast float %400, %27
  %405 = fadd fast float %404, %396
  %406 = fsub fast float %401, %28
  %407 = fadd fast float %406, %397
  %408 = fmul fast float %29, %29
  %409 = call float @dx.op.dot3.f32(i32 55, float %403, float %405, float %407, float %403, float %405, float %407)  ; Dot3(ax,ay,az,bx,by,bz)
  %410 = fsub fast float %408, %409
  %411 = fmul fast float %308, %408
  %412 = fmul fast float %307, %408
  %413 = fcmp fast olt float %410, %411
  %414 = fcmp fast ogt float %410, %412
  %415 = or i1 %413, %414
  %416 = select i1 %415, float 0.000000e+00, float %410
  %417 = fsub fast float %307, %308
  %418 = fmul fast float %417, %408
  %419 = fsub fast float %416, %411
  %420 = fdiv fast float %419, %418
  %421 = call float @dx.op.unary.f32(i32 7, float %420)  ; Saturate(value)
  %422 = fmul fast float %421, 2.000000e+00
  %423 = fsub fast float 3.000000e+00, %422
  %424 = fmul fast float %421, %421
  %425 = fmul fast float %424, %423
  %426 = fmul fast float %312, %44
  %427 = fmul fast float %313, %45
  %428 = fmul fast float %314, %46
  %429 = fsub fast float %426, %318
  %430 = fsub fast float %427, %319
  %431 = fsub fast float %428, %320
  %432 = fsub fast float %315, %321
  %433 = fmul fast float %425, %429
  %434 = fmul fast float %425, %430
  %435 = fmul fast float %425, %431
  %436 = fmul fast float %425, %432
  %437 = fadd fast float %433, %318
  %438 = fadd fast float %434, %319
  %439 = fadd fast float %435, %320
  %440 = fadd fast float %436, %321
  %441 = fmul fast float %301, %301
  %442 = fmul fast float %441, %416
  br label %538

; <label>:443                                     ; preds = %298
  %444 = and i32 %323, 256
  %445 = icmp eq i32 %444, 0
  %446 = fsub fast float %365, %51
  br i1 %445, label %495, label %447

; <label>:447                                     ; preds = %443
  %448 = fadd fast float %307, %51
  %449 = fcmp fast olt float %365, %51
  %450 = fcmp fast ogt float %365, %448
  %451 = or i1 %449, %450
  %452 = select i1 %451, float 0.000000e+00, float %446
  %453 = call float @dx.op.unary.f32(i32 83, float %365)  ; DerivCoarseX(value)
  %454 = call float @dx.op.unary.f32(i32 84, float %365)  ; DerivCoarseY(value)
  %455 = fmul fast float %453, %453
  %456 = fmul fast float %454, %454
  %457 = fadd fast float %456, %455
  %458 = call float @dx.op.unary.f32(i32 24, float %457)  ; Sqrt(value)
  %459 = extractvalue %dx.types.CBufRet.f32 %345, 2
  %460 = fmul fast float %459, %458
  %461 = call float @dx.op.unary.f32(i32 7, float %460)  ; Saturate(value)
  %462 = fmul fast float %461, %308
  %463 = fdiv fast float %446, %462
  %464 = call float @dx.op.unary.f32(i32 7, float %463)  ; Saturate(value)
  %465 = fmul fast float %464, 2.000000e+00
  %466 = fsub fast float 3.000000e+00, %465
  %467 = fmul fast float %464, %464
  %468 = fmul fast float %467, %466
  %469 = fsub fast float %365, %448
  %470 = fadd fast float %469, %462
  %471 = fdiv fast float %470, %462
  %472 = call float @dx.op.unary.f32(i32 7, float %471)  ; Saturate(value)
  %473 = fmul fast float %472, 2.000000e+00
  %474 = fsub fast float 3.000000e+00, %473
  %475 = fmul fast float %472, %472
  %476 = fmul fast float %475, %474
  %477 = fsub fast float %468, %476
  %478 = fmul fast float %312, %44
  %479 = fmul fast float %313, %45
  %480 = fmul fast float %314, %46
  %481 = fsub fast float %478, %318
  %482 = fsub fast float %479, %319
  %483 = fsub fast float %480, %320
  %484 = fsub fast float %315, %321
  %485 = fmul fast float %477, %481
  %486 = fmul fast float %477, %482
  %487 = fmul fast float %477, %483
  %488 = fmul fast float %477, %484
  %489 = fadd fast float %485, %318
  %490 = fadd fast float %486, %319
  %491 = fadd fast float %487, %320
  %492 = fadd fast float %488, %321
  %493 = fmul fast float %452, %301
  %494 = call float @dx.op.unary.f32(i32 6, float %493)  ; FAbs(value)
  br label %538

; <label>:495                                     ; preds = %443
  br i1 %326, label %496, label %509

; <label>:496                                     ; preds = %495
  %497 = fdiv fast float 5.000000e+01, %29
  %498 = select i1 %328, float %497, float 1.000000e+00
  %499 = fmul fast float %498, %301
  %500 = fmul fast float %40, 2.000000e+00
  %501 = fmul fast float %41, 2.000000e+00
  %502 = fadd fast float %500, -1.000000e+00
  %503 = fadd fast float %501, -1.000000e+00
  %504 = call float @dx.op.dot2.f32(i32 54, float %502, float %503, float %502, float %503)  ; Dot2(ax,ay,bx,by)
  %505 = fmul fast float %309, %29
  %506 = fmul fast float %505, %504
  %507 = fsub fast float %446, %506
  %508 = fmul fast float %499, %507
  br label %538

; <label>:509                                     ; preds = %495
  br i1 %330, label %530, label %510

; <label>:510                                     ; preds = %509
  %511 = fmul fast float %29, 0x3F947AE140000000
  %512 = select i1 %328, float %511, float 1.000000e+00
  %513 = fdiv fast float 1.000000e+00, %512
  %514 = fmul fast float %512, %302
  %515 = fmul fast float %512, %303
  %516 = fmul fast float %513, %304
  %517 = call float @dx.op.unary.f32(i32 6, float %446)  ; FAbs(value)
  %518 = fcmp fast olt float %517, %514
  br i1 %518, label %519, label %523, !dx.controlflow.hints !69

; <label>:519                                     ; preds = %510
  %520 = fmul fast float %513, %301
  %521 = fmul fast float %520, %517
  %522 = call float @dx.op.unary.f32(i32 6, float %521)  ; FAbs(value)
  br label %538

; <label>:523                                     ; preds = %510
  %524 = fcmp fast ogt float %517, %515
  br i1 %524, label %525, label %538

; <label>:525                                     ; preds = %523
  %526 = fsub fast float %517, %515
  %527 = fmul fast float %516, %526
  %528 = call float @dx.op.unary.f32(i32 6, float %527)  ; FAbs(value)
  %529 = fsub fast float 1.000000e+00, %528
  br label %538

; <label>:530                                     ; preds = %509
  %531 = fdiv fast float 5.000000e+01, %29
  %532 = select i1 %328, float %531, float 1.000000e+00
  %533 = fmul fast float %532, %301
  %534 = call float @dx.op.unary.f32(i32 6, float %277)  ; FAbs(value)
  %535 = select i1 %325, float %534, float 0x47EFFFFFE0000000
  %536 = call float @dx.op.binary.f32(i32 36, float %446, float %535)  ; FMin(a,b)
  %537 = fmul fast float %533, %536
  br label %538

; <label>:538                                     ; preds = %530, %525, %523, %519, %496, %447, %366
  %539 = phi float [ %442, %366 ], [ %494, %447 ], [ %508, %496 ], [ %537, %530 ], [ %522, %519 ], [ %529, %525 ], [ %517, %523 ]
  %540 = phi float [ %437, %366 ], [ %489, %447 ], [ %44, %496 ], [ %44, %530 ], [ %44, %519 ], [ %44, %525 ], [ %44, %523 ]
  %541 = phi float [ %438, %366 ], [ %490, %447 ], [ %45, %496 ], [ %45, %530 ], [ %45, %519 ], [ %45, %525 ], [ %45, %523 ]
  %542 = phi float [ %439, %366 ], [ %491, %447 ], [ %46, %496 ], [ %46, %530 ], [ %46, %519 ], [ %46, %525 ], [ %46, %523 ]
  %543 = phi float [ %440, %366 ], [ %492, %447 ], [ 1.000000e+00, %496 ], [ 1.000000e+00, %530 ], [ 1.000000e+00, %519 ], [ 1.000000e+00, %525 ], [ 1.000000e+00, %523 ]
  %544 = call float @dx.op.unary.f32(i32 7, float %539)  ; Saturate(value)
  %545 = fmul fast float %543, %256
  %546 = fmul fast float %545, %544
  br label %547

; <label>:547                                     ; preds = %538, %295
  %548 = phi float [ %540, %538 ], [ %44, %295 ]
  %549 = phi float [ %541, %538 ], [ %45, %295 ]
  %550 = phi float [ %542, %538 ], [ %46, %295 ]
  %551 = phi float [ %546, %538 ], [ %256, %295 ]
  %552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %553 = extractvalue %dx.types.CBufRet.f32 %552, 2
  %554 = fptosi float %51 to i32
  %555 = sitofp i32 %554 to float
  %556 = fadd fast float %553, %555
  %557 = fmul fast float %556, 0x3FE3C6EF40000000
  %558 = frem fast float %56, 2.560000e+02
  %559 = frem fast float %57, 2.560000e+02
  %560 = fptoui float %558 to i32
  %561 = fptoui float %559 to i32
  %562 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %560, i32 %561, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %563 = extractvalue %dx.types.ResRet.f32 %562, 0
  %564 = fadd fast float %563, %557
  %565 = call float @dx.op.unary.f32(i32 22, float %564)  ; Frc(value)
  %566 = and i32 %137, 1
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %624, label %568, !dx.controlflow.hints !70

; <label>:568                                     ; preds = %547
  %569 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %134, i32 undef)  ; BufferLoad(srv,index,wot)
  %570 = extractvalue %dx.types.ResRet.f32 %569, 2
  %571 = extractvalue %dx.types.ResRet.f32 %569, 3
  %572 = add i32 %134, 16
  %573 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %572, i32 undef)  ; BufferLoad(srv,index,wot)
  %574 = extractvalue %dx.types.ResRet.f32 %573, 0
  %575 = extractvalue %dx.types.ResRet.f32 %573, 1
  %576 = extractvalue %dx.types.ResRet.f32 %573, 2
  %577 = add i32 %134, 32
  %578 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.f32 %578, 0
  %580 = extractvalue %dx.types.ResRet.f32 %578, 1
  %581 = extractvalue %dx.types.ResRet.f32 %578, 2
  %582 = and i32 %137, 2
  %583 = icmp eq i32 %582, 0
  %584 = call float @dx.op.dot3.f32(i32 55, float %34, float %35, float %36, float %34, float %35, float %36)  ; Dot3(ax,ay,az,bx,by,bz)
  %585 = call float @dx.op.unary.f32(i32 25, float %584)  ; Rsqrt(value)
  %586 = fmul fast float %585, %34
  %587 = fmul fast float %585, %35
  %588 = fmul fast float %585, %36
  %589 = call float @dx.op.dot3.f32(i32 55, float %91, float %92, float %93, float %91, float %92, float %93)  ; Dot3(ax,ay,az,bx,by,bz)
  %590 = call float @dx.op.unary.f32(i32 25, float %589)  ; Rsqrt(value)
  %591 = fmul fast float %590, %91
  %592 = fmul fast float %590, %92
  %593 = fmul fast float %590, %93
  %594 = call float @dx.op.dot3.f32(i32 55, float %591, float %592, float %593, float %586, float %587, float %588)  ; Dot3(ax,ay,az,bx,by,bz)
  %595 = fmul fast float %594, %594
  %596 = fmul fast float %595, %570
  %597 = fadd fast float %596, %571
  %598 = call float @dx.op.unary.f32(i32 7, float %597)  ; Saturate(value)
  br i1 %583, label %599, label %609, !dx.controlflow.hints !71

; <label>:599                                     ; preds = %568
  %600 = extractvalue %dx.types.ResRet.f32 %569, 1
  %601 = extractvalue %dx.types.ResRet.f32 %569, 0
  %602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %603 = extractvalue %dx.types.CBufRet.f32 %602, 3
  %604 = fmul fast float %603, %589
  %605 = fsub fast float %601, %604
  %606 = fmul fast float %605, %600
  %607 = call float @dx.op.unary.f32(i32 7, float %606)  ; Saturate(value)
  %608 = fmul fast float %607, %598
  br label %609

; <label>:609                                     ; preds = %599, %568
  %610 = phi float [ %608, %599 ], [ %598, %568 ]
  %611 = fsub fast float %574, %579
  %612 = fsub fast float %575, %580
  %613 = fsub fast float %576, %581
  %614 = fmul fast float %610, %611
  %615 = fmul fast float %610, %612
  %616 = fmul fast float %610, %613
  %617 = fadd fast float %614, %579
  %618 = fadd fast float %615, %580
  %619 = fadd fast float %616, %581
  %620 = fmul fast float %617, %548
  %621 = fmul fast float %618, %549
  %622 = fmul fast float %619, %550
  %623 = fmul fast float %610, %551
  br label %624

; <label>:624                                     ; preds = %609, %547
  %625 = phi float [ %620, %609 ], [ %548, %547 ]
  %626 = phi float [ %621, %609 ], [ %549, %547 ]
  %627 = phi float [ %622, %609 ], [ %550, %547 ]
  %628 = phi float [ %623, %609 ], [ %551, %547 ]
  %629 = add i32 %25, 88
  %630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %629, i32 undef)  ; BufferLoad(srv,index,wot)
  %631 = extractvalue %dx.types.ResRet.i32 %630, 0
  %632 = add i32 %631, 0
  %633 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %632, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %634 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %633, %dx.types.Handle %52, float %174, float %175, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %635 = extractvalue %dx.types.ResRet.f32 %634, 0
  %636 = extractvalue %dx.types.ResRet.f32 %634, 1
  %637 = extractvalue %dx.types.ResRet.f32 %634, 2
  %638 = add i32 %25, 56
  %639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %638, i32 undef)  ; BufferLoad(srv,index,wot)
  %640 = extractvalue %dx.types.ResRet.i32 %639, 0
  %641 = and i32 %640, 255
  %642 = uitofp i32 %641 to float
  %643 = fmul fast float %642, 0x3F70101020000000
  %644 = lshr i32 %640, 8
  %645 = and i32 %644, 255
  %646 = uitofp i32 %645 to float
  %647 = fmul fast float %646, 0x3F70101020000000
  %648 = lshr i32 %640, 16
  %649 = and i32 %648, 255
  %650 = uitofp i32 %649 to float
  %651 = fmul fast float %650, 0x3F70101020000000
  %652 = add i32 %25, 40
  %653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %652, i32 undef)  ; BufferLoad(srv,index,wot)
  %654 = extractvalue %dx.types.ResRet.i32 %653, 0
  %655 = and i32 %654, 255
  %656 = uitofp i32 %655 to float
  %657 = fmul fast float %656, 0x3F70101020000000
  %658 = fmul fast float %657, %657
  %659 = add i32 %25, 92
  %660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %659, i32 undef)  ; BufferLoad(srv,index,wot)
  %661 = extractvalue %dx.types.ResRet.i32 %660, 0
  %662 = add i32 %661, 0
  %663 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %662, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %664 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %663, %dx.types.Handle %53, float %174, float %175, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %665 = extractvalue %dx.types.ResRet.f32 %664, 0
  %666 = fmul fast float %658, %665
  %667 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %30, float %31, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %668 = extractvalue %dx.types.ResRet.f32 %667, 0
  %669 = extractvalue %dx.types.ResRet.f32 %667, 1
  %670 = extractvalue %dx.types.ResRet.f32 %667, 2
  %671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %672 = extractvalue %dx.types.CBufRet.f32 %671, 1
  %673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %674 = extractvalue %dx.types.CBufRet.f32 %673, 0
  %675 = fmul fast float %635, %625
  %676 = fmul fast float %643, %643
  %677 = fmul fast float %676, %675
  %678 = fmul fast float %677, %674
  %679 = fmul fast float %636, %626
  %680 = fmul fast float %647, %647
  %681 = fmul fast float %680, %679
  %682 = fmul fast float %681, %674
  %683 = fmul fast float %637, %627
  %684 = fmul fast float %651, %651
  %685 = fmul fast float %684, %683
  %686 = fmul fast float %685, %674
  %687 = call float @dx.op.dot3.f32(i32 55, float %678, float %682, float %686, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %688 = add i32 %25, 32
  %689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %688, i32 undef)  ; BufferLoad(srv,index,wot)
  %690 = extractvalue %dx.types.ResRet.i32 %689, 0
  %691 = and i32 %690, 255
  %692 = uitofp i32 %691 to float
  %693 = lshr i32 %690, 8
  %694 = and i32 %693, 255
  %695 = uitofp i32 %694 to float
  %696 = fmul fast float %695, %687
  %697 = fadd fast float %696, %692
  %698 = fmul fast float %697, 0x3F70101020000000
  %699 = call float @dx.op.unary.f32(i32 7, float %698)  ; Saturate(value)
  %700 = and i32 %137, 8192
  %701 = icmp eq i32 %700, 0
  %702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %703 = extractvalue %dx.types.CBufRet.f32 %702, 0
  br i1 %701, label %710, label %704, !dx.controlflow.hints !72

; <label>:704                                     ; preds = %624
  %705 = add i32 %134, 176
  %706 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %705, i32 undef)  ; BufferLoad(srv,index,wot)
  %707 = extractvalue %dx.types.ResRet.f32 %706, 0
  %708 = fcmp fast oge float %707, 0.000000e+00
  %709 = select i1 %708, float %707, float %703
  br label %710

; <label>:710                                     ; preds = %704, %624
  %711 = phi float [ %709, %704 ], [ %703, %624 ]
  %712 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %259, i32 %260, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %713 = extractvalue %dx.types.ResRet.i32 %712, 0
  %714 = lshr i32 %713, 18
  %715 = uitofp i32 %714 to float
  %716 = fmul fast float %715, 0x3F4C00EBA0000000
  %717 = call float @dx.op.unary.f32(i32 21, float %716)  ; Exp(value)
  %718 = fadd fast float %717, -1.000000e+00
  %719 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %720 = extractvalue %dx.types.Dimensions %719, 0
  %721 = sitofp i32 %720 to float
  %722 = extractvalue %dx.types.Dimensions %719, 1
  %723 = sitofp i32 %722 to float
  %724 = fcmp fast oge float %257, %721
  %725 = fcmp fast oge float %258, %723
  %726 = or i1 %724, %725
  %727 = select i1 %726, float 0x4197782600000000, float %718
  %728 = fadd fast float %666, -1.000000e+00
  %729 = fmul fast float %728, %628
  %730 = fadd fast float %729, 1.000000e+00
  %731 = call float @dx.op.dot3.f32(i32 55, float %730, float %730, float %730, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %732 = fsub fast float 1.000000e+00, %731
  %733 = fmul fast float %711, %699
  %734 = fsub fast float 1.000000e+00, %699
  %735 = call float @dx.op.unary.f32(i32 7, float %734)  ; Saturate(value)
  %736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %737 = extractvalue %dx.types.CBufRet.f32 %736, 3
  %738 = fmul fast float %737, %735
  %739 = fadd fast float %738, %733
  %740 = and i32 %137, 2097152
  %741 = icmp eq i32 %740, 0
  br i1 %741, label %746, label %742, !dx.controlflow.hints !73

; <label>:742                                     ; preds = %710
  %743 = add i32 %134, 192
  %744 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %743, i32 undef)  ; BufferLoad(srv,index,wot)
  %745 = extractvalue %dx.types.ResRet.f32 %744, 0
  br label %749

; <label>:746                                     ; preds = %710
  %747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %748 = extractvalue %dx.types.CBufRet.f32 %747, 3
  br label %749

; <label>:749                                     ; preds = %746, %742
  %750 = phi float [ %745, %742 ], [ %748, %746 ]
  %751 = fmul fast float %668, %628
  %752 = fmul fast float %751, %672
  %753 = fmul fast float %752, %678
  %754 = fmul fast float %669, %628
  %755 = fmul fast float %754, %672
  %756 = fmul fast float %755, %682
  %757 = fmul fast float %670, %628
  %758 = fmul fast float %757, %672
  %759 = fmul fast float %758, %686
  %760 = icmp eq i32 %133, 3
  %761 = fcmp fast ogt float %51, %727
  %762 = and i1 %283, %761
  %763 = or i1 %760, %762
  %764 = icmp eq i32 %133, 2
  %765 = fcmp fast ole float %51, %727
  %766 = and i1 %764, %765
  %767 = or i1 %766, %763
  br i1 %762, label %768, label %874

; <label>:768                                     ; preds = %749
  %769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %770 = extractvalue %dx.types.CBufRet.f32 %769, 2
  %771 = extractvalue %dx.types.CBufRet.f32 %769, 3
  %772 = fmul fast float %770, %56
  %773 = fmul fast float %771, %57
  %774 = call float @dx.op.unary.f32(i32 7, float %772)  ; Saturate(value)
  %775 = call float @dx.op.unary.f32(i32 7, float %773)  ; Saturate(value)
  %776 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %19, float %774, float %775, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %777 = extractvalue %dx.types.ResRet.f32 %776, 0
  %778 = extractvalue %dx.types.ResRet.f32 %776, 1
  %779 = extractvalue %dx.types.ResRet.f32 %776, 2
  %780 = extractvalue %dx.types.ResRet.f32 %776, 3
  %781 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %19, float %774, float %775, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %782 = extractvalue %dx.types.ResRet.f32 %781, 0
  %783 = extractvalue %dx.types.ResRet.f32 %781, 1
  %784 = extractvalue %dx.types.ResRet.f32 %781, 2
  %785 = extractvalue %dx.types.ResRet.f32 %781, 3
  %786 = call float @dx.op.binary.f32(i32 35, float %778, float %779)  ; FMax(a,b)
  %787 = call float @dx.op.binary.f32(i32 35, float %777, float %786)  ; FMax(a,b)
  %788 = call float @dx.op.binary.f32(i32 35, float %787, float %780)  ; FMax(a,b)
  %789 = call float @dx.op.binary.f32(i32 36, float %783, float %784)  ; FMin(a,b)
  %790 = call float @dx.op.binary.f32(i32 36, float %782, float %789)  ; FMin(a,b)
  %791 = call float @dx.op.binary.f32(i32 36, float %790, float %785)  ; FMin(a,b)
  %792 = fmul fast float %788, 2.550000e+02
  %793 = fadd fast float %792, 0x3F70101020000000
  %794 = fptoui float %793 to i32
  %795 = fmul fast float %791, 2.550000e+02
  %796 = fadd fast float %795, 0x3F70101020000000
  %797 = fptoui float %796 to i32
  %798 = icmp ult i32 %794, %797
  br i1 %798, label %799, label %850

; <label>:799                                     ; preds = %768
  %800 = fcmp fast ogt float %50, 9.843750e-01
  %801 = fadd fast float %51, -4.000000e+00
  %802 = select i1 %800, float -4.000000e+00, float %801
  %803 = call float @dx.op.binary.f32(i32 35, float %802, float 0.000000e+00)  ; FMax(a,b)
  %804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %805 = extractvalue %dx.types.CBufRet.f32 %804, 0
  %806 = fadd fast float %805, %803
  %807 = extractvalue %dx.types.CBufRet.f32 %804, 2
  %808 = fmul fast float %806, %807
  %809 = call float @dx.op.unary.f32(i32 23, float %808)  ; Log(value)
  %810 = extractvalue %dx.types.CBufRet.f32 %804, 3
  %811 = fmul fast float %810, %809
  %812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %813 = extractvalue %dx.types.CBufRet.f32 %812, 2
  %814 = fmul fast float %811, %813
  %815 = call float @dx.op.unary.f32(i32 7, float %814)  ; Saturate(value)
  %816 = uitofp i32 %794 to float
  %817 = uitofp i32 %797 to float
  %818 = fadd fast float %816, 5.000000e-01
  %819 = fadd fast float %817, 5.000000e-01
  %820 = fmul fast float %813, %818
  %821 = fmul fast float %813, %819
  %822 = fadd fast float %820, 0x3F0FFB4800000000
  %823 = fadd fast float %821, 0xBF0FFB4800000000
  %824 = call float @dx.op.binary.f32(i32 35, float %815, float %822)  ; FMax(a,b)
  %825 = call float @dx.op.binary.f32(i32 36, float %824, float %823)  ; FMin(a,b)
  %826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %827 = extractvalue %dx.types.CBufRet.f32 %826, 1
  %828 = extractvalue %dx.types.CBufRet.f32 %826, 2
  %829 = extractvalue %dx.types.CBufRet.f32 %826, 0
  %830 = fmul fast float %827, %825
  %831 = fadd fast float %829, %830
  %832 = fadd fast float %829, %828
  %833 = fsub fast float %827, %828
  %834 = fadd fast float %833, %829
  %835 = call float @dx.op.binary.f32(i32 35, float %831, float %832)  ; FMax(a,b)
  %836 = call float @dx.op.binary.f32(i32 36, float %835, float %834)  ; FMin(a,b)
  %837 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %18, float %774, float %775, float %836, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %838 = extractvalue %dx.types.ResRet.f32 %837, 0
  %839 = extractvalue %dx.types.ResRet.f32 %837, 1
  %840 = extractvalue %dx.types.ResRet.f32 %837, 2
  %841 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %774, float %775, float %836, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %842 = extractvalue %dx.types.ResRet.f32 %841, 0
  %843 = extractvalue %dx.types.ResRet.f32 %841, 1
  %844 = extractvalue %dx.types.ResRet.f32 %841, 2
  %845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %846 = extractvalue %dx.types.CBufRet.f32 %845, 1
  %847 = fmul fast float %846, %842
  %848 = fmul fast float %846, %843
  %849 = fmul fast float %846, %844
  br label %850

; <label>:850                                     ; preds = %799, %768
  %851 = phi float [ %838, %799 ], [ 1.000000e+00, %768 ]
  %852 = phi float [ %839, %799 ], [ 1.000000e+00, %768 ]
  %853 = phi float [ %840, %799 ], [ 1.000000e+00, %768 ]
  %854 = phi float [ %847, %799 ], [ 0.000000e+00, %768 ]
  %855 = phi float [ %848, %799 ], [ 0.000000e+00, %768 ]
  %856 = phi float [ %849, %799 ], [ 0.000000e+00, %768 ]
  %857 = fmul fast float %854, %732
  %858 = fmul fast float %855, %732
  %859 = fmul fast float %856, %732
  %860 = call float @dx.op.dot3.f32(i32 55, float %851, float %852, float %853, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %861 = call float @dx.op.dot3.f32(i32 55, float %857, float %858, float %859, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %862 = select i1 %117, float %860, float %851
  %863 = select i1 %117, float %860, float %852
  %864 = select i1 %117, float 1.000000e+00, float %853
  %865 = select i1 %117, float %861, float %857
  %866 = select i1 %117, float 0.000000e+00, float %858
  %867 = select i1 %117, float 0.000000e+00, float %859
  %868 = fmul fast float %862, %753
  %869 = fmul fast float %863, %756
  %870 = fmul fast float %864, %759
  %871 = fadd fast float %868, %865
  %872 = fadd fast float %869, %866
  %873 = fadd fast float %867, %870
  br label %874

; <label>:874                                     ; preds = %850, %749
  %875 = phi float [ %727, %850 ], [ %51, %749 ]
  %876 = phi float [ %871, %850 ], [ %753, %749 ]
  %877 = phi float [ %872, %850 ], [ %756, %749 ]
  %878 = phi float [ %873, %850 ], [ %759, %749 ]
  %879 = phi float [ %851, %850 ], [ 1.000000e+00, %749 ]
  br i1 %767, label %1175, label %880

; <label>:880                                     ; preds = %874
  %881 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %19, float %30, float %31, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %882 = extractvalue %dx.types.ResRet.f32 %881, 0
  %883 = extractvalue %dx.types.ResRet.f32 %881, 1
  %884 = extractvalue %dx.types.ResRet.f32 %881, 2
  %885 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %19, float %30, float %31, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %886 = extractvalue %dx.types.ResRet.f32 %885, 0
  %887 = extractvalue %dx.types.ResRet.f32 %885, 1
  %888 = extractvalue %dx.types.ResRet.f32 %885, 2
  %889 = fmul fast float %882, %732
  %890 = fmul fast float %883, %732
  %891 = fmul fast float %884, %732
  %892 = fmul fast float %886, %879
  %893 = call float @dx.op.dot3.f32(i32 55, float %886, float %887, float %888, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %894 = call float @dx.op.dot3.f32(i32 55, float %889, float %890, float %891, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %895 = select i1 %117, float %893, float %886
  %896 = select i1 %117, float %893, float %887
  %897 = select i1 %117, float 1.000000e+00, float %888
  %898 = select i1 %117, float %894, float %889
  %899 = select i1 %117, float 0.000000e+00, float %890
  %900 = select i1 %117, float 0.000000e+00, float %891
  %901 = fmul fast float %895, %876
  %902 = fmul fast float %896, %877
  %903 = fmul fast float %897, %878
  %904 = fadd fast float %901, %898
  %905 = fadd fast float %902, %899
  %906 = fadd fast float %903, %900
  %907 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %908 = extractvalue %dx.types.CBufRet.i32 %907, 0
  %909 = icmp eq i32 %908, 0
  br i1 %909, label %1175, label %910, !dx.controlflow.hints !74

; <label>:910                                     ; preds = %880
  %911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %912 = extractvalue %dx.types.CBufRet.f32 %911, 2
  %913 = extractvalue %dx.types.CBufRet.f32 %911, 3
  %914 = fmul fast float %912, %56
  %915 = fmul fast float %913, %57
  %916 = fmul fast float %914, 2.000000e+00
  %917 = fmul fast float %915, 2.000000e+00
  %918 = fsub fast float 1.000000e+00, %916
  %919 = fsub fast float 1.000000e+00, %917
  %920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %921 = extractvalue %dx.types.CBufRet.f32 %920, 0
  %922 = extractvalue %dx.types.CBufRet.f32 %920, 1
  %923 = extractvalue %dx.types.CBufRet.f32 %920, 2
  %924 = fmul fast float %918, %921
  %925 = fmul fast float %918, %922
  %926 = fmul fast float %918, %923
  %927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %928 = extractvalue %dx.types.CBufRet.f32 %927, 0
  %929 = extractvalue %dx.types.CBufRet.f32 %927, 1
  %930 = extractvalue %dx.types.CBufRet.f32 %927, 2
  %931 = fmul fast float %919, %928
  %932 = fmul fast float %919, %929
  %933 = fmul fast float %919, %930
  %934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %935 = extractvalue %dx.types.CBufRet.f32 %934, 0
  %936 = extractvalue %dx.types.CBufRet.f32 %934, 1
  %937 = extractvalue %dx.types.CBufRet.f32 %934, 2
  %938 = fadd fast float %931, %935
  %939 = fadd fast float %938, %924
  %940 = fadd fast float %932, %936
  %941 = fadd fast float %940, %925
  %942 = fadd fast float %933, %937
  %943 = fadd fast float %942, %926
  %944 = fmul fast float %939, %875
  %945 = fmul fast float %941, %875
  %946 = fmul fast float %943, %875
  %947 = fmul fast float %944, %944
  %948 = fmul fast float %945, %945
  %949 = fadd fast float %947, %948
  %950 = fmul fast float %946, %946
  %951 = fadd fast float %949, %950
  %952 = call float @dx.op.unary.f32(i32 24, float %951)  ; Sqrt(value)
  %953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %954 = extractvalue %dx.types.CBufRet.f32 %953, 0
  %955 = fsub fast float %952, %954
  %956 = extractvalue %dx.types.CBufRet.f32 %953, 2
  %957 = fmul fast float %955, %956
  %958 = call float @dx.op.unary.f32(i32 7, float %957)  ; Saturate(value)
  %959 = fadd fast float %958, -5.000000e-01
  %960 = fmul fast float %959, 2.000000e+00
  %961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %962 = extractvalue %dx.types.CBufRet.f32 %961, 2
  %963 = call float @dx.op.binary.f32(i32 36, float %962, float %960)  ; FMin(a,b)
  %964 = fsub fast float -0.000000e+00, %962
  %965 = fcmp fast ogt float %963, %964
  br i1 %965, label %966, label %1175, !dx.controlflow.hints !75

; <label>:966                                     ; preds = %910
  %967 = fmul fast float %963, 5.000000e-01
  %968 = fadd fast float %967, 5.000000e-01
  %969 = call float @dx.op.unary.f32(i32 22, float %968)  ; Frc(value)
  %970 = call float @dx.op.unary.f32(i32 27, float %969)  ; Round_ni(value)
  %971 = call float @dx.op.unary.f32(i32 22, float %969)  ; Frc(value)
  %972 = fmul fast float %971, 2.000000e+00
  %973 = fadd fast float %972, -1.000000e+00
  %974 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %19, float %914, float %915, float %970, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %975 = extractvalue %dx.types.ResRet.f32 %974, 0
  %976 = extractvalue %dx.types.ResRet.f32 %974, 1
  %977 = extractvalue %dx.types.ResRet.f32 %974, 2
  %978 = extractvalue %dx.types.ResRet.f32 %974, 3
  %979 = fadd fast float %975, -5.000000e-01
  %980 = fadd fast float %977, -5.000000e-01
  %981 = fmul fast float %979, 0xBFD5555560000000
  %982 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %980, float %981)  ; FMad(a,b,c)
  %983 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %976, float 0.000000e+00)  ; FMad(a,b,c)
  %984 = fadd fast float %983, %978
  %985 = fmul fast float %979, -7.500000e-01
  %986 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %980, float %985)  ; FMad(a,b,c)
  %987 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %976, float 0.000000e+00)  ; FMad(a,b,c)
  %988 = fadd fast float %987, %978
  %989 = call float @dx.op.binary.f32(i32 35, float %982, float -1.000000e+00)  ; FMax(a,b)
  %990 = call float @dx.op.binary.f32(i32 35, float %984, float -1.000000e+00)  ; FMax(a,b)
  %991 = call float @dx.op.binary.f32(i32 35, float %986, float -1.000000e+00)  ; FMax(a,b)
  %992 = call float @dx.op.binary.f32(i32 35, float %988, float -1.000000e+00)  ; FMax(a,b)
  %993 = call float @dx.op.binary.f32(i32 36, float %989, float 1.000000e+00)  ; FMin(a,b)
  %994 = call float @dx.op.binary.f32(i32 36, float %990, float 1.000000e+00)  ; FMin(a,b)
  %995 = call float @dx.op.binary.f32(i32 36, float %991, float 1.000000e+00)  ; FMin(a,b)
  %996 = call float @dx.op.binary.f32(i32 36, float %992, float 1.000000e+00)  ; FMin(a,b)
  %997 = fcmp fast olt float %993, 0x3FEFFF8020000000
  br i1 %997, label %998, label %1113, !dx.controlflow.hints !76

; <label>:998                                     ; preds = %966
  %999 = extractvalue %dx.types.CBufRet.f32 %961, 3
  %1000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1001 = extractvalue %dx.types.CBufRet.f32 %1000, 0
  %1002 = extractvalue %dx.types.CBufRet.f32 %1000, 1
  %1003 = extractvalue %dx.types.CBufRet.f32 %1000, 2
  %1004 = extractvalue %dx.types.CBufRet.f32 %1000, 3
  %1005 = fsub fast float %1001, %993
  %1006 = fsub fast float %1002, %994
  %1007 = fsub fast float %1003, %995
  %1008 = fsub fast float %1004, %996
  %1009 = fmul fast float %1005, %999
  %1010 = fmul fast float %1006, %999
  %1011 = fmul fast float %1007, %999
  %1012 = fmul fast float %1008, %999
  %1013 = fadd fast float %1009, %993
  %1014 = fadd fast float %1010, %994
  %1015 = fsub fast float -0.000000e+00, %1014
  %1016 = fadd fast float %1011, %995
  %1017 = fadd fast float %1012, %996
  %1018 = fmul fast float %1013, %1013
  %1019 = fsub fast float %1014, %1018
  %1020 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1019)  ; FMax(a,b)
  %1021 = fdiv fast float 1.000000e+00, %1020
  %1022 = fmul fast float %1014, %1013
  %1023 = fsub fast float %1016, %1022
  %1024 = fsub fast float %973, %1013
  %1025 = fmul fast float %973, %973
  %1026 = fsub fast float %1025, %1014
  %1027 = fmul fast float %1024, %1021
  %1028 = fmul fast float %1027, %1023
  %1029 = fsub fast float %1026, %1028
  %1030 = fmul fast float %1014, %1014
  %1031 = fsub fast float %1017, %1030
  %1032 = fmul fast float %1023, %1023
  %1033 = fmul fast float %1032, %1021
  %1034 = fsub fast float %1031, %1033
  %1035 = fdiv fast float %1029, %1034
  %1036 = fmul fast float %1023, %1035
  %1037 = fsub fast float %1024, %1036
  %1038 = fmul fast float %1037, %1021
  %1039 = fmul fast float %1038, %1013
  %1040 = fsub fast float 1.000000e+00, %1039
  %1041 = fmul fast float %1014, %1035
  %1042 = fsub fast float %1040, %1041
  %1043 = fmul fast float %1038, %1038
  %1044 = fmul fast float %1035, 4.000000e+00
  %1045 = fmul fast float %1044, %1042
  %1046 = fsub fast float %1043, %1045
  %1047 = call float @dx.op.unary.f32(i32 24, float %1046)  ; Sqrt(value)
  %1048 = fcmp fast oge float %1038, 0.000000e+00
  %1049 = fsub fast float -0.000000e+00, %1047
  %1050 = select i1 %1048, float %1049, float %1047
  %1051 = fsub fast float %1050, %1038
  %1052 = fdiv fast float %1051, %1035
  %1053 = fdiv fast float %1042, %1051
  %1054 = fmul fast float %1052, 5.000000e-01
  %1055 = fmul fast float %1053, 2.000000e+00
  %1056 = select i1 %1048, float %1054, float %1055
  %1057 = select i1 %1048, float %1055, float %1054
  %1058 = call float @dx.op.binary.f32(i32 35, float %1056, float %1057)  ; FMax(a,b)
  %1059 = call float @dx.op.binary.f32(i32 36, float %1056, float %1057)  ; FMin(a,b)
  %1060 = fcmp fast ogt float %973, %1059
  br i1 %1060, label %1061, label %1071

; <label>:1061                                    ; preds = %998
  %1062 = fsub fast float %973, %1059
  %1063 = fsub fast float %1058, %1059
  %1064 = fmul fast float %1062, %1063
  %1065 = fmul fast float %1058, %973
  %1066 = fadd fast float %1058, %973
  %1067 = fmul fast float %1066, %1013
  %1068 = fadd fast float %1065, %1014
  %1069 = fsub fast float %1068, %1067
  %1070 = fdiv fast float %1069, %1064
  br label %1071

; <label>:1071                                    ; preds = %1061, %998
  %1072 = phi float [ %1070, %1061 ], [ 0.000000e+00, %998 ]
  %1073 = fcmp fast ogt float %973, %1058
  %1074 = fsub fast float %973, %1058
  br i1 %1073, label %1075, label %1085

; <label>:1075                                    ; preds = %1071
  %1076 = fsub fast float %1058, %1059
  %1077 = fmul fast float %1076, %1074
  %1078 = fmul fast float %1059, %973
  %1079 = fadd fast float %1059, %973
  %1080 = fmul fast float %1079, %1013
  %1081 = fsub fast float %1015, %1078
  %1082 = fadd fast float %1081, %1080
  %1083 = fdiv fast float %1082, %1077
  %1084 = fadd fast float %1083, %1072
  br label %1085

; <label>:1085                                    ; preds = %1075, %1071
  %1086 = phi float [ %1084, %1075 ], [ %1072, %1071 ]
  %1087 = fsub fast float %973, %1059
  %1088 = fmul fast float %1087, %1074
  %1089 = fmul fast float %1059, %1058
  %1090 = fadd fast float %1059, %1058
  %1091 = fmul fast float %1090, %1013
  %1092 = fadd fast float %1089, %1014
  %1093 = fsub fast float %1092, %1091
  %1094 = fdiv fast float %1093, %1088
  %1095 = call float @dx.op.unary.f32(i32 7, float %1086)  ; Saturate(value)
  %1096 = fcmp fast oeq float %750, 0.000000e+00
  %1097 = extractvalue %dx.types.CBufRet.f32 %961, 0
  %1098 = fcmp fast oeq float %1097, 0.000000e+00
  %1099 = or i1 %1096, %1098
  %1100 = fmul fast float %1097, 2.000000e+00
  %1101 = fadd fast float %962, %963
  %1102 = fdiv fast float %1101, %1100
  %1103 = call float @dx.op.unary.f32(i32 7, float %1102)  ; Saturate(value)
  %1104 = fmul fast float %1103, 2.000000e+00
  %1105 = fsub fast float 3.000000e+00, %1104
  %1106 = fmul fast float %1103, %1103
  %1107 = fmul fast float %1106, %1105
  %1108 = select i1 %1099, float 1.000000e+00, float %1107
  %1109 = fmul fast float %1094, %750
  %1110 = fadd fast float %1095, %1109
  %1111 = call float @dx.op.unary.f32(i32 7, float %1110)  ; Saturate(value)
  %1112 = fmul fast float %1108, %1111
  br label %1113

; <label>:1113                                    ; preds = %1085, %966
  %1114 = phi float [ %1112, %1085 ], [ 0.000000e+00, %966 ]
  %1115 = fsub fast float 1.000000e+00, %1114
  %1116 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %19, float %914, float %915, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1117 = extractvalue %dx.types.ResRet.f32 %1116, 0
  %1118 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1119 = extractvalue %dx.types.CBufRet.i32 %1118, 2
  %1120 = icmp eq i32 %1119, 0
  br i1 %1120, label %1126, label %1121

; <label>:1121                                    ; preds = %1113
  %1122 = call float @dx.op.unary.f32(i32 7, float %1114)  ; Saturate(value)
  %1123 = fadd fast float %1117, -1.000000e+00
  %1124 = fmul fast float %1122, %1123
  %1125 = fadd fast float %1124, 1.000000e+00
  br label %1126

; <label>:1126                                    ; preds = %1121, %1113
  %1127 = phi float [ %1125, %1121 ], [ %1115, %1113 ]
  %1128 = call float @dx.op.binary.f32(i32 35, float %1117, float %1127)  ; FMax(a,b)
  %1129 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1130 = extractvalue %dx.types.CBufRet.i32 %1129, 2
  %1131 = and i32 %1130, 1
  %1132 = icmp eq i32 %1131, 0
  %1133 = fcmp fast une float %1128, 1.000000e+00
  %1134 = and i1 %1133, %1132
  br i1 %1134, label %1135, label %1154

; <label>:1135                                    ; preds = %1126
  %1136 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %914, float %915, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1137 = extractvalue %dx.types.ResRet.f32 %1136, 0
  %1138 = extractvalue %dx.types.ResRet.f32 %1136, 1
  %1139 = extractvalue %dx.types.ResRet.f32 %1136, 2
  %1140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1141 = extractvalue %dx.types.CBufRet.f32 %1140, 1
  %1142 = fmul fast float %1141, %1137
  %1143 = fmul fast float %1141, %1138
  %1144 = fmul fast float %1141, %1139
  %1145 = fcmp fast ogt float %1117, 0x3FEFFF2E40000000
  %1146 = fsub fast float 1.000000e+00, %1128
  %1147 = fsub fast float 1.000000e+00, %1117
  %1148 = fdiv fast float %1146, %1147
  %1149 = call float @dx.op.unary.f32(i32 7, float %1148)  ; Saturate(value)
  %1150 = select i1 %1145, float 0.000000e+00, float %1149
  %1151 = fmul fast float %1142, %1150
  %1152 = fmul fast float %1143, %1150
  %1153 = fmul fast float %1144, %1150
  br label %1154

; <label>:1154                                    ; preds = %1135, %1126
  %1155 = phi float [ 0.000000e+00, %1126 ], [ %1151, %1135 ]
  %1156 = phi float [ 0.000000e+00, %1126 ], [ %1152, %1135 ]
  %1157 = phi float [ 0.000000e+00, %1126 ], [ %1153, %1135 ]
  %1158 = fmul fast float %1155, %732
  %1159 = fmul fast float %1156, %732
  %1160 = fmul fast float %1157, %732
  %1161 = fmul fast float %1128, %892
  %1162 = call float @dx.op.dot3.f32(i32 55, float %1128, float %1128, float %1128, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1163 = call float @dx.op.dot3.f32(i32 55, float %1158, float %1159, float %1160, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1164 = select i1 %117, float %1162, float %1128
  %1165 = select i1 %117, float 1.000000e+00, float %1128
  %1166 = select i1 %117, float %1163, float %1158
  %1167 = select i1 %117, float 0.000000e+00, float %1159
  %1168 = select i1 %117, float 0.000000e+00, float %1160
  %1169 = fmul fast float %1164, %904
  %1170 = fmul fast float %1164, %905
  %1171 = fmul fast float %1165, %906
  %1172 = fadd fast float %1169, %1166
  %1173 = fadd fast float %1170, %1167
  %1174 = fadd fast float %1168, %1171
  br label %1175

; <label>:1175                                    ; preds = %1154, %910, %880, %874
  %1176 = phi float [ %876, %874 ], [ %904, %880 ], [ %1172, %1154 ], [ %904, %910 ]
  %1177 = phi float [ %877, %874 ], [ %905, %880 ], [ %1173, %1154 ], [ %905, %910 ]
  %1178 = phi float [ %878, %874 ], [ %906, %880 ], [ %1174, %1154 ], [ %906, %910 ]
  %1179 = phi float [ %879, %874 ], [ %892, %880 ], [ %1161, %1154 ], [ %892, %910 ]
  %1180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1181 = extractvalue %dx.types.CBufRet.f32 %1180, 2
  %1182 = extractvalue %dx.types.CBufRet.f32 %1180, 3
  %1183 = fmul fast float %1181, %56
  %1184 = fmul fast float %1182, %57
  %1185 = call float @dx.op.unary.f32(i32 7, float %1183)  ; Saturate(value)
  %1186 = call float @dx.op.unary.f32(i32 7, float %1184)  ; Saturate(value)
  %1187 = select i1 %767, i32 2, i32 0
  %1188 = or i32 %1187, 1
  %1189 = uitofp i32 %1188 to float
  %1190 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %19, float %1185, float %1186, float %1189, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1191 = extractvalue %dx.types.ResRet.f32 %1190, 0
  %1192 = extractvalue %dx.types.ResRet.f32 %1190, 1
  %1193 = extractvalue %dx.types.ResRet.f32 %1190, 2
  %1194 = extractvalue %dx.types.ResRet.f32 %1190, 3
  %1195 = add nuw nsw i32 %1187, 2
  %1196 = uitofp i32 %1195 to float
  %1197 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %19, float %1185, float %1186, float %1196, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1198 = extractvalue %dx.types.ResRet.f32 %1197, 0
  %1199 = extractvalue %dx.types.ResRet.f32 %1197, 1
  %1200 = extractvalue %dx.types.ResRet.f32 %1197, 2
  %1201 = extractvalue %dx.types.ResRet.f32 %1197, 3
  %1202 = call float @dx.op.binary.f32(i32 35, float %1192, float %1193)  ; FMax(a,b)
  %1203 = call float @dx.op.binary.f32(i32 35, float %1191, float %1202)  ; FMax(a,b)
  %1204 = call float @dx.op.binary.f32(i32 35, float %1203, float %1194)  ; FMax(a,b)
  %1205 = call float @dx.op.binary.f32(i32 36, float %1199, float %1200)  ; FMin(a,b)
  %1206 = call float @dx.op.binary.f32(i32 36, float %1198, float %1205)  ; FMin(a,b)
  %1207 = call float @dx.op.binary.f32(i32 36, float %1206, float %1201)  ; FMin(a,b)
  %1208 = fmul fast float %1204, 2.550000e+02
  %1209 = fadd fast float %1208, 0x3F70101020000000
  %1210 = fptoui float %1209 to i32
  %1211 = fmul fast float %1207, 2.550000e+02
  %1212 = fadd fast float %1211, 0x3F70101020000000
  %1213 = fptoui float %1212 to i32
  %1214 = icmp ult i32 %1210, %1213
  br i1 %1214, label %1215, label %1267

; <label>:1215                                    ; preds = %1175
  %1216 = fcmp fast ogt float %50, 9.843750e-01
  %1217 = fadd fast float %875, -4.000000e+00
  %1218 = select i1 %1216, float -4.000000e+00, float %1217
  %1219 = call float @dx.op.binary.f32(i32 35, float %1218, float 0.000000e+00)  ; FMax(a,b)
  %1220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1221 = extractvalue %dx.types.CBufRet.f32 %1220, 0
  %1222 = fadd fast float %1221, %1219
  %1223 = extractvalue %dx.types.CBufRet.f32 %1220, 2
  %1224 = fmul fast float %1222, %1223
  %1225 = call float @dx.op.unary.f32(i32 23, float %1224)  ; Log(value)
  %1226 = extractvalue %dx.types.CBufRet.f32 %1220, 3
  %1227 = fmul fast float %1226, %1225
  %1228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1229 = extractvalue %dx.types.CBufRet.f32 %1228, 2
  %1230 = fmul fast float %1227, %1229
  %1231 = call float @dx.op.unary.f32(i32 7, float %1230)  ; Saturate(value)
  %1232 = uitofp i32 %1210 to float
  %1233 = uitofp i32 %1213 to float
  %1234 = fadd fast float %1232, 5.000000e-01
  %1235 = fadd fast float %1233, 5.000000e-01
  %1236 = fmul fast float %1229, %1234
  %1237 = fmul fast float %1229, %1235
  %1238 = fadd fast float %1236, 0x3F0FFB4800000000
  %1239 = fadd fast float %1237, 0xBF0FFB4800000000
  %1240 = call float @dx.op.binary.f32(i32 35, float %1231, float %1238)  ; FMax(a,b)
  %1241 = call float @dx.op.binary.f32(i32 36, float %1240, float %1239)  ; FMin(a,b)
  %1242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1243 = extractvalue %dx.types.CBufRet.f32 %1242, 1
  %1244 = extractvalue %dx.types.CBufRet.f32 %1242, 2
  %1245 = extractvalue %dx.types.CBufRet.f32 %1242, 0
  %1246 = select i1 %767, float %1245, float 0.000000e+00
  %1247 = fmul fast float %1243, %1241
  %1248 = fadd fast float %1246, %1247
  %1249 = fadd fast float %1246, %1244
  %1250 = fsub fast float %1243, %1244
  %1251 = fadd fast float %1250, %1246
  %1252 = call float @dx.op.binary.f32(i32 35, float %1248, float %1249)  ; FMax(a,b)
  %1253 = call float @dx.op.binary.f32(i32 36, float %1252, float %1251)  ; FMin(a,b)
  %1254 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %18, float %1185, float %1186, float %1253, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1255 = extractvalue %dx.types.ResRet.f32 %1254, 0
  %1256 = extractvalue %dx.types.ResRet.f32 %1254, 1
  %1257 = extractvalue %dx.types.ResRet.f32 %1254, 2
  %1258 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %1185, float %1186, float %1253, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1259 = extractvalue %dx.types.ResRet.f32 %1258, 0
  %1260 = extractvalue %dx.types.ResRet.f32 %1258, 1
  %1261 = extractvalue %dx.types.ResRet.f32 %1258, 2
  %1262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1263 = extractvalue %dx.types.CBufRet.f32 %1262, 1
  %1264 = fmul fast float %1263, %1259
  %1265 = fmul fast float %1263, %1260
  %1266 = fmul fast float %1263, %1261
  br label %1267

; <label>:1267                                    ; preds = %1215, %1175
  %1268 = phi float [ %1255, %1215 ], [ 1.000000e+00, %1175 ]
  %1269 = phi float [ %1256, %1215 ], [ 1.000000e+00, %1175 ]
  %1270 = phi float [ %1257, %1215 ], [ 1.000000e+00, %1175 ]
  %1271 = phi float [ %1264, %1215 ], [ 0.000000e+00, %1175 ]
  %1272 = phi float [ %1265, %1215 ], [ 0.000000e+00, %1175 ]
  %1273 = phi float [ %1266, %1215 ], [ 0.000000e+00, %1175 ]
  %1274 = fmul fast float %1271, %732
  %1275 = fmul fast float %1272, %732
  %1276 = fmul fast float %1273, %732
  %1277 = fmul fast float %1268, %1179
  %1278 = call float @dx.op.dot3.f32(i32 55, float %1268, float %1269, float %1270, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1279 = call float @dx.op.dot3.f32(i32 55, float %1274, float %1275, float %1276, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1280 = select i1 %117, float %1278, float %1268
  %1281 = select i1 %117, float %1278, float %1269
  %1282 = select i1 %117, float 1.000000e+00, float %1270
  %1283 = select i1 %117, float %1279, float %1274
  %1284 = select i1 %117, float 0.000000e+00, float %1275
  %1285 = select i1 %117, float 0.000000e+00, float %1276
  %1286 = fmul fast float %1280, %1176
  %1287 = fmul fast float %1281, %1177
  %1288 = fmul fast float %1282, %1178
  %1289 = fadd fast float %1286, %1283
  %1290 = fadd fast float %1287, %1284
  %1291 = fadd fast float %1285, %1288
  %1292 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1293 = extractvalue %dx.types.CBufRet.i32 %1292, 3
  %1294 = and i32 %1293, 3
  %1295 = icmp ne i32 %1294, 0
  %1296 = and i32 %1293, 4
  %1297 = icmp ne i32 %1296, 0
  %1298 = and i1 %1295, %1297
  %1299 = and i1 %117, %1298
  br i1 %1299, label %1300, label %1306

; <label>:1300                                    ; preds = %1267
  %1301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1302 = extractvalue %dx.types.CBufRet.f32 %1301, 1
  %1303 = fadd fast float %1277, -1.000000e+00
  %1304 = fmul fast float %1302, %1303
  %1305 = fadd fast float %1304, 1.000000e+00
  br label %1306

; <label>:1306                                    ; preds = %1300, %1267
  %1307 = phi float [ %1305, %1300 ], [ %1277, %1267 ]
  %1308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1309 = extractvalue %dx.types.CBufRet.f32 %1308, 0
  br i1 %117, label %1310, label %1331

; <label>:1310                                    ; preds = %1306
  %1311 = fadd fast float %1289, %1290
  %1312 = fmul fast float %1309, %1311
  %1313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1314 = extractvalue %dx.types.CBufRet.f32 %1313, 3
  %1315 = extractvalue %dx.types.CBufRet.f32 %736, 1
  %1316 = fsub fast float %739, %1315
  %1317 = extractvalue %dx.types.CBufRet.f32 %736, 2
  %1318 = fmul fast float %1316, %1317
  %1319 = call float @dx.op.unary.f32(i32 7, float %1318)  ; Saturate(value)
  %1320 = fsub fast float %1319, %1314
  %1321 = fmul fast float %1320, %1307
  %1322 = fadd fast float %1321, %1314
  %1323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1324 = extractvalue %dx.types.CBufRet.f32 %1323, 0
  %1325 = fsub fast float %1322, %1324
  %1326 = fmul fast float %1325, 1.000000e+01
  %1327 = call float @dx.op.unary.f32(i32 7, float %1326)  ; Saturate(value)
  %1328 = fmul fast float %1327, %732
  %1329 = fsub fast float %732, %1328
  %1330 = fmul fast float %1329, %1322
  br label %1340

; <label>:1331                                    ; preds = %1306
  %1332 = fmul fast float %1309, %1289
  %1333 = fmul fast float %1309, %1290
  %1334 = fmul fast float %1309, %1291
  %1335 = call float @dx.op.binary.f32(i32 35, float %1333, float %1334)  ; FMax(a,b)
  %1336 = call float @dx.op.binary.f32(i32 35, float %1332, float %1335)  ; FMax(a,b)
  %1337 = call float @dx.op.binary.f32(i32 35, float %1336, float %732)  ; FMax(a,b)
  %1338 = fcmp fast ugt float %1337, 0x3F10000000000000
  br i1 %1338, label %1340, label %1339

; <label>:1339                                    ; preds = %1331
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1340

; <label>:1340                                    ; preds = %1339, %1331, %1310
  %1341 = phi float [ %1312, %1310 ], [ %1332, %1339 ], [ %1332, %1331 ]
  %1342 = phi float [ %1330, %1310 ], [ %1333, %1339 ], [ %1333, %1331 ]
  %1343 = phi float [ %1329, %1310 ], [ %1334, %1339 ], [ %1334, %1331 ]
  %1344 = phi float [ %1329, %1310 ], [ %732, %1339 ], [ %732, %1331 ]
  %1345 = fadd fast float %565, 0x3FE3C6EF40000000
  %1346 = call float @dx.op.unary.f32(i32 22, float %1345)  ; Frc(value)
  %1347 = call float @dx.op.unary.f32(i32 23, float %1341)  ; Log(value)
  %1348 = fadd fast float %1347, -7.000000e+00
  %1349 = call float @dx.op.unary.f32(i32 21, float %1348)  ; Exp(value)
  %1350 = fmul fast float %1346, 2.000000e+00
  %1351 = fadd fast float %1350, -1.000000e+00
  %1352 = fmul fast float %1349, %1351
  %1353 = fcmp fast ogt float %1341, 0.000000e+00
  %1354 = select i1 %1353, float %1352, float 0.000000e+00
  %1355 = fadd fast float %1354, %1341
  %1356 = fadd fast float %565, 0x3FF3C6EF40000000
  %1357 = call float @dx.op.unary.f32(i32 22, float %1356)  ; Frc(value)
  %1358 = call float @dx.op.unary.f32(i32 23, float %1342)  ; Log(value)
  %1359 = fadd fast float %1358, -7.000000e+00
  %1360 = call float @dx.op.unary.f32(i32 21, float %1359)  ; Exp(value)
  %1361 = fmul fast float %1357, 2.000000e+00
  %1362 = fadd fast float %1361, -1.000000e+00
  %1363 = fmul fast float %1360, %1362
  %1364 = fcmp fast ogt float %1342, 0.000000e+00
  %1365 = select i1 %1364, float %1363, float 0.000000e+00
  %1366 = fadd fast float %1365, %1342
  %1367 = fadd fast float %565, 0x3FFDAA66E0000000
  %1368 = call float @dx.op.unary.f32(i32 22, float %1367)  ; Frc(value)
  %1369 = call float @dx.op.unary.f32(i32 23, float %1343)  ; Log(value)
  %1370 = fadd fast float %1369, -6.000000e+00
  %1371 = call float @dx.op.unary.f32(i32 21, float %1370)  ; Exp(value)
  %1372 = fmul fast float %1368, 2.000000e+00
  %1373 = fadd fast float %1372, -1.000000e+00
  %1374 = fmul fast float %1371, %1373
  %1375 = fcmp fast ogt float %1343, 0.000000e+00
  %1376 = select i1 %1375, float %1374, float 0.000000e+00
  %1377 = fadd fast float %1376, %1343
  %1378 = select i1 %117, float %1342, float %1366
  %1379 = select i1 %117, float %1343, float %1377
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1380 = call float @dx.op.binary.f32(i32 36, float %1355, float 3.225500e+04)  ; FMin(a,b)
  %1381 = call float @dx.op.binary.f32(i32 36, float %1378, float 3.225500e+04)  ; FMin(a,b)
  %1382 = call float @dx.op.binary.f32(i32 36, float %1379, float 3.225500e+04)  ; FMin(a,b)
  %1383 = call float @dx.op.binary.f32(i32 36, float %1344, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1380)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1381)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1382)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1383)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1344)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1344)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1344)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1344)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

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
!dx.viewIdState = !{!36}
!dx.entryPoints = !{!37}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !27, !30}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !21, !23, !24, !25, !26}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 77, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !16}
!16 = !{i32 0, i32 5}
!17 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 12, i32 1, i32 2, i32 0, !7}
!18 = !{i32 10, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!19 = !{i32 11, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!20 = !{i32 12, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!21 = !{i32 13, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !22}
!22 = !{i32 0, i32 14}
!23 = !{i32 14, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!24 = !{i32 15, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!25 = !{i32 16, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 7, i32 0, !7}
!26 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!27 = !{!28, !29}
!28 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!29 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!30 = !{!31, !32, !33, !34, !35}
!31 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!32 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!33 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!34 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!35 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!36 = !{[41 x i32] [i32 39, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255]}
!37 = !{void ()* @ps_main, !"ps_main", !38, !4, !64}
!38 = !{!39, !61, null}
!39 = !{!40, !43, !44, !45, !48, !50, !53, !55, !57, !58, !60}
!40 = !{i32 0, !"SV_Position", i8 9, i8 3, !41, i8 4, i32 1, i8 4, i32 0, i8 0, !42}
!41 = !{i32 0}
!42 = !{i32 3, i32 15}
!43 = !{i32 1, !"COLOR", i8 9, i8 0, !41, i8 2, i32 1, i8 4, i32 1, i8 0, !42}
!44 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !41, i8 2, i32 1, i8 4, i32 2, i8 0, !42}
!45 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !46, i8 2, i32 1, i8 3, i32 3, i8 0, !47}
!46 = !{i32 1}
!47 = !{i32 3, i32 7}
!48 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !49, i8 2, i32 1, i8 4, i32 4, i8 0, !47}
!49 = !{i32 3}
!50 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !51, i8 2, i32 1, i8 4, i32 5, i8 0, !52}
!51 = !{i32 4}
!52 = !{i32 3, i32 3}
!53 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !54, i8 3, i32 1, i8 2, i32 6, i8 0, !52}
!54 = !{i32 5}
!55 = !{i32 7, !"TEXCOORD", i8 9, i8 0, !56, i8 2, i32 1, i8 4, i32 7, i8 0, null}
!56 = !{i32 8}
!57 = !{i32 8, !"QUAD_POSITION", i8 9, i8 0, !41, i8 1, i32 1, i8 4, i32 8, i8 0, !42}
!58 = !{i32 9, !"COLOR", i8 5, i8 0, !49, i8 1, i32 1, i8 3, i32 9, i8 0, !59}
!59 = !{i32 3, i32 5}
!60 = !{i32 10, !"SV_SampleIndex", i8 5, i8 12, !41, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!61 = !{!62, !63}
!62 = !{i32 0, !"SV_Target", i8 9, i8 16, !41, i8 0, i32 1, i8 4, i32 0, i8 0, !42}
!63 = !{i32 1, !"SV_Target", i8 9, i8 16, !46, i8 0, i32 1, i8 4, i32 1, i8 0, !42}
!64 = !{i32 0, i64 24}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}

