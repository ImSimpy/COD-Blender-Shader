;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 2   xyzw        3     NONE   float   xyz 
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
; shader hash: a7ea0e57bc5390b4d9cd53b08e5657f5
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
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 32, 33, 34, 35, 36, 38 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 32, 33, 34, 35, 36, 38 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 32, 33, 34, 35, 36, 38 }
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
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = alloca [3 x float], align 4
  %59 = alloca [3 x float], align 4
  %60 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %61 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 0
  %64 = fmul fast float %63, %54
  %65 = fmul fast float %63, %55
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.f32 %66, 2
  %68 = extractvalue %dx.types.CBufRet.f32 %66, 3
  %69 = fmul fast float %64, 2.000000e+00
  %70 = fmul fast float %69, %67
  %71 = fmul fast float %65, 2.000000e+00
  %72 = fmul fast float %71, %68
  %73 = fsub fast float 1.000000e+00, %70
  %74 = fsub fast float 1.000000e+00, %72
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 0
  %77 = extractvalue %dx.types.CBufRet.f32 %75, 1
  %78 = extractvalue %dx.types.CBufRet.f32 %75, 2
  %79 = fmul fast float %73, %76
  %80 = fmul fast float %73, %77
  %81 = fmul fast float %73, %78
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.f32 %82, 0
  %84 = extractvalue %dx.types.CBufRet.f32 %82, 1
  %85 = extractvalue %dx.types.CBufRet.f32 %82, 2
  %86 = fmul fast float %74, %83
  %87 = fmul fast float %74, %84
  %88 = fmul fast float %74, %85
  %89 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = extractvalue %dx.types.CBufRet.f32 %89, 0
  %91 = extractvalue %dx.types.CBufRet.f32 %89, 1
  %92 = extractvalue %dx.types.CBufRet.f32 %89, 2
  %93 = fadd fast float %86, %90
  %94 = fadd fast float %93, %79
  %95 = fadd fast float %87, %91
  %96 = fadd fast float %95, %80
  %97 = fadd fast float %88, %92
  %98 = fadd fast float %97, %81
  %99 = fmul fast float %94, %57
  %100 = fmul fast float %96, %57
  %101 = fmul fast float %98, %57
  %102 = fmul fast float %43, %40
  %103 = fmul fast float %44, %39
  %104 = fsub fast float %102, %103
  %105 = fmul fast float %44, %38
  %106 = fmul fast float %42, %40
  %107 = fsub fast float %105, %106
  %108 = fmul fast float %42, %39
  %109 = fmul fast float %43, %38
  %110 = fsub fast float %108, %109
  %111 = fmul fast float %104, %41
  %112 = fmul fast float %107, %41
  %113 = fmul fast float %110, %41
  %114 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.i32 %114, 3
  %116 = and i32 %115, 3
  %117 = icmp ne i32 %116, 0
  %118 = and i32 %115, 4
  %119 = icmp ne i32 %118, 0
  %120 = and i1 %117, %119
  br i1 %120, label %121, label %130

; <label>:121                                     ; preds = %0
  %122 = fmul fast float %68, %65
  %123 = fmul fast float %67, %64
  %124 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %26, float %123, float %122, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %125 = extractvalue %dx.types.ResRet.f32 %124, 0
  %126 = fsub fast float 1.000000e+00, %125
  %127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.f32 %127, 0
  %129 = fcmp fast olt float %126, %128
  br label %133

; <label>:130                                     ; preds = %0
  %131 = icmp eq i32 %118, 0
  %132 = and i1 %117, %131
  br label %133

; <label>:133                                     ; preds = %130, %121
  %134 = phi i1 [ %129, %121 ], [ %132, %130 ]
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 2
  %137 = extractvalue %dx.types.CBufRet.f32 %135, 3
  %138 = fmul fast float %136, %64
  %139 = fmul fast float %137, %65
  %140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %141 = extractvalue %dx.types.ResRet.i32 %140, 0
  %142 = and i32 %141, 114688
  %143 = icmp ne i32 %142, 0
  %144 = select i1 %143, float %138, float 0.000000e+00
  %145 = select i1 %143, float %139, float 0.000000e+00
  %146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %27, float %144, float %145, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %147 = extractvalue %dx.types.ResRet.f32 %146, 0
  %148 = fmul fast float %147, 2.550000e+02
  %149 = fptoui float %148 to i32
  %150 = select i1 %143, i32 %149, i32 0
  %151 = mul i32 %30, 208
  %152 = add i32 %151, 188
  %153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %152, i32 undef)  ; BufferLoad(srv,index,wot)
  %154 = extractvalue %dx.types.ResRet.i32 %153, 0
  %155 = and i32 %115, 114688
  %156 = and i32 %115, 8
  %157 = icmp ne i32 %156, 0
  %158 = or i1 %134, %157
  %159 = select i1 %158, i32 %155, i32 16384
  %160 = and i32 %159, %154
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %163

; <label>:162                                     ; preds = %133
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %163

; <label>:163                                     ; preds = %162, %133
  %164 = and i32 %154, 512
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %190, label %166

; <label>:166                                     ; preds = %163
  %167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.f32 %167, 2
  %169 = extractvalue %dx.types.CBufRet.f32 %167, 3
  %170 = fmul fast float %168, %64
  %171 = fmul fast float %169, %65
  %172 = extractvalue %dx.types.CBufRet.f32 %167, 0
  %173 = extractvalue %dx.types.CBufRet.f32 %167, 1
  %174 = fdiv fast float %172, %173
  %175 = fcmp fast ogt float %174, 0x3FFC71C720000000
  br i1 %175, label %176, label %182

; <label>:176                                     ; preds = %166
  %177 = fdiv fast float 0x3FFC71C720000000, %174
  %178 = fmul fast float %177, %171
  %179 = fsub fast float 1.000000e+00, %177
  %180 = fmul fast float %179, 5.000000e-01
  %181 = fadd fast float %180, %178
  br label %190

; <label>:182                                     ; preds = %166
  %183 = fcmp fast olt float %174, 0x3FFC71C720000000
  br i1 %183, label %184, label %190

; <label>:184                                     ; preds = %182
  %185 = fmul fast float %170, 5.625000e-01
  %186 = fmul fast float %185, %174
  %187 = fmul fast float %174, 2.812500e-01
  %188 = fsub fast float 5.000000e-01, %187
  %189 = fadd fast float %188, %186
  br label %190

; <label>:190                                     ; preds = %184, %182, %176, %163
  %191 = phi float [ %48, %163 ], [ %170, %176 ], [ %189, %184 ], [ %170, %182 ]
  %192 = phi float [ %49, %163 ], [ %181, %176 ], [ %171, %184 ], [ %171, %182 ]
  %193 = fadd fast float %48, %45
  %194 = fadd fast float %49, %46
  %195 = add i32 %31, 72
  %196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %195, i32 undef)  ; BufferLoad(srv,index,wot)
  %197 = extractvalue %dx.types.ResRet.i32 %196, 0
  %198 = extractvalue %dx.types.ResRet.i32 %196, 1
  %199 = bitcast i32 %197 to float
  %200 = bitcast i32 %198 to float
  %201 = fmul fast float %199, %48
  %202 = fmul fast float %200, %49
  %203 = call float @dx.op.unary.f32(i32 22, float %201)  ; Frc(value)
  %204 = call float @dx.op.unary.f32(i32 22, float %202)  ; Frc(value)
  %205 = and i32 %154, 16
  %206 = icmp ne i32 %205, 0
  %207 = select i1 %206, float 1.000000e+00, float %53
  %208 = add i32 %31, 112
  %209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %208, i32 undef)  ; BufferLoad(srv,index,wot)
  %210 = extractvalue %dx.types.ResRet.i32 %209, 0
  %211 = add i32 %210, 0
  %212 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %211, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %214 = extractvalue %dx.types.CBufRet.f32 %213, 2
  %215 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %212, %dx.types.Handle %61, float %191, float %192, float undef, float undef, i32 0, i32 0, i32 undef, float %214, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %216 = extractvalue %dx.types.ResRet.f32 %215, 0
  %217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %208, i32 undef)  ; BufferLoad(srv,index,wot)
  %218 = extractvalue %dx.types.ResRet.i32 %217, 0
  %219 = add i32 %218, 0
  %220 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %219, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.f32 %221, 2
  %223 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %220, %dx.types.Handle %61, float %193, float %194, float undef, float undef, i32 0, i32 0, i32 undef, float %222, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %224 = extractvalue %dx.types.ResRet.f32 %223, 0
  %225 = fsub fast float %224, %216
  %226 = fmul fast float %225, %47
  %227 = fadd fast float %226, %216
  %228 = fmul fast float %227, %207
  %229 = icmp eq i32 %205, 0
  br i1 %229, label %249, label %230, !dx.controlflow.hints !72

; <label>:230                                     ; preds = %190
  %231 = add i32 %151, 64
  %232 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %231, i32 undef)  ; BufferLoad(srv,index,wot)
  %233 = extractvalue %dx.types.ResRet.f32 %232, 0
  %234 = fadd fast float %233, 1.000000e+00
  %235 = fmul fast float %234, %53
  %236 = fsub fast float %235, %233
  %237 = fsub fast float %234, %236
  %238 = call float @dx.op.unary.f32(i32 7, float %237)  ; Saturate(value)
  %239 = fsub fast float 1.000000e+00, %235
  %240 = call float @dx.op.unary.f32(i32 7, float %239)  ; Saturate(value)
  %241 = fsub fast float %238, %240
  %242 = fsub fast float %228, %240
  %243 = fdiv fast float %242, %241
  %244 = call float @dx.op.unary.f32(i32 7, float %243)  ; Saturate(value)
  %245 = fmul fast float %244, 2.000000e+00
  %246 = fsub fast float 3.000000e+00, %245
  %247 = fmul fast float %244, %244
  %248 = fmul fast float %247, %246
  br label %249

; <label>:249                                     ; preds = %230, %190
  %250 = phi float [ %248, %230 ], [ %228, %190 ]
  %251 = fcmp fast ogt float %250, 0.000000e+00
  br i1 %251, label %253, label %252

; <label>:252                                     ; preds = %249
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %253

; <label>:253                                     ; preds = %252, %249
  %254 = call float @dx.op.unary.f32(i32 7, float %250)  ; Saturate(value)
  %255 = fmul fast float %64, 5.000000e-01
  %256 = fmul fast float %65, 5.000000e-01
  %257 = fptosi float %255 to i32
  %258 = fptosi float %256 to i32
  %259 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %257, i32 %258, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %260 = extractvalue %dx.types.ResRet.i32 %259, 0
  %261 = lshr i32 %260, 18
  %262 = uitofp i32 %261 to float
  %263 = fmul fast float %262, 0x3F4C00EBA0000000
  %264 = call float @dx.op.unary.f32(i32 21, float %263)  ; Exp(value)
  %265 = fadd fast float %264, -1.000000e+00
  %266 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %267 = extractvalue %dx.types.Dimensions %266, 0
  %268 = sitofp i32 %267 to float
  %269 = extractvalue %dx.types.Dimensions %266, 1
  %270 = sitofp i32 %269 to float
  %271 = fcmp fast oge float %255, %268
  %272 = fcmp fast oge float %256, %270
  %273 = or i1 %271, %272
  %274 = select i1 %273, float 0x4197782600000000, float %265
  %275 = fsub fast float %274, %57
  %276 = fcmp fast ogt float %275, 0.000000e+00
  %277 = and i32 %150, -2
  %278 = icmp eq i32 %277, 2
  %279 = and i1 %278, %276
  %280 = xor i1 %276, true
  %281 = icmp eq i32 %150, 1
  %282 = and i1 %281, %280
  %283 = or i1 %279, %282
  %284 = and i32 %154, 262144
  %285 = icmp ne i32 %284, 0
  %286 = and i1 %285, %283
  %287 = xor i1 %283, true
  %288 = and i32 %154, 131072
  %289 = icmp ne i32 %288, 0
  %290 = and i1 %289, %287
  %291 = or i1 %286, %290
  br i1 %291, label %292, label %293

; <label>:292                                     ; preds = %253
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %293

; <label>:293                                     ; preds = %292, %253
  %294 = and i32 %154, 32
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %546, label %296, !dx.controlflow.hints !73

; <label>:296                                     ; preds = %293
  %297 = add i32 %151, 80
  %298 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.f32 %298, 0
  %300 = extractvalue %dx.types.ResRet.f32 %298, 1
  %301 = extractvalue %dx.types.ResRet.f32 %298, 2
  %302 = extractvalue %dx.types.ResRet.f32 %298, 3
  %303 = add i32 %151, 96
  %304 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.f32 %304, 0
  %306 = extractvalue %dx.types.ResRet.f32 %304, 1
  %307 = extractvalue %dx.types.ResRet.f32 %304, 2
  %308 = add i32 %151, 112
  %309 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.f32 %309, 0
  %311 = extractvalue %dx.types.ResRet.f32 %309, 1
  %312 = extractvalue %dx.types.ResRet.f32 %309, 2
  %313 = extractvalue %dx.types.ResRet.f32 %309, 3
  %314 = add i32 %151, 128
  %315 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.f32 %315, 0
  %317 = extractvalue %dx.types.ResRet.f32 %315, 1
  %318 = extractvalue %dx.types.ResRet.f32 %315, 2
  %319 = extractvalue %dx.types.ResRet.f32 %315, 3
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %152, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = and i32 %321, 4096
  %323 = icmp ne i32 %322, 0
  %324 = fcmp fast une float %307, 0.000000e+00
  %325 = and i32 %321, 64
  %326 = icmp ne i32 %325, 0
  %327 = and i32 %321, 128
  %328 = icmp eq i32 %327, 0
  %329 = and i32 %321, 2048
  %330 = icmp eq i32 %329, 0
  %331 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %14, i32 0)  ; GetDimensions(handle,mipLevel)
  %332 = extractvalue %dx.types.Dimensions %331, 0
  %333 = sitofp i32 %332 to float
  %334 = extractvalue %dx.types.Dimensions %331, 1
  %335 = sitofp i32 %334 to float
  %336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %337 = extractvalue %dx.types.CBufRet.f32 %336, 2
  %338 = extractvalue %dx.types.CBufRet.f32 %336, 3
  %339 = fmul fast float %337, %64
  %340 = fmul fast float %338, %65
  %341 = fmul fast float %339, %333
  %342 = fmul fast float %340, %335
  %343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %344 = extractvalue %dx.types.CBufRet.f32 %343, 1
  %345 = fsub fast float -0.000000e+00, %344
  %346 = fptoui float %345 to i32
  %347 = fptoui float %341 to i32
  %348 = fptoui float %342 to i32
  %349 = and i32 %346, 31
  %350 = lshr i32 %347, %349
  %351 = lshr i32 %348, %349
  %352 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 %346, i32 %350, i32 %351, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %353 = extractvalue %dx.types.ResRet.f32 %352, 0
  %354 = fcmp fast ogt float %353, -1.000000e+00
  %355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %356 = extractvalue %dx.types.CBufRet.f32 %355, 1
  %357 = select i1 %354, float %356, float 1.000000e+00
  %358 = fadd fast float %353, 1.000000e+00
  %359 = fmul fast float %357, %358
  %360 = call float @dx.op.unary.f32(i32 6, float %359)  ; FAbs(value)
  %361 = extractvalue %dx.types.CBufRet.f32 %355, 3
  %362 = fcmp fast oge float %360, %361
  %363 = select i1 %362, float 0x4197782600000000, float %360
  br i1 %330, label %441, label %364, !dx.controlflow.hints !74

; <label>:364                                     ; preds = %296
  %365 = fmul fast float %69, %337
  %366 = fmul fast float %71, %338
  %367 = fsub fast float 1.000000e+00, %365
  %368 = fsub fast float 1.000000e+00, %366
  %369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %370 = extractvalue %dx.types.CBufRet.f32 %369, 0
  %371 = extractvalue %dx.types.CBufRet.f32 %369, 1
  %372 = extractvalue %dx.types.CBufRet.f32 %369, 2
  %373 = fmul fast float %367, %370
  %374 = fmul fast float %367, %371
  %375 = fmul fast float %367, %372
  %376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %377 = extractvalue %dx.types.CBufRet.f32 %376, 0
  %378 = extractvalue %dx.types.CBufRet.f32 %376, 1
  %379 = extractvalue %dx.types.CBufRet.f32 %376, 2
  %380 = fmul fast float %368, %377
  %381 = fmul fast float %368, %378
  %382 = fmul fast float %368, %379
  %383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %384 = extractvalue %dx.types.CBufRet.f32 %383, 0
  %385 = extractvalue %dx.types.CBufRet.f32 %383, 1
  %386 = extractvalue %dx.types.CBufRet.f32 %383, 2
  %387 = fadd fast float %380, %384
  %388 = fadd fast float %387, %373
  %389 = fadd fast float %381, %385
  %390 = fadd fast float %389, %374
  %391 = fadd fast float %382, %386
  %392 = fadd fast float %391, %375
  %393 = fmul fast float %388, %363
  %394 = fmul fast float %390, %363
  %395 = fmul fast float %392, %363
  %396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %397 = extractvalue %dx.types.CBufRet.f32 %396, 0
  %398 = extractvalue %dx.types.CBufRet.f32 %396, 1
  %399 = extractvalue %dx.types.CBufRet.f32 %396, 2
  %400 = fsub fast float %397, %32
  %401 = fadd fast float %400, %393
  %402 = fsub fast float %398, %33
  %403 = fadd fast float %402, %394
  %404 = fsub fast float %399, %34
  %405 = fadd fast float %404, %395
  %406 = fmul fast float %35, %35
  %407 = call float @dx.op.dot3.f32(i32 55, float %401, float %403, float %405, float %401, float %403, float %405)  ; Dot3(ax,ay,az,bx,by,bz)
  %408 = fsub fast float %406, %407
  %409 = fmul fast float %306, %406
  %410 = fmul fast float %305, %406
  %411 = fcmp fast olt float %408, %409
  %412 = fcmp fast ogt float %408, %410
  %413 = or i1 %411, %412
  %414 = select i1 %413, float 0.000000e+00, float %408
  %415 = fsub fast float %305, %306
  %416 = fmul fast float %415, %406
  %417 = fsub fast float %414, %409
  %418 = fdiv fast float %417, %416
  %419 = call float @dx.op.unary.f32(i32 7, float %418)  ; Saturate(value)
  %420 = fmul fast float %419, 2.000000e+00
  %421 = fsub fast float 3.000000e+00, %420
  %422 = fmul fast float %419, %419
  %423 = fmul fast float %422, %421
  %424 = fmul fast float %310, %50
  %425 = fmul fast float %311, %51
  %426 = fmul fast float %312, %52
  %427 = fsub fast float %424, %316
  %428 = fsub fast float %425, %317
  %429 = fsub fast float %426, %318
  %430 = fsub fast float %313, %319
  %431 = fmul fast float %423, %427
  %432 = fmul fast float %423, %428
  %433 = fmul fast float %423, %429
  %434 = fmul fast float %423, %430
  %435 = fadd fast float %431, %316
  %436 = fadd fast float %432, %317
  %437 = fadd fast float %433, %318
  %438 = fadd fast float %434, %319
  %439 = fmul fast float %299, %299
  %440 = fmul fast float %439, %414
  br label %536

; <label>:441                                     ; preds = %296
  %442 = and i32 %321, 256
  %443 = icmp eq i32 %442, 0
  %444 = fsub fast float %363, %57
  br i1 %443, label %493, label %445

; <label>:445                                     ; preds = %441
  %446 = fadd fast float %305, %57
  %447 = fcmp fast olt float %363, %57
  %448 = fcmp fast ogt float %363, %446
  %449 = or i1 %447, %448
  %450 = select i1 %449, float 0.000000e+00, float %444
  %451 = call float @dx.op.unary.f32(i32 83, float %363)  ; DerivCoarseX(value)
  %452 = call float @dx.op.unary.f32(i32 84, float %363)  ; DerivCoarseY(value)
  %453 = fmul fast float %451, %451
  %454 = fmul fast float %452, %452
  %455 = fadd fast float %454, %453
  %456 = call float @dx.op.unary.f32(i32 24, float %455)  ; Sqrt(value)
  %457 = extractvalue %dx.types.CBufRet.f32 %343, 2
  %458 = fmul fast float %457, %456
  %459 = call float @dx.op.unary.f32(i32 7, float %458)  ; Saturate(value)
  %460 = fmul fast float %459, %306
  %461 = fdiv fast float %444, %460
  %462 = call float @dx.op.unary.f32(i32 7, float %461)  ; Saturate(value)
  %463 = fmul fast float %462, 2.000000e+00
  %464 = fsub fast float 3.000000e+00, %463
  %465 = fmul fast float %462, %462
  %466 = fmul fast float %465, %464
  %467 = fsub fast float %363, %446
  %468 = fadd fast float %467, %460
  %469 = fdiv fast float %468, %460
  %470 = call float @dx.op.unary.f32(i32 7, float %469)  ; Saturate(value)
  %471 = fmul fast float %470, 2.000000e+00
  %472 = fsub fast float 3.000000e+00, %471
  %473 = fmul fast float %470, %470
  %474 = fmul fast float %473, %472
  %475 = fsub fast float %466, %474
  %476 = fmul fast float %310, %50
  %477 = fmul fast float %311, %51
  %478 = fmul fast float %312, %52
  %479 = fsub fast float %476, %316
  %480 = fsub fast float %477, %317
  %481 = fsub fast float %478, %318
  %482 = fsub fast float %313, %319
  %483 = fmul fast float %475, %479
  %484 = fmul fast float %475, %480
  %485 = fmul fast float %475, %481
  %486 = fmul fast float %475, %482
  %487 = fadd fast float %483, %316
  %488 = fadd fast float %484, %317
  %489 = fadd fast float %485, %318
  %490 = fadd fast float %486, %319
  %491 = fmul fast float %450, %299
  %492 = call float @dx.op.unary.f32(i32 6, float %491)  ; FAbs(value)
  br label %536

; <label>:493                                     ; preds = %441
  br i1 %324, label %494, label %507

; <label>:494                                     ; preds = %493
  %495 = fdiv fast float 5.000000e+01, %35
  %496 = select i1 %326, float %495, float 1.000000e+00
  %497 = fmul fast float %496, %299
  %498 = fmul fast float %203, 2.000000e+00
  %499 = fmul fast float %204, 2.000000e+00
  %500 = fadd fast float %498, -1.000000e+00
  %501 = fadd fast float %499, -1.000000e+00
  %502 = call float @dx.op.dot2.f32(i32 54, float %500, float %501, float %500, float %501)  ; Dot2(ax,ay,bx,by)
  %503 = fmul fast float %307, %35
  %504 = fmul fast float %503, %502
  %505 = fsub fast float %444, %504
  %506 = fmul fast float %497, %505
  br label %536

; <label>:507                                     ; preds = %493
  br i1 %328, label %528, label %508

; <label>:508                                     ; preds = %507
  %509 = fmul fast float %35, 0x3F947AE140000000
  %510 = select i1 %326, float %509, float 1.000000e+00
  %511 = fdiv fast float 1.000000e+00, %510
  %512 = fmul fast float %510, %300
  %513 = fmul fast float %510, %301
  %514 = fmul fast float %511, %302
  %515 = call float @dx.op.unary.f32(i32 6, float %444)  ; FAbs(value)
  %516 = fcmp fast olt float %515, %512
  br i1 %516, label %517, label %521, !dx.controlflow.hints !75

; <label>:517                                     ; preds = %508
  %518 = fmul fast float %511, %299
  %519 = fmul fast float %518, %515
  %520 = call float @dx.op.unary.f32(i32 6, float %519)  ; FAbs(value)
  br label %536

; <label>:521                                     ; preds = %508
  %522 = fcmp fast ogt float %515, %513
  br i1 %522, label %523, label %536

; <label>:523                                     ; preds = %521
  %524 = fsub fast float %515, %513
  %525 = fmul fast float %514, %524
  %526 = call float @dx.op.unary.f32(i32 6, float %525)  ; FAbs(value)
  %527 = fsub fast float 1.000000e+00, %526
  br label %536

; <label>:528                                     ; preds = %507
  %529 = fdiv fast float 5.000000e+01, %35
  %530 = select i1 %326, float %529, float 1.000000e+00
  %531 = fmul fast float %530, %299
  %532 = call float @dx.op.unary.f32(i32 6, float %275)  ; FAbs(value)
  %533 = select i1 %323, float %532, float 0x47EFFFFFE0000000
  %534 = call float @dx.op.binary.f32(i32 36, float %444, float %533)  ; FMin(a,b)
  %535 = fmul fast float %531, %534
  br label %536

