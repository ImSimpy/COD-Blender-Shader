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
; shader hash: d1c2bb5493830799d4f74c8ff1317a0a
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
  %193 = add i32 %31, 80
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
  %601 = add i32 %31, 72
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
  %648 = add i32 %31, 76
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
  %708 = add i32 %31, 84
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
  br label %848

; <label>:848                                     ; preds = %842, %755
  %849 = phi float [ %847, %842 ], [ %841, %755 ]
  %850 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %231, i32 %232, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %851 = extractvalue %dx.types.ResRet.i32 %850, 0
  %852 = lshr i32 %851, 18
  %853 = uitofp i32 %852 to float
  %854 = fmul fast float %853, 0x3F4C00EBA0000000
  %855 = call float @dx.op.unary.f32(i32 21, float %854)  ; Exp(value)
  %856 = fadd fast float %855, -1.000000e+00
  %857 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %858 = extractvalue %dx.types.Dimensions %857, 0
  %859 = sitofp i32 %858 to float
  %860 = extractvalue %dx.types.Dimensions %857, 1
  %861 = sitofp i32 %860 to float
  %862 = fcmp fast oge float %229, %859
  %863 = fcmp fast oge float %230, %861
  %864 = or i1 %862, %863
  %865 = select i1 %864, float 0x4197782600000000, float %856
  %866 = icmp eq i32 %147, 3
  %867 = fcmp fast ogt float %54, %865
  %868 = and i1 %255, %867
  %869 = or i1 %866, %868
  %870 = icmp eq i32 %147, 2
  %871 = fcmp fast ole float %54, %865
  %872 = and i1 %870, %871
  %873 = or i1 %872, %869
  %874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %875 = extractvalue %dx.types.CBufRet.f32 %874, 3
  %876 = fcmp fast ogt float %875, 0.000000e+00
  br i1 %876, label %877, label %884

; <label>:877                                     ; preds = %848
  %878 = fmul fast float %793, 0xBFDF454380000000
  %879 = fmul fast float %794, 0x3FDF454380000000
  %880 = fmul fast float %792, 0xBFDF454380000000
  %881 = call float @dx.op.dot4.f32(i32 56, float %770, float %769, float %768, float %767, float 0x3FD20DD760000000, float %878, float %879, float %880)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %882 = call float @dx.op.dot4.f32(i32 56, float %760, float %761, float %762, float %763, float 0x3FD20DD760000000, float %878, float %879, float %880)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %883 = call float @dx.op.dot4.f32(i32 56, float %756, float %757, float %758, float %759, float 0x3FD20DD760000000, float %878, float %879, float %880)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %884

; <label>:884                                     ; preds = %877, %848
  %885 = phi float [ %881, %877 ], [ %770, %848 ]
  %886 = phi float [ %882, %877 ], [ %769, %848 ]
  %887 = phi float [ %883, %877 ], [ %768, %848 ]
  %888 = call float @dx.op.dot3.f32(i32 55, float %792, float %793, float %794, float %800, float %801, float %802)  ; Dot3(ax,ay,az,bx,by,bz)
  %889 = call float @dx.op.unary.f32(i32 7, float %888)  ; Saturate(value)
  br i1 %876, label %890, label %990

; <label>:890                                     ; preds = %884
  %891 = fsub fast float -0.000000e+00, %759
  %892 = fsub fast float %891, %763
  %893 = fsub fast float %892, %767
  %894 = fsub fast float -0.000000e+00, %757
  %895 = fsub fast float %894, %761
  %896 = fsub fast float %895, %769
  %897 = fadd fast float %762, %758
  %898 = fadd fast float %897, %768
  %899 = call float @dx.op.dot3.f32(i32 55, float %893, float %896, float %898, float %893, float %896, float %898)  ; Dot3(ax,ay,az,bx,by,bz)
  %900 = call float @dx.op.unary.f32(i32 25, float %899)  ; Rsqrt(value)
  %901 = fmul fast float %900, %893
  %902 = fmul fast float %900, %896
  %903 = fmul fast float %900, %898
  %904 = fmul fast float %902, 0xBFD4D8D7C0000000
  %905 = fmul fast float %903, 0x3FD4D8D7C0000000
  %906 = fmul fast float %901, 0xBFD4D8D7C0000000
  %907 = call float @dx.op.dot4.f32(i32 56, float %770, float %769, float %768, float %767, float 0x3FD20DD760000000, float %904, float %905, float %906)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %908 = call float @dx.op.dot4.f32(i32 56, float %760, float %761, float %762, float %763, float 0x3FD20DD760000000, float %904, float %905, float %906)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %909 = call float @dx.op.dot4.f32(i32 56, float %756, float %757, float %758, float %759, float 0x3FD20DD760000000, float %904, float %905, float %906)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %910 = fmul fast float %907, 0x4003333340000000
  %911 = fmul fast float %770, 0x3FE5AA35A0000000
  %912 = fsub fast float %910, %911
  %913 = fmul fast float %908, 0x4003333340000000
  %914 = fmul fast float %760, 0x3FE5AA35A0000000
  %915 = fsub fast float %913, %914
  %916 = fmul fast float %909, 0x4003333340000000
  %917 = fmul fast float %756, 0x3FE5AA35A0000000
  %918 = fsub fast float %916, %917
  %919 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %912)  ; FMax(a,b)
  %920 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %915)  ; FMax(a,b)
  %921 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %918)  ; FMax(a,b)
  %922 = fsub fast float %901, %797
  %923 = fsub fast float %902, %798
  %924 = fsub fast float %903, %799
  %925 = call float @dx.op.dot3.f32(i32 55, float %922, float %923, float %924, float %922, float %923, float %924)  ; Dot3(ax,ay,az,bx,by,bz)
  %926 = call float @dx.op.unary.f32(i32 25, float %925)  ; Rsqrt(value)
  %927 = fmul fast float %926, %922
  %928 = fmul fast float %926, %923
  %929 = fmul fast float %926, %924
  %930 = call float @dx.op.dot3.f32(i32 55, float %792, float %793, float %794, float %901, float %902, float %903)  ; Dot3(ax,ay,az,bx,by,bz)
  %931 = call float @dx.op.unary.f32(i32 6, float %930)  ; FAbs(value)
  %932 = call float @dx.op.dot3.f32(i32 55, float %792, float %793, float %794, float %927, float %928, float %929)  ; Dot3(ax,ay,az,bx,by,bz)
  %933 = fmul fast float %932, %932
  %934 = call float @dx.op.dot3.f32(i32 55, float %800, float %801, float %802, float %927, float %928, float %929)  ; Dot3(ax,ay,az,bx,by,bz)
  %935 = call float @dx.op.unary.f32(i32 6, float %934)  ; FAbs(value)
  %936 = fsub fast float 1.000000e+00, %824
  %937 = call float @dx.op.binary.f32(i32 35, float %936, float 0x3F847AE140000000)  ; FMax(a,b)
  %938 = fmul fast float %937, %937
  %939 = fmul fast float %938, %938
  %940 = fsub fast float 1.000000e+00, %939
  %941 = fmul fast float %889, %889
  %942 = fmul fast float %941, %940
  %943 = fadd fast float %942, %939
  %944 = bitcast float %943 to i32
  %945 = ashr i32 %944, 1
  %946 = add nsw i32 %945, 532487669
  %947 = bitcast i32 %946 to float
  %948 = fadd fast float %947, %889
  %949 = fmul fast float %939, %933
  %950 = fsub fast float 1.000000e+00, %933
  %951 = fadd fast float %950, %949
  %952 = fmul fast float %931, %931
  %953 = fmul fast float %952, %940
  %954 = fadd fast float %953, %939
  %955 = bitcast float %954 to i32
  %956 = ashr i32 %955, 1
  %957 = add nsw i32 %956, 532487669
  %958 = bitcast i32 %957 to float
  %959 = fadd fast float %958, %931
  %960 = fmul fast float %951, %951
  %961 = fmul fast float %960, %948
  %962 = fmul fast float %961, %959
  %963 = fdiv fast float 1.000000e+00, %962
  %964 = fmul fast float %939, %963
  %965 = fsub fast float 1.000000e+00, %935
  %966 = bitcast float %965 to i32
  %967 = sitofp i32 %966 to float
  %968 = fmul fast float %967, 5.000000e+00
  %969 = fadd fast float %968, 0xC1EFBF8940000000
  %970 = fptosi float %969 to i32
  %971 = bitcast i32 %970 to float
  %972 = fsub fast float 1.000000e+00, %821
  %973 = fsub fast float 1.000000e+00, %822
  %974 = fsub fast float 1.000000e+00, %823
  %975 = fmul fast float %971, %972
  %976 = fmul fast float %971, %973
  %977 = fmul fast float %971, %974
  %978 = fadd fast float %975, %821
  %979 = fadd fast float %976, %822
  %980 = fadd fast float %977, %823
  %981 = fmul fast float %964, %919
  %982 = fmul fast float %981, %978
  %983 = fmul fast float %964, %920
  %984 = fmul fast float %983, %979
  %985 = fmul fast float %964, %921
  %986 = fmul fast float %985, %980
  %987 = call float @dx.op.binary.f32(i32 35, float %982, float 0.000000e+00)  ; FMax(a,b)
  %988 = call float @dx.op.binary.f32(i32 35, float %984, float 0.000000e+00)  ; FMax(a,b)
  %989 = call float @dx.op.binary.f32(i32 35, float %986, float 0.000000e+00)  ; FMax(a,b)
  br label %990

; <label>:990                                     ; preds = %890, %884
  %991 = phi float [ %987, %890 ], [ 0.000000e+00, %884 ]
  %992 = phi float [ %988, %890 ], [ 0.000000e+00, %884 ]
  %993 = phi float [ %989, %890 ], [ 0.000000e+00, %884 ]
  %994 = fmul fast float %889, 9.843750e-01
  %995 = fmul fast float %824, 9.843750e-01
  %996 = fadd fast float %994, 7.812500e-03
  %997 = fadd fast float %995, 7.812500e-03
  %998 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %26, float %996, float %997, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %999 = extractvalue %dx.types.ResRet.f32 %998, 2
  %1000 = extractvalue %dx.types.ResRet.f32 %998, 3
  %1001 = fmul fast float %999, %821
  %1002 = fmul fast float %999, %822
  %1003 = fmul fast float %999, %823
  %1004 = fadd fast float %1001, %1000
  %1005 = fadd fast float %1002, %1000
  %1006 = fadd fast float %1003, %1000
  %1007 = call float @dx.op.binary.f32(i32 35, float %1005, float %1006)  ; FMax(a,b)
  %1008 = call float @dx.op.binary.f32(i32 35, float %1004, float %1007)  ; FMax(a,b)
  %1009 = fsub fast float 1.000000e+00, %1008
  %1010 = call float @dx.op.dot3.f32(i32 55, float %797, float %798, float %799, float %792, float %793, float %794)  ; Dot3(ax,ay,az,bx,by,bz)
  %1011 = fmul fast float %1010, 2.000000e+00
  %1012 = fmul fast float %1011, %792
  %1013 = fmul fast float %1011, %793
  %1014 = fmul fast float %1011, %794
  %1015 = fsub fast float %797, %1012
  %1016 = fsub fast float %798, %1013
  %1017 = fsub fast float %799, %1014
  br i1 %876, label %1018, label %1025

; <label>:1018                                    ; preds = %990
  %1019 = fmul fast float %1016, 0xBFDF454380000000
  %1020 = fmul fast float %1017, 0x3FDF454380000000
  %1021 = fmul fast float %1015, 0xBFDF454380000000
  %1022 = call float @dx.op.dot4.f32(i32 56, float %770, float %769, float %768, float %767, float 0x3FD20DD760000000, float %1019, float %1020, float %1021)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1023 = call float @dx.op.dot4.f32(i32 56, float %760, float %761, float %762, float %763, float 0x3FD20DD760000000, float %1019, float %1020, float %1021)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1024 = call float @dx.op.dot4.f32(i32 56, float %756, float %757, float %758, float %759, float 0x3FD20DD760000000, float %1019, float %1020, float %1021)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %1025

; <label>:1025                                    ; preds = %1018, %990
  %1026 = phi float [ %1022, %1018 ], [ %770, %990 ]
  %1027 = phi float [ %1023, %1018 ], [ %769, %990 ]
  %1028 = phi float [ %1024, %1018 ], [ %768, %990 ]
  %1029 = call float @dx.op.dot3.f32(i32 55, float %1026, float %1027, float %1028, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %1031 = extractvalue %dx.types.CBufRet.f32 %1030, 2
  %1032 = extractvalue %dx.types.CBufRet.f32 %1030, 3
  %1033 = fmul fast float %1031, %61
  %1034 = fmul fast float %1032, %62
  %1035 = fptoui float %1033 to i32
  %1036 = fptoui float %1034 to i32
  %1037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1038 = extractvalue %dx.types.CBufRet.f32 %1037, 0
  %1039 = extractvalue %dx.types.CBufRet.f32 %1037, 2
  %1040 = extractvalue %dx.types.CBufRet.f32 %1037, 3
  %1041 = fadd fast float %54, -4.000000e+00
  %1042 = call float @dx.op.binary.f32(i32 35, float %1041, float 0.000000e+00)  ; FMax(a,b)
  %1043 = fadd fast float %1042, %1038
  %1044 = fmul fast float %1043, %1039
  %1045 = call float @dx.op.unary.f32(i32 23, float %1044)  ; Log(value)
  %1046 = fmul fast float %1045, %1040
  %1047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1048 = extractvalue %dx.types.CBufRet.f32 %1047, 2
  %1049 = fmul fast float %1046, %1048
  %1050 = call float @dx.op.unary.f32(i32 7, float %1049)  ; Saturate(value)
  %1051 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1052 = extractvalue %dx.types.CBufRet.i32 %1051, 1
  %1053 = add i32 %1052, -1
  %1054 = uitofp i32 %1052 to float
  %1055 = fmul fast float %1054, %1050
  %1056 = fptoui float %1055 to i32
  %1057 = call i32 @dx.op.binary.i32(i32 40, i32 %1056, i32 %1053)  ; UMin(a,b)
  %1058 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %1059 = extractvalue %dx.types.CBufRet.i32 %1058, 2
  %1060 = extractvalue %dx.types.CBufRet.i32 %1058, 3
  %1061 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1036, i32 %1059, i32 %1035)  ; UMad(a,b,c)
  %1062 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1057, i32 %1060, i32 %1061)  ; UMad(a,b,c)
  %1063 = call float @dx.op.binary.f32(i32 35, float %54, float 0.000000e+00)  ; FMax(a,b)
  %1064 = fptoui float %1063 to i32
  %1065 = lshr i32 %1064, 5
  %1066 = call i32 @dx.op.binary.i32(i32 40, i32 %1065, i32 8191)  ; UMin(a,b)
  %1067 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1068 = extractvalue %dx.types.CBufRet.i32 %1067, 2
  %1069 = add nsw i32 %1068, -1
  %1070 = call i32 @dx.op.binary.i32(i32 37, i32 %1069, i32 0)  ; IMax(a,b)
  %1071 = shl i32 %1066, 2
  %1072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1071, i32 undef)  ; BufferLoad(srv,index,wot)
  %1073 = extractvalue %dx.types.ResRet.i32 %1072, 0
  %1074 = lshr i32 %1073, 16
  %1075 = and i32 %1073, 65535
  %1076 = lshr i32 %1073, 21
  %1077 = lshr i32 %1075, 5
  %1078 = call i32 @dx.op.binary.i32(i32 40, i32 %1077, i32 %1070)  ; UMin(a,b)
  %1079 = icmp ugt i32 %1076, %1078
  br i1 %1079, label %1442, label %1080

; <label>:1080                                    ; preds = %1025
  br label %1081

; <label>:1081                                    ; preds = %1434, %1080
  %1082 = phi float [ %1435, %1434 ], [ 0.000000e+00, %1080 ]
  %1083 = phi float [ %1436, %1434 ], [ 0.000000e+00, %1080 ]
  %1084 = phi float [ %1437, %1434 ], [ 0.000000e+00, %1080 ]
  %1085 = phi float [ %1438, %1434 ], [ 1.000000e+00, %1080 ]
  %1086 = phi i32 [ %1439, %1434 ], [ %1076, %1080 ]
  %1087 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1088 = extractvalue %dx.types.CBufRet.i32 %1087, 2
  %1089 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1062, i32 %1088, i32 %1086)  ; UMad(a,b,c)
  %1090 = shl i32 %1089, 2
  %1091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1090, i32 undef)  ; BufferLoad(srv,index,wot)
  %1092 = extractvalue %dx.types.ResRet.i32 %1091, 0
  %1093 = shl i32 %1086, 5
  %1094 = sub nsw i32 %1074, %1093
  %1095 = call i32 @dx.op.binary.i32(i32 37, i32 %1094, i32 0)  ; IMax(a,b)
  %1096 = call i32 @dx.op.binary.i32(i32 38, i32 %1095, i32 31)  ; IMin(a,b)
  %1097 = sub nsw i32 1, %1074
  %1098 = add nsw i32 %1097, %1075
  %1099 = call i32 @dx.op.binary.i32(i32 37, i32 %1098, i32 0)  ; IMax(a,b)
  %1100 = call i32 @dx.op.binary.i32(i32 38, i32 %1099, i32 32)  ; IMin(a,b)
  %1101 = and i32 %1100, 31
  %1102 = shl i32 -1, %1101
  %1103 = xor i32 %1102, -1
  %1104 = and i32 %1096, 31
  %1105 = shl i32 %1103, %1104
  %1106 = icmp eq i32 %1100, 32
  %1107 = select i1 %1106, i32 -1, i32 %1105
  %1108 = and i32 %1107, %1092
  %1109 = icmp eq i32 %1108, 0
  br i1 %1109, label %1434, label %1110

; <label>:1110                                    ; preds = %1081
  br label %1111

