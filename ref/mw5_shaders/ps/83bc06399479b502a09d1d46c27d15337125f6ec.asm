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
; COLOR                    3   xyz         8     NONE    uint   xyz 
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
; shader hash: c1e773392a5963a14c8084f6b3112d1f
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
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 28, 29, 30, 31, 32, 33, 34 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 28, 29, 30, 31, 32, 33, 34 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 28, 29, 30, 31, 32, 33, 34 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 28, 29, 30, 31, 32, 33, 34 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 28, 29, 30, 31, 32, 33, 34 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 28, 29, 30, 31, 32, 33, 34 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 28, 29, 30, 31, 32, 33, 34 }
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
  %31 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = alloca [3 x float], align 4
  %57 = alloca [3 x float], align 4
  %58 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %59 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %60 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.f32 %60, 0
  %62 = fmul fast float %61, %52
  %63 = fmul fast float %61, %53
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 2
  %66 = extractvalue %dx.types.CBufRet.f32 %64, 3
  %67 = fmul fast float %62, 2.000000e+00
  %68 = fmul fast float %67, %65
  %69 = fmul fast float %63, 2.000000e+00
  %70 = fmul fast float %69, %66
  %71 = fsub fast float 1.000000e+00, %68
  %72 = fsub fast float 1.000000e+00, %70
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.f32 %73, 0
  %75 = extractvalue %dx.types.CBufRet.f32 %73, 1
  %76 = extractvalue %dx.types.CBufRet.f32 %73, 2
  %77 = fmul fast float %71, %74
  %78 = fmul fast float %71, %75
  %79 = fmul fast float %71, %76
  %80 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.f32 %80, 0
  %82 = extractvalue %dx.types.CBufRet.f32 %80, 1
  %83 = extractvalue %dx.types.CBufRet.f32 %80, 2
  %84 = fmul fast float %72, %81
  %85 = fmul fast float %72, %82
  %86 = fmul fast float %72, %83
  %87 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %88 = extractvalue %dx.types.CBufRet.f32 %87, 0
  %89 = extractvalue %dx.types.CBufRet.f32 %87, 1
  %90 = extractvalue %dx.types.CBufRet.f32 %87, 2
  %91 = fadd fast float %84, %88
  %92 = fadd fast float %91, %77
  %93 = fadd fast float %85, %89
  %94 = fadd fast float %93, %78
  %95 = fadd fast float %86, %90
  %96 = fadd fast float %95, %79
  %97 = fmul fast float %92, %55
  %98 = fmul fast float %94, %55
  %99 = fmul fast float %96, %55
  %100 = fmul fast float %44, %41
  %101 = fmul fast float %45, %40
  %102 = fsub fast float %100, %101
  %103 = fmul fast float %45, %39
  %104 = fmul fast float %43, %41
  %105 = fsub fast float %103, %104
  %106 = fmul fast float %43, %40
  %107 = fmul fast float %44, %39
  %108 = fsub fast float %106, %107
  %109 = fmul fast float %102, %42
  %110 = fmul fast float %105, %42
  %111 = fmul fast float %108, %42
  %112 = bitcast i32 %31 to float
  %113 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.i32 %113, 3
  %115 = and i32 %114, 3
  %116 = icmp ne i32 %115, 0
  %117 = and i32 %114, 4
  %118 = icmp ne i32 %117, 0
  %119 = and i1 %116, %118
  br i1 %119, label %120, label %129

; <label>:120                                     ; preds = %0
  %121 = fmul fast float %66, %63
  %122 = fmul fast float %65, %62
  %123 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %26, float %122, float %121, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %124 = extractvalue %dx.types.ResRet.f32 %123, 0
  %125 = fsub fast float 1.000000e+00, %124
  %126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %127 = extractvalue %dx.types.CBufRet.f32 %126, 0
  %128 = fcmp fast olt float %125, %127
  br label %132

; <label>:129                                     ; preds = %0
  %130 = icmp eq i32 %117, 0
  %131 = and i1 %116, %130
  br label %132

; <label>:132                                     ; preds = %129, %120
  %133 = phi i1 [ %128, %120 ], [ %131, %129 ]
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 3
  %137 = fmul fast float %135, %62
  %138 = fmul fast float %136, %63
  %139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %140 = extractvalue %dx.types.ResRet.i32 %139, 0
  %141 = and i32 %140, 114688
  %142 = icmp ne i32 %141, 0
  %143 = select i1 %142, float %137, float 0.000000e+00
  %144 = select i1 %142, float %138, float 0.000000e+00
  %145 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %27, float %143, float %144, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %146 = extractvalue %dx.types.ResRet.f32 %145, 0
  %147 = fmul fast float %146, 2.550000e+02
  %148 = fptoui float %147 to i32
  %149 = select i1 %142, i32 %148, i32 0
  %150 = mul i32 %30, 208
  %151 = add i32 %150, 188
  %152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %151, i32 undef)  ; BufferLoad(srv,index,wot)
  %153 = extractvalue %dx.types.ResRet.i32 %152, 0
  %154 = and i32 %114, 114688
  %155 = and i32 %114, 8
  %156 = icmp ne i32 %155, 0
  %157 = or i1 %133, %156
  %158 = select i1 %157, i32 %154, i32 16384
  %159 = and i32 %158, %153
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %162

; <label>:161                                     ; preds = %132
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %162

; <label>:162                                     ; preds = %161, %132
  %163 = and i32 %153, 512
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %189, label %165

; <label>:165                                     ; preds = %162
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 2
  %168 = extractvalue %dx.types.CBufRet.f32 %166, 3
  %169 = fmul fast float %167, %62
  %170 = fmul fast float %168, %63
  %171 = extractvalue %dx.types.CBufRet.f32 %166, 0
  %172 = extractvalue %dx.types.CBufRet.f32 %166, 1
  %173 = fdiv fast float %171, %172
  %174 = fcmp fast ogt float %173, 0x3FFC71C720000000
  br i1 %174, label %175, label %181

; <label>:175                                     ; preds = %165
  %176 = fdiv fast float 0x3FFC71C720000000, %173
  %177 = fmul fast float %176, %170
  %178 = fsub fast float 1.000000e+00, %176
  %179 = fmul fast float %178, 5.000000e-01
  %180 = fadd fast float %179, %177
  br label %189

; <label>:181                                     ; preds = %165
  %182 = fcmp fast olt float %173, 0x3FFC71C720000000
  br i1 %182, label %183, label %189

; <label>:183                                     ; preds = %181
  %184 = fmul fast float %169, 5.625000e-01
  %185 = fmul fast float %184, %173
  %186 = fmul fast float %173, 2.812500e-01
  %187 = fsub fast float 5.000000e-01, %186
  %188 = fadd fast float %187, %185
  br label %189

; <label>:189                                     ; preds = %183, %181, %175, %162
  %190 = phi float [ %46, %162 ], [ %169, %175 ], [ %188, %183 ], [ %169, %181 ]
  %191 = phi float [ %47, %162 ], [ %180, %175 ], [ %170, %183 ], [ %170, %181 ]
  %192 = add i32 %32, 72
  %193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %192, i32 undef)  ; BufferLoad(srv,index,wot)
  %194 = extractvalue %dx.types.ResRet.i32 %193, 0
  %195 = extractvalue %dx.types.ResRet.i32 %193, 1
  %196 = bitcast i32 %194 to float
  %197 = bitcast i32 %195 to float
  %198 = fmul fast float %196, %46
  %199 = fmul fast float %197, %47
  %200 = call float @dx.op.unary.f32(i32 22, float %198)  ; Frc(value)
  %201 = call float @dx.op.unary.f32(i32 22, float %199)  ; Frc(value)
  %202 = and i32 %153, 16
  %203 = icmp ne i32 %202, 0
  %204 = select i1 %203, float 1.000000e+00, float %51
  %205 = add i32 %32, 128
  %206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %205, i32 undef)  ; BufferLoad(srv,index,wot)
  %207 = extractvalue %dx.types.ResRet.i32 %206, 0
  %208 = add i32 %207, 0
  %209 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %208, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = extractvalue %dx.types.CBufRet.f32 %210, 2
  %212 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %209, %dx.types.Handle %59, float %190, float %191, float undef, float undef, i32 0, i32 0, i32 undef, float %211, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %213 = extractvalue %dx.types.ResRet.f32 %212, 0
  %214 = fmul fast float %213, %204
  %215 = icmp eq i32 %202, 0
  br i1 %215, label %235, label %216, !dx.controlflow.hints !69

; <label>:216                                     ; preds = %189
  %217 = add i32 %150, 64
  %218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %217, i32 undef)  ; BufferLoad(srv,index,wot)
  %219 = extractvalue %dx.types.ResRet.f32 %218, 0
  %220 = fadd fast float %219, 1.000000e+00
  %221 = fmul fast float %220, %51
  %222 = fsub fast float %221, %219
  %223 = fsub fast float %220, %222
  %224 = call float @dx.op.unary.f32(i32 7, float %223)  ; Saturate(value)
  %225 = fsub fast float 1.000000e+00, %221
  %226 = call float @dx.op.unary.f32(i32 7, float %225)  ; Saturate(value)
  %227 = fsub fast float %224, %226
  %228 = fsub fast float %214, %226
  %229 = fdiv fast float %228, %227
  %230 = call float @dx.op.unary.f32(i32 7, float %229)  ; Saturate(value)
  %231 = fmul fast float %230, 2.000000e+00
  %232 = fsub fast float 3.000000e+00, %231
  %233 = fmul fast float %230, %230
  %234 = fmul fast float %233, %232
  br label %235

; <label>:235                                     ; preds = %216, %189
  %236 = phi float [ %234, %216 ], [ %214, %189 ]
  %237 = fcmp fast ogt float %236, 0.000000e+00
  br i1 %237, label %239, label %238

; <label>:238                                     ; preds = %235
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %239

; <label>:239                                     ; preds = %238, %235
  %240 = call float @dx.op.unary.f32(i32 7, float %236)  ; Saturate(value)
  %241 = fmul fast float %62, 5.000000e-01
  %242 = fmul fast float %63, 5.000000e-01
  %243 = fptosi float %241 to i32
  %244 = fptosi float %242 to i32
  %245 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %243, i32 %244, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %246 = extractvalue %dx.types.ResRet.i32 %245, 0
  %247 = lshr i32 %246, 18
  %248 = uitofp i32 %247 to float
  %249 = fmul fast float %248, 0x3F4C00EBA0000000
  %250 = call float @dx.op.unary.f32(i32 21, float %249)  ; Exp(value)
  %251 = fadd fast float %250, -1.000000e+00
  %252 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %253 = extractvalue %dx.types.Dimensions %252, 0
  %254 = sitofp i32 %253 to float
  %255 = extractvalue %dx.types.Dimensions %252, 1
  %256 = sitofp i32 %255 to float
  %257 = fcmp fast oge float %241, %254
  %258 = fcmp fast oge float %242, %256
  %259 = or i1 %257, %258
  %260 = select i1 %259, float 0x4197782600000000, float %251
  %261 = fsub fast float %260, %55
  %262 = fcmp fast ogt float %261, 0.000000e+00
  %263 = and i32 %149, -2
  %264 = icmp eq i32 %263, 2
  %265 = and i1 %264, %262
  %266 = xor i1 %262, true
  %267 = icmp eq i32 %149, 1
  %268 = and i1 %267, %266
  %269 = or i1 %265, %268
  %270 = and i32 %153, 262144
  %271 = icmp ne i32 %270, 0
  %272 = and i1 %271, %269
  %273 = xor i1 %269, true
  %274 = and i32 %153, 131072
  %275 = icmp ne i32 %274, 0
  %276 = and i1 %275, %273
  %277 = or i1 %272, %276
  br i1 %277, label %278, label %279

; <label>:278                                     ; preds = %239
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %279

; <label>:279                                     ; preds = %278, %239
  %280 = and i32 %153, 32
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %532, label %282, !dx.controlflow.hints !70

; <label>:282                                     ; preds = %279
  %283 = add i32 %150, 80
  %284 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.f32 %284, 0
  %286 = extractvalue %dx.types.ResRet.f32 %284, 1
  %287 = extractvalue %dx.types.ResRet.f32 %284, 2
  %288 = extractvalue %dx.types.ResRet.f32 %284, 3
  %289 = add i32 %150, 96
  %290 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.f32 %290, 0
  %292 = extractvalue %dx.types.ResRet.f32 %290, 1
  %293 = extractvalue %dx.types.ResRet.f32 %290, 2
  %294 = add i32 %150, 112
  %295 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.f32 %295, 0
  %297 = extractvalue %dx.types.ResRet.f32 %295, 1
  %298 = extractvalue %dx.types.ResRet.f32 %295, 2
  %299 = extractvalue %dx.types.ResRet.f32 %295, 3
  %300 = add i32 %150, 128
  %301 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %300, i32 undef)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.f32 %301, 0
  %303 = extractvalue %dx.types.ResRet.f32 %301, 1
  %304 = extractvalue %dx.types.ResRet.f32 %301, 2
  %305 = extractvalue %dx.types.ResRet.f32 %301, 3
  %306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %151, i32 undef)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.i32 %306, 0
  %308 = and i32 %307, 4096
  %309 = icmp ne i32 %308, 0
  %310 = fcmp fast une float %293, 0.000000e+00
  %311 = and i32 %307, 64
  %312 = icmp ne i32 %311, 0
  %313 = and i32 %307, 128
  %314 = icmp eq i32 %313, 0
  %315 = and i32 %307, 2048
  %316 = icmp eq i32 %315, 0
  %317 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %14, i32 0)  ; GetDimensions(handle,mipLevel)
  %318 = extractvalue %dx.types.Dimensions %317, 0
  %319 = sitofp i32 %318 to float
  %320 = extractvalue %dx.types.Dimensions %317, 1
  %321 = sitofp i32 %320 to float
  %322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %323 = extractvalue %dx.types.CBufRet.f32 %322, 2
  %324 = extractvalue %dx.types.CBufRet.f32 %322, 3
  %325 = fmul fast float %323, %62
  %326 = fmul fast float %324, %63
  %327 = fmul fast float %325, %319
  %328 = fmul fast float %326, %321
  %329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %330 = extractvalue %dx.types.CBufRet.f32 %329, 1
  %331 = fsub fast float -0.000000e+00, %330
  %332 = fptoui float %331 to i32
  %333 = fptoui float %327 to i32
  %334 = fptoui float %328 to i32
  %335 = and i32 %332, 31
  %336 = lshr i32 %333, %335
  %337 = lshr i32 %334, %335
  %338 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 %332, i32 %336, i32 %337, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %339 = extractvalue %dx.types.ResRet.f32 %338, 0
  %340 = fcmp fast ogt float %339, -1.000000e+00
  %341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %342 = extractvalue %dx.types.CBufRet.f32 %341, 1
  %343 = select i1 %340, float %342, float 1.000000e+00
  %344 = fadd fast float %339, 1.000000e+00
  %345 = fmul fast float %343, %344
  %346 = call float @dx.op.unary.f32(i32 6, float %345)  ; FAbs(value)
  %347 = extractvalue %dx.types.CBufRet.f32 %341, 3
  %348 = fcmp fast oge float %346, %347
  %349 = select i1 %348, float 0x4197782600000000, float %346
  br i1 %316, label %427, label %350, !dx.controlflow.hints !71

; <label>:350                                     ; preds = %282
  %351 = fmul fast float %67, %323
  %352 = fmul fast float %69, %324
  %353 = fsub fast float 1.000000e+00, %351
  %354 = fsub fast float 1.000000e+00, %352
  %355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %356 = extractvalue %dx.types.CBufRet.f32 %355, 0
  %357 = extractvalue %dx.types.CBufRet.f32 %355, 1
  %358 = extractvalue %dx.types.CBufRet.f32 %355, 2
  %359 = fmul fast float %353, %356
  %360 = fmul fast float %353, %357
  %361 = fmul fast float %353, %358
  %362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %363 = extractvalue %dx.types.CBufRet.f32 %362, 0
  %364 = extractvalue %dx.types.CBufRet.f32 %362, 1
  %365 = extractvalue %dx.types.CBufRet.f32 %362, 2
  %366 = fmul fast float %354, %363
  %367 = fmul fast float %354, %364
  %368 = fmul fast float %354, %365
  %369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %370 = extractvalue %dx.types.CBufRet.f32 %369, 0
  %371 = extractvalue %dx.types.CBufRet.f32 %369, 1
  %372 = extractvalue %dx.types.CBufRet.f32 %369, 2
  %373 = fadd fast float %366, %370
  %374 = fadd fast float %373, %359
  %375 = fadd fast float %367, %371
  %376 = fadd fast float %375, %360
  %377 = fadd fast float %368, %372
  %378 = fadd fast float %377, %361
  %379 = fmul fast float %374, %349
  %380 = fmul fast float %376, %349
  %381 = fmul fast float %378, %349
  %382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %383 = extractvalue %dx.types.CBufRet.f32 %382, 0
  %384 = extractvalue %dx.types.CBufRet.f32 %382, 1
  %385 = extractvalue %dx.types.CBufRet.f32 %382, 2
  %386 = fsub fast float %383, %33
  %387 = fadd fast float %386, %379
  %388 = fsub fast float %384, %34
  %389 = fadd fast float %388, %380
  %390 = fsub fast float %385, %35
  %391 = fadd fast float %390, %381
  %392 = fmul fast float %36, %36
  %393 = call float @dx.op.dot3.f32(i32 55, float %387, float %389, float %391, float %387, float %389, float %391)  ; Dot3(ax,ay,az,bx,by,bz)
  %394 = fsub fast float %392, %393
  %395 = fmul fast float %292, %392
  %396 = fmul fast float %291, %392
  %397 = fcmp fast olt float %394, %395
  %398 = fcmp fast ogt float %394, %396
  %399 = or i1 %397, %398
  %400 = select i1 %399, float 0.000000e+00, float %394
  %401 = fsub fast float %291, %292
  %402 = fmul fast float %401, %392
  %403 = fsub fast float %400, %395
  %404 = fdiv fast float %403, %402
  %405 = call float @dx.op.unary.f32(i32 7, float %404)  ; Saturate(value)
  %406 = fmul fast float %405, 2.000000e+00
  %407 = fsub fast float 3.000000e+00, %406
  %408 = fmul fast float %405, %405
  %409 = fmul fast float %408, %407
  %410 = fmul fast float %296, %48
  %411 = fmul fast float %297, %49
  %412 = fmul fast float %298, %50
  %413 = fsub fast float %410, %302
  %414 = fsub fast float %411, %303
  %415 = fsub fast float %412, %304
  %416 = fsub fast float %299, %305
  %417 = fmul fast float %409, %413
  %418 = fmul fast float %409, %414
  %419 = fmul fast float %409, %415
  %420 = fmul fast float %409, %416
  %421 = fadd fast float %417, %302
  %422 = fadd fast float %418, %303
  %423 = fadd fast float %419, %304
  %424 = fadd fast float %420, %305
  %425 = fmul fast float %285, %285
  %426 = fmul fast float %425, %400
  br label %522

; <label>:427                                     ; preds = %282
  %428 = and i32 %307, 256
  %429 = icmp eq i32 %428, 0
  %430 = fsub fast float %349, %55
  br i1 %429, label %479, label %431

; <label>:431                                     ; preds = %427
  %432 = fadd fast float %291, %55
  %433 = fcmp fast olt float %349, %55
  %434 = fcmp fast ogt float %349, %432
  %435 = or i1 %433, %434
  %436 = select i1 %435, float 0.000000e+00, float %430
  %437 = call float @dx.op.unary.f32(i32 83, float %349)  ; DerivCoarseX(value)
  %438 = call float @dx.op.unary.f32(i32 84, float %349)  ; DerivCoarseY(value)
  %439 = fmul fast float %437, %437
  %440 = fmul fast float %438, %438
  %441 = fadd fast float %440, %439
  %442 = call float @dx.op.unary.f32(i32 24, float %441)  ; Sqrt(value)
  %443 = extractvalue %dx.types.CBufRet.f32 %329, 2
  %444 = fmul fast float %443, %442
  %445 = call float @dx.op.unary.f32(i32 7, float %444)  ; Saturate(value)
  %446 = fmul fast float %445, %292
  %447 = fdiv fast float %430, %446
  %448 = call float @dx.op.unary.f32(i32 7, float %447)  ; Saturate(value)
  %449 = fmul fast float %448, 2.000000e+00
  %450 = fsub fast float 3.000000e+00, %449
  %451 = fmul fast float %448, %448
  %452 = fmul fast float %451, %450
  %453 = fsub fast float %349, %432
  %454 = fadd fast float %453, %446
  %455 = fdiv fast float %454, %446
  %456 = call float @dx.op.unary.f32(i32 7, float %455)  ; Saturate(value)
  %457 = fmul fast float %456, 2.000000e+00
  %458 = fsub fast float 3.000000e+00, %457
  %459 = fmul fast float %456, %456
  %460 = fmul fast float %459, %458
  %461 = fsub fast float %452, %460
  %462 = fmul fast float %296, %48
  %463 = fmul fast float %297, %49
  %464 = fmul fast float %298, %50
  %465 = fsub fast float %462, %302
  %466 = fsub fast float %463, %303
  %467 = fsub fast float %464, %304
  %468 = fsub fast float %299, %305
  %469 = fmul fast float %461, %465
  %470 = fmul fast float %461, %466
  %471 = fmul fast float %461, %467
  %472 = fmul fast float %461, %468
  %473 = fadd fast float %469, %302
  %474 = fadd fast float %470, %303
  %475 = fadd fast float %471, %304
  %476 = fadd fast float %472, %305
  %477 = fmul fast float %436, %285
  %478 = call float @dx.op.unary.f32(i32 6, float %477)  ; FAbs(value)
  br label %522

; <label>:479                                     ; preds = %427
  br i1 %310, label %480, label %493

; <label>:480                                     ; preds = %479
  %481 = fdiv fast float 5.000000e+01, %36
  %482 = select i1 %312, float %481, float 1.000000e+00
  %483 = fmul fast float %482, %285
  %484 = fmul fast float %200, 2.000000e+00
  %485 = fmul fast float %201, 2.000000e+00
  %486 = fadd fast float %484, -1.000000e+00
  %487 = fadd fast float %485, -1.000000e+00
  %488 = call float @dx.op.dot2.f32(i32 54, float %486, float %487, float %486, float %487)  ; Dot2(ax,ay,bx,by)
  %489 = fmul fast float %293, %36
  %490 = fmul fast float %489, %488
  %491 = fsub fast float %430, %490
  %492 = fmul fast float %483, %491
  br label %522

; <label>:493                                     ; preds = %479
  br i1 %314, label %514, label %494

; <label>:494                                     ; preds = %493
  %495 = fmul fast float %36, 0x3F947AE140000000
  %496 = select i1 %312, float %495, float 1.000000e+00
  %497 = fdiv fast float 1.000000e+00, %496
  %498 = fmul fast float %496, %286
  %499 = fmul fast float %496, %287
  %500 = fmul fast float %497, %288
  %501 = call float @dx.op.unary.f32(i32 6, float %430)  ; FAbs(value)
  %502 = fcmp fast olt float %501, %498
  br i1 %502, label %503, label %507, !dx.controlflow.hints !72

; <label>:503                                     ; preds = %494
  %504 = fmul fast float %497, %285
  %505 = fmul fast float %504, %501
  %506 = call float @dx.op.unary.f32(i32 6, float %505)  ; FAbs(value)
  br label %522

; <label>:507                                     ; preds = %494
  %508 = fcmp fast ogt float %501, %499
  br i1 %508, label %509, label %522

; <label>:509                                     ; preds = %507
  %510 = fsub fast float %501, %499
  %511 = fmul fast float %500, %510
  %512 = call float @dx.op.unary.f32(i32 6, float %511)  ; FAbs(value)
  %513 = fsub fast float 1.000000e+00, %512
  br label %522

; <label>:514                                     ; preds = %493
  %515 = fdiv fast float 5.000000e+01, %36
  %516 = select i1 %312, float %515, float 1.000000e+00
  %517 = fmul fast float %516, %285
  %518 = call float @dx.op.unary.f32(i32 6, float %261)  ; FAbs(value)
  %519 = select i1 %309, float %518, float 0x47EFFFFFE0000000
  %520 = call float @dx.op.binary.f32(i32 36, float %430, float %519)  ; FMin(a,b)
  %521 = fmul fast float %517, %520
  br label %522

