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
; shader hash: 5bb88eb9ea41b165970d88aa9c5d7f92
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
  %190 = add i32 %31, 104
  %191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %190, i32 undef)  ; BufferLoad(srv,index,wot)
  %192 = extractvalue %dx.types.ResRet.i32 %191, 0
  %193 = extractvalue %dx.types.ResRet.i32 %191, 1
  %194 = bitcast i32 %192 to float
  %195 = bitcast i32 %193 to float
  %196 = fmul fast float %194, %45
  %197 = fmul fast float %195, %46
  %198 = call float @dx.op.unary.f32(i32 22, float %196)  ; Frc(value)
  %199 = call float @dx.op.unary.f32(i32 22, float %197)  ; Frc(value)
  %200 = add i32 %31, 88
  %201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %200, i32 undef)  ; BufferLoad(srv,index,wot)
  %202 = extractvalue %dx.types.ResRet.i32 %201, 0
  %203 = bitcast i32 %202 to float
  %204 = add i32 %31, 72
  %205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %204, i32 undef)  ; BufferLoad(srv,index,wot)
  %206 = extractvalue %dx.types.ResRet.i32 %205, 0
  %207 = extractvalue %dx.types.ResRet.i32 %205, 1
  %208 = extractvalue %dx.types.ResRet.i32 %205, 2
  %209 = extractvalue %dx.types.ResRet.i32 %205, 3
  %210 = bitcast i32 %206 to float
  %211 = bitcast i32 %207 to float
  %212 = bitcast i32 %208 to float
  %213 = bitcast i32 %209 to float
  %214 = add i32 %31, 164
  %215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %214, i32 undef)  ; BufferLoad(srv,index,wot)
  %216 = extractvalue %dx.types.ResRet.i32 %215, 0
  %217 = add i32 %216, 0
  %218 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %217, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %219 = fmul fast float %212, %198
  %220 = fmul fast float %213, %199
  %221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.f32 %221, 3
  %223 = fmul fast float %222, %210
  %224 = fmul fast float %222, %211
  %225 = fadd fast float %223, %219
  %226 = fadd fast float %224, %220
  %227 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %218, %dx.types.Handle %58, float %225, float %226, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %228 = extractvalue %dx.types.ResRet.f32 %227, 0
  %229 = extractvalue %dx.types.ResRet.f32 %227, 1
  %230 = fmul fast float %228, 2.000000e+00
  %231 = fmul fast float %229, 2.000000e+00
  %232 = fadd fast float %230, -1.000000e+00
  %233 = fadd fast float %231, -1.000000e+00
  %234 = fmul fast float %232, %203
  %235 = fmul fast float %233, %203
  %236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %190, i32 undef)  ; BufferLoad(srv,index,wot)
  %237 = extractvalue %dx.types.ResRet.i32 %236, 2
  %238 = extractvalue %dx.types.ResRet.i32 %236, 3
  %239 = bitcast i32 %237 to float
  %240 = bitcast i32 %238 to float
  %241 = fmul fast float %234, %239
  %242 = fmul fast float %235, %240
  %243 = fadd fast float %241, %188
  %244 = fadd fast float %242, %189
  %245 = and i32 %151, 16
  %246 = icmp ne i32 %245, 0
  %247 = select i1 %246, float 1.000000e+00, float %50
  %248 = add i32 %31, 160
  %249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %248, i32 undef)  ; BufferLoad(srv,index,wot)
  %250 = extractvalue %dx.types.ResRet.i32 %249, 0
  %251 = add i32 %250, 0
  %252 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %251, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.f32 %253, 2
  %255 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %252, %dx.types.Handle %58, float %243, float %244, float undef, float undef, i32 0, i32 0, i32 undef, float %254, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %256 = extractvalue %dx.types.ResRet.f32 %255, 0
  %257 = fmul fast float %256, %247
  %258 = icmp eq i32 %245, 0
  br i1 %258, label %278, label %259, !dx.controlflow.hints !70

; <label>:259                                     ; preds = %187
  %260 = add i32 %148, 64
  %261 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %260, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.f32 %261, 0
  %263 = fadd fast float %262, 1.000000e+00
  %264 = fmul fast float %263, %50
  %265 = fsub fast float %264, %262
  %266 = fsub fast float %263, %265
  %267 = call float @dx.op.unary.f32(i32 7, float %266)  ; Saturate(value)
  %268 = fsub fast float 1.000000e+00, %264
  %269 = call float @dx.op.unary.f32(i32 7, float %268)  ; Saturate(value)
  %270 = fsub fast float %267, %269
  %271 = fsub fast float %257, %269
  %272 = fdiv fast float %271, %270
  %273 = call float @dx.op.unary.f32(i32 7, float %272)  ; Saturate(value)
  %274 = fmul fast float %273, 2.000000e+00
  %275 = fsub fast float 3.000000e+00, %274
  %276 = fmul fast float %273, %273
  %277 = fmul fast float %276, %275
  br label %278

; <label>:278                                     ; preds = %259, %187
  %279 = phi float [ %277, %259 ], [ %257, %187 ]
  %280 = fcmp fast ogt float %279, 0.000000e+00
  br i1 %280, label %282, label %281

; <label>:281                                     ; preds = %278
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %282

; <label>:282                                     ; preds = %281, %278
  %283 = call float @dx.op.unary.f32(i32 7, float %279)  ; Saturate(value)
  %284 = fmul fast float %61, 5.000000e-01
  %285 = fmul fast float %62, 5.000000e-01
  %286 = fptosi float %284 to i32
  %287 = fptosi float %285 to i32
  %288 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %286, i32 %287, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = lshr i32 %289, 18
  %291 = uitofp i32 %290 to float
  %292 = fmul fast float %291, 0x3F4C00EBA0000000
  %293 = call float @dx.op.unary.f32(i32 21, float %292)  ; Exp(value)
  %294 = fadd fast float %293, -1.000000e+00
  %295 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %296 = extractvalue %dx.types.Dimensions %295, 0
  %297 = sitofp i32 %296 to float
  %298 = extractvalue %dx.types.Dimensions %295, 1
  %299 = sitofp i32 %298 to float
  %300 = fcmp fast oge float %284, %297
  %301 = fcmp fast oge float %285, %299
  %302 = or i1 %300, %301
  %303 = select i1 %302, float 0x4197782600000000, float %294
  %304 = fsub fast float %303, %54
  %305 = fcmp fast ogt float %304, 0.000000e+00
  %306 = and i32 %147, -2
  %307 = icmp eq i32 %306, 2
  %308 = and i1 %307, %305
  %309 = xor i1 %305, true
  %310 = icmp eq i32 %147, 1
  %311 = and i1 %310, %309
  %312 = or i1 %308, %311
  %313 = and i32 %151, 262144
  %314 = icmp ne i32 %313, 0
  %315 = and i1 %314, %312
  %316 = xor i1 %312, true
  %317 = and i32 %151, 131072
  %318 = icmp ne i32 %317, 0
  %319 = and i1 %318, %316
  %320 = or i1 %315, %319
  br i1 %320, label %321, label %322

; <label>:321                                     ; preds = %282
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %322

; <label>:322                                     ; preds = %321, %282
  %323 = and i32 %151, 32
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %575, label %325, !dx.controlflow.hints !71

; <label>:325                                     ; preds = %322
  %326 = add i32 %148, 80
  %327 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.f32 %327, 0
  %329 = extractvalue %dx.types.ResRet.f32 %327, 1
  %330 = extractvalue %dx.types.ResRet.f32 %327, 2
  %331 = extractvalue %dx.types.ResRet.f32 %327, 3
  %332 = add i32 %148, 96
  %333 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.f32 %333, 0
  %335 = extractvalue %dx.types.ResRet.f32 %333, 1
  %336 = extractvalue %dx.types.ResRet.f32 %333, 2
  %337 = add i32 %148, 112
  %338 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.f32 %338, 0
  %340 = extractvalue %dx.types.ResRet.f32 %338, 1
  %341 = extractvalue %dx.types.ResRet.f32 %338, 2
  %342 = extractvalue %dx.types.ResRet.f32 %338, 3
  %343 = add i32 %148, 128
  %344 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %343, i32 undef)  ; BufferLoad(srv,index,wot)
  %345 = extractvalue %dx.types.ResRet.f32 %344, 0
  %346 = extractvalue %dx.types.ResRet.f32 %344, 1
  %347 = extractvalue %dx.types.ResRet.f32 %344, 2
  %348 = extractvalue %dx.types.ResRet.f32 %344, 3
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %149, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.i32 %349, 0
  %351 = and i32 %350, 4096
  %352 = icmp ne i32 %351, 0
  %353 = fcmp fast une float %336, 0.000000e+00
  %354 = and i32 %350, 64
  %355 = icmp ne i32 %354, 0
  %356 = and i32 %350, 128
  %357 = icmp eq i32 %356, 0
  %358 = and i32 %350, 2048
  %359 = icmp eq i32 %358, 0
  %360 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %14, i32 0)  ; GetDimensions(handle,mipLevel)
  %361 = extractvalue %dx.types.Dimensions %360, 0
  %362 = sitofp i32 %361 to float
  %363 = extractvalue %dx.types.Dimensions %360, 1
  %364 = sitofp i32 %363 to float
  %365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %366 = extractvalue %dx.types.CBufRet.f32 %365, 2
  %367 = extractvalue %dx.types.CBufRet.f32 %365, 3
  %368 = fmul fast float %366, %61
  %369 = fmul fast float %367, %62
  %370 = fmul fast float %368, %362
  %371 = fmul fast float %369, %364
  %372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %373 = extractvalue %dx.types.CBufRet.f32 %372, 1
  %374 = fsub fast float -0.000000e+00, %373
  %375 = fptoui float %374 to i32
  %376 = fptoui float %370 to i32
  %377 = fptoui float %371 to i32
  %378 = and i32 %375, 31
  %379 = lshr i32 %376, %378
  %380 = lshr i32 %377, %378
  %381 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 %375, i32 %379, i32 %380, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %382 = extractvalue %dx.types.ResRet.f32 %381, 0
  %383 = fcmp fast ogt float %382, -1.000000e+00
  %384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %385 = extractvalue %dx.types.CBufRet.f32 %384, 1
  %386 = select i1 %383, float %385, float 1.000000e+00
  %387 = fadd fast float %382, 1.000000e+00
  %388 = fmul fast float %386, %387
  %389 = call float @dx.op.unary.f32(i32 6, float %388)  ; FAbs(value)
  %390 = extractvalue %dx.types.CBufRet.f32 %384, 3
  %391 = fcmp fast oge float %389, %390
  %392 = select i1 %391, float 0x4197782600000000, float %389
  br i1 %359, label %470, label %393, !dx.controlflow.hints !72

; <label>:393                                     ; preds = %325
  %394 = fmul fast float %66, %366
  %395 = fmul fast float %68, %367
  %396 = fsub fast float 1.000000e+00, %394
  %397 = fsub fast float 1.000000e+00, %395
  %398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %399 = extractvalue %dx.types.CBufRet.f32 %398, 0
  %400 = extractvalue %dx.types.CBufRet.f32 %398, 1
  %401 = extractvalue %dx.types.CBufRet.f32 %398, 2
  %402 = fmul fast float %396, %399
  %403 = fmul fast float %396, %400
  %404 = fmul fast float %396, %401
  %405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %406 = extractvalue %dx.types.CBufRet.f32 %405, 0
  %407 = extractvalue %dx.types.CBufRet.f32 %405, 1
  %408 = extractvalue %dx.types.CBufRet.f32 %405, 2
  %409 = fmul fast float %397, %406
  %410 = fmul fast float %397, %407
  %411 = fmul fast float %397, %408
  %412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %413 = extractvalue %dx.types.CBufRet.f32 %412, 0
  %414 = extractvalue %dx.types.CBufRet.f32 %412, 1
  %415 = extractvalue %dx.types.CBufRet.f32 %412, 2
  %416 = fadd fast float %409, %413
  %417 = fadd fast float %416, %402
  %418 = fadd fast float %410, %414
  %419 = fadd fast float %418, %403
  %420 = fadd fast float %411, %415
  %421 = fadd fast float %420, %404
  %422 = fmul fast float %417, %392
  %423 = fmul fast float %419, %392
  %424 = fmul fast float %421, %392
  %425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %426 = extractvalue %dx.types.CBufRet.f32 %425, 0
  %427 = extractvalue %dx.types.CBufRet.f32 %425, 1
  %428 = extractvalue %dx.types.CBufRet.f32 %425, 2
  %429 = fsub fast float %426, %32
  %430 = fadd fast float %429, %422
  %431 = fsub fast float %427, %33
  %432 = fadd fast float %431, %423
  %433 = fsub fast float %428, %34
  %434 = fadd fast float %433, %424
  %435 = fmul fast float %35, %35
  %436 = call float @dx.op.dot3.f32(i32 55, float %430, float %432, float %434, float %430, float %432, float %434)  ; Dot3(ax,ay,az,bx,by,bz)
  %437 = fsub fast float %435, %436
  %438 = fmul fast float %335, %435
  %439 = fmul fast float %334, %435
  %440 = fcmp fast olt float %437, %438
  %441 = fcmp fast ogt float %437, %439
  %442 = or i1 %440, %441
  %443 = select i1 %442, float 0.000000e+00, float %437
  %444 = fsub fast float %334, %335
  %445 = fmul fast float %444, %435
  %446 = fsub fast float %443, %438
  %447 = fdiv fast float %446, %445
  %448 = call float @dx.op.unary.f32(i32 7, float %447)  ; Saturate(value)
  %449 = fmul fast float %448, 2.000000e+00
  %450 = fsub fast float 3.000000e+00, %449
  %451 = fmul fast float %448, %448
  %452 = fmul fast float %451, %450
  %453 = fmul fast float %339, %47
  %454 = fmul fast float %340, %48
  %455 = fmul fast float %341, %49
  %456 = fsub fast float %453, %345
  %457 = fsub fast float %454, %346
  %458 = fsub fast float %455, %347
  %459 = fsub fast float %342, %348
  %460 = fmul fast float %452, %456
  %461 = fmul fast float %452, %457
  %462 = fmul fast float %452, %458
  %463 = fmul fast float %452, %459
  %464 = fadd fast float %460, %345
  %465 = fadd fast float %461, %346
  %466 = fadd fast float %462, %347
  %467 = fadd fast float %463, %348
  %468 = fmul fast float %328, %328
  %469 = fmul fast float %468, %443
  br label %565

; <label>:470                                     ; preds = %325
  %471 = and i32 %350, 256
  %472 = icmp eq i32 %471, 0
  %473 = fsub fast float %392, %54
  br i1 %472, label %522, label %474

; <label>:474                                     ; preds = %470
  %475 = fadd fast float %334, %54
  %476 = fcmp fast olt float %392, %54
  %477 = fcmp fast ogt float %392, %475
  %478 = or i1 %476, %477
  %479 = select i1 %478, float 0.000000e+00, float %473
  %480 = call float @dx.op.unary.f32(i32 83, float %392)  ; DerivCoarseX(value)
  %481 = call float @dx.op.unary.f32(i32 84, float %392)  ; DerivCoarseY(value)
  %482 = fmul fast float %480, %480
  %483 = fmul fast float %481, %481
  %484 = fadd fast float %483, %482
  %485 = call float @dx.op.unary.f32(i32 24, float %484)  ; Sqrt(value)
  %486 = extractvalue %dx.types.CBufRet.f32 %372, 2
  %487 = fmul fast float %486, %485
  %488 = call float @dx.op.unary.f32(i32 7, float %487)  ; Saturate(value)
  %489 = fmul fast float %488, %335
  %490 = fdiv fast float %473, %489
  %491 = call float @dx.op.unary.f32(i32 7, float %490)  ; Saturate(value)
  %492 = fmul fast float %491, 2.000000e+00
  %493 = fsub fast float 3.000000e+00, %492
  %494 = fmul fast float %491, %491
  %495 = fmul fast float %494, %493
  %496 = fsub fast float %392, %475
  %497 = fadd fast float %496, %489
  %498 = fdiv fast float %497, %489
  %499 = call float @dx.op.unary.f32(i32 7, float %498)  ; Saturate(value)
  %500 = fmul fast float %499, 2.000000e+00
  %501 = fsub fast float 3.000000e+00, %500
  %502 = fmul fast float %499, %499
  %503 = fmul fast float %502, %501
  %504 = fsub fast float %495, %503
  %505 = fmul fast float %339, %47
  %506 = fmul fast float %340, %48
  %507 = fmul fast float %341, %49
  %508 = fsub fast float %505, %345
  %509 = fsub fast float %506, %346
  %510 = fsub fast float %507, %347
  %511 = fsub fast float %342, %348
  %512 = fmul fast float %504, %508
  %513 = fmul fast float %504, %509
  %514 = fmul fast float %504, %510
  %515 = fmul fast float %504, %511
  %516 = fadd fast float %512, %345
  %517 = fadd fast float %513, %346
  %518 = fadd fast float %514, %347
  %519 = fadd fast float %515, %348
  %520 = fmul fast float %479, %328
  %521 = call float @dx.op.unary.f32(i32 6, float %520)  ; FAbs(value)
  br label %565

; <label>:522                                     ; preds = %470
  br i1 %353, label %523, label %536

; <label>:523                                     ; preds = %522
  %524 = fdiv fast float 5.000000e+01, %35
  %525 = select i1 %355, float %524, float 1.000000e+00
  %526 = fmul fast float %525, %328
  %527 = fmul fast float %198, 2.000000e+00
  %528 = fmul fast float %199, 2.000000e+00
  %529 = fadd fast float %527, -1.000000e+00
  %530 = fadd fast float %528, -1.000000e+00
  %531 = call float @dx.op.dot2.f32(i32 54, float %529, float %530, float %529, float %530)  ; Dot2(ax,ay,bx,by)
  %532 = fmul fast float %336, %35
  %533 = fmul fast float %532, %531
  %534 = fsub fast float %473, %533
  %535 = fmul fast float %526, %534
  br label %565

; <label>:536                                     ; preds = %522
  br i1 %357, label %557, label %537

; <label>:537                                     ; preds = %536
  %538 = fmul fast float %35, 0x3F947AE140000000
  %539 = select i1 %355, float %538, float 1.000000e+00
  %540 = fdiv fast float 1.000000e+00, %539
  %541 = fmul fast float %539, %329
  %542 = fmul fast float %539, %330
  %543 = fmul fast float %540, %331
  %544 = call float @dx.op.unary.f32(i32 6, float %473)  ; FAbs(value)
  %545 = fcmp fast olt float %544, %541
  br i1 %545, label %546, label %550, !dx.controlflow.hints !73

; <label>:546                                     ; preds = %537
  %547 = fmul fast float %540, %328
  %548 = fmul fast float %547, %544
  %549 = call float @dx.op.unary.f32(i32 6, float %548)  ; FAbs(value)
  br label %565

; <label>:550                                     ; preds = %537
  %551 = fcmp fast ogt float %544, %542
  br i1 %551, label %552, label %565

; <label>:552                                     ; preds = %550
  %553 = fsub fast float %544, %542
  %554 = fmul fast float %543, %553
  %555 = call float @dx.op.unary.f32(i32 6, float %554)  ; FAbs(value)
  %556 = fsub fast float 1.000000e+00, %555
  br label %565

; <label>:557                                     ; preds = %536
  %558 = fdiv fast float 5.000000e+01, %35
  %559 = select i1 %355, float %558, float 1.000000e+00
  %560 = fmul fast float %559, %328
  %561 = call float @dx.op.unary.f32(i32 6, float %304)  ; FAbs(value)
  %562 = select i1 %352, float %561, float 0x47EFFFFFE0000000
  %563 = call float @dx.op.binary.f32(i32 36, float %473, float %562)  ; FMin(a,b)
  %564 = fmul fast float %560, %563
  br label %565

; <label>:565                                     ; preds = %557, %552, %550, %546, %523, %474, %393
  %566 = phi float [ %469, %393 ], [ %521, %474 ], [ %535, %523 ], [ %564, %557 ], [ %549, %546 ], [ %556, %552 ], [ %544, %550 ]
  %567 = phi float [ %464, %393 ], [ %516, %474 ], [ %47, %523 ], [ %47, %557 ], [ %47, %546 ], [ %47, %552 ], [ %47, %550 ]
  %568 = phi float [ %465, %393 ], [ %517, %474 ], [ %48, %523 ], [ %48, %557 ], [ %48, %546 ], [ %48, %552 ], [ %48, %550 ]
  %569 = phi float [ %466, %393 ], [ %518, %474 ], [ %49, %523 ], [ %49, %557 ], [ %49, %546 ], [ %49, %552 ], [ %49, %550 ]
  %570 = phi float [ %467, %393 ], [ %519, %474 ], [ 1.000000e+00, %523 ], [ 1.000000e+00, %557 ], [ 1.000000e+00, %546 ], [ 1.000000e+00, %552 ], [ 1.000000e+00, %550 ]
  %571 = call float @dx.op.unary.f32(i32 7, float %566)  ; Saturate(value)
  %572 = fmul fast float %571, %50
  %573 = fmul fast float %570, %283
  %574 = fmul fast float %573, %571
  br label %575

; <label>:575                                     ; preds = %565, %322
  %576 = phi float [ %567, %565 ], [ %47, %322 ]
  %577 = phi float [ %568, %565 ], [ %48, %322 ]
  %578 = phi float [ %569, %565 ], [ %49, %322 ]
  %579 = phi float [ %574, %565 ], [ %283, %322 ]
  %580 = phi float [ %572, %565 ], [ %50, %322 ]
  %581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %582 = extractvalue %dx.types.CBufRet.f32 %581, 2
  %583 = fptosi float %54 to i32
  %584 = sitofp i32 %583 to float
  %585 = fadd fast float %582, %584
  %586 = fmul fast float %585, 0x3FE3C6EF40000000
  %587 = frem fast float %61, 2.560000e+02
  %588 = frem fast float %62, 2.560000e+02
  %589 = fptoui float %587 to i32
  %590 = fptoui float %588 to i32
  %591 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %589, i32 %590, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %592 = extractvalue %dx.types.ResRet.f32 %591, 0
  %593 = fadd fast float %592, %586
  %594 = call float @dx.op.unary.f32(i32 22, float %593)  ; Frc(value)
  %595 = and i32 %151, 1
  %596 = icmp eq i32 %595, 0
  br i1 %596, label %654, label %597, !dx.controlflow.hints !74

