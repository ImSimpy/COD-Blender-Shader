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
; shader hash: 1685829a6fe6ab36dbb134298dadeda0
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
  %203 = add i32 %31, 128
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
  br i1 %279, label %530, label %280, !dx.controlflow.hints !71

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
  %527 = fmul fast float %526, %50
  %528 = fmul fast float %525, %238
  %529 = fmul fast float %528, %526
  br label %530

; <label>:530                                     ; preds = %520, %277
  %531 = phi float [ %522, %520 ], [ %47, %277 ]
  %532 = phi float [ %523, %520 ], [ %48, %277 ]
  %533 = phi float [ %524, %520 ], [ %49, %277 ]
  %534 = phi float [ %529, %520 ], [ %238, %277 ]
  %535 = phi float [ %527, %520 ], [ %50, %277 ]
  %536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %537 = extractvalue %dx.types.CBufRet.f32 %536, 2
  %538 = fptosi float %54 to i32
  %539 = sitofp i32 %538 to float
  %540 = fadd fast float %537, %539
  %541 = fmul fast float %540, 0x3FE3C6EF40000000
  %542 = frem fast float %61, 2.560000e+02
  %543 = frem fast float %62, 2.560000e+02
  %544 = fptoui float %542 to i32
  %545 = fptoui float %543 to i32
  %546 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %544, i32 %545, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %547 = extractvalue %dx.types.ResRet.f32 %546, 0
  %548 = fadd fast float %547, %541
  %549 = call float @dx.op.unary.f32(i32 22, float %548)  ; Frc(value)
  %550 = and i32 %151, 1
  %551 = icmp eq i32 %550, 0
  br i1 %551, label %609, label %552, !dx.controlflow.hints !74

; <label>:552                                     ; preds = %530
  %553 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %148, i32 undef)  ; BufferLoad(srv,index,wot)
  %554 = extractvalue %dx.types.ResRet.f32 %553, 2
  %555 = extractvalue %dx.types.ResRet.f32 %553, 3
  %556 = add i32 %148, 16
  %557 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %556, i32 undef)  ; BufferLoad(srv,index,wot)
  %558 = extractvalue %dx.types.ResRet.f32 %557, 0
  %559 = extractvalue %dx.types.ResRet.f32 %557, 1
  %560 = extractvalue %dx.types.ResRet.f32 %557, 2
  %561 = add i32 %148, 32
  %562 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %561, i32 undef)  ; BufferLoad(srv,index,wot)
  %563 = extractvalue %dx.types.ResRet.f32 %562, 0
  %564 = extractvalue %dx.types.ResRet.f32 %562, 1
  %565 = extractvalue %dx.types.ResRet.f32 %562, 2
  %566 = and i32 %151, 2
  %567 = icmp eq i32 %566, 0
  %568 = call float @dx.op.dot3.f32(i32 55, float %42, float %43, float %44, float %42, float %43, float %44)  ; Dot3(ax,ay,az,bx,by,bz)
  %569 = call float @dx.op.unary.f32(i32 25, float %568)  ; Rsqrt(value)
  %570 = fmul fast float %569, %42
  %571 = fmul fast float %569, %43
  %572 = fmul fast float %569, %44
  %573 = call float @dx.op.dot3.f32(i32 55, float %96, float %97, float %98, float %96, float %97, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %574 = call float @dx.op.unary.f32(i32 25, float %573)  ; Rsqrt(value)
  %575 = fmul fast float %574, %96
  %576 = fmul fast float %574, %97
  %577 = fmul fast float %574, %98
  %578 = call float @dx.op.dot3.f32(i32 55, float %575, float %576, float %577, float %570, float %571, float %572)  ; Dot3(ax,ay,az,bx,by,bz)
  %579 = fmul fast float %578, %578
  %580 = fmul fast float %579, %554
  %581 = fadd fast float %580, %555
  %582 = call float @dx.op.unary.f32(i32 7, float %581)  ; Saturate(value)
  br i1 %567, label %583, label %593, !dx.controlflow.hints !75

; <label>:583                                     ; preds = %552
  %584 = extractvalue %dx.types.ResRet.f32 %553, 1
  %585 = extractvalue %dx.types.ResRet.f32 %553, 0
  %586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %587 = extractvalue %dx.types.CBufRet.f32 %586, 3
  %588 = fmul fast float %587, %573
  %589 = fsub fast float %585, %588
  %590 = fmul fast float %589, %584
  %591 = call float @dx.op.unary.f32(i32 7, float %590)  ; Saturate(value)
  %592 = fmul fast float %591, %582
  br label %593

; <label>:593                                     ; preds = %583, %552
  %594 = phi float [ %592, %583 ], [ %582, %552 ]
  %595 = fsub fast float %558, %563
  %596 = fsub fast float %559, %564
  %597 = fsub fast float %560, %565
  %598 = fmul fast float %594, %595
  %599 = fmul fast float %594, %596
  %600 = fmul fast float %594, %597
  %601 = fadd fast float %598, %563
  %602 = fadd fast float %599, %564
  %603 = fadd fast float %600, %565
  %604 = fmul fast float %601, %531
  %605 = fmul fast float %602, %532
  %606 = fmul fast float %603, %533
  %607 = fmul fast float %594, %534
  %608 = fmul fast float %594, %535
  br label %609

; <label>:609                                     ; preds = %593, %530
  %610 = phi float [ %604, %593 ], [ %531, %530 ]
  %611 = phi float [ %605, %593 ], [ %532, %530 ]
  %612 = phi float [ %606, %593 ], [ %533, %530 ]
  %613 = phi float [ %607, %593 ], [ %534, %530 ]
  %614 = phi float [ %608, %593 ], [ %535, %530 ]
  %615 = add i32 %31, 120
  %616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %615, i32 undef)  ; BufferLoad(srv,index,wot)
  %617 = extractvalue %dx.types.ResRet.i32 %616, 0
  %618 = add i32 %617, 0
  %619 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %618, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %620 = add i32 %31, 24
  %621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %620, i32 undef)  ; BufferLoad(srv,index,wot)
  %622 = extractvalue %dx.types.ResRet.i32 %621, 0
  %623 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %619, %dx.types.Handle %57, float %188, float %189, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %624 = extractvalue %dx.types.ResRet.f32 %623, 0
  %625 = extractvalue %dx.types.ResRet.f32 %623, 1
  %626 = extractvalue %dx.types.ResRet.f32 %623, 2
  %627 = extractvalue %dx.types.ResRet.f32 %623, 3
  %628 = and i32 %622, 255
  %629 = uitofp i32 %628 to float
  %630 = lshr i32 %622, 8
  %631 = and i32 %630, 255
  %632 = uitofp i32 %631 to float
  %633 = fmul fast float %627, %629
  %634 = fadd fast float %633, %632
  %635 = fmul fast float %634, 0x3F70101000000000
  %636 = add i32 %31, 56
  %637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %636, i32 undef)  ; BufferLoad(srv,index,wot)
  %638 = extractvalue %dx.types.ResRet.i32 %637, 0
  %639 = and i32 %638, 255
  %640 = uitofp i32 %639 to float
  %641 = fmul fast float %640, 0x3F70101020000000
  %642 = lshr i32 %638, 8
  %643 = and i32 %642, 255
  %644 = uitofp i32 %643 to float
  %645 = fmul fast float %644, 0x3F70101020000000
  %646 = lshr i32 %638, 16
  %647 = and i32 %646, 255
  %648 = uitofp i32 %647 to float
  %649 = fmul fast float %648, 0x3F70101020000000
  %650 = fmul fast float %624, %610
  %651 = fmul fast float %641, %641
  %652 = fmul fast float %651, %650
  %653 = fmul fast float %625, %611
  %654 = fmul fast float %645, %645
  %655 = fmul fast float %654, %653
  %656 = fmul fast float %626, %612
  %657 = fmul fast float %649, %649
  %658 = fmul fast float %657, %656
  %659 = add i32 %31, 28
  %660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %659, i32 undef)  ; BufferLoad(srv,index,wot)
  %661 = extractvalue %dx.types.ResRet.i32 %660, 0
  %662 = add i32 %31, 124
  %663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %662, i32 undef)  ; BufferLoad(srv,index,wot)
  %664 = extractvalue %dx.types.ResRet.i32 %663, 0
  %665 = add i32 %664, 0
  %666 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %665, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %667 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %666, %dx.types.Handle %57, float %188, float %189, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %668 = extractvalue %dx.types.ResRet.f32 %667, 0
  %669 = extractvalue %dx.types.ResRet.f32 %667, 1
  %670 = extractvalue %dx.types.ResRet.f32 %667, 3
  %671 = and i32 %661, 255
  %672 = uitofp i32 %671 to float
  %673 = lshr i32 %661, 8
  %674 = and i32 %673, 255
  %675 = uitofp i32 %674 to float
  %676 = lshr i32 %661, 16
  %677 = and i32 %676, 255
  %678 = uitofp i32 %677 to float
  %679 = fmul fast float %678, 0x3F70101000000000
  %680 = fmul fast float %668, %672
  %681 = fadd fast float %680, %675
  %682 = fmul fast float %681, 0x3F70101000000000
  %683 = fadd fast float %669, -5.000000e-01
  %684 = fadd fast float %670, -5.000000e-01
  %685 = fmul fast float %683, %679
  %686 = fmul fast float %684, %679
  %687 = fadd fast float %685, 5.000000e-01
  %688 = fadd fast float %686, 5.000000e-01
  %689 = fmul fast float %687, 2.000000e+00
  %690 = fadd fast float %689, -1.000000e+00
  %691 = fmul fast float %688, 2.000000e+00
  %692 = fadd fast float %691, -1.000000e+00
  %693 = fadd fast float %690, %692
  %694 = fmul fast float %693, 5.000000e-01
  %695 = fsub fast float %690, %692
  %696 = fmul fast float %695, 5.000000e-01
  %697 = call float @dx.op.unary.f32(i32 6, float %694)  ; FAbs(value)
  %698 = fsub fast float 1.000000e+00, %697
  %699 = call float @dx.op.unary.f32(i32 6, float %696)  ; FAbs(value)
  %700 = fsub fast float %698, %699
  %701 = call float @dx.op.dot3.f32(i32 55, float %694, float %696, float %700, float %694, float %696, float %700)  ; Dot3(ax,ay,az,bx,by,bz)
  %702 = call float @dx.op.unary.f32(i32 25, float %701)  ; Rsqrt(value)
  %703 = fmul fast float %694, %702
  %704 = fmul fast float %696, %702
  %705 = add i32 %31, 40
  %706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %705, i32 undef)  ; BufferLoad(srv,index,wot)
  %707 = extractvalue %dx.types.ResRet.i32 %706, 0
  %708 = and i32 %707, 255
  %709 = uitofp i32 %708 to float
  %710 = fmul fast float %709, 0x3F70101020000000
  %711 = lshr i32 %707, 8
  %712 = and i32 %711, 255
  %713 = uitofp i32 %712 to float
  %714 = fmul fast float %713, 0x3F70101020000000
  %715 = lshr i32 %707, 16
  %716 = and i32 %715, 255
  %717 = uitofp i32 %716 to float
  %718 = fmul fast float %717, 0x3F70101020000000
  %719 = fmul fast float %710, %710
  %720 = fmul fast float %714, %714
  %721 = fmul fast float %718, %718
  %722 = add i32 %31, 132
  %723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %722, i32 undef)  ; BufferLoad(srv,index,wot)
  %724 = extractvalue %dx.types.ResRet.i32 %723, 0
  %725 = add i32 %724, 0
  %726 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %725, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %727 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %726, %dx.types.Handle %58, float %188, float %189, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %728 = extractvalue %dx.types.ResRet.f32 %727, 0
  %729 = extractvalue %dx.types.ResRet.f32 %727, 1
  %730 = extractvalue %dx.types.ResRet.f32 %727, 2
  %731 = fmul fast float %719, %728
  %732 = fmul fast float %720, %729
  %733 = fmul fast float %721, %730
  %734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %735 = extractvalue %dx.types.CBufRet.f32 %734, 3
  %736 = fcmp fast ogt float %735, 0.000000e+00
  %737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %738 = extractvalue %dx.types.CBufRet.f32 %737, 1
  br i1 %736, label %739, label %764

; <label>:739                                     ; preds = %609
  %740 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %36, float %37, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %741 = extractvalue %dx.types.ResRet.f32 %740, 0
  %742 = extractvalue %dx.types.ResRet.f32 %740, 1
  %743 = extractvalue %dx.types.ResRet.f32 %740, 2
  %744 = extractvalue %dx.types.ResRet.f32 %740, 3
  %745 = fmul fast float %738, %744
  %746 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %36, float %37, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %747 = extractvalue %dx.types.ResRet.f32 %746, 0
  %748 = extractvalue %dx.types.ResRet.f32 %746, 1
  %749 = extractvalue %dx.types.ResRet.f32 %746, 2
  %750 = extractvalue %dx.types.ResRet.f32 %746, 3
  %751 = fmul fast float %738, %747
  %752 = fmul fast float %738, %748
  %753 = fmul fast float %738, %749
  %754 = fmul fast float %738, %750
  %755 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %36, float %37, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %756 = extractvalue %dx.types.ResRet.f32 %755, 0
  %757 = extractvalue %dx.types.ResRet.f32 %755, 1
  %758 = extractvalue %dx.types.ResRet.f32 %755, 2
  %759 = extractvalue %dx.types.ResRet.f32 %755, 3
  %760 = fmul fast float %738, %756
  %761 = fmul fast float %738, %757
  %762 = fmul fast float %738, %758
  %763 = fmul fast float %738, %759
  br label %769

; <label>:764                                     ; preds = %609
  %765 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %26, float %36, float %37, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %766 = extractvalue %dx.types.ResRet.f32 %765, 0
  %767 = extractvalue %dx.types.ResRet.f32 %765, 1
  %768 = extractvalue %dx.types.ResRet.f32 %765, 2
  br label %769

; <label>:769                                     ; preds = %764, %739
  %770 = phi float [ %760, %739 ], [ 0.000000e+00, %764 ]
  %771 = phi float [ %761, %739 ], [ 0.000000e+00, %764 ]
  %772 = phi float [ %762, %739 ], [ 0.000000e+00, %764 ]
  %773 = phi float [ %763, %739 ], [ 0.000000e+00, %764 ]
  %774 = phi float [ %751, %739 ], [ 0.000000e+00, %764 ]
  %775 = phi float [ %752, %739 ], [ 0.000000e+00, %764 ]
  %776 = phi float [ %753, %739 ], [ 0.000000e+00, %764 ]
  %777 = phi float [ %754, %739 ], [ 0.000000e+00, %764 ]
  %778 = phi float [ %741, %739 ], [ %766, %764 ]
  %779 = phi float [ %742, %739 ], [ %767, %764 ]
  %780 = phi float [ %743, %739 ], [ %768, %764 ]
  %781 = phi float [ %745, %739 ], [ 0.000000e+00, %764 ]
  %782 = fmul float %738, %780
  %783 = fmul float %738, %779
  %784 = fmul float %738, %778
  %785 = call float @dx.op.dot2.f32(i32 54, float %703, float %704, float %703, float %704)  ; Dot2(ax,ay,bx,by)
  %786 = fsub fast float 1.000000e+00, %785
  %787 = call float @dx.op.unary.f32(i32 7, float %786)  ; Saturate(value)
  %788 = call float @dx.op.unary.f32(i32 24, float %787)  ; Sqrt(value)
  %789 = fmul fast float %788, %42
  %790 = fmul fast float %788, %43
  %791 = fmul fast float %788, %44
  %792 = fmul fast float %703, %38
  %793 = fmul fast float %703, %39
  %794 = fmul fast float %703, %40
  %795 = fmul fast float %108, %704
  %796 = fmul fast float %109, %704
  %797 = fmul fast float %110, %704
  %798 = fadd fast float %795, %792
  %799 = fadd fast float %798, %789
  %800 = fadd fast float %796, %793
  %801 = fadd fast float %800, %790
  %802 = fadd fast float %797, %794
  %803 = fadd fast float %802, %791
  %804 = call float @dx.op.dot3.f32(i32 55, float %799, float %801, float %803, float %799, float %801, float %803)  ; Dot3(ax,ay,az,bx,by,bz)
  %805 = call float @dx.op.unary.f32(i32 25, float %804)  ; Rsqrt(value)
  %806 = fmul fast float %799, %805
  %807 = fmul fast float %801, %805
  %808 = fmul fast float %803, %805
  %809 = call float @dx.op.dot3.f32(i32 55, float %96, float %97, float %98, float %96, float %97, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %810 = call float @dx.op.unary.f32(i32 25, float %809)  ; Rsqrt(value)
  %811 = fmul fast float %810, %96
  %812 = fmul fast float %810, %97
  %813 = fmul fast float %810, %98
  %814 = fsub fast float -0.000000e+00, %811
  %815 = fsub fast float -0.000000e+00, %812
  %816 = fsub fast float -0.000000e+00, %813
  %817 = fadd fast float %635, 0xBFB99999A0000000
  %818 = call float @dx.op.unary.f32(i32 7, float %817)  ; Saturate(value)
  %819 = fmul fast float %818, 0x3FF1C71C80000000
  %820 = call float @dx.op.binary.f32(i32 36, float %635, float 0x3FB99999A0000000)  ; FMin(a,b)
  %821 = fsub fast float 1.000000e+00, %819
  %822 = call float @dx.op.unary.f32(i32 7, float %821)  ; Saturate(value)
  %823 = fmul fast float %822, %652
  %824 = fmul fast float %822, %655
  %825 = fmul fast float %822, %658
  %826 = call float @dx.op.unary.f32(i32 7, float %823)  ; Saturate(value)
  %827 = call float @dx.op.unary.f32(i32 7, float %824)  ; Saturate(value)
  %828 = call float @dx.op.unary.f32(i32 7, float %825)  ; Saturate(value)
  %829 = fmul fast float %819, %652
  %830 = fmul fast float %819, %655
  %831 = fmul fast float %819, %658
  %832 = fadd fast float %829, %820
  %833 = fadd fast float %830, %820
  %834 = fadd fast float %831, %820
  %835 = call float @dx.op.unary.f32(i32 7, float %832)  ; Saturate(value)
  %836 = call float @dx.op.unary.f32(i32 7, float %833)  ; Saturate(value)
  %837 = call float @dx.op.unary.f32(i32 7, float %834)  ; Saturate(value)
  %838 = call float @dx.op.unary.f32(i32 7, float %682)  ; Saturate(value)
  %839 = call float @dx.op.dot3.f32(i32 55, float %826, float %827, float %828, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %840 = add i32 %31, 32
  %841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %840, i32 undef)  ; BufferLoad(srv,index,wot)
  %842 = extractvalue %dx.types.ResRet.i32 %841, 0
  %843 = and i32 %842, 255
  %844 = uitofp i32 %843 to float
  %845 = lshr i32 %842, 8
  %846 = and i32 %845, 255
  %847 = uitofp i32 %846 to float
  %848 = fmul fast float %847, %839
  %849 = fadd fast float %848, %844
  %850 = fmul fast float %849, 0x3F70101020000000
  %851 = call float @dx.op.unary.f32(i32 7, float %850)  ; Saturate(value)
  %852 = and i32 %151, 8192
  %853 = icmp eq i32 %852, 0
  %854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %855 = extractvalue %dx.types.CBufRet.f32 %854, 0
  br i1 %853, label %862, label %856, !dx.controlflow.hints !76

; <label>:856                                     ; preds = %769
  %857 = add i32 %148, 176
  %858 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %857, i32 undef)  ; BufferLoad(srv,index,wot)
  %859 = extractvalue %dx.types.ResRet.f32 %858, 0
  %860 = fcmp fast oge float %859, 0.000000e+00
  %861 = select i1 %860, float %859, float %855
  br label %869

; <label>:862                                     ; preds = %769
  %863 = add i32 %31, 104
  %864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %863, i32 undef)  ; BufferLoad(srv,index,wot)
  %865 = extractvalue %dx.types.ResRet.i32 %864, 0
  %866 = bitcast i32 %865 to float
  %867 = fcmp fast oge float %866, 0.000000e+00
  %868 = select i1 %867, float %866, float %855
  br label %869

; <label>:869                                     ; preds = %862, %856
  %870 = phi float [ %861, %856 ], [ %868, %862 ]
  %871 = fsub fast float 1.000000e+00, %731
  %872 = fmul fast float %871, %614
  %873 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %241, i32 %242, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %874 = extractvalue %dx.types.ResRet.i32 %873, 0
  %875 = lshr i32 %874, 18
  %876 = uitofp i32 %875 to float
  %877 = fmul fast float %876, 0x3F4C00EBA0000000
  %878 = call float @dx.op.unary.f32(i32 21, float %877)  ; Exp(value)
  %879 = fadd fast float %878, -1.000000e+00
  %880 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %881 = extractvalue %dx.types.Dimensions %880, 0
  %882 = sitofp i32 %881 to float
  %883 = extractvalue %dx.types.Dimensions %880, 1
  %884 = sitofp i32 %883 to float
  %885 = fcmp fast oge float %239, %882
  %886 = fcmp fast oge float %240, %884
  %887 = or i1 %885, %886
  %888 = select i1 %887, float 0x4197782600000000, float %879
  %889 = icmp eq i32 %147, 3
  %890 = fcmp fast ogt float %54, %888
  %891 = and i1 %265, %890
  %892 = or i1 %889, %891
  %893 = icmp eq i32 %147, 2
  %894 = fcmp fast ole float %54, %888
  %895 = and i1 %893, %894
  %896 = or i1 %895, %892
  %897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %898 = extractvalue %dx.types.CBufRet.f32 %897, 3
  %899 = fcmp fast ogt float %898, 0.000000e+00
  br i1 %899, label %900, label %907

