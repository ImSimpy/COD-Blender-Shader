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
; shader hash: 29dcfa6b5db300b0049208b6d033d3f8
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
  %190 = add i32 %31, 72
  %191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %190, i32 undef)  ; BufferLoad(srv,index,wot)
  %192 = extractvalue %dx.types.ResRet.i32 %191, 0
  %193 = extractvalue %dx.types.ResRet.i32 %191, 1
  %194 = bitcast i32 %192 to float
  %195 = bitcast i32 %193 to float
  %196 = fmul fast float %194, %45
  %197 = fmul fast float %195, %46
  %198 = call float @dx.op.unary.f32(i32 22, float %196)  ; Frc(value)
  %199 = call float @dx.op.unary.f32(i32 22, float %197)  ; Frc(value)
  %200 = and i32 %151, 16
  %201 = icmp ne i32 %200, 0
  %202 = select i1 %201, float 1.000000e+00, float %50
  %203 = add i32 %31, 112
  %204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %203, i32 undef)  ; BufferLoad(srv,index,wot)
  %205 = extractvalue %dx.types.ResRet.i32 %204, 0
  %206 = add i32 %205, 0
  %207 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %206, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %209 = extractvalue %dx.types.CBufRet.f32 %208, 2
  %210 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %207, %dx.types.Handle %58, float %188, float %189, float undef, float undef, i32 0, i32 0, i32 undef, float %209, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %211 = extractvalue %dx.types.ResRet.f32 %210, 0
  %212 = fmul fast float %211, %202
  %213 = icmp eq i32 %200, 0
  br i1 %213, label %233, label %214, !dx.controlflow.hints !70

; <label>:214                                     ; preds = %187
  %215 = add i32 %148, 64
  %216 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %215, i32 undef)  ; BufferLoad(srv,index,wot)
  %217 = extractvalue %dx.types.ResRet.f32 %216, 0
  %218 = fadd fast float %217, 1.000000e+00
  %219 = fmul fast float %218, %50
  %220 = fsub fast float %219, %217
  %221 = fsub fast float %218, %220
  %222 = call float @dx.op.unary.f32(i32 7, float %221)  ; Saturate(value)
  %223 = fsub fast float 1.000000e+00, %219
  %224 = call float @dx.op.unary.f32(i32 7, float %223)  ; Saturate(value)
  %225 = fsub fast float %222, %224
  %226 = fsub fast float %212, %224
  %227 = fdiv fast float %226, %225
  %228 = call float @dx.op.unary.f32(i32 7, float %227)  ; Saturate(value)
  %229 = fmul fast float %228, 2.000000e+00
  %230 = fsub fast float 3.000000e+00, %229
  %231 = fmul fast float %228, %228
  %232 = fmul fast float %231, %230
  br label %233

; <label>:233                                     ; preds = %214, %187
  %234 = phi float [ %232, %214 ], [ %212, %187 ]
  %235 = fcmp fast ogt float %234, 0.000000e+00
  br i1 %235, label %237, label %236

; <label>:236                                     ; preds = %233
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %237

; <label>:237                                     ; preds = %236, %233
  %238 = call float @dx.op.unary.f32(i32 7, float %234)  ; Saturate(value)
  %239 = fmul fast float %61, 5.000000e-01
  %240 = fmul fast float %62, 5.000000e-01
  %241 = fptosi float %239 to i32
  %242 = fptosi float %240 to i32
  %243 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %241, i32 %242, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %244 = extractvalue %dx.types.ResRet.i32 %243, 0
  %245 = lshr i32 %244, 18
  %246 = uitofp i32 %245 to float
  %247 = fmul fast float %246, 0x3F4C00EBA0000000
  %248 = call float @dx.op.unary.f32(i32 21, float %247)  ; Exp(value)
  %249 = fadd fast float %248, -1.000000e+00
  %250 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %251 = extractvalue %dx.types.Dimensions %250, 0
  %252 = sitofp i32 %251 to float
  %253 = extractvalue %dx.types.Dimensions %250, 1
  %254 = sitofp i32 %253 to float
  %255 = fcmp fast oge float %239, %252
  %256 = fcmp fast oge float %240, %254
  %257 = or i1 %255, %256
  %258 = select i1 %257, float 0x4197782600000000, float %249
  %259 = fsub fast float %258, %54
  %260 = fcmp fast ogt float %259, 0.000000e+00
  %261 = and i32 %147, -2
  %262 = icmp eq i32 %261, 2
  %263 = and i1 %262, %260
  %264 = xor i1 %260, true
  %265 = icmp eq i32 %147, 1
  %266 = and i1 %265, %264
  %267 = or i1 %263, %266
  %268 = and i32 %151, 262144
  %269 = icmp ne i32 %268, 0
  %270 = and i1 %269, %267
  %271 = xor i1 %267, true
  %272 = and i32 %151, 131072
  %273 = icmp ne i32 %272, 0
  %274 = and i1 %273, %271
  %275 = or i1 %270, %274
  br i1 %275, label %276, label %277

; <label>:276                                     ; preds = %237
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %277

; <label>:277                                     ; preds = %276, %237
  %278 = and i32 %151, 32
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %529, label %280, !dx.controlflow.hints !71

; <label>:280                                     ; preds = %277
  %281 = add i32 %148, 80
  %282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.f32 %282, 0
  %284 = extractvalue %dx.types.ResRet.f32 %282, 1
  %285 = extractvalue %dx.types.ResRet.f32 %282, 2
  %286 = extractvalue %dx.types.ResRet.f32 %282, 3
  %287 = add i32 %148, 96
  %288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.f32 %288, 0
  %290 = extractvalue %dx.types.ResRet.f32 %288, 1
  %291 = extractvalue %dx.types.ResRet.f32 %288, 2
  %292 = add i32 %148, 112
  %293 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.f32 %293, 0
  %295 = extractvalue %dx.types.ResRet.f32 %293, 1
  %296 = extractvalue %dx.types.ResRet.f32 %293, 2
  %297 = extractvalue %dx.types.ResRet.f32 %293, 3
  %298 = add i32 %148, 128
  %299 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.f32 %299, 0
  %301 = extractvalue %dx.types.ResRet.f32 %299, 1
  %302 = extractvalue %dx.types.ResRet.f32 %299, 2
  %303 = extractvalue %dx.types.ResRet.f32 %299, 3
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %149, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = and i32 %305, 4096
  %307 = icmp ne i32 %306, 0
  %308 = fcmp fast une float %291, 0.000000e+00
  %309 = and i32 %305, 64
  %310 = icmp ne i32 %309, 0
  %311 = and i32 %305, 128
  %312 = icmp eq i32 %311, 0
  %313 = and i32 %305, 2048
  %314 = icmp eq i32 %313, 0
  %315 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %14, i32 0)  ; GetDimensions(handle,mipLevel)
  %316 = extractvalue %dx.types.Dimensions %315, 0
  %317 = sitofp i32 %316 to float
  %318 = extractvalue %dx.types.Dimensions %315, 1
  %319 = sitofp i32 %318 to float
  %320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %321 = extractvalue %dx.types.CBufRet.f32 %320, 2
  %322 = extractvalue %dx.types.CBufRet.f32 %320, 3
  %323 = fmul fast float %321, %61
  %324 = fmul fast float %322, %62
  %325 = fmul fast float %323, %317
  %326 = fmul fast float %324, %319
  %327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %328 = extractvalue %dx.types.CBufRet.f32 %327, 1
  %329 = fsub fast float -0.000000e+00, %328
  %330 = fptoui float %329 to i32
  %331 = fptoui float %325 to i32
  %332 = fptoui float %326 to i32
  %333 = and i32 %330, 31
  %334 = lshr i32 %331, %333
  %335 = lshr i32 %332, %333
  %336 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 %330, i32 %334, i32 %335, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %337 = extractvalue %dx.types.ResRet.f32 %336, 0
  %338 = fcmp fast ogt float %337, -1.000000e+00
  %339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %340 = extractvalue %dx.types.CBufRet.f32 %339, 1
  %341 = select i1 %338, float %340, float 1.000000e+00
  %342 = fadd fast float %337, 1.000000e+00
  %343 = fmul fast float %341, %342
  %344 = call float @dx.op.unary.f32(i32 6, float %343)  ; FAbs(value)
  %345 = extractvalue %dx.types.CBufRet.f32 %339, 3
  %346 = fcmp fast oge float %344, %345
  %347 = select i1 %346, float 0x4197782600000000, float %344
  br i1 %314, label %425, label %348, !dx.controlflow.hints !72

; <label>:348                                     ; preds = %280
  %349 = fmul fast float %66, %321
  %350 = fmul fast float %68, %322
  %351 = fsub fast float 1.000000e+00, %349
  %352 = fsub fast float 1.000000e+00, %350
  %353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %354 = extractvalue %dx.types.CBufRet.f32 %353, 0
  %355 = extractvalue %dx.types.CBufRet.f32 %353, 1
  %356 = extractvalue %dx.types.CBufRet.f32 %353, 2
  %357 = fmul fast float %351, %354
  %358 = fmul fast float %351, %355
  %359 = fmul fast float %351, %356
  %360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %361 = extractvalue %dx.types.CBufRet.f32 %360, 0
  %362 = extractvalue %dx.types.CBufRet.f32 %360, 1
  %363 = extractvalue %dx.types.CBufRet.f32 %360, 2
  %364 = fmul fast float %352, %361
  %365 = fmul fast float %352, %362
  %366 = fmul fast float %352, %363
  %367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %368 = extractvalue %dx.types.CBufRet.f32 %367, 0
  %369 = extractvalue %dx.types.CBufRet.f32 %367, 1
  %370 = extractvalue %dx.types.CBufRet.f32 %367, 2
  %371 = fadd fast float %364, %368
  %372 = fadd fast float %371, %357
  %373 = fadd fast float %365, %369
  %374 = fadd fast float %373, %358
  %375 = fadd fast float %366, %370
  %376 = fadd fast float %375, %359
  %377 = fmul fast float %372, %347
  %378 = fmul fast float %374, %347
  %379 = fmul fast float %376, %347
  %380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %381 = extractvalue %dx.types.CBufRet.f32 %380, 0
  %382 = extractvalue %dx.types.CBufRet.f32 %380, 1
  %383 = extractvalue %dx.types.CBufRet.f32 %380, 2
  %384 = fsub fast float %381, %32
  %385 = fadd fast float %384, %377
  %386 = fsub fast float %382, %33
  %387 = fadd fast float %386, %378
  %388 = fsub fast float %383, %34
  %389 = fadd fast float %388, %379
  %390 = fmul fast float %35, %35
  %391 = call float @dx.op.dot3.f32(i32 55, float %385, float %387, float %389, float %385, float %387, float %389)  ; Dot3(ax,ay,az,bx,by,bz)
  %392 = fsub fast float %390, %391
  %393 = fmul fast float %290, %390
  %394 = fmul fast float %289, %390
  %395 = fcmp fast olt float %392, %393
  %396 = fcmp fast ogt float %392, %394
  %397 = or i1 %395, %396
  %398 = select i1 %397, float 0.000000e+00, float %392
  %399 = fsub fast float %289, %290
  %400 = fmul fast float %399, %390
  %401 = fsub fast float %398, %393
  %402 = fdiv fast float %401, %400
  %403 = call float @dx.op.unary.f32(i32 7, float %402)  ; Saturate(value)
  %404 = fmul fast float %403, 2.000000e+00
  %405 = fsub fast float 3.000000e+00, %404
  %406 = fmul fast float %403, %403
  %407 = fmul fast float %406, %405
  %408 = fmul fast float %294, %47
  %409 = fmul fast float %295, %48
  %410 = fmul fast float %296, %49
  %411 = fsub fast float %408, %300
  %412 = fsub fast float %409, %301
  %413 = fsub fast float %410, %302
  %414 = fsub fast float %297, %303
  %415 = fmul fast float %407, %411
  %416 = fmul fast float %407, %412
  %417 = fmul fast float %407, %413
  %418 = fmul fast float %407, %414
  %419 = fadd fast float %415, %300
  %420 = fadd fast float %416, %301
  %421 = fadd fast float %417, %302
  %422 = fadd fast float %418, %303
  %423 = fmul fast float %283, %283
  %424 = fmul fast float %423, %398
  br label %520

; <label>:425                                     ; preds = %280
  %426 = and i32 %305, 256
  %427 = icmp eq i32 %426, 0
  %428 = fsub fast float %347, %54
  br i1 %427, label %477, label %429

; <label>:429                                     ; preds = %425
  %430 = fadd fast float %289, %54
  %431 = fcmp fast olt float %347, %54
  %432 = fcmp fast ogt float %347, %430
  %433 = or i1 %431, %432
  %434 = select i1 %433, float 0.000000e+00, float %428
  %435 = call float @dx.op.unary.f32(i32 83, float %347)  ; DerivCoarseX(value)
  %436 = call float @dx.op.unary.f32(i32 84, float %347)  ; DerivCoarseY(value)
  %437 = fmul fast float %435, %435
  %438 = fmul fast float %436, %436
  %439 = fadd fast float %438, %437
  %440 = call float @dx.op.unary.f32(i32 24, float %439)  ; Sqrt(value)
  %441 = extractvalue %dx.types.CBufRet.f32 %327, 2
  %442 = fmul fast float %441, %440
  %443 = call float @dx.op.unary.f32(i32 7, float %442)  ; Saturate(value)
  %444 = fmul fast float %443, %290
  %445 = fdiv fast float %428, %444
  %446 = call float @dx.op.unary.f32(i32 7, float %445)  ; Saturate(value)
  %447 = fmul fast float %446, 2.000000e+00
  %448 = fsub fast float 3.000000e+00, %447
  %449 = fmul fast float %446, %446
  %450 = fmul fast float %449, %448
  %451 = fsub fast float %347, %430
  %452 = fadd fast float %451, %444
  %453 = fdiv fast float %452, %444
  %454 = call float @dx.op.unary.f32(i32 7, float %453)  ; Saturate(value)
  %455 = fmul fast float %454, 2.000000e+00
  %456 = fsub fast float 3.000000e+00, %455
  %457 = fmul fast float %454, %454
  %458 = fmul fast float %457, %456
  %459 = fsub fast float %450, %458
  %460 = fmul fast float %294, %47
  %461 = fmul fast float %295, %48
  %462 = fmul fast float %296, %49
  %463 = fsub fast float %460, %300
  %464 = fsub fast float %461, %301
  %465 = fsub fast float %462, %302
  %466 = fsub fast float %297, %303
  %467 = fmul fast float %459, %463
  %468 = fmul fast float %459, %464
  %469 = fmul fast float %459, %465
  %470 = fmul fast float %459, %466
  %471 = fadd fast float %467, %300
  %472 = fadd fast float %468, %301
  %473 = fadd fast float %469, %302
  %474 = fadd fast float %470, %303
  %475 = fmul fast float %434, %283
  %476 = call float @dx.op.unary.f32(i32 6, float %475)  ; FAbs(value)
  br label %520

; <label>:477                                     ; preds = %425
  br i1 %308, label %478, label %491

; <label>:478                                     ; preds = %477
  %479 = fdiv fast float 5.000000e+01, %35
  %480 = select i1 %310, float %479, float 1.000000e+00
  %481 = fmul fast float %480, %283
  %482 = fmul fast float %198, 2.000000e+00
  %483 = fmul fast float %199, 2.000000e+00
  %484 = fadd fast float %482, -1.000000e+00
  %485 = fadd fast float %483, -1.000000e+00
  %486 = call float @dx.op.dot2.f32(i32 54, float %484, float %485, float %484, float %485)  ; Dot2(ax,ay,bx,by)
  %487 = fmul fast float %291, %35
  %488 = fmul fast float %487, %486
  %489 = fsub fast float %428, %488
  %490 = fmul fast float %481, %489
  br label %520

; <label>:491                                     ; preds = %477
  br i1 %312, label %512, label %492

; <label>:492                                     ; preds = %491
  %493 = fmul fast float %35, 0x3F947AE140000000
  %494 = select i1 %310, float %493, float 1.000000e+00
  %495 = fdiv fast float 1.000000e+00, %494
  %496 = fmul fast float %494, %284
  %497 = fmul fast float %494, %285
  %498 = fmul fast float %495, %286
  %499 = call float @dx.op.unary.f32(i32 6, float %428)  ; FAbs(value)
  %500 = fcmp fast olt float %499, %496
  br i1 %500, label %501, label %505, !dx.controlflow.hints !73

; <label>:501                                     ; preds = %492
  %502 = fmul fast float %495, %283
  %503 = fmul fast float %502, %499
  %504 = call float @dx.op.unary.f32(i32 6, float %503)  ; FAbs(value)
  br label %520

; <label>:505                                     ; preds = %492
  %506 = fcmp fast ogt float %499, %497
  br i1 %506, label %507, label %520

; <label>:507                                     ; preds = %505
  %508 = fsub fast float %499, %497
  %509 = fmul fast float %498, %508
  %510 = call float @dx.op.unary.f32(i32 6, float %509)  ; FAbs(value)
  %511 = fsub fast float 1.000000e+00, %510
  br label %520

; <label>:512                                     ; preds = %491
  %513 = fdiv fast float 5.000000e+01, %35
  %514 = select i1 %310, float %513, float 1.000000e+00
  %515 = fmul fast float %514, %283
  %516 = call float @dx.op.unary.f32(i32 6, float %259)  ; FAbs(value)
  %517 = select i1 %307, float %516, float 0x47EFFFFFE0000000
  %518 = call float @dx.op.binary.f32(i32 36, float %428, float %517)  ; FMin(a,b)
  %519 = fmul fast float %515, %518
  br label %520

; <label>:520                                     ; preds = %512, %507, %505, %501, %478, %429, %348
  %521 = phi float [ %424, %348 ], [ %476, %429 ], [ %490, %478 ], [ %519, %512 ], [ %504, %501 ], [ %511, %507 ], [ %499, %505 ]
  %522 = phi float [ %419, %348 ], [ %471, %429 ], [ %47, %478 ], [ %47, %512 ], [ %47, %501 ], [ %47, %507 ], [ %47, %505 ]
  %523 = phi float [ %420, %348 ], [ %472, %429 ], [ %48, %478 ], [ %48, %512 ], [ %48, %501 ], [ %48, %507 ], [ %48, %505 ]
  %524 = phi float [ %421, %348 ], [ %473, %429 ], [ %49, %478 ], [ %49, %512 ], [ %49, %501 ], [ %49, %507 ], [ %49, %505 ]
  %525 = phi float [ %422, %348 ], [ %474, %429 ], [ 1.000000e+00, %478 ], [ 1.000000e+00, %512 ], [ 1.000000e+00, %501 ], [ 1.000000e+00, %507 ], [ 1.000000e+00, %505 ]
  %526 = call float @dx.op.unary.f32(i32 7, float %521)  ; Saturate(value)
  %527 = fmul fast float %525, %238
  %528 = fmul fast float %527, %526
  br label %529

; <label>:529                                     ; preds = %520, %277
  %530 = phi float [ %522, %520 ], [ %47, %277 ]
  %531 = phi float [ %523, %520 ], [ %48, %277 ]
  %532 = phi float [ %524, %520 ], [ %49, %277 ]
  %533 = phi float [ %528, %520 ], [ %238, %277 ]
  %534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %535 = extractvalue %dx.types.CBufRet.f32 %534, 2
  %536 = fptosi float %54 to i32
  %537 = sitofp i32 %536 to float
  %538 = fadd fast float %535, %537
  %539 = fmul fast float %538, 0x3FE3C6EF40000000
  %540 = frem fast float %61, 2.560000e+02
  %541 = frem fast float %62, 2.560000e+02
  %542 = fptoui float %540 to i32
  %543 = fptoui float %541 to i32
  %544 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %542, i32 %543, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %545 = extractvalue %dx.types.ResRet.f32 %544, 0
  %546 = fadd fast float %545, %539
  %547 = call float @dx.op.unary.f32(i32 22, float %546)  ; Frc(value)
  %548 = and i32 %151, 1
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %606, label %550, !dx.controlflow.hints !74

