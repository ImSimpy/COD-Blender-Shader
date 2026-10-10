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
; shader hash: 21f0b116a08c74638803da133123c574
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
  %195 = add i32 %31, 72
  %196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %195, i32 undef)  ; BufferLoad(srv,index,wot)
  %197 = extractvalue %dx.types.ResRet.i32 %196, 0
  %198 = extractvalue %dx.types.ResRet.i32 %196, 1
  %199 = bitcast i32 %197 to float
  %200 = bitcast i32 %198 to float
  %201 = fmul fast float %199, %50
  %202 = fmul fast float %200, %51
  %203 = call float @dx.op.unary.f32(i32 22, float %201)  ; Frc(value)
  %204 = call float @dx.op.unary.f32(i32 22, float %202)  ; Frc(value)
  %205 = and i32 %156, 16
  %206 = icmp ne i32 %205, 0
  %207 = select i1 %206, float 1.000000e+00, float %55
  %208 = add i32 %31, 132
  %209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %208, i32 undef)  ; BufferLoad(srv,index,wot)
  %210 = extractvalue %dx.types.ResRet.i32 %209, 0
  %211 = add i32 %210, 0
  %212 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %211, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %214 = extractvalue %dx.types.CBufRet.f32 %213, 2
  %215 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %212, %dx.types.Handle %63, float %193, float %194, float undef, float undef, i32 0, i32 0, i32 undef, float %214, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %216 = extractvalue %dx.types.ResRet.f32 %215, 0
  %217 = fmul fast float %216, %207
  %218 = icmp eq i32 %205, 0
  br i1 %218, label %238, label %219, !dx.controlflow.hints !69

; <label>:219                                     ; preds = %192
  %220 = add i32 %153, 64
  %221 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %220, i32 undef)  ; BufferLoad(srv,index,wot)
  %222 = extractvalue %dx.types.ResRet.f32 %221, 0
  %223 = fadd fast float %222, 1.000000e+00
  %224 = fmul fast float %223, %55
  %225 = fsub fast float %224, %222
  %226 = fsub fast float %223, %225
  %227 = call float @dx.op.unary.f32(i32 7, float %226)  ; Saturate(value)
  %228 = fsub fast float 1.000000e+00, %224
  %229 = call float @dx.op.unary.f32(i32 7, float %228)  ; Saturate(value)
  %230 = fsub fast float %227, %229
  %231 = fsub fast float %217, %229
  %232 = fdiv fast float %231, %230
  %233 = call float @dx.op.unary.f32(i32 7, float %232)  ; Saturate(value)
  %234 = fmul fast float %233, 2.000000e+00
  %235 = fsub fast float 3.000000e+00, %234
  %236 = fmul fast float %233, %233
  %237 = fmul fast float %236, %235
  br label %238

; <label>:238                                     ; preds = %219, %192
  %239 = phi float [ %237, %219 ], [ %217, %192 ]
  %240 = fcmp fast ogt float %239, 0.000000e+00
  br i1 %240, label %242, label %241

; <label>:241                                     ; preds = %238
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %242

; <label>:242                                     ; preds = %241, %238
  %243 = call float @dx.op.unary.f32(i32 7, float %239)  ; Saturate(value)
  %244 = fmul fast float %66, 5.000000e-01
  %245 = fmul fast float %67, 5.000000e-01
  %246 = fptosi float %244 to i32
  %247 = fptosi float %245 to i32
  %248 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %246, i32 %247, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %249 = extractvalue %dx.types.ResRet.i32 %248, 0
  %250 = lshr i32 %249, 18
  %251 = uitofp i32 %250 to float
  %252 = fmul fast float %251, 0x3F4C00EBA0000000
  %253 = call float @dx.op.unary.f32(i32 21, float %252)  ; Exp(value)
  %254 = fadd fast float %253, -1.000000e+00
  %255 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %256 = extractvalue %dx.types.Dimensions %255, 0
  %257 = sitofp i32 %256 to float
  %258 = extractvalue %dx.types.Dimensions %255, 1
  %259 = sitofp i32 %258 to float
  %260 = fcmp fast oge float %244, %257
  %261 = fcmp fast oge float %245, %259
  %262 = or i1 %260, %261
  %263 = select i1 %262, float 0x4197782600000000, float %254
  %264 = fsub fast float %263, %59
  %265 = fcmp fast ogt float %264, 0.000000e+00
  %266 = and i32 %152, -2
  %267 = icmp eq i32 %266, 2
  %268 = and i1 %267, %265
  %269 = xor i1 %265, true
  %270 = icmp eq i32 %152, 1
  %271 = and i1 %270, %269
  %272 = or i1 %268, %271
  %273 = and i32 %156, 262144
  %274 = icmp ne i32 %273, 0
  %275 = and i1 %274, %272
  %276 = xor i1 %272, true
  %277 = and i32 %156, 131072
  %278 = icmp ne i32 %277, 0
  %279 = and i1 %278, %276
  %280 = or i1 %275, %279
  br i1 %280, label %281, label %282

; <label>:281                                     ; preds = %242
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %282

; <label>:282                                     ; preds = %281, %242
  %283 = and i32 %156, 32
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %562, label %285, !dx.controlflow.hints !70

; <label>:285                                     ; preds = %282
  %286 = add i32 %153, 80
  %287 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.f32 %287, 0
  %289 = extractvalue %dx.types.ResRet.f32 %287, 1
  %290 = extractvalue %dx.types.ResRet.f32 %287, 2
  %291 = extractvalue %dx.types.ResRet.f32 %287, 3
  %292 = add i32 %153, 96
  %293 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.f32 %293, 0
  %295 = extractvalue %dx.types.ResRet.f32 %293, 1
  %296 = extractvalue %dx.types.ResRet.f32 %293, 2
  %297 = add i32 %153, 112
  %298 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.f32 %298, 0
  %300 = extractvalue %dx.types.ResRet.f32 %298, 1
  %301 = extractvalue %dx.types.ResRet.f32 %298, 2
  %302 = extractvalue %dx.types.ResRet.f32 %298, 3
  %303 = add i32 %153, 128
  %304 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.f32 %304, 0
  %306 = extractvalue %dx.types.ResRet.f32 %304, 1
  %307 = extractvalue %dx.types.ResRet.f32 %304, 2
  %308 = extractvalue %dx.types.ResRet.f32 %304, 3
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %154, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = and i32 %310, 4096
  %312 = icmp ne i32 %311, 0
  %313 = fcmp fast une float %296, 0.000000e+00
  %314 = and i32 %310, 64
  %315 = icmp ne i32 %314, 0
  %316 = and i32 %310, 128
  %317 = icmp eq i32 %316, 0
  %318 = and i32 %310, 2048
  %319 = icmp eq i32 %318, 0
  %320 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %14, i32 0)  ; GetDimensions(handle,mipLevel)
  %321 = extractvalue %dx.types.Dimensions %320, 0
  %322 = sitofp i32 %321 to float
  %323 = extractvalue %dx.types.Dimensions %320, 1
  %324 = sitofp i32 %323 to float
  %325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %326 = extractvalue %dx.types.CBufRet.f32 %325, 2
  %327 = extractvalue %dx.types.CBufRet.f32 %325, 3
  %328 = fmul fast float %326, %66
  %329 = fmul fast float %327, %67
  %330 = fmul fast float %328, %322
  %331 = fmul fast float %329, %324
  %332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %333 = extractvalue %dx.types.CBufRet.f32 %332, 1
  %334 = fsub fast float -0.000000e+00, %333
  %335 = fptoui float %334 to i32
  %336 = fptoui float %330 to i32
  %337 = fptoui float %331 to i32
  %338 = and i32 %335, 31
  %339 = lshr i32 %336, %338
  %340 = lshr i32 %337, %338
  %341 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 %335, i32 %339, i32 %340, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %342 = extractvalue %dx.types.ResRet.f32 %341, 0
  %343 = fcmp fast ogt float %342, -1.000000e+00
  %344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %345 = extractvalue %dx.types.CBufRet.f32 %344, 1
  %346 = select i1 %343, float %345, float 1.000000e+00
  %347 = fadd fast float %342, 1.000000e+00
  %348 = fmul fast float %346, %347
  %349 = call float @dx.op.unary.f32(i32 6, float %348)  ; FAbs(value)
  %350 = extractvalue %dx.types.CBufRet.f32 %344, 3
  %351 = fcmp fast oge float %349, %350
  %352 = select i1 %351, float 0x4197782600000000, float %349
  br i1 %319, label %442, label %353, !dx.controlflow.hints !71

; <label>:353                                     ; preds = %285
  %354 = fmul fast float %71, %326
  %355 = fmul fast float %73, %327
  %356 = fsub fast float 1.000000e+00, %354
  %357 = fsub fast float 1.000000e+00, %355
  %358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %359 = extractvalue %dx.types.CBufRet.f32 %358, 0
  %360 = extractvalue %dx.types.CBufRet.f32 %358, 1
  %361 = extractvalue %dx.types.CBufRet.f32 %358, 2
  %362 = fmul fast float %356, %359
  %363 = fmul fast float %356, %360
  %364 = fmul fast float %356, %361
  %365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %366 = extractvalue %dx.types.CBufRet.f32 %365, 0
  %367 = extractvalue %dx.types.CBufRet.f32 %365, 1
  %368 = extractvalue %dx.types.CBufRet.f32 %365, 2
  %369 = fmul fast float %357, %366
  %370 = fmul fast float %357, %367
  %371 = fmul fast float %357, %368
  %372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %373 = extractvalue %dx.types.CBufRet.f32 %372, 0
  %374 = extractvalue %dx.types.CBufRet.f32 %372, 1
  %375 = extractvalue %dx.types.CBufRet.f32 %372, 2
  %376 = fadd fast float %369, %373
  %377 = fadd fast float %376, %362
  %378 = fadd fast float %370, %374
  %379 = fadd fast float %378, %363
  %380 = fadd fast float %371, %375
  %381 = fadd fast float %380, %364
  %382 = fmul fast float %377, %352
  %383 = fmul fast float %379, %352
  %384 = fmul fast float %381, %352
  %385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %386 = extractvalue %dx.types.CBufRet.f32 %385, 0
  %387 = extractvalue %dx.types.CBufRet.f32 %385, 1
  %388 = extractvalue %dx.types.CBufRet.f32 %385, 2
  %389 = fsub fast float %386, %32
  %390 = fadd fast float %389, %382
  %391 = fsub fast float %387, %33
  %392 = fadd fast float %391, %383
  %393 = fsub fast float %388, %34
  %394 = fadd fast float %393, %384
  %395 = fmul fast float %35, %35
  %396 = call float @dx.op.dot3.f32(i32 55, float %390, float %392, float %394, float %390, float %392, float %394)  ; Dot3(ax,ay,az,bx,by,bz)
  %397 = fsub fast float %395, %396
  %398 = fmul fast float %295, %395
  %399 = fmul fast float %294, %395
  %400 = fcmp fast olt float %397, %398
  %401 = fcmp fast ogt float %397, %399
  %402 = or i1 %400, %401
  %403 = select i1 %402, float 0.000000e+00, float %397
  %404 = fsub fast float %294, %295
  %405 = fmul fast float %404, %395
  %406 = fsub fast float %403, %398
  %407 = fdiv fast float %406, %405
  %408 = call float @dx.op.unary.f32(i32 7, float %407)  ; Saturate(value)
  %409 = fmul fast float %408, 2.000000e+00
  %410 = fsub fast float 3.000000e+00, %409
  %411 = fmul fast float %408, %408
  %412 = fmul fast float %411, %410
  %413 = fmul fast float %299, %52
  %414 = fmul fast float %300, %53
  %415 = fmul fast float %301, %54
  %416 = fsub fast float %413, %305
  %417 = fsub fast float %414, %306
  %418 = fsub fast float %415, %307
  %419 = fsub fast float %302, %308
  %420 = fmul fast float %412, %416
  %421 = fmul fast float %412, %417
  %422 = fmul fast float %412, %418
  %423 = fmul fast float %412, %419
  %424 = fadd fast float %420, %305
  %425 = fadd fast float %421, %306
  %426 = fadd fast float %422, %307
  %427 = fadd fast float %423, %308
  %428 = fmul fast float %299, %36
  %429 = fmul fast float %300, %37
  %430 = fmul fast float %301, %38
  %431 = fsub fast float %428, %305
  %432 = fsub fast float %429, %306
  %433 = fsub fast float %430, %307
  %434 = fmul fast float %412, %431
  %435 = fmul fast float %412, %432
  %436 = fmul fast float %412, %433
  %437 = fadd fast float %434, %305
  %438 = fadd fast float %435, %306
  %439 = fadd fast float %436, %307
  %440 = fmul fast float %288, %288
  %441 = fmul fast float %440, %403
  br label %549

; <label>:442                                     ; preds = %285
  %443 = and i32 %310, 256
  %444 = icmp eq i32 %443, 0
  %445 = fsub fast float %352, %59
  br i1 %444, label %506, label %446

; <label>:446                                     ; preds = %442
  %447 = fadd fast float %294, %59
  %448 = fcmp fast olt float %352, %59
  %449 = fcmp fast ogt float %352, %447
  %450 = or i1 %448, %449
  %451 = select i1 %450, float 0.000000e+00, float %445
  %452 = call float @dx.op.unary.f32(i32 83, float %352)  ; DerivCoarseX(value)
  %453 = call float @dx.op.unary.f32(i32 84, float %352)  ; DerivCoarseY(value)
  %454 = fmul fast float %452, %452
  %455 = fmul fast float %453, %453
  %456 = fadd fast float %455, %454
  %457 = call float @dx.op.unary.f32(i32 24, float %456)  ; Sqrt(value)
  %458 = extractvalue %dx.types.CBufRet.f32 %332, 2
  %459 = fmul fast float %458, %457
  %460 = call float @dx.op.unary.f32(i32 7, float %459)  ; Saturate(value)
  %461 = fmul fast float %460, %295
  %462 = fdiv fast float %445, %461
  %463 = call float @dx.op.unary.f32(i32 7, float %462)  ; Saturate(value)
  %464 = fmul fast float %463, 2.000000e+00
  %465 = fsub fast float 3.000000e+00, %464
  %466 = fmul fast float %463, %463
  %467 = fmul fast float %466, %465
  %468 = fsub fast float %352, %447
  %469 = fadd fast float %468, %461
  %470 = fdiv fast float %469, %461
  %471 = call float @dx.op.unary.f32(i32 7, float %470)  ; Saturate(value)
  %472 = fmul fast float %471, 2.000000e+00
  %473 = fsub fast float 3.000000e+00, %472
  %474 = fmul fast float %471, %471
  %475 = fmul fast float %474, %473
  %476 = fsub fast float %467, %475
  %477 = fmul fast float %299, %52
  %478 = fmul fast float %300, %53
  %479 = fmul fast float %301, %54
  %480 = fsub fast float %477, %305
  %481 = fsub fast float %478, %306
  %482 = fsub fast float %479, %307
  %483 = fsub fast float %302, %308
  %484 = fmul fast float %476, %480
  %485 = fmul fast float %476, %481
  %486 = fmul fast float %476, %482
  %487 = fmul fast float %476, %483
  %488 = fadd fast float %484, %305
  %489 = fadd fast float %485, %306
  %490 = fadd fast float %486, %307
  %491 = fadd fast float %487, %308
  %492 = fmul fast float %299, %36
  %493 = fmul fast float %300, %37
  %494 = fmul fast float %301, %38
  %495 = fsub fast float %492, %305
  %496 = fsub fast float %493, %306
  %497 = fsub fast float %494, %307
  %498 = fmul fast float %476, %495
  %499 = fmul fast float %476, %496
  %500 = fmul fast float %476, %497
  %501 = fadd fast float %498, %305
  %502 = fadd fast float %499, %306
  %503 = fadd fast float %500, %307
  %504 = fmul fast float %451, %288
  %505 = call float @dx.op.unary.f32(i32 6, float %504)  ; FAbs(value)
  br label %549

; <label>:506                                     ; preds = %442
  br i1 %313, label %507, label %520

; <label>:507                                     ; preds = %506
  %508 = fdiv fast float 5.000000e+01, %35
  %509 = select i1 %315, float %508, float 1.000000e+00
  %510 = fmul fast float %509, %288
  %511 = fmul fast float %203, 2.000000e+00
  %512 = fmul fast float %204, 2.000000e+00
  %513 = fadd fast float %511, -1.000000e+00
  %514 = fadd fast float %512, -1.000000e+00
  %515 = call float @dx.op.dot2.f32(i32 54, float %513, float %514, float %513, float %514)  ; Dot2(ax,ay,bx,by)
  %516 = fmul fast float %296, %35
  %517 = fmul fast float %516, %515
  %518 = fsub fast float %445, %517
  %519 = fmul fast float %510, %518
  br label %549

; <label>:520                                     ; preds = %506
  br i1 %317, label %541, label %521

; <label>:521                                     ; preds = %520
  %522 = fmul fast float %35, 0x3F947AE140000000
  %523 = select i1 %315, float %522, float 1.000000e+00
  %524 = fdiv fast float 1.000000e+00, %523
  %525 = fmul fast float %523, %289
  %526 = fmul fast float %523, %290
  %527 = fmul fast float %524, %291
  %528 = call float @dx.op.unary.f32(i32 6, float %445)  ; FAbs(value)
  %529 = fcmp fast olt float %528, %525
  br i1 %529, label %530, label %534, !dx.controlflow.hints !72

; <label>:530                                     ; preds = %521
  %531 = fmul fast float %524, %288
  %532 = fmul fast float %531, %528
  %533 = call float @dx.op.unary.f32(i32 6, float %532)  ; FAbs(value)
  br label %549

; <label>:534                                     ; preds = %521
  %535 = fcmp fast ogt float %528, %526
  br i1 %535, label %536, label %549

; <label>:536                                     ; preds = %534
  %537 = fsub fast float %528, %526
  %538 = fmul fast float %527, %537
  %539 = call float @dx.op.unary.f32(i32 6, float %538)  ; FAbs(value)
  %540 = fsub fast float 1.000000e+00, %539
  br label %549

; <label>:541                                     ; preds = %520
  %542 = fdiv fast float 5.000000e+01, %35
  %543 = select i1 %315, float %542, float 1.000000e+00
  %544 = fmul fast float %543, %288
  %545 = call float @dx.op.unary.f32(i32 6, float %264)  ; FAbs(value)
  %546 = select i1 %312, float %545, float 0x47EFFFFFE0000000
  %547 = call float @dx.op.binary.f32(i32 36, float %445, float %546)  ; FMin(a,b)
  %548 = fmul fast float %544, %547
  br label %549

; <label>:549                                     ; preds = %541, %536, %534, %530, %507, %446, %353
  %550 = phi float [ %441, %353 ], [ %505, %446 ], [ %519, %507 ], [ %548, %541 ], [ %533, %530 ], [ %540, %536 ], [ %528, %534 ]
  %551 = phi float [ %437, %353 ], [ %501, %446 ], [ %36, %507 ], [ %36, %541 ], [ %36, %530 ], [ %36, %536 ], [ %36, %534 ]
  %552 = phi float [ %438, %353 ], [ %502, %446 ], [ %37, %507 ], [ %37, %541 ], [ %37, %530 ], [ %37, %536 ], [ %37, %534 ]
  %553 = phi float [ %439, %353 ], [ %503, %446 ], [ %38, %507 ], [ %38, %541 ], [ %38, %530 ], [ %38, %536 ], [ %38, %534 ]
  %554 = phi float [ %424, %353 ], [ %488, %446 ], [ %52, %507 ], [ %52, %541 ], [ %52, %530 ], [ %52, %536 ], [ %52, %534 ]
  %555 = phi float [ %425, %353 ], [ %489, %446 ], [ %53, %507 ], [ %53, %541 ], [ %53, %530 ], [ %53, %536 ], [ %53, %534 ]
  %556 = phi float [ %426, %353 ], [ %490, %446 ], [ %54, %507 ], [ %54, %541 ], [ %54, %530 ], [ %54, %536 ], [ %54, %534 ]
  %557 = phi float [ %427, %353 ], [ %491, %446 ], [ 1.000000e+00, %507 ], [ 1.000000e+00, %541 ], [ 1.000000e+00, %530 ], [ 1.000000e+00, %536 ], [ 1.000000e+00, %534 ]
  %558 = call float @dx.op.unary.f32(i32 7, float %550)  ; Saturate(value)
  %559 = fmul fast float %558, %55
  %560 = fmul fast float %557, %243
  %561 = fmul fast float %560, %558
  br label %562

; <label>:562                                     ; preds = %549, %282
  %563 = phi float [ %554, %549 ], [ %52, %282 ]
  %564 = phi float [ %555, %549 ], [ %53, %282 ]
  %565 = phi float [ %556, %549 ], [ %54, %282 ]
  %566 = phi float [ %561, %549 ], [ %243, %282 ]
  %567 = phi float [ %559, %549 ], [ %55, %282 ]
  %568 = phi float [ %551, %549 ], [ %36, %282 ]
  %569 = phi float [ %552, %549 ], [ %37, %282 ]
  %570 = phi float [ %553, %549 ], [ %38, %282 ]
  %571 = fmul fast float %568, %39
  %572 = fmul fast float %569, %39
  %573 = fmul fast float %570, %39
  %574 = fmul fast float %568, %49
  %575 = fmul fast float %569, %49
  %576 = fmul fast float %570, %49
  %577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %578 = extractvalue %dx.types.CBufRet.f32 %577, 2
  %579 = fptosi float %59 to i32
  %580 = sitofp i32 %579 to float
  %581 = fadd fast float %578, %580
  %582 = fmul fast float %581, 0x3FE3C6EF40000000
  %583 = frem fast float %66, 2.560000e+02
  %584 = frem fast float %67, 2.560000e+02
  %585 = fptoui float %583 to i32
  %586 = fptoui float %584 to i32
  %587 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %585, i32 %586, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %588 = extractvalue %dx.types.ResRet.f32 %587, 0
  %589 = fadd fast float %588, %582
  %590 = call float @dx.op.unary.f32(i32 22, float %589)  ; Frc(value)
  %591 = and i32 %156, 1
  %592 = icmp eq i32 %591, 0
  br i1 %592, label %653, label %593, !dx.controlflow.hints !73

; <label>:593                                     ; preds = %562
  %594 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %153, i32 undef)  ; BufferLoad(srv,index,wot)
  %595 = extractvalue %dx.types.ResRet.f32 %594, 2
  %596 = extractvalue %dx.types.ResRet.f32 %594, 3
  %597 = add i32 %153, 16
  %598 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %597, i32 undef)  ; BufferLoad(srv,index,wot)
  %599 = extractvalue %dx.types.ResRet.f32 %598, 0
  %600 = extractvalue %dx.types.ResRet.f32 %598, 1
  %601 = extractvalue %dx.types.ResRet.f32 %598, 2
  %602 = add i32 %153, 32
  %603 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %602, i32 undef)  ; BufferLoad(srv,index,wot)
  %604 = extractvalue %dx.types.ResRet.f32 %603, 0
  %605 = extractvalue %dx.types.ResRet.f32 %603, 1
  %606 = extractvalue %dx.types.ResRet.f32 %603, 2
  %607 = and i32 %156, 2
  %608 = icmp eq i32 %607, 0
  %609 = call float @dx.op.dot3.f32(i32 55, float %46, float %47, float %48, float %46, float %47, float %48)  ; Dot3(ax,ay,az,bx,by,bz)
  %610 = call float @dx.op.unary.f32(i32 25, float %609)  ; Rsqrt(value)
  %611 = fmul fast float %610, %46
  %612 = fmul fast float %610, %47
  %613 = fmul fast float %610, %48
  %614 = call float @dx.op.dot3.f32(i32 55, float %101, float %102, float %103, float %101, float %102, float %103)  ; Dot3(ax,ay,az,bx,by,bz)
  %615 = call float @dx.op.unary.f32(i32 25, float %614)  ; Rsqrt(value)
  %616 = fmul fast float %615, %101
  %617 = fmul fast float %615, %102
  %618 = fmul fast float %615, %103
  %619 = call float @dx.op.dot3.f32(i32 55, float %616, float %617, float %618, float %611, float %612, float %613)  ; Dot3(ax,ay,az,bx,by,bz)
  %620 = fmul fast float %619, %619
  %621 = fmul fast float %620, %595
  %622 = fadd fast float %621, %596
  %623 = call float @dx.op.unary.f32(i32 7, float %622)  ; Saturate(value)
  br i1 %608, label %624, label %634, !dx.controlflow.hints !74