; <label>:900                                     ; preds = %869
  %901 = fmul fast float %807, 0xBFDF454380000000
  %902 = fmul fast float %808, 0x3FDF454380000000
  %903 = fmul fast float %806, 0xBFDF454380000000
  %904 = call float @dx.op.dot4.f32(i32 56, float %784, float %783, float %782, float %781, float 0x3FD20DD760000000, float %901, float %902, float %903)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %905 = call float @dx.op.dot4.f32(i32 56, float %774, float %775, float %776, float %777, float 0x3FD20DD760000000, float %901, float %902, float %903)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %906 = call float @dx.op.dot4.f32(i32 56, float %770, float %771, float %772, float %773, float 0x3FD20DD760000000, float %901, float %902, float %903)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %907

; <label>:907                                     ; preds = %900, %869
  %908 = phi float [ %904, %900 ], [ %784, %869 ]
  %909 = phi float [ %905, %900 ], [ %783, %869 ]
  %910 = phi float [ %906, %900 ], [ %782, %869 ]
  %911 = call float @dx.op.dot3.f32(i32 55, float %806, float %807, float %808, float %814, float %815, float %816)  ; Dot3(ax,ay,az,bx,by,bz)
  %912 = call float @dx.op.unary.f32(i32 7, float %911)  ; Saturate(value)
  br i1 %899, label %913, label %1013

; <label>:913                                     ; preds = %907
  %914 = fsub fast float -0.000000e+00, %773
  %915 = fsub fast float %914, %777
  %916 = fsub fast float %915, %781
  %917 = fsub fast float -0.000000e+00, %771
  %918 = fsub fast float %917, %775
  %919 = fsub fast float %918, %783
  %920 = fadd fast float %776, %772
  %921 = fadd fast float %920, %782
  %922 = call float @dx.op.dot3.f32(i32 55, float %916, float %919, float %921, float %916, float %919, float %921)  ; Dot3(ax,ay,az,bx,by,bz)
  %923 = call float @dx.op.unary.f32(i32 25, float %922)  ; Rsqrt(value)
  %924 = fmul fast float %923, %916
  %925 = fmul fast float %923, %919
  %926 = fmul fast float %923, %921
  %927 = fmul fast float %925, 0xBFD4D8D7C0000000
  %928 = fmul fast float %926, 0x3FD4D8D7C0000000
  %929 = fmul fast float %924, 0xBFD4D8D7C0000000
  %930 = call float @dx.op.dot4.f32(i32 56, float %784, float %783, float %782, float %781, float 0x3FD20DD760000000, float %927, float %928, float %929)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %931 = call float @dx.op.dot4.f32(i32 56, float %774, float %775, float %776, float %777, float 0x3FD20DD760000000, float %927, float %928, float %929)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %932 = call float @dx.op.dot4.f32(i32 56, float %770, float %771, float %772, float %773, float 0x3FD20DD760000000, float %927, float %928, float %929)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %933 = fmul fast float %930, 0x4003333340000000
  %934 = fmul fast float %784, 0x3FE5AA35A0000000
  %935 = fsub fast float %933, %934
  %936 = fmul fast float %931, 0x4003333340000000
  %937 = fmul fast float %774, 0x3FE5AA35A0000000
  %938 = fsub fast float %936, %937
  %939 = fmul fast float %932, 0x4003333340000000
  %940 = fmul fast float %770, 0x3FE5AA35A0000000
  %941 = fsub fast float %939, %940
  %942 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %935)  ; FMax(a,b)
  %943 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %938)  ; FMax(a,b)
  %944 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %941)  ; FMax(a,b)
  %945 = fsub fast float %924, %811
  %946 = fsub fast float %925, %812
  %947 = fsub fast float %926, %813
  %948 = call float @dx.op.dot3.f32(i32 55, float %945, float %946, float %947, float %945, float %946, float %947)  ; Dot3(ax,ay,az,bx,by,bz)
  %949 = call float @dx.op.unary.f32(i32 25, float %948)  ; Rsqrt(value)
  %950 = fmul fast float %949, %945
  %951 = fmul fast float %949, %946
  %952 = fmul fast float %949, %947
  %953 = call float @dx.op.dot3.f32(i32 55, float %806, float %807, float %808, float %924, float %925, float %926)  ; Dot3(ax,ay,az,bx,by,bz)
  %954 = call float @dx.op.unary.f32(i32 6, float %953)  ; FAbs(value)
  %955 = call float @dx.op.dot3.f32(i32 55, float %806, float %807, float %808, float %950, float %951, float %952)  ; Dot3(ax,ay,az,bx,by,bz)
  %956 = fmul fast float %955, %955
  %957 = call float @dx.op.dot3.f32(i32 55, float %814, float %815, float %816, float %950, float %951, float %952)  ; Dot3(ax,ay,az,bx,by,bz)
  %958 = call float @dx.op.unary.f32(i32 6, float %957)  ; FAbs(value)
  %959 = fsub fast float 1.000000e+00, %838
  %960 = call float @dx.op.binary.f32(i32 35, float %959, float 0x3F847AE140000000)  ; FMax(a,b)
  %961 = fmul fast float %960, %960
  %962 = fmul fast float %961, %961
  %963 = fsub fast float 1.000000e+00, %962
  %964 = fmul fast float %912, %912
  %965 = fmul fast float %964, %963
  %966 = fadd fast float %965, %962
  %967 = bitcast float %966 to i32
  %968 = ashr i32 %967, 1
  %969 = add nsw i32 %968, 532487669
  %970 = bitcast i32 %969 to float
  %971 = fadd fast float %970, %912
  %972 = fmul fast float %962, %956
  %973 = fsub fast float 1.000000e+00, %956
  %974 = fadd fast float %973, %972
  %975 = fmul fast float %954, %954
  %976 = fmul fast float %975, %963
  %977 = fadd fast float %976, %962
  %978 = bitcast float %977 to i32
  %979 = ashr i32 %978, 1
  %980 = add nsw i32 %979, 532487669
  %981 = bitcast i32 %980 to float
  %982 = fadd fast float %981, %954
  %983 = fmul fast float %974, %974
  %984 = fmul fast float %983, %971
  %985 = fmul fast float %984, %982
  %986 = fdiv fast float 1.000000e+00, %985
  %987 = fmul fast float %962, %986
  %988 = fsub fast float 1.000000e+00, %958
  %989 = bitcast float %988 to i32
  %990 = sitofp i32 %989 to float
  %991 = fmul fast float %990, 5.000000e+00
  %992 = fadd fast float %991, 0xC1EFBF8940000000
  %993 = fptosi float %992 to i32
  %994 = bitcast i32 %993 to float
  %995 = fsub fast float 1.000000e+00, %835
  %996 = fsub fast float 1.000000e+00, %836
  %997 = fsub fast float 1.000000e+00, %837
  %998 = fmul fast float %994, %995
  %999 = fmul fast float %994, %996
  %1000 = fmul fast float %994, %997
  %1001 = fadd fast float %998, %835
  %1002 = fadd fast float %999, %836
  %1003 = fadd fast float %1000, %837
  %1004 = fmul fast float %987, %942
  %1005 = fmul fast float %1004, %1001
  %1006 = fmul fast float %987, %943
  %1007 = fmul fast float %1006, %1002
  %1008 = fmul fast float %987, %944
  %1009 = fmul fast float %1008, %1003
  %1010 = call float @dx.op.binary.f32(i32 35, float %1005, float 0.000000e+00)  ; FMax(a,b)
  %1011 = call float @dx.op.binary.f32(i32 35, float %1007, float 0.000000e+00)  ; FMax(a,b)
  %1012 = call float @dx.op.binary.f32(i32 35, float %1009, float 0.000000e+00)  ; FMax(a,b)
  br label %1013

; <label>:1013                                    ; preds = %913, %907
  %1014 = phi float [ %1010, %913 ], [ 0.000000e+00, %907 ]
  %1015 = phi float [ %1011, %913 ], [ 0.000000e+00, %907 ]
  %1016 = phi float [ %1012, %913 ], [ 0.000000e+00, %907 ]
  %1017 = fmul fast float %912, 9.843750e-01
  %1018 = fmul fast float %838, 9.843750e-01
  %1019 = fadd fast float %1017, 7.812500e-03
  %1020 = fadd fast float %1018, 7.812500e-03
  %1021 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %26, float %1019, float %1020, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1022 = extractvalue %dx.types.ResRet.f32 %1021, 2
  %1023 = extractvalue %dx.types.ResRet.f32 %1021, 3
  %1024 = fmul fast float %1022, %835
  %1025 = fmul fast float %1022, %836
  %1026 = fmul fast float %1022, %837
  %1027 = fadd fast float %1024, %1023
  %1028 = fadd fast float %1025, %1023
  %1029 = fadd fast float %1026, %1023
  %1030 = call float @dx.op.binary.f32(i32 35, float %1028, float %1029)  ; FMax(a,b)
  %1031 = call float @dx.op.binary.f32(i32 35, float %1027, float %1030)  ; FMax(a,b)
  %1032 = fsub fast float 1.000000e+00, %1031
  %1033 = call float @dx.op.dot3.f32(i32 55, float %811, float %812, float %813, float %806, float %807, float %808)  ; Dot3(ax,ay,az,bx,by,bz)
  %1034 = fmul fast float %1033, 2.000000e+00
  %1035 = fmul fast float %1034, %806
  %1036 = fmul fast float %1034, %807
  %1037 = fmul fast float %1034, %808
  %1038 = fsub fast float %811, %1035
  %1039 = fsub fast float %812, %1036
  %1040 = fsub fast float %813, %1037
  br i1 %899, label %1041, label %1048

; <label>:1041                                    ; preds = %1013
  %1042 = fmul fast float %1039, 0xBFDF454380000000
  %1043 = fmul fast float %1040, 0x3FDF454380000000
  %1044 = fmul fast float %1038, 0xBFDF454380000000
  %1045 = call float @dx.op.dot4.f32(i32 56, float %784, float %783, float %782, float %781, float 0x3FD20DD760000000, float %1042, float %1043, float %1044)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1046 = call float @dx.op.dot4.f32(i32 56, float %774, float %775, float %776, float %777, float 0x3FD20DD760000000, float %1042, float %1043, float %1044)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1047 = call float @dx.op.dot4.f32(i32 56, float %770, float %771, float %772, float %773, float 0x3FD20DD760000000, float %1042, float %1043, float %1044)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %1048

; <label>:1048                                    ; preds = %1041, %1013
  %1049 = phi float [ %1045, %1041 ], [ %784, %1013 ]
  %1050 = phi float [ %1046, %1041 ], [ %783, %1013 ]
  %1051 = phi float [ %1047, %1041 ], [ %782, %1013 ]
  %1052 = call float @dx.op.dot3.f32(i32 55, float %1049, float %1050, float %1051, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %1054 = extractvalue %dx.types.CBufRet.f32 %1053, 2
  %1055 = extractvalue %dx.types.CBufRet.f32 %1053, 3
  %1056 = fmul fast float %1054, %61
  %1057 = fmul fast float %1055, %62
  %1058 = fptoui float %1056 to i32
  %1059 = fptoui float %1057 to i32
  %1060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1061 = extractvalue %dx.types.CBufRet.f32 %1060, 0
  %1062 = extractvalue %dx.types.CBufRet.f32 %1060, 2
  %1063 = extractvalue %dx.types.CBufRet.f32 %1060, 3
  %1064 = fadd fast float %54, -4.000000e+00
  %1065 = call float @dx.op.binary.f32(i32 35, float %1064, float 0.000000e+00)  ; FMax(a,b)
  %1066 = fadd fast float %1065, %1061
  %1067 = fmul fast float %1066, %1062
  %1068 = call float @dx.op.unary.f32(i32 23, float %1067)  ; Log(value)
  %1069 = fmul fast float %1068, %1063
  %1070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1071 = extractvalue %dx.types.CBufRet.f32 %1070, 2
  %1072 = fmul fast float %1069, %1071
  %1073 = call float @dx.op.unary.f32(i32 7, float %1072)  ; Saturate(value)
  %1074 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1075 = extractvalue %dx.types.CBufRet.i32 %1074, 1
  %1076 = add i32 %1075, -1
  %1077 = uitofp i32 %1075 to float
  %1078 = fmul fast float %1077, %1073
  %1079 = fptoui float %1078 to i32
  %1080 = call i32 @dx.op.binary.i32(i32 40, i32 %1079, i32 %1076)  ; UMin(a,b)
  %1081 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %1082 = extractvalue %dx.types.CBufRet.i32 %1081, 2
  %1083 = extractvalue %dx.types.CBufRet.i32 %1081, 3
  %1084 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1059, i32 %1082, i32 %1058)  ; UMad(a,b,c)
  %1085 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1080, i32 %1083, i32 %1084)  ; UMad(a,b,c)
  %1086 = call float @dx.op.binary.f32(i32 35, float %54, float 0.000000e+00)  ; FMax(a,b)
  %1087 = fptoui float %1086 to i32
  %1088 = lshr i32 %1087, 5
  %1089 = call i32 @dx.op.binary.i32(i32 40, i32 %1088, i32 8191)  ; UMin(a,b)
  %1090 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1091 = extractvalue %dx.types.CBufRet.i32 %1090, 2
  %1092 = add nsw i32 %1091, -1
  %1093 = call i32 @dx.op.binary.i32(i32 37, i32 %1092, i32 0)  ; IMax(a,b)
  %1094 = shl i32 %1089, 2
  %1095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1094, i32 undef)  ; BufferLoad(srv,index,wot)
  %1096 = extractvalue %dx.types.ResRet.i32 %1095, 0
  %1097 = lshr i32 %1096, 16
  %1098 = and i32 %1096, 65535
  %1099 = lshr i32 %1096, 21
  %1100 = lshr i32 %1098, 5
  %1101 = call i32 @dx.op.binary.i32(i32 40, i32 %1100, i32 %1093)  ; UMin(a,b)
  %1102 = icmp ugt i32 %1099, %1101
  br i1 %1102, label %1465, label %1103

; <label>:1103                                    ; preds = %1048
  br label %1104

; <label>:1104                                    ; preds = %1457, %1103
  %1105 = phi float [ %1458, %1457 ], [ 0.000000e+00, %1103 ]
  %1106 = phi float [ %1459, %1457 ], [ 0.000000e+00, %1103 ]
  %1107 = phi float [ %1460, %1457 ], [ 0.000000e+00, %1103 ]
  %1108 = phi float [ %1461, %1457 ], [ 1.000000e+00, %1103 ]
  %1109 = phi i32 [ %1462, %1457 ], [ %1099, %1103 ]
  %1110 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1111 = extractvalue %dx.types.CBufRet.i32 %1110, 2
  %1112 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1085, i32 %1111, i32 %1109)  ; UMad(a,b,c)
  %1113 = shl i32 %1112, 2
  %1114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1113, i32 undef)  ; BufferLoad(srv,index,wot)
  %1115 = extractvalue %dx.types.ResRet.i32 %1114, 0
  %1116 = shl i32 %1109, 5
  %1117 = sub nsw i32 %1097, %1116
  %1118 = call i32 @dx.op.binary.i32(i32 37, i32 %1117, i32 0)  ; IMax(a,b)
  %1119 = call i32 @dx.op.binary.i32(i32 38, i32 %1118, i32 31)  ; IMin(a,b)
  %1120 = sub nsw i32 1, %1097
  %1121 = add nsw i32 %1120, %1098
  %1122 = call i32 @dx.op.binary.i32(i32 37, i32 %1121, i32 0)  ; IMax(a,b)
  %1123 = call i32 @dx.op.binary.i32(i32 38, i32 %1122, i32 32)  ; IMin(a,b)
  %1124 = and i32 %1123, 31
  %1125 = shl i32 -1, %1124
  %1126 = xor i32 %1125, -1
  %1127 = and i32 %1119, 31
  %1128 = shl i32 %1126, %1127
  %1129 = icmp eq i32 %1123, 32
  %1130 = select i1 %1129, i32 -1, i32 %1128
  %1131 = and i32 %1130, %1115
  %1132 = icmp eq i32 %1131, 0
  br i1 %1132, label %1457, label %1133

; <label>:1133                                    ; preds = %1104
  br label %1134

; <label>:1134                                    ; preds = %1240, %1133
  %1135 = phi float [ %1241, %1240 ], [ %1105, %1133 ]
  %1136 = phi float [ %1242, %1240 ], [ %1106, %1133 ]
  %1137 = phi float [ %1243, %1240 ], [ %1107, %1133 ]
  %1138 = phi float [ %1244, %1240 ], [ %1108, %1133 ]
  %1139 = phi i32 [ %1144, %1240 ], [ %1131, %1133 ]
  %1140 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1139)  ; FirstbitLo(value)
  %1141 = add i32 %1140, %1116
  %1142 = and i32 %1140, 31
  %1143 = shl i32 1, %1142
  %1144 = xor i32 %1143, %1139
  %1145 = mul i32 %1141, 72
  %1146 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1145, i32 undef)  ; BufferLoad(srv,index,wot)
  %1147 = extractvalue %dx.types.ResRet.f32 %1146, 0
  %1148 = extractvalue %dx.types.ResRet.f32 %1146, 1
  %1149 = extractvalue %dx.types.ResRet.f32 %1146, 2
  %1150 = add i32 %1145, 12
  %1151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1150, i32 undef)  ; BufferLoad(srv,index,wot)
  %1152 = extractvalue %dx.types.ResRet.i32 %1151, 0
  %1153 = add i32 %1145, 16
  %1154 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1153, i32 undef)  ; BufferLoad(srv,index,wot)
  %1155 = extractvalue %dx.types.ResRet.f32 %1154, 0
  %1156 = extractvalue %dx.types.ResRet.f32 %1154, 1
  %1157 = extractvalue %dx.types.ResRet.f32 %1154, 2
  %1158 = add i32 %1145, 28
  %1159 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1158, i32 undef)  ; BufferLoad(srv,index,wot)
  %1160 = extractvalue %dx.types.ResRet.f32 %1159, 0
  %1161 = add i32 %1145, 32
  %1162 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1161, i32 undef)  ; BufferLoad(srv,index,wot)
  %1163 = extractvalue %dx.types.ResRet.f32 %1162, 0
  %1164 = extractvalue %dx.types.ResRet.f32 %1162, 1
  %1165 = extractvalue %dx.types.ResRet.f32 %1162, 2
  %1166 = extractvalue %dx.types.ResRet.f32 %1162, 3
  %1167 = add i32 %1145, 48
  %1168 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1169 = extractvalue %dx.types.ResRet.f32 %1168, 0
  %1170 = extractvalue %dx.types.ResRet.f32 %1168, 1
  %1171 = add i32 %1145, 56
  %1172 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1171, i32 undef)  ; BufferLoad(srv,index,wot)
  %1173 = extractvalue %dx.types.ResRet.f32 %1172, 0
  %1174 = extractvalue %dx.types.ResRet.f32 %1172, 1
  %1175 = add i32 %1145, 64
  %1176 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1177 = extractvalue %dx.types.ResRet.f32 %1176, 0
  %1178 = extractvalue %dx.types.ResRet.f32 %1176, 1
  %1179 = mul i32 %1141, 60
  %1180 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1179, i32 undef)  ; BufferLoad(srv,index,wot)
  %1181 = extractvalue %dx.types.ResRet.f32 %1180, 0
  %1182 = extractvalue %dx.types.ResRet.f32 %1180, 1
  %1183 = extractvalue %dx.types.ResRet.f32 %1180, 2
  %1184 = add i32 %1179, 12
  %1185 = add i32 %1179, 48
  %1186 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1187 = extractvalue %dx.types.ResRet.f32 %1186, 0
  %1188 = extractvalue %dx.types.ResRet.f32 %1186, 1
  %1189 = extractvalue %dx.types.ResRet.f32 %1186, 2
  %1190 = and i32 %1152, 32767
  %1191 = bitcast float %1147 to i32
  %1192 = icmp eq i32 %1191, -1
  %1193 = bitcast float %1148 to i32
  %1194 = and i32 %1152, 32768
  %1195 = icmp ne i32 %1194, 0
  %1196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1197 = extractvalue %dx.types.CBufRet.f32 %1196, 0
  %1198 = extractvalue %dx.types.CBufRet.f32 %1196, 1
  %1199 = extractvalue %dx.types.CBufRet.f32 %1196, 2
  %1200 = fsub fast float %1181, %1197
  %1201 = fsub fast float %1182, %1198
  %1202 = fsub fast float %1183, %1199
  %1203 = fsub fast float %96, %1200
  %1204 = fsub fast float %97, %1201
  %1205 = fsub fast float %98, %1202
  %1206 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1184, i32 undef)  ; BufferLoad(srv,index,wot)
  %1207 = extractvalue %dx.types.ResRet.f32 %1206, 0
  %1208 = extractvalue %dx.types.ResRet.f32 %1206, 1
  %1209 = extractvalue %dx.types.ResRet.f32 %1206, 2
  %1210 = call float @dx.op.dot3.f32(i32 55, float %1203, float %1204, float %1205, float %1207, float %1208, float %1209)  ; Dot3(ax,ay,az,bx,by,bz)
  %1211 = add i32 %1179, 24
  %1212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.f32 %1212, 0
  %1214 = extractvalue %dx.types.ResRet.f32 %1212, 1
  %1215 = extractvalue %dx.types.ResRet.f32 %1212, 2
  %1216 = call float @dx.op.dot3.f32(i32 55, float %1203, float %1204, float %1205, float %1213, float %1214, float %1215)  ; Dot3(ax,ay,az,bx,by,bz)
  %1217 = add i32 %1179, 36
  %1218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1217, i32 undef)  ; BufferLoad(srv,index,wot)
  %1219 = extractvalue %dx.types.ResRet.f32 %1218, 0
  %1220 = extractvalue %dx.types.ResRet.f32 %1218, 1
  %1221 = extractvalue %dx.types.ResRet.f32 %1218, 2
  %1222 = call float @dx.op.dot3.f32(i32 55, float %1203, float %1204, float %1205, float %1219, float %1220, float %1221)  ; Dot3(ax,ay,az,bx,by,bz)
  %1223 = call float @dx.op.unary.f32(i32 6, float %1210)  ; FAbs(value)
  %1224 = call float @dx.op.unary.f32(i32 6, float %1216)  ; FAbs(value)
  %1225 = call float @dx.op.unary.f32(i32 6, float %1222)  ; FAbs(value)
  %1226 = fsub fast float %1187, %1223
  %1227 = fsub fast float %1188, %1224
  %1228 = fsub fast float %1189, %1225
  %1229 = fmul fast float %1226, %1155
  %1230 = fmul fast float %1227, %1156
  %1231 = fmul fast float %1228, %1157
  %1232 = call float @dx.op.binary.f32(i32 36, float %1230, float %1231)  ; FMin(a,b)
  %1233 = call float @dx.op.binary.f32(i32 36, float %1229, float %1232)  ; FMin(a,b)
  %1234 = call float @dx.op.unary.f32(i32 7, float %1233)  ; Saturate(value)
  %1235 = call float @dx.op.binary.f32(i32 36, float %1138, float %1234)  ; FMin(a,b)
  %1236 = uitofp i1 %1195 to float
  %1237 = fsub fast float 1.000000e+00, %1236
  %1238 = fmul fast float %1235, %1237
  %1239 = fcmp fast ogt float %1238, 0.000000e+00
  br i1 %1239, label %1246, label %1240

