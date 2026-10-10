;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 1   xyz         3     NONE   float   xyz 
; TEXCOORD                 2   xyzw        4     NONE   float   xyz 
; TEXCOORD                 3   xyzw        5     NONE   float   xyz 
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
; shader hash: e8c6ee8b3fc97b1a91594b8c94c59ebd
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
; TEXCOORD                 2        nointerpolation       
; TEXCOORD                 3                 linear       
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
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 24, 25, 32, 33, 34, 35, 36, 38 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 24, 25, 32, 33, 34, 35, 36, 38 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 24, 25, 32, 33, 34, 35, 36, 38 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 24, 25, 32, 33, 34, 35, 36, 38 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 24, 25, 32, 33, 34, 35, 36, 38 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 24, 25, 32, 33, 34, 35, 36, 38 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 24, 25, 32, 33, 34, 35, 36, 38 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 24, 25, 32, 33, 34, 35, 36, 38 }
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
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.f32 %53, 0
  %55 = fmul fast float %54, %47
  %56 = fmul fast float %54, %48
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
  %93 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %94 = extractvalue %dx.types.CBufRet.i32 %93, 3
  %95 = and i32 %94, 3
  %96 = icmp ne i32 %95, 0
  %97 = and i32 %94, 4
  %98 = icmp ne i32 %97, 0
  %99 = and i1 %96, %98
  br i1 %99, label %100, label %109

; <label>:100                                     ; preds = %0
  %101 = fmul fast float %59, %56
  %102 = fmul fast float %58, %55
  %103 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %102, float %101, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %104 = extractvalue %dx.types.ResRet.f32 %103, 0
  %105 = fsub fast float 1.000000e+00, %104
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 0
  %108 = fcmp fast olt float %105, %107
  br label %112

; <label>:109                                     ; preds = %0
  %110 = icmp eq i32 %97, 0
  %111 = and i1 %96, %110
  br label %112

; <label>:112                                     ; preds = %109, %100
  %113 = phi i1 [ %108, %100 ], [ %111, %109 ]
  %114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.f32 %114, 2
  %116 = extractvalue %dx.types.CBufRet.f32 %114, 3
  %117 = fmul fast float %115, %55
  %118 = fmul fast float %116, %56
  %119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %120 = extractvalue %dx.types.ResRet.i32 %119, 0
  %121 = and i32 %120, 114688
  %122 = icmp ne i32 %121, 0
  %123 = select i1 %122, float %117, float 0.000000e+00
  %124 = select i1 %122, float %118, float 0.000000e+00
  %125 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %20, float %123, float %124, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %126 = extractvalue %dx.types.ResRet.f32 %125, 0
  %127 = fmul fast float %126, 2.550000e+02
  %128 = fptoui float %127 to i32
  %129 = select i1 %122, i32 %128, i32 0
  %130 = mul i32 %24, 208
  %131 = add i32 %130, 188
  %132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %131, i32 undef)  ; BufferLoad(srv,index,wot)
  %133 = extractvalue %dx.types.ResRet.i32 %132, 0
  %134 = and i32 %94, 114688
  %135 = and i32 %94, 8
  %136 = icmp ne i32 %135, 0
  %137 = or i1 %113, %136
  %138 = select i1 %137, i32 %134, i32 16384
  %139 = and i32 %138, %133
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142

; <label>:141                                     ; preds = %112
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %142

; <label>:142                                     ; preds = %141, %112
  %143 = and i32 %133, 512
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %169, label %145

; <label>:145                                     ; preds = %142
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 2
  %148 = extractvalue %dx.types.CBufRet.f32 %146, 3
  %149 = fmul fast float %147, %55
  %150 = fmul fast float %148, %56
  %151 = extractvalue %dx.types.CBufRet.f32 %146, 0
  %152 = extractvalue %dx.types.CBufRet.f32 %146, 1
  %153 = fdiv fast float %151, %152
  %154 = fcmp fast ogt float %153, 0x3FFC71C720000000
  br i1 %154, label %155, label %161

; <label>:155                                     ; preds = %145
  %156 = fdiv fast float 0x3FFC71C720000000, %153
  %157 = fmul fast float %156, %150
  %158 = fsub fast float 1.000000e+00, %156
  %159 = fmul fast float %158, 5.000000e-01
  %160 = fadd fast float %159, %157
  br label %169

; <label>:161                                     ; preds = %145
  %162 = fcmp fast olt float %153, 0x3FFC71C720000000
  br i1 %162, label %163, label %169

; <label>:163                                     ; preds = %161
  %164 = fmul fast float %149, 5.625000e-01
  %165 = fmul fast float %164, %153
  %166 = fmul fast float %153, 2.812500e-01
  %167 = fsub fast float 5.000000e-01, %166
  %168 = fadd fast float %167, %165
  br label %169

; <label>:169                                     ; preds = %163, %161, %155, %142
  %170 = phi float [ %41, %142 ], [ %149, %155 ], [ %168, %163 ], [ %149, %161 ]
  %171 = phi float [ %42, %142 ], [ %160, %155 ], [ %150, %163 ], [ %150, %161 ]
  %172 = fadd fast float %41, %35
  %173 = fadd fast float %42, %36
  %174 = add i32 %25, 72
  %175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %174, i32 undef)  ; BufferLoad(srv,index,wot)
  %176 = extractvalue %dx.types.ResRet.i32 %175, 0
  %177 = extractvalue %dx.types.ResRet.i32 %175, 1
  %178 = bitcast i32 %176 to float
  %179 = bitcast i32 %177 to float
  %180 = fmul fast float %178, %41
  %181 = fmul fast float %179, %42
  %182 = call float @dx.op.unary.f32(i32 22, float %180)  ; Frc(value)
  %183 = call float @dx.op.unary.f32(i32 22, float %181)  ; Frc(value)
  %184 = and i32 %133, 16
  %185 = icmp ne i32 %184, 0
  %186 = select i1 %185, float 1.000000e+00, float %46
  %187 = icmp eq i32 %184, 0
  br i1 %187, label %207, label %188, !dx.controlflow.hints !65

; <label>:188                                     ; preds = %169
  %189 = add i32 %130, 64
  %190 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %189, i32 undef)  ; BufferLoad(srv,index,wot)
  %191 = extractvalue %dx.types.ResRet.f32 %190, 0
  %192 = fadd fast float %191, 1.000000e+00
  %193 = fmul fast float %192, %46
  %194 = fsub fast float %193, %191
  %195 = fsub fast float %192, %194
  %196 = call float @dx.op.unary.f32(i32 7, float %195)  ; Saturate(value)
  %197 = fsub fast float 1.000000e+00, %193
  %198 = call float @dx.op.unary.f32(i32 7, float %197)  ; Saturate(value)
  %199 = fsub fast float %196, %198
  %200 = fsub fast float %186, %198
  %201 = fdiv fast float %200, %199
  %202 = call float @dx.op.unary.f32(i32 7, float %201)  ; Saturate(value)
  %203 = fmul fast float %202, 2.000000e+00
  %204 = fsub fast float 3.000000e+00, %203
  %205 = fmul fast float %202, %202
  %206 = fmul fast float %205, %204
  br label %207

; <label>:207                                     ; preds = %188, %169
  %208 = phi float [ %206, %188 ], [ %186, %169 ]
  %209 = fcmp fast ogt float %208, 0.000000e+00
  br i1 %209, label %211, label %210

; <label>:210                                     ; preds = %207
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %211

; <label>:211                                     ; preds = %210, %207
  %212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 155)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.f32 %212, 1
  %214 = fsub fast float %38, %213
  %215 = fsub fast float %39, %213
  %216 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %21, float %214, float %215, float undef, float undef, i32 0, i32 0, i32 undef, float %40)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %217 = extractvalue %dx.types.ResRet.f32 %216, 0
  %218 = fmul fast float %217, %208
  %219 = call float @dx.op.unary.f32(i32 7, float %218)  ; Saturate(value)
  %220 = fmul fast float %55, 5.000000e-01
  %221 = fmul fast float %56, 5.000000e-01
  %222 = fptosi float %220 to i32
  %223 = fptosi float %221 to i32
  %224 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %222, i32 %223, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %225 = extractvalue %dx.types.ResRet.i32 %224, 0
  %226 = lshr i32 %225, 18
  %227 = uitofp i32 %226 to float
  %228 = fmul fast float %227, 0x3F4C00EBA0000000
  %229 = call float @dx.op.unary.f32(i32 21, float %228)  ; Exp(value)
  %230 = fadd fast float %229, -1.000000e+00
  %231 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %232 = extractvalue %dx.types.Dimensions %231, 0
  %233 = sitofp i32 %232 to float
  %234 = extractvalue %dx.types.Dimensions %231, 1
  %235 = sitofp i32 %234 to float
  %236 = fcmp fast oge float %220, %233
  %237 = fcmp fast oge float %221, %235
  %238 = or i1 %236, %237
  %239 = select i1 %238, float 0x4197782600000000, float %230
  %240 = fsub fast float %239, %50
  %241 = fcmp fast ogt float %240, 0.000000e+00
  %242 = and i32 %129, -2
  %243 = icmp eq i32 %242, 2
  %244 = and i1 %243, %241
  %245 = xor i1 %241, true
  %246 = icmp eq i32 %129, 1
  %247 = and i1 %246, %245
  %248 = or i1 %244, %247
  %249 = and i32 %133, 262144
  %250 = icmp ne i32 %249, 0
  %251 = and i1 %250, %248
  %252 = xor i1 %248, true
  %253 = and i32 %133, 131072
  %254 = icmp ne i32 %253, 0
  %255 = and i1 %254, %252
  %256 = or i1 %251, %255
  br i1 %256, label %257, label %258

; <label>:257                                     ; preds = %211
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %258

; <label>:258                                     ; preds = %257, %211
  %259 = and i32 %133, 32
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %510, label %261, !dx.controlflow.hints !66

