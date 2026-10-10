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
; TEXCOORD                 4   xyzw        6     NONE   float   xyzw
; TEXCOORD                 5   xy          7     NONE   float   xy  
; TEXCOORD                 8   xyzw        8     NONE   float       
; QUAD_POSITION            0   xyzw        9     NONE   float   xyzw
; COLOR                    3   xyz        10     NONE    uint   x z 
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
; shader hash: bc5b9cf6d4dd2babf3957440f2453c2a
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
;                                   texture     f32          1d     T17     t30,space2     1
;                                   texture     f32          3d     T18     t44,space2     1
;                                   texture     f32          3d     T19     t45,space2     1
;                                   texture     f32     2darray     T20     t47,space2     1
;                                   textureunorm_f32     2darray     T21     t85,space2     1
;                                   texture     f32          2d     T22     t83,space2     1
;                                   texture     f32          2d     T23     t86,space2     1
;                                   texture    byte         r/o     T24             t1     1
;                                   texture     f32          3d     T25     t46,space2     1
;
;
; ViewId state:
;
; Number of inputs: 43, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 24, 25, 26, 27, 28, 29, 36, 37, 38, 39, 40, 42 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 24, 25, 26, 27, 28, 29, 36, 37, 38, 39, 40, 42 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 24, 25, 26, 27, 28, 29, 36, 37, 38, 39, 40, 42 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 36, 37, 38, 39, 40, 42 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 36, 37, 38, 39, 40, 42 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 36, 37, 38, 39, 40, 42 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 36, 37, 38, 39, 40, 42 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 36, 37, 38, 39, 40, 42 }
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
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 77, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 78, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = alloca [3 x float], align 4
  %64 = alloca [3 x float], align 4
  %65 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %66 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 0
  %69 = fmul fast float %68, %59
  %70 = fmul fast float %68, %60
  %71 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.f32 %71, 2
  %73 = extractvalue %dx.types.CBufRet.f32 %71, 3
  %74 = fmul fast float %69, 2.000000e+00
  %75 = fmul fast float %74, %72
  %76 = fmul fast float %70, 2.000000e+00
  %77 = fmul fast float %76, %73
  %78 = fsub fast float 1.000000e+00, %75
  %79 = fsub fast float 1.000000e+00, %77
  %80 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.f32 %80, 0
  %82 = extractvalue %dx.types.CBufRet.f32 %80, 1
  %83 = extractvalue %dx.types.CBufRet.f32 %80, 2
  %84 = fmul fast float %78, %81
  %85 = fmul fast float %78, %82
  %86 = fmul fast float %78, %83
  %87 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %88 = extractvalue %dx.types.CBufRet.f32 %87, 0
  %89 = extractvalue %dx.types.CBufRet.f32 %87, 1
  %90 = extractvalue %dx.types.CBufRet.f32 %87, 2
  %91 = fmul fast float %79, %88
  %92 = fmul fast float %79, %89
  %93 = fmul fast float %79, %90
  %94 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.f32 %94, 0
  %96 = extractvalue %dx.types.CBufRet.f32 %94, 1
  %97 = extractvalue %dx.types.CBufRet.f32 %94, 2
  %98 = fadd fast float %91, %95
  %99 = fadd fast float %98, %84
  %100 = fadd fast float %92, %96
  %101 = fadd fast float %100, %85
  %102 = fadd fast float %93, %97
  %103 = fadd fast float %102, %86
  %104 = fmul fast float %99, %62
  %105 = fmul fast float %101, %62
  %106 = fmul fast float %103, %62
  %107 = fmul fast float %45, %42
  %108 = fmul fast float %46, %41
  %109 = fsub fast float %107, %108
  %110 = fmul fast float %46, %40
  %111 = fmul fast float %44, %42
  %112 = fsub fast float %110, %111
  %113 = fmul fast float %44, %41
  %114 = fmul fast float %45, %40
  %115 = fsub fast float %113, %114
  %116 = fmul fast float %109, %43
  %117 = fmul fast float %112, %43
  %118 = fmul fast float %115, %43
  %119 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.i32 %119, 3
  %121 = and i32 %120, 3
  %122 = icmp ne i32 %121, 0
  %123 = and i32 %120, 4
  %124 = icmp ne i32 %123, 0
  %125 = and i1 %122, %124
  br i1 %125, label %126, label %135

; <label>:126                                     ; preds = %0
  %127 = fmul fast float %73, %70
  %128 = fmul fast float %72, %69
  %129 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %27, float %128, float %127, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %130 = extractvalue %dx.types.ResRet.f32 %129, 0
  %131 = fsub fast float 1.000000e+00, %130
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.f32 %132, 0
  %134 = fcmp fast olt float %131, %133
  br label %138

; <label>:135                                     ; preds = %0
  %136 = icmp eq i32 %123, 0
  %137 = and i1 %122, %136
  br label %138

; <label>:138                                     ; preds = %135, %126
  %139 = phi i1 [ %134, %126 ], [ %137, %135 ]
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 2
  %142 = extractvalue %dx.types.CBufRet.f32 %140, 3
  %143 = fmul fast float %141, %69
  %144 = fmul fast float %142, %70
  %145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %146 = extractvalue %dx.types.ResRet.i32 %145, 0
  %147 = and i32 %146, 114688
  %148 = icmp ne i32 %147, 0
  %149 = select i1 %148, float %143, float 0.000000e+00
  %150 = select i1 %148, float %144, float 0.000000e+00
  %151 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %28, float %149, float %150, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %152 = extractvalue %dx.types.ResRet.f32 %151, 0
  %153 = fmul fast float %152, 2.550000e+02
  %154 = fptoui float %153 to i32
  %155 = select i1 %148, i32 %154, i32 0
  %156 = mul i32 %32, 208
  %157 = add i32 %156, 188
  %158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %157, i32 undef)  ; BufferLoad(srv,index,wot)
  %159 = extractvalue %dx.types.ResRet.i32 %158, 0
  %160 = and i32 %120, 114688
  %161 = and i32 %120, 8
  %162 = icmp ne i32 %161, 0
  %163 = or i1 %139, %162
  %164 = select i1 %163, i32 %160, i32 16384
  %165 = and i32 %164, %159
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %168

; <label>:167                                     ; preds = %138
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %168

; <label>:168                                     ; preds = %167, %138
  %169 = and i32 %159, 512
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %195, label %171

; <label>:171                                     ; preds = %168
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.f32 %172, 2
  %174 = extractvalue %dx.types.CBufRet.f32 %172, 3
  %175 = fmul fast float %173, %69
  %176 = fmul fast float %174, %70
  %177 = extractvalue %dx.types.CBufRet.f32 %172, 0
  %178 = extractvalue %dx.types.CBufRet.f32 %172, 1
  %179 = fdiv fast float %177, %178
  %180 = fcmp fast ogt float %179, 0x3FFC71C720000000
  br i1 %180, label %181, label %187

; <label>:181                                     ; preds = %171
  %182 = fdiv fast float 0x3FFC71C720000000, %179
  %183 = fmul fast float %182, %176
  %184 = fsub fast float 1.000000e+00, %182
  %185 = fmul fast float %184, 5.000000e-01
  %186 = fadd fast float %185, %183
  br label %195

; <label>:187                                     ; preds = %171
  %188 = fcmp fast olt float %179, 0x3FFC71C720000000
  br i1 %188, label %189, label %195

; <label>:189                                     ; preds = %187
  %190 = fmul fast float %175, 5.625000e-01
  %191 = fmul fast float %190, %179
  %192 = fmul fast float %179, 2.812500e-01
  %193 = fsub fast float 5.000000e-01, %192
  %194 = fadd fast float %193, %191
  br label %195

; <label>:195                                     ; preds = %189, %187, %181, %168
  %196 = phi float [ %53, %168 ], [ %175, %181 ], [ %194, %189 ], [ %175, %187 ]
  %197 = phi float [ %54, %168 ], [ %186, %181 ], [ %176, %189 ], [ %176, %187 ]
  %198 = fadd fast float %53, %47
  %199 = fadd fast float %54, %48
  %200 = add i32 %33, 72
  %201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %200, i32 undef)  ; BufferLoad(srv,index,wot)
  %202 = extractvalue %dx.types.ResRet.i32 %201, 0
  %203 = extractvalue %dx.types.ResRet.i32 %201, 1
  %204 = bitcast i32 %202 to float
  %205 = bitcast i32 %203 to float
  %206 = fmul fast float %204, %53
  %207 = fmul fast float %205, %54
  %208 = call float @dx.op.unary.f32(i32 22, float %206)  ; Frc(value)
  %209 = call float @dx.op.unary.f32(i32 22, float %207)  ; Frc(value)
  %210 = and i32 %159, 16
  %211 = icmp ne i32 %210, 0
  %212 = select i1 %211, float 1.000000e+00, float %58
  %213 = add i32 %33, 112
  %214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %213, i32 undef)  ; BufferLoad(srv,index,wot)
  %215 = extractvalue %dx.types.ResRet.i32 %214, 0
  %216 = add i32 %215, 0
  %217 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %216, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %219 = extractvalue %dx.types.CBufRet.f32 %218, 2
  %220 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %217, %dx.types.Handle %66, float %196, float %197, float undef, float undef, i32 0, i32 0, i32 undef, float %219, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %221 = extractvalue %dx.types.ResRet.f32 %220, 0
  %222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %213, i32 undef)  ; BufferLoad(srv,index,wot)
  %223 = extractvalue %dx.types.ResRet.i32 %222, 0
  %224 = add i32 %223, 0
  %225 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %224, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %227 = extractvalue %dx.types.CBufRet.f32 %226, 2
  %228 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %225, %dx.types.Handle %66, float %198, float %199, float undef, float undef, i32 0, i32 0, i32 undef, float %227, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %229 = extractvalue %dx.types.ResRet.f32 %228, 0
  %230 = fsub fast float %229, %221
  %231 = fmul fast float %230, %49
  %232 = fadd fast float %231, %221
  %233 = fmul fast float %232, %212
  %234 = icmp eq i32 %210, 0
  br i1 %234, label %254, label %235, !dx.controlflow.hints !75

; <label>:235                                     ; preds = %195
  %236 = add i32 %156, 64
  %237 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %236, i32 undef)  ; BufferLoad(srv,index,wot)
  %238 = extractvalue %dx.types.ResRet.f32 %237, 0
  %239 = fadd fast float %238, 1.000000e+00
  %240 = fmul fast float %239, %58
  %241 = fsub fast float %240, %238
  %242 = fsub fast float %239, %241
  %243 = call float @dx.op.unary.f32(i32 7, float %242)  ; Saturate(value)
  %244 = fsub fast float 1.000000e+00, %240
  %245 = call float @dx.op.unary.f32(i32 7, float %244)  ; Saturate(value)
  %246 = fsub fast float %243, %245
  %247 = fsub fast float %233, %245
  %248 = fdiv fast float %247, %246
  %249 = call float @dx.op.unary.f32(i32 7, float %248)  ; Saturate(value)
  %250 = fmul fast float %249, 2.000000e+00
  %251 = fsub fast float 3.000000e+00, %250
  %252 = fmul fast float %249, %249
  %253 = fmul fast float %252, %251
  br label %254

; <label>:254                                     ; preds = %235, %195
  %255 = phi float [ %253, %235 ], [ %233, %195 ]
  %256 = fcmp fast ogt float %255, 0.000000e+00
  br i1 %256, label %258, label %257

; <label>:257                                     ; preds = %254
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %258

; <label>:258                                     ; preds = %257, %254
  %259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 155)  ; CBufferLoadLegacy(handle,regIndex)
  %260 = extractvalue %dx.types.CBufRet.f32 %259, 1
  %261 = fsub fast float %50, %260
  %262 = fsub fast float %51, %260
  %263 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %29, float %261, float %262, float undef, float undef, i32 0, i32 0, i32 undef, float %52)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %264 = extractvalue %dx.types.ResRet.f32 %263, 0
  %265 = fmul fast float %264, %255
  %266 = call float @dx.op.unary.f32(i32 7, float %265)  ; Saturate(value)
  %267 = fmul fast float %69, 5.000000e-01
  %268 = fmul fast float %70, 5.000000e-01
  %269 = fptosi float %267 to i32
  %270 = fptosi float %268 to i32
  %271 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %269, i32 %270, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = lshr i32 %272, 18
  %274 = uitofp i32 %273 to float
  %275 = fmul fast float %274, 0x3F4C00EBA0000000
  %276 = call float @dx.op.unary.f32(i32 21, float %275)  ; Exp(value)
  %277 = fadd fast float %276, -1.000000e+00
  %278 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %12, i32 0)  ; GetDimensions(handle,mipLevel)
  %279 = extractvalue %dx.types.Dimensions %278, 0
  %280 = sitofp i32 %279 to float
  %281 = extractvalue %dx.types.Dimensions %278, 1
  %282 = sitofp i32 %281 to float
  %283 = fcmp fast oge float %267, %280
  %284 = fcmp fast oge float %268, %282
  %285 = or i1 %283, %284
  %286 = select i1 %285, float 0x4197782600000000, float %277
  %287 = fsub fast float %286, %62
  %288 = fcmp fast ogt float %287, 0.000000e+00
  %289 = and i32 %155, -2
  %290 = icmp eq i32 %289, 2
  %291 = and i1 %290, %288
  %292 = xor i1 %288, true
  %293 = icmp eq i32 %155, 1
  %294 = and i1 %293, %292
  %295 = or i1 %291, %294
  %296 = and i32 %159, 262144
  %297 = icmp ne i32 %296, 0
  %298 = and i1 %297, %295
  %299 = xor i1 %295, true
  %300 = and i32 %159, 131072
  %301 = icmp ne i32 %300, 0
  %302 = and i1 %301, %299
  %303 = or i1 %298, %302
  br i1 %303, label %304, label %305

; <label>:304                                     ; preds = %258
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %305

; <label>:305                                     ; preds = %304, %258
  %306 = and i32 %159, 32
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %557, label %308, !dx.controlflow.hints !76

; <label>:308                                     ; preds = %305
  %309 = add i32 %156, 80
  %310 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.f32 %310, 0
  %312 = extractvalue %dx.types.ResRet.f32 %310, 1
  %313 = extractvalue %dx.types.ResRet.f32 %310, 2
  %314 = extractvalue %dx.types.ResRet.f32 %310, 3
  %315 = add i32 %156, 96
  %316 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.f32 %316, 0
  %318 = extractvalue %dx.types.ResRet.f32 %316, 1
  %319 = extractvalue %dx.types.ResRet.f32 %316, 2
  %320 = add i32 %156, 112
  %321 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.f32 %321, 0
  %323 = extractvalue %dx.types.ResRet.f32 %321, 1
  %324 = extractvalue %dx.types.ResRet.f32 %321, 2
  %325 = extractvalue %dx.types.ResRet.f32 %321, 3
  %326 = add i32 %156, 128
  %327 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.f32 %327, 0
  %329 = extractvalue %dx.types.ResRet.f32 %327, 1
  %330 = extractvalue %dx.types.ResRet.f32 %327, 2
  %331 = extractvalue %dx.types.ResRet.f32 %327, 3
  %332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %157, i32 undef)  ; BufferLoad(srv,index,wot)
  %333 = extractvalue %dx.types.ResRet.i32 %332, 0
  %334 = and i32 %333, 4096
  %335 = icmp ne i32 %334, 0
  %336 = fcmp fast une float %319, 0.000000e+00
  %337 = and i32 %333, 64
  %338 = icmp ne i32 %337, 0
  %339 = and i32 %333, 128
  %340 = icmp eq i32 %339, 0
  %341 = and i32 %333, 2048
  %342 = icmp eq i32 %341, 0
  %343 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %15, i32 0)  ; GetDimensions(handle,mipLevel)
  %344 = extractvalue %dx.types.Dimensions %343, 0
  %345 = sitofp i32 %344 to float
  %346 = extractvalue %dx.types.Dimensions %343, 1
  %347 = sitofp i32 %346 to float
  %348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %349 = extractvalue %dx.types.CBufRet.f32 %348, 2
  %350 = extractvalue %dx.types.CBufRet.f32 %348, 3
  %351 = fmul fast float %349, %69
  %352 = fmul fast float %350, %70
  %353 = fmul fast float %351, %345
  %354 = fmul fast float %352, %347
  %355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %356 = extractvalue %dx.types.CBufRet.f32 %355, 1
  %357 = fsub fast float -0.000000e+00, %356
  %358 = fptoui float %357 to i32
  %359 = fptoui float %353 to i32
  %360 = fptoui float %354 to i32
  %361 = and i32 %358, 31
  %362 = lshr i32 %359, %361
  %363 = lshr i32 %360, %361
  %364 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 %358, i32 %362, i32 %363, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %365 = extractvalue %dx.types.ResRet.f32 %364, 0
  %366 = fcmp fast ogt float %365, -1.000000e+00
  %367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %368 = extractvalue %dx.types.CBufRet.f32 %367, 1
  %369 = select i1 %366, float %368, float 1.000000e+00
  %370 = fadd fast float %365, 1.000000e+00
  %371 = fmul fast float %369, %370
  %372 = call float @dx.op.unary.f32(i32 6, float %371)  ; FAbs(value)
  %373 = extractvalue %dx.types.CBufRet.f32 %367, 3
  %374 = fcmp fast oge float %372, %373
  %375 = select i1 %374, float 0x4197782600000000, float %372
  br i1 %342, label %453, label %376, !dx.controlflow.hints !77

; <label>:376                                     ; preds = %308
  %377 = fmul fast float %74, %349
  %378 = fmul fast float %76, %350
  %379 = fsub fast float 1.000000e+00, %377
  %380 = fsub fast float 1.000000e+00, %378
  %381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %382 = extractvalue %dx.types.CBufRet.f32 %381, 0
  %383 = extractvalue %dx.types.CBufRet.f32 %381, 1
  %384 = extractvalue %dx.types.CBufRet.f32 %381, 2
  %385 = fmul fast float %379, %382
  %386 = fmul fast float %379, %383
  %387 = fmul fast float %379, %384
  %388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %389 = extractvalue %dx.types.CBufRet.f32 %388, 0
  %390 = extractvalue %dx.types.CBufRet.f32 %388, 1
  %391 = extractvalue %dx.types.CBufRet.f32 %388, 2
  %392 = fmul fast float %380, %389
  %393 = fmul fast float %380, %390
  %394 = fmul fast float %380, %391
  %395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %396 = extractvalue %dx.types.CBufRet.f32 %395, 0
  %397 = extractvalue %dx.types.CBufRet.f32 %395, 1
  %398 = extractvalue %dx.types.CBufRet.f32 %395, 2
  %399 = fadd fast float %392, %396
  %400 = fadd fast float %399, %385
  %401 = fadd fast float %393, %397
  %402 = fadd fast float %401, %386
  %403 = fadd fast float %394, %398
  %404 = fadd fast float %403, %387
  %405 = fmul fast float %400, %375
  %406 = fmul fast float %402, %375
  %407 = fmul fast float %404, %375
  %408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %409 = extractvalue %dx.types.CBufRet.f32 %408, 0
  %410 = extractvalue %dx.types.CBufRet.f32 %408, 1
  %411 = extractvalue %dx.types.CBufRet.f32 %408, 2
  %412 = fsub fast float %409, %34
  %413 = fadd fast float %412, %405
  %414 = fsub fast float %410, %35
  %415 = fadd fast float %414, %406
  %416 = fsub fast float %411, %36
  %417 = fadd fast float %416, %407
  %418 = fmul fast float %37, %37
  %419 = call float @dx.op.dot3.f32(i32 55, float %413, float %415, float %417, float %413, float %415, float %417)  ; Dot3(ax,ay,az,bx,by,bz)
  %420 = fsub fast float %418, %419
  %421 = fmul fast float %318, %418
  %422 = fmul fast float %317, %418
  %423 = fcmp fast olt float %420, %421
  %424 = fcmp fast ogt float %420, %422
  %425 = or i1 %423, %424
  %426 = select i1 %425, float 0.000000e+00, float %420
  %427 = fsub fast float %317, %318
  %428 = fmul fast float %427, %418
  %429 = fsub fast float %426, %421
  %430 = fdiv fast float %429, %428
  %431 = call float @dx.op.unary.f32(i32 7, float %430)  ; Saturate(value)
  %432 = fmul fast float %431, 2.000000e+00
  %433 = fsub fast float 3.000000e+00, %432
  %434 = fmul fast float %431, %431
  %435 = fmul fast float %434, %433
  %436 = fmul fast float %322, %55
  %437 = fmul fast float %323, %56
  %438 = fmul fast float %324, %57
  %439 = fsub fast float %436, %328
  %440 = fsub fast float %437, %329
  %441 = fsub fast float %438, %330
  %442 = fsub fast float %325, %331
  %443 = fmul fast float %435, %439
  %444 = fmul fast float %435, %440
  %445 = fmul fast float %435, %441
  %446 = fmul fast float %435, %442
  %447 = fadd fast float %443, %328
  %448 = fadd fast float %444, %329
  %449 = fadd fast float %445, %330
  %450 = fadd fast float %446, %331
  %451 = fmul fast float %311, %311
  %452 = fmul fast float %451, %426
  br label %548

; <label>:453                                     ; preds = %308
  %454 = and i32 %333, 256
  %455 = icmp eq i32 %454, 0
  %456 = fsub fast float %375, %62
  br i1 %455, label %505, label %457

; <label>:457                                     ; preds = %453
  %458 = fadd fast float %317, %62
  %459 = fcmp fast olt float %375, %62
  %460 = fcmp fast ogt float %375, %458
  %461 = or i1 %459, %460
  %462 = select i1 %461, float 0.000000e+00, float %456
  %463 = call float @dx.op.unary.f32(i32 83, float %375)  ; DerivCoarseX(value)
  %464 = call float @dx.op.unary.f32(i32 84, float %375)  ; DerivCoarseY(value)
  %465 = fmul fast float %463, %463
  %466 = fmul fast float %464, %464
  %467 = fadd fast float %466, %465
  %468 = call float @dx.op.unary.f32(i32 24, float %467)  ; Sqrt(value)
  %469 = extractvalue %dx.types.CBufRet.f32 %355, 2
  %470 = fmul fast float %469, %468
  %471 = call float @dx.op.unary.f32(i32 7, float %470)  ; Saturate(value)
  %472 = fmul fast float %471, %318
  %473 = fdiv fast float %456, %472
  %474 = call float @dx.op.unary.f32(i32 7, float %473)  ; Saturate(value)
  %475 = fmul fast float %474, 2.000000e+00
  %476 = fsub fast float 3.000000e+00, %475
  %477 = fmul fast float %474, %474
  %478 = fmul fast float %477, %476
  %479 = fsub fast float %375, %458
  %480 = fadd fast float %479, %472
  %481 = fdiv fast float %480, %472
  %482 = call float @dx.op.unary.f32(i32 7, float %481)  ; Saturate(value)
  %483 = fmul fast float %482, 2.000000e+00
  %484 = fsub fast float 3.000000e+00, %483
  %485 = fmul fast float %482, %482
  %486 = fmul fast float %485, %484
  %487 = fsub fast float %478, %486
  %488 = fmul fast float %322, %55
  %489 = fmul fast float %323, %56
  %490 = fmul fast float %324, %57
  %491 = fsub fast float %488, %328
  %492 = fsub fast float %489, %329
  %493 = fsub fast float %490, %330
  %494 = fsub fast float %325, %331
  %495 = fmul fast float %487, %491
  %496 = fmul fast float %487, %492
  %497 = fmul fast float %487, %493
  %498 = fmul fast float %487, %494
  %499 = fadd fast float %495, %328
  %500 = fadd fast float %496, %329
  %501 = fadd fast float %497, %330
  %502 = fadd fast float %498, %331
  %503 = fmul fast float %462, %311
  %504 = call float @dx.op.unary.f32(i32 6, float %503)  ; FAbs(value)
  br label %548

; <label>:505                                     ; preds = %453
  br i1 %336, label %506, label %519

; <label>:506                                     ; preds = %505
  %507 = fdiv fast float 5.000000e+01, %37
  %508 = select i1 %338, float %507, float 1.000000e+00
  %509 = fmul fast float %508, %311
  %510 = fmul fast float %208, 2.000000e+00
  %511 = fmul fast float %209, 2.000000e+00
  %512 = fadd fast float %510, -1.000000e+00
  %513 = fadd fast float %511, -1.000000e+00
  %514 = call float @dx.op.dot2.f32(i32 54, float %512, float %513, float %512, float %513)  ; Dot2(ax,ay,bx,by)
  %515 = fmul fast float %319, %37
  %516 = fmul fast float %515, %514
  %517 = fsub fast float %456, %516
  %518 = fmul fast float %509, %517
  br label %548

; <label>:519                                     ; preds = %505
  br i1 %340, label %540, label %520

; <label>:520                                     ; preds = %519
  %521 = fmul fast float %37, 0x3F947AE140000000
  %522 = select i1 %338, float %521, float 1.000000e+00
  %523 = fdiv fast float 1.000000e+00, %522
  %524 = fmul fast float %522, %312
  %525 = fmul fast float %522, %313
  %526 = fmul fast float %523, %314
  %527 = call float @dx.op.unary.f32(i32 6, float %456)  ; FAbs(value)
  %528 = fcmp fast olt float %527, %524
  br i1 %528, label %529, label %533, !dx.controlflow.hints !78

; <label>:529                                     ; preds = %520
  %530 = fmul fast float %523, %311
  %531 = fmul fast float %530, %527
  %532 = call float @dx.op.unary.f32(i32 6, float %531)  ; FAbs(value)
  br label %548

; <label>:533                                     ; preds = %520
  %534 = fcmp fast ogt float %527, %525
  br i1 %534, label %535, label %548