; <label>:1240                                    ; preds = %1388, %1134
  %1241 = phi float [ %1452, %1388 ], [ %1135, %1134 ]
  %1242 = phi float [ %1453, %1388 ], [ %1136, %1134 ]
  %1243 = phi float [ %1454, %1388 ], [ %1137, %1134 ]
  %1244 = phi float [ %1455, %1388 ], [ %1138, %1134 ]
  %1245 = icmp eq i32 %1139, %1143
  br i1 %1245, label %1456, label %1134

; <label>:1246                                    ; preds = %1134
  br i1 %1192, label %1304, label %1247

; <label>:1247                                    ; preds = %1246
  %1248 = fsub fast float -0.000000e+00, %1207
  %1249 = fsub fast float -0.000000e+00, %1208
  %1250 = fsub fast float -0.000000e+00, %1209
  %1251 = call float @dx.op.dot3.f32(i32 55, float %1038, float %1039, float %1040, float %1248, float %1249, float %1250)  ; Dot3(ax,ay,az,bx,by,bz)
  %1252 = fsub fast float -0.000000e+00, %1251
  %1253 = call float @dx.op.dot3.f32(i32 55, float %1203, float %1204, float %1205, float %1248, float %1249, float %1250)  ; Dot3(ax,ay,az,bx,by,bz)
  %1254 = fadd fast float %1253, %1170
  %1255 = fadd fast float %1169, %1253
  %1256 = fsub fast float -0.000000e+00, %1255
  %1257 = fcmp ogt float %1251, -0.000000e+00
  %1258 = select i1 %1257, float %1256, float %1254
  %1259 = call float @dx.op.unary.f32(i32 6, float %1252)  ; FAbs(value)
  %1260 = fdiv fast float 1.000000e+00, %1259
  %1261 = fmul fast float %1258, %1260
  %1262 = call float @dx.op.binary.f32(i32 35, float %1261, float 0.000000e+00)  ; FMax(a,b)
  %1263 = fsub fast float -0.000000e+00, %1213
  %1264 = fsub fast float -0.000000e+00, %1214
  %1265 = fsub fast float -0.000000e+00, %1215
  %1266 = call float @dx.op.dot3.f32(i32 55, float %1038, float %1039, float %1040, float %1263, float %1264, float %1265)  ; Dot3(ax,ay,az,bx,by,bz)
  %1267 = fsub fast float -0.000000e+00, %1266
  %1268 = call float @dx.op.dot3.f32(i32 55, float %1203, float %1204, float %1205, float %1263, float %1264, float %1265)  ; Dot3(ax,ay,az,bx,by,bz)
  %1269 = fadd fast float %1268, %1174
  %1270 = fadd fast float %1173, %1268
  %1271 = fsub fast float -0.000000e+00, %1270
  %1272 = fcmp ogt float %1266, -0.000000e+00
  %1273 = select i1 %1272, float %1271, float %1269
  %1274 = call float @dx.op.unary.f32(i32 6, float %1267)  ; FAbs(value)
  %1275 = fdiv fast float 1.000000e+00, %1274
  %1276 = fmul fast float %1273, %1275
  %1277 = call float @dx.op.binary.f32(i32 35, float %1276, float 0.000000e+00)  ; FMax(a,b)
  %1278 = fsub fast float -0.000000e+00, %1219
  %1279 = fsub fast float -0.000000e+00, %1220
  %1280 = fsub fast float -0.000000e+00, %1221
  %1281 = call float @dx.op.dot3.f32(i32 55, float %1038, float %1039, float %1040, float %1278, float %1279, float %1280)  ; Dot3(ax,ay,az,bx,by,bz)
  %1282 = fsub fast float -0.000000e+00, %1281
  %1283 = call float @dx.op.dot3.f32(i32 55, float %1203, float %1204, float %1205, float %1278, float %1279, float %1280)  ; Dot3(ax,ay,az,bx,by,bz)
  %1284 = fadd fast float %1283, %1178
  %1285 = fadd fast float %1177, %1283
  %1286 = fsub fast float -0.000000e+00, %1285
  %1287 = fcmp ogt float %1281, -0.000000e+00
  %1288 = select i1 %1287, float %1286, float %1284
  %1289 = call float @dx.op.unary.f32(i32 6, float %1282)  ; FAbs(value)
  %1290 = fdiv fast float 1.000000e+00, %1289
  %1291 = fmul fast float %1288, %1290
  %1292 = call float @dx.op.binary.f32(i32 35, float %1291, float 0.000000e+00)  ; FMax(a,b)
  %1293 = call float @dx.op.binary.f32(i32 36, float %1277, float %1292)  ; FMin(a,b)
  %1294 = call float @dx.op.binary.f32(i32 36, float %1262, float %1293)  ; FMin(a,b)
  %1295 = fmul fast float %1294, %1038
  %1296 = fmul fast float %1294, %1039
  %1297 = fmul fast float %1294, %1040
  %1298 = fadd fast float %1295, %96
  %1299 = fadd fast float %1296, %97
  %1300 = fadd fast float %1297, %98
  %1301 = fsub fast float %1298, %1147
  %1302 = fsub fast float %1299, %1148
  %1303 = fsub fast float %1300, %1149
  br label %1311

; <label>:1304                                    ; preds = %1246
  %1305 = fmul fast float %1038, 8.096000e+03
  %1306 = fmul fast float %1039, 8.096000e+03
  %1307 = fmul fast float %1040, 8.096000e+03
  %1308 = fadd fast float %1305, %96
  %1309 = fadd fast float %1306, %97
  %1310 = fadd fast float %1307, %98
  br label %1311

; <label>:1311                                    ; preds = %1304, %1247
  %1312 = phi float [ %1038, %1304 ], [ %1301, %1247 ]
  %1313 = phi float [ %1039, %1304 ], [ %1302, %1247 ]
  %1314 = phi float [ %1040, %1304 ], [ %1303, %1247 ]
  %1315 = phi float [ %1308, %1304 ], [ %1298, %1247 ]
  %1316 = phi float [ %1309, %1304 ], [ %1299, %1247 ]
  %1317 = phi float [ %1310, %1304 ], [ %1300, %1247 ]
  %1318 = fcmp fast olt float %1166, 1.000000e+00
  br i1 %1318, label %1319, label %1350, !dx.controlflow.hints !77

; <label>:1319                                    ; preds = %1311
  %1320 = fmul fast float %1314, %1164
  %1321 = fmul fast float %1313, %1165
  %1322 = fsub fast float %1320, %1321
  %1323 = fmul fast float %1312, %1165
  %1324 = fmul fast float %1314, %1163
  %1325 = fsub fast float %1323, %1324
  %1326 = fmul fast float %1313, %1163
  %1327 = fmul fast float %1312, %1164
  %1328 = fsub fast float %1326, %1327
  %1329 = fmul fast float %1322, 2.000000e+00
  %1330 = fmul fast float %1325, 2.000000e+00
  %1331 = fmul fast float %1328, 2.000000e+00
  %1332 = fmul fast float %1329, %1166
  %1333 = fmul fast float %1330, %1166
  %1334 = fmul fast float %1331, %1166
  %1335 = fmul fast float %1331, %1164
  %1336 = fmul fast float %1330, %1165
  %1337 = fmul fast float %1329, %1165
  %1338 = fmul fast float %1331, %1163
  %1339 = fmul fast float %1330, %1163
  %1340 = fmul fast float %1329, %1164
  %1341 = fadd fast float %1335, %1312
  %1342 = fadd fast float %1341, %1332
  %1343 = fsub fast float %1342, %1336
  %1344 = fsub fast float %1313, %1338
  %1345 = fadd fast float %1344, %1333
  %1346 = fadd fast float %1345, %1337
  %1347 = fadd fast float %1334, %1314
  %1348 = fsub fast float %1347, %1340
  %1349 = fadd fast float %1348, %1339
  br label %1350

; <label>:1350                                    ; preds = %1319, %1311
  %1351 = phi float [ %1343, %1319 ], [ %1312, %1311 ]
  %1352 = phi float [ %1346, %1319 ], [ %1313, %1311 ]
  %1353 = phi float [ %1349, %1319 ], [ %1314, %1311 ]
  br i1 %1192, label %1385, label %1354

; <label>:1354                                    ; preds = %1350
  %1355 = fmul fast float %838, 0x400187C840000000
  %1356 = fadd fast float %1355, 0xC00EFC2120000000
  %1357 = fmul fast float %1356, %838
  %1358 = fadd fast float %1357, 0x3FE5D16340000000
  %1359 = fmul fast float %1358, %838
  %1360 = fadd fast float %1359, 1.000000e+00
  %1361 = call float @dx.op.unary.f32(i32 7, float %1360)  ; Saturate(value)
  %1362 = fsub fast float %1315, %96
  %1363 = fsub fast float %1316, %97
  %1364 = fsub fast float %1317, %98
  %1365 = fsub fast float %1315, %1147
  %1366 = fsub fast float %1316, %1148
  %1367 = fsub fast float %1317, %1149
  %1368 = call float @dx.op.dot3.f32(i32 55, float %1362, float %1363, float %1364, float %1362, float %1363, float %1364)  ; Dot3(ax,ay,az,bx,by,bz)
  %1369 = call float @dx.op.dot3.f32(i32 55, float %1365, float %1366, float %1367, float %1365, float %1366, float %1367)  ; Dot3(ax,ay,az,bx,by,bz)
  %1370 = fadd fast float %1369, 0x3EE4F8B580000000
  %1371 = fdiv fast float %1368, %1370
  %1372 = bitcast float %1371 to i32
  %1373 = ashr i32 %1372, 1
  %1374 = add nsw i32 %1373, 532487669
  %1375 = bitcast i32 %1374 to float
  %1376 = fmul fast float %1375, %1361
  %1377 = call float @dx.op.unary.f32(i32 7, float %1376)  ; Saturate(value)
  %1378 = fmul fast float %1377, 0x4009981AE0000000
  %1379 = fsub fast float 0x40111BBD80000000, %1378
  %1380 = fmul fast float %1379, %1377
  %1381 = fadd fast float %1380, 0xC0009F6020000000
  %1382 = fmul fast float %1381, %1377
  %1383 = fadd fast float %1382, 1.000000e+00
  %1384 = call float @dx.op.unary.f32(i32 7, float %1383)  ; Saturate(value)
  br label %1388

; <label>:1385                                    ; preds = %1350
  %1386 = icmp ne i32 %1193, -1
  %1387 = zext i1 %1386 to i32
  br label %1388

; <label>:1388                                    ; preds = %1385, %1354
  %1389 = phi float [ %838, %1385 ], [ %1384, %1354 ]
  %1390 = phi i32 [ %1387, %1385 ], [ 0, %1354 ]
  %1391 = fmul float %1389, 5.000000e+00
  %1392 = fsub float 5.000000e+00, %1391
  %1393 = icmp ne i32 %1390, 0
  %1394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %1395 = extractvalue %dx.types.CBufRet.f32 %1394, 3
  %1396 = fadd fast float %1395, %1392
  %1397 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1396)  ; FMax(a,b)
  %1398 = call float @dx.op.unary.f32(i32 6, float %1351)  ; FAbs(value)
  %1399 = call float @dx.op.unary.f32(i32 6, float %1352)  ; FAbs(value)
  %1400 = fadd fast float %1399, %1398
  %1401 = call float @dx.op.unary.f32(i32 6, float %1353)  ; FAbs(value)
  %1402 = fadd fast float %1400, %1401
  %1403 = fcmp fast oeq float %1402, 0.000000e+00
  %1404 = fdiv fast float 1.000000e+00, %1402
  %1405 = select i1 %1403, float 1.000000e+00, float %1404
  %1406 = fmul fast float %1405, %1351
  %1407 = fmul fast float %1405, %1352
  %1408 = call float @dx.op.unary.f32(i32 6, float %1407)  ; FAbs(value)
  %1409 = call float @dx.op.unary.f32(i32 6, float %1406)  ; FAbs(value)
  %1410 = fsub fast float 1.000000e+00, %1408
  %1411 = fsub fast float 1.000000e+00, %1409
  %1412 = fcmp fast oge float %1406, 0.000000e+00
  %1413 = fcmp fast oge float %1407, 0.000000e+00
  %1414 = select i1 %1412, float 1.000000e+00, float -1.000000e+00
  %1415 = select i1 %1413, float 1.000000e+00, float -1.000000e+00
  %1416 = fcmp fast ole float %1353, 0.000000e+00
  %1417 = fmul fast float %1414, %1410
  %1418 = fmul fast float %1415, %1411
  %1419 = select i1 %1416, float %1417, float %1406
  %1420 = select i1 %1416, float %1418, float %1407
  %1421 = fmul fast float %1419, 5.000000e-01
  %1422 = fmul fast float %1420, 5.000000e-01
  %1423 = fadd fast float %1421, 5.000000e-01
  %1424 = fadd fast float %1422, 5.000000e-01
  %1425 = uitofp i32 %1190 to float
  %1426 = call float @dx.op.binary.f32(i32 36, float %1397, float 3.000000e+00)  ; FMin(a,b)
  %1427 = fadd fast float %1426, 2.000000e+00
  %1428 = call float @dx.op.unary.f32(i32 21, float %1427)  ; Exp(value)
  %1429 = extractvalue %dx.types.CBufRet.f32 %1394, 1
  %1430 = fmul fast float %1429, %1428
  %1431 = fmul fast float %1430, 2.000000e+00
  %1432 = fsub fast float 1.000000e+00, %1431
  %1433 = fmul fast float %1423, %1432
  %1434 = fmul fast float %1424, %1432
  %1435 = fadd fast float %1433, %1430
  %1436 = fadd fast float %1434, %1430
  %1437 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %25, float %1435, float %1436, float %1425, float undef, i32 0, i32 0, i32 undef, float %1397)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1438 = extractvalue %dx.types.ResRet.f32 %1437, 0
  %1439 = extractvalue %dx.types.ResRet.f32 %1437, 1
  %1440 = extractvalue %dx.types.ResRet.f32 %1437, 2
  %1441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1442 = extractvalue %dx.types.CBufRet.f32 %1441, 3
  %1443 = fmul fast float %1442, %1160
  %1444 = call float @dx.op.binary.f32(i32 36, float %1052, float %1443)  ; FMin(a,b)
  %1445 = select i1 %1393, float %1444, float %1443
  %1446 = fmul fast float %1438, %1238
  %1447 = fmul fast float %1446, %1445
  %1448 = fmul fast float %1439, %1238
  %1449 = fmul fast float %1448, %1445
  %1450 = fmul fast float %1440, %1238
  %1451 = fmul fast float %1450, %1445
  %1452 = fadd fast float %1447, %1135
  %1453 = fadd fast float %1449, %1136
  %1454 = fadd fast float %1451, %1137
  %1455 = fsub fast float %1138, %1238
  br label %1240

; <label>:1456                                    ; preds = %1240
  br label %1457

; <label>:1457                                    ; preds = %1456, %1104
  %1458 = phi float [ %1105, %1104 ], [ %1241, %1456 ]
  %1459 = phi float [ %1106, %1104 ], [ %1242, %1456 ]
  %1460 = phi float [ %1107, %1104 ], [ %1243, %1456 ]
  %1461 = phi float [ %1108, %1104 ], [ %1244, %1456 ]
  %1462 = add i32 %1109, 1
  %1463 = icmp ugt i32 %1462, %1101
  br i1 %1463, label %1464, label %1104, !llvm.loop !78

; <label>:1464                                    ; preds = %1457
  br label %1465