; <label>:550                                     ; preds = %529
  %551 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %148, i32 undef)  ; BufferLoad(srv,index,wot)
  %552 = extractvalue %dx.types.ResRet.f32 %551, 2
  %553 = extractvalue %dx.types.ResRet.f32 %551, 3
  %554 = add i32 %148, 16
  %555 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %554, i32 undef)  ; BufferLoad(srv,index,wot)
  %556 = extractvalue %dx.types.ResRet.f32 %555, 0
  %557 = extractvalue %dx.types.ResRet.f32 %555, 1
  %558 = extractvalue %dx.types.ResRet.f32 %555, 2
  %559 = add i32 %148, 32
  %560 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %559, i32 undef)  ; BufferLoad(srv,index,wot)
  %561 = extractvalue %dx.types.ResRet.f32 %560, 0
  %562 = extractvalue %dx.types.ResRet.f32 %560, 1
  %563 = extractvalue %dx.types.ResRet.f32 %560, 2
  %564 = and i32 %151, 2
  %565 = icmp eq i32 %564, 0
  %566 = call float @dx.op.dot3.f32(i32 55, float %42, float %43, float %44, float %42, float %43, float %44)  ; Dot3(ax,ay,az,bx,by,bz)
  %567 = call float @dx.op.unary.f32(i32 25, float %566)  ; Rsqrt(value)
  %568 = fmul fast float %567, %42
  %569 = fmul fast float %567, %43
  %570 = fmul fast float %567, %44
  %571 = call float @dx.op.dot3.f32(i32 55, float %96, float %97, float %98, float %96, float %97, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %572 = call float @dx.op.unary.f32(i32 25, float %571)  ; Rsqrt(value)
  %573 = fmul fast float %572, %96
  %574 = fmul fast float %572, %97
  %575 = fmul fast float %572, %98
  %576 = call float @dx.op.dot3.f32(i32 55, float %573, float %574, float %575, float %568, float %569, float %570)  ; Dot3(ax,ay,az,bx,by,bz)
  %577 = fmul fast float %576, %576
  %578 = fmul fast float %577, %552
  %579 = fadd fast float %578, %553
  %580 = call float @dx.op.unary.f32(i32 7, float %579)  ; Saturate(value)
  br i1 %565, label %581, label %591, !dx.controlflow.hints !75

; <label>:581                                     ; preds = %550
  %582 = extractvalue %dx.types.ResRet.f32 %551, 1
  %583 = extractvalue %dx.types.ResRet.f32 %551, 0
  %584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %585 = extractvalue %dx.types.CBufRet.f32 %584, 3
  %586 = fmul fast float %585, %571
  %587 = fsub fast float %583, %586
  %588 = fmul fast float %587, %582
  %589 = call float @dx.op.unary.f32(i32 7, float %588)  ; Saturate(value)
  %590 = fmul fast float %589, %580
  br label %591

; <label>:591                                     ; preds = %581, %550
  %592 = phi float [ %590, %581 ], [ %580, %550 ]
  %593 = fsub fast float %556, %561
  %594 = fsub fast float %557, %562
  %595 = fsub fast float %558, %563
  %596 = fmul fast float %592, %593
  %597 = fmul fast float %592, %594
  %598 = fmul fast float %592, %595
  %599 = fadd fast float %596, %561
  %600 = fadd fast float %597, %562
  %601 = fadd fast float %598, %563
  %602 = fmul fast float %599, %530
  %603 = fmul fast float %600, %531
  %604 = fmul fast float %601, %532
  %605 = fmul fast float %592, %533
  br label %606

; <label>:606                                     ; preds = %591, %529
  %607 = phi float [ %602, %591 ], [ %530, %529 ]
  %608 = phi float [ %603, %591 ], [ %531, %529 ]
  %609 = phi float [ %604, %591 ], [ %532, %529 ]
  %610 = phi float [ %605, %591 ], [ %533, %529 ]
  %611 = add i32 %31, 104
  %612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %611, i32 undef)  ; BufferLoad(srv,index,wot)
  %613 = extractvalue %dx.types.ResRet.i32 %612, 0
  %614 = add i32 %613, 0
  %615 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %614, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %616 = add i32 %31, 24
  %617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %616, i32 undef)  ; BufferLoad(srv,index,wot)
  %618 = extractvalue %dx.types.ResRet.i32 %617, 0
  %619 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %615, %dx.types.Handle %57, float %188, float %189, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %620 = extractvalue %dx.types.ResRet.f32 %619, 0
  %621 = extractvalue %dx.types.ResRet.f32 %619, 1
  %622 = extractvalue %dx.types.ResRet.f32 %619, 2
  %623 = extractvalue %dx.types.ResRet.f32 %619, 3
  %624 = and i32 %618, 255
  %625 = uitofp i32 %624 to float
  %626 = lshr i32 %618, 8
  %627 = and i32 %626, 255
  %628 = uitofp i32 %627 to float
  %629 = fmul fast float %623, %625
  %630 = fadd fast float %629, %628
  %631 = fmul fast float %630, 0x3F70101000000000
  %632 = add i32 %31, 56
  %633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %632, i32 undef)  ; BufferLoad(srv,index,wot)
  %634 = extractvalue %dx.types.ResRet.i32 %633, 0
  %635 = and i32 %634, 255
  %636 = uitofp i32 %635 to float
  %637 = fmul fast float %636, 0x3F70101020000000
  %638 = lshr i32 %634, 8
  %639 = and i32 %638, 255
  %640 = uitofp i32 %639 to float
  %641 = fmul fast float %640, 0x3F70101020000000
  %642 = lshr i32 %634, 16
  %643 = and i32 %642, 255
  %644 = uitofp i32 %643 to float
  %645 = fmul fast float %644, 0x3F70101020000000
  %646 = fmul fast float %620, %607
  %647 = fmul fast float %637, %637
  %648 = fmul fast float %647, %646
  %649 = fmul fast float %621, %608
  %650 = fmul fast float %641, %641
  %651 = fmul fast float %650, %649
  %652 = fmul fast float %622, %609
  %653 = fmul fast float %645, %645
  %654 = fmul fast float %653, %652
  %655 = add i32 %31, 28
  %656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %655, i32 undef)  ; BufferLoad(srv,index,wot)
  %657 = extractvalue %dx.types.ResRet.i32 %656, 0
  %658 = add i32 %31, 108
  %659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %658, i32 undef)  ; BufferLoad(srv,index,wot)
  %660 = extractvalue %dx.types.ResRet.i32 %659, 0
  %661 = add i32 %660, 0
  %662 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %661, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %663 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %662, %dx.types.Handle %57, float %188, float %189, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %664 = extractvalue %dx.types.ResRet.f32 %663, 0
  %665 = extractvalue %dx.types.ResRet.f32 %663, 1
  %666 = extractvalue %dx.types.ResRet.f32 %663, 3
  %667 = and i32 %657, 255
  %668 = uitofp i32 %667 to float
  %669 = lshr i32 %657, 8
  %670 = and i32 %669, 255
  %671 = uitofp i32 %670 to float
  %672 = lshr i32 %657, 16
  %673 = and i32 %672, 255
  %674 = uitofp i32 %673 to float
  %675 = fmul fast float %674, 0x3F70101000000000
  %676 = fmul fast float %664, %668
  %677 = fadd fast float %676, %671
  %678 = fmul fast float %677, 0x3F70101000000000
  %679 = fadd fast float %665, -5.000000e-01
  %680 = fadd fast float %666, -5.000000e-01
  %681 = fmul fast float %679, %675
  %682 = fmul fast float %680, %675
  %683 = fadd fast float %681, 5.000000e-01
  %684 = fadd fast float %682, 5.000000e-01
  %685 = fmul fast float %683, 2.000000e+00
  %686 = fadd fast float %685, -1.000000e+00
  %687 = fmul fast float %684, 2.000000e+00
  %688 = fadd fast float %687, -1.000000e+00
  %689 = fadd fast float %686, %688
  %690 = fmul fast float %689, 5.000000e-01
  %691 = fsub fast float %686, %688
  %692 = fmul fast float %691, 5.000000e-01
  %693 = call float @dx.op.unary.f32(i32 6, float %690)  ; FAbs(value)
  %694 = fsub fast float 1.000000e+00, %693
  %695 = call float @dx.op.unary.f32(i32 6, float %692)  ; FAbs(value)
  %696 = fsub fast float %694, %695
  %697 = call float @dx.op.dot3.f32(i32 55, float %690, float %692, float %696, float %690, float %692, float %696)  ; Dot3(ax,ay,az,bx,by,bz)
  %698 = call float @dx.op.unary.f32(i32 25, float %697)  ; Rsqrt(value)
  %699 = fmul fast float %690, %698
  %700 = fmul fast float %692, %698
  %701 = add i32 %31, 40
  %702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %701, i32 undef)  ; BufferLoad(srv,index,wot)
  %703 = extractvalue %dx.types.ResRet.i32 %702, 0
  %704 = and i32 %703, 255
  %705 = uitofp i32 %704 to float
  %706 = fmul fast float %705, 0x3F70101020000000
  %707 = lshr i32 %703, 8
  %708 = and i32 %707, 255
  %709 = uitofp i32 %708 to float
  %710 = fmul fast float %709, 0x3F70101020000000
  %711 = lshr i32 %703, 16
  %712 = and i32 %711, 255
  %713 = uitofp i32 %712 to float
  %714 = fmul fast float %713, 0x3F70101020000000
  %715 = fmul fast float %706, %706
  %716 = fmul fast float %710, %710
  %717 = fmul fast float %714, %714
  %718 = add i32 %31, 116
  %719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %718, i32 undef)  ; BufferLoad(srv,index,wot)
  %720 = extractvalue %dx.types.ResRet.i32 %719, 0
  %721 = add i32 %720, 0
  %722 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %721, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %723 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %722, %dx.types.Handle %58, float %188, float %189, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %724 = extractvalue %dx.types.ResRet.f32 %723, 0
  %725 = extractvalue %dx.types.ResRet.f32 %723, 1
  %726 = extractvalue %dx.types.ResRet.f32 %723, 2
  %727 = fmul fast float %715, %724
  %728 = fmul fast float %716, %725
  %729 = fmul fast float %717, %726
  %730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %731 = extractvalue %dx.types.CBufRet.f32 %730, 3
  %732 = fcmp fast ogt float %731, 0.000000e+00
  %733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %734 = extractvalue %dx.types.CBufRet.f32 %733, 1
  br i1 %732, label %735, label %760

; <label>:735                                     ; preds = %606
  %736 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %36, float %37, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %737 = extractvalue %dx.types.ResRet.f32 %736, 0
  %738 = extractvalue %dx.types.ResRet.f32 %736, 1
  %739 = extractvalue %dx.types.ResRet.f32 %736, 2
  %740 = extractvalue %dx.types.ResRet.f32 %736, 3
  %741 = fmul fast float %734, %740
  %742 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %36, float %37, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %743 = extractvalue %dx.types.ResRet.f32 %742, 0
  %744 = extractvalue %dx.types.ResRet.f32 %742, 1
  %745 = extractvalue %dx.types.ResRet.f32 %742, 2
  %746 = extractvalue %dx.types.ResRet.f32 %742, 3
  %747 = fmul fast float %734, %743
  %748 = fmul fast float %734, %744
  %749 = fmul fast float %734, %745
  %750 = fmul fast float %734, %746
  %751 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %36, float %37, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %752 = extractvalue %dx.types.ResRet.f32 %751, 0
  %753 = extractvalue %dx.types.ResRet.f32 %751, 1
  %754 = extractvalue %dx.types.ResRet.f32 %751, 2
  %755 = extractvalue %dx.types.ResRet.f32 %751, 3
  %756 = fmul fast float %734, %752
  %757 = fmul fast float %734, %753
  %758 = fmul fast float %734, %754
  %759 = fmul fast float %734, %755
  br label %765

; <label>:760                                     ; preds = %606
  %761 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %26, float %36, float %37, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %762 = extractvalue %dx.types.ResRet.f32 %761, 0
  %763 = extractvalue %dx.types.ResRet.f32 %761, 1
  %764 = extractvalue %dx.types.ResRet.f32 %761, 2
  br label %765

; <label>:765                                     ; preds = %760, %735
  %766 = phi float [ %756, %735 ], [ 0.000000e+00, %760 ]
  %767 = phi float [ %757, %735 ], [ 0.000000e+00, %760 ]
  %768 = phi float [ %758, %735 ], [ 0.000000e+00, %760 ]
  %769 = phi float [ %759, %735 ], [ 0.000000e+00, %760 ]
  %770 = phi float [ %747, %735 ], [ 0.000000e+00, %760 ]
  %771 = phi float [ %748, %735 ], [ 0.000000e+00, %760 ]
  %772 = phi float [ %749, %735 ], [ 0.000000e+00, %760 ]
  %773 = phi float [ %750, %735 ], [ 0.000000e+00, %760 ]
  %774 = phi float [ %737, %735 ], [ %762, %760 ]
  %775 = phi float [ %738, %735 ], [ %763, %760 ]
  %776 = phi float [ %739, %735 ], [ %764, %760 ]
  %777 = phi float [ %741, %735 ], [ 0.000000e+00, %760 ]
  %778 = fmul float %734, %776
  %779 = fmul float %734, %775
  %780 = fmul float %734, %774
  %781 = call float @dx.op.dot2.f32(i32 54, float %699, float %700, float %699, float %700)  ; Dot2(ax,ay,bx,by)
  %782 = fsub fast float 1.000000e+00, %781
  %783 = call float @dx.op.unary.f32(i32 7, float %782)  ; Saturate(value)
  %784 = call float @dx.op.unary.f32(i32 24, float %783)  ; Sqrt(value)
  %785 = fmul fast float %784, %42
  %786 = fmul fast float %784, %43
  %787 = fmul fast float %784, %44
  %788 = fmul fast float %699, %38
  %789 = fmul fast float %699, %39
  %790 = fmul fast float %699, %40
  %791 = fmul fast float %108, %700
  %792 = fmul fast float %109, %700
  %793 = fmul fast float %110, %700
  %794 = fadd fast float %791, %788
  %795 = fadd fast float %794, %785
  %796 = fadd fast float %792, %789
  %797 = fadd fast float %796, %786
  %798 = fadd fast float %793, %790
  %799 = fadd fast float %798, %787
  %800 = call float @dx.op.dot3.f32(i32 55, float %795, float %797, float %799, float %795, float %797, float %799)  ; Dot3(ax,ay,az,bx,by,bz)
  %801 = call float @dx.op.unary.f32(i32 25, float %800)  ; Rsqrt(value)
  %802 = fmul fast float %795, %801
  %803 = fmul fast float %797, %801
  %804 = fmul fast float %799, %801
  %805 = call float @dx.op.dot3.f32(i32 55, float %96, float %97, float %98, float %96, float %97, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %806 = call float @dx.op.unary.f32(i32 25, float %805)  ; Rsqrt(value)
  %807 = fmul fast float %806, %96
  %808 = fmul fast float %806, %97
  %809 = fmul fast float %806, %98
  %810 = fsub fast float -0.000000e+00, %807
  %811 = fsub fast float -0.000000e+00, %808
  %812 = fsub fast float -0.000000e+00, %809
  %813 = fadd fast float %631, 0xBFB99999A0000000
  %814 = call float @dx.op.unary.f32(i32 7, float %813)  ; Saturate(value)
  %815 = fmul fast float %814, 0x3FF1C71C80000000
  %816 = call float @dx.op.binary.f32(i32 36, float %631, float 0x3FB99999A0000000)  ; FMin(a,b)
  %817 = fsub fast float 1.000000e+00, %815
  %818 = call float @dx.op.unary.f32(i32 7, float %817)  ; Saturate(value)
  %819 = fmul fast float %818, %648
  %820 = fmul fast float %818, %651
  %821 = fmul fast float %818, %654
  %822 = call float @dx.op.unary.f32(i32 7, float %819)  ; Saturate(value)
  %823 = call float @dx.op.unary.f32(i32 7, float %820)  ; Saturate(value)
  %824 = call float @dx.op.unary.f32(i32 7, float %821)  ; Saturate(value)
  %825 = fmul fast float %815, %648
  %826 = fmul fast float %815, %651
  %827 = fmul fast float %815, %654
  %828 = fadd fast float %825, %816
  %829 = fadd fast float %826, %816
  %830 = fadd fast float %827, %816
  %831 = call float @dx.op.unary.f32(i32 7, float %828)  ; Saturate(value)
  %832 = call float @dx.op.unary.f32(i32 7, float %829)  ; Saturate(value)
  %833 = call float @dx.op.unary.f32(i32 7, float %830)  ; Saturate(value)
  %834 = call float @dx.op.unary.f32(i32 7, float %678)  ; Saturate(value)
  %835 = call float @dx.op.dot3.f32(i32 55, float %822, float %823, float %824, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %836 = add i32 %31, 32
  %837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %836, i32 undef)  ; BufferLoad(srv,index,wot)
  %838 = extractvalue %dx.types.ResRet.i32 %837, 0
  %839 = and i32 %838, 255
  %840 = uitofp i32 %839 to float
  %841 = lshr i32 %838, 8
  %842 = and i32 %841, 255
  %843 = uitofp i32 %842 to float
  %844 = fmul fast float %843, %835
  %845 = fadd fast float %844, %840
  %846 = fmul fast float %845, 0x3F70101020000000
  %847 = call float @dx.op.unary.f32(i32 7, float %846)  ; Saturate(value)
  %848 = and i32 %151, 8192
  %849 = icmp eq i32 %848, 0
  %850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %851 = extractvalue %dx.types.CBufRet.f32 %850, 0
  br i1 %849, label %858, label %852, !dx.controlflow.hints !76

; <label>:852                                     ; preds = %765
  %853 = add i32 %148, 176
  %854 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %853, i32 undef)  ; BufferLoad(srv,index,wot)
  %855 = extractvalue %dx.types.ResRet.f32 %854, 0
  %856 = fcmp fast oge float %855, 0.000000e+00
  %857 = select i1 %856, float %855, float %851
  br label %858

; <label>:858                                     ; preds = %852, %765
  %859 = phi float [ %857, %852 ], [ %851, %765 ]
  %860 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %241, i32 %242, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %861 = extractvalue %dx.types.ResRet.i32 %860, 0
  %862 = lshr i32 %861, 18
  %863 = uitofp i32 %862 to float
  %864 = fmul fast float %863, 0x3F4C00EBA0000000
  %865 = call float @dx.op.unary.f32(i32 21, float %864)  ; Exp(value)
  %866 = fadd fast float %865, -1.000000e+00
  %867 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %868 = extractvalue %dx.types.Dimensions %867, 0
  %869 = sitofp i32 %868 to float
  %870 = extractvalue %dx.types.Dimensions %867, 1
  %871 = sitofp i32 %870 to float
  %872 = fcmp fast oge float %239, %869
  %873 = fcmp fast oge float %240, %871
  %874 = or i1 %872, %873
  %875 = select i1 %874, float 0x4197782600000000, float %866
  %876 = icmp eq i32 %147, 3
  %877 = fcmp fast ogt float %54, %875
  %878 = and i1 %265, %877
  %879 = or i1 %876, %878
  %880 = icmp eq i32 %147, 2
  %881 = fcmp fast ole float %54, %875
  %882 = and i1 %880, %881
  %883 = or i1 %882, %879
  %884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %885 = extractvalue %dx.types.CBufRet.f32 %884, 3
  %886 = fcmp fast ogt float %885, 0.000000e+00
  br i1 %886, label %887, label %894

; <label>:887                                     ; preds = %858
  %888 = fmul fast float %803, 0xBFDF454380000000
  %889 = fmul fast float %804, 0x3FDF454380000000
  %890 = fmul fast float %802, 0xBFDF454380000000
  %891 = call float @dx.op.dot4.f32(i32 56, float %780, float %779, float %778, float %777, float 0x3FD20DD760000000, float %888, float %889, float %890)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %892 = call float @dx.op.dot4.f32(i32 56, float %770, float %771, float %772, float %773, float 0x3FD20DD760000000, float %888, float %889, float %890)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %893 = call float @dx.op.dot4.f32(i32 56, float %766, float %767, float %768, float %769, float 0x3FD20DD760000000, float %888, float %889, float %890)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %894

; <label>:894                                     ; preds = %887, %858
  %895 = phi float [ %891, %887 ], [ %780, %858 ]
  %896 = phi float [ %892, %887 ], [ %779, %858 ]
  %897 = phi float [ %893, %887 ], [ %778, %858 ]
  %898 = call float @dx.op.dot3.f32(i32 55, float %802, float %803, float %804, float %810, float %811, float %812)  ; Dot3(ax,ay,az,bx,by,bz)
  %899 = call float @dx.op.unary.f32(i32 7, float %898)  ; Saturate(value)
  br i1 %886, label %900, label %1000

; <label>:900                                     ; preds = %894
  %901 = fsub fast float -0.000000e+00, %769
  %902 = fsub fast float %901, %773
  %903 = fsub fast float %902, %777
  %904 = fsub fast float -0.000000e+00, %767
  %905 = fsub fast float %904, %771
  %906 = fsub fast float %905, %779
  %907 = fadd fast float %772, %768
  %908 = fadd fast float %907, %778
  %909 = call float @dx.op.dot3.f32(i32 55, float %903, float %906, float %908, float %903, float %906, float %908)  ; Dot3(ax,ay,az,bx,by,bz)
  %910 = call float @dx.op.unary.f32(i32 25, float %909)  ; Rsqrt(value)
  %911 = fmul fast float %910, %903
  %912 = fmul fast float %910, %906
  %913 = fmul fast float %910, %908
  %914 = fmul fast float %912, 0xBFD4D8D7C0000000
  %915 = fmul fast float %913, 0x3FD4D8D7C0000000
  %916 = fmul fast float %911, 0xBFD4D8D7C0000000
  %917 = call float @dx.op.dot4.f32(i32 56, float %780, float %779, float %778, float %777, float 0x3FD20DD760000000, float %914, float %915, float %916)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %918 = call float @dx.op.dot4.f32(i32 56, float %770, float %771, float %772, float %773, float 0x3FD20DD760000000, float %914, float %915, float %916)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %919 = call float @dx.op.dot4.f32(i32 56, float %766, float %767, float %768, float %769, float 0x3FD20DD760000000, float %914, float %915, float %916)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %920 = fmul fast float %917, 0x4003333340000000
  %921 = fmul fast float %780, 0x3FE5AA35A0000000
  %922 = fsub fast float %920, %921
  %923 = fmul fast float %918, 0x4003333340000000
  %924 = fmul fast float %770, 0x3FE5AA35A0000000
  %925 = fsub fast float %923, %924
  %926 = fmul fast float %919, 0x4003333340000000
  %927 = fmul fast float %766, 0x3FE5AA35A0000000
  %928 = fsub fast float %926, %927
  %929 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %922)  ; FMax(a,b)
  %930 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %925)  ; FMax(a,b)
  %931 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %928)  ; FMax(a,b)
  %932 = fsub fast float %911, %807
  %933 = fsub fast float %912, %808
  %934 = fsub fast float %913, %809
  %935 = call float @dx.op.dot3.f32(i32 55, float %932, float %933, float %934, float %932, float %933, float %934)  ; Dot3(ax,ay,az,bx,by,bz)
  %936 = call float @dx.op.unary.f32(i32 25, float %935)  ; Rsqrt(value)
  %937 = fmul fast float %936, %932
  %938 = fmul fast float %936, %933
  %939 = fmul fast float %936, %934
  %940 = call float @dx.op.dot3.f32(i32 55, float %802, float %803, float %804, float %911, float %912, float %913)  ; Dot3(ax,ay,az,bx,by,bz)
  %941 = call float @dx.op.unary.f32(i32 6, float %940)  ; FAbs(value)
  %942 = call float @dx.op.dot3.f32(i32 55, float %802, float %803, float %804, float %937, float %938, float %939)  ; Dot3(ax,ay,az,bx,by,bz)
  %943 = fmul fast float %942, %942
  %944 = call float @dx.op.dot3.f32(i32 55, float %810, float %811, float %812, float %937, float %938, float %939)  ; Dot3(ax,ay,az,bx,by,bz)
  %945 = call float @dx.op.unary.f32(i32 6, float %944)  ; FAbs(value)
  %946 = fsub fast float 1.000000e+00, %834
  %947 = call float @dx.op.binary.f32(i32 35, float %946, float 0x3F847AE140000000)  ; FMax(a,b)
  %948 = fmul fast float %947, %947
  %949 = fmul fast float %948, %948
  %950 = fsub fast float 1.000000e+00, %949
  %951 = fmul fast float %899, %899
  %952 = fmul fast float %951, %950
  %953 = fadd fast float %952, %949
  %954 = bitcast float %953 to i32
  %955 = ashr i32 %954, 1
  %956 = add nsw i32 %955, 532487669
  %957 = bitcast i32 %956 to float
  %958 = fadd fast float %957, %899
  %959 = fmul fast float %949, %943
  %960 = fsub fast float 1.000000e+00, %943
  %961 = fadd fast float %960, %959
  %962 = fmul fast float %941, %941
  %963 = fmul fast float %962, %950
  %964 = fadd fast float %963, %949
  %965 = bitcast float %964 to i32
  %966 = ashr i32 %965, 1
  %967 = add nsw i32 %966, 532487669
  %968 = bitcast i32 %967 to float
  %969 = fadd fast float %968, %941
  %970 = fmul fast float %961, %961
  %971 = fmul fast float %970, %958
  %972 = fmul fast float %971, %969
  %973 = fdiv fast float 1.000000e+00, %972
  %974 = fmul fast float %949, %973
  %975 = fsub fast float 1.000000e+00, %945
  %976 = bitcast float %975 to i32
  %977 = sitofp i32 %976 to float
  %978 = fmul fast float %977, 5.000000e+00
  %979 = fadd fast float %978, 0xC1EFBF8940000000
  %980 = fptosi float %979 to i32
  %981 = bitcast i32 %980 to float
  %982 = fsub fast float 1.000000e+00, %831
  %983 = fsub fast float 1.000000e+00, %832
  %984 = fsub fast float 1.000000e+00, %833
  %985 = fmul fast float %981, %982
  %986 = fmul fast float %981, %983
  %987 = fmul fast float %981, %984
  %988 = fadd fast float %985, %831
  %989 = fadd fast float %986, %832
  %990 = fadd fast float %987, %833
  %991 = fmul fast float %974, %929
  %992 = fmul fast float %991, %988
  %993 = fmul fast float %974, %930
  %994 = fmul fast float %993, %989
  %995 = fmul fast float %974, %931
  %996 = fmul fast float %995, %990
  %997 = call float @dx.op.binary.f32(i32 35, float %992, float 0.000000e+00)  ; FMax(a,b)
  %998 = call float @dx.op.binary.f32(i32 35, float %994, float 0.000000e+00)  ; FMax(a,b)
  %999 = call float @dx.op.binary.f32(i32 35, float %996, float 0.000000e+00)  ; FMax(a,b)
  br label %1000