; <label>:535                                     ; preds = %533
  %536 = fsub fast float %527, %525
  %537 = fmul fast float %526, %536
  %538 = call float @dx.op.unary.f32(i32 6, float %537)  ; FAbs(value)
  %539 = fsub fast float 1.000000e+00, %538
  br label %548

; <label>:540                                     ; preds = %519
  %541 = fdiv fast float 5.000000e+01, %37
  %542 = select i1 %338, float %541, float 1.000000e+00
  %543 = fmul fast float %542, %311
  %544 = call float @dx.op.unary.f32(i32 6, float %287)  ; FAbs(value)
  %545 = select i1 %335, float %544, float 0x47EFFFFFE0000000
  %546 = call float @dx.op.binary.f32(i32 36, float %456, float %545)  ; FMin(a,b)
  %547 = fmul fast float %543, %546
  br label %548

; <label>:548                                     ; preds = %540, %535, %533, %529, %506, %457, %376
  %549 = phi float [ %452, %376 ], [ %504, %457 ], [ %518, %506 ], [ %547, %540 ], [ %532, %529 ], [ %539, %535 ], [ %527, %533 ]
  %550 = phi float [ %447, %376 ], [ %499, %457 ], [ %55, %506 ], [ %55, %540 ], [ %55, %529 ], [ %55, %535 ], [ %55, %533 ]
  %551 = phi float [ %448, %376 ], [ %500, %457 ], [ %56, %506 ], [ %56, %540 ], [ %56, %529 ], [ %56, %535 ], [ %56, %533 ]
  %552 = phi float [ %449, %376 ], [ %501, %457 ], [ %57, %506 ], [ %57, %540 ], [ %57, %529 ], [ %57, %535 ], [ %57, %533 ]
  %553 = phi float [ %450, %376 ], [ %502, %457 ], [ 1.000000e+00, %506 ], [ 1.000000e+00, %540 ], [ 1.000000e+00, %529 ], [ 1.000000e+00, %535 ], [ 1.000000e+00, %533 ]
  %554 = call float @dx.op.unary.f32(i32 7, float %549)  ; Saturate(value)
  %555 = fmul fast float %553, %266
  %556 = fmul fast float %555, %554
  br label %557

; <label>:557                                     ; preds = %548, %305
  %558 = phi float [ %550, %548 ], [ %55, %305 ]
  %559 = phi float [ %551, %548 ], [ %56, %305 ]
  %560 = phi float [ %552, %548 ], [ %57, %305 ]
  %561 = phi float [ %556, %548 ], [ %266, %305 ]
  %562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %563 = extractvalue %dx.types.CBufRet.f32 %562, 2
  %564 = fptosi float %62 to i32
  %565 = sitofp i32 %564 to float
  %566 = fadd fast float %563, %565
  %567 = fmul fast float %566, 0x3FE3C6EF40000000
  %568 = frem fast float %69, 2.560000e+02
  %569 = frem fast float %70, 2.560000e+02
  %570 = fptoui float %568 to i32
  %571 = fptoui float %569 to i32
  %572 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %25, i32 0, i32 %570, i32 %571, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %573 = extractvalue %dx.types.ResRet.f32 %572, 0
  %574 = fadd fast float %573, %567
  %575 = call float @dx.op.unary.f32(i32 22, float %574)  ; Frc(value)
  %576 = and i32 %159, 1
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %634, label %578, !dx.controlflow.hints !79

; <label>:578                                     ; preds = %557
  %579 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %156, i32 undef)  ; BufferLoad(srv,index,wot)
  %580 = extractvalue %dx.types.ResRet.f32 %579, 2
  %581 = extractvalue %dx.types.ResRet.f32 %579, 3
  %582 = add i32 %156, 16
  %583 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %582, i32 undef)  ; BufferLoad(srv,index,wot)
  %584 = extractvalue %dx.types.ResRet.f32 %583, 0
  %585 = extractvalue %dx.types.ResRet.f32 %583, 1
  %586 = extractvalue %dx.types.ResRet.f32 %583, 2
  %587 = add i32 %156, 32
  %588 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %587, i32 undef)  ; BufferLoad(srv,index,wot)
  %589 = extractvalue %dx.types.ResRet.f32 %588, 0
  %590 = extractvalue %dx.types.ResRet.f32 %588, 1
  %591 = extractvalue %dx.types.ResRet.f32 %588, 2
  %592 = and i32 %159, 2
  %593 = icmp eq i32 %592, 0
  %594 = call float @dx.op.dot3.f32(i32 55, float %44, float %45, float %46, float %44, float %45, float %46)  ; Dot3(ax,ay,az,bx,by,bz)
  %595 = call float @dx.op.unary.f32(i32 25, float %594)  ; Rsqrt(value)
  %596 = fmul fast float %595, %44
  %597 = fmul fast float %595, %45
  %598 = fmul fast float %595, %46
  %599 = call float @dx.op.dot3.f32(i32 55, float %104, float %105, float %106, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %600 = call float @dx.op.unary.f32(i32 25, float %599)  ; Rsqrt(value)
  %601 = fmul fast float %600, %104
  %602 = fmul fast float %600, %105
  %603 = fmul fast float %600, %106
  %604 = call float @dx.op.dot3.f32(i32 55, float %601, float %602, float %603, float %596, float %597, float %598)  ; Dot3(ax,ay,az,bx,by,bz)
  %605 = fmul fast float %604, %604
  %606 = fmul fast float %605, %580
  %607 = fadd fast float %606, %581
  %608 = call float @dx.op.unary.f32(i32 7, float %607)  ; Saturate(value)
  br i1 %593, label %609, label %619, !dx.controlflow.hints !80

; <label>:609                                     ; preds = %578
  %610 = extractvalue %dx.types.ResRet.f32 %579, 1
  %611 = extractvalue %dx.types.ResRet.f32 %579, 0
  %612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %613 = extractvalue %dx.types.CBufRet.f32 %612, 3
  %614 = fmul fast float %613, %599
  %615 = fsub fast float %611, %614
  %616 = fmul fast float %615, %610
  %617 = call float @dx.op.unary.f32(i32 7, float %616)  ; Saturate(value)
  %618 = fmul fast float %617, %608
  br label %619

; <label>:619                                     ; preds = %609, %578
  %620 = phi float [ %618, %609 ], [ %608, %578 ]
  %621 = fsub fast float %584, %589
  %622 = fsub fast float %585, %590
  %623 = fsub fast float %586, %591
  %624 = fmul fast float %620, %621
  %625 = fmul fast float %620, %622
  %626 = fmul fast float %620, %623
  %627 = fadd fast float %624, %589
  %628 = fadd fast float %625, %590
  %629 = fadd fast float %626, %591
  %630 = fmul fast float %627, %558
  %631 = fmul fast float %628, %559
  %632 = fmul fast float %629, %560
  %633 = fmul fast float %620, %561
  br label %634

; <label>:634                                     ; preds = %619, %557
  %635 = phi float [ %630, %619 ], [ %558, %557 ]
  %636 = phi float [ %631, %619 ], [ %559, %557 ]
  %637 = phi float [ %632, %619 ], [ %560, %557 ]
  %638 = phi float [ %633, %619 ], [ %561, %557 ]
  %639 = add i32 %33, 104
  %640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %639, i32 undef)  ; BufferLoad(srv,index,wot)
  %641 = extractvalue %dx.types.ResRet.i32 %640, 0
  %642 = add i32 %641, 0
  %643 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %642, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %644 = add i32 %33, 24
  %645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %644, i32 undef)  ; BufferLoad(srv,index,wot)
  %646 = extractvalue %dx.types.ResRet.i32 %645, 0
  %647 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %643, %dx.types.Handle %65, float %196, float %197, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %648 = extractvalue %dx.types.ResRet.f32 %647, 0
  %649 = extractvalue %dx.types.ResRet.f32 %647, 1
  %650 = extractvalue %dx.types.ResRet.f32 %647, 2
  %651 = extractvalue %dx.types.ResRet.f32 %647, 3
  %652 = and i32 %646, 255
  %653 = uitofp i32 %652 to float
  %654 = lshr i32 %646, 8
  %655 = and i32 %654, 255
  %656 = uitofp i32 %655 to float
  %657 = fmul fast float %651, %653
  %658 = fadd fast float %657, %656
  %659 = add i32 %33, 56
  %660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %659, i32 undef)  ; BufferLoad(srv,index,wot)
  %661 = extractvalue %dx.types.ResRet.i32 %660, 0
  %662 = and i32 %661, 255
  %663 = uitofp i32 %662 to float
  %664 = fmul fast float %663, 0x3F70101020000000
  %665 = lshr i32 %661, 8
  %666 = and i32 %665, 255
  %667 = uitofp i32 %666 to float
  %668 = fmul fast float %667, 0x3F70101020000000
  %669 = lshr i32 %661, 16
  %670 = and i32 %669, 255
  %671 = uitofp i32 %670 to float
  %672 = fmul fast float %671, 0x3F70101020000000
  %673 = fmul fast float %664, %664
  %674 = fmul fast float %673, %648
  %675 = fmul fast float %668, %668
  %676 = fmul fast float %675, %649
  %677 = fmul fast float %672, %672
  %678 = fmul fast float %677, %650
  %679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %639, i32 undef)  ; BufferLoad(srv,index,wot)
  %680 = extractvalue %dx.types.ResRet.i32 %679, 0
  %681 = add i32 %680, 0
  %682 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %681, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %644, i32 undef)  ; BufferLoad(srv,index,wot)
  %684 = extractvalue %dx.types.ResRet.i32 %683, 0
  %685 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %682, %dx.types.Handle %65, float %198, float %199, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %686 = extractvalue %dx.types.ResRet.f32 %685, 0
  %687 = extractvalue %dx.types.ResRet.f32 %685, 1
  %688 = extractvalue %dx.types.ResRet.f32 %685, 2
  %689 = extractvalue %dx.types.ResRet.f32 %685, 3
  %690 = and i32 %684, 255
  %691 = uitofp i32 %690 to float
  %692 = lshr i32 %684, 8
  %693 = and i32 %692, 255
  %694 = uitofp i32 %693 to float
  %695 = fmul fast float %689, %691
  %696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %659, i32 undef)  ; BufferLoad(srv,index,wot)
  %697 = extractvalue %dx.types.ResRet.i32 %696, 0
  %698 = and i32 %697, 255
  %699 = uitofp i32 %698 to float
  %700 = fmul fast float %699, 0x3F70101020000000
  %701 = lshr i32 %697, 8
  %702 = and i32 %701, 255
  %703 = uitofp i32 %702 to float
  %704 = fmul fast float %703, 0x3F70101020000000
  %705 = lshr i32 %697, 16
  %706 = and i32 %705, 255
  %707 = uitofp i32 %706 to float
  %708 = fmul fast float %707, 0x3F70101020000000
  %709 = fmul fast float %700, %700
  %710 = fmul fast float %709, %686
  %711 = fmul fast float %704, %704
  %712 = fmul fast float %711, %687
  %713 = fmul fast float %708, %708
  %714 = fmul fast float %713, %688
  %715 = fsub fast float %710, %674
  %716 = fsub fast float %712, %676
  %717 = fsub fast float %714, %678
  %718 = fmul fast float %715, %49
  %719 = fmul fast float %716, %49
  %720 = fmul fast float %717, %49
  %721 = fadd fast float %718, %674
  %722 = fadd fast float %719, %676
  %723 = fadd fast float %720, %678
  %724 = fsub fast float %694, %658
  %725 = fadd fast float %724, %695
  %726 = fmul fast float %725, %49
  %727 = fadd fast float %726, %658
  %728 = fmul fast float %727, 0x3F70101000000000
  %729 = fmul fast float %721, %635
  %730 = fmul fast float %722, %636
  %731 = fmul fast float %723, %637
  %732 = add i32 %33, 28
  %733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %732, i32 undef)  ; BufferLoad(srv,index,wot)
  %734 = extractvalue %dx.types.ResRet.i32 %733, 0
  %735 = add i32 %33, 108
  %736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %735, i32 undef)  ; BufferLoad(srv,index,wot)
  %737 = extractvalue %dx.types.ResRet.i32 %736, 0
  %738 = add i32 %737, 0
  %739 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %738, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %740 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %739, %dx.types.Handle %65, float %196, float %197, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %741 = extractvalue %dx.types.ResRet.f32 %740, 0
  %742 = extractvalue %dx.types.ResRet.f32 %740, 1
  %743 = extractvalue %dx.types.ResRet.f32 %740, 3
  %744 = and i32 %734, 255
  %745 = uitofp i32 %744 to float
  %746 = lshr i32 %734, 8
  %747 = and i32 %746, 255
  %748 = uitofp i32 %747 to float
  %749 = lshr i32 %734, 16
  %750 = and i32 %749, 255
  %751 = uitofp i32 %750 to float
  %752 = fmul fast float %751, 0x3F70101000000000
  %753 = fmul fast float %741, %745
  %754 = fadd fast float %753, %748
  %755 = fadd fast float %742, -5.000000e-01
  %756 = fadd fast float %743, -5.000000e-01
  %757 = fmul fast float %755, %752
  %758 = fmul fast float %756, %752
  %759 = fadd fast float %757, 5.000000e-01
  %760 = fadd fast float %758, 5.000000e-01
  %761 = fmul fast float %759, 2.000000e+00
  %762 = fadd fast float %761, -1.000000e+00
  %763 = fmul fast float %760, 2.000000e+00
  %764 = fadd fast float %763, -1.000000e+00
  %765 = fadd fast float %762, %764
  %766 = fmul fast float %765, 5.000000e-01
  %767 = fsub fast float %762, %764
  %768 = fmul fast float %767, 5.000000e-01
  %769 = call float @dx.op.unary.f32(i32 6, float %766)  ; FAbs(value)
  %770 = fsub fast float 1.000000e+00, %769
  %771 = call float @dx.op.unary.f32(i32 6, float %768)  ; FAbs(value)
  %772 = fsub fast float %770, %771
  %773 = call float @dx.op.dot3.f32(i32 55, float %766, float %768, float %772, float %766, float %768, float %772)  ; Dot3(ax,ay,az,bx,by,bz)
  %774 = call float @dx.op.unary.f32(i32 25, float %773)  ; Rsqrt(value)
  %775 = fmul fast float %766, %774
  %776 = fmul fast float %768, %774
  %777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %732, i32 undef)  ; BufferLoad(srv,index,wot)
  %778 = extractvalue %dx.types.ResRet.i32 %777, 0
  %779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %735, i32 undef)  ; BufferLoad(srv,index,wot)
  %780 = extractvalue %dx.types.ResRet.i32 %779, 0
  %781 = add i32 %780, 0
  %782 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %781, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %783 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %782, %dx.types.Handle %65, float %198, float %199, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %784 = extractvalue %dx.types.ResRet.f32 %783, 0
  %785 = extractvalue %dx.types.ResRet.f32 %783, 1
  %786 = extractvalue %dx.types.ResRet.f32 %783, 3
  %787 = and i32 %778, 255
  %788 = uitofp i32 %787 to float
  %789 = lshr i32 %778, 8
  %790 = and i32 %789, 255
  %791 = uitofp i32 %790 to float
  %792 = lshr i32 %778, 16
  %793 = and i32 %792, 255
  %794 = uitofp i32 %793 to float
  %795 = fmul fast float %794, 0x3F70101000000000
  %796 = fmul fast float %784, %788
  %797 = fadd fast float %785, -5.000000e-01
  %798 = fadd fast float %786, -5.000000e-01
  %799 = fmul fast float %797, %795
  %800 = fmul fast float %798, %795
  %801 = fadd fast float %799, 5.000000e-01
  %802 = fadd fast float %800, 5.000000e-01
  %803 = fmul fast float %801, 2.000000e+00
  %804 = fadd fast float %803, -1.000000e+00
  %805 = fmul fast float %802, 2.000000e+00
  %806 = fadd fast float %805, -1.000000e+00
  %807 = fadd fast float %804, %806
  %808 = fmul fast float %807, 5.000000e-01
  %809 = fsub fast float %804, %806
  %810 = fmul fast float %809, 5.000000e-01
  %811 = call float @dx.op.unary.f32(i32 6, float %808)  ; FAbs(value)
  %812 = fsub fast float 1.000000e+00, %811
  %813 = call float @dx.op.unary.f32(i32 6, float %810)  ; FAbs(value)
  %814 = fsub fast float %812, %813
  %815 = call float @dx.op.dot3.f32(i32 55, float %808, float %810, float %814, float %808, float %810, float %814)  ; Dot3(ax,ay,az,bx,by,bz)
  %816 = call float @dx.op.unary.f32(i32 25, float %815)  ; Rsqrt(value)
  %817 = fmul fast float %808, %816
  %818 = fmul fast float %810, %816
  %819 = fsub fast float %817, %775
  %820 = fsub fast float %818, %776
  %821 = fmul fast float %819, %49
  %822 = fmul fast float %820, %49
  %823 = fadd fast float %821, %775
  %824 = fadd fast float %822, %776
  %825 = fsub fast float %791, %754
  %826 = fadd fast float %825, %796
  %827 = fmul fast float %826, %49
  %828 = fadd fast float %827, %754
  %829 = fmul fast float %828, 0x3F70101000000000
  %830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %831 = extractvalue %dx.types.CBufRet.f32 %830, 3
  %832 = fcmp fast ogt float %831, 0.000000e+00
  %833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %834 = extractvalue %dx.types.CBufRet.f32 %833, 1
  br i1 %832, label %835, label %860

; <label>:835                                     ; preds = %634
  %836 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %27, float %38, float %39, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %837 = extractvalue %dx.types.ResRet.f32 %836, 0
  %838 = extractvalue %dx.types.ResRet.f32 %836, 1
  %839 = extractvalue %dx.types.ResRet.f32 %836, 2
  %840 = extractvalue %dx.types.ResRet.f32 %836, 3
  %841 = fmul fast float %834, %840
  %842 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %27, float %38, float %39, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %843 = extractvalue %dx.types.ResRet.f32 %842, 0
  %844 = extractvalue %dx.types.ResRet.f32 %842, 1
  %845 = extractvalue %dx.types.ResRet.f32 %842, 2
  %846 = extractvalue %dx.types.ResRet.f32 %842, 3
  %847 = fmul fast float %834, %843
  %848 = fmul fast float %834, %844
  %849 = fmul fast float %834, %845
  %850 = fmul fast float %834, %846
  %851 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %27, float %38, float %39, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %852 = extractvalue %dx.types.ResRet.f32 %851, 0
  %853 = extractvalue %dx.types.ResRet.f32 %851, 1
  %854 = extractvalue %dx.types.ResRet.f32 %851, 2
  %855 = extractvalue %dx.types.ResRet.f32 %851, 3
  %856 = fmul fast float %834, %852
  %857 = fmul fast float %834, %853
  %858 = fmul fast float %834, %854
  %859 = fmul fast float %834, %855
  br label %865

; <label>:860                                     ; preds = %634
  %861 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %27, float %38, float %39, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %862 = extractvalue %dx.types.ResRet.f32 %861, 0
  %863 = extractvalue %dx.types.ResRet.f32 %861, 1
  %864 = extractvalue %dx.types.ResRet.f32 %861, 2
  br label %865

; <label>:865                                     ; preds = %860, %835
  %866 = phi float [ %837, %835 ], [ %862, %860 ]
  %867 = phi float [ %838, %835 ], [ %863, %860 ]
  %868 = phi float [ %839, %835 ], [ %864, %860 ]
  %869 = phi float [ %841, %835 ], [ 0.000000e+00, %860 ]
  %870 = phi float [ %847, %835 ], [ 0.000000e+00, %860 ]
  %871 = phi float [ %848, %835 ], [ 0.000000e+00, %860 ]
  %872 = phi float [ %849, %835 ], [ 0.000000e+00, %860 ]
  %873 = phi float [ %850, %835 ], [ 0.000000e+00, %860 ]
  %874 = phi float [ %856, %835 ], [ 0.000000e+00, %860 ]
  %875 = phi float [ %857, %835 ], [ 0.000000e+00, %860 ]
  %876 = phi float [ %858, %835 ], [ 0.000000e+00, %860 ]
  %877 = phi float [ %859, %835 ], [ 0.000000e+00, %860 ]
  %878 = fmul float %834, %868
  %879 = fmul float %834, %867
  %880 = fmul float %834, %866
  %881 = call float @dx.op.dot2.f32(i32 54, float %823, float %824, float %823, float %824)  ; Dot2(ax,ay,bx,by)
  %882 = fsub fast float 1.000000e+00, %881
  %883 = call float @dx.op.unary.f32(i32 7, float %882)  ; Saturate(value)
  %884 = call float @dx.op.unary.f32(i32 24, float %883)  ; Sqrt(value)
  %885 = fmul fast float %884, %44
  %886 = fmul fast float %884, %45
  %887 = fmul fast float %884, %46
  %888 = fmul fast float %823, %40
  %889 = fmul fast float %823, %41
  %890 = fmul fast float %823, %42
  %891 = fmul fast float %116, %824
  %892 = fmul fast float %117, %824
  %893 = fmul fast float %118, %824
  %894 = fadd fast float %891, %888
  %895 = fadd fast float %894, %885
  %896 = fadd fast float %892, %889
  %897 = fadd fast float %896, %886
  %898 = fadd fast float %893, %890
  %899 = fadd fast float %898, %887
  %900 = call float @dx.op.dot3.f32(i32 55, float %895, float %897, float %899, float %895, float %897, float %899)  ; Dot3(ax,ay,az,bx,by,bz)
  %901 = call float @dx.op.unary.f32(i32 25, float %900)  ; Rsqrt(value)
  %902 = fmul fast float %895, %901
  %903 = fmul fast float %897, %901
  %904 = fmul fast float %899, %901
  %905 = call float @dx.op.dot3.f32(i32 55, float %104, float %105, float %106, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %906 = call float @dx.op.unary.f32(i32 25, float %905)  ; Rsqrt(value)
  %907 = fmul fast float %906, %104
  %908 = fmul fast float %906, %105
  %909 = fmul fast float %906, %106
  %910 = fsub fast float -0.000000e+00, %907
  %911 = fsub fast float -0.000000e+00, %908
  %912 = fsub fast float -0.000000e+00, %909
  %913 = fadd fast float %728, 0xBFB99999A0000000
  %914 = call float @dx.op.unary.f32(i32 7, float %913)  ; Saturate(value)
  %915 = fmul fast float %914, 0x3FF1C71C80000000
  %916 = call float @dx.op.binary.f32(i32 36, float %728, float 0x3FB99999A0000000)  ; FMin(a,b)
  %917 = fsub fast float 1.000000e+00, %915
  %918 = call float @dx.op.unary.f32(i32 7, float %917)  ; Saturate(value)
  %919 = fmul fast float %918, %729
  %920 = fmul fast float %918, %730
  %921 = fmul fast float %918, %731
  %922 = call float @dx.op.unary.f32(i32 7, float %919)  ; Saturate(value)
  %923 = call float @dx.op.unary.f32(i32 7, float %920)  ; Saturate(value)
  %924 = call float @dx.op.unary.f32(i32 7, float %921)  ; Saturate(value)
  %925 = fmul fast float %915, %729
  %926 = fmul fast float %915, %730
  %927 = fmul fast float %915, %731
  %928 = fadd fast float %925, %916
  %929 = fadd fast float %926, %916
  %930 = fadd fast float %927, %916
  %931 = call float @dx.op.unary.f32(i32 7, float %928)  ; Saturate(value)
  %932 = call float @dx.op.unary.f32(i32 7, float %929)  ; Saturate(value)
  %933 = call float @dx.op.unary.f32(i32 7, float %930)  ; Saturate(value)
  %934 = call float @dx.op.unary.f32(i32 7, float %829)  ; Saturate(value)
  %935 = call float @dx.op.dot3.f32(i32 55, float %922, float %923, float %924, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %936 = add i32 %33, 32
  %937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %936, i32 undef)  ; BufferLoad(srv,index,wot)
  %938 = extractvalue %dx.types.ResRet.i32 %937, 0
  %939 = and i32 %938, 255
  %940 = uitofp i32 %939 to float
  %941 = lshr i32 %938, 8
  %942 = and i32 %941, 255
  %943 = uitofp i32 %942 to float
  %944 = fmul fast float %943, %935
  %945 = fadd fast float %944, %940
  %946 = fmul fast float %945, 0x3F70101020000000
  %947 = call float @dx.op.unary.f32(i32 7, float %946)  ; Saturate(value)
  %948 = and i32 %159, 8192
  %949 = icmp eq i32 %948, 0
  %950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %951 = extractvalue %dx.types.CBufRet.f32 %950, 0
  br i1 %949, label %958, label %952, !dx.controlflow.hints !81

; <label>:952                                     ; preds = %865
  %953 = add i32 %156, 176
  %954 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %953, i32 undef)  ; BufferLoad(srv,index,wot)
  %955 = extractvalue %dx.types.ResRet.f32 %954, 0
  %956 = fcmp fast oge float %955, 0.000000e+00
  %957 = select i1 %956, float %955, float %951
  br label %958

