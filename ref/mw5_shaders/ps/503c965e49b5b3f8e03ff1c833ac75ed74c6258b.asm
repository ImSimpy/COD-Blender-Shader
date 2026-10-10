;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 3   xyzw        3     NONE   float   xyzw
; TEXCOORD                 4   xyzw        4     NONE   float   xyzw
; TEXCOORD                 5   xy          5     NONE   float   xy  
; TEXCOORD                 8   xyzw        6     NONE   float   xyzw
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
; shader hash: 029d47c60d71cbcb48f9d1ec519c2e51
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
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 29, 30, 31, 32, 34 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 29, 30, 31, 32, 34 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 26, 27, 28, 29, 30, 31, 32, 34 }
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
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = alloca [3 x float], align 4
  %61 = alloca [3 x float], align 4
  %62 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %63 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 0
  %66 = fmul fast float %65, %56
  %67 = fmul fast float %65, %57
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 2
  %70 = extractvalue %dx.types.CBufRet.f32 %68, 3
  %71 = fmul fast float %66, 2.000000e+00
  %72 = fmul fast float %71, %69
  %73 = fmul fast float %67, 2.000000e+00
  %74 = fmul fast float %73, %70
  %75 = fsub fast float 1.000000e+00, %72
  %76 = fsub fast float 1.000000e+00, %74
  %77 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %78 = extractvalue %dx.types.CBufRet.f32 %77, 0
  %79 = extractvalue %dx.types.CBufRet.f32 %77, 1
  %80 = extractvalue %dx.types.CBufRet.f32 %77, 2
  %81 = fmul fast float %75, %78
  %82 = fmul fast float %75, %79
  %83 = fmul fast float %75, %80
  %84 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %85 = extractvalue %dx.types.CBufRet.f32 %84, 0
  %86 = extractvalue %dx.types.CBufRet.f32 %84, 1
  %87 = extractvalue %dx.types.CBufRet.f32 %84, 2
  %88 = fmul fast float %76, %85
  %89 = fmul fast float %76, %86
  %90 = fmul fast float %76, %87
  %91 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %92 = extractvalue %dx.types.CBufRet.f32 %91, 0
  %93 = extractvalue %dx.types.CBufRet.f32 %91, 1
  %94 = extractvalue %dx.types.CBufRet.f32 %91, 2
  %95 = fadd fast float %88, %92
  %96 = fadd fast float %95, %81
  %97 = fadd fast float %89, %93
  %98 = fadd fast float %97, %82
  %99 = fadd fast float %90, %94
  %100 = fadd fast float %99, %83
  %101 = fmul fast float %96, %59
  %102 = fmul fast float %98, %59
  %103 = fmul fast float %100, %59
  %104 = fmul fast float %47, %44
  %105 = fmul fast float %48, %43
  %106 = fsub fast float %104, %105
  %107 = fmul fast float %48, %42
  %108 = fmul fast float %46, %44
  %109 = fsub fast float %107, %108
  %110 = fmul fast float %46, %43
  %111 = fmul fast float %47, %42
  %112 = fsub fast float %110, %111
  %113 = fmul fast float %106, %45
  %114 = fmul fast float %109, %45
  %115 = fmul fast float %112, %45
  %116 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %117 = extractvalue %dx.types.CBufRet.i32 %116, 3
  %118 = and i32 %117, 3
  %119 = icmp ne i32 %118, 0
  %120 = and i32 %117, 4
  %121 = icmp ne i32 %120, 0
  %122 = and i1 %119, %121
  br i1 %122, label %123, label %132

; <label>:123                                     ; preds = %0
  %124 = fmul fast float %70, %67
  %125 = fmul fast float %69, %66
  %126 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %26, float %125, float %124, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %127 = extractvalue %dx.types.ResRet.f32 %126, 0
  %128 = fsub fast float 1.000000e+00, %127
  %129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %130 = extractvalue %dx.types.CBufRet.f32 %129, 0
  %131 = fcmp fast olt float %128, %130
  br label %135

; <label>:132                                     ; preds = %0
  %133 = icmp eq i32 %120, 0
  %134 = and i1 %119, %133
  br label %135

; <label>:135                                     ; preds = %132, %123
  %136 = phi i1 [ %131, %123 ], [ %134, %132 ]
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 3
  %140 = fmul fast float %138, %66
  %141 = fmul fast float %139, %67
  %142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %143 = extractvalue %dx.types.ResRet.i32 %142, 0
  %144 = and i32 %143, 114688
  %145 = icmp ne i32 %144, 0
  %146 = select i1 %145, float %140, float 0.000000e+00
  %147 = select i1 %145, float %141, float 0.000000e+00
  %148 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %27, float %146, float %147, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %149 = extractvalue %dx.types.ResRet.f32 %148, 0
  %150 = fmul fast float %149, 2.550000e+02
  %151 = fptoui float %150 to i32
  %152 = select i1 %145, i32 %151, i32 0
  %153 = mul i32 %30, 208
  %154 = add i32 %153, 188
  %155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %154, i32 undef)  ; BufferLoad(srv,index,wot)
  %156 = extractvalue %dx.types.ResRet.i32 %155, 0
  %157 = and i32 %117, 114688
  %158 = and i32 %117, 8
  %159 = icmp ne i32 %158, 0
  %160 = or i1 %136, %159
  %161 = select i1 %160, i32 %157, i32 16384
  %162 = and i32 %161, %156
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %165

; <label>:164                                     ; preds = %135
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %165

; <label>:165                                     ; preds = %164, %135
  %166 = and i32 %156, 512
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %192, label %168

; <label>:168                                     ; preds = %165
  %169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = extractvalue %dx.types.CBufRet.f32 %169, 2
  %171 = extractvalue %dx.types.CBufRet.f32 %169, 3
  %172 = fmul fast float %170, %66
  %173 = fmul fast float %171, %67
  %174 = extractvalue %dx.types.CBufRet.f32 %169, 0
  %175 = extractvalue %dx.types.CBufRet.f32 %169, 1
  %176 = fdiv fast float %174, %175
  %177 = fcmp fast ogt float %176, 0x3FFC71C720000000
  br i1 %177, label %178, label %184

; <label>:178                                     ; preds = %168
  %179 = fdiv fast float 0x3FFC71C720000000, %176
  %180 = fmul fast float %179, %173
  %181 = fsub fast float 1.000000e+00, %179
  %182 = fmul fast float %181, 5.000000e-01
  %183 = fadd fast float %182, %180
  br label %192

; <label>:184                                     ; preds = %168
  %185 = fcmp fast olt float %176, 0x3FFC71C720000000
  br i1 %185, label %186, label %192

; <label>:186                                     ; preds = %184
  %187 = fmul fast float %172, 5.625000e-01
  %188 = fmul fast float %187, %176
  %189 = fmul fast float %176, 2.812500e-01
  %190 = fsub fast float 5.000000e-01, %189
  %191 = fadd fast float %190, %188
  br label %192

; <label>:192                                     ; preds = %186, %184, %178, %165
  %193 = phi float [ %50, %165 ], [ %172, %178 ], [ %191, %186 ], [ %172, %184 ]
  %194 = phi float [ %51, %165 ], [ %183, %178 ], [ %173, %186 ], [ %173, %184 ]
  %195 = and i32 %156, 16
  %196 = icmp ne i32 %195, 0
  %197 = select i1 %196, float 1.000000e+00, float %55
  %198 = add i32 %31, 100
  %199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %198, i32 undef)  ; BufferLoad(srv,index,wot)
  %200 = extractvalue %dx.types.ResRet.i32 %199, 0
  %201 = add i32 %200, 0
  %202 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %201, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %204 = extractvalue %dx.types.CBufRet.f32 %203, 2
  %205 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %202, %dx.types.Handle %63, float %193, float %194, float undef, float undef, i32 0, i32 0, i32 undef, float %204, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %206 = extractvalue %dx.types.ResRet.f32 %205, 0
  %207 = fmul fast float %206, %197
  %208 = icmp eq i32 %195, 0
  br i1 %208, label %228, label %209, !dx.controlflow.hints !69

; <label>:209                                     ; preds = %192
  %210 = add i32 %153, 64
  %211 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %210, i32 undef)  ; BufferLoad(srv,index,wot)
  %212 = extractvalue %dx.types.ResRet.f32 %211, 0
  %213 = fadd fast float %212, 1.000000e+00
  %214 = fmul fast float %213, %55
  %215 = fsub fast float %214, %212
  %216 = fsub fast float %213, %215
  %217 = call float @dx.op.unary.f32(i32 7, float %216)  ; Saturate(value)
  %218 = fsub fast float 1.000000e+00, %214
  %219 = call float @dx.op.unary.f32(i32 7, float %218)  ; Saturate(value)
  %220 = fsub fast float %217, %219
  %221 = fsub fast float %207, %219
  %222 = fdiv fast float %221, %220
  %223 = call float @dx.op.unary.f32(i32 7, float %222)  ; Saturate(value)
  %224 = fmul fast float %223, 2.000000e+00
  %225 = fsub fast float 3.000000e+00, %224
  %226 = fmul fast float %223, %223
  %227 = fmul fast float %226, %225
  br label %228

; <label>:228                                     ; preds = %209, %192
  %229 = phi float [ %227, %209 ], [ %207, %192 ]
  %230 = fcmp fast ogt float %229, 0.000000e+00
  br i1 %230, label %232, label %231

; <label>:231                                     ; preds = %228
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %232

; <label>:232                                     ; preds = %231, %228
  %233 = call float @dx.op.unary.f32(i32 7, float %229)  ; Saturate(value)
  %234 = fmul fast float %66, 5.000000e-01
  %235 = fmul fast float %67, 5.000000e-01
  %236 = fptosi float %234 to i32
  %237 = fptosi float %235 to i32
  %238 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %236, i32 %237, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %239 = extractvalue %dx.types.ResRet.i32 %238, 0
  %240 = lshr i32 %239, 18
  %241 = uitofp i32 %240 to float
  %242 = fmul fast float %241, 0x3F4C00EBA0000000
  %243 = call float @dx.op.unary.f32(i32 21, float %242)  ; Exp(value)
  %244 = fadd fast float %243, -1.000000e+00
  %245 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %246 = extractvalue %dx.types.Dimensions %245, 0
  %247 = sitofp i32 %246 to float
  %248 = extractvalue %dx.types.Dimensions %245, 1
  %249 = sitofp i32 %248 to float
  %250 = fcmp fast oge float %234, %247
  %251 = fcmp fast oge float %235, %249
  %252 = or i1 %250, %251
  %253 = select i1 %252, float 0x4197782600000000, float %244
  %254 = fsub fast float %253, %59
  %255 = fcmp fast ogt float %254, 0.000000e+00
  %256 = and i32 %152, -2
  %257 = icmp eq i32 %256, 2
  %258 = and i1 %257, %255
  %259 = xor i1 %255, true
  %260 = icmp eq i32 %152, 1
  %261 = and i1 %260, %259
  %262 = or i1 %258, %261
  %263 = and i32 %156, 262144
  %264 = icmp ne i32 %263, 0
  %265 = and i1 %264, %262
  %266 = xor i1 %262, true
  %267 = and i32 %156, 131072
  %268 = icmp ne i32 %267, 0
  %269 = and i1 %268, %266
  %270 = or i1 %265, %269
  br i1 %270, label %271, label %272

; <label>:271                                     ; preds = %232
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %272

; <label>:272                                     ; preds = %271, %232
  %273 = and i32 %156, 32
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %552, label %275, !dx.controlflow.hints !70

; <label>:275                                     ; preds = %272
  %276 = add i32 %153, 80
  %277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.f32 %277, 0
  %279 = extractvalue %dx.types.ResRet.f32 %277, 1
  %280 = extractvalue %dx.types.ResRet.f32 %277, 2
  %281 = extractvalue %dx.types.ResRet.f32 %277, 3
  %282 = add i32 %153, 96
  %283 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.f32 %283, 0
  %285 = extractvalue %dx.types.ResRet.f32 %283, 1
  %286 = extractvalue %dx.types.ResRet.f32 %283, 2
  %287 = add i32 %153, 112
  %288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.f32 %288, 0
  %290 = extractvalue %dx.types.ResRet.f32 %288, 1
  %291 = extractvalue %dx.types.ResRet.f32 %288, 2
  %292 = extractvalue %dx.types.ResRet.f32 %288, 3
  %293 = add i32 %153, 128
  %294 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.f32 %294, 0
  %296 = extractvalue %dx.types.ResRet.f32 %294, 1
  %297 = extractvalue %dx.types.ResRet.f32 %294, 2
  %298 = extractvalue %dx.types.ResRet.f32 %294, 3
  %299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %154, i32 undef)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.i32 %299, 0
  %301 = and i32 %300, 4096
  %302 = icmp ne i32 %301, 0
  %303 = fcmp fast une float %286, 0.000000e+00
  %304 = and i32 %300, 64
  %305 = icmp ne i32 %304, 0
  %306 = and i32 %300, 128
  %307 = icmp eq i32 %306, 0
  %308 = and i32 %300, 2048
  %309 = icmp eq i32 %308, 0
  %310 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %14, i32 0)  ; GetDimensions(handle,mipLevel)
  %311 = extractvalue %dx.types.Dimensions %310, 0
  %312 = sitofp i32 %311 to float
  %313 = extractvalue %dx.types.Dimensions %310, 1
  %314 = sitofp i32 %313 to float
  %315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %316 = extractvalue %dx.types.CBufRet.f32 %315, 2
  %317 = extractvalue %dx.types.CBufRet.f32 %315, 3
  %318 = fmul fast float %316, %66
  %319 = fmul fast float %317, %67
  %320 = fmul fast float %318, %312
  %321 = fmul fast float %319, %314
  %322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %323 = extractvalue %dx.types.CBufRet.f32 %322, 1
  %324 = fsub fast float -0.000000e+00, %323
  %325 = fptoui float %324 to i32
  %326 = fptoui float %320 to i32
  %327 = fptoui float %321 to i32
  %328 = and i32 %325, 31
  %329 = lshr i32 %326, %328
  %330 = lshr i32 %327, %328
  %331 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 %325, i32 %329, i32 %330, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %332 = extractvalue %dx.types.ResRet.f32 %331, 0
  %333 = fcmp fast ogt float %332, -1.000000e+00
  %334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %335 = extractvalue %dx.types.CBufRet.f32 %334, 1
  %336 = select i1 %333, float %335, float 1.000000e+00
  %337 = fadd fast float %332, 1.000000e+00
  %338 = fmul fast float %336, %337
  %339 = call float @dx.op.unary.f32(i32 6, float %338)  ; FAbs(value)
  %340 = extractvalue %dx.types.CBufRet.f32 %334, 3
  %341 = fcmp fast oge float %339, %340
  %342 = select i1 %341, float 0x4197782600000000, float %339
  br i1 %309, label %432, label %343, !dx.controlflow.hints !71

; <label>:343                                     ; preds = %275
  %344 = fmul fast float %71, %316
  %345 = fmul fast float %73, %317
  %346 = fsub fast float 1.000000e+00, %344
  %347 = fsub fast float 1.000000e+00, %345
  %348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %349 = extractvalue %dx.types.CBufRet.f32 %348, 0
  %350 = extractvalue %dx.types.CBufRet.f32 %348, 1
  %351 = extractvalue %dx.types.CBufRet.f32 %348, 2
  %352 = fmul fast float %346, %349
  %353 = fmul fast float %346, %350
  %354 = fmul fast float %346, %351
  %355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %356 = extractvalue %dx.types.CBufRet.f32 %355, 0
  %357 = extractvalue %dx.types.CBufRet.f32 %355, 1
  %358 = extractvalue %dx.types.CBufRet.f32 %355, 2
  %359 = fmul fast float %347, %356
  %360 = fmul fast float %347, %357
  %361 = fmul fast float %347, %358
  %362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %363 = extractvalue %dx.types.CBufRet.f32 %362, 0
  %364 = extractvalue %dx.types.CBufRet.f32 %362, 1
  %365 = extractvalue %dx.types.CBufRet.f32 %362, 2
  %366 = fadd fast float %359, %363
  %367 = fadd fast float %366, %352
  %368 = fadd fast float %360, %364
  %369 = fadd fast float %368, %353
  %370 = fadd fast float %361, %365
  %371 = fadd fast float %370, %354
  %372 = fmul fast float %367, %342
  %373 = fmul fast float %369, %342
  %374 = fmul fast float %371, %342
  %375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %376 = extractvalue %dx.types.CBufRet.f32 %375, 0
  %377 = extractvalue %dx.types.CBufRet.f32 %375, 1
  %378 = extractvalue %dx.types.CBufRet.f32 %375, 2
  %379 = fsub fast float %376, %32
  %380 = fadd fast float %379, %372
  %381 = fsub fast float %377, %33
  %382 = fadd fast float %381, %373
  %383 = fsub fast float %378, %34
  %384 = fadd fast float %383, %374
  %385 = fmul fast float %35, %35
  %386 = call float @dx.op.dot3.f32(i32 55, float %380, float %382, float %384, float %380, float %382, float %384)  ; Dot3(ax,ay,az,bx,by,bz)
  %387 = fsub fast float %385, %386
  %388 = fmul fast float %285, %385
  %389 = fmul fast float %284, %385
  %390 = fcmp fast olt float %387, %388
  %391 = fcmp fast ogt float %387, %389
  %392 = or i1 %390, %391
  %393 = select i1 %392, float 0.000000e+00, float %387
  %394 = fsub fast float %284, %285
  %395 = fmul fast float %394, %385
  %396 = fsub fast float %393, %388
  %397 = fdiv fast float %396, %395
  %398 = call float @dx.op.unary.f32(i32 7, float %397)  ; Saturate(value)
  %399 = fmul fast float %398, 2.000000e+00
  %400 = fsub fast float 3.000000e+00, %399
  %401 = fmul fast float %398, %398
  %402 = fmul fast float %401, %400
  %403 = fmul fast float %289, %52
  %404 = fmul fast float %290, %53
  %405 = fmul fast float %291, %54
  %406 = fsub fast float %403, %295
  %407 = fsub fast float %404, %296
  %408 = fsub fast float %405, %297
  %409 = fsub fast float %292, %298
  %410 = fmul fast float %402, %406
  %411 = fmul fast float %402, %407
  %412 = fmul fast float %402, %408
  %413 = fmul fast float %402, %409
  %414 = fadd fast float %410, %295
  %415 = fadd fast float %411, %296
  %416 = fadd fast float %412, %297
  %417 = fadd fast float %413, %298
  %418 = fmul fast float %289, %36
  %419 = fmul fast float %290, %37
  %420 = fmul fast float %291, %38
  %421 = fsub fast float %418, %295
  %422 = fsub fast float %419, %296
  %423 = fsub fast float %420, %297
  %424 = fmul fast float %402, %421
  %425 = fmul fast float %402, %422
  %426 = fmul fast float %402, %423
  %427 = fadd fast float %424, %295
  %428 = fadd fast float %425, %296
  %429 = fadd fast float %426, %297
  %430 = fmul fast float %278, %278
  %431 = fmul fast float %430, %393
  br label %539

; <label>:432                                     ; preds = %275
  %433 = and i32 %300, 256
  %434 = icmp eq i32 %433, 0
  %435 = fsub fast float %342, %59
  br i1 %434, label %496, label %436

; <label>:436                                     ; preds = %432
  %437 = fadd fast float %284, %59
  %438 = fcmp fast olt float %342, %59
  %439 = fcmp fast ogt float %342, %437
  %440 = or i1 %438, %439
  %441 = select i1 %440, float 0.000000e+00, float %435
  %442 = call float @dx.op.unary.f32(i32 83, float %342)  ; DerivCoarseX(value)
  %443 = call float @dx.op.unary.f32(i32 84, float %342)  ; DerivCoarseY(value)
  %444 = fmul fast float %442, %442
  %445 = fmul fast float %443, %443
  %446 = fadd fast float %445, %444
  %447 = call float @dx.op.unary.f32(i32 24, float %446)  ; Sqrt(value)
  %448 = extractvalue %dx.types.CBufRet.f32 %322, 2
  %449 = fmul fast float %448, %447
  %450 = call float @dx.op.unary.f32(i32 7, float %449)  ; Saturate(value)
  %451 = fmul fast float %450, %285
  %452 = fdiv fast float %435, %451
  %453 = call float @dx.op.unary.f32(i32 7, float %452)  ; Saturate(value)
  %454 = fmul fast float %453, 2.000000e+00
  %455 = fsub fast float 3.000000e+00, %454
  %456 = fmul fast float %453, %453
  %457 = fmul fast float %456, %455
  %458 = fsub fast float %342, %437
  %459 = fadd fast float %458, %451
  %460 = fdiv fast float %459, %451
  %461 = call float @dx.op.unary.f32(i32 7, float %460)  ; Saturate(value)
  %462 = fmul fast float %461, 2.000000e+00
  %463 = fsub fast float 3.000000e+00, %462
  %464 = fmul fast float %461, %461
  %465 = fmul fast float %464, %463
  %466 = fsub fast float %457, %465
  %467 = fmul fast float %289, %52
  %468 = fmul fast float %290, %53
  %469 = fmul fast float %291, %54
  %470 = fsub fast float %467, %295
  %471 = fsub fast float %468, %296
  %472 = fsub fast float %469, %297
  %473 = fsub fast float %292, %298
  %474 = fmul fast float %466, %470
  %475 = fmul fast float %466, %471
  %476 = fmul fast float %466, %472
  %477 = fmul fast float %466, %473
  %478 = fadd fast float %474, %295
  %479 = fadd fast float %475, %296
  %480 = fadd fast float %476, %297
  %481 = fadd fast float %477, %298
  %482 = fmul fast float %289, %36
  %483 = fmul fast float %290, %37
  %484 = fmul fast float %291, %38
  %485 = fsub fast float %482, %295
  %486 = fsub fast float %483, %296
  %487 = fsub fast float %484, %297
  %488 = fmul fast float %466, %485
  %489 = fmul fast float %466, %486
  %490 = fmul fast float %466, %487
  %491 = fadd fast float %488, %295
  %492 = fadd fast float %489, %296
  %493 = fadd fast float %490, %297
  %494 = fmul fast float %441, %278
  %495 = call float @dx.op.unary.f32(i32 6, float %494)  ; FAbs(value)
  br label %539

; <label>:496                                     ; preds = %432
  br i1 %303, label %497, label %510

; <label>:497                                     ; preds = %496
  %498 = fdiv fast float 5.000000e+01, %35
  %499 = select i1 %305, float %498, float 1.000000e+00
  %500 = fmul fast float %499, %278
  %501 = fmul fast float %50, 2.000000e+00
  %502 = fmul fast float %51, 2.000000e+00
  %503 = fadd fast float %501, -1.000000e+00
  %504 = fadd fast float %502, -1.000000e+00
  %505 = call float @dx.op.dot2.f32(i32 54, float %503, float %504, float %503, float %504)  ; Dot2(ax,ay,bx,by)
  %506 = fmul fast float %286, %35
  %507 = fmul fast float %506, %505
  %508 = fsub fast float %435, %507
  %509 = fmul fast float %500, %508
  br label %539

; <label>:510                                     ; preds = %496
  br i1 %307, label %531, label %511

; <label>:511                                     ; preds = %510
  %512 = fmul fast float %35, 0x3F947AE140000000
  %513 = select i1 %305, float %512, float 1.000000e+00
  %514 = fdiv fast float 1.000000e+00, %513
  %515 = fmul fast float %513, %279
  %516 = fmul fast float %513, %280
  %517 = fmul fast float %514, %281
  %518 = call float @dx.op.unary.f32(i32 6, float %435)  ; FAbs(value)
  %519 = fcmp fast olt float %518, %515
  br i1 %519, label %520, label %524, !dx.controlflow.hints !72

; <label>:520                                     ; preds = %511
  %521 = fmul fast float %514, %278
  %522 = fmul fast float %521, %518
  %523 = call float @dx.op.unary.f32(i32 6, float %522)  ; FAbs(value)
  br label %539

; <label>:524                                     ; preds = %511
  %525 = fcmp fast ogt float %518, %516
  br i1 %525, label %526, label %539

; <label>:526                                     ; preds = %524
  %527 = fsub fast float %518, %516
  %528 = fmul fast float %517, %527
  %529 = call float @dx.op.unary.f32(i32 6, float %528)  ; FAbs(value)
  %530 = fsub fast float 1.000000e+00, %529
  br label %539

; <label>:531                                     ; preds = %510
  %532 = fdiv fast float 5.000000e+01, %35
  %533 = select i1 %305, float %532, float 1.000000e+00
  %534 = fmul fast float %533, %278
  %535 = call float @dx.op.unary.f32(i32 6, float %254)  ; FAbs(value)
  %536 = select i1 %302, float %535, float 0x47EFFFFFE0000000
  %537 = call float @dx.op.binary.f32(i32 36, float %435, float %536)  ; FMin(a,b)
  %538 = fmul fast float %534, %537
  br label %539

