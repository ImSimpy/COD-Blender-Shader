;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 2   xyzw        3     NONE   float   xyz 
; TEXCOORD                 3   xyzw        4     NONE   float   xyzw
; TEXCOORD                 4   xyzw        5     NONE   float   xyzw
; TEXCOORD                 5   xy          6     NONE   float   xy  
; TEXCOORD                 8   xyzw        7     NONE   float   xyzw
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
; shader hash: df13e4533aea71f0d3348a8bd2667dd9
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
; Number of inputs: 39, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 28, 29, 30, 31, 32, 33, 34, 35, 36, 38 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 28, 29, 30, 31, 32, 33, 34, 35, 36, 38 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 30, 31, 32, 33, 34, 35, 36, 38 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 32, 33, 34, 35, 36, 38 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 32, 33, 34, 35, 36, 38 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 32, 33, 34, 35, 36, 38 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 32, 33, 34, 35, 36, 38 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 32, 33, 34, 35, 36, 38 }
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
  %30 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 0
  %69 = fmul fast float %68, %59
  %70 = fmul fast float %68, %60
  %71 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.f32 %71, 2
  %73 = extractvalue %dx.types.CBufRet.f32 %71, 3
  %74 = fmul fast float %69, 2.000000e+00
  %75 = fmul fast float %74, %72
  %76 = fmul fast float %70, 2.000000e+00
  %77 = fmul fast float %76, %73
  %78 = fsub fast float 1.000000e+00, %75
  %79 = fsub fast float 1.000000e+00, %77
  %80 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.f32 %80, 0
  %82 = extractvalue %dx.types.CBufRet.f32 %80, 1
  %83 = extractvalue %dx.types.CBufRet.f32 %80, 2
  %84 = fmul fast float %78, %81
  %85 = fmul fast float %78, %82
  %86 = fmul fast float %78, %83
  %87 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %88 = extractvalue %dx.types.CBufRet.f32 %87, 0
  %89 = extractvalue %dx.types.CBufRet.f32 %87, 1
  %90 = extractvalue %dx.types.CBufRet.f32 %87, 2
  %91 = fmul fast float %79, %88
  %92 = fmul fast float %79, %89
  %93 = fmul fast float %79, %90
  %94 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
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
  %107 = fmul fast float %47, %44
  %108 = fmul fast float %48, %43
  %109 = fsub fast float %107, %108
  %110 = fmul fast float %48, %42
  %111 = fmul fast float %46, %44
  %112 = fsub fast float %110, %111
  %113 = fmul fast float %46, %43
  %114 = fmul fast float %47, %42
  %115 = fsub fast float %113, %114
  %116 = fmul fast float %109, %45
  %117 = fmul fast float %112, %45
  %118 = fmul fast float %115, %45
  %119 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
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
  %129 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %26, float %128, float %127, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %130 = extractvalue %dx.types.ResRet.f32 %129, 0
  %131 = fsub fast float 1.000000e+00, %130
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.f32 %132, 0
  %134 = fcmp fast olt float %131, %133
  br label %138

; <label>:135                                     ; preds = %0
  %136 = icmp eq i32 %123, 0
  %137 = and i1 %122, %136
  br label %138

; <label>:138                                     ; preds = %135, %126
  %139 = phi i1 [ %134, %126 ], [ %137, %135 ]
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 2
  %142 = extractvalue %dx.types.CBufRet.f32 %140, 3
  %143 = fmul fast float %141, %69
  %144 = fmul fast float %142, %70
  %145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %146 = extractvalue %dx.types.ResRet.i32 %145, 0
  %147 = and i32 %146, 114688
  %148 = icmp ne i32 %147, 0
  %149 = select i1 %148, float %143, float 0.000000e+00
  %150 = select i1 %148, float %144, float 0.000000e+00
  %151 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %27, float %149, float %150, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %152 = extractvalue %dx.types.ResRet.f32 %151, 0
  %153 = fmul fast float %152, 2.550000e+02
  %154 = fptoui float %153 to i32
  %155 = select i1 %148, i32 %154, i32 0
  %156 = mul i32 %30, 208
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
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
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
  %198 = fadd fast float %53, %50
  %199 = fadd fast float %54, %51
  %200 = add i32 %31, 104
  %201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %200, i32 undef)  ; BufferLoad(srv,index,wot)
  %202 = extractvalue %dx.types.ResRet.i32 %201, 0
  %203 = extractvalue %dx.types.ResRet.i32 %201, 1
  %204 = bitcast i32 %202 to float
  %205 = bitcast i32 %203 to float
  %206 = fmul fast float %204, %53
  %207 = fmul fast float %205, %54
  %208 = call float @dx.op.unary.f32(i32 22, float %206)  ; Frc(value)
  %209 = call float @dx.op.unary.f32(i32 22, float %207)  ; Frc(value)
  %210 = add i32 %31, 88
  %211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %210, i32 undef)  ; BufferLoad(srv,index,wot)
  %212 = extractvalue %dx.types.ResRet.i32 %211, 0
  %213 = bitcast i32 %212 to float
  %214 = add i32 %31, 72
  %215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %214, i32 undef)  ; BufferLoad(srv,index,wot)
  %216 = extractvalue %dx.types.ResRet.i32 %215, 0
  %217 = extractvalue %dx.types.ResRet.i32 %215, 1
  %218 = extractvalue %dx.types.ResRet.i32 %215, 2
  %219 = extractvalue %dx.types.ResRet.i32 %215, 3
  %220 = bitcast i32 %216 to float
  %221 = bitcast i32 %217 to float
  %222 = bitcast i32 %218 to float
  %223 = bitcast i32 %219 to float
  %224 = add i32 %31, 168
  %225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %224, i32 undef)  ; BufferLoad(srv,index,wot)
  %226 = extractvalue %dx.types.ResRet.i32 %225, 0
  %227 = add i32 %226, 0
  %228 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %227, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %229 = fmul fast float %222, %208
  %230 = fmul fast float %223, %209
  %231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = extractvalue %dx.types.CBufRet.f32 %231, 3
  %233 = fmul fast float %232, %220
  %234 = fmul fast float %232, %221
  %235 = fadd fast float %233, %229
  %236 = fadd fast float %234, %230
  %237 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %228, %dx.types.Handle %66, float %235, float %236, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %238 = extractvalue %dx.types.ResRet.f32 %237, 0
  %239 = extractvalue %dx.types.ResRet.f32 %237, 1
  %240 = fmul fast float %238, 2.000000e+00
  %241 = fmul fast float %239, 2.000000e+00
  %242 = fadd fast float %240, -1.000000e+00
  %243 = fadd fast float %241, -1.000000e+00
  %244 = fmul fast float %242, %213
  %245 = fmul fast float %243, %213
  %246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %200, i32 undef)  ; BufferLoad(srv,index,wot)
  %247 = extractvalue %dx.types.ResRet.i32 %246, 2
  %248 = extractvalue %dx.types.ResRet.i32 %246, 3
  %249 = bitcast i32 %247 to float
  %250 = bitcast i32 %248 to float
  %251 = fmul fast float %249, %244
  %252 = fmul fast float %250, %245
  %253 = fadd fast float %251, %196
  %254 = fadd fast float %252, %197
  %255 = fadd fast float %198, %251
  %256 = fadd fast float %199, %252
  %257 = and i32 %159, 16
  %258 = icmp ne i32 %257, 0
  %259 = select i1 %258, float 1.000000e+00, float %58
  %260 = add i32 %31, 164
  %261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %260, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.i32 %261, 0
  %263 = add i32 %262, 0
  %264 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %263, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %266 = extractvalue %dx.types.CBufRet.f32 %265, 2
  %267 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %264, %dx.types.Handle %66, float %253, float %254, float undef, float undef, i32 0, i32 0, i32 undef, float %266, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %268 = extractvalue %dx.types.ResRet.f32 %267, 0
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %260, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = add i32 %270, 0
  %272 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %271, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %274 = extractvalue %dx.types.CBufRet.f32 %273, 2
  %275 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %272, %dx.types.Handle %66, float %255, float %256, float undef, float undef, i32 0, i32 0, i32 undef, float %274, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %276 = extractvalue %dx.types.ResRet.f32 %275, 0
  %277 = fsub fast float %276, %268
  %278 = fmul fast float %277, %52
  %279 = fadd fast float %278, %268
  %280 = fmul fast float %279, %259
  %281 = icmp eq i32 %257, 0
  br i1 %281, label %301, label %282, !dx.controlflow.hints !72

; <label>:282                                     ; preds = %195
  %283 = add i32 %156, 64
  %284 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.f32 %284, 0
  %286 = fadd fast float %285, 1.000000e+00
  %287 = fmul fast float %286, %58
  %288 = fsub fast float %287, %285
  %289 = fsub fast float %286, %288
  %290 = call float @dx.op.unary.f32(i32 7, float %289)  ; Saturate(value)
  %291 = fsub fast float 1.000000e+00, %287
  %292 = call float @dx.op.unary.f32(i32 7, float %291)  ; Saturate(value)
  %293 = fsub fast float %290, %292
  %294 = fsub fast float %280, %292
  %295 = fdiv fast float %294, %293
  %296 = call float @dx.op.unary.f32(i32 7, float %295)  ; Saturate(value)
  %297 = fmul fast float %296, 2.000000e+00
  %298 = fsub fast float 3.000000e+00, %297
  %299 = fmul fast float %296, %296
  %300 = fmul fast float %299, %298
  br label %301

; <label>:301                                     ; preds = %282, %195
  %302 = phi float [ %300, %282 ], [ %280, %195 ]
  %303 = fcmp fast ogt float %302, 0.000000e+00
  br i1 %303, label %305, label %304

; <label>:304                                     ; preds = %301
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %305

; <label>:305                                     ; preds = %304, %301
  %306 = call float @dx.op.unary.f32(i32 7, float %302)  ; Saturate(value)
  %307 = fmul fast float %69, 5.000000e-01
  %308 = fmul fast float %70, 5.000000e-01
  %309 = fptosi float %307 to i32
  %310 = fptosi float %308 to i32
  %311 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %309, i32 %310, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = lshr i32 %312, 18
  %314 = uitofp i32 %313 to float
  %315 = fmul fast float %314, 0x3F4C00EBA0000000
  %316 = call float @dx.op.unary.f32(i32 21, float %315)  ; Exp(value)
  %317 = fadd fast float %316, -1.000000e+00
  %318 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %319 = extractvalue %dx.types.Dimensions %318, 0
  %320 = sitofp i32 %319 to float
  %321 = extractvalue %dx.types.Dimensions %318, 1
  %322 = sitofp i32 %321 to float
  %323 = fcmp fast oge float %307, %320
  %324 = fcmp fast oge float %308, %322
  %325 = or i1 %323, %324
  %326 = select i1 %325, float 0x4197782600000000, float %317
  %327 = fsub fast float %326, %62
  %328 = fcmp fast ogt float %327, 0.000000e+00
  %329 = and i32 %155, -2
  %330 = icmp eq i32 %329, 2
  %331 = and i1 %330, %328
  %332 = xor i1 %328, true
  %333 = icmp eq i32 %155, 1
  %334 = and i1 %333, %332
  %335 = or i1 %331, %334
  %336 = and i32 %159, 262144
  %337 = icmp ne i32 %336, 0
  %338 = and i1 %337, %335
  %339 = xor i1 %335, true
  %340 = and i32 %159, 131072
  %341 = icmp ne i32 %340, 0
  %342 = and i1 %341, %339
  %343 = or i1 %338, %342
  br i1 %343, label %344, label %345

; <label>:344                                     ; preds = %305
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %345

; <label>:345                                     ; preds = %344, %305
  %346 = and i32 %159, 32
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %625, label %348, !dx.controlflow.hints !73

; <label>:348                                     ; preds = %345
  %349 = add i32 %156, 80
  %350 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %349, i32 undef)  ; BufferLoad(srv,index,wot)
  %351 = extractvalue %dx.types.ResRet.f32 %350, 0
  %352 = extractvalue %dx.types.ResRet.f32 %350, 1
  %353 = extractvalue %dx.types.ResRet.f32 %350, 2
  %354 = extractvalue %dx.types.ResRet.f32 %350, 3
  %355 = add i32 %156, 96
  %356 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.f32 %356, 0
  %358 = extractvalue %dx.types.ResRet.f32 %356, 1
  %359 = extractvalue %dx.types.ResRet.f32 %356, 2
  %360 = add i32 %156, 112
  %361 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.f32 %361, 0
  %363 = extractvalue %dx.types.ResRet.f32 %361, 1
  %364 = extractvalue %dx.types.ResRet.f32 %361, 2
  %365 = extractvalue %dx.types.ResRet.f32 %361, 3
  %366 = add i32 %156, 128
  %367 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %366, i32 undef)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.f32 %367, 0
  %369 = extractvalue %dx.types.ResRet.f32 %367, 1
  %370 = extractvalue %dx.types.ResRet.f32 %367, 2
  %371 = extractvalue %dx.types.ResRet.f32 %367, 3
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %157, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = and i32 %373, 4096
  %375 = icmp ne i32 %374, 0
  %376 = fcmp fast une float %359, 0.000000e+00
  %377 = and i32 %373, 64
  %378 = icmp ne i32 %377, 0
  %379 = and i32 %373, 128
  %380 = icmp eq i32 %379, 0
  %381 = and i32 %373, 2048
  %382 = icmp eq i32 %381, 0
  %383 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %14, i32 0)  ; GetDimensions(handle,mipLevel)
  %384 = extractvalue %dx.types.Dimensions %383, 0
  %385 = sitofp i32 %384 to float
  %386 = extractvalue %dx.types.Dimensions %383, 1
  %387 = sitofp i32 %386 to float
  %388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %389 = extractvalue %dx.types.CBufRet.f32 %388, 2
  %390 = extractvalue %dx.types.CBufRet.f32 %388, 3
  %391 = fmul fast float %389, %69
  %392 = fmul fast float %390, %70
  %393 = fmul fast float %391, %385
  %394 = fmul fast float %392, %387
  %395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %396 = extractvalue %dx.types.CBufRet.f32 %395, 1
  %397 = fsub fast float -0.000000e+00, %396
  %398 = fptoui float %397 to i32
  %399 = fptoui float %393 to i32
  %400 = fptoui float %394 to i32
  %401 = and i32 %398, 31
  %402 = lshr i32 %399, %401
  %403 = lshr i32 %400, %401
  %404 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 %398, i32 %402, i32 %403, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %405 = extractvalue %dx.types.ResRet.f32 %404, 0
  %406 = fcmp fast ogt float %405, -1.000000e+00
  %407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %408 = extractvalue %dx.types.CBufRet.f32 %407, 1
  %409 = select i1 %406, float %408, float 1.000000e+00
  %410 = fadd fast float %405, 1.000000e+00
  %411 = fmul fast float %409, %410
  %412 = call float @dx.op.unary.f32(i32 6, float %411)  ; FAbs(value)
  %413 = extractvalue %dx.types.CBufRet.f32 %407, 3
  %414 = fcmp fast oge float %412, %413
  %415 = select i1 %414, float 0x4197782600000000, float %412
  br i1 %382, label %505, label %416, !dx.controlflow.hints !74

; <label>:416                                     ; preds = %348
  %417 = fmul fast float %74, %389
  %418 = fmul fast float %76, %390
  %419 = fsub fast float 1.000000e+00, %417
  %420 = fsub fast float 1.000000e+00, %418
  %421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %422 = extractvalue %dx.types.CBufRet.f32 %421, 0
  %423 = extractvalue %dx.types.CBufRet.f32 %421, 1
  %424 = extractvalue %dx.types.CBufRet.f32 %421, 2
  %425 = fmul fast float %419, %422
  %426 = fmul fast float %419, %423
  %427 = fmul fast float %419, %424
  %428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %429 = extractvalue %dx.types.CBufRet.f32 %428, 0
  %430 = extractvalue %dx.types.CBufRet.f32 %428, 1
  %431 = extractvalue %dx.types.CBufRet.f32 %428, 2
  %432 = fmul fast float %420, %429
  %433 = fmul fast float %420, %430
  %434 = fmul fast float %420, %431
  %435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %436 = extractvalue %dx.types.CBufRet.f32 %435, 0
  %437 = extractvalue %dx.types.CBufRet.f32 %435, 1
  %438 = extractvalue %dx.types.CBufRet.f32 %435, 2
  %439 = fadd fast float %432, %436
  %440 = fadd fast float %439, %425
  %441 = fadd fast float %433, %437
  %442 = fadd fast float %441, %426
  %443 = fadd fast float %434, %438
  %444 = fadd fast float %443, %427
  %445 = fmul fast float %440, %415
  %446 = fmul fast float %442, %415
  %447 = fmul fast float %444, %415
  %448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %449 = extractvalue %dx.types.CBufRet.f32 %448, 0
  %450 = extractvalue %dx.types.CBufRet.f32 %448, 1
  %451 = extractvalue %dx.types.CBufRet.f32 %448, 2
  %452 = fsub fast float %449, %32
  %453 = fadd fast float %452, %445
  %454 = fsub fast float %450, %33
  %455 = fadd fast float %454, %446
  %456 = fsub fast float %451, %34
  %457 = fadd fast float %456, %447
  %458 = fmul fast float %35, %35
  %459 = call float @dx.op.dot3.f32(i32 55, float %453, float %455, float %457, float %453, float %455, float %457)  ; Dot3(ax,ay,az,bx,by,bz)
  %460 = fsub fast float %458, %459
  %461 = fmul fast float %358, %458
  %462 = fmul fast float %357, %458
  %463 = fcmp fast olt float %460, %461
  %464 = fcmp fast ogt float %460, %462
  %465 = or i1 %463, %464
  %466 = select i1 %465, float 0.000000e+00, float %460
  %467 = fsub fast float %357, %358
  %468 = fmul fast float %467, %458
  %469 = fsub fast float %466, %461
  %470 = fdiv fast float %469, %468
  %471 = call float @dx.op.unary.f32(i32 7, float %470)  ; Saturate(value)
  %472 = fmul fast float %471, 2.000000e+00
  %473 = fsub fast float 3.000000e+00, %472
  %474 = fmul fast float %471, %471
  %475 = fmul fast float %474, %473
  %476 = fmul fast float %362, %55
  %477 = fmul fast float %363, %56
  %478 = fmul fast float %364, %57
  %479 = fsub fast float %476, %368
  %480 = fsub fast float %477, %369
  %481 = fsub fast float %478, %370
  %482 = fsub fast float %365, %371
  %483 = fmul fast float %475, %479
  %484 = fmul fast float %475, %480
  %485 = fmul fast float %475, %481
  %486 = fmul fast float %475, %482
  %487 = fadd fast float %483, %368
  %488 = fadd fast float %484, %369
  %489 = fadd fast float %485, %370
  %490 = fadd fast float %486, %371
  %491 = fmul fast float %362, %36
  %492 = fmul fast float %363, %37
  %493 = fmul fast float %364, %38
  %494 = fsub fast float %491, %368
  %495 = fsub fast float %492, %369
  %496 = fsub fast float %493, %370
  %497 = fmul fast float %475, %494
  %498 = fmul fast float %475, %495
  %499 = fmul fast float %475, %496
  %500 = fadd fast float %497, %368
  %501 = fadd fast float %498, %369
  %502 = fadd fast float %499, %370
  %503 = fmul fast float %351, %351
  %504 = fmul fast float %503, %466
  br label %612

; <label>:505                                     ; preds = %348
  %506 = and i32 %373, 256
  %507 = icmp eq i32 %506, 0
  %508 = fsub fast float %415, %62
  br i1 %507, label %569, label %509

; <label>:509                                     ; preds = %505
  %510 = fadd fast float %357, %62
  %511 = fcmp fast olt float %415, %62
  %512 = fcmp fast ogt float %415, %510
  %513 = or i1 %511, %512
  %514 = select i1 %513, float 0.000000e+00, float %508
  %515 = call float @dx.op.unary.f32(i32 83, float %415)  ; DerivCoarseX(value)
  %516 = call float @dx.op.unary.f32(i32 84, float %415)  ; DerivCoarseY(value)
  %517 = fmul fast float %515, %515
  %518 = fmul fast float %516, %516
  %519 = fadd fast float %518, %517
  %520 = call float @dx.op.unary.f32(i32 24, float %519)  ; Sqrt(value)
  %521 = extractvalue %dx.types.CBufRet.f32 %395, 2
  %522 = fmul fast float %521, %520
  %523 = call float @dx.op.unary.f32(i32 7, float %522)  ; Saturate(value)
  %524 = fmul fast float %523, %358
  %525 = fdiv fast float %508, %524
  %526 = call float @dx.op.unary.f32(i32 7, float %525)  ; Saturate(value)
  %527 = fmul fast float %526, 2.000000e+00
  %528 = fsub fast float 3.000000e+00, %527
  %529 = fmul fast float %526, %526
  %530 = fmul fast float %529, %528
  %531 = fsub fast float %415, %510
  %532 = fadd fast float %531, %524
  %533 = fdiv fast float %532, %524
  %534 = call float @dx.op.unary.f32(i32 7, float %533)  ; Saturate(value)
  %535 = fmul fast float %534, 2.000000e+00
  %536 = fsub fast float 3.000000e+00, %535
  %537 = fmul fast float %534, %534
  %538 = fmul fast float %537, %536
  %539 = fsub fast float %530, %538
  %540 = fmul fast float %362, %55
  %541 = fmul fast float %363, %56
  %542 = fmul fast float %364, %57
  %543 = fsub fast float %540, %368
  %544 = fsub fast float %541, %369
  %545 = fsub fast float %542, %370
  %546 = fsub fast float %365, %371
  %547 = fmul fast float %539, %543
  %548 = fmul fast float %539, %544
  %549 = fmul fast float %539, %545
  %550 = fmul fast float %539, %546
  %551 = fadd fast float %547, %368
  %552 = fadd fast float %548, %369
  %553 = fadd fast float %549, %370
  %554 = fadd fast float %550, %371
  %555 = fmul fast float %362, %36
  %556 = fmul fast float %363, %37
  %557 = fmul fast float %364, %38
  %558 = fsub fast float %555, %368
  %559 = fsub fast float %556, %369
  %560 = fsub fast float %557, %370
  %561 = fmul fast float %539, %558
  %562 = fmul fast float %539, %559
  %563 = fmul fast float %539, %560
  %564 = fadd fast float %561, %368
  %565 = fadd fast float %562, %369
  %566 = fadd fast float %563, %370
  %567 = fmul fast float %514, %351
  %568 = call float @dx.op.unary.f32(i32 6, float %567)  ; FAbs(value)
  br label %612

; <label>:569                                     ; preds = %505
  br i1 %376, label %570, label %583

; <label>:570                                     ; preds = %569
  %571 = fdiv fast float 5.000000e+01, %35
  %572 = select i1 %378, float %571, float 1.000000e+00
  %573 = fmul fast float %572, %351
  %574 = fmul fast float %208, 2.000000e+00
  %575 = fmul fast float %209, 2.000000e+00
  %576 = fadd fast float %574, -1.000000e+00
  %577 = fadd fast float %575, -1.000000e+00
  %578 = call float @dx.op.dot2.f32(i32 54, float %576, float %577, float %576, float %577)  ; Dot2(ax,ay,bx,by)
  %579 = fmul fast float %359, %35
  %580 = fmul fast float %579, %578
  %581 = fsub fast float %508, %580
  %582 = fmul fast float %573, %581
  br label %612

; <label>:583                                     ; preds = %569
  br i1 %380, label %604, label %584

; <label>:584                                     ; preds = %583
  %585 = fmul fast float %35, 0x3F947AE140000000
  %586 = select i1 %378, float %585, float 1.000000e+00
  %587 = fdiv fast float 1.000000e+00, %586
  %588 = fmul fast float %586, %352
  %589 = fmul fast float %586, %353
  %590 = fmul fast float %587, %354
  %591 = call float @dx.op.unary.f32(i32 6, float %508)  ; FAbs(value)
  %592 = fcmp fast olt float %591, %588
  br i1 %592, label %593, label %597, !dx.controlflow.hints !75

; <label>:593                                     ; preds = %584
  %594 = fmul fast float %587, %351
  %595 = fmul fast float %594, %591
  %596 = call float @dx.op.unary.f32(i32 6, float %595)  ; FAbs(value)
  br label %612

; <label>:597                                     ; preds = %584
  %598 = fcmp fast ogt float %591, %589
  br i1 %598, label %599, label %612

; <label>:599                                     ; preds = %597
  %600 = fsub fast float %591, %589
  %601 = fmul fast float %590, %600
  %602 = call float @dx.op.unary.f32(i32 6, float %601)  ; FAbs(value)
  %603 = fsub fast float 1.000000e+00, %602
  br label %612

; <label>:604                                     ; preds = %583
  %605 = fdiv fast float 5.000000e+01, %35
  %606 = select i1 %378, float %605, float 1.000000e+00
  %607 = fmul fast float %606, %351
  %608 = call float @dx.op.unary.f32(i32 6, float %327)  ; FAbs(value)
  %609 = select i1 %375, float %608, float 0x47EFFFFFE0000000
  %610 = call float @dx.op.binary.f32(i32 36, float %508, float %609)  ; FMin(a,b)
  %611 = fmul fast float %607, %610
  br label %612

; <label>:612                                     ; preds = %604, %599, %597, %593, %570, %509, %416
  %613 = phi float [ %504, %416 ], [ %568, %509 ], [ %582, %570 ], [ %611, %604 ], [ %596, %593 ], [ %603, %599 ], [ %591, %597 ]
  %614 = phi float [ %500, %416 ], [ %564, %509 ], [ %36, %570 ], [ %36, %604 ], [ %36, %593 ], [ %36, %599 ], [ %36, %597 ]
  %615 = phi float [ %501, %416 ], [ %565, %509 ], [ %37, %570 ], [ %37, %604 ], [ %37, %593 ], [ %37, %599 ], [ %37, %597 ]
  %616 = phi float [ %502, %416 ], [ %566, %509 ], [ %38, %570 ], [ %38, %604 ], [ %38, %593 ], [ %38, %599 ], [ %38, %597 ]
  %617 = phi float [ %487, %416 ], [ %551, %509 ], [ %55, %570 ], [ %55, %604 ], [ %55, %593 ], [ %55, %599 ], [ %55, %597 ]
  %618 = phi float [ %488, %416 ], [ %552, %509 ], [ %56, %570 ], [ %56, %604 ], [ %56, %593 ], [ %56, %599 ], [ %56, %597 ]
  %619 = phi float [ %489, %416 ], [ %553, %509 ], [ %57, %570 ], [ %57, %604 ], [ %57, %593 ], [ %57, %599 ], [ %57, %597 ]
  %620 = phi float [ %490, %416 ], [ %554, %509 ], [ 1.000000e+00, %570 ], [ 1.000000e+00, %604 ], [ 1.000000e+00, %593 ], [ 1.000000e+00, %599 ], [ 1.000000e+00, %597 ]
  %621 = call float @dx.op.unary.f32(i32 7, float %613)  ; Saturate(value)
  %622 = fmul fast float %621, %58
  %623 = fmul fast float %620, %306
  %624 = fmul fast float %623, %621
  br label %625