; <label>:522                                     ; preds = %514, %509, %507, %503, %480, %431, %350
  %523 = phi float [ %426, %350 ], [ %478, %431 ], [ %492, %480 ], [ %521, %514 ], [ %506, %503 ], [ %513, %509 ], [ %501, %507 ]
  %524 = phi float [ %421, %350 ], [ %473, %431 ], [ %48, %480 ], [ %48, %514 ], [ %48, %503 ], [ %48, %509 ], [ %48, %507 ]
  %525 = phi float [ %422, %350 ], [ %474, %431 ], [ %49, %480 ], [ %49, %514 ], [ %49, %503 ], [ %49, %509 ], [ %49, %507 ]
  %526 = phi float [ %423, %350 ], [ %475, %431 ], [ %50, %480 ], [ %50, %514 ], [ %50, %503 ], [ %50, %509 ], [ %50, %507 ]
  %527 = phi float [ %424, %350 ], [ %476, %431 ], [ 1.000000e+00, %480 ], [ 1.000000e+00, %514 ], [ 1.000000e+00, %503 ], [ 1.000000e+00, %509 ], [ 1.000000e+00, %507 ]
  %528 = call float @dx.op.unary.f32(i32 7, float %523)  ; Saturate(value)
  %529 = fmul fast float %528, %51
  %530 = fmul fast float %527, %240
  %531 = fmul fast float %530, %528
  br label %532

; <label>:532                                     ; preds = %522, %279
  %533 = phi float [ %524, %522 ], [ %48, %279 ]
  %534 = phi float [ %525, %522 ], [ %49, %279 ]
  %535 = phi float [ %526, %522 ], [ %50, %279 ]
  %536 = phi float [ %531, %522 ], [ %240, %279 ]
  %537 = phi float [ %529, %522 ], [ %51, %279 ]
  %538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %539 = extractvalue %dx.types.CBufRet.f32 %538, 2
  %540 = fptosi float %55 to i32
  %541 = sitofp i32 %540 to float
  %542 = fadd fast float %539, %541
  %543 = fmul fast float %542, 0x3FE3C6EF40000000
  %544 = frem fast float %62, 2.560000e+02
  %545 = frem fast float %63, 2.560000e+02
  %546 = fptoui float %544 to i32
  %547 = fptoui float %545 to i32
  %548 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %546, i32 %547, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %549 = extractvalue %dx.types.ResRet.f32 %548, 0
  %550 = fadd fast float %549, %543
  %551 = call float @dx.op.unary.f32(i32 22, float %550)  ; Frc(value)
  %552 = and i32 %153, 1
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %611, label %554, !dx.controlflow.hints !73

; <label>:554                                     ; preds = %532
  %555 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %150, i32 undef)  ; BufferLoad(srv,index,wot)
  %556 = extractvalue %dx.types.ResRet.f32 %555, 2
  %557 = extractvalue %dx.types.ResRet.f32 %555, 3
  %558 = add i32 %150, 16
  %559 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %558, i32 undef)  ; BufferLoad(srv,index,wot)
  %560 = extractvalue %dx.types.ResRet.f32 %559, 0
  %561 = extractvalue %dx.types.ResRet.f32 %559, 1
  %562 = extractvalue %dx.types.ResRet.f32 %559, 2
  %563 = add i32 %150, 32
  %564 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %563, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.f32 %564, 0
  %566 = extractvalue %dx.types.ResRet.f32 %564, 1
  %567 = extractvalue %dx.types.ResRet.f32 %564, 2
  %568 = and i32 %153, 2
  %569 = icmp eq i32 %568, 0
  %570 = call float @dx.op.dot3.f32(i32 55, float %43, float %44, float %45, float %43, float %44, float %45)  ; Dot3(ax,ay,az,bx,by,bz)
  %571 = call float @dx.op.unary.f32(i32 25, float %570)  ; Rsqrt(value)
  %572 = fmul fast float %571, %43
  %573 = fmul fast float %571, %44
  %574 = fmul fast float %571, %45
  %575 = call float @dx.op.dot3.f32(i32 55, float %97, float %98, float %99, float %97, float %98, float %99)  ; Dot3(ax,ay,az,bx,by,bz)
  %576 = call float @dx.op.unary.f32(i32 25, float %575)  ; Rsqrt(value)
  %577 = fmul fast float %576, %97
  %578 = fmul fast float %576, %98
  %579 = fmul fast float %576, %99
  %580 = call float @dx.op.dot3.f32(i32 55, float %577, float %578, float %579, float %572, float %573, float %574)  ; Dot3(ax,ay,az,bx,by,bz)
  %581 = fmul fast float %580, %580
  %582 = fmul fast float %581, %556
  %583 = fadd fast float %582, %557
  %584 = call float @dx.op.unary.f32(i32 7, float %583)  ; Saturate(value)
  br i1 %569, label %585, label %595, !dx.controlflow.hints !74

; <label>:585                                     ; preds = %554
  %586 = extractvalue %dx.types.ResRet.f32 %555, 1
  %587 = extractvalue %dx.types.ResRet.f32 %555, 0
  %588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %589 = extractvalue %dx.types.CBufRet.f32 %588, 3
  %590 = fmul fast float %589, %575
  %591 = fsub fast float %587, %590
  %592 = fmul fast float %591, %586
  %593 = call float @dx.op.unary.f32(i32 7, float %592)  ; Saturate(value)
  %594 = fmul fast float %593, %584
  br label %595

; <label>:595                                     ; preds = %585, %554
  %596 = phi float [ %594, %585 ], [ %584, %554 ]
  %597 = fsub fast float %560, %565
  %598 = fsub fast float %561, %566
  %599 = fsub fast float %562, %567
  %600 = fmul fast float %596, %597
  %601 = fmul fast float %596, %598
  %602 = fmul fast float %596, %599
  %603 = fadd fast float %600, %565
  %604 = fadd fast float %601, %566
  %605 = fadd fast float %602, %567
  %606 = fmul fast float %603, %533
  %607 = fmul fast float %604, %534
  %608 = fmul fast float %605, %535
  %609 = fmul fast float %596, %536
  %610 = fmul fast float %596, %537
  br label %611

; <label>:611                                     ; preds = %595, %532
  %612 = phi float [ %606, %595 ], [ %533, %532 ]
  %613 = phi float [ %607, %595 ], [ %534, %532 ]
  %614 = phi float [ %608, %595 ], [ %535, %532 ]
  %615 = phi float [ %609, %595 ], [ %536, %532 ]
  %616 = phi float [ %610, %595 ], [ %537, %532 ]
  %617 = add i32 %32, 120
  %618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %617, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.i32 %618, 0
  %620 = add i32 %619, 0
  %621 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %620, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %622 = add i32 %32, 24
  %623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %622, i32 undef)  ; BufferLoad(srv,index,wot)
  %624 = extractvalue %dx.types.ResRet.i32 %623, 0
  %625 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %621, %dx.types.Handle %58, float %190, float %191, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %626 = extractvalue %dx.types.ResRet.f32 %625, 0
  %627 = extractvalue %dx.types.ResRet.f32 %625, 1
  %628 = extractvalue %dx.types.ResRet.f32 %625, 2
  %629 = extractvalue %dx.types.ResRet.f32 %625, 3
  %630 = and i32 %624, 255
  %631 = uitofp i32 %630 to float
  %632 = lshr i32 %624, 8
  %633 = and i32 %632, 255
  %634 = uitofp i32 %633 to float
  %635 = fmul fast float %629, %631
  %636 = fadd fast float %635, %634
  %637 = fmul fast float %636, 0x3F70101000000000
  %638 = add i32 %32, 56
  %639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %638, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %652 = fmul fast float %626, %612
  %653 = fmul fast float %643, %643
  %654 = fmul fast float %653, %652
  %655 = fmul fast float %627, %613
  %656 = fmul fast float %647, %647
  %657 = fmul fast float %656, %655
  %658 = fmul fast float %628, %614
  %659 = fmul fast float %651, %651
  %660 = fmul fast float %659, %658
  %661 = add i32 %32, 28
  %662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %661, i32 undef)  ; BufferLoad(srv,index,wot)
  %663 = extractvalue %dx.types.ResRet.i32 %662, 0
  %664 = add i32 %32, 124
  %665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %664, i32 undef)  ; BufferLoad(srv,index,wot)
  %666 = extractvalue %dx.types.ResRet.i32 %665, 0
  %667 = add i32 %666, 0
  %668 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %667, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %669 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %668, %dx.types.Handle %58, float %190, float %191, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %670 = extractvalue %dx.types.ResRet.f32 %669, 0
  %671 = extractvalue %dx.types.ResRet.f32 %669, 1
  %672 = extractvalue %dx.types.ResRet.f32 %669, 3
  %673 = and i32 %663, 255
  %674 = uitofp i32 %673 to float
  %675 = lshr i32 %663, 8
  %676 = and i32 %675, 255
  %677 = uitofp i32 %676 to float
  %678 = lshr i32 %663, 16
  %679 = and i32 %678, 255
  %680 = uitofp i32 %679 to float
  %681 = fmul fast float %680, 0x3F70101000000000
  %682 = fmul fast float %670, %674
  %683 = fadd fast float %682, %677
  %684 = fmul fast float %683, 0x3F70101000000000
  %685 = fadd fast float %671, -5.000000e-01
  %686 = fadd fast float %672, -5.000000e-01
  %687 = fmul fast float %685, %681
  %688 = fmul fast float %686, %681
  %689 = fadd fast float %687, 5.000000e-01
  %690 = fadd fast float %688, 5.000000e-01
  %691 = fmul fast float %689, 2.000000e+00
  %692 = fadd fast float %691, -1.000000e+00
  %693 = fmul fast float %690, 2.000000e+00
  %694 = fadd fast float %693, -1.000000e+00
  %695 = fadd fast float %692, %694
  %696 = fmul fast float %695, 5.000000e-01
  %697 = fsub fast float %692, %694
  %698 = fmul fast float %697, 5.000000e-01
  %699 = call float @dx.op.unary.f32(i32 6, float %696)  ; FAbs(value)
  %700 = fsub fast float 1.000000e+00, %699
  %701 = call float @dx.op.unary.f32(i32 6, float %698)  ; FAbs(value)
  %702 = fsub fast float %700, %701
  %703 = call float @dx.op.dot3.f32(i32 55, float %696, float %698, float %702, float %696, float %698, float %702)  ; Dot3(ax,ay,az,bx,by,bz)
  %704 = call float @dx.op.unary.f32(i32 25, float %703)  ; Rsqrt(value)
  %705 = fmul fast float %696, %704
  %706 = fmul fast float %698, %704
  %707 = add i32 %32, 40
  %708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %707, i32 undef)  ; BufferLoad(srv,index,wot)
  %709 = extractvalue %dx.types.ResRet.i32 %708, 0
  %710 = and i32 %709, 255
  %711 = uitofp i32 %710 to float
  %712 = fmul fast float %711, 0x3F70101020000000
  %713 = lshr i32 %709, 8
  %714 = and i32 %713, 255
  %715 = uitofp i32 %714 to float
  %716 = fmul fast float %715, 0x3F70101020000000
  %717 = lshr i32 %709, 16
  %718 = and i32 %717, 255
  %719 = uitofp i32 %718 to float
  %720 = fmul fast float %719, 0x3F70101020000000
  %721 = fmul fast float %712, %712
  %722 = fmul fast float %716, %716
  %723 = fmul fast float %720, %720
  %724 = add i32 %32, 136
  %725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %724, i32 undef)  ; BufferLoad(srv,index,wot)
  %726 = extractvalue %dx.types.ResRet.i32 %725, 0
  %727 = add i32 %726, 0
  %728 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %727, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %729 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %728, %dx.types.Handle %59, float %190, float %191, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %730 = extractvalue %dx.types.ResRet.f32 %729, 0
  %731 = extractvalue %dx.types.ResRet.f32 %729, 1
  %732 = extractvalue %dx.types.ResRet.f32 %729, 2
  %733 = fmul fast float %721, %730
  %734 = fmul fast float %722, %731
  %735 = fmul fast float %723, %732
  %736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %737 = extractvalue %dx.types.CBufRet.f32 %736, 3
  %738 = fcmp fast ogt float %737, 0.000000e+00
  %739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %740 = extractvalue %dx.types.CBufRet.f32 %739, 1
  br i1 %738, label %741, label %766

; <label>:741                                     ; preds = %611
  %742 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %37, float %38, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %743 = extractvalue %dx.types.ResRet.f32 %742, 0
  %744 = extractvalue %dx.types.ResRet.f32 %742, 1
  %745 = extractvalue %dx.types.ResRet.f32 %742, 2
  %746 = extractvalue %dx.types.ResRet.f32 %742, 3
  %747 = fmul fast float %740, %746
  %748 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %37, float %38, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %749 = extractvalue %dx.types.ResRet.f32 %748, 0
  %750 = extractvalue %dx.types.ResRet.f32 %748, 1
  %751 = extractvalue %dx.types.ResRet.f32 %748, 2
  %752 = extractvalue %dx.types.ResRet.f32 %748, 3
  %753 = fmul fast float %740, %749
  %754 = fmul fast float %740, %750
  %755 = fmul fast float %740, %751
  %756 = fmul fast float %740, %752
  %757 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %37, float %38, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %758 = extractvalue %dx.types.ResRet.f32 %757, 0
  %759 = extractvalue %dx.types.ResRet.f32 %757, 1
  %760 = extractvalue %dx.types.ResRet.f32 %757, 2
  %761 = extractvalue %dx.types.ResRet.f32 %757, 3
  %762 = fmul fast float %740, %758
  %763 = fmul fast float %740, %759
  %764 = fmul fast float %740, %760
  %765 = fmul fast float %740, %761
  br label %771

; <label>:766                                     ; preds = %611
  %767 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %26, float %37, float %38, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %768 = extractvalue %dx.types.ResRet.f32 %767, 0
  %769 = extractvalue %dx.types.ResRet.f32 %767, 1
  %770 = extractvalue %dx.types.ResRet.f32 %767, 2
  br label %771

; <label>:771                                     ; preds = %766, %741
  %772 = phi float [ %762, %741 ], [ 0.000000e+00, %766 ]
  %773 = phi float [ %763, %741 ], [ 0.000000e+00, %766 ]
  %774 = phi float [ %764, %741 ], [ 0.000000e+00, %766 ]
  %775 = phi float [ %765, %741 ], [ 0.000000e+00, %766 ]
  %776 = phi float [ %753, %741 ], [ 0.000000e+00, %766 ]
  %777 = phi float [ %754, %741 ], [ 0.000000e+00, %766 ]
  %778 = phi float [ %755, %741 ], [ 0.000000e+00, %766 ]
  %779 = phi float [ %756, %741 ], [ 0.000000e+00, %766 ]
  %780 = phi float [ %743, %741 ], [ %768, %766 ]
  %781 = phi float [ %744, %741 ], [ %769, %766 ]
  %782 = phi float [ %745, %741 ], [ %770, %766 ]
  %783 = phi float [ %747, %741 ], [ 0.000000e+00, %766 ]
  %784 = fmul float %740, %782
  %785 = fmul float %740, %781
  %786 = fmul float %740, %780
  %787 = call float @dx.op.dot2.f32(i32 54, float %705, float %706, float %705, float %706)  ; Dot2(ax,ay,bx,by)
  %788 = fsub fast float 1.000000e+00, %787
  %789 = call float @dx.op.unary.f32(i32 7, float %788)  ; Saturate(value)
  %790 = call float @dx.op.unary.f32(i32 24, float %789)  ; Sqrt(value)
  %791 = fmul fast float %790, %43
  %792 = fmul fast float %790, %44
  %793 = fmul fast float %790, %45
  %794 = fmul fast float %705, %39
  %795 = fmul fast float %705, %40
  %796 = fmul fast float %705, %41
  %797 = fmul fast float %109, %706
  %798 = fmul fast float %110, %706
  %799 = fmul fast float %111, %706
  %800 = fadd fast float %797, %794
  %801 = fadd fast float %800, %791
  %802 = fadd fast float %798, %795
  %803 = fadd fast float %802, %792
  %804 = fadd fast float %799, %796
  %805 = fadd fast float %804, %793
  %806 = call float @dx.op.dot3.f32(i32 55, float %801, float %803, float %805, float %801, float %803, float %805)  ; Dot3(ax,ay,az,bx,by,bz)
  %807 = call float @dx.op.unary.f32(i32 25, float %806)  ; Rsqrt(value)
  %808 = fmul fast float %801, %807
  %809 = fmul fast float %803, %807
  %810 = fmul fast float %805, %807
  %811 = call float @dx.op.dot3.f32(i32 55, float %97, float %98, float %99, float %97, float %98, float %99)  ; Dot3(ax,ay,az,bx,by,bz)
  %812 = call float @dx.op.unary.f32(i32 25, float %811)  ; Rsqrt(value)
  %813 = fmul fast float %812, %97
  %814 = fmul fast float %812, %98
  %815 = fmul fast float %812, %99
  %816 = fsub fast float -0.000000e+00, %813
  %817 = fsub fast float -0.000000e+00, %814
  %818 = fsub fast float -0.000000e+00, %815
  %819 = fadd fast float %637, 0xBFB99999A0000000
  %820 = call float @dx.op.unary.f32(i32 7, float %819)  ; Saturate(value)
  %821 = fmul fast float %820, 0x3FF1C71C80000000
  %822 = call float @dx.op.binary.f32(i32 36, float %637, float 0x3FB99999A0000000)  ; FMin(a,b)
  %823 = fsub fast float 1.000000e+00, %821
  %824 = call float @dx.op.unary.f32(i32 7, float %823)  ; Saturate(value)
  %825 = fmul fast float %824, %654
  %826 = fmul fast float %824, %657
  %827 = fmul fast float %824, %660
  %828 = call float @dx.op.unary.f32(i32 7, float %825)  ; Saturate(value)
  %829 = call float @dx.op.unary.f32(i32 7, float %826)  ; Saturate(value)
  %830 = call float @dx.op.unary.f32(i32 7, float %827)  ; Saturate(value)
  %831 = fmul fast float %821, %654
  %832 = fmul fast float %821, %657
  %833 = fmul fast float %821, %660
  %834 = fadd fast float %831, %822
  %835 = fadd fast float %832, %822
  %836 = fadd fast float %833, %822
  %837 = call float @dx.op.unary.f32(i32 7, float %834)  ; Saturate(value)
  %838 = call float @dx.op.unary.f32(i32 7, float %835)  ; Saturate(value)
  %839 = call float @dx.op.unary.f32(i32 7, float %836)  ; Saturate(value)
  %840 = call float @dx.op.unary.f32(i32 7, float %684)  ; Saturate(value)
  %841 = call float @dx.op.dot3.f32(i32 55, float %828, float %829, float %830, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %842 = add i32 %32, 32
  %843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %842, i32 undef)  ; BufferLoad(srv,index,wot)
  %844 = extractvalue %dx.types.ResRet.i32 %843, 0
  %845 = and i32 %844, 255
  %846 = uitofp i32 %845 to float
  %847 = lshr i32 %844, 8
  %848 = and i32 %847, 255
  %849 = uitofp i32 %848 to float
  %850 = fmul fast float %849, %841
  %851 = fadd fast float %850, %846
  %852 = fmul fast float %851, 0x3F70101020000000
  %853 = call float @dx.op.unary.f32(i32 7, float %852)  ; Saturate(value)
  %854 = add i32 %32, 132
  %855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %854, i32 undef)  ; BufferLoad(srv,index,wot)
  %856 = extractvalue %dx.types.ResRet.i32 %855, 0
  %857 = add i32 %856, 0
  %858 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %857, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %859 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %858, %dx.types.Handle %59, float %190, float %191, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %860 = extractvalue %dx.types.ResRet.f32 %859, 0
  %861 = and i32 %153, 8192
  %862 = icmp eq i32 %861, 0
  %863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %864 = extractvalue %dx.types.CBufRet.f32 %863, 0
  br i1 %862, label %875, label %865, !dx.controlflow.hints !75

; <label>:865                                     ; preds = %771
  %866 = add i32 %150, 176
  %867 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %866, i32 undef)  ; BufferLoad(srv,index,wot)
  %868 = extractvalue %dx.types.ResRet.f32 %867, 0
  %869 = extractvalue %dx.types.ResRet.f32 %867, 1
  %870 = fcmp fast oge float %868, 0.000000e+00
  %871 = select i1 %870, float %868, float %864
  %872 = fmul fast float %860, %112
  %873 = fmul fast float %872, %869
  %874 = fadd fast float %873, %871
  br label %886

; <label>:875                                     ; preds = %771
  %876 = add i32 %32, 104
  %877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %876, i32 undef)  ; BufferLoad(srv,index,wot)
  %878 = extractvalue %dx.types.ResRet.i32 %877, 0
  %879 = extractvalue %dx.types.ResRet.i32 %877, 1
  %880 = bitcast i32 %878 to float
  %881 = bitcast i32 %879 to float
  %882 = fcmp fast oge float %880, 0.000000e+00
  %883 = select i1 %882, float %880, float %864
  %884 = fmul fast float %881, %860
  %885 = fadd fast float %883, %884
  br label %886

; <label>:886                                     ; preds = %875, %865
  %887 = phi float [ %874, %865 ], [ %885, %875 ]
  %888 = fsub fast float 1.000000e+00, %733
  %889 = fmul fast float %888, %616
  %890 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %243, i32 %244, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %891 = extractvalue %dx.types.ResRet.i32 %890, 0
  %892 = lshr i32 %891, 18
  %893 = uitofp i32 %892 to float
  %894 = fmul fast float %893, 0x3F4C00EBA0000000
  %895 = call float @dx.op.unary.f32(i32 21, float %894)  ; Exp(value)
  %896 = fadd fast float %895, -1.000000e+00
  %897 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %898 = extractvalue %dx.types.Dimensions %897, 0
  %899 = sitofp i32 %898 to float
  %900 = extractvalue %dx.types.Dimensions %897, 1
  %901 = sitofp i32 %900 to float
  %902 = fcmp fast oge float %241, %899
  %903 = fcmp fast oge float %242, %901
  %904 = or i1 %902, %903
  %905 = select i1 %904, float 0x4197782600000000, float %896
  %906 = icmp eq i32 %149, 3
  %907 = fcmp fast ogt float %55, %905
  %908 = and i1 %267, %907
  %909 = or i1 %906, %908
  %910 = icmp eq i32 %149, 2
  %911 = fcmp fast ole float %55, %905
  %912 = and i1 %910, %911
  %913 = or i1 %912, %909
  %914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %915 = extractvalue %dx.types.CBufRet.f32 %914, 3
  %916 = fcmp fast ogt float %915, 0.000000e+00
  br i1 %916, label %917, label %924

; <label>:917                                     ; preds = %886
  %918 = fmul fast float %809, 0xBFDF454380000000
  %919 = fmul fast float %810, 0x3FDF454380000000
  %920 = fmul fast float %808, 0xBFDF454380000000
  %921 = call float @dx.op.dot4.f32(i32 56, float %786, float %785, float %784, float %783, float 0x3FD20DD760000000, float %918, float %919, float %920)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %922 = call float @dx.op.dot4.f32(i32 56, float %776, float %777, float %778, float %779, float 0x3FD20DD760000000, float %918, float %919, float %920)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %923 = call float @dx.op.dot4.f32(i32 56, float %772, float %773, float %774, float %775, float 0x3FD20DD760000000, float %918, float %919, float %920)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %924

; <label>:924                                     ; preds = %917, %886
  %925 = phi float [ %921, %917 ], [ %786, %886 ]
  %926 = phi float [ %922, %917 ], [ %785, %886 ]
  %927 = phi float [ %923, %917 ], [ %784, %886 ]
  %928 = call float @dx.op.dot3.f32(i32 55, float %808, float %809, float %810, float %816, float %817, float %818)  ; Dot3(ax,ay,az,bx,by,bz)
  %929 = call float @dx.op.unary.f32(i32 7, float %928)  ; Saturate(value)
  br i1 %916, label %930, label %1030