; <label>:536                                     ; preds = %528, %523, %521, %517, %494, %445, %364
  %537 = phi float [ %440, %364 ], [ %492, %445 ], [ %506, %494 ], [ %535, %528 ], [ %520, %517 ], [ %527, %523 ], [ %515, %521 ]
  %538 = phi float [ %435, %364 ], [ %487, %445 ], [ %50, %494 ], [ %50, %528 ], [ %50, %517 ], [ %50, %523 ], [ %50, %521 ]
  %539 = phi float [ %436, %364 ], [ %488, %445 ], [ %51, %494 ], [ %51, %528 ], [ %51, %517 ], [ %51, %523 ], [ %51, %521 ]
  %540 = phi float [ %437, %364 ], [ %489, %445 ], [ %52, %494 ], [ %52, %528 ], [ %52, %517 ], [ %52, %523 ], [ %52, %521 ]
  %541 = phi float [ %438, %364 ], [ %490, %445 ], [ 1.000000e+00, %494 ], [ 1.000000e+00, %528 ], [ 1.000000e+00, %517 ], [ 1.000000e+00, %523 ], [ 1.000000e+00, %521 ]
  %542 = call float @dx.op.unary.f32(i32 7, float %537)  ; Saturate(value)
  %543 = fmul fast float %542, %53
  %544 = fmul fast float %541, %254
  %545 = fmul fast float %544, %542
  br label %546

; <label>:546                                     ; preds = %536, %293
  %547 = phi float [ %538, %536 ], [ %50, %293 ]
  %548 = phi float [ %539, %536 ], [ %51, %293 ]
  %549 = phi float [ %540, %536 ], [ %52, %293 ]
  %550 = phi float [ %545, %536 ], [ %254, %293 ]
  %551 = phi float [ %543, %536 ], [ %53, %293 ]
  %552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %553 = extractvalue %dx.types.CBufRet.f32 %552, 2
  %554 = fptosi float %57 to i32
  %555 = sitofp i32 %554 to float
  %556 = fadd fast float %553, %555
  %557 = fmul fast float %556, 0x3FE3C6EF40000000
  %558 = frem fast float %64, 2.560000e+02
  %559 = frem fast float %65, 2.560000e+02
  %560 = fptoui float %558 to i32
  %561 = fptoui float %559 to i32
  %562 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %560, i32 %561, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %563 = extractvalue %dx.types.ResRet.f32 %562, 0
  %564 = fadd fast float %563, %557
  %565 = call float @dx.op.unary.f32(i32 22, float %564)  ; Frc(value)
  %566 = and i32 %154, 1
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %625, label %568, !dx.controlflow.hints !76

; <label>:568                                     ; preds = %546
  %569 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %151, i32 undef)  ; BufferLoad(srv,index,wot)
  %570 = extractvalue %dx.types.ResRet.f32 %569, 2
  %571 = extractvalue %dx.types.ResRet.f32 %569, 3
  %572 = add i32 %151, 16
  %573 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %572, i32 undef)  ; BufferLoad(srv,index,wot)
  %574 = extractvalue %dx.types.ResRet.f32 %573, 0
  %575 = extractvalue %dx.types.ResRet.f32 %573, 1
  %576 = extractvalue %dx.types.ResRet.f32 %573, 2
  %577 = add i32 %151, 32
  %578 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.f32 %578, 0
  %580 = extractvalue %dx.types.ResRet.f32 %578, 1
  %581 = extractvalue %dx.types.ResRet.f32 %578, 2
  %582 = and i32 %154, 2
  %583 = icmp eq i32 %582, 0
  %584 = call float @dx.op.dot3.f32(i32 55, float %42, float %43, float %44, float %42, float %43, float %44)  ; Dot3(ax,ay,az,bx,by,bz)
  %585 = call float @dx.op.unary.f32(i32 25, float %584)  ; Rsqrt(value)
  %586 = fmul fast float %585, %42
  %587 = fmul fast float %585, %43
  %588 = fmul fast float %585, %44
  %589 = call float @dx.op.dot3.f32(i32 55, float %99, float %100, float %101, float %99, float %100, float %101)  ; Dot3(ax,ay,az,bx,by,bz)
  %590 = call float @dx.op.unary.f32(i32 25, float %589)  ; Rsqrt(value)
  %591 = fmul fast float %590, %99
  %592 = fmul fast float %590, %100
  %593 = fmul fast float %590, %101
  %594 = call float @dx.op.dot3.f32(i32 55, float %591, float %592, float %593, float %586, float %587, float %588)  ; Dot3(ax,ay,az,bx,by,bz)
  %595 = fmul fast float %594, %594
  %596 = fmul fast float %595, %570
  %597 = fadd fast float %596, %571
  %598 = call float @dx.op.unary.f32(i32 7, float %597)  ; Saturate(value)
  br i1 %583, label %599, label %609, !dx.controlflow.hints !77

; <label>:599                                     ; preds = %568
  %600 = extractvalue %dx.types.ResRet.f32 %569, 1
  %601 = extractvalue %dx.types.ResRet.f32 %569, 0
  %602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
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
  %620 = fmul fast float %617, %547
  %621 = fmul fast float %618, %548
  %622 = fmul fast float %619, %549
  %623 = fmul fast float %610, %550
  %624 = fmul fast float %610, %551
  br label %625

; <label>:625                                     ; preds = %609, %546
  %626 = phi float [ %620, %609 ], [ %547, %546 ]
  %627 = phi float [ %621, %609 ], [ %548, %546 ]
  %628 = phi float [ %622, %609 ], [ %549, %546 ]
  %629 = phi float [ %623, %609 ], [ %550, %546 ]
  %630 = phi float [ %624, %609 ], [ %551, %546 ]
  %631 = add i32 %31, 104
  %632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %631, i32 undef)  ; BufferLoad(srv,index,wot)
  %633 = extractvalue %dx.types.ResRet.i32 %632, 0
  %634 = add i32 %633, 0
  %635 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %634, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %636 = add i32 %31, 24
  %637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %636, i32 undef)  ; BufferLoad(srv,index,wot)
  %638 = extractvalue %dx.types.ResRet.i32 %637, 0
  %639 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %635, %dx.types.Handle %60, float %191, float %192, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %640 = extractvalue %dx.types.ResRet.f32 %639, 0
  %641 = extractvalue %dx.types.ResRet.f32 %639, 1
  %642 = extractvalue %dx.types.ResRet.f32 %639, 2
  %643 = extractvalue %dx.types.ResRet.f32 %639, 3
  %644 = and i32 %638, 255
  %645 = uitofp i32 %644 to float
  %646 = lshr i32 %638, 8
  %647 = and i32 %646, 255
  %648 = uitofp i32 %647 to float
  %649 = fmul fast float %643, %645
  %650 = fadd fast float %649, %648
  %651 = add i32 %31, 56
  %652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %651, i32 undef)  ; BufferLoad(srv,index,wot)
  %653 = extractvalue %dx.types.ResRet.i32 %652, 0
  %654 = and i32 %653, 255
  %655 = uitofp i32 %654 to float
  %656 = fmul fast float %655, 0x3F70101020000000
  %657 = lshr i32 %653, 8
  %658 = and i32 %657, 255
  %659 = uitofp i32 %658 to float
  %660 = fmul fast float %659, 0x3F70101020000000
  %661 = lshr i32 %653, 16
  %662 = and i32 %661, 255
  %663 = uitofp i32 %662 to float
  %664 = fmul fast float %663, 0x3F70101020000000
  %665 = fmul fast float %656, %656
  %666 = fmul fast float %665, %640
  %667 = fmul fast float %660, %660
  %668 = fmul fast float %667, %641
  %669 = fmul fast float %664, %664
  %670 = fmul fast float %669, %642
  %671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %631, i32 undef)  ; BufferLoad(srv,index,wot)
  %672 = extractvalue %dx.types.ResRet.i32 %671, 0
  %673 = add i32 %672, 0
  %674 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %673, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %636, i32 undef)  ; BufferLoad(srv,index,wot)
  %676 = extractvalue %dx.types.ResRet.i32 %675, 0
  %677 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %674, %dx.types.Handle %60, float %193, float %194, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %678 = extractvalue %dx.types.ResRet.f32 %677, 0
  %679 = extractvalue %dx.types.ResRet.f32 %677, 1
  %680 = extractvalue %dx.types.ResRet.f32 %677, 2
  %681 = extractvalue %dx.types.ResRet.f32 %677, 3
  %682 = and i32 %676, 255
  %683 = uitofp i32 %682 to float
  %684 = lshr i32 %676, 8
  %685 = and i32 %684, 255
  %686 = uitofp i32 %685 to float
  %687 = fmul fast float %681, %683
  %688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %651, i32 undef)  ; BufferLoad(srv,index,wot)
  %689 = extractvalue %dx.types.ResRet.i32 %688, 0
  %690 = and i32 %689, 255
  %691 = uitofp i32 %690 to float
  %692 = fmul fast float %691, 0x3F70101020000000
  %693 = lshr i32 %689, 8
  %694 = and i32 %693, 255
  %695 = uitofp i32 %694 to float
  %696 = fmul fast float %695, 0x3F70101020000000
  %697 = lshr i32 %689, 16
  %698 = and i32 %697, 255
  %699 = uitofp i32 %698 to float
  %700 = fmul fast float %699, 0x3F70101020000000
  %701 = fmul fast float %692, %692
  %702 = fmul fast float %701, %678
  %703 = fmul fast float %696, %696
  %704 = fmul fast float %703, %679
  %705 = fmul fast float %700, %700
  %706 = fmul fast float %705, %680
  %707 = fsub fast float %702, %666
  %708 = fsub fast float %704, %668
  %709 = fsub fast float %706, %670
  %710 = fmul fast float %707, %47
  %711 = fmul fast float %708, %47
  %712 = fmul fast float %709, %47
  %713 = fadd fast float %710, %666
  %714 = fadd fast float %711, %668
  %715 = fadd fast float %712, %670
  %716 = fsub fast float %686, %650
  %717 = fadd fast float %716, %687
  %718 = fmul fast float %717, %47
  %719 = fadd fast float %718, %650
  %720 = fmul fast float %719, 0x3F70101000000000
  %721 = fmul fast float %713, %626
  %722 = fmul fast float %714, %627
  %723 = fmul fast float %715, %628
  %724 = add i32 %31, 28
  %725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %724, i32 undef)  ; BufferLoad(srv,index,wot)
  %726 = extractvalue %dx.types.ResRet.i32 %725, 0
  %727 = add i32 %31, 108
  %728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %727, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.i32 %728, 0
  %730 = add i32 %729, 0
  %731 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %730, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %732 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %731, %dx.types.Handle %60, float %191, float %192, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %733 = extractvalue %dx.types.ResRet.f32 %732, 0
  %734 = extractvalue %dx.types.ResRet.f32 %732, 1
  %735 = extractvalue %dx.types.ResRet.f32 %732, 3
  %736 = and i32 %726, 255
  %737 = uitofp i32 %736 to float
  %738 = lshr i32 %726, 8
  %739 = and i32 %738, 255
  %740 = uitofp i32 %739 to float
  %741 = lshr i32 %726, 16
  %742 = and i32 %741, 255
  %743 = uitofp i32 %742 to float
  %744 = fmul fast float %743, 0x3F70101000000000
  %745 = fmul fast float %733, %737
  %746 = fadd fast float %745, %740
  %747 = fadd fast float %734, -5.000000e-01
  %748 = fadd fast float %735, -5.000000e-01
  %749 = fmul fast float %747, %744
  %750 = fmul fast float %748, %744
  %751 = fadd fast float %749, 5.000000e-01
  %752 = fadd fast float %750, 5.000000e-01
  %753 = fmul fast float %751, 2.000000e+00
  %754 = fadd fast float %753, -1.000000e+00
  %755 = fmul fast float %752, 2.000000e+00
  %756 = fadd fast float %755, -1.000000e+00
  %757 = fadd fast float %754, %756
  %758 = fmul fast float %757, 5.000000e-01
  %759 = fsub fast float %754, %756
  %760 = fmul fast float %759, 5.000000e-01
  %761 = call float @dx.op.unary.f32(i32 6, float %758)  ; FAbs(value)
  %762 = fsub fast float 1.000000e+00, %761
  %763 = call float @dx.op.unary.f32(i32 6, float %760)  ; FAbs(value)
  %764 = fsub fast float %762, %763
  %765 = call float @dx.op.dot3.f32(i32 55, float %758, float %760, float %764, float %758, float %760, float %764)  ; Dot3(ax,ay,az,bx,by,bz)
  %766 = call float @dx.op.unary.f32(i32 25, float %765)  ; Rsqrt(value)
  %767 = fmul fast float %758, %766
  %768 = fmul fast float %760, %766
  %769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %724, i32 undef)  ; BufferLoad(srv,index,wot)
  %770 = extractvalue %dx.types.ResRet.i32 %769, 0
  %771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %727, i32 undef)  ; BufferLoad(srv,index,wot)
  %772 = extractvalue %dx.types.ResRet.i32 %771, 0
  %773 = add i32 %772, 0
  %774 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %773, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %775 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %774, %dx.types.Handle %60, float %193, float %194, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %776 = extractvalue %dx.types.ResRet.f32 %775, 0
  %777 = extractvalue %dx.types.ResRet.f32 %775, 1
  %778 = extractvalue %dx.types.ResRet.f32 %775, 3
  %779 = and i32 %770, 255
  %780 = uitofp i32 %779 to float
  %781 = lshr i32 %770, 8
  %782 = and i32 %781, 255
  %783 = uitofp i32 %782 to float
  %784 = lshr i32 %770, 16
  %785 = and i32 %784, 255
  %786 = uitofp i32 %785 to float
  %787 = fmul fast float %786, 0x3F70101000000000
  %788 = fmul fast float %776, %780
  %789 = fadd fast float %777, -5.000000e-01
  %790 = fadd fast float %778, -5.000000e-01
  %791 = fmul fast float %789, %787
  %792 = fmul fast float %790, %787
  %793 = fadd fast float %791, 5.000000e-01
  %794 = fadd fast float %792, 5.000000e-01
  %795 = fmul fast float %793, 2.000000e+00
  %796 = fadd fast float %795, -1.000000e+00
  %797 = fmul fast float %794, 2.000000e+00
  %798 = fadd fast float %797, -1.000000e+00
  %799 = fadd fast float %796, %798
  %800 = fmul fast float %799, 5.000000e-01
  %801 = fsub fast float %796, %798
  %802 = fmul fast float %801, 5.000000e-01
  %803 = call float @dx.op.unary.f32(i32 6, float %800)  ; FAbs(value)
  %804 = fsub fast float 1.000000e+00, %803
  %805 = call float @dx.op.unary.f32(i32 6, float %802)  ; FAbs(value)
  %806 = fsub fast float %804, %805
  %807 = call float @dx.op.dot3.f32(i32 55, float %800, float %802, float %806, float %800, float %802, float %806)  ; Dot3(ax,ay,az,bx,by,bz)
  %808 = call float @dx.op.unary.f32(i32 25, float %807)  ; Rsqrt(value)
  %809 = fmul fast float %800, %808
  %810 = fmul fast float %802, %808
  %811 = fsub fast float %809, %767
  %812 = fsub fast float %810, %768
  %813 = fmul fast float %811, %47
  %814 = fmul fast float %812, %47
  %815 = fadd fast float %813, %767
  %816 = fadd fast float %814, %768
  %817 = fsub fast float %783, %746
  %818 = fadd fast float %817, %788
  %819 = fmul fast float %818, %47
  %820 = fadd fast float %819, %746
  %821 = fmul fast float %820, 0x3F70101000000000
  %822 = add i32 %31, 40
  %823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %822, i32 undef)  ; BufferLoad(srv,index,wot)
  %824 = extractvalue %dx.types.ResRet.i32 %823, 0
  %825 = and i32 %824, 255
  %826 = uitofp i32 %825 to float
  %827 = fmul fast float %826, 0x3F70101020000000
  %828 = lshr i32 %824, 8
  %829 = and i32 %828, 255
  %830 = uitofp i32 %829 to float
  %831 = fmul fast float %830, 0x3F70101020000000
  %832 = lshr i32 %824, 16
  %833 = and i32 %832, 255
  %834 = uitofp i32 %833 to float
  %835 = fmul fast float %834, 0x3F70101020000000
  %836 = fmul fast float %827, %827
  %837 = fmul fast float %831, %831
  %838 = fmul fast float %835, %835
  %839 = add i32 %31, 116
  %840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %839, i32 undef)  ; BufferLoad(srv,index,wot)
  %841 = extractvalue %dx.types.ResRet.i32 %840, 0
  %842 = add i32 %841, 0
  %843 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %842, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %844 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %843, %dx.types.Handle %61, float %191, float %192, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %845 = extractvalue %dx.types.ResRet.f32 %844, 0
  %846 = extractvalue %dx.types.ResRet.f32 %844, 1
  %847 = extractvalue %dx.types.ResRet.f32 %844, 2
  %848 = fmul fast float %836, %845
  %849 = fmul fast float %837, %846
  %850 = fmul fast float %838, %847
  %851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %822, i32 undef)  ; BufferLoad(srv,index,wot)
  %852 = extractvalue %dx.types.ResRet.i32 %851, 0
  %853 = and i32 %852, 255
  %854 = uitofp i32 %853 to float
  %855 = fmul fast float %854, 0x3F70101020000000
  %856 = lshr i32 %852, 8
  %857 = and i32 %856, 255
  %858 = uitofp i32 %857 to float
  %859 = fmul fast float %858, 0x3F70101020000000
  %860 = lshr i32 %852, 16
  %861 = and i32 %860, 255
  %862 = uitofp i32 %861 to float
  %863 = fmul fast float %862, 0x3F70101020000000
  %864 = fmul fast float %855, %855
  %865 = fmul fast float %859, %859
  %866 = fmul fast float %863, %863
  %867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %839, i32 undef)  ; BufferLoad(srv,index,wot)
  %868 = extractvalue %dx.types.ResRet.i32 %867, 0
  %869 = add i32 %868, 0
  %870 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %869, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %871 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %870, %dx.types.Handle %61, float %193, float %194, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %872 = extractvalue %dx.types.ResRet.f32 %871, 0
  %873 = extractvalue %dx.types.ResRet.f32 %871, 1
  %874 = extractvalue %dx.types.ResRet.f32 %871, 2
  %875 = fmul fast float %864, %872
  %876 = fmul fast float %865, %873
  %877 = fmul fast float %866, %874
  %878 = fsub fast float %875, %848
  %879 = fsub fast float %876, %849
  %880 = fsub fast float %877, %850
  %881 = fmul fast float %878, %47
  %882 = fmul fast float %879, %47
  %883 = fmul fast float %880, %47
  %884 = fadd fast float %881, %848
  %885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %886 = extractvalue %dx.types.CBufRet.f32 %885, 3
  %887 = fcmp fast ogt float %886, 0.000000e+00
  %888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %889 = extractvalue %dx.types.CBufRet.f32 %888, 1
  br i1 %887, label %890, label %915

; <label>:890                                     ; preds = %625
  %891 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %36, float %37, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %892 = extractvalue %dx.types.ResRet.f32 %891, 0
  %893 = extractvalue %dx.types.ResRet.f32 %891, 1
  %894 = extractvalue %dx.types.ResRet.f32 %891, 2
  %895 = extractvalue %dx.types.ResRet.f32 %891, 3
  %896 = fmul fast float %889, %895
  %897 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %36, float %37, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %898 = extractvalue %dx.types.ResRet.f32 %897, 0
  %899 = extractvalue %dx.types.ResRet.f32 %897, 1
  %900 = extractvalue %dx.types.ResRet.f32 %897, 2
  %901 = extractvalue %dx.types.ResRet.f32 %897, 3
  %902 = fmul fast float %889, %898
  %903 = fmul fast float %889, %899
  %904 = fmul fast float %889, %900
  %905 = fmul fast float %889, %901
  %906 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %36, float %37, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %907 = extractvalue %dx.types.ResRet.f32 %906, 0
  %908 = extractvalue %dx.types.ResRet.f32 %906, 1
  %909 = extractvalue %dx.types.ResRet.f32 %906, 2
  %910 = extractvalue %dx.types.ResRet.f32 %906, 3
  %911 = fmul fast float %889, %907
  %912 = fmul fast float %889, %908
  %913 = fmul fast float %889, %909
  %914 = fmul fast float %889, %910
  br label %920

; <label>:915                                     ; preds = %625
  %916 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %26, float %36, float %37, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %917 = extractvalue %dx.types.ResRet.f32 %916, 0
  %918 = extractvalue %dx.types.ResRet.f32 %916, 1
  %919 = extractvalue %dx.types.ResRet.f32 %916, 2
  br label %920

; <label>:920                                     ; preds = %915, %890
  %921 = phi float [ %911, %890 ], [ 0.000000e+00, %915 ]
  %922 = phi float [ %912, %890 ], [ 0.000000e+00, %915 ]
  %923 = phi float [ %913, %890 ], [ 0.000000e+00, %915 ]
  %924 = phi float [ %914, %890 ], [ 0.000000e+00, %915 ]
  %925 = phi float [ %902, %890 ], [ 0.000000e+00, %915 ]
  %926 = phi float [ %903, %890 ], [ 0.000000e+00, %915 ]
  %927 = phi float [ %904, %890 ], [ 0.000000e+00, %915 ]
  %928 = phi float [ %905, %890 ], [ 0.000000e+00, %915 ]
  %929 = phi float [ %892, %890 ], [ %917, %915 ]
  %930 = phi float [ %893, %890 ], [ %918, %915 ]
  %931 = phi float [ %894, %890 ], [ %919, %915 ]
  %932 = phi float [ %896, %890 ], [ 0.000000e+00, %915 ]
  %933 = fmul float %889, %931
  %934 = fmul float %889, %930
  %935 = fmul float %889, %929
  %936 = call float @dx.op.dot2.f32(i32 54, float %815, float %816, float %815, float %816)  ; Dot2(ax,ay,bx,by)
  %937 = fsub fast float 1.000000e+00, %936
  %938 = call float @dx.op.unary.f32(i32 7, float %937)  ; Saturate(value)
  %939 = call float @dx.op.unary.f32(i32 24, float %938)  ; Sqrt(value)
  %940 = fmul fast float %939, %42
  %941 = fmul fast float %939, %43
  %942 = fmul fast float %939, %44
  %943 = fmul fast float %815, %38
  %944 = fmul fast float %815, %39
  %945 = fmul fast float %815, %40
  %946 = fmul fast float %111, %816
  %947 = fmul fast float %112, %816
  %948 = fmul fast float %113, %816
  %949 = fadd fast float %946, %943
  %950 = fadd fast float %949, %940
  %951 = fadd fast float %947, %944
  %952 = fadd fast float %951, %941
  %953 = fadd fast float %948, %945
  %954 = fadd fast float %953, %942
  %955 = call float @dx.op.dot3.f32(i32 55, float %950, float %952, float %954, float %950, float %952, float %954)  ; Dot3(ax,ay,az,bx,by,bz)
  %956 = call float @dx.op.unary.f32(i32 25, float %955)  ; Rsqrt(value)
  %957 = fmul fast float %950, %956
  %958 = fmul fast float %952, %956
  %959 = fmul fast float %954, %956
  %960 = call float @dx.op.dot3.f32(i32 55, float %99, float %100, float %101, float %99, float %100, float %101)  ; Dot3(ax,ay,az,bx,by,bz)
  %961 = call float @dx.op.unary.f32(i32 25, float %960)  ; Rsqrt(value)
  %962 = fmul fast float %961, %99
  %963 = fmul fast float %961, %100
  %964 = fmul fast float %961, %101
  %965 = fsub fast float -0.000000e+00, %962
  %966 = fsub fast float -0.000000e+00, %963
  %967 = fsub fast float -0.000000e+00, %964
  %968 = fadd fast float %720, 0xBFB99999A0000000
  %969 = call float @dx.op.unary.f32(i32 7, float %968)  ; Saturate(value)
  %970 = fmul fast float %969, 0x3FF1C71C80000000
  %971 = call float @dx.op.binary.f32(i32 36, float %720, float 0x3FB99999A0000000)  ; FMin(a,b)
  %972 = fsub fast float 1.000000e+00, %970
  %973 = call float @dx.op.unary.f32(i32 7, float %972)  ; Saturate(value)
  %974 = fmul fast float %973, %721
  %975 = fmul fast float %973, %722
  %976 = fmul fast float %973, %723
  %977 = call float @dx.op.unary.f32(i32 7, float %974)  ; Saturate(value)
  %978 = call float @dx.op.unary.f32(i32 7, float %975)  ; Saturate(value)
  %979 = call float @dx.op.unary.f32(i32 7, float %976)  ; Saturate(value)
  %980 = fmul fast float %970, %721
  %981 = fmul fast float %970, %722
  %982 = fmul fast float %970, %723
  %983 = fadd fast float %980, %971
  %984 = fadd fast float %981, %971
  %985 = fadd fast float %982, %971
  %986 = call float @dx.op.unary.f32(i32 7, float %983)  ; Saturate(value)
  %987 = call float @dx.op.unary.f32(i32 7, float %984)  ; Saturate(value)
  %988 = call float @dx.op.unary.f32(i32 7, float %985)  ; Saturate(value)
  %989 = call float @dx.op.unary.f32(i32 7, float %821)  ; Saturate(value)
  %990 = call float @dx.op.dot3.f32(i32 55, float %977, float %978, float %979, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %991 = add i32 %31, 32
  %992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %991, i32 undef)  ; BufferLoad(srv,index,wot)
  %993 = extractvalue %dx.types.ResRet.i32 %992, 0
  %994 = and i32 %993, 255
  %995 = uitofp i32 %994 to float
  %996 = lshr i32 %993, 8
  %997 = and i32 %996, 255
  %998 = uitofp i32 %997 to float
  %999 = fmul fast float %998, %990
  %1000 = fadd fast float %999, %995
  %1001 = fmul fast float %1000, 0x3F70101020000000
  %1002 = call float @dx.op.unary.f32(i32 7, float %1001)  ; Saturate(value)
  %1003 = and i32 %154, 8192
  %1004 = icmp eq i32 %1003, 0
  %1005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1006 = extractvalue %dx.types.CBufRet.f32 %1005, 0
  br i1 %1004, label %1013, label %1007, !dx.controlflow.hints !78