; <label>:261                                     ; preds = %258
  %262 = add i32 %130, 80
  %263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.f32 %263, 0
  %265 = extractvalue %dx.types.ResRet.f32 %263, 1
  %266 = extractvalue %dx.types.ResRet.f32 %263, 2
  %267 = extractvalue %dx.types.ResRet.f32 %263, 3
  %268 = add i32 %130, 96
  %269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.f32 %269, 0
  %271 = extractvalue %dx.types.ResRet.f32 %269, 1
  %272 = extractvalue %dx.types.ResRet.f32 %269, 2
  %273 = add i32 %130, 112
  %274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.f32 %274, 0
  %276 = extractvalue %dx.types.ResRet.f32 %274, 1
  %277 = extractvalue %dx.types.ResRet.f32 %274, 2
  %278 = extractvalue %dx.types.ResRet.f32 %274, 3
  %279 = add i32 %130, 128
  %280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %279, i32 undef)  ; BufferLoad(srv,index,wot)
  %281 = extractvalue %dx.types.ResRet.f32 %280, 0
  %282 = extractvalue %dx.types.ResRet.f32 %280, 1
  %283 = extractvalue %dx.types.ResRet.f32 %280, 2
  %284 = extractvalue %dx.types.ResRet.f32 %280, 3
  %285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %131, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.i32 %285, 0
  %287 = and i32 %286, 4096
  %288 = icmp ne i32 %287, 0
  %289 = fcmp fast une float %272, 0.000000e+00
  %290 = and i32 %286, 64
  %291 = icmp ne i32 %290, 0
  %292 = and i32 %286, 128
  %293 = icmp eq i32 %292, 0
  %294 = and i32 %286, 2048
  %295 = icmp eq i32 %294, 0
  %296 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %13, i32 0)  ; GetDimensions(handle,mipLevel)
  %297 = extractvalue %dx.types.Dimensions %296, 0
  %298 = sitofp i32 %297 to float
  %299 = extractvalue %dx.types.Dimensions %296, 1
  %300 = sitofp i32 %299 to float
  %301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %302 = extractvalue %dx.types.CBufRet.f32 %301, 2
  %303 = extractvalue %dx.types.CBufRet.f32 %301, 3
  %304 = fmul fast float %302, %55
  %305 = fmul fast float %303, %56
  %306 = fmul fast float %304, %298
  %307 = fmul fast float %305, %300
  %308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %309 = extractvalue %dx.types.CBufRet.f32 %308, 1
  %310 = fsub fast float -0.000000e+00, %309
  %311 = fptoui float %310 to i32
  %312 = fptoui float %306 to i32
  %313 = fptoui float %307 to i32
  %314 = and i32 %311, 31
  %315 = lshr i32 %312, %314
  %316 = lshr i32 %313, %314
  %317 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 %311, i32 %315, i32 %316, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %318 = extractvalue %dx.types.ResRet.f32 %317, 0
  %319 = fcmp fast ogt float %318, -1.000000e+00
  %320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %321 = extractvalue %dx.types.CBufRet.f32 %320, 1
  %322 = select i1 %319, float %321, float 1.000000e+00
  %323 = fadd fast float %318, 1.000000e+00
  %324 = fmul fast float %322, %323
  %325 = call float @dx.op.unary.f32(i32 6, float %324)  ; FAbs(value)
  %326 = extractvalue %dx.types.CBufRet.f32 %320, 3
  %327 = fcmp fast oge float %325, %326
  %328 = select i1 %327, float 0x4197782600000000, float %325
  br i1 %295, label %406, label %329, !dx.controlflow.hints !67

; <label>:329                                     ; preds = %261
  %330 = fmul fast float %60, %302
  %331 = fmul fast float %62, %303
  %332 = fsub fast float 1.000000e+00, %330
  %333 = fsub fast float 1.000000e+00, %331
  %334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %335 = extractvalue %dx.types.CBufRet.f32 %334, 0
  %336 = extractvalue %dx.types.CBufRet.f32 %334, 1
  %337 = extractvalue %dx.types.CBufRet.f32 %334, 2
  %338 = fmul fast float %332, %335
  %339 = fmul fast float %332, %336
  %340 = fmul fast float %332, %337
  %341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %342 = extractvalue %dx.types.CBufRet.f32 %341, 0
  %343 = extractvalue %dx.types.CBufRet.f32 %341, 1
  %344 = extractvalue %dx.types.CBufRet.f32 %341, 2
  %345 = fmul fast float %333, %342
  %346 = fmul fast float %333, %343
  %347 = fmul fast float %333, %344
  %348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %349 = extractvalue %dx.types.CBufRet.f32 %348, 0
  %350 = extractvalue %dx.types.CBufRet.f32 %348, 1
  %351 = extractvalue %dx.types.CBufRet.f32 %348, 2
  %352 = fadd fast float %345, %349
  %353 = fadd fast float %352, %338
  %354 = fadd fast float %346, %350
  %355 = fadd fast float %354, %339
  %356 = fadd fast float %347, %351
  %357 = fadd fast float %356, %340
  %358 = fmul fast float %353, %328
  %359 = fmul fast float %355, %328
  %360 = fmul fast float %357, %328
  %361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %362 = extractvalue %dx.types.CBufRet.f32 %361, 0
  %363 = extractvalue %dx.types.CBufRet.f32 %361, 1
  %364 = extractvalue %dx.types.CBufRet.f32 %361, 2
  %365 = fsub fast float %362, %26
  %366 = fadd fast float %365, %358
  %367 = fsub fast float %363, %27
  %368 = fadd fast float %367, %359
  %369 = fsub fast float %364, %28
  %370 = fadd fast float %369, %360
  %371 = fmul fast float %29, %29
  %372 = call float @dx.op.dot3.f32(i32 55, float %366, float %368, float %370, float %366, float %368, float %370)  ; Dot3(ax,ay,az,bx,by,bz)
  %373 = fsub fast float %371, %372
  %374 = fmul fast float %271, %371
  %375 = fmul fast float %270, %371
  %376 = fcmp fast olt float %373, %374
  %377 = fcmp fast ogt float %373, %375
  %378 = or i1 %376, %377
  %379 = select i1 %378, float 0.000000e+00, float %373
  %380 = fsub fast float %270, %271
  %381 = fmul fast float %380, %371
  %382 = fsub fast float %379, %374
  %383 = fdiv fast float %382, %381
  %384 = call float @dx.op.unary.f32(i32 7, float %383)  ; Saturate(value)
  %385 = fmul fast float %384, 2.000000e+00
  %386 = fsub fast float 3.000000e+00, %385
  %387 = fmul fast float %384, %384
  %388 = fmul fast float %387, %386
  %389 = fmul fast float %275, %43
  %390 = fmul fast float %276, %44
  %391 = fmul fast float %277, %45
  %392 = fsub fast float %389, %281
  %393 = fsub fast float %390, %282
  %394 = fsub fast float %391, %283
  %395 = fsub fast float %278, %284
  %396 = fmul fast float %388, %392
  %397 = fmul fast float %388, %393
  %398 = fmul fast float %388, %394
  %399 = fmul fast float %388, %395
  %400 = fadd fast float %396, %281
  %401 = fadd fast float %397, %282
  %402 = fadd fast float %398, %283
  %403 = fadd fast float %399, %284
  %404 = fmul fast float %264, %264
  %405 = fmul fast float %404, %379
  br label %501

; <label>:406                                     ; preds = %261
  %407 = and i32 %286, 256
  %408 = icmp eq i32 %407, 0
  %409 = fsub fast float %328, %50
  br i1 %408, label %458, label %410

; <label>:410                                     ; preds = %406
  %411 = fadd fast float %270, %50
  %412 = fcmp fast olt float %328, %50
  %413 = fcmp fast ogt float %328, %411
  %414 = or i1 %412, %413
  %415 = select i1 %414, float 0.000000e+00, float %409
  %416 = call float @dx.op.unary.f32(i32 83, float %328)  ; DerivCoarseX(value)
  %417 = call float @dx.op.unary.f32(i32 84, float %328)  ; DerivCoarseY(value)
  %418 = fmul fast float %416, %416
  %419 = fmul fast float %417, %417
  %420 = fadd fast float %419, %418
  %421 = call float @dx.op.unary.f32(i32 24, float %420)  ; Sqrt(value)
  %422 = extractvalue %dx.types.CBufRet.f32 %308, 2
  %423 = fmul fast float %422, %421
  %424 = call float @dx.op.unary.f32(i32 7, float %423)  ; Saturate(value)
  %425 = fmul fast float %424, %271
  %426 = fdiv fast float %409, %425
  %427 = call float @dx.op.unary.f32(i32 7, float %426)  ; Saturate(value)
  %428 = fmul fast float %427, 2.000000e+00
  %429 = fsub fast float 3.000000e+00, %428
  %430 = fmul fast float %427, %427
  %431 = fmul fast float %430, %429
  %432 = fsub fast float %328, %411
  %433 = fadd fast float %432, %425
  %434 = fdiv fast float %433, %425
  %435 = call float @dx.op.unary.f32(i32 7, float %434)  ; Saturate(value)
  %436 = fmul fast float %435, 2.000000e+00
  %437 = fsub fast float 3.000000e+00, %436
  %438 = fmul fast float %435, %435
  %439 = fmul fast float %438, %437
  %440 = fsub fast float %431, %439
  %441 = fmul fast float %275, %43
  %442 = fmul fast float %276, %44
  %443 = fmul fast float %277, %45
  %444 = fsub fast float %441, %281
  %445 = fsub fast float %442, %282
  %446 = fsub fast float %443, %283
  %447 = fsub fast float %278, %284
  %448 = fmul fast float %440, %444
  %449 = fmul fast float %440, %445
  %450 = fmul fast float %440, %446
  %451 = fmul fast float %440, %447
  %452 = fadd fast float %448, %281
  %453 = fadd fast float %449, %282
  %454 = fadd fast float %450, %283
  %455 = fadd fast float %451, %284
  %456 = fmul fast float %415, %264
  %457 = call float @dx.op.unary.f32(i32 6, float %456)  ; FAbs(value)
  br label %501

; <label>:458                                     ; preds = %406
  br i1 %289, label %459, label %472