; <label>:539                                     ; preds = %531, %526, %524, %520, %497, %436, %343
  %540 = phi float [ %431, %343 ], [ %495, %436 ], [ %509, %497 ], [ %538, %531 ], [ %523, %520 ], [ %530, %526 ], [ %518, %524 ]
  %541 = phi float [ %427, %343 ], [ %491, %436 ], [ %36, %497 ], [ %36, %531 ], [ %36, %520 ], [ %36, %526 ], [ %36, %524 ]
  %542 = phi float [ %428, %343 ], [ %492, %436 ], [ %37, %497 ], [ %37, %531 ], [ %37, %520 ], [ %37, %526 ], [ %37, %524 ]
  %543 = phi float [ %429, %343 ], [ %493, %436 ], [ %38, %497 ], [ %38, %531 ], [ %38, %520 ], [ %38, %526 ], [ %38, %524 ]
  %544 = phi float [ %414, %343 ], [ %478, %436 ], [ %52, %497 ], [ %52, %531 ], [ %52, %520 ], [ %52, %526 ], [ %52, %524 ]
  %545 = phi float [ %415, %343 ], [ %479, %436 ], [ %53, %497 ], [ %53, %531 ], [ %53, %520 ], [ %53, %526 ], [ %53, %524 ]
  %546 = phi float [ %416, %343 ], [ %480, %436 ], [ %54, %497 ], [ %54, %531 ], [ %54, %520 ], [ %54, %526 ], [ %54, %524 ]
  %547 = phi float [ %417, %343 ], [ %481, %436 ], [ 1.000000e+00, %497 ], [ 1.000000e+00, %531 ], [ 1.000000e+00, %520 ], [ 1.000000e+00, %526 ], [ 1.000000e+00, %524 ]
  %548 = call float @dx.op.unary.f32(i32 7, float %540)  ; Saturate(value)
  %549 = fmul fast float %548, %55
  %550 = fmul fast float %547, %233
  %551 = fmul fast float %550, %548
  br label %552

; <label>:552                                     ; preds = %539, %272
  %553 = phi float [ %544, %539 ], [ %52, %272 ]
  %554 = phi float [ %545, %539 ], [ %53, %272 ]
  %555 = phi float [ %546, %539 ], [ %54, %272 ]
  %556 = phi float [ %551, %539 ], [ %233, %272 ]
  %557 = phi float [ %549, %539 ], [ %55, %272 ]
  %558 = phi float [ %541, %539 ], [ %36, %272 ]
  %559 = phi float [ %542, %539 ], [ %37, %272 ]
  %560 = phi float [ %543, %539 ], [ %38, %272 ]
  %561 = fmul fast float %558, %39
  %562 = fmul fast float %559, %39
  %563 = fmul fast float %560, %39
  %564 = fmul fast float %558, %49
  %565 = fmul fast float %559, %49
  %566 = fmul fast float %560, %49
  %567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %568 = extractvalue %dx.types.CBufRet.f32 %567, 2
  %569 = fptosi float %59 to i32
  %570 = sitofp i32 %569 to float
  %571 = fadd fast float %568, %570
  %572 = fmul fast float %571, 0x3FE3C6EF40000000
  %573 = frem fast float %66, 2.560000e+02
  %574 = frem fast float %67, 2.560000e+02
  %575 = fptoui float %573 to i32
  %576 = fptoui float %574 to i32
  %577 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %575, i32 %576, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %578 = extractvalue %dx.types.ResRet.f32 %577, 0
  %579 = fadd fast float %578, %572
  %580 = call float @dx.op.unary.f32(i32 22, float %579)  ; Frc(value)
  %581 = and i32 %156, 1
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %643, label %583, !dx.controlflow.hints !73

; <label>:583                                     ; preds = %552
  %584 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %153, i32 undef)  ; BufferLoad(srv,index,wot)
  %585 = extractvalue %dx.types.ResRet.f32 %584, 2
  %586 = extractvalue %dx.types.ResRet.f32 %584, 3
  %587 = add i32 %153, 16
  %588 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %587, i32 undef)  ; BufferLoad(srv,index,wot)
  %589 = extractvalue %dx.types.ResRet.f32 %588, 0
  %590 = extractvalue %dx.types.ResRet.f32 %588, 1
  %591 = extractvalue %dx.types.ResRet.f32 %588, 2
  %592 = add i32 %153, 32
  %593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %592, i32 undef)  ; BufferLoad(srv,index,wot)
  %594 = extractvalue %dx.types.ResRet.f32 %593, 0
  %595 = extractvalue %dx.types.ResRet.f32 %593, 1
  %596 = extractvalue %dx.types.ResRet.f32 %593, 2
  %597 = and i32 %156, 2
  %598 = icmp eq i32 %597, 0
  %599 = call float @dx.op.dot3.f32(i32 55, float %46, float %47, float %48, float %46, float %47, float %48)  ; Dot3(ax,ay,az,bx,by,bz)
  %600 = call float @dx.op.unary.f32(i32 25, float %599)  ; Rsqrt(value)
  %601 = fmul fast float %600, %46
  %602 = fmul fast float %600, %47
  %603 = fmul fast float %600, %48
  %604 = call float @dx.op.dot3.f32(i32 55, float %101, float %102, float %103, float %101, float %102, float %103)  ; Dot3(ax,ay,az,bx,by,bz)
  %605 = call float @dx.op.unary.f32(i32 25, float %604)  ; Rsqrt(value)
  %606 = fmul fast float %605, %101
  %607 = fmul fast float %605, %102
  %608 = fmul fast float %605, %103
  %609 = call float @dx.op.dot3.f32(i32 55, float %606, float %607, float %608, float %601, float %602, float %603)  ; Dot3(ax,ay,az,bx,by,bz)
  %610 = fmul fast float %609, %609
  %611 = fmul fast float %610, %585
  %612 = fadd fast float %611, %586
  %613 = call float @dx.op.unary.f32(i32 7, float %612)  ; Saturate(value)
  br i1 %598, label %614, label %624, !dx.controlflow.hints !74

; <label>:614                                     ; preds = %583
  %615 = extractvalue %dx.types.ResRet.f32 %584, 1
  %616 = extractvalue %dx.types.ResRet.f32 %584, 0
  %617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %618 = extractvalue %dx.types.CBufRet.f32 %617, 3
  %619 = fmul fast float %618, %604
  %620 = fsub fast float %616, %619
  %621 = fmul fast float %620, %615
  %622 = call float @dx.op.unary.f32(i32 7, float %621)  ; Saturate(value)
  %623 = fmul fast float %622, %613
  br label %624

; <label>:624                                     ; preds = %614, %583
  %625 = phi float [ %623, %614 ], [ %613, %583 ]
  %626 = fsub fast float %589, %594
  %627 = fsub fast float %590, %595
  %628 = fsub fast float %591, %596
  %629 = fmul fast float %625, %626
  %630 = fmul fast float %625, %627
  %631 = fmul fast float %625, %628
  %632 = fadd fast float %629, %594
  %633 = fadd fast float %630, %595
  %634 = fadd fast float %631, %596
  %635 = fmul fast float %632, %553
  %636 = fmul fast float %633, %554
  %637 = fmul fast float %634, %555
  %638 = fmul fast float %632, %561
  %639 = fmul fast float %633, %562
  %640 = fmul fast float %634, %563
  %641 = fmul fast float %625, %556
  %642 = fmul fast float %625, %557
  br label %643

; <label>:643                                     ; preds = %624, %552
  %644 = phi float [ %635, %624 ], [ %553, %552 ]
  %645 = phi float [ %636, %624 ], [ %554, %552 ]
  %646 = phi float [ %637, %624 ], [ %555, %552 ]
  %647 = phi float [ %641, %624 ], [ %556, %552 ]
  %648 = phi float [ %642, %624 ], [ %557, %552 ]
  %649 = phi float [ %638, %624 ], [ %561, %552 ]
  %650 = phi float [ %639, %624 ], [ %562, %552 ]
  %651 = phi float [ %640, %624 ], [ %563, %552 ]
  %652 = add i32 %31, 88
  %653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %652, i32 undef)  ; BufferLoad(srv,index,wot)
  %654 = extractvalue %dx.types.ResRet.i32 %653, 0
  %655 = add i32 %654, 0
  %656 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %655, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %657 = add i32 %31, 24
  %658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %657, i32 undef)  ; BufferLoad(srv,index,wot)
  %659 = extractvalue %dx.types.ResRet.i32 %658, 0
  %660 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %656, %dx.types.Handle %62, float %193, float %194, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %661 = extractvalue %dx.types.ResRet.f32 %660, 0
  %662 = extractvalue %dx.types.ResRet.f32 %660, 1
  %663 = extractvalue %dx.types.ResRet.f32 %660, 2
  %664 = extractvalue %dx.types.ResRet.f32 %660, 3
  %665 = and i32 %659, 255
  %666 = uitofp i32 %665 to float
  %667 = lshr i32 %659, 8
  %668 = and i32 %667, 255
  %669 = uitofp i32 %668 to float
  %670 = fmul fast float %664, %666
  %671 = fadd fast float %670, %669
  %672 = fmul fast float %671, 0x3F70101000000000
  %673 = add i32 %31, 56
  %674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %673, i32 undef)  ; BufferLoad(srv,index,wot)
  %675 = extractvalue %dx.types.ResRet.i32 %674, 0
  %676 = and i32 %675, 255
  %677 = uitofp i32 %676 to float
  %678 = fmul fast float %677, 0x3F70101020000000
  %679 = lshr i32 %675, 8
  %680 = and i32 %679, 255
  %681 = uitofp i32 %680 to float
  %682 = fmul fast float %681, 0x3F70101020000000
  %683 = lshr i32 %675, 16
  %684 = and i32 %683, 255
  %685 = uitofp i32 %684 to float
  %686 = fmul fast float %685, 0x3F70101020000000
  %687 = fmul fast float %661, %644
  %688 = fmul fast float %678, %678
  %689 = fmul fast float %688, %687
  %690 = fmul fast float %662, %645
  %691 = fmul fast float %682, %682
  %692 = fmul fast float %691, %690
  %693 = fmul fast float %663, %646
  %694 = fmul fast float %686, %686
  %695 = fmul fast float %694, %693
  %696 = add i32 %31, 28
  %697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %696, i32 undef)  ; BufferLoad(srv,index,wot)
  %698 = extractvalue %dx.types.ResRet.i32 %697, 0
  %699 = add i32 %31, 92
  %700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %699, i32 undef)  ; BufferLoad(srv,index,wot)
  %701 = extractvalue %dx.types.ResRet.i32 %700, 0
  %702 = add i32 %701, 0
  %703 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %702, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %704 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %703, %dx.types.Handle %62, float %193, float %194, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %705 = extractvalue %dx.types.ResRet.f32 %704, 0
  %706 = extractvalue %dx.types.ResRet.f32 %704, 1
  %707 = extractvalue %dx.types.ResRet.f32 %704, 3
  %708 = and i32 %698, 255
  %709 = uitofp i32 %708 to float
  %710 = lshr i32 %698, 8
  %711 = and i32 %710, 255
  %712 = uitofp i32 %711 to float
  %713 = lshr i32 %698, 16
  %714 = and i32 %713, 255
  %715 = uitofp i32 %714 to float
  %716 = fmul fast float %715, 0x3F70101000000000
  %717 = fmul fast float %705, %709
  %718 = fadd fast float %717, %712
  %719 = fmul fast float %718, 0x3F70101000000000
  %720 = fadd fast float %706, -5.000000e-01
  %721 = fadd fast float %707, -5.000000e-01
  %722 = fmul fast float %720, %716
  %723 = fmul fast float %721, %716
  %724 = fadd fast float %722, 5.000000e-01
  %725 = fadd fast float %723, 5.000000e-01
  %726 = fmul fast float %724, 2.000000e+00
  %727 = fadd fast float %726, -1.000000e+00
  %728 = fmul fast float %725, 2.000000e+00
  %729 = fadd fast float %728, -1.000000e+00
  %730 = fadd fast float %727, %729
  %731 = fmul fast float %730, 5.000000e-01
  %732 = fsub fast float %727, %729
  %733 = fmul fast float %732, 5.000000e-01
  %734 = call float @dx.op.unary.f32(i32 6, float %731)  ; FAbs(value)
  %735 = fsub fast float 1.000000e+00, %734
  %736 = call float @dx.op.unary.f32(i32 6, float %733)  ; FAbs(value)
  %737 = fsub fast float %735, %736
  %738 = call float @dx.op.dot3.f32(i32 55, float %731, float %733, float %737, float %731, float %733, float %737)  ; Dot3(ax,ay,az,bx,by,bz)
  %739 = call float @dx.op.unary.f32(i32 25, float %738)  ; Rsqrt(value)
  %740 = fmul fast float %731, %739
  %741 = fmul fast float %733, %739
  %742 = add i32 %31, 96
  %743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %742, i32 undef)  ; BufferLoad(srv,index,wot)
  %744 = extractvalue %dx.types.ResRet.i32 %743, 0
  %745 = add i32 %744, 0
  %746 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %745, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %747 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %746, %dx.types.Handle %62, float %193, float %194, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %748 = extractvalue %dx.types.ResRet.f32 %747, 0
  %749 = extractvalue %dx.types.ResRet.f32 %747, 1
  %750 = extractvalue %dx.types.ResRet.f32 %747, 2
  %751 = add i32 %31, 44
  %752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %751, i32 undef)  ; BufferLoad(srv,index,wot)
  %753 = extractvalue %dx.types.ResRet.i32 %752, 0
  %754 = shl i32 %753, 4
  %755 = and i32 %754, 32752
  %756 = call float @dx.op.legacyF16ToF32(i32 131, i32 %755)  ; LegacyF16ToF32(value)
  %757 = lshr i32 %753, 7
  %758 = and i32 %757, 32752
  %759 = call float @dx.op.legacyF16ToF32(i32 131, i32 %758)  ; LegacyF16ToF32(value)
  %760 = lshr i32 %753, 22
  %761 = shl nuw nsw i32 %760, 5
  %762 = call float @dx.op.legacyF16ToF32(i32 131, i32 %761)  ; LegacyF16ToF32(value)
  %763 = fmul fast float %756, %748
  %764 = fmul fast float %759, %749
  %765 = fmul fast float %762, %750
  %766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %767 = extractvalue %dx.types.CBufRet.f32 %766, 0
  %768 = fmul fast float %763, %767
  %769 = fmul fast float %764, %767
  %770 = fmul fast float %765, %767
  %771 = add i32 %31, 48
  %772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %771, i32 undef)  ; BufferLoad(srv,index,wot)
  %773 = extractvalue %dx.types.ResRet.i32 %772, 0
  %774 = lshr i32 %773, 22
  %775 = shl nuw nsw i32 %774, 5
  %776 = call float @dx.op.legacyF16ToF32(i32 131, i32 %775)  ; LegacyF16ToF32(value)
  %777 = fmul fast float %776, %768
  %778 = select i1 %136, float %777, float %768
  %779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %780 = extractvalue %dx.types.CBufRet.f32 %779, 3
  %781 = fcmp fast ogt float %780, 0.000000e+00
  %782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %783 = extractvalue %dx.types.CBufRet.f32 %782, 1
  br i1 %781, label %784, label %809

; <label>:784                                     ; preds = %643
  %785 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %40, float %41, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %786 = extractvalue %dx.types.ResRet.f32 %785, 0
  %787 = extractvalue %dx.types.ResRet.f32 %785, 1
  %788 = extractvalue %dx.types.ResRet.f32 %785, 2
  %789 = extractvalue %dx.types.ResRet.f32 %785, 3
  %790 = fmul fast float %783, %789
  %791 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %40, float %41, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %792 = extractvalue %dx.types.ResRet.f32 %791, 0
  %793 = extractvalue %dx.types.ResRet.f32 %791, 1
  %794 = extractvalue %dx.types.ResRet.f32 %791, 2
  %795 = extractvalue %dx.types.ResRet.f32 %791, 3
  %796 = fmul fast float %783, %792
  %797 = fmul fast float %783, %793
  %798 = fmul fast float %783, %794
  %799 = fmul fast float %783, %795
  %800 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %40, float %41, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %801 = extractvalue %dx.types.ResRet.f32 %800, 0
  %802 = extractvalue %dx.types.ResRet.f32 %800, 1
  %803 = extractvalue %dx.types.ResRet.f32 %800, 2
  %804 = extractvalue %dx.types.ResRet.f32 %800, 3
  %805 = fmul fast float %783, %801
  %806 = fmul fast float %783, %802
  %807 = fmul fast float %783, %803
  %808 = fmul fast float %783, %804
  br label %814

; <label>:809                                     ; preds = %643
  %810 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %26, float %40, float %41, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %811 = extractvalue %dx.types.ResRet.f32 %810, 0
  %812 = extractvalue %dx.types.ResRet.f32 %810, 1
  %813 = extractvalue %dx.types.ResRet.f32 %810, 2
  br label %814

; <label>:814                                     ; preds = %809, %784
  %815 = phi float [ %805, %784 ], [ 0.000000e+00, %809 ]
  %816 = phi float [ %806, %784 ], [ 0.000000e+00, %809 ]
  %817 = phi float [ %807, %784 ], [ 0.000000e+00, %809 ]
  %818 = phi float [ %808, %784 ], [ 0.000000e+00, %809 ]
  %819 = phi float [ %796, %784 ], [ 0.000000e+00, %809 ]
  %820 = phi float [ %797, %784 ], [ 0.000000e+00, %809 ]
  %821 = phi float [ %798, %784 ], [ 0.000000e+00, %809 ]
  %822 = phi float [ %799, %784 ], [ 0.000000e+00, %809 ]
  %823 = phi float [ %786, %784 ], [ %811, %809 ]
  %824 = phi float [ %787, %784 ], [ %812, %809 ]
  %825 = phi float [ %788, %784 ], [ %813, %809 ]
  %826 = phi float [ %790, %784 ], [ 0.000000e+00, %809 ]
  %827 = fmul float %783, %825
  %828 = fmul float %783, %824
  %829 = fmul float %783, %823
  %830 = call float @dx.op.dot2.f32(i32 54, float %740, float %741, float %740, float %741)  ; Dot2(ax,ay,bx,by)
  %831 = fsub fast float 1.000000e+00, %830
  %832 = call float @dx.op.unary.f32(i32 7, float %831)  ; Saturate(value)
  %833 = call float @dx.op.unary.f32(i32 24, float %832)  ; Sqrt(value)
  %834 = fmul fast float %833, %46
  %835 = fmul fast float %833, %47
  %836 = fmul fast float %833, %48
  %837 = fmul fast float %740, %42
  %838 = fmul fast float %740, %43
  %839 = fmul fast float %740, %44
  %840 = fmul fast float %113, %741
  %841 = fmul fast float %114, %741
  %842 = fmul fast float %115, %741
  %843 = fadd fast float %840, %837
  %844 = fadd fast float %843, %834
  %845 = fadd fast float %841, %838
  %846 = fadd fast float %845, %835
  %847 = fadd fast float %842, %839
  %848 = fadd fast float %847, %836
  %849 = call float @dx.op.dot3.f32(i32 55, float %844, float %846, float %848, float %844, float %846, float %848)  ; Dot3(ax,ay,az,bx,by,bz)
  %850 = call float @dx.op.unary.f32(i32 25, float %849)  ; Rsqrt(value)
  %851 = fmul fast float %844, %850
  %852 = fmul fast float %846, %850
  %853 = fmul fast float %848, %850
  %854 = call float @dx.op.dot3.f32(i32 55, float %101, float %102, float %103, float %101, float %102, float %103)  ; Dot3(ax,ay,az,bx,by,bz)
  %855 = call float @dx.op.unary.f32(i32 25, float %854)  ; Rsqrt(value)
  %856 = fmul fast float %855, %101
  %857 = fmul fast float %855, %102
  %858 = fmul fast float %855, %103
  %859 = fsub fast float -0.000000e+00, %856
  %860 = fsub fast float -0.000000e+00, %857
  %861 = fsub fast float -0.000000e+00, %858
  %862 = fadd fast float %672, 0xBFB99999A0000000
  %863 = call float @dx.op.unary.f32(i32 7, float %862)  ; Saturate(value)
  %864 = fmul fast float %863, 0x3FF1C71C80000000
  %865 = call float @dx.op.binary.f32(i32 36, float %672, float 0x3FB99999A0000000)  ; FMin(a,b)
  %866 = fsub fast float 1.000000e+00, %864
  %867 = call float @dx.op.unary.f32(i32 7, float %866)  ; Saturate(value)
  %868 = fmul fast float %867, %689
  %869 = fmul fast float %867, %692
  %870 = fmul fast float %867, %695
  %871 = call float @dx.op.unary.f32(i32 7, float %868)  ; Saturate(value)
  %872 = call float @dx.op.unary.f32(i32 7, float %869)  ; Saturate(value)
  %873 = call float @dx.op.unary.f32(i32 7, float %870)  ; Saturate(value)
  %874 = fmul fast float %864, %689
  %875 = fmul fast float %864, %692
  %876 = fmul fast float %864, %695
  %877 = fadd fast float %874, %865
  %878 = fadd fast float %875, %865
  %879 = fadd fast float %876, %865
  %880 = call float @dx.op.unary.f32(i32 7, float %877)  ; Saturate(value)
  %881 = call float @dx.op.unary.f32(i32 7, float %878)  ; Saturate(value)
  %882 = call float @dx.op.unary.f32(i32 7, float %879)  ; Saturate(value)
  %883 = call float @dx.op.unary.f32(i32 7, float %719)  ; Saturate(value)
  %884 = fmul fast float %778, %649
  %885 = fmul fast float %769, %650
  %886 = fmul fast float %770, %651
  %887 = call float @dx.op.dot3.f32(i32 55, float %884, float %885, float %886, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %888 = select i1 %136, float 0.000000e+00, float %884
  %889 = select i1 %136, float %887, float %885
  %890 = select i1 %136, float 0.000000e+00, float %886
  %891 = fmul fast float %564, %778
  %892 = fmul fast float %565, %769
  %893 = fmul fast float %566, %770
  %894 = call float @dx.op.dot3.f32(i32 55, float %871, float %872, float %873, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %895 = add i32 %31, 32
  %896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %895, i32 undef)  ; BufferLoad(srv,index,wot)
  %897 = extractvalue %dx.types.ResRet.i32 %896, 0
  %898 = and i32 %897, 255
  %899 = uitofp i32 %898 to float
  %900 = lshr i32 %897, 8
  %901 = and i32 %900, 255
  %902 = uitofp i32 %901 to float
  %903 = fmul fast float %902, %894
  %904 = fadd fast float %903, %899
  %905 = fmul fast float %904, 0x3F70101020000000
  %906 = call float @dx.op.unary.f32(i32 7, float %905)  ; Saturate(value)
  %907 = and i32 %156, 8192
  %908 = icmp eq i32 %907, 0
  %909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %910 = extractvalue %dx.types.CBufRet.f32 %909, 0
  br i1 %908, label %917, label %911, !dx.controlflow.hints !75

; <label>:911                                     ; preds = %814
  %912 = add i32 %153, 176
  %913 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %912, i32 undef)  ; BufferLoad(srv,index,wot)
  %914 = extractvalue %dx.types.ResRet.f32 %913, 0
  %915 = fcmp fast oge float %914, 0.000000e+00
  %916 = select i1 %915, float %914, float %910
  br label %924

; <label>:917                                     ; preds = %814
  %918 = add i32 %31, 72
  %919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %918, i32 undef)  ; BufferLoad(srv,index,wot)
  %920 = extractvalue %dx.types.ResRet.i32 %919, 0
  %921 = bitcast i32 %920 to float
  %922 = fcmp fast oge float %921, 0.000000e+00
  %923 = select i1 %922, float %921, float %910
  br label %924

; <label>:924                                     ; preds = %917, %911
  %925 = phi float [ %916, %911 ], [ %923, %917 ]
  %926 = fmul fast float %648, %647
  %927 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %236, i32 %237, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %928 = extractvalue %dx.types.ResRet.i32 %927, 0
  %929 = lshr i32 %928, 18
  %930 = uitofp i32 %929 to float
  %931 = fmul fast float %930, 0x3F4C00EBA0000000
  %932 = call float @dx.op.unary.f32(i32 21, float %931)  ; Exp(value)
  %933 = fadd fast float %932, -1.000000e+00
  %934 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %935 = extractvalue %dx.types.Dimensions %934, 0
  %936 = sitofp i32 %935 to float
  %937 = extractvalue %dx.types.Dimensions %934, 1
  %938 = sitofp i32 %937 to float
  %939 = fcmp fast oge float %234, %936
  %940 = fcmp fast oge float %235, %938
  %941 = or i1 %939, %940
  %942 = select i1 %941, float 0x4197782600000000, float %933
  %943 = icmp eq i32 %152, 3
  %944 = fcmp fast ogt float %59, %942
  %945 = and i1 %260, %944
  %946 = or i1 %943, %945
  %947 = icmp eq i32 %152, 2
  %948 = fcmp fast ole float %59, %942
  %949 = and i1 %947, %948
  %950 = or i1 %949, %946
  %951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %952 = extractvalue %dx.types.CBufRet.f32 %951, 3
  %953 = fcmp fast ogt float %952, 0.000000e+00
  br i1 %953, label %954, label %961