; <label>:1000                                    ; preds = %900, %894
  %1001 = phi float [ %997, %900 ], [ 0.000000e+00, %894 ]
  %1002 = phi float [ %998, %900 ], [ 0.000000e+00, %894 ]
  %1003 = phi float [ %999, %900 ], [ 0.000000e+00, %894 ]
  %1004 = fmul fast float %899, 9.843750e-01
  %1005 = fmul fast float %834, 9.843750e-01
  %1006 = fadd fast float %1004, 7.812500e-03
  %1007 = fadd fast float %1005, 7.812500e-03
  %1008 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %26, float %1006, float %1007, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1009 = extractvalue %dx.types.ResRet.f32 %1008, 2
  %1010 = extractvalue %dx.types.ResRet.f32 %1008, 3
  %1011 = fmul fast float %1009, %831
  %1012 = fmul fast float %1009, %832
  %1013 = fmul fast float %1009, %833
  %1014 = fadd fast float %1011, %1010
  %1015 = fadd fast float %1012, %1010
  %1016 = fadd fast float %1013, %1010
  %1017 = call float @dx.op.binary.f32(i32 35, float %1015, float %1016)  ; FMax(a,b)
  %1018 = call float @dx.op.binary.f32(i32 35, float %1014, float %1017)  ; FMax(a,b)
  %1019 = fsub fast float 1.000000e+00, %1018
  %1020 = call float @dx.op.dot3.f32(i32 55, float %807, float %808, float %809, float %802, float %803, float %804)  ; Dot3(ax,ay,az,bx,by,bz)
  %1021 = fmul fast float %1020, 2.000000e+00
  %1022 = fmul fast float %1021, %802
  %1023 = fmul fast float %1021, %803
  %1024 = fmul fast float %1021, %804
  %1025 = fsub fast float %807, %1022
  %1026 = fsub fast float %808, %1023
  %1027 = fsub fast float %809, %1024
  br i1 %886, label %1028, label %1035

; <label>:1028                                    ; preds = %1000
  %1029 = fmul fast float %1026, 0xBFDF454380000000
  %1030 = fmul fast float %1027, 0x3FDF454380000000
  %1031 = fmul fast float %1025, 0xBFDF454380000000
  %1032 = call float @dx.op.dot4.f32(i32 56, float %780, float %779, float %778, float %777, float 0x3FD20DD760000000, float %1029, float %1030, float %1031)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1033 = call float @dx.op.dot4.f32(i32 56, float %770, float %771, float %772, float %773, float 0x3FD20DD760000000, float %1029, float %1030, float %1031)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1034 = call float @dx.op.dot4.f32(i32 56, float %766, float %767, float %768, float %769, float 0x3FD20DD760000000, float %1029, float %1030, float %1031)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %1035

; <label>:1035                                    ; preds = %1028, %1000
  %1036 = phi float [ %1032, %1028 ], [ %780, %1000 ]
  %1037 = phi float [ %1033, %1028 ], [ %779, %1000 ]
  %1038 = phi float [ %1034, %1028 ], [ %778, %1000 ]
  %1039 = call float @dx.op.dot3.f32(i32 55, float %1036, float %1037, float %1038, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %1041 = extractvalue %dx.types.CBufRet.f32 %1040, 2
  %1042 = extractvalue %dx.types.CBufRet.f32 %1040, 3
  %1043 = fmul fast float %1041, %61
  %1044 = fmul fast float %1042, %62
  %1045 = fptoui float %1043 to i32
  %1046 = fptoui float %1044 to i32
  %1047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1048 = extractvalue %dx.types.CBufRet.f32 %1047, 0
  %1049 = extractvalue %dx.types.CBufRet.f32 %1047, 2
  %1050 = extractvalue %dx.types.CBufRet.f32 %1047, 3
  %1051 = fadd fast float %54, -4.000000e+00
  %1052 = call float @dx.op.binary.f32(i32 35, float %1051, float 0.000000e+00)  ; FMax(a,b)
  %1053 = fadd fast float %1052, %1048
  %1054 = fmul fast float %1053, %1049
  %1055 = call float @dx.op.unary.f32(i32 23, float %1054)  ; Log(value)
  %1056 = fmul fast float %1055, %1050
  %1057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1058 = extractvalue %dx.types.CBufRet.f32 %1057, 2
  %1059 = fmul fast float %1056, %1058
  %1060 = call float @dx.op.unary.f32(i32 7, float %1059)  ; Saturate(value)
  %1061 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1062 = extractvalue %dx.types.CBufRet.i32 %1061, 1
  %1063 = add i32 %1062, -1
  %1064 = uitofp i32 %1062 to float
  %1065 = fmul fast float %1064, %1060
  %1066 = fptoui float %1065 to i32
  %1067 = call i32 @dx.op.binary.i32(i32 40, i32 %1066, i32 %1063)  ; UMin(a,b)
  %1068 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %1069 = extractvalue %dx.types.CBufRet.i32 %1068, 2
  %1070 = extractvalue %dx.types.CBufRet.i32 %1068, 3
  %1071 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1046, i32 %1069, i32 %1045)  ; UMad(a,b,c)
  %1072 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1067, i32 %1070, i32 %1071)  ; UMad(a,b,c)
  %1073 = call float @dx.op.binary.f32(i32 35, float %54, float 0.000000e+00)  ; FMax(a,b)
  %1074 = fptoui float %1073 to i32
  %1075 = lshr i32 %1074, 5
  %1076 = call i32 @dx.op.binary.i32(i32 40, i32 %1075, i32 8191)  ; UMin(a,b)
  %1077 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1078 = extractvalue %dx.types.CBufRet.i32 %1077, 2
  %1079 = add nsw i32 %1078, -1
  %1080 = call i32 @dx.op.binary.i32(i32 37, i32 %1079, i32 0)  ; IMax(a,b)
  %1081 = shl i32 %1076, 2
  %1082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1081, i32 undef)  ; BufferLoad(srv,index,wot)
  %1083 = extractvalue %dx.types.ResRet.i32 %1082, 0
  %1084 = lshr i32 %1083, 16
  %1085 = and i32 %1083, 65535
  %1086 = lshr i32 %1083, 21
  %1087 = lshr i32 %1085, 5
  %1088 = call i32 @dx.op.binary.i32(i32 40, i32 %1087, i32 %1080)  ; UMin(a,b)
  %1089 = icmp ugt i32 %1086, %1088
  br i1 %1089, label %1452, label %1090

; <label>:1090                                    ; preds = %1035
  br label %1091

; <label>:1091                                    ; preds = %1444, %1090
  %1092 = phi float [ %1445, %1444 ], [ 0.000000e+00, %1090 ]
  %1093 = phi float [ %1446, %1444 ], [ 0.000000e+00, %1090 ]
  %1094 = phi float [ %1447, %1444 ], [ 0.000000e+00, %1090 ]
  %1095 = phi float [ %1448, %1444 ], [ 1.000000e+00, %1090 ]
  %1096 = phi i32 [ %1449, %1444 ], [ %1086, %1090 ]
  %1097 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1098 = extractvalue %dx.types.CBufRet.i32 %1097, 2
  %1099 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1072, i32 %1098, i32 %1096)  ; UMad(a,b,c)
  %1100 = shl i32 %1099, 2
  %1101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1100, i32 undef)  ; BufferLoad(srv,index,wot)
  %1102 = extractvalue %dx.types.ResRet.i32 %1101, 0
  %1103 = shl i32 %1096, 5
  %1104 = sub nsw i32 %1084, %1103
  %1105 = call i32 @dx.op.binary.i32(i32 37, i32 %1104, i32 0)  ; IMax(a,b)
  %1106 = call i32 @dx.op.binary.i32(i32 38, i32 %1105, i32 31)  ; IMin(a,b)
  %1107 = sub nsw i32 1, %1084
  %1108 = add nsw i32 %1107, %1085
  %1109 = call i32 @dx.op.binary.i32(i32 37, i32 %1108, i32 0)  ; IMax(a,b)
  %1110 = call i32 @dx.op.binary.i32(i32 38, i32 %1109, i32 32)  ; IMin(a,b)
  %1111 = and i32 %1110, 31
  %1112 = shl i32 -1, %1111
  %1113 = xor i32 %1112, -1
  %1114 = and i32 %1106, 31
  %1115 = shl i32 %1113, %1114
  %1116 = icmp eq i32 %1110, 32
  %1117 = select i1 %1116, i32 -1, i32 %1115
  %1118 = and i32 %1117, %1102
  %1119 = icmp eq i32 %1118, 0
  br i1 %1119, label %1444, label %1120

; <label>:1120                                    ; preds = %1091
  br label %1121

; <label>:1121                                    ; preds = %1227, %1120
  %1122 = phi float [ %1228, %1227 ], [ %1092, %1120 ]
  %1123 = phi float [ %1229, %1227 ], [ %1093, %1120 ]
  %1124 = phi float [ %1230, %1227 ], [ %1094, %1120 ]
  %1125 = phi float [ %1231, %1227 ], [ %1095, %1120 ]
  %1126 = phi i32 [ %1131, %1227 ], [ %1118, %1120 ]
  %1127 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1126)  ; FirstbitLo(value)
  %1128 = add i32 %1127, %1103
  %1129 = and i32 %1127, 31
  %1130 = shl i32 1, %1129
  %1131 = xor i32 %1130, %1126
  %1132 = mul i32 %1128, 72
  %1133 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1132, i32 undef)  ; BufferLoad(srv,index,wot)
  %1134 = extractvalue %dx.types.ResRet.f32 %1133, 0
  %1135 = extractvalue %dx.types.ResRet.f32 %1133, 1
  %1136 = extractvalue %dx.types.ResRet.f32 %1133, 2
  %1137 = add i32 %1132, 12
  %1138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1137, i32 undef)  ; BufferLoad(srv,index,wot)
  %1139 = extractvalue %dx.types.ResRet.i32 %1138, 0
  %1140 = add i32 %1132, 16
  %1141 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1140, i32 undef)  ; BufferLoad(srv,index,wot)
  %1142 = extractvalue %dx.types.ResRet.f32 %1141, 0
  %1143 = extractvalue %dx.types.ResRet.f32 %1141, 1
  %1144 = extractvalue %dx.types.ResRet.f32 %1141, 2
  %1145 = add i32 %1132, 28
  %1146 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1145, i32 undef)  ; BufferLoad(srv,index,wot)
  %1147 = extractvalue %dx.types.ResRet.f32 %1146, 0
  %1148 = add i32 %1132, 32
  %1149 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1148, i32 undef)  ; BufferLoad(srv,index,wot)
  %1150 = extractvalue %dx.types.ResRet.f32 %1149, 0
  %1151 = extractvalue %dx.types.ResRet.f32 %1149, 1
  %1152 = extractvalue %dx.types.ResRet.f32 %1149, 2
  %1153 = extractvalue %dx.types.ResRet.f32 %1149, 3
  %1154 = add i32 %1132, 48
  %1155 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1156 = extractvalue %dx.types.ResRet.f32 %1155, 0
  %1157 = extractvalue %dx.types.ResRet.f32 %1155, 1
  %1158 = add i32 %1132, 56
  %1159 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1158, i32 undef)  ; BufferLoad(srv,index,wot)
  %1160 = extractvalue %dx.types.ResRet.f32 %1159, 0
  %1161 = extractvalue %dx.types.ResRet.f32 %1159, 1
  %1162 = add i32 %1132, 64
  %1163 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1162, i32 undef)  ; BufferLoad(srv,index,wot)
  %1164 = extractvalue %dx.types.ResRet.f32 %1163, 0
  %1165 = extractvalue %dx.types.ResRet.f32 %1163, 1
  %1166 = mul i32 %1128, 60
  %1167 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1168 = extractvalue %dx.types.ResRet.f32 %1167, 0
  %1169 = extractvalue %dx.types.ResRet.f32 %1167, 1
  %1170 = extractvalue %dx.types.ResRet.f32 %1167, 2
  %1171 = add i32 %1166, 12
  %1172 = add i32 %1166, 48
  %1173 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.f32 %1173, 0
  %1175 = extractvalue %dx.types.ResRet.f32 %1173, 1
  %1176 = extractvalue %dx.types.ResRet.f32 %1173, 2
  %1177 = and i32 %1139, 32767
  %1178 = bitcast float %1134 to i32
  %1179 = icmp eq i32 %1178, -1
  %1180 = bitcast float %1135 to i32
  %1181 = and i32 %1139, 32768
  %1182 = icmp ne i32 %1181, 0
  %1183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1184 = extractvalue %dx.types.CBufRet.f32 %1183, 0
  %1185 = extractvalue %dx.types.CBufRet.f32 %1183, 1
  %1186 = extractvalue %dx.types.CBufRet.f32 %1183, 2
  %1187 = fsub fast float %1168, %1184
  %1188 = fsub fast float %1169, %1185
  %1189 = fsub fast float %1170, %1186
  %1190 = fsub fast float %96, %1187
  %1191 = fsub fast float %97, %1188
  %1192 = fsub fast float %98, %1189
  %1193 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1171, i32 undef)  ; BufferLoad(srv,index,wot)
  %1194 = extractvalue %dx.types.ResRet.f32 %1193, 0
  %1195 = extractvalue %dx.types.ResRet.f32 %1193, 1
  %1196 = extractvalue %dx.types.ResRet.f32 %1193, 2
  %1197 = call float @dx.op.dot3.f32(i32 55, float %1190, float %1191, float %1192, float %1194, float %1195, float %1196)  ; Dot3(ax,ay,az,bx,by,bz)
  %1198 = add i32 %1166, 24
  %1199 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1200 = extractvalue %dx.types.ResRet.f32 %1199, 0
  %1201 = extractvalue %dx.types.ResRet.f32 %1199, 1
  %1202 = extractvalue %dx.types.ResRet.f32 %1199, 2
  %1203 = call float @dx.op.dot3.f32(i32 55, float %1190, float %1191, float %1192, float %1200, float %1201, float %1202)  ; Dot3(ax,ay,az,bx,by,bz)
  %1204 = add i32 %1166, 36
  %1205 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1204, i32 undef)  ; BufferLoad(srv,index,wot)
  %1206 = extractvalue %dx.types.ResRet.f32 %1205, 0
  %1207 = extractvalue %dx.types.ResRet.f32 %1205, 1
  %1208 = extractvalue %dx.types.ResRet.f32 %1205, 2
  %1209 = call float @dx.op.dot3.f32(i32 55, float %1190, float %1191, float %1192, float %1206, float %1207, float %1208)  ; Dot3(ax,ay,az,bx,by,bz)
  %1210 = call float @dx.op.unary.f32(i32 6, float %1197)  ; FAbs(value)
  %1211 = call float @dx.op.unary.f32(i32 6, float %1203)  ; FAbs(value)
  %1212 = call float @dx.op.unary.f32(i32 6, float %1209)  ; FAbs(value)
  %1213 = fsub fast float %1174, %1210
  %1214 = fsub fast float %1175, %1211
  %1215 = fsub fast float %1176, %1212
  %1216 = fmul fast float %1213, %1142
  %1217 = fmul fast float %1214, %1143
  %1218 = fmul fast float %1215, %1144
  %1219 = call float @dx.op.binary.f32(i32 36, float %1217, float %1218)  ; FMin(a,b)
  %1220 = call float @dx.op.binary.f32(i32 36, float %1216, float %1219)  ; FMin(a,b)
  %1221 = call float @dx.op.unary.f32(i32 7, float %1220)  ; Saturate(value)
  %1222 = call float @dx.op.binary.f32(i32 36, float %1125, float %1221)  ; FMin(a,b)
  %1223 = uitofp i1 %1182 to float
  %1224 = fsub fast float 1.000000e+00, %1223
  %1225 = fmul fast float %1222, %1224
  %1226 = fcmp fast ogt float %1225, 0.000000e+00
  br i1 %1226, label %1233, label %1227

; <label>:1227                                    ; preds = %1375, %1121
  %1228 = phi float [ %1439, %1375 ], [ %1122, %1121 ]
  %1229 = phi float [ %1440, %1375 ], [ %1123, %1121 ]
  %1230 = phi float [ %1441, %1375 ], [ %1124, %1121 ]
  %1231 = phi float [ %1442, %1375 ], [ %1125, %1121 ]
  %1232 = icmp eq i32 %1126, %1130
  br i1 %1232, label %1443, label %1121

; <label>:1233                                    ; preds = %1121
  br i1 %1179, label %1291, label %1234

; <label>:1234                                    ; preds = %1233
  %1235 = fsub fast float -0.000000e+00, %1194
  %1236 = fsub fast float -0.000000e+00, %1195
  %1237 = fsub fast float -0.000000e+00, %1196
  %1238 = call float @dx.op.dot3.f32(i32 55, float %1025, float %1026, float %1027, float %1235, float %1236, float %1237)  ; Dot3(ax,ay,az,bx,by,bz)
  %1239 = fsub fast float -0.000000e+00, %1238
  %1240 = call float @dx.op.dot3.f32(i32 55, float %1190, float %1191, float %1192, float %1235, float %1236, float %1237)  ; Dot3(ax,ay,az,bx,by,bz)
  %1241 = fadd fast float %1240, %1157
  %1242 = fadd fast float %1156, %1240
  %1243 = fsub fast float -0.000000e+00, %1242
  %1244 = fcmp ogt float %1238, -0.000000e+00
  %1245 = select i1 %1244, float %1243, float %1241
  %1246 = call float @dx.op.unary.f32(i32 6, float %1239)  ; FAbs(value)
  %1247 = fdiv fast float 1.000000e+00, %1246
  %1248 = fmul fast float %1245, %1247
  %1249 = call float @dx.op.binary.f32(i32 35, float %1248, float 0.000000e+00)  ; FMax(a,b)
  %1250 = fsub fast float -0.000000e+00, %1200
  %1251 = fsub fast float -0.000000e+00, %1201
  %1252 = fsub fast float -0.000000e+00, %1202
  %1253 = call float @dx.op.dot3.f32(i32 55, float %1025, float %1026, float %1027, float %1250, float %1251, float %1252)  ; Dot3(ax,ay,az,bx,by,bz)
  %1254 = fsub fast float -0.000000e+00, %1253
  %1255 = call float @dx.op.dot3.f32(i32 55, float %1190, float %1191, float %1192, float %1250, float %1251, float %1252)  ; Dot3(ax,ay,az,bx,by,bz)
  %1256 = fadd fast float %1255, %1161
  %1257 = fadd fast float %1160, %1255
  %1258 = fsub fast float -0.000000e+00, %1257
  %1259 = fcmp ogt float %1253, -0.000000e+00
  %1260 = select i1 %1259, float %1258, float %1256
  %1261 = call float @dx.op.unary.f32(i32 6, float %1254)  ; FAbs(value)
  %1262 = fdiv fast float 1.000000e+00, %1261
  %1263 = fmul fast float %1260, %1262
  %1264 = call float @dx.op.binary.f32(i32 35, float %1263, float 0.000000e+00)  ; FMax(a,b)
  %1265 = fsub fast float -0.000000e+00, %1206
  %1266 = fsub fast float -0.000000e+00, %1207
  %1267 = fsub fast float -0.000000e+00, %1208
  %1268 = call float @dx.op.dot3.f32(i32 55, float %1025, float %1026, float %1027, float %1265, float %1266, float %1267)  ; Dot3(ax,ay,az,bx,by,bz)
  %1269 = fsub fast float -0.000000e+00, %1268
  %1270 = call float @dx.op.dot3.f32(i32 55, float %1190, float %1191, float %1192, float %1265, float %1266, float %1267)  ; Dot3(ax,ay,az,bx,by,bz)
  %1271 = fadd fast float %1270, %1165
  %1272 = fadd fast float %1164, %1270
  %1273 = fsub fast float -0.000000e+00, %1272
  %1274 = fcmp ogt float %1268, -0.000000e+00
  %1275 = select i1 %1274, float %1273, float %1271
  %1276 = call float @dx.op.unary.f32(i32 6, float %1269)  ; FAbs(value)
  %1277 = fdiv fast float 1.000000e+00, %1276
  %1278 = fmul fast float %1275, %1277
  %1279 = call float @dx.op.binary.f32(i32 35, float %1278, float 0.000000e+00)  ; FMax(a,b)
  %1280 = call float @dx.op.binary.f32(i32 36, float %1264, float %1279)  ; FMin(a,b)
  %1281 = call float @dx.op.binary.f32(i32 36, float %1249, float %1280)  ; FMin(a,b)
  %1282 = fmul fast float %1281, %1025
  %1283 = fmul fast float %1281, %1026
  %1284 = fmul fast float %1281, %1027
  %1285 = fadd fast float %1282, %96
  %1286 = fadd fast float %1283, %97
  %1287 = fadd fast float %1284, %98
  %1288 = fsub fast float %1285, %1134
  %1289 = fsub fast float %1286, %1135
  %1290 = fsub fast float %1287, %1136
  br label %1298

; <label>:1291                                    ; preds = %1233
  %1292 = fmul fast float %1025, 8.096000e+03
  %1293 = fmul fast float %1026, 8.096000e+03
  %1294 = fmul fast float %1027, 8.096000e+03
  %1295 = fadd fast float %1292, %96
  %1296 = fadd fast float %1293, %97
  %1297 = fadd fast float %1294, %98
  br label %1298

; <label>:1298                                    ; preds = %1291, %1234
  %1299 = phi float [ %1025, %1291 ], [ %1288, %1234 ]
  %1300 = phi float [ %1026, %1291 ], [ %1289, %1234 ]
  %1301 = phi float [ %1027, %1291 ], [ %1290, %1234 ]
  %1302 = phi float [ %1295, %1291 ], [ %1285, %1234 ]
  %1303 = phi float [ %1296, %1291 ], [ %1286, %1234 ]
  %1304 = phi float [ %1297, %1291 ], [ %1287, %1234 ]
  %1305 = fcmp fast olt float %1153, 1.000000e+00
  br i1 %1305, label %1306, label %1337, !dx.controlflow.hints !77

; <label>:1306                                    ; preds = %1298
  %1307 = fmul fast float %1301, %1151
  %1308 = fmul fast float %1300, %1152
  %1309 = fsub fast float %1307, %1308
  %1310 = fmul fast float %1299, %1152
  %1311 = fmul fast float %1301, %1150
  %1312 = fsub fast float %1310, %1311
  %1313 = fmul fast float %1300, %1150
  %1314 = fmul fast float %1299, %1151
  %1315 = fsub fast float %1313, %1314
  %1316 = fmul fast float %1309, 2.000000e+00
  %1317 = fmul fast float %1312, 2.000000e+00
  %1318 = fmul fast float %1315, 2.000000e+00
  %1319 = fmul fast float %1316, %1153
  %1320 = fmul fast float %1317, %1153
  %1321 = fmul fast float %1318, %1153
  %1322 = fmul fast float %1318, %1151
  %1323 = fmul fast float %1317, %1152
  %1324 = fmul fast float %1316, %1152
  %1325 = fmul fast float %1318, %1150
  %1326 = fmul fast float %1317, %1150
  %1327 = fmul fast float %1316, %1151
  %1328 = fadd fast float %1322, %1299
  %1329 = fadd fast float %1328, %1319
  %1330 = fsub fast float %1329, %1323
  %1331 = fsub fast float %1300, %1325
  %1332 = fadd fast float %1331, %1320
  %1333 = fadd fast float %1332, %1324
  %1334 = fadd fast float %1321, %1301
  %1335 = fsub fast float %1334, %1327
  %1336 = fadd fast float %1335, %1326
  br label %1337

