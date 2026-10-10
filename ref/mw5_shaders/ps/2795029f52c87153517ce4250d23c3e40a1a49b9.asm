;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
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
; shader hash: 5d9e6a720989cd58f07a31485b93324c
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
;                                   texture     f32          1d     T16     t30,space2     1
;                                   texture     f32          3d     T17     t44,space2     1
;                                   texture     f32          3d     T18     t45,space2     1
;                                   texture     f32     2darray     T19     t47,space2     1
;                                   textureunorm_f32     2darray     T20     t85,space2     1
;                                   texture     f32          2d     T21     t83,space2     1
;                                   texture     f32          2d     T22     t86,space2     1
;                                   texture    byte         r/o     T23             t1     1
;                                   texture     f32          3d     T24     t46,space2     1
;
;
; ViewId state:
;
; Number of inputs: 35, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 28, 29, 30, 31, 32, 34 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 28, 29, 30, 31, 32, 34 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 28, 29, 30, 31, 32, 34 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 28, 29, 30, 31, 32, 34 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 28, 29, 30, 31, 32, 34 }
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

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 77, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 78, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = alloca [3 x float], align 4
  %56 = alloca [3 x float], align 4
  %57 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %58 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %59 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.f32 %59, 0
  %61 = fmul fast float %60, %51
  %62 = fmul fast float %60, %52
  %63 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %64 = extractvalue %dx.types.CBufRet.f32 %63, 2
  %65 = extractvalue %dx.types.CBufRet.f32 %63, 3
  %66 = fmul fast float %61, 2.000000e+00
  %67 = fmul fast float %66, %64
  %68 = fmul fast float %62, 2.000000e+00
  %69 = fmul fast float %68, %65
  %70 = fsub fast float 1.000000e+00, %67
  %71 = fsub fast float 1.000000e+00, %69
  %72 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %73 = extractvalue %dx.types.CBufRet.f32 %72, 0
  %74 = extractvalue %dx.types.CBufRet.f32 %72, 1
  %75 = extractvalue %dx.types.CBufRet.f32 %72, 2
  %76 = fmul fast float %70, %73
  %77 = fmul fast float %70, %74
  %78 = fmul fast float %70, %75
  %79 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %80 = extractvalue %dx.types.CBufRet.f32 %79, 0
  %81 = extractvalue %dx.types.CBufRet.f32 %79, 1
  %82 = extractvalue %dx.types.CBufRet.f32 %79, 2
  %83 = fmul fast float %71, %80
  %84 = fmul fast float %71, %81
  %85 = fmul fast float %71, %82
  %86 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.f32 %86, 0
  %88 = extractvalue %dx.types.CBufRet.f32 %86, 1
  %89 = extractvalue %dx.types.CBufRet.f32 %86, 2
  %90 = fadd fast float %83, %87
  %91 = fadd fast float %90, %76
  %92 = fadd fast float %84, %88
  %93 = fadd fast float %92, %77
  %94 = fadd fast float %85, %89
  %95 = fadd fast float %94, %78
  %96 = fmul fast float %91, %54
  %97 = fmul fast float %93, %54
  %98 = fmul fast float %95, %54
  %99 = fmul fast float %43, %40
  %100 = fmul fast float %44, %39
  %101 = fsub fast float %99, %100
  %102 = fmul fast float %44, %38
  %103 = fmul fast float %42, %40
  %104 = fsub fast float %102, %103
  %105 = fmul fast float %42, %39
  %106 = fmul fast float %43, %38
  %107 = fsub fast float %105, %106
  %108 = fmul fast float %101, %41
  %109 = fmul fast float %104, %41
  %110 = fmul fast float %107, %41
  %111 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.i32 %111, 3
  %113 = and i32 %112, 3
  %114 = icmp ne i32 %113, 0
  %115 = and i32 %112, 4
  %116 = icmp ne i32 %115, 0
  %117 = and i1 %114, %116
  br i1 %117, label %118, label %127

; <label>:118                                     ; preds = %0
  %119 = fmul fast float %65, %62
  %120 = fmul fast float %64, %61
  %121 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %26, float %120, float %119, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %122 = extractvalue %dx.types.ResRet.f32 %121, 0
  %123 = fsub fast float 1.000000e+00, %122
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 0
  %126 = fcmp fast olt float %123, %125
  br label %130

; <label>:127                                     ; preds = %0
  %128 = icmp eq i32 %115, 0
  %129 = and i1 %114, %128
  br label %130

; <label>:130                                     ; preds = %127, %118
  %131 = phi i1 [ %126, %118 ], [ %129, %127 ]
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.f32 %132, 2
  %134 = extractvalue %dx.types.CBufRet.f32 %132, 3
  %135 = fmul fast float %133, %61
  %136 = fmul fast float %134, %62
  %137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %138 = extractvalue %dx.types.ResRet.i32 %137, 0
  %139 = and i32 %138, 114688
  %140 = icmp ne i32 %139, 0
  %141 = select i1 %140, float %135, float 0.000000e+00
  %142 = select i1 %140, float %136, float 0.000000e+00
  %143 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %27, float %141, float %142, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %144 = extractvalue %dx.types.ResRet.f32 %143, 0
  %145 = fmul fast float %144, 2.550000e+02
  %146 = fptoui float %145 to i32
  %147 = select i1 %140, i32 %146, i32 0
  %148 = mul i32 %30, 208
  %149 = add i32 %148, 188
  %150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %149, i32 undef)  ; BufferLoad(srv,index,wot)
  %151 = extractvalue %dx.types.ResRet.i32 %150, 0
  %152 = and i32 %112, 114688
  %153 = and i32 %112, 8
  %154 = icmp ne i32 %153, 0
  %155 = or i1 %131, %154
  %156 = select i1 %155, i32 %152, i32 16384
  %157 = and i32 %156, %151
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %160

; <label>:159                                     ; preds = %130
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %160

; <label>:160                                     ; preds = %159, %130
  %161 = and i32 %151, 512
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %187, label %163

; <label>:163                                     ; preds = %160
  %164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.f32 %164, 2
  %166 = extractvalue %dx.types.CBufRet.f32 %164, 3
  %167 = fmul fast float %165, %61
  %168 = fmul fast float %166, %62
  %169 = extractvalue %dx.types.CBufRet.f32 %164, 0
  %170 = extractvalue %dx.types.CBufRet.f32 %164, 1
  %171 = fdiv fast float %169, %170
  %172 = fcmp fast ogt float %171, 0x3FFC71C720000000
  br i1 %172, label %173, label %179

; <label>:173                                     ; preds = %163
  %174 = fdiv fast float 0x3FFC71C720000000, %171
  %175 = fmul fast float %174, %168
  %176 = fsub fast float 1.000000e+00, %174
  %177 = fmul fast float %176, 5.000000e-01
  %178 = fadd fast float %177, %175
  br label %187

; <label>:179                                     ; preds = %163
  %180 = fcmp fast olt float %171, 0x3FFC71C720000000
  br i1 %180, label %181, label %187

; <label>:181                                     ; preds = %179
  %182 = fmul fast float %167, 5.625000e-01
  %183 = fmul fast float %182, %171
  %184 = fmul fast float %171, 2.812500e-01
  %185 = fsub fast float 5.000000e-01, %184
  %186 = fadd fast float %185, %183
  br label %187

; <label>:187                                     ; preds = %181, %179, %173, %160
  %188 = phi float [ %45, %160 ], [ %167, %173 ], [ %186, %181 ], [ %167, %179 ]
  %189 = phi float [ %46, %160 ], [ %178, %173 ], [ %168, %181 ], [ %168, %179 ]
  %190 = and i32 %151, 16
  %191 = icmp ne i32 %190, 0
  %192 = select i1 %191, float 1.000000e+00, float %50
  %193 = add i32 %31, 96
  %194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %193, i32 undef)  ; BufferLoad(srv,index,wot)
  %195 = extractvalue %dx.types.ResRet.i32 %194, 0
  %196 = add i32 %195, 0
  %197 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %196, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %199 = extractvalue %dx.types.CBufRet.f32 %198, 2
  %200 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %197, %dx.types.Handle %58, float %188, float %189, float undef, float undef, i32 0, i32 0, i32 undef, float %199, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %201 = extractvalue %dx.types.ResRet.f32 %200, 0
  %202 = fmul fast float %201, %192
  %203 = icmp eq i32 %190, 0
  br i1 %203, label %223, label %204, !dx.controlflow.hints !70

; <label>:204                                     ; preds = %187
  %205 = add i32 %148, 64
  %206 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %205, i32 undef)  ; BufferLoad(srv,index,wot)
  %207 = extractvalue %dx.types.ResRet.f32 %206, 0
  %208 = fadd fast float %207, 1.000000e+00
  %209 = fmul fast float %208, %50
  %210 = fsub fast float %209, %207
  %211 = fsub fast float %208, %210
  %212 = call float @dx.op.unary.f32(i32 7, float %211)  ; Saturate(value)
  %213 = fsub fast float 1.000000e+00, %209
  %214 = call float @dx.op.unary.f32(i32 7, float %213)  ; Saturate(value)
  %215 = fsub fast float %212, %214
  %216 = fsub fast float %202, %214
  %217 = fdiv fast float %216, %215
  %218 = call float @dx.op.unary.f32(i32 7, float %217)  ; Saturate(value)
  %219 = fmul fast float %218, 2.000000e+00
  %220 = fsub fast float 3.000000e+00, %219
  %221 = fmul fast float %218, %218
  %222 = fmul fast float %221, %220
  br label %223

; <label>:223                                     ; preds = %204, %187
  %224 = phi float [ %222, %204 ], [ %202, %187 ]
  %225 = fcmp fast ogt float %224, 0.000000e+00
  br i1 %225, label %227, label %226

; <label>:226                                     ; preds = %223
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %227

; <label>:227                                     ; preds = %226, %223
  %228 = call float @dx.op.unary.f32(i32 7, float %224)  ; Saturate(value)
  %229 = fmul fast float %61, 5.000000e-01
  %230 = fmul fast float %62, 5.000000e-01
  %231 = fptosi float %229 to i32
  %232 = fptosi float %230 to i32
  %233 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %231, i32 %232, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %234 = extractvalue %dx.types.ResRet.i32 %233, 0
  %235 = lshr i32 %234, 18
  %236 = uitofp i32 %235 to float
  %237 = fmul fast float %236, 0x3F4C00EBA0000000
  %238 = call float @dx.op.unary.f32(i32 21, float %237)  ; Exp(value)
  %239 = fadd fast float %238, -1.000000e+00
  %240 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %241 = extractvalue %dx.types.Dimensions %240, 0
  %242 = sitofp i32 %241 to float
  %243 = extractvalue %dx.types.Dimensions %240, 1
  %244 = sitofp i32 %243 to float
  %245 = fcmp fast oge float %229, %242
  %246 = fcmp fast oge float %230, %244
  %247 = or i1 %245, %246
  %248 = select i1 %247, float 0x4197782600000000, float %239
  %249 = fsub fast float %248, %54
  %250 = fcmp fast ogt float %249, 0.000000e+00
  %251 = and i32 %147, -2
  %252 = icmp eq i32 %251, 2
  %253 = and i1 %252, %250
  %254 = xor i1 %250, true
  %255 = icmp eq i32 %147, 1
  %256 = and i1 %255, %254
  %257 = or i1 %253, %256
  %258 = and i32 %151, 262144
  %259 = icmp ne i32 %258, 0
  %260 = and i1 %259, %257
  %261 = xor i1 %257, true
  %262 = and i32 %151, 131072
  %263 = icmp ne i32 %262, 0
  %264 = and i1 %263, %261
  %265 = or i1 %260, %264
  br i1 %265, label %266, label %267

; <label>:266                                     ; preds = %227
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %267

; <label>:267                                     ; preds = %266, %227
  %268 = and i32 %151, 32
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %519, label %270, !dx.controlflow.hints !71

; <label>:270                                     ; preds = %267
  %271 = add i32 %148, 80
  %272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.f32 %272, 0
  %274 = extractvalue %dx.types.ResRet.f32 %272, 1
  %275 = extractvalue %dx.types.ResRet.f32 %272, 2
  %276 = extractvalue %dx.types.ResRet.f32 %272, 3
  %277 = add i32 %148, 96
  %278 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.f32 %278, 0
  %280 = extractvalue %dx.types.ResRet.f32 %278, 1
  %281 = extractvalue %dx.types.ResRet.f32 %278, 2
  %282 = add i32 %148, 112
  %283 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.f32 %283, 0
  %285 = extractvalue %dx.types.ResRet.f32 %283, 1
  %286 = extractvalue %dx.types.ResRet.f32 %283, 2
  %287 = extractvalue %dx.types.ResRet.f32 %283, 3
  %288 = add i32 %148, 128
  %289 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.f32 %289, 0
  %291 = extractvalue %dx.types.ResRet.f32 %289, 1
  %292 = extractvalue %dx.types.ResRet.f32 %289, 2
  %293 = extractvalue %dx.types.ResRet.f32 %289, 3
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %149, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = and i32 %295, 4096
  %297 = icmp ne i32 %296, 0
  %298 = fcmp fast une float %281, 0.000000e+00
  %299 = and i32 %295, 64
  %300 = icmp ne i32 %299, 0
  %301 = and i32 %295, 128
  %302 = icmp eq i32 %301, 0
  %303 = and i32 %295, 2048
  %304 = icmp eq i32 %303, 0
  %305 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %14, i32 0)  ; GetDimensions(handle,mipLevel)
  %306 = extractvalue %dx.types.Dimensions %305, 0
  %307 = sitofp i32 %306 to float
  %308 = extractvalue %dx.types.Dimensions %305, 1
  %309 = sitofp i32 %308 to float
  %310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %311 = extractvalue %dx.types.CBufRet.f32 %310, 2
  %312 = extractvalue %dx.types.CBufRet.f32 %310, 3
  %313 = fmul fast float %311, %61
  %314 = fmul fast float %312, %62
  %315 = fmul fast float %313, %307
  %316 = fmul fast float %314, %309
  %317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %318 = extractvalue %dx.types.CBufRet.f32 %317, 1
  %319 = fsub fast float -0.000000e+00, %318
  %320 = fptoui float %319 to i32
  %321 = fptoui float %315 to i32
  %322 = fptoui float %316 to i32
  %323 = and i32 %320, 31
  %324 = lshr i32 %321, %323
  %325 = lshr i32 %322, %323
  %326 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 %320, i32 %324, i32 %325, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %327 = extractvalue %dx.types.ResRet.f32 %326, 0
  %328 = fcmp fast ogt float %327, -1.000000e+00
  %329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %330 = extractvalue %dx.types.CBufRet.f32 %329, 1
  %331 = select i1 %328, float %330, float 1.000000e+00
  %332 = fadd fast float %327, 1.000000e+00
  %333 = fmul fast float %331, %332
  %334 = call float @dx.op.unary.f32(i32 6, float %333)  ; FAbs(value)
  %335 = extractvalue %dx.types.CBufRet.f32 %329, 3
  %336 = fcmp fast oge float %334, %335
  %337 = select i1 %336, float 0x4197782600000000, float %334
  br i1 %304, label %415, label %338, !dx.controlflow.hints !72

; <label>:338                                     ; preds = %270
  %339 = fmul fast float %66, %311
  %340 = fmul fast float %68, %312
  %341 = fsub fast float 1.000000e+00, %339
  %342 = fsub fast float 1.000000e+00, %340
  %343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %344 = extractvalue %dx.types.CBufRet.f32 %343, 0
  %345 = extractvalue %dx.types.CBufRet.f32 %343, 1
  %346 = extractvalue %dx.types.CBufRet.f32 %343, 2
  %347 = fmul fast float %341, %344
  %348 = fmul fast float %341, %345
  %349 = fmul fast float %341, %346
  %350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %351 = extractvalue %dx.types.CBufRet.f32 %350, 0
  %352 = extractvalue %dx.types.CBufRet.f32 %350, 1
  %353 = extractvalue %dx.types.CBufRet.f32 %350, 2
  %354 = fmul fast float %342, %351
  %355 = fmul fast float %342, %352
  %356 = fmul fast float %342, %353
  %357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %358 = extractvalue %dx.types.CBufRet.f32 %357, 0
  %359 = extractvalue %dx.types.CBufRet.f32 %357, 1
  %360 = extractvalue %dx.types.CBufRet.f32 %357, 2
  %361 = fadd fast float %354, %358
  %362 = fadd fast float %361, %347
  %363 = fadd fast float %355, %359
  %364 = fadd fast float %363, %348
  %365 = fadd fast float %356, %360
  %366 = fadd fast float %365, %349
  %367 = fmul fast float %362, %337
  %368 = fmul fast float %364, %337
  %369 = fmul fast float %366, %337
  %370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %371 = extractvalue %dx.types.CBufRet.f32 %370, 0
  %372 = extractvalue %dx.types.CBufRet.f32 %370, 1
  %373 = extractvalue %dx.types.CBufRet.f32 %370, 2
  %374 = fsub fast float %371, %32
  %375 = fadd fast float %374, %367
  %376 = fsub fast float %372, %33
  %377 = fadd fast float %376, %368
  %378 = fsub fast float %373, %34
  %379 = fadd fast float %378, %369
  %380 = fmul fast float %35, %35
  %381 = call float @dx.op.dot3.f32(i32 55, float %375, float %377, float %379, float %375, float %377, float %379)  ; Dot3(ax,ay,az,bx,by,bz)
  %382 = fsub fast float %380, %381
  %383 = fmul fast float %280, %380
  %384 = fmul fast float %279, %380
  %385 = fcmp fast olt float %382, %383
  %386 = fcmp fast ogt float %382, %384
  %387 = or i1 %385, %386
  %388 = select i1 %387, float 0.000000e+00, float %382
  %389 = fsub fast float %279, %280
  %390 = fmul fast float %389, %380
  %391 = fsub fast float %388, %383
  %392 = fdiv fast float %391, %390
  %393 = call float @dx.op.unary.f32(i32 7, float %392)  ; Saturate(value)
  %394 = fmul fast float %393, 2.000000e+00
  %395 = fsub fast float 3.000000e+00, %394
  %396 = fmul fast float %393, %393
  %397 = fmul fast float %396, %395
  %398 = fmul fast float %284, %47
  %399 = fmul fast float %285, %48
  %400 = fmul fast float %286, %49
  %401 = fsub fast float %398, %290
  %402 = fsub fast float %399, %291
  %403 = fsub fast float %400, %292
  %404 = fsub fast float %287, %293
  %405 = fmul fast float %397, %401
  %406 = fmul fast float %397, %402
  %407 = fmul fast float %397, %403
  %408 = fmul fast float %397, %404
  %409 = fadd fast float %405, %290
  %410 = fadd fast float %406, %291
  %411 = fadd fast float %407, %292
  %412 = fadd fast float %408, %293
  %413 = fmul fast float %273, %273
  %414 = fmul fast float %413, %388
  br label %510

; <label>:415                                     ; preds = %270
  %416 = and i32 %295, 256
  %417 = icmp eq i32 %416, 0
  %418 = fsub fast float %337, %54
  br i1 %417, label %467, label %419

; <label>:419                                     ; preds = %415
  %420 = fadd fast float %279, %54
  %421 = fcmp fast olt float %337, %54
  %422 = fcmp fast ogt float %337, %420
  %423 = or i1 %421, %422
  %424 = select i1 %423, float 0.000000e+00, float %418
  %425 = call float @dx.op.unary.f32(i32 83, float %337)  ; DerivCoarseX(value)
  %426 = call float @dx.op.unary.f32(i32 84, float %337)  ; DerivCoarseY(value)
  %427 = fmul fast float %425, %425
  %428 = fmul fast float %426, %426
  %429 = fadd fast float %428, %427
  %430 = call float @dx.op.unary.f32(i32 24, float %429)  ; Sqrt(value)
  %431 = extractvalue %dx.types.CBufRet.f32 %317, 2
  %432 = fmul fast float %431, %430
  %433 = call float @dx.op.unary.f32(i32 7, float %432)  ; Saturate(value)
  %434 = fmul fast float %433, %280
  %435 = fdiv fast float %418, %434
  %436 = call float @dx.op.unary.f32(i32 7, float %435)  ; Saturate(value)
  %437 = fmul fast float %436, 2.000000e+00
  %438 = fsub fast float 3.000000e+00, %437
  %439 = fmul fast float %436, %436
  %440 = fmul fast float %439, %438
  %441 = fsub fast float %337, %420
  %442 = fadd fast float %441, %434
  %443 = fdiv fast float %442, %434
  %444 = call float @dx.op.unary.f32(i32 7, float %443)  ; Saturate(value)
  %445 = fmul fast float %444, 2.000000e+00
  %446 = fsub fast float 3.000000e+00, %445
  %447 = fmul fast float %444, %444
  %448 = fmul fast float %447, %446
  %449 = fsub fast float %440, %448
  %450 = fmul fast float %284, %47
  %451 = fmul fast float %285, %48
  %452 = fmul fast float %286, %49
  %453 = fsub fast float %450, %290
  %454 = fsub fast float %451, %291
  %455 = fsub fast float %452, %292
  %456 = fsub fast float %287, %293
  %457 = fmul fast float %449, %453
  %458 = fmul fast float %449, %454
  %459 = fmul fast float %449, %455
  %460 = fmul fast float %449, %456
  %461 = fadd fast float %457, %290
  %462 = fadd fast float %458, %291
  %463 = fadd fast float %459, %292
  %464 = fadd fast float %460, %293
  %465 = fmul fast float %424, %273
  %466 = call float @dx.op.unary.f32(i32 6, float %465)  ; FAbs(value)
  br label %510

; <label>:467                                     ; preds = %415
  br i1 %298, label %468, label %481

; <label>:468                                     ; preds = %467
  %469 = fdiv fast float 5.000000e+01, %35
  %470 = select i1 %300, float %469, float 1.000000e+00
  %471 = fmul fast float %470, %273
  %472 = fmul fast float %45, 2.000000e+00
  %473 = fmul fast float %46, 2.000000e+00
  %474 = fadd fast float %472, -1.000000e+00
  %475 = fadd fast float %473, -1.000000e+00
  %476 = call float @dx.op.dot2.f32(i32 54, float %474, float %475, float %474, float %475)  ; Dot2(ax,ay,bx,by)
  %477 = fmul fast float %281, %35
  %478 = fmul fast float %477, %476
  %479 = fsub fast float %418, %478
  %480 = fmul fast float %471, %479
  br label %510

; <label>:481                                     ; preds = %467
  br i1 %302, label %502, label %482

; <label>:482                                     ; preds = %481
  %483 = fmul fast float %35, 0x3F947AE140000000
  %484 = select i1 %300, float %483, float 1.000000e+00
  %485 = fdiv fast float 1.000000e+00, %484
  %486 = fmul fast float %484, %274
  %487 = fmul fast float %484, %275
  %488 = fmul fast float %485, %276
  %489 = call float @dx.op.unary.f32(i32 6, float %418)  ; FAbs(value)
  %490 = fcmp fast olt float %489, %486
  br i1 %490, label %491, label %495, !dx.controlflow.hints !73

; <label>:491                                     ; preds = %482
  %492 = fmul fast float %485, %273
  %493 = fmul fast float %492, %489
  %494 = call float @dx.op.unary.f32(i32 6, float %493)  ; FAbs(value)
  br label %510

; <label>:495                                     ; preds = %482
  %496 = fcmp fast ogt float %489, %487
  br i1 %496, label %497, label %510

; <label>:497                                     ; preds = %495
  %498 = fsub fast float %489, %487
  %499 = fmul fast float %488, %498
  %500 = call float @dx.op.unary.f32(i32 6, float %499)  ; FAbs(value)
  %501 = fsub fast float 1.000000e+00, %500
  br label %510

; <label>:502                                     ; preds = %481
  %503 = fdiv fast float 5.000000e+01, %35
  %504 = select i1 %300, float %503, float 1.000000e+00
  %505 = fmul fast float %504, %273
  %506 = call float @dx.op.unary.f32(i32 6, float %249)  ; FAbs(value)
  %507 = select i1 %297, float %506, float 0x47EFFFFFE0000000
  %508 = call float @dx.op.binary.f32(i32 36, float %418, float %507)  ; FMin(a,b)
  %509 = fmul fast float %505, %508
  br label %510