; <label>:459                                     ; preds = %458
  %460 = fdiv fast float 5.000000e+01, %29
  %461 = select i1 %291, float %460, float 1.000000e+00
  %462 = fmul fast float %461, %264
  %463 = fmul fast float %182, 2.000000e+00
  %464 = fmul fast float %183, 2.000000e+00
  %465 = fadd fast float %463, -1.000000e+00
  %466 = fadd fast float %464, -1.000000e+00
  %467 = call float @dx.op.dot2.f32(i32 54, float %465, float %466, float %465, float %466)  ; Dot2(ax,ay,bx,by)
  %468 = fmul fast float %272, %29
  %469 = fmul fast float %468, %467
  %470 = fsub fast float %409, %469
  %471 = fmul fast float %462, %470
  br label %501

; <label>:472                                     ; preds = %458
  br i1 %293, label %493, label %473

; <label>:473                                     ; preds = %472
  %474 = fmul fast float %29, 0x3F947AE140000000
  %475 = select i1 %291, float %474, float 1.000000e+00
  %476 = fdiv fast float 1.000000e+00, %475
  %477 = fmul fast float %475, %265
  %478 = fmul fast float %475, %266
  %479 = fmul fast float %476, %267
  %480 = call float @dx.op.unary.f32(i32 6, float %409)  ; FAbs(value)
  %481 = fcmp fast olt float %480, %477
  br i1 %481, label %482, label %486, !dx.controlflow.hints !68

; <label>:482                                     ; preds = %473
  %483 = fmul fast float %476, %264
  %484 = fmul fast float %483, %480
  %485 = call float @dx.op.unary.f32(i32 6, float %484)  ; FAbs(value)
  br label %501

; <label>:486                                     ; preds = %473
  %487 = fcmp fast ogt float %480, %478
  br i1 %487, label %488, label %501

; <label>:488                                     ; preds = %486
  %489 = fsub fast float %480, %478
  %490 = fmul fast float %479, %489
  %491 = call float @dx.op.unary.f32(i32 6, float %490)  ; FAbs(value)
  %492 = fsub fast float 1.000000e+00, %491
  br label %501

; <label>:493                                     ; preds = %472
  %494 = fdiv fast float 5.000000e+01, %29
  %495 = select i1 %291, float %494, float 1.000000e+00
  %496 = fmul fast float %495, %264
  %497 = call float @dx.op.unary.f32(i32 6, float %240)  ; FAbs(value)
  %498 = select i1 %288, float %497, float 0x47EFFFFFE0000000
  %499 = call float @dx.op.binary.f32(i32 36, float %409, float %498)  ; FMin(a,b)
  %500 = fmul fast float %496, %499
  br label %501

; <label>:501                                     ; preds = %493, %488, %486, %482, %459, %410, %329
  %502 = phi float [ %405, %329 ], [ %457, %410 ], [ %471, %459 ], [ %500, %493 ], [ %485, %482 ], [ %492, %488 ], [ %480, %486 ]
  %503 = phi float [ %400, %329 ], [ %452, %410 ], [ %43, %459 ], [ %43, %493 ], [ %43, %482 ], [ %43, %488 ], [ %43, %486 ]
  %504 = phi float [ %401, %329 ], [ %453, %410 ], [ %44, %459 ], [ %44, %493 ], [ %44, %482 ], [ %44, %488 ], [ %44, %486 ]
  %505 = phi float [ %402, %329 ], [ %454, %410 ], [ %45, %459 ], [ %45, %493 ], [ %45, %482 ], [ %45, %488 ], [ %45, %486 ]
  %506 = phi float [ %403, %329 ], [ %455, %410 ], [ 1.000000e+00, %459 ], [ 1.000000e+00, %493 ], [ 1.000000e+00, %482 ], [ 1.000000e+00, %488 ], [ 1.000000e+00, %486 ]
  %507 = call float @dx.op.unary.f32(i32 7, float %502)  ; Saturate(value)
  %508 = fmul fast float %506, %219
  %509 = fmul fast float %508, %507
  br label %510

; <label>:510                                     ; preds = %501, %258
  %511 = phi float [ %503, %501 ], [ %43, %258 ]
  %512 = phi float [ %504, %501 ], [ %44, %258 ]
  %513 = phi float [ %505, %501 ], [ %45, %258 ]
  %514 = phi float [ %509, %501 ], [ %219, %258 ]
  %515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %516 = extractvalue %dx.types.CBufRet.f32 %515, 2
  %517 = fptosi float %50 to i32
  %518 = sitofp i32 %517 to float
  %519 = fadd fast float %516, %518
  %520 = fmul fast float %519, 0x3FE3C6EF40000000
  %521 = frem fast float %55, 2.560000e+02
  %522 = frem fast float %56, 2.560000e+02
  %523 = fptoui float %521 to i32
  %524 = fptoui float %522 to i32
  %525 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %523, i32 %524, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %526 = extractvalue %dx.types.ResRet.f32 %525, 0
  %527 = fadd fast float %526, %520
  %528 = call float @dx.op.unary.f32(i32 22, float %527)  ; Frc(value)
  %529 = and i32 %133, 1
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %587, label %531, !dx.controlflow.hints !69

; <label>:531                                     ; preds = %510
  %532 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %130, i32 undef)  ; BufferLoad(srv,index,wot)
  %533 = extractvalue %dx.types.ResRet.f32 %532, 2
  %534 = extractvalue %dx.types.ResRet.f32 %532, 3
  %535 = add i32 %130, 16
  %536 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.f32 %536, 0
  %538 = extractvalue %dx.types.ResRet.f32 %536, 1
  %539 = extractvalue %dx.types.ResRet.f32 %536, 2
  %540 = add i32 %130, 32
  %541 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.f32 %541, 0
  %543 = extractvalue %dx.types.ResRet.f32 %541, 1
  %544 = extractvalue %dx.types.ResRet.f32 %541, 2
  %545 = and i32 %133, 2
  %546 = icmp eq i32 %545, 0
  %547 = call float @dx.op.dot3.f32(i32 55, float %32, float %33, float %34, float %32, float %33, float %34)  ; Dot3(ax,ay,az,bx,by,bz)
  %548 = call float @dx.op.unary.f32(i32 25, float %547)  ; Rsqrt(value)
  %549 = fmul fast float %548, %32
  %550 = fmul fast float %548, %33
  %551 = fmul fast float %548, %34
  %552 = call float @dx.op.dot3.f32(i32 55, float %90, float %91, float %92, float %90, float %91, float %92)  ; Dot3(ax,ay,az,bx,by,bz)
  %553 = call float @dx.op.unary.f32(i32 25, float %552)  ; Rsqrt(value)
  %554 = fmul fast float %553, %90
  %555 = fmul fast float %553, %91
  %556 = fmul fast float %553, %92
  %557 = call float @dx.op.dot3.f32(i32 55, float %554, float %555, float %556, float %549, float %550, float %551)  ; Dot3(ax,ay,az,bx,by,bz)
  %558 = fmul fast float %557, %557
  %559 = fmul fast float %558, %533
  %560 = fadd fast float %559, %534
  %561 = call float @dx.op.unary.f32(i32 7, float %560)  ; Saturate(value)
  br i1 %546, label %562, label %572, !dx.controlflow.hints !70

; <label>:562                                     ; preds = %531
  %563 = extractvalue %dx.types.ResRet.f32 %532, 1
  %564 = extractvalue %dx.types.ResRet.f32 %532, 0
  %565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %566 = extractvalue %dx.types.CBufRet.f32 %565, 3
  %567 = fmul fast float %566, %552
  %568 = fsub fast float %564, %567
  %569 = fmul fast float %568, %563
  %570 = call float @dx.op.unary.f32(i32 7, float %569)  ; Saturate(value)
  %571 = fmul fast float %570, %561
  br label %572

; <label>:572                                     ; preds = %562, %531
  %573 = phi float [ %571, %562 ], [ %561, %531 ]
  %574 = fsub fast float %537, %542
  %575 = fsub fast float %538, %543
  %576 = fsub fast float %539, %544
  %577 = fmul fast float %573, %574
  %578 = fmul fast float %573, %575
  %579 = fmul fast float %573, %576
  %580 = fadd fast float %577, %542
  %581 = fadd fast float %578, %543
  %582 = fadd fast float %579, %544
  %583 = fmul fast float %580, %511
  %584 = fmul fast float %581, %512
  %585 = fmul fast float %582, %513
  %586 = fmul fast float %573, %514
  br label %587