; <label>:958                                     ; preds = %952, %865
  %959 = phi float [ %957, %952 ], [ %951, %865 ]
  %960 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %269, i32 %270, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %961 = extractvalue %dx.types.ResRet.i32 %960, 0
  %962 = lshr i32 %961, 18
  %963 = uitofp i32 %962 to float
  %964 = fmul fast float %963, 0x3F4C00EBA0000000
  %965 = call float @dx.op.unary.f32(i32 21, float %964)  ; Exp(value)
  %966 = fadd fast float %965, -1.000000e+00
  %967 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %12, i32 0)  ; GetDimensions(handle,mipLevel)
  %968 = extractvalue %dx.types.Dimensions %967, 0
  %969 = sitofp i32 %968 to float
  %970 = extractvalue %dx.types.Dimensions %967, 1
  %971 = sitofp i32 %970 to float
  %972 = fcmp fast oge float %267, %969
  %973 = fcmp fast oge float %268, %971
  %974 = or i1 %972, %973
  %975 = select i1 %974, float 0x4197782600000000, float %966
  %976 = icmp eq i32 %155, 3
  %977 = fcmp fast ogt float %62, %975
  %978 = and i1 %293, %977
  %979 = or i1 %976, %978
  %980 = icmp eq i32 %155, 2
  %981 = fcmp fast ole float %62, %975
  %982 = and i1 %980, %981
  %983 = or i1 %982, %979
  %984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %985 = extractvalue %dx.types.CBufRet.f32 %984, 3
  %986 = fcmp fast ogt float %985, 0.000000e+00
  br i1 %986, label %987, label %994

; <label>:987                                     ; preds = %958
  %988 = fmul fast float %903, 0xBFDF454380000000
  %989 = fmul fast float %904, 0x3FDF454380000000
  %990 = fmul fast float %902, 0xBFDF454380000000
  %991 = call float @dx.op.dot4.f32(i32 56, float %880, float %879, float %878, float %869, float 0x3FD20DD760000000, float %988, float %989, float %990)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %992 = call float @dx.op.dot4.f32(i32 56, float %870, float %871, float %872, float %873, float 0x3FD20DD760000000, float %988, float %989, float %990)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %993 = call float @dx.op.dot4.f32(i32 56, float %874, float %875, float %876, float %877, float 0x3FD20DD760000000, float %988, float %989, float %990)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %994

; <label>:994                                     ; preds = %987, %958
  %995 = phi float [ %991, %987 ], [ %880, %958 ]
  %996 = phi float [ %992, %987 ], [ %879, %958 ]
  %997 = phi float [ %993, %987 ], [ %878, %958 ]
  %998 = call float @dx.op.dot3.f32(i32 55, float %902, float %903, float %904, float %910, float %911, float %912)  ; Dot3(ax,ay,az,bx,by,bz)
  %999 = call float @dx.op.unary.f32(i32 7, float %998)  ; Saturate(value)
  br i1 %986, label %1000, label %1100

; <label>:1000                                    ; preds = %994
  %1001 = fsub fast float -0.000000e+00, %869
  %1002 = fsub fast float %1001, %873
  %1003 = fsub fast float -0.000000e+00, %879
  %1004 = fsub fast float %1003, %871
  %1005 = fadd fast float %872, %878
  %1006 = fsub fast float %1002, %877
  %1007 = fsub fast float %1004, %875
  %1008 = fadd fast float %1005, %876
  %1009 = call float @dx.op.dot3.f32(i32 55, float %1006, float %1007, float %1008, float %1006, float %1007, float %1008)  ; Dot3(ax,ay,az,bx,by,bz)
  %1010 = call float @dx.op.unary.f32(i32 25, float %1009)  ; Rsqrt(value)
  %1011 = fmul fast float %1010, %1006
  %1012 = fmul fast float %1010, %1007
  %1013 = fmul fast float %1010, %1008
  %1014 = fmul fast float %1012, 0xBFD4D8D7C0000000
  %1015 = fmul fast float %1013, 0x3FD4D8D7C0000000
  %1016 = fmul fast float %1011, 0xBFD4D8D7C0000000
  %1017 = call float @dx.op.dot4.f32(i32 56, float %880, float %879, float %878, float %869, float 0x3FD20DD760000000, float %1014, float %1015, float %1016)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1018 = call float @dx.op.dot4.f32(i32 56, float %870, float %871, float %872, float %873, float 0x3FD20DD760000000, float %1014, float %1015, float %1016)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1019 = call float @dx.op.dot4.f32(i32 56, float %874, float %875, float %876, float %877, float 0x3FD20DD760000000, float %1014, float %1015, float %1016)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1020 = fmul fast float %1017, 0x4003333340000000
  %1021 = fmul fast float %880, 0x3FE5AA35A0000000
  %1022 = fsub fast float %1020, %1021
  %1023 = fmul fast float %1018, 0x4003333340000000
  %1024 = fmul fast float %870, 0x3FE5AA35A0000000
  %1025 = fsub fast float %1023, %1024
  %1026 = fmul fast float %1019, 0x4003333340000000
  %1027 = fmul fast float %874, 0x3FE5AA35A0000000
  %1028 = fsub fast float %1026, %1027
  %1029 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1022)  ; FMax(a,b)
  %1030 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1025)  ; FMax(a,b)
  %1031 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1028)  ; FMax(a,b)
  %1032 = fsub fast float %1011, %907
  %1033 = fsub fast float %1012, %908
  %1034 = fsub fast float %1013, %909
  %1035 = call float @dx.op.dot3.f32(i32 55, float %1032, float %1033, float %1034, float %1032, float %1033, float %1034)  ; Dot3(ax,ay,az,bx,by,bz)
  %1036 = call float @dx.op.unary.f32(i32 25, float %1035)  ; Rsqrt(value)
  %1037 = fmul fast float %1036, %1032
  %1038 = fmul fast float %1036, %1033
  %1039 = fmul fast float %1036, %1034
  %1040 = call float @dx.op.dot3.f32(i32 55, float %902, float %903, float %904, float %1011, float %1012, float %1013)  ; Dot3(ax,ay,az,bx,by,bz)
  %1041 = call float @dx.op.unary.f32(i32 6, float %1040)  ; FAbs(value)
  %1042 = call float @dx.op.dot3.f32(i32 55, float %902, float %903, float %904, float %1037, float %1038, float %1039)  ; Dot3(ax,ay,az,bx,by,bz)
  %1043 = fmul fast float %1042, %1042
  %1044 = call float @dx.op.dot3.f32(i32 55, float %910, float %911, float %912, float %1037, float %1038, float %1039)  ; Dot3(ax,ay,az,bx,by,bz)
  %1045 = call float @dx.op.unary.f32(i32 6, float %1044)  ; FAbs(value)
  %1046 = fsub fast float 1.000000e+00, %934
  %1047 = call float @dx.op.binary.f32(i32 35, float %1046, float 0x3F847AE140000000)  ; FMax(a,b)
  %1048 = fmul fast float %1047, %1047
  %1049 = fmul fast float %1048, %1048
  %1050 = fsub fast float 1.000000e+00, %1049
  %1051 = fmul fast float %999, %999
  %1052 = fmul fast float %1051, %1050
  %1053 = fadd fast float %1052, %1049
  %1054 = bitcast float %1053 to i32
  %1055 = ashr i32 %1054, 1
  %1056 = add nsw i32 %1055, 532487669
  %1057 = bitcast i32 %1056 to float
  %1058 = fadd fast float %1057, %999
  %1059 = fmul fast float %1049, %1043
  %1060 = fsub fast float 1.000000e+00, %1043
  %1061 = fadd fast float %1060, %1059
  %1062 = fmul fast float %1041, %1041
  %1063 = fmul fast float %1062, %1050
  %1064 = fadd fast float %1063, %1049
  %1065 = bitcast float %1064 to i32
  %1066 = ashr i32 %1065, 1
  %1067 = add nsw i32 %1066, 532487669
  %1068 = bitcast i32 %1067 to float
  %1069 = fadd fast float %1068, %1041
  %1070 = fmul fast float %1061, %1061
  %1071 = fmul fast float %1070, %1058
  %1072 = fmul fast float %1071, %1069
  %1073 = fdiv fast float 1.000000e+00, %1072
  %1074 = fmul fast float %1049, %1073
  %1075 = fsub fast float 1.000000e+00, %1045
  %1076 = bitcast float %1075 to i32
  %1077 = sitofp i32 %1076 to float
  %1078 = fmul fast float %1077, 5.000000e+00
  %1079 = fadd fast float %1078, 0xC1EFBF8940000000
  %1080 = fptosi float %1079 to i32
  %1081 = bitcast i32 %1080 to float
  %1082 = fsub fast float 1.000000e+00, %931
  %1083 = fsub fast float 1.000000e+00, %932
  %1084 = fsub fast float 1.000000e+00, %933
  %1085 = fmul fast float %1081, %1082
  %1086 = fmul fast float %1081, %1083
  %1087 = fmul fast float %1081, %1084
  %1088 = fadd fast float %1085, %931
  %1089 = fadd fast float %1086, %932
  %1090 = fadd fast float %1087, %933
  %1091 = fmul fast float %1074, %1029
  %1092 = fmul fast float %1091, %1088
  %1093 = fmul fast float %1074, %1030
  %1094 = fmul fast float %1093, %1089
  %1095 = fmul fast float %1074, %1031
  %1096 = fmul fast float %1095, %1090
  %1097 = call float @dx.op.binary.f32(i32 35, float %1092, float 0.000000e+00)  ; FMax(a,b)
  %1098 = call float @dx.op.binary.f32(i32 35, float %1094, float 0.000000e+00)  ; FMax(a,b)
  %1099 = call float @dx.op.binary.f32(i32 35, float %1096, float 0.000000e+00)  ; FMax(a,b)
  br label %1100

; <label>:1100                                    ; preds = %1000, %994
  %1101 = phi float [ %1097, %1000 ], [ 0.000000e+00, %994 ]
  %1102 = phi float [ %1098, %1000 ], [ 0.000000e+00, %994 ]
  %1103 = phi float [ %1099, %1000 ], [ 0.000000e+00, %994 ]
  %1104 = fmul fast float %999, 9.843750e-01
  %1105 = fmul fast float %934, 9.843750e-01
  %1106 = fadd fast float %1104, 7.812500e-03
  %1107 = fadd fast float %1105, 7.812500e-03
  %1108 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %27, float %1106, float %1107, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1109 = extractvalue %dx.types.ResRet.f32 %1108, 2
  %1110 = extractvalue %dx.types.ResRet.f32 %1108, 3
  %1111 = fmul fast float %1109, %931
  %1112 = fmul fast float %1109, %932
  %1113 = fmul fast float %1109, %933
  %1114 = fadd fast float %1111, %1110
  %1115 = fadd fast float %1112, %1110
  %1116 = fadd fast float %1113, %1110
  %1117 = call float @dx.op.binary.f32(i32 35, float %1115, float %1116)  ; FMax(a,b)
  %1118 = call float @dx.op.binary.f32(i32 35, float %1114, float %1117)  ; FMax(a,b)
  %1119 = fsub fast float 1.000000e+00, %1118
  %1120 = call float @dx.op.dot3.f32(i32 55, float %907, float %908, float %909, float %902, float %903, float %904)  ; Dot3(ax,ay,az,bx,by,bz)
  %1121 = fmul fast float %1120, 2.000000e+00
  %1122 = fmul fast float %1121, %902
  %1123 = fmul fast float %1121, %903
  %1124 = fmul fast float %1121, %904
  %1125 = fsub fast float %907, %1122
  %1126 = fsub fast float %908, %1123
  %1127 = fsub fast float %909, %1124
  br i1 %986, label %1128, label %1135

; <label>:1128                                    ; preds = %1100
  %1129 = fmul fast float %1126, 0xBFDF454380000000
  %1130 = fmul fast float %1127, 0x3FDF454380000000
  %1131 = fmul fast float %1125, 0xBFDF454380000000
  %1132 = call float @dx.op.dot4.f32(i32 56, float %880, float %879, float %878, float %869, float 0x3FD20DD760000000, float %1129, float %1130, float %1131)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1133 = call float @dx.op.dot4.f32(i32 56, float %870, float %871, float %872, float %873, float 0x3FD20DD760000000, float %1129, float %1130, float %1131)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1134 = call float @dx.op.dot4.f32(i32 56, float %874, float %875, float %876, float %877, float 0x3FD20DD760000000, float %1129, float %1130, float %1131)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %1135

; <label>:1135                                    ; preds = %1128, %1100
  %1136 = phi float [ %1132, %1128 ], [ %880, %1100 ]
  %1137 = phi float [ %1133, %1128 ], [ %879, %1100 ]
  %1138 = phi float [ %1134, %1128 ], [ %878, %1100 ]
  %1139 = call float @dx.op.dot3.f32(i32 55, float %1136, float %1137, float %1138, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %1141 = extractvalue %dx.types.CBufRet.f32 %1140, 2
  %1142 = extractvalue %dx.types.CBufRet.f32 %1140, 3
  %1143 = fmul fast float %1141, %69
  %1144 = fmul fast float %1142, %70
  %1145 = fptoui float %1143 to i32
  %1146 = fptoui float %1144 to i32
  %1147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1148 = extractvalue %dx.types.CBufRet.f32 %1147, 0
  %1149 = extractvalue %dx.types.CBufRet.f32 %1147, 2
  %1150 = extractvalue %dx.types.CBufRet.f32 %1147, 3
  %1151 = fadd fast float %62, -4.000000e+00
  %1152 = call float @dx.op.binary.f32(i32 35, float %1151, float 0.000000e+00)  ; FMax(a,b)
  %1153 = fadd fast float %1152, %1148
  %1154 = fmul fast float %1153, %1149
  %1155 = call float @dx.op.unary.f32(i32 23, float %1154)  ; Log(value)
  %1156 = fmul fast float %1155, %1150
  %1157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1158 = extractvalue %dx.types.CBufRet.f32 %1157, 2
  %1159 = fmul fast float %1156, %1158
  %1160 = call float @dx.op.unary.f32(i32 7, float %1159)  ; Saturate(value)
  %1161 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1162 = extractvalue %dx.types.CBufRet.i32 %1161, 1
  %1163 = add i32 %1162, -1
  %1164 = uitofp i32 %1162 to float
  %1165 = fmul fast float %1164, %1160
  %1166 = fptoui float %1165 to i32
  %1167 = call i32 @dx.op.binary.i32(i32 40, i32 %1166, i32 %1163)  ; UMin(a,b)
  %1168 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %1169 = extractvalue %dx.types.CBufRet.i32 %1168, 2
  %1170 = extractvalue %dx.types.CBufRet.i32 %1168, 3
  %1171 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1146, i32 %1169, i32 %1145)  ; UMad(a,b,c)
  %1172 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1167, i32 %1170, i32 %1171)  ; UMad(a,b,c)
  %1173 = call float @dx.op.binary.f32(i32 35, float %62, float 0.000000e+00)  ; FMax(a,b)
  %1174 = fptoui float %1173 to i32
  %1175 = lshr i32 %1174, 5
  %1176 = call i32 @dx.op.binary.i32(i32 40, i32 %1175, i32 8191)  ; UMin(a,b)
  %1177 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1178 = extractvalue %dx.types.CBufRet.i32 %1177, 2
  %1179 = add nsw i32 %1178, -1
  %1180 = call i32 @dx.op.binary.i32(i32 37, i32 %1179, i32 0)  ; IMax(a,b)
  %1181 = shl i32 %1176, 2
  %1182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1181, i32 undef)  ; BufferLoad(srv,index,wot)
  %1183 = extractvalue %dx.types.ResRet.i32 %1182, 0
  %1184 = lshr i32 %1183, 16
  %1185 = and i32 %1183, 65535
  %1186 = lshr i32 %1183, 21
  %1187 = lshr i32 %1185, 5
  %1188 = call i32 @dx.op.binary.i32(i32 40, i32 %1187, i32 %1180)  ; UMin(a,b)
  %1189 = icmp ugt i32 %1186, %1188
  br i1 %1189, label %1552, label %1190

; <label>:1190                                    ; preds = %1135
  br label %1191

; <label>:1191                                    ; preds = %1544, %1190
  %1192 = phi float [ %1545, %1544 ], [ 0.000000e+00, %1190 ]
  %1193 = phi float [ %1546, %1544 ], [ 0.000000e+00, %1190 ]
  %1194 = phi float [ %1547, %1544 ], [ 0.000000e+00, %1190 ]
  %1195 = phi float [ %1548, %1544 ], [ 1.000000e+00, %1190 ]
  %1196 = phi i32 [ %1549, %1544 ], [ %1186, %1190 ]
  %1197 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1198 = extractvalue %dx.types.CBufRet.i32 %1197, 2
  %1199 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1172, i32 %1198, i32 %1196)  ; UMad(a,b,c)
  %1200 = shl i32 %1199, 2
  %1201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1200, i32 undef)  ; BufferLoad(srv,index,wot)
  %1202 = extractvalue %dx.types.ResRet.i32 %1201, 0
  %1203 = shl i32 %1196, 5
  %1204 = sub nsw i32 %1184, %1203
  %1205 = call i32 @dx.op.binary.i32(i32 37, i32 %1204, i32 0)  ; IMax(a,b)
  %1206 = call i32 @dx.op.binary.i32(i32 38, i32 %1205, i32 31)  ; IMin(a,b)
  %1207 = sub nsw i32 1, %1184
  %1208 = add nsw i32 %1207, %1185
  %1209 = call i32 @dx.op.binary.i32(i32 37, i32 %1208, i32 0)  ; IMax(a,b)
  %1210 = call i32 @dx.op.binary.i32(i32 38, i32 %1209, i32 32)  ; IMin(a,b)
  %1211 = and i32 %1210, 31
  %1212 = shl i32 -1, %1211
  %1213 = xor i32 %1212, -1
  %1214 = and i32 %1206, 31
  %1215 = shl i32 %1213, %1214
  %1216 = icmp eq i32 %1210, 32
  %1217 = select i1 %1216, i32 -1, i32 %1215
  %1218 = and i32 %1217, %1202
  %1219 = icmp eq i32 %1218, 0
  br i1 %1219, label %1544, label %1220

; <label>:1220                                    ; preds = %1191
  br label %1221

; <label>:1221                                    ; preds = %1327, %1220
  %1222 = phi float [ %1328, %1327 ], [ %1192, %1220 ]
  %1223 = phi float [ %1329, %1327 ], [ %1193, %1220 ]
  %1224 = phi float [ %1330, %1327 ], [ %1194, %1220 ]
  %1225 = phi float [ %1331, %1327 ], [ %1195, %1220 ]
  %1226 = phi i32 [ %1231, %1327 ], [ %1218, %1220 ]
  %1227 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1226)  ; FirstbitLo(value)
  %1228 = add i32 %1227, %1203
  %1229 = and i32 %1227, 31
  %1230 = shl i32 1, %1229
  %1231 = xor i32 %1230, %1226
  %1232 = mul i32 %1228, 72
  %1233 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1232, i32 undef)  ; BufferLoad(srv,index,wot)
  %1234 = extractvalue %dx.types.ResRet.f32 %1233, 0
  %1235 = extractvalue %dx.types.ResRet.f32 %1233, 1
  %1236 = extractvalue %dx.types.ResRet.f32 %1233, 2
  %1237 = add i32 %1232, 12
  %1238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1237, i32 undef)  ; BufferLoad(srv,index,wot)
  %1239 = extractvalue %dx.types.ResRet.i32 %1238, 0
  %1240 = add i32 %1232, 16
  %1241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1240, i32 undef)  ; BufferLoad(srv,index,wot)
  %1242 = extractvalue %dx.types.ResRet.f32 %1241, 0
  %1243 = extractvalue %dx.types.ResRet.f32 %1241, 1
  %1244 = extractvalue %dx.types.ResRet.f32 %1241, 2
  %1245 = add i32 %1232, 28
  %1246 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1245, i32 undef)  ; BufferLoad(srv,index,wot)
  %1247 = extractvalue %dx.types.ResRet.f32 %1246, 0
  %1248 = add i32 %1232, 32
  %1249 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1248, i32 undef)  ; BufferLoad(srv,index,wot)
  %1250 = extractvalue %dx.types.ResRet.f32 %1249, 0
  %1251 = extractvalue %dx.types.ResRet.f32 %1249, 1
  %1252 = extractvalue %dx.types.ResRet.f32 %1249, 2
  %1253 = extractvalue %dx.types.ResRet.f32 %1249, 3
  %1254 = add i32 %1232, 48
  %1255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1256 = extractvalue %dx.types.ResRet.f32 %1255, 0
  %1257 = extractvalue %dx.types.ResRet.f32 %1255, 1
  %1258 = add i32 %1232, 56
  %1259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1258, i32 undef)  ; BufferLoad(srv,index,wot)
  %1260 = extractvalue %dx.types.ResRet.f32 %1259, 0
  %1261 = extractvalue %dx.types.ResRet.f32 %1259, 1
  %1262 = add i32 %1232, 64
  %1263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1262, i32 undef)  ; BufferLoad(srv,index,wot)
  %1264 = extractvalue %dx.types.ResRet.f32 %1263, 0
  %1265 = extractvalue %dx.types.ResRet.f32 %1263, 1
  %1266 = mul i32 %1228, 60
  %1267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1268 = extractvalue %dx.types.ResRet.f32 %1267, 0
  %1269 = extractvalue %dx.types.ResRet.f32 %1267, 1
  %1270 = extractvalue %dx.types.ResRet.f32 %1267, 2
  %1271 = add i32 %1266, 12
  %1272 = add i32 %1266, 48
  %1273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1274 = extractvalue %dx.types.ResRet.f32 %1273, 0
  %1275 = extractvalue %dx.types.ResRet.f32 %1273, 1
  %1276 = extractvalue %dx.types.ResRet.f32 %1273, 2
  %1277 = and i32 %1239, 32767
  %1278 = bitcast float %1234 to i32
  %1279 = icmp eq i32 %1278, -1
  %1280 = bitcast float %1235 to i32
  %1281 = and i32 %1239, 32768
  %1282 = icmp ne i32 %1281, 0
  %1283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1284 = extractvalue %dx.types.CBufRet.f32 %1283, 0
  %1285 = extractvalue %dx.types.CBufRet.f32 %1283, 1
  %1286 = extractvalue %dx.types.CBufRet.f32 %1283, 2
  %1287 = fsub fast float %1268, %1284
  %1288 = fsub fast float %1269, %1285
  %1289 = fsub fast float %1270, %1286
  %1290 = fsub fast float %104, %1287
  %1291 = fsub fast float %105, %1288
  %1292 = fsub fast float %106, %1289
  %1293 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1271, i32 undef)  ; BufferLoad(srv,index,wot)
  %1294 = extractvalue %dx.types.ResRet.f32 %1293, 0
  %1295 = extractvalue %dx.types.ResRet.f32 %1293, 1
  %1296 = extractvalue %dx.types.ResRet.f32 %1293, 2
  %1297 = call float @dx.op.dot3.f32(i32 55, float %1290, float %1291, float %1292, float %1294, float %1295, float %1296)  ; Dot3(ax,ay,az,bx,by,bz)
  %1298 = add i32 %1266, 24
  %1299 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1298, i32 undef)  ; BufferLoad(srv,index,wot)
  %1300 = extractvalue %dx.types.ResRet.f32 %1299, 0
  %1301 = extractvalue %dx.types.ResRet.f32 %1299, 1
  %1302 = extractvalue %dx.types.ResRet.f32 %1299, 2
  %1303 = call float @dx.op.dot3.f32(i32 55, float %1290, float %1291, float %1292, float %1300, float %1301, float %1302)  ; Dot3(ax,ay,az,bx,by,bz)
  %1304 = add i32 %1266, 36
  %1305 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1304, i32 undef)  ; BufferLoad(srv,index,wot)
  %1306 = extractvalue %dx.types.ResRet.f32 %1305, 0
  %1307 = extractvalue %dx.types.ResRet.f32 %1305, 1
  %1308 = extractvalue %dx.types.ResRet.f32 %1305, 2
  %1309 = call float @dx.op.dot3.f32(i32 55, float %1290, float %1291, float %1292, float %1306, float %1307, float %1308)  ; Dot3(ax,ay,az,bx,by,bz)
  %1310 = call float @dx.op.unary.f32(i32 6, float %1297)  ; FAbs(value)
  %1311 = call float @dx.op.unary.f32(i32 6, float %1303)  ; FAbs(value)
  %1312 = call float @dx.op.unary.f32(i32 6, float %1309)  ; FAbs(value)
  %1313 = fsub fast float %1274, %1310
  %1314 = fsub fast float %1275, %1311
  %1315 = fsub fast float %1276, %1312
  %1316 = fmul fast float %1313, %1242
  %1317 = fmul fast float %1314, %1243
  %1318 = fmul fast float %1315, %1244
  %1319 = call float @dx.op.binary.f32(i32 36, float %1317, float %1318)  ; FMin(a,b)
  %1320 = call float @dx.op.binary.f32(i32 36, float %1316, float %1319)  ; FMin(a,b)
  %1321 = call float @dx.op.unary.f32(i32 7, float %1320)  ; Saturate(value)
  %1322 = call float @dx.op.binary.f32(i32 36, float %1225, float %1321)  ; FMin(a,b)
  %1323 = uitofp i1 %1282 to float
  %1324 = fsub fast float 1.000000e+00, %1323
  %1325 = fmul fast float %1322, %1324
  %1326 = fcmp fast ogt float %1325, 0.000000e+00
  br i1 %1326, label %1333, label %1327

; <label>:1327                                    ; preds = %1475, %1221
  %1328 = phi float [ %1539, %1475 ], [ %1222, %1221 ]
  %1329 = phi float [ %1540, %1475 ], [ %1223, %1221 ]
  %1330 = phi float [ %1541, %1475 ], [ %1224, %1221 ]
  %1331 = phi float [ %1542, %1475 ], [ %1225, %1221 ]
  %1332 = icmp eq i32 %1226, %1230
  br i1 %1332, label %1543, label %1221

; <label>:1333                                    ; preds = %1221
  br i1 %1279, label %1391, label %1334