; <label>:1465                                    ; preds = %1464, %1048
  %1466 = phi float [ 0.000000e+00, %1048 ], [ %1458, %1464 ]
  %1467 = phi float [ 0.000000e+00, %1048 ], [ %1459, %1464 ]
  %1468 = phi float [ 0.000000e+00, %1048 ], [ %1460, %1464 ]
  %1469 = call float @dx.op.dot3.f32(i32 55, float %1466, float %1467, float %1468, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1470 = select i1 %131, float 0.000000e+00, float %1466
  %1471 = select i1 %131, float %1469, float %1467
  %1472 = select i1 %131, float 0.000000e+00, float %1468
  %1473 = fmul fast float %1470, %1027
  %1474 = fmul fast float %1471, %1028
  %1475 = fmul fast float %1472, %1029
  %1476 = call float @dx.op.binary.f32(i32 35, float %1473, float 0.000000e+00)  ; FMax(a,b)
  %1477 = call float @dx.op.binary.f32(i32 35, float %1474, float 0.000000e+00)  ; FMax(a,b)
  %1478 = call float @dx.op.binary.f32(i32 35, float %1475, float 0.000000e+00)  ; FMax(a,b)
  %1479 = fadd fast float %1476, %1014
  %1480 = fadd fast float %1477, %1015
  %1481 = fadd fast float %1478, %1016
  %1482 = fmul fast float %1479, %613
  %1483 = fmul fast float %1480, %613
  %1484 = fmul fast float %1481, %613
  %1485 = fsub fast float 1.000000e+00, %838
  %1486 = call float @dx.op.binary.f32(i32 35, float %1485, float 0x3F847AE140000000)  ; FMax(a,b)
  %1487 = fmul fast float %1486, %1486
  %1488 = fmul fast float %1487, %1487
  %1489 = fmul fast float %1488, 0xC00A935000000000
  %1490 = call float @dx.op.unary.f32(i32 21, float %1489)  ; Exp(value)
  %1491 = fmul fast float %807, 0x3FDF454380000000
  %1492 = fmul fast float %808, 0xBFDF454380000000
  %1493 = fmul fast float %806, 0x3FDF454380000000
  %1494 = call float @dx.op.dot4.f32(i32 56, float %784, float %783, float %782, float %781, float 0x3FD20DD760000000, float %1491, float %1492, float %1493)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1495 = call float @dx.op.dot4.f32(i32 56, float %774, float %775, float %776, float %777, float 0x3FD20DD760000000, float %1491, float %1492, float %1493)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1496 = call float @dx.op.dot4.f32(i32 56, float %770, float %771, float %772, float %773, float 0x3FD20DD760000000, float %1491, float %1492, float %1493)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1497 = fsub fast float 1.000000e+00, %1490
  %1498 = fmul fast float %1497, %731
  %1499 = fmul fast float %1498, %1494
  %1500 = fmul fast float %1497, %732
  %1501 = fmul fast float %1500, %1495
  %1502 = fmul fast float %1497, %733
  %1503 = fmul fast float %1502, %1496
  %1504 = fadd fast float %1499, %908
  %1505 = fadd fast float %1501, %909
  %1506 = fadd fast float %1503, %910
  %1507 = fadd fast float %731, -1.000000e+00
  %1508 = fadd fast float %732, -1.000000e+00
  %1509 = fadd fast float %733, -1.000000e+00
  %1510 = fmul fast float %1507, %613
  %1511 = fmul fast float %1508, %613
  %1512 = fmul fast float %1509, %613
  %1513 = fadd fast float %1510, 1.000000e+00
  %1514 = fadd fast float %1511, 1.000000e+00
  %1515 = fadd fast float %1512, 1.000000e+00
  %1516 = call float @dx.op.dot3.f32(i32 55, float %1513, float %1514, float %1515, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1517 = fsub fast float 1.000000e+00, %1516
  %1518 = fmul fast float %870, %851
  %1519 = fsub fast float 1.000000e+00, %872
  %1520 = fsub fast float %1519, %851
  %1521 = call float @dx.op.unary.f32(i32 7, float %1520)  ; Saturate(value)
  %1522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1523 = extractvalue %dx.types.CBufRet.f32 %1522, 3
  %1524 = fmul fast float %1523, %1521
  %1525 = fadd fast float %1524, %1518
  %1526 = and i32 %151, 1048576
  %1527 = icmp eq i32 %1526, 0
  br i1 %1527, label %1612, label %1528, !dx.controlflow.hints !80

; <label>:1528                                    ; preds = %1465
  %1529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1530 = extractvalue %dx.types.CBufRet.f32 %1529, 2
  %1531 = extractvalue %dx.types.CBufRet.f32 %1529, 3
  %1532 = fmul fast float %1530, %61
  %1533 = fmul fast float %1531, %62
  %1534 = call float @dx.op.unary.f32(i32 7, float %1532)  ; Saturate(value)
  %1535 = call float @dx.op.unary.f32(i32 7, float %1533)  ; Saturate(value)
  %1536 = select i1 %896, i32 2, i32 0
  %1537 = or i32 %1536, 1
  %1538 = uitofp i32 %1537 to float
  %1539 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1534, float %1535, float %1538, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1540 = extractvalue %dx.types.ResRet.f32 %1539, 0
  %1541 = extractvalue %dx.types.ResRet.f32 %1539, 1
  %1542 = extractvalue %dx.types.ResRet.f32 %1539, 2
  %1543 = extractvalue %dx.types.ResRet.f32 %1539, 3
  %1544 = add nuw nsw i32 %1536, 2
  %1545 = uitofp i32 %1544 to float
  %1546 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1534, float %1535, float %1545, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1547 = extractvalue %dx.types.ResRet.f32 %1546, 0
  %1548 = extractvalue %dx.types.ResRet.f32 %1546, 1
  %1549 = extractvalue %dx.types.ResRet.f32 %1546, 2
  %1550 = extractvalue %dx.types.ResRet.f32 %1546, 3
  %1551 = call float @dx.op.binary.f32(i32 35, float %1541, float %1542)  ; FMax(a,b)
  %1552 = call float @dx.op.binary.f32(i32 35, float %1540, float %1551)  ; FMax(a,b)
  %1553 = call float @dx.op.binary.f32(i32 35, float %1552, float %1543)  ; FMax(a,b)
  %1554 = call float @dx.op.binary.f32(i32 36, float %1548, float %1549)  ; FMin(a,b)
  %1555 = call float @dx.op.binary.f32(i32 36, float %1547, float %1554)  ; FMin(a,b)
  %1556 = call float @dx.op.binary.f32(i32 36, float %1555, float %1550)  ; FMin(a,b)
  %1557 = fmul fast float %1553, 2.550000e+02
  %1558 = fadd fast float %1557, 0x3F70101020000000
  %1559 = fptoui float %1558 to i32
  %1560 = fmul fast float %1556, 2.550000e+02
  %1561 = fadd fast float %1560, 0x3F70101020000000
  %1562 = fptoui float %1561 to i32
  %1563 = icmp ult i32 %1559, %1562
  br i1 %1563, label %1564, label %1605

; <label>:1564                                    ; preds = %1528
  %1565 = fcmp fast ogt float %53, 9.843750e-01
  %1566 = select i1 %1565, float -4.000000e+00, float %1064
  %1567 = call float @dx.op.binary.f32(i32 35, float %1566, float 0.000000e+00)  ; FMax(a,b)
  %1568 = fadd fast float %1061, %1567
  %1569 = fmul fast float %1568, %1062
  %1570 = call float @dx.op.unary.f32(i32 23, float %1569)  ; Log(value)
  %1571 = fmul fast float %1063, %1570
  %1572 = fmul fast float %1571, %1071
  %1573 = call float @dx.op.unary.f32(i32 7, float %1572)  ; Saturate(value)
  %1574 = uitofp i32 %1559 to float
  %1575 = uitofp i32 %1562 to float
  %1576 = fadd fast float %1574, 5.000000e-01
  %1577 = fadd fast float %1575, 5.000000e-01
  %1578 = fmul fast float %1071, %1576
  %1579 = fmul fast float %1071, %1577
  %1580 = fadd fast float %1578, 0x3F0FFB4800000000
  %1581 = fadd fast float %1579, 0xBF0FFB4800000000
  %1582 = call float @dx.op.binary.f32(i32 35, float %1573, float %1580)  ; FMax(a,b)
  %1583 = call float @dx.op.binary.f32(i32 36, float %1582, float %1581)  ; FMin(a,b)
  %1584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1585 = extractvalue %dx.types.CBufRet.f32 %1584, 1
  %1586 = extractvalue %dx.types.CBufRet.f32 %1584, 2
  %1587 = extractvalue %dx.types.CBufRet.f32 %1584, 0
  %1588 = select i1 %896, float %1587, float 0.000000e+00
  %1589 = fmul fast float %1585, %1583
  %1590 = fadd fast float %1588, %1589
  %1591 = fadd fast float %1588, %1586
  %1592 = fsub fast float %1585, %1586
  %1593 = fadd fast float %1592, %1588
  %1594 = call float @dx.op.binary.f32(i32 35, float %1590, float %1591)  ; FMax(a,b)
  %1595 = call float @dx.op.binary.f32(i32 36, float %1594, float %1593)  ; FMin(a,b)
  %1596 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %25, float %1534, float %1535, float %1595, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1597 = extractvalue %dx.types.ResRet.f32 %1596, 0
  %1598 = extractvalue %dx.types.ResRet.f32 %1596, 1
  %1599 = extractvalue %dx.types.ResRet.f32 %1596, 2
  %1600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1601 = extractvalue %dx.types.CBufRet.f32 %1600, 1
  %1602 = fmul fast float %1601, %1597
  %1603 = fmul fast float %1601, %1598
  %1604 = fmul fast float %1601, %1599
  br label %1605

; <label>:1605                                    ; preds = %1564, %1528
  %1606 = phi float [ %1602, %1564 ], [ 1.000000e+00, %1528 ]
  %1607 = phi float [ %1603, %1564 ], [ 1.000000e+00, %1528 ]
  %1608 = phi float [ %1604, %1564 ], [ 1.000000e+00, %1528 ]
  %1609 = fmul fast float %1606, %1482
  %1610 = fmul fast float %1607, %1483
  %1611 = fmul fast float %1608, %1484
  br label %1612

; <label>:1612                                    ; preds = %1605, %1465
  %1613 = phi float [ %1609, %1605 ], [ %1482, %1465 ]
  %1614 = phi float [ %1610, %1605 ], [ %1483, %1465 ]
  %1615 = phi float [ %1611, %1605 ], [ %1484, %1465 ]
  %1616 = and i32 %151, 2097152
  %1617 = icmp eq i32 %1616, 0
  br i1 %1617, label %1622, label %1618, !dx.controlflow.hints !81

; <label>:1618                                    ; preds = %1612
  %1619 = add i32 %148, 192
  %1620 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1619, i32 undef)  ; BufferLoad(srv,index,wot)
  %1621 = extractvalue %dx.types.ResRet.f32 %1620, 0
  br label %1625

; <label>:1622                                    ; preds = %1612
  %1623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1624 = extractvalue %dx.types.CBufRet.f32 %1623, 3
  br label %1625

; <label>:1625                                    ; preds = %1622, %1618
  %1626 = phi float [ %1621, %1618 ], [ %1624, %1622 ]
  %1627 = fmul fast float %826, %613
  %1628 = fmul fast float %1627, %1032
  %1629 = fmul fast float %1628, %1504
  %1630 = fmul fast float %827, %613
  %1631 = fmul fast float %1630, %1032
  %1632 = fmul fast float %1631, %1505
  %1633 = fmul fast float %828, %613
  %1634 = fmul fast float %1633, %1032
  %1635 = fmul fast float %1634, %1506
  br i1 %891, label %1636, label %1769

; <label>:1636                                    ; preds = %1625
  %1637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1638 = extractvalue %dx.types.CBufRet.f32 %1637, 2
  %1639 = extractvalue %dx.types.CBufRet.f32 %1637, 3
  %1640 = fmul fast float %1638, %61
  %1641 = fmul fast float %1639, %62
  %1642 = call float @dx.op.unary.f32(i32 7, float %1640)  ; Saturate(value)
  %1643 = call float @dx.op.unary.f32(i32 7, float %1641)  ; Saturate(value)
  %1644 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1642, float %1643, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1645 = extractvalue %dx.types.ResRet.f32 %1644, 0
  %1646 = extractvalue %dx.types.ResRet.f32 %1644, 1
  %1647 = extractvalue %dx.types.ResRet.f32 %1644, 2
  %1648 = extractvalue %dx.types.ResRet.f32 %1644, 3
  %1649 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1642, float %1643, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1650 = extractvalue %dx.types.ResRet.f32 %1649, 0
  %1651 = extractvalue %dx.types.ResRet.f32 %1649, 1
  %1652 = extractvalue %dx.types.ResRet.f32 %1649, 2
  %1653 = extractvalue %dx.types.ResRet.f32 %1649, 3
  %1654 = call float @dx.op.binary.f32(i32 35, float %1646, float %1647)  ; FMax(a,b)
  %1655 = call float @dx.op.binary.f32(i32 35, float %1645, float %1654)  ; FMax(a,b)
  %1656 = call float @dx.op.binary.f32(i32 35, float %1655, float %1648)  ; FMax(a,b)
  %1657 = call float @dx.op.binary.f32(i32 36, float %1651, float %1652)  ; FMin(a,b)
  %1658 = call float @dx.op.binary.f32(i32 36, float %1650, float %1657)  ; FMin(a,b)
  %1659 = call float @dx.op.binary.f32(i32 36, float %1658, float %1653)  ; FMin(a,b)
  %1660 = fmul fast float %1656, 2.550000e+02
  %1661 = fadd fast float %1660, 0x3F70101020000000
  %1662 = fptoui float %1661 to i32
  %1663 = fmul fast float %1659, 2.550000e+02
  %1664 = fadd fast float %1663, 0x3F70101020000000
  %1665 = fptoui float %1664 to i32
  %1666 = icmp ult i32 %1662, %1665
  br i1 %1666, label %1667, label %1711

; <label>:1667                                    ; preds = %1636
  %1668 = fcmp fast ogt float %53, 9.843750e-01
  %1669 = select i1 %1668, float -4.000000e+00, float %1064
  %1670 = call float @dx.op.binary.f32(i32 35, float %1669, float 0.000000e+00)  ; FMax(a,b)
  %1671 = fadd fast float %1061, %1670
  %1672 = fmul fast float %1671, %1062
  %1673 = call float @dx.op.unary.f32(i32 23, float %1672)  ; Log(value)
  %1674 = fmul fast float %1063, %1673
  %1675 = fmul fast float %1674, %1071
  %1676 = call float @dx.op.unary.f32(i32 7, float %1675)  ; Saturate(value)
  %1677 = uitofp i32 %1662 to float
  %1678 = uitofp i32 %1665 to float
  %1679 = fadd fast float %1677, 5.000000e-01
  %1680 = fadd fast float %1678, 5.000000e-01
  %1681 = fmul fast float %1071, %1679
  %1682 = fmul fast float %1071, %1680
  %1683 = fadd fast float %1681, 0x3F0FFB4800000000
  %1684 = fadd fast float %1682, 0xBF0FFB4800000000
  %1685 = call float @dx.op.binary.f32(i32 35, float %1676, float %1683)  ; FMax(a,b)
  %1686 = call float @dx.op.binary.f32(i32 36, float %1685, float %1684)  ; FMin(a,b)
  %1687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1688 = extractvalue %dx.types.CBufRet.f32 %1687, 1
  %1689 = extractvalue %dx.types.CBufRet.f32 %1687, 2
  %1690 = extractvalue %dx.types.CBufRet.f32 %1687, 0
  %1691 = fmul fast float %1688, %1686
  %1692 = fadd fast float %1690, %1691
  %1693 = fadd fast float %1690, %1689
  %1694 = fsub fast float %1688, %1689
  %1695 = fadd fast float %1694, %1690
  %1696 = call float @dx.op.binary.f32(i32 35, float %1692, float %1693)  ; FMax(a,b)
  %1697 = call float @dx.op.binary.f32(i32 36, float %1696, float %1695)  ; FMin(a,b)
  %1698 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %1642, float %1643, float %1697, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1699 = extractvalue %dx.types.ResRet.f32 %1698, 0
  %1700 = extractvalue %dx.types.ResRet.f32 %1698, 1
  %1701 = extractvalue %dx.types.ResRet.f32 %1698, 2
  %1702 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %1642, float %1643, float %1697, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1703 = extractvalue %dx.types.ResRet.f32 %1702, 0
  %1704 = extractvalue %dx.types.ResRet.f32 %1702, 1
  %1705 = extractvalue %dx.types.ResRet.f32 %1702, 2
  %1706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1707 = extractvalue %dx.types.CBufRet.f32 %1706, 1
  %1708 = fmul fast float %1707, %1703
  %1709 = fmul fast float %1707, %1704
  %1710 = fmul fast float %1707, %1705
  br label %1711

; <label>:1711                                    ; preds = %1667, %1636
  %1712 = phi float [ %1699, %1667 ], [ 1.000000e+00, %1636 ]
  %1713 = phi float [ %1700, %1667 ], [ 1.000000e+00, %1636 ]
  %1714 = phi float [ %1701, %1667 ], [ 1.000000e+00, %1636 ]
  %1715 = phi float [ %1708, %1667 ], [ 0.000000e+00, %1636 ]
  %1716 = phi float [ %1709, %1667 ], [ 0.000000e+00, %1636 ]
  %1717 = phi float [ %1710, %1667 ], [ 0.000000e+00, %1636 ]
  %1718 = fmul fast float %1715, %1517
  %1719 = fmul fast float %1716, %1517
  %1720 = fmul fast float %1717, %1517
  %1721 = call float @dx.op.dot3.f32(i32 55, float %1712, float %1713, float %1714, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1722 = call float @dx.op.dot3.f32(i32 55, float %1718, float %1719, float %1720, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1723 = select i1 %131, float %1721, float %1712
  %1724 = select i1 %131, float %1721, float %1713
  %1725 = select i1 %131, float 1.000000e+00, float %1714
  %1726 = select i1 %131, float %1722, float %1718
  %1727 = select i1 %131, float 0.000000e+00, float %1719
  %1728 = select i1 %131, float 0.000000e+00, float %1720
  %1729 = fmul fast float %1723, %1629
  %1730 = fmul fast float %1724, %1632
  %1731 = fmul fast float %1725, %1635
  %1732 = fadd fast float %1729, %1726
  %1733 = fadd fast float %1730, %1727
  %1734 = fadd fast float %1728, %1731
  %1735 = fmul fast float %1723, %1613
  %1736 = fmul fast float %1724, %1614
  %1737 = fmul fast float %1725, %1615
  %1738 = fmul fast float %66, %1638
  %1739 = fmul fast float %68, %1639
  %1740 = fsub fast float 1.000000e+00, %1738
  %1741 = fsub fast float 1.000000e+00, %1739
  %1742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1743 = extractvalue %dx.types.CBufRet.f32 %1742, 0
  %1744 = extractvalue %dx.types.CBufRet.f32 %1742, 1
  %1745 = extractvalue %dx.types.CBufRet.f32 %1742, 2
  %1746 = fmul fast float %1740, %1743
  %1747 = fmul fast float %1740, %1744
  %1748 = fmul fast float %1740, %1745
  %1749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1750 = extractvalue %dx.types.CBufRet.f32 %1749, 0
  %1751 = extractvalue %dx.types.CBufRet.f32 %1749, 1
  %1752 = extractvalue %dx.types.CBufRet.f32 %1749, 2
  %1753 = fmul fast float %1741, %1750
  %1754 = fmul fast float %1741, %1751
  %1755 = fmul fast float %1741, %1752
  %1756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1757 = extractvalue %dx.types.CBufRet.f32 %1756, 0
  %1758 = extractvalue %dx.types.CBufRet.f32 %1756, 1
  %1759 = extractvalue %dx.types.CBufRet.f32 %1756, 2
  %1760 = fadd fast float %1753, %1757
  %1761 = fadd fast float %1760, %1746
  %1762 = fadd fast float %1754, %1758
  %1763 = fadd fast float %1762, %1747
  %1764 = fadd fast float %1755, %1759
  %1765 = fadd fast float %1764, %1748
  %1766 = fmul fast float %1761, %888
  %1767 = fmul fast float %1763, %888
  %1768 = fmul fast float %1765, %888
  br label %1769

; <label>:1769                                    ; preds = %1711, %1625
  %1770 = phi float [ %1766, %1711 ], [ %96, %1625 ]
  %1771 = phi float [ %1767, %1711 ], [ %97, %1625 ]
  %1772 = phi float [ %1768, %1711 ], [ %98, %1625 ]
  %1773 = phi float [ %888, %1711 ], [ %54, %1625 ]
  %1774 = phi float [ %1732, %1711 ], [ %1629, %1625 ]
  %1775 = phi float [ %1733, %1711 ], [ %1632, %1625 ]
  %1776 = phi float [ %1734, %1711 ], [ %1635, %1625 ]
  %1777 = phi float [ %1735, %1711 ], [ %1613, %1625 ]
  %1778 = phi float [ %1736, %1711 ], [ %1614, %1625 ]
  %1779 = phi float [ %1737, %1711 ], [ %1615, %1625 ]
  %1780 = phi float [ %1712, %1711 ], [ 1.000000e+00, %1625 ]
  br i1 %896, label %2836, label %1781

; <label>:1781                                    ; preds = %1769
  %1782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1783 = extractvalue %dx.types.CBufRet.f32 %1782, 0
  %1784 = extractvalue %dx.types.CBufRet.f32 %1782, 1
  %1785 = extractvalue %dx.types.CBufRet.f32 %1782, 2
  %1786 = extractvalue %dx.types.CBufRet.f32 %1782, 3
  %1787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1788 = extractvalue %dx.types.CBufRet.f32 %1787, 0
  %1789 = extractvalue %dx.types.CBufRet.f32 %1787, 1
  %1790 = extractvalue %dx.types.CBufRet.f32 %1787, 2
  %1791 = extractvalue %dx.types.CBufRet.f32 %1787, 3
  %1792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1793 = extractvalue %dx.types.CBufRet.f32 %1792, 0
  %1794 = extractvalue %dx.types.CBufRet.f32 %1792, 1
  %1795 = extractvalue %dx.types.CBufRet.f32 %1792, 2
  %1796 = extractvalue %dx.types.CBufRet.f32 %1792, 3
  %1797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1798 = extractvalue %dx.types.CBufRet.f32 %1797, 0
  %1799 = extractvalue %dx.types.CBufRet.f32 %1797, 1
  %1800 = extractvalue %dx.types.CBufRet.f32 %1797, 2
  %1801 = extractvalue %dx.types.CBufRet.f32 %1797, 3
  %1802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1803 = extractvalue %dx.types.CBufRet.f32 %1802, 3
  %1804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1805 = extractvalue %dx.types.CBufRet.f32 %1804, 3
  %1806 = extractvalue %dx.types.CBufRet.f32 %1804, 0
  %1807 = extractvalue %dx.types.CBufRet.f32 %1804, 1
  %1808 = extractvalue %dx.types.CBufRet.f32 %1804, 2
  %1809 = fcmp fast olt float %1808, -5.000000e-01
  %1810 = call float @dx.op.dot3.f32(i32 55, float %1770, float %1771, float %1772, float %1770, float %1771, float %1772)  ; Dot3(ax,ay,az,bx,by,bz)
  %1811 = call float @dx.op.unary.f32(i32 25, float %1810)  ; Rsqrt(value)
  %1812 = fmul fast float %1811, %1810
  %1813 = fmul fast float %1811, %1770
  %1814 = fmul fast float %1811, %1771
  %1815 = fmul fast float %1811, %1772
  %1816 = fadd fast float %1812, %1786
  %1817 = call float @dx.op.dot3.f32(i32 55, float %1813, float %1814, float %1815, float %1783, float %1784, float %1785)  ; Dot3(ax,ay,az,bx,by,bz)
  %1818 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1819 = extractvalue %dx.types.CBufRet.i32 %1818, 1
  %1820 = and i32 %1819, 1
  %1821 = icmp ne i32 %1820, 0
  %1822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1823 = extractvalue %dx.types.CBufRet.f32 %1822, 2
  %1824 = fcmp fast ogt float %1823, 0.000000e+00
  %1825 = and i1 %1821, %1824
  br i1 %1825, label %1826, label %2232, !dx.controlflow.hints !82

; <label>:1826                                    ; preds = %1781
  %1827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1828 = extractvalue %dx.types.CBufRet.f32 %1827, 3
  %1829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1830 = extractvalue %dx.types.CBufRet.f32 %1829, 2
  %1831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1832 = extractvalue %dx.types.CBufRet.f32 %1831, 2
  %1833 = fsub fast float %1830, %1832
  %1834 = and i32 %1819, 2
  %1835 = extractvalue %dx.types.CBufRet.i32 %1818, 0
  %1836 = call i32 @dx.op.binary.i32(i32 40, i32 %1835, i32 3)  ; UMin(a,b)
  %1837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1838 = extractvalue %dx.types.CBufRet.f32 %1837, 0
  %1839 = extractvalue %dx.types.CBufRet.f32 %1837, 1
  %1840 = extractvalue %dx.types.CBufRet.f32 %1831, 0
  %1841 = extractvalue %dx.types.CBufRet.f32 %1831, 1
  %1842 = fsub fast float %1838, %1840
  %1843 = fsub fast float %1839, %1841
  %1844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1845 = extractvalue %dx.types.CBufRet.f32 %1844, 0
  %1846 = fcmp fast ogt float %1845, 0.000000e+00
  %1847 = fsub fast float -0.000000e+00, %1842
  %1848 = fsub fast float -0.000000e+00, %1843
  %1849 = call float @dx.op.dot2.f32(i32 54, float %1813, float %1814, float %1813, float %1814)  ; Dot2(ax,ay,bx,by)
  %1850 = call float @dx.op.dot2.f32(i32 54, float %1813, float %1814, float %1847, float %1848)  ; Dot2(ax,ay,bx,by)
  %1851 = fmul fast float %1850, 2.000000e+00
  %1852 = call float @dx.op.dot2.f32(i32 54, float %1847, float %1848, float %1847, float %1848)  ; Dot2(ax,ay,bx,by)
  %1853 = fmul fast float %1845, %1845
  %1854 = fsub fast float %1852, %1853
  %1855 = fmul fast float %1851, %1851
  %1856 = fmul fast float %1849, 4.000000e+00
  %1857 = fmul fast float %1856, %1854
  %1858 = fsub fast float %1855, %1857
  %1859 = fcmp fast ogt float %1858, 0.000000e+00
  br i1 %1859, label %1860, label %1875

; <label>:1860                                    ; preds = %1826
  %1861 = fcmp fast ogt float %1851, 0.000000e+00
  %1862 = call float @dx.op.unary.f32(i32 24, float %1858)  ; Sqrt(value)
  %1863 = fsub fast float -0.000000e+00, %1862
  %1864 = select i1 %1861, float %1862, float %1863
  %1865 = fadd fast float %1864, %1851
  %1866 = fmul float %1865, -5.000000e-01
  %1867 = fdiv fast float %1866, %1849
  %1868 = call float @dx.op.binary.f32(i32 35, float %1867, float 0.000000e+00)  ; FMax(a,b)
  %1869 = call float @dx.op.binary.f32(i32 36, float %1812, float %1868)  ; FMin(a,b)
  %1870 = fdiv fast float %1854, %1866
  %1871 = call float @dx.op.binary.f32(i32 35, float %1870, float 0.000000e+00)  ; FMax(a,b)
  %1872 = call float @dx.op.binary.f32(i32 36, float %1812, float %1871)  ; FMin(a,b)
  %1873 = call float @dx.op.binary.f32(i32 36, float %1869, float %1872)  ; FMin(a,b)
  %1874 = call float @dx.op.binary.f32(i32 35, float %1869, float %1872)  ; FMax(a,b)
  br label %1875

; <label>:1875                                    ; preds = %1860, %1826
  %1876 = phi float [ %1874, %1860 ], [ -1.000000e+00, %1826 ]
  %1877 = phi float [ %1873, %1860 ], [ -1.000000e+00, %1826 ]
  %1878 = phi i1 [ true, %1860 ], [ false, %1826 ]
  %1879 = and i1 %1846, %1878
  br i1 %1879, label %1880, label %1882

; <label>:1880                                    ; preds = %1875
  %1881 = fcmp fast oeq float %1877, %1876
  br i1 %1881, label %2185, label %1883

; <label>:1882                                    ; preds = %1875
  br i1 %1846, label %2185, label %1883

; <label>:1883                                    ; preds = %1882, %1880
  %1884 = phi float [ %1812, %1882 ], [ %1876, %1880 ]
  %1885 = phi float [ 0.000000e+00, %1882 ], [ %1877, %1880 ]
  %1886 = icmp ne i32 %1834, 0
  %1887 = fmul fast float %1884, %1815
  %1888 = fadd fast float %1887, %1828
  %1889 = fmul fast float %1888, %1884
  %1890 = select i1 %1886, float 0.000000e+00, float %1889
  %1891 = fcmp fast oeq float %1815, 0.000000e+00
  %1892 = fdiv fast float %1833, %1815
  %1893 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1892)  ; FMax(a,b)
  %1894 = select i1 %1891, float %1884, float %1893
  %1895 = call float @dx.op.binary.f32(i32 36, float %1884, float %1894)  ; FMin(a,b)
  %1896 = fcmp fast ogt float %1815, 0.000000e+00
  %1897 = fcmp fast olt float %1833, 0.000000e+00
  br i1 %1896, label %1898, label %1955

; <label>:1898                                    ; preds = %1883
  %1899 = icmp eq i32 %1834, 0
  br i1 %1897, label %1900, label %1944

; <label>:1900                                    ; preds = %1898
  %1901 = select i1 %1899, float %1884, float 0.000000e+00
  %1902 = fsub fast float -0.000000e+00, %1901
  %1903 = call float @dx.op.unary.f32(i32 6, float %1902)  ; FAbs(value)
  %1904 = fmul fast float %1901, %1815
  %1905 = fadd fast float %1904, %1828
  %1906 = fmul fast float %1903, %1905
  %1907 = fsub fast float %1890, %1906
  %1908 = fsub fast float %1884, %1903
  %1909 = select i1 %1899, float %1908, float 0.000000e+00
  %1910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1911 = extractvalue %dx.types.CBufRet.f32 %1910, 0
  %1912 = extractvalue %dx.types.CBufRet.f32 %1910, 1
  %1913 = extractvalue %dx.types.CBufRet.f32 %1910, 2
  %1914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1915 = extractvalue %dx.types.CBufRet.f32 %1914, 0
  %1916 = extractvalue %dx.types.CBufRet.f32 %1914, 1
  %1917 = extractvalue %dx.types.CBufRet.f32 %1914, 2
  %1918 = extractvalue %dx.types.CBufRet.f32 %1914, 3
  %1919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1920 = extractvalue %dx.types.CBufRet.f32 %1919, 3
  %1921 = call float @dx.op.binary.f32(i32 36, float %1907, float %1920)  ; FMin(a,b)
  %1922 = fmul fast float %1918, %1909
  %1923 = call float @dx.op.unary.f32(i32 7, float %1922)  ; Saturate(value)
  %1924 = fsub fast float %1915, %1911
  %1925 = fsub fast float %1916, %1912
  %1926 = fsub fast float %1917, %1913
  %1927 = fmul fast float %1923, %1924
  %1928 = fmul fast float %1923, %1925
  %1929 = fmul fast float %1923, %1926
  %1930 = fadd fast float %1927, %1911
  %1931 = fadd fast float %1928, %1912
  %1932 = fadd fast float %1929, %1913
  %1933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1934 = extractvalue %dx.types.CBufRet.f32 %1933, 0
  %1935 = extractvalue %dx.types.CBufRet.f32 %1933, 1
  %1936 = fadd fast float %1935, %1934
  %1937 = call float @dx.op.unary.f32(i32 7, float %1936)  ; Saturate(value)
  %1938 = extractvalue %dx.types.CBufRet.f32 %1933, 2
  %1939 = extractvalue %dx.types.CBufRet.f32 %1933, 3
  %1940 = fadd fast float %1939, %1938
  %1941 = call float @dx.op.unary.f32(i32 7, float %1940)  ; Saturate(value)
  %1942 = fmul fast float %1937, %1921
  %1943 = fmul fast float %1942, %1941
  br label %2185

; <label>:1944                                    ; preds = %1898
  br i1 %1899, label %1945, label %1966

; <label>:1945                                    ; preds = %1944
  %1946 = call float @dx.op.binary.f32(i32 36, float %1895, float %1885)  ; FMin(a,b)
  %1947 = fsub fast float %1895, %1946
  %1948 = fsub fast float %1947, %1884
  %1949 = call float @dx.op.unary.f32(i32 6, float %1948)  ; FAbs(value)
  %1950 = fadd fast float %1947, %1884
  %1951 = fmul fast float %1950, %1815
  %1952 = fadd fast float %1951, %1828
  %1953 = fmul fast float %1952, %1949
  %1954 = fsub fast float %1890, %1953
  br label %1966

; <label>:1955                                    ; preds = %1883
  br i1 %1897, label %1956, label %1966

; <label>:1956                                    ; preds = %1955
  %1957 = call float @dx.op.binary.f32(i32 35, float %1885, float %1895)  ; FMax(a,b)
  %1958 = icmp eq i32 %1834, 0
  %1959 = select i1 %1958, float %1895, float 0.000000e+00
  %1960 = fsub fast float -0.000000e+00, %1959
  %1961 = call float @dx.op.unary.f32(i32 6, float %1960)  ; FAbs(value)
  %1962 = fmul fast float %1959, %1815
  %1963 = fadd fast float %1962, %1828
  %1964 = fmul fast float %1961, %1963
  %1965 = fsub fast float %1890, %1964
  br label %1966

; <label>:1966                                    ; preds = %1956, %1955, %1945, %1944
  %1967 = phi float [ %1885, %1944 ], [ %1885, %1945 ], [ %1957, %1956 ], [ %1885, %1955 ]
  %1968 = phi float [ 0.000000e+00, %1944 ], [ %1949, %1945 ], [ %1961, %1956 ], [ 0.000000e+00, %1955 ]
  %1969 = phi float [ %1890, %1944 ], [ %1954, %1945 ], [ %1965, %1956 ], [ %1890, %1955 ]
  %1970 = phi float [ %1895, %1944 ], [ %1895, %1945 ], [ %1884, %1956 ], [ %1884, %1955 ]
  %1971 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 0
  store float -1.000000e+00, float* %1971, align 4, !tbaa !83, !noalias !87
  %1972 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 1
  store float -1.000000e+00, float* %1972, align 4, !tbaa !83, !noalias !87
  %1973 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 2
  store float -1.000000e+00, float* %1973, align 4, !tbaa !83, !noalias !87
  %1974 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 0
  store float -1.000000e+00, float* %1974, align 4, !tbaa !83, !noalias !87
  %1975 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 1
  store float -1.000000e+00, float* %1975, align 4, !tbaa !83, !noalias !87
  %1976 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 2
  store float -1.000000e+00, float* %1976, align 4, !tbaa !83, !noalias !87
  %1977 = icmp sgt i32 %1836, 0
  br i1 %1977, label %1978, label %2039

; <label>:1978                                    ; preds = %1966
  br label %1979

; <label>:1979                                    ; preds = %2028, %1978
  %1980 = phi i32 [ %2029, %2028 ], [ 0, %1978 ]
  %1981 = phi i32 [ %2030, %2028 ], [ 0, %1978 ]
  %1982 = add nuw i32 %1981, 171
  %1983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 %1982)  ; CBufferLoadLegacy(handle,regIndex)
  %1984 = extractvalue %dx.types.CBufRet.f32 %1983, 0
  %1985 = extractvalue %dx.types.CBufRet.f32 %1983, 1
  %1986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1987 = extractvalue %dx.types.CBufRet.f32 %1986, 0
  %1988 = extractvalue %dx.types.CBufRet.f32 %1986, 1
  %1989 = fsub fast float %1984, %1987
  %1990 = fsub fast float %1985, %1988
  %1991 = extractvalue %dx.types.CBufRet.f32 %1983, 2
  %1992 = fsub fast float -0.000000e+00, %1989
  %1993 = fsub fast float -0.000000e+00, %1990
  %1994 = call float @dx.op.dot2.f32(i32 54, float %1813, float %1814, float %1992, float %1993)  ; Dot2(ax,ay,bx,by)
  %1995 = fmul fast float %1994, 2.000000e+00
  %1996 = call float @dx.op.dot2.f32(i32 54, float %1992, float %1993, float %1992, float %1993)  ; Dot2(ax,ay,bx,by)
  %1997 = fmul fast float %1991, %1991
  %1998 = fsub fast float %1996, %1997
  %1999 = fmul fast float %1995, %1995
  %2000 = fmul fast float %1856, %1998
  %2001 = fsub fast float %1999, %2000
  %2002 = fcmp fast ogt float %2001, 0.000000e+00
  br i1 %2002, label %2003, label %2018

; <label>:2003                                    ; preds = %1979
  %2004 = fcmp fast ogt float %1995, 0.000000e+00
  %2005 = call float @dx.op.unary.f32(i32 24, float %2001)  ; Sqrt(value)
  %2006 = fsub fast float -0.000000e+00, %2005
  %2007 = select i1 %2004, float %2005, float %2006
  %2008 = fadd fast float %2007, %1995
  %2009 = fmul float %2008, -5.000000e-01
  %2010 = fdiv fast float %2009, %1849
  %2011 = call float @dx.op.binary.f32(i32 35, float %2010, float 0.000000e+00)  ; FMax(a,b)
  %2012 = call float @dx.op.binary.f32(i32 36, float %1884, float %2011)  ; FMin(a,b)
  %2013 = fdiv fast float %1998, %2009
  %2014 = call float @dx.op.binary.f32(i32 35, float %2013, float 0.000000e+00)  ; FMax(a,b)
  %2015 = call float @dx.op.binary.f32(i32 36, float %1884, float %2014)  ; FMin(a,b)
  %2016 = call float @dx.op.binary.f32(i32 36, float %2012, float %2015)  ; FMin(a,b)
  %2017 = call float @dx.op.binary.f32(i32 35, float %2012, float %2015)  ; FMax(a,b)
  br label %2018

; <label>:2018                                    ; preds = %2003, %1979
  %2019 = phi float [ %2017, %2003 ], [ -1.000000e+00, %1979 ]
  %2020 = phi float [ %2016, %2003 ], [ -1.000000e+00, %1979 ]
  %2021 = phi i1 [ true, %2003 ], [ false, %1979 ]
  br i1 %2021, label %2022, label %2028

; <label>:2022                                    ; preds = %2018
  %2023 = call float @dx.op.binary.f32(i32 35, float %1967, float %2020)  ; FMax(a,b)
  %2024 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 %1981
  store float %2023, float* %2024, align 4, !tbaa !83, !noalias !87
  %2025 = call float @dx.op.binary.f32(i32 35, float %1967, float %2019)  ; FMax(a,b)
  %2026 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 %1981
  store float %2025, float* %2026, align 4, !tbaa !83, !noalias !87
  %2027 = add nsw i32 %1980, 1
  br label %2028

; <label>:2028                                    ; preds = %2022, %2018
  %2029 = phi i32 [ %2027, %2022 ], [ %1980, %2018 ]
  %2030 = add nuw nsw i32 %1981, 1
  %2031 = icmp eq i32 %2030, %1836
  br i1 %2031, label %2032, label %1979

; <label>:2032                                    ; preds = %2028
  %2033 = load float, float* %1973, align 4, !tbaa !83, !alias.scope !103, !noalias !106
  %2034 = load float, float* %1972, align 4, !tbaa !83, !alias.scope !109, !noalias !110
  %2035 = load float, float* %1971, align 4, !tbaa !83, !alias.scope !111, !noalias !112
  %2036 = load float, float* %1976, align 4, !tbaa !83, !alias.scope !113, !noalias !116
  %2037 = load float, float* %1975, align 4, !tbaa !83, !alias.scope !119, !noalias !120
  %2038 = load float, float* %1974, align 4, !tbaa !83, !alias.scope !121, !noalias !122
  br label %2039

; <label>:2039                                    ; preds = %2032, %1966
  %2040 = phi float [ -1.000000e+00, %1966 ], [ %2038, %2032 ]
  %2041 = phi float [ -1.000000e+00, %1966 ], [ %2037, %2032 ]
  %2042 = phi float [ -1.000000e+00, %1966 ], [ %2036, %2032 ]
  %2043 = phi float [ -1.000000e+00, %1966 ], [ %2035, %2032 ]
  %2044 = phi float [ -1.000000e+00, %1966 ], [ %2034, %2032 ]
  %2045 = phi float [ -1.000000e+00, %1966 ], [ %2033, %2032 ]
  %2046 = phi i32 [ 0, %1966 ], [ %2029, %2032 ]
  %2047 = call float @dx.op.binary.f32(i32 36, float %2044, float %2045)  ; FMin(a,b)
  %2048 = call float @dx.op.binary.f32(i32 36, float %2043, float %2047)  ; FMin(a,b)
  %2049 = call float @dx.op.binary.f32(i32 35, float %2043, float %2044)  ; FMax(a,b)
  %2050 = call float @dx.op.binary.f32(i32 36, float %2049, float %2045)  ; FMin(a,b)
  %2051 = call float @dx.op.binary.f32(i32 36, float %2043, float %2044)  ; FMin(a,b)
  %2052 = call float @dx.op.binary.f32(i32 35, float %2051, float %2050)  ; FMax(a,b)
  %2053 = call float @dx.op.binary.f32(i32 35, float %2044, float %2045)  ; FMax(a,b)
  %2054 = call float @dx.op.binary.f32(i32 35, float %2043, float %2053)  ; FMax(a,b)
  store float %2048, float* %1971, align 4, !tbaa !83, !alias.scope !111, !noalias !112
  store float %2052, float* %1972, align 4, !tbaa !83, !alias.scope !109, !noalias !110
  store float %2054, float* %1973, align 4, !tbaa !83, !alias.scope !103, !noalias !106
  %2055 = call float @dx.op.binary.f32(i32 36, float %2041, float %2042)  ; FMin(a,b)
  %2056 = call float @dx.op.binary.f32(i32 36, float %2040, float %2055)  ; FMin(a,b)
  %2057 = call float @dx.op.binary.f32(i32 35, float %2040, float %2041)  ; FMax(a,b)
  %2058 = call float @dx.op.binary.f32(i32 36, float %2057, float %2042)  ; FMin(a,b)
  %2059 = call float @dx.op.binary.f32(i32 36, float %2040, float %2041)  ; FMin(a,b)
  %2060 = call float @dx.op.binary.f32(i32 35, float %2059, float %2058)  ; FMax(a,b)
  %2061 = call float @dx.op.binary.f32(i32 35, float %2041, float %2042)  ; FMax(a,b)
  %2062 = call float @dx.op.binary.f32(i32 35, float %2040, float %2061)  ; FMax(a,b)
  store float %2056, float* %1974, align 4, !tbaa !83, !alias.scope !121, !noalias !122
  store float %2060, float* %1975, align 4, !tbaa !83, !alias.scope !119, !noalias !120
  store float %2062, float* %1976, align 4, !tbaa !83, !alias.scope !113, !noalias !116
  %2063 = sub nsw i32 3, %2046
  %2064 = icmp sgt i32 %2063, 2
  br i1 %2064, label %2065, label %2103

; <label>:2065                                    ; preds = %2039
  %2066 = icmp eq i32 %1834, 0
  %2067 = fsub fast float %1884, %1968
  %2068 = select i1 %2066, float %2067, float %1968
  %2069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2070 = extractvalue %dx.types.CBufRet.f32 %2069, 0
  %2071 = extractvalue %dx.types.CBufRet.f32 %2069, 1
  %2072 = extractvalue %dx.types.CBufRet.f32 %2069, 2
  %2073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2074 = extractvalue %dx.types.CBufRet.f32 %2073, 0
  %2075 = extractvalue %dx.types.CBufRet.f32 %2073, 1
  %2076 = extractvalue %dx.types.CBufRet.f32 %2073, 2
  %2077 = extractvalue %dx.types.CBufRet.f32 %2073, 3
  %2078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2079 = extractvalue %dx.types.CBufRet.f32 %2078, 3
  %2080 = call float @dx.op.binary.f32(i32 36, float %1969, float %2079)  ; FMin(a,b)
  %2081 = fmul fast float %2077, %2068
  %2082 = call float @dx.op.unary.f32(i32 7, float %2081)  ; Saturate(value)
  %2083 = fsub fast float %2074, %2070
  %2084 = fsub fast float %2075, %2071
  %2085 = fsub fast float %2076, %2072
  %2086 = fmul fast float %2082, %2083
  %2087 = fmul fast float %2082, %2084
  %2088 = fmul fast float %2082, %2085
  %2089 = fadd fast float %2086, %2070
  %2090 = fadd fast float %2087, %2071
  %2091 = fadd fast float %2088, %2072
  %2092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2093 = extractvalue %dx.types.CBufRet.f32 %2092, 0
  %2094 = extractvalue %dx.types.CBufRet.f32 %2092, 1
  %2095 = fadd fast float %2094, %2093
  %2096 = call float @dx.op.unary.f32(i32 7, float %2095)  ; Saturate(value)
  %2097 = extractvalue %dx.types.CBufRet.f32 %2092, 2
  %2098 = extractvalue %dx.types.CBufRet.f32 %2092, 3
  %2099 = fadd fast float %2098, %2097
  %2100 = call float @dx.op.unary.f32(i32 7, float %2099)  ; Saturate(value)
  %2101 = fmul fast float %2096, %2080
  %2102 = fmul fast float %2101, %2100
  br label %2185

; <label>:2103                                    ; preds = %2039
  %2104 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 %2063
  %2105 = load float, float* %2104, align 4, !tbaa !83, !noalias !87
  %2106 = fcmp fast olt float %2105, %1970
  %2107 = icmp sgt i32 %2046, 0
  %2108 = and i1 %2107, %2106
  br i1 %2108, label %2109, label %2146

; <label>:2109                                    ; preds = %2103
  br label %2110

; <label>:2110                                    ; preds = %2139, %2109
  %2111 = phi float [ %2140, %2139 ], [ %1968, %2109 ]
  %2112 = phi float [ %2141, %2139 ], [ %1969, %2109 ]
  %2113 = phi float [ %2121, %2139 ], [ %2105, %2109 ]
  %2114 = phi i32 [ %2118, %2139 ], [ %2063, %2109 ]
  %2115 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 %2114
  %2116 = load float, float* %2115, align 4, !tbaa !83, !noalias !87
  %2117 = icmp slt i32 %2114, 2
  %2118 = add nsw i32 %2114, 1
  %2119 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 %2118
  %2120 = load float, float* %2119, align 4, !tbaa !83, !noalias !87
  %2121 = select i1 %2117, float %2120, float %1884
  %2122 = call float @dx.op.binary.f32(i32 36, float %2121, float %2116)  ; FMin(a,b)
  %2123 = call float @dx.op.binary.f32(i32 36, float %1970, float %2122)  ; FMin(a,b)
  %2124 = icmp eq i32 %1834, 0
  %2125 = fadd fast float %2123, %2113
  %2126 = fmul fast float %2125, %1815
  %2127 = fadd fast float %2126, %1828
  br i1 %2124, label %2133, label %2128

; <label>:2128                                    ; preds = %2110
  %2129 = fsub fast float %2123, %2113
  %2130 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2129)  ; FMax(a,b)
  %2131 = fmul fast float %2130, %2127
  %2132 = fadd fast float %2131, %2112
  br label %2139