; <label>:510                                     ; preds = %502, %497, %495, %491, %468, %419, %338
  %511 = phi float [ %414, %338 ], [ %466, %419 ], [ %480, %468 ], [ %509, %502 ], [ %494, %491 ], [ %501, %497 ], [ %489, %495 ]
  %512 = phi float [ %409, %338 ], [ %461, %419 ], [ %47, %468 ], [ %47, %502 ], [ %47, %491 ], [ %47, %497 ], [ %47, %495 ]
  %513 = phi float [ %410, %338 ], [ %462, %419 ], [ %48, %468 ], [ %48, %502 ], [ %48, %491 ], [ %48, %497 ], [ %48, %495 ]
  %514 = phi float [ %411, %338 ], [ %463, %419 ], [ %49, %468 ], [ %49, %502 ], [ %49, %491 ], [ %49, %497 ], [ %49, %495 ]
  %515 = phi float [ %412, %338 ], [ %464, %419 ], [ 1.000000e+00, %468 ], [ 1.000000e+00, %502 ], [ 1.000000e+00, %491 ], [ 1.000000e+00, %497 ], [ 1.000000e+00, %495 ]
  %516 = call float @dx.op.unary.f32(i32 7, float %511)  ; Saturate(value)
  %517 = fmul fast float %515, %228
  %518 = fmul fast float %517, %516
  br label %519

; <label>:519                                     ; preds = %510, %267
  %520 = phi float [ %512, %510 ], [ %47, %267 ]
  %521 = phi float [ %513, %510 ], [ %48, %267 ]
  %522 = phi float [ %514, %510 ], [ %49, %267 ]
  %523 = phi float [ %518, %510 ], [ %228, %267 ]
  %524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %525 = extractvalue %dx.types.CBufRet.f32 %524, 2
  %526 = fptosi float %54 to i32
  %527 = sitofp i32 %526 to float
  %528 = fadd fast float %525, %527
  %529 = fmul fast float %528, 0x3FE3C6EF40000000
  %530 = frem fast float %61, 2.560000e+02
  %531 = frem fast float %62, 2.560000e+02
  %532 = fptoui float %530 to i32
  %533 = fptoui float %531 to i32
  %534 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %532, i32 %533, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %535 = extractvalue %dx.types.ResRet.f32 %534, 0
  %536 = fadd fast float %535, %529
  %537 = call float @dx.op.unary.f32(i32 22, float %536)  ; Frc(value)
  %538 = and i32 %151, 1
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %596, label %540, !dx.controlflow.hints !74

; <label>:540                                     ; preds = %519
  %541 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %148, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.f32 %541, 2
  %543 = extractvalue %dx.types.ResRet.f32 %541, 3
  %544 = add i32 %148, 16
  %545 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %544, i32 undef)  ; BufferLoad(srv,index,wot)
  %546 = extractvalue %dx.types.ResRet.f32 %545, 0
  %547 = extractvalue %dx.types.ResRet.f32 %545, 1
  %548 = extractvalue %dx.types.ResRet.f32 %545, 2
  %549 = add i32 %148, 32
  %550 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %549, i32 undef)  ; BufferLoad(srv,index,wot)
  %551 = extractvalue %dx.types.ResRet.f32 %550, 0
  %552 = extractvalue %dx.types.ResRet.f32 %550, 1
  %553 = extractvalue %dx.types.ResRet.f32 %550, 2
  %554 = and i32 %151, 2
  %555 = icmp eq i32 %554, 0
  %556 = call float @dx.op.dot3.f32(i32 55, float %42, float %43, float %44, float %42, float %43, float %44)  ; Dot3(ax,ay,az,bx,by,bz)
  %557 = call float @dx.op.unary.f32(i32 25, float %556)  ; Rsqrt(value)
  %558 = fmul fast float %557, %42
  %559 = fmul fast float %557, %43
  %560 = fmul fast float %557, %44
  %561 = call float @dx.op.dot3.f32(i32 55, float %96, float %97, float %98, float %96, float %97, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %562 = call float @dx.op.unary.f32(i32 25, float %561)  ; Rsqrt(value)
  %563 = fmul fast float %562, %96
  %564 = fmul fast float %562, %97
  %565 = fmul fast float %562, %98
  %566 = call float @dx.op.dot3.f32(i32 55, float %563, float %564, float %565, float %558, float %559, float %560)  ; Dot3(ax,ay,az,bx,by,bz)
  %567 = fmul fast float %566, %566
  %568 = fmul fast float %567, %542
  %569 = fadd fast float %568, %543
  %570 = call float @dx.op.unary.f32(i32 7, float %569)  ; Saturate(value)
  br i1 %555, label %571, label %581, !dx.controlflow.hints !75

; <label>:571                                     ; preds = %540
  %572 = extractvalue %dx.types.ResRet.f32 %541, 1
  %573 = extractvalue %dx.types.ResRet.f32 %541, 0
  %574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %575 = extractvalue %dx.types.CBufRet.f32 %574, 3
  %576 = fmul fast float %575, %561
  %577 = fsub fast float %573, %576
  %578 = fmul fast float %577, %572
  %579 = call float @dx.op.unary.f32(i32 7, float %578)  ; Saturate(value)
  %580 = fmul fast float %579, %570
  br label %581

; <label>:581                                     ; preds = %571, %540
  %582 = phi float [ %580, %571 ], [ %570, %540 ]
  %583 = fsub fast float %546, %551
  %584 = fsub fast float %547, %552
  %585 = fsub fast float %548, %553
  %586 = fmul fast float %582, %583
  %587 = fmul fast float %582, %584
  %588 = fmul fast float %582, %585
  %589 = fadd fast float %586, %551
  %590 = fadd fast float %587, %552
  %591 = fadd fast float %588, %553
  %592 = fmul fast float %589, %520
  %593 = fmul fast float %590, %521
  %594 = fmul fast float %591, %522
  %595 = fmul fast float %582, %523
  br label %596

; <label>:596                                     ; preds = %581, %519
  %597 = phi float [ %592, %581 ], [ %520, %519 ]
  %598 = phi float [ %593, %581 ], [ %521, %519 ]
  %599 = phi float [ %594, %581 ], [ %522, %519 ]
  %600 = phi float [ %595, %581 ], [ %523, %519 ]
  %601 = add i32 %31, 88
  %602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %601, i32 undef)  ; BufferLoad(srv,index,wot)
  %603 = extractvalue %dx.types.ResRet.i32 %602, 0
  %604 = add i32 %603, 0
  %605 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %604, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %606 = add i32 %31, 24
  %607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %606, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.i32 %607, 0
  %609 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %605, %dx.types.Handle %57, float %188, float %189, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %610 = extractvalue %dx.types.ResRet.f32 %609, 0
  %611 = extractvalue %dx.types.ResRet.f32 %609, 1
  %612 = extractvalue %dx.types.ResRet.f32 %609, 2
  %613 = extractvalue %dx.types.ResRet.f32 %609, 3
  %614 = and i32 %608, 255
  %615 = uitofp i32 %614 to float
  %616 = lshr i32 %608, 8
  %617 = and i32 %616, 255
  %618 = uitofp i32 %617 to float
  %619 = fmul fast float %613, %615
  %620 = fadd fast float %619, %618
  %621 = fmul fast float %620, 0x3F70101000000000
  %622 = add i32 %31, 56
  %623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %622, i32 undef)  ; BufferLoad(srv,index,wot)
  %624 = extractvalue %dx.types.ResRet.i32 %623, 0
  %625 = and i32 %624, 255
  %626 = uitofp i32 %625 to float
  %627 = fmul fast float %626, 0x3F70101020000000
  %628 = lshr i32 %624, 8
  %629 = and i32 %628, 255
  %630 = uitofp i32 %629 to float
  %631 = fmul fast float %630, 0x3F70101020000000
  %632 = lshr i32 %624, 16
  %633 = and i32 %632, 255
  %634 = uitofp i32 %633 to float
  %635 = fmul fast float %634, 0x3F70101020000000
  %636 = fmul fast float %610, %597
  %637 = fmul fast float %627, %627
  %638 = fmul fast float %637, %636
  %639 = fmul fast float %611, %598
  %640 = fmul fast float %631, %631
  %641 = fmul fast float %640, %639
  %642 = fmul fast float %612, %599
  %643 = fmul fast float %635, %635
  %644 = fmul fast float %643, %642
  %645 = add i32 %31, 28
  %646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %645, i32 undef)  ; BufferLoad(srv,index,wot)
  %647 = extractvalue %dx.types.ResRet.i32 %646, 0
  %648 = add i32 %31, 92
  %649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %648, i32 undef)  ; BufferLoad(srv,index,wot)
  %650 = extractvalue %dx.types.ResRet.i32 %649, 0
  %651 = add i32 %650, 0
  %652 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %651, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %653 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %652, %dx.types.Handle %57, float %188, float %189, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %654 = extractvalue %dx.types.ResRet.f32 %653, 0
  %655 = extractvalue %dx.types.ResRet.f32 %653, 1
  %656 = extractvalue %dx.types.ResRet.f32 %653, 3
  %657 = and i32 %647, 255
  %658 = uitofp i32 %657 to float
  %659 = lshr i32 %647, 8
  %660 = and i32 %659, 255
  %661 = uitofp i32 %660 to float
  %662 = lshr i32 %647, 16
  %663 = and i32 %662, 255
  %664 = uitofp i32 %663 to float
  %665 = fmul fast float %664, 0x3F70101000000000
  %666 = fmul fast float %654, %658
  %667 = fadd fast float %666, %661
  %668 = fmul fast float %667, 0x3F70101000000000
  %669 = fadd fast float %655, -5.000000e-01
  %670 = fadd fast float %656, -5.000000e-01
  %671 = fmul fast float %669, %665
  %672 = fmul fast float %670, %665
  %673 = fadd fast float %671, 5.000000e-01
  %674 = fadd fast float %672, 5.000000e-01
  %675 = fmul fast float %673, 2.000000e+00
  %676 = fadd fast float %675, -1.000000e+00
  %677 = fmul fast float %674, 2.000000e+00
  %678 = fadd fast float %677, -1.000000e+00
  %679 = fadd fast float %676, %678
  %680 = fmul fast float %679, 5.000000e-01
  %681 = fsub fast float %676, %678
  %682 = fmul fast float %681, 5.000000e-01
  %683 = call float @dx.op.unary.f32(i32 6, float %680)  ; FAbs(value)
  %684 = fsub fast float 1.000000e+00, %683
  %685 = call float @dx.op.unary.f32(i32 6, float %682)  ; FAbs(value)
  %686 = fsub fast float %684, %685
  %687 = call float @dx.op.dot3.f32(i32 55, float %680, float %682, float %686, float %680, float %682, float %686)  ; Dot3(ax,ay,az,bx,by,bz)
  %688 = call float @dx.op.unary.f32(i32 25, float %687)  ; Rsqrt(value)
  %689 = fmul fast float %680, %688
  %690 = fmul fast float %682, %688
  %691 = add i32 %31, 40
  %692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %693 = extractvalue %dx.types.ResRet.i32 %692, 0
  %694 = and i32 %693, 255
  %695 = uitofp i32 %694 to float
  %696 = fmul fast float %695, 0x3F70101020000000
  %697 = lshr i32 %693, 8
  %698 = and i32 %697, 255
  %699 = uitofp i32 %698 to float
  %700 = fmul fast float %699, 0x3F70101020000000
  %701 = lshr i32 %693, 16
  %702 = and i32 %701, 255
  %703 = uitofp i32 %702 to float
  %704 = fmul fast float %703, 0x3F70101020000000
  %705 = fmul fast float %696, %696
  %706 = fmul fast float %700, %700
  %707 = fmul fast float %704, %704
  %708 = add i32 %31, 100
  %709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %710 = extractvalue %dx.types.ResRet.i32 %709, 0
  %711 = add i32 %710, 0
  %712 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %711, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %713 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %712, %dx.types.Handle %58, float %188, float %189, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %714 = extractvalue %dx.types.ResRet.f32 %713, 0
  %715 = extractvalue %dx.types.ResRet.f32 %713, 1
  %716 = extractvalue %dx.types.ResRet.f32 %713, 2
  %717 = fmul fast float %705, %714
  %718 = fmul fast float %706, %715
  %719 = fmul fast float %707, %716
  %720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %721 = extractvalue %dx.types.CBufRet.f32 %720, 3
  %722 = fcmp fast ogt float %721, 0.000000e+00
  %723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %724 = extractvalue %dx.types.CBufRet.f32 %723, 1
  br i1 %722, label %725, label %750

; <label>:725                                     ; preds = %596
  %726 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %36, float %37, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %727 = extractvalue %dx.types.ResRet.f32 %726, 0
  %728 = extractvalue %dx.types.ResRet.f32 %726, 1
  %729 = extractvalue %dx.types.ResRet.f32 %726, 2
  %730 = extractvalue %dx.types.ResRet.f32 %726, 3
  %731 = fmul fast float %724, %730
  %732 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %36, float %37, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %733 = extractvalue %dx.types.ResRet.f32 %732, 0
  %734 = extractvalue %dx.types.ResRet.f32 %732, 1
  %735 = extractvalue %dx.types.ResRet.f32 %732, 2
  %736 = extractvalue %dx.types.ResRet.f32 %732, 3
  %737 = fmul fast float %724, %733
  %738 = fmul fast float %724, %734
  %739 = fmul fast float %724, %735
  %740 = fmul fast float %724, %736
  %741 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %36, float %37, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %742 = extractvalue %dx.types.ResRet.f32 %741, 0
  %743 = extractvalue %dx.types.ResRet.f32 %741, 1
  %744 = extractvalue %dx.types.ResRet.f32 %741, 2
  %745 = extractvalue %dx.types.ResRet.f32 %741, 3
  %746 = fmul fast float %724, %742
  %747 = fmul fast float %724, %743
  %748 = fmul fast float %724, %744
  %749 = fmul fast float %724, %745
  br label %755

; <label>:750                                     ; preds = %596
  %751 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %26, float %36, float %37, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %752 = extractvalue %dx.types.ResRet.f32 %751, 0
  %753 = extractvalue %dx.types.ResRet.f32 %751, 1
  %754 = extractvalue %dx.types.ResRet.f32 %751, 2
  br label %755

; <label>:755                                     ; preds = %750, %725
  %756 = phi float [ %746, %725 ], [ 0.000000e+00, %750 ]
  %757 = phi float [ %747, %725 ], [ 0.000000e+00, %750 ]
  %758 = phi float [ %748, %725 ], [ 0.000000e+00, %750 ]
  %759 = phi float [ %749, %725 ], [ 0.000000e+00, %750 ]
  %760 = phi float [ %737, %725 ], [ 0.000000e+00, %750 ]
  %761 = phi float [ %738, %725 ], [ 0.000000e+00, %750 ]
  %762 = phi float [ %739, %725 ], [ 0.000000e+00, %750 ]
  %763 = phi float [ %740, %725 ], [ 0.000000e+00, %750 ]
  %764 = phi float [ %727, %725 ], [ %752, %750 ]
  %765 = phi float [ %728, %725 ], [ %753, %750 ]
  %766 = phi float [ %729, %725 ], [ %754, %750 ]
  %767 = phi float [ %731, %725 ], [ 0.000000e+00, %750 ]
  %768 = fmul float %724, %766
  %769 = fmul float %724, %765
  %770 = fmul float %724, %764
  %771 = call float @dx.op.dot2.f32(i32 54, float %689, float %690, float %689, float %690)  ; Dot2(ax,ay,bx,by)
  %772 = fsub fast float 1.000000e+00, %771
  %773 = call float @dx.op.unary.f32(i32 7, float %772)  ; Saturate(value)
  %774 = call float @dx.op.unary.f32(i32 24, float %773)  ; Sqrt(value)
  %775 = fmul fast float %774, %42
  %776 = fmul fast float %774, %43
  %777 = fmul fast float %774, %44
  %778 = fmul fast float %689, %38
  %779 = fmul fast float %689, %39
  %780 = fmul fast float %689, %40
  %781 = fmul fast float %108, %690
  %782 = fmul fast float %109, %690
  %783 = fmul fast float %110, %690
  %784 = fadd fast float %781, %778
  %785 = fadd fast float %784, %775
  %786 = fadd fast float %782, %779
  %787 = fadd fast float %786, %776
  %788 = fadd fast float %783, %780
  %789 = fadd fast float %788, %777
  %790 = call float @dx.op.dot3.f32(i32 55, float %785, float %787, float %789, float %785, float %787, float %789)  ; Dot3(ax,ay,az,bx,by,bz)
  %791 = call float @dx.op.unary.f32(i32 25, float %790)  ; Rsqrt(value)
  %792 = fmul fast float %785, %791
  %793 = fmul fast float %787, %791
  %794 = fmul fast float %789, %791
  %795 = call float @dx.op.dot3.f32(i32 55, float %96, float %97, float %98, float %96, float %97, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %796 = call float @dx.op.unary.f32(i32 25, float %795)  ; Rsqrt(value)
  %797 = fmul fast float %796, %96
  %798 = fmul fast float %796, %97
  %799 = fmul fast float %796, %98
  %800 = fsub fast float -0.000000e+00, %797
  %801 = fsub fast float -0.000000e+00, %798
  %802 = fsub fast float -0.000000e+00, %799
  %803 = fadd fast float %621, 0xBFB99999A0000000
  %804 = call float @dx.op.unary.f32(i32 7, float %803)  ; Saturate(value)
  %805 = fmul fast float %804, 0x3FF1C71C80000000
  %806 = call float @dx.op.binary.f32(i32 36, float %621, float 0x3FB99999A0000000)  ; FMin(a,b)
  %807 = fsub fast float 1.000000e+00, %805
  %808 = call float @dx.op.unary.f32(i32 7, float %807)  ; Saturate(value)
  %809 = fmul fast float %808, %638
  %810 = fmul fast float %808, %641
  %811 = fmul fast float %808, %644
  %812 = call float @dx.op.unary.f32(i32 7, float %809)  ; Saturate(value)
  %813 = call float @dx.op.unary.f32(i32 7, float %810)  ; Saturate(value)
  %814 = call float @dx.op.unary.f32(i32 7, float %811)  ; Saturate(value)
  %815 = fmul fast float %805, %638
  %816 = fmul fast float %805, %641
  %817 = fmul fast float %805, %644
  %818 = fadd fast float %815, %806
  %819 = fadd fast float %816, %806
  %820 = fadd fast float %817, %806
  %821 = call float @dx.op.unary.f32(i32 7, float %818)  ; Saturate(value)
  %822 = call float @dx.op.unary.f32(i32 7, float %819)  ; Saturate(value)
  %823 = call float @dx.op.unary.f32(i32 7, float %820)  ; Saturate(value)
  %824 = call float @dx.op.unary.f32(i32 7, float %668)  ; Saturate(value)
  %825 = call float @dx.op.dot3.f32(i32 55, float %812, float %813, float %814, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %826 = add i32 %31, 32
  %827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %826, i32 undef)  ; BufferLoad(srv,index,wot)
  %828 = extractvalue %dx.types.ResRet.i32 %827, 0
  %829 = and i32 %828, 255
  %830 = uitofp i32 %829 to float
  %831 = lshr i32 %828, 8
  %832 = and i32 %831, 255
  %833 = uitofp i32 %832 to float
  %834 = fmul fast float %833, %825
  %835 = fadd fast float %834, %830
  %836 = fmul fast float %835, 0x3F70101020000000
  %837 = call float @dx.op.unary.f32(i32 7, float %836)  ; Saturate(value)
  %838 = and i32 %151, 8192
  %839 = icmp eq i32 %838, 0
  %840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %841 = extractvalue %dx.types.CBufRet.f32 %840, 0
  br i1 %839, label %848, label %842, !dx.controlflow.hints !76

; <label>:842                                     ; preds = %755
  %843 = add i32 %148, 176
  %844 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %843, i32 undef)  ; BufferLoad(srv,index,wot)
  %845 = extractvalue %dx.types.ResRet.f32 %844, 0
  %846 = fcmp fast oge float %845, 0.000000e+00
  %847 = select i1 %846, float %845, float %841
  br label %855

; <label>:848                                     ; preds = %755
  %849 = add i32 %31, 72
  %850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %849, i32 undef)  ; BufferLoad(srv,index,wot)
  %851 = extractvalue %dx.types.ResRet.i32 %850, 0
  %852 = bitcast i32 %851 to float
  %853 = fcmp fast oge float %852, 0.000000e+00
  %854 = select i1 %853, float %852, float %841
  br label %855

; <label>:855                                     ; preds = %848, %842
  %856 = phi float [ %847, %842 ], [ %854, %848 ]
  %857 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %231, i32 %232, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %858 = extractvalue %dx.types.ResRet.i32 %857, 0
  %859 = lshr i32 %858, 18
  %860 = uitofp i32 %859 to float
  %861 = fmul fast float %860, 0x3F4C00EBA0000000
  %862 = call float @dx.op.unary.f32(i32 21, float %861)  ; Exp(value)
  %863 = fadd fast float %862, -1.000000e+00
  %864 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %865 = extractvalue %dx.types.Dimensions %864, 0
  %866 = sitofp i32 %865 to float
  %867 = extractvalue %dx.types.Dimensions %864, 1
  %868 = sitofp i32 %867 to float
  %869 = fcmp fast oge float %229, %866
  %870 = fcmp fast oge float %230, %868
  %871 = or i1 %869, %870
  %872 = select i1 %871, float 0x4197782600000000, float %863
  %873 = icmp eq i32 %147, 3
  %874 = fcmp fast ogt float %54, %872
  %875 = and i1 %255, %874
  %876 = or i1 %873, %875
  %877 = icmp eq i32 %147, 2
  %878 = fcmp fast ole float %54, %872
  %879 = and i1 %877, %878
  %880 = or i1 %879, %876
  %881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %882 = extractvalue %dx.types.CBufRet.f32 %881, 3
  %883 = fcmp fast ogt float %882, 0.000000e+00
  br i1 %883, label %884, label %891

; <label>:884                                     ; preds = %855
  %885 = fmul fast float %793, 0xBFDF454380000000
  %886 = fmul fast float %794, 0x3FDF454380000000
  %887 = fmul fast float %792, 0xBFDF454380000000
  %888 = call float @dx.op.dot4.f32(i32 56, float %770, float %769, float %768, float %767, float 0x3FD20DD760000000, float %885, float %886, float %887)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %889 = call float @dx.op.dot4.f32(i32 56, float %760, float %761, float %762, float %763, float 0x3FD20DD760000000, float %885, float %886, float %887)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %890 = call float @dx.op.dot4.f32(i32 56, float %756, float %757, float %758, float %759, float 0x3FD20DD760000000, float %885, float %886, float %887)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %891

; <label>:891                                     ; preds = %884, %855
  %892 = phi float [ %888, %884 ], [ %770, %855 ]
  %893 = phi float [ %889, %884 ], [ %769, %855 ]
  %894 = phi float [ %890, %884 ], [ %768, %855 ]
  %895 = call float @dx.op.dot3.f32(i32 55, float %792, float %793, float %794, float %800, float %801, float %802)  ; Dot3(ax,ay,az,bx,by,bz)
  %896 = call float @dx.op.unary.f32(i32 7, float %895)  ; Saturate(value)
  br i1 %883, label %897, label %997