; <label>:1334                                    ; preds = %1333
  %1335 = fsub fast float -0.000000e+00, %1294
  %1336 = fsub fast float -0.000000e+00, %1295
  %1337 = fsub fast float -0.000000e+00, %1296
  %1338 = call float @dx.op.dot3.f32(i32 55, float %1125, float %1126, float %1127, float %1335, float %1336, float %1337)  ; Dot3(ax,ay,az,bx,by,bz)
  %1339 = fsub fast float -0.000000e+00, %1338
  %1340 = call float @dx.op.dot3.f32(i32 55, float %1290, float %1291, float %1292, float %1335, float %1336, float %1337)  ; Dot3(ax,ay,az,bx,by,bz)
  %1341 = fadd fast float %1340, %1257
  %1342 = fadd fast float %1256, %1340
  %1343 = fsub fast float -0.000000e+00, %1342
  %1344 = fcmp ogt float %1338, -0.000000e+00
  %1345 = select i1 %1344, float %1343, float %1341
  %1346 = call float @dx.op.unary.f32(i32 6, float %1339)  ; FAbs(value)
  %1347 = fdiv fast float 1.000000e+00, %1346
  %1348 = fmul fast float %1345, %1347
  %1349 = call float @dx.op.binary.f32(i32 35, float %1348, float 0.000000e+00)  ; FMax(a,b)
  %1350 = fsub fast float -0.000000e+00, %1300
  %1351 = fsub fast float -0.000000e+00, %1301
  %1352 = fsub fast float -0.000000e+00, %1302
  %1353 = call float @dx.op.dot3.f32(i32 55, float %1125, float %1126, float %1127, float %1350, float %1351, float %1352)  ; Dot3(ax,ay,az,bx,by,bz)
  %1354 = fsub fast float -0.000000e+00, %1353
  %1355 = call float @dx.op.dot3.f32(i32 55, float %1290, float %1291, float %1292, float %1350, float %1351, float %1352)  ; Dot3(ax,ay,az,bx,by,bz)
  %1356 = fadd fast float %1355, %1261
  %1357 = fadd fast float %1260, %1355
  %1358 = fsub fast float -0.000000e+00, %1357
  %1359 = fcmp ogt float %1353, -0.000000e+00
  %1360 = select i1 %1359, float %1358, float %1356
  %1361 = call float @dx.op.unary.f32(i32 6, float %1354)  ; FAbs(value)
  %1362 = fdiv fast float 1.000000e+00, %1361
  %1363 = fmul fast float %1360, %1362
  %1364 = call float @dx.op.binary.f32(i32 35, float %1363, float 0.000000e+00)  ; FMax(a,b)
  %1365 = fsub fast float -0.000000e+00, %1306
  %1366 = fsub fast float -0.000000e+00, %1307
  %1367 = fsub fast float -0.000000e+00, %1308
  %1368 = call float @dx.op.dot3.f32(i32 55, float %1125, float %1126, float %1127, float %1365, float %1366, float %1367)  ; Dot3(ax,ay,az,bx,by,bz)
  %1369 = fsub fast float -0.000000e+00, %1368
  %1370 = call float @dx.op.dot3.f32(i32 55, float %1290, float %1291, float %1292, float %1365, float %1366, float %1367)  ; Dot3(ax,ay,az,bx,by,bz)
  %1371 = fadd fast float %1370, %1265
  %1372 = fadd fast float %1264, %1370
  %1373 = fsub fast float -0.000000e+00, %1372
  %1374 = fcmp ogt float %1368, -0.000000e+00
  %1375 = select i1 %1374, float %1373, float %1371
  %1376 = call float @dx.op.unary.f32(i32 6, float %1369)  ; FAbs(value)
  %1377 = fdiv fast float 1.000000e+00, %1376
  %1378 = fmul fast float %1375, %1377
  %1379 = call float @dx.op.binary.f32(i32 35, float %1378, float 0.000000e+00)  ; FMax(a,b)
  %1380 = call float @dx.op.binary.f32(i32 36, float %1364, float %1379)  ; FMin(a,b)
  %1381 = call float @dx.op.binary.f32(i32 36, float %1349, float %1380)  ; FMin(a,b)
  %1382 = fmul fast float %1381, %1125
  %1383 = fmul fast float %1381, %1126
  %1384 = fmul fast float %1381, %1127
  %1385 = fadd fast float %1382, %104
  %1386 = fadd fast float %1383, %105
  %1387 = fadd fast float %1384, %106
  %1388 = fsub fast float %1385, %1234
  %1389 = fsub fast float %1386, %1235
  %1390 = fsub fast float %1387, %1236
  br label %1398

; <label>:1391                                    ; preds = %1333
  %1392 = fmul fast float %1125, 8.096000e+03
  %1393 = fmul fast float %1126, 8.096000e+03
  %1394 = fmul fast float %1127, 8.096000e+03
  %1395 = fadd fast float %1392, %104
  %1396 = fadd fast float %1393, %105
  %1397 = fadd fast float %1394, %106
  br label %1398

; <label>:1398                                    ; preds = %1391, %1334
  %1399 = phi float [ %1125, %1391 ], [ %1388, %1334 ]
  %1400 = phi float [ %1126, %1391 ], [ %1389, %1334 ]
  %1401 = phi float [ %1127, %1391 ], [ %1390, %1334 ]
  %1402 = phi float [ %1395, %1391 ], [ %1385, %1334 ]
  %1403 = phi float [ %1396, %1391 ], [ %1386, %1334 ]
  %1404 = phi float [ %1397, %1391 ], [ %1387, %1334 ]
  %1405 = fcmp fast olt float %1253, 1.000000e+00
  br i1 %1405, label %1406, label %1437, !dx.controlflow.hints !82

; <label>:1406                                    ; preds = %1398
  %1407 = fmul fast float %1401, %1251
  %1408 = fmul fast float %1400, %1252
  %1409 = fsub fast float %1407, %1408
  %1410 = fmul fast float %1399, %1252
  %1411 = fmul fast float %1401, %1250
  %1412 = fsub fast float %1410, %1411
  %1413 = fmul fast float %1400, %1250
  %1414 = fmul fast float %1399, %1251
  %1415 = fsub fast float %1413, %1414
  %1416 = fmul fast float %1409, 2.000000e+00
  %1417 = fmul fast float %1412, 2.000000e+00
  %1418 = fmul fast float %1415, 2.000000e+00
  %1419 = fmul fast float %1416, %1253
  %1420 = fmul fast float %1417, %1253
  %1421 = fmul fast float %1418, %1253
  %1422 = fmul fast float %1418, %1251
  %1423 = fmul fast float %1417, %1252
  %1424 = fmul fast float %1416, %1252
  %1425 = fmul fast float %1418, %1250
  %1426 = fmul fast float %1417, %1250
  %1427 = fmul fast float %1416, %1251
  %1428 = fadd fast float %1422, %1399
  %1429 = fadd fast float %1428, %1419
  %1430 = fsub fast float %1429, %1423
  %1431 = fsub fast float %1400, %1425
  %1432 = fadd fast float %1431, %1420
  %1433 = fadd fast float %1432, %1424
  %1434 = fadd fast float %1421, %1401
  %1435 = fsub fast float %1434, %1427
  %1436 = fadd fast float %1435, %1426
  br label %1437

; <label>:1437                                    ; preds = %1406, %1398
  %1438 = phi float [ %1430, %1406 ], [ %1399, %1398 ]
  %1439 = phi float [ %1433, %1406 ], [ %1400, %1398 ]
  %1440 = phi float [ %1436, %1406 ], [ %1401, %1398 ]
  br i1 %1279, label %1472, label %1441

; <label>:1441                                    ; preds = %1437
  %1442 = fmul fast float %934, 0x400187C840000000
  %1443 = fadd fast float %1442, 0xC00EFC2120000000
  %1444 = fmul fast float %1443, %934
  %1445 = fadd fast float %1444, 0x3FE5D16340000000
  %1446 = fmul fast float %1445, %934
  %1447 = fadd fast float %1446, 1.000000e+00
  %1448 = call float @dx.op.unary.f32(i32 7, float %1447)  ; Saturate(value)
  %1449 = fsub fast float %1402, %104
  %1450 = fsub fast float %1403, %105
  %1451 = fsub fast float %1404, %106
  %1452 = fsub fast float %1402, %1234
  %1453 = fsub fast float %1403, %1235
  %1454 = fsub fast float %1404, %1236
  %1455 = call float @dx.op.dot3.f32(i32 55, float %1449, float %1450, float %1451, float %1449, float %1450, float %1451)  ; Dot3(ax,ay,az,bx,by,bz)
  %1456 = call float @dx.op.dot3.f32(i32 55, float %1452, float %1453, float %1454, float %1452, float %1453, float %1454)  ; Dot3(ax,ay,az,bx,by,bz)
  %1457 = fadd fast float %1456, 0x3EE4F8B580000000
  %1458 = fdiv fast float %1455, %1457
  %1459 = bitcast float %1458 to i32
  %1460 = ashr i32 %1459, 1
  %1461 = add nsw i32 %1460, 532487669
  %1462 = bitcast i32 %1461 to float
  %1463 = fmul fast float %1462, %1448
  %1464 = call float @dx.op.unary.f32(i32 7, float %1463)  ; Saturate(value)
  %1465 = fmul fast float %1464, 0x4009981AE0000000
  %1466 = fsub fast float 0x40111BBD80000000, %1465
  %1467 = fmul fast float %1466, %1464
  %1468 = fadd fast float %1467, 0xC0009F6020000000
  %1469 = fmul fast float %1468, %1464
  %1470 = fadd fast float %1469, 1.000000e+00
  %1471 = call float @dx.op.unary.f32(i32 7, float %1470)  ; Saturate(value)
  br label %1475

; <label>:1472                                    ; preds = %1437
  %1473 = icmp ne i32 %1280, -1
  %1474 = zext i1 %1473 to i32
  br label %1475

; <label>:1475                                    ; preds = %1472, %1441
  %1476 = phi float [ %934, %1472 ], [ %1471, %1441 ]
  %1477 = phi i32 [ %1474, %1472 ], [ 0, %1441 ]
  %1478 = fmul float %1476, 5.000000e+00
  %1479 = fsub float 5.000000e+00, %1478
  %1480 = icmp ne i32 %1477, 0
  %1481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %1482 = extractvalue %dx.types.CBufRet.f32 %1481, 3
  %1483 = fadd fast float %1482, %1479
  %1484 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1483)  ; FMax(a,b)
  %1485 = call float @dx.op.unary.f32(i32 6, float %1438)  ; FAbs(value)
  %1486 = call float @dx.op.unary.f32(i32 6, float %1439)  ; FAbs(value)
  %1487 = fadd fast float %1486, %1485
  %1488 = call float @dx.op.unary.f32(i32 6, float %1440)  ; FAbs(value)
  %1489 = fadd fast float %1487, %1488
  %1490 = fcmp fast oeq float %1489, 0.000000e+00
  %1491 = fdiv fast float 1.000000e+00, %1489
  %1492 = select i1 %1490, float 1.000000e+00, float %1491
  %1493 = fmul fast float %1492, %1438
  %1494 = fmul fast float %1492, %1439
  %1495 = call float @dx.op.unary.f32(i32 6, float %1494)  ; FAbs(value)
  %1496 = call float @dx.op.unary.f32(i32 6, float %1493)  ; FAbs(value)
  %1497 = fsub fast float 1.000000e+00, %1495
  %1498 = fsub fast float 1.000000e+00, %1496
  %1499 = fcmp fast oge float %1493, 0.000000e+00
  %1500 = fcmp fast oge float %1494, 0.000000e+00
  %1501 = select i1 %1499, float 1.000000e+00, float -1.000000e+00
  %1502 = select i1 %1500, float 1.000000e+00, float -1.000000e+00
  %1503 = fcmp fast ole float %1440, 0.000000e+00
  %1504 = fmul fast float %1501, %1497
  %1505 = fmul fast float %1502, %1498
  %1506 = select i1 %1503, float %1504, float %1493
  %1507 = select i1 %1503, float %1505, float %1494
  %1508 = fmul fast float %1506, 5.000000e-01
  %1509 = fmul fast float %1507, 5.000000e-01
  %1510 = fadd fast float %1508, 5.000000e-01
  %1511 = fadd fast float %1509, 5.000000e-01
  %1512 = uitofp i32 %1277 to float
  %1513 = call float @dx.op.binary.f32(i32 36, float %1484, float 3.000000e+00)  ; FMin(a,b)
  %1514 = fadd fast float %1513, 2.000000e+00
  %1515 = call float @dx.op.unary.f32(i32 21, float %1514)  ; Exp(value)
  %1516 = extractvalue %dx.types.CBufRet.f32 %1481, 1
  %1517 = fmul fast float %1516, %1515
  %1518 = fmul fast float %1517, 2.000000e+00
  %1519 = fsub fast float 1.000000e+00, %1518
  %1520 = fmul fast float %1510, %1519
  %1521 = fmul fast float %1511, %1519
  %1522 = fadd fast float %1520, %1517
  %1523 = fadd fast float %1521, %1517
  %1524 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %26, float %1522, float %1523, float %1512, float undef, i32 0, i32 0, i32 undef, float %1484)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1525 = extractvalue %dx.types.ResRet.f32 %1524, 0
  %1526 = extractvalue %dx.types.ResRet.f32 %1524, 1
  %1527 = extractvalue %dx.types.ResRet.f32 %1524, 2
  %1528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1529 = extractvalue %dx.types.CBufRet.f32 %1528, 3
  %1530 = fmul fast float %1529, %1247
  %1531 = call float @dx.op.binary.f32(i32 36, float %1139, float %1530)  ; FMin(a,b)
  %1532 = select i1 %1480, float %1531, float %1530
  %1533 = fmul fast float %1525, %1325
  %1534 = fmul fast float %1533, %1532
  %1535 = fmul fast float %1526, %1325
  %1536 = fmul fast float %1535, %1532
  %1537 = fmul fast float %1527, %1325
  %1538 = fmul fast float %1537, %1532
  %1539 = fadd fast float %1534, %1222
  %1540 = fadd fast float %1536, %1223
  %1541 = fadd fast float %1538, %1224
  %1542 = fsub fast float %1225, %1325
  br label %1327

; <label>:1543                                    ; preds = %1327
  br label %1544

; <label>:1544                                    ; preds = %1543, %1191
  %1545 = phi float [ %1192, %1191 ], [ %1328, %1543 ]
  %1546 = phi float [ %1193, %1191 ], [ %1329, %1543 ]
  %1547 = phi float [ %1194, %1191 ], [ %1330, %1543 ]
  %1548 = phi float [ %1195, %1191 ], [ %1331, %1543 ]
  %1549 = add i32 %1196, 1
  %1550 = icmp ugt i32 %1549, %1188
  br i1 %1550, label %1551, label %1191, !llvm.loop !83

; <label>:1551                                    ; preds = %1544
  br label %1552