; <label>:2133                                    ; preds = %2110
  %2134 = fsub fast float %2113, %2123
  %2135 = call float @dx.op.unary.f32(i32 6, float %2134)  ; FAbs(value)
  %2136 = fadd fast float %2135, %2111
  %2137 = fmul fast float %2135, %2127
  %2138 = fsub fast float %2112, %2137
  br label %2139

; <label>:2139                                    ; preds = %2133, %2128
  %2140 = phi float [ %2130, %2128 ], [ %2136, %2133 ]
  %2141 = phi float [ %2132, %2128 ], [ %2138, %2133 ]
  %2142 = fcmp fast olt float %2121, %1970
  %2143 = icmp slt i32 %2118, 3
  %2144 = and i1 %2143, %2142
  br i1 %2144, label %2110, label %2145

; <label>:2145                                    ; preds = %2139
  br label %2146

; <label>:2146                                    ; preds = %2145, %2103
  %2147 = phi float [ %1968, %2103 ], [ %2140, %2145 ]
  %2148 = phi float [ %1969, %2103 ], [ %2141, %2145 ]
  %2149 = fsub fast float %1884, %2147
  %2150 = select i1 %1886, float %2147, float %2149
  %2151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2152 = extractvalue %dx.types.CBufRet.f32 %2151, 0
  %2153 = extractvalue %dx.types.CBufRet.f32 %2151, 1
  %2154 = extractvalue %dx.types.CBufRet.f32 %2151, 2
  %2155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2156 = extractvalue %dx.types.CBufRet.f32 %2155, 0
  %2157 = extractvalue %dx.types.CBufRet.f32 %2155, 1
  %2158 = extractvalue %dx.types.CBufRet.f32 %2155, 2
  %2159 = extractvalue %dx.types.CBufRet.f32 %2155, 3
  %2160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2161 = extractvalue %dx.types.CBufRet.f32 %2160, 3
  %2162 = call float @dx.op.binary.f32(i32 36, float %2148, float %2161)  ; FMin(a,b)
  %2163 = fmul fast float %2159, %2150
  %2164 = call float @dx.op.unary.f32(i32 7, float %2163)  ; Saturate(value)
  %2165 = fsub fast float %2156, %2152
  %2166 = fsub fast float %2157, %2153
  %2167 = fsub fast float %2158, %2154
  %2168 = fmul fast float %2164, %2165
  %2169 = fmul fast float %2164, %2166
  %2170 = fmul fast float %2164, %2167
  %2171 = fadd fast float %2168, %2152
  %2172 = fadd fast float %2169, %2153
  %2173 = fadd fast float %2170, %2154
  %2174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2175 = extractvalue %dx.types.CBufRet.f32 %2174, 0
  %2176 = extractvalue %dx.types.CBufRet.f32 %2174, 1
  %2177 = fadd fast float %2176, %2175
  %2178 = call float @dx.op.unary.f32(i32 7, float %2177)  ; Saturate(value)
  %2179 = extractvalue %dx.types.CBufRet.f32 %2174, 2
  %2180 = extractvalue %dx.types.CBufRet.f32 %2174, 3
  %2181 = fadd fast float %2180, %2179
  %2182 = call float @dx.op.unary.f32(i32 7, float %2181)  ; Saturate(value)
  %2183 = fmul fast float %2178, %2162
  %2184 = fmul fast float %2183, %2182
  br label %2185

