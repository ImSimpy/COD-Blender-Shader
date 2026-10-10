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
; shader hash: 7dfa522a6e1774b925510383a2ecabf5
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
  %1462 = fsub fast float 1.000000e+00, %824
  %1463 = call float @dx.op.binary.f32(i32 35, float %1462, float 0x3F847AE140000000)  ; FMax(a,b)
  %1464 = fmul fast float %1463, %1463
  %1465 = fmul fast float %1464, %1464
  %1466 = fmul fast float %1465, 0xC00A935000000000
  %1467 = call float @dx.op.unary.f32(i32 21, float %1466)  ; Exp(value)
  %1468 = fmul fast float %793, 0x3FDF454380000000
  %1469 = fmul fast float %794, 0xBFDF454380000000
  %1470 = fmul fast float %792, 0x3FDF454380000000
  %1471 = call float @dx.op.dot4.f32(i32 56, float %770, float %769, float %768, float %767, float 0x3FD20DD760000000, float %1468, float %1469, float %1470)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1472 = call float @dx.op.dot4.f32(i32 56, float %760, float %761, float %762, float %763, float 0x3FD20DD760000000, float %1468, float %1469, float %1470)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1473 = call float @dx.op.dot4.f32(i32 56, float %756, float %757, float %758, float %759, float 0x3FD20DD760000000, float %1468, float %1469, float %1470)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1474 = fsub fast float 1.000000e+00, %1467
  %1475 = fmul fast float %1474, %717
  %1476 = fmul fast float %1475, %1471
  %1477 = fmul fast float %1474, %718
  %1478 = fmul fast float %1477, %1472
  %1479 = fmul fast float %1474, %719
  %1480 = fmul fast float %1479, %1473
  %1481 = fadd fast float %1476, %885
  %1482 = fadd fast float %1478, %886
  %1483 = fadd fast float %1480, %887
  %1484 = fadd fast float %717, -1.000000e+00
  %1485 = fadd fast float %718, -1.000000e+00
  %1486 = fadd fast float %719, -1.000000e+00
  %1487 = fmul fast float %1484, %600
  %1488 = fmul fast float %1485, %600
  %1489 = fmul fast float %1486, %600
  %1490 = fadd fast float %1487, 1.000000e+00
  %1491 = fadd fast float %1488, 1.000000e+00
  %1492 = fadd fast float %1489, 1.000000e+00
  %1493 = call float @dx.op.dot3.f32(i32 55, float %1490, float %1491, float %1492, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1494 = fsub fast float 1.000000e+00, %1493
  %1495 = fmul fast float %849, %837
  %1496 = fsub fast float 1.000000e+00, %837
  %1497 = call float @dx.op.unary.f32(i32 7, float %1496)  ; Saturate(value)
  %1498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1499 = extractvalue %dx.types.CBufRet.f32 %1498, 3
  %1500 = fmul fast float %1499, %1497
  %1501 = fadd fast float %1500, %1495
  %1502 = and i32 %151, 1048576
  %1503 = icmp eq i32 %1502, 0
  br i1 %1503, label %1588, label %1504, !dx.controlflow.hints !80

; <label>:1504                                    ; preds = %1442
  %1505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1506 = extractvalue %dx.types.CBufRet.f32 %1505, 2
  %1507 = extractvalue %dx.types.CBufRet.f32 %1505, 3
  %1508 = fmul fast float %1506, %61
  %1509 = fmul fast float %1507, %62
  %1510 = call float @dx.op.unary.f32(i32 7, float %1508)  ; Saturate(value)
  %1511 = call float @dx.op.unary.f32(i32 7, float %1509)  ; Saturate(value)
  %1512 = select i1 %873, i32 2, i32 0
  %1513 = or i32 %1512, 1
  %1514 = uitofp i32 %1513 to float
  %1515 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1510, float %1511, float %1514, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1516 = extractvalue %dx.types.ResRet.f32 %1515, 0
  %1517 = extractvalue %dx.types.ResRet.f32 %1515, 1
  %1518 = extractvalue %dx.types.ResRet.f32 %1515, 2
  %1519 = extractvalue %dx.types.ResRet.f32 %1515, 3
  %1520 = add nuw nsw i32 %1512, 2
  %1521 = uitofp i32 %1520 to float
  %1522 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1510, float %1511, float %1521, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1523 = extractvalue %dx.types.ResRet.f32 %1522, 0
  %1524 = extractvalue %dx.types.ResRet.f32 %1522, 1
  %1525 = extractvalue %dx.types.ResRet.f32 %1522, 2
  %1526 = extractvalue %dx.types.ResRet.f32 %1522, 3
  %1527 = call float @dx.op.binary.f32(i32 35, float %1517, float %1518)  ; FMax(a,b)
  %1528 = call float @dx.op.binary.f32(i32 35, float %1516, float %1527)  ; FMax(a,b)
  %1529 = call float @dx.op.binary.f32(i32 35, float %1528, float %1519)  ; FMax(a,b)
  %1530 = call float @dx.op.binary.f32(i32 36, float %1524, float %1525)  ; FMin(a,b)
  %1531 = call float @dx.op.binary.f32(i32 36, float %1523, float %1530)  ; FMin(a,b)
  %1532 = call float @dx.op.binary.f32(i32 36, float %1531, float %1526)  ; FMin(a,b)
  %1533 = fmul fast float %1529, 2.550000e+02
  %1534 = fadd fast float %1533, 0x3F70101020000000
  %1535 = fptoui float %1534 to i32
  %1536 = fmul fast float %1532, 2.550000e+02
  %1537 = fadd fast float %1536, 0x3F70101020000000
  %1538 = fptoui float %1537 to i32
  %1539 = icmp ult i32 %1535, %1538
  br i1 %1539, label %1540, label %1581

; <label>:1540                                    ; preds = %1504
  %1541 = fcmp fast ogt float %53, 9.843750e-01
  %1542 = select i1 %1541, float -4.000000e+00, float %1041
  %1543 = call float @dx.op.binary.f32(i32 35, float %1542, float 0.000000e+00)  ; FMax(a,b)
  %1544 = fadd fast float %1038, %1543
  %1545 = fmul fast float %1544, %1039
  %1546 = call float @dx.op.unary.f32(i32 23, float %1545)  ; Log(value)
  %1547 = fmul fast float %1040, %1546
  %1548 = fmul fast float %1547, %1048
  %1549 = call float @dx.op.unary.f32(i32 7, float %1548)  ; Saturate(value)
  %1550 = uitofp i32 %1535 to float
  %1551 = uitofp i32 %1538 to float
  %1552 = fadd fast float %1550, 5.000000e-01
  %1553 = fadd fast float %1551, 5.000000e-01
  %1554 = fmul fast float %1048, %1552
  %1555 = fmul fast float %1048, %1553
  %1556 = fadd fast float %1554, 0x3F0FFB4800000000
  %1557 = fadd fast float %1555, 0xBF0FFB4800000000
  %1558 = call float @dx.op.binary.f32(i32 35, float %1549, float %1556)  ; FMax(a,b)
  %1559 = call float @dx.op.binary.f32(i32 36, float %1558, float %1557)  ; FMin(a,b)
  %1560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1561 = extractvalue %dx.types.CBufRet.f32 %1560, 1
  %1562 = extractvalue %dx.types.CBufRet.f32 %1560, 2
  %1563 = extractvalue %dx.types.CBufRet.f32 %1560, 0
  %1564 = select i1 %873, float %1563, float 0.000000e+00
  %1565 = fmul fast float %1561, %1559
  %1566 = fadd fast float %1564, %1565
  %1567 = fadd fast float %1564, %1562
  %1568 = fsub fast float %1561, %1562
  %1569 = fadd fast float %1568, %1564
  %1570 = call float @dx.op.binary.f32(i32 35, float %1566, float %1567)  ; FMax(a,b)
  %1571 = call float @dx.op.binary.f32(i32 36, float %1570, float %1569)  ; FMin(a,b)
  %1572 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %25, float %1510, float %1511, float %1571, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1573 = extractvalue %dx.types.ResRet.f32 %1572, 0
  %1574 = extractvalue %dx.types.ResRet.f32 %1572, 1
  %1575 = extractvalue %dx.types.ResRet.f32 %1572, 2
  %1576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1577 = extractvalue %dx.types.CBufRet.f32 %1576, 1
  %1578 = fmul fast float %1577, %1573
  %1579 = fmul fast float %1577, %1574
  %1580 = fmul fast float %1577, %1575
  br label %1581

; <label>:1581                                    ; preds = %1540, %1504
  %1582 = phi float [ %1578, %1540 ], [ 1.000000e+00, %1504 ]
  %1583 = phi float [ %1579, %1540 ], [ 1.000000e+00, %1504 ]
  %1584 = phi float [ %1580, %1540 ], [ 1.000000e+00, %1504 ]
  %1585 = fmul fast float %1582, %1459
  %1586 = fmul fast float %1583, %1460
  %1587 = fmul fast float %1584, %1461
  br label %1588

; <label>:1588                                    ; preds = %1581, %1442
  %1589 = phi float [ %1585, %1581 ], [ %1459, %1442 ]
  %1590 = phi float [ %1586, %1581 ], [ %1460, %1442 ]
  %1591 = phi float [ %1587, %1581 ], [ %1461, %1442 ]
  %1592 = and i32 %151, 2097152
  %1593 = icmp eq i32 %1592, 0
  br i1 %1593, label %1598, label %1594, !dx.controlflow.hints !81

; <label>:1594                                    ; preds = %1588
  %1595 = add i32 %148, 192
  %1596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1595, i32 undef)  ; BufferLoad(srv,index,wot)
  %1597 = extractvalue %dx.types.ResRet.f32 %1596, 0
  br label %1601

; <label>:1598                                    ; preds = %1588
  %1599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1600 = extractvalue %dx.types.CBufRet.f32 %1599, 3
  br label %1601

; <label>:1601                                    ; preds = %1598, %1594
  %1602 = phi float [ %1597, %1594 ], [ %1600, %1598 ]
  %1603 = fmul fast float %812, %600
  %1604 = fmul fast float %1603, %1009
  %1605 = fmul fast float %1604, %1481
  %1606 = fmul fast float %813, %600
  %1607 = fmul fast float %1606, %1009
  %1608 = fmul fast float %1607, %1482
  %1609 = fmul fast float %814, %600
  %1610 = fmul fast float %1609, %1009
  %1611 = fmul fast float %1610, %1483
  br i1 %868, label %1612, label %1745

; <label>:1612                                    ; preds = %1601
  %1613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1614 = extractvalue %dx.types.CBufRet.f32 %1613, 2
  %1615 = extractvalue %dx.types.CBufRet.f32 %1613, 3
  %1616 = fmul fast float %1614, %61
  %1617 = fmul fast float %1615, %62
  %1618 = call float @dx.op.unary.f32(i32 7, float %1616)  ; Saturate(value)
  %1619 = call float @dx.op.unary.f32(i32 7, float %1617)  ; Saturate(value)
  %1620 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1618, float %1619, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1621 = extractvalue %dx.types.ResRet.f32 %1620, 0
  %1622 = extractvalue %dx.types.ResRet.f32 %1620, 1
  %1623 = extractvalue %dx.types.ResRet.f32 %1620, 2
  %1624 = extractvalue %dx.types.ResRet.f32 %1620, 3
  %1625 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1618, float %1619, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1626 = extractvalue %dx.types.ResRet.f32 %1625, 0
  %1627 = extractvalue %dx.types.ResRet.f32 %1625, 1
  %1628 = extractvalue %dx.types.ResRet.f32 %1625, 2
  %1629 = extractvalue %dx.types.ResRet.f32 %1625, 3
  %1630 = call float @dx.op.binary.f32(i32 35, float %1622, float %1623)  ; FMax(a,b)
  %1631 = call float @dx.op.binary.f32(i32 35, float %1621, float %1630)  ; FMax(a,b)
  %1632 = call float @dx.op.binary.f32(i32 35, float %1631, float %1624)  ; FMax(a,b)
  %1633 = call float @dx.op.binary.f32(i32 36, float %1627, float %1628)  ; FMin(a,b)
  %1634 = call float @dx.op.binary.f32(i32 36, float %1626, float %1633)  ; FMin(a,b)
  %1635 = call float @dx.op.binary.f32(i32 36, float %1634, float %1629)  ; FMin(a,b)
  %1636 = fmul fast float %1632, 2.550000e+02
  %1637 = fadd fast float %1636, 0x3F70101020000000
  %1638 = fptoui float %1637 to i32
  %1639 = fmul fast float %1635, 2.550000e+02
  %1640 = fadd fast float %1639, 0x3F70101020000000
  %1641 = fptoui float %1640 to i32
  %1642 = icmp ult i32 %1638, %1641
  br i1 %1642, label %1643, label %1687

