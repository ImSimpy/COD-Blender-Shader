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
; shader hash: d375cda2e580014d69292ea0e8d636b6
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
  br i1 %269, label %520, label %270, !dx.controlflow.hints !71

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
  %517 = fmul fast float %516, %50
  %518 = fmul fast float %515, %228
  %519 = fmul fast float %518, %516
  br label %520

; <label>:520                                     ; preds = %510, %267
  %521 = phi float [ %512, %510 ], [ %47, %267 ]
  %522 = phi float [ %513, %510 ], [ %48, %267 ]
  %523 = phi float [ %514, %510 ], [ %49, %267 ]
  %524 = phi float [ %519, %510 ], [ %228, %267 ]
  %525 = phi float [ %517, %510 ], [ %50, %267 ]
  %526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %527 = extractvalue %dx.types.CBufRet.f32 %526, 2
  %528 = fptosi float %54 to i32
  %529 = sitofp i32 %528 to float
  %530 = fadd fast float %527, %529
  %531 = fmul fast float %530, 0x3FE3C6EF40000000
  %532 = frem fast float %61, 2.560000e+02
  %533 = frem fast float %62, 2.560000e+02
  %534 = fptoui float %532 to i32
  %535 = fptoui float %533 to i32
  %536 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %534, i32 %535, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %537 = extractvalue %dx.types.ResRet.f32 %536, 0
  %538 = fadd fast float %537, %531
  %539 = call float @dx.op.unary.f32(i32 22, float %538)  ; Frc(value)
  %540 = and i32 %151, 1
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %599, label %542, !dx.controlflow.hints !74

; <label>:542                                     ; preds = %520
  %543 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %148, i32 undef)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.f32 %543, 2
  %545 = extractvalue %dx.types.ResRet.f32 %543, 3
  %546 = add i32 %148, 16
  %547 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %546, i32 undef)  ; BufferLoad(srv,index,wot)
  %548 = extractvalue %dx.types.ResRet.f32 %547, 0
  %549 = extractvalue %dx.types.ResRet.f32 %547, 1
  %550 = extractvalue %dx.types.ResRet.f32 %547, 2
  %551 = add i32 %148, 32
  %552 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %551, i32 undef)  ; BufferLoad(srv,index,wot)
  %553 = extractvalue %dx.types.ResRet.f32 %552, 0
  %554 = extractvalue %dx.types.ResRet.f32 %552, 1
  %555 = extractvalue %dx.types.ResRet.f32 %552, 2
  %556 = and i32 %151, 2
  %557 = icmp eq i32 %556, 0
  %558 = call float @dx.op.dot3.f32(i32 55, float %42, float %43, float %44, float %42, float %43, float %44)  ; Dot3(ax,ay,az,bx,by,bz)
  %559 = call float @dx.op.unary.f32(i32 25, float %558)  ; Rsqrt(value)
  %560 = fmul fast float %559, %42
  %561 = fmul fast float %559, %43
  %562 = fmul fast float %559, %44
  %563 = call float @dx.op.dot3.f32(i32 55, float %96, float %97, float %98, float %96, float %97, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %564 = call float @dx.op.unary.f32(i32 25, float %563)  ; Rsqrt(value)
  %565 = fmul fast float %564, %96
  %566 = fmul fast float %564, %97
  %567 = fmul fast float %564, %98
  %568 = call float @dx.op.dot3.f32(i32 55, float %565, float %566, float %567, float %560, float %561, float %562)  ; Dot3(ax,ay,az,bx,by,bz)
  %569 = fmul fast float %568, %568
  %570 = fmul fast float %569, %544
  %571 = fadd fast float %570, %545
  %572 = call float @dx.op.unary.f32(i32 7, float %571)  ; Saturate(value)
  br i1 %557, label %573, label %583, !dx.controlflow.hints !75

; <label>:573                                     ; preds = %542
  %574 = extractvalue %dx.types.ResRet.f32 %543, 1
  %575 = extractvalue %dx.types.ResRet.f32 %543, 0
  %576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %577 = extractvalue %dx.types.CBufRet.f32 %576, 3
  %578 = fmul fast float %577, %563
  %579 = fsub fast float %575, %578
  %580 = fmul fast float %579, %574
  %581 = call float @dx.op.unary.f32(i32 7, float %580)  ; Saturate(value)
  %582 = fmul fast float %581, %572
  br label %583

; <label>:583                                     ; preds = %573, %542
  %584 = phi float [ %582, %573 ], [ %572, %542 ]
  %585 = fsub fast float %548, %553
  %586 = fsub fast float %549, %554
  %587 = fsub fast float %550, %555
  %588 = fmul fast float %584, %585
  %589 = fmul fast float %584, %586
  %590 = fmul fast float %584, %587
  %591 = fadd fast float %588, %553
  %592 = fadd fast float %589, %554
  %593 = fadd fast float %590, %555
  %594 = fmul fast float %591, %521
  %595 = fmul fast float %592, %522
  %596 = fmul fast float %593, %523
  %597 = fmul fast float %584, %524
  %598 = fmul fast float %584, %525
  br label %599

; <label>:599                                     ; preds = %583, %520
  %600 = phi float [ %594, %583 ], [ %521, %520 ]
  %601 = phi float [ %595, %583 ], [ %522, %520 ]
  %602 = phi float [ %596, %583 ], [ %523, %520 ]
  %603 = phi float [ %597, %583 ], [ %524, %520 ]
  %604 = phi float [ %598, %583 ], [ %525, %520 ]
  %605 = add i32 %31, 88
  %606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %605, i32 undef)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.i32 %606, 0
  %608 = add i32 %607, 0
  %609 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %608, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %610 = add i32 %31, 24
  %611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %610, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.i32 %611, 0
  %613 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %609, %dx.types.Handle %57, float %188, float %189, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %614 = extractvalue %dx.types.ResRet.f32 %613, 0
  %615 = extractvalue %dx.types.ResRet.f32 %613, 1
  %616 = extractvalue %dx.types.ResRet.f32 %613, 2
  %617 = extractvalue %dx.types.ResRet.f32 %613, 3
  %618 = and i32 %612, 255
  %619 = uitofp i32 %618 to float
  %620 = lshr i32 %612, 8
  %621 = and i32 %620, 255
  %622 = uitofp i32 %621 to float
  %623 = fmul fast float %617, %619
  %624 = fadd fast float %623, %622
  %625 = fmul fast float %624, 0x3F70101000000000
  %626 = add i32 %31, 56
  %627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %626, i32 undef)  ; BufferLoad(srv,index,wot)
  %628 = extractvalue %dx.types.ResRet.i32 %627, 0
  %629 = and i32 %628, 255
  %630 = uitofp i32 %629 to float
  %631 = fmul fast float %630, 0x3F70101020000000
  %632 = lshr i32 %628, 8
  %633 = and i32 %632, 255
  %634 = uitofp i32 %633 to float
  %635 = fmul fast float %634, 0x3F70101020000000
  %636 = lshr i32 %628, 16
  %637 = and i32 %636, 255
  %638 = uitofp i32 %637 to float
  %639 = fmul fast float %638, 0x3F70101020000000
  %640 = fmul fast float %614, %600
  %641 = fmul fast float %631, %631
  %642 = fmul fast float %641, %640
  %643 = fmul fast float %615, %601
  %644 = fmul fast float %635, %635
  %645 = fmul fast float %644, %643
  %646 = fmul fast float %616, %602
  %647 = fmul fast float %639, %639
  %648 = fmul fast float %647, %646
  %649 = add i32 %31, 28
  %650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %649, i32 undef)  ; BufferLoad(srv,index,wot)
  %651 = extractvalue %dx.types.ResRet.i32 %650, 0
  %652 = add i32 %31, 92
  %653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %652, i32 undef)  ; BufferLoad(srv,index,wot)
  %654 = extractvalue %dx.types.ResRet.i32 %653, 0
  %655 = add i32 %654, 0
  %656 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %655, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %657 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %656, %dx.types.Handle %57, float %188, float %189, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %658 = extractvalue %dx.types.ResRet.f32 %657, 0
  %659 = extractvalue %dx.types.ResRet.f32 %657, 1
  %660 = extractvalue %dx.types.ResRet.f32 %657, 3
  %661 = and i32 %651, 255
  %662 = uitofp i32 %661 to float
  %663 = lshr i32 %651, 8
  %664 = and i32 %663, 255
  %665 = uitofp i32 %664 to float
  %666 = lshr i32 %651, 16
  %667 = and i32 %666, 255
  %668 = uitofp i32 %667 to float
  %669 = fmul fast float %668, 0x3F70101000000000
  %670 = fmul fast float %658, %662
  %671 = fadd fast float %670, %665
  %672 = fmul fast float %671, 0x3F70101000000000
  %673 = fadd fast float %659, -5.000000e-01
  %674 = fadd fast float %660, -5.000000e-01
  %675 = fmul fast float %673, %669
  %676 = fmul fast float %674, %669
  %677 = fadd fast float %675, 5.000000e-01
  %678 = fadd fast float %676, 5.000000e-01
  %679 = fmul fast float %677, 2.000000e+00
  %680 = fadd fast float %679, -1.000000e+00
  %681 = fmul fast float %678, 2.000000e+00
  %682 = fadd fast float %681, -1.000000e+00
  %683 = fadd fast float %680, %682
  %684 = fmul fast float %683, 5.000000e-01
  %685 = fsub fast float %680, %682
  %686 = fmul fast float %685, 5.000000e-01
  %687 = call float @dx.op.unary.f32(i32 6, float %684)  ; FAbs(value)
  %688 = fsub fast float 1.000000e+00, %687
  %689 = call float @dx.op.unary.f32(i32 6, float %686)  ; FAbs(value)
  %690 = fsub fast float %688, %689
  %691 = call float @dx.op.dot3.f32(i32 55, float %684, float %686, float %690, float %684, float %686, float %690)  ; Dot3(ax,ay,az,bx,by,bz)
  %692 = call float @dx.op.unary.f32(i32 25, float %691)  ; Rsqrt(value)
  %693 = fmul fast float %684, %692
  %694 = fmul fast float %686, %692
  %695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %696 = extractvalue %dx.types.CBufRet.f32 %695, 3
  %697 = fcmp fast ogt float %696, 0.000000e+00
  %698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %699 = extractvalue %dx.types.CBufRet.f32 %698, 1
  br i1 %697, label %700, label %725

; <label>:700                                     ; preds = %599
  %701 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %36, float %37, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %702 = extractvalue %dx.types.ResRet.f32 %701, 0
  %703 = extractvalue %dx.types.ResRet.f32 %701, 1
  %704 = extractvalue %dx.types.ResRet.f32 %701, 2
  %705 = extractvalue %dx.types.ResRet.f32 %701, 3
  %706 = fmul fast float %699, %705
  %707 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %36, float %37, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %708 = extractvalue %dx.types.ResRet.f32 %707, 0
  %709 = extractvalue %dx.types.ResRet.f32 %707, 1
  %710 = extractvalue %dx.types.ResRet.f32 %707, 2
  %711 = extractvalue %dx.types.ResRet.f32 %707, 3
  %712 = fmul fast float %699, %708
  %713 = fmul fast float %699, %709
  %714 = fmul fast float %699, %710
  %715 = fmul fast float %699, %711
  %716 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %36, float %37, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %717 = extractvalue %dx.types.ResRet.f32 %716, 0
  %718 = extractvalue %dx.types.ResRet.f32 %716, 1
  %719 = extractvalue %dx.types.ResRet.f32 %716, 2
  %720 = extractvalue %dx.types.ResRet.f32 %716, 3
  %721 = fmul fast float %699, %717
  %722 = fmul fast float %699, %718
  %723 = fmul fast float %699, %719
  %724 = fmul fast float %699, %720
  br label %730

; <label>:725                                     ; preds = %599
  %726 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %26, float %36, float %37, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %727 = extractvalue %dx.types.ResRet.f32 %726, 0
  %728 = extractvalue %dx.types.ResRet.f32 %726, 1
  %729 = extractvalue %dx.types.ResRet.f32 %726, 2
  br label %730

; <label>:730                                     ; preds = %725, %700
  %731 = phi float [ %721, %700 ], [ 0.000000e+00, %725 ]
  %732 = phi float [ %722, %700 ], [ 0.000000e+00, %725 ]
  %733 = phi float [ %723, %700 ], [ 0.000000e+00, %725 ]
  %734 = phi float [ %724, %700 ], [ 0.000000e+00, %725 ]
  %735 = phi float [ %712, %700 ], [ 0.000000e+00, %725 ]
  %736 = phi float [ %713, %700 ], [ 0.000000e+00, %725 ]
  %737 = phi float [ %714, %700 ], [ 0.000000e+00, %725 ]
  %738 = phi float [ %715, %700 ], [ 0.000000e+00, %725 ]
  %739 = phi float [ %702, %700 ], [ %727, %725 ]
  %740 = phi float [ %703, %700 ], [ %728, %725 ]
  %741 = phi float [ %704, %700 ], [ %729, %725 ]
  %742 = phi float [ %706, %700 ], [ 0.000000e+00, %725 ]
  %743 = fmul float %699, %741
  %744 = fmul float %699, %740
  %745 = fmul float %699, %739
  %746 = call float @dx.op.dot2.f32(i32 54, float %693, float %694, float %693, float %694)  ; Dot2(ax,ay,bx,by)
  %747 = fsub fast float 1.000000e+00, %746
  %748 = call float @dx.op.unary.f32(i32 7, float %747)  ; Saturate(value)
  %749 = call float @dx.op.unary.f32(i32 24, float %748)  ; Sqrt(value)
  %750 = fmul fast float %749, %42
  %751 = fmul fast float %749, %43
  %752 = fmul fast float %749, %44
  %753 = fmul fast float %693, %38
  %754 = fmul fast float %693, %39
  %755 = fmul fast float %693, %40
  %756 = fmul fast float %108, %694
  %757 = fmul fast float %109, %694
  %758 = fmul fast float %110, %694
  %759 = fadd fast float %756, %753
  %760 = fadd fast float %759, %750
  %761 = fadd fast float %757, %754
  %762 = fadd fast float %761, %751
  %763 = fadd fast float %758, %755
  %764 = fadd fast float %763, %752
  %765 = call float @dx.op.dot3.f32(i32 55, float %760, float %762, float %764, float %760, float %762, float %764)  ; Dot3(ax,ay,az,bx,by,bz)
  %766 = call float @dx.op.unary.f32(i32 25, float %765)  ; Rsqrt(value)
  %767 = fmul fast float %760, %766
  %768 = fmul fast float %762, %766
  %769 = fmul fast float %764, %766
  %770 = call float @dx.op.dot3.f32(i32 55, float %96, float %97, float %98, float %96, float %97, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %771 = call float @dx.op.unary.f32(i32 25, float %770)  ; Rsqrt(value)
  %772 = fmul fast float %771, %96
  %773 = fmul fast float %771, %97
  %774 = fmul fast float %771, %98
  %775 = fsub fast float -0.000000e+00, %772
  %776 = fsub fast float -0.000000e+00, %773
  %777 = fsub fast float -0.000000e+00, %774
  %778 = fadd fast float %625, 0xBFB99999A0000000
  %779 = call float @dx.op.unary.f32(i32 7, float %778)  ; Saturate(value)
  %780 = fmul fast float %779, 0x3FF1C71C80000000
  %781 = call float @dx.op.binary.f32(i32 36, float %625, float 0x3FB99999A0000000)  ; FMin(a,b)
  %782 = fsub fast float 1.000000e+00, %780
  %783 = call float @dx.op.unary.f32(i32 7, float %782)  ; Saturate(value)
  %784 = fmul fast float %783, %642
  %785 = fmul fast float %783, %645
  %786 = fmul fast float %783, %648
  %787 = call float @dx.op.unary.f32(i32 7, float %784)  ; Saturate(value)
  %788 = call float @dx.op.unary.f32(i32 7, float %785)  ; Saturate(value)
  %789 = call float @dx.op.unary.f32(i32 7, float %786)  ; Saturate(value)
  %790 = fmul fast float %780, %642
  %791 = fmul fast float %780, %645
  %792 = fmul fast float %780, %648
  %793 = fadd fast float %790, %781
  %794 = fadd fast float %791, %781
  %795 = fadd fast float %792, %781
  %796 = call float @dx.op.unary.f32(i32 7, float %793)  ; Saturate(value)
  %797 = call float @dx.op.unary.f32(i32 7, float %794)  ; Saturate(value)
  %798 = call float @dx.op.unary.f32(i32 7, float %795)  ; Saturate(value)
  %799 = call float @dx.op.unary.f32(i32 7, float %672)  ; Saturate(value)
  %800 = call float @dx.op.dot3.f32(i32 55, float %787, float %788, float %789, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %801 = add i32 %31, 32
  %802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %801, i32 undef)  ; BufferLoad(srv,index,wot)
  %803 = extractvalue %dx.types.ResRet.i32 %802, 0
  %804 = and i32 %803, 255
  %805 = uitofp i32 %804 to float
  %806 = lshr i32 %803, 8
  %807 = and i32 %806, 255
  %808 = uitofp i32 %807 to float
  %809 = fmul fast float %808, %800
  %810 = fadd fast float %809, %805
  %811 = fmul fast float %810, 0x3F70101020000000
  %812 = call float @dx.op.unary.f32(i32 7, float %811)  ; Saturate(value)
  %813 = and i32 %151, 8192
  %814 = icmp eq i32 %813, 0
  %815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %816 = extractvalue %dx.types.CBufRet.f32 %815, 0
  br i1 %814, label %823, label %817, !dx.controlflow.hints !76

; <label>:817                                     ; preds = %730
  %818 = add i32 %148, 176
  %819 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %818, i32 undef)  ; BufferLoad(srv,index,wot)
  %820 = extractvalue %dx.types.ResRet.f32 %819, 0
  %821 = fcmp fast oge float %820, 0.000000e+00
  %822 = select i1 %821, float %820, float %816
  br label %830

; <label>:823                                     ; preds = %730
  %824 = add i32 %31, 72
  %825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %824, i32 undef)  ; BufferLoad(srv,index,wot)
  %826 = extractvalue %dx.types.ResRet.i32 %825, 0
  %827 = bitcast i32 %826 to float
  %828 = fcmp fast oge float %827, 0.000000e+00
  %829 = select i1 %828, float %827, float %816
  br label %830

; <label>:830                                     ; preds = %823, %817
  %831 = phi float [ %822, %817 ], [ %829, %823 ]
  %832 = fmul fast float %604, %603
  %833 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %231, i32 %232, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %834 = extractvalue %dx.types.ResRet.i32 %833, 0
  %835 = lshr i32 %834, 18
  %836 = uitofp i32 %835 to float
  %837 = fmul fast float %836, 0x3F4C00EBA0000000
  %838 = call float @dx.op.unary.f32(i32 21, float %837)  ; Exp(value)
  %839 = fadd fast float %838, -1.000000e+00
  %840 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %841 = extractvalue %dx.types.Dimensions %840, 0
  %842 = sitofp i32 %841 to float
  %843 = extractvalue %dx.types.Dimensions %840, 1
  %844 = sitofp i32 %843 to float
  %845 = fcmp fast oge float %229, %842
  %846 = fcmp fast oge float %230, %844
  %847 = or i1 %845, %846
  %848 = select i1 %847, float 0x4197782600000000, float %839
  %849 = icmp eq i32 %147, 3
  %850 = fcmp fast ogt float %54, %848
  %851 = and i1 %255, %850
  %852 = or i1 %849, %851
  %853 = icmp eq i32 %147, 2
  %854 = fcmp fast ole float %54, %848
  %855 = and i1 %853, %854
  %856 = or i1 %855, %852
  %857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %858 = extractvalue %dx.types.CBufRet.f32 %857, 3
  %859 = fcmp fast ogt float %858, 0.000000e+00
  br i1 %859, label %860, label %867

; <label>:860                                     ; preds = %830
  %861 = fmul fast float %768, 0xBFDF454380000000
  %862 = fmul fast float %769, 0x3FDF454380000000
  %863 = fmul fast float %767, 0xBFDF454380000000
  %864 = call float @dx.op.dot4.f32(i32 56, float %745, float %744, float %743, float %742, float 0x3FD20DD760000000, float %861, float %862, float %863)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %865 = call float @dx.op.dot4.f32(i32 56, float %735, float %736, float %737, float %738, float 0x3FD20DD760000000, float %861, float %862, float %863)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %866 = call float @dx.op.dot4.f32(i32 56, float %731, float %732, float %733, float %734, float 0x3FD20DD760000000, float %861, float %862, float %863)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %867