; <label>:1552                                    ; preds = %1551, %1135
  %1553 = phi float [ 0.000000e+00, %1135 ], [ %1545, %1551 ]
  %1554 = phi float [ 0.000000e+00, %1135 ], [ %1546, %1551 ]
  %1555 = phi float [ 0.000000e+00, %1135 ], [ %1547, %1551 ]
  %1556 = call float @dx.op.dot3.f32(i32 55, float %1553, float %1554, float %1555, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1557 = select i1 %139, float 0.000000e+00, float %1553
  %1558 = select i1 %139, float %1556, float %1554
  %1559 = select i1 %139, float 0.000000e+00, float %1555
  %1560 = fmul fast float %1557, %1114
  %1561 = fmul fast float %1558, %1115
  %1562 = fmul fast float %1559, %1116
  %1563 = call float @dx.op.binary.f32(i32 35, float %1560, float 0.000000e+00)  ; FMax(a,b)
  %1564 = call float @dx.op.binary.f32(i32 35, float %1561, float 0.000000e+00)  ; FMax(a,b)
  %1565 = call float @dx.op.binary.f32(i32 35, float %1562, float 0.000000e+00)  ; FMax(a,b)
  %1566 = fadd fast float %1563, %1101
  %1567 = fadd fast float %1564, %1102
  %1568 = fadd fast float %1565, %1103
  %1569 = fmul fast float %1566, %638
  %1570 = fmul fast float %1567, %638
  %1571 = fmul fast float %1568, %638
  %1572 = fsub fast float 1.000000e+00, %638
  %1573 = call float @dx.op.dot3.f32(i32 55, float %1572, float %1572, float %1572, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1574 = fsub fast float 1.000000e+00, %1573
  %1575 = fmul fast float %959, %947
  %1576 = fsub fast float 1.000000e+00, %947
  %1577 = call float @dx.op.unary.f32(i32 7, float %1576)  ; Saturate(value)
  %1578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1579 = extractvalue %dx.types.CBufRet.f32 %1578, 3
  %1580 = fmul fast float %1579, %1577
  %1581 = fadd fast float %1580, %1575
  %1582 = and i32 %159, 1048576
  %1583 = icmp eq i32 %1582, 0
  br i1 %1583, label %1668, label %1584, !dx.controlflow.hints !85

; <label>:1584                                    ; preds = %1552
  %1585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1586 = extractvalue %dx.types.CBufRet.f32 %1585, 2
  %1587 = extractvalue %dx.types.CBufRet.f32 %1585, 3
  %1588 = fmul fast float %1586, %69
  %1589 = fmul fast float %1587, %70
  %1590 = call float @dx.op.unary.f32(i32 7, float %1588)  ; Saturate(value)
  %1591 = call float @dx.op.unary.f32(i32 7, float %1589)  ; Saturate(value)
  %1592 = select i1 %983, i32 2, i32 0
  %1593 = or i32 %1592, 1
  %1594 = uitofp i32 %1593 to float
  %1595 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %27, float %1590, float %1591, float %1594, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1596 = extractvalue %dx.types.ResRet.f32 %1595, 0
  %1597 = extractvalue %dx.types.ResRet.f32 %1595, 1
  %1598 = extractvalue %dx.types.ResRet.f32 %1595, 2
  %1599 = extractvalue %dx.types.ResRet.f32 %1595, 3
  %1600 = add nuw nsw i32 %1592, 2
  %1601 = uitofp i32 %1600 to float
  %1602 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %27, float %1590, float %1591, float %1601, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1603 = extractvalue %dx.types.ResRet.f32 %1602, 0
  %1604 = extractvalue %dx.types.ResRet.f32 %1602, 1
  %1605 = extractvalue %dx.types.ResRet.f32 %1602, 2
  %1606 = extractvalue %dx.types.ResRet.f32 %1602, 3
  %1607 = call float @dx.op.binary.f32(i32 35, float %1597, float %1598)  ; FMax(a,b)
  %1608 = call float @dx.op.binary.f32(i32 35, float %1596, float %1607)  ; FMax(a,b)
  %1609 = call float @dx.op.binary.f32(i32 35, float %1608, float %1599)  ; FMax(a,b)
  %1610 = call float @dx.op.binary.f32(i32 36, float %1604, float %1605)  ; FMin(a,b)
  %1611 = call float @dx.op.binary.f32(i32 36, float %1603, float %1610)  ; FMin(a,b)
  %1612 = call float @dx.op.binary.f32(i32 36, float %1611, float %1606)  ; FMin(a,b)
  %1613 = fmul fast float %1609, 2.550000e+02
  %1614 = fadd fast float %1613, 0x3F70101020000000
  %1615 = fptoui float %1614 to i32
  %1616 = fmul fast float %1612, 2.550000e+02
  %1617 = fadd fast float %1616, 0x3F70101020000000
  %1618 = fptoui float %1617 to i32
  %1619 = icmp ult i32 %1615, %1618
  br i1 %1619, label %1620, label %1661

; <label>:1620                                    ; preds = %1584
  %1621 = fcmp fast ogt float %61, 9.843750e-01
  %1622 = select i1 %1621, float -4.000000e+00, float %1151
  %1623 = call float @dx.op.binary.f32(i32 35, float %1622, float 0.000000e+00)  ; FMax(a,b)
  %1624 = fadd fast float %1148, %1623
  %1625 = fmul fast float %1624, %1149
  %1626 = call float @dx.op.unary.f32(i32 23, float %1625)  ; Log(value)
  %1627 = fmul fast float %1150, %1626
  %1628 = fmul fast float %1627, %1158
  %1629 = call float @dx.op.unary.f32(i32 7, float %1628)  ; Saturate(value)
  %1630 = uitofp i32 %1615 to float
  %1631 = uitofp i32 %1618 to float
  %1632 = fadd fast float %1630, 5.000000e-01
  %1633 = fadd fast float %1631, 5.000000e-01
  %1634 = fmul fast float %1158, %1632
  %1635 = fmul fast float %1158, %1633
  %1636 = fadd fast float %1634, 0x3F0FFB4800000000
  %1637 = fadd fast float %1635, 0xBF0FFB4800000000
  %1638 = call float @dx.op.binary.f32(i32 35, float %1629, float %1636)  ; FMax(a,b)
  %1639 = call float @dx.op.binary.f32(i32 36, float %1638, float %1637)  ; FMin(a,b)
  %1640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1641 = extractvalue %dx.types.CBufRet.f32 %1640, 1
  %1642 = extractvalue %dx.types.CBufRet.f32 %1640, 2
  %1643 = extractvalue %dx.types.CBufRet.f32 %1640, 0
  %1644 = select i1 %983, float %1643, float 0.000000e+00
  %1645 = fmul fast float %1641, %1639
  %1646 = fadd fast float %1644, %1645
  %1647 = fadd fast float %1644, %1642
  %1648 = fsub fast float %1641, %1642
  %1649 = fadd fast float %1648, %1644
  %1650 = call float @dx.op.binary.f32(i32 35, float %1646, float %1647)  ; FMax(a,b)
  %1651 = call float @dx.op.binary.f32(i32 36, float %1650, float %1649)  ; FMin(a,b)
  %1652 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %26, float %1590, float %1591, float %1651, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1653 = extractvalue %dx.types.ResRet.f32 %1652, 0
  %1654 = extractvalue %dx.types.ResRet.f32 %1652, 1
  %1655 = extractvalue %dx.types.ResRet.f32 %1652, 2
  %1656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1657 = extractvalue %dx.types.CBufRet.f32 %1656, 1
  %1658 = fmul fast float %1657, %1653
  %1659 = fmul fast float %1657, %1654
  %1660 = fmul fast float %1657, %1655
  br label %1661

; <label>:1661                                    ; preds = %1620, %1584
  %1662 = phi float [ %1658, %1620 ], [ 1.000000e+00, %1584 ]
  %1663 = phi float [ %1659, %1620 ], [ 1.000000e+00, %1584 ]
  %1664 = phi float [ %1660, %1620 ], [ 1.000000e+00, %1584 ]
  %1665 = fmul fast float %1662, %1569
  %1666 = fmul fast float %1663, %1570
  %1667 = fmul fast float %1664, %1571
  br label %1668

; <label>:1668                                    ; preds = %1661, %1552
  %1669 = phi float [ %1665, %1661 ], [ %1569, %1552 ]
  %1670 = phi float [ %1666, %1661 ], [ %1570, %1552 ]
  %1671 = phi float [ %1667, %1661 ], [ %1571, %1552 ]
  %1672 = and i32 %159, 2097152
  %1673 = icmp eq i32 %1672, 0
  br i1 %1673, label %1678, label %1674, !dx.controlflow.hints !86

; <label>:1674                                    ; preds = %1668
  %1675 = add i32 %156, 192
  %1676 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1675, i32 undef)  ; BufferLoad(srv,index,wot)
  %1677 = extractvalue %dx.types.ResRet.f32 %1676, 0
  br label %1681

; <label>:1678                                    ; preds = %1668
  %1679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1680 = extractvalue %dx.types.CBufRet.f32 %1679, 3
  br label %1681

; <label>:1681                                    ; preds = %1678, %1674
  %1682 = phi float [ %1677, %1674 ], [ %1680, %1678 ]
  %1683 = fmul fast float %922, %638
  %1684 = fmul fast float %1683, %995
  %1685 = fmul fast float %1684, %1119
  %1686 = fmul fast float %923, %638
  %1687 = fmul fast float %1686, %996
  %1688 = fmul fast float %1687, %1119
  %1689 = fmul fast float %924, %638
  %1690 = fmul fast float %1689, %997
  %1691 = fmul fast float %1690, %1119
  br i1 %978, label %1692, label %1825

; <label>:1692                                    ; preds = %1681
  %1693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1694 = extractvalue %dx.types.CBufRet.f32 %1693, 2
  %1695 = extractvalue %dx.types.CBufRet.f32 %1693, 3
  %1696 = fmul fast float %1694, %69
  %1697 = fmul fast float %1695, %70
  %1698 = call float @dx.op.unary.f32(i32 7, float %1696)  ; Saturate(value)
  %1699 = call float @dx.op.unary.f32(i32 7, float %1697)  ; Saturate(value)
  %1700 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %27, float %1698, float %1699, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1701 = extractvalue %dx.types.ResRet.f32 %1700, 0
  %1702 = extractvalue %dx.types.ResRet.f32 %1700, 1
  %1703 = extractvalue %dx.types.ResRet.f32 %1700, 2
  %1704 = extractvalue %dx.types.ResRet.f32 %1700, 3
  %1705 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %27, float %1698, float %1699, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1706 = extractvalue %dx.types.ResRet.f32 %1705, 0
  %1707 = extractvalue %dx.types.ResRet.f32 %1705, 1
  %1708 = extractvalue %dx.types.ResRet.f32 %1705, 2
  %1709 = extractvalue %dx.types.ResRet.f32 %1705, 3
  %1710 = call float @dx.op.binary.f32(i32 35, float %1702, float %1703)  ; FMax(a,b)
  %1711 = call float @dx.op.binary.f32(i32 35, float %1701, float %1710)  ; FMax(a,b)
  %1712 = call float @dx.op.binary.f32(i32 35, float %1711, float %1704)  ; FMax(a,b)
  %1713 = call float @dx.op.binary.f32(i32 36, float %1707, float %1708)  ; FMin(a,b)
  %1714 = call float @dx.op.binary.f32(i32 36, float %1706, float %1713)  ; FMin(a,b)
  %1715 = call float @dx.op.binary.f32(i32 36, float %1714, float %1709)  ; FMin(a,b)
  %1716 = fmul fast float %1712, 2.550000e+02
  %1717 = fadd fast float %1716, 0x3F70101020000000
  %1718 = fptoui float %1717 to i32
  %1719 = fmul fast float %1715, 2.550000e+02
  %1720 = fadd fast float %1719, 0x3F70101020000000
  %1721 = fptoui float %1720 to i32
  %1722 = icmp ult i32 %1718, %1721
  br i1 %1722, label %1723, label %1767

; <label>:1723                                    ; preds = %1692
  %1724 = fcmp fast ogt float %61, 9.843750e-01
  %1725 = select i1 %1724, float -4.000000e+00, float %1151
  %1726 = call float @dx.op.binary.f32(i32 35, float %1725, float 0.000000e+00)  ; FMax(a,b)
  %1727 = fadd fast float %1148, %1726
  %1728 = fmul fast float %1727, %1149
  %1729 = call float @dx.op.unary.f32(i32 23, float %1728)  ; Log(value)
  %1730 = fmul fast float %1150, %1729
  %1731 = fmul fast float %1730, %1158
  %1732 = call float @dx.op.unary.f32(i32 7, float %1731)  ; Saturate(value)
  %1733 = uitofp i32 %1718 to float
  %1734 = uitofp i32 %1721 to float
  %1735 = fadd fast float %1733, 5.000000e-01
  %1736 = fadd fast float %1734, 5.000000e-01
  %1737 = fmul fast float %1158, %1735
  %1738 = fmul fast float %1158, %1736
  %1739 = fadd fast float %1737, 0x3F0FFB4800000000
  %1740 = fadd fast float %1738, 0xBF0FFB4800000000
  %1741 = call float @dx.op.binary.f32(i32 35, float %1732, float %1739)  ; FMax(a,b)
  %1742 = call float @dx.op.binary.f32(i32 36, float %1741, float %1740)  ; FMin(a,b)
  %1743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1744 = extractvalue %dx.types.CBufRet.f32 %1743, 1
  %1745 = extractvalue %dx.types.CBufRet.f32 %1743, 2
  %1746 = extractvalue %dx.types.CBufRet.f32 %1743, 0
  %1747 = fmul fast float %1744, %1742
  %1748 = fadd fast float %1746, %1747
  %1749 = fadd fast float %1746, %1745
  %1750 = fsub fast float %1744, %1745
  %1751 = fadd fast float %1750, %1746
  %1752 = call float @dx.op.binary.f32(i32 35, float %1748, float %1749)  ; FMax(a,b)
  %1753 = call float @dx.op.binary.f32(i32 36, float %1752, float %1751)  ; FMin(a,b)
  %1754 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %26, float %1698, float %1699, float %1753, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1755 = extractvalue %dx.types.ResRet.f32 %1754, 0
  %1756 = extractvalue %dx.types.ResRet.f32 %1754, 1
  %1757 = extractvalue %dx.types.ResRet.f32 %1754, 2
  %1758 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %26, float %1698, float %1699, float %1753, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1759 = extractvalue %dx.types.ResRet.f32 %1758, 0
  %1760 = extractvalue %dx.types.ResRet.f32 %1758, 1
  %1761 = extractvalue %dx.types.ResRet.f32 %1758, 2
  %1762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1763 = extractvalue %dx.types.CBufRet.f32 %1762, 1
  %1764 = fmul fast float %1763, %1759
  %1765 = fmul fast float %1763, %1760
  %1766 = fmul fast float %1763, %1761
  br label %1767

; <label>:1767                                    ; preds = %1723, %1692
  %1768 = phi float [ %1755, %1723 ], [ 1.000000e+00, %1692 ]
  %1769 = phi float [ %1756, %1723 ], [ 1.000000e+00, %1692 ]
  %1770 = phi float [ %1757, %1723 ], [ 1.000000e+00, %1692 ]
  %1771 = phi float [ %1764, %1723 ], [ 0.000000e+00, %1692 ]
  %1772 = phi float [ %1765, %1723 ], [ 0.000000e+00, %1692 ]
  %1773 = phi float [ %1766, %1723 ], [ 0.000000e+00, %1692 ]
  %1774 = fmul fast float %1771, %1574
  %1775 = fmul fast float %1772, %1574
  %1776 = fmul fast float %1773, %1574
  %1777 = call float @dx.op.dot3.f32(i32 55, float %1768, float %1769, float %1770, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1778 = call float @dx.op.dot3.f32(i32 55, float %1774, float %1775, float %1776, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1779 = select i1 %139, float %1777, float %1768
  %1780 = select i1 %139, float %1777, float %1769
  %1781 = select i1 %139, float 1.000000e+00, float %1770
  %1782 = select i1 %139, float %1778, float %1774
  %1783 = select i1 %139, float 0.000000e+00, float %1775
  %1784 = select i1 %139, float 0.000000e+00, float %1776
  %1785 = fmul fast float %1779, %1685
  %1786 = fmul fast float %1780, %1688
  %1787 = fmul fast float %1781, %1691
  %1788 = fadd fast float %1785, %1782
  %1789 = fadd fast float %1786, %1783
  %1790 = fadd fast float %1784, %1787
  %1791 = fmul fast float %1779, %1669
  %1792 = fmul fast float %1780, %1670
  %1793 = fmul fast float %1781, %1671
  %1794 = fmul fast float %74, %1694
  %1795 = fmul fast float %76, %1695
  %1796 = fsub fast float 1.000000e+00, %1794
  %1797 = fsub fast float 1.000000e+00, %1795
  %1798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1799 = extractvalue %dx.types.CBufRet.f32 %1798, 0
  %1800 = extractvalue %dx.types.CBufRet.f32 %1798, 1
  %1801 = extractvalue %dx.types.CBufRet.f32 %1798, 2
  %1802 = fmul fast float %1796, %1799
  %1803 = fmul fast float %1796, %1800
  %1804 = fmul fast float %1796, %1801
  %1805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1806 = extractvalue %dx.types.CBufRet.f32 %1805, 0
  %1807 = extractvalue %dx.types.CBufRet.f32 %1805, 1
  %1808 = extractvalue %dx.types.CBufRet.f32 %1805, 2
  %1809 = fmul fast float %1797, %1806
  %1810 = fmul fast float %1797, %1807
  %1811 = fmul fast float %1797, %1808
  %1812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1813 = extractvalue %dx.types.CBufRet.f32 %1812, 0
  %1814 = extractvalue %dx.types.CBufRet.f32 %1812, 1
  %1815 = extractvalue %dx.types.CBufRet.f32 %1812, 2
  %1816 = fadd fast float %1809, %1813
  %1817 = fadd fast float %1816, %1802
  %1818 = fadd fast float %1810, %1814
  %1819 = fadd fast float %1818, %1803
  %1820 = fadd fast float %1811, %1815
  %1821 = fadd fast float %1820, %1804
  %1822 = fmul fast float %1817, %975
  %1823 = fmul fast float %1819, %975
  %1824 = fmul fast float %1821, %975
  br label %1825

; <label>:1825                                    ; preds = %1767, %1681
  %1826 = phi float [ %1822, %1767 ], [ %104, %1681 ]
  %1827 = phi float [ %1823, %1767 ], [ %105, %1681 ]
  %1828 = phi float [ %1824, %1767 ], [ %106, %1681 ]
  %1829 = phi float [ %975, %1767 ], [ %62, %1681 ]
  %1830 = phi float [ %1788, %1767 ], [ %1685, %1681 ]
  %1831 = phi float [ %1789, %1767 ], [ %1688, %1681 ]
  %1832 = phi float [ %1790, %1767 ], [ %1691, %1681 ]
  %1833 = phi float [ %1791, %1767 ], [ %1669, %1681 ]
  %1834 = phi float [ %1792, %1767 ], [ %1670, %1681 ]
  %1835 = phi float [ %1793, %1767 ], [ %1671, %1681 ]
  %1836 = phi float [ %1768, %1767 ], [ 1.000000e+00, %1681 ]
  br i1 %983, label %2892, label %1837

; <label>:1837                                    ; preds = %1825
  %1838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1839 = extractvalue %dx.types.CBufRet.f32 %1838, 0
  %1840 = extractvalue %dx.types.CBufRet.f32 %1838, 1
  %1841 = extractvalue %dx.types.CBufRet.f32 %1838, 2
  %1842 = extractvalue %dx.types.CBufRet.f32 %1838, 3
  %1843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1844 = extractvalue %dx.types.CBufRet.f32 %1843, 0
  %1845 = extractvalue %dx.types.CBufRet.f32 %1843, 1
  %1846 = extractvalue %dx.types.CBufRet.f32 %1843, 2
  %1847 = extractvalue %dx.types.CBufRet.f32 %1843, 3
  %1848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1849 = extractvalue %dx.types.CBufRet.f32 %1848, 0
  %1850 = extractvalue %dx.types.CBufRet.f32 %1848, 1
  %1851 = extractvalue %dx.types.CBufRet.f32 %1848, 2
  %1852 = extractvalue %dx.types.CBufRet.f32 %1848, 3
  %1853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1854 = extractvalue %dx.types.CBufRet.f32 %1853, 0
  %1855 = extractvalue %dx.types.CBufRet.f32 %1853, 1
  %1856 = extractvalue %dx.types.CBufRet.f32 %1853, 2
  %1857 = extractvalue %dx.types.CBufRet.f32 %1853, 3
  %1858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1859 = extractvalue %dx.types.CBufRet.f32 %1858, 3
  %1860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1861 = extractvalue %dx.types.CBufRet.f32 %1860, 3
  %1862 = extractvalue %dx.types.CBufRet.f32 %1860, 0
  %1863 = extractvalue %dx.types.CBufRet.f32 %1860, 1
  %1864 = extractvalue %dx.types.CBufRet.f32 %1860, 2
  %1865 = fcmp fast olt float %1864, -5.000000e-01
  %1866 = call float @dx.op.dot3.f32(i32 55, float %1826, float %1827, float %1828, float %1826, float %1827, float %1828)  ; Dot3(ax,ay,az,bx,by,bz)
  %1867 = call float @dx.op.unary.f32(i32 25, float %1866)  ; Rsqrt(value)
  %1868 = fmul fast float %1867, %1866
  %1869 = fmul fast float %1867, %1826
  %1870 = fmul fast float %1867, %1827
  %1871 = fmul fast float %1867, %1828
  %1872 = fadd fast float %1868, %1842
  %1873 = call float @dx.op.dot3.f32(i32 55, float %1869, float %1870, float %1871, float %1839, float %1840, float %1841)  ; Dot3(ax,ay,az,bx,by,bz)
  %1874 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1875 = extractvalue %dx.types.CBufRet.i32 %1874, 1
  %1876 = and i32 %1875, 1
  %1877 = icmp ne i32 %1876, 0
  %1878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1879 = extractvalue %dx.types.CBufRet.f32 %1878, 2
  %1880 = fcmp fast ogt float %1879, 0.000000e+00
  %1881 = and i1 %1877, %1880
  br i1 %1881, label %1882, label %2288, !dx.controlflow.hints !87

; <label>:1882                                    ; preds = %1837
  %1883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1884 = extractvalue %dx.types.CBufRet.f32 %1883, 3
  %1885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1886 = extractvalue %dx.types.CBufRet.f32 %1885, 2
  %1887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1888 = extractvalue %dx.types.CBufRet.f32 %1887, 2
  %1889 = fsub fast float %1886, %1888
  %1890 = and i32 %1875, 2
  %1891 = extractvalue %dx.types.CBufRet.i32 %1874, 0
  %1892 = call i32 @dx.op.binary.i32(i32 40, i32 %1891, i32 3)  ; UMin(a,b)
  %1893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1894 = extractvalue %dx.types.CBufRet.f32 %1893, 0
  %1895 = extractvalue %dx.types.CBufRet.f32 %1893, 1
  %1896 = extractvalue %dx.types.CBufRet.f32 %1887, 0
  %1897 = extractvalue %dx.types.CBufRet.f32 %1887, 1
  %1898 = fsub fast float %1894, %1896
  %1899 = fsub fast float %1895, %1897
  %1900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1901 = extractvalue %dx.types.CBufRet.f32 %1900, 0
  %1902 = fcmp fast ogt float %1901, 0.000000e+00
  %1903 = fsub fast float -0.000000e+00, %1898
  %1904 = fsub fast float -0.000000e+00, %1899
  %1905 = call float @dx.op.dot2.f32(i32 54, float %1869, float %1870, float %1869, float %1870)  ; Dot2(ax,ay,bx,by)
  %1906 = call float @dx.op.dot2.f32(i32 54, float %1869, float %1870, float %1903, float %1904)  ; Dot2(ax,ay,bx,by)
  %1907 = fmul fast float %1906, 2.000000e+00
  %1908 = call float @dx.op.dot2.f32(i32 54, float %1903, float %1904, float %1903, float %1904)  ; Dot2(ax,ay,bx,by)
  %1909 = fmul fast float %1901, %1901
  %1910 = fsub fast float %1908, %1909
  %1911 = fmul fast float %1907, %1907
  %1912 = fmul fast float %1905, 4.000000e+00
  %1913 = fmul fast float %1912, %1910
  %1914 = fsub fast float %1911, %1913
  %1915 = fcmp fast ogt float %1914, 0.000000e+00
  br i1 %1915, label %1916, label %1931

; <label>:1916                                    ; preds = %1882
  %1917 = fcmp fast ogt float %1907, 0.000000e+00
  %1918 = call float @dx.op.unary.f32(i32 24, float %1914)  ; Sqrt(value)
  %1919 = fsub fast float -0.000000e+00, %1918
  %1920 = select i1 %1917, float %1918, float %1919
  %1921 = fadd fast float %1920, %1907
  %1922 = fmul float %1921, -5.000000e-01
  %1923 = fdiv fast float %1922, %1905
  %1924 = call float @dx.op.binary.f32(i32 35, float %1923, float 0.000000e+00)  ; FMax(a,b)
  %1925 = call float @dx.op.binary.f32(i32 36, float %1868, float %1924)  ; FMin(a,b)
  %1926 = fdiv fast float %1910, %1922
  %1927 = call float @dx.op.binary.f32(i32 35, float %1926, float 0.000000e+00)  ; FMax(a,b)
  %1928 = call float @dx.op.binary.f32(i32 36, float %1868, float %1927)  ; FMin(a,b)
  %1929 = call float @dx.op.binary.f32(i32 36, float %1925, float %1928)  ; FMin(a,b)
  %1930 = call float @dx.op.binary.f32(i32 35, float %1925, float %1928)  ; FMax(a,b)
  br label %1931

; <label>:1931                                    ; preds = %1916, %1882
  %1932 = phi float [ %1930, %1916 ], [ -1.000000e+00, %1882 ]
  %1933 = phi float [ %1929, %1916 ], [ -1.000000e+00, %1882 ]
  %1934 = phi i1 [ true, %1916 ], [ false, %1882 ]
  %1935 = and i1 %1902, %1934
  br i1 %1935, label %1936, label %1938

; <label>:1936                                    ; preds = %1931
  %1937 = fcmp fast oeq float %1933, %1932
  br i1 %1937, label %2241, label %1939

; <label>:1938                                    ; preds = %1931
  br i1 %1902, label %2241, label %1939

; <label>:1939                                    ; preds = %1938, %1936
  %1940 = phi float [ %1868, %1938 ], [ %1932, %1936 ]
  %1941 = phi float [ 0.000000e+00, %1938 ], [ %1933, %1936 ]
  %1942 = icmp ne i32 %1890, 0
  %1943 = fmul fast float %1940, %1871
  %1944 = fadd fast float %1943, %1884
  %1945 = fmul fast float %1944, %1940
  %1946 = select i1 %1942, float 0.000000e+00, float %1945
  %1947 = fcmp fast oeq float %1871, 0.000000e+00
  %1948 = fdiv fast float %1889, %1871
  %1949 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1948)  ; FMax(a,b)
  %1950 = select i1 %1947, float %1940, float %1949
  %1951 = call float @dx.op.binary.f32(i32 36, float %1940, float %1950)  ; FMin(a,b)
  %1952 = fcmp fast ogt float %1871, 0.000000e+00
  %1953 = fcmp fast olt float %1889, 0.000000e+00
  br i1 %1952, label %1954, label %2011

; <label>:1954                                    ; preds = %1939
  %1955 = icmp eq i32 %1890, 0
  br i1 %1953, label %1956, label %2000

; <label>:1956                                    ; preds = %1954
  %1957 = select i1 %1955, float %1940, float 0.000000e+00
  %1958 = fsub fast float -0.000000e+00, %1957
  %1959 = call float @dx.op.unary.f32(i32 6, float %1958)  ; FAbs(value)
  %1960 = fmul fast float %1957, %1871
  %1961 = fadd fast float %1960, %1884
  %1962 = fmul fast float %1959, %1961
  %1963 = fsub fast float %1946, %1962
  %1964 = fsub fast float %1940, %1959
  %1965 = select i1 %1955, float %1964, float 0.000000e+00
  %1966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1967 = extractvalue %dx.types.CBufRet.f32 %1966, 0
  %1968 = extractvalue %dx.types.CBufRet.f32 %1966, 1
  %1969 = extractvalue %dx.types.CBufRet.f32 %1966, 2
  %1970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1971 = extractvalue %dx.types.CBufRet.f32 %1970, 0
  %1972 = extractvalue %dx.types.CBufRet.f32 %1970, 1
  %1973 = extractvalue %dx.types.CBufRet.f32 %1970, 2
  %1974 = extractvalue %dx.types.CBufRet.f32 %1970, 3
  %1975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1976 = extractvalue %dx.types.CBufRet.f32 %1975, 3
  %1977 = call float @dx.op.binary.f32(i32 36, float %1963, float %1976)  ; FMin(a,b)
  %1978 = fmul fast float %1974, %1965
  %1979 = call float @dx.op.unary.f32(i32 7, float %1978)  ; Saturate(value)
  %1980 = fsub fast float %1971, %1967
  %1981 = fsub fast float %1972, %1968
  %1982 = fsub fast float %1973, %1969
  %1983 = fmul fast float %1979, %1980
  %1984 = fmul fast float %1979, %1981
  %1985 = fmul fast float %1979, %1982
  %1986 = fadd fast float %1983, %1967
  %1987 = fadd fast float %1984, %1968
  %1988 = fadd fast float %1985, %1969
  %1989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1990 = extractvalue %dx.types.CBufRet.f32 %1989, 0
  %1991 = extractvalue %dx.types.CBufRet.f32 %1989, 1
  %1992 = fadd fast float %1991, %1990
  %1993 = call float @dx.op.unary.f32(i32 7, float %1992)  ; Saturate(value)
  %1994 = extractvalue %dx.types.CBufRet.f32 %1989, 2
  %1995 = extractvalue %dx.types.CBufRet.f32 %1989, 3
  %1996 = fadd fast float %1995, %1994
  %1997 = call float @dx.op.unary.f32(i32 7, float %1996)  ; Saturate(value)
  %1998 = fmul fast float %1993, %1977
  %1999 = fmul fast float %1998, %1997
  br label %2241

; <label>:2000                                    ; preds = %1954
  br i1 %1955, label %2001, label %2022

; <label>:2001                                    ; preds = %2000
  %2002 = call float @dx.op.binary.f32(i32 36, float %1951, float %1941)  ; FMin(a,b)
  %2003 = fsub fast float %1951, %2002
  %2004 = fsub fast float %2003, %1940
  %2005 = call float @dx.op.unary.f32(i32 6, float %2004)  ; FAbs(value)
  %2006 = fadd fast float %2003, %1940
  %2007 = fmul fast float %2006, %1871
  %2008 = fadd fast float %2007, %1884
  %2009 = fmul fast float %2008, %2005
  %2010 = fsub fast float %1946, %2009
  br label %2022

; <label>:2011                                    ; preds = %1939
  br i1 %1953, label %2012, label %2022

; <label>:2012                                    ; preds = %2011
  %2013 = call float @dx.op.binary.f32(i32 35, float %1941, float %1951)  ; FMax(a,b)
  %2014 = icmp eq i32 %1890, 0
  %2015 = select i1 %2014, float %1951, float 0.000000e+00
  %2016 = fsub fast float -0.000000e+00, %2015
  %2017 = call float @dx.op.unary.f32(i32 6, float %2016)  ; FAbs(value)
  %2018 = fmul fast float %2015, %1871
  %2019 = fadd fast float %2018, %1884
  %2020 = fmul fast float %2017, %2019
  %2021 = fsub fast float %1946, %2020
  br label %2022

; <label>:2022                                    ; preds = %2012, %2011, %2001, %2000
  %2023 = phi float [ %1941, %2000 ], [ %1941, %2001 ], [ %2013, %2012 ], [ %1941, %2011 ]
  %2024 = phi float [ 0.000000e+00, %2000 ], [ %2005, %2001 ], [ %2017, %2012 ], [ 0.000000e+00, %2011 ]
  %2025 = phi float [ %1946, %2000 ], [ %2010, %2001 ], [ %2021, %2012 ], [ %1946, %2011 ]
  %2026 = phi float [ %1951, %2000 ], [ %1951, %2001 ], [ %1940, %2012 ], [ %1940, %2011 ]
  %2027 = getelementptr inbounds [3 x float], [3 x float]* %63, i32 0, i32 0
  store float -1.000000e+00, float* %2027, align 4, !tbaa !88, !noalias !92
  %2028 = getelementptr inbounds [3 x float], [3 x float]* %63, i32 0, i32 1
  store float -1.000000e+00, float* %2028, align 4, !tbaa !88, !noalias !92
  %2029 = getelementptr inbounds [3 x float], [3 x float]* %63, i32 0, i32 2
  store float -1.000000e+00, float* %2029, align 4, !tbaa !88, !noalias !92
  %2030 = getelementptr inbounds [3 x float], [3 x float]* %64, i32 0, i32 0
  store float -1.000000e+00, float* %2030, align 4, !tbaa !88, !noalias !92
  %2031 = getelementptr inbounds [3 x float], [3 x float]* %64, i32 0, i32 1
  store float -1.000000e+00, float* %2031, align 4, !tbaa !88, !noalias !92
  %2032 = getelementptr inbounds [3 x float], [3 x float]* %64, i32 0, i32 2
  store float -1.000000e+00, float* %2032, align 4, !tbaa !88, !noalias !92
  %2033 = icmp sgt i32 %1892, 0
  br i1 %2033, label %2034, label %2095

; <label>:2034                                    ; preds = %2022
  br label %2035

; <label>:2035                                    ; preds = %2084, %2034
  %2036 = phi i32 [ %2085, %2084 ], [ 0, %2034 ]
  %2037 = phi i32 [ %2086, %2084 ], [ 0, %2034 ]
  %2038 = add nuw i32 %2037, 171
  %2039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 %2038)  ; CBufferLoadLegacy(handle,regIndex)
  %2040 = extractvalue %dx.types.CBufRet.f32 %2039, 0
  %2041 = extractvalue %dx.types.CBufRet.f32 %2039, 1
  %2042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2043 = extractvalue %dx.types.CBufRet.f32 %2042, 0
  %2044 = extractvalue %dx.types.CBufRet.f32 %2042, 1
  %2045 = fsub fast float %2040, %2043
  %2046 = fsub fast float %2041, %2044
  %2047 = extractvalue %dx.types.CBufRet.f32 %2039, 2
  %2048 = fsub fast float -0.000000e+00, %2045
  %2049 = fsub fast float -0.000000e+00, %2046
  %2050 = call float @dx.op.dot2.f32(i32 54, float %1869, float %1870, float %2048, float %2049)  ; Dot2(ax,ay,bx,by)
  %2051 = fmul fast float %2050, 2.000000e+00
  %2052 = call float @dx.op.dot2.f32(i32 54, float %2048, float %2049, float %2048, float %2049)  ; Dot2(ax,ay,bx,by)
  %2053 = fmul fast float %2047, %2047
  %2054 = fsub fast float %2052, %2053
  %2055 = fmul fast float %2051, %2051
  %2056 = fmul fast float %1912, %2054
  %2057 = fsub fast float %2055, %2056
  %2058 = fcmp fast ogt float %2057, 0.000000e+00
  br i1 %2058, label %2059, label %2074

; <label>:2059                                    ; preds = %2035
  %2060 = fcmp fast ogt float %2051, 0.000000e+00
  %2061 = call float @dx.op.unary.f32(i32 24, float %2057)  ; Sqrt(value)
  %2062 = fsub fast float -0.000000e+00, %2061
  %2063 = select i1 %2060, float %2061, float %2062
  %2064 = fadd fast float %2063, %2051
  %2065 = fmul float %2064, -5.000000e-01
  %2066 = fdiv fast float %2065, %1905
  %2067 = call float @dx.op.binary.f32(i32 35, float %2066, float 0.000000e+00)  ; FMax(a,b)
  %2068 = call float @dx.op.binary.f32(i32 36, float %1940, float %2067)  ; FMin(a,b)
  %2069 = fdiv fast float %2054, %2065
  %2070 = call float @dx.op.binary.f32(i32 35, float %2069, float 0.000000e+00)  ; FMax(a,b)
  %2071 = call float @dx.op.binary.f32(i32 36, float %1940, float %2070)  ; FMin(a,b)
  %2072 = call float @dx.op.binary.f32(i32 36, float %2068, float %2071)  ; FMin(a,b)
  %2073 = call float @dx.op.binary.f32(i32 35, float %2068, float %2071)  ; FMax(a,b)
  br label %2074

; <label>:2074                                    ; preds = %2059, %2035
  %2075 = phi float [ %2073, %2059 ], [ -1.000000e+00, %2035 ]
  %2076 = phi float [ %2072, %2059 ], [ -1.000000e+00, %2035 ]
  %2077 = phi i1 [ true, %2059 ], [ false, %2035 ]
  br i1 %2077, label %2078, label %2084

; <label>:2078                                    ; preds = %2074
  %2079 = call float @dx.op.binary.f32(i32 35, float %2023, float %2076)  ; FMax(a,b)
  %2080 = getelementptr inbounds [3 x float], [3 x float]* %63, i32 0, i32 %2037
  store float %2079, float* %2080, align 4, !tbaa !88, !noalias !92
  %2081 = call float @dx.op.binary.f32(i32 35, float %2023, float %2075)  ; FMax(a,b)
  %2082 = getelementptr inbounds [3 x float], [3 x float]* %64, i32 0, i32 %2037
  store float %2081, float* %2082, align 4, !tbaa !88, !noalias !92
  %2083 = add nsw i32 %2036, 1
  br label %2084

; <label>:2084                                    ; preds = %2078, %2074
  %2085 = phi i32 [ %2083, %2078 ], [ %2036, %2074 ]
  %2086 = add nuw nsw i32 %2037, 1
  %2087 = icmp eq i32 %2086, %1892
  br i1 %2087, label %2088, label %2035

; <label>:2088                                    ; preds = %2084
  %2089 = load float, float* %2029, align 4, !tbaa !88, !alias.scope !108, !noalias !111
  %2090 = load float, float* %2028, align 4, !tbaa !88, !alias.scope !114, !noalias !115
  %2091 = load float, float* %2027, align 4, !tbaa !88, !alias.scope !116, !noalias !117
  %2092 = load float, float* %2032, align 4, !tbaa !88, !alias.scope !118, !noalias !121
  %2093 = load float, float* %2031, align 4, !tbaa !88, !alias.scope !124, !noalias !125
  %2094 = load float, float* %2030, align 4, !tbaa !88, !alias.scope !126, !noalias !127
  br label %2095

; <label>:2095                                    ; preds = %2088, %2022
  %2096 = phi float [ -1.000000e+00, %2022 ], [ %2094, %2088 ]
  %2097 = phi float [ -1.000000e+00, %2022 ], [ %2093, %2088 ]
  %2098 = phi float [ -1.000000e+00, %2022 ], [ %2092, %2088 ]
  %2099 = phi float [ -1.000000e+00, %2022 ], [ %2091, %2088 ]
  %2100 = phi float [ -1.000000e+00, %2022 ], [ %2090, %2088 ]
  %2101 = phi float [ -1.000000e+00, %2022 ], [ %2089, %2088 ]
  %2102 = phi i32 [ 0, %2022 ], [ %2085, %2088 ]
  %2103 = call float @dx.op.binary.f32(i32 36, float %2100, float %2101)  ; FMin(a,b)
  %2104 = call float @dx.op.binary.f32(i32 36, float %2099, float %2103)  ; FMin(a,b)
  %2105 = call float @dx.op.binary.f32(i32 35, float %2099, float %2100)  ; FMax(a,b)
  %2106 = call float @dx.op.binary.f32(i32 36, float %2105, float %2101)  ; FMin(a,b)
  %2107 = call float @dx.op.binary.f32(i32 36, float %2099, float %2100)  ; FMin(a,b)
  %2108 = call float @dx.op.binary.f32(i32 35, float %2107, float %2106)  ; FMax(a,b)
  %2109 = call float @dx.op.binary.f32(i32 35, float %2100, float %2101)  ; FMax(a,b)
  %2110 = call float @dx.op.binary.f32(i32 35, float %2099, float %2109)  ; FMax(a,b)
  store float %2104, float* %2027, align 4, !tbaa !88, !alias.scope !116, !noalias !117
  store float %2108, float* %2028, align 4, !tbaa !88, !alias.scope !114, !noalias !115
  store float %2110, float* %2029, align 4, !tbaa !88, !alias.scope !108, !noalias !111
  %2111 = call float @dx.op.binary.f32(i32 36, float %2097, float %2098)  ; FMin(a,b)
  %2112 = call float @dx.op.binary.f32(i32 36, float %2096, float %2111)  ; FMin(a,b)
  %2113 = call float @dx.op.binary.f32(i32 35, float %2096, float %2097)  ; FMax(a,b)
  %2114 = call float @dx.op.binary.f32(i32 36, float %2113, float %2098)  ; FMin(a,b)
  %2115 = call float @dx.op.binary.f32(i32 36, float %2096, float %2097)  ; FMin(a,b)
  %2116 = call float @dx.op.binary.f32(i32 35, float %2115, float %2114)  ; FMax(a,b)
  %2117 = call float @dx.op.binary.f32(i32 35, float %2097, float %2098)  ; FMax(a,b)
  %2118 = call float @dx.op.binary.f32(i32 35, float %2096, float %2117)  ; FMax(a,b)
  store float %2112, float* %2030, align 4, !tbaa !88, !alias.scope !126, !noalias !127
  store float %2116, float* %2031, align 4, !tbaa !88, !alias.scope !124, !noalias !125
  store float %2118, float* %2032, align 4, !tbaa !88, !alias.scope !118, !noalias !121
  %2119 = sub nsw i32 3, %2102
  %2120 = icmp sgt i32 %2119, 2
  br i1 %2120, label %2121, label %2159

; <label>:2121                                    ; preds = %2095
  %2122 = icmp eq i32 %1890, 0
  %2123 = fsub fast float %1940, %2024
  %2124 = select i1 %2122, float %2123, float %2024
  %2125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2126 = extractvalue %dx.types.CBufRet.f32 %2125, 0
  %2127 = extractvalue %dx.types.CBufRet.f32 %2125, 1
  %2128 = extractvalue %dx.types.CBufRet.f32 %2125, 2
  %2129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2130 = extractvalue %dx.types.CBufRet.f32 %2129, 0
  %2131 = extractvalue %dx.types.CBufRet.f32 %2129, 1
  %2132 = extractvalue %dx.types.CBufRet.f32 %2129, 2
  %2133 = extractvalue %dx.types.CBufRet.f32 %2129, 3
  %2134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2135 = extractvalue %dx.types.CBufRet.f32 %2134, 3
  %2136 = call float @dx.op.binary.f32(i32 36, float %2025, float %2135)  ; FMin(a,b)
  %2137 = fmul fast float %2133, %2124
  %2138 = call float @dx.op.unary.f32(i32 7, float %2137)  ; Saturate(value)
  %2139 = fsub fast float %2130, %2126
  %2140 = fsub fast float %2131, %2127
  %2141 = fsub fast float %2132, %2128
  %2142 = fmul fast float %2138, %2139
  %2143 = fmul fast float %2138, %2140
  %2144 = fmul fast float %2138, %2141
  %2145 = fadd fast float %2142, %2126
  %2146 = fadd fast float %2143, %2127
  %2147 = fadd fast float %2144, %2128
  %2148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2149 = extractvalue %dx.types.CBufRet.f32 %2148, 0
  %2150 = extractvalue %dx.types.CBufRet.f32 %2148, 1
  %2151 = fadd fast float %2150, %2149
  %2152 = call float @dx.op.unary.f32(i32 7, float %2151)  ; Saturate(value)
  %2153 = extractvalue %dx.types.CBufRet.f32 %2148, 2
  %2154 = extractvalue %dx.types.CBufRet.f32 %2148, 3
  %2155 = fadd fast float %2154, %2153
  %2156 = call float @dx.op.unary.f32(i32 7, float %2155)  ; Saturate(value)
  %2157 = fmul fast float %2152, %2136
  %2158 = fmul fast float %2157, %2156
  br label %2241

; <label>:2159                                    ; preds = %2095
  %2160 = getelementptr inbounds [3 x float], [3 x float]* %63, i32 0, i32 %2119
  %2161 = load float, float* %2160, align 4, !tbaa !88, !noalias !92
  %2162 = fcmp fast olt float %2161, %2026
  %2163 = icmp sgt i32 %2102, 0
  %2164 = and i1 %2163, %2162
  br i1 %2164, label %2165, label %2202

; <label>:2165                                    ; preds = %2159
  br label %2166

; <label>:2166                                    ; preds = %2195, %2165
  %2167 = phi float [ %2196, %2195 ], [ %2024, %2165 ]
  %2168 = phi float [ %2197, %2195 ], [ %2025, %2165 ]
  %2169 = phi float [ %2177, %2195 ], [ %2161, %2165 ]
  %2170 = phi i32 [ %2174, %2195 ], [ %2119, %2165 ]
  %2171 = getelementptr inbounds [3 x float], [3 x float]* %64, i32 0, i32 %2170
  %2172 = load float, float* %2171, align 4, !tbaa !88, !noalias !92
  %2173 = icmp slt i32 %2170, 2
  %2174 = add nsw i32 %2170, 1
  %2175 = getelementptr inbounds [3 x float], [3 x float]* %63, i32 0, i32 %2174
  %2176 = load float, float* %2175, align 4, !tbaa !88, !noalias !92
  %2177 = select i1 %2173, float %2176, float %1940
  %2178 = call float @dx.op.binary.f32(i32 36, float %2177, float %2172)  ; FMin(a,b)
  %2179 = call float @dx.op.binary.f32(i32 36, float %2026, float %2178)  ; FMin(a,b)
  %2180 = icmp eq i32 %1890, 0
  %2181 = fadd fast float %2179, %2169
  %2182 = fmul fast float %2181, %1871
  %2183 = fadd fast float %2182, %1884
  br i1 %2180, label %2189, label %2184

; <label>:2184                                    ; preds = %2166
  %2185 = fsub fast float %2179, %2169
  %2186 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2185)  ; FMax(a,b)
  %2187 = fmul fast float %2186, %2183
  %2188 = fadd fast float %2187, %2168
  br label %2195