; <label>:625                                     ; preds = %612, %345
  %626 = phi float [ %617, %612 ], [ %55, %345 ]
  %627 = phi float [ %618, %612 ], [ %56, %345 ]
  %628 = phi float [ %619, %612 ], [ %57, %345 ]
  %629 = phi float [ %624, %612 ], [ %306, %345 ]
  %630 = phi float [ %622, %612 ], [ %58, %345 ]
  %631 = phi float [ %614, %612 ], [ %36, %345 ]
  %632 = phi float [ %615, %612 ], [ %37, %345 ]
  %633 = phi float [ %616, %612 ], [ %38, %345 ]
  %634 = fmul fast float %631, %39
  %635 = fmul fast float %632, %39
  %636 = fmul fast float %633, %39
  %637 = fmul fast float %631, %49
  %638 = fmul fast float %632, %49
  %639 = fmul fast float %633, %49
  %640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %641 = extractvalue %dx.types.CBufRet.f32 %640, 2
  %642 = fptosi float %62 to i32
  %643 = sitofp i32 %642 to float
  %644 = fadd fast float %641, %643
  %645 = fmul fast float %644, 0x3FE3C6EF40000000
  %646 = frem fast float %69, 2.560000e+02
  %647 = frem fast float %70, 2.560000e+02
  %648 = fptoui float %646 to i32
  %649 = fptoui float %647 to i32
  %650 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %648, i32 %649, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %651 = extractvalue %dx.types.ResRet.f32 %650, 0
  %652 = fadd fast float %651, %645
  %653 = call float @dx.op.unary.f32(i32 22, float %652)  ; Frc(value)
  %654 = and i32 %159, 1
  %655 = icmp eq i32 %654, 0
  br i1 %655, label %716, label %656, !dx.controlflow.hints !76

; <label>:656                                     ; preds = %625
  %657 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %156, i32 undef)  ; BufferLoad(srv,index,wot)
  %658 = extractvalue %dx.types.ResRet.f32 %657, 2
  %659 = extractvalue %dx.types.ResRet.f32 %657, 3
  %660 = add i32 %156, 16
  %661 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %660, i32 undef)  ; BufferLoad(srv,index,wot)
  %662 = extractvalue %dx.types.ResRet.f32 %661, 0
  %663 = extractvalue %dx.types.ResRet.f32 %661, 1
  %664 = extractvalue %dx.types.ResRet.f32 %661, 2
  %665 = add i32 %156, 32
  %666 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %665, i32 undef)  ; BufferLoad(srv,index,wot)
  %667 = extractvalue %dx.types.ResRet.f32 %666, 0
  %668 = extractvalue %dx.types.ResRet.f32 %666, 1
  %669 = extractvalue %dx.types.ResRet.f32 %666, 2
  %670 = and i32 %159, 2
  %671 = icmp eq i32 %670, 0
  %672 = call float @dx.op.dot3.f32(i32 55, float %46, float %47, float %48, float %46, float %47, float %48)  ; Dot3(ax,ay,az,bx,by,bz)
  %673 = call float @dx.op.unary.f32(i32 25, float %672)  ; Rsqrt(value)
  %674 = fmul fast float %673, %46
  %675 = fmul fast float %673, %47
  %676 = fmul fast float %673, %48
  %677 = call float @dx.op.dot3.f32(i32 55, float %104, float %105, float %106, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %678 = call float @dx.op.unary.f32(i32 25, float %677)  ; Rsqrt(value)
  %679 = fmul fast float %678, %104
  %680 = fmul fast float %678, %105
  %681 = fmul fast float %678, %106
  %682 = call float @dx.op.dot3.f32(i32 55, float %679, float %680, float %681, float %674, float %675, float %676)  ; Dot3(ax,ay,az,bx,by,bz)
  %683 = fmul fast float %682, %682
  %684 = fmul fast float %683, %658
  %685 = fadd fast float %684, %659
  %686 = call float @dx.op.unary.f32(i32 7, float %685)  ; Saturate(value)
  br i1 %671, label %687, label %697, !dx.controlflow.hints !77

; <label>:687                                     ; preds = %656
  %688 = extractvalue %dx.types.ResRet.f32 %657, 1
  %689 = extractvalue %dx.types.ResRet.f32 %657, 0
  %690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %691 = extractvalue %dx.types.CBufRet.f32 %690, 3
  %692 = fmul fast float %691, %677
  %693 = fsub fast float %689, %692
  %694 = fmul fast float %693, %688
  %695 = call float @dx.op.unary.f32(i32 7, float %694)  ; Saturate(value)
  %696 = fmul fast float %695, %686
  br label %697

; <label>:697                                     ; preds = %687, %656
  %698 = phi float [ %696, %687 ], [ %686, %656 ]
  %699 = fsub fast float %662, %667
  %700 = fsub fast float %663, %668
  %701 = fsub fast float %664, %669
  %702 = fmul fast float %698, %699
  %703 = fmul fast float %698, %700
  %704 = fmul fast float %698, %701
  %705 = fadd fast float %702, %667
  %706 = fadd fast float %703, %668
  %707 = fadd fast float %704, %669
  %708 = fmul fast float %705, %626
  %709 = fmul fast float %706, %627
  %710 = fmul fast float %707, %628
  %711 = fmul fast float %705, %634
  %712 = fmul fast float %706, %635
  %713 = fmul fast float %707, %636
  %714 = fmul fast float %698, %629
  %715 = fmul fast float %698, %630
  br label %716

; <label>:716                                     ; preds = %697, %625
  %717 = phi float [ %708, %697 ], [ %626, %625 ]
  %718 = phi float [ %709, %697 ], [ %627, %625 ]
  %719 = phi float [ %710, %697 ], [ %628, %625 ]
  %720 = phi float [ %714, %697 ], [ %629, %625 ]
  %721 = phi float [ %715, %697 ], [ %630, %625 ]
  %722 = phi float [ %711, %697 ], [ %634, %625 ]
  %723 = phi float [ %712, %697 ], [ %635, %625 ]
  %724 = phi float [ %713, %697 ], [ %636, %625 ]
  %725 = add i32 %31, 152
  %726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %725, i32 undef)  ; BufferLoad(srv,index,wot)
  %727 = extractvalue %dx.types.ResRet.i32 %726, 0
  %728 = add i32 %727, 0
  %729 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %728, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %730 = add i32 %31, 24
  %731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %730, i32 undef)  ; BufferLoad(srv,index,wot)
  %732 = extractvalue %dx.types.ResRet.i32 %731, 0
  %733 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %729, %dx.types.Handle %65, float %253, float %254, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %734 = extractvalue %dx.types.ResRet.f32 %733, 0
  %735 = extractvalue %dx.types.ResRet.f32 %733, 1
  %736 = extractvalue %dx.types.ResRet.f32 %733, 2
  %737 = extractvalue %dx.types.ResRet.f32 %733, 3
  %738 = and i32 %732, 255
  %739 = uitofp i32 %738 to float
  %740 = lshr i32 %732, 8
  %741 = and i32 %740, 255
  %742 = uitofp i32 %741 to float
  %743 = fmul fast float %737, %739
  %744 = fadd fast float %743, %742
  %745 = add i32 %31, 56
  %746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %745, i32 undef)  ; BufferLoad(srv,index,wot)
  %747 = extractvalue %dx.types.ResRet.i32 %746, 0
  %748 = and i32 %747, 255
  %749 = uitofp i32 %748 to float
  %750 = fmul fast float %749, 0x3F70101020000000
  %751 = lshr i32 %747, 8
  %752 = and i32 %751, 255
  %753 = uitofp i32 %752 to float
  %754 = fmul fast float %753, 0x3F70101020000000
  %755 = lshr i32 %747, 16
  %756 = and i32 %755, 255
  %757 = uitofp i32 %756 to float
  %758 = fmul fast float %757, 0x3F70101020000000
  %759 = fmul fast float %750, %750
  %760 = fmul fast float %759, %734
  %761 = fmul fast float %754, %754
  %762 = fmul fast float %761, %735
  %763 = fmul fast float %758, %758
  %764 = fmul fast float %763, %736
  %765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %725, i32 undef)  ; BufferLoad(srv,index,wot)
  %766 = extractvalue %dx.types.ResRet.i32 %765, 0
  %767 = add i32 %766, 0
  %768 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %767, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %730, i32 undef)  ; BufferLoad(srv,index,wot)
  %770 = extractvalue %dx.types.ResRet.i32 %769, 0
  %771 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %768, %dx.types.Handle %65, float %255, float %256, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %772 = extractvalue %dx.types.ResRet.f32 %771, 0
  %773 = extractvalue %dx.types.ResRet.f32 %771, 1
  %774 = extractvalue %dx.types.ResRet.f32 %771, 2
  %775 = extractvalue %dx.types.ResRet.f32 %771, 3
  %776 = and i32 %770, 255
  %777 = uitofp i32 %776 to float
  %778 = lshr i32 %770, 8
  %779 = and i32 %778, 255
  %780 = uitofp i32 %779 to float
  %781 = fmul fast float %775, %777
  %782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %745, i32 undef)  ; BufferLoad(srv,index,wot)
  %783 = extractvalue %dx.types.ResRet.i32 %782, 0
  %784 = and i32 %783, 255
  %785 = uitofp i32 %784 to float
  %786 = fmul fast float %785, 0x3F70101020000000
  %787 = lshr i32 %783, 8
  %788 = and i32 %787, 255
  %789 = uitofp i32 %788 to float
  %790 = fmul fast float %789, 0x3F70101020000000
  %791 = lshr i32 %783, 16
  %792 = and i32 %791, 255
  %793 = uitofp i32 %792 to float
  %794 = fmul fast float %793, 0x3F70101020000000
  %795 = fmul fast float %786, %786
  %796 = fmul fast float %795, %772
  %797 = fmul fast float %790, %790
  %798 = fmul fast float %797, %773
  %799 = fmul fast float %794, %794
  %800 = fmul fast float %799, %774
  %801 = fsub fast float %796, %760
  %802 = fsub fast float %798, %762
  %803 = fsub fast float %800, %764
  %804 = fmul fast float %801, %52
  %805 = fmul fast float %802, %52
  %806 = fmul fast float %803, %52
  %807 = fadd fast float %804, %760
  %808 = fadd fast float %805, %762
  %809 = fadd fast float %806, %764
  %810 = fsub fast float %780, %744
  %811 = fadd fast float %810, %781
  %812 = fmul fast float %811, %52
  %813 = fadd fast float %812, %744
  %814 = fmul fast float %813, 0x3F70101000000000
  %815 = fmul fast float %807, %717
  %816 = fmul fast float %808, %718
  %817 = fmul fast float %809, %719
  %818 = add i32 %31, 28
  %819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %818, i32 undef)  ; BufferLoad(srv,index,wot)
  %820 = extractvalue %dx.types.ResRet.i32 %819, 0
  %821 = add i32 %31, 156
  %822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %821, i32 undef)  ; BufferLoad(srv,index,wot)
  %823 = extractvalue %dx.types.ResRet.i32 %822, 0
  %824 = add i32 %823, 0
  %825 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %824, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %826 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %825, %dx.types.Handle %65, float %253, float %254, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %827 = extractvalue %dx.types.ResRet.f32 %826, 0
  %828 = extractvalue %dx.types.ResRet.f32 %826, 1
  %829 = extractvalue %dx.types.ResRet.f32 %826, 3
  %830 = and i32 %820, 255
  %831 = uitofp i32 %830 to float
  %832 = lshr i32 %820, 8
  %833 = and i32 %832, 255
  %834 = uitofp i32 %833 to float
  %835 = lshr i32 %820, 16
  %836 = and i32 %835, 255
  %837 = uitofp i32 %836 to float
  %838 = fmul fast float %837, 0x3F70101000000000
  %839 = fmul fast float %827, %831
  %840 = fadd fast float %839, %834
  %841 = fadd fast float %828, -5.000000e-01
  %842 = fadd fast float %829, -5.000000e-01
  %843 = fmul fast float %841, %838
  %844 = fmul fast float %842, %838
  %845 = fadd fast float %843, 5.000000e-01
  %846 = fadd fast float %844, 5.000000e-01
  %847 = fmul fast float %845, 2.000000e+00
  %848 = fadd fast float %847, -1.000000e+00
  %849 = fmul fast float %846, 2.000000e+00
  %850 = fadd fast float %849, -1.000000e+00
  %851 = fadd fast float %848, %850
  %852 = fmul fast float %851, 5.000000e-01
  %853 = fsub fast float %848, %850
  %854 = fmul fast float %853, 5.000000e-01
  %855 = call float @dx.op.unary.f32(i32 6, float %852)  ; FAbs(value)
  %856 = fsub fast float 1.000000e+00, %855
  %857 = call float @dx.op.unary.f32(i32 6, float %854)  ; FAbs(value)
  %858 = fsub fast float %856, %857
  %859 = call float @dx.op.dot3.f32(i32 55, float %852, float %854, float %858, float %852, float %854, float %858)  ; Dot3(ax,ay,az,bx,by,bz)
  %860 = call float @dx.op.unary.f32(i32 25, float %859)  ; Rsqrt(value)
  %861 = fmul fast float %852, %860
  %862 = fmul fast float %854, %860
  %863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %818, i32 undef)  ; BufferLoad(srv,index,wot)
  %864 = extractvalue %dx.types.ResRet.i32 %863, 0
  %865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %821, i32 undef)  ; BufferLoad(srv,index,wot)
  %866 = extractvalue %dx.types.ResRet.i32 %865, 0
  %867 = add i32 %866, 0
  %868 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %867, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %869 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %868, %dx.types.Handle %65, float %255, float %256, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %870 = extractvalue %dx.types.ResRet.f32 %869, 0
  %871 = extractvalue %dx.types.ResRet.f32 %869, 1
  %872 = extractvalue %dx.types.ResRet.f32 %869, 3
  %873 = and i32 %864, 255
  %874 = uitofp i32 %873 to float
  %875 = lshr i32 %864, 8
  %876 = and i32 %875, 255
  %877 = uitofp i32 %876 to float
  %878 = lshr i32 %864, 16
  %879 = and i32 %878, 255
  %880 = uitofp i32 %879 to float
  %881 = fmul fast float %880, 0x3F70101000000000
  %882 = fmul fast float %870, %874
  %883 = fadd fast float %871, -5.000000e-01
  %884 = fadd fast float %872, -5.000000e-01
  %885 = fmul fast float %883, %881
  %886 = fmul fast float %884, %881
  %887 = fadd fast float %885, 5.000000e-01
  %888 = fadd fast float %886, 5.000000e-01
  %889 = fmul fast float %887, 2.000000e+00
  %890 = fadd fast float %889, -1.000000e+00
  %891 = fmul fast float %888, 2.000000e+00
  %892 = fadd fast float %891, -1.000000e+00
  %893 = fadd fast float %890, %892
  %894 = fmul fast float %893, 5.000000e-01
  %895 = fsub fast float %890, %892
  %896 = fmul fast float %895, 5.000000e-01
  %897 = call float @dx.op.unary.f32(i32 6, float %894)  ; FAbs(value)
  %898 = fsub fast float 1.000000e+00, %897
  %899 = call float @dx.op.unary.f32(i32 6, float %896)  ; FAbs(value)
  %900 = fsub fast float %898, %899
  %901 = call float @dx.op.dot3.f32(i32 55, float %894, float %896, float %900, float %894, float %896, float %900)  ; Dot3(ax,ay,az,bx,by,bz)
  %902 = call float @dx.op.unary.f32(i32 25, float %901)  ; Rsqrt(value)
  %903 = fmul fast float %894, %902
  %904 = fmul fast float %896, %902
  %905 = fsub fast float %903, %861
  %906 = fsub fast float %904, %862
  %907 = fmul fast float %905, %52
  %908 = fmul fast float %906, %52
  %909 = fadd fast float %907, %861
  %910 = fadd fast float %908, %862
  %911 = fsub fast float %877, %840
  %912 = fadd fast float %911, %882
  %913 = fmul fast float %912, %52
  %914 = fadd fast float %913, %840
  %915 = fmul fast float %914, 0x3F70101000000000
  %916 = add i32 %31, 160
  %917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %918 = extractvalue %dx.types.ResRet.i32 %917, 0
  %919 = add i32 %918, 0
  %920 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %919, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %921 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %920, %dx.types.Handle %65, float %253, float %254, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %922 = extractvalue %dx.types.ResRet.f32 %921, 0
  %923 = extractvalue %dx.types.ResRet.f32 %921, 1
  %924 = extractvalue %dx.types.ResRet.f32 %921, 2
  %925 = add i32 %31, 44
  %926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %927 = extractvalue %dx.types.ResRet.i32 %926, 0
  %928 = shl i32 %927, 4
  %929 = and i32 %928, 32752
  %930 = call float @dx.op.legacyF16ToF32(i32 131, i32 %929)  ; LegacyF16ToF32(value)
  %931 = lshr i32 %927, 7
  %932 = and i32 %931, 32752
  %933 = call float @dx.op.legacyF16ToF32(i32 131, i32 %932)  ; LegacyF16ToF32(value)
  %934 = lshr i32 %927, 22
  %935 = shl nuw nsw i32 %934, 5
  %936 = call float @dx.op.legacyF16ToF32(i32 131, i32 %935)  ; LegacyF16ToF32(value)
  %937 = fmul fast float %930, %922
  %938 = fmul fast float %933, %923
  %939 = fmul fast float %936, %924
  %940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %941 = extractvalue %dx.types.CBufRet.f32 %940, 0
  %942 = fmul fast float %937, %941
  %943 = fmul fast float %938, %941
  %944 = fmul fast float %939, %941
  %945 = add i32 %31, 48
  %946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %945, i32 undef)  ; BufferLoad(srv,index,wot)
  %947 = extractvalue %dx.types.ResRet.i32 %946, 0
  %948 = lshr i32 %947, 22
  %949 = shl nuw nsw i32 %948, 5
  %950 = call float @dx.op.legacyF16ToF32(i32 131, i32 %949)  ; LegacyF16ToF32(value)
  %951 = fmul fast float %950, %942
  %952 = select i1 %139, float %951, float %942
  %953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %954 = extractvalue %dx.types.ResRet.i32 %953, 0
  %955 = add i32 %954, 0
  %956 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %955, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %957 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %956, %dx.types.Handle %65, float %255, float %256, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %958 = extractvalue %dx.types.ResRet.f32 %957, 0
  %959 = extractvalue %dx.types.ResRet.f32 %957, 1
  %960 = extractvalue %dx.types.ResRet.f32 %957, 2
  %961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %962 = extractvalue %dx.types.ResRet.i32 %961, 0
  %963 = shl i32 %962, 4
  %964 = and i32 %963, 32752
  %965 = call float @dx.op.legacyF16ToF32(i32 131, i32 %964)  ; LegacyF16ToF32(value)
  %966 = lshr i32 %962, 7
  %967 = and i32 %966, 32752
  %968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %967)  ; LegacyF16ToF32(value)
  %969 = lshr i32 %962, 22
  %970 = shl nuw nsw i32 %969, 5
  %971 = call float @dx.op.legacyF16ToF32(i32 131, i32 %970)  ; LegacyF16ToF32(value)
  %972 = fmul fast float %965, %958
  %973 = fmul fast float %968, %959
  %974 = fmul fast float %971, %960
  %975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %976 = extractvalue %dx.types.CBufRet.f32 %975, 0
  %977 = fmul fast float %972, %976
  %978 = fmul fast float %973, %976
  %979 = fmul fast float %974, %976
  %980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %945, i32 undef)  ; BufferLoad(srv,index,wot)
  %981 = extractvalue %dx.types.ResRet.i32 %980, 0
  %982 = lshr i32 %981, 22
  %983 = shl nuw nsw i32 %982, 5
  %984 = call float @dx.op.legacyF16ToF32(i32 131, i32 %983)  ; LegacyF16ToF32(value)
  %985 = fmul fast float %984, %977
  %986 = select i1 %139, float %985, float %977
  %987 = fsub fast float %986, %952
  %988 = fsub fast float %978, %943
  %989 = fsub fast float %979, %944
  %990 = fmul fast float %987, %52
  %991 = fmul fast float %988, %52
  %992 = fmul fast float %989, %52
  %993 = fadd fast float %990, %952
  %994 = fadd fast float %991, %943
  %995 = fadd fast float %992, %944
  %996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %997 = extractvalue %dx.types.CBufRet.f32 %996, 3
  %998 = fcmp fast ogt float %997, 0.000000e+00
  %999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1000 = extractvalue %dx.types.CBufRet.f32 %999, 1
  br i1 %998, label %1001, label %1026

; <label>:1001                                    ; preds = %716
  %1002 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %40, float %41, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1003 = extractvalue %dx.types.ResRet.f32 %1002, 0
  %1004 = extractvalue %dx.types.ResRet.f32 %1002, 1
  %1005 = extractvalue %dx.types.ResRet.f32 %1002, 2
  %1006 = extractvalue %dx.types.ResRet.f32 %1002, 3
  %1007 = fmul fast float %1000, %1006
  %1008 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %40, float %41, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1009 = extractvalue %dx.types.ResRet.f32 %1008, 0
  %1010 = extractvalue %dx.types.ResRet.f32 %1008, 1
  %1011 = extractvalue %dx.types.ResRet.f32 %1008, 2
  %1012 = extractvalue %dx.types.ResRet.f32 %1008, 3
  %1013 = fmul fast float %1000, %1009
  %1014 = fmul fast float %1000, %1010
  %1015 = fmul fast float %1000, %1011
  %1016 = fmul fast float %1000, %1012
  %1017 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %40, float %41, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1018 = extractvalue %dx.types.ResRet.f32 %1017, 0
  %1019 = extractvalue %dx.types.ResRet.f32 %1017, 1
  %1020 = extractvalue %dx.types.ResRet.f32 %1017, 2
  %1021 = extractvalue %dx.types.ResRet.f32 %1017, 3
  %1022 = fmul fast float %1000, %1018
  %1023 = fmul fast float %1000, %1019
  %1024 = fmul fast float %1000, %1020
  %1025 = fmul fast float %1000, %1021
  br label %1031

; <label>:1026                                    ; preds = %716
  %1027 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %26, float %40, float %41, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1028 = extractvalue %dx.types.ResRet.f32 %1027, 0
  %1029 = extractvalue %dx.types.ResRet.f32 %1027, 1
  %1030 = extractvalue %dx.types.ResRet.f32 %1027, 2
  br label %1031