; <label>:1007                                    ; preds = %920
  %1008 = add i32 %151, 176
  %1009 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1008, i32 undef)  ; BufferLoad(srv,index,wot)
  %1010 = extractvalue %dx.types.ResRet.f32 %1009, 0
  %1011 = fcmp fast oge float %1010, 0.000000e+00
  %1012 = select i1 %1011, float %1010, float %1006
  br label %1013

; <label>:1013                                    ; preds = %1007, %920
  %1014 = phi float [ %1012, %1007 ], [ %1006, %920 ]
  %1015 = fsub fast float 1.000000e+00, %884
  %1016 = fmul fast float %1015, %630
  %1017 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %257, i32 %258, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1018 = extractvalue %dx.types.ResRet.i32 %1017, 0
  %1019 = lshr i32 %1018, 18
  %1020 = uitofp i32 %1019 to float
  %1021 = fmul fast float %1020, 0x3F4C00EBA0000000
  %1022 = call float @dx.op.unary.f32(i32 21, float %1021)  ; Exp(value)
  %1023 = fadd fast float %1022, -1.000000e+00
  %1024 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %1025 = extractvalue %dx.types.Dimensions %1024, 0
  %1026 = sitofp i32 %1025 to float
  %1027 = extractvalue %dx.types.Dimensions %1024, 1
  %1028 = sitofp i32 %1027 to float
  %1029 = fcmp fast oge float %255, %1026
  %1030 = fcmp fast oge float %256, %1028
  %1031 = or i1 %1029, %1030
  %1032 = select i1 %1031, float 0x4197782600000000, float %1023
  %1033 = icmp eq i32 %150, 3
  %1034 = fcmp fast ogt float %57, %1032
  %1035 = and i1 %281, %1034
  %1036 = or i1 %1033, %1035
  %1037 = icmp eq i32 %150, 2
  %1038 = fcmp fast ole float %57, %1032
  %1039 = and i1 %1037, %1038
  %1040 = or i1 %1039, %1036
  %1041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %1042 = extractvalue %dx.types.CBufRet.f32 %1041, 3
  %1043 = fcmp fast ogt float %1042, 0.000000e+00
  br i1 %1043, label %1044, label %1051

; <label>:1044                                    ; preds = %1013
  %1045 = fmul fast float %958, 0xBFDF454380000000
  %1046 = fmul fast float %959, 0x3FDF454380000000
  %1047 = fmul fast float %957, 0xBFDF454380000000
  %1048 = call float @dx.op.dot4.f32(i32 56, float %935, float %934, float %933, float %932, float 0x3FD20DD760000000, float %1045, float %1046, float %1047)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1049 = call float @dx.op.dot4.f32(i32 56, float %925, float %926, float %927, float %928, float 0x3FD20DD760000000, float %1045, float %1046, float %1047)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1050 = call float @dx.op.dot4.f32(i32 56, float %921, float %922, float %923, float %924, float 0x3FD20DD760000000, float %1045, float %1046, float %1047)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %1051

; <label>:1051                                    ; preds = %1044, %1013
  %1052 = phi float [ %1048, %1044 ], [ %935, %1013 ]
  %1053 = phi float [ %1049, %1044 ], [ %934, %1013 ]
  %1054 = phi float [ %1050, %1044 ], [ %933, %1013 ]
  %1055 = call float @dx.op.dot3.f32(i32 55, float %957, float %958, float %959, float %965, float %966, float %967)  ; Dot3(ax,ay,az,bx,by,bz)
  %1056 = call float @dx.op.unary.f32(i32 7, float %1055)  ; Saturate(value)
  br i1 %1043, label %1057, label %1157

; <label>:1057                                    ; preds = %1051
  %1058 = fsub fast float -0.000000e+00, %924
  %1059 = fsub fast float %1058, %928
  %1060 = fsub fast float %1059, %932
  %1061 = fsub fast float -0.000000e+00, %922
  %1062 = fsub fast float %1061, %926
  %1063 = fsub fast float %1062, %934
  %1064 = fadd fast float %927, %923
  %1065 = fadd fast float %1064, %933
  %1066 = call float @dx.op.dot3.f32(i32 55, float %1060, float %1063, float %1065, float %1060, float %1063, float %1065)  ; Dot3(ax,ay,az,bx,by,bz)
  %1067 = call float @dx.op.unary.f32(i32 25, float %1066)  ; Rsqrt(value)
  %1068 = fmul fast float %1067, %1060
  %1069 = fmul fast float %1067, %1063
  %1070 = fmul fast float %1067, %1065
  %1071 = fmul fast float %1069, 0xBFD4D8D7C0000000
  %1072 = fmul fast float %1070, 0x3FD4D8D7C0000000
  %1073 = fmul fast float %1068, 0xBFD4D8D7C0000000
  %1074 = call float @dx.op.dot4.f32(i32 56, float %935, float %934, float %933, float %932, float 0x3FD20DD760000000, float %1071, float %1072, float %1073)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1075 = call float @dx.op.dot4.f32(i32 56, float %925, float %926, float %927, float %928, float 0x3FD20DD760000000, float %1071, float %1072, float %1073)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1076 = call float @dx.op.dot4.f32(i32 56, float %921, float %922, float %923, float %924, float 0x3FD20DD760000000, float %1071, float %1072, float %1073)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1077 = fmul fast float %1074, 0x4003333340000000
  %1078 = fmul fast float %935, 0x3FE5AA35A0000000
  %1079 = fsub fast float %1077, %1078
  %1080 = fmul fast float %1075, 0x4003333340000000
  %1081 = fmul fast float %925, 0x3FE5AA35A0000000
  %1082 = fsub fast float %1080, %1081
  %1083 = fmul fast float %1076, 0x4003333340000000
  %1084 = fmul fast float %921, 0x3FE5AA35A0000000
  %1085 = fsub fast float %1083, %1084
  %1086 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1079)  ; FMax(a,b)
  %1087 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1082)  ; FMax(a,b)
  %1088 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1085)  ; FMax(a,b)
  %1089 = fsub fast float %1068, %962
  %1090 = fsub fast float %1069, %963
  %1091 = fsub fast float %1070, %964
  %1092 = call float @dx.op.dot3.f32(i32 55, float %1089, float %1090, float %1091, float %1089, float %1090, float %1091)  ; Dot3(ax,ay,az,bx,by,bz)
  %1093 = call float @dx.op.unary.f32(i32 25, float %1092)  ; Rsqrt(value)
  %1094 = fmul fast float %1093, %1089
  %1095 = fmul fast float %1093, %1090
  %1096 = fmul fast float %1093, %1091
  %1097 = call float @dx.op.dot3.f32(i32 55, float %957, float %958, float %959, float %1068, float %1069, float %1070)  ; Dot3(ax,ay,az,bx,by,bz)
  %1098 = call float @dx.op.unary.f32(i32 6, float %1097)  ; FAbs(value)
  %1099 = call float @dx.op.dot3.f32(i32 55, float %957, float %958, float %959, float %1094, float %1095, float %1096)  ; Dot3(ax,ay,az,bx,by,bz)
  %1100 = fmul fast float %1099, %1099
  %1101 = call float @dx.op.dot3.f32(i32 55, float %965, float %966, float %967, float %1094, float %1095, float %1096)  ; Dot3(ax,ay,az,bx,by,bz)
  %1102 = call float @dx.op.unary.f32(i32 6, float %1101)  ; FAbs(value)
  %1103 = fsub fast float 1.000000e+00, %989
  %1104 = call float @dx.op.binary.f32(i32 35, float %1103, float 0x3F847AE140000000)  ; FMax(a,b)
  %1105 = fmul fast float %1104, %1104
  %1106 = fmul fast float %1105, %1105
  %1107 = fsub fast float 1.000000e+00, %1106
  %1108 = fmul fast float %1056, %1056
  %1109 = fmul fast float %1108, %1107
  %1110 = fadd fast float %1109, %1106
  %1111 = bitcast float %1110 to i32
  %1112 = ashr i32 %1111, 1
  %1113 = add nsw i32 %1112, 532487669
  %1114 = bitcast i32 %1113 to float
  %1115 = fadd fast float %1114, %1056
  %1116 = fmul fast float %1106, %1100
  %1117 = fsub fast float 1.000000e+00, %1100
  %1118 = fadd fast float %1117, %1116
  %1119 = fmul fast float %1098, %1098
  %1120 = fmul fast float %1119, %1107
  %1121 = fadd fast float %1120, %1106
  %1122 = bitcast float %1121 to i32
  %1123 = ashr i32 %1122, 1
  %1124 = add nsw i32 %1123, 532487669
  %1125 = bitcast i32 %1124 to float
  %1126 = fadd fast float %1125, %1098
  %1127 = fmul fast float %1118, %1118
  %1128 = fmul fast float %1127, %1115
  %1129 = fmul fast float %1128, %1126
  %1130 = fdiv fast float 1.000000e+00, %1129
  %1131 = fmul fast float %1106, %1130
  %1132 = fsub fast float 1.000000e+00, %1102
  %1133 = bitcast float %1132 to i32
  %1134 = sitofp i32 %1133 to float
  %1135 = fmul fast float %1134, 5.000000e+00
  %1136 = fadd fast float %1135, 0xC1EFBF8940000000
  %1137 = fptosi float %1136 to i32
  %1138 = bitcast i32 %1137 to float
  %1139 = fsub fast float 1.000000e+00, %986
  %1140 = fsub fast float 1.000000e+00, %987
  %1141 = fsub fast float 1.000000e+00, %988
  %1142 = fmul fast float %1138, %1139
  %1143 = fmul fast float %1138, %1140
  %1144 = fmul fast float %1138, %1141
  %1145 = fadd fast float %1142, %986
  %1146 = fadd fast float %1143, %987
  %1147 = fadd fast float %1144, %988
  %1148 = fmul fast float %1131, %1086
  %1149 = fmul fast float %1148, %1145
  %1150 = fmul fast float %1131, %1087
  %1151 = fmul fast float %1150, %1146
  %1152 = fmul fast float %1131, %1088
  %1153 = fmul fast float %1152, %1147
  %1154 = call float @dx.op.binary.f32(i32 35, float %1149, float 0.000000e+00)  ; FMax(a,b)
  %1155 = call float @dx.op.binary.f32(i32 35, float %1151, float 0.000000e+00)  ; FMax(a,b)
  %1156 = call float @dx.op.binary.f32(i32 35, float %1153, float 0.000000e+00)  ; FMax(a,b)
  br label %1157

; <label>:1157                                    ; preds = %1057, %1051
  %1158 = phi float [ %1154, %1057 ], [ 0.000000e+00, %1051 ]
  %1159 = phi float [ %1155, %1057 ], [ 0.000000e+00, %1051 ]
  %1160 = phi float [ %1156, %1057 ], [ 0.000000e+00, %1051 ]
  %1161 = fmul fast float %1056, 9.843750e-01
  %1162 = fmul fast float %989, 9.843750e-01
  %1163 = fadd fast float %1161, 7.812500e-03
  %1164 = fadd fast float %1162, 7.812500e-03
  %1165 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %26, float %1163, float %1164, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1166 = extractvalue %dx.types.ResRet.f32 %1165, 2
  %1167 = extractvalue %dx.types.ResRet.f32 %1165, 3
  %1168 = fmul fast float %1166, %986
  %1169 = fmul fast float %1166, %987
  %1170 = fmul fast float %1166, %988
  %1171 = fadd fast float %1168, %1167
  %1172 = fadd fast float %1169, %1167
  %1173 = fadd fast float %1170, %1167
  %1174 = call float @dx.op.binary.f32(i32 35, float %1172, float %1173)  ; FMax(a,b)
  %1175 = call float @dx.op.binary.f32(i32 35, float %1171, float %1174)  ; FMax(a,b)
  %1176 = fsub fast float 1.000000e+00, %1175
  %1177 = call float @dx.op.dot3.f32(i32 55, float %962, float %963, float %964, float %957, float %958, float %959)  ; Dot3(ax,ay,az,bx,by,bz)
  %1178 = fmul fast float %1177, 2.000000e+00
  %1179 = fmul fast float %1178, %957
  %1180 = fmul fast float %1178, %958
  %1181 = fmul fast float %1178, %959
  %1182 = fsub fast float %962, %1179
  %1183 = fsub fast float %963, %1180
  %1184 = fsub fast float %964, %1181
  br i1 %1043, label %1185, label %1192

; <label>:1185                                    ; preds = %1157
  %1186 = fmul fast float %1183, 0xBFDF454380000000
  %1187 = fmul fast float %1184, 0x3FDF454380000000
  %1188 = fmul fast float %1182, 0xBFDF454380000000
  %1189 = call float @dx.op.dot4.f32(i32 56, float %935, float %934, float %933, float %932, float 0x3FD20DD760000000, float %1186, float %1187, float %1188)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1190 = call float @dx.op.dot4.f32(i32 56, float %925, float %926, float %927, float %928, float 0x3FD20DD760000000, float %1186, float %1187, float %1188)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1191 = call float @dx.op.dot4.f32(i32 56, float %921, float %922, float %923, float %924, float 0x3FD20DD760000000, float %1186, float %1187, float %1188)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %1192

; <label>:1192                                    ; preds = %1185, %1157
  %1193 = phi float [ %1189, %1185 ], [ %935, %1157 ]
  %1194 = phi float [ %1190, %1185 ], [ %934, %1157 ]
  %1195 = phi float [ %1191, %1185 ], [ %933, %1157 ]
  %1196 = call float @dx.op.dot3.f32(i32 55, float %1193, float %1194, float %1195, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %1198 = extractvalue %dx.types.CBufRet.f32 %1197, 2
  %1199 = extractvalue %dx.types.CBufRet.f32 %1197, 3
  %1200 = fmul fast float %1198, %64
  %1201 = fmul fast float %1199, %65
  %1202 = fptoui float %1200 to i32
  %1203 = fptoui float %1201 to i32
  %1204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1205 = extractvalue %dx.types.CBufRet.f32 %1204, 0
  %1206 = extractvalue %dx.types.CBufRet.f32 %1204, 2
  %1207 = extractvalue %dx.types.CBufRet.f32 %1204, 3
  %1208 = fadd fast float %57, -4.000000e+00
  %1209 = call float @dx.op.binary.f32(i32 35, float %1208, float 0.000000e+00)  ; FMax(a,b)
  %1210 = fadd fast float %1209, %1205
  %1211 = fmul fast float %1210, %1206
  %1212 = call float @dx.op.unary.f32(i32 23, float %1211)  ; Log(value)
  %1213 = fmul fast float %1212, %1207
  %1214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1215 = extractvalue %dx.types.CBufRet.f32 %1214, 2
  %1216 = fmul fast float %1213, %1215
  %1217 = call float @dx.op.unary.f32(i32 7, float %1216)  ; Saturate(value)
  %1218 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1219 = extractvalue %dx.types.CBufRet.i32 %1218, 1
  %1220 = add i32 %1219, -1
  %1221 = uitofp i32 %1219 to float
  %1222 = fmul fast float %1221, %1217
  %1223 = fptoui float %1222 to i32
  %1224 = call i32 @dx.op.binary.i32(i32 40, i32 %1223, i32 %1220)  ; UMin(a,b)
  %1225 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %1226 = extractvalue %dx.types.CBufRet.i32 %1225, 2
  %1227 = extractvalue %dx.types.CBufRet.i32 %1225, 3
  %1228 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1203, i32 %1226, i32 %1202)  ; UMad(a,b,c)
  %1229 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1224, i32 %1227, i32 %1228)  ; UMad(a,b,c)
  %1230 = call float @dx.op.binary.f32(i32 35, float %57, float 0.000000e+00)  ; FMax(a,b)
  %1231 = fptoui float %1230 to i32
  %1232 = lshr i32 %1231, 5
  %1233 = call i32 @dx.op.binary.i32(i32 40, i32 %1232, i32 8191)  ; UMin(a,b)
  %1234 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1235 = extractvalue %dx.types.CBufRet.i32 %1234, 2
  %1236 = add nsw i32 %1235, -1
  %1237 = call i32 @dx.op.binary.i32(i32 37, i32 %1236, i32 0)  ; IMax(a,b)
  %1238 = shl i32 %1233, 2
  %1239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1238, i32 undef)  ; BufferLoad(srv,index,wot)
  %1240 = extractvalue %dx.types.ResRet.i32 %1239, 0
  %1241 = lshr i32 %1240, 16
  %1242 = and i32 %1240, 65535
  %1243 = lshr i32 %1240, 21
  %1244 = lshr i32 %1242, 5
  %1245 = call i32 @dx.op.binary.i32(i32 40, i32 %1244, i32 %1237)  ; UMin(a,b)
  %1246 = icmp ugt i32 %1243, %1245
  br i1 %1246, label %1609, label %1247

; <label>:1247                                    ; preds = %1192
  br label %1248

; <label>:1248                                    ; preds = %1601, %1247
  %1249 = phi float [ %1602, %1601 ], [ 0.000000e+00, %1247 ]
  %1250 = phi float [ %1603, %1601 ], [ 0.000000e+00, %1247 ]
  %1251 = phi float [ %1604, %1601 ], [ 0.000000e+00, %1247 ]
  %1252 = phi float [ %1605, %1601 ], [ 1.000000e+00, %1247 ]
  %1253 = phi i32 [ %1606, %1601 ], [ %1243, %1247 ]
  %1254 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1255 = extractvalue %dx.types.CBufRet.i32 %1254, 2
  %1256 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1229, i32 %1255, i32 %1253)  ; UMad(a,b,c)
  %1257 = shl i32 %1256, 2
  %1258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1259 = extractvalue %dx.types.ResRet.i32 %1258, 0
  %1260 = shl i32 %1253, 5
  %1261 = sub nsw i32 %1241, %1260
  %1262 = call i32 @dx.op.binary.i32(i32 37, i32 %1261, i32 0)  ; IMax(a,b)
  %1263 = call i32 @dx.op.binary.i32(i32 38, i32 %1262, i32 31)  ; IMin(a,b)
  %1264 = sub nsw i32 1, %1241
  %1265 = add nsw i32 %1264, %1242
  %1266 = call i32 @dx.op.binary.i32(i32 37, i32 %1265, i32 0)  ; IMax(a,b)
  %1267 = call i32 @dx.op.binary.i32(i32 38, i32 %1266, i32 32)  ; IMin(a,b)
  %1268 = and i32 %1267, 31
  %1269 = shl i32 -1, %1268
  %1270 = xor i32 %1269, -1
  %1271 = and i32 %1263, 31
  %1272 = shl i32 %1270, %1271
  %1273 = icmp eq i32 %1267, 32
  %1274 = select i1 %1273, i32 -1, i32 %1272
  %1275 = and i32 %1274, %1259
  %1276 = icmp eq i32 %1275, 0
  br i1 %1276, label %1601, label %1277

; <label>:1277                                    ; preds = %1248
  br label %1278

; <label>:1278                                    ; preds = %1384, %1277
  %1279 = phi float [ %1385, %1384 ], [ %1249, %1277 ]
  %1280 = phi float [ %1386, %1384 ], [ %1250, %1277 ]
  %1281 = phi float [ %1387, %1384 ], [ %1251, %1277 ]
  %1282 = phi float [ %1388, %1384 ], [ %1252, %1277 ]
  %1283 = phi i32 [ %1288, %1384 ], [ %1275, %1277 ]
  %1284 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1283)  ; FirstbitLo(value)
  %1285 = add i32 %1284, %1260
  %1286 = and i32 %1284, 31
  %1287 = shl i32 1, %1286
  %1288 = xor i32 %1287, %1283
  %1289 = mul i32 %1285, 72
  %1290 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1289, i32 undef)  ; BufferLoad(srv,index,wot)
  %1291 = extractvalue %dx.types.ResRet.f32 %1290, 0
  %1292 = extractvalue %dx.types.ResRet.f32 %1290, 1
  %1293 = extractvalue %dx.types.ResRet.f32 %1290, 2
  %1294 = add i32 %1289, 12
  %1295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1294, i32 undef)  ; BufferLoad(srv,index,wot)
  %1296 = extractvalue %dx.types.ResRet.i32 %1295, 0
  %1297 = add i32 %1289, 16
  %1298 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1297, i32 undef)  ; BufferLoad(srv,index,wot)
  %1299 = extractvalue %dx.types.ResRet.f32 %1298, 0
  %1300 = extractvalue %dx.types.ResRet.f32 %1298, 1
  %1301 = extractvalue %dx.types.ResRet.f32 %1298, 2
  %1302 = add i32 %1289, 28
  %1303 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1302, i32 undef)  ; BufferLoad(srv,index,wot)
  %1304 = extractvalue %dx.types.ResRet.f32 %1303, 0
  %1305 = add i32 %1289, 32
  %1306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1305, i32 undef)  ; BufferLoad(srv,index,wot)
  %1307 = extractvalue %dx.types.ResRet.f32 %1306, 0
  %1308 = extractvalue %dx.types.ResRet.f32 %1306, 1
  %1309 = extractvalue %dx.types.ResRet.f32 %1306, 2
  %1310 = extractvalue %dx.types.ResRet.f32 %1306, 3
  %1311 = add i32 %1289, 48
  %1312 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1311, i32 undef)  ; BufferLoad(srv,index,wot)
  %1313 = extractvalue %dx.types.ResRet.f32 %1312, 0
  %1314 = extractvalue %dx.types.ResRet.f32 %1312, 1
  %1315 = add i32 %1289, 56
  %1316 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1315, i32 undef)  ; BufferLoad(srv,index,wot)
  %1317 = extractvalue %dx.types.ResRet.f32 %1316, 0
  %1318 = extractvalue %dx.types.ResRet.f32 %1316, 1
  %1319 = add i32 %1289, 64
  %1320 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1319, i32 undef)  ; BufferLoad(srv,index,wot)
  %1321 = extractvalue %dx.types.ResRet.f32 %1320, 0
  %1322 = extractvalue %dx.types.ResRet.f32 %1320, 1
  %1323 = mul i32 %1285, 60
  %1324 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1325 = extractvalue %dx.types.ResRet.f32 %1324, 0
  %1326 = extractvalue %dx.types.ResRet.f32 %1324, 1
  %1327 = extractvalue %dx.types.ResRet.f32 %1324, 2
  %1328 = add i32 %1323, 12
  %1329 = add i32 %1323, 48
  %1330 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1329, i32 undef)  ; BufferLoad(srv,index,wot)
  %1331 = extractvalue %dx.types.ResRet.f32 %1330, 0
  %1332 = extractvalue %dx.types.ResRet.f32 %1330, 1
  %1333 = extractvalue %dx.types.ResRet.f32 %1330, 2
  %1334 = and i32 %1296, 32767
  %1335 = bitcast float %1291 to i32
  %1336 = icmp eq i32 %1335, -1
  %1337 = bitcast float %1292 to i32
  %1338 = and i32 %1296, 32768
  %1339 = icmp ne i32 %1338, 0
  %1340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1341 = extractvalue %dx.types.CBufRet.f32 %1340, 0
  %1342 = extractvalue %dx.types.CBufRet.f32 %1340, 1
  %1343 = extractvalue %dx.types.CBufRet.f32 %1340, 2
  %1344 = fsub fast float %1325, %1341
  %1345 = fsub fast float %1326, %1342
  %1346 = fsub fast float %1327, %1343
  %1347 = fsub fast float %99, %1344
  %1348 = fsub fast float %100, %1345
  %1349 = fsub fast float %101, %1346
  %1350 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1328, i32 undef)  ; BufferLoad(srv,index,wot)
  %1351 = extractvalue %dx.types.ResRet.f32 %1350, 0
  %1352 = extractvalue %dx.types.ResRet.f32 %1350, 1
  %1353 = extractvalue %dx.types.ResRet.f32 %1350, 2
  %1354 = call float @dx.op.dot3.f32(i32 55, float %1347, float %1348, float %1349, float %1351, float %1352, float %1353)  ; Dot3(ax,ay,az,bx,by,bz)
  %1355 = add i32 %1323, 24
  %1356 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1355, i32 undef)  ; BufferLoad(srv,index,wot)
  %1357 = extractvalue %dx.types.ResRet.f32 %1356, 0
  %1358 = extractvalue %dx.types.ResRet.f32 %1356, 1
  %1359 = extractvalue %dx.types.ResRet.f32 %1356, 2
  %1360 = call float @dx.op.dot3.f32(i32 55, float %1347, float %1348, float %1349, float %1357, float %1358, float %1359)  ; Dot3(ax,ay,az,bx,by,bz)
  %1361 = add i32 %1323, 36
  %1362 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1361, i32 undef)  ; BufferLoad(srv,index,wot)
  %1363 = extractvalue %dx.types.ResRet.f32 %1362, 0
  %1364 = extractvalue %dx.types.ResRet.f32 %1362, 1
  %1365 = extractvalue %dx.types.ResRet.f32 %1362, 2
  %1366 = call float @dx.op.dot3.f32(i32 55, float %1347, float %1348, float %1349, float %1363, float %1364, float %1365)  ; Dot3(ax,ay,az,bx,by,bz)
  %1367 = call float @dx.op.unary.f32(i32 6, float %1354)  ; FAbs(value)
  %1368 = call float @dx.op.unary.f32(i32 6, float %1360)  ; FAbs(value)
  %1369 = call float @dx.op.unary.f32(i32 6, float %1366)  ; FAbs(value)
  %1370 = fsub fast float %1331, %1367
  %1371 = fsub fast float %1332, %1368
  %1372 = fsub fast float %1333, %1369
  %1373 = fmul fast float %1370, %1299
  %1374 = fmul fast float %1371, %1300
  %1375 = fmul fast float %1372, %1301
  %1376 = call float @dx.op.binary.f32(i32 36, float %1374, float %1375)  ; FMin(a,b)
  %1377 = call float @dx.op.binary.f32(i32 36, float %1373, float %1376)  ; FMin(a,b)
  %1378 = call float @dx.op.unary.f32(i32 7, float %1377)  ; Saturate(value)
  %1379 = call float @dx.op.binary.f32(i32 36, float %1282, float %1378)  ; FMin(a,b)
  %1380 = uitofp i1 %1339 to float
  %1381 = fsub fast float 1.000000e+00, %1380
  %1382 = fmul fast float %1379, %1381
  %1383 = fcmp fast ogt float %1382, 0.000000e+00
  br i1 %1383, label %1390, label %1384