; <label>:1337                                    ; preds = %1306, %1298
  %1338 = phi float [ %1330, %1306 ], [ %1299, %1298 ]
  %1339 = phi float [ %1333, %1306 ], [ %1300, %1298 ]
  %1340 = phi float [ %1336, %1306 ], [ %1301, %1298 ]
  br i1 %1179, label %1372, label %1341

; <label>:1341                                    ; preds = %1337
  %1342 = fmul fast float %834, 0x400187C840000000
  %1343 = fadd fast float %1342, 0xC00EFC2120000000
  %1344 = fmul fast float %1343, %834
  %1345 = fadd fast float %1344, 0x3FE5D16340000000
  %1346 = fmul fast float %1345, %834
  %1347 = fadd fast float %1346, 1.000000e+00
  %1348 = call float @dx.op.unary.f32(i32 7, float %1347)  ; Saturate(value)
  %1349 = fsub fast float %1302, %96
  %1350 = fsub fast float %1303, %97
  %1351 = fsub fast float %1304, %98
  %1352 = fsub fast float %1302, %1134
  %1353 = fsub fast float %1303, %1135
  %1354 = fsub fast float %1304, %1136
  %1355 = call float @dx.op.dot3.f32(i32 55, float %1349, float %1350, float %1351, float %1349, float %1350, float %1351)  ; Dot3(ax,ay,az,bx,by,bz)
  %1356 = call float @dx.op.dot3.f32(i32 55, float %1352, float %1353, float %1354, float %1352, float %1353, float %1354)  ; Dot3(ax,ay,az,bx,by,bz)
  %1357 = fadd fast float %1356, 0x3EE4F8B580000000
  %1358 = fdiv fast float %1355, %1357
  %1359 = bitcast float %1358 to i32
  %1360 = ashr i32 %1359, 1
  %1361 = add nsw i32 %1360, 532487669
  %1362 = bitcast i32 %1361 to float
  %1363 = fmul fast float %1362, %1348
  %1364 = call float @dx.op.unary.f32(i32 7, float %1363)  ; Saturate(value)
  %1365 = fmul fast float %1364, 0x4009981AE0000000
  %1366 = fsub fast float 0x40111BBD80000000, %1365
  %1367 = fmul fast float %1366, %1364
  %1368 = fadd fast float %1367, 0xC0009F6020000000
  %1369 = fmul fast float %1368, %1364
  %1370 = fadd fast float %1369, 1.000000e+00
  %1371 = call float @dx.op.unary.f32(i32 7, float %1370)  ; Saturate(value)
  br label %1375

; <label>:1372                                    ; preds = %1337
  %1373 = icmp ne i32 %1180, -1
  %1374 = zext i1 %1373 to i32
  br label %1375

; <label>:1375                                    ; preds = %1372, %1341
  %1376 = phi float [ %834, %1372 ], [ %1371, %1341 ]
  %1377 = phi i32 [ %1374, %1372 ], [ 0, %1341 ]
  %1378 = fmul float %1376, 5.000000e+00
  %1379 = fsub float 5.000000e+00, %1378
  %1380 = icmp ne i32 %1377, 0
  %1381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %1382 = extractvalue %dx.types.CBufRet.f32 %1381, 3
  %1383 = fadd fast float %1382, %1379
  %1384 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1383)  ; FMax(a,b)
  %1385 = call float @dx.op.unary.f32(i32 6, float %1338)  ; FAbs(value)
  %1386 = call float @dx.op.unary.f32(i32 6, float %1339)  ; FAbs(value)
  %1387 = fadd fast float %1386, %1385
  %1388 = call float @dx.op.unary.f32(i32 6, float %1340)  ; FAbs(value)
  %1389 = fadd fast float %1387, %1388
  %1390 = fcmp fast oeq float %1389, 0.000000e+00
  %1391 = fdiv fast float 1.000000e+00, %1389
  %1392 = select i1 %1390, float 1.000000e+00, float %1391
  %1393 = fmul fast float %1392, %1338
  %1394 = fmul fast float %1392, %1339
  %1395 = call float @dx.op.unary.f32(i32 6, float %1394)  ; FAbs(value)
  %1396 = call float @dx.op.unary.f32(i32 6, float %1393)  ; FAbs(value)
  %1397 = fsub fast float 1.000000e+00, %1395
  %1398 = fsub fast float 1.000000e+00, %1396
  %1399 = fcmp fast oge float %1393, 0.000000e+00
  %1400 = fcmp fast oge float %1394, 0.000000e+00
  %1401 = select i1 %1399, float 1.000000e+00, float -1.000000e+00
  %1402 = select i1 %1400, float 1.000000e+00, float -1.000000e+00
  %1403 = fcmp fast ole float %1340, 0.000000e+00
  %1404 = fmul fast float %1401, %1397
  %1405 = fmul fast float %1402, %1398
  %1406 = select i1 %1403, float %1404, float %1393
  %1407 = select i1 %1403, float %1405, float %1394
  %1408 = fmul fast float %1406, 5.000000e-01
  %1409 = fmul fast float %1407, 5.000000e-01
  %1410 = fadd fast float %1408, 5.000000e-01
  %1411 = fadd fast float %1409, 5.000000e-01
  %1412 = uitofp i32 %1177 to float
  %1413 = call float @dx.op.binary.f32(i32 36, float %1384, float 3.000000e+00)  ; FMin(a,b)
  %1414 = fadd fast float %1413, 2.000000e+00
  %1415 = call float @dx.op.unary.f32(i32 21, float %1414)  ; Exp(value)
  %1416 = extractvalue %dx.types.CBufRet.f32 %1381, 1
  %1417 = fmul fast float %1416, %1415
  %1418 = fmul fast float %1417, 2.000000e+00
  %1419 = fsub fast float 1.000000e+00, %1418
  %1420 = fmul fast float %1410, %1419
  %1421 = fmul fast float %1411, %1419
  %1422 = fadd fast float %1420, %1417
  %1423 = fadd fast float %1421, %1417
  %1424 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %25, float %1422, float %1423, float %1412, float undef, i32 0, i32 0, i32 undef, float %1384)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1425 = extractvalue %dx.types.ResRet.f32 %1424, 0
  %1426 = extractvalue %dx.types.ResRet.f32 %1424, 1
  %1427 = extractvalue %dx.types.ResRet.f32 %1424, 2
  %1428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1429 = extractvalue %dx.types.CBufRet.f32 %1428, 3
  %1430 = fmul fast float %1429, %1147
  %1431 = call float @dx.op.binary.f32(i32 36, float %1039, float %1430)  ; FMin(a,b)
  %1432 = select i1 %1380, float %1431, float %1430
  %1433 = fmul fast float %1425, %1225
  %1434 = fmul fast float %1433, %1432
  %1435 = fmul fast float %1426, %1225
  %1436 = fmul fast float %1435, %1432
  %1437 = fmul fast float %1427, %1225
  %1438 = fmul fast float %1437, %1432
  %1439 = fadd fast float %1434, %1122
  %1440 = fadd fast float %1436, %1123
  %1441 = fadd fast float %1438, %1124
  %1442 = fsub fast float %1125, %1225
  br label %1227

; <label>:1443                                    ; preds = %1227
  br label %1444

; <label>:1444                                    ; preds = %1443, %1091
  %1445 = phi float [ %1092, %1091 ], [ %1228, %1443 ]
  %1446 = phi float [ %1093, %1091 ], [ %1229, %1443 ]
  %1447 = phi float [ %1094, %1091 ], [ %1230, %1443 ]
  %1448 = phi float [ %1095, %1091 ], [ %1231, %1443 ]
  %1449 = add i32 %1096, 1
  %1450 = icmp ugt i32 %1449, %1088
  br i1 %1450, label %1451, label %1091, !llvm.loop !78

; <label>:1451                                    ; preds = %1444
  br label %1452