; <label>:954                                     ; preds = %924
  %955 = fmul fast float %852, 0xBFDF454380000000
  %956 = fmul fast float %853, 0x3FDF454380000000
  %957 = fmul fast float %851, 0xBFDF454380000000
  %958 = call float @dx.op.dot4.f32(i32 56, float %829, float %828, float %827, float %826, float 0x3FD20DD760000000, float %955, float %956, float %957)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %959 = call float @dx.op.dot4.f32(i32 56, float %819, float %820, float %821, float %822, float 0x3FD20DD760000000, float %955, float %956, float %957)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %960 = call float @dx.op.dot4.f32(i32 56, float %815, float %816, float %817, float %818, float 0x3FD20DD760000000, float %955, float %956, float %957)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %961

; <label>:961                                     ; preds = %954, %924
  %962 = phi float [ %958, %954 ], [ %829, %924 ]
  %963 = phi float [ %959, %954 ], [ %828, %924 ]
  %964 = phi float [ %960, %954 ], [ %827, %924 ]
  %965 = fmul fast float %891, %962
  %966 = fmul fast float %892, %963
  %967 = fmul fast float %893, %964
  %968 = fadd fast float %965, %888
  %969 = fadd fast float %966, %889
  %970 = fadd fast float %967, %890
  %971 = fmul fast float %968, %647
  %972 = fmul fast float %969, %647
  %973 = fmul fast float %970, %647
  %974 = call float @dx.op.dot3.f32(i32 55, float %851, float %852, float %853, float %859, float %860, float %861)  ; Dot3(ax,ay,az,bx,by,bz)
  %975 = call float @dx.op.unary.f32(i32 7, float %974)  ; Saturate(value)
  br i1 %953, label %976, label %1079

; <label>:976                                     ; preds = %961
  %977 = fsub fast float -0.000000e+00, %818
  %978 = fsub fast float %977, %822
  %979 = fsub fast float %978, %826
  %980 = fsub fast float -0.000000e+00, %816
  %981 = fsub fast float %980, %820
  %982 = fsub fast float %981, %828
  %983 = fadd fast float %821, %817
  %984 = fadd fast float %983, %827
  %985 = call float @dx.op.dot3.f32(i32 55, float %979, float %982, float %984, float %979, float %982, float %984)  ; Dot3(ax,ay,az,bx,by,bz)
  %986 = call float @dx.op.unary.f32(i32 25, float %985)  ; Rsqrt(value)
  %987 = fmul fast float %986, %979
  %988 = fmul fast float %986, %982
  %989 = fmul fast float %986, %984
  %990 = fmul fast float %988, 0xBFD4D8D7C0000000
  %991 = fmul fast float %989, 0x3FD4D8D7C0000000
  %992 = fmul fast float %987, 0xBFD4D8D7C0000000
  %993 = call float @dx.op.dot4.f32(i32 56, float %829, float %828, float %827, float %826, float 0x3FD20DD760000000, float %990, float %991, float %992)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %994 = call float @dx.op.dot4.f32(i32 56, float %819, float %820, float %821, float %822, float 0x3FD20DD760000000, float %990, float %991, float %992)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %995 = call float @dx.op.dot4.f32(i32 56, float %815, float %816, float %817, float %818, float 0x3FD20DD760000000, float %990, float %991, float %992)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %996 = fmul fast float %993, 0x4003333340000000
  %997 = fmul fast float %829, 0x3FE5AA35A0000000
  %998 = fsub fast float %996, %997
  %999 = fmul fast float %994, 0x4003333340000000
  %1000 = fmul fast float %819, 0x3FE5AA35A0000000
  %1001 = fsub fast float %999, %1000
  %1002 = fmul fast float %995, 0x4003333340000000
  %1003 = fmul fast float %815, 0x3FE5AA35A0000000
  %1004 = fsub fast float %1002, %1003
  %1005 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %998)  ; FMax(a,b)
  %1006 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1001)  ; FMax(a,b)
  %1007 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1004)  ; FMax(a,b)
  %1008 = fsub fast float %987, %856
  %1009 = fsub fast float %988, %857
  %1010 = fsub fast float %989, %858
  %1011 = call float @dx.op.dot3.f32(i32 55, float %1008, float %1009, float %1010, float %1008, float %1009, float %1010)  ; Dot3(ax,ay,az,bx,by,bz)
  %1012 = call float @dx.op.unary.f32(i32 25, float %1011)  ; Rsqrt(value)
  %1013 = fmul fast float %1012, %1008
  %1014 = fmul fast float %1012, %1009
  %1015 = fmul fast float %1012, %1010
  %1016 = call float @dx.op.dot3.f32(i32 55, float %851, float %852, float %853, float %987, float %988, float %989)  ; Dot3(ax,ay,az,bx,by,bz)
  %1017 = call float @dx.op.unary.f32(i32 6, float %1016)  ; FAbs(value)
  %1018 = call float @dx.op.dot3.f32(i32 55, float %851, float %852, float %853, float %1013, float %1014, float %1015)  ; Dot3(ax,ay,az,bx,by,bz)
  %1019 = fmul fast float %1018, %1018
  %1020 = call float @dx.op.dot3.f32(i32 55, float %859, float %860, float %861, float %1013, float %1014, float %1015)  ; Dot3(ax,ay,az,bx,by,bz)
  %1021 = call float @dx.op.unary.f32(i32 6, float %1020)  ; FAbs(value)
  %1022 = fsub fast float 1.000000e+00, %883
  %1023 = call float @dx.op.binary.f32(i32 35, float %1022, float 0x3F847AE140000000)  ; FMax(a,b)
  %1024 = fmul fast float %1023, %1023
  %1025 = fmul fast float %1024, %1024
  %1026 = fsub fast float 1.000000e+00, %1025
  %1027 = fmul fast float %975, %975
  %1028 = fmul fast float %1027, %1026
  %1029 = fadd fast float %1028, %1025
  %1030 = bitcast float %1029 to i32
  %1031 = ashr i32 %1030, 1
  %1032 = add nsw i32 %1031, 532487669
  %1033 = bitcast i32 %1032 to float
  %1034 = fadd fast float %1033, %975
  %1035 = fmul fast float %1025, %1019
  %1036 = fsub fast float 1.000000e+00, %1019
  %1037 = fadd fast float %1036, %1035
  %1038 = fmul fast float %1017, %1017
  %1039 = fmul fast float %1038, %1026
  %1040 = fadd fast float %1039, %1025
  %1041 = bitcast float %1040 to i32
  %1042 = ashr i32 %1041, 1
  %1043 = add nsw i32 %1042, 532487669
  %1044 = bitcast i32 %1043 to float
  %1045 = fadd fast float %1044, %1017
  %1046 = fmul fast float %1037, %1037
  %1047 = fmul fast float %1046, %1034
  %1048 = fmul fast float %1047, %1045
  %1049 = fdiv fast float 1.000000e+00, %1048
  %1050 = fmul fast float %1025, %1049
  %1051 = fsub fast float 1.000000e+00, %1021
  %1052 = bitcast float %1051 to i32
  %1053 = sitofp i32 %1052 to float
  %1054 = fmul fast float %1053, 5.000000e+00
  %1055 = fadd fast float %1054, 0xC1EFBF8940000000
  %1056 = fptosi float %1055 to i32
  %1057 = bitcast i32 %1056 to float
  %1058 = fsub fast float 1.000000e+00, %880
  %1059 = fsub fast float 1.000000e+00, %881
  %1060 = fsub fast float 1.000000e+00, %882
  %1061 = fmul fast float %1057, %1058
  %1062 = fmul fast float %1057, %1059
  %1063 = fmul fast float %1057, %1060
  %1064 = fadd fast float %1061, %880
  %1065 = fadd fast float %1062, %881
  %1066 = fadd fast float %1063, %882
  %1067 = fmul fast float %1050, %1005
  %1068 = fmul fast float %1067, %1064
  %1069 = fmul fast float %1050, %1006
  %1070 = fmul fast float %1069, %1065
  %1071 = fmul fast float %1050, %1007
  %1072 = fmul fast float %1071, %1066
  %1073 = call float @dx.op.binary.f32(i32 35, float %1068, float 0.000000e+00)  ; FMax(a,b)
  %1074 = call float @dx.op.binary.f32(i32 35, float %1070, float 0.000000e+00)  ; FMax(a,b)
  %1075 = call float @dx.op.binary.f32(i32 35, float %1072, float 0.000000e+00)  ; FMax(a,b)
  %1076 = fadd fast float %1073, %971
  %1077 = fadd fast float %1074, %972
  %1078 = fadd fast float %1075, %973
  br label %1079

; <label>:1079                                    ; preds = %976, %961
  %1080 = phi float [ %1076, %976 ], [ %971, %961 ]
  %1081 = phi float [ %1077, %976 ], [ %972, %961 ]
  %1082 = phi float [ %1078, %976 ], [ %973, %961 ]
  %1083 = fmul fast float %975, 9.843750e-01
  %1084 = fmul fast float %883, 9.843750e-01
  %1085 = fadd fast float %1083, 7.812500e-03
  %1086 = fadd fast float %1084, 7.812500e-03
  %1087 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %26, float %1085, float %1086, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1088 = extractvalue %dx.types.ResRet.f32 %1087, 2
  %1089 = extractvalue %dx.types.ResRet.f32 %1087, 3
  %1090 = fmul fast float %1088, %880
  %1091 = fmul fast float %1088, %881
  %1092 = fmul fast float %1088, %882
  %1093 = fadd fast float %1090, %1089
  %1094 = fadd fast float %1091, %1089
  %1095 = fadd fast float %1092, %1089
  %1096 = call float @dx.op.binary.f32(i32 35, float %1094, float %1095)  ; FMax(a,b)
  %1097 = call float @dx.op.binary.f32(i32 35, float %1093, float %1096)  ; FMax(a,b)
  %1098 = fsub fast float 1.000000e+00, %1097
  %1099 = call float @dx.op.dot3.f32(i32 55, float %856, float %857, float %858, float %851, float %852, float %853)  ; Dot3(ax,ay,az,bx,by,bz)
  %1100 = fmul fast float %1099, 2.000000e+00
  %1101 = fmul fast float %1100, %851
  %1102 = fmul fast float %1100, %852
  %1103 = fmul fast float %1100, %853
  %1104 = fsub fast float %856, %1101
  %1105 = fsub fast float %857, %1102
  %1106 = fsub fast float %858, %1103
  br i1 %953, label %1107, label %1114

; <label>:1107                                    ; preds = %1079
  %1108 = fmul fast float %1105, 0xBFDF454380000000
  %1109 = fmul fast float %1106, 0x3FDF454380000000
  %1110 = fmul fast float %1104, 0xBFDF454380000000
  %1111 = call float @dx.op.dot4.f32(i32 56, float %829, float %828, float %827, float %826, float 0x3FD20DD760000000, float %1108, float %1109, float %1110)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1112 = call float @dx.op.dot4.f32(i32 56, float %819, float %820, float %821, float %822, float 0x3FD20DD760000000, float %1108, float %1109, float %1110)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1113 = call float @dx.op.dot4.f32(i32 56, float %815, float %816, float %817, float %818, float 0x3FD20DD760000000, float %1108, float %1109, float %1110)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %1114

; <label>:1114                                    ; preds = %1107, %1079
  %1115 = phi float [ %1111, %1107 ], [ %829, %1079 ]
  %1116 = phi float [ %1112, %1107 ], [ %828, %1079 ]
  %1117 = phi float [ %1113, %1107 ], [ %827, %1079 ]
  %1118 = call float @dx.op.dot3.f32(i32 55, float %1115, float %1116, float %1117, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %1120 = extractvalue %dx.types.CBufRet.f32 %1119, 2
  %1121 = extractvalue %dx.types.CBufRet.f32 %1119, 3
  %1122 = fmul fast float %1120, %66
  %1123 = fmul fast float %1121, %67
  %1124 = fptoui float %1122 to i32
  %1125 = fptoui float %1123 to i32
  %1126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1127 = extractvalue %dx.types.CBufRet.f32 %1126, 0
  %1128 = extractvalue %dx.types.CBufRet.f32 %1126, 2
  %1129 = extractvalue %dx.types.CBufRet.f32 %1126, 3
  %1130 = fadd fast float %59, -4.000000e+00
  %1131 = call float @dx.op.binary.f32(i32 35, float %1130, float 0.000000e+00)  ; FMax(a,b)
  %1132 = fadd fast float %1131, %1127
  %1133 = fmul fast float %1132, %1128
  %1134 = call float @dx.op.unary.f32(i32 23, float %1133)  ; Log(value)
  %1135 = fmul fast float %1134, %1129
  %1136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1137 = extractvalue %dx.types.CBufRet.f32 %1136, 2
  %1138 = fmul fast float %1135, %1137
  %1139 = call float @dx.op.unary.f32(i32 7, float %1138)  ; Saturate(value)
  %1140 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1141 = extractvalue %dx.types.CBufRet.i32 %1140, 1
  %1142 = add i32 %1141, -1
  %1143 = uitofp i32 %1141 to float
  %1144 = fmul fast float %1143, %1139
  %1145 = fptoui float %1144 to i32
  %1146 = call i32 @dx.op.binary.i32(i32 40, i32 %1145, i32 %1142)  ; UMin(a,b)
  %1147 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %1148 = extractvalue %dx.types.CBufRet.i32 %1147, 2
  %1149 = extractvalue %dx.types.CBufRet.i32 %1147, 3
  %1150 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1125, i32 %1148, i32 %1124)  ; UMad(a,b,c)
  %1151 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1146, i32 %1149, i32 %1150)  ; UMad(a,b,c)
  %1152 = call float @dx.op.binary.f32(i32 35, float %59, float 0.000000e+00)  ; FMax(a,b)
  %1153 = fptoui float %1152 to i32
  %1154 = lshr i32 %1153, 5
  %1155 = call i32 @dx.op.binary.i32(i32 40, i32 %1154, i32 8191)  ; UMin(a,b)
  %1156 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1157 = extractvalue %dx.types.CBufRet.i32 %1156, 2
  %1158 = add nsw i32 %1157, -1
  %1159 = call i32 @dx.op.binary.i32(i32 37, i32 %1158, i32 0)  ; IMax(a,b)
  %1160 = shl i32 %1155, 2
  %1161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1160, i32 undef)  ; BufferLoad(srv,index,wot)
  %1162 = extractvalue %dx.types.ResRet.i32 %1161, 0
  %1163 = lshr i32 %1162, 16
  %1164 = and i32 %1162, 65535
  %1165 = lshr i32 %1162, 21
  %1166 = lshr i32 %1164, 5
  %1167 = call i32 @dx.op.binary.i32(i32 40, i32 %1166, i32 %1159)  ; UMin(a,b)
  %1168 = icmp ugt i32 %1165, %1167
  br i1 %1168, label %1531, label %1169

; <label>:1169                                    ; preds = %1114
  br label %1170

; <label>:1170                                    ; preds = %1523, %1169
  %1171 = phi float [ %1524, %1523 ], [ 0.000000e+00, %1169 ]
  %1172 = phi float [ %1525, %1523 ], [ 0.000000e+00, %1169 ]
  %1173 = phi float [ %1526, %1523 ], [ 0.000000e+00, %1169 ]
  %1174 = phi float [ %1527, %1523 ], [ 1.000000e+00, %1169 ]
  %1175 = phi i32 [ %1528, %1523 ], [ %1165, %1169 ]
  %1176 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1177 = extractvalue %dx.types.CBufRet.i32 %1176, 2
  %1178 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1151, i32 %1177, i32 %1175)  ; UMad(a,b,c)
  %1179 = shl i32 %1178, 2
  %1180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1179, i32 undef)  ; BufferLoad(srv,index,wot)
  %1181 = extractvalue %dx.types.ResRet.i32 %1180, 0
  %1182 = shl i32 %1175, 5
  %1183 = sub nsw i32 %1163, %1182
  %1184 = call i32 @dx.op.binary.i32(i32 37, i32 %1183, i32 0)  ; IMax(a,b)
  %1185 = call i32 @dx.op.binary.i32(i32 38, i32 %1184, i32 31)  ; IMin(a,b)
  %1186 = sub nsw i32 1, %1163
  %1187 = add nsw i32 %1186, %1164
  %1188 = call i32 @dx.op.binary.i32(i32 37, i32 %1187, i32 0)  ; IMax(a,b)
  %1189 = call i32 @dx.op.binary.i32(i32 38, i32 %1188, i32 32)  ; IMin(a,b)
  %1190 = and i32 %1189, 31
  %1191 = shl i32 -1, %1190
  %1192 = xor i32 %1191, -1
  %1193 = and i32 %1185, 31
  %1194 = shl i32 %1192, %1193
  %1195 = icmp eq i32 %1189, 32
  %1196 = select i1 %1195, i32 -1, i32 %1194
  %1197 = and i32 %1196, %1181
  %1198 = icmp eq i32 %1197, 0
  br i1 %1198, label %1523, label %1199

; <label>:1199                                    ; preds = %1170
  br label %1200

; <label>:1200                                    ; preds = %1306, %1199
  %1201 = phi float [ %1307, %1306 ], [ %1171, %1199 ]
  %1202 = phi float [ %1308, %1306 ], [ %1172, %1199 ]
  %1203 = phi float [ %1309, %1306 ], [ %1173, %1199 ]
  %1204 = phi float [ %1310, %1306 ], [ %1174, %1199 ]
  %1205 = phi i32 [ %1210, %1306 ], [ %1197, %1199 ]
  %1206 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1205)  ; FirstbitLo(value)
  %1207 = add i32 %1206, %1182
  %1208 = and i32 %1206, 31
  %1209 = shl i32 1, %1208
  %1210 = xor i32 %1209, %1205
  %1211 = mul i32 %1207, 72
  %1212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.f32 %1212, 0
  %1214 = extractvalue %dx.types.ResRet.f32 %1212, 1
  %1215 = extractvalue %dx.types.ResRet.f32 %1212, 2
  %1216 = add i32 %1211, 12
  %1217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1216, i32 undef)  ; BufferLoad(srv,index,wot)
  %1218 = extractvalue %dx.types.ResRet.i32 %1217, 0
  %1219 = add i32 %1211, 16
  %1220 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1219, i32 undef)  ; BufferLoad(srv,index,wot)
  %1221 = extractvalue %dx.types.ResRet.f32 %1220, 0
  %1222 = extractvalue %dx.types.ResRet.f32 %1220, 1
  %1223 = extractvalue %dx.types.ResRet.f32 %1220, 2
  %1224 = add i32 %1211, 28
  %1225 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1226 = extractvalue %dx.types.ResRet.f32 %1225, 0
  %1227 = add i32 %1211, 32
  %1228 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1227, i32 undef)  ; BufferLoad(srv,index,wot)
  %1229 = extractvalue %dx.types.ResRet.f32 %1228, 0
  %1230 = extractvalue %dx.types.ResRet.f32 %1228, 1
  %1231 = extractvalue %dx.types.ResRet.f32 %1228, 2
  %1232 = extractvalue %dx.types.ResRet.f32 %1228, 3
  %1233 = add i32 %1211, 48
  %1234 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1233, i32 undef)  ; BufferLoad(srv,index,wot)
  %1235 = extractvalue %dx.types.ResRet.f32 %1234, 0
  %1236 = extractvalue %dx.types.ResRet.f32 %1234, 1
  %1237 = add i32 %1211, 56
  %1238 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1237, i32 undef)  ; BufferLoad(srv,index,wot)
  %1239 = extractvalue %dx.types.ResRet.f32 %1238, 0
  %1240 = extractvalue %dx.types.ResRet.f32 %1238, 1
  %1241 = add i32 %1211, 64
  %1242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1241, i32 undef)  ; BufferLoad(srv,index,wot)
  %1243 = extractvalue %dx.types.ResRet.f32 %1242, 0
  %1244 = extractvalue %dx.types.ResRet.f32 %1242, 1
  %1245 = mul i32 %1207, 60
  %1246 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1245, i32 undef)  ; BufferLoad(srv,index,wot)
  %1247 = extractvalue %dx.types.ResRet.f32 %1246, 0
  %1248 = extractvalue %dx.types.ResRet.f32 %1246, 1
  %1249 = extractvalue %dx.types.ResRet.f32 %1246, 2
  %1250 = add i32 %1245, 12
  %1251 = add i32 %1245, 48
  %1252 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1253 = extractvalue %dx.types.ResRet.f32 %1252, 0
  %1254 = extractvalue %dx.types.ResRet.f32 %1252, 1
  %1255 = extractvalue %dx.types.ResRet.f32 %1252, 2
  %1256 = and i32 %1218, 32767
  %1257 = bitcast float %1213 to i32
  %1258 = icmp eq i32 %1257, -1
  %1259 = bitcast float %1214 to i32
  %1260 = and i32 %1218, 32768
  %1261 = icmp ne i32 %1260, 0
  %1262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1263 = extractvalue %dx.types.CBufRet.f32 %1262, 0
  %1264 = extractvalue %dx.types.CBufRet.f32 %1262, 1
  %1265 = extractvalue %dx.types.CBufRet.f32 %1262, 2
  %1266 = fsub fast float %1247, %1263
  %1267 = fsub fast float %1248, %1264
  %1268 = fsub fast float %1249, %1265
  %1269 = fsub fast float %101, %1266
  %1270 = fsub fast float %102, %1267
  %1271 = fsub fast float %103, %1268
  %1272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1273 = extractvalue %dx.types.ResRet.f32 %1272, 0
  %1274 = extractvalue %dx.types.ResRet.f32 %1272, 1
  %1275 = extractvalue %dx.types.ResRet.f32 %1272, 2
  %1276 = call float @dx.op.dot3.f32(i32 55, float %1269, float %1270, float %1271, float %1273, float %1274, float %1275)  ; Dot3(ax,ay,az,bx,by,bz)
  %1277 = add i32 %1245, 24
  %1278 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1277, i32 undef)  ; BufferLoad(srv,index,wot)
  %1279 = extractvalue %dx.types.ResRet.f32 %1278, 0
  %1280 = extractvalue %dx.types.ResRet.f32 %1278, 1
  %1281 = extractvalue %dx.types.ResRet.f32 %1278, 2
  %1282 = call float @dx.op.dot3.f32(i32 55, float %1269, float %1270, float %1271, float %1279, float %1280, float %1281)  ; Dot3(ax,ay,az,bx,by,bz)
  %1283 = add i32 %1245, 36
  %1284 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1285 = extractvalue %dx.types.ResRet.f32 %1284, 0
  %1286 = extractvalue %dx.types.ResRet.f32 %1284, 1
  %1287 = extractvalue %dx.types.ResRet.f32 %1284, 2
  %1288 = call float @dx.op.dot3.f32(i32 55, float %1269, float %1270, float %1271, float %1285, float %1286, float %1287)  ; Dot3(ax,ay,az,bx,by,bz)
  %1289 = call float @dx.op.unary.f32(i32 6, float %1276)  ; FAbs(value)
  %1290 = call float @dx.op.unary.f32(i32 6, float %1282)  ; FAbs(value)
  %1291 = call float @dx.op.unary.f32(i32 6, float %1288)  ; FAbs(value)
  %1292 = fsub fast float %1253, %1289
  %1293 = fsub fast float %1254, %1290
  %1294 = fsub fast float %1255, %1291
  %1295 = fmul fast float %1292, %1221
  %1296 = fmul fast float %1293, %1222
  %1297 = fmul fast float %1294, %1223
  %1298 = call float @dx.op.binary.f32(i32 36, float %1296, float %1297)  ; FMin(a,b)
  %1299 = call float @dx.op.binary.f32(i32 36, float %1295, float %1298)  ; FMin(a,b)
  %1300 = call float @dx.op.unary.f32(i32 7, float %1299)  ; Saturate(value)
  %1301 = call float @dx.op.binary.f32(i32 36, float %1204, float %1300)  ; FMin(a,b)
  %1302 = uitofp i1 %1261 to float
  %1303 = fsub fast float 1.000000e+00, %1302
  %1304 = fmul fast float %1301, %1303
  %1305 = fcmp fast ogt float %1304, 0.000000e+00
  br i1 %1305, label %1312, label %1306

; <label>:1306                                    ; preds = %1454, %1200
  %1307 = phi float [ %1518, %1454 ], [ %1201, %1200 ]
  %1308 = phi float [ %1519, %1454 ], [ %1202, %1200 ]
  %1309 = phi float [ %1520, %1454 ], [ %1203, %1200 ]
  %1310 = phi float [ %1521, %1454 ], [ %1204, %1200 ]
  %1311 = icmp eq i32 %1205, %1209
  br i1 %1311, label %1522, label %1200

; <label>:1312                                    ; preds = %1200
  br i1 %1258, label %1370, label %1313