; <label>:1643                                    ; preds = %1612
  %1644 = fcmp fast ogt float %53, 9.843750e-01
  %1645 = select i1 %1644, float -4.000000e+00, float %1041
  %1646 = call float @dx.op.binary.f32(i32 35, float %1645, float 0.000000e+00)  ; FMax(a,b)
  %1647 = fadd fast float %1038, %1646
  %1648 = fmul fast float %1647, %1039
  %1649 = call float @dx.op.unary.f32(i32 23, float %1648)  ; Log(value)
  %1650 = fmul fast float %1040, %1649
  %1651 = fmul fast float %1650, %1048
  %1652 = call float @dx.op.unary.f32(i32 7, float %1651)  ; Saturate(value)
  %1653 = uitofp i32 %1638 to float
  %1654 = uitofp i32 %1641 to float
  %1655 = fadd fast float %1653, 5.000000e-01
  %1656 = fadd fast float %1654, 5.000000e-01
  %1657 = fmul fast float %1048, %1655
  %1658 = fmul fast float %1048, %1656
  %1659 = fadd fast float %1657, 0x3F0FFB4800000000
  %1660 = fadd fast float %1658, 0xBF0FFB4800000000
  %1661 = call float @dx.op.binary.f32(i32 35, float %1652, float %1659)  ; FMax(a,b)
  %1662 = call float @dx.op.binary.f32(i32 36, float %1661, float %1660)  ; FMin(a,b)
  %1663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1664 = extractvalue %dx.types.CBufRet.f32 %1663, 1
  %1665 = extractvalue %dx.types.CBufRet.f32 %1663, 2
  %1666 = extractvalue %dx.types.CBufRet.f32 %1663, 0
  %1667 = fmul fast float %1664, %1662
  %1668 = fadd fast float %1666, %1667
  %1669 = fadd fast float %1666, %1665
  %1670 = fsub fast float %1664, %1665
  %1671 = fadd fast float %1670, %1666
  %1672 = call float @dx.op.binary.f32(i32 35, float %1668, float %1669)  ; FMax(a,b)
  %1673 = call float @dx.op.binary.f32(i32 36, float %1672, float %1671)  ; FMin(a,b)
  %1674 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %1618, float %1619, float %1673, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1675 = extractvalue %dx.types.ResRet.f32 %1674, 0
  %1676 = extractvalue %dx.types.ResRet.f32 %1674, 1
  %1677 = extractvalue %dx.types.ResRet.f32 %1674, 2
  %1678 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %1618, float %1619, float %1673, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1679 = extractvalue %dx.types.ResRet.f32 %1678, 0
  %1680 = extractvalue %dx.types.ResRet.f32 %1678, 1
  %1681 = extractvalue %dx.types.ResRet.f32 %1678, 2
  %1682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1683 = extractvalue %dx.types.CBufRet.f32 %1682, 1
  %1684 = fmul fast float %1683, %1679
  %1685 = fmul fast float %1683, %1680
  %1686 = fmul fast float %1683, %1681
  br label %1687

; <label>:1687                                    ; preds = %1643, %1612
  %1688 = phi float [ %1675, %1643 ], [ 1.000000e+00, %1612 ]
  %1689 = phi float [ %1676, %1643 ], [ 1.000000e+00, %1612 ]
  %1690 = phi float [ %1677, %1643 ], [ 1.000000e+00, %1612 ]
  %1691 = phi float [ %1684, %1643 ], [ 0.000000e+00, %1612 ]
  %1692 = phi float [ %1685, %1643 ], [ 0.000000e+00, %1612 ]
  %1693 = phi float [ %1686, %1643 ], [ 0.000000e+00, %1612 ]
  %1694 = fmul fast float %1691, %1494
  %1695 = fmul fast float %1692, %1494
  %1696 = fmul fast float %1693, %1494
  %1697 = call float @dx.op.dot3.f32(i32 55, float %1688, float %1689, float %1690, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1698 = call float @dx.op.dot3.f32(i32 55, float %1694, float %1695, float %1696, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1699 = select i1 %131, float %1697, float %1688
  %1700 = select i1 %131, float %1697, float %1689
  %1701 = select i1 %131, float 1.000000e+00, float %1690
  %1702 = select i1 %131, float %1698, float %1694
  %1703 = select i1 %131, float 0.000000e+00, float %1695
  %1704 = select i1 %131, float 0.000000e+00, float %1696
  %1705 = fmul fast float %1699, %1605
  %1706 = fmul fast float %1700, %1608
  %1707 = fmul fast float %1701, %1611
  %1708 = fadd fast float %1705, %1702
  %1709 = fadd fast float %1706, %1703
  %1710 = fadd fast float %1704, %1707
  %1711 = fmul fast float %1699, %1589
  %1712 = fmul fast float %1700, %1590
  %1713 = fmul fast float %1701, %1591
  %1714 = fmul fast float %66, %1614
  %1715 = fmul fast float %68, %1615
  %1716 = fsub fast float 1.000000e+00, %1714
  %1717 = fsub fast float 1.000000e+00, %1715
  %1718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1719 = extractvalue %dx.types.CBufRet.f32 %1718, 0
  %1720 = extractvalue %dx.types.CBufRet.f32 %1718, 1
  %1721 = extractvalue %dx.types.CBufRet.f32 %1718, 2
  %1722 = fmul fast float %1716, %1719
  %1723 = fmul fast float %1716, %1720
  %1724 = fmul fast float %1716, %1721
  %1725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1726 = extractvalue %dx.types.CBufRet.f32 %1725, 0
  %1727 = extractvalue %dx.types.CBufRet.f32 %1725, 1
  %1728 = extractvalue %dx.types.CBufRet.f32 %1725, 2
  %1729 = fmul fast float %1717, %1726
  %1730 = fmul fast float %1717, %1727
  %1731 = fmul fast float %1717, %1728
  %1732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1733 = extractvalue %dx.types.CBufRet.f32 %1732, 0
  %1734 = extractvalue %dx.types.CBufRet.f32 %1732, 1
  %1735 = extractvalue %dx.types.CBufRet.f32 %1732, 2
  %1736 = fadd fast float %1729, %1733
  %1737 = fadd fast float %1736, %1722
  %1738 = fadd fast float %1730, %1734
  %1739 = fadd fast float %1738, %1723
  %1740 = fadd fast float %1731, %1735
  %1741 = fadd fast float %1740, %1724
  %1742 = fmul fast float %1737, %865
  %1743 = fmul fast float %1739, %865
  %1744 = fmul fast float %1741, %865
  br label %1745

; <label>:1745                                    ; preds = %1687, %1601
  %1746 = phi float [ %1742, %1687 ], [ %96, %1601 ]
  %1747 = phi float [ %1743, %1687 ], [ %97, %1601 ]
  %1748 = phi float [ %1744, %1687 ], [ %98, %1601 ]
  %1749 = phi float [ %865, %1687 ], [ %54, %1601 ]
  %1750 = phi float [ %1708, %1687 ], [ %1605, %1601 ]
  %1751 = phi float [ %1709, %1687 ], [ %1608, %1601 ]
  %1752 = phi float [ %1710, %1687 ], [ %1611, %1601 ]
  %1753 = phi float [ %1711, %1687 ], [ %1589, %1601 ]
  %1754 = phi float [ %1712, %1687 ], [ %1590, %1601 ]
  %1755 = phi float [ %1713, %1687 ], [ %1591, %1601 ]
  %1756 = phi float [ %1688, %1687 ], [ 1.000000e+00, %1601 ]
  br i1 %873, label %2812, label %1757

; <label>:1757                                    ; preds = %1745
  %1758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1759 = extractvalue %dx.types.CBufRet.f32 %1758, 0
  %1760 = extractvalue %dx.types.CBufRet.f32 %1758, 1
  %1761 = extractvalue %dx.types.CBufRet.f32 %1758, 2
  %1762 = extractvalue %dx.types.CBufRet.f32 %1758, 3
  %1763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1764 = extractvalue %dx.types.CBufRet.f32 %1763, 0
  %1765 = extractvalue %dx.types.CBufRet.f32 %1763, 1
  %1766 = extractvalue %dx.types.CBufRet.f32 %1763, 2
  %1767 = extractvalue %dx.types.CBufRet.f32 %1763, 3
  %1768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1769 = extractvalue %dx.types.CBufRet.f32 %1768, 0
  %1770 = extractvalue %dx.types.CBufRet.f32 %1768, 1
  %1771 = extractvalue %dx.types.CBufRet.f32 %1768, 2
  %1772 = extractvalue %dx.types.CBufRet.f32 %1768, 3
  %1773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1774 = extractvalue %dx.types.CBufRet.f32 %1773, 0
  %1775 = extractvalue %dx.types.CBufRet.f32 %1773, 1
  %1776 = extractvalue %dx.types.CBufRet.f32 %1773, 2
  %1777 = extractvalue %dx.types.CBufRet.f32 %1773, 3
  %1778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1779 = extractvalue %dx.types.CBufRet.f32 %1778, 3
  %1780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1781 = extractvalue %dx.types.CBufRet.f32 %1780, 3
  %1782 = extractvalue %dx.types.CBufRet.f32 %1780, 0
  %1783 = extractvalue %dx.types.CBufRet.f32 %1780, 1
  %1784 = extractvalue %dx.types.CBufRet.f32 %1780, 2
  %1785 = fcmp fast olt float %1784, -5.000000e-01
  %1786 = call float @dx.op.dot3.f32(i32 55, float %1746, float %1747, float %1748, float %1746, float %1747, float %1748)  ; Dot3(ax,ay,az,bx,by,bz)
  %1787 = call float @dx.op.unary.f32(i32 25, float %1786)  ; Rsqrt(value)
  %1788 = fmul fast float %1787, %1786
  %1789 = fmul fast float %1787, %1746
  %1790 = fmul fast float %1787, %1747
  %1791 = fmul fast float %1787, %1748
  %1792 = fadd fast float %1788, %1762
  %1793 = call float @dx.op.dot3.f32(i32 55, float %1789, float %1790, float %1791, float %1759, float %1760, float %1761)  ; Dot3(ax,ay,az,bx,by,bz)
  %1794 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1795 = extractvalue %dx.types.CBufRet.i32 %1794, 1
  %1796 = and i32 %1795, 1
  %1797 = icmp ne i32 %1796, 0
  %1798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1799 = extractvalue %dx.types.CBufRet.f32 %1798, 2
  %1800 = fcmp fast ogt float %1799, 0.000000e+00
  %1801 = and i1 %1797, %1800
  br i1 %1801, label %1802, label %2208, !dx.controlflow.hints !82

; <label>:1802                                    ; preds = %1757
  %1803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1804 = extractvalue %dx.types.CBufRet.f32 %1803, 3
  %1805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1806 = extractvalue %dx.types.CBufRet.f32 %1805, 2
  %1807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1808 = extractvalue %dx.types.CBufRet.f32 %1807, 2
  %1809 = fsub fast float %1806, %1808
  %1810 = and i32 %1795, 2
  %1811 = extractvalue %dx.types.CBufRet.i32 %1794, 0
  %1812 = call i32 @dx.op.binary.i32(i32 40, i32 %1811, i32 3)  ; UMin(a,b)
  %1813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1814 = extractvalue %dx.types.CBufRet.f32 %1813, 0
  %1815 = extractvalue %dx.types.CBufRet.f32 %1813, 1
  %1816 = extractvalue %dx.types.CBufRet.f32 %1807, 0
  %1817 = extractvalue %dx.types.CBufRet.f32 %1807, 1
  %1818 = fsub fast float %1814, %1816
  %1819 = fsub fast float %1815, %1817
  %1820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1821 = extractvalue %dx.types.CBufRet.f32 %1820, 0
  %1822 = fcmp fast ogt float %1821, 0.000000e+00
  %1823 = fsub fast float -0.000000e+00, %1818
  %1824 = fsub fast float -0.000000e+00, %1819
  %1825 = call float @dx.op.dot2.f32(i32 54, float %1789, float %1790, float %1789, float %1790)  ; Dot2(ax,ay,bx,by)
  %1826 = call float @dx.op.dot2.f32(i32 54, float %1789, float %1790, float %1823, float %1824)  ; Dot2(ax,ay,bx,by)
  %1827 = fmul fast float %1826, 2.000000e+00
  %1828 = call float @dx.op.dot2.f32(i32 54, float %1823, float %1824, float %1823, float %1824)  ; Dot2(ax,ay,bx,by)
  %1829 = fmul fast float %1821, %1821
  %1830 = fsub fast float %1828, %1829
  %1831 = fmul fast float %1827, %1827
  %1832 = fmul fast float %1825, 4.000000e+00
  %1833 = fmul fast float %1832, %1830
  %1834 = fsub fast float %1831, %1833
  %1835 = fcmp fast ogt float %1834, 0.000000e+00
  br i1 %1835, label %1836, label %1851

; <label>:1836                                    ; preds = %1802
  %1837 = fcmp fast ogt float %1827, 0.000000e+00
  %1838 = call float @dx.op.unary.f32(i32 24, float %1834)  ; Sqrt(value)
  %1839 = fsub fast float -0.000000e+00, %1838
  %1840 = select i1 %1837, float %1838, float %1839
  %1841 = fadd fast float %1840, %1827
  %1842 = fmul float %1841, -5.000000e-01
  %1843 = fdiv fast float %1842, %1825
  %1844 = call float @dx.op.binary.f32(i32 35, float %1843, float 0.000000e+00)  ; FMax(a,b)
  %1845 = call float @dx.op.binary.f32(i32 36, float %1788, float %1844)  ; FMin(a,b)
  %1846 = fdiv fast float %1830, %1842
  %1847 = call float @dx.op.binary.f32(i32 35, float %1846, float 0.000000e+00)  ; FMax(a,b)
  %1848 = call float @dx.op.binary.f32(i32 36, float %1788, float %1847)  ; FMin(a,b)
  %1849 = call float @dx.op.binary.f32(i32 36, float %1845, float %1848)  ; FMin(a,b)
  %1850 = call float @dx.op.binary.f32(i32 35, float %1845, float %1848)  ; FMax(a,b)
  br label %1851

; <label>:1851                                    ; preds = %1836, %1802
  %1852 = phi float [ %1850, %1836 ], [ -1.000000e+00, %1802 ]
  %1853 = phi float [ %1849, %1836 ], [ -1.000000e+00, %1802 ]
  %1854 = phi i1 [ true, %1836 ], [ false, %1802 ]
  %1855 = and i1 %1822, %1854
  br i1 %1855, label %1856, label %1858

; <label>:1856                                    ; preds = %1851
  %1857 = fcmp fast oeq float %1853, %1852
  br i1 %1857, label %2161, label %1859

; <label>:1858                                    ; preds = %1851
  br i1 %1822, label %2161, label %1859

; <label>:1859                                    ; preds = %1858, %1856
  %1860 = phi float [ %1788, %1858 ], [ %1852, %1856 ]
  %1861 = phi float [ 0.000000e+00, %1858 ], [ %1853, %1856 ]
  %1862 = icmp ne i32 %1810, 0
  %1863 = fmul fast float %1860, %1791
  %1864 = fadd fast float %1863, %1804
  %1865 = fmul fast float %1864, %1860
  %1866 = select i1 %1862, float 0.000000e+00, float %1865
  %1867 = fcmp fast oeq float %1791, 0.000000e+00
  %1868 = fdiv fast float %1809, %1791
  %1869 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1868)  ; FMax(a,b)
  %1870 = select i1 %1867, float %1860, float %1869
  %1871 = call float @dx.op.binary.f32(i32 36, float %1860, float %1870)  ; FMin(a,b)
  %1872 = fcmp fast ogt float %1791, 0.000000e+00
  %1873 = fcmp fast olt float %1809, 0.000000e+00
  br i1 %1872, label %1874, label %1931

; <label>:1874                                    ; preds = %1859
  %1875 = icmp eq i32 %1810, 0
  br i1 %1873, label %1876, label %1920

; <label>:1876                                    ; preds = %1874
  %1877 = select i1 %1875, float %1860, float 0.000000e+00
  %1878 = fsub fast float -0.000000e+00, %1877
  %1879 = call float @dx.op.unary.f32(i32 6, float %1878)  ; FAbs(value)
  %1880 = fmul fast float %1877, %1791
  %1881 = fadd fast float %1880, %1804
  %1882 = fmul fast float %1879, %1881
  %1883 = fsub fast float %1866, %1882
  %1884 = fsub fast float %1860, %1879
  %1885 = select i1 %1875, float %1884, float 0.000000e+00
  %1886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1887 = extractvalue %dx.types.CBufRet.f32 %1886, 0
  %1888 = extractvalue %dx.types.CBufRet.f32 %1886, 1
  %1889 = extractvalue %dx.types.CBufRet.f32 %1886, 2
  %1890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1891 = extractvalue %dx.types.CBufRet.f32 %1890, 0
  %1892 = extractvalue %dx.types.CBufRet.f32 %1890, 1
  %1893 = extractvalue %dx.types.CBufRet.f32 %1890, 2
  %1894 = extractvalue %dx.types.CBufRet.f32 %1890, 3
  %1895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1896 = extractvalue %dx.types.CBufRet.f32 %1895, 3
  %1897 = call float @dx.op.binary.f32(i32 36, float %1883, float %1896)  ; FMin(a,b)
  %1898 = fmul fast float %1894, %1885
  %1899 = call float @dx.op.unary.f32(i32 7, float %1898)  ; Saturate(value)
  %1900 = fsub fast float %1891, %1887
  %1901 = fsub fast float %1892, %1888
  %1902 = fsub fast float %1893, %1889
  %1903 = fmul fast float %1899, %1900
  %1904 = fmul fast float %1899, %1901
  %1905 = fmul fast float %1899, %1902
  %1906 = fadd fast float %1903, %1887
  %1907 = fadd fast float %1904, %1888
  %1908 = fadd fast float %1905, %1889
  %1909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1910 = extractvalue %dx.types.CBufRet.f32 %1909, 0
  %1911 = extractvalue %dx.types.CBufRet.f32 %1909, 1
  %1912 = fadd fast float %1911, %1910
  %1913 = call float @dx.op.unary.f32(i32 7, float %1912)  ; Saturate(value)
  %1914 = extractvalue %dx.types.CBufRet.f32 %1909, 2
  %1915 = extractvalue %dx.types.CBufRet.f32 %1909, 3
  %1916 = fadd fast float %1915, %1914
  %1917 = call float @dx.op.unary.f32(i32 7, float %1916)  ; Saturate(value)
  %1918 = fmul fast float %1913, %1897
  %1919 = fmul fast float %1918, %1917
  br label %2161

; <label>:1920                                    ; preds = %1874
  br i1 %1875, label %1921, label %1942

; <label>:1921                                    ; preds = %1920
  %1922 = call float @dx.op.binary.f32(i32 36, float %1871, float %1861)  ; FMin(a,b)
  %1923 = fsub fast float %1871, %1922
  %1924 = fsub fast float %1923, %1860
  %1925 = call float @dx.op.unary.f32(i32 6, float %1924)  ; FAbs(value)
  %1926 = fadd fast float %1923, %1860
  %1927 = fmul fast float %1926, %1791
  %1928 = fadd fast float %1927, %1804
  %1929 = fmul fast float %1928, %1925
  %1930 = fsub fast float %1866, %1929
  br label %1942

; <label>:1931                                    ; preds = %1859
  br i1 %1873, label %1932, label %1942

; <label>:1932                                    ; preds = %1931
  %1933 = call float @dx.op.binary.f32(i32 35, float %1861, float %1871)  ; FMax(a,b)
  %1934 = icmp eq i32 %1810, 0
  %1935 = select i1 %1934, float %1871, float 0.000000e+00
  %1936 = fsub fast float -0.000000e+00, %1935
  %1937 = call float @dx.op.unary.f32(i32 6, float %1936)  ; FAbs(value)
  %1938 = fmul fast float %1935, %1791
  %1939 = fadd fast float %1938, %1804
  %1940 = fmul fast float %1937, %1939
  %1941 = fsub fast float %1866, %1940
  br label %1942

; <label>:1942                                    ; preds = %1932, %1931, %1921, %1920
  %1943 = phi float [ %1861, %1920 ], [ %1861, %1921 ], [ %1933, %1932 ], [ %1861, %1931 ]
  %1944 = phi float [ 0.000000e+00, %1920 ], [ %1925, %1921 ], [ %1937, %1932 ], [ 0.000000e+00, %1931 ]
  %1945 = phi float [ %1866, %1920 ], [ %1930, %1921 ], [ %1941, %1932 ], [ %1866, %1931 ]
  %1946 = phi float [ %1871, %1920 ], [ %1871, %1921 ], [ %1860, %1932 ], [ %1860, %1931 ]
  %1947 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 0
  store float -1.000000e+00, float* %1947, align 4, !tbaa !83, !noalias !87
  %1948 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 1
  store float -1.000000e+00, float* %1948, align 4, !tbaa !83, !noalias !87
  %1949 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 2
  store float -1.000000e+00, float* %1949, align 4, !tbaa !83, !noalias !87
  %1950 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 0
  store float -1.000000e+00, float* %1950, align 4, !tbaa !83, !noalias !87
  %1951 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 1
  store float -1.000000e+00, float* %1951, align 4, !tbaa !83, !noalias !87
  %1952 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 2
  store float -1.000000e+00, float* %1952, align 4, !tbaa !83, !noalias !87
  %1953 = icmp sgt i32 %1812, 0
  br i1 %1953, label %1954, label %2015

; <label>:1954                                    ; preds = %1942
  br label %1955

; <label>:1955                                    ; preds = %2004, %1954
  %1956 = phi i32 [ %2005, %2004 ], [ 0, %1954 ]
  %1957 = phi i32 [ %2006, %2004 ], [ 0, %1954 ]
  %1958 = add nuw i32 %1957, 171
  %1959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 %1958)  ; CBufferLoadLegacy(handle,regIndex)
  %1960 = extractvalue %dx.types.CBufRet.f32 %1959, 0
  %1961 = extractvalue %dx.types.CBufRet.f32 %1959, 1
  %1962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1963 = extractvalue %dx.types.CBufRet.f32 %1962, 0
  %1964 = extractvalue %dx.types.CBufRet.f32 %1962, 1
  %1965 = fsub fast float %1960, %1963
  %1966 = fsub fast float %1961, %1964
  %1967 = extractvalue %dx.types.CBufRet.f32 %1959, 2
  %1968 = fsub fast float -0.000000e+00, %1965
  %1969 = fsub fast float -0.000000e+00, %1966
  %1970 = call float @dx.op.dot2.f32(i32 54, float %1789, float %1790, float %1968, float %1969)  ; Dot2(ax,ay,bx,by)
  %1971 = fmul fast float %1970, 2.000000e+00
  %1972 = call float @dx.op.dot2.f32(i32 54, float %1968, float %1969, float %1968, float %1969)  ; Dot2(ax,ay,bx,by)
  %1973 = fmul fast float %1967, %1967
  %1974 = fsub fast float %1972, %1973
  %1975 = fmul fast float %1971, %1971
  %1976 = fmul fast float %1832, %1974
  %1977 = fsub fast float %1975, %1976
  %1978 = fcmp fast ogt float %1977, 0.000000e+00
  br i1 %1978, label %1979, label %1994