; <label>:867                                     ; preds = %860, %830
  %868 = phi float [ %864, %860 ], [ %745, %830 ]
  %869 = phi float [ %865, %860 ], [ %744, %830 ]
  %870 = phi float [ %866, %860 ], [ %743, %830 ]
  %871 = call float @dx.op.dot3.f32(i32 55, float %767, float %768, float %769, float %775, float %776, float %777)  ; Dot3(ax,ay,az,bx,by,bz)
  %872 = call float @dx.op.unary.f32(i32 7, float %871)  ; Saturate(value)
  br i1 %859, label %873, label %973

; <label>:873                                     ; preds = %867
  %874 = fsub fast float -0.000000e+00, %734
  %875 = fsub fast float %874, %738
  %876 = fsub fast float %875, %742
  %877 = fsub fast float -0.000000e+00, %732
  %878 = fsub fast float %877, %736
  %879 = fsub fast float %878, %744
  %880 = fadd fast float %737, %733
  %881 = fadd fast float %880, %743
  %882 = call float @dx.op.dot3.f32(i32 55, float %876, float %879, float %881, float %876, float %879, float %881)  ; Dot3(ax,ay,az,bx,by,bz)
  %883 = call float @dx.op.unary.f32(i32 25, float %882)  ; Rsqrt(value)
  %884 = fmul fast float %883, %876
  %885 = fmul fast float %883, %879
  %886 = fmul fast float %883, %881
  %887 = fmul fast float %885, 0xBFD4D8D7C0000000
  %888 = fmul fast float %886, 0x3FD4D8D7C0000000
  %889 = fmul fast float %884, 0xBFD4D8D7C0000000
  %890 = call float @dx.op.dot4.f32(i32 56, float %745, float %744, float %743, float %742, float 0x3FD20DD760000000, float %887, float %888, float %889)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %891 = call float @dx.op.dot4.f32(i32 56, float %735, float %736, float %737, float %738, float 0x3FD20DD760000000, float %887, float %888, float %889)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %892 = call float @dx.op.dot4.f32(i32 56, float %731, float %732, float %733, float %734, float 0x3FD20DD760000000, float %887, float %888, float %889)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %893 = fmul fast float %890, 0x4003333340000000
  %894 = fmul fast float %745, 0x3FE5AA35A0000000
  %895 = fsub fast float %893, %894
  %896 = fmul fast float %891, 0x4003333340000000
  %897 = fmul fast float %735, 0x3FE5AA35A0000000
  %898 = fsub fast float %896, %897
  %899 = fmul fast float %892, 0x4003333340000000
  %900 = fmul fast float %731, 0x3FE5AA35A0000000
  %901 = fsub fast float %899, %900
  %902 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %895)  ; FMax(a,b)
  %903 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %898)  ; FMax(a,b)
  %904 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %901)  ; FMax(a,b)
  %905 = fsub fast float %884, %772
  %906 = fsub fast float %885, %773
  %907 = fsub fast float %886, %774
  %908 = call float @dx.op.dot3.f32(i32 55, float %905, float %906, float %907, float %905, float %906, float %907)  ; Dot3(ax,ay,az,bx,by,bz)
  %909 = call float @dx.op.unary.f32(i32 25, float %908)  ; Rsqrt(value)
  %910 = fmul fast float %909, %905
  %911 = fmul fast float %909, %906
  %912 = fmul fast float %909, %907
  %913 = call float @dx.op.dot3.f32(i32 55, float %767, float %768, float %769, float %884, float %885, float %886)  ; Dot3(ax,ay,az,bx,by,bz)
  %914 = call float @dx.op.unary.f32(i32 6, float %913)  ; FAbs(value)
  %915 = call float @dx.op.dot3.f32(i32 55, float %767, float %768, float %769, float %910, float %911, float %912)  ; Dot3(ax,ay,az,bx,by,bz)
  %916 = fmul fast float %915, %915
  %917 = call float @dx.op.dot3.f32(i32 55, float %775, float %776, float %777, float %910, float %911, float %912)  ; Dot3(ax,ay,az,bx,by,bz)
  %918 = call float @dx.op.unary.f32(i32 6, float %917)  ; FAbs(value)
  %919 = fsub fast float 1.000000e+00, %799
  %920 = call float @dx.op.binary.f32(i32 35, float %919, float 0x3F847AE140000000)  ; FMax(a,b)
  %921 = fmul fast float %920, %920
  %922 = fmul fast float %921, %921
  %923 = fsub fast float 1.000000e+00, %922
  %924 = fmul fast float %872, %872
  %925 = fmul fast float %924, %923
  %926 = fadd fast float %925, %922
  %927 = bitcast float %926 to i32
  %928 = ashr i32 %927, 1
  %929 = add nsw i32 %928, 532487669
  %930 = bitcast i32 %929 to float
  %931 = fadd fast float %930, %872
  %932 = fmul fast float %922, %916
  %933 = fsub fast float 1.000000e+00, %916
  %934 = fadd fast float %933, %932
  %935 = fmul fast float %914, %914
  %936 = fmul fast float %935, %923
  %937 = fadd fast float %936, %922
  %938 = bitcast float %937 to i32
  %939 = ashr i32 %938, 1
  %940 = add nsw i32 %939, 532487669
  %941 = bitcast i32 %940 to float
  %942 = fadd fast float %941, %914
  %943 = fmul fast float %934, %934
  %944 = fmul fast float %943, %931
  %945 = fmul fast float %944, %942
  %946 = fdiv fast float 1.000000e+00, %945
  %947 = fmul fast float %922, %946
  %948 = fsub fast float 1.000000e+00, %918
  %949 = bitcast float %948 to i32
  %950 = sitofp i32 %949 to float
  %951 = fmul fast float %950, 5.000000e+00
  %952 = fadd fast float %951, 0xC1EFBF8940000000
  %953 = fptosi float %952 to i32
  %954 = bitcast i32 %953 to float
  %955 = fsub fast float 1.000000e+00, %796
  %956 = fsub fast float 1.000000e+00, %797
  %957 = fsub fast float 1.000000e+00, %798
  %958 = fmul fast float %954, %955
  %959 = fmul fast float %954, %956
  %960 = fmul fast float %954, %957
  %961 = fadd fast float %958, %796
  %962 = fadd fast float %959, %797
  %963 = fadd fast float %960, %798
  %964 = fmul fast float %947, %902
  %965 = fmul fast float %964, %961
  %966 = fmul fast float %947, %903
  %967 = fmul fast float %966, %962
  %968 = fmul fast float %947, %904
  %969 = fmul fast float %968, %963
  %970 = call float @dx.op.binary.f32(i32 35, float %965, float 0.000000e+00)  ; FMax(a,b)
  %971 = call float @dx.op.binary.f32(i32 35, float %967, float 0.000000e+00)  ; FMax(a,b)
  %972 = call float @dx.op.binary.f32(i32 35, float %969, float 0.000000e+00)  ; FMax(a,b)
  br label %973

; <label>:973                                     ; preds = %873, %867
  %974 = phi float [ %970, %873 ], [ 0.000000e+00, %867 ]
  %975 = phi float [ %971, %873 ], [ 0.000000e+00, %867 ]
  %976 = phi float [ %972, %873 ], [ 0.000000e+00, %867 ]
  %977 = fmul fast float %872, 9.843750e-01
  %978 = fmul fast float %799, 9.843750e-01
  %979 = fadd fast float %977, 7.812500e-03
  %980 = fadd fast float %978, 7.812500e-03
  %981 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %26, float %979, float %980, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %982 = extractvalue %dx.types.ResRet.f32 %981, 2
  %983 = extractvalue %dx.types.ResRet.f32 %981, 3
  %984 = fmul fast float %982, %796
  %985 = fmul fast float %982, %797
  %986 = fmul fast float %982, %798
  %987 = fadd fast float %984, %983
  %988 = fadd fast float %985, %983
  %989 = fadd fast float %986, %983
  %990 = call float @dx.op.binary.f32(i32 35, float %988, float %989)  ; FMax(a,b)
  %991 = call float @dx.op.binary.f32(i32 35, float %987, float %990)  ; FMax(a,b)
  %992 = fsub fast float 1.000000e+00, %991
  %993 = call float @dx.op.dot3.f32(i32 55, float %772, float %773, float %774, float %767, float %768, float %769)  ; Dot3(ax,ay,az,bx,by,bz)
  %994 = fmul fast float %993, 2.000000e+00
  %995 = fmul fast float %994, %767
  %996 = fmul fast float %994, %768
  %997 = fmul fast float %994, %769
  %998 = fsub fast float %772, %995
  %999 = fsub fast float %773, %996
  %1000 = fsub fast float %774, %997
  br i1 %859, label %1001, label %1008

; <label>:1001                                    ; preds = %973
  %1002 = fmul fast float %999, 0xBFDF454380000000
  %1003 = fmul fast float %1000, 0x3FDF454380000000
  %1004 = fmul fast float %998, 0xBFDF454380000000
  %1005 = call float @dx.op.dot4.f32(i32 56, float %745, float %744, float %743, float %742, float 0x3FD20DD760000000, float %1002, float %1003, float %1004)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1006 = call float @dx.op.dot4.f32(i32 56, float %735, float %736, float %737, float %738, float 0x3FD20DD760000000, float %1002, float %1003, float %1004)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1007 = call float @dx.op.dot4.f32(i32 56, float %731, float %732, float %733, float %734, float 0x3FD20DD760000000, float %1002, float %1003, float %1004)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %1008

; <label>:1008                                    ; preds = %1001, %973
  %1009 = phi float [ %1005, %1001 ], [ %745, %973 ]
  %1010 = phi float [ %1006, %1001 ], [ %744, %973 ]
  %1011 = phi float [ %1007, %1001 ], [ %743, %973 ]
  %1012 = call float @dx.op.dot3.f32(i32 55, float %1009, float %1010, float %1011, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %1014 = extractvalue %dx.types.CBufRet.f32 %1013, 2
  %1015 = extractvalue %dx.types.CBufRet.f32 %1013, 3
  %1016 = fmul fast float %1014, %61
  %1017 = fmul fast float %1015, %62
  %1018 = fptoui float %1016 to i32
  %1019 = fptoui float %1017 to i32
  %1020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1021 = extractvalue %dx.types.CBufRet.f32 %1020, 0
  %1022 = extractvalue %dx.types.CBufRet.f32 %1020, 2
  %1023 = extractvalue %dx.types.CBufRet.f32 %1020, 3
  %1024 = fadd fast float %54, -4.000000e+00
  %1025 = call float @dx.op.binary.f32(i32 35, float %1024, float 0.000000e+00)  ; FMax(a,b)
  %1026 = fadd fast float %1025, %1021
  %1027 = fmul fast float %1026, %1022
  %1028 = call float @dx.op.unary.f32(i32 23, float %1027)  ; Log(value)
  %1029 = fmul fast float %1028, %1023
  %1030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1031 = extractvalue %dx.types.CBufRet.f32 %1030, 2
  %1032 = fmul fast float %1029, %1031
  %1033 = call float @dx.op.unary.f32(i32 7, float %1032)  ; Saturate(value)
  %1034 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1035 = extractvalue %dx.types.CBufRet.i32 %1034, 1
  %1036 = add i32 %1035, -1
  %1037 = uitofp i32 %1035 to float
  %1038 = fmul fast float %1037, %1033
  %1039 = fptoui float %1038 to i32
  %1040 = call i32 @dx.op.binary.i32(i32 40, i32 %1039, i32 %1036)  ; UMin(a,b)
  %1041 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %1042 = extractvalue %dx.types.CBufRet.i32 %1041, 2
  %1043 = extractvalue %dx.types.CBufRet.i32 %1041, 3
  %1044 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1019, i32 %1042, i32 %1018)  ; UMad(a,b,c)
  %1045 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1040, i32 %1043, i32 %1044)  ; UMad(a,b,c)
  %1046 = call float @dx.op.binary.f32(i32 35, float %54, float 0.000000e+00)  ; FMax(a,b)
  %1047 = fptoui float %1046 to i32
  %1048 = lshr i32 %1047, 5
  %1049 = call i32 @dx.op.binary.i32(i32 40, i32 %1048, i32 8191)  ; UMin(a,b)
  %1050 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1051 = extractvalue %dx.types.CBufRet.i32 %1050, 2
  %1052 = add nsw i32 %1051, -1
  %1053 = call i32 @dx.op.binary.i32(i32 37, i32 %1052, i32 0)  ; IMax(a,b)
  %1054 = shl i32 %1049, 2
  %1055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1054, i32 undef)  ; BufferLoad(srv,index,wot)
  %1056 = extractvalue %dx.types.ResRet.i32 %1055, 0
  %1057 = lshr i32 %1056, 16
  %1058 = and i32 %1056, 65535
  %1059 = lshr i32 %1056, 21
  %1060 = lshr i32 %1058, 5
  %1061 = call i32 @dx.op.binary.i32(i32 40, i32 %1060, i32 %1053)  ; UMin(a,b)
  %1062 = icmp ugt i32 %1059, %1061
  br i1 %1062, label %1425, label %1063

; <label>:1063                                    ; preds = %1008
  br label %1064

; <label>:1064                                    ; preds = %1417, %1063
  %1065 = phi float [ %1418, %1417 ], [ 0.000000e+00, %1063 ]
  %1066 = phi float [ %1419, %1417 ], [ 0.000000e+00, %1063 ]
  %1067 = phi float [ %1420, %1417 ], [ 0.000000e+00, %1063 ]
  %1068 = phi float [ %1421, %1417 ], [ 1.000000e+00, %1063 ]
  %1069 = phi i32 [ %1422, %1417 ], [ %1059, %1063 ]
  %1070 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1071 = extractvalue %dx.types.CBufRet.i32 %1070, 2
  %1072 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1045, i32 %1071, i32 %1069)  ; UMad(a,b,c)
  %1073 = shl i32 %1072, 2
  %1074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1073, i32 undef)  ; BufferLoad(srv,index,wot)
  %1075 = extractvalue %dx.types.ResRet.i32 %1074, 0
  %1076 = shl i32 %1069, 5
  %1077 = sub nsw i32 %1057, %1076
  %1078 = call i32 @dx.op.binary.i32(i32 37, i32 %1077, i32 0)  ; IMax(a,b)
  %1079 = call i32 @dx.op.binary.i32(i32 38, i32 %1078, i32 31)  ; IMin(a,b)
  %1080 = sub nsw i32 1, %1057
  %1081 = add nsw i32 %1080, %1058
  %1082 = call i32 @dx.op.binary.i32(i32 37, i32 %1081, i32 0)  ; IMax(a,b)
  %1083 = call i32 @dx.op.binary.i32(i32 38, i32 %1082, i32 32)  ; IMin(a,b)
  %1084 = and i32 %1083, 31
  %1085 = shl i32 -1, %1084
  %1086 = xor i32 %1085, -1
  %1087 = and i32 %1079, 31
  %1088 = shl i32 %1086, %1087
  %1089 = icmp eq i32 %1083, 32
  %1090 = select i1 %1089, i32 -1, i32 %1088
  %1091 = and i32 %1090, %1075
  %1092 = icmp eq i32 %1091, 0
  br i1 %1092, label %1417, label %1093

; <label>:1093                                    ; preds = %1064
  br label %1094

; <label>:1094                                    ; preds = %1200, %1093
  %1095 = phi float [ %1201, %1200 ], [ %1065, %1093 ]
  %1096 = phi float [ %1202, %1200 ], [ %1066, %1093 ]
  %1097 = phi float [ %1203, %1200 ], [ %1067, %1093 ]
  %1098 = phi float [ %1204, %1200 ], [ %1068, %1093 ]
  %1099 = phi i32 [ %1104, %1200 ], [ %1091, %1093 ]
  %1100 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1099)  ; FirstbitLo(value)
  %1101 = add i32 %1100, %1076
  %1102 = and i32 %1100, 31
  %1103 = shl i32 1, %1102
  %1104 = xor i32 %1103, %1099
  %1105 = mul i32 %1101, 72
  %1106 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1105, i32 undef)  ; BufferLoad(srv,index,wot)
  %1107 = extractvalue %dx.types.ResRet.f32 %1106, 0
  %1108 = extractvalue %dx.types.ResRet.f32 %1106, 1
  %1109 = extractvalue %dx.types.ResRet.f32 %1106, 2
  %1110 = add i32 %1105, 12
  %1111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1110, i32 undef)  ; BufferLoad(srv,index,wot)
  %1112 = extractvalue %dx.types.ResRet.i32 %1111, 0
  %1113 = add i32 %1105, 16
  %1114 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1113, i32 undef)  ; BufferLoad(srv,index,wot)
  %1115 = extractvalue %dx.types.ResRet.f32 %1114, 0
  %1116 = extractvalue %dx.types.ResRet.f32 %1114, 1
  %1117 = extractvalue %dx.types.ResRet.f32 %1114, 2
  %1118 = add i32 %1105, 28
  %1119 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1118, i32 undef)  ; BufferLoad(srv,index,wot)
  %1120 = extractvalue %dx.types.ResRet.f32 %1119, 0
  %1121 = add i32 %1105, 32
  %1122 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1121, i32 undef)  ; BufferLoad(srv,index,wot)
  %1123 = extractvalue %dx.types.ResRet.f32 %1122, 0
  %1124 = extractvalue %dx.types.ResRet.f32 %1122, 1
  %1125 = extractvalue %dx.types.ResRet.f32 %1122, 2
  %1126 = extractvalue %dx.types.ResRet.f32 %1122, 3
  %1127 = add i32 %1105, 48
  %1128 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1127, i32 undef)  ; BufferLoad(srv,index,wot)
  %1129 = extractvalue %dx.types.ResRet.f32 %1128, 0
  %1130 = extractvalue %dx.types.ResRet.f32 %1128, 1
  %1131 = add i32 %1105, 56
  %1132 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1131, i32 undef)  ; BufferLoad(srv,index,wot)
  %1133 = extractvalue %dx.types.ResRet.f32 %1132, 0
  %1134 = extractvalue %dx.types.ResRet.f32 %1132, 1
  %1135 = add i32 %1105, 64
  %1136 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1135, i32 undef)  ; BufferLoad(srv,index,wot)
  %1137 = extractvalue %dx.types.ResRet.f32 %1136, 0
  %1138 = extractvalue %dx.types.ResRet.f32 %1136, 1
  %1139 = mul i32 %1101, 60
  %1140 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1141 = extractvalue %dx.types.ResRet.f32 %1140, 0
  %1142 = extractvalue %dx.types.ResRet.f32 %1140, 1
  %1143 = extractvalue %dx.types.ResRet.f32 %1140, 2
  %1144 = add i32 %1139, 12
  %1145 = add i32 %1139, 48
  %1146 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1145, i32 undef)  ; BufferLoad(srv,index,wot)
  %1147 = extractvalue %dx.types.ResRet.f32 %1146, 0
  %1148 = extractvalue %dx.types.ResRet.f32 %1146, 1
  %1149 = extractvalue %dx.types.ResRet.f32 %1146, 2
  %1150 = and i32 %1112, 32767
  %1151 = bitcast float %1107 to i32
  %1152 = icmp eq i32 %1151, -1
  %1153 = bitcast float %1108 to i32
  %1154 = and i32 %1112, 32768
  %1155 = icmp ne i32 %1154, 0
  %1156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1157 = extractvalue %dx.types.CBufRet.f32 %1156, 0
  %1158 = extractvalue %dx.types.CBufRet.f32 %1156, 1
  %1159 = extractvalue %dx.types.CBufRet.f32 %1156, 2
  %1160 = fsub fast float %1141, %1157
  %1161 = fsub fast float %1142, %1158
  %1162 = fsub fast float %1143, %1159
  %1163 = fsub fast float %96, %1160
  %1164 = fsub fast float %97, %1161
  %1165 = fsub fast float %98, %1162
  %1166 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1167 = extractvalue %dx.types.ResRet.f32 %1166, 0
  %1168 = extractvalue %dx.types.ResRet.f32 %1166, 1
  %1169 = extractvalue %dx.types.ResRet.f32 %1166, 2
  %1170 = call float @dx.op.dot3.f32(i32 55, float %1163, float %1164, float %1165, float %1167, float %1168, float %1169)  ; Dot3(ax,ay,az,bx,by,bz)
  %1171 = add i32 %1139, 24
  %1172 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1171, i32 undef)  ; BufferLoad(srv,index,wot)
  %1173 = extractvalue %dx.types.ResRet.f32 %1172, 0
  %1174 = extractvalue %dx.types.ResRet.f32 %1172, 1
  %1175 = extractvalue %dx.types.ResRet.f32 %1172, 2
  %1176 = call float @dx.op.dot3.f32(i32 55, float %1163, float %1164, float %1165, float %1173, float %1174, float %1175)  ; Dot3(ax,ay,az,bx,by,bz)
  %1177 = add i32 %1139, 36
  %1178 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1179 = extractvalue %dx.types.ResRet.f32 %1178, 0
  %1180 = extractvalue %dx.types.ResRet.f32 %1178, 1
  %1181 = extractvalue %dx.types.ResRet.f32 %1178, 2
  %1182 = call float @dx.op.dot3.f32(i32 55, float %1163, float %1164, float %1165, float %1179, float %1180, float %1181)  ; Dot3(ax,ay,az,bx,by,bz)
  %1183 = call float @dx.op.unary.f32(i32 6, float %1170)  ; FAbs(value)
  %1184 = call float @dx.op.unary.f32(i32 6, float %1176)  ; FAbs(value)
  %1185 = call float @dx.op.unary.f32(i32 6, float %1182)  ; FAbs(value)
  %1186 = fsub fast float %1147, %1183
  %1187 = fsub fast float %1148, %1184
  %1188 = fsub fast float %1149, %1185
  %1189 = fmul fast float %1186, %1115
  %1190 = fmul fast float %1187, %1116
  %1191 = fmul fast float %1188, %1117
  %1192 = call float @dx.op.binary.f32(i32 36, float %1190, float %1191)  ; FMin(a,b)
  %1193 = call float @dx.op.binary.f32(i32 36, float %1189, float %1192)  ; FMin(a,b)
  %1194 = call float @dx.op.unary.f32(i32 7, float %1193)  ; Saturate(value)
  %1195 = call float @dx.op.binary.f32(i32 36, float %1098, float %1194)  ; FMin(a,b)
  %1196 = uitofp i1 %1155 to float
  %1197 = fsub fast float 1.000000e+00, %1196
  %1198 = fmul fast float %1195, %1197
  %1199 = fcmp fast ogt float %1198, 0.000000e+00
  br i1 %1199, label %1206, label %1200