; <label>:930                                     ; preds = %924
  %931 = fsub fast float -0.000000e+00, %775
  %932 = fsub fast float %931, %779
  %933 = fsub fast float %932, %783
  %934 = fsub fast float -0.000000e+00, %773
  %935 = fsub fast float %934, %777
  %936 = fsub fast float %935, %785
  %937 = fadd fast float %778, %774
  %938 = fadd fast float %937, %784
  %939 = call float @dx.op.dot3.f32(i32 55, float %933, float %936, float %938, float %933, float %936, float %938)  ; Dot3(ax,ay,az,bx,by,bz)
  %940 = call float @dx.op.unary.f32(i32 25, float %939)  ; Rsqrt(value)
  %941 = fmul fast float %940, %933
  %942 = fmul fast float %940, %936
  %943 = fmul fast float %940, %938
  %944 = fmul fast float %942, 0xBFD4D8D7C0000000
  %945 = fmul fast float %943, 0x3FD4D8D7C0000000
  %946 = fmul fast float %941, 0xBFD4D8D7C0000000
  %947 = call float @dx.op.dot4.f32(i32 56, float %786, float %785, float %784, float %783, float 0x3FD20DD760000000, float %944, float %945, float %946)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %948 = call float @dx.op.dot4.f32(i32 56, float %776, float %777, float %778, float %779, float 0x3FD20DD760000000, float %944, float %945, float %946)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %949 = call float @dx.op.dot4.f32(i32 56, float %772, float %773, float %774, float %775, float 0x3FD20DD760000000, float %944, float %945, float %946)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %950 = fmul fast float %947, 0x4003333340000000
  %951 = fmul fast float %786, 0x3FE5AA35A0000000
  %952 = fsub fast float %950, %951
  %953 = fmul fast float %948, 0x4003333340000000
  %954 = fmul fast float %776, 0x3FE5AA35A0000000
  %955 = fsub fast float %953, %954
  %956 = fmul fast float %949, 0x4003333340000000
  %957 = fmul fast float %772, 0x3FE5AA35A0000000
  %958 = fsub fast float %956, %957
  %959 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %952)  ; FMax(a,b)
  %960 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %955)  ; FMax(a,b)
  %961 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %958)  ; FMax(a,b)
  %962 = fsub fast float %941, %813
  %963 = fsub fast float %942, %814
  %964 = fsub fast float %943, %815
  %965 = call float @dx.op.dot3.f32(i32 55, float %962, float %963, float %964, float %962, float %963, float %964)  ; Dot3(ax,ay,az,bx,by,bz)
  %966 = call float @dx.op.unary.f32(i32 25, float %965)  ; Rsqrt(value)
  %967 = fmul fast float %966, %962
  %968 = fmul fast float %966, %963
  %969 = fmul fast float %966, %964
  %970 = call float @dx.op.dot3.f32(i32 55, float %808, float %809, float %810, float %941, float %942, float %943)  ; Dot3(ax,ay,az,bx,by,bz)
  %971 = call float @dx.op.unary.f32(i32 6, float %970)  ; FAbs(value)
  %972 = call float @dx.op.dot3.f32(i32 55, float %808, float %809, float %810, float %967, float %968, float %969)  ; Dot3(ax,ay,az,bx,by,bz)
  %973 = fmul fast float %972, %972
  %974 = call float @dx.op.dot3.f32(i32 55, float %816, float %817, float %818, float %967, float %968, float %969)  ; Dot3(ax,ay,az,bx,by,bz)
  %975 = call float @dx.op.unary.f32(i32 6, float %974)  ; FAbs(value)
  %976 = fsub fast float 1.000000e+00, %840
  %977 = call float @dx.op.binary.f32(i32 35, float %976, float 0x3F847AE140000000)  ; FMax(a,b)
  %978 = fmul fast float %977, %977
  %979 = fmul fast float %978, %978
  %980 = fsub fast float 1.000000e+00, %979
  %981 = fmul fast float %929, %929
  %982 = fmul fast float %981, %980
  %983 = fadd fast float %982, %979
  %984 = bitcast float %983 to i32
  %985 = ashr i32 %984, 1
  %986 = add nsw i32 %985, 532487669
  %987 = bitcast i32 %986 to float
  %988 = fadd fast float %987, %929
  %989 = fmul fast float %979, %973
  %990 = fsub fast float 1.000000e+00, %973
  %991 = fadd fast float %990, %989
  %992 = fmul fast float %971, %971
  %993 = fmul fast float %992, %980
  %994 = fadd fast float %993, %979
  %995 = bitcast float %994 to i32
  %996 = ashr i32 %995, 1
  %997 = add nsw i32 %996, 532487669
  %998 = bitcast i32 %997 to float
  %999 = fadd fast float %998, %971
  %1000 = fmul fast float %991, %991
  %1001 = fmul fast float %1000, %988
  %1002 = fmul fast float %1001, %999
  %1003 = fdiv fast float 1.000000e+00, %1002
  %1004 = fmul fast float %979, %1003
  %1005 = fsub fast float 1.000000e+00, %975
  %1006 = bitcast float %1005 to i32
  %1007 = sitofp i32 %1006 to float
  %1008 = fmul fast float %1007, 5.000000e+00
  %1009 = fadd fast float %1008, 0xC1EFBF8940000000
  %1010 = fptosi float %1009 to i32
  %1011 = bitcast i32 %1010 to float
  %1012 = fsub fast float 1.000000e+00, %837
  %1013 = fsub fast float 1.000000e+00, %838
  %1014 = fsub fast float 1.000000e+00, %839
  %1015 = fmul fast float %1011, %1012
  %1016 = fmul fast float %1011, %1013
  %1017 = fmul fast float %1011, %1014
  %1018 = fadd fast float %1015, %837
  %1019 = fadd fast float %1016, %838
  %1020 = fadd fast float %1017, %839
  %1021 = fmul fast float %1004, %959
  %1022 = fmul fast float %1021, %1018
  %1023 = fmul fast float %1004, %960
  %1024 = fmul fast float %1023, %1019
  %1025 = fmul fast float %1004, %961
  %1026 = fmul fast float %1025, %1020
  %1027 = call float @dx.op.binary.f32(i32 35, float %1022, float 0.000000e+00)  ; FMax(a,b)
  %1028 = call float @dx.op.binary.f32(i32 35, float %1024, float 0.000000e+00)  ; FMax(a,b)
  %1029 = call float @dx.op.binary.f32(i32 35, float %1026, float 0.000000e+00)  ; FMax(a,b)
  br label %1030

; <label>:1030                                    ; preds = %930, %924
  %1031 = phi float [ %1027, %930 ], [ 0.000000e+00, %924 ]
  %1032 = phi float [ %1028, %930 ], [ 0.000000e+00, %924 ]
  %1033 = phi float [ %1029, %930 ], [ 0.000000e+00, %924 ]
  %1034 = fmul fast float %929, 9.843750e-01
  %1035 = fmul fast float %840, 9.843750e-01
  %1036 = fadd fast float %1034, 7.812500e-03
  %1037 = fadd fast float %1035, 7.812500e-03
  %1038 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %26, float %1036, float %1037, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1039 = extractvalue %dx.types.ResRet.f32 %1038, 2
  %1040 = extractvalue %dx.types.ResRet.f32 %1038, 3
  %1041 = fmul fast float %1039, %837
  %1042 = fmul fast float %1039, %838
  %1043 = fmul fast float %1039, %839
  %1044 = fadd fast float %1041, %1040
  %1045 = fadd fast float %1042, %1040
  %1046 = fadd fast float %1043, %1040
  %1047 = call float @dx.op.binary.f32(i32 35, float %1045, float %1046)  ; FMax(a,b)
  %1048 = call float @dx.op.binary.f32(i32 35, float %1044, float %1047)  ; FMax(a,b)
  %1049 = fsub fast float 1.000000e+00, %1048
  %1050 = call float @dx.op.dot3.f32(i32 55, float %813, float %814, float %815, float %808, float %809, float %810)  ; Dot3(ax,ay,az,bx,by,bz)
  %1051 = fmul fast float %1050, 2.000000e+00
  %1052 = fmul fast float %1051, %808
  %1053 = fmul fast float %1051, %809
  %1054 = fmul fast float %1051, %810
  %1055 = fsub fast float %813, %1052
  %1056 = fsub fast float %814, %1053
  %1057 = fsub fast float %815, %1054
  br i1 %916, label %1058, label %1065

; <label>:1058                                    ; preds = %1030
  %1059 = fmul fast float %1056, 0xBFDF454380000000
  %1060 = fmul fast float %1057, 0x3FDF454380000000
  %1061 = fmul fast float %1055, 0xBFDF454380000000
  %1062 = call float @dx.op.dot4.f32(i32 56, float %786, float %785, float %784, float %783, float 0x3FD20DD760000000, float %1059, float %1060, float %1061)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1063 = call float @dx.op.dot4.f32(i32 56, float %776, float %777, float %778, float %779, float 0x3FD20DD760000000, float %1059, float %1060, float %1061)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1064 = call float @dx.op.dot4.f32(i32 56, float %772, float %773, float %774, float %775, float 0x3FD20DD760000000, float %1059, float %1060, float %1061)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %1065

; <label>:1065                                    ; preds = %1058, %1030
  %1066 = phi float [ %1062, %1058 ], [ %786, %1030 ]
  %1067 = phi float [ %1063, %1058 ], [ %785, %1030 ]
  %1068 = phi float [ %1064, %1058 ], [ %784, %1030 ]
  %1069 = call float @dx.op.dot3.f32(i32 55, float %1066, float %1067, float %1068, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %1071 = extractvalue %dx.types.CBufRet.f32 %1070, 2
  %1072 = extractvalue %dx.types.CBufRet.f32 %1070, 3
  %1073 = fmul fast float %1071, %62
  %1074 = fmul fast float %1072, %63
  %1075 = fptoui float %1073 to i32
  %1076 = fptoui float %1074 to i32
  %1077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1078 = extractvalue %dx.types.CBufRet.f32 %1077, 0
  %1079 = extractvalue %dx.types.CBufRet.f32 %1077, 2
  %1080 = extractvalue %dx.types.CBufRet.f32 %1077, 3
  %1081 = fadd fast float %55, -4.000000e+00
  %1082 = call float @dx.op.binary.f32(i32 35, float %1081, float 0.000000e+00)  ; FMax(a,b)
  %1083 = fadd fast float %1082, %1078
  %1084 = fmul fast float %1083, %1079
  %1085 = call float @dx.op.unary.f32(i32 23, float %1084)  ; Log(value)
  %1086 = fmul fast float %1085, %1080
  %1087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1088 = extractvalue %dx.types.CBufRet.f32 %1087, 2
  %1089 = fmul fast float %1086, %1088
  %1090 = call float @dx.op.unary.f32(i32 7, float %1089)  ; Saturate(value)
  %1091 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1092 = extractvalue %dx.types.CBufRet.i32 %1091, 1
  %1093 = add i32 %1092, -1
  %1094 = uitofp i32 %1092 to float
  %1095 = fmul fast float %1094, %1090
  %1096 = fptoui float %1095 to i32
  %1097 = call i32 @dx.op.binary.i32(i32 40, i32 %1096, i32 %1093)  ; UMin(a,b)
  %1098 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %1099 = extractvalue %dx.types.CBufRet.i32 %1098, 2
  %1100 = extractvalue %dx.types.CBufRet.i32 %1098, 3
  %1101 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1076, i32 %1099, i32 %1075)  ; UMad(a,b,c)
  %1102 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1097, i32 %1100, i32 %1101)  ; UMad(a,b,c)
  %1103 = call float @dx.op.binary.f32(i32 35, float %55, float 0.000000e+00)  ; FMax(a,b)
  %1104 = fptoui float %1103 to i32
  %1105 = lshr i32 %1104, 5
  %1106 = call i32 @dx.op.binary.i32(i32 40, i32 %1105, i32 8191)  ; UMin(a,b)
  %1107 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1108 = extractvalue %dx.types.CBufRet.i32 %1107, 2
  %1109 = add nsw i32 %1108, -1
  %1110 = call i32 @dx.op.binary.i32(i32 37, i32 %1109, i32 0)  ; IMax(a,b)
  %1111 = shl i32 %1106, 2
  %1112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1111, i32 undef)  ; BufferLoad(srv,index,wot)
  %1113 = extractvalue %dx.types.ResRet.i32 %1112, 0
  %1114 = lshr i32 %1113, 16
  %1115 = and i32 %1113, 65535
  %1116 = lshr i32 %1113, 21
  %1117 = lshr i32 %1115, 5
  %1118 = call i32 @dx.op.binary.i32(i32 40, i32 %1117, i32 %1110)  ; UMin(a,b)
  %1119 = icmp ugt i32 %1116, %1118
  br i1 %1119, label %1482, label %1120

; <label>:1120                                    ; preds = %1065
  br label %1121

; <label>:1121                                    ; preds = %1474, %1120
  %1122 = phi float [ %1475, %1474 ], [ 0.000000e+00, %1120 ]
  %1123 = phi float [ %1476, %1474 ], [ 0.000000e+00, %1120 ]
  %1124 = phi float [ %1477, %1474 ], [ 0.000000e+00, %1120 ]
  %1125 = phi float [ %1478, %1474 ], [ 1.000000e+00, %1120 ]
  %1126 = phi i32 [ %1479, %1474 ], [ %1116, %1120 ]
  %1127 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1128 = extractvalue %dx.types.CBufRet.i32 %1127, 2
  %1129 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1102, i32 %1128, i32 %1126)  ; UMad(a,b,c)
  %1130 = shl i32 %1129, 2
  %1131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1130, i32 undef)  ; BufferLoad(srv,index,wot)
  %1132 = extractvalue %dx.types.ResRet.i32 %1131, 0
  %1133 = shl i32 %1126, 5
  %1134 = sub nsw i32 %1114, %1133
  %1135 = call i32 @dx.op.binary.i32(i32 37, i32 %1134, i32 0)  ; IMax(a,b)
  %1136 = call i32 @dx.op.binary.i32(i32 38, i32 %1135, i32 31)  ; IMin(a,b)
  %1137 = sub nsw i32 1, %1114
  %1138 = add nsw i32 %1137, %1115
  %1139 = call i32 @dx.op.binary.i32(i32 37, i32 %1138, i32 0)  ; IMax(a,b)
  %1140 = call i32 @dx.op.binary.i32(i32 38, i32 %1139, i32 32)  ; IMin(a,b)
  %1141 = and i32 %1140, 31
  %1142 = shl i32 -1, %1141
  %1143 = xor i32 %1142, -1
  %1144 = and i32 %1136, 31
  %1145 = shl i32 %1143, %1144
  %1146 = icmp eq i32 %1140, 32
  %1147 = select i1 %1146, i32 -1, i32 %1145
  %1148 = and i32 %1147, %1132
  %1149 = icmp eq i32 %1148, 0
  br i1 %1149, label %1474, label %1150

; <label>:1150                                    ; preds = %1121
  br label %1151

; <label>:1151                                    ; preds = %1257, %1150
  %1152 = phi float [ %1258, %1257 ], [ %1122, %1150 ]
  %1153 = phi float [ %1259, %1257 ], [ %1123, %1150 ]
  %1154 = phi float [ %1260, %1257 ], [ %1124, %1150 ]
  %1155 = phi float [ %1261, %1257 ], [ %1125, %1150 ]
  %1156 = phi i32 [ %1161, %1257 ], [ %1148, %1150 ]
  %1157 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1156)  ; FirstbitLo(value)
  %1158 = add i32 %1157, %1133
  %1159 = and i32 %1157, 31
  %1160 = shl i32 1, %1159
  %1161 = xor i32 %1160, %1156
  %1162 = mul i32 %1158, 72
  %1163 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1162, i32 undef)  ; BufferLoad(srv,index,wot)
  %1164 = extractvalue %dx.types.ResRet.f32 %1163, 0
  %1165 = extractvalue %dx.types.ResRet.f32 %1163, 1
  %1166 = extractvalue %dx.types.ResRet.f32 %1163, 2
  %1167 = add i32 %1162, 12
  %1168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1169 = extractvalue %dx.types.ResRet.i32 %1168, 0
  %1170 = add i32 %1162, 16
  %1171 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1170, i32 undef)  ; BufferLoad(srv,index,wot)
  %1172 = extractvalue %dx.types.ResRet.f32 %1171, 0
  %1173 = extractvalue %dx.types.ResRet.f32 %1171, 1
  %1174 = extractvalue %dx.types.ResRet.f32 %1171, 2
  %1175 = add i32 %1162, 28
  %1176 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1177 = extractvalue %dx.types.ResRet.f32 %1176, 0
  %1178 = add i32 %1162, 32
  %1179 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1178, i32 undef)  ; BufferLoad(srv,index,wot)
  %1180 = extractvalue %dx.types.ResRet.f32 %1179, 0
  %1181 = extractvalue %dx.types.ResRet.f32 %1179, 1
  %1182 = extractvalue %dx.types.ResRet.f32 %1179, 2
  %1183 = extractvalue %dx.types.ResRet.f32 %1179, 3
  %1184 = add i32 %1162, 48
  %1185 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1184, i32 undef)  ; BufferLoad(srv,index,wot)
  %1186 = extractvalue %dx.types.ResRet.f32 %1185, 0
  %1187 = extractvalue %dx.types.ResRet.f32 %1185, 1
  %1188 = add i32 %1162, 56
  %1189 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1190 = extractvalue %dx.types.ResRet.f32 %1189, 0
  %1191 = extractvalue %dx.types.ResRet.f32 %1189, 1
  %1192 = add i32 %1162, 64
  %1193 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1192, i32 undef)  ; BufferLoad(srv,index,wot)
  %1194 = extractvalue %dx.types.ResRet.f32 %1193, 0
  %1195 = extractvalue %dx.types.ResRet.f32 %1193, 1
  %1196 = mul i32 %1158, 60
  %1197 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1196, i32 undef)  ; BufferLoad(srv,index,wot)
  %1198 = extractvalue %dx.types.ResRet.f32 %1197, 0
  %1199 = extractvalue %dx.types.ResRet.f32 %1197, 1
  %1200 = extractvalue %dx.types.ResRet.f32 %1197, 2
  %1201 = add i32 %1196, 12
  %1202 = add i32 %1196, 48
  %1203 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1202, i32 undef)  ; BufferLoad(srv,index,wot)
  %1204 = extractvalue %dx.types.ResRet.f32 %1203, 0
  %1205 = extractvalue %dx.types.ResRet.f32 %1203, 1
  %1206 = extractvalue %dx.types.ResRet.f32 %1203, 2
  %1207 = and i32 %1169, 32767
  %1208 = bitcast float %1164 to i32
  %1209 = icmp eq i32 %1208, -1
  %1210 = bitcast float %1165 to i32
  %1211 = and i32 %1169, 32768
  %1212 = icmp ne i32 %1211, 0
  %1213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1214 = extractvalue %dx.types.CBufRet.f32 %1213, 0
  %1215 = extractvalue %dx.types.CBufRet.f32 %1213, 1
  %1216 = extractvalue %dx.types.CBufRet.f32 %1213, 2
  %1217 = fsub fast float %1198, %1214
  %1218 = fsub fast float %1199, %1215
  %1219 = fsub fast float %1200, %1216
  %1220 = fsub fast float %97, %1217
  %1221 = fsub fast float %98, %1218
  %1222 = fsub fast float %99, %1219
  %1223 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1201, i32 undef)  ; BufferLoad(srv,index,wot)
  %1224 = extractvalue %dx.types.ResRet.f32 %1223, 0
  %1225 = extractvalue %dx.types.ResRet.f32 %1223, 1
  %1226 = extractvalue %dx.types.ResRet.f32 %1223, 2
  %1227 = call float @dx.op.dot3.f32(i32 55, float %1220, float %1221, float %1222, float %1224, float %1225, float %1226)  ; Dot3(ax,ay,az,bx,by,bz)
  %1228 = add i32 %1196, 24
  %1229 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1228, i32 undef)  ; BufferLoad(srv,index,wot)
  %1230 = extractvalue %dx.types.ResRet.f32 %1229, 0
  %1231 = extractvalue %dx.types.ResRet.f32 %1229, 1
  %1232 = extractvalue %dx.types.ResRet.f32 %1229, 2
  %1233 = call float @dx.op.dot3.f32(i32 55, float %1220, float %1221, float %1222, float %1230, float %1231, float %1232)  ; Dot3(ax,ay,az,bx,by,bz)
  %1234 = add i32 %1196, 36
  %1235 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1234, i32 undef)  ; BufferLoad(srv,index,wot)
  %1236 = extractvalue %dx.types.ResRet.f32 %1235, 0
  %1237 = extractvalue %dx.types.ResRet.f32 %1235, 1
  %1238 = extractvalue %dx.types.ResRet.f32 %1235, 2
  %1239 = call float @dx.op.dot3.f32(i32 55, float %1220, float %1221, float %1222, float %1236, float %1237, float %1238)  ; Dot3(ax,ay,az,bx,by,bz)
  %1240 = call float @dx.op.unary.f32(i32 6, float %1227)  ; FAbs(value)
  %1241 = call float @dx.op.unary.f32(i32 6, float %1233)  ; FAbs(value)
  %1242 = call float @dx.op.unary.f32(i32 6, float %1239)  ; FAbs(value)
  %1243 = fsub fast float %1204, %1240
  %1244 = fsub fast float %1205, %1241
  %1245 = fsub fast float %1206, %1242
  %1246 = fmul fast float %1243, %1172
  %1247 = fmul fast float %1244, %1173
  %1248 = fmul fast float %1245, %1174
  %1249 = call float @dx.op.binary.f32(i32 36, float %1247, float %1248)  ; FMin(a,b)
  %1250 = call float @dx.op.binary.f32(i32 36, float %1246, float %1249)  ; FMin(a,b)
  %1251 = call float @dx.op.unary.f32(i32 7, float %1250)  ; Saturate(value)
  %1252 = call float @dx.op.binary.f32(i32 36, float %1155, float %1251)  ; FMin(a,b)
  %1253 = uitofp i1 %1212 to float
  %1254 = fsub fast float 1.000000e+00, %1253
  %1255 = fmul fast float %1252, %1254
  %1256 = fcmp fast ogt float %1255, 0.000000e+00
  br i1 %1256, label %1263, label %1257

; <label>:1257                                    ; preds = %1405, %1151
  %1258 = phi float [ %1469, %1405 ], [ %1152, %1151 ]
  %1259 = phi float [ %1470, %1405 ], [ %1153, %1151 ]
  %1260 = phi float [ %1471, %1405 ], [ %1154, %1151 ]
  %1261 = phi float [ %1472, %1405 ], [ %1155, %1151 ]
  %1262 = icmp eq i32 %1156, %1160
  br i1 %1262, label %1473, label %1151

; <label>:1263                                    ; preds = %1151
  br i1 %1209, label %1321, label %1264