; <label>:1979                                    ; preds = %1955
  %1980 = fcmp fast ogt float %1971, 0.000000e+00
  %1981 = call float @dx.op.unary.f32(i32 24, float %1977)  ; Sqrt(value)
  %1982 = fsub fast float -0.000000e+00, %1981
  %1983 = select i1 %1980, float %1981, float %1982
  %1984 = fadd fast float %1983, %1971
  %1985 = fmul float %1984, -5.000000e-01
  %1986 = fdiv fast float %1985, %1825
  %1987 = call float @dx.op.binary.f32(i32 35, float %1986, float 0.000000e+00)  ; FMax(a,b)
  %1988 = call float @dx.op.binary.f32(i32 36, float %1860, float %1987)  ; FMin(a,b)
  %1989 = fdiv fast float %1974, %1985
  %1990 = call float @dx.op.binary.f32(i32 35, float %1989, float 0.000000e+00)  ; FMax(a,b)
  %1991 = call float @dx.op.binary.f32(i32 36, float %1860, float %1990)  ; FMin(a,b)
  %1992 = call float @dx.op.binary.f32(i32 36, float %1988, float %1991)  ; FMin(a,b)
  %1993 = call float @dx.op.binary.f32(i32 35, float %1988, float %1991)  ; FMax(a,b)
  br label %1994

; <label>:1994                                    ; preds = %1979, %1955
  %1995 = phi float [ %1993, %1979 ], [ -1.000000e+00, %1955 ]
  %1996 = phi float [ %1992, %1979 ], [ -1.000000e+00, %1955 ]
  %1997 = phi i1 [ true, %1979 ], [ false, %1955 ]
  br i1 %1997, label %1998, label %2004

; <label>:1998                                    ; preds = %1994
  %1999 = call float @dx.op.binary.f32(i32 35, float %1943, float %1996)  ; FMax(a,b)
  %2000 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 %1957
  store float %1999, float* %2000, align 4, !tbaa !83, !noalias !87
  %2001 = call float @dx.op.binary.f32(i32 35, float %1943, float %1995)  ; FMax(a,b)
  %2002 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 %1957
  store float %2001, float* %2002, align 4, !tbaa !83, !noalias !87
  %2003 = add nsw i32 %1956, 1
  br label %2004

; <label>:2004                                    ; preds = %1998, %1994
  %2005 = phi i32 [ %2003, %1998 ], [ %1956, %1994 ]
  %2006 = add nuw nsw i32 %1957, 1
  %2007 = icmp eq i32 %2006, %1812
  br i1 %2007, label %2008, label %1955

; <label>:2008                                    ; preds = %2004
  %2009 = load float, float* %1949, align 4, !tbaa !83, !alias.scope !103, !noalias !106
  %2010 = load float, float* %1948, align 4, !tbaa !83, !alias.scope !109, !noalias !110
  %2011 = load float, float* %1947, align 4, !tbaa !83, !alias.scope !111, !noalias !112
  %2012 = load float, float* %1952, align 4, !tbaa !83, !alias.scope !113, !noalias !116
  %2013 = load float, float* %1951, align 4, !tbaa !83, !alias.scope !119, !noalias !120
  %2014 = load float, float* %1950, align 4, !tbaa !83, !alias.scope !121, !noalias !122
  br label %2015