; <label>:1313                                    ; preds = %1312
  %1314 = fsub fast float -0.000000e+00, %1273
  %1315 = fsub fast float -0.000000e+00, %1274
  %1316 = fsub fast float -0.000000e+00, %1275
  %1317 = call float @dx.op.dot3.f32(i32 55, float %1104, float %1105, float %1106, float %1314, float %1315, float %1316)  ; Dot3(ax,ay,az,bx,by,bz)
  %1318 = fsub fast float -0.000000e+00, %1317
  %1319 = call float @dx.op.dot3.f32(i32 55, float %1269, float %1270, float %1271, float %1314, float %1315, float %1316)  ; Dot3(ax,ay,az,bx,by,bz)
  %1320 = fadd fast float %1319, %1236
  %1321 = fadd fast float %1235, %1319
  %1322 = fsub fast float -0.000000e+00, %1321
  %1323 = fcmp ogt float %1317, -0.000000e+00
  %1324 = select i1 %1323, float %1322, float %1320
  %1325 = call float @dx.op.unary.f32(i32 6, float %1318)  ; FAbs(value)
  %1326 = fdiv fast float 1.000000e+00, %1325
  %1327 = fmul fast float %1324, %1326
  %1328 = call float @dx.op.binary.f32(i32 35, float %1327, float 0.000000e+00)  ; FMax(a,b)
  %1329 = fsub fast float -0.000000e+00, %1279
  %1330 = fsub fast float -0.000000e+00, %1280
  %1331 = fsub fast float -0.000000e+00, %1281
  %1332 = call float @dx.op.dot3.f32(i32 55, float %1104, float %1105, float %1106, float %1329, float %1330, float %1331)  ; Dot3(ax,ay,az,bx,by,bz)
  %1333 = fsub fast float -0.000000e+00, %1332
  %1334 = call float @dx.op.dot3.f32(i32 55, float %1269, float %1270, float %1271, float %1329, float %1330, float %1331)  ; Dot3(ax,ay,az,bx,by,bz)
  %1335 = fadd fast float %1334, %1240
  %1336 = fadd fast float %1239, %1334
  %1337 = fsub fast float -0.000000e+00, %1336
  %1338 = fcmp ogt float %1332, -0.000000e+00
  %1339 = select i1 %1338, float %1337, float %1335
  %1340 = call float @dx.op.unary.f32(i32 6, float %1333)  ; FAbs(value)
  %1341 = fdiv fast float 1.000000e+00, %1340
  %1342 = fmul fast float %1339, %1341
  %1343 = call float @dx.op.binary.f32(i32 35, float %1342, float 0.000000e+00)  ; FMax(a,b)
  %1344 = fsub fast float -0.000000e+00, %1285
  %1345 = fsub fast float -0.000000e+00, %1286
  %1346 = fsub fast float -0.000000e+00, %1287
  %1347 = call float @dx.op.dot3.f32(i32 55, float %1104, float %1105, float %1106, float %1344, float %1345, float %1346)  ; Dot3(ax,ay,az,bx,by,bz)
  %1348 = fsub fast float -0.000000e+00, %1347
  %1349 = call float @dx.op.dot3.f32(i32 55, float %1269, float %1270, float %1271, float %1344, float %1345, float %1346)  ; Dot3(ax,ay,az,bx,by,bz)
  %1350 = fadd fast float %1349, %1244
  %1351 = fadd fast float %1243, %1349
  %1352 = fsub fast float -0.000000e+00, %1351
  %1353 = fcmp ogt float %1347, -0.000000e+00
  %1354 = select i1 %1353, float %1352, float %1350
  %1355 = call float @dx.op.unary.f32(i32 6, float %1348)  ; FAbs(value)
  %1356 = fdiv fast float 1.000000e+00, %1355
  %1357 = fmul fast float %1354, %1356
  %1358 = call float @dx.op.binary.f32(i32 35, float %1357, float 0.000000e+00)  ; FMax(a,b)
  %1359 = call float @dx.op.binary.f32(i32 36, float %1343, float %1358)  ; FMin(a,b)
  %1360 = call float @dx.op.binary.f32(i32 36, float %1328, float %1359)  ; FMin(a,b)
  %1361 = fmul fast float %1360, %1104
  %1362 = fmul fast float %1360, %1105
  %1363 = fmul fast float %1360, %1106
  %1364 = fadd fast float %1361, %101
  %1365 = fadd fast float %1362, %102
  %1366 = fadd fast float %1363, %103
  %1367 = fsub fast float %1364, %1213
  %1368 = fsub fast float %1365, %1214
  %1369 = fsub fast float %1366, %1215
  br label %1377

; <label>:1370                                    ; preds = %1312
  %1371 = fmul fast float %1104, 8.096000e+03
  %1372 = fmul fast float %1105, 8.096000e+03
  %1373 = fmul fast float %1106, 8.096000e+03
  %1374 = fadd fast float %1371, %101
  %1375 = fadd fast float %1372, %102
  %1376 = fadd fast float %1373, %103
  br label %1377

; <label>:1377                                    ; preds = %1370, %1313
  %1378 = phi float [ %1104, %1370 ], [ %1367, %1313 ]
  %1379 = phi float [ %1105, %1370 ], [ %1368, %1313 ]
  %1380 = phi float [ %1106, %1370 ], [ %1369, %1313 ]
  %1381 = phi float [ %1374, %1370 ], [ %1364, %1313 ]
  %1382 = phi float [ %1375, %1370 ], [ %1365, %1313 ]
  %1383 = phi float [ %1376, %1370 ], [ %1366, %1313 ]
  %1384 = fcmp fast olt float %1232, 1.000000e+00
  br i1 %1384, label %1385, label %1416, !dx.controlflow.hints !76

; <label>:1385                                    ; preds = %1377
  %1386 = fmul fast float %1380, %1230
  %1387 = fmul fast float %1379, %1231
  %1388 = fsub fast float %1386, %1387
  %1389 = fmul fast float %1378, %1231
  %1390 = fmul fast float %1380, %1229
  %1391 = fsub fast float %1389, %1390
  %1392 = fmul fast float %1379, %1229
  %1393 = fmul fast float %1378, %1230
  %1394 = fsub fast float %1392, %1393
  %1395 = fmul fast float %1388, 2.000000e+00
  %1396 = fmul fast float %1391, 2.000000e+00
  %1397 = fmul fast float %1394, 2.000000e+00
  %1398 = fmul fast float %1395, %1232
  %1399 = fmul fast float %1396, %1232
  %1400 = fmul fast float %1397, %1232
  %1401 = fmul fast float %1397, %1230
  %1402 = fmul fast float %1396, %1231
  %1403 = fmul fast float %1395, %1231
  %1404 = fmul fast float %1397, %1229
  %1405 = fmul fast float %1396, %1229
  %1406 = fmul fast float %1395, %1230
  %1407 = fadd fast float %1401, %1378
  %1408 = fadd fast float %1407, %1398
  %1409 = fsub fast float %1408, %1402
  %1410 = fsub fast float %1379, %1404
  %1411 = fadd fast float %1410, %1399
  %1412 = fadd fast float %1411, %1403
  %1413 = fadd fast float %1400, %1380
  %1414 = fsub fast float %1413, %1406
  %1415 = fadd fast float %1414, %1405
  br label %1416

; <label>:1416                                    ; preds = %1385, %1377
  %1417 = phi float [ %1409, %1385 ], [ %1378, %1377 ]
  %1418 = phi float [ %1412, %1385 ], [ %1379, %1377 ]
  %1419 = phi float [ %1415, %1385 ], [ %1380, %1377 ]
  br i1 %1258, label %1451, label %1420

; <label>:1420                                    ; preds = %1416
  %1421 = fmul fast float %883, 0x400187C840000000
  %1422 = fadd fast float %1421, 0xC00EFC2120000000
  %1423 = fmul fast float %1422, %883
  %1424 = fadd fast float %1423, 0x3FE5D16340000000
  %1425 = fmul fast float %1424, %883
  %1426 = fadd fast float %1425, 1.000000e+00
  %1427 = call float @dx.op.unary.f32(i32 7, float %1426)  ; Saturate(value)
  %1428 = fsub fast float %1381, %101
  %1429 = fsub fast float %1382, %102
  %1430 = fsub fast float %1383, %103
  %1431 = fsub fast float %1381, %1213
  %1432 = fsub fast float %1382, %1214
  %1433 = fsub fast float %1383, %1215
  %1434 = call float @dx.op.dot3.f32(i32 55, float %1428, float %1429, float %1430, float %1428, float %1429, float %1430)  ; Dot3(ax,ay,az,bx,by,bz)
  %1435 = call float @dx.op.dot3.f32(i32 55, float %1431, float %1432, float %1433, float %1431, float %1432, float %1433)  ; Dot3(ax,ay,az,bx,by,bz)
  %1436 = fadd fast float %1435, 0x3EE4F8B580000000
  %1437 = fdiv fast float %1434, %1436
  %1438 = bitcast float %1437 to i32
  %1439 = ashr i32 %1438, 1
  %1440 = add nsw i32 %1439, 532487669
  %1441 = bitcast i32 %1440 to float
  %1442 = fmul fast float %1441, %1427
  %1443 = call float @dx.op.unary.f32(i32 7, float %1442)  ; Saturate(value)
  %1444 = fmul fast float %1443, 0x4009981AE0000000
  %1445 = fsub fast float 0x40111BBD80000000, %1444
  %1446 = fmul fast float %1445, %1443
  %1447 = fadd fast float %1446, 0xC0009F6020000000
  %1448 = fmul fast float %1447, %1443
  %1449 = fadd fast float %1448, 1.000000e+00
  %1450 = call float @dx.op.unary.f32(i32 7, float %1449)  ; Saturate(value)
  br label %1454

; <label>:1451                                    ; preds = %1416
  %1452 = icmp ne i32 %1259, -1
  %1453 = zext i1 %1452 to i32
  br label %1454

; <label>:1454                                    ; preds = %1451, %1420
  %1455 = phi float [ %883, %1451 ], [ %1450, %1420 ]
  %1456 = phi i32 [ %1453, %1451 ], [ 0, %1420 ]
  %1457 = fmul float %1455, 5.000000e+00
  %1458 = fsub float 5.000000e+00, %1457
  %1459 = icmp ne i32 %1456, 0
  %1460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %1461 = extractvalue %dx.types.CBufRet.f32 %1460, 3
  %1462 = fadd fast float %1461, %1458
  %1463 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1462)  ; FMax(a,b)
  %1464 = call float @dx.op.unary.f32(i32 6, float %1417)  ; FAbs(value)
  %1465 = call float @dx.op.unary.f32(i32 6, float %1418)  ; FAbs(value)
  %1466 = fadd fast float %1465, %1464
  %1467 = call float @dx.op.unary.f32(i32 6, float %1419)  ; FAbs(value)
  %1468 = fadd fast float %1466, %1467
  %1469 = fcmp fast oeq float %1468, 0.000000e+00
  %1470 = fdiv fast float 1.000000e+00, %1468
  %1471 = select i1 %1469, float 1.000000e+00, float %1470
  %1472 = fmul fast float %1471, %1417
  %1473 = fmul fast float %1471, %1418
  %1474 = call float @dx.op.unary.f32(i32 6, float %1473)  ; FAbs(value)
  %1475 = call float @dx.op.unary.f32(i32 6, float %1472)  ; FAbs(value)
  %1476 = fsub fast float 1.000000e+00, %1474
  %1477 = fsub fast float 1.000000e+00, %1475
  %1478 = fcmp fast oge float %1472, 0.000000e+00
  %1479 = fcmp fast oge float %1473, 0.000000e+00
  %1480 = select i1 %1478, float 1.000000e+00, float -1.000000e+00
  %1481 = select i1 %1479, float 1.000000e+00, float -1.000000e+00
  %1482 = fcmp fast ole float %1419, 0.000000e+00
  %1483 = fmul fast float %1480, %1476
  %1484 = fmul fast float %1481, %1477
  %1485 = select i1 %1482, float %1483, float %1472
  %1486 = select i1 %1482, float %1484, float %1473
  %1487 = fmul fast float %1485, 5.000000e-01
  %1488 = fmul fast float %1486, 5.000000e-01
  %1489 = fadd fast float %1487, 5.000000e-01
  %1490 = fadd fast float %1488, 5.000000e-01
  %1491 = uitofp i32 %1256 to float
  %1492 = call float @dx.op.binary.f32(i32 36, float %1463, float 3.000000e+00)  ; FMin(a,b)
  %1493 = fadd fast float %1492, 2.000000e+00
  %1494 = call float @dx.op.unary.f32(i32 21, float %1493)  ; Exp(value)
  %1495 = extractvalue %dx.types.CBufRet.f32 %1460, 1
  %1496 = fmul fast float %1495, %1494
  %1497 = fmul fast float %1496, 2.000000e+00
  %1498 = fsub fast float 1.000000e+00, %1497
  %1499 = fmul fast float %1489, %1498
  %1500 = fmul fast float %1490, %1498
  %1501 = fadd fast float %1499, %1496
  %1502 = fadd fast float %1500, %1496
  %1503 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %25, float %1501, float %1502, float %1491, float undef, i32 0, i32 0, i32 undef, float %1463)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1504 = extractvalue %dx.types.ResRet.f32 %1503, 0
  %1505 = extractvalue %dx.types.ResRet.f32 %1503, 1
  %1506 = extractvalue %dx.types.ResRet.f32 %1503, 2
  %1507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1508 = extractvalue %dx.types.CBufRet.f32 %1507, 3
  %1509 = fmul fast float %1508, %1226
  %1510 = call float @dx.op.binary.f32(i32 36, float %1118, float %1509)  ; FMin(a,b)
  %1511 = select i1 %1459, float %1510, float %1509
  %1512 = fmul fast float %1504, %1304
  %1513 = fmul fast float %1512, %1511
  %1514 = fmul fast float %1505, %1304
  %1515 = fmul fast float %1514, %1511
  %1516 = fmul fast float %1506, %1304
  %1517 = fmul fast float %1516, %1511
  %1518 = fadd fast float %1513, %1201
  %1519 = fadd fast float %1515, %1202
  %1520 = fadd fast float %1517, %1203
  %1521 = fsub fast float %1204, %1304
  br label %1306

; <label>:1522                                    ; preds = %1306
  br label %1523

; <label>:1523                                    ; preds = %1522, %1170
  %1524 = phi float [ %1171, %1170 ], [ %1307, %1522 ]
  %1525 = phi float [ %1172, %1170 ], [ %1308, %1522 ]
  %1526 = phi float [ %1173, %1170 ], [ %1309, %1522 ]
  %1527 = phi float [ %1174, %1170 ], [ %1310, %1522 ]
  %1528 = add i32 %1175, 1
  %1529 = icmp ugt i32 %1528, %1167
  br i1 %1529, label %1530, label %1170, !llvm.loop !77

; <label>:1530                                    ; preds = %1523
  br label %1531