; <label>:1264                                    ; preds = %1263
  %1265 = fsub fast float -0.000000e+00, %1224
  %1266 = fsub fast float -0.000000e+00, %1225
  %1267 = fsub fast float -0.000000e+00, %1226
  %1268 = call float @dx.op.dot3.f32(i32 55, float %1055, float %1056, float %1057, float %1265, float %1266, float %1267)  ; Dot3(ax,ay,az,bx,by,bz)
  %1269 = fsub fast float -0.000000e+00, %1268
  %1270 = call float @dx.op.dot3.f32(i32 55, float %1220, float %1221, float %1222, float %1265, float %1266, float %1267)  ; Dot3(ax,ay,az,bx,by,bz)
  %1271 = fadd fast float %1270, %1187
  %1272 = fadd fast float %1186, %1270
  %1273 = fsub fast float -0.000000e+00, %1272
  %1274 = fcmp ogt float %1268, -0.000000e+00
  %1275 = select i1 %1274, float %1273, float %1271
  %1276 = call float @dx.op.unary.f32(i32 6, float %1269)  ; FAbs(value)
  %1277 = fdiv fast float 1.000000e+00, %1276
  %1278 = fmul fast float %1275, %1277
  %1279 = call float @dx.op.binary.f32(i32 35, float %1278, float 0.000000e+00)  ; FMax(a,b)
  %1280 = fsub fast float -0.000000e+00, %1230
  %1281 = fsub fast float -0.000000e+00, %1231
  %1282 = fsub fast float -0.000000e+00, %1232
  %1283 = call float @dx.op.dot3.f32(i32 55, float %1055, float %1056, float %1057, float %1280, float %1281, float %1282)  ; Dot3(ax,ay,az,bx,by,bz)
  %1284 = fsub fast float -0.000000e+00, %1283
  %1285 = call float @dx.op.dot3.f32(i32 55, float %1220, float %1221, float %1222, float %1280, float %1281, float %1282)  ; Dot3(ax,ay,az,bx,by,bz)
  %1286 = fadd fast float %1285, %1191
  %1287 = fadd fast float %1190, %1285
  %1288 = fsub fast float -0.000000e+00, %1287
  %1289 = fcmp ogt float %1283, -0.000000e+00
  %1290 = select i1 %1289, float %1288, float %1286
  %1291 = call float @dx.op.unary.f32(i32 6, float %1284)  ; FAbs(value)
  %1292 = fdiv fast float 1.000000e+00, %1291
  %1293 = fmul fast float %1290, %1292
  %1294 = call float @dx.op.binary.f32(i32 35, float %1293, float 0.000000e+00)  ; FMax(a,b)
  %1295 = fsub fast float -0.000000e+00, %1236
  %1296 = fsub fast float -0.000000e+00, %1237
  %1297 = fsub fast float -0.000000e+00, %1238
  %1298 = call float @dx.op.dot3.f32(i32 55, float %1055, float %1056, float %1057, float %1295, float %1296, float %1297)  ; Dot3(ax,ay,az,bx,by,bz)
  %1299 = fsub fast float -0.000000e+00, %1298
  %1300 = call float @dx.op.dot3.f32(i32 55, float %1220, float %1221, float %1222, float %1295, float %1296, float %1297)  ; Dot3(ax,ay,az,bx,by,bz)
  %1301 = fadd fast float %1300, %1195
  %1302 = fadd fast float %1194, %1300
  %1303 = fsub fast float -0.000000e+00, %1302
  %1304 = fcmp ogt float %1298, -0.000000e+00
  %1305 = select i1 %1304, float %1303, float %1301
  %1306 = call float @dx.op.unary.f32(i32 6, float %1299)  ; FAbs(value)
  %1307 = fdiv fast float 1.000000e+00, %1306
  %1308 = fmul fast float %1305, %1307
  %1309 = call float @dx.op.binary.f32(i32 35, float %1308, float 0.000000e+00)  ; FMax(a,b)
  %1310 = call float @dx.op.binary.f32(i32 36, float %1294, float %1309)  ; FMin(a,b)
  %1311 = call float @dx.op.binary.f32(i32 36, float %1279, float %1310)  ; FMin(a,b)
  %1312 = fmul fast float %1311, %1055
  %1313 = fmul fast float %1311, %1056
  %1314 = fmul fast float %1311, %1057
  %1315 = fadd fast float %1312, %97
  %1316 = fadd fast float %1313, %98
  %1317 = fadd fast float %1314, %99
  %1318 = fsub fast float %1315, %1164
  %1319 = fsub fast float %1316, %1165
  %1320 = fsub fast float %1317, %1166
  br label %1328

; <label>:1321                                    ; preds = %1263
  %1322 = fmul fast float %1055, 8.096000e+03
  %1323 = fmul fast float %1056, 8.096000e+03
  %1324 = fmul fast float %1057, 8.096000e+03
  %1325 = fadd fast float %1322, %97
  %1326 = fadd fast float %1323, %98
  %1327 = fadd fast float %1324, %99
  br label %1328

; <label>:1328                                    ; preds = %1321, %1264
  %1329 = phi float [ %1055, %1321 ], [ %1318, %1264 ]
  %1330 = phi float [ %1056, %1321 ], [ %1319, %1264 ]
  %1331 = phi float [ %1057, %1321 ], [ %1320, %1264 ]
  %1332 = phi float [ %1325, %1321 ], [ %1315, %1264 ]
  %1333 = phi float [ %1326, %1321 ], [ %1316, %1264 ]
  %1334 = phi float [ %1327, %1321 ], [ %1317, %1264 ]
  %1335 = fcmp fast olt float %1183, 1.000000e+00
  br i1 %1335, label %1336, label %1367, !dx.controlflow.hints !76

; <label>:1336                                    ; preds = %1328
  %1337 = fmul fast float %1331, %1181
  %1338 = fmul fast float %1330, %1182
  %1339 = fsub fast float %1337, %1338
  %1340 = fmul fast float %1329, %1182
  %1341 = fmul fast float %1331, %1180
  %1342 = fsub fast float %1340, %1341
  %1343 = fmul fast float %1330, %1180
  %1344 = fmul fast float %1329, %1181
  %1345 = fsub fast float %1343, %1344
  %1346 = fmul fast float %1339, 2.000000e+00
  %1347 = fmul fast float %1342, 2.000000e+00
  %1348 = fmul fast float %1345, 2.000000e+00
  %1349 = fmul fast float %1346, %1183
  %1350 = fmul fast float %1347, %1183
  %1351 = fmul fast float %1348, %1183
  %1352 = fmul fast float %1348, %1181
  %1353 = fmul fast float %1347, %1182
  %1354 = fmul fast float %1346, %1182
  %1355 = fmul fast float %1348, %1180
  %1356 = fmul fast float %1347, %1180
  %1357 = fmul fast float %1346, %1181
  %1358 = fadd fast float %1352, %1329
  %1359 = fadd fast float %1358, %1349
  %1360 = fsub fast float %1359, %1353
  %1361 = fsub fast float %1330, %1355
  %1362 = fadd fast float %1361, %1350
  %1363 = fadd fast float %1362, %1354
  %1364 = fadd fast float %1351, %1331
  %1365 = fsub fast float %1364, %1357
  %1366 = fadd fast float %1365, %1356
  br label %1367

; <label>:1367                                    ; preds = %1336, %1328
  %1368 = phi float [ %1360, %1336 ], [ %1329, %1328 ]
  %1369 = phi float [ %1363, %1336 ], [ %1330, %1328 ]
  %1370 = phi float [ %1366, %1336 ], [ %1331, %1328 ]
  br i1 %1209, label %1402, label %1371

; <label>:1371                                    ; preds = %1367
  %1372 = fmul fast float %840, 0x400187C840000000
  %1373 = fadd fast float %1372, 0xC00EFC2120000000
  %1374 = fmul fast float %1373, %840
  %1375 = fadd fast float %1374, 0x3FE5D16340000000
  %1376 = fmul fast float %1375, %840
  %1377 = fadd fast float %1376, 1.000000e+00
  %1378 = call float @dx.op.unary.f32(i32 7, float %1377)  ; Saturate(value)
  %1379 = fsub fast float %1332, %97
  %1380 = fsub fast float %1333, %98
  %1381 = fsub fast float %1334, %99
  %1382 = fsub fast float %1332, %1164
  %1383 = fsub fast float %1333, %1165
  %1384 = fsub fast float %1334, %1166
  %1385 = call float @dx.op.dot3.f32(i32 55, float %1379, float %1380, float %1381, float %1379, float %1380, float %1381)  ; Dot3(ax,ay,az,bx,by,bz)
  %1386 = call float @dx.op.dot3.f32(i32 55, float %1382, float %1383, float %1384, float %1382, float %1383, float %1384)  ; Dot3(ax,ay,az,bx,by,bz)
  %1387 = fadd fast float %1386, 0x3EE4F8B580000000
  %1388 = fdiv fast float %1385, %1387
  %1389 = bitcast float %1388 to i32
  %1390 = ashr i32 %1389, 1
  %1391 = add nsw i32 %1390, 532487669
  %1392 = bitcast i32 %1391 to float
  %1393 = fmul fast float %1392, %1378
  %1394 = call float @dx.op.unary.f32(i32 7, float %1393)  ; Saturate(value)
  %1395 = fmul fast float %1394, 0x4009981AE0000000
  %1396 = fsub fast float 0x40111BBD80000000, %1395
  %1397 = fmul fast float %1396, %1394
  %1398 = fadd fast float %1397, 0xC0009F6020000000
  %1399 = fmul fast float %1398, %1394
  %1400 = fadd fast float %1399, 1.000000e+00
  %1401 = call float @dx.op.unary.f32(i32 7, float %1400)  ; Saturate(value)
  br label %1405

; <label>:1402                                    ; preds = %1367
  %1403 = icmp ne i32 %1210, -1
  %1404 = zext i1 %1403 to i32
  br label %1405

; <label>:1405                                    ; preds = %1402, %1371
  %1406 = phi float [ %840, %1402 ], [ %1401, %1371 ]
  %1407 = phi i32 [ %1404, %1402 ], [ 0, %1371 ]
  %1408 = fmul float %1406, 5.000000e+00
  %1409 = fsub float 5.000000e+00, %1408
  %1410 = icmp ne i32 %1407, 0
  %1411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %1412 = extractvalue %dx.types.CBufRet.f32 %1411, 3
  %1413 = fadd fast float %1412, %1409
  %1414 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1413)  ; FMax(a,b)
  %1415 = call float @dx.op.unary.f32(i32 6, float %1368)  ; FAbs(value)
  %1416 = call float @dx.op.unary.f32(i32 6, float %1369)  ; FAbs(value)
  %1417 = fadd fast float %1416, %1415
  %1418 = call float @dx.op.unary.f32(i32 6, float %1370)  ; FAbs(value)
  %1419 = fadd fast float %1417, %1418
  %1420 = fcmp fast oeq float %1419, 0.000000e+00
  %1421 = fdiv fast float 1.000000e+00, %1419
  %1422 = select i1 %1420, float 1.000000e+00, float %1421
  %1423 = fmul fast float %1422, %1368
  %1424 = fmul fast float %1422, %1369
  %1425 = call float @dx.op.unary.f32(i32 6, float %1424)  ; FAbs(value)
  %1426 = call float @dx.op.unary.f32(i32 6, float %1423)  ; FAbs(value)
  %1427 = fsub fast float 1.000000e+00, %1425
  %1428 = fsub fast float 1.000000e+00, %1426
  %1429 = fcmp fast oge float %1423, 0.000000e+00
  %1430 = fcmp fast oge float %1424, 0.000000e+00
  %1431 = select i1 %1429, float 1.000000e+00, float -1.000000e+00
  %1432 = select i1 %1430, float 1.000000e+00, float -1.000000e+00
  %1433 = fcmp fast ole float %1370, 0.000000e+00
  %1434 = fmul fast float %1431, %1427
  %1435 = fmul fast float %1432, %1428
  %1436 = select i1 %1433, float %1434, float %1423
  %1437 = select i1 %1433, float %1435, float %1424
  %1438 = fmul fast float %1436, 5.000000e-01
  %1439 = fmul fast float %1437, 5.000000e-01
  %1440 = fadd fast float %1438, 5.000000e-01
  %1441 = fadd fast float %1439, 5.000000e-01
  %1442 = uitofp i32 %1207 to float
  %1443 = call float @dx.op.binary.f32(i32 36, float %1414, float 3.000000e+00)  ; FMin(a,b)
  %1444 = fadd fast float %1443, 2.000000e+00
  %1445 = call float @dx.op.unary.f32(i32 21, float %1444)  ; Exp(value)
  %1446 = extractvalue %dx.types.CBufRet.f32 %1411, 1
  %1447 = fmul fast float %1446, %1445
  %1448 = fmul fast float %1447, 2.000000e+00
  %1449 = fsub fast float 1.000000e+00, %1448
  %1450 = fmul fast float %1440, %1449
  %1451 = fmul fast float %1441, %1449
  %1452 = fadd fast float %1450, %1447
  %1453 = fadd fast float %1451, %1447
  %1454 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %25, float %1452, float %1453, float %1442, float undef, i32 0, i32 0, i32 undef, float %1414)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1455 = extractvalue %dx.types.ResRet.f32 %1454, 0
  %1456 = extractvalue %dx.types.ResRet.f32 %1454, 1
  %1457 = extractvalue %dx.types.ResRet.f32 %1454, 2
  %1458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1459 = extractvalue %dx.types.CBufRet.f32 %1458, 3
  %1460 = fmul fast float %1459, %1177
  %1461 = call float @dx.op.binary.f32(i32 36, float %1069, float %1460)  ; FMin(a,b)
  %1462 = select i1 %1410, float %1461, float %1460
  %1463 = fmul fast float %1455, %1255
  %1464 = fmul fast float %1463, %1462
  %1465 = fmul fast float %1456, %1255
  %1466 = fmul fast float %1465, %1462
  %1467 = fmul fast float %1457, %1255
  %1468 = fmul fast float %1467, %1462
  %1469 = fadd fast float %1464, %1152
  %1470 = fadd fast float %1466, %1153
  %1471 = fadd fast float %1468, %1154
  %1472 = fsub fast float %1155, %1255
  br label %1257

; <label>:1473                                    ; preds = %1257
  br label %1474

; <label>:1474                                    ; preds = %1473, %1121
  %1475 = phi float [ %1122, %1121 ], [ %1258, %1473 ]
  %1476 = phi float [ %1123, %1121 ], [ %1259, %1473 ]
  %1477 = phi float [ %1124, %1121 ], [ %1260, %1473 ]
  %1478 = phi float [ %1125, %1121 ], [ %1261, %1473 ]
  %1479 = add i32 %1126, 1
  %1480 = icmp ugt i32 %1479, %1118
  br i1 %1480, label %1481, label %1121, !llvm.loop !77

; <label>:1481                                    ; preds = %1474
  br label %1482