; <label>:597                                     ; preds = %575
  %598 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %148, i32 undef)  ; BufferLoad(srv,index,wot)
  %599 = extractvalue %dx.types.ResRet.f32 %598, 2
  %600 = extractvalue %dx.types.ResRet.f32 %598, 3
  %601 = add i32 %148, 16
  %602 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %601, i32 undef)  ; BufferLoad(srv,index,wot)
  %603 = extractvalue %dx.types.ResRet.f32 %602, 0
  %604 = extractvalue %dx.types.ResRet.f32 %602, 1
  %605 = extractvalue %dx.types.ResRet.f32 %602, 2
  %606 = add i32 %148, 32
  %607 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %606, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.f32 %607, 0
  %609 = extractvalue %dx.types.ResRet.f32 %607, 1
  %610 = extractvalue %dx.types.ResRet.f32 %607, 2
  %611 = and i32 %151, 2
  %612 = icmp eq i32 %611, 0
  %613 = call float @dx.op.dot3.f32(i32 55, float %42, float %43, float %44, float %42, float %43, float %44)  ; Dot3(ax,ay,az,bx,by,bz)
  %614 = call float @dx.op.unary.f32(i32 25, float %613)  ; Rsqrt(value)
  %615 = fmul fast float %614, %42
  %616 = fmul fast float %614, %43
  %617 = fmul fast float %614, %44
  %618 = call float @dx.op.dot3.f32(i32 55, float %96, float %97, float %98, float %96, float %97, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %619 = call float @dx.op.unary.f32(i32 25, float %618)  ; Rsqrt(value)
  %620 = fmul fast float %619, %96
  %621 = fmul fast float %619, %97
  %622 = fmul fast float %619, %98
  %623 = call float @dx.op.dot3.f32(i32 55, float %620, float %621, float %622, float %615, float %616, float %617)  ; Dot3(ax,ay,az,bx,by,bz)
  %624 = fmul fast float %623, %623
  %625 = fmul fast float %624, %599
  %626 = fadd fast float %625, %600
  %627 = call float @dx.op.unary.f32(i32 7, float %626)  ; Saturate(value)
  br i1 %612, label %628, label %638, !dx.controlflow.hints !75

; <label>:628                                     ; preds = %597
  %629 = extractvalue %dx.types.ResRet.f32 %598, 1
  %630 = extractvalue %dx.types.ResRet.f32 %598, 0
  %631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %632 = extractvalue %dx.types.CBufRet.f32 %631, 3
  %633 = fmul fast float %632, %618
  %634 = fsub fast float %630, %633
  %635 = fmul fast float %634, %629
  %636 = call float @dx.op.unary.f32(i32 7, float %635)  ; Saturate(value)
  %637 = fmul fast float %636, %627
  br label %638

; <label>:638                                     ; preds = %628, %597
  %639 = phi float [ %637, %628 ], [ %627, %597 ]
  %640 = fsub fast float %603, %608
  %641 = fsub fast float %604, %609
  %642 = fsub fast float %605, %610
  %643 = fmul fast float %639, %640
  %644 = fmul fast float %639, %641
  %645 = fmul fast float %639, %642
  %646 = fadd fast float %643, %608
  %647 = fadd fast float %644, %609
  %648 = fadd fast float %645, %610
  %649 = fmul fast float %646, %576
  %650 = fmul fast float %647, %577
  %651 = fmul fast float %648, %578
  %652 = fmul fast float %639, %579
  %653 = fmul fast float %639, %580
  br label %654

; <label>:654                                     ; preds = %638, %575
  %655 = phi float [ %649, %638 ], [ %576, %575 ]
  %656 = phi float [ %650, %638 ], [ %577, %575 ]
  %657 = phi float [ %651, %638 ], [ %578, %575 ]
  %658 = phi float [ %652, %638 ], [ %579, %575 ]
  %659 = phi float [ %653, %638 ], [ %580, %575 ]
  %660 = add i32 %31, 152
  %661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %660, i32 undef)  ; BufferLoad(srv,index,wot)
  %662 = extractvalue %dx.types.ResRet.i32 %661, 0
  %663 = add i32 %662, 0
  %664 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %663, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %665 = add i32 %31, 24
  %666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %665, i32 undef)  ; BufferLoad(srv,index,wot)
  %667 = extractvalue %dx.types.ResRet.i32 %666, 0
  %668 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %664, %dx.types.Handle %57, float %243, float %244, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %669 = extractvalue %dx.types.ResRet.f32 %668, 0
  %670 = extractvalue %dx.types.ResRet.f32 %668, 1
  %671 = extractvalue %dx.types.ResRet.f32 %668, 2
  %672 = extractvalue %dx.types.ResRet.f32 %668, 3
  %673 = and i32 %667, 255
  %674 = uitofp i32 %673 to float
  %675 = lshr i32 %667, 8
  %676 = and i32 %675, 255
  %677 = uitofp i32 %676 to float
  %678 = fmul fast float %672, %674
  %679 = fadd fast float %678, %677
  %680 = fmul fast float %679, 0x3F70101000000000
  %681 = add i32 %31, 56
  %682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %681, i32 undef)  ; BufferLoad(srv,index,wot)
  %683 = extractvalue %dx.types.ResRet.i32 %682, 0
  %684 = and i32 %683, 255
  %685 = uitofp i32 %684 to float
  %686 = fmul fast float %685, 0x3F70101020000000
  %687 = lshr i32 %683, 8
  %688 = and i32 %687, 255
  %689 = uitofp i32 %688 to float
  %690 = fmul fast float %689, 0x3F70101020000000
  %691 = lshr i32 %683, 16
  %692 = and i32 %691, 255
  %693 = uitofp i32 %692 to float
  %694 = fmul fast float %693, 0x3F70101020000000
  %695 = fmul fast float %669, %655
  %696 = fmul fast float %686, %686
  %697 = fmul fast float %696, %695
  %698 = fmul fast float %670, %656
  %699 = fmul fast float %690, %690
  %700 = fmul fast float %699, %698
  %701 = fmul fast float %671, %657
  %702 = fmul fast float %694, %694
  %703 = fmul fast float %702, %701
  %704 = add i32 %31, 28
  %705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %704, i32 undef)  ; BufferLoad(srv,index,wot)
  %706 = extractvalue %dx.types.ResRet.i32 %705, 0
  %707 = add i32 %31, 156
  %708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %707, i32 undef)  ; BufferLoad(srv,index,wot)
  %709 = extractvalue %dx.types.ResRet.i32 %708, 0
  %710 = add i32 %709, 0
  %711 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %710, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %712 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %711, %dx.types.Handle %57, float %243, float %244, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %713 = extractvalue %dx.types.ResRet.f32 %712, 0
  %714 = extractvalue %dx.types.ResRet.f32 %712, 1
  %715 = extractvalue %dx.types.ResRet.f32 %712, 3
  %716 = and i32 %706, 255
  %717 = uitofp i32 %716 to float
  %718 = lshr i32 %706, 8
  %719 = and i32 %718, 255
  %720 = uitofp i32 %719 to float
  %721 = lshr i32 %706, 16
  %722 = and i32 %721, 255
  %723 = uitofp i32 %722 to float
  %724 = fmul fast float %723, 0x3F70101000000000
  %725 = fmul fast float %713, %717
  %726 = fadd fast float %725, %720
  %727 = fmul fast float %726, 0x3F70101000000000
  %728 = fadd fast float %714, -5.000000e-01
  %729 = fadd fast float %715, -5.000000e-01
  %730 = fmul fast float %728, %724
  %731 = fmul fast float %729, %724
  %732 = fadd fast float %730, 5.000000e-01
  %733 = fadd fast float %731, 5.000000e-01
  %734 = fmul fast float %732, 2.000000e+00
  %735 = fadd fast float %734, -1.000000e+00
  %736 = fmul fast float %733, 2.000000e+00
  %737 = fadd fast float %736, -1.000000e+00
  %738 = fadd fast float %735, %737
  %739 = fmul fast float %738, 5.000000e-01
  %740 = fsub fast float %735, %737
  %741 = fmul fast float %740, 5.000000e-01
  %742 = call float @dx.op.unary.f32(i32 6, float %739)  ; FAbs(value)
  %743 = fsub fast float 1.000000e+00, %742
  %744 = call float @dx.op.unary.f32(i32 6, float %741)  ; FAbs(value)
  %745 = fsub fast float %743, %744
  %746 = call float @dx.op.dot3.f32(i32 55, float %739, float %741, float %745, float %739, float %741, float %745)  ; Dot3(ax,ay,az,bx,by,bz)
  %747 = call float @dx.op.unary.f32(i32 25, float %746)  ; Rsqrt(value)
  %748 = fmul fast float %739, %747
  %749 = fmul fast float %741, %747
  %750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %751 = extractvalue %dx.types.CBufRet.f32 %750, 3
  %752 = fcmp fast ogt float %751, 0.000000e+00
  %753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %754 = extractvalue %dx.types.CBufRet.f32 %753, 1
  br i1 %752, label %755, label %780

; <label>:755                                     ; preds = %654
  %756 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %36, float %37, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %757 = extractvalue %dx.types.ResRet.f32 %756, 0
  %758 = extractvalue %dx.types.ResRet.f32 %756, 1
  %759 = extractvalue %dx.types.ResRet.f32 %756, 2
  %760 = extractvalue %dx.types.ResRet.f32 %756, 3
  %761 = fmul fast float %754, %760
  %762 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %36, float %37, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %763 = extractvalue %dx.types.ResRet.f32 %762, 0
  %764 = extractvalue %dx.types.ResRet.f32 %762, 1
  %765 = extractvalue %dx.types.ResRet.f32 %762, 2
  %766 = extractvalue %dx.types.ResRet.f32 %762, 3
  %767 = fmul fast float %754, %763
  %768 = fmul fast float %754, %764
  %769 = fmul fast float %754, %765
  %770 = fmul fast float %754, %766
  %771 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %36, float %37, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %772 = extractvalue %dx.types.ResRet.f32 %771, 0
  %773 = extractvalue %dx.types.ResRet.f32 %771, 1
  %774 = extractvalue %dx.types.ResRet.f32 %771, 2
  %775 = extractvalue %dx.types.ResRet.f32 %771, 3
  %776 = fmul fast float %754, %772
  %777 = fmul fast float %754, %773
  %778 = fmul fast float %754, %774
  %779 = fmul fast float %754, %775
  br label %785

; <label>:780                                     ; preds = %654
  %781 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %26, float %36, float %37, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %782 = extractvalue %dx.types.ResRet.f32 %781, 0
  %783 = extractvalue %dx.types.ResRet.f32 %781, 1
  %784 = extractvalue %dx.types.ResRet.f32 %781, 2
  br label %785

; <label>:785                                     ; preds = %780, %755
  %786 = phi float [ %776, %755 ], [ 0.000000e+00, %780 ]
  %787 = phi float [ %777, %755 ], [ 0.000000e+00, %780 ]
  %788 = phi float [ %778, %755 ], [ 0.000000e+00, %780 ]
  %789 = phi float [ %779, %755 ], [ 0.000000e+00, %780 ]
  %790 = phi float [ %767, %755 ], [ 0.000000e+00, %780 ]
  %791 = phi float [ %768, %755 ], [ 0.000000e+00, %780 ]
  %792 = phi float [ %769, %755 ], [ 0.000000e+00, %780 ]
  %793 = phi float [ %770, %755 ], [ 0.000000e+00, %780 ]
  %794 = phi float [ %757, %755 ], [ %782, %780 ]
  %795 = phi float [ %758, %755 ], [ %783, %780 ]
  %796 = phi float [ %759, %755 ], [ %784, %780 ]
  %797 = phi float [ %761, %755 ], [ 0.000000e+00, %780 ]
  %798 = fmul float %754, %796
  %799 = fmul float %754, %795
  %800 = fmul float %754, %794
  %801 = call float @dx.op.dot2.f32(i32 54, float %748, float %749, float %748, float %749)  ; Dot2(ax,ay,bx,by)
  %802 = fsub fast float 1.000000e+00, %801
  %803 = call float @dx.op.unary.f32(i32 7, float %802)  ; Saturate(value)
  %804 = call float @dx.op.unary.f32(i32 24, float %803)  ; Sqrt(value)
  %805 = fmul fast float %804, %42
  %806 = fmul fast float %804, %43
  %807 = fmul fast float %804, %44
  %808 = fmul fast float %748, %38
  %809 = fmul fast float %748, %39
  %810 = fmul fast float %748, %40
  %811 = fmul fast float %108, %749
  %812 = fmul fast float %109, %749
  %813 = fmul fast float %110, %749
  %814 = fadd fast float %811, %808
  %815 = fadd fast float %814, %805
  %816 = fadd fast float %812, %809
  %817 = fadd fast float %816, %806
  %818 = fadd fast float %813, %810
  %819 = fadd fast float %818, %807
  %820 = call float @dx.op.dot3.f32(i32 55, float %815, float %817, float %819, float %815, float %817, float %819)  ; Dot3(ax,ay,az,bx,by,bz)
  %821 = call float @dx.op.unary.f32(i32 25, float %820)  ; Rsqrt(value)
  %822 = fmul fast float %815, %821
  %823 = fmul fast float %817, %821
  %824 = fmul fast float %819, %821
  %825 = call float @dx.op.dot3.f32(i32 55, float %96, float %97, float %98, float %96, float %97, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %826 = call float @dx.op.unary.f32(i32 25, float %825)  ; Rsqrt(value)
  %827 = fmul fast float %826, %96
  %828 = fmul fast float %826, %97
  %829 = fmul fast float %826, %98
  %830 = fsub fast float -0.000000e+00, %827
  %831 = fsub fast float -0.000000e+00, %828
  %832 = fsub fast float -0.000000e+00, %829
  %833 = fadd fast float %680, 0xBFB99999A0000000
  %834 = call float @dx.op.unary.f32(i32 7, float %833)  ; Saturate(value)
  %835 = fmul fast float %834, 0x3FF1C71C80000000
  %836 = call float @dx.op.binary.f32(i32 36, float %680, float 0x3FB99999A0000000)  ; FMin(a,b)
  %837 = fsub fast float 1.000000e+00, %835
  %838 = call float @dx.op.unary.f32(i32 7, float %837)  ; Saturate(value)
  %839 = fmul fast float %838, %697
  %840 = fmul fast float %838, %700
  %841 = fmul fast float %838, %703
  %842 = call float @dx.op.unary.f32(i32 7, float %839)  ; Saturate(value)
  %843 = call float @dx.op.unary.f32(i32 7, float %840)  ; Saturate(value)
  %844 = call float @dx.op.unary.f32(i32 7, float %841)  ; Saturate(value)
  %845 = fmul fast float %835, %697
  %846 = fmul fast float %835, %700
  %847 = fmul fast float %835, %703
  %848 = fadd fast float %845, %836
  %849 = fadd fast float %846, %836
  %850 = fadd fast float %847, %836
  %851 = call float @dx.op.unary.f32(i32 7, float %848)  ; Saturate(value)
  %852 = call float @dx.op.unary.f32(i32 7, float %849)  ; Saturate(value)
  %853 = call float @dx.op.unary.f32(i32 7, float %850)  ; Saturate(value)
  %854 = call float @dx.op.unary.f32(i32 7, float %727)  ; Saturate(value)
  %855 = call float @dx.op.dot3.f32(i32 55, float %842, float %843, float %844, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %856 = add i32 %31, 32
  %857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %856, i32 undef)  ; BufferLoad(srv,index,wot)
  %858 = extractvalue %dx.types.ResRet.i32 %857, 0
  %859 = and i32 %858, 255
  %860 = uitofp i32 %859 to float
  %861 = lshr i32 %858, 8
  %862 = and i32 %861, 255
  %863 = uitofp i32 %862 to float
  %864 = fmul fast float %863, %855
  %865 = fadd fast float %864, %860
  %866 = fmul fast float %865, 0x3F70101020000000
  %867 = call float @dx.op.unary.f32(i32 7, float %866)  ; Saturate(value)
  %868 = and i32 %151, 8192
  %869 = icmp eq i32 %868, 0
  %870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %871 = extractvalue %dx.types.CBufRet.f32 %870, 0
  br i1 %869, label %878, label %872, !dx.controlflow.hints !76

; <label>:872                                     ; preds = %785
  %873 = add i32 %148, 176
  %874 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %873, i32 undef)  ; BufferLoad(srv,index,wot)
  %875 = extractvalue %dx.types.ResRet.f32 %874, 0
  %876 = fcmp fast oge float %875, 0.000000e+00
  %877 = select i1 %876, float %875, float %871
  br label %885

; <label>:878                                     ; preds = %785
  %879 = add i32 %31, 136
  %880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %879, i32 undef)  ; BufferLoad(srv,index,wot)
  %881 = extractvalue %dx.types.ResRet.i32 %880, 0
  %882 = bitcast i32 %881 to float
  %883 = fcmp fast oge float %882, 0.000000e+00
  %884 = select i1 %883, float %882, float %871
  br label %885

; <label>:885                                     ; preds = %878, %872
  %886 = phi float [ %877, %872 ], [ %884, %878 ]
  %887 = fmul fast float %659, %658
  %888 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %286, i32 %287, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %889 = extractvalue %dx.types.ResRet.i32 %888, 0
  %890 = lshr i32 %889, 18
  %891 = uitofp i32 %890 to float
  %892 = fmul fast float %891, 0x3F4C00EBA0000000
  %893 = call float @dx.op.unary.f32(i32 21, float %892)  ; Exp(value)
  %894 = fadd fast float %893, -1.000000e+00
  %895 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %896 = extractvalue %dx.types.Dimensions %895, 0
  %897 = sitofp i32 %896 to float
  %898 = extractvalue %dx.types.Dimensions %895, 1
  %899 = sitofp i32 %898 to float
  %900 = fcmp fast oge float %284, %897
  %901 = fcmp fast oge float %285, %899
  %902 = or i1 %900, %901
  %903 = select i1 %902, float 0x4197782600000000, float %894
  %904 = icmp eq i32 %147, 3
  %905 = fcmp fast ogt float %54, %903
  %906 = and i1 %310, %905
  %907 = or i1 %904, %906
  %908 = icmp eq i32 %147, 2
  %909 = fcmp fast ole float %54, %903
  %910 = and i1 %908, %909
  %911 = or i1 %910, %907
  %912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %913 = extractvalue %dx.types.CBufRet.f32 %912, 3
  %914 = fcmp fast ogt float %913, 0.000000e+00
  br i1 %914, label %915, label %922

; <label>:915                                     ; preds = %885
  %916 = fmul fast float %823, 0xBFDF454380000000
  %917 = fmul fast float %824, 0x3FDF454380000000
  %918 = fmul fast float %822, 0xBFDF454380000000
  %919 = call float @dx.op.dot4.f32(i32 56, float %800, float %799, float %798, float %797, float 0x3FD20DD760000000, float %916, float %917, float %918)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %920 = call float @dx.op.dot4.f32(i32 56, float %790, float %791, float %792, float %793, float 0x3FD20DD760000000, float %916, float %917, float %918)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %921 = call float @dx.op.dot4.f32(i32 56, float %786, float %787, float %788, float %789, float 0x3FD20DD760000000, float %916, float %917, float %918)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %922

; <label>:922                                     ; preds = %915, %885
  %923 = phi float [ %919, %915 ], [ %800, %885 ]
  %924 = phi float [ %920, %915 ], [ %799, %885 ]
  %925 = phi float [ %921, %915 ], [ %798, %885 ]
  %926 = call float @dx.op.dot3.f32(i32 55, float %822, float %823, float %824, float %830, float %831, float %832)  ; Dot3(ax,ay,az,bx,by,bz)
  %927 = call float @dx.op.unary.f32(i32 7, float %926)  ; Saturate(value)
  br i1 %914, label %928, label %1028

; <label>:928                                     ; preds = %922
  %929 = fsub fast float -0.000000e+00, %789
  %930 = fsub fast float %929, %793
  %931 = fsub fast float %930, %797
  %932 = fsub fast float -0.000000e+00, %787
  %933 = fsub fast float %932, %791
  %934 = fsub fast float %933, %799
  %935 = fadd fast float %792, %788
  %936 = fadd fast float %935, %798
  %937 = call float @dx.op.dot3.f32(i32 55, float %931, float %934, float %936, float %931, float %934, float %936)  ; Dot3(ax,ay,az,bx,by,bz)
  %938 = call float @dx.op.unary.f32(i32 25, float %937)  ; Rsqrt(value)
  %939 = fmul fast float %938, %931
  %940 = fmul fast float %938, %934
  %941 = fmul fast float %938, %936
  %942 = fmul fast float %940, 0xBFD4D8D7C0000000
  %943 = fmul fast float %941, 0x3FD4D8D7C0000000
  %944 = fmul fast float %939, 0xBFD4D8D7C0000000
  %945 = call float @dx.op.dot4.f32(i32 56, float %800, float %799, float %798, float %797, float 0x3FD20DD760000000, float %942, float %943, float %944)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %946 = call float @dx.op.dot4.f32(i32 56, float %790, float %791, float %792, float %793, float 0x3FD20DD760000000, float %942, float %943, float %944)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %947 = call float @dx.op.dot4.f32(i32 56, float %786, float %787, float %788, float %789, float 0x3FD20DD760000000, float %942, float %943, float %944)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %948 = fmul fast float %945, 0x4003333340000000
  %949 = fmul fast float %800, 0x3FE5AA35A0000000
  %950 = fsub fast float %948, %949
  %951 = fmul fast float %946, 0x4003333340000000
  %952 = fmul fast float %790, 0x3FE5AA35A0000000
  %953 = fsub fast float %951, %952
  %954 = fmul fast float %947, 0x4003333340000000
  %955 = fmul fast float %786, 0x3FE5AA35A0000000
  %956 = fsub fast float %954, %955
  %957 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %950)  ; FMax(a,b)
  %958 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %953)  ; FMax(a,b)
  %959 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %956)  ; FMax(a,b)
  %960 = fsub fast float %939, %827
  %961 = fsub fast float %940, %828
  %962 = fsub fast float %941, %829
  %963 = call float @dx.op.dot3.f32(i32 55, float %960, float %961, float %962, float %960, float %961, float %962)  ; Dot3(ax,ay,az,bx,by,bz)
  %964 = call float @dx.op.unary.f32(i32 25, float %963)  ; Rsqrt(value)
  %965 = fmul fast float %964, %960
  %966 = fmul fast float %964, %961
  %967 = fmul fast float %964, %962
  %968 = call float @dx.op.dot3.f32(i32 55, float %822, float %823, float %824, float %939, float %940, float %941)  ; Dot3(ax,ay,az,bx,by,bz)
  %969 = call float @dx.op.unary.f32(i32 6, float %968)  ; FAbs(value)
  %970 = call float @dx.op.dot3.f32(i32 55, float %822, float %823, float %824, float %965, float %966, float %967)  ; Dot3(ax,ay,az,bx,by,bz)
  %971 = fmul fast float %970, %970
  %972 = call float @dx.op.dot3.f32(i32 55, float %830, float %831, float %832, float %965, float %966, float %967)  ; Dot3(ax,ay,az,bx,by,bz)
  %973 = call float @dx.op.unary.f32(i32 6, float %972)  ; FAbs(value)
  %974 = fsub fast float 1.000000e+00, %854
  %975 = call float @dx.op.binary.f32(i32 35, float %974, float 0x3F847AE140000000)  ; FMax(a,b)
  %976 = fmul fast float %975, %975
  %977 = fmul fast float %976, %976
  %978 = fsub fast float 1.000000e+00, %977
  %979 = fmul fast float %927, %927
  %980 = fmul fast float %979, %978
  %981 = fadd fast float %980, %977
  %982 = bitcast float %981 to i32
  %983 = ashr i32 %982, 1
  %984 = add nsw i32 %983, 532487669
  %985 = bitcast i32 %984 to float
  %986 = fadd fast float %985, %927
  %987 = fmul fast float %977, %971
  %988 = fsub fast float 1.000000e+00, %971
  %989 = fadd fast float %988, %987
  %990 = fmul fast float %969, %969
  %991 = fmul fast float %990, %978
  %992 = fadd fast float %991, %977
  %993 = bitcast float %992 to i32
  %994 = ashr i32 %993, 1
  %995 = add nsw i32 %994, 532487669
  %996 = bitcast i32 %995 to float
  %997 = fadd fast float %996, %969
  %998 = fmul fast float %989, %989
  %999 = fmul fast float %998, %986
  %1000 = fmul fast float %999, %997
  %1001 = fdiv fast float 1.000000e+00, %1000
  %1002 = fmul fast float %977, %1001
  %1003 = fsub fast float 1.000000e+00, %973
  %1004 = bitcast float %1003 to i32
  %1005 = sitofp i32 %1004 to float
  %1006 = fmul fast float %1005, 5.000000e+00
  %1007 = fadd fast float %1006, 0xC1EFBF8940000000
  %1008 = fptosi float %1007 to i32
  %1009 = bitcast i32 %1008 to float
  %1010 = fsub fast float 1.000000e+00, %851
  %1011 = fsub fast float 1.000000e+00, %852
  %1012 = fsub fast float 1.000000e+00, %853
  %1013 = fmul fast float %1009, %1010
  %1014 = fmul fast float %1009, %1011
  %1015 = fmul fast float %1009, %1012
  %1016 = fadd fast float %1013, %851
  %1017 = fadd fast float %1014, %852
  %1018 = fadd fast float %1015, %853
  %1019 = fmul fast float %1002, %957
  %1020 = fmul fast float %1019, %1016
  %1021 = fmul fast float %1002, %958
  %1022 = fmul fast float %1021, %1017
  %1023 = fmul fast float %1002, %959
  %1024 = fmul fast float %1023, %1018
  %1025 = call float @dx.op.binary.f32(i32 35, float %1020, float 0.000000e+00)  ; FMax(a,b)
  %1026 = call float @dx.op.binary.f32(i32 35, float %1022, float 0.000000e+00)  ; FMax(a,b)
  %1027 = call float @dx.op.binary.f32(i32 35, float %1024, float 0.000000e+00)  ; FMax(a,b)
  br label %1028