; <label>:1384                                    ; preds = %1532, %1278
  %1385 = phi float [ %1596, %1532 ], [ %1279, %1278 ]
  %1386 = phi float [ %1597, %1532 ], [ %1280, %1278 ]
  %1387 = phi float [ %1598, %1532 ], [ %1281, %1278 ]
  %1388 = phi float [ %1599, %1532 ], [ %1282, %1278 ]
  %1389 = icmp eq i32 %1283, %1287
  br i1 %1389, label %1600, label %1278

; <label>:1390                                    ; preds = %1278
  br i1 %1336, label %1448, label %1391

; <label>:1391                                    ; preds = %1390
  %1392 = fsub fast float -0.000000e+00, %1351
  %1393 = fsub fast float -0.000000e+00, %1352
  %1394 = fsub fast float -0.000000e+00, %1353
  %1395 = call float @dx.op.dot3.f32(i32 55, float %1182, float %1183, float %1184, float %1392, float %1393, float %1394)  ; Dot3(ax,ay,az,bx,by,bz)
  %1396 = fsub fast float -0.000000e+00, %1395
  %1397 = call float @dx.op.dot3.f32(i32 55, float %1347, float %1348, float %1349, float %1392, float %1393, float %1394)  ; Dot3(ax,ay,az,bx,by,bz)
  %1398 = fadd fast float %1397, %1314
  %1399 = fadd fast float %1313, %1397
  %1400 = fsub fast float -0.000000e+00, %1399
  %1401 = fcmp ogt float %1395, -0.000000e+00
  %1402 = select i1 %1401, float %1400, float %1398
  %1403 = call float @dx.op.unary.f32(i32 6, float %1396)  ; FAbs(value)
  %1404 = fdiv fast float 1.000000e+00, %1403
  %1405 = fmul fast float %1402, %1404
  %1406 = call float @dx.op.binary.f32(i32 35, float %1405, float 0.000000e+00)  ; FMax(a,b)
  %1407 = fsub fast float -0.000000e+00, %1357
  %1408 = fsub fast float -0.000000e+00, %1358
  %1409 = fsub fast float -0.000000e+00, %1359
  %1410 = call float @dx.op.dot3.f32(i32 55, float %1182, float %1183, float %1184, float %1407, float %1408, float %1409)  ; Dot3(ax,ay,az,bx,by,bz)
  %1411 = fsub fast float -0.000000e+00, %1410
  %1412 = call float @dx.op.dot3.f32(i32 55, float %1347, float %1348, float %1349, float %1407, float %1408, float %1409)  ; Dot3(ax,ay,az,bx,by,bz)
  %1413 = fadd fast float %1412, %1318
  %1414 = fadd fast float %1317, %1412
  %1415 = fsub fast float -0.000000e+00, %1414
  %1416 = fcmp ogt float %1410, -0.000000e+00
  %1417 = select i1 %1416, float %1415, float %1413
  %1418 = call float @dx.op.unary.f32(i32 6, float %1411)  ; FAbs(value)
  %1419 = fdiv fast float 1.000000e+00, %1418
  %1420 = fmul fast float %1417, %1419
  %1421 = call float @dx.op.binary.f32(i32 35, float %1420, float 0.000000e+00)  ; FMax(a,b)
  %1422 = fsub fast float -0.000000e+00, %1363
  %1423 = fsub fast float -0.000000e+00, %1364
  %1424 = fsub fast float -0.000000e+00, %1365
  %1425 = call float @dx.op.dot3.f32(i32 55, float %1182, float %1183, float %1184, float %1422, float %1423, float %1424)  ; Dot3(ax,ay,az,bx,by,bz)
  %1426 = fsub fast float -0.000000e+00, %1425
  %1427 = call float @dx.op.dot3.f32(i32 55, float %1347, float %1348, float %1349, float %1422, float %1423, float %1424)  ; Dot3(ax,ay,az,bx,by,bz)
  %1428 = fadd fast float %1427, %1322
  %1429 = fadd fast float %1321, %1427
  %1430 = fsub fast float -0.000000e+00, %1429
  %1431 = fcmp ogt float %1425, -0.000000e+00
  %1432 = select i1 %1431, float %1430, float %1428
  %1433 = call float @dx.op.unary.f32(i32 6, float %1426)  ; FAbs(value)
  %1434 = fdiv fast float 1.000000e+00, %1433
  %1435 = fmul fast float %1432, %1434
  %1436 = call float @dx.op.binary.f32(i32 35, float %1435, float 0.000000e+00)  ; FMax(a,b)
  %1437 = call float @dx.op.binary.f32(i32 36, float %1421, float %1436)  ; FMin(a,b)
  %1438 = call float @dx.op.binary.f32(i32 36, float %1406, float %1437)  ; FMin(a,b)
  %1439 = fmul fast float %1438, %1182
  %1440 = fmul fast float %1438, %1183
  %1441 = fmul fast float %1438, %1184
  %1442 = fadd fast float %1439, %99
  %1443 = fadd fast float %1440, %100
  %1444 = fadd fast float %1441, %101
  %1445 = fsub fast float %1442, %1291
  %1446 = fsub fast float %1443, %1292
  %1447 = fsub fast float %1444, %1293
  br label %1455

; <label>:1448                                    ; preds = %1390
  %1449 = fmul fast float %1182, 8.096000e+03
  %1450 = fmul fast float %1183, 8.096000e+03
  %1451 = fmul fast float %1184, 8.096000e+03
  %1452 = fadd fast float %1449, %99
  %1453 = fadd fast float %1450, %100
  %1454 = fadd fast float %1451, %101
  br label %1455

; <label>:1455                                    ; preds = %1448, %1391
  %1456 = phi float [ %1182, %1448 ], [ %1445, %1391 ]
  %1457 = phi float [ %1183, %1448 ], [ %1446, %1391 ]
  %1458 = phi float [ %1184, %1448 ], [ %1447, %1391 ]
  %1459 = phi float [ %1452, %1448 ], [ %1442, %1391 ]
  %1460 = phi float [ %1453, %1448 ], [ %1443, %1391 ]
  %1461 = phi float [ %1454, %1448 ], [ %1444, %1391 ]
  %1462 = fcmp fast olt float %1310, 1.000000e+00
  br i1 %1462, label %1463, label %1494, !dx.controlflow.hints !79

; <label>:1463                                    ; preds = %1455
  %1464 = fmul fast float %1458, %1308
  %1465 = fmul fast float %1457, %1309
  %1466 = fsub fast float %1464, %1465
  %1467 = fmul fast float %1456, %1309
  %1468 = fmul fast float %1458, %1307
  %1469 = fsub fast float %1467, %1468
  %1470 = fmul fast float %1457, %1307
  %1471 = fmul fast float %1456, %1308
  %1472 = fsub fast float %1470, %1471
  %1473 = fmul fast float %1466, 2.000000e+00
  %1474 = fmul fast float %1469, 2.000000e+00
  %1475 = fmul fast float %1472, 2.000000e+00
  %1476 = fmul fast float %1473, %1310
  %1477 = fmul fast float %1474, %1310
  %1478 = fmul fast float %1475, %1310
  %1479 = fmul fast float %1475, %1308
  %1480 = fmul fast float %1474, %1309
  %1481 = fmul fast float %1473, %1309
  %1482 = fmul fast float %1475, %1307
  %1483 = fmul fast float %1474, %1307
  %1484 = fmul fast float %1473, %1308
  %1485 = fadd fast float %1479, %1456
  %1486 = fadd fast float %1485, %1476
  %1487 = fsub fast float %1486, %1480
  %1488 = fsub fast float %1457, %1482
  %1489 = fadd fast float %1488, %1477
  %1490 = fadd fast float %1489, %1481
  %1491 = fadd fast float %1478, %1458
  %1492 = fsub fast float %1491, %1484
  %1493 = fadd fast float %1492, %1483
  br label %1494

; <label>:1494                                    ; preds = %1463, %1455
  %1495 = phi float [ %1487, %1463 ], [ %1456, %1455 ]
  %1496 = phi float [ %1490, %1463 ], [ %1457, %1455 ]
  %1497 = phi float [ %1493, %1463 ], [ %1458, %1455 ]
  br i1 %1336, label %1529, label %1498

; <label>:1498                                    ; preds = %1494
  %1499 = fmul fast float %989, 0x400187C840000000
  %1500 = fadd fast float %1499, 0xC00EFC2120000000
  %1501 = fmul fast float %1500, %989
  %1502 = fadd fast float %1501, 0x3FE5D16340000000
  %1503 = fmul fast float %1502, %989
  %1504 = fadd fast float %1503, 1.000000e+00
  %1505 = call float @dx.op.unary.f32(i32 7, float %1504)  ; Saturate(value)
  %1506 = fsub fast float %1459, %99
  %1507 = fsub fast float %1460, %100
  %1508 = fsub fast float %1461, %101
  %1509 = fsub fast float %1459, %1291
  %1510 = fsub fast float %1460, %1292
  %1511 = fsub fast float %1461, %1293
  %1512 = call float @dx.op.dot3.f32(i32 55, float %1506, float %1507, float %1508, float %1506, float %1507, float %1508)  ; Dot3(ax,ay,az,bx,by,bz)
  %1513 = call float @dx.op.dot3.f32(i32 55, float %1509, float %1510, float %1511, float %1509, float %1510, float %1511)  ; Dot3(ax,ay,az,bx,by,bz)
  %1514 = fadd fast float %1513, 0x3EE4F8B580000000
  %1515 = fdiv fast float %1512, %1514
  %1516 = bitcast float %1515 to i32
  %1517 = ashr i32 %1516, 1
  %1518 = add nsw i32 %1517, 532487669
  %1519 = bitcast i32 %1518 to float
  %1520 = fmul fast float %1519, %1505
  %1521 = call float @dx.op.unary.f32(i32 7, float %1520)  ; Saturate(value)
  %1522 = fmul fast float %1521, 0x4009981AE0000000
  %1523 = fsub fast float 0x40111BBD80000000, %1522
  %1524 = fmul fast float %1523, %1521
  %1525 = fadd fast float %1524, 0xC0009F6020000000
  %1526 = fmul fast float %1525, %1521
  %1527 = fadd fast float %1526, 1.000000e+00
  %1528 = call float @dx.op.unary.f32(i32 7, float %1527)  ; Saturate(value)
  br label %1532

; <label>:1529                                    ; preds = %1494
  %1530 = icmp ne i32 %1337, -1
  %1531 = zext i1 %1530 to i32
  br label %1532

; <label>:1532                                    ; preds = %1529, %1498
  %1533 = phi float [ %989, %1529 ], [ %1528, %1498 ]
  %1534 = phi i32 [ %1531, %1529 ], [ 0, %1498 ]
  %1535 = fmul float %1533, 5.000000e+00
  %1536 = fsub float 5.000000e+00, %1535
  %1537 = icmp ne i32 %1534, 0
  %1538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %1539 = extractvalue %dx.types.CBufRet.f32 %1538, 3
  %1540 = fadd fast float %1539, %1536
  %1541 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1540)  ; FMax(a,b)
  %1542 = call float @dx.op.unary.f32(i32 6, float %1495)  ; FAbs(value)
  %1543 = call float @dx.op.unary.f32(i32 6, float %1496)  ; FAbs(value)
  %1544 = fadd fast float %1543, %1542
  %1545 = call float @dx.op.unary.f32(i32 6, float %1497)  ; FAbs(value)
  %1546 = fadd fast float %1544, %1545
  %1547 = fcmp fast oeq float %1546, 0.000000e+00
  %1548 = fdiv fast float 1.000000e+00, %1546
  %1549 = select i1 %1547, float 1.000000e+00, float %1548
  %1550 = fmul fast float %1549, %1495
  %1551 = fmul fast float %1549, %1496
  %1552 = call float @dx.op.unary.f32(i32 6, float %1551)  ; FAbs(value)
  %1553 = call float @dx.op.unary.f32(i32 6, float %1550)  ; FAbs(value)
  %1554 = fsub fast float 1.000000e+00, %1552
  %1555 = fsub fast float 1.000000e+00, %1553
  %1556 = fcmp fast oge float %1550, 0.000000e+00
  %1557 = fcmp fast oge float %1551, 0.000000e+00
  %1558 = select i1 %1556, float 1.000000e+00, float -1.000000e+00
  %1559 = select i1 %1557, float 1.000000e+00, float -1.000000e+00
  %1560 = fcmp fast ole float %1497, 0.000000e+00
  %1561 = fmul fast float %1558, %1554
  %1562 = fmul fast float %1559, %1555
  %1563 = select i1 %1560, float %1561, float %1550
  %1564 = select i1 %1560, float %1562, float %1551
  %1565 = fmul fast float %1563, 5.000000e-01
  %1566 = fmul fast float %1564, 5.000000e-01
  %1567 = fadd fast float %1565, 5.000000e-01
  %1568 = fadd fast float %1566, 5.000000e-01
  %1569 = uitofp i32 %1334 to float
  %1570 = call float @dx.op.binary.f32(i32 36, float %1541, float 3.000000e+00)  ; FMin(a,b)
  %1571 = fadd fast float %1570, 2.000000e+00
  %1572 = call float @dx.op.unary.f32(i32 21, float %1571)  ; Exp(value)
  %1573 = extractvalue %dx.types.CBufRet.f32 %1538, 1
  %1574 = fmul fast float %1573, %1572
  %1575 = fmul fast float %1574, 2.000000e+00
  %1576 = fsub fast float 1.000000e+00, %1575
  %1577 = fmul fast float %1567, %1576
  %1578 = fmul fast float %1568, %1576
  %1579 = fadd fast float %1577, %1574
  %1580 = fadd fast float %1578, %1574
  %1581 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %25, float %1579, float %1580, float %1569, float undef, i32 0, i32 0, i32 undef, float %1541)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1582 = extractvalue %dx.types.ResRet.f32 %1581, 0
  %1583 = extractvalue %dx.types.ResRet.f32 %1581, 1
  %1584 = extractvalue %dx.types.ResRet.f32 %1581, 2
  %1585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1586 = extractvalue %dx.types.CBufRet.f32 %1585, 3
  %1587 = fmul fast float %1586, %1304
  %1588 = call float @dx.op.binary.f32(i32 36, float %1196, float %1587)  ; FMin(a,b)
  %1589 = select i1 %1537, float %1588, float %1587
  %1590 = fmul fast float %1582, %1382
  %1591 = fmul fast float %1590, %1589
  %1592 = fmul fast float %1583, %1382
  %1593 = fmul fast float %1592, %1589
  %1594 = fmul fast float %1584, %1382
  %1595 = fmul fast float %1594, %1589
  %1596 = fadd fast float %1591, %1279
  %1597 = fadd fast float %1593, %1280
  %1598 = fadd fast float %1595, %1281
  %1599 = fsub fast float %1282, %1382
  br label %1384

; <label>:1600                                    ; preds = %1384
  br label %1601

; <label>:1601                                    ; preds = %1600, %1248
  %1602 = phi float [ %1249, %1248 ], [ %1385, %1600 ]
  %1603 = phi float [ %1250, %1248 ], [ %1386, %1600 ]
  %1604 = phi float [ %1251, %1248 ], [ %1387, %1600 ]
  %1605 = phi float [ %1252, %1248 ], [ %1388, %1600 ]
  %1606 = add i32 %1253, 1
  %1607 = icmp ugt i32 %1606, %1245
  br i1 %1607, label %1608, label %1248, !llvm.loop !80

; <label>:1608                                    ; preds = %1601
  br label %1609