; <label>:1200                                    ; preds = %1348, %1094
  %1201 = phi float [ %1412, %1348 ], [ %1095, %1094 ]
  %1202 = phi float [ %1413, %1348 ], [ %1096, %1094 ]
  %1203 = phi float [ %1414, %1348 ], [ %1097, %1094 ]
  %1204 = phi float [ %1415, %1348 ], [ %1098, %1094 ]
  %1205 = icmp eq i32 %1099, %1103
  br i1 %1205, label %1416, label %1094

; <label>:1206                                    ; preds = %1094
  br i1 %1152, label %1264, label %1207

; <label>:1207                                    ; preds = %1206
  %1208 = fsub fast float -0.000000e+00, %1167
  %1209 = fsub fast float -0.000000e+00, %1168
  %1210 = fsub fast float -0.000000e+00, %1169
  %1211 = call float @dx.op.dot3.f32(i32 55, float %998, float %999, float %1000, float %1208, float %1209, float %1210)  ; Dot3(ax,ay,az,bx,by,bz)
  %1212 = fsub fast float -0.000000e+00, %1211
  %1213 = call float @dx.op.dot3.f32(i32 55, float %1163, float %1164, float %1165, float %1208, float %1209, float %1210)  ; Dot3(ax,ay,az,bx,by,bz)
  %1214 = fadd fast float %1213, %1130
  %1215 = fadd fast float %1129, %1213
  %1216 = fsub fast float -0.000000e+00, %1215
  %1217 = fcmp ogt float %1211, -0.000000e+00
  %1218 = select i1 %1217, float %1216, float %1214
  %1219 = call float @dx.op.unary.f32(i32 6, float %1212)  ; FAbs(value)
  %1220 = fdiv fast float 1.000000e+00, %1219
  %1221 = fmul fast float %1218, %1220
  %1222 = call float @dx.op.binary.f32(i32 35, float %1221, float 0.000000e+00)  ; FMax(a,b)
  %1223 = fsub fast float -0.000000e+00, %1173
  %1224 = fsub fast float -0.000000e+00, %1174
  %1225 = fsub fast float -0.000000e+00, %1175
  %1226 = call float @dx.op.dot3.f32(i32 55, float %998, float %999, float %1000, float %1223, float %1224, float %1225)  ; Dot3(ax,ay,az,bx,by,bz)
  %1227 = fsub fast float -0.000000e+00, %1226
  %1228 = call float @dx.op.dot3.f32(i32 55, float %1163, float %1164, float %1165, float %1223, float %1224, float %1225)  ; Dot3(ax,ay,az,bx,by,bz)
  %1229 = fadd fast float %1228, %1134
  %1230 = fadd fast float %1133, %1228
  %1231 = fsub fast float -0.000000e+00, %1230
  %1232 = fcmp ogt float %1226, -0.000000e+00
  %1233 = select i1 %1232, float %1231, float %1229
  %1234 = call float @dx.op.unary.f32(i32 6, float %1227)  ; FAbs(value)
  %1235 = fdiv fast float 1.000000e+00, %1234
  %1236 = fmul fast float %1233, %1235
  %1237 = call float @dx.op.binary.f32(i32 35, float %1236, float 0.000000e+00)  ; FMax(a,b)
  %1238 = fsub fast float -0.000000e+00, %1179
  %1239 = fsub fast float -0.000000e+00, %1180
  %1240 = fsub fast float -0.000000e+00, %1181
  %1241 = call float @dx.op.dot3.f32(i32 55, float %998, float %999, float %1000, float %1238, float %1239, float %1240)  ; Dot3(ax,ay,az,bx,by,bz)
  %1242 = fsub fast float -0.000000e+00, %1241
  %1243 = call float @dx.op.dot3.f32(i32 55, float %1163, float %1164, float %1165, float %1238, float %1239, float %1240)  ; Dot3(ax,ay,az,bx,by,bz)
  %1244 = fadd fast float %1243, %1138
  %1245 = fadd fast float %1137, %1243
  %1246 = fsub fast float -0.000000e+00, %1245
  %1247 = fcmp ogt float %1241, -0.000000e+00
  %1248 = select i1 %1247, float %1246, float %1244
  %1249 = call float @dx.op.unary.f32(i32 6, float %1242)  ; FAbs(value)
  %1250 = fdiv fast float 1.000000e+00, %1249
  %1251 = fmul fast float %1248, %1250
  %1252 = call float @dx.op.binary.f32(i32 35, float %1251, float 0.000000e+00)  ; FMax(a,b)
  %1253 = call float @dx.op.binary.f32(i32 36, float %1237, float %1252)  ; FMin(a,b)
  %1254 = call float @dx.op.binary.f32(i32 36, float %1222, float %1253)  ; FMin(a,b)
  %1255 = fmul fast float %1254, %998
  %1256 = fmul fast float %1254, %999
  %1257 = fmul fast float %1254, %1000
  %1258 = fadd fast float %1255, %96
  %1259 = fadd fast float %1256, %97
  %1260 = fadd fast float %1257, %98
  %1261 = fsub fast float %1258, %1107
  %1262 = fsub fast float %1259, %1108
  %1263 = fsub fast float %1260, %1109
  br label %1271

; <label>:1264                                    ; preds = %1206
  %1265 = fmul fast float %998, 8.096000e+03
  %1266 = fmul fast float %999, 8.096000e+03
  %1267 = fmul fast float %1000, 8.096000e+03
  %1268 = fadd fast float %1265, %96
  %1269 = fadd fast float %1266, %97
  %1270 = fadd fast float %1267, %98
  br label %1271

; <label>:1271                                    ; preds = %1264, %1207
  %1272 = phi float [ %998, %1264 ], [ %1261, %1207 ]
  %1273 = phi float [ %999, %1264 ], [ %1262, %1207 ]
  %1274 = phi float [ %1000, %1264 ], [ %1263, %1207 ]
  %1275 = phi float [ %1268, %1264 ], [ %1258, %1207 ]
  %1276 = phi float [ %1269, %1264 ], [ %1259, %1207 ]
  %1277 = phi float [ %1270, %1264 ], [ %1260, %1207 ]
  %1278 = fcmp fast olt float %1126, 1.000000e+00
  br i1 %1278, label %1279, label %1310, !dx.controlflow.hints !77

; <label>:1279                                    ; preds = %1271
  %1280 = fmul fast float %1274, %1124
  %1281 = fmul fast float %1273, %1125
  %1282 = fsub fast float %1280, %1281
  %1283 = fmul fast float %1272, %1125
  %1284 = fmul fast float %1274, %1123
  %1285 = fsub fast float %1283, %1284
  %1286 = fmul fast float %1273, %1123
  %1287 = fmul fast float %1272, %1124
  %1288 = fsub fast float %1286, %1287
  %1289 = fmul fast float %1282, 2.000000e+00
  %1290 = fmul fast float %1285, 2.000000e+00
  %1291 = fmul fast float %1288, 2.000000e+00
  %1292 = fmul fast float %1289, %1126
  %1293 = fmul fast float %1290, %1126
  %1294 = fmul fast float %1291, %1126
  %1295 = fmul fast float %1291, %1124
  %1296 = fmul fast float %1290, %1125
  %1297 = fmul fast float %1289, %1125
  %1298 = fmul fast float %1291, %1123
  %1299 = fmul fast float %1290, %1123
  %1300 = fmul fast float %1289, %1124
  %1301 = fadd fast float %1295, %1272
  %1302 = fadd fast float %1301, %1292
  %1303 = fsub fast float %1302, %1296
  %1304 = fsub fast float %1273, %1298
  %1305 = fadd fast float %1304, %1293
  %1306 = fadd fast float %1305, %1297
  %1307 = fadd fast float %1294, %1274
  %1308 = fsub fast float %1307, %1300
  %1309 = fadd fast float %1308, %1299
  br label %1310

; <label>:1310                                    ; preds = %1279, %1271
  %1311 = phi float [ %1303, %1279 ], [ %1272, %1271 ]
  %1312 = phi float [ %1306, %1279 ], [ %1273, %1271 ]
  %1313 = phi float [ %1309, %1279 ], [ %1274, %1271 ]
  br i1 %1152, label %1345, label %1314

; <label>:1314                                    ; preds = %1310
  %1315 = fmul fast float %799, 0x400187C840000000
  %1316 = fadd fast float %1315, 0xC00EFC2120000000
  %1317 = fmul fast float %1316, %799
  %1318 = fadd fast float %1317, 0x3FE5D16340000000
  %1319 = fmul fast float %1318, %799
  %1320 = fadd fast float %1319, 1.000000e+00
  %1321 = call float @dx.op.unary.f32(i32 7, float %1320)  ; Saturate(value)
  %1322 = fsub fast float %1275, %96
  %1323 = fsub fast float %1276, %97
  %1324 = fsub fast float %1277, %98
  %1325 = fsub fast float %1275, %1107
  %1326 = fsub fast float %1276, %1108
  %1327 = fsub fast float %1277, %1109
  %1328 = call float @dx.op.dot3.f32(i32 55, float %1322, float %1323, float %1324, float %1322, float %1323, float %1324)  ; Dot3(ax,ay,az,bx,by,bz)
  %1329 = call float @dx.op.dot3.f32(i32 55, float %1325, float %1326, float %1327, float %1325, float %1326, float %1327)  ; Dot3(ax,ay,az,bx,by,bz)
  %1330 = fadd fast float %1329, 0x3EE4F8B580000000
  %1331 = fdiv fast float %1328, %1330
  %1332 = bitcast float %1331 to i32
  %1333 = ashr i32 %1332, 1
  %1334 = add nsw i32 %1333, 532487669
  %1335 = bitcast i32 %1334 to float
  %1336 = fmul fast float %1335, %1321
  %1337 = call float @dx.op.unary.f32(i32 7, float %1336)  ; Saturate(value)
  %1338 = fmul fast float %1337, 0x4009981AE0000000
  %1339 = fsub fast float 0x40111BBD80000000, %1338
  %1340 = fmul fast float %1339, %1337
  %1341 = fadd fast float %1340, 0xC0009F6020000000
  %1342 = fmul fast float %1341, %1337
  %1343 = fadd fast float %1342, 1.000000e+00
  %1344 = call float @dx.op.unary.f32(i32 7, float %1343)  ; Saturate(value)
  br label %1348

; <label>:1345                                    ; preds = %1310
  %1346 = icmp ne i32 %1153, -1
  %1347 = zext i1 %1346 to i32
  br label %1348

; <label>:1348                                    ; preds = %1345, %1314
  %1349 = phi float [ %799, %1345 ], [ %1344, %1314 ]
  %1350 = phi i32 [ %1347, %1345 ], [ 0, %1314 ]
  %1351 = fmul float %1349, 5.000000e+00
  %1352 = fsub float 5.000000e+00, %1351
  %1353 = icmp ne i32 %1350, 0
  %1354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %1355 = extractvalue %dx.types.CBufRet.f32 %1354, 3
  %1356 = fadd fast float %1355, %1352
  %1357 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1356)  ; FMax(a,b)
  %1358 = call float @dx.op.unary.f32(i32 6, float %1311)  ; FAbs(value)
  %1359 = call float @dx.op.unary.f32(i32 6, float %1312)  ; FAbs(value)
  %1360 = fadd fast float %1359, %1358
  %1361 = call float @dx.op.unary.f32(i32 6, float %1313)  ; FAbs(value)
  %1362 = fadd fast float %1360, %1361
  %1363 = fcmp fast oeq float %1362, 0.000000e+00
  %1364 = fdiv fast float 1.000000e+00, %1362
  %1365 = select i1 %1363, float 1.000000e+00, float %1364
  %1366 = fmul fast float %1365, %1311
  %1367 = fmul fast float %1365, %1312
  %1368 = call float @dx.op.unary.f32(i32 6, float %1367)  ; FAbs(value)
  %1369 = call float @dx.op.unary.f32(i32 6, float %1366)  ; FAbs(value)
  %1370 = fsub fast float 1.000000e+00, %1368
  %1371 = fsub fast float 1.000000e+00, %1369
  %1372 = fcmp fast oge float %1366, 0.000000e+00
  %1373 = fcmp fast oge float %1367, 0.000000e+00
  %1374 = select i1 %1372, float 1.000000e+00, float -1.000000e+00
  %1375 = select i1 %1373, float 1.000000e+00, float -1.000000e+00
  %1376 = fcmp fast ole float %1313, 0.000000e+00
  %1377 = fmul fast float %1374, %1370
  %1378 = fmul fast float %1375, %1371
  %1379 = select i1 %1376, float %1377, float %1366
  %1380 = select i1 %1376, float %1378, float %1367
  %1381 = fmul fast float %1379, 5.000000e-01
  %1382 = fmul fast float %1380, 5.000000e-01
  %1383 = fadd fast float %1381, 5.000000e-01
  %1384 = fadd fast float %1382, 5.000000e-01
  %1385 = uitofp i32 %1150 to float
  %1386 = call float @dx.op.binary.f32(i32 36, float %1357, float 3.000000e+00)  ; FMin(a,b)
  %1387 = fadd fast float %1386, 2.000000e+00
  %1388 = call float @dx.op.unary.f32(i32 21, float %1387)  ; Exp(value)
  %1389 = extractvalue %dx.types.CBufRet.f32 %1354, 1
  %1390 = fmul fast float %1389, %1388
  %1391 = fmul fast float %1390, 2.000000e+00
  %1392 = fsub fast float 1.000000e+00, %1391
  %1393 = fmul fast float %1383, %1392
  %1394 = fmul fast float %1384, %1392
  %1395 = fadd fast float %1393, %1390
  %1396 = fadd fast float %1394, %1390
  %1397 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %25, float %1395, float %1396, float %1385, float undef, i32 0, i32 0, i32 undef, float %1357)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1398 = extractvalue %dx.types.ResRet.f32 %1397, 0
  %1399 = extractvalue %dx.types.ResRet.f32 %1397, 1
  %1400 = extractvalue %dx.types.ResRet.f32 %1397, 2
  %1401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1402 = extractvalue %dx.types.CBufRet.f32 %1401, 3
  %1403 = fmul fast float %1402, %1120
  %1404 = call float @dx.op.binary.f32(i32 36, float %1012, float %1403)  ; FMin(a,b)
  %1405 = select i1 %1353, float %1404, float %1403
  %1406 = fmul fast float %1398, %1198
  %1407 = fmul fast float %1406, %1405
  %1408 = fmul fast float %1399, %1198
  %1409 = fmul fast float %1408, %1405
  %1410 = fmul fast float %1400, %1198
  %1411 = fmul fast float %1410, %1405
  %1412 = fadd fast float %1407, %1095
  %1413 = fadd fast float %1409, %1096
  %1414 = fadd fast float %1411, %1097
  %1415 = fsub fast float %1098, %1198
  br label %1200

; <label>:1416                                    ; preds = %1200
  br label %1417

; <label>:1417                                    ; preds = %1416, %1064
  %1418 = phi float [ %1065, %1064 ], [ %1201, %1416 ]
  %1419 = phi float [ %1066, %1064 ], [ %1202, %1416 ]
  %1420 = phi float [ %1067, %1064 ], [ %1203, %1416 ]
  %1421 = phi float [ %1068, %1064 ], [ %1204, %1416 ]
  %1422 = add i32 %1069, 1
  %1423 = icmp ugt i32 %1422, %1061
  br i1 %1423, label %1424, label %1064, !llvm.loop !78

; <label>:1424                                    ; preds = %1417
  br label %1425