; <label>:624                                     ; preds = %593
  %625 = extractvalue %dx.types.ResRet.f32 %594, 1
  %626 = extractvalue %dx.types.ResRet.f32 %594, 0
  %627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %628 = extractvalue %dx.types.CBufRet.f32 %627, 3
  %629 = fmul fast float %628, %614
  %630 = fsub fast float %626, %629
  %631 = fmul fast float %630, %625
  %632 = call float @dx.op.unary.f32(i32 7, float %631)  ; Saturate(value)
  %633 = fmul fast float %632, %623
  br label %634

; <label>:634                                     ; preds = %624, %593
  %635 = phi float [ %633, %624 ], [ %623, %593 ]
  %636 = fsub fast float %599, %604
  %637 = fsub fast float %600, %605
  %638 = fsub fast float %601, %606
  %639 = fmul fast float %635, %636
  %640 = fmul fast float %635, %637
  %641 = fmul fast float %635, %638
  %642 = fadd fast float %639, %604
  %643 = fadd fast float %640, %605
  %644 = fadd fast float %641, %606
  %645 = fmul fast float %642, %563
  %646 = fmul fast float %643, %564
  %647 = fmul fast float %644, %565
  %648 = fmul fast float %642, %571
  %649 = fmul fast float %643, %572
  %650 = fmul fast float %644, %573
  %651 = fmul fast float %635, %566
  %652 = fmul fast float %635, %567
  br label %653

; <label>:653                                     ; preds = %634, %562
  %654 = phi float [ %645, %634 ], [ %563, %562 ]
  %655 = phi float [ %646, %634 ], [ %564, %562 ]
  %656 = phi float [ %647, %634 ], [ %565, %562 ]
  %657 = phi float [ %651, %634 ], [ %566, %562 ]
  %658 = phi float [ %652, %634 ], [ %567, %562 ]
  %659 = phi float [ %648, %634 ], [ %571, %562 ]
  %660 = phi float [ %649, %634 ], [ %572, %562 ]
  %661 = phi float [ %650, %634 ], [ %573, %562 ]
  %662 = add i32 %31, 120
  %663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %662, i32 undef)  ; BufferLoad(srv,index,wot)
  %664 = extractvalue %dx.types.ResRet.i32 %663, 0
  %665 = add i32 %664, 0
  %666 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %665, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %667 = add i32 %31, 24
  %668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %667, i32 undef)  ; BufferLoad(srv,index,wot)
  %669 = extractvalue %dx.types.ResRet.i32 %668, 0
  %670 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %666, %dx.types.Handle %62, float %193, float %194, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %671 = extractvalue %dx.types.ResRet.f32 %670, 0
  %672 = extractvalue %dx.types.ResRet.f32 %670, 1
  %673 = extractvalue %dx.types.ResRet.f32 %670, 2
  %674 = extractvalue %dx.types.ResRet.f32 %670, 3
  %675 = and i32 %669, 255
  %676 = uitofp i32 %675 to float
  %677 = lshr i32 %669, 8
  %678 = and i32 %677, 255
  %679 = uitofp i32 %678 to float
  %680 = fmul fast float %674, %676
  %681 = fadd fast float %680, %679
  %682 = fmul fast float %681, 0x3F70101000000000
  %683 = add i32 %31, 56
  %684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %683, i32 undef)  ; BufferLoad(srv,index,wot)
  %685 = extractvalue %dx.types.ResRet.i32 %684, 0
  %686 = and i32 %685, 255
  %687 = uitofp i32 %686 to float
  %688 = fmul fast float %687, 0x3F70101020000000
  %689 = lshr i32 %685, 8
  %690 = and i32 %689, 255
  %691 = uitofp i32 %690 to float
  %692 = fmul fast float %691, 0x3F70101020000000
  %693 = lshr i32 %685, 16
  %694 = and i32 %693, 255
  %695 = uitofp i32 %694 to float
  %696 = fmul fast float %695, 0x3F70101020000000
  %697 = fmul fast float %671, %654
  %698 = fmul fast float %688, %688
  %699 = fmul fast float %698, %697
  %700 = fmul fast float %672, %655
  %701 = fmul fast float %692, %692
  %702 = fmul fast float %701, %700
  %703 = fmul fast float %673, %656
  %704 = fmul fast float %696, %696
  %705 = fmul fast float %704, %703
  %706 = add i32 %31, 28
  %707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %708 = extractvalue %dx.types.ResRet.i32 %707, 0
  %709 = add i32 %31, 124
  %710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %709, i32 undef)  ; BufferLoad(srv,index,wot)
  %711 = extractvalue %dx.types.ResRet.i32 %710, 0
  %712 = add i32 %711, 0
  %713 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %712, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %714 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %713, %dx.types.Handle %62, float %193, float %194, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %715 = extractvalue %dx.types.ResRet.f32 %714, 0
  %716 = extractvalue %dx.types.ResRet.f32 %714, 1
  %717 = extractvalue %dx.types.ResRet.f32 %714, 3
  %718 = and i32 %708, 255
  %719 = uitofp i32 %718 to float
  %720 = lshr i32 %708, 8
  %721 = and i32 %720, 255
  %722 = uitofp i32 %721 to float
  %723 = lshr i32 %708, 16
  %724 = and i32 %723, 255
  %725 = uitofp i32 %724 to float
  %726 = fmul fast float %725, 0x3F70101000000000
  %727 = fmul fast float %715, %719
  %728 = fadd fast float %727, %722
  %729 = fmul fast float %728, 0x3F70101000000000
  %730 = fadd fast float %716, -5.000000e-01
  %731 = fadd fast float %717, -5.000000e-01
  %732 = fmul fast float %730, %726
  %733 = fmul fast float %731, %726
  %734 = fadd fast float %732, 5.000000e-01
  %735 = fadd fast float %733, 5.000000e-01
  %736 = fmul fast float %734, 2.000000e+00
  %737 = fadd fast float %736, -1.000000e+00
  %738 = fmul fast float %735, 2.000000e+00
  %739 = fadd fast float %738, -1.000000e+00
  %740 = fadd fast float %737, %739
  %741 = fmul fast float %740, 5.000000e-01
  %742 = fsub fast float %737, %739
  %743 = fmul fast float %742, 5.000000e-01
  %744 = call float @dx.op.unary.f32(i32 6, float %741)  ; FAbs(value)
  %745 = fsub fast float 1.000000e+00, %744
  %746 = call float @dx.op.unary.f32(i32 6, float %743)  ; FAbs(value)
  %747 = fsub fast float %745, %746
  %748 = call float @dx.op.dot3.f32(i32 55, float %741, float %743, float %747, float %741, float %743, float %747)  ; Dot3(ax,ay,az,bx,by,bz)
  %749 = call float @dx.op.unary.f32(i32 25, float %748)  ; Rsqrt(value)
  %750 = fmul fast float %741, %749
  %751 = fmul fast float %743, %749
  %752 = add i32 %31, 128
  %753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %752, i32 undef)  ; BufferLoad(srv,index,wot)
  %754 = extractvalue %dx.types.ResRet.i32 %753, 0
  %755 = add i32 %754, 0
  %756 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %755, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %757 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %756, %dx.types.Handle %62, float %193, float %194, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %758 = extractvalue %dx.types.ResRet.f32 %757, 0
  %759 = extractvalue %dx.types.ResRet.f32 %757, 1
  %760 = extractvalue %dx.types.ResRet.f32 %757, 2
  %761 = add i32 %31, 44
  %762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %761, i32 undef)  ; BufferLoad(srv,index,wot)
  %763 = extractvalue %dx.types.ResRet.i32 %762, 0
  %764 = shl i32 %763, 4
  %765 = and i32 %764, 32752
  %766 = call float @dx.op.legacyF16ToF32(i32 131, i32 %765)  ; LegacyF16ToF32(value)
  %767 = lshr i32 %763, 7
  %768 = and i32 %767, 32752
  %769 = call float @dx.op.legacyF16ToF32(i32 131, i32 %768)  ; LegacyF16ToF32(value)
  %770 = lshr i32 %763, 22
  %771 = shl nuw nsw i32 %770, 5
  %772 = call float @dx.op.legacyF16ToF32(i32 131, i32 %771)  ; LegacyF16ToF32(value)
  %773 = fmul fast float %766, %758
  %774 = fmul fast float %769, %759
  %775 = fmul fast float %772, %760
  %776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %777 = extractvalue %dx.types.CBufRet.f32 %776, 0
  %778 = fmul fast float %773, %777
  %779 = fmul fast float %774, %777
  %780 = fmul fast float %775, %777
  %781 = add i32 %31, 48
  %782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %781, i32 undef)  ; BufferLoad(srv,index,wot)
  %783 = extractvalue %dx.types.ResRet.i32 %782, 0
  %784 = lshr i32 %783, 22
  %785 = shl nuw nsw i32 %784, 5
  %786 = call float @dx.op.legacyF16ToF32(i32 131, i32 %785)  ; LegacyF16ToF32(value)
  %787 = fmul fast float %786, %778
  %788 = select i1 %136, float %787, float %778
  %789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %790 = extractvalue %dx.types.CBufRet.f32 %789, 3
  %791 = fcmp fast ogt float %790, 0.000000e+00
  %792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %793 = extractvalue %dx.types.CBufRet.f32 %792, 1
  br i1 %791, label %794, label %819

; <label>:794                                     ; preds = %653
  %795 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %40, float %41, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %796 = extractvalue %dx.types.ResRet.f32 %795, 0
  %797 = extractvalue %dx.types.ResRet.f32 %795, 1
  %798 = extractvalue %dx.types.ResRet.f32 %795, 2
  %799 = extractvalue %dx.types.ResRet.f32 %795, 3
  %800 = fmul fast float %793, %799
  %801 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %40, float %41, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %802 = extractvalue %dx.types.ResRet.f32 %801, 0
  %803 = extractvalue %dx.types.ResRet.f32 %801, 1
  %804 = extractvalue %dx.types.ResRet.f32 %801, 2
  %805 = extractvalue %dx.types.ResRet.f32 %801, 3
  %806 = fmul fast float %793, %802
  %807 = fmul fast float %793, %803
  %808 = fmul fast float %793, %804
  %809 = fmul fast float %793, %805
  %810 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %40, float %41, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %811 = extractvalue %dx.types.ResRet.f32 %810, 0
  %812 = extractvalue %dx.types.ResRet.f32 %810, 1
  %813 = extractvalue %dx.types.ResRet.f32 %810, 2
  %814 = extractvalue %dx.types.ResRet.f32 %810, 3
  %815 = fmul fast float %793, %811
  %816 = fmul fast float %793, %812
  %817 = fmul fast float %793, %813
  %818 = fmul fast float %793, %814
  br label %824

; <label>:819                                     ; preds = %653
  %820 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %26, float %40, float %41, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %821 = extractvalue %dx.types.ResRet.f32 %820, 0
  %822 = extractvalue %dx.types.ResRet.f32 %820, 1
  %823 = extractvalue %dx.types.ResRet.f32 %820, 2
  br label %824

; <label>:824                                     ; preds = %819, %794
  %825 = phi float [ %815, %794 ], [ 0.000000e+00, %819 ]
  %826 = phi float [ %816, %794 ], [ 0.000000e+00, %819 ]
  %827 = phi float [ %817, %794 ], [ 0.000000e+00, %819 ]
  %828 = phi float [ %818, %794 ], [ 0.000000e+00, %819 ]
  %829 = phi float [ %806, %794 ], [ 0.000000e+00, %819 ]
  %830 = phi float [ %807, %794 ], [ 0.000000e+00, %819 ]
  %831 = phi float [ %808, %794 ], [ 0.000000e+00, %819 ]
  %832 = phi float [ %809, %794 ], [ 0.000000e+00, %819 ]
  %833 = phi float [ %796, %794 ], [ %821, %819 ]
  %834 = phi float [ %797, %794 ], [ %822, %819 ]
  %835 = phi float [ %798, %794 ], [ %823, %819 ]
  %836 = phi float [ %800, %794 ], [ 0.000000e+00, %819 ]
  %837 = fmul float %793, %835
  %838 = fmul float %793, %834
  %839 = fmul float %793, %833
  %840 = call float @dx.op.dot2.f32(i32 54, float %750, float %751, float %750, float %751)  ; Dot2(ax,ay,bx,by)
  %841 = fsub fast float 1.000000e+00, %840
  %842 = call float @dx.op.unary.f32(i32 7, float %841)  ; Saturate(value)
  %843 = call float @dx.op.unary.f32(i32 24, float %842)  ; Sqrt(value)
  %844 = fmul fast float %843, %46
  %845 = fmul fast float %843, %47
  %846 = fmul fast float %843, %48
  %847 = fmul fast float %750, %42
  %848 = fmul fast float %750, %43
  %849 = fmul fast float %750, %44
  %850 = fmul fast float %113, %751
  %851 = fmul fast float %114, %751
  %852 = fmul fast float %115, %751
  %853 = fadd fast float %850, %847
  %854 = fadd fast float %853, %844
  %855 = fadd fast float %851, %848
  %856 = fadd fast float %855, %845
  %857 = fadd fast float %852, %849
  %858 = fadd fast float %857, %846
  %859 = call float @dx.op.dot3.f32(i32 55, float %854, float %856, float %858, float %854, float %856, float %858)  ; Dot3(ax,ay,az,bx,by,bz)
  %860 = call float @dx.op.unary.f32(i32 25, float %859)  ; Rsqrt(value)
  %861 = fmul fast float %854, %860
  %862 = fmul fast float %856, %860
  %863 = fmul fast float %858, %860
  %864 = call float @dx.op.dot3.f32(i32 55, float %101, float %102, float %103, float %101, float %102, float %103)  ; Dot3(ax,ay,az,bx,by,bz)
  %865 = call float @dx.op.unary.f32(i32 25, float %864)  ; Rsqrt(value)
  %866 = fmul fast float %865, %101
  %867 = fmul fast float %865, %102
  %868 = fmul fast float %865, %103
  %869 = fsub fast float -0.000000e+00, %866
  %870 = fsub fast float -0.000000e+00, %867
  %871 = fsub fast float -0.000000e+00, %868
  %872 = fadd fast float %682, 0xBFB99999A0000000
  %873 = call float @dx.op.unary.f32(i32 7, float %872)  ; Saturate(value)
  %874 = fmul fast float %873, 0x3FF1C71C80000000
  %875 = call float @dx.op.binary.f32(i32 36, float %682, float 0x3FB99999A0000000)  ; FMin(a,b)
  %876 = fsub fast float 1.000000e+00, %874
  %877 = call float @dx.op.unary.f32(i32 7, float %876)  ; Saturate(value)
  %878 = fmul fast float %877, %699
  %879 = fmul fast float %877, %702
  %880 = fmul fast float %877, %705
  %881 = call float @dx.op.unary.f32(i32 7, float %878)  ; Saturate(value)
  %882 = call float @dx.op.unary.f32(i32 7, float %879)  ; Saturate(value)
  %883 = call float @dx.op.unary.f32(i32 7, float %880)  ; Saturate(value)
  %884 = fmul fast float %874, %699
  %885 = fmul fast float %874, %702
  %886 = fmul fast float %874, %705
  %887 = fadd fast float %884, %875
  %888 = fadd fast float %885, %875
  %889 = fadd fast float %886, %875
  %890 = call float @dx.op.unary.f32(i32 7, float %887)  ; Saturate(value)
  %891 = call float @dx.op.unary.f32(i32 7, float %888)  ; Saturate(value)
  %892 = call float @dx.op.unary.f32(i32 7, float %889)  ; Saturate(value)
  %893 = call float @dx.op.unary.f32(i32 7, float %729)  ; Saturate(value)
  %894 = fmul fast float %788, %659
  %895 = fmul fast float %779, %660
  %896 = fmul fast float %780, %661
  %897 = call float @dx.op.dot3.f32(i32 55, float %894, float %895, float %896, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %898 = select i1 %136, float 0.000000e+00, float %894
  %899 = select i1 %136, float %897, float %895
  %900 = select i1 %136, float 0.000000e+00, float %896
  %901 = fmul fast float %574, %788
  %902 = fmul fast float %575, %779
  %903 = fmul fast float %576, %780
  %904 = call float @dx.op.dot3.f32(i32 55, float %881, float %882, float %883, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %905 = add i32 %31, 32
  %906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %905, i32 undef)  ; BufferLoad(srv,index,wot)
  %907 = extractvalue %dx.types.ResRet.i32 %906, 0
  %908 = and i32 %907, 255
  %909 = uitofp i32 %908 to float
  %910 = lshr i32 %907, 8
  %911 = and i32 %910, 255
  %912 = uitofp i32 %911 to float
  %913 = fmul fast float %912, %904
  %914 = fadd fast float %913, %909
  %915 = fmul fast float %914, 0x3F70101020000000
  %916 = call float @dx.op.unary.f32(i32 7, float %915)  ; Saturate(value)
  %917 = and i32 %156, 8192
  %918 = icmp eq i32 %917, 0
  %919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %920 = extractvalue %dx.types.CBufRet.f32 %919, 0
  br i1 %918, label %927, label %921, !dx.controlflow.hints !75

; <label>:921                                     ; preds = %824
  %922 = add i32 %153, 176
  %923 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %924 = extractvalue %dx.types.ResRet.f32 %923, 0
  %925 = fcmp fast oge float %924, 0.000000e+00
  %926 = select i1 %925, float %924, float %920
  br label %934

; <label>:927                                     ; preds = %824
  %928 = add i32 %31, 104
  %929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %928, i32 undef)  ; BufferLoad(srv,index,wot)
  %930 = extractvalue %dx.types.ResRet.i32 %929, 0
  %931 = bitcast i32 %930 to float
  %932 = fcmp fast oge float %931, 0.000000e+00
  %933 = select i1 %932, float %931, float %920
  br label %934

; <label>:934                                     ; preds = %927, %921
  %935 = phi float [ %926, %921 ], [ %933, %927 ]
  %936 = fmul fast float %658, %657
  %937 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %246, i32 %247, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %938 = extractvalue %dx.types.ResRet.i32 %937, 0
  %939 = lshr i32 %938, 18
  %940 = uitofp i32 %939 to float
  %941 = fmul fast float %940, 0x3F4C00EBA0000000
  %942 = call float @dx.op.unary.f32(i32 21, float %941)  ; Exp(value)
  %943 = fadd fast float %942, -1.000000e+00
  %944 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %945 = extractvalue %dx.types.Dimensions %944, 0
  %946 = sitofp i32 %945 to float
  %947 = extractvalue %dx.types.Dimensions %944, 1
  %948 = sitofp i32 %947 to float
  %949 = fcmp fast oge float %244, %946
  %950 = fcmp fast oge float %245, %948
  %951 = or i1 %949, %950
  %952 = select i1 %951, float 0x4197782600000000, float %943
  %953 = icmp eq i32 %152, 3
  %954 = fcmp fast ogt float %59, %952
  %955 = and i1 %270, %954
  %956 = or i1 %953, %955
  %957 = icmp eq i32 %152, 2
  %958 = fcmp fast ole float %59, %952
  %959 = and i1 %957, %958
  %960 = or i1 %959, %956
  %961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %962 = extractvalue %dx.types.CBufRet.f32 %961, 3
  %963 = fcmp fast ogt float %962, 0.000000e+00
  br i1 %963, label %964, label %971

; <label>:964                                     ; preds = %934
  %965 = fmul fast float %862, 0xBFDF454380000000
  %966 = fmul fast float %863, 0x3FDF454380000000
  %967 = fmul fast float %861, 0xBFDF454380000000
  %968 = call float @dx.op.dot4.f32(i32 56, float %839, float %838, float %837, float %836, float 0x3FD20DD760000000, float %965, float %966, float %967)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %969 = call float @dx.op.dot4.f32(i32 56, float %829, float %830, float %831, float %832, float 0x3FD20DD760000000, float %965, float %966, float %967)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %970 = call float @dx.op.dot4.f32(i32 56, float %825, float %826, float %827, float %828, float 0x3FD20DD760000000, float %965, float %966, float %967)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %971

; <label>:971                                     ; preds = %964, %934
  %972 = phi float [ %968, %964 ], [ %839, %934 ]
  %973 = phi float [ %969, %964 ], [ %838, %934 ]
  %974 = phi float [ %970, %964 ], [ %837, %934 ]
  %975 = fmul fast float %901, %972
  %976 = fmul fast float %902, %973
  %977 = fmul fast float %903, %974
  %978 = fadd fast float %975, %898
  %979 = fadd fast float %976, %899
  %980 = fadd fast float %977, %900
  %981 = fmul fast float %978, %657
  %982 = fmul fast float %979, %657
  %983 = fmul fast float %980, %657
  %984 = call float @dx.op.dot3.f32(i32 55, float %861, float %862, float %863, float %869, float %870, float %871)  ; Dot3(ax,ay,az,bx,by,bz)
  %985 = call float @dx.op.unary.f32(i32 7, float %984)  ; Saturate(value)
  br i1 %963, label %986, label %1089