; <label>:1531                                    ; preds = %1530, %1114
  %1532 = phi float [ 0.000000e+00, %1114 ], [ %1524, %1530 ]
  %1533 = phi float [ 0.000000e+00, %1114 ], [ %1525, %1530 ]
  %1534 = phi float [ 0.000000e+00, %1114 ], [ %1526, %1530 ]
  %1535 = call float @dx.op.dot3.f32(i32 55, float %1532, float %1533, float %1534, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1536 = select i1 %136, float 0.000000e+00, float %1532
  %1537 = select i1 %136, float %1535, float %1533
  %1538 = select i1 %136, float 0.000000e+00, float %1534
  %1539 = fmul fast float %1536, %1093
  %1540 = fmul fast float %1537, %1094
  %1541 = fmul fast float %1538, %1095
  %1542 = call float @dx.op.binary.f32(i32 35, float %1539, float 0.000000e+00)  ; FMax(a,b)
  %1543 = call float @dx.op.binary.f32(i32 35, float %1540, float 0.000000e+00)  ; FMax(a,b)
  %1544 = call float @dx.op.binary.f32(i32 35, float %1541, float 0.000000e+00)  ; FMax(a,b)
  %1545 = fadd fast float %1542, %1080
  %1546 = fadd fast float %1543, %1081
  %1547 = fadd fast float %1544, %1082
  %1548 = fmul fast float %1545, %647
  %1549 = fmul fast float %1546, %647
  %1550 = fmul fast float %1547, %647
  %1551 = fsub fast float 1.000000e+00, %647
  %1552 = call float @dx.op.dot3.f32(i32 55, float %1551, float %1551, float %1551, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1553 = fsub fast float 1.000000e+00, %1552
  %1554 = fmul fast float %925, %906
  %1555 = fsub fast float 1.000000e+00, %926
  %1556 = fsub fast float %1555, %906
  %1557 = call float @dx.op.unary.f32(i32 7, float %1556)  ; Saturate(value)
  %1558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1559 = extractvalue %dx.types.CBufRet.f32 %1558, 3
  %1560 = fmul fast float %1559, %1557
  %1561 = fadd fast float %1560, %1554
  %1562 = and i32 %156, 1048576
  %1563 = icmp eq i32 %1562, 0
  br i1 %1563, label %1648, label %1564, !dx.controlflow.hints !79

; <label>:1564                                    ; preds = %1531
  %1565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1566 = extractvalue %dx.types.CBufRet.f32 %1565, 2
  %1567 = extractvalue %dx.types.CBufRet.f32 %1565, 3
  %1568 = fmul fast float %1566, %66
  %1569 = fmul fast float %1567, %67
  %1570 = call float @dx.op.unary.f32(i32 7, float %1568)  ; Saturate(value)
  %1571 = call float @dx.op.unary.f32(i32 7, float %1569)  ; Saturate(value)
  %1572 = select i1 %950, i32 2, i32 0
  %1573 = or i32 %1572, 1
  %1574 = uitofp i32 %1573 to float
  %1575 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1570, float %1571, float %1574, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1576 = extractvalue %dx.types.ResRet.f32 %1575, 0
  %1577 = extractvalue %dx.types.ResRet.f32 %1575, 1
  %1578 = extractvalue %dx.types.ResRet.f32 %1575, 2
  %1579 = extractvalue %dx.types.ResRet.f32 %1575, 3
  %1580 = add nuw nsw i32 %1572, 2
  %1581 = uitofp i32 %1580 to float
  %1582 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1570, float %1571, float %1581, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1583 = extractvalue %dx.types.ResRet.f32 %1582, 0
  %1584 = extractvalue %dx.types.ResRet.f32 %1582, 1
  %1585 = extractvalue %dx.types.ResRet.f32 %1582, 2
  %1586 = extractvalue %dx.types.ResRet.f32 %1582, 3
  %1587 = call float @dx.op.binary.f32(i32 35, float %1577, float %1578)  ; FMax(a,b)
  %1588 = call float @dx.op.binary.f32(i32 35, float %1576, float %1587)  ; FMax(a,b)
  %1589 = call float @dx.op.binary.f32(i32 35, float %1588, float %1579)  ; FMax(a,b)
  %1590 = call float @dx.op.binary.f32(i32 36, float %1584, float %1585)  ; FMin(a,b)
  %1591 = call float @dx.op.binary.f32(i32 36, float %1583, float %1590)  ; FMin(a,b)
  %1592 = call float @dx.op.binary.f32(i32 36, float %1591, float %1586)  ; FMin(a,b)
  %1593 = fmul fast float %1589, 2.550000e+02
  %1594 = fadd fast float %1593, 0x3F70101020000000
  %1595 = fptoui float %1594 to i32
  %1596 = fmul fast float %1592, 2.550000e+02
  %1597 = fadd fast float %1596, 0x3F70101020000000
  %1598 = fptoui float %1597 to i32
  %1599 = icmp ult i32 %1595, %1598
  br i1 %1599, label %1600, label %1641

; <label>:1600                                    ; preds = %1564
  %1601 = fcmp fast ogt float %58, 9.843750e-01
  %1602 = select i1 %1601, float -4.000000e+00, float %1130
  %1603 = call float @dx.op.binary.f32(i32 35, float %1602, float 0.000000e+00)  ; FMax(a,b)
  %1604 = fadd fast float %1127, %1603
  %1605 = fmul fast float %1604, %1128
  %1606 = call float @dx.op.unary.f32(i32 23, float %1605)  ; Log(value)
  %1607 = fmul fast float %1129, %1606
  %1608 = fmul fast float %1607, %1137
  %1609 = call float @dx.op.unary.f32(i32 7, float %1608)  ; Saturate(value)
  %1610 = uitofp i32 %1595 to float
  %1611 = uitofp i32 %1598 to float
  %1612 = fadd fast float %1610, 5.000000e-01
  %1613 = fadd fast float %1611, 5.000000e-01
  %1614 = fmul fast float %1137, %1612
  %1615 = fmul fast float %1137, %1613
  %1616 = fadd fast float %1614, 0x3F0FFB4800000000
  %1617 = fadd fast float %1615, 0xBF0FFB4800000000
  %1618 = call float @dx.op.binary.f32(i32 35, float %1609, float %1616)  ; FMax(a,b)
  %1619 = call float @dx.op.binary.f32(i32 36, float %1618, float %1617)  ; FMin(a,b)
  %1620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1621 = extractvalue %dx.types.CBufRet.f32 %1620, 1
  %1622 = extractvalue %dx.types.CBufRet.f32 %1620, 2
  %1623 = extractvalue %dx.types.CBufRet.f32 %1620, 0
  %1624 = select i1 %950, float %1623, float 0.000000e+00
  %1625 = fmul fast float %1621, %1619
  %1626 = fadd fast float %1624, %1625
  %1627 = fadd fast float %1624, %1622
  %1628 = fsub fast float %1621, %1622
  %1629 = fadd fast float %1628, %1624
  %1630 = call float @dx.op.binary.f32(i32 35, float %1626, float %1627)  ; FMax(a,b)
  %1631 = call float @dx.op.binary.f32(i32 36, float %1630, float %1629)  ; FMin(a,b)
  %1632 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %25, float %1570, float %1571, float %1631, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1633 = extractvalue %dx.types.ResRet.f32 %1632, 0
  %1634 = extractvalue %dx.types.ResRet.f32 %1632, 1
  %1635 = extractvalue %dx.types.ResRet.f32 %1632, 2
  %1636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1637 = extractvalue %dx.types.CBufRet.f32 %1636, 1
  %1638 = fmul fast float %1637, %1633
  %1639 = fmul fast float %1637, %1634
  %1640 = fmul fast float %1637, %1635
  br label %1641

; <label>:1641                                    ; preds = %1600, %1564
  %1642 = phi float [ %1638, %1600 ], [ 1.000000e+00, %1564 ]
  %1643 = phi float [ %1639, %1600 ], [ 1.000000e+00, %1564 ]
  %1644 = phi float [ %1640, %1600 ], [ 1.000000e+00, %1564 ]
  %1645 = fmul fast float %1642, %1548
  %1646 = fmul fast float %1643, %1549
  %1647 = fmul fast float %1644, %1550
  br label %1648

; <label>:1648                                    ; preds = %1641, %1531
  %1649 = phi float [ %1645, %1641 ], [ %1548, %1531 ]
  %1650 = phi float [ %1646, %1641 ], [ %1549, %1531 ]
  %1651 = phi float [ %1647, %1641 ], [ %1550, %1531 ]
  %1652 = and i32 %156, 2097152
  %1653 = icmp eq i32 %1652, 0
  br i1 %1653, label %1658, label %1654, !dx.controlflow.hints !80

; <label>:1654                                    ; preds = %1648
  %1655 = add i32 %153, 192
  %1656 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1655, i32 undef)  ; BufferLoad(srv,index,wot)
  %1657 = extractvalue %dx.types.ResRet.f32 %1656, 0
  br label %1661

; <label>:1658                                    ; preds = %1648
  %1659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1660 = extractvalue %dx.types.CBufRet.f32 %1659, 3
  br label %1661

; <label>:1661                                    ; preds = %1658, %1654
  %1662 = phi float [ %1657, %1654 ], [ %1660, %1658 ]
  %1663 = fmul fast float %871, %647
  %1664 = fmul fast float %1663, %962
  %1665 = fmul fast float %1664, %1098
  %1666 = fmul fast float %872, %647
  %1667 = fmul fast float %1666, %963
  %1668 = fmul fast float %1667, %1098
  %1669 = fmul fast float %873, %647
  %1670 = fmul fast float %1669, %964
  %1671 = fmul fast float %1670, %1098
  br i1 %945, label %1672, label %1805

; <label>:1672                                    ; preds = %1661
  %1673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1674 = extractvalue %dx.types.CBufRet.f32 %1673, 2
  %1675 = extractvalue %dx.types.CBufRet.f32 %1673, 3
  %1676 = fmul fast float %1674, %66
  %1677 = fmul fast float %1675, %67
  %1678 = call float @dx.op.unary.f32(i32 7, float %1676)  ; Saturate(value)
  %1679 = call float @dx.op.unary.f32(i32 7, float %1677)  ; Saturate(value)
  %1680 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1678, float %1679, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1681 = extractvalue %dx.types.ResRet.f32 %1680, 0
  %1682 = extractvalue %dx.types.ResRet.f32 %1680, 1
  %1683 = extractvalue %dx.types.ResRet.f32 %1680, 2
  %1684 = extractvalue %dx.types.ResRet.f32 %1680, 3
  %1685 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1678, float %1679, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1686 = extractvalue %dx.types.ResRet.f32 %1685, 0
  %1687 = extractvalue %dx.types.ResRet.f32 %1685, 1
  %1688 = extractvalue %dx.types.ResRet.f32 %1685, 2
  %1689 = extractvalue %dx.types.ResRet.f32 %1685, 3
  %1690 = call float @dx.op.binary.f32(i32 35, float %1682, float %1683)  ; FMax(a,b)
  %1691 = call float @dx.op.binary.f32(i32 35, float %1681, float %1690)  ; FMax(a,b)
  %1692 = call float @dx.op.binary.f32(i32 35, float %1691, float %1684)  ; FMax(a,b)
  %1693 = call float @dx.op.binary.f32(i32 36, float %1687, float %1688)  ; FMin(a,b)
  %1694 = call float @dx.op.binary.f32(i32 36, float %1686, float %1693)  ; FMin(a,b)
  %1695 = call float @dx.op.binary.f32(i32 36, float %1694, float %1689)  ; FMin(a,b)
  %1696 = fmul fast float %1692, 2.550000e+02
  %1697 = fadd fast float %1696, 0x3F70101020000000
  %1698 = fptoui float %1697 to i32
  %1699 = fmul fast float %1695, 2.550000e+02
  %1700 = fadd fast float %1699, 0x3F70101020000000
  %1701 = fptoui float %1700 to i32
  %1702 = icmp ult i32 %1698, %1701
  br i1 %1702, label %1703, label %1747

; <label>:1703                                    ; preds = %1672
  %1704 = fcmp fast ogt float %58, 9.843750e-01
  %1705 = select i1 %1704, float -4.000000e+00, float %1130
  %1706 = call float @dx.op.binary.f32(i32 35, float %1705, float 0.000000e+00)  ; FMax(a,b)
  %1707 = fadd fast float %1127, %1706
  %1708 = fmul fast float %1707, %1128
  %1709 = call float @dx.op.unary.f32(i32 23, float %1708)  ; Log(value)
  %1710 = fmul fast float %1129, %1709
  %1711 = fmul fast float %1710, %1137
  %1712 = call float @dx.op.unary.f32(i32 7, float %1711)  ; Saturate(value)
  %1713 = uitofp i32 %1698 to float
  %1714 = uitofp i32 %1701 to float
  %1715 = fadd fast float %1713, 5.000000e-01
  %1716 = fadd fast float %1714, 5.000000e-01
  %1717 = fmul fast float %1137, %1715
  %1718 = fmul fast float %1137, %1716
  %1719 = fadd fast float %1717, 0x3F0FFB4800000000
  %1720 = fadd fast float %1718, 0xBF0FFB4800000000
  %1721 = call float @dx.op.binary.f32(i32 35, float %1712, float %1719)  ; FMax(a,b)
  %1722 = call float @dx.op.binary.f32(i32 36, float %1721, float %1720)  ; FMin(a,b)
  %1723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1724 = extractvalue %dx.types.CBufRet.f32 %1723, 1
  %1725 = extractvalue %dx.types.CBufRet.f32 %1723, 2
  %1726 = extractvalue %dx.types.CBufRet.f32 %1723, 0
  %1727 = fmul fast float %1724, %1722
  %1728 = fadd fast float %1726, %1727
  %1729 = fadd fast float %1726, %1725
  %1730 = fsub fast float %1724, %1725
  %1731 = fadd fast float %1730, %1726
  %1732 = call float @dx.op.binary.f32(i32 35, float %1728, float %1729)  ; FMax(a,b)
  %1733 = call float @dx.op.binary.f32(i32 36, float %1732, float %1731)  ; FMin(a,b)
  %1734 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %1678, float %1679, float %1733, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1735 = extractvalue %dx.types.ResRet.f32 %1734, 0
  %1736 = extractvalue %dx.types.ResRet.f32 %1734, 1
  %1737 = extractvalue %dx.types.ResRet.f32 %1734, 2
  %1738 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %1678, float %1679, float %1733, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1739 = extractvalue %dx.types.ResRet.f32 %1738, 0
  %1740 = extractvalue %dx.types.ResRet.f32 %1738, 1
  %1741 = extractvalue %dx.types.ResRet.f32 %1738, 2
  %1742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1743 = extractvalue %dx.types.CBufRet.f32 %1742, 1
  %1744 = fmul fast float %1743, %1739
  %1745 = fmul fast float %1743, %1740
  %1746 = fmul fast float %1743, %1741
  br label %1747

; <label>:1747                                    ; preds = %1703, %1672
  %1748 = phi float [ %1735, %1703 ], [ 1.000000e+00, %1672 ]
  %1749 = phi float [ %1736, %1703 ], [ 1.000000e+00, %1672 ]
  %1750 = phi float [ %1737, %1703 ], [ 1.000000e+00, %1672 ]
  %1751 = phi float [ %1744, %1703 ], [ 0.000000e+00, %1672 ]
  %1752 = phi float [ %1745, %1703 ], [ 0.000000e+00, %1672 ]
  %1753 = phi float [ %1746, %1703 ], [ 0.000000e+00, %1672 ]
  %1754 = fmul fast float %1751, %1553
  %1755 = fmul fast float %1752, %1553
  %1756 = fmul fast float %1753, %1553
  %1757 = call float @dx.op.dot3.f32(i32 55, float %1748, float %1749, float %1750, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1758 = call float @dx.op.dot3.f32(i32 55, float %1754, float %1755, float %1756, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1759 = select i1 %136, float %1757, float %1748
  %1760 = select i1 %136, float %1757, float %1749
  %1761 = select i1 %136, float 1.000000e+00, float %1750
  %1762 = select i1 %136, float %1758, float %1754
  %1763 = select i1 %136, float 0.000000e+00, float %1755
  %1764 = select i1 %136, float 0.000000e+00, float %1756
  %1765 = fmul fast float %1759, %1665
  %1766 = fmul fast float %1760, %1668
  %1767 = fmul fast float %1761, %1671
  %1768 = fadd fast float %1765, %1762
  %1769 = fadd fast float %1766, %1763
  %1770 = fadd fast float %1764, %1767
  %1771 = fmul fast float %1759, %1649
  %1772 = fmul fast float %1760, %1650
  %1773 = fmul fast float %1761, %1651
  %1774 = fmul fast float %71, %1674
  %1775 = fmul fast float %73, %1675
  %1776 = fsub fast float 1.000000e+00, %1774
  %1777 = fsub fast float 1.000000e+00, %1775
  %1778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1779 = extractvalue %dx.types.CBufRet.f32 %1778, 0
  %1780 = extractvalue %dx.types.CBufRet.f32 %1778, 1
  %1781 = extractvalue %dx.types.CBufRet.f32 %1778, 2
  %1782 = fmul fast float %1776, %1779
  %1783 = fmul fast float %1776, %1780
  %1784 = fmul fast float %1776, %1781
  %1785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1786 = extractvalue %dx.types.CBufRet.f32 %1785, 0
  %1787 = extractvalue %dx.types.CBufRet.f32 %1785, 1
  %1788 = extractvalue %dx.types.CBufRet.f32 %1785, 2
  %1789 = fmul fast float %1777, %1786
  %1790 = fmul fast float %1777, %1787
  %1791 = fmul fast float %1777, %1788
  %1792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1793 = extractvalue %dx.types.CBufRet.f32 %1792, 0
  %1794 = extractvalue %dx.types.CBufRet.f32 %1792, 1
  %1795 = extractvalue %dx.types.CBufRet.f32 %1792, 2
  %1796 = fadd fast float %1789, %1793
  %1797 = fadd fast float %1796, %1782
  %1798 = fadd fast float %1790, %1794
  %1799 = fadd fast float %1798, %1783
  %1800 = fadd fast float %1791, %1795
  %1801 = fadd fast float %1800, %1784
  %1802 = fmul fast float %1797, %942
  %1803 = fmul fast float %1799, %942
  %1804 = fmul fast float %1801, %942
  br label %1805

; <label>:1805                                    ; preds = %1747, %1661
  %1806 = phi float [ %1802, %1747 ], [ %101, %1661 ]
  %1807 = phi float [ %1803, %1747 ], [ %102, %1661 ]
  %1808 = phi float [ %1804, %1747 ], [ %103, %1661 ]
  %1809 = phi float [ %942, %1747 ], [ %59, %1661 ]
  %1810 = phi float [ %1768, %1747 ], [ %1665, %1661 ]
  %1811 = phi float [ %1769, %1747 ], [ %1668, %1661 ]
  %1812 = phi float [ %1770, %1747 ], [ %1671, %1661 ]
  %1813 = phi float [ %1771, %1747 ], [ %1649, %1661 ]
  %1814 = phi float [ %1772, %1747 ], [ %1650, %1661 ]
  %1815 = phi float [ %1773, %1747 ], [ %1651, %1661 ]
  %1816 = phi float [ %1748, %1747 ], [ 1.000000e+00, %1661 ]
  br i1 %950, label %2872, label %1817

; <label>:1817                                    ; preds = %1805
  %1818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1819 = extractvalue %dx.types.CBufRet.f32 %1818, 0
  %1820 = extractvalue %dx.types.CBufRet.f32 %1818, 1
  %1821 = extractvalue %dx.types.CBufRet.f32 %1818, 2
  %1822 = extractvalue %dx.types.CBufRet.f32 %1818, 3
  %1823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1824 = extractvalue %dx.types.CBufRet.f32 %1823, 0
  %1825 = extractvalue %dx.types.CBufRet.f32 %1823, 1
  %1826 = extractvalue %dx.types.CBufRet.f32 %1823, 2
  %1827 = extractvalue %dx.types.CBufRet.f32 %1823, 3
  %1828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1829 = extractvalue %dx.types.CBufRet.f32 %1828, 0
  %1830 = extractvalue %dx.types.CBufRet.f32 %1828, 1
  %1831 = extractvalue %dx.types.CBufRet.f32 %1828, 2
  %1832 = extractvalue %dx.types.CBufRet.f32 %1828, 3
  %1833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1834 = extractvalue %dx.types.CBufRet.f32 %1833, 0
  %1835 = extractvalue %dx.types.CBufRet.f32 %1833, 1
  %1836 = extractvalue %dx.types.CBufRet.f32 %1833, 2
  %1837 = extractvalue %dx.types.CBufRet.f32 %1833, 3
  %1838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1839 = extractvalue %dx.types.CBufRet.f32 %1838, 3
  %1840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1841 = extractvalue %dx.types.CBufRet.f32 %1840, 3
  %1842 = extractvalue %dx.types.CBufRet.f32 %1840, 0
  %1843 = extractvalue %dx.types.CBufRet.f32 %1840, 1
  %1844 = extractvalue %dx.types.CBufRet.f32 %1840, 2
  %1845 = fcmp fast olt float %1844, -5.000000e-01
  %1846 = call float @dx.op.dot3.f32(i32 55, float %1806, float %1807, float %1808, float %1806, float %1807, float %1808)  ; Dot3(ax,ay,az,bx,by,bz)
  %1847 = call float @dx.op.unary.f32(i32 25, float %1846)  ; Rsqrt(value)
  %1848 = fmul fast float %1847, %1846
  %1849 = fmul fast float %1847, %1806
  %1850 = fmul fast float %1847, %1807
  %1851 = fmul fast float %1847, %1808
  %1852 = fadd fast float %1848, %1822
  %1853 = call float @dx.op.dot3.f32(i32 55, float %1849, float %1850, float %1851, float %1819, float %1820, float %1821)  ; Dot3(ax,ay,az,bx,by,bz)
  %1854 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1855 = extractvalue %dx.types.CBufRet.i32 %1854, 1
  %1856 = and i32 %1855, 1
  %1857 = icmp ne i32 %1856, 0
  %1858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1859 = extractvalue %dx.types.CBufRet.f32 %1858, 2
  %1860 = fcmp fast ogt float %1859, 0.000000e+00
  %1861 = and i1 %1857, %1860
  br i1 %1861, label %1862, label %2268, !dx.controlflow.hints !81

; <label>:1862                                    ; preds = %1817
  %1863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1864 = extractvalue %dx.types.CBufRet.f32 %1863, 3
  %1865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1866 = extractvalue %dx.types.CBufRet.f32 %1865, 2
  %1867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1868 = extractvalue %dx.types.CBufRet.f32 %1867, 2
  %1869 = fsub fast float %1866, %1868
  %1870 = and i32 %1855, 2
  %1871 = extractvalue %dx.types.CBufRet.i32 %1854, 0
  %1872 = call i32 @dx.op.binary.i32(i32 40, i32 %1871, i32 3)  ; UMin(a,b)
  %1873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1874 = extractvalue %dx.types.CBufRet.f32 %1873, 0
  %1875 = extractvalue %dx.types.CBufRet.f32 %1873, 1
  %1876 = extractvalue %dx.types.CBufRet.f32 %1867, 0
  %1877 = extractvalue %dx.types.CBufRet.f32 %1867, 1
  %1878 = fsub fast float %1874, %1876
  %1879 = fsub fast float %1875, %1877
  %1880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1881 = extractvalue %dx.types.CBufRet.f32 %1880, 0
  %1882 = fcmp fast ogt float %1881, 0.000000e+00
  %1883 = fsub fast float -0.000000e+00, %1878
  %1884 = fsub fast float -0.000000e+00, %1879
  %1885 = call float @dx.op.dot2.f32(i32 54, float %1849, float %1850, float %1849, float %1850)  ; Dot2(ax,ay,bx,by)
  %1886 = call float @dx.op.dot2.f32(i32 54, float %1849, float %1850, float %1883, float %1884)  ; Dot2(ax,ay,bx,by)
  %1887 = fmul fast float %1886, 2.000000e+00
  %1888 = call float @dx.op.dot2.f32(i32 54, float %1883, float %1884, float %1883, float %1884)  ; Dot2(ax,ay,bx,by)
  %1889 = fmul fast float %1881, %1881
  %1890 = fsub fast float %1888, %1889
  %1891 = fmul fast float %1887, %1887
  %1892 = fmul fast float %1885, 4.000000e+00
  %1893 = fmul fast float %1892, %1890
  %1894 = fsub fast float %1891, %1893
  %1895 = fcmp fast ogt float %1894, 0.000000e+00
  br i1 %1895, label %1896, label %1911

; <label>:1896                                    ; preds = %1862
  %1897 = fcmp fast ogt float %1887, 0.000000e+00
  %1898 = call float @dx.op.unary.f32(i32 24, float %1894)  ; Sqrt(value)
  %1899 = fsub fast float -0.000000e+00, %1898
  %1900 = select i1 %1897, float %1898, float %1899
  %1901 = fadd fast float %1900, %1887
  %1902 = fmul float %1901, -5.000000e-01
  %1903 = fdiv fast float %1902, %1885
  %1904 = call float @dx.op.binary.f32(i32 35, float %1903, float 0.000000e+00)  ; FMax(a,b)
  %1905 = call float @dx.op.binary.f32(i32 36, float %1848, float %1904)  ; FMin(a,b)
  %1906 = fdiv fast float %1890, %1902
  %1907 = call float @dx.op.binary.f32(i32 35, float %1906, float 0.000000e+00)  ; FMax(a,b)
  %1908 = call float @dx.op.binary.f32(i32 36, float %1848, float %1907)  ; FMin(a,b)
  %1909 = call float @dx.op.binary.f32(i32 36, float %1905, float %1908)  ; FMin(a,b)
  %1910 = call float @dx.op.binary.f32(i32 35, float %1905, float %1908)  ; FMax(a,b)
  br label %1911

; <label>:1911                                    ; preds = %1896, %1862
  %1912 = phi float [ %1910, %1896 ], [ -1.000000e+00, %1862 ]
  %1913 = phi float [ %1909, %1896 ], [ -1.000000e+00, %1862 ]
  %1914 = phi i1 [ true, %1896 ], [ false, %1862 ]
  %1915 = and i1 %1882, %1914
  br i1 %1915, label %1916, label %1918

; <label>:1916                                    ; preds = %1911
  %1917 = fcmp fast oeq float %1913, %1912
  br i1 %1917, label %2221, label %1919

; <label>:1918                                    ; preds = %1911
  br i1 %1882, label %2221, label %1919

; <label>:1919                                    ; preds = %1918, %1916
  %1920 = phi float [ %1848, %1918 ], [ %1912, %1916 ]
  %1921 = phi float [ 0.000000e+00, %1918 ], [ %1913, %1916 ]
  %1922 = icmp ne i32 %1870, 0
  %1923 = fmul fast float %1920, %1851
  %1924 = fadd fast float %1923, %1864
  %1925 = fmul fast float %1924, %1920
  %1926 = select i1 %1922, float 0.000000e+00, float %1925
  %1927 = fcmp fast oeq float %1851, 0.000000e+00
  %1928 = fdiv fast float %1869, %1851
  %1929 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1928)  ; FMax(a,b)
  %1930 = select i1 %1927, float %1920, float %1929
  %1931 = call float @dx.op.binary.f32(i32 36, float %1920, float %1930)  ; FMin(a,b)
  %1932 = fcmp fast ogt float %1851, 0.000000e+00
  %1933 = fcmp fast olt float %1869, 0.000000e+00
  br i1 %1932, label %1934, label %1991

; <label>:1934                                    ; preds = %1919
  %1935 = icmp eq i32 %1870, 0
  br i1 %1933, label %1936, label %1980

; <label>:1936                                    ; preds = %1934
  %1937 = select i1 %1935, float %1920, float 0.000000e+00
  %1938 = fsub fast float -0.000000e+00, %1937
  %1939 = call float @dx.op.unary.f32(i32 6, float %1938)  ; FAbs(value)
  %1940 = fmul fast float %1937, %1851
  %1941 = fadd fast float %1940, %1864
  %1942 = fmul fast float %1939, %1941
  %1943 = fsub fast float %1926, %1942
  %1944 = fsub fast float %1920, %1939
  %1945 = select i1 %1935, float %1944, float 0.000000e+00
  %1946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1947 = extractvalue %dx.types.CBufRet.f32 %1946, 0
  %1948 = extractvalue %dx.types.CBufRet.f32 %1946, 1
  %1949 = extractvalue %dx.types.CBufRet.f32 %1946, 2
  %1950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1951 = extractvalue %dx.types.CBufRet.f32 %1950, 0
  %1952 = extractvalue %dx.types.CBufRet.f32 %1950, 1
  %1953 = extractvalue %dx.types.CBufRet.f32 %1950, 2
  %1954 = extractvalue %dx.types.CBufRet.f32 %1950, 3
  %1955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1956 = extractvalue %dx.types.CBufRet.f32 %1955, 3
  %1957 = call float @dx.op.binary.f32(i32 36, float %1943, float %1956)  ; FMin(a,b)
  %1958 = fmul fast float %1954, %1945
  %1959 = call float @dx.op.unary.f32(i32 7, float %1958)  ; Saturate(value)
  %1960 = fsub fast float %1951, %1947
  %1961 = fsub fast float %1952, %1948
  %1962 = fsub fast float %1953, %1949
  %1963 = fmul fast float %1959, %1960
  %1964 = fmul fast float %1959, %1961
  %1965 = fmul fast float %1959, %1962
  %1966 = fadd fast float %1963, %1947
  %1967 = fadd fast float %1964, %1948
  %1968 = fadd fast float %1965, %1949
  %1969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1970 = extractvalue %dx.types.CBufRet.f32 %1969, 0
  %1971 = extractvalue %dx.types.CBufRet.f32 %1969, 1
  %1972 = fadd fast float %1971, %1970
  %1973 = call float @dx.op.unary.f32(i32 7, float %1972)  ; Saturate(value)
  %1974 = extractvalue %dx.types.CBufRet.f32 %1969, 2
  %1975 = extractvalue %dx.types.CBufRet.f32 %1969, 3
  %1976 = fadd fast float %1975, %1974
  %1977 = call float @dx.op.unary.f32(i32 7, float %1976)  ; Saturate(value)
  %1978 = fmul fast float %1973, %1957
  %1979 = fmul fast float %1978, %1977
  br label %2221

; <label>:1980                                    ; preds = %1934
  br i1 %1935, label %1981, label %2002

; <label>:1981                                    ; preds = %1980
  %1982 = call float @dx.op.binary.f32(i32 36, float %1931, float %1921)  ; FMin(a,b)
  %1983 = fsub fast float %1931, %1982
  %1984 = fsub fast float %1983, %1920
  %1985 = call float @dx.op.unary.f32(i32 6, float %1984)  ; FAbs(value)
  %1986 = fadd fast float %1983, %1920
  %1987 = fmul fast float %1986, %1851
  %1988 = fadd fast float %1987, %1864
  %1989 = fmul fast float %1988, %1985
  %1990 = fsub fast float %1926, %1989
  br label %2002

; <label>:1991                                    ; preds = %1919
  br i1 %1933, label %1992, label %2002

; <label>:1992                                    ; preds = %1991
  %1993 = call float @dx.op.binary.f32(i32 35, float %1921, float %1931)  ; FMax(a,b)
  %1994 = icmp eq i32 %1870, 0
  %1995 = select i1 %1994, float %1931, float 0.000000e+00
  %1996 = fsub fast float -0.000000e+00, %1995
  %1997 = call float @dx.op.unary.f32(i32 6, float %1996)  ; FAbs(value)
  %1998 = fmul fast float %1995, %1851
  %1999 = fadd fast float %1998, %1864
  %2000 = fmul fast float %1997, %1999
  %2001 = fsub fast float %1926, %2000
  br label %2002

; <label>:2002                                    ; preds = %1992, %1991, %1981, %1980
  %2003 = phi float [ %1921, %1980 ], [ %1921, %1981 ], [ %1993, %1992 ], [ %1921, %1991 ]
  %2004 = phi float [ 0.000000e+00, %1980 ], [ %1985, %1981 ], [ %1997, %1992 ], [ 0.000000e+00, %1991 ]
  %2005 = phi float [ %1926, %1980 ], [ %1990, %1981 ], [ %2001, %1992 ], [ %1926, %1991 ]
  %2006 = phi float [ %1931, %1980 ], [ %1931, %1981 ], [ %1920, %1992 ], [ %1920, %1991 ]
  %2007 = getelementptr inbounds [3 x float], [3 x float]* %60, i32 0, i32 0
  store float -1.000000e+00, float* %2007, align 4, !tbaa !82, !noalias !86
  %2008 = getelementptr inbounds [3 x float], [3 x float]* %60, i32 0, i32 1
  store float -1.000000e+00, float* %2008, align 4, !tbaa !82, !noalias !86
  %2009 = getelementptr inbounds [3 x float], [3 x float]* %60, i32 0, i32 2
  store float -1.000000e+00, float* %2009, align 4, !tbaa !82, !noalias !86
  %2010 = getelementptr inbounds [3 x float], [3 x float]* %61, i32 0, i32 0
  store float -1.000000e+00, float* %2010, align 4, !tbaa !82, !noalias !86
  %2011 = getelementptr inbounds [3 x float], [3 x float]* %61, i32 0, i32 1
  store float -1.000000e+00, float* %2011, align 4, !tbaa !82, !noalias !86
  %2012 = getelementptr inbounds [3 x float], [3 x float]* %61, i32 0, i32 2
  store float -1.000000e+00, float* %2012, align 4, !tbaa !82, !noalias !86
  %2013 = icmp sgt i32 %1872, 0
  br i1 %2013, label %2014, label %2075

; <label>:2014                                    ; preds = %2002
  br label %2015

; <label>:2015                                    ; preds = %2064, %2014
  %2016 = phi i32 [ %2065, %2064 ], [ 0, %2014 ]
  %2017 = phi i32 [ %2066, %2064 ], [ 0, %2014 ]
  %2018 = add nuw i32 %2017, 171
  %2019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 %2018)  ; CBufferLoadLegacy(handle,regIndex)
  %2020 = extractvalue %dx.types.CBufRet.f32 %2019, 0
  %2021 = extractvalue %dx.types.CBufRet.f32 %2019, 1
  %2022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2023 = extractvalue %dx.types.CBufRet.f32 %2022, 0
  %2024 = extractvalue %dx.types.CBufRet.f32 %2022, 1
  %2025 = fsub fast float %2020, %2023
  %2026 = fsub fast float %2021, %2024
  %2027 = extractvalue %dx.types.CBufRet.f32 %2019, 2
  %2028 = fsub fast float -0.000000e+00, %2025
  %2029 = fsub fast float -0.000000e+00, %2026
  %2030 = call float @dx.op.dot2.f32(i32 54, float %1849, float %1850, float %2028, float %2029)  ; Dot2(ax,ay,bx,by)
  %2031 = fmul fast float %2030, 2.000000e+00
  %2032 = call float @dx.op.dot2.f32(i32 54, float %2028, float %2029, float %2028, float %2029)  ; Dot2(ax,ay,bx,by)
  %2033 = fmul fast float %2027, %2027
  %2034 = fsub fast float %2032, %2033
  %2035 = fmul fast float %2031, %2031
  %2036 = fmul fast float %1892, %2034
  %2037 = fsub fast float %2035, %2036
  %2038 = fcmp fast ogt float %2037, 0.000000e+00
  br i1 %2038, label %2039, label %2054

; <label>:2039                                    ; preds = %2015
  %2040 = fcmp fast ogt float %2031, 0.000000e+00
  %2041 = call float @dx.op.unary.f32(i32 24, float %2037)  ; Sqrt(value)
  %2042 = fsub fast float -0.000000e+00, %2041
  %2043 = select i1 %2040, float %2041, float %2042
  %2044 = fadd fast float %2043, %2031
  %2045 = fmul float %2044, -5.000000e-01
  %2046 = fdiv fast float %2045, %1885
  %2047 = call float @dx.op.binary.f32(i32 35, float %2046, float 0.000000e+00)  ; FMax(a,b)
  %2048 = call float @dx.op.binary.f32(i32 36, float %1920, float %2047)  ; FMin(a,b)
  %2049 = fdiv fast float %2034, %2045
  %2050 = call float @dx.op.binary.f32(i32 35, float %2049, float 0.000000e+00)  ; FMax(a,b)
  %2051 = call float @dx.op.binary.f32(i32 36, float %1920, float %2050)  ; FMin(a,b)
  %2052 = call float @dx.op.binary.f32(i32 36, float %2048, float %2051)  ; FMin(a,b)
  %2053 = call float @dx.op.binary.f32(i32 35, float %2048, float %2051)  ; FMax(a,b)
  br label %2054

; <label>:2054                                    ; preds = %2039, %2015
  %2055 = phi float [ %2053, %2039 ], [ -1.000000e+00, %2015 ]
  %2056 = phi float [ %2052, %2039 ], [ -1.000000e+00, %2015 ]
  %2057 = phi i1 [ true, %2039 ], [ false, %2015 ]
  br i1 %2057, label %2058, label %2064

; <label>:2058                                    ; preds = %2054
  %2059 = call float @dx.op.binary.f32(i32 35, float %2003, float %2056)  ; FMax(a,b)
  %2060 = getelementptr inbounds [3 x float], [3 x float]* %60, i32 0, i32 %2017
  store float %2059, float* %2060, align 4, !tbaa !82, !noalias !86
  %2061 = call float @dx.op.binary.f32(i32 35, float %2003, float %2055)  ; FMax(a,b)
  %2062 = getelementptr inbounds [3 x float], [3 x float]* %61, i32 0, i32 %2017
  store float %2061, float* %2062, align 4, !tbaa !82, !noalias !86
  %2063 = add nsw i32 %2016, 1
  br label %2064

; <label>:2064                                    ; preds = %2058, %2054
  %2065 = phi i32 [ %2063, %2058 ], [ %2016, %2054 ]
  %2066 = add nuw nsw i32 %2017, 1
  %2067 = icmp eq i32 %2066, %1872
  br i1 %2067, label %2068, label %2015

; <label>:2068                                    ; preds = %2064
  %2069 = load float, float* %2009, align 4, !tbaa !82, !alias.scope !102, !noalias !105
  %2070 = load float, float* %2008, align 4, !tbaa !82, !alias.scope !108, !noalias !109
  %2071 = load float, float* %2007, align 4, !tbaa !82, !alias.scope !110, !noalias !111
  %2072 = load float, float* %2012, align 4, !tbaa !82, !alias.scope !112, !noalias !115
  %2073 = load float, float* %2011, align 4, !tbaa !82, !alias.scope !118, !noalias !119
  %2074 = load float, float* %2010, align 4, !tbaa !82, !alias.scope !120, !noalias !121
  br label %2075

; <label>:2075                                    ; preds = %2068, %2002
  %2076 = phi float [ -1.000000e+00, %2002 ], [ %2074, %2068 ]
  %2077 = phi float [ -1.000000e+00, %2002 ], [ %2073, %2068 ]
  %2078 = phi float [ -1.000000e+00, %2002 ], [ %2072, %2068 ]
  %2079 = phi float [ -1.000000e+00, %2002 ], [ %2071, %2068 ]
  %2080 = phi float [ -1.000000e+00, %2002 ], [ %2070, %2068 ]
  %2081 = phi float [ -1.000000e+00, %2002 ], [ %2069, %2068 ]
  %2082 = phi i32 [ 0, %2002 ], [ %2065, %2068 ]
  %2083 = call float @dx.op.binary.f32(i32 36, float %2080, float %2081)  ; FMin(a,b)
  %2084 = call float @dx.op.binary.f32(i32 36, float %2079, float %2083)  ; FMin(a,b)
  %2085 = call float @dx.op.binary.f32(i32 35, float %2079, float %2080)  ; FMax(a,b)
  %2086 = call float @dx.op.binary.f32(i32 36, float %2085, float %2081)  ; FMin(a,b)
  %2087 = call float @dx.op.binary.f32(i32 36, float %2079, float %2080)  ; FMin(a,b)
  %2088 = call float @dx.op.binary.f32(i32 35, float %2087, float %2086)  ; FMax(a,b)
  %2089 = call float @dx.op.binary.f32(i32 35, float %2080, float %2081)  ; FMax(a,b)
  %2090 = call float @dx.op.binary.f32(i32 35, float %2079, float %2089)  ; FMax(a,b)
  store float %2084, float* %2007, align 4, !tbaa !82, !alias.scope !110, !noalias !111
  store float %2088, float* %2008, align 4, !tbaa !82, !alias.scope !108, !noalias !109
  store float %2090, float* %2009, align 4, !tbaa !82, !alias.scope !102, !noalias !105
  %2091 = call float @dx.op.binary.f32(i32 36, float %2077, float %2078)  ; FMin(a,b)
  %2092 = call float @dx.op.binary.f32(i32 36, float %2076, float %2091)  ; FMin(a,b)
  %2093 = call float @dx.op.binary.f32(i32 35, float %2076, float %2077)  ; FMax(a,b)
  %2094 = call float @dx.op.binary.f32(i32 36, float %2093, float %2078)  ; FMin(a,b)
  %2095 = call float @dx.op.binary.f32(i32 36, float %2076, float %2077)  ; FMin(a,b)
  %2096 = call float @dx.op.binary.f32(i32 35, float %2095, float %2094)  ; FMax(a,b)
  %2097 = call float @dx.op.binary.f32(i32 35, float %2077, float %2078)  ; FMax(a,b)
  %2098 = call float @dx.op.binary.f32(i32 35, float %2076, float %2097)  ; FMax(a,b)
  store float %2092, float* %2010, align 4, !tbaa !82, !alias.scope !120, !noalias !121
  store float %2096, float* %2011, align 4, !tbaa !82, !alias.scope !118, !noalias !119
  store float %2098, float* %2012, align 4, !tbaa !82, !alias.scope !112, !noalias !115
  %2099 = sub nsw i32 3, %2082
  %2100 = icmp sgt i32 %2099, 2
  br i1 %2100, label %2101, label %2139

; <label>:2101                                    ; preds = %2075
  %2102 = icmp eq i32 %1870, 0
  %2103 = fsub fast float %1920, %2004
  %2104 = select i1 %2102, float %2103, float %2004
  %2105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2106 = extractvalue %dx.types.CBufRet.f32 %2105, 0
  %2107 = extractvalue %dx.types.CBufRet.f32 %2105, 1
  %2108 = extractvalue %dx.types.CBufRet.f32 %2105, 2
  %2109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2110 = extractvalue %dx.types.CBufRet.f32 %2109, 0
  %2111 = extractvalue %dx.types.CBufRet.f32 %2109, 1
  %2112 = extractvalue %dx.types.CBufRet.f32 %2109, 2
  %2113 = extractvalue %dx.types.CBufRet.f32 %2109, 3
  %2114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2115 = extractvalue %dx.types.CBufRet.f32 %2114, 3
  %2116 = call float @dx.op.binary.f32(i32 36, float %2005, float %2115)  ; FMin(a,b)
  %2117 = fmul fast float %2113, %2104
  %2118 = call float @dx.op.unary.f32(i32 7, float %2117)  ; Saturate(value)
  %2119 = fsub fast float %2110, %2106
  %2120 = fsub fast float %2111, %2107
  %2121 = fsub fast float %2112, %2108
  %2122 = fmul fast float %2118, %2119
  %2123 = fmul fast float %2118, %2120
  %2124 = fmul fast float %2118, %2121
  %2125 = fadd fast float %2122, %2106
  %2126 = fadd fast float %2123, %2107
  %2127 = fadd fast float %2124, %2108
  %2128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2129 = extractvalue %dx.types.CBufRet.f32 %2128, 0
  %2130 = extractvalue %dx.types.CBufRet.f32 %2128, 1
  %2131 = fadd fast float %2130, %2129
  %2132 = call float @dx.op.unary.f32(i32 7, float %2131)  ; Saturate(value)
  %2133 = extractvalue %dx.types.CBufRet.f32 %2128, 2
  %2134 = extractvalue %dx.types.CBufRet.f32 %2128, 3
  %2135 = fadd fast float %2134, %2133
  %2136 = call float @dx.op.unary.f32(i32 7, float %2135)  ; Saturate(value)
  %2137 = fmul fast float %2132, %2116
  %2138 = fmul fast float %2137, %2136
  br label %2221

; <label>:2139                                    ; preds = %2075
  %2140 = getelementptr inbounds [3 x float], [3 x float]* %60, i32 0, i32 %2099
  %2141 = load float, float* %2140, align 4, !tbaa !82, !noalias !86
  %2142 = fcmp fast olt float %2141, %2006
  %2143 = icmp sgt i32 %2082, 0
  %2144 = and i1 %2143, %2142
  br i1 %2144, label %2145, label %2182

; <label>:2145                                    ; preds = %2139
  br label %2146

; <label>:2146                                    ; preds = %2175, %2145
  %2147 = phi float [ %2176, %2175 ], [ %2004, %2145 ]
  %2148 = phi float [ %2177, %2175 ], [ %2005, %2145 ]
  %2149 = phi float [ %2157, %2175 ], [ %2141, %2145 ]
  %2150 = phi i32 [ %2154, %2175 ], [ %2099, %2145 ]
  %2151 = getelementptr inbounds [3 x float], [3 x float]* %61, i32 0, i32 %2150
  %2152 = load float, float* %2151, align 4, !tbaa !82, !noalias !86
  %2153 = icmp slt i32 %2150, 2
  %2154 = add nsw i32 %2150, 1
  %2155 = getelementptr inbounds [3 x float], [3 x float]* %60, i32 0, i32 %2154
  %2156 = load float, float* %2155, align 4, !tbaa !82, !noalias !86
  %2157 = select i1 %2153, float %2156, float %1920
  %2158 = call float @dx.op.binary.f32(i32 36, float %2157, float %2152)  ; FMin(a,b)
  %2159 = call float @dx.op.binary.f32(i32 36, float %2006, float %2158)  ; FMin(a,b)
  %2160 = icmp eq i32 %1870, 0
  %2161 = fadd fast float %2159, %2149
  %2162 = fmul fast float %2161, %1851
  %2163 = fadd fast float %2162, %1864
  br i1 %2160, label %2169, label %2164

; <label>:2164                                    ; preds = %2146
  %2165 = fsub fast float %2159, %2149
  %2166 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2165)  ; FMax(a,b)
  %2167 = fmul fast float %2166, %2163
  %2168 = fadd fast float %2167, %2148
  br label %2175