; <label>:897                                     ; preds = %891
  %898 = fsub fast float -0.000000e+00, %759
  %899 = fsub fast float %898, %763
  %900 = fsub fast float %899, %767
  %901 = fsub fast float -0.000000e+00, %757
  %902 = fsub fast float %901, %761
  %903 = fsub fast float %902, %769
  %904 = fadd fast float %762, %758
  %905 = fadd fast float %904, %768
  %906 = call float @dx.op.dot3.f32(i32 55, float %900, float %903, float %905, float %900, float %903, float %905)  ; Dot3(ax,ay,az,bx,by,bz)
  %907 = call float @dx.op.unary.f32(i32 25, float %906)  ; Rsqrt(value)
  %908 = fmul fast float %907, %900
  %909 = fmul fast float %907, %903
  %910 = fmul fast float %907, %905
  %911 = fmul fast float %909, 0xBFD4D8D7C0000000
  %912 = fmul fast float %910, 0x3FD4D8D7C0000000
  %913 = fmul fast float %908, 0xBFD4D8D7C0000000
  %914 = call float @dx.op.dot4.f32(i32 56, float %770, float %769, float %768, float %767, float 0x3FD20DD760000000, float %911, float %912, float %913)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %915 = call float @dx.op.dot4.f32(i32 56, float %760, float %761, float %762, float %763, float 0x3FD20DD760000000, float %911, float %912, float %913)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %916 = call float @dx.op.dot4.f32(i32 56, float %756, float %757, float %758, float %759, float 0x3FD20DD760000000, float %911, float %912, float %913)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %917 = fmul fast float %914, 0x4003333340000000
  %918 = fmul fast float %770, 0x3FE5AA35A0000000
  %919 = fsub fast float %917, %918
  %920 = fmul fast float %915, 0x4003333340000000
  %921 = fmul fast float %760, 0x3FE5AA35A0000000
  %922 = fsub fast float %920, %921
  %923 = fmul fast float %916, 0x4003333340000000
  %924 = fmul fast float %756, 0x3FE5AA35A0000000
  %925 = fsub fast float %923, %924
  %926 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %919)  ; FMax(a,b)
  %927 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %922)  ; FMax(a,b)
  %928 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %925)  ; FMax(a,b)
  %929 = fsub fast float %908, %797
  %930 = fsub fast float %909, %798
  %931 = fsub fast float %910, %799
  %932 = call float @dx.op.dot3.f32(i32 55, float %929, float %930, float %931, float %929, float %930, float %931)  ; Dot3(ax,ay,az,bx,by,bz)
  %933 = call float @dx.op.unary.f32(i32 25, float %932)  ; Rsqrt(value)
  %934 = fmul fast float %933, %929
  %935 = fmul fast float %933, %930
  %936 = fmul fast float %933, %931
  %937 = call float @dx.op.dot3.f32(i32 55, float %792, float %793, float %794, float %908, float %909, float %910)  ; Dot3(ax,ay,az,bx,by,bz)
  %938 = call float @dx.op.unary.f32(i32 6, float %937)  ; FAbs(value)
  %939 = call float @dx.op.dot3.f32(i32 55, float %792, float %793, float %794, float %934, float %935, float %936)  ; Dot3(ax,ay,az,bx,by,bz)
  %940 = fmul fast float %939, %939
  %941 = call float @dx.op.dot3.f32(i32 55, float %800, float %801, float %802, float %934, float %935, float %936)  ; Dot3(ax,ay,az,bx,by,bz)
  %942 = call float @dx.op.unary.f32(i32 6, float %941)  ; FAbs(value)
  %943 = fsub fast float 1.000000e+00, %824
  %944 = call float @dx.op.binary.f32(i32 35, float %943, float 0x3F847AE140000000)  ; FMax(a,b)
  %945 = fmul fast float %944, %944
  %946 = fmul fast float %945, %945
  %947 = fsub fast float 1.000000e+00, %946
  %948 = fmul fast float %896, %896
  %949 = fmul fast float %948, %947
  %950 = fadd fast float %949, %946
  %951 = bitcast float %950 to i32
  %952 = ashr i32 %951, 1
  %953 = add nsw i32 %952, 532487669
  %954 = bitcast i32 %953 to float
  %955 = fadd fast float %954, %896
  %956 = fmul fast float %946, %940
  %957 = fsub fast float 1.000000e+00, %940
  %958 = fadd fast float %957, %956
  %959 = fmul fast float %938, %938
  %960 = fmul fast float %959, %947
  %961 = fadd fast float %960, %946
  %962 = bitcast float %961 to i32
  %963 = ashr i32 %962, 1
  %964 = add nsw i32 %963, 532487669
  %965 = bitcast i32 %964 to float
  %966 = fadd fast float %965, %938
  %967 = fmul fast float %958, %958
  %968 = fmul fast float %967, %955
  %969 = fmul fast float %968, %966
  %970 = fdiv fast float 1.000000e+00, %969
  %971 = fmul fast float %946, %970
  %972 = fsub fast float 1.000000e+00, %942
  %973 = bitcast float %972 to i32
  %974 = sitofp i32 %973 to float
  %975 = fmul fast float %974, 5.000000e+00
  %976 = fadd fast float %975, 0xC1EFBF8940000000
  %977 = fptosi float %976 to i32
  %978 = bitcast i32 %977 to float
  %979 = fsub fast float 1.000000e+00, %821
  %980 = fsub fast float 1.000000e+00, %822
  %981 = fsub fast float 1.000000e+00, %823
  %982 = fmul fast float %978, %979
  %983 = fmul fast float %978, %980
  %984 = fmul fast float %978, %981
  %985 = fadd fast float %982, %821
  %986 = fadd fast float %983, %822
  %987 = fadd fast float %984, %823
  %988 = fmul fast float %971, %926
  %989 = fmul fast float %988, %985
  %990 = fmul fast float %971, %927
  %991 = fmul fast float %990, %986
  %992 = fmul fast float %971, %928
  %993 = fmul fast float %992, %987
  %994 = call float @dx.op.binary.f32(i32 35, float %989, float 0.000000e+00)  ; FMax(a,b)
  %995 = call float @dx.op.binary.f32(i32 35, float %991, float 0.000000e+00)  ; FMax(a,b)
  %996 = call float @dx.op.binary.f32(i32 35, float %993, float 0.000000e+00)  ; FMax(a,b)
  br label %997

; <label>:997                                     ; preds = %897, %891
  %998 = phi float [ %994, %897 ], [ 0.000000e+00, %891 ]
  %999 = phi float [ %995, %897 ], [ 0.000000e+00, %891 ]
  %1000 = phi float [ %996, %897 ], [ 0.000000e+00, %891 ]
  %1001 = fmul fast float %896, 9.843750e-01
  %1002 = fmul fast float %824, 9.843750e-01
  %1003 = fadd fast float %1001, 7.812500e-03
  %1004 = fadd fast float %1002, 7.812500e-03
  %1005 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %26, float %1003, float %1004, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1006 = extractvalue %dx.types.ResRet.f32 %1005, 2
  %1007 = extractvalue %dx.types.ResRet.f32 %1005, 3
  %1008 = fmul fast float %1006, %821
  %1009 = fmul fast float %1006, %822
  %1010 = fmul fast float %1006, %823
  %1011 = fadd fast float %1008, %1007
  %1012 = fadd fast float %1009, %1007
  %1013 = fadd fast float %1010, %1007
  %1014 = call float @dx.op.binary.f32(i32 35, float %1012, float %1013)  ; FMax(a,b)
  %1015 = call float @dx.op.binary.f32(i32 35, float %1011, float %1014)  ; FMax(a,b)
  %1016 = fsub fast float 1.000000e+00, %1015
  %1017 = call float @dx.op.dot3.f32(i32 55, float %797, float %798, float %799, float %792, float %793, float %794)  ; Dot3(ax,ay,az,bx,by,bz)
  %1018 = fmul fast float %1017, 2.000000e+00
  %1019 = fmul fast float %1018, %792
  %1020 = fmul fast float %1018, %793
  %1021 = fmul fast float %1018, %794
  %1022 = fsub fast float %797, %1019
  %1023 = fsub fast float %798, %1020
  %1024 = fsub fast float %799, %1021
  br i1 %883, label %1025, label %1032

; <label>:1025                                    ; preds = %997
  %1026 = fmul fast float %1023, 0xBFDF454380000000
  %1027 = fmul fast float %1024, 0x3FDF454380000000
  %1028 = fmul fast float %1022, 0xBFDF454380000000
  %1029 = call float @dx.op.dot4.f32(i32 56, float %770, float %769, float %768, float %767, float 0x3FD20DD760000000, float %1026, float %1027, float %1028)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1030 = call float @dx.op.dot4.f32(i32 56, float %760, float %761, float %762, float %763, float 0x3FD20DD760000000, float %1026, float %1027, float %1028)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1031 = call float @dx.op.dot4.f32(i32 56, float %756, float %757, float %758, float %759, float 0x3FD20DD760000000, float %1026, float %1027, float %1028)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %1032

; <label>:1032                                    ; preds = %1025, %997
  %1033 = phi float [ %1029, %1025 ], [ %770, %997 ]
  %1034 = phi float [ %1030, %1025 ], [ %769, %997 ]
  %1035 = phi float [ %1031, %1025 ], [ %768, %997 ]
  %1036 = call float @dx.op.dot3.f32(i32 55, float %1033, float %1034, float %1035, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %1038 = extractvalue %dx.types.CBufRet.f32 %1037, 2
  %1039 = extractvalue %dx.types.CBufRet.f32 %1037, 3
  %1040 = fmul fast float %1038, %61
  %1041 = fmul fast float %1039, %62
  %1042 = fptoui float %1040 to i32
  %1043 = fptoui float %1041 to i32
  %1044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1045 = extractvalue %dx.types.CBufRet.f32 %1044, 0
  %1046 = extractvalue %dx.types.CBufRet.f32 %1044, 2
  %1047 = extractvalue %dx.types.CBufRet.f32 %1044, 3
  %1048 = fadd fast float %54, -4.000000e+00
  %1049 = call float @dx.op.binary.f32(i32 35, float %1048, float 0.000000e+00)  ; FMax(a,b)
  %1050 = fadd fast float %1049, %1045
  %1051 = fmul fast float %1050, %1046
  %1052 = call float @dx.op.unary.f32(i32 23, float %1051)  ; Log(value)
  %1053 = fmul fast float %1052, %1047
  %1054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1055 = extractvalue %dx.types.CBufRet.f32 %1054, 2
  %1056 = fmul fast float %1053, %1055
  %1057 = call float @dx.op.unary.f32(i32 7, float %1056)  ; Saturate(value)
  %1058 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1059 = extractvalue %dx.types.CBufRet.i32 %1058, 1
  %1060 = add i32 %1059, -1
  %1061 = uitofp i32 %1059 to float
  %1062 = fmul fast float %1061, %1057
  %1063 = fptoui float %1062 to i32
  %1064 = call i32 @dx.op.binary.i32(i32 40, i32 %1063, i32 %1060)  ; UMin(a,b)
  %1065 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %1066 = extractvalue %dx.types.CBufRet.i32 %1065, 2
  %1067 = extractvalue %dx.types.CBufRet.i32 %1065, 3
  %1068 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1043, i32 %1066, i32 %1042)  ; UMad(a,b,c)
  %1069 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1064, i32 %1067, i32 %1068)  ; UMad(a,b,c)
  %1070 = call float @dx.op.binary.f32(i32 35, float %54, float 0.000000e+00)  ; FMax(a,b)
  %1071 = fptoui float %1070 to i32
  %1072 = lshr i32 %1071, 5
  %1073 = call i32 @dx.op.binary.i32(i32 40, i32 %1072, i32 8191)  ; UMin(a,b)
  %1074 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1075 = extractvalue %dx.types.CBufRet.i32 %1074, 2
  %1076 = add nsw i32 %1075, -1
  %1077 = call i32 @dx.op.binary.i32(i32 37, i32 %1076, i32 0)  ; IMax(a,b)
  %1078 = shl i32 %1073, 2
  %1079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1078, i32 undef)  ; BufferLoad(srv,index,wot)
  %1080 = extractvalue %dx.types.ResRet.i32 %1079, 0
  %1081 = lshr i32 %1080, 16
  %1082 = and i32 %1080, 65535
  %1083 = lshr i32 %1080, 21
  %1084 = lshr i32 %1082, 5
  %1085 = call i32 @dx.op.binary.i32(i32 40, i32 %1084, i32 %1077)  ; UMin(a,b)
  %1086 = icmp ugt i32 %1083, %1085
  br i1 %1086, label %1449, label %1087

; <label>:1087                                    ; preds = %1032
  br label %1088

; <label>:1088                                    ; preds = %1441, %1087
  %1089 = phi float [ %1442, %1441 ], [ 0.000000e+00, %1087 ]
  %1090 = phi float [ %1443, %1441 ], [ 0.000000e+00, %1087 ]
  %1091 = phi float [ %1444, %1441 ], [ 0.000000e+00, %1087 ]
  %1092 = phi float [ %1445, %1441 ], [ 1.000000e+00, %1087 ]
  %1093 = phi i32 [ %1446, %1441 ], [ %1083, %1087 ]
  %1094 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1095 = extractvalue %dx.types.CBufRet.i32 %1094, 2
  %1096 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1069, i32 %1095, i32 %1093)  ; UMad(a,b,c)
  %1097 = shl i32 %1096, 2
  %1098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1097, i32 undef)  ; BufferLoad(srv,index,wot)
  %1099 = extractvalue %dx.types.ResRet.i32 %1098, 0
  %1100 = shl i32 %1093, 5
  %1101 = sub nsw i32 %1081, %1100
  %1102 = call i32 @dx.op.binary.i32(i32 37, i32 %1101, i32 0)  ; IMax(a,b)
  %1103 = call i32 @dx.op.binary.i32(i32 38, i32 %1102, i32 31)  ; IMin(a,b)
  %1104 = sub nsw i32 1, %1081
  %1105 = add nsw i32 %1104, %1082
  %1106 = call i32 @dx.op.binary.i32(i32 37, i32 %1105, i32 0)  ; IMax(a,b)
  %1107 = call i32 @dx.op.binary.i32(i32 38, i32 %1106, i32 32)  ; IMin(a,b)
  %1108 = and i32 %1107, 31
  %1109 = shl i32 -1, %1108
  %1110 = xor i32 %1109, -1
  %1111 = and i32 %1103, 31
  %1112 = shl i32 %1110, %1111
  %1113 = icmp eq i32 %1107, 32
  %1114 = select i1 %1113, i32 -1, i32 %1112
  %1115 = and i32 %1114, %1099
  %1116 = icmp eq i32 %1115, 0
  br i1 %1116, label %1441, label %1117

; <label>:1117                                    ; preds = %1088
  br label %1118

; <label>:1118                                    ; preds = %1224, %1117
  %1119 = phi float [ %1225, %1224 ], [ %1089, %1117 ]
  %1120 = phi float [ %1226, %1224 ], [ %1090, %1117 ]
  %1121 = phi float [ %1227, %1224 ], [ %1091, %1117 ]
  %1122 = phi float [ %1228, %1224 ], [ %1092, %1117 ]
  %1123 = phi i32 [ %1128, %1224 ], [ %1115, %1117 ]
  %1124 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1123)  ; FirstbitLo(value)
  %1125 = add i32 %1124, %1100
  %1126 = and i32 %1124, 31
  %1127 = shl i32 1, %1126
  %1128 = xor i32 %1127, %1123
  %1129 = mul i32 %1125, 72
  %1130 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1131 = extractvalue %dx.types.ResRet.f32 %1130, 0
  %1132 = extractvalue %dx.types.ResRet.f32 %1130, 1
  %1133 = extractvalue %dx.types.ResRet.f32 %1130, 2
  %1134 = add i32 %1129, 12
  %1135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1134, i32 undef)  ; BufferLoad(srv,index,wot)
  %1136 = extractvalue %dx.types.ResRet.i32 %1135, 0
  %1137 = add i32 %1129, 16
  %1138 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1137, i32 undef)  ; BufferLoad(srv,index,wot)
  %1139 = extractvalue %dx.types.ResRet.f32 %1138, 0
  %1140 = extractvalue %dx.types.ResRet.f32 %1138, 1
  %1141 = extractvalue %dx.types.ResRet.f32 %1138, 2
  %1142 = add i32 %1129, 28
  %1143 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1142, i32 undef)  ; BufferLoad(srv,index,wot)
  %1144 = extractvalue %dx.types.ResRet.f32 %1143, 0
  %1145 = add i32 %1129, 32
  %1146 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1145, i32 undef)  ; BufferLoad(srv,index,wot)
  %1147 = extractvalue %dx.types.ResRet.f32 %1146, 0
  %1148 = extractvalue %dx.types.ResRet.f32 %1146, 1
  %1149 = extractvalue %dx.types.ResRet.f32 %1146, 2
  %1150 = extractvalue %dx.types.ResRet.f32 %1146, 3
  %1151 = add i32 %1129, 48
  %1152 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1151, i32 undef)  ; BufferLoad(srv,index,wot)
  %1153 = extractvalue %dx.types.ResRet.f32 %1152, 0
  %1154 = extractvalue %dx.types.ResRet.f32 %1152, 1
  %1155 = add i32 %1129, 56
  %1156 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1155, i32 undef)  ; BufferLoad(srv,index,wot)
  %1157 = extractvalue %dx.types.ResRet.f32 %1156, 0
  %1158 = extractvalue %dx.types.ResRet.f32 %1156, 1
  %1159 = add i32 %1129, 64
  %1160 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1159, i32 undef)  ; BufferLoad(srv,index,wot)
  %1161 = extractvalue %dx.types.ResRet.f32 %1160, 0
  %1162 = extractvalue %dx.types.ResRet.f32 %1160, 1
  %1163 = mul i32 %1125, 60
  %1164 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1163, i32 undef)  ; BufferLoad(srv,index,wot)
  %1165 = extractvalue %dx.types.ResRet.f32 %1164, 0
  %1166 = extractvalue %dx.types.ResRet.f32 %1164, 1
  %1167 = extractvalue %dx.types.ResRet.f32 %1164, 2
  %1168 = add i32 %1163, 12
  %1169 = add i32 %1163, 48
  %1170 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1171 = extractvalue %dx.types.ResRet.f32 %1170, 0
  %1172 = extractvalue %dx.types.ResRet.f32 %1170, 1
  %1173 = extractvalue %dx.types.ResRet.f32 %1170, 2
  %1174 = and i32 %1136, 32767
  %1175 = bitcast float %1131 to i32
  %1176 = icmp eq i32 %1175, -1
  %1177 = bitcast float %1132 to i32
  %1178 = and i32 %1136, 32768
  %1179 = icmp ne i32 %1178, 0
  %1180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1181 = extractvalue %dx.types.CBufRet.f32 %1180, 0
  %1182 = extractvalue %dx.types.CBufRet.f32 %1180, 1
  %1183 = extractvalue %dx.types.CBufRet.f32 %1180, 2
  %1184 = fsub fast float %1165, %1181
  %1185 = fsub fast float %1166, %1182
  %1186 = fsub fast float %1167, %1183
  %1187 = fsub fast float %96, %1184
  %1188 = fsub fast float %97, %1185
  %1189 = fsub fast float %98, %1186
  %1190 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1191 = extractvalue %dx.types.ResRet.f32 %1190, 0
  %1192 = extractvalue %dx.types.ResRet.f32 %1190, 1
  %1193 = extractvalue %dx.types.ResRet.f32 %1190, 2
  %1194 = call float @dx.op.dot3.f32(i32 55, float %1187, float %1188, float %1189, float %1191, float %1192, float %1193)  ; Dot3(ax,ay,az,bx,by,bz)
  %1195 = add i32 %1163, 24
  %1196 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1195, i32 undef)  ; BufferLoad(srv,index,wot)
  %1197 = extractvalue %dx.types.ResRet.f32 %1196, 0
  %1198 = extractvalue %dx.types.ResRet.f32 %1196, 1
  %1199 = extractvalue %dx.types.ResRet.f32 %1196, 2
  %1200 = call float @dx.op.dot3.f32(i32 55, float %1187, float %1188, float %1189, float %1197, float %1198, float %1199)  ; Dot3(ax,ay,az,bx,by,bz)
  %1201 = add i32 %1163, 36
  %1202 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1201, i32 undef)  ; BufferLoad(srv,index,wot)
  %1203 = extractvalue %dx.types.ResRet.f32 %1202, 0
  %1204 = extractvalue %dx.types.ResRet.f32 %1202, 1
  %1205 = extractvalue %dx.types.ResRet.f32 %1202, 2
  %1206 = call float @dx.op.dot3.f32(i32 55, float %1187, float %1188, float %1189, float %1203, float %1204, float %1205)  ; Dot3(ax,ay,az,bx,by,bz)
  %1207 = call float @dx.op.unary.f32(i32 6, float %1194)  ; FAbs(value)
  %1208 = call float @dx.op.unary.f32(i32 6, float %1200)  ; FAbs(value)
  %1209 = call float @dx.op.unary.f32(i32 6, float %1206)  ; FAbs(value)
  %1210 = fsub fast float %1171, %1207
  %1211 = fsub fast float %1172, %1208
  %1212 = fsub fast float %1173, %1209
  %1213 = fmul fast float %1210, %1139
  %1214 = fmul fast float %1211, %1140
  %1215 = fmul fast float %1212, %1141
  %1216 = call float @dx.op.binary.f32(i32 36, float %1214, float %1215)  ; FMin(a,b)
  %1217 = call float @dx.op.binary.f32(i32 36, float %1213, float %1216)  ; FMin(a,b)
  %1218 = call float @dx.op.unary.f32(i32 7, float %1217)  ; Saturate(value)
  %1219 = call float @dx.op.binary.f32(i32 36, float %1122, float %1218)  ; FMin(a,b)
  %1220 = uitofp i1 %1179 to float
  %1221 = fsub fast float 1.000000e+00, %1220
  %1222 = fmul fast float %1219, %1221
  %1223 = fcmp fast ogt float %1222, 0.000000e+00
  br i1 %1223, label %1230, label %1224

; <label>:1224                                    ; preds = %1372, %1118
  %1225 = phi float [ %1436, %1372 ], [ %1119, %1118 ]
  %1226 = phi float [ %1437, %1372 ], [ %1120, %1118 ]
  %1227 = phi float [ %1438, %1372 ], [ %1121, %1118 ]
  %1228 = phi float [ %1439, %1372 ], [ %1122, %1118 ]
  %1229 = icmp eq i32 %1123, %1127
  br i1 %1229, label %1440, label %1118

; <label>:1230                                    ; preds = %1118
  br i1 %1176, label %1288, label %1231

; <label>:1231                                    ; preds = %1230
  %1232 = fsub fast float -0.000000e+00, %1191
  %1233 = fsub fast float -0.000000e+00, %1192
  %1234 = fsub fast float -0.000000e+00, %1193
  %1235 = call float @dx.op.dot3.f32(i32 55, float %1022, float %1023, float %1024, float %1232, float %1233, float %1234)  ; Dot3(ax,ay,az,bx,by,bz)
  %1236 = fsub fast float -0.000000e+00, %1235
  %1237 = call float @dx.op.dot3.f32(i32 55, float %1187, float %1188, float %1189, float %1232, float %1233, float %1234)  ; Dot3(ax,ay,az,bx,by,bz)
  %1238 = fadd fast float %1237, %1154
  %1239 = fadd fast float %1153, %1237
  %1240 = fsub fast float -0.000000e+00, %1239
  %1241 = fcmp ogt float %1235, -0.000000e+00
  %1242 = select i1 %1241, float %1240, float %1238
  %1243 = call float @dx.op.unary.f32(i32 6, float %1236)  ; FAbs(value)
  %1244 = fdiv fast float 1.000000e+00, %1243
  %1245 = fmul fast float %1242, %1244
  %1246 = call float @dx.op.binary.f32(i32 35, float %1245, float 0.000000e+00)  ; FMax(a,b)
  %1247 = fsub fast float -0.000000e+00, %1197
  %1248 = fsub fast float -0.000000e+00, %1198
  %1249 = fsub fast float -0.000000e+00, %1199
  %1250 = call float @dx.op.dot3.f32(i32 55, float %1022, float %1023, float %1024, float %1247, float %1248, float %1249)  ; Dot3(ax,ay,az,bx,by,bz)
  %1251 = fsub fast float -0.000000e+00, %1250
  %1252 = call float @dx.op.dot3.f32(i32 55, float %1187, float %1188, float %1189, float %1247, float %1248, float %1249)  ; Dot3(ax,ay,az,bx,by,bz)
  %1253 = fadd fast float %1252, %1158
  %1254 = fadd fast float %1157, %1252
  %1255 = fsub fast float -0.000000e+00, %1254
  %1256 = fcmp ogt float %1250, -0.000000e+00
  %1257 = select i1 %1256, float %1255, float %1253
  %1258 = call float @dx.op.unary.f32(i32 6, float %1251)  ; FAbs(value)
  %1259 = fdiv fast float 1.000000e+00, %1258
  %1260 = fmul fast float %1257, %1259
  %1261 = call float @dx.op.binary.f32(i32 35, float %1260, float 0.000000e+00)  ; FMax(a,b)
  %1262 = fsub fast float -0.000000e+00, %1203
  %1263 = fsub fast float -0.000000e+00, %1204
  %1264 = fsub fast float -0.000000e+00, %1205
  %1265 = call float @dx.op.dot3.f32(i32 55, float %1022, float %1023, float %1024, float %1262, float %1263, float %1264)  ; Dot3(ax,ay,az,bx,by,bz)
  %1266 = fsub fast float -0.000000e+00, %1265
  %1267 = call float @dx.op.dot3.f32(i32 55, float %1187, float %1188, float %1189, float %1262, float %1263, float %1264)  ; Dot3(ax,ay,az,bx,by,bz)
  %1268 = fadd fast float %1267, %1162
  %1269 = fadd fast float %1161, %1267
  %1270 = fsub fast float -0.000000e+00, %1269
  %1271 = fcmp ogt float %1265, -0.000000e+00
  %1272 = select i1 %1271, float %1270, float %1268
  %1273 = call float @dx.op.unary.f32(i32 6, float %1266)  ; FAbs(value)
  %1274 = fdiv fast float 1.000000e+00, %1273
  %1275 = fmul fast float %1272, %1274
  %1276 = call float @dx.op.binary.f32(i32 35, float %1275, float 0.000000e+00)  ; FMax(a,b)
  %1277 = call float @dx.op.binary.f32(i32 36, float %1261, float %1276)  ; FMin(a,b)
  %1278 = call float @dx.op.binary.f32(i32 36, float %1246, float %1277)  ; FMin(a,b)
  %1279 = fmul fast float %1278, %1022
  %1280 = fmul fast float %1278, %1023
  %1281 = fmul fast float %1278, %1024
  %1282 = fadd fast float %1279, %96
  %1283 = fadd fast float %1280, %97
  %1284 = fadd fast float %1281, %98
  %1285 = fsub fast float %1282, %1131
  %1286 = fsub fast float %1283, %1132
  %1287 = fsub fast float %1284, %1133
  br label %1295