; <label>:986                                     ; preds = %971
  %987 = fsub fast float -0.000000e+00, %828
  %988 = fsub fast float %987, %832
  %989 = fsub fast float %988, %836
  %990 = fsub fast float -0.000000e+00, %826
  %991 = fsub fast float %990, %830
  %992 = fsub fast float %991, %838
  %993 = fadd fast float %831, %827
  %994 = fadd fast float %993, %837
  %995 = call float @dx.op.dot3.f32(i32 55, float %989, float %992, float %994, float %989, float %992, float %994)  ; Dot3(ax,ay,az,bx,by,bz)
  %996 = call float @dx.op.unary.f32(i32 25, float %995)  ; Rsqrt(value)
  %997 = fmul fast float %996, %989
  %998 = fmul fast float %996, %992
  %999 = fmul fast float %996, %994
  %1000 = fmul fast float %998, 0xBFD4D8D7C0000000
  %1001 = fmul fast float %999, 0x3FD4D8D7C0000000
  %1002 = fmul fast float %997, 0xBFD4D8D7C0000000
  %1003 = call float @dx.op.dot4.f32(i32 56, float %839, float %838, float %837, float %836, float 0x3FD20DD760000000, float %1000, float %1001, float %1002)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1004 = call float @dx.op.dot4.f32(i32 56, float %829, float %830, float %831, float %832, float 0x3FD20DD760000000, float %1000, float %1001, float %1002)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1005 = call float @dx.op.dot4.f32(i32 56, float %825, float %826, float %827, float %828, float 0x3FD20DD760000000, float %1000, float %1001, float %1002)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1006 = fmul fast float %1003, 0x4003333340000000
  %1007 = fmul fast float %839, 0x3FE5AA35A0000000
  %1008 = fsub fast float %1006, %1007
  %1009 = fmul fast float %1004, 0x4003333340000000
  %1010 = fmul fast float %829, 0x3FE5AA35A0000000
  %1011 = fsub fast float %1009, %1010
  %1012 = fmul fast float %1005, 0x4003333340000000
  %1013 = fmul fast float %825, 0x3FE5AA35A0000000
  %1014 = fsub fast float %1012, %1013
  %1015 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1008)  ; FMax(a,b)
  %1016 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1011)  ; FMax(a,b)
  %1017 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1014)  ; FMax(a,b)
  %1018 = fsub fast float %997, %866
  %1019 = fsub fast float %998, %867
  %1020 = fsub fast float %999, %868
  %1021 = call float @dx.op.dot3.f32(i32 55, float %1018, float %1019, float %1020, float %1018, float %1019, float %1020)  ; Dot3(ax,ay,az,bx,by,bz)
  %1022 = call float @dx.op.unary.f32(i32 25, float %1021)  ; Rsqrt(value)
  %1023 = fmul fast float %1022, %1018
  %1024 = fmul fast float %1022, %1019
  %1025 = fmul fast float %1022, %1020
  %1026 = call float @dx.op.dot3.f32(i32 55, float %861, float %862, float %863, float %997, float %998, float %999)  ; Dot3(ax,ay,az,bx,by,bz)
  %1027 = call float @dx.op.unary.f32(i32 6, float %1026)  ; FAbs(value)
  %1028 = call float @dx.op.dot3.f32(i32 55, float %861, float %862, float %863, float %1023, float %1024, float %1025)  ; Dot3(ax,ay,az,bx,by,bz)
  %1029 = fmul fast float %1028, %1028
  %1030 = call float @dx.op.dot3.f32(i32 55, float %869, float %870, float %871, float %1023, float %1024, float %1025)  ; Dot3(ax,ay,az,bx,by,bz)
  %1031 = call float @dx.op.unary.f32(i32 6, float %1030)  ; FAbs(value)
  %1032 = fsub fast float 1.000000e+00, %893
  %1033 = call float @dx.op.binary.f32(i32 35, float %1032, float 0x3F847AE140000000)  ; FMax(a,b)
  %1034 = fmul fast float %1033, %1033
  %1035 = fmul fast float %1034, %1034
  %1036 = fsub fast float 1.000000e+00, %1035
  %1037 = fmul fast float %985, %985
  %1038 = fmul fast float %1037, %1036
  %1039 = fadd fast float %1038, %1035
  %1040 = bitcast float %1039 to i32
  %1041 = ashr i32 %1040, 1
  %1042 = add nsw i32 %1041, 532487669
  %1043 = bitcast i32 %1042 to float
  %1044 = fadd fast float %1043, %985
  %1045 = fmul fast float %1035, %1029
  %1046 = fsub fast float 1.000000e+00, %1029
  %1047 = fadd fast float %1046, %1045
  %1048 = fmul fast float %1027, %1027
  %1049 = fmul fast float %1048, %1036
  %1050 = fadd fast float %1049, %1035
  %1051 = bitcast float %1050 to i32
  %1052 = ashr i32 %1051, 1
  %1053 = add nsw i32 %1052, 532487669
  %1054 = bitcast i32 %1053 to float
  %1055 = fadd fast float %1054, %1027
  %1056 = fmul fast float %1047, %1047
  %1057 = fmul fast float %1056, %1044
  %1058 = fmul fast float %1057, %1055
  %1059 = fdiv fast float 1.000000e+00, %1058
  %1060 = fmul fast float %1035, %1059
  %1061 = fsub fast float 1.000000e+00, %1031
  %1062 = bitcast float %1061 to i32
  %1063 = sitofp i32 %1062 to float
  %1064 = fmul fast float %1063, 5.000000e+00
  %1065 = fadd fast float %1064, 0xC1EFBF8940000000
  %1066 = fptosi float %1065 to i32
  %1067 = bitcast i32 %1066 to float
  %1068 = fsub fast float 1.000000e+00, %890
  %1069 = fsub fast float 1.000000e+00, %891
  %1070 = fsub fast float 1.000000e+00, %892
  %1071 = fmul fast float %1067, %1068
  %1072 = fmul fast float %1067, %1069
  %1073 = fmul fast float %1067, %1070
  %1074 = fadd fast float %1071, %890
  %1075 = fadd fast float %1072, %891
  %1076 = fadd fast float %1073, %892
  %1077 = fmul fast float %1060, %1015
  %1078 = fmul fast float %1077, %1074
  %1079 = fmul fast float %1060, %1016
  %1080 = fmul fast float %1079, %1075
  %1081 = fmul fast float %1060, %1017
  %1082 = fmul fast float %1081, %1076
  %1083 = call float @dx.op.binary.f32(i32 35, float %1078, float 0.000000e+00)  ; FMax(a,b)
  %1084 = call float @dx.op.binary.f32(i32 35, float %1080, float 0.000000e+00)  ; FMax(a,b)
  %1085 = call float @dx.op.binary.f32(i32 35, float %1082, float 0.000000e+00)  ; FMax(a,b)
  %1086 = fadd fast float %1083, %981
  %1087 = fadd fast float %1084, %982
  %1088 = fadd fast float %1085, %983
  br label %1089

; <label>:1089                                    ; preds = %986, %971
  %1090 = phi float [ %1086, %986 ], [ %981, %971 ]
  %1091 = phi float [ %1087, %986 ], [ %982, %971 ]
  %1092 = phi float [ %1088, %986 ], [ %983, %971 ]
  %1093 = fmul fast float %985, 9.843750e-01
  %1094 = fmul fast float %893, 9.843750e-01
  %1095 = fadd fast float %1093, 7.812500e-03
  %1096 = fadd fast float %1094, 7.812500e-03
  %1097 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %26, float %1095, float %1096, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1098 = extractvalue %dx.types.ResRet.f32 %1097, 2
  %1099 = extractvalue %dx.types.ResRet.f32 %1097, 3
  %1100 = fmul fast float %1098, %890
  %1101 = fmul fast float %1098, %891
  %1102 = fmul fast float %1098, %892
  %1103 = fadd fast float %1100, %1099
  %1104 = fadd fast float %1101, %1099
  %1105 = fadd fast float %1102, %1099
  %1106 = call float @dx.op.binary.f32(i32 35, float %1104, float %1105)  ; FMax(a,b)
  %1107 = call float @dx.op.binary.f32(i32 35, float %1103, float %1106)  ; FMax(a,b)
  %1108 = fsub fast float 1.000000e+00, %1107
  %1109 = call float @dx.op.dot3.f32(i32 55, float %866, float %867, float %868, float %861, float %862, float %863)  ; Dot3(ax,ay,az,bx,by,bz)
  %1110 = fmul fast float %1109, 2.000000e+00
  %1111 = fmul fast float %1110, %861
  %1112 = fmul fast float %1110, %862
  %1113 = fmul fast float %1110, %863
  %1114 = fsub fast float %866, %1111
  %1115 = fsub fast float %867, %1112
  %1116 = fsub fast float %868, %1113
  br i1 %963, label %1117, label %1124

; <label>:1117                                    ; preds = %1089
  %1118 = fmul fast float %1115, 0xBFDF454380000000
  %1119 = fmul fast float %1116, 0x3FDF454380000000
  %1120 = fmul fast float %1114, 0xBFDF454380000000
  %1121 = call float @dx.op.dot4.f32(i32 56, float %839, float %838, float %837, float %836, float 0x3FD20DD760000000, float %1118, float %1119, float %1120)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1122 = call float @dx.op.dot4.f32(i32 56, float %829, float %830, float %831, float %832, float 0x3FD20DD760000000, float %1118, float %1119, float %1120)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1123 = call float @dx.op.dot4.f32(i32 56, float %825, float %826, float %827, float %828, float 0x3FD20DD760000000, float %1118, float %1119, float %1120)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %1124

; <label>:1124                                    ; preds = %1117, %1089
  %1125 = phi float [ %1121, %1117 ], [ %839, %1089 ]
  %1126 = phi float [ %1122, %1117 ], [ %838, %1089 ]
  %1127 = phi float [ %1123, %1117 ], [ %837, %1089 ]
  %1128 = call float @dx.op.dot3.f32(i32 55, float %1125, float %1126, float %1127, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %1130 = extractvalue %dx.types.CBufRet.f32 %1129, 2
  %1131 = extractvalue %dx.types.CBufRet.f32 %1129, 3
  %1132 = fmul fast float %1130, %66
  %1133 = fmul fast float %1131, %67
  %1134 = fptoui float %1132 to i32
  %1135 = fptoui float %1133 to i32
  %1136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1137 = extractvalue %dx.types.CBufRet.f32 %1136, 0
  %1138 = extractvalue %dx.types.CBufRet.f32 %1136, 2
  %1139 = extractvalue %dx.types.CBufRet.f32 %1136, 3
  %1140 = fadd fast float %59, -4.000000e+00
  %1141 = call float @dx.op.binary.f32(i32 35, float %1140, float 0.000000e+00)  ; FMax(a,b)
  %1142 = fadd fast float %1141, %1137
  %1143 = fmul fast float %1142, %1138
  %1144 = call float @dx.op.unary.f32(i32 23, float %1143)  ; Log(value)
  %1145 = fmul fast float %1144, %1139
  %1146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1147 = extractvalue %dx.types.CBufRet.f32 %1146, 2
  %1148 = fmul fast float %1145, %1147
  %1149 = call float @dx.op.unary.f32(i32 7, float %1148)  ; Saturate(value)
  %1150 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1151 = extractvalue %dx.types.CBufRet.i32 %1150, 1
  %1152 = add i32 %1151, -1
  %1153 = uitofp i32 %1151 to float
  %1154 = fmul fast float %1153, %1149
  %1155 = fptoui float %1154 to i32
  %1156 = call i32 @dx.op.binary.i32(i32 40, i32 %1155, i32 %1152)  ; UMin(a,b)
  %1157 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %1158 = extractvalue %dx.types.CBufRet.i32 %1157, 2
  %1159 = extractvalue %dx.types.CBufRet.i32 %1157, 3
  %1160 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1135, i32 %1158, i32 %1134)  ; UMad(a,b,c)
  %1161 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1156, i32 %1159, i32 %1160)  ; UMad(a,b,c)
  %1162 = call float @dx.op.binary.f32(i32 35, float %59, float 0.000000e+00)  ; FMax(a,b)
  %1163 = fptoui float %1162 to i32
  %1164 = lshr i32 %1163, 5
  %1165 = call i32 @dx.op.binary.i32(i32 40, i32 %1164, i32 8191)  ; UMin(a,b)
  %1166 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1167 = extractvalue %dx.types.CBufRet.i32 %1166, 2
  %1168 = add nsw i32 %1167, -1
  %1169 = call i32 @dx.op.binary.i32(i32 37, i32 %1168, i32 0)  ; IMax(a,b)
  %1170 = shl i32 %1165, 2
  %1171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1170, i32 undef)  ; BufferLoad(srv,index,wot)
  %1172 = extractvalue %dx.types.ResRet.i32 %1171, 0
  %1173 = lshr i32 %1172, 16
  %1174 = and i32 %1172, 65535
  %1175 = lshr i32 %1172, 21
  %1176 = lshr i32 %1174, 5
  %1177 = call i32 @dx.op.binary.i32(i32 40, i32 %1176, i32 %1169)  ; UMin(a,b)
  %1178 = icmp ugt i32 %1175, %1177
  br i1 %1178, label %1541, label %1179

; <label>:1179                                    ; preds = %1124
  br label %1180

; <label>:1180                                    ; preds = %1533, %1179
  %1181 = phi float [ %1534, %1533 ], [ 0.000000e+00, %1179 ]
  %1182 = phi float [ %1535, %1533 ], [ 0.000000e+00, %1179 ]
  %1183 = phi float [ %1536, %1533 ], [ 0.000000e+00, %1179 ]
  %1184 = phi float [ %1537, %1533 ], [ 1.000000e+00, %1179 ]
  %1185 = phi i32 [ %1538, %1533 ], [ %1175, %1179 ]
  %1186 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1187 = extractvalue %dx.types.CBufRet.i32 %1186, 2
  %1188 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1161, i32 %1187, i32 %1185)  ; UMad(a,b,c)
  %1189 = shl i32 %1188, 2
  %1190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1189, i32 undef)  ; BufferLoad(srv,index,wot)
  %1191 = extractvalue %dx.types.ResRet.i32 %1190, 0
  %1192 = shl i32 %1185, 5
  %1193 = sub nsw i32 %1173, %1192
  %1194 = call i32 @dx.op.binary.i32(i32 37, i32 %1193, i32 0)  ; IMax(a,b)
  %1195 = call i32 @dx.op.binary.i32(i32 38, i32 %1194, i32 31)  ; IMin(a,b)
  %1196 = sub nsw i32 1, %1173
  %1197 = add nsw i32 %1196, %1174
  %1198 = call i32 @dx.op.binary.i32(i32 37, i32 %1197, i32 0)  ; IMax(a,b)
  %1199 = call i32 @dx.op.binary.i32(i32 38, i32 %1198, i32 32)  ; IMin(a,b)
  %1200 = and i32 %1199, 31
  %1201 = shl i32 -1, %1200
  %1202 = xor i32 %1201, -1
  %1203 = and i32 %1195, 31
  %1204 = shl i32 %1202, %1203
  %1205 = icmp eq i32 %1199, 32
  %1206 = select i1 %1205, i32 -1, i32 %1204
  %1207 = and i32 %1206, %1191
  %1208 = icmp eq i32 %1207, 0
  br i1 %1208, label %1533, label %1209

; <label>:1209                                    ; preds = %1180
  br label %1210

; <label>:1210                                    ; preds = %1316, %1209
  %1211 = phi float [ %1317, %1316 ], [ %1181, %1209 ]
  %1212 = phi float [ %1318, %1316 ], [ %1182, %1209 ]
  %1213 = phi float [ %1319, %1316 ], [ %1183, %1209 ]
  %1214 = phi float [ %1320, %1316 ], [ %1184, %1209 ]
  %1215 = phi i32 [ %1220, %1316 ], [ %1207, %1209 ]
  %1216 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1215)  ; FirstbitLo(value)
  %1217 = add i32 %1216, %1192
  %1218 = and i32 %1216, 31
  %1219 = shl i32 1, %1218
  %1220 = xor i32 %1219, %1215
  %1221 = mul i32 %1217, 72
  %1222 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1221, i32 undef)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.f32 %1222, 0
  %1224 = extractvalue %dx.types.ResRet.f32 %1222, 1
  %1225 = extractvalue %dx.types.ResRet.f32 %1222, 2
  %1226 = add i32 %1221, 12
  %1227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1226, i32 undef)  ; BufferLoad(srv,index,wot)
  %1228 = extractvalue %dx.types.ResRet.i32 %1227, 0
  %1229 = add i32 %1221, 16
  %1230 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1229, i32 undef)  ; BufferLoad(srv,index,wot)
  %1231 = extractvalue %dx.types.ResRet.f32 %1230, 0
  %1232 = extractvalue %dx.types.ResRet.f32 %1230, 1
  %1233 = extractvalue %dx.types.ResRet.f32 %1230, 2
  %1234 = add i32 %1221, 28
  %1235 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1234, i32 undef)  ; BufferLoad(srv,index,wot)
  %1236 = extractvalue %dx.types.ResRet.f32 %1235, 0
  %1237 = add i32 %1221, 32
  %1238 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1237, i32 undef)  ; BufferLoad(srv,index,wot)
  %1239 = extractvalue %dx.types.ResRet.f32 %1238, 0
  %1240 = extractvalue %dx.types.ResRet.f32 %1238, 1
  %1241 = extractvalue %dx.types.ResRet.f32 %1238, 2
  %1242 = extractvalue %dx.types.ResRet.f32 %1238, 3
  %1243 = add i32 %1221, 48
  %1244 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1245 = extractvalue %dx.types.ResRet.f32 %1244, 0
  %1246 = extractvalue %dx.types.ResRet.f32 %1244, 1
  %1247 = add i32 %1221, 56
  %1248 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1249 = extractvalue %dx.types.ResRet.f32 %1248, 0
  %1250 = extractvalue %dx.types.ResRet.f32 %1248, 1
  %1251 = add i32 %1221, 64
  %1252 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1253 = extractvalue %dx.types.ResRet.f32 %1252, 0
  %1254 = extractvalue %dx.types.ResRet.f32 %1252, 1
  %1255 = mul i32 %1217, 60
  %1256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1255, i32 undef)  ; BufferLoad(srv,index,wot)
  %1257 = extractvalue %dx.types.ResRet.f32 %1256, 0
  %1258 = extractvalue %dx.types.ResRet.f32 %1256, 1
  %1259 = extractvalue %dx.types.ResRet.f32 %1256, 2
  %1260 = add i32 %1255, 12
  %1261 = add i32 %1255, 48
  %1262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1263 = extractvalue %dx.types.ResRet.f32 %1262, 0
  %1264 = extractvalue %dx.types.ResRet.f32 %1262, 1
  %1265 = extractvalue %dx.types.ResRet.f32 %1262, 2
  %1266 = and i32 %1228, 32767
  %1267 = bitcast float %1223 to i32
  %1268 = icmp eq i32 %1267, -1
  %1269 = bitcast float %1224 to i32
  %1270 = and i32 %1228, 32768
  %1271 = icmp ne i32 %1270, 0
  %1272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1273 = extractvalue %dx.types.CBufRet.f32 %1272, 0
  %1274 = extractvalue %dx.types.CBufRet.f32 %1272, 1
  %1275 = extractvalue %dx.types.CBufRet.f32 %1272, 2
  %1276 = fsub fast float %1257, %1273
  %1277 = fsub fast float %1258, %1274
  %1278 = fsub fast float %1259, %1275
  %1279 = fsub fast float %101, %1276
  %1280 = fsub fast float %102, %1277
  %1281 = fsub fast float %103, %1278
  %1282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1260, i32 undef)  ; BufferLoad(srv,index,wot)
  %1283 = extractvalue %dx.types.ResRet.f32 %1282, 0
  %1284 = extractvalue %dx.types.ResRet.f32 %1282, 1
  %1285 = extractvalue %dx.types.ResRet.f32 %1282, 2
  %1286 = call float @dx.op.dot3.f32(i32 55, float %1279, float %1280, float %1281, float %1283, float %1284, float %1285)  ; Dot3(ax,ay,az,bx,by,bz)
  %1287 = add i32 %1255, 24
  %1288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1287, i32 undef)  ; BufferLoad(srv,index,wot)
  %1289 = extractvalue %dx.types.ResRet.f32 %1288, 0
  %1290 = extractvalue %dx.types.ResRet.f32 %1288, 1
  %1291 = extractvalue %dx.types.ResRet.f32 %1288, 2
  %1292 = call float @dx.op.dot3.f32(i32 55, float %1279, float %1280, float %1281, float %1289, float %1290, float %1291)  ; Dot3(ax,ay,az,bx,by,bz)
  %1293 = add i32 %1255, 36
  %1294 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1293, i32 undef)  ; BufferLoad(srv,index,wot)
  %1295 = extractvalue %dx.types.ResRet.f32 %1294, 0
  %1296 = extractvalue %dx.types.ResRet.f32 %1294, 1
  %1297 = extractvalue %dx.types.ResRet.f32 %1294, 2
  %1298 = call float @dx.op.dot3.f32(i32 55, float %1279, float %1280, float %1281, float %1295, float %1296, float %1297)  ; Dot3(ax,ay,az,bx,by,bz)
  %1299 = call float @dx.op.unary.f32(i32 6, float %1286)  ; FAbs(value)
  %1300 = call float @dx.op.unary.f32(i32 6, float %1292)  ; FAbs(value)
  %1301 = call float @dx.op.unary.f32(i32 6, float %1298)  ; FAbs(value)
  %1302 = fsub fast float %1263, %1299
  %1303 = fsub fast float %1264, %1300
  %1304 = fsub fast float %1265, %1301
  %1305 = fmul fast float %1302, %1231
  %1306 = fmul fast float %1303, %1232
  %1307 = fmul fast float %1304, %1233
  %1308 = call float @dx.op.binary.f32(i32 36, float %1306, float %1307)  ; FMin(a,b)
  %1309 = call float @dx.op.binary.f32(i32 36, float %1305, float %1308)  ; FMin(a,b)
  %1310 = call float @dx.op.unary.f32(i32 7, float %1309)  ; Saturate(value)
  %1311 = call float @dx.op.binary.f32(i32 36, float %1214, float %1310)  ; FMin(a,b)
  %1312 = uitofp i1 %1271 to float
  %1313 = fsub fast float 1.000000e+00, %1312
  %1314 = fmul fast float %1311, %1313
  %1315 = fcmp fast ogt float %1314, 0.000000e+00
  br i1 %1315, label %1322, label %1316

; <label>:1316                                    ; preds = %1464, %1210
  %1317 = phi float [ %1528, %1464 ], [ %1211, %1210 ]
  %1318 = phi float [ %1529, %1464 ], [ %1212, %1210 ]
  %1319 = phi float [ %1530, %1464 ], [ %1213, %1210 ]
  %1320 = phi float [ %1531, %1464 ], [ %1214, %1210 ]
  %1321 = icmp eq i32 %1215, %1219
  br i1 %1321, label %1532, label %1210

; <label>:1322                                    ; preds = %1210
  br i1 %1268, label %1380, label %1323

; <label>:1323                                    ; preds = %1322
  %1324 = fsub fast float -0.000000e+00, %1283
  %1325 = fsub fast float -0.000000e+00, %1284
  %1326 = fsub fast float -0.000000e+00, %1285
  %1327 = call float @dx.op.dot3.f32(i32 55, float %1114, float %1115, float %1116, float %1324, float %1325, float %1326)  ; Dot3(ax,ay,az,bx,by,bz)
  %1328 = fsub fast float -0.000000e+00, %1327
  %1329 = call float @dx.op.dot3.f32(i32 55, float %1279, float %1280, float %1281, float %1324, float %1325, float %1326)  ; Dot3(ax,ay,az,bx,by,bz)
  %1330 = fadd fast float %1329, %1246
  %1331 = fadd fast float %1245, %1329
  %1332 = fsub fast float -0.000000e+00, %1331
  %1333 = fcmp ogt float %1327, -0.000000e+00
  %1334 = select i1 %1333, float %1332, float %1330
  %1335 = call float @dx.op.unary.f32(i32 6, float %1328)  ; FAbs(value)
  %1336 = fdiv fast float 1.000000e+00, %1335
  %1337 = fmul fast float %1334, %1336
  %1338 = call float @dx.op.binary.f32(i32 35, float %1337, float 0.000000e+00)  ; FMax(a,b)
  %1339 = fsub fast float -0.000000e+00, %1289
  %1340 = fsub fast float -0.000000e+00, %1290
  %1341 = fsub fast float -0.000000e+00, %1291
  %1342 = call float @dx.op.dot3.f32(i32 55, float %1114, float %1115, float %1116, float %1339, float %1340, float %1341)  ; Dot3(ax,ay,az,bx,by,bz)
  %1343 = fsub fast float -0.000000e+00, %1342
  %1344 = call float @dx.op.dot3.f32(i32 55, float %1279, float %1280, float %1281, float %1339, float %1340, float %1341)  ; Dot3(ax,ay,az,bx,by,bz)
  %1345 = fadd fast float %1344, %1250
  %1346 = fadd fast float %1249, %1344
  %1347 = fsub fast float -0.000000e+00, %1346
  %1348 = fcmp ogt float %1342, -0.000000e+00
  %1349 = select i1 %1348, float %1347, float %1345
  %1350 = call float @dx.op.unary.f32(i32 6, float %1343)  ; FAbs(value)
  %1351 = fdiv fast float 1.000000e+00, %1350
  %1352 = fmul fast float %1349, %1351
  %1353 = call float @dx.op.binary.f32(i32 35, float %1352, float 0.000000e+00)  ; FMax(a,b)
  %1354 = fsub fast float -0.000000e+00, %1295
  %1355 = fsub fast float -0.000000e+00, %1296
  %1356 = fsub fast float -0.000000e+00, %1297
  %1357 = call float @dx.op.dot3.f32(i32 55, float %1114, float %1115, float %1116, float %1354, float %1355, float %1356)  ; Dot3(ax,ay,az,bx,by,bz)
  %1358 = fsub fast float -0.000000e+00, %1357
  %1359 = call float @dx.op.dot3.f32(i32 55, float %1279, float %1280, float %1281, float %1354, float %1355, float %1356)  ; Dot3(ax,ay,az,bx,by,bz)
  %1360 = fadd fast float %1359, %1254
  %1361 = fadd fast float %1253, %1359
  %1362 = fsub fast float -0.000000e+00, %1361
  %1363 = fcmp ogt float %1357, -0.000000e+00
  %1364 = select i1 %1363, float %1362, float %1360
  %1365 = call float @dx.op.unary.f32(i32 6, float %1358)  ; FAbs(value)
  %1366 = fdiv fast float 1.000000e+00, %1365
  %1367 = fmul fast float %1364, %1366
  %1368 = call float @dx.op.binary.f32(i32 35, float %1367, float 0.000000e+00)  ; FMax(a,b)
  %1369 = call float @dx.op.binary.f32(i32 36, float %1353, float %1368)  ; FMin(a,b)
  %1370 = call float @dx.op.binary.f32(i32 36, float %1338, float %1369)  ; FMin(a,b)
  %1371 = fmul fast float %1370, %1114
  %1372 = fmul fast float %1370, %1115
  %1373 = fmul fast float %1370, %1116
  %1374 = fadd fast float %1371, %101
  %1375 = fadd fast float %1372, %102
  %1376 = fadd fast float %1373, %103
  %1377 = fsub fast float %1374, %1223
  %1378 = fsub fast float %1375, %1224
  %1379 = fsub fast float %1376, %1225
  br label %1387