; <label>:1031                                    ; preds = %1026, %1001
  %1032 = phi float [ %1022, %1001 ], [ 0.000000e+00, %1026 ]
  %1033 = phi float [ %1023, %1001 ], [ 0.000000e+00, %1026 ]
  %1034 = phi float [ %1024, %1001 ], [ 0.000000e+00, %1026 ]
  %1035 = phi float [ %1025, %1001 ], [ 0.000000e+00, %1026 ]
  %1036 = phi float [ %1013, %1001 ], [ 0.000000e+00, %1026 ]
  %1037 = phi float [ %1014, %1001 ], [ 0.000000e+00, %1026 ]
  %1038 = phi float [ %1015, %1001 ], [ 0.000000e+00, %1026 ]
  %1039 = phi float [ %1016, %1001 ], [ 0.000000e+00, %1026 ]
  %1040 = phi float [ %1003, %1001 ], [ %1028, %1026 ]
  %1041 = phi float [ %1004, %1001 ], [ %1029, %1026 ]
  %1042 = phi float [ %1005, %1001 ], [ %1030, %1026 ]
  %1043 = phi float [ %1007, %1001 ], [ 0.000000e+00, %1026 ]
  %1044 = fmul float %1000, %1042
  %1045 = fmul float %1000, %1041
  %1046 = fmul float %1000, %1040
  %1047 = call float @dx.op.dot2.f32(i32 54, float %909, float %910, float %909, float %910)  ; Dot2(ax,ay,bx,by)
  %1048 = fsub fast float 1.000000e+00, %1047
  %1049 = call float @dx.op.unary.f32(i32 7, float %1048)  ; Saturate(value)
  %1050 = call float @dx.op.unary.f32(i32 24, float %1049)  ; Sqrt(value)
  %1051 = fmul fast float %1050, %46
  %1052 = fmul fast float %1050, %47
  %1053 = fmul fast float %1050, %48
  %1054 = fmul fast float %909, %42
  %1055 = fmul fast float %909, %43
  %1056 = fmul fast float %909, %44
  %1057 = fmul fast float %116, %910
  %1058 = fmul fast float %117, %910
  %1059 = fmul fast float %118, %910
  %1060 = fadd fast float %1057, %1054
  %1061 = fadd fast float %1060, %1051
  %1062 = fadd fast float %1058, %1055
  %1063 = fadd fast float %1062, %1052
  %1064 = fadd fast float %1059, %1056
  %1065 = fadd fast float %1064, %1053
  %1066 = call float @dx.op.dot3.f32(i32 55, float %1061, float %1063, float %1065, float %1061, float %1063, float %1065)  ; Dot3(ax,ay,az,bx,by,bz)
  %1067 = call float @dx.op.unary.f32(i32 25, float %1066)  ; Rsqrt(value)
  %1068 = fmul fast float %1061, %1067
  %1069 = fmul fast float %1063, %1067
  %1070 = fmul fast float %1065, %1067
  %1071 = call float @dx.op.dot3.f32(i32 55, float %104, float %105, float %106, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %1072 = call float @dx.op.unary.f32(i32 25, float %1071)  ; Rsqrt(value)
  %1073 = fmul fast float %1072, %104
  %1074 = fmul fast float %1072, %105
  %1075 = fmul fast float %1072, %106
  %1076 = fsub fast float -0.000000e+00, %1073
  %1077 = fsub fast float -0.000000e+00, %1074
  %1078 = fsub fast float -0.000000e+00, %1075
  %1079 = fadd fast float %814, 0xBFB99999A0000000
  %1080 = call float @dx.op.unary.f32(i32 7, float %1079)  ; Saturate(value)
  %1081 = fmul fast float %1080, 0x3FF1C71C80000000
  %1082 = call float @dx.op.binary.f32(i32 36, float %814, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1083 = fsub fast float 1.000000e+00, %1081
  %1084 = call float @dx.op.unary.f32(i32 7, float %1083)  ; Saturate(value)
  %1085 = fmul fast float %1084, %815
  %1086 = fmul fast float %1084, %816
  %1087 = fmul fast float %1084, %817
  %1088 = call float @dx.op.unary.f32(i32 7, float %1085)  ; Saturate(value)
  %1089 = call float @dx.op.unary.f32(i32 7, float %1086)  ; Saturate(value)
  %1090 = call float @dx.op.unary.f32(i32 7, float %1087)  ; Saturate(value)
  %1091 = fmul fast float %1081, %815
  %1092 = fmul fast float %1081, %816
  %1093 = fmul fast float %1081, %817
  %1094 = fadd fast float %1091, %1082
  %1095 = fadd fast float %1092, %1082
  %1096 = fadd fast float %1093, %1082
  %1097 = call float @dx.op.unary.f32(i32 7, float %1094)  ; Saturate(value)
  %1098 = call float @dx.op.unary.f32(i32 7, float %1095)  ; Saturate(value)
  %1099 = call float @dx.op.unary.f32(i32 7, float %1096)  ; Saturate(value)
  %1100 = call float @dx.op.unary.f32(i32 7, float %915)  ; Saturate(value)
  %1101 = fmul fast float %993, %722
  %1102 = fmul fast float %994, %723
  %1103 = fmul fast float %995, %724
  %1104 = call float @dx.op.dot3.f32(i32 55, float %1101, float %1102, float %1103, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1105 = select i1 %139, float 0.000000e+00, float %1101
  %1106 = select i1 %139, float %1104, float %1102
  %1107 = select i1 %139, float 0.000000e+00, float %1103
  %1108 = fmul fast float %637, %993
  %1109 = fmul fast float %638, %994
  %1110 = fmul fast float %639, %995
  %1111 = call float @dx.op.dot3.f32(i32 55, float %1088, float %1089, float %1090, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1112 = add i32 %31, 32
  %1113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1112, i32 undef)  ; BufferLoad(srv,index,wot)
  %1114 = extractvalue %dx.types.ResRet.i32 %1113, 0
  %1115 = and i32 %1114, 255
  %1116 = uitofp i32 %1115 to float
  %1117 = lshr i32 %1114, 8
  %1118 = and i32 %1117, 255
  %1119 = uitofp i32 %1118 to float
  %1120 = fmul fast float %1119, %1111
  %1121 = fadd fast float %1120, %1116
  %1122 = fmul fast float %1121, 0x3F70101020000000
  %1123 = call float @dx.op.unary.f32(i32 7, float %1122)  ; Saturate(value)
  %1124 = and i32 %159, 8192
  %1125 = icmp eq i32 %1124, 0
  %1126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1127 = extractvalue %dx.types.CBufRet.f32 %1126, 0
  br i1 %1125, label %1134, label %1128, !dx.controlflow.hints !78

; <label>:1128                                    ; preds = %1031
  %1129 = add i32 %156, 176
  %1130 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1131 = extractvalue %dx.types.ResRet.f32 %1130, 0
  %1132 = fcmp fast oge float %1131, 0.000000e+00
  %1133 = select i1 %1132, float %1131, float %1127
  br label %1141

; <label>:1134                                    ; preds = %1031
  %1135 = add i32 %31, 136
  %1136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1135, i32 undef)  ; BufferLoad(srv,index,wot)
  %1137 = extractvalue %dx.types.ResRet.i32 %1136, 0
  %1138 = bitcast i32 %1137 to float
  %1139 = fcmp fast oge float %1138, 0.000000e+00
  %1140 = select i1 %1139, float %1138, float %1127
  br label %1141

; <label>:1141                                    ; preds = %1134, %1128
  %1142 = phi float [ %1133, %1128 ], [ %1140, %1134 ]
  %1143 = fmul fast float %721, %720
  %1144 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %309, i32 %310, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1145 = extractvalue %dx.types.ResRet.i32 %1144, 0
  %1146 = lshr i32 %1145, 18
  %1147 = uitofp i32 %1146 to float
  %1148 = fmul fast float %1147, 0x3F4C00EBA0000000
  %1149 = call float @dx.op.unary.f32(i32 21, float %1148)  ; Exp(value)
  %1150 = fadd fast float %1149, -1.000000e+00
  %1151 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %1152 = extractvalue %dx.types.Dimensions %1151, 0
  %1153 = sitofp i32 %1152 to float
  %1154 = extractvalue %dx.types.Dimensions %1151, 1
  %1155 = sitofp i32 %1154 to float
  %1156 = fcmp fast oge float %307, %1153
  %1157 = fcmp fast oge float %308, %1155
  %1158 = or i1 %1156, %1157
  %1159 = select i1 %1158, float 0x4197782600000000, float %1150
  %1160 = icmp eq i32 %155, 3
  %1161 = fcmp fast ogt float %62, %1159
  %1162 = and i1 %333, %1161
  %1163 = or i1 %1160, %1162
  %1164 = icmp eq i32 %155, 2
  %1165 = fcmp fast ole float %62, %1159
  %1166 = and i1 %1164, %1165
  %1167 = or i1 %1166, %1163
  %1168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %1169 = extractvalue %dx.types.CBufRet.f32 %1168, 3
  %1170 = fcmp fast ogt float %1169, 0.000000e+00
  br i1 %1170, label %1171, label %1178

; <label>:1171                                    ; preds = %1141
  %1172 = fmul fast float %1069, 0xBFDF454380000000
  %1173 = fmul fast float %1070, 0x3FDF454380000000
  %1174 = fmul fast float %1068, 0xBFDF454380000000
  %1175 = call float @dx.op.dot4.f32(i32 56, float %1046, float %1045, float %1044, float %1043, float 0x3FD20DD760000000, float %1172, float %1173, float %1174)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1176 = call float @dx.op.dot4.f32(i32 56, float %1036, float %1037, float %1038, float %1039, float 0x3FD20DD760000000, float %1172, float %1173, float %1174)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1177 = call float @dx.op.dot4.f32(i32 56, float %1032, float %1033, float %1034, float %1035, float 0x3FD20DD760000000, float %1172, float %1173, float %1174)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %1178

; <label>:1178                                    ; preds = %1171, %1141
  %1179 = phi float [ %1175, %1171 ], [ %1046, %1141 ]
  %1180 = phi float [ %1176, %1171 ], [ %1045, %1141 ]
  %1181 = phi float [ %1177, %1171 ], [ %1044, %1141 ]
  %1182 = fmul fast float %1108, %1179
  %1183 = fmul fast float %1109, %1180
  %1184 = fmul fast float %1110, %1181
  %1185 = fadd fast float %1182, %1105
  %1186 = fadd fast float %1183, %1106
  %1187 = fadd fast float %1184, %1107
  %1188 = fmul fast float %1185, %720
  %1189 = fmul fast float %1186, %720
  %1190 = fmul fast float %1187, %720
  %1191 = call float @dx.op.dot3.f32(i32 55, float %1068, float %1069, float %1070, float %1076, float %1077, float %1078)  ; Dot3(ax,ay,az,bx,by,bz)
  %1192 = call float @dx.op.unary.f32(i32 7, float %1191)  ; Saturate(value)
  br i1 %1170, label %1193, label %1296

; <label>:1193                                    ; preds = %1178
  %1194 = fsub fast float -0.000000e+00, %1035
  %1195 = fsub fast float %1194, %1039
  %1196 = fsub fast float %1195, %1043
  %1197 = fsub fast float -0.000000e+00, %1033
  %1198 = fsub fast float %1197, %1037
  %1199 = fsub fast float %1198, %1045
  %1200 = fadd fast float %1038, %1034
  %1201 = fadd fast float %1200, %1044
  %1202 = call float @dx.op.dot3.f32(i32 55, float %1196, float %1199, float %1201, float %1196, float %1199, float %1201)  ; Dot3(ax,ay,az,bx,by,bz)
  %1203 = call float @dx.op.unary.f32(i32 25, float %1202)  ; Rsqrt(value)
  %1204 = fmul fast float %1203, %1196
  %1205 = fmul fast float %1203, %1199
  %1206 = fmul fast float %1203, %1201
  %1207 = fmul fast float %1205, 0xBFD4D8D7C0000000
  %1208 = fmul fast float %1206, 0x3FD4D8D7C0000000
  %1209 = fmul fast float %1204, 0xBFD4D8D7C0000000
  %1210 = call float @dx.op.dot4.f32(i32 56, float %1046, float %1045, float %1044, float %1043, float 0x3FD20DD760000000, float %1207, float %1208, float %1209)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1211 = call float @dx.op.dot4.f32(i32 56, float %1036, float %1037, float %1038, float %1039, float 0x3FD20DD760000000, float %1207, float %1208, float %1209)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1212 = call float @dx.op.dot4.f32(i32 56, float %1032, float %1033, float %1034, float %1035, float 0x3FD20DD760000000, float %1207, float %1208, float %1209)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1213 = fmul fast float %1210, 0x4003333340000000
  %1214 = fmul fast float %1046, 0x3FE5AA35A0000000
  %1215 = fsub fast float %1213, %1214
  %1216 = fmul fast float %1211, 0x4003333340000000
  %1217 = fmul fast float %1036, 0x3FE5AA35A0000000
  %1218 = fsub fast float %1216, %1217
  %1219 = fmul fast float %1212, 0x4003333340000000
  %1220 = fmul fast float %1032, 0x3FE5AA35A0000000
  %1221 = fsub fast float %1219, %1220
  %1222 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1215)  ; FMax(a,b)
  %1223 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1218)  ; FMax(a,b)
  %1224 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1221)  ; FMax(a,b)
  %1225 = fsub fast float %1204, %1073
  %1226 = fsub fast float %1205, %1074
  %1227 = fsub fast float %1206, %1075
  %1228 = call float @dx.op.dot3.f32(i32 55, float %1225, float %1226, float %1227, float %1225, float %1226, float %1227)  ; Dot3(ax,ay,az,bx,by,bz)
  %1229 = call float @dx.op.unary.f32(i32 25, float %1228)  ; Rsqrt(value)
  %1230 = fmul fast float %1229, %1225
  %1231 = fmul fast float %1229, %1226
  %1232 = fmul fast float %1229, %1227
  %1233 = call float @dx.op.dot3.f32(i32 55, float %1068, float %1069, float %1070, float %1204, float %1205, float %1206)  ; Dot3(ax,ay,az,bx,by,bz)
  %1234 = call float @dx.op.unary.f32(i32 6, float %1233)  ; FAbs(value)
  %1235 = call float @dx.op.dot3.f32(i32 55, float %1068, float %1069, float %1070, float %1230, float %1231, float %1232)  ; Dot3(ax,ay,az,bx,by,bz)
  %1236 = fmul fast float %1235, %1235
  %1237 = call float @dx.op.dot3.f32(i32 55, float %1076, float %1077, float %1078, float %1230, float %1231, float %1232)  ; Dot3(ax,ay,az,bx,by,bz)
  %1238 = call float @dx.op.unary.f32(i32 6, float %1237)  ; FAbs(value)
  %1239 = fsub fast float 1.000000e+00, %1100
  %1240 = call float @dx.op.binary.f32(i32 35, float %1239, float 0x3F847AE140000000)  ; FMax(a,b)
  %1241 = fmul fast float %1240, %1240
  %1242 = fmul fast float %1241, %1241
  %1243 = fsub fast float 1.000000e+00, %1242
  %1244 = fmul fast float %1192, %1192
  %1245 = fmul fast float %1244, %1243
  %1246 = fadd fast float %1245, %1242
  %1247 = bitcast float %1246 to i32
  %1248 = ashr i32 %1247, 1
  %1249 = add nsw i32 %1248, 532487669
  %1250 = bitcast i32 %1249 to float
  %1251 = fadd fast float %1250, %1192
  %1252 = fmul fast float %1242, %1236
  %1253 = fsub fast float 1.000000e+00, %1236
  %1254 = fadd fast float %1253, %1252
  %1255 = fmul fast float %1234, %1234
  %1256 = fmul fast float %1255, %1243
  %1257 = fadd fast float %1256, %1242
  %1258 = bitcast float %1257 to i32
  %1259 = ashr i32 %1258, 1
  %1260 = add nsw i32 %1259, 532487669
  %1261 = bitcast i32 %1260 to float
  %1262 = fadd fast float %1261, %1234
  %1263 = fmul fast float %1254, %1254
  %1264 = fmul fast float %1263, %1251
  %1265 = fmul fast float %1264, %1262
  %1266 = fdiv fast float 1.000000e+00, %1265
  %1267 = fmul fast float %1242, %1266
  %1268 = fsub fast float 1.000000e+00, %1238
  %1269 = bitcast float %1268 to i32
  %1270 = sitofp i32 %1269 to float
  %1271 = fmul fast float %1270, 5.000000e+00
  %1272 = fadd fast float %1271, 0xC1EFBF8940000000
  %1273 = fptosi float %1272 to i32
  %1274 = bitcast i32 %1273 to float
  %1275 = fsub fast float 1.000000e+00, %1097
  %1276 = fsub fast float 1.000000e+00, %1098
  %1277 = fsub fast float 1.000000e+00, %1099
  %1278 = fmul fast float %1274, %1275
  %1279 = fmul fast float %1274, %1276
  %1280 = fmul fast float %1274, %1277
  %1281 = fadd fast float %1278, %1097
  %1282 = fadd fast float %1279, %1098
  %1283 = fadd fast float %1280, %1099
  %1284 = fmul fast float %1267, %1222
  %1285 = fmul fast float %1284, %1281
  %1286 = fmul fast float %1267, %1223
  %1287 = fmul fast float %1286, %1282
  %1288 = fmul fast float %1267, %1224
  %1289 = fmul fast float %1288, %1283
  %1290 = call float @dx.op.binary.f32(i32 35, float %1285, float 0.000000e+00)  ; FMax(a,b)
  %1291 = call float @dx.op.binary.f32(i32 35, float %1287, float 0.000000e+00)  ; FMax(a,b)
  %1292 = call float @dx.op.binary.f32(i32 35, float %1289, float 0.000000e+00)  ; FMax(a,b)
  %1293 = fadd fast float %1290, %1188
  %1294 = fadd fast float %1291, %1189
  %1295 = fadd fast float %1292, %1190
  br label %1296

; <label>:1296                                    ; preds = %1193, %1178
  %1297 = phi float [ %1293, %1193 ], [ %1188, %1178 ]
  %1298 = phi float [ %1294, %1193 ], [ %1189, %1178 ]
  %1299 = phi float [ %1295, %1193 ], [ %1190, %1178 ]
  %1300 = fmul fast float %1192, 9.843750e-01
  %1301 = fmul fast float %1100, 9.843750e-01
  %1302 = fadd fast float %1300, 7.812500e-03
  %1303 = fadd fast float %1301, 7.812500e-03
  %1304 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %26, float %1302, float %1303, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1305 = extractvalue %dx.types.ResRet.f32 %1304, 2
  %1306 = extractvalue %dx.types.ResRet.f32 %1304, 3
  %1307 = fmul fast float %1305, %1097
  %1308 = fmul fast float %1305, %1098
  %1309 = fmul fast float %1305, %1099
  %1310 = fadd fast float %1307, %1306
  %1311 = fadd fast float %1308, %1306
  %1312 = fadd fast float %1309, %1306
  %1313 = call float @dx.op.binary.f32(i32 35, float %1311, float %1312)  ; FMax(a,b)
  %1314 = call float @dx.op.binary.f32(i32 35, float %1310, float %1313)  ; FMax(a,b)
  %1315 = fsub fast float 1.000000e+00, %1314
  %1316 = call float @dx.op.dot3.f32(i32 55, float %1073, float %1074, float %1075, float %1068, float %1069, float %1070)  ; Dot3(ax,ay,az,bx,by,bz)
  %1317 = fmul fast float %1316, 2.000000e+00
  %1318 = fmul fast float %1317, %1068
  %1319 = fmul fast float %1317, %1069
  %1320 = fmul fast float %1317, %1070
  %1321 = fsub fast float %1073, %1318
  %1322 = fsub fast float %1074, %1319
  %1323 = fsub fast float %1075, %1320
  br i1 %1170, label %1324, label %1331

; <label>:1324                                    ; preds = %1296
  %1325 = fmul fast float %1322, 0xBFDF454380000000
  %1326 = fmul fast float %1323, 0x3FDF454380000000
  %1327 = fmul fast float %1321, 0xBFDF454380000000
  %1328 = call float @dx.op.dot4.f32(i32 56, float %1046, float %1045, float %1044, float %1043, float 0x3FD20DD760000000, float %1325, float %1326, float %1327)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1329 = call float @dx.op.dot4.f32(i32 56, float %1036, float %1037, float %1038, float %1039, float 0x3FD20DD760000000, float %1325, float %1326, float %1327)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1330 = call float @dx.op.dot4.f32(i32 56, float %1032, float %1033, float %1034, float %1035, float 0x3FD20DD760000000, float %1325, float %1326, float %1327)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %1331

; <label>:1331                                    ; preds = %1324, %1296
  %1332 = phi float [ %1328, %1324 ], [ %1046, %1296 ]
  %1333 = phi float [ %1329, %1324 ], [ %1045, %1296 ]
  %1334 = phi float [ %1330, %1324 ], [ %1044, %1296 ]
  %1335 = call float @dx.op.dot3.f32(i32 55, float %1332, float %1333, float %1334, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %1337 = extractvalue %dx.types.CBufRet.f32 %1336, 2
  %1338 = extractvalue %dx.types.CBufRet.f32 %1336, 3
  %1339 = fmul fast float %1337, %69
  %1340 = fmul fast float %1338, %70
  %1341 = fptoui float %1339 to i32
  %1342 = fptoui float %1340 to i32
  %1343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1344 = extractvalue %dx.types.CBufRet.f32 %1343, 0
  %1345 = extractvalue %dx.types.CBufRet.f32 %1343, 2
  %1346 = extractvalue %dx.types.CBufRet.f32 %1343, 3
  %1347 = fadd fast float %62, -4.000000e+00
  %1348 = call float @dx.op.binary.f32(i32 35, float %1347, float 0.000000e+00)  ; FMax(a,b)
  %1349 = fadd fast float %1348, %1344
  %1350 = fmul fast float %1349, %1345
  %1351 = call float @dx.op.unary.f32(i32 23, float %1350)  ; Log(value)
  %1352 = fmul fast float %1351, %1346
  %1353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1354 = extractvalue %dx.types.CBufRet.f32 %1353, 2
  %1355 = fmul fast float %1352, %1354
  %1356 = call float @dx.op.unary.f32(i32 7, float %1355)  ; Saturate(value)
  %1357 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1358 = extractvalue %dx.types.CBufRet.i32 %1357, 1
  %1359 = add i32 %1358, -1
  %1360 = uitofp i32 %1358 to float
  %1361 = fmul fast float %1360, %1356
  %1362 = fptoui float %1361 to i32
  %1363 = call i32 @dx.op.binary.i32(i32 40, i32 %1362, i32 %1359)  ; UMin(a,b)
  %1364 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %1365 = extractvalue %dx.types.CBufRet.i32 %1364, 2
  %1366 = extractvalue %dx.types.CBufRet.i32 %1364, 3
  %1367 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1342, i32 %1365, i32 %1341)  ; UMad(a,b,c)
  %1368 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1363, i32 %1366, i32 %1367)  ; UMad(a,b,c)
  %1369 = call float @dx.op.binary.f32(i32 35, float %62, float 0.000000e+00)  ; FMax(a,b)
  %1370 = fptoui float %1369 to i32
  %1371 = lshr i32 %1370, 5
  %1372 = call i32 @dx.op.binary.i32(i32 40, i32 %1371, i32 8191)  ; UMin(a,b)
  %1373 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1374 = extractvalue %dx.types.CBufRet.i32 %1373, 2
  %1375 = add nsw i32 %1374, -1
  %1376 = call i32 @dx.op.binary.i32(i32 37, i32 %1375, i32 0)  ; IMax(a,b)
  %1377 = shl i32 %1372, 2
  %1378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1377, i32 undef)  ; BufferLoad(srv,index,wot)
  %1379 = extractvalue %dx.types.ResRet.i32 %1378, 0
  %1380 = lshr i32 %1379, 16
  %1381 = and i32 %1379, 65535
  %1382 = lshr i32 %1379, 21
  %1383 = lshr i32 %1381, 5
  %1384 = call i32 @dx.op.binary.i32(i32 40, i32 %1383, i32 %1376)  ; UMin(a,b)
  %1385 = icmp ugt i32 %1382, %1384
  br i1 %1385, label %1748, label %1386

; <label>:1386                                    ; preds = %1331
  br label %1387

; <label>:1387                                    ; preds = %1740, %1386
  %1388 = phi float [ %1741, %1740 ], [ 0.000000e+00, %1386 ]
  %1389 = phi float [ %1742, %1740 ], [ 0.000000e+00, %1386 ]
  %1390 = phi float [ %1743, %1740 ], [ 0.000000e+00, %1386 ]
  %1391 = phi float [ %1744, %1740 ], [ 1.000000e+00, %1386 ]
  %1392 = phi i32 [ %1745, %1740 ], [ %1382, %1386 ]
  %1393 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1394 = extractvalue %dx.types.CBufRet.i32 %1393, 2
  %1395 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1368, i32 %1394, i32 %1392)  ; UMad(a,b,c)
  %1396 = shl i32 %1395, 2
  %1397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1396, i32 undef)  ; BufferLoad(srv,index,wot)
  %1398 = extractvalue %dx.types.ResRet.i32 %1397, 0
  %1399 = shl i32 %1392, 5
  %1400 = sub nsw i32 %1380, %1399
  %1401 = call i32 @dx.op.binary.i32(i32 37, i32 %1400, i32 0)  ; IMax(a,b)
  %1402 = call i32 @dx.op.binary.i32(i32 38, i32 %1401, i32 31)  ; IMin(a,b)
  %1403 = sub nsw i32 1, %1380
  %1404 = add nsw i32 %1403, %1381
  %1405 = call i32 @dx.op.binary.i32(i32 37, i32 %1404, i32 0)  ; IMax(a,b)
  %1406 = call i32 @dx.op.binary.i32(i32 38, i32 %1405, i32 32)  ; IMin(a,b)
  %1407 = and i32 %1406, 31
  %1408 = shl i32 -1, %1407
  %1409 = xor i32 %1408, -1
  %1410 = and i32 %1402, 31
  %1411 = shl i32 %1409, %1410
  %1412 = icmp eq i32 %1406, 32
  %1413 = select i1 %1412, i32 -1, i32 %1411
  %1414 = and i32 %1413, %1398
  %1415 = icmp eq i32 %1414, 0
  br i1 %1415, label %1740, label %1416

; <label>:1416                                    ; preds = %1387
  br label %1417