; <label>:1028                                    ; preds = %928, %922
  %1029 = phi float [ %1025, %928 ], [ 0.000000e+00, %922 ]
  %1030 = phi float [ %1026, %928 ], [ 0.000000e+00, %922 ]
  %1031 = phi float [ %1027, %928 ], [ 0.000000e+00, %922 ]
  %1032 = fmul fast float %927, 9.843750e-01
  %1033 = fmul fast float %854, 9.843750e-01
  %1034 = fadd fast float %1032, 7.812500e-03
  %1035 = fadd fast float %1033, 7.812500e-03
  %1036 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %26, float %1034, float %1035, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1037 = extractvalue %dx.types.ResRet.f32 %1036, 2
  %1038 = extractvalue %dx.types.ResRet.f32 %1036, 3
  %1039 = fmul fast float %1037, %851
  %1040 = fmul fast float %1037, %852
  %1041 = fmul fast float %1037, %853
  %1042 = fadd fast float %1039, %1038
  %1043 = fadd fast float %1040, %1038
  %1044 = fadd fast float %1041, %1038
  %1045 = call float @dx.op.binary.f32(i32 35, float %1043, float %1044)  ; FMax(a,b)
  %1046 = call float @dx.op.binary.f32(i32 35, float %1042, float %1045)  ; FMax(a,b)
  %1047 = fsub fast float 1.000000e+00, %1046
  %1048 = call float @dx.op.dot3.f32(i32 55, float %827, float %828, float %829, float %822, float %823, float %824)  ; Dot3(ax,ay,az,bx,by,bz)
  %1049 = fmul fast float %1048, 2.000000e+00
  %1050 = fmul fast float %1049, %822
  %1051 = fmul fast float %1049, %823
  %1052 = fmul fast float %1049, %824
  %1053 = fsub fast float %827, %1050
  %1054 = fsub fast float %828, %1051
  %1055 = fsub fast float %829, %1052
  br i1 %914, label %1056, label %1063

; <label>:1056                                    ; preds = %1028
  %1057 = fmul fast float %1054, 0xBFDF454380000000
  %1058 = fmul fast float %1055, 0x3FDF454380000000
  %1059 = fmul fast float %1053, 0xBFDF454380000000
  %1060 = call float @dx.op.dot4.f32(i32 56, float %800, float %799, float %798, float %797, float 0x3FD20DD760000000, float %1057, float %1058, float %1059)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1061 = call float @dx.op.dot4.f32(i32 56, float %790, float %791, float %792, float %793, float 0x3FD20DD760000000, float %1057, float %1058, float %1059)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1062 = call float @dx.op.dot4.f32(i32 56, float %786, float %787, float %788, float %789, float 0x3FD20DD760000000, float %1057, float %1058, float %1059)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %1063

; <label>:1063                                    ; preds = %1056, %1028
  %1064 = phi float [ %1060, %1056 ], [ %800, %1028 ]
  %1065 = phi float [ %1061, %1056 ], [ %799, %1028 ]
  %1066 = phi float [ %1062, %1056 ], [ %798, %1028 ]
  %1067 = call float @dx.op.dot3.f32(i32 55, float %1064, float %1065, float %1066, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %1069 = extractvalue %dx.types.CBufRet.f32 %1068, 2
  %1070 = extractvalue %dx.types.CBufRet.f32 %1068, 3
  %1071 = fmul fast float %1069, %61
  %1072 = fmul fast float %1070, %62
  %1073 = fptoui float %1071 to i32
  %1074 = fptoui float %1072 to i32
  %1075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1076 = extractvalue %dx.types.CBufRet.f32 %1075, 0
  %1077 = extractvalue %dx.types.CBufRet.f32 %1075, 2
  %1078 = extractvalue %dx.types.CBufRet.f32 %1075, 3
  %1079 = fadd fast float %54, -4.000000e+00
  %1080 = call float @dx.op.binary.f32(i32 35, float %1079, float 0.000000e+00)  ; FMax(a,b)
  %1081 = fadd fast float %1080, %1076
  %1082 = fmul fast float %1081, %1077
  %1083 = call float @dx.op.unary.f32(i32 23, float %1082)  ; Log(value)
  %1084 = fmul fast float %1083, %1078
  %1085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1086 = extractvalue %dx.types.CBufRet.f32 %1085, 2
  %1087 = fmul fast float %1084, %1086
  %1088 = call float @dx.op.unary.f32(i32 7, float %1087)  ; Saturate(value)
  %1089 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1090 = extractvalue %dx.types.CBufRet.i32 %1089, 1
  %1091 = add i32 %1090, -1
  %1092 = uitofp i32 %1090 to float
  %1093 = fmul fast float %1092, %1088
  %1094 = fptoui float %1093 to i32
  %1095 = call i32 @dx.op.binary.i32(i32 40, i32 %1094, i32 %1091)  ; UMin(a,b)
  %1096 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %1097 = extractvalue %dx.types.CBufRet.i32 %1096, 2
  %1098 = extractvalue %dx.types.CBufRet.i32 %1096, 3
  %1099 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1074, i32 %1097, i32 %1073)  ; UMad(a,b,c)
  %1100 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1095, i32 %1098, i32 %1099)  ; UMad(a,b,c)
  %1101 = call float @dx.op.binary.f32(i32 35, float %54, float 0.000000e+00)  ; FMax(a,b)
  %1102 = fptoui float %1101 to i32
  %1103 = lshr i32 %1102, 5
  %1104 = call i32 @dx.op.binary.i32(i32 40, i32 %1103, i32 8191)  ; UMin(a,b)
  %1105 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1106 = extractvalue %dx.types.CBufRet.i32 %1105, 2
  %1107 = add nsw i32 %1106, -1
  %1108 = call i32 @dx.op.binary.i32(i32 37, i32 %1107, i32 0)  ; IMax(a,b)
  %1109 = shl i32 %1104, 2
  %1110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1109, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.i32 %1110, 0
  %1112 = lshr i32 %1111, 16
  %1113 = and i32 %1111, 65535
  %1114 = lshr i32 %1111, 21
  %1115 = lshr i32 %1113, 5
  %1116 = call i32 @dx.op.binary.i32(i32 40, i32 %1115, i32 %1108)  ; UMin(a,b)
  %1117 = icmp ugt i32 %1114, %1116
  br i1 %1117, label %1480, label %1118

; <label>:1118                                    ; preds = %1063
  br label %1119

; <label>:1119                                    ; preds = %1472, %1118
  %1120 = phi float [ %1473, %1472 ], [ 0.000000e+00, %1118 ]
  %1121 = phi float [ %1474, %1472 ], [ 0.000000e+00, %1118 ]
  %1122 = phi float [ %1475, %1472 ], [ 0.000000e+00, %1118 ]
  %1123 = phi float [ %1476, %1472 ], [ 1.000000e+00, %1118 ]
  %1124 = phi i32 [ %1477, %1472 ], [ %1114, %1118 ]
  %1125 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1126 = extractvalue %dx.types.CBufRet.i32 %1125, 2
  %1127 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1100, i32 %1126, i32 %1124)  ; UMad(a,b,c)
  %1128 = shl i32 %1127, 2
  %1129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1128, i32 undef)  ; BufferLoad(srv,index,wot)
  %1130 = extractvalue %dx.types.ResRet.i32 %1129, 0
  %1131 = shl i32 %1124, 5
  %1132 = sub nsw i32 %1112, %1131
  %1133 = call i32 @dx.op.binary.i32(i32 37, i32 %1132, i32 0)  ; IMax(a,b)
  %1134 = call i32 @dx.op.binary.i32(i32 38, i32 %1133, i32 31)  ; IMin(a,b)
  %1135 = sub nsw i32 1, %1112
  %1136 = add nsw i32 %1135, %1113
  %1137 = call i32 @dx.op.binary.i32(i32 37, i32 %1136, i32 0)  ; IMax(a,b)
  %1138 = call i32 @dx.op.binary.i32(i32 38, i32 %1137, i32 32)  ; IMin(a,b)
  %1139 = and i32 %1138, 31
  %1140 = shl i32 -1, %1139
  %1141 = xor i32 %1140, -1
  %1142 = and i32 %1134, 31
  %1143 = shl i32 %1141, %1142
  %1144 = icmp eq i32 %1138, 32
  %1145 = select i1 %1144, i32 -1, i32 %1143
  %1146 = and i32 %1145, %1130
  %1147 = icmp eq i32 %1146, 0
  br i1 %1147, label %1472, label %1148

; <label>:1148                                    ; preds = %1119
  br label %1149

; <label>:1149                                    ; preds = %1255, %1148
  %1150 = phi float [ %1256, %1255 ], [ %1120, %1148 ]
  %1151 = phi float [ %1257, %1255 ], [ %1121, %1148 ]
  %1152 = phi float [ %1258, %1255 ], [ %1122, %1148 ]
  %1153 = phi float [ %1259, %1255 ], [ %1123, %1148 ]
  %1154 = phi i32 [ %1159, %1255 ], [ %1146, %1148 ]
  %1155 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1154)  ; FirstbitLo(value)
  %1156 = add i32 %1155, %1131
  %1157 = and i32 %1155, 31
  %1158 = shl i32 1, %1157
  %1159 = xor i32 %1158, %1154
  %1160 = mul i32 %1156, 72
  %1161 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1160, i32 undef)  ; BufferLoad(srv,index,wot)
  %1162 = extractvalue %dx.types.ResRet.f32 %1161, 0
  %1163 = extractvalue %dx.types.ResRet.f32 %1161, 1
  %1164 = extractvalue %dx.types.ResRet.f32 %1161, 2
  %1165 = add i32 %1160, 12
  %1166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1165, i32 undef)  ; BufferLoad(srv,index,wot)
  %1167 = extractvalue %dx.types.ResRet.i32 %1166, 0
  %1168 = add i32 %1160, 16
  %1169 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1170 = extractvalue %dx.types.ResRet.f32 %1169, 0
  %1171 = extractvalue %dx.types.ResRet.f32 %1169, 1
  %1172 = extractvalue %dx.types.ResRet.f32 %1169, 2
  %1173 = add i32 %1160, 28
  %1174 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1173, i32 undef)  ; BufferLoad(srv,index,wot)
  %1175 = extractvalue %dx.types.ResRet.f32 %1174, 0
  %1176 = add i32 %1160, 32
  %1177 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1176, i32 undef)  ; BufferLoad(srv,index,wot)
  %1178 = extractvalue %dx.types.ResRet.f32 %1177, 0
  %1179 = extractvalue %dx.types.ResRet.f32 %1177, 1
  %1180 = extractvalue %dx.types.ResRet.f32 %1177, 2
  %1181 = extractvalue %dx.types.ResRet.f32 %1177, 3
  %1182 = add i32 %1160, 48
  %1183 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1182, i32 undef)  ; BufferLoad(srv,index,wot)
  %1184 = extractvalue %dx.types.ResRet.f32 %1183, 0
  %1185 = extractvalue %dx.types.ResRet.f32 %1183, 1
  %1186 = add i32 %1160, 56
  %1187 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1188 = extractvalue %dx.types.ResRet.f32 %1187, 0
  %1189 = extractvalue %dx.types.ResRet.f32 %1187, 1
  %1190 = add i32 %1160, 64
  %1191 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1192 = extractvalue %dx.types.ResRet.f32 %1191, 0
  %1193 = extractvalue %dx.types.ResRet.f32 %1191, 1
  %1194 = mul i32 %1156, 60
  %1195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1194, i32 undef)  ; BufferLoad(srv,index,wot)
  %1196 = extractvalue %dx.types.ResRet.f32 %1195, 0
  %1197 = extractvalue %dx.types.ResRet.f32 %1195, 1
  %1198 = extractvalue %dx.types.ResRet.f32 %1195, 2
  %1199 = add i32 %1194, 12
  %1200 = add i32 %1194, 48
  %1201 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1200, i32 undef)  ; BufferLoad(srv,index,wot)
  %1202 = extractvalue %dx.types.ResRet.f32 %1201, 0
  %1203 = extractvalue %dx.types.ResRet.f32 %1201, 1
  %1204 = extractvalue %dx.types.ResRet.f32 %1201, 2
  %1205 = and i32 %1167, 32767
  %1206 = bitcast float %1162 to i32
  %1207 = icmp eq i32 %1206, -1
  %1208 = bitcast float %1163 to i32
  %1209 = and i32 %1167, 32768
  %1210 = icmp ne i32 %1209, 0
  %1211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1212 = extractvalue %dx.types.CBufRet.f32 %1211, 0
  %1213 = extractvalue %dx.types.CBufRet.f32 %1211, 1
  %1214 = extractvalue %dx.types.CBufRet.f32 %1211, 2
  %1215 = fsub fast float %1196, %1212
  %1216 = fsub fast float %1197, %1213
  %1217 = fsub fast float %1198, %1214
  %1218 = fsub fast float %96, %1215
  %1219 = fsub fast float %97, %1216
  %1220 = fsub fast float %98, %1217
  %1221 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1199, i32 undef)  ; BufferLoad(srv,index,wot)
  %1222 = extractvalue %dx.types.ResRet.f32 %1221, 0
  %1223 = extractvalue %dx.types.ResRet.f32 %1221, 1
  %1224 = extractvalue %dx.types.ResRet.f32 %1221, 2
  %1225 = call float @dx.op.dot3.f32(i32 55, float %1218, float %1219, float %1220, float %1222, float %1223, float %1224)  ; Dot3(ax,ay,az,bx,by,bz)
  %1226 = add i32 %1194, 24
  %1227 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1226, i32 undef)  ; BufferLoad(srv,index,wot)
  %1228 = extractvalue %dx.types.ResRet.f32 %1227, 0
  %1229 = extractvalue %dx.types.ResRet.f32 %1227, 1
  %1230 = extractvalue %dx.types.ResRet.f32 %1227, 2
  %1231 = call float @dx.op.dot3.f32(i32 55, float %1218, float %1219, float %1220, float %1228, float %1229, float %1230)  ; Dot3(ax,ay,az,bx,by,bz)
  %1232 = add i32 %1194, 36
  %1233 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1232, i32 undef)  ; BufferLoad(srv,index,wot)
  %1234 = extractvalue %dx.types.ResRet.f32 %1233, 0
  %1235 = extractvalue %dx.types.ResRet.f32 %1233, 1
  %1236 = extractvalue %dx.types.ResRet.f32 %1233, 2
  %1237 = call float @dx.op.dot3.f32(i32 55, float %1218, float %1219, float %1220, float %1234, float %1235, float %1236)  ; Dot3(ax,ay,az,bx,by,bz)
  %1238 = call float @dx.op.unary.f32(i32 6, float %1225)  ; FAbs(value)
  %1239 = call float @dx.op.unary.f32(i32 6, float %1231)  ; FAbs(value)
  %1240 = call float @dx.op.unary.f32(i32 6, float %1237)  ; FAbs(value)
  %1241 = fsub fast float %1202, %1238
  %1242 = fsub fast float %1203, %1239
  %1243 = fsub fast float %1204, %1240
  %1244 = fmul fast float %1241, %1170
  %1245 = fmul fast float %1242, %1171
  %1246 = fmul fast float %1243, %1172
  %1247 = call float @dx.op.binary.f32(i32 36, float %1245, float %1246)  ; FMin(a,b)
  %1248 = call float @dx.op.binary.f32(i32 36, float %1244, float %1247)  ; FMin(a,b)
  %1249 = call float @dx.op.unary.f32(i32 7, float %1248)  ; Saturate(value)
  %1250 = call float @dx.op.binary.f32(i32 36, float %1153, float %1249)  ; FMin(a,b)
  %1251 = uitofp i1 %1210 to float
  %1252 = fsub fast float 1.000000e+00, %1251
  %1253 = fmul fast float %1250, %1252
  %1254 = fcmp fast ogt float %1253, 0.000000e+00
  br i1 %1254, label %1261, label %1255

; <label>:1255                                    ; preds = %1403, %1149
  %1256 = phi float [ %1467, %1403 ], [ %1150, %1149 ]
  %1257 = phi float [ %1468, %1403 ], [ %1151, %1149 ]
  %1258 = phi float [ %1469, %1403 ], [ %1152, %1149 ]
  %1259 = phi float [ %1470, %1403 ], [ %1153, %1149 ]
  %1260 = icmp eq i32 %1154, %1158
  br i1 %1260, label %1471, label %1149

; <label>:1261                                    ; preds = %1149
  br i1 %1207, label %1319, label %1262

; <label>:1262                                    ; preds = %1261
  %1263 = fsub fast float -0.000000e+00, %1222
  %1264 = fsub fast float -0.000000e+00, %1223
  %1265 = fsub fast float -0.000000e+00, %1224
  %1266 = call float @dx.op.dot3.f32(i32 55, float %1053, float %1054, float %1055, float %1263, float %1264, float %1265)  ; Dot3(ax,ay,az,bx,by,bz)
  %1267 = fsub fast float -0.000000e+00, %1266
  %1268 = call float @dx.op.dot3.f32(i32 55, float %1218, float %1219, float %1220, float %1263, float %1264, float %1265)  ; Dot3(ax,ay,az,bx,by,bz)
  %1269 = fadd fast float %1268, %1185
  %1270 = fadd fast float %1184, %1268
  %1271 = fsub fast float -0.000000e+00, %1270
  %1272 = fcmp ogt float %1266, -0.000000e+00
  %1273 = select i1 %1272, float %1271, float %1269
  %1274 = call float @dx.op.unary.f32(i32 6, float %1267)  ; FAbs(value)
  %1275 = fdiv fast float 1.000000e+00, %1274
  %1276 = fmul fast float %1273, %1275
  %1277 = call float @dx.op.binary.f32(i32 35, float %1276, float 0.000000e+00)  ; FMax(a,b)
  %1278 = fsub fast float -0.000000e+00, %1228
  %1279 = fsub fast float -0.000000e+00, %1229
  %1280 = fsub fast float -0.000000e+00, %1230
  %1281 = call float @dx.op.dot3.f32(i32 55, float %1053, float %1054, float %1055, float %1278, float %1279, float %1280)  ; Dot3(ax,ay,az,bx,by,bz)
  %1282 = fsub fast float -0.000000e+00, %1281
  %1283 = call float @dx.op.dot3.f32(i32 55, float %1218, float %1219, float %1220, float %1278, float %1279, float %1280)  ; Dot3(ax,ay,az,bx,by,bz)
  %1284 = fadd fast float %1283, %1189
  %1285 = fadd fast float %1188, %1283
  %1286 = fsub fast float -0.000000e+00, %1285
  %1287 = fcmp ogt float %1281, -0.000000e+00
  %1288 = select i1 %1287, float %1286, float %1284
  %1289 = call float @dx.op.unary.f32(i32 6, float %1282)  ; FAbs(value)
  %1290 = fdiv fast float 1.000000e+00, %1289
  %1291 = fmul fast float %1288, %1290
  %1292 = call float @dx.op.binary.f32(i32 35, float %1291, float 0.000000e+00)  ; FMax(a,b)
  %1293 = fsub fast float -0.000000e+00, %1234
  %1294 = fsub fast float -0.000000e+00, %1235
  %1295 = fsub fast float -0.000000e+00, %1236
  %1296 = call float @dx.op.dot3.f32(i32 55, float %1053, float %1054, float %1055, float %1293, float %1294, float %1295)  ; Dot3(ax,ay,az,bx,by,bz)
  %1297 = fsub fast float -0.000000e+00, %1296
  %1298 = call float @dx.op.dot3.f32(i32 55, float %1218, float %1219, float %1220, float %1293, float %1294, float %1295)  ; Dot3(ax,ay,az,bx,by,bz)
  %1299 = fadd fast float %1298, %1193
  %1300 = fadd fast float %1192, %1298
  %1301 = fsub fast float -0.000000e+00, %1300
  %1302 = fcmp ogt float %1296, -0.000000e+00
  %1303 = select i1 %1302, float %1301, float %1299
  %1304 = call float @dx.op.unary.f32(i32 6, float %1297)  ; FAbs(value)
  %1305 = fdiv fast float 1.000000e+00, %1304
  %1306 = fmul fast float %1303, %1305
  %1307 = call float @dx.op.binary.f32(i32 35, float %1306, float 0.000000e+00)  ; FMax(a,b)
  %1308 = call float @dx.op.binary.f32(i32 36, float %1292, float %1307)  ; FMin(a,b)
  %1309 = call float @dx.op.binary.f32(i32 36, float %1277, float %1308)  ; FMin(a,b)
  %1310 = fmul fast float %1309, %1053
  %1311 = fmul fast float %1309, %1054
  %1312 = fmul fast float %1309, %1055
  %1313 = fadd fast float %1310, %96
  %1314 = fadd fast float %1311, %97
  %1315 = fadd fast float %1312, %98
  %1316 = fsub fast float %1313, %1162
  %1317 = fsub fast float %1314, %1163
  %1318 = fsub fast float %1315, %1164
  br label %1326