; <label>:2015                                    ; preds = %2008, %1942
  %2016 = phi float [ -1.000000e+00, %1942 ], [ %2014, %2008 ]
  %2017 = phi float [ -1.000000e+00, %1942 ], [ %2013, %2008 ]
  %2018 = phi float [ -1.000000e+00, %1942 ], [ %2012, %2008 ]
  %2019 = phi float [ -1.000000e+00, %1942 ], [ %2011, %2008 ]
  %2020 = phi float [ -1.000000e+00, %1942 ], [ %2010, %2008 ]
  %2021 = phi float [ -1.000000e+00, %1942 ], [ %2009, %2008 ]
  %2022 = phi i32 [ 0, %1942 ], [ %2005, %2008 ]
  %2023 = call float @dx.op.binary.f32(i32 36, float %2020, float %2021)  ; FMin(a,b)
  %2024 = call float @dx.op.binary.f32(i32 36, float %2019, float %2023)  ; FMin(a,b)
  %2025 = call float @dx.op.binary.f32(i32 35, float %2019, float %2020)  ; FMax(a,b)
  %2026 = call float @dx.op.binary.f32(i32 36, float %2025, float %2021)  ; FMin(a,b)
  %2027 = call float @dx.op.binary.f32(i32 36, float %2019, float %2020)  ; FMin(a,b)
  %2028 = call float @dx.op.binary.f32(i32 35, float %2027, float %2026)  ; FMax(a,b)
  %2029 = call float @dx.op.binary.f32(i32 35, float %2020, float %2021)  ; FMax(a,b)
  %2030 = call float @dx.op.binary.f32(i32 35, float %2019, float %2029)  ; FMax(a,b)
  store float %2024, float* %1947, align 4, !tbaa !83, !alias.scope !111, !noalias !112
  store float %2028, float* %1948, align 4, !tbaa !83, !alias.scope !109, !noalias !110
  store float %2030, float* %1949, align 4, !tbaa !83, !alias.scope !103, !noalias !106
  %2031 = call float @dx.op.binary.f32(i32 36, float %2017, float %2018)  ; FMin(a,b)
  %2032 = call float @dx.op.binary.f32(i32 36, float %2016, float %2031)  ; FMin(a,b)
  %2033 = call float @dx.op.binary.f32(i32 35, float %2016, float %2017)  ; FMax(a,b)
  %2034 = call float @dx.op.binary.f32(i32 36, float %2033, float %2018)  ; FMin(a,b)
  %2035 = call float @dx.op.binary.f32(i32 36, float %2016, float %2017)  ; FMin(a,b)
  %2036 = call float @dx.op.binary.f32(i32 35, float %2035, float %2034)  ; FMax(a,b)
  %2037 = call float @dx.op.binary.f32(i32 35, float %2017, float %2018)  ; FMax(a,b)
  %2038 = call float @dx.op.binary.f32(i32 35, float %2016, float %2037)  ; FMax(a,b)
  store float %2032, float* %1950, align 4, !tbaa !83, !alias.scope !121, !noalias !122
  store float %2036, float* %1951, align 4, !tbaa !83, !alias.scope !119, !noalias !120
  store float %2038, float* %1952, align 4, !tbaa !83, !alias.scope !113, !noalias !116
  %2039 = sub nsw i32 3, %2022
  %2040 = icmp sgt i32 %2039, 2
  br i1 %2040, label %2041, label %2079

; <label>:2041                                    ; preds = %2015
  %2042 = icmp eq i32 %1810, 0
  %2043 = fsub fast float %1860, %1944
  %2044 = select i1 %2042, float %2043, float %1944
  %2045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2046 = extractvalue %dx.types.CBufRet.f32 %2045, 0
  %2047 = extractvalue %dx.types.CBufRet.f32 %2045, 1
  %2048 = extractvalue %dx.types.CBufRet.f32 %2045, 2
  %2049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2050 = extractvalue %dx.types.CBufRet.f32 %2049, 0
  %2051 = extractvalue %dx.types.CBufRet.f32 %2049, 1
  %2052 = extractvalue %dx.types.CBufRet.f32 %2049, 2
  %2053 = extractvalue %dx.types.CBufRet.f32 %2049, 3
  %2054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2055 = extractvalue %dx.types.CBufRet.f32 %2054, 3
  %2056 = call float @dx.op.binary.f32(i32 36, float %1945, float %2055)  ; FMin(a,b)
  %2057 = fmul fast float %2053, %2044
  %2058 = call float @dx.op.unary.f32(i32 7, float %2057)  ; Saturate(value)
  %2059 = fsub fast float %2050, %2046
  %2060 = fsub fast float %2051, %2047
  %2061 = fsub fast float %2052, %2048
  %2062 = fmul fast float %2058, %2059
  %2063 = fmul fast float %2058, %2060
  %2064 = fmul fast float %2058, %2061
  %2065 = fadd fast float %2062, %2046
  %2066 = fadd fast float %2063, %2047
  %2067 = fadd fast float %2064, %2048
  %2068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2069 = extractvalue %dx.types.CBufRet.f32 %2068, 0
  %2070 = extractvalue %dx.types.CBufRet.f32 %2068, 1
  %2071 = fadd fast float %2070, %2069
  %2072 = call float @dx.op.unary.f32(i32 7, float %2071)  ; Saturate(value)
  %2073 = extractvalue %dx.types.CBufRet.f32 %2068, 2
  %2074 = extractvalue %dx.types.CBufRet.f32 %2068, 3
  %2075 = fadd fast float %2074, %2073
  %2076 = call float @dx.op.unary.f32(i32 7, float %2075)  ; Saturate(value)
  %2077 = fmul fast float %2072, %2056
  %2078 = fmul fast float %2077, %2076
  br label %2161

; <label>:2079                                    ; preds = %2015
  %2080 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 %2039
  %2081 = load float, float* %2080, align 4, !tbaa !83, !noalias !87
  %2082 = fcmp fast olt float %2081, %1946
  %2083 = icmp sgt i32 %2022, 0
  %2084 = and i1 %2083, %2082
  br i1 %2084, label %2085, label %2122

; <label>:2085                                    ; preds = %2079
  br label %2086

; <label>:2086                                    ; preds = %2115, %2085
  %2087 = phi float [ %2116, %2115 ], [ %1944, %2085 ]
  %2088 = phi float [ %2117, %2115 ], [ %1945, %2085 ]
  %2089 = phi float [ %2097, %2115 ], [ %2081, %2085 ]
  %2090 = phi i32 [ %2094, %2115 ], [ %2039, %2085 ]
  %2091 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 %2090
  %2092 = load float, float* %2091, align 4, !tbaa !83, !noalias !87
  %2093 = icmp slt i32 %2090, 2
  %2094 = add nsw i32 %2090, 1
  %2095 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 %2094
  %2096 = load float, float* %2095, align 4, !tbaa !83, !noalias !87
  %2097 = select i1 %2093, float %2096, float %1860
  %2098 = call float @dx.op.binary.f32(i32 36, float %2097, float %2092)  ; FMin(a,b)
  %2099 = call float @dx.op.binary.f32(i32 36, float %1946, float %2098)  ; FMin(a,b)
  %2100 = icmp eq i32 %1810, 0
  %2101 = fadd fast float %2099, %2089
  %2102 = fmul fast float %2101, %1791
  %2103 = fadd fast float %2102, %1804
  br i1 %2100, label %2109, label %2104

; <label>:2104                                    ; preds = %2086
  %2105 = fsub fast float %2099, %2089
  %2106 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2105)  ; FMax(a,b)
  %2107 = fmul fast float %2106, %2103
  %2108 = fadd fast float %2107, %2088
  br label %2115

; <label>:2109                                    ; preds = %2086
  %2110 = fsub fast float %2089, %2099
  %2111 = call float @dx.op.unary.f32(i32 6, float %2110)  ; FAbs(value)
  %2112 = fadd fast float %2111, %2087
  %2113 = fmul fast float %2111, %2103
  %2114 = fsub fast float %2088, %2113
  br label %2115

; <label>:2115                                    ; preds = %2109, %2104
  %2116 = phi float [ %2106, %2104 ], [ %2112, %2109 ]
  %2117 = phi float [ %2108, %2104 ], [ %2114, %2109 ]
  %2118 = fcmp fast olt float %2097, %1946
  %2119 = icmp slt i32 %2094, 3
  %2120 = and i1 %2119, %2118
  br i1 %2120, label %2086, label %2121

; <label>:2121                                    ; preds = %2115
  br label %2122

; <label>:2122                                    ; preds = %2121, %2079
  %2123 = phi float [ %1944, %2079 ], [ %2116, %2121 ]
  %2124 = phi float [ %1945, %2079 ], [ %2117, %2121 ]
  %2125 = fsub fast float %1860, %2123
  %2126 = select i1 %1862, float %2123, float %2125
  %2127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2128 = extractvalue %dx.types.CBufRet.f32 %2127, 0
  %2129 = extractvalue %dx.types.CBufRet.f32 %2127, 1
  %2130 = extractvalue %dx.types.CBufRet.f32 %2127, 2
  %2131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2132 = extractvalue %dx.types.CBufRet.f32 %2131, 0
  %2133 = extractvalue %dx.types.CBufRet.f32 %2131, 1
  %2134 = extractvalue %dx.types.CBufRet.f32 %2131, 2
  %2135 = extractvalue %dx.types.CBufRet.f32 %2131, 3
  %2136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2137 = extractvalue %dx.types.CBufRet.f32 %2136, 3
  %2138 = call float @dx.op.binary.f32(i32 36, float %2124, float %2137)  ; FMin(a,b)
  %2139 = fmul fast float %2135, %2126
  %2140 = call float @dx.op.unary.f32(i32 7, float %2139)  ; Saturate(value)
  %2141 = fsub fast float %2132, %2128
  %2142 = fsub fast float %2133, %2129
  %2143 = fsub fast float %2134, %2130
  %2144 = fmul fast float %2140, %2141
  %2145 = fmul fast float %2140, %2142
  %2146 = fmul fast float %2140, %2143
  %2147 = fadd fast float %2144, %2128
  %2148 = fadd fast float %2145, %2129
  %2149 = fadd fast float %2146, %2130
  %2150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2151 = extractvalue %dx.types.CBufRet.f32 %2150, 0
  %2152 = extractvalue %dx.types.CBufRet.f32 %2150, 1
  %2153 = fadd fast float %2152, %2151
  %2154 = call float @dx.op.unary.f32(i32 7, float %2153)  ; Saturate(value)
  %2155 = extractvalue %dx.types.CBufRet.f32 %2150, 2
  %2156 = extractvalue %dx.types.CBufRet.f32 %2150, 3
  %2157 = fadd fast float %2156, %2155
  %2158 = call float @dx.op.unary.f32(i32 7, float %2157)  ; Saturate(value)
  %2159 = fmul fast float %2154, %2138
  %2160 = fmul fast float %2159, %2158
  br label %2161

; <label>:2161                                    ; preds = %2122, %2041, %1876, %1858, %1856
  %2162 = phi float [ %1885, %1876 ], [ %2044, %2041 ], [ %2126, %2122 ], [ 0.000000e+00, %1856 ], [ 0.000000e+00, %1858 ]
  %2163 = phi float [ %1919, %1876 ], [ %2078, %2041 ], [ %2160, %2122 ], [ 0.000000e+00, %1856 ], [ 0.000000e+00, %1858 ]
  %2164 = phi float [ %1906, %1876 ], [ %2065, %2041 ], [ %2147, %2122 ], [ 0.000000e+00, %1856 ], [ 0.000000e+00, %1858 ]
  %2165 = phi float [ %1907, %1876 ], [ %2066, %2041 ], [ %2148, %2122 ], [ 0.000000e+00, %1856 ], [ 0.000000e+00, %1858 ]
  %2166 = phi float [ %1908, %1876 ], [ %2067, %2041 ], [ %2149, %2122 ], [ 0.000000e+00, %1856 ], [ 0.000000e+00, %1858 ]
  %2167 = fmul fast float %1799, %2163
  %2168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2169 = extractvalue %dx.types.CBufRet.f32 %2168, 2
  %2170 = fsub fast float %1806, %2169
  %2171 = fcmp fast olt float %2167, -2.000000e+01
  %2172 = call float @dx.op.unary.f32(i32 21, float %2167)  ; Exp(value)
  %2173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2174 = extractvalue %dx.types.CBufRet.f32 %2173, 2
  %2175 = extractvalue %dx.types.CBufRet.f32 %2173, 3
  %2176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2177 = extractvalue %dx.types.CBufRet.f32 %2176, 2
  %2178 = fmul fast float %2175, %2170
  %2179 = call float @dx.op.unary.f32(i32 7, float %2178)  ; Saturate(value)
  %2180 = fsub fast float 1.000000e+00, %2179
  %2181 = fmul fast float %1791, 5.000000e-01
  %2182 = fadd fast float %2181, 5.000000e-01
  %2183 = call float @dx.op.unary.f32(i32 7, float %2182)  ; Saturate(value)
  %2184 = fsub fast float 1.000000e+00, %2183
  %2185 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2180)  ; FMax(a,b)
  %2186 = fdiv fast float %2184, %2185
  %2187 = fsub fast float %2170, %1748
  %2188 = call float @dx.op.unary.f32(i32 6, float %2187)  ; FAbs(value)
  %2189 = fmul fast float %2188, %2174
  %2190 = call float @dx.op.unary.f32(i32 7, float %2186)  ; Saturate(value)
  %2191 = fsub fast float 1.000000e+00, %2189
  %2192 = fmul fast float %2191, %2190
  %2193 = fadd fast float %2192, %2189
  %2194 = fmul fast float %2177, %2170
  %2195 = call float @dx.op.unary.f32(i32 7, float %2194)  ; Saturate(value)
  %2196 = fsub fast float 1.000000e+00, %2193
  %2197 = fmul fast float %2196, %2195
  %2198 = fadd fast float %2197, %2193
  %2199 = call float @dx.op.unary.f32(i32 7, float %2198)  ; Saturate(value)
  %2200 = fadd fast float %2172, -1.000000e+00
  %2201 = select i1 %2171, float -1.000000e+00, float %2200
  %2202 = fmul fast float %2199, %2201
  %2203 = fadd fast float %2202, 1.000000e+00
  %2204 = fsub fast float -0.000000e+00, %2202
  %2205 = fmul fast float %2164, %2204
  %2206 = fmul fast float %2165, %2204
  %2207 = fmul fast float %2166, %2204
  br label %2208