; <label>:2169                                    ; preds = %2146
  %2170 = fsub fast float %2149, %2159
  %2171 = call float @dx.op.unary.f32(i32 6, float %2170)  ; FAbs(value)
  %2172 = fadd fast float %2171, %2147
  %2173 = fmul fast float %2171, %2163
  %2174 = fsub fast float %2148, %2173
  br label %2175

; <label>:2175                                    ; preds = %2169, %2164
  %2176 = phi float [ %2166, %2164 ], [ %2172, %2169 ]
  %2177 = phi float [ %2168, %2164 ], [ %2174, %2169 ]
  %2178 = fcmp fast olt float %2157, %2006
  %2179 = icmp slt i32 %2154, 3
  %2180 = and i1 %2179, %2178
  br i1 %2180, label %2146, label %2181

; <label>:2181                                    ; preds = %2175
  br label %2182

; <label>:2182                                    ; preds = %2181, %2139
  %2183 = phi float [ %2004, %2139 ], [ %2176, %2181 ]
  %2184 = phi float [ %2005, %2139 ], [ %2177, %2181 ]
  %2185 = fsub fast float %1920, %2183
  %2186 = select i1 %1922, float %2183, float %2185
  %2187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2188 = extractvalue %dx.types.CBufRet.f32 %2187, 0
  %2189 = extractvalue %dx.types.CBufRet.f32 %2187, 1
  %2190 = extractvalue %dx.types.CBufRet.f32 %2187, 2
  %2191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2192 = extractvalue %dx.types.CBufRet.f32 %2191, 0
  %2193 = extractvalue %dx.types.CBufRet.f32 %2191, 1
  %2194 = extractvalue %dx.types.CBufRet.f32 %2191, 2
  %2195 = extractvalue %dx.types.CBufRet.f32 %2191, 3
  %2196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2197 = extractvalue %dx.types.CBufRet.f32 %2196, 3
  %2198 = call float @dx.op.binary.f32(i32 36, float %2184, float %2197)  ; FMin(a,b)
  %2199 = fmul fast float %2195, %2186
  %2200 = call float @dx.op.unary.f32(i32 7, float %2199)  ; Saturate(value)
  %2201 = fsub fast float %2192, %2188
  %2202 = fsub fast float %2193, %2189
  %2203 = fsub fast float %2194, %2190
  %2204 = fmul fast float %2200, %2201
  %2205 = fmul fast float %2200, %2202
  %2206 = fmul fast float %2200, %2203
  %2207 = fadd fast float %2204, %2188
  %2208 = fadd fast float %2205, %2189
  %2209 = fadd fast float %2206, %2190
  %2210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2211 = extractvalue %dx.types.CBufRet.f32 %2210, 0
  %2212 = extractvalue %dx.types.CBufRet.f32 %2210, 1
  %2213 = fadd fast float %2212, %2211
  %2214 = call float @dx.op.unary.f32(i32 7, float %2213)  ; Saturate(value)
  %2215 = extractvalue %dx.types.CBufRet.f32 %2210, 2
  %2216 = extractvalue %dx.types.CBufRet.f32 %2210, 3
  %2217 = fadd fast float %2216, %2215
  %2218 = call float @dx.op.unary.f32(i32 7, float %2217)  ; Saturate(value)
  %2219 = fmul fast float %2214, %2198
  %2220 = fmul fast float %2219, %2218
  br label %2221

; <label>:2221                                    ; preds = %2182, %2101, %1936, %1918, %1916
  %2222 = phi float [ %1945, %1936 ], [ %2104, %2101 ], [ %2186, %2182 ], [ 0.000000e+00, %1916 ], [ 0.000000e+00, %1918 ]
  %2223 = phi float [ %1979, %1936 ], [ %2138, %2101 ], [ %2220, %2182 ], [ 0.000000e+00, %1916 ], [ 0.000000e+00, %1918 ]
  %2224 = phi float [ %1966, %1936 ], [ %2125, %2101 ], [ %2207, %2182 ], [ 0.000000e+00, %1916 ], [ 0.000000e+00, %1918 ]
  %2225 = phi float [ %1967, %1936 ], [ %2126, %2101 ], [ %2208, %2182 ], [ 0.000000e+00, %1916 ], [ 0.000000e+00, %1918 ]
  %2226 = phi float [ %1968, %1936 ], [ %2127, %2101 ], [ %2209, %2182 ], [ 0.000000e+00, %1916 ], [ 0.000000e+00, %1918 ]
  %2227 = fmul fast float %1859, %2223
  %2228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2229 = extractvalue %dx.types.CBufRet.f32 %2228, 2
  %2230 = fsub fast float %1866, %2229
  %2231 = fcmp fast olt float %2227, -2.000000e+01
  %2232 = call float @dx.op.unary.f32(i32 21, float %2227)  ; Exp(value)
  %2233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2234 = extractvalue %dx.types.CBufRet.f32 %2233, 2
  %2235 = extractvalue %dx.types.CBufRet.f32 %2233, 3
  %2236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2237 = extractvalue %dx.types.CBufRet.f32 %2236, 2
  %2238 = fmul fast float %2235, %2230
  %2239 = call float @dx.op.unary.f32(i32 7, float %2238)  ; Saturate(value)
  %2240 = fsub fast float 1.000000e+00, %2239
  %2241 = fmul fast float %1851, 5.000000e-01
  %2242 = fadd fast float %2241, 5.000000e-01
  %2243 = call float @dx.op.unary.f32(i32 7, float %2242)  ; Saturate(value)
  %2244 = fsub fast float 1.000000e+00, %2243
  %2245 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2240)  ; FMax(a,b)
  %2246 = fdiv fast float %2244, %2245
  %2247 = fsub fast float %2230, %1808
  %2248 = call float @dx.op.unary.f32(i32 6, float %2247)  ; FAbs(value)
  %2249 = fmul fast float %2248, %2234
  %2250 = call float @dx.op.unary.f32(i32 7, float %2246)  ; Saturate(value)
  %2251 = fsub fast float 1.000000e+00, %2249
  %2252 = fmul fast float %2251, %2250
  %2253 = fadd fast float %2252, %2249
  %2254 = fmul fast float %2237, %2230
  %2255 = call float @dx.op.unary.f32(i32 7, float %2254)  ; Saturate(value)
  %2256 = fsub fast float 1.000000e+00, %2253
  %2257 = fmul fast float %2256, %2255
  %2258 = fadd fast float %2257, %2253
  %2259 = call float @dx.op.unary.f32(i32 7, float %2258)  ; Saturate(value)
  %2260 = fadd fast float %2232, -1.000000e+00
  %2261 = select i1 %2231, float -1.000000e+00, float %2260
  %2262 = fmul fast float %2259, %2261
  %2263 = fadd fast float %2262, 1.000000e+00
  %2264 = fsub fast float -0.000000e+00, %2262
  %2265 = fmul fast float %2224, %2264
  %2266 = fmul fast float %2225, %2264
  %2267 = fmul fast float %2226, %2264
  br label %2268

; <label>:2268                                    ; preds = %2221, %1817
  %2269 = phi float [ %2222, %2221 ], [ 0.000000e+00, %1817 ]
  %2270 = phi float [ %2263, %2221 ], [ 1.000000e+00, %1817 ]
  %2271 = phi float [ %2265, %2221 ], [ 0.000000e+00, %1817 ]
  %2272 = phi float [ %2266, %2221 ], [ 0.000000e+00, %1817 ]
  %2273 = phi float [ %2267, %2221 ], [ 0.000000e+00, %1817 ]
  %2274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2275 = extractvalue %dx.types.CBufRet.f32 %2274, 1
  %2276 = fsub fast float 1.000000e+00, %2270
  %2277 = fmul fast float %2276, %1852
  %2278 = fmul fast float %2277, %2275
  %2279 = fsub fast float %1852, %2278
  br i1 %1845, label %2280, label %2309, !dx.controlflow.hints !122

; <label>:2280                                    ; preds = %2268
  %2281 = fmul fast float %1853, %1842
  %2282 = fadd fast float %2281, %1843
  %2283 = call float @dx.op.unary.f32(i32 7, float %2282)  ; Saturate(value)
  %2284 = fmul fast float %1824, %2279
  %2285 = fsub fast float -0.000000e+00, %2284
  %2286 = fmul fast float %1825, %2279
  %2287 = fsub fast float -0.000000e+00, %2286
  %2288 = call float @dx.op.unary.f32(i32 21, float %2285)  ; Exp(value)
  %2289 = call float @dx.op.unary.f32(i32 21, float %2287)  ; Exp(value)
  %2290 = call float @dx.op.binary.f32(i32 35, float %1832, float %2288)  ; FMax(a,b)
  %2291 = call float @dx.op.binary.f32(i32 35, float %1832, float %2289)  ; FMax(a,b)
  %2292 = fsub fast float %2291, %2290
  %2293 = fmul fast float %2292, %2283
  %2294 = fadd fast float %2293, %2290
  %2295 = call float @dx.op.unary.f32(i32 7, float %2294)  ; Saturate(value)
  %2296 = fsub fast float %1829, %1834
  %2297 = fsub fast float %1830, %1835
  %2298 = fsub fast float %1831, %1836
  %2299 = fmul fast float %2283, %2296
  %2300 = fmul fast float %2283, %2297
  %2301 = fmul fast float %2283, %2298
  %2302 = fadd fast float %2299, %1834
  %2303 = fadd fast float %2300, %1835
  %2304 = fadd fast float %2301, %1836
  %2305 = fsub fast float 1.000000e+00, %2295
  %2306 = fmul fast float %2305, %2302
  %2307 = fmul fast float %2305, %2303
  %2308 = fmul fast float %2305, %2304
  br label %2368

; <label>:2309                                    ; preds = %2268
  %2310 = fmul fast float %2279, %1841
  %2311 = call float @dx.op.unary.f32(i32 7, float %2310)  ; Saturate(value)
  %2312 = fsub fast float 2.000000e+00, %2311
  %2313 = fmul fast float %2311, 9.921875e-01
  %2314 = fmul fast float %2313, %2312
  %2315 = fadd fast float %2314, 3.906250e-03
  %2316 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %26, float %2315, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2317 = extractvalue %dx.types.ResRet.f32 %2316, 0
  %2318 = fsub fast float %2311, %2317
  %2319 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2318)  ; FMax(a,b)
  %2320 = fmul fast float %1827, %1808
  %2321 = call float @dx.op.unary.f32(i32 6, float %2320)  ; FAbs(value)
  %2322 = fcmp fast ogt float %2321, 0x3EB0C6F7A0000000
  br i1 %2322, label %2323, label %2329, !dx.controlflow.hints !123

; <label>:2323                                    ; preds = %2309
  %2324 = fmul fast float %2320, 0xBFF7154760000000
  %2325 = call float @dx.op.unary.f32(i32 21, float %2324)  ; Exp(value)
  %2326 = fsub fast float 1.000000e+00, %2325
  %2327 = fdiv fast float %2326, %2320
  %2328 = fmul fast float %2327, %1837
  br label %2329

; <label>:2329                                    ; preds = %2323, %2309
  %2330 = phi float [ %2328, %2323 ], [ %1837, %2309 ]
  %2331 = fadd fast float %2330, %1839
  %2332 = fmul fast float %2331, %2319
  %2333 = fmul fast float %1824, %2332
  %2334 = fsub fast float -0.000000e+00, %2333
  %2335 = fmul fast float %1825, %2332
  %2336 = fsub fast float -0.000000e+00, %2335
  %2337 = fmul fast float %1826, %2332
  %2338 = fsub fast float -0.000000e+00, %2337
  %2339 = call float @dx.op.unary.f32(i32 21, float %2334)  ; Exp(value)
  %2340 = call float @dx.op.unary.f32(i32 21, float %2336)  ; Exp(value)
  %2341 = call float @dx.op.unary.f32(i32 21, float %2338)  ; Exp(value)
  %2342 = fmul fast float %1853, %1853
  %2343 = fadd fast float %2342, 1.000000e+00
  %2344 = fmul fast float %2343, 0x3FAE8EC8A0000000
  %2345 = fmul fast float %2344, %1834
  %2346 = fmul fast float %2344, %1835
  %2347 = fmul fast float %2344, %1836
  %2348 = fmul fast float %1853, %1832
  %2349 = fsub fast float 1.000000e+00, %2348
  %2350 = fmul fast float %1832, %1832
  %2351 = fsub fast float 1.000000e+00, %2350
  %2352 = fmul fast float %2351, 0x3FB45F3060000000
  %2353 = fmul fast float %2349, %2349
  %2354 = fdiv fast float 1.000000e+00, %2353
  %2355 = fmul fast float %2352, %2354
  %2356 = fmul fast float %2355, %1829
  %2357 = fmul fast float %2355, %1830
  %2358 = fmul fast float %2355, %1831
  %2359 = fadd fast float %2356, %2345
  %2360 = fadd fast float %2357, %2346
  %2361 = fadd fast float %2358, %2347
  %2362 = fsub fast float 1.000000e+00, %2339
  %2363 = fsub fast float 1.000000e+00, %2340
  %2364 = fsub fast float 1.000000e+00, %2341
  %2365 = fmul fast float %2359, %2362
  %2366 = fmul fast float %2360, %2363
  %2367 = fmul fast float %2361, %2364
  br label %2368

; <label>:2368                                    ; preds = %2329, %2280
  %2369 = phi float [ %2306, %2280 ], [ %2365, %2329 ]
  %2370 = phi float [ %2307, %2280 ], [ %2366, %2329 ]
  %2371 = phi float [ %2308, %2280 ], [ %2367, %2329 ]
  %2372 = phi float [ %2295, %2280 ], [ %2339, %2329 ]
  %2373 = phi float [ %2295, %2280 ], [ %2340, %2329 ]
  %2374 = phi float [ %2295, %2280 ], [ %2341, %2329 ]
  br i1 %1861, label %2375, label %2573, !dx.controlflow.hints !124

; <label>:2375                                    ; preds = %2368
  %2376 = extractvalue %dx.types.CBufRet.f32 %2274, 0
  %2377 = fmul fast float %2376, %2276
  %2378 = fsub fast float %2271, %2369
  %2379 = fsub fast float %2272, %2370
  %2380 = fsub fast float %2273, %2371
  %2381 = fmul fast float %2377, %2378
  %2382 = fmul fast float %2377, %2379
  %2383 = fmul fast float %2377, %2380
  %2384 = fadd fast float %2381, %2369
  %2385 = fadd fast float %2382, %2370
  %2386 = fadd fast float %2383, %2371
  %2387 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2372)  ; FMax(a,b)
  %2388 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2373)  ; FMax(a,b)
  %2389 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2374)  ; FMax(a,b)
  %2390 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2270)  ; FMax(a,b)
  %2391 = call float @dx.op.binary.f32(i32 35, float %2269, float %2279)  ; FMax(a,b)
  %2392 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2391)  ; FMax(a,b)
  %2393 = fdiv fast float %2269, %2392
  %2394 = call float @dx.op.unary.f32(i32 7, float %2393)  ; Saturate(value)
  %2395 = fdiv fast float %2279, %2392
  %2396 = call float @dx.op.unary.f32(i32 7, float %2395)  ; Saturate(value)
  %2397 = fcmp fast une float %2390, 1.000000e+00
  br i1 %2397, label %2398, label %2411, !dx.controlflow.hints !125