; <label>:1319                                    ; preds = %1261
  %1320 = fmul fast float %1053, 8.096000e+03
  %1321 = fmul fast float %1054, 8.096000e+03
  %1322 = fmul fast float %1055, 8.096000e+03
  %1323 = fadd fast float %1320, %96
  %1324 = fadd fast float %1321, %97
  %1325 = fadd fast float %1322, %98
  br label %1326

; <label>:1326                                    ; preds = %1319, %1262
  %1327 = phi float [ %1053, %1319 ], [ %1316, %1262 ]
  %1328 = phi float [ %1054, %1319 ], [ %1317, %1262 ]
  %1329 = phi float [ %1055, %1319 ], [ %1318, %1262 ]
  %1330 = phi float [ %1323, %1319 ], [ %1313, %1262 ]
  %1331 = phi float [ %1324, %1319 ], [ %1314, %1262 ]
  %1332 = phi float [ %1325, %1319 ], [ %1315, %1262 ]
  %1333 = fcmp fast olt float %1181, 1.000000e+00
  br i1 %1333, label %1334, label %1365, !dx.controlflow.hints !77

; <label>:1334                                    ; preds = %1326
  %1335 = fmul fast float %1329, %1179
  %1336 = fmul fast float %1328, %1180
  %1337 = fsub fast float %1335, %1336
  %1338 = fmul fast float %1327, %1180
  %1339 = fmul fast float %1329, %1178
  %1340 = fsub fast float %1338, %1339
  %1341 = fmul fast float %1328, %1178
  %1342 = fmul fast float %1327, %1179
  %1343 = fsub fast float %1341, %1342
  %1344 = fmul fast float %1337, 2.000000e+00
  %1345 = fmul fast float %1340, 2.000000e+00
  %1346 = fmul fast float %1343, 2.000000e+00
  %1347 = fmul fast float %1344, %1181
  %1348 = fmul fast float %1345, %1181
  %1349 = fmul fast float %1346, %1181
  %1350 = fmul fast float %1346, %1179
  %1351 = fmul fast float %1345, %1180
  %1352 = fmul fast float %1344, %1180
  %1353 = fmul fast float %1346, %1178
  %1354 = fmul fast float %1345, %1178
  %1355 = fmul fast float %1344, %1179
  %1356 = fadd fast float %1350, %1327
  %1357 = fadd fast float %1356, %1347
  %1358 = fsub fast float %1357, %1351
  %1359 = fsub fast float %1328, %1353
  %1360 = fadd fast float %1359, %1348
  %1361 = fadd fast float %1360, %1352
  %1362 = fadd fast float %1349, %1329
  %1363 = fsub fast float %1362, %1355
  %1364 = fadd fast float %1363, %1354
  br label %1365

; <label>:1365                                    ; preds = %1334, %1326
  %1366 = phi float [ %1358, %1334 ], [ %1327, %1326 ]
  %1367 = phi float [ %1361, %1334 ], [ %1328, %1326 ]
  %1368 = phi float [ %1364, %1334 ], [ %1329, %1326 ]
  br i1 %1207, label %1400, label %1369

; <label>:1369                                    ; preds = %1365
  %1370 = fmul fast float %854, 0x400187C840000000
  %1371 = fadd fast float %1370, 0xC00EFC2120000000
  %1372 = fmul fast float %1371, %854
  %1373 = fadd fast float %1372, 0x3FE5D16340000000
  %1374 = fmul fast float %1373, %854
  %1375 = fadd fast float %1374, 1.000000e+00
  %1376 = call float @dx.op.unary.f32(i32 7, float %1375)  ; Saturate(value)
  %1377 = fsub fast float %1330, %96
  %1378 = fsub fast float %1331, %97
  %1379 = fsub fast float %1332, %98
  %1380 = fsub fast float %1330, %1162
  %1381 = fsub fast float %1331, %1163
  %1382 = fsub fast float %1332, %1164
  %1383 = call float @dx.op.dot3.f32(i32 55, float %1377, float %1378, float %1379, float %1377, float %1378, float %1379)  ; Dot3(ax,ay,az,bx,by,bz)
  %1384 = call float @dx.op.dot3.f32(i32 55, float %1380, float %1381, float %1382, float %1380, float %1381, float %1382)  ; Dot3(ax,ay,az,bx,by,bz)
  %1385 = fadd fast float %1384, 0x3EE4F8B580000000
  %1386 = fdiv fast float %1383, %1385
  %1387 = bitcast float %1386 to i32
  %1388 = ashr i32 %1387, 1
  %1389 = add nsw i32 %1388, 532487669
  %1390 = bitcast i32 %1389 to float
  %1391 = fmul fast float %1390, %1376
  %1392 = call float @dx.op.unary.f32(i32 7, float %1391)  ; Saturate(value)
  %1393 = fmul fast float %1392, 0x4009981AE0000000
  %1394 = fsub fast float 0x40111BBD80000000, %1393
  %1395 = fmul fast float %1394, %1392
  %1396 = fadd fast float %1395, 0xC0009F6020000000
  %1397 = fmul fast float %1396, %1392
  %1398 = fadd fast float %1397, 1.000000e+00
  %1399 = call float @dx.op.unary.f32(i32 7, float %1398)  ; Saturate(value)
  br label %1403

; <label>:1400                                    ; preds = %1365
  %1401 = icmp ne i32 %1208, -1
  %1402 = zext i1 %1401 to i32
  br label %1403

; <label>:1403                                    ; preds = %1400, %1369
  %1404 = phi float [ %854, %1400 ], [ %1399, %1369 ]
  %1405 = phi i32 [ %1402, %1400 ], [ 0, %1369 ]
  %1406 = fmul float %1404, 5.000000e+00
  %1407 = fsub float 5.000000e+00, %1406
  %1408 = icmp ne i32 %1405, 0
  %1409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %1410 = extractvalue %dx.types.CBufRet.f32 %1409, 3
  %1411 = fadd fast float %1410, %1407
  %1412 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1411)  ; FMax(a,b)
  %1413 = call float @dx.op.unary.f32(i32 6, float %1366)  ; FAbs(value)
  %1414 = call float @dx.op.unary.f32(i32 6, float %1367)  ; FAbs(value)
  %1415 = fadd fast float %1414, %1413
  %1416 = call float @dx.op.unary.f32(i32 6, float %1368)  ; FAbs(value)
  %1417 = fadd fast float %1415, %1416
  %1418 = fcmp fast oeq float %1417, 0.000000e+00
  %1419 = fdiv fast float 1.000000e+00, %1417
  %1420 = select i1 %1418, float 1.000000e+00, float %1419
  %1421 = fmul fast float %1420, %1366
  %1422 = fmul fast float %1420, %1367
  %1423 = call float @dx.op.unary.f32(i32 6, float %1422)  ; FAbs(value)
  %1424 = call float @dx.op.unary.f32(i32 6, float %1421)  ; FAbs(value)
  %1425 = fsub fast float 1.000000e+00, %1423
  %1426 = fsub fast float 1.000000e+00, %1424
  %1427 = fcmp fast oge float %1421, 0.000000e+00
  %1428 = fcmp fast oge float %1422, 0.000000e+00
  %1429 = select i1 %1427, float 1.000000e+00, float -1.000000e+00
  %1430 = select i1 %1428, float 1.000000e+00, float -1.000000e+00
  %1431 = fcmp fast ole float %1368, 0.000000e+00
  %1432 = fmul fast float %1429, %1425
  %1433 = fmul fast float %1430, %1426
  %1434 = select i1 %1431, float %1432, float %1421
  %1435 = select i1 %1431, float %1433, float %1422
  %1436 = fmul fast float %1434, 5.000000e-01
  %1437 = fmul fast float %1435, 5.000000e-01
  %1438 = fadd fast float %1436, 5.000000e-01
  %1439 = fadd fast float %1437, 5.000000e-01
  %1440 = uitofp i32 %1205 to float
  %1441 = call float @dx.op.binary.f32(i32 36, float %1412, float 3.000000e+00)  ; FMin(a,b)
  %1442 = fadd fast float %1441, 2.000000e+00
  %1443 = call float @dx.op.unary.f32(i32 21, float %1442)  ; Exp(value)
  %1444 = extractvalue %dx.types.CBufRet.f32 %1409, 1
  %1445 = fmul fast float %1444, %1443
  %1446 = fmul fast float %1445, 2.000000e+00
  %1447 = fsub fast float 1.000000e+00, %1446
  %1448 = fmul fast float %1438, %1447
  %1449 = fmul fast float %1439, %1447
  %1450 = fadd fast float %1448, %1445
  %1451 = fadd fast float %1449, %1445
  %1452 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %25, float %1450, float %1451, float %1440, float undef, i32 0, i32 0, i32 undef, float %1412)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1453 = extractvalue %dx.types.ResRet.f32 %1452, 0
  %1454 = extractvalue %dx.types.ResRet.f32 %1452, 1
  %1455 = extractvalue %dx.types.ResRet.f32 %1452, 2
  %1456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1457 = extractvalue %dx.types.CBufRet.f32 %1456, 3
  %1458 = fmul fast float %1457, %1175
  %1459 = call float @dx.op.binary.f32(i32 36, float %1067, float %1458)  ; FMin(a,b)
  %1460 = select i1 %1408, float %1459, float %1458
  %1461 = fmul fast float %1453, %1253
  %1462 = fmul fast float %1461, %1460
  %1463 = fmul fast float %1454, %1253
  %1464 = fmul fast float %1463, %1460
  %1465 = fmul fast float %1455, %1253
  %1466 = fmul fast float %1465, %1460
  %1467 = fadd fast float %1462, %1150
  %1468 = fadd fast float %1464, %1151
  %1469 = fadd fast float %1466, %1152
  %1470 = fsub fast float %1153, %1253
  br label %1255

; <label>:1471                                    ; preds = %1255
  br label %1472

; <label>:1472                                    ; preds = %1471, %1119
  %1473 = phi float [ %1120, %1119 ], [ %1256, %1471 ]
  %1474 = phi float [ %1121, %1119 ], [ %1257, %1471 ]
  %1475 = phi float [ %1122, %1119 ], [ %1258, %1471 ]
  %1476 = phi float [ %1123, %1119 ], [ %1259, %1471 ]
  %1477 = add i32 %1124, 1
  %1478 = icmp ugt i32 %1477, %1116
  br i1 %1478, label %1479, label %1119, !llvm.loop !78

; <label>:1479                                    ; preds = %1472
  br label %1480