; <label>:2208                                    ; preds = %2161, %1757
  %2209 = phi float [ %2162, %2161 ], [ 0.000000e+00, %1757 ]
  %2210 = phi float [ %2203, %2161 ], [ 1.000000e+00, %1757 ]
  %2211 = phi float [ %2205, %2161 ], [ 0.000000e+00, %1757 ]
  %2212 = phi float [ %2206, %2161 ], [ 0.000000e+00, %1757 ]
  %2213 = phi float [ %2207, %2161 ], [ 0.000000e+00, %1757 ]
  %2214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2215 = extractvalue %dx.types.CBufRet.f32 %2214, 1
  %2216 = fsub fast float 1.000000e+00, %2210
  %2217 = fmul fast float %2216, %1792
  %2218 = fmul fast float %2217, %2215
  %2219 = fsub fast float %1792, %2218
  br i1 %1785, label %2220, label %2249, !dx.controlflow.hints !123

; <label>:2220                                    ; preds = %2208
  %2221 = fmul fast float %1793, %1782
  %2222 = fadd fast float %2221, %1783
  %2223 = call float @dx.op.unary.f32(i32 7, float %2222)  ; Saturate(value)
  %2224 = fmul fast float %1764, %2219
  %2225 = fsub fast float -0.000000e+00, %2224
  %2226 = fmul fast float %1765, %2219
  %2227 = fsub fast float -0.000000e+00, %2226
  %2228 = call float @dx.op.unary.f32(i32 21, float %2225)  ; Exp(value)
  %2229 = call float @dx.op.unary.f32(i32 21, float %2227)  ; Exp(value)
  %2230 = call float @dx.op.binary.f32(i32 35, float %1772, float %2228)  ; FMax(a,b)
  %2231 = call float @dx.op.binary.f32(i32 35, float %1772, float %2229)  ; FMax(a,b)
  %2232 = fsub fast float %2231, %2230
  %2233 = fmul fast float %2232, %2223
  %2234 = fadd fast float %2233, %2230
  %2235 = call float @dx.op.unary.f32(i32 7, float %2234)  ; Saturate(value)
  %2236 = fsub fast float %1769, %1774
  %2237 = fsub fast float %1770, %1775
  %2238 = fsub fast float %1771, %1776
  %2239 = fmul fast float %2223, %2236
  %2240 = fmul fast float %2223, %2237
  %2241 = fmul fast float %2223, %2238
  %2242 = fadd fast float %2239, %1774
  %2243 = fadd fast float %2240, %1775
  %2244 = fadd fast float %2241, %1776
  %2245 = fsub fast float 1.000000e+00, %2235
  %2246 = fmul fast float %2245, %2242
  %2247 = fmul fast float %2245, %2243
  %2248 = fmul fast float %2245, %2244
  br label %2308

; <label>:2249                                    ; preds = %2208
  %2250 = fmul fast float %2219, %1781
  %2251 = call float @dx.op.unary.f32(i32 7, float %2250)  ; Saturate(value)
  %2252 = fsub fast float 2.000000e+00, %2251
  %2253 = fmul fast float %2251, 9.921875e-01
  %2254 = fmul fast float %2253, %2252
  %2255 = fadd fast float %2254, 3.906250e-03
  %2256 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %26, float %2255, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2257 = extractvalue %dx.types.ResRet.f32 %2256, 0
  %2258 = fsub fast float %2251, %2257
  %2259 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2258)  ; FMax(a,b)
  %2260 = fmul fast float %1767, %1748
  %2261 = call float @dx.op.unary.f32(i32 6, float %2260)  ; FAbs(value)
  %2262 = fcmp fast ogt float %2261, 0x3EB0C6F7A0000000
  br i1 %2262, label %2263, label %2269, !dx.controlflow.hints !124

; <label>:2263                                    ; preds = %2249
  %2264 = fmul fast float %2260, 0xBFF7154760000000
  %2265 = call float @dx.op.unary.f32(i32 21, float %2264)  ; Exp(value)
  %2266 = fsub fast float 1.000000e+00, %2265
  %2267 = fdiv fast float %2266, %2260
  %2268 = fmul fast float %2267, %1777
  br label %2269

; <label>:2269                                    ; preds = %2263, %2249
  %2270 = phi float [ %2268, %2263 ], [ %1777, %2249 ]
  %2271 = fadd fast float %2270, %1779
  %2272 = fmul fast float %2271, %2259
  %2273 = fmul fast float %1764, %2272
  %2274 = fsub fast float -0.000000e+00, %2273
  %2275 = fmul fast float %1765, %2272
  %2276 = fsub fast float -0.000000e+00, %2275
  %2277 = fmul fast float %1766, %2272
  %2278 = fsub fast float -0.000000e+00, %2277
  %2279 = call float @dx.op.unary.f32(i32 21, float %2274)  ; Exp(value)
  %2280 = call float @dx.op.unary.f32(i32 21, float %2276)  ; Exp(value)
  %2281 = call float @dx.op.unary.f32(i32 21, float %2278)  ; Exp(value)
  %2282 = fmul fast float %1793, %1793
  %2283 = fadd fast float %2282, 1.000000e+00
  %2284 = fmul fast float %2283, 0x3FAE8EC8A0000000
  %2285 = fmul fast float %2284, %1774
  %2286 = fmul fast float %2284, %1775
  %2287 = fmul fast float %2284, %1776
  %2288 = fmul fast float %1793, %1772
  %2289 = fsub fast float 1.000000e+00, %2288
  %2290 = fmul fast float %1772, %1772
  %2291 = fsub fast float 1.000000e+00, %2290
  %2292 = fmul fast float %2291, 0x3FB45F3060000000
  %2293 = fmul fast float %2289, %2289
  %2294 = fdiv fast float 1.000000e+00, %2293
  %2295 = fmul fast float %2292, %2294
  %2296 = fmul fast float %2295, %1769
  %2297 = fmul fast float %2295, %1770
  %2298 = fmul fast float %2295, %1771
  %2299 = fadd fast float %2296, %2285
  %2300 = fadd fast float %2297, %2286
  %2301 = fadd fast float %2298, %2287
  %2302 = fsub fast float 1.000000e+00, %2279
  %2303 = fsub fast float 1.000000e+00, %2280
  %2304 = fsub fast float 1.000000e+00, %2281
  %2305 = fmul fast float %2299, %2302
  %2306 = fmul fast float %2300, %2303
  %2307 = fmul fast float %2301, %2304
  br label %2308

; <label>:2308                                    ; preds = %2269, %2220
  %2309 = phi float [ %2246, %2220 ], [ %2305, %2269 ]
  %2310 = phi float [ %2247, %2220 ], [ %2306, %2269 ]
  %2311 = phi float [ %2248, %2220 ], [ %2307, %2269 ]
  %2312 = phi float [ %2235, %2220 ], [ %2279, %2269 ]
  %2313 = phi float [ %2235, %2220 ], [ %2280, %2269 ]
  %2314 = phi float [ %2235, %2220 ], [ %2281, %2269 ]
  br i1 %1801, label %2315, label %2513, !dx.controlflow.hints !125

; <label>:2315                                    ; preds = %2308
  %2316 = extractvalue %dx.types.CBufRet.f32 %2214, 0
  %2317 = fmul fast float %2316, %2216
  %2318 = fsub fast float %2211, %2309
  %2319 = fsub fast float %2212, %2310
  %2320 = fsub fast float %2213, %2311
  %2321 = fmul fast float %2317, %2318
  %2322 = fmul fast float %2317, %2319
  %2323 = fmul fast float %2317, %2320
  %2324 = fadd fast float %2321, %2309
  %2325 = fadd fast float %2322, %2310
  %2326 = fadd fast float %2323, %2311
  %2327 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2312)  ; FMax(a,b)
  %2328 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2313)  ; FMax(a,b)
  %2329 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2314)  ; FMax(a,b)
  %2330 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2210)  ; FMax(a,b)
  %2331 = call float @dx.op.binary.f32(i32 35, float %2209, float %2219)  ; FMax(a,b)
  %2332 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2331)  ; FMax(a,b)
  %2333 = fdiv fast float %2209, %2332
  %2334 = call float @dx.op.unary.f32(i32 7, float %2333)  ; Saturate(value)
  %2335 = fdiv fast float %2219, %2332
  %2336 = call float @dx.op.unary.f32(i32 7, float %2335)  ; Saturate(value)
  %2337 = fcmp fast une float %2330, 1.000000e+00
  br i1 %2337, label %2338, label %2351, !dx.controlflow.hints !126

; <label>:2338                                    ; preds = %2315
  %2339 = call float @dx.op.unary.f32(i32 23, float %2330)  ; Log(value)
  %2340 = fmul fast float %2339, 0x3FE62E4300000000
  %2341 = fmul fast float %2211, %2340
  %2342 = fsub fast float -0.000000e+00, %2341
  %2343 = fmul fast float %2212, %2340
  %2344 = fsub fast float -0.000000e+00, %2343
  %2345 = fmul fast float %2213, %2340
  %2346 = fsub fast float -0.000000e+00, %2345
  %2347 = fsub fast float 1.000000e+00, %2330
  %2348 = fdiv fast float %2342, %2347
  %2349 = fdiv fast float %2344, %2347
  %2350 = fdiv fast float %2346, %2347
  br label %2351

; <label>:2351                                    ; preds = %2338, %2315
  %2352 = phi float [ %2348, %2338 ], [ %2211, %2315 ]
  %2353 = phi float [ %2349, %2338 ], [ %2212, %2315 ]
  %2354 = phi float [ %2350, %2338 ], [ %2213, %2315 ]
  %2355 = phi float [ %2340, %2338 ], [ 0.000000e+00, %2315 ]
  %2356 = fcmp fast une float %2327, 1.000000e+00
  br i1 %2356, label %2357, label %2364, !dx.controlflow.hints !127

; <label>:2357                                    ; preds = %2351
  %2358 = call float @dx.op.unary.f32(i32 23, float %2327)  ; Log(value)
  %2359 = fmul fast float %2358, 0x3FE62E4300000000
  %2360 = fmul fast float %2324, %2359
  %2361 = fsub fast float -0.000000e+00, %2360
  %2362 = fsub fast float 1.000000e+00, %2327
  %2363 = fdiv fast float %2361, %2362
  br label %2364

; <label>:2364                                    ; preds = %2357, %2351
  %2365 = phi float [ %2363, %2357 ], [ %2324, %2351 ]
  %2366 = phi float [ %2359, %2357 ], [ 0.000000e+00, %2351 ]
  %2367 = fcmp fast une float %2328, 1.000000e+00
  br i1 %2367, label %2368, label %2375, !dx.controlflow.hints !127

; <label>:2368                                    ; preds = %2364
  %2369 = call float @dx.op.unary.f32(i32 23, float %2328)  ; Log(value)
  %2370 = fmul fast float %2369, 0x3FE62E4300000000
  %2371 = fmul fast float %2325, %2370
  %2372 = fsub fast float -0.000000e+00, %2371
  %2373 = fsub fast float 1.000000e+00, %2328
  %2374 = fdiv fast float %2372, %2373
  br label %2375

; <label>:2375                                    ; preds = %2368, %2364
  %2376 = phi float [ %2374, %2368 ], [ %2325, %2364 ]
  %2377 = phi float [ %2370, %2368 ], [ 0.000000e+00, %2364 ]
  %2378 = fcmp fast une float %2329, 1.000000e+00
  br i1 %2378, label %2379, label %2386, !dx.controlflow.hints !127

; <label>:2379                                    ; preds = %2375
  %2380 = call float @dx.op.unary.f32(i32 23, float %2329)  ; Log(value)
  %2381 = fmul fast float %2380, 0x3FE62E4300000000
  %2382 = fmul fast float %2326, %2381
  %2383 = fsub fast float -0.000000e+00, %2382
  %2384 = fsub fast float 1.000000e+00, %2329
  %2385 = fdiv fast float %2383, %2384
  br label %2386

; <label>:2386                                    ; preds = %2379, %2375
  %2387 = phi float [ %2385, %2379 ], [ %2326, %2375 ]
  %2388 = phi float [ %2381, %2379 ], [ 0.000000e+00, %2375 ]
  %2389 = fmul fast float %2352, %2336
  %2390 = fmul fast float %2353, %2336
  %2391 = fmul fast float %2354, %2336
  %2392 = fmul fast float %2355, %2336
  %2393 = fmul fast float %2365, %2334
  %2394 = fmul fast float %2376, %2334
  %2395 = fmul fast float %2387, %2334
  %2396 = fmul fast float %2366, %2334
  %2397 = fmul fast float %2377, %2334
  %2398 = fmul fast float %2388, %2334
  %2399 = fadd fast float %2393, %2389
  %2400 = fadd fast float %2394, %2390
  %2401 = fadd fast float %2395, %2391
  %2402 = fadd fast float %2396, %2392
  %2403 = fadd fast float %2397, %2392
  %2404 = fadd fast float %2398, %2392
  %2405 = fcmp fast une float %2402, 0.000000e+00
  br i1 %2405, label %2406, label %2413, !dx.controlflow.hints !128

; <label>:2406                                    ; preds = %2386
  %2407 = fmul fast float %2402, 0x3FF7154760000000
  %2408 = call float @dx.op.unary.f32(i32 21, float %2407)  ; Exp(value)
  %2409 = fsub fast float 1.000000e+00, %2408
  %2410 = fmul fast float %2399, %2409
  %2411 = fsub fast float -0.000000e+00, %2410
  %2412 = fdiv fast float %2411, %2402
  br label %2413

; <label>:2413                                    ; preds = %2406, %2386
  %2414 = phi float [ %2408, %2406 ], [ 1.000000e+00, %2386 ]
  %2415 = phi float [ %2412, %2406 ], [ %2399, %2386 ]
  %2416 = fcmp fast une float %2403, 0.000000e+00
  br i1 %2416, label %2417, label %2424, !dx.controlflow.hints !128