; <label>:1417                                    ; preds = %1523, %1416
  %1418 = phi float [ %1524, %1523 ], [ %1388, %1416 ]
  %1419 = phi float [ %1525, %1523 ], [ %1389, %1416 ]
  %1420 = phi float [ %1526, %1523 ], [ %1390, %1416 ]
  %1421 = phi float [ %1527, %1523 ], [ %1391, %1416 ]
  %1422 = phi i32 [ %1427, %1523 ], [ %1414, %1416 ]
  %1423 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1422)  ; FirstbitLo(value)
  %1424 = add i32 %1423, %1399
  %1425 = and i32 %1423, 31
  %1426 = shl i32 1, %1425
  %1427 = xor i32 %1426, %1422
  %1428 = mul i32 %1424, 72
  %1429 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1428, i32 undef)  ; BufferLoad(srv,index,wot)
  %1430 = extractvalue %dx.types.ResRet.f32 %1429, 0
  %1431 = extractvalue %dx.types.ResRet.f32 %1429, 1
  %1432 = extractvalue %dx.types.ResRet.f32 %1429, 2
  %1433 = add i32 %1428, 12
  %1434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1433, i32 undef)  ; BufferLoad(srv,index,wot)
  %1435 = extractvalue %dx.types.ResRet.i32 %1434, 0
  %1436 = add i32 %1428, 16
  %1437 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1436, i32 undef)  ; BufferLoad(srv,index,wot)
  %1438 = extractvalue %dx.types.ResRet.f32 %1437, 0
  %1439 = extractvalue %dx.types.ResRet.f32 %1437, 1
  %1440 = extractvalue %dx.types.ResRet.f32 %1437, 2
  %1441 = add i32 %1428, 28
  %1442 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1441, i32 undef)  ; BufferLoad(srv,index,wot)
  %1443 = extractvalue %dx.types.ResRet.f32 %1442, 0
  %1444 = add i32 %1428, 32
  %1445 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1444, i32 undef)  ; BufferLoad(srv,index,wot)
  %1446 = extractvalue %dx.types.ResRet.f32 %1445, 0
  %1447 = extractvalue %dx.types.ResRet.f32 %1445, 1
  %1448 = extractvalue %dx.types.ResRet.f32 %1445, 2
  %1449 = extractvalue %dx.types.ResRet.f32 %1445, 3
  %1450 = add i32 %1428, 48
  %1451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1450, i32 undef)  ; BufferLoad(srv,index,wot)
  %1452 = extractvalue %dx.types.ResRet.f32 %1451, 0
  %1453 = extractvalue %dx.types.ResRet.f32 %1451, 1
  %1454 = add i32 %1428, 56
  %1455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1454, i32 undef)  ; BufferLoad(srv,index,wot)
  %1456 = extractvalue %dx.types.ResRet.f32 %1455, 0
  %1457 = extractvalue %dx.types.ResRet.f32 %1455, 1
  %1458 = add i32 %1428, 64
  %1459 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1458, i32 undef)  ; BufferLoad(srv,index,wot)
  %1460 = extractvalue %dx.types.ResRet.f32 %1459, 0
  %1461 = extractvalue %dx.types.ResRet.f32 %1459, 1
  %1462 = mul i32 %1424, 60
  %1463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1462, i32 undef)  ; BufferLoad(srv,index,wot)
  %1464 = extractvalue %dx.types.ResRet.f32 %1463, 0
  %1465 = extractvalue %dx.types.ResRet.f32 %1463, 1
  %1466 = extractvalue %dx.types.ResRet.f32 %1463, 2
  %1467 = add i32 %1462, 12
  %1468 = add i32 %1462, 48
  %1469 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1468, i32 undef)  ; BufferLoad(srv,index,wot)
  %1470 = extractvalue %dx.types.ResRet.f32 %1469, 0
  %1471 = extractvalue %dx.types.ResRet.f32 %1469, 1
  %1472 = extractvalue %dx.types.ResRet.f32 %1469, 2
  %1473 = and i32 %1435, 32767
  %1474 = bitcast float %1430 to i32
  %1475 = icmp eq i32 %1474, -1
  %1476 = bitcast float %1431 to i32
  %1477 = and i32 %1435, 32768
  %1478 = icmp ne i32 %1477, 0
  %1479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1480 = extractvalue %dx.types.CBufRet.f32 %1479, 0
  %1481 = extractvalue %dx.types.CBufRet.f32 %1479, 1
  %1482 = extractvalue %dx.types.CBufRet.f32 %1479, 2
  %1483 = fsub fast float %1464, %1480
  %1484 = fsub fast float %1465, %1481
  %1485 = fsub fast float %1466, %1482
  %1486 = fsub fast float %104, %1483
  %1487 = fsub fast float %105, %1484
  %1488 = fsub fast float %106, %1485
  %1489 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1467, i32 undef)  ; BufferLoad(srv,index,wot)
  %1490 = extractvalue %dx.types.ResRet.f32 %1489, 0
  %1491 = extractvalue %dx.types.ResRet.f32 %1489, 1
  %1492 = extractvalue %dx.types.ResRet.f32 %1489, 2
  %1493 = call float @dx.op.dot3.f32(i32 55, float %1486, float %1487, float %1488, float %1490, float %1491, float %1492)  ; Dot3(ax,ay,az,bx,by,bz)
  %1494 = add i32 %1462, 24
  %1495 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1494, i32 undef)  ; BufferLoad(srv,index,wot)
  %1496 = extractvalue %dx.types.ResRet.f32 %1495, 0
  %1497 = extractvalue %dx.types.ResRet.f32 %1495, 1
  %1498 = extractvalue %dx.types.ResRet.f32 %1495, 2
  %1499 = call float @dx.op.dot3.f32(i32 55, float %1486, float %1487, float %1488, float %1496, float %1497, float %1498)  ; Dot3(ax,ay,az,bx,by,bz)
  %1500 = add i32 %1462, 36
  %1501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1500, i32 undef)  ; BufferLoad(srv,index,wot)
  %1502 = extractvalue %dx.types.ResRet.f32 %1501, 0
  %1503 = extractvalue %dx.types.ResRet.f32 %1501, 1
  %1504 = extractvalue %dx.types.ResRet.f32 %1501, 2
  %1505 = call float @dx.op.dot3.f32(i32 55, float %1486, float %1487, float %1488, float %1502, float %1503, float %1504)  ; Dot3(ax,ay,az,bx,by,bz)
  %1506 = call float @dx.op.unary.f32(i32 6, float %1493)  ; FAbs(value)
  %1507 = call float @dx.op.unary.f32(i32 6, float %1499)  ; FAbs(value)
  %1508 = call float @dx.op.unary.f32(i32 6, float %1505)  ; FAbs(value)
  %1509 = fsub fast float %1470, %1506
  %1510 = fsub fast float %1471, %1507
  %1511 = fsub fast float %1472, %1508
  %1512 = fmul fast float %1509, %1438
  %1513 = fmul fast float %1510, %1439
  %1514 = fmul fast float %1511, %1440
  %1515 = call float @dx.op.binary.f32(i32 36, float %1513, float %1514)  ; FMin(a,b)
  %1516 = call float @dx.op.binary.f32(i32 36, float %1512, float %1515)  ; FMin(a,b)
  %1517 = call float @dx.op.unary.f32(i32 7, float %1516)  ; Saturate(value)
  %1518 = call float @dx.op.binary.f32(i32 36, float %1421, float %1517)  ; FMin(a,b)
  %1519 = uitofp i1 %1478 to float
  %1520 = fsub fast float 1.000000e+00, %1519
  %1521 = fmul fast float %1518, %1520
  %1522 = fcmp fast ogt float %1521, 0.000000e+00
  br i1 %1522, label %1529, label %1523

; <label>:1523                                    ; preds = %1671, %1417
  %1524 = phi float [ %1735, %1671 ], [ %1418, %1417 ]
  %1525 = phi float [ %1736, %1671 ], [ %1419, %1417 ]
  %1526 = phi float [ %1737, %1671 ], [ %1420, %1417 ]
  %1527 = phi float [ %1738, %1671 ], [ %1421, %1417 ]
  %1528 = icmp eq i32 %1422, %1426
  br i1 %1528, label %1739, label %1417

; <label>:1529                                    ; preds = %1417
  br i1 %1475, label %1587, label %1530

; <label>:1530                                    ; preds = %1529
  %1531 = fsub fast float -0.000000e+00, %1490
  %1532 = fsub fast float -0.000000e+00, %1491
  %1533 = fsub fast float -0.000000e+00, %1492
  %1534 = call float @dx.op.dot3.f32(i32 55, float %1321, float %1322, float %1323, float %1531, float %1532, float %1533)  ; Dot3(ax,ay,az,bx,by,bz)
  %1535 = fsub fast float -0.000000e+00, %1534
  %1536 = call float @dx.op.dot3.f32(i32 55, float %1486, float %1487, float %1488, float %1531, float %1532, float %1533)  ; Dot3(ax,ay,az,bx,by,bz)
  %1537 = fadd fast float %1536, %1453
  %1538 = fadd fast float %1452, %1536
  %1539 = fsub fast float -0.000000e+00, %1538
  %1540 = fcmp ogt float %1534, -0.000000e+00
  %1541 = select i1 %1540, float %1539, float %1537
  %1542 = call float @dx.op.unary.f32(i32 6, float %1535)  ; FAbs(value)
  %1543 = fdiv fast float 1.000000e+00, %1542
  %1544 = fmul fast float %1541, %1543
  %1545 = call float @dx.op.binary.f32(i32 35, float %1544, float 0.000000e+00)  ; FMax(a,b)
  %1546 = fsub fast float -0.000000e+00, %1496
  %1547 = fsub fast float -0.000000e+00, %1497
  %1548 = fsub fast float -0.000000e+00, %1498
  %1549 = call float @dx.op.dot3.f32(i32 55, float %1321, float %1322, float %1323, float %1546, float %1547, float %1548)  ; Dot3(ax,ay,az,bx,by,bz)
  %1550 = fsub fast float -0.000000e+00, %1549
  %1551 = call float @dx.op.dot3.f32(i32 55, float %1486, float %1487, float %1488, float %1546, float %1547, float %1548)  ; Dot3(ax,ay,az,bx,by,bz)
  %1552 = fadd fast float %1551, %1457
  %1553 = fadd fast float %1456, %1551
  %1554 = fsub fast float -0.000000e+00, %1553
  %1555 = fcmp ogt float %1549, -0.000000e+00
  %1556 = select i1 %1555, float %1554, float %1552
  %1557 = call float @dx.op.unary.f32(i32 6, float %1550)  ; FAbs(value)
  %1558 = fdiv fast float 1.000000e+00, %1557
  %1559 = fmul fast float %1556, %1558
  %1560 = call float @dx.op.binary.f32(i32 35, float %1559, float 0.000000e+00)  ; FMax(a,b)
  %1561 = fsub fast float -0.000000e+00, %1502
  %1562 = fsub fast float -0.000000e+00, %1503
  %1563 = fsub fast float -0.000000e+00, %1504
  %1564 = call float @dx.op.dot3.f32(i32 55, float %1321, float %1322, float %1323, float %1561, float %1562, float %1563)  ; Dot3(ax,ay,az,bx,by,bz)
  %1565 = fsub fast float -0.000000e+00, %1564
  %1566 = call float @dx.op.dot3.f32(i32 55, float %1486, float %1487, float %1488, float %1561, float %1562, float %1563)  ; Dot3(ax,ay,az,bx,by,bz)
  %1567 = fadd fast float %1566, %1461
  %1568 = fadd fast float %1460, %1566
  %1569 = fsub fast float -0.000000e+00, %1568
  %1570 = fcmp ogt float %1564, -0.000000e+00
  %1571 = select i1 %1570, float %1569, float %1567
  %1572 = call float @dx.op.unary.f32(i32 6, float %1565)  ; FAbs(value)
  %1573 = fdiv fast float 1.000000e+00, %1572
  %1574 = fmul fast float %1571, %1573
  %1575 = call float @dx.op.binary.f32(i32 35, float %1574, float 0.000000e+00)  ; FMax(a,b)
  %1576 = call float @dx.op.binary.f32(i32 36, float %1560, float %1575)  ; FMin(a,b)
  %1577 = call float @dx.op.binary.f32(i32 36, float %1545, float %1576)  ; FMin(a,b)
  %1578 = fmul fast float %1577, %1321
  %1579 = fmul fast float %1577, %1322
  %1580 = fmul fast float %1577, %1323
  %1581 = fadd fast float %1578, %104
  %1582 = fadd fast float %1579, %105
  %1583 = fadd fast float %1580, %106
  %1584 = fsub fast float %1581, %1430
  %1585 = fsub fast float %1582, %1431
  %1586 = fsub fast float %1583, %1432
  br label %1594

; <label>:1587                                    ; preds = %1529
  %1588 = fmul fast float %1321, 8.096000e+03
  %1589 = fmul fast float %1322, 8.096000e+03
  %1590 = fmul fast float %1323, 8.096000e+03
  %1591 = fadd fast float %1588, %104
  %1592 = fadd fast float %1589, %105
  %1593 = fadd fast float %1590, %106
  br label %1594

; <label>:1594                                    ; preds = %1587, %1530
  %1595 = phi float [ %1321, %1587 ], [ %1584, %1530 ]
  %1596 = phi float [ %1322, %1587 ], [ %1585, %1530 ]
  %1597 = phi float [ %1323, %1587 ], [ %1586, %1530 ]
  %1598 = phi float [ %1591, %1587 ], [ %1581, %1530 ]
  %1599 = phi float [ %1592, %1587 ], [ %1582, %1530 ]
  %1600 = phi float [ %1593, %1587 ], [ %1583, %1530 ]
  %1601 = fcmp fast olt float %1449, 1.000000e+00
  br i1 %1601, label %1602, label %1633, !dx.controlflow.hints !79

; <label>:1602                                    ; preds = %1594
  %1603 = fmul fast float %1597, %1447
  %1604 = fmul fast float %1596, %1448
  %1605 = fsub fast float %1603, %1604
  %1606 = fmul fast float %1595, %1448
  %1607 = fmul fast float %1597, %1446
  %1608 = fsub fast float %1606, %1607
  %1609 = fmul fast float %1596, %1446
  %1610 = fmul fast float %1595, %1447
  %1611 = fsub fast float %1609, %1610
  %1612 = fmul fast float %1605, 2.000000e+00
  %1613 = fmul fast float %1608, 2.000000e+00
  %1614 = fmul fast float %1611, 2.000000e+00
  %1615 = fmul fast float %1612, %1449
  %1616 = fmul fast float %1613, %1449
  %1617 = fmul fast float %1614, %1449
  %1618 = fmul fast float %1614, %1447
  %1619 = fmul fast float %1613, %1448
  %1620 = fmul fast float %1612, %1448
  %1621 = fmul fast float %1614, %1446
  %1622 = fmul fast float %1613, %1446
  %1623 = fmul fast float %1612, %1447
  %1624 = fadd fast float %1618, %1595
  %1625 = fadd fast float %1624, %1615
  %1626 = fsub fast float %1625, %1619
  %1627 = fsub fast float %1596, %1621
  %1628 = fadd fast float %1627, %1616
  %1629 = fadd fast float %1628, %1620
  %1630 = fadd fast float %1617, %1597
  %1631 = fsub fast float %1630, %1623
  %1632 = fadd fast float %1631, %1622
  br label %1633

; <label>:1633                                    ; preds = %1602, %1594
  %1634 = phi float [ %1626, %1602 ], [ %1595, %1594 ]
  %1635 = phi float [ %1629, %1602 ], [ %1596, %1594 ]
  %1636 = phi float [ %1632, %1602 ], [ %1597, %1594 ]
  br i1 %1475, label %1668, label %1637

; <label>:1637                                    ; preds = %1633
  %1638 = fmul fast float %1100, 0x400187C840000000
  %1639 = fadd fast float %1638, 0xC00EFC2120000000
  %1640 = fmul fast float %1639, %1100
  %1641 = fadd fast float %1640, 0x3FE5D16340000000
  %1642 = fmul fast float %1641, %1100
  %1643 = fadd fast float %1642, 1.000000e+00
  %1644 = call float @dx.op.unary.f32(i32 7, float %1643)  ; Saturate(value)
  %1645 = fsub fast float %1598, %104
  %1646 = fsub fast float %1599, %105
  %1647 = fsub fast float %1600, %106
  %1648 = fsub fast float %1598, %1430
  %1649 = fsub fast float %1599, %1431
  %1650 = fsub fast float %1600, %1432
  %1651 = call float @dx.op.dot3.f32(i32 55, float %1645, float %1646, float %1647, float %1645, float %1646, float %1647)  ; Dot3(ax,ay,az,bx,by,bz)
  %1652 = call float @dx.op.dot3.f32(i32 55, float %1648, float %1649, float %1650, float %1648, float %1649, float %1650)  ; Dot3(ax,ay,az,bx,by,bz)
  %1653 = fadd fast float %1652, 0x3EE4F8B580000000
  %1654 = fdiv fast float %1651, %1653
  %1655 = bitcast float %1654 to i32
  %1656 = ashr i32 %1655, 1
  %1657 = add nsw i32 %1656, 532487669
  %1658 = bitcast i32 %1657 to float
  %1659 = fmul fast float %1658, %1644
  %1660 = call float @dx.op.unary.f32(i32 7, float %1659)  ; Saturate(value)
  %1661 = fmul fast float %1660, 0x4009981AE0000000
  %1662 = fsub fast float 0x40111BBD80000000, %1661
  %1663 = fmul fast float %1662, %1660
  %1664 = fadd fast float %1663, 0xC0009F6020000000
  %1665 = fmul fast float %1664, %1660
  %1666 = fadd fast float %1665, 1.000000e+00
  %1667 = call float @dx.op.unary.f32(i32 7, float %1666)  ; Saturate(value)
  br label %1671

; <label>:1668                                    ; preds = %1633
  %1669 = icmp ne i32 %1476, -1
  %1670 = zext i1 %1669 to i32
  br label %1671

; <label>:1671                                    ; preds = %1668, %1637
  %1672 = phi float [ %1100, %1668 ], [ %1667, %1637 ]
  %1673 = phi i32 [ %1670, %1668 ], [ 0, %1637 ]
  %1674 = fmul float %1672, 5.000000e+00
  %1675 = fsub float 5.000000e+00, %1674
  %1676 = icmp ne i32 %1673, 0
  %1677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %1678 = extractvalue %dx.types.CBufRet.f32 %1677, 3
  %1679 = fadd fast float %1678, %1675
  %1680 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1679)  ; FMax(a,b)
  %1681 = call float @dx.op.unary.f32(i32 6, float %1634)  ; FAbs(value)
  %1682 = call float @dx.op.unary.f32(i32 6, float %1635)  ; FAbs(value)
  %1683 = fadd fast float %1682, %1681
  %1684 = call float @dx.op.unary.f32(i32 6, float %1636)  ; FAbs(value)
  %1685 = fadd fast float %1683, %1684
  %1686 = fcmp fast oeq float %1685, 0.000000e+00
  %1687 = fdiv fast float 1.000000e+00, %1685
  %1688 = select i1 %1686, float 1.000000e+00, float %1687
  %1689 = fmul fast float %1688, %1634
  %1690 = fmul fast float %1688, %1635
  %1691 = call float @dx.op.unary.f32(i32 6, float %1690)  ; FAbs(value)
  %1692 = call float @dx.op.unary.f32(i32 6, float %1689)  ; FAbs(value)
  %1693 = fsub fast float 1.000000e+00, %1691
  %1694 = fsub fast float 1.000000e+00, %1692
  %1695 = fcmp fast oge float %1689, 0.000000e+00
  %1696 = fcmp fast oge float %1690, 0.000000e+00
  %1697 = select i1 %1695, float 1.000000e+00, float -1.000000e+00
  %1698 = select i1 %1696, float 1.000000e+00, float -1.000000e+00
  %1699 = fcmp fast ole float %1636, 0.000000e+00
  %1700 = fmul fast float %1697, %1693
  %1701 = fmul fast float %1698, %1694
  %1702 = select i1 %1699, float %1700, float %1689
  %1703 = select i1 %1699, float %1701, float %1690
  %1704 = fmul fast float %1702, 5.000000e-01
  %1705 = fmul fast float %1703, 5.000000e-01
  %1706 = fadd fast float %1704, 5.000000e-01
  %1707 = fadd fast float %1705, 5.000000e-01
  %1708 = uitofp i32 %1473 to float
  %1709 = call float @dx.op.binary.f32(i32 36, float %1680, float 3.000000e+00)  ; FMin(a,b)
  %1710 = fadd fast float %1709, 2.000000e+00
  %1711 = call float @dx.op.unary.f32(i32 21, float %1710)  ; Exp(value)
  %1712 = extractvalue %dx.types.CBufRet.f32 %1677, 1
  %1713 = fmul fast float %1712, %1711
  %1714 = fmul fast float %1713, 2.000000e+00
  %1715 = fsub fast float 1.000000e+00, %1714
  %1716 = fmul fast float %1706, %1715
  %1717 = fmul fast float %1707, %1715
  %1718 = fadd fast float %1716, %1713
  %1719 = fadd fast float %1717, %1713
  %1720 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %25, float %1718, float %1719, float %1708, float undef, i32 0, i32 0, i32 undef, float %1680)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1721 = extractvalue %dx.types.ResRet.f32 %1720, 0
  %1722 = extractvalue %dx.types.ResRet.f32 %1720, 1
  %1723 = extractvalue %dx.types.ResRet.f32 %1720, 2
  %1724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1725 = extractvalue %dx.types.CBufRet.f32 %1724, 3
  %1726 = fmul fast float %1725, %1443
  %1727 = call float @dx.op.binary.f32(i32 36, float %1335, float %1726)  ; FMin(a,b)
  %1728 = select i1 %1676, float %1727, float %1726
  %1729 = fmul fast float %1721, %1521
  %1730 = fmul fast float %1729, %1728
  %1731 = fmul fast float %1722, %1521
  %1732 = fmul fast float %1731, %1728
  %1733 = fmul fast float %1723, %1521
  %1734 = fmul fast float %1733, %1728
  %1735 = fadd fast float %1730, %1418
  %1736 = fadd fast float %1732, %1419
  %1737 = fadd fast float %1734, %1420
  %1738 = fsub fast float %1421, %1521
  br label %1523

; <label>:1739                                    ; preds = %1523
  br label %1740

; <label>:1740                                    ; preds = %1739, %1387
  %1741 = phi float [ %1388, %1387 ], [ %1524, %1739 ]
  %1742 = phi float [ %1389, %1387 ], [ %1525, %1739 ]
  %1743 = phi float [ %1390, %1387 ], [ %1526, %1739 ]
  %1744 = phi float [ %1391, %1387 ], [ %1527, %1739 ]
  %1745 = add i32 %1392, 1
  %1746 = icmp ugt i32 %1745, %1384
  br i1 %1746, label %1747, label %1387, !llvm.loop !80

; <label>:1747                                    ; preds = %1740
  br label %1748