; <label>:1425                                    ; preds = %1424, %1008
  %1426 = phi float [ 0.000000e+00, %1008 ], [ %1418, %1424 ]
  %1427 = phi float [ 0.000000e+00, %1008 ], [ %1419, %1424 ]
  %1428 = phi float [ 0.000000e+00, %1008 ], [ %1420, %1424 ]
  %1429 = call float @dx.op.dot3.f32(i32 55, float %1426, float %1427, float %1428, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1430 = select i1 %131, float 0.000000e+00, float %1426
  %1431 = select i1 %131, float %1429, float %1427
  %1432 = select i1 %131, float 0.000000e+00, float %1428
  %1433 = fmul fast float %1430, %987
  %1434 = fmul fast float %1431, %988
  %1435 = fmul fast float %1432, %989
  %1436 = call float @dx.op.binary.f32(i32 35, float %1433, float 0.000000e+00)  ; FMax(a,b)
  %1437 = call float @dx.op.binary.f32(i32 35, float %1434, float 0.000000e+00)  ; FMax(a,b)
  %1438 = call float @dx.op.binary.f32(i32 35, float %1435, float 0.000000e+00)  ; FMax(a,b)
  %1439 = fadd fast float %1436, %974
  %1440 = fadd fast float %1437, %975
  %1441 = fadd fast float %1438, %976
  %1442 = fmul fast float %1439, %603
  %1443 = fmul fast float %1440, %603
  %1444 = fmul fast float %1441, %603
  %1445 = fsub fast float 1.000000e+00, %603
  %1446 = call float @dx.op.dot3.f32(i32 55, float %1445, float %1445, float %1445, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1447 = fsub fast float 1.000000e+00, %1446
  %1448 = fmul fast float %831, %812
  %1449 = fsub fast float 1.000000e+00, %832
  %1450 = fsub fast float %1449, %812
  %1451 = call float @dx.op.unary.f32(i32 7, float %1450)  ; Saturate(value)
  %1452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1453 = extractvalue %dx.types.CBufRet.f32 %1452, 3
  %1454 = fmul fast float %1453, %1451
  %1455 = fadd fast float %1454, %1448
  %1456 = and i32 %151, 1048576
  %1457 = icmp eq i32 %1456, 0
  br i1 %1457, label %1542, label %1458, !dx.controlflow.hints !80

; <label>:1458                                    ; preds = %1425
  %1459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1460 = extractvalue %dx.types.CBufRet.f32 %1459, 2
  %1461 = extractvalue %dx.types.CBufRet.f32 %1459, 3
  %1462 = fmul fast float %1460, %61
  %1463 = fmul fast float %1461, %62
  %1464 = call float @dx.op.unary.f32(i32 7, float %1462)  ; Saturate(value)
  %1465 = call float @dx.op.unary.f32(i32 7, float %1463)  ; Saturate(value)
  %1466 = select i1 %856, i32 2, i32 0
  %1467 = or i32 %1466, 1
  %1468 = uitofp i32 %1467 to float
  %1469 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1464, float %1465, float %1468, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1470 = extractvalue %dx.types.ResRet.f32 %1469, 0
  %1471 = extractvalue %dx.types.ResRet.f32 %1469, 1
  %1472 = extractvalue %dx.types.ResRet.f32 %1469, 2
  %1473 = extractvalue %dx.types.ResRet.f32 %1469, 3
  %1474 = add nuw nsw i32 %1466, 2
  %1475 = uitofp i32 %1474 to float
  %1476 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1464, float %1465, float %1475, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1477 = extractvalue %dx.types.ResRet.f32 %1476, 0
  %1478 = extractvalue %dx.types.ResRet.f32 %1476, 1
  %1479 = extractvalue %dx.types.ResRet.f32 %1476, 2
  %1480 = extractvalue %dx.types.ResRet.f32 %1476, 3
  %1481 = call float @dx.op.binary.f32(i32 35, float %1471, float %1472)  ; FMax(a,b)
  %1482 = call float @dx.op.binary.f32(i32 35, float %1470, float %1481)  ; FMax(a,b)
  %1483 = call float @dx.op.binary.f32(i32 35, float %1482, float %1473)  ; FMax(a,b)
  %1484 = call float @dx.op.binary.f32(i32 36, float %1478, float %1479)  ; FMin(a,b)
  %1485 = call float @dx.op.binary.f32(i32 36, float %1477, float %1484)  ; FMin(a,b)
  %1486 = call float @dx.op.binary.f32(i32 36, float %1485, float %1480)  ; FMin(a,b)
  %1487 = fmul fast float %1483, 2.550000e+02
  %1488 = fadd fast float %1487, 0x3F70101020000000
  %1489 = fptoui float %1488 to i32
  %1490 = fmul fast float %1486, 2.550000e+02
  %1491 = fadd fast float %1490, 0x3F70101020000000
  %1492 = fptoui float %1491 to i32
  %1493 = icmp ult i32 %1489, %1492
  br i1 %1493, label %1494, label %1535

; <label>:1494                                    ; preds = %1458
  %1495 = fcmp fast ogt float %53, 9.843750e-01
  %1496 = select i1 %1495, float -4.000000e+00, float %1024
  %1497 = call float @dx.op.binary.f32(i32 35, float %1496, float 0.000000e+00)  ; FMax(a,b)
  %1498 = fadd fast float %1021, %1497
  %1499 = fmul fast float %1498, %1022
  %1500 = call float @dx.op.unary.f32(i32 23, float %1499)  ; Log(value)
  %1501 = fmul fast float %1023, %1500
  %1502 = fmul fast float %1501, %1031
  %1503 = call float @dx.op.unary.f32(i32 7, float %1502)  ; Saturate(value)
  %1504 = uitofp i32 %1489 to float
  %1505 = uitofp i32 %1492 to float
  %1506 = fadd fast float %1504, 5.000000e-01
  %1507 = fadd fast float %1505, 5.000000e-01
  %1508 = fmul fast float %1031, %1506
  %1509 = fmul fast float %1031, %1507
  %1510 = fadd fast float %1508, 0x3F0FFB4800000000
  %1511 = fadd fast float %1509, 0xBF0FFB4800000000
  %1512 = call float @dx.op.binary.f32(i32 35, float %1503, float %1510)  ; FMax(a,b)
  %1513 = call float @dx.op.binary.f32(i32 36, float %1512, float %1511)  ; FMin(a,b)
  %1514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1515 = extractvalue %dx.types.CBufRet.f32 %1514, 1
  %1516 = extractvalue %dx.types.CBufRet.f32 %1514, 2
  %1517 = extractvalue %dx.types.CBufRet.f32 %1514, 0
  %1518 = select i1 %856, float %1517, float 0.000000e+00
  %1519 = fmul fast float %1515, %1513
  %1520 = fadd fast float %1518, %1519
  %1521 = fadd fast float %1518, %1516
  %1522 = fsub fast float %1515, %1516
  %1523 = fadd fast float %1522, %1518
  %1524 = call float @dx.op.binary.f32(i32 35, float %1520, float %1521)  ; FMax(a,b)
  %1525 = call float @dx.op.binary.f32(i32 36, float %1524, float %1523)  ; FMin(a,b)
  %1526 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %25, float %1464, float %1465, float %1525, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1527 = extractvalue %dx.types.ResRet.f32 %1526, 0
  %1528 = extractvalue %dx.types.ResRet.f32 %1526, 1
  %1529 = extractvalue %dx.types.ResRet.f32 %1526, 2
  %1530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1531 = extractvalue %dx.types.CBufRet.f32 %1530, 1
  %1532 = fmul fast float %1531, %1527
  %1533 = fmul fast float %1531, %1528
  %1534 = fmul fast float %1531, %1529
  br label %1535

; <label>:1535                                    ; preds = %1494, %1458
  %1536 = phi float [ %1532, %1494 ], [ 1.000000e+00, %1458 ]
  %1537 = phi float [ %1533, %1494 ], [ 1.000000e+00, %1458 ]
  %1538 = phi float [ %1534, %1494 ], [ 1.000000e+00, %1458 ]
  %1539 = fmul fast float %1536, %1442
  %1540 = fmul fast float %1537, %1443
  %1541 = fmul fast float %1538, %1444
  br label %1542

; <label>:1542                                    ; preds = %1535, %1425
  %1543 = phi float [ %1539, %1535 ], [ %1442, %1425 ]
  %1544 = phi float [ %1540, %1535 ], [ %1443, %1425 ]
  %1545 = phi float [ %1541, %1535 ], [ %1444, %1425 ]
  %1546 = and i32 %151, 2097152
  %1547 = icmp eq i32 %1546, 0
  br i1 %1547, label %1552, label %1548, !dx.controlflow.hints !81

; <label>:1548                                    ; preds = %1542
  %1549 = add i32 %148, 192
  %1550 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1549, i32 undef)  ; BufferLoad(srv,index,wot)
  %1551 = extractvalue %dx.types.ResRet.f32 %1550, 0
  br label %1555

; <label>:1552                                    ; preds = %1542
  %1553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1554 = extractvalue %dx.types.CBufRet.f32 %1553, 3
  br label %1555

; <label>:1555                                    ; preds = %1552, %1548
  %1556 = phi float [ %1551, %1548 ], [ %1554, %1552 ]
  %1557 = fmul fast float %787, %603
  %1558 = fmul fast float %1557, %868
  %1559 = fmul fast float %1558, %992
  %1560 = fmul fast float %788, %603
  %1561 = fmul fast float %1560, %869
  %1562 = fmul fast float %1561, %992
  %1563 = fmul fast float %789, %603
  %1564 = fmul fast float %1563, %870
  %1565 = fmul fast float %1564, %992
  br i1 %851, label %1566, label %1699

; <label>:1566                                    ; preds = %1555
  %1567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1568 = extractvalue %dx.types.CBufRet.f32 %1567, 2
  %1569 = extractvalue %dx.types.CBufRet.f32 %1567, 3
  %1570 = fmul fast float %1568, %61
  %1571 = fmul fast float %1569, %62
  %1572 = call float @dx.op.unary.f32(i32 7, float %1570)  ; Saturate(value)
  %1573 = call float @dx.op.unary.f32(i32 7, float %1571)  ; Saturate(value)
  %1574 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1572, float %1573, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1575 = extractvalue %dx.types.ResRet.f32 %1574, 0
  %1576 = extractvalue %dx.types.ResRet.f32 %1574, 1
  %1577 = extractvalue %dx.types.ResRet.f32 %1574, 2
  %1578 = extractvalue %dx.types.ResRet.f32 %1574, 3
  %1579 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1572, float %1573, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1580 = extractvalue %dx.types.ResRet.f32 %1579, 0
  %1581 = extractvalue %dx.types.ResRet.f32 %1579, 1
  %1582 = extractvalue %dx.types.ResRet.f32 %1579, 2
  %1583 = extractvalue %dx.types.ResRet.f32 %1579, 3
  %1584 = call float @dx.op.binary.f32(i32 35, float %1576, float %1577)  ; FMax(a,b)
  %1585 = call float @dx.op.binary.f32(i32 35, float %1575, float %1584)  ; FMax(a,b)
  %1586 = call float @dx.op.binary.f32(i32 35, float %1585, float %1578)  ; FMax(a,b)
  %1587 = call float @dx.op.binary.f32(i32 36, float %1581, float %1582)  ; FMin(a,b)
  %1588 = call float @dx.op.binary.f32(i32 36, float %1580, float %1587)  ; FMin(a,b)
  %1589 = call float @dx.op.binary.f32(i32 36, float %1588, float %1583)  ; FMin(a,b)
  %1590 = fmul fast float %1586, 2.550000e+02
  %1591 = fadd fast float %1590, 0x3F70101020000000
  %1592 = fptoui float %1591 to i32
  %1593 = fmul fast float %1589, 2.550000e+02
  %1594 = fadd fast float %1593, 0x3F70101020000000
  %1595 = fptoui float %1594 to i32
  %1596 = icmp ult i32 %1592, %1595
  br i1 %1596, label %1597, label %1641

; <label>:1597                                    ; preds = %1566
  %1598 = fcmp fast ogt float %53, 9.843750e-01
  %1599 = select i1 %1598, float -4.000000e+00, float %1024
  %1600 = call float @dx.op.binary.f32(i32 35, float %1599, float 0.000000e+00)  ; FMax(a,b)
  %1601 = fadd fast float %1021, %1600
  %1602 = fmul fast float %1601, %1022
  %1603 = call float @dx.op.unary.f32(i32 23, float %1602)  ; Log(value)
  %1604 = fmul fast float %1023, %1603
  %1605 = fmul fast float %1604, %1031
  %1606 = call float @dx.op.unary.f32(i32 7, float %1605)  ; Saturate(value)
  %1607 = uitofp i32 %1592 to float
  %1608 = uitofp i32 %1595 to float
  %1609 = fadd fast float %1607, 5.000000e-01
  %1610 = fadd fast float %1608, 5.000000e-01
  %1611 = fmul fast float %1031, %1609
  %1612 = fmul fast float %1031, %1610
  %1613 = fadd fast float %1611, 0x3F0FFB4800000000
  %1614 = fadd fast float %1612, 0xBF0FFB4800000000
  %1615 = call float @dx.op.binary.f32(i32 35, float %1606, float %1613)  ; FMax(a,b)
  %1616 = call float @dx.op.binary.f32(i32 36, float %1615, float %1614)  ; FMin(a,b)
  %1617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1618 = extractvalue %dx.types.CBufRet.f32 %1617, 1
  %1619 = extractvalue %dx.types.CBufRet.f32 %1617, 2
  %1620 = extractvalue %dx.types.CBufRet.f32 %1617, 0
  %1621 = fmul fast float %1618, %1616
  %1622 = fadd fast float %1620, %1621
  %1623 = fadd fast float %1620, %1619
  %1624 = fsub fast float %1618, %1619
  %1625 = fadd fast float %1624, %1620
  %1626 = call float @dx.op.binary.f32(i32 35, float %1622, float %1623)  ; FMax(a,b)
  %1627 = call float @dx.op.binary.f32(i32 36, float %1626, float %1625)  ; FMin(a,b)
  %1628 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %1572, float %1573, float %1627, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1629 = extractvalue %dx.types.ResRet.f32 %1628, 0
  %1630 = extractvalue %dx.types.ResRet.f32 %1628, 1
  %1631 = extractvalue %dx.types.ResRet.f32 %1628, 2
  %1632 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %1572, float %1573, float %1627, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1633 = extractvalue %dx.types.ResRet.f32 %1632, 0
  %1634 = extractvalue %dx.types.ResRet.f32 %1632, 1
  %1635 = extractvalue %dx.types.ResRet.f32 %1632, 2
  %1636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1637 = extractvalue %dx.types.CBufRet.f32 %1636, 1
  %1638 = fmul fast float %1637, %1633
  %1639 = fmul fast float %1637, %1634
  %1640 = fmul fast float %1637, %1635
  br label %1641

; <label>:1641                                    ; preds = %1597, %1566
  %1642 = phi float [ %1629, %1597 ], [ 1.000000e+00, %1566 ]
  %1643 = phi float [ %1630, %1597 ], [ 1.000000e+00, %1566 ]
  %1644 = phi float [ %1631, %1597 ], [ 1.000000e+00, %1566 ]
  %1645 = phi float [ %1638, %1597 ], [ 0.000000e+00, %1566 ]
  %1646 = phi float [ %1639, %1597 ], [ 0.000000e+00, %1566 ]
  %1647 = phi float [ %1640, %1597 ], [ 0.000000e+00, %1566 ]
  %1648 = fmul fast float %1645, %1447
  %1649 = fmul fast float %1646, %1447
  %1650 = fmul fast float %1647, %1447
  %1651 = call float @dx.op.dot3.f32(i32 55, float %1642, float %1643, float %1644, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1652 = call float @dx.op.dot3.f32(i32 55, float %1648, float %1649, float %1650, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1653 = select i1 %131, float %1651, float %1642
  %1654 = select i1 %131, float %1651, float %1643
  %1655 = select i1 %131, float 1.000000e+00, float %1644
  %1656 = select i1 %131, float %1652, float %1648
  %1657 = select i1 %131, float 0.000000e+00, float %1649
  %1658 = select i1 %131, float 0.000000e+00, float %1650
  %1659 = fmul fast float %1653, %1559
  %1660 = fmul fast float %1654, %1562
  %1661 = fmul fast float %1655, %1565
  %1662 = fadd fast float %1659, %1656
  %1663 = fadd fast float %1660, %1657
  %1664 = fadd fast float %1658, %1661
  %1665 = fmul fast float %1653, %1543
  %1666 = fmul fast float %1654, %1544
  %1667 = fmul fast float %1655, %1545
  %1668 = fmul fast float %66, %1568
  %1669 = fmul fast float %68, %1569
  %1670 = fsub fast float 1.000000e+00, %1668
  %1671 = fsub fast float 1.000000e+00, %1669
  %1672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1673 = extractvalue %dx.types.CBufRet.f32 %1672, 0
  %1674 = extractvalue %dx.types.CBufRet.f32 %1672, 1
  %1675 = extractvalue %dx.types.CBufRet.f32 %1672, 2
  %1676 = fmul fast float %1670, %1673
  %1677 = fmul fast float %1670, %1674
  %1678 = fmul fast float %1670, %1675
  %1679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1680 = extractvalue %dx.types.CBufRet.f32 %1679, 0
  %1681 = extractvalue %dx.types.CBufRet.f32 %1679, 1
  %1682 = extractvalue %dx.types.CBufRet.f32 %1679, 2
  %1683 = fmul fast float %1671, %1680
  %1684 = fmul fast float %1671, %1681
  %1685 = fmul fast float %1671, %1682
  %1686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1687 = extractvalue %dx.types.CBufRet.f32 %1686, 0
  %1688 = extractvalue %dx.types.CBufRet.f32 %1686, 1
  %1689 = extractvalue %dx.types.CBufRet.f32 %1686, 2
  %1690 = fadd fast float %1683, %1687
  %1691 = fadd fast float %1690, %1676
  %1692 = fadd fast float %1684, %1688
  %1693 = fadd fast float %1692, %1677
  %1694 = fadd fast float %1685, %1689
  %1695 = fadd fast float %1694, %1678
  %1696 = fmul fast float %1691, %848
  %1697 = fmul fast float %1693, %848
  %1698 = fmul fast float %1695, %848
  br label %1699

; <label>:1699                                    ; preds = %1641, %1555
  %1700 = phi float [ %1696, %1641 ], [ %96, %1555 ]
  %1701 = phi float [ %1697, %1641 ], [ %97, %1555 ]
  %1702 = phi float [ %1698, %1641 ], [ %98, %1555 ]
  %1703 = phi float [ %848, %1641 ], [ %54, %1555 ]
  %1704 = phi float [ %1662, %1641 ], [ %1559, %1555 ]
  %1705 = phi float [ %1663, %1641 ], [ %1562, %1555 ]
  %1706 = phi float [ %1664, %1641 ], [ %1565, %1555 ]
  %1707 = phi float [ %1665, %1641 ], [ %1543, %1555 ]
  %1708 = phi float [ %1666, %1641 ], [ %1544, %1555 ]
  %1709 = phi float [ %1667, %1641 ], [ %1545, %1555 ]
  %1710 = phi float [ %1642, %1641 ], [ 1.000000e+00, %1555 ]
  br i1 %856, label %2766, label %1711

; <label>:1711                                    ; preds = %1699
  %1712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1713 = extractvalue %dx.types.CBufRet.f32 %1712, 0
  %1714 = extractvalue %dx.types.CBufRet.f32 %1712, 1
  %1715 = extractvalue %dx.types.CBufRet.f32 %1712, 2
  %1716 = extractvalue %dx.types.CBufRet.f32 %1712, 3
  %1717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1718 = extractvalue %dx.types.CBufRet.f32 %1717, 0
  %1719 = extractvalue %dx.types.CBufRet.f32 %1717, 1
  %1720 = extractvalue %dx.types.CBufRet.f32 %1717, 2
  %1721 = extractvalue %dx.types.CBufRet.f32 %1717, 3
  %1722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1723 = extractvalue %dx.types.CBufRet.f32 %1722, 0
  %1724 = extractvalue %dx.types.CBufRet.f32 %1722, 1
  %1725 = extractvalue %dx.types.CBufRet.f32 %1722, 2
  %1726 = extractvalue %dx.types.CBufRet.f32 %1722, 3
  %1727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1728 = extractvalue %dx.types.CBufRet.f32 %1727, 0
  %1729 = extractvalue %dx.types.CBufRet.f32 %1727, 1
  %1730 = extractvalue %dx.types.CBufRet.f32 %1727, 2
  %1731 = extractvalue %dx.types.CBufRet.f32 %1727, 3
  %1732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1733 = extractvalue %dx.types.CBufRet.f32 %1732, 3
  %1734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1735 = extractvalue %dx.types.CBufRet.f32 %1734, 3
  %1736 = extractvalue %dx.types.CBufRet.f32 %1734, 0
  %1737 = extractvalue %dx.types.CBufRet.f32 %1734, 1
  %1738 = extractvalue %dx.types.CBufRet.f32 %1734, 2
  %1739 = fcmp fast olt float %1738, -5.000000e-01
  %1740 = call float @dx.op.dot3.f32(i32 55, float %1700, float %1701, float %1702, float %1700, float %1701, float %1702)  ; Dot3(ax,ay,az,bx,by,bz)
  %1741 = call float @dx.op.unary.f32(i32 25, float %1740)  ; Rsqrt(value)
  %1742 = fmul fast float %1741, %1740
  %1743 = fmul fast float %1741, %1700
  %1744 = fmul fast float %1741, %1701
  %1745 = fmul fast float %1741, %1702
  %1746 = fadd fast float %1742, %1716
  %1747 = call float @dx.op.dot3.f32(i32 55, float %1743, float %1744, float %1745, float %1713, float %1714, float %1715)  ; Dot3(ax,ay,az,bx,by,bz)
  %1748 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1749 = extractvalue %dx.types.CBufRet.i32 %1748, 1
  %1750 = and i32 %1749, 1
  %1751 = icmp ne i32 %1750, 0
  %1752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1753 = extractvalue %dx.types.CBufRet.f32 %1752, 2
  %1754 = fcmp fast ogt float %1753, 0.000000e+00
  %1755 = and i1 %1751, %1754
  br i1 %1755, label %1756, label %2162, !dx.controlflow.hints !82

; <label>:1756                                    ; preds = %1711
  %1757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1758 = extractvalue %dx.types.CBufRet.f32 %1757, 3
  %1759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1760 = extractvalue %dx.types.CBufRet.f32 %1759, 2
  %1761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1762 = extractvalue %dx.types.CBufRet.f32 %1761, 2
  %1763 = fsub fast float %1760, %1762
  %1764 = and i32 %1749, 2
  %1765 = extractvalue %dx.types.CBufRet.i32 %1748, 0
  %1766 = call i32 @dx.op.binary.i32(i32 40, i32 %1765, i32 3)  ; UMin(a,b)
  %1767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1768 = extractvalue %dx.types.CBufRet.f32 %1767, 0
  %1769 = extractvalue %dx.types.CBufRet.f32 %1767, 1
  %1770 = extractvalue %dx.types.CBufRet.f32 %1761, 0
  %1771 = extractvalue %dx.types.CBufRet.f32 %1761, 1
  %1772 = fsub fast float %1768, %1770
  %1773 = fsub fast float %1769, %1771
  %1774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1775 = extractvalue %dx.types.CBufRet.f32 %1774, 0
  %1776 = fcmp fast ogt float %1775, 0.000000e+00
  %1777 = fsub fast float -0.000000e+00, %1772
  %1778 = fsub fast float -0.000000e+00, %1773
  %1779 = call float @dx.op.dot2.f32(i32 54, float %1743, float %1744, float %1743, float %1744)  ; Dot2(ax,ay,bx,by)
  %1780 = call float @dx.op.dot2.f32(i32 54, float %1743, float %1744, float %1777, float %1778)  ; Dot2(ax,ay,bx,by)
  %1781 = fmul fast float %1780, 2.000000e+00
  %1782 = call float @dx.op.dot2.f32(i32 54, float %1777, float %1778, float %1777, float %1778)  ; Dot2(ax,ay,bx,by)
  %1783 = fmul fast float %1775, %1775
  %1784 = fsub fast float %1782, %1783
  %1785 = fmul fast float %1781, %1781
  %1786 = fmul fast float %1779, 4.000000e+00
  %1787 = fmul fast float %1786, %1784
  %1788 = fsub fast float %1785, %1787
  %1789 = fcmp fast ogt float %1788, 0.000000e+00
  br i1 %1789, label %1790, label %1805

; <label>:1790                                    ; preds = %1756
  %1791 = fcmp fast ogt float %1781, 0.000000e+00
  %1792 = call float @dx.op.unary.f32(i32 24, float %1788)  ; Sqrt(value)
  %1793 = fsub fast float -0.000000e+00, %1792
  %1794 = select i1 %1791, float %1792, float %1793
  %1795 = fadd fast float %1794, %1781
  %1796 = fmul float %1795, -5.000000e-01
  %1797 = fdiv fast float %1796, %1779
  %1798 = call float @dx.op.binary.f32(i32 35, float %1797, float 0.000000e+00)  ; FMax(a,b)
  %1799 = call float @dx.op.binary.f32(i32 36, float %1742, float %1798)  ; FMin(a,b)
  %1800 = fdiv fast float %1784, %1796
  %1801 = call float @dx.op.binary.f32(i32 35, float %1800, float 0.000000e+00)  ; FMax(a,b)
  %1802 = call float @dx.op.binary.f32(i32 36, float %1742, float %1801)  ; FMin(a,b)
  %1803 = call float @dx.op.binary.f32(i32 36, float %1799, float %1802)  ; FMin(a,b)
  %1804 = call float @dx.op.binary.f32(i32 35, float %1799, float %1802)  ; FMax(a,b)
  br label %1805

; <label>:1805                                    ; preds = %1790, %1756
  %1806 = phi float [ %1804, %1790 ], [ -1.000000e+00, %1756 ]
  %1807 = phi float [ %1803, %1790 ], [ -1.000000e+00, %1756 ]
  %1808 = phi i1 [ true, %1790 ], [ false, %1756 ]
  %1809 = and i1 %1776, %1808
  br i1 %1809, label %1810, label %1812

; <label>:1810                                    ; preds = %1805
  %1811 = fcmp fast oeq float %1807, %1806
  br i1 %1811, label %2115, label %1813

; <label>:1812                                    ; preds = %1805
  br i1 %1776, label %2115, label %1813

; <label>:1813                                    ; preds = %1812, %1810
  %1814 = phi float [ %1742, %1812 ], [ %1806, %1810 ]
  %1815 = phi float [ 0.000000e+00, %1812 ], [ %1807, %1810 ]
  %1816 = icmp ne i32 %1764, 0
  %1817 = fmul fast float %1814, %1745
  %1818 = fadd fast float %1817, %1758
  %1819 = fmul fast float %1818, %1814
  %1820 = select i1 %1816, float 0.000000e+00, float %1819
  %1821 = fcmp fast oeq float %1745, 0.000000e+00
  %1822 = fdiv fast float %1763, %1745
  %1823 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1822)  ; FMax(a,b)
  %1824 = select i1 %1821, float %1814, float %1823
  %1825 = call float @dx.op.binary.f32(i32 36, float %1814, float %1824)  ; FMin(a,b)
  %1826 = fcmp fast ogt float %1745, 0.000000e+00
  %1827 = fcmp fast olt float %1763, 0.000000e+00
  br i1 %1826, label %1828, label %1885

; <label>:1828                                    ; preds = %1813
  %1829 = icmp eq i32 %1764, 0
  br i1 %1827, label %1830, label %1874

; <label>:1830                                    ; preds = %1828
  %1831 = select i1 %1829, float %1814, float 0.000000e+00
  %1832 = fsub fast float -0.000000e+00, %1831
  %1833 = call float @dx.op.unary.f32(i32 6, float %1832)  ; FAbs(value)
  %1834 = fmul fast float %1831, %1745
  %1835 = fadd fast float %1834, %1758
  %1836 = fmul fast float %1833, %1835
  %1837 = fsub fast float %1820, %1836
  %1838 = fsub fast float %1814, %1833
  %1839 = select i1 %1829, float %1838, float 0.000000e+00
  %1840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1841 = extractvalue %dx.types.CBufRet.f32 %1840, 0
  %1842 = extractvalue %dx.types.CBufRet.f32 %1840, 1
  %1843 = extractvalue %dx.types.CBufRet.f32 %1840, 2
  %1844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1845 = extractvalue %dx.types.CBufRet.f32 %1844, 0
  %1846 = extractvalue %dx.types.CBufRet.f32 %1844, 1
  %1847 = extractvalue %dx.types.CBufRet.f32 %1844, 2
  %1848 = extractvalue %dx.types.CBufRet.f32 %1844, 3
  %1849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1850 = extractvalue %dx.types.CBufRet.f32 %1849, 3
  %1851 = call float @dx.op.binary.f32(i32 36, float %1837, float %1850)  ; FMin(a,b)
  %1852 = fmul fast float %1848, %1839
  %1853 = call float @dx.op.unary.f32(i32 7, float %1852)  ; Saturate(value)
  %1854 = fsub fast float %1845, %1841
  %1855 = fsub fast float %1846, %1842
  %1856 = fsub fast float %1847, %1843
  %1857 = fmul fast float %1853, %1854
  %1858 = fmul fast float %1853, %1855
  %1859 = fmul fast float %1853, %1856
  %1860 = fadd fast float %1857, %1841
  %1861 = fadd fast float %1858, %1842
  %1862 = fadd fast float %1859, %1843
  %1863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1864 = extractvalue %dx.types.CBufRet.f32 %1863, 0
  %1865 = extractvalue %dx.types.CBufRet.f32 %1863, 1
  %1866 = fadd fast float %1865, %1864
  %1867 = call float @dx.op.unary.f32(i32 7, float %1866)  ; Saturate(value)
  %1868 = extractvalue %dx.types.CBufRet.f32 %1863, 2
  %1869 = extractvalue %dx.types.CBufRet.f32 %1863, 3
  %1870 = fadd fast float %1869, %1868
  %1871 = call float @dx.op.unary.f32(i32 7, float %1870)  ; Saturate(value)
  %1872 = fmul fast float %1867, %1851
  %1873 = fmul fast float %1872, %1871
  br label %2115

; <label>:1874                                    ; preds = %1828
  br i1 %1829, label %1875, label %1896

; <label>:1875                                    ; preds = %1874
  %1876 = call float @dx.op.binary.f32(i32 36, float %1825, float %1815)  ; FMin(a,b)
  %1877 = fsub fast float %1825, %1876
  %1878 = fsub fast float %1877, %1814
  %1879 = call float @dx.op.unary.f32(i32 6, float %1878)  ; FAbs(value)
  %1880 = fadd fast float %1877, %1814
  %1881 = fmul fast float %1880, %1745
  %1882 = fadd fast float %1881, %1758
  %1883 = fmul fast float %1882, %1879
  %1884 = fsub fast float %1820, %1883
  br label %1896

; <label>:1885                                    ; preds = %1813
  br i1 %1827, label %1886, label %1896

; <label>:1886                                    ; preds = %1885
  %1887 = call float @dx.op.binary.f32(i32 35, float %1815, float %1825)  ; FMax(a,b)
  %1888 = icmp eq i32 %1764, 0
  %1889 = select i1 %1888, float %1825, float 0.000000e+00
  %1890 = fsub fast float -0.000000e+00, %1889
  %1891 = call float @dx.op.unary.f32(i32 6, float %1890)  ; FAbs(value)
  %1892 = fmul fast float %1889, %1745
  %1893 = fadd fast float %1892, %1758
  %1894 = fmul fast float %1891, %1893
  %1895 = fsub fast float %1820, %1894
  br label %1896

; <label>:1896                                    ; preds = %1886, %1885, %1875, %1874
  %1897 = phi float [ %1815, %1874 ], [ %1815, %1875 ], [ %1887, %1886 ], [ %1815, %1885 ]
  %1898 = phi float [ 0.000000e+00, %1874 ], [ %1879, %1875 ], [ %1891, %1886 ], [ 0.000000e+00, %1885 ]
  %1899 = phi float [ %1820, %1874 ], [ %1884, %1875 ], [ %1895, %1886 ], [ %1820, %1885 ]
  %1900 = phi float [ %1825, %1874 ], [ %1825, %1875 ], [ %1814, %1886 ], [ %1814, %1885 ]
  %1901 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 0
  store float -1.000000e+00, float* %1901, align 4, !tbaa !83, !noalias !87
  %1902 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 1
  store float -1.000000e+00, float* %1902, align 4, !tbaa !83, !noalias !87
  %1903 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 2
  store float -1.000000e+00, float* %1903, align 4, !tbaa !83, !noalias !87
  %1904 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 0
  store float -1.000000e+00, float* %1904, align 4, !tbaa !83, !noalias !87
  %1905 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 1
  store float -1.000000e+00, float* %1905, align 4, !tbaa !83, !noalias !87
  %1906 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 2
  store float -1.000000e+00, float* %1906, align 4, !tbaa !83, !noalias !87
  %1907 = icmp sgt i32 %1766, 0
  br i1 %1907, label %1908, label %1969

; <label>:1908                                    ; preds = %1896
  br label %1909

; <label>:1909                                    ; preds = %1958, %1908
  %1910 = phi i32 [ %1959, %1958 ], [ 0, %1908 ]
  %1911 = phi i32 [ %1960, %1958 ], [ 0, %1908 ]
  %1912 = add nuw i32 %1911, 171
  %1913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 %1912)  ; CBufferLoadLegacy(handle,regIndex)
  %1914 = extractvalue %dx.types.CBufRet.f32 %1913, 0
  %1915 = extractvalue %dx.types.CBufRet.f32 %1913, 1
  %1916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1917 = extractvalue %dx.types.CBufRet.f32 %1916, 0
  %1918 = extractvalue %dx.types.CBufRet.f32 %1916, 1
  %1919 = fsub fast float %1914, %1917
  %1920 = fsub fast float %1915, %1918
  %1921 = extractvalue %dx.types.CBufRet.f32 %1913, 2
  %1922 = fsub fast float -0.000000e+00, %1919
  %1923 = fsub fast float -0.000000e+00, %1920
  %1924 = call float @dx.op.dot2.f32(i32 54, float %1743, float %1744, float %1922, float %1923)  ; Dot2(ax,ay,bx,by)
  %1925 = fmul fast float %1924, 2.000000e+00
  %1926 = call float @dx.op.dot2.f32(i32 54, float %1922, float %1923, float %1922, float %1923)  ; Dot2(ax,ay,bx,by)
  %1927 = fmul fast float %1921, %1921
  %1928 = fsub fast float %1926, %1927
  %1929 = fmul fast float %1925, %1925
  %1930 = fmul fast float %1786, %1928
  %1931 = fsub fast float %1929, %1930
  %1932 = fcmp fast ogt float %1931, 0.000000e+00
  br i1 %1932, label %1933, label %1948

; <label>:1933                                    ; preds = %1909
  %1934 = fcmp fast ogt float %1925, 0.000000e+00
  %1935 = call float @dx.op.unary.f32(i32 24, float %1931)  ; Sqrt(value)
  %1936 = fsub fast float -0.000000e+00, %1935
  %1937 = select i1 %1934, float %1935, float %1936
  %1938 = fadd fast float %1937, %1925
  %1939 = fmul float %1938, -5.000000e-01
  %1940 = fdiv fast float %1939, %1779
  %1941 = call float @dx.op.binary.f32(i32 35, float %1940, float 0.000000e+00)  ; FMax(a,b)
  %1942 = call float @dx.op.binary.f32(i32 36, float %1814, float %1941)  ; FMin(a,b)
  %1943 = fdiv fast float %1928, %1939
  %1944 = call float @dx.op.binary.f32(i32 35, float %1943, float 0.000000e+00)  ; FMax(a,b)
  %1945 = call float @dx.op.binary.f32(i32 36, float %1814, float %1944)  ; FMin(a,b)
  %1946 = call float @dx.op.binary.f32(i32 36, float %1942, float %1945)  ; FMin(a,b)
  %1947 = call float @dx.op.binary.f32(i32 35, float %1942, float %1945)  ; FMax(a,b)
  br label %1948

; <label>:1948                                    ; preds = %1933, %1909
  %1949 = phi float [ %1947, %1933 ], [ -1.000000e+00, %1909 ]
  %1950 = phi float [ %1946, %1933 ], [ -1.000000e+00, %1909 ]
  %1951 = phi i1 [ true, %1933 ], [ false, %1909 ]
  br i1 %1951, label %1952, label %1958

; <label>:1952                                    ; preds = %1948
  %1953 = call float @dx.op.binary.f32(i32 35, float %1897, float %1950)  ; FMax(a,b)
  %1954 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 %1911
  store float %1953, float* %1954, align 4, !tbaa !83, !noalias !87
  %1955 = call float @dx.op.binary.f32(i32 35, float %1897, float %1949)  ; FMax(a,b)
  %1956 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 %1911
  store float %1955, float* %1956, align 4, !tbaa !83, !noalias !87
  %1957 = add nsw i32 %1910, 1
  br label %1958

; <label>:1958                                    ; preds = %1952, %1948
  %1959 = phi i32 [ %1957, %1952 ], [ %1910, %1948 ]
  %1960 = add nuw nsw i32 %1911, 1
  %1961 = icmp eq i32 %1960, %1766
  br i1 %1961, label %1962, label %1909

; <label>:1962                                    ; preds = %1958
  %1963 = load float, float* %1903, align 4, !tbaa !83, !alias.scope !103, !noalias !106
  %1964 = load float, float* %1902, align 4, !tbaa !83, !alias.scope !109, !noalias !110
  %1965 = load float, float* %1901, align 4, !tbaa !83, !alias.scope !111, !noalias !112
  %1966 = load float, float* %1906, align 4, !tbaa !83, !alias.scope !113, !noalias !116
  %1967 = load float, float* %1905, align 4, !tbaa !83, !alias.scope !119, !noalias !120
  %1968 = load float, float* %1904, align 4, !tbaa !83, !alias.scope !121, !noalias !122
  br label %1969

; <label>:1969                                    ; preds = %1962, %1896
  %1970 = phi float [ -1.000000e+00, %1896 ], [ %1968, %1962 ]
  %1971 = phi float [ -1.000000e+00, %1896 ], [ %1967, %1962 ]
  %1972 = phi float [ -1.000000e+00, %1896 ], [ %1966, %1962 ]
  %1973 = phi float [ -1.000000e+00, %1896 ], [ %1965, %1962 ]
  %1974 = phi float [ -1.000000e+00, %1896 ], [ %1964, %1962 ]
  %1975 = phi float [ -1.000000e+00, %1896 ], [ %1963, %1962 ]
  %1976 = phi i32 [ 0, %1896 ], [ %1959, %1962 ]
  %1977 = call float @dx.op.binary.f32(i32 36, float %1974, float %1975)  ; FMin(a,b)
  %1978 = call float @dx.op.binary.f32(i32 36, float %1973, float %1977)  ; FMin(a,b)
  %1979 = call float @dx.op.binary.f32(i32 35, float %1973, float %1974)  ; FMax(a,b)
  %1980 = call float @dx.op.binary.f32(i32 36, float %1979, float %1975)  ; FMin(a,b)
  %1981 = call float @dx.op.binary.f32(i32 36, float %1973, float %1974)  ; FMin(a,b)
  %1982 = call float @dx.op.binary.f32(i32 35, float %1981, float %1980)  ; FMax(a,b)
  %1983 = call float @dx.op.binary.f32(i32 35, float %1974, float %1975)  ; FMax(a,b)
  %1984 = call float @dx.op.binary.f32(i32 35, float %1973, float %1983)  ; FMax(a,b)
  store float %1978, float* %1901, align 4, !tbaa !83, !alias.scope !111, !noalias !112
  store float %1982, float* %1902, align 4, !tbaa !83, !alias.scope !109, !noalias !110
  store float %1984, float* %1903, align 4, !tbaa !83, !alias.scope !103, !noalias !106
  %1985 = call float @dx.op.binary.f32(i32 36, float %1971, float %1972)  ; FMin(a,b)
  %1986 = call float @dx.op.binary.f32(i32 36, float %1970, float %1985)  ; FMin(a,b)
  %1987 = call float @dx.op.binary.f32(i32 35, float %1970, float %1971)  ; FMax(a,b)
  %1988 = call float @dx.op.binary.f32(i32 36, float %1987, float %1972)  ; FMin(a,b)
  %1989 = call float @dx.op.binary.f32(i32 36, float %1970, float %1971)  ; FMin(a,b)
  %1990 = call float @dx.op.binary.f32(i32 35, float %1989, float %1988)  ; FMax(a,b)
  %1991 = call float @dx.op.binary.f32(i32 35, float %1971, float %1972)  ; FMax(a,b)
  %1992 = call float @dx.op.binary.f32(i32 35, float %1970, float %1991)  ; FMax(a,b)
  store float %1986, float* %1904, align 4, !tbaa !83, !alias.scope !121, !noalias !122
  store float %1990, float* %1905, align 4, !tbaa !83, !alias.scope !119, !noalias !120
  store float %1992, float* %1906, align 4, !tbaa !83, !alias.scope !113, !noalias !116
  %1993 = sub nsw i32 3, %1976
  %1994 = icmp sgt i32 %1993, 2
  br i1 %1994, label %1995, label %2033

; <label>:1995                                    ; preds = %1969
  %1996 = icmp eq i32 %1764, 0
  %1997 = fsub fast float %1814, %1898
  %1998 = select i1 %1996, float %1997, float %1898
  %1999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2000 = extractvalue %dx.types.CBufRet.f32 %1999, 0
  %2001 = extractvalue %dx.types.CBufRet.f32 %1999, 1
  %2002 = extractvalue %dx.types.CBufRet.f32 %1999, 2
  %2003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2004 = extractvalue %dx.types.CBufRet.f32 %2003, 0
  %2005 = extractvalue %dx.types.CBufRet.f32 %2003, 1
  %2006 = extractvalue %dx.types.CBufRet.f32 %2003, 2
  %2007 = extractvalue %dx.types.CBufRet.f32 %2003, 3
  %2008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2009 = extractvalue %dx.types.CBufRet.f32 %2008, 3
  %2010 = call float @dx.op.binary.f32(i32 36, float %1899, float %2009)  ; FMin(a,b)
  %2011 = fmul fast float %2007, %1998
  %2012 = call float @dx.op.unary.f32(i32 7, float %2011)  ; Saturate(value)
  %2013 = fsub fast float %2004, %2000
  %2014 = fsub fast float %2005, %2001
  %2015 = fsub fast float %2006, %2002
  %2016 = fmul fast float %2012, %2013
  %2017 = fmul fast float %2012, %2014
  %2018 = fmul fast float %2012, %2015
  %2019 = fadd fast float %2016, %2000
  %2020 = fadd fast float %2017, %2001
  %2021 = fadd fast float %2018, %2002
  %2022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2023 = extractvalue %dx.types.CBufRet.f32 %2022, 0
  %2024 = extractvalue %dx.types.CBufRet.f32 %2022, 1
  %2025 = fadd fast float %2024, %2023
  %2026 = call float @dx.op.unary.f32(i32 7, float %2025)  ; Saturate(value)
  %2027 = extractvalue %dx.types.CBufRet.f32 %2022, 2
  %2028 = extractvalue %dx.types.CBufRet.f32 %2022, 3
  %2029 = fadd fast float %2028, %2027
  %2030 = call float @dx.op.unary.f32(i32 7, float %2029)  ; Saturate(value)
  %2031 = fmul fast float %2026, %2010
  %2032 = fmul fast float %2031, %2030
  br label %2115

; <label>:2033                                    ; preds = %1969
  %2034 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 %1993
  %2035 = load float, float* %2034, align 4, !tbaa !83, !noalias !87
  %2036 = fcmp fast olt float %2035, %1900
  %2037 = icmp sgt i32 %1976, 0
  %2038 = and i1 %2037, %2036
  br i1 %2038, label %2039, label %2076

; <label>:2039                                    ; preds = %2033
  br label %2040

; <label>:2040                                    ; preds = %2069, %2039
  %2041 = phi float [ %2070, %2069 ], [ %1898, %2039 ]
  %2042 = phi float [ %2071, %2069 ], [ %1899, %2039 ]
  %2043 = phi float [ %2051, %2069 ], [ %2035, %2039 ]
  %2044 = phi i32 [ %2048, %2069 ], [ %1993, %2039 ]
  %2045 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 %2044
  %2046 = load float, float* %2045, align 4, !tbaa !83, !noalias !87
  %2047 = icmp slt i32 %2044, 2
  %2048 = add nsw i32 %2044, 1
  %2049 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 %2048
  %2050 = load float, float* %2049, align 4, !tbaa !83, !noalias !87
  %2051 = select i1 %2047, float %2050, float %1814
  %2052 = call float @dx.op.binary.f32(i32 36, float %2051, float %2046)  ; FMin(a,b)
  %2053 = call float @dx.op.binary.f32(i32 36, float %1900, float %2052)  ; FMin(a,b)
  %2054 = icmp eq i32 %1764, 0
  %2055 = fadd fast float %2053, %2043
  %2056 = fmul fast float %2055, %1745
  %2057 = fadd fast float %2056, %1758
  br i1 %2054, label %2063, label %2058

; <label>:2058                                    ; preds = %2040
  %2059 = fsub fast float %2053, %2043
  %2060 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2059)  ; FMax(a,b)
  %2061 = fmul fast float %2060, %2057
  %2062 = fadd fast float %2061, %2042
  br label %2069