; <label>:2417                                    ; preds = %2413
  %2418 = fmul fast float %2403, 0x3FF7154760000000
  %2419 = call float @dx.op.unary.f32(i32 21, float %2418)  ; Exp(value)
  %2420 = fsub fast float 1.000000e+00, %2419
  %2421 = fmul fast float %2400, %2420
  %2422 = fsub fast float -0.000000e+00, %2421
  %2423 = fdiv fast float %2422, %2403
  br label %2424

; <label>:2424                                    ; preds = %2417, %2413
  %2425 = phi float [ %2419, %2417 ], [ 1.000000e+00, %2413 ]
  %2426 = phi float [ %2423, %2417 ], [ %2400, %2413 ]
  %2427 = fcmp fast une float %2404, 0.000000e+00
  br i1 %2427, label %2428, label %2435, !dx.controlflow.hints !128

; <label>:2428                                    ; preds = %2424
  %2429 = fmul fast float %2404, 0x3FF7154760000000
  %2430 = call float @dx.op.unary.f32(i32 21, float %2429)  ; Exp(value)
  %2431 = fsub fast float 1.000000e+00, %2430
  %2432 = fmul fast float %2401, %2431
  %2433 = fsub fast float -0.000000e+00, %2432
  %2434 = fdiv fast float %2433, %2404
  br label %2435

; <label>:2435                                    ; preds = %2428, %2424
  %2436 = phi float [ %2430, %2428 ], [ 1.000000e+00, %2424 ]
  %2437 = phi float [ %2434, %2428 ], [ %2401, %2424 ]
  %2438 = fcmp fast ogt float %2334, %2336
  br i1 %2438, label %2439, label %2459

; <label>:2439                                    ; preds = %2435
  %2440 = fsub fast float 1.000000e+00, %2336
  %2441 = fmul fast float %2352, %2440
  %2442 = fmul fast float %2353, %2440
  %2443 = fmul fast float %2354, %2440
  %2444 = fmul fast float %2355, %2440
  %2445 = fcmp fast une float %2444, 0.000000e+00
  br i1 %2445, label %2446, label %2497, !dx.controlflow.hints !129

; <label>:2446                                    ; preds = %2439
  %2447 = fmul fast float %2444, 0x3FF7154760000000
  %2448 = call float @dx.op.unary.f32(i32 21, float %2447)  ; Exp(value)
  %2449 = fsub fast float 1.000000e+00, %2448
  %2450 = fmul fast float %2441, %2449
  %2451 = fsub fast float -0.000000e+00, %2450
  %2452 = fmul fast float %2442, %2449
  %2453 = fsub fast float -0.000000e+00, %2452
  %2454 = fmul fast float %2443, %2449
  %2455 = fsub fast float -0.000000e+00, %2454
  %2456 = fdiv fast float %2451, %2444
  %2457 = fdiv fast float %2453, %2444
  %2458 = fdiv fast float %2455, %2444
  br label %2497

; <label>:2459                                    ; preds = %2435
  %2460 = fsub fast float 1.000000e+00, %2334
  %2461 = fmul fast float %2365, %2460
  %2462 = fmul fast float %2376, %2460
  %2463 = fmul fast float %2387, %2460
  %2464 = fmul fast float %2366, %2460
  %2465 = fmul fast float %2377, %2460
  %2466 = fmul fast float %2388, %2460
  %2467 = fcmp fast une float %2464, 0.000000e+00
  br i1 %2467, label %2468, label %2475, !dx.controlflow.hints !128

; <label>:2468                                    ; preds = %2459
  %2469 = fmul fast float %2464, 0x3FF7154760000000
  %2470 = call float @dx.op.unary.f32(i32 21, float %2469)  ; Exp(value)
  %2471 = fsub fast float 1.000000e+00, %2470
  %2472 = fmul fast float %2461, %2471
  %2473 = fsub fast float -0.000000e+00, %2472
  %2474 = fdiv fast float %2473, %2464
  br label %2475

; <label>:2475                                    ; preds = %2468, %2459
  %2476 = phi float [ %2474, %2468 ], [ %2461, %2459 ]
  %2477 = phi float [ %2470, %2468 ], [ 1.000000e+00, %2459 ]
  %2478 = fcmp fast une float %2465, 0.000000e+00
  br i1 %2478, label %2479, label %2486, !dx.controlflow.hints !128

; <label>:2479                                    ; preds = %2475
  %2480 = fmul fast float %2465, 0x3FF7154760000000
  %2481 = call float @dx.op.unary.f32(i32 21, float %2480)  ; Exp(value)
  %2482 = fsub fast float 1.000000e+00, %2481
  %2483 = fmul fast float %2462, %2482
  %2484 = fsub fast float -0.000000e+00, %2483
  %2485 = fdiv fast float %2484, %2465
  br label %2486

; <label>:2486                                    ; preds = %2479, %2475
  %2487 = phi float [ %2485, %2479 ], [ %2462, %2475 ]
  %2488 = phi float [ %2481, %2479 ], [ 1.000000e+00, %2475 ]
  %2489 = fcmp fast une float %2466, 0.000000e+00
  br i1 %2489, label %2490, label %2497, !dx.controlflow.hints !128

; <label>:2490                                    ; preds = %2486
  %2491 = fmul fast float %2466, 0x3FF7154760000000
  %2492 = call float @dx.op.unary.f32(i32 21, float %2491)  ; Exp(value)
  %2493 = fsub fast float 1.000000e+00, %2492
  %2494 = fmul fast float %2463, %2493
  %2495 = fsub fast float -0.000000e+00, %2494
  %2496 = fdiv fast float %2495, %2466
  br label %2497

; <label>:2497                                    ; preds = %2490, %2486, %2446, %2439
  %2498 = phi float [ %2496, %2490 ], [ %2458, %2446 ], [ %2443, %2439 ], [ %2463, %2486 ]
  %2499 = phi float [ %2487, %2490 ], [ %2457, %2446 ], [ %2442, %2439 ], [ %2487, %2486 ]
  %2500 = phi float [ %2476, %2490 ], [ %2456, %2446 ], [ %2441, %2439 ], [ %2476, %2486 ]
  %2501 = phi float [ %2492, %2490 ], [ %2448, %2446 ], [ 1.000000e+00, %2439 ], [ 1.000000e+00, %2486 ]
  %2502 = phi float [ %2488, %2490 ], [ %2448, %2446 ], [ 1.000000e+00, %2439 ], [ %2488, %2486 ]
  %2503 = phi float [ %2477, %2490 ], [ %2448, %2446 ], [ 1.000000e+00, %2439 ], [ %2477, %2486 ]
  %2504 = fmul fast float %2503, %2415
  %2505 = fmul fast float %2502, %2426
  %2506 = fmul fast float %2501, %2437
  %2507 = fadd fast float %2504, %2500
  %2508 = fadd fast float %2505, %2499
  %2509 = fadd fast float %2506, %2498
  %2510 = fmul fast float %2503, %2414
  %2511 = fmul fast float %2502, %2425
  %2512 = fmul fast float %2501, %2436
  br label %2513

; <label>:2513                                    ; preds = %2497, %2308
  %2514 = phi float [ %2512, %2497 ], [ %2314, %2308 ]
  %2515 = phi float [ %2511, %2497 ], [ %2313, %2308 ]
  %2516 = phi float [ %2510, %2497 ], [ %2312, %2308 ]
  %2517 = phi float [ %2509, %2497 ], [ %2311, %2308 ]
  %2518 = phi float [ %2508, %2497 ], [ %2310, %2308 ]
  %2519 = phi float [ %2507, %2497 ], [ %2309, %2308 ]
  %2520 = fmul fast float %2519, %1494
  %2521 = fmul fast float %2518, %1494
  %2522 = fmul fast float %2517, %1494
  %2523 = fmul fast float %2516, %1756
  %2524 = call float @dx.op.dot3.f32(i32 55, float %2516, float %2515, float %2514, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2525 = call float @dx.op.dot3.f32(i32 55, float %2520, float %2521, float %2522, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2526 = select i1 %131, float %2524, float %2516
  %2527 = select i1 %131, float %2524, float %2515
  %2528 = select i1 %131, float 1.000000e+00, float %2514
  %2529 = select i1 %131, float %2525, float %2520
  %2530 = select i1 %131, float 0.000000e+00, float %2521
  %2531 = select i1 %131, float 0.000000e+00, float %2522
  %2532 = fmul fast float %2526, %1750
  %2533 = fmul fast float %2527, %1751
  %2534 = fmul fast float %2528, %1752
  %2535 = fadd fast float %2532, %2529
  %2536 = fadd fast float %2533, %2530
  %2537 = fadd fast float %2531, %2534
  %2538 = fmul fast float %2526, %1753
  %2539 = fmul fast float %2527, %1754
  %2540 = fmul fast float %2528, %1755
  %2541 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2542 = extractvalue %dx.types.CBufRet.i32 %2541, 0
  %2543 = icmp eq i32 %2542, 0
  br i1 %2543, label %2812, label %2544, !dx.controlflow.hints !130

; <label>:2544                                    ; preds = %2513
  %2545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2546 = extractvalue %dx.types.CBufRet.f32 %2545, 2
  %2547 = extractvalue %dx.types.CBufRet.f32 %2545, 3
  %2548 = fmul fast float %2546, %61
  %2549 = fmul fast float %2547, %62
  %2550 = fmul fast float %2548, 2.000000e+00
  %2551 = fmul fast float %2549, 2.000000e+00
  %2552 = fsub fast float 1.000000e+00, %2550
  %2553 = fsub fast float 1.000000e+00, %2551
  %2554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2555 = extractvalue %dx.types.CBufRet.f32 %2554, 0
  %2556 = extractvalue %dx.types.CBufRet.f32 %2554, 1
  %2557 = extractvalue %dx.types.CBufRet.f32 %2554, 2
  %2558 = fmul fast float %2552, %2555
  %2559 = fmul fast float %2552, %2556
  %2560 = fmul fast float %2552, %2557
  %2561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2562 = extractvalue %dx.types.CBufRet.f32 %2561, 0
  %2563 = extractvalue %dx.types.CBufRet.f32 %2561, 1
  %2564 = extractvalue %dx.types.CBufRet.f32 %2561, 2
  %2565 = fmul fast float %2553, %2562
  %2566 = fmul fast float %2553, %2563
  %2567 = fmul fast float %2553, %2564
  %2568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2569 = extractvalue %dx.types.CBufRet.f32 %2568, 0
  %2570 = extractvalue %dx.types.CBufRet.f32 %2568, 1
  %2571 = extractvalue %dx.types.CBufRet.f32 %2568, 2
  %2572 = fadd fast float %2565, %2569
  %2573 = fadd fast float %2572, %2558
  %2574 = fadd fast float %2566, %2570
  %2575 = fadd fast float %2574, %2559
  %2576 = fadd fast float %2567, %2571
  %2577 = fadd fast float %2576, %2560
  %2578 = fmul fast float %2573, %1749
  %2579 = fmul fast float %2575, %1749
  %2580 = fmul fast float %2577, %1749
  %2581 = fmul fast float %2578, %2578
  %2582 = fmul fast float %2579, %2579
  %2583 = fadd fast float %2581, %2582
  %2584 = fmul fast float %2580, %2580
  %2585 = fadd fast float %2583, %2584
  %2586 = call float @dx.op.unary.f32(i32 24, float %2585)  ; Sqrt(value)
  %2587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2588 = extractvalue %dx.types.CBufRet.f32 %2587, 0
  %2589 = fsub fast float %2586, %2588
  %2590 = extractvalue %dx.types.CBufRet.f32 %2587, 2
  %2591 = fmul fast float %2589, %2590
  %2592 = call float @dx.op.unary.f32(i32 7, float %2591)  ; Saturate(value)
  %2593 = fadd fast float %2592, -5.000000e-01
  %2594 = fmul fast float %2593, 2.000000e+00
  %2595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2596 = extractvalue %dx.types.CBufRet.f32 %2595, 2
  %2597 = call float @dx.op.binary.f32(i32 36, float %2596, float %2594)  ; FMin(a,b)
  %2598 = fsub fast float -0.000000e+00, %2596
  %2599 = fcmp fast ogt float %2597, %2598
  br i1 %2599, label %2600, label %2812, !dx.controlflow.hints !131

; <label>:2600                                    ; preds = %2544
  %2601 = fmul fast float %2597, 5.000000e-01
  %2602 = fadd fast float %2601, 5.000000e-01
  %2603 = call float @dx.op.unary.f32(i32 22, float %2602)  ; Frc(value)
  %2604 = call float @dx.op.unary.f32(i32 27, float %2603)  ; Round_ni(value)
  %2605 = call float @dx.op.unary.f32(i32 22, float %2603)  ; Frc(value)
  %2606 = fmul fast float %2605, 2.000000e+00
  %2607 = fadd fast float %2606, -1.000000e+00
  %2608 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %26, float %2548, float %2549, float %2604, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2609 = extractvalue %dx.types.ResRet.f32 %2608, 0
  %2610 = extractvalue %dx.types.ResRet.f32 %2608, 1
  %2611 = extractvalue %dx.types.ResRet.f32 %2608, 2
  %2612 = extractvalue %dx.types.ResRet.f32 %2608, 3
  %2613 = fadd fast float %2609, -5.000000e-01
  %2614 = fadd fast float %2611, -5.000000e-01
  %2615 = fmul fast float %2613, 0xBFD5555560000000
  %2616 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2614, float %2615)  ; FMad(a,b,c)
  %2617 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2610, float 0.000000e+00)  ; FMad(a,b,c)
  %2618 = fadd fast float %2617, %2612
  %2619 = fmul fast float %2613, -7.500000e-01
  %2620 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2614, float %2619)  ; FMad(a,b,c)
  %2621 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2610, float 0.000000e+00)  ; FMad(a,b,c)
  %2622 = fadd fast float %2621, %2612
  %2623 = call float @dx.op.binary.f32(i32 35, float %2616, float -1.000000e+00)  ; FMax(a,b)
  %2624 = call float @dx.op.binary.f32(i32 35, float %2618, float -1.000000e+00)  ; FMax(a,b)
  %2625 = call float @dx.op.binary.f32(i32 35, float %2620, float -1.000000e+00)  ; FMax(a,b)
  %2626 = call float @dx.op.binary.f32(i32 35, float %2622, float -1.000000e+00)  ; FMax(a,b)
  %2627 = call float @dx.op.binary.f32(i32 36, float %2623, float 1.000000e+00)  ; FMin(a,b)
  %2628 = call float @dx.op.binary.f32(i32 36, float %2624, float 1.000000e+00)  ; FMin(a,b)
  %2629 = call float @dx.op.binary.f32(i32 36, float %2625, float 1.000000e+00)  ; FMin(a,b)
  %2630 = call float @dx.op.binary.f32(i32 36, float %2626, float 1.000000e+00)  ; FMin(a,b)
  %2631 = fcmp fast olt float %2627, 0x3FEFFF8020000000
  br i1 %2631, label %2632, label %2747, !dx.controlflow.hints !132