; <label>:1111                                    ; preds = %1217, %1110
  %1112 = phi float [ %1218, %1217 ], [ %1082, %1110 ]
  %1113 = phi float [ %1219, %1217 ], [ %1083, %1110 ]
  %1114 = phi float [ %1220, %1217 ], [ %1084, %1110 ]
  %1115 = phi float [ %1221, %1217 ], [ %1085, %1110 ]
  %1116 = phi i32 [ %1121, %1217 ], [ %1108, %1110 ]
  %1117 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1116)  ; FirstbitLo(value)
  %1118 = add i32 %1117, %1093
  %1119 = and i32 %1117, 31
  %1120 = shl i32 1, %1119
  %1121 = xor i32 %1120, %1116
  %1122 = mul i32 %1118, 72
  %1123 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1122, i32 undef)  ; BufferLoad(srv,index,wot)
  %1124 = extractvalue %dx.types.ResRet.f32 %1123, 0
  %1125 = extractvalue %dx.types.ResRet.f32 %1123, 1
  %1126 = extractvalue %dx.types.ResRet.f32 %1123, 2
  %1127 = add i32 %1122, 12
  %1128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1127, i32 undef)  ; BufferLoad(srv,index,wot)
  %1129 = extractvalue %dx.types.ResRet.i32 %1128, 0
  %1130 = add i32 %1122, 16
  %1131 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1130, i32 undef)  ; BufferLoad(srv,index,wot)
  %1132 = extractvalue %dx.types.ResRet.f32 %1131, 0
  %1133 = extractvalue %dx.types.ResRet.f32 %1131, 1
  %1134 = extractvalue %dx.types.ResRet.f32 %1131, 2
  %1135 = add i32 %1122, 28
  %1136 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1135, i32 undef)  ; BufferLoad(srv,index,wot)
  %1137 = extractvalue %dx.types.ResRet.f32 %1136, 0
  %1138 = add i32 %1122, 32
  %1139 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1140 = extractvalue %dx.types.ResRet.f32 %1139, 0
  %1141 = extractvalue %dx.types.ResRet.f32 %1139, 1
  %1142 = extractvalue %dx.types.ResRet.f32 %1139, 2
  %1143 = extractvalue %dx.types.ResRet.f32 %1139, 3
  %1144 = add i32 %1122, 48
  %1145 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1146 = extractvalue %dx.types.ResRet.f32 %1145, 0
  %1147 = extractvalue %dx.types.ResRet.f32 %1145, 1
  %1148 = add i32 %1122, 56
  %1149 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1148, i32 undef)  ; BufferLoad(srv,index,wot)
  %1150 = extractvalue %dx.types.ResRet.f32 %1149, 0
  %1151 = extractvalue %dx.types.ResRet.f32 %1149, 1
  %1152 = add i32 %1122, 64
  %1153 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1154 = extractvalue %dx.types.ResRet.f32 %1153, 0
  %1155 = extractvalue %dx.types.ResRet.f32 %1153, 1
  %1156 = mul i32 %1118, 60
  %1157 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1156, i32 undef)  ; BufferLoad(srv,index,wot)
  %1158 = extractvalue %dx.types.ResRet.f32 %1157, 0
  %1159 = extractvalue %dx.types.ResRet.f32 %1157, 1
  %1160 = extractvalue %dx.types.ResRet.f32 %1157, 2
  %1161 = add i32 %1156, 12
  %1162 = add i32 %1156, 48
  %1163 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1162, i32 undef)  ; BufferLoad(srv,index,wot)
  %1164 = extractvalue %dx.types.ResRet.f32 %1163, 0
  %1165 = extractvalue %dx.types.ResRet.f32 %1163, 1
  %1166 = extractvalue %dx.types.ResRet.f32 %1163, 2
  %1167 = and i32 %1129, 32767
  %1168 = bitcast float %1124 to i32
  %1169 = icmp eq i32 %1168, -1
  %1170 = bitcast float %1125 to i32
  %1171 = and i32 %1129, 32768
  %1172 = icmp ne i32 %1171, 0
  %1173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1174 = extractvalue %dx.types.CBufRet.f32 %1173, 0
  %1175 = extractvalue %dx.types.CBufRet.f32 %1173, 1
  %1176 = extractvalue %dx.types.CBufRet.f32 %1173, 2
  %1177 = fsub fast float %1158, %1174
  %1178 = fsub fast float %1159, %1175
  %1179 = fsub fast float %1160, %1176
  %1180 = fsub fast float %96, %1177
  %1181 = fsub fast float %97, %1178
  %1182 = fsub fast float %98, %1179
  %1183 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1161, i32 undef)  ; BufferLoad(srv,index,wot)
  %1184 = extractvalue %dx.types.ResRet.f32 %1183, 0
  %1185 = extractvalue %dx.types.ResRet.f32 %1183, 1
  %1186 = extractvalue %dx.types.ResRet.f32 %1183, 2
  %1187 = call float @dx.op.dot3.f32(i32 55, float %1180, float %1181, float %1182, float %1184, float %1185, float %1186)  ; Dot3(ax,ay,az,bx,by,bz)
  %1188 = add i32 %1156, 24
  %1189 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1190 = extractvalue %dx.types.ResRet.f32 %1189, 0
  %1191 = extractvalue %dx.types.ResRet.f32 %1189, 1
  %1192 = extractvalue %dx.types.ResRet.f32 %1189, 2
  %1193 = call float @dx.op.dot3.f32(i32 55, float %1180, float %1181, float %1182, float %1190, float %1191, float %1192)  ; Dot3(ax,ay,az,bx,by,bz)
  %1194 = add i32 %1156, 36
  %1195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1194, i32 undef)  ; BufferLoad(srv,index,wot)
  %1196 = extractvalue %dx.types.ResRet.f32 %1195, 0
  %1197 = extractvalue %dx.types.ResRet.f32 %1195, 1
  %1198 = extractvalue %dx.types.ResRet.f32 %1195, 2
  %1199 = call float @dx.op.dot3.f32(i32 55, float %1180, float %1181, float %1182, float %1196, float %1197, float %1198)  ; Dot3(ax,ay,az,bx,by,bz)
  %1200 = call float @dx.op.unary.f32(i32 6, float %1187)  ; FAbs(value)
  %1201 = call float @dx.op.unary.f32(i32 6, float %1193)  ; FAbs(value)
  %1202 = call float @dx.op.unary.f32(i32 6, float %1199)  ; FAbs(value)
  %1203 = fsub fast float %1164, %1200
  %1204 = fsub fast float %1165, %1201
  %1205 = fsub fast float %1166, %1202
  %1206 = fmul fast float %1203, %1132
  %1207 = fmul fast float %1204, %1133
  %1208 = fmul fast float %1205, %1134
  %1209 = call float @dx.op.binary.f32(i32 36, float %1207, float %1208)  ; FMin(a,b)
  %1210 = call float @dx.op.binary.f32(i32 36, float %1206, float %1209)  ; FMin(a,b)
  %1211 = call float @dx.op.unary.f32(i32 7, float %1210)  ; Saturate(value)
  %1212 = call float @dx.op.binary.f32(i32 36, float %1115, float %1211)  ; FMin(a,b)
  %1213 = uitofp i1 %1172 to float
  %1214 = fsub fast float 1.000000e+00, %1213
  %1215 = fmul fast float %1212, %1214
  %1216 = fcmp fast ogt float %1215, 0.000000e+00
  br i1 %1216, label %1223, label %1217

; <label>:1217                                    ; preds = %1365, %1111
  %1218 = phi float [ %1429, %1365 ], [ %1112, %1111 ]
  %1219 = phi float [ %1430, %1365 ], [ %1113, %1111 ]
  %1220 = phi float [ %1431, %1365 ], [ %1114, %1111 ]
  %1221 = phi float [ %1432, %1365 ], [ %1115, %1111 ]
  %1222 = icmp eq i32 %1116, %1120
  br i1 %1222, label %1433, label %1111

; <label>:1223                                    ; preds = %1111
  br i1 %1169, label %1281, label %1224

; <label>:1224                                    ; preds = %1223
  %1225 = fsub fast float -0.000000e+00, %1184
  %1226 = fsub fast float -0.000000e+00, %1185
  %1227 = fsub fast float -0.000000e+00, %1186
  %1228 = call float @dx.op.dot3.f32(i32 55, float %1015, float %1016, float %1017, float %1225, float %1226, float %1227)  ; Dot3(ax,ay,az,bx,by,bz)
  %1229 = fsub fast float -0.000000e+00, %1228
  %1230 = call float @dx.op.dot3.f32(i32 55, float %1180, float %1181, float %1182, float %1225, float %1226, float %1227)  ; Dot3(ax,ay,az,bx,by,bz)
  %1231 = fadd fast float %1230, %1147
  %1232 = fadd fast float %1146, %1230
  %1233 = fsub fast float -0.000000e+00, %1232
  %1234 = fcmp ogt float %1228, -0.000000e+00
  %1235 = select i1 %1234, float %1233, float %1231
  %1236 = call float @dx.op.unary.f32(i32 6, float %1229)  ; FAbs(value)
  %1237 = fdiv fast float 1.000000e+00, %1236
  %1238 = fmul fast float %1235, %1237
  %1239 = call float @dx.op.binary.f32(i32 35, float %1238, float 0.000000e+00)  ; FMax(a,b)
  %1240 = fsub fast float -0.000000e+00, %1190
  %1241 = fsub fast float -0.000000e+00, %1191
  %1242 = fsub fast float -0.000000e+00, %1192
  %1243 = call float @dx.op.dot3.f32(i32 55, float %1015, float %1016, float %1017, float %1240, float %1241, float %1242)  ; Dot3(ax,ay,az,bx,by,bz)
  %1244 = fsub fast float -0.000000e+00, %1243
  %1245 = call float @dx.op.dot3.f32(i32 55, float %1180, float %1181, float %1182, float %1240, float %1241, float %1242)  ; Dot3(ax,ay,az,bx,by,bz)
  %1246 = fadd fast float %1245, %1151
  %1247 = fadd fast float %1150, %1245
  %1248 = fsub fast float -0.000000e+00, %1247
  %1249 = fcmp ogt float %1243, -0.000000e+00
  %1250 = select i1 %1249, float %1248, float %1246
  %1251 = call float @dx.op.unary.f32(i32 6, float %1244)  ; FAbs(value)
  %1252 = fdiv fast float 1.000000e+00, %1251
  %1253 = fmul fast float %1250, %1252
  %1254 = call float @dx.op.binary.f32(i32 35, float %1253, float 0.000000e+00)  ; FMax(a,b)
  %1255 = fsub fast float -0.000000e+00, %1196
  %1256 = fsub fast float -0.000000e+00, %1197
  %1257 = fsub fast float -0.000000e+00, %1198
  %1258 = call float @dx.op.dot3.f32(i32 55, float %1015, float %1016, float %1017, float %1255, float %1256, float %1257)  ; Dot3(ax,ay,az,bx,by,bz)
  %1259 = fsub fast float -0.000000e+00, %1258
  %1260 = call float @dx.op.dot3.f32(i32 55, float %1180, float %1181, float %1182, float %1255, float %1256, float %1257)  ; Dot3(ax,ay,az,bx,by,bz)
  %1261 = fadd fast float %1260, %1155
  %1262 = fadd fast float %1154, %1260
  %1263 = fsub fast float -0.000000e+00, %1262
  %1264 = fcmp ogt float %1258, -0.000000e+00
  %1265 = select i1 %1264, float %1263, float %1261
  %1266 = call float @dx.op.unary.f32(i32 6, float %1259)  ; FAbs(value)
  %1267 = fdiv fast float 1.000000e+00, %1266
  %1268 = fmul fast float %1265, %1267
  %1269 = call float @dx.op.binary.f32(i32 35, float %1268, float 0.000000e+00)  ; FMax(a,b)
  %1270 = call float @dx.op.binary.f32(i32 36, float %1254, float %1269)  ; FMin(a,b)
  %1271 = call float @dx.op.binary.f32(i32 36, float %1239, float %1270)  ; FMin(a,b)
  %1272 = fmul fast float %1271, %1015
  %1273 = fmul fast float %1271, %1016
  %1274 = fmul fast float %1271, %1017
  %1275 = fadd fast float %1272, %96
  %1276 = fadd fast float %1273, %97
  %1277 = fadd fast float %1274, %98
  %1278 = fsub fast float %1275, %1124
  %1279 = fsub fast float %1276, %1125
  %1280 = fsub fast float %1277, %1126
  br label %1288

; <label>:1281                                    ; preds = %1223
  %1282 = fmul fast float %1015, 8.096000e+03
  %1283 = fmul fast float %1016, 8.096000e+03
  %1284 = fmul fast float %1017, 8.096000e+03
  %1285 = fadd fast float %1282, %96
  %1286 = fadd fast float %1283, %97
  %1287 = fadd fast float %1284, %98
  br label %1288

; <label>:1288                                    ; preds = %1281, %1224
  %1289 = phi float [ %1015, %1281 ], [ %1278, %1224 ]
  %1290 = phi float [ %1016, %1281 ], [ %1279, %1224 ]
  %1291 = phi float [ %1017, %1281 ], [ %1280, %1224 ]
  %1292 = phi float [ %1285, %1281 ], [ %1275, %1224 ]
  %1293 = phi float [ %1286, %1281 ], [ %1276, %1224 ]
  %1294 = phi float [ %1287, %1281 ], [ %1277, %1224 ]
  %1295 = fcmp fast olt float %1143, 1.000000e+00
  br i1 %1295, label %1296, label %1327, !dx.controlflow.hints !77

; <label>:1296                                    ; preds = %1288
  %1297 = fmul fast float %1291, %1141
  %1298 = fmul fast float %1290, %1142
  %1299 = fsub fast float %1297, %1298
  %1300 = fmul fast float %1289, %1142
  %1301 = fmul fast float %1291, %1140
  %1302 = fsub fast float %1300, %1301
  %1303 = fmul fast float %1290, %1140
  %1304 = fmul fast float %1289, %1141
  %1305 = fsub fast float %1303, %1304
  %1306 = fmul fast float %1299, 2.000000e+00
  %1307 = fmul fast float %1302, 2.000000e+00
  %1308 = fmul fast float %1305, 2.000000e+00
  %1309 = fmul fast float %1306, %1143
  %1310 = fmul fast float %1307, %1143
  %1311 = fmul fast float %1308, %1143
  %1312 = fmul fast float %1308, %1141
  %1313 = fmul fast float %1307, %1142
  %1314 = fmul fast float %1306, %1142
  %1315 = fmul fast float %1308, %1140
  %1316 = fmul fast float %1307, %1140
  %1317 = fmul fast float %1306, %1141
  %1318 = fadd fast float %1312, %1289
  %1319 = fadd fast float %1318, %1309
  %1320 = fsub fast float %1319, %1313
  %1321 = fsub fast float %1290, %1315
  %1322 = fadd fast float %1321, %1310
  %1323 = fadd fast float %1322, %1314
  %1324 = fadd fast float %1311, %1291
  %1325 = fsub fast float %1324, %1317
  %1326 = fadd fast float %1325, %1316
  br label %1327

; <label>:1327                                    ; preds = %1296, %1288
  %1328 = phi float [ %1320, %1296 ], [ %1289, %1288 ]
  %1329 = phi float [ %1323, %1296 ], [ %1290, %1288 ]
  %1330 = phi float [ %1326, %1296 ], [ %1291, %1288 ]
  br i1 %1169, label %1362, label %1331

; <label>:1331                                    ; preds = %1327
  %1332 = fmul fast float %824, 0x400187C840000000
  %1333 = fadd fast float %1332, 0xC00EFC2120000000
  %1334 = fmul fast float %1333, %824
  %1335 = fadd fast float %1334, 0x3FE5D16340000000
  %1336 = fmul fast float %1335, %824
  %1337 = fadd fast float %1336, 1.000000e+00
  %1338 = call float @dx.op.unary.f32(i32 7, float %1337)  ; Saturate(value)
  %1339 = fsub fast float %1292, %96
  %1340 = fsub fast float %1293, %97
  %1341 = fsub fast float %1294, %98
  %1342 = fsub fast float %1292, %1124
  %1343 = fsub fast float %1293, %1125
  %1344 = fsub fast float %1294, %1126
  %1345 = call float @dx.op.dot3.f32(i32 55, float %1339, float %1340, float %1341, float %1339, float %1340, float %1341)  ; Dot3(ax,ay,az,bx,by,bz)
  %1346 = call float @dx.op.dot3.f32(i32 55, float %1342, float %1343, float %1344, float %1342, float %1343, float %1344)  ; Dot3(ax,ay,az,bx,by,bz)
  %1347 = fadd fast float %1346, 0x3EE4F8B580000000
  %1348 = fdiv fast float %1345, %1347
  %1349 = bitcast float %1348 to i32
  %1350 = ashr i32 %1349, 1
  %1351 = add nsw i32 %1350, 532487669
  %1352 = bitcast i32 %1351 to float
  %1353 = fmul fast float %1352, %1338
  %1354 = call float @dx.op.unary.f32(i32 7, float %1353)  ; Saturate(value)
  %1355 = fmul fast float %1354, 0x4009981AE0000000
  %1356 = fsub fast float 0x40111BBD80000000, %1355
  %1357 = fmul fast float %1356, %1354
  %1358 = fadd fast float %1357, 0xC0009F6020000000
  %1359 = fmul fast float %1358, %1354
  %1360 = fadd fast float %1359, 1.000000e+00
  %1361 = call float @dx.op.unary.f32(i32 7, float %1360)  ; Saturate(value)
  br label %1365

; <label>:1362                                    ; preds = %1327
  %1363 = icmp ne i32 %1170, -1
  %1364 = zext i1 %1363 to i32
  br label %1365