; <label>:1452                                    ; preds = %1451, %1035
  %1453 = phi float [ 0.000000e+00, %1035 ], [ %1445, %1451 ]
  %1454 = phi float [ 0.000000e+00, %1035 ], [ %1446, %1451 ]
  %1455 = phi float [ 0.000000e+00, %1035 ], [ %1447, %1451 ]
  %1456 = call float @dx.op.dot3.f32(i32 55, float %1453, float %1454, float %1455, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1457 = select i1 %131, float 0.000000e+00, float %1453
  %1458 = select i1 %131, float %1456, float %1454
  %1459 = select i1 %131, float 0.000000e+00, float %1455
  %1460 = fmul fast float %1457, %1014
  %1461 = fmul fast float %1458, %1015
  %1462 = fmul fast float %1459, %1016
  %1463 = call float @dx.op.binary.f32(i32 35, float %1460, float 0.000000e+00)  ; FMax(a,b)
  %1464 = call float @dx.op.binary.f32(i32 35, float %1461, float 0.000000e+00)  ; FMax(a,b)
  %1465 = call float @dx.op.binary.f32(i32 35, float %1462, float 0.000000e+00)  ; FMax(a,b)
  %1466 = fadd fast float %1463, %1001
  %1467 = fadd fast float %1464, %1002
  %1468 = fadd fast float %1465, %1003
  %1469 = fmul fast float %1466, %610
  %1470 = fmul fast float %1467, %610
  %1471 = fmul fast float %1468, %610
  %1472 = fsub fast float 1.000000e+00, %834
  %1473 = call float @dx.op.binary.f32(i32 35, float %1472, float 0x3F847AE140000000)  ; FMax(a,b)
  %1474 = fmul fast float %1473, %1473
  %1475 = fmul fast float %1474, %1474
  %1476 = fmul fast float %1475, 0xC00A935000000000
  %1477 = call float @dx.op.unary.f32(i32 21, float %1476)  ; Exp(value)
  %1478 = fmul fast float %803, 0x3FDF454380000000
  %1479 = fmul fast float %804, 0xBFDF454380000000
  %1480 = fmul fast float %802, 0x3FDF454380000000
  %1481 = call float @dx.op.dot4.f32(i32 56, float %780, float %779, float %778, float %777, float 0x3FD20DD760000000, float %1478, float %1479, float %1480)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1482 = call float @dx.op.dot4.f32(i32 56, float %770, float %771, float %772, float %773, float 0x3FD20DD760000000, float %1478, float %1479, float %1480)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1483 = call float @dx.op.dot4.f32(i32 56, float %766, float %767, float %768, float %769, float 0x3FD20DD760000000, float %1478, float %1479, float %1480)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1484 = fsub fast float 1.000000e+00, %1477
  %1485 = fmul fast float %1484, %727
  %1486 = fmul fast float %1485, %1481
  %1487 = fmul fast float %1484, %728
  %1488 = fmul fast float %1487, %1482
  %1489 = fmul fast float %1484, %729
  %1490 = fmul fast float %1489, %1483
  %1491 = fadd fast float %1486, %895
  %1492 = fadd fast float %1488, %896
  %1493 = fadd fast float %1490, %897
  %1494 = fadd fast float %727, -1.000000e+00
  %1495 = fadd fast float %728, -1.000000e+00
  %1496 = fadd fast float %729, -1.000000e+00
  %1497 = fmul fast float %1494, %610
  %1498 = fmul fast float %1495, %610
  %1499 = fmul fast float %1496, %610
  %1500 = fadd fast float %1497, 1.000000e+00
  %1501 = fadd fast float %1498, 1.000000e+00
  %1502 = fadd fast float %1499, 1.000000e+00
  %1503 = call float @dx.op.dot3.f32(i32 55, float %1500, float %1501, float %1502, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1504 = fsub fast float 1.000000e+00, %1503
  %1505 = fmul fast float %859, %847
  %1506 = fsub fast float -0.000000e+00, %847
  %1507 = call float @dx.op.unary.f32(i32 7, float %1506)  ; Saturate(value)
  %1508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1509 = extractvalue %dx.types.CBufRet.f32 %1508, 3
  %1510 = fmul fast float %1509, %1507
  %1511 = fadd fast float %1510, %1505
  %1512 = and i32 %151, 1048576
  %1513 = icmp eq i32 %1512, 0
  br i1 %1513, label %1598, label %1514, !dx.controlflow.hints !80

; <label>:1514                                    ; preds = %1452
  %1515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1516 = extractvalue %dx.types.CBufRet.f32 %1515, 2
  %1517 = extractvalue %dx.types.CBufRet.f32 %1515, 3
  %1518 = fmul fast float %1516, %61
  %1519 = fmul fast float %1517, %62
  %1520 = call float @dx.op.unary.f32(i32 7, float %1518)  ; Saturate(value)
  %1521 = call float @dx.op.unary.f32(i32 7, float %1519)  ; Saturate(value)
  %1522 = select i1 %883, i32 2, i32 0
  %1523 = or i32 %1522, 1
  %1524 = uitofp i32 %1523 to float
  %1525 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1520, float %1521, float %1524, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1526 = extractvalue %dx.types.ResRet.f32 %1525, 0
  %1527 = extractvalue %dx.types.ResRet.f32 %1525, 1
  %1528 = extractvalue %dx.types.ResRet.f32 %1525, 2
  %1529 = extractvalue %dx.types.ResRet.f32 %1525, 3
  %1530 = add nuw nsw i32 %1522, 2
  %1531 = uitofp i32 %1530 to float
  %1532 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1520, float %1521, float %1531, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1533 = extractvalue %dx.types.ResRet.f32 %1532, 0
  %1534 = extractvalue %dx.types.ResRet.f32 %1532, 1
  %1535 = extractvalue %dx.types.ResRet.f32 %1532, 2
  %1536 = extractvalue %dx.types.ResRet.f32 %1532, 3
  %1537 = call float @dx.op.binary.f32(i32 35, float %1527, float %1528)  ; FMax(a,b)
  %1538 = call float @dx.op.binary.f32(i32 35, float %1526, float %1537)  ; FMax(a,b)
  %1539 = call float @dx.op.binary.f32(i32 35, float %1538, float %1529)  ; FMax(a,b)
  %1540 = call float @dx.op.binary.f32(i32 36, float %1534, float %1535)  ; FMin(a,b)
  %1541 = call float @dx.op.binary.f32(i32 36, float %1533, float %1540)  ; FMin(a,b)
  %1542 = call float @dx.op.binary.f32(i32 36, float %1541, float %1536)  ; FMin(a,b)
  %1543 = fmul fast float %1539, 2.550000e+02
  %1544 = fadd fast float %1543, 0x3F70101020000000
  %1545 = fptoui float %1544 to i32
  %1546 = fmul fast float %1542, 2.550000e+02
  %1547 = fadd fast float %1546, 0x3F70101020000000
  %1548 = fptoui float %1547 to i32
  %1549 = icmp ult i32 %1545, %1548
  br i1 %1549, label %1550, label %1591

; <label>:1550                                    ; preds = %1514
  %1551 = fcmp fast ogt float %53, 9.843750e-01
  %1552 = select i1 %1551, float -4.000000e+00, float %1051
  %1553 = call float @dx.op.binary.f32(i32 35, float %1552, float 0.000000e+00)  ; FMax(a,b)
  %1554 = fadd fast float %1048, %1553
  %1555 = fmul fast float %1554, %1049
  %1556 = call float @dx.op.unary.f32(i32 23, float %1555)  ; Log(value)
  %1557 = fmul fast float %1050, %1556
  %1558 = fmul fast float %1557, %1058
  %1559 = call float @dx.op.unary.f32(i32 7, float %1558)  ; Saturate(value)
  %1560 = uitofp i32 %1545 to float
  %1561 = uitofp i32 %1548 to float
  %1562 = fadd fast float %1560, 5.000000e-01
  %1563 = fadd fast float %1561, 5.000000e-01
  %1564 = fmul fast float %1058, %1562
  %1565 = fmul fast float %1058, %1563
  %1566 = fadd fast float %1564, 0x3F0FFB4800000000
  %1567 = fadd fast float %1565, 0xBF0FFB4800000000
  %1568 = call float @dx.op.binary.f32(i32 35, float %1559, float %1566)  ; FMax(a,b)
  %1569 = call float @dx.op.binary.f32(i32 36, float %1568, float %1567)  ; FMin(a,b)
  %1570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1571 = extractvalue %dx.types.CBufRet.f32 %1570, 1
  %1572 = extractvalue %dx.types.CBufRet.f32 %1570, 2
  %1573 = extractvalue %dx.types.CBufRet.f32 %1570, 0
  %1574 = select i1 %883, float %1573, float 0.000000e+00
  %1575 = fmul fast float %1571, %1569
  %1576 = fadd fast float %1574, %1575
  %1577 = fadd fast float %1574, %1572
  %1578 = fsub fast float %1571, %1572
  %1579 = fadd fast float %1578, %1574
  %1580 = call float @dx.op.binary.f32(i32 35, float %1576, float %1577)  ; FMax(a,b)
  %1581 = call float @dx.op.binary.f32(i32 36, float %1580, float %1579)  ; FMin(a,b)
  %1582 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %25, float %1520, float %1521, float %1581, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1583 = extractvalue %dx.types.ResRet.f32 %1582, 0
  %1584 = extractvalue %dx.types.ResRet.f32 %1582, 1
  %1585 = extractvalue %dx.types.ResRet.f32 %1582, 2
  %1586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1587 = extractvalue %dx.types.CBufRet.f32 %1586, 1
  %1588 = fmul fast float %1587, %1583
  %1589 = fmul fast float %1587, %1584
  %1590 = fmul fast float %1587, %1585
  br label %1591

; <label>:1591                                    ; preds = %1550, %1514
  %1592 = phi float [ %1588, %1550 ], [ 1.000000e+00, %1514 ]
  %1593 = phi float [ %1589, %1550 ], [ 1.000000e+00, %1514 ]
  %1594 = phi float [ %1590, %1550 ], [ 1.000000e+00, %1514 ]
  %1595 = fmul fast float %1592, %1469
  %1596 = fmul fast float %1593, %1470
  %1597 = fmul fast float %1594, %1471
  br label %1598

; <label>:1598                                    ; preds = %1591, %1452
  %1599 = phi float [ %1595, %1591 ], [ %1469, %1452 ]
  %1600 = phi float [ %1596, %1591 ], [ %1470, %1452 ]
  %1601 = phi float [ %1597, %1591 ], [ %1471, %1452 ]
  %1602 = and i32 %151, 2097152
  %1603 = icmp eq i32 %1602, 0
  br i1 %1603, label %1608, label %1604, !dx.controlflow.hints !81

; <label>:1604                                    ; preds = %1598
  %1605 = add i32 %148, 192
  %1606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1605, i32 undef)  ; BufferLoad(srv,index,wot)
  %1607 = extractvalue %dx.types.ResRet.f32 %1606, 0
  br label %1611

; <label>:1608                                    ; preds = %1598
  %1609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1610 = extractvalue %dx.types.CBufRet.f32 %1609, 3
  br label %1611

; <label>:1611                                    ; preds = %1608, %1604
  %1612 = phi float [ %1607, %1604 ], [ %1610, %1608 ]
  %1613 = fmul fast float %822, %610
  %1614 = fmul fast float %1613, %1019
  %1615 = fmul fast float %1614, %1491
  %1616 = fmul fast float %823, %610
  %1617 = fmul fast float %1616, %1019
  %1618 = fmul fast float %1617, %1492
  %1619 = fmul fast float %824, %610
  %1620 = fmul fast float %1619, %1019
  %1621 = fmul fast float %1620, %1493
  br i1 %878, label %1622, label %1755

; <label>:1622                                    ; preds = %1611
  %1623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1624 = extractvalue %dx.types.CBufRet.f32 %1623, 2
  %1625 = extractvalue %dx.types.CBufRet.f32 %1623, 3
  %1626 = fmul fast float %1624, %61
  %1627 = fmul fast float %1625, %62
  %1628 = call float @dx.op.unary.f32(i32 7, float %1626)  ; Saturate(value)
  %1629 = call float @dx.op.unary.f32(i32 7, float %1627)  ; Saturate(value)
  %1630 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1628, float %1629, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1631 = extractvalue %dx.types.ResRet.f32 %1630, 0
  %1632 = extractvalue %dx.types.ResRet.f32 %1630, 1
  %1633 = extractvalue %dx.types.ResRet.f32 %1630, 2
  %1634 = extractvalue %dx.types.ResRet.f32 %1630, 3
  %1635 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1628, float %1629, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1636 = extractvalue %dx.types.ResRet.f32 %1635, 0
  %1637 = extractvalue %dx.types.ResRet.f32 %1635, 1
  %1638 = extractvalue %dx.types.ResRet.f32 %1635, 2
  %1639 = extractvalue %dx.types.ResRet.f32 %1635, 3
  %1640 = call float @dx.op.binary.f32(i32 35, float %1632, float %1633)  ; FMax(a,b)
  %1641 = call float @dx.op.binary.f32(i32 35, float %1631, float %1640)  ; FMax(a,b)
  %1642 = call float @dx.op.binary.f32(i32 35, float %1641, float %1634)  ; FMax(a,b)
  %1643 = call float @dx.op.binary.f32(i32 36, float %1637, float %1638)  ; FMin(a,b)
  %1644 = call float @dx.op.binary.f32(i32 36, float %1636, float %1643)  ; FMin(a,b)
  %1645 = call float @dx.op.binary.f32(i32 36, float %1644, float %1639)  ; FMin(a,b)
  %1646 = fmul fast float %1642, 2.550000e+02
  %1647 = fadd fast float %1646, 0x3F70101020000000
  %1648 = fptoui float %1647 to i32
  %1649 = fmul fast float %1645, 2.550000e+02
  %1650 = fadd fast float %1649, 0x3F70101020000000
  %1651 = fptoui float %1650 to i32
  %1652 = icmp ult i32 %1648, %1651
  br i1 %1652, label %1653, label %1697

; <label>:1653                                    ; preds = %1622
  %1654 = fcmp fast ogt float %53, 9.843750e-01
  %1655 = select i1 %1654, float -4.000000e+00, float %1051
  %1656 = call float @dx.op.binary.f32(i32 35, float %1655, float 0.000000e+00)  ; FMax(a,b)
  %1657 = fadd fast float %1048, %1656
  %1658 = fmul fast float %1657, %1049
  %1659 = call float @dx.op.unary.f32(i32 23, float %1658)  ; Log(value)
  %1660 = fmul fast float %1050, %1659
  %1661 = fmul fast float %1660, %1058
  %1662 = call float @dx.op.unary.f32(i32 7, float %1661)  ; Saturate(value)
  %1663 = uitofp i32 %1648 to float
  %1664 = uitofp i32 %1651 to float
  %1665 = fadd fast float %1663, 5.000000e-01
  %1666 = fadd fast float %1664, 5.000000e-01
  %1667 = fmul fast float %1058, %1665
  %1668 = fmul fast float %1058, %1666
  %1669 = fadd fast float %1667, 0x3F0FFB4800000000
  %1670 = fadd fast float %1668, 0xBF0FFB4800000000
  %1671 = call float @dx.op.binary.f32(i32 35, float %1662, float %1669)  ; FMax(a,b)
  %1672 = call float @dx.op.binary.f32(i32 36, float %1671, float %1670)  ; FMin(a,b)
  %1673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1674 = extractvalue %dx.types.CBufRet.f32 %1673, 1
  %1675 = extractvalue %dx.types.CBufRet.f32 %1673, 2
  %1676 = extractvalue %dx.types.CBufRet.f32 %1673, 0
  %1677 = fmul fast float %1674, %1672
  %1678 = fadd fast float %1676, %1677
  %1679 = fadd fast float %1676, %1675
  %1680 = fsub fast float %1674, %1675
  %1681 = fadd fast float %1680, %1676
  %1682 = call float @dx.op.binary.f32(i32 35, float %1678, float %1679)  ; FMax(a,b)
  %1683 = call float @dx.op.binary.f32(i32 36, float %1682, float %1681)  ; FMin(a,b)
  %1684 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %1628, float %1629, float %1683, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1685 = extractvalue %dx.types.ResRet.f32 %1684, 0
  %1686 = extractvalue %dx.types.ResRet.f32 %1684, 1
  %1687 = extractvalue %dx.types.ResRet.f32 %1684, 2
  %1688 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %1628, float %1629, float %1683, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1689 = extractvalue %dx.types.ResRet.f32 %1688, 0
  %1690 = extractvalue %dx.types.ResRet.f32 %1688, 1
  %1691 = extractvalue %dx.types.ResRet.f32 %1688, 2
  %1692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1693 = extractvalue %dx.types.CBufRet.f32 %1692, 1
  %1694 = fmul fast float %1693, %1689
  %1695 = fmul fast float %1693, %1690
  %1696 = fmul fast float %1693, %1691
  br label %1697

; <label>:1697                                    ; preds = %1653, %1622
  %1698 = phi float [ %1685, %1653 ], [ 1.000000e+00, %1622 ]
  %1699 = phi float [ %1686, %1653 ], [ 1.000000e+00, %1622 ]
  %1700 = phi float [ %1687, %1653 ], [ 1.000000e+00, %1622 ]
  %1701 = phi float [ %1694, %1653 ], [ 0.000000e+00, %1622 ]
  %1702 = phi float [ %1695, %1653 ], [ 0.000000e+00, %1622 ]
  %1703 = phi float [ %1696, %1653 ], [ 0.000000e+00, %1622 ]
  %1704 = fmul fast float %1701, %1504
  %1705 = fmul fast float %1702, %1504
  %1706 = fmul fast float %1703, %1504
  %1707 = call float @dx.op.dot3.f32(i32 55, float %1698, float %1699, float %1700, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1708 = call float @dx.op.dot3.f32(i32 55, float %1704, float %1705, float %1706, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1709 = select i1 %131, float %1707, float %1698
  %1710 = select i1 %131, float %1707, float %1699
  %1711 = select i1 %131, float 1.000000e+00, float %1700
  %1712 = select i1 %131, float %1708, float %1704
  %1713 = select i1 %131, float 0.000000e+00, float %1705
  %1714 = select i1 %131, float 0.000000e+00, float %1706
  %1715 = fmul fast float %1709, %1615
  %1716 = fmul fast float %1710, %1618
  %1717 = fmul fast float %1711, %1621
  %1718 = fadd fast float %1715, %1712
  %1719 = fadd fast float %1716, %1713
  %1720 = fadd fast float %1714, %1717
  %1721 = fmul fast float %1709, %1599
  %1722 = fmul fast float %1710, %1600
  %1723 = fmul fast float %1711, %1601
  %1724 = fmul fast float %66, %1624
  %1725 = fmul fast float %68, %1625
  %1726 = fsub fast float 1.000000e+00, %1724
  %1727 = fsub fast float 1.000000e+00, %1725
  %1728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1729 = extractvalue %dx.types.CBufRet.f32 %1728, 0
  %1730 = extractvalue %dx.types.CBufRet.f32 %1728, 1
  %1731 = extractvalue %dx.types.CBufRet.f32 %1728, 2
  %1732 = fmul fast float %1726, %1729
  %1733 = fmul fast float %1726, %1730
  %1734 = fmul fast float %1726, %1731
  %1735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1736 = extractvalue %dx.types.CBufRet.f32 %1735, 0
  %1737 = extractvalue %dx.types.CBufRet.f32 %1735, 1
  %1738 = extractvalue %dx.types.CBufRet.f32 %1735, 2
  %1739 = fmul fast float %1727, %1736
  %1740 = fmul fast float %1727, %1737
  %1741 = fmul fast float %1727, %1738
  %1742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1743 = extractvalue %dx.types.CBufRet.f32 %1742, 0
  %1744 = extractvalue %dx.types.CBufRet.f32 %1742, 1
  %1745 = extractvalue %dx.types.CBufRet.f32 %1742, 2
  %1746 = fadd fast float %1739, %1743
  %1747 = fadd fast float %1746, %1732
  %1748 = fadd fast float %1740, %1744
  %1749 = fadd fast float %1748, %1733
  %1750 = fadd fast float %1741, %1745
  %1751 = fadd fast float %1750, %1734
  %1752 = fmul fast float %1747, %875
  %1753 = fmul fast float %1749, %875
  %1754 = fmul fast float %1751, %875
  br label %1755

; <label>:1755                                    ; preds = %1697, %1611
  %1756 = phi float [ %1752, %1697 ], [ %96, %1611 ]
  %1757 = phi float [ %1753, %1697 ], [ %97, %1611 ]
  %1758 = phi float [ %1754, %1697 ], [ %98, %1611 ]
  %1759 = phi float [ %875, %1697 ], [ %54, %1611 ]
  %1760 = phi float [ %1718, %1697 ], [ %1615, %1611 ]
  %1761 = phi float [ %1719, %1697 ], [ %1618, %1611 ]
  %1762 = phi float [ %1720, %1697 ], [ %1621, %1611 ]
  %1763 = phi float [ %1721, %1697 ], [ %1599, %1611 ]
  %1764 = phi float [ %1722, %1697 ], [ %1600, %1611 ]
  %1765 = phi float [ %1723, %1697 ], [ %1601, %1611 ]
  %1766 = phi float [ %1698, %1697 ], [ 1.000000e+00, %1611 ]
  br i1 %883, label %2822, label %1767

; <label>:1767                                    ; preds = %1755
  %1768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1769 = extractvalue %dx.types.CBufRet.f32 %1768, 0
  %1770 = extractvalue %dx.types.CBufRet.f32 %1768, 1
  %1771 = extractvalue %dx.types.CBufRet.f32 %1768, 2
  %1772 = extractvalue %dx.types.CBufRet.f32 %1768, 3
  %1773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1774 = extractvalue %dx.types.CBufRet.f32 %1773, 0
  %1775 = extractvalue %dx.types.CBufRet.f32 %1773, 1
  %1776 = extractvalue %dx.types.CBufRet.f32 %1773, 2
  %1777 = extractvalue %dx.types.CBufRet.f32 %1773, 3
  %1778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1779 = extractvalue %dx.types.CBufRet.f32 %1778, 0
  %1780 = extractvalue %dx.types.CBufRet.f32 %1778, 1
  %1781 = extractvalue %dx.types.CBufRet.f32 %1778, 2
  %1782 = extractvalue %dx.types.CBufRet.f32 %1778, 3
  %1783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1784 = extractvalue %dx.types.CBufRet.f32 %1783, 0
  %1785 = extractvalue %dx.types.CBufRet.f32 %1783, 1
  %1786 = extractvalue %dx.types.CBufRet.f32 %1783, 2
  %1787 = extractvalue %dx.types.CBufRet.f32 %1783, 3
  %1788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1789 = extractvalue %dx.types.CBufRet.f32 %1788, 3
  %1790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1791 = extractvalue %dx.types.CBufRet.f32 %1790, 3
  %1792 = extractvalue %dx.types.CBufRet.f32 %1790, 0
  %1793 = extractvalue %dx.types.CBufRet.f32 %1790, 1
  %1794 = extractvalue %dx.types.CBufRet.f32 %1790, 2
  %1795 = fcmp fast olt float %1794, -5.000000e-01
  %1796 = call float @dx.op.dot3.f32(i32 55, float %1756, float %1757, float %1758, float %1756, float %1757, float %1758)  ; Dot3(ax,ay,az,bx,by,bz)
  %1797 = call float @dx.op.unary.f32(i32 25, float %1796)  ; Rsqrt(value)
  %1798 = fmul fast float %1797, %1796
  %1799 = fmul fast float %1797, %1756
  %1800 = fmul fast float %1797, %1757
  %1801 = fmul fast float %1797, %1758
  %1802 = fadd fast float %1798, %1772
  %1803 = call float @dx.op.dot3.f32(i32 55, float %1799, float %1800, float %1801, float %1769, float %1770, float %1771)  ; Dot3(ax,ay,az,bx,by,bz)
  %1804 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1805 = extractvalue %dx.types.CBufRet.i32 %1804, 1
  %1806 = and i32 %1805, 1
  %1807 = icmp ne i32 %1806, 0
  %1808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1809 = extractvalue %dx.types.CBufRet.f32 %1808, 2
  %1810 = fcmp fast ogt float %1809, 0.000000e+00
  %1811 = and i1 %1807, %1810
  br i1 %1811, label %1812, label %2218, !dx.controlflow.hints !82

; <label>:1812                                    ; preds = %1767
  %1813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1814 = extractvalue %dx.types.CBufRet.f32 %1813, 3
  %1815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1816 = extractvalue %dx.types.CBufRet.f32 %1815, 2
  %1817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1818 = extractvalue %dx.types.CBufRet.f32 %1817, 2
  %1819 = fsub fast float %1816, %1818
  %1820 = and i32 %1805, 2
  %1821 = extractvalue %dx.types.CBufRet.i32 %1804, 0
  %1822 = call i32 @dx.op.binary.i32(i32 40, i32 %1821, i32 3)  ; UMin(a,b)
  %1823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1824 = extractvalue %dx.types.CBufRet.f32 %1823, 0
  %1825 = extractvalue %dx.types.CBufRet.f32 %1823, 1
  %1826 = extractvalue %dx.types.CBufRet.f32 %1817, 0
  %1827 = extractvalue %dx.types.CBufRet.f32 %1817, 1
  %1828 = fsub fast float %1824, %1826
  %1829 = fsub fast float %1825, %1827
  %1830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1831 = extractvalue %dx.types.CBufRet.f32 %1830, 0
  %1832 = fcmp fast ogt float %1831, 0.000000e+00
  %1833 = fsub fast float -0.000000e+00, %1828
  %1834 = fsub fast float -0.000000e+00, %1829
  %1835 = call float @dx.op.dot2.f32(i32 54, float %1799, float %1800, float %1799, float %1800)  ; Dot2(ax,ay,bx,by)
  %1836 = call float @dx.op.dot2.f32(i32 54, float %1799, float %1800, float %1833, float %1834)  ; Dot2(ax,ay,bx,by)
  %1837 = fmul fast float %1836, 2.000000e+00
  %1838 = call float @dx.op.dot2.f32(i32 54, float %1833, float %1834, float %1833, float %1834)  ; Dot2(ax,ay,bx,by)
  %1839 = fmul fast float %1831, %1831
  %1840 = fsub fast float %1838, %1839
  %1841 = fmul fast float %1837, %1837
  %1842 = fmul fast float %1835, 4.000000e+00
  %1843 = fmul fast float %1842, %1840
  %1844 = fsub fast float %1841, %1843
  %1845 = fcmp fast ogt float %1844, 0.000000e+00
  br i1 %1845, label %1846, label %1861

; <label>:1846                                    ; preds = %1812
  %1847 = fcmp fast ogt float %1837, 0.000000e+00
  %1848 = call float @dx.op.unary.f32(i32 24, float %1844)  ; Sqrt(value)
  %1849 = fsub fast float -0.000000e+00, %1848
  %1850 = select i1 %1847, float %1848, float %1849
  %1851 = fadd fast float %1850, %1837
  %1852 = fmul float %1851, -5.000000e-01
  %1853 = fdiv fast float %1852, %1835
  %1854 = call float @dx.op.binary.f32(i32 35, float %1853, float 0.000000e+00)  ; FMax(a,b)
  %1855 = call float @dx.op.binary.f32(i32 36, float %1798, float %1854)  ; FMin(a,b)
  %1856 = fdiv fast float %1840, %1852
  %1857 = call float @dx.op.binary.f32(i32 35, float %1856, float 0.000000e+00)  ; FMax(a,b)
  %1858 = call float @dx.op.binary.f32(i32 36, float %1798, float %1857)  ; FMin(a,b)
  %1859 = call float @dx.op.binary.f32(i32 36, float %1855, float %1858)  ; FMin(a,b)
  %1860 = call float @dx.op.binary.f32(i32 35, float %1855, float %1858)  ; FMax(a,b)
  br label %1861

; <label>:1861                                    ; preds = %1846, %1812
  %1862 = phi float [ %1860, %1846 ], [ -1.000000e+00, %1812 ]
  %1863 = phi float [ %1859, %1846 ], [ -1.000000e+00, %1812 ]
  %1864 = phi i1 [ true, %1846 ], [ false, %1812 ]
  %1865 = and i1 %1832, %1864
  br i1 %1865, label %1866, label %1868

; <label>:1866                                    ; preds = %1861
  %1867 = fcmp fast oeq float %1863, %1862
  br i1 %1867, label %2171, label %1869

; <label>:1868                                    ; preds = %1861
  br i1 %1832, label %2171, label %1869

; <label>:1869                                    ; preds = %1868, %1866
  %1870 = phi float [ %1798, %1868 ], [ %1862, %1866 ]
  %1871 = phi float [ 0.000000e+00, %1868 ], [ %1863, %1866 ]
  %1872 = icmp ne i32 %1820, 0
  %1873 = fmul fast float %1870, %1801
  %1874 = fadd fast float %1873, %1814
  %1875 = fmul fast float %1874, %1870
  %1876 = select i1 %1872, float 0.000000e+00, float %1875
  %1877 = fcmp fast oeq float %1801, 0.000000e+00
  %1878 = fdiv fast float %1819, %1801
  %1879 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1878)  ; FMax(a,b)
  %1880 = select i1 %1877, float %1870, float %1879
  %1881 = call float @dx.op.binary.f32(i32 36, float %1870, float %1880)  ; FMin(a,b)
  %1882 = fcmp fast ogt float %1801, 0.000000e+00
  %1883 = fcmp fast olt float %1819, 0.000000e+00
  br i1 %1882, label %1884, label %1941

; <label>:1884                                    ; preds = %1869
  %1885 = icmp eq i32 %1820, 0
  br i1 %1883, label %1886, label %1930

; <label>:1886                                    ; preds = %1884
  %1887 = select i1 %1885, float %1870, float 0.000000e+00
  %1888 = fsub fast float -0.000000e+00, %1887
  %1889 = call float @dx.op.unary.f32(i32 6, float %1888)  ; FAbs(value)
  %1890 = fmul fast float %1887, %1801
  %1891 = fadd fast float %1890, %1814
  %1892 = fmul fast float %1889, %1891
  %1893 = fsub fast float %1876, %1892
  %1894 = fsub fast float %1870, %1889
  %1895 = select i1 %1885, float %1894, float 0.000000e+00
  %1896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1897 = extractvalue %dx.types.CBufRet.f32 %1896, 0
  %1898 = extractvalue %dx.types.CBufRet.f32 %1896, 1
  %1899 = extractvalue %dx.types.CBufRet.f32 %1896, 2
  %1900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1901 = extractvalue %dx.types.CBufRet.f32 %1900, 0
  %1902 = extractvalue %dx.types.CBufRet.f32 %1900, 1
  %1903 = extractvalue %dx.types.CBufRet.f32 %1900, 2
  %1904 = extractvalue %dx.types.CBufRet.f32 %1900, 3
  %1905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1906 = extractvalue %dx.types.CBufRet.f32 %1905, 3
  %1907 = call float @dx.op.binary.f32(i32 36, float %1893, float %1906)  ; FMin(a,b)
  %1908 = fmul fast float %1904, %1895
  %1909 = call float @dx.op.unary.f32(i32 7, float %1908)  ; Saturate(value)
  %1910 = fsub fast float %1901, %1897
  %1911 = fsub fast float %1902, %1898
  %1912 = fsub fast float %1903, %1899
  %1913 = fmul fast float %1909, %1910
  %1914 = fmul fast float %1909, %1911
  %1915 = fmul fast float %1909, %1912
  %1916 = fadd fast float %1913, %1897
  %1917 = fadd fast float %1914, %1898
  %1918 = fadd fast float %1915, %1899
  %1919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1920 = extractvalue %dx.types.CBufRet.f32 %1919, 0
  %1921 = extractvalue %dx.types.CBufRet.f32 %1919, 1
  %1922 = fadd fast float %1921, %1920
  %1923 = call float @dx.op.unary.f32(i32 7, float %1922)  ; Saturate(value)
  %1924 = extractvalue %dx.types.CBufRet.f32 %1919, 2
  %1925 = extractvalue %dx.types.CBufRet.f32 %1919, 3
  %1926 = fadd fast float %1925, %1924
  %1927 = call float @dx.op.unary.f32(i32 7, float %1926)  ; Saturate(value)
  %1928 = fmul fast float %1923, %1907
  %1929 = fmul fast float %1928, %1927
  br label %2171

; <label>:1930                                    ; preds = %1884
  br i1 %1885, label %1931, label %1952

; <label>:1931                                    ; preds = %1930
  %1932 = call float @dx.op.binary.f32(i32 36, float %1881, float %1871)  ; FMin(a,b)
  %1933 = fsub fast float %1881, %1932
  %1934 = fsub fast float %1933, %1870
  %1935 = call float @dx.op.unary.f32(i32 6, float %1934)  ; FAbs(value)
  %1936 = fadd fast float %1933, %1870
  %1937 = fmul fast float %1936, %1801
  %1938 = fadd fast float %1937, %1814
  %1939 = fmul fast float %1938, %1935
  %1940 = fsub fast float %1876, %1939
  br label %1952

; <label>:1941                                    ; preds = %1869
  br i1 %1883, label %1942, label %1952

; <label>:1942                                    ; preds = %1941
  %1943 = call float @dx.op.binary.f32(i32 35, float %1871, float %1881)  ; FMax(a,b)
  %1944 = icmp eq i32 %1820, 0
  %1945 = select i1 %1944, float %1881, float 0.000000e+00
  %1946 = fsub fast float -0.000000e+00, %1945
  %1947 = call float @dx.op.unary.f32(i32 6, float %1946)  ; FAbs(value)
  %1948 = fmul fast float %1945, %1801
  %1949 = fadd fast float %1948, %1814
  %1950 = fmul fast float %1947, %1949
  %1951 = fsub fast float %1876, %1950
  br label %1952

; <label>:1952                                    ; preds = %1942, %1941, %1931, %1930
  %1953 = phi float [ %1871, %1930 ], [ %1871, %1931 ], [ %1943, %1942 ], [ %1871, %1941 ]
  %1954 = phi float [ 0.000000e+00, %1930 ], [ %1935, %1931 ], [ %1947, %1942 ], [ 0.000000e+00, %1941 ]
  %1955 = phi float [ %1876, %1930 ], [ %1940, %1931 ], [ %1951, %1942 ], [ %1876, %1941 ]
  %1956 = phi float [ %1881, %1930 ], [ %1881, %1931 ], [ %1870, %1942 ], [ %1870, %1941 ]
  %1957 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 0
  store float -1.000000e+00, float* %1957, align 4, !tbaa !83, !noalias !87
  %1958 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 1
  store float -1.000000e+00, float* %1958, align 4, !tbaa !83, !noalias !87
  %1959 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 2
  store float -1.000000e+00, float* %1959, align 4, !tbaa !83, !noalias !87
  %1960 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 0
  store float -1.000000e+00, float* %1960, align 4, !tbaa !83, !noalias !87
  %1961 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 1
  store float -1.000000e+00, float* %1961, align 4, !tbaa !83, !noalias !87
  %1962 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 2
  store float -1.000000e+00, float* %1962, align 4, !tbaa !83, !noalias !87
  %1963 = icmp sgt i32 %1822, 0
  br i1 %1963, label %1964, label %2025

; <label>:1964                                    ; preds = %1952
  br label %1965

; <label>:1965                                    ; preds = %2014, %1964
  %1966 = phi i32 [ %2015, %2014 ], [ 0, %1964 ]
  %1967 = phi i32 [ %2016, %2014 ], [ 0, %1964 ]
  %1968 = add nuw i32 %1967, 171
  %1969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 %1968)  ; CBufferLoadLegacy(handle,regIndex)
  %1970 = extractvalue %dx.types.CBufRet.f32 %1969, 0
  %1971 = extractvalue %dx.types.CBufRet.f32 %1969, 1
  %1972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1973 = extractvalue %dx.types.CBufRet.f32 %1972, 0
  %1974 = extractvalue %dx.types.CBufRet.f32 %1972, 1
  %1975 = fsub fast float %1970, %1973
  %1976 = fsub fast float %1971, %1974
  %1977 = extractvalue %dx.types.CBufRet.f32 %1969, 2
  %1978 = fsub fast float -0.000000e+00, %1975
  %1979 = fsub fast float -0.000000e+00, %1976
  %1980 = call float @dx.op.dot2.f32(i32 54, float %1799, float %1800, float %1978, float %1979)  ; Dot2(ax,ay,bx,by)
  %1981 = fmul fast float %1980, 2.000000e+00
  %1982 = call float @dx.op.dot2.f32(i32 54, float %1978, float %1979, float %1978, float %1979)  ; Dot2(ax,ay,bx,by)
  %1983 = fmul fast float %1977, %1977
  %1984 = fsub fast float %1982, %1983
  %1985 = fmul fast float %1981, %1981
  %1986 = fmul fast float %1842, %1984
  %1987 = fsub fast float %1985, %1986
  %1988 = fcmp fast ogt float %1987, 0.000000e+00
  br i1 %1988, label %1989, label %2004

; <label>:1989                                    ; preds = %1965
  %1990 = fcmp fast ogt float %1981, 0.000000e+00
  %1991 = call float @dx.op.unary.f32(i32 24, float %1987)  ; Sqrt(value)
  %1992 = fsub fast float -0.000000e+00, %1991
  %1993 = select i1 %1990, float %1991, float %1992
  %1994 = fadd fast float %1993, %1981
  %1995 = fmul float %1994, -5.000000e-01
  %1996 = fdiv fast float %1995, %1835
  %1997 = call float @dx.op.binary.f32(i32 35, float %1996, float 0.000000e+00)  ; FMax(a,b)
  %1998 = call float @dx.op.binary.f32(i32 36, float %1870, float %1997)  ; FMin(a,b)
  %1999 = fdiv fast float %1984, %1995
  %2000 = call float @dx.op.binary.f32(i32 35, float %1999, float 0.000000e+00)  ; FMax(a,b)
  %2001 = call float @dx.op.binary.f32(i32 36, float %1870, float %2000)  ; FMin(a,b)
  %2002 = call float @dx.op.binary.f32(i32 36, float %1998, float %2001)  ; FMin(a,b)
  %2003 = call float @dx.op.binary.f32(i32 35, float %1998, float %2001)  ; FMax(a,b)
  br label %2004

; <label>:2004                                    ; preds = %1989, %1965
  %2005 = phi float [ %2003, %1989 ], [ -1.000000e+00, %1965 ]
  %2006 = phi float [ %2002, %1989 ], [ -1.000000e+00, %1965 ]
  %2007 = phi i1 [ true, %1989 ], [ false, %1965 ]
  br i1 %2007, label %2008, label %2014

; <label>:2008                                    ; preds = %2004
  %2009 = call float @dx.op.binary.f32(i32 35, float %1953, float %2006)  ; FMax(a,b)
  %2010 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 %1967
  store float %2009, float* %2010, align 4, !tbaa !83, !noalias !87
  %2011 = call float @dx.op.binary.f32(i32 35, float %1953, float %2005)  ; FMax(a,b)
  %2012 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 %1967
  store float %2011, float* %2012, align 4, !tbaa !83, !noalias !87
  %2013 = add nsw i32 %1966, 1
  br label %2014

; <label>:2014                                    ; preds = %2008, %2004
  %2015 = phi i32 [ %2013, %2008 ], [ %1966, %2004 ]
  %2016 = add nuw nsw i32 %1967, 1
  %2017 = icmp eq i32 %2016, %1822
  br i1 %2017, label %2018, label %1965

; <label>:2018                                    ; preds = %2014
  %2019 = load float, float* %1959, align 4, !tbaa !83, !alias.scope !103, !noalias !106
  %2020 = load float, float* %1958, align 4, !tbaa !83, !alias.scope !109, !noalias !110
  %2021 = load float, float* %1957, align 4, !tbaa !83, !alias.scope !111, !noalias !112
  %2022 = load float, float* %1962, align 4, !tbaa !83, !alias.scope !113, !noalias !116
  %2023 = load float, float* %1961, align 4, !tbaa !83, !alias.scope !119, !noalias !120
  %2024 = load float, float* %1960, align 4, !tbaa !83, !alias.scope !121, !noalias !122
  br label %2025

; <label>:2025                                    ; preds = %2018, %1952
  %2026 = phi float [ -1.000000e+00, %1952 ], [ %2024, %2018 ]
  %2027 = phi float [ -1.000000e+00, %1952 ], [ %2023, %2018 ]
  %2028 = phi float [ -1.000000e+00, %1952 ], [ %2022, %2018 ]
  %2029 = phi float [ -1.000000e+00, %1952 ], [ %2021, %2018 ]
  %2030 = phi float [ -1.000000e+00, %1952 ], [ %2020, %2018 ]
  %2031 = phi float [ -1.000000e+00, %1952 ], [ %2019, %2018 ]
  %2032 = phi i32 [ 0, %1952 ], [ %2015, %2018 ]
  %2033 = call float @dx.op.binary.f32(i32 36, float %2030, float %2031)  ; FMin(a,b)
  %2034 = call float @dx.op.binary.f32(i32 36, float %2029, float %2033)  ; FMin(a,b)
  %2035 = call float @dx.op.binary.f32(i32 35, float %2029, float %2030)  ; FMax(a,b)
  %2036 = call float @dx.op.binary.f32(i32 36, float %2035, float %2031)  ; FMin(a,b)
  %2037 = call float @dx.op.binary.f32(i32 36, float %2029, float %2030)  ; FMin(a,b)
  %2038 = call float @dx.op.binary.f32(i32 35, float %2037, float %2036)  ; FMax(a,b)
  %2039 = call float @dx.op.binary.f32(i32 35, float %2030, float %2031)  ; FMax(a,b)
  %2040 = call float @dx.op.binary.f32(i32 35, float %2029, float %2039)  ; FMax(a,b)
  store float %2034, float* %1957, align 4, !tbaa !83, !alias.scope !111, !noalias !112
  store float %2038, float* %1958, align 4, !tbaa !83, !alias.scope !109, !noalias !110
  store float %2040, float* %1959, align 4, !tbaa !83, !alias.scope !103, !noalias !106
  %2041 = call float @dx.op.binary.f32(i32 36, float %2027, float %2028)  ; FMin(a,b)
  %2042 = call float @dx.op.binary.f32(i32 36, float %2026, float %2041)  ; FMin(a,b)
  %2043 = call float @dx.op.binary.f32(i32 35, float %2026, float %2027)  ; FMax(a,b)
  %2044 = call float @dx.op.binary.f32(i32 36, float %2043, float %2028)  ; FMin(a,b)
  %2045 = call float @dx.op.binary.f32(i32 36, float %2026, float %2027)  ; FMin(a,b)
  %2046 = call float @dx.op.binary.f32(i32 35, float %2045, float %2044)  ; FMax(a,b)
  %2047 = call float @dx.op.binary.f32(i32 35, float %2027, float %2028)  ; FMax(a,b)
  %2048 = call float @dx.op.binary.f32(i32 35, float %2026, float %2047)  ; FMax(a,b)
  store float %2042, float* %1960, align 4, !tbaa !83, !alias.scope !121, !noalias !122
  store float %2046, float* %1961, align 4, !tbaa !83, !alias.scope !119, !noalias !120
  store float %2048, float* %1962, align 4, !tbaa !83, !alias.scope !113, !noalias !116
  %2049 = sub nsw i32 3, %2032
  %2050 = icmp sgt i32 %2049, 2
  br i1 %2050, label %2051, label %2089

; <label>:2051                                    ; preds = %2025
  %2052 = icmp eq i32 %1820, 0
  %2053 = fsub fast float %1870, %1954
  %2054 = select i1 %2052, float %2053, float %1954
  %2055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2056 = extractvalue %dx.types.CBufRet.f32 %2055, 0
  %2057 = extractvalue %dx.types.CBufRet.f32 %2055, 1
  %2058 = extractvalue %dx.types.CBufRet.f32 %2055, 2
  %2059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2060 = extractvalue %dx.types.CBufRet.f32 %2059, 0
  %2061 = extractvalue %dx.types.CBufRet.f32 %2059, 1
  %2062 = extractvalue %dx.types.CBufRet.f32 %2059, 2
  %2063 = extractvalue %dx.types.CBufRet.f32 %2059, 3
  %2064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2065 = extractvalue %dx.types.CBufRet.f32 %2064, 3
  %2066 = call float @dx.op.binary.f32(i32 36, float %1955, float %2065)  ; FMin(a,b)
  %2067 = fmul fast float %2063, %2054
  %2068 = call float @dx.op.unary.f32(i32 7, float %2067)  ; Saturate(value)
  %2069 = fsub fast float %2060, %2056
  %2070 = fsub fast float %2061, %2057
  %2071 = fsub fast float %2062, %2058
  %2072 = fmul fast float %2068, %2069
  %2073 = fmul fast float %2068, %2070
  %2074 = fmul fast float %2068, %2071
  %2075 = fadd fast float %2072, %2056
  %2076 = fadd fast float %2073, %2057
  %2077 = fadd fast float %2074, %2058
  %2078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2079 = extractvalue %dx.types.CBufRet.f32 %2078, 0
  %2080 = extractvalue %dx.types.CBufRet.f32 %2078, 1
  %2081 = fadd fast float %2080, %2079
  %2082 = call float @dx.op.unary.f32(i32 7, float %2081)  ; Saturate(value)
  %2083 = extractvalue %dx.types.CBufRet.f32 %2078, 2
  %2084 = extractvalue %dx.types.CBufRet.f32 %2078, 3
  %2085 = fadd fast float %2084, %2083
  %2086 = call float @dx.op.unary.f32(i32 7, float %2085)  ; Saturate(value)
  %2087 = fmul fast float %2082, %2066
  %2088 = fmul fast float %2087, %2086
  br label %2171

; <label>:2089                                    ; preds = %2025
  %2090 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 %2049
  %2091 = load float, float* %2090, align 4, !tbaa !83, !noalias !87
  %2092 = fcmp fast olt float %2091, %1956
  %2093 = icmp sgt i32 %2032, 0
  %2094 = and i1 %2093, %2092
  br i1 %2094, label %2095, label %2132

; <label>:2095                                    ; preds = %2089
  br label %2096

; <label>:2096                                    ; preds = %2125, %2095
  %2097 = phi float [ %2126, %2125 ], [ %1954, %2095 ]
  %2098 = phi float [ %2127, %2125 ], [ %1955, %2095 ]
  %2099 = phi float [ %2107, %2125 ], [ %2091, %2095 ]
  %2100 = phi i32 [ %2104, %2125 ], [ %2049, %2095 ]
  %2101 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 %2100
  %2102 = load float, float* %2101, align 4, !tbaa !83, !noalias !87
  %2103 = icmp slt i32 %2100, 2
  %2104 = add nsw i32 %2100, 1
  %2105 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 %2104
  %2106 = load float, float* %2105, align 4, !tbaa !83, !noalias !87
  %2107 = select i1 %2103, float %2106, float %1870
  %2108 = call float @dx.op.binary.f32(i32 36, float %2107, float %2102)  ; FMin(a,b)
  %2109 = call float @dx.op.binary.f32(i32 36, float %1956, float %2108)  ; FMin(a,b)
  %2110 = icmp eq i32 %1820, 0
  %2111 = fadd fast float %2109, %2099
  %2112 = fmul fast float %2111, %1801
  %2113 = fadd fast float %2112, %1814
  br i1 %2110, label %2119, label %2114

; <label>:2114                                    ; preds = %2096
  %2115 = fsub fast float %2109, %2099
  %2116 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2115)  ; FMax(a,b)
  %2117 = fmul fast float %2116, %2113
  %2118 = fadd fast float %2117, %2098
  br label %2125