; <label>:2632                                    ; preds = %2600
  %2633 = extractvalue %dx.types.CBufRet.f32 %2595, 3
  %2634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %2635 = extractvalue %dx.types.CBufRet.f32 %2634, 0
  %2636 = extractvalue %dx.types.CBufRet.f32 %2634, 1
  %2637 = extractvalue %dx.types.CBufRet.f32 %2634, 2
  %2638 = extractvalue %dx.types.CBufRet.f32 %2634, 3
  %2639 = fsub fast float %2635, %2627
  %2640 = fsub fast float %2636, %2628
  %2641 = fsub fast float %2637, %2629
  %2642 = fsub fast float %2638, %2630
  %2643 = fmul fast float %2639, %2633
  %2644 = fmul fast float %2640, %2633
  %2645 = fmul fast float %2641, %2633
  %2646 = fmul fast float %2642, %2633
  %2647 = fadd fast float %2643, %2627
  %2648 = fadd fast float %2644, %2628
  %2649 = fsub fast float -0.000000e+00, %2648
  %2650 = fadd fast float %2645, %2629
  %2651 = fadd fast float %2646, %2630
  %2652 = fmul fast float %2647, %2647
  %2653 = fsub fast float %2648, %2652
  %2654 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2653)  ; FMax(a,b)
  %2655 = fdiv fast float 1.000000e+00, %2654
  %2656 = fmul fast float %2648, %2647
  %2657 = fsub fast float %2650, %2656
  %2658 = fsub fast float %2607, %2647
  %2659 = fmul fast float %2607, %2607
  %2660 = fsub fast float %2659, %2648
  %2661 = fmul fast float %2658, %2655
  %2662 = fmul fast float %2661, %2657
  %2663 = fsub fast float %2660, %2662
  %2664 = fmul fast float %2648, %2648
  %2665 = fsub fast float %2651, %2664
  %2666 = fmul fast float %2657, %2657
  %2667 = fmul fast float %2666, %2655
  %2668 = fsub fast float %2665, %2667
  %2669 = fdiv fast float %2663, %2668
  %2670 = fmul fast float %2657, %2669
  %2671 = fsub fast float %2658, %2670
  %2672 = fmul fast float %2671, %2655
  %2673 = fmul fast float %2672, %2647
  %2674 = fsub fast float 1.000000e+00, %2673
  %2675 = fmul fast float %2648, %2669
  %2676 = fsub fast float %2674, %2675
  %2677 = fmul fast float %2672, %2672
  %2678 = fmul fast float %2669, 4.000000e+00
  %2679 = fmul fast float %2678, %2676
  %2680 = fsub fast float %2677, %2679
  %2681 = call float @dx.op.unary.f32(i32 24, float %2680)  ; Sqrt(value)
  %2682 = fcmp fast oge float %2672, 0.000000e+00
  %2683 = fsub fast float -0.000000e+00, %2681
  %2684 = select i1 %2682, float %2683, float %2681
  %2685 = fsub fast float %2684, %2672
  %2686 = fdiv fast float %2685, %2669
  %2687 = fdiv fast float %2676, %2685
  %2688 = fmul fast float %2686, 5.000000e-01
  %2689 = fmul fast float %2687, 2.000000e+00
  %2690 = select i1 %2682, float %2688, float %2689
  %2691 = select i1 %2682, float %2689, float %2688
  %2692 = call float @dx.op.binary.f32(i32 35, float %2690, float %2691)  ; FMax(a,b)
  %2693 = call float @dx.op.binary.f32(i32 36, float %2690, float %2691)  ; FMin(a,b)
  %2694 = fcmp fast ogt float %2607, %2693
  br i1 %2694, label %2695, label %2705

; <label>:2695                                    ; preds = %2632
  %2696 = fsub fast float %2607, %2693
  %2697 = fsub fast float %2692, %2693
  %2698 = fmul fast float %2696, %2697
  %2699 = fmul fast float %2692, %2607
  %2700 = fadd fast float %2692, %2607
  %2701 = fmul fast float %2700, %2647
  %2702 = fadd fast float %2699, %2648
  %2703 = fsub fast float %2702, %2701
  %2704 = fdiv fast float %2703, %2698
  br label %2705

; <label>:2705                                    ; preds = %2695, %2632
  %2706 = phi float [ %2704, %2695 ], [ 0.000000e+00, %2632 ]
  %2707 = fcmp fast ogt float %2607, %2692
  %2708 = fsub fast float %2607, %2692
  br i1 %2707, label %2709, label %2719

; <label>:2709                                    ; preds = %2705
  %2710 = fsub fast float %2692, %2693
  %2711 = fmul fast float %2710, %2708
  %2712 = fmul fast float %2693, %2607
  %2713 = fadd fast float %2693, %2607
  %2714 = fmul fast float %2713, %2647
  %2715 = fsub fast float %2649, %2712
  %2716 = fadd fast float %2715, %2714
  %2717 = fdiv fast float %2716, %2711
  %2718 = fadd fast float %2717, %2706
  br label %2719

; <label>:2719                                    ; preds = %2709, %2705
  %2720 = phi float [ %2718, %2709 ], [ %2706, %2705 ]
  %2721 = fsub fast float %2607, %2693
  %2722 = fmul fast float %2721, %2708
  %2723 = fmul fast float %2693, %2692
  %2724 = fadd fast float %2693, %2692
  %2725 = fmul fast float %2724, %2647
  %2726 = fadd fast float %2723, %2648
  %2727 = fsub fast float %2726, %2725
  %2728 = fdiv fast float %2727, %2722
  %2729 = call float @dx.op.unary.f32(i32 7, float %2720)  ; Saturate(value)
  %2730 = fcmp fast oeq float %1602, 0.000000e+00
  %2731 = extractvalue %dx.types.CBufRet.f32 %2595, 0
  %2732 = fcmp fast oeq float %2731, 0.000000e+00
  %2733 = or i1 %2730, %2732
  %2734 = fmul fast float %2731, 2.000000e+00
  %2735 = fadd fast float %2596, %2597
  %2736 = fdiv fast float %2735, %2734
  %2737 = call float @dx.op.unary.f32(i32 7, float %2736)  ; Saturate(value)
  %2738 = fmul fast float %2737, 2.000000e+00
  %2739 = fsub fast float 3.000000e+00, %2738
  %2740 = fmul fast float %2737, %2737
  %2741 = fmul fast float %2740, %2739
  %2742 = select i1 %2733, float 1.000000e+00, float %2741
  %2743 = fmul fast float %2728, %1602
  %2744 = fadd fast float %2729, %2743
  %2745 = call float @dx.op.unary.f32(i32 7, float %2744)  ; Saturate(value)
  %2746 = fmul fast float %2742, %2745
  br label %2747

; <label>:2747                                    ; preds = %2719, %2600
  %2748 = phi float [ %2746, %2719 ], [ 0.000000e+00, %2600 ]
  %2749 = fsub fast float 1.000000e+00, %2748
  %2750 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %26, float %2548, float %2549, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2751 = extractvalue %dx.types.ResRet.f32 %2750, 0
  %2752 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2753 = extractvalue %dx.types.CBufRet.i32 %2752, 2
  %2754 = icmp eq i32 %2753, 0
  br i1 %2754, label %2760, label %2755

; <label>:2755                                    ; preds = %2747
  %2756 = call float @dx.op.unary.f32(i32 7, float %2748)  ; Saturate(value)
  %2757 = fadd fast float %2751, -1.000000e+00
  %2758 = fmul fast float %2756, %2757
  %2759 = fadd fast float %2758, 1.000000e+00
  br label %2760

; <label>:2760                                    ; preds = %2755, %2747
  %2761 = phi float [ %2759, %2755 ], [ %2749, %2747 ]
  %2762 = call float @dx.op.binary.f32(i32 35, float %2751, float %2761)  ; FMax(a,b)
  %2763 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %2764 = extractvalue %dx.types.CBufRet.i32 %2763, 2
  %2765 = and i32 %2764, 1
  %2766 = icmp eq i32 %2765, 0
  %2767 = fcmp fast une float %2762, 1.000000e+00
  %2768 = and i1 %2767, %2766
  br i1 %2768, label %2769, label %2788

; <label>:2769                                    ; preds = %2760
  %2770 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %26, float %2548, float %2549, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2771 = extractvalue %dx.types.ResRet.f32 %2770, 0
  %2772 = extractvalue %dx.types.ResRet.f32 %2770, 1
  %2773 = extractvalue %dx.types.ResRet.f32 %2770, 2
  %2774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2775 = extractvalue %dx.types.CBufRet.f32 %2774, 1
  %2776 = fmul fast float %2775, %2771
  %2777 = fmul fast float %2775, %2772
  %2778 = fmul fast float %2775, %2773
  %2779 = fcmp fast ogt float %2751, 0x3FEFFF2E40000000
  %2780 = fsub fast float 1.000000e+00, %2762
  %2781 = fsub fast float 1.000000e+00, %2751
  %2782 = fdiv fast float %2780, %2781
  %2783 = call float @dx.op.unary.f32(i32 7, float %2782)  ; Saturate(value)
  %2784 = select i1 %2779, float 0.000000e+00, float %2783
  %2785 = fmul fast float %2776, %2784
  %2786 = fmul fast float %2777, %2784
  %2787 = fmul fast float %2778, %2784
  br label %2788