; <label>:1365                                    ; preds = %1362, %1331
  %1366 = phi float [ %824, %1362 ], [ %1361, %1331 ]
  %1367 = phi i32 [ %1364, %1362 ], [ 0, %1331 ]
  %1368 = fmul float %1366, 5.000000e+00
  %1369 = fsub float 5.000000e+00, %1368
  %1370 = icmp ne i32 %1367, 0
  %1371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %1372 = extractvalue %dx.types.CBufRet.f32 %1371, 3
  %1373 = fadd fast float %1372, %1369
  %1374 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1373)  ; FMax(a,b)
  %1375 = call float @dx.op.unary.f32(i32 6, float %1328)  ; FAbs(value)
  %1376 = call float @dx.op.unary.f32(i32 6, float %1329)  ; FAbs(value)
  %1377 = fadd fast float %1376, %1375
  %1378 = call float @dx.op.unary.f32(i32 6, float %1330)  ; FAbs(value)
  %1379 = fadd fast float %1377, %1378
  %1380 = fcmp fast oeq float %1379, 0.000000e+00
  %1381 = fdiv fast float 1.000000e+00, %1379
  %1382 = select i1 %1380, float 1.000000e+00, float %1381
  %1383 = fmul fast float %1382, %1328
  %1384 = fmul fast float %1382, %1329
  %1385 = call float @dx.op.unary.f32(i32 6, float %1384)  ; FAbs(value)
  %1386 = call float @dx.op.unary.f32(i32 6, float %1383)  ; FAbs(value)
  %1387 = fsub fast float 1.000000e+00, %1385
  %1388 = fsub fast float 1.000000e+00, %1386
  %1389 = fcmp fast oge float %1383, 0.000000e+00
  %1390 = fcmp fast oge float %1384, 0.000000e+00
  %1391 = select i1 %1389, float 1.000000e+00, float -1.000000e+00
  %1392 = select i1 %1390, float 1.000000e+00, float -1.000000e+00
  %1393 = fcmp fast ole float %1330, 0.000000e+00
  %1394 = fmul fast float %1391, %1387
  %1395 = fmul fast float %1392, %1388
  %1396 = select i1 %1393, float %1394, float %1383
  %1397 = select i1 %1393, float %1395, float %1384
  %1398 = fmul fast float %1396, 5.000000e-01
  %1399 = fmul fast float %1397, 5.000000e-01
  %1400 = fadd fast float %1398, 5.000000e-01
  %1401 = fadd fast float %1399, 5.000000e-01
  %1402 = uitofp i32 %1167 to float
  %1403 = call float @dx.op.binary.f32(i32 36, float %1374, float 3.000000e+00)  ; FMin(a,b)
  %1404 = fadd fast float %1403, 2.000000e+00
  %1405 = call float @dx.op.unary.f32(i32 21, float %1404)  ; Exp(value)
  %1406 = extractvalue %dx.types.CBufRet.f32 %1371, 1
  %1407 = fmul fast float %1406, %1405
  %1408 = fmul fast float %1407, 2.000000e+00
  %1409 = fsub fast float 1.000000e+00, %1408
  %1410 = fmul fast float %1400, %1409
  %1411 = fmul fast float %1401, %1409
  %1412 = fadd fast float %1410, %1407
  %1413 = fadd fast float %1411, %1407
  %1414 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %25, float %1412, float %1413, float %1402, float undef, i32 0, i32 0, i32 undef, float %1374)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1415 = extractvalue %dx.types.ResRet.f32 %1414, 0
  %1416 = extractvalue %dx.types.ResRet.f32 %1414, 1
  %1417 = extractvalue %dx.types.ResRet.f32 %1414, 2
  %1418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1419 = extractvalue %dx.types.CBufRet.f32 %1418, 3
  %1420 = fmul fast float %1419, %1137
  %1421 = call float @dx.op.binary.f32(i32 36, float %1029, float %1420)  ; FMin(a,b)
  %1422 = select i1 %1370, float %1421, float %1420
  %1423 = fmul fast float %1415, %1215
  %1424 = fmul fast float %1423, %1422
  %1425 = fmul fast float %1416, %1215
  %1426 = fmul fast float %1425, %1422
  %1427 = fmul fast float %1417, %1215
  %1428 = fmul fast float %1427, %1422
  %1429 = fadd fast float %1424, %1112
  %1430 = fadd fast float %1426, %1113
  %1431 = fadd fast float %1428, %1114
  %1432 = fsub fast float %1115, %1215
  br label %1217

; <label>:1433                                    ; preds = %1217
  br label %1434

; <label>:1434                                    ; preds = %1433, %1081
  %1435 = phi float [ %1082, %1081 ], [ %1218, %1433 ]
  %1436 = phi float [ %1083, %1081 ], [ %1219, %1433 ]
  %1437 = phi float [ %1084, %1081 ], [ %1220, %1433 ]
  %1438 = phi float [ %1085, %1081 ], [ %1221, %1433 ]
  %1439 = add i32 %1086, 1
  %1440 = icmp ugt i32 %1439, %1078
  br i1 %1440, label %1441, label %1081, !llvm.loop !78

; <label>:1441                                    ; preds = %1434
  br label %1442