; <label>:1380                                    ; preds = %1322
  %1381 = fmul fast float %1114, 8.096000e+03
  %1382 = fmul fast float %1115, 8.096000e+03
  %1383 = fmul fast float %1116, 8.096000e+03
  %1384 = fadd fast float %1381, %101
  %1385 = fadd fast float %1382, %102
  %1386 = fadd fast float %1383, %103
  br label %1387

; <label>:1387                                    ; preds = %1380, %1323
  %1388 = phi float [ %1114, %1380 ], [ %1377, %1323 ]
  %1389 = phi float [ %1115, %1380 ], [ %1378, %1323 ]
  %1390 = phi float [ %1116, %1380 ], [ %1379, %1323 ]
  %1391 = phi float [ %1384, %1380 ], [ %1374, %1323 ]
  %1392 = phi float [ %1385, %1380 ], [ %1375, %1323 ]
  %1393 = phi float [ %1386, %1380 ], [ %1376, %1323 ]
  %1394 = fcmp fast olt float %1242, 1.000000e+00
  br i1 %1394, label %1395, label %1426, !dx.controlflow.hints !76

; <label>:1395                                    ; preds = %1387
  %1396 = fmul fast float %1390, %1240
  %1397 = fmul fast float %1389, %1241
  %1398 = fsub fast float %1396, %1397
  %1399 = fmul fast float %1388, %1241
  %1400 = fmul fast float %1390, %1239
  %1401 = fsub fast float %1399, %1400
  %1402 = fmul fast float %1389, %1239
  %1403 = fmul fast float %1388, %1240
  %1404 = fsub fast float %1402, %1403
  %1405 = fmul fast float %1398, 2.000000e+00
  %1406 = fmul fast float %1401, 2.000000e+00
  %1407 = fmul fast float %1404, 2.000000e+00
  %1408 = fmul fast float %1405, %1242
  %1409 = fmul fast float %1406, %1242
  %1410 = fmul fast float %1407, %1242
  %1411 = fmul fast float %1407, %1240
  %1412 = fmul fast float %1406, %1241
  %1413 = fmul fast float %1405, %1241
  %1414 = fmul fast float %1407, %1239
  %1415 = fmul fast float %1406, %1239
  %1416 = fmul fast float %1405, %1240
  %1417 = fadd fast float %1411, %1388
  %1418 = fadd fast float %1417, %1408
  %1419 = fsub fast float %1418, %1412
  %1420 = fsub fast float %1389, %1414
  %1421 = fadd fast float %1420, %1409
  %1422 = fadd fast float %1421, %1413
  %1423 = fadd fast float %1410, %1390
  %1424 = fsub fast float %1423, %1416
  %1425 = fadd fast float %1424, %1415
  br label %1426

; <label>:1426                                    ; preds = %1395, %1387
  %1427 = phi float [ %1419, %1395 ], [ %1388, %1387 ]
  %1428 = phi float [ %1422, %1395 ], [ %1389, %1387 ]
  %1429 = phi float [ %1425, %1395 ], [ %1390, %1387 ]
  br i1 %1268, label %1461, label %1430

; <label>:1430                                    ; preds = %1426
  %1431 = fmul fast float %893, 0x400187C840000000
  %1432 = fadd fast float %1431, 0xC00EFC2120000000
  %1433 = fmul fast float %1432, %893
  %1434 = fadd fast float %1433, 0x3FE5D16340000000
  %1435 = fmul fast float %1434, %893
  %1436 = fadd fast float %1435, 1.000000e+00
  %1437 = call float @dx.op.unary.f32(i32 7, float %1436)  ; Saturate(value)
  %1438 = fsub fast float %1391, %101
  %1439 = fsub fast float %1392, %102
  %1440 = fsub fast float %1393, %103
  %1441 = fsub fast float %1391, %1223
  %1442 = fsub fast float %1392, %1224
  %1443 = fsub fast float %1393, %1225
  %1444 = call float @dx.op.dot3.f32(i32 55, float %1438, float %1439, float %1440, float %1438, float %1439, float %1440)  ; Dot3(ax,ay,az,bx,by,bz)
  %1445 = call float @dx.op.dot3.f32(i32 55, float %1441, float %1442, float %1443, float %1441, float %1442, float %1443)  ; Dot3(ax,ay,az,bx,by,bz)
  %1446 = fadd fast float %1445, 0x3EE4F8B580000000
  %1447 = fdiv fast float %1444, %1446
  %1448 = bitcast float %1447 to i32
  %1449 = ashr i32 %1448, 1
  %1450 = add nsw i32 %1449, 532487669
  %1451 = bitcast i32 %1450 to float
  %1452 = fmul fast float %1451, %1437
  %1453 = call float @dx.op.unary.f32(i32 7, float %1452)  ; Saturate(value)
  %1454 = fmul fast float %1453, 0x4009981AE0000000
  %1455 = fsub fast float 0x40111BBD80000000, %1454
  %1456 = fmul fast float %1455, %1453
  %1457 = fadd fast float %1456, 0xC0009F6020000000
  %1458 = fmul fast float %1457, %1453
  %1459 = fadd fast float %1458, 1.000000e+00
  %1460 = call float @dx.op.unary.f32(i32 7, float %1459)  ; Saturate(value)
  br label %1464

; <label>:1461                                    ; preds = %1426
  %1462 = icmp ne i32 %1269, -1
  %1463 = zext i1 %1462 to i32
  br label %1464

; <label>:1464                                    ; preds = %1461, %1430
  %1465 = phi float [ %893, %1461 ], [ %1460, %1430 ]
  %1466 = phi i32 [ %1463, %1461 ], [ 0, %1430 ]
  %1467 = fmul float %1465, 5.000000e+00
  %1468 = fsub float 5.000000e+00, %1467
  %1469 = icmp ne i32 %1466, 0
  %1470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %1471 = extractvalue %dx.types.CBufRet.f32 %1470, 3
  %1472 = fadd fast float %1471, %1468
  %1473 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1472)  ; FMax(a,b)
  %1474 = call float @dx.op.unary.f32(i32 6, float %1427)  ; FAbs(value)
  %1475 = call float @dx.op.unary.f32(i32 6, float %1428)  ; FAbs(value)
  %1476 = fadd fast float %1475, %1474
  %1477 = call float @dx.op.unary.f32(i32 6, float %1429)  ; FAbs(value)
  %1478 = fadd fast float %1476, %1477
  %1479 = fcmp fast oeq float %1478, 0.000000e+00
  %1480 = fdiv fast float 1.000000e+00, %1478
  %1481 = select i1 %1479, float 1.000000e+00, float %1480
  %1482 = fmul fast float %1481, %1427
  %1483 = fmul fast float %1481, %1428
  %1484 = call float @dx.op.unary.f32(i32 6, float %1483)  ; FAbs(value)
  %1485 = call float @dx.op.unary.f32(i32 6, float %1482)  ; FAbs(value)
  %1486 = fsub fast float 1.000000e+00, %1484
  %1487 = fsub fast float 1.000000e+00, %1485
  %1488 = fcmp fast oge float %1482, 0.000000e+00
  %1489 = fcmp fast oge float %1483, 0.000000e+00
  %1490 = select i1 %1488, float 1.000000e+00, float -1.000000e+00
  %1491 = select i1 %1489, float 1.000000e+00, float -1.000000e+00
  %1492 = fcmp fast ole float %1429, 0.000000e+00
  %1493 = fmul fast float %1490, %1486
  %1494 = fmul fast float %1491, %1487
  %1495 = select i1 %1492, float %1493, float %1482
  %1496 = select i1 %1492, float %1494, float %1483
  %1497 = fmul fast float %1495, 5.000000e-01
  %1498 = fmul fast float %1496, 5.000000e-01
  %1499 = fadd fast float %1497, 5.000000e-01
  %1500 = fadd fast float %1498, 5.000000e-01
  %1501 = uitofp i32 %1266 to float
  %1502 = call float @dx.op.binary.f32(i32 36, float %1473, float 3.000000e+00)  ; FMin(a,b)
  %1503 = fadd fast float %1502, 2.000000e+00
  %1504 = call float @dx.op.unary.f32(i32 21, float %1503)  ; Exp(value)
  %1505 = extractvalue %dx.types.CBufRet.f32 %1470, 1
  %1506 = fmul fast float %1505, %1504
  %1507 = fmul fast float %1506, 2.000000e+00
  %1508 = fsub fast float 1.000000e+00, %1507
  %1509 = fmul fast float %1499, %1508
  %1510 = fmul fast float %1500, %1508
  %1511 = fadd fast float %1509, %1506
  %1512 = fadd fast float %1510, %1506
  %1513 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %25, float %1511, float %1512, float %1501, float undef, i32 0, i32 0, i32 undef, float %1473)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1514 = extractvalue %dx.types.ResRet.f32 %1513, 0
  %1515 = extractvalue %dx.types.ResRet.f32 %1513, 1
  %1516 = extractvalue %dx.types.ResRet.f32 %1513, 2
  %1517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1518 = extractvalue %dx.types.CBufRet.f32 %1517, 3
  %1519 = fmul fast float %1518, %1236
  %1520 = call float @dx.op.binary.f32(i32 36, float %1128, float %1519)  ; FMin(a,b)
  %1521 = select i1 %1469, float %1520, float %1519
  %1522 = fmul fast float %1514, %1314
  %1523 = fmul fast float %1522, %1521
  %1524 = fmul fast float %1515, %1314
  %1525 = fmul fast float %1524, %1521
  %1526 = fmul fast float %1516, %1314
  %1527 = fmul fast float %1526, %1521
  %1528 = fadd fast float %1523, %1211
  %1529 = fadd fast float %1525, %1212
  %1530 = fadd fast float %1527, %1213
  %1531 = fsub fast float %1214, %1314
  br label %1316

; <label>:1532                                    ; preds = %1316
  br label %1533

; <label>:1533                                    ; preds = %1532, %1180
  %1534 = phi float [ %1181, %1180 ], [ %1317, %1532 ]
  %1535 = phi float [ %1182, %1180 ], [ %1318, %1532 ]
  %1536 = phi float [ %1183, %1180 ], [ %1319, %1532 ]
  %1537 = phi float [ %1184, %1180 ], [ %1320, %1532 ]
  %1538 = add i32 %1185, 1
  %1539 = icmp ugt i32 %1538, %1177
  br i1 %1539, label %1540, label %1180, !llvm.loop !77

; <label>:1540                                    ; preds = %1533
  br label %1541