; <label>:1288                                    ; preds = %1230
  %1289 = fmul fast float %1022, 8.096000e+03
  %1290 = fmul fast float %1023, 8.096000e+03
  %1291 = fmul fast float %1024, 8.096000e+03
  %1292 = fadd fast float %1289, %96
  %1293 = fadd fast float %1290, %97
  %1294 = fadd fast float %1291, %98
  br label %1295

; <label>:1295                                    ; preds = %1288, %1231
  %1296 = phi float [ %1022, %1288 ], [ %1285, %1231 ]
  %1297 = phi float [ %1023, %1288 ], [ %1286, %1231 ]
  %1298 = phi float [ %1024, %1288 ], [ %1287, %1231 ]
  %1299 = phi float [ %1292, %1288 ], [ %1282, %1231 ]
  %1300 = phi float [ %1293, %1288 ], [ %1283, %1231 ]
  %1301 = phi float [ %1294, %1288 ], [ %1284, %1231 ]
  %1302 = fcmp fast olt float %1150, 1.000000e+00
  br i1 %1302, label %1303, label %1334, !dx.controlflow.hints !77

; <label>:1303                                    ; preds = %1295
  %1304 = fmul fast float %1298, %1148
  %1305 = fmul fast float %1297, %1149
  %1306 = fsub fast float %1304, %1305
  %1307 = fmul fast float %1296, %1149
  %1308 = fmul fast float %1298, %1147
  %1309 = fsub fast float %1307, %1308
  %1310 = fmul fast float %1297, %1147
  %1311 = fmul fast float %1296, %1148
  %1312 = fsub fast float %1310, %1311
  %1313 = fmul fast float %1306, 2.000000e+00
  %1314 = fmul fast float %1309, 2.000000e+00
  %1315 = fmul fast float %1312, 2.000000e+00
  %1316 = fmul fast float %1313, %1150
  %1317 = fmul fast float %1314, %1150
  %1318 = fmul fast float %1315, %1150
  %1319 = fmul fast float %1315, %1148
  %1320 = fmul fast float %1314, %1149
  %1321 = fmul fast float %1313, %1149
  %1322 = fmul fast float %1315, %1147
  %1323 = fmul fast float %1314, %1147
  %1324 = fmul fast float %1313, %1148
  %1325 = fadd fast float %1319, %1296
  %1326 = fadd fast float %1325, %1316
  %1327 = fsub fast float %1326, %1320
  %1328 = fsub fast float %1297, %1322
  %1329 = fadd fast float %1328, %1317
  %1330 = fadd fast float %1329, %1321
  %1331 = fadd fast float %1318, %1298
  %1332 = fsub fast float %1331, %1324
  %1333 = fadd fast float %1332, %1323
  br label %1334

; <label>:1334                                    ; preds = %1303, %1295
  %1335 = phi float [ %1327, %1303 ], [ %1296, %1295 ]
  %1336 = phi float [ %1330, %1303 ], [ %1297, %1295 ]
  %1337 = phi float [ %1333, %1303 ], [ %1298, %1295 ]
  br i1 %1176, label %1369, label %1338

; <label>:1338                                    ; preds = %1334
  %1339 = fmul fast float %824, 0x400187C840000000
  %1340 = fadd fast float %1339, 0xC00EFC2120000000
  %1341 = fmul fast float %1340, %824
  %1342 = fadd fast float %1341, 0x3FE5D16340000000
  %1343 = fmul fast float %1342, %824
  %1344 = fadd fast float %1343, 1.000000e+00
  %1345 = call float @dx.op.unary.f32(i32 7, float %1344)  ; Saturate(value)
  %1346 = fsub fast float %1299, %96
  %1347 = fsub fast float %1300, %97
  %1348 = fsub fast float %1301, %98
  %1349 = fsub fast float %1299, %1131
  %1350 = fsub fast float %1300, %1132
  %1351 = fsub fast float %1301, %1133
  %1352 = call float @dx.op.dot3.f32(i32 55, float %1346, float %1347, float %1348, float %1346, float %1347, float %1348)  ; Dot3(ax,ay,az,bx,by,bz)
  %1353 = call float @dx.op.dot3.f32(i32 55, float %1349, float %1350, float %1351, float %1349, float %1350, float %1351)  ; Dot3(ax,ay,az,bx,by,bz)
  %1354 = fadd fast float %1353, 0x3EE4F8B580000000
  %1355 = fdiv fast float %1352, %1354
  %1356 = bitcast float %1355 to i32
  %1357 = ashr i32 %1356, 1
  %1358 = add nsw i32 %1357, 532487669
  %1359 = bitcast i32 %1358 to float
  %1360 = fmul fast float %1359, %1345
  %1361 = call float @dx.op.unary.f32(i32 7, float %1360)  ; Saturate(value)
  %1362 = fmul fast float %1361, 0x4009981AE0000000
  %1363 = fsub fast float 0x40111BBD80000000, %1362
  %1364 = fmul fast float %1363, %1361
  %1365 = fadd fast float %1364, 0xC0009F6020000000
  %1366 = fmul fast float %1365, %1361
  %1367 = fadd fast float %1366, 1.000000e+00
  %1368 = call float @dx.op.unary.f32(i32 7, float %1367)  ; Saturate(value)
  br label %1372

; <label>:1369                                    ; preds = %1334
  %1370 = icmp ne i32 %1177, -1
  %1371 = zext i1 %1370 to i32
  br label %1372

; <label>:1372                                    ; preds = %1369, %1338
  %1373 = phi float [ %824, %1369 ], [ %1368, %1338 ]
  %1374 = phi i32 [ %1371, %1369 ], [ 0, %1338 ]
  %1375 = fmul float %1373, 5.000000e+00
  %1376 = fsub float 5.000000e+00, %1375
  %1377 = icmp ne i32 %1374, 0
  %1378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %1379 = extractvalue %dx.types.CBufRet.f32 %1378, 3
  %1380 = fadd fast float %1379, %1376
  %1381 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1380)  ; FMax(a,b)
  %1382 = call float @dx.op.unary.f32(i32 6, float %1335)  ; FAbs(value)
  %1383 = call float @dx.op.unary.f32(i32 6, float %1336)  ; FAbs(value)
  %1384 = fadd fast float %1383, %1382
  %1385 = call float @dx.op.unary.f32(i32 6, float %1337)  ; FAbs(value)
  %1386 = fadd fast float %1384, %1385
  %1387 = fcmp fast oeq float %1386, 0.000000e+00
  %1388 = fdiv fast float 1.000000e+00, %1386
  %1389 = select i1 %1387, float 1.000000e+00, float %1388
  %1390 = fmul fast float %1389, %1335
  %1391 = fmul fast float %1389, %1336
  %1392 = call float @dx.op.unary.f32(i32 6, float %1391)  ; FAbs(value)
  %1393 = call float @dx.op.unary.f32(i32 6, float %1390)  ; FAbs(value)
  %1394 = fsub fast float 1.000000e+00, %1392
  %1395 = fsub fast float 1.000000e+00, %1393
  %1396 = fcmp fast oge float %1390, 0.000000e+00
  %1397 = fcmp fast oge float %1391, 0.000000e+00
  %1398 = select i1 %1396, float 1.000000e+00, float -1.000000e+00
  %1399 = select i1 %1397, float 1.000000e+00, float -1.000000e+00
  %1400 = fcmp fast ole float %1337, 0.000000e+00
  %1401 = fmul fast float %1398, %1394
  %1402 = fmul fast float %1399, %1395
  %1403 = select i1 %1400, float %1401, float %1390
  %1404 = select i1 %1400, float %1402, float %1391
  %1405 = fmul fast float %1403, 5.000000e-01
  %1406 = fmul fast float %1404, 5.000000e-01
  %1407 = fadd fast float %1405, 5.000000e-01
  %1408 = fadd fast float %1406, 5.000000e-01
  %1409 = uitofp i32 %1174 to float
  %1410 = call float @dx.op.binary.f32(i32 36, float %1381, float 3.000000e+00)  ; FMin(a,b)
  %1411 = fadd fast float %1410, 2.000000e+00
  %1412 = call float @dx.op.unary.f32(i32 21, float %1411)  ; Exp(value)
  %1413 = extractvalue %dx.types.CBufRet.f32 %1378, 1
  %1414 = fmul fast float %1413, %1412
  %1415 = fmul fast float %1414, 2.000000e+00
  %1416 = fsub fast float 1.000000e+00, %1415
  %1417 = fmul fast float %1407, %1416
  %1418 = fmul fast float %1408, %1416
  %1419 = fadd fast float %1417, %1414
  %1420 = fadd fast float %1418, %1414
  %1421 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %25, float %1419, float %1420, float %1409, float undef, i32 0, i32 0, i32 undef, float %1381)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1422 = extractvalue %dx.types.ResRet.f32 %1421, 0
  %1423 = extractvalue %dx.types.ResRet.f32 %1421, 1
  %1424 = extractvalue %dx.types.ResRet.f32 %1421, 2
  %1425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1426 = extractvalue %dx.types.CBufRet.f32 %1425, 3
  %1427 = fmul fast float %1426, %1144
  %1428 = call float @dx.op.binary.f32(i32 36, float %1036, float %1427)  ; FMin(a,b)
  %1429 = select i1 %1377, float %1428, float %1427
  %1430 = fmul fast float %1422, %1222
  %1431 = fmul fast float %1430, %1429
  %1432 = fmul fast float %1423, %1222
  %1433 = fmul fast float %1432, %1429
  %1434 = fmul fast float %1424, %1222
  %1435 = fmul fast float %1434, %1429
  %1436 = fadd fast float %1431, %1119
  %1437 = fadd fast float %1433, %1120
  %1438 = fadd fast float %1435, %1121
  %1439 = fsub fast float %1122, %1222
  br label %1224

; <label>:1440                                    ; preds = %1224
  br label %1441

; <label>:1441                                    ; preds = %1440, %1088
  %1442 = phi float [ %1089, %1088 ], [ %1225, %1440 ]
  %1443 = phi float [ %1090, %1088 ], [ %1226, %1440 ]
  %1444 = phi float [ %1091, %1088 ], [ %1227, %1440 ]
  %1445 = phi float [ %1092, %1088 ], [ %1228, %1440 ]
  %1446 = add i32 %1093, 1
  %1447 = icmp ugt i32 %1446, %1085
  br i1 %1447, label %1448, label %1088, !llvm.loop !78

; <label>:1448                                    ; preds = %1441
  br label %1449