; <label>:2185                                    ; preds = %2146, %2065, %1900, %1882, %1880
  %2186 = phi float [ %1909, %1900 ], [ %2068, %2065 ], [ %2150, %2146 ], [ 0.000000e+00, %1880 ], [ 0.000000e+00, %1882 ]
  %2187 = phi float [ %1943, %1900 ], [ %2102, %2065 ], [ %2184, %2146 ], [ 0.000000e+00, %1880 ], [ 0.000000e+00, %1882 ]
  %2188 = phi float [ %1930, %1900 ], [ %2089, %2065 ], [ %2171, %2146 ], [ 0.000000e+00, %1880 ], [ 0.000000e+00, %1882 ]
  %2189 = phi float [ %1931, %1900 ], [ %2090, %2065 ], [ %2172, %2146 ], [ 0.000000e+00, %1880 ], [ 0.000000e+00, %1882 ]
  %2190 = phi float [ %1932, %1900 ], [ %2091, %2065 ], [ %2173, %2146 ], [ 0.000000e+00, %1880 ], [ 0.000000e+00, %1882 ]
  %2191 = fmul fast float %1823, %2187
  %2192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2193 = extractvalue %dx.types.CBufRet.f32 %2192, 2
  %2194 = fsub fast float %1830, %2193
  %2195 = fcmp fast olt float %2191, -2.000000e+01
  %2196 = call float @dx.op.unary.f32(i32 21, float %2191)  ; Exp(value)
  %2197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2198 = extractvalue %dx.types.CBufRet.f32 %2197, 2
  %2199 = extractvalue %dx.types.CBufRet.f32 %2197, 3
  %2200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2201 = extractvalue %dx.types.CBufRet.f32 %2200, 2
  %2202 = fmul fast float %2199, %2194
  %2203 = call float @dx.op.unary.f32(i32 7, float %2202)  ; Saturate(value)
  %2204 = fsub fast float 1.000000e+00, %2203
  %2205 = fmul fast float %1815, 5.000000e-01
  %2206 = fadd fast float %2205, 5.000000e-01
  %2207 = call float @dx.op.unary.f32(i32 7, float %2206)  ; Saturate(value)
  %2208 = fsub fast float 1.000000e+00, %2207
  %2209 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2204)  ; FMax(a,b)
  %2210 = fdiv fast float %2208, %2209
  %2211 = fsub fast float %2194, %1772
  %2212 = call float @dx.op.unary.f32(i32 6, float %2211)  ; FAbs(value)
  %2213 = fmul fast float %2212, %2198
  %2214 = call float @dx.op.unary.f32(i32 7, float %2210)  ; Saturate(value)
  %2215 = fsub fast float 1.000000e+00, %2213
  %2216 = fmul fast float %2215, %2214
  %2217 = fadd fast float %2216, %2213
  %2218 = fmul fast float %2201, %2194
  %2219 = call float @dx.op.unary.f32(i32 7, float %2218)  ; Saturate(value)
  %2220 = fsub fast float 1.000000e+00, %2217
  %2221 = fmul fast float %2220, %2219
  %2222 = fadd fast float %2221, %2217
  %2223 = call float @dx.op.unary.f32(i32 7, float %2222)  ; Saturate(value)
  %2224 = fadd fast float %2196, -1.000000e+00
  %2225 = select i1 %2195, float -1.000000e+00, float %2224
  %2226 = fmul fast float %2223, %2225
  %2227 = fadd fast float %2226, 1.000000e+00
  %2228 = fsub fast float -0.000000e+00, %2226
  %2229 = fmul fast float %2188, %2228
  %2230 = fmul fast float %2189, %2228
  %2231 = fmul fast float %2190, %2228
  br label %2232

; <label>:2232                                    ; preds = %2185, %1781
  %2233 = phi float [ %2186, %2185 ], [ 0.000000e+00, %1781 ]
  %2234 = phi float [ %2227, %2185 ], [ 1.000000e+00, %1781 ]
  %2235 = phi float [ %2229, %2185 ], [ 0.000000e+00, %1781 ]
  %2236 = phi float [ %2230, %2185 ], [ 0.000000e+00, %1781 ]
  %2237 = phi float [ %2231, %2185 ], [ 0.000000e+00, %1781 ]
  %2238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2239 = extractvalue %dx.types.CBufRet.f32 %2238, 1
  %2240 = fsub fast float 1.000000e+00, %2234
  %2241 = fmul fast float %2240, %1816
  %2242 = fmul fast float %2241, %2239
  %2243 = fsub fast float %1816, %2242
  br i1 %1809, label %2244, label %2273, !dx.controlflow.hints !123

; <label>:2244                                    ; preds = %2232
  %2245 = fmul fast float %1817, %1806
  %2246 = fadd fast float %2245, %1807
  %2247 = call float @dx.op.unary.f32(i32 7, float %2246)  ; Saturate(value)
  %2248 = fmul fast float %1788, %2243
  %2249 = fsub fast float -0.000000e+00, %2248
  %2250 = fmul fast float %1789, %2243
  %2251 = fsub fast float -0.000000e+00, %2250
  %2252 = call float @dx.op.unary.f32(i32 21, float %2249)  ; Exp(value)
  %2253 = call float @dx.op.unary.f32(i32 21, float %2251)  ; Exp(value)
  %2254 = call float @dx.op.binary.f32(i32 35, float %1796, float %2252)  ; FMax(a,b)
  %2255 = call float @dx.op.binary.f32(i32 35, float %1796, float %2253)  ; FMax(a,b)
  %2256 = fsub fast float %2255, %2254
  %2257 = fmul fast float %2256, %2247
  %2258 = fadd fast float %2257, %2254
  %2259 = call float @dx.op.unary.f32(i32 7, float %2258)  ; Saturate(value)
  %2260 = fsub fast float %1793, %1798
  %2261 = fsub fast float %1794, %1799
  %2262 = fsub fast float %1795, %1800
  %2263 = fmul fast float %2247, %2260
  %2264 = fmul fast float %2247, %2261
  %2265 = fmul fast float %2247, %2262
  %2266 = fadd fast float %2263, %1798
  %2267 = fadd fast float %2264, %1799
  %2268 = fadd fast float %2265, %1800
  %2269 = fsub fast float 1.000000e+00, %2259
  %2270 = fmul fast float %2269, %2266
  %2271 = fmul fast float %2269, %2267
  %2272 = fmul fast float %2269, %2268
  br label %2332

; <label>:2273                                    ; preds = %2232
  %2274 = fmul fast float %2243, %1805
  %2275 = call float @dx.op.unary.f32(i32 7, float %2274)  ; Saturate(value)
  %2276 = fsub fast float 2.000000e+00, %2275
  %2277 = fmul fast float %2275, 9.921875e-01
  %2278 = fmul fast float %2277, %2276
  %2279 = fadd fast float %2278, 3.906250e-03
  %2280 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %26, float %2279, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2281 = extractvalue %dx.types.ResRet.f32 %2280, 0
  %2282 = fsub fast float %2275, %2281
  %2283 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2282)  ; FMax(a,b)
  %2284 = fmul fast float %1791, %1772
  %2285 = call float @dx.op.unary.f32(i32 6, float %2284)  ; FAbs(value)
  %2286 = fcmp fast ogt float %2285, 0x3EB0C6F7A0000000
  br i1 %2286, label %2287, label %2293, !dx.controlflow.hints !124

; <label>:2287                                    ; preds = %2273
  %2288 = fmul fast float %2284, 0xBFF7154760000000
  %2289 = call float @dx.op.unary.f32(i32 21, float %2288)  ; Exp(value)
  %2290 = fsub fast float 1.000000e+00, %2289
  %2291 = fdiv fast float %2290, %2284
  %2292 = fmul fast float %2291, %1801
  br label %2293

; <label>:2293                                    ; preds = %2287, %2273
  %2294 = phi float [ %2292, %2287 ], [ %1801, %2273 ]
  %2295 = fadd fast float %2294, %1803
  %2296 = fmul fast float %2295, %2283
  %2297 = fmul fast float %1788, %2296
  %2298 = fsub fast float -0.000000e+00, %2297
  %2299 = fmul fast float %1789, %2296
  %2300 = fsub fast float -0.000000e+00, %2299
  %2301 = fmul fast float %1790, %2296
  %2302 = fsub fast float -0.000000e+00, %2301
  %2303 = call float @dx.op.unary.f32(i32 21, float %2298)  ; Exp(value)
  %2304 = call float @dx.op.unary.f32(i32 21, float %2300)  ; Exp(value)
  %2305 = call float @dx.op.unary.f32(i32 21, float %2302)  ; Exp(value)
  %2306 = fmul fast float %1817, %1817
  %2307 = fadd fast float %2306, 1.000000e+00
  %2308 = fmul fast float %2307, 0x3FAE8EC8A0000000
  %2309 = fmul fast float %2308, %1798
  %2310 = fmul fast float %2308, %1799
  %2311 = fmul fast float %2308, %1800
  %2312 = fmul fast float %1817, %1796
  %2313 = fsub fast float 1.000000e+00, %2312
  %2314 = fmul fast float %1796, %1796
  %2315 = fsub fast float 1.000000e+00, %2314
  %2316 = fmul fast float %2315, 0x3FB45F3060000000
  %2317 = fmul fast float %2313, %2313
  %2318 = fdiv fast float 1.000000e+00, %2317
  %2319 = fmul fast float %2316, %2318
  %2320 = fmul fast float %2319, %1793
  %2321 = fmul fast float %2319, %1794
  %2322 = fmul fast float %2319, %1795
  %2323 = fadd fast float %2320, %2309
  %2324 = fadd fast float %2321, %2310
  %2325 = fadd fast float %2322, %2311
  %2326 = fsub fast float 1.000000e+00, %2303
  %2327 = fsub fast float 1.000000e+00, %2304
  %2328 = fsub fast float 1.000000e+00, %2305
  %2329 = fmul fast float %2323, %2326
  %2330 = fmul fast float %2324, %2327
  %2331 = fmul fast float %2325, %2328
  br label %2332

; <label>:2332                                    ; preds = %2293, %2244
  %2333 = phi float [ %2270, %2244 ], [ %2329, %2293 ]
  %2334 = phi float [ %2271, %2244 ], [ %2330, %2293 ]
  %2335 = phi float [ %2272, %2244 ], [ %2331, %2293 ]
  %2336 = phi float [ %2259, %2244 ], [ %2303, %2293 ]
  %2337 = phi float [ %2259, %2244 ], [ %2304, %2293 ]
  %2338 = phi float [ %2259, %2244 ], [ %2305, %2293 ]
  br i1 %1825, label %2339, label %2537, !dx.controlflow.hints !125

; <label>:2339                                    ; preds = %2332
  %2340 = extractvalue %dx.types.CBufRet.f32 %2238, 0
  %2341 = fmul fast float %2340, %2240
  %2342 = fsub fast float %2235, %2333
  %2343 = fsub fast float %2236, %2334
  %2344 = fsub fast float %2237, %2335
  %2345 = fmul fast float %2341, %2342
  %2346 = fmul fast float %2341, %2343
  %2347 = fmul fast float %2341, %2344
  %2348 = fadd fast float %2345, %2333
  %2349 = fadd fast float %2346, %2334
  %2350 = fadd fast float %2347, %2335
  %2351 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2336)  ; FMax(a,b)
  %2352 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2337)  ; FMax(a,b)
  %2353 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2338)  ; FMax(a,b)
  %2354 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2234)  ; FMax(a,b)
  %2355 = call float @dx.op.binary.f32(i32 35, float %2233, float %2243)  ; FMax(a,b)
  %2356 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2355)  ; FMax(a,b)
  %2357 = fdiv fast float %2233, %2356
  %2358 = call float @dx.op.unary.f32(i32 7, float %2357)  ; Saturate(value)
  %2359 = fdiv fast float %2243, %2356
  %2360 = call float @dx.op.unary.f32(i32 7, float %2359)  ; Saturate(value)
  %2361 = fcmp fast une float %2354, 1.000000e+00
  br i1 %2361, label %2362, label %2375, !dx.controlflow.hints !126

; <label>:2362                                    ; preds = %2339
  %2363 = call float @dx.op.unary.f32(i32 23, float %2354)  ; Log(value)
  %2364 = fmul fast float %2363, 0x3FE62E4300000000
  %2365 = fmul fast float %2235, %2364
  %2366 = fsub fast float -0.000000e+00, %2365
  %2367 = fmul fast float %2236, %2364
  %2368 = fsub fast float -0.000000e+00, %2367
  %2369 = fmul fast float %2237, %2364
  %2370 = fsub fast float -0.000000e+00, %2369
  %2371 = fsub fast float 1.000000e+00, %2354
  %2372 = fdiv fast float %2366, %2371
  %2373 = fdiv fast float %2368, %2371
  %2374 = fdiv fast float %2370, %2371
  br label %2375

; <label>:2375                                    ; preds = %2362, %2339
  %2376 = phi float [ %2372, %2362 ], [ %2235, %2339 ]
  %2377 = phi float [ %2373, %2362 ], [ %2236, %2339 ]
  %2378 = phi float [ %2374, %2362 ], [ %2237, %2339 ]
  %2379 = phi float [ %2364, %2362 ], [ 0.000000e+00, %2339 ]
  %2380 = fcmp fast une float %2351, 1.000000e+00
  br i1 %2380, label %2381, label %2388, !dx.controlflow.hints !127

; <label>:2381                                    ; preds = %2375
  %2382 = call float @dx.op.unary.f32(i32 23, float %2351)  ; Log(value)
  %2383 = fmul fast float %2382, 0x3FE62E4300000000
  %2384 = fmul fast float %2348, %2383
  %2385 = fsub fast float -0.000000e+00, %2384
  %2386 = fsub fast float 1.000000e+00, %2351
  %2387 = fdiv fast float %2385, %2386
  br label %2388

; <label>:2388                                    ; preds = %2381, %2375
  %2389 = phi float [ %2387, %2381 ], [ %2348, %2375 ]
  %2390 = phi float [ %2383, %2381 ], [ 0.000000e+00, %2375 ]
  %2391 = fcmp fast une float %2352, 1.000000e+00
  br i1 %2391, label %2392, label %2399, !dx.controlflow.hints !127

; <label>:2392                                    ; preds = %2388
  %2393 = call float @dx.op.unary.f32(i32 23, float %2352)  ; Log(value)
  %2394 = fmul fast float %2393, 0x3FE62E4300000000
  %2395 = fmul fast float %2349, %2394
  %2396 = fsub fast float -0.000000e+00, %2395
  %2397 = fsub fast float 1.000000e+00, %2352
  %2398 = fdiv fast float %2396, %2397
  br label %2399

; <label>:2399                                    ; preds = %2392, %2388
  %2400 = phi float [ %2398, %2392 ], [ %2349, %2388 ]
  %2401 = phi float [ %2394, %2392 ], [ 0.000000e+00, %2388 ]
  %2402 = fcmp fast une float %2353, 1.000000e+00
  br i1 %2402, label %2403, label %2410, !dx.controlflow.hints !127

; <label>:2403                                    ; preds = %2399
  %2404 = call float @dx.op.unary.f32(i32 23, float %2353)  ; Log(value)
  %2405 = fmul fast float %2404, 0x3FE62E4300000000
  %2406 = fmul fast float %2350, %2405
  %2407 = fsub fast float -0.000000e+00, %2406
  %2408 = fsub fast float 1.000000e+00, %2353
  %2409 = fdiv fast float %2407, %2408
  br label %2410