; <label>:2063                                    ; preds = %2040
  %2064 = fsub fast float %2043, %2053
  %2065 = call float @dx.op.unary.f32(i32 6, float %2064)  ; FAbs(value)
  %2066 = fadd fast float %2065, %2041
  %2067 = fmul fast float %2065, %2057
  %2068 = fsub fast float %2042, %2067
  br label %2069

; <label>:2069                                    ; preds = %2063, %2058
  %2070 = phi float [ %2060, %2058 ], [ %2066, %2063 ]
  %2071 = phi float [ %2062, %2058 ], [ %2068, %2063 ]
  %2072 = fcmp fast olt float %2051, %1900
  %2073 = icmp slt i32 %2048, 3
  %2074 = and i1 %2073, %2072
  br i1 %2074, label %2040, label %2075

; <label>:2075                                    ; preds = %2069
  br label %2076

; <label>:2076                                    ; preds = %2075, %2033
  %2077 = phi float [ %1898, %2033 ], [ %2070, %2075 ]
  %2078 = phi float [ %1899, %2033 ], [ %2071, %2075 ]
  %2079 = fsub fast float %1814, %2077
  %2080 = select i1 %1816, float %2077, float %2079
  %2081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2082 = extractvalue %dx.types.CBufRet.f32 %2081, 0
  %2083 = extractvalue %dx.types.CBufRet.f32 %2081, 1
  %2084 = extractvalue %dx.types.CBufRet.f32 %2081, 2
  %2085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2086 = extractvalue %dx.types.CBufRet.f32 %2085, 0
  %2087 = extractvalue %dx.types.CBufRet.f32 %2085, 1
  %2088 = extractvalue %dx.types.CBufRet.f32 %2085, 2
  %2089 = extractvalue %dx.types.CBufRet.f32 %2085, 3
  %2090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2091 = extractvalue %dx.types.CBufRet.f32 %2090, 3
  %2092 = call float @dx.op.binary.f32(i32 36, float %2078, float %2091)  ; FMin(a,b)
  %2093 = fmul fast float %2089, %2080
  %2094 = call float @dx.op.unary.f32(i32 7, float %2093)  ; Saturate(value)
  %2095 = fsub fast float %2086, %2082
  %2096 = fsub fast float %2087, %2083
  %2097 = fsub fast float %2088, %2084
  %2098 = fmul fast float %2094, %2095
  %2099 = fmul fast float %2094, %2096
  %2100 = fmul fast float %2094, %2097
  %2101 = fadd fast float %2098, %2082
  %2102 = fadd fast float %2099, %2083
  %2103 = fadd fast float %2100, %2084
  %2104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2105 = extractvalue %dx.types.CBufRet.f32 %2104, 0
  %2106 = extractvalue %dx.types.CBufRet.f32 %2104, 1
  %2107 = fadd fast float %2106, %2105
  %2108 = call float @dx.op.unary.f32(i32 7, float %2107)  ; Saturate(value)
  %2109 = extractvalue %dx.types.CBufRet.f32 %2104, 2
  %2110 = extractvalue %dx.types.CBufRet.f32 %2104, 3
  %2111 = fadd fast float %2110, %2109
  %2112 = call float @dx.op.unary.f32(i32 7, float %2111)  ; Saturate(value)
  %2113 = fmul fast float %2108, %2092
  %2114 = fmul fast float %2113, %2112
  br label %2115