; <label>:1449                                    ; preds = %1448, %1032
  %1450 = phi float [ 0.000000e+00, %1032 ], [ %1442, %1448 ]
  %1451 = phi float [ 0.000000e+00, %1032 ], [ %1443, %1448 ]
  %1452 = phi float [ 0.000000e+00, %1032 ], [ %1444, %1448 ]
  %1453 = call float @dx.op.dot3.f32(i32 55, float %1450, float %1451, float %1452, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1454 = select i1 %131, float 0.000000e+00, float %1450
  %1455 = select i1 %131, float %1453, float %1451
  %1456 = select i1 %131, float 0.000000e+00, float %1452
  %1457 = fmul fast float %1454, %1011
  %1458 = fmul fast float %1455, %1012
  %1459 = fmul fast float %1456, %1013
  %1460 = call float @dx.op.binary.f32(i32 35, float %1457, float 0.000000e+00)  ; FMax(a,b)
  %1461 = call float @dx.op.binary.f32(i32 35, float %1458, float 0.000000e+00)  ; FMax(a,b)
  %1462 = call float @dx.op.binary.f32(i32 35, float %1459, float 0.000000e+00)  ; FMax(a,b)
  %1463 = fadd fast float %1460, %998
  %1464 = fadd fast float %1461, %999
  %1465 = fadd fast float %1462, %1000
  %1466 = fmul fast float %1463, %600
  %1467 = fmul fast float %1464, %600
  %1468 = fmul fast float %1465, %600
  %1469 = fadd fast float %717, -1.000000e+00
  %1470 = fadd fast float %718, -1.000000e+00
  %1471 = fadd fast float %719, -1.000000e+00
  %1472 = fmul fast float %1469, %600
  %1473 = fmul fast float %1470, %600
  %1474 = fmul fast float %1471, %600
  %1475 = fadd fast float %1472, 1.000000e+00
  %1476 = fadd fast float %1473, 1.000000e+00
  %1477 = fadd fast float %1474, 1.000000e+00
  %1478 = call float @dx.op.dot3.f32(i32 55, float %1475, float %1476, float %1477, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1479 = fsub fast float 1.000000e+00, %1478
  %1480 = fmul fast float %856, %837
  %1481 = fsub fast float 1.000000e+00, %837
  %1482 = call float @dx.op.unary.f32(i32 7, float %1481)  ; Saturate(value)
  %1483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1484 = extractvalue %dx.types.CBufRet.f32 %1483, 3
  %1485 = fmul fast float %1484, %1482
  %1486 = fadd fast float %1485, %1480
  %1487 = and i32 %151, 1048576
  %1488 = icmp eq i32 %1487, 0
  br i1 %1488, label %1573, label %1489, !dx.controlflow.hints !80

; <label>:1489                                    ; preds = %1449
  %1490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1491 = extractvalue %dx.types.CBufRet.f32 %1490, 2
  %1492 = extractvalue %dx.types.CBufRet.f32 %1490, 3
  %1493 = fmul fast float %1491, %61
  %1494 = fmul fast float %1492, %62
  %1495 = call float @dx.op.unary.f32(i32 7, float %1493)  ; Saturate(value)
  %1496 = call float @dx.op.unary.f32(i32 7, float %1494)  ; Saturate(value)
  %1497 = select i1 %880, i32 2, i32 0
  %1498 = or i32 %1497, 1
  %1499 = uitofp i32 %1498 to float
  %1500 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1495, float %1496, float %1499, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1501 = extractvalue %dx.types.ResRet.f32 %1500, 0
  %1502 = extractvalue %dx.types.ResRet.f32 %1500, 1
  %1503 = extractvalue %dx.types.ResRet.f32 %1500, 2
  %1504 = extractvalue %dx.types.ResRet.f32 %1500, 3
  %1505 = add nuw nsw i32 %1497, 2
  %1506 = uitofp i32 %1505 to float
  %1507 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1495, float %1496, float %1506, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1508 = extractvalue %dx.types.ResRet.f32 %1507, 0
  %1509 = extractvalue %dx.types.ResRet.f32 %1507, 1
  %1510 = extractvalue %dx.types.ResRet.f32 %1507, 2
  %1511 = extractvalue %dx.types.ResRet.f32 %1507, 3
  %1512 = call float @dx.op.binary.f32(i32 35, float %1502, float %1503)  ; FMax(a,b)
  %1513 = call float @dx.op.binary.f32(i32 35, float %1501, float %1512)  ; FMax(a,b)
  %1514 = call float @dx.op.binary.f32(i32 35, float %1513, float %1504)  ; FMax(a,b)
  %1515 = call float @dx.op.binary.f32(i32 36, float %1509, float %1510)  ; FMin(a,b)
  %1516 = call float @dx.op.binary.f32(i32 36, float %1508, float %1515)  ; FMin(a,b)
  %1517 = call float @dx.op.binary.f32(i32 36, float %1516, float %1511)  ; FMin(a,b)
  %1518 = fmul fast float %1514, 2.550000e+02
  %1519 = fadd fast float %1518, 0x3F70101020000000
  %1520 = fptoui float %1519 to i32
  %1521 = fmul fast float %1517, 2.550000e+02
  %1522 = fadd fast float %1521, 0x3F70101020000000
  %1523 = fptoui float %1522 to i32
  %1524 = icmp ult i32 %1520, %1523
  br i1 %1524, label %1525, label %1566

; <label>:1525                                    ; preds = %1489
  %1526 = fcmp fast ogt float %53, 9.843750e-01
  %1527 = select i1 %1526, float -4.000000e+00, float %1048
  %1528 = call float @dx.op.binary.f32(i32 35, float %1527, float 0.000000e+00)  ; FMax(a,b)
  %1529 = fadd fast float %1045, %1528
  %1530 = fmul fast float %1529, %1046
  %1531 = call float @dx.op.unary.f32(i32 23, float %1530)  ; Log(value)
  %1532 = fmul fast float %1047, %1531
  %1533 = fmul fast float %1532, %1055
  %1534 = call float @dx.op.unary.f32(i32 7, float %1533)  ; Saturate(value)
  %1535 = uitofp i32 %1520 to float
  %1536 = uitofp i32 %1523 to float
  %1537 = fadd fast float %1535, 5.000000e-01
  %1538 = fadd fast float %1536, 5.000000e-01
  %1539 = fmul fast float %1055, %1537
  %1540 = fmul fast float %1055, %1538
  %1541 = fadd fast float %1539, 0x3F0FFB4800000000
  %1542 = fadd fast float %1540, 0xBF0FFB4800000000
  %1543 = call float @dx.op.binary.f32(i32 35, float %1534, float %1541)  ; FMax(a,b)
  %1544 = call float @dx.op.binary.f32(i32 36, float %1543, float %1542)  ; FMin(a,b)
  %1545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1546 = extractvalue %dx.types.CBufRet.f32 %1545, 1
  %1547 = extractvalue %dx.types.CBufRet.f32 %1545, 2
  %1548 = extractvalue %dx.types.CBufRet.f32 %1545, 0
  %1549 = select i1 %880, float %1548, float 0.000000e+00
  %1550 = fmul fast float %1546, %1544
  %1551 = fadd fast float %1549, %1550
  %1552 = fadd fast float %1549, %1547
  %1553 = fsub fast float %1546, %1547
  %1554 = fadd fast float %1553, %1549
  %1555 = call float @dx.op.binary.f32(i32 35, float %1551, float %1552)  ; FMax(a,b)
  %1556 = call float @dx.op.binary.f32(i32 36, float %1555, float %1554)  ; FMin(a,b)
  %1557 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %25, float %1495, float %1496, float %1556, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1558 = extractvalue %dx.types.ResRet.f32 %1557, 0
  %1559 = extractvalue %dx.types.ResRet.f32 %1557, 1
  %1560 = extractvalue %dx.types.ResRet.f32 %1557, 2
  %1561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1562 = extractvalue %dx.types.CBufRet.f32 %1561, 1
  %1563 = fmul fast float %1562, %1558
  %1564 = fmul fast float %1562, %1559
  %1565 = fmul fast float %1562, %1560
  br label %1566

; <label>:1566                                    ; preds = %1525, %1489
  %1567 = phi float [ %1563, %1525 ], [ 1.000000e+00, %1489 ]
  %1568 = phi float [ %1564, %1525 ], [ 1.000000e+00, %1489 ]
  %1569 = phi float [ %1565, %1525 ], [ 1.000000e+00, %1489 ]
  %1570 = fmul fast float %1567, %1466
  %1571 = fmul fast float %1568, %1467
  %1572 = fmul fast float %1569, %1468
  br label %1573

; <label>:1573                                    ; preds = %1566, %1449
  %1574 = phi float [ %1570, %1566 ], [ %1466, %1449 ]
  %1575 = phi float [ %1571, %1566 ], [ %1467, %1449 ]
  %1576 = phi float [ %1572, %1566 ], [ %1468, %1449 ]
  %1577 = and i32 %151, 2097152
  %1578 = icmp eq i32 %1577, 0
  br i1 %1578, label %1583, label %1579, !dx.controlflow.hints !81

; <label>:1579                                    ; preds = %1573
  %1580 = add i32 %148, 192
  %1581 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1580, i32 undef)  ; BufferLoad(srv,index,wot)
  %1582 = extractvalue %dx.types.ResRet.f32 %1581, 0
  br label %1586

; <label>:1583                                    ; preds = %1573
  %1584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1585 = extractvalue %dx.types.CBufRet.f32 %1584, 3
  br label %1586

; <label>:1586                                    ; preds = %1583, %1579
  %1587 = phi float [ %1582, %1579 ], [ %1585, %1583 ]
  %1588 = fmul fast float %812, %600
  %1589 = fmul fast float %1588, %892
  %1590 = fmul fast float %1589, %1016
  %1591 = fmul fast float %813, %600
  %1592 = fmul fast float %1591, %893
  %1593 = fmul fast float %1592, %1016
  %1594 = fmul fast float %814, %600
  %1595 = fmul fast float %1594, %894
  %1596 = fmul fast float %1595, %1016
  br i1 %875, label %1597, label %1730

; <label>:1597                                    ; preds = %1586
  %1598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1599 = extractvalue %dx.types.CBufRet.f32 %1598, 2
  %1600 = extractvalue %dx.types.CBufRet.f32 %1598, 3
  %1601 = fmul fast float %1599, %61
  %1602 = fmul fast float %1600, %62
  %1603 = call float @dx.op.unary.f32(i32 7, float %1601)  ; Saturate(value)
  %1604 = call float @dx.op.unary.f32(i32 7, float %1602)  ; Saturate(value)
  %1605 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1603, float %1604, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1606 = extractvalue %dx.types.ResRet.f32 %1605, 0
  %1607 = extractvalue %dx.types.ResRet.f32 %1605, 1
  %1608 = extractvalue %dx.types.ResRet.f32 %1605, 2
  %1609 = extractvalue %dx.types.ResRet.f32 %1605, 3
  %1610 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1603, float %1604, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1611 = extractvalue %dx.types.ResRet.f32 %1610, 0
  %1612 = extractvalue %dx.types.ResRet.f32 %1610, 1
  %1613 = extractvalue %dx.types.ResRet.f32 %1610, 2
  %1614 = extractvalue %dx.types.ResRet.f32 %1610, 3
  %1615 = call float @dx.op.binary.f32(i32 35, float %1607, float %1608)  ; FMax(a,b)
  %1616 = call float @dx.op.binary.f32(i32 35, float %1606, float %1615)  ; FMax(a,b)
  %1617 = call float @dx.op.binary.f32(i32 35, float %1616, float %1609)  ; FMax(a,b)
  %1618 = call float @dx.op.binary.f32(i32 36, float %1612, float %1613)  ; FMin(a,b)
  %1619 = call float @dx.op.binary.f32(i32 36, float %1611, float %1618)  ; FMin(a,b)
  %1620 = call float @dx.op.binary.f32(i32 36, float %1619, float %1614)  ; FMin(a,b)
  %1621 = fmul fast float %1617, 2.550000e+02
  %1622 = fadd fast float %1621, 0x3F70101020000000
  %1623 = fptoui float %1622 to i32
  %1624 = fmul fast float %1620, 2.550000e+02
  %1625 = fadd fast float %1624, 0x3F70101020000000
  %1626 = fptoui float %1625 to i32
  %1627 = icmp ult i32 %1623, %1626
  br i1 %1627, label %1628, label %1672

; <label>:1628                                    ; preds = %1597
  %1629 = fcmp fast ogt float %53, 9.843750e-01
  %1630 = select i1 %1629, float -4.000000e+00, float %1048
  %1631 = call float @dx.op.binary.f32(i32 35, float %1630, float 0.000000e+00)  ; FMax(a,b)
  %1632 = fadd fast float %1045, %1631
  %1633 = fmul fast float %1632, %1046
  %1634 = call float @dx.op.unary.f32(i32 23, float %1633)  ; Log(value)
  %1635 = fmul fast float %1047, %1634
  %1636 = fmul fast float %1635, %1055
  %1637 = call float @dx.op.unary.f32(i32 7, float %1636)  ; Saturate(value)
  %1638 = uitofp i32 %1623 to float
  %1639 = uitofp i32 %1626 to float
  %1640 = fadd fast float %1638, 5.000000e-01
  %1641 = fadd fast float %1639, 5.000000e-01
  %1642 = fmul fast float %1055, %1640
  %1643 = fmul fast float %1055, %1641
  %1644 = fadd fast float %1642, 0x3F0FFB4800000000
  %1645 = fadd fast float %1643, 0xBF0FFB4800000000
  %1646 = call float @dx.op.binary.f32(i32 35, float %1637, float %1644)  ; FMax(a,b)
  %1647 = call float @dx.op.binary.f32(i32 36, float %1646, float %1645)  ; FMin(a,b)
  %1648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1649 = extractvalue %dx.types.CBufRet.f32 %1648, 1
  %1650 = extractvalue %dx.types.CBufRet.f32 %1648, 2
  %1651 = extractvalue %dx.types.CBufRet.f32 %1648, 0
  %1652 = fmul fast float %1649, %1647
  %1653 = fadd fast float %1651, %1652
  %1654 = fadd fast float %1651, %1650
  %1655 = fsub fast float %1649, %1650
  %1656 = fadd fast float %1655, %1651
  %1657 = call float @dx.op.binary.f32(i32 35, float %1653, float %1654)  ; FMax(a,b)
  %1658 = call float @dx.op.binary.f32(i32 36, float %1657, float %1656)  ; FMin(a,b)
  %1659 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %1603, float %1604, float %1658, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1660 = extractvalue %dx.types.ResRet.f32 %1659, 0
  %1661 = extractvalue %dx.types.ResRet.f32 %1659, 1
  %1662 = extractvalue %dx.types.ResRet.f32 %1659, 2
  %1663 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %1603, float %1604, float %1658, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1664 = extractvalue %dx.types.ResRet.f32 %1663, 0
  %1665 = extractvalue %dx.types.ResRet.f32 %1663, 1
  %1666 = extractvalue %dx.types.ResRet.f32 %1663, 2
  %1667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1668 = extractvalue %dx.types.CBufRet.f32 %1667, 1
  %1669 = fmul fast float %1668, %1664
  %1670 = fmul fast float %1668, %1665
  %1671 = fmul fast float %1668, %1666
  br label %1672

; <label>:1672                                    ; preds = %1628, %1597
  %1673 = phi float [ %1660, %1628 ], [ 1.000000e+00, %1597 ]
  %1674 = phi float [ %1661, %1628 ], [ 1.000000e+00, %1597 ]
  %1675 = phi float [ %1662, %1628 ], [ 1.000000e+00, %1597 ]
  %1676 = phi float [ %1669, %1628 ], [ 0.000000e+00, %1597 ]
  %1677 = phi float [ %1670, %1628 ], [ 0.000000e+00, %1597 ]
  %1678 = phi float [ %1671, %1628 ], [ 0.000000e+00, %1597 ]
  %1679 = fmul fast float %1676, %1479
  %1680 = fmul fast float %1677, %1479
  %1681 = fmul fast float %1678, %1479
  %1682 = call float @dx.op.dot3.f32(i32 55, float %1673, float %1674, float %1675, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1683 = call float @dx.op.dot3.f32(i32 55, float %1679, float %1680, float %1681, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1684 = select i1 %131, float %1682, float %1673
  %1685 = select i1 %131, float %1682, float %1674
  %1686 = select i1 %131, float 1.000000e+00, float %1675
  %1687 = select i1 %131, float %1683, float %1679
  %1688 = select i1 %131, float 0.000000e+00, float %1680
  %1689 = select i1 %131, float 0.000000e+00, float %1681
  %1690 = fmul fast float %1684, %1590
  %1691 = fmul fast float %1685, %1593
  %1692 = fmul fast float %1686, %1596
  %1693 = fadd fast float %1690, %1687
  %1694 = fadd fast float %1691, %1688
  %1695 = fadd fast float %1689, %1692
  %1696 = fmul fast float %1684, %1574
  %1697 = fmul fast float %1685, %1575
  %1698 = fmul fast float %1686, %1576
  %1699 = fmul fast float %66, %1599
  %1700 = fmul fast float %68, %1600
  %1701 = fsub fast float 1.000000e+00, %1699
  %1702 = fsub fast float 1.000000e+00, %1700
  %1703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1704 = extractvalue %dx.types.CBufRet.f32 %1703, 0
  %1705 = extractvalue %dx.types.CBufRet.f32 %1703, 1
  %1706 = extractvalue %dx.types.CBufRet.f32 %1703, 2
  %1707 = fmul fast float %1701, %1704
  %1708 = fmul fast float %1701, %1705
  %1709 = fmul fast float %1701, %1706
  %1710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1711 = extractvalue %dx.types.CBufRet.f32 %1710, 0
  %1712 = extractvalue %dx.types.CBufRet.f32 %1710, 1
  %1713 = extractvalue %dx.types.CBufRet.f32 %1710, 2
  %1714 = fmul fast float %1702, %1711
  %1715 = fmul fast float %1702, %1712
  %1716 = fmul fast float %1702, %1713
  %1717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1718 = extractvalue %dx.types.CBufRet.f32 %1717, 0
  %1719 = extractvalue %dx.types.CBufRet.f32 %1717, 1
  %1720 = extractvalue %dx.types.CBufRet.f32 %1717, 2
  %1721 = fadd fast float %1714, %1718
  %1722 = fadd fast float %1721, %1707
  %1723 = fadd fast float %1715, %1719
  %1724 = fadd fast float %1723, %1708
  %1725 = fadd fast float %1716, %1720
  %1726 = fadd fast float %1725, %1709
  %1727 = fmul fast float %1722, %872
  %1728 = fmul fast float %1724, %872
  %1729 = fmul fast float %1726, %872
  br label %1730

; <label>:1730                                    ; preds = %1672, %1586
  %1731 = phi float [ %1727, %1672 ], [ %96, %1586 ]
  %1732 = phi float [ %1728, %1672 ], [ %97, %1586 ]
  %1733 = phi float [ %1729, %1672 ], [ %98, %1586 ]
  %1734 = phi float [ %872, %1672 ], [ %54, %1586 ]
  %1735 = phi float [ %1693, %1672 ], [ %1590, %1586 ]
  %1736 = phi float [ %1694, %1672 ], [ %1593, %1586 ]
  %1737 = phi float [ %1695, %1672 ], [ %1596, %1586 ]
  %1738 = phi float [ %1696, %1672 ], [ %1574, %1586 ]
  %1739 = phi float [ %1697, %1672 ], [ %1575, %1586 ]
  %1740 = phi float [ %1698, %1672 ], [ %1576, %1586 ]
  %1741 = phi float [ %1673, %1672 ], [ 1.000000e+00, %1586 ]
  br i1 %880, label %2797, label %1742

; <label>:1742                                    ; preds = %1730
  %1743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1744 = extractvalue %dx.types.CBufRet.f32 %1743, 0
  %1745 = extractvalue %dx.types.CBufRet.f32 %1743, 1
  %1746 = extractvalue %dx.types.CBufRet.f32 %1743, 2
  %1747 = extractvalue %dx.types.CBufRet.f32 %1743, 3
  %1748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1749 = extractvalue %dx.types.CBufRet.f32 %1748, 0
  %1750 = extractvalue %dx.types.CBufRet.f32 %1748, 1
  %1751 = extractvalue %dx.types.CBufRet.f32 %1748, 2
  %1752 = extractvalue %dx.types.CBufRet.f32 %1748, 3
  %1753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1754 = extractvalue %dx.types.CBufRet.f32 %1753, 0
  %1755 = extractvalue %dx.types.CBufRet.f32 %1753, 1
  %1756 = extractvalue %dx.types.CBufRet.f32 %1753, 2
  %1757 = extractvalue %dx.types.CBufRet.f32 %1753, 3
  %1758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1759 = extractvalue %dx.types.CBufRet.f32 %1758, 0
  %1760 = extractvalue %dx.types.CBufRet.f32 %1758, 1
  %1761 = extractvalue %dx.types.CBufRet.f32 %1758, 2
  %1762 = extractvalue %dx.types.CBufRet.f32 %1758, 3
  %1763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1764 = extractvalue %dx.types.CBufRet.f32 %1763, 3
  %1765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1766 = extractvalue %dx.types.CBufRet.f32 %1765, 3
  %1767 = extractvalue %dx.types.CBufRet.f32 %1765, 0
  %1768 = extractvalue %dx.types.CBufRet.f32 %1765, 1
  %1769 = extractvalue %dx.types.CBufRet.f32 %1765, 2
  %1770 = fcmp fast olt float %1769, -5.000000e-01
  %1771 = call float @dx.op.dot3.f32(i32 55, float %1731, float %1732, float %1733, float %1731, float %1732, float %1733)  ; Dot3(ax,ay,az,bx,by,bz)
  %1772 = call float @dx.op.unary.f32(i32 25, float %1771)  ; Rsqrt(value)
  %1773 = fmul fast float %1772, %1771
  %1774 = fmul fast float %1772, %1731
  %1775 = fmul fast float %1772, %1732
  %1776 = fmul fast float %1772, %1733
  %1777 = fadd fast float %1773, %1747
  %1778 = call float @dx.op.dot3.f32(i32 55, float %1774, float %1775, float %1776, float %1744, float %1745, float %1746)  ; Dot3(ax,ay,az,bx,by,bz)
  %1779 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1780 = extractvalue %dx.types.CBufRet.i32 %1779, 1
  %1781 = and i32 %1780, 1
  %1782 = icmp ne i32 %1781, 0
  %1783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1784 = extractvalue %dx.types.CBufRet.f32 %1783, 2
  %1785 = fcmp fast ogt float %1784, 0.000000e+00
  %1786 = and i1 %1782, %1785
  br i1 %1786, label %1787, label %2193, !dx.controlflow.hints !82

; <label>:1787                                    ; preds = %1742
  %1788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1789 = extractvalue %dx.types.CBufRet.f32 %1788, 3
  %1790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1791 = extractvalue %dx.types.CBufRet.f32 %1790, 2
  %1792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1793 = extractvalue %dx.types.CBufRet.f32 %1792, 2
  %1794 = fsub fast float %1791, %1793
  %1795 = and i32 %1780, 2
  %1796 = extractvalue %dx.types.CBufRet.i32 %1779, 0
  %1797 = call i32 @dx.op.binary.i32(i32 40, i32 %1796, i32 3)  ; UMin(a,b)
  %1798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1799 = extractvalue %dx.types.CBufRet.f32 %1798, 0
  %1800 = extractvalue %dx.types.CBufRet.f32 %1798, 1
  %1801 = extractvalue %dx.types.CBufRet.f32 %1792, 0
  %1802 = extractvalue %dx.types.CBufRet.f32 %1792, 1
  %1803 = fsub fast float %1799, %1801
  %1804 = fsub fast float %1800, %1802
  %1805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1806 = extractvalue %dx.types.CBufRet.f32 %1805, 0
  %1807 = fcmp fast ogt float %1806, 0.000000e+00
  %1808 = fsub fast float -0.000000e+00, %1803
  %1809 = fsub fast float -0.000000e+00, %1804
  %1810 = call float @dx.op.dot2.f32(i32 54, float %1774, float %1775, float %1774, float %1775)  ; Dot2(ax,ay,bx,by)
  %1811 = call float @dx.op.dot2.f32(i32 54, float %1774, float %1775, float %1808, float %1809)  ; Dot2(ax,ay,bx,by)
  %1812 = fmul fast float %1811, 2.000000e+00
  %1813 = call float @dx.op.dot2.f32(i32 54, float %1808, float %1809, float %1808, float %1809)  ; Dot2(ax,ay,bx,by)
  %1814 = fmul fast float %1806, %1806
  %1815 = fsub fast float %1813, %1814
  %1816 = fmul fast float %1812, %1812
  %1817 = fmul fast float %1810, 4.000000e+00
  %1818 = fmul fast float %1817, %1815
  %1819 = fsub fast float %1816, %1818
  %1820 = fcmp fast ogt float %1819, 0.000000e+00
  br i1 %1820, label %1821, label %1836

; <label>:1821                                    ; preds = %1787
  %1822 = fcmp fast ogt float %1812, 0.000000e+00
  %1823 = call float @dx.op.unary.f32(i32 24, float %1819)  ; Sqrt(value)
  %1824 = fsub fast float -0.000000e+00, %1823
  %1825 = select i1 %1822, float %1823, float %1824
  %1826 = fadd fast float %1825, %1812
  %1827 = fmul float %1826, -5.000000e-01
  %1828 = fdiv fast float %1827, %1810
  %1829 = call float @dx.op.binary.f32(i32 35, float %1828, float 0.000000e+00)  ; FMax(a,b)
  %1830 = call float @dx.op.binary.f32(i32 36, float %1773, float %1829)  ; FMin(a,b)
  %1831 = fdiv fast float %1815, %1827
  %1832 = call float @dx.op.binary.f32(i32 35, float %1831, float 0.000000e+00)  ; FMax(a,b)
  %1833 = call float @dx.op.binary.f32(i32 36, float %1773, float %1832)  ; FMin(a,b)
  %1834 = call float @dx.op.binary.f32(i32 36, float %1830, float %1833)  ; FMin(a,b)
  %1835 = call float @dx.op.binary.f32(i32 35, float %1830, float %1833)  ; FMax(a,b)
  br label %1836

; <label>:1836                                    ; preds = %1821, %1787
  %1837 = phi float [ %1835, %1821 ], [ -1.000000e+00, %1787 ]
  %1838 = phi float [ %1834, %1821 ], [ -1.000000e+00, %1787 ]
  %1839 = phi i1 [ true, %1821 ], [ false, %1787 ]
  %1840 = and i1 %1807, %1839
  br i1 %1840, label %1841, label %1843

; <label>:1841                                    ; preds = %1836
  %1842 = fcmp fast oeq float %1838, %1837
  br i1 %1842, label %2146, label %1844

; <label>:1843                                    ; preds = %1836
  br i1 %1807, label %2146, label %1844

; <label>:1844                                    ; preds = %1843, %1841
  %1845 = phi float [ %1773, %1843 ], [ %1837, %1841 ]
  %1846 = phi float [ 0.000000e+00, %1843 ], [ %1838, %1841 ]
  %1847 = icmp ne i32 %1795, 0
  %1848 = fmul fast float %1845, %1776
  %1849 = fadd fast float %1848, %1789
  %1850 = fmul fast float %1849, %1845
  %1851 = select i1 %1847, float 0.000000e+00, float %1850
  %1852 = fcmp fast oeq float %1776, 0.000000e+00
  %1853 = fdiv fast float %1794, %1776
  %1854 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1853)  ; FMax(a,b)
  %1855 = select i1 %1852, float %1845, float %1854
  %1856 = call float @dx.op.binary.f32(i32 36, float %1845, float %1855)  ; FMin(a,b)
  %1857 = fcmp fast ogt float %1776, 0.000000e+00
  %1858 = fcmp fast olt float %1794, 0.000000e+00
  br i1 %1857, label %1859, label %1916

; <label>:1859                                    ; preds = %1844
  %1860 = icmp eq i32 %1795, 0
  br i1 %1858, label %1861, label %1905

; <label>:1861                                    ; preds = %1859
  %1862 = select i1 %1860, float %1845, float 0.000000e+00
  %1863 = fsub fast float -0.000000e+00, %1862
  %1864 = call float @dx.op.unary.f32(i32 6, float %1863)  ; FAbs(value)
  %1865 = fmul fast float %1862, %1776
  %1866 = fadd fast float %1865, %1789
  %1867 = fmul fast float %1864, %1866
  %1868 = fsub fast float %1851, %1867
  %1869 = fsub fast float %1845, %1864
  %1870 = select i1 %1860, float %1869, float 0.000000e+00
  %1871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1872 = extractvalue %dx.types.CBufRet.f32 %1871, 0
  %1873 = extractvalue %dx.types.CBufRet.f32 %1871, 1
  %1874 = extractvalue %dx.types.CBufRet.f32 %1871, 2
  %1875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1876 = extractvalue %dx.types.CBufRet.f32 %1875, 0
  %1877 = extractvalue %dx.types.CBufRet.f32 %1875, 1
  %1878 = extractvalue %dx.types.CBufRet.f32 %1875, 2
  %1879 = extractvalue %dx.types.CBufRet.f32 %1875, 3
  %1880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1881 = extractvalue %dx.types.CBufRet.f32 %1880, 3
  %1882 = call float @dx.op.binary.f32(i32 36, float %1868, float %1881)  ; FMin(a,b)
  %1883 = fmul fast float %1879, %1870
  %1884 = call float @dx.op.unary.f32(i32 7, float %1883)  ; Saturate(value)
  %1885 = fsub fast float %1876, %1872
  %1886 = fsub fast float %1877, %1873
  %1887 = fsub fast float %1878, %1874
  %1888 = fmul fast float %1884, %1885
  %1889 = fmul fast float %1884, %1886
  %1890 = fmul fast float %1884, %1887
  %1891 = fadd fast float %1888, %1872
  %1892 = fadd fast float %1889, %1873
  %1893 = fadd fast float %1890, %1874
  %1894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1895 = extractvalue %dx.types.CBufRet.f32 %1894, 0
  %1896 = extractvalue %dx.types.CBufRet.f32 %1894, 1
  %1897 = fadd fast float %1896, %1895
  %1898 = call float @dx.op.unary.f32(i32 7, float %1897)  ; Saturate(value)
  %1899 = extractvalue %dx.types.CBufRet.f32 %1894, 2
  %1900 = extractvalue %dx.types.CBufRet.f32 %1894, 3
  %1901 = fadd fast float %1900, %1899
  %1902 = call float @dx.op.unary.f32(i32 7, float %1901)  ; Saturate(value)
  %1903 = fmul fast float %1898, %1882
  %1904 = fmul fast float %1903, %1902
  br label %2146

; <label>:1905                                    ; preds = %1859
  br i1 %1860, label %1906, label %1927

; <label>:1906                                    ; preds = %1905
  %1907 = call float @dx.op.binary.f32(i32 36, float %1856, float %1846)  ; FMin(a,b)
  %1908 = fsub fast float %1856, %1907
  %1909 = fsub fast float %1908, %1845
  %1910 = call float @dx.op.unary.f32(i32 6, float %1909)  ; FAbs(value)
  %1911 = fadd fast float %1908, %1845
  %1912 = fmul fast float %1911, %1776
  %1913 = fadd fast float %1912, %1789
  %1914 = fmul fast float %1913, %1910
  %1915 = fsub fast float %1851, %1914
  br label %1927

; <label>:1916                                    ; preds = %1844
  br i1 %1858, label %1917, label %1927

; <label>:1917                                    ; preds = %1916
  %1918 = call float @dx.op.binary.f32(i32 35, float %1846, float %1856)  ; FMax(a,b)
  %1919 = icmp eq i32 %1795, 0
  %1920 = select i1 %1919, float %1856, float 0.000000e+00
  %1921 = fsub fast float -0.000000e+00, %1920
  %1922 = call float @dx.op.unary.f32(i32 6, float %1921)  ; FAbs(value)
  %1923 = fmul fast float %1920, %1776
  %1924 = fadd fast float %1923, %1789
  %1925 = fmul fast float %1922, %1924
  %1926 = fsub fast float %1851, %1925
  br label %1927

; <label>:1927                                    ; preds = %1917, %1916, %1906, %1905
  %1928 = phi float [ %1846, %1905 ], [ %1846, %1906 ], [ %1918, %1917 ], [ %1846, %1916 ]
  %1929 = phi float [ 0.000000e+00, %1905 ], [ %1910, %1906 ], [ %1922, %1917 ], [ 0.000000e+00, %1916 ]
  %1930 = phi float [ %1851, %1905 ], [ %1915, %1906 ], [ %1926, %1917 ], [ %1851, %1916 ]
  %1931 = phi float [ %1856, %1905 ], [ %1856, %1906 ], [ %1845, %1917 ], [ %1845, %1916 ]
  %1932 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 0
  store float -1.000000e+00, float* %1932, align 4, !tbaa !83, !noalias !87
  %1933 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 1
  store float -1.000000e+00, float* %1933, align 4, !tbaa !83, !noalias !87
  %1934 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 2
  store float -1.000000e+00, float* %1934, align 4, !tbaa !83, !noalias !87
  %1935 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 0
  store float -1.000000e+00, float* %1935, align 4, !tbaa !83, !noalias !87
  %1936 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 1
  store float -1.000000e+00, float* %1936, align 4, !tbaa !83, !noalias !87
  %1937 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 2
  store float -1.000000e+00, float* %1937, align 4, !tbaa !83, !noalias !87
  %1938 = icmp sgt i32 %1797, 0
  br i1 %1938, label %1939, label %2000

; <label>:1939                                    ; preds = %1927
  br label %1940

; <label>:1940                                    ; preds = %1989, %1939
  %1941 = phi i32 [ %1990, %1989 ], [ 0, %1939 ]
  %1942 = phi i32 [ %1991, %1989 ], [ 0, %1939 ]
  %1943 = add nuw i32 %1942, 171
  %1944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 %1943)  ; CBufferLoadLegacy(handle,regIndex)
  %1945 = extractvalue %dx.types.CBufRet.f32 %1944, 0
  %1946 = extractvalue %dx.types.CBufRet.f32 %1944, 1
  %1947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1948 = extractvalue %dx.types.CBufRet.f32 %1947, 0
  %1949 = extractvalue %dx.types.CBufRet.f32 %1947, 1
  %1950 = fsub fast float %1945, %1948
  %1951 = fsub fast float %1946, %1949
  %1952 = extractvalue %dx.types.CBufRet.f32 %1944, 2
  %1953 = fsub fast float -0.000000e+00, %1950
  %1954 = fsub fast float -0.000000e+00, %1951
  %1955 = call float @dx.op.dot2.f32(i32 54, float %1774, float %1775, float %1953, float %1954)  ; Dot2(ax,ay,bx,by)
  %1956 = fmul fast float %1955, 2.000000e+00
  %1957 = call float @dx.op.dot2.f32(i32 54, float %1953, float %1954, float %1953, float %1954)  ; Dot2(ax,ay,bx,by)
  %1958 = fmul fast float %1952, %1952
  %1959 = fsub fast float %1957, %1958
  %1960 = fmul fast float %1956, %1956
  %1961 = fmul fast float %1817, %1959
  %1962 = fsub fast float %1960, %1961
  %1963 = fcmp fast ogt float %1962, 0.000000e+00
  br i1 %1963, label %1964, label %1979

; <label>:1964                                    ; preds = %1940
  %1965 = fcmp fast ogt float %1956, 0.000000e+00
  %1966 = call float @dx.op.unary.f32(i32 24, float %1962)  ; Sqrt(value)
  %1967 = fsub fast float -0.000000e+00, %1966
  %1968 = select i1 %1965, float %1966, float %1967
  %1969 = fadd fast float %1968, %1956
  %1970 = fmul float %1969, -5.000000e-01
  %1971 = fdiv fast float %1970, %1810
  %1972 = call float @dx.op.binary.f32(i32 35, float %1971, float 0.000000e+00)  ; FMax(a,b)
  %1973 = call float @dx.op.binary.f32(i32 36, float %1845, float %1972)  ; FMin(a,b)
  %1974 = fdiv fast float %1959, %1970
  %1975 = call float @dx.op.binary.f32(i32 35, float %1974, float 0.000000e+00)  ; FMax(a,b)
  %1976 = call float @dx.op.binary.f32(i32 36, float %1845, float %1975)  ; FMin(a,b)
  %1977 = call float @dx.op.binary.f32(i32 36, float %1973, float %1976)  ; FMin(a,b)
  %1978 = call float @dx.op.binary.f32(i32 35, float %1973, float %1976)  ; FMax(a,b)
  br label %1979

; <label>:1979                                    ; preds = %1964, %1940
  %1980 = phi float [ %1978, %1964 ], [ -1.000000e+00, %1940 ]
  %1981 = phi float [ %1977, %1964 ], [ -1.000000e+00, %1940 ]
  %1982 = phi i1 [ true, %1964 ], [ false, %1940 ]
  br i1 %1982, label %1983, label %1989

; <label>:1983                                    ; preds = %1979
  %1984 = call float @dx.op.binary.f32(i32 35, float %1928, float %1981)  ; FMax(a,b)
  %1985 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 %1942
  store float %1984, float* %1985, align 4, !tbaa !83, !noalias !87
  %1986 = call float @dx.op.binary.f32(i32 35, float %1928, float %1980)  ; FMax(a,b)
  %1987 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 %1942
  store float %1986, float* %1987, align 4, !tbaa !83, !noalias !87
  %1988 = add nsw i32 %1941, 1
  br label %1989

; <label>:1989                                    ; preds = %1983, %1979
  %1990 = phi i32 [ %1988, %1983 ], [ %1941, %1979 ]
  %1991 = add nuw nsw i32 %1942, 1
  %1992 = icmp eq i32 %1991, %1797
  br i1 %1992, label %1993, label %1940

; <label>:1993                                    ; preds = %1989
  %1994 = load float, float* %1934, align 4, !tbaa !83, !alias.scope !103, !noalias !106
  %1995 = load float, float* %1933, align 4, !tbaa !83, !alias.scope !109, !noalias !110
  %1996 = load float, float* %1932, align 4, !tbaa !83, !alias.scope !111, !noalias !112
  %1997 = load float, float* %1937, align 4, !tbaa !83, !alias.scope !113, !noalias !116
  %1998 = load float, float* %1936, align 4, !tbaa !83, !alias.scope !119, !noalias !120
  %1999 = load float, float* %1935, align 4, !tbaa !83, !alias.scope !121, !noalias !122
  br label %2000

; <label>:2000                                    ; preds = %1993, %1927
  %2001 = phi float [ -1.000000e+00, %1927 ], [ %1999, %1993 ]
  %2002 = phi float [ -1.000000e+00, %1927 ], [ %1998, %1993 ]
  %2003 = phi float [ -1.000000e+00, %1927 ], [ %1997, %1993 ]
  %2004 = phi float [ -1.000000e+00, %1927 ], [ %1996, %1993 ]
  %2005 = phi float [ -1.000000e+00, %1927 ], [ %1995, %1993 ]
  %2006 = phi float [ -1.000000e+00, %1927 ], [ %1994, %1993 ]
  %2007 = phi i32 [ 0, %1927 ], [ %1990, %1993 ]
  %2008 = call float @dx.op.binary.f32(i32 36, float %2005, float %2006)  ; FMin(a,b)
  %2009 = call float @dx.op.binary.f32(i32 36, float %2004, float %2008)  ; FMin(a,b)
  %2010 = call float @dx.op.binary.f32(i32 35, float %2004, float %2005)  ; FMax(a,b)
  %2011 = call float @dx.op.binary.f32(i32 36, float %2010, float %2006)  ; FMin(a,b)
  %2012 = call float @dx.op.binary.f32(i32 36, float %2004, float %2005)  ; FMin(a,b)
  %2013 = call float @dx.op.binary.f32(i32 35, float %2012, float %2011)  ; FMax(a,b)
  %2014 = call float @dx.op.binary.f32(i32 35, float %2005, float %2006)  ; FMax(a,b)
  %2015 = call float @dx.op.binary.f32(i32 35, float %2004, float %2014)  ; FMax(a,b)
  store float %2009, float* %1932, align 4, !tbaa !83, !alias.scope !111, !noalias !112
  store float %2013, float* %1933, align 4, !tbaa !83, !alias.scope !109, !noalias !110
  store float %2015, float* %1934, align 4, !tbaa !83, !alias.scope !103, !noalias !106
  %2016 = call float @dx.op.binary.f32(i32 36, float %2002, float %2003)  ; FMin(a,b)
  %2017 = call float @dx.op.binary.f32(i32 36, float %2001, float %2016)  ; FMin(a,b)
  %2018 = call float @dx.op.binary.f32(i32 35, float %2001, float %2002)  ; FMax(a,b)
  %2019 = call float @dx.op.binary.f32(i32 36, float %2018, float %2003)  ; FMin(a,b)
  %2020 = call float @dx.op.binary.f32(i32 36, float %2001, float %2002)  ; FMin(a,b)
  %2021 = call float @dx.op.binary.f32(i32 35, float %2020, float %2019)  ; FMax(a,b)
  %2022 = call float @dx.op.binary.f32(i32 35, float %2002, float %2003)  ; FMax(a,b)
  %2023 = call float @dx.op.binary.f32(i32 35, float %2001, float %2022)  ; FMax(a,b)
  store float %2017, float* %1935, align 4, !tbaa !83, !alias.scope !121, !noalias !122
  store float %2021, float* %1936, align 4, !tbaa !83, !alias.scope !119, !noalias !120
  store float %2023, float* %1937, align 4, !tbaa !83, !alias.scope !113, !noalias !116
  %2024 = sub nsw i32 3, %2007
  %2025 = icmp sgt i32 %2024, 2
  br i1 %2025, label %2026, label %2064

; <label>:2026                                    ; preds = %2000
  %2027 = icmp eq i32 %1795, 0
  %2028 = fsub fast float %1845, %1929
  %2029 = select i1 %2027, float %2028, float %1929
  %2030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2031 = extractvalue %dx.types.CBufRet.f32 %2030, 0
  %2032 = extractvalue %dx.types.CBufRet.f32 %2030, 1
  %2033 = extractvalue %dx.types.CBufRet.f32 %2030, 2
  %2034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2035 = extractvalue %dx.types.CBufRet.f32 %2034, 0
  %2036 = extractvalue %dx.types.CBufRet.f32 %2034, 1
  %2037 = extractvalue %dx.types.CBufRet.f32 %2034, 2
  %2038 = extractvalue %dx.types.CBufRet.f32 %2034, 3
  %2039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2040 = extractvalue %dx.types.CBufRet.f32 %2039, 3
  %2041 = call float @dx.op.binary.f32(i32 36, float %1930, float %2040)  ; FMin(a,b)
  %2042 = fmul fast float %2038, %2029
  %2043 = call float @dx.op.unary.f32(i32 7, float %2042)  ; Saturate(value)
  %2044 = fsub fast float %2035, %2031
  %2045 = fsub fast float %2036, %2032
  %2046 = fsub fast float %2037, %2033
  %2047 = fmul fast float %2043, %2044
  %2048 = fmul fast float %2043, %2045
  %2049 = fmul fast float %2043, %2046
  %2050 = fadd fast float %2047, %2031
  %2051 = fadd fast float %2048, %2032
  %2052 = fadd fast float %2049, %2033
  %2053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2054 = extractvalue %dx.types.CBufRet.f32 %2053, 0
  %2055 = extractvalue %dx.types.CBufRet.f32 %2053, 1
  %2056 = fadd fast float %2055, %2054
  %2057 = call float @dx.op.unary.f32(i32 7, float %2056)  ; Saturate(value)
  %2058 = extractvalue %dx.types.CBufRet.f32 %2053, 2
  %2059 = extractvalue %dx.types.CBufRet.f32 %2053, 3
  %2060 = fadd fast float %2059, %2058
  %2061 = call float @dx.op.unary.f32(i32 7, float %2060)  ; Saturate(value)
  %2062 = fmul fast float %2057, %2041
  %2063 = fmul fast float %2062, %2061
  br label %2146

; <label>:2064                                    ; preds = %2000
  %2065 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 %2024
  %2066 = load float, float* %2065, align 4, !tbaa !83, !noalias !87
  %2067 = fcmp fast olt float %2066, %1931
  %2068 = icmp sgt i32 %2007, 0
  %2069 = and i1 %2068, %2067
  br i1 %2069, label %2070, label %2107

; <label>:2070                                    ; preds = %2064
  br label %2071

; <label>:2071                                    ; preds = %2100, %2070
  %2072 = phi float [ %2101, %2100 ], [ %1929, %2070 ]
  %2073 = phi float [ %2102, %2100 ], [ %1930, %2070 ]
  %2074 = phi float [ %2082, %2100 ], [ %2066, %2070 ]
  %2075 = phi i32 [ %2079, %2100 ], [ %2024, %2070 ]
  %2076 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 %2075
  %2077 = load float, float* %2076, align 4, !tbaa !83, !noalias !87
  %2078 = icmp slt i32 %2075, 2
  %2079 = add nsw i32 %2075, 1
  %2080 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 %2079
  %2081 = load float, float* %2080, align 4, !tbaa !83, !noalias !87
  %2082 = select i1 %2078, float %2081, float %1845
  %2083 = call float @dx.op.binary.f32(i32 36, float %2082, float %2077)  ; FMin(a,b)
  %2084 = call float @dx.op.binary.f32(i32 36, float %1931, float %2083)  ; FMin(a,b)
  %2085 = icmp eq i32 %1795, 0
  %2086 = fadd fast float %2084, %2074
  %2087 = fmul fast float %2086, %1776
  %2088 = fadd fast float %2087, %1789
  br i1 %2085, label %2094, label %2089

; <label>:2089                                    ; preds = %2071
  %2090 = fsub fast float %2084, %2074
  %2091 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2090)  ; FMax(a,b)
  %2092 = fmul fast float %2091, %2088
  %2093 = fadd fast float %2092, %2073
  br label %2100