; <label>:587                                     ; preds = %572, %510
  %588 = phi float [ %583, %572 ], [ %511, %510 ]
  %589 = phi float [ %584, %572 ], [ %512, %510 ]
  %590 = phi float [ %585, %572 ], [ %513, %510 ]
  %591 = phi float [ %586, %572 ], [ %514, %510 ]
  %592 = add i32 %25, 104
  %593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %592, i32 undef)  ; BufferLoad(srv,index,wot)
  %594 = extractvalue %dx.types.ResRet.i32 %593, 0
  %595 = add i32 %594, 0
  %596 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %595, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %597 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %596, %dx.types.Handle %51, float %170, float %171, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %598 = extractvalue %dx.types.ResRet.f32 %597, 0
  %599 = extractvalue %dx.types.ResRet.f32 %597, 1
  %600 = extractvalue %dx.types.ResRet.f32 %597, 2
  %601 = add i32 %25, 56
  %602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %601, i32 undef)  ; BufferLoad(srv,index,wot)
  %603 = extractvalue %dx.types.ResRet.i32 %602, 0
  %604 = and i32 %603, 255
  %605 = uitofp i32 %604 to float
  %606 = fmul fast float %605, 0x3F70101020000000
  %607 = lshr i32 %603, 8
  %608 = and i32 %607, 255
  %609 = uitofp i32 %608 to float
  %610 = fmul fast float %609, 0x3F70101020000000
  %611 = lshr i32 %603, 16
  %612 = and i32 %611, 255
  %613 = uitofp i32 %612 to float
  %614 = fmul fast float %613, 0x3F70101020000000
  %615 = fmul fast float %606, %606
  %616 = fmul fast float %615, %598
  %617 = fmul fast float %610, %610
  %618 = fmul fast float %617, %599
  %619 = fmul fast float %614, %614
  %620 = fmul fast float %619, %600
  %621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %592, i32 undef)  ; BufferLoad(srv,index,wot)
  %622 = extractvalue %dx.types.ResRet.i32 %621, 0
  %623 = add i32 %622, 0
  %624 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %623, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %625 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %624, %dx.types.Handle %51, float %172, float %173, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %626 = extractvalue %dx.types.ResRet.f32 %625, 0
  %627 = extractvalue %dx.types.ResRet.f32 %625, 1
  %628 = extractvalue %dx.types.ResRet.f32 %625, 2
  %629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %601, i32 undef)  ; BufferLoad(srv,index,wot)
  %630 = extractvalue %dx.types.ResRet.i32 %629, 0
  %631 = and i32 %630, 255
  %632 = uitofp i32 %631 to float
  %633 = fmul fast float %632, 0x3F70101020000000
  %634 = lshr i32 %630, 8
  %635 = and i32 %634, 255
  %636 = uitofp i32 %635 to float
  %637 = fmul fast float %636, 0x3F70101020000000
  %638 = lshr i32 %630, 16
  %639 = and i32 %638, 255
  %640 = uitofp i32 %639 to float
  %641 = fmul fast float %640, 0x3F70101020000000
  %642 = fmul fast float %633, %633
  %643 = fmul fast float %642, %626
  %644 = fmul fast float %637, %637
  %645 = fmul fast float %644, %627
  %646 = fmul fast float %641, %641
  %647 = fmul fast float %646, %628
  %648 = fsub fast float %643, %616
  %649 = fsub fast float %645, %618
  %650 = fsub fast float %647, %620
  %651 = fmul fast float %648, %37
  %652 = fmul fast float %649, %37
  %653 = fmul fast float %650, %37
  %654 = fadd fast float %651, %616
  %655 = fadd fast float %652, %618
  %656 = fadd fast float %653, %620
  %657 = fmul fast float %654, %588
  %658 = fmul fast float %655, %589
  %659 = fmul fast float %656, %590
  %660 = add i32 %25, 40
  %661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %660, i32 undef)  ; BufferLoad(srv,index,wot)
  %662 = extractvalue %dx.types.ResRet.i32 %661, 0
  %663 = and i32 %662, 255
  %664 = uitofp i32 %663 to float
  %665 = fmul fast float %664, 0x3F70101020000000
  %666 = fmul fast float %665, %665
  %667 = add i32 %25, 108
  %668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %667, i32 undef)  ; BufferLoad(srv,index,wot)
  %669 = extractvalue %dx.types.ResRet.i32 %668, 0
  %670 = add i32 %669, 0
  %671 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %670, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %672 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %671, %dx.types.Handle %52, float %170, float %171, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %673 = extractvalue %dx.types.ResRet.f32 %672, 0
  %674 = fmul fast float %666, %673
  %675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %660, i32 undef)  ; BufferLoad(srv,index,wot)
  %676 = extractvalue %dx.types.ResRet.i32 %675, 0
  %677 = and i32 %676, 255
  %678 = uitofp i32 %677 to float
  %679 = fmul fast float %678, 0x3F70101020000000
  %680 = fmul fast float %679, %679
  %681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %667, i32 undef)  ; BufferLoad(srv,index,wot)
  %682 = extractvalue %dx.types.ResRet.i32 %681, 0
  %683 = add i32 %682, 0
  %684 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %683, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %685 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %684, %dx.types.Handle %52, float %172, float %173, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %686 = extractvalue %dx.types.ResRet.f32 %685, 0
  %687 = fmul fast float %680, %686
  %688 = fsub fast float %687, %674
  %689 = fmul fast float %688, %37
  %690 = fadd fast float %689, %674
  %691 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %30, float %31, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %692 = extractvalue %dx.types.ResRet.f32 %691, 0
  %693 = extractvalue %dx.types.ResRet.f32 %691, 1
  %694 = extractvalue %dx.types.ResRet.f32 %691, 2
  %695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %696 = extractvalue %dx.types.CBufRet.f32 %695, 1
  %697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %698 = extractvalue %dx.types.CBufRet.f32 %697, 0
  %699 = fmul fast float %657, %698
  %700 = fmul fast float %658, %698
  %701 = fmul fast float %659, %698
  %702 = call float @dx.op.dot3.f32(i32 55, float %699, float %700, float %701, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %703 = add i32 %25, 32
  %704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %705 = extractvalue %dx.types.ResRet.i32 %704, 0
  %706 = and i32 %705, 255
  %707 = uitofp i32 %706 to float
  %708 = lshr i32 %705, 8
  %709 = and i32 %708, 255
  %710 = uitofp i32 %709 to float
  %711 = fmul fast float %710, %702
  %712 = fadd fast float %711, %707
  %713 = fmul fast float %712, 0x3F70101020000000
  %714 = call float @dx.op.unary.f32(i32 7, float %713)  ; Saturate(value)
  %715 = and i32 %133, 8192
  %716 = icmp eq i32 %715, 0
  %717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %718 = extractvalue %dx.types.CBufRet.f32 %717, 0
  br i1 %716, label %725, label %719, !dx.controlflow.hints !71

; <label>:719                                     ; preds = %587
  %720 = add i32 %130, 176
  %721 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %720, i32 undef)  ; BufferLoad(srv,index,wot)
  %722 = extractvalue %dx.types.ResRet.f32 %721, 0
  %723 = fcmp fast oge float %722, 0.000000e+00
  %724 = select i1 %723, float %722, float %718
  br label %725

; <label>:725                                     ; preds = %719, %587
  %726 = phi float [ %724, %719 ], [ %718, %587 ]
  %727 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %222, i32 %223, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %728 = extractvalue %dx.types.ResRet.i32 %727, 0
  %729 = lshr i32 %728, 18
  %730 = uitofp i32 %729 to float
  %731 = fmul fast float %730, 0x3F4C00EBA0000000
  %732 = call float @dx.op.unary.f32(i32 21, float %731)  ; Exp(value)
  %733 = fadd fast float %732, -1.000000e+00
  %734 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %735 = extractvalue %dx.types.Dimensions %734, 0
  %736 = sitofp i32 %735 to float
  %737 = extractvalue %dx.types.Dimensions %734, 1
  %738 = sitofp i32 %737 to float
  %739 = fcmp fast oge float %220, %736
  %740 = fcmp fast oge float %221, %738
  %741 = or i1 %739, %740
  %742 = select i1 %741, float 0x4197782600000000, float %733
  %743 = fadd fast float %690, -1.000000e+00
  %744 = fmul fast float %743, %591
  %745 = fadd fast float %744, 1.000000e+00
  %746 = call float @dx.op.dot3.f32(i32 55, float %745, float %745, float %745, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %747 = fsub fast float 1.000000e+00, %746
  %748 = fmul fast float %726, %714
  %749 = fsub fast float 1.000000e+00, %714
  %750 = call float @dx.op.unary.f32(i32 7, float %749)  ; Saturate(value)
  %751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %752 = extractvalue %dx.types.CBufRet.f32 %751, 3
  %753 = fmul fast float %752, %750
  %754 = fadd fast float %753, %748
  %755 = and i32 %133, 2097152
  %756 = icmp eq i32 %755, 0
  br i1 %756, label %761, label %757, !dx.controlflow.hints !72

; <label>:757                                     ; preds = %725
  %758 = add i32 %130, 192
  %759 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %758, i32 undef)  ; BufferLoad(srv,index,wot)
  %760 = extractvalue %dx.types.ResRet.f32 %759, 0
  br label %764

; <label>:761                                     ; preds = %725
  %762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %763 = extractvalue %dx.types.CBufRet.f32 %762, 3
  br label %764

; <label>:764                                     ; preds = %761, %757
  %765 = phi float [ %760, %757 ], [ %763, %761 ]
  %766 = fmul fast float %692, %591
  %767 = fmul fast float %766, %696
  %768 = fmul fast float %767, %699
  %769 = fmul fast float %693, %591
  %770 = fmul fast float %769, %696
  %771 = fmul fast float %770, %700
  %772 = fmul fast float %694, %591
  %773 = fmul fast float %772, %696
  %774 = fmul fast float %773, %701
  %775 = icmp eq i32 %129, 3
  %776 = fcmp fast ogt float %50, %742
  %777 = and i1 %246, %776
  %778 = or i1 %775, %777
  %779 = icmp eq i32 %129, 2
  %780 = fcmp fast ole float %50, %742
  %781 = and i1 %779, %780
  %782 = or i1 %781, %778
  br i1 %777, label %783, label %889

; <label>:783                                     ; preds = %764
  %784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %785 = extractvalue %dx.types.CBufRet.f32 %784, 2
  %786 = extractvalue %dx.types.CBufRet.f32 %784, 3
  %787 = fmul fast float %785, %55
  %788 = fmul fast float %786, %56
  %789 = call float @dx.op.unary.f32(i32 7, float %787)  ; Saturate(value)
  %790 = call float @dx.op.unary.f32(i32 7, float %788)  ; Saturate(value)
  %791 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %19, float %789, float %790, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %792 = extractvalue %dx.types.ResRet.f32 %791, 0
  %793 = extractvalue %dx.types.ResRet.f32 %791, 1
  %794 = extractvalue %dx.types.ResRet.f32 %791, 2
  %795 = extractvalue %dx.types.ResRet.f32 %791, 3
  %796 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %19, float %789, float %790, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %797 = extractvalue %dx.types.ResRet.f32 %796, 0
  %798 = extractvalue %dx.types.ResRet.f32 %796, 1
  %799 = extractvalue %dx.types.ResRet.f32 %796, 2
  %800 = extractvalue %dx.types.ResRet.f32 %796, 3
  %801 = call float @dx.op.binary.f32(i32 35, float %793, float %794)  ; FMax(a,b)
  %802 = call float @dx.op.binary.f32(i32 35, float %792, float %801)  ; FMax(a,b)
  %803 = call float @dx.op.binary.f32(i32 35, float %802, float %795)  ; FMax(a,b)
  %804 = call float @dx.op.binary.f32(i32 36, float %798, float %799)  ; FMin(a,b)
  %805 = call float @dx.op.binary.f32(i32 36, float %797, float %804)  ; FMin(a,b)
  %806 = call float @dx.op.binary.f32(i32 36, float %805, float %800)  ; FMin(a,b)
  %807 = fmul fast float %803, 2.550000e+02
  %808 = fadd fast float %807, 0x3F70101020000000
  %809 = fptoui float %808 to i32
  %810 = fmul fast float %806, 2.550000e+02
  %811 = fadd fast float %810, 0x3F70101020000000
  %812 = fptoui float %811 to i32
  %813 = icmp ult i32 %809, %812
  br i1 %813, label %814, label %865