; <label>:2189                                    ; preds = %2166
  %2190 = fsub fast float %2169, %2179
  %2191 = call float @dx.op.unary.f32(i32 6, float %2190)  ; FAbs(value)
  %2192 = fadd fast float %2191, %2167
  %2193 = fmul fast float %2191, %2183
  %2194 = fsub fast float %2168, %2193
  br label %2195

; <label>:2195                                    ; preds = %2189, %2184
  %2196 = phi float [ %2186, %2184 ], [ %2192, %2189 ]
  %2197 = phi float [ %2188, %2184 ], [ %2194, %2189 ]
  %2198 = fcmp fast olt float %2177, %2026
  %2199 = icmp slt i32 %2174, 3
  %2200 = and i1 %2199, %2198
  br i1 %2200, label %2166, label %2201

; <label>:2201                                    ; preds = %2195
  br label %2202

; <label>:2202                                    ; preds = %2201, %2159
  %2203 = phi float [ %2024, %2159 ], [ %2196, %2201 ]
  %2204 = phi float [ %2025, %2159 ], [ %2197, %2201 ]
  %2205 = fsub fast float %1940, %2203
  %2206 = select i1 %1942, float %2203, float %2205
  %2207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2208 = extractvalue %dx.types.CBufRet.f32 %2207, 0
  %2209 = extractvalue %dx.types.CBufRet.f32 %2207, 1
  %2210 = extractvalue %dx.types.CBufRet.f32 %2207, 2
  %2211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2212 = extractvalue %dx.types.CBufRet.f32 %2211, 0
  %2213 = extractvalue %dx.types.CBufRet.f32 %2211, 1
  %2214 = extractvalue %dx.types.CBufRet.f32 %2211, 2
  %2215 = extractvalue %dx.types.CBufRet.f32 %2211, 3
  %2216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2217 = extractvalue %dx.types.CBufRet.f32 %2216, 3
  %2218 = call float @dx.op.binary.f32(i32 36, float %2204, float %2217)  ; FMin(a,b)
  %2219 = fmul fast float %2215, %2206
  %2220 = call float @dx.op.unary.f32(i32 7, float %2219)  ; Saturate(value)
  %2221 = fsub fast float %2212, %2208
  %2222 = fsub fast float %2213, %2209
  %2223 = fsub fast float %2214, %2210
  %2224 = fmul fast float %2220, %2221
  %2225 = fmul fast float %2220, %2222
  %2226 = fmul fast float %2220, %2223
  %2227 = fadd fast float %2224, %2208
  %2228 = fadd fast float %2225, %2209
  %2229 = fadd fast float %2226, %2210
  %2230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2231 = extractvalue %dx.types.CBufRet.f32 %2230, 0
  %2232 = extractvalue %dx.types.CBufRet.f32 %2230, 1
  %2233 = fadd fast float %2232, %2231
  %2234 = call float @dx.op.unary.f32(i32 7, float %2233)  ; Saturate(value)
  %2235 = extractvalue %dx.types.CBufRet.f32 %2230, 2
  %2236 = extractvalue %dx.types.CBufRet.f32 %2230, 3
  %2237 = fadd fast float %2236, %2235
  %2238 = call float @dx.op.unary.f32(i32 7, float %2237)  ; Saturate(value)
  %2239 = fmul fast float %2234, %2218
  %2240 = fmul fast float %2239, %2238
  br label %2241

; <label>:2241                                    ; preds = %2202, %2121, %1956, %1938, %1936
  %2242 = phi float [ %1965, %1956 ], [ %2124, %2121 ], [ %2206, %2202 ], [ 0.000000e+00, %1936 ], [ 0.000000e+00, %1938 ]
  %2243 = phi float [ %1999, %1956 ], [ %2158, %2121 ], [ %2240, %2202 ], [ 0.000000e+00, %1936 ], [ 0.000000e+00, %1938 ]
  %2244 = phi float [ %1986, %1956 ], [ %2145, %2121 ], [ %2227, %2202 ], [ 0.000000e+00, %1936 ], [ 0.000000e+00, %1938 ]
  %2245 = phi float [ %1987, %1956 ], [ %2146, %2121 ], [ %2228, %2202 ], [ 0.000000e+00, %1936 ], [ 0.000000e+00, %1938 ]
  %2246 = phi float [ %1988, %1956 ], [ %2147, %2121 ], [ %2229, %2202 ], [ 0.000000e+00, %1936 ], [ 0.000000e+00, %1938 ]
  %2247 = fmul fast float %1879, %2243
  %2248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2249 = extractvalue %dx.types.CBufRet.f32 %2248, 2
  %2250 = fsub fast float %1886, %2249
  %2251 = fcmp fast olt float %2247, -2.000000e+01
  %2252 = call float @dx.op.unary.f32(i32 21, float %2247)  ; Exp(value)
  %2253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2254 = extractvalue %dx.types.CBufRet.f32 %2253, 2
  %2255 = extractvalue %dx.types.CBufRet.f32 %2253, 3
  %2256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2257 = extractvalue %dx.types.CBufRet.f32 %2256, 2
  %2258 = fmul fast float %2255, %2250
  %2259 = call float @dx.op.unary.f32(i32 7, float %2258)  ; Saturate(value)
  %2260 = fsub fast float 1.000000e+00, %2259
  %2261 = fmul fast float %1871, 5.000000e-01
  %2262 = fadd fast float %2261, 5.000000e-01
  %2263 = call float @dx.op.unary.f32(i32 7, float %2262)  ; Saturate(value)
  %2264 = fsub fast float 1.000000e+00, %2263
  %2265 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2260)  ; FMax(a,b)
  %2266 = fdiv fast float %2264, %2265
  %2267 = fsub fast float %2250, %1828
  %2268 = call float @dx.op.unary.f32(i32 6, float %2267)  ; FAbs(value)
  %2269 = fmul fast float %2268, %2254
  %2270 = call float @dx.op.unary.f32(i32 7, float %2266)  ; Saturate(value)
  %2271 = fsub fast float 1.000000e+00, %2269
  %2272 = fmul fast float %2271, %2270
  %2273 = fadd fast float %2272, %2269
  %2274 = fmul fast float %2257, %2250
  %2275 = call float @dx.op.unary.f32(i32 7, float %2274)  ; Saturate(value)
  %2276 = fsub fast float 1.000000e+00, %2273
  %2277 = fmul fast float %2276, %2275
  %2278 = fadd fast float %2277, %2273
  %2279 = call float @dx.op.unary.f32(i32 7, float %2278)  ; Saturate(value)
  %2280 = fadd fast float %2252, -1.000000e+00
  %2281 = select i1 %2251, float -1.000000e+00, float %2280
  %2282 = fmul fast float %2279, %2281
  %2283 = fadd fast float %2282, 1.000000e+00
  %2284 = fsub fast float -0.000000e+00, %2282
  %2285 = fmul fast float %2244, %2284
  %2286 = fmul fast float %2245, %2284
  %2287 = fmul fast float %2246, %2284
  br label %2288

; <label>:2288                                    ; preds = %2241, %1837
  %2289 = phi float [ %2242, %2241 ], [ 0.000000e+00, %1837 ]
  %2290 = phi float [ %2283, %2241 ], [ 1.000000e+00, %1837 ]
  %2291 = phi float [ %2285, %2241 ], [ 0.000000e+00, %1837 ]
  %2292 = phi float [ %2286, %2241 ], [ 0.000000e+00, %1837 ]
  %2293 = phi float [ %2287, %2241 ], [ 0.000000e+00, %1837 ]
  %2294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2295 = extractvalue %dx.types.CBufRet.f32 %2294, 1
  %2296 = fsub fast float 1.000000e+00, %2290
  %2297 = fmul fast float %2296, %1872
  %2298 = fmul fast float %2297, %2295
  %2299 = fsub fast float %1872, %2298
  br i1 %1865, label %2300, label %2329, !dx.controlflow.hints !128

; <label>:2300                                    ; preds = %2288
  %2301 = fmul fast float %1873, %1862
  %2302 = fadd fast float %2301, %1863
  %2303 = call float @dx.op.unary.f32(i32 7, float %2302)  ; Saturate(value)
  %2304 = fmul fast float %1844, %2299
  %2305 = fsub fast float -0.000000e+00, %2304
  %2306 = fmul fast float %1845, %2299
  %2307 = fsub fast float -0.000000e+00, %2306
  %2308 = call float @dx.op.unary.f32(i32 21, float %2305)  ; Exp(value)
  %2309 = call float @dx.op.unary.f32(i32 21, float %2307)  ; Exp(value)
  %2310 = call float @dx.op.binary.f32(i32 35, float %1852, float %2308)  ; FMax(a,b)
  %2311 = call float @dx.op.binary.f32(i32 35, float %1852, float %2309)  ; FMax(a,b)
  %2312 = fsub fast float %2311, %2310
  %2313 = fmul fast float %2312, %2303
  %2314 = fadd fast float %2313, %2310
  %2315 = call float @dx.op.unary.f32(i32 7, float %2314)  ; Saturate(value)
  %2316 = fsub fast float %1849, %1854
  %2317 = fsub fast float %1850, %1855
  %2318 = fsub fast float %1851, %1856
  %2319 = fmul fast float %2303, %2316
  %2320 = fmul fast float %2303, %2317
  %2321 = fmul fast float %2303, %2318
  %2322 = fadd fast float %2319, %1854
  %2323 = fadd fast float %2320, %1855
  %2324 = fadd fast float %2321, %1856
  %2325 = fsub fast float 1.000000e+00, %2315
  %2326 = fmul fast float %2325, %2322
  %2327 = fmul fast float %2325, %2323
  %2328 = fmul fast float %2325, %2324
  br label %2388

; <label>:2329                                    ; preds = %2288
  %2330 = fmul fast float %2299, %1861
  %2331 = call float @dx.op.unary.f32(i32 7, float %2330)  ; Saturate(value)
  %2332 = fsub fast float 2.000000e+00, %2331
  %2333 = fmul fast float %2331, 9.921875e-01
  %2334 = fmul fast float %2333, %2332
  %2335 = fadd fast float %2334, 3.906250e-03
  %2336 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %27, float %2335, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2337 = extractvalue %dx.types.ResRet.f32 %2336, 0
  %2338 = fsub fast float %2331, %2337
  %2339 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2338)  ; FMax(a,b)
  %2340 = fmul fast float %1847, %1828
  %2341 = call float @dx.op.unary.f32(i32 6, float %2340)  ; FAbs(value)
  %2342 = fcmp fast ogt float %2341, 0x3EB0C6F7A0000000
  br i1 %2342, label %2343, label %2349, !dx.controlflow.hints !129

; <label>:2343                                    ; preds = %2329
  %2344 = fmul fast float %2340, 0xBFF7154760000000
  %2345 = call float @dx.op.unary.f32(i32 21, float %2344)  ; Exp(value)
  %2346 = fsub fast float 1.000000e+00, %2345
  %2347 = fdiv fast float %2346, %2340
  %2348 = fmul fast float %2347, %1857
  br label %2349

; <label>:2349                                    ; preds = %2343, %2329
  %2350 = phi float [ %2348, %2343 ], [ %1857, %2329 ]
  %2351 = fadd fast float %2350, %1859
  %2352 = fmul fast float %2351, %2339
  %2353 = fmul fast float %1844, %2352
  %2354 = fsub fast float -0.000000e+00, %2353
  %2355 = fmul fast float %1845, %2352
  %2356 = fsub fast float -0.000000e+00, %2355
  %2357 = fmul fast float %1846, %2352
  %2358 = fsub fast float -0.000000e+00, %2357
  %2359 = call float @dx.op.unary.f32(i32 21, float %2354)  ; Exp(value)
  %2360 = call float @dx.op.unary.f32(i32 21, float %2356)  ; Exp(value)
  %2361 = call float @dx.op.unary.f32(i32 21, float %2358)  ; Exp(value)
  %2362 = fmul fast float %1873, %1873
  %2363 = fadd fast float %2362, 1.000000e+00
  %2364 = fmul fast float %2363, 0x3FAE8EC8A0000000
  %2365 = fmul fast float %2364, %1854
  %2366 = fmul fast float %2364, %1855
  %2367 = fmul fast float %2364, %1856
  %2368 = fmul fast float %1873, %1852
  %2369 = fsub fast float 1.000000e+00, %2368
  %2370 = fmul fast float %1852, %1852
  %2371 = fsub fast float 1.000000e+00, %2370
  %2372 = fmul fast float %2371, 0x3FB45F3060000000
  %2373 = fmul fast float %2369, %2369
  %2374 = fdiv fast float 1.000000e+00, %2373
  %2375 = fmul fast float %2372, %2374
  %2376 = fmul fast float %2375, %1849
  %2377 = fmul fast float %2375, %1850
  %2378 = fmul fast float %2375, %1851
  %2379 = fadd fast float %2376, %2365
  %2380 = fadd fast float %2377, %2366
  %2381 = fadd fast float %2378, %2367
  %2382 = fsub fast float 1.000000e+00, %2359
  %2383 = fsub fast float 1.000000e+00, %2360
  %2384 = fsub fast float 1.000000e+00, %2361
  %2385 = fmul fast float %2379, %2382
  %2386 = fmul fast float %2380, %2383
  %2387 = fmul fast float %2381, %2384
  br label %2388

; <label>:2388                                    ; preds = %2349, %2300
  %2389 = phi float [ %2326, %2300 ], [ %2385, %2349 ]
  %2390 = phi float [ %2327, %2300 ], [ %2386, %2349 ]
  %2391 = phi float [ %2328, %2300 ], [ %2387, %2349 ]
  %2392 = phi float [ %2315, %2300 ], [ %2359, %2349 ]
  %2393 = phi float [ %2315, %2300 ], [ %2360, %2349 ]
  %2394 = phi float [ %2315, %2300 ], [ %2361, %2349 ]
  br i1 %1881, label %2395, label %2593, !dx.controlflow.hints !130

; <label>:2395                                    ; preds = %2388
  %2396 = extractvalue %dx.types.CBufRet.f32 %2294, 0
  %2397 = fmul fast float %2396, %2296
  %2398 = fsub fast float %2291, %2389
  %2399 = fsub fast float %2292, %2390
  %2400 = fsub fast float %2293, %2391
  %2401 = fmul fast float %2397, %2398
  %2402 = fmul fast float %2397, %2399
  %2403 = fmul fast float %2397, %2400
  %2404 = fadd fast float %2401, %2389
  %2405 = fadd fast float %2402, %2390
  %2406 = fadd fast float %2403, %2391
  %2407 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2392)  ; FMax(a,b)
  %2408 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2393)  ; FMax(a,b)
  %2409 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2394)  ; FMax(a,b)
  %2410 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2290)  ; FMax(a,b)
  %2411 = call float @dx.op.binary.f32(i32 35, float %2289, float %2299)  ; FMax(a,b)
  %2412 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2411)  ; FMax(a,b)
  %2413 = fdiv fast float %2289, %2412
  %2414 = call float @dx.op.unary.f32(i32 7, float %2413)  ; Saturate(value)
  %2415 = fdiv fast float %2299, %2412
  %2416 = call float @dx.op.unary.f32(i32 7, float %2415)  ; Saturate(value)
  %2417 = fcmp fast une float %2410, 1.000000e+00
  br i1 %2417, label %2418, label %2431, !dx.controlflow.hints !131