; <label>:2788                                    ; preds = %2769, %2760
  %2789 = phi float [ 0.000000e+00, %2760 ], [ %2785, %2769 ]
  %2790 = phi float [ 0.000000e+00, %2760 ], [ %2786, %2769 ]
  %2791 = phi float [ 0.000000e+00, %2760 ], [ %2787, %2769 ]
  %2792 = fmul fast float %2789, %1494
  %2793 = fmul fast float %2790, %1494
  %2794 = fmul fast float %2791, %1494
  %2795 = fmul fast float %2762, %2523
  %2796 = call float @dx.op.dot3.f32(i32 55, float %2762, float %2762, float %2762, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2797 = call float @dx.op.dot3.f32(i32 55, float %2792, float %2793, float %2794, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2798 = select i1 %131, float %2796, float %2762
  %2799 = select i1 %131, float 1.000000e+00, float %2762
  %2800 = select i1 %131, float %2797, float %2792
  %2801 = select i1 %131, float 0.000000e+00, float %2793
  %2802 = select i1 %131, float 0.000000e+00, float %2794
  %2803 = fmul fast float %2798, %2535
  %2804 = fmul fast float %2798, %2536
  %2805 = fmul fast float %2799, %2537
  %2806 = fadd fast float %2803, %2800
  %2807 = fadd fast float %2804, %2801
  %2808 = fadd fast float %2802, %2805
  %2809 = fmul fast float %2798, %2538
  %2810 = fmul fast float %2798, %2539
  %2811 = fmul fast float %2799, %2540
  br label %2812

; <label>:2812                                    ; preds = %2788, %2544, %2513, %1745
  %2813 = phi float [ %1750, %1745 ], [ %2535, %2513 ], [ %2806, %2788 ], [ %2535, %2544 ]
  %2814 = phi float [ %1751, %1745 ], [ %2536, %2513 ], [ %2807, %2788 ], [ %2536, %2544 ]
  %2815 = phi float [ %1752, %1745 ], [ %2537, %2513 ], [ %2808, %2788 ], [ %2537, %2544 ]
  %2816 = phi float [ %1753, %1745 ], [ %2538, %2513 ], [ %2809, %2788 ], [ %2538, %2544 ]
  %2817 = phi float [ %1754, %1745 ], [ %2539, %2513 ], [ %2810, %2788 ], [ %2539, %2544 ]
  %2818 = phi float [ %1755, %1745 ], [ %2540, %2513 ], [ %2811, %2788 ], [ %2540, %2544 ]
  %2819 = phi float [ %1756, %1745 ], [ %2523, %2513 ], [ %2795, %2788 ], [ %2523, %2544 ]
  %2820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2821 = extractvalue %dx.types.CBufRet.f32 %2820, 2
  %2822 = extractvalue %dx.types.CBufRet.f32 %2820, 3
  %2823 = fmul fast float %2821, %61
  %2824 = fmul fast float %2822, %62
  %2825 = call float @dx.op.unary.f32(i32 7, float %2823)  ; Saturate(value)
  %2826 = call float @dx.op.unary.f32(i32 7, float %2824)  ; Saturate(value)
  %2827 = select i1 %873, i32 2, i32 0
  %2828 = or i32 %2827, 1
  %2829 = uitofp i32 %2828 to float
  %2830 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %2825, float %2826, float %2829, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2831 = extractvalue %dx.types.ResRet.f32 %2830, 0
  %2832 = extractvalue %dx.types.ResRet.f32 %2830, 1
  %2833 = extractvalue %dx.types.ResRet.f32 %2830, 2
  %2834 = extractvalue %dx.types.ResRet.f32 %2830, 3
  %2835 = add nuw nsw i32 %2827, 2
  %2836 = uitofp i32 %2835 to float
  %2837 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %2825, float %2826, float %2836, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2838 = extractvalue %dx.types.ResRet.f32 %2837, 0
  %2839 = extractvalue %dx.types.ResRet.f32 %2837, 1
  %2840 = extractvalue %dx.types.ResRet.f32 %2837, 2
  %2841 = extractvalue %dx.types.ResRet.f32 %2837, 3
  %2842 = call float @dx.op.binary.f32(i32 35, float %2832, float %2833)  ; FMax(a,b)
  %2843 = call float @dx.op.binary.f32(i32 35, float %2831, float %2842)  ; FMax(a,b)
  %2844 = call float @dx.op.binary.f32(i32 35, float %2843, float %2834)  ; FMax(a,b)
  %2845 = call float @dx.op.binary.f32(i32 36, float %2839, float %2840)  ; FMin(a,b)
  %2846 = call float @dx.op.binary.f32(i32 36, float %2838, float %2845)  ; FMin(a,b)
  %2847 = call float @dx.op.binary.f32(i32 36, float %2846, float %2841)  ; FMin(a,b)
  %2848 = fmul fast float %2844, 2.550000e+02
  %2849 = fadd fast float %2848, 0x3F70101020000000
  %2850 = fptoui float %2849 to i32
  %2851 = fmul fast float %2847, 2.550000e+02
  %2852 = fadd fast float %2851, 0x3F70101020000000
  %2853 = fptoui float %2852 to i32
  %2854 = icmp ult i32 %2850, %2853
  br i1 %2854, label %2855, label %2901

; <label>:2855                                    ; preds = %2812
  %2856 = fcmp fast ogt float %53, 9.843750e-01
  %2857 = fadd fast float %1749, -4.000000e+00
  %2858 = select i1 %2856, float -4.000000e+00, float %2857
  %2859 = call float @dx.op.binary.f32(i32 35, float %2858, float 0.000000e+00)  ; FMax(a,b)
  %2860 = fadd fast float %1038, %2859
  %2861 = fmul fast float %2860, %1039
  %2862 = call float @dx.op.unary.f32(i32 23, float %2861)  ; Log(value)
  %2863 = fmul fast float %1040, %2862
  %2864 = fmul fast float %2863, %1048
  %2865 = call float @dx.op.unary.f32(i32 7, float %2864)  ; Saturate(value)
  %2866 = uitofp i32 %2850 to float
  %2867 = uitofp i32 %2853 to float
  %2868 = fadd fast float %2866, 5.000000e-01
  %2869 = fadd fast float %2867, 5.000000e-01
  %2870 = fmul fast float %1048, %2868
  %2871 = fmul fast float %1048, %2869
  %2872 = fadd fast float %2870, 0x3F0FFB4800000000
  %2873 = fadd fast float %2871, 0xBF0FFB4800000000
  %2874 = call float @dx.op.binary.f32(i32 35, float %2865, float %2872)  ; FMax(a,b)
  %2875 = call float @dx.op.binary.f32(i32 36, float %2874, float %2873)  ; FMin(a,b)
  %2876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %2877 = extractvalue %dx.types.CBufRet.f32 %2876, 1
  %2878 = extractvalue %dx.types.CBufRet.f32 %2876, 2
  %2879 = extractvalue %dx.types.CBufRet.f32 %2876, 0
  %2880 = select i1 %873, float %2879, float 0.000000e+00
  %2881 = fmul fast float %2877, %2875
  %2882 = fadd fast float %2880, %2881
  %2883 = fadd fast float %2880, %2878
  %2884 = fsub fast float %2877, %2878
  %2885 = fadd fast float %2884, %2880
  %2886 = call float @dx.op.binary.f32(i32 35, float %2882, float %2883)  ; FMax(a,b)
  %2887 = call float @dx.op.binary.f32(i32 36, float %2886, float %2885)  ; FMin(a,b)
  %2888 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %2825, float %2826, float %2887, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2889 = extractvalue %dx.types.ResRet.f32 %2888, 0
  %2890 = extractvalue %dx.types.ResRet.f32 %2888, 1
  %2891 = extractvalue %dx.types.ResRet.f32 %2888, 2
  %2892 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %2825, float %2826, float %2887, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2893 = extractvalue %dx.types.ResRet.f32 %2892, 0
  %2894 = extractvalue %dx.types.ResRet.f32 %2892, 1
  %2895 = extractvalue %dx.types.ResRet.f32 %2892, 2
  %2896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2897 = extractvalue %dx.types.CBufRet.f32 %2896, 1
  %2898 = fmul fast float %2897, %2893
  %2899 = fmul fast float %2897, %2894
  %2900 = fmul fast float %2897, %2895
  br label %2901

; <label>:2901                                    ; preds = %2855, %2812
  %2902 = phi float [ %2889, %2855 ], [ 1.000000e+00, %2812 ]
  %2903 = phi float [ %2890, %2855 ], [ 1.000000e+00, %2812 ]
  %2904 = phi float [ %2891, %2855 ], [ 1.000000e+00, %2812 ]
  %2905 = phi float [ %2898, %2855 ], [ 0.000000e+00, %2812 ]
  %2906 = phi float [ %2899, %2855 ], [ 0.000000e+00, %2812 ]
  %2907 = phi float [ %2900, %2855 ], [ 0.000000e+00, %2812 ]
  %2908 = fmul fast float %2905, %1494
  %2909 = fmul fast float %2906, %1494
  %2910 = fmul fast float %2907, %1494
  %2911 = fmul fast float %2902, %2819
  %2912 = call float @dx.op.dot3.f32(i32 55, float %2902, float %2903, float %2904, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2913 = call float @dx.op.dot3.f32(i32 55, float %2908, float %2909, float %2910, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2914 = select i1 %131, float %2912, float %2902
  %2915 = select i1 %131, float %2912, float %2903
  %2916 = select i1 %131, float 1.000000e+00, float %2904
  %2917 = select i1 %131, float %2913, float %2908
  %2918 = select i1 %131, float 0.000000e+00, float %2909
  %2919 = select i1 %131, float 0.000000e+00, float %2910
  %2920 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2921 = extractvalue %dx.types.CBufRet.i32 %2920, 3
  %2922 = and i32 %2921, 3
  %2923 = icmp ne i32 %2922, 0
  %2924 = and i32 %2921, 4
  %2925 = icmp ne i32 %2924, 0
  %2926 = and i1 %2923, %2925
  %2927 = and i1 %131, %2926
  br i1 %2927, label %2928, label %2934

; <label>:2928                                    ; preds = %2901
  %2929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2930 = extractvalue %dx.types.CBufRet.f32 %2929, 1
  %2931 = fadd fast float %2911, -1.000000e+00
  %2932 = fmul fast float %2930, %2931
  %2933 = fadd fast float %2932, 1.000000e+00
  br label %2934

; <label>:2934                                    ; preds = %2928, %2901
  %2935 = phi float [ %2933, %2928 ], [ %2911, %2901 ]
  %2936 = fadd fast float %2816, %2813
  %2937 = fmul fast float %2914, %2936
  %2938 = fadd fast float %2937, %2917
  %2939 = fadd fast float %2817, %2814
  %2940 = fmul fast float %2915, %2939
  %2941 = fadd fast float %2940, %2918
  %2942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2943 = extractvalue %dx.types.CBufRet.f32 %2942, 0
  br i1 %131, label %2944, label %2965

; <label>:2944                                    ; preds = %2934
  %2945 = fadd fast float %2938, %2941
  %2946 = fmul fast float %2943, %2945
  %2947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %2948 = extractvalue %dx.types.CBufRet.f32 %2947, 3
  %2949 = extractvalue %dx.types.CBufRet.f32 %1498, 1
  %2950 = fsub fast float %1501, %2949
  %2951 = extractvalue %dx.types.CBufRet.f32 %1498, 2
  %2952 = fmul fast float %2950, %2951
  %2953 = call float @dx.op.unary.f32(i32 7, float %2952)  ; Saturate(value)
  %2954 = fsub fast float %2953, %2948
  %2955 = fmul fast float %2954, %2935
  %2956 = fadd fast float %2955, %2948
  %2957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2958 = extractvalue %dx.types.CBufRet.f32 %2957, 0
  %2959 = fsub fast float %2956, %2958
  %2960 = fmul fast float %2959, 1.000000e+01
  %2961 = call float @dx.op.unary.f32(i32 7, float %2960)  ; Saturate(value)
  %2962 = fmul fast float %2961, %1494
  %2963 = fsub fast float %1494, %2962
  %2964 = fmul fast float %2963, %2956
  br label %2977

; <label>:2965                                    ; preds = %2934
  %2966 = fadd fast float %2818, %2815
  %2967 = fmul fast float %2916, %2966
  %2968 = fadd fast float %2967, %2919
  %2969 = fmul fast float %2943, %2938
  %2970 = fmul fast float %2943, %2941
  %2971 = fmul fast float %2943, %2968
  %2972 = call float @dx.op.binary.f32(i32 35, float %2970, float %2971)  ; FMax(a,b)
  %2973 = call float @dx.op.binary.f32(i32 35, float %2969, float %2972)  ; FMax(a,b)
  %2974 = call float @dx.op.binary.f32(i32 35, float %2973, float %1494)  ; FMax(a,b)
  %2975 = fcmp fast ugt float %2974, 0x3F10000000000000
  br i1 %2975, label %2977, label %2976

; <label>:2976                                    ; preds = %2965
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %2977

; <label>:2977                                    ; preds = %2976, %2965, %2944
  %2978 = phi float [ %2946, %2944 ], [ %2969, %2976 ], [ %2969, %2965 ]
  %2979 = phi float [ %2964, %2944 ], [ %2970, %2976 ], [ %2970, %2965 ]
  %2980 = phi float [ %2963, %2944 ], [ %2971, %2976 ], [ %2971, %2965 ]
  %2981 = phi float [ %2963, %2944 ], [ %1494, %2976 ], [ %1494, %2965 ]
  %2982 = fadd fast float %537, 0x3FE3C6EF40000000
  %2983 = call float @dx.op.unary.f32(i32 22, float %2982)  ; Frc(value)
  %2984 = call float @dx.op.unary.f32(i32 23, float %2978)  ; Log(value)
  %2985 = fadd fast float %2984, -7.000000e+00
  %2986 = call float @dx.op.unary.f32(i32 21, float %2985)  ; Exp(value)
  %2987 = fmul fast float %2983, 2.000000e+00
  %2988 = fadd fast float %2987, -1.000000e+00
  %2989 = fmul fast float %2986, %2988
  %2990 = fcmp fast ogt float %2978, 0.000000e+00
  %2991 = select i1 %2990, float %2989, float 0.000000e+00
  %2992 = fadd fast float %2991, %2978
  %2993 = fadd fast float %537, 0x3FF3C6EF40000000
  %2994 = call float @dx.op.unary.f32(i32 22, float %2993)  ; Frc(value)
  %2995 = call float @dx.op.unary.f32(i32 23, float %2979)  ; Log(value)
  %2996 = fadd fast float %2995, -7.000000e+00
  %2997 = call float @dx.op.unary.f32(i32 21, float %2996)  ; Exp(value)
  %2998 = fmul fast float %2994, 2.000000e+00
  %2999 = fadd fast float %2998, -1.000000e+00
  %3000 = fmul fast float %2997, %2999
  %3001 = fcmp fast ogt float %2979, 0.000000e+00
  %3002 = select i1 %3001, float %3000, float 0.000000e+00
  %3003 = fadd fast float %3002, %2979
  %3004 = fadd fast float %537, 0x3FFDAA66E0000000
  %3005 = call float @dx.op.unary.f32(i32 22, float %3004)  ; Frc(value)
  %3006 = call float @dx.op.unary.f32(i32 23, float %2980)  ; Log(value)
  %3007 = fadd fast float %3006, -6.000000e+00
  %3008 = call float @dx.op.unary.f32(i32 21, float %3007)  ; Exp(value)
  %3009 = fmul fast float %3005, 2.000000e+00
  %3010 = fadd fast float %3009, -1.000000e+00
  %3011 = fmul fast float %3008, %3010
  %3012 = fcmp fast ogt float %2980, 0.000000e+00
  %3013 = select i1 %3012, float %3011, float 0.000000e+00
  %3014 = fadd fast float %3013, %2980
  %3015 = select i1 %131, float %2979, float %3003
  %3016 = select i1 %131, float %2980, float %3014
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %3017 = call float @dx.op.binary.f32(i32 36, float %2992, float 3.225500e+04)  ; FMin(a,b)
  %3018 = call float @dx.op.binary.f32(i32 36, float %3015, float 3.225500e+04)  ; FMin(a,b)
  %3019 = call float @dx.op.binary.f32(i32 36, float %3016, float 3.225500e+04)  ; FMin(a,b)
  %3020 = call float @dx.op.binary.f32(i32 36, float %2981, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3017)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3018)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3019)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %3020)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %2981)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %2981)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %2981)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %2981)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