; <label>:814                                     ; preds = %783
  %815 = fcmp fast ogt float %49, 9.843750e-01
  %816 = fadd fast float %50, -4.000000e+00
  %817 = select i1 %815, float -4.000000e+00, float %816
  %818 = call float @dx.op.binary.f32(i32 35, float %817, float 0.000000e+00)  ; FMax(a,b)
  %819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %820 = extractvalue %dx.types.CBufRet.f32 %819, 0
  %821 = fadd fast float %820, %818
  %822 = extractvalue %dx.types.CBufRet.f32 %819, 2
  %823 = fmul fast float %821, %822
  %824 = call float @dx.op.unary.f32(i32 23, float %823)  ; Log(value)
  %825 = extractvalue %dx.types.CBufRet.f32 %819, 3
  %826 = fmul fast float %825, %824
  %827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %828 = extractvalue %dx.types.CBufRet.f32 %827, 2
  %829 = fmul fast float %826, %828
  %830 = call float @dx.op.unary.f32(i32 7, float %829)  ; Saturate(value)
  %831 = uitofp i32 %809 to float
  %832 = uitofp i32 %812 to float
  %833 = fadd fast float %831, 5.000000e-01
  %834 = fadd fast float %832, 5.000000e-01
  %835 = fmul fast float %828, %833
  %836 = fmul fast float %828, %834
  %837 = fadd fast float %835, 0x3F0FFB4800000000
  %838 = fadd fast float %836, 0xBF0FFB4800000000
  %839 = call float @dx.op.binary.f32(i32 35, float %830, float %837)  ; FMax(a,b)
  %840 = call float @dx.op.binary.f32(i32 36, float %839, float %838)  ; FMin(a,b)
  %841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %842 = extractvalue %dx.types.CBufRet.f32 %841, 1
  %843 = extractvalue %dx.types.CBufRet.f32 %841, 2
  %844 = extractvalue %dx.types.CBufRet.f32 %841, 0
  %845 = fmul fast float %842, %840
  %846 = fadd fast float %844, %845
  %847 = fadd fast float %844, %843
  %848 = fsub fast float %842, %843
  %849 = fadd fast float %848, %844
  %850 = call float @dx.op.binary.f32(i32 35, float %846, float %847)  ; FMax(a,b)
  %851 = call float @dx.op.binary.f32(i32 36, float %850, float %849)  ; FMin(a,b)
  %852 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %18, float %789, float %790, float %851, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %853 = extractvalue %dx.types.ResRet.f32 %852, 0
  %854 = extractvalue %dx.types.ResRet.f32 %852, 1
  %855 = extractvalue %dx.types.ResRet.f32 %852, 2
  %856 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %789, float %790, float %851, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %857 = extractvalue %dx.types.ResRet.f32 %856, 0
  %858 = extractvalue %dx.types.ResRet.f32 %856, 1
  %859 = extractvalue %dx.types.ResRet.f32 %856, 2
  %860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %861 = extractvalue %dx.types.CBufRet.f32 %860, 1
  %862 = fmul fast float %861, %857
  %863 = fmul fast float %861, %858
  %864 = fmul fast float %861, %859
  br label %865

; <label>:865                                     ; preds = %814, %783
  %866 = phi float [ %853, %814 ], [ 1.000000e+00, %783 ]
  %867 = phi float [ %854, %814 ], [ 1.000000e+00, %783 ]
  %868 = phi float [ %855, %814 ], [ 1.000000e+00, %783 ]
  %869 = phi float [ %862, %814 ], [ 0.000000e+00, %783 ]
  %870 = phi float [ %863, %814 ], [ 0.000000e+00, %783 ]
  %871 = phi float [ %864, %814 ], [ 0.000000e+00, %783 ]
  %872 = fmul fast float %869, %747
  %873 = fmul fast float %870, %747
  %874 = fmul fast float %871, %747
  %875 = call float @dx.op.dot3.f32(i32 55, float %866, float %867, float %868, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %876 = call float @dx.op.dot3.f32(i32 55, float %872, float %873, float %874, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %877 = select i1 %113, float %875, float %866
  %878 = select i1 %113, float %875, float %867
  %879 = select i1 %113, float 1.000000e+00, float %868
  %880 = select i1 %113, float %876, float %872
  %881 = select i1 %113, float 0.000000e+00, float %873
  %882 = select i1 %113, float 0.000000e+00, float %874
  %883 = fmul fast float %877, %768
  %884 = fmul fast float %878, %771
  %885 = fmul fast float %879, %774
  %886 = fadd fast float %883, %880
  %887 = fadd fast float %884, %881
  %888 = fadd fast float %882, %885
  br label %889

; <label>:889                                     ; preds = %865, %764
  %890 = phi float [ %742, %865 ], [ %50, %764 ]
  %891 = phi float [ %886, %865 ], [ %768, %764 ]
  %892 = phi float [ %887, %865 ], [ %771, %764 ]
  %893 = phi float [ %888, %865 ], [ %774, %764 ]
  %894 = phi float [ %866, %865 ], [ 1.000000e+00, %764 ]
  br i1 %782, label %1190, label %895

; <label>:895                                     ; preds = %889
  %896 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %19, float %30, float %31, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %897 = extractvalue %dx.types.ResRet.f32 %896, 0
  %898 = extractvalue %dx.types.ResRet.f32 %896, 1
  %899 = extractvalue %dx.types.ResRet.f32 %896, 2
  %900 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %19, float %30, float %31, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %901 = extractvalue %dx.types.ResRet.f32 %900, 0
  %902 = extractvalue %dx.types.ResRet.f32 %900, 1
  %903 = extractvalue %dx.types.ResRet.f32 %900, 2
  %904 = fmul fast float %897, %747
  %905 = fmul fast float %898, %747
  %906 = fmul fast float %899, %747
  %907 = fmul fast float %901, %894
  %908 = call float @dx.op.dot3.f32(i32 55, float %901, float %902, float %903, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %909 = call float @dx.op.dot3.f32(i32 55, float %904, float %905, float %906, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %910 = select i1 %113, float %908, float %901
  %911 = select i1 %113, float %908, float %902
  %912 = select i1 %113, float 1.000000e+00, float %903
  %913 = select i1 %113, float %909, float %904
  %914 = select i1 %113, float 0.000000e+00, float %905
  %915 = select i1 %113, float 0.000000e+00, float %906
  %916 = fmul fast float %910, %891
  %917 = fmul fast float %911, %892
  %918 = fmul fast float %912, %893
  %919 = fadd fast float %916, %913
  %920 = fadd fast float %917, %914
  %921 = fadd fast float %918, %915
  %922 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %923 = extractvalue %dx.types.CBufRet.i32 %922, 0
  %924 = icmp eq i32 %923, 0
  br i1 %924, label %1190, label %925, !dx.controlflow.hints !73

; <label>:925                                     ; preds = %895
  %926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %927 = extractvalue %dx.types.CBufRet.f32 %926, 2
  %928 = extractvalue %dx.types.CBufRet.f32 %926, 3
  %929 = fmul fast float %927, %55
  %930 = fmul fast float %928, %56
  %931 = fmul fast float %929, 2.000000e+00
  %932 = fmul fast float %930, 2.000000e+00
  %933 = fsub fast float 1.000000e+00, %931
  %934 = fsub fast float 1.000000e+00, %932
  %935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %936 = extractvalue %dx.types.CBufRet.f32 %935, 0
  %937 = extractvalue %dx.types.CBufRet.f32 %935, 1
  %938 = extractvalue %dx.types.CBufRet.f32 %935, 2
  %939 = fmul fast float %933, %936
  %940 = fmul fast float %933, %937
  %941 = fmul fast float %933, %938
  %942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %943 = extractvalue %dx.types.CBufRet.f32 %942, 0
  %944 = extractvalue %dx.types.CBufRet.f32 %942, 1
  %945 = extractvalue %dx.types.CBufRet.f32 %942, 2
  %946 = fmul fast float %934, %943
  %947 = fmul fast float %934, %944
  %948 = fmul fast float %934, %945
  %949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %950 = extractvalue %dx.types.CBufRet.f32 %949, 0
  %951 = extractvalue %dx.types.CBufRet.f32 %949, 1
  %952 = extractvalue %dx.types.CBufRet.f32 %949, 2
  %953 = fadd fast float %946, %950
  %954 = fadd fast float %953, %939
  %955 = fadd fast float %947, %951
  %956 = fadd fast float %955, %940
  %957 = fadd fast float %948, %952
  %958 = fadd fast float %957, %941
  %959 = fmul fast float %954, %890
  %960 = fmul fast float %956, %890
  %961 = fmul fast float %958, %890
  %962 = fmul fast float %959, %959
  %963 = fmul fast float %960, %960
  %964 = fadd fast float %962, %963
  %965 = fmul fast float %961, %961
  %966 = fadd fast float %964, %965
  %967 = call float @dx.op.unary.f32(i32 24, float %966)  ; Sqrt(value)
  %968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %969 = extractvalue %dx.types.CBufRet.f32 %968, 0
  %970 = fsub fast float %967, %969
  %971 = extractvalue %dx.types.CBufRet.f32 %968, 2
  %972 = fmul fast float %970, %971
  %973 = call float @dx.op.unary.f32(i32 7, float %972)  ; Saturate(value)
  %974 = fadd fast float %973, -5.000000e-01
  %975 = fmul fast float %974, 2.000000e+00
  %976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %977 = extractvalue %dx.types.CBufRet.f32 %976, 2
  %978 = call float @dx.op.binary.f32(i32 36, float %977, float %975)  ; FMin(a,b)
  %979 = fsub fast float -0.000000e+00, %977
  %980 = fcmp fast ogt float %978, %979
  br i1 %980, label %981, label %1190, !dx.controlflow.hints !74

; <label>:981                                     ; preds = %925
  %982 = fmul fast float %978, 5.000000e-01
  %983 = fadd fast float %982, 5.000000e-01
  %984 = call float @dx.op.unary.f32(i32 22, float %983)  ; Frc(value)
  %985 = call float @dx.op.unary.f32(i32 27, float %984)  ; Round_ni(value)
  %986 = call float @dx.op.unary.f32(i32 22, float %984)  ; Frc(value)
  %987 = fmul fast float %986, 2.000000e+00
  %988 = fadd fast float %987, -1.000000e+00
  %989 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %19, float %929, float %930, float %985, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %990 = extractvalue %dx.types.ResRet.f32 %989, 0
  %991 = extractvalue %dx.types.ResRet.f32 %989, 1
  %992 = extractvalue %dx.types.ResRet.f32 %989, 2
  %993 = extractvalue %dx.types.ResRet.f32 %989, 3
  %994 = fadd fast float %990, -5.000000e-01
  %995 = fadd fast float %992, -5.000000e-01
  %996 = fmul fast float %994, 0xBFD5555560000000
  %997 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %995, float %996)  ; FMad(a,b,c)
  %998 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %991, float 0.000000e+00)  ; FMad(a,b,c)
  %999 = fadd fast float %998, %993
  %1000 = fmul fast float %994, -7.500000e-01
  %1001 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %995, float %1000)  ; FMad(a,b,c)
  %1002 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %991, float 0.000000e+00)  ; FMad(a,b,c)
  %1003 = fadd fast float %1002, %993
  %1004 = call float @dx.op.binary.f32(i32 35, float %997, float -1.000000e+00)  ; FMax(a,b)
  %1005 = call float @dx.op.binary.f32(i32 35, float %999, float -1.000000e+00)  ; FMax(a,b)
  %1006 = call float @dx.op.binary.f32(i32 35, float %1001, float -1.000000e+00)  ; FMax(a,b)
  %1007 = call float @dx.op.binary.f32(i32 35, float %1003, float -1.000000e+00)  ; FMax(a,b)
  %1008 = call float @dx.op.binary.f32(i32 36, float %1004, float 1.000000e+00)  ; FMin(a,b)
  %1009 = call float @dx.op.binary.f32(i32 36, float %1005, float 1.000000e+00)  ; FMin(a,b)
  %1010 = call float @dx.op.binary.f32(i32 36, float %1006, float 1.000000e+00)  ; FMin(a,b)
  %1011 = call float @dx.op.binary.f32(i32 36, float %1007, float 1.000000e+00)  ; FMin(a,b)
  %1012 = fcmp fast olt float %1008, 0x3FEFFF8020000000
  br i1 %1012, label %1013, label %1128, !dx.controlflow.hints !75