; <label>:1609                                    ; preds = %1608, %1192
  %1610 = phi float [ 0.000000e+00, %1192 ], [ %1602, %1608 ]
  %1611 = phi float [ 0.000000e+00, %1192 ], [ %1603, %1608 ]
  %1612 = phi float [ 0.000000e+00, %1192 ], [ %1604, %1608 ]
  %1613 = call float @dx.op.dot3.f32(i32 55, float %1610, float %1611, float %1612, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1614 = select i1 %134, float 0.000000e+00, float %1610
  %1615 = select i1 %134, float %1613, float %1611
  %1616 = select i1 %134, float 0.000000e+00, float %1612
  %1617 = fmul fast float %1614, %1171
  %1618 = fmul fast float %1615, %1172
  %1619 = fmul fast float %1616, %1173
  %1620 = call float @dx.op.binary.f32(i32 35, float %1617, float 0.000000e+00)  ; FMax(a,b)
  %1621 = call float @dx.op.binary.f32(i32 35, float %1618, float 0.000000e+00)  ; FMax(a,b)
  %1622 = call float @dx.op.binary.f32(i32 35, float %1619, float 0.000000e+00)  ; FMax(a,b)
  %1623 = fadd fast float %1620, %1158
  %1624 = fadd fast float %1621, %1159
  %1625 = fadd fast float %1622, %1160
  %1626 = fmul fast float %1623, %629
  %1627 = fmul fast float %1624, %629
  %1628 = fmul fast float %1625, %629
  %1629 = fadd fast float %884, -1.000000e+00
  %1630 = fadd fast float %849, -1.000000e+00
  %1631 = fadd fast float %1630, %882
  %1632 = fadd fast float %850, -1.000000e+00
  %1633 = fadd fast float %1632, %883
  %1634 = fmul fast float %1629, %629
  %1635 = fmul fast float %1631, %629
  %1636 = fmul fast float %1633, %629
  %1637 = fadd fast float %1634, 1.000000e+00
  %1638 = fadd fast float %1635, 1.000000e+00
  %1639 = fadd fast float %1636, 1.000000e+00
  %1640 = call float @dx.op.dot3.f32(i32 55, float %1637, float %1638, float %1639, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1641 = fsub fast float 1.000000e+00, %1640
  %1642 = fmul fast float %1014, %1002
  %1643 = fsub fast float 1.000000e+00, %1016
  %1644 = fsub fast float %1643, %1002
  %1645 = call float @dx.op.unary.f32(i32 7, float %1644)  ; Saturate(value)
  %1646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1647 = extractvalue %dx.types.CBufRet.f32 %1646, 3
  %1648 = fmul fast float %1647, %1645
  %1649 = fadd fast float %1648, %1642
  %1650 = and i32 %154, 1048576
  %1651 = icmp eq i32 %1650, 0
  br i1 %1651, label %1736, label %1652, !dx.controlflow.hints !82

; <label>:1652                                    ; preds = %1609
  %1653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1654 = extractvalue %dx.types.CBufRet.f32 %1653, 2
  %1655 = extractvalue %dx.types.CBufRet.f32 %1653, 3
  %1656 = fmul fast float %1654, %64
  %1657 = fmul fast float %1655, %65
  %1658 = call float @dx.op.unary.f32(i32 7, float %1656)  ; Saturate(value)
  %1659 = call float @dx.op.unary.f32(i32 7, float %1657)  ; Saturate(value)
  %1660 = select i1 %1040, i32 2, i32 0
  %1661 = or i32 %1660, 1
  %1662 = uitofp i32 %1661 to float
  %1663 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1658, float %1659, float %1662, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1664 = extractvalue %dx.types.ResRet.f32 %1663, 0
  %1665 = extractvalue %dx.types.ResRet.f32 %1663, 1
  %1666 = extractvalue %dx.types.ResRet.f32 %1663, 2
  %1667 = extractvalue %dx.types.ResRet.f32 %1663, 3
  %1668 = add nuw nsw i32 %1660, 2
  %1669 = uitofp i32 %1668 to float
  %1670 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1658, float %1659, float %1669, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1671 = extractvalue %dx.types.ResRet.f32 %1670, 0
  %1672 = extractvalue %dx.types.ResRet.f32 %1670, 1
  %1673 = extractvalue %dx.types.ResRet.f32 %1670, 2
  %1674 = extractvalue %dx.types.ResRet.f32 %1670, 3
  %1675 = call float @dx.op.binary.f32(i32 35, float %1665, float %1666)  ; FMax(a,b)
  %1676 = call float @dx.op.binary.f32(i32 35, float %1664, float %1675)  ; FMax(a,b)
  %1677 = call float @dx.op.binary.f32(i32 35, float %1676, float %1667)  ; FMax(a,b)
  %1678 = call float @dx.op.binary.f32(i32 36, float %1672, float %1673)  ; FMin(a,b)
  %1679 = call float @dx.op.binary.f32(i32 36, float %1671, float %1678)  ; FMin(a,b)
  %1680 = call float @dx.op.binary.f32(i32 36, float %1679, float %1674)  ; FMin(a,b)
  %1681 = fmul fast float %1677, 2.550000e+02
  %1682 = fadd fast float %1681, 0x3F70101020000000
  %1683 = fptoui float %1682 to i32
  %1684 = fmul fast float %1680, 2.550000e+02
  %1685 = fadd fast float %1684, 0x3F70101020000000
  %1686 = fptoui float %1685 to i32
  %1687 = icmp ult i32 %1683, %1686
  br i1 %1687, label %1688, label %1729

; <label>:1688                                    ; preds = %1652
  %1689 = fcmp fast ogt float %56, 9.843750e-01
  %1690 = select i1 %1689, float -4.000000e+00, float %1208
  %1691 = call float @dx.op.binary.f32(i32 35, float %1690, float 0.000000e+00)  ; FMax(a,b)
  %1692 = fadd fast float %1205, %1691
  %1693 = fmul fast float %1692, %1206
  %1694 = call float @dx.op.unary.f32(i32 23, float %1693)  ; Log(value)
  %1695 = fmul fast float %1207, %1694
  %1696 = fmul fast float %1695, %1215
  %1697 = call float @dx.op.unary.f32(i32 7, float %1696)  ; Saturate(value)
  %1698 = uitofp i32 %1683 to float
  %1699 = uitofp i32 %1686 to float
  %1700 = fadd fast float %1698, 5.000000e-01
  %1701 = fadd fast float %1699, 5.000000e-01
  %1702 = fmul fast float %1215, %1700
  %1703 = fmul fast float %1215, %1701
  %1704 = fadd fast float %1702, 0x3F0FFB4800000000
  %1705 = fadd fast float %1703, 0xBF0FFB4800000000
  %1706 = call float @dx.op.binary.f32(i32 35, float %1697, float %1704)  ; FMax(a,b)
  %1707 = call float @dx.op.binary.f32(i32 36, float %1706, float %1705)  ; FMin(a,b)
  %1708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1709 = extractvalue %dx.types.CBufRet.f32 %1708, 1
  %1710 = extractvalue %dx.types.CBufRet.f32 %1708, 2
  %1711 = extractvalue %dx.types.CBufRet.f32 %1708, 0
  %1712 = select i1 %1040, float %1711, float 0.000000e+00
  %1713 = fmul fast float %1709, %1707
  %1714 = fadd fast float %1712, %1713
  %1715 = fadd fast float %1712, %1710
  %1716 = fsub fast float %1709, %1710
  %1717 = fadd fast float %1716, %1712
  %1718 = call float @dx.op.binary.f32(i32 35, float %1714, float %1715)  ; FMax(a,b)
  %1719 = call float @dx.op.binary.f32(i32 36, float %1718, float %1717)  ; FMin(a,b)
  %1720 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %25, float %1658, float %1659, float %1719, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1721 = extractvalue %dx.types.ResRet.f32 %1720, 0
  %1722 = extractvalue %dx.types.ResRet.f32 %1720, 1
  %1723 = extractvalue %dx.types.ResRet.f32 %1720, 2
  %1724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1725 = extractvalue %dx.types.CBufRet.f32 %1724, 1
  %1726 = fmul fast float %1725, %1721
  %1727 = fmul fast float %1725, %1722
  %1728 = fmul fast float %1725, %1723
  br label %1729

; <label>:1729                                    ; preds = %1688, %1652
  %1730 = phi float [ %1726, %1688 ], [ 1.000000e+00, %1652 ]
  %1731 = phi float [ %1727, %1688 ], [ 1.000000e+00, %1652 ]
  %1732 = phi float [ %1728, %1688 ], [ 1.000000e+00, %1652 ]
  %1733 = fmul fast float %1730, %1626
  %1734 = fmul fast float %1731, %1627
  %1735 = fmul fast float %1732, %1628
  br label %1736

; <label>:1736                                    ; preds = %1729, %1609
  %1737 = phi float [ %1733, %1729 ], [ %1626, %1609 ]
  %1738 = phi float [ %1734, %1729 ], [ %1627, %1609 ]
  %1739 = phi float [ %1735, %1729 ], [ %1628, %1609 ]
  %1740 = and i32 %154, 2097152
  %1741 = icmp eq i32 %1740, 0
  br i1 %1741, label %1746, label %1742, !dx.controlflow.hints !83

; <label>:1742                                    ; preds = %1736
  %1743 = add i32 %151, 192
  %1744 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1743, i32 undef)  ; BufferLoad(srv,index,wot)
  %1745 = extractvalue %dx.types.ResRet.f32 %1744, 0
  br label %1749

; <label>:1746                                    ; preds = %1736
  %1747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1748 = extractvalue %dx.types.CBufRet.f32 %1747, 3
  br label %1749

; <label>:1749                                    ; preds = %1746, %1742
  %1750 = phi float [ %1745, %1742 ], [ %1748, %1746 ]
  %1751 = fmul fast float %977, %629
  %1752 = fmul fast float %1751, %1052
  %1753 = fmul fast float %1752, %1176
  %1754 = fmul fast float %978, %629
  %1755 = fmul fast float %1754, %1053
  %1756 = fmul fast float %1755, %1176
  %1757 = fmul fast float %979, %629
  %1758 = fmul fast float %1757, %1054
  %1759 = fmul fast float %1758, %1176
  br i1 %1035, label %1760, label %1893

; <label>:1760                                    ; preds = %1749
  %1761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1762 = extractvalue %dx.types.CBufRet.f32 %1761, 2
  %1763 = extractvalue %dx.types.CBufRet.f32 %1761, 3
  %1764 = fmul fast float %1762, %64
  %1765 = fmul fast float %1763, %65
  %1766 = call float @dx.op.unary.f32(i32 7, float %1764)  ; Saturate(value)
  %1767 = call float @dx.op.unary.f32(i32 7, float %1765)  ; Saturate(value)
  %1768 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1766, float %1767, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1769 = extractvalue %dx.types.ResRet.f32 %1768, 0
  %1770 = extractvalue %dx.types.ResRet.f32 %1768, 1
  %1771 = extractvalue %dx.types.ResRet.f32 %1768, 2
  %1772 = extractvalue %dx.types.ResRet.f32 %1768, 3
  %1773 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1766, float %1767, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1774 = extractvalue %dx.types.ResRet.f32 %1773, 0
  %1775 = extractvalue %dx.types.ResRet.f32 %1773, 1
  %1776 = extractvalue %dx.types.ResRet.f32 %1773, 2
  %1777 = extractvalue %dx.types.ResRet.f32 %1773, 3
  %1778 = call float @dx.op.binary.f32(i32 35, float %1770, float %1771)  ; FMax(a,b)
  %1779 = call float @dx.op.binary.f32(i32 35, float %1769, float %1778)  ; FMax(a,b)
  %1780 = call float @dx.op.binary.f32(i32 35, float %1779, float %1772)  ; FMax(a,b)
  %1781 = call float @dx.op.binary.f32(i32 36, float %1775, float %1776)  ; FMin(a,b)
  %1782 = call float @dx.op.binary.f32(i32 36, float %1774, float %1781)  ; FMin(a,b)
  %1783 = call float @dx.op.binary.f32(i32 36, float %1782, float %1777)  ; FMin(a,b)
  %1784 = fmul fast float %1780, 2.550000e+02
  %1785 = fadd fast float %1784, 0x3F70101020000000
  %1786 = fptoui float %1785 to i32
  %1787 = fmul fast float %1783, 2.550000e+02
  %1788 = fadd fast float %1787, 0x3F70101020000000
  %1789 = fptoui float %1788 to i32
  %1790 = icmp ult i32 %1786, %1789
  br i1 %1790, label %1791, label %1835

; <label>:1791                                    ; preds = %1760
  %1792 = fcmp fast ogt float %56, 9.843750e-01
  %1793 = select i1 %1792, float -4.000000e+00, float %1208
  %1794 = call float @dx.op.binary.f32(i32 35, float %1793, float 0.000000e+00)  ; FMax(a,b)
  %1795 = fadd fast float %1205, %1794
  %1796 = fmul fast float %1795, %1206
  %1797 = call float @dx.op.unary.f32(i32 23, float %1796)  ; Log(value)
  %1798 = fmul fast float %1207, %1797
  %1799 = fmul fast float %1798, %1215
  %1800 = call float @dx.op.unary.f32(i32 7, float %1799)  ; Saturate(value)
  %1801 = uitofp i32 %1786 to float
  %1802 = uitofp i32 %1789 to float
  %1803 = fadd fast float %1801, 5.000000e-01
  %1804 = fadd fast float %1802, 5.000000e-01
  %1805 = fmul fast float %1215, %1803
  %1806 = fmul fast float %1215, %1804
  %1807 = fadd fast float %1805, 0x3F0FFB4800000000
  %1808 = fadd fast float %1806, 0xBF0FFB4800000000
  %1809 = call float @dx.op.binary.f32(i32 35, float %1800, float %1807)  ; FMax(a,b)
  %1810 = call float @dx.op.binary.f32(i32 36, float %1809, float %1808)  ; FMin(a,b)
  %1811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1812 = extractvalue %dx.types.CBufRet.f32 %1811, 1
  %1813 = extractvalue %dx.types.CBufRet.f32 %1811, 2
  %1814 = extractvalue %dx.types.CBufRet.f32 %1811, 0
  %1815 = fmul fast float %1812, %1810
  %1816 = fadd fast float %1814, %1815
  %1817 = fadd fast float %1814, %1813
  %1818 = fsub fast float %1812, %1813
  %1819 = fadd fast float %1818, %1814
  %1820 = call float @dx.op.binary.f32(i32 35, float %1816, float %1817)  ; FMax(a,b)
  %1821 = call float @dx.op.binary.f32(i32 36, float %1820, float %1819)  ; FMin(a,b)
  %1822 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %1766, float %1767, float %1821, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1823 = extractvalue %dx.types.ResRet.f32 %1822, 0
  %1824 = extractvalue %dx.types.ResRet.f32 %1822, 1
  %1825 = extractvalue %dx.types.ResRet.f32 %1822, 2
  %1826 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %1766, float %1767, float %1821, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1827 = extractvalue %dx.types.ResRet.f32 %1826, 0
  %1828 = extractvalue %dx.types.ResRet.f32 %1826, 1
  %1829 = extractvalue %dx.types.ResRet.f32 %1826, 2
  %1830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1831 = extractvalue %dx.types.CBufRet.f32 %1830, 1
  %1832 = fmul fast float %1831, %1827
  %1833 = fmul fast float %1831, %1828
  %1834 = fmul fast float %1831, %1829
  br label %1835

; <label>:1835                                    ; preds = %1791, %1760
  %1836 = phi float [ %1823, %1791 ], [ 1.000000e+00, %1760 ]
  %1837 = phi float [ %1824, %1791 ], [ 1.000000e+00, %1760 ]
  %1838 = phi float [ %1825, %1791 ], [ 1.000000e+00, %1760 ]
  %1839 = phi float [ %1832, %1791 ], [ 0.000000e+00, %1760 ]
  %1840 = phi float [ %1833, %1791 ], [ 0.000000e+00, %1760 ]
  %1841 = phi float [ %1834, %1791 ], [ 0.000000e+00, %1760 ]
  %1842 = fmul fast float %1839, %1641
  %1843 = fmul fast float %1840, %1641
  %1844 = fmul fast float %1841, %1641
  %1845 = call float @dx.op.dot3.f32(i32 55, float %1836, float %1837, float %1838, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1846 = call float @dx.op.dot3.f32(i32 55, float %1842, float %1843, float %1844, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1847 = select i1 %134, float %1845, float %1836
  %1848 = select i1 %134, float %1845, float %1837
  %1849 = select i1 %134, float 1.000000e+00, float %1838
  %1850 = select i1 %134, float %1846, float %1842
  %1851 = select i1 %134, float 0.000000e+00, float %1843
  %1852 = select i1 %134, float 0.000000e+00, float %1844
  %1853 = fmul fast float %1847, %1753
  %1854 = fmul fast float %1848, %1756
  %1855 = fmul fast float %1849, %1759
  %1856 = fadd fast float %1853, %1850
  %1857 = fadd fast float %1854, %1851
  %1858 = fadd fast float %1852, %1855
  %1859 = fmul fast float %1847, %1737
  %1860 = fmul fast float %1848, %1738
  %1861 = fmul fast float %1849, %1739
  %1862 = fmul fast float %69, %1762
  %1863 = fmul fast float %71, %1763
  %1864 = fsub fast float 1.000000e+00, %1862
  %1865 = fsub fast float 1.000000e+00, %1863
  %1866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1867 = extractvalue %dx.types.CBufRet.f32 %1866, 0
  %1868 = extractvalue %dx.types.CBufRet.f32 %1866, 1
  %1869 = extractvalue %dx.types.CBufRet.f32 %1866, 2
  %1870 = fmul fast float %1864, %1867
  %1871 = fmul fast float %1864, %1868
  %1872 = fmul fast float %1864, %1869
  %1873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1874 = extractvalue %dx.types.CBufRet.f32 %1873, 0
  %1875 = extractvalue %dx.types.CBufRet.f32 %1873, 1
  %1876 = extractvalue %dx.types.CBufRet.f32 %1873, 2
  %1877 = fmul fast float %1865, %1874
  %1878 = fmul fast float %1865, %1875
  %1879 = fmul fast float %1865, %1876
  %1880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1881 = extractvalue %dx.types.CBufRet.f32 %1880, 0
  %1882 = extractvalue %dx.types.CBufRet.f32 %1880, 1
  %1883 = extractvalue %dx.types.CBufRet.f32 %1880, 2
  %1884 = fadd fast float %1877, %1881
  %1885 = fadd fast float %1884, %1870
  %1886 = fadd fast float %1878, %1882
  %1887 = fadd fast float %1886, %1871
  %1888 = fadd fast float %1879, %1883
  %1889 = fadd fast float %1888, %1872
  %1890 = fmul fast float %1885, %1032
  %1891 = fmul fast float %1887, %1032
  %1892 = fmul fast float %1889, %1032
  br label %1893

; <label>:1893                                    ; preds = %1835, %1749
  %1894 = phi float [ %1890, %1835 ], [ %99, %1749 ]
  %1895 = phi float [ %1891, %1835 ], [ %100, %1749 ]
  %1896 = phi float [ %1892, %1835 ], [ %101, %1749 ]
  %1897 = phi float [ %1032, %1835 ], [ %57, %1749 ]
  %1898 = phi float [ %1856, %1835 ], [ %1753, %1749 ]
  %1899 = phi float [ %1857, %1835 ], [ %1756, %1749 ]
  %1900 = phi float [ %1858, %1835 ], [ %1759, %1749 ]
  %1901 = phi float [ %1859, %1835 ], [ %1737, %1749 ]
  %1902 = phi float [ %1860, %1835 ], [ %1738, %1749 ]
  %1903 = phi float [ %1861, %1835 ], [ %1739, %1749 ]
  %1904 = phi float [ %1836, %1835 ], [ 1.000000e+00, %1749 ]
  br i1 %1040, label %2960, label %1905

; <label>:1905                                    ; preds = %1893
  %1906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1907 = extractvalue %dx.types.CBufRet.f32 %1906, 0
  %1908 = extractvalue %dx.types.CBufRet.f32 %1906, 1
  %1909 = extractvalue %dx.types.CBufRet.f32 %1906, 2
  %1910 = extractvalue %dx.types.CBufRet.f32 %1906, 3
  %1911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1912 = extractvalue %dx.types.CBufRet.f32 %1911, 0
  %1913 = extractvalue %dx.types.CBufRet.f32 %1911, 1
  %1914 = extractvalue %dx.types.CBufRet.f32 %1911, 2
  %1915 = extractvalue %dx.types.CBufRet.f32 %1911, 3
  %1916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1917 = extractvalue %dx.types.CBufRet.f32 %1916, 0
  %1918 = extractvalue %dx.types.CBufRet.f32 %1916, 1
  %1919 = extractvalue %dx.types.CBufRet.f32 %1916, 2
  %1920 = extractvalue %dx.types.CBufRet.f32 %1916, 3
  %1921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1922 = extractvalue %dx.types.CBufRet.f32 %1921, 0
  %1923 = extractvalue %dx.types.CBufRet.f32 %1921, 1
  %1924 = extractvalue %dx.types.CBufRet.f32 %1921, 2
  %1925 = extractvalue %dx.types.CBufRet.f32 %1921, 3
  %1926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1927 = extractvalue %dx.types.CBufRet.f32 %1926, 3
  %1928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1929 = extractvalue %dx.types.CBufRet.f32 %1928, 3
  %1930 = extractvalue %dx.types.CBufRet.f32 %1928, 0
  %1931 = extractvalue %dx.types.CBufRet.f32 %1928, 1
  %1932 = extractvalue %dx.types.CBufRet.f32 %1928, 2
  %1933 = fcmp fast olt float %1932, -5.000000e-01
  %1934 = call float @dx.op.dot3.f32(i32 55, float %1894, float %1895, float %1896, float %1894, float %1895, float %1896)  ; Dot3(ax,ay,az,bx,by,bz)
  %1935 = call float @dx.op.unary.f32(i32 25, float %1934)  ; Rsqrt(value)
  %1936 = fmul fast float %1935, %1934
  %1937 = fmul fast float %1935, %1894
  %1938 = fmul fast float %1935, %1895
  %1939 = fmul fast float %1935, %1896
  %1940 = fadd fast float %1936, %1910
  %1941 = call float @dx.op.dot3.f32(i32 55, float %1937, float %1938, float %1939, float %1907, float %1908, float %1909)  ; Dot3(ax,ay,az,bx,by,bz)
  %1942 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1943 = extractvalue %dx.types.CBufRet.i32 %1942, 1
  %1944 = and i32 %1943, 1
  %1945 = icmp ne i32 %1944, 0
  %1946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1947 = extractvalue %dx.types.CBufRet.f32 %1946, 2
  %1948 = fcmp fast ogt float %1947, 0.000000e+00
  %1949 = and i1 %1945, %1948
  br i1 %1949, label %1950, label %2356, !dx.controlflow.hints !84

; <label>:1950                                    ; preds = %1905
  %1951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1952 = extractvalue %dx.types.CBufRet.f32 %1951, 3
  %1953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1954 = extractvalue %dx.types.CBufRet.f32 %1953, 2
  %1955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1956 = extractvalue %dx.types.CBufRet.f32 %1955, 2
  %1957 = fsub fast float %1954, %1956
  %1958 = and i32 %1943, 2
  %1959 = extractvalue %dx.types.CBufRet.i32 %1942, 0
  %1960 = call i32 @dx.op.binary.i32(i32 40, i32 %1959, i32 3)  ; UMin(a,b)
  %1961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1962 = extractvalue %dx.types.CBufRet.f32 %1961, 0
  %1963 = extractvalue %dx.types.CBufRet.f32 %1961, 1
  %1964 = extractvalue %dx.types.CBufRet.f32 %1955, 0
  %1965 = extractvalue %dx.types.CBufRet.f32 %1955, 1
  %1966 = fsub fast float %1962, %1964
  %1967 = fsub fast float %1963, %1965
  %1968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1969 = extractvalue %dx.types.CBufRet.f32 %1968, 0
  %1970 = fcmp fast ogt float %1969, 0.000000e+00
  %1971 = fsub fast float -0.000000e+00, %1966
  %1972 = fsub fast float -0.000000e+00, %1967
  %1973 = call float @dx.op.dot2.f32(i32 54, float %1937, float %1938, float %1937, float %1938)  ; Dot2(ax,ay,bx,by)
  %1974 = call float @dx.op.dot2.f32(i32 54, float %1937, float %1938, float %1971, float %1972)  ; Dot2(ax,ay,bx,by)
  %1975 = fmul fast float %1974, 2.000000e+00
  %1976 = call float @dx.op.dot2.f32(i32 54, float %1971, float %1972, float %1971, float %1972)  ; Dot2(ax,ay,bx,by)
  %1977 = fmul fast float %1969, %1969
  %1978 = fsub fast float %1976, %1977
  %1979 = fmul fast float %1975, %1975
  %1980 = fmul fast float %1973, 4.000000e+00
  %1981 = fmul fast float %1980, %1978
  %1982 = fsub fast float %1979, %1981
  %1983 = fcmp fast ogt float %1982, 0.000000e+00
  br i1 %1983, label %1984, label %1999

; <label>:1984                                    ; preds = %1950
  %1985 = fcmp fast ogt float %1975, 0.000000e+00
  %1986 = call float @dx.op.unary.f32(i32 24, float %1982)  ; Sqrt(value)
  %1987 = fsub fast float -0.000000e+00, %1986
  %1988 = select i1 %1985, float %1986, float %1987
  %1989 = fadd fast float %1988, %1975
  %1990 = fmul float %1989, -5.000000e-01
  %1991 = fdiv fast float %1990, %1973
  %1992 = call float @dx.op.binary.f32(i32 35, float %1991, float 0.000000e+00)  ; FMax(a,b)
  %1993 = call float @dx.op.binary.f32(i32 36, float %1936, float %1992)  ; FMin(a,b)
  %1994 = fdiv fast float %1978, %1990
  %1995 = call float @dx.op.binary.f32(i32 35, float %1994, float 0.000000e+00)  ; FMax(a,b)
  %1996 = call float @dx.op.binary.f32(i32 36, float %1936, float %1995)  ; FMin(a,b)
  %1997 = call float @dx.op.binary.f32(i32 36, float %1993, float %1996)  ; FMin(a,b)
  %1998 = call float @dx.op.binary.f32(i32 35, float %1993, float %1996)  ; FMax(a,b)
  br label %1999

; <label>:1999                                    ; preds = %1984, %1950
  %2000 = phi float [ %1998, %1984 ], [ -1.000000e+00, %1950 ]
  %2001 = phi float [ %1997, %1984 ], [ -1.000000e+00, %1950 ]
  %2002 = phi i1 [ true, %1984 ], [ false, %1950 ]
  %2003 = and i1 %1970, %2002
  br i1 %2003, label %2004, label %2006

; <label>:2004                                    ; preds = %1999
  %2005 = fcmp fast oeq float %2001, %2000
  br i1 %2005, label %2309, label %2007

; <label>:2006                                    ; preds = %1999
  br i1 %1970, label %2309, label %2007

; <label>:2007                                    ; preds = %2006, %2004
  %2008 = phi float [ %1936, %2006 ], [ %2000, %2004 ]
  %2009 = phi float [ 0.000000e+00, %2006 ], [ %2001, %2004 ]
  %2010 = icmp ne i32 %1958, 0
  %2011 = fmul fast float %2008, %1939
  %2012 = fadd fast float %2011, %1952
  %2013 = fmul fast float %2012, %2008
  %2014 = select i1 %2010, float 0.000000e+00, float %2013
  %2015 = fcmp fast oeq float %1939, 0.000000e+00
  %2016 = fdiv fast float %1957, %1939
  %2017 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2016)  ; FMax(a,b)
  %2018 = select i1 %2015, float %2008, float %2017
  %2019 = call float @dx.op.binary.f32(i32 36, float %2008, float %2018)  ; FMin(a,b)
  %2020 = fcmp fast ogt float %1939, 0.000000e+00
  %2021 = fcmp fast olt float %1957, 0.000000e+00
  br i1 %2020, label %2022, label %2079

; <label>:2022                                    ; preds = %2007
  %2023 = icmp eq i32 %1958, 0
  br i1 %2021, label %2024, label %2068

; <label>:2024                                    ; preds = %2022
  %2025 = select i1 %2023, float %2008, float 0.000000e+00
  %2026 = fsub fast float -0.000000e+00, %2025
  %2027 = call float @dx.op.unary.f32(i32 6, float %2026)  ; FAbs(value)
  %2028 = fmul fast float %2025, %1939
  %2029 = fadd fast float %2028, %1952
  %2030 = fmul fast float %2027, %2029
  %2031 = fsub fast float %2014, %2030
  %2032 = fsub fast float %2008, %2027
  %2033 = select i1 %2023, float %2032, float 0.000000e+00
  %2034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2035 = extractvalue %dx.types.CBufRet.f32 %2034, 0
  %2036 = extractvalue %dx.types.CBufRet.f32 %2034, 1
  %2037 = extractvalue %dx.types.CBufRet.f32 %2034, 2
  %2038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2039 = extractvalue %dx.types.CBufRet.f32 %2038, 0
  %2040 = extractvalue %dx.types.CBufRet.f32 %2038, 1
  %2041 = extractvalue %dx.types.CBufRet.f32 %2038, 2
  %2042 = extractvalue %dx.types.CBufRet.f32 %2038, 3
  %2043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2044 = extractvalue %dx.types.CBufRet.f32 %2043, 3
  %2045 = call float @dx.op.binary.f32(i32 36, float %2031, float %2044)  ; FMin(a,b)
  %2046 = fmul fast float %2042, %2033
  %2047 = call float @dx.op.unary.f32(i32 7, float %2046)  ; Saturate(value)
  %2048 = fsub fast float %2039, %2035
  %2049 = fsub fast float %2040, %2036
  %2050 = fsub fast float %2041, %2037
  %2051 = fmul fast float %2047, %2048
  %2052 = fmul fast float %2047, %2049
  %2053 = fmul fast float %2047, %2050
  %2054 = fadd fast float %2051, %2035
  %2055 = fadd fast float %2052, %2036
  %2056 = fadd fast float %2053, %2037
  %2057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2058 = extractvalue %dx.types.CBufRet.f32 %2057, 0
  %2059 = extractvalue %dx.types.CBufRet.f32 %2057, 1
  %2060 = fadd fast float %2059, %2058
  %2061 = call float @dx.op.unary.f32(i32 7, float %2060)  ; Saturate(value)
  %2062 = extractvalue %dx.types.CBufRet.f32 %2057, 2
  %2063 = extractvalue %dx.types.CBufRet.f32 %2057, 3
  %2064 = fadd fast float %2063, %2062
  %2065 = call float @dx.op.unary.f32(i32 7, float %2064)  ; Saturate(value)
  %2066 = fmul fast float %2061, %2045
  %2067 = fmul fast float %2066, %2065
  br label %2309

; <label>:2068                                    ; preds = %2022
  br i1 %2023, label %2069, label %2090

; <label>:2069                                    ; preds = %2068
  %2070 = call float @dx.op.binary.f32(i32 36, float %2019, float %2009)  ; FMin(a,b)
  %2071 = fsub fast float %2019, %2070
  %2072 = fsub fast float %2071, %2008
  %2073 = call float @dx.op.unary.f32(i32 6, float %2072)  ; FAbs(value)
  %2074 = fadd fast float %2071, %2008
  %2075 = fmul fast float %2074, %1939
  %2076 = fadd fast float %2075, %1952
  %2077 = fmul fast float %2076, %2073
  %2078 = fsub fast float %2014, %2077
  br label %2090

; <label>:2079                                    ; preds = %2007
  br i1 %2021, label %2080, label %2090

; <label>:2080                                    ; preds = %2079
  %2081 = call float @dx.op.binary.f32(i32 35, float %2009, float %2019)  ; FMax(a,b)
  %2082 = icmp eq i32 %1958, 0
  %2083 = select i1 %2082, float %2019, float 0.000000e+00
  %2084 = fsub fast float -0.000000e+00, %2083
  %2085 = call float @dx.op.unary.f32(i32 6, float %2084)  ; FAbs(value)
  %2086 = fmul fast float %2083, %1939
  %2087 = fadd fast float %2086, %1952
  %2088 = fmul fast float %2085, %2087
  %2089 = fsub fast float %2014, %2088
  br label %2090

; <label>:2090                                    ; preds = %2080, %2079, %2069, %2068
  %2091 = phi float [ %2009, %2068 ], [ %2009, %2069 ], [ %2081, %2080 ], [ %2009, %2079 ]
  %2092 = phi float [ 0.000000e+00, %2068 ], [ %2073, %2069 ], [ %2085, %2080 ], [ 0.000000e+00, %2079 ]
  %2093 = phi float [ %2014, %2068 ], [ %2078, %2069 ], [ %2089, %2080 ], [ %2014, %2079 ]
  %2094 = phi float [ %2019, %2068 ], [ %2019, %2069 ], [ %2008, %2080 ], [ %2008, %2079 ]
  %2095 = getelementptr inbounds [3 x float], [3 x float]* %58, i32 0, i32 0
  store float -1.000000e+00, float* %2095, align 4, !tbaa !85, !noalias !89
  %2096 = getelementptr inbounds [3 x float], [3 x float]* %58, i32 0, i32 1
  store float -1.000000e+00, float* %2096, align 4, !tbaa !85, !noalias !89
  %2097 = getelementptr inbounds [3 x float], [3 x float]* %58, i32 0, i32 2
  store float -1.000000e+00, float* %2097, align 4, !tbaa !85, !noalias !89
  %2098 = getelementptr inbounds [3 x float], [3 x float]* %59, i32 0, i32 0
  store float -1.000000e+00, float* %2098, align 4, !tbaa !85, !noalias !89
  %2099 = getelementptr inbounds [3 x float], [3 x float]* %59, i32 0, i32 1
  store float -1.000000e+00, float* %2099, align 4, !tbaa !85, !noalias !89
  %2100 = getelementptr inbounds [3 x float], [3 x float]* %59, i32 0, i32 2
  store float -1.000000e+00, float* %2100, align 4, !tbaa !85, !noalias !89
  %2101 = icmp sgt i32 %1960, 0
  br i1 %2101, label %2102, label %2163

; <label>:2102                                    ; preds = %2090
  br label %2103

; <label>:2103                                    ; preds = %2152, %2102
  %2104 = phi i32 [ %2153, %2152 ], [ 0, %2102 ]
  %2105 = phi i32 [ %2154, %2152 ], [ 0, %2102 ]
  %2106 = add nuw i32 %2105, 171
  %2107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 %2106)  ; CBufferLoadLegacy(handle,regIndex)
  %2108 = extractvalue %dx.types.CBufRet.f32 %2107, 0
  %2109 = extractvalue %dx.types.CBufRet.f32 %2107, 1
  %2110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2111 = extractvalue %dx.types.CBufRet.f32 %2110, 0
  %2112 = extractvalue %dx.types.CBufRet.f32 %2110, 1
  %2113 = fsub fast float %2108, %2111
  %2114 = fsub fast float %2109, %2112
  %2115 = extractvalue %dx.types.CBufRet.f32 %2107, 2
  %2116 = fsub fast float -0.000000e+00, %2113
  %2117 = fsub fast float -0.000000e+00, %2114
  %2118 = call float @dx.op.dot2.f32(i32 54, float %1937, float %1938, float %2116, float %2117)  ; Dot2(ax,ay,bx,by)
  %2119 = fmul fast float %2118, 2.000000e+00
  %2120 = call float @dx.op.dot2.f32(i32 54, float %2116, float %2117, float %2116, float %2117)  ; Dot2(ax,ay,bx,by)
  %2121 = fmul fast float %2115, %2115
  %2122 = fsub fast float %2120, %2121
  %2123 = fmul fast float %2119, %2119
  %2124 = fmul fast float %1980, %2122
  %2125 = fsub fast float %2123, %2124
  %2126 = fcmp fast ogt float %2125, 0.000000e+00
  br i1 %2126, label %2127, label %2142

; <label>:2127                                    ; preds = %2103
  %2128 = fcmp fast ogt float %2119, 0.000000e+00
  %2129 = call float @dx.op.unary.f32(i32 24, float %2125)  ; Sqrt(value)
  %2130 = fsub fast float -0.000000e+00, %2129
  %2131 = select i1 %2128, float %2129, float %2130
  %2132 = fadd fast float %2131, %2119
  %2133 = fmul float %2132, -5.000000e-01
  %2134 = fdiv fast float %2133, %1973
  %2135 = call float @dx.op.binary.f32(i32 35, float %2134, float 0.000000e+00)  ; FMax(a,b)
  %2136 = call float @dx.op.binary.f32(i32 36, float %2008, float %2135)  ; FMin(a,b)
  %2137 = fdiv fast float %2122, %2133
  %2138 = call float @dx.op.binary.f32(i32 35, float %2137, float 0.000000e+00)  ; FMax(a,b)
  %2139 = call float @dx.op.binary.f32(i32 36, float %2008, float %2138)  ; FMin(a,b)
  %2140 = call float @dx.op.binary.f32(i32 36, float %2136, float %2139)  ; FMin(a,b)
  %2141 = call float @dx.op.binary.f32(i32 35, float %2136, float %2139)  ; FMax(a,b)
  br label %2142

; <label>:2142                                    ; preds = %2127, %2103
  %2143 = phi float [ %2141, %2127 ], [ -1.000000e+00, %2103 ]
  %2144 = phi float [ %2140, %2127 ], [ -1.000000e+00, %2103 ]
  %2145 = phi i1 [ true, %2127 ], [ false, %2103 ]
  br i1 %2145, label %2146, label %2152

; <label>:2146                                    ; preds = %2142
  %2147 = call float @dx.op.binary.f32(i32 35, float %2091, float %2144)  ; FMax(a,b)
  %2148 = getelementptr inbounds [3 x float], [3 x float]* %58, i32 0, i32 %2105
  store float %2147, float* %2148, align 4, !tbaa !85, !noalias !89
  %2149 = call float @dx.op.binary.f32(i32 35, float %2091, float %2143)  ; FMax(a,b)
  %2150 = getelementptr inbounds [3 x float], [3 x float]* %59, i32 0, i32 %2105
  store float %2149, float* %2150, align 4, !tbaa !85, !noalias !89
  %2151 = add nsw i32 %2104, 1
  br label %2152

; <label>:2152                                    ; preds = %2146, %2142
  %2153 = phi i32 [ %2151, %2146 ], [ %2104, %2142 ]
  %2154 = add nuw nsw i32 %2105, 1
  %2155 = icmp eq i32 %2154, %1960
  br i1 %2155, label %2156, label %2103

; <label>:2156                                    ; preds = %2152
  %2157 = load float, float* %2097, align 4, !tbaa !85, !alias.scope !105, !noalias !108
  %2158 = load float, float* %2096, align 4, !tbaa !85, !alias.scope !111, !noalias !112
  %2159 = load float, float* %2095, align 4, !tbaa !85, !alias.scope !113, !noalias !114
  %2160 = load float, float* %2100, align 4, !tbaa !85, !alias.scope !115, !noalias !118
  %2161 = load float, float* %2099, align 4, !tbaa !85, !alias.scope !121, !noalias !122
  %2162 = load float, float* %2098, align 4, !tbaa !85, !alias.scope !123, !noalias !124
  br label %2163

; <label>:2163                                    ; preds = %2156, %2090
  %2164 = phi float [ -1.000000e+00, %2090 ], [ %2162, %2156 ]
  %2165 = phi float [ -1.000000e+00, %2090 ], [ %2161, %2156 ]
  %2166 = phi float [ -1.000000e+00, %2090 ], [ %2160, %2156 ]
  %2167 = phi float [ -1.000000e+00, %2090 ], [ %2159, %2156 ]
  %2168 = phi float [ -1.000000e+00, %2090 ], [ %2158, %2156 ]
  %2169 = phi float [ -1.000000e+00, %2090 ], [ %2157, %2156 ]
  %2170 = phi i32 [ 0, %2090 ], [ %2153, %2156 ]
  %2171 = call float @dx.op.binary.f32(i32 36, float %2168, float %2169)  ; FMin(a,b)
  %2172 = call float @dx.op.binary.f32(i32 36, float %2167, float %2171)  ; FMin(a,b)
  %2173 = call float @dx.op.binary.f32(i32 35, float %2167, float %2168)  ; FMax(a,b)
  %2174 = call float @dx.op.binary.f32(i32 36, float %2173, float %2169)  ; FMin(a,b)
  %2175 = call float @dx.op.binary.f32(i32 36, float %2167, float %2168)  ; FMin(a,b)
  %2176 = call float @dx.op.binary.f32(i32 35, float %2175, float %2174)  ; FMax(a,b)
  %2177 = call float @dx.op.binary.f32(i32 35, float %2168, float %2169)  ; FMax(a,b)
  %2178 = call float @dx.op.binary.f32(i32 35, float %2167, float %2177)  ; FMax(a,b)
  store float %2172, float* %2095, align 4, !tbaa !85, !alias.scope !113, !noalias !114
  store float %2176, float* %2096, align 4, !tbaa !85, !alias.scope !111, !noalias !112
  store float %2178, float* %2097, align 4, !tbaa !85, !alias.scope !105, !noalias !108
  %2179 = call float @dx.op.binary.f32(i32 36, float %2165, float %2166)  ; FMin(a,b)
  %2180 = call float @dx.op.binary.f32(i32 36, float %2164, float %2179)  ; FMin(a,b)
  %2181 = call float @dx.op.binary.f32(i32 35, float %2164, float %2165)  ; FMax(a,b)
  %2182 = call float @dx.op.binary.f32(i32 36, float %2181, float %2166)  ; FMin(a,b)
  %2183 = call float @dx.op.binary.f32(i32 36, float %2164, float %2165)  ; FMin(a,b)
  %2184 = call float @dx.op.binary.f32(i32 35, float %2183, float %2182)  ; FMax(a,b)
  %2185 = call float @dx.op.binary.f32(i32 35, float %2165, float %2166)  ; FMax(a,b)
  %2186 = call float @dx.op.binary.f32(i32 35, float %2164, float %2185)  ; FMax(a,b)
  store float %2180, float* %2098, align 4, !tbaa !85, !alias.scope !123, !noalias !124
  store float %2184, float* %2099, align 4, !tbaa !85, !alias.scope !121, !noalias !122
  store float %2186, float* %2100, align 4, !tbaa !85, !alias.scope !115, !noalias !118
  %2187 = sub nsw i32 3, %2170
  %2188 = icmp sgt i32 %2187, 2
  br i1 %2188, label %2189, label %2227

; <label>:2189                                    ; preds = %2163
  %2190 = icmp eq i32 %1958, 0
  %2191 = fsub fast float %2008, %2092
  %2192 = select i1 %2190, float %2191, float %2092
  %2193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2194 = extractvalue %dx.types.CBufRet.f32 %2193, 0
  %2195 = extractvalue %dx.types.CBufRet.f32 %2193, 1
  %2196 = extractvalue %dx.types.CBufRet.f32 %2193, 2
  %2197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2198 = extractvalue %dx.types.CBufRet.f32 %2197, 0
  %2199 = extractvalue %dx.types.CBufRet.f32 %2197, 1
  %2200 = extractvalue %dx.types.CBufRet.f32 %2197, 2
  %2201 = extractvalue %dx.types.CBufRet.f32 %2197, 3
  %2202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2203 = extractvalue %dx.types.CBufRet.f32 %2202, 3
  %2204 = call float @dx.op.binary.f32(i32 36, float %2093, float %2203)  ; FMin(a,b)
  %2205 = fmul fast float %2201, %2192
  %2206 = call float @dx.op.unary.f32(i32 7, float %2205)  ; Saturate(value)
  %2207 = fsub fast float %2198, %2194
  %2208 = fsub fast float %2199, %2195
  %2209 = fsub fast float %2200, %2196
  %2210 = fmul fast float %2206, %2207
  %2211 = fmul fast float %2206, %2208
  %2212 = fmul fast float %2206, %2209
  %2213 = fadd fast float %2210, %2194
  %2214 = fadd fast float %2211, %2195
  %2215 = fadd fast float %2212, %2196
  %2216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2217 = extractvalue %dx.types.CBufRet.f32 %2216, 0
  %2218 = extractvalue %dx.types.CBufRet.f32 %2216, 1
  %2219 = fadd fast float %2218, %2217
  %2220 = call float @dx.op.unary.f32(i32 7, float %2219)  ; Saturate(value)
  %2221 = extractvalue %dx.types.CBufRet.f32 %2216, 2
  %2222 = extractvalue %dx.types.CBufRet.f32 %2216, 3
  %2223 = fadd fast float %2222, %2221
  %2224 = call float @dx.op.unary.f32(i32 7, float %2223)  ; Saturate(value)
  %2225 = fmul fast float %2220, %2204
  %2226 = fmul fast float %2225, %2224
  br label %2309

; <label>:2227                                    ; preds = %2163
  %2228 = getelementptr inbounds [3 x float], [3 x float]* %58, i32 0, i32 %2187
  %2229 = load float, float* %2228, align 4, !tbaa !85, !noalias !89
  %2230 = fcmp fast olt float %2229, %2094
  %2231 = icmp sgt i32 %2170, 0
  %2232 = and i1 %2231, %2230
  br i1 %2232, label %2233, label %2270

; <label>:2233                                    ; preds = %2227
  br label %2234

; <label>:2234                                    ; preds = %2263, %2233
  %2235 = phi float [ %2264, %2263 ], [ %2092, %2233 ]
  %2236 = phi float [ %2265, %2263 ], [ %2093, %2233 ]
  %2237 = phi float [ %2245, %2263 ], [ %2229, %2233 ]
  %2238 = phi i32 [ %2242, %2263 ], [ %2187, %2233 ]
  %2239 = getelementptr inbounds [3 x float], [3 x float]* %59, i32 0, i32 %2238
  %2240 = load float, float* %2239, align 4, !tbaa !85, !noalias !89
  %2241 = icmp slt i32 %2238, 2
  %2242 = add nsw i32 %2238, 1
  %2243 = getelementptr inbounds [3 x float], [3 x float]* %58, i32 0, i32 %2242
  %2244 = load float, float* %2243, align 4, !tbaa !85, !noalias !89
  %2245 = select i1 %2241, float %2244, float %2008
  %2246 = call float @dx.op.binary.f32(i32 36, float %2245, float %2240)  ; FMin(a,b)
  %2247 = call float @dx.op.binary.f32(i32 36, float %2094, float %2246)  ; FMin(a,b)
  %2248 = icmp eq i32 %1958, 0
  %2249 = fadd fast float %2247, %2237
  %2250 = fmul fast float %2249, %1939
  %2251 = fadd fast float %2250, %1952
  br i1 %2248, label %2257, label %2252

; <label>:2252                                    ; preds = %2234
  %2253 = fsub fast float %2247, %2237
  %2254 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2253)  ; FMax(a,b)
  %2255 = fmul fast float %2254, %2251
  %2256 = fadd fast float %2255, %2236
  br label %2263