; <label>:1480                                    ; preds = %1479, %1063
  %1481 = phi float [ 0.000000e+00, %1063 ], [ %1473, %1479 ]
  %1482 = phi float [ 0.000000e+00, %1063 ], [ %1474, %1479 ]
  %1483 = phi float [ 0.000000e+00, %1063 ], [ %1475, %1479 ]
  %1484 = call float @dx.op.dot3.f32(i32 55, float %1481, float %1482, float %1483, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1485 = select i1 %131, float 0.000000e+00, float %1481
  %1486 = select i1 %131, float %1484, float %1482
  %1487 = select i1 %131, float 0.000000e+00, float %1483
  %1488 = fmul fast float %1485, %1042
  %1489 = fmul fast float %1486, %1043
  %1490 = fmul fast float %1487, %1044
  %1491 = call float @dx.op.binary.f32(i32 35, float %1488, float 0.000000e+00)  ; FMax(a,b)
  %1492 = call float @dx.op.binary.f32(i32 35, float %1489, float 0.000000e+00)  ; FMax(a,b)
  %1493 = call float @dx.op.binary.f32(i32 35, float %1490, float 0.000000e+00)  ; FMax(a,b)
  %1494 = fadd fast float %1491, %1029
  %1495 = fadd fast float %1492, %1030
  %1496 = fadd fast float %1493, %1031
  %1497 = fmul fast float %1494, %658
  %1498 = fmul fast float %1495, %658
  %1499 = fmul fast float %1496, %658
  %1500 = fsub fast float 1.000000e+00, %658
  %1501 = call float @dx.op.dot3.f32(i32 55, float %1500, float %1500, float %1500, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1502 = fsub fast float 1.000000e+00, %1501
  %1503 = fmul fast float %886, %867
  %1504 = fsub fast float 1.000000e+00, %887
  %1505 = fsub fast float %1504, %867
  %1506 = call float @dx.op.unary.f32(i32 7, float %1505)  ; Saturate(value)
  %1507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1508 = extractvalue %dx.types.CBufRet.f32 %1507, 3
  %1509 = fmul fast float %1508, %1506
  %1510 = fadd fast float %1509, %1503
  %1511 = and i32 %151, 1048576
  %1512 = icmp eq i32 %1511, 0
  br i1 %1512, label %1597, label %1513, !dx.controlflow.hints !80

; <label>:1513                                    ; preds = %1480
  %1514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1515 = extractvalue %dx.types.CBufRet.f32 %1514, 2
  %1516 = extractvalue %dx.types.CBufRet.f32 %1514, 3
  %1517 = fmul fast float %1515, %61
  %1518 = fmul fast float %1516, %62
  %1519 = call float @dx.op.unary.f32(i32 7, float %1517)  ; Saturate(value)
  %1520 = call float @dx.op.unary.f32(i32 7, float %1518)  ; Saturate(value)
  %1521 = select i1 %911, i32 2, i32 0
  %1522 = or i32 %1521, 1
  %1523 = uitofp i32 %1522 to float
  %1524 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1519, float %1520, float %1523, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1525 = extractvalue %dx.types.ResRet.f32 %1524, 0
  %1526 = extractvalue %dx.types.ResRet.f32 %1524, 1
  %1527 = extractvalue %dx.types.ResRet.f32 %1524, 2
  %1528 = extractvalue %dx.types.ResRet.f32 %1524, 3
  %1529 = add nuw nsw i32 %1521, 2
  %1530 = uitofp i32 %1529 to float
  %1531 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1519, float %1520, float %1530, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1532 = extractvalue %dx.types.ResRet.f32 %1531, 0
  %1533 = extractvalue %dx.types.ResRet.f32 %1531, 1
  %1534 = extractvalue %dx.types.ResRet.f32 %1531, 2
  %1535 = extractvalue %dx.types.ResRet.f32 %1531, 3
  %1536 = call float @dx.op.binary.f32(i32 35, float %1526, float %1527)  ; FMax(a,b)
  %1537 = call float @dx.op.binary.f32(i32 35, float %1525, float %1536)  ; FMax(a,b)
  %1538 = call float @dx.op.binary.f32(i32 35, float %1537, float %1528)  ; FMax(a,b)
  %1539 = call float @dx.op.binary.f32(i32 36, float %1533, float %1534)  ; FMin(a,b)
  %1540 = call float @dx.op.binary.f32(i32 36, float %1532, float %1539)  ; FMin(a,b)
  %1541 = call float @dx.op.binary.f32(i32 36, float %1540, float %1535)  ; FMin(a,b)
  %1542 = fmul fast float %1538, 2.550000e+02
  %1543 = fadd fast float %1542, 0x3F70101020000000
  %1544 = fptoui float %1543 to i32
  %1545 = fmul fast float %1541, 2.550000e+02
  %1546 = fadd fast float %1545, 0x3F70101020000000
  %1547 = fptoui float %1546 to i32
  %1548 = icmp ult i32 %1544, %1547
  br i1 %1548, label %1549, label %1590

; <label>:1549                                    ; preds = %1513
  %1550 = fcmp fast ogt float %53, 9.843750e-01
  %1551 = select i1 %1550, float -4.000000e+00, float %1079
  %1552 = call float @dx.op.binary.f32(i32 35, float %1551, float 0.000000e+00)  ; FMax(a,b)
  %1553 = fadd fast float %1076, %1552
  %1554 = fmul fast float %1553, %1077
  %1555 = call float @dx.op.unary.f32(i32 23, float %1554)  ; Log(value)
  %1556 = fmul fast float %1078, %1555
  %1557 = fmul fast float %1556, %1086
  %1558 = call float @dx.op.unary.f32(i32 7, float %1557)  ; Saturate(value)
  %1559 = uitofp i32 %1544 to float
  %1560 = uitofp i32 %1547 to float
  %1561 = fadd fast float %1559, 5.000000e-01
  %1562 = fadd fast float %1560, 5.000000e-01
  %1563 = fmul fast float %1086, %1561
  %1564 = fmul fast float %1086, %1562
  %1565 = fadd fast float %1563, 0x3F0FFB4800000000
  %1566 = fadd fast float %1564, 0xBF0FFB4800000000
  %1567 = call float @dx.op.binary.f32(i32 35, float %1558, float %1565)  ; FMax(a,b)
  %1568 = call float @dx.op.binary.f32(i32 36, float %1567, float %1566)  ; FMin(a,b)
  %1569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1570 = extractvalue %dx.types.CBufRet.f32 %1569, 1
  %1571 = extractvalue %dx.types.CBufRet.f32 %1569, 2
  %1572 = extractvalue %dx.types.CBufRet.f32 %1569, 0
  %1573 = select i1 %911, float %1572, float 0.000000e+00
  %1574 = fmul fast float %1570, %1568
  %1575 = fadd fast float %1573, %1574
  %1576 = fadd fast float %1573, %1571
  %1577 = fsub fast float %1570, %1571
  %1578 = fadd fast float %1577, %1573
  %1579 = call float @dx.op.binary.f32(i32 35, float %1575, float %1576)  ; FMax(a,b)
  %1580 = call float @dx.op.binary.f32(i32 36, float %1579, float %1578)  ; FMin(a,b)
  %1581 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %25, float %1519, float %1520, float %1580, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1582 = extractvalue %dx.types.ResRet.f32 %1581, 0
  %1583 = extractvalue %dx.types.ResRet.f32 %1581, 1
  %1584 = extractvalue %dx.types.ResRet.f32 %1581, 2
  %1585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1586 = extractvalue %dx.types.CBufRet.f32 %1585, 1
  %1587 = fmul fast float %1586, %1582
  %1588 = fmul fast float %1586, %1583
  %1589 = fmul fast float %1586, %1584
  br label %1590

; <label>:1590                                    ; preds = %1549, %1513
  %1591 = phi float [ %1587, %1549 ], [ 1.000000e+00, %1513 ]
  %1592 = phi float [ %1588, %1549 ], [ 1.000000e+00, %1513 ]
  %1593 = phi float [ %1589, %1549 ], [ 1.000000e+00, %1513 ]
  %1594 = fmul fast float %1591, %1497
  %1595 = fmul fast float %1592, %1498
  %1596 = fmul fast float %1593, %1499
  br label %1597

; <label>:1597                                    ; preds = %1590, %1480
  %1598 = phi float [ %1594, %1590 ], [ %1497, %1480 ]
  %1599 = phi float [ %1595, %1590 ], [ %1498, %1480 ]
  %1600 = phi float [ %1596, %1590 ], [ %1499, %1480 ]
  %1601 = and i32 %151, 2097152
  %1602 = icmp eq i32 %1601, 0
  br i1 %1602, label %1607, label %1603, !dx.controlflow.hints !81

; <label>:1603                                    ; preds = %1597
  %1604 = add i32 %148, 192
  %1605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1604, i32 undef)  ; BufferLoad(srv,index,wot)
  %1606 = extractvalue %dx.types.ResRet.f32 %1605, 0
  br label %1610

; <label>:1607                                    ; preds = %1597
  %1608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1609 = extractvalue %dx.types.CBufRet.f32 %1608, 3
  br label %1610

; <label>:1610                                    ; preds = %1607, %1603
  %1611 = phi float [ %1606, %1603 ], [ %1609, %1607 ]
  %1612 = fmul fast float %842, %658
  %1613 = fmul fast float %1612, %923
  %1614 = fmul fast float %1613, %1047
  %1615 = fmul fast float %843, %658
  %1616 = fmul fast float %1615, %924
  %1617 = fmul fast float %1616, %1047
  %1618 = fmul fast float %844, %658
  %1619 = fmul fast float %1618, %925
  %1620 = fmul fast float %1619, %1047
  br i1 %906, label %1621, label %1754

; <label>:1621                                    ; preds = %1610
  %1622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1623 = extractvalue %dx.types.CBufRet.f32 %1622, 2
  %1624 = extractvalue %dx.types.CBufRet.f32 %1622, 3
  %1625 = fmul fast float %1623, %61
  %1626 = fmul fast float %1624, %62
  %1627 = call float @dx.op.unary.f32(i32 7, float %1625)  ; Saturate(value)
  %1628 = call float @dx.op.unary.f32(i32 7, float %1626)  ; Saturate(value)
  %1629 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1627, float %1628, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1630 = extractvalue %dx.types.ResRet.f32 %1629, 0
  %1631 = extractvalue %dx.types.ResRet.f32 %1629, 1
  %1632 = extractvalue %dx.types.ResRet.f32 %1629, 2
  %1633 = extractvalue %dx.types.ResRet.f32 %1629, 3
  %1634 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1627, float %1628, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1635 = extractvalue %dx.types.ResRet.f32 %1634, 0
  %1636 = extractvalue %dx.types.ResRet.f32 %1634, 1
  %1637 = extractvalue %dx.types.ResRet.f32 %1634, 2
  %1638 = extractvalue %dx.types.ResRet.f32 %1634, 3
  %1639 = call float @dx.op.binary.f32(i32 35, float %1631, float %1632)  ; FMax(a,b)
  %1640 = call float @dx.op.binary.f32(i32 35, float %1630, float %1639)  ; FMax(a,b)
  %1641 = call float @dx.op.binary.f32(i32 35, float %1640, float %1633)  ; FMax(a,b)
  %1642 = call float @dx.op.binary.f32(i32 36, float %1636, float %1637)  ; FMin(a,b)
  %1643 = call float @dx.op.binary.f32(i32 36, float %1635, float %1642)  ; FMin(a,b)
  %1644 = call float @dx.op.binary.f32(i32 36, float %1643, float %1638)  ; FMin(a,b)
  %1645 = fmul fast float %1641, 2.550000e+02
  %1646 = fadd fast float %1645, 0x3F70101020000000
  %1647 = fptoui float %1646 to i32
  %1648 = fmul fast float %1644, 2.550000e+02
  %1649 = fadd fast float %1648, 0x3F70101020000000
  %1650 = fptoui float %1649 to i32
  %1651 = icmp ult i32 %1647, %1650
  br i1 %1651, label %1652, label %1696

; <label>:1652                                    ; preds = %1621
  %1653 = fcmp fast ogt float %53, 9.843750e-01
  %1654 = select i1 %1653, float -4.000000e+00, float %1079
  %1655 = call float @dx.op.binary.f32(i32 35, float %1654, float 0.000000e+00)  ; FMax(a,b)
  %1656 = fadd fast float %1076, %1655
  %1657 = fmul fast float %1656, %1077
  %1658 = call float @dx.op.unary.f32(i32 23, float %1657)  ; Log(value)
  %1659 = fmul fast float %1078, %1658
  %1660 = fmul fast float %1659, %1086
  %1661 = call float @dx.op.unary.f32(i32 7, float %1660)  ; Saturate(value)
  %1662 = uitofp i32 %1647 to float
  %1663 = uitofp i32 %1650 to float
  %1664 = fadd fast float %1662, 5.000000e-01
  %1665 = fadd fast float %1663, 5.000000e-01
  %1666 = fmul fast float %1086, %1664
  %1667 = fmul fast float %1086, %1665
  %1668 = fadd fast float %1666, 0x3F0FFB4800000000
  %1669 = fadd fast float %1667, 0xBF0FFB4800000000
  %1670 = call float @dx.op.binary.f32(i32 35, float %1661, float %1668)  ; FMax(a,b)
  %1671 = call float @dx.op.binary.f32(i32 36, float %1670, float %1669)  ; FMin(a,b)
  %1672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1673 = extractvalue %dx.types.CBufRet.f32 %1672, 1
  %1674 = extractvalue %dx.types.CBufRet.f32 %1672, 2
  %1675 = extractvalue %dx.types.CBufRet.f32 %1672, 0
  %1676 = fmul fast float %1673, %1671
  %1677 = fadd fast float %1675, %1676
  %1678 = fadd fast float %1675, %1674
  %1679 = fsub fast float %1673, %1674
  %1680 = fadd fast float %1679, %1675
  %1681 = call float @dx.op.binary.f32(i32 35, float %1677, float %1678)  ; FMax(a,b)
  %1682 = call float @dx.op.binary.f32(i32 36, float %1681, float %1680)  ; FMin(a,b)
  %1683 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %1627, float %1628, float %1682, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1684 = extractvalue %dx.types.ResRet.f32 %1683, 0
  %1685 = extractvalue %dx.types.ResRet.f32 %1683, 1
  %1686 = extractvalue %dx.types.ResRet.f32 %1683, 2
  %1687 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %1627, float %1628, float %1682, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1688 = extractvalue %dx.types.ResRet.f32 %1687, 0
  %1689 = extractvalue %dx.types.ResRet.f32 %1687, 1
  %1690 = extractvalue %dx.types.ResRet.f32 %1687, 2
  %1691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1692 = extractvalue %dx.types.CBufRet.f32 %1691, 1
  %1693 = fmul fast float %1692, %1688
  %1694 = fmul fast float %1692, %1689
  %1695 = fmul fast float %1692, %1690
  br label %1696

; <label>:1696                                    ; preds = %1652, %1621
  %1697 = phi float [ %1684, %1652 ], [ 1.000000e+00, %1621 ]
  %1698 = phi float [ %1685, %1652 ], [ 1.000000e+00, %1621 ]
  %1699 = phi float [ %1686, %1652 ], [ 1.000000e+00, %1621 ]
  %1700 = phi float [ %1693, %1652 ], [ 0.000000e+00, %1621 ]
  %1701 = phi float [ %1694, %1652 ], [ 0.000000e+00, %1621 ]
  %1702 = phi float [ %1695, %1652 ], [ 0.000000e+00, %1621 ]
  %1703 = fmul fast float %1700, %1502
  %1704 = fmul fast float %1701, %1502
  %1705 = fmul fast float %1702, %1502
  %1706 = call float @dx.op.dot3.f32(i32 55, float %1697, float %1698, float %1699, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1707 = call float @dx.op.dot3.f32(i32 55, float %1703, float %1704, float %1705, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1708 = select i1 %131, float %1706, float %1697
  %1709 = select i1 %131, float %1706, float %1698
  %1710 = select i1 %131, float 1.000000e+00, float %1699
  %1711 = select i1 %131, float %1707, float %1703
  %1712 = select i1 %131, float 0.000000e+00, float %1704
  %1713 = select i1 %131, float 0.000000e+00, float %1705
  %1714 = fmul fast float %1708, %1614
  %1715 = fmul fast float %1709, %1617
  %1716 = fmul fast float %1710, %1620
  %1717 = fadd fast float %1714, %1711
  %1718 = fadd fast float %1715, %1712
  %1719 = fadd fast float %1713, %1716
  %1720 = fmul fast float %1708, %1598
  %1721 = fmul fast float %1709, %1599
  %1722 = fmul fast float %1710, %1600
  %1723 = fmul fast float %66, %1623
  %1724 = fmul fast float %68, %1624
  %1725 = fsub fast float 1.000000e+00, %1723
  %1726 = fsub fast float 1.000000e+00, %1724
  %1727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1728 = extractvalue %dx.types.CBufRet.f32 %1727, 0
  %1729 = extractvalue %dx.types.CBufRet.f32 %1727, 1
  %1730 = extractvalue %dx.types.CBufRet.f32 %1727, 2
  %1731 = fmul fast float %1725, %1728
  %1732 = fmul fast float %1725, %1729
  %1733 = fmul fast float %1725, %1730
  %1734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1735 = extractvalue %dx.types.CBufRet.f32 %1734, 0
  %1736 = extractvalue %dx.types.CBufRet.f32 %1734, 1
  %1737 = extractvalue %dx.types.CBufRet.f32 %1734, 2
  %1738 = fmul fast float %1726, %1735
  %1739 = fmul fast float %1726, %1736
  %1740 = fmul fast float %1726, %1737
  %1741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1742 = extractvalue %dx.types.CBufRet.f32 %1741, 0
  %1743 = extractvalue %dx.types.CBufRet.f32 %1741, 1
  %1744 = extractvalue %dx.types.CBufRet.f32 %1741, 2
  %1745 = fadd fast float %1738, %1742
  %1746 = fadd fast float %1745, %1731
  %1747 = fadd fast float %1739, %1743
  %1748 = fadd fast float %1747, %1732
  %1749 = fadd fast float %1740, %1744
  %1750 = fadd fast float %1749, %1733
  %1751 = fmul fast float %1746, %903
  %1752 = fmul fast float %1748, %903
  %1753 = fmul fast float %1750, %903
  br label %1754

; <label>:1754                                    ; preds = %1696, %1610
  %1755 = phi float [ %1751, %1696 ], [ %96, %1610 ]
  %1756 = phi float [ %1752, %1696 ], [ %97, %1610 ]
  %1757 = phi float [ %1753, %1696 ], [ %98, %1610 ]
  %1758 = phi float [ %903, %1696 ], [ %54, %1610 ]
  %1759 = phi float [ %1717, %1696 ], [ %1614, %1610 ]
  %1760 = phi float [ %1718, %1696 ], [ %1617, %1610 ]
  %1761 = phi float [ %1719, %1696 ], [ %1620, %1610 ]
  %1762 = phi float [ %1720, %1696 ], [ %1598, %1610 ]
  %1763 = phi float [ %1721, %1696 ], [ %1599, %1610 ]
  %1764 = phi float [ %1722, %1696 ], [ %1600, %1610 ]
  %1765 = phi float [ %1697, %1696 ], [ 1.000000e+00, %1610 ]
  br i1 %911, label %2821, label %1766

; <label>:1766                                    ; preds = %1754
  %1767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1768 = extractvalue %dx.types.CBufRet.f32 %1767, 0
  %1769 = extractvalue %dx.types.CBufRet.f32 %1767, 1
  %1770 = extractvalue %dx.types.CBufRet.f32 %1767, 2
  %1771 = extractvalue %dx.types.CBufRet.f32 %1767, 3
  %1772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1773 = extractvalue %dx.types.CBufRet.f32 %1772, 0
  %1774 = extractvalue %dx.types.CBufRet.f32 %1772, 1
  %1775 = extractvalue %dx.types.CBufRet.f32 %1772, 2
  %1776 = extractvalue %dx.types.CBufRet.f32 %1772, 3
  %1777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1778 = extractvalue %dx.types.CBufRet.f32 %1777, 0
  %1779 = extractvalue %dx.types.CBufRet.f32 %1777, 1
  %1780 = extractvalue %dx.types.CBufRet.f32 %1777, 2
  %1781 = extractvalue %dx.types.CBufRet.f32 %1777, 3
  %1782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1783 = extractvalue %dx.types.CBufRet.f32 %1782, 0
  %1784 = extractvalue %dx.types.CBufRet.f32 %1782, 1
  %1785 = extractvalue %dx.types.CBufRet.f32 %1782, 2
  %1786 = extractvalue %dx.types.CBufRet.f32 %1782, 3
  %1787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1788 = extractvalue %dx.types.CBufRet.f32 %1787, 3
  %1789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1790 = extractvalue %dx.types.CBufRet.f32 %1789, 3
  %1791 = extractvalue %dx.types.CBufRet.f32 %1789, 0
  %1792 = extractvalue %dx.types.CBufRet.f32 %1789, 1
  %1793 = extractvalue %dx.types.CBufRet.f32 %1789, 2
  %1794 = fcmp fast olt float %1793, -5.000000e-01
  %1795 = call float @dx.op.dot3.f32(i32 55, float %1755, float %1756, float %1757, float %1755, float %1756, float %1757)  ; Dot3(ax,ay,az,bx,by,bz)
  %1796 = call float @dx.op.unary.f32(i32 25, float %1795)  ; Rsqrt(value)
  %1797 = fmul fast float %1796, %1795
  %1798 = fmul fast float %1796, %1755
  %1799 = fmul fast float %1796, %1756
  %1800 = fmul fast float %1796, %1757
  %1801 = fadd fast float %1797, %1771
  %1802 = call float @dx.op.dot3.f32(i32 55, float %1798, float %1799, float %1800, float %1768, float %1769, float %1770)  ; Dot3(ax,ay,az,bx,by,bz)
  %1803 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1804 = extractvalue %dx.types.CBufRet.i32 %1803, 1
  %1805 = and i32 %1804, 1
  %1806 = icmp ne i32 %1805, 0
  %1807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1808 = extractvalue %dx.types.CBufRet.f32 %1807, 2
  %1809 = fcmp fast ogt float %1808, 0.000000e+00
  %1810 = and i1 %1806, %1809
  br i1 %1810, label %1811, label %2217, !dx.controlflow.hints !82

; <label>:1811                                    ; preds = %1766
  %1812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1813 = extractvalue %dx.types.CBufRet.f32 %1812, 3
  %1814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1815 = extractvalue %dx.types.CBufRet.f32 %1814, 2
  %1816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1817 = extractvalue %dx.types.CBufRet.f32 %1816, 2
  %1818 = fsub fast float %1815, %1817
  %1819 = and i32 %1804, 2
  %1820 = extractvalue %dx.types.CBufRet.i32 %1803, 0
  %1821 = call i32 @dx.op.binary.i32(i32 40, i32 %1820, i32 3)  ; UMin(a,b)
  %1822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1823 = extractvalue %dx.types.CBufRet.f32 %1822, 0
  %1824 = extractvalue %dx.types.CBufRet.f32 %1822, 1
  %1825 = extractvalue %dx.types.CBufRet.f32 %1816, 0
  %1826 = extractvalue %dx.types.CBufRet.f32 %1816, 1
  %1827 = fsub fast float %1823, %1825
  %1828 = fsub fast float %1824, %1826
  %1829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1830 = extractvalue %dx.types.CBufRet.f32 %1829, 0
  %1831 = fcmp fast ogt float %1830, 0.000000e+00
  %1832 = fsub fast float -0.000000e+00, %1827
  %1833 = fsub fast float -0.000000e+00, %1828
  %1834 = call float @dx.op.dot2.f32(i32 54, float %1798, float %1799, float %1798, float %1799)  ; Dot2(ax,ay,bx,by)
  %1835 = call float @dx.op.dot2.f32(i32 54, float %1798, float %1799, float %1832, float %1833)  ; Dot2(ax,ay,bx,by)
  %1836 = fmul fast float %1835, 2.000000e+00
  %1837 = call float @dx.op.dot2.f32(i32 54, float %1832, float %1833, float %1832, float %1833)  ; Dot2(ax,ay,bx,by)
  %1838 = fmul fast float %1830, %1830
  %1839 = fsub fast float %1837, %1838
  %1840 = fmul fast float %1836, %1836
  %1841 = fmul fast float %1834, 4.000000e+00
  %1842 = fmul fast float %1841, %1839
  %1843 = fsub fast float %1840, %1842
  %1844 = fcmp fast ogt float %1843, 0.000000e+00
  br i1 %1844, label %1845, label %1860

; <label>:1845                                    ; preds = %1811
  %1846 = fcmp fast ogt float %1836, 0.000000e+00
  %1847 = call float @dx.op.unary.f32(i32 24, float %1843)  ; Sqrt(value)
  %1848 = fsub fast float -0.000000e+00, %1847
  %1849 = select i1 %1846, float %1847, float %1848
  %1850 = fadd fast float %1849, %1836
  %1851 = fmul float %1850, -5.000000e-01
  %1852 = fdiv fast float %1851, %1834
  %1853 = call float @dx.op.binary.f32(i32 35, float %1852, float 0.000000e+00)  ; FMax(a,b)
  %1854 = call float @dx.op.binary.f32(i32 36, float %1797, float %1853)  ; FMin(a,b)
  %1855 = fdiv fast float %1839, %1851
  %1856 = call float @dx.op.binary.f32(i32 35, float %1855, float 0.000000e+00)  ; FMax(a,b)
  %1857 = call float @dx.op.binary.f32(i32 36, float %1797, float %1856)  ; FMin(a,b)
  %1858 = call float @dx.op.binary.f32(i32 36, float %1854, float %1857)  ; FMin(a,b)
  %1859 = call float @dx.op.binary.f32(i32 35, float %1854, float %1857)  ; FMax(a,b)
  br label %1860

; <label>:1860                                    ; preds = %1845, %1811
  %1861 = phi float [ %1859, %1845 ], [ -1.000000e+00, %1811 ]
  %1862 = phi float [ %1858, %1845 ], [ -1.000000e+00, %1811 ]
  %1863 = phi i1 [ true, %1845 ], [ false, %1811 ]
  %1864 = and i1 %1831, %1863
  br i1 %1864, label %1865, label %1867

; <label>:1865                                    ; preds = %1860
  %1866 = fcmp fast oeq float %1862, %1861
  br i1 %1866, label %2170, label %1868

; <label>:1867                                    ; preds = %1860
  br i1 %1831, label %2170, label %1868

; <label>:1868                                    ; preds = %1867, %1865
  %1869 = phi float [ %1797, %1867 ], [ %1861, %1865 ]
  %1870 = phi float [ 0.000000e+00, %1867 ], [ %1862, %1865 ]
  %1871 = icmp ne i32 %1819, 0
  %1872 = fmul fast float %1869, %1800
  %1873 = fadd fast float %1872, %1813
  %1874 = fmul fast float %1873, %1869
  %1875 = select i1 %1871, float 0.000000e+00, float %1874
  %1876 = fcmp fast oeq float %1800, 0.000000e+00
  %1877 = fdiv fast float %1818, %1800
  %1878 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1877)  ; FMax(a,b)
  %1879 = select i1 %1876, float %1869, float %1878
  %1880 = call float @dx.op.binary.f32(i32 36, float %1869, float %1879)  ; FMin(a,b)
  %1881 = fcmp fast ogt float %1800, 0.000000e+00
  %1882 = fcmp fast olt float %1818, 0.000000e+00
  br i1 %1881, label %1883, label %1940

; <label>:1883                                    ; preds = %1868
  %1884 = icmp eq i32 %1819, 0
  br i1 %1882, label %1885, label %1929

; <label>:1885                                    ; preds = %1883
  %1886 = select i1 %1884, float %1869, float 0.000000e+00
  %1887 = fsub fast float -0.000000e+00, %1886
  %1888 = call float @dx.op.unary.f32(i32 6, float %1887)  ; FAbs(value)
  %1889 = fmul fast float %1886, %1800
  %1890 = fadd fast float %1889, %1813
  %1891 = fmul fast float %1888, %1890
  %1892 = fsub fast float %1875, %1891
  %1893 = fsub fast float %1869, %1888
  %1894 = select i1 %1884, float %1893, float 0.000000e+00
  %1895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1896 = extractvalue %dx.types.CBufRet.f32 %1895, 0
  %1897 = extractvalue %dx.types.CBufRet.f32 %1895, 1
  %1898 = extractvalue %dx.types.CBufRet.f32 %1895, 2
  %1899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1900 = extractvalue %dx.types.CBufRet.f32 %1899, 0
  %1901 = extractvalue %dx.types.CBufRet.f32 %1899, 1
  %1902 = extractvalue %dx.types.CBufRet.f32 %1899, 2
  %1903 = extractvalue %dx.types.CBufRet.f32 %1899, 3
  %1904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1905 = extractvalue %dx.types.CBufRet.f32 %1904, 3
  %1906 = call float @dx.op.binary.f32(i32 36, float %1892, float %1905)  ; FMin(a,b)
  %1907 = fmul fast float %1903, %1894
  %1908 = call float @dx.op.unary.f32(i32 7, float %1907)  ; Saturate(value)
  %1909 = fsub fast float %1900, %1896
  %1910 = fsub fast float %1901, %1897
  %1911 = fsub fast float %1902, %1898
  %1912 = fmul fast float %1908, %1909
  %1913 = fmul fast float %1908, %1910
  %1914 = fmul fast float %1908, %1911
  %1915 = fadd fast float %1912, %1896
  %1916 = fadd fast float %1913, %1897
  %1917 = fadd fast float %1914, %1898
  %1918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1919 = extractvalue %dx.types.CBufRet.f32 %1918, 0
  %1920 = extractvalue %dx.types.CBufRet.f32 %1918, 1
  %1921 = fadd fast float %1920, %1919
  %1922 = call float @dx.op.unary.f32(i32 7, float %1921)  ; Saturate(value)
  %1923 = extractvalue %dx.types.CBufRet.f32 %1918, 2
  %1924 = extractvalue %dx.types.CBufRet.f32 %1918, 3
  %1925 = fadd fast float %1924, %1923
  %1926 = call float @dx.op.unary.f32(i32 7, float %1925)  ; Saturate(value)
  %1927 = fmul fast float %1922, %1906
  %1928 = fmul fast float %1927, %1926
  br label %2170

; <label>:1929                                    ; preds = %1883
  br i1 %1884, label %1930, label %1951

; <label>:1930                                    ; preds = %1929
  %1931 = call float @dx.op.binary.f32(i32 36, float %1880, float %1870)  ; FMin(a,b)
  %1932 = fsub fast float %1880, %1931
  %1933 = fsub fast float %1932, %1869
  %1934 = call float @dx.op.unary.f32(i32 6, float %1933)  ; FAbs(value)
  %1935 = fadd fast float %1932, %1869
  %1936 = fmul fast float %1935, %1800
  %1937 = fadd fast float %1936, %1813
  %1938 = fmul fast float %1937, %1934
  %1939 = fsub fast float %1875, %1938
  br label %1951

; <label>:1940                                    ; preds = %1868
  br i1 %1882, label %1941, label %1951

; <label>:1941                                    ; preds = %1940
  %1942 = call float @dx.op.binary.f32(i32 35, float %1870, float %1880)  ; FMax(a,b)
  %1943 = icmp eq i32 %1819, 0
  %1944 = select i1 %1943, float %1880, float 0.000000e+00
  %1945 = fsub fast float -0.000000e+00, %1944
  %1946 = call float @dx.op.unary.f32(i32 6, float %1945)  ; FAbs(value)
  %1947 = fmul fast float %1944, %1800
  %1948 = fadd fast float %1947, %1813
  %1949 = fmul fast float %1946, %1948
  %1950 = fsub fast float %1875, %1949
  br label %1951

; <label>:1951                                    ; preds = %1941, %1940, %1930, %1929
  %1952 = phi float [ %1870, %1929 ], [ %1870, %1930 ], [ %1942, %1941 ], [ %1870, %1940 ]
  %1953 = phi float [ 0.000000e+00, %1929 ], [ %1934, %1930 ], [ %1946, %1941 ], [ 0.000000e+00, %1940 ]
  %1954 = phi float [ %1875, %1929 ], [ %1939, %1930 ], [ %1950, %1941 ], [ %1875, %1940 ]
  %1955 = phi float [ %1880, %1929 ], [ %1880, %1930 ], [ %1869, %1941 ], [ %1869, %1940 ]
  %1956 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 0
  store float -1.000000e+00, float* %1956, align 4, !tbaa !83, !noalias !87
  %1957 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 1
  store float -1.000000e+00, float* %1957, align 4, !tbaa !83, !noalias !87
  %1958 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 2
  store float -1.000000e+00, float* %1958, align 4, !tbaa !83, !noalias !87
  %1959 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 0
  store float -1.000000e+00, float* %1959, align 4, !tbaa !83, !noalias !87
  %1960 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 1
  store float -1.000000e+00, float* %1960, align 4, !tbaa !83, !noalias !87
  %1961 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 2
  store float -1.000000e+00, float* %1961, align 4, !tbaa !83, !noalias !87
  %1962 = icmp sgt i32 %1821, 0
  br i1 %1962, label %1963, label %2024

; <label>:1963                                    ; preds = %1951
  br label %1964

; <label>:1964                                    ; preds = %2013, %1963
  %1965 = phi i32 [ %2014, %2013 ], [ 0, %1963 ]
  %1966 = phi i32 [ %2015, %2013 ], [ 0, %1963 ]
  %1967 = add nuw i32 %1966, 171
  %1968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 %1967)  ; CBufferLoadLegacy(handle,regIndex)
  %1969 = extractvalue %dx.types.CBufRet.f32 %1968, 0
  %1970 = extractvalue %dx.types.CBufRet.f32 %1968, 1
  %1971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1972 = extractvalue %dx.types.CBufRet.f32 %1971, 0
  %1973 = extractvalue %dx.types.CBufRet.f32 %1971, 1
  %1974 = fsub fast float %1969, %1972
  %1975 = fsub fast float %1970, %1973
  %1976 = extractvalue %dx.types.CBufRet.f32 %1968, 2
  %1977 = fsub fast float -0.000000e+00, %1974
  %1978 = fsub fast float -0.000000e+00, %1975
  %1979 = call float @dx.op.dot2.f32(i32 54, float %1798, float %1799, float %1977, float %1978)  ; Dot2(ax,ay,bx,by)
  %1980 = fmul fast float %1979, 2.000000e+00
  %1981 = call float @dx.op.dot2.f32(i32 54, float %1977, float %1978, float %1977, float %1978)  ; Dot2(ax,ay,bx,by)
  %1982 = fmul fast float %1976, %1976
  %1983 = fsub fast float %1981, %1982
  %1984 = fmul fast float %1980, %1980
  %1985 = fmul fast float %1841, %1983
  %1986 = fsub fast float %1984, %1985
  %1987 = fcmp fast ogt float %1986, 0.000000e+00
  br i1 %1987, label %1988, label %2003

; <label>:1988                                    ; preds = %1964
  %1989 = fcmp fast ogt float %1980, 0.000000e+00
  %1990 = call float @dx.op.unary.f32(i32 24, float %1986)  ; Sqrt(value)
  %1991 = fsub fast float -0.000000e+00, %1990
  %1992 = select i1 %1989, float %1990, float %1991
  %1993 = fadd fast float %1992, %1980
  %1994 = fmul float %1993, -5.000000e-01
  %1995 = fdiv fast float %1994, %1834
  %1996 = call float @dx.op.binary.f32(i32 35, float %1995, float 0.000000e+00)  ; FMax(a,b)
  %1997 = call float @dx.op.binary.f32(i32 36, float %1869, float %1996)  ; FMin(a,b)
  %1998 = fdiv fast float %1983, %1994
  %1999 = call float @dx.op.binary.f32(i32 35, float %1998, float 0.000000e+00)  ; FMax(a,b)
  %2000 = call float @dx.op.binary.f32(i32 36, float %1869, float %1999)  ; FMin(a,b)
  %2001 = call float @dx.op.binary.f32(i32 36, float %1997, float %2000)  ; FMin(a,b)
  %2002 = call float @dx.op.binary.f32(i32 35, float %1997, float %2000)  ; FMax(a,b)
  br label %2003

; <label>:2003                                    ; preds = %1988, %1964
  %2004 = phi float [ %2002, %1988 ], [ -1.000000e+00, %1964 ]
  %2005 = phi float [ %2001, %1988 ], [ -1.000000e+00, %1964 ]
  %2006 = phi i1 [ true, %1988 ], [ false, %1964 ]
  br i1 %2006, label %2007, label %2013

; <label>:2007                                    ; preds = %2003
  %2008 = call float @dx.op.binary.f32(i32 35, float %1952, float %2005)  ; FMax(a,b)
  %2009 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 %1966
  store float %2008, float* %2009, align 4, !tbaa !83, !noalias !87
  %2010 = call float @dx.op.binary.f32(i32 35, float %1952, float %2004)  ; FMax(a,b)
  %2011 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 %1966
  store float %2010, float* %2011, align 4, !tbaa !83, !noalias !87
  %2012 = add nsw i32 %1965, 1
  br label %2013

; <label>:2013                                    ; preds = %2007, %2003
  %2014 = phi i32 [ %2012, %2007 ], [ %1965, %2003 ]
  %2015 = add nuw nsw i32 %1966, 1
  %2016 = icmp eq i32 %2015, %1821
  br i1 %2016, label %2017, label %1964

; <label>:2017                                    ; preds = %2013
  %2018 = load float, float* %1958, align 4, !tbaa !83, !alias.scope !103, !noalias !106
  %2019 = load float, float* %1957, align 4, !tbaa !83, !alias.scope !109, !noalias !110
  %2020 = load float, float* %1956, align 4, !tbaa !83, !alias.scope !111, !noalias !112
  %2021 = load float, float* %1961, align 4, !tbaa !83, !alias.scope !113, !noalias !116
  %2022 = load float, float* %1960, align 4, !tbaa !83, !alias.scope !119, !noalias !120
  %2023 = load float, float* %1959, align 4, !tbaa !83, !alias.scope !121, !noalias !122
  br label %2024

; <label>:2024                                    ; preds = %2017, %1951
  %2025 = phi float [ -1.000000e+00, %1951 ], [ %2023, %2017 ]
  %2026 = phi float [ -1.000000e+00, %1951 ], [ %2022, %2017 ]
  %2027 = phi float [ -1.000000e+00, %1951 ], [ %2021, %2017 ]
  %2028 = phi float [ -1.000000e+00, %1951 ], [ %2020, %2017 ]
  %2029 = phi float [ -1.000000e+00, %1951 ], [ %2019, %2017 ]
  %2030 = phi float [ -1.000000e+00, %1951 ], [ %2018, %2017 ]
  %2031 = phi i32 [ 0, %1951 ], [ %2014, %2017 ]
  %2032 = call float @dx.op.binary.f32(i32 36, float %2029, float %2030)  ; FMin(a,b)
  %2033 = call float @dx.op.binary.f32(i32 36, float %2028, float %2032)  ; FMin(a,b)
  %2034 = call float @dx.op.binary.f32(i32 35, float %2028, float %2029)  ; FMax(a,b)
  %2035 = call float @dx.op.binary.f32(i32 36, float %2034, float %2030)  ; FMin(a,b)
  %2036 = call float @dx.op.binary.f32(i32 36, float %2028, float %2029)  ; FMin(a,b)
  %2037 = call float @dx.op.binary.f32(i32 35, float %2036, float %2035)  ; FMax(a,b)
  %2038 = call float @dx.op.binary.f32(i32 35, float %2029, float %2030)  ; FMax(a,b)
  %2039 = call float @dx.op.binary.f32(i32 35, float %2028, float %2038)  ; FMax(a,b)
  store float %2033, float* %1956, align 4, !tbaa !83, !alias.scope !111, !noalias !112
  store float %2037, float* %1957, align 4, !tbaa !83, !alias.scope !109, !noalias !110
  store float %2039, float* %1958, align 4, !tbaa !83, !alias.scope !103, !noalias !106
  %2040 = call float @dx.op.binary.f32(i32 36, float %2026, float %2027)  ; FMin(a,b)
  %2041 = call float @dx.op.binary.f32(i32 36, float %2025, float %2040)  ; FMin(a,b)
  %2042 = call float @dx.op.binary.f32(i32 35, float %2025, float %2026)  ; FMax(a,b)
  %2043 = call float @dx.op.binary.f32(i32 36, float %2042, float %2027)  ; FMin(a,b)
  %2044 = call float @dx.op.binary.f32(i32 36, float %2025, float %2026)  ; FMin(a,b)
  %2045 = call float @dx.op.binary.f32(i32 35, float %2044, float %2043)  ; FMax(a,b)
  %2046 = call float @dx.op.binary.f32(i32 35, float %2026, float %2027)  ; FMax(a,b)
  %2047 = call float @dx.op.binary.f32(i32 35, float %2025, float %2046)  ; FMax(a,b)
  store float %2041, float* %1959, align 4, !tbaa !83, !alias.scope !121, !noalias !122
  store float %2045, float* %1960, align 4, !tbaa !83, !alias.scope !119, !noalias !120
  store float %2047, float* %1961, align 4, !tbaa !83, !alias.scope !113, !noalias !116
  %2048 = sub nsw i32 3, %2031
  %2049 = icmp sgt i32 %2048, 2
  br i1 %2049, label %2050, label %2088

; <label>:2050                                    ; preds = %2024
  %2051 = icmp eq i32 %1819, 0
  %2052 = fsub fast float %1869, %1953
  %2053 = select i1 %2051, float %2052, float %1953
  %2054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2055 = extractvalue %dx.types.CBufRet.f32 %2054, 0
  %2056 = extractvalue %dx.types.CBufRet.f32 %2054, 1
  %2057 = extractvalue %dx.types.CBufRet.f32 %2054, 2
  %2058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2059 = extractvalue %dx.types.CBufRet.f32 %2058, 0
  %2060 = extractvalue %dx.types.CBufRet.f32 %2058, 1
  %2061 = extractvalue %dx.types.CBufRet.f32 %2058, 2
  %2062 = extractvalue %dx.types.CBufRet.f32 %2058, 3
  %2063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2064 = extractvalue %dx.types.CBufRet.f32 %2063, 3
  %2065 = call float @dx.op.binary.f32(i32 36, float %1954, float %2064)  ; FMin(a,b)
  %2066 = fmul fast float %2062, %2053
  %2067 = call float @dx.op.unary.f32(i32 7, float %2066)  ; Saturate(value)
  %2068 = fsub fast float %2059, %2055
  %2069 = fsub fast float %2060, %2056
  %2070 = fsub fast float %2061, %2057
  %2071 = fmul fast float %2067, %2068
  %2072 = fmul fast float %2067, %2069
  %2073 = fmul fast float %2067, %2070
  %2074 = fadd fast float %2071, %2055
  %2075 = fadd fast float %2072, %2056
  %2076 = fadd fast float %2073, %2057
  %2077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2078 = extractvalue %dx.types.CBufRet.f32 %2077, 0
  %2079 = extractvalue %dx.types.CBufRet.f32 %2077, 1
  %2080 = fadd fast float %2079, %2078
  %2081 = call float @dx.op.unary.f32(i32 7, float %2080)  ; Saturate(value)
  %2082 = extractvalue %dx.types.CBufRet.f32 %2077, 2
  %2083 = extractvalue %dx.types.CBufRet.f32 %2077, 3
  %2084 = fadd fast float %2083, %2082
  %2085 = call float @dx.op.unary.f32(i32 7, float %2084)  ; Saturate(value)
  %2086 = fmul fast float %2081, %2065
  %2087 = fmul fast float %2086, %2085
  br label %2170

; <label>:2088                                    ; preds = %2024
  %2089 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 %2048
  %2090 = load float, float* %2089, align 4, !tbaa !83, !noalias !87
  %2091 = fcmp fast olt float %2090, %1955
  %2092 = icmp sgt i32 %2031, 0
  %2093 = and i1 %2092, %2091
  br i1 %2093, label %2094, label %2131

; <label>:2094                                    ; preds = %2088
  br label %2095

; <label>:2095                                    ; preds = %2124, %2094
  %2096 = phi float [ %2125, %2124 ], [ %1953, %2094 ]
  %2097 = phi float [ %2126, %2124 ], [ %1954, %2094 ]
  %2098 = phi float [ %2106, %2124 ], [ %2090, %2094 ]
  %2099 = phi i32 [ %2103, %2124 ], [ %2048, %2094 ]
  %2100 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 %2099
  %2101 = load float, float* %2100, align 4, !tbaa !83, !noalias !87
  %2102 = icmp slt i32 %2099, 2
  %2103 = add nsw i32 %2099, 1
  %2104 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 %2103
  %2105 = load float, float* %2104, align 4, !tbaa !83, !noalias !87
  %2106 = select i1 %2102, float %2105, float %1869
  %2107 = call float @dx.op.binary.f32(i32 36, float %2106, float %2101)  ; FMin(a,b)
  %2108 = call float @dx.op.binary.f32(i32 36, float %1955, float %2107)  ; FMin(a,b)
  %2109 = icmp eq i32 %1819, 0
  %2110 = fadd fast float %2108, %2098
  %2111 = fmul fast float %2110, %1800
  %2112 = fadd fast float %2111, %1813
  br i1 %2109, label %2118, label %2113

; <label>:2113                                    ; preds = %2095
  %2114 = fsub fast float %2108, %2098
  %2115 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2114)  ; FMax(a,b)
  %2116 = fmul fast float %2115, %2112
  %2117 = fadd fast float %2116, %2097
  br label %2124