; <label>:2418                                    ; preds = %2395
  %2419 = call float @dx.op.unary.f32(i32 23, float %2410)  ; Log(value)
  %2420 = fmul fast float %2419, 0x3FE62E4300000000
  %2421 = fmul fast float %2291, %2420
  %2422 = fsub fast float -0.000000e+00, %2421
  %2423 = fmul fast float %2292, %2420
  %2424 = fsub fast float -0.000000e+00, %2423
  %2425 = fmul fast float %2293, %2420
  %2426 = fsub fast float -0.000000e+00, %2425
  %2427 = fsub fast float 1.000000e+00, %2410
  %2428 = fdiv fast float %2422, %2427
  %2429 = fdiv fast float %2424, %2427
  %2430 = fdiv fast float %2426, %2427
  br label %2431

; <label>:2431                                    ; preds = %2418, %2395
  %2432 = phi float [ %2428, %2418 ], [ %2291, %2395 ]
  %2433 = phi float [ %2429, %2418 ], [ %2292, %2395 ]
  %2434 = phi float [ %2430, %2418 ], [ %2293, %2395 ]
  %2435 = phi float [ %2420, %2418 ], [ 0.000000e+00, %2395 ]
  %2436 = fcmp fast une float %2407, 1.000000e+00
  br i1 %2436, label %2437, label %2444, !dx.controlflow.hints !132

; <label>:2437                                    ; preds = %2431
  %2438 = call float @dx.op.unary.f32(i32 23, float %2407)  ; Log(value)
  %2439 = fmul fast float %2438, 0x3FE62E4300000000
  %2440 = fmul fast float %2404, %2439
  %2441 = fsub fast float -0.000000e+00, %2440
  %2442 = fsub fast float 1.000000e+00, %2407
  %2443 = fdiv fast float %2441, %2442
  br label %2444

; <label>:2444                                    ; preds = %2437, %2431
  %2445 = phi float [ %2443, %2437 ], [ %2404, %2431 ]
  %2446 = phi float [ %2439, %2437 ], [ 0.000000e+00, %2431 ]
  %2447 = fcmp fast une float %2408, 1.000000e+00
  br i1 %2447, label %2448, label %2455, !dx.controlflow.hints !132

; <label>:2448                                    ; preds = %2444
  %2449 = call float @dx.op.unary.f32(i32 23, float %2408)  ; Log(value)
  %2450 = fmul fast float %2449, 0x3FE62E4300000000
  %2451 = fmul fast float %2405, %2450
  %2452 = fsub fast float -0.000000e+00, %2451
  %2453 = fsub fast float 1.000000e+00, %2408
  %2454 = fdiv fast float %2452, %2453
  br label %2455

; <label>:2455                                    ; preds = %2448, %2444
  %2456 = phi float [ %2454, %2448 ], [ %2405, %2444 ]
  %2457 = phi float [ %2450, %2448 ], [ 0.000000e+00, %2444 ]
  %2458 = fcmp fast une float %2409, 1.000000e+00
  br i1 %2458, label %2459, label %2466, !dx.controlflow.hints !132

; <label>:2459                                    ; preds = %2455
  %2460 = call float @dx.op.unary.f32(i32 23, float %2409)  ; Log(value)
  %2461 = fmul fast float %2460, 0x3FE62E4300000000
  %2462 = fmul fast float %2406, %2461
  %2463 = fsub fast float -0.000000e+00, %2462
  %2464 = fsub fast float 1.000000e+00, %2409
  %2465 = fdiv fast float %2463, %2464
  br label %2466

; <label>:2466                                    ; preds = %2459, %2455
  %2467 = phi float [ %2465, %2459 ], [ %2406, %2455 ]
  %2468 = phi float [ %2461, %2459 ], [ 0.000000e+00, %2455 ]
  %2469 = fmul fast float %2432, %2416
  %2470 = fmul fast float %2433, %2416
  %2471 = fmul fast float %2434, %2416
  %2472 = fmul fast float %2435, %2416
  %2473 = fmul fast float %2445, %2414
  %2474 = fmul fast float %2456, %2414
  %2475 = fmul fast float %2467, %2414
  %2476 = fmul fast float %2446, %2414
  %2477 = fmul fast float %2457, %2414
  %2478 = fmul fast float %2468, %2414
  %2479 = fadd fast float %2473, %2469
  %2480 = fadd fast float %2474, %2470
  %2481 = fadd fast float %2475, %2471
  %2482 = fadd fast float %2476, %2472
  %2483 = fadd fast float %2477, %2472
  %2484 = fadd fast float %2478, %2472
  %2485 = fcmp fast une float %2482, 0.000000e+00
  br i1 %2485, label %2486, label %2493, !dx.controlflow.hints !133

; <label>:2486                                    ; preds = %2466
  %2487 = fmul fast float %2482, 0x3FF7154760000000
  %2488 = call float @dx.op.unary.f32(i32 21, float %2487)  ; Exp(value)
  %2489 = fsub fast float 1.000000e+00, %2488
  %2490 = fmul fast float %2479, %2489
  %2491 = fsub fast float -0.000000e+00, %2490
  %2492 = fdiv fast float %2491, %2482
  br label %2493

; <label>:2493                                    ; preds = %2486, %2466
  %2494 = phi float [ %2488, %2486 ], [ 1.000000e+00, %2466 ]
  %2495 = phi float [ %2492, %2486 ], [ %2479, %2466 ]
  %2496 = fcmp fast une float %2483, 0.000000e+00
  br i1 %2496, label %2497, label %2504, !dx.controlflow.hints !133

; <label>:2497                                    ; preds = %2493
  %2498 = fmul fast float %2483, 0x3FF7154760000000
  %2499 = call float @dx.op.unary.f32(i32 21, float %2498)  ; Exp(value)
  %2500 = fsub fast float 1.000000e+00, %2499
  %2501 = fmul fast float %2480, %2500
  %2502 = fsub fast float -0.000000e+00, %2501
  %2503 = fdiv fast float %2502, %2483
  br label %2504

; <label>:2504                                    ; preds = %2497, %2493
  %2505 = phi float [ %2499, %2497 ], [ 1.000000e+00, %2493 ]
  %2506 = phi float [ %2503, %2497 ], [ %2480, %2493 ]
  %2507 = fcmp fast une float %2484, 0.000000e+00
  br i1 %2507, label %2508, label %2515, !dx.controlflow.hints !133

; <label>:2508                                    ; preds = %2504
  %2509 = fmul fast float %2484, 0x3FF7154760000000
  %2510 = call float @dx.op.unary.f32(i32 21, float %2509)  ; Exp(value)
  %2511 = fsub fast float 1.000000e+00, %2510
  %2512 = fmul fast float %2481, %2511
  %2513 = fsub fast float -0.000000e+00, %2512
  %2514 = fdiv fast float %2513, %2484
  br label %2515

; <label>:2515                                    ; preds = %2508, %2504
  %2516 = phi float [ %2510, %2508 ], [ 1.000000e+00, %2504 ]
  %2517 = phi float [ %2514, %2508 ], [ %2481, %2504 ]
  %2518 = fcmp fast ogt float %2414, %2416
  br i1 %2518, label %2519, label %2539

; <label>:2519                                    ; preds = %2515
  %2520 = fsub fast float 1.000000e+00, %2416
  %2521 = fmul fast float %2432, %2520
  %2522 = fmul fast float %2433, %2520
  %2523 = fmul fast float %2434, %2520
  %2524 = fmul fast float %2435, %2520
  %2525 = fcmp fast une float %2524, 0.000000e+00
  br i1 %2525, label %2526, label %2577, !dx.controlflow.hints !134

; <label>:2526                                    ; preds = %2519
  %2527 = fmul fast float %2524, 0x3FF7154760000000
  %2528 = call float @dx.op.unary.f32(i32 21, float %2527)  ; Exp(value)
  %2529 = fsub fast float 1.000000e+00, %2528
  %2530 = fmul fast float %2521, %2529
  %2531 = fsub fast float -0.000000e+00, %2530
  %2532 = fmul fast float %2522, %2529
  %2533 = fsub fast float -0.000000e+00, %2532
  %2534 = fmul fast float %2523, %2529
  %2535 = fsub fast float -0.000000e+00, %2534
  %2536 = fdiv fast float %2531, %2524
  %2537 = fdiv fast float %2533, %2524
  %2538 = fdiv fast float %2535, %2524
  br label %2577

; <label>:2539                                    ; preds = %2515
  %2540 = fsub fast float 1.000000e+00, %2414
  %2541 = fmul fast float %2445, %2540
  %2542 = fmul fast float %2456, %2540
  %2543 = fmul fast float %2467, %2540
  %2544 = fmul fast float %2446, %2540
  %2545 = fmul fast float %2457, %2540
  %2546 = fmul fast float %2468, %2540
  %2547 = fcmp fast une float %2544, 0.000000e+00
  br i1 %2547, label %2548, label %2555, !dx.controlflow.hints !133

; <label>:2548                                    ; preds = %2539
  %2549 = fmul fast float %2544, 0x3FF7154760000000
  %2550 = call float @dx.op.unary.f32(i32 21, float %2549)  ; Exp(value)
  %2551 = fsub fast float 1.000000e+00, %2550
  %2552 = fmul fast float %2541, %2551
  %2553 = fsub fast float -0.000000e+00, %2552
  %2554 = fdiv fast float %2553, %2544
  br label %2555

; <label>:2555                                    ; preds = %2548, %2539
  %2556 = phi float [ %2554, %2548 ], [ %2541, %2539 ]
  %2557 = phi float [ %2550, %2548 ], [ 1.000000e+00, %2539 ]
  %2558 = fcmp fast une float %2545, 0.000000e+00
  br i1 %2558, label %2559, label %2566, !dx.controlflow.hints !133

; <label>:2559                                    ; preds = %2555
  %2560 = fmul fast float %2545, 0x3FF7154760000000
  %2561 = call float @dx.op.unary.f32(i32 21, float %2560)  ; Exp(value)
  %2562 = fsub fast float 1.000000e+00, %2561
  %2563 = fmul fast float %2542, %2562
  %2564 = fsub fast float -0.000000e+00, %2563
  %2565 = fdiv fast float %2564, %2545
  br label %2566

; <label>:2566                                    ; preds = %2559, %2555
  %2567 = phi float [ %2565, %2559 ], [ %2542, %2555 ]
  %2568 = phi float [ %2561, %2559 ], [ 1.000000e+00, %2555 ]
  %2569 = fcmp fast une float %2546, 0.000000e+00
  br i1 %2569, label %2570, label %2577, !dx.controlflow.hints !133

; <label>:2570                                    ; preds = %2566
  %2571 = fmul fast float %2546, 0x3FF7154760000000
  %2572 = call float @dx.op.unary.f32(i32 21, float %2571)  ; Exp(value)
  %2573 = fsub fast float 1.000000e+00, %2572
  %2574 = fmul fast float %2543, %2573
  %2575 = fsub fast float -0.000000e+00, %2574
  %2576 = fdiv fast float %2575, %2546
  br label %2577

; <label>:2577                                    ; preds = %2570, %2566, %2526, %2519
  %2578 = phi float [ %2576, %2570 ], [ %2538, %2526 ], [ %2523, %2519 ], [ %2543, %2566 ]
  %2579 = phi float [ %2567, %2570 ], [ %2537, %2526 ], [ %2522, %2519 ], [ %2567, %2566 ]
  %2580 = phi float [ %2556, %2570 ], [ %2536, %2526 ], [ %2521, %2519 ], [ %2556, %2566 ]
  %2581 = phi float [ %2572, %2570 ], [ %2528, %2526 ], [ 1.000000e+00, %2519 ], [ 1.000000e+00, %2566 ]
  %2582 = phi float [ %2568, %2570 ], [ %2528, %2526 ], [ 1.000000e+00, %2519 ], [ %2568, %2566 ]
  %2583 = phi float [ %2557, %2570 ], [ %2528, %2526 ], [ 1.000000e+00, %2519 ], [ %2557, %2566 ]
  %2584 = fmul fast float %2583, %2495
  %2585 = fmul fast float %2582, %2506
  %2586 = fmul fast float %2581, %2517
  %2587 = fadd fast float %2584, %2580
  %2588 = fadd fast float %2585, %2579
  %2589 = fadd fast float %2586, %2578
  %2590 = fmul fast float %2583, %2494
  %2591 = fmul fast float %2582, %2505
  %2592 = fmul fast float %2581, %2516
  br label %2593

; <label>:2593                                    ; preds = %2577, %2388
  %2594 = phi float [ %2592, %2577 ], [ %2394, %2388 ]
  %2595 = phi float [ %2591, %2577 ], [ %2393, %2388 ]
  %2596 = phi float [ %2590, %2577 ], [ %2392, %2388 ]
  %2597 = phi float [ %2589, %2577 ], [ %2391, %2388 ]
  %2598 = phi float [ %2588, %2577 ], [ %2390, %2388 ]
  %2599 = phi float [ %2587, %2577 ], [ %2389, %2388 ]
  %2600 = fmul fast float %2599, %1574
  %2601 = fmul fast float %2598, %1574
  %2602 = fmul fast float %2597, %1574
  %2603 = fmul fast float %2596, %1836
  %2604 = call float @dx.op.dot3.f32(i32 55, float %2596, float %2595, float %2594, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2605 = call float @dx.op.dot3.f32(i32 55, float %2600, float %2601, float %2602, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2606 = select i1 %139, float %2604, float %2596
  %2607 = select i1 %139, float %2604, float %2595
  %2608 = select i1 %139, float 1.000000e+00, float %2594
  %2609 = select i1 %139, float %2605, float %2600
  %2610 = select i1 %139, float 0.000000e+00, float %2601
  %2611 = select i1 %139, float 0.000000e+00, float %2602
  %2612 = fmul fast float %2606, %1830
  %2613 = fmul fast float %2607, %1831
  %2614 = fmul fast float %2608, %1832
  %2615 = fadd fast float %2612, %2609
  %2616 = fadd fast float %2613, %2610
  %2617 = fadd fast float %2611, %2614
  %2618 = fmul fast float %2606, %1833
  %2619 = fmul fast float %2607, %1834
  %2620 = fmul fast float %2608, %1835
  %2621 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2622 = extractvalue %dx.types.CBufRet.i32 %2621, 0
  %2623 = icmp eq i32 %2622, 0
  br i1 %2623, label %2892, label %2624, !dx.controlflow.hints !135

; <label>:2624                                    ; preds = %2593
  %2625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2626 = extractvalue %dx.types.CBufRet.f32 %2625, 2
  %2627 = extractvalue %dx.types.CBufRet.f32 %2625, 3
  %2628 = fmul fast float %2626, %69
  %2629 = fmul fast float %2627, %70
  %2630 = fmul fast float %2628, 2.000000e+00
  %2631 = fmul fast float %2629, 2.000000e+00
  %2632 = fsub fast float 1.000000e+00, %2630
  %2633 = fsub fast float 1.000000e+00, %2631
  %2634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2635 = extractvalue %dx.types.CBufRet.f32 %2634, 0
  %2636 = extractvalue %dx.types.CBufRet.f32 %2634, 1
  %2637 = extractvalue %dx.types.CBufRet.f32 %2634, 2
  %2638 = fmul fast float %2632, %2635
  %2639 = fmul fast float %2632, %2636
  %2640 = fmul fast float %2632, %2637
  %2641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2642 = extractvalue %dx.types.CBufRet.f32 %2641, 0
  %2643 = extractvalue %dx.types.CBufRet.f32 %2641, 1
  %2644 = extractvalue %dx.types.CBufRet.f32 %2641, 2
  %2645 = fmul fast float %2633, %2642
  %2646 = fmul fast float %2633, %2643
  %2647 = fmul fast float %2633, %2644
  %2648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2649 = extractvalue %dx.types.CBufRet.f32 %2648, 0
  %2650 = extractvalue %dx.types.CBufRet.f32 %2648, 1
  %2651 = extractvalue %dx.types.CBufRet.f32 %2648, 2
  %2652 = fadd fast float %2645, %2649
  %2653 = fadd fast float %2652, %2638
  %2654 = fadd fast float %2646, %2650
  %2655 = fadd fast float %2654, %2639
  %2656 = fadd fast float %2647, %2651
  %2657 = fadd fast float %2656, %2640
  %2658 = fmul fast float %2653, %1829
  %2659 = fmul fast float %2655, %1829
  %2660 = fmul fast float %2657, %1829
  %2661 = fmul fast float %2658, %2658
  %2662 = fmul fast float %2659, %2659
  %2663 = fadd fast float %2661, %2662
  %2664 = fmul fast float %2660, %2660
  %2665 = fadd fast float %2663, %2664
  %2666 = call float @dx.op.unary.f32(i32 24, float %2665)  ; Sqrt(value)
  %2667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2668 = extractvalue %dx.types.CBufRet.f32 %2667, 0
  %2669 = fsub fast float %2666, %2668
  %2670 = extractvalue %dx.types.CBufRet.f32 %2667, 2
  %2671 = fmul fast float %2669, %2670
  %2672 = call float @dx.op.unary.f32(i32 7, float %2671)  ; Saturate(value)
  %2673 = fadd fast float %2672, -5.000000e-01
  %2674 = fmul fast float %2673, 2.000000e+00
  %2675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2676 = extractvalue %dx.types.CBufRet.f32 %2675, 2
  %2677 = call float @dx.op.binary.f32(i32 36, float %2676, float %2674)  ; FMin(a,b)
  %2678 = fsub fast float -0.000000e+00, %2676
  %2679 = fcmp fast ogt float %2677, %2678
  br i1 %2679, label %2680, label %2892, !dx.controlflow.hints !136

; <label>:2680                                    ; preds = %2624
  %2681 = fmul fast float %2677, 5.000000e-01
  %2682 = fadd fast float %2681, 5.000000e-01
  %2683 = call float @dx.op.unary.f32(i32 22, float %2682)  ; Frc(value)
  %2684 = call float @dx.op.unary.f32(i32 27, float %2683)  ; Round_ni(value)
  %2685 = call float @dx.op.unary.f32(i32 22, float %2683)  ; Frc(value)
  %2686 = fmul fast float %2685, 2.000000e+00
  %2687 = fadd fast float %2686, -1.000000e+00
  %2688 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %27, float %2628, float %2629, float %2684, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2689 = extractvalue %dx.types.ResRet.f32 %2688, 0
  %2690 = extractvalue %dx.types.ResRet.f32 %2688, 1
  %2691 = extractvalue %dx.types.ResRet.f32 %2688, 2
  %2692 = extractvalue %dx.types.ResRet.f32 %2688, 3
  %2693 = fadd fast float %2689, -5.000000e-01
  %2694 = fadd fast float %2691, -5.000000e-01
  %2695 = fmul fast float %2693, 0xBFD5555560000000
  %2696 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2694, float %2695)  ; FMad(a,b,c)
  %2697 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2690, float 0.000000e+00)  ; FMad(a,b,c)
  %2698 = fadd fast float %2697, %2692
  %2699 = fmul fast float %2693, -7.500000e-01
  %2700 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2694, float %2699)  ; FMad(a,b,c)
  %2701 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2690, float 0.000000e+00)  ; FMad(a,b,c)
  %2702 = fadd fast float %2701, %2692
  %2703 = call float @dx.op.binary.f32(i32 35, float %2696, float -1.000000e+00)  ; FMax(a,b)
  %2704 = call float @dx.op.binary.f32(i32 35, float %2698, float -1.000000e+00)  ; FMax(a,b)
  %2705 = call float @dx.op.binary.f32(i32 35, float %2700, float -1.000000e+00)  ; FMax(a,b)
  %2706 = call float @dx.op.binary.f32(i32 35, float %2702, float -1.000000e+00)  ; FMax(a,b)
  %2707 = call float @dx.op.binary.f32(i32 36, float %2703, float 1.000000e+00)  ; FMin(a,b)
  %2708 = call float @dx.op.binary.f32(i32 36, float %2704, float 1.000000e+00)  ; FMin(a,b)
  %2709 = call float @dx.op.binary.f32(i32 36, float %2705, float 1.000000e+00)  ; FMin(a,b)
  %2710 = call float @dx.op.binary.f32(i32 36, float %2706, float 1.000000e+00)  ; FMin(a,b)
  %2711 = fcmp fast olt float %2707, 0x3FEFFF8020000000
  br i1 %2711, label %2712, label %2827, !dx.controlflow.hints !137

; <label>:2712                                    ; preds = %2680
  %2713 = extractvalue %dx.types.CBufRet.f32 %2675, 3
  %2714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %2715 = extractvalue %dx.types.CBufRet.f32 %2714, 0
  %2716 = extractvalue %dx.types.CBufRet.f32 %2714, 1
  %2717 = extractvalue %dx.types.CBufRet.f32 %2714, 2
  %2718 = extractvalue %dx.types.CBufRet.f32 %2714, 3
  %2719 = fsub fast float %2715, %2707
  %2720 = fsub fast float %2716, %2708
  %2721 = fsub fast float %2717, %2709
  %2722 = fsub fast float %2718, %2710
  %2723 = fmul fast float %2719, %2713
  %2724 = fmul fast float %2720, %2713
  %2725 = fmul fast float %2721, %2713
  %2726 = fmul fast float %2722, %2713
  %2727 = fadd fast float %2723, %2707
  %2728 = fadd fast float %2724, %2708
  %2729 = fsub fast float -0.000000e+00, %2728
  %2730 = fadd fast float %2725, %2709
  %2731 = fadd fast float %2726, %2710
  %2732 = fmul fast float %2727, %2727
  %2733 = fsub fast float %2728, %2732
  %2734 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2733)  ; FMax(a,b)
  %2735 = fdiv fast float 1.000000e+00, %2734
  %2736 = fmul fast float %2728, %2727
  %2737 = fsub fast float %2730, %2736
  %2738 = fsub fast float %2687, %2727
  %2739 = fmul fast float %2687, %2687
  %2740 = fsub fast float %2739, %2728
  %2741 = fmul fast float %2738, %2735
  %2742 = fmul fast float %2741, %2737
  %2743 = fsub fast float %2740, %2742
  %2744 = fmul fast float %2728, %2728
  %2745 = fsub fast float %2731, %2744
  %2746 = fmul fast float %2737, %2737
  %2747 = fmul fast float %2746, %2735
  %2748 = fsub fast float %2745, %2747
  %2749 = fdiv fast float %2743, %2748
  %2750 = fmul fast float %2737, %2749
  %2751 = fsub fast float %2738, %2750
  %2752 = fmul fast float %2751, %2735
  %2753 = fmul fast float %2752, %2727
  %2754 = fsub fast float 1.000000e+00, %2753
  %2755 = fmul fast float %2728, %2749
  %2756 = fsub fast float %2754, %2755
  %2757 = fmul fast float %2752, %2752
  %2758 = fmul fast float %2749, 4.000000e+00
  %2759 = fmul fast float %2758, %2756
  %2760 = fsub fast float %2757, %2759
  %2761 = call float @dx.op.unary.f32(i32 24, float %2760)  ; Sqrt(value)
  %2762 = fcmp fast oge float %2752, 0.000000e+00
  %2763 = fsub fast float -0.000000e+00, %2761
  %2764 = select i1 %2762, float %2763, float %2761
  %2765 = fsub fast float %2764, %2752
  %2766 = fdiv fast float %2765, %2749
  %2767 = fdiv fast float %2756, %2765
  %2768 = fmul fast float %2766, 5.000000e-01
  %2769 = fmul fast float %2767, 2.000000e+00
  %2770 = select i1 %2762, float %2768, float %2769
  %2771 = select i1 %2762, float %2769, float %2768
  %2772 = call float @dx.op.binary.f32(i32 35, float %2770, float %2771)  ; FMax(a,b)
  %2773 = call float @dx.op.binary.f32(i32 36, float %2770, float %2771)  ; FMin(a,b)
  %2774 = fcmp fast ogt float %2687, %2773
  br i1 %2774, label %2775, label %2785

; <label>:2775                                    ; preds = %2712
  %2776 = fsub fast float %2687, %2773
  %2777 = fsub fast float %2772, %2773
  %2778 = fmul fast float %2776, %2777
  %2779 = fmul fast float %2772, %2687
  %2780 = fadd fast float %2772, %2687
  %2781 = fmul fast float %2780, %2727
  %2782 = fadd fast float %2779, %2728
  %2783 = fsub fast float %2782, %2781
  %2784 = fdiv fast float %2783, %2778
  br label %2785

; <label>:2785                                    ; preds = %2775, %2712
  %2786 = phi float [ %2784, %2775 ], [ 0.000000e+00, %2712 ]
  %2787 = fcmp fast ogt float %2687, %2772
  %2788 = fsub fast float %2687, %2772
  br i1 %2787, label %2789, label %2799

; <label>:2789                                    ; preds = %2785
  %2790 = fsub fast float %2772, %2773
  %2791 = fmul fast float %2790, %2788
  %2792 = fmul fast float %2773, %2687
  %2793 = fadd fast float %2773, %2687
  %2794 = fmul fast float %2793, %2727
  %2795 = fsub fast float %2729, %2792
  %2796 = fadd fast float %2795, %2794
  %2797 = fdiv fast float %2796, %2791
  %2798 = fadd fast float %2797, %2786
  br label %2799