; <label>:2094                                    ; preds = %2071
  %2095 = fsub fast float %2074, %2084
  %2096 = call float @dx.op.unary.f32(i32 6, float %2095)  ; FAbs(value)
  %2097 = fadd fast float %2096, %2072
  %2098 = fmul fast float %2096, %2088
  %2099 = fsub fast float %2073, %2098
  br label %2100

; <label>:2100                                    ; preds = %2094, %2089
  %2101 = phi float [ %2091, %2089 ], [ %2097, %2094 ]
  %2102 = phi float [ %2093, %2089 ], [ %2099, %2094 ]
  %2103 = fcmp fast olt float %2082, %1931
  %2104 = icmp slt i32 %2079, 3
  %2105 = and i1 %2104, %2103
  br i1 %2105, label %2071, label %2106

; <label>:2106                                    ; preds = %2100
  br label %2107

; <label>:2107                                    ; preds = %2106, %2064
  %2108 = phi float [ %1929, %2064 ], [ %2101, %2106 ]
  %2109 = phi float [ %1930, %2064 ], [ %2102, %2106 ]
  %2110 = fsub fast float %1845, %2108
  %2111 = select i1 %1847, float %2108, float %2110
  %2112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2113 = extractvalue %dx.types.CBufRet.f32 %2112, 0
  %2114 = extractvalue %dx.types.CBufRet.f32 %2112, 1
  %2115 = extractvalue %dx.types.CBufRet.f32 %2112, 2
  %2116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2117 = extractvalue %dx.types.CBufRet.f32 %2116, 0
  %2118 = extractvalue %dx.types.CBufRet.f32 %2116, 1
  %2119 = extractvalue %dx.types.CBufRet.f32 %2116, 2
  %2120 = extractvalue %dx.types.CBufRet.f32 %2116, 3
  %2121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2122 = extractvalue %dx.types.CBufRet.f32 %2121, 3
  %2123 = call float @dx.op.binary.f32(i32 36, float %2109, float %2122)  ; FMin(a,b)
  %2124 = fmul fast float %2120, %2111
  %2125 = call float @dx.op.unary.f32(i32 7, float %2124)  ; Saturate(value)
  %2126 = fsub fast float %2117, %2113
  %2127 = fsub fast float %2118, %2114
  %2128 = fsub fast float %2119, %2115
  %2129 = fmul fast float %2125, %2126
  %2130 = fmul fast float %2125, %2127
  %2131 = fmul fast float %2125, %2128
  %2132 = fadd fast float %2129, %2113
  %2133 = fadd fast float %2130, %2114
  %2134 = fadd fast float %2131, %2115
  %2135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2136 = extractvalue %dx.types.CBufRet.f32 %2135, 0
  %2137 = extractvalue %dx.types.CBufRet.f32 %2135, 1
  %2138 = fadd fast float %2137, %2136
  %2139 = call float @dx.op.unary.f32(i32 7, float %2138)  ; Saturate(value)
  %2140 = extractvalue %dx.types.CBufRet.f32 %2135, 2
  %2141 = extractvalue %dx.types.CBufRet.f32 %2135, 3
  %2142 = fadd fast float %2141, %2140
  %2143 = call float @dx.op.unary.f32(i32 7, float %2142)  ; Saturate(value)
  %2144 = fmul fast float %2139, %2123
  %2145 = fmul fast float %2144, %2143
  br label %2146

; <label>:2146                                    ; preds = %2107, %2026, %1861, %1843, %1841
  %2147 = phi float [ %1870, %1861 ], [ %2029, %2026 ], [ %2111, %2107 ], [ 0.000000e+00, %1841 ], [ 0.000000e+00, %1843 ]
  %2148 = phi float [ %1904, %1861 ], [ %2063, %2026 ], [ %2145, %2107 ], [ 0.000000e+00, %1841 ], [ 0.000000e+00, %1843 ]
  %2149 = phi float [ %1891, %1861 ], [ %2050, %2026 ], [ %2132, %2107 ], [ 0.000000e+00, %1841 ], [ 0.000000e+00, %1843 ]
  %2150 = phi float [ %1892, %1861 ], [ %2051, %2026 ], [ %2133, %2107 ], [ 0.000000e+00, %1841 ], [ 0.000000e+00, %1843 ]
  %2151 = phi float [ %1893, %1861 ], [ %2052, %2026 ], [ %2134, %2107 ], [ 0.000000e+00, %1841 ], [ 0.000000e+00, %1843 ]
  %2152 = fmul fast float %1784, %2148
  %2153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2154 = extractvalue %dx.types.CBufRet.f32 %2153, 2
  %2155 = fsub fast float %1791, %2154
  %2156 = fcmp fast olt float %2152, -2.000000e+01
  %2157 = call float @dx.op.unary.f32(i32 21, float %2152)  ; Exp(value)
  %2158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2159 = extractvalue %dx.types.CBufRet.f32 %2158, 2
  %2160 = extractvalue %dx.types.CBufRet.f32 %2158, 3
  %2161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2162 = extractvalue %dx.types.CBufRet.f32 %2161, 2
  %2163 = fmul fast float %2160, %2155
  %2164 = call float @dx.op.unary.f32(i32 7, float %2163)  ; Saturate(value)
  %2165 = fsub fast float 1.000000e+00, %2164
  %2166 = fmul fast float %1776, 5.000000e-01
  %2167 = fadd fast float %2166, 5.000000e-01
  %2168 = call float @dx.op.unary.f32(i32 7, float %2167)  ; Saturate(value)
  %2169 = fsub fast float 1.000000e+00, %2168
  %2170 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2165)  ; FMax(a,b)
  %2171 = fdiv fast float %2169, %2170
  %2172 = fsub fast float %2155, %1733
  %2173 = call float @dx.op.unary.f32(i32 6, float %2172)  ; FAbs(value)
  %2174 = fmul fast float %2173, %2159
  %2175 = call float @dx.op.unary.f32(i32 7, float %2171)  ; Saturate(value)
  %2176 = fsub fast float 1.000000e+00, %2174
  %2177 = fmul fast float %2176, %2175
  %2178 = fadd fast float %2177, %2174
  %2179 = fmul fast float %2162, %2155
  %2180 = call float @dx.op.unary.f32(i32 7, float %2179)  ; Saturate(value)
  %2181 = fsub fast float 1.000000e+00, %2178
  %2182 = fmul fast float %2181, %2180
  %2183 = fadd fast float %2182, %2178
  %2184 = call float @dx.op.unary.f32(i32 7, float %2183)  ; Saturate(value)
  %2185 = fadd fast float %2157, -1.000000e+00
  %2186 = select i1 %2156, float -1.000000e+00, float %2185
  %2187 = fmul fast float %2184, %2186
  %2188 = fadd fast float %2187, 1.000000e+00
  %2189 = fsub fast float -0.000000e+00, %2187
  %2190 = fmul fast float %2149, %2189
  %2191 = fmul fast float %2150, %2189
  %2192 = fmul fast float %2151, %2189
  br label %2193

; <label>:2193                                    ; preds = %2146, %1742
  %2194 = phi float [ %2147, %2146 ], [ 0.000000e+00, %1742 ]
  %2195 = phi float [ %2188, %2146 ], [ 1.000000e+00, %1742 ]
  %2196 = phi float [ %2190, %2146 ], [ 0.000000e+00, %1742 ]
  %2197 = phi float [ %2191, %2146 ], [ 0.000000e+00, %1742 ]
  %2198 = phi float [ %2192, %2146 ], [ 0.000000e+00, %1742 ]
  %2199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2200 = extractvalue %dx.types.CBufRet.f32 %2199, 1
  %2201 = fsub fast float 1.000000e+00, %2195
  %2202 = fmul fast float %2201, %1777
  %2203 = fmul fast float %2202, %2200
  %2204 = fsub fast float %1777, %2203
  br i1 %1770, label %2205, label %2234, !dx.controlflow.hints !123

; <label>:2205                                    ; preds = %2193
  %2206 = fmul fast float %1778, %1767
  %2207 = fadd fast float %2206, %1768
  %2208 = call float @dx.op.unary.f32(i32 7, float %2207)  ; Saturate(value)
  %2209 = fmul fast float %1749, %2204
  %2210 = fsub fast float -0.000000e+00, %2209
  %2211 = fmul fast float %1750, %2204
  %2212 = fsub fast float -0.000000e+00, %2211
  %2213 = call float @dx.op.unary.f32(i32 21, float %2210)  ; Exp(value)
  %2214 = call float @dx.op.unary.f32(i32 21, float %2212)  ; Exp(value)
  %2215 = call float @dx.op.binary.f32(i32 35, float %1757, float %2213)  ; FMax(a,b)
  %2216 = call float @dx.op.binary.f32(i32 35, float %1757, float %2214)  ; FMax(a,b)
  %2217 = fsub fast float %2216, %2215
  %2218 = fmul fast float %2217, %2208
  %2219 = fadd fast float %2218, %2215
  %2220 = call float @dx.op.unary.f32(i32 7, float %2219)  ; Saturate(value)
  %2221 = fsub fast float %1754, %1759
  %2222 = fsub fast float %1755, %1760
  %2223 = fsub fast float %1756, %1761
  %2224 = fmul fast float %2208, %2221
  %2225 = fmul fast float %2208, %2222
  %2226 = fmul fast float %2208, %2223
  %2227 = fadd fast float %2224, %1759
  %2228 = fadd fast float %2225, %1760
  %2229 = fadd fast float %2226, %1761
  %2230 = fsub fast float 1.000000e+00, %2220
  %2231 = fmul fast float %2230, %2227
  %2232 = fmul fast float %2230, %2228
  %2233 = fmul fast float %2230, %2229
  br label %2293

; <label>:2234                                    ; preds = %2193
  %2235 = fmul fast float %2204, %1766
  %2236 = call float @dx.op.unary.f32(i32 7, float %2235)  ; Saturate(value)
  %2237 = fsub fast float 2.000000e+00, %2236
  %2238 = fmul fast float %2236, 9.921875e-01
  %2239 = fmul fast float %2238, %2237
  %2240 = fadd fast float %2239, 3.906250e-03
  %2241 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %26, float %2240, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2242 = extractvalue %dx.types.ResRet.f32 %2241, 0
  %2243 = fsub fast float %2236, %2242
  %2244 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2243)  ; FMax(a,b)
  %2245 = fmul fast float %1752, %1733
  %2246 = call float @dx.op.unary.f32(i32 6, float %2245)  ; FAbs(value)
  %2247 = fcmp fast ogt float %2246, 0x3EB0C6F7A0000000
  br i1 %2247, label %2248, label %2254, !dx.controlflow.hints !124

; <label>:2248                                    ; preds = %2234
  %2249 = fmul fast float %2245, 0xBFF7154760000000
  %2250 = call float @dx.op.unary.f32(i32 21, float %2249)  ; Exp(value)
  %2251 = fsub fast float 1.000000e+00, %2250
  %2252 = fdiv fast float %2251, %2245
  %2253 = fmul fast float %2252, %1762
  br label %2254

; <label>:2254                                    ; preds = %2248, %2234
  %2255 = phi float [ %2253, %2248 ], [ %1762, %2234 ]
  %2256 = fadd fast float %2255, %1764
  %2257 = fmul fast float %2256, %2244
  %2258 = fmul fast float %1749, %2257
  %2259 = fsub fast float -0.000000e+00, %2258
  %2260 = fmul fast float %1750, %2257
  %2261 = fsub fast float -0.000000e+00, %2260
  %2262 = fmul fast float %1751, %2257
  %2263 = fsub fast float -0.000000e+00, %2262
  %2264 = call float @dx.op.unary.f32(i32 21, float %2259)  ; Exp(value)
  %2265 = call float @dx.op.unary.f32(i32 21, float %2261)  ; Exp(value)
  %2266 = call float @dx.op.unary.f32(i32 21, float %2263)  ; Exp(value)
  %2267 = fmul fast float %1778, %1778
  %2268 = fadd fast float %2267, 1.000000e+00
  %2269 = fmul fast float %2268, 0x3FAE8EC8A0000000
  %2270 = fmul fast float %2269, %1759
  %2271 = fmul fast float %2269, %1760
  %2272 = fmul fast float %2269, %1761
  %2273 = fmul fast float %1778, %1757
  %2274 = fsub fast float 1.000000e+00, %2273
  %2275 = fmul fast float %1757, %1757
  %2276 = fsub fast float 1.000000e+00, %2275
  %2277 = fmul fast float %2276, 0x3FB45F3060000000
  %2278 = fmul fast float %2274, %2274
  %2279 = fdiv fast float 1.000000e+00, %2278
  %2280 = fmul fast float %2277, %2279
  %2281 = fmul fast float %2280, %1754
  %2282 = fmul fast float %2280, %1755
  %2283 = fmul fast float %2280, %1756
  %2284 = fadd fast float %2281, %2270
  %2285 = fadd fast float %2282, %2271
  %2286 = fadd fast float %2283, %2272
  %2287 = fsub fast float 1.000000e+00, %2264
  %2288 = fsub fast float 1.000000e+00, %2265
  %2289 = fsub fast float 1.000000e+00, %2266
  %2290 = fmul fast float %2284, %2287
  %2291 = fmul fast float %2285, %2288
  %2292 = fmul fast float %2286, %2289
  br label %2293

; <label>:2293                                    ; preds = %2254, %2205
  %2294 = phi float [ %2231, %2205 ], [ %2290, %2254 ]
  %2295 = phi float [ %2232, %2205 ], [ %2291, %2254 ]
  %2296 = phi float [ %2233, %2205 ], [ %2292, %2254 ]
  %2297 = phi float [ %2220, %2205 ], [ %2264, %2254 ]
  %2298 = phi float [ %2220, %2205 ], [ %2265, %2254 ]
  %2299 = phi float [ %2220, %2205 ], [ %2266, %2254 ]
  br i1 %1786, label %2300, label %2498, !dx.controlflow.hints !125

; <label>:2300                                    ; preds = %2293
  %2301 = extractvalue %dx.types.CBufRet.f32 %2199, 0
  %2302 = fmul fast float %2301, %2201
  %2303 = fsub fast float %2196, %2294
  %2304 = fsub fast float %2197, %2295
  %2305 = fsub fast float %2198, %2296
  %2306 = fmul fast float %2302, %2303
  %2307 = fmul fast float %2302, %2304
  %2308 = fmul fast float %2302, %2305
  %2309 = fadd fast float %2306, %2294
  %2310 = fadd fast float %2307, %2295
  %2311 = fadd fast float %2308, %2296
  %2312 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2297)  ; FMax(a,b)
  %2313 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2298)  ; FMax(a,b)
  %2314 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2299)  ; FMax(a,b)
  %2315 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2195)  ; FMax(a,b)
  %2316 = call float @dx.op.binary.f32(i32 35, float %2194, float %2204)  ; FMax(a,b)
  %2317 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2316)  ; FMax(a,b)
  %2318 = fdiv fast float %2194, %2317
  %2319 = call float @dx.op.unary.f32(i32 7, float %2318)  ; Saturate(value)
  %2320 = fdiv fast float %2204, %2317
  %2321 = call float @dx.op.unary.f32(i32 7, float %2320)  ; Saturate(value)
  %2322 = fcmp fast une float %2315, 1.000000e+00
  br i1 %2322, label %2323, label %2336, !dx.controlflow.hints !126

; <label>:2323                                    ; preds = %2300
  %2324 = call float @dx.op.unary.f32(i32 23, float %2315)  ; Log(value)
  %2325 = fmul fast float %2324, 0x3FE62E4300000000
  %2326 = fmul fast float %2196, %2325
  %2327 = fsub fast float -0.000000e+00, %2326
  %2328 = fmul fast float %2197, %2325
  %2329 = fsub fast float -0.000000e+00, %2328
  %2330 = fmul fast float %2198, %2325
  %2331 = fsub fast float -0.000000e+00, %2330
  %2332 = fsub fast float 1.000000e+00, %2315
  %2333 = fdiv fast float %2327, %2332
  %2334 = fdiv fast float %2329, %2332
  %2335 = fdiv fast float %2331, %2332
  br label %2336

; <label>:2336                                    ; preds = %2323, %2300
  %2337 = phi float [ %2333, %2323 ], [ %2196, %2300 ]
  %2338 = phi float [ %2334, %2323 ], [ %2197, %2300 ]
  %2339 = phi float [ %2335, %2323 ], [ %2198, %2300 ]
  %2340 = phi float [ %2325, %2323 ], [ 0.000000e+00, %2300 ]
  %2341 = fcmp fast une float %2312, 1.000000e+00
  br i1 %2341, label %2342, label %2349, !dx.controlflow.hints !127

; <label>:2342                                    ; preds = %2336
  %2343 = call float @dx.op.unary.f32(i32 23, float %2312)  ; Log(value)
  %2344 = fmul fast float %2343, 0x3FE62E4300000000
  %2345 = fmul fast float %2309, %2344
  %2346 = fsub fast float -0.000000e+00, %2345
  %2347 = fsub fast float 1.000000e+00, %2312
  %2348 = fdiv fast float %2346, %2347
  br label %2349