; <label>:2118                                    ; preds = %2095
  %2119 = fsub fast float %2098, %2108
  %2120 = call float @dx.op.unary.f32(i32 6, float %2119)  ; FAbs(value)
  %2121 = fadd fast float %2120, %2096
  %2122 = fmul fast float %2120, %2112
  %2123 = fsub fast float %2097, %2122
  br label %2124

; <label>:2124                                    ; preds = %2118, %2113
  %2125 = phi float [ %2115, %2113 ], [ %2121, %2118 ]
  %2126 = phi float [ %2117, %2113 ], [ %2123, %2118 ]
  %2127 = fcmp fast olt float %2106, %1955
  %2128 = icmp slt i32 %2103, 3
  %2129 = and i1 %2128, %2127
  br i1 %2129, label %2095, label %2130

; <label>:2130                                    ; preds = %2124
  br label %2131

; <label>:2131                                    ; preds = %2130, %2088
  %2132 = phi float [ %1953, %2088 ], [ %2125, %2130 ]
  %2133 = phi float [ %1954, %2088 ], [ %2126, %2130 ]
  %2134 = fsub fast float %1869, %2132
  %2135 = select i1 %1871, float %2132, float %2134
  %2136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2137 = extractvalue %dx.types.CBufRet.f32 %2136, 0
  %2138 = extractvalue %dx.types.CBufRet.f32 %2136, 1
  %2139 = extractvalue %dx.types.CBufRet.f32 %2136, 2
  %2140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2141 = extractvalue %dx.types.CBufRet.f32 %2140, 0
  %2142 = extractvalue %dx.types.CBufRet.f32 %2140, 1
  %2143 = extractvalue %dx.types.CBufRet.f32 %2140, 2
  %2144 = extractvalue %dx.types.CBufRet.f32 %2140, 3
  %2145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2146 = extractvalue %dx.types.CBufRet.f32 %2145, 3
  %2147 = call float @dx.op.binary.f32(i32 36, float %2133, float %2146)  ; FMin(a,b)
  %2148 = fmul fast float %2144, %2135
  %2149 = call float @dx.op.unary.f32(i32 7, float %2148)  ; Saturate(value)
  %2150 = fsub fast float %2141, %2137
  %2151 = fsub fast float %2142, %2138
  %2152 = fsub fast float %2143, %2139
  %2153 = fmul fast float %2149, %2150
  %2154 = fmul fast float %2149, %2151
  %2155 = fmul fast float %2149, %2152
  %2156 = fadd fast float %2153, %2137
  %2157 = fadd fast float %2154, %2138
  %2158 = fadd fast float %2155, %2139
  %2159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2160 = extractvalue %dx.types.CBufRet.f32 %2159, 0
  %2161 = extractvalue %dx.types.CBufRet.f32 %2159, 1
  %2162 = fadd fast float %2161, %2160
  %2163 = call float @dx.op.unary.f32(i32 7, float %2162)  ; Saturate(value)
  %2164 = extractvalue %dx.types.CBufRet.f32 %2159, 2
  %2165 = extractvalue %dx.types.CBufRet.f32 %2159, 3
  %2166 = fadd fast float %2165, %2164
  %2167 = call float @dx.op.unary.f32(i32 7, float %2166)  ; Saturate(value)
  %2168 = fmul fast float %2163, %2147
  %2169 = fmul fast float %2168, %2167
  br label %2170

; <label>:2170                                    ; preds = %2131, %2050, %1885, %1867, %1865
  %2171 = phi float [ %1894, %1885 ], [ %2053, %2050 ], [ %2135, %2131 ], [ 0.000000e+00, %1865 ], [ 0.000000e+00, %1867 ]
  %2172 = phi float [ %1928, %1885 ], [ %2087, %2050 ], [ %2169, %2131 ], [ 0.000000e+00, %1865 ], [ 0.000000e+00, %1867 ]
  %2173 = phi float [ %1915, %1885 ], [ %2074, %2050 ], [ %2156, %2131 ], [ 0.000000e+00, %1865 ], [ 0.000000e+00, %1867 ]
  %2174 = phi float [ %1916, %1885 ], [ %2075, %2050 ], [ %2157, %2131 ], [ 0.000000e+00, %1865 ], [ 0.000000e+00, %1867 ]
  %2175 = phi float [ %1917, %1885 ], [ %2076, %2050 ], [ %2158, %2131 ], [ 0.000000e+00, %1865 ], [ 0.000000e+00, %1867 ]
  %2176 = fmul fast float %1808, %2172
  %2177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2178 = extractvalue %dx.types.CBufRet.f32 %2177, 2
  %2179 = fsub fast float %1815, %2178
  %2180 = fcmp fast olt float %2176, -2.000000e+01
  %2181 = call float @dx.op.unary.f32(i32 21, float %2176)  ; Exp(value)
  %2182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2183 = extractvalue %dx.types.CBufRet.f32 %2182, 2
  %2184 = extractvalue %dx.types.CBufRet.f32 %2182, 3
  %2185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2186 = extractvalue %dx.types.CBufRet.f32 %2185, 2
  %2187 = fmul fast float %2184, %2179
  %2188 = call float @dx.op.unary.f32(i32 7, float %2187)  ; Saturate(value)
  %2189 = fsub fast float 1.000000e+00, %2188
  %2190 = fmul fast float %1800, 5.000000e-01
  %2191 = fadd fast float %2190, 5.000000e-01
  %2192 = call float @dx.op.unary.f32(i32 7, float %2191)  ; Saturate(value)
  %2193 = fsub fast float 1.000000e+00, %2192
  %2194 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2189)  ; FMax(a,b)
  %2195 = fdiv fast float %2193, %2194
  %2196 = fsub fast float %2179, %1757
  %2197 = call float @dx.op.unary.f32(i32 6, float %2196)  ; FAbs(value)
  %2198 = fmul fast float %2197, %2183
  %2199 = call float @dx.op.unary.f32(i32 7, float %2195)  ; Saturate(value)
  %2200 = fsub fast float 1.000000e+00, %2198
  %2201 = fmul fast float %2200, %2199
  %2202 = fadd fast float %2201, %2198
  %2203 = fmul fast float %2186, %2179
  %2204 = call float @dx.op.unary.f32(i32 7, float %2203)  ; Saturate(value)
  %2205 = fsub fast float 1.000000e+00, %2202
  %2206 = fmul fast float %2205, %2204
  %2207 = fadd fast float %2206, %2202
  %2208 = call float @dx.op.unary.f32(i32 7, float %2207)  ; Saturate(value)
  %2209 = fadd fast float %2181, -1.000000e+00
  %2210 = select i1 %2180, float -1.000000e+00, float %2209
  %2211 = fmul fast float %2208, %2210
  %2212 = fadd fast float %2211, 1.000000e+00
  %2213 = fsub fast float -0.000000e+00, %2211
  %2214 = fmul fast float %2173, %2213
  %2215 = fmul fast float %2174, %2213
  %2216 = fmul fast float %2175, %2213
  br label %2217

; <label>:2217                                    ; preds = %2170, %1766
  %2218 = phi float [ %2171, %2170 ], [ 0.000000e+00, %1766 ]
  %2219 = phi float [ %2212, %2170 ], [ 1.000000e+00, %1766 ]
  %2220 = phi float [ %2214, %2170 ], [ 0.000000e+00, %1766 ]
  %2221 = phi float [ %2215, %2170 ], [ 0.000000e+00, %1766 ]
  %2222 = phi float [ %2216, %2170 ], [ 0.000000e+00, %1766 ]
  %2223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2224 = extractvalue %dx.types.CBufRet.f32 %2223, 1
  %2225 = fsub fast float 1.000000e+00, %2219
  %2226 = fmul fast float %2225, %1801
  %2227 = fmul fast float %2226, %2224
  %2228 = fsub fast float %1801, %2227
  br i1 %1794, label %2229, label %2258, !dx.controlflow.hints !123

; <label>:2229                                    ; preds = %2217
  %2230 = fmul fast float %1802, %1791
  %2231 = fadd fast float %2230, %1792
  %2232 = call float @dx.op.unary.f32(i32 7, float %2231)  ; Saturate(value)
  %2233 = fmul fast float %1773, %2228
  %2234 = fsub fast float -0.000000e+00, %2233
  %2235 = fmul fast float %1774, %2228
  %2236 = fsub fast float -0.000000e+00, %2235
  %2237 = call float @dx.op.unary.f32(i32 21, float %2234)  ; Exp(value)
  %2238 = call float @dx.op.unary.f32(i32 21, float %2236)  ; Exp(value)
  %2239 = call float @dx.op.binary.f32(i32 35, float %1781, float %2237)  ; FMax(a,b)
  %2240 = call float @dx.op.binary.f32(i32 35, float %1781, float %2238)  ; FMax(a,b)
  %2241 = fsub fast float %2240, %2239
  %2242 = fmul fast float %2241, %2232
  %2243 = fadd fast float %2242, %2239
  %2244 = call float @dx.op.unary.f32(i32 7, float %2243)  ; Saturate(value)
  %2245 = fsub fast float %1778, %1783
  %2246 = fsub fast float %1779, %1784
  %2247 = fsub fast float %1780, %1785
  %2248 = fmul fast float %2232, %2245
  %2249 = fmul fast float %2232, %2246
  %2250 = fmul fast float %2232, %2247
  %2251 = fadd fast float %2248, %1783
  %2252 = fadd fast float %2249, %1784
  %2253 = fadd fast float %2250, %1785
  %2254 = fsub fast float 1.000000e+00, %2244
  %2255 = fmul fast float %2254, %2251
  %2256 = fmul fast float %2254, %2252
  %2257 = fmul fast float %2254, %2253
  br label %2317

; <label>:2258                                    ; preds = %2217
  %2259 = fmul fast float %2228, %1790
  %2260 = call float @dx.op.unary.f32(i32 7, float %2259)  ; Saturate(value)
  %2261 = fsub fast float 2.000000e+00, %2260
  %2262 = fmul fast float %2260, 9.921875e-01
  %2263 = fmul fast float %2262, %2261
  %2264 = fadd fast float %2263, 3.906250e-03
  %2265 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %26, float %2264, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2266 = extractvalue %dx.types.ResRet.f32 %2265, 0
  %2267 = fsub fast float %2260, %2266
  %2268 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2267)  ; FMax(a,b)
  %2269 = fmul fast float %1776, %1757
  %2270 = call float @dx.op.unary.f32(i32 6, float %2269)  ; FAbs(value)
  %2271 = fcmp fast ogt float %2270, 0x3EB0C6F7A0000000
  br i1 %2271, label %2272, label %2278, !dx.controlflow.hints !124

; <label>:2272                                    ; preds = %2258
  %2273 = fmul fast float %2269, 0xBFF7154760000000
  %2274 = call float @dx.op.unary.f32(i32 21, float %2273)  ; Exp(value)
  %2275 = fsub fast float 1.000000e+00, %2274
  %2276 = fdiv fast float %2275, %2269
  %2277 = fmul fast float %2276, %1786
  br label %2278

; <label>:2278                                    ; preds = %2272, %2258
  %2279 = phi float [ %2277, %2272 ], [ %1786, %2258 ]
  %2280 = fadd fast float %2279, %1788
  %2281 = fmul fast float %2280, %2268
  %2282 = fmul fast float %1773, %2281
  %2283 = fsub fast float -0.000000e+00, %2282
  %2284 = fmul fast float %1774, %2281
  %2285 = fsub fast float -0.000000e+00, %2284
  %2286 = fmul fast float %1775, %2281
  %2287 = fsub fast float -0.000000e+00, %2286
  %2288 = call float @dx.op.unary.f32(i32 21, float %2283)  ; Exp(value)
  %2289 = call float @dx.op.unary.f32(i32 21, float %2285)  ; Exp(value)
  %2290 = call float @dx.op.unary.f32(i32 21, float %2287)  ; Exp(value)
  %2291 = fmul fast float %1802, %1802
  %2292 = fadd fast float %2291, 1.000000e+00
  %2293 = fmul fast float %2292, 0x3FAE8EC8A0000000
  %2294 = fmul fast float %2293, %1783
  %2295 = fmul fast float %2293, %1784
  %2296 = fmul fast float %2293, %1785
  %2297 = fmul fast float %1802, %1781
  %2298 = fsub fast float 1.000000e+00, %2297
  %2299 = fmul fast float %1781, %1781
  %2300 = fsub fast float 1.000000e+00, %2299
  %2301 = fmul fast float %2300, 0x3FB45F3060000000
  %2302 = fmul fast float %2298, %2298
  %2303 = fdiv fast float 1.000000e+00, %2302
  %2304 = fmul fast float %2301, %2303
  %2305 = fmul fast float %2304, %1778
  %2306 = fmul fast float %2304, %1779
  %2307 = fmul fast float %2304, %1780
  %2308 = fadd fast float %2305, %2294
  %2309 = fadd fast float %2306, %2295
  %2310 = fadd fast float %2307, %2296
  %2311 = fsub fast float 1.000000e+00, %2288
  %2312 = fsub fast float 1.000000e+00, %2289
  %2313 = fsub fast float 1.000000e+00, %2290
  %2314 = fmul fast float %2308, %2311
  %2315 = fmul fast float %2309, %2312
  %2316 = fmul fast float %2310, %2313
  br label %2317