; <label>:1482                                    ; preds = %1481, %1065
  %1483 = phi float [ 0.000000e+00, %1065 ], [ %1475, %1481 ]
  %1484 = phi float [ 0.000000e+00, %1065 ], [ %1476, %1481 ]
  %1485 = phi float [ 0.000000e+00, %1065 ], [ %1477, %1481 ]
  %1486 = call float @dx.op.dot3.f32(i32 55, float %1483, float %1484, float %1485, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1487 = select i1 %133, float 0.000000e+00, float %1483
  %1488 = select i1 %133, float %1486, float %1484
  %1489 = select i1 %133, float 0.000000e+00, float %1485
  %1490 = fmul fast float %1487, %1044
  %1491 = fmul fast float %1488, %1045
  %1492 = fmul fast float %1489, %1046
  %1493 = call float @dx.op.binary.f32(i32 35, float %1490, float 0.000000e+00)  ; FMax(a,b)
  %1494 = call float @dx.op.binary.f32(i32 35, float %1491, float 0.000000e+00)  ; FMax(a,b)
  %1495 = call float @dx.op.binary.f32(i32 35, float %1492, float 0.000000e+00)  ; FMax(a,b)
  %1496 = fadd fast float %1493, %1031
  %1497 = fadd fast float %1494, %1032
  %1498 = fadd fast float %1495, %1033
  %1499 = fmul fast float %1496, %615
  %1500 = fmul fast float %1497, %615
  %1501 = fmul fast float %1498, %615
  %1502 = fadd fast float %733, -1.000000e+00
  %1503 = fadd fast float %734, -1.000000e+00
  %1504 = fadd fast float %735, -1.000000e+00
  %1505 = fmul fast float %1502, %615
  %1506 = fmul fast float %1503, %615
  %1507 = fmul fast float %1504, %615
  %1508 = fadd fast float %1505, 1.000000e+00
  %1509 = fadd fast float %1506, 1.000000e+00
  %1510 = fadd fast float %1507, 1.000000e+00
  %1511 = call float @dx.op.dot3.f32(i32 55, float %1508, float %1509, float %1510, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1512 = fsub fast float 1.000000e+00, %1511
  %1513 = fmul fast float %887, %853
  %1514 = fsub fast float 1.000000e+00, %889
  %1515 = fsub fast float %1514, %853
  %1516 = call float @dx.op.unary.f32(i32 7, float %1515)  ; Saturate(value)
  %1517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1518 = extractvalue %dx.types.CBufRet.f32 %1517, 3
  %1519 = fmul fast float %1518, %1516
  %1520 = fadd fast float %1519, %1513
  %1521 = and i32 %153, 1048576
  %1522 = icmp eq i32 %1521, 0
  br i1 %1522, label %1607, label %1523, !dx.controlflow.hints !79

; <label>:1523                                    ; preds = %1482
  %1524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1525 = extractvalue %dx.types.CBufRet.f32 %1524, 2
  %1526 = extractvalue %dx.types.CBufRet.f32 %1524, 3
  %1527 = fmul fast float %1525, %62
  %1528 = fmul fast float %1526, %63
  %1529 = call float @dx.op.unary.f32(i32 7, float %1527)  ; Saturate(value)
  %1530 = call float @dx.op.unary.f32(i32 7, float %1528)  ; Saturate(value)
  %1531 = select i1 %913, i32 2, i32 0
  %1532 = or i32 %1531, 1
  %1533 = uitofp i32 %1532 to float
  %1534 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1529, float %1530, float %1533, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1535 = extractvalue %dx.types.ResRet.f32 %1534, 0
  %1536 = extractvalue %dx.types.ResRet.f32 %1534, 1
  %1537 = extractvalue %dx.types.ResRet.f32 %1534, 2
  %1538 = extractvalue %dx.types.ResRet.f32 %1534, 3
  %1539 = add nuw nsw i32 %1531, 2
  %1540 = uitofp i32 %1539 to float
  %1541 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1529, float %1530, float %1540, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1542 = extractvalue %dx.types.ResRet.f32 %1541, 0
  %1543 = extractvalue %dx.types.ResRet.f32 %1541, 1
  %1544 = extractvalue %dx.types.ResRet.f32 %1541, 2
  %1545 = extractvalue %dx.types.ResRet.f32 %1541, 3
  %1546 = call float @dx.op.binary.f32(i32 35, float %1536, float %1537)  ; FMax(a,b)
  %1547 = call float @dx.op.binary.f32(i32 35, float %1535, float %1546)  ; FMax(a,b)
  %1548 = call float @dx.op.binary.f32(i32 35, float %1547, float %1538)  ; FMax(a,b)
  %1549 = call float @dx.op.binary.f32(i32 36, float %1543, float %1544)  ; FMin(a,b)
  %1550 = call float @dx.op.binary.f32(i32 36, float %1542, float %1549)  ; FMin(a,b)
  %1551 = call float @dx.op.binary.f32(i32 36, float %1550, float %1545)  ; FMin(a,b)
  %1552 = fmul fast float %1548, 2.550000e+02
  %1553 = fadd fast float %1552, 0x3F70101020000000
  %1554 = fptoui float %1553 to i32
  %1555 = fmul fast float %1551, 2.550000e+02
  %1556 = fadd fast float %1555, 0x3F70101020000000
  %1557 = fptoui float %1556 to i32
  %1558 = icmp ult i32 %1554, %1557
  br i1 %1558, label %1559, label %1600

; <label>:1559                                    ; preds = %1523
  %1560 = fcmp fast ogt float %54, 9.843750e-01
  %1561 = select i1 %1560, float -4.000000e+00, float %1081
  %1562 = call float @dx.op.binary.f32(i32 35, float %1561, float 0.000000e+00)  ; FMax(a,b)
  %1563 = fadd fast float %1078, %1562
  %1564 = fmul fast float %1563, %1079
  %1565 = call float @dx.op.unary.f32(i32 23, float %1564)  ; Log(value)
  %1566 = fmul fast float %1080, %1565
  %1567 = fmul fast float %1566, %1088
  %1568 = call float @dx.op.unary.f32(i32 7, float %1567)  ; Saturate(value)
  %1569 = uitofp i32 %1554 to float
  %1570 = uitofp i32 %1557 to float
  %1571 = fadd fast float %1569, 5.000000e-01
  %1572 = fadd fast float %1570, 5.000000e-01
  %1573 = fmul fast float %1088, %1571
  %1574 = fmul fast float %1088, %1572
  %1575 = fadd fast float %1573, 0x3F0FFB4800000000
  %1576 = fadd fast float %1574, 0xBF0FFB4800000000
  %1577 = call float @dx.op.binary.f32(i32 35, float %1568, float %1575)  ; FMax(a,b)
  %1578 = call float @dx.op.binary.f32(i32 36, float %1577, float %1576)  ; FMin(a,b)
  %1579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1580 = extractvalue %dx.types.CBufRet.f32 %1579, 1
  %1581 = extractvalue %dx.types.CBufRet.f32 %1579, 2
  %1582 = extractvalue %dx.types.CBufRet.f32 %1579, 0
  %1583 = select i1 %913, float %1582, float 0.000000e+00
  %1584 = fmul fast float %1580, %1578
  %1585 = fadd fast float %1583, %1584
  %1586 = fadd fast float %1583, %1581
  %1587 = fsub fast float %1580, %1581
  %1588 = fadd fast float %1587, %1583
  %1589 = call float @dx.op.binary.f32(i32 35, float %1585, float %1586)  ; FMax(a,b)
  %1590 = call float @dx.op.binary.f32(i32 36, float %1589, float %1588)  ; FMin(a,b)
  %1591 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %25, float %1529, float %1530, float %1590, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1592 = extractvalue %dx.types.ResRet.f32 %1591, 0
  %1593 = extractvalue %dx.types.ResRet.f32 %1591, 1
  %1594 = extractvalue %dx.types.ResRet.f32 %1591, 2
  %1595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1596 = extractvalue %dx.types.CBufRet.f32 %1595, 1
  %1597 = fmul fast float %1596, %1592
  %1598 = fmul fast float %1596, %1593
  %1599 = fmul fast float %1596, %1594
  br label %1600

; <label>:1600                                    ; preds = %1559, %1523
  %1601 = phi float [ %1597, %1559 ], [ 1.000000e+00, %1523 ]
  %1602 = phi float [ %1598, %1559 ], [ 1.000000e+00, %1523 ]
  %1603 = phi float [ %1599, %1559 ], [ 1.000000e+00, %1523 ]
  %1604 = fmul fast float %1601, %1499
  %1605 = fmul fast float %1602, %1500
  %1606 = fmul fast float %1603, %1501
  br label %1607

; <label>:1607                                    ; preds = %1600, %1482
  %1608 = phi float [ %1604, %1600 ], [ %1499, %1482 ]
  %1609 = phi float [ %1605, %1600 ], [ %1500, %1482 ]
  %1610 = phi float [ %1606, %1600 ], [ %1501, %1482 ]
  %1611 = and i32 %153, 2097152
  %1612 = icmp eq i32 %1611, 0
  br i1 %1612, label %1617, label %1613, !dx.controlflow.hints !80

; <label>:1613                                    ; preds = %1607
  %1614 = add i32 %150, 192
  %1615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1614, i32 undef)  ; BufferLoad(srv,index,wot)
  %1616 = extractvalue %dx.types.ResRet.f32 %1615, 0
  br label %1620

; <label>:1617                                    ; preds = %1607
  %1618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1619 = extractvalue %dx.types.CBufRet.f32 %1618, 3
  br label %1620

; <label>:1620                                    ; preds = %1617, %1613
  %1621 = phi float [ %1616, %1613 ], [ %1619, %1617 ]
  %1622 = fmul fast float %828, %615
  %1623 = fmul fast float %1622, %925
  %1624 = fmul fast float %1623, %1049
  %1625 = fmul fast float %829, %615
  %1626 = fmul fast float %1625, %926
  %1627 = fmul fast float %1626, %1049
  %1628 = fmul fast float %830, %615
  %1629 = fmul fast float %1628, %927
  %1630 = fmul fast float %1629, %1049
  br i1 %908, label %1631, label %1764

; <label>:1631                                    ; preds = %1620
  %1632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1633 = extractvalue %dx.types.CBufRet.f32 %1632, 2
  %1634 = extractvalue %dx.types.CBufRet.f32 %1632, 3
  %1635 = fmul fast float %1633, %62
  %1636 = fmul fast float %1634, %63
  %1637 = call float @dx.op.unary.f32(i32 7, float %1635)  ; Saturate(value)
  %1638 = call float @dx.op.unary.f32(i32 7, float %1636)  ; Saturate(value)
  %1639 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1637, float %1638, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1640 = extractvalue %dx.types.ResRet.f32 %1639, 0
  %1641 = extractvalue %dx.types.ResRet.f32 %1639, 1
  %1642 = extractvalue %dx.types.ResRet.f32 %1639, 2
  %1643 = extractvalue %dx.types.ResRet.f32 %1639, 3
  %1644 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1637, float %1638, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1645 = extractvalue %dx.types.ResRet.f32 %1644, 0
  %1646 = extractvalue %dx.types.ResRet.f32 %1644, 1
  %1647 = extractvalue %dx.types.ResRet.f32 %1644, 2
  %1648 = extractvalue %dx.types.ResRet.f32 %1644, 3
  %1649 = call float @dx.op.binary.f32(i32 35, float %1641, float %1642)  ; FMax(a,b)
  %1650 = call float @dx.op.binary.f32(i32 35, float %1640, float %1649)  ; FMax(a,b)
  %1651 = call float @dx.op.binary.f32(i32 35, float %1650, float %1643)  ; FMax(a,b)
  %1652 = call float @dx.op.binary.f32(i32 36, float %1646, float %1647)  ; FMin(a,b)
  %1653 = call float @dx.op.binary.f32(i32 36, float %1645, float %1652)  ; FMin(a,b)
  %1654 = call float @dx.op.binary.f32(i32 36, float %1653, float %1648)  ; FMin(a,b)
  %1655 = fmul fast float %1651, 2.550000e+02
  %1656 = fadd fast float %1655, 0x3F70101020000000
  %1657 = fptoui float %1656 to i32
  %1658 = fmul fast float %1654, 2.550000e+02
  %1659 = fadd fast float %1658, 0x3F70101020000000
  %1660 = fptoui float %1659 to i32
  %1661 = icmp ult i32 %1657, %1660
  br i1 %1661, label %1662, label %1706

; <label>:1662                                    ; preds = %1631
  %1663 = fcmp fast ogt float %54, 9.843750e-01
  %1664 = select i1 %1663, float -4.000000e+00, float %1081
  %1665 = call float @dx.op.binary.f32(i32 35, float %1664, float 0.000000e+00)  ; FMax(a,b)
  %1666 = fadd fast float %1078, %1665
  %1667 = fmul fast float %1666, %1079
  %1668 = call float @dx.op.unary.f32(i32 23, float %1667)  ; Log(value)
  %1669 = fmul fast float %1080, %1668
  %1670 = fmul fast float %1669, %1088
  %1671 = call float @dx.op.unary.f32(i32 7, float %1670)  ; Saturate(value)
  %1672 = uitofp i32 %1657 to float
  %1673 = uitofp i32 %1660 to float
  %1674 = fadd fast float %1672, 5.000000e-01
  %1675 = fadd fast float %1673, 5.000000e-01
  %1676 = fmul fast float %1088, %1674
  %1677 = fmul fast float %1088, %1675
  %1678 = fadd fast float %1676, 0x3F0FFB4800000000
  %1679 = fadd fast float %1677, 0xBF0FFB4800000000
  %1680 = call float @dx.op.binary.f32(i32 35, float %1671, float %1678)  ; FMax(a,b)
  %1681 = call float @dx.op.binary.f32(i32 36, float %1680, float %1679)  ; FMin(a,b)
  %1682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1683 = extractvalue %dx.types.CBufRet.f32 %1682, 1
  %1684 = extractvalue %dx.types.CBufRet.f32 %1682, 2
  %1685 = extractvalue %dx.types.CBufRet.f32 %1682, 0
  %1686 = fmul fast float %1683, %1681
  %1687 = fadd fast float %1685, %1686
  %1688 = fadd fast float %1685, %1684
  %1689 = fsub fast float %1683, %1684
  %1690 = fadd fast float %1689, %1685
  %1691 = call float @dx.op.binary.f32(i32 35, float %1687, float %1688)  ; FMax(a,b)
  %1692 = call float @dx.op.binary.f32(i32 36, float %1691, float %1690)  ; FMin(a,b)
  %1693 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %1637, float %1638, float %1692, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1694 = extractvalue %dx.types.ResRet.f32 %1693, 0
  %1695 = extractvalue %dx.types.ResRet.f32 %1693, 1
  %1696 = extractvalue %dx.types.ResRet.f32 %1693, 2
  %1697 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %1637, float %1638, float %1692, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1698 = extractvalue %dx.types.ResRet.f32 %1697, 0
  %1699 = extractvalue %dx.types.ResRet.f32 %1697, 1
  %1700 = extractvalue %dx.types.ResRet.f32 %1697, 2
  %1701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1702 = extractvalue %dx.types.CBufRet.f32 %1701, 1
  %1703 = fmul fast float %1702, %1698
  %1704 = fmul fast float %1702, %1699
  %1705 = fmul fast float %1702, %1700
  br label %1706

; <label>:1706                                    ; preds = %1662, %1631
  %1707 = phi float [ %1694, %1662 ], [ 1.000000e+00, %1631 ]
  %1708 = phi float [ %1695, %1662 ], [ 1.000000e+00, %1631 ]
  %1709 = phi float [ %1696, %1662 ], [ 1.000000e+00, %1631 ]
  %1710 = phi float [ %1703, %1662 ], [ 0.000000e+00, %1631 ]
  %1711 = phi float [ %1704, %1662 ], [ 0.000000e+00, %1631 ]
  %1712 = phi float [ %1705, %1662 ], [ 0.000000e+00, %1631 ]
  %1713 = fmul fast float %1710, %1512
  %1714 = fmul fast float %1711, %1512
  %1715 = fmul fast float %1712, %1512
  %1716 = call float @dx.op.dot3.f32(i32 55, float %1707, float %1708, float %1709, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1717 = call float @dx.op.dot3.f32(i32 55, float %1713, float %1714, float %1715, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1718 = select i1 %133, float %1716, float %1707
  %1719 = select i1 %133, float %1716, float %1708
  %1720 = select i1 %133, float 1.000000e+00, float %1709
  %1721 = select i1 %133, float %1717, float %1713
  %1722 = select i1 %133, float 0.000000e+00, float %1714
  %1723 = select i1 %133, float 0.000000e+00, float %1715
  %1724 = fmul fast float %1718, %1624
  %1725 = fmul fast float %1719, %1627
  %1726 = fmul fast float %1720, %1630
  %1727 = fadd fast float %1724, %1721
  %1728 = fadd fast float %1725, %1722
  %1729 = fadd fast float %1723, %1726
  %1730 = fmul fast float %1718, %1608
  %1731 = fmul fast float %1719, %1609
  %1732 = fmul fast float %1720, %1610
  %1733 = fmul fast float %67, %1633
  %1734 = fmul fast float %69, %1634
  %1735 = fsub fast float 1.000000e+00, %1733
  %1736 = fsub fast float 1.000000e+00, %1734
  %1737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1738 = extractvalue %dx.types.CBufRet.f32 %1737, 0
  %1739 = extractvalue %dx.types.CBufRet.f32 %1737, 1
  %1740 = extractvalue %dx.types.CBufRet.f32 %1737, 2
  %1741 = fmul fast float %1735, %1738
  %1742 = fmul fast float %1735, %1739
  %1743 = fmul fast float %1735, %1740
  %1744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1745 = extractvalue %dx.types.CBufRet.f32 %1744, 0
  %1746 = extractvalue %dx.types.CBufRet.f32 %1744, 1
  %1747 = extractvalue %dx.types.CBufRet.f32 %1744, 2
  %1748 = fmul fast float %1736, %1745
  %1749 = fmul fast float %1736, %1746
  %1750 = fmul fast float %1736, %1747
  %1751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1752 = extractvalue %dx.types.CBufRet.f32 %1751, 0
  %1753 = extractvalue %dx.types.CBufRet.f32 %1751, 1
  %1754 = extractvalue %dx.types.CBufRet.f32 %1751, 2
  %1755 = fadd fast float %1748, %1752
  %1756 = fadd fast float %1755, %1741
  %1757 = fadd fast float %1749, %1753
  %1758 = fadd fast float %1757, %1742
  %1759 = fadd fast float %1750, %1754
  %1760 = fadd fast float %1759, %1743
  %1761 = fmul fast float %1756, %905
  %1762 = fmul fast float %1758, %905
  %1763 = fmul fast float %1760, %905
  br label %1764

; <label>:1764                                    ; preds = %1706, %1620
  %1765 = phi float [ %1761, %1706 ], [ %97, %1620 ]
  %1766 = phi float [ %1762, %1706 ], [ %98, %1620 ]
  %1767 = phi float [ %1763, %1706 ], [ %99, %1620 ]
  %1768 = phi float [ %905, %1706 ], [ %55, %1620 ]
  %1769 = phi float [ %1727, %1706 ], [ %1624, %1620 ]
  %1770 = phi float [ %1728, %1706 ], [ %1627, %1620 ]
  %1771 = phi float [ %1729, %1706 ], [ %1630, %1620 ]
  %1772 = phi float [ %1730, %1706 ], [ %1608, %1620 ]
  %1773 = phi float [ %1731, %1706 ], [ %1609, %1620 ]
  %1774 = phi float [ %1732, %1706 ], [ %1610, %1620 ]
  %1775 = phi float [ %1707, %1706 ], [ 1.000000e+00, %1620 ]
  br i1 %913, label %2831, label %1776

; <label>:1776                                    ; preds = %1764
  %1777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1778 = extractvalue %dx.types.CBufRet.f32 %1777, 0
  %1779 = extractvalue %dx.types.CBufRet.f32 %1777, 1
  %1780 = extractvalue %dx.types.CBufRet.f32 %1777, 2
  %1781 = extractvalue %dx.types.CBufRet.f32 %1777, 3
  %1782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1783 = extractvalue %dx.types.CBufRet.f32 %1782, 0
  %1784 = extractvalue %dx.types.CBufRet.f32 %1782, 1
  %1785 = extractvalue %dx.types.CBufRet.f32 %1782, 2
  %1786 = extractvalue %dx.types.CBufRet.f32 %1782, 3
  %1787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1788 = extractvalue %dx.types.CBufRet.f32 %1787, 0
  %1789 = extractvalue %dx.types.CBufRet.f32 %1787, 1
  %1790 = extractvalue %dx.types.CBufRet.f32 %1787, 2
  %1791 = extractvalue %dx.types.CBufRet.f32 %1787, 3
  %1792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1793 = extractvalue %dx.types.CBufRet.f32 %1792, 0
  %1794 = extractvalue %dx.types.CBufRet.f32 %1792, 1
  %1795 = extractvalue %dx.types.CBufRet.f32 %1792, 2
  %1796 = extractvalue %dx.types.CBufRet.f32 %1792, 3
  %1797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1798 = extractvalue %dx.types.CBufRet.f32 %1797, 3
  %1799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1800 = extractvalue %dx.types.CBufRet.f32 %1799, 3
  %1801 = extractvalue %dx.types.CBufRet.f32 %1799, 0
  %1802 = extractvalue %dx.types.CBufRet.f32 %1799, 1
  %1803 = extractvalue %dx.types.CBufRet.f32 %1799, 2
  %1804 = fcmp fast olt float %1803, -5.000000e-01
  %1805 = call float @dx.op.dot3.f32(i32 55, float %1765, float %1766, float %1767, float %1765, float %1766, float %1767)  ; Dot3(ax,ay,az,bx,by,bz)
  %1806 = call float @dx.op.unary.f32(i32 25, float %1805)  ; Rsqrt(value)
  %1807 = fmul fast float %1806, %1805
  %1808 = fmul fast float %1806, %1765
  %1809 = fmul fast float %1806, %1766
  %1810 = fmul fast float %1806, %1767
  %1811 = fadd fast float %1807, %1781
  %1812 = call float @dx.op.dot3.f32(i32 55, float %1808, float %1809, float %1810, float %1778, float %1779, float %1780)  ; Dot3(ax,ay,az,bx,by,bz)
  %1813 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1814 = extractvalue %dx.types.CBufRet.i32 %1813, 1
  %1815 = and i32 %1814, 1
  %1816 = icmp ne i32 %1815, 0
  %1817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1818 = extractvalue %dx.types.CBufRet.f32 %1817, 2
  %1819 = fcmp fast ogt float %1818, 0.000000e+00
  %1820 = and i1 %1816, %1819
  br i1 %1820, label %1821, label %2227, !dx.controlflow.hints !81

; <label>:1821                                    ; preds = %1776
  %1822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1823 = extractvalue %dx.types.CBufRet.f32 %1822, 3
  %1824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1825 = extractvalue %dx.types.CBufRet.f32 %1824, 2
  %1826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1827 = extractvalue %dx.types.CBufRet.f32 %1826, 2
  %1828 = fsub fast float %1825, %1827
  %1829 = and i32 %1814, 2
  %1830 = extractvalue %dx.types.CBufRet.i32 %1813, 0
  %1831 = call i32 @dx.op.binary.i32(i32 40, i32 %1830, i32 3)  ; UMin(a,b)
  %1832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1833 = extractvalue %dx.types.CBufRet.f32 %1832, 0
  %1834 = extractvalue %dx.types.CBufRet.f32 %1832, 1
  %1835 = extractvalue %dx.types.CBufRet.f32 %1826, 0
  %1836 = extractvalue %dx.types.CBufRet.f32 %1826, 1
  %1837 = fsub fast float %1833, %1835
  %1838 = fsub fast float %1834, %1836
  %1839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1840 = extractvalue %dx.types.CBufRet.f32 %1839, 0
  %1841 = fcmp fast ogt float %1840, 0.000000e+00
  %1842 = fsub fast float -0.000000e+00, %1837
  %1843 = fsub fast float -0.000000e+00, %1838
  %1844 = call float @dx.op.dot2.f32(i32 54, float %1808, float %1809, float %1808, float %1809)  ; Dot2(ax,ay,bx,by)
  %1845 = call float @dx.op.dot2.f32(i32 54, float %1808, float %1809, float %1842, float %1843)  ; Dot2(ax,ay,bx,by)
  %1846 = fmul fast float %1845, 2.000000e+00
  %1847 = call float @dx.op.dot2.f32(i32 54, float %1842, float %1843, float %1842, float %1843)  ; Dot2(ax,ay,bx,by)
  %1848 = fmul fast float %1840, %1840
  %1849 = fsub fast float %1847, %1848
  %1850 = fmul fast float %1846, %1846
  %1851 = fmul fast float %1844, 4.000000e+00
  %1852 = fmul fast float %1851, %1849
  %1853 = fsub fast float %1850, %1852
  %1854 = fcmp fast ogt float %1853, 0.000000e+00
  br i1 %1854, label %1855, label %1870

; <label>:1855                                    ; preds = %1821
  %1856 = fcmp fast ogt float %1846, 0.000000e+00
  %1857 = call float @dx.op.unary.f32(i32 24, float %1853)  ; Sqrt(value)
  %1858 = fsub fast float -0.000000e+00, %1857
  %1859 = select i1 %1856, float %1857, float %1858
  %1860 = fadd fast float %1859, %1846
  %1861 = fmul float %1860, -5.000000e-01
  %1862 = fdiv fast float %1861, %1844
  %1863 = call float @dx.op.binary.f32(i32 35, float %1862, float 0.000000e+00)  ; FMax(a,b)
  %1864 = call float @dx.op.binary.f32(i32 36, float %1807, float %1863)  ; FMin(a,b)
  %1865 = fdiv fast float %1849, %1861
  %1866 = call float @dx.op.binary.f32(i32 35, float %1865, float 0.000000e+00)  ; FMax(a,b)
  %1867 = call float @dx.op.binary.f32(i32 36, float %1807, float %1866)  ; FMin(a,b)
  %1868 = call float @dx.op.binary.f32(i32 36, float %1864, float %1867)  ; FMin(a,b)
  %1869 = call float @dx.op.binary.f32(i32 35, float %1864, float %1867)  ; FMax(a,b)
  br label %1870

; <label>:1870                                    ; preds = %1855, %1821
  %1871 = phi float [ %1869, %1855 ], [ -1.000000e+00, %1821 ]
  %1872 = phi float [ %1868, %1855 ], [ -1.000000e+00, %1821 ]
  %1873 = phi i1 [ true, %1855 ], [ false, %1821 ]
  %1874 = and i1 %1841, %1873
  br i1 %1874, label %1875, label %1877

; <label>:1875                                    ; preds = %1870
  %1876 = fcmp fast oeq float %1872, %1871
  br i1 %1876, label %2180, label %1878

; <label>:1877                                    ; preds = %1870
  br i1 %1841, label %2180, label %1878

; <label>:1878                                    ; preds = %1877, %1875
  %1879 = phi float [ %1807, %1877 ], [ %1871, %1875 ]
  %1880 = phi float [ 0.000000e+00, %1877 ], [ %1872, %1875 ]
  %1881 = icmp ne i32 %1829, 0
  %1882 = fmul fast float %1879, %1810
  %1883 = fadd fast float %1882, %1823
  %1884 = fmul fast float %1883, %1879
  %1885 = select i1 %1881, float 0.000000e+00, float %1884
  %1886 = fcmp fast oeq float %1810, 0.000000e+00
  %1887 = fdiv fast float %1828, %1810
  %1888 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1887)  ; FMax(a,b)
  %1889 = select i1 %1886, float %1879, float %1888
  %1890 = call float @dx.op.binary.f32(i32 36, float %1879, float %1889)  ; FMin(a,b)
  %1891 = fcmp fast ogt float %1810, 0.000000e+00
  %1892 = fcmp fast olt float %1828, 0.000000e+00
  br i1 %1891, label %1893, label %1950

; <label>:1893                                    ; preds = %1878
  %1894 = icmp eq i32 %1829, 0
  br i1 %1892, label %1895, label %1939

; <label>:1895                                    ; preds = %1893
  %1896 = select i1 %1894, float %1879, float 0.000000e+00
  %1897 = fsub fast float -0.000000e+00, %1896
  %1898 = call float @dx.op.unary.f32(i32 6, float %1897)  ; FAbs(value)
  %1899 = fmul fast float %1896, %1810
  %1900 = fadd fast float %1899, %1823
  %1901 = fmul fast float %1898, %1900
  %1902 = fsub fast float %1885, %1901
  %1903 = fsub fast float %1879, %1898
  %1904 = select i1 %1894, float %1903, float 0.000000e+00
  %1905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1906 = extractvalue %dx.types.CBufRet.f32 %1905, 0
  %1907 = extractvalue %dx.types.CBufRet.f32 %1905, 1
  %1908 = extractvalue %dx.types.CBufRet.f32 %1905, 2
  %1909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1910 = extractvalue %dx.types.CBufRet.f32 %1909, 0
  %1911 = extractvalue %dx.types.CBufRet.f32 %1909, 1
  %1912 = extractvalue %dx.types.CBufRet.f32 %1909, 2
  %1913 = extractvalue %dx.types.CBufRet.f32 %1909, 3
  %1914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1915 = extractvalue %dx.types.CBufRet.f32 %1914, 3
  %1916 = call float @dx.op.binary.f32(i32 36, float %1902, float %1915)  ; FMin(a,b)
  %1917 = fmul fast float %1913, %1904
  %1918 = call float @dx.op.unary.f32(i32 7, float %1917)  ; Saturate(value)
  %1919 = fsub fast float %1910, %1906
  %1920 = fsub fast float %1911, %1907
  %1921 = fsub fast float %1912, %1908
  %1922 = fmul fast float %1918, %1919
  %1923 = fmul fast float %1918, %1920
  %1924 = fmul fast float %1918, %1921
  %1925 = fadd fast float %1922, %1906
  %1926 = fadd fast float %1923, %1907
  %1927 = fadd fast float %1924, %1908
  %1928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1929 = extractvalue %dx.types.CBufRet.f32 %1928, 0
  %1930 = extractvalue %dx.types.CBufRet.f32 %1928, 1
  %1931 = fadd fast float %1930, %1929
  %1932 = call float @dx.op.unary.f32(i32 7, float %1931)  ; Saturate(value)
  %1933 = extractvalue %dx.types.CBufRet.f32 %1928, 2
  %1934 = extractvalue %dx.types.CBufRet.f32 %1928, 3
  %1935 = fadd fast float %1934, %1933
  %1936 = call float @dx.op.unary.f32(i32 7, float %1935)  ; Saturate(value)
  %1937 = fmul fast float %1932, %1916
  %1938 = fmul fast float %1937, %1936
  br label %2180

; <label>:1939                                    ; preds = %1893
  br i1 %1894, label %1940, label %1961

; <label>:1940                                    ; preds = %1939
  %1941 = call float @dx.op.binary.f32(i32 36, float %1890, float %1880)  ; FMin(a,b)
  %1942 = fsub fast float %1890, %1941
  %1943 = fsub fast float %1942, %1879
  %1944 = call float @dx.op.unary.f32(i32 6, float %1943)  ; FAbs(value)
  %1945 = fadd fast float %1942, %1879
  %1946 = fmul fast float %1945, %1810
  %1947 = fadd fast float %1946, %1823
  %1948 = fmul fast float %1947, %1944
  %1949 = fsub fast float %1885, %1948
  br label %1961

; <label>:1950                                    ; preds = %1878
  br i1 %1892, label %1951, label %1961

; <label>:1951                                    ; preds = %1950
  %1952 = call float @dx.op.binary.f32(i32 35, float %1880, float %1890)  ; FMax(a,b)
  %1953 = icmp eq i32 %1829, 0
  %1954 = select i1 %1953, float %1890, float 0.000000e+00
  %1955 = fsub fast float -0.000000e+00, %1954
  %1956 = call float @dx.op.unary.f32(i32 6, float %1955)  ; FAbs(value)
  %1957 = fmul fast float %1954, %1810
  %1958 = fadd fast float %1957, %1823
  %1959 = fmul fast float %1956, %1958
  %1960 = fsub fast float %1885, %1959
  br label %1961

; <label>:1961                                    ; preds = %1951, %1950, %1940, %1939
  %1962 = phi float [ %1880, %1939 ], [ %1880, %1940 ], [ %1952, %1951 ], [ %1880, %1950 ]
  %1963 = phi float [ 0.000000e+00, %1939 ], [ %1944, %1940 ], [ %1956, %1951 ], [ 0.000000e+00, %1950 ]
  %1964 = phi float [ %1885, %1939 ], [ %1949, %1940 ], [ %1960, %1951 ], [ %1885, %1950 ]
  %1965 = phi float [ %1890, %1939 ], [ %1890, %1940 ], [ %1879, %1951 ], [ %1879, %1950 ]
  %1966 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 0
  store float -1.000000e+00, float* %1966, align 4, !tbaa !82, !noalias !86
  %1967 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 1
  store float -1.000000e+00, float* %1967, align 4, !tbaa !82, !noalias !86
  %1968 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 2
  store float -1.000000e+00, float* %1968, align 4, !tbaa !82, !noalias !86
  %1969 = getelementptr inbounds [3 x float], [3 x float]* %57, i32 0, i32 0
  store float -1.000000e+00, float* %1969, align 4, !tbaa !82, !noalias !86
  %1970 = getelementptr inbounds [3 x float], [3 x float]* %57, i32 0, i32 1
  store float -1.000000e+00, float* %1970, align 4, !tbaa !82, !noalias !86
  %1971 = getelementptr inbounds [3 x float], [3 x float]* %57, i32 0, i32 2
  store float -1.000000e+00, float* %1971, align 4, !tbaa !82, !noalias !86
  %1972 = icmp sgt i32 %1831, 0
  br i1 %1972, label %1973, label %2034

; <label>:1973                                    ; preds = %1961
  br label %1974

; <label>:1974                                    ; preds = %2023, %1973
  %1975 = phi i32 [ %2024, %2023 ], [ 0, %1973 ]
  %1976 = phi i32 [ %2025, %2023 ], [ 0, %1973 ]
  %1977 = add nuw i32 %1976, 171
  %1978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 %1977)  ; CBufferLoadLegacy(handle,regIndex)
  %1979 = extractvalue %dx.types.CBufRet.f32 %1978, 0
  %1980 = extractvalue %dx.types.CBufRet.f32 %1978, 1
  %1981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1982 = extractvalue %dx.types.CBufRet.f32 %1981, 0
  %1983 = extractvalue %dx.types.CBufRet.f32 %1981, 1
  %1984 = fsub fast float %1979, %1982
  %1985 = fsub fast float %1980, %1983
  %1986 = extractvalue %dx.types.CBufRet.f32 %1978, 2
  %1987 = fsub fast float -0.000000e+00, %1984
  %1988 = fsub fast float -0.000000e+00, %1985
  %1989 = call float @dx.op.dot2.f32(i32 54, float %1808, float %1809, float %1987, float %1988)  ; Dot2(ax,ay,bx,by)
  %1990 = fmul fast float %1989, 2.000000e+00
  %1991 = call float @dx.op.dot2.f32(i32 54, float %1987, float %1988, float %1987, float %1988)  ; Dot2(ax,ay,bx,by)
  %1992 = fmul fast float %1986, %1986
  %1993 = fsub fast float %1991, %1992
  %1994 = fmul fast float %1990, %1990
  %1995 = fmul fast float %1851, %1993
  %1996 = fsub fast float %1994, %1995
  %1997 = fcmp fast ogt float %1996, 0.000000e+00
  br i1 %1997, label %1998, label %2013

; <label>:1998                                    ; preds = %1974
  %1999 = fcmp fast ogt float %1990, 0.000000e+00
  %2000 = call float @dx.op.unary.f32(i32 24, float %1996)  ; Sqrt(value)
  %2001 = fsub fast float -0.000000e+00, %2000
  %2002 = select i1 %1999, float %2000, float %2001
  %2003 = fadd fast float %2002, %1990
  %2004 = fmul float %2003, -5.000000e-01
  %2005 = fdiv fast float %2004, %1844
  %2006 = call float @dx.op.binary.f32(i32 35, float %2005, float 0.000000e+00)  ; FMax(a,b)
  %2007 = call float @dx.op.binary.f32(i32 36, float %1879, float %2006)  ; FMin(a,b)
  %2008 = fdiv fast float %1993, %2004
  %2009 = call float @dx.op.binary.f32(i32 35, float %2008, float 0.000000e+00)  ; FMax(a,b)
  %2010 = call float @dx.op.binary.f32(i32 36, float %1879, float %2009)  ; FMin(a,b)
  %2011 = call float @dx.op.binary.f32(i32 36, float %2007, float %2010)  ; FMin(a,b)
  %2012 = call float @dx.op.binary.f32(i32 35, float %2007, float %2010)  ; FMax(a,b)
  br label %2013

; <label>:2013                                    ; preds = %1998, %1974
  %2014 = phi float [ %2012, %1998 ], [ -1.000000e+00, %1974 ]
  %2015 = phi float [ %2011, %1998 ], [ -1.000000e+00, %1974 ]
  %2016 = phi i1 [ true, %1998 ], [ false, %1974 ]
  br i1 %2016, label %2017, label %2023

; <label>:2017                                    ; preds = %2013
  %2018 = call float @dx.op.binary.f32(i32 35, float %1962, float %2015)  ; FMax(a,b)
  %2019 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 %1976
  store float %2018, float* %2019, align 4, !tbaa !82, !noalias !86
  %2020 = call float @dx.op.binary.f32(i32 35, float %1962, float %2014)  ; FMax(a,b)
  %2021 = getelementptr inbounds [3 x float], [3 x float]* %57, i32 0, i32 %1976
  store float %2020, float* %2021, align 4, !tbaa !82, !noalias !86
  %2022 = add nsw i32 %1975, 1
  br label %2023

; <label>:2023                                    ; preds = %2017, %2013
  %2024 = phi i32 [ %2022, %2017 ], [ %1975, %2013 ]
  %2025 = add nuw nsw i32 %1976, 1
  %2026 = icmp eq i32 %2025, %1831
  br i1 %2026, label %2027, label %1974

; <label>:2027                                    ; preds = %2023
  %2028 = load float, float* %1968, align 4, !tbaa !82, !alias.scope !102, !noalias !105
  %2029 = load float, float* %1967, align 4, !tbaa !82, !alias.scope !108, !noalias !109
  %2030 = load float, float* %1966, align 4, !tbaa !82, !alias.scope !110, !noalias !111
  %2031 = load float, float* %1971, align 4, !tbaa !82, !alias.scope !112, !noalias !115
  %2032 = load float, float* %1970, align 4, !tbaa !82, !alias.scope !118, !noalias !119
  %2033 = load float, float* %1969, align 4, !tbaa !82, !alias.scope !120, !noalias !121
  br label %2034

; <label>:2034                                    ; preds = %2027, %1961
  %2035 = phi float [ -1.000000e+00, %1961 ], [ %2033, %2027 ]
  %2036 = phi float [ -1.000000e+00, %1961 ], [ %2032, %2027 ]
  %2037 = phi float [ -1.000000e+00, %1961 ], [ %2031, %2027 ]
  %2038 = phi float [ -1.000000e+00, %1961 ], [ %2030, %2027 ]
  %2039 = phi float [ -1.000000e+00, %1961 ], [ %2029, %2027 ]
  %2040 = phi float [ -1.000000e+00, %1961 ], [ %2028, %2027 ]
  %2041 = phi i32 [ 0, %1961 ], [ %2024, %2027 ]
  %2042 = call float @dx.op.binary.f32(i32 36, float %2039, float %2040)  ; FMin(a,b)
  %2043 = call float @dx.op.binary.f32(i32 36, float %2038, float %2042)  ; FMin(a,b)
  %2044 = call float @dx.op.binary.f32(i32 35, float %2038, float %2039)  ; FMax(a,b)
  %2045 = call float @dx.op.binary.f32(i32 36, float %2044, float %2040)  ; FMin(a,b)
  %2046 = call float @dx.op.binary.f32(i32 36, float %2038, float %2039)  ; FMin(a,b)
  %2047 = call float @dx.op.binary.f32(i32 35, float %2046, float %2045)  ; FMax(a,b)
  %2048 = call float @dx.op.binary.f32(i32 35, float %2039, float %2040)  ; FMax(a,b)
  %2049 = call float @dx.op.binary.f32(i32 35, float %2038, float %2048)  ; FMax(a,b)
  store float %2043, float* %1966, align 4, !tbaa !82, !alias.scope !110, !noalias !111
  store float %2047, float* %1967, align 4, !tbaa !82, !alias.scope !108, !noalias !109
  store float %2049, float* %1968, align 4, !tbaa !82, !alias.scope !102, !noalias !105
  %2050 = call float @dx.op.binary.f32(i32 36, float %2036, float %2037)  ; FMin(a,b)
  %2051 = call float @dx.op.binary.f32(i32 36, float %2035, float %2050)  ; FMin(a,b)
  %2052 = call float @dx.op.binary.f32(i32 35, float %2035, float %2036)  ; FMax(a,b)
  %2053 = call float @dx.op.binary.f32(i32 36, float %2052, float %2037)  ; FMin(a,b)
  %2054 = call float @dx.op.binary.f32(i32 36, float %2035, float %2036)  ; FMin(a,b)
  %2055 = call float @dx.op.binary.f32(i32 35, float %2054, float %2053)  ; FMax(a,b)
  %2056 = call float @dx.op.binary.f32(i32 35, float %2036, float %2037)  ; FMax(a,b)
  %2057 = call float @dx.op.binary.f32(i32 35, float %2035, float %2056)  ; FMax(a,b)
  store float %2051, float* %1969, align 4, !tbaa !82, !alias.scope !120, !noalias !121
  store float %2055, float* %1970, align 4, !tbaa !82, !alias.scope !118, !noalias !119
  store float %2057, float* %1971, align 4, !tbaa !82, !alias.scope !112, !noalias !115
  %2058 = sub nsw i32 3, %2041
  %2059 = icmp sgt i32 %2058, 2
  br i1 %2059, label %2060, label %2098

; <label>:2060                                    ; preds = %2034
  %2061 = icmp eq i32 %1829, 0
  %2062 = fsub fast float %1879, %1963
  %2063 = select i1 %2061, float %2062, float %1963
  %2064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2065 = extractvalue %dx.types.CBufRet.f32 %2064, 0
  %2066 = extractvalue %dx.types.CBufRet.f32 %2064, 1
  %2067 = extractvalue %dx.types.CBufRet.f32 %2064, 2
  %2068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2069 = extractvalue %dx.types.CBufRet.f32 %2068, 0
  %2070 = extractvalue %dx.types.CBufRet.f32 %2068, 1
  %2071 = extractvalue %dx.types.CBufRet.f32 %2068, 2
  %2072 = extractvalue %dx.types.CBufRet.f32 %2068, 3
  %2073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2074 = extractvalue %dx.types.CBufRet.f32 %2073, 3
  %2075 = call float @dx.op.binary.f32(i32 36, float %1964, float %2074)  ; FMin(a,b)
  %2076 = fmul fast float %2072, %2063
  %2077 = call float @dx.op.unary.f32(i32 7, float %2076)  ; Saturate(value)
  %2078 = fsub fast float %2069, %2065
  %2079 = fsub fast float %2070, %2066
  %2080 = fsub fast float %2071, %2067
  %2081 = fmul fast float %2077, %2078
  %2082 = fmul fast float %2077, %2079
  %2083 = fmul fast float %2077, %2080
  %2084 = fadd fast float %2081, %2065
  %2085 = fadd fast float %2082, %2066
  %2086 = fadd fast float %2083, %2067
  %2087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2088 = extractvalue %dx.types.CBufRet.f32 %2087, 0
  %2089 = extractvalue %dx.types.CBufRet.f32 %2087, 1
  %2090 = fadd fast float %2089, %2088
  %2091 = call float @dx.op.unary.f32(i32 7, float %2090)  ; Saturate(value)
  %2092 = extractvalue %dx.types.CBufRet.f32 %2087, 2
  %2093 = extractvalue %dx.types.CBufRet.f32 %2087, 3
  %2094 = fadd fast float %2093, %2092
  %2095 = call float @dx.op.unary.f32(i32 7, float %2094)  ; Saturate(value)
  %2096 = fmul fast float %2091, %2075
  %2097 = fmul fast float %2096, %2095
  br label %2180

; <label>:2098                                    ; preds = %2034
  %2099 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 %2058
  %2100 = load float, float* %2099, align 4, !tbaa !82, !noalias !86
  %2101 = fcmp fast olt float %2100, %1965
  %2102 = icmp sgt i32 %2041, 0
  %2103 = and i1 %2102, %2101
  br i1 %2103, label %2104, label %2141

; <label>:2104                                    ; preds = %2098
  br label %2105

; <label>:2105                                    ; preds = %2134, %2104
  %2106 = phi float [ %2135, %2134 ], [ %1963, %2104 ]
  %2107 = phi float [ %2136, %2134 ], [ %1964, %2104 ]
  %2108 = phi float [ %2116, %2134 ], [ %2100, %2104 ]
  %2109 = phi i32 [ %2113, %2134 ], [ %2058, %2104 ]
  %2110 = getelementptr inbounds [3 x float], [3 x float]* %57, i32 0, i32 %2109
  %2111 = load float, float* %2110, align 4, !tbaa !82, !noalias !86
  %2112 = icmp slt i32 %2109, 2
  %2113 = add nsw i32 %2109, 1
  %2114 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 %2113
  %2115 = load float, float* %2114, align 4, !tbaa !82, !noalias !86
  %2116 = select i1 %2112, float %2115, float %1879
  %2117 = call float @dx.op.binary.f32(i32 36, float %2116, float %2111)  ; FMin(a,b)
  %2118 = call float @dx.op.binary.f32(i32 36, float %1965, float %2117)  ; FMin(a,b)
  %2119 = icmp eq i32 %1829, 0
  %2120 = fadd fast float %2118, %2108
  %2121 = fmul fast float %2120, %1810
  %2122 = fadd fast float %2121, %1823
  br i1 %2119, label %2128, label %2123

; <label>:2123                                    ; preds = %2105
  %2124 = fsub fast float %2118, %2108
  %2125 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2124)  ; FMax(a,b)
  %2126 = fmul fast float %2125, %2122
  %2127 = fadd fast float %2126, %2107
  br label %2134