; <label>:1442                                    ; preds = %1441, %1025
  %1443 = phi float [ 0.000000e+00, %1025 ], [ %1435, %1441 ]
  %1444 = phi float [ 0.000000e+00, %1025 ], [ %1436, %1441 ]
  %1445 = phi float [ 0.000000e+00, %1025 ], [ %1437, %1441 ]
  %1446 = call float @dx.op.dot3.f32(i32 55, float %1443, float %1444, float %1445, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1447 = select i1 %131, float 0.000000e+00, float %1443
  %1448 = select i1 %131, float %1446, float %1444
  %1449 = select i1 %131, float 0.000000e+00, float %1445
  %1450 = fmul fast float %1447, %1004
  %1451 = fmul fast float %1448, %1005
  %1452 = fmul fast float %1449, %1006
  %1453 = call float @dx.op.binary.f32(i32 35, float %1450, float 0.000000e+00)  ; FMax(a,b)
  %1454 = call float @dx.op.binary.f32(i32 35, float %1451, float 0.000000e+00)  ; FMax(a,b)
  %1455 = call float @dx.op.binary.f32(i32 35, float %1452, float 0.000000e+00)  ; FMax(a,b)
  %1456 = fadd fast float %1453, %991
  %1457 = fadd fast float %1454, %992
  %1458 = fadd fast float %1455, %993
  %1459 = fmul fast float %1456, %600
  %1460 = fmul fast float %1457, %600
  %1461 = fmul fast float %1458, %600
  %1462 = fadd fast float %717, -1.000000e+00
  %1463 = fadd fast float %718, -1.000000e+00
  %1464 = fadd fast float %719, -1.000000e+00
  %1465 = fmul fast float %1462, %600
  %1466 = fmul fast float %1463, %600
  %1467 = fmul fast float %1464, %600
  %1468 = fadd fast float %1465, 1.000000e+00
  %1469 = fadd fast float %1466, 1.000000e+00
  %1470 = fadd fast float %1467, 1.000000e+00
  %1471 = call float @dx.op.dot3.f32(i32 55, float %1468, float %1469, float %1470, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1472 = fsub fast float 1.000000e+00, %1471
  %1473 = fmul fast float %849, %837
  %1474 = fsub fast float 1.000000e+00, %837
  %1475 = call float @dx.op.unary.f32(i32 7, float %1474)  ; Saturate(value)
  %1476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1477 = extractvalue %dx.types.CBufRet.f32 %1476, 3
  %1478 = fmul fast float %1477, %1475
  %1479 = fadd fast float %1478, %1473
  %1480 = and i32 %151, 1048576
  %1481 = icmp eq i32 %1480, 0
  br i1 %1481, label %1566, label %1482, !dx.controlflow.hints !80

; <label>:1482                                    ; preds = %1442
  %1483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1484 = extractvalue %dx.types.CBufRet.f32 %1483, 2
  %1485 = extractvalue %dx.types.CBufRet.f32 %1483, 3
  %1486 = fmul fast float %1484, %61
  %1487 = fmul fast float %1485, %62
  %1488 = call float @dx.op.unary.f32(i32 7, float %1486)  ; Saturate(value)
  %1489 = call float @dx.op.unary.f32(i32 7, float %1487)  ; Saturate(value)
  %1490 = select i1 %873, i32 2, i32 0
  %1491 = or i32 %1490, 1
  %1492 = uitofp i32 %1491 to float
  %1493 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1488, float %1489, float %1492, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1494 = extractvalue %dx.types.ResRet.f32 %1493, 0
  %1495 = extractvalue %dx.types.ResRet.f32 %1493, 1
  %1496 = extractvalue %dx.types.ResRet.f32 %1493, 2
  %1497 = extractvalue %dx.types.ResRet.f32 %1493, 3
  %1498 = add nuw nsw i32 %1490, 2
  %1499 = uitofp i32 %1498 to float
  %1500 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1488, float %1489, float %1499, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1501 = extractvalue %dx.types.ResRet.f32 %1500, 0
  %1502 = extractvalue %dx.types.ResRet.f32 %1500, 1
  %1503 = extractvalue %dx.types.ResRet.f32 %1500, 2
  %1504 = extractvalue %dx.types.ResRet.f32 %1500, 3
  %1505 = call float @dx.op.binary.f32(i32 35, float %1495, float %1496)  ; FMax(a,b)
  %1506 = call float @dx.op.binary.f32(i32 35, float %1494, float %1505)  ; FMax(a,b)
  %1507 = call float @dx.op.binary.f32(i32 35, float %1506, float %1497)  ; FMax(a,b)
  %1508 = call float @dx.op.binary.f32(i32 36, float %1502, float %1503)  ; FMin(a,b)
  %1509 = call float @dx.op.binary.f32(i32 36, float %1501, float %1508)  ; FMin(a,b)
  %1510 = call float @dx.op.binary.f32(i32 36, float %1509, float %1504)  ; FMin(a,b)
  %1511 = fmul fast float %1507, 2.550000e+02
  %1512 = fadd fast float %1511, 0x3F70101020000000
  %1513 = fptoui float %1512 to i32
  %1514 = fmul fast float %1510, 2.550000e+02
  %1515 = fadd fast float %1514, 0x3F70101020000000
  %1516 = fptoui float %1515 to i32
  %1517 = icmp ult i32 %1513, %1516
  br i1 %1517, label %1518, label %1559

; <label>:1518                                    ; preds = %1482
  %1519 = fcmp fast ogt float %53, 9.843750e-01
  %1520 = select i1 %1519, float -4.000000e+00, float %1041
  %1521 = call float @dx.op.binary.f32(i32 35, float %1520, float 0.000000e+00)  ; FMax(a,b)
  %1522 = fadd fast float %1038, %1521
  %1523 = fmul fast float %1522, %1039
  %1524 = call float @dx.op.unary.f32(i32 23, float %1523)  ; Log(value)
  %1525 = fmul fast float %1040, %1524
  %1526 = fmul fast float %1525, %1048
  %1527 = call float @dx.op.unary.f32(i32 7, float %1526)  ; Saturate(value)
  %1528 = uitofp i32 %1513 to float
  %1529 = uitofp i32 %1516 to float
  %1530 = fadd fast float %1528, 5.000000e-01
  %1531 = fadd fast float %1529, 5.000000e-01
  %1532 = fmul fast float %1048, %1530
  %1533 = fmul fast float %1048, %1531
  %1534 = fadd fast float %1532, 0x3F0FFB4800000000
  %1535 = fadd fast float %1533, 0xBF0FFB4800000000
  %1536 = call float @dx.op.binary.f32(i32 35, float %1527, float %1534)  ; FMax(a,b)
  %1537 = call float @dx.op.binary.f32(i32 36, float %1536, float %1535)  ; FMin(a,b)
  %1538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1539 = extractvalue %dx.types.CBufRet.f32 %1538, 1
  %1540 = extractvalue %dx.types.CBufRet.f32 %1538, 2
  %1541 = extractvalue %dx.types.CBufRet.f32 %1538, 0
  %1542 = select i1 %873, float %1541, float 0.000000e+00
  %1543 = fmul fast float %1539, %1537
  %1544 = fadd fast float %1542, %1543
  %1545 = fadd fast float %1542, %1540
  %1546 = fsub fast float %1539, %1540
  %1547 = fadd fast float %1546, %1542
  %1548 = call float @dx.op.binary.f32(i32 35, float %1544, float %1545)  ; FMax(a,b)
  %1549 = call float @dx.op.binary.f32(i32 36, float %1548, float %1547)  ; FMin(a,b)
  %1550 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %25, float %1488, float %1489, float %1549, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1551 = extractvalue %dx.types.ResRet.f32 %1550, 0
  %1552 = extractvalue %dx.types.ResRet.f32 %1550, 1
  %1553 = extractvalue %dx.types.ResRet.f32 %1550, 2
  %1554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1555 = extractvalue %dx.types.CBufRet.f32 %1554, 1
  %1556 = fmul fast float %1555, %1551
  %1557 = fmul fast float %1555, %1552
  %1558 = fmul fast float %1555, %1553
  br label %1559

; <label>:1559                                    ; preds = %1518, %1482
  %1560 = phi float [ %1556, %1518 ], [ 1.000000e+00, %1482 ]
  %1561 = phi float [ %1557, %1518 ], [ 1.000000e+00, %1482 ]
  %1562 = phi float [ %1558, %1518 ], [ 1.000000e+00, %1482 ]
  %1563 = fmul fast float %1560, %1459
  %1564 = fmul fast float %1561, %1460
  %1565 = fmul fast float %1562, %1461
  br label %1566

; <label>:1566                                    ; preds = %1559, %1442
  %1567 = phi float [ %1563, %1559 ], [ %1459, %1442 ]
  %1568 = phi float [ %1564, %1559 ], [ %1460, %1442 ]
  %1569 = phi float [ %1565, %1559 ], [ %1461, %1442 ]
  %1570 = and i32 %151, 2097152
  %1571 = icmp eq i32 %1570, 0
  br i1 %1571, label %1576, label %1572, !dx.controlflow.hints !81

; <label>:1572                                    ; preds = %1566
  %1573 = add i32 %148, 192
  %1574 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1573, i32 undef)  ; BufferLoad(srv,index,wot)
  %1575 = extractvalue %dx.types.ResRet.f32 %1574, 0
  br label %1579

; <label>:1576                                    ; preds = %1566
  %1577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1578 = extractvalue %dx.types.CBufRet.f32 %1577, 3
  br label %1579

; <label>:1579                                    ; preds = %1576, %1572
  %1580 = phi float [ %1575, %1572 ], [ %1578, %1576 ]
  %1581 = fmul fast float %812, %600
  %1582 = fmul fast float %1581, %885
  %1583 = fmul fast float %1582, %1009
  %1584 = fmul fast float %813, %600
  %1585 = fmul fast float %1584, %886
  %1586 = fmul fast float %1585, %1009
  %1587 = fmul fast float %814, %600
  %1588 = fmul fast float %1587, %887
  %1589 = fmul fast float %1588, %1009
  br i1 %868, label %1590, label %1723

; <label>:1590                                    ; preds = %1579
  %1591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1592 = extractvalue %dx.types.CBufRet.f32 %1591, 2
  %1593 = extractvalue %dx.types.CBufRet.f32 %1591, 3
  %1594 = fmul fast float %1592, %61
  %1595 = fmul fast float %1593, %62
  %1596 = call float @dx.op.unary.f32(i32 7, float %1594)  ; Saturate(value)
  %1597 = call float @dx.op.unary.f32(i32 7, float %1595)  ; Saturate(value)
  %1598 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1596, float %1597, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1599 = extractvalue %dx.types.ResRet.f32 %1598, 0
  %1600 = extractvalue %dx.types.ResRet.f32 %1598, 1
  %1601 = extractvalue %dx.types.ResRet.f32 %1598, 2
  %1602 = extractvalue %dx.types.ResRet.f32 %1598, 3
  %1603 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1596, float %1597, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1604 = extractvalue %dx.types.ResRet.f32 %1603, 0
  %1605 = extractvalue %dx.types.ResRet.f32 %1603, 1
  %1606 = extractvalue %dx.types.ResRet.f32 %1603, 2
  %1607 = extractvalue %dx.types.ResRet.f32 %1603, 3
  %1608 = call float @dx.op.binary.f32(i32 35, float %1600, float %1601)  ; FMax(a,b)
  %1609 = call float @dx.op.binary.f32(i32 35, float %1599, float %1608)  ; FMax(a,b)
  %1610 = call float @dx.op.binary.f32(i32 35, float %1609, float %1602)  ; FMax(a,b)
  %1611 = call float @dx.op.binary.f32(i32 36, float %1605, float %1606)  ; FMin(a,b)
  %1612 = call float @dx.op.binary.f32(i32 36, float %1604, float %1611)  ; FMin(a,b)
  %1613 = call float @dx.op.binary.f32(i32 36, float %1612, float %1607)  ; FMin(a,b)
  %1614 = fmul fast float %1610, 2.550000e+02
  %1615 = fadd fast float %1614, 0x3F70101020000000
  %1616 = fptoui float %1615 to i32
  %1617 = fmul fast float %1613, 2.550000e+02
  %1618 = fadd fast float %1617, 0x3F70101020000000
  %1619 = fptoui float %1618 to i32
  %1620 = icmp ult i32 %1616, %1619
  br i1 %1620, label %1621, label %1665

; <label>:1621                                    ; preds = %1590
  %1622 = fcmp fast ogt float %53, 9.843750e-01
  %1623 = select i1 %1622, float -4.000000e+00, float %1041
  %1624 = call float @dx.op.binary.f32(i32 35, float %1623, float 0.000000e+00)  ; FMax(a,b)
  %1625 = fadd fast float %1038, %1624
  %1626 = fmul fast float %1625, %1039
  %1627 = call float @dx.op.unary.f32(i32 23, float %1626)  ; Log(value)
  %1628 = fmul fast float %1040, %1627
  %1629 = fmul fast float %1628, %1048
  %1630 = call float @dx.op.unary.f32(i32 7, float %1629)  ; Saturate(value)
  %1631 = uitofp i32 %1616 to float
  %1632 = uitofp i32 %1619 to float
  %1633 = fadd fast float %1631, 5.000000e-01
  %1634 = fadd fast float %1632, 5.000000e-01
  %1635 = fmul fast float %1048, %1633
  %1636 = fmul fast float %1048, %1634
  %1637 = fadd fast float %1635, 0x3F0FFB4800000000
  %1638 = fadd fast float %1636, 0xBF0FFB4800000000
  %1639 = call float @dx.op.binary.f32(i32 35, float %1630, float %1637)  ; FMax(a,b)
  %1640 = call float @dx.op.binary.f32(i32 36, float %1639, float %1638)  ; FMin(a,b)
  %1641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1642 = extractvalue %dx.types.CBufRet.f32 %1641, 1
  %1643 = extractvalue %dx.types.CBufRet.f32 %1641, 2
  %1644 = extractvalue %dx.types.CBufRet.f32 %1641, 0
  %1645 = fmul fast float %1642, %1640
  %1646 = fadd fast float %1644, %1645
  %1647 = fadd fast float %1644, %1643
  %1648 = fsub fast float %1642, %1643
  %1649 = fadd fast float %1648, %1644
  %1650 = call float @dx.op.binary.f32(i32 35, float %1646, float %1647)  ; FMax(a,b)
  %1651 = call float @dx.op.binary.f32(i32 36, float %1650, float %1649)  ; FMin(a,b)
  %1652 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %1596, float %1597, float %1651, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1653 = extractvalue %dx.types.ResRet.f32 %1652, 0
  %1654 = extractvalue %dx.types.ResRet.f32 %1652, 1
  %1655 = extractvalue %dx.types.ResRet.f32 %1652, 2
  %1656 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %1596, float %1597, float %1651, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1657 = extractvalue %dx.types.ResRet.f32 %1656, 0
  %1658 = extractvalue %dx.types.ResRet.f32 %1656, 1
  %1659 = extractvalue %dx.types.ResRet.f32 %1656, 2
  %1660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1661 = extractvalue %dx.types.CBufRet.f32 %1660, 1
  %1662 = fmul fast float %1661, %1657
  %1663 = fmul fast float %1661, %1658
  %1664 = fmul fast float %1661, %1659
  br label %1665

; <label>:1665                                    ; preds = %1621, %1590
  %1666 = phi float [ %1653, %1621 ], [ 1.000000e+00, %1590 ]
  %1667 = phi float [ %1654, %1621 ], [ 1.000000e+00, %1590 ]
  %1668 = phi float [ %1655, %1621 ], [ 1.000000e+00, %1590 ]
  %1669 = phi float [ %1662, %1621 ], [ 0.000000e+00, %1590 ]
  %1670 = phi float [ %1663, %1621 ], [ 0.000000e+00, %1590 ]
  %1671 = phi float [ %1664, %1621 ], [ 0.000000e+00, %1590 ]
  %1672 = fmul fast float %1669, %1472
  %1673 = fmul fast float %1670, %1472
  %1674 = fmul fast float %1671, %1472
  %1675 = call float @dx.op.dot3.f32(i32 55, float %1666, float %1667, float %1668, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1676 = call float @dx.op.dot3.f32(i32 55, float %1672, float %1673, float %1674, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1677 = select i1 %131, float %1675, float %1666
  %1678 = select i1 %131, float %1675, float %1667
  %1679 = select i1 %131, float 1.000000e+00, float %1668
  %1680 = select i1 %131, float %1676, float %1672
  %1681 = select i1 %131, float 0.000000e+00, float %1673
  %1682 = select i1 %131, float 0.000000e+00, float %1674
  %1683 = fmul fast float %1677, %1583
  %1684 = fmul fast float %1678, %1586
  %1685 = fmul fast float %1679, %1589
  %1686 = fadd fast float %1683, %1680
  %1687 = fadd fast float %1684, %1681
  %1688 = fadd fast float %1682, %1685
  %1689 = fmul fast float %1677, %1567
  %1690 = fmul fast float %1678, %1568
  %1691 = fmul fast float %1679, %1569
  %1692 = fmul fast float %66, %1592
  %1693 = fmul fast float %68, %1593
  %1694 = fsub fast float 1.000000e+00, %1692
  %1695 = fsub fast float 1.000000e+00, %1693
  %1696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1697 = extractvalue %dx.types.CBufRet.f32 %1696, 0
  %1698 = extractvalue %dx.types.CBufRet.f32 %1696, 1
  %1699 = extractvalue %dx.types.CBufRet.f32 %1696, 2
  %1700 = fmul fast float %1694, %1697
  %1701 = fmul fast float %1694, %1698
  %1702 = fmul fast float %1694, %1699
  %1703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1704 = extractvalue %dx.types.CBufRet.f32 %1703, 0
  %1705 = extractvalue %dx.types.CBufRet.f32 %1703, 1
  %1706 = extractvalue %dx.types.CBufRet.f32 %1703, 2
  %1707 = fmul fast float %1695, %1704
  %1708 = fmul fast float %1695, %1705
  %1709 = fmul fast float %1695, %1706
  %1710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1711 = extractvalue %dx.types.CBufRet.f32 %1710, 0
  %1712 = extractvalue %dx.types.CBufRet.f32 %1710, 1
  %1713 = extractvalue %dx.types.CBufRet.f32 %1710, 2
  %1714 = fadd fast float %1707, %1711
  %1715 = fadd fast float %1714, %1700
  %1716 = fadd fast float %1708, %1712
  %1717 = fadd fast float %1716, %1701
  %1718 = fadd fast float %1709, %1713
  %1719 = fadd fast float %1718, %1702
  %1720 = fmul fast float %1715, %865
  %1721 = fmul fast float %1717, %865
  %1722 = fmul fast float %1719, %865
  br label %1723

; <label>:1723                                    ; preds = %1665, %1579
  %1724 = phi float [ %1720, %1665 ], [ %96, %1579 ]
  %1725 = phi float [ %1721, %1665 ], [ %97, %1579 ]
  %1726 = phi float [ %1722, %1665 ], [ %98, %1579 ]
  %1727 = phi float [ %865, %1665 ], [ %54, %1579 ]
  %1728 = phi float [ %1686, %1665 ], [ %1583, %1579 ]
  %1729 = phi float [ %1687, %1665 ], [ %1586, %1579 ]
  %1730 = phi float [ %1688, %1665 ], [ %1589, %1579 ]
  %1731 = phi float [ %1689, %1665 ], [ %1567, %1579 ]
  %1732 = phi float [ %1690, %1665 ], [ %1568, %1579 ]
  %1733 = phi float [ %1691, %1665 ], [ %1569, %1579 ]
  %1734 = phi float [ %1666, %1665 ], [ 1.000000e+00, %1579 ]
  br i1 %873, label %2790, label %1735

; <label>:1735                                    ; preds = %1723
  %1736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1737 = extractvalue %dx.types.CBufRet.f32 %1736, 0
  %1738 = extractvalue %dx.types.CBufRet.f32 %1736, 1
  %1739 = extractvalue %dx.types.CBufRet.f32 %1736, 2
  %1740 = extractvalue %dx.types.CBufRet.f32 %1736, 3
  %1741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1742 = extractvalue %dx.types.CBufRet.f32 %1741, 0
  %1743 = extractvalue %dx.types.CBufRet.f32 %1741, 1
  %1744 = extractvalue %dx.types.CBufRet.f32 %1741, 2
  %1745 = extractvalue %dx.types.CBufRet.f32 %1741, 3
  %1746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1747 = extractvalue %dx.types.CBufRet.f32 %1746, 0
  %1748 = extractvalue %dx.types.CBufRet.f32 %1746, 1
  %1749 = extractvalue %dx.types.CBufRet.f32 %1746, 2
  %1750 = extractvalue %dx.types.CBufRet.f32 %1746, 3
  %1751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1752 = extractvalue %dx.types.CBufRet.f32 %1751, 0
  %1753 = extractvalue %dx.types.CBufRet.f32 %1751, 1
  %1754 = extractvalue %dx.types.CBufRet.f32 %1751, 2
  %1755 = extractvalue %dx.types.CBufRet.f32 %1751, 3
  %1756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1757 = extractvalue %dx.types.CBufRet.f32 %1756, 3
  %1758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1759 = extractvalue %dx.types.CBufRet.f32 %1758, 3
  %1760 = extractvalue %dx.types.CBufRet.f32 %1758, 0
  %1761 = extractvalue %dx.types.CBufRet.f32 %1758, 1
  %1762 = extractvalue %dx.types.CBufRet.f32 %1758, 2
  %1763 = fcmp fast olt float %1762, -5.000000e-01
  %1764 = call float @dx.op.dot3.f32(i32 55, float %1724, float %1725, float %1726, float %1724, float %1725, float %1726)  ; Dot3(ax,ay,az,bx,by,bz)
  %1765 = call float @dx.op.unary.f32(i32 25, float %1764)  ; Rsqrt(value)
  %1766 = fmul fast float %1765, %1764
  %1767 = fmul fast float %1765, %1724
  %1768 = fmul fast float %1765, %1725
  %1769 = fmul fast float %1765, %1726
  %1770 = fadd fast float %1766, %1740
  %1771 = call float @dx.op.dot3.f32(i32 55, float %1767, float %1768, float %1769, float %1737, float %1738, float %1739)  ; Dot3(ax,ay,az,bx,by,bz)
  %1772 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1773 = extractvalue %dx.types.CBufRet.i32 %1772, 1
  %1774 = and i32 %1773, 1
  %1775 = icmp ne i32 %1774, 0
  %1776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1777 = extractvalue %dx.types.CBufRet.f32 %1776, 2
  %1778 = fcmp fast ogt float %1777, 0.000000e+00
  %1779 = and i1 %1775, %1778
  br i1 %1779, label %1780, label %2186, !dx.controlflow.hints !82

; <label>:1780                                    ; preds = %1735
  %1781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1782 = extractvalue %dx.types.CBufRet.f32 %1781, 3
  %1783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1784 = extractvalue %dx.types.CBufRet.f32 %1783, 2
  %1785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1786 = extractvalue %dx.types.CBufRet.f32 %1785, 2
  %1787 = fsub fast float %1784, %1786
  %1788 = and i32 %1773, 2
  %1789 = extractvalue %dx.types.CBufRet.i32 %1772, 0
  %1790 = call i32 @dx.op.binary.i32(i32 40, i32 %1789, i32 3)  ; UMin(a,b)
  %1791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1792 = extractvalue %dx.types.CBufRet.f32 %1791, 0
  %1793 = extractvalue %dx.types.CBufRet.f32 %1791, 1
  %1794 = extractvalue %dx.types.CBufRet.f32 %1785, 0
  %1795 = extractvalue %dx.types.CBufRet.f32 %1785, 1
  %1796 = fsub fast float %1792, %1794
  %1797 = fsub fast float %1793, %1795
  %1798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1799 = extractvalue %dx.types.CBufRet.f32 %1798, 0
  %1800 = fcmp fast ogt float %1799, 0.000000e+00
  %1801 = fsub fast float -0.000000e+00, %1796
  %1802 = fsub fast float -0.000000e+00, %1797
  %1803 = call float @dx.op.dot2.f32(i32 54, float %1767, float %1768, float %1767, float %1768)  ; Dot2(ax,ay,bx,by)
  %1804 = call float @dx.op.dot2.f32(i32 54, float %1767, float %1768, float %1801, float %1802)  ; Dot2(ax,ay,bx,by)
  %1805 = fmul fast float %1804, 2.000000e+00
  %1806 = call float @dx.op.dot2.f32(i32 54, float %1801, float %1802, float %1801, float %1802)  ; Dot2(ax,ay,bx,by)
  %1807 = fmul fast float %1799, %1799
  %1808 = fsub fast float %1806, %1807
  %1809 = fmul fast float %1805, %1805
  %1810 = fmul fast float %1803, 4.000000e+00
  %1811 = fmul fast float %1810, %1808
  %1812 = fsub fast float %1809, %1811
  %1813 = fcmp fast ogt float %1812, 0.000000e+00
  br i1 %1813, label %1814, label %1829

; <label>:1814                                    ; preds = %1780
  %1815 = fcmp fast ogt float %1805, 0.000000e+00
  %1816 = call float @dx.op.unary.f32(i32 24, float %1812)  ; Sqrt(value)
  %1817 = fsub fast float -0.000000e+00, %1816
  %1818 = select i1 %1815, float %1816, float %1817
  %1819 = fadd fast float %1818, %1805
  %1820 = fmul float %1819, -5.000000e-01
  %1821 = fdiv fast float %1820, %1803
  %1822 = call float @dx.op.binary.f32(i32 35, float %1821, float 0.000000e+00)  ; FMax(a,b)
  %1823 = call float @dx.op.binary.f32(i32 36, float %1766, float %1822)  ; FMin(a,b)
  %1824 = fdiv fast float %1808, %1820
  %1825 = call float @dx.op.binary.f32(i32 35, float %1824, float 0.000000e+00)  ; FMax(a,b)
  %1826 = call float @dx.op.binary.f32(i32 36, float %1766, float %1825)  ; FMin(a,b)
  %1827 = call float @dx.op.binary.f32(i32 36, float %1823, float %1826)  ; FMin(a,b)
  %1828 = call float @dx.op.binary.f32(i32 35, float %1823, float %1826)  ; FMax(a,b)
  br label %1829

; <label>:1829                                    ; preds = %1814, %1780
  %1830 = phi float [ %1828, %1814 ], [ -1.000000e+00, %1780 ]
  %1831 = phi float [ %1827, %1814 ], [ -1.000000e+00, %1780 ]
  %1832 = phi i1 [ true, %1814 ], [ false, %1780 ]
  %1833 = and i1 %1800, %1832
  br i1 %1833, label %1834, label %1836

; <label>:1834                                    ; preds = %1829
  %1835 = fcmp fast oeq float %1831, %1830
  br i1 %1835, label %2139, label %1837

; <label>:1836                                    ; preds = %1829
  br i1 %1800, label %2139, label %1837

; <label>:1837                                    ; preds = %1836, %1834
  %1838 = phi float [ %1766, %1836 ], [ %1830, %1834 ]
  %1839 = phi float [ 0.000000e+00, %1836 ], [ %1831, %1834 ]
  %1840 = icmp ne i32 %1788, 0
  %1841 = fmul fast float %1838, %1769
  %1842 = fadd fast float %1841, %1782
  %1843 = fmul fast float %1842, %1838
  %1844 = select i1 %1840, float 0.000000e+00, float %1843
  %1845 = fcmp fast oeq float %1769, 0.000000e+00
  %1846 = fdiv fast float %1787, %1769
  %1847 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1846)  ; FMax(a,b)
  %1848 = select i1 %1845, float %1838, float %1847
  %1849 = call float @dx.op.binary.f32(i32 36, float %1838, float %1848)  ; FMin(a,b)
  %1850 = fcmp fast ogt float %1769, 0.000000e+00
  %1851 = fcmp fast olt float %1787, 0.000000e+00
  br i1 %1850, label %1852, label %1909

; <label>:1852                                    ; preds = %1837
  %1853 = icmp eq i32 %1788, 0
  br i1 %1851, label %1854, label %1898

; <label>:1854                                    ; preds = %1852
  %1855 = select i1 %1853, float %1838, float 0.000000e+00
  %1856 = fsub fast float -0.000000e+00, %1855
  %1857 = call float @dx.op.unary.f32(i32 6, float %1856)  ; FAbs(value)
  %1858 = fmul fast float %1855, %1769
  %1859 = fadd fast float %1858, %1782
  %1860 = fmul fast float %1857, %1859
  %1861 = fsub fast float %1844, %1860
  %1862 = fsub fast float %1838, %1857
  %1863 = select i1 %1853, float %1862, float 0.000000e+00
  %1864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1865 = extractvalue %dx.types.CBufRet.f32 %1864, 0
  %1866 = extractvalue %dx.types.CBufRet.f32 %1864, 1
  %1867 = extractvalue %dx.types.CBufRet.f32 %1864, 2
  %1868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1869 = extractvalue %dx.types.CBufRet.f32 %1868, 0
  %1870 = extractvalue %dx.types.CBufRet.f32 %1868, 1
  %1871 = extractvalue %dx.types.CBufRet.f32 %1868, 2
  %1872 = extractvalue %dx.types.CBufRet.f32 %1868, 3
  %1873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1874 = extractvalue %dx.types.CBufRet.f32 %1873, 3
  %1875 = call float @dx.op.binary.f32(i32 36, float %1861, float %1874)  ; FMin(a,b)
  %1876 = fmul fast float %1872, %1863
  %1877 = call float @dx.op.unary.f32(i32 7, float %1876)  ; Saturate(value)
  %1878 = fsub fast float %1869, %1865
  %1879 = fsub fast float %1870, %1866
  %1880 = fsub fast float %1871, %1867
  %1881 = fmul fast float %1877, %1878
  %1882 = fmul fast float %1877, %1879
  %1883 = fmul fast float %1877, %1880
  %1884 = fadd fast float %1881, %1865
  %1885 = fadd fast float %1882, %1866
  %1886 = fadd fast float %1883, %1867
  %1887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1888 = extractvalue %dx.types.CBufRet.f32 %1887, 0
  %1889 = extractvalue %dx.types.CBufRet.f32 %1887, 1
  %1890 = fadd fast float %1889, %1888
  %1891 = call float @dx.op.unary.f32(i32 7, float %1890)  ; Saturate(value)
  %1892 = extractvalue %dx.types.CBufRet.f32 %1887, 2
  %1893 = extractvalue %dx.types.CBufRet.f32 %1887, 3
  %1894 = fadd fast float %1893, %1892
  %1895 = call float @dx.op.unary.f32(i32 7, float %1894)  ; Saturate(value)
  %1896 = fmul fast float %1891, %1875
  %1897 = fmul fast float %1896, %1895
  br label %2139

; <label>:1898                                    ; preds = %1852
  br i1 %1853, label %1899, label %1920

; <label>:1899                                    ; preds = %1898
  %1900 = call float @dx.op.binary.f32(i32 36, float %1849, float %1839)  ; FMin(a,b)
  %1901 = fsub fast float %1849, %1900
  %1902 = fsub fast float %1901, %1838
  %1903 = call float @dx.op.unary.f32(i32 6, float %1902)  ; FAbs(value)
  %1904 = fadd fast float %1901, %1838
  %1905 = fmul fast float %1904, %1769
  %1906 = fadd fast float %1905, %1782
  %1907 = fmul fast float %1906, %1903
  %1908 = fsub fast float %1844, %1907
  br label %1920

; <label>:1909                                    ; preds = %1837
  br i1 %1851, label %1910, label %1920

; <label>:1910                                    ; preds = %1909
  %1911 = call float @dx.op.binary.f32(i32 35, float %1839, float %1849)  ; FMax(a,b)
  %1912 = icmp eq i32 %1788, 0
  %1913 = select i1 %1912, float %1849, float 0.000000e+00
  %1914 = fsub fast float -0.000000e+00, %1913
  %1915 = call float @dx.op.unary.f32(i32 6, float %1914)  ; FAbs(value)
  %1916 = fmul fast float %1913, %1769
  %1917 = fadd fast float %1916, %1782
  %1918 = fmul fast float %1915, %1917
  %1919 = fsub fast float %1844, %1918
  br label %1920

; <label>:1920                                    ; preds = %1910, %1909, %1899, %1898
  %1921 = phi float [ %1839, %1898 ], [ %1839, %1899 ], [ %1911, %1910 ], [ %1839, %1909 ]
  %1922 = phi float [ 0.000000e+00, %1898 ], [ %1903, %1899 ], [ %1915, %1910 ], [ 0.000000e+00, %1909 ]
  %1923 = phi float [ %1844, %1898 ], [ %1908, %1899 ], [ %1919, %1910 ], [ %1844, %1909 ]
  %1924 = phi float [ %1849, %1898 ], [ %1849, %1899 ], [ %1838, %1910 ], [ %1838, %1909 ]
  %1925 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 0
  store float -1.000000e+00, float* %1925, align 4, !tbaa !83, !noalias !87
  %1926 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 1
  store float -1.000000e+00, float* %1926, align 4, !tbaa !83, !noalias !87
  %1927 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 2
  store float -1.000000e+00, float* %1927, align 4, !tbaa !83, !noalias !87
  %1928 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 0
  store float -1.000000e+00, float* %1928, align 4, !tbaa !83, !noalias !87
  %1929 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 1
  store float -1.000000e+00, float* %1929, align 4, !tbaa !83, !noalias !87
  %1930 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 2
  store float -1.000000e+00, float* %1930, align 4, !tbaa !83, !noalias !87
  %1931 = icmp sgt i32 %1790, 0
  br i1 %1931, label %1932, label %1993

; <label>:1932                                    ; preds = %1920
  br label %1933

; <label>:1933                                    ; preds = %1982, %1932
  %1934 = phi i32 [ %1983, %1982 ], [ 0, %1932 ]
  %1935 = phi i32 [ %1984, %1982 ], [ 0, %1932 ]
  %1936 = add nuw i32 %1935, 171
  %1937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 %1936)  ; CBufferLoadLegacy(handle,regIndex)
  %1938 = extractvalue %dx.types.CBufRet.f32 %1937, 0
  %1939 = extractvalue %dx.types.CBufRet.f32 %1937, 1
  %1940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1941 = extractvalue %dx.types.CBufRet.f32 %1940, 0
  %1942 = extractvalue %dx.types.CBufRet.f32 %1940, 1
  %1943 = fsub fast float %1938, %1941
  %1944 = fsub fast float %1939, %1942
  %1945 = extractvalue %dx.types.CBufRet.f32 %1937, 2
  %1946 = fsub fast float -0.000000e+00, %1943
  %1947 = fsub fast float -0.000000e+00, %1944
  %1948 = call float @dx.op.dot2.f32(i32 54, float %1767, float %1768, float %1946, float %1947)  ; Dot2(ax,ay,bx,by)
  %1949 = fmul fast float %1948, 2.000000e+00
  %1950 = call float @dx.op.dot2.f32(i32 54, float %1946, float %1947, float %1946, float %1947)  ; Dot2(ax,ay,bx,by)
  %1951 = fmul fast float %1945, %1945
  %1952 = fsub fast float %1950, %1951
  %1953 = fmul fast float %1949, %1949
  %1954 = fmul fast float %1810, %1952
  %1955 = fsub fast float %1953, %1954
  %1956 = fcmp fast ogt float %1955, 0.000000e+00
  br i1 %1956, label %1957, label %1972

; <label>:1957                                    ; preds = %1933
  %1958 = fcmp fast ogt float %1949, 0.000000e+00
  %1959 = call float @dx.op.unary.f32(i32 24, float %1955)  ; Sqrt(value)
  %1960 = fsub fast float -0.000000e+00, %1959
  %1961 = select i1 %1958, float %1959, float %1960
  %1962 = fadd fast float %1961, %1949
  %1963 = fmul float %1962, -5.000000e-01
  %1964 = fdiv fast float %1963, %1803
  %1965 = call float @dx.op.binary.f32(i32 35, float %1964, float 0.000000e+00)  ; FMax(a,b)
  %1966 = call float @dx.op.binary.f32(i32 36, float %1838, float %1965)  ; FMin(a,b)
  %1967 = fdiv fast float %1952, %1963
  %1968 = call float @dx.op.binary.f32(i32 35, float %1967, float 0.000000e+00)  ; FMax(a,b)
  %1969 = call float @dx.op.binary.f32(i32 36, float %1838, float %1968)  ; FMin(a,b)
  %1970 = call float @dx.op.binary.f32(i32 36, float %1966, float %1969)  ; FMin(a,b)
  %1971 = call float @dx.op.binary.f32(i32 35, float %1966, float %1969)  ; FMax(a,b)
  br label %1972

; <label>:1972                                    ; preds = %1957, %1933
  %1973 = phi float [ %1971, %1957 ], [ -1.000000e+00, %1933 ]
  %1974 = phi float [ %1970, %1957 ], [ -1.000000e+00, %1933 ]
  %1975 = phi i1 [ true, %1957 ], [ false, %1933 ]
  br i1 %1975, label %1976, label %1982

; <label>:1976                                    ; preds = %1972
  %1977 = call float @dx.op.binary.f32(i32 35, float %1921, float %1974)  ; FMax(a,b)
  %1978 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 %1935
  store float %1977, float* %1978, align 4, !tbaa !83, !noalias !87
  %1979 = call float @dx.op.binary.f32(i32 35, float %1921, float %1973)  ; FMax(a,b)
  %1980 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 %1935
  store float %1979, float* %1980, align 4, !tbaa !83, !noalias !87
  %1981 = add nsw i32 %1934, 1
  br label %1982

; <label>:1982                                    ; preds = %1976, %1972
  %1983 = phi i32 [ %1981, %1976 ], [ %1934, %1972 ]
  %1984 = add nuw nsw i32 %1935, 1
  %1985 = icmp eq i32 %1984, %1790
  br i1 %1985, label %1986, label %1933

; <label>:1986                                    ; preds = %1982
  %1987 = load float, float* %1927, align 4, !tbaa !83, !alias.scope !103, !noalias !106
  %1988 = load float, float* %1926, align 4, !tbaa !83, !alias.scope !109, !noalias !110
  %1989 = load float, float* %1925, align 4, !tbaa !83, !alias.scope !111, !noalias !112
  %1990 = load float, float* %1930, align 4, !tbaa !83, !alias.scope !113, !noalias !116
  %1991 = load float, float* %1929, align 4, !tbaa !83, !alias.scope !119, !noalias !120
  %1992 = load float, float* %1928, align 4, !tbaa !83, !alias.scope !121, !noalias !122
  br label %1993

; <label>:1993                                    ; preds = %1986, %1920
  %1994 = phi float [ -1.000000e+00, %1920 ], [ %1992, %1986 ]
  %1995 = phi float [ -1.000000e+00, %1920 ], [ %1991, %1986 ]
  %1996 = phi float [ -1.000000e+00, %1920 ], [ %1990, %1986 ]
  %1997 = phi float [ -1.000000e+00, %1920 ], [ %1989, %1986 ]
  %1998 = phi float [ -1.000000e+00, %1920 ], [ %1988, %1986 ]
  %1999 = phi float [ -1.000000e+00, %1920 ], [ %1987, %1986 ]
  %2000 = phi i32 [ 0, %1920 ], [ %1983, %1986 ]
  %2001 = call float @dx.op.binary.f32(i32 36, float %1998, float %1999)  ; FMin(a,b)
  %2002 = call float @dx.op.binary.f32(i32 36, float %1997, float %2001)  ; FMin(a,b)
  %2003 = call float @dx.op.binary.f32(i32 35, float %1997, float %1998)  ; FMax(a,b)
  %2004 = call float @dx.op.binary.f32(i32 36, float %2003, float %1999)  ; FMin(a,b)
  %2005 = call float @dx.op.binary.f32(i32 36, float %1997, float %1998)  ; FMin(a,b)
  %2006 = call float @dx.op.binary.f32(i32 35, float %2005, float %2004)  ; FMax(a,b)
  %2007 = call float @dx.op.binary.f32(i32 35, float %1998, float %1999)  ; FMax(a,b)
  %2008 = call float @dx.op.binary.f32(i32 35, float %1997, float %2007)  ; FMax(a,b)
  store float %2002, float* %1925, align 4, !tbaa !83, !alias.scope !111, !noalias !112
  store float %2006, float* %1926, align 4, !tbaa !83, !alias.scope !109, !noalias !110
  store float %2008, float* %1927, align 4, !tbaa !83, !alias.scope !103, !noalias !106
  %2009 = call float @dx.op.binary.f32(i32 36, float %1995, float %1996)  ; FMin(a,b)
  %2010 = call float @dx.op.binary.f32(i32 36, float %1994, float %2009)  ; FMin(a,b)
  %2011 = call float @dx.op.binary.f32(i32 35, float %1994, float %1995)  ; FMax(a,b)
  %2012 = call float @dx.op.binary.f32(i32 36, float %2011, float %1996)  ; FMin(a,b)
  %2013 = call float @dx.op.binary.f32(i32 36, float %1994, float %1995)  ; FMin(a,b)
  %2014 = call float @dx.op.binary.f32(i32 35, float %2013, float %2012)  ; FMax(a,b)
  %2015 = call float @dx.op.binary.f32(i32 35, float %1995, float %1996)  ; FMax(a,b)
  %2016 = call float @dx.op.binary.f32(i32 35, float %1994, float %2015)  ; FMax(a,b)
  store float %2010, float* %1928, align 4, !tbaa !83, !alias.scope !121, !noalias !122
  store float %2014, float* %1929, align 4, !tbaa !83, !alias.scope !119, !noalias !120
  store float %2016, float* %1930, align 4, !tbaa !83, !alias.scope !113, !noalias !116
  %2017 = sub nsw i32 3, %2000
  %2018 = icmp sgt i32 %2017, 2
  br i1 %2018, label %2019, label %2057

; <label>:2019                                    ; preds = %1993
  %2020 = icmp eq i32 %1788, 0
  %2021 = fsub fast float %1838, %1922
  %2022 = select i1 %2020, float %2021, float %1922
  %2023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2024 = extractvalue %dx.types.CBufRet.f32 %2023, 0
  %2025 = extractvalue %dx.types.CBufRet.f32 %2023, 1
  %2026 = extractvalue %dx.types.CBufRet.f32 %2023, 2
  %2027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2028 = extractvalue %dx.types.CBufRet.f32 %2027, 0
  %2029 = extractvalue %dx.types.CBufRet.f32 %2027, 1
  %2030 = extractvalue %dx.types.CBufRet.f32 %2027, 2
  %2031 = extractvalue %dx.types.CBufRet.f32 %2027, 3
  %2032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2033 = extractvalue %dx.types.CBufRet.f32 %2032, 3
  %2034 = call float @dx.op.binary.f32(i32 36, float %1923, float %2033)  ; FMin(a,b)
  %2035 = fmul fast float %2031, %2022
  %2036 = call float @dx.op.unary.f32(i32 7, float %2035)  ; Saturate(value)
  %2037 = fsub fast float %2028, %2024
  %2038 = fsub fast float %2029, %2025
  %2039 = fsub fast float %2030, %2026
  %2040 = fmul fast float %2036, %2037
  %2041 = fmul fast float %2036, %2038
  %2042 = fmul fast float %2036, %2039
  %2043 = fadd fast float %2040, %2024
  %2044 = fadd fast float %2041, %2025
  %2045 = fadd fast float %2042, %2026
  %2046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2047 = extractvalue %dx.types.CBufRet.f32 %2046, 0
  %2048 = extractvalue %dx.types.CBufRet.f32 %2046, 1
  %2049 = fadd fast float %2048, %2047
  %2050 = call float @dx.op.unary.f32(i32 7, float %2049)  ; Saturate(value)
  %2051 = extractvalue %dx.types.CBufRet.f32 %2046, 2
  %2052 = extractvalue %dx.types.CBufRet.f32 %2046, 3
  %2053 = fadd fast float %2052, %2051
  %2054 = call float @dx.op.unary.f32(i32 7, float %2053)  ; Saturate(value)
  %2055 = fmul fast float %2050, %2034
  %2056 = fmul fast float %2055, %2054
  br label %2139

; <label>:2057                                    ; preds = %1993
  %2058 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 %2017
  %2059 = load float, float* %2058, align 4, !tbaa !83, !noalias !87
  %2060 = fcmp fast olt float %2059, %1924
  %2061 = icmp sgt i32 %2000, 0
  %2062 = and i1 %2061, %2060
  br i1 %2062, label %2063, label %2100

; <label>:2063                                    ; preds = %2057
  br label %2064

; <label>:2064                                    ; preds = %2093, %2063
  %2065 = phi float [ %2094, %2093 ], [ %1922, %2063 ]
  %2066 = phi float [ %2095, %2093 ], [ %1923, %2063 ]
  %2067 = phi float [ %2075, %2093 ], [ %2059, %2063 ]
  %2068 = phi i32 [ %2072, %2093 ], [ %2017, %2063 ]
  %2069 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 %2068
  %2070 = load float, float* %2069, align 4, !tbaa !83, !noalias !87
  %2071 = icmp slt i32 %2068, 2
  %2072 = add nsw i32 %2068, 1
  %2073 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 %2072
  %2074 = load float, float* %2073, align 4, !tbaa !83, !noalias !87
  %2075 = select i1 %2071, float %2074, float %1838
  %2076 = call float @dx.op.binary.f32(i32 36, float %2075, float %2070)  ; FMin(a,b)
  %2077 = call float @dx.op.binary.f32(i32 36, float %1924, float %2076)  ; FMin(a,b)
  %2078 = icmp eq i32 %1788, 0
  %2079 = fadd fast float %2077, %2067
  %2080 = fmul fast float %2079, %1769
  %2081 = fadd fast float %2080, %1782
  br i1 %2078, label %2087, label %2082

; <label>:2082                                    ; preds = %2064
  %2083 = fsub fast float %2077, %2067
  %2084 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2083)  ; FMax(a,b)
  %2085 = fmul fast float %2084, %2081
  %2086 = fadd fast float %2085, %2066
  br label %2093