; <label>:2115                                    ; preds = %2076, %1995, %1830, %1812, %1810
  %2116 = phi float [ %1839, %1830 ], [ %1998, %1995 ], [ %2080, %2076 ], [ 0.000000e+00, %1810 ], [ 0.000000e+00, %1812 ]
  %2117 = phi float [ %1873, %1830 ], [ %2032, %1995 ], [ %2114, %2076 ], [ 0.000000e+00, %1810 ], [ 0.000000e+00, %1812 ]
  %2118 = phi float [ %1860, %1830 ], [ %2019, %1995 ], [ %2101, %2076 ], [ 0.000000e+00, %1810 ], [ 0.000000e+00, %1812 ]
  %2119 = phi float [ %1861, %1830 ], [ %2020, %1995 ], [ %2102, %2076 ], [ 0.000000e+00, %1810 ], [ 0.000000e+00, %1812 ]
  %2120 = phi float [ %1862, %1830 ], [ %2021, %1995 ], [ %2103, %2076 ], [ 0.000000e+00, %1810 ], [ 0.000000e+00, %1812 ]
  %2121 = fmul fast float %1753, %2117
  %2122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2123 = extractvalue %dx.types.CBufRet.f32 %2122, 2
  %2124 = fsub fast float %1760, %2123
  %2125 = fcmp fast olt float %2121, -2.000000e+01
  %2126 = call float @dx.op.unary.f32(i32 21, float %2121)  ; Exp(value)
  %2127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2128 = extractvalue %dx.types.CBufRet.f32 %2127, 2
  %2129 = extractvalue %dx.types.CBufRet.f32 %2127, 3
  %2130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2131 = extractvalue %dx.types.CBufRet.f32 %2130, 2
  %2132 = fmul fast float %2129, %2124
  %2133 = call float @dx.op.unary.f32(i32 7, float %2132)  ; Saturate(value)
  %2134 = fsub fast float 1.000000e+00, %2133
  %2135 = fmul fast float %1745, 5.000000e-01
  %2136 = fadd fast float %2135, 5.000000e-01
  %2137 = call float @dx.op.unary.f32(i32 7, float %2136)  ; Saturate(value)
  %2138 = fsub fast float 1.000000e+00, %2137
  %2139 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2134)  ; FMax(a,b)
  %2140 = fdiv fast float %2138, %2139
  %2141 = fsub fast float %2124, %1702
  %2142 = call float @dx.op.unary.f32(i32 6, float %2141)  ; FAbs(value)
  %2143 = fmul fast float %2142, %2128
  %2144 = call float @dx.op.unary.f32(i32 7, float %2140)  ; Saturate(value)
  %2145 = fsub fast float 1.000000e+00, %2143
  %2146 = fmul fast float %2145, %2144
  %2147 = fadd fast float %2146, %2143
  %2148 = fmul fast float %2131, %2124
  %2149 = call float @dx.op.unary.f32(i32 7, float %2148)  ; Saturate(value)
  %2150 = fsub fast float 1.000000e+00, %2147
  %2151 = fmul fast float %2150, %2149
  %2152 = fadd fast float %2151, %2147
  %2153 = call float @dx.op.unary.f32(i32 7, float %2152)  ; Saturate(value)
  %2154 = fadd fast float %2126, -1.000000e+00
  %2155 = select i1 %2125, float -1.000000e+00, float %2154
  %2156 = fmul fast float %2153, %2155
  %2157 = fadd fast float %2156, 1.000000e+00
  %2158 = fsub fast float -0.000000e+00, %2156
  %2159 = fmul fast float %2118, %2158
  %2160 = fmul fast float %2119, %2158
  %2161 = fmul fast float %2120, %2158
  br label %2162

; <label>:2162                                    ; preds = %2115, %1711
  %2163 = phi float [ %2116, %2115 ], [ 0.000000e+00, %1711 ]
  %2164 = phi float [ %2157, %2115 ], [ 1.000000e+00, %1711 ]
  %2165 = phi float [ %2159, %2115 ], [ 0.000000e+00, %1711 ]
  %2166 = phi float [ %2160, %2115 ], [ 0.000000e+00, %1711 ]
  %2167 = phi float [ %2161, %2115 ], [ 0.000000e+00, %1711 ]
  %2168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2169 = extractvalue %dx.types.CBufRet.f32 %2168, 1
  %2170 = fsub fast float 1.000000e+00, %2164
  %2171 = fmul fast float %2170, %1746
  %2172 = fmul fast float %2171, %2169
  %2173 = fsub fast float %1746, %2172
  br i1 %1739, label %2174, label %2203, !dx.controlflow.hints !123

; <label>:2174                                    ; preds = %2162
  %2175 = fmul fast float %1747, %1736
  %2176 = fadd fast float %2175, %1737
  %2177 = call float @dx.op.unary.f32(i32 7, float %2176)  ; Saturate(value)
  %2178 = fmul fast float %1718, %2173
  %2179 = fsub fast float -0.000000e+00, %2178
  %2180 = fmul fast float %1719, %2173
  %2181 = fsub fast float -0.000000e+00, %2180
  %2182 = call float @dx.op.unary.f32(i32 21, float %2179)  ; Exp(value)
  %2183 = call float @dx.op.unary.f32(i32 21, float %2181)  ; Exp(value)
  %2184 = call float @dx.op.binary.f32(i32 35, float %1726, float %2182)  ; FMax(a,b)
  %2185 = call float @dx.op.binary.f32(i32 35, float %1726, float %2183)  ; FMax(a,b)
  %2186 = fsub fast float %2185, %2184
  %2187 = fmul fast float %2186, %2177
  %2188 = fadd fast float %2187, %2184
  %2189 = call float @dx.op.unary.f32(i32 7, float %2188)  ; Saturate(value)
  %2190 = fsub fast float %1723, %1728
  %2191 = fsub fast float %1724, %1729
  %2192 = fsub fast float %1725, %1730
  %2193 = fmul fast float %2177, %2190
  %2194 = fmul fast float %2177, %2191
  %2195 = fmul fast float %2177, %2192
  %2196 = fadd fast float %2193, %1728
  %2197 = fadd fast float %2194, %1729
  %2198 = fadd fast float %2195, %1730
  %2199 = fsub fast float 1.000000e+00, %2189
  %2200 = fmul fast float %2199, %2196
  %2201 = fmul fast float %2199, %2197
  %2202 = fmul fast float %2199, %2198
  br label %2262

; <label>:2203                                    ; preds = %2162
  %2204 = fmul fast float %2173, %1735
  %2205 = call float @dx.op.unary.f32(i32 7, float %2204)  ; Saturate(value)
  %2206 = fsub fast float 2.000000e+00, %2205
  %2207 = fmul fast float %2205, 9.921875e-01
  %2208 = fmul fast float %2207, %2206
  %2209 = fadd fast float %2208, 3.906250e-03
  %2210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %26, float %2209, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2211 = extractvalue %dx.types.ResRet.f32 %2210, 0
  %2212 = fsub fast float %2205, %2211
  %2213 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2212)  ; FMax(a,b)
  %2214 = fmul fast float %1721, %1702
  %2215 = call float @dx.op.unary.f32(i32 6, float %2214)  ; FAbs(value)
  %2216 = fcmp fast ogt float %2215, 0x3EB0C6F7A0000000
  br i1 %2216, label %2217, label %2223, !dx.controlflow.hints !124

; <label>:2217                                    ; preds = %2203
  %2218 = fmul fast float %2214, 0xBFF7154760000000
  %2219 = call float @dx.op.unary.f32(i32 21, float %2218)  ; Exp(value)
  %2220 = fsub fast float 1.000000e+00, %2219
  %2221 = fdiv fast float %2220, %2214
  %2222 = fmul fast float %2221, %1731
  br label %2223

; <label>:2223                                    ; preds = %2217, %2203
  %2224 = phi float [ %2222, %2217 ], [ %1731, %2203 ]
  %2225 = fadd fast float %2224, %1733
  %2226 = fmul fast float %2225, %2213
  %2227 = fmul fast float %1718, %2226
  %2228 = fsub fast float -0.000000e+00, %2227
  %2229 = fmul fast float %1719, %2226
  %2230 = fsub fast float -0.000000e+00, %2229
  %2231 = fmul fast float %1720, %2226
  %2232 = fsub fast float -0.000000e+00, %2231
  %2233 = call float @dx.op.unary.f32(i32 21, float %2228)  ; Exp(value)
  %2234 = call float @dx.op.unary.f32(i32 21, float %2230)  ; Exp(value)
  %2235 = call float @dx.op.unary.f32(i32 21, float %2232)  ; Exp(value)
  %2236 = fmul fast float %1747, %1747
  %2237 = fadd fast float %2236, 1.000000e+00
  %2238 = fmul fast float %2237, 0x3FAE8EC8A0000000
  %2239 = fmul fast float %2238, %1728
  %2240 = fmul fast float %2238, %1729
  %2241 = fmul fast float %2238, %1730
  %2242 = fmul fast float %1747, %1726
  %2243 = fsub fast float 1.000000e+00, %2242
  %2244 = fmul fast float %1726, %1726
  %2245 = fsub fast float 1.000000e+00, %2244
  %2246 = fmul fast float %2245, 0x3FB45F3060000000
  %2247 = fmul fast float %2243, %2243
  %2248 = fdiv fast float 1.000000e+00, %2247
  %2249 = fmul fast float %2246, %2248
  %2250 = fmul fast float %2249, %1723
  %2251 = fmul fast float %2249, %1724
  %2252 = fmul fast float %2249, %1725
  %2253 = fadd fast float %2250, %2239
  %2254 = fadd fast float %2251, %2240
  %2255 = fadd fast float %2252, %2241
  %2256 = fsub fast float 1.000000e+00, %2233
  %2257 = fsub fast float 1.000000e+00, %2234
  %2258 = fsub fast float 1.000000e+00, %2235
  %2259 = fmul fast float %2253, %2256
  %2260 = fmul fast float %2254, %2257
  %2261 = fmul fast float %2255, %2258
  br label %2262

; <label>:2262                                    ; preds = %2223, %2174
  %2263 = phi float [ %2200, %2174 ], [ %2259, %2223 ]
  %2264 = phi float [ %2201, %2174 ], [ %2260, %2223 ]
  %2265 = phi float [ %2202, %2174 ], [ %2261, %2223 ]
  %2266 = phi float [ %2189, %2174 ], [ %2233, %2223 ]
  %2267 = phi float [ %2189, %2174 ], [ %2234, %2223 ]
  %2268 = phi float [ %2189, %2174 ], [ %2235, %2223 ]
  br i1 %1755, label %2269, label %2467, !dx.controlflow.hints !125

; <label>:2269                                    ; preds = %2262
  %2270 = extractvalue %dx.types.CBufRet.f32 %2168, 0
  %2271 = fmul fast float %2270, %2170
  %2272 = fsub fast float %2165, %2263
  %2273 = fsub fast float %2166, %2264
  %2274 = fsub fast float %2167, %2265
  %2275 = fmul fast float %2271, %2272
  %2276 = fmul fast float %2271, %2273
  %2277 = fmul fast float %2271, %2274
  %2278 = fadd fast float %2275, %2263
  %2279 = fadd fast float %2276, %2264
  %2280 = fadd fast float %2277, %2265
  %2281 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2266)  ; FMax(a,b)
  %2282 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2267)  ; FMax(a,b)
  %2283 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2268)  ; FMax(a,b)
  %2284 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2164)  ; FMax(a,b)
  %2285 = call float @dx.op.binary.f32(i32 35, float %2163, float %2173)  ; FMax(a,b)
  %2286 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2285)  ; FMax(a,b)
  %2287 = fdiv fast float %2163, %2286
  %2288 = call float @dx.op.unary.f32(i32 7, float %2287)  ; Saturate(value)
  %2289 = fdiv fast float %2173, %2286
  %2290 = call float @dx.op.unary.f32(i32 7, float %2289)  ; Saturate(value)
  %2291 = fcmp fast une float %2284, 1.000000e+00
  br i1 %2291, label %2292, label %2305, !dx.controlflow.hints !126

; <label>:2292                                    ; preds = %2269
  %2293 = call float @dx.op.unary.f32(i32 23, float %2284)  ; Log(value)
  %2294 = fmul fast float %2293, 0x3FE62E4300000000
  %2295 = fmul fast float %2165, %2294
  %2296 = fsub fast float -0.000000e+00, %2295
  %2297 = fmul fast float %2166, %2294
  %2298 = fsub fast float -0.000000e+00, %2297
  %2299 = fmul fast float %2167, %2294
  %2300 = fsub fast float -0.000000e+00, %2299
  %2301 = fsub fast float 1.000000e+00, %2284
  %2302 = fdiv fast float %2296, %2301
  %2303 = fdiv fast float %2298, %2301
  %2304 = fdiv fast float %2300, %2301
  br label %2305

; <label>:2305                                    ; preds = %2292, %2269
  %2306 = phi float [ %2302, %2292 ], [ %2165, %2269 ]
  %2307 = phi float [ %2303, %2292 ], [ %2166, %2269 ]
  %2308 = phi float [ %2304, %2292 ], [ %2167, %2269 ]
  %2309 = phi float [ %2294, %2292 ], [ 0.000000e+00, %2269 ]
  %2310 = fcmp fast une float %2281, 1.000000e+00
  br i1 %2310, label %2311, label %2318, !dx.controlflow.hints !127

; <label>:2311                                    ; preds = %2305
  %2312 = call float @dx.op.unary.f32(i32 23, float %2281)  ; Log(value)
  %2313 = fmul fast float %2312, 0x3FE62E4300000000
  %2314 = fmul fast float %2278, %2313
  %2315 = fsub fast float -0.000000e+00, %2314
  %2316 = fsub fast float 1.000000e+00, %2281
  %2317 = fdiv fast float %2315, %2316
  br label %2318

; <label>:2318                                    ; preds = %2311, %2305
  %2319 = phi float [ %2317, %2311 ], [ %2278, %2305 ]
  %2320 = phi float [ %2313, %2311 ], [ 0.000000e+00, %2305 ]
  %2321 = fcmp fast une float %2282, 1.000000e+00
  br i1 %2321, label %2322, label %2329, !dx.controlflow.hints !127

; <label>:2322                                    ; preds = %2318
  %2323 = call float @dx.op.unary.f32(i32 23, float %2282)  ; Log(value)
  %2324 = fmul fast float %2323, 0x3FE62E4300000000
  %2325 = fmul fast float %2279, %2324
  %2326 = fsub fast float -0.000000e+00, %2325
  %2327 = fsub fast float 1.000000e+00, %2282
  %2328 = fdiv fast float %2326, %2327
  br label %2329

; <label>:2329                                    ; preds = %2322, %2318
  %2330 = phi float [ %2328, %2322 ], [ %2279, %2318 ]
  %2331 = phi float [ %2324, %2322 ], [ 0.000000e+00, %2318 ]
  %2332 = fcmp fast une float %2283, 1.000000e+00
  br i1 %2332, label %2333, label %2340, !dx.controlflow.hints !127

; <label>:2333                                    ; preds = %2329
  %2334 = call float @dx.op.unary.f32(i32 23, float %2283)  ; Log(value)
  %2335 = fmul fast float %2334, 0x3FE62E4300000000
  %2336 = fmul fast float %2280, %2335
  %2337 = fsub fast float -0.000000e+00, %2336
  %2338 = fsub fast float 1.000000e+00, %2283
  %2339 = fdiv fast float %2337, %2338
  br label %2340

; <label>:2340                                    ; preds = %2333, %2329
  %2341 = phi float [ %2339, %2333 ], [ %2280, %2329 ]
  %2342 = phi float [ %2335, %2333 ], [ 0.000000e+00, %2329 ]
  %2343 = fmul fast float %2306, %2290
  %2344 = fmul fast float %2307, %2290
  %2345 = fmul fast float %2308, %2290
  %2346 = fmul fast float %2309, %2290
  %2347 = fmul fast float %2319, %2288
  %2348 = fmul fast float %2330, %2288
  %2349 = fmul fast float %2341, %2288
  %2350 = fmul fast float %2320, %2288
  %2351 = fmul fast float %2331, %2288
  %2352 = fmul fast float %2342, %2288
  %2353 = fadd fast float %2347, %2343
  %2354 = fadd fast float %2348, %2344
  %2355 = fadd fast float %2349, %2345
  %2356 = fadd fast float %2350, %2346
  %2357 = fadd fast float %2351, %2346
  %2358 = fadd fast float %2352, %2346
  %2359 = fcmp fast une float %2356, 0.000000e+00
  br i1 %2359, label %2360, label %2367, !dx.controlflow.hints !128