; <label>:2119                                    ; preds = %2096
  %2120 = fsub fast float %2099, %2109
  %2121 = call float @dx.op.unary.f32(i32 6, float %2120)  ; FAbs(value)
  %2122 = fadd fast float %2121, %2097
  %2123 = fmul fast float %2121, %2113
  %2124 = fsub fast float %2098, %2123
  br label %2125

; <label>:2125                                    ; preds = %2119, %2114
  %2126 = phi float [ %2116, %2114 ], [ %2122, %2119 ]
  %2127 = phi float [ %2118, %2114 ], [ %2124, %2119 ]
  %2128 = fcmp fast olt float %2107, %1956
  %2129 = icmp slt i32 %2104, 3
  %2130 = and i1 %2129, %2128
  br i1 %2130, label %2096, label %2131

; <label>:2131                                    ; preds = %2125
  br label %2132

; <label>:2132                                    ; preds = %2131, %2089
  %2133 = phi float [ %1954, %2089 ], [ %2126, %2131 ]
  %2134 = phi float [ %1955, %2089 ], [ %2127, %2131 ]
  %2135 = fsub fast float %1870, %2133
  %2136 = select i1 %1872, float %2133, float %2135
  %2137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2138 = extractvalue %dx.types.CBufRet.f32 %2137, 0
  %2139 = extractvalue %dx.types.CBufRet.f32 %2137, 1
  %2140 = extractvalue %dx.types.CBufRet.f32 %2137, 2
  %2141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2142 = extractvalue %dx.types.CBufRet.f32 %2141, 0
  %2143 = extractvalue %dx.types.CBufRet.f32 %2141, 1
  %2144 = extractvalue %dx.types.CBufRet.f32 %2141, 2
  %2145 = extractvalue %dx.types.CBufRet.f32 %2141, 3
  %2146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2147 = extractvalue %dx.types.CBufRet.f32 %2146, 3
  %2148 = call float @dx.op.binary.f32(i32 36, float %2134, float %2147)  ; FMin(a,b)
  %2149 = fmul fast float %2145, %2136
  %2150 = call float @dx.op.unary.f32(i32 7, float %2149)  ; Saturate(value)
  %2151 = fsub fast float %2142, %2138
  %2152 = fsub fast float %2143, %2139
  %2153 = fsub fast float %2144, %2140
  %2154 = fmul fast float %2150, %2151
  %2155 = fmul fast float %2150, %2152
  %2156 = fmul fast float %2150, %2153
  %2157 = fadd fast float %2154, %2138
  %2158 = fadd fast float %2155, %2139
  %2159 = fadd fast float %2156, %2140
  %2160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2161 = extractvalue %dx.types.CBufRet.f32 %2160, 0
  %2162 = extractvalue %dx.types.CBufRet.f32 %2160, 1
  %2163 = fadd fast float %2162, %2161
  %2164 = call float @dx.op.unary.f32(i32 7, float %2163)  ; Saturate(value)
  %2165 = extractvalue %dx.types.CBufRet.f32 %2160, 2
  %2166 = extractvalue %dx.types.CBufRet.f32 %2160, 3
  %2167 = fadd fast float %2166, %2165
  %2168 = call float @dx.op.unary.f32(i32 7, float %2167)  ; Saturate(value)
  %2169 = fmul fast float %2164, %2148
  %2170 = fmul fast float %2169, %2168
  br label %2171

; <label>:2171                                    ; preds = %2132, %2051, %1886, %1868, %1866
  %2172 = phi float [ %1895, %1886 ], [ %2054, %2051 ], [ %2136, %2132 ], [ 0.000000e+00, %1866 ], [ 0.000000e+00, %1868 ]
  %2173 = phi float [ %1929, %1886 ], [ %2088, %2051 ], [ %2170, %2132 ], [ 0.000000e+00, %1866 ], [ 0.000000e+00, %1868 ]
  %2174 = phi float [ %1916, %1886 ], [ %2075, %2051 ], [ %2157, %2132 ], [ 0.000000e+00, %1866 ], [ 0.000000e+00, %1868 ]
  %2175 = phi float [ %1917, %1886 ], [ %2076, %2051 ], [ %2158, %2132 ], [ 0.000000e+00, %1866 ], [ 0.000000e+00, %1868 ]
  %2176 = phi float [ %1918, %1886 ], [ %2077, %2051 ], [ %2159, %2132 ], [ 0.000000e+00, %1866 ], [ 0.000000e+00, %1868 ]
  %2177 = fmul fast float %1809, %2173
  %2178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2179 = extractvalue %dx.types.CBufRet.f32 %2178, 2
  %2180 = fsub fast float %1816, %2179
  %2181 = fcmp fast olt float %2177, -2.000000e+01
  %2182 = call float @dx.op.unary.f32(i32 21, float %2177)  ; Exp(value)
  %2183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2184 = extractvalue %dx.types.CBufRet.f32 %2183, 2
  %2185 = extractvalue %dx.types.CBufRet.f32 %2183, 3
  %2186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2187 = extractvalue %dx.types.CBufRet.f32 %2186, 2
  %2188 = fmul fast float %2185, %2180
  %2189 = call float @dx.op.unary.f32(i32 7, float %2188)  ; Saturate(value)
  %2190 = fsub fast float 1.000000e+00, %2189
  %2191 = fmul fast float %1801, 5.000000e-01
  %2192 = fadd fast float %2191, 5.000000e-01
  %2193 = call float @dx.op.unary.f32(i32 7, float %2192)  ; Saturate(value)
  %2194 = fsub fast float 1.000000e+00, %2193
  %2195 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2190)  ; FMax(a,b)
  %2196 = fdiv fast float %2194, %2195
  %2197 = fsub fast float %2180, %1758
  %2198 = call float @dx.op.unary.f32(i32 6, float %2197)  ; FAbs(value)
  %2199 = fmul fast float %2198, %2184
  %2200 = call float @dx.op.unary.f32(i32 7, float %2196)  ; Saturate(value)
  %2201 = fsub fast float 1.000000e+00, %2199
  %2202 = fmul fast float %2201, %2200
  %2203 = fadd fast float %2202, %2199
  %2204 = fmul fast float %2187, %2180
  %2205 = call float @dx.op.unary.f32(i32 7, float %2204)  ; Saturate(value)
  %2206 = fsub fast float 1.000000e+00, %2203
  %2207 = fmul fast float %2206, %2205
  %2208 = fadd fast float %2207, %2203
  %2209 = call float @dx.op.unary.f32(i32 7, float %2208)  ; Saturate(value)
  %2210 = fadd fast float %2182, -1.000000e+00
  %2211 = select i1 %2181, float -1.000000e+00, float %2210
  %2212 = fmul fast float %2209, %2211
  %2213 = fadd fast float %2212, 1.000000e+00
  %2214 = fsub fast float -0.000000e+00, %2212
  %2215 = fmul fast float %2174, %2214
  %2216 = fmul fast float %2175, %2214
  %2217 = fmul fast float %2176, %2214
  br label %2218

; <label>:2218                                    ; preds = %2171, %1767
  %2219 = phi float [ %2172, %2171 ], [ 0.000000e+00, %1767 ]
  %2220 = phi float [ %2213, %2171 ], [ 1.000000e+00, %1767 ]
  %2221 = phi float [ %2215, %2171 ], [ 0.000000e+00, %1767 ]
  %2222 = phi float [ %2216, %2171 ], [ 0.000000e+00, %1767 ]
  %2223 = phi float [ %2217, %2171 ], [ 0.000000e+00, %1767 ]
  %2224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2225 = extractvalue %dx.types.CBufRet.f32 %2224, 1
  %2226 = fsub fast float 1.000000e+00, %2220
  %2227 = fmul fast float %2226, %1802
  %2228 = fmul fast float %2227, %2225
  %2229 = fsub fast float %1802, %2228
  br i1 %1795, label %2230, label %2259, !dx.controlflow.hints !123

; <label>:2230                                    ; preds = %2218
  %2231 = fmul fast float %1803, %1792
  %2232 = fadd fast float %2231, %1793
  %2233 = call float @dx.op.unary.f32(i32 7, float %2232)  ; Saturate(value)
  %2234 = fmul fast float %1774, %2229
  %2235 = fsub fast float -0.000000e+00, %2234
  %2236 = fmul fast float %1775, %2229
  %2237 = fsub fast float -0.000000e+00, %2236
  %2238 = call float @dx.op.unary.f32(i32 21, float %2235)  ; Exp(value)
  %2239 = call float @dx.op.unary.f32(i32 21, float %2237)  ; Exp(value)
  %2240 = call float @dx.op.binary.f32(i32 35, float %1782, float %2238)  ; FMax(a,b)
  %2241 = call float @dx.op.binary.f32(i32 35, float %1782, float %2239)  ; FMax(a,b)
  %2242 = fsub fast float %2241, %2240
  %2243 = fmul fast float %2242, %2233
  %2244 = fadd fast float %2243, %2240
  %2245 = call float @dx.op.unary.f32(i32 7, float %2244)  ; Saturate(value)
  %2246 = fsub fast float %1779, %1784
  %2247 = fsub fast float %1780, %1785
  %2248 = fsub fast float %1781, %1786
  %2249 = fmul fast float %2233, %2246
  %2250 = fmul fast float %2233, %2247
  %2251 = fmul fast float %2233, %2248
  %2252 = fadd fast float %2249, %1784
  %2253 = fadd fast float %2250, %1785
  %2254 = fadd fast float %2251, %1786
  %2255 = fsub fast float 1.000000e+00, %2245
  %2256 = fmul fast float %2255, %2252
  %2257 = fmul fast float %2255, %2253
  %2258 = fmul fast float %2255, %2254
  br label %2318

; <label>:2259                                    ; preds = %2218
  %2260 = fmul fast float %2229, %1791
  %2261 = call float @dx.op.unary.f32(i32 7, float %2260)  ; Saturate(value)
  %2262 = fsub fast float 2.000000e+00, %2261
  %2263 = fmul fast float %2261, 9.921875e-01
  %2264 = fmul fast float %2263, %2262
  %2265 = fadd fast float %2264, 3.906250e-03
  %2266 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %26, float %2265, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2267 = extractvalue %dx.types.ResRet.f32 %2266, 0
  %2268 = fsub fast float %2261, %2267
  %2269 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2268)  ; FMax(a,b)
  %2270 = fmul fast float %1777, %1758
  %2271 = call float @dx.op.unary.f32(i32 6, float %2270)  ; FAbs(value)
  %2272 = fcmp fast ogt float %2271, 0x3EB0C6F7A0000000
  br i1 %2272, label %2273, label %2279, !dx.controlflow.hints !124

; <label>:2273                                    ; preds = %2259
  %2274 = fmul fast float %2270, 0xBFF7154760000000
  %2275 = call float @dx.op.unary.f32(i32 21, float %2274)  ; Exp(value)
  %2276 = fsub fast float 1.000000e+00, %2275
  %2277 = fdiv fast float %2276, %2270
  %2278 = fmul fast float %2277, %1787
  br label %2279

; <label>:2279                                    ; preds = %2273, %2259
  %2280 = phi float [ %2278, %2273 ], [ %1787, %2259 ]
  %2281 = fadd fast float %2280, %1789
  %2282 = fmul fast float %2281, %2269
  %2283 = fmul fast float %1774, %2282
  %2284 = fsub fast float -0.000000e+00, %2283
  %2285 = fmul fast float %1775, %2282
  %2286 = fsub fast float -0.000000e+00, %2285
  %2287 = fmul fast float %1776, %2282
  %2288 = fsub fast float -0.000000e+00, %2287
  %2289 = call float @dx.op.unary.f32(i32 21, float %2284)  ; Exp(value)
  %2290 = call float @dx.op.unary.f32(i32 21, float %2286)  ; Exp(value)
  %2291 = call float @dx.op.unary.f32(i32 21, float %2288)  ; Exp(value)
  %2292 = fmul fast float %1803, %1803
  %2293 = fadd fast float %2292, 1.000000e+00
  %2294 = fmul fast float %2293, 0x3FAE8EC8A0000000
  %2295 = fmul fast float %2294, %1784
  %2296 = fmul fast float %2294, %1785
  %2297 = fmul fast float %2294, %1786
  %2298 = fmul fast float %1803, %1782
  %2299 = fsub fast float 1.000000e+00, %2298
  %2300 = fmul fast float %1782, %1782
  %2301 = fsub fast float 1.000000e+00, %2300
  %2302 = fmul fast float %2301, 0x3FB45F3060000000
  %2303 = fmul fast float %2299, %2299
  %2304 = fdiv fast float 1.000000e+00, %2303
  %2305 = fmul fast float %2302, %2304
  %2306 = fmul fast float %2305, %1779
  %2307 = fmul fast float %2305, %1780
  %2308 = fmul fast float %2305, %1781
  %2309 = fadd fast float %2306, %2295
  %2310 = fadd fast float %2307, %2296
  %2311 = fadd fast float %2308, %2297
  %2312 = fsub fast float 1.000000e+00, %2289
  %2313 = fsub fast float 1.000000e+00, %2290
  %2314 = fsub fast float 1.000000e+00, %2291
  %2315 = fmul fast float %2309, %2312
  %2316 = fmul fast float %2310, %2313
  %2317 = fmul fast float %2311, %2314
  br label %2318

; <label>:2318                                    ; preds = %2279, %2230
  %2319 = phi float [ %2256, %2230 ], [ %2315, %2279 ]
  %2320 = phi float [ %2257, %2230 ], [ %2316, %2279 ]
  %2321 = phi float [ %2258, %2230 ], [ %2317, %2279 ]
  %2322 = phi float [ %2245, %2230 ], [ %2289, %2279 ]
  %2323 = phi float [ %2245, %2230 ], [ %2290, %2279 ]
  %2324 = phi float [ %2245, %2230 ], [ %2291, %2279 ]
  br i1 %1811, label %2325, label %2523, !dx.controlflow.hints !125