; <label>:2128                                    ; preds = %2105
  %2129 = fsub fast float %2108, %2118
  %2130 = call float @dx.op.unary.f32(i32 6, float %2129)  ; FAbs(value)
  %2131 = fadd fast float %2130, %2106
  %2132 = fmul fast float %2130, %2122
  %2133 = fsub fast float %2107, %2132
  br label %2134

; <label>:2134                                    ; preds = %2128, %2123
  %2135 = phi float [ %2125, %2123 ], [ %2131, %2128 ]
  %2136 = phi float [ %2127, %2123 ], [ %2133, %2128 ]
  %2137 = fcmp fast olt float %2116, %1965
  %2138 = icmp slt i32 %2113, 3
  %2139 = and i1 %2138, %2137
  br i1 %2139, label %2105, label %2140

; <label>:2140                                    ; preds = %2134
  br label %2141

; <label>:2141                                    ; preds = %2140, %2098
  %2142 = phi float [ %1963, %2098 ], [ %2135, %2140 ]
  %2143 = phi float [ %1964, %2098 ], [ %2136, %2140 ]
  %2144 = fsub fast float %1879, %2142
  %2145 = select i1 %1881, float %2142, float %2144
  %2146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2147 = extractvalue %dx.types.CBufRet.f32 %2146, 0
  %2148 = extractvalue %dx.types.CBufRet.f32 %2146, 1
  %2149 = extractvalue %dx.types.CBufRet.f32 %2146, 2
  %2150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2151 = extractvalue %dx.types.CBufRet.f32 %2150, 0
  %2152 = extractvalue %dx.types.CBufRet.f32 %2150, 1
  %2153 = extractvalue %dx.types.CBufRet.f32 %2150, 2
  %2154 = extractvalue %dx.types.CBufRet.f32 %2150, 3
  %2155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2156 = extractvalue %dx.types.CBufRet.f32 %2155, 3
  %2157 = call float @dx.op.binary.f32(i32 36, float %2143, float %2156)  ; FMin(a,b)
  %2158 = fmul fast float %2154, %2145
  %2159 = call float @dx.op.unary.f32(i32 7, float %2158)  ; Saturate(value)
  %2160 = fsub fast float %2151, %2147
  %2161 = fsub fast float %2152, %2148
  %2162 = fsub fast float %2153, %2149
  %2163 = fmul fast float %2159, %2160
  %2164 = fmul fast float %2159, %2161
  %2165 = fmul fast float %2159, %2162
  %2166 = fadd fast float %2163, %2147
  %2167 = fadd fast float %2164, %2148
  %2168 = fadd fast float %2165, %2149
  %2169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2170 = extractvalue %dx.types.CBufRet.f32 %2169, 0
  %2171 = extractvalue %dx.types.CBufRet.f32 %2169, 1
  %2172 = fadd fast float %2171, %2170
  %2173 = call float @dx.op.unary.f32(i32 7, float %2172)  ; Saturate(value)
  %2174 = extractvalue %dx.types.CBufRet.f32 %2169, 2
  %2175 = extractvalue %dx.types.CBufRet.f32 %2169, 3
  %2176 = fadd fast float %2175, %2174
  %2177 = call float @dx.op.unary.f32(i32 7, float %2176)  ; Saturate(value)
  %2178 = fmul fast float %2173, %2157
  %2179 = fmul fast float %2178, %2177
  br label %2180

; <label>:2180                                    ; preds = %2141, %2060, %1895, %1877, %1875
  %2181 = phi float [ %1904, %1895 ], [ %2063, %2060 ], [ %2145, %2141 ], [ 0.000000e+00, %1875 ], [ 0.000000e+00, %1877 ]
  %2182 = phi float [ %1938, %1895 ], [ %2097, %2060 ], [ %2179, %2141 ], [ 0.000000e+00, %1875 ], [ 0.000000e+00, %1877 ]
  %2183 = phi float [ %1925, %1895 ], [ %2084, %2060 ], [ %2166, %2141 ], [ 0.000000e+00, %1875 ], [ 0.000000e+00, %1877 ]
  %2184 = phi float [ %1926, %1895 ], [ %2085, %2060 ], [ %2167, %2141 ], [ 0.000000e+00, %1875 ], [ 0.000000e+00, %1877 ]
  %2185 = phi float [ %1927, %1895 ], [ %2086, %2060 ], [ %2168, %2141 ], [ 0.000000e+00, %1875 ], [ 0.000000e+00, %1877 ]
  %2186 = fmul fast float %1818, %2182
  %2187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2188 = extractvalue %dx.types.CBufRet.f32 %2187, 2
  %2189 = fsub fast float %1825, %2188
  %2190 = fcmp fast olt float %2186, -2.000000e+01
  %2191 = call float @dx.op.unary.f32(i32 21, float %2186)  ; Exp(value)
  %2192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2193 = extractvalue %dx.types.CBufRet.f32 %2192, 2
  %2194 = extractvalue %dx.types.CBufRet.f32 %2192, 3
  %2195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2196 = extractvalue %dx.types.CBufRet.f32 %2195, 2
  %2197 = fmul fast float %2194, %2189
  %2198 = call float @dx.op.unary.f32(i32 7, float %2197)  ; Saturate(value)
  %2199 = fsub fast float 1.000000e+00, %2198
  %2200 = fmul fast float %1810, 5.000000e-01
  %2201 = fadd fast float %2200, 5.000000e-01
  %2202 = call float @dx.op.unary.f32(i32 7, float %2201)  ; Saturate(value)
  %2203 = fsub fast float 1.000000e+00, %2202
  %2204 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2199)  ; FMax(a,b)
  %2205 = fdiv fast float %2203, %2204
  %2206 = fsub fast float %2189, %1767
  %2207 = call float @dx.op.unary.f32(i32 6, float %2206)  ; FAbs(value)
  %2208 = fmul fast float %2207, %2193
  %2209 = call float @dx.op.unary.f32(i32 7, float %2205)  ; Saturate(value)
  %2210 = fsub fast float 1.000000e+00, %2208
  %2211 = fmul fast float %2210, %2209
  %2212 = fadd fast float %2211, %2208
  %2213 = fmul fast float %2196, %2189
  %2214 = call float @dx.op.unary.f32(i32 7, float %2213)  ; Saturate(value)
  %2215 = fsub fast float 1.000000e+00, %2212
  %2216 = fmul fast float %2215, %2214
  %2217 = fadd fast float %2216, %2212
  %2218 = call float @dx.op.unary.f32(i32 7, float %2217)  ; Saturate(value)
  %2219 = fadd fast float %2191, -1.000000e+00
  %2220 = select i1 %2190, float -1.000000e+00, float %2219
  %2221 = fmul fast float %2218, %2220
  %2222 = fadd fast float %2221, 1.000000e+00
  %2223 = fsub fast float -0.000000e+00, %2221
  %2224 = fmul fast float %2183, %2223
  %2225 = fmul fast float %2184, %2223
  %2226 = fmul fast float %2185, %2223
  br label %2227

; <label>:2227                                    ; preds = %2180, %1776
  %2228 = phi float [ %2181, %2180 ], [ 0.000000e+00, %1776 ]
  %2229 = phi float [ %2222, %2180 ], [ 1.000000e+00, %1776 ]
  %2230 = phi float [ %2224, %2180 ], [ 0.000000e+00, %1776 ]
  %2231 = phi float [ %2225, %2180 ], [ 0.000000e+00, %1776 ]
  %2232 = phi float [ %2226, %2180 ], [ 0.000000e+00, %1776 ]
  %2233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2234 = extractvalue %dx.types.CBufRet.f32 %2233, 1
  %2235 = fsub fast float 1.000000e+00, %2229
  %2236 = fmul fast float %2235, %1811
  %2237 = fmul fast float %2236, %2234
  %2238 = fsub fast float %1811, %2237
  br i1 %1804, label %2239, label %2268, !dx.controlflow.hints !122

; <label>:2239                                    ; preds = %2227
  %2240 = fmul fast float %1812, %1801
  %2241 = fadd fast float %2240, %1802
  %2242 = call float @dx.op.unary.f32(i32 7, float %2241)  ; Saturate(value)
  %2243 = fmul fast float %1783, %2238
  %2244 = fsub fast float -0.000000e+00, %2243
  %2245 = fmul fast float %1784, %2238
  %2246 = fsub fast float -0.000000e+00, %2245
  %2247 = call float @dx.op.unary.f32(i32 21, float %2244)  ; Exp(value)
  %2248 = call float @dx.op.unary.f32(i32 21, float %2246)  ; Exp(value)
  %2249 = call float @dx.op.binary.f32(i32 35, float %1791, float %2247)  ; FMax(a,b)
  %2250 = call float @dx.op.binary.f32(i32 35, float %1791, float %2248)  ; FMax(a,b)
  %2251 = fsub fast float %2250, %2249
  %2252 = fmul fast float %2251, %2242
  %2253 = fadd fast float %2252, %2249
  %2254 = call float @dx.op.unary.f32(i32 7, float %2253)  ; Saturate(value)
  %2255 = fsub fast float %1788, %1793
  %2256 = fsub fast float %1789, %1794
  %2257 = fsub fast float %1790, %1795
  %2258 = fmul fast float %2242, %2255
  %2259 = fmul fast float %2242, %2256
  %2260 = fmul fast float %2242, %2257
  %2261 = fadd fast float %2258, %1793
  %2262 = fadd fast float %2259, %1794
  %2263 = fadd fast float %2260, %1795
  %2264 = fsub fast float 1.000000e+00, %2254
  %2265 = fmul fast float %2264, %2261
  %2266 = fmul fast float %2264, %2262
  %2267 = fmul fast float %2264, %2263
  br label %2327

; <label>:2268                                    ; preds = %2227
  %2269 = fmul fast float %2238, %1800
  %2270 = call float @dx.op.unary.f32(i32 7, float %2269)  ; Saturate(value)
  %2271 = fsub fast float 2.000000e+00, %2270
  %2272 = fmul fast float %2270, 9.921875e-01
  %2273 = fmul fast float %2272, %2271
  %2274 = fadd fast float %2273, 3.906250e-03
  %2275 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %26, float %2274, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2276 = extractvalue %dx.types.ResRet.f32 %2275, 0
  %2277 = fsub fast float %2270, %2276
  %2278 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2277)  ; FMax(a,b)
  %2279 = fmul fast float %1786, %1767
  %2280 = call float @dx.op.unary.f32(i32 6, float %2279)  ; FAbs(value)
  %2281 = fcmp fast ogt float %2280, 0x3EB0C6F7A0000000
  br i1 %2281, label %2282, label %2288, !dx.controlflow.hints !123

; <label>:2282                                    ; preds = %2268
  %2283 = fmul fast float %2279, 0xBFF7154760000000
  %2284 = call float @dx.op.unary.f32(i32 21, float %2283)  ; Exp(value)
  %2285 = fsub fast float 1.000000e+00, %2284
  %2286 = fdiv fast float %2285, %2279
  %2287 = fmul fast float %2286, %1796
  br label %2288

; <label>:2288                                    ; preds = %2282, %2268
  %2289 = phi float [ %2287, %2282 ], [ %1796, %2268 ]
  %2290 = fadd fast float %2289, %1798
  %2291 = fmul fast float %2290, %2278
  %2292 = fmul fast float %1783, %2291
  %2293 = fsub fast float -0.000000e+00, %2292
  %2294 = fmul fast float %1784, %2291
  %2295 = fsub fast float -0.000000e+00, %2294
  %2296 = fmul fast float %1785, %2291
  %2297 = fsub fast float -0.000000e+00, %2296
  %2298 = call float @dx.op.unary.f32(i32 21, float %2293)  ; Exp(value)
  %2299 = call float @dx.op.unary.f32(i32 21, float %2295)  ; Exp(value)
  %2300 = call float @dx.op.unary.f32(i32 21, float %2297)  ; Exp(value)
  %2301 = fmul fast float %1812, %1812
  %2302 = fadd fast float %2301, 1.000000e+00
  %2303 = fmul fast float %2302, 0x3FAE8EC8A0000000
  %2304 = fmul fast float %2303, %1793
  %2305 = fmul fast float %2303, %1794
  %2306 = fmul fast float %2303, %1795
  %2307 = fmul fast float %1812, %1791
  %2308 = fsub fast float 1.000000e+00, %2307
  %2309 = fmul fast float %1791, %1791
  %2310 = fsub fast float 1.000000e+00, %2309
  %2311 = fmul fast float %2310, 0x3FB45F3060000000
  %2312 = fmul fast float %2308, %2308
  %2313 = fdiv fast float 1.000000e+00, %2312
  %2314 = fmul fast float %2311, %2313
  %2315 = fmul fast float %2314, %1788
  %2316 = fmul fast float %2314, %1789
  %2317 = fmul fast float %2314, %1790
  %2318 = fadd fast float %2315, %2304
  %2319 = fadd fast float %2316, %2305
  %2320 = fadd fast float %2317, %2306
  %2321 = fsub fast float 1.000000e+00, %2298
  %2322 = fsub fast float 1.000000e+00, %2299
  %2323 = fsub fast float 1.000000e+00, %2300
  %2324 = fmul fast float %2318, %2321
  %2325 = fmul fast float %2319, %2322
  %2326 = fmul fast float %2320, %2323
  br label %2327