; <label>:2410                                    ; preds = %2403, %2399
  %2411 = phi float [ %2409, %2403 ], [ %2350, %2399 ]
  %2412 = phi float [ %2405, %2403 ], [ 0.000000e+00, %2399 ]
  %2413 = fmul fast float %2376, %2360
  %2414 = fmul fast float %2377, %2360
  %2415 = fmul fast float %2378, %2360
  %2416 = fmul fast float %2379, %2360
  %2417 = fmul fast float %2389, %2358
  %2418 = fmul fast float %2400, %2358
  %2419 = fmul fast float %2411, %2358
  %2420 = fmul fast float %2390, %2358
  %2421 = fmul fast float %2401, %2358
  %2422 = fmul fast float %2412, %2358
  %2423 = fadd fast float %2417, %2413
  %2424 = fadd fast float %2418, %2414
  %2425 = fadd fast float %2419, %2415
  %2426 = fadd fast float %2420, %2416
  %2427 = fadd fast float %2421, %2416
  %2428 = fadd fast float %2422, %2416
  %2429 = fcmp fast une float %2426, 0.000000e+00
  br i1 %2429, label %2430, label %2437, !dx.controlflow.hints !128

; <label>:2430                                    ; preds = %2410
  %2431 = fmul fast float %2426, 0x3FF7154760000000
  %2432 = call float @dx.op.unary.f32(i32 21, float %2431)  ; Exp(value)
  %2433 = fsub fast float 1.000000e+00, %2432
  %2434 = fmul fast float %2423, %2433
  %2435 = fsub fast float -0.000000e+00, %2434
  %2436 = fdiv fast float %2435, %2426
  br label %2437

; <label>:2437                                    ; preds = %2430, %2410
  %2438 = phi float [ %2432, %2430 ], [ 1.000000e+00, %2410 ]
  %2439 = phi float [ %2436, %2430 ], [ %2423, %2410 ]
  %2440 = fcmp fast une float %2427, 0.000000e+00
  br i1 %2440, label %2441, label %2448, !dx.controlflow.hints !128

; <label>:2441                                    ; preds = %2437
  %2442 = fmul fast float %2427, 0x3FF7154760000000
  %2443 = call float @dx.op.unary.f32(i32 21, float %2442)  ; Exp(value)
  %2444 = fsub fast float 1.000000e+00, %2443
  %2445 = fmul fast float %2424, %2444
  %2446 = fsub fast float -0.000000e+00, %2445
  %2447 = fdiv fast float %2446, %2427
  br label %2448

; <label>:2448                                    ; preds = %2441, %2437
  %2449 = phi float [ %2443, %2441 ], [ 1.000000e+00, %2437 ]
  %2450 = phi float [ %2447, %2441 ], [ %2424, %2437 ]
  %2451 = fcmp fast une float %2428, 0.000000e+00
  br i1 %2451, label %2452, label %2459, !dx.controlflow.hints !128

; <label>:2452                                    ; preds = %2448
  %2453 = fmul fast float %2428, 0x3FF7154760000000
  %2454 = call float @dx.op.unary.f32(i32 21, float %2453)  ; Exp(value)
  %2455 = fsub fast float 1.000000e+00, %2454
  %2456 = fmul fast float %2425, %2455
  %2457 = fsub fast float -0.000000e+00, %2456
  %2458 = fdiv fast float %2457, %2428
  br label %2459

; <label>:2459                                    ; preds = %2452, %2448
  %2460 = phi float [ %2454, %2452 ], [ 1.000000e+00, %2448 ]
  %2461 = phi float [ %2458, %2452 ], [ %2425, %2448 ]
  %2462 = fcmp fast ogt float %2358, %2360
  br i1 %2462, label %2463, label %2483

; <label>:2463                                    ; preds = %2459
  %2464 = fsub fast float 1.000000e+00, %2360
  %2465 = fmul fast float %2376, %2464
  %2466 = fmul fast float %2377, %2464
  %2467 = fmul fast float %2378, %2464
  %2468 = fmul fast float %2379, %2464
  %2469 = fcmp fast une float %2468, 0.000000e+00
  br i1 %2469, label %2470, label %2521, !dx.controlflow.hints !129

; <label>:2470                                    ; preds = %2463
  %2471 = fmul fast float %2468, 0x3FF7154760000000
  %2472 = call float @dx.op.unary.f32(i32 21, float %2471)  ; Exp(value)
  %2473 = fsub fast float 1.000000e+00, %2472
  %2474 = fmul fast float %2465, %2473
  %2475 = fsub fast float -0.000000e+00, %2474
  %2476 = fmul fast float %2466, %2473
  %2477 = fsub fast float -0.000000e+00, %2476
  %2478 = fmul fast float %2467, %2473
  %2479 = fsub fast float -0.000000e+00, %2478
  %2480 = fdiv fast float %2475, %2468
  %2481 = fdiv fast float %2477, %2468
  %2482 = fdiv fast float %2479, %2468
  br label %2521

; <label>:2483                                    ; preds = %2459
  %2484 = fsub fast float 1.000000e+00, %2358
  %2485 = fmul fast float %2389, %2484
  %2486 = fmul fast float %2400, %2484
  %2487 = fmul fast float %2411, %2484
  %2488 = fmul fast float %2390, %2484
  %2489 = fmul fast float %2401, %2484
  %2490 = fmul fast float %2412, %2484
  %2491 = fcmp fast une float %2488, 0.000000e+00
  br i1 %2491, label %2492, label %2499, !dx.controlflow.hints !128

; <label>:2492                                    ; preds = %2483
  %2493 = fmul fast float %2488, 0x3FF7154760000000
  %2494 = call float @dx.op.unary.f32(i32 21, float %2493)  ; Exp(value)
  %2495 = fsub fast float 1.000000e+00, %2494
  %2496 = fmul fast float %2485, %2495
  %2497 = fsub fast float -0.000000e+00, %2496
  %2498 = fdiv fast float %2497, %2488
  br label %2499

; <label>:2499                                    ; preds = %2492, %2483
  %2500 = phi float [ %2498, %2492 ], [ %2485, %2483 ]
  %2501 = phi float [ %2494, %2492 ], [ 1.000000e+00, %2483 ]
  %2502 = fcmp fast une float %2489, 0.000000e+00
  br i1 %2502, label %2503, label %2510, !dx.controlflow.hints !128

; <label>:2503                                    ; preds = %2499
  %2504 = fmul fast float %2489, 0x3FF7154760000000
  %2505 = call float @dx.op.unary.f32(i32 21, float %2504)  ; Exp(value)
  %2506 = fsub fast float 1.000000e+00, %2505
  %2507 = fmul fast float %2486, %2506
  %2508 = fsub fast float -0.000000e+00, %2507
  %2509 = fdiv fast float %2508, %2489
  br label %2510

; <label>:2510                                    ; preds = %2503, %2499
  %2511 = phi float [ %2509, %2503 ], [ %2486, %2499 ]
  %2512 = phi float [ %2505, %2503 ], [ 1.000000e+00, %2499 ]
  %2513 = fcmp fast une float %2490, 0.000000e+00
  br i1 %2513, label %2514, label %2521, !dx.controlflow.hints !128

; <label>:2514                                    ; preds = %2510
  %2515 = fmul fast float %2490, 0x3FF7154760000000
  %2516 = call float @dx.op.unary.f32(i32 21, float %2515)  ; Exp(value)
  %2517 = fsub fast float 1.000000e+00, %2516
  %2518 = fmul fast float %2487, %2517
  %2519 = fsub fast float -0.000000e+00, %2518
  %2520 = fdiv fast float %2519, %2490
  br label %2521

; <label>:2521                                    ; preds = %2514, %2510, %2470, %2463
  %2522 = phi float [ %2520, %2514 ], [ %2482, %2470 ], [ %2467, %2463 ], [ %2487, %2510 ]
  %2523 = phi float [ %2511, %2514 ], [ %2481, %2470 ], [ %2466, %2463 ], [ %2511, %2510 ]
  %2524 = phi float [ %2500, %2514 ], [ %2480, %2470 ], [ %2465, %2463 ], [ %2500, %2510 ]
  %2525 = phi float [ %2516, %2514 ], [ %2472, %2470 ], [ 1.000000e+00, %2463 ], [ 1.000000e+00, %2510 ]
  %2526 = phi float [ %2512, %2514 ], [ %2472, %2470 ], [ 1.000000e+00, %2463 ], [ %2512, %2510 ]
  %2527 = phi float [ %2501, %2514 ], [ %2472, %2470 ], [ 1.000000e+00, %2463 ], [ %2501, %2510 ]
  %2528 = fmul fast float %2527, %2439
  %2529 = fmul fast float %2526, %2450
  %2530 = fmul fast float %2525, %2461
  %2531 = fadd fast float %2528, %2524
  %2532 = fadd fast float %2529, %2523
  %2533 = fadd fast float %2530, %2522
  %2534 = fmul fast float %2527, %2438
  %2535 = fmul fast float %2526, %2449
  %2536 = fmul fast float %2525, %2460
  br label %2537

; <label>:2537                                    ; preds = %2521, %2332
  %2538 = phi float [ %2536, %2521 ], [ %2338, %2332 ]
  %2539 = phi float [ %2535, %2521 ], [ %2337, %2332 ]
  %2540 = phi float [ %2534, %2521 ], [ %2336, %2332 ]
  %2541 = phi float [ %2533, %2521 ], [ %2335, %2332 ]
  %2542 = phi float [ %2532, %2521 ], [ %2334, %2332 ]
  %2543 = phi float [ %2531, %2521 ], [ %2333, %2332 ]
  %2544 = fmul fast float %2543, %1517
  %2545 = fmul fast float %2542, %1517
  %2546 = fmul fast float %2541, %1517
  %2547 = fmul fast float %2540, %1780
  %2548 = call float @dx.op.dot3.f32(i32 55, float %2540, float %2539, float %2538, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2549 = call float @dx.op.dot3.f32(i32 55, float %2544, float %2545, float %2546, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2550 = select i1 %131, float %2548, float %2540
  %2551 = select i1 %131, float %2548, float %2539
  %2552 = select i1 %131, float 1.000000e+00, float %2538
  %2553 = select i1 %131, float %2549, float %2544
  %2554 = select i1 %131, float 0.000000e+00, float %2545
  %2555 = select i1 %131, float 0.000000e+00, float %2546
  %2556 = fmul fast float %2550, %1774
  %2557 = fmul fast float %2551, %1775
  %2558 = fmul fast float %2552, %1776
  %2559 = fadd fast float %2556, %2553
  %2560 = fadd fast float %2557, %2554
  %2561 = fadd fast float %2555, %2558
  %2562 = fmul fast float %2550, %1777
  %2563 = fmul fast float %2551, %1778
  %2564 = fmul fast float %2552, %1779
  %2565 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2566 = extractvalue %dx.types.CBufRet.i32 %2565, 0
  %2567 = icmp eq i32 %2566, 0
  br i1 %2567, label %2836, label %2568, !dx.controlflow.hints !130

; <label>:2568                                    ; preds = %2537
  %2569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2570 = extractvalue %dx.types.CBufRet.f32 %2569, 2
  %2571 = extractvalue %dx.types.CBufRet.f32 %2569, 3
  %2572 = fmul fast float %2570, %61
  %2573 = fmul fast float %2571, %62
  %2574 = fmul fast float %2572, 2.000000e+00
  %2575 = fmul fast float %2573, 2.000000e+00
  %2576 = fsub fast float 1.000000e+00, %2574
  %2577 = fsub fast float 1.000000e+00, %2575
  %2578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2579 = extractvalue %dx.types.CBufRet.f32 %2578, 0
  %2580 = extractvalue %dx.types.CBufRet.f32 %2578, 1
  %2581 = extractvalue %dx.types.CBufRet.f32 %2578, 2
  %2582 = fmul fast float %2576, %2579
  %2583 = fmul fast float %2576, %2580
  %2584 = fmul fast float %2576, %2581
  %2585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2586 = extractvalue %dx.types.CBufRet.f32 %2585, 0
  %2587 = extractvalue %dx.types.CBufRet.f32 %2585, 1
  %2588 = extractvalue %dx.types.CBufRet.f32 %2585, 2
  %2589 = fmul fast float %2577, %2586
  %2590 = fmul fast float %2577, %2587
  %2591 = fmul fast float %2577, %2588
  %2592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2593 = extractvalue %dx.types.CBufRet.f32 %2592, 0
  %2594 = extractvalue %dx.types.CBufRet.f32 %2592, 1
  %2595 = extractvalue %dx.types.CBufRet.f32 %2592, 2
  %2596 = fadd fast float %2589, %2593
  %2597 = fadd fast float %2596, %2582
  %2598 = fadd fast float %2590, %2594
  %2599 = fadd fast float %2598, %2583
  %2600 = fadd fast float %2591, %2595
  %2601 = fadd fast float %2600, %2584
  %2602 = fmul fast float %2597, %1773
  %2603 = fmul fast float %2599, %1773
  %2604 = fmul fast float %2601, %1773
  %2605 = fmul fast float %2602, %2602
  %2606 = fmul fast float %2603, %2603
  %2607 = fadd fast float %2605, %2606
  %2608 = fmul fast float %2604, %2604
  %2609 = fadd fast float %2607, %2608
  %2610 = call float @dx.op.unary.f32(i32 24, float %2609)  ; Sqrt(value)
  %2611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2612 = extractvalue %dx.types.CBufRet.f32 %2611, 0
  %2613 = fsub fast float %2610, %2612
  %2614 = extractvalue %dx.types.CBufRet.f32 %2611, 2
  %2615 = fmul fast float %2613, %2614
  %2616 = call float @dx.op.unary.f32(i32 7, float %2615)  ; Saturate(value)
  %2617 = fadd fast float %2616, -5.000000e-01
  %2618 = fmul fast float %2617, 2.000000e+00
  %2619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2620 = extractvalue %dx.types.CBufRet.f32 %2619, 2
  %2621 = call float @dx.op.binary.f32(i32 36, float %2620, float %2618)  ; FMin(a,b)
  %2622 = fsub fast float -0.000000e+00, %2620
  %2623 = fcmp fast ogt float %2621, %2622
  br i1 %2623, label %2624, label %2836, !dx.controlflow.hints !131

; <label>:2624                                    ; preds = %2568
  %2625 = fmul fast float %2621, 5.000000e-01
  %2626 = fadd fast float %2625, 5.000000e-01
  %2627 = call float @dx.op.unary.f32(i32 22, float %2626)  ; Frc(value)
  %2628 = call float @dx.op.unary.f32(i32 27, float %2627)  ; Round_ni(value)
  %2629 = call float @dx.op.unary.f32(i32 22, float %2627)  ; Frc(value)
  %2630 = fmul fast float %2629, 2.000000e+00
  %2631 = fadd fast float %2630, -1.000000e+00
  %2632 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %26, float %2572, float %2573, float %2628, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2633 = extractvalue %dx.types.ResRet.f32 %2632, 0
  %2634 = extractvalue %dx.types.ResRet.f32 %2632, 1
  %2635 = extractvalue %dx.types.ResRet.f32 %2632, 2
  %2636 = extractvalue %dx.types.ResRet.f32 %2632, 3
  %2637 = fadd fast float %2633, -5.000000e-01
  %2638 = fadd fast float %2635, -5.000000e-01
  %2639 = fmul fast float %2637, 0xBFD5555560000000
  %2640 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2638, float %2639)  ; FMad(a,b,c)
  %2641 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2634, float 0.000000e+00)  ; FMad(a,b,c)
  %2642 = fadd fast float %2641, %2636
  %2643 = fmul fast float %2637, -7.500000e-01
  %2644 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2638, float %2643)  ; FMad(a,b,c)
  %2645 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2634, float 0.000000e+00)  ; FMad(a,b,c)
  %2646 = fadd fast float %2645, %2636
  %2647 = call float @dx.op.binary.f32(i32 35, float %2640, float -1.000000e+00)  ; FMax(a,b)
  %2648 = call float @dx.op.binary.f32(i32 35, float %2642, float -1.000000e+00)  ; FMax(a,b)
  %2649 = call float @dx.op.binary.f32(i32 35, float %2644, float -1.000000e+00)  ; FMax(a,b)
  %2650 = call float @dx.op.binary.f32(i32 35, float %2646, float -1.000000e+00)  ; FMax(a,b)
  %2651 = call float @dx.op.binary.f32(i32 36, float %2647, float 1.000000e+00)  ; FMin(a,b)
  %2652 = call float @dx.op.binary.f32(i32 36, float %2648, float 1.000000e+00)  ; FMin(a,b)
  %2653 = call float @dx.op.binary.f32(i32 36, float %2649, float 1.000000e+00)  ; FMin(a,b)
  %2654 = call float @dx.op.binary.f32(i32 36, float %2650, float 1.000000e+00)  ; FMin(a,b)
  %2655 = fcmp fast olt float %2651, 0x3FEFFF8020000000
  br i1 %2655, label %2656, label %2771, !dx.controlflow.hints !132

; <label>:2656                                    ; preds = %2624
  %2657 = extractvalue %dx.types.CBufRet.f32 %2619, 3
  %2658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %2659 = extractvalue %dx.types.CBufRet.f32 %2658, 0
  %2660 = extractvalue %dx.types.CBufRet.f32 %2658, 1
  %2661 = extractvalue %dx.types.CBufRet.f32 %2658, 2
  %2662 = extractvalue %dx.types.CBufRet.f32 %2658, 3
  %2663 = fsub fast float %2659, %2651
  %2664 = fsub fast float %2660, %2652
  %2665 = fsub fast float %2661, %2653
  %2666 = fsub fast float %2662, %2654
  %2667 = fmul fast float %2663, %2657
  %2668 = fmul fast float %2664, %2657
  %2669 = fmul fast float %2665, %2657
  %2670 = fmul fast float %2666, %2657
  %2671 = fadd fast float %2667, %2651
  %2672 = fadd fast float %2668, %2652
  %2673 = fsub fast float -0.000000e+00, %2672
  %2674 = fadd fast float %2669, %2653
  %2675 = fadd fast float %2670, %2654
  %2676 = fmul fast float %2671, %2671
  %2677 = fsub fast float %2672, %2676
  %2678 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2677)  ; FMax(a,b)
  %2679 = fdiv fast float 1.000000e+00, %2678
  %2680 = fmul fast float %2672, %2671
  %2681 = fsub fast float %2674, %2680
  %2682 = fsub fast float %2631, %2671
  %2683 = fmul fast float %2631, %2631
  %2684 = fsub fast float %2683, %2672
  %2685 = fmul fast float %2682, %2679
  %2686 = fmul fast float %2685, %2681
  %2687 = fsub fast float %2684, %2686
  %2688 = fmul fast float %2672, %2672
  %2689 = fsub fast float %2675, %2688
  %2690 = fmul fast float %2681, %2681
  %2691 = fmul fast float %2690, %2679
  %2692 = fsub fast float %2689, %2691
  %2693 = fdiv fast float %2687, %2692
  %2694 = fmul fast float %2681, %2693
  %2695 = fsub fast float %2682, %2694
  %2696 = fmul fast float %2695, %2679
  %2697 = fmul fast float %2696, %2671
  %2698 = fsub fast float 1.000000e+00, %2697
  %2699 = fmul fast float %2672, %2693
  %2700 = fsub fast float %2698, %2699
  %2701 = fmul fast float %2696, %2696
  %2702 = fmul fast float %2693, 4.000000e+00
  %2703 = fmul fast float %2702, %2700
  %2704 = fsub fast float %2701, %2703
  %2705 = call float @dx.op.unary.f32(i32 24, float %2704)  ; Sqrt(value)
  %2706 = fcmp fast oge float %2696, 0.000000e+00
  %2707 = fsub fast float -0.000000e+00, %2705
  %2708 = select i1 %2706, float %2707, float %2705
  %2709 = fsub fast float %2708, %2696
  %2710 = fdiv fast float %2709, %2693
  %2711 = fdiv fast float %2700, %2709
  %2712 = fmul fast float %2710, 5.000000e-01
  %2713 = fmul fast float %2711, 2.000000e+00
  %2714 = select i1 %2706, float %2712, float %2713
  %2715 = select i1 %2706, float %2713, float %2712
  %2716 = call float @dx.op.binary.f32(i32 35, float %2714, float %2715)  ; FMax(a,b)
  %2717 = call float @dx.op.binary.f32(i32 36, float %2714, float %2715)  ; FMin(a,b)
  %2718 = fcmp fast ogt float %2631, %2717
  br i1 %2718, label %2719, label %2729

; <label>:2719                                    ; preds = %2656
  %2720 = fsub fast float %2631, %2717
  %2721 = fsub fast float %2716, %2717
  %2722 = fmul fast float %2720, %2721
  %2723 = fmul fast float %2716, %2631
  %2724 = fadd fast float %2716, %2631
  %2725 = fmul fast float %2724, %2671
  %2726 = fadd fast float %2723, %2672
  %2727 = fsub fast float %2726, %2725
  %2728 = fdiv fast float %2727, %2722
  br label %2729

; <label>:2729                                    ; preds = %2719, %2656
  %2730 = phi float [ %2728, %2719 ], [ 0.000000e+00, %2656 ]
  %2731 = fcmp fast ogt float %2631, %2716
  %2732 = fsub fast float %2631, %2716
  br i1 %2731, label %2733, label %2743