; <label>:2257                                    ; preds = %2234
  %2258 = fsub fast float %2237, %2247
  %2259 = call float @dx.op.unary.f32(i32 6, float %2258)  ; FAbs(value)
  %2260 = fadd fast float %2259, %2235
  %2261 = fmul fast float %2259, %2251
  %2262 = fsub fast float %2236, %2261
  br label %2263

; <label>:2263                                    ; preds = %2257, %2252
  %2264 = phi float [ %2254, %2252 ], [ %2260, %2257 ]
  %2265 = phi float [ %2256, %2252 ], [ %2262, %2257 ]
  %2266 = fcmp fast olt float %2245, %2094
  %2267 = icmp slt i32 %2242, 3
  %2268 = and i1 %2267, %2266
  br i1 %2268, label %2234, label %2269

; <label>:2269                                    ; preds = %2263
  br label %2270

; <label>:2270                                    ; preds = %2269, %2227
  %2271 = phi float [ %2092, %2227 ], [ %2264, %2269 ]
  %2272 = phi float [ %2093, %2227 ], [ %2265, %2269 ]
  %2273 = fsub fast float %2008, %2271
  %2274 = select i1 %2010, float %2271, float %2273
  %2275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2276 = extractvalue %dx.types.CBufRet.f32 %2275, 0
  %2277 = extractvalue %dx.types.CBufRet.f32 %2275, 1
  %2278 = extractvalue %dx.types.CBufRet.f32 %2275, 2
  %2279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2280 = extractvalue %dx.types.CBufRet.f32 %2279, 0
  %2281 = extractvalue %dx.types.CBufRet.f32 %2279, 1
  %2282 = extractvalue %dx.types.CBufRet.f32 %2279, 2
  %2283 = extractvalue %dx.types.CBufRet.f32 %2279, 3
  %2284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2285 = extractvalue %dx.types.CBufRet.f32 %2284, 3
  %2286 = call float @dx.op.binary.f32(i32 36, float %2272, float %2285)  ; FMin(a,b)
  %2287 = fmul fast float %2283, %2274
  %2288 = call float @dx.op.unary.f32(i32 7, float %2287)  ; Saturate(value)
  %2289 = fsub fast float %2280, %2276
  %2290 = fsub fast float %2281, %2277
  %2291 = fsub fast float %2282, %2278
  %2292 = fmul fast float %2288, %2289
  %2293 = fmul fast float %2288, %2290
  %2294 = fmul fast float %2288, %2291
  %2295 = fadd fast float %2292, %2276
  %2296 = fadd fast float %2293, %2277
  %2297 = fadd fast float %2294, %2278
  %2298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2299 = extractvalue %dx.types.CBufRet.f32 %2298, 0
  %2300 = extractvalue %dx.types.CBufRet.f32 %2298, 1
  %2301 = fadd fast float %2300, %2299
  %2302 = call float @dx.op.unary.f32(i32 7, float %2301)  ; Saturate(value)
  %2303 = extractvalue %dx.types.CBufRet.f32 %2298, 2
  %2304 = extractvalue %dx.types.CBufRet.f32 %2298, 3
  %2305 = fadd fast float %2304, %2303
  %2306 = call float @dx.op.unary.f32(i32 7, float %2305)  ; Saturate(value)
  %2307 = fmul fast float %2302, %2286
  %2308 = fmul fast float %2307, %2306
  br label %2309

; <label>:2309                                    ; preds = %2270, %2189, %2024, %2006, %2004
  %2310 = phi float [ %2033, %2024 ], [ %2192, %2189 ], [ %2274, %2270 ], [ 0.000000e+00, %2004 ], [ 0.000000e+00, %2006 ]
  %2311 = phi float [ %2067, %2024 ], [ %2226, %2189 ], [ %2308, %2270 ], [ 0.000000e+00, %2004 ], [ 0.000000e+00, %2006 ]
  %2312 = phi float [ %2054, %2024 ], [ %2213, %2189 ], [ %2295, %2270 ], [ 0.000000e+00, %2004 ], [ 0.000000e+00, %2006 ]
  %2313 = phi float [ %2055, %2024 ], [ %2214, %2189 ], [ %2296, %2270 ], [ 0.000000e+00, %2004 ], [ 0.000000e+00, %2006 ]
  %2314 = phi float [ %2056, %2024 ], [ %2215, %2189 ], [ %2297, %2270 ], [ 0.000000e+00, %2004 ], [ 0.000000e+00, %2006 ]
  %2315 = fmul fast float %1947, %2311
  %2316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2317 = extractvalue %dx.types.CBufRet.f32 %2316, 2
  %2318 = fsub fast float %1954, %2317
  %2319 = fcmp fast olt float %2315, -2.000000e+01
  %2320 = call float @dx.op.unary.f32(i32 21, float %2315)  ; Exp(value)
  %2321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2322 = extractvalue %dx.types.CBufRet.f32 %2321, 2
  %2323 = extractvalue %dx.types.CBufRet.f32 %2321, 3
  %2324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2325 = extractvalue %dx.types.CBufRet.f32 %2324, 2
  %2326 = fmul fast float %2323, %2318
  %2327 = call float @dx.op.unary.f32(i32 7, float %2326)  ; Saturate(value)
  %2328 = fsub fast float 1.000000e+00, %2327
  %2329 = fmul fast float %1939, 5.000000e-01
  %2330 = fadd fast float %2329, 5.000000e-01
  %2331 = call float @dx.op.unary.f32(i32 7, float %2330)  ; Saturate(value)
  %2332 = fsub fast float 1.000000e+00, %2331
  %2333 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2328)  ; FMax(a,b)
  %2334 = fdiv fast float %2332, %2333
  %2335 = fsub fast float %2318, %1896
  %2336 = call float @dx.op.unary.f32(i32 6, float %2335)  ; FAbs(value)
  %2337 = fmul fast float %2336, %2322
  %2338 = call float @dx.op.unary.f32(i32 7, float %2334)  ; Saturate(value)
  %2339 = fsub fast float 1.000000e+00, %2337
  %2340 = fmul fast float %2339, %2338
  %2341 = fadd fast float %2340, %2337
  %2342 = fmul fast float %2325, %2318
  %2343 = call float @dx.op.unary.f32(i32 7, float %2342)  ; Saturate(value)
  %2344 = fsub fast float 1.000000e+00, %2341
  %2345 = fmul fast float %2344, %2343
  %2346 = fadd fast float %2345, %2341
  %2347 = call float @dx.op.unary.f32(i32 7, float %2346)  ; Saturate(value)
  %2348 = fadd fast float %2320, -1.000000e+00
  %2349 = select i1 %2319, float -1.000000e+00, float %2348
  %2350 = fmul fast float %2347, %2349
  %2351 = fadd fast float %2350, 1.000000e+00
  %2352 = fsub fast float -0.000000e+00, %2350
  %2353 = fmul fast float %2312, %2352
  %2354 = fmul fast float %2313, %2352
  %2355 = fmul fast float %2314, %2352
  br label %2356

; <label>:2356                                    ; preds = %2309, %1905
  %2357 = phi float [ %2310, %2309 ], [ 0.000000e+00, %1905 ]
  %2358 = phi float [ %2351, %2309 ], [ 1.000000e+00, %1905 ]
  %2359 = phi float [ %2353, %2309 ], [ 0.000000e+00, %1905 ]
  %2360 = phi float [ %2354, %2309 ], [ 0.000000e+00, %1905 ]
  %2361 = phi float [ %2355, %2309 ], [ 0.000000e+00, %1905 ]
  %2362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2363 = extractvalue %dx.types.CBufRet.f32 %2362, 1
  %2364 = fsub fast float 1.000000e+00, %2358
  %2365 = fmul fast float %2364, %1940
  %2366 = fmul fast float %2365, %2363
  %2367 = fsub fast float %1940, %2366
  br i1 %1933, label %2368, label %2397, !dx.controlflow.hints !125

; <label>:2368                                    ; preds = %2356
  %2369 = fmul fast float %1941, %1930
  %2370 = fadd fast float %2369, %1931
  %2371 = call float @dx.op.unary.f32(i32 7, float %2370)  ; Saturate(value)
  %2372 = fmul fast float %1912, %2367
  %2373 = fsub fast float -0.000000e+00, %2372
  %2374 = fmul fast float %1913, %2367
  %2375 = fsub fast float -0.000000e+00, %2374
  %2376 = call float @dx.op.unary.f32(i32 21, float %2373)  ; Exp(value)
  %2377 = call float @dx.op.unary.f32(i32 21, float %2375)  ; Exp(value)
  %2378 = call float @dx.op.binary.f32(i32 35, float %1920, float %2376)  ; FMax(a,b)
  %2379 = call float @dx.op.binary.f32(i32 35, float %1920, float %2377)  ; FMax(a,b)
  %2380 = fsub fast float %2379, %2378
  %2381 = fmul fast float %2380, %2371
  %2382 = fadd fast float %2381, %2378
  %2383 = call float @dx.op.unary.f32(i32 7, float %2382)  ; Saturate(value)
  %2384 = fsub fast float %1917, %1922
  %2385 = fsub fast float %1918, %1923
  %2386 = fsub fast float %1919, %1924
  %2387 = fmul fast float %2371, %2384
  %2388 = fmul fast float %2371, %2385
  %2389 = fmul fast float %2371, %2386
  %2390 = fadd fast float %2387, %1922
  %2391 = fadd fast float %2388, %1923
  %2392 = fadd fast float %2389, %1924
  %2393 = fsub fast float 1.000000e+00, %2383
  %2394 = fmul fast float %2393, %2390
  %2395 = fmul fast float %2393, %2391
  %2396 = fmul fast float %2393, %2392
  br label %2456

; <label>:2397                                    ; preds = %2356
  %2398 = fmul fast float %2367, %1929
  %2399 = call float @dx.op.unary.f32(i32 7, float %2398)  ; Saturate(value)
  %2400 = fsub fast float 2.000000e+00, %2399
  %2401 = fmul fast float %2399, 9.921875e-01
  %2402 = fmul fast float %2401, %2400
  %2403 = fadd fast float %2402, 3.906250e-03
  %2404 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %26, float %2403, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2405 = extractvalue %dx.types.ResRet.f32 %2404, 0
  %2406 = fsub fast float %2399, %2405
  %2407 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2406)  ; FMax(a,b)
  %2408 = fmul fast float %1915, %1896
  %2409 = call float @dx.op.unary.f32(i32 6, float %2408)  ; FAbs(value)
  %2410 = fcmp fast ogt float %2409, 0x3EB0C6F7A0000000
  br i1 %2410, label %2411, label %2417, !dx.controlflow.hints !126

; <label>:2411                                    ; preds = %2397
  %2412 = fmul fast float %2408, 0xBFF7154760000000
  %2413 = call float @dx.op.unary.f32(i32 21, float %2412)  ; Exp(value)
  %2414 = fsub fast float 1.000000e+00, %2413
  %2415 = fdiv fast float %2414, %2408
  %2416 = fmul fast float %2415, %1925
  br label %2417