; <label>:2327                                    ; preds = %2288, %2239
  %2328 = phi float [ %2265, %2239 ], [ %2324, %2288 ]
  %2329 = phi float [ %2266, %2239 ], [ %2325, %2288 ]
  %2330 = phi float [ %2267, %2239 ], [ %2326, %2288 ]
  %2331 = phi float [ %2254, %2239 ], [ %2298, %2288 ]
  %2332 = phi float [ %2254, %2239 ], [ %2299, %2288 ]
  %2333 = phi float [ %2254, %2239 ], [ %2300, %2288 ]
  br i1 %1820, label %2334, label %2532, !dx.controlflow.hints !124

; <label>:2334                                    ; preds = %2327
  %2335 = extractvalue %dx.types.CBufRet.f32 %2233, 0
  %2336 = fmul fast float %2335, %2235
  %2337 = fsub fast float %2230, %2328
  %2338 = fsub fast float %2231, %2329
  %2339 = fsub fast float %2232, %2330
  %2340 = fmul fast float %2336, %2337
  %2341 = fmul fast float %2336, %2338
  %2342 = fmul fast float %2336, %2339
  %2343 = fadd fast float %2340, %2328
  %2344 = fadd fast float %2341, %2329
  %2345 = fadd fast float %2342, %2330
  %2346 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2331)  ; FMax(a,b)
  %2347 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2332)  ; FMax(a,b)
  %2348 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2333)  ; FMax(a,b)
  %2349 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2229)  ; FMax(a,b)
  %2350 = call float @dx.op.binary.f32(i32 35, float %2228, float %2238)  ; FMax(a,b)
  %2351 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2350)  ; FMax(a,b)
  %2352 = fdiv fast float %2228, %2351
  %2353 = call float @dx.op.unary.f32(i32 7, float %2352)  ; Saturate(value)
  %2354 = fdiv fast float %2238, %2351
  %2355 = call float @dx.op.unary.f32(i32 7, float %2354)  ; Saturate(value)
  %2356 = fcmp fast une float %2349, 1.000000e+00
  br i1 %2356, label %2357, label %2370, !dx.controlflow.hints !125

; <label>:2357                                    ; preds = %2334
  %2358 = call float @dx.op.unary.f32(i32 23, float %2349)  ; Log(value)
  %2359 = fmul fast float %2358, 0x3FE62E4300000000
  %2360 = fmul fast float %2230, %2359
  %2361 = fsub fast float -0.000000e+00, %2360
  %2362 = fmul fast float %2231, %2359
  %2363 = fsub fast float -0.000000e+00, %2362
  %2364 = fmul fast float %2232, %2359
  %2365 = fsub fast float -0.000000e+00, %2364
  %2366 = fsub fast float 1.000000e+00, %2349
  %2367 = fdiv fast float %2361, %2366
  %2368 = fdiv fast float %2363, %2366
  %2369 = fdiv fast float %2365, %2366
  br label %2370

; <label>:2370                                    ; preds = %2357, %2334
  %2371 = phi float [ %2367, %2357 ], [ %2230, %2334 ]
  %2372 = phi float [ %2368, %2357 ], [ %2231, %2334 ]
  %2373 = phi float [ %2369, %2357 ], [ %2232, %2334 ]
  %2374 = phi float [ %2359, %2357 ], [ 0.000000e+00, %2334 ]
  %2375 = fcmp fast une float %2346, 1.000000e+00
  br i1 %2375, label %2376, label %2383, !dx.controlflow.hints !126

; <label>:2376                                    ; preds = %2370
  %2377 = call float @dx.op.unary.f32(i32 23, float %2346)  ; Log(value)
  %2378 = fmul fast float %2377, 0x3FE62E4300000000
  %2379 = fmul fast float %2343, %2378
  %2380 = fsub fast float -0.000000e+00, %2379
  %2381 = fsub fast float 1.000000e+00, %2346
  %2382 = fdiv fast float %2380, %2381
  br label %2383

; <label>:2383                                    ; preds = %2376, %2370
  %2384 = phi float [ %2382, %2376 ], [ %2343, %2370 ]
  %2385 = phi float [ %2378, %2376 ], [ 0.000000e+00, %2370 ]
  %2386 = fcmp fast une float %2347, 1.000000e+00
  br i1 %2386, label %2387, label %2394, !dx.controlflow.hints !126

; <label>:2387                                    ; preds = %2383
  %2388 = call float @dx.op.unary.f32(i32 23, float %2347)  ; Log(value)
  %2389 = fmul fast float %2388, 0x3FE62E4300000000
  %2390 = fmul fast float %2344, %2389
  %2391 = fsub fast float -0.000000e+00, %2390
  %2392 = fsub fast float 1.000000e+00, %2347
  %2393 = fdiv fast float %2391, %2392
  br label %2394

; <label>:2394                                    ; preds = %2387, %2383
  %2395 = phi float [ %2393, %2387 ], [ %2344, %2383 ]
  %2396 = phi float [ %2389, %2387 ], [ 0.000000e+00, %2383 ]
  %2397 = fcmp fast une float %2348, 1.000000e+00
  br i1 %2397, label %2398, label %2405, !dx.controlflow.hints !126

; <label>:2398                                    ; preds = %2394
  %2399 = call float @dx.op.unary.f32(i32 23, float %2348)  ; Log(value)
  %2400 = fmul fast float %2399, 0x3FE62E4300000000
  %2401 = fmul fast float %2345, %2400
  %2402 = fsub fast float -0.000000e+00, %2401
  %2403 = fsub fast float 1.000000e+00, %2348
  %2404 = fdiv fast float %2402, %2403
  br label %2405

; <label>:2405                                    ; preds = %2398, %2394
  %2406 = phi float [ %2404, %2398 ], [ %2345, %2394 ]
  %2407 = phi float [ %2400, %2398 ], [ 0.000000e+00, %2394 ]
  %2408 = fmul fast float %2371, %2355
  %2409 = fmul fast float %2372, %2355
  %2410 = fmul fast float %2373, %2355
  %2411 = fmul fast float %2374, %2355
  %2412 = fmul fast float %2384, %2353
  %2413 = fmul fast float %2395, %2353
  %2414 = fmul fast float %2406, %2353
  %2415 = fmul fast float %2385, %2353
  %2416 = fmul fast float %2396, %2353
  %2417 = fmul fast float %2407, %2353
  %2418 = fadd fast float %2412, %2408
  %2419 = fadd fast float %2413, %2409
  %2420 = fadd fast float %2414, %2410
  %2421 = fadd fast float %2415, %2411
  %2422 = fadd fast float %2416, %2411
  %2423 = fadd fast float %2417, %2411
  %2424 = fcmp fast une float %2421, 0.000000e+00
  br i1 %2424, label %2425, label %2432, !dx.controlflow.hints !127

; <label>:2425                                    ; preds = %2405
  %2426 = fmul fast float %2421, 0x3FF7154760000000
  %2427 = call float @dx.op.unary.f32(i32 21, float %2426)  ; Exp(value)
  %2428 = fsub fast float 1.000000e+00, %2427
  %2429 = fmul fast float %2418, %2428
  %2430 = fsub fast float -0.000000e+00, %2429
  %2431 = fdiv fast float %2430, %2421
  br label %2432

; <label>:2432                                    ; preds = %2425, %2405
  %2433 = phi float [ %2427, %2425 ], [ 1.000000e+00, %2405 ]
  %2434 = phi float [ %2431, %2425 ], [ %2418, %2405 ]
  %2435 = fcmp fast une float %2422, 0.000000e+00
  br i1 %2435, label %2436, label %2443, !dx.controlflow.hints !127

; <label>:2436                                    ; preds = %2432
  %2437 = fmul fast float %2422, 0x3FF7154760000000
  %2438 = call float @dx.op.unary.f32(i32 21, float %2437)  ; Exp(value)
  %2439 = fsub fast float 1.000000e+00, %2438
  %2440 = fmul fast float %2419, %2439
  %2441 = fsub fast float -0.000000e+00, %2440
  %2442 = fdiv fast float %2441, %2422
  br label %2443

; <label>:2443                                    ; preds = %2436, %2432
  %2444 = phi float [ %2438, %2436 ], [ 1.000000e+00, %2432 ]
  %2445 = phi float [ %2442, %2436 ], [ %2419, %2432 ]
  %2446 = fcmp fast une float %2423, 0.000000e+00
  br i1 %2446, label %2447, label %2454, !dx.controlflow.hints !127

; <label>:2447                                    ; preds = %2443
  %2448 = fmul fast float %2423, 0x3FF7154760000000
  %2449 = call float @dx.op.unary.f32(i32 21, float %2448)  ; Exp(value)
  %2450 = fsub fast float 1.000000e+00, %2449
  %2451 = fmul fast float %2420, %2450
  %2452 = fsub fast float -0.000000e+00, %2451
  %2453 = fdiv fast float %2452, %2423
  br label %2454

; <label>:2454                                    ; preds = %2447, %2443
  %2455 = phi float [ %2449, %2447 ], [ 1.000000e+00, %2443 ]
  %2456 = phi float [ %2453, %2447 ], [ %2420, %2443 ]
  %2457 = fcmp fast ogt float %2353, %2355
  br i1 %2457, label %2458, label %2478

; <label>:2458                                    ; preds = %2454
  %2459 = fsub fast float 1.000000e+00, %2355
  %2460 = fmul fast float %2371, %2459
  %2461 = fmul fast float %2372, %2459
  %2462 = fmul fast float %2373, %2459
  %2463 = fmul fast float %2374, %2459
  %2464 = fcmp fast une float %2463, 0.000000e+00
  br i1 %2464, label %2465, label %2516, !dx.controlflow.hints !128

; <label>:2465                                    ; preds = %2458
  %2466 = fmul fast float %2463, 0x3FF7154760000000
  %2467 = call float @dx.op.unary.f32(i32 21, float %2466)  ; Exp(value)
  %2468 = fsub fast float 1.000000e+00, %2467
  %2469 = fmul fast float %2460, %2468
  %2470 = fsub fast float -0.000000e+00, %2469
  %2471 = fmul fast float %2461, %2468
  %2472 = fsub fast float -0.000000e+00, %2471
  %2473 = fmul fast float %2462, %2468
  %2474 = fsub fast float -0.000000e+00, %2473
  %2475 = fdiv fast float %2470, %2463
  %2476 = fdiv fast float %2472, %2463
  %2477 = fdiv fast float %2474, %2463
  br label %2516

; <label>:2478                                    ; preds = %2454
  %2479 = fsub fast float 1.000000e+00, %2353
  %2480 = fmul fast float %2384, %2479
  %2481 = fmul fast float %2395, %2479
  %2482 = fmul fast float %2406, %2479
  %2483 = fmul fast float %2385, %2479
  %2484 = fmul fast float %2396, %2479
  %2485 = fmul fast float %2407, %2479
  %2486 = fcmp fast une float %2483, 0.000000e+00
  br i1 %2486, label %2487, label %2494, !dx.controlflow.hints !127

; <label>:2487                                    ; preds = %2478
  %2488 = fmul fast float %2483, 0x3FF7154760000000
  %2489 = call float @dx.op.unary.f32(i32 21, float %2488)  ; Exp(value)
  %2490 = fsub fast float 1.000000e+00, %2489
  %2491 = fmul fast float %2480, %2490
  %2492 = fsub fast float -0.000000e+00, %2491
  %2493 = fdiv fast float %2492, %2483
  br label %2494

; <label>:2494                                    ; preds = %2487, %2478
  %2495 = phi float [ %2493, %2487 ], [ %2480, %2478 ]
  %2496 = phi float [ %2489, %2487 ], [ 1.000000e+00, %2478 ]
  %2497 = fcmp fast une float %2484, 0.000000e+00
  br i1 %2497, label %2498, label %2505, !dx.controlflow.hints !127

; <label>:2498                                    ; preds = %2494
  %2499 = fmul fast float %2484, 0x3FF7154760000000
  %2500 = call float @dx.op.unary.f32(i32 21, float %2499)  ; Exp(value)
  %2501 = fsub fast float 1.000000e+00, %2500
  %2502 = fmul fast float %2481, %2501
  %2503 = fsub fast float -0.000000e+00, %2502
  %2504 = fdiv fast float %2503, %2484
  br label %2505

; <label>:2505                                    ; preds = %2498, %2494
  %2506 = phi float [ %2504, %2498 ], [ %2481, %2494 ]
  %2507 = phi float [ %2500, %2498 ], [ 1.000000e+00, %2494 ]
  %2508 = fcmp fast une float %2485, 0.000000e+00
  br i1 %2508, label %2509, label %2516, !dx.controlflow.hints !127

; <label>:2509                                    ; preds = %2505
  %2510 = fmul fast float %2485, 0x3FF7154760000000
  %2511 = call float @dx.op.unary.f32(i32 21, float %2510)  ; Exp(value)
  %2512 = fsub fast float 1.000000e+00, %2511
  %2513 = fmul fast float %2482, %2512
  %2514 = fsub fast float -0.000000e+00, %2513
  %2515 = fdiv fast float %2514, %2485
  br label %2516

; <label>:2516                                    ; preds = %2509, %2505, %2465, %2458
  %2517 = phi float [ %2515, %2509 ], [ %2477, %2465 ], [ %2462, %2458 ], [ %2482, %2505 ]
  %2518 = phi float [ %2506, %2509 ], [ %2476, %2465 ], [ %2461, %2458 ], [ %2506, %2505 ]
  %2519 = phi float [ %2495, %2509 ], [ %2475, %2465 ], [ %2460, %2458 ], [ %2495, %2505 ]
  %2520 = phi float [ %2511, %2509 ], [ %2467, %2465 ], [ 1.000000e+00, %2458 ], [ 1.000000e+00, %2505 ]
  %2521 = phi float [ %2507, %2509 ], [ %2467, %2465 ], [ 1.000000e+00, %2458 ], [ %2507, %2505 ]
  %2522 = phi float [ %2496, %2509 ], [ %2467, %2465 ], [ 1.000000e+00, %2458 ], [ %2496, %2505 ]
  %2523 = fmul fast float %2522, %2434
  %2524 = fmul fast float %2521, %2445
  %2525 = fmul fast float %2520, %2456
  %2526 = fadd fast float %2523, %2519
  %2527 = fadd fast float %2524, %2518
  %2528 = fadd fast float %2525, %2517
  %2529 = fmul fast float %2522, %2433
  %2530 = fmul fast float %2521, %2444
  %2531 = fmul fast float %2520, %2455
  br label %2532

; <label>:2532                                    ; preds = %2516, %2327
  %2533 = phi float [ %2531, %2516 ], [ %2333, %2327 ]
  %2534 = phi float [ %2530, %2516 ], [ %2332, %2327 ]
  %2535 = phi float [ %2529, %2516 ], [ %2331, %2327 ]
  %2536 = phi float [ %2528, %2516 ], [ %2330, %2327 ]
  %2537 = phi float [ %2527, %2516 ], [ %2329, %2327 ]
  %2538 = phi float [ %2526, %2516 ], [ %2328, %2327 ]
  %2539 = fmul fast float %2538, %1512
  %2540 = fmul fast float %2537, %1512
  %2541 = fmul fast float %2536, %1512
  %2542 = fmul fast float %2535, %1775
  %2543 = call float @dx.op.dot3.f32(i32 55, float %2535, float %2534, float %2533, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2544 = call float @dx.op.dot3.f32(i32 55, float %2539, float %2540, float %2541, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2545 = select i1 %133, float %2543, float %2535
  %2546 = select i1 %133, float %2543, float %2534
  %2547 = select i1 %133, float 1.000000e+00, float %2533
  %2548 = select i1 %133, float %2544, float %2539
  %2549 = select i1 %133, float 0.000000e+00, float %2540
  %2550 = select i1 %133, float 0.000000e+00, float %2541
  %2551 = fmul fast float %2545, %1769
  %2552 = fmul fast float %2546, %1770
  %2553 = fmul fast float %2547, %1771
  %2554 = fadd fast float %2551, %2548
  %2555 = fadd fast float %2552, %2549
  %2556 = fadd fast float %2550, %2553
  %2557 = fmul fast float %2545, %1772
  %2558 = fmul fast float %2546, %1773
  %2559 = fmul fast float %2547, %1774
  %2560 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2561 = extractvalue %dx.types.CBufRet.i32 %2560, 0
  %2562 = icmp eq i32 %2561, 0
  br i1 %2562, label %2831, label %2563, !dx.controlflow.hints !129

; <label>:2563                                    ; preds = %2532
  %2564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2565 = extractvalue %dx.types.CBufRet.f32 %2564, 2
  %2566 = extractvalue %dx.types.CBufRet.f32 %2564, 3
  %2567 = fmul fast float %2565, %62
  %2568 = fmul fast float %2566, %63
  %2569 = fmul fast float %2567, 2.000000e+00
  %2570 = fmul fast float %2568, 2.000000e+00
  %2571 = fsub fast float 1.000000e+00, %2569
  %2572 = fsub fast float 1.000000e+00, %2570
  %2573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2574 = extractvalue %dx.types.CBufRet.f32 %2573, 0
  %2575 = extractvalue %dx.types.CBufRet.f32 %2573, 1
  %2576 = extractvalue %dx.types.CBufRet.f32 %2573, 2
  %2577 = fmul fast float %2571, %2574
  %2578 = fmul fast float %2571, %2575
  %2579 = fmul fast float %2571, %2576
  %2580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2581 = extractvalue %dx.types.CBufRet.f32 %2580, 0
  %2582 = extractvalue %dx.types.CBufRet.f32 %2580, 1
  %2583 = extractvalue %dx.types.CBufRet.f32 %2580, 2
  %2584 = fmul fast float %2572, %2581
  %2585 = fmul fast float %2572, %2582
  %2586 = fmul fast float %2572, %2583
  %2587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2588 = extractvalue %dx.types.CBufRet.f32 %2587, 0
  %2589 = extractvalue %dx.types.CBufRet.f32 %2587, 1
  %2590 = extractvalue %dx.types.CBufRet.f32 %2587, 2
  %2591 = fadd fast float %2584, %2588
  %2592 = fadd fast float %2591, %2577
  %2593 = fadd fast float %2585, %2589
  %2594 = fadd fast float %2593, %2578
  %2595 = fadd fast float %2586, %2590
  %2596 = fadd fast float %2595, %2579
  %2597 = fmul fast float %2592, %1768
  %2598 = fmul fast float %2594, %1768
  %2599 = fmul fast float %2596, %1768
  %2600 = fmul fast float %2597, %2597
  %2601 = fmul fast float %2598, %2598
  %2602 = fadd fast float %2600, %2601
  %2603 = fmul fast float %2599, %2599
  %2604 = fadd fast float %2602, %2603
  %2605 = call float @dx.op.unary.f32(i32 24, float %2604)  ; Sqrt(value)
  %2606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2607 = extractvalue %dx.types.CBufRet.f32 %2606, 0
  %2608 = fsub fast float %2605, %2607
  %2609 = extractvalue %dx.types.CBufRet.f32 %2606, 2
  %2610 = fmul fast float %2608, %2609
  %2611 = call float @dx.op.unary.f32(i32 7, float %2610)  ; Saturate(value)
  %2612 = fadd fast float %2611, -5.000000e-01
  %2613 = fmul fast float %2612, 2.000000e+00
  %2614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2615 = extractvalue %dx.types.CBufRet.f32 %2614, 2
  %2616 = call float @dx.op.binary.f32(i32 36, float %2615, float %2613)  ; FMin(a,b)
  %2617 = fsub fast float -0.000000e+00, %2615
  %2618 = fcmp fast ogt float %2616, %2617
  br i1 %2618, label %2619, label %2831, !dx.controlflow.hints !130

; <label>:2619                                    ; preds = %2563
  %2620 = fmul fast float %2616, 5.000000e-01
  %2621 = fadd fast float %2620, 5.000000e-01
  %2622 = call float @dx.op.unary.f32(i32 22, float %2621)  ; Frc(value)
  %2623 = call float @dx.op.unary.f32(i32 27, float %2622)  ; Round_ni(value)
  %2624 = call float @dx.op.unary.f32(i32 22, float %2622)  ; Frc(value)
  %2625 = fmul fast float %2624, 2.000000e+00
  %2626 = fadd fast float %2625, -1.000000e+00
  %2627 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %26, float %2567, float %2568, float %2623, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2628 = extractvalue %dx.types.ResRet.f32 %2627, 0
  %2629 = extractvalue %dx.types.ResRet.f32 %2627, 1
  %2630 = extractvalue %dx.types.ResRet.f32 %2627, 2
  %2631 = extractvalue %dx.types.ResRet.f32 %2627, 3
  %2632 = fadd fast float %2628, -5.000000e-01
  %2633 = fadd fast float %2630, -5.000000e-01
  %2634 = fmul fast float %2632, 0xBFD5555560000000
  %2635 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2633, float %2634)  ; FMad(a,b,c)
  %2636 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2629, float 0.000000e+00)  ; FMad(a,b,c)
  %2637 = fadd fast float %2636, %2631
  %2638 = fmul fast float %2632, -7.500000e-01
  %2639 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2633, float %2638)  ; FMad(a,b,c)
  %2640 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2629, float 0.000000e+00)  ; FMad(a,b,c)
  %2641 = fadd fast float %2640, %2631
  %2642 = call float @dx.op.binary.f32(i32 35, float %2635, float -1.000000e+00)  ; FMax(a,b)
  %2643 = call float @dx.op.binary.f32(i32 35, float %2637, float -1.000000e+00)  ; FMax(a,b)
  %2644 = call float @dx.op.binary.f32(i32 35, float %2639, float -1.000000e+00)  ; FMax(a,b)
  %2645 = call float @dx.op.binary.f32(i32 35, float %2641, float -1.000000e+00)  ; FMax(a,b)
  %2646 = call float @dx.op.binary.f32(i32 36, float %2642, float 1.000000e+00)  ; FMin(a,b)
  %2647 = call float @dx.op.binary.f32(i32 36, float %2643, float 1.000000e+00)  ; FMin(a,b)
  %2648 = call float @dx.op.binary.f32(i32 36, float %2644, float 1.000000e+00)  ; FMin(a,b)
  %2649 = call float @dx.op.binary.f32(i32 36, float %2645, float 1.000000e+00)  ; FMin(a,b)
  %2650 = fcmp fast olt float %2646, 0x3FEFFF8020000000
  br i1 %2650, label %2651, label %2766, !dx.controlflow.hints !131

; <label>:2651                                    ; preds = %2619
  %2652 = extractvalue %dx.types.CBufRet.f32 %2614, 3
  %2653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %2654 = extractvalue %dx.types.CBufRet.f32 %2653, 0
  %2655 = extractvalue %dx.types.CBufRet.f32 %2653, 1
  %2656 = extractvalue %dx.types.CBufRet.f32 %2653, 2
  %2657 = extractvalue %dx.types.CBufRet.f32 %2653, 3
  %2658 = fsub fast float %2654, %2646
  %2659 = fsub fast float %2655, %2647
  %2660 = fsub fast float %2656, %2648
  %2661 = fsub fast float %2657, %2649
  %2662 = fmul fast float %2658, %2652
  %2663 = fmul fast float %2659, %2652
  %2664 = fmul fast float %2660, %2652
  %2665 = fmul fast float %2661, %2652
  %2666 = fadd fast float %2662, %2646
  %2667 = fadd fast float %2663, %2647
  %2668 = fsub fast float -0.000000e+00, %2667
  %2669 = fadd fast float %2664, %2648
  %2670 = fadd fast float %2665, %2649
  %2671 = fmul fast float %2666, %2666
  %2672 = fsub fast float %2667, %2671
  %2673 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2672)  ; FMax(a,b)
  %2674 = fdiv fast float 1.000000e+00, %2673
  %2675 = fmul fast float %2667, %2666
  %2676 = fsub fast float %2669, %2675
  %2677 = fsub fast float %2626, %2666
  %2678 = fmul fast float %2626, %2626
  %2679 = fsub fast float %2678, %2667
  %2680 = fmul fast float %2677, %2674
  %2681 = fmul fast float %2680, %2676
  %2682 = fsub fast float %2679, %2681
  %2683 = fmul fast float %2667, %2667
  %2684 = fsub fast float %2670, %2683
  %2685 = fmul fast float %2676, %2676
  %2686 = fmul fast float %2685, %2674
  %2687 = fsub fast float %2684, %2686
  %2688 = fdiv fast float %2682, %2687
  %2689 = fmul fast float %2676, %2688
  %2690 = fsub fast float %2677, %2689
  %2691 = fmul fast float %2690, %2674
  %2692 = fmul fast float %2691, %2666
  %2693 = fsub fast float 1.000000e+00, %2692
  %2694 = fmul fast float %2667, %2688
  %2695 = fsub fast float %2693, %2694
  %2696 = fmul fast float %2691, %2691
  %2697 = fmul fast float %2688, 4.000000e+00
  %2698 = fmul fast float %2697, %2695
  %2699 = fsub fast float %2696, %2698
  %2700 = call float @dx.op.unary.f32(i32 24, float %2699)  ; Sqrt(value)
  %2701 = fcmp fast oge float %2691, 0.000000e+00
  %2702 = fsub fast float -0.000000e+00, %2700
  %2703 = select i1 %2701, float %2702, float %2700
  %2704 = fsub fast float %2703, %2691
  %2705 = fdiv fast float %2704, %2688
  %2706 = fdiv fast float %2695, %2704
  %2707 = fmul fast float %2705, 5.000000e-01
  %2708 = fmul fast float %2706, 2.000000e+00
  %2709 = select i1 %2701, float %2707, float %2708
  %2710 = select i1 %2701, float %2708, float %2707
  %2711 = call float @dx.op.binary.f32(i32 35, float %2709, float %2710)  ; FMax(a,b)
  %2712 = call float @dx.op.binary.f32(i32 36, float %2709, float %2710)  ; FMin(a,b)
  %2713 = fcmp fast ogt float %2626, %2712
  br i1 %2713, label %2714, label %2724