; <label>:2733                                    ; preds = %2729
  %2734 = fsub fast float %2716, %2717
  %2735 = fmul fast float %2734, %2732
  %2736 = fmul fast float %2717, %2631
  %2737 = fadd fast float %2717, %2631
  %2738 = fmul fast float %2737, %2671
  %2739 = fsub fast float %2673, %2736
  %2740 = fadd fast float %2739, %2738
  %2741 = fdiv fast float %2740, %2735
  %2742 = fadd fast float %2741, %2730
  br label %2743

; <label>:2743                                    ; preds = %2733, %2729
  %2744 = phi float [ %2742, %2733 ], [ %2730, %2729 ]
  %2745 = fsub fast float %2631, %2717
  %2746 = fmul fast float %2745, %2732
  %2747 = fmul fast float %2717, %2716
  %2748 = fadd fast float %2717, %2716
  %2749 = fmul fast float %2748, %2671
  %2750 = fadd fast float %2747, %2672
  %2751 = fsub fast float %2750, %2749
  %2752 = fdiv fast float %2751, %2746
  %2753 = call float @dx.op.unary.f32(i32 7, float %2744)  ; Saturate(value)
  %2754 = fcmp fast oeq float %1626, 0.000000e+00
  %2755 = extractvalue %dx.types.CBufRet.f32 %2619, 0
  %2756 = fcmp fast oeq float %2755, 0.000000e+00
  %2757 = or i1 %2754, %2756
  %2758 = fmul fast float %2755, 2.000000e+00
  %2759 = fadd fast float %2620, %2621
  %2760 = fdiv fast float %2759, %2758
  %2761 = call float @dx.op.unary.f32(i32 7, float %2760)  ; Saturate(value)
  %2762 = fmul fast float %2761, 2.000000e+00
  %2763 = fsub fast float 3.000000e+00, %2762
  %2764 = fmul fast float %2761, %2761
  %2765 = fmul fast float %2764, %2763
  %2766 = select i1 %2757, float 1.000000e+00, float %2765
  %2767 = fmul fast float %2752, %1626
  %2768 = fadd fast float %2753, %2767
  %2769 = call float @dx.op.unary.f32(i32 7, float %2768)  ; Saturate(value)
  %2770 = fmul fast float %2766, %2769
  br label %2771

; <label>:2771                                    ; preds = %2743, %2624
  %2772 = phi float [ %2770, %2743 ], [ 0.000000e+00, %2624 ]
  %2773 = fsub fast float 1.000000e+00, %2772
  %2774 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %26, float %2572, float %2573, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2775 = extractvalue %dx.types.ResRet.f32 %2774, 0
  %2776 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2777 = extractvalue %dx.types.CBufRet.i32 %2776, 2
  %2778 = icmp eq i32 %2777, 0
  br i1 %2778, label %2784, label %2779

; <label>:2779                                    ; preds = %2771
  %2780 = call float @dx.op.unary.f32(i32 7, float %2772)  ; Saturate(value)
  %2781 = fadd fast float %2775, -1.000000e+00
  %2782 = fmul fast float %2780, %2781
  %2783 = fadd fast float %2782, 1.000000e+00
  br label %2784

; <label>:2784                                    ; preds = %2779, %2771
  %2785 = phi float [ %2783, %2779 ], [ %2773, %2771 ]
  %2786 = call float @dx.op.binary.f32(i32 35, float %2775, float %2785)  ; FMax(a,b)
  %2787 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %2788 = extractvalue %dx.types.CBufRet.i32 %2787, 2
  %2789 = and i32 %2788, 1
  %2790 = icmp eq i32 %2789, 0
  %2791 = fcmp fast une float %2786, 1.000000e+00
  %2792 = and i1 %2791, %2790
  br i1 %2792, label %2793, label %2812

; <label>:2793                                    ; preds = %2784
  %2794 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %26, float %2572, float %2573, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2795 = extractvalue %dx.types.ResRet.f32 %2794, 0
  %2796 = extractvalue %dx.types.ResRet.f32 %2794, 1
  %2797 = extractvalue %dx.types.ResRet.f32 %2794, 2
  %2798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2799 = extractvalue %dx.types.CBufRet.f32 %2798, 1
  %2800 = fmul fast float %2799, %2795
  %2801 = fmul fast float %2799, %2796
  %2802 = fmul fast float %2799, %2797
  %2803 = fcmp fast ogt float %2775, 0x3FEFFF2E40000000
  %2804 = fsub fast float 1.000000e+00, %2786
  %2805 = fsub fast float 1.000000e+00, %2775
  %2806 = fdiv fast float %2804, %2805
  %2807 = call float @dx.op.unary.f32(i32 7, float %2806)  ; Saturate(value)
  %2808 = select i1 %2803, float 0.000000e+00, float %2807
  %2809 = fmul fast float %2800, %2808
  %2810 = fmul fast float %2801, %2808
  %2811 = fmul fast float %2802, %2808
  br label %2812

; <label>:2812                                    ; preds = %2793, %2784
  %2813 = phi float [ 0.000000e+00, %2784 ], [ %2809, %2793 ]
  %2814 = phi float [ 0.000000e+00, %2784 ], [ %2810, %2793 ]
  %2815 = phi float [ 0.000000e+00, %2784 ], [ %2811, %2793 ]
  %2816 = fmul fast float %2813, %1517
  %2817 = fmul fast float %2814, %1517
  %2818 = fmul fast float %2815, %1517
  %2819 = fmul fast float %2786, %2547
  %2820 = call float @dx.op.dot3.f32(i32 55, float %2786, float %2786, float %2786, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2821 = call float @dx.op.dot3.f32(i32 55, float %2816, float %2817, float %2818, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2822 = select i1 %131, float %2820, float %2786
  %2823 = select i1 %131, float 1.000000e+00, float %2786
  %2824 = select i1 %131, float %2821, float %2816
  %2825 = select i1 %131, float 0.000000e+00, float %2817
  %2826 = select i1 %131, float 0.000000e+00, float %2818
  %2827 = fmul fast float %2822, %2559
  %2828 = fmul fast float %2822, %2560
  %2829 = fmul fast float %2823, %2561
  %2830 = fadd fast float %2827, %2824
  %2831 = fadd fast float %2828, %2825
  %2832 = fadd fast float %2826, %2829
  %2833 = fmul fast float %2822, %2562
  %2834 = fmul fast float %2822, %2563
  %2835 = fmul fast float %2823, %2564
  br label %2836

; <label>:2836                                    ; preds = %2812, %2568, %2537, %1769
  %2837 = phi float [ %1774, %1769 ], [ %2559, %2537 ], [ %2830, %2812 ], [ %2559, %2568 ]
  %2838 = phi float [ %1775, %1769 ], [ %2560, %2537 ], [ %2831, %2812 ], [ %2560, %2568 ]
  %2839 = phi float [ %1776, %1769 ], [ %2561, %2537 ], [ %2832, %2812 ], [ %2561, %2568 ]
  %2840 = phi float [ %1777, %1769 ], [ %2562, %2537 ], [ %2833, %2812 ], [ %2562, %2568 ]
  %2841 = phi float [ %1778, %1769 ], [ %2563, %2537 ], [ %2834, %2812 ], [ %2563, %2568 ]
  %2842 = phi float [ %1779, %1769 ], [ %2564, %2537 ], [ %2835, %2812 ], [ %2564, %2568 ]
  %2843 = phi float [ %1780, %1769 ], [ %2547, %2537 ], [ %2819, %2812 ], [ %2547, %2568 ]
  %2844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2845 = extractvalue %dx.types.CBufRet.f32 %2844, 2
  %2846 = extractvalue %dx.types.CBufRet.f32 %2844, 3
  %2847 = fmul fast float %2845, %61
  %2848 = fmul fast float %2846, %62
  %2849 = call float @dx.op.unary.f32(i32 7, float %2847)  ; Saturate(value)
  %2850 = call float @dx.op.unary.f32(i32 7, float %2848)  ; Saturate(value)
  %2851 = select i1 %896, i32 2, i32 0
  %2852 = or i32 %2851, 1
  %2853 = uitofp i32 %2852 to float
  %2854 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %2849, float %2850, float %2853, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2855 = extractvalue %dx.types.ResRet.f32 %2854, 0
  %2856 = extractvalue %dx.types.ResRet.f32 %2854, 1
  %2857 = extractvalue %dx.types.ResRet.f32 %2854, 2
  %2858 = extractvalue %dx.types.ResRet.f32 %2854, 3
  %2859 = add nuw nsw i32 %2851, 2
  %2860 = uitofp i32 %2859 to float
  %2861 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %2849, float %2850, float %2860, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2862 = extractvalue %dx.types.ResRet.f32 %2861, 0
  %2863 = extractvalue %dx.types.ResRet.f32 %2861, 1
  %2864 = extractvalue %dx.types.ResRet.f32 %2861, 2
  %2865 = extractvalue %dx.types.ResRet.f32 %2861, 3
  %2866 = call float @dx.op.binary.f32(i32 35, float %2856, float %2857)  ; FMax(a,b)
  %2867 = call float @dx.op.binary.f32(i32 35, float %2855, float %2866)  ; FMax(a,b)
  %2868 = call float @dx.op.binary.f32(i32 35, float %2867, float %2858)  ; FMax(a,b)
  %2869 = call float @dx.op.binary.f32(i32 36, float %2863, float %2864)  ; FMin(a,b)
  %2870 = call float @dx.op.binary.f32(i32 36, float %2862, float %2869)  ; FMin(a,b)
  %2871 = call float @dx.op.binary.f32(i32 36, float %2870, float %2865)  ; FMin(a,b)
  %2872 = fmul fast float %2868, 2.550000e+02
  %2873 = fadd fast float %2872, 0x3F70101020000000
  %2874 = fptoui float %2873 to i32
  %2875 = fmul fast float %2871, 2.550000e+02
  %2876 = fadd fast float %2875, 0x3F70101020000000
  %2877 = fptoui float %2876 to i32
  %2878 = icmp ult i32 %2874, %2877
  br i1 %2878, label %2879, label %2925

; <label>:2879                                    ; preds = %2836
  %2880 = fcmp fast ogt float %53, 9.843750e-01
  %2881 = fadd fast float %1773, -4.000000e+00
  %2882 = select i1 %2880, float -4.000000e+00, float %2881
  %2883 = call float @dx.op.binary.f32(i32 35, float %2882, float 0.000000e+00)  ; FMax(a,b)
  %2884 = fadd fast float %1061, %2883
  %2885 = fmul fast float %2884, %1062
  %2886 = call float @dx.op.unary.f32(i32 23, float %2885)  ; Log(value)
  %2887 = fmul fast float %1063, %2886
  %2888 = fmul fast float %2887, %1071
  %2889 = call float @dx.op.unary.f32(i32 7, float %2888)  ; Saturate(value)
  %2890 = uitofp i32 %2874 to float
  %2891 = uitofp i32 %2877 to float
  %2892 = fadd fast float %2890, 5.000000e-01
  %2893 = fadd fast float %2891, 5.000000e-01
  %2894 = fmul fast float %1071, %2892
  %2895 = fmul fast float %1071, %2893
  %2896 = fadd fast float %2894, 0x3F0FFB4800000000
  %2897 = fadd fast float %2895, 0xBF0FFB4800000000
  %2898 = call float @dx.op.binary.f32(i32 35, float %2889, float %2896)  ; FMax(a,b)
  %2899 = call float @dx.op.binary.f32(i32 36, float %2898, float %2897)  ; FMin(a,b)
  %2900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %2901 = extractvalue %dx.types.CBufRet.f32 %2900, 1
  %2902 = extractvalue %dx.types.CBufRet.f32 %2900, 2
  %2903 = extractvalue %dx.types.CBufRet.f32 %2900, 0
  %2904 = select i1 %896, float %2903, float 0.000000e+00
  %2905 = fmul fast float %2901, %2899
  %2906 = fadd fast float %2904, %2905
  %2907 = fadd fast float %2904, %2902
  %2908 = fsub fast float %2901, %2902
  %2909 = fadd fast float %2908, %2904
  %2910 = call float @dx.op.binary.f32(i32 35, float %2906, float %2907)  ; FMax(a,b)
  %2911 = call float @dx.op.binary.f32(i32 36, float %2910, float %2909)  ; FMin(a,b)
  %2912 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %2849, float %2850, float %2911, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2913 = extractvalue %dx.types.ResRet.f32 %2912, 0
  %2914 = extractvalue %dx.types.ResRet.f32 %2912, 1
  %2915 = extractvalue %dx.types.ResRet.f32 %2912, 2
  %2916 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %2849, float %2850, float %2911, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2917 = extractvalue %dx.types.ResRet.f32 %2916, 0
  %2918 = extractvalue %dx.types.ResRet.f32 %2916, 1
  %2919 = extractvalue %dx.types.ResRet.f32 %2916, 2
  %2920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2921 = extractvalue %dx.types.CBufRet.f32 %2920, 1
  %2922 = fmul fast float %2921, %2917
  %2923 = fmul fast float %2921, %2918
  %2924 = fmul fast float %2921, %2919
  br label %2925

; <label>:2925                                    ; preds = %2879, %2836
  %2926 = phi float [ %2913, %2879 ], [ 1.000000e+00, %2836 ]
  %2927 = phi float [ %2914, %2879 ], [ 1.000000e+00, %2836 ]
  %2928 = phi float [ %2915, %2879 ], [ 1.000000e+00, %2836 ]
  %2929 = phi float [ %2922, %2879 ], [ 0.000000e+00, %2836 ]
  %2930 = phi float [ %2923, %2879 ], [ 0.000000e+00, %2836 ]
  %2931 = phi float [ %2924, %2879 ], [ 0.000000e+00, %2836 ]
  %2932 = fmul fast float %2929, %1517
  %2933 = fmul fast float %2930, %1517
  %2934 = fmul fast float %2931, %1517
  %2935 = fmul fast float %2926, %2843
  %2936 = call float @dx.op.dot3.f32(i32 55, float %2926, float %2927, float %2928, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2937 = call float @dx.op.dot3.f32(i32 55, float %2932, float %2933, float %2934, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2938 = select i1 %131, float %2936, float %2926
  %2939 = select i1 %131, float %2936, float %2927
  %2940 = select i1 %131, float 1.000000e+00, float %2928
  %2941 = select i1 %131, float %2937, float %2932
  %2942 = select i1 %131, float 0.000000e+00, float %2933
  %2943 = select i1 %131, float 0.000000e+00, float %2934
  %2944 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2945 = extractvalue %dx.types.CBufRet.i32 %2944, 3
  %2946 = and i32 %2945, 3
  %2947 = icmp ne i32 %2946, 0
  %2948 = and i32 %2945, 4
  %2949 = icmp ne i32 %2948, 0
  %2950 = and i1 %2947, %2949
  %2951 = and i1 %131, %2950
  br i1 %2951, label %2952, label %2958

; <label>:2952                                    ; preds = %2925
  %2953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2954 = extractvalue %dx.types.CBufRet.f32 %2953, 1
  %2955 = fadd fast float %2935, -1.000000e+00
  %2956 = fmul fast float %2954, %2955
  %2957 = fadd fast float %2956, 1.000000e+00
  br label %2958

; <label>:2958                                    ; preds = %2952, %2925
  %2959 = phi float [ %2957, %2952 ], [ %2935, %2925 ]
  %2960 = fadd fast float %2840, %2837
  %2961 = fmul fast float %2938, %2960
  %2962 = fadd fast float %2961, %2941
  %2963 = fadd fast float %2841, %2838
  %2964 = fmul fast float %2939, %2963
  %2965 = fadd fast float %2964, %2942
  %2966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2967 = extractvalue %dx.types.CBufRet.f32 %2966, 0
  br i1 %131, label %2968, label %2990

; <label>:2968                                    ; preds = %2958
  %2969 = fadd fast float %2962, %2965
  %2970 = fmul fast float %2967, %2969
  %2971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %2972 = extractvalue %dx.types.CBufRet.f32 %2971, 3
  %2973 = extractvalue %dx.types.CBufRet.f32 %1522, 1
  %2974 = fsub fast float %1525, %2973
  %2975 = extractvalue %dx.types.CBufRet.f32 %1522, 2
  %2976 = fmul fast float %2974, %2975
  %2977 = call float @dx.op.unary.f32(i32 7, float %2976)  ; Saturate(value)
  %2978 = fsub fast float %2977, %2972
  %2979 = fmul fast float %2978, %2959
  %2980 = fadd fast float %2979, %2972
  %2981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2982 = extractvalue %dx.types.CBufRet.f32 %2981, 0
  %2983 = fsub fast float %2980, %2982
  %2984 = fmul fast float %2983, 1.000000e+01
  %2985 = call float @dx.op.unary.f32(i32 7, float %2984)  ; Saturate(value)
  %2986 = fsub fast float %872, %1517
  %2987 = fmul fast float %2985, %2986
  %2988 = fadd fast float %2987, %1517
  %2989 = fmul fast float %2988, %2980
  br label %3002

; <label>:2990                                    ; preds = %2958
  %2991 = fadd fast float %2842, %2839
  %2992 = fmul fast float %2940, %2991
  %2993 = fadd fast float %2992, %2943
  %2994 = fmul fast float %2967, %2962
  %2995 = fmul fast float %2967, %2965
  %2996 = fmul fast float %2967, %2993
  %2997 = call float @dx.op.binary.f32(i32 35, float %2995, float %2996)  ; FMax(a,b)
  %2998 = call float @dx.op.binary.f32(i32 35, float %2994, float %2997)  ; FMax(a,b)
  %2999 = call float @dx.op.binary.f32(i32 35, float %2998, float %1517)  ; FMax(a,b)
  %3000 = fcmp fast ugt float %2999, 0x3F10000000000000
  br i1 %3000, label %3002, label %3001

; <label>:3001                                    ; preds = %2990
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %3002

; <label>:3002                                    ; preds = %3001, %2990, %2968
  %3003 = phi float [ %2970, %2968 ], [ %2994, %3001 ], [ %2994, %2990 ]
  %3004 = phi float [ %2989, %2968 ], [ %2995, %3001 ], [ %2995, %2990 ]
  %3005 = phi float [ %2988, %2968 ], [ %2996, %3001 ], [ %2996, %2990 ]
  %3006 = phi float [ %2988, %2968 ], [ %1517, %3001 ], [ %1517, %2990 ]
  %3007 = fadd fast float %549, 0x3FE3C6EF40000000
  %3008 = call float @dx.op.unary.f32(i32 22, float %3007)  ; Frc(value)
  %3009 = call float @dx.op.unary.f32(i32 23, float %3003)  ; Log(value)
  %3010 = fadd fast float %3009, -7.000000e+00
  %3011 = call float @dx.op.unary.f32(i32 21, float %3010)  ; Exp(value)
  %3012 = fmul fast float %3008, 2.000000e+00
  %3013 = fadd fast float %3012, -1.000000e+00
  %3014 = fmul fast float %3011, %3013
  %3015 = fcmp fast ogt float %3003, 0.000000e+00
  %3016 = select i1 %3015, float %3014, float 0.000000e+00
  %3017 = fadd fast float %3016, %3003
  %3018 = fadd fast float %549, 0x3FF3C6EF40000000
  %3019 = call float @dx.op.unary.f32(i32 22, float %3018)  ; Frc(value)
  %3020 = call float @dx.op.unary.f32(i32 23, float %3004)  ; Log(value)
  %3021 = fadd fast float %3020, -7.000000e+00
  %3022 = call float @dx.op.unary.f32(i32 21, float %3021)  ; Exp(value)
  %3023 = fmul fast float %3019, 2.000000e+00
  %3024 = fadd fast float %3023, -1.000000e+00
  %3025 = fmul fast float %3022, %3024
  %3026 = fcmp fast ogt float %3004, 0.000000e+00
  %3027 = select i1 %3026, float %3025, float 0.000000e+00
  %3028 = fadd fast float %3027, %3004
  %3029 = fadd fast float %549, 0x3FFDAA66E0000000
  %3030 = call float @dx.op.unary.f32(i32 22, float %3029)  ; Frc(value)
  %3031 = call float @dx.op.unary.f32(i32 23, float %3005)  ; Log(value)
  %3032 = fadd fast float %3031, -6.000000e+00
  %3033 = call float @dx.op.unary.f32(i32 21, float %3032)  ; Exp(value)
  %3034 = fmul fast float %3030, 2.000000e+00
  %3035 = fadd fast float %3034, -1.000000e+00
  %3036 = fmul fast float %3033, %3035
  %3037 = fcmp fast ogt float %3005, 0.000000e+00
  %3038 = select i1 %3037, float %3036, float 0.000000e+00
  %3039 = fadd fast float %3038, %3005
  %3040 = select i1 %131, float %3004, float %3028
  %3041 = select i1 %131, float %3005, float %3039
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %3042 = call float @dx.op.binary.f32(i32 36, float %3017, float 3.225500e+04)  ; FMin(a,b)
  %3043 = call float @dx.op.binary.f32(i32 36, float %3040, float 3.225500e+04)  ; FMin(a,b)
  %3044 = call float @dx.op.binary.f32(i32 36, float %3041, float 3.225500e+04)  ; FMin(a,b)
  %3045 = call float @dx.op.binary.f32(i32 36, float %3006, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3042)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3043)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3044)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %3045)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %3006)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %3006)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %3006)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %3006)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