; <label>:1541                                    ; preds = %1540, %1124
  %1542 = phi float [ 0.000000e+00, %1124 ], [ %1534, %1540 ]
  %1543 = phi float [ 0.000000e+00, %1124 ], [ %1535, %1540 ]
  %1544 = phi float [ 0.000000e+00, %1124 ], [ %1536, %1540 ]
  %1545 = call float @dx.op.dot3.f32(i32 55, float %1542, float %1543, float %1544, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1546 = select i1 %136, float 0.000000e+00, float %1542
  %1547 = select i1 %136, float %1545, float %1543
  %1548 = select i1 %136, float 0.000000e+00, float %1544
  %1549 = fmul fast float %1546, %1103
  %1550 = fmul fast float %1547, %1104
  %1551 = fmul fast float %1548, %1105
  %1552 = call float @dx.op.binary.f32(i32 35, float %1549, float 0.000000e+00)  ; FMax(a,b)
  %1553 = call float @dx.op.binary.f32(i32 35, float %1550, float 0.000000e+00)  ; FMax(a,b)
  %1554 = call float @dx.op.binary.f32(i32 35, float %1551, float 0.000000e+00)  ; FMax(a,b)
  %1555 = fadd fast float %1552, %1090
  %1556 = fadd fast float %1553, %1091
  %1557 = fadd fast float %1554, %1092
  %1558 = fmul fast float %1555, %657
  %1559 = fmul fast float %1556, %657
  %1560 = fmul fast float %1557, %657
  %1561 = fsub fast float 1.000000e+00, %657
  %1562 = call float @dx.op.dot3.f32(i32 55, float %1561, float %1561, float %1561, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1563 = fsub fast float 1.000000e+00, %1562
  %1564 = fmul fast float %935, %916
  %1565 = fsub fast float 1.000000e+00, %936
  %1566 = fsub fast float %1565, %916
  %1567 = call float @dx.op.unary.f32(i32 7, float %1566)  ; Saturate(value)
  %1568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1569 = extractvalue %dx.types.CBufRet.f32 %1568, 3
  %1570 = fmul fast float %1569, %1567
  %1571 = fadd fast float %1570, %1564
  %1572 = and i32 %156, 1048576
  %1573 = icmp eq i32 %1572, 0
  br i1 %1573, label %1658, label %1574, !dx.controlflow.hints !79

; <label>:1574                                    ; preds = %1541
  %1575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1576 = extractvalue %dx.types.CBufRet.f32 %1575, 2
  %1577 = extractvalue %dx.types.CBufRet.f32 %1575, 3
  %1578 = fmul fast float %1576, %66
  %1579 = fmul fast float %1577, %67
  %1580 = call float @dx.op.unary.f32(i32 7, float %1578)  ; Saturate(value)
  %1581 = call float @dx.op.unary.f32(i32 7, float %1579)  ; Saturate(value)
  %1582 = select i1 %960, i32 2, i32 0
  %1583 = or i32 %1582, 1
  %1584 = uitofp i32 %1583 to float
  %1585 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1580, float %1581, float %1584, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1586 = extractvalue %dx.types.ResRet.f32 %1585, 0
  %1587 = extractvalue %dx.types.ResRet.f32 %1585, 1
  %1588 = extractvalue %dx.types.ResRet.f32 %1585, 2
  %1589 = extractvalue %dx.types.ResRet.f32 %1585, 3
  %1590 = add nuw nsw i32 %1582, 2
  %1591 = uitofp i32 %1590 to float
  %1592 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1580, float %1581, float %1591, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1593 = extractvalue %dx.types.ResRet.f32 %1592, 0
  %1594 = extractvalue %dx.types.ResRet.f32 %1592, 1
  %1595 = extractvalue %dx.types.ResRet.f32 %1592, 2
  %1596 = extractvalue %dx.types.ResRet.f32 %1592, 3
  %1597 = call float @dx.op.binary.f32(i32 35, float %1587, float %1588)  ; FMax(a,b)
  %1598 = call float @dx.op.binary.f32(i32 35, float %1586, float %1597)  ; FMax(a,b)
  %1599 = call float @dx.op.binary.f32(i32 35, float %1598, float %1589)  ; FMax(a,b)
  %1600 = call float @dx.op.binary.f32(i32 36, float %1594, float %1595)  ; FMin(a,b)
  %1601 = call float @dx.op.binary.f32(i32 36, float %1593, float %1600)  ; FMin(a,b)
  %1602 = call float @dx.op.binary.f32(i32 36, float %1601, float %1596)  ; FMin(a,b)
  %1603 = fmul fast float %1599, 2.550000e+02
  %1604 = fadd fast float %1603, 0x3F70101020000000
  %1605 = fptoui float %1604 to i32
  %1606 = fmul fast float %1602, 2.550000e+02
  %1607 = fadd fast float %1606, 0x3F70101020000000
  %1608 = fptoui float %1607 to i32
  %1609 = icmp ult i32 %1605, %1608
  br i1 %1609, label %1610, label %1651

; <label>:1610                                    ; preds = %1574
  %1611 = fcmp fast ogt float %58, 9.843750e-01
  %1612 = select i1 %1611, float -4.000000e+00, float %1140
  %1613 = call float @dx.op.binary.f32(i32 35, float %1612, float 0.000000e+00)  ; FMax(a,b)
  %1614 = fadd fast float %1137, %1613
  %1615 = fmul fast float %1614, %1138
  %1616 = call float @dx.op.unary.f32(i32 23, float %1615)  ; Log(value)
  %1617 = fmul fast float %1139, %1616
  %1618 = fmul fast float %1617, %1147
  %1619 = call float @dx.op.unary.f32(i32 7, float %1618)  ; Saturate(value)
  %1620 = uitofp i32 %1605 to float
  %1621 = uitofp i32 %1608 to float
  %1622 = fadd fast float %1620, 5.000000e-01
  %1623 = fadd fast float %1621, 5.000000e-01
  %1624 = fmul fast float %1147, %1622
  %1625 = fmul fast float %1147, %1623
  %1626 = fadd fast float %1624, 0x3F0FFB4800000000
  %1627 = fadd fast float %1625, 0xBF0FFB4800000000
  %1628 = call float @dx.op.binary.f32(i32 35, float %1619, float %1626)  ; FMax(a,b)
  %1629 = call float @dx.op.binary.f32(i32 36, float %1628, float %1627)  ; FMin(a,b)
  %1630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1631 = extractvalue %dx.types.CBufRet.f32 %1630, 1
  %1632 = extractvalue %dx.types.CBufRet.f32 %1630, 2
  %1633 = extractvalue %dx.types.CBufRet.f32 %1630, 0
  %1634 = select i1 %960, float %1633, float 0.000000e+00
  %1635 = fmul fast float %1631, %1629
  %1636 = fadd fast float %1634, %1635
  %1637 = fadd fast float %1634, %1632
  %1638 = fsub fast float %1631, %1632
  %1639 = fadd fast float %1638, %1634
  %1640 = call float @dx.op.binary.f32(i32 35, float %1636, float %1637)  ; FMax(a,b)
  %1641 = call float @dx.op.binary.f32(i32 36, float %1640, float %1639)  ; FMin(a,b)
  %1642 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %25, float %1580, float %1581, float %1641, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1643 = extractvalue %dx.types.ResRet.f32 %1642, 0
  %1644 = extractvalue %dx.types.ResRet.f32 %1642, 1
  %1645 = extractvalue %dx.types.ResRet.f32 %1642, 2
  %1646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1647 = extractvalue %dx.types.CBufRet.f32 %1646, 1
  %1648 = fmul fast float %1647, %1643
  %1649 = fmul fast float %1647, %1644
  %1650 = fmul fast float %1647, %1645
  br label %1651

; <label>:1651                                    ; preds = %1610, %1574
  %1652 = phi float [ %1648, %1610 ], [ 1.000000e+00, %1574 ]
  %1653 = phi float [ %1649, %1610 ], [ 1.000000e+00, %1574 ]
  %1654 = phi float [ %1650, %1610 ], [ 1.000000e+00, %1574 ]
  %1655 = fmul fast float %1652, %1558
  %1656 = fmul fast float %1653, %1559
  %1657 = fmul fast float %1654, %1560
  br label %1658

; <label>:1658                                    ; preds = %1651, %1541
  %1659 = phi float [ %1655, %1651 ], [ %1558, %1541 ]
  %1660 = phi float [ %1656, %1651 ], [ %1559, %1541 ]
  %1661 = phi float [ %1657, %1651 ], [ %1560, %1541 ]
  %1662 = and i32 %156, 2097152
  %1663 = icmp eq i32 %1662, 0
  br i1 %1663, label %1668, label %1664, !dx.controlflow.hints !80

; <label>:1664                                    ; preds = %1658
  %1665 = add i32 %153, 192
  %1666 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1665, i32 undef)  ; BufferLoad(srv,index,wot)
  %1667 = extractvalue %dx.types.ResRet.f32 %1666, 0
  br label %1671

; <label>:1668                                    ; preds = %1658
  %1669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1670 = extractvalue %dx.types.CBufRet.f32 %1669, 3
  br label %1671

; <label>:1671                                    ; preds = %1668, %1664
  %1672 = phi float [ %1667, %1664 ], [ %1670, %1668 ]
  %1673 = fmul fast float %881, %657
  %1674 = fmul fast float %1673, %972
  %1675 = fmul fast float %1674, %1108
  %1676 = fmul fast float %882, %657
  %1677 = fmul fast float %1676, %973
  %1678 = fmul fast float %1677, %1108
  %1679 = fmul fast float %883, %657
  %1680 = fmul fast float %1679, %974
  %1681 = fmul fast float %1680, %1108
  br i1 %955, label %1682, label %1815

; <label>:1682                                    ; preds = %1671
  %1683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1684 = extractvalue %dx.types.CBufRet.f32 %1683, 2
  %1685 = extractvalue %dx.types.CBufRet.f32 %1683, 3
  %1686 = fmul fast float %1684, %66
  %1687 = fmul fast float %1685, %67
  %1688 = call float @dx.op.unary.f32(i32 7, float %1686)  ; Saturate(value)
  %1689 = call float @dx.op.unary.f32(i32 7, float %1687)  ; Saturate(value)
  %1690 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1688, float %1689, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1691 = extractvalue %dx.types.ResRet.f32 %1690, 0
  %1692 = extractvalue %dx.types.ResRet.f32 %1690, 1
  %1693 = extractvalue %dx.types.ResRet.f32 %1690, 2
  %1694 = extractvalue %dx.types.ResRet.f32 %1690, 3
  %1695 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1688, float %1689, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1696 = extractvalue %dx.types.ResRet.f32 %1695, 0
  %1697 = extractvalue %dx.types.ResRet.f32 %1695, 1
  %1698 = extractvalue %dx.types.ResRet.f32 %1695, 2
  %1699 = extractvalue %dx.types.ResRet.f32 %1695, 3
  %1700 = call float @dx.op.binary.f32(i32 35, float %1692, float %1693)  ; FMax(a,b)
  %1701 = call float @dx.op.binary.f32(i32 35, float %1691, float %1700)  ; FMax(a,b)
  %1702 = call float @dx.op.binary.f32(i32 35, float %1701, float %1694)  ; FMax(a,b)
  %1703 = call float @dx.op.binary.f32(i32 36, float %1697, float %1698)  ; FMin(a,b)
  %1704 = call float @dx.op.binary.f32(i32 36, float %1696, float %1703)  ; FMin(a,b)
  %1705 = call float @dx.op.binary.f32(i32 36, float %1704, float %1699)  ; FMin(a,b)
  %1706 = fmul fast float %1702, 2.550000e+02
  %1707 = fadd fast float %1706, 0x3F70101020000000
  %1708 = fptoui float %1707 to i32
  %1709 = fmul fast float %1705, 2.550000e+02
  %1710 = fadd fast float %1709, 0x3F70101020000000
  %1711 = fptoui float %1710 to i32
  %1712 = icmp ult i32 %1708, %1711
  br i1 %1712, label %1713, label %1757

; <label>:1713                                    ; preds = %1682
  %1714 = fcmp fast ogt float %58, 9.843750e-01
  %1715 = select i1 %1714, float -4.000000e+00, float %1140
  %1716 = call float @dx.op.binary.f32(i32 35, float %1715, float 0.000000e+00)  ; FMax(a,b)
  %1717 = fadd fast float %1137, %1716
  %1718 = fmul fast float %1717, %1138
  %1719 = call float @dx.op.unary.f32(i32 23, float %1718)  ; Log(value)
  %1720 = fmul fast float %1139, %1719
  %1721 = fmul fast float %1720, %1147
  %1722 = call float @dx.op.unary.f32(i32 7, float %1721)  ; Saturate(value)
  %1723 = uitofp i32 %1708 to float
  %1724 = uitofp i32 %1711 to float
  %1725 = fadd fast float %1723, 5.000000e-01
  %1726 = fadd fast float %1724, 5.000000e-01
  %1727 = fmul fast float %1147, %1725
  %1728 = fmul fast float %1147, %1726
  %1729 = fadd fast float %1727, 0x3F0FFB4800000000
  %1730 = fadd fast float %1728, 0xBF0FFB4800000000
  %1731 = call float @dx.op.binary.f32(i32 35, float %1722, float %1729)  ; FMax(a,b)
  %1732 = call float @dx.op.binary.f32(i32 36, float %1731, float %1730)  ; FMin(a,b)
  %1733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1734 = extractvalue %dx.types.CBufRet.f32 %1733, 1
  %1735 = extractvalue %dx.types.CBufRet.f32 %1733, 2
  %1736 = extractvalue %dx.types.CBufRet.f32 %1733, 0
  %1737 = fmul fast float %1734, %1732
  %1738 = fadd fast float %1736, %1737
  %1739 = fadd fast float %1736, %1735
  %1740 = fsub fast float %1734, %1735
  %1741 = fadd fast float %1740, %1736
  %1742 = call float @dx.op.binary.f32(i32 35, float %1738, float %1739)  ; FMax(a,b)
  %1743 = call float @dx.op.binary.f32(i32 36, float %1742, float %1741)  ; FMin(a,b)
  %1744 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %1688, float %1689, float %1743, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1745 = extractvalue %dx.types.ResRet.f32 %1744, 0
  %1746 = extractvalue %dx.types.ResRet.f32 %1744, 1
  %1747 = extractvalue %dx.types.ResRet.f32 %1744, 2
  %1748 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %1688, float %1689, float %1743, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1749 = extractvalue %dx.types.ResRet.f32 %1748, 0
  %1750 = extractvalue %dx.types.ResRet.f32 %1748, 1
  %1751 = extractvalue %dx.types.ResRet.f32 %1748, 2
  %1752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1753 = extractvalue %dx.types.CBufRet.f32 %1752, 1
  %1754 = fmul fast float %1753, %1749
  %1755 = fmul fast float %1753, %1750
  %1756 = fmul fast float %1753, %1751
  br label %1757

; <label>:1757                                    ; preds = %1713, %1682
  %1758 = phi float [ %1745, %1713 ], [ 1.000000e+00, %1682 ]
  %1759 = phi float [ %1746, %1713 ], [ 1.000000e+00, %1682 ]
  %1760 = phi float [ %1747, %1713 ], [ 1.000000e+00, %1682 ]
  %1761 = phi float [ %1754, %1713 ], [ 0.000000e+00, %1682 ]
  %1762 = phi float [ %1755, %1713 ], [ 0.000000e+00, %1682 ]
  %1763 = phi float [ %1756, %1713 ], [ 0.000000e+00, %1682 ]
  %1764 = fmul fast float %1761, %1563
  %1765 = fmul fast float %1762, %1563
  %1766 = fmul fast float %1763, %1563
  %1767 = call float @dx.op.dot3.f32(i32 55, float %1758, float %1759, float %1760, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1768 = call float @dx.op.dot3.f32(i32 55, float %1764, float %1765, float %1766, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1769 = select i1 %136, float %1767, float %1758
  %1770 = select i1 %136, float %1767, float %1759
  %1771 = select i1 %136, float 1.000000e+00, float %1760
  %1772 = select i1 %136, float %1768, float %1764
  %1773 = select i1 %136, float 0.000000e+00, float %1765
  %1774 = select i1 %136, float 0.000000e+00, float %1766
  %1775 = fmul fast float %1769, %1675
  %1776 = fmul fast float %1770, %1678
  %1777 = fmul fast float %1771, %1681
  %1778 = fadd fast float %1775, %1772
  %1779 = fadd fast float %1776, %1773
  %1780 = fadd fast float %1774, %1777
  %1781 = fmul fast float %1769, %1659
  %1782 = fmul fast float %1770, %1660
  %1783 = fmul fast float %1771, %1661
  %1784 = fmul fast float %71, %1684
  %1785 = fmul fast float %73, %1685
  %1786 = fsub fast float 1.000000e+00, %1784
  %1787 = fsub fast float 1.000000e+00, %1785
  %1788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1789 = extractvalue %dx.types.CBufRet.f32 %1788, 0
  %1790 = extractvalue %dx.types.CBufRet.f32 %1788, 1
  %1791 = extractvalue %dx.types.CBufRet.f32 %1788, 2
  %1792 = fmul fast float %1786, %1789
  %1793 = fmul fast float %1786, %1790
  %1794 = fmul fast float %1786, %1791
  %1795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1796 = extractvalue %dx.types.CBufRet.f32 %1795, 0
  %1797 = extractvalue %dx.types.CBufRet.f32 %1795, 1
  %1798 = extractvalue %dx.types.CBufRet.f32 %1795, 2
  %1799 = fmul fast float %1787, %1796
  %1800 = fmul fast float %1787, %1797
  %1801 = fmul fast float %1787, %1798
  %1802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1803 = extractvalue %dx.types.CBufRet.f32 %1802, 0
  %1804 = extractvalue %dx.types.CBufRet.f32 %1802, 1
  %1805 = extractvalue %dx.types.CBufRet.f32 %1802, 2
  %1806 = fadd fast float %1799, %1803
  %1807 = fadd fast float %1806, %1792
  %1808 = fadd fast float %1800, %1804
  %1809 = fadd fast float %1808, %1793
  %1810 = fadd fast float %1801, %1805
  %1811 = fadd fast float %1810, %1794
  %1812 = fmul fast float %1807, %952
  %1813 = fmul fast float %1809, %952
  %1814 = fmul fast float %1811, %952
  br label %1815

; <label>:1815                                    ; preds = %1757, %1671
  %1816 = phi float [ %1812, %1757 ], [ %101, %1671 ]
  %1817 = phi float [ %1813, %1757 ], [ %102, %1671 ]
  %1818 = phi float [ %1814, %1757 ], [ %103, %1671 ]
  %1819 = phi float [ %952, %1757 ], [ %59, %1671 ]
  %1820 = phi float [ %1778, %1757 ], [ %1675, %1671 ]
  %1821 = phi float [ %1779, %1757 ], [ %1678, %1671 ]
  %1822 = phi float [ %1780, %1757 ], [ %1681, %1671 ]
  %1823 = phi float [ %1781, %1757 ], [ %1659, %1671 ]
  %1824 = phi float [ %1782, %1757 ], [ %1660, %1671 ]
  %1825 = phi float [ %1783, %1757 ], [ %1661, %1671 ]
  %1826 = phi float [ %1758, %1757 ], [ 1.000000e+00, %1671 ]
  br i1 %960, label %2882, label %1827

; <label>:1827                                    ; preds = %1815
  %1828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1829 = extractvalue %dx.types.CBufRet.f32 %1828, 0
  %1830 = extractvalue %dx.types.CBufRet.f32 %1828, 1
  %1831 = extractvalue %dx.types.CBufRet.f32 %1828, 2
  %1832 = extractvalue %dx.types.CBufRet.f32 %1828, 3
  %1833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1834 = extractvalue %dx.types.CBufRet.f32 %1833, 0
  %1835 = extractvalue %dx.types.CBufRet.f32 %1833, 1
  %1836 = extractvalue %dx.types.CBufRet.f32 %1833, 2
  %1837 = extractvalue %dx.types.CBufRet.f32 %1833, 3
  %1838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1839 = extractvalue %dx.types.CBufRet.f32 %1838, 0
  %1840 = extractvalue %dx.types.CBufRet.f32 %1838, 1
  %1841 = extractvalue %dx.types.CBufRet.f32 %1838, 2
  %1842 = extractvalue %dx.types.CBufRet.f32 %1838, 3
  %1843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1844 = extractvalue %dx.types.CBufRet.f32 %1843, 0
  %1845 = extractvalue %dx.types.CBufRet.f32 %1843, 1
  %1846 = extractvalue %dx.types.CBufRet.f32 %1843, 2
  %1847 = extractvalue %dx.types.CBufRet.f32 %1843, 3
  %1848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1849 = extractvalue %dx.types.CBufRet.f32 %1848, 3
  %1850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1851 = extractvalue %dx.types.CBufRet.f32 %1850, 3
  %1852 = extractvalue %dx.types.CBufRet.f32 %1850, 0
  %1853 = extractvalue %dx.types.CBufRet.f32 %1850, 1
  %1854 = extractvalue %dx.types.CBufRet.f32 %1850, 2
  %1855 = fcmp fast olt float %1854, -5.000000e-01
  %1856 = call float @dx.op.dot3.f32(i32 55, float %1816, float %1817, float %1818, float %1816, float %1817, float %1818)  ; Dot3(ax,ay,az,bx,by,bz)
  %1857 = call float @dx.op.unary.f32(i32 25, float %1856)  ; Rsqrt(value)
  %1858 = fmul fast float %1857, %1856
  %1859 = fmul fast float %1857, %1816
  %1860 = fmul fast float %1857, %1817
  %1861 = fmul fast float %1857, %1818
  %1862 = fadd fast float %1858, %1832
  %1863 = call float @dx.op.dot3.f32(i32 55, float %1859, float %1860, float %1861, float %1829, float %1830, float %1831)  ; Dot3(ax,ay,az,bx,by,bz)
  %1864 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1865 = extractvalue %dx.types.CBufRet.i32 %1864, 1
  %1866 = and i32 %1865, 1
  %1867 = icmp ne i32 %1866, 0
  %1868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1869 = extractvalue %dx.types.CBufRet.f32 %1868, 2
  %1870 = fcmp fast ogt float %1869, 0.000000e+00
  %1871 = and i1 %1867, %1870
  br i1 %1871, label %1872, label %2278, !dx.controlflow.hints !81

; <label>:1872                                    ; preds = %1827
  %1873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1874 = extractvalue %dx.types.CBufRet.f32 %1873, 3
  %1875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1876 = extractvalue %dx.types.CBufRet.f32 %1875, 2
  %1877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1878 = extractvalue %dx.types.CBufRet.f32 %1877, 2
  %1879 = fsub fast float %1876, %1878
  %1880 = and i32 %1865, 2
  %1881 = extractvalue %dx.types.CBufRet.i32 %1864, 0
  %1882 = call i32 @dx.op.binary.i32(i32 40, i32 %1881, i32 3)  ; UMin(a,b)
  %1883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1884 = extractvalue %dx.types.CBufRet.f32 %1883, 0
  %1885 = extractvalue %dx.types.CBufRet.f32 %1883, 1
  %1886 = extractvalue %dx.types.CBufRet.f32 %1877, 0
  %1887 = extractvalue %dx.types.CBufRet.f32 %1877, 1
  %1888 = fsub fast float %1884, %1886
  %1889 = fsub fast float %1885, %1887
  %1890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1891 = extractvalue %dx.types.CBufRet.f32 %1890, 0
  %1892 = fcmp fast ogt float %1891, 0.000000e+00
  %1893 = fsub fast float -0.000000e+00, %1888
  %1894 = fsub fast float -0.000000e+00, %1889
  %1895 = call float @dx.op.dot2.f32(i32 54, float %1859, float %1860, float %1859, float %1860)  ; Dot2(ax,ay,bx,by)
  %1896 = call float @dx.op.dot2.f32(i32 54, float %1859, float %1860, float %1893, float %1894)  ; Dot2(ax,ay,bx,by)
  %1897 = fmul fast float %1896, 2.000000e+00
  %1898 = call float @dx.op.dot2.f32(i32 54, float %1893, float %1894, float %1893, float %1894)  ; Dot2(ax,ay,bx,by)
  %1899 = fmul fast float %1891, %1891
  %1900 = fsub fast float %1898, %1899
  %1901 = fmul fast float %1897, %1897
  %1902 = fmul fast float %1895, 4.000000e+00
  %1903 = fmul fast float %1902, %1900
  %1904 = fsub fast float %1901, %1903
  %1905 = fcmp fast ogt float %1904, 0.000000e+00
  br i1 %1905, label %1906, label %1921

; <label>:1906                                    ; preds = %1872
  %1907 = fcmp fast ogt float %1897, 0.000000e+00
  %1908 = call float @dx.op.unary.f32(i32 24, float %1904)  ; Sqrt(value)
  %1909 = fsub fast float -0.000000e+00, %1908
  %1910 = select i1 %1907, float %1908, float %1909
  %1911 = fadd fast float %1910, %1897
  %1912 = fmul float %1911, -5.000000e-01
  %1913 = fdiv fast float %1912, %1895
  %1914 = call float @dx.op.binary.f32(i32 35, float %1913, float 0.000000e+00)  ; FMax(a,b)
  %1915 = call float @dx.op.binary.f32(i32 36, float %1858, float %1914)  ; FMin(a,b)
  %1916 = fdiv fast float %1900, %1912
  %1917 = call float @dx.op.binary.f32(i32 35, float %1916, float 0.000000e+00)  ; FMax(a,b)
  %1918 = call float @dx.op.binary.f32(i32 36, float %1858, float %1917)  ; FMin(a,b)
  %1919 = call float @dx.op.binary.f32(i32 36, float %1915, float %1918)  ; FMin(a,b)
  %1920 = call float @dx.op.binary.f32(i32 35, float %1915, float %1918)  ; FMax(a,b)
  br label %1921

; <label>:1921                                    ; preds = %1906, %1872
  %1922 = phi float [ %1920, %1906 ], [ -1.000000e+00, %1872 ]
  %1923 = phi float [ %1919, %1906 ], [ -1.000000e+00, %1872 ]
  %1924 = phi i1 [ true, %1906 ], [ false, %1872 ]
  %1925 = and i1 %1892, %1924
  br i1 %1925, label %1926, label %1928

; <label>:1926                                    ; preds = %1921
  %1927 = fcmp fast oeq float %1923, %1922
  br i1 %1927, label %2231, label %1929

; <label>:1928                                    ; preds = %1921
  br i1 %1892, label %2231, label %1929

; <label>:1929                                    ; preds = %1928, %1926
  %1930 = phi float [ %1858, %1928 ], [ %1922, %1926 ]
  %1931 = phi float [ 0.000000e+00, %1928 ], [ %1923, %1926 ]
  %1932 = icmp ne i32 %1880, 0
  %1933 = fmul fast float %1930, %1861
  %1934 = fadd fast float %1933, %1874
  %1935 = fmul fast float %1934, %1930
  %1936 = select i1 %1932, float 0.000000e+00, float %1935
  %1937 = fcmp fast oeq float %1861, 0.000000e+00
  %1938 = fdiv fast float %1879, %1861
  %1939 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1938)  ; FMax(a,b)
  %1940 = select i1 %1937, float %1930, float %1939
  %1941 = call float @dx.op.binary.f32(i32 36, float %1930, float %1940)  ; FMin(a,b)
  %1942 = fcmp fast ogt float %1861, 0.000000e+00
  %1943 = fcmp fast olt float %1879, 0.000000e+00
  br i1 %1942, label %1944, label %2001

; <label>:1944                                    ; preds = %1929
  %1945 = icmp eq i32 %1880, 0
  br i1 %1943, label %1946, label %1990

; <label>:1946                                    ; preds = %1944
  %1947 = select i1 %1945, float %1930, float 0.000000e+00
  %1948 = fsub fast float -0.000000e+00, %1947
  %1949 = call float @dx.op.unary.f32(i32 6, float %1948)  ; FAbs(value)
  %1950 = fmul fast float %1947, %1861
  %1951 = fadd fast float %1950, %1874
  %1952 = fmul fast float %1949, %1951
  %1953 = fsub fast float %1936, %1952
  %1954 = fsub fast float %1930, %1949
  %1955 = select i1 %1945, float %1954, float 0.000000e+00
  %1956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1957 = extractvalue %dx.types.CBufRet.f32 %1956, 0
  %1958 = extractvalue %dx.types.CBufRet.f32 %1956, 1
  %1959 = extractvalue %dx.types.CBufRet.f32 %1956, 2
  %1960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1961 = extractvalue %dx.types.CBufRet.f32 %1960, 0
  %1962 = extractvalue %dx.types.CBufRet.f32 %1960, 1
  %1963 = extractvalue %dx.types.CBufRet.f32 %1960, 2
  %1964 = extractvalue %dx.types.CBufRet.f32 %1960, 3
  %1965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1966 = extractvalue %dx.types.CBufRet.f32 %1965, 3
  %1967 = call float @dx.op.binary.f32(i32 36, float %1953, float %1966)  ; FMin(a,b)
  %1968 = fmul fast float %1964, %1955
  %1969 = call float @dx.op.unary.f32(i32 7, float %1968)  ; Saturate(value)
  %1970 = fsub fast float %1961, %1957
  %1971 = fsub fast float %1962, %1958
  %1972 = fsub fast float %1963, %1959
  %1973 = fmul fast float %1969, %1970
  %1974 = fmul fast float %1969, %1971
  %1975 = fmul fast float %1969, %1972
  %1976 = fadd fast float %1973, %1957
  %1977 = fadd fast float %1974, %1958
  %1978 = fadd fast float %1975, %1959
  %1979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1980 = extractvalue %dx.types.CBufRet.f32 %1979, 0
  %1981 = extractvalue %dx.types.CBufRet.f32 %1979, 1
  %1982 = fadd fast float %1981, %1980
  %1983 = call float @dx.op.unary.f32(i32 7, float %1982)  ; Saturate(value)
  %1984 = extractvalue %dx.types.CBufRet.f32 %1979, 2
  %1985 = extractvalue %dx.types.CBufRet.f32 %1979, 3
  %1986 = fadd fast float %1985, %1984
  %1987 = call float @dx.op.unary.f32(i32 7, float %1986)  ; Saturate(value)
  %1988 = fmul fast float %1983, %1967
  %1989 = fmul fast float %1988, %1987
  br label %2231

; <label>:1990                                    ; preds = %1944
  br i1 %1945, label %1991, label %2012

; <label>:1991                                    ; preds = %1990
  %1992 = call float @dx.op.binary.f32(i32 36, float %1941, float %1931)  ; FMin(a,b)
  %1993 = fsub fast float %1941, %1992
  %1994 = fsub fast float %1993, %1930
  %1995 = call float @dx.op.unary.f32(i32 6, float %1994)  ; FAbs(value)
  %1996 = fadd fast float %1993, %1930
  %1997 = fmul fast float %1996, %1861
  %1998 = fadd fast float %1997, %1874
  %1999 = fmul fast float %1998, %1995
  %2000 = fsub fast float %1936, %1999
  br label %2012

; <label>:2001                                    ; preds = %1929
  br i1 %1943, label %2002, label %2012

; <label>:2002                                    ; preds = %2001
  %2003 = call float @dx.op.binary.f32(i32 35, float %1931, float %1941)  ; FMax(a,b)
  %2004 = icmp eq i32 %1880, 0
  %2005 = select i1 %2004, float %1941, float 0.000000e+00
  %2006 = fsub fast float -0.000000e+00, %2005
  %2007 = call float @dx.op.unary.f32(i32 6, float %2006)  ; FAbs(value)
  %2008 = fmul fast float %2005, %1861
  %2009 = fadd fast float %2008, %1874
  %2010 = fmul fast float %2007, %2009
  %2011 = fsub fast float %1936, %2010
  br label %2012

; <label>:2012                                    ; preds = %2002, %2001, %1991, %1990
  %2013 = phi float [ %1931, %1990 ], [ %1931, %1991 ], [ %2003, %2002 ], [ %1931, %2001 ]
  %2014 = phi float [ 0.000000e+00, %1990 ], [ %1995, %1991 ], [ %2007, %2002 ], [ 0.000000e+00, %2001 ]
  %2015 = phi float [ %1936, %1990 ], [ %2000, %1991 ], [ %2011, %2002 ], [ %1936, %2001 ]
  %2016 = phi float [ %1941, %1990 ], [ %1941, %1991 ], [ %1930, %2002 ], [ %1930, %2001 ]
  %2017 = getelementptr inbounds [3 x float], [3 x float]* %60, i32 0, i32 0
  store float -1.000000e+00, float* %2017, align 4, !tbaa !82, !noalias !86
  %2018 = getelementptr inbounds [3 x float], [3 x float]* %60, i32 0, i32 1
  store float -1.000000e+00, float* %2018, align 4, !tbaa !82, !noalias !86
  %2019 = getelementptr inbounds [3 x float], [3 x float]* %60, i32 0, i32 2
  store float -1.000000e+00, float* %2019, align 4, !tbaa !82, !noalias !86
  %2020 = getelementptr inbounds [3 x float], [3 x float]* %61, i32 0, i32 0
  store float -1.000000e+00, float* %2020, align 4, !tbaa !82, !noalias !86
  %2021 = getelementptr inbounds [3 x float], [3 x float]* %61, i32 0, i32 1
  store float -1.000000e+00, float* %2021, align 4, !tbaa !82, !noalias !86
  %2022 = getelementptr inbounds [3 x float], [3 x float]* %61, i32 0, i32 2
  store float -1.000000e+00, float* %2022, align 4, !tbaa !82, !noalias !86
  %2023 = icmp sgt i32 %1882, 0
  br i1 %2023, label %2024, label %2085

; <label>:2024                                    ; preds = %2012
  br label %2025

; <label>:2025                                    ; preds = %2074, %2024
  %2026 = phi i32 [ %2075, %2074 ], [ 0, %2024 ]
  %2027 = phi i32 [ %2076, %2074 ], [ 0, %2024 ]
  %2028 = add nuw i32 %2027, 171
  %2029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 %2028)  ; CBufferLoadLegacy(handle,regIndex)
  %2030 = extractvalue %dx.types.CBufRet.f32 %2029, 0
  %2031 = extractvalue %dx.types.CBufRet.f32 %2029, 1
  %2032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2033 = extractvalue %dx.types.CBufRet.f32 %2032, 0
  %2034 = extractvalue %dx.types.CBufRet.f32 %2032, 1
  %2035 = fsub fast float %2030, %2033
  %2036 = fsub fast float %2031, %2034
  %2037 = extractvalue %dx.types.CBufRet.f32 %2029, 2
  %2038 = fsub fast float -0.000000e+00, %2035
  %2039 = fsub fast float -0.000000e+00, %2036
  %2040 = call float @dx.op.dot2.f32(i32 54, float %1859, float %1860, float %2038, float %2039)  ; Dot2(ax,ay,bx,by)
  %2041 = fmul fast float %2040, 2.000000e+00
  %2042 = call float @dx.op.dot2.f32(i32 54, float %2038, float %2039, float %2038, float %2039)  ; Dot2(ax,ay,bx,by)
  %2043 = fmul fast float %2037, %2037
  %2044 = fsub fast float %2042, %2043
  %2045 = fmul fast float %2041, %2041
  %2046 = fmul fast float %1902, %2044
  %2047 = fsub fast float %2045, %2046
  %2048 = fcmp fast ogt float %2047, 0.000000e+00
  br i1 %2048, label %2049, label %2064

; <label>:2049                                    ; preds = %2025
  %2050 = fcmp fast ogt float %2041, 0.000000e+00
  %2051 = call float @dx.op.unary.f32(i32 24, float %2047)  ; Sqrt(value)
  %2052 = fsub fast float -0.000000e+00, %2051
  %2053 = select i1 %2050, float %2051, float %2052
  %2054 = fadd fast float %2053, %2041
  %2055 = fmul float %2054, -5.000000e-01
  %2056 = fdiv fast float %2055, %1895
  %2057 = call float @dx.op.binary.f32(i32 35, float %2056, float 0.000000e+00)  ; FMax(a,b)
  %2058 = call float @dx.op.binary.f32(i32 36, float %1930, float %2057)  ; FMin(a,b)
  %2059 = fdiv fast float %2044, %2055
  %2060 = call float @dx.op.binary.f32(i32 35, float %2059, float 0.000000e+00)  ; FMax(a,b)
  %2061 = call float @dx.op.binary.f32(i32 36, float %1930, float %2060)  ; FMin(a,b)
  %2062 = call float @dx.op.binary.f32(i32 36, float %2058, float %2061)  ; FMin(a,b)
  %2063 = call float @dx.op.binary.f32(i32 35, float %2058, float %2061)  ; FMax(a,b)
  br label %2064

; <label>:2064                                    ; preds = %2049, %2025
  %2065 = phi float [ %2063, %2049 ], [ -1.000000e+00, %2025 ]
  %2066 = phi float [ %2062, %2049 ], [ -1.000000e+00, %2025 ]
  %2067 = phi i1 [ true, %2049 ], [ false, %2025 ]
  br i1 %2067, label %2068, label %2074

; <label>:2068                                    ; preds = %2064
  %2069 = call float @dx.op.binary.f32(i32 35, float %2013, float %2066)  ; FMax(a,b)
  %2070 = getelementptr inbounds [3 x float], [3 x float]* %60, i32 0, i32 %2027
  store float %2069, float* %2070, align 4, !tbaa !82, !noalias !86
  %2071 = call float @dx.op.binary.f32(i32 35, float %2013, float %2065)  ; FMax(a,b)
  %2072 = getelementptr inbounds [3 x float], [3 x float]* %61, i32 0, i32 %2027
  store float %2071, float* %2072, align 4, !tbaa !82, !noalias !86
  %2073 = add nsw i32 %2026, 1
  br label %2074

; <label>:2074                                    ; preds = %2068, %2064
  %2075 = phi i32 [ %2073, %2068 ], [ %2026, %2064 ]
  %2076 = add nuw nsw i32 %2027, 1
  %2077 = icmp eq i32 %2076, %1882
  br i1 %2077, label %2078, label %2025

; <label>:2078                                    ; preds = %2074
  %2079 = load float, float* %2019, align 4, !tbaa !82, !alias.scope !102, !noalias !105
  %2080 = load float, float* %2018, align 4, !tbaa !82, !alias.scope !108, !noalias !109
  %2081 = load float, float* %2017, align 4, !tbaa !82, !alias.scope !110, !noalias !111
  %2082 = load float, float* %2022, align 4, !tbaa !82, !alias.scope !112, !noalias !115
  %2083 = load float, float* %2021, align 4, !tbaa !82, !alias.scope !118, !noalias !119
  %2084 = load float, float* %2020, align 4, !tbaa !82, !alias.scope !120, !noalias !121
  br label %2085

; <label>:2085                                    ; preds = %2078, %2012
  %2086 = phi float [ -1.000000e+00, %2012 ], [ %2084, %2078 ]
  %2087 = phi float [ -1.000000e+00, %2012 ], [ %2083, %2078 ]
  %2088 = phi float [ -1.000000e+00, %2012 ], [ %2082, %2078 ]
  %2089 = phi float [ -1.000000e+00, %2012 ], [ %2081, %2078 ]
  %2090 = phi float [ -1.000000e+00, %2012 ], [ %2080, %2078 ]
  %2091 = phi float [ -1.000000e+00, %2012 ], [ %2079, %2078 ]
  %2092 = phi i32 [ 0, %2012 ], [ %2075, %2078 ]
  %2093 = call float @dx.op.binary.f32(i32 36, float %2090, float %2091)  ; FMin(a,b)
  %2094 = call float @dx.op.binary.f32(i32 36, float %2089, float %2093)  ; FMin(a,b)
  %2095 = call float @dx.op.binary.f32(i32 35, float %2089, float %2090)  ; FMax(a,b)
  %2096 = call float @dx.op.binary.f32(i32 36, float %2095, float %2091)  ; FMin(a,b)
  %2097 = call float @dx.op.binary.f32(i32 36, float %2089, float %2090)  ; FMin(a,b)
  %2098 = call float @dx.op.binary.f32(i32 35, float %2097, float %2096)  ; FMax(a,b)
  %2099 = call float @dx.op.binary.f32(i32 35, float %2090, float %2091)  ; FMax(a,b)
  %2100 = call float @dx.op.binary.f32(i32 35, float %2089, float %2099)  ; FMax(a,b)
  store float %2094, float* %2017, align 4, !tbaa !82, !alias.scope !110, !noalias !111
  store float %2098, float* %2018, align 4, !tbaa !82, !alias.scope !108, !noalias !109
  store float %2100, float* %2019, align 4, !tbaa !82, !alias.scope !102, !noalias !105
  %2101 = call float @dx.op.binary.f32(i32 36, float %2087, float %2088)  ; FMin(a,b)
  %2102 = call float @dx.op.binary.f32(i32 36, float %2086, float %2101)  ; FMin(a,b)
  %2103 = call float @dx.op.binary.f32(i32 35, float %2086, float %2087)  ; FMax(a,b)
  %2104 = call float @dx.op.binary.f32(i32 36, float %2103, float %2088)  ; FMin(a,b)
  %2105 = call float @dx.op.binary.f32(i32 36, float %2086, float %2087)  ; FMin(a,b)
  %2106 = call float @dx.op.binary.f32(i32 35, float %2105, float %2104)  ; FMax(a,b)
  %2107 = call float @dx.op.binary.f32(i32 35, float %2087, float %2088)  ; FMax(a,b)
  %2108 = call float @dx.op.binary.f32(i32 35, float %2086, float %2107)  ; FMax(a,b)
  store float %2102, float* %2020, align 4, !tbaa !82, !alias.scope !120, !noalias !121
  store float %2106, float* %2021, align 4, !tbaa !82, !alias.scope !118, !noalias !119
  store float %2108, float* %2022, align 4, !tbaa !82, !alias.scope !112, !noalias !115
  %2109 = sub nsw i32 3, %2092
  %2110 = icmp sgt i32 %2109, 2
  br i1 %2110, label %2111, label %2149

; <label>:2111                                    ; preds = %2085
  %2112 = icmp eq i32 %1880, 0
  %2113 = fsub fast float %1930, %2014
  %2114 = select i1 %2112, float %2113, float %2014
  %2115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2116 = extractvalue %dx.types.CBufRet.f32 %2115, 0
  %2117 = extractvalue %dx.types.CBufRet.f32 %2115, 1
  %2118 = extractvalue %dx.types.CBufRet.f32 %2115, 2
  %2119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2120 = extractvalue %dx.types.CBufRet.f32 %2119, 0
  %2121 = extractvalue %dx.types.CBufRet.f32 %2119, 1
  %2122 = extractvalue %dx.types.CBufRet.f32 %2119, 2
  %2123 = extractvalue %dx.types.CBufRet.f32 %2119, 3
  %2124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2125 = extractvalue %dx.types.CBufRet.f32 %2124, 3
  %2126 = call float @dx.op.binary.f32(i32 36, float %2015, float %2125)  ; FMin(a,b)
  %2127 = fmul fast float %2123, %2114
  %2128 = call float @dx.op.unary.f32(i32 7, float %2127)  ; Saturate(value)
  %2129 = fsub fast float %2120, %2116
  %2130 = fsub fast float %2121, %2117
  %2131 = fsub fast float %2122, %2118
  %2132 = fmul fast float %2128, %2129
  %2133 = fmul fast float %2128, %2130
  %2134 = fmul fast float %2128, %2131
  %2135 = fadd fast float %2132, %2116
  %2136 = fadd fast float %2133, %2117
  %2137 = fadd fast float %2134, %2118
  %2138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2139 = extractvalue %dx.types.CBufRet.f32 %2138, 0
  %2140 = extractvalue %dx.types.CBufRet.f32 %2138, 1
  %2141 = fadd fast float %2140, %2139
  %2142 = call float @dx.op.unary.f32(i32 7, float %2141)  ; Saturate(value)
  %2143 = extractvalue %dx.types.CBufRet.f32 %2138, 2
  %2144 = extractvalue %dx.types.CBufRet.f32 %2138, 3
  %2145 = fadd fast float %2144, %2143
  %2146 = call float @dx.op.unary.f32(i32 7, float %2145)  ; Saturate(value)
  %2147 = fmul fast float %2142, %2126
  %2148 = fmul fast float %2147, %2146
  br label %2231

; <label>:2149                                    ; preds = %2085
  %2150 = getelementptr inbounds [3 x float], [3 x float]* %60, i32 0, i32 %2109
  %2151 = load float, float* %2150, align 4, !tbaa !82, !noalias !86
  %2152 = fcmp fast olt float %2151, %2016
  %2153 = icmp sgt i32 %2092, 0
  %2154 = and i1 %2153, %2152
  br i1 %2154, label %2155, label %2192

; <label>:2155                                    ; preds = %2149
  br label %2156

; <label>:2156                                    ; preds = %2185, %2155
  %2157 = phi float [ %2186, %2185 ], [ %2014, %2155 ]
  %2158 = phi float [ %2187, %2185 ], [ %2015, %2155 ]
  %2159 = phi float [ %2167, %2185 ], [ %2151, %2155 ]
  %2160 = phi i32 [ %2164, %2185 ], [ %2109, %2155 ]
  %2161 = getelementptr inbounds [3 x float], [3 x float]* %61, i32 0, i32 %2160
  %2162 = load float, float* %2161, align 4, !tbaa !82, !noalias !86
  %2163 = icmp slt i32 %2160, 2
  %2164 = add nsw i32 %2160, 1
  %2165 = getelementptr inbounds [3 x float], [3 x float]* %60, i32 0, i32 %2164
  %2166 = load float, float* %2165, align 4, !tbaa !82, !noalias !86
  %2167 = select i1 %2163, float %2166, float %1930
  %2168 = call float @dx.op.binary.f32(i32 36, float %2167, float %2162)  ; FMin(a,b)
  %2169 = call float @dx.op.binary.f32(i32 36, float %2016, float %2168)  ; FMin(a,b)
  %2170 = icmp eq i32 %1880, 0
  %2171 = fadd fast float %2169, %2159
  %2172 = fmul fast float %2171, %1861
  %2173 = fadd fast float %2172, %1874
  br i1 %2170, label %2179, label %2174

; <label>:2174                                    ; preds = %2156
  %2175 = fsub fast float %2169, %2159
  %2176 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2175)  ; FMax(a,b)
  %2177 = fmul fast float %2176, %2173
  %2178 = fadd fast float %2177, %2158
  br label %2185