; <label>:2087                                    ; preds = %2064
  %2088 = fsub fast float %2067, %2077
  %2089 = call float @dx.op.unary.f32(i32 6, float %2088)  ; FAbs(value)
  %2090 = fadd fast float %2089, %2065
  %2091 = fmul fast float %2089, %2081
  %2092 = fsub fast float %2066, %2091
  br label %2093

; <label>:2093                                    ; preds = %2087, %2082
  %2094 = phi float [ %2084, %2082 ], [ %2090, %2087 ]
  %2095 = phi float [ %2086, %2082 ], [ %2092, %2087 ]
  %2096 = fcmp fast olt float %2075, %1924
  %2097 = icmp slt i32 %2072, 3
  %2098 = and i1 %2097, %2096
  br i1 %2098, label %2064, label %2099

; <label>:2099                                    ; preds = %2093
  br label %2100

; <label>:2100                                    ; preds = %2099, %2057
  %2101 = phi float [ %1922, %2057 ], [ %2094, %2099 ]
  %2102 = phi float [ %1923, %2057 ], [ %2095, %2099 ]
  %2103 = fsub fast float %1838, %2101
  %2104 = select i1 %1840, float %2101, float %2103
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
  %2116 = call float @dx.op.binary.f32(i32 36, float %2102, float %2115)  ; FMin(a,b)
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
  br label %2139

; <label>:2139                                    ; preds = %2100, %2019, %1854, %1836, %1834
  %2140 = phi float [ %1863, %1854 ], [ %2022, %2019 ], [ %2104, %2100 ], [ 0.000000e+00, %1834 ], [ 0.000000e+00, %1836 ]
  %2141 = phi float [ %1897, %1854 ], [ %2056, %2019 ], [ %2138, %2100 ], [ 0.000000e+00, %1834 ], [ 0.000000e+00, %1836 ]
  %2142 = phi float [ %1884, %1854 ], [ %2043, %2019 ], [ %2125, %2100 ], [ 0.000000e+00, %1834 ], [ 0.000000e+00, %1836 ]
  %2143 = phi float [ %1885, %1854 ], [ %2044, %2019 ], [ %2126, %2100 ], [ 0.000000e+00, %1834 ], [ 0.000000e+00, %1836 ]
  %2144 = phi float [ %1886, %1854 ], [ %2045, %2019 ], [ %2127, %2100 ], [ 0.000000e+00, %1834 ], [ 0.000000e+00, %1836 ]
  %2145 = fmul fast float %1777, %2141
  %2146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2147 = extractvalue %dx.types.CBufRet.f32 %2146, 2
  %2148 = fsub fast float %1784, %2147
  %2149 = fcmp fast olt float %2145, -2.000000e+01
  %2150 = call float @dx.op.unary.f32(i32 21, float %2145)  ; Exp(value)
  %2151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2152 = extractvalue %dx.types.CBufRet.f32 %2151, 2
  %2153 = extractvalue %dx.types.CBufRet.f32 %2151, 3
  %2154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2155 = extractvalue %dx.types.CBufRet.f32 %2154, 2
  %2156 = fmul fast float %2153, %2148
  %2157 = call float @dx.op.unary.f32(i32 7, float %2156)  ; Saturate(value)
  %2158 = fsub fast float 1.000000e+00, %2157
  %2159 = fmul fast float %1769, 5.000000e-01
  %2160 = fadd fast float %2159, 5.000000e-01
  %2161 = call float @dx.op.unary.f32(i32 7, float %2160)  ; Saturate(value)
  %2162 = fsub fast float 1.000000e+00, %2161
  %2163 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2158)  ; FMax(a,b)
  %2164 = fdiv fast float %2162, %2163
  %2165 = fsub fast float %2148, %1726
  %2166 = call float @dx.op.unary.f32(i32 6, float %2165)  ; FAbs(value)
  %2167 = fmul fast float %2166, %2152
  %2168 = call float @dx.op.unary.f32(i32 7, float %2164)  ; Saturate(value)
  %2169 = fsub fast float 1.000000e+00, %2167
  %2170 = fmul fast float %2169, %2168
  %2171 = fadd fast float %2170, %2167
  %2172 = fmul fast float %2155, %2148
  %2173 = call float @dx.op.unary.f32(i32 7, float %2172)  ; Saturate(value)
  %2174 = fsub fast float 1.000000e+00, %2171
  %2175 = fmul fast float %2174, %2173
  %2176 = fadd fast float %2175, %2171
  %2177 = call float @dx.op.unary.f32(i32 7, float %2176)  ; Saturate(value)
  %2178 = fadd fast float %2150, -1.000000e+00
  %2179 = select i1 %2149, float -1.000000e+00, float %2178
  %2180 = fmul fast float %2177, %2179
  %2181 = fadd fast float %2180, 1.000000e+00
  %2182 = fsub fast float -0.000000e+00, %2180
  %2183 = fmul fast float %2142, %2182
  %2184 = fmul fast float %2143, %2182
  %2185 = fmul fast float %2144, %2182
  br label %2186