; <label>:2317                                    ; preds = %2278, %2229
  %2318 = phi float [ %2255, %2229 ], [ %2314, %2278 ]
  %2319 = phi float [ %2256, %2229 ], [ %2315, %2278 ]
  %2320 = phi float [ %2257, %2229 ], [ %2316, %2278 ]
  %2321 = phi float [ %2244, %2229 ], [ %2288, %2278 ]
  %2322 = phi float [ %2244, %2229 ], [ %2289, %2278 ]
  %2323 = phi float [ %2244, %2229 ], [ %2290, %2278 ]
  br i1 %1810, label %2324, label %2522, !dx.controlflow.hints !125

; <label>:2324                                    ; preds = %2317
  %2325 = extractvalue %dx.types.CBufRet.f32 %2223, 0
  %2326 = fmul fast float %2325, %2225
  %2327 = fsub fast float %2220, %2318
  %2328 = fsub fast float %2221, %2319
  %2329 = fsub fast float %2222, %2320
  %2330 = fmul fast float %2326, %2327
  %2331 = fmul fast float %2326, %2328
  %2332 = fmul fast float %2326, %2329
  %2333 = fadd fast float %2330, %2318
  %2334 = fadd fast float %2331, %2319
  %2335 = fadd fast float %2332, %2320
  %2336 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2321)  ; FMax(a,b)
  %2337 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2322)  ; FMax(a,b)
  %2338 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2323)  ; FMax(a,b)
  %2339 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2219)  ; FMax(a,b)
  %2340 = call float @dx.op.binary.f32(i32 35, float %2218, float %2228)  ; FMax(a,b)
  %2341 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2340)  ; FMax(a,b)
  %2342 = fdiv fast float %2218, %2341
  %2343 = call float @dx.op.unary.f32(i32 7, float %2342)  ; Saturate(value)
  %2344 = fdiv fast float %2228, %2341
  %2345 = call float @dx.op.unary.f32(i32 7, float %2344)  ; Saturate(value)
  %2346 = fcmp fast une float %2339, 1.000000e+00
  br i1 %2346, label %2347, label %2360, !dx.controlflow.hints !126

; <label>:2347                                    ; preds = %2324
  %2348 = call float @dx.op.unary.f32(i32 23, float %2339)  ; Log(value)
  %2349 = fmul fast float %2348, 0x3FE62E4300000000
  %2350 = fmul fast float %2220, %2349
  %2351 = fsub fast float -0.000000e+00, %2350
  %2352 = fmul fast float %2221, %2349
  %2353 = fsub fast float -0.000000e+00, %2352
  %2354 = fmul fast float %2222, %2349
  %2355 = fsub fast float -0.000000e+00, %2354
  %2356 = fsub fast float 1.000000e+00, %2339
  %2357 = fdiv fast float %2351, %2356
  %2358 = fdiv fast float %2353, %2356
  %2359 = fdiv fast float %2355, %2356
  br label %2360

; <label>:2360                                    ; preds = %2347, %2324
  %2361 = phi float [ %2357, %2347 ], [ %2220, %2324 ]
  %2362 = phi float [ %2358, %2347 ], [ %2221, %2324 ]
  %2363 = phi float [ %2359, %2347 ], [ %2222, %2324 ]
  %2364 = phi float [ %2349, %2347 ], [ 0.000000e+00, %2324 ]
  %2365 = fcmp fast une float %2336, 1.000000e+00
  br i1 %2365, label %2366, label %2373, !dx.controlflow.hints !127

; <label>:2366                                    ; preds = %2360
  %2367 = call float @dx.op.unary.f32(i32 23, float %2336)  ; Log(value)
  %2368 = fmul fast float %2367, 0x3FE62E4300000000
  %2369 = fmul fast float %2333, %2368
  %2370 = fsub fast float -0.000000e+00, %2369
  %2371 = fsub fast float 1.000000e+00, %2336
  %2372 = fdiv fast float %2370, %2371
  br label %2373

; <label>:2373                                    ; preds = %2366, %2360
  %2374 = phi float [ %2372, %2366 ], [ %2333, %2360 ]
  %2375 = phi float [ %2368, %2366 ], [ 0.000000e+00, %2360 ]
  %2376 = fcmp fast une float %2337, 1.000000e+00
  br i1 %2376, label %2377, label %2384, !dx.controlflow.hints !127

; <label>:2377                                    ; preds = %2373
  %2378 = call float @dx.op.unary.f32(i32 23, float %2337)  ; Log(value)
  %2379 = fmul fast float %2378, 0x3FE62E4300000000
  %2380 = fmul fast float %2334, %2379
  %2381 = fsub fast float -0.000000e+00, %2380
  %2382 = fsub fast float 1.000000e+00, %2337
  %2383 = fdiv fast float %2381, %2382
  br label %2384

; <label>:2384                                    ; preds = %2377, %2373
  %2385 = phi float [ %2383, %2377 ], [ %2334, %2373 ]
  %2386 = phi float [ %2379, %2377 ], [ 0.000000e+00, %2373 ]
  %2387 = fcmp fast une float %2338, 1.000000e+00
  br i1 %2387, label %2388, label %2395, !dx.controlflow.hints !127

; <label>:2388                                    ; preds = %2384
  %2389 = call float @dx.op.unary.f32(i32 23, float %2338)  ; Log(value)
  %2390 = fmul fast float %2389, 0x3FE62E4300000000
  %2391 = fmul fast float %2335, %2390
  %2392 = fsub fast float -0.000000e+00, %2391
  %2393 = fsub fast float 1.000000e+00, %2338
  %2394 = fdiv fast float %2392, %2393
  br label %2395

; <label>:2395                                    ; preds = %2388, %2384
  %2396 = phi float [ %2394, %2388 ], [ %2335, %2384 ]
  %2397 = phi float [ %2390, %2388 ], [ 0.000000e+00, %2384 ]
  %2398 = fmul fast float %2361, %2345
  %2399 = fmul fast float %2362, %2345
  %2400 = fmul fast float %2363, %2345
  %2401 = fmul fast float %2364, %2345
  %2402 = fmul fast float %2374, %2343
  %2403 = fmul fast float %2385, %2343
  %2404 = fmul fast float %2396, %2343
  %2405 = fmul fast float %2375, %2343
  %2406 = fmul fast float %2386, %2343
  %2407 = fmul fast float %2397, %2343
  %2408 = fadd fast float %2402, %2398
  %2409 = fadd fast float %2403, %2399
  %2410 = fadd fast float %2404, %2400
  %2411 = fadd fast float %2405, %2401
  %2412 = fadd fast float %2406, %2401
  %2413 = fadd fast float %2407, %2401
  %2414 = fcmp fast une float %2411, 0.000000e+00
  br i1 %2414, label %2415, label %2422, !dx.controlflow.hints !128

; <label>:2415                                    ; preds = %2395
  %2416 = fmul fast float %2411, 0x3FF7154760000000
  %2417 = call float @dx.op.unary.f32(i32 21, float %2416)  ; Exp(value)
  %2418 = fsub fast float 1.000000e+00, %2417
  %2419 = fmul fast float %2408, %2418
  %2420 = fsub fast float -0.000000e+00, %2419
  %2421 = fdiv fast float %2420, %2411
  br label %2422

; <label>:2422                                    ; preds = %2415, %2395
  %2423 = phi float [ %2417, %2415 ], [ 1.000000e+00, %2395 ]
  %2424 = phi float [ %2421, %2415 ], [ %2408, %2395 ]
  %2425 = fcmp fast une float %2412, 0.000000e+00
  br i1 %2425, label %2426, label %2433, !dx.controlflow.hints !128

; <label>:2426                                    ; preds = %2422
  %2427 = fmul fast float %2412, 0x3FF7154760000000
  %2428 = call float @dx.op.unary.f32(i32 21, float %2427)  ; Exp(value)
  %2429 = fsub fast float 1.000000e+00, %2428
  %2430 = fmul fast float %2409, %2429
  %2431 = fsub fast float -0.000000e+00, %2430
  %2432 = fdiv fast float %2431, %2412
  br label %2433

; <label>:2433                                    ; preds = %2426, %2422
  %2434 = phi float [ %2428, %2426 ], [ 1.000000e+00, %2422 ]
  %2435 = phi float [ %2432, %2426 ], [ %2409, %2422 ]
  %2436 = fcmp fast une float %2413, 0.000000e+00
  br i1 %2436, label %2437, label %2444, !dx.controlflow.hints !128

; <label>:2437                                    ; preds = %2433
  %2438 = fmul fast float %2413, 0x3FF7154760000000
  %2439 = call float @dx.op.unary.f32(i32 21, float %2438)  ; Exp(value)
  %2440 = fsub fast float 1.000000e+00, %2439
  %2441 = fmul fast float %2410, %2440
  %2442 = fsub fast float -0.000000e+00, %2441
  %2443 = fdiv fast float %2442, %2413
  br label %2444

; <label>:2444                                    ; preds = %2437, %2433
  %2445 = phi float [ %2439, %2437 ], [ 1.000000e+00, %2433 ]
  %2446 = phi float [ %2443, %2437 ], [ %2410, %2433 ]
  %2447 = fcmp fast ogt float %2343, %2345
  br i1 %2447, label %2448, label %2468

; <label>:2448                                    ; preds = %2444
  %2449 = fsub fast float 1.000000e+00, %2345
  %2450 = fmul fast float %2361, %2449
  %2451 = fmul fast float %2362, %2449
  %2452 = fmul fast float %2363, %2449
  %2453 = fmul fast float %2364, %2449
  %2454 = fcmp fast une float %2453, 0.000000e+00
  br i1 %2454, label %2455, label %2506, !dx.controlflow.hints !129

; <label>:2455                                    ; preds = %2448
  %2456 = fmul fast float %2453, 0x3FF7154760000000
  %2457 = call float @dx.op.unary.f32(i32 21, float %2456)  ; Exp(value)
  %2458 = fsub fast float 1.000000e+00, %2457
  %2459 = fmul fast float %2450, %2458
  %2460 = fsub fast float -0.000000e+00, %2459
  %2461 = fmul fast float %2451, %2458
  %2462 = fsub fast float -0.000000e+00, %2461
  %2463 = fmul fast float %2452, %2458
  %2464 = fsub fast float -0.000000e+00, %2463
  %2465 = fdiv fast float %2460, %2453
  %2466 = fdiv fast float %2462, %2453
  %2467 = fdiv fast float %2464, %2453
  br label %2506

; <label>:2468                                    ; preds = %2444
  %2469 = fsub fast float 1.000000e+00, %2343
  %2470 = fmul fast float %2374, %2469
  %2471 = fmul fast float %2385, %2469
  %2472 = fmul fast float %2396, %2469
  %2473 = fmul fast float %2375, %2469
  %2474 = fmul fast float %2386, %2469
  %2475 = fmul fast float %2397, %2469
  %2476 = fcmp fast une float %2473, 0.000000e+00
  br i1 %2476, label %2477, label %2484, !dx.controlflow.hints !128

; <label>:2477                                    ; preds = %2468
  %2478 = fmul fast float %2473, 0x3FF7154760000000
  %2479 = call float @dx.op.unary.f32(i32 21, float %2478)  ; Exp(value)
  %2480 = fsub fast float 1.000000e+00, %2479
  %2481 = fmul fast float %2470, %2480
  %2482 = fsub fast float -0.000000e+00, %2481
  %2483 = fdiv fast float %2482, %2473
  br label %2484

; <label>:2484                                    ; preds = %2477, %2468
  %2485 = phi float [ %2483, %2477 ], [ %2470, %2468 ]
  %2486 = phi float [ %2479, %2477 ], [ 1.000000e+00, %2468 ]
  %2487 = fcmp fast une float %2474, 0.000000e+00
  br i1 %2487, label %2488, label %2495, !dx.controlflow.hints !128

; <label>:2488                                    ; preds = %2484
  %2489 = fmul fast float %2474, 0x3FF7154760000000
  %2490 = call float @dx.op.unary.f32(i32 21, float %2489)  ; Exp(value)
  %2491 = fsub fast float 1.000000e+00, %2490
  %2492 = fmul fast float %2471, %2491
  %2493 = fsub fast float -0.000000e+00, %2492
  %2494 = fdiv fast float %2493, %2474
  br label %2495

; <label>:2495                                    ; preds = %2488, %2484
  %2496 = phi float [ %2494, %2488 ], [ %2471, %2484 ]
  %2497 = phi float [ %2490, %2488 ], [ 1.000000e+00, %2484 ]
  %2498 = fcmp fast une float %2475, 0.000000e+00
  br i1 %2498, label %2499, label %2506, !dx.controlflow.hints !128

; <label>:2499                                    ; preds = %2495
  %2500 = fmul fast float %2475, 0x3FF7154760000000
  %2501 = call float @dx.op.unary.f32(i32 21, float %2500)  ; Exp(value)
  %2502 = fsub fast float 1.000000e+00, %2501
  %2503 = fmul fast float %2472, %2502
  %2504 = fsub fast float -0.000000e+00, %2503
  %2505 = fdiv fast float %2504, %2475
  br label %2506

; <label>:2506                                    ; preds = %2499, %2495, %2455, %2448
  %2507 = phi float [ %2505, %2499 ], [ %2467, %2455 ], [ %2452, %2448 ], [ %2472, %2495 ]
  %2508 = phi float [ %2496, %2499 ], [ %2466, %2455 ], [ %2451, %2448 ], [ %2496, %2495 ]
  %2509 = phi float [ %2485, %2499 ], [ %2465, %2455 ], [ %2450, %2448 ], [ %2485, %2495 ]
  %2510 = phi float [ %2501, %2499 ], [ %2457, %2455 ], [ 1.000000e+00, %2448 ], [ 1.000000e+00, %2495 ]
  %2511 = phi float [ %2497, %2499 ], [ %2457, %2455 ], [ 1.000000e+00, %2448 ], [ %2497, %2495 ]
  %2512 = phi float [ %2486, %2499 ], [ %2457, %2455 ], [ 1.000000e+00, %2448 ], [ %2486, %2495 ]
  %2513 = fmul fast float %2512, %2424
  %2514 = fmul fast float %2511, %2435
  %2515 = fmul fast float %2510, %2446
  %2516 = fadd fast float %2513, %2509
  %2517 = fadd fast float %2514, %2508
  %2518 = fadd fast float %2515, %2507
  %2519 = fmul fast float %2512, %2423
  %2520 = fmul fast float %2511, %2434
  %2521 = fmul fast float %2510, %2445
  br label %2522

; <label>:2522                                    ; preds = %2506, %2317
  %2523 = phi float [ %2521, %2506 ], [ %2323, %2317 ]
  %2524 = phi float [ %2520, %2506 ], [ %2322, %2317 ]
  %2525 = phi float [ %2519, %2506 ], [ %2321, %2317 ]
  %2526 = phi float [ %2518, %2506 ], [ %2320, %2317 ]
  %2527 = phi float [ %2517, %2506 ], [ %2319, %2317 ]
  %2528 = phi float [ %2516, %2506 ], [ %2318, %2317 ]
  %2529 = fmul fast float %2528, %1502
  %2530 = fmul fast float %2527, %1502
  %2531 = fmul fast float %2526, %1502
  %2532 = fmul fast float %2525, %1765
  %2533 = call float @dx.op.dot3.f32(i32 55, float %2525, float %2524, float %2523, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2534 = call float @dx.op.dot3.f32(i32 55, float %2529, float %2530, float %2531, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2535 = select i1 %131, float %2533, float %2525
  %2536 = select i1 %131, float %2533, float %2524
  %2537 = select i1 %131, float 1.000000e+00, float %2523
  %2538 = select i1 %131, float %2534, float %2529
  %2539 = select i1 %131, float 0.000000e+00, float %2530
  %2540 = select i1 %131, float 0.000000e+00, float %2531
  %2541 = fmul fast float %2535, %1759
  %2542 = fmul fast float %2536, %1760
  %2543 = fmul fast float %2537, %1761
  %2544 = fadd fast float %2541, %2538
  %2545 = fadd fast float %2542, %2539
  %2546 = fadd fast float %2540, %2543
  %2547 = fmul fast float %2535, %1762
  %2548 = fmul fast float %2536, %1763
  %2549 = fmul fast float %2537, %1764
  %2550 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2551 = extractvalue %dx.types.CBufRet.i32 %2550, 0
  %2552 = icmp eq i32 %2551, 0
  br i1 %2552, label %2821, label %2553, !dx.controlflow.hints !130

; <label>:2553                                    ; preds = %2522
  %2554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2555 = extractvalue %dx.types.CBufRet.f32 %2554, 2
  %2556 = extractvalue %dx.types.CBufRet.f32 %2554, 3
  %2557 = fmul fast float %2555, %61
  %2558 = fmul fast float %2556, %62
  %2559 = fmul fast float %2557, 2.000000e+00
  %2560 = fmul fast float %2558, 2.000000e+00
  %2561 = fsub fast float 1.000000e+00, %2559
  %2562 = fsub fast float 1.000000e+00, %2560
  %2563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2564 = extractvalue %dx.types.CBufRet.f32 %2563, 0
  %2565 = extractvalue %dx.types.CBufRet.f32 %2563, 1
  %2566 = extractvalue %dx.types.CBufRet.f32 %2563, 2
  %2567 = fmul fast float %2561, %2564
  %2568 = fmul fast float %2561, %2565
  %2569 = fmul fast float %2561, %2566
  %2570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2571 = extractvalue %dx.types.CBufRet.f32 %2570, 0
  %2572 = extractvalue %dx.types.CBufRet.f32 %2570, 1
  %2573 = extractvalue %dx.types.CBufRet.f32 %2570, 2
  %2574 = fmul fast float %2562, %2571
  %2575 = fmul fast float %2562, %2572
  %2576 = fmul fast float %2562, %2573
  %2577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2578 = extractvalue %dx.types.CBufRet.f32 %2577, 0
  %2579 = extractvalue %dx.types.CBufRet.f32 %2577, 1
  %2580 = extractvalue %dx.types.CBufRet.f32 %2577, 2
  %2581 = fadd fast float %2574, %2578
  %2582 = fadd fast float %2581, %2567
  %2583 = fadd fast float %2575, %2579
  %2584 = fadd fast float %2583, %2568
  %2585 = fadd fast float %2576, %2580
  %2586 = fadd fast float %2585, %2569
  %2587 = fmul fast float %2582, %1758
  %2588 = fmul fast float %2584, %1758
  %2589 = fmul fast float %2586, %1758
  %2590 = fmul fast float %2587, %2587
  %2591 = fmul fast float %2588, %2588
  %2592 = fadd fast float %2590, %2591
  %2593 = fmul fast float %2589, %2589
  %2594 = fadd fast float %2592, %2593
  %2595 = call float @dx.op.unary.f32(i32 24, float %2594)  ; Sqrt(value)
  %2596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2597 = extractvalue %dx.types.CBufRet.f32 %2596, 0
  %2598 = fsub fast float %2595, %2597
  %2599 = extractvalue %dx.types.CBufRet.f32 %2596, 2
  %2600 = fmul fast float %2598, %2599
  %2601 = call float @dx.op.unary.f32(i32 7, float %2600)  ; Saturate(value)
  %2602 = fadd fast float %2601, -5.000000e-01
  %2603 = fmul fast float %2602, 2.000000e+00
  %2604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2605 = extractvalue %dx.types.CBufRet.f32 %2604, 2
  %2606 = call float @dx.op.binary.f32(i32 36, float %2605, float %2603)  ; FMin(a,b)
  %2607 = fsub fast float -0.000000e+00, %2605
  %2608 = fcmp fast ogt float %2606, %2607
  br i1 %2608, label %2609, label %2821, !dx.controlflow.hints !131

; <label>:2609                                    ; preds = %2553
  %2610 = fmul fast float %2606, 5.000000e-01
  %2611 = fadd fast float %2610, 5.000000e-01
  %2612 = call float @dx.op.unary.f32(i32 22, float %2611)  ; Frc(value)
  %2613 = call float @dx.op.unary.f32(i32 27, float %2612)  ; Round_ni(value)
  %2614 = call float @dx.op.unary.f32(i32 22, float %2612)  ; Frc(value)
  %2615 = fmul fast float %2614, 2.000000e+00
  %2616 = fadd fast float %2615, -1.000000e+00
  %2617 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %26, float %2557, float %2558, float %2613, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2618 = extractvalue %dx.types.ResRet.f32 %2617, 0
  %2619 = extractvalue %dx.types.ResRet.f32 %2617, 1
  %2620 = extractvalue %dx.types.ResRet.f32 %2617, 2
  %2621 = extractvalue %dx.types.ResRet.f32 %2617, 3
  %2622 = fadd fast float %2618, -5.000000e-01
  %2623 = fadd fast float %2620, -5.000000e-01
  %2624 = fmul fast float %2622, 0xBFD5555560000000
  %2625 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2623, float %2624)  ; FMad(a,b,c)
  %2626 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2619, float 0.000000e+00)  ; FMad(a,b,c)
  %2627 = fadd fast float %2626, %2621
  %2628 = fmul fast float %2622, -7.500000e-01
  %2629 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2623, float %2628)  ; FMad(a,b,c)
  %2630 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2619, float 0.000000e+00)  ; FMad(a,b,c)
  %2631 = fadd fast float %2630, %2621
  %2632 = call float @dx.op.binary.f32(i32 35, float %2625, float -1.000000e+00)  ; FMax(a,b)
  %2633 = call float @dx.op.binary.f32(i32 35, float %2627, float -1.000000e+00)  ; FMax(a,b)
  %2634 = call float @dx.op.binary.f32(i32 35, float %2629, float -1.000000e+00)  ; FMax(a,b)
  %2635 = call float @dx.op.binary.f32(i32 35, float %2631, float -1.000000e+00)  ; FMax(a,b)
  %2636 = call float @dx.op.binary.f32(i32 36, float %2632, float 1.000000e+00)  ; FMin(a,b)
  %2637 = call float @dx.op.binary.f32(i32 36, float %2633, float 1.000000e+00)  ; FMin(a,b)
  %2638 = call float @dx.op.binary.f32(i32 36, float %2634, float 1.000000e+00)  ; FMin(a,b)
  %2639 = call float @dx.op.binary.f32(i32 36, float %2635, float 1.000000e+00)  ; FMin(a,b)
  %2640 = fcmp fast olt float %2636, 0x3FEFFF8020000000
  br i1 %2640, label %2641, label %2756, !dx.controlflow.hints !132