; <label>:2360                                    ; preds = %2340
  %2361 = fmul fast float %2356, 0x3FF7154760000000
  %2362 = call float @dx.op.unary.f32(i32 21, float %2361)  ; Exp(value)
  %2363 = fsub fast float 1.000000e+00, %2362
  %2364 = fmul fast float %2353, %2363
  %2365 = fsub fast float -0.000000e+00, %2364
  %2366 = fdiv fast float %2365, %2356
  br label %2367

; <label>:2367                                    ; preds = %2360, %2340
  %2368 = phi float [ %2362, %2360 ], [ 1.000000e+00, %2340 ]
  %2369 = phi float [ %2366, %2360 ], [ %2353, %2340 ]
  %2370 = fcmp fast une float %2357, 0.000000e+00
  br i1 %2370, label %2371, label %2378, !dx.controlflow.hints !128

; <label>:2371                                    ; preds = %2367
  %2372 = fmul fast float %2357, 0x3FF7154760000000
  %2373 = call float @dx.op.unary.f32(i32 21, float %2372)  ; Exp(value)
  %2374 = fsub fast float 1.000000e+00, %2373
  %2375 = fmul fast float %2354, %2374
  %2376 = fsub fast float -0.000000e+00, %2375
  %2377 = fdiv fast float %2376, %2357
  br label %2378

; <label>:2378                                    ; preds = %2371, %2367
  %2379 = phi float [ %2373, %2371 ], [ 1.000000e+00, %2367 ]
  %2380 = phi float [ %2377, %2371 ], [ %2354, %2367 ]
  %2381 = fcmp fast une float %2358, 0.000000e+00
  br i1 %2381, label %2382, label %2389, !dx.controlflow.hints !128

; <label>:2382                                    ; preds = %2378
  %2383 = fmul fast float %2358, 0x3FF7154760000000
  %2384 = call float @dx.op.unary.f32(i32 21, float %2383)  ; Exp(value)
  %2385 = fsub fast float 1.000000e+00, %2384
  %2386 = fmul fast float %2355, %2385
  %2387 = fsub fast float -0.000000e+00, %2386
  %2388 = fdiv fast float %2387, %2358
  br label %2389

; <label>:2389                                    ; preds = %2382, %2378
  %2390 = phi float [ %2384, %2382 ], [ 1.000000e+00, %2378 ]
  %2391 = phi float [ %2388, %2382 ], [ %2355, %2378 ]
  %2392 = fcmp fast ogt float %2288, %2290
  br i1 %2392, label %2393, label %2413

; <label>:2393                                    ; preds = %2389
  %2394 = fsub fast float 1.000000e+00, %2290
  %2395 = fmul fast float %2306, %2394
  %2396 = fmul fast float %2307, %2394
  %2397 = fmul fast float %2308, %2394
  %2398 = fmul fast float %2309, %2394
  %2399 = fcmp fast une float %2398, 0.000000e+00
  br i1 %2399, label %2400, label %2451, !dx.controlflow.hints !129

; <label>:2400                                    ; preds = %2393
  %2401 = fmul fast float %2398, 0x3FF7154760000000
  %2402 = call float @dx.op.unary.f32(i32 21, float %2401)  ; Exp(value)
  %2403 = fsub fast float 1.000000e+00, %2402
  %2404 = fmul fast float %2395, %2403
  %2405 = fsub fast float -0.000000e+00, %2404
  %2406 = fmul fast float %2396, %2403
  %2407 = fsub fast float -0.000000e+00, %2406
  %2408 = fmul fast float %2397, %2403
  %2409 = fsub fast float -0.000000e+00, %2408
  %2410 = fdiv fast float %2405, %2398
  %2411 = fdiv fast float %2407, %2398
  %2412 = fdiv fast float %2409, %2398
  br label %2451

; <label>:2413                                    ; preds = %2389
  %2414 = fsub fast float 1.000000e+00, %2288
  %2415 = fmul fast float %2319, %2414
  %2416 = fmul fast float %2330, %2414
  %2417 = fmul fast float %2341, %2414
  %2418 = fmul fast float %2320, %2414
  %2419 = fmul fast float %2331, %2414
  %2420 = fmul fast float %2342, %2414
  %2421 = fcmp fast une float %2418, 0.000000e+00
  br i1 %2421, label %2422, label %2429, !dx.controlflow.hints !128

; <label>:2422                                    ; preds = %2413
  %2423 = fmul fast float %2418, 0x3FF7154760000000
  %2424 = call float @dx.op.unary.f32(i32 21, float %2423)  ; Exp(value)
  %2425 = fsub fast float 1.000000e+00, %2424
  %2426 = fmul fast float %2415, %2425
  %2427 = fsub fast float -0.000000e+00, %2426
  %2428 = fdiv fast float %2427, %2418
  br label %2429

; <label>:2429                                    ; preds = %2422, %2413
  %2430 = phi float [ %2428, %2422 ], [ %2415, %2413 ]
  %2431 = phi float [ %2424, %2422 ], [ 1.000000e+00, %2413 ]
  %2432 = fcmp fast une float %2419, 0.000000e+00
  br i1 %2432, label %2433, label %2440, !dx.controlflow.hints !128

; <label>:2433                                    ; preds = %2429
  %2434 = fmul fast float %2419, 0x3FF7154760000000
  %2435 = call float @dx.op.unary.f32(i32 21, float %2434)  ; Exp(value)
  %2436 = fsub fast float 1.000000e+00, %2435
  %2437 = fmul fast float %2416, %2436
  %2438 = fsub fast float -0.000000e+00, %2437
  %2439 = fdiv fast float %2438, %2419
  br label %2440

; <label>:2440                                    ; preds = %2433, %2429
  %2441 = phi float [ %2439, %2433 ], [ %2416, %2429 ]
  %2442 = phi float [ %2435, %2433 ], [ 1.000000e+00, %2429 ]
  %2443 = fcmp fast une float %2420, 0.000000e+00
  br i1 %2443, label %2444, label %2451, !dx.controlflow.hints !128

; <label>:2444                                    ; preds = %2440
  %2445 = fmul fast float %2420, 0x3FF7154760000000
  %2446 = call float @dx.op.unary.f32(i32 21, float %2445)  ; Exp(value)
  %2447 = fsub fast float 1.000000e+00, %2446
  %2448 = fmul fast float %2417, %2447
  %2449 = fsub fast float -0.000000e+00, %2448
  %2450 = fdiv fast float %2449, %2420
  br label %2451

; <label>:2451                                    ; preds = %2444, %2440, %2400, %2393
  %2452 = phi float [ %2450, %2444 ], [ %2412, %2400 ], [ %2397, %2393 ], [ %2417, %2440 ]
  %2453 = phi float [ %2441, %2444 ], [ %2411, %2400 ], [ %2396, %2393 ], [ %2441, %2440 ]
  %2454 = phi float [ %2430, %2444 ], [ %2410, %2400 ], [ %2395, %2393 ], [ %2430, %2440 ]
  %2455 = phi float [ %2446, %2444 ], [ %2402, %2400 ], [ 1.000000e+00, %2393 ], [ 1.000000e+00, %2440 ]
  %2456 = phi float [ %2442, %2444 ], [ %2402, %2400 ], [ 1.000000e+00, %2393 ], [ %2442, %2440 ]
  %2457 = phi float [ %2431, %2444 ], [ %2402, %2400 ], [ 1.000000e+00, %2393 ], [ %2431, %2440 ]
  %2458 = fmul fast float %2457, %2369
  %2459 = fmul fast float %2456, %2380
  %2460 = fmul fast float %2455, %2391
  %2461 = fadd fast float %2458, %2454
  %2462 = fadd fast float %2459, %2453
  %2463 = fadd fast float %2460, %2452
  %2464 = fmul fast float %2457, %2368
  %2465 = fmul fast float %2456, %2379
  %2466 = fmul fast float %2455, %2390
  br label %2467

; <label>:2467                                    ; preds = %2451, %2262
  %2468 = phi float [ %2466, %2451 ], [ %2268, %2262 ]
  %2469 = phi float [ %2465, %2451 ], [ %2267, %2262 ]
  %2470 = phi float [ %2464, %2451 ], [ %2266, %2262 ]
  %2471 = phi float [ %2463, %2451 ], [ %2265, %2262 ]
  %2472 = phi float [ %2462, %2451 ], [ %2264, %2262 ]
  %2473 = phi float [ %2461, %2451 ], [ %2263, %2262 ]
  %2474 = fmul fast float %2473, %1447
  %2475 = fmul fast float %2472, %1447
  %2476 = fmul fast float %2471, %1447
  %2477 = fmul fast float %2470, %1710
  %2478 = call float @dx.op.dot3.f32(i32 55, float %2470, float %2469, float %2468, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2479 = call float @dx.op.dot3.f32(i32 55, float %2474, float %2475, float %2476, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2480 = select i1 %131, float %2478, float %2470
  %2481 = select i1 %131, float %2478, float %2469
  %2482 = select i1 %131, float 1.000000e+00, float %2468
  %2483 = select i1 %131, float %2479, float %2474
  %2484 = select i1 %131, float 0.000000e+00, float %2475
  %2485 = select i1 %131, float 0.000000e+00, float %2476
  %2486 = fmul fast float %2480, %1704
  %2487 = fmul fast float %2481, %1705
  %2488 = fmul fast float %2482, %1706
  %2489 = fadd fast float %2486, %2483
  %2490 = fadd fast float %2487, %2484
  %2491 = fadd fast float %2485, %2488
  %2492 = fmul fast float %2480, %1707
  %2493 = fmul fast float %2481, %1708
  %2494 = fmul fast float %2482, %1709
  %2495 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2496 = extractvalue %dx.types.CBufRet.i32 %2495, 0
  %2497 = icmp eq i32 %2496, 0
  br i1 %2497, label %2766, label %2498, !dx.controlflow.hints !130

; <label>:2498                                    ; preds = %2467
  %2499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2500 = extractvalue %dx.types.CBufRet.f32 %2499, 2
  %2501 = extractvalue %dx.types.CBufRet.f32 %2499, 3
  %2502 = fmul fast float %2500, %61
  %2503 = fmul fast float %2501, %62
  %2504 = fmul fast float %2502, 2.000000e+00
  %2505 = fmul fast float %2503, 2.000000e+00
  %2506 = fsub fast float 1.000000e+00, %2504
  %2507 = fsub fast float 1.000000e+00, %2505
  %2508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2509 = extractvalue %dx.types.CBufRet.f32 %2508, 0
  %2510 = extractvalue %dx.types.CBufRet.f32 %2508, 1
  %2511 = extractvalue %dx.types.CBufRet.f32 %2508, 2
  %2512 = fmul fast float %2506, %2509
  %2513 = fmul fast float %2506, %2510
  %2514 = fmul fast float %2506, %2511
  %2515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2516 = extractvalue %dx.types.CBufRet.f32 %2515, 0
  %2517 = extractvalue %dx.types.CBufRet.f32 %2515, 1
  %2518 = extractvalue %dx.types.CBufRet.f32 %2515, 2
  %2519 = fmul fast float %2507, %2516
  %2520 = fmul fast float %2507, %2517
  %2521 = fmul fast float %2507, %2518
  %2522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2523 = extractvalue %dx.types.CBufRet.f32 %2522, 0
  %2524 = extractvalue %dx.types.CBufRet.f32 %2522, 1
  %2525 = extractvalue %dx.types.CBufRet.f32 %2522, 2
  %2526 = fadd fast float %2519, %2523
  %2527 = fadd fast float %2526, %2512
  %2528 = fadd fast float %2520, %2524
  %2529 = fadd fast float %2528, %2513
  %2530 = fadd fast float %2521, %2525
  %2531 = fadd fast float %2530, %2514
  %2532 = fmul fast float %2527, %1703
  %2533 = fmul fast float %2529, %1703
  %2534 = fmul fast float %2531, %1703
  %2535 = fmul fast float %2532, %2532
  %2536 = fmul fast float %2533, %2533
  %2537 = fadd fast float %2535, %2536
  %2538 = fmul fast float %2534, %2534
  %2539 = fadd fast float %2537, %2538
  %2540 = call float @dx.op.unary.f32(i32 24, float %2539)  ; Sqrt(value)
  %2541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2542 = extractvalue %dx.types.CBufRet.f32 %2541, 0
  %2543 = fsub fast float %2540, %2542
  %2544 = extractvalue %dx.types.CBufRet.f32 %2541, 2
  %2545 = fmul fast float %2543, %2544
  %2546 = call float @dx.op.unary.f32(i32 7, float %2545)  ; Saturate(value)
  %2547 = fadd fast float %2546, -5.000000e-01
  %2548 = fmul fast float %2547, 2.000000e+00
  %2549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2550 = extractvalue %dx.types.CBufRet.f32 %2549, 2
  %2551 = call float @dx.op.binary.f32(i32 36, float %2550, float %2548)  ; FMin(a,b)
  %2552 = fsub fast float -0.000000e+00, %2550
  %2553 = fcmp fast ogt float %2551, %2552
  br i1 %2553, label %2554, label %2766, !dx.controlflow.hints !131

; <label>:2554                                    ; preds = %2498
  %2555 = fmul fast float %2551, 5.000000e-01
  %2556 = fadd fast float %2555, 5.000000e-01
  %2557 = call float @dx.op.unary.f32(i32 22, float %2556)  ; Frc(value)
  %2558 = call float @dx.op.unary.f32(i32 27, float %2557)  ; Round_ni(value)
  %2559 = call float @dx.op.unary.f32(i32 22, float %2557)  ; Frc(value)
  %2560 = fmul fast float %2559, 2.000000e+00
  %2561 = fadd fast float %2560, -1.000000e+00
  %2562 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %26, float %2502, float %2503, float %2558, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2563 = extractvalue %dx.types.ResRet.f32 %2562, 0
  %2564 = extractvalue %dx.types.ResRet.f32 %2562, 1
  %2565 = extractvalue %dx.types.ResRet.f32 %2562, 2
  %2566 = extractvalue %dx.types.ResRet.f32 %2562, 3
  %2567 = fadd fast float %2563, -5.000000e-01
  %2568 = fadd fast float %2565, -5.000000e-01
  %2569 = fmul fast float %2567, 0xBFD5555560000000
  %2570 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2568, float %2569)  ; FMad(a,b,c)
  %2571 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2564, float 0.000000e+00)  ; FMad(a,b,c)
  %2572 = fadd fast float %2571, %2566
  %2573 = fmul fast float %2567, -7.500000e-01
  %2574 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2568, float %2573)  ; FMad(a,b,c)
  %2575 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2564, float 0.000000e+00)  ; FMad(a,b,c)
  %2576 = fadd fast float %2575, %2566
  %2577 = call float @dx.op.binary.f32(i32 35, float %2570, float -1.000000e+00)  ; FMax(a,b)
  %2578 = call float @dx.op.binary.f32(i32 35, float %2572, float -1.000000e+00)  ; FMax(a,b)
  %2579 = call float @dx.op.binary.f32(i32 35, float %2574, float -1.000000e+00)  ; FMax(a,b)
  %2580 = call float @dx.op.binary.f32(i32 35, float %2576, float -1.000000e+00)  ; FMax(a,b)
  %2581 = call float @dx.op.binary.f32(i32 36, float %2577, float 1.000000e+00)  ; FMin(a,b)
  %2582 = call float @dx.op.binary.f32(i32 36, float %2578, float 1.000000e+00)  ; FMin(a,b)
  %2583 = call float @dx.op.binary.f32(i32 36, float %2579, float 1.000000e+00)  ; FMin(a,b)
  %2584 = call float @dx.op.binary.f32(i32 36, float %2580, float 1.000000e+00)  ; FMin(a,b)
  %2585 = fcmp fast olt float %2581, 0x3FEFFF8020000000
  br i1 %2585, label %2586, label %2701, !dx.controlflow.hints !132

; <label>:2586                                    ; preds = %2554
  %2587 = extractvalue %dx.types.CBufRet.f32 %2549, 3
  %2588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %2589 = extractvalue %dx.types.CBufRet.f32 %2588, 0
  %2590 = extractvalue %dx.types.CBufRet.f32 %2588, 1
  %2591 = extractvalue %dx.types.CBufRet.f32 %2588, 2
  %2592 = extractvalue %dx.types.CBufRet.f32 %2588, 3
  %2593 = fsub fast float %2589, %2581
  %2594 = fsub fast float %2590, %2582
  %2595 = fsub fast float %2591, %2583
  %2596 = fsub fast float %2592, %2584
  %2597 = fmul fast float %2593, %2587
  %2598 = fmul fast float %2594, %2587
  %2599 = fmul fast float %2595, %2587
  %2600 = fmul fast float %2596, %2587
  %2601 = fadd fast float %2597, %2581
  %2602 = fadd fast float %2598, %2582
  %2603 = fsub fast float -0.000000e+00, %2602
  %2604 = fadd fast float %2599, %2583
  %2605 = fadd fast float %2600, %2584
  %2606 = fmul fast float %2601, %2601
  %2607 = fsub fast float %2602, %2606
  %2608 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2607)  ; FMax(a,b)
  %2609 = fdiv fast float 1.000000e+00, %2608
  %2610 = fmul fast float %2602, %2601
  %2611 = fsub fast float %2604, %2610
  %2612 = fsub fast float %2561, %2601
  %2613 = fmul fast float %2561, %2561
  %2614 = fsub fast float %2613, %2602
  %2615 = fmul fast float %2612, %2609
  %2616 = fmul fast float %2615, %2611
  %2617 = fsub fast float %2614, %2616
  %2618 = fmul fast float %2602, %2602
  %2619 = fsub fast float %2605, %2618
  %2620 = fmul fast float %2611, %2611
  %2621 = fmul fast float %2620, %2609
  %2622 = fsub fast float %2619, %2621
  %2623 = fdiv fast float %2617, %2622
  %2624 = fmul fast float %2611, %2623
  %2625 = fsub fast float %2612, %2624
  %2626 = fmul fast float %2625, %2609
  %2627 = fmul fast float %2626, %2601
  %2628 = fsub fast float 1.000000e+00, %2627
  %2629 = fmul fast float %2602, %2623
  %2630 = fsub fast float %2628, %2629
  %2631 = fmul fast float %2626, %2626
  %2632 = fmul fast float %2623, 4.000000e+00
  %2633 = fmul fast float %2632, %2630
  %2634 = fsub fast float %2631, %2633
  %2635 = call float @dx.op.unary.f32(i32 24, float %2634)  ; Sqrt(value)
  %2636 = fcmp fast oge float %2626, 0.000000e+00
  %2637 = fsub fast float -0.000000e+00, %2635
  %2638 = select i1 %2636, float %2637, float %2635
  %2639 = fsub fast float %2638, %2626
  %2640 = fdiv fast float %2639, %2623
  %2641 = fdiv fast float %2630, %2639
  %2642 = fmul fast float %2640, 5.000000e-01
  %2643 = fmul fast float %2641, 2.000000e+00
  %2644 = select i1 %2636, float %2642, float %2643
  %2645 = select i1 %2636, float %2643, float %2642
  %2646 = call float @dx.op.binary.f32(i32 35, float %2644, float %2645)  ; FMax(a,b)
  %2647 = call float @dx.op.binary.f32(i32 36, float %2644, float %2645)  ; FMin(a,b)
  %2648 = fcmp fast ogt float %2561, %2647
  br i1 %2648, label %2649, label %2659

; <label>:2649                                    ; preds = %2586
  %2650 = fsub fast float %2561, %2647
  %2651 = fsub fast float %2646, %2647
  %2652 = fmul fast float %2650, %2651
  %2653 = fmul fast float %2646, %2561
  %2654 = fadd fast float %2646, %2561
  %2655 = fmul fast float %2654, %2601
  %2656 = fadd fast float %2653, %2602
  %2657 = fsub fast float %2656, %2655
  %2658 = fdiv fast float %2657, %2652
  br label %2659

; <label>:2659                                    ; preds = %2649, %2586
  %2660 = phi float [ %2658, %2649 ], [ 0.000000e+00, %2586 ]
  %2661 = fcmp fast ogt float %2561, %2646
  %2662 = fsub fast float %2561, %2646
  br i1 %2661, label %2663, label %2673

; <label>:2663                                    ; preds = %2659
  %2664 = fsub fast float %2646, %2647
  %2665 = fmul fast float %2664, %2662
  %2666 = fmul fast float %2647, %2561
  %2667 = fadd fast float %2647, %2561
  %2668 = fmul fast float %2667, %2601
  %2669 = fsub fast float %2603, %2666
  %2670 = fadd fast float %2669, %2668
  %2671 = fdiv fast float %2670, %2665
  %2672 = fadd fast float %2671, %2660
  br label %2673