; <label>:1748                                    ; preds = %1747, %1331
  %1749 = phi float [ 0.000000e+00, %1331 ], [ %1741, %1747 ]
  %1750 = phi float [ 0.000000e+00, %1331 ], [ %1742, %1747 ]
  %1751 = phi float [ 0.000000e+00, %1331 ], [ %1743, %1747 ]
  %1752 = call float @dx.op.dot3.f32(i32 55, float %1749, float %1750, float %1751, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1753 = select i1 %139, float 0.000000e+00, float %1749
  %1754 = select i1 %139, float %1752, float %1750
  %1755 = select i1 %139, float 0.000000e+00, float %1751
  %1756 = fmul fast float %1753, %1310
  %1757 = fmul fast float %1754, %1311
  %1758 = fmul fast float %1755, %1312
  %1759 = call float @dx.op.binary.f32(i32 35, float %1756, float 0.000000e+00)  ; FMax(a,b)
  %1760 = call float @dx.op.binary.f32(i32 35, float %1757, float 0.000000e+00)  ; FMax(a,b)
  %1761 = call float @dx.op.binary.f32(i32 35, float %1758, float 0.000000e+00)  ; FMax(a,b)
  %1762 = fadd fast float %1759, %1297
  %1763 = fadd fast float %1760, %1298
  %1764 = fadd fast float %1761, %1299
  %1765 = fmul fast float %1762, %720
  %1766 = fmul fast float %1763, %720
  %1767 = fmul fast float %1764, %720
  %1768 = fsub fast float 1.000000e+00, %720
  %1769 = call float @dx.op.dot3.f32(i32 55, float %1768, float %1768, float %1768, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1770 = fsub fast float 1.000000e+00, %1769
  %1771 = fmul fast float %1142, %1123
  %1772 = fsub fast float 1.000000e+00, %1143
  %1773 = fsub fast float %1772, %1123
  %1774 = call float @dx.op.unary.f32(i32 7, float %1773)  ; Saturate(value)
  %1775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1776 = extractvalue %dx.types.CBufRet.f32 %1775, 3
  %1777 = fmul fast float %1776, %1774
  %1778 = fadd fast float %1777, %1771
  %1779 = and i32 %159, 1048576
  %1780 = icmp eq i32 %1779, 0
  br i1 %1780, label %1865, label %1781, !dx.controlflow.hints !82

; <label>:1781                                    ; preds = %1748
  %1782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1783 = extractvalue %dx.types.CBufRet.f32 %1782, 2
  %1784 = extractvalue %dx.types.CBufRet.f32 %1782, 3
  %1785 = fmul fast float %1783, %69
  %1786 = fmul fast float %1784, %70
  %1787 = call float @dx.op.unary.f32(i32 7, float %1785)  ; Saturate(value)
  %1788 = call float @dx.op.unary.f32(i32 7, float %1786)  ; Saturate(value)
  %1789 = select i1 %1167, i32 2, i32 0
  %1790 = or i32 %1789, 1
  %1791 = uitofp i32 %1790 to float
  %1792 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1787, float %1788, float %1791, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1793 = extractvalue %dx.types.ResRet.f32 %1792, 0
  %1794 = extractvalue %dx.types.ResRet.f32 %1792, 1
  %1795 = extractvalue %dx.types.ResRet.f32 %1792, 2
  %1796 = extractvalue %dx.types.ResRet.f32 %1792, 3
  %1797 = add nuw nsw i32 %1789, 2
  %1798 = uitofp i32 %1797 to float
  %1799 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1787, float %1788, float %1798, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1800 = extractvalue %dx.types.ResRet.f32 %1799, 0
  %1801 = extractvalue %dx.types.ResRet.f32 %1799, 1
  %1802 = extractvalue %dx.types.ResRet.f32 %1799, 2
  %1803 = extractvalue %dx.types.ResRet.f32 %1799, 3
  %1804 = call float @dx.op.binary.f32(i32 35, float %1794, float %1795)  ; FMax(a,b)
  %1805 = call float @dx.op.binary.f32(i32 35, float %1793, float %1804)  ; FMax(a,b)
  %1806 = call float @dx.op.binary.f32(i32 35, float %1805, float %1796)  ; FMax(a,b)
  %1807 = call float @dx.op.binary.f32(i32 36, float %1801, float %1802)  ; FMin(a,b)
  %1808 = call float @dx.op.binary.f32(i32 36, float %1800, float %1807)  ; FMin(a,b)
  %1809 = call float @dx.op.binary.f32(i32 36, float %1808, float %1803)  ; FMin(a,b)
  %1810 = fmul fast float %1806, 2.550000e+02
  %1811 = fadd fast float %1810, 0x3F70101020000000
  %1812 = fptoui float %1811 to i32
  %1813 = fmul fast float %1809, 2.550000e+02
  %1814 = fadd fast float %1813, 0x3F70101020000000
  %1815 = fptoui float %1814 to i32
  %1816 = icmp ult i32 %1812, %1815
  br i1 %1816, label %1817, label %1858

; <label>:1817                                    ; preds = %1781
  %1818 = fcmp fast ogt float %61, 9.843750e-01
  %1819 = select i1 %1818, float -4.000000e+00, float %1347
  %1820 = call float @dx.op.binary.f32(i32 35, float %1819, float 0.000000e+00)  ; FMax(a,b)
  %1821 = fadd fast float %1344, %1820
  %1822 = fmul fast float %1821, %1345
  %1823 = call float @dx.op.unary.f32(i32 23, float %1822)  ; Log(value)
  %1824 = fmul fast float %1346, %1823
  %1825 = fmul fast float %1824, %1354
  %1826 = call float @dx.op.unary.f32(i32 7, float %1825)  ; Saturate(value)
  %1827 = uitofp i32 %1812 to float
  %1828 = uitofp i32 %1815 to float
  %1829 = fadd fast float %1827, 5.000000e-01
  %1830 = fadd fast float %1828, 5.000000e-01
  %1831 = fmul fast float %1354, %1829
  %1832 = fmul fast float %1354, %1830
  %1833 = fadd fast float %1831, 0x3F0FFB4800000000
  %1834 = fadd fast float %1832, 0xBF0FFB4800000000
  %1835 = call float @dx.op.binary.f32(i32 35, float %1826, float %1833)  ; FMax(a,b)
  %1836 = call float @dx.op.binary.f32(i32 36, float %1835, float %1834)  ; FMin(a,b)
  %1837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1838 = extractvalue %dx.types.CBufRet.f32 %1837, 1
  %1839 = extractvalue %dx.types.CBufRet.f32 %1837, 2
  %1840 = extractvalue %dx.types.CBufRet.f32 %1837, 0
  %1841 = select i1 %1167, float %1840, float 0.000000e+00
  %1842 = fmul fast float %1838, %1836
  %1843 = fadd fast float %1841, %1842
  %1844 = fadd fast float %1841, %1839
  %1845 = fsub fast float %1838, %1839
  %1846 = fadd fast float %1845, %1841
  %1847 = call float @dx.op.binary.f32(i32 35, float %1843, float %1844)  ; FMax(a,b)
  %1848 = call float @dx.op.binary.f32(i32 36, float %1847, float %1846)  ; FMin(a,b)
  %1849 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %25, float %1787, float %1788, float %1848, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1850 = extractvalue %dx.types.ResRet.f32 %1849, 0
  %1851 = extractvalue %dx.types.ResRet.f32 %1849, 1
  %1852 = extractvalue %dx.types.ResRet.f32 %1849, 2
  %1853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1854 = extractvalue %dx.types.CBufRet.f32 %1853, 1
  %1855 = fmul fast float %1854, %1850
  %1856 = fmul fast float %1854, %1851
  %1857 = fmul fast float %1854, %1852
  br label %1858

; <label>:1858                                    ; preds = %1817, %1781
  %1859 = phi float [ %1855, %1817 ], [ 1.000000e+00, %1781 ]
  %1860 = phi float [ %1856, %1817 ], [ 1.000000e+00, %1781 ]
  %1861 = phi float [ %1857, %1817 ], [ 1.000000e+00, %1781 ]
  %1862 = fmul fast float %1859, %1765
  %1863 = fmul fast float %1860, %1766
  %1864 = fmul fast float %1861, %1767
  br label %1865

; <label>:1865                                    ; preds = %1858, %1748
  %1866 = phi float [ %1862, %1858 ], [ %1765, %1748 ]
  %1867 = phi float [ %1863, %1858 ], [ %1766, %1748 ]
  %1868 = phi float [ %1864, %1858 ], [ %1767, %1748 ]
  %1869 = and i32 %159, 2097152
  %1870 = icmp eq i32 %1869, 0
  br i1 %1870, label %1875, label %1871, !dx.controlflow.hints !83

; <label>:1871                                    ; preds = %1865
  %1872 = add i32 %156, 192
  %1873 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1872, i32 undef)  ; BufferLoad(srv,index,wot)
  %1874 = extractvalue %dx.types.ResRet.f32 %1873, 0
  br label %1878

; <label>:1875                                    ; preds = %1865
  %1876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1877 = extractvalue %dx.types.CBufRet.f32 %1876, 3
  br label %1878

; <label>:1878                                    ; preds = %1875, %1871
  %1879 = phi float [ %1874, %1871 ], [ %1877, %1875 ]
  %1880 = fmul fast float %1088, %720
  %1881 = fmul fast float %1880, %1179
  %1882 = fmul fast float %1881, %1315
  %1883 = fmul fast float %1089, %720
  %1884 = fmul fast float %1883, %1180
  %1885 = fmul fast float %1884, %1315
  %1886 = fmul fast float %1090, %720
  %1887 = fmul fast float %1886, %1181
  %1888 = fmul fast float %1887, %1315
  br i1 %1162, label %1889, label %2022

; <label>:1889                                    ; preds = %1878
  %1890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1891 = extractvalue %dx.types.CBufRet.f32 %1890, 2
  %1892 = extractvalue %dx.types.CBufRet.f32 %1890, 3
  %1893 = fmul fast float %1891, %69
  %1894 = fmul fast float %1892, %70
  %1895 = call float @dx.op.unary.f32(i32 7, float %1893)  ; Saturate(value)
  %1896 = call float @dx.op.unary.f32(i32 7, float %1894)  ; Saturate(value)
  %1897 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1895, float %1896, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1898 = extractvalue %dx.types.ResRet.f32 %1897, 0
  %1899 = extractvalue %dx.types.ResRet.f32 %1897, 1
  %1900 = extractvalue %dx.types.ResRet.f32 %1897, 2
  %1901 = extractvalue %dx.types.ResRet.f32 %1897, 3
  %1902 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1895, float %1896, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1903 = extractvalue %dx.types.ResRet.f32 %1902, 0
  %1904 = extractvalue %dx.types.ResRet.f32 %1902, 1
  %1905 = extractvalue %dx.types.ResRet.f32 %1902, 2
  %1906 = extractvalue %dx.types.ResRet.f32 %1902, 3
  %1907 = call float @dx.op.binary.f32(i32 35, float %1899, float %1900)  ; FMax(a,b)
  %1908 = call float @dx.op.binary.f32(i32 35, float %1898, float %1907)  ; FMax(a,b)
  %1909 = call float @dx.op.binary.f32(i32 35, float %1908, float %1901)  ; FMax(a,b)
  %1910 = call float @dx.op.binary.f32(i32 36, float %1904, float %1905)  ; FMin(a,b)
  %1911 = call float @dx.op.binary.f32(i32 36, float %1903, float %1910)  ; FMin(a,b)
  %1912 = call float @dx.op.binary.f32(i32 36, float %1911, float %1906)  ; FMin(a,b)
  %1913 = fmul fast float %1909, 2.550000e+02
  %1914 = fadd fast float %1913, 0x3F70101020000000
  %1915 = fptoui float %1914 to i32
  %1916 = fmul fast float %1912, 2.550000e+02
  %1917 = fadd fast float %1916, 0x3F70101020000000
  %1918 = fptoui float %1917 to i32
  %1919 = icmp ult i32 %1915, %1918
  br i1 %1919, label %1920, label %1964

; <label>:1920                                    ; preds = %1889
  %1921 = fcmp fast ogt float %61, 9.843750e-01
  %1922 = select i1 %1921, float -4.000000e+00, float %1347
  %1923 = call float @dx.op.binary.f32(i32 35, float %1922, float 0.000000e+00)  ; FMax(a,b)
  %1924 = fadd fast float %1344, %1923
  %1925 = fmul fast float %1924, %1345
  %1926 = call float @dx.op.unary.f32(i32 23, float %1925)  ; Log(value)
  %1927 = fmul fast float %1346, %1926
  %1928 = fmul fast float %1927, %1354
  %1929 = call float @dx.op.unary.f32(i32 7, float %1928)  ; Saturate(value)
  %1930 = uitofp i32 %1915 to float
  %1931 = uitofp i32 %1918 to float
  %1932 = fadd fast float %1930, 5.000000e-01
  %1933 = fadd fast float %1931, 5.000000e-01
  %1934 = fmul fast float %1354, %1932
  %1935 = fmul fast float %1354, %1933
  %1936 = fadd fast float %1934, 0x3F0FFB4800000000
  %1937 = fadd fast float %1935, 0xBF0FFB4800000000
  %1938 = call float @dx.op.binary.f32(i32 35, float %1929, float %1936)  ; FMax(a,b)
  %1939 = call float @dx.op.binary.f32(i32 36, float %1938, float %1937)  ; FMin(a,b)
  %1940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1941 = extractvalue %dx.types.CBufRet.f32 %1940, 1
  %1942 = extractvalue %dx.types.CBufRet.f32 %1940, 2
  %1943 = extractvalue %dx.types.CBufRet.f32 %1940, 0
  %1944 = fmul fast float %1941, %1939
  %1945 = fadd fast float %1943, %1944
  %1946 = fadd fast float %1943, %1942
  %1947 = fsub fast float %1941, %1942
  %1948 = fadd fast float %1947, %1943
  %1949 = call float @dx.op.binary.f32(i32 35, float %1945, float %1946)  ; FMax(a,b)
  %1950 = call float @dx.op.binary.f32(i32 36, float %1949, float %1948)  ; FMin(a,b)
  %1951 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %1895, float %1896, float %1950, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1952 = extractvalue %dx.types.ResRet.f32 %1951, 0
  %1953 = extractvalue %dx.types.ResRet.f32 %1951, 1
  %1954 = extractvalue %dx.types.ResRet.f32 %1951, 2
  %1955 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %1895, float %1896, float %1950, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1956 = extractvalue %dx.types.ResRet.f32 %1955, 0
  %1957 = extractvalue %dx.types.ResRet.f32 %1955, 1
  %1958 = extractvalue %dx.types.ResRet.f32 %1955, 2
  %1959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1960 = extractvalue %dx.types.CBufRet.f32 %1959, 1
  %1961 = fmul fast float %1960, %1956
  %1962 = fmul fast float %1960, %1957
  %1963 = fmul fast float %1960, %1958
  br label %1964

; <label>:1964                                    ; preds = %1920, %1889
  %1965 = phi float [ %1952, %1920 ], [ 1.000000e+00, %1889 ]
  %1966 = phi float [ %1953, %1920 ], [ 1.000000e+00, %1889 ]
  %1967 = phi float [ %1954, %1920 ], [ 1.000000e+00, %1889 ]
  %1968 = phi float [ %1961, %1920 ], [ 0.000000e+00, %1889 ]
  %1969 = phi float [ %1962, %1920 ], [ 0.000000e+00, %1889 ]
  %1970 = phi float [ %1963, %1920 ], [ 0.000000e+00, %1889 ]
  %1971 = fmul fast float %1968, %1770
  %1972 = fmul fast float %1969, %1770
  %1973 = fmul fast float %1970, %1770
  %1974 = call float @dx.op.dot3.f32(i32 55, float %1965, float %1966, float %1967, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1975 = call float @dx.op.dot3.f32(i32 55, float %1971, float %1972, float %1973, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1976 = select i1 %139, float %1974, float %1965
  %1977 = select i1 %139, float %1974, float %1966
  %1978 = select i1 %139, float 1.000000e+00, float %1967
  %1979 = select i1 %139, float %1975, float %1971
  %1980 = select i1 %139, float 0.000000e+00, float %1972
  %1981 = select i1 %139, float 0.000000e+00, float %1973
  %1982 = fmul fast float %1976, %1882
  %1983 = fmul fast float %1977, %1885
  %1984 = fmul fast float %1978, %1888
  %1985 = fadd fast float %1982, %1979
  %1986 = fadd fast float %1983, %1980
  %1987 = fadd fast float %1981, %1984
  %1988 = fmul fast float %1976, %1866
  %1989 = fmul fast float %1977, %1867
  %1990 = fmul fast float %1978, %1868
  %1991 = fmul fast float %74, %1891
  %1992 = fmul fast float %76, %1892
  %1993 = fsub fast float 1.000000e+00, %1991
  %1994 = fsub fast float 1.000000e+00, %1992
  %1995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1996 = extractvalue %dx.types.CBufRet.f32 %1995, 0
  %1997 = extractvalue %dx.types.CBufRet.f32 %1995, 1
  %1998 = extractvalue %dx.types.CBufRet.f32 %1995, 2
  %1999 = fmul fast float %1993, %1996
  %2000 = fmul fast float %1993, %1997
  %2001 = fmul fast float %1993, %1998
  %2002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2003 = extractvalue %dx.types.CBufRet.f32 %2002, 0
  %2004 = extractvalue %dx.types.CBufRet.f32 %2002, 1
  %2005 = extractvalue %dx.types.CBufRet.f32 %2002, 2
  %2006 = fmul fast float %1994, %2003
  %2007 = fmul fast float %1994, %2004
  %2008 = fmul fast float %1994, %2005
  %2009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2010 = extractvalue %dx.types.CBufRet.f32 %2009, 0
  %2011 = extractvalue %dx.types.CBufRet.f32 %2009, 1
  %2012 = extractvalue %dx.types.CBufRet.f32 %2009, 2
  %2013 = fadd fast float %2006, %2010
  %2014 = fadd fast float %2013, %1999
  %2015 = fadd fast float %2007, %2011
  %2016 = fadd fast float %2015, %2000
  %2017 = fadd fast float %2008, %2012
  %2018 = fadd fast float %2017, %2001
  %2019 = fmul fast float %2014, %1159
  %2020 = fmul fast float %2016, %1159
  %2021 = fmul fast float %2018, %1159
  br label %2022

; <label>:2022                                    ; preds = %1964, %1878
  %2023 = phi float [ %2019, %1964 ], [ %104, %1878 ]
  %2024 = phi float [ %2020, %1964 ], [ %105, %1878 ]
  %2025 = phi float [ %2021, %1964 ], [ %106, %1878 ]
  %2026 = phi float [ %1159, %1964 ], [ %62, %1878 ]
  %2027 = phi float [ %1985, %1964 ], [ %1882, %1878 ]
  %2028 = phi float [ %1986, %1964 ], [ %1885, %1878 ]
  %2029 = phi float [ %1987, %1964 ], [ %1888, %1878 ]
  %2030 = phi float [ %1988, %1964 ], [ %1866, %1878 ]
  %2031 = phi float [ %1989, %1964 ], [ %1867, %1878 ]
  %2032 = phi float [ %1990, %1964 ], [ %1868, %1878 ]
  %2033 = phi float [ %1965, %1964 ], [ 1.000000e+00, %1878 ]
  br i1 %1167, label %3089, label %2034

; <label>:2034                                    ; preds = %2022
  %2035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %2036 = extractvalue %dx.types.CBufRet.f32 %2035, 0
  %2037 = extractvalue %dx.types.CBufRet.f32 %2035, 1
  %2038 = extractvalue %dx.types.CBufRet.f32 %2035, 2
  %2039 = extractvalue %dx.types.CBufRet.f32 %2035, 3
  %2040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %2041 = extractvalue %dx.types.CBufRet.f32 %2040, 0
  %2042 = extractvalue %dx.types.CBufRet.f32 %2040, 1
  %2043 = extractvalue %dx.types.CBufRet.f32 %2040, 2
  %2044 = extractvalue %dx.types.CBufRet.f32 %2040, 3
  %2045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %2046 = extractvalue %dx.types.CBufRet.f32 %2045, 0
  %2047 = extractvalue %dx.types.CBufRet.f32 %2045, 1
  %2048 = extractvalue %dx.types.CBufRet.f32 %2045, 2
  %2049 = extractvalue %dx.types.CBufRet.f32 %2045, 3
  %2050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %2051 = extractvalue %dx.types.CBufRet.f32 %2050, 0
  %2052 = extractvalue %dx.types.CBufRet.f32 %2050, 1
  %2053 = extractvalue %dx.types.CBufRet.f32 %2050, 2
  %2054 = extractvalue %dx.types.CBufRet.f32 %2050, 3
  %2055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %2056 = extractvalue %dx.types.CBufRet.f32 %2055, 3
  %2057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %2058 = extractvalue %dx.types.CBufRet.f32 %2057, 3
  %2059 = extractvalue %dx.types.CBufRet.f32 %2057, 0
  %2060 = extractvalue %dx.types.CBufRet.f32 %2057, 1
  %2061 = extractvalue %dx.types.CBufRet.f32 %2057, 2
  %2062 = fcmp fast olt float %2061, -5.000000e-01
  %2063 = call float @dx.op.dot3.f32(i32 55, float %2023, float %2024, float %2025, float %2023, float %2024, float %2025)  ; Dot3(ax,ay,az,bx,by,bz)
  %2064 = call float @dx.op.unary.f32(i32 25, float %2063)  ; Rsqrt(value)
  %2065 = fmul fast float %2064, %2063
  %2066 = fmul fast float %2064, %2023
  %2067 = fmul fast float %2064, %2024
  %2068 = fmul fast float %2064, %2025
  %2069 = fadd fast float %2065, %2039
  %2070 = call float @dx.op.dot3.f32(i32 55, float %2066, float %2067, float %2068, float %2036, float %2037, float %2038)  ; Dot3(ax,ay,az,bx,by,bz)
  %2071 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2072 = extractvalue %dx.types.CBufRet.i32 %2071, 1
  %2073 = and i32 %2072, 1
  %2074 = icmp ne i32 %2073, 0
  %2075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %2076 = extractvalue %dx.types.CBufRet.f32 %2075, 2
  %2077 = fcmp fast ogt float %2076, 0.000000e+00
  %2078 = and i1 %2074, %2077
  br i1 %2078, label %2079, label %2485, !dx.controlflow.hints !84

; <label>:2079                                    ; preds = %2034
  %2080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %2081 = extractvalue %dx.types.CBufRet.f32 %2080, 3
  %2082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2083 = extractvalue %dx.types.CBufRet.f32 %2082, 2
  %2084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2085 = extractvalue %dx.types.CBufRet.f32 %2084, 2
  %2086 = fsub fast float %2083, %2085
  %2087 = and i32 %2072, 2
  %2088 = extractvalue %dx.types.CBufRet.i32 %2071, 0
  %2089 = call i32 @dx.op.binary.i32(i32 40, i32 %2088, i32 3)  ; UMin(a,b)
  %2090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2091 = extractvalue %dx.types.CBufRet.f32 %2090, 0
  %2092 = extractvalue %dx.types.CBufRet.f32 %2090, 1
  %2093 = extractvalue %dx.types.CBufRet.f32 %2084, 0
  %2094 = extractvalue %dx.types.CBufRet.f32 %2084, 1
  %2095 = fsub fast float %2091, %2093
  %2096 = fsub fast float %2092, %2094
  %2097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2098 = extractvalue %dx.types.CBufRet.f32 %2097, 0
  %2099 = fcmp fast ogt float %2098, 0.000000e+00
  %2100 = fsub fast float -0.000000e+00, %2095
  %2101 = fsub fast float -0.000000e+00, %2096
  %2102 = call float @dx.op.dot2.f32(i32 54, float %2066, float %2067, float %2066, float %2067)  ; Dot2(ax,ay,bx,by)
  %2103 = call float @dx.op.dot2.f32(i32 54, float %2066, float %2067, float %2100, float %2101)  ; Dot2(ax,ay,bx,by)
  %2104 = fmul fast float %2103, 2.000000e+00
  %2105 = call float @dx.op.dot2.f32(i32 54, float %2100, float %2101, float %2100, float %2101)  ; Dot2(ax,ay,bx,by)
  %2106 = fmul fast float %2098, %2098
  %2107 = fsub fast float %2105, %2106
  %2108 = fmul fast float %2104, %2104
  %2109 = fmul fast float %2102, 4.000000e+00
  %2110 = fmul fast float %2109, %2107
  %2111 = fsub fast float %2108, %2110
  %2112 = fcmp fast ogt float %2111, 0.000000e+00
  br i1 %2112, label %2113, label %2128

; <label>:2113                                    ; preds = %2079
  %2114 = fcmp fast ogt float %2104, 0.000000e+00
  %2115 = call float @dx.op.unary.f32(i32 24, float %2111)  ; Sqrt(value)
  %2116 = fsub fast float -0.000000e+00, %2115
  %2117 = select i1 %2114, float %2115, float %2116
  %2118 = fadd fast float %2117, %2104
  %2119 = fmul float %2118, -5.000000e-01
  %2120 = fdiv fast float %2119, %2102
  %2121 = call float @dx.op.binary.f32(i32 35, float %2120, float 0.000000e+00)  ; FMax(a,b)
  %2122 = call float @dx.op.binary.f32(i32 36, float %2065, float %2121)  ; FMin(a,b)
  %2123 = fdiv fast float %2107, %2119
  %2124 = call float @dx.op.binary.f32(i32 35, float %2123, float 0.000000e+00)  ; FMax(a,b)
  %2125 = call float @dx.op.binary.f32(i32 36, float %2065, float %2124)  ; FMin(a,b)
  %2126 = call float @dx.op.binary.f32(i32 36, float %2122, float %2125)  ; FMin(a,b)
  %2127 = call float @dx.op.binary.f32(i32 35, float %2122, float %2125)  ; FMax(a,b)
  br label %2128

; <label>:2128                                    ; preds = %2113, %2079
  %2129 = phi float [ %2127, %2113 ], [ -1.000000e+00, %2079 ]
  %2130 = phi float [ %2126, %2113 ], [ -1.000000e+00, %2079 ]
  %2131 = phi i1 [ true, %2113 ], [ false, %2079 ]
  %2132 = and i1 %2099, %2131
  br i1 %2132, label %2133, label %2135

; <label>:2133                                    ; preds = %2128
  %2134 = fcmp fast oeq float %2130, %2129
  br i1 %2134, label %2438, label %2136

; <label>:2135                                    ; preds = %2128
  br i1 %2099, label %2438, label %2136

; <label>:2136                                    ; preds = %2135, %2133
  %2137 = phi float [ %2065, %2135 ], [ %2129, %2133 ]
  %2138 = phi float [ 0.000000e+00, %2135 ], [ %2130, %2133 ]
  %2139 = icmp ne i32 %2087, 0
  %2140 = fmul fast float %2137, %2068
  %2141 = fadd fast float %2140, %2081
  %2142 = fmul fast float %2141, %2137
  %2143 = select i1 %2139, float 0.000000e+00, float %2142
  %2144 = fcmp fast oeq float %2068, 0.000000e+00
  %2145 = fdiv fast float %2086, %2068
  %2146 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2145)  ; FMax(a,b)
  %2147 = select i1 %2144, float %2137, float %2146
  %2148 = call float @dx.op.binary.f32(i32 36, float %2137, float %2147)  ; FMin(a,b)
  %2149 = fcmp fast ogt float %2068, 0.000000e+00
  %2150 = fcmp fast olt float %2086, 0.000000e+00
  br i1 %2149, label %2151, label %2208

; <label>:2151                                    ; preds = %2136
  %2152 = icmp eq i32 %2087, 0
  br i1 %2150, label %2153, label %2197

; <label>:2153                                    ; preds = %2151
  %2154 = select i1 %2152, float %2137, float 0.000000e+00
  %2155 = fsub fast float -0.000000e+00, %2154
  %2156 = call float @dx.op.unary.f32(i32 6, float %2155)  ; FAbs(value)
  %2157 = fmul fast float %2154, %2068
  %2158 = fadd fast float %2157, %2081
  %2159 = fmul fast float %2156, %2158
  %2160 = fsub fast float %2143, %2159
  %2161 = fsub fast float %2137, %2156
  %2162 = select i1 %2152, float %2161, float 0.000000e+00
  %2163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2164 = extractvalue %dx.types.CBufRet.f32 %2163, 0
  %2165 = extractvalue %dx.types.CBufRet.f32 %2163, 1
  %2166 = extractvalue %dx.types.CBufRet.f32 %2163, 2
  %2167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2168 = extractvalue %dx.types.CBufRet.f32 %2167, 0
  %2169 = extractvalue %dx.types.CBufRet.f32 %2167, 1
  %2170 = extractvalue %dx.types.CBufRet.f32 %2167, 2
  %2171 = extractvalue %dx.types.CBufRet.f32 %2167, 3
  %2172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2173 = extractvalue %dx.types.CBufRet.f32 %2172, 3
  %2174 = call float @dx.op.binary.f32(i32 36, float %2160, float %2173)  ; FMin(a,b)
  %2175 = fmul fast float %2171, %2162
  %2176 = call float @dx.op.unary.f32(i32 7, float %2175)  ; Saturate(value)
  %2177 = fsub fast float %2168, %2164
  %2178 = fsub fast float %2169, %2165
  %2179 = fsub fast float %2170, %2166
  %2180 = fmul fast float %2176, %2177
  %2181 = fmul fast float %2176, %2178
  %2182 = fmul fast float %2176, %2179
  %2183 = fadd fast float %2180, %2164
  %2184 = fadd fast float %2181, %2165
  %2185 = fadd fast float %2182, %2166
  %2186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2187 = extractvalue %dx.types.CBufRet.f32 %2186, 0
  %2188 = extractvalue %dx.types.CBufRet.f32 %2186, 1
  %2189 = fadd fast float %2188, %2187
  %2190 = call float @dx.op.unary.f32(i32 7, float %2189)  ; Saturate(value)
  %2191 = extractvalue %dx.types.CBufRet.f32 %2186, 2
  %2192 = extractvalue %dx.types.CBufRet.f32 %2186, 3
  %2193 = fadd fast float %2192, %2191
  %2194 = call float @dx.op.unary.f32(i32 7, float %2193)  ; Saturate(value)
  %2195 = fmul fast float %2190, %2174
  %2196 = fmul fast float %2195, %2194
  br label %2438

; <label>:2197                                    ; preds = %2151
  br i1 %2152, label %2198, label %2219

; <label>:2198                                    ; preds = %2197
  %2199 = call float @dx.op.binary.f32(i32 36, float %2148, float %2138)  ; FMin(a,b)
  %2200 = fsub fast float %2148, %2199
  %2201 = fsub fast float %2200, %2137
  %2202 = call float @dx.op.unary.f32(i32 6, float %2201)  ; FAbs(value)
  %2203 = fadd fast float %2200, %2137
  %2204 = fmul fast float %2203, %2068
  %2205 = fadd fast float %2204, %2081
  %2206 = fmul fast float %2205, %2202
  %2207 = fsub fast float %2143, %2206
  br label %2219

; <label>:2208                                    ; preds = %2136
  br i1 %2150, label %2209, label %2219

; <label>:2209                                    ; preds = %2208
  %2210 = call float @dx.op.binary.f32(i32 35, float %2138, float %2148)  ; FMax(a,b)
  %2211 = icmp eq i32 %2087, 0
  %2212 = select i1 %2211, float %2148, float 0.000000e+00
  %2213 = fsub fast float -0.000000e+00, %2212
  %2214 = call float @dx.op.unary.f32(i32 6, float %2213)  ; FAbs(value)
  %2215 = fmul fast float %2212, %2068
  %2216 = fadd fast float %2215, %2081
  %2217 = fmul fast float %2214, %2216
  %2218 = fsub fast float %2143, %2217
  br label %2219

; <label>:2219                                    ; preds = %2209, %2208, %2198, %2197
  %2220 = phi float [ %2138, %2197 ], [ %2138, %2198 ], [ %2210, %2209 ], [ %2138, %2208 ]
  %2221 = phi float [ 0.000000e+00, %2197 ], [ %2202, %2198 ], [ %2214, %2209 ], [ 0.000000e+00, %2208 ]
  %2222 = phi float [ %2143, %2197 ], [ %2207, %2198 ], [ %2218, %2209 ], [ %2143, %2208 ]
  %2223 = phi float [ %2148, %2197 ], [ %2148, %2198 ], [ %2137, %2209 ], [ %2137, %2208 ]
  %2224 = getelementptr inbounds [3 x float], [3 x float]* %63, i32 0, i32 0
  store float -1.000000e+00, float* %2224, align 4, !tbaa !85, !noalias !89
  %2225 = getelementptr inbounds [3 x float], [3 x float]* %63, i32 0, i32 1
  store float -1.000000e+00, float* %2225, align 4, !tbaa !85, !noalias !89
  %2226 = getelementptr inbounds [3 x float], [3 x float]* %63, i32 0, i32 2
  store float -1.000000e+00, float* %2226, align 4, !tbaa !85, !noalias !89
  %2227 = getelementptr inbounds [3 x float], [3 x float]* %64, i32 0, i32 0
  store float -1.000000e+00, float* %2227, align 4, !tbaa !85, !noalias !89
  %2228 = getelementptr inbounds [3 x float], [3 x float]* %64, i32 0, i32 1
  store float -1.000000e+00, float* %2228, align 4, !tbaa !85, !noalias !89
  %2229 = getelementptr inbounds [3 x float], [3 x float]* %64, i32 0, i32 2
  store float -1.000000e+00, float* %2229, align 4, !tbaa !85, !noalias !89
  %2230 = icmp sgt i32 %2089, 0
  br i1 %2230, label %2231, label %2292

; <label>:2231                                    ; preds = %2219
  br label %2232

; <label>:2232                                    ; preds = %2281, %2231
  %2233 = phi i32 [ %2282, %2281 ], [ 0, %2231 ]
  %2234 = phi i32 [ %2283, %2281 ], [ 0, %2231 ]
  %2235 = add nuw i32 %2234, 171
  %2236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 %2235)  ; CBufferLoadLegacy(handle,regIndex)
  %2237 = extractvalue %dx.types.CBufRet.f32 %2236, 0
  %2238 = extractvalue %dx.types.CBufRet.f32 %2236, 1
  %2239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2240 = extractvalue %dx.types.CBufRet.f32 %2239, 0
  %2241 = extractvalue %dx.types.CBufRet.f32 %2239, 1
  %2242 = fsub fast float %2237, %2240
  %2243 = fsub fast float %2238, %2241
  %2244 = extractvalue %dx.types.CBufRet.f32 %2236, 2
  %2245 = fsub fast float -0.000000e+00, %2242
  %2246 = fsub fast float -0.000000e+00, %2243
  %2247 = call float @dx.op.dot2.f32(i32 54, float %2066, float %2067, float %2245, float %2246)  ; Dot2(ax,ay,bx,by)
  %2248 = fmul fast float %2247, 2.000000e+00
  %2249 = call float @dx.op.dot2.f32(i32 54, float %2245, float %2246, float %2245, float %2246)  ; Dot2(ax,ay,bx,by)
  %2250 = fmul fast float %2244, %2244
  %2251 = fsub fast float %2249, %2250
  %2252 = fmul fast float %2248, %2248
  %2253 = fmul fast float %2109, %2251
  %2254 = fsub fast float %2252, %2253
  %2255 = fcmp fast ogt float %2254, 0.000000e+00
  br i1 %2255, label %2256, label %2271

; <label>:2256                                    ; preds = %2232
  %2257 = fcmp fast ogt float %2248, 0.000000e+00
  %2258 = call float @dx.op.unary.f32(i32 24, float %2254)  ; Sqrt(value)
  %2259 = fsub fast float -0.000000e+00, %2258
  %2260 = select i1 %2257, float %2258, float %2259
  %2261 = fadd fast float %2260, %2248
  %2262 = fmul float %2261, -5.000000e-01
  %2263 = fdiv fast float %2262, %2102
  %2264 = call float @dx.op.binary.f32(i32 35, float %2263, float 0.000000e+00)  ; FMax(a,b)
  %2265 = call float @dx.op.binary.f32(i32 36, float %2137, float %2264)  ; FMin(a,b)
  %2266 = fdiv fast float %2251, %2262
  %2267 = call float @dx.op.binary.f32(i32 35, float %2266, float 0.000000e+00)  ; FMax(a,b)
  %2268 = call float @dx.op.binary.f32(i32 36, float %2137, float %2267)  ; FMin(a,b)
  %2269 = call float @dx.op.binary.f32(i32 36, float %2265, float %2268)  ; FMin(a,b)
  %2270 = call float @dx.op.binary.f32(i32 35, float %2265, float %2268)  ; FMax(a,b)
  br label %2271

; <label>:2271                                    ; preds = %2256, %2232
  %2272 = phi float [ %2270, %2256 ], [ -1.000000e+00, %2232 ]
  %2273 = phi float [ %2269, %2256 ], [ -1.000000e+00, %2232 ]
  %2274 = phi i1 [ true, %2256 ], [ false, %2232 ]
  br i1 %2274, label %2275, label %2281

; <label>:2275                                    ; preds = %2271
  %2276 = call float @dx.op.binary.f32(i32 35, float %2220, float %2273)  ; FMax(a,b)
  %2277 = getelementptr inbounds [3 x float], [3 x float]* %63, i32 0, i32 %2234
  store float %2276, float* %2277, align 4, !tbaa !85, !noalias !89
  %2278 = call float @dx.op.binary.f32(i32 35, float %2220, float %2272)  ; FMax(a,b)
  %2279 = getelementptr inbounds [3 x float], [3 x float]* %64, i32 0, i32 %2234
  store float %2278, float* %2279, align 4, !tbaa !85, !noalias !89
  %2280 = add nsw i32 %2233, 1
  br label %2281

; <label>:2281                                    ; preds = %2275, %2271
  %2282 = phi i32 [ %2280, %2275 ], [ %2233, %2271 ]
  %2283 = add nuw nsw i32 %2234, 1
  %2284 = icmp eq i32 %2283, %2089
  br i1 %2284, label %2285, label %2232

; <label>:2285                                    ; preds = %2281
  %2286 = load float, float* %2226, align 4, !tbaa !85, !alias.scope !105, !noalias !108
  %2287 = load float, float* %2225, align 4, !tbaa !85, !alias.scope !111, !noalias !112
  %2288 = load float, float* %2224, align 4, !tbaa !85, !alias.scope !113, !noalias !114
  %2289 = load float, float* %2229, align 4, !tbaa !85, !alias.scope !115, !noalias !118
  %2290 = load float, float* %2228, align 4, !tbaa !85, !alias.scope !121, !noalias !122
  %2291 = load float, float* %2227, align 4, !tbaa !85, !alias.scope !123, !noalias !124
  br label %2292

; <label>:2292                                    ; preds = %2285, %2219
  %2293 = phi float [ -1.000000e+00, %2219 ], [ %2291, %2285 ]
  %2294 = phi float [ -1.000000e+00, %2219 ], [ %2290, %2285 ]
  %2295 = phi float [ -1.000000e+00, %2219 ], [ %2289, %2285 ]
  %2296 = phi float [ -1.000000e+00, %2219 ], [ %2288, %2285 ]
  %2297 = phi float [ -1.000000e+00, %2219 ], [ %2287, %2285 ]
  %2298 = phi float [ -1.000000e+00, %2219 ], [ %2286, %2285 ]
  %2299 = phi i32 [ 0, %2219 ], [ %2282, %2285 ]
  %2300 = call float @dx.op.binary.f32(i32 36, float %2297, float %2298)  ; FMin(a,b)
  %2301 = call float @dx.op.binary.f32(i32 36, float %2296, float %2300)  ; FMin(a,b)
  %2302 = call float @dx.op.binary.f32(i32 35, float %2296, float %2297)  ; FMax(a,b)
  %2303 = call float @dx.op.binary.f32(i32 36, float %2302, float %2298)  ; FMin(a,b)
  %2304 = call float @dx.op.binary.f32(i32 36, float %2296, float %2297)  ; FMin(a,b)
  %2305 = call float @dx.op.binary.f32(i32 35, float %2304, float %2303)  ; FMax(a,b)
  %2306 = call float @dx.op.binary.f32(i32 35, float %2297, float %2298)  ; FMax(a,b)
  %2307 = call float @dx.op.binary.f32(i32 35, float %2296, float %2306)  ; FMax(a,b)
  store float %2301, float* %2224, align 4, !tbaa !85, !alias.scope !113, !noalias !114
  store float %2305, float* %2225, align 4, !tbaa !85, !alias.scope !111, !noalias !112
  store float %2307, float* %2226, align 4, !tbaa !85, !alias.scope !105, !noalias !108
  %2308 = call float @dx.op.binary.f32(i32 36, float %2294, float %2295)  ; FMin(a,b)
  %2309 = call float @dx.op.binary.f32(i32 36, float %2293, float %2308)  ; FMin(a,b)
  %2310 = call float @dx.op.binary.f32(i32 35, float %2293, float %2294)  ; FMax(a,b)
  %2311 = call float @dx.op.binary.f32(i32 36, float %2310, float %2295)  ; FMin(a,b)
  %2312 = call float @dx.op.binary.f32(i32 36, float %2293, float %2294)  ; FMin(a,b)
  %2313 = call float @dx.op.binary.f32(i32 35, float %2312, float %2311)  ; FMax(a,b)
  %2314 = call float @dx.op.binary.f32(i32 35, float %2294, float %2295)  ; FMax(a,b)
  %2315 = call float @dx.op.binary.f32(i32 35, float %2293, float %2314)  ; FMax(a,b)
  store float %2309, float* %2227, align 4, !tbaa !85, !alias.scope !123, !noalias !124
  store float %2313, float* %2228, align 4, !tbaa !85, !alias.scope !121, !noalias !122
  store float %2315, float* %2229, align 4, !tbaa !85, !alias.scope !115, !noalias !118
  %2316 = sub nsw i32 3, %2299
  %2317 = icmp sgt i32 %2316, 2
  br i1 %2317, label %2318, label %2356

; <label>:2318                                    ; preds = %2292
  %2319 = icmp eq i32 %2087, 0
  %2320 = fsub fast float %2137, %2221
  %2321 = select i1 %2319, float %2320, float %2221
  %2322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2323 = extractvalue %dx.types.CBufRet.f32 %2322, 0
  %2324 = extractvalue %dx.types.CBufRet.f32 %2322, 1
  %2325 = extractvalue %dx.types.CBufRet.f32 %2322, 2
  %2326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2327 = extractvalue %dx.types.CBufRet.f32 %2326, 0
  %2328 = extractvalue %dx.types.CBufRet.f32 %2326, 1
  %2329 = extractvalue %dx.types.CBufRet.f32 %2326, 2
  %2330 = extractvalue %dx.types.CBufRet.f32 %2326, 3
  %2331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2332 = extractvalue %dx.types.CBufRet.f32 %2331, 3
  %2333 = call float @dx.op.binary.f32(i32 36, float %2222, float %2332)  ; FMin(a,b)
  %2334 = fmul fast float %2330, %2321
  %2335 = call float @dx.op.unary.f32(i32 7, float %2334)  ; Saturate(value)
  %2336 = fsub fast float %2327, %2323
  %2337 = fsub fast float %2328, %2324
  %2338 = fsub fast float %2329, %2325
  %2339 = fmul fast float %2335, %2336
  %2340 = fmul fast float %2335, %2337
  %2341 = fmul fast float %2335, %2338
  %2342 = fadd fast float %2339, %2323
  %2343 = fadd fast float %2340, %2324
  %2344 = fadd fast float %2341, %2325
  %2345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2346 = extractvalue %dx.types.CBufRet.f32 %2345, 0
  %2347 = extractvalue %dx.types.CBufRet.f32 %2345, 1
  %2348 = fadd fast float %2347, %2346
  %2349 = call float @dx.op.unary.f32(i32 7, float %2348)  ; Saturate(value)
  %2350 = extractvalue %dx.types.CBufRet.f32 %2345, 2
  %2351 = extractvalue %dx.types.CBufRet.f32 %2345, 3
  %2352 = fadd fast float %2351, %2350
  %2353 = call float @dx.op.unary.f32(i32 7, float %2352)  ; Saturate(value)
  %2354 = fmul fast float %2349, %2333
  %2355 = fmul fast float %2354, %2353
  br label %2438

; <label>:2356                                    ; preds = %2292
  %2357 = getelementptr inbounds [3 x float], [3 x float]* %63, i32 0, i32 %2316
  %2358 = load float, float* %2357, align 4, !tbaa !85, !noalias !89
  %2359 = fcmp fast olt float %2358, %2223
  %2360 = icmp sgt i32 %2299, 0
  %2361 = and i1 %2360, %2359
  br i1 %2361, label %2362, label %2399

; <label>:2362                                    ; preds = %2356
  br label %2363

; <label>:2363                                    ; preds = %2392, %2362
  %2364 = phi float [ %2393, %2392 ], [ %2221, %2362 ]
  %2365 = phi float [ %2394, %2392 ], [ %2222, %2362 ]
  %2366 = phi float [ %2374, %2392 ], [ %2358, %2362 ]
  %2367 = phi i32 [ %2371, %2392 ], [ %2316, %2362 ]
  %2368 = getelementptr inbounds [3 x float], [3 x float]* %64, i32 0, i32 %2367
  %2369 = load float, float* %2368, align 4, !tbaa !85, !noalias !89
  %2370 = icmp slt i32 %2367, 2
  %2371 = add nsw i32 %2367, 1
  %2372 = getelementptr inbounds [3 x float], [3 x float]* %63, i32 0, i32 %2371
  %2373 = load float, float* %2372, align 4, !tbaa !85, !noalias !89
  %2374 = select i1 %2370, float %2373, float %2137
  %2375 = call float @dx.op.binary.f32(i32 36, float %2374, float %2369)  ; FMin(a,b)
  %2376 = call float @dx.op.binary.f32(i32 36, float %2223, float %2375)  ; FMin(a,b)
  %2377 = icmp eq i32 %2087, 0
  %2378 = fadd fast float %2376, %2366
  %2379 = fmul fast float %2378, %2068
  %2380 = fadd fast float %2379, %2081
  br i1 %2377, label %2386, label %2381

; <label>:2381                                    ; preds = %2363
  %2382 = fsub fast float %2376, %2366
  %2383 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2382)  ; FMax(a,b)
  %2384 = fmul fast float %2383, %2380
  %2385 = fadd fast float %2384, %2365
  br label %2392