; <label>:2641                                    ; preds = %2609
  %2642 = extractvalue %dx.types.CBufRet.f32 %2604, 3
  %2643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %2644 = extractvalue %dx.types.CBufRet.f32 %2643, 0
  %2645 = extractvalue %dx.types.CBufRet.f32 %2643, 1
  %2646 = extractvalue %dx.types.CBufRet.f32 %2643, 2
  %2647 = extractvalue %dx.types.CBufRet.f32 %2643, 3
  %2648 = fsub fast float %2644, %2636
  %2649 = fsub fast float %2645, %2637
  %2650 = fsub fast float %2646, %2638
  %2651 = fsub fast float %2647, %2639
  %2652 = fmul fast float %2648, %2642
  %2653 = fmul fast float %2649, %2642
  %2654 = fmul fast float %2650, %2642
  %2655 = fmul fast float %2651, %2642
  %2656 = fadd fast float %2652, %2636
  %2657 = fadd fast float %2653, %2637
  %2658 = fsub fast float -0.000000e+00, %2657
  %2659 = fadd fast float %2654, %2638
  %2660 = fadd fast float %2655, %2639
  %2661 = fmul fast float %2656, %2656
  %2662 = fsub fast float %2657, %2661
  %2663 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2662)  ; FMax(a,b)
  %2664 = fdiv fast float 1.000000e+00, %2663
  %2665 = fmul fast float %2657, %2656
  %2666 = fsub fast float %2659, %2665
  %2667 = fsub fast float %2616, %2656
  %2668 = fmul fast float %2616, %2616
  %2669 = fsub fast float %2668, %2657
  %2670 = fmul fast float %2667, %2664
  %2671 = fmul fast float %2670, %2666
  %2672 = fsub fast float %2669, %2671
  %2673 = fmul fast float %2657, %2657
  %2674 = fsub fast float %2660, %2673
  %2675 = fmul fast float %2666, %2666
  %2676 = fmul fast float %2675, %2664
  %2677 = fsub fast float %2674, %2676
  %2678 = fdiv fast float %2672, %2677
  %2679 = fmul fast float %2666, %2678
  %2680 = fsub fast float %2667, %2679
  %2681 = fmul fast float %2680, %2664
  %2682 = fmul fast float %2681, %2656
  %2683 = fsub fast float 1.000000e+00, %2682
  %2684 = fmul fast float %2657, %2678
  %2685 = fsub fast float %2683, %2684
  %2686 = fmul fast float %2681, %2681
  %2687 = fmul fast float %2678, 4.000000e+00
  %2688 = fmul fast float %2687, %2685
  %2689 = fsub fast float %2686, %2688
  %2690 = call float @dx.op.unary.f32(i32 24, float %2689)  ; Sqrt(value)
  %2691 = fcmp fast oge float %2681, 0.000000e+00
  %2692 = fsub fast float -0.000000e+00, %2690
  %2693 = select i1 %2691, float %2692, float %2690
  %2694 = fsub fast float %2693, %2681
  %2695 = fdiv fast float %2694, %2678
  %2696 = fdiv fast float %2685, %2694
  %2697 = fmul fast float %2695, 5.000000e-01
  %2698 = fmul fast float %2696, 2.000000e+00
  %2699 = select i1 %2691, float %2697, float %2698
  %2700 = select i1 %2691, float %2698, float %2697
  %2701 = call float @dx.op.binary.f32(i32 35, float %2699, float %2700)  ; FMax(a,b)
  %2702 = call float @dx.op.binary.f32(i32 36, float %2699, float %2700)  ; FMin(a,b)
  %2703 = fcmp fast ogt float %2616, %2702
  br i1 %2703, label %2704, label %2714

; <label>:2704                                    ; preds = %2641
  %2705 = fsub fast float %2616, %2702
  %2706 = fsub fast float %2701, %2702
  %2707 = fmul fast float %2705, %2706
  %2708 = fmul fast float %2701, %2616
  %2709 = fadd fast float %2701, %2616
  %2710 = fmul fast float %2709, %2656
  %2711 = fadd fast float %2708, %2657
  %2712 = fsub fast float %2711, %2710
  %2713 = fdiv fast float %2712, %2707
  br label %2714

; <label>:2714                                    ; preds = %2704, %2641
  %2715 = phi float [ %2713, %2704 ], [ 0.000000e+00, %2641 ]
  %2716 = fcmp fast ogt float %2616, %2701
  %2717 = fsub fast float %2616, %2701
  br i1 %2716, label %2718, label %2728

; <label>:2718                                    ; preds = %2714
  %2719 = fsub fast float %2701, %2702
  %2720 = fmul fast float %2719, %2717
  %2721 = fmul fast float %2702, %2616
  %2722 = fadd fast float %2702, %2616
  %2723 = fmul fast float %2722, %2656
  %2724 = fsub fast float %2658, %2721
  %2725 = fadd fast float %2724, %2723
  %2726 = fdiv fast float %2725, %2720
  %2727 = fadd fast float %2726, %2715
  br label %2728

; <label>:2728                                    ; preds = %2718, %2714
  %2729 = phi float [ %2727, %2718 ], [ %2715, %2714 ]
  %2730 = fsub fast float %2616, %2702
  %2731 = fmul fast float %2730, %2717
  %2732 = fmul fast float %2702, %2701
  %2733 = fadd fast float %2702, %2701
  %2734 = fmul fast float %2733, %2656
  %2735 = fadd fast float %2732, %2657
  %2736 = fsub fast float %2735, %2734
  %2737 = fdiv fast float %2736, %2731
  %2738 = call float @dx.op.unary.f32(i32 7, float %2729)  ; Saturate(value)
  %2739 = fcmp fast oeq float %1611, 0.000000e+00
  %2740 = extractvalue %dx.types.CBufRet.f32 %2604, 0
  %2741 = fcmp fast oeq float %2740, 0.000000e+00
  %2742 = or i1 %2739, %2741
  %2743 = fmul fast float %2740, 2.000000e+00
  %2744 = fadd fast float %2605, %2606
  %2745 = fdiv fast float %2744, %2743
  %2746 = call float @dx.op.unary.f32(i32 7, float %2745)  ; Saturate(value)
  %2747 = fmul fast float %2746, 2.000000e+00
  %2748 = fsub fast float 3.000000e+00, %2747
  %2749 = fmul fast float %2746, %2746
  %2750 = fmul fast float %2749, %2748
  %2751 = select i1 %2742, float 1.000000e+00, float %2750
  %2752 = fmul fast float %2737, %1611
  %2753 = fadd fast float %2738, %2752
  %2754 = call float @dx.op.unary.f32(i32 7, float %2753)  ; Saturate(value)
  %2755 = fmul fast float %2751, %2754
  br label %2756

; <label>:2756                                    ; preds = %2728, %2609
  %2757 = phi float [ %2755, %2728 ], [ 0.000000e+00, %2609 ]
  %2758 = fsub fast float 1.000000e+00, %2757
  %2759 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %26, float %2557, float %2558, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2760 = extractvalue %dx.types.ResRet.f32 %2759, 0
  %2761 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2762 = extractvalue %dx.types.CBufRet.i32 %2761, 2
  %2763 = icmp eq i32 %2762, 0
  br i1 %2763, label %2769, label %2764

; <label>:2764                                    ; preds = %2756
  %2765 = call float @dx.op.unary.f32(i32 7, float %2757)  ; Saturate(value)
  %2766 = fadd fast float %2760, -1.000000e+00
  %2767 = fmul fast float %2765, %2766
  %2768 = fadd fast float %2767, 1.000000e+00
  br label %2769

; <label>:2769                                    ; preds = %2764, %2756
  %2770 = phi float [ %2768, %2764 ], [ %2758, %2756 ]
  %2771 = call float @dx.op.binary.f32(i32 35, float %2760, float %2770)  ; FMax(a,b)
  %2772 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %2773 = extractvalue %dx.types.CBufRet.i32 %2772, 2
  %2774 = and i32 %2773, 1
  %2775 = icmp eq i32 %2774, 0
  %2776 = fcmp fast une float %2771, 1.000000e+00
  %2777 = and i1 %2776, %2775
  br i1 %2777, label %2778, label %2797

; <label>:2778                                    ; preds = %2769
  %2779 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %26, float %2557, float %2558, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2780 = extractvalue %dx.types.ResRet.f32 %2779, 0
  %2781 = extractvalue %dx.types.ResRet.f32 %2779, 1
  %2782 = extractvalue %dx.types.ResRet.f32 %2779, 2
  %2783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2784 = extractvalue %dx.types.CBufRet.f32 %2783, 1
  %2785 = fmul fast float %2784, %2780
  %2786 = fmul fast float %2784, %2781
  %2787 = fmul fast float %2784, %2782
  %2788 = fcmp fast ogt float %2760, 0x3FEFFF2E40000000
  %2789 = fsub fast float 1.000000e+00, %2771
  %2790 = fsub fast float 1.000000e+00, %2760
  %2791 = fdiv fast float %2789, %2790
  %2792 = call float @dx.op.unary.f32(i32 7, float %2791)  ; Saturate(value)
  %2793 = select i1 %2788, float 0.000000e+00, float %2792
  %2794 = fmul fast float %2785, %2793
  %2795 = fmul fast float %2786, %2793
  %2796 = fmul fast float %2787, %2793
  br label %2797

; <label>:2797                                    ; preds = %2778, %2769
  %2798 = phi float [ 0.000000e+00, %2769 ], [ %2794, %2778 ]
  %2799 = phi float [ 0.000000e+00, %2769 ], [ %2795, %2778 ]
  %2800 = phi float [ 0.000000e+00, %2769 ], [ %2796, %2778 ]
  %2801 = fmul fast float %2798, %1502
  %2802 = fmul fast float %2799, %1502
  %2803 = fmul fast float %2800, %1502
  %2804 = fmul fast float %2771, %2532
  %2805 = call float @dx.op.dot3.f32(i32 55, float %2771, float %2771, float %2771, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2806 = call float @dx.op.dot3.f32(i32 55, float %2801, float %2802, float %2803, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2807 = select i1 %131, float %2805, float %2771
  %2808 = select i1 %131, float 1.000000e+00, float %2771
  %2809 = select i1 %131, float %2806, float %2801
  %2810 = select i1 %131, float 0.000000e+00, float %2802
  %2811 = select i1 %131, float 0.000000e+00, float %2803
  %2812 = fmul fast float %2807, %2544
  %2813 = fmul fast float %2807, %2545
  %2814 = fmul fast float %2808, %2546
  %2815 = fadd fast float %2812, %2809
  %2816 = fadd fast float %2813, %2810
  %2817 = fadd fast float %2811, %2814
  %2818 = fmul fast float %2807, %2547
  %2819 = fmul fast float %2807, %2548
  %2820 = fmul fast float %2808, %2549
  br label %2821

; <label>:2821                                    ; preds = %2797, %2553, %2522, %1754
  %2822 = phi float [ %1759, %1754 ], [ %2544, %2522 ], [ %2815, %2797 ], [ %2544, %2553 ]
  %2823 = phi float [ %1760, %1754 ], [ %2545, %2522 ], [ %2816, %2797 ], [ %2545, %2553 ]
  %2824 = phi float [ %1761, %1754 ], [ %2546, %2522 ], [ %2817, %2797 ], [ %2546, %2553 ]
  %2825 = phi float [ %1762, %1754 ], [ %2547, %2522 ], [ %2818, %2797 ], [ %2547, %2553 ]
  %2826 = phi float [ %1763, %1754 ], [ %2548, %2522 ], [ %2819, %2797 ], [ %2548, %2553 ]
  %2827 = phi float [ %1764, %1754 ], [ %2549, %2522 ], [ %2820, %2797 ], [ %2549, %2553 ]
  %2828 = phi float [ %1765, %1754 ], [ %2532, %2522 ], [ %2804, %2797 ], [ %2532, %2553 ]
  %2829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2830 = extractvalue %dx.types.CBufRet.f32 %2829, 2
  %2831 = extractvalue %dx.types.CBufRet.f32 %2829, 3
  %2832 = fmul fast float %2830, %61
  %2833 = fmul fast float %2831, %62
  %2834 = call float @dx.op.unary.f32(i32 7, float %2832)  ; Saturate(value)
  %2835 = call float @dx.op.unary.f32(i32 7, float %2833)  ; Saturate(value)
  %2836 = select i1 %911, i32 2, i32 0
  %2837 = or i32 %2836, 1
  %2838 = uitofp i32 %2837 to float
  %2839 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %2834, float %2835, float %2838, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2840 = extractvalue %dx.types.ResRet.f32 %2839, 0
  %2841 = extractvalue %dx.types.ResRet.f32 %2839, 1
  %2842 = extractvalue %dx.types.ResRet.f32 %2839, 2
  %2843 = extractvalue %dx.types.ResRet.f32 %2839, 3
  %2844 = add nuw nsw i32 %2836, 2
  %2845 = uitofp i32 %2844 to float
  %2846 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %2834, float %2835, float %2845, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2847 = extractvalue %dx.types.ResRet.f32 %2846, 0
  %2848 = extractvalue %dx.types.ResRet.f32 %2846, 1
  %2849 = extractvalue %dx.types.ResRet.f32 %2846, 2
  %2850 = extractvalue %dx.types.ResRet.f32 %2846, 3
  %2851 = call float @dx.op.binary.f32(i32 35, float %2841, float %2842)  ; FMax(a,b)
  %2852 = call float @dx.op.binary.f32(i32 35, float %2840, float %2851)  ; FMax(a,b)
  %2853 = call float @dx.op.binary.f32(i32 35, float %2852, float %2843)  ; FMax(a,b)
  %2854 = call float @dx.op.binary.f32(i32 36, float %2848, float %2849)  ; FMin(a,b)
  %2855 = call float @dx.op.binary.f32(i32 36, float %2847, float %2854)  ; FMin(a,b)
  %2856 = call float @dx.op.binary.f32(i32 36, float %2855, float %2850)  ; FMin(a,b)
  %2857 = fmul fast float %2853, 2.550000e+02
  %2858 = fadd fast float %2857, 0x3F70101020000000
  %2859 = fptoui float %2858 to i32
  %2860 = fmul fast float %2856, 2.550000e+02
  %2861 = fadd fast float %2860, 0x3F70101020000000
  %2862 = fptoui float %2861 to i32
  %2863 = icmp ult i32 %2859, %2862
  br i1 %2863, label %2864, label %2910

; <label>:2864                                    ; preds = %2821
  %2865 = fcmp fast ogt float %53, 9.843750e-01
  %2866 = fadd fast float %1758, -4.000000e+00
  %2867 = select i1 %2865, float -4.000000e+00, float %2866
  %2868 = call float @dx.op.binary.f32(i32 35, float %2867, float 0.000000e+00)  ; FMax(a,b)
  %2869 = fadd fast float %1076, %2868
  %2870 = fmul fast float %2869, %1077
  %2871 = call float @dx.op.unary.f32(i32 23, float %2870)  ; Log(value)
  %2872 = fmul fast float %1078, %2871
  %2873 = fmul fast float %2872, %1086
  %2874 = call float @dx.op.unary.f32(i32 7, float %2873)  ; Saturate(value)
  %2875 = uitofp i32 %2859 to float
  %2876 = uitofp i32 %2862 to float
  %2877 = fadd fast float %2875, 5.000000e-01
  %2878 = fadd fast float %2876, 5.000000e-01
  %2879 = fmul fast float %1086, %2877
  %2880 = fmul fast float %1086, %2878
  %2881 = fadd fast float %2879, 0x3F0FFB4800000000
  %2882 = fadd fast float %2880, 0xBF0FFB4800000000
  %2883 = call float @dx.op.binary.f32(i32 35, float %2874, float %2881)  ; FMax(a,b)
  %2884 = call float @dx.op.binary.f32(i32 36, float %2883, float %2882)  ; FMin(a,b)
  %2885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %2886 = extractvalue %dx.types.CBufRet.f32 %2885, 1
  %2887 = extractvalue %dx.types.CBufRet.f32 %2885, 2
  %2888 = extractvalue %dx.types.CBufRet.f32 %2885, 0
  %2889 = select i1 %911, float %2888, float 0.000000e+00
  %2890 = fmul fast float %2886, %2884
  %2891 = fadd fast float %2889, %2890
  %2892 = fadd fast float %2889, %2887
  %2893 = fsub fast float %2886, %2887
  %2894 = fadd fast float %2893, %2889
  %2895 = call float @dx.op.binary.f32(i32 35, float %2891, float %2892)  ; FMax(a,b)
  %2896 = call float @dx.op.binary.f32(i32 36, float %2895, float %2894)  ; FMin(a,b)
  %2897 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %2834, float %2835, float %2896, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2898 = extractvalue %dx.types.ResRet.f32 %2897, 0
  %2899 = extractvalue %dx.types.ResRet.f32 %2897, 1
  %2900 = extractvalue %dx.types.ResRet.f32 %2897, 2
  %2901 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %2834, float %2835, float %2896, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2902 = extractvalue %dx.types.ResRet.f32 %2901, 0
  %2903 = extractvalue %dx.types.ResRet.f32 %2901, 1
  %2904 = extractvalue %dx.types.ResRet.f32 %2901, 2
  %2905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2906 = extractvalue %dx.types.CBufRet.f32 %2905, 1
  %2907 = fmul fast float %2906, %2902
  %2908 = fmul fast float %2906, %2903
  %2909 = fmul fast float %2906, %2904
  br label %2910

; <label>:2910                                    ; preds = %2864, %2821
  %2911 = phi float [ %2898, %2864 ], [ 1.000000e+00, %2821 ]
  %2912 = phi float [ %2899, %2864 ], [ 1.000000e+00, %2821 ]
  %2913 = phi float [ %2900, %2864 ], [ 1.000000e+00, %2821 ]
  %2914 = phi float [ %2907, %2864 ], [ 0.000000e+00, %2821 ]
  %2915 = phi float [ %2908, %2864 ], [ 0.000000e+00, %2821 ]
  %2916 = phi float [ %2909, %2864 ], [ 0.000000e+00, %2821 ]
  %2917 = fmul fast float %2914, %1502
  %2918 = fmul fast float %2915, %1502
  %2919 = fmul fast float %2916, %1502
  %2920 = fmul fast float %2911, %2828
  %2921 = call float @dx.op.dot3.f32(i32 55, float %2911, float %2912, float %2913, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2922 = call float @dx.op.dot3.f32(i32 55, float %2917, float %2918, float %2919, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2923 = select i1 %131, float %2921, float %2911
  %2924 = select i1 %131, float %2921, float %2912
  %2925 = select i1 %131, float 1.000000e+00, float %2913
  %2926 = select i1 %131, float %2922, float %2917
  %2927 = select i1 %131, float 0.000000e+00, float %2918
  %2928 = select i1 %131, float 0.000000e+00, float %2919
  %2929 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2930 = extractvalue %dx.types.CBufRet.i32 %2929, 3
  %2931 = and i32 %2930, 3
  %2932 = icmp ne i32 %2931, 0
  %2933 = and i32 %2930, 4
  %2934 = icmp ne i32 %2933, 0
  %2935 = and i1 %2932, %2934
  %2936 = and i1 %131, %2935
  br i1 %2936, label %2937, label %2943

; <label>:2937                                    ; preds = %2910
  %2938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2939 = extractvalue %dx.types.CBufRet.f32 %2938, 1
  %2940 = fadd fast float %2920, -1.000000e+00
  %2941 = fmul fast float %2939, %2940
  %2942 = fadd fast float %2941, 1.000000e+00
  br label %2943

; <label>:2943                                    ; preds = %2937, %2910
  %2944 = phi float [ %2942, %2937 ], [ %2920, %2910 ]
  %2945 = fadd fast float %2825, %2822
  %2946 = fmul fast float %2923, %2945
  %2947 = fadd fast float %2946, %2926
  %2948 = fadd fast float %2826, %2823
  %2949 = fmul fast float %2924, %2948
  %2950 = fadd fast float %2949, %2927
  %2951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2952 = extractvalue %dx.types.CBufRet.f32 %2951, 0
  br i1 %131, label %2953, label %2975

; <label>:2953                                    ; preds = %2943
  %2954 = fadd fast float %2947, %2950
  %2955 = fmul fast float %2952, %2954
  %2956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %2957 = extractvalue %dx.types.CBufRet.f32 %2956, 3
  %2958 = extractvalue %dx.types.CBufRet.f32 %1507, 1
  %2959 = fsub fast float %1510, %2958
  %2960 = extractvalue %dx.types.CBufRet.f32 %1507, 2
  %2961 = fmul fast float %2959, %2960
  %2962 = call float @dx.op.unary.f32(i32 7, float %2961)  ; Saturate(value)
  %2963 = fsub fast float %2962, %2957
  %2964 = fmul fast float %2963, %2944
  %2965 = fadd fast float %2964, %2957
  %2966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2967 = extractvalue %dx.types.CBufRet.f32 %2966, 0
  %2968 = fsub fast float %2965, %2967
  %2969 = fmul fast float %2968, 1.000000e+01
  %2970 = call float @dx.op.unary.f32(i32 7, float %2969)  ; Saturate(value)
  %2971 = fsub fast float %887, %1502
  %2972 = fmul fast float %2970, %2971
  %2973 = fadd fast float %2972, %1502
  %2974 = fmul fast float %2973, %2965
  br label %2987

; <label>:2975                                    ; preds = %2943
  %2976 = fadd fast float %2827, %2824
  %2977 = fmul fast float %2925, %2976
  %2978 = fadd fast float %2977, %2928
  %2979 = fmul fast float %2952, %2947
  %2980 = fmul fast float %2952, %2950
  %2981 = fmul fast float %2952, %2978
  %2982 = call float @dx.op.binary.f32(i32 35, float %2980, float %2981)  ; FMax(a,b)
  %2983 = call float @dx.op.binary.f32(i32 35, float %2979, float %2982)  ; FMax(a,b)
  %2984 = call float @dx.op.binary.f32(i32 35, float %2983, float %1502)  ; FMax(a,b)
  %2985 = fcmp fast ugt float %2984, 0x3F10000000000000
  br i1 %2985, label %2987, label %2986

; <label>:2986                                    ; preds = %2975
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %2987

; <label>:2987                                    ; preds = %2986, %2975, %2953
  %2988 = phi float [ %2955, %2953 ], [ %2979, %2986 ], [ %2979, %2975 ]
  %2989 = phi float [ %2974, %2953 ], [ %2980, %2986 ], [ %2980, %2975 ]
  %2990 = phi float [ %2973, %2953 ], [ %2981, %2986 ], [ %2981, %2975 ]
  %2991 = phi float [ %2973, %2953 ], [ %1502, %2986 ], [ %1502, %2975 ]
  %2992 = fadd fast float %594, 0x3FE3C6EF40000000
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
  %3003 = fadd fast float %594, 0x3FF3C6EF40000000
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
  %3014 = fadd fast float %594, 0x3FFDAA66E0000000
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