; <label>:2186                                    ; preds = %2139, %1735
  %2187 = phi float [ %2140, %2139 ], [ 0.000000e+00, %1735 ]
  %2188 = phi float [ %2181, %2139 ], [ 1.000000e+00, %1735 ]
  %2189 = phi float [ %2183, %2139 ], [ 0.000000e+00, %1735 ]
  %2190 = phi float [ %2184, %2139 ], [ 0.000000e+00, %1735 ]
  %2191 = phi float [ %2185, %2139 ], [ 0.000000e+00, %1735 ]
  %2192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2193 = extractvalue %dx.types.CBufRet.f32 %2192, 1
  %2194 = fsub fast float 1.000000e+00, %2188
  %2195 = fmul fast float %2194, %1770
  %2196 = fmul fast float %2195, %2193
  %2197 = fsub fast float %1770, %2196
  br i1 %1763, label %2198, label %2227, !dx.controlflow.hints !123

; <label>:2198                                    ; preds = %2186
  %2199 = fmul fast float %1771, %1760
  %2200 = fadd fast float %2199, %1761
  %2201 = call float @dx.op.unary.f32(i32 7, float %2200)  ; Saturate(value)
  %2202 = fmul fast float %1742, %2197
  %2203 = fsub fast float -0.000000e+00, %2202
  %2204 = fmul fast float %1743, %2197
  %2205 = fsub fast float -0.000000e+00, %2204
  %2206 = call float @dx.op.unary.f32(i32 21, float %2203)  ; Exp(value)
  %2207 = call float @dx.op.unary.f32(i32 21, float %2205)  ; Exp(value)
  %2208 = call float @dx.op.binary.f32(i32 35, float %1750, float %2206)  ; FMax(a,b)
  %2209 = call float @dx.op.binary.f32(i32 35, float %1750, float %2207)  ; FMax(a,b)
  %2210 = fsub fast float %2209, %2208
  %2211 = fmul fast float %2210, %2201
  %2212 = fadd fast float %2211, %2208
  %2213 = call float @dx.op.unary.f32(i32 7, float %2212)  ; Saturate(value)
  %2214 = fsub fast float %1747, %1752
  %2215 = fsub fast float %1748, %1753
  %2216 = fsub fast float %1749, %1754
  %2217 = fmul fast float %2201, %2214
  %2218 = fmul fast float %2201, %2215
  %2219 = fmul fast float %2201, %2216
  %2220 = fadd fast float %2217, %1752
  %2221 = fadd fast float %2218, %1753
  %2222 = fadd fast float %2219, %1754
  %2223 = fsub fast float 1.000000e+00, %2213
  %2224 = fmul fast float %2223, %2220
  %2225 = fmul fast float %2223, %2221
  %2226 = fmul fast float %2223, %2222
  br label %2286

; <label>:2227                                    ; preds = %2186
  %2228 = fmul fast float %2197, %1759
  %2229 = call float @dx.op.unary.f32(i32 7, float %2228)  ; Saturate(value)
  %2230 = fsub fast float 2.000000e+00, %2229
  %2231 = fmul fast float %2229, 9.921875e-01
  %2232 = fmul fast float %2231, %2230
  %2233 = fadd fast float %2232, 3.906250e-03
  %2234 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %26, float %2233, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2235 = extractvalue %dx.types.ResRet.f32 %2234, 0
  %2236 = fsub fast float %2229, %2235
  %2237 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2236)  ; FMax(a,b)
  %2238 = fmul fast float %1745, %1726
  %2239 = call float @dx.op.unary.f32(i32 6, float %2238)  ; FAbs(value)
  %2240 = fcmp fast ogt float %2239, 0x3EB0C6F7A0000000
  br i1 %2240, label %2241, label %2247, !dx.controlflow.hints !124

; <label>:2241                                    ; preds = %2227
  %2242 = fmul fast float %2238, 0xBFF7154760000000
  %2243 = call float @dx.op.unary.f32(i32 21, float %2242)  ; Exp(value)
  %2244 = fsub fast float 1.000000e+00, %2243
  %2245 = fdiv fast float %2244, %2238
  %2246 = fmul fast float %2245, %1755
  br label %2247

; <label>:2247                                    ; preds = %2241, %2227
  %2248 = phi float [ %2246, %2241 ], [ %1755, %2227 ]
  %2249 = fadd fast float %2248, %1757
  %2250 = fmul fast float %2249, %2237
  %2251 = fmul fast float %1742, %2250
  %2252 = fsub fast float -0.000000e+00, %2251
  %2253 = fmul fast float %1743, %2250
  %2254 = fsub fast float -0.000000e+00, %2253
  %2255 = fmul fast float %1744, %2250
  %2256 = fsub fast float -0.000000e+00, %2255
  %2257 = call float @dx.op.unary.f32(i32 21, float %2252)  ; Exp(value)
  %2258 = call float @dx.op.unary.f32(i32 21, float %2254)  ; Exp(value)
  %2259 = call float @dx.op.unary.f32(i32 21, float %2256)  ; Exp(value)
  %2260 = fmul fast float %1771, %1771
  %2261 = fadd fast float %2260, 1.000000e+00
  %2262 = fmul fast float %2261, 0x3FAE8EC8A0000000
  %2263 = fmul fast float %2262, %1752
  %2264 = fmul fast float %2262, %1753
  %2265 = fmul fast float %2262, %1754
  %2266 = fmul fast float %1771, %1750
  %2267 = fsub fast float 1.000000e+00, %2266
  %2268 = fmul fast float %1750, %1750
  %2269 = fsub fast float 1.000000e+00, %2268
  %2270 = fmul fast float %2269, 0x3FB45F3060000000
  %2271 = fmul fast float %2267, %2267
  %2272 = fdiv fast float 1.000000e+00, %2271
  %2273 = fmul fast float %2270, %2272
  %2274 = fmul fast float %2273, %1747
  %2275 = fmul fast float %2273, %1748
  %2276 = fmul fast float %2273, %1749
  %2277 = fadd fast float %2274, %2263
  %2278 = fadd fast float %2275, %2264
  %2279 = fadd fast float %2276, %2265
  %2280 = fsub fast float 1.000000e+00, %2257
  %2281 = fsub fast float 1.000000e+00, %2258
  %2282 = fsub fast float 1.000000e+00, %2259
  %2283 = fmul fast float %2277, %2280
  %2284 = fmul fast float %2278, %2281
  %2285 = fmul fast float %2279, %2282
  br label %2286

; <label>:2286                                    ; preds = %2247, %2198
  %2287 = phi float [ %2224, %2198 ], [ %2283, %2247 ]
  %2288 = phi float [ %2225, %2198 ], [ %2284, %2247 ]
  %2289 = phi float [ %2226, %2198 ], [ %2285, %2247 ]
  %2290 = phi float [ %2213, %2198 ], [ %2257, %2247 ]
  %2291 = phi float [ %2213, %2198 ], [ %2258, %2247 ]
  %2292 = phi float [ %2213, %2198 ], [ %2259, %2247 ]
  br i1 %1779, label %2293, label %2491, !dx.controlflow.hints !125

; <label>:2293                                    ; preds = %2286
  %2294 = extractvalue %dx.types.CBufRet.f32 %2192, 0
  %2295 = fmul fast float %2294, %2194
  %2296 = fsub fast float %2189, %2287
  %2297 = fsub fast float %2190, %2288
  %2298 = fsub fast float %2191, %2289
  %2299 = fmul fast float %2295, %2296
  %2300 = fmul fast float %2295, %2297
  %2301 = fmul fast float %2295, %2298
  %2302 = fadd fast float %2299, %2287
  %2303 = fadd fast float %2300, %2288
  %2304 = fadd fast float %2301, %2289
  %2305 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2290)  ; FMax(a,b)
  %2306 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2291)  ; FMax(a,b)
  %2307 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2292)  ; FMax(a,b)
  %2308 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2188)  ; FMax(a,b)
  %2309 = call float @dx.op.binary.f32(i32 35, float %2187, float %2197)  ; FMax(a,b)
  %2310 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2309)  ; FMax(a,b)
  %2311 = fdiv fast float %2187, %2310
  %2312 = call float @dx.op.unary.f32(i32 7, float %2311)  ; Saturate(value)
  %2313 = fdiv fast float %2197, %2310
  %2314 = call float @dx.op.unary.f32(i32 7, float %2313)  ; Saturate(value)
  %2315 = fcmp fast une float %2308, 1.000000e+00
  br i1 %2315, label %2316, label %2329, !dx.controlflow.hints !126

; <label>:2316                                    ; preds = %2293
  %2317 = call float @dx.op.unary.f32(i32 23, float %2308)  ; Log(value)
  %2318 = fmul fast float %2317, 0x3FE62E4300000000
  %2319 = fmul fast float %2189, %2318
  %2320 = fsub fast float -0.000000e+00, %2319
  %2321 = fmul fast float %2190, %2318
  %2322 = fsub fast float -0.000000e+00, %2321
  %2323 = fmul fast float %2191, %2318
  %2324 = fsub fast float -0.000000e+00, %2323
  %2325 = fsub fast float 1.000000e+00, %2308
  %2326 = fdiv fast float %2320, %2325
  %2327 = fdiv fast float %2322, %2325
  %2328 = fdiv fast float %2324, %2325
  br label %2329

; <label>:2329                                    ; preds = %2316, %2293
  %2330 = phi float [ %2326, %2316 ], [ %2189, %2293 ]
  %2331 = phi float [ %2327, %2316 ], [ %2190, %2293 ]
  %2332 = phi float [ %2328, %2316 ], [ %2191, %2293 ]
  %2333 = phi float [ %2318, %2316 ], [ 0.000000e+00, %2293 ]
  %2334 = fcmp fast une float %2305, 1.000000e+00
  br i1 %2334, label %2335, label %2342, !dx.controlflow.hints !127

; <label>:2335                                    ; preds = %2329
  %2336 = call float @dx.op.unary.f32(i32 23, float %2305)  ; Log(value)
  %2337 = fmul fast float %2336, 0x3FE62E4300000000
  %2338 = fmul fast float %2302, %2337
  %2339 = fsub fast float -0.000000e+00, %2338
  %2340 = fsub fast float 1.000000e+00, %2305
  %2341 = fdiv fast float %2339, %2340
  br label %2342

; <label>:2342                                    ; preds = %2335, %2329
  %2343 = phi float [ %2341, %2335 ], [ %2302, %2329 ]
  %2344 = phi float [ %2337, %2335 ], [ 0.000000e+00, %2329 ]
  %2345 = fcmp fast une float %2306, 1.000000e+00
  br i1 %2345, label %2346, label %2353, !dx.controlflow.hints !127

; <label>:2346                                    ; preds = %2342
  %2347 = call float @dx.op.unary.f32(i32 23, float %2306)  ; Log(value)
  %2348 = fmul fast float %2347, 0x3FE62E4300000000
  %2349 = fmul fast float %2303, %2348
  %2350 = fsub fast float -0.000000e+00, %2349
  %2351 = fsub fast float 1.000000e+00, %2306
  %2352 = fdiv fast float %2350, %2351
  br label %2353

; <label>:2353                                    ; preds = %2346, %2342
  %2354 = phi float [ %2352, %2346 ], [ %2303, %2342 ]
  %2355 = phi float [ %2348, %2346 ], [ 0.000000e+00, %2342 ]
  %2356 = fcmp fast une float %2307, 1.000000e+00
  br i1 %2356, label %2357, label %2364, !dx.controlflow.hints !127

; <label>:2357                                    ; preds = %2353
  %2358 = call float @dx.op.unary.f32(i32 23, float %2307)  ; Log(value)
  %2359 = fmul fast float %2358, 0x3FE62E4300000000
  %2360 = fmul fast float %2304, %2359
  %2361 = fsub fast float -0.000000e+00, %2360
  %2362 = fsub fast float 1.000000e+00, %2307
  %2363 = fdiv fast float %2361, %2362
  br label %2364

; <label>:2364                                    ; preds = %2357, %2353
  %2365 = phi float [ %2363, %2357 ], [ %2304, %2353 ]
  %2366 = phi float [ %2359, %2357 ], [ 0.000000e+00, %2353 ]
  %2367 = fmul fast float %2330, %2314
  %2368 = fmul fast float %2331, %2314
  %2369 = fmul fast float %2332, %2314
  %2370 = fmul fast float %2333, %2314
  %2371 = fmul fast float %2343, %2312
  %2372 = fmul fast float %2354, %2312
  %2373 = fmul fast float %2365, %2312
  %2374 = fmul fast float %2344, %2312
  %2375 = fmul fast float %2355, %2312
  %2376 = fmul fast float %2366, %2312
  %2377 = fadd fast float %2371, %2367
  %2378 = fadd fast float %2372, %2368
  %2379 = fadd fast float %2373, %2369
  %2380 = fadd fast float %2374, %2370
  %2381 = fadd fast float %2375, %2370
  %2382 = fadd fast float %2376, %2370
  %2383 = fcmp fast une float %2380, 0.000000e+00
  br i1 %2383, label %2384, label %2391, !dx.controlflow.hints !128

; <label>:2384                                    ; preds = %2364
  %2385 = fmul fast float %2380, 0x3FF7154760000000
  %2386 = call float @dx.op.unary.f32(i32 21, float %2385)  ; Exp(value)
  %2387 = fsub fast float 1.000000e+00, %2386
  %2388 = fmul fast float %2377, %2387
  %2389 = fsub fast float -0.000000e+00, %2388
  %2390 = fdiv fast float %2389, %2380
  br label %2391

; <label>:2391                                    ; preds = %2384, %2364
  %2392 = phi float [ %2386, %2384 ], [ 1.000000e+00, %2364 ]
  %2393 = phi float [ %2390, %2384 ], [ %2377, %2364 ]
  %2394 = fcmp fast une float %2381, 0.000000e+00
  br i1 %2394, label %2395, label %2402, !dx.controlflow.hints !128

; <label>:2395                                    ; preds = %2391
  %2396 = fmul fast float %2381, 0x3FF7154760000000
  %2397 = call float @dx.op.unary.f32(i32 21, float %2396)  ; Exp(value)
  %2398 = fsub fast float 1.000000e+00, %2397
  %2399 = fmul fast float %2378, %2398
  %2400 = fsub fast float -0.000000e+00, %2399
  %2401 = fdiv fast float %2400, %2381
  br label %2402

; <label>:2402                                    ; preds = %2395, %2391
  %2403 = phi float [ %2397, %2395 ], [ 1.000000e+00, %2391 ]
  %2404 = phi float [ %2401, %2395 ], [ %2378, %2391 ]
  %2405 = fcmp fast une float %2382, 0.000000e+00
  br i1 %2405, label %2406, label %2413, !dx.controlflow.hints !128

; <label>:2406                                    ; preds = %2402
  %2407 = fmul fast float %2382, 0x3FF7154760000000
  %2408 = call float @dx.op.unary.f32(i32 21, float %2407)  ; Exp(value)
  %2409 = fsub fast float 1.000000e+00, %2408
  %2410 = fmul fast float %2379, %2409
  %2411 = fsub fast float -0.000000e+00, %2410
  %2412 = fdiv fast float %2411, %2382
  br label %2413

; <label>:2413                                    ; preds = %2406, %2402
  %2414 = phi float [ %2408, %2406 ], [ 1.000000e+00, %2402 ]
  %2415 = phi float [ %2412, %2406 ], [ %2379, %2402 ]
  %2416 = fcmp fast ogt float %2312, %2314
  br i1 %2416, label %2417, label %2437

; <label>:2417                                    ; preds = %2413
  %2418 = fsub fast float 1.000000e+00, %2314
  %2419 = fmul fast float %2330, %2418
  %2420 = fmul fast float %2331, %2418
  %2421 = fmul fast float %2332, %2418
  %2422 = fmul fast float %2333, %2418
  %2423 = fcmp fast une float %2422, 0.000000e+00
  br i1 %2423, label %2424, label %2475, !dx.controlflow.hints !129

; <label>:2424                                    ; preds = %2417
  %2425 = fmul fast float %2422, 0x3FF7154760000000
  %2426 = call float @dx.op.unary.f32(i32 21, float %2425)  ; Exp(value)
  %2427 = fsub fast float 1.000000e+00, %2426
  %2428 = fmul fast float %2419, %2427
  %2429 = fsub fast float -0.000000e+00, %2428
  %2430 = fmul fast float %2420, %2427
  %2431 = fsub fast float -0.000000e+00, %2430
  %2432 = fmul fast float %2421, %2427
  %2433 = fsub fast float -0.000000e+00, %2432
  %2434 = fdiv fast float %2429, %2422
  %2435 = fdiv fast float %2431, %2422
  %2436 = fdiv fast float %2433, %2422
  br label %2475

; <label>:2437                                    ; preds = %2413
  %2438 = fsub fast float 1.000000e+00, %2312
  %2439 = fmul fast float %2343, %2438
  %2440 = fmul fast float %2354, %2438
  %2441 = fmul fast float %2365, %2438
  %2442 = fmul fast float %2344, %2438
  %2443 = fmul fast float %2355, %2438
  %2444 = fmul fast float %2366, %2438
  %2445 = fcmp fast une float %2442, 0.000000e+00
  br i1 %2445, label %2446, label %2453, !dx.controlflow.hints !128

; <label>:2446                                    ; preds = %2437
  %2447 = fmul fast float %2442, 0x3FF7154760000000
  %2448 = call float @dx.op.unary.f32(i32 21, float %2447)  ; Exp(value)
  %2449 = fsub fast float 1.000000e+00, %2448
  %2450 = fmul fast float %2439, %2449
  %2451 = fsub fast float -0.000000e+00, %2450
  %2452 = fdiv fast float %2451, %2442
  br label %2453

; <label>:2453                                    ; preds = %2446, %2437
  %2454 = phi float [ %2452, %2446 ], [ %2439, %2437 ]
  %2455 = phi float [ %2448, %2446 ], [ 1.000000e+00, %2437 ]
  %2456 = fcmp fast une float %2443, 0.000000e+00
  br i1 %2456, label %2457, label %2464, !dx.controlflow.hints !128