; <label>:2325                                    ; preds = %2318
  %2326 = extractvalue %dx.types.CBufRet.f32 %2224, 0
  %2327 = fmul fast float %2326, %2226
  %2328 = fsub fast float %2221, %2319
  %2329 = fsub fast float %2222, %2320
  %2330 = fsub fast float %2223, %2321
  %2331 = fmul fast float %2327, %2328
  %2332 = fmul fast float %2327, %2329
  %2333 = fmul fast float %2327, %2330
  %2334 = fadd fast float %2331, %2319
  %2335 = fadd fast float %2332, %2320
  %2336 = fadd fast float %2333, %2321
  %2337 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2322)  ; FMax(a,b)
  %2338 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2323)  ; FMax(a,b)
  %2339 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2324)  ; FMax(a,b)
  %2340 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2220)  ; FMax(a,b)
  %2341 = call float @dx.op.binary.f32(i32 35, float %2219, float %2229)  ; FMax(a,b)
  %2342 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2341)  ; FMax(a,b)
  %2343 = fdiv fast float %2219, %2342
  %2344 = call float @dx.op.unary.f32(i32 7, float %2343)  ; Saturate(value)
  %2345 = fdiv fast float %2229, %2342
  %2346 = call float @dx.op.unary.f32(i32 7, float %2345)  ; Saturate(value)
  %2347 = fcmp fast une float %2340, 1.000000e+00
  br i1 %2347, label %2348, label %2361, !dx.controlflow.hints !126

; <label>:2348                                    ; preds = %2325
  %2349 = call float @dx.op.unary.f32(i32 23, float %2340)  ; Log(value)
  %2350 = fmul fast float %2349, 0x3FE62E4300000000
  %2351 = fmul fast float %2221, %2350
  %2352 = fsub fast float -0.000000e+00, %2351
  %2353 = fmul fast float %2222, %2350
  %2354 = fsub fast float -0.000000e+00, %2353
  %2355 = fmul fast float %2223, %2350
  %2356 = fsub fast float -0.000000e+00, %2355
  %2357 = fsub fast float 1.000000e+00, %2340
  %2358 = fdiv fast float %2352, %2357
  %2359 = fdiv fast float %2354, %2357
  %2360 = fdiv fast float %2356, %2357
  br label %2361

; <label>:2361                                    ; preds = %2348, %2325
  %2362 = phi float [ %2358, %2348 ], [ %2221, %2325 ]
  %2363 = phi float [ %2359, %2348 ], [ %2222, %2325 ]
  %2364 = phi float [ %2360, %2348 ], [ %2223, %2325 ]
  %2365 = phi float [ %2350, %2348 ], [ 0.000000e+00, %2325 ]
  %2366 = fcmp fast une float %2337, 1.000000e+00
  br i1 %2366, label %2367, label %2374, !dx.controlflow.hints !127

; <label>:2367                                    ; preds = %2361
  %2368 = call float @dx.op.unary.f32(i32 23, float %2337)  ; Log(value)
  %2369 = fmul fast float %2368, 0x3FE62E4300000000
  %2370 = fmul fast float %2334, %2369
  %2371 = fsub fast float -0.000000e+00, %2370
  %2372 = fsub fast float 1.000000e+00, %2337
  %2373 = fdiv fast float %2371, %2372
  br label %2374

; <label>:2374                                    ; preds = %2367, %2361
  %2375 = phi float [ %2373, %2367 ], [ %2334, %2361 ]
  %2376 = phi float [ %2369, %2367 ], [ 0.000000e+00, %2361 ]
  %2377 = fcmp fast une float %2338, 1.000000e+00
  br i1 %2377, label %2378, label %2385, !dx.controlflow.hints !127

; <label>:2378                                    ; preds = %2374
  %2379 = call float @dx.op.unary.f32(i32 23, float %2338)  ; Log(value)
  %2380 = fmul fast float %2379, 0x3FE62E4300000000
  %2381 = fmul fast float %2335, %2380
  %2382 = fsub fast float -0.000000e+00, %2381
  %2383 = fsub fast float 1.000000e+00, %2338
  %2384 = fdiv fast float %2382, %2383
  br label %2385

; <label>:2385                                    ; preds = %2378, %2374
  %2386 = phi float [ %2384, %2378 ], [ %2335, %2374 ]
  %2387 = phi float [ %2380, %2378 ], [ 0.000000e+00, %2374 ]
  %2388 = fcmp fast une float %2339, 1.000000e+00
  br i1 %2388, label %2389, label %2396, !dx.controlflow.hints !127

; <label>:2389                                    ; preds = %2385
  %2390 = call float @dx.op.unary.f32(i32 23, float %2339)  ; Log(value)
  %2391 = fmul fast float %2390, 0x3FE62E4300000000
  %2392 = fmul fast float %2336, %2391
  %2393 = fsub fast float -0.000000e+00, %2392
  %2394 = fsub fast float 1.000000e+00, %2339
  %2395 = fdiv fast float %2393, %2394
  br label %2396

; <label>:2396                                    ; preds = %2389, %2385
  %2397 = phi float [ %2395, %2389 ], [ %2336, %2385 ]
  %2398 = phi float [ %2391, %2389 ], [ 0.000000e+00, %2385 ]
  %2399 = fmul fast float %2362, %2346
  %2400 = fmul fast float %2363, %2346
  %2401 = fmul fast float %2364, %2346
  %2402 = fmul fast float %2365, %2346
  %2403 = fmul fast float %2375, %2344
  %2404 = fmul fast float %2386, %2344
  %2405 = fmul fast float %2397, %2344
  %2406 = fmul fast float %2376, %2344
  %2407 = fmul fast float %2387, %2344
  %2408 = fmul fast float %2398, %2344
  %2409 = fadd fast float %2403, %2399
  %2410 = fadd fast float %2404, %2400
  %2411 = fadd fast float %2405, %2401
  %2412 = fadd fast float %2406, %2402
  %2413 = fadd fast float %2407, %2402
  %2414 = fadd fast float %2408, %2402
  %2415 = fcmp fast une float %2412, 0.000000e+00
  br i1 %2415, label %2416, label %2423, !dx.controlflow.hints !128

; <label>:2416                                    ; preds = %2396
  %2417 = fmul fast float %2412, 0x3FF7154760000000
  %2418 = call float @dx.op.unary.f32(i32 21, float %2417)  ; Exp(value)
  %2419 = fsub fast float 1.000000e+00, %2418
  %2420 = fmul fast float %2409, %2419
  %2421 = fsub fast float -0.000000e+00, %2420
  %2422 = fdiv fast float %2421, %2412
  br label %2423

; <label>:2423                                    ; preds = %2416, %2396
  %2424 = phi float [ %2418, %2416 ], [ 1.000000e+00, %2396 ]
  %2425 = phi float [ %2422, %2416 ], [ %2409, %2396 ]
  %2426 = fcmp fast une float %2413, 0.000000e+00
  br i1 %2426, label %2427, label %2434, !dx.controlflow.hints !128

; <label>:2427                                    ; preds = %2423
  %2428 = fmul fast float %2413, 0x3FF7154760000000
  %2429 = call float @dx.op.unary.f32(i32 21, float %2428)  ; Exp(value)
  %2430 = fsub fast float 1.000000e+00, %2429
  %2431 = fmul fast float %2410, %2430
  %2432 = fsub fast float -0.000000e+00, %2431
  %2433 = fdiv fast float %2432, %2413
  br label %2434

; <label>:2434                                    ; preds = %2427, %2423
  %2435 = phi float [ %2429, %2427 ], [ 1.000000e+00, %2423 ]
  %2436 = phi float [ %2433, %2427 ], [ %2410, %2423 ]
  %2437 = fcmp fast une float %2414, 0.000000e+00
  br i1 %2437, label %2438, label %2445, !dx.controlflow.hints !128

; <label>:2438                                    ; preds = %2434
  %2439 = fmul fast float %2414, 0x3FF7154760000000
  %2440 = call float @dx.op.unary.f32(i32 21, float %2439)  ; Exp(value)
  %2441 = fsub fast float 1.000000e+00, %2440
  %2442 = fmul fast float %2411, %2441
  %2443 = fsub fast float -0.000000e+00, %2442
  %2444 = fdiv fast float %2443, %2414
  br label %2445

; <label>:2445                                    ; preds = %2438, %2434
  %2446 = phi float [ %2440, %2438 ], [ 1.000000e+00, %2434 ]
  %2447 = phi float [ %2444, %2438 ], [ %2411, %2434 ]
  %2448 = fcmp fast ogt float %2344, %2346
  br i1 %2448, label %2449, label %2469

; <label>:2449                                    ; preds = %2445
  %2450 = fsub fast float 1.000000e+00, %2346
  %2451 = fmul fast float %2362, %2450
  %2452 = fmul fast float %2363, %2450
  %2453 = fmul fast float %2364, %2450
  %2454 = fmul fast float %2365, %2450
  %2455 = fcmp fast une float %2454, 0.000000e+00
  br i1 %2455, label %2456, label %2507, !dx.controlflow.hints !129

; <label>:2456                                    ; preds = %2449
  %2457 = fmul fast float %2454, 0x3FF7154760000000
  %2458 = call float @dx.op.unary.f32(i32 21, float %2457)  ; Exp(value)
  %2459 = fsub fast float 1.000000e+00, %2458
  %2460 = fmul fast float %2451, %2459
  %2461 = fsub fast float -0.000000e+00, %2460
  %2462 = fmul fast float %2452, %2459
  %2463 = fsub fast float -0.000000e+00, %2462
  %2464 = fmul fast float %2453, %2459
  %2465 = fsub fast float -0.000000e+00, %2464
  %2466 = fdiv fast float %2461, %2454
  %2467 = fdiv fast float %2463, %2454
  %2468 = fdiv fast float %2465, %2454
  br label %2507

; <label>:2469                                    ; preds = %2445
  %2470 = fsub fast float 1.000000e+00, %2344
  %2471 = fmul fast float %2375, %2470
  %2472 = fmul fast float %2386, %2470
  %2473 = fmul fast float %2397, %2470
  %2474 = fmul fast float %2376, %2470
  %2475 = fmul fast float %2387, %2470
  %2476 = fmul fast float %2398, %2470
  %2477 = fcmp fast une float %2474, 0.000000e+00
  br i1 %2477, label %2478, label %2485, !dx.controlflow.hints !128

; <label>:2478                                    ; preds = %2469
  %2479 = fmul fast float %2474, 0x3FF7154760000000
  %2480 = call float @dx.op.unary.f32(i32 21, float %2479)  ; Exp(value)
  %2481 = fsub fast float 1.000000e+00, %2480
  %2482 = fmul fast float %2471, %2481
  %2483 = fsub fast float -0.000000e+00, %2482
  %2484 = fdiv fast float %2483, %2474
  br label %2485

; <label>:2485                                    ; preds = %2478, %2469
  %2486 = phi float [ %2484, %2478 ], [ %2471, %2469 ]
  %2487 = phi float [ %2480, %2478 ], [ 1.000000e+00, %2469 ]
  %2488 = fcmp fast une float %2475, 0.000000e+00
  br i1 %2488, label %2489, label %2496, !dx.controlflow.hints !128

; <label>:2489                                    ; preds = %2485
  %2490 = fmul fast float %2475, 0x3FF7154760000000
  %2491 = call float @dx.op.unary.f32(i32 21, float %2490)  ; Exp(value)
  %2492 = fsub fast float 1.000000e+00, %2491
  %2493 = fmul fast float %2472, %2492
  %2494 = fsub fast float -0.000000e+00, %2493
  %2495 = fdiv fast float %2494, %2475
  br label %2496

; <label>:2496                                    ; preds = %2489, %2485
  %2497 = phi float [ %2495, %2489 ], [ %2472, %2485 ]
  %2498 = phi float [ %2491, %2489 ], [ 1.000000e+00, %2485 ]
  %2499 = fcmp fast une float %2476, 0.000000e+00
  br i1 %2499, label %2500, label %2507, !dx.controlflow.hints !128

; <label>:2500                                    ; preds = %2496
  %2501 = fmul fast float %2476, 0x3FF7154760000000
  %2502 = call float @dx.op.unary.f32(i32 21, float %2501)  ; Exp(value)
  %2503 = fsub fast float 1.000000e+00, %2502
  %2504 = fmul fast float %2473, %2503
  %2505 = fsub fast float -0.000000e+00, %2504
  %2506 = fdiv fast float %2505, %2476
  br label %2507

; <label>:2507                                    ; preds = %2500, %2496, %2456, %2449
  %2508 = phi float [ %2506, %2500 ], [ %2468, %2456 ], [ %2453, %2449 ], [ %2473, %2496 ]
  %2509 = phi float [ %2497, %2500 ], [ %2467, %2456 ], [ %2452, %2449 ], [ %2497, %2496 ]
  %2510 = phi float [ %2486, %2500 ], [ %2466, %2456 ], [ %2451, %2449 ], [ %2486, %2496 ]
  %2511 = phi float [ %2502, %2500 ], [ %2458, %2456 ], [ 1.000000e+00, %2449 ], [ 1.000000e+00, %2496 ]
  %2512 = phi float [ %2498, %2500 ], [ %2458, %2456 ], [ 1.000000e+00, %2449 ], [ %2498, %2496 ]
  %2513 = phi float [ %2487, %2500 ], [ %2458, %2456 ], [ 1.000000e+00, %2449 ], [ %2487, %2496 ]
  %2514 = fmul fast float %2513, %2425
  %2515 = fmul fast float %2512, %2436
  %2516 = fmul fast float %2511, %2447
  %2517 = fadd fast float %2514, %2510
  %2518 = fadd fast float %2515, %2509
  %2519 = fadd fast float %2516, %2508
  %2520 = fmul fast float %2513, %2424
  %2521 = fmul fast float %2512, %2435
  %2522 = fmul fast float %2511, %2446
  br label %2523

; <label>:2523                                    ; preds = %2507, %2318
  %2524 = phi float [ %2522, %2507 ], [ %2324, %2318 ]
  %2525 = phi float [ %2521, %2507 ], [ %2323, %2318 ]
  %2526 = phi float [ %2520, %2507 ], [ %2322, %2318 ]
  %2527 = phi float [ %2519, %2507 ], [ %2321, %2318 ]
  %2528 = phi float [ %2518, %2507 ], [ %2320, %2318 ]
  %2529 = phi float [ %2517, %2507 ], [ %2319, %2318 ]
  %2530 = fmul fast float %2529, %1504
  %2531 = fmul fast float %2528, %1504
  %2532 = fmul fast float %2527, %1504
  %2533 = fmul fast float %2526, %1766
  %2534 = call float @dx.op.dot3.f32(i32 55, float %2526, float %2525, float %2524, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2535 = call float @dx.op.dot3.f32(i32 55, float %2530, float %2531, float %2532, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2536 = select i1 %131, float %2534, float %2526
  %2537 = select i1 %131, float %2534, float %2525
  %2538 = select i1 %131, float 1.000000e+00, float %2524
  %2539 = select i1 %131, float %2535, float %2530
  %2540 = select i1 %131, float 0.000000e+00, float %2531
  %2541 = select i1 %131, float 0.000000e+00, float %2532
  %2542 = fmul fast float %2536, %1760
  %2543 = fmul fast float %2537, %1761
  %2544 = fmul fast float %2538, %1762
  %2545 = fadd fast float %2542, %2539
  %2546 = fadd fast float %2543, %2540
  %2547 = fadd fast float %2541, %2544
  %2548 = fmul fast float %2536, %1763
  %2549 = fmul fast float %2537, %1764
  %2550 = fmul fast float %2538, %1765
  %2551 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2552 = extractvalue %dx.types.CBufRet.i32 %2551, 0
  %2553 = icmp eq i32 %2552, 0
  br i1 %2553, label %2822, label %2554, !dx.controlflow.hints !130

; <label>:2554                                    ; preds = %2523
  %2555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2556 = extractvalue %dx.types.CBufRet.f32 %2555, 2
  %2557 = extractvalue %dx.types.CBufRet.f32 %2555, 3
  %2558 = fmul fast float %2556, %61
  %2559 = fmul fast float %2557, %62
  %2560 = fmul fast float %2558, 2.000000e+00
  %2561 = fmul fast float %2559, 2.000000e+00
  %2562 = fsub fast float 1.000000e+00, %2560
  %2563 = fsub fast float 1.000000e+00, %2561
  %2564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2565 = extractvalue %dx.types.CBufRet.f32 %2564, 0
  %2566 = extractvalue %dx.types.CBufRet.f32 %2564, 1
  %2567 = extractvalue %dx.types.CBufRet.f32 %2564, 2
  %2568 = fmul fast float %2562, %2565
  %2569 = fmul fast float %2562, %2566
  %2570 = fmul fast float %2562, %2567
  %2571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2572 = extractvalue %dx.types.CBufRet.f32 %2571, 0
  %2573 = extractvalue %dx.types.CBufRet.f32 %2571, 1
  %2574 = extractvalue %dx.types.CBufRet.f32 %2571, 2
  %2575 = fmul fast float %2563, %2572
  %2576 = fmul fast float %2563, %2573
  %2577 = fmul fast float %2563, %2574
  %2578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2579 = extractvalue %dx.types.CBufRet.f32 %2578, 0
  %2580 = extractvalue %dx.types.CBufRet.f32 %2578, 1
  %2581 = extractvalue %dx.types.CBufRet.f32 %2578, 2
  %2582 = fadd fast float %2575, %2579
  %2583 = fadd fast float %2582, %2568
  %2584 = fadd fast float %2576, %2580
  %2585 = fadd fast float %2584, %2569
  %2586 = fadd fast float %2577, %2581
  %2587 = fadd fast float %2586, %2570
  %2588 = fmul fast float %2583, %1759
  %2589 = fmul fast float %2585, %1759
  %2590 = fmul fast float %2587, %1759
  %2591 = fmul fast float %2588, %2588
  %2592 = fmul fast float %2589, %2589
  %2593 = fadd fast float %2591, %2592
  %2594 = fmul fast float %2590, %2590
  %2595 = fadd fast float %2593, %2594
  %2596 = call float @dx.op.unary.f32(i32 24, float %2595)  ; Sqrt(value)
  %2597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2598 = extractvalue %dx.types.CBufRet.f32 %2597, 0
  %2599 = fsub fast float %2596, %2598
  %2600 = extractvalue %dx.types.CBufRet.f32 %2597, 2
  %2601 = fmul fast float %2599, %2600
  %2602 = call float @dx.op.unary.f32(i32 7, float %2601)  ; Saturate(value)
  %2603 = fadd fast float %2602, -5.000000e-01
  %2604 = fmul fast float %2603, 2.000000e+00
  %2605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2606 = extractvalue %dx.types.CBufRet.f32 %2605, 2
  %2607 = call float @dx.op.binary.f32(i32 36, float %2606, float %2604)  ; FMin(a,b)
  %2608 = fsub fast float -0.000000e+00, %2606
  %2609 = fcmp fast ogt float %2607, %2608
  br i1 %2609, label %2610, label %2822, !dx.controlflow.hints !131

; <label>:2610                                    ; preds = %2554
  %2611 = fmul fast float %2607, 5.000000e-01
  %2612 = fadd fast float %2611, 5.000000e-01
  %2613 = call float @dx.op.unary.f32(i32 22, float %2612)  ; Frc(value)
  %2614 = call float @dx.op.unary.f32(i32 27, float %2613)  ; Round_ni(value)
  %2615 = call float @dx.op.unary.f32(i32 22, float %2613)  ; Frc(value)
  %2616 = fmul fast float %2615, 2.000000e+00
  %2617 = fadd fast float %2616, -1.000000e+00
  %2618 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %26, float %2558, float %2559, float %2614, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2619 = extractvalue %dx.types.ResRet.f32 %2618, 0
  %2620 = extractvalue %dx.types.ResRet.f32 %2618, 1
  %2621 = extractvalue %dx.types.ResRet.f32 %2618, 2
  %2622 = extractvalue %dx.types.ResRet.f32 %2618, 3
  %2623 = fadd fast float %2619, -5.000000e-01
  %2624 = fadd fast float %2621, -5.000000e-01
  %2625 = fmul fast float %2623, 0xBFD5555560000000
  %2626 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2624, float %2625)  ; FMad(a,b,c)
  %2627 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2620, float 0.000000e+00)  ; FMad(a,b,c)
  %2628 = fadd fast float %2627, %2622
  %2629 = fmul fast float %2623, -7.500000e-01
  %2630 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2624, float %2629)  ; FMad(a,b,c)
  %2631 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2620, float 0.000000e+00)  ; FMad(a,b,c)
  %2632 = fadd fast float %2631, %2622
  %2633 = call float @dx.op.binary.f32(i32 35, float %2626, float -1.000000e+00)  ; FMax(a,b)
  %2634 = call float @dx.op.binary.f32(i32 35, float %2628, float -1.000000e+00)  ; FMax(a,b)
  %2635 = call float @dx.op.binary.f32(i32 35, float %2630, float -1.000000e+00)  ; FMax(a,b)
  %2636 = call float @dx.op.binary.f32(i32 35, float %2632, float -1.000000e+00)  ; FMax(a,b)
  %2637 = call float @dx.op.binary.f32(i32 36, float %2633, float 1.000000e+00)  ; FMin(a,b)
  %2638 = call float @dx.op.binary.f32(i32 36, float %2634, float 1.000000e+00)  ; FMin(a,b)
  %2639 = call float @dx.op.binary.f32(i32 36, float %2635, float 1.000000e+00)  ; FMin(a,b)
  %2640 = call float @dx.op.binary.f32(i32 36, float %2636, float 1.000000e+00)  ; FMin(a,b)
  %2641 = fcmp fast olt float %2637, 0x3FEFFF8020000000
  br i1 %2641, label %2642, label %2757, !dx.controlflow.hints !132

; <label>:2642                                    ; preds = %2610
  %2643 = extractvalue %dx.types.CBufRet.f32 %2605, 3
  %2644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %2645 = extractvalue %dx.types.CBufRet.f32 %2644, 0
  %2646 = extractvalue %dx.types.CBufRet.f32 %2644, 1
  %2647 = extractvalue %dx.types.CBufRet.f32 %2644, 2
  %2648 = extractvalue %dx.types.CBufRet.f32 %2644, 3
  %2649 = fsub fast float %2645, %2637
  %2650 = fsub fast float %2646, %2638
  %2651 = fsub fast float %2647, %2639
  %2652 = fsub fast float %2648, %2640
  %2653 = fmul fast float %2649, %2643
  %2654 = fmul fast float %2650, %2643
  %2655 = fmul fast float %2651, %2643
  %2656 = fmul fast float %2652, %2643
  %2657 = fadd fast float %2653, %2637
  %2658 = fadd fast float %2654, %2638
  %2659 = fsub fast float -0.000000e+00, %2658
  %2660 = fadd fast float %2655, %2639
  %2661 = fadd fast float %2656, %2640
  %2662 = fmul fast float %2657, %2657
  %2663 = fsub fast float %2658, %2662
  %2664 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2663)  ; FMax(a,b)
  %2665 = fdiv fast float 1.000000e+00, %2664
  %2666 = fmul fast float %2658, %2657
  %2667 = fsub fast float %2660, %2666
  %2668 = fsub fast float %2617, %2657
  %2669 = fmul fast float %2617, %2617
  %2670 = fsub fast float %2669, %2658
  %2671 = fmul fast float %2668, %2665
  %2672 = fmul fast float %2671, %2667
  %2673 = fsub fast float %2670, %2672
  %2674 = fmul fast float %2658, %2658
  %2675 = fsub fast float %2661, %2674
  %2676 = fmul fast float %2667, %2667
  %2677 = fmul fast float %2676, %2665
  %2678 = fsub fast float %2675, %2677
  %2679 = fdiv fast float %2673, %2678
  %2680 = fmul fast float %2667, %2679
  %2681 = fsub fast float %2668, %2680
  %2682 = fmul fast float %2681, %2665
  %2683 = fmul fast float %2682, %2657
  %2684 = fsub fast float 1.000000e+00, %2683
  %2685 = fmul fast float %2658, %2679
  %2686 = fsub fast float %2684, %2685
  %2687 = fmul fast float %2682, %2682
  %2688 = fmul fast float %2679, 4.000000e+00
  %2689 = fmul fast float %2688, %2686
  %2690 = fsub fast float %2687, %2689
  %2691 = call float @dx.op.unary.f32(i32 24, float %2690)  ; Sqrt(value)
  %2692 = fcmp fast oge float %2682, 0.000000e+00
  %2693 = fsub fast float -0.000000e+00, %2691
  %2694 = select i1 %2692, float %2693, float %2691
  %2695 = fsub fast float %2694, %2682
  %2696 = fdiv fast float %2695, %2679
  %2697 = fdiv fast float %2686, %2695
  %2698 = fmul fast float %2696, 5.000000e-01
  %2699 = fmul fast float %2697, 2.000000e+00
  %2700 = select i1 %2692, float %2698, float %2699
  %2701 = select i1 %2692, float %2699, float %2698
  %2702 = call float @dx.op.binary.f32(i32 35, float %2700, float %2701)  ; FMax(a,b)
  %2703 = call float @dx.op.binary.f32(i32 36, float %2700, float %2701)  ; FMin(a,b)
  %2704 = fcmp fast ogt float %2617, %2703
  br i1 %2704, label %2705, label %2715