; <label>:1013                                    ; preds = %981
  %1014 = extractvalue %dx.types.CBufRet.f32 %976, 3
  %1015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1016 = extractvalue %dx.types.CBufRet.f32 %1015, 0
  %1017 = extractvalue %dx.types.CBufRet.f32 %1015, 1
  %1018 = extractvalue %dx.types.CBufRet.f32 %1015, 2
  %1019 = extractvalue %dx.types.CBufRet.f32 %1015, 3
  %1020 = fsub fast float %1016, %1008
  %1021 = fsub fast float %1017, %1009
  %1022 = fsub fast float %1018, %1010
  %1023 = fsub fast float %1019, %1011
  %1024 = fmul fast float %1020, %1014
  %1025 = fmul fast float %1021, %1014
  %1026 = fmul fast float %1022, %1014
  %1027 = fmul fast float %1023, %1014
  %1028 = fadd fast float %1024, %1008
  %1029 = fadd fast float %1025, %1009
  %1030 = fsub fast float -0.000000e+00, %1029
  %1031 = fadd fast float %1026, %1010
  %1032 = fadd fast float %1027, %1011
  %1033 = fmul fast float %1028, %1028
  %1034 = fsub fast float %1029, %1033
  %1035 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1034)  ; FMax(a,b)
  %1036 = fdiv fast float 1.000000e+00, %1035
  %1037 = fmul fast float %1029, %1028
  %1038 = fsub fast float %1031, %1037
  %1039 = fsub fast float %988, %1028
  %1040 = fmul fast float %988, %988
  %1041 = fsub fast float %1040, %1029
  %1042 = fmul fast float %1039, %1036
  %1043 = fmul fast float %1042, %1038
  %1044 = fsub fast float %1041, %1043
  %1045 = fmul fast float %1029, %1029
  %1046 = fsub fast float %1032, %1045
  %1047 = fmul fast float %1038, %1038
  %1048 = fmul fast float %1047, %1036
  %1049 = fsub fast float %1046, %1048
  %1050 = fdiv fast float %1044, %1049
  %1051 = fmul fast float %1038, %1050
  %1052 = fsub fast float %1039, %1051
  %1053 = fmul fast float %1052, %1036
  %1054 = fmul fast float %1053, %1028
  %1055 = fsub fast float 1.000000e+00, %1054
  %1056 = fmul fast float %1029, %1050
  %1057 = fsub fast float %1055, %1056
  %1058 = fmul fast float %1053, %1053
  %1059 = fmul fast float %1050, 4.000000e+00
  %1060 = fmul fast float %1059, %1057
  %1061 = fsub fast float %1058, %1060
  %1062 = call float @dx.op.unary.f32(i32 24, float %1061)  ; Sqrt(value)
  %1063 = fcmp fast oge float %1053, 0.000000e+00
  %1064 = fsub fast float -0.000000e+00, %1062
  %1065 = select i1 %1063, float %1064, float %1062
  %1066 = fsub fast float %1065, %1053
  %1067 = fdiv fast float %1066, %1050
  %1068 = fdiv fast float %1057, %1066
  %1069 = fmul fast float %1067, 5.000000e-01
  %1070 = fmul fast float %1068, 2.000000e+00
  %1071 = select i1 %1063, float %1069, float %1070
  %1072 = select i1 %1063, float %1070, float %1069
  %1073 = call float @dx.op.binary.f32(i32 35, float %1071, float %1072)  ; FMax(a,b)
  %1074 = call float @dx.op.binary.f32(i32 36, float %1071, float %1072)  ; FMin(a,b)
  %1075 = fcmp fast ogt float %988, %1074
  br i1 %1075, label %1076, label %1086

; <label>:1076                                    ; preds = %1013
  %1077 = fsub fast float %988, %1074
  %1078 = fsub fast float %1073, %1074
  %1079 = fmul fast float %1077, %1078
  %1080 = fmul fast float %1073, %988
  %1081 = fadd fast float %1073, %988
  %1082 = fmul fast float %1081, %1028
  %1083 = fadd fast float %1080, %1029
  %1084 = fsub fast float %1083, %1082
  %1085 = fdiv fast float %1084, %1079
  br label %1086

; <label>:1086                                    ; preds = %1076, %1013
  %1087 = phi float [ %1085, %1076 ], [ 0.000000e+00, %1013 ]
  %1088 = fcmp fast ogt float %988, %1073
  %1089 = fsub fast float %988, %1073
  br i1 %1088, label %1090, label %1100

; <label>:1090                                    ; preds = %1086
  %1091 = fsub fast float %1073, %1074
  %1092 = fmul fast float %1091, %1089
  %1093 = fmul fast float %1074, %988
  %1094 = fadd fast float %1074, %988
  %1095 = fmul fast float %1094, %1028
  %1096 = fsub fast float %1030, %1093
  %1097 = fadd fast float %1096, %1095
  %1098 = fdiv fast float %1097, %1092
  %1099 = fadd fast float %1098, %1087
  br label %1100

; <label>:1100                                    ; preds = %1090, %1086
  %1101 = phi float [ %1099, %1090 ], [ %1087, %1086 ]
  %1102 = fsub fast float %988, %1074
  %1103 = fmul fast float %1102, %1089
  %1104 = fmul fast float %1074, %1073
  %1105 = fadd fast float %1074, %1073
  %1106 = fmul fast float %1105, %1028
  %1107 = fadd fast float %1104, %1029
  %1108 = fsub fast float %1107, %1106
  %1109 = fdiv fast float %1108, %1103
  %1110 = call float @dx.op.unary.f32(i32 7, float %1101)  ; Saturate(value)
  %1111 = fcmp fast oeq float %765, 0.000000e+00
  %1112 = extractvalue %dx.types.CBufRet.f32 %976, 0
  %1113 = fcmp fast oeq float %1112, 0.000000e+00
  %1114 = or i1 %1111, %1113
  %1115 = fmul fast float %1112, 2.000000e+00
  %1116 = fadd fast float %977, %978
  %1117 = fdiv fast float %1116, %1115
  %1118 = call float @dx.op.unary.f32(i32 7, float %1117)  ; Saturate(value)
  %1119 = fmul fast float %1118, 2.000000e+00
  %1120 = fsub fast float 3.000000e+00, %1119
  %1121 = fmul fast float %1118, %1118
  %1122 = fmul fast float %1121, %1120
  %1123 = select i1 %1114, float 1.000000e+00, float %1122
  %1124 = fmul fast float %1109, %765
  %1125 = fadd fast float %1110, %1124
  %1126 = call float @dx.op.unary.f32(i32 7, float %1125)  ; Saturate(value)
  %1127 = fmul fast float %1123, %1126
  br label %1128

; <label>:1128                                    ; preds = %1100, %981
  %1129 = phi float [ %1127, %1100 ], [ 0.000000e+00, %981 ]
  %1130 = fsub fast float 1.000000e+00, %1129
  %1131 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %19, float %929, float %930, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1132 = extractvalue %dx.types.ResRet.f32 %1131, 0
  %1133 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1134 = extractvalue %dx.types.CBufRet.i32 %1133, 2
  %1135 = icmp eq i32 %1134, 0
  br i1 %1135, label %1141, label %1136

; <label>:1136                                    ; preds = %1128
  %1137 = call float @dx.op.unary.f32(i32 7, float %1129)  ; Saturate(value)
  %1138 = fadd fast float %1132, -1.000000e+00
  %1139 = fmul fast float %1137, %1138
  %1140 = fadd fast float %1139, 1.000000e+00
  br label %1141