; <label>:2349                                    ; preds = %2342, %2336
  %2350 = phi float [ %2348, %2342 ], [ %2309, %2336 ]
  %2351 = phi float [ %2344, %2342 ], [ 0.000000e+00, %2336 ]
  %2352 = fcmp fast une float %2313, 1.000000e+00
  br i1 %2352, label %2353, label %2360, !dx.controlflow.hints !127

; <label>:2353                                    ; preds = %2349
  %2354 = call float @dx.op.unary.f32(i32 23, float %2313)  ; Log(value)
  %2355 = fmul fast float %2354, 0x3FE62E4300000000
  %2356 = fmul fast float %2310, %2355
  %2357 = fsub fast float -0.000000e+00, %2356
  %2358 = fsub fast float 1.000000e+00, %2313
  %2359 = fdiv fast float %2357, %2358
  br label %2360

; <label>:2360                                    ; preds = %2353, %2349
  %2361 = phi float [ %2359, %2353 ], [ %2310, %2349 ]
  %2362 = phi float [ %2355, %2353 ], [ 0.000000e+00, %2349 ]
  %2363 = fcmp fast une float %2314, 1.000000e+00
  br i1 %2363, label %2364, label %2371, !dx.controlflow.hints !127

; <label>:2364                                    ; preds = %2360
  %2365 = call float @dx.op.unary.f32(i32 23, float %2314)  ; Log(value)
  %2366 = fmul fast float %2365, 0x3FE62E4300000000
  %2367 = fmul fast float %2311, %2366
  %2368 = fsub fast float -0.000000e+00, %2367
  %2369 = fsub fast float 1.000000e+00, %2314
  %2370 = fdiv fast float %2368, %2369
  br label %2371

; <label>:2371                                    ; preds = %2364, %2360
  %2372 = phi float [ %2370, %2364 ], [ %2311, %2360 ]
  %2373 = phi float [ %2366, %2364 ], [ 0.000000e+00, %2360 ]
  %2374 = fmul fast float %2337, %2321
  %2375 = fmul fast float %2338, %2321
  %2376 = fmul fast float %2339, %2321
  %2377 = fmul fast float %2340, %2321
  %2378 = fmul fast float %2350, %2319
  %2379 = fmul fast float %2361, %2319
  %2380 = fmul fast float %2372, %2319
  %2381 = fmul fast float %2351, %2319
  %2382 = fmul fast float %2362, %2319
  %2383 = fmul fast float %2373, %2319
  %2384 = fadd fast float %2378, %2374
  %2385 = fadd fast float %2379, %2375
  %2386 = fadd fast float %2380, %2376
  %2387 = fadd fast float %2381, %2377
  %2388 = fadd fast float %2382, %2377
  %2389 = fadd fast float %2383, %2377
  %2390 = fcmp fast une float %2387, 0.000000e+00
  br i1 %2390, label %2391, label %2398, !dx.controlflow.hints !128

; <label>:2391                                    ; preds = %2371
  %2392 = fmul fast float %2387, 0x3FF7154760000000
  %2393 = call float @dx.op.unary.f32(i32 21, float %2392)  ; Exp(value)
  %2394 = fsub fast float 1.000000e+00, %2393
  %2395 = fmul fast float %2384, %2394
  %2396 = fsub fast float -0.000000e+00, %2395
  %2397 = fdiv fast float %2396, %2387
  br label %2398

; <label>:2398                                    ; preds = %2391, %2371
  %2399 = phi float [ %2393, %2391 ], [ 1.000000e+00, %2371 ]
  %2400 = phi float [ %2397, %2391 ], [ %2384, %2371 ]
  %2401 = fcmp fast une float %2388, 0.000000e+00
  br i1 %2401, label %2402, label %2409, !dx.controlflow.hints !128

; <label>:2402                                    ; preds = %2398
  %2403 = fmul fast float %2388, 0x3FF7154760000000
  %2404 = call float @dx.op.unary.f32(i32 21, float %2403)  ; Exp(value)
  %2405 = fsub fast float 1.000000e+00, %2404
  %2406 = fmul fast float %2385, %2405
  %2407 = fsub fast float -0.000000e+00, %2406
  %2408 = fdiv fast float %2407, %2388
  br label %2409

; <label>:2409                                    ; preds = %2402, %2398
  %2410 = phi float [ %2404, %2402 ], [ 1.000000e+00, %2398 ]
  %2411 = phi float [ %2408, %2402 ], [ %2385, %2398 ]
  %2412 = fcmp fast une float %2389, 0.000000e+00
  br i1 %2412, label %2413, label %2420, !dx.controlflow.hints !128

; <label>:2413                                    ; preds = %2409
  %2414 = fmul fast float %2389, 0x3FF7154760000000
  %2415 = call float @dx.op.unary.f32(i32 21, float %2414)  ; Exp(value)
  %2416 = fsub fast float 1.000000e+00, %2415
  %2417 = fmul fast float %2386, %2416
  %2418 = fsub fast float -0.000000e+00, %2417
  %2419 = fdiv fast float %2418, %2389
  br label %2420

; <label>:2420                                    ; preds = %2413, %2409
  %2421 = phi float [ %2415, %2413 ], [ 1.000000e+00, %2409 ]
  %2422 = phi float [ %2419, %2413 ], [ %2386, %2409 ]
  %2423 = fcmp fast ogt float %2319, %2321
  br i1 %2423, label %2424, label %2444

; <label>:2424                                    ; preds = %2420
  %2425 = fsub fast float 1.000000e+00, %2321
  %2426 = fmul fast float %2337, %2425
  %2427 = fmul fast float %2338, %2425
  %2428 = fmul fast float %2339, %2425
  %2429 = fmul fast float %2340, %2425
  %2430 = fcmp fast une float %2429, 0.000000e+00
  br i1 %2430, label %2431, label %2482, !dx.controlflow.hints !129

; <label>:2431                                    ; preds = %2424
  %2432 = fmul fast float %2429, 0x3FF7154760000000
  %2433 = call float @dx.op.unary.f32(i32 21, float %2432)  ; Exp(value)
  %2434 = fsub fast float 1.000000e+00, %2433
  %2435 = fmul fast float %2426, %2434
  %2436 = fsub fast float -0.000000e+00, %2435
  %2437 = fmul fast float %2427, %2434
  %2438 = fsub fast float -0.000000e+00, %2437
  %2439 = fmul fast float %2428, %2434
  %2440 = fsub fast float -0.000000e+00, %2439
  %2441 = fdiv fast float %2436, %2429
  %2442 = fdiv fast float %2438, %2429
  %2443 = fdiv fast float %2440, %2429
  br label %2482

; <label>:2444                                    ; preds = %2420
  %2445 = fsub fast float 1.000000e+00, %2319
  %2446 = fmul fast float %2350, %2445
  %2447 = fmul fast float %2361, %2445
  %2448 = fmul fast float %2372, %2445
  %2449 = fmul fast float %2351, %2445
  %2450 = fmul fast float %2362, %2445
  %2451 = fmul fast float %2373, %2445
  %2452 = fcmp fast une float %2449, 0.000000e+00
  br i1 %2452, label %2453, label %2460, !dx.controlflow.hints !128

; <label>:2453                                    ; preds = %2444
  %2454 = fmul fast float %2449, 0x3FF7154760000000
  %2455 = call float @dx.op.unary.f32(i32 21, float %2454)  ; Exp(value)
  %2456 = fsub fast float 1.000000e+00, %2455
  %2457 = fmul fast float %2446, %2456
  %2458 = fsub fast float -0.000000e+00, %2457
  %2459 = fdiv fast float %2458, %2449
  br label %2460

; <label>:2460                                    ; preds = %2453, %2444
  %2461 = phi float [ %2459, %2453 ], [ %2446, %2444 ]
  %2462 = phi float [ %2455, %2453 ], [ 1.000000e+00, %2444 ]
  %2463 = fcmp fast une float %2450, 0.000000e+00
  br i1 %2463, label %2464, label %2471, !dx.controlflow.hints !128

; <label>:2464                                    ; preds = %2460
  %2465 = fmul fast float %2450, 0x3FF7154760000000
  %2466 = call float @dx.op.unary.f32(i32 21, float %2465)  ; Exp(value)
  %2467 = fsub fast float 1.000000e+00, %2466
  %2468 = fmul fast float %2447, %2467
  %2469 = fsub fast float -0.000000e+00, %2468
  %2470 = fdiv fast float %2469, %2450
  br label %2471

; <label>:2471                                    ; preds = %2464, %2460
  %2472 = phi float [ %2470, %2464 ], [ %2447, %2460 ]
  %2473 = phi float [ %2466, %2464 ], [ 1.000000e+00, %2460 ]
  %2474 = fcmp fast une float %2451, 0.000000e+00
  br i1 %2474, label %2475, label %2482, !dx.controlflow.hints !128

; <label>:2475                                    ; preds = %2471
  %2476 = fmul fast float %2451, 0x3FF7154760000000
  %2477 = call float @dx.op.unary.f32(i32 21, float %2476)  ; Exp(value)
  %2478 = fsub fast float 1.000000e+00, %2477
  %2479 = fmul fast float %2448, %2478
  %2480 = fsub fast float -0.000000e+00, %2479
  %2481 = fdiv fast float %2480, %2451
  br label %2482

; <label>:2482                                    ; preds = %2475, %2471, %2431, %2424
  %2483 = phi float [ %2481, %2475 ], [ %2443, %2431 ], [ %2428, %2424 ], [ %2448, %2471 ]
  %2484 = phi float [ %2472, %2475 ], [ %2442, %2431 ], [ %2427, %2424 ], [ %2472, %2471 ]
  %2485 = phi float [ %2461, %2475 ], [ %2441, %2431 ], [ %2426, %2424 ], [ %2461, %2471 ]
  %2486 = phi float [ %2477, %2475 ], [ %2433, %2431 ], [ 1.000000e+00, %2424 ], [ 1.000000e+00, %2471 ]
  %2487 = phi float [ %2473, %2475 ], [ %2433, %2431 ], [ 1.000000e+00, %2424 ], [ %2473, %2471 ]
  %2488 = phi float [ %2462, %2475 ], [ %2433, %2431 ], [ 1.000000e+00, %2424 ], [ %2462, %2471 ]
  %2489 = fmul fast float %2488, %2400
  %2490 = fmul fast float %2487, %2411
  %2491 = fmul fast float %2486, %2422
  %2492 = fadd fast float %2489, %2485
  %2493 = fadd fast float %2490, %2484
  %2494 = fadd fast float %2491, %2483
  %2495 = fmul fast float %2488, %2399
  %2496 = fmul fast float %2487, %2410
  %2497 = fmul fast float %2486, %2421
  br label %2498

; <label>:2498                                    ; preds = %2482, %2293
  %2499 = phi float [ %2497, %2482 ], [ %2299, %2293 ]
  %2500 = phi float [ %2496, %2482 ], [ %2298, %2293 ]
  %2501 = phi float [ %2495, %2482 ], [ %2297, %2293 ]
  %2502 = phi float [ %2494, %2482 ], [ %2296, %2293 ]
  %2503 = phi float [ %2493, %2482 ], [ %2295, %2293 ]
  %2504 = phi float [ %2492, %2482 ], [ %2294, %2293 ]
  %2505 = fmul fast float %2504, %1479
  %2506 = fmul fast float %2503, %1479
  %2507 = fmul fast float %2502, %1479
  %2508 = fmul fast float %2501, %1741
  %2509 = call float @dx.op.dot3.f32(i32 55, float %2501, float %2500, float %2499, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2510 = call float @dx.op.dot3.f32(i32 55, float %2505, float %2506, float %2507, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2511 = select i1 %131, float %2509, float %2501
  %2512 = select i1 %131, float %2509, float %2500
  %2513 = select i1 %131, float 1.000000e+00, float %2499
  %2514 = select i1 %131, float %2510, float %2505
  %2515 = select i1 %131, float 0.000000e+00, float %2506
  %2516 = select i1 %131, float 0.000000e+00, float %2507
  %2517 = fmul fast float %2511, %1735
  %2518 = fmul fast float %2512, %1736
  %2519 = fmul fast float %2513, %1737
  %2520 = fadd fast float %2517, %2514
  %2521 = fadd fast float %2518, %2515
  %2522 = fadd fast float %2516, %2519
  %2523 = fmul fast float %2511, %1738
  %2524 = fmul fast float %2512, %1739
  %2525 = fmul fast float %2513, %1740
  %2526 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2527 = extractvalue %dx.types.CBufRet.i32 %2526, 0
  %2528 = icmp eq i32 %2527, 0
  br i1 %2528, label %2797, label %2529, !dx.controlflow.hints !130

; <label>:2529                                    ; preds = %2498
  %2530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2531 = extractvalue %dx.types.CBufRet.f32 %2530, 2
  %2532 = extractvalue %dx.types.CBufRet.f32 %2530, 3
  %2533 = fmul fast float %2531, %61
  %2534 = fmul fast float %2532, %62
  %2535 = fmul fast float %2533, 2.000000e+00
  %2536 = fmul fast float %2534, 2.000000e+00
  %2537 = fsub fast float 1.000000e+00, %2535
  %2538 = fsub fast float 1.000000e+00, %2536
  %2539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2540 = extractvalue %dx.types.CBufRet.f32 %2539, 0
  %2541 = extractvalue %dx.types.CBufRet.f32 %2539, 1
  %2542 = extractvalue %dx.types.CBufRet.f32 %2539, 2
  %2543 = fmul fast float %2537, %2540
  %2544 = fmul fast float %2537, %2541
  %2545 = fmul fast float %2537, %2542
  %2546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2547 = extractvalue %dx.types.CBufRet.f32 %2546, 0
  %2548 = extractvalue %dx.types.CBufRet.f32 %2546, 1
  %2549 = extractvalue %dx.types.CBufRet.f32 %2546, 2
  %2550 = fmul fast float %2538, %2547
  %2551 = fmul fast float %2538, %2548
  %2552 = fmul fast float %2538, %2549
  %2553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2554 = extractvalue %dx.types.CBufRet.f32 %2553, 0
  %2555 = extractvalue %dx.types.CBufRet.f32 %2553, 1
  %2556 = extractvalue %dx.types.CBufRet.f32 %2553, 2
  %2557 = fadd fast float %2550, %2554
  %2558 = fadd fast float %2557, %2543
  %2559 = fadd fast float %2551, %2555
  %2560 = fadd fast float %2559, %2544
  %2561 = fadd fast float %2552, %2556
  %2562 = fadd fast float %2561, %2545
  %2563 = fmul fast float %2558, %1734
  %2564 = fmul fast float %2560, %1734
  %2565 = fmul fast float %2562, %1734
  %2566 = fmul fast float %2563, %2563
  %2567 = fmul fast float %2564, %2564
  %2568 = fadd fast float %2566, %2567
  %2569 = fmul fast float %2565, %2565
  %2570 = fadd fast float %2568, %2569
  %2571 = call float @dx.op.unary.f32(i32 24, float %2570)  ; Sqrt(value)
  %2572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2573 = extractvalue %dx.types.CBufRet.f32 %2572, 0
  %2574 = fsub fast float %2571, %2573
  %2575 = extractvalue %dx.types.CBufRet.f32 %2572, 2
  %2576 = fmul fast float %2574, %2575
  %2577 = call float @dx.op.unary.f32(i32 7, float %2576)  ; Saturate(value)
  %2578 = fadd fast float %2577, -5.000000e-01
  %2579 = fmul fast float %2578, 2.000000e+00
  %2580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2581 = extractvalue %dx.types.CBufRet.f32 %2580, 2
  %2582 = call float @dx.op.binary.f32(i32 36, float %2581, float %2579)  ; FMin(a,b)
  %2583 = fsub fast float -0.000000e+00, %2581
  %2584 = fcmp fast ogt float %2582, %2583
  br i1 %2584, label %2585, label %2797, !dx.controlflow.hints !131

; <label>:2585                                    ; preds = %2529
  %2586 = fmul fast float %2582, 5.000000e-01
  %2587 = fadd fast float %2586, 5.000000e-01
  %2588 = call float @dx.op.unary.f32(i32 22, float %2587)  ; Frc(value)
  %2589 = call float @dx.op.unary.f32(i32 27, float %2588)  ; Round_ni(value)
  %2590 = call float @dx.op.unary.f32(i32 22, float %2588)  ; Frc(value)
  %2591 = fmul fast float %2590, 2.000000e+00
  %2592 = fadd fast float %2591, -1.000000e+00
  %2593 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %26, float %2533, float %2534, float %2589, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2594 = extractvalue %dx.types.ResRet.f32 %2593, 0
  %2595 = extractvalue %dx.types.ResRet.f32 %2593, 1
  %2596 = extractvalue %dx.types.ResRet.f32 %2593, 2
  %2597 = extractvalue %dx.types.ResRet.f32 %2593, 3
  %2598 = fadd fast float %2594, -5.000000e-01
  %2599 = fadd fast float %2596, -5.000000e-01
  %2600 = fmul fast float %2598, 0xBFD5555560000000
  %2601 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2599, float %2600)  ; FMad(a,b,c)
  %2602 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2595, float 0.000000e+00)  ; FMad(a,b,c)
  %2603 = fadd fast float %2602, %2597
  %2604 = fmul fast float %2598, -7.500000e-01
  %2605 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2599, float %2604)  ; FMad(a,b,c)
  %2606 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2595, float 0.000000e+00)  ; FMad(a,b,c)
  %2607 = fadd fast float %2606, %2597
  %2608 = call float @dx.op.binary.f32(i32 35, float %2601, float -1.000000e+00)  ; FMax(a,b)
  %2609 = call float @dx.op.binary.f32(i32 35, float %2603, float -1.000000e+00)  ; FMax(a,b)
  %2610 = call float @dx.op.binary.f32(i32 35, float %2605, float -1.000000e+00)  ; FMax(a,b)
  %2611 = call float @dx.op.binary.f32(i32 35, float %2607, float -1.000000e+00)  ; FMax(a,b)
  %2612 = call float @dx.op.binary.f32(i32 36, float %2608, float 1.000000e+00)  ; FMin(a,b)
  %2613 = call float @dx.op.binary.f32(i32 36, float %2609, float 1.000000e+00)  ; FMin(a,b)
  %2614 = call float @dx.op.binary.f32(i32 36, float %2610, float 1.000000e+00)  ; FMin(a,b)
  %2615 = call float @dx.op.binary.f32(i32 36, float %2611, float 1.000000e+00)  ; FMin(a,b)
  %2616 = fcmp fast olt float %2612, 0x3FEFFF8020000000
  br i1 %2616, label %2617, label %2732, !dx.controlflow.hints !132

; <label>:2617                                    ; preds = %2585
  %2618 = extractvalue %dx.types.CBufRet.f32 %2580, 3
  %2619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %2620 = extractvalue %dx.types.CBufRet.f32 %2619, 0
  %2621 = extractvalue %dx.types.CBufRet.f32 %2619, 1
  %2622 = extractvalue %dx.types.CBufRet.f32 %2619, 2
  %2623 = extractvalue %dx.types.CBufRet.f32 %2619, 3
  %2624 = fsub fast float %2620, %2612
  %2625 = fsub fast float %2621, %2613
  %2626 = fsub fast float %2622, %2614
  %2627 = fsub fast float %2623, %2615
  %2628 = fmul fast float %2624, %2618
  %2629 = fmul fast float %2625, %2618
  %2630 = fmul fast float %2626, %2618
  %2631 = fmul fast float %2627, %2618
  %2632 = fadd fast float %2628, %2612
  %2633 = fadd fast float %2629, %2613
  %2634 = fsub fast float -0.000000e+00, %2633
  %2635 = fadd fast float %2630, %2614
  %2636 = fadd fast float %2631, %2615
  %2637 = fmul fast float %2632, %2632
  %2638 = fsub fast float %2633, %2637
  %2639 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2638)  ; FMax(a,b)
  %2640 = fdiv fast float 1.000000e+00, %2639
  %2641 = fmul fast float %2633, %2632
  %2642 = fsub fast float %2635, %2641
  %2643 = fsub fast float %2592, %2632
  %2644 = fmul fast float %2592, %2592
  %2645 = fsub fast float %2644, %2633
  %2646 = fmul fast float %2643, %2640
  %2647 = fmul fast float %2646, %2642
  %2648 = fsub fast float %2645, %2647
  %2649 = fmul fast float %2633, %2633
  %2650 = fsub fast float %2636, %2649
  %2651 = fmul fast float %2642, %2642
  %2652 = fmul fast float %2651, %2640
  %2653 = fsub fast float %2650, %2652
  %2654 = fdiv fast float %2648, %2653
  %2655 = fmul fast float %2642, %2654
  %2656 = fsub fast float %2643, %2655
  %2657 = fmul fast float %2656, %2640
  %2658 = fmul fast float %2657, %2632
  %2659 = fsub fast float 1.000000e+00, %2658
  %2660 = fmul fast float %2633, %2654
  %2661 = fsub fast float %2659, %2660
  %2662 = fmul fast float %2657, %2657
  %2663 = fmul fast float %2654, 4.000000e+00
  %2664 = fmul fast float %2663, %2661
  %2665 = fsub fast float %2662, %2664
  %2666 = call float @dx.op.unary.f32(i32 24, float %2665)  ; Sqrt(value)
  %2667 = fcmp fast oge float %2657, 0.000000e+00
  %2668 = fsub fast float -0.000000e+00, %2666
  %2669 = select i1 %2667, float %2668, float %2666
  %2670 = fsub fast float %2669, %2657
  %2671 = fdiv fast float %2670, %2654
  %2672 = fdiv fast float %2661, %2670
  %2673 = fmul fast float %2671, 5.000000e-01
  %2674 = fmul fast float %2672, 2.000000e+00
  %2675 = select i1 %2667, float %2673, float %2674
  %2676 = select i1 %2667, float %2674, float %2673
  %2677 = call float @dx.op.binary.f32(i32 35, float %2675, float %2676)  ; FMax(a,b)
  %2678 = call float @dx.op.binary.f32(i32 36, float %2675, float %2676)  ; FMin(a,b)
  %2679 = fcmp fast ogt float %2592, %2678
  br i1 %2679, label %2680, label %2690

; <label>:2680                                    ; preds = %2617
  %2681 = fsub fast float %2592, %2678
  %2682 = fsub fast float %2677, %2678
  %2683 = fmul fast float %2681, %2682
  %2684 = fmul fast float %2677, %2592
  %2685 = fadd fast float %2677, %2592
  %2686 = fmul fast float %2685, %2632
  %2687 = fadd fast float %2684, %2633
  %2688 = fsub fast float %2687, %2686
  %2689 = fdiv fast float %2688, %2683
  br label %2690

; <label>:2690                                    ; preds = %2680, %2617
  %2691 = phi float [ %2689, %2680 ], [ 0.000000e+00, %2617 ]
  %2692 = fcmp fast ogt float %2592, %2677
  %2693 = fsub fast float %2592, %2677
  br i1 %2692, label %2694, label %2704

; <label>:2694                                    ; preds = %2690
  %2695 = fsub fast float %2677, %2678
  %2696 = fmul fast float %2695, %2693
  %2697 = fmul fast float %2678, %2592
  %2698 = fadd fast float %2678, %2592
  %2699 = fmul fast float %2698, %2632
  %2700 = fsub fast float %2634, %2697
  %2701 = fadd fast float %2700, %2699
  %2702 = fdiv fast float %2701, %2696
  %2703 = fadd fast float %2702, %2691
  br label %2704

; <label>:2704                                    ; preds = %2694, %2690
  %2705 = phi float [ %2703, %2694 ], [ %2691, %2690 ]
  %2706 = fsub fast float %2592, %2678
  %2707 = fmul fast float %2706, %2693
  %2708 = fmul fast float %2678, %2677
  %2709 = fadd fast float %2678, %2677
  %2710 = fmul fast float %2709, %2632
  %2711 = fadd fast float %2708, %2633
  %2712 = fsub fast float %2711, %2710
  %2713 = fdiv fast float %2712, %2707
  %2714 = call float @dx.op.unary.f32(i32 7, float %2705)  ; Saturate(value)
  %2715 = fcmp fast oeq float %1587, 0.000000e+00
  %2716 = extractvalue %dx.types.CBufRet.f32 %2580, 0
  %2717 = fcmp fast oeq float %2716, 0.000000e+00
  %2718 = or i1 %2715, %2717
  %2719 = fmul fast float %2716, 2.000000e+00
  %2720 = fadd fast float %2581, %2582
  %2721 = fdiv fast float %2720, %2719
  %2722 = call float @dx.op.unary.f32(i32 7, float %2721)  ; Saturate(value)
  %2723 = fmul fast float %2722, 2.000000e+00
  %2724 = fsub fast float 3.000000e+00, %2723
  %2725 = fmul fast float %2722, %2722
  %2726 = fmul fast float %2725, %2724
  %2727 = select i1 %2718, float 1.000000e+00, float %2726
  %2728 = fmul fast float %2713, %1587
  %2729 = fadd fast float %2714, %2728
  %2730 = call float @dx.op.unary.f32(i32 7, float %2729)  ; Saturate(value)
  %2731 = fmul fast float %2727, %2730
  br label %2732