; <label>:2386                                    ; preds = %2363
  %2387 = fsub fast float %2366, %2376
  %2388 = call float @dx.op.unary.f32(i32 6, float %2387)  ; FAbs(value)
  %2389 = fadd fast float %2388, %2364
  %2390 = fmul fast float %2388, %2380
  %2391 = fsub fast float %2365, %2390
  br label %2392

; <label>:2392                                    ; preds = %2386, %2381
  %2393 = phi float [ %2383, %2381 ], [ %2389, %2386 ]
  %2394 = phi float [ %2385, %2381 ], [ %2391, %2386 ]
  %2395 = fcmp fast olt float %2374, %2223
  %2396 = icmp slt i32 %2371, 3
  %2397 = and i1 %2396, %2395
  br i1 %2397, label %2363, label %2398

; <label>:2398                                    ; preds = %2392
  br label %2399

; <label>:2399                                    ; preds = %2398, %2356
  %2400 = phi float [ %2221, %2356 ], [ %2393, %2398 ]
  %2401 = phi float [ %2222, %2356 ], [ %2394, %2398 ]
  %2402 = fsub fast float %2137, %2400
  %2403 = select i1 %2139, float %2400, float %2402
  %2404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2405 = extractvalue %dx.types.CBufRet.f32 %2404, 0
  %2406 = extractvalue %dx.types.CBufRet.f32 %2404, 1
  %2407 = extractvalue %dx.types.CBufRet.f32 %2404, 2
  %2408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2409 = extractvalue %dx.types.CBufRet.f32 %2408, 0
  %2410 = extractvalue %dx.types.CBufRet.f32 %2408, 1
  %2411 = extractvalue %dx.types.CBufRet.f32 %2408, 2
  %2412 = extractvalue %dx.types.CBufRet.f32 %2408, 3
  %2413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2414 = extractvalue %dx.types.CBufRet.f32 %2413, 3
  %2415 = call float @dx.op.binary.f32(i32 36, float %2401, float %2414)  ; FMin(a,b)
  %2416 = fmul fast float %2412, %2403
  %2417 = call float @dx.op.unary.f32(i32 7, float %2416)  ; Saturate(value)
  %2418 = fsub fast float %2409, %2405
  %2419 = fsub fast float %2410, %2406
  %2420 = fsub fast float %2411, %2407
  %2421 = fmul fast float %2417, %2418
  %2422 = fmul fast float %2417, %2419
  %2423 = fmul fast float %2417, %2420
  %2424 = fadd fast float %2421, %2405
  %2425 = fadd fast float %2422, %2406
  %2426 = fadd fast float %2423, %2407
  %2427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2428 = extractvalue %dx.types.CBufRet.f32 %2427, 0
  %2429 = extractvalue %dx.types.CBufRet.f32 %2427, 1
  %2430 = fadd fast float %2429, %2428
  %2431 = call float @dx.op.unary.f32(i32 7, float %2430)  ; Saturate(value)
  %2432 = extractvalue %dx.types.CBufRet.f32 %2427, 2
  %2433 = extractvalue %dx.types.CBufRet.f32 %2427, 3
  %2434 = fadd fast float %2433, %2432
  %2435 = call float @dx.op.unary.f32(i32 7, float %2434)  ; Saturate(value)
  %2436 = fmul fast float %2431, %2415
  %2437 = fmul fast float %2436, %2435
  br label %2438

; <label>:2438                                    ; preds = %2399, %2318, %2153, %2135, %2133
  %2439 = phi float [ %2162, %2153 ], [ %2321, %2318 ], [ %2403, %2399 ], [ 0.000000e+00, %2133 ], [ 0.000000e+00, %2135 ]
  %2440 = phi float [ %2196, %2153 ], [ %2355, %2318 ], [ %2437, %2399 ], [ 0.000000e+00, %2133 ], [ 0.000000e+00, %2135 ]
  %2441 = phi float [ %2183, %2153 ], [ %2342, %2318 ], [ %2424, %2399 ], [ 0.000000e+00, %2133 ], [ 0.000000e+00, %2135 ]
  %2442 = phi float [ %2184, %2153 ], [ %2343, %2318 ], [ %2425, %2399 ], [ 0.000000e+00, %2133 ], [ 0.000000e+00, %2135 ]
  %2443 = phi float [ %2185, %2153 ], [ %2344, %2318 ], [ %2426, %2399 ], [ 0.000000e+00, %2133 ], [ 0.000000e+00, %2135 ]
  %2444 = fmul fast float %2076, %2440
  %2445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2446 = extractvalue %dx.types.CBufRet.f32 %2445, 2
  %2447 = fsub fast float %2083, %2446
  %2448 = fcmp fast olt float %2444, -2.000000e+01
  %2449 = call float @dx.op.unary.f32(i32 21, float %2444)  ; Exp(value)
  %2450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2451 = extractvalue %dx.types.CBufRet.f32 %2450, 2
  %2452 = extractvalue %dx.types.CBufRet.f32 %2450, 3
  %2453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2454 = extractvalue %dx.types.CBufRet.f32 %2453, 2
  %2455 = fmul fast float %2452, %2447
  %2456 = call float @dx.op.unary.f32(i32 7, float %2455)  ; Saturate(value)
  %2457 = fsub fast float 1.000000e+00, %2456
  %2458 = fmul fast float %2068, 5.000000e-01
  %2459 = fadd fast float %2458, 5.000000e-01
  %2460 = call float @dx.op.unary.f32(i32 7, float %2459)  ; Saturate(value)
  %2461 = fsub fast float 1.000000e+00, %2460
  %2462 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2457)  ; FMax(a,b)
  %2463 = fdiv fast float %2461, %2462
  %2464 = fsub fast float %2447, %2025
  %2465 = call float @dx.op.unary.f32(i32 6, float %2464)  ; FAbs(value)
  %2466 = fmul fast float %2465, %2451
  %2467 = call float @dx.op.unary.f32(i32 7, float %2463)  ; Saturate(value)
  %2468 = fsub fast float 1.000000e+00, %2466
  %2469 = fmul fast float %2468, %2467
  %2470 = fadd fast float %2469, %2466
  %2471 = fmul fast float %2454, %2447
  %2472 = call float @dx.op.unary.f32(i32 7, float %2471)  ; Saturate(value)
  %2473 = fsub fast float 1.000000e+00, %2470
  %2474 = fmul fast float %2473, %2472
  %2475 = fadd fast float %2474, %2470
  %2476 = call float @dx.op.unary.f32(i32 7, float %2475)  ; Saturate(value)
  %2477 = fadd fast float %2449, -1.000000e+00
  %2478 = select i1 %2448, float -1.000000e+00, float %2477
  %2479 = fmul fast float %2476, %2478
  %2480 = fadd fast float %2479, 1.000000e+00
  %2481 = fsub fast float -0.000000e+00, %2479
  %2482 = fmul fast float %2441, %2481
  %2483 = fmul fast float %2442, %2481
  %2484 = fmul fast float %2443, %2481
  br label %2485

; <label>:2485                                    ; preds = %2438, %2034
  %2486 = phi float [ %2439, %2438 ], [ 0.000000e+00, %2034 ]
  %2487 = phi float [ %2480, %2438 ], [ 1.000000e+00, %2034 ]
  %2488 = phi float [ %2482, %2438 ], [ 0.000000e+00, %2034 ]
  %2489 = phi float [ %2483, %2438 ], [ 0.000000e+00, %2034 ]
  %2490 = phi float [ %2484, %2438 ], [ 0.000000e+00, %2034 ]
  %2491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2492 = extractvalue %dx.types.CBufRet.f32 %2491, 1
  %2493 = fsub fast float 1.000000e+00, %2487
  %2494 = fmul fast float %2493, %2069
  %2495 = fmul fast float %2494, %2492
  %2496 = fsub fast float %2069, %2495
  br i1 %2062, label %2497, label %2526, !dx.controlflow.hints !125

; <label>:2497                                    ; preds = %2485
  %2498 = fmul fast float %2070, %2059
  %2499 = fadd fast float %2498, %2060
  %2500 = call float @dx.op.unary.f32(i32 7, float %2499)  ; Saturate(value)
  %2501 = fmul fast float %2041, %2496
  %2502 = fsub fast float -0.000000e+00, %2501
  %2503 = fmul fast float %2042, %2496
  %2504 = fsub fast float -0.000000e+00, %2503
  %2505 = call float @dx.op.unary.f32(i32 21, float %2502)  ; Exp(value)
  %2506 = call float @dx.op.unary.f32(i32 21, float %2504)  ; Exp(value)
  %2507 = call float @dx.op.binary.f32(i32 35, float %2049, float %2505)  ; FMax(a,b)
  %2508 = call float @dx.op.binary.f32(i32 35, float %2049, float %2506)  ; FMax(a,b)
  %2509 = fsub fast float %2508, %2507
  %2510 = fmul fast float %2509, %2500
  %2511 = fadd fast float %2510, %2507
  %2512 = call float @dx.op.unary.f32(i32 7, float %2511)  ; Saturate(value)
  %2513 = fsub fast float %2046, %2051
  %2514 = fsub fast float %2047, %2052
  %2515 = fsub fast float %2048, %2053
  %2516 = fmul fast float %2500, %2513
  %2517 = fmul fast float %2500, %2514
  %2518 = fmul fast float %2500, %2515
  %2519 = fadd fast float %2516, %2051
  %2520 = fadd fast float %2517, %2052
  %2521 = fadd fast float %2518, %2053
  %2522 = fsub fast float 1.000000e+00, %2512
  %2523 = fmul fast float %2522, %2519
  %2524 = fmul fast float %2522, %2520
  %2525 = fmul fast float %2522, %2521
  br label %2585

; <label>:2526                                    ; preds = %2485
  %2527 = fmul fast float %2496, %2058
  %2528 = call float @dx.op.unary.f32(i32 7, float %2527)  ; Saturate(value)
  %2529 = fsub fast float 2.000000e+00, %2528
  %2530 = fmul fast float %2528, 9.921875e-01
  %2531 = fmul fast float %2530, %2529
  %2532 = fadd fast float %2531, 3.906250e-03
  %2533 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %26, float %2532, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2534 = extractvalue %dx.types.ResRet.f32 %2533, 0
  %2535 = fsub fast float %2528, %2534
  %2536 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2535)  ; FMax(a,b)
  %2537 = fmul fast float %2044, %2025
  %2538 = call float @dx.op.unary.f32(i32 6, float %2537)  ; FAbs(value)
  %2539 = fcmp fast ogt float %2538, 0x3EB0C6F7A0000000
  br i1 %2539, label %2540, label %2546, !dx.controlflow.hints !126

; <label>:2540                                    ; preds = %2526
  %2541 = fmul fast float %2537, 0xBFF7154760000000
  %2542 = call float @dx.op.unary.f32(i32 21, float %2541)  ; Exp(value)
  %2543 = fsub fast float 1.000000e+00, %2542
  %2544 = fdiv fast float %2543, %2537
  %2545 = fmul fast float %2544, %2054
  br label %2546

; <label>:2546                                    ; preds = %2540, %2526
  %2547 = phi float [ %2545, %2540 ], [ %2054, %2526 ]
  %2548 = fadd fast float %2547, %2056
  %2549 = fmul fast float %2548, %2536
  %2550 = fmul fast float %2041, %2549
  %2551 = fsub fast float -0.000000e+00, %2550
  %2552 = fmul fast float %2042, %2549
  %2553 = fsub fast float -0.000000e+00, %2552
  %2554 = fmul fast float %2043, %2549
  %2555 = fsub fast float -0.000000e+00, %2554
  %2556 = call float @dx.op.unary.f32(i32 21, float %2551)  ; Exp(value)
  %2557 = call float @dx.op.unary.f32(i32 21, float %2553)  ; Exp(value)
  %2558 = call float @dx.op.unary.f32(i32 21, float %2555)  ; Exp(value)
  %2559 = fmul fast float %2070, %2070
  %2560 = fadd fast float %2559, 1.000000e+00
  %2561 = fmul fast float %2560, 0x3FAE8EC8A0000000
  %2562 = fmul fast float %2561, %2051
  %2563 = fmul fast float %2561, %2052
  %2564 = fmul fast float %2561, %2053
  %2565 = fmul fast float %2070, %2049
  %2566 = fsub fast float 1.000000e+00, %2565
  %2567 = fmul fast float %2049, %2049
  %2568 = fsub fast float 1.000000e+00, %2567
  %2569 = fmul fast float %2568, 0x3FB45F3060000000
  %2570 = fmul fast float %2566, %2566
  %2571 = fdiv fast float 1.000000e+00, %2570
  %2572 = fmul fast float %2569, %2571
  %2573 = fmul fast float %2572, %2046
  %2574 = fmul fast float %2572, %2047
  %2575 = fmul fast float %2572, %2048
  %2576 = fadd fast float %2573, %2562
  %2577 = fadd fast float %2574, %2563
  %2578 = fadd fast float %2575, %2564
  %2579 = fsub fast float 1.000000e+00, %2556
  %2580 = fsub fast float 1.000000e+00, %2557
  %2581 = fsub fast float 1.000000e+00, %2558
  %2582 = fmul fast float %2576, %2579
  %2583 = fmul fast float %2577, %2580
  %2584 = fmul fast float %2578, %2581
  br label %2585