; <label>:2705                                    ; preds = %2642
  %2706 = fsub fast float %2617, %2703
  %2707 = fsub fast float %2702, %2703
  %2708 = fmul fast float %2706, %2707
  %2709 = fmul fast float %2702, %2617
  %2710 = fadd fast float %2702, %2617
  %2711 = fmul fast float %2710, %2657
  %2712 = fadd fast float %2709, %2658
  %2713 = fsub fast float %2712, %2711
  %2714 = fdiv fast float %2713, %2708
  br label %2715

; <label>:2715                                    ; preds = %2705, %2642
  %2716 = phi float [ %2714, %2705 ], [ 0.000000e+00, %2642 ]
  %2717 = fcmp fast ogt float %2617, %2702
  %2718 = fsub fast float %2617, %2702
  br i1 %2717, label %2719, label %2729

; <label>:2719                                    ; preds = %2715
  %2720 = fsub fast float %2702, %2703
  %2721 = fmul fast float %2720, %2718
  %2722 = fmul fast float %2703, %2617
  %2723 = fadd fast float %2703, %2617
  %2724 = fmul fast float %2723, %2657
  %2725 = fsub fast float %2659, %2722
  %2726 = fadd fast float %2725, %2724
  %2727 = fdiv fast float %2726, %2721
  %2728 = fadd fast float %2727, %2716
  br label %2729

; <label>:2729                                    ; preds = %2719, %2715
  %2730 = phi float [ %2728, %2719 ], [ %2716, %2715 ]
  %2731 = fsub fast float %2617, %2703
  %2732 = fmul fast float %2731, %2718
  %2733 = fmul fast float %2703, %2702
  %2734 = fadd fast float %2703, %2702
  %2735 = fmul fast float %2734, %2657
  %2736 = fadd fast float %2733, %2658
  %2737 = fsub fast float %2736, %2735
  %2738 = fdiv fast float %2737, %2732
  %2739 = call float @dx.op.unary.f32(i32 7, float %2730)  ; Saturate(value)
  %2740 = fcmp fast oeq float %1612, 0.000000e+00
  %2741 = extractvalue %dx.types.CBufRet.f32 %2605, 0
  %2742 = fcmp fast oeq float %2741, 0.000000e+00
  %2743 = or i1 %2740, %2742
  %2744 = fmul fast float %2741, 2.000000e+00
  %2745 = fadd fast float %2606, %2607
  %2746 = fdiv fast float %2745, %2744
  %2747 = call float @dx.op.unary.f32(i32 7, float %2746)  ; Saturate(value)
  %2748 = fmul fast float %2747, 2.000000e+00
  %2749 = fsub fast float 3.000000e+00, %2748
  %2750 = fmul fast float %2747, %2747
  %2751 = fmul fast float %2750, %2749
  %2752 = select i1 %2743, float 1.000000e+00, float %2751
  %2753 = fmul fast float %2738, %1612
  %2754 = fadd fast float %2739, %2753
  %2755 = call float @dx.op.unary.f32(i32 7, float %2754)  ; Saturate(value)
  %2756 = fmul fast float %2752, %2755
  br label %2757

; <label>:2757                                    ; preds = %2729, %2610
  %2758 = phi float [ %2756, %2729 ], [ 0.000000e+00, %2610 ]
  %2759 = fsub fast float 1.000000e+00, %2758
  %2760 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %26, float %2558, float %2559, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2761 = extractvalue %dx.types.ResRet.f32 %2760, 0
  %2762 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2763 = extractvalue %dx.types.CBufRet.i32 %2762, 2
  %2764 = icmp eq i32 %2763, 0
  br i1 %2764, label %2770, label %2765

; <label>:2765                                    ; preds = %2757
  %2766 = call float @dx.op.unary.f32(i32 7, float %2758)  ; Saturate(value)
  %2767 = fadd fast float %2761, -1.000000e+00
  %2768 = fmul fast float %2766, %2767
  %2769 = fadd fast float %2768, 1.000000e+00
  br label %2770

; <label>:2770                                    ; preds = %2765, %2757
  %2771 = phi float [ %2769, %2765 ], [ %2759, %2757 ]
  %2772 = call float @dx.op.binary.f32(i32 35, float %2761, float %2771)  ; FMax(a,b)
  %2773 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %2774 = extractvalue %dx.types.CBufRet.i32 %2773, 2
  %2775 = and i32 %2774, 1
  %2776 = icmp eq i32 %2775, 0
  %2777 = fcmp fast une float %2772, 1.000000e+00
  %2778 = and i1 %2777, %2776
  br i1 %2778, label %2779, label %2798

; <label>:2779                                    ; preds = %2770
  %2780 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %26, float %2558, float %2559, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2781 = extractvalue %dx.types.ResRet.f32 %2780, 0
  %2782 = extractvalue %dx.types.ResRet.f32 %2780, 1
  %2783 = extractvalue %dx.types.ResRet.f32 %2780, 2
  %2784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2785 = extractvalue %dx.types.CBufRet.f32 %2784, 1
  %2786 = fmul fast float %2785, %2781
  %2787 = fmul fast float %2785, %2782
  %2788 = fmul fast float %2785, %2783
  %2789 = fcmp fast ogt float %2761, 0x3FEFFF2E40000000
  %2790 = fsub fast float 1.000000e+00, %2772
  %2791 = fsub fast float 1.000000e+00, %2761
  %2792 = fdiv fast float %2790, %2791
  %2793 = call float @dx.op.unary.f32(i32 7, float %2792)  ; Saturate(value)
  %2794 = select i1 %2789, float 0.000000e+00, float %2793
  %2795 = fmul fast float %2786, %2794
  %2796 = fmul fast float %2787, %2794
  %2797 = fmul fast float %2788, %2794
  br label %2798

; <label>:2798                                    ; preds = %2779, %2770
  %2799 = phi float [ 0.000000e+00, %2770 ], [ %2795, %2779 ]
  %2800 = phi float [ 0.000000e+00, %2770 ], [ %2796, %2779 ]
  %2801 = phi float [ 0.000000e+00, %2770 ], [ %2797, %2779 ]
  %2802 = fmul fast float %2799, %1504
  %2803 = fmul fast float %2800, %1504
  %2804 = fmul fast float %2801, %1504
  %2805 = fmul fast float %2772, %2533
  %2806 = call float @dx.op.dot3.f32(i32 55, float %2772, float %2772, float %2772, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2807 = call float @dx.op.dot3.f32(i32 55, float %2802, float %2803, float %2804, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2808 = select i1 %131, float %2806, float %2772
  %2809 = select i1 %131, float 1.000000e+00, float %2772
  %2810 = select i1 %131, float %2807, float %2802
  %2811 = select i1 %131, float 0.000000e+00, float %2803
  %2812 = select i1 %131, float 0.000000e+00, float %2804
  %2813 = fmul fast float %2808, %2545
  %2814 = fmul fast float %2808, %2546
  %2815 = fmul fast float %2809, %2547
  %2816 = fadd fast float %2813, %2810
  %2817 = fadd fast float %2814, %2811
  %2818 = fadd fast float %2812, %2815
  %2819 = fmul fast float %2808, %2548
  %2820 = fmul fast float %2808, %2549
  %2821 = fmul fast float %2809, %2550
  br label %2822

; <label>:2822                                    ; preds = %2798, %2554, %2523, %1755
  %2823 = phi float [ %1760, %1755 ], [ %2545, %2523 ], [ %2816, %2798 ], [ %2545, %2554 ]
  %2824 = phi float [ %1761, %1755 ], [ %2546, %2523 ], [ %2817, %2798 ], [ %2546, %2554 ]
  %2825 = phi float [ %1762, %1755 ], [ %2547, %2523 ], [ %2818, %2798 ], [ %2547, %2554 ]
  %2826 = phi float [ %1763, %1755 ], [ %2548, %2523 ], [ %2819, %2798 ], [ %2548, %2554 ]
  %2827 = phi float [ %1764, %1755 ], [ %2549, %2523 ], [ %2820, %2798 ], [ %2549, %2554 ]
  %2828 = phi float [ %1765, %1755 ], [ %2550, %2523 ], [ %2821, %2798 ], [ %2550, %2554 ]
  %2829 = phi float [ %1766, %1755 ], [ %2533, %2523 ], [ %2805, %2798 ], [ %2533, %2554 ]
  %2830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2831 = extractvalue %dx.types.CBufRet.f32 %2830, 2
  %2832 = extractvalue %dx.types.CBufRet.f32 %2830, 3
  %2833 = fmul fast float %2831, %61
  %2834 = fmul fast float %2832, %62
  %2835 = call float @dx.op.unary.f32(i32 7, float %2833)  ; Saturate(value)
  %2836 = call float @dx.op.unary.f32(i32 7, float %2834)  ; Saturate(value)
  %2837 = select i1 %883, i32 2, i32 0
  %2838 = or i32 %2837, 1
  %2839 = uitofp i32 %2838 to float
  %2840 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %2835, float %2836, float %2839, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2841 = extractvalue %dx.types.ResRet.f32 %2840, 0
  %2842 = extractvalue %dx.types.ResRet.f32 %2840, 1
  %2843 = extractvalue %dx.types.ResRet.f32 %2840, 2
  %2844 = extractvalue %dx.types.ResRet.f32 %2840, 3
  %2845 = add nuw nsw i32 %2837, 2
  %2846 = uitofp i32 %2845 to float
  %2847 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %2835, float %2836, float %2846, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2848 = extractvalue %dx.types.ResRet.f32 %2847, 0
  %2849 = extractvalue %dx.types.ResRet.f32 %2847, 1
  %2850 = extractvalue %dx.types.ResRet.f32 %2847, 2
  %2851 = extractvalue %dx.types.ResRet.f32 %2847, 3
  %2852 = call float @dx.op.binary.f32(i32 35, float %2842, float %2843)  ; FMax(a,b)
  %2853 = call float @dx.op.binary.f32(i32 35, float %2841, float %2852)  ; FMax(a,b)
  %2854 = call float @dx.op.binary.f32(i32 35, float %2853, float %2844)  ; FMax(a,b)
  %2855 = call float @dx.op.binary.f32(i32 36, float %2849, float %2850)  ; FMin(a,b)
  %2856 = call float @dx.op.binary.f32(i32 36, float %2848, float %2855)  ; FMin(a,b)
  %2857 = call float @dx.op.binary.f32(i32 36, float %2856, float %2851)  ; FMin(a,b)
  %2858 = fmul fast float %2854, 2.550000e+02
  %2859 = fadd fast float %2858, 0x3F70101020000000
  %2860 = fptoui float %2859 to i32
  %2861 = fmul fast float %2857, 2.550000e+02
  %2862 = fadd fast float %2861, 0x3F70101020000000
  %2863 = fptoui float %2862 to i32
  %2864 = icmp ult i32 %2860, %2863
  br i1 %2864, label %2865, label %2911

; <label>:2865                                    ; preds = %2822
  %2866 = fcmp fast ogt float %53, 9.843750e-01
  %2867 = fadd fast float %1759, -4.000000e+00
  %2868 = select i1 %2866, float -4.000000e+00, float %2867
  %2869 = call float @dx.op.binary.f32(i32 35, float %2868, float 0.000000e+00)  ; FMax(a,b)
  %2870 = fadd fast float %1048, %2869
  %2871 = fmul fast float %2870, %1049
  %2872 = call float @dx.op.unary.f32(i32 23, float %2871)  ; Log(value)
  %2873 = fmul fast float %1050, %2872
  %2874 = fmul fast float %2873, %1058
  %2875 = call float @dx.op.unary.f32(i32 7, float %2874)  ; Saturate(value)
  %2876 = uitofp i32 %2860 to float
  %2877 = uitofp i32 %2863 to float
  %2878 = fadd fast float %2876, 5.000000e-01
  %2879 = fadd fast float %2877, 5.000000e-01
  %2880 = fmul fast float %1058, %2878
  %2881 = fmul fast float %1058, %2879
  %2882 = fadd fast float %2880, 0x3F0FFB4800000000
  %2883 = fadd fast float %2881, 0xBF0FFB4800000000
  %2884 = call float @dx.op.binary.f32(i32 35, float %2875, float %2882)  ; FMax(a,b)
  %2885 = call float @dx.op.binary.f32(i32 36, float %2884, float %2883)  ; FMin(a,b)
  %2886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %2887 = extractvalue %dx.types.CBufRet.f32 %2886, 1
  %2888 = extractvalue %dx.types.CBufRet.f32 %2886, 2
  %2889 = extractvalue %dx.types.CBufRet.f32 %2886, 0
  %2890 = select i1 %883, float %2889, float 0.000000e+00
  %2891 = fmul fast float %2887, %2885
  %2892 = fadd fast float %2890, %2891
  %2893 = fadd fast float %2890, %2888
  %2894 = fsub fast float %2887, %2888
  %2895 = fadd fast float %2894, %2890
  %2896 = call float @dx.op.binary.f32(i32 35, float %2892, float %2893)  ; FMax(a,b)
  %2897 = call float @dx.op.binary.f32(i32 36, float %2896, float %2895)  ; FMin(a,b)
  %2898 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %2835, float %2836, float %2897, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2899 = extractvalue %dx.types.ResRet.f32 %2898, 0
  %2900 = extractvalue %dx.types.ResRet.f32 %2898, 1
  %2901 = extractvalue %dx.types.ResRet.f32 %2898, 2
  %2902 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %2835, float %2836, float %2897, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2903 = extractvalue %dx.types.ResRet.f32 %2902, 0
  %2904 = extractvalue %dx.types.ResRet.f32 %2902, 1
  %2905 = extractvalue %dx.types.ResRet.f32 %2902, 2
  %2906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2907 = extractvalue %dx.types.CBufRet.f32 %2906, 1
  %2908 = fmul fast float %2907, %2903
  %2909 = fmul fast float %2907, %2904
  %2910 = fmul fast float %2907, %2905
  br label %2911

; <label>:2911                                    ; preds = %2865, %2822
  %2912 = phi float [ %2899, %2865 ], [ 1.000000e+00, %2822 ]
  %2913 = phi float [ %2900, %2865 ], [ 1.000000e+00, %2822 ]
  %2914 = phi float [ %2901, %2865 ], [ 1.000000e+00, %2822 ]
  %2915 = phi float [ %2908, %2865 ], [ 0.000000e+00, %2822 ]
  %2916 = phi float [ %2909, %2865 ], [ 0.000000e+00, %2822 ]
  %2917 = phi float [ %2910, %2865 ], [ 0.000000e+00, %2822 ]
  %2918 = fmul fast float %2915, %1504
  %2919 = fmul fast float %2916, %1504
  %2920 = fmul fast float %2917, %1504
  %2921 = fmul fast float %2912, %2829
  %2922 = call float @dx.op.dot3.f32(i32 55, float %2912, float %2913, float %2914, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2923 = call float @dx.op.dot3.f32(i32 55, float %2918, float %2919, float %2920, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2924 = select i1 %131, float %2922, float %2912
  %2925 = select i1 %131, float %2922, float %2913
  %2926 = select i1 %131, float 1.000000e+00, float %2914
  %2927 = select i1 %131, float %2923, float %2918
  %2928 = select i1 %131, float 0.000000e+00, float %2919
  %2929 = select i1 %131, float 0.000000e+00, float %2920
  %2930 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2931 = extractvalue %dx.types.CBufRet.i32 %2930, 3
  %2932 = and i32 %2931, 3
  %2933 = icmp ne i32 %2932, 0
  %2934 = and i32 %2931, 4
  %2935 = icmp ne i32 %2934, 0
  %2936 = and i1 %2933, %2935
  %2937 = and i1 %131, %2936
  br i1 %2937, label %2938, label %2944

; <label>:2938                                    ; preds = %2911
  %2939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2940 = extractvalue %dx.types.CBufRet.f32 %2939, 1
  %2941 = fadd fast float %2921, -1.000000e+00
  %2942 = fmul fast float %2940, %2941
  %2943 = fadd fast float %2942, 1.000000e+00
  br label %2944

; <label>:2944                                    ; preds = %2938, %2911
  %2945 = phi float [ %2943, %2938 ], [ %2921, %2911 ]
  %2946 = fadd fast float %2826, %2823
  %2947 = fmul fast float %2924, %2946
  %2948 = fadd fast float %2947, %2927
  %2949 = fadd fast float %2827, %2824
  %2950 = fmul fast float %2925, %2949
  %2951 = fadd fast float %2950, %2928
  %2952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2953 = extractvalue %dx.types.CBufRet.f32 %2952, 0
  br i1 %131, label %2954, label %2975

; <label>:2954                                    ; preds = %2944
  %2955 = fadd fast float %2948, %2951
  %2956 = fmul fast float %2953, %2955
  %2957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %2958 = extractvalue %dx.types.CBufRet.f32 %2957, 3
  %2959 = extractvalue %dx.types.CBufRet.f32 %1508, 1
  %2960 = fsub fast float %1511, %2959
  %2961 = extractvalue %dx.types.CBufRet.f32 %1508, 2
  %2962 = fmul fast float %2960, %2961
  %2963 = call float @dx.op.unary.f32(i32 7, float %2962)  ; Saturate(value)
  %2964 = fsub fast float %2963, %2958
  %2965 = fmul fast float %2964, %2945
  %2966 = fadd fast float %2965, %2958
  %2967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2968 = extractvalue %dx.types.CBufRet.f32 %2967, 0
  %2969 = fsub fast float %2966, %2968
  %2970 = fmul fast float %2969, 1.000000e+01
  %2971 = call float @dx.op.unary.f32(i32 7, float %2970)  ; Saturate(value)
  %2972 = fmul fast float %2971, %1503
  %2973 = fadd fast float %2972, %1504
  %2974 = fmul fast float %2973, %2966
  br label %2987

; <label>:2975                                    ; preds = %2944
  %2976 = fadd fast float %2828, %2825
  %2977 = fmul fast float %2926, %2976
  %2978 = fadd fast float %2977, %2929
  %2979 = fmul fast float %2953, %2948
  %2980 = fmul fast float %2953, %2951
  %2981 = fmul fast float %2953, %2978
  %2982 = call float @dx.op.binary.f32(i32 35, float %2980, float %2981)  ; FMax(a,b)
  %2983 = call float @dx.op.binary.f32(i32 35, float %2979, float %2982)  ; FMax(a,b)
  %2984 = call float @dx.op.binary.f32(i32 35, float %2983, float %1504)  ; FMax(a,b)
  %2985 = fcmp fast ugt float %2984, 0x3F10000000000000
  br i1 %2985, label %2987, label %2986

; <label>:2986                                    ; preds = %2975
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %2987

; <label>:2987                                    ; preds = %2986, %2975, %2954
  %2988 = phi float [ %2956, %2954 ], [ %2979, %2986 ], [ %2979, %2975 ]
  %2989 = phi float [ %2974, %2954 ], [ %2980, %2986 ], [ %2980, %2975 ]
  %2990 = phi float [ %2973, %2954 ], [ %2981, %2986 ], [ %2981, %2975 ]
  %2991 = phi float [ %2973, %2954 ], [ %1504, %2986 ], [ %1504, %2975 ]
  %2992 = fadd fast float %547, 0x3FE3C6EF40000000
  %2993 = call float @dx.op.unary.f32(i32 22, float %2992)  ; Frc(value)
  %2994 = call float @dx.op.unary.f32(i32 23, float %2988)  ; Log(value)
  %2995 = fadd fast float %2994, -7.000000e+00
  %2996 = call float @dx.op.unary.f32(i32 21, float %2995)  ; Exp(value)
  %2997 = fmul fast float %2993, 2.000000e+00
  %2998 = fadd fast float %2997, -1.000000e+00
  %2999 = fmul fast float %2996, %2998
  %3000 = fcmp fast ogt float %2988, 0.000000e+00
  %3001 = select i1 %3000, float %2999, float 0.000000e+00
  %3002 = fadd fast float %3001, %2988
  %3003 = fadd fast float %547, 0x3FF3C6EF40000000
  %3004 = call float @dx.op.unary.f32(i32 22, float %3003)  ; Frc(value)
  %3005 = call float @dx.op.unary.f32(i32 23, float %2989)  ; Log(value)
  %3006 = fadd fast float %3005, -7.000000e+00
  %3007 = call float @dx.op.unary.f32(i32 21, float %3006)  ; Exp(value)
  %3008 = fmul fast float %3004, 2.000000e+00
  %3009 = fadd fast float %3008, -1.000000e+00
  %3010 = fmul fast float %3007, %3009
  %3011 = fcmp fast ogt float %2989, 0.000000e+00
  %3012 = select i1 %3011, float %3010, float 0.000000e+00
  %3013 = fadd fast float %3012, %2989
  %3014 = fadd fast float %547, 0x3FFDAA66E0000000
  %3015 = call float @dx.op.unary.f32(i32 22, float %3014)  ; Frc(value)
  %3016 = call float @dx.op.unary.f32(i32 23, float %2990)  ; Log(value)
  %3017 = fadd fast float %3016, -6.000000e+00
  %3018 = call float @dx.op.unary.f32(i32 21, float %3017)  ; Exp(value)
  %3019 = fmul fast float %3015, 2.000000e+00
  %3020 = fadd fast float %3019, -1.000000e+00
  %3021 = fmul fast float %3018, %3020
  %3022 = fcmp fast ogt float %2990, 0.000000e+00
  %3023 = select i1 %3022, float %3021, float 0.000000e+00
  %3024 = fadd fast float %3023, %2990
  %3025 = select i1 %131, float %2989, float %3013
  %3026 = select i1 %131, float %2990, float %3024
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %3027 = call float @dx.op.binary.f32(i32 36, float %3002, float 3.225500e+04)  ; FMin(a,b)
  %3028 = call float @dx.op.binary.f32(i32 36, float %3025, float 3.225500e+04)  ; FMin(a,b)
  %3029 = call float @dx.op.binary.f32(i32 36, float %3026, float 3.225500e+04)  ; FMin(a,b)
  %3030 = call float @dx.op.binary.f32(i32 36, float %2991, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3027)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3028)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3029)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %3030)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %2991)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %2991)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %2991)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %2991)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