; <label>:2732                                    ; preds = %2704, %2585
  %2733 = phi float [ %2731, %2704 ], [ 0.000000e+00, %2585 ]
  %2734 = fsub fast float 1.000000e+00, %2733
  %2735 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %26, float %2533, float %2534, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2736 = extractvalue %dx.types.ResRet.f32 %2735, 0
  %2737 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2738 = extractvalue %dx.types.CBufRet.i32 %2737, 2
  %2739 = icmp eq i32 %2738, 0
  br i1 %2739, label %2745, label %2740

; <label>:2740                                    ; preds = %2732
  %2741 = call float @dx.op.unary.f32(i32 7, float %2733)  ; Saturate(value)
  %2742 = fadd fast float %2736, -1.000000e+00
  %2743 = fmul fast float %2741, %2742
  %2744 = fadd fast float %2743, 1.000000e+00
  br label %2745

; <label>:2745                                    ; preds = %2740, %2732
  %2746 = phi float [ %2744, %2740 ], [ %2734, %2732 ]
  %2747 = call float @dx.op.binary.f32(i32 35, float %2736, float %2746)  ; FMax(a,b)
  %2748 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %2749 = extractvalue %dx.types.CBufRet.i32 %2748, 2
  %2750 = and i32 %2749, 1
  %2751 = icmp eq i32 %2750, 0
  %2752 = fcmp fast une float %2747, 1.000000e+00
  %2753 = and i1 %2752, %2751
  br i1 %2753, label %2754, label %2773

; <label>:2754                                    ; preds = %2745
  %2755 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %26, float %2533, float %2534, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2756 = extractvalue %dx.types.ResRet.f32 %2755, 0
  %2757 = extractvalue %dx.types.ResRet.f32 %2755, 1
  %2758 = extractvalue %dx.types.ResRet.f32 %2755, 2
  %2759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2760 = extractvalue %dx.types.CBufRet.f32 %2759, 1
  %2761 = fmul fast float %2760, %2756
  %2762 = fmul fast float %2760, %2757
  %2763 = fmul fast float %2760, %2758
  %2764 = fcmp fast ogt float %2736, 0x3FEFFF2E40000000
  %2765 = fsub fast float 1.000000e+00, %2747
  %2766 = fsub fast float 1.000000e+00, %2736
  %2767 = fdiv fast float %2765, %2766
  %2768 = call float @dx.op.unary.f32(i32 7, float %2767)  ; Saturate(value)
  %2769 = select i1 %2764, float 0.000000e+00, float %2768
  %2770 = fmul fast float %2761, %2769
  %2771 = fmul fast float %2762, %2769
  %2772 = fmul fast float %2763, %2769
  br label %2773

; <label>:2773                                    ; preds = %2754, %2745
  %2774 = phi float [ 0.000000e+00, %2745 ], [ %2770, %2754 ]
  %2775 = phi float [ 0.000000e+00, %2745 ], [ %2771, %2754 ]
  %2776 = phi float [ 0.000000e+00, %2745 ], [ %2772, %2754 ]
  %2777 = fmul fast float %2774, %1479
  %2778 = fmul fast float %2775, %1479
  %2779 = fmul fast float %2776, %1479
  %2780 = fmul fast float %2747, %2508
  %2781 = call float @dx.op.dot3.f32(i32 55, float %2747, float %2747, float %2747, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2782 = call float @dx.op.dot3.f32(i32 55, float %2777, float %2778, float %2779, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2783 = select i1 %131, float %2781, float %2747
  %2784 = select i1 %131, float 1.000000e+00, float %2747
  %2785 = select i1 %131, float %2782, float %2777
  %2786 = select i1 %131, float 0.000000e+00, float %2778
  %2787 = select i1 %131, float 0.000000e+00, float %2779
  %2788 = fmul fast float %2783, %2520
  %2789 = fmul fast float %2783, %2521
  %2790 = fmul fast float %2784, %2522
  %2791 = fadd fast float %2788, %2785
  %2792 = fadd fast float %2789, %2786
  %2793 = fadd fast float %2787, %2790
  %2794 = fmul fast float %2783, %2523
  %2795 = fmul fast float %2783, %2524
  %2796 = fmul fast float %2784, %2525
  br label %2797

; <label>:2797                                    ; preds = %2773, %2529, %2498, %1730
  %2798 = phi float [ %1735, %1730 ], [ %2520, %2498 ], [ %2791, %2773 ], [ %2520, %2529 ]
  %2799 = phi float [ %1736, %1730 ], [ %2521, %2498 ], [ %2792, %2773 ], [ %2521, %2529 ]
  %2800 = phi float [ %1737, %1730 ], [ %2522, %2498 ], [ %2793, %2773 ], [ %2522, %2529 ]
  %2801 = phi float [ %1738, %1730 ], [ %2523, %2498 ], [ %2794, %2773 ], [ %2523, %2529 ]
  %2802 = phi float [ %1739, %1730 ], [ %2524, %2498 ], [ %2795, %2773 ], [ %2524, %2529 ]
  %2803 = phi float [ %1740, %1730 ], [ %2525, %2498 ], [ %2796, %2773 ], [ %2525, %2529 ]
  %2804 = phi float [ %1741, %1730 ], [ %2508, %2498 ], [ %2780, %2773 ], [ %2508, %2529 ]
  %2805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2806 = extractvalue %dx.types.CBufRet.f32 %2805, 2
  %2807 = extractvalue %dx.types.CBufRet.f32 %2805, 3
  %2808 = fmul fast float %2806, %61
  %2809 = fmul fast float %2807, %62
  %2810 = call float @dx.op.unary.f32(i32 7, float %2808)  ; Saturate(value)
  %2811 = call float @dx.op.unary.f32(i32 7, float %2809)  ; Saturate(value)
  %2812 = select i1 %880, i32 2, i32 0
  %2813 = or i32 %2812, 1
  %2814 = uitofp i32 %2813 to float
  %2815 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %2810, float %2811, float %2814, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2816 = extractvalue %dx.types.ResRet.f32 %2815, 0
  %2817 = extractvalue %dx.types.ResRet.f32 %2815, 1
  %2818 = extractvalue %dx.types.ResRet.f32 %2815, 2
  %2819 = extractvalue %dx.types.ResRet.f32 %2815, 3
  %2820 = add nuw nsw i32 %2812, 2
  %2821 = uitofp i32 %2820 to float
  %2822 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %2810, float %2811, float %2821, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2823 = extractvalue %dx.types.ResRet.f32 %2822, 0
  %2824 = extractvalue %dx.types.ResRet.f32 %2822, 1
  %2825 = extractvalue %dx.types.ResRet.f32 %2822, 2
  %2826 = extractvalue %dx.types.ResRet.f32 %2822, 3
  %2827 = call float @dx.op.binary.f32(i32 35, float %2817, float %2818)  ; FMax(a,b)
  %2828 = call float @dx.op.binary.f32(i32 35, float %2816, float %2827)  ; FMax(a,b)
  %2829 = call float @dx.op.binary.f32(i32 35, float %2828, float %2819)  ; FMax(a,b)
  %2830 = call float @dx.op.binary.f32(i32 36, float %2824, float %2825)  ; FMin(a,b)
  %2831 = call float @dx.op.binary.f32(i32 36, float %2823, float %2830)  ; FMin(a,b)
  %2832 = call float @dx.op.binary.f32(i32 36, float %2831, float %2826)  ; FMin(a,b)
  %2833 = fmul fast float %2829, 2.550000e+02
  %2834 = fadd fast float %2833, 0x3F70101020000000
  %2835 = fptoui float %2834 to i32
  %2836 = fmul fast float %2832, 2.550000e+02
  %2837 = fadd fast float %2836, 0x3F70101020000000
  %2838 = fptoui float %2837 to i32
  %2839 = icmp ult i32 %2835, %2838
  br i1 %2839, label %2840, label %2886

; <label>:2840                                    ; preds = %2797
  %2841 = fcmp fast ogt float %53, 9.843750e-01
  %2842 = fadd fast float %1734, -4.000000e+00
  %2843 = select i1 %2841, float -4.000000e+00, float %2842
  %2844 = call float @dx.op.binary.f32(i32 35, float %2843, float 0.000000e+00)  ; FMax(a,b)
  %2845 = fadd fast float %1045, %2844
  %2846 = fmul fast float %2845, %1046
  %2847 = call float @dx.op.unary.f32(i32 23, float %2846)  ; Log(value)
  %2848 = fmul fast float %1047, %2847
  %2849 = fmul fast float %2848, %1055
  %2850 = call float @dx.op.unary.f32(i32 7, float %2849)  ; Saturate(value)
  %2851 = uitofp i32 %2835 to float
  %2852 = uitofp i32 %2838 to float
  %2853 = fadd fast float %2851, 5.000000e-01
  %2854 = fadd fast float %2852, 5.000000e-01
  %2855 = fmul fast float %1055, %2853
  %2856 = fmul fast float %1055, %2854
  %2857 = fadd fast float %2855, 0x3F0FFB4800000000
  %2858 = fadd fast float %2856, 0xBF0FFB4800000000
  %2859 = call float @dx.op.binary.f32(i32 35, float %2850, float %2857)  ; FMax(a,b)
  %2860 = call float @dx.op.binary.f32(i32 36, float %2859, float %2858)  ; FMin(a,b)
  %2861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %2862 = extractvalue %dx.types.CBufRet.f32 %2861, 1
  %2863 = extractvalue %dx.types.CBufRet.f32 %2861, 2
  %2864 = extractvalue %dx.types.CBufRet.f32 %2861, 0
  %2865 = select i1 %880, float %2864, float 0.000000e+00
  %2866 = fmul fast float %2862, %2860
  %2867 = fadd fast float %2865, %2866
  %2868 = fadd fast float %2865, %2863
  %2869 = fsub fast float %2862, %2863
  %2870 = fadd fast float %2869, %2865
  %2871 = call float @dx.op.binary.f32(i32 35, float %2867, float %2868)  ; FMax(a,b)
  %2872 = call float @dx.op.binary.f32(i32 36, float %2871, float %2870)  ; FMin(a,b)
  %2873 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %2810, float %2811, float %2872, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2874 = extractvalue %dx.types.ResRet.f32 %2873, 0
  %2875 = extractvalue %dx.types.ResRet.f32 %2873, 1
  %2876 = extractvalue %dx.types.ResRet.f32 %2873, 2
  %2877 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %2810, float %2811, float %2872, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2878 = extractvalue %dx.types.ResRet.f32 %2877, 0
  %2879 = extractvalue %dx.types.ResRet.f32 %2877, 1
  %2880 = extractvalue %dx.types.ResRet.f32 %2877, 2
  %2881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2882 = extractvalue %dx.types.CBufRet.f32 %2881, 1
  %2883 = fmul fast float %2882, %2878
  %2884 = fmul fast float %2882, %2879
  %2885 = fmul fast float %2882, %2880
  br label %2886

; <label>:2886                                    ; preds = %2840, %2797
  %2887 = phi float [ %2874, %2840 ], [ 1.000000e+00, %2797 ]
  %2888 = phi float [ %2875, %2840 ], [ 1.000000e+00, %2797 ]
  %2889 = phi float [ %2876, %2840 ], [ 1.000000e+00, %2797 ]
  %2890 = phi float [ %2883, %2840 ], [ 0.000000e+00, %2797 ]
  %2891 = phi float [ %2884, %2840 ], [ 0.000000e+00, %2797 ]
  %2892 = phi float [ %2885, %2840 ], [ 0.000000e+00, %2797 ]
  %2893 = fmul fast float %2890, %1479
  %2894 = fmul fast float %2891, %1479
  %2895 = fmul fast float %2892, %1479
  %2896 = fmul fast float %2887, %2804
  %2897 = call float @dx.op.dot3.f32(i32 55, float %2887, float %2888, float %2889, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2898 = call float @dx.op.dot3.f32(i32 55, float %2893, float %2894, float %2895, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2899 = select i1 %131, float %2897, float %2887
  %2900 = select i1 %131, float %2897, float %2888
  %2901 = select i1 %131, float 1.000000e+00, float %2889
  %2902 = select i1 %131, float %2898, float %2893
  %2903 = select i1 %131, float 0.000000e+00, float %2894
  %2904 = select i1 %131, float 0.000000e+00, float %2895
  %2905 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2906 = extractvalue %dx.types.CBufRet.i32 %2905, 3
  %2907 = and i32 %2906, 3
  %2908 = icmp ne i32 %2907, 0
  %2909 = and i32 %2906, 4
  %2910 = icmp ne i32 %2909, 0
  %2911 = and i1 %2908, %2910
  %2912 = and i1 %131, %2911
  br i1 %2912, label %2913, label %2919

; <label>:2913                                    ; preds = %2886
  %2914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2915 = extractvalue %dx.types.CBufRet.f32 %2914, 1
  %2916 = fadd fast float %2896, -1.000000e+00
  %2917 = fmul fast float %2915, %2916
  %2918 = fadd fast float %2917, 1.000000e+00
  br label %2919

; <label>:2919                                    ; preds = %2913, %2886
  %2920 = phi float [ %2918, %2913 ], [ %2896, %2886 ]
  %2921 = fadd fast float %2801, %2798
  %2922 = fmul fast float %2899, %2921
  %2923 = fadd fast float %2922, %2902
  %2924 = fadd fast float %2802, %2799
  %2925 = fmul fast float %2900, %2924
  %2926 = fadd fast float %2925, %2903
  %2927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2928 = extractvalue %dx.types.CBufRet.f32 %2927, 0
  br i1 %131, label %2929, label %2950

; <label>:2929                                    ; preds = %2919
  %2930 = fadd fast float %2923, %2926
  %2931 = fmul fast float %2928, %2930
  %2932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %2933 = extractvalue %dx.types.CBufRet.f32 %2932, 3
  %2934 = extractvalue %dx.types.CBufRet.f32 %1483, 1
  %2935 = fsub fast float %1486, %2934
  %2936 = extractvalue %dx.types.CBufRet.f32 %1483, 2
  %2937 = fmul fast float %2935, %2936
  %2938 = call float @dx.op.unary.f32(i32 7, float %2937)  ; Saturate(value)
  %2939 = fsub fast float %2938, %2933
  %2940 = fmul fast float %2939, %2920
  %2941 = fadd fast float %2940, %2933
  %2942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2943 = extractvalue %dx.types.CBufRet.f32 %2942, 0
  %2944 = fsub fast float %2941, %2943
  %2945 = fmul fast float %2944, 1.000000e+01
  %2946 = call float @dx.op.unary.f32(i32 7, float %2945)  ; Saturate(value)
  %2947 = fmul fast float %2946, %1479
  %2948 = fsub fast float %1479, %2947
  %2949 = fmul fast float %2948, %2941
  br label %2962

; <label>:2950                                    ; preds = %2919
  %2951 = fadd fast float %2803, %2800
  %2952 = fmul fast float %2901, %2951
  %2953 = fadd fast float %2952, %2904
  %2954 = fmul fast float %2928, %2923
  %2955 = fmul fast float %2928, %2926
  %2956 = fmul fast float %2928, %2953
  %2957 = call float @dx.op.binary.f32(i32 35, float %2955, float %2956)  ; FMax(a,b)
  %2958 = call float @dx.op.binary.f32(i32 35, float %2954, float %2957)  ; FMax(a,b)
  %2959 = call float @dx.op.binary.f32(i32 35, float %2958, float %1479)  ; FMax(a,b)
  %2960 = fcmp fast ugt float %2959, 0x3F10000000000000
  br i1 %2960, label %2962, label %2961

; <label>:2961                                    ; preds = %2950
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %2962

; <label>:2962                                    ; preds = %2961, %2950, %2929
  %2963 = phi float [ %2931, %2929 ], [ %2954, %2961 ], [ %2954, %2950 ]
  %2964 = phi float [ %2949, %2929 ], [ %2955, %2961 ], [ %2955, %2950 ]
  %2965 = phi float [ %2948, %2929 ], [ %2956, %2961 ], [ %2956, %2950 ]
  %2966 = phi float [ %2948, %2929 ], [ %1479, %2961 ], [ %1479, %2950 ]
  %2967 = fadd fast float %537, 0x3FE3C6EF40000000
  %2968 = call float @dx.op.unary.f32(i32 22, float %2967)  ; Frc(value)
  %2969 = call float @dx.op.unary.f32(i32 23, float %2963)  ; Log(value)
  %2970 = fadd fast float %2969, -7.000000e+00
  %2971 = call float @dx.op.unary.f32(i32 21, float %2970)  ; Exp(value)
  %2972 = fmul fast float %2968, 2.000000e+00
  %2973 = fadd fast float %2972, -1.000000e+00
  %2974 = fmul fast float %2971, %2973
  %2975 = fcmp fast ogt float %2963, 0.000000e+00
  %2976 = select i1 %2975, float %2974, float 0.000000e+00
  %2977 = fadd fast float %2976, %2963
  %2978 = fadd fast float %537, 0x3FF3C6EF40000000
  %2979 = call float @dx.op.unary.f32(i32 22, float %2978)  ; Frc(value)
  %2980 = call float @dx.op.unary.f32(i32 23, float %2964)  ; Log(value)
  %2981 = fadd fast float %2980, -7.000000e+00
  %2982 = call float @dx.op.unary.f32(i32 21, float %2981)  ; Exp(value)
  %2983 = fmul fast float %2979, 2.000000e+00
  %2984 = fadd fast float %2983, -1.000000e+00
  %2985 = fmul fast float %2982, %2984
  %2986 = fcmp fast ogt float %2964, 0.000000e+00
  %2987 = select i1 %2986, float %2985, float 0.000000e+00
  %2988 = fadd fast float %2987, %2964
  %2989 = fadd fast float %537, 0x3FFDAA66E0000000
  %2990 = call float @dx.op.unary.f32(i32 22, float %2989)  ; Frc(value)
  %2991 = call float @dx.op.unary.f32(i32 23, float %2965)  ; Log(value)
  %2992 = fadd fast float %2991, -6.000000e+00
  %2993 = call float @dx.op.unary.f32(i32 21, float %2992)  ; Exp(value)
  %2994 = fmul fast float %2990, 2.000000e+00
  %2995 = fadd fast float %2994, -1.000000e+00
  %2996 = fmul fast float %2993, %2995
  %2997 = fcmp fast ogt float %2965, 0.000000e+00
  %2998 = select i1 %2997, float %2996, float 0.000000e+00
  %2999 = fadd fast float %2998, %2965
  %3000 = select i1 %131, float %2964, float %2988
  %3001 = select i1 %131, float %2965, float %2999
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %3002 = call float @dx.op.binary.f32(i32 36, float %2977, float 3.225500e+04)  ; FMin(a,b)
  %3003 = call float @dx.op.binary.f32(i32 36, float %3000, float 3.225500e+04)  ; FMin(a,b)
  %3004 = call float @dx.op.binary.f32(i32 36, float %3001, float 3.225500e+04)  ; FMin(a,b)
  %3005 = call float @dx.op.binary.f32(i32 36, float %2966, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3002)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3003)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3004)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %3005)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %2966)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %2966)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %2966)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %2966)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!42}
!dx.entryPoints = !{!43}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !34, !37}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !26, !27, !28, !30, !31, !32, !33}
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
!24 = !{i32 16, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!25 = !{i32 17, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!26 = !{i32 18, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!27 = !{i32 19, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!28 = !{i32 20, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !29}
!29 = !{i32 0, i32 14}
!30 = !{i32 21, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!31 = !{i32 22, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!32 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!33 = !{i32 24, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 46, i32 1, i32 4, i32 0, !7}
!34 = !{!35, !36}
!35 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!36 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!37 = !{!38, !39, !40, !41}
!38 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!39 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!40 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!41 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!42 = !{[37 x i32] [i32 35, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255]}
!43 = !{void ()* @ps_main, !"ps_main", !44, !4, !69}
!44 = !{!45, !65, null}
!45 = !{!46, !49, !50, !52, !55, !57, !59, !61, !62, !64}
!46 = !{i32 0, !"SV_Position", i8 9, i8 3, !47, i8 4, i32 1, i8 4, i32 0, i8 0, !48}
!47 = !{i32 0}
!48 = !{i32 3, i32 15}
!49 = !{i32 1, !"COLOR", i8 9, i8 0, !47, i8 2, i32 1, i8 4, i32 1, i8 0, !48}
!50 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !47, i8 2, i32 1, i8 2, i32 2, i8 0, !51}
!51 = !{i32 3, i32 3}
!52 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !53, i8 2, i32 1, i8 4, i32 3, i8 0, !54}
!53 = !{i32 3}
!54 = !{i32 3, i32 7}
!55 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !56, i8 2, i32 1, i8 4, i32 4, i8 0, !48}
!56 = !{i32 4}
!57 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !58, i8 3, i32 1, i8 2, i32 5, i8 0, !51}
!58 = !{i32 5}
!59 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !60, i8 2, i32 1, i8 4, i32 6, i8 0, null}
!60 = !{i32 8}
!61 = !{i32 7, !"QUAD_POSITION", i8 9, i8 0, !47, i8 1, i32 1, i8 4, i32 7, i8 0, !48}
!62 = !{i32 8, !"COLOR", i8 5, i8 0, !53, i8 1, i32 1, i8 3, i32 8, i8 0, !63}
!63 = !{i32 3, i32 5}
!64 = !{i32 9, !"SV_SampleIndex", i8 5, i8 12, !47, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!65 = !{!66, !67}
!66 = !{i32 0, !"SV_Target", i8 9, i8 16, !47, i8 0, i32 1, i8 4, i32 0, i8 0, !48}
!67 = !{i32 1, !"SV_Target", i8 9, i8 16, !68, i8 0, i32 1, i8 4, i32 1, i8 0, !48}
!68 = !{i32 1}
!69 = !{i32 0, i64 24}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !79}
!79 = !{!"llvm.loop.unroll.disable"}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = !{!84, !84, i64 0}
!84 = !{!"float", !85, i64 0}
!85 = !{!"omnipotent char", !86, i64 0}
!86 = !{!"Simple C/C++ TBAA"}
!87 = !{!88, !90, !92, !93, !95, !96, !97, !99, !100, !101}
!88 = distinct !{!88, !89, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!89 = distinct !{!89, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!90 = distinct !{!90, !91, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!91 = distinct !{!91, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!92 = distinct !{!92, !91, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!93 = distinct !{!93, !94, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!94 = distinct !{!94, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!95 = distinct !{!95, !94, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!96 = distinct !{!96, !94, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!97 = distinct !{!97, !98, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!98 = distinct !{!98, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!99 = distinct !{!99, !98, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!100 = distinct !{!100, !98, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!101 = distinct !{!101, !102, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!102 = distinct !{!102, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"\01?sort@@YAXAIAM00@Z: %c"}
!105 = distinct !{!105, !"\01?sort@@YAXAIAM00@Z"}
!106 = !{!107, !108, !88, !90, !92, !93, !95, !96, !97, !99, !100, !101}
!107 = distinct !{!107, !105, !"\01?sort@@YAXAIAM00@Z: %a"}
!108 = distinct !{!108, !105, !"\01?sort@@YAXAIAM00@Z: %b"}
!109 = !{!108}
!110 = !{!107, !104, !88, !90, !92, !93, !95, !96, !97, !99, !100, !101}
!111 = !{!107}
!112 = !{!108, !104, !88, !90, !92, !93, !95, !96, !97, !99, !100, !101}
!113 = !{!114}
!114 = distinct !{!114, !115, !"\01?sort@@YAXAIAM00@Z: %c"}
!115 = distinct !{!115, !"\01?sort@@YAXAIAM00@Z"}
!116 = !{!117, !118, !88, !90, !92, !93, !95, !96, !97, !99, !100, !101}
!117 = distinct !{!117, !115, !"\01?sort@@YAXAIAM00@Z: %a"}
!118 = distinct !{!118, !115, !"\01?sort@@YAXAIAM00@Z: %b"}
!119 = !{!118}
!120 = !{!117, !114, !88, !90, !92, !93, !95, !96, !97, !99, !100, !101}
!121 = !{!117}
!122 = !{!118, !114, !88, !90, !92, !93, !95, !96, !97, !99, !100, !101}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 2}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}