; <label>:2179                                    ; preds = %2156
  %2180 = fsub fast float %2159, %2169
  %2181 = call float @dx.op.unary.f32(i32 6, float %2180)  ; FAbs(value)
  %2182 = fadd fast float %2181, %2157
  %2183 = fmul fast float %2181, %2173
  %2184 = fsub fast float %2158, %2183
  br label %2185

; <label>:2185                                    ; preds = %2179, %2174
  %2186 = phi float [ %2176, %2174 ], [ %2182, %2179 ]
  %2187 = phi float [ %2178, %2174 ], [ %2184, %2179 ]
  %2188 = fcmp fast olt float %2167, %2016
  %2189 = icmp slt i32 %2164, 3
  %2190 = and i1 %2189, %2188
  br i1 %2190, label %2156, label %2191

; <label>:2191                                    ; preds = %2185
  br label %2192

; <label>:2192                                    ; preds = %2191, %2149
  %2193 = phi float [ %2014, %2149 ], [ %2186, %2191 ]
  %2194 = phi float [ %2015, %2149 ], [ %2187, %2191 ]
  %2195 = fsub fast float %1930, %2193
  %2196 = select i1 %1932, float %2193, float %2195
  %2197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2198 = extractvalue %dx.types.CBufRet.f32 %2197, 0
  %2199 = extractvalue %dx.types.CBufRet.f32 %2197, 1
  %2200 = extractvalue %dx.types.CBufRet.f32 %2197, 2
  %2201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2202 = extractvalue %dx.types.CBufRet.f32 %2201, 0
  %2203 = extractvalue %dx.types.CBufRet.f32 %2201, 1
  %2204 = extractvalue %dx.types.CBufRet.f32 %2201, 2
  %2205 = extractvalue %dx.types.CBufRet.f32 %2201, 3
  %2206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2207 = extractvalue %dx.types.CBufRet.f32 %2206, 3
  %2208 = call float @dx.op.binary.f32(i32 36, float %2194, float %2207)  ; FMin(a,b)
  %2209 = fmul fast float %2205, %2196
  %2210 = call float @dx.op.unary.f32(i32 7, float %2209)  ; Saturate(value)
  %2211 = fsub fast float %2202, %2198
  %2212 = fsub fast float %2203, %2199
  %2213 = fsub fast float %2204, %2200
  %2214 = fmul fast float %2210, %2211
  %2215 = fmul fast float %2210, %2212
  %2216 = fmul fast float %2210, %2213
  %2217 = fadd fast float %2214, %2198
  %2218 = fadd fast float %2215, %2199
  %2219 = fadd fast float %2216, %2200
  %2220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2221 = extractvalue %dx.types.CBufRet.f32 %2220, 0
  %2222 = extractvalue %dx.types.CBufRet.f32 %2220, 1
  %2223 = fadd fast float %2222, %2221
  %2224 = call float @dx.op.unary.f32(i32 7, float %2223)  ; Saturate(value)
  %2225 = extractvalue %dx.types.CBufRet.f32 %2220, 2
  %2226 = extractvalue %dx.types.CBufRet.f32 %2220, 3
  %2227 = fadd fast float %2226, %2225
  %2228 = call float @dx.op.unary.f32(i32 7, float %2227)  ; Saturate(value)
  %2229 = fmul fast float %2224, %2208
  %2230 = fmul fast float %2229, %2228
  br label %2231

; <label>:2231                                    ; preds = %2192, %2111, %1946, %1928, %1926
  %2232 = phi float [ %1955, %1946 ], [ %2114, %2111 ], [ %2196, %2192 ], [ 0.000000e+00, %1926 ], [ 0.000000e+00, %1928 ]
  %2233 = phi float [ %1989, %1946 ], [ %2148, %2111 ], [ %2230, %2192 ], [ 0.000000e+00, %1926 ], [ 0.000000e+00, %1928 ]
  %2234 = phi float [ %1976, %1946 ], [ %2135, %2111 ], [ %2217, %2192 ], [ 0.000000e+00, %1926 ], [ 0.000000e+00, %1928 ]
  %2235 = phi float [ %1977, %1946 ], [ %2136, %2111 ], [ %2218, %2192 ], [ 0.000000e+00, %1926 ], [ 0.000000e+00, %1928 ]
  %2236 = phi float [ %1978, %1946 ], [ %2137, %2111 ], [ %2219, %2192 ], [ 0.000000e+00, %1926 ], [ 0.000000e+00, %1928 ]
  %2237 = fmul fast float %1869, %2233
  %2238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2239 = extractvalue %dx.types.CBufRet.f32 %2238, 2
  %2240 = fsub fast float %1876, %2239
  %2241 = fcmp fast olt float %2237, -2.000000e+01
  %2242 = call float @dx.op.unary.f32(i32 21, float %2237)  ; Exp(value)
  %2243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2244 = extractvalue %dx.types.CBufRet.f32 %2243, 2
  %2245 = extractvalue %dx.types.CBufRet.f32 %2243, 3
  %2246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2247 = extractvalue %dx.types.CBufRet.f32 %2246, 2
  %2248 = fmul fast float %2245, %2240
  %2249 = call float @dx.op.unary.f32(i32 7, float %2248)  ; Saturate(value)
  %2250 = fsub fast float 1.000000e+00, %2249
  %2251 = fmul fast float %1861, 5.000000e-01
  %2252 = fadd fast float %2251, 5.000000e-01
  %2253 = call float @dx.op.unary.f32(i32 7, float %2252)  ; Saturate(value)
  %2254 = fsub fast float 1.000000e+00, %2253
  %2255 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2250)  ; FMax(a,b)
  %2256 = fdiv fast float %2254, %2255
  %2257 = fsub fast float %2240, %1818
  %2258 = call float @dx.op.unary.f32(i32 6, float %2257)  ; FAbs(value)
  %2259 = fmul fast float %2258, %2244
  %2260 = call float @dx.op.unary.f32(i32 7, float %2256)  ; Saturate(value)
  %2261 = fsub fast float 1.000000e+00, %2259
  %2262 = fmul fast float %2261, %2260
  %2263 = fadd fast float %2262, %2259
  %2264 = fmul fast float %2247, %2240
  %2265 = call float @dx.op.unary.f32(i32 7, float %2264)  ; Saturate(value)
  %2266 = fsub fast float 1.000000e+00, %2263
  %2267 = fmul fast float %2266, %2265
  %2268 = fadd fast float %2267, %2263
  %2269 = call float @dx.op.unary.f32(i32 7, float %2268)  ; Saturate(value)
  %2270 = fadd fast float %2242, -1.000000e+00
  %2271 = select i1 %2241, float -1.000000e+00, float %2270
  %2272 = fmul fast float %2269, %2271
  %2273 = fadd fast float %2272, 1.000000e+00
  %2274 = fsub fast float -0.000000e+00, %2272
  %2275 = fmul fast float %2234, %2274
  %2276 = fmul fast float %2235, %2274
  %2277 = fmul fast float %2236, %2274
  br label %2278

; <label>:2278                                    ; preds = %2231, %1827
  %2279 = phi float [ %2232, %2231 ], [ 0.000000e+00, %1827 ]
  %2280 = phi float [ %2273, %2231 ], [ 1.000000e+00, %1827 ]
  %2281 = phi float [ %2275, %2231 ], [ 0.000000e+00, %1827 ]
  %2282 = phi float [ %2276, %2231 ], [ 0.000000e+00, %1827 ]
  %2283 = phi float [ %2277, %2231 ], [ 0.000000e+00, %1827 ]
  %2284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2285 = extractvalue %dx.types.CBufRet.f32 %2284, 1
  %2286 = fsub fast float 1.000000e+00, %2280
  %2287 = fmul fast float %2286, %1862
  %2288 = fmul fast float %2287, %2285
  %2289 = fsub fast float %1862, %2288
  br i1 %1855, label %2290, label %2319, !dx.controlflow.hints !122

; <label>:2290                                    ; preds = %2278
  %2291 = fmul fast float %1863, %1852
  %2292 = fadd fast float %2291, %1853
  %2293 = call float @dx.op.unary.f32(i32 7, float %2292)  ; Saturate(value)
  %2294 = fmul fast float %1834, %2289
  %2295 = fsub fast float -0.000000e+00, %2294
  %2296 = fmul fast float %1835, %2289
  %2297 = fsub fast float -0.000000e+00, %2296
  %2298 = call float @dx.op.unary.f32(i32 21, float %2295)  ; Exp(value)
  %2299 = call float @dx.op.unary.f32(i32 21, float %2297)  ; Exp(value)
  %2300 = call float @dx.op.binary.f32(i32 35, float %1842, float %2298)  ; FMax(a,b)
  %2301 = call float @dx.op.binary.f32(i32 35, float %1842, float %2299)  ; FMax(a,b)
  %2302 = fsub fast float %2301, %2300
  %2303 = fmul fast float %2302, %2293
  %2304 = fadd fast float %2303, %2300
  %2305 = call float @dx.op.unary.f32(i32 7, float %2304)  ; Saturate(value)
  %2306 = fsub fast float %1839, %1844
  %2307 = fsub fast float %1840, %1845
  %2308 = fsub fast float %1841, %1846
  %2309 = fmul fast float %2293, %2306
  %2310 = fmul fast float %2293, %2307
  %2311 = fmul fast float %2293, %2308
  %2312 = fadd fast float %2309, %1844
  %2313 = fadd fast float %2310, %1845
  %2314 = fadd fast float %2311, %1846
  %2315 = fsub fast float 1.000000e+00, %2305
  %2316 = fmul fast float %2315, %2312
  %2317 = fmul fast float %2315, %2313
  %2318 = fmul fast float %2315, %2314
  br label %2378

; <label>:2319                                    ; preds = %2278
  %2320 = fmul fast float %2289, %1851
  %2321 = call float @dx.op.unary.f32(i32 7, float %2320)  ; Saturate(value)
  %2322 = fsub fast float 2.000000e+00, %2321
  %2323 = fmul fast float %2321, 9.921875e-01
  %2324 = fmul fast float %2323, %2322
  %2325 = fadd fast float %2324, 3.906250e-03
  %2326 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %26, float %2325, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2327 = extractvalue %dx.types.ResRet.f32 %2326, 0
  %2328 = fsub fast float %2321, %2327
  %2329 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2328)  ; FMax(a,b)
  %2330 = fmul fast float %1837, %1818
  %2331 = call float @dx.op.unary.f32(i32 6, float %2330)  ; FAbs(value)
  %2332 = fcmp fast ogt float %2331, 0x3EB0C6F7A0000000
  br i1 %2332, label %2333, label %2339, !dx.controlflow.hints !123

; <label>:2333                                    ; preds = %2319
  %2334 = fmul fast float %2330, 0xBFF7154760000000
  %2335 = call float @dx.op.unary.f32(i32 21, float %2334)  ; Exp(value)
  %2336 = fsub fast float 1.000000e+00, %2335
  %2337 = fdiv fast float %2336, %2330
  %2338 = fmul fast float %2337, %1847
  br label %2339

; <label>:2339                                    ; preds = %2333, %2319
  %2340 = phi float [ %2338, %2333 ], [ %1847, %2319 ]
  %2341 = fadd fast float %2340, %1849
  %2342 = fmul fast float %2341, %2329
  %2343 = fmul fast float %1834, %2342
  %2344 = fsub fast float -0.000000e+00, %2343
  %2345 = fmul fast float %1835, %2342
  %2346 = fsub fast float -0.000000e+00, %2345
  %2347 = fmul fast float %1836, %2342
  %2348 = fsub fast float -0.000000e+00, %2347
  %2349 = call float @dx.op.unary.f32(i32 21, float %2344)  ; Exp(value)
  %2350 = call float @dx.op.unary.f32(i32 21, float %2346)  ; Exp(value)
  %2351 = call float @dx.op.unary.f32(i32 21, float %2348)  ; Exp(value)
  %2352 = fmul fast float %1863, %1863
  %2353 = fadd fast float %2352, 1.000000e+00
  %2354 = fmul fast float %2353, 0x3FAE8EC8A0000000
  %2355 = fmul fast float %2354, %1844
  %2356 = fmul fast float %2354, %1845
  %2357 = fmul fast float %2354, %1846
  %2358 = fmul fast float %1863, %1842
  %2359 = fsub fast float 1.000000e+00, %2358
  %2360 = fmul fast float %1842, %1842
  %2361 = fsub fast float 1.000000e+00, %2360
  %2362 = fmul fast float %2361, 0x3FB45F3060000000
  %2363 = fmul fast float %2359, %2359
  %2364 = fdiv fast float 1.000000e+00, %2363
  %2365 = fmul fast float %2362, %2364
  %2366 = fmul fast float %2365, %1839
  %2367 = fmul fast float %2365, %1840
  %2368 = fmul fast float %2365, %1841
  %2369 = fadd fast float %2366, %2355
  %2370 = fadd fast float %2367, %2356
  %2371 = fadd fast float %2368, %2357
  %2372 = fsub fast float 1.000000e+00, %2349
  %2373 = fsub fast float 1.000000e+00, %2350
  %2374 = fsub fast float 1.000000e+00, %2351
  %2375 = fmul fast float %2369, %2372
  %2376 = fmul fast float %2370, %2373
  %2377 = fmul fast float %2371, %2374
  br label %2378