; <label>:2585                                    ; preds = %2546, %2497
  %2586 = phi float [ %2523, %2497 ], [ %2582, %2546 ]
  %2587 = phi float [ %2524, %2497 ], [ %2583, %2546 ]
  %2588 = phi float [ %2525, %2497 ], [ %2584, %2546 ]
  %2589 = phi float [ %2512, %2497 ], [ %2556, %2546 ]
  %2590 = phi float [ %2512, %2497 ], [ %2557, %2546 ]
  %2591 = phi float [ %2512, %2497 ], [ %2558, %2546 ]
  br i1 %2078, label %2592, label %2790, !dx.controlflow.hints !127

; <label>:2592                                    ; preds = %2585
  %2593 = extractvalue %dx.types.CBufRet.f32 %2491, 0
  %2594 = fmul fast float %2593, %2493
  %2595 = fsub fast float %2488, %2586
  %2596 = fsub fast float %2489, %2587
  %2597 = fsub fast float %2490, %2588
  %2598 = fmul fast float %2594, %2595
  %2599 = fmul fast float %2594, %2596
  %2600 = fmul fast float %2594, %2597
  %2601 = fadd fast float %2598, %2586
  %2602 = fadd fast float %2599, %2587
  %2603 = fadd fast float %2600, %2588
  %2604 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2589)  ; FMax(a,b)
  %2605 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2590)  ; FMax(a,b)
  %2606 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2591)  ; FMax(a,b)
  %2607 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2487)  ; FMax(a,b)
  %2608 = call float @dx.op.binary.f32(i32 35, float %2486, float %2496)  ; FMax(a,b)
  %2609 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2608)  ; FMax(a,b)
  %2610 = fdiv fast float %2486, %2609
  %2611 = call float @dx.op.unary.f32(i32 7, float %2610)  ; Saturate(value)
  %2612 = fdiv fast float %2496, %2609
  %2613 = call float @dx.op.unary.f32(i32 7, float %2612)  ; Saturate(value)
  %2614 = fcmp fast une float %2607, 1.000000e+00
  br i1 %2614, label %2615, label %2628, !dx.controlflow.hints !128

; <label>:2615                                    ; preds = %2592
  %2616 = call float @dx.op.unary.f32(i32 23, float %2607)  ; Log(value)
  %2617 = fmul fast float %2616, 0x3FE62E4300000000
  %2618 = fmul fast float %2488, %2617
  %2619 = fsub fast float -0.000000e+00, %2618
  %2620 = fmul fast float %2489, %2617
  %2621 = fsub fast float -0.000000e+00, %2620
  %2622 = fmul fast float %2490, %2617
  %2623 = fsub fast float -0.000000e+00, %2622
  %2624 = fsub fast float 1.000000e+00, %2607
  %2625 = fdiv fast float %2619, %2624
  %2626 = fdiv fast float %2621, %2624
  %2627 = fdiv fast float %2623, %2624
  br label %2628

; <label>:2628                                    ; preds = %2615, %2592
  %2629 = phi float [ %2625, %2615 ], [ %2488, %2592 ]
  %2630 = phi float [ %2626, %2615 ], [ %2489, %2592 ]
  %2631 = phi float [ %2627, %2615 ], [ %2490, %2592 ]
  %2632 = phi float [ %2617, %2615 ], [ 0.000000e+00, %2592 ]
  %2633 = fcmp fast une float %2604, 1.000000e+00
  br i1 %2633, label %2634, label %2641, !dx.controlflow.hints !129

; <label>:2634                                    ; preds = %2628
  %2635 = call float @dx.op.unary.f32(i32 23, float %2604)  ; Log(value)
  %2636 = fmul fast float %2635, 0x3FE62E4300000000
  %2637 = fmul fast float %2601, %2636
  %2638 = fsub fast float -0.000000e+00, %2637
  %2639 = fsub fast float 1.000000e+00, %2604
  %2640 = fdiv fast float %2638, %2639
  br label %2641

; <label>:2641                                    ; preds = %2634, %2628
  %2642 = phi float [ %2640, %2634 ], [ %2601, %2628 ]
  %2643 = phi float [ %2636, %2634 ], [ 0.000000e+00, %2628 ]
  %2644 = fcmp fast une float %2605, 1.000000e+00
  br i1 %2644, label %2645, label %2652, !dx.controlflow.hints !129

; <label>:2645                                    ; preds = %2641
  %2646 = call float @dx.op.unary.f32(i32 23, float %2605)  ; Log(value)
  %2647 = fmul fast float %2646, 0x3FE62E4300000000
  %2648 = fmul fast float %2602, %2647
  %2649 = fsub fast float -0.000000e+00, %2648
  %2650 = fsub fast float 1.000000e+00, %2605
  %2651 = fdiv fast float %2649, %2650
  br label %2652

; <label>:2652                                    ; preds = %2645, %2641
  %2653 = phi float [ %2651, %2645 ], [ %2602, %2641 ]
  %2654 = phi float [ %2647, %2645 ], [ 0.000000e+00, %2641 ]
  %2655 = fcmp fast une float %2606, 1.000000e+00
  br i1 %2655, label %2656, label %2663, !dx.controlflow.hints !129

; <label>:2656                                    ; preds = %2652
  %2657 = call float @dx.op.unary.f32(i32 23, float %2606)  ; Log(value)
  %2658 = fmul fast float %2657, 0x3FE62E4300000000
  %2659 = fmul fast float %2603, %2658
  %2660 = fsub fast float -0.000000e+00, %2659
  %2661 = fsub fast float 1.000000e+00, %2606
  %2662 = fdiv fast float %2660, %2661
  br label %2663

; <label>:2663                                    ; preds = %2656, %2652
  %2664 = phi float [ %2662, %2656 ], [ %2603, %2652 ]
  %2665 = phi float [ %2658, %2656 ], [ 0.000000e+00, %2652 ]
  %2666 = fmul fast float %2629, %2613
  %2667 = fmul fast float %2630, %2613
  %2668 = fmul fast float %2631, %2613
  %2669 = fmul fast float %2632, %2613
  %2670 = fmul fast float %2642, %2611
  %2671 = fmul fast float %2653, %2611
  %2672 = fmul fast float %2664, %2611
  %2673 = fmul fast float %2643, %2611
  %2674 = fmul fast float %2654, %2611
  %2675 = fmul fast float %2665, %2611
  %2676 = fadd fast float %2670, %2666
  %2677 = fadd fast float %2671, %2667
  %2678 = fadd fast float %2672, %2668
  %2679 = fadd fast float %2673, %2669
  %2680 = fadd fast float %2674, %2669
  %2681 = fadd fast float %2675, %2669
  %2682 = fcmp fast une float %2679, 0.000000e+00
  br i1 %2682, label %2683, label %2690, !dx.controlflow.hints !130

; <label>:2683                                    ; preds = %2663
  %2684 = fmul fast float %2679, 0x3FF7154760000000
  %2685 = call float @dx.op.unary.f32(i32 21, float %2684)  ; Exp(value)
  %2686 = fsub fast float 1.000000e+00, %2685
  %2687 = fmul fast float %2676, %2686
  %2688 = fsub fast float -0.000000e+00, %2687
  %2689 = fdiv fast float %2688, %2679
  br label %2690

; <label>:2690                                    ; preds = %2683, %2663
  %2691 = phi float [ %2685, %2683 ], [ 1.000000e+00, %2663 ]
  %2692 = phi float [ %2689, %2683 ], [ %2676, %2663 ]
  %2693 = fcmp fast une float %2680, 0.000000e+00
  br i1 %2693, label %2694, label %2701, !dx.controlflow.hints !130

; <label>:2694                                    ; preds = %2690
  %2695 = fmul fast float %2680, 0x3FF7154760000000
  %2696 = call float @dx.op.unary.f32(i32 21, float %2695)  ; Exp(value)
  %2697 = fsub fast float 1.000000e+00, %2696
  %2698 = fmul fast float %2677, %2697
  %2699 = fsub fast float -0.000000e+00, %2698
  %2700 = fdiv fast float %2699, %2680
  br label %2701

; <label>:2701                                    ; preds = %2694, %2690
  %2702 = phi float [ %2696, %2694 ], [ 1.000000e+00, %2690 ]
  %2703 = phi float [ %2700, %2694 ], [ %2677, %2690 ]
  %2704 = fcmp fast une float %2681, 0.000000e+00
  br i1 %2704, label %2705, label %2712, !dx.controlflow.hints !130

; <label>:2705                                    ; preds = %2701
  %2706 = fmul fast float %2681, 0x3FF7154760000000
  %2707 = call float @dx.op.unary.f32(i32 21, float %2706)  ; Exp(value)
  %2708 = fsub fast float 1.000000e+00, %2707
  %2709 = fmul fast float %2678, %2708
  %2710 = fsub fast float -0.000000e+00, %2709
  %2711 = fdiv fast float %2710, %2681
  br label %2712

; <label>:2712                                    ; preds = %2705, %2701
  %2713 = phi float [ %2707, %2705 ], [ 1.000000e+00, %2701 ]
  %2714 = phi float [ %2711, %2705 ], [ %2678, %2701 ]
  %2715 = fcmp fast ogt float %2611, %2613
  br i1 %2715, label %2716, label %2736

; <label>:2716                                    ; preds = %2712
  %2717 = fsub fast float 1.000000e+00, %2613
  %2718 = fmul fast float %2629, %2717
  %2719 = fmul fast float %2630, %2717
  %2720 = fmul fast float %2631, %2717
  %2721 = fmul fast float %2632, %2717
  %2722 = fcmp fast une float %2721, 0.000000e+00
  br i1 %2722, label %2723, label %2774, !dx.controlflow.hints !131

; <label>:2723                                    ; preds = %2716
  %2724 = fmul fast float %2721, 0x3FF7154760000000
  %2725 = call float @dx.op.unary.f32(i32 21, float %2724)  ; Exp(value)
  %2726 = fsub fast float 1.000000e+00, %2725
  %2727 = fmul fast float %2718, %2726
  %2728 = fsub fast float -0.000000e+00, %2727
  %2729 = fmul fast float %2719, %2726
  %2730 = fsub fast float -0.000000e+00, %2729
  %2731 = fmul fast float %2720, %2726
  %2732 = fsub fast float -0.000000e+00, %2731
  %2733 = fdiv fast float %2728, %2721
  %2734 = fdiv fast float %2730, %2721
  %2735 = fdiv fast float %2732, %2721
  br label %2774

; <label>:2736                                    ; preds = %2712
  %2737 = fsub fast float 1.000000e+00, %2611
  %2738 = fmul fast float %2642, %2737
  %2739 = fmul fast float %2653, %2737
  %2740 = fmul fast float %2664, %2737
  %2741 = fmul fast float %2643, %2737
  %2742 = fmul fast float %2654, %2737
  %2743 = fmul fast float %2665, %2737
  %2744 = fcmp fast une float %2741, 0.000000e+00
  br i1 %2744, label %2745, label %2752, !dx.controlflow.hints !130

; <label>:2745                                    ; preds = %2736
  %2746 = fmul fast float %2741, 0x3FF7154760000000
  %2747 = call float @dx.op.unary.f32(i32 21, float %2746)  ; Exp(value)
  %2748 = fsub fast float 1.000000e+00, %2747
  %2749 = fmul fast float %2738, %2748
  %2750 = fsub fast float -0.000000e+00, %2749
  %2751 = fdiv fast float %2750, %2741
  br label %2752

; <label>:2752                                    ; preds = %2745, %2736
  %2753 = phi float [ %2751, %2745 ], [ %2738, %2736 ]
  %2754 = phi float [ %2747, %2745 ], [ 1.000000e+00, %2736 ]
  %2755 = fcmp fast une float %2742, 0.000000e+00
  br i1 %2755, label %2756, label %2763, !dx.controlflow.hints !130

; <label>:2756                                    ; preds = %2752
  %2757 = fmul fast float %2742, 0x3FF7154760000000
  %2758 = call float @dx.op.unary.f32(i32 21, float %2757)  ; Exp(value)
  %2759 = fsub fast float 1.000000e+00, %2758
  %2760 = fmul fast float %2739, %2759
  %2761 = fsub fast float -0.000000e+00, %2760
  %2762 = fdiv fast float %2761, %2742
  br label %2763

; <label>:2763                                    ; preds = %2756, %2752
  %2764 = phi float [ %2762, %2756 ], [ %2739, %2752 ]
  %2765 = phi float [ %2758, %2756 ], [ 1.000000e+00, %2752 ]
  %2766 = fcmp fast une float %2743, 0.000000e+00
  br i1 %2766, label %2767, label %2774, !dx.controlflow.hints !130

; <label>:2767                                    ; preds = %2763
  %2768 = fmul fast float %2743, 0x3FF7154760000000
  %2769 = call float @dx.op.unary.f32(i32 21, float %2768)  ; Exp(value)
  %2770 = fsub fast float 1.000000e+00, %2769
  %2771 = fmul fast float %2740, %2770
  %2772 = fsub fast float -0.000000e+00, %2771
  %2773 = fdiv fast float %2772, %2743
  br label %2774

; <label>:2774                                    ; preds = %2767, %2763, %2723, %2716
  %2775 = phi float [ %2773, %2767 ], [ %2735, %2723 ], [ %2720, %2716 ], [ %2740, %2763 ]
  %2776 = phi float [ %2764, %2767 ], [ %2734, %2723 ], [ %2719, %2716 ], [ %2764, %2763 ]
  %2777 = phi float [ %2753, %2767 ], [ %2733, %2723 ], [ %2718, %2716 ], [ %2753, %2763 ]
  %2778 = phi float [ %2769, %2767 ], [ %2725, %2723 ], [ 1.000000e+00, %2716 ], [ 1.000000e+00, %2763 ]
  %2779 = phi float [ %2765, %2767 ], [ %2725, %2723 ], [ 1.000000e+00, %2716 ], [ %2765, %2763 ]
  %2780 = phi float [ %2754, %2767 ], [ %2725, %2723 ], [ 1.000000e+00, %2716 ], [ %2754, %2763 ]
  %2781 = fmul fast float %2780, %2692
  %2782 = fmul fast float %2779, %2703
  %2783 = fmul fast float %2778, %2714
  %2784 = fadd fast float %2781, %2777
  %2785 = fadd fast float %2782, %2776
  %2786 = fadd fast float %2783, %2775
  %2787 = fmul fast float %2780, %2691
  %2788 = fmul fast float %2779, %2702
  %2789 = fmul fast float %2778, %2713
  br label %2790

; <label>:2790                                    ; preds = %2774, %2585
  %2791 = phi float [ %2789, %2774 ], [ %2591, %2585 ]
  %2792 = phi float [ %2788, %2774 ], [ %2590, %2585 ]
  %2793 = phi float [ %2787, %2774 ], [ %2589, %2585 ]
  %2794 = phi float [ %2786, %2774 ], [ %2588, %2585 ]
  %2795 = phi float [ %2785, %2774 ], [ %2587, %2585 ]
  %2796 = phi float [ %2784, %2774 ], [ %2586, %2585 ]
  %2797 = fmul fast float %2796, %1770
  %2798 = fmul fast float %2795, %1770
  %2799 = fmul fast float %2794, %1770
  %2800 = fmul fast float %2793, %2033
  %2801 = call float @dx.op.dot3.f32(i32 55, float %2793, float %2792, float %2791, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2802 = call float @dx.op.dot3.f32(i32 55, float %2797, float %2798, float %2799, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2803 = select i1 %139, float %2801, float %2793
  %2804 = select i1 %139, float %2801, float %2792
  %2805 = select i1 %139, float 1.000000e+00, float %2791
  %2806 = select i1 %139, float %2802, float %2797
  %2807 = select i1 %139, float 0.000000e+00, float %2798
  %2808 = select i1 %139, float 0.000000e+00, float %2799
  %2809 = fmul fast float %2803, %2027
  %2810 = fmul fast float %2804, %2028
  %2811 = fmul fast float %2805, %2029
  %2812 = fadd fast float %2809, %2806
  %2813 = fadd fast float %2810, %2807
  %2814 = fadd fast float %2808, %2811
  %2815 = fmul fast float %2803, %2030
  %2816 = fmul fast float %2804, %2031
  %2817 = fmul fast float %2805, %2032
  %2818 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2819 = extractvalue %dx.types.CBufRet.i32 %2818, 0
  %2820 = icmp eq i32 %2819, 0
  br i1 %2820, label %3089, label %2821, !dx.controlflow.hints !132

; <label>:2821                                    ; preds = %2790
  %2822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2823 = extractvalue %dx.types.CBufRet.f32 %2822, 2
  %2824 = extractvalue %dx.types.CBufRet.f32 %2822, 3
  %2825 = fmul fast float %2823, %69
  %2826 = fmul fast float %2824, %70
  %2827 = fmul fast float %2825, 2.000000e+00
  %2828 = fmul fast float %2826, 2.000000e+00
  %2829 = fsub fast float 1.000000e+00, %2827
  %2830 = fsub fast float 1.000000e+00, %2828
  %2831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2832 = extractvalue %dx.types.CBufRet.f32 %2831, 0
  %2833 = extractvalue %dx.types.CBufRet.f32 %2831, 1
  %2834 = extractvalue %dx.types.CBufRet.f32 %2831, 2
  %2835 = fmul fast float %2829, %2832
  %2836 = fmul fast float %2829, %2833
  %2837 = fmul fast float %2829, %2834
  %2838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2839 = extractvalue %dx.types.CBufRet.f32 %2838, 0
  %2840 = extractvalue %dx.types.CBufRet.f32 %2838, 1
  %2841 = extractvalue %dx.types.CBufRet.f32 %2838, 2
  %2842 = fmul fast float %2830, %2839
  %2843 = fmul fast float %2830, %2840
  %2844 = fmul fast float %2830, %2841
  %2845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2846 = extractvalue %dx.types.CBufRet.f32 %2845, 0
  %2847 = extractvalue %dx.types.CBufRet.f32 %2845, 1
  %2848 = extractvalue %dx.types.CBufRet.f32 %2845, 2
  %2849 = fadd fast float %2842, %2846
  %2850 = fadd fast float %2849, %2835
  %2851 = fadd fast float %2843, %2847
  %2852 = fadd fast float %2851, %2836
  %2853 = fadd fast float %2844, %2848
  %2854 = fadd fast float %2853, %2837
  %2855 = fmul fast float %2850, %2026
  %2856 = fmul fast float %2852, %2026
  %2857 = fmul fast float %2854, %2026
  %2858 = fmul fast float %2855, %2855
  %2859 = fmul fast float %2856, %2856
  %2860 = fadd fast float %2858, %2859
  %2861 = fmul fast float %2857, %2857
  %2862 = fadd fast float %2860, %2861
  %2863 = call float @dx.op.unary.f32(i32 24, float %2862)  ; Sqrt(value)
  %2864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2865 = extractvalue %dx.types.CBufRet.f32 %2864, 0
  %2866 = fsub fast float %2863, %2865
  %2867 = extractvalue %dx.types.CBufRet.f32 %2864, 2
  %2868 = fmul fast float %2866, %2867
  %2869 = call float @dx.op.unary.f32(i32 7, float %2868)  ; Saturate(value)
  %2870 = fadd fast float %2869, -5.000000e-01
  %2871 = fmul fast float %2870, 2.000000e+00
  %2872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2873 = extractvalue %dx.types.CBufRet.f32 %2872, 2
  %2874 = call float @dx.op.binary.f32(i32 36, float %2873, float %2871)  ; FMin(a,b)
  %2875 = fsub fast float -0.000000e+00, %2873
  %2876 = fcmp fast ogt float %2874, %2875
  br i1 %2876, label %2877, label %3089, !dx.controlflow.hints !133

; <label>:2877                                    ; preds = %2821
  %2878 = fmul fast float %2874, 5.000000e-01
  %2879 = fadd fast float %2878, 5.000000e-01
  %2880 = call float @dx.op.unary.f32(i32 22, float %2879)  ; Frc(value)
  %2881 = call float @dx.op.unary.f32(i32 27, float %2880)  ; Round_ni(value)
  %2882 = call float @dx.op.unary.f32(i32 22, float %2880)  ; Frc(value)
  %2883 = fmul fast float %2882, 2.000000e+00
  %2884 = fadd fast float %2883, -1.000000e+00
  %2885 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %26, float %2825, float %2826, float %2881, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2886 = extractvalue %dx.types.ResRet.f32 %2885, 0
  %2887 = extractvalue %dx.types.ResRet.f32 %2885, 1
  %2888 = extractvalue %dx.types.ResRet.f32 %2885, 2
  %2889 = extractvalue %dx.types.ResRet.f32 %2885, 3
  %2890 = fadd fast float %2886, -5.000000e-01
  %2891 = fadd fast float %2888, -5.000000e-01
  %2892 = fmul fast float %2890, 0xBFD5555560000000
  %2893 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2891, float %2892)  ; FMad(a,b,c)
  %2894 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2887, float 0.000000e+00)  ; FMad(a,b,c)
  %2895 = fadd fast float %2894, %2889
  %2896 = fmul fast float %2890, -7.500000e-01
  %2897 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2891, float %2896)  ; FMad(a,b,c)
  %2898 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2887, float 0.000000e+00)  ; FMad(a,b,c)
  %2899 = fadd fast float %2898, %2889
  %2900 = call float @dx.op.binary.f32(i32 35, float %2893, float -1.000000e+00)  ; FMax(a,b)
  %2901 = call float @dx.op.binary.f32(i32 35, float %2895, float -1.000000e+00)  ; FMax(a,b)
  %2902 = call float @dx.op.binary.f32(i32 35, float %2897, float -1.000000e+00)  ; FMax(a,b)
  %2903 = call float @dx.op.binary.f32(i32 35, float %2899, float -1.000000e+00)  ; FMax(a,b)
  %2904 = call float @dx.op.binary.f32(i32 36, float %2900, float 1.000000e+00)  ; FMin(a,b)
  %2905 = call float @dx.op.binary.f32(i32 36, float %2901, float 1.000000e+00)  ; FMin(a,b)
  %2906 = call float @dx.op.binary.f32(i32 36, float %2902, float 1.000000e+00)  ; FMin(a,b)
  %2907 = call float @dx.op.binary.f32(i32 36, float %2903, float 1.000000e+00)  ; FMin(a,b)
  %2908 = fcmp fast olt float %2904, 0x3FEFFF8020000000
  br i1 %2908, label %2909, label %3024, !dx.controlflow.hints !134

; <label>:2909                                    ; preds = %2877
  %2910 = extractvalue %dx.types.CBufRet.f32 %2872, 3
  %2911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %2912 = extractvalue %dx.types.CBufRet.f32 %2911, 0
  %2913 = extractvalue %dx.types.CBufRet.f32 %2911, 1
  %2914 = extractvalue %dx.types.CBufRet.f32 %2911, 2
  %2915 = extractvalue %dx.types.CBufRet.f32 %2911, 3
  %2916 = fsub fast float %2912, %2904
  %2917 = fsub fast float %2913, %2905
  %2918 = fsub fast float %2914, %2906
  %2919 = fsub fast float %2915, %2907
  %2920 = fmul fast float %2916, %2910
  %2921 = fmul fast float %2917, %2910
  %2922 = fmul fast float %2918, %2910
  %2923 = fmul fast float %2919, %2910
  %2924 = fadd fast float %2920, %2904
  %2925 = fadd fast float %2921, %2905
  %2926 = fsub fast float -0.000000e+00, %2925
  %2927 = fadd fast float %2922, %2906
  %2928 = fadd fast float %2923, %2907
  %2929 = fmul fast float %2924, %2924
  %2930 = fsub fast float %2925, %2929
  %2931 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2930)  ; FMax(a,b)
  %2932 = fdiv fast float 1.000000e+00, %2931
  %2933 = fmul fast float %2925, %2924
  %2934 = fsub fast float %2927, %2933
  %2935 = fsub fast float %2884, %2924
  %2936 = fmul fast float %2884, %2884
  %2937 = fsub fast float %2936, %2925
  %2938 = fmul fast float %2935, %2932
  %2939 = fmul fast float %2938, %2934
  %2940 = fsub fast float %2937, %2939
  %2941 = fmul fast float %2925, %2925
  %2942 = fsub fast float %2928, %2941
  %2943 = fmul fast float %2934, %2934
  %2944 = fmul fast float %2943, %2932
  %2945 = fsub fast float %2942, %2944
  %2946 = fdiv fast float %2940, %2945
  %2947 = fmul fast float %2934, %2946
  %2948 = fsub fast float %2935, %2947
  %2949 = fmul fast float %2948, %2932
  %2950 = fmul fast float %2949, %2924
  %2951 = fsub fast float 1.000000e+00, %2950
  %2952 = fmul fast float %2925, %2946
  %2953 = fsub fast float %2951, %2952
  %2954 = fmul fast float %2949, %2949
  %2955 = fmul fast float %2946, 4.000000e+00
  %2956 = fmul fast float %2955, %2953
  %2957 = fsub fast float %2954, %2956
  %2958 = call float @dx.op.unary.f32(i32 24, float %2957)  ; Sqrt(value)
  %2959 = fcmp fast oge float %2949, 0.000000e+00
  %2960 = fsub fast float -0.000000e+00, %2958
  %2961 = select i1 %2959, float %2960, float %2958
  %2962 = fsub fast float %2961, %2949
  %2963 = fdiv fast float %2962, %2946
  %2964 = fdiv fast float %2953, %2962
  %2965 = fmul fast float %2963, 5.000000e-01
  %2966 = fmul fast float %2964, 2.000000e+00
  %2967 = select i1 %2959, float %2965, float %2966
  %2968 = select i1 %2959, float %2966, float %2965
  %2969 = call float @dx.op.binary.f32(i32 35, float %2967, float %2968)  ; FMax(a,b)
  %2970 = call float @dx.op.binary.f32(i32 36, float %2967, float %2968)  ; FMin(a,b)
  %2971 = fcmp fast ogt float %2884, %2970
  br i1 %2971, label %2972, label %2982

; <label>:2972                                    ; preds = %2909
  %2973 = fsub fast float %2884, %2970
  %2974 = fsub fast float %2969, %2970
  %2975 = fmul fast float %2973, %2974
  %2976 = fmul fast float %2969, %2884
  %2977 = fadd fast float %2969, %2884
  %2978 = fmul fast float %2977, %2924
  %2979 = fadd fast float %2976, %2925
  %2980 = fsub fast float %2979, %2978
  %2981 = fdiv fast float %2980, %2975
  br label %2982