; <label>:2417                                    ; preds = %2411, %2397
  %2418 = phi float [ %2416, %2411 ], [ %1925, %2397 ]
  %2419 = fadd fast float %2418, %1927
  %2420 = fmul fast float %2419, %2407
  %2421 = fmul fast float %1912, %2420
  %2422 = fsub fast float -0.000000e+00, %2421
  %2423 = fmul fast float %1913, %2420
  %2424 = fsub fast float -0.000000e+00, %2423
  %2425 = fmul fast float %1914, %2420
  %2426 = fsub fast float -0.000000e+00, %2425
  %2427 = call float @dx.op.unary.f32(i32 21, float %2422)  ; Exp(value)
  %2428 = call float @dx.op.unary.f32(i32 21, float %2424)  ; Exp(value)
  %2429 = call float @dx.op.unary.f32(i32 21, float %2426)  ; Exp(value)
  %2430 = fmul fast float %1941, %1941
  %2431 = fadd fast float %2430, 1.000000e+00
  %2432 = fmul fast float %2431, 0x3FAE8EC8A0000000
  %2433 = fmul fast float %2432, %1922
  %2434 = fmul fast float %2432, %1923
  %2435 = fmul fast float %2432, %1924
  %2436 = fmul fast float %1941, %1920
  %2437 = fsub fast float 1.000000e+00, %2436
  %2438 = fmul fast float %1920, %1920
  %2439 = fsub fast float 1.000000e+00, %2438
  %2440 = fmul fast float %2439, 0x3FB45F3060000000
  %2441 = fmul fast float %2437, %2437
  %2442 = fdiv fast float 1.000000e+00, %2441
  %2443 = fmul fast float %2440, %2442
  %2444 = fmul fast float %2443, %1917
  %2445 = fmul fast float %2443, %1918
  %2446 = fmul fast float %2443, %1919
  %2447 = fadd fast float %2444, %2433
  %2448 = fadd fast float %2445, %2434
  %2449 = fadd fast float %2446, %2435
  %2450 = fsub fast float 1.000000e+00, %2427
  %2451 = fsub fast float 1.000000e+00, %2428
  %2452 = fsub fast float 1.000000e+00, %2429
  %2453 = fmul fast float %2447, %2450
  %2454 = fmul fast float %2448, %2451
  %2455 = fmul fast float %2449, %2452
  br label %2456

; <label>:2456                                    ; preds = %2417, %2368
  %2457 = phi float [ %2394, %2368 ], [ %2453, %2417 ]
  %2458 = phi float [ %2395, %2368 ], [ %2454, %2417 ]
  %2459 = phi float [ %2396, %2368 ], [ %2455, %2417 ]
  %2460 = phi float [ %2383, %2368 ], [ %2427, %2417 ]
  %2461 = phi float [ %2383, %2368 ], [ %2428, %2417 ]
  %2462 = phi float [ %2383, %2368 ], [ %2429, %2417 ]
  br i1 %1949, label %2463, label %2661, !dx.controlflow.hints !127

; <label>:2463                                    ; preds = %2456
  %2464 = extractvalue %dx.types.CBufRet.f32 %2362, 0
  %2465 = fmul fast float %2464, %2364
  %2466 = fsub fast float %2359, %2457
  %2467 = fsub fast float %2360, %2458
  %2468 = fsub fast float %2361, %2459
  %2469 = fmul fast float %2465, %2466
  %2470 = fmul fast float %2465, %2467
  %2471 = fmul fast float %2465, %2468
  %2472 = fadd fast float %2469, %2457
  %2473 = fadd fast float %2470, %2458
  %2474 = fadd fast float %2471, %2459
  %2475 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2460)  ; FMax(a,b)
  %2476 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2461)  ; FMax(a,b)
  %2477 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2462)  ; FMax(a,b)
  %2478 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2358)  ; FMax(a,b)
  %2479 = call float @dx.op.binary.f32(i32 35, float %2357, float %2367)  ; FMax(a,b)
  %2480 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2479)  ; FMax(a,b)
  %2481 = fdiv fast float %2357, %2480
  %2482 = call float @dx.op.unary.f32(i32 7, float %2481)  ; Saturate(value)
  %2483 = fdiv fast float %2367, %2480
  %2484 = call float @dx.op.unary.f32(i32 7, float %2483)  ; Saturate(value)
  %2485 = fcmp fast une float %2478, 1.000000e+00
  br i1 %2485, label %2486, label %2499, !dx.controlflow.hints !128

; <label>:2486                                    ; preds = %2463
  %2487 = call float @dx.op.unary.f32(i32 23, float %2478)  ; Log(value)
  %2488 = fmul fast float %2487, 0x3FE62E4300000000
  %2489 = fmul fast float %2359, %2488
  %2490 = fsub fast float -0.000000e+00, %2489
  %2491 = fmul fast float %2360, %2488
  %2492 = fsub fast float -0.000000e+00, %2491
  %2493 = fmul fast float %2361, %2488
  %2494 = fsub fast float -0.000000e+00, %2493
  %2495 = fsub fast float 1.000000e+00, %2478
  %2496 = fdiv fast float %2490, %2495
  %2497 = fdiv fast float %2492, %2495
  %2498 = fdiv fast float %2494, %2495
  br label %2499

; <label>:2499                                    ; preds = %2486, %2463
  %2500 = phi float [ %2496, %2486 ], [ %2359, %2463 ]
  %2501 = phi float [ %2497, %2486 ], [ %2360, %2463 ]
  %2502 = phi float [ %2498, %2486 ], [ %2361, %2463 ]
  %2503 = phi float [ %2488, %2486 ], [ 0.000000e+00, %2463 ]
  %2504 = fcmp fast une float %2475, 1.000000e+00
  br i1 %2504, label %2505, label %2512, !dx.controlflow.hints !129

; <label>:2505                                    ; preds = %2499
  %2506 = call float @dx.op.unary.f32(i32 23, float %2475)  ; Log(value)
  %2507 = fmul fast float %2506, 0x3FE62E4300000000
  %2508 = fmul fast float %2472, %2507
  %2509 = fsub fast float -0.000000e+00, %2508
  %2510 = fsub fast float 1.000000e+00, %2475
  %2511 = fdiv fast float %2509, %2510
  br label %2512

; <label>:2512                                    ; preds = %2505, %2499
  %2513 = phi float [ %2511, %2505 ], [ %2472, %2499 ]
  %2514 = phi float [ %2507, %2505 ], [ 0.000000e+00, %2499 ]
  %2515 = fcmp fast une float %2476, 1.000000e+00
  br i1 %2515, label %2516, label %2523, !dx.controlflow.hints !129

; <label>:2516                                    ; preds = %2512
  %2517 = call float @dx.op.unary.f32(i32 23, float %2476)  ; Log(value)
  %2518 = fmul fast float %2517, 0x3FE62E4300000000
  %2519 = fmul fast float %2473, %2518
  %2520 = fsub fast float -0.000000e+00, %2519
  %2521 = fsub fast float 1.000000e+00, %2476
  %2522 = fdiv fast float %2520, %2521
  br label %2523

; <label>:2523                                    ; preds = %2516, %2512
  %2524 = phi float [ %2522, %2516 ], [ %2473, %2512 ]
  %2525 = phi float [ %2518, %2516 ], [ 0.000000e+00, %2512 ]
  %2526 = fcmp fast une float %2477, 1.000000e+00
  br i1 %2526, label %2527, label %2534, !dx.controlflow.hints !129

; <label>:2527                                    ; preds = %2523
  %2528 = call float @dx.op.unary.f32(i32 23, float %2477)  ; Log(value)
  %2529 = fmul fast float %2528, 0x3FE62E4300000000
  %2530 = fmul fast float %2474, %2529
  %2531 = fsub fast float -0.000000e+00, %2530
  %2532 = fsub fast float 1.000000e+00, %2477
  %2533 = fdiv fast float %2531, %2532
  br label %2534

; <label>:2534                                    ; preds = %2527, %2523
  %2535 = phi float [ %2533, %2527 ], [ %2474, %2523 ]
  %2536 = phi float [ %2529, %2527 ], [ 0.000000e+00, %2523 ]
  %2537 = fmul fast float %2500, %2484
  %2538 = fmul fast float %2501, %2484
  %2539 = fmul fast float %2502, %2484
  %2540 = fmul fast float %2503, %2484
  %2541 = fmul fast float %2513, %2482
  %2542 = fmul fast float %2524, %2482
  %2543 = fmul fast float %2535, %2482
  %2544 = fmul fast float %2514, %2482
  %2545 = fmul fast float %2525, %2482
  %2546 = fmul fast float %2536, %2482
  %2547 = fadd fast float %2541, %2537
  %2548 = fadd fast float %2542, %2538
  %2549 = fadd fast float %2543, %2539
  %2550 = fadd fast float %2544, %2540
  %2551 = fadd fast float %2545, %2540
  %2552 = fadd fast float %2546, %2540
  %2553 = fcmp fast une float %2550, 0.000000e+00
  br i1 %2553, label %2554, label %2561, !dx.controlflow.hints !130

; <label>:2554                                    ; preds = %2534
  %2555 = fmul fast float %2550, 0x3FF7154760000000
  %2556 = call float @dx.op.unary.f32(i32 21, float %2555)  ; Exp(value)
  %2557 = fsub fast float 1.000000e+00, %2556
  %2558 = fmul fast float %2547, %2557
  %2559 = fsub fast float -0.000000e+00, %2558
  %2560 = fdiv fast float %2559, %2550
  br label %2561

; <label>:2561                                    ; preds = %2554, %2534
  %2562 = phi float [ %2556, %2554 ], [ 1.000000e+00, %2534 ]
  %2563 = phi float [ %2560, %2554 ], [ %2547, %2534 ]
  %2564 = fcmp fast une float %2551, 0.000000e+00
  br i1 %2564, label %2565, label %2572, !dx.controlflow.hints !130

; <label>:2565                                    ; preds = %2561
  %2566 = fmul fast float %2551, 0x3FF7154760000000
  %2567 = call float @dx.op.unary.f32(i32 21, float %2566)  ; Exp(value)
  %2568 = fsub fast float 1.000000e+00, %2567
  %2569 = fmul fast float %2548, %2568
  %2570 = fsub fast float -0.000000e+00, %2569
  %2571 = fdiv fast float %2570, %2551
  br label %2572

; <label>:2572                                    ; preds = %2565, %2561
  %2573 = phi float [ %2567, %2565 ], [ 1.000000e+00, %2561 ]
  %2574 = phi float [ %2571, %2565 ], [ %2548, %2561 ]
  %2575 = fcmp fast une float %2552, 0.000000e+00
  br i1 %2575, label %2576, label %2583, !dx.controlflow.hints !130

; <label>:2576                                    ; preds = %2572
  %2577 = fmul fast float %2552, 0x3FF7154760000000
  %2578 = call float @dx.op.unary.f32(i32 21, float %2577)  ; Exp(value)
  %2579 = fsub fast float 1.000000e+00, %2578
  %2580 = fmul fast float %2549, %2579
  %2581 = fsub fast float -0.000000e+00, %2580
  %2582 = fdiv fast float %2581, %2552
  br label %2583

; <label>:2583                                    ; preds = %2576, %2572
  %2584 = phi float [ %2578, %2576 ], [ 1.000000e+00, %2572 ]
  %2585 = phi float [ %2582, %2576 ], [ %2549, %2572 ]
  %2586 = fcmp fast ogt float %2482, %2484
  br i1 %2586, label %2587, label %2607

; <label>:2587                                    ; preds = %2583
  %2588 = fsub fast float 1.000000e+00, %2484
  %2589 = fmul fast float %2500, %2588
  %2590 = fmul fast float %2501, %2588
  %2591 = fmul fast float %2502, %2588
  %2592 = fmul fast float %2503, %2588
  %2593 = fcmp fast une float %2592, 0.000000e+00
  br i1 %2593, label %2594, label %2645, !dx.controlflow.hints !131

; <label>:2594                                    ; preds = %2587
  %2595 = fmul fast float %2592, 0x3FF7154760000000
  %2596 = call float @dx.op.unary.f32(i32 21, float %2595)  ; Exp(value)
  %2597 = fsub fast float 1.000000e+00, %2596
  %2598 = fmul fast float %2589, %2597
  %2599 = fsub fast float -0.000000e+00, %2598
  %2600 = fmul fast float %2590, %2597
  %2601 = fsub fast float -0.000000e+00, %2600
  %2602 = fmul fast float %2591, %2597
  %2603 = fsub fast float -0.000000e+00, %2602
  %2604 = fdiv fast float %2599, %2592
  %2605 = fdiv fast float %2601, %2592
  %2606 = fdiv fast float %2603, %2592
  br label %2645

; <label>:2607                                    ; preds = %2583
  %2608 = fsub fast float 1.000000e+00, %2482
  %2609 = fmul fast float %2513, %2608
  %2610 = fmul fast float %2524, %2608
  %2611 = fmul fast float %2535, %2608
  %2612 = fmul fast float %2514, %2608
  %2613 = fmul fast float %2525, %2608
  %2614 = fmul fast float %2536, %2608
  %2615 = fcmp fast une float %2612, 0.000000e+00
  br i1 %2615, label %2616, label %2623, !dx.controlflow.hints !130

; <label>:2616                                    ; preds = %2607
  %2617 = fmul fast float %2612, 0x3FF7154760000000
  %2618 = call float @dx.op.unary.f32(i32 21, float %2617)  ; Exp(value)
  %2619 = fsub fast float 1.000000e+00, %2618
  %2620 = fmul fast float %2609, %2619
  %2621 = fsub fast float -0.000000e+00, %2620
  %2622 = fdiv fast float %2621, %2612
  br label %2623

; <label>:2623                                    ; preds = %2616, %2607
  %2624 = phi float [ %2622, %2616 ], [ %2609, %2607 ]
  %2625 = phi float [ %2618, %2616 ], [ 1.000000e+00, %2607 ]
  %2626 = fcmp fast une float %2613, 0.000000e+00
  br i1 %2626, label %2627, label %2634, !dx.controlflow.hints !130

; <label>:2627                                    ; preds = %2623
  %2628 = fmul fast float %2613, 0x3FF7154760000000
  %2629 = call float @dx.op.unary.f32(i32 21, float %2628)  ; Exp(value)
  %2630 = fsub fast float 1.000000e+00, %2629
  %2631 = fmul fast float %2610, %2630
  %2632 = fsub fast float -0.000000e+00, %2631
  %2633 = fdiv fast float %2632, %2613
  br label %2634

; <label>:2634                                    ; preds = %2627, %2623
  %2635 = phi float [ %2633, %2627 ], [ %2610, %2623 ]
  %2636 = phi float [ %2629, %2627 ], [ 1.000000e+00, %2623 ]
  %2637 = fcmp fast une float %2614, 0.000000e+00
  br i1 %2637, label %2638, label %2645, !dx.controlflow.hints !130

; <label>:2638                                    ; preds = %2634
  %2639 = fmul fast float %2614, 0x3FF7154760000000
  %2640 = call float @dx.op.unary.f32(i32 21, float %2639)  ; Exp(value)
  %2641 = fsub fast float 1.000000e+00, %2640
  %2642 = fmul fast float %2611, %2641
  %2643 = fsub fast float -0.000000e+00, %2642
  %2644 = fdiv fast float %2643, %2614
  br label %2645

; <label>:2645                                    ; preds = %2638, %2634, %2594, %2587
  %2646 = phi float [ %2644, %2638 ], [ %2606, %2594 ], [ %2591, %2587 ], [ %2611, %2634 ]
  %2647 = phi float [ %2635, %2638 ], [ %2605, %2594 ], [ %2590, %2587 ], [ %2635, %2634 ]
  %2648 = phi float [ %2624, %2638 ], [ %2604, %2594 ], [ %2589, %2587 ], [ %2624, %2634 ]
  %2649 = phi float [ %2640, %2638 ], [ %2596, %2594 ], [ 1.000000e+00, %2587 ], [ 1.000000e+00, %2634 ]
  %2650 = phi float [ %2636, %2638 ], [ %2596, %2594 ], [ 1.000000e+00, %2587 ], [ %2636, %2634 ]
  %2651 = phi float [ %2625, %2638 ], [ %2596, %2594 ], [ 1.000000e+00, %2587 ], [ %2625, %2634 ]
  %2652 = fmul fast float %2651, %2563
  %2653 = fmul fast float %2650, %2574
  %2654 = fmul fast float %2649, %2585
  %2655 = fadd fast float %2652, %2648
  %2656 = fadd fast float %2653, %2647
  %2657 = fadd fast float %2654, %2646
  %2658 = fmul fast float %2651, %2562
  %2659 = fmul fast float %2650, %2573
  %2660 = fmul fast float %2649, %2584
  br label %2661

; <label>:2661                                    ; preds = %2645, %2456
  %2662 = phi float [ %2660, %2645 ], [ %2462, %2456 ]
  %2663 = phi float [ %2659, %2645 ], [ %2461, %2456 ]
  %2664 = phi float [ %2658, %2645 ], [ %2460, %2456 ]
  %2665 = phi float [ %2657, %2645 ], [ %2459, %2456 ]
  %2666 = phi float [ %2656, %2645 ], [ %2458, %2456 ]
  %2667 = phi float [ %2655, %2645 ], [ %2457, %2456 ]
  %2668 = fmul fast float %2667, %1641
  %2669 = fmul fast float %2666, %1641
  %2670 = fmul fast float %2665, %1641
  %2671 = fmul fast float %2664, %1904
  %2672 = call float @dx.op.dot3.f32(i32 55, float %2664, float %2663, float %2662, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2673 = call float @dx.op.dot3.f32(i32 55, float %2668, float %2669, float %2670, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2674 = select i1 %134, float %2672, float %2664
  %2675 = select i1 %134, float %2672, float %2663
  %2676 = select i1 %134, float 1.000000e+00, float %2662
  %2677 = select i1 %134, float %2673, float %2668
  %2678 = select i1 %134, float 0.000000e+00, float %2669
  %2679 = select i1 %134, float 0.000000e+00, float %2670
  %2680 = fmul fast float %2674, %1898
  %2681 = fmul fast float %2675, %1899
  %2682 = fmul fast float %2676, %1900
  %2683 = fadd fast float %2680, %2677
  %2684 = fadd fast float %2681, %2678
  %2685 = fadd fast float %2679, %2682
  %2686 = fmul fast float %2674, %1901
  %2687 = fmul fast float %2675, %1902
  %2688 = fmul fast float %2676, %1903
  %2689 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2690 = extractvalue %dx.types.CBufRet.i32 %2689, 0
  %2691 = icmp eq i32 %2690, 0
  br i1 %2691, label %2960, label %2692, !dx.controlflow.hints !132

; <label>:2692                                    ; preds = %2661
  %2693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2694 = extractvalue %dx.types.CBufRet.f32 %2693, 2
  %2695 = extractvalue %dx.types.CBufRet.f32 %2693, 3
  %2696 = fmul fast float %2694, %64
  %2697 = fmul fast float %2695, %65
  %2698 = fmul fast float %2696, 2.000000e+00
  %2699 = fmul fast float %2697, 2.000000e+00
  %2700 = fsub fast float 1.000000e+00, %2698
  %2701 = fsub fast float 1.000000e+00, %2699
  %2702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2703 = extractvalue %dx.types.CBufRet.f32 %2702, 0
  %2704 = extractvalue %dx.types.CBufRet.f32 %2702, 1
  %2705 = extractvalue %dx.types.CBufRet.f32 %2702, 2
  %2706 = fmul fast float %2700, %2703
  %2707 = fmul fast float %2700, %2704
  %2708 = fmul fast float %2700, %2705
  %2709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2710 = extractvalue %dx.types.CBufRet.f32 %2709, 0
  %2711 = extractvalue %dx.types.CBufRet.f32 %2709, 1
  %2712 = extractvalue %dx.types.CBufRet.f32 %2709, 2
  %2713 = fmul fast float %2701, %2710
  %2714 = fmul fast float %2701, %2711
  %2715 = fmul fast float %2701, %2712
  %2716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2717 = extractvalue %dx.types.CBufRet.f32 %2716, 0
  %2718 = extractvalue %dx.types.CBufRet.f32 %2716, 1
  %2719 = extractvalue %dx.types.CBufRet.f32 %2716, 2
  %2720 = fadd fast float %2713, %2717
  %2721 = fadd fast float %2720, %2706
  %2722 = fadd fast float %2714, %2718
  %2723 = fadd fast float %2722, %2707
  %2724 = fadd fast float %2715, %2719
  %2725 = fadd fast float %2724, %2708
  %2726 = fmul fast float %2721, %1897
  %2727 = fmul fast float %2723, %1897
  %2728 = fmul fast float %2725, %1897
  %2729 = fmul fast float %2726, %2726
  %2730 = fmul fast float %2727, %2727
  %2731 = fadd fast float %2729, %2730
  %2732 = fmul fast float %2728, %2728
  %2733 = fadd fast float %2731, %2732
  %2734 = call float @dx.op.unary.f32(i32 24, float %2733)  ; Sqrt(value)
  %2735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2736 = extractvalue %dx.types.CBufRet.f32 %2735, 0
  %2737 = fsub fast float %2734, %2736
  %2738 = extractvalue %dx.types.CBufRet.f32 %2735, 2
  %2739 = fmul fast float %2737, %2738
  %2740 = call float @dx.op.unary.f32(i32 7, float %2739)  ; Saturate(value)
  %2741 = fadd fast float %2740, -5.000000e-01
  %2742 = fmul fast float %2741, 2.000000e+00
  %2743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2744 = extractvalue %dx.types.CBufRet.f32 %2743, 2
  %2745 = call float @dx.op.binary.f32(i32 36, float %2744, float %2742)  ; FMin(a,b)
  %2746 = fsub fast float -0.000000e+00, %2744
  %2747 = fcmp fast ogt float %2745, %2746
  br i1 %2747, label %2748, label %2960, !dx.controlflow.hints !133

; <label>:2748                                    ; preds = %2692
  %2749 = fmul fast float %2745, 5.000000e-01
  %2750 = fadd fast float %2749, 5.000000e-01
  %2751 = call float @dx.op.unary.f32(i32 22, float %2750)  ; Frc(value)
  %2752 = call float @dx.op.unary.f32(i32 27, float %2751)  ; Round_ni(value)
  %2753 = call float @dx.op.unary.f32(i32 22, float %2751)  ; Frc(value)
  %2754 = fmul fast float %2753, 2.000000e+00
  %2755 = fadd fast float %2754, -1.000000e+00
  %2756 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %26, float %2696, float %2697, float %2752, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2757 = extractvalue %dx.types.ResRet.f32 %2756, 0
  %2758 = extractvalue %dx.types.ResRet.f32 %2756, 1
  %2759 = extractvalue %dx.types.ResRet.f32 %2756, 2
  %2760 = extractvalue %dx.types.ResRet.f32 %2756, 3
  %2761 = fadd fast float %2757, -5.000000e-01
  %2762 = fadd fast float %2759, -5.000000e-01
  %2763 = fmul fast float %2761, 0xBFD5555560000000
  %2764 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2762, float %2763)  ; FMad(a,b,c)
  %2765 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2758, float 0.000000e+00)  ; FMad(a,b,c)
  %2766 = fadd fast float %2765, %2760
  %2767 = fmul fast float %2761, -7.500000e-01
  %2768 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2762, float %2767)  ; FMad(a,b,c)
  %2769 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2758, float 0.000000e+00)  ; FMad(a,b,c)
  %2770 = fadd fast float %2769, %2760
  %2771 = call float @dx.op.binary.f32(i32 35, float %2764, float -1.000000e+00)  ; FMax(a,b)
  %2772 = call float @dx.op.binary.f32(i32 35, float %2766, float -1.000000e+00)  ; FMax(a,b)
  %2773 = call float @dx.op.binary.f32(i32 35, float %2768, float -1.000000e+00)  ; FMax(a,b)
  %2774 = call float @dx.op.binary.f32(i32 35, float %2770, float -1.000000e+00)  ; FMax(a,b)
  %2775 = call float @dx.op.binary.f32(i32 36, float %2771, float 1.000000e+00)  ; FMin(a,b)
  %2776 = call float @dx.op.binary.f32(i32 36, float %2772, float 1.000000e+00)  ; FMin(a,b)
  %2777 = call float @dx.op.binary.f32(i32 36, float %2773, float 1.000000e+00)  ; FMin(a,b)
  %2778 = call float @dx.op.binary.f32(i32 36, float %2774, float 1.000000e+00)  ; FMin(a,b)
  %2779 = fcmp fast olt float %2775, 0x3FEFFF8020000000
  br i1 %2779, label %2780, label %2895, !dx.controlflow.hints !134