; <label>:2457                                    ; preds = %2453
  %2458 = fmul fast float %2443, 0x3FF7154760000000
  %2459 = call float @dx.op.unary.f32(i32 21, float %2458)  ; Exp(value)
  %2460 = fsub fast float 1.000000e+00, %2459
  %2461 = fmul fast float %2440, %2460
  %2462 = fsub fast float -0.000000e+00, %2461
  %2463 = fdiv fast float %2462, %2443
  br label %2464

; <label>:2464                                    ; preds = %2457, %2453
  %2465 = phi float [ %2463, %2457 ], [ %2440, %2453 ]
  %2466 = phi float [ %2459, %2457 ], [ 1.000000e+00, %2453 ]
  %2467 = fcmp fast une float %2444, 0.000000e+00
  br i1 %2467, label %2468, label %2475, !dx.controlflow.hints !128

; <label>:2468                                    ; preds = %2464
  %2469 = fmul fast float %2444, 0x3FF7154760000000
  %2470 = call float @dx.op.unary.f32(i32 21, float %2469)  ; Exp(value)
  %2471 = fsub fast float 1.000000e+00, %2470
  %2472 = fmul fast float %2441, %2471
  %2473 = fsub fast float -0.000000e+00, %2472
  %2474 = fdiv fast float %2473, %2444
  br label %2475

; <label>:2475                                    ; preds = %2468, %2464, %2424, %2417
  %2476 = phi float [ %2474, %2468 ], [ %2436, %2424 ], [ %2421, %2417 ], [ %2441, %2464 ]
  %2477 = phi float [ %2465, %2468 ], [ %2435, %2424 ], [ %2420, %2417 ], [ %2465, %2464 ]
  %2478 = phi float [ %2454, %2468 ], [ %2434, %2424 ], [ %2419, %2417 ], [ %2454, %2464 ]
  %2479 = phi float [ %2470, %2468 ], [ %2426, %2424 ], [ 1.000000e+00, %2417 ], [ 1.000000e+00, %2464 ]
  %2480 = phi float [ %2466, %2468 ], [ %2426, %2424 ], [ 1.000000e+00, %2417 ], [ %2466, %2464 ]
  %2481 = phi float [ %2455, %2468 ], [ %2426, %2424 ], [ 1.000000e+00, %2417 ], [ %2455, %2464 ]
  %2482 = fmul fast float %2481, %2393
  %2483 = fmul fast float %2480, %2404
  %2484 = fmul fast float %2479, %2415
  %2485 = fadd fast float %2482, %2478
  %2486 = fadd fast float %2483, %2477
  %2487 = fadd fast float %2484, %2476
  %2488 = fmul fast float %2481, %2392
  %2489 = fmul fast float %2480, %2403
  %2490 = fmul fast float %2479, %2414
  br label %2491

; <label>:2491                                    ; preds = %2475, %2286
  %2492 = phi float [ %2490, %2475 ], [ %2292, %2286 ]
  %2493 = phi float [ %2489, %2475 ], [ %2291, %2286 ]
  %2494 = phi float [ %2488, %2475 ], [ %2290, %2286 ]
  %2495 = phi float [ %2487, %2475 ], [ %2289, %2286 ]
  %2496 = phi float [ %2486, %2475 ], [ %2288, %2286 ]
  %2497 = phi float [ %2485, %2475 ], [ %2287, %2286 ]
  %2498 = fmul fast float %2497, %1472
  %2499 = fmul fast float %2496, %1472
  %2500 = fmul fast float %2495, %1472
  %2501 = fmul fast float %2494, %1734
  %2502 = call float @dx.op.dot3.f32(i32 55, float %2494, float %2493, float %2492, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2503 = call float @dx.op.dot3.f32(i32 55, float %2498, float %2499, float %2500, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2504 = select i1 %131, float %2502, float %2494
  %2505 = select i1 %131, float %2502, float %2493
  %2506 = select i1 %131, float 1.000000e+00, float %2492
  %2507 = select i1 %131, float %2503, float %2498
  %2508 = select i1 %131, float 0.000000e+00, float %2499
  %2509 = select i1 %131, float 0.000000e+00, float %2500
  %2510 = fmul fast float %2504, %1728
  %2511 = fmul fast float %2505, %1729
  %2512 = fmul fast float %2506, %1730
  %2513 = fadd fast float %2510, %2507
  %2514 = fadd fast float %2511, %2508
  %2515 = fadd fast float %2509, %2512
  %2516 = fmul fast float %2504, %1731
  %2517 = fmul fast float %2505, %1732
  %2518 = fmul fast float %2506, %1733
  %2519 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2520 = extractvalue %dx.types.CBufRet.i32 %2519, 0
  %2521 = icmp eq i32 %2520, 0
  br i1 %2521, label %2790, label %2522, !dx.controlflow.hints !130

; <label>:2522                                    ; preds = %2491
  %2523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2524 = extractvalue %dx.types.CBufRet.f32 %2523, 2
  %2525 = extractvalue %dx.types.CBufRet.f32 %2523, 3
  %2526 = fmul fast float %2524, %61
  %2527 = fmul fast float %2525, %62
  %2528 = fmul fast float %2526, 2.000000e+00
  %2529 = fmul fast float %2527, 2.000000e+00
  %2530 = fsub fast float 1.000000e+00, %2528
  %2531 = fsub fast float 1.000000e+00, %2529
  %2532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2533 = extractvalue %dx.types.CBufRet.f32 %2532, 0
  %2534 = extractvalue %dx.types.CBufRet.f32 %2532, 1
  %2535 = extractvalue %dx.types.CBufRet.f32 %2532, 2
  %2536 = fmul fast float %2530, %2533
  %2537 = fmul fast float %2530, %2534
  %2538 = fmul fast float %2530, %2535
  %2539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2540 = extractvalue %dx.types.CBufRet.f32 %2539, 0
  %2541 = extractvalue %dx.types.CBufRet.f32 %2539, 1
  %2542 = extractvalue %dx.types.CBufRet.f32 %2539, 2
  %2543 = fmul fast float %2531, %2540
  %2544 = fmul fast float %2531, %2541
  %2545 = fmul fast float %2531, %2542
  %2546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2547 = extractvalue %dx.types.CBufRet.f32 %2546, 0
  %2548 = extractvalue %dx.types.CBufRet.f32 %2546, 1
  %2549 = extractvalue %dx.types.CBufRet.f32 %2546, 2
  %2550 = fadd fast float %2543, %2547
  %2551 = fadd fast float %2550, %2536
  %2552 = fadd fast float %2544, %2548
  %2553 = fadd fast float %2552, %2537
  %2554 = fadd fast float %2545, %2549
  %2555 = fadd fast float %2554, %2538
  %2556 = fmul fast float %2551, %1727
  %2557 = fmul fast float %2553, %1727
  %2558 = fmul fast float %2555, %1727
  %2559 = fmul fast float %2556, %2556
  %2560 = fmul fast float %2557, %2557
  %2561 = fadd fast float %2559, %2560
  %2562 = fmul fast float %2558, %2558
  %2563 = fadd fast float %2561, %2562
  %2564 = call float @dx.op.unary.f32(i32 24, float %2563)  ; Sqrt(value)
  %2565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2566 = extractvalue %dx.types.CBufRet.f32 %2565, 0
  %2567 = fsub fast float %2564, %2566
  %2568 = extractvalue %dx.types.CBufRet.f32 %2565, 2
  %2569 = fmul fast float %2567, %2568
  %2570 = call float @dx.op.unary.f32(i32 7, float %2569)  ; Saturate(value)
  %2571 = fadd fast float %2570, -5.000000e-01
  %2572 = fmul fast float %2571, 2.000000e+00
  %2573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2574 = extractvalue %dx.types.CBufRet.f32 %2573, 2
  %2575 = call float @dx.op.binary.f32(i32 36, float %2574, float %2572)  ; FMin(a,b)
  %2576 = fsub fast float -0.000000e+00, %2574
  %2577 = fcmp fast ogt float %2575, %2576
  br i1 %2577, label %2578, label %2790, !dx.controlflow.hints !131

; <label>:2578                                    ; preds = %2522
  %2579 = fmul fast float %2575, 5.000000e-01
  %2580 = fadd fast float %2579, 5.000000e-01
  %2581 = call float @dx.op.unary.f32(i32 22, float %2580)  ; Frc(value)
  %2582 = call float @dx.op.unary.f32(i32 27, float %2581)  ; Round_ni(value)
  %2583 = call float @dx.op.unary.f32(i32 22, float %2581)  ; Frc(value)
  %2584 = fmul fast float %2583, 2.000000e+00
  %2585 = fadd fast float %2584, -1.000000e+00
  %2586 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %26, float %2526, float %2527, float %2582, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2587 = extractvalue %dx.types.ResRet.f32 %2586, 0
  %2588 = extractvalue %dx.types.ResRet.f32 %2586, 1
  %2589 = extractvalue %dx.types.ResRet.f32 %2586, 2
  %2590 = extractvalue %dx.types.ResRet.f32 %2586, 3
  %2591 = fadd fast float %2587, -5.000000e-01
  %2592 = fadd fast float %2589, -5.000000e-01
  %2593 = fmul fast float %2591, 0xBFD5555560000000
  %2594 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2592, float %2593)  ; FMad(a,b,c)
  %2595 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2588, float 0.000000e+00)  ; FMad(a,b,c)
  %2596 = fadd fast float %2595, %2590
  %2597 = fmul fast float %2591, -7.500000e-01
  %2598 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2592, float %2597)  ; FMad(a,b,c)
  %2599 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2588, float 0.000000e+00)  ; FMad(a,b,c)
  %2600 = fadd fast float %2599, %2590
  %2601 = call float @dx.op.binary.f32(i32 35, float %2594, float -1.000000e+00)  ; FMax(a,b)
  %2602 = call float @dx.op.binary.f32(i32 35, float %2596, float -1.000000e+00)  ; FMax(a,b)
  %2603 = call float @dx.op.binary.f32(i32 35, float %2598, float -1.000000e+00)  ; FMax(a,b)
  %2604 = call float @dx.op.binary.f32(i32 35, float %2600, float -1.000000e+00)  ; FMax(a,b)
  %2605 = call float @dx.op.binary.f32(i32 36, float %2601, float 1.000000e+00)  ; FMin(a,b)
  %2606 = call float @dx.op.binary.f32(i32 36, float %2602, float 1.000000e+00)  ; FMin(a,b)
  %2607 = call float @dx.op.binary.f32(i32 36, float %2603, float 1.000000e+00)  ; FMin(a,b)
  %2608 = call float @dx.op.binary.f32(i32 36, float %2604, float 1.000000e+00)  ; FMin(a,b)
  %2609 = fcmp fast olt float %2605, 0x3FEFFF8020000000
  br i1 %2609, label %2610, label %2725, !dx.controlflow.hints !132

; <label>:2610                                    ; preds = %2578
  %2611 = extractvalue %dx.types.CBufRet.f32 %2573, 3
  %2612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %2613 = extractvalue %dx.types.CBufRet.f32 %2612, 0
  %2614 = extractvalue %dx.types.CBufRet.f32 %2612, 1
  %2615 = extractvalue %dx.types.CBufRet.f32 %2612, 2
  %2616 = extractvalue %dx.types.CBufRet.f32 %2612, 3
  %2617 = fsub fast float %2613, %2605
  %2618 = fsub fast float %2614, %2606
  %2619 = fsub fast float %2615, %2607
  %2620 = fsub fast float %2616, %2608
  %2621 = fmul fast float %2617, %2611
  %2622 = fmul fast float %2618, %2611
  %2623 = fmul fast float %2619, %2611
  %2624 = fmul fast float %2620, %2611
  %2625 = fadd fast float %2621, %2605
  %2626 = fadd fast float %2622, %2606
  %2627 = fsub fast float -0.000000e+00, %2626
  %2628 = fadd fast float %2623, %2607
  %2629 = fadd fast float %2624, %2608
  %2630 = fmul fast float %2625, %2625
  %2631 = fsub fast float %2626, %2630
  %2632 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2631)  ; FMax(a,b)
  %2633 = fdiv fast float 1.000000e+00, %2632
  %2634 = fmul fast float %2626, %2625
  %2635 = fsub fast float %2628, %2634
  %2636 = fsub fast float %2585, %2625
  %2637 = fmul fast float %2585, %2585
  %2638 = fsub fast float %2637, %2626
  %2639 = fmul fast float %2636, %2633
  %2640 = fmul fast float %2639, %2635
  %2641 = fsub fast float %2638, %2640
  %2642 = fmul fast float %2626, %2626
  %2643 = fsub fast float %2629, %2642
  %2644 = fmul fast float %2635, %2635
  %2645 = fmul fast float %2644, %2633
  %2646 = fsub fast float %2643, %2645
  %2647 = fdiv fast float %2641, %2646
  %2648 = fmul fast float %2635, %2647
  %2649 = fsub fast float %2636, %2648
  %2650 = fmul fast float %2649, %2633
  %2651 = fmul fast float %2650, %2625
  %2652 = fsub fast float 1.000000e+00, %2651
  %2653 = fmul fast float %2626, %2647
  %2654 = fsub fast float %2652, %2653
  %2655 = fmul fast float %2650, %2650
  %2656 = fmul fast float %2647, 4.000000e+00
  %2657 = fmul fast float %2656, %2654
  %2658 = fsub fast float %2655, %2657
  %2659 = call float @dx.op.unary.f32(i32 24, float %2658)  ; Sqrt(value)
  %2660 = fcmp fast oge float %2650, 0.000000e+00
  %2661 = fsub fast float -0.000000e+00, %2659
  %2662 = select i1 %2660, float %2661, float %2659
  %2663 = fsub fast float %2662, %2650
  %2664 = fdiv fast float %2663, %2647
  %2665 = fdiv fast float %2654, %2663
  %2666 = fmul fast float %2664, 5.000000e-01
  %2667 = fmul fast float %2665, 2.000000e+00
  %2668 = select i1 %2660, float %2666, float %2667
  %2669 = select i1 %2660, float %2667, float %2666
  %2670 = call float @dx.op.binary.f32(i32 35, float %2668, float %2669)  ; FMax(a,b)
  %2671 = call float @dx.op.binary.f32(i32 36, float %2668, float %2669)  ; FMin(a,b)
  %2672 = fcmp fast ogt float %2585, %2671
  br i1 %2672, label %2673, label %2683

; <label>:2673                                    ; preds = %2610
  %2674 = fsub fast float %2585, %2671
  %2675 = fsub fast float %2670, %2671
  %2676 = fmul fast float %2674, %2675
  %2677 = fmul fast float %2670, %2585
  %2678 = fadd fast float %2670, %2585
  %2679 = fmul fast float %2678, %2625
  %2680 = fadd fast float %2677, %2626
  %2681 = fsub fast float %2680, %2679
  %2682 = fdiv fast float %2681, %2676
  br label %2683

; <label>:2683                                    ; preds = %2673, %2610
  %2684 = phi float [ %2682, %2673 ], [ 0.000000e+00, %2610 ]
  %2685 = fcmp fast ogt float %2585, %2670
  %2686 = fsub fast float %2585, %2670
  br i1 %2685, label %2687, label %2697

; <label>:2687                                    ; preds = %2683
  %2688 = fsub fast float %2670, %2671
  %2689 = fmul fast float %2688, %2686
  %2690 = fmul fast float %2671, %2585
  %2691 = fadd fast float %2671, %2585
  %2692 = fmul fast float %2691, %2625
  %2693 = fsub fast float %2627, %2690
  %2694 = fadd fast float %2693, %2692
  %2695 = fdiv fast float %2694, %2689
  %2696 = fadd fast float %2695, %2684
  br label %2697

; <label>:2697                                    ; preds = %2687, %2683
  %2698 = phi float [ %2696, %2687 ], [ %2684, %2683 ]
  %2699 = fsub fast float %2585, %2671
  %2700 = fmul fast float %2699, %2686
  %2701 = fmul fast float %2671, %2670
  %2702 = fadd fast float %2671, %2670
  %2703 = fmul fast float %2702, %2625
  %2704 = fadd fast float %2701, %2626
  %2705 = fsub fast float %2704, %2703
  %2706 = fdiv fast float %2705, %2700
  %2707 = call float @dx.op.unary.f32(i32 7, float %2698)  ; Saturate(value)
  %2708 = fcmp fast oeq float %1580, 0.000000e+00
  %2709 = extractvalue %dx.types.CBufRet.f32 %2573, 0
  %2710 = fcmp fast oeq float %2709, 0.000000e+00
  %2711 = or i1 %2708, %2710
  %2712 = fmul fast float %2709, 2.000000e+00
  %2713 = fadd fast float %2574, %2575
  %2714 = fdiv fast float %2713, %2712
  %2715 = call float @dx.op.unary.f32(i32 7, float %2714)  ; Saturate(value)
  %2716 = fmul fast float %2715, 2.000000e+00
  %2717 = fsub fast float 3.000000e+00, %2716
  %2718 = fmul fast float %2715, %2715
  %2719 = fmul fast float %2718, %2717
  %2720 = select i1 %2711, float 1.000000e+00, float %2719
  %2721 = fmul fast float %2706, %1580
  %2722 = fadd fast float %2707, %2721
  %2723 = call float @dx.op.unary.f32(i32 7, float %2722)  ; Saturate(value)
  %2724 = fmul fast float %2720, %2723
  br label %2725

; <label>:2725                                    ; preds = %2697, %2578
  %2726 = phi float [ %2724, %2697 ], [ 0.000000e+00, %2578 ]
  %2727 = fsub fast float 1.000000e+00, %2726
  %2728 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %26, float %2526, float %2527, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2729 = extractvalue %dx.types.ResRet.f32 %2728, 0
  %2730 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2731 = extractvalue %dx.types.CBufRet.i32 %2730, 2
  %2732 = icmp eq i32 %2731, 0
  br i1 %2732, label %2738, label %2733

; <label>:2733                                    ; preds = %2725
  %2734 = call float @dx.op.unary.f32(i32 7, float %2726)  ; Saturate(value)
  %2735 = fadd fast float %2729, -1.000000e+00
  %2736 = fmul fast float %2734, %2735
  %2737 = fadd fast float %2736, 1.000000e+00
  br label %2738