; <label>:2982                                    ; preds = %2972, %2909
  %2983 = phi float [ %2981, %2972 ], [ 0.000000e+00, %2909 ]
  %2984 = fcmp fast ogt float %2884, %2969
  %2985 = fsub fast float %2884, %2969
  br i1 %2984, label %2986, label %2996

; <label>:2986                                    ; preds = %2982
  %2987 = fsub fast float %2969, %2970
  %2988 = fmul fast float %2987, %2985
  %2989 = fmul fast float %2970, %2884
  %2990 = fadd fast float %2970, %2884
  %2991 = fmul fast float %2990, %2924
  %2992 = fsub fast float %2926, %2989
  %2993 = fadd fast float %2992, %2991
  %2994 = fdiv fast float %2993, %2988
  %2995 = fadd fast float %2994, %2983
  br label %2996

; <label>:2996                                    ; preds = %2986, %2982
  %2997 = phi float [ %2995, %2986 ], [ %2983, %2982 ]
  %2998 = fsub fast float %2884, %2970
  %2999 = fmul fast float %2998, %2985
  %3000 = fmul fast float %2970, %2969
  %3001 = fadd fast float %2970, %2969
  %3002 = fmul fast float %3001, %2924
  %3003 = fadd fast float %3000, %2925
  %3004 = fsub fast float %3003, %3002
  %3005 = fdiv fast float %3004, %2999
  %3006 = call float @dx.op.unary.f32(i32 7, float %2997)  ; Saturate(value)
  %3007 = fcmp fast oeq float %1879, 0.000000e+00
  %3008 = extractvalue %dx.types.CBufRet.f32 %2872, 0
  %3009 = fcmp fast oeq float %3008, 0.000000e+00
  %3010 = or i1 %3007, %3009
  %3011 = fmul fast float %3008, 2.000000e+00
  %3012 = fadd fast float %2873, %2874
  %3013 = fdiv fast float %3012, %3011
  %3014 = call float @dx.op.unary.f32(i32 7, float %3013)  ; Saturate(value)
  %3015 = fmul fast float %3014, 2.000000e+00
  %3016 = fsub fast float 3.000000e+00, %3015
  %3017 = fmul fast float %3014, %3014
  %3018 = fmul fast float %3017, %3016
  %3019 = select i1 %3010, float 1.000000e+00, float %3018
  %3020 = fmul fast float %3005, %1879
  %3021 = fadd fast float %3006, %3020
  %3022 = call float @dx.op.unary.f32(i32 7, float %3021)  ; Saturate(value)
  %3023 = fmul fast float %3019, %3022
  br label %3024

; <label>:3024                                    ; preds = %2996, %2877
  %3025 = phi float [ %3023, %2996 ], [ 0.000000e+00, %2877 ]
  %3026 = fsub fast float 1.000000e+00, %3025
  %3027 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %26, float %2825, float %2826, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3028 = extractvalue %dx.types.ResRet.f32 %3027, 0
  %3029 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %3030 = extractvalue %dx.types.CBufRet.i32 %3029, 2
  %3031 = icmp eq i32 %3030, 0
  br i1 %3031, label %3037, label %3032

; <label>:3032                                    ; preds = %3024
  %3033 = call float @dx.op.unary.f32(i32 7, float %3025)  ; Saturate(value)
  %3034 = fadd fast float %3028, -1.000000e+00
  %3035 = fmul fast float %3033, %3034
  %3036 = fadd fast float %3035, 1.000000e+00
  br label %3037

; <label>:3037                                    ; preds = %3032, %3024
  %3038 = phi float [ %3036, %3032 ], [ %3026, %3024 ]
  %3039 = call float @dx.op.binary.f32(i32 35, float %3028, float %3038)  ; FMax(a,b)
  %3040 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %3041 = extractvalue %dx.types.CBufRet.i32 %3040, 2
  %3042 = and i32 %3041, 1
  %3043 = icmp eq i32 %3042, 0
  %3044 = fcmp fast une float %3039, 1.000000e+00
  %3045 = and i1 %3044, %3043
  br i1 %3045, label %3046, label %3065

; <label>:3046                                    ; preds = %3037
  %3047 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %26, float %2825, float %2826, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3048 = extractvalue %dx.types.ResRet.f32 %3047, 0
  %3049 = extractvalue %dx.types.ResRet.f32 %3047, 1
  %3050 = extractvalue %dx.types.ResRet.f32 %3047, 2
  %3051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3052 = extractvalue %dx.types.CBufRet.f32 %3051, 1
  %3053 = fmul fast float %3052, %3048
  %3054 = fmul fast float %3052, %3049
  %3055 = fmul fast float %3052, %3050
  %3056 = fcmp fast ogt float %3028, 0x3FEFFF2E40000000
  %3057 = fsub fast float 1.000000e+00, %3039
  %3058 = fsub fast float 1.000000e+00, %3028
  %3059 = fdiv fast float %3057, %3058
  %3060 = call float @dx.op.unary.f32(i32 7, float %3059)  ; Saturate(value)
  %3061 = select i1 %3056, float 0.000000e+00, float %3060
  %3062 = fmul fast float %3053, %3061
  %3063 = fmul fast float %3054, %3061
  %3064 = fmul fast float %3055, %3061
  br label %3065

; <label>:3065                                    ; preds = %3046, %3037
  %3066 = phi float [ 0.000000e+00, %3037 ], [ %3062, %3046 ]
  %3067 = phi float [ 0.000000e+00, %3037 ], [ %3063, %3046 ]
  %3068 = phi float [ 0.000000e+00, %3037 ], [ %3064, %3046 ]
  %3069 = fmul fast float %3066, %1770
  %3070 = fmul fast float %3067, %1770
  %3071 = fmul fast float %3068, %1770
  %3072 = fmul fast float %3039, %2800
  %3073 = call float @dx.op.dot3.f32(i32 55, float %3039, float %3039, float %3039, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3074 = call float @dx.op.dot3.f32(i32 55, float %3069, float %3070, float %3071, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3075 = select i1 %139, float %3073, float %3039
  %3076 = select i1 %139, float 1.000000e+00, float %3039
  %3077 = select i1 %139, float %3074, float %3069
  %3078 = select i1 %139, float 0.000000e+00, float %3070
  %3079 = select i1 %139, float 0.000000e+00, float %3071
  %3080 = fmul fast float %3075, %2812
  %3081 = fmul fast float %3075, %2813
  %3082 = fmul fast float %3076, %2814
  %3083 = fadd fast float %3080, %3077
  %3084 = fadd fast float %3081, %3078
  %3085 = fadd fast float %3079, %3082
  %3086 = fmul fast float %3075, %2815
  %3087 = fmul fast float %3075, %2816
  %3088 = fmul fast float %3076, %2817
  br label %3089

; <label>:3089                                    ; preds = %3065, %2821, %2790, %2022
  %3090 = phi float [ %2027, %2022 ], [ %2812, %2790 ], [ %3083, %3065 ], [ %2812, %2821 ]
  %3091 = phi float [ %2028, %2022 ], [ %2813, %2790 ], [ %3084, %3065 ], [ %2813, %2821 ]
  %3092 = phi float [ %2029, %2022 ], [ %2814, %2790 ], [ %3085, %3065 ], [ %2814, %2821 ]
  %3093 = phi float [ %2030, %2022 ], [ %2815, %2790 ], [ %3086, %3065 ], [ %2815, %2821 ]
  %3094 = phi float [ %2031, %2022 ], [ %2816, %2790 ], [ %3087, %3065 ], [ %2816, %2821 ]
  %3095 = phi float [ %2032, %2022 ], [ %2817, %2790 ], [ %3088, %3065 ], [ %2817, %2821 ]
  %3096 = phi float [ %2033, %2022 ], [ %2800, %2790 ], [ %3072, %3065 ], [ %2800, %2821 ]
  %3097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3098 = extractvalue %dx.types.CBufRet.f32 %3097, 2
  %3099 = extractvalue %dx.types.CBufRet.f32 %3097, 3
  %3100 = fmul fast float %3098, %69
  %3101 = fmul fast float %3099, %70
  %3102 = call float @dx.op.unary.f32(i32 7, float %3100)  ; Saturate(value)
  %3103 = call float @dx.op.unary.f32(i32 7, float %3101)  ; Saturate(value)
  %3104 = select i1 %1167, i32 2, i32 0
  %3105 = or i32 %3104, 1
  %3106 = uitofp i32 %3105 to float
  %3107 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %3102, float %3103, float %3106, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3108 = extractvalue %dx.types.ResRet.f32 %3107, 0
  %3109 = extractvalue %dx.types.ResRet.f32 %3107, 1
  %3110 = extractvalue %dx.types.ResRet.f32 %3107, 2
  %3111 = extractvalue %dx.types.ResRet.f32 %3107, 3
  %3112 = add nuw nsw i32 %3104, 2
  %3113 = uitofp i32 %3112 to float
  %3114 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %3102, float %3103, float %3113, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3115 = extractvalue %dx.types.ResRet.f32 %3114, 0
  %3116 = extractvalue %dx.types.ResRet.f32 %3114, 1
  %3117 = extractvalue %dx.types.ResRet.f32 %3114, 2
  %3118 = extractvalue %dx.types.ResRet.f32 %3114, 3
  %3119 = call float @dx.op.binary.f32(i32 35, float %3109, float %3110)  ; FMax(a,b)
  %3120 = call float @dx.op.binary.f32(i32 35, float %3108, float %3119)  ; FMax(a,b)
  %3121 = call float @dx.op.binary.f32(i32 35, float %3120, float %3111)  ; FMax(a,b)
  %3122 = call float @dx.op.binary.f32(i32 36, float %3116, float %3117)  ; FMin(a,b)
  %3123 = call float @dx.op.binary.f32(i32 36, float %3115, float %3122)  ; FMin(a,b)
  %3124 = call float @dx.op.binary.f32(i32 36, float %3123, float %3118)  ; FMin(a,b)
  %3125 = fmul fast float %3121, 2.550000e+02
  %3126 = fadd fast float %3125, 0x3F70101020000000
  %3127 = fptoui float %3126 to i32
  %3128 = fmul fast float %3124, 2.550000e+02
  %3129 = fadd fast float %3128, 0x3F70101020000000
  %3130 = fptoui float %3129 to i32
  %3131 = icmp ult i32 %3127, %3130
  br i1 %3131, label %3132, label %3178

; <label>:3132                                    ; preds = %3089
  %3133 = fcmp fast ogt float %61, 9.843750e-01
  %3134 = fadd fast float %2026, -4.000000e+00
  %3135 = select i1 %3133, float -4.000000e+00, float %3134
  %3136 = call float @dx.op.binary.f32(i32 35, float %3135, float 0.000000e+00)  ; FMax(a,b)
  %3137 = fadd fast float %1344, %3136
  %3138 = fmul fast float %3137, %1345
  %3139 = call float @dx.op.unary.f32(i32 23, float %3138)  ; Log(value)
  %3140 = fmul fast float %1346, %3139
  %3141 = fmul fast float %3140, %1354
  %3142 = call float @dx.op.unary.f32(i32 7, float %3141)  ; Saturate(value)
  %3143 = uitofp i32 %3127 to float
  %3144 = uitofp i32 %3130 to float
  %3145 = fadd fast float %3143, 5.000000e-01
  %3146 = fadd fast float %3144, 5.000000e-01
  %3147 = fmul fast float %1354, %3145
  %3148 = fmul fast float %1354, %3146
  %3149 = fadd fast float %3147, 0x3F0FFB4800000000
  %3150 = fadd fast float %3148, 0xBF0FFB4800000000
  %3151 = call float @dx.op.binary.f32(i32 35, float %3142, float %3149)  ; FMax(a,b)
  %3152 = call float @dx.op.binary.f32(i32 36, float %3151, float %3150)  ; FMin(a,b)
  %3153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %3154 = extractvalue %dx.types.CBufRet.f32 %3153, 1
  %3155 = extractvalue %dx.types.CBufRet.f32 %3153, 2
  %3156 = extractvalue %dx.types.CBufRet.f32 %3153, 0
  %3157 = select i1 %1167, float %3156, float 0.000000e+00
  %3158 = fmul fast float %3154, %3152
  %3159 = fadd fast float %3157, %3158
  %3160 = fadd fast float %3157, %3155
  %3161 = fsub fast float %3154, %3155
  %3162 = fadd fast float %3161, %3157
  %3163 = call float @dx.op.binary.f32(i32 35, float %3159, float %3160)  ; FMax(a,b)
  %3164 = call float @dx.op.binary.f32(i32 36, float %3163, float %3162)  ; FMin(a,b)
  %3165 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %3102, float %3103, float %3164, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3166 = extractvalue %dx.types.ResRet.f32 %3165, 0
  %3167 = extractvalue %dx.types.ResRet.f32 %3165, 1
  %3168 = extractvalue %dx.types.ResRet.f32 %3165, 2
  %3169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %3102, float %3103, float %3164, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3170 = extractvalue %dx.types.ResRet.f32 %3169, 0
  %3171 = extractvalue %dx.types.ResRet.f32 %3169, 1
  %3172 = extractvalue %dx.types.ResRet.f32 %3169, 2
  %3173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3174 = extractvalue %dx.types.CBufRet.f32 %3173, 1
  %3175 = fmul fast float %3174, %3170
  %3176 = fmul fast float %3174, %3171
  %3177 = fmul fast float %3174, %3172
  br label %3178

; <label>:3178                                    ; preds = %3132, %3089
  %3179 = phi float [ %3166, %3132 ], [ 1.000000e+00, %3089 ]
  %3180 = phi float [ %3167, %3132 ], [ 1.000000e+00, %3089 ]
  %3181 = phi float [ %3168, %3132 ], [ 1.000000e+00, %3089 ]
  %3182 = phi float [ %3175, %3132 ], [ 0.000000e+00, %3089 ]
  %3183 = phi float [ %3176, %3132 ], [ 0.000000e+00, %3089 ]
  %3184 = phi float [ %3177, %3132 ], [ 0.000000e+00, %3089 ]
  %3185 = fmul fast float %3182, %1770
  %3186 = fmul fast float %3183, %1770
  %3187 = fmul fast float %3184, %1770
  %3188 = fmul fast float %3179, %3096
  %3189 = call float @dx.op.dot3.f32(i32 55, float %3179, float %3180, float %3181, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3190 = call float @dx.op.dot3.f32(i32 55, float %3185, float %3186, float %3187, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3191 = select i1 %139, float %3189, float %3179
  %3192 = select i1 %139, float %3189, float %3180
  %3193 = select i1 %139, float 1.000000e+00, float %3181
  %3194 = select i1 %139, float %3190, float %3185
  %3195 = select i1 %139, float 0.000000e+00, float %3186
  %3196 = select i1 %139, float 0.000000e+00, float %3187
  %3197 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3198 = extractvalue %dx.types.CBufRet.i32 %3197, 3
  %3199 = and i32 %3198, 3
  %3200 = icmp ne i32 %3199, 0
  %3201 = and i32 %3198, 4
  %3202 = icmp ne i32 %3201, 0
  %3203 = and i1 %3200, %3202
  %3204 = and i1 %139, %3203
  br i1 %3204, label %3205, label %3211

; <label>:3205                                    ; preds = %3178
  %3206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %3207 = extractvalue %dx.types.CBufRet.f32 %3206, 1
  %3208 = fadd fast float %3188, -1.000000e+00
  %3209 = fmul fast float %3207, %3208
  %3210 = fadd fast float %3209, 1.000000e+00
  br label %3211

; <label>:3211                                    ; preds = %3205, %3178
  %3212 = phi float [ %3210, %3205 ], [ %3188, %3178 ]
  %3213 = fadd fast float %3093, %3090
  %3214 = fmul fast float %3191, %3213
  %3215 = fadd fast float %3214, %3194
  %3216 = fadd fast float %3094, %3091
  %3217 = fmul fast float %3192, %3216
  %3218 = fadd fast float %3217, %3195
  %3219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3220 = extractvalue %dx.types.CBufRet.f32 %3219, 0
  br i1 %139, label %3221, label %3243

; <label>:3221                                    ; preds = %3211
  %3222 = fadd fast float %3215, %3218
  %3223 = fmul fast float %3220, %3222
  %3224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %3225 = extractvalue %dx.types.CBufRet.f32 %3224, 3
  %3226 = extractvalue %dx.types.CBufRet.f32 %1775, 1
  %3227 = fsub fast float %1778, %3226
  %3228 = extractvalue %dx.types.CBufRet.f32 %1775, 2
  %3229 = fmul fast float %3227, %3228
  %3230 = call float @dx.op.unary.f32(i32 7, float %3229)  ; Saturate(value)
  %3231 = fsub fast float %3230, %3225
  %3232 = fmul fast float %3231, %3212
  %3233 = fadd fast float %3232, %3225
  %3234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %3235 = extractvalue %dx.types.CBufRet.f32 %3234, 0
  %3236 = fsub fast float %3233, %3235
  %3237 = fmul fast float %3236, 1.000000e+01
  %3238 = call float @dx.op.unary.f32(i32 7, float %3237)  ; Saturate(value)
  %3239 = fsub fast float %1143, %1770
  %3240 = fmul fast float %3238, %3239
  %3241 = fadd fast float %3240, %1770
  %3242 = fmul fast float %3241, %3233
  br label %3255

; <label>:3243                                    ; preds = %3211
  %3244 = fadd fast float %3095, %3092
  %3245 = fmul fast float %3193, %3244
  %3246 = fadd fast float %3245, %3196
  %3247 = fmul fast float %3220, %3215
  %3248 = fmul fast float %3220, %3218
  %3249 = fmul fast float %3220, %3246
  %3250 = call float @dx.op.binary.f32(i32 35, float %3248, float %3249)  ; FMax(a,b)
  %3251 = call float @dx.op.binary.f32(i32 35, float %3247, float %3250)  ; FMax(a,b)
  %3252 = call float @dx.op.binary.f32(i32 35, float %3251, float %1770)  ; FMax(a,b)
  %3253 = fcmp fast ugt float %3252, 0x3F10000000000000
  br i1 %3253, label %3255, label %3254

; <label>:3254                                    ; preds = %3243
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %3255

; <label>:3255                                    ; preds = %3254, %3243, %3221
  %3256 = phi float [ %3223, %3221 ], [ %3247, %3254 ], [ %3247, %3243 ]
  %3257 = phi float [ %3242, %3221 ], [ %3248, %3254 ], [ %3248, %3243 ]
  %3258 = phi float [ %3241, %3221 ], [ %3249, %3254 ], [ %3249, %3243 ]
  %3259 = phi float [ %3241, %3221 ], [ %1770, %3254 ], [ %1770, %3243 ]
  %3260 = fadd fast float %653, 0x3FE3C6EF40000000
  %3261 = call float @dx.op.unary.f32(i32 22, float %3260)  ; Frc(value)
  %3262 = call float @dx.op.unary.f32(i32 23, float %3256)  ; Log(value)
  %3263 = fadd fast float %3262, -7.000000e+00
  %3264 = call float @dx.op.unary.f32(i32 21, float %3263)  ; Exp(value)
  %3265 = fmul fast float %3261, 2.000000e+00
  %3266 = fadd fast float %3265, -1.000000e+00
  %3267 = fmul fast float %3264, %3266
  %3268 = fcmp fast ogt float %3256, 0.000000e+00
  %3269 = select i1 %3268, float %3267, float 0.000000e+00
  %3270 = fadd fast float %3269, %3256
  %3271 = fadd fast float %653, 0x3FF3C6EF40000000
  %3272 = call float @dx.op.unary.f32(i32 22, float %3271)  ; Frc(value)
  %3273 = call float @dx.op.unary.f32(i32 23, float %3257)  ; Log(value)
  %3274 = fadd fast float %3273, -7.000000e+00
  %3275 = call float @dx.op.unary.f32(i32 21, float %3274)  ; Exp(value)
  %3276 = fmul fast float %3272, 2.000000e+00
  %3277 = fadd fast float %3276, -1.000000e+00
  %3278 = fmul fast float %3275, %3277
  %3279 = fcmp fast ogt float %3257, 0.000000e+00
  %3280 = select i1 %3279, float %3278, float 0.000000e+00
  %3281 = fadd fast float %3280, %3257
  %3282 = fadd fast float %653, 0x3FFDAA66E0000000
  %3283 = call float @dx.op.unary.f32(i32 22, float %3282)  ; Frc(value)
  %3284 = call float @dx.op.unary.f32(i32 23, float %3258)  ; Log(value)
  %3285 = fadd fast float %3284, -6.000000e+00
  %3286 = call float @dx.op.unary.f32(i32 21, float %3285)  ; Exp(value)
  %3287 = fmul fast float %3283, 2.000000e+00
  %3288 = fadd fast float %3287, -1.000000e+00
  %3289 = fmul fast float %3286, %3288
  %3290 = fcmp fast ogt float %3258, 0.000000e+00
  %3291 = select i1 %3290, float %3289, float 0.000000e+00
  %3292 = fadd fast float %3291, %3258
  %3293 = select i1 %139, float %3257, float %3281
  %3294 = select i1 %139, float %3258, float %3292
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %3295 = call float @dx.op.binary.f32(i32 36, float %3270, float 3.225500e+04)  ; FMin(a,b)
  %3296 = call float @dx.op.binary.f32(i32 36, float %3293, float 3.225500e+04)  ; FMin(a,b)
  %3297 = call float @dx.op.binary.f32(i32 36, float %3294, float 3.225500e+04)  ; FMin(a,b)
  %3298 = call float @dx.op.binary.f32(i32 36, float %3259, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3295)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3296)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3297)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %3298)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %3259)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %3259)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %3259)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %3259)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

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
!42 = !{[41 x i32] [i32 39, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 3, i32 3, i32 7, i32 7, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255]}
!43 = !{void ()* @ps_main, !"ps_main", !44, !4, !71}
!44 = !{!45, !67, null}
!45 = !{!46, !49, !50, !52, !55, !57, !59, !61, !63, !64, !66}
!46 = !{i32 0, !"SV_Position", i8 9, i8 3, !47, i8 4, i32 1, i8 4, i32 0, i8 0, !48}
!47 = !{i32 0}
!48 = !{i32 3, i32 15}
!49 = !{i32 1, !"COLOR", i8 9, i8 0, !47, i8 2, i32 1, i8 4, i32 1, i8 0, !48}
!50 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !47, i8 2, i32 1, i8 2, i32 2, i8 0, !51}
!51 = !{i32 3, i32 3}
!52 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !53, i8 1, i32 1, i8 4, i32 3, i8 0, !54}
!53 = !{i32 2}
!54 = !{i32 3, i32 7}
!55 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !56, i8 2, i32 1, i8 4, i32 4, i8 0, !48}
!56 = !{i32 3}
!57 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 5, i8 0, !48}
!58 = !{i32 4}
!59 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !60, i8 3, i32 1, i8 2, i32 6, i8 0, !51}
!60 = !{i32 5}
!61 = !{i32 7, !"TEXCOORD", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 7, i8 0, !48}
!62 = !{i32 8}
!63 = !{i32 8, !"QUAD_POSITION", i8 9, i8 0, !47, i8 1, i32 1, i8 4, i32 8, i8 0, !48}
!64 = !{i32 9, !"COLOR", i8 5, i8 0, !56, i8 1, i32 1, i8 3, i32 9, i8 0, !65}
!65 = !{i32 3, i32 5}
!66 = !{i32 10, !"SV_SampleIndex", i8 5, i8 12, !47, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!67 = !{!68, !69}
!68 = !{i32 0, !"SV_Target", i8 9, i8 16, !47, i8 0, i32 1, i8 4, i32 0, i8 0, !48}
!69 = !{i32 1, !"SV_Target", i8 9, i8 16, !70, i8 0, i32 1, i8 4, i32 1, i8 0, !48}
!70 = !{i32 1}
!71 = !{i32 0, i64 24}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !81}
!81 = !{!"llvm.loop.unroll.disable"}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = !{!86, !86, i64 0}
!86 = !{!"float", !87, i64 0}
!87 = !{!"omnipotent char", !88, i64 0}
!88 = !{!"Simple C/C++ TBAA"}
!89 = !{!90, !92, !94, !95, !97, !98, !99, !101, !102, !103}
!90 = distinct !{!90, !91, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!91 = distinct !{!91, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!92 = distinct !{!92, !93, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!93 = distinct !{!93, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!94 = distinct !{!94, !93, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!95 = distinct !{!95, !96, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!96 = distinct !{!96, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!97 = distinct !{!97, !96, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!98 = distinct !{!98, !96, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!99 = distinct !{!99, !100, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!100 = distinct !{!100, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!101 = distinct !{!101, !100, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!102 = distinct !{!102, !100, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!103 = distinct !{!103, !104, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!104 = distinct !{!104, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!105 = !{!106}
!106 = distinct !{!106, !107, !"\01?sort@@YAXAIAM00@Z: %c"}
!107 = distinct !{!107, !"\01?sort@@YAXAIAM00@Z"}
!108 = !{!109, !110, !90, !92, !94, !95, !97, !98, !99, !101, !102, !103}
!109 = distinct !{!109, !107, !"\01?sort@@YAXAIAM00@Z: %a"}
!110 = distinct !{!110, !107, !"\01?sort@@YAXAIAM00@Z: %b"}
!111 = !{!110}
!112 = !{!109, !106, !90, !92, !94, !95, !97, !98, !99, !101, !102, !103}
!113 = !{!109}
!114 = !{!110, !106, !90, !92, !94, !95, !97, !98, !99, !101, !102, !103}
!115 = !{!116}
!116 = distinct !{!116, !117, !"\01?sort@@YAXAIAM00@Z: %c"}
!117 = distinct !{!117, !"\01?sort@@YAXAIAM00@Z"}
!118 = !{!119, !120, !90, !92, !94, !95, !97, !98, !99, !101, !102, !103}
!119 = distinct !{!119, !117, !"\01?sort@@YAXAIAM00@Z: %a"}
!120 = distinct !{!120, !117, !"\01?sort@@YAXAIAM00@Z: %b"}
!121 = !{!120}
!122 = !{!119, !116, !90, !92, !94, !95, !97, !98, !99, !101, !102, !103}
!123 = !{!119}
!124 = !{!120, !116, !90, !92, !94, !95, !97, !98, !99, !101, !102, !103}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 2}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 1}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 1}