; <label>:2398                                    ; preds = %2375
  %2399 = call float @dx.op.unary.f32(i32 23, float %2390)  ; Log(value)
  %2400 = fmul fast float %2399, 0x3FE62E4300000000
  %2401 = fmul fast float %2271, %2400
  %2402 = fsub fast float -0.000000e+00, %2401
  %2403 = fmul fast float %2272, %2400
  %2404 = fsub fast float -0.000000e+00, %2403
  %2405 = fmul fast float %2273, %2400
  %2406 = fsub fast float -0.000000e+00, %2405
  %2407 = fsub fast float 1.000000e+00, %2390
  %2408 = fdiv fast float %2402, %2407
  %2409 = fdiv fast float %2404, %2407
  %2410 = fdiv fast float %2406, %2407
  br label %2411

; <label>:2411                                    ; preds = %2398, %2375
  %2412 = phi float [ %2408, %2398 ], [ %2271, %2375 ]
  %2413 = phi float [ %2409, %2398 ], [ %2272, %2375 ]
  %2414 = phi float [ %2410, %2398 ], [ %2273, %2375 ]
  %2415 = phi float [ %2400, %2398 ], [ 0.000000e+00, %2375 ]
  %2416 = fcmp fast une float %2387, 1.000000e+00
  br i1 %2416, label %2417, label %2424, !dx.controlflow.hints !126

; <label>:2417                                    ; preds = %2411
  %2418 = call float @dx.op.unary.f32(i32 23, float %2387)  ; Log(value)
  %2419 = fmul fast float %2418, 0x3FE62E4300000000
  %2420 = fmul fast float %2384, %2419
  %2421 = fsub fast float -0.000000e+00, %2420
  %2422 = fsub fast float 1.000000e+00, %2387
  %2423 = fdiv fast float %2421, %2422
  br label %2424

; <label>:2424                                    ; preds = %2417, %2411
  %2425 = phi float [ %2423, %2417 ], [ %2384, %2411 ]
  %2426 = phi float [ %2419, %2417 ], [ 0.000000e+00, %2411 ]
  %2427 = fcmp fast une float %2388, 1.000000e+00
  br i1 %2427, label %2428, label %2435, !dx.controlflow.hints !126

; <label>:2428                                    ; preds = %2424
  %2429 = call float @dx.op.unary.f32(i32 23, float %2388)  ; Log(value)
  %2430 = fmul fast float %2429, 0x3FE62E4300000000
  %2431 = fmul fast float %2385, %2430
  %2432 = fsub fast float -0.000000e+00, %2431
  %2433 = fsub fast float 1.000000e+00, %2388
  %2434 = fdiv fast float %2432, %2433
  br label %2435

; <label>:2435                                    ; preds = %2428, %2424
  %2436 = phi float [ %2434, %2428 ], [ %2385, %2424 ]
  %2437 = phi float [ %2430, %2428 ], [ 0.000000e+00, %2424 ]
  %2438 = fcmp fast une float %2389, 1.000000e+00
  br i1 %2438, label %2439, label %2446, !dx.controlflow.hints !126

; <label>:2439                                    ; preds = %2435
  %2440 = call float @dx.op.unary.f32(i32 23, float %2389)  ; Log(value)
  %2441 = fmul fast float %2440, 0x3FE62E4300000000
  %2442 = fmul fast float %2386, %2441
  %2443 = fsub fast float -0.000000e+00, %2442
  %2444 = fsub fast float 1.000000e+00, %2389
  %2445 = fdiv fast float %2443, %2444
  br label %2446

; <label>:2446                                    ; preds = %2439, %2435
  %2447 = phi float [ %2445, %2439 ], [ %2386, %2435 ]
  %2448 = phi float [ %2441, %2439 ], [ 0.000000e+00, %2435 ]
  %2449 = fmul fast float %2412, %2396
  %2450 = fmul fast float %2413, %2396
  %2451 = fmul fast float %2414, %2396
  %2452 = fmul fast float %2415, %2396
  %2453 = fmul fast float %2425, %2394
  %2454 = fmul fast float %2436, %2394
  %2455 = fmul fast float %2447, %2394
  %2456 = fmul fast float %2426, %2394
  %2457 = fmul fast float %2437, %2394
  %2458 = fmul fast float %2448, %2394
  %2459 = fadd fast float %2453, %2449
  %2460 = fadd fast float %2454, %2450
  %2461 = fadd fast float %2455, %2451
  %2462 = fadd fast float %2456, %2452
  %2463 = fadd fast float %2457, %2452
  %2464 = fadd fast float %2458, %2452
  %2465 = fcmp fast une float %2462, 0.000000e+00
  br i1 %2465, label %2466, label %2473, !dx.controlflow.hints !127

; <label>:2466                                    ; preds = %2446
  %2467 = fmul fast float %2462, 0x3FF7154760000000
  %2468 = call float @dx.op.unary.f32(i32 21, float %2467)  ; Exp(value)
  %2469 = fsub fast float 1.000000e+00, %2468
  %2470 = fmul fast float %2459, %2469
  %2471 = fsub fast float -0.000000e+00, %2470
  %2472 = fdiv fast float %2471, %2462
  br label %2473

; <label>:2473                                    ; preds = %2466, %2446
  %2474 = phi float [ %2468, %2466 ], [ 1.000000e+00, %2446 ]
  %2475 = phi float [ %2472, %2466 ], [ %2459, %2446 ]
  %2476 = fcmp fast une float %2463, 0.000000e+00
  br i1 %2476, label %2477, label %2484, !dx.controlflow.hints !127

; <label>:2477                                    ; preds = %2473
  %2478 = fmul fast float %2463, 0x3FF7154760000000
  %2479 = call float @dx.op.unary.f32(i32 21, float %2478)  ; Exp(value)
  %2480 = fsub fast float 1.000000e+00, %2479
  %2481 = fmul fast float %2460, %2480
  %2482 = fsub fast float -0.000000e+00, %2481
  %2483 = fdiv fast float %2482, %2463
  br label %2484

; <label>:2484                                    ; preds = %2477, %2473
  %2485 = phi float [ %2479, %2477 ], [ 1.000000e+00, %2473 ]
  %2486 = phi float [ %2483, %2477 ], [ %2460, %2473 ]
  %2487 = fcmp fast une float %2464, 0.000000e+00
  br i1 %2487, label %2488, label %2495, !dx.controlflow.hints !127

; <label>:2488                                    ; preds = %2484
  %2489 = fmul fast float %2464, 0x3FF7154760000000
  %2490 = call float @dx.op.unary.f32(i32 21, float %2489)  ; Exp(value)
  %2491 = fsub fast float 1.000000e+00, %2490
  %2492 = fmul fast float %2461, %2491
  %2493 = fsub fast float -0.000000e+00, %2492
  %2494 = fdiv fast float %2493, %2464
  br label %2495

; <label>:2495                                    ; preds = %2488, %2484
  %2496 = phi float [ %2490, %2488 ], [ 1.000000e+00, %2484 ]
  %2497 = phi float [ %2494, %2488 ], [ %2461, %2484 ]
  %2498 = fcmp fast ogt float %2394, %2396
  br i1 %2498, label %2499, label %2519

; <label>:2499                                    ; preds = %2495
  %2500 = fsub fast float 1.000000e+00, %2396
  %2501 = fmul fast float %2412, %2500
  %2502 = fmul fast float %2413, %2500
  %2503 = fmul fast float %2414, %2500
  %2504 = fmul fast float %2415, %2500
  %2505 = fcmp fast une float %2504, 0.000000e+00
  br i1 %2505, label %2506, label %2557, !dx.controlflow.hints !128

; <label>:2506                                    ; preds = %2499
  %2507 = fmul fast float %2504, 0x3FF7154760000000
  %2508 = call float @dx.op.unary.f32(i32 21, float %2507)  ; Exp(value)
  %2509 = fsub fast float 1.000000e+00, %2508
  %2510 = fmul fast float %2501, %2509
  %2511 = fsub fast float -0.000000e+00, %2510
  %2512 = fmul fast float %2502, %2509
  %2513 = fsub fast float -0.000000e+00, %2512
  %2514 = fmul fast float %2503, %2509
  %2515 = fsub fast float -0.000000e+00, %2514
  %2516 = fdiv fast float %2511, %2504
  %2517 = fdiv fast float %2513, %2504
  %2518 = fdiv fast float %2515, %2504
  br label %2557

; <label>:2519                                    ; preds = %2495
  %2520 = fsub fast float 1.000000e+00, %2394
  %2521 = fmul fast float %2425, %2520
  %2522 = fmul fast float %2436, %2520
  %2523 = fmul fast float %2447, %2520
  %2524 = fmul fast float %2426, %2520
  %2525 = fmul fast float %2437, %2520
  %2526 = fmul fast float %2448, %2520
  %2527 = fcmp fast une float %2524, 0.000000e+00
  br i1 %2527, label %2528, label %2535, !dx.controlflow.hints !127

; <label>:2528                                    ; preds = %2519
  %2529 = fmul fast float %2524, 0x3FF7154760000000
  %2530 = call float @dx.op.unary.f32(i32 21, float %2529)  ; Exp(value)
  %2531 = fsub fast float 1.000000e+00, %2530
  %2532 = fmul fast float %2521, %2531
  %2533 = fsub fast float -0.000000e+00, %2532
  %2534 = fdiv fast float %2533, %2524
  br label %2535

; <label>:2535                                    ; preds = %2528, %2519
  %2536 = phi float [ %2534, %2528 ], [ %2521, %2519 ]
  %2537 = phi float [ %2530, %2528 ], [ 1.000000e+00, %2519 ]
  %2538 = fcmp fast une float %2525, 0.000000e+00
  br i1 %2538, label %2539, label %2546, !dx.controlflow.hints !127

; <label>:2539                                    ; preds = %2535
  %2540 = fmul fast float %2525, 0x3FF7154760000000
  %2541 = call float @dx.op.unary.f32(i32 21, float %2540)  ; Exp(value)
  %2542 = fsub fast float 1.000000e+00, %2541
  %2543 = fmul fast float %2522, %2542
  %2544 = fsub fast float -0.000000e+00, %2543
  %2545 = fdiv fast float %2544, %2525
  br label %2546

; <label>:2546                                    ; preds = %2539, %2535
  %2547 = phi float [ %2545, %2539 ], [ %2522, %2535 ]
  %2548 = phi float [ %2541, %2539 ], [ 1.000000e+00, %2535 ]
  %2549 = fcmp fast une float %2526, 0.000000e+00
  br i1 %2549, label %2550, label %2557, !dx.controlflow.hints !127

; <label>:2550                                    ; preds = %2546
  %2551 = fmul fast float %2526, 0x3FF7154760000000
  %2552 = call float @dx.op.unary.f32(i32 21, float %2551)  ; Exp(value)
  %2553 = fsub fast float 1.000000e+00, %2552
  %2554 = fmul fast float %2523, %2553
  %2555 = fsub fast float -0.000000e+00, %2554
  %2556 = fdiv fast float %2555, %2526
  br label %2557

; <label>:2557                                    ; preds = %2550, %2546, %2506, %2499
  %2558 = phi float [ %2556, %2550 ], [ %2518, %2506 ], [ %2503, %2499 ], [ %2523, %2546 ]
  %2559 = phi float [ %2547, %2550 ], [ %2517, %2506 ], [ %2502, %2499 ], [ %2547, %2546 ]
  %2560 = phi float [ %2536, %2550 ], [ %2516, %2506 ], [ %2501, %2499 ], [ %2536, %2546 ]
  %2561 = phi float [ %2552, %2550 ], [ %2508, %2506 ], [ 1.000000e+00, %2499 ], [ 1.000000e+00, %2546 ]
  %2562 = phi float [ %2548, %2550 ], [ %2508, %2506 ], [ 1.000000e+00, %2499 ], [ %2548, %2546 ]
  %2563 = phi float [ %2537, %2550 ], [ %2508, %2506 ], [ 1.000000e+00, %2499 ], [ %2537, %2546 ]
  %2564 = fmul fast float %2563, %2475
  %2565 = fmul fast float %2562, %2486
  %2566 = fmul fast float %2561, %2497
  %2567 = fadd fast float %2564, %2560
  %2568 = fadd fast float %2565, %2559
  %2569 = fadd fast float %2566, %2558
  %2570 = fmul fast float %2563, %2474
  %2571 = fmul fast float %2562, %2485
  %2572 = fmul fast float %2561, %2496
  br label %2573

; <label>:2573                                    ; preds = %2557, %2368
  %2574 = phi float [ %2572, %2557 ], [ %2374, %2368 ]
  %2575 = phi float [ %2571, %2557 ], [ %2373, %2368 ]
  %2576 = phi float [ %2570, %2557 ], [ %2372, %2368 ]
  %2577 = phi float [ %2569, %2557 ], [ %2371, %2368 ]
  %2578 = phi float [ %2568, %2557 ], [ %2370, %2368 ]
  %2579 = phi float [ %2567, %2557 ], [ %2369, %2368 ]
  %2580 = fmul fast float %2579, %1553
  %2581 = fmul fast float %2578, %1553
  %2582 = fmul fast float %2577, %1553
  %2583 = fmul fast float %2576, %1816
  %2584 = call float @dx.op.dot3.f32(i32 55, float %2576, float %2575, float %2574, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2585 = call float @dx.op.dot3.f32(i32 55, float %2580, float %2581, float %2582, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2586 = select i1 %136, float %2584, float %2576
  %2587 = select i1 %136, float %2584, float %2575
  %2588 = select i1 %136, float 1.000000e+00, float %2574
  %2589 = select i1 %136, float %2585, float %2580
  %2590 = select i1 %136, float 0.000000e+00, float %2581
  %2591 = select i1 %136, float 0.000000e+00, float %2582
  %2592 = fmul fast float %2586, %1810
  %2593 = fmul fast float %2587, %1811
  %2594 = fmul fast float %2588, %1812
  %2595 = fadd fast float %2592, %2589
  %2596 = fadd fast float %2593, %2590
  %2597 = fadd fast float %2591, %2594
  %2598 = fmul fast float %2586, %1813
  %2599 = fmul fast float %2587, %1814
  %2600 = fmul fast float %2588, %1815
  %2601 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2602 = extractvalue %dx.types.CBufRet.i32 %2601, 0
  %2603 = icmp eq i32 %2602, 0
  br i1 %2603, label %2872, label %2604, !dx.controlflow.hints !129

; <label>:2604                                    ; preds = %2573
  %2605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2606 = extractvalue %dx.types.CBufRet.f32 %2605, 2
  %2607 = extractvalue %dx.types.CBufRet.f32 %2605, 3
  %2608 = fmul fast float %2606, %66
  %2609 = fmul fast float %2607, %67
  %2610 = fmul fast float %2608, 2.000000e+00
  %2611 = fmul fast float %2609, 2.000000e+00
  %2612 = fsub fast float 1.000000e+00, %2610
  %2613 = fsub fast float 1.000000e+00, %2611
  %2614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2615 = extractvalue %dx.types.CBufRet.f32 %2614, 0
  %2616 = extractvalue %dx.types.CBufRet.f32 %2614, 1
  %2617 = extractvalue %dx.types.CBufRet.f32 %2614, 2
  %2618 = fmul fast float %2612, %2615
  %2619 = fmul fast float %2612, %2616
  %2620 = fmul fast float %2612, %2617
  %2621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2622 = extractvalue %dx.types.CBufRet.f32 %2621, 0
  %2623 = extractvalue %dx.types.CBufRet.f32 %2621, 1
  %2624 = extractvalue %dx.types.CBufRet.f32 %2621, 2
  %2625 = fmul fast float %2613, %2622
  %2626 = fmul fast float %2613, %2623
  %2627 = fmul fast float %2613, %2624
  %2628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2629 = extractvalue %dx.types.CBufRet.f32 %2628, 0
  %2630 = extractvalue %dx.types.CBufRet.f32 %2628, 1
  %2631 = extractvalue %dx.types.CBufRet.f32 %2628, 2
  %2632 = fadd fast float %2625, %2629
  %2633 = fadd fast float %2632, %2618
  %2634 = fadd fast float %2626, %2630
  %2635 = fadd fast float %2634, %2619
  %2636 = fadd fast float %2627, %2631
  %2637 = fadd fast float %2636, %2620
  %2638 = fmul fast float %2633, %1809
  %2639 = fmul fast float %2635, %1809
  %2640 = fmul fast float %2637, %1809
  %2641 = fmul fast float %2638, %2638
  %2642 = fmul fast float %2639, %2639
  %2643 = fadd fast float %2641, %2642
  %2644 = fmul fast float %2640, %2640
  %2645 = fadd fast float %2643, %2644
  %2646 = call float @dx.op.unary.f32(i32 24, float %2645)  ; Sqrt(value)
  %2647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2648 = extractvalue %dx.types.CBufRet.f32 %2647, 0
  %2649 = fsub fast float %2646, %2648
  %2650 = extractvalue %dx.types.CBufRet.f32 %2647, 2
  %2651 = fmul fast float %2649, %2650
  %2652 = call float @dx.op.unary.f32(i32 7, float %2651)  ; Saturate(value)
  %2653 = fadd fast float %2652, -5.000000e-01
  %2654 = fmul fast float %2653, 2.000000e+00
  %2655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2656 = extractvalue %dx.types.CBufRet.f32 %2655, 2
  %2657 = call float @dx.op.binary.f32(i32 36, float %2656, float %2654)  ; FMin(a,b)
  %2658 = fsub fast float -0.000000e+00, %2656
  %2659 = fcmp fast ogt float %2657, %2658
  br i1 %2659, label %2660, label %2872, !dx.controlflow.hints !130

; <label>:2660                                    ; preds = %2604
  %2661 = fmul fast float %2657, 5.000000e-01
  %2662 = fadd fast float %2661, 5.000000e-01
  %2663 = call float @dx.op.unary.f32(i32 22, float %2662)  ; Frc(value)
  %2664 = call float @dx.op.unary.f32(i32 27, float %2663)  ; Round_ni(value)
  %2665 = call float @dx.op.unary.f32(i32 22, float %2663)  ; Frc(value)
  %2666 = fmul fast float %2665, 2.000000e+00
  %2667 = fadd fast float %2666, -1.000000e+00
  %2668 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %26, float %2608, float %2609, float %2664, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2669 = extractvalue %dx.types.ResRet.f32 %2668, 0
  %2670 = extractvalue %dx.types.ResRet.f32 %2668, 1
  %2671 = extractvalue %dx.types.ResRet.f32 %2668, 2
  %2672 = extractvalue %dx.types.ResRet.f32 %2668, 3
  %2673 = fadd fast float %2669, -5.000000e-01
  %2674 = fadd fast float %2671, -5.000000e-01
  %2675 = fmul fast float %2673, 0xBFD5555560000000
  %2676 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2674, float %2675)  ; FMad(a,b,c)
  %2677 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2670, float 0.000000e+00)  ; FMad(a,b,c)
  %2678 = fadd fast float %2677, %2672
  %2679 = fmul fast float %2673, -7.500000e-01
  %2680 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2674, float %2679)  ; FMad(a,b,c)
  %2681 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2670, float 0.000000e+00)  ; FMad(a,b,c)
  %2682 = fadd fast float %2681, %2672
  %2683 = call float @dx.op.binary.f32(i32 35, float %2676, float -1.000000e+00)  ; FMax(a,b)
  %2684 = call float @dx.op.binary.f32(i32 35, float %2678, float -1.000000e+00)  ; FMax(a,b)
  %2685 = call float @dx.op.binary.f32(i32 35, float %2680, float -1.000000e+00)  ; FMax(a,b)
  %2686 = call float @dx.op.binary.f32(i32 35, float %2682, float -1.000000e+00)  ; FMax(a,b)
  %2687 = call float @dx.op.binary.f32(i32 36, float %2683, float 1.000000e+00)  ; FMin(a,b)
  %2688 = call float @dx.op.binary.f32(i32 36, float %2684, float 1.000000e+00)  ; FMin(a,b)
  %2689 = call float @dx.op.binary.f32(i32 36, float %2685, float 1.000000e+00)  ; FMin(a,b)
  %2690 = call float @dx.op.binary.f32(i32 36, float %2686, float 1.000000e+00)  ; FMin(a,b)
  %2691 = fcmp fast olt float %2687, 0x3FEFFF8020000000
  br i1 %2691, label %2692, label %2807, !dx.controlflow.hints !131

; <label>:2692                                    ; preds = %2660
  %2693 = extractvalue %dx.types.CBufRet.f32 %2655, 3
  %2694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %2695 = extractvalue %dx.types.CBufRet.f32 %2694, 0
  %2696 = extractvalue %dx.types.CBufRet.f32 %2694, 1
  %2697 = extractvalue %dx.types.CBufRet.f32 %2694, 2
  %2698 = extractvalue %dx.types.CBufRet.f32 %2694, 3
  %2699 = fsub fast float %2695, %2687
  %2700 = fsub fast float %2696, %2688
  %2701 = fsub fast float %2697, %2689
  %2702 = fsub fast float %2698, %2690
  %2703 = fmul fast float %2699, %2693
  %2704 = fmul fast float %2700, %2693
  %2705 = fmul fast float %2701, %2693
  %2706 = fmul fast float %2702, %2693
  %2707 = fadd fast float %2703, %2687
  %2708 = fadd fast float %2704, %2688
  %2709 = fsub fast float -0.000000e+00, %2708
  %2710 = fadd fast float %2705, %2689
  %2711 = fadd fast float %2706, %2690
  %2712 = fmul fast float %2707, %2707
  %2713 = fsub fast float %2708, %2712
  %2714 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2713)  ; FMax(a,b)
  %2715 = fdiv fast float 1.000000e+00, %2714
  %2716 = fmul fast float %2708, %2707
  %2717 = fsub fast float %2710, %2716
  %2718 = fsub fast float %2667, %2707
  %2719 = fmul fast float %2667, %2667
  %2720 = fsub fast float %2719, %2708
  %2721 = fmul fast float %2718, %2715
  %2722 = fmul fast float %2721, %2717
  %2723 = fsub fast float %2720, %2722
  %2724 = fmul fast float %2708, %2708
  %2725 = fsub fast float %2711, %2724
  %2726 = fmul fast float %2717, %2717
  %2727 = fmul fast float %2726, %2715
  %2728 = fsub fast float %2725, %2727
  %2729 = fdiv fast float %2723, %2728
  %2730 = fmul fast float %2717, %2729
  %2731 = fsub fast float %2718, %2730
  %2732 = fmul fast float %2731, %2715
  %2733 = fmul fast float %2732, %2707
  %2734 = fsub fast float 1.000000e+00, %2733
  %2735 = fmul fast float %2708, %2729
  %2736 = fsub fast float %2734, %2735
  %2737 = fmul fast float %2732, %2732
  %2738 = fmul fast float %2729, 4.000000e+00
  %2739 = fmul fast float %2738, %2736
  %2740 = fsub fast float %2737, %2739
  %2741 = call float @dx.op.unary.f32(i32 24, float %2740)  ; Sqrt(value)
  %2742 = fcmp fast oge float %2732, 0.000000e+00
  %2743 = fsub fast float -0.000000e+00, %2741
  %2744 = select i1 %2742, float %2743, float %2741
  %2745 = fsub fast float %2744, %2732
  %2746 = fdiv fast float %2745, %2729
  %2747 = fdiv fast float %2736, %2745
  %2748 = fmul fast float %2746, 5.000000e-01
  %2749 = fmul fast float %2747, 2.000000e+00
  %2750 = select i1 %2742, float %2748, float %2749
  %2751 = select i1 %2742, float %2749, float %2748
  %2752 = call float @dx.op.binary.f32(i32 35, float %2750, float %2751)  ; FMax(a,b)
  %2753 = call float @dx.op.binary.f32(i32 36, float %2750, float %2751)  ; FMin(a,b)
  %2754 = fcmp fast ogt float %2667, %2753
  br i1 %2754, label %2755, label %2765

; <label>:2755                                    ; preds = %2692
  %2756 = fsub fast float %2667, %2753
  %2757 = fsub fast float %2752, %2753
  %2758 = fmul fast float %2756, %2757
  %2759 = fmul fast float %2752, %2667
  %2760 = fadd fast float %2752, %2667
  %2761 = fmul fast float %2760, %2707
  %2762 = fadd fast float %2759, %2708
  %2763 = fsub fast float %2762, %2761
  %2764 = fdiv fast float %2763, %2758
  br label %2765

; <label>:2765                                    ; preds = %2755, %2692
  %2766 = phi float [ %2764, %2755 ], [ 0.000000e+00, %2692 ]
  %2767 = fcmp fast ogt float %2667, %2752
  %2768 = fsub fast float %2667, %2752
  br i1 %2767, label %2769, label %2779

; <label>:2769                                    ; preds = %2765
  %2770 = fsub fast float %2752, %2753
  %2771 = fmul fast float %2770, %2768
  %2772 = fmul fast float %2753, %2667
  %2773 = fadd fast float %2753, %2667
  %2774 = fmul fast float %2773, %2707
  %2775 = fsub fast float %2709, %2772
  %2776 = fadd fast float %2775, %2774
  %2777 = fdiv fast float %2776, %2771
  %2778 = fadd fast float %2777, %2766
  br label %2779