; <label>:1141                                    ; preds = %1136, %1128
  %1142 = phi float [ %1140, %1136 ], [ %1130, %1128 ]
  %1143 = call float @dx.op.binary.f32(i32 35, float %1132, float %1142)  ; FMax(a,b)
  %1144 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1145 = extractvalue %dx.types.CBufRet.i32 %1144, 2
  %1146 = and i32 %1145, 1
  %1147 = icmp eq i32 %1146, 0
  %1148 = fcmp fast une float %1143, 1.000000e+00
  %1149 = and i1 %1148, %1147
  br i1 %1149, label %1150, label %1169

; <label>:1150                                    ; preds = %1141
  %1151 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %929, float %930, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1152 = extractvalue %dx.types.ResRet.f32 %1151, 0
  %1153 = extractvalue %dx.types.ResRet.f32 %1151, 1
  %1154 = extractvalue %dx.types.ResRet.f32 %1151, 2
  %1155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1156 = extractvalue %dx.types.CBufRet.f32 %1155, 1
  %1157 = fmul fast float %1156, %1152
  %1158 = fmul fast float %1156, %1153
  %1159 = fmul fast float %1156, %1154
  %1160 = fcmp fast ogt float %1132, 0x3FEFFF2E40000000
  %1161 = fsub fast float 1.000000e+00, %1143
  %1162 = fsub fast float 1.000000e+00, %1132
  %1163 = fdiv fast float %1161, %1162
  %1164 = call float @dx.op.unary.f32(i32 7, float %1163)  ; Saturate(value)
  %1165 = select i1 %1160, float 0.000000e+00, float %1164
  %1166 = fmul fast float %1157, %1165
  %1167 = fmul fast float %1158, %1165
  %1168 = fmul fast float %1159, %1165
  br label %1169

; <label>:1169                                    ; preds = %1150, %1141
  %1170 = phi float [ 0.000000e+00, %1141 ], [ %1166, %1150 ]
  %1171 = phi float [ 0.000000e+00, %1141 ], [ %1167, %1150 ]
  %1172 = phi float [ 0.000000e+00, %1141 ], [ %1168, %1150 ]
  %1173 = fmul fast float %1170, %747
  %1174 = fmul fast float %1171, %747
  %1175 = fmul fast float %1172, %747
  %1176 = fmul fast float %1143, %907
  %1177 = call float @dx.op.dot3.f32(i32 55, float %1143, float %1143, float %1143, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1178 = call float @dx.op.dot3.f32(i32 55, float %1173, float %1174, float %1175, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1179 = select i1 %113, float %1177, float %1143
  %1180 = select i1 %113, float 1.000000e+00, float %1143
  %1181 = select i1 %113, float %1178, float %1173
  %1182 = select i1 %113, float 0.000000e+00, float %1174
  %1183 = select i1 %113, float 0.000000e+00, float %1175
  %1184 = fmul fast float %1179, %919
  %1185 = fmul fast float %1179, %920
  %1186 = fmul fast float %1180, %921
  %1187 = fadd fast float %1184, %1181
  %1188 = fadd fast float %1185, %1182
  %1189 = fadd fast float %1183, %1186
  br label %1190

; <label>:1190                                    ; preds = %1169, %925, %895, %889
  %1191 = phi float [ %891, %889 ], [ %919, %895 ], [ %1187, %1169 ], [ %919, %925 ]
  %1192 = phi float [ %892, %889 ], [ %920, %895 ], [ %1188, %1169 ], [ %920, %925 ]
  %1193 = phi float [ %893, %889 ], [ %921, %895 ], [ %1189, %1169 ], [ %921, %925 ]
  %1194 = phi float [ %894, %889 ], [ %907, %895 ], [ %1176, %1169 ], [ %907, %925 ]
  %1195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1196 = extractvalue %dx.types.CBufRet.f32 %1195, 2
  %1197 = extractvalue %dx.types.CBufRet.f32 %1195, 3
  %1198 = fmul fast float %1196, %55
  %1199 = fmul fast float %1197, %56
  %1200 = call float @dx.op.unary.f32(i32 7, float %1198)  ; Saturate(value)
  %1201 = call float @dx.op.unary.f32(i32 7, float %1199)  ; Saturate(value)
  %1202 = select i1 %782, i32 2, i32 0
  %1203 = or i32 %1202, 1
  %1204 = uitofp i32 %1203 to float
  %1205 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %19, float %1200, float %1201, float %1204, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1206 = extractvalue %dx.types.ResRet.f32 %1205, 0
  %1207 = extractvalue %dx.types.ResRet.f32 %1205, 1
  %1208 = extractvalue %dx.types.ResRet.f32 %1205, 2
  %1209 = extractvalue %dx.types.ResRet.f32 %1205, 3
  %1210 = add nuw nsw i32 %1202, 2
  %1211 = uitofp i32 %1210 to float
  %1212 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %19, float %1200, float %1201, float %1211, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1213 = extractvalue %dx.types.ResRet.f32 %1212, 0
  %1214 = extractvalue %dx.types.ResRet.f32 %1212, 1
  %1215 = extractvalue %dx.types.ResRet.f32 %1212, 2
  %1216 = extractvalue %dx.types.ResRet.f32 %1212, 3
  %1217 = call float @dx.op.binary.f32(i32 35, float %1207, float %1208)  ; FMax(a,b)
  %1218 = call float @dx.op.binary.f32(i32 35, float %1206, float %1217)  ; FMax(a,b)
  %1219 = call float @dx.op.binary.f32(i32 35, float %1218, float %1209)  ; FMax(a,b)
  %1220 = call float @dx.op.binary.f32(i32 36, float %1214, float %1215)  ; FMin(a,b)
  %1221 = call float @dx.op.binary.f32(i32 36, float %1213, float %1220)  ; FMin(a,b)
  %1222 = call float @dx.op.binary.f32(i32 36, float %1221, float %1216)  ; FMin(a,b)
  %1223 = fmul fast float %1219, 2.550000e+02
  %1224 = fadd fast float %1223, 0x3F70101020000000
  %1225 = fptoui float %1224 to i32
  %1226 = fmul fast float %1222, 2.550000e+02
  %1227 = fadd fast float %1226, 0x3F70101020000000
  %1228 = fptoui float %1227 to i32
  %1229 = icmp ult i32 %1225, %1228
  br i1 %1229, label %1230, label %1282

; <label>:1230                                    ; preds = %1190
  %1231 = fcmp fast ogt float %49, 9.843750e-01
  %1232 = fadd fast float %890, -4.000000e+00
  %1233 = select i1 %1231, float -4.000000e+00, float %1232
  %1234 = call float @dx.op.binary.f32(i32 35, float %1233, float 0.000000e+00)  ; FMax(a,b)
  %1235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1236 = extractvalue %dx.types.CBufRet.f32 %1235, 0
  %1237 = fadd fast float %1236, %1234
  %1238 = extractvalue %dx.types.CBufRet.f32 %1235, 2
  %1239 = fmul fast float %1237, %1238
  %1240 = call float @dx.op.unary.f32(i32 23, float %1239)  ; Log(value)
  %1241 = extractvalue %dx.types.CBufRet.f32 %1235, 3
  %1242 = fmul fast float %1241, %1240
  %1243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1244 = extractvalue %dx.types.CBufRet.f32 %1243, 2
  %1245 = fmul fast float %1242, %1244
  %1246 = call float @dx.op.unary.f32(i32 7, float %1245)  ; Saturate(value)
  %1247 = uitofp i32 %1225 to float
  %1248 = uitofp i32 %1228 to float
  %1249 = fadd fast float %1247, 5.000000e-01
  %1250 = fadd fast float %1248, 5.000000e-01
  %1251 = fmul fast float %1244, %1249
  %1252 = fmul fast float %1244, %1250
  %1253 = fadd fast float %1251, 0x3F0FFB4800000000
  %1254 = fadd fast float %1252, 0xBF0FFB4800000000
  %1255 = call float @dx.op.binary.f32(i32 35, float %1246, float %1253)  ; FMax(a,b)
  %1256 = call float @dx.op.binary.f32(i32 36, float %1255, float %1254)  ; FMin(a,b)
  %1257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1258 = extractvalue %dx.types.CBufRet.f32 %1257, 1
  %1259 = extractvalue %dx.types.CBufRet.f32 %1257, 2
  %1260 = extractvalue %dx.types.CBufRet.f32 %1257, 0
  %1261 = select i1 %782, float %1260, float 0.000000e+00
  %1262 = fmul fast float %1258, %1256
  %1263 = fadd fast float %1261, %1262
  %1264 = fadd fast float %1261, %1259
  %1265 = fsub fast float %1258, %1259
  %1266 = fadd fast float %1265, %1261
  %1267 = call float @dx.op.binary.f32(i32 35, float %1263, float %1264)  ; FMax(a,b)
  %1268 = call float @dx.op.binary.f32(i32 36, float %1267, float %1266)  ; FMin(a,b)
  %1269 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %18, float %1200, float %1201, float %1268, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1270 = extractvalue %dx.types.ResRet.f32 %1269, 0
  %1271 = extractvalue %dx.types.ResRet.f32 %1269, 1
  %1272 = extractvalue %dx.types.ResRet.f32 %1269, 2
  %1273 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %1200, float %1201, float %1268, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1274 = extractvalue %dx.types.ResRet.f32 %1273, 0
  %1275 = extractvalue %dx.types.ResRet.f32 %1273, 1
  %1276 = extractvalue %dx.types.ResRet.f32 %1273, 2
  %1277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1278 = extractvalue %dx.types.CBufRet.f32 %1277, 1
  %1279 = fmul fast float %1278, %1274
  %1280 = fmul fast float %1278, %1275
  %1281 = fmul fast float %1278, %1276
  br label %1282

; <label>:1282                                    ; preds = %1230, %1190
  %1283 = phi float [ %1270, %1230 ], [ 1.000000e+00, %1190 ]
  %1284 = phi float [ %1271, %1230 ], [ 1.000000e+00, %1190 ]
  %1285 = phi float [ %1272, %1230 ], [ 1.000000e+00, %1190 ]
  %1286 = phi float [ %1279, %1230 ], [ 0.000000e+00, %1190 ]
  %1287 = phi float [ %1280, %1230 ], [ 0.000000e+00, %1190 ]
  %1288 = phi float [ %1281, %1230 ], [ 0.000000e+00, %1190 ]
  %1289 = fmul fast float %1286, %747
  %1290 = fmul fast float %1287, %747
  %1291 = fmul fast float %1288, %747
  %1292 = fmul fast float %1283, %1194
  %1293 = call float @dx.op.dot3.f32(i32 55, float %1283, float %1284, float %1285, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1294 = call float @dx.op.dot3.f32(i32 55, float %1289, float %1290, float %1291, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1295 = select i1 %113, float %1293, float %1283
  %1296 = select i1 %113, float %1293, float %1284
  %1297 = select i1 %113, float 1.000000e+00, float %1285
  %1298 = select i1 %113, float %1294, float %1289
  %1299 = select i1 %113, float 0.000000e+00, float %1290
  %1300 = select i1 %113, float 0.000000e+00, float %1291
  %1301 = fmul fast float %1295, %1191
  %1302 = fmul fast float %1296, %1192
  %1303 = fmul fast float %1297, %1193
  %1304 = fadd fast float %1301, %1298
  %1305 = fadd fast float %1302, %1299
  %1306 = fadd fast float %1300, %1303
  %1307 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1308 = extractvalue %dx.types.CBufRet.i32 %1307, 3
  %1309 = and i32 %1308, 3
  %1310 = icmp ne i32 %1309, 0
  %1311 = and i32 %1308, 4
  %1312 = icmp ne i32 %1311, 0
  %1313 = and i1 %1310, %1312
  %1314 = and i1 %113, %1313
  br i1 %1314, label %1315, label %1321

; <label>:1315                                    ; preds = %1282
  %1316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1317 = extractvalue %dx.types.CBufRet.f32 %1316, 1
  %1318 = fadd fast float %1292, -1.000000e+00
  %1319 = fmul fast float %1317, %1318
  %1320 = fadd fast float %1319, 1.000000e+00
  br label %1321

; <label>:1321                                    ; preds = %1315, %1282
  %1322 = phi float [ %1320, %1315 ], [ %1292, %1282 ]
  %1323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1324 = extractvalue %dx.types.CBufRet.f32 %1323, 0
  br i1 %113, label %1325, label %1346

; <label>:1325                                    ; preds = %1321
  %1326 = fadd fast float %1304, %1305
  %1327 = fmul fast float %1324, %1326
  %1328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1329 = extractvalue %dx.types.CBufRet.f32 %1328, 3
  %1330 = extractvalue %dx.types.CBufRet.f32 %751, 1
  %1331 = fsub fast float %754, %1330
  %1332 = extractvalue %dx.types.CBufRet.f32 %751, 2
  %1333 = fmul fast float %1331, %1332
  %1334 = call float @dx.op.unary.f32(i32 7, float %1333)  ; Saturate(value)
  %1335 = fsub fast float %1334, %1329
  %1336 = fmul fast float %1335, %1322
  %1337 = fadd fast float %1336, %1329
  %1338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1339 = extractvalue %dx.types.CBufRet.f32 %1338, 0
  %1340 = fsub fast float %1337, %1339
  %1341 = fmul fast float %1340, 1.000000e+01
  %1342 = call float @dx.op.unary.f32(i32 7, float %1341)  ; Saturate(value)
  %1343 = fmul fast float %1342, %747
  %1344 = fsub fast float %747, %1343
  %1345 = fmul fast float %1344, %1337
  br label %1355

; <label>:1346                                    ; preds = %1321
  %1347 = fmul fast float %1324, %1304
  %1348 = fmul fast float %1324, %1305
  %1349 = fmul fast float %1324, %1306
  %1350 = call float @dx.op.binary.f32(i32 35, float %1348, float %1349)  ; FMax(a,b)
  %1351 = call float @dx.op.binary.f32(i32 35, float %1347, float %1350)  ; FMax(a,b)
  %1352 = call float @dx.op.binary.f32(i32 35, float %1351, float %747)  ; FMax(a,b)
  %1353 = fcmp fast ugt float %1352, 0x3F10000000000000
  br i1 %1353, label %1355, label %1354

; <label>:1354                                    ; preds = %1346
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1355

; <label>:1355                                    ; preds = %1354, %1346, %1325
  %1356 = phi float [ %1327, %1325 ], [ %1347, %1354 ], [ %1347, %1346 ]
  %1357 = phi float [ %1345, %1325 ], [ %1348, %1354 ], [ %1348, %1346 ]
  %1358 = phi float [ %1344, %1325 ], [ %1349, %1354 ], [ %1349, %1346 ]
  %1359 = phi float [ %1344, %1325 ], [ %747, %1354 ], [ %747, %1346 ]
  %1360 = fadd fast float %528, 0x3FE3C6EF40000000
  %1361 = call float @dx.op.unary.f32(i32 22, float %1360)  ; Frc(value)
  %1362 = call float @dx.op.unary.f32(i32 23, float %1356)  ; Log(value)
  %1363 = fadd fast float %1362, -7.000000e+00
  %1364 = call float @dx.op.unary.f32(i32 21, float %1363)  ; Exp(value)
  %1365 = fmul fast float %1361, 2.000000e+00
  %1366 = fadd fast float %1365, -1.000000e+00
  %1367 = fmul fast float %1364, %1366
  %1368 = fcmp fast ogt float %1356, 0.000000e+00
  %1369 = select i1 %1368, float %1367, float 0.000000e+00
  %1370 = fadd fast float %1369, %1356
  %1371 = fadd fast float %528, 0x3FF3C6EF40000000
  %1372 = call float @dx.op.unary.f32(i32 22, float %1371)  ; Frc(value)
  %1373 = call float @dx.op.unary.f32(i32 23, float %1357)  ; Log(value)
  %1374 = fadd fast float %1373, -7.000000e+00
  %1375 = call float @dx.op.unary.f32(i32 21, float %1374)  ; Exp(value)
  %1376 = fmul fast float %1372, 2.000000e+00
  %1377 = fadd fast float %1376, -1.000000e+00
  %1378 = fmul fast float %1375, %1377
  %1379 = fcmp fast ogt float %1357, 0.000000e+00
  %1380 = select i1 %1379, float %1378, float 0.000000e+00
  %1381 = fadd fast float %1380, %1357
  %1382 = fadd fast float %528, 0x3FFDAA66E0000000
  %1383 = call float @dx.op.unary.f32(i32 22, float %1382)  ; Frc(value)
  %1384 = call float @dx.op.unary.f32(i32 23, float %1358)  ; Log(value)
  %1385 = fadd fast float %1384, -6.000000e+00
  %1386 = call float @dx.op.unary.f32(i32 21, float %1385)  ; Exp(value)
  %1387 = fmul fast float %1383, 2.000000e+00
  %1388 = fadd fast float %1387, -1.000000e+00
  %1389 = fmul fast float %1386, %1388
  %1390 = fcmp fast ogt float %1358, 0.000000e+00
  %1391 = select i1 %1390, float %1389, float 0.000000e+00
  %1392 = fadd fast float %1391, %1358
  %1393 = select i1 %113, float %1357, float %1381
  %1394 = select i1 %113, float %1358, float %1392
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1395 = call float @dx.op.binary.f32(i32 36, float %1370, float 3.225500e+04)  ; FMin(a,b)
  %1396 = call float @dx.op.binary.f32(i32 36, float %1393, float 3.225500e+04)  ; FMin(a,b)
  %1397 = call float @dx.op.binary.f32(i32 36, float %1394, float 3.225500e+04)  ; FMin(a,b)
  %1398 = call float @dx.op.binary.f32(i32 36, float %1359, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1395)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1396)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1397)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1398)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1359)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1359)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1359)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1359)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!36 = !{[41 x i32] [i32 39, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255]}