; <label>:2738                                    ; preds = %2733, %2725
  %2739 = phi float [ %2737, %2733 ], [ %2727, %2725 ]
  %2740 = call float @dx.op.binary.f32(i32 35, float %2729, float %2739)  ; FMax(a,b)
  %2741 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %2742 = extractvalue %dx.types.CBufRet.i32 %2741, 2
  %2743 = and i32 %2742, 1
  %2744 = icmp eq i32 %2743, 0
  %2745 = fcmp fast une float %2740, 1.000000e+00
  %2746 = and i1 %2745, %2744
  br i1 %2746, label %2747, label %2766

; <label>:2747                                    ; preds = %2738
  %2748 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %26, float %2526, float %2527, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2749 = extractvalue %dx.types.ResRet.f32 %2748, 0
  %2750 = extractvalue %dx.types.ResRet.f32 %2748, 1
  %2751 = extractvalue %dx.types.ResRet.f32 %2748, 2
  %2752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2753 = extractvalue %dx.types.CBufRet.f32 %2752, 1
  %2754 = fmul fast float %2753, %2749
  %2755 = fmul fast float %2753, %2750
  %2756 = fmul fast float %2753, %2751
  %2757 = fcmp fast ogt float %2729, 0x3FEFFF2E40000000
  %2758 = fsub fast float 1.000000e+00, %2740
  %2759 = fsub fast float 1.000000e+00, %2729
  %2760 = fdiv fast float %2758, %2759
  %2761 = call float @dx.op.unary.f32(i32 7, float %2760)  ; Saturate(value)
  %2762 = select i1 %2757, float 0.000000e+00, float %2761
  %2763 = fmul fast float %2754, %2762
  %2764 = fmul fast float %2755, %2762
  %2765 = fmul fast float %2756, %2762
  br label %2766

; <label>:2766                                    ; preds = %2747, %2738
  %2767 = phi float [ 0.000000e+00, %2738 ], [ %2763, %2747 ]
  %2768 = phi float [ 0.000000e+00, %2738 ], [ %2764, %2747 ]
  %2769 = phi float [ 0.000000e+00, %2738 ], [ %2765, %2747 ]
  %2770 = fmul fast float %2767, %1472
  %2771 = fmul fast float %2768, %1472
  %2772 = fmul fast float %2769, %1472
  %2773 = fmul fast float %2740, %2501
  %2774 = call float @dx.op.dot3.f32(i32 55, float %2740, float %2740, float %2740, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2775 = call float @dx.op.dot3.f32(i32 55, float %2770, float %2771, float %2772, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2776 = select i1 %131, float %2774, float %2740
  %2777 = select i1 %131, float 1.000000e+00, float %2740
  %2778 = select i1 %131, float %2775, float %2770
  %2779 = select i1 %131, float 0.000000e+00, float %2771
  %2780 = select i1 %131, float 0.000000e+00, float %2772
  %2781 = fmul fast float %2776, %2513
  %2782 = fmul fast float %2776, %2514
  %2783 = fmul fast float %2777, %2515
  %2784 = fadd fast float %2781, %2778
  %2785 = fadd fast float %2782, %2779
  %2786 = fadd fast float %2780, %2783
  %2787 = fmul fast float %2776, %2516
  %2788 = fmul fast float %2776, %2517
  %2789 = fmul fast float %2777, %2518
  br label %2790

; <label>:2790                                    ; preds = %2766, %2522, %2491, %1723
  %2791 = phi float [ %1728, %1723 ], [ %2513, %2491 ], [ %2784, %2766 ], [ %2513, %2522 ]
  %2792 = phi float [ %1729, %1723 ], [ %2514, %2491 ], [ %2785, %2766 ], [ %2514, %2522 ]
  %2793 = phi float [ %1730, %1723 ], [ %2515, %2491 ], [ %2786, %2766 ], [ %2515, %2522 ]
  %2794 = phi float [ %1731, %1723 ], [ %2516, %2491 ], [ %2787, %2766 ], [ %2516, %2522 ]
  %2795 = phi float [ %1732, %1723 ], [ %2517, %2491 ], [ %2788, %2766 ], [ %2517, %2522 ]
  %2796 = phi float [ %1733, %1723 ], [ %2518, %2491 ], [ %2789, %2766 ], [ %2518, %2522 ]
  %2797 = phi float [ %1734, %1723 ], [ %2501, %2491 ], [ %2773, %2766 ], [ %2501, %2522 ]
  %2798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2799 = extractvalue %dx.types.CBufRet.f32 %2798, 2
  %2800 = extractvalue %dx.types.CBufRet.f32 %2798, 3
  %2801 = fmul fast float %2799, %61
  %2802 = fmul fast float %2800, %62
  %2803 = call float @dx.op.unary.f32(i32 7, float %2801)  ; Saturate(value)
  %2804 = call float @dx.op.unary.f32(i32 7, float %2802)  ; Saturate(value)
  %2805 = select i1 %873, i32 2, i32 0
  %2806 = or i32 %2805, 1
  %2807 = uitofp i32 %2806 to float
  %2808 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %2803, float %2804, float %2807, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2809 = extractvalue %dx.types.ResRet.f32 %2808, 0
  %2810 = extractvalue %dx.types.ResRet.f32 %2808, 1
  %2811 = extractvalue %dx.types.ResRet.f32 %2808, 2
  %2812 = extractvalue %dx.types.ResRet.f32 %2808, 3
  %2813 = add nuw nsw i32 %2805, 2
  %2814 = uitofp i32 %2813 to float
  %2815 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %2803, float %2804, float %2814, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2816 = extractvalue %dx.types.ResRet.f32 %2815, 0
  %2817 = extractvalue %dx.types.ResRet.f32 %2815, 1
  %2818 = extractvalue %dx.types.ResRet.f32 %2815, 2
  %2819 = extractvalue %dx.types.ResRet.f32 %2815, 3
  %2820 = call float @dx.op.binary.f32(i32 35, float %2810, float %2811)  ; FMax(a,b)
  %2821 = call float @dx.op.binary.f32(i32 35, float %2809, float %2820)  ; FMax(a,b)
  %2822 = call float @dx.op.binary.f32(i32 35, float %2821, float %2812)  ; FMax(a,b)
  %2823 = call float @dx.op.binary.f32(i32 36, float %2817, float %2818)  ; FMin(a,b)
  %2824 = call float @dx.op.binary.f32(i32 36, float %2816, float %2823)  ; FMin(a,b)
  %2825 = call float @dx.op.binary.f32(i32 36, float %2824, float %2819)  ; FMin(a,b)
  %2826 = fmul fast float %2822, 2.550000e+02
  %2827 = fadd fast float %2826, 0x3F70101020000000
  %2828 = fptoui float %2827 to i32
  %2829 = fmul fast float %2825, 2.550000e+02
  %2830 = fadd fast float %2829, 0x3F70101020000000
  %2831 = fptoui float %2830 to i32
  %2832 = icmp ult i32 %2828, %2831
  br i1 %2832, label %2833, label %2879

; <label>:2833                                    ; preds = %2790
  %2834 = fcmp fast ogt float %53, 9.843750e-01
  %2835 = fadd fast float %1727, -4.000000e+00
  %2836 = select i1 %2834, float -4.000000e+00, float %2835
  %2837 = call float @dx.op.binary.f32(i32 35, float %2836, float 0.000000e+00)  ; FMax(a,b)
  %2838 = fadd fast float %1038, %2837
  %2839 = fmul fast float %2838, %1039
  %2840 = call float @dx.op.unary.f32(i32 23, float %2839)  ; Log(value)
  %2841 = fmul fast float %1040, %2840
  %2842 = fmul fast float %2841, %1048
  %2843 = call float @dx.op.unary.f32(i32 7, float %2842)  ; Saturate(value)
  %2844 = uitofp i32 %2828 to float
  %2845 = uitofp i32 %2831 to float
  %2846 = fadd fast float %2844, 5.000000e-01
  %2847 = fadd fast float %2845, 5.000000e-01
  %2848 = fmul fast float %1048, %2846
  %2849 = fmul fast float %1048, %2847
  %2850 = fadd fast float %2848, 0x3F0FFB4800000000
  %2851 = fadd fast float %2849, 0xBF0FFB4800000000
  %2852 = call float @dx.op.binary.f32(i32 35, float %2843, float %2850)  ; FMax(a,b)
  %2853 = call float @dx.op.binary.f32(i32 36, float %2852, float %2851)  ; FMin(a,b)
  %2854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %2855 = extractvalue %dx.types.CBufRet.f32 %2854, 1
  %2856 = extractvalue %dx.types.CBufRet.f32 %2854, 2
  %2857 = extractvalue %dx.types.CBufRet.f32 %2854, 0
  %2858 = select i1 %873, float %2857, float 0.000000e+00
  %2859 = fmul fast float %2855, %2853
  %2860 = fadd fast float %2858, %2859
  %2861 = fadd fast float %2858, %2856
  %2862 = fsub fast float %2855, %2856
  %2863 = fadd fast float %2862, %2858
  %2864 = call float @dx.op.binary.f32(i32 35, float %2860, float %2861)  ; FMax(a,b)
  %2865 = call float @dx.op.binary.f32(i32 36, float %2864, float %2863)  ; FMin(a,b)
  %2866 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %2803, float %2804, float %2865, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2867 = extractvalue %dx.types.ResRet.f32 %2866, 0
  %2868 = extractvalue %dx.types.ResRet.f32 %2866, 1
  %2869 = extractvalue %dx.types.ResRet.f32 %2866, 2
  %2870 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %2803, float %2804, float %2865, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2871 = extractvalue %dx.types.ResRet.f32 %2870, 0
  %2872 = extractvalue %dx.types.ResRet.f32 %2870, 1
  %2873 = extractvalue %dx.types.ResRet.f32 %2870, 2
  %2874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2875 = extractvalue %dx.types.CBufRet.f32 %2874, 1
  %2876 = fmul fast float %2875, %2871
  %2877 = fmul fast float %2875, %2872
  %2878 = fmul fast float %2875, %2873
  br label %2879

; <label>:2879                                    ; preds = %2833, %2790
  %2880 = phi float [ %2867, %2833 ], [ 1.000000e+00, %2790 ]
  %2881 = phi float [ %2868, %2833 ], [ 1.000000e+00, %2790 ]
  %2882 = phi float [ %2869, %2833 ], [ 1.000000e+00, %2790 ]
  %2883 = phi float [ %2876, %2833 ], [ 0.000000e+00, %2790 ]
  %2884 = phi float [ %2877, %2833 ], [ 0.000000e+00, %2790 ]
  %2885 = phi float [ %2878, %2833 ], [ 0.000000e+00, %2790 ]
  %2886 = fmul fast float %2883, %1472
  %2887 = fmul fast float %2884, %1472
  %2888 = fmul fast float %2885, %1472
  %2889 = fmul fast float %2880, %2797
  %2890 = call float @dx.op.dot3.f32(i32 55, float %2880, float %2881, float %2882, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2891 = call float @dx.op.dot3.f32(i32 55, float %2886, float %2887, float %2888, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2892 = select i1 %131, float %2890, float %2880
  %2893 = select i1 %131, float %2890, float %2881
  %2894 = select i1 %131, float 1.000000e+00, float %2882
  %2895 = select i1 %131, float %2891, float %2886
  %2896 = select i1 %131, float 0.000000e+00, float %2887
  %2897 = select i1 %131, float 0.000000e+00, float %2888
  %2898 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2899 = extractvalue %dx.types.CBufRet.i32 %2898, 3
  %2900 = and i32 %2899, 3
  %2901 = icmp ne i32 %2900, 0
  %2902 = and i32 %2899, 4
  %2903 = icmp ne i32 %2902, 0
  %2904 = and i1 %2901, %2903
  %2905 = and i1 %131, %2904
  br i1 %2905, label %2906, label %2912

; <label>:2906                                    ; preds = %2879
  %2907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2908 = extractvalue %dx.types.CBufRet.f32 %2907, 1
  %2909 = fadd fast float %2889, -1.000000e+00
  %2910 = fmul fast float %2908, %2909
  %2911 = fadd fast float %2910, 1.000000e+00
  br label %2912

; <label>:2912                                    ; preds = %2906, %2879
  %2913 = phi float [ %2911, %2906 ], [ %2889, %2879 ]
  %2914 = fadd fast float %2794, %2791
  %2915 = fmul fast float %2892, %2914
  %2916 = fadd fast float %2915, %2895
  %2917 = fadd fast float %2795, %2792
  %2918 = fmul fast float %2893, %2917
  %2919 = fadd fast float %2918, %2896
  %2920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2921 = extractvalue %dx.types.CBufRet.f32 %2920, 0
  br i1 %131, label %2922, label %2943

; <label>:2922                                    ; preds = %2912
  %2923 = fadd fast float %2916, %2919
  %2924 = fmul fast float %2921, %2923
  %2925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %2926 = extractvalue %dx.types.CBufRet.f32 %2925, 3
  %2927 = extractvalue %dx.types.CBufRet.f32 %1476, 1
  %2928 = fsub fast float %1479, %2927
  %2929 = extractvalue %dx.types.CBufRet.f32 %1476, 2
  %2930 = fmul fast float %2928, %2929
  %2931 = call float @dx.op.unary.f32(i32 7, float %2930)  ; Saturate(value)
  %2932 = fsub fast float %2931, %2926
  %2933 = fmul fast float %2932, %2913
  %2934 = fadd fast float %2933, %2926
  %2935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2936 = extractvalue %dx.types.CBufRet.f32 %2935, 0
  %2937 = fsub fast float %2934, %2936
  %2938 = fmul fast float %2937, 1.000000e+01
  %2939 = call float @dx.op.unary.f32(i32 7, float %2938)  ; Saturate(value)
  %2940 = fmul fast float %2939, %1472
  %2941 = fsub fast float %1472, %2940
  %2942 = fmul fast float %2941, %2934
  br label %2955

; <label>:2943                                    ; preds = %2912
  %2944 = fadd fast float %2796, %2793
  %2945 = fmul fast float %2894, %2944
  %2946 = fadd fast float %2945, %2897
  %2947 = fmul fast float %2921, %2916
  %2948 = fmul fast float %2921, %2919
  %2949 = fmul fast float %2921, %2946
  %2950 = call float @dx.op.binary.f32(i32 35, float %2948, float %2949)  ; FMax(a,b)
  %2951 = call float @dx.op.binary.f32(i32 35, float %2947, float %2950)  ; FMax(a,b)
  %2952 = call float @dx.op.binary.f32(i32 35, float %2951, float %1472)  ; FMax(a,b)
  %2953 = fcmp fast ugt float %2952, 0x3F10000000000000
  br i1 %2953, label %2955, label %2954

; <label>:2954                                    ; preds = %2943
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %2955

; <label>:2955                                    ; preds = %2954, %2943, %2922
  %2956 = phi float [ %2924, %2922 ], [ %2947, %2954 ], [ %2947, %2943 ]
  %2957 = phi float [ %2942, %2922 ], [ %2948, %2954 ], [ %2948, %2943 ]
  %2958 = phi float [ %2941, %2922 ], [ %2949, %2954 ], [ %2949, %2943 ]
  %2959 = phi float [ %2941, %2922 ], [ %1472, %2954 ], [ %1472, %2943 ]
  %2960 = fadd fast float %537, 0x3FE3C6EF40000000
  %2961 = call float @dx.op.unary.f32(i32 22, float %2960)  ; Frc(value)
  %2962 = call float @dx.op.unary.f32(i32 23, float %2956)  ; Log(value)
  %2963 = fadd fast float %2962, -7.000000e+00
  %2964 = call float @dx.op.unary.f32(i32 21, float %2963)  ; Exp(value)
  %2965 = fmul fast float %2961, 2.000000e+00
  %2966 = fadd fast float %2965, -1.000000e+00
  %2967 = fmul fast float %2964, %2966
  %2968 = fcmp fast ogt float %2956, 0.000000e+00
  %2969 = select i1 %2968, float %2967, float 0.000000e+00
  %2970 = fadd fast float %2969, %2956
  %2971 = fadd fast float %537, 0x3FF3C6EF40000000
  %2972 = call float @dx.op.unary.f32(i32 22, float %2971)  ; Frc(value)
  %2973 = call float @dx.op.unary.f32(i32 23, float %2957)  ; Log(value)
  %2974 = fadd fast float %2973, -7.000000e+00
  %2975 = call float @dx.op.unary.f32(i32 21, float %2974)  ; Exp(value)
  %2976 = fmul fast float %2972, 2.000000e+00
  %2977 = fadd fast float %2976, -1.000000e+00
  %2978 = fmul fast float %2975, %2977
  %2979 = fcmp fast ogt float %2957, 0.000000e+00
  %2980 = select i1 %2979, float %2978, float 0.000000e+00
  %2981 = fadd fast float %2980, %2957
  %2982 = fadd fast float %537, 0x3FFDAA66E0000000
  %2983 = call float @dx.op.unary.f32(i32 22, float %2982)  ; Frc(value)
  %2984 = call float @dx.op.unary.f32(i32 23, float %2958)  ; Log(value)
  %2985 = fadd fast float %2984, -6.000000e+00
  %2986 = call float @dx.op.unary.f32(i32 21, float %2985)  ; Exp(value)
  %2987 = fmul fast float %2983, 2.000000e+00
  %2988 = fadd fast float %2987, -1.000000e+00
  %2989 = fmul fast float %2986, %2988
  %2990 = fcmp fast ogt float %2958, 0.000000e+00
  %2991 = select i1 %2990, float %2989, float 0.000000e+00
  %2992 = fadd fast float %2991, %2958
  %2993 = select i1 %131, float %2957, float %2981
  %2994 = select i1 %131, float %2958, float %2992
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %2995 = call float @dx.op.binary.f32(i32 36, float %2970, float 3.225500e+04)  ; FMin(a,b)
  %2996 = call float @dx.op.binary.f32(i32 36, float %2993, float 3.225500e+04)  ; FMin(a,b)
  %2997 = call float @dx.op.binary.f32(i32 36, float %2994, float 3.225500e+04)  ; FMin(a,b)
  %2998 = call float @dx.op.binary.f32(i32 36, float %2959, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %2995)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %2996)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %2997)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %2998)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %2959)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %2959)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %2959)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %2959)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