; <label>:2799                                    ; preds = %2789, %2785
  %2800 = phi float [ %2798, %2789 ], [ %2786, %2785 ]
  %2801 = fsub fast float %2687, %2773
  %2802 = fmul fast float %2801, %2788
  %2803 = fmul fast float %2773, %2772
  %2804 = fadd fast float %2773, %2772
  %2805 = fmul fast float %2804, %2727
  %2806 = fadd fast float %2803, %2728
  %2807 = fsub fast float %2806, %2805
  %2808 = fdiv fast float %2807, %2802
  %2809 = call float @dx.op.unary.f32(i32 7, float %2800)  ; Saturate(value)
  %2810 = fcmp fast oeq float %1682, 0.000000e+00
  %2811 = extractvalue %dx.types.CBufRet.f32 %2675, 0
  %2812 = fcmp fast oeq float %2811, 0.000000e+00
  %2813 = or i1 %2810, %2812
  %2814 = fmul fast float %2811, 2.000000e+00
  %2815 = fadd fast float %2676, %2677
  %2816 = fdiv fast float %2815, %2814
  %2817 = call float @dx.op.unary.f32(i32 7, float %2816)  ; Saturate(value)
  %2818 = fmul fast float %2817, 2.000000e+00
  %2819 = fsub fast float 3.000000e+00, %2818
  %2820 = fmul fast float %2817, %2817
  %2821 = fmul fast float %2820, %2819
  %2822 = select i1 %2813, float 1.000000e+00, float %2821
  %2823 = fmul fast float %2808, %1682
  %2824 = fadd fast float %2809, %2823
  %2825 = call float @dx.op.unary.f32(i32 7, float %2824)  ; Saturate(value)
  %2826 = fmul fast float %2822, %2825
  br label %2827

; <label>:2827                                    ; preds = %2799, %2680
  %2828 = phi float [ %2826, %2799 ], [ 0.000000e+00, %2680 ]
  %2829 = fsub fast float 1.000000e+00, %2828
  %2830 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %27, float %2628, float %2629, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2831 = extractvalue %dx.types.ResRet.f32 %2830, 0
  %2832 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2833 = extractvalue %dx.types.CBufRet.i32 %2832, 2
  %2834 = icmp eq i32 %2833, 0
  br i1 %2834, label %2840, label %2835

; <label>:2835                                    ; preds = %2827
  %2836 = call float @dx.op.unary.f32(i32 7, float %2828)  ; Saturate(value)
  %2837 = fadd fast float %2831, -1.000000e+00
  %2838 = fmul fast float %2836, %2837
  %2839 = fadd fast float %2838, 1.000000e+00
  br label %2840

; <label>:2840                                    ; preds = %2835, %2827
  %2841 = phi float [ %2839, %2835 ], [ %2829, %2827 ]
  %2842 = call float @dx.op.binary.f32(i32 35, float %2831, float %2841)  ; FMax(a,b)
  %2843 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %2844 = extractvalue %dx.types.CBufRet.i32 %2843, 2
  %2845 = and i32 %2844, 1
  %2846 = icmp eq i32 %2845, 0
  %2847 = fcmp fast une float %2842, 1.000000e+00
  %2848 = and i1 %2847, %2846
  br i1 %2848, label %2849, label %2868

; <label>:2849                                    ; preds = %2840
  %2850 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %27, float %2628, float %2629, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2851 = extractvalue %dx.types.ResRet.f32 %2850, 0
  %2852 = extractvalue %dx.types.ResRet.f32 %2850, 1
  %2853 = extractvalue %dx.types.ResRet.f32 %2850, 2
  %2854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2855 = extractvalue %dx.types.CBufRet.f32 %2854, 1
  %2856 = fmul fast float %2855, %2851
  %2857 = fmul fast float %2855, %2852
  %2858 = fmul fast float %2855, %2853
  %2859 = fcmp fast ogt float %2831, 0x3FEFFF2E40000000
  %2860 = fsub fast float 1.000000e+00, %2842
  %2861 = fsub fast float 1.000000e+00, %2831
  %2862 = fdiv fast float %2860, %2861
  %2863 = call float @dx.op.unary.f32(i32 7, float %2862)  ; Saturate(value)
  %2864 = select i1 %2859, float 0.000000e+00, float %2863
  %2865 = fmul fast float %2856, %2864
  %2866 = fmul fast float %2857, %2864
  %2867 = fmul fast float %2858, %2864
  br label %2868

; <label>:2868                                    ; preds = %2849, %2840
  %2869 = phi float [ 0.000000e+00, %2840 ], [ %2865, %2849 ]
  %2870 = phi float [ 0.000000e+00, %2840 ], [ %2866, %2849 ]
  %2871 = phi float [ 0.000000e+00, %2840 ], [ %2867, %2849 ]
  %2872 = fmul fast float %2869, %1574
  %2873 = fmul fast float %2870, %1574
  %2874 = fmul fast float %2871, %1574
  %2875 = fmul fast float %2842, %2603
  %2876 = call float @dx.op.dot3.f32(i32 55, float %2842, float %2842, float %2842, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2877 = call float @dx.op.dot3.f32(i32 55, float %2872, float %2873, float %2874, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2878 = select i1 %139, float %2876, float %2842
  %2879 = select i1 %139, float 1.000000e+00, float %2842
  %2880 = select i1 %139, float %2877, float %2872
  %2881 = select i1 %139, float 0.000000e+00, float %2873
  %2882 = select i1 %139, float 0.000000e+00, float %2874
  %2883 = fmul fast float %2878, %2615
  %2884 = fmul fast float %2878, %2616
  %2885 = fmul fast float %2879, %2617
  %2886 = fadd fast float %2883, %2880
  %2887 = fadd fast float %2884, %2881
  %2888 = fadd fast float %2882, %2885
  %2889 = fmul fast float %2878, %2618
  %2890 = fmul fast float %2878, %2619
  %2891 = fmul fast float %2879, %2620
  br label %2892

; <label>:2892                                    ; preds = %2868, %2624, %2593, %1825
  %2893 = phi float [ %1830, %1825 ], [ %2615, %2593 ], [ %2886, %2868 ], [ %2615, %2624 ]
  %2894 = phi float [ %1831, %1825 ], [ %2616, %2593 ], [ %2887, %2868 ], [ %2616, %2624 ]
  %2895 = phi float [ %1832, %1825 ], [ %2617, %2593 ], [ %2888, %2868 ], [ %2617, %2624 ]
  %2896 = phi float [ %1833, %1825 ], [ %2618, %2593 ], [ %2889, %2868 ], [ %2618, %2624 ]
  %2897 = phi float [ %1834, %1825 ], [ %2619, %2593 ], [ %2890, %2868 ], [ %2619, %2624 ]
  %2898 = phi float [ %1835, %1825 ], [ %2620, %2593 ], [ %2891, %2868 ], [ %2620, %2624 ]
  %2899 = phi float [ %1836, %1825 ], [ %2603, %2593 ], [ %2875, %2868 ], [ %2603, %2624 ]
  %2900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2901 = extractvalue %dx.types.CBufRet.f32 %2900, 2
  %2902 = extractvalue %dx.types.CBufRet.f32 %2900, 3
  %2903 = fmul fast float %2901, %69
  %2904 = fmul fast float %2902, %70
  %2905 = call float @dx.op.unary.f32(i32 7, float %2903)  ; Saturate(value)
  %2906 = call float @dx.op.unary.f32(i32 7, float %2904)  ; Saturate(value)
  %2907 = select i1 %983, i32 2, i32 0
  %2908 = or i32 %2907, 1
  %2909 = uitofp i32 %2908 to float
  %2910 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %27, float %2905, float %2906, float %2909, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2911 = extractvalue %dx.types.ResRet.f32 %2910, 0
  %2912 = extractvalue %dx.types.ResRet.f32 %2910, 1
  %2913 = extractvalue %dx.types.ResRet.f32 %2910, 2
  %2914 = extractvalue %dx.types.ResRet.f32 %2910, 3
  %2915 = add nuw nsw i32 %2907, 2
  %2916 = uitofp i32 %2915 to float
  %2917 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %27, float %2905, float %2906, float %2916, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2918 = extractvalue %dx.types.ResRet.f32 %2917, 0
  %2919 = extractvalue %dx.types.ResRet.f32 %2917, 1
  %2920 = extractvalue %dx.types.ResRet.f32 %2917, 2
  %2921 = extractvalue %dx.types.ResRet.f32 %2917, 3
  %2922 = call float @dx.op.binary.f32(i32 35, float %2912, float %2913)  ; FMax(a,b)
  %2923 = call float @dx.op.binary.f32(i32 35, float %2911, float %2922)  ; FMax(a,b)
  %2924 = call float @dx.op.binary.f32(i32 35, float %2923, float %2914)  ; FMax(a,b)
  %2925 = call float @dx.op.binary.f32(i32 36, float %2919, float %2920)  ; FMin(a,b)
  %2926 = call float @dx.op.binary.f32(i32 36, float %2918, float %2925)  ; FMin(a,b)
  %2927 = call float @dx.op.binary.f32(i32 36, float %2926, float %2921)  ; FMin(a,b)
  %2928 = fmul fast float %2924, 2.550000e+02
  %2929 = fadd fast float %2928, 0x3F70101020000000
  %2930 = fptoui float %2929 to i32
  %2931 = fmul fast float %2927, 2.550000e+02
  %2932 = fadd fast float %2931, 0x3F70101020000000
  %2933 = fptoui float %2932 to i32
  %2934 = icmp ult i32 %2930, %2933
  br i1 %2934, label %2935, label %2981

; <label>:2935                                    ; preds = %2892
  %2936 = fcmp fast ogt float %61, 9.843750e-01
  %2937 = fadd fast float %1829, -4.000000e+00
  %2938 = select i1 %2936, float -4.000000e+00, float %2937
  %2939 = call float @dx.op.binary.f32(i32 35, float %2938, float 0.000000e+00)  ; FMax(a,b)
  %2940 = fadd fast float %1148, %2939
  %2941 = fmul fast float %2940, %1149
  %2942 = call float @dx.op.unary.f32(i32 23, float %2941)  ; Log(value)
  %2943 = fmul fast float %1150, %2942
  %2944 = fmul fast float %2943, %1158
  %2945 = call float @dx.op.unary.f32(i32 7, float %2944)  ; Saturate(value)
  %2946 = uitofp i32 %2930 to float
  %2947 = uitofp i32 %2933 to float
  %2948 = fadd fast float %2946, 5.000000e-01
  %2949 = fadd fast float %2947, 5.000000e-01
  %2950 = fmul fast float %1158, %2948
  %2951 = fmul fast float %1158, %2949
  %2952 = fadd fast float %2950, 0x3F0FFB4800000000
  %2953 = fadd fast float %2951, 0xBF0FFB4800000000
  %2954 = call float @dx.op.binary.f32(i32 35, float %2945, float %2952)  ; FMax(a,b)
  %2955 = call float @dx.op.binary.f32(i32 36, float %2954, float %2953)  ; FMin(a,b)
  %2956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %2957 = extractvalue %dx.types.CBufRet.f32 %2956, 1
  %2958 = extractvalue %dx.types.CBufRet.f32 %2956, 2
  %2959 = extractvalue %dx.types.CBufRet.f32 %2956, 0
  %2960 = select i1 %983, float %2959, float 0.000000e+00
  %2961 = fmul fast float %2957, %2955
  %2962 = fadd fast float %2960, %2961
  %2963 = fadd fast float %2960, %2958
  %2964 = fsub fast float %2957, %2958
  %2965 = fadd fast float %2964, %2960
  %2966 = call float @dx.op.binary.f32(i32 35, float %2962, float %2963)  ; FMax(a,b)
  %2967 = call float @dx.op.binary.f32(i32 36, float %2966, float %2965)  ; FMin(a,b)
  %2968 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %26, float %2905, float %2906, float %2967, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2969 = extractvalue %dx.types.ResRet.f32 %2968, 0
  %2970 = extractvalue %dx.types.ResRet.f32 %2968, 1
  %2971 = extractvalue %dx.types.ResRet.f32 %2968, 2
  %2972 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %26, float %2905, float %2906, float %2967, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2973 = extractvalue %dx.types.ResRet.f32 %2972, 0
  %2974 = extractvalue %dx.types.ResRet.f32 %2972, 1
  %2975 = extractvalue %dx.types.ResRet.f32 %2972, 2
  %2976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2977 = extractvalue %dx.types.CBufRet.f32 %2976, 1
  %2978 = fmul fast float %2977, %2973
  %2979 = fmul fast float %2977, %2974
  %2980 = fmul fast float %2977, %2975
  br label %2981

; <label>:2981                                    ; preds = %2935, %2892
  %2982 = phi float [ %2969, %2935 ], [ 1.000000e+00, %2892 ]
  %2983 = phi float [ %2970, %2935 ], [ 1.000000e+00, %2892 ]
  %2984 = phi float [ %2971, %2935 ], [ 1.000000e+00, %2892 ]
  %2985 = phi float [ %2978, %2935 ], [ 0.000000e+00, %2892 ]
  %2986 = phi float [ %2979, %2935 ], [ 0.000000e+00, %2892 ]
  %2987 = phi float [ %2980, %2935 ], [ 0.000000e+00, %2892 ]
  %2988 = fmul fast float %2985, %1574
  %2989 = fmul fast float %2986, %1574
  %2990 = fmul fast float %2987, %1574
  %2991 = fmul fast float %2982, %2899
  %2992 = call float @dx.op.dot3.f32(i32 55, float %2982, float %2983, float %2984, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2993 = call float @dx.op.dot3.f32(i32 55, float %2988, float %2989, float %2990, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2994 = select i1 %139, float %2992, float %2982
  %2995 = select i1 %139, float %2992, float %2983
  %2996 = select i1 %139, float 1.000000e+00, float %2984
  %2997 = select i1 %139, float %2993, float %2988
  %2998 = select i1 %139, float 0.000000e+00, float %2989
  %2999 = select i1 %139, float 0.000000e+00, float %2990
  %3000 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3001 = extractvalue %dx.types.CBufRet.i32 %3000, 3
  %3002 = and i32 %3001, 3
  %3003 = icmp ne i32 %3002, 0
  %3004 = and i32 %3001, 4
  %3005 = icmp ne i32 %3004, 0
  %3006 = and i1 %3003, %3005
  %3007 = and i1 %139, %3006
  br i1 %3007, label %3008, label %3014

; <label>:3008                                    ; preds = %2981
  %3009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %3010 = extractvalue %dx.types.CBufRet.f32 %3009, 1
  %3011 = fadd fast float %2991, -1.000000e+00
  %3012 = fmul fast float %3010, %3011
  %3013 = fadd fast float %3012, 1.000000e+00
  br label %3014

; <label>:3014                                    ; preds = %3008, %2981
  %3015 = phi float [ %3013, %3008 ], [ %2991, %2981 ]
  %3016 = fadd fast float %2896, %2893
  %3017 = fmul fast float %2994, %3016
  %3018 = fadd fast float %3017, %2997
  %3019 = fadd fast float %2897, %2894
  %3020 = fmul fast float %2995, %3019
  %3021 = fadd fast float %3020, %2998
  %3022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3023 = extractvalue %dx.types.CBufRet.f32 %3022, 0
  br i1 %139, label %3024, label %3045

; <label>:3024                                    ; preds = %3014
  %3025 = fadd fast float %3018, %3021
  %3026 = fmul fast float %3023, %3025
  %3027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %3028 = extractvalue %dx.types.CBufRet.f32 %3027, 3
  %3029 = extractvalue %dx.types.CBufRet.f32 %1578, 1
  %3030 = fsub fast float %1581, %3029
  %3031 = extractvalue %dx.types.CBufRet.f32 %1578, 2
  %3032 = fmul fast float %3030, %3031
  %3033 = call float @dx.op.unary.f32(i32 7, float %3032)  ; Saturate(value)
  %3034 = fsub fast float %3033, %3028
  %3035 = fmul fast float %3034, %3015
  %3036 = fadd fast float %3035, %3028
  %3037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %3038 = extractvalue %dx.types.CBufRet.f32 %3037, 0
  %3039 = fsub fast float %3036, %3038
  %3040 = fmul fast float %3039, 1.000000e+01
  %3041 = call float @dx.op.unary.f32(i32 7, float %3040)  ; Saturate(value)
  %3042 = fmul fast float %3041, %1574
  %3043 = fsub fast float %1574, %3042
  %3044 = fmul fast float %3043, %3036
  br label %3057

; <label>:3045                                    ; preds = %3014
  %3046 = fadd fast float %2898, %2895
  %3047 = fmul fast float %2996, %3046
  %3048 = fadd fast float %3047, %2999
  %3049 = fmul fast float %3023, %3018
  %3050 = fmul fast float %3023, %3021
  %3051 = fmul fast float %3023, %3048
  %3052 = call float @dx.op.binary.f32(i32 35, float %3050, float %3051)  ; FMax(a,b)
  %3053 = call float @dx.op.binary.f32(i32 35, float %3049, float %3052)  ; FMax(a,b)
  %3054 = call float @dx.op.binary.f32(i32 35, float %3053, float %1574)  ; FMax(a,b)
  %3055 = fcmp fast ugt float %3054, 0x3F10000000000000
  br i1 %3055, label %3057, label %3056

; <label>:3056                                    ; preds = %3045
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %3057

; <label>:3057                                    ; preds = %3056, %3045, %3024
  %3058 = phi float [ %3026, %3024 ], [ %3049, %3056 ], [ %3049, %3045 ]
  %3059 = phi float [ %3044, %3024 ], [ %3050, %3056 ], [ %3050, %3045 ]
  %3060 = phi float [ %3043, %3024 ], [ %3051, %3056 ], [ %3051, %3045 ]
  %3061 = phi float [ %3043, %3024 ], [ %1574, %3056 ], [ %1574, %3045 ]
  %3062 = fadd fast float %575, 0x3FE3C6EF40000000
  %3063 = call float @dx.op.unary.f32(i32 22, float %3062)  ; Frc(value)
  %3064 = call float @dx.op.unary.f32(i32 23, float %3058)  ; Log(value)
  %3065 = fadd fast float %3064, -7.000000e+00
  %3066 = call float @dx.op.unary.f32(i32 21, float %3065)  ; Exp(value)
  %3067 = fmul fast float %3063, 2.000000e+00
  %3068 = fadd fast float %3067, -1.000000e+00
  %3069 = fmul fast float %3066, %3068
  %3070 = fcmp fast ogt float %3058, 0.000000e+00
  %3071 = select i1 %3070, float %3069, float 0.000000e+00
  %3072 = fadd fast float %3071, %3058
  %3073 = fadd fast float %575, 0x3FF3C6EF40000000
  %3074 = call float @dx.op.unary.f32(i32 22, float %3073)  ; Frc(value)
  %3075 = call float @dx.op.unary.f32(i32 23, float %3059)  ; Log(value)
  %3076 = fadd fast float %3075, -7.000000e+00
  %3077 = call float @dx.op.unary.f32(i32 21, float %3076)  ; Exp(value)
  %3078 = fmul fast float %3074, 2.000000e+00
  %3079 = fadd fast float %3078, -1.000000e+00
  %3080 = fmul fast float %3077, %3079
  %3081 = fcmp fast ogt float %3059, 0.000000e+00
  %3082 = select i1 %3081, float %3080, float 0.000000e+00
  %3083 = fadd fast float %3082, %3059
  %3084 = fadd fast float %575, 0x3FFDAA66E0000000
  %3085 = call float @dx.op.unary.f32(i32 22, float %3084)  ; Frc(value)
  %3086 = call float @dx.op.unary.f32(i32 23, float %3060)  ; Log(value)
  %3087 = fadd fast float %3086, -6.000000e+00
  %3088 = call float @dx.op.unary.f32(i32 21, float %3087)  ; Exp(value)
  %3089 = fmul fast float %3085, 2.000000e+00
  %3090 = fadd fast float %3089, -1.000000e+00
  %3091 = fmul fast float %3088, %3090
  %3092 = fcmp fast ogt float %3060, 0.000000e+00
  %3093 = select i1 %3092, float %3091, float 0.000000e+00
  %3094 = fadd fast float %3093, %3060
  %3095 = select i1 %139, float %3059, float %3083
  %3096 = select i1 %139, float %3060, float %3094
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %3097 = call float @dx.op.binary.f32(i32 36, float %3072, float 3.225500e+04)  ; FMin(a,b)
  %3098 = call float @dx.op.binary.f32(i32 36, float %3095, float 3.225500e+04)  ; FMin(a,b)
  %3099 = call float @dx.op.binary.f32(i32 36, float %3096, float 3.225500e+04)  ; FMin(a,b)
  %3100 = call float @dx.op.binary.f32(i32 36, float %3061, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3097)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3098)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3099)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %3100)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %3061)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %3061)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %3061)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %3061)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!44}
!dx.entryPoints = !{!45}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !35, !38}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !34}
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
!25 = !{i32 17, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!26 = !{i32 18, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!27 = !{i32 19, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!28 = !{i32 20, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!29 = !{i32 21, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !30}
!30 = !{i32 0, i32 14}
!31 = !{i32 22, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!32 = !{i32 23, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!33 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!34 = !{i32 25, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 46, i32 1, i32 4, i32 0, !7}
!35 = !{!36, !37}
!36 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!37 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!38 = !{!39, !40, !41, !42, !43}
!39 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!40 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!41 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!42 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!43 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!44 = !{[45 x i32] [i32 43, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255]}
!45 = !{void ()* @ps_main, !"ps_main", !46, !4, !74}
!46 = !{!47, !71, null}
!47 = !{!48, !51, !52, !54, !57, !59, !61, !63, !65, !67, !68, !70}
!48 = !{i32 0, !"SV_Position", i8 9, i8 3, !49, i8 4, i32 1, i8 4, i32 0, i8 0, !50}
!49 = !{i32 0}
!50 = !{i32 3, i32 15}
!51 = !{i32 1, !"COLOR", i8 9, i8 0, !49, i8 2, i32 1, i8 4, i32 1, i8 0, !50}
!52 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !49, i8 2, i32 1, i8 2, i32 2, i8 0, !53}
!53 = !{i32 3, i32 3}
!54 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !55, i8 2, i32 1, i8 3, i32 3, i8 0, !56}
!55 = !{i32 1}
!56 = !{i32 3, i32 7}
!57 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !58, i8 1, i32 1, i8 4, i32 4, i8 0, !56}
!58 = !{i32 2}
!59 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !60, i8 2, i32 1, i8 4, i32 5, i8 0, !56}
!60 = !{i32 3}
!61 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 6, i8 0, !50}
!62 = !{i32 4}
!63 = !{i32 7, !"TEXCOORD", i8 9, i8 0, !64, i8 3, i32 1, i8 2, i32 7, i8 0, !53}
!64 = !{i32 5}
!65 = !{i32 8, !"TEXCOORD", i8 9, i8 0, !66, i8 2, i32 1, i8 4, i32 8, i8 0, null}
!66 = !{i32 8}
!67 = !{i32 9, !"QUAD_POSITION", i8 9, i8 0, !49, i8 1, i32 1, i8 4, i32 9, i8 0, !50}
!68 = !{i32 10, !"COLOR", i8 5, i8 0, !60, i8 1, i32 1, i8 3, i32 10, i8 0, !69}
!69 = !{i32 3, i32 5}
!70 = !{i32 11, !"SV_SampleIndex", i8 5, i8 12, !49, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!71 = !{!72, !73}
!72 = !{i32 0, !"SV_Target", i8 9, i8 16, !49, i8 0, i32 1, i8 4, i32 0, i8 0, !50}
!73 = !{i32 1, !"SV_Target", i8 9, i8 16, !55, i8 0, i32 1, i8 4, i32 1, i8 0, !50}
!74 = !{i32 0, i64 24}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = distinct !{!83, !84}
!84 = !{!"llvm.loop.unroll.disable"}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = !{!89, !89, i64 0}
!89 = !{!"float", !90, i64 0}
!90 = !{!"omnipotent char", !91, i64 0}
!91 = !{!"Simple C/C++ TBAA"}
!92 = !{!93, !95, !97, !98, !100, !101, !102, !104, !105, !106}
!93 = distinct !{!93, !94, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!94 = distinct !{!94, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!95 = distinct !{!95, !96, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!96 = distinct !{!96, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!97 = distinct !{!97, !96, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!98 = distinct !{!98, !99, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!99 = distinct !{!99, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!100 = distinct !{!100, !99, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!101 = distinct !{!101, !99, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!102 = distinct !{!102, !103, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!103 = distinct !{!103, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!104 = distinct !{!104, !103, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!105 = distinct !{!105, !103, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!106 = distinct !{!106, !107, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!107 = distinct !{!107, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!108 = !{!109}
!109 = distinct !{!109, !110, !"\01?sort@@YAXAIAM00@Z: %c"}
!110 = distinct !{!110, !"\01?sort@@YAXAIAM00@Z"}
!111 = !{!112, !113, !93, !95, !97, !98, !100, !101, !102, !104, !105, !106}
!112 = distinct !{!112, !110, !"\01?sort@@YAXAIAM00@Z: %a"}
!113 = distinct !{!113, !110, !"\01?sort@@YAXAIAM00@Z: %b"}
!114 = !{!113}
!115 = !{!112, !109, !93, !95, !97, !98, !100, !101, !102, !104, !105, !106}
!116 = !{!112}
!117 = !{!113, !109, !93, !95, !97, !98, !100, !101, !102, !104, !105, !106}
!118 = !{!119}
!119 = distinct !{!119, !120, !"\01?sort@@YAXAIAM00@Z: %c"}
!120 = distinct !{!120, !"\01?sort@@YAXAIAM00@Z"}
!121 = !{!122, !123, !93, !95, !97, !98, !100, !101, !102, !104, !105, !106}
!122 = distinct !{!122, !120, !"\01?sort@@YAXAIAM00@Z: %a"}
!123 = distinct !{!123, !120, !"\01?sort@@YAXAIAM00@Z: %b"}
!124 = !{!123}
!125 = !{!122, !119, !93, !95, !97, !98, !100, !101, !102, !104, !105, !106}
!126 = !{!122}
!127 = !{!123, !119, !93, !95, !97, !98, !100, !101, !102, !104, !105, !106}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 2}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 1}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 1}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 1}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 1}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 1}