; <label>:2378                                    ; preds = %2339, %2290
  %2379 = phi float [ %2316, %2290 ], [ %2375, %2339 ]
  %2380 = phi float [ %2317, %2290 ], [ %2376, %2339 ]
  %2381 = phi float [ %2318, %2290 ], [ %2377, %2339 ]
  %2382 = phi float [ %2305, %2290 ], [ %2349, %2339 ]
  %2383 = phi float [ %2305, %2290 ], [ %2350, %2339 ]
  %2384 = phi float [ %2305, %2290 ], [ %2351, %2339 ]
  br i1 %1871, label %2385, label %2583, !dx.controlflow.hints !124

; <label>:2385                                    ; preds = %2378
  %2386 = extractvalue %dx.types.CBufRet.f32 %2284, 0
  %2387 = fmul fast float %2386, %2286
  %2388 = fsub fast float %2281, %2379
  %2389 = fsub fast float %2282, %2380
  %2390 = fsub fast float %2283, %2381
  %2391 = fmul fast float %2387, %2388
  %2392 = fmul fast float %2387, %2389
  %2393 = fmul fast float %2387, %2390
  %2394 = fadd fast float %2391, %2379
  %2395 = fadd fast float %2392, %2380
  %2396 = fadd fast float %2393, %2381
  %2397 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2382)  ; FMax(a,b)
  %2398 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2383)  ; FMax(a,b)
  %2399 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2384)  ; FMax(a,b)
  %2400 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2280)  ; FMax(a,b)
  %2401 = call float @dx.op.binary.f32(i32 35, float %2279, float %2289)  ; FMax(a,b)
  %2402 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2401)  ; FMax(a,b)
  %2403 = fdiv fast float %2279, %2402
  %2404 = call float @dx.op.unary.f32(i32 7, float %2403)  ; Saturate(value)
  %2405 = fdiv fast float %2289, %2402
  %2406 = call float @dx.op.unary.f32(i32 7, float %2405)  ; Saturate(value)
  %2407 = fcmp fast une float %2400, 1.000000e+00
  br i1 %2407, label %2408, label %2421, !dx.controlflow.hints !125

; <label>:2408                                    ; preds = %2385
  %2409 = call float @dx.op.unary.f32(i32 23, float %2400)  ; Log(value)
  %2410 = fmul fast float %2409, 0x3FE62E4300000000
  %2411 = fmul fast float %2281, %2410
  %2412 = fsub fast float -0.000000e+00, %2411
  %2413 = fmul fast float %2282, %2410
  %2414 = fsub fast float -0.000000e+00, %2413
  %2415 = fmul fast float %2283, %2410
  %2416 = fsub fast float -0.000000e+00, %2415
  %2417 = fsub fast float 1.000000e+00, %2400
  %2418 = fdiv fast float %2412, %2417
  %2419 = fdiv fast float %2414, %2417
  %2420 = fdiv fast float %2416, %2417
  br label %2421

; <label>:2421                                    ; preds = %2408, %2385
  %2422 = phi float [ %2418, %2408 ], [ %2281, %2385 ]
  %2423 = phi float [ %2419, %2408 ], [ %2282, %2385 ]
  %2424 = phi float [ %2420, %2408 ], [ %2283, %2385 ]
  %2425 = phi float [ %2410, %2408 ], [ 0.000000e+00, %2385 ]
  %2426 = fcmp fast une float %2397, 1.000000e+00
  br i1 %2426, label %2427, label %2434, !dx.controlflow.hints !126

; <label>:2427                                    ; preds = %2421
  %2428 = call float @dx.op.unary.f32(i32 23, float %2397)  ; Log(value)
  %2429 = fmul fast float %2428, 0x3FE62E4300000000
  %2430 = fmul fast float %2394, %2429
  %2431 = fsub fast float -0.000000e+00, %2430
  %2432 = fsub fast float 1.000000e+00, %2397
  %2433 = fdiv fast float %2431, %2432
  br label %2434

; <label>:2434                                    ; preds = %2427, %2421
  %2435 = phi float [ %2433, %2427 ], [ %2394, %2421 ]
  %2436 = phi float [ %2429, %2427 ], [ 0.000000e+00, %2421 ]
  %2437 = fcmp fast une float %2398, 1.000000e+00
  br i1 %2437, label %2438, label %2445, !dx.controlflow.hints !126

; <label>:2438                                    ; preds = %2434
  %2439 = call float @dx.op.unary.f32(i32 23, float %2398)  ; Log(value)
  %2440 = fmul fast float %2439, 0x3FE62E4300000000
  %2441 = fmul fast float %2395, %2440
  %2442 = fsub fast float -0.000000e+00, %2441
  %2443 = fsub fast float 1.000000e+00, %2398
  %2444 = fdiv fast float %2442, %2443
  br label %2445

; <label>:2445                                    ; preds = %2438, %2434
  %2446 = phi float [ %2444, %2438 ], [ %2395, %2434 ]
  %2447 = phi float [ %2440, %2438 ], [ 0.000000e+00, %2434 ]
  %2448 = fcmp fast une float %2399, 1.000000e+00
  br i1 %2448, label %2449, label %2456, !dx.controlflow.hints !126

; <label>:2449                                    ; preds = %2445
  %2450 = call float @dx.op.unary.f32(i32 23, float %2399)  ; Log(value)
  %2451 = fmul fast float %2450, 0x3FE62E4300000000
  %2452 = fmul fast float %2396, %2451
  %2453 = fsub fast float -0.000000e+00, %2452
  %2454 = fsub fast float 1.000000e+00, %2399
  %2455 = fdiv fast float %2453, %2454
  br label %2456

; <label>:2456                                    ; preds = %2449, %2445
  %2457 = phi float [ %2455, %2449 ], [ %2396, %2445 ]
  %2458 = phi float [ %2451, %2449 ], [ 0.000000e+00, %2445 ]
  %2459 = fmul fast float %2422, %2406
  %2460 = fmul fast float %2423, %2406
  %2461 = fmul fast float %2424, %2406
  %2462 = fmul fast float %2425, %2406
  %2463 = fmul fast float %2435, %2404
  %2464 = fmul fast float %2446, %2404
  %2465 = fmul fast float %2457, %2404
  %2466 = fmul fast float %2436, %2404
  %2467 = fmul fast float %2447, %2404
  %2468 = fmul fast float %2458, %2404
  %2469 = fadd fast float %2463, %2459
  %2470 = fadd fast float %2464, %2460
  %2471 = fadd fast float %2465, %2461
  %2472 = fadd fast float %2466, %2462
  %2473 = fadd fast float %2467, %2462
  %2474 = fadd fast float %2468, %2462
  %2475 = fcmp fast une float %2472, 0.000000e+00
  br i1 %2475, label %2476, label %2483, !dx.controlflow.hints !127

; <label>:2476                                    ; preds = %2456
  %2477 = fmul fast float %2472, 0x3FF7154760000000
  %2478 = call float @dx.op.unary.f32(i32 21, float %2477)  ; Exp(value)
  %2479 = fsub fast float 1.000000e+00, %2478
  %2480 = fmul fast float %2469, %2479
  %2481 = fsub fast float -0.000000e+00, %2480
  %2482 = fdiv fast float %2481, %2472
  br label %2483

; <label>:2483                                    ; preds = %2476, %2456
  %2484 = phi float [ %2478, %2476 ], [ 1.000000e+00, %2456 ]
  %2485 = phi float [ %2482, %2476 ], [ %2469, %2456 ]
  %2486 = fcmp fast une float %2473, 0.000000e+00
  br i1 %2486, label %2487, label %2494, !dx.controlflow.hints !127

; <label>:2487                                    ; preds = %2483
  %2488 = fmul fast float %2473, 0x3FF7154760000000
  %2489 = call float @dx.op.unary.f32(i32 21, float %2488)  ; Exp(value)
  %2490 = fsub fast float 1.000000e+00, %2489
  %2491 = fmul fast float %2470, %2490
  %2492 = fsub fast float -0.000000e+00, %2491
  %2493 = fdiv fast float %2492, %2473
  br label %2494

; <label>:2494                                    ; preds = %2487, %2483
  %2495 = phi float [ %2489, %2487 ], [ 1.000000e+00, %2483 ]
  %2496 = phi float [ %2493, %2487 ], [ %2470, %2483 ]
  %2497 = fcmp fast une float %2474, 0.000000e+00
  br i1 %2497, label %2498, label %2505, !dx.controlflow.hints !127

; <label>:2498                                    ; preds = %2494
  %2499 = fmul fast float %2474, 0x3FF7154760000000
  %2500 = call float @dx.op.unary.f32(i32 21, float %2499)  ; Exp(value)
  %2501 = fsub fast float 1.000000e+00, %2500
  %2502 = fmul fast float %2471, %2501
  %2503 = fsub fast float -0.000000e+00, %2502
  %2504 = fdiv fast float %2503, %2474
  br label %2505

; <label>:2505                                    ; preds = %2498, %2494
  %2506 = phi float [ %2500, %2498 ], [ 1.000000e+00, %2494 ]
  %2507 = phi float [ %2504, %2498 ], [ %2471, %2494 ]
  %2508 = fcmp fast ogt float %2404, %2406
  br i1 %2508, label %2509, label %2529

; <label>:2509                                    ; preds = %2505
  %2510 = fsub fast float 1.000000e+00, %2406
  %2511 = fmul fast float %2422, %2510
  %2512 = fmul fast float %2423, %2510
  %2513 = fmul fast float %2424, %2510
  %2514 = fmul fast float %2425, %2510
  %2515 = fcmp fast une float %2514, 0.000000e+00
  br i1 %2515, label %2516, label %2567, !dx.controlflow.hints !128

; <label>:2516                                    ; preds = %2509
  %2517 = fmul fast float %2514, 0x3FF7154760000000
  %2518 = call float @dx.op.unary.f32(i32 21, float %2517)  ; Exp(value)
  %2519 = fsub fast float 1.000000e+00, %2518
  %2520 = fmul fast float %2511, %2519
  %2521 = fsub fast float -0.000000e+00, %2520
  %2522 = fmul fast float %2512, %2519
  %2523 = fsub fast float -0.000000e+00, %2522
  %2524 = fmul fast float %2513, %2519
  %2525 = fsub fast float -0.000000e+00, %2524
  %2526 = fdiv fast float %2521, %2514
  %2527 = fdiv fast float %2523, %2514
  %2528 = fdiv fast float %2525, %2514
  br label %2567

; <label>:2529                                    ; preds = %2505
  %2530 = fsub fast float 1.000000e+00, %2404
  %2531 = fmul fast float %2435, %2530
  %2532 = fmul fast float %2446, %2530
  %2533 = fmul fast float %2457, %2530
  %2534 = fmul fast float %2436, %2530
  %2535 = fmul fast float %2447, %2530
  %2536 = fmul fast float %2458, %2530
  %2537 = fcmp fast une float %2534, 0.000000e+00
  br i1 %2537, label %2538, label %2545, !dx.controlflow.hints !127

; <label>:2538                                    ; preds = %2529
  %2539 = fmul fast float %2534, 0x3FF7154760000000
  %2540 = call float @dx.op.unary.f32(i32 21, float %2539)  ; Exp(value)
  %2541 = fsub fast float 1.000000e+00, %2540
  %2542 = fmul fast float %2531, %2541
  %2543 = fsub fast float -0.000000e+00, %2542
  %2544 = fdiv fast float %2543, %2534
  br label %2545

; <label>:2545                                    ; preds = %2538, %2529
  %2546 = phi float [ %2544, %2538 ], [ %2531, %2529 ]
  %2547 = phi float [ %2540, %2538 ], [ 1.000000e+00, %2529 ]
  %2548 = fcmp fast une float %2535, 0.000000e+00
  br i1 %2548, label %2549, label %2556, !dx.controlflow.hints !127

; <label>:2549                                    ; preds = %2545
  %2550 = fmul fast float %2535, 0x3FF7154760000000
  %2551 = call float @dx.op.unary.f32(i32 21, float %2550)  ; Exp(value)
  %2552 = fsub fast float 1.000000e+00, %2551
  %2553 = fmul fast float %2532, %2552
  %2554 = fsub fast float -0.000000e+00, %2553
  %2555 = fdiv fast float %2554, %2535
  br label %2556

; <label>:2556                                    ; preds = %2549, %2545
  %2557 = phi float [ %2555, %2549 ], [ %2532, %2545 ]
  %2558 = phi float [ %2551, %2549 ], [ 1.000000e+00, %2545 ]
  %2559 = fcmp fast une float %2536, 0.000000e+00
  br i1 %2559, label %2560, label %2567, !dx.controlflow.hints !127

; <label>:2560                                    ; preds = %2556
  %2561 = fmul fast float %2536, 0x3FF7154760000000
  %2562 = call float @dx.op.unary.f32(i32 21, float %2561)  ; Exp(value)
  %2563 = fsub fast float 1.000000e+00, %2562
  %2564 = fmul fast float %2533, %2563
  %2565 = fsub fast float -0.000000e+00, %2564
  %2566 = fdiv fast float %2565, %2536
  br label %2567

; <label>:2567                                    ; preds = %2560, %2556, %2516, %2509
  %2568 = phi float [ %2566, %2560 ], [ %2528, %2516 ], [ %2513, %2509 ], [ %2533, %2556 ]
  %2569 = phi float [ %2557, %2560 ], [ %2527, %2516 ], [ %2512, %2509 ], [ %2557, %2556 ]
  %2570 = phi float [ %2546, %2560 ], [ %2526, %2516 ], [ %2511, %2509 ], [ %2546, %2556 ]
  %2571 = phi float [ %2562, %2560 ], [ %2518, %2516 ], [ 1.000000e+00, %2509 ], [ 1.000000e+00, %2556 ]
  %2572 = phi float [ %2558, %2560 ], [ %2518, %2516 ], [ 1.000000e+00, %2509 ], [ %2558, %2556 ]
  %2573 = phi float [ %2547, %2560 ], [ %2518, %2516 ], [ 1.000000e+00, %2509 ], [ %2547, %2556 ]
  %2574 = fmul fast float %2573, %2485
  %2575 = fmul fast float %2572, %2496
  %2576 = fmul fast float %2571, %2507
  %2577 = fadd fast float %2574, %2570
  %2578 = fadd fast float %2575, %2569
  %2579 = fadd fast float %2576, %2568
  %2580 = fmul fast float %2573, %2484
  %2581 = fmul fast float %2572, %2495
  %2582 = fmul fast float %2571, %2506
  br label %2583

; <label>:2583                                    ; preds = %2567, %2378
  %2584 = phi float [ %2582, %2567 ], [ %2384, %2378 ]
  %2585 = phi float [ %2581, %2567 ], [ %2383, %2378 ]
  %2586 = phi float [ %2580, %2567 ], [ %2382, %2378 ]
  %2587 = phi float [ %2579, %2567 ], [ %2381, %2378 ]
  %2588 = phi float [ %2578, %2567 ], [ %2380, %2378 ]
  %2589 = phi float [ %2577, %2567 ], [ %2379, %2378 ]
  %2590 = fmul fast float %2589, %1563
  %2591 = fmul fast float %2588, %1563
  %2592 = fmul fast float %2587, %1563
  %2593 = fmul fast float %2586, %1826
  %2594 = call float @dx.op.dot3.f32(i32 55, float %2586, float %2585, float %2584, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2595 = call float @dx.op.dot3.f32(i32 55, float %2590, float %2591, float %2592, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2596 = select i1 %136, float %2594, float %2586
  %2597 = select i1 %136, float %2594, float %2585
  %2598 = select i1 %136, float 1.000000e+00, float %2584
  %2599 = select i1 %136, float %2595, float %2590
  %2600 = select i1 %136, float 0.000000e+00, float %2591
  %2601 = select i1 %136, float 0.000000e+00, float %2592
  %2602 = fmul fast float %2596, %1820
  %2603 = fmul fast float %2597, %1821
  %2604 = fmul fast float %2598, %1822
  %2605 = fadd fast float %2602, %2599
  %2606 = fadd fast float %2603, %2600
  %2607 = fadd fast float %2601, %2604
  %2608 = fmul fast float %2596, %1823
  %2609 = fmul fast float %2597, %1824
  %2610 = fmul fast float %2598, %1825
  %2611 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2612 = extractvalue %dx.types.CBufRet.i32 %2611, 0
  %2613 = icmp eq i32 %2612, 0
  br i1 %2613, label %2882, label %2614, !dx.controlflow.hints !129

; <label>:2614                                    ; preds = %2583
  %2615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2616 = extractvalue %dx.types.CBufRet.f32 %2615, 2
  %2617 = extractvalue %dx.types.CBufRet.f32 %2615, 3
  %2618 = fmul fast float %2616, %66
  %2619 = fmul fast float %2617, %67
  %2620 = fmul fast float %2618, 2.000000e+00
  %2621 = fmul fast float %2619, 2.000000e+00
  %2622 = fsub fast float 1.000000e+00, %2620
  %2623 = fsub fast float 1.000000e+00, %2621
  %2624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2625 = extractvalue %dx.types.CBufRet.f32 %2624, 0
  %2626 = extractvalue %dx.types.CBufRet.f32 %2624, 1
  %2627 = extractvalue %dx.types.CBufRet.f32 %2624, 2
  %2628 = fmul fast float %2622, %2625
  %2629 = fmul fast float %2622, %2626
  %2630 = fmul fast float %2622, %2627
  %2631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2632 = extractvalue %dx.types.CBufRet.f32 %2631, 0
  %2633 = extractvalue %dx.types.CBufRet.f32 %2631, 1
  %2634 = extractvalue %dx.types.CBufRet.f32 %2631, 2
  %2635 = fmul fast float %2623, %2632
  %2636 = fmul fast float %2623, %2633
  %2637 = fmul fast float %2623, %2634
  %2638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2639 = extractvalue %dx.types.CBufRet.f32 %2638, 0
  %2640 = extractvalue %dx.types.CBufRet.f32 %2638, 1
  %2641 = extractvalue %dx.types.CBufRet.f32 %2638, 2
  %2642 = fadd fast float %2635, %2639
  %2643 = fadd fast float %2642, %2628
  %2644 = fadd fast float %2636, %2640
  %2645 = fadd fast float %2644, %2629
  %2646 = fadd fast float %2637, %2641
  %2647 = fadd fast float %2646, %2630
  %2648 = fmul fast float %2643, %1819
  %2649 = fmul fast float %2645, %1819
  %2650 = fmul fast float %2647, %1819
  %2651 = fmul fast float %2648, %2648
  %2652 = fmul fast float %2649, %2649
  %2653 = fadd fast float %2651, %2652
  %2654 = fmul fast float %2650, %2650
  %2655 = fadd fast float %2653, %2654
  %2656 = call float @dx.op.unary.f32(i32 24, float %2655)  ; Sqrt(value)
  %2657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2658 = extractvalue %dx.types.CBufRet.f32 %2657, 0
  %2659 = fsub fast float %2656, %2658
  %2660 = extractvalue %dx.types.CBufRet.f32 %2657, 2
  %2661 = fmul fast float %2659, %2660
  %2662 = call float @dx.op.unary.f32(i32 7, float %2661)  ; Saturate(value)
  %2663 = fadd fast float %2662, -5.000000e-01
  %2664 = fmul fast float %2663, 2.000000e+00
  %2665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2666 = extractvalue %dx.types.CBufRet.f32 %2665, 2
  %2667 = call float @dx.op.binary.f32(i32 36, float %2666, float %2664)  ; FMin(a,b)
  %2668 = fsub fast float -0.000000e+00, %2666
  %2669 = fcmp fast ogt float %2667, %2668
  br i1 %2669, label %2670, label %2882, !dx.controlflow.hints !130

; <label>:2670                                    ; preds = %2614
  %2671 = fmul fast float %2667, 5.000000e-01
  %2672 = fadd fast float %2671, 5.000000e-01
  %2673 = call float @dx.op.unary.f32(i32 22, float %2672)  ; Frc(value)
  %2674 = call float @dx.op.unary.f32(i32 27, float %2673)  ; Round_ni(value)
  %2675 = call float @dx.op.unary.f32(i32 22, float %2673)  ; Frc(value)
  %2676 = fmul fast float %2675, 2.000000e+00
  %2677 = fadd fast float %2676, -1.000000e+00
  %2678 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %26, float %2618, float %2619, float %2674, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2679 = extractvalue %dx.types.ResRet.f32 %2678, 0
  %2680 = extractvalue %dx.types.ResRet.f32 %2678, 1
  %2681 = extractvalue %dx.types.ResRet.f32 %2678, 2
  %2682 = extractvalue %dx.types.ResRet.f32 %2678, 3
  %2683 = fadd fast float %2679, -5.000000e-01
  %2684 = fadd fast float %2681, -5.000000e-01
  %2685 = fmul fast float %2683, 0xBFD5555560000000
  %2686 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2684, float %2685)  ; FMad(a,b,c)
  %2687 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2680, float 0.000000e+00)  ; FMad(a,b,c)
  %2688 = fadd fast float %2687, %2682
  %2689 = fmul fast float %2683, -7.500000e-01
  %2690 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2684, float %2689)  ; FMad(a,b,c)
  %2691 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2680, float 0.000000e+00)  ; FMad(a,b,c)
  %2692 = fadd fast float %2691, %2682
  %2693 = call float @dx.op.binary.f32(i32 35, float %2686, float -1.000000e+00)  ; FMax(a,b)
  %2694 = call float @dx.op.binary.f32(i32 35, float %2688, float -1.000000e+00)  ; FMax(a,b)
  %2695 = call float @dx.op.binary.f32(i32 35, float %2690, float -1.000000e+00)  ; FMax(a,b)
  %2696 = call float @dx.op.binary.f32(i32 35, float %2692, float -1.000000e+00)  ; FMax(a,b)
  %2697 = call float @dx.op.binary.f32(i32 36, float %2693, float 1.000000e+00)  ; FMin(a,b)
  %2698 = call float @dx.op.binary.f32(i32 36, float %2694, float 1.000000e+00)  ; FMin(a,b)
  %2699 = call float @dx.op.binary.f32(i32 36, float %2695, float 1.000000e+00)  ; FMin(a,b)
  %2700 = call float @dx.op.binary.f32(i32 36, float %2696, float 1.000000e+00)  ; FMin(a,b)
  %2701 = fcmp fast olt float %2697, 0x3FEFFF8020000000
  br i1 %2701, label %2702, label %2817, !dx.controlflow.hints !131