; <label>:2714                                    ; preds = %2651
  %2715 = fsub fast float %2626, %2712
  %2716 = fsub fast float %2711, %2712
  %2717 = fmul fast float %2715, %2716
  %2718 = fmul fast float %2711, %2626
  %2719 = fadd fast float %2711, %2626
  %2720 = fmul fast float %2719, %2666
  %2721 = fadd fast float %2718, %2667
  %2722 = fsub fast float %2721, %2720
  %2723 = fdiv fast float %2722, %2717
  br label %2724

; <label>:2724                                    ; preds = %2714, %2651
  %2725 = phi float [ %2723, %2714 ], [ 0.000000e+00, %2651 ]
  %2726 = fcmp fast ogt float %2626, %2711
  %2727 = fsub fast float %2626, %2711
  br i1 %2726, label %2728, label %2738

; <label>:2728                                    ; preds = %2724
  %2729 = fsub fast float %2711, %2712
  %2730 = fmul fast float %2729, %2727
  %2731 = fmul fast float %2712, %2626
  %2732 = fadd fast float %2712, %2626
  %2733 = fmul fast float %2732, %2666
  %2734 = fsub fast float %2668, %2731
  %2735 = fadd fast float %2734, %2733
  %2736 = fdiv fast float %2735, %2730
  %2737 = fadd fast float %2736, %2725
  br label %2738

; <label>:2738                                    ; preds = %2728, %2724
  %2739 = phi float [ %2737, %2728 ], [ %2725, %2724 ]
  %2740 = fsub fast float %2626, %2712
  %2741 = fmul fast float %2740, %2727
  %2742 = fmul fast float %2712, %2711
  %2743 = fadd fast float %2712, %2711
  %2744 = fmul fast float %2743, %2666
  %2745 = fadd fast float %2742, %2667
  %2746 = fsub fast float %2745, %2744
  %2747 = fdiv fast float %2746, %2741
  %2748 = call float @dx.op.unary.f32(i32 7, float %2739)  ; Saturate(value)
  %2749 = fcmp fast oeq float %1621, 0.000000e+00
  %2750 = extractvalue %dx.types.CBufRet.f32 %2614, 0
  %2751 = fcmp fast oeq float %2750, 0.000000e+00
  %2752 = or i1 %2749, %2751
  %2753 = fmul fast float %2750, 2.000000e+00
  %2754 = fadd fast float %2615, %2616
  %2755 = fdiv fast float %2754, %2753
  %2756 = call float @dx.op.unary.f32(i32 7, float %2755)  ; Saturate(value)
  %2757 = fmul fast float %2756, 2.000000e+00
  %2758 = fsub fast float 3.000000e+00, %2757
  %2759 = fmul fast float %2756, %2756
  %2760 = fmul fast float %2759, %2758
  %2761 = select i1 %2752, float 1.000000e+00, float %2760
  %2762 = fmul fast float %2747, %1621
  %2763 = fadd fast float %2748, %2762
  %2764 = call float @dx.op.unary.f32(i32 7, float %2763)  ; Saturate(value)
  %2765 = fmul fast float %2761, %2764
  br label %2766

; <label>:2766                                    ; preds = %2738, %2619
  %2767 = phi float [ %2765, %2738 ], [ 0.000000e+00, %2619 ]
  %2768 = fsub fast float 1.000000e+00, %2767
  %2769 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %26, float %2567, float %2568, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2770 = extractvalue %dx.types.ResRet.f32 %2769, 0
  %2771 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2772 = extractvalue %dx.types.CBufRet.i32 %2771, 2
  %2773 = icmp eq i32 %2772, 0
  br i1 %2773, label %2779, label %2774

; <label>:2774                                    ; preds = %2766
  %2775 = call float @dx.op.unary.f32(i32 7, float %2767)  ; Saturate(value)
  %2776 = fadd fast float %2770, -1.000000e+00
  %2777 = fmul fast float %2775, %2776
  %2778 = fadd fast float %2777, 1.000000e+00
  br label %2779

; <label>:2779                                    ; preds = %2774, %2766
  %2780 = phi float [ %2778, %2774 ], [ %2768, %2766 ]
  %2781 = call float @dx.op.binary.f32(i32 35, float %2770, float %2780)  ; FMax(a,b)
  %2782 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %2783 = extractvalue %dx.types.CBufRet.i32 %2782, 2
  %2784 = and i32 %2783, 1
  %2785 = icmp eq i32 %2784, 0
  %2786 = fcmp fast une float %2781, 1.000000e+00
  %2787 = and i1 %2786, %2785
  br i1 %2787, label %2788, label %2807

; <label>:2788                                    ; preds = %2779
  %2789 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %26, float %2567, float %2568, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2790 = extractvalue %dx.types.ResRet.f32 %2789, 0
  %2791 = extractvalue %dx.types.ResRet.f32 %2789, 1
  %2792 = extractvalue %dx.types.ResRet.f32 %2789, 2
  %2793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2794 = extractvalue %dx.types.CBufRet.f32 %2793, 1
  %2795 = fmul fast float %2794, %2790
  %2796 = fmul fast float %2794, %2791
  %2797 = fmul fast float %2794, %2792
  %2798 = fcmp fast ogt float %2770, 0x3FEFFF2E40000000
  %2799 = fsub fast float 1.000000e+00, %2781
  %2800 = fsub fast float 1.000000e+00, %2770
  %2801 = fdiv fast float %2799, %2800
  %2802 = call float @dx.op.unary.f32(i32 7, float %2801)  ; Saturate(value)
  %2803 = select i1 %2798, float 0.000000e+00, float %2802
  %2804 = fmul fast float %2795, %2803
  %2805 = fmul fast float %2796, %2803
  %2806 = fmul fast float %2797, %2803
  br label %2807

; <label>:2807                                    ; preds = %2788, %2779
  %2808 = phi float [ 0.000000e+00, %2779 ], [ %2804, %2788 ]
  %2809 = phi float [ 0.000000e+00, %2779 ], [ %2805, %2788 ]
  %2810 = phi float [ 0.000000e+00, %2779 ], [ %2806, %2788 ]
  %2811 = fmul fast float %2808, %1512
  %2812 = fmul fast float %2809, %1512
  %2813 = fmul fast float %2810, %1512
  %2814 = fmul fast float %2781, %2542
  %2815 = call float @dx.op.dot3.f32(i32 55, float %2781, float %2781, float %2781, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2816 = call float @dx.op.dot3.f32(i32 55, float %2811, float %2812, float %2813, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2817 = select i1 %133, float %2815, float %2781
  %2818 = select i1 %133, float 1.000000e+00, float %2781
  %2819 = select i1 %133, float %2816, float %2811
  %2820 = select i1 %133, float 0.000000e+00, float %2812
  %2821 = select i1 %133, float 0.000000e+00, float %2813
  %2822 = fmul fast float %2817, %2554
  %2823 = fmul fast float %2817, %2555
  %2824 = fmul fast float %2818, %2556
  %2825 = fadd fast float %2822, %2819
  %2826 = fadd fast float %2823, %2820
  %2827 = fadd fast float %2821, %2824
  %2828 = fmul fast float %2817, %2557
  %2829 = fmul fast float %2817, %2558
  %2830 = fmul fast float %2818, %2559
  br label %2831

; <label>:2831                                    ; preds = %2807, %2563, %2532, %1764
  %2832 = phi float [ %1769, %1764 ], [ %2554, %2532 ], [ %2825, %2807 ], [ %2554, %2563 ]
  %2833 = phi float [ %1770, %1764 ], [ %2555, %2532 ], [ %2826, %2807 ], [ %2555, %2563 ]
  %2834 = phi float [ %1771, %1764 ], [ %2556, %2532 ], [ %2827, %2807 ], [ %2556, %2563 ]
  %2835 = phi float [ %1772, %1764 ], [ %2557, %2532 ], [ %2828, %2807 ], [ %2557, %2563 ]
  %2836 = phi float [ %1773, %1764 ], [ %2558, %2532 ], [ %2829, %2807 ], [ %2558, %2563 ]
  %2837 = phi float [ %1774, %1764 ], [ %2559, %2532 ], [ %2830, %2807 ], [ %2559, %2563 ]
  %2838 = phi float [ %1775, %1764 ], [ %2542, %2532 ], [ %2814, %2807 ], [ %2542, %2563 ]
  %2839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2840 = extractvalue %dx.types.CBufRet.f32 %2839, 2
  %2841 = extractvalue %dx.types.CBufRet.f32 %2839, 3
  %2842 = fmul fast float %2840, %62
  %2843 = fmul fast float %2841, %63
  %2844 = call float @dx.op.unary.f32(i32 7, float %2842)  ; Saturate(value)
  %2845 = call float @dx.op.unary.f32(i32 7, float %2843)  ; Saturate(value)
  %2846 = select i1 %913, i32 2, i32 0
  %2847 = or i32 %2846, 1
  %2848 = uitofp i32 %2847 to float
  %2849 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %2844, float %2845, float %2848, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2850 = extractvalue %dx.types.ResRet.f32 %2849, 0
  %2851 = extractvalue %dx.types.ResRet.f32 %2849, 1
  %2852 = extractvalue %dx.types.ResRet.f32 %2849, 2
  %2853 = extractvalue %dx.types.ResRet.f32 %2849, 3
  %2854 = add nuw nsw i32 %2846, 2
  %2855 = uitofp i32 %2854 to float
  %2856 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %2844, float %2845, float %2855, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2857 = extractvalue %dx.types.ResRet.f32 %2856, 0
  %2858 = extractvalue %dx.types.ResRet.f32 %2856, 1
  %2859 = extractvalue %dx.types.ResRet.f32 %2856, 2
  %2860 = extractvalue %dx.types.ResRet.f32 %2856, 3
  %2861 = call float @dx.op.binary.f32(i32 35, float %2851, float %2852)  ; FMax(a,b)
  %2862 = call float @dx.op.binary.f32(i32 35, float %2850, float %2861)  ; FMax(a,b)
  %2863 = call float @dx.op.binary.f32(i32 35, float %2862, float %2853)  ; FMax(a,b)
  %2864 = call float @dx.op.binary.f32(i32 36, float %2858, float %2859)  ; FMin(a,b)
  %2865 = call float @dx.op.binary.f32(i32 36, float %2857, float %2864)  ; FMin(a,b)
  %2866 = call float @dx.op.binary.f32(i32 36, float %2865, float %2860)  ; FMin(a,b)
  %2867 = fmul fast float %2863, 2.550000e+02
  %2868 = fadd fast float %2867, 0x3F70101020000000
  %2869 = fptoui float %2868 to i32
  %2870 = fmul fast float %2866, 2.550000e+02
  %2871 = fadd fast float %2870, 0x3F70101020000000
  %2872 = fptoui float %2871 to i32
  %2873 = icmp ult i32 %2869, %2872
  br i1 %2873, label %2874, label %2920

; <label>:2874                                    ; preds = %2831
  %2875 = fcmp fast ogt float %54, 9.843750e-01
  %2876 = fadd fast float %1768, -4.000000e+00
  %2877 = select i1 %2875, float -4.000000e+00, float %2876
  %2878 = call float @dx.op.binary.f32(i32 35, float %2877, float 0.000000e+00)  ; FMax(a,b)
  %2879 = fadd fast float %1078, %2878
  %2880 = fmul fast float %2879, %1079
  %2881 = call float @dx.op.unary.f32(i32 23, float %2880)  ; Log(value)
  %2882 = fmul fast float %1080, %2881
  %2883 = fmul fast float %2882, %1088
  %2884 = call float @dx.op.unary.f32(i32 7, float %2883)  ; Saturate(value)
  %2885 = uitofp i32 %2869 to float
  %2886 = uitofp i32 %2872 to float
  %2887 = fadd fast float %2885, 5.000000e-01
  %2888 = fadd fast float %2886, 5.000000e-01
  %2889 = fmul fast float %1088, %2887
  %2890 = fmul fast float %1088, %2888
  %2891 = fadd fast float %2889, 0x3F0FFB4800000000
  %2892 = fadd fast float %2890, 0xBF0FFB4800000000
  %2893 = call float @dx.op.binary.f32(i32 35, float %2884, float %2891)  ; FMax(a,b)
  %2894 = call float @dx.op.binary.f32(i32 36, float %2893, float %2892)  ; FMin(a,b)
  %2895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %2896 = extractvalue %dx.types.CBufRet.f32 %2895, 1
  %2897 = extractvalue %dx.types.CBufRet.f32 %2895, 2
  %2898 = extractvalue %dx.types.CBufRet.f32 %2895, 0
  %2899 = select i1 %913, float %2898, float 0.000000e+00
  %2900 = fmul fast float %2896, %2894
  %2901 = fadd fast float %2899, %2900
  %2902 = fadd fast float %2899, %2897
  %2903 = fsub fast float %2896, %2897
  %2904 = fadd fast float %2903, %2899
  %2905 = call float @dx.op.binary.f32(i32 35, float %2901, float %2902)  ; FMax(a,b)
  %2906 = call float @dx.op.binary.f32(i32 36, float %2905, float %2904)  ; FMin(a,b)
  %2907 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %2844, float %2845, float %2906, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2908 = extractvalue %dx.types.ResRet.f32 %2907, 0
  %2909 = extractvalue %dx.types.ResRet.f32 %2907, 1
  %2910 = extractvalue %dx.types.ResRet.f32 %2907, 2
  %2911 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %2844, float %2845, float %2906, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2912 = extractvalue %dx.types.ResRet.f32 %2911, 0
  %2913 = extractvalue %dx.types.ResRet.f32 %2911, 1
  %2914 = extractvalue %dx.types.ResRet.f32 %2911, 2
  %2915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2916 = extractvalue %dx.types.CBufRet.f32 %2915, 1
  %2917 = fmul fast float %2916, %2912
  %2918 = fmul fast float %2916, %2913
  %2919 = fmul fast float %2916, %2914
  br label %2920

; <label>:2920                                    ; preds = %2874, %2831
  %2921 = phi float [ %2908, %2874 ], [ 1.000000e+00, %2831 ]
  %2922 = phi float [ %2909, %2874 ], [ 1.000000e+00, %2831 ]
  %2923 = phi float [ %2910, %2874 ], [ 1.000000e+00, %2831 ]
  %2924 = phi float [ %2917, %2874 ], [ 0.000000e+00, %2831 ]
  %2925 = phi float [ %2918, %2874 ], [ 0.000000e+00, %2831 ]
  %2926 = phi float [ %2919, %2874 ], [ 0.000000e+00, %2831 ]
  %2927 = fmul fast float %2924, %1512
  %2928 = fmul fast float %2925, %1512
  %2929 = fmul fast float %2926, %1512
  %2930 = fmul fast float %2921, %2838
  %2931 = call float @dx.op.dot3.f32(i32 55, float %2921, float %2922, float %2923, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2932 = call float @dx.op.dot3.f32(i32 55, float %2927, float %2928, float %2929, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2933 = select i1 %133, float %2931, float %2921
  %2934 = select i1 %133, float %2931, float %2922
  %2935 = select i1 %133, float 1.000000e+00, float %2923
  %2936 = select i1 %133, float %2932, float %2927
  %2937 = select i1 %133, float 0.000000e+00, float %2928
  %2938 = select i1 %133, float 0.000000e+00, float %2929
  %2939 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2940 = extractvalue %dx.types.CBufRet.i32 %2939, 3
  %2941 = and i32 %2940, 3
  %2942 = icmp ne i32 %2941, 0
  %2943 = and i32 %2940, 4
  %2944 = icmp ne i32 %2943, 0
  %2945 = and i1 %2942, %2944
  %2946 = and i1 %133, %2945
  br i1 %2946, label %2947, label %2953

; <label>:2947                                    ; preds = %2920
  %2948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2949 = extractvalue %dx.types.CBufRet.f32 %2948, 1
  %2950 = fadd fast float %2930, -1.000000e+00
  %2951 = fmul fast float %2949, %2950
  %2952 = fadd fast float %2951, 1.000000e+00
  br label %2953

; <label>:2953                                    ; preds = %2947, %2920
  %2954 = phi float [ %2952, %2947 ], [ %2930, %2920 ]
  %2955 = fadd fast float %2835, %2832
  %2956 = fmul fast float %2933, %2955
  %2957 = fadd fast float %2956, %2936
  %2958 = fadd fast float %2836, %2833
  %2959 = fmul fast float %2934, %2958
  %2960 = fadd fast float %2959, %2937
  %2961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2962 = extractvalue %dx.types.CBufRet.f32 %2961, 0
  br i1 %133, label %2963, label %2985

; <label>:2963                                    ; preds = %2953
  %2964 = fadd fast float %2957, %2960
  %2965 = fmul fast float %2962, %2964
  %2966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %2967 = extractvalue %dx.types.CBufRet.f32 %2966, 3
  %2968 = extractvalue %dx.types.CBufRet.f32 %1517, 1
  %2969 = fsub fast float %1520, %2968
  %2970 = extractvalue %dx.types.CBufRet.f32 %1517, 2
  %2971 = fmul fast float %2969, %2970
  %2972 = call float @dx.op.unary.f32(i32 7, float %2971)  ; Saturate(value)
  %2973 = fsub fast float %2972, %2967
  %2974 = fmul fast float %2973, %2954
  %2975 = fadd fast float %2974, %2967
  %2976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2977 = extractvalue %dx.types.CBufRet.f32 %2976, 0
  %2978 = fsub fast float %2975, %2977
  %2979 = fmul fast float %2978, 1.000000e+01
  %2980 = call float @dx.op.unary.f32(i32 7, float %2979)  ; Saturate(value)
  %2981 = fsub fast float %889, %1512
  %2982 = fmul fast float %2980, %2981
  %2983 = fadd fast float %2982, %1512
  %2984 = fmul fast float %2983, %2975
  br label %2997

; <label>:2985                                    ; preds = %2953
  %2986 = fadd fast float %2837, %2834
  %2987 = fmul fast float %2935, %2986
  %2988 = fadd fast float %2987, %2938
  %2989 = fmul fast float %2962, %2957
  %2990 = fmul fast float %2962, %2960
  %2991 = fmul fast float %2962, %2988
  %2992 = call float @dx.op.binary.f32(i32 35, float %2990, float %2991)  ; FMax(a,b)
  %2993 = call float @dx.op.binary.f32(i32 35, float %2989, float %2992)  ; FMax(a,b)
  %2994 = call float @dx.op.binary.f32(i32 35, float %2993, float %1512)  ; FMax(a,b)
  %2995 = fcmp fast ugt float %2994, 0x3F10000000000000
  br i1 %2995, label %2997, label %2996

; <label>:2996                                    ; preds = %2985
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %2997

; <label>:2997                                    ; preds = %2996, %2985, %2963
  %2998 = phi float [ %2965, %2963 ], [ %2989, %2996 ], [ %2989, %2985 ]
  %2999 = phi float [ %2984, %2963 ], [ %2990, %2996 ], [ %2990, %2985 ]
  %3000 = phi float [ %2983, %2963 ], [ %2991, %2996 ], [ %2991, %2985 ]
  %3001 = phi float [ %2983, %2963 ], [ %1512, %2996 ], [ %1512, %2985 ]
  %3002 = fadd fast float %551, 0x3FE3C6EF40000000
  %3003 = call float @dx.op.unary.f32(i32 22, float %3002)  ; Frc(value)
  %3004 = call float @dx.op.unary.f32(i32 23, float %2998)  ; Log(value)
  %3005 = fadd fast float %3004, -7.000000e+00
  %3006 = call float @dx.op.unary.f32(i32 21, float %3005)  ; Exp(value)
  %3007 = fmul fast float %3003, 2.000000e+00
  %3008 = fadd fast float %3007, -1.000000e+00
  %3009 = fmul fast float %3006, %3008
  %3010 = fcmp fast ogt float %2998, 0.000000e+00
  %3011 = select i1 %3010, float %3009, float 0.000000e+00
  %3012 = fadd fast float %3011, %2998
  %3013 = fadd fast float %551, 0x3FF3C6EF40000000
  %3014 = call float @dx.op.unary.f32(i32 22, float %3013)  ; Frc(value)
  %3015 = call float @dx.op.unary.f32(i32 23, float %2999)  ; Log(value)
  %3016 = fadd fast float %3015, -7.000000e+00
  %3017 = call float @dx.op.unary.f32(i32 21, float %3016)  ; Exp(value)
  %3018 = fmul fast float %3014, 2.000000e+00
  %3019 = fadd fast float %3018, -1.000000e+00
  %3020 = fmul fast float %3017, %3019
  %3021 = fcmp fast ogt float %2999, 0.000000e+00
  %3022 = select i1 %3021, float %3020, float 0.000000e+00
  %3023 = fadd fast float %3022, %2999
  %3024 = fadd fast float %551, 0x3FFDAA66E0000000
  %3025 = call float @dx.op.unary.f32(i32 22, float %3024)  ; Frc(value)
  %3026 = call float @dx.op.unary.f32(i32 23, float %3000)  ; Log(value)
  %3027 = fadd fast float %3026, -6.000000e+00
  %3028 = call float @dx.op.unary.f32(i32 21, float %3027)  ; Exp(value)
  %3029 = fmul fast float %3025, 2.000000e+00
  %3030 = fadd fast float %3029, -1.000000e+00
  %3031 = fmul fast float %3028, %3030
  %3032 = fcmp fast ogt float %3000, 0.000000e+00
  %3033 = select i1 %3032, float %3031, float 0.000000e+00
  %3034 = fadd fast float %3033, %3000
  %3035 = select i1 %133, float %2999, float %3023
  %3036 = select i1 %133, float %3000, float %3034
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %3037 = call float @dx.op.binary.f32(i32 36, float %3012, float 3.225500e+04)  ; FMin(a,b)
  %3038 = call float @dx.op.binary.f32(i32 36, float %3035, float 3.225500e+04)  ; FMin(a,b)
  %3039 = call float @dx.op.binary.f32(i32 36, float %3036, float 3.225500e+04)  ; FMin(a,b)
  %3040 = call float @dx.op.binary.f32(i32 36, float %3001, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3037)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3038)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3039)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %3040)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %3001)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %3001)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %3001)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %3001)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float) #2

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
!42 = !{[37 x i32] [i32 35, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 255]}
!43 = !{void ()* @ps_main, !"ps_main", !44, !4, !68}
!44 = !{!45, !64, null}
!45 = !{!46, !49, !50, !52, !55, !57, !59, !61, !62, !63}
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
!62 = !{i32 8, !"COLOR", i8 5, i8 0, !53, i8 1, i32 1, i8 3, i32 8, i8 0, !54}
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