; <label>:2673                                    ; preds = %2663, %2659
  %2674 = phi float [ %2672, %2663 ], [ %2660, %2659 ]
  %2675 = fsub fast float %2561, %2647
  %2676 = fmul fast float %2675, %2662
  %2677 = fmul fast float %2647, %2646
  %2678 = fadd fast float %2647, %2646
  %2679 = fmul fast float %2678, %2601
  %2680 = fadd fast float %2677, %2602
  %2681 = fsub fast float %2680, %2679
  %2682 = fdiv fast float %2681, %2676
  %2683 = call float @dx.op.unary.f32(i32 7, float %2674)  ; Saturate(value)
  %2684 = fcmp fast oeq float %1556, 0.000000e+00
  %2685 = extractvalue %dx.types.CBufRet.f32 %2549, 0
  %2686 = fcmp fast oeq float %2685, 0.000000e+00
  %2687 = or i1 %2684, %2686
  %2688 = fmul fast float %2685, 2.000000e+00
  %2689 = fadd fast float %2550, %2551
  %2690 = fdiv fast float %2689, %2688
  %2691 = call float @dx.op.unary.f32(i32 7, float %2690)  ; Saturate(value)
  %2692 = fmul fast float %2691, 2.000000e+00
  %2693 = fsub fast float 3.000000e+00, %2692
  %2694 = fmul fast float %2691, %2691
  %2695 = fmul fast float %2694, %2693
  %2696 = select i1 %2687, float 1.000000e+00, float %2695
  %2697 = fmul fast float %2682, %1556
  %2698 = fadd fast float %2683, %2697
  %2699 = call float @dx.op.unary.f32(i32 7, float %2698)  ; Saturate(value)
  %2700 = fmul fast float %2696, %2699
  br label %2701

; <label>:2701                                    ; preds = %2673, %2554
  %2702 = phi float [ %2700, %2673 ], [ 0.000000e+00, %2554 ]
  %2703 = fsub fast float 1.000000e+00, %2702
  %2704 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %26, float %2502, float %2503, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2705 = extractvalue %dx.types.ResRet.f32 %2704, 0
  %2706 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2707 = extractvalue %dx.types.CBufRet.i32 %2706, 2
  %2708 = icmp eq i32 %2707, 0
  br i1 %2708, label %2714, label %2709

; <label>:2709                                    ; preds = %2701
  %2710 = call float @dx.op.unary.f32(i32 7, float %2702)  ; Saturate(value)
  %2711 = fadd fast float %2705, -1.000000e+00
  %2712 = fmul fast float %2710, %2711
  %2713 = fadd fast float %2712, 1.000000e+00
  br label %2714

; <label>:2714                                    ; preds = %2709, %2701
  %2715 = phi float [ %2713, %2709 ], [ %2703, %2701 ]
  %2716 = call float @dx.op.binary.f32(i32 35, float %2705, float %2715)  ; FMax(a,b)
  %2717 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %2718 = extractvalue %dx.types.CBufRet.i32 %2717, 2
  %2719 = and i32 %2718, 1
  %2720 = icmp eq i32 %2719, 0
  %2721 = fcmp fast une float %2716, 1.000000e+00
  %2722 = and i1 %2721, %2720
  br i1 %2722, label %2723, label %2742

; <label>:2723                                    ; preds = %2714
  %2724 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %26, float %2502, float %2503, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2725 = extractvalue %dx.types.ResRet.f32 %2724, 0
  %2726 = extractvalue %dx.types.ResRet.f32 %2724, 1
  %2727 = extractvalue %dx.types.ResRet.f32 %2724, 2
  %2728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2729 = extractvalue %dx.types.CBufRet.f32 %2728, 1
  %2730 = fmul fast float %2729, %2725
  %2731 = fmul fast float %2729, %2726
  %2732 = fmul fast float %2729, %2727
  %2733 = fcmp fast ogt float %2705, 0x3FEFFF2E40000000
  %2734 = fsub fast float 1.000000e+00, %2716
  %2735 = fsub fast float 1.000000e+00, %2705
  %2736 = fdiv fast float %2734, %2735
  %2737 = call float @dx.op.unary.f32(i32 7, float %2736)  ; Saturate(value)
  %2738 = select i1 %2733, float 0.000000e+00, float %2737
  %2739 = fmul fast float %2730, %2738
  %2740 = fmul fast float %2731, %2738
  %2741 = fmul fast float %2732, %2738
  br label %2742

; <label>:2742                                    ; preds = %2723, %2714
  %2743 = phi float [ 0.000000e+00, %2714 ], [ %2739, %2723 ]
  %2744 = phi float [ 0.000000e+00, %2714 ], [ %2740, %2723 ]
  %2745 = phi float [ 0.000000e+00, %2714 ], [ %2741, %2723 ]
  %2746 = fmul fast float %2743, %1447
  %2747 = fmul fast float %2744, %1447
  %2748 = fmul fast float %2745, %1447
  %2749 = fmul fast float %2716, %2477
  %2750 = call float @dx.op.dot3.f32(i32 55, float %2716, float %2716, float %2716, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2751 = call float @dx.op.dot3.f32(i32 55, float %2746, float %2747, float %2748, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2752 = select i1 %131, float %2750, float %2716
  %2753 = select i1 %131, float 1.000000e+00, float %2716
  %2754 = select i1 %131, float %2751, float %2746
  %2755 = select i1 %131, float 0.000000e+00, float %2747
  %2756 = select i1 %131, float 0.000000e+00, float %2748
  %2757 = fmul fast float %2752, %2489
  %2758 = fmul fast float %2752, %2490
  %2759 = fmul fast float %2753, %2491
  %2760 = fadd fast float %2757, %2754
  %2761 = fadd fast float %2758, %2755
  %2762 = fadd fast float %2756, %2759
  %2763 = fmul fast float %2752, %2492
  %2764 = fmul fast float %2752, %2493
  %2765 = fmul fast float %2753, %2494
  br label %2766

; <label>:2766                                    ; preds = %2742, %2498, %2467, %1699
  %2767 = phi float [ %1704, %1699 ], [ %2489, %2467 ], [ %2760, %2742 ], [ %2489, %2498 ]
  %2768 = phi float [ %1705, %1699 ], [ %2490, %2467 ], [ %2761, %2742 ], [ %2490, %2498 ]
  %2769 = phi float [ %1706, %1699 ], [ %2491, %2467 ], [ %2762, %2742 ], [ %2491, %2498 ]
  %2770 = phi float [ %1707, %1699 ], [ %2492, %2467 ], [ %2763, %2742 ], [ %2492, %2498 ]
  %2771 = phi float [ %1708, %1699 ], [ %2493, %2467 ], [ %2764, %2742 ], [ %2493, %2498 ]
  %2772 = phi float [ %1709, %1699 ], [ %2494, %2467 ], [ %2765, %2742 ], [ %2494, %2498 ]
  %2773 = phi float [ %1710, %1699 ], [ %2477, %2467 ], [ %2749, %2742 ], [ %2477, %2498 ]
  %2774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2775 = extractvalue %dx.types.CBufRet.f32 %2774, 2
  %2776 = extractvalue %dx.types.CBufRet.f32 %2774, 3
  %2777 = fmul fast float %2775, %61
  %2778 = fmul fast float %2776, %62
  %2779 = call float @dx.op.unary.f32(i32 7, float %2777)  ; Saturate(value)
  %2780 = call float @dx.op.unary.f32(i32 7, float %2778)  ; Saturate(value)
  %2781 = select i1 %856, i32 2, i32 0
  %2782 = or i32 %2781, 1
  %2783 = uitofp i32 %2782 to float
  %2784 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %2779, float %2780, float %2783, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2785 = extractvalue %dx.types.ResRet.f32 %2784, 0
  %2786 = extractvalue %dx.types.ResRet.f32 %2784, 1
  %2787 = extractvalue %dx.types.ResRet.f32 %2784, 2
  %2788 = extractvalue %dx.types.ResRet.f32 %2784, 3
  %2789 = add nuw nsw i32 %2781, 2
  %2790 = uitofp i32 %2789 to float
  %2791 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %2779, float %2780, float %2790, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2792 = extractvalue %dx.types.ResRet.f32 %2791, 0
  %2793 = extractvalue %dx.types.ResRet.f32 %2791, 1
  %2794 = extractvalue %dx.types.ResRet.f32 %2791, 2
  %2795 = extractvalue %dx.types.ResRet.f32 %2791, 3
  %2796 = call float @dx.op.binary.f32(i32 35, float %2786, float %2787)  ; FMax(a,b)
  %2797 = call float @dx.op.binary.f32(i32 35, float %2785, float %2796)  ; FMax(a,b)
  %2798 = call float @dx.op.binary.f32(i32 35, float %2797, float %2788)  ; FMax(a,b)
  %2799 = call float @dx.op.binary.f32(i32 36, float %2793, float %2794)  ; FMin(a,b)
  %2800 = call float @dx.op.binary.f32(i32 36, float %2792, float %2799)  ; FMin(a,b)
  %2801 = call float @dx.op.binary.f32(i32 36, float %2800, float %2795)  ; FMin(a,b)
  %2802 = fmul fast float %2798, 2.550000e+02
  %2803 = fadd fast float %2802, 0x3F70101020000000
  %2804 = fptoui float %2803 to i32
  %2805 = fmul fast float %2801, 2.550000e+02
  %2806 = fadd fast float %2805, 0x3F70101020000000
  %2807 = fptoui float %2806 to i32
  %2808 = icmp ult i32 %2804, %2807
  br i1 %2808, label %2809, label %2855

; <label>:2809                                    ; preds = %2766
  %2810 = fcmp fast ogt float %53, 9.843750e-01
  %2811 = fadd fast float %1703, -4.000000e+00
  %2812 = select i1 %2810, float -4.000000e+00, float %2811
  %2813 = call float @dx.op.binary.f32(i32 35, float %2812, float 0.000000e+00)  ; FMax(a,b)
  %2814 = fadd fast float %1021, %2813
  %2815 = fmul fast float %2814, %1022
  %2816 = call float @dx.op.unary.f32(i32 23, float %2815)  ; Log(value)
  %2817 = fmul fast float %1023, %2816
  %2818 = fmul fast float %2817, %1031
  %2819 = call float @dx.op.unary.f32(i32 7, float %2818)  ; Saturate(value)
  %2820 = uitofp i32 %2804 to float
  %2821 = uitofp i32 %2807 to float
  %2822 = fadd fast float %2820, 5.000000e-01
  %2823 = fadd fast float %2821, 5.000000e-01
  %2824 = fmul fast float %1031, %2822
  %2825 = fmul fast float %1031, %2823
  %2826 = fadd fast float %2824, 0x3F0FFB4800000000
  %2827 = fadd fast float %2825, 0xBF0FFB4800000000
  %2828 = call float @dx.op.binary.f32(i32 35, float %2819, float %2826)  ; FMax(a,b)
  %2829 = call float @dx.op.binary.f32(i32 36, float %2828, float %2827)  ; FMin(a,b)
  %2830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %2831 = extractvalue %dx.types.CBufRet.f32 %2830, 1
  %2832 = extractvalue %dx.types.CBufRet.f32 %2830, 2
  %2833 = extractvalue %dx.types.CBufRet.f32 %2830, 0
  %2834 = select i1 %856, float %2833, float 0.000000e+00
  %2835 = fmul fast float %2831, %2829
  %2836 = fadd fast float %2834, %2835
  %2837 = fadd fast float %2834, %2832
  %2838 = fsub fast float %2831, %2832
  %2839 = fadd fast float %2838, %2834
  %2840 = call float @dx.op.binary.f32(i32 35, float %2836, float %2837)  ; FMax(a,b)
  %2841 = call float @dx.op.binary.f32(i32 36, float %2840, float %2839)  ; FMin(a,b)
  %2842 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %2779, float %2780, float %2841, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2843 = extractvalue %dx.types.ResRet.f32 %2842, 0
  %2844 = extractvalue %dx.types.ResRet.f32 %2842, 1
  %2845 = extractvalue %dx.types.ResRet.f32 %2842, 2
  %2846 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %2779, float %2780, float %2841, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2847 = extractvalue %dx.types.ResRet.f32 %2846, 0
  %2848 = extractvalue %dx.types.ResRet.f32 %2846, 1
  %2849 = extractvalue %dx.types.ResRet.f32 %2846, 2
  %2850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2851 = extractvalue %dx.types.CBufRet.f32 %2850, 1
  %2852 = fmul fast float %2851, %2847
  %2853 = fmul fast float %2851, %2848
  %2854 = fmul fast float %2851, %2849
  br label %2855

; <label>:2855                                    ; preds = %2809, %2766
  %2856 = phi float [ %2843, %2809 ], [ 1.000000e+00, %2766 ]
  %2857 = phi float [ %2844, %2809 ], [ 1.000000e+00, %2766 ]
  %2858 = phi float [ %2845, %2809 ], [ 1.000000e+00, %2766 ]
  %2859 = phi float [ %2852, %2809 ], [ 0.000000e+00, %2766 ]
  %2860 = phi float [ %2853, %2809 ], [ 0.000000e+00, %2766 ]
  %2861 = phi float [ %2854, %2809 ], [ 0.000000e+00, %2766 ]
  %2862 = fmul fast float %2859, %1447
  %2863 = fmul fast float %2860, %1447
  %2864 = fmul fast float %2861, %1447
  %2865 = fmul fast float %2856, %2773
  %2866 = call float @dx.op.dot3.f32(i32 55, float %2856, float %2857, float %2858, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2867 = call float @dx.op.dot3.f32(i32 55, float %2862, float %2863, float %2864, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2868 = select i1 %131, float %2866, float %2856
  %2869 = select i1 %131, float %2866, float %2857
  %2870 = select i1 %131, float 1.000000e+00, float %2858
  %2871 = select i1 %131, float %2867, float %2862
  %2872 = select i1 %131, float 0.000000e+00, float %2863
  %2873 = select i1 %131, float 0.000000e+00, float %2864
  %2874 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2875 = extractvalue %dx.types.CBufRet.i32 %2874, 3
  %2876 = and i32 %2875, 3
  %2877 = icmp ne i32 %2876, 0
  %2878 = and i32 %2875, 4
  %2879 = icmp ne i32 %2878, 0
  %2880 = and i1 %2877, %2879
  %2881 = and i1 %131, %2880
  br i1 %2881, label %2882, label %2888

; <label>:2882                                    ; preds = %2855
  %2883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2884 = extractvalue %dx.types.CBufRet.f32 %2883, 1
  %2885 = fadd fast float %2865, -1.000000e+00
  %2886 = fmul fast float %2884, %2885
  %2887 = fadd fast float %2886, 1.000000e+00
  br label %2888

; <label>:2888                                    ; preds = %2882, %2855
  %2889 = phi float [ %2887, %2882 ], [ %2865, %2855 ]
  %2890 = fadd fast float %2770, %2767
  %2891 = fmul fast float %2868, %2890
  %2892 = fadd fast float %2891, %2871
  %2893 = fadd fast float %2771, %2768
  %2894 = fmul fast float %2869, %2893
  %2895 = fadd fast float %2894, %2872
  %2896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2897 = extractvalue %dx.types.CBufRet.f32 %2896, 0
  br i1 %131, label %2898, label %2920

; <label>:2898                                    ; preds = %2888
  %2899 = fadd fast float %2892, %2895
  %2900 = fmul fast float %2897, %2899
  %2901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %2902 = extractvalue %dx.types.CBufRet.f32 %2901, 3
  %2903 = extractvalue %dx.types.CBufRet.f32 %1452, 1
  %2904 = fsub fast float %1455, %2903
  %2905 = extractvalue %dx.types.CBufRet.f32 %1452, 2
  %2906 = fmul fast float %2904, %2905
  %2907 = call float @dx.op.unary.f32(i32 7, float %2906)  ; Saturate(value)
  %2908 = fsub fast float %2907, %2902
  %2909 = fmul fast float %2908, %2889
  %2910 = fadd fast float %2909, %2902
  %2911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2912 = extractvalue %dx.types.CBufRet.f32 %2911, 0
  %2913 = fsub fast float %2910, %2912
  %2914 = fmul fast float %2913, 1.000000e+01
  %2915 = call float @dx.op.unary.f32(i32 7, float %2914)  ; Saturate(value)
  %2916 = fsub fast float %832, %1447
  %2917 = fmul fast float %2915, %2916
  %2918 = fadd fast float %2917, %1447
  %2919 = fmul fast float %2918, %2910
  br label %2932

; <label>:2920                                    ; preds = %2888
  %2921 = fadd fast float %2772, %2769
  %2922 = fmul fast float %2870, %2921
  %2923 = fadd fast float %2922, %2873
  %2924 = fmul fast float %2897, %2892
  %2925 = fmul fast float %2897, %2895
  %2926 = fmul fast float %2897, %2923
  %2927 = call float @dx.op.binary.f32(i32 35, float %2925, float %2926)  ; FMax(a,b)
  %2928 = call float @dx.op.binary.f32(i32 35, float %2924, float %2927)  ; FMax(a,b)
  %2929 = call float @dx.op.binary.f32(i32 35, float %2928, float %1447)  ; FMax(a,b)
  %2930 = fcmp fast ugt float %2929, 0x3F10000000000000
  br i1 %2930, label %2932, label %2931

; <label>:2931                                    ; preds = %2920
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %2932

; <label>:2932                                    ; preds = %2931, %2920, %2898
  %2933 = phi float [ %2900, %2898 ], [ %2924, %2931 ], [ %2924, %2920 ]
  %2934 = phi float [ %2919, %2898 ], [ %2925, %2931 ], [ %2925, %2920 ]
  %2935 = phi float [ %2918, %2898 ], [ %2926, %2931 ], [ %2926, %2920 ]
  %2936 = phi float [ %2918, %2898 ], [ %1447, %2931 ], [ %1447, %2920 ]
  %2937 = fadd fast float %539, 0x3FE3C6EF40000000
  %2938 = call float @dx.op.unary.f32(i32 22, float %2937)  ; Frc(value)
  %2939 = call float @dx.op.unary.f32(i32 23, float %2933)  ; Log(value)
  %2940 = fadd fast float %2939, -7.000000e+00
  %2941 = call float @dx.op.unary.f32(i32 21, float %2940)  ; Exp(value)
  %2942 = fmul fast float %2938, 2.000000e+00
  %2943 = fadd fast float %2942, -1.000000e+00
  %2944 = fmul fast float %2941, %2943
  %2945 = fcmp fast ogt float %2933, 0.000000e+00
  %2946 = select i1 %2945, float %2944, float 0.000000e+00
  %2947 = fadd fast float %2946, %2933
  %2948 = fadd fast float %539, 0x3FF3C6EF40000000
  %2949 = call float @dx.op.unary.f32(i32 22, float %2948)  ; Frc(value)
  %2950 = call float @dx.op.unary.f32(i32 23, float %2934)  ; Log(value)
  %2951 = fadd fast float %2950, -7.000000e+00
  %2952 = call float @dx.op.unary.f32(i32 21, float %2951)  ; Exp(value)
  %2953 = fmul fast float %2949, 2.000000e+00
  %2954 = fadd fast float %2953, -1.000000e+00
  %2955 = fmul fast float %2952, %2954
  %2956 = fcmp fast ogt float %2934, 0.000000e+00
  %2957 = select i1 %2956, float %2955, float 0.000000e+00
  %2958 = fadd fast float %2957, %2934
  %2959 = fadd fast float %539, 0x3FFDAA66E0000000
  %2960 = call float @dx.op.unary.f32(i32 22, float %2959)  ; Frc(value)
  %2961 = call float @dx.op.unary.f32(i32 23, float %2935)  ; Log(value)
  %2962 = fadd fast float %2961, -6.000000e+00
  %2963 = call float @dx.op.unary.f32(i32 21, float %2962)  ; Exp(value)
  %2964 = fmul fast float %2960, 2.000000e+00
  %2965 = fadd fast float %2964, -1.000000e+00
  %2966 = fmul fast float %2963, %2965
  %2967 = fcmp fast ogt float %2935, 0.000000e+00
  %2968 = select i1 %2967, float %2966, float 0.000000e+00
  %2969 = fadd fast float %2968, %2935
  %2970 = select i1 %131, float %2934, float %2958
  %2971 = select i1 %131, float %2935, float %2969
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %2972 = call float @dx.op.binary.f32(i32 36, float %2947, float 3.225500e+04)  ; FMin(a,b)
  %2973 = call float @dx.op.binary.f32(i32 36, float %2970, float 3.225500e+04)  ; FMin(a,b)
  %2974 = call float @dx.op.binary.f32(i32 36, float %2971, float 3.225500e+04)  ; FMin(a,b)
  %2975 = call float @dx.op.binary.f32(i32 36, float %2936, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %2972)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %2973)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %2974)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %2975)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %2936)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %2936)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %2936)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %2936)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