; <label>:2779                                    ; preds = %2769, %2765
  %2780 = phi float [ %2778, %2769 ], [ %2766, %2765 ]
  %2781 = fsub fast float %2667, %2753
  %2782 = fmul fast float %2781, %2768
  %2783 = fmul fast float %2753, %2752
  %2784 = fadd fast float %2753, %2752
  %2785 = fmul fast float %2784, %2707
  %2786 = fadd fast float %2783, %2708
  %2787 = fsub fast float %2786, %2785
  %2788 = fdiv fast float %2787, %2782
  %2789 = call float @dx.op.unary.f32(i32 7, float %2780)  ; Saturate(value)
  %2790 = fcmp fast oeq float %1662, 0.000000e+00
  %2791 = extractvalue %dx.types.CBufRet.f32 %2655, 0
  %2792 = fcmp fast oeq float %2791, 0.000000e+00
  %2793 = or i1 %2790, %2792
  %2794 = fmul fast float %2791, 2.000000e+00
  %2795 = fadd fast float %2656, %2657
  %2796 = fdiv fast float %2795, %2794
  %2797 = call float @dx.op.unary.f32(i32 7, float %2796)  ; Saturate(value)
  %2798 = fmul fast float %2797, 2.000000e+00
  %2799 = fsub fast float 3.000000e+00, %2798
  %2800 = fmul fast float %2797, %2797
  %2801 = fmul fast float %2800, %2799
  %2802 = select i1 %2793, float 1.000000e+00, float %2801
  %2803 = fmul fast float %2788, %1662
  %2804 = fadd fast float %2789, %2803
  %2805 = call float @dx.op.unary.f32(i32 7, float %2804)  ; Saturate(value)
  %2806 = fmul fast float %2802, %2805
  br label %2807

; <label>:2807                                    ; preds = %2779, %2660
  %2808 = phi float [ %2806, %2779 ], [ 0.000000e+00, %2660 ]
  %2809 = fsub fast float 1.000000e+00, %2808
  %2810 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %26, float %2608, float %2609, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2811 = extractvalue %dx.types.ResRet.f32 %2810, 0
  %2812 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2813 = extractvalue %dx.types.CBufRet.i32 %2812, 2
  %2814 = icmp eq i32 %2813, 0
  br i1 %2814, label %2820, label %2815

; <label>:2815                                    ; preds = %2807
  %2816 = call float @dx.op.unary.f32(i32 7, float %2808)  ; Saturate(value)
  %2817 = fadd fast float %2811, -1.000000e+00
  %2818 = fmul fast float %2816, %2817
  %2819 = fadd fast float %2818, 1.000000e+00
  br label %2820

; <label>:2820                                    ; preds = %2815, %2807
  %2821 = phi float [ %2819, %2815 ], [ %2809, %2807 ]
  %2822 = call float @dx.op.binary.f32(i32 35, float %2811, float %2821)  ; FMax(a,b)
  %2823 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %2824 = extractvalue %dx.types.CBufRet.i32 %2823, 2
  %2825 = and i32 %2824, 1
  %2826 = icmp eq i32 %2825, 0
  %2827 = fcmp fast une float %2822, 1.000000e+00
  %2828 = and i1 %2827, %2826
  br i1 %2828, label %2829, label %2848

; <label>:2829                                    ; preds = %2820
  %2830 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %26, float %2608, float %2609, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2831 = extractvalue %dx.types.ResRet.f32 %2830, 0
  %2832 = extractvalue %dx.types.ResRet.f32 %2830, 1
  %2833 = extractvalue %dx.types.ResRet.f32 %2830, 2
  %2834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2835 = extractvalue %dx.types.CBufRet.f32 %2834, 1
  %2836 = fmul fast float %2835, %2831
  %2837 = fmul fast float %2835, %2832
  %2838 = fmul fast float %2835, %2833
  %2839 = fcmp fast ogt float %2811, 0x3FEFFF2E40000000
  %2840 = fsub fast float 1.000000e+00, %2822
  %2841 = fsub fast float 1.000000e+00, %2811
  %2842 = fdiv fast float %2840, %2841
  %2843 = call float @dx.op.unary.f32(i32 7, float %2842)  ; Saturate(value)
  %2844 = select i1 %2839, float 0.000000e+00, float %2843
  %2845 = fmul fast float %2836, %2844
  %2846 = fmul fast float %2837, %2844
  %2847 = fmul fast float %2838, %2844
  br label %2848

; <label>:2848                                    ; preds = %2829, %2820
  %2849 = phi float [ 0.000000e+00, %2820 ], [ %2845, %2829 ]
  %2850 = phi float [ 0.000000e+00, %2820 ], [ %2846, %2829 ]
  %2851 = phi float [ 0.000000e+00, %2820 ], [ %2847, %2829 ]
  %2852 = fmul fast float %2849, %1553
  %2853 = fmul fast float %2850, %1553
  %2854 = fmul fast float %2851, %1553
  %2855 = fmul fast float %2822, %2583
  %2856 = call float @dx.op.dot3.f32(i32 55, float %2822, float %2822, float %2822, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2857 = call float @dx.op.dot3.f32(i32 55, float %2852, float %2853, float %2854, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2858 = select i1 %136, float %2856, float %2822
  %2859 = select i1 %136, float 1.000000e+00, float %2822
  %2860 = select i1 %136, float %2857, float %2852
  %2861 = select i1 %136, float 0.000000e+00, float %2853
  %2862 = select i1 %136, float 0.000000e+00, float %2854
  %2863 = fmul fast float %2858, %2595
  %2864 = fmul fast float %2858, %2596
  %2865 = fmul fast float %2859, %2597
  %2866 = fadd fast float %2863, %2860
  %2867 = fadd fast float %2864, %2861
  %2868 = fadd fast float %2862, %2865
  %2869 = fmul fast float %2858, %2598
  %2870 = fmul fast float %2858, %2599
  %2871 = fmul fast float %2859, %2600
  br label %2872

; <label>:2872                                    ; preds = %2848, %2604, %2573, %1805
  %2873 = phi float [ %1810, %1805 ], [ %2595, %2573 ], [ %2866, %2848 ], [ %2595, %2604 ]
  %2874 = phi float [ %1811, %1805 ], [ %2596, %2573 ], [ %2867, %2848 ], [ %2596, %2604 ]
  %2875 = phi float [ %1812, %1805 ], [ %2597, %2573 ], [ %2868, %2848 ], [ %2597, %2604 ]
  %2876 = phi float [ %1813, %1805 ], [ %2598, %2573 ], [ %2869, %2848 ], [ %2598, %2604 ]
  %2877 = phi float [ %1814, %1805 ], [ %2599, %2573 ], [ %2870, %2848 ], [ %2599, %2604 ]
  %2878 = phi float [ %1815, %1805 ], [ %2600, %2573 ], [ %2871, %2848 ], [ %2600, %2604 ]
  %2879 = phi float [ %1816, %1805 ], [ %2583, %2573 ], [ %2855, %2848 ], [ %2583, %2604 ]
  %2880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2881 = extractvalue %dx.types.CBufRet.f32 %2880, 2
  %2882 = extractvalue %dx.types.CBufRet.f32 %2880, 3
  %2883 = fmul fast float %2881, %66
  %2884 = fmul fast float %2882, %67
  %2885 = call float @dx.op.unary.f32(i32 7, float %2883)  ; Saturate(value)
  %2886 = call float @dx.op.unary.f32(i32 7, float %2884)  ; Saturate(value)
  %2887 = select i1 %950, i32 2, i32 0
  %2888 = or i32 %2887, 1
  %2889 = uitofp i32 %2888 to float
  %2890 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %2885, float %2886, float %2889, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2891 = extractvalue %dx.types.ResRet.f32 %2890, 0
  %2892 = extractvalue %dx.types.ResRet.f32 %2890, 1
  %2893 = extractvalue %dx.types.ResRet.f32 %2890, 2
  %2894 = extractvalue %dx.types.ResRet.f32 %2890, 3
  %2895 = add nuw nsw i32 %2887, 2
  %2896 = uitofp i32 %2895 to float
  %2897 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %2885, float %2886, float %2896, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2898 = extractvalue %dx.types.ResRet.f32 %2897, 0
  %2899 = extractvalue %dx.types.ResRet.f32 %2897, 1
  %2900 = extractvalue %dx.types.ResRet.f32 %2897, 2
  %2901 = extractvalue %dx.types.ResRet.f32 %2897, 3
  %2902 = call float @dx.op.binary.f32(i32 35, float %2892, float %2893)  ; FMax(a,b)
  %2903 = call float @dx.op.binary.f32(i32 35, float %2891, float %2902)  ; FMax(a,b)
  %2904 = call float @dx.op.binary.f32(i32 35, float %2903, float %2894)  ; FMax(a,b)
  %2905 = call float @dx.op.binary.f32(i32 36, float %2899, float %2900)  ; FMin(a,b)
  %2906 = call float @dx.op.binary.f32(i32 36, float %2898, float %2905)  ; FMin(a,b)
  %2907 = call float @dx.op.binary.f32(i32 36, float %2906, float %2901)  ; FMin(a,b)
  %2908 = fmul fast float %2904, 2.550000e+02
  %2909 = fadd fast float %2908, 0x3F70101020000000
  %2910 = fptoui float %2909 to i32
  %2911 = fmul fast float %2907, 2.550000e+02
  %2912 = fadd fast float %2911, 0x3F70101020000000
  %2913 = fptoui float %2912 to i32
  %2914 = icmp ult i32 %2910, %2913
  br i1 %2914, label %2915, label %2961

; <label>:2915                                    ; preds = %2872
  %2916 = fcmp fast ogt float %58, 9.843750e-01
  %2917 = fadd fast float %1809, -4.000000e+00
  %2918 = select i1 %2916, float -4.000000e+00, float %2917
  %2919 = call float @dx.op.binary.f32(i32 35, float %2918, float 0.000000e+00)  ; FMax(a,b)
  %2920 = fadd fast float %1127, %2919
  %2921 = fmul fast float %2920, %1128
  %2922 = call float @dx.op.unary.f32(i32 23, float %2921)  ; Log(value)
  %2923 = fmul fast float %1129, %2922
  %2924 = fmul fast float %2923, %1137
  %2925 = call float @dx.op.unary.f32(i32 7, float %2924)  ; Saturate(value)
  %2926 = uitofp i32 %2910 to float
  %2927 = uitofp i32 %2913 to float
  %2928 = fadd fast float %2926, 5.000000e-01
  %2929 = fadd fast float %2927, 5.000000e-01
  %2930 = fmul fast float %1137, %2928
  %2931 = fmul fast float %1137, %2929
  %2932 = fadd fast float %2930, 0x3F0FFB4800000000
  %2933 = fadd fast float %2931, 0xBF0FFB4800000000
  %2934 = call float @dx.op.binary.f32(i32 35, float %2925, float %2932)  ; FMax(a,b)
  %2935 = call float @dx.op.binary.f32(i32 36, float %2934, float %2933)  ; FMin(a,b)
  %2936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %2937 = extractvalue %dx.types.CBufRet.f32 %2936, 1
  %2938 = extractvalue %dx.types.CBufRet.f32 %2936, 2
  %2939 = extractvalue %dx.types.CBufRet.f32 %2936, 0
  %2940 = select i1 %950, float %2939, float 0.000000e+00
  %2941 = fmul fast float %2937, %2935
  %2942 = fadd fast float %2940, %2941
  %2943 = fadd fast float %2940, %2938
  %2944 = fsub fast float %2937, %2938
  %2945 = fadd fast float %2944, %2940
  %2946 = call float @dx.op.binary.f32(i32 35, float %2942, float %2943)  ; FMax(a,b)
  %2947 = call float @dx.op.binary.f32(i32 36, float %2946, float %2945)  ; FMin(a,b)
  %2948 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %2885, float %2886, float %2947, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2949 = extractvalue %dx.types.ResRet.f32 %2948, 0
  %2950 = extractvalue %dx.types.ResRet.f32 %2948, 1
  %2951 = extractvalue %dx.types.ResRet.f32 %2948, 2
  %2952 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %2885, float %2886, float %2947, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2953 = extractvalue %dx.types.ResRet.f32 %2952, 0
  %2954 = extractvalue %dx.types.ResRet.f32 %2952, 1
  %2955 = extractvalue %dx.types.ResRet.f32 %2952, 2
  %2956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2957 = extractvalue %dx.types.CBufRet.f32 %2956, 1
  %2958 = fmul fast float %2957, %2953
  %2959 = fmul fast float %2957, %2954
  %2960 = fmul fast float %2957, %2955
  br label %2961

; <label>:2961                                    ; preds = %2915, %2872
  %2962 = phi float [ %2949, %2915 ], [ 1.000000e+00, %2872 ]
  %2963 = phi float [ %2950, %2915 ], [ 1.000000e+00, %2872 ]
  %2964 = phi float [ %2951, %2915 ], [ 1.000000e+00, %2872 ]
  %2965 = phi float [ %2958, %2915 ], [ 0.000000e+00, %2872 ]
  %2966 = phi float [ %2959, %2915 ], [ 0.000000e+00, %2872 ]
  %2967 = phi float [ %2960, %2915 ], [ 0.000000e+00, %2872 ]
  %2968 = fmul fast float %2965, %1553
  %2969 = fmul fast float %2966, %1553
  %2970 = fmul fast float %2967, %1553
  %2971 = fmul fast float %2962, %2879
  %2972 = call float @dx.op.dot3.f32(i32 55, float %2962, float %2963, float %2964, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2973 = call float @dx.op.dot3.f32(i32 55, float %2968, float %2969, float %2970, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2974 = select i1 %136, float %2972, float %2962
  %2975 = select i1 %136, float %2972, float %2963
  %2976 = select i1 %136, float 1.000000e+00, float %2964
  %2977 = select i1 %136, float %2973, float %2968
  %2978 = select i1 %136, float 0.000000e+00, float %2969
  %2979 = select i1 %136, float 0.000000e+00, float %2970
  %2980 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2981 = extractvalue %dx.types.CBufRet.i32 %2980, 3
  %2982 = and i32 %2981, 3
  %2983 = icmp ne i32 %2982, 0
  %2984 = and i32 %2981, 4
  %2985 = icmp ne i32 %2984, 0
  %2986 = and i1 %2983, %2985
  %2987 = and i1 %136, %2986
  br i1 %2987, label %2988, label %2994

; <label>:2988                                    ; preds = %2961
  %2989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2990 = extractvalue %dx.types.CBufRet.f32 %2989, 1
  %2991 = fadd fast float %2971, -1.000000e+00
  %2992 = fmul fast float %2990, %2991
  %2993 = fadd fast float %2992, 1.000000e+00
  br label %2994

; <label>:2994                                    ; preds = %2988, %2961
  %2995 = phi float [ %2993, %2988 ], [ %2971, %2961 ]
  %2996 = fadd fast float %2876, %2873
  %2997 = fmul fast float %2974, %2996
  %2998 = fadd fast float %2997, %2977
  %2999 = fadd fast float %2877, %2874
  %3000 = fmul fast float %2975, %2999
  %3001 = fadd fast float %3000, %2978
  %3002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3003 = extractvalue %dx.types.CBufRet.f32 %3002, 0
  br i1 %136, label %3004, label %3026

; <label>:3004                                    ; preds = %2994
  %3005 = fadd fast float %2998, %3001
  %3006 = fmul fast float %3003, %3005
  %3007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %3008 = extractvalue %dx.types.CBufRet.f32 %3007, 3
  %3009 = extractvalue %dx.types.CBufRet.f32 %1558, 1
  %3010 = fsub fast float %1561, %3009
  %3011 = extractvalue %dx.types.CBufRet.f32 %1558, 2
  %3012 = fmul fast float %3010, %3011
  %3013 = call float @dx.op.unary.f32(i32 7, float %3012)  ; Saturate(value)
  %3014 = fsub fast float %3013, %3008
  %3015 = fmul fast float %3014, %2995
  %3016 = fadd fast float %3015, %3008
  %3017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %3018 = extractvalue %dx.types.CBufRet.f32 %3017, 0
  %3019 = fsub fast float %3016, %3018
  %3020 = fmul fast float %3019, 1.000000e+01
  %3021 = call float @dx.op.unary.f32(i32 7, float %3020)  ; Saturate(value)
  %3022 = fsub fast float %926, %1553
  %3023 = fmul fast float %3021, %3022
  %3024 = fadd fast float %3023, %1553
  %3025 = fmul fast float %3024, %3016
  br label %3038

; <label>:3026                                    ; preds = %2994
  %3027 = fadd fast float %2878, %2875
  %3028 = fmul fast float %2976, %3027
  %3029 = fadd fast float %3028, %2979
  %3030 = fmul fast float %3003, %2998
  %3031 = fmul fast float %3003, %3001
  %3032 = fmul fast float %3003, %3029
  %3033 = call float @dx.op.binary.f32(i32 35, float %3031, float %3032)  ; FMax(a,b)
  %3034 = call float @dx.op.binary.f32(i32 35, float %3030, float %3033)  ; FMax(a,b)
  %3035 = call float @dx.op.binary.f32(i32 35, float %3034, float %1553)  ; FMax(a,b)
  %3036 = fcmp fast ugt float %3035, 0x3F10000000000000
  br i1 %3036, label %3038, label %3037

; <label>:3037                                    ; preds = %3026
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %3038

; <label>:3038                                    ; preds = %3037, %3026, %3004
  %3039 = phi float [ %3006, %3004 ], [ %3030, %3037 ], [ %3030, %3026 ]
  %3040 = phi float [ %3025, %3004 ], [ %3031, %3037 ], [ %3031, %3026 ]
  %3041 = phi float [ %3024, %3004 ], [ %3032, %3037 ], [ %3032, %3026 ]
  %3042 = phi float [ %3024, %3004 ], [ %1553, %3037 ], [ %1553, %3026 ]
  %3043 = fadd fast float %580, 0x3FE3C6EF40000000
  %3044 = call float @dx.op.unary.f32(i32 22, float %3043)  ; Frc(value)
  %3045 = call float @dx.op.unary.f32(i32 23, float %3039)  ; Log(value)
  %3046 = fadd fast float %3045, -7.000000e+00
  %3047 = call float @dx.op.unary.f32(i32 21, float %3046)  ; Exp(value)
  %3048 = fmul fast float %3044, 2.000000e+00
  %3049 = fadd fast float %3048, -1.000000e+00
  %3050 = fmul fast float %3047, %3049
  %3051 = fcmp fast ogt float %3039, 0.000000e+00
  %3052 = select i1 %3051, float %3050, float 0.000000e+00
  %3053 = fadd fast float %3052, %3039
  %3054 = fadd fast float %580, 0x3FF3C6EF40000000
  %3055 = call float @dx.op.unary.f32(i32 22, float %3054)  ; Frc(value)
  %3056 = call float @dx.op.unary.f32(i32 23, float %3040)  ; Log(value)
  %3057 = fadd fast float %3056, -7.000000e+00
  %3058 = call float @dx.op.unary.f32(i32 21, float %3057)  ; Exp(value)
  %3059 = fmul fast float %3055, 2.000000e+00
  %3060 = fadd fast float %3059, -1.000000e+00
  %3061 = fmul fast float %3058, %3060
  %3062 = fcmp fast ogt float %3040, 0.000000e+00
  %3063 = select i1 %3062, float %3061, float 0.000000e+00
  %3064 = fadd fast float %3063, %3040
  %3065 = fadd fast float %580, 0x3FFDAA66E0000000
  %3066 = call float @dx.op.unary.f32(i32 22, float %3065)  ; Frc(value)
  %3067 = call float @dx.op.unary.f32(i32 23, float %3041)  ; Log(value)
  %3068 = fadd fast float %3067, -6.000000e+00
  %3069 = call float @dx.op.unary.f32(i32 21, float %3068)  ; Exp(value)
  %3070 = fmul fast float %3066, 2.000000e+00
  %3071 = fadd fast float %3070, -1.000000e+00
  %3072 = fmul fast float %3069, %3071
  %3073 = fcmp fast ogt float %3041, 0.000000e+00
  %3074 = select i1 %3073, float %3072, float 0.000000e+00
  %3075 = fadd fast float %3074, %3041
  %3076 = select i1 %136, float %3040, float %3064
  %3077 = select i1 %136, float %3041, float %3075
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %3078 = call float @dx.op.binary.f32(i32 36, float %3053, float 3.225500e+04)  ; FMin(a,b)
  %3079 = call float @dx.op.binary.f32(i32 36, float %3076, float 3.225500e+04)  ; FMin(a,b)
  %3080 = call float @dx.op.binary.f32(i32 36, float %3077, float 3.225500e+04)  ; FMin(a,b)
  %3081 = call float @dx.op.binary.f32(i32 36, float %3042, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3078)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3079)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3080)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %3081)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %3042)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %3042)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %3042)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %3042)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

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
!42 = !{[37 x i32] [i32 35, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 3, i32 3, i32 7, i32 7, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255]}
!43 = !{void ()* @ps_main, !"ps_main", !44, !4, !68}
!44 = !{!45, !64, null}
!45 = !{!46, !49, !50, !52, !54, !56, !58, !60, !61, !63}
!46 = !{i32 0, !"SV_Position", i8 9, i8 3, !47, i8 4, i32 1, i8 4, i32 0, i8 0, !48}
!47 = !{i32 0}
!48 = !{i32 3, i32 15}
!49 = !{i32 1, !"COLOR", i8 9, i8 0, !47, i8 2, i32 1, i8 4, i32 1, i8 0, !48}
!50 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !47, i8 2, i32 1, i8 2, i32 2, i8 0, !51}
!51 = !{i32 3, i32 3}
!52 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !53, i8 2, i32 1, i8 4, i32 3, i8 0, !48}
!53 = !{i32 3}
!54 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !55, i8 2, i32 1, i8 4, i32 4, i8 0, !48}
!55 = !{i32 4}
!56 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !57, i8 3, i32 1, i8 2, i32 5, i8 0, !51}
!57 = !{i32 5}
!58 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !59, i8 2, i32 1, i8 4, i32 6, i8 0, !48}
!59 = !{i32 8}
!60 = !{i32 7, !"QUAD_POSITION", i8 9, i8 0, !47, i8 1, i32 1, i8 4, i32 7, i8 0, !48}
!61 = !{i32 8, !"COLOR", i8 5, i8 0, !53, i8 1, i32 1, i8 3, i32 8, i8 0, !62}
!62 = !{i32 3, i32 5}
!63 = !{i32 9, !"SV_SampleIndex", i8 5, i8 12, !47, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!64 = !{!65, !66}
!65 = !{i32 0, !"SV_Target", i8 9, i8 16, !47, i8 0, i32 1, i8 4, i32 0, i8 0, !48}
!66 = !{i32 1, !"SV_Target", i8 9, i8 16, !67, i8 0, i32 1, i8 4, i32 1, i8 0, !48}
!67 = !{i32 1}
!68 = !{i32 0, i64 24}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !78}
!78 = !{!"llvm.loop.unroll.disable"}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = !{!83, !83, i64 0}
!83 = !{!"float", !84, i64 0}
!84 = !{!"omnipotent char", !85, i64 0}
!85 = !{!"Simple C/C++ TBAA"}
!86 = !{!87, !89, !91, !92, !94, !95, !96, !98, !99, !100}
!87 = distinct !{!87, !88, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!88 = distinct !{!88, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!89 = distinct !{!89, !90, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!90 = distinct !{!90, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!91 = distinct !{!91, !90, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!92 = distinct !{!92, !93, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!93 = distinct !{!93, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!94 = distinct !{!94, !93, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!95 = distinct !{!95, !93, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!96 = distinct !{!96, !97, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!97 = distinct !{!97, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!98 = distinct !{!98, !97, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!99 = distinct !{!99, !97, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!100 = distinct !{!100, !101, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!101 = distinct !{!101, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!102 = !{!103}
!103 = distinct !{!103, !104, !"\01?sort@@YAXAIAM00@Z: %c"}
!104 = distinct !{!104, !"\01?sort@@YAXAIAM00@Z"}
!105 = !{!106, !107, !87, !89, !91, !92, !94, !95, !96, !98, !99, !100}
!106 = distinct !{!106, !104, !"\01?sort@@YAXAIAM00@Z: %a"}
!107 = distinct !{!107, !104, !"\01?sort@@YAXAIAM00@Z: %b"}
!108 = !{!107}
!109 = !{!106, !103, !87, !89, !91, !92, !94, !95, !96, !98, !99, !100}
!110 = !{!106}
!111 = !{!107, !103, !87, !89, !91, !92, !94, !95, !96, !98, !99, !100}
!112 = !{!113}
!113 = distinct !{!113, !114, !"\01?sort@@YAXAIAM00@Z: %c"}
!114 = distinct !{!114, !"\01?sort@@YAXAIAM00@Z"}
!115 = !{!116, !117, !87, !89, !91, !92, !94, !95, !96, !98, !99, !100}
!116 = distinct !{!116, !114, !"\01?sort@@YAXAIAM00@Z: %a"}
!117 = distinct !{!117, !114, !"\01?sort@@YAXAIAM00@Z: %b"}
!118 = !{!117}
!119 = !{!116, !113, !87, !89, !91, !92, !94, !95, !96, !98, !99, !100}
!120 = !{!116}
!121 = !{!117, !113, !87, !89, !91, !92, !94, !95, !96, !98, !99, !100}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 2}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}