!37 = !{void ()* @ps_main, !"ps_main", !38, !4, !64}
!38 = !{!39, !61, null}
!39 = !{!40, !43, !44, !46, !49, !51, !53, !55, !57, !58, !60}
!40 = !{i32 0, !"SV_Position", i8 9, i8 3, !41, i8 4, i32 1, i8 4, i32 0, i8 0, !42}
!41 = !{i32 0}
!42 = !{i32 3, i32 15}
!43 = !{i32 1, !"COLOR", i8 9, i8 0, !41, i8 2, i32 1, i8 4, i32 1, i8 0, !42}
!44 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !41, i8 2, i32 1, i8 2, i32 2, i8 0, !45}
!45 = !{i32 3, i32 3}
!46 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !47, i8 2, i32 1, i8 3, i32 3, i8 0, !48}
!47 = !{i32 1}
!48 = !{i32 3, i32 7}
!49 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !50, i8 1, i32 1, i8 4, i32 4, i8 0, !48}
!50 = !{i32 2}
!51 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 5, i8 0, !48}
!52 = !{i32 3}
!53 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !54, i8 3, i32 1, i8 2, i32 6, i8 0, !45}
!54 = !{i32 5}
!55 = !{i32 7, !"TEXCOORD", i8 9, i8 0, !56, i8 2, i32 1, i8 4, i32 7, i8 0, null}
!56 = !{i32 8}
!57 = !{i32 8, !"QUAD_POSITION", i8 9, i8 0, !41, i8 1, i32 1, i8 4, i32 8, i8 0, !42}
!58 = !{i32 9, !"COLOR", i8 5, i8 0, !52, i8 1, i32 1, i8 3, i32 9, i8 0, !59}
!59 = !{i32 3, i32 5}
!60 = !{i32 10, !"SV_SampleIndex", i8 5, i8 12, !41, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!61 = !{!62, !63}
!62 = !{i32 0, !"SV_Target", i8 9, i8 16, !41, i8 0, i32 1, i8 4, i32 0, i8 0, !42}
!63 = !{i32 1, !"SV_Target", i8 9, i8 16, !47, i8 0, i32 1, i8 4, i32 1, i8 0, !42}
!64 = !{i32 0, i64 24}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}