; <label>:2780                                    ; preds = %2748
  %2781 = extractvalue %dx.types.CBufRet.f32 %2743, 3
  %2782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %2783 = extractvalue %dx.types.CBufRet.f32 %2782, 0
  %2784 = extractvalue %dx.types.CBufRet.f32 %2782, 1
  %2785 = extractvalue %dx.types.CBufRet.f32 %2782, 2
  %2786 = extractvalue %dx.types.CBufRet.f32 %2782, 3
  %2787 = fsub fast float %2783, %2775
  %2788 = fsub fast float %2784, %2776
  %2789 = fsub fast float %2785, %2777
  %2790 = fsub fast float %2786, %2778
  %2791 = fmul fast float %2787, %2781
  %2792 = fmul fast float %2788, %2781
  %2793 = fmul fast float %2789, %2781
  %2794 = fmul fast float %2790, %2781
  %2795 = fadd fast float %2791, %2775
  %2796 = fadd fast float %2792, %2776
  %2797 = fsub fast float -0.000000e+00, %2796
  %2798 = fadd fast float %2793, %2777
  %2799 = fadd fast float %2794, %2778
  %2800 = fmul fast float %2795, %2795
  %2801 = fsub fast float %2796, %2800
  %2802 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2801)  ; FMax(a,b)
  %2803 = fdiv fast float 1.000000e+00, %2802
  %2804 = fmul fast float %2796, %2795
  %2805 = fsub fast float %2798, %2804
  %2806 = fsub fast float %2755, %2795
  %2807 = fmul fast float %2755, %2755
  %2808 = fsub fast float %2807, %2796
  %2809 = fmul fast float %2806, %2803
  %2810 = fmul fast float %2809, %2805
  %2811 = fsub fast float %2808, %2810
  %2812 = fmul fast float %2796, %2796
  %2813 = fsub fast float %2799, %2812
  %2814 = fmul fast float %2805, %2805
  %2815 = fmul fast float %2814, %2803
  %2816 = fsub fast float %2813, %2815
  %2817 = fdiv fast float %2811, %2816
  %2818 = fmul fast float %2805, %2817
  %2819 = fsub fast float %2806, %2818
  %2820 = fmul fast float %2819, %2803
  %2821 = fmul fast float %2820, %2795
  %2822 = fsub fast float 1.000000e+00, %2821
  %2823 = fmul fast float %2796, %2817
  %2824 = fsub fast float %2822, %2823
  %2825 = fmul fast float %2820, %2820
  %2826 = fmul fast float %2817, 4.000000e+00
  %2827 = fmul fast float %2826, %2824
  %2828 = fsub fast float %2825, %2827
  %2829 = call float @dx.op.unary.f32(i32 24, float %2828)  ; Sqrt(value)
  %2830 = fcmp fast oge float %2820, 0.000000e+00
  %2831 = fsub fast float -0.000000e+00, %2829
  %2832 = select i1 %2830, float %2831, float %2829
  %2833 = fsub fast float %2832, %2820
  %2834 = fdiv fast float %2833, %2817
  %2835 = fdiv fast float %2824, %2833
  %2836 = fmul fast float %2834, 5.000000e-01
  %2837 = fmul fast float %2835, 2.000000e+00
  %2838 = select i1 %2830, float %2836, float %2837
  %2839 = select i1 %2830, float %2837, float %2836
  %2840 = call float @dx.op.binary.f32(i32 35, float %2838, float %2839)  ; FMax(a,b)
  %2841 = call float @dx.op.binary.f32(i32 36, float %2838, float %2839)  ; FMin(a,b)
  %2842 = fcmp fast ogt float %2755, %2841
  br i1 %2842, label %2843, label %2853

; <label>:2843                                    ; preds = %2780
  %2844 = fsub fast float %2755, %2841
  %2845 = fsub fast float %2840, %2841
  %2846 = fmul fast float %2844, %2845
  %2847 = fmul fast float %2840, %2755
  %2848 = fadd fast float %2840, %2755
  %2849 = fmul fast float %2848, %2795
  %2850 = fadd fast float %2847, %2796
  %2851 = fsub fast float %2850, %2849
  %2852 = fdiv fast float %2851, %2846
  br label %2853

; <label>:2853                                    ; preds = %2843, %2780
  %2854 = phi float [ %2852, %2843 ], [ 0.000000e+00, %2780 ]
  %2855 = fcmp fast ogt float %2755, %2840
  %2856 = fsub fast float %2755, %2840
  br i1 %2855, label %2857, label %2867

; <label>:2857                                    ; preds = %2853
  %2858 = fsub fast float %2840, %2841
  %2859 = fmul fast float %2858, %2856
  %2860 = fmul fast float %2841, %2755
  %2861 = fadd fast float %2841, %2755
  %2862 = fmul fast float %2861, %2795
  %2863 = fsub fast float %2797, %2860
  %2864 = fadd fast float %2863, %2862
  %2865 = fdiv fast float %2864, %2859
  %2866 = fadd fast float %2865, %2854
  br label %2867

; <label>:2867                                    ; preds = %2857, %2853
  %2868 = phi float [ %2866, %2857 ], [ %2854, %2853 ]
  %2869 = fsub fast float %2755, %2841
  %2870 = fmul fast float %2869, %2856
  %2871 = fmul fast float %2841, %2840
  %2872 = fadd fast float %2841, %2840
  %2873 = fmul fast float %2872, %2795
  %2874 = fadd fast float %2871, %2796
  %2875 = fsub fast float %2874, %2873
  %2876 = fdiv fast float %2875, %2870
  %2877 = call float @dx.op.unary.f32(i32 7, float %2868)  ; Saturate(value)
  %2878 = fcmp fast oeq float %1750, 0.000000e+00
  %2879 = extractvalue %dx.types.CBufRet.f32 %2743, 0
  %2880 = fcmp fast oeq float %2879, 0.000000e+00
  %2881 = or i1 %2878, %2880
  %2882 = fmul fast float %2879, 2.000000e+00
  %2883 = fadd fast float %2744, %2745
  %2884 = fdiv fast float %2883, %2882
  %2885 = call float @dx.op.unary.f32(i32 7, float %2884)  ; Saturate(value)
  %2886 = fmul fast float %2885, 2.000000e+00
  %2887 = fsub fast float 3.000000e+00, %2886
  %2888 = fmul fast float %2885, %2885
  %2889 = fmul fast float %2888, %2887
  %2890 = select i1 %2881, float 1.000000e+00, float %2889
  %2891 = fmul fast float %2876, %1750
  %2892 = fadd fast float %2877, %2891
  %2893 = call float @dx.op.unary.f32(i32 7, float %2892)  ; Saturate(value)
  %2894 = fmul fast float %2890, %2893
  br label %2895

; <label>:2895                                    ; preds = %2867, %2748
  %2896 = phi float [ %2894, %2867 ], [ 0.000000e+00, %2748 ]
  %2897 = fsub fast float 1.000000e+00, %2896
  %2898 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %26, float %2696, float %2697, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2899 = extractvalue %dx.types.ResRet.f32 %2898, 0
  %2900 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2901 = extractvalue %dx.types.CBufRet.i32 %2900, 2
  %2902 = icmp eq i32 %2901, 0
  br i1 %2902, label %2908, label %2903

; <label>:2903                                    ; preds = %2895
  %2904 = call float @dx.op.unary.f32(i32 7, float %2896)  ; Saturate(value)
  %2905 = fadd fast float %2899, -1.000000e+00
  %2906 = fmul fast float %2904, %2905
  %2907 = fadd fast float %2906, 1.000000e+00
  br label %2908

; <label>:2908                                    ; preds = %2903, %2895
  %2909 = phi float [ %2907, %2903 ], [ %2897, %2895 ]
  %2910 = call float @dx.op.binary.f32(i32 35, float %2899, float %2909)  ; FMax(a,b)
  %2911 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %2912 = extractvalue %dx.types.CBufRet.i32 %2911, 2
  %2913 = and i32 %2912, 1
  %2914 = icmp eq i32 %2913, 0
  %2915 = fcmp fast une float %2910, 1.000000e+00
  %2916 = and i1 %2915, %2914
  br i1 %2916, label %2917, label %2936

; <label>:2917                                    ; preds = %2908
  %2918 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %26, float %2696, float %2697, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2919 = extractvalue %dx.types.ResRet.f32 %2918, 0
  %2920 = extractvalue %dx.types.ResRet.f32 %2918, 1
  %2921 = extractvalue %dx.types.ResRet.f32 %2918, 2
  %2922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2923 = extractvalue %dx.types.CBufRet.f32 %2922, 1
  %2924 = fmul fast float %2923, %2919
  %2925 = fmul fast float %2923, %2920
  %2926 = fmul fast float %2923, %2921
  %2927 = fcmp fast ogt float %2899, 0x3FEFFF2E40000000
  %2928 = fsub fast float 1.000000e+00, %2910
  %2929 = fsub fast float 1.000000e+00, %2899
  %2930 = fdiv fast float %2928, %2929
  %2931 = call float @dx.op.unary.f32(i32 7, float %2930)  ; Saturate(value)
  %2932 = select i1 %2927, float 0.000000e+00, float %2931
  %2933 = fmul fast float %2924, %2932
  %2934 = fmul fast float %2925, %2932
  %2935 = fmul fast float %2926, %2932
  br label %2936

; <label>:2936                                    ; preds = %2917, %2908
  %2937 = phi float [ 0.000000e+00, %2908 ], [ %2933, %2917 ]
  %2938 = phi float [ 0.000000e+00, %2908 ], [ %2934, %2917 ]
  %2939 = phi float [ 0.000000e+00, %2908 ], [ %2935, %2917 ]
  %2940 = fmul fast float %2937, %1641
  %2941 = fmul fast float %2938, %1641
  %2942 = fmul fast float %2939, %1641
  %2943 = fmul fast float %2910, %2671
  %2944 = call float @dx.op.dot3.f32(i32 55, float %2910, float %2910, float %2910, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2945 = call float @dx.op.dot3.f32(i32 55, float %2940, float %2941, float %2942, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2946 = select i1 %134, float %2944, float %2910
  %2947 = select i1 %134, float 1.000000e+00, float %2910
  %2948 = select i1 %134, float %2945, float %2940
  %2949 = select i1 %134, float 0.000000e+00, float %2941
  %2950 = select i1 %134, float 0.000000e+00, float %2942
  %2951 = fmul fast float %2946, %2683
  %2952 = fmul fast float %2946, %2684
  %2953 = fmul fast float %2947, %2685
  %2954 = fadd fast float %2951, %2948
  %2955 = fadd fast float %2952, %2949
  %2956 = fadd fast float %2950, %2953
  %2957 = fmul fast float %2946, %2686
  %2958 = fmul fast float %2946, %2687
  %2959 = fmul fast float %2947, %2688
  br label %2960

; <label>:2960                                    ; preds = %2936, %2692, %2661, %1893
  %2961 = phi float [ %1898, %1893 ], [ %2683, %2661 ], [ %2954, %2936 ], [ %2683, %2692 ]
  %2962 = phi float [ %1899, %1893 ], [ %2684, %2661 ], [ %2955, %2936 ], [ %2684, %2692 ]
  %2963 = phi float [ %1900, %1893 ], [ %2685, %2661 ], [ %2956, %2936 ], [ %2685, %2692 ]
  %2964 = phi float [ %1901, %1893 ], [ %2686, %2661 ], [ %2957, %2936 ], [ %2686, %2692 ]
  %2965 = phi float [ %1902, %1893 ], [ %2687, %2661 ], [ %2958, %2936 ], [ %2687, %2692 ]
  %2966 = phi float [ %1903, %1893 ], [ %2688, %2661 ], [ %2959, %2936 ], [ %2688, %2692 ]
  %2967 = phi float [ %1904, %1893 ], [ %2671, %2661 ], [ %2943, %2936 ], [ %2671, %2692 ]
  %2968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2969 = extractvalue %dx.types.CBufRet.f32 %2968, 2
  %2970 = extractvalue %dx.types.CBufRet.f32 %2968, 3
  %2971 = fmul fast float %2969, %64
  %2972 = fmul fast float %2970, %65
  %2973 = call float @dx.op.unary.f32(i32 7, float %2971)  ; Saturate(value)
  %2974 = call float @dx.op.unary.f32(i32 7, float %2972)  ; Saturate(value)
  %2975 = select i1 %1040, i32 2, i32 0
  %2976 = or i32 %2975, 1
  %2977 = uitofp i32 %2976 to float
  %2978 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %2973, float %2974, float %2977, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2979 = extractvalue %dx.types.ResRet.f32 %2978, 0
  %2980 = extractvalue %dx.types.ResRet.f32 %2978, 1
  %2981 = extractvalue %dx.types.ResRet.f32 %2978, 2
  %2982 = extractvalue %dx.types.ResRet.f32 %2978, 3
  %2983 = add nuw nsw i32 %2975, 2
  %2984 = uitofp i32 %2983 to float
  %2985 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %2973, float %2974, float %2984, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2986 = extractvalue %dx.types.ResRet.f32 %2985, 0
  %2987 = extractvalue %dx.types.ResRet.f32 %2985, 1
  %2988 = extractvalue %dx.types.ResRet.f32 %2985, 2
  %2989 = extractvalue %dx.types.ResRet.f32 %2985, 3
  %2990 = call float @dx.op.binary.f32(i32 35, float %2980, float %2981)  ; FMax(a,b)
  %2991 = call float @dx.op.binary.f32(i32 35, float %2979, float %2990)  ; FMax(a,b)
  %2992 = call float @dx.op.binary.f32(i32 35, float %2991, float %2982)  ; FMax(a,b)
  %2993 = call float @dx.op.binary.f32(i32 36, float %2987, float %2988)  ; FMin(a,b)
  %2994 = call float @dx.op.binary.f32(i32 36, float %2986, float %2993)  ; FMin(a,b)
  %2995 = call float @dx.op.binary.f32(i32 36, float %2994, float %2989)  ; FMin(a,b)
  %2996 = fmul fast float %2992, 2.550000e+02
  %2997 = fadd fast float %2996, 0x3F70101020000000
  %2998 = fptoui float %2997 to i32
  %2999 = fmul fast float %2995, 2.550000e+02
  %3000 = fadd fast float %2999, 0x3F70101020000000
  %3001 = fptoui float %3000 to i32
  %3002 = icmp ult i32 %2998, %3001
  br i1 %3002, label %3003, label %3049

; <label>:3003                                    ; preds = %2960
  %3004 = fcmp fast ogt float %56, 9.843750e-01
  %3005 = fadd fast float %1897, -4.000000e+00
  %3006 = select i1 %3004, float -4.000000e+00, float %3005
  %3007 = call float @dx.op.binary.f32(i32 35, float %3006, float 0.000000e+00)  ; FMax(a,b)
  %3008 = fadd fast float %1205, %3007
  %3009 = fmul fast float %3008, %1206
  %3010 = call float @dx.op.unary.f32(i32 23, float %3009)  ; Log(value)
  %3011 = fmul fast float %1207, %3010
  %3012 = fmul fast float %3011, %1215
  %3013 = call float @dx.op.unary.f32(i32 7, float %3012)  ; Saturate(value)
  %3014 = uitofp i32 %2998 to float
  %3015 = uitofp i32 %3001 to float
  %3016 = fadd fast float %3014, 5.000000e-01
  %3017 = fadd fast float %3015, 5.000000e-01
  %3018 = fmul fast float %1215, %3016
  %3019 = fmul fast float %1215, %3017
  %3020 = fadd fast float %3018, 0x3F0FFB4800000000
  %3021 = fadd fast float %3019, 0xBF0FFB4800000000
  %3022 = call float @dx.op.binary.f32(i32 35, float %3013, float %3020)  ; FMax(a,b)
  %3023 = call float @dx.op.binary.f32(i32 36, float %3022, float %3021)  ; FMin(a,b)
  %3024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %3025 = extractvalue %dx.types.CBufRet.f32 %3024, 1
  %3026 = extractvalue %dx.types.CBufRet.f32 %3024, 2
  %3027 = extractvalue %dx.types.CBufRet.f32 %3024, 0
  %3028 = select i1 %1040, float %3027, float 0.000000e+00
  %3029 = fmul fast float %3025, %3023
  %3030 = fadd fast float %3028, %3029
  %3031 = fadd fast float %3028, %3026
  %3032 = fsub fast float %3025, %3026
  %3033 = fadd fast float %3032, %3028
  %3034 = call float @dx.op.binary.f32(i32 35, float %3030, float %3031)  ; FMax(a,b)
  %3035 = call float @dx.op.binary.f32(i32 36, float %3034, float %3033)  ; FMin(a,b)
  %3036 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %2973, float %2974, float %3035, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3037 = extractvalue %dx.types.ResRet.f32 %3036, 0
  %3038 = extractvalue %dx.types.ResRet.f32 %3036, 1
  %3039 = extractvalue %dx.types.ResRet.f32 %3036, 2
  %3040 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %2973, float %2974, float %3035, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3041 = extractvalue %dx.types.ResRet.f32 %3040, 0
  %3042 = extractvalue %dx.types.ResRet.f32 %3040, 1
  %3043 = extractvalue %dx.types.ResRet.f32 %3040, 2
  %3044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3045 = extractvalue %dx.types.CBufRet.f32 %3044, 1
  %3046 = fmul fast float %3045, %3041
  %3047 = fmul fast float %3045, %3042
  %3048 = fmul fast float %3045, %3043
  br label %3049

; <label>:3049                                    ; preds = %3003, %2960
  %3050 = phi float [ %3037, %3003 ], [ 1.000000e+00, %2960 ]
  %3051 = phi float [ %3038, %3003 ], [ 1.000000e+00, %2960 ]
  %3052 = phi float [ %3039, %3003 ], [ 1.000000e+00, %2960 ]
  %3053 = phi float [ %3046, %3003 ], [ 0.000000e+00, %2960 ]
  %3054 = phi float [ %3047, %3003 ], [ 0.000000e+00, %2960 ]
  %3055 = phi float [ %3048, %3003 ], [ 0.000000e+00, %2960 ]
  %3056 = fmul fast float %3053, %1641
  %3057 = fmul fast float %3054, %1641
  %3058 = fmul fast float %3055, %1641
  %3059 = fmul fast float %3050, %2967
  %3060 = call float @dx.op.dot3.f32(i32 55, float %3050, float %3051, float %3052, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3061 = call float @dx.op.dot3.f32(i32 55, float %3056, float %3057, float %3058, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3062 = select i1 %134, float %3060, float %3050
  %3063 = select i1 %134, float %3060, float %3051
  %3064 = select i1 %134, float 1.000000e+00, float %3052
  %3065 = select i1 %134, float %3061, float %3056
  %3066 = select i1 %134, float 0.000000e+00, float %3057
  %3067 = select i1 %134, float 0.000000e+00, float %3058
  %3068 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3069 = extractvalue %dx.types.CBufRet.i32 %3068, 3
  %3070 = and i32 %3069, 3
  %3071 = icmp ne i32 %3070, 0
  %3072 = and i32 %3069, 4
  %3073 = icmp ne i32 %3072, 0
  %3074 = and i1 %3071, %3073
  %3075 = and i1 %134, %3074
  br i1 %3075, label %3076, label %3082

; <label>:3076                                    ; preds = %3049
  %3077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %3078 = extractvalue %dx.types.CBufRet.f32 %3077, 1
  %3079 = fadd fast float %3059, -1.000000e+00
  %3080 = fmul fast float %3078, %3079
  %3081 = fadd fast float %3080, 1.000000e+00
  br label %3082

; <label>:3082                                    ; preds = %3076, %3049
  %3083 = phi float [ %3081, %3076 ], [ %3059, %3049 ]
  %3084 = fadd fast float %2964, %2961
  %3085 = fmul fast float %3062, %3084
  %3086 = fadd fast float %3085, %3065
  %3087 = fadd fast float %2965, %2962
  %3088 = fmul fast float %3063, %3087
  %3089 = fadd fast float %3088, %3066
  %3090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3091 = extractvalue %dx.types.CBufRet.f32 %3090, 0
  br i1 %134, label %3092, label %3114

; <label>:3092                                    ; preds = %3082
  %3093 = fadd fast float %3086, %3089
  %3094 = fmul fast float %3091, %3093
  %3095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %3096 = extractvalue %dx.types.CBufRet.f32 %3095, 3
  %3097 = extractvalue %dx.types.CBufRet.f32 %1646, 1
  %3098 = fsub fast float %1649, %3097
  %3099 = extractvalue %dx.types.CBufRet.f32 %1646, 2
  %3100 = fmul fast float %3098, %3099
  %3101 = call float @dx.op.unary.f32(i32 7, float %3100)  ; Saturate(value)
  %3102 = fsub fast float %3101, %3096
  %3103 = fmul fast float %3102, %3083
  %3104 = fadd fast float %3103, %3096
  %3105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %3106 = extractvalue %dx.types.CBufRet.f32 %3105, 0
  %3107 = fsub fast float %3104, %3106
  %3108 = fmul fast float %3107, 1.000000e+01
  %3109 = call float @dx.op.unary.f32(i32 7, float %3108)  ; Saturate(value)
  %3110 = fsub fast float %1016, %1641
  %3111 = fmul fast float %3109, %3110
  %3112 = fadd fast float %3111, %1641
  %3113 = fmul fast float %3112, %3104
  br label %3126

; <label>:3114                                    ; preds = %3082
  %3115 = fadd fast float %2966, %2963
  %3116 = fmul fast float %3064, %3115
  %3117 = fadd fast float %3116, %3067
  %3118 = fmul fast float %3091, %3086
  %3119 = fmul fast float %3091, %3089
  %3120 = fmul fast float %3091, %3117
  %3121 = call float @dx.op.binary.f32(i32 35, float %3119, float %3120)  ; FMax(a,b)
  %3122 = call float @dx.op.binary.f32(i32 35, float %3118, float %3121)  ; FMax(a,b)
  %3123 = call float @dx.op.binary.f32(i32 35, float %3122, float %1641)  ; FMax(a,b)
  %3124 = fcmp fast ugt float %3123, 0x3F10000000000000
  br i1 %3124, label %3126, label %3125

; <label>:3125                                    ; preds = %3114
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %3126

; <label>:3126                                    ; preds = %3125, %3114, %3092
  %3127 = phi float [ %3094, %3092 ], [ %3118, %3125 ], [ %3118, %3114 ]
  %3128 = phi float [ %3113, %3092 ], [ %3119, %3125 ], [ %3119, %3114 ]
  %3129 = phi float [ %3112, %3092 ], [ %3120, %3125 ], [ %3120, %3114 ]
  %3130 = phi float [ %3112, %3092 ], [ %1641, %3125 ], [ %1641, %3114 ]
  %3131 = fadd fast float %565, 0x3FE3C6EF40000000
  %3132 = call float @dx.op.unary.f32(i32 22, float %3131)  ; Frc(value)
  %3133 = call float @dx.op.unary.f32(i32 23, float %3127)  ; Log(value)
  %3134 = fadd fast float %3133, -7.000000e+00
  %3135 = call float @dx.op.unary.f32(i32 21, float %3134)  ; Exp(value)
  %3136 = fmul fast float %3132, 2.000000e+00
  %3137 = fadd fast float %3136, -1.000000e+00
  %3138 = fmul fast float %3135, %3137
  %3139 = fcmp fast ogt float %3127, 0.000000e+00
  %3140 = select i1 %3139, float %3138, float 0.000000e+00
  %3141 = fadd fast float %3140, %3127
  %3142 = fadd fast float %565, 0x3FF3C6EF40000000
  %3143 = call float @dx.op.unary.f32(i32 22, float %3142)  ; Frc(value)
  %3144 = call float @dx.op.unary.f32(i32 23, float %3128)  ; Log(value)
  %3145 = fadd fast float %3144, -7.000000e+00
  %3146 = call float @dx.op.unary.f32(i32 21, float %3145)  ; Exp(value)
  %3147 = fmul fast float %3143, 2.000000e+00
  %3148 = fadd fast float %3147, -1.000000e+00
  %3149 = fmul fast float %3146, %3148
  %3150 = fcmp fast ogt float %3128, 0.000000e+00
  %3151 = select i1 %3150, float %3149, float 0.000000e+00
  %3152 = fadd fast float %3151, %3128
  %3153 = fadd fast float %565, 0x3FFDAA66E0000000
  %3154 = call float @dx.op.unary.f32(i32 22, float %3153)  ; Frc(value)
  %3155 = call float @dx.op.unary.f32(i32 23, float %3129)  ; Log(value)
  %3156 = fadd fast float %3155, -6.000000e+00
  %3157 = call float @dx.op.unary.f32(i32 21, float %3156)  ; Exp(value)
  %3158 = fmul fast float %3154, 2.000000e+00
  %3159 = fadd fast float %3158, -1.000000e+00
  %3160 = fmul fast float %3157, %3159
  %3161 = fcmp fast ogt float %3129, 0.000000e+00
  %3162 = select i1 %3161, float %3160, float 0.000000e+00
  %3163 = fadd fast float %3162, %3129
  %3164 = select i1 %134, float %3128, float %3152
  %3165 = select i1 %134, float %3129, float %3163
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %3166 = call float @dx.op.binary.f32(i32 36, float %3141, float 3.225500e+04)  ; FMin(a,b)
  %3167 = call float @dx.op.binary.f32(i32 36, float %3164, float 3.225500e+04)  ; FMin(a,b)
  %3168 = call float @dx.op.binary.f32(i32 36, float %3165, float 3.225500e+04)  ; FMin(a,b)
  %3169 = call float @dx.op.binary.f32(i32 36, float %3130, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3166)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3167)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3168)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %3169)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %3130)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %3130)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %3130)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %3130)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!42 = !{[41 x i32] [i32 39, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255]}
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
!55 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !56, i8 2, i32 1, i8 4, i32 4, i8 0, !54}
!56 = !{i32 3}
!57 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 5, i8 0, !48}
!58 = !{i32 4}
!59 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !60, i8 3, i32 1, i8 2, i32 6, i8 0, !51}
!60 = !{i32 5}
!61 = !{i32 7, !"TEXCOORD", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 7, i8 0, null}
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