; <label>:2702                                    ; preds = %2670
  %2703 = extractvalue %dx.types.CBufRet.f32 %2665, 3
  %2704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %2705 = extractvalue %dx.types.CBufRet.f32 %2704, 0
  %2706 = extractvalue %dx.types.CBufRet.f32 %2704, 1
  %2707 = extractvalue %dx.types.CBufRet.f32 %2704, 2
  %2708 = extractvalue %dx.types.CBufRet.f32 %2704, 3
  %2709 = fsub fast float %2705, %2697
  %2710 = fsub fast float %2706, %2698
  %2711 = fsub fast float %2707, %2699
  %2712 = fsub fast float %2708, %2700
  %2713 = fmul fast float %2709, %2703
  %2714 = fmul fast float %2710, %2703
  %2715 = fmul fast float %2711, %2703
  %2716 = fmul fast float %2712, %2703
  %2717 = fadd fast float %2713, %2697
  %2718 = fadd fast float %2714, %2698
  %2719 = fsub fast float -0.000000e+00, %2718
  %2720 = fadd fast float %2715, %2699
  %2721 = fadd fast float %2716, %2700
  %2722 = fmul fast float %2717, %2717
  %2723 = fsub fast float %2718, %2722
  %2724 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2723)  ; FMax(a,b)
  %2725 = fdiv fast float 1.000000e+00, %2724
  %2726 = fmul fast float %2718, %2717
  %2727 = fsub fast float %2720, %2726
  %2728 = fsub fast float %2677, %2717
  %2729 = fmul fast float %2677, %2677
  %2730 = fsub fast float %2729, %2718
  %2731 = fmul fast float %2728, %2725
  %2732 = fmul fast float %2731, %2727
  %2733 = fsub fast float %2730, %2732
  %2734 = fmul fast float %2718, %2718
  %2735 = fsub fast float %2721, %2734
  %2736 = fmul fast float %2727, %2727
  %2737 = fmul fast float %2736, %2725
  %2738 = fsub fast float %2735, %2737
  %2739 = fdiv fast float %2733, %2738
  %2740 = fmul fast float %2727, %2739
  %2741 = fsub fast float %2728, %2740
  %2742 = fmul fast float %2741, %2725
  %2743 = fmul fast float %2742, %2717
  %2744 = fsub fast float 1.000000e+00, %2743
  %2745 = fmul fast float %2718, %2739
  %2746 = fsub fast float %2744, %2745
  %2747 = fmul fast float %2742, %2742
  %2748 = fmul fast float %2739, 4.000000e+00
  %2749 = fmul fast float %2748, %2746
  %2750 = fsub fast float %2747, %2749
  %2751 = call float @dx.op.unary.f32(i32 24, float %2750)  ; Sqrt(value)
  %2752 = fcmp fast oge float %2742, 0.000000e+00
  %2753 = fsub fast float -0.000000e+00, %2751
  %2754 = select i1 %2752, float %2753, float %2751
  %2755 = fsub fast float %2754, %2742
  %2756 = fdiv fast float %2755, %2739
  %2757 = fdiv fast float %2746, %2755
  %2758 = fmul fast float %2756, 5.000000e-01
  %2759 = fmul fast float %2757, 2.000000e+00
  %2760 = select i1 %2752, float %2758, float %2759
  %2761 = select i1 %2752, float %2759, float %2758
  %2762 = call float @dx.op.binary.f32(i32 35, float %2760, float %2761)  ; FMax(a,b)
  %2763 = call float @dx.op.binary.f32(i32 36, float %2760, float %2761)  ; FMin(a,b)
  %2764 = fcmp fast ogt float %2677, %2763
  br i1 %2764, label %2765, label %2775

; <label>:2765                                    ; preds = %2702
  %2766 = fsub fast float %2677, %2763
  %2767 = fsub fast float %2762, %2763
  %2768 = fmul fast float %2766, %2767
  %2769 = fmul fast float %2762, %2677
  %2770 = fadd fast float %2762, %2677
  %2771 = fmul fast float %2770, %2717
  %2772 = fadd fast float %2769, %2718
  %2773 = fsub fast float %2772, %2771
  %2774 = fdiv fast float %2773, %2768
  br label %2775

; <label>:2775                                    ; preds = %2765, %2702
  %2776 = phi float [ %2774, %2765 ], [ 0.000000e+00, %2702 ]
  %2777 = fcmp fast ogt float %2677, %2762
  %2778 = fsub fast float %2677, %2762
  br i1 %2777, label %2779, label %2789

; <label>:2779                                    ; preds = %2775
  %2780 = fsub fast float %2762, %2763
  %2781 = fmul fast float %2780, %2778
  %2782 = fmul fast float %2763, %2677
  %2783 = fadd fast float %2763, %2677
  %2784 = fmul fast float %2783, %2717
  %2785 = fsub fast float %2719, %2782
  %2786 = fadd fast float %2785, %2784
  %2787 = fdiv fast float %2786, %2781
  %2788 = fadd fast float %2787, %2776
  br label %2789

; <label>:2789                                    ; preds = %2779, %2775
  %2790 = phi float [ %2788, %2779 ], [ %2776, %2775 ]
  %2791 = fsub fast float %2677, %2763
  %2792 = fmul fast float %2791, %2778
  %2793 = fmul fast float %2763, %2762
  %2794 = fadd fast float %2763, %2762
  %2795 = fmul fast float %2794, %2717
  %2796 = fadd fast float %2793, %2718
  %2797 = fsub fast float %2796, %2795
  %2798 = fdiv fast float %2797, %2792
  %2799 = call float @dx.op.unary.f32(i32 7, float %2790)  ; Saturate(value)
  %2800 = fcmp fast oeq float %1672, 0.000000e+00
  %2801 = extractvalue %dx.types.CBufRet.f32 %2665, 0
  %2802 = fcmp fast oeq float %2801, 0.000000e+00
  %2803 = or i1 %2800, %2802
  %2804 = fmul fast float %2801, 2.000000e+00
  %2805 = fadd fast float %2666, %2667
  %2806 = fdiv fast float %2805, %2804
  %2807 = call float @dx.op.unary.f32(i32 7, float %2806)  ; Saturate(value)
  %2808 = fmul fast float %2807, 2.000000e+00
  %2809 = fsub fast float 3.000000e+00, %2808
  %2810 = fmul fast float %2807, %2807
  %2811 = fmul fast float %2810, %2809
  %2812 = select i1 %2803, float 1.000000e+00, float %2811
  %2813 = fmul fast float %2798, %1672
  %2814 = fadd fast float %2799, %2813
  %2815 = call float @dx.op.unary.f32(i32 7, float %2814)  ; Saturate(value)
  %2816 = fmul fast float %2812, %2815
  br label %2817

; <label>:2817                                    ; preds = %2789, %2670
  %2818 = phi float [ %2816, %2789 ], [ 0.000000e+00, %2670 ]
  %2819 = fsub fast float 1.000000e+00, %2818
  %2820 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %26, float %2618, float %2619, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2821 = extractvalue %dx.types.ResRet.f32 %2820, 0
  %2822 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2823 = extractvalue %dx.types.CBufRet.i32 %2822, 2
  %2824 = icmp eq i32 %2823, 0
  br i1 %2824, label %2830, label %2825

; <label>:2825                                    ; preds = %2817
  %2826 = call float @dx.op.unary.f32(i32 7, float %2818)  ; Saturate(value)
  %2827 = fadd fast float %2821, -1.000000e+00
  %2828 = fmul fast float %2826, %2827
  %2829 = fadd fast float %2828, 1.000000e+00
  br label %2830

; <label>:2830                                    ; preds = %2825, %2817
  %2831 = phi float [ %2829, %2825 ], [ %2819, %2817 ]
  %2832 = call float @dx.op.binary.f32(i32 35, float %2821, float %2831)  ; FMax(a,b)
  %2833 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %2834 = extractvalue %dx.types.CBufRet.i32 %2833, 2
  %2835 = and i32 %2834, 1
  %2836 = icmp eq i32 %2835, 0
  %2837 = fcmp fast une float %2832, 1.000000e+00
  %2838 = and i1 %2837, %2836
  br i1 %2838, label %2839, label %2858

; <label>:2839                                    ; preds = %2830
  %2840 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %26, float %2618, float %2619, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2841 = extractvalue %dx.types.ResRet.f32 %2840, 0
  %2842 = extractvalue %dx.types.ResRet.f32 %2840, 1
  %2843 = extractvalue %dx.types.ResRet.f32 %2840, 2
  %2844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2845 = extractvalue %dx.types.CBufRet.f32 %2844, 1
  %2846 = fmul fast float %2845, %2841
  %2847 = fmul fast float %2845, %2842
  %2848 = fmul fast float %2845, %2843
  %2849 = fcmp fast ogt float %2821, 0x3FEFFF2E40000000
  %2850 = fsub fast float 1.000000e+00, %2832
  %2851 = fsub fast float 1.000000e+00, %2821
  %2852 = fdiv fast float %2850, %2851
  %2853 = call float @dx.op.unary.f32(i32 7, float %2852)  ; Saturate(value)
  %2854 = select i1 %2849, float 0.000000e+00, float %2853
  %2855 = fmul fast float %2846, %2854
  %2856 = fmul fast float %2847, %2854
  %2857 = fmul fast float %2848, %2854
  br label %2858

; <label>:2858                                    ; preds = %2839, %2830
  %2859 = phi float [ 0.000000e+00, %2830 ], [ %2855, %2839 ]
  %2860 = phi float [ 0.000000e+00, %2830 ], [ %2856, %2839 ]
  %2861 = phi float [ 0.000000e+00, %2830 ], [ %2857, %2839 ]
  %2862 = fmul fast float %2859, %1563
  %2863 = fmul fast float %2860, %1563
  %2864 = fmul fast float %2861, %1563
  %2865 = fmul fast float %2832, %2593
  %2866 = call float @dx.op.dot3.f32(i32 55, float %2832, float %2832, float %2832, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2867 = call float @dx.op.dot3.f32(i32 55, float %2862, float %2863, float %2864, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2868 = select i1 %136, float %2866, float %2832
  %2869 = select i1 %136, float 1.000000e+00, float %2832
  %2870 = select i1 %136, float %2867, float %2862
  %2871 = select i1 %136, float 0.000000e+00, float %2863
  %2872 = select i1 %136, float 0.000000e+00, float %2864
  %2873 = fmul fast float %2868, %2605
  %2874 = fmul fast float %2868, %2606
  %2875 = fmul fast float %2869, %2607
  %2876 = fadd fast float %2873, %2870
  %2877 = fadd fast float %2874, %2871
  %2878 = fadd fast float %2872, %2875
  %2879 = fmul fast float %2868, %2608
  %2880 = fmul fast float %2868, %2609
  %2881 = fmul fast float %2869, %2610
  br label %2882

; <label>:2882                                    ; preds = %2858, %2614, %2583, %1815
  %2883 = phi float [ %1820, %1815 ], [ %2605, %2583 ], [ %2876, %2858 ], [ %2605, %2614 ]
  %2884 = phi float [ %1821, %1815 ], [ %2606, %2583 ], [ %2877, %2858 ], [ %2606, %2614 ]
  %2885 = phi float [ %1822, %1815 ], [ %2607, %2583 ], [ %2878, %2858 ], [ %2607, %2614 ]
  %2886 = phi float [ %1823, %1815 ], [ %2608, %2583 ], [ %2879, %2858 ], [ %2608, %2614 ]
  %2887 = phi float [ %1824, %1815 ], [ %2609, %2583 ], [ %2880, %2858 ], [ %2609, %2614 ]
  %2888 = phi float [ %1825, %1815 ], [ %2610, %2583 ], [ %2881, %2858 ], [ %2610, %2614 ]
  %2889 = phi float [ %1826, %1815 ], [ %2593, %2583 ], [ %2865, %2858 ], [ %2593, %2614 ]
  %2890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2891 = extractvalue %dx.types.CBufRet.f32 %2890, 2
  %2892 = extractvalue %dx.types.CBufRet.f32 %2890, 3
  %2893 = fmul fast float %2891, %66
  %2894 = fmul fast float %2892, %67
  %2895 = call float @dx.op.unary.f32(i32 7, float %2893)  ; Saturate(value)
  %2896 = call float @dx.op.unary.f32(i32 7, float %2894)  ; Saturate(value)
  %2897 = select i1 %960, i32 2, i32 0
  %2898 = or i32 %2897, 1
  %2899 = uitofp i32 %2898 to float
  %2900 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %2895, float %2896, float %2899, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2901 = extractvalue %dx.types.ResRet.f32 %2900, 0
  %2902 = extractvalue %dx.types.ResRet.f32 %2900, 1
  %2903 = extractvalue %dx.types.ResRet.f32 %2900, 2
  %2904 = extractvalue %dx.types.ResRet.f32 %2900, 3
  %2905 = add nuw nsw i32 %2897, 2
  %2906 = uitofp i32 %2905 to float
  %2907 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %2895, float %2896, float %2906, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2908 = extractvalue %dx.types.ResRet.f32 %2907, 0
  %2909 = extractvalue %dx.types.ResRet.f32 %2907, 1
  %2910 = extractvalue %dx.types.ResRet.f32 %2907, 2
  %2911 = extractvalue %dx.types.ResRet.f32 %2907, 3
  %2912 = call float @dx.op.binary.f32(i32 35, float %2902, float %2903)  ; FMax(a,b)
  %2913 = call float @dx.op.binary.f32(i32 35, float %2901, float %2912)  ; FMax(a,b)
  %2914 = call float @dx.op.binary.f32(i32 35, float %2913, float %2904)  ; FMax(a,b)
  %2915 = call float @dx.op.binary.f32(i32 36, float %2909, float %2910)  ; FMin(a,b)
  %2916 = call float @dx.op.binary.f32(i32 36, float %2908, float %2915)  ; FMin(a,b)
  %2917 = call float @dx.op.binary.f32(i32 36, float %2916, float %2911)  ; FMin(a,b)
  %2918 = fmul fast float %2914, 2.550000e+02
  %2919 = fadd fast float %2918, 0x3F70101020000000
  %2920 = fptoui float %2919 to i32
  %2921 = fmul fast float %2917, 2.550000e+02
  %2922 = fadd fast float %2921, 0x3F70101020000000
  %2923 = fptoui float %2922 to i32
  %2924 = icmp ult i32 %2920, %2923
  br i1 %2924, label %2925, label %2971

; <label>:2925                                    ; preds = %2882
  %2926 = fcmp fast ogt float %58, 9.843750e-01
  %2927 = fadd fast float %1819, -4.000000e+00
  %2928 = select i1 %2926, float -4.000000e+00, float %2927
  %2929 = call float @dx.op.binary.f32(i32 35, float %2928, float 0.000000e+00)  ; FMax(a,b)
  %2930 = fadd fast float %1137, %2929
  %2931 = fmul fast float %2930, %1138
  %2932 = call float @dx.op.unary.f32(i32 23, float %2931)  ; Log(value)
  %2933 = fmul fast float %1139, %2932
  %2934 = fmul fast float %2933, %1147
  %2935 = call float @dx.op.unary.f32(i32 7, float %2934)  ; Saturate(value)
  %2936 = uitofp i32 %2920 to float
  %2937 = uitofp i32 %2923 to float
  %2938 = fadd fast float %2936, 5.000000e-01
  %2939 = fadd fast float %2937, 5.000000e-01
  %2940 = fmul fast float %1147, %2938
  %2941 = fmul fast float %1147, %2939
  %2942 = fadd fast float %2940, 0x3F0FFB4800000000
  %2943 = fadd fast float %2941, 0xBF0FFB4800000000
  %2944 = call float @dx.op.binary.f32(i32 35, float %2935, float %2942)  ; FMax(a,b)
  %2945 = call float @dx.op.binary.f32(i32 36, float %2944, float %2943)  ; FMin(a,b)
  %2946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %2947 = extractvalue %dx.types.CBufRet.f32 %2946, 1
  %2948 = extractvalue %dx.types.CBufRet.f32 %2946, 2
  %2949 = extractvalue %dx.types.CBufRet.f32 %2946, 0
  %2950 = select i1 %960, float %2949, float 0.000000e+00
  %2951 = fmul fast float %2947, %2945
  %2952 = fadd fast float %2950, %2951
  %2953 = fadd fast float %2950, %2948
  %2954 = fsub fast float %2947, %2948
  %2955 = fadd fast float %2954, %2950
  %2956 = call float @dx.op.binary.f32(i32 35, float %2952, float %2953)  ; FMax(a,b)
  %2957 = call float @dx.op.binary.f32(i32 36, float %2956, float %2955)  ; FMin(a,b)
  %2958 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %2895, float %2896, float %2957, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2959 = extractvalue %dx.types.ResRet.f32 %2958, 0
  %2960 = extractvalue %dx.types.ResRet.f32 %2958, 1
  %2961 = extractvalue %dx.types.ResRet.f32 %2958, 2
  %2962 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %2895, float %2896, float %2957, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2963 = extractvalue %dx.types.ResRet.f32 %2962, 0
  %2964 = extractvalue %dx.types.ResRet.f32 %2962, 1
  %2965 = extractvalue %dx.types.ResRet.f32 %2962, 2
  %2966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2967 = extractvalue %dx.types.CBufRet.f32 %2966, 1
  %2968 = fmul fast float %2967, %2963
  %2969 = fmul fast float %2967, %2964
  %2970 = fmul fast float %2967, %2965
  br label %2971

; <label>:2971                                    ; preds = %2925, %2882
  %2972 = phi float [ %2959, %2925 ], [ 1.000000e+00, %2882 ]
  %2973 = phi float [ %2960, %2925 ], [ 1.000000e+00, %2882 ]
  %2974 = phi float [ %2961, %2925 ], [ 1.000000e+00, %2882 ]
  %2975 = phi float [ %2968, %2925 ], [ 0.000000e+00, %2882 ]
  %2976 = phi float [ %2969, %2925 ], [ 0.000000e+00, %2882 ]
  %2977 = phi float [ %2970, %2925 ], [ 0.000000e+00, %2882 ]
  %2978 = fmul fast float %2975, %1563
  %2979 = fmul fast float %2976, %1563
  %2980 = fmul fast float %2977, %1563
  %2981 = fmul fast float %2972, %2889
  %2982 = call float @dx.op.dot3.f32(i32 55, float %2972, float %2973, float %2974, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2983 = call float @dx.op.dot3.f32(i32 55, float %2978, float %2979, float %2980, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2984 = select i1 %136, float %2982, float %2972
  %2985 = select i1 %136, float %2982, float %2973
  %2986 = select i1 %136, float 1.000000e+00, float %2974
  %2987 = select i1 %136, float %2983, float %2978
  %2988 = select i1 %136, float 0.000000e+00, float %2979
  %2989 = select i1 %136, float 0.000000e+00, float %2980
  %2990 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2991 = extractvalue %dx.types.CBufRet.i32 %2990, 3
  %2992 = and i32 %2991, 3
  %2993 = icmp ne i32 %2992, 0
  %2994 = and i32 %2991, 4
  %2995 = icmp ne i32 %2994, 0
  %2996 = and i1 %2993, %2995
  %2997 = and i1 %136, %2996
  br i1 %2997, label %2998, label %3004

; <label>:2998                                    ; preds = %2971
  %2999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %3000 = extractvalue %dx.types.CBufRet.f32 %2999, 1
  %3001 = fadd fast float %2981, -1.000000e+00
  %3002 = fmul fast float %3000, %3001
  %3003 = fadd fast float %3002, 1.000000e+00
  br label %3004

; <label>:3004                                    ; preds = %2998, %2971
  %3005 = phi float [ %3003, %2998 ], [ %2981, %2971 ]
  %3006 = fadd fast float %2886, %2883
  %3007 = fmul fast float %2984, %3006
  %3008 = fadd fast float %3007, %2987
  %3009 = fadd fast float %2887, %2884
  %3010 = fmul fast float %2985, %3009
  %3011 = fadd fast float %3010, %2988
  %3012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3013 = extractvalue %dx.types.CBufRet.f32 %3012, 0
  br i1 %136, label %3014, label %3036

; <label>:3014                                    ; preds = %3004
  %3015 = fadd fast float %3008, %3011
  %3016 = fmul fast float %3013, %3015
  %3017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %3018 = extractvalue %dx.types.CBufRet.f32 %3017, 3
  %3019 = extractvalue %dx.types.CBufRet.f32 %1568, 1
  %3020 = fsub fast float %1571, %3019
  %3021 = extractvalue %dx.types.CBufRet.f32 %1568, 2
  %3022 = fmul fast float %3020, %3021
  %3023 = call float @dx.op.unary.f32(i32 7, float %3022)  ; Saturate(value)
  %3024 = fsub fast float %3023, %3018
  %3025 = fmul fast float %3024, %3005
  %3026 = fadd fast float %3025, %3018
  %3027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %3028 = extractvalue %dx.types.CBufRet.f32 %3027, 0
  %3029 = fsub fast float %3026, %3028
  %3030 = fmul fast float %3029, 1.000000e+01
  %3031 = call float @dx.op.unary.f32(i32 7, float %3030)  ; Saturate(value)
  %3032 = fsub fast float %936, %1563
  %3033 = fmul fast float %3031, %3032
  %3034 = fadd fast float %3033, %1563
  %3035 = fmul fast float %3034, %3026
  br label %3048

; <label>:3036                                    ; preds = %3004
  %3037 = fadd fast float %2888, %2885
  %3038 = fmul fast float %2986, %3037
  %3039 = fadd fast float %3038, %2989
  %3040 = fmul fast float %3013, %3008
  %3041 = fmul fast float %3013, %3011
  %3042 = fmul fast float %3013, %3039
  %3043 = call float @dx.op.binary.f32(i32 35, float %3041, float %3042)  ; FMax(a,b)
  %3044 = call float @dx.op.binary.f32(i32 35, float %3040, float %3043)  ; FMax(a,b)
  %3045 = call float @dx.op.binary.f32(i32 35, float %3044, float %1563)  ; FMax(a,b)
  %3046 = fcmp fast ugt float %3045, 0x3F10000000000000
  br i1 %3046, label %3048, label %3047

; <label>:3047                                    ; preds = %3036
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %3048

; <label>:3048                                    ; preds = %3047, %3036, %3014
  %3049 = phi float [ %3016, %3014 ], [ %3040, %3047 ], [ %3040, %3036 ]
  %3050 = phi float [ %3035, %3014 ], [ %3041, %3047 ], [ %3041, %3036 ]
  %3051 = phi float [ %3034, %3014 ], [ %3042, %3047 ], [ %3042, %3036 ]
  %3052 = phi float [ %3034, %3014 ], [ %1563, %3047 ], [ %1563, %3036 ]
  %3053 = fadd fast float %590, 0x3FE3C6EF40000000
  %3054 = call float @dx.op.unary.f32(i32 22, float %3053)  ; Frc(value)
  %3055 = call float @dx.op.unary.f32(i32 23, float %3049)  ; Log(value)
  %3056 = fadd fast float %3055, -7.000000e+00
  %3057 = call float @dx.op.unary.f32(i32 21, float %3056)  ; Exp(value)
  %3058 = fmul fast float %3054, 2.000000e+00
  %3059 = fadd fast float %3058, -1.000000e+00
  %3060 = fmul fast float %3057, %3059
  %3061 = fcmp fast ogt float %3049, 0.000000e+00
  %3062 = select i1 %3061, float %3060, float 0.000000e+00
  %3063 = fadd fast float %3062, %3049
  %3064 = fadd fast float %590, 0x3FF3C6EF40000000
  %3065 = call float @dx.op.unary.f32(i32 22, float %3064)  ; Frc(value)
  %3066 = call float @dx.op.unary.f32(i32 23, float %3050)  ; Log(value)
  %3067 = fadd fast float %3066, -7.000000e+00
  %3068 = call float @dx.op.unary.f32(i32 21, float %3067)  ; Exp(value)
  %3069 = fmul fast float %3065, 2.000000e+00
  %3070 = fadd fast float %3069, -1.000000e+00
  %3071 = fmul fast float %3068, %3070
  %3072 = fcmp fast ogt float %3050, 0.000000e+00
  %3073 = select i1 %3072, float %3071, float 0.000000e+00
  %3074 = fadd fast float %3073, %3050
  %3075 = fadd fast float %590, 0x3FFDAA66E0000000
  %3076 = call float @dx.op.unary.f32(i32 22, float %3075)  ; Frc(value)
  %3077 = call float @dx.op.unary.f32(i32 23, float %3051)  ; Log(value)
  %3078 = fadd fast float %3077, -6.000000e+00
  %3079 = call float @dx.op.unary.f32(i32 21, float %3078)  ; Exp(value)
  %3080 = fmul fast float %3076, 2.000000e+00
  %3081 = fadd fast float %3080, -1.000000e+00
  %3082 = fmul fast float %3079, %3081
  %3083 = fcmp fast ogt float %3051, 0.000000e+00
  %3084 = select i1 %3083, float %3082, float 0.000000e+00
  %3085 = fadd fast float %3084, %3051
  %3086 = select i1 %136, float %3050, float %3074
  %3087 = select i1 %136, float %3051, float %3085
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %3088 = call float @dx.op.binary.f32(i32 36, float %3063, float 3.225500e+04)  ; FMin(a,b)
  %3089 = call float @dx.op.binary.f32(i32 36, float %3086, float 3.225500e+04)  ; FMin(a,b)
  %3090 = call float @dx.op.binary.f32(i32 36, float %3087, float 3.225500e+04)  ; FMin(a,b)
  %3091 = call float @dx.op.binary.f32(i32 36, float %3052, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3088)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3089)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3090)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %3091)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %3052)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %3052)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %3052)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %3052)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

