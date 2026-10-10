;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float       
; TEXCOORDS                0   xyzw        2     NONE   float      w
; NORMAL                   0   xyz         3     NONE   float   xyz 
; CARD_DEPTH_OFFSET        0      w        3     NONE   float      w
; TANGENT                  0   xyzw        4     NONE   float       
; CARD_BARY_AND_TILE       1   xyzw        5     NONE   float   xy  
; CARD_TILE2_AND_TILE      3   xyzw        6     NONE   float       
; CARD_TEXCOORDS_AND_RAY     1   xyzw        7     NONE   float   xyzw
; CARD_TEXCOORDS_AND_RAY     2   xyzw        8     NONE   float   xyzw
; CARD_TEXCOORDS_AND_RAY     3   xyzw        9     NONE   float   xyzw
; CARD_DEPTH_AND_SCALE     0   xyzw       10     NONE   float   xyz 
; LGV_POSITION_INDEX       0   xyzw       11     NONE   float      w
; SECONDARY_TEXCOORDS      0   xy         12     NONE   float       
; SCEONDARY_NORMAL         0   xyzw       13     NONE   float       
; PACKED_TRI_DATA          0   xyzw       14     NONE    uint   x  w
; SV_IsFrontFace           0   x          15    FFACE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 4a9d445e7fb6c44c11b4ab23f48c9bfe
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
; TEXCOORDS                0                 linear       
; NORMAL                   0                 linear       
; TANGENT                  0                 linear       
; CARD_DEPTH_OFFSET        0                 linear       
; CARD_BARY_AND_TILE       1        nointerpolation       
; CARD_TILE2_AND_TILE      3        nointerpolation       
; CARD_TEXCOORDS_AND_RAY     1          noperspective       
; CARD_TEXCOORDS_AND_RAY     2          noperspective       
; CARD_TEXCOORDS_AND_RAY     3          noperspective       
; CARD_DEPTH_AND_SCALE     0          noperspective       
; LGV_POSITION_INDEX       0                 linear       
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
; PACKED_TRI_DATA          0        nointerpolation       
; SV_IsFrontFace           0        nointerpolation       
; SV_SampleIndex           0        nointerpolation       
;
; Output signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Target                0                              
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
;   [256 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S0             s0     1
;                                   sampler      NA          NA      S1             s2     1
;                                   sampler      NA          NA      S2             s3     1
;                                   sampler      NA          NA      S3             s4     1
;                                   sampler      NA          NA      S4             s5     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture    byte         r/o      T1     t37,space1     1
;                                   texture    byte         r/o      T2     t31,space1     1
;                                   texture    byte         r/o      T3     t61,space1     1
;                                   texture    byte         r/o      T4     t62,space1     1
;                                   texture    byte         r/o      T5     t63,space1     1
;                                   texture     f32          3d      T6     t21,space2     1
;                                   texture     f32          3d      T7     t22,space2     1
;                                   texture     f32          2d      T8     t33,space2     1
;                                   texture     f32     2darray      T9     t16,space2     1
;                                   texture     f32          3d     T10     t15,space2     1
;                                   texture     f32          2d     T11     t14,space2     1
;                                   texture     f32          2d     T12     t13,space2     1
;                                   texture     u32          2d     T13     t17,space2     1
;                                   texture     f32          3d     T14     t18,space2     1
;                                   texture     f32          2d     T15     t69,space2     1
;                                   texture     f32          2d     T16     t37,space2     1
;                                   texture    byte         r/o     T17     t10,space1     1
;                                   texture    byte         r/o     T18      t1,space1     1
;                                   texture     f32          1d     T19     t32,space2     1
;                                   texture     f32     2darray     T20      t8,space2     1
;                                   texture     f32          2d     T21      t2,space2     1
;                                   texture     f32          2d     T22      t3,space2     1
;                                   texture     f32          2d     T23      t4,space2     1
;                                   textureunorm_f32     2darray     T24     t80,space2     1
;                                   texture    byte         r/o     T25     t67,space1     1
;                                   texture     f32          2d     T26      t7,space2     1
;                                   texture     f32          2d     T27      t6,space2     1
;                                   texture     f32          2d     T28      t5,space2     1
;                                   texture     f32          2d     T29     t38,space2     1
;                                   texture    byte         r/o     T30     t12,space1     1
;                                   texture    byte         r/o     T31     t13,space1     1
;
;
; ViewId state:
;
; Number of inputs: 61, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 11, 12, 13, 14, 15, 20, 21, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 47, 56, 59, 60 }
;   output 1 depends on inputs: { 0, 1, 3, 11, 12, 13, 14, 15, 20, 21, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 47, 56, 59, 60 }
;   output 2 depends on inputs: { 0, 1, 3, 11, 12, 13, 14, 15, 20, 21, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 47, 56, 59, 60 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 2> >" = type { <2 x float>, %"class.Texture2D<vector<float, 2> >::mips_type" }
%"class.Texture2D<vector<float, 2> >::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 3> >" = type { <3 x float>, %"class.Texture3D<vector<float, 3> >::mips_type" }
%"class.Texture3D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%hostlayout.stable = type { [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerComparisonState = type { i32 }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 63, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 62, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 61, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = alloca [4 x i32], align 4
  %40 = call i32 @dx.op.loadInput.i32(i32 4, i32 16, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = icmp ne i32 %40, 0
  %42 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = alloca [3 x float], align 4
  %71 = alloca [3 x float], align 4
  %72 = alloca [3 x float], align 4
  %73 = alloca [3 x float], align 4
  %74 = alloca [3 x float], align 4
  %75 = alloca [3 x float], align 4
  %76 = alloca [3 x float], align 4
  %77 = alloca [3 x float], align 4
  %78 = alloca [12 x float], align 4
  %79 = alloca [12 x float], align 4
  %80 = alloca [3 x float], align 4
  %81 = alloca [3 x float], align 4
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.f32 %82, 0
  %84 = fmul fast float %83, %67
  %85 = fmul fast float %83, %68
  %86 = select i1 %41, float 1.000000e+00, float -1.000000e+00
  %87 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %88 = bitcast float %87 to i32
  %89 = ashr i32 %88, 1
  %90 = sub nsw i32 1597250115, %89
  %91 = bitcast i32 %90 to float
  %92 = fmul fast float %63, %86
  %93 = fmul fast float %92, %91
  %94 = fmul fast float %64, %86
  %95 = fmul fast float %94, %91
  %96 = fmul fast float %65, %86
  %97 = fmul fast float %96, %91
  %98 = lshr i32 %43, 8
  %99 = mul nuw nsw i32 %98, 24
  %100 = add nuw nsw i32 %99, 12
  %101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %100, i32 undef)  ; BufferLoad(srv,index,wot)
  %102 = extractvalue %dx.types.ResRet.i32 %101, 0
  %103 = extractvalue %dx.types.ResRet.i32 %101, 1
  %104 = and i32 %102, 65535
  %105 = uitofp i32 %104 to float
  %106 = lshr i32 %102, 16
  %107 = uitofp i32 %106 to float
  %108 = and i32 %103, 65535
  %109 = uitofp i32 %108 to float
  %110 = lshr i32 %103, 16
  %111 = uitofp i32 %110 to float
  %112 = fmul fast float %105, 0x3F00001000000000
  %113 = fmul fast float %107, 0x3F00001000000000
  %114 = fmul fast float %109, 0x3F00001000000000
  %115 = fmul fast float %111, 0x3F00001000000000
  %116 = fadd fast float %112, -1.000000e+00
  %117 = fadd fast float %113, -1.000000e+00
  %118 = fadd fast float %114, -1.000000e+00
  %119 = fadd fast float %115, -1.000000e+00
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.i32 %121, 3
  %123 = and i32 %122, 3
  %124 = icmp ne i32 %123, 0
  %125 = and i32 %122, 4
  %126 = icmp ne i32 %125, 0
  %127 = and i1 %124, %126
  br i1 %127, label %128, label %139

; <label>:128                                     ; preds = %0
  %129 = extractvalue %dx.types.CBufRet.f32 %120, 3
  %130 = fmul fast float %129, %85
  %131 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %132 = fmul fast float %131, %84
  %133 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %35, float %132, float %130, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %134 = extractvalue %dx.types.ResRet.f32 %133, 0
  %135 = fsub fast float 1.000000e+00, %134
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 0
  %138 = fcmp fast olt float %135, %137
  br label %142

; <label>:139                                     ; preds = %0
  %140 = icmp eq i32 %125, 0
  %141 = and i1 %124, %140
  br label %142

; <label>:142                                     ; preds = %139, %128
  %143 = phi i1 [ %138, %128 ], [ %141, %139 ]
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 2
  %146 = fmul fast float %145, 0x3FE3C6EF40000000
  %147 = frem fast float %84, 2.560000e+02
  %148 = frem fast float %85, 2.560000e+02
  %149 = fptoui float %147 to i32
  %150 = fptoui float %148 to i32
  %151 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %149, i32 %150, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %152 = extractvalue %dx.types.ResRet.f32 %151, 0
  %153 = fadd fast float %152, %146
  %154 = add i32 %42, 60
  %155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %154, i32 undef)  ; BufferLoad(srv,index,wot)
  %156 = extractvalue %dx.types.ResRet.i32 %155, 0
  %157 = add i32 %156, 0
  %158 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %157, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %159 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %158, i32 0)  ; GetDimensions(handle,mipLevel)
  %160 = extractvalue %dx.types.Dimensions %159, 0
  %161 = sitofp i32 %160 to float
  %162 = extractvalue %dx.types.Dimensions %159, 1
  %163 = sitofp i32 %162 to float
  %164 = fmul fast float %107, 0x3F10001000000000
  %165 = fadd fast float %164, -2.000000e+00
  %166 = fmul fast float %165, %117
  %167 = fsub fast float 1.000000e+00, %166
  %168 = fmul fast float %109, 0x3F10001000000000
  %169 = fadd fast float %168, -2.000000e+00
  %170 = fmul fast float %169, %118
  %171 = fsub fast float %167, %170
  %172 = fmul fast float %105, 0x3F10001000000000
  %173 = fadd fast float %172, -2.000000e+00
  %174 = fmul fast float %173, %117
  %175 = fmul fast float %169, %119
  %176 = fsub fast float %174, %175
  %177 = fmul fast float %173, %118
  %178 = fmul fast float %165, %119
  %179 = fadd fast float %177, %178
  %180 = fadd fast float %174, %175
  %181 = fmul fast float %173, %116
  %182 = fsub fast float 1.000000e+00, %181
  %183 = fsub fast float %182, %170
  %184 = fmul fast float %165, %118
  %185 = fmul fast float %173, %119
  %186 = fsub fast float %184, %185
  %187 = fsub fast float %177, %178
  %188 = fadd fast float %184, %185
  %189 = fsub fast float %182, %166
  %190 = add i32 %42, 24
  %191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %190, i32 undef)  ; BufferLoad(srv,index,wot)
  %192 = extractvalue %dx.types.ResRet.i32 %191, 2
  %193 = bitcast i32 %192 to float
  %194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %195 = extractvalue %dx.types.CBufRet.f32 %194, 0
  %196 = extractvalue %dx.types.CBufRet.f32 %194, 1
  %197 = extractvalue %dx.types.CBufRet.f32 %194, 2
  %198 = getelementptr [3 x float], [3 x float]* %80, i32 0, i32 0
  store float %60, float* %198, align 4, !noalias !86
  %199 = getelementptr [3 x float], [3 x float]* %80, i32 0, i32 1
  store float %61, float* %199, align 4, !noalias !86
  %200 = fsub fast float 1.000000e+00, %60
  %201 = fsub fast float %200, %61
  %202 = getelementptr [3 x float], [3 x float]* %80, i32 0, i32 2
  store float %201, float* %202, align 4, !noalias !86
  %203 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 0
  store float %45, float* %203, align 4, !tbaa !97, !noalias !86
  %204 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 1
  store float %46, float* %204, align 4, !tbaa !97, !noalias !86
  %205 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 2
  store float %47, float* %205, align 4, !tbaa !97, !noalias !86
  %206 = getelementptr [3 x float], [3 x float]* %72, i32 0, i32 0
  %207 = getelementptr [3 x float], [3 x float]* %73, i32 0, i32 0
  store float %58, float* %206, align 4
  store float %59, float* %207, align 4
  %208 = getelementptr [3 x float], [3 x float]* %72, i32 0, i32 1
  %209 = getelementptr [3 x float], [3 x float]* %73, i32 0, i32 1
  store float %54, float* %208, align 4
  store float %55, float* %209, align 4
  %210 = getelementptr [3 x float], [3 x float]* %72, i32 0, i32 2
  %211 = getelementptr [3 x float], [3 x float]* %73, i32 0, i32 2
  store float %50, float* %210, align 4
  store float %51, float* %211, align 4
  %212 = getelementptr [3 x float], [3 x float]* %70, i32 0, i32 0
  %213 = getelementptr [3 x float], [3 x float]* %71, i32 0, i32 0
  store float %56, float* %212, align 4
  store float %57, float* %213, align 4
  %214 = getelementptr [3 x float], [3 x float]* %70, i32 0, i32 1
  %215 = getelementptr [3 x float], [3 x float]* %71, i32 0, i32 1
  store float %52, float* %214, align 4
  store float %53, float* %215, align 4
  %216 = getelementptr [3 x float], [3 x float]* %70, i32 0, i32 2
  %217 = getelementptr [3 x float], [3 x float]* %71, i32 0, i32 2
  store float %48, float* %216, align 4
  store float %49, float* %217, align 4
  br label %218

; <label>:218                                     ; preds = %323, %142
  %219 = phi float [ %325, %323 ], [ %60, %142 ]
  %220 = phi float [ %314, %323 ], [ undef, %142 ]
  %221 = phi float [ %315, %323 ], [ undef, %142 ]
  %222 = phi float [ %316, %323 ], [ undef, %142 ]
  %223 = phi float [ %317, %323 ], [ 1.000000e+00, %142 ]
  %224 = phi float [ %318, %323 ], [ 0.000000e+00, %142 ]
  %225 = phi i32 [ %321, %323 ], [ 0, %142 ]
  %226 = phi float [ %319, %323 ], [ 0.000000e+00, %142 ]
  %227 = phi float [ %320, %323 ], [ 0.000000e+00, %142 ]
  %228 = fcmp fast ogt float %219, 0x3EB0C6F7A0000000
  br i1 %228, label %229, label %313

; <label>:229                                     ; preds = %218
  %230 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 %225
  %231 = load float, float* %230, align 4, !tbaa !97, !noalias !86
  %232 = fdiv fast float 1.000000e+00, %231
  %233 = getelementptr [3 x float], [3 x float]* %70, i32 0, i32 %225
  %234 = getelementptr [3 x float], [3 x float]* %71, i32 0, i32 %225
  %235 = load float, float* %233, align 4
  %236 = load float, float* %234, align 4
  %237 = fmul fast float %235, %232
  %238 = fmul fast float %236, %232
  %239 = getelementptr [3 x float], [3 x float]* %72, i32 0, i32 %225
  %240 = getelementptr [3 x float], [3 x float]* %73, i32 0, i32 %225
  %241 = load float, float* %239, align 4
  %242 = load float, float* %240, align 4
  %243 = fmul fast float %241, %232
  %244 = fmul fast float %242, %232
  %245 = fmul fast float %237, %161
  %246 = call float @dx.op.unary.f32(i32 83, float %245)  ; DerivCoarseX(value)
  %247 = call float @dx.op.unary.f32(i32 84, float %245)  ; DerivCoarseY(value)
  %248 = fmul fast float %238, %163
  %249 = call float @dx.op.unary.f32(i32 83, float %248)  ; DerivCoarseX(value)
  %250 = call float @dx.op.unary.f32(i32 84, float %248)  ; DerivCoarseY(value)
  %251 = fmul fast float %249, %249
  %252 = fmul fast float %250, %250
  %253 = fadd fast float %252, %251
  %254 = fmul fast float %249, %246
  %255 = fmul fast float %250, %247
  %256 = fadd fast float %255, %254
  %257 = fmul fast float %246, %246
  %258 = fmul fast float %247, %247
  %259 = fadd fast float %258, %257
  %260 = fmul fast float %253, %259
  %261 = fmul fast float %256, %256
  %262 = fsub fast float %260, %261
  %263 = bitcast float %262 to i32
  %264 = fadd fast float %253, %259
  %265 = bitcast float %264 to i32
  %266 = sub i32 8388608, %265
  %267 = add i32 %266, %263
  %268 = ashr i32 %267, 24
  %269 = sitofp i32 %268 to float
  %270 = add i32 %42, 72
  %271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = add i32 %272, 0
  %274 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %273, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %275 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %274, %dx.types.Handle %35, float %237, float %238, float undef, float undef, i32 0, i32 0, i32 undef, float %269)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %276 = extractvalue %dx.types.ResRet.f32 %275, 0
  %277 = fmul fast float %276, 2.000000e+00
  %278 = fadd fast float %277, -1.000000e+00
  %279 = fmul fast float %278, %193
  %280 = fmul fast float %243, %279
  %281 = fmul fast float %244, %279
  %282 = fadd fast float %280, %237
  %283 = fadd fast float %281, %238
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %154, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = add i32 %285, 0
  %287 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %286, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %288 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %287, %dx.types.Handle %35, float %282, float %283, float undef, float undef, i32 0, i32 0, i32 undef, float %269)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %289 = extractvalue %dx.types.ResRet.f32 %288, 0
  %290 = extractvalue %dx.types.ResRet.f32 %288, 1
  %291 = extractvalue %dx.types.ResRet.f32 %288, 2
  %292 = extractvalue %dx.types.ResRet.f32 %288, 3
  %293 = fmul fast float %289, 2.000000e+00
  %294 = fmul fast float %290, 2.000000e+00
  %295 = fmul fast float %291, 2.000000e+00
  %296 = fadd fast float %293, -1.000000e+00
  %297 = fadd fast float %294, -1.000000e+00
  %298 = fadd fast float %295, -1.000000e+00
  %299 = fmul fast float %296, %171
  %300 = call float @dx.op.tertiary.f32(i32 46, float %297, float %176, float %299)  ; FMad(a,b,c)
  %301 = call float @dx.op.tertiary.f32(i32 46, float %298, float %179, float %300)  ; FMad(a,b,c)
  %302 = fmul fast float %296, %180
  %303 = call float @dx.op.tertiary.f32(i32 46, float %297, float %183, float %302)  ; FMad(a,b,c)
  %304 = call float @dx.op.tertiary.f32(i32 46, float %298, float %186, float %303)  ; FMad(a,b,c)
  %305 = fmul fast float %296, %187
  %306 = call float @dx.op.tertiary.f32(i32 46, float %297, float %188, float %305)  ; FMad(a,b,c)
  %307 = call float @dx.op.tertiary.f32(i32 46, float %298, float %189, float %306)  ; FMad(a,b,c)
  %308 = fmul fast float %219, %292
  %309 = call float @dx.op.dot3.f32(i32 55, float %195, float %196, float %197, float %301, float %304, float %307)  ; Dot3(ax,ay,az,bx,by,bz)
  %310 = fmul fast float %308, %309
  %311 = fcmp fast olt float %310, %223
  br i1 %311, label %312, label %313

; <label>:312                                     ; preds = %229
  br label %313

; <label>:313                                     ; preds = %312, %229, %218
  %314 = phi float [ %220, %218 ], [ %301, %312 ], [ %220, %229 ]
  %315 = phi float [ %221, %218 ], [ %304, %312 ], [ %221, %229 ]
  %316 = phi float [ %222, %218 ], [ %307, %312 ], [ %222, %229 ]
  %317 = phi float [ %223, %218 ], [ %310, %312 ], [ %223, %229 ]
  %318 = phi float [ %224, %218 ], [ %269, %312 ], [ %269, %229 ]
  %319 = phi float [ %226, %218 ], [ %282, %312 ], [ %226, %229 ]
  %320 = phi float [ %227, %218 ], [ %283, %312 ], [ %227, %229 ]
  %321 = add nuw nsw i32 %225, 1
  %322 = icmp eq i32 %321, 3
  br i1 %322, label %326, label %323

; <label>:323                                     ; preds = %313
  %324 = getelementptr [3 x float], [3 x float]* %80, i32 0, i32 %321
  %325 = load float, float* %324, align 4, !tbaa !97, !noalias !86
  br label %218

; <label>:326                                     ; preds = %313
  %327 = call float @dx.op.unary.f32(i32 22, float %153)  ; Frc(value)
  br i1 %41, label %337, label %328

; <label>:328                                     ; preds = %326
  %329 = call float @dx.op.dot3.f32(i32 55, float %93, float %95, float %97, float %314, float %315, float %316)  ; Dot3(ax,ay,az,bx,by,bz)
  %330 = fmul fast float %329, 2.000000e+00
  %331 = fmul fast float %330, %93
  %332 = fmul fast float %330, %95
  %333 = fmul fast float %330, %97
  %334 = fsub fast float %314, %331
  %335 = fsub fast float %315, %332
  %336 = fsub fast float %316, %333
  br label %337

; <label>:337                                     ; preds = %328, %326
  %338 = phi float [ %334, %328 ], [ %314, %326 ]
  %339 = phi float [ %335, %328 ], [ %315, %326 ]
  %340 = phi float [ %336, %328 ], [ %316, %326 ]
  %341 = add i32 %42, 56
  %342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.i32 %342, 0
  %344 = add i32 %343, 0
  %345 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %344, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %346 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %345, %dx.types.Handle %35, float %319, float %320, float undef, float undef, i32 0, i32 0, i32 undef, float %318)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %347 = extractvalue %dx.types.ResRet.f32 %346, 0
  %348 = extractvalue %dx.types.ResRet.f32 %346, 1
  %349 = extractvalue %dx.types.ResRet.f32 %346, 2
  %350 = extractvalue %dx.types.ResRet.f32 %346, 3
  %351 = add i32 %42, 64
  %352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %351, i32 undef)  ; BufferLoad(srv,index,wot)
  %353 = extractvalue %dx.types.ResRet.i32 %352, 0
  %354 = add i32 %353, 0
  %355 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %354, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %356 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %355, %dx.types.Handle %35, float %319, float %320, float undef, float undef, i32 0, i32 0, i32 undef, float %318)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %357 = extractvalue %dx.types.ResRet.f32 %356, 0
  %358 = extractvalue %dx.types.ResRet.f32 %356, 1
  %359 = extractvalue %dx.types.ResRet.f32 %356, 2
  %360 = extractvalue %dx.types.ResRet.f32 %356, 3
  %361 = add i32 %42, 68
  %362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %363 = extractvalue %dx.types.ResRet.i32 %362, 0
  %364 = add i32 %363, 0
  %365 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %364, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %366 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %365, %dx.types.Handle %35, float %319, float %320, float undef, float undef, i32 0, i32 0, i32 undef, float %318)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %367 = extractvalue %dx.types.ResRet.f32 %366, 0
  %368 = add i32 %42, 72
  %369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %370 = extractvalue %dx.types.ResRet.i32 %369, 0
  %371 = add i32 %370, 0
  %372 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %371, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %373 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %372, %dx.types.Handle %35, float %319, float %320, float undef, float undef, i32 0, i32 0, i32 undef, float %318)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %374 = extractvalue %dx.types.ResRet.f32 %373, 0
  %375 = fadd fast float %62, 1.000000e+00
  %376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %190, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.i32 %376, 2
  %378 = bitcast i32 %377 to float
  %379 = fmul fast float %374, 2.000000e+00
  %380 = fsub fast float %375, %379
  %381 = fmul fast float %378, %380
  %382 = fadd fast float %381, %69
  %383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %384 = extractvalue %dx.types.CBufRet.f32 %383, 2
  %385 = extractvalue %dx.types.CBufRet.f32 %383, 3
  %386 = fmul fast float %84, 2.000000e+00
  %387 = fmul fast float %386, %384
  %388 = fmul fast float %85, 2.000000e+00
  %389 = fmul fast float %388, %385
  %390 = fsub fast float 1.000000e+00, %387
  %391 = fsub fast float 1.000000e+00, %389
  %392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %393 = extractvalue %dx.types.CBufRet.f32 %392, 0
  %394 = extractvalue %dx.types.CBufRet.f32 %392, 1
  %395 = extractvalue %dx.types.CBufRet.f32 %392, 2
  %396 = fmul fast float %390, %393
  %397 = fmul fast float %390, %394
  %398 = fmul fast float %390, %395
  %399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %400 = extractvalue %dx.types.CBufRet.f32 %399, 0
  %401 = extractvalue %dx.types.CBufRet.f32 %399, 1
  %402 = extractvalue %dx.types.CBufRet.f32 %399, 2
  %403 = fmul fast float %391, %400
  %404 = fmul fast float %391, %401
  %405 = fmul fast float %391, %402
  %406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %407 = extractvalue %dx.types.CBufRet.f32 %406, 0
  %408 = extractvalue %dx.types.CBufRet.f32 %406, 1
  %409 = extractvalue %dx.types.CBufRet.f32 %406, 2
  %410 = fadd fast float %403, %407
  %411 = fadd fast float %410, %396
  %412 = fadd fast float %404, %408
  %413 = fadd fast float %412, %397
  %414 = fadd fast float %405, %409
  %415 = fadd fast float %414, %398
  %416 = fmul fast float %411, %382
  %417 = fmul fast float %413, %382
  %418 = fmul fast float %415, %382
  %419 = call float @dx.op.unary.f32(i32 26, float %44)  ; Round_ne(value)
  %420 = fptoui float %419 to i32
  %421 = call float @dx.op.unary.f32(i32 26, float %66)  ; Round_ne(value)
  %422 = fptoui float %421 to i32
  %423 = shl i32 %422, 3
  %424 = or i32 %423, 4
  %425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.i32 %425, 0
  %427 = and i32 %426, 16777215
  %428 = add i32 %427, %420
  %429 = shl i32 %428, 6
  %430 = getelementptr [3 x float], [3 x float]* %74, i32 0, i32 0
  %431 = getelementptr [3 x float], [3 x float]* %75, i32 0, i32 0
  %432 = getelementptr [3 x float], [3 x float]* %76, i32 0, i32 0
  %433 = getelementptr [3 x float], [3 x float]* %77, i32 0, i32 0
  %434 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.f32 %434, 0
  %436 = extractvalue %dx.types.ResRet.f32 %434, 1
  %437 = extractvalue %dx.types.ResRet.f32 %434, 2
  %438 = extractvalue %dx.types.ResRet.f32 %434, 3
  store float %435, float* %430, align 4
  store float %436, float* %431, align 4
  store float %437, float* %432, align 4
  store float %438, float* %433, align 4
  %439 = getelementptr [3 x float], [3 x float]* %74, i32 0, i32 1
  %440 = getelementptr [3 x float], [3 x float]* %75, i32 0, i32 1
  %441 = getelementptr [3 x float], [3 x float]* %76, i32 0, i32 1
  %442 = getelementptr [3 x float], [3 x float]* %77, i32 0, i32 1
  %443 = or i32 %429, 16
  %444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.f32 %444, 0
  %446 = extractvalue %dx.types.ResRet.f32 %444, 1
  %447 = extractvalue %dx.types.ResRet.f32 %444, 2
  %448 = extractvalue %dx.types.ResRet.f32 %444, 3
  store float %445, float* %439, align 4
  store float %446, float* %440, align 4
  store float %447, float* %441, align 4
  store float %448, float* %442, align 4
  %449 = getelementptr [3 x float], [3 x float]* %74, i32 0, i32 2
  %450 = getelementptr [3 x float], [3 x float]* %75, i32 0, i32 2
  %451 = getelementptr [3 x float], [3 x float]* %76, i32 0, i32 2
  %452 = getelementptr [3 x float], [3 x float]* %77, i32 0, i32 2
  %453 = or i32 %429, 32
  %454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.f32 %454, 0
  %456 = extractvalue %dx.types.ResRet.f32 %454, 1
  %457 = extractvalue %dx.types.ResRet.f32 %454, 2
  %458 = extractvalue %dx.types.ResRet.f32 %454, 3
  store float %455, float* %449, align 4
  store float %456, float* %450, align 4
  store float %457, float* %451, align 4
  store float %458, float* %452, align 4
  %459 = or i32 %429, 48
  %460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.i32 %460, 0
  %462 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %463 = extractvalue %dx.types.CBufRet.i32 %462, 1
  %464 = icmp eq i32 %463, 0
  %465 = and i32 %461, 4
  %466 = icmp ne i32 %465, 0
  %467 = and i1 %464, %466
  br i1 %467, label %468, label %507

; <label>:468                                     ; preds = %337
  %469 = and i32 %461, 3
  %470 = getelementptr [3 x float], [3 x float]* %74, i32 0, i32 %469
  %471 = getelementptr [3 x float], [3 x float]* %75, i32 0, i32 %469
  %472 = getelementptr [3 x float], [3 x float]* %76, i32 0, i32 %469
  %473 = getelementptr [3 x float], [3 x float]* %77, i32 0, i32 %469
  %474 = load float, float* %470, align 4
  %475 = load float, float* %471, align 4
  %476 = load float, float* %472, align 4
  %477 = load float, float* %473, align 4
  %478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %479 = extractvalue %dx.types.CBufRet.f32 %478, 0
  %480 = extractvalue %dx.types.CBufRet.f32 %478, 1
  %481 = extractvalue %dx.types.CBufRet.f32 %478, 2
  %482 = call float @dx.op.dot3.f32(i32 55, float %474, float %475, float %476, float %479, float %480, float %481)  ; Dot3(ax,ay,az,bx,by,bz)
  %483 = fadd fast float %482, %477
  %484 = fcmp fast ogt float %483, 1.000000e+00
  br i1 %484, label %485, label %490

; <label>:485                                     ; preds = %468
  %486 = fadd fast float %483, -1.000000e+00
  %487 = fmul fast float %486, 4.000000e+00
  %488 = call float @dx.op.unary.f32(i32 7, float %487)  ; Saturate(value)
  %489 = fmul fast float %488, 4.000000e+00
  br label %496

; <label>:490                                     ; preds = %468
  %491 = fcmp fast olt float %483, 0.000000e+00
  br i1 %491, label %492, label %496

; <label>:492                                     ; preds = %490
  %493 = fmul fast float %483, -4.000000e+00
  %494 = call float @dx.op.unary.f32(i32 7, float %493)  ; Saturate(value)
  %495 = fmul fast float %494, -4.000000e+00
  br label %496

; <label>:496                                     ; preds = %492, %490, %485
  %497 = phi float [ %489, %485 ], [ %495, %492 ], [ 0.000000e+00, %490 ]
  %498 = icmp eq i32 %469, 0
  %499 = select i1 %498, float %497, float 0.000000e+00
  %500 = fadd fast float %438, %499
  store float %500, float* %433, align 4, !noalias !101
  %501 = icmp eq i32 %469, 1
  %502 = select i1 %501, float %497, float 0.000000e+00
  %503 = fadd fast float %448, %502
  store float %503, float* %442, align 4, !noalias !101
  %504 = icmp eq i32 %469, 2
  %505 = select i1 %504, float %497, float 0.000000e+00
  %506 = fadd fast float %458, %505
  store float %506, float* %452, align 4, !noalias !101
  br label %507

; <label>:507                                     ; preds = %496, %337
  %508 = phi float [ %458, %337 ], [ %506, %496 ]
  %509 = phi float [ %448, %337 ], [ %503, %496 ]
  %510 = phi float [ %438, %337 ], [ %500, %496 ]
  %511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %512 = extractvalue %dx.types.CBufRet.f32 %511, 0
  %513 = extractvalue %dx.types.CBufRet.f32 %511, 1
  %514 = extractvalue %dx.types.CBufRet.f32 %511, 2
  %515 = fadd fast float %512, %416
  %516 = fadd fast float %513, %417
  %517 = fadd fast float %514, %418
  %518 = call float @dx.op.dot4.f32(i32 56, float %435, float %436, float %437, float %510, float %515, float %516, float %517, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %519 = call float @dx.op.dot4.f32(i32 56, float %445, float %446, float %447, float %509, float %515, float %516, float %517, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %520 = call float @dx.op.dot4.f32(i32 56, float %455, float %456, float %457, float %508, float %515, float %516, float %517, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %521 = fadd fast float %367, 0xBFB99999A0000000
  %522 = call float @dx.op.unary.f32(i32 7, float %521)  ; Saturate(value)
  %523 = fmul fast float %522, 0x3FF1C71C80000000
  %524 = call float @dx.op.binary.f32(i32 36, float %367, float 0x3FB99999A0000000)  ; FMin(a,b)
  %525 = fsub fast float 1.000000e+00, %523
  %526 = call float @dx.op.unary.f32(i32 7, float %525)  ; Saturate(value)
  %527 = fmul fast float %526, %347
  %528 = fmul fast float %526, %348
  %529 = fmul fast float %526, %349
  %530 = call float @dx.op.unary.f32(i32 7, float %527)  ; Saturate(value)
  %531 = call float @dx.op.unary.f32(i32 7, float %528)  ; Saturate(value)
  %532 = call float @dx.op.unary.f32(i32 7, float %529)  ; Saturate(value)
  %533 = fmul fast float %523, %347
  %534 = fmul fast float %523, %348
  %535 = fmul fast float %523, %349
  %536 = fadd fast float %533, %524
  %537 = fadd fast float %534, %524
  %538 = fadd fast float %535, %524
  %539 = call float @dx.op.unary.f32(i32 7, float %536)  ; Saturate(value)
  %540 = call float @dx.op.unary.f32(i32 7, float %537)  ; Saturate(value)
  %541 = call float @dx.op.unary.f32(i32 7, float %538)  ; Saturate(value)
  %542 = add i32 %42, 80
  %543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.i32 %543, 0
  %545 = add i32 %544, 0
  %546 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %545, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %547 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %546, %dx.types.Handle %35, float %319, float %320, float undef, float undef, i32 0, i32 0, i32 undef, float %318)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %548 = extractvalue %dx.types.ResRet.f32 %547, 0
  %549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %550 = extractvalue %dx.types.CBufRet.f32 %549, 0
  %551 = fsub fast float -0.000000e+00, %418
  %552 = call float @dx.op.dot3.f32(i32 55, float %416, float %417, float %418, float %416, float %417, float %418)  ; Dot3(ax,ay,az,bx,by,bz)
  %553 = call float @dx.op.unary.f32(i32 25, float %552)  ; Rsqrt(value)
  %554 = fmul fast float %553, %416
  %555 = fmul fast float %553, %417
  %556 = fmul fast float %553, %418
  %557 = fsub fast float -0.000000e+00, %554
  %558 = fsub fast float -0.000000e+00, %555
  %559 = fsub fast float -0.000000e+00, %556
  %560 = select i1 %143, float 0.000000e+00, float %541
  %561 = call float @dx.op.dot3.f32(i32 55, float %338, float %339, float %340, float %557, float %558, float %559)  ; Dot3(ax,ay,az,bx,by,bz)
  %562 = call float @dx.op.unary.f32(i32 7, float %561)  ; Saturate(value)
  %563 = call float @dx.op.dot3.f32(i32 55, float %554, float %555, float %556, float %338, float %339, float %340)  ; Dot3(ax,ay,az,bx,by,bz)
  %564 = fmul fast float %563, 2.000000e+00
  %565 = fmul fast float %564, %338
  %566 = fmul fast float %564, %339
  %567 = fmul fast float %564, %340
  %568 = fsub fast float %554, %565
  %569 = fsub fast float %555, %566
  %570 = fsub fast float %556, %567
  %571 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %360)  ; FMin(a,b)
  %572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %573 = extractvalue %dx.types.CBufRet.f32 %572, 0
  %574 = extractvalue %dx.types.CBufRet.f32 %572, 1
  %575 = fadd fast float %573, %416
  %576 = fadd fast float %574, %417
  %577 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %578 = extractvalue %dx.types.CBufRet.i32 %577, 0
  %579 = icmp eq i32 %578, 1
  br i1 %579, label %580, label %615

; <label>:580                                     ; preds = %507
  %581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %582 = extractvalue %dx.types.CBufRet.f32 %581, 0
  %583 = extractvalue %dx.types.CBufRet.f32 %581, 1
  %584 = fsub fast float %575, %582
  %585 = fsub fast float %576, %583
  %586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %587 = extractvalue %dx.types.CBufRet.f32 %586, 0
  %588 = extractvalue %dx.types.CBufRet.f32 %586, 1
  %589 = fmul fast float %584, %587
  %590 = fmul fast float %585, %588
  %591 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %35, float %589, float %590, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %592 = extractvalue %dx.types.ResRet.f32 %591, 0
  %593 = fcmp fast ogt float %592, 0.000000e+00
  %594 = extractvalue %dx.types.CBufRet.i32 %577, 3
  %595 = icmp ne i32 %594, 0
  %596 = and i1 %593, %595
  br i1 %596, label %597, label %615, !dx.controlflow.hints !106

; <label>:597                                     ; preds = %580
  %598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %599 = extractvalue %dx.types.CBufRet.f32 %598, 0
  %600 = extractvalue %dx.types.CBufRet.f32 %598, 1
  %601 = fsub fast float %575, %599
  %602 = fsub fast float %576, %600
  %603 = fmul fast float %601, %601
  %604 = fmul fast float %602, %602
  %605 = fadd fast float %603, %604
  %606 = uitofp i32 %594 to float
  %607 = fmul fast float %606, %606
  %608 = fcmp fast ogt float %605, %607
  br i1 %608, label %615, label %609

; <label>:609                                     ; preds = %597
  %610 = call float @dx.op.unary.f32(i32 24, float %605)  ; Sqrt(value)
  %611 = fsub fast float %606, %610
  %612 = fmul fast float %611, 0x3F75555560000000
  %613 = call float @dx.op.unary.f32(i32 7, float %612)  ; Saturate(value)
  %614 = call float @dx.op.binary.f32(i32 36, float %613, float %592)  ; FMin(a,b)
  br label %615

; <label>:615                                     ; preds = %609, %597, %580, %507
  %616 = phi float [ 1.000000e+00, %507 ], [ %614, %609 ], [ %592, %580 ], [ 0.000000e+00, %597 ]
  %617 = fcmp fast ogt float %616, 0.000000e+00
  br i1 %617, label %618, label %993, !dx.controlflow.hints !107

; <label>:618                                     ; preds = %615
  %619 = fadd fast float %44, 5.000000e-01
  %620 = fptoui float %619 to i32
  %621 = fadd fast float %66, 5.000000e-01
  %622 = fptoui float %621 to i32
  %623 = shl i32 %622, 3
  %624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %623, i32 undef)  ; BufferLoad(srv,index,wot)
  %625 = extractvalue %dx.types.ResRet.i32 %624, 0
  %626 = or i32 %623, 4
  %627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %626, i32 undef)  ; BufferLoad(srv,index,wot)
  %628 = extractvalue %dx.types.ResRet.i32 %627, 0
  %629 = and i32 %628, 16777215
  %630 = add i32 %629, %620
  %631 = shl i32 %630, 5
  %632 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %631, i32 undef)  ; BufferLoad(srv,index,wot)
  %633 = extractvalue %dx.types.ResRet.f32 %632, 0
  %634 = extractvalue %dx.types.ResRet.f32 %632, 1
  %635 = extractvalue %dx.types.ResRet.f32 %632, 2
  %636 = or i32 %631, 16
  %637 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %636, i32 undef)  ; BufferLoad(srv,index,wot)
  %638 = extractvalue %dx.types.ResRet.f32 %637, 0
  %639 = extractvalue %dx.types.ResRet.f32 %637, 1
  %640 = extractvalue %dx.types.ResRet.f32 %637, 2
  %641 = lshr i32 %628, 24
  %642 = and i32 %641, 3
  %643 = add nuw nsw i32 %642, 3
  %644 = shl i32 1, %643
  %645 = lshr i32 %628, 29
  %646 = lshr i32 %628, 23
  %647 = and i32 %646, 56
  %648 = shl nuw nsw i32 %645, 3
  %649 = lshr i32 %625, 16
  %650 = and i32 %625, 65535
  %651 = uitofp i32 %644 to float
  %652 = fmul fast float %651, 1.562500e-02
  %653 = uitofp i32 %649 to float
  %654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %655 = extractvalue %dx.types.CBufRet.f32 %654, 3
  %656 = fmul fast float %655, %653
  %657 = uitofp i32 %647 to float
  %658 = fmul fast float %657, 1.562500e-02
  %659 = uitofp i32 %648 to float
  %660 = fmul fast float %659, 1.562500e-02
  %661 = uitofp i32 %650 to float
  %662 = fmul fast float %655, %661
  %663 = call float @dx.op.unary.f32(i32 7, float %518)  ; Saturate(value)
  %664 = call float @dx.op.unary.f32(i32 7, float %519)  ; Saturate(value)
  %665 = call float @dx.op.unary.f32(i32 7, float %520)  ; Saturate(value)
  %666 = fmul fast float %663, %633
  %667 = fmul fast float %664, %634
  %668 = fmul fast float %665, %635
  %669 = fadd fast float %666, %638
  %670 = fmul fast float %652, %669
  %671 = fadd fast float %670, %658
  %672 = fadd fast float %667, %639
  %673 = fmul fast float %652, %672
  %674 = fadd fast float %673, %660
  %675 = fadd fast float %668, %640
  %676 = fmul fast float %656, %675
  %677 = fadd fast float %676, %662
  %678 = fmul fast float %671, 5.000000e-01
  %679 = fmul fast float %674, 0x3FD5555560000000
  %680 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %33, float %671, float %674, float %677, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %681 = extractvalue %dx.types.ResRet.f32 %680, 0
  %682 = extractvalue %dx.types.ResRet.f32 %680, 1
  %683 = extractvalue %dx.types.ResRet.f32 %680, 2
  %684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %685 = extractvalue %dx.types.CBufRet.f32 %684, 3
  %686 = fmul fast float %685, %681
  %687 = fmul fast float %685, %682
  %688 = fmul fast float %685, %683
  %689 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %33, float %678, float %679, float %677, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %690 = extractvalue %dx.types.ResRet.f32 %689, 0
  %691 = extractvalue %dx.types.ResRet.f32 %689, 1
  %692 = extractvalue %dx.types.ResRet.f32 %689, 2
  %693 = extractvalue %dx.types.ResRet.f32 %689, 3
  %694 = fadd fast float %678, 5.000000e-01
  %695 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %33, float %694, float %679, float %677, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %696 = extractvalue %dx.types.ResRet.f32 %695, 0
  %697 = extractvalue %dx.types.ResRet.f32 %695, 1
  %698 = extractvalue %dx.types.ResRet.f32 %695, 2
  %699 = extractvalue %dx.types.ResRet.f32 %695, 3
  %700 = fadd fast float %679, 0x3FD5555560000000
  %701 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %33, float %678, float %700, float %677, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %702 = extractvalue %dx.types.ResRet.f32 %701, 0
  %703 = extractvalue %dx.types.ResRet.f32 %701, 1
  %704 = extractvalue %dx.types.ResRet.f32 %701, 2
  %705 = extractvalue %dx.types.ResRet.f32 %701, 3
  %706 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %33, float %694, float %700, float %677, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %707 = extractvalue %dx.types.ResRet.f32 %706, 0
  %708 = extractvalue %dx.types.ResRet.f32 %706, 1
  %709 = extractvalue %dx.types.ResRet.f32 %706, 2
  %710 = extractvalue %dx.types.ResRet.f32 %706, 3
  %711 = fadd fast float %679, 0x3FE5555560000000
  %712 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %33, float %678, float %711, float %677, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %713 = extractvalue %dx.types.ResRet.f32 %712, 0
  %714 = extractvalue %dx.types.ResRet.f32 %712, 1
  %715 = extractvalue %dx.types.ResRet.f32 %712, 2
  %716 = extractvalue %dx.types.ResRet.f32 %712, 3
  %717 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %33, float %694, float %711, float %677, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %718 = extractvalue %dx.types.ResRet.f32 %717, 0
  %719 = extractvalue %dx.types.ResRet.f32 %717, 1
  %720 = extractvalue %dx.types.ResRet.f32 %717, 2
  %721 = extractvalue %dx.types.ResRet.f32 %717, 3
  %722 = fmul fast float %690, 0x400BB67AE0000000
  %723 = fadd fast float %722, 0xBFFBB67AE0000000
  %724 = fmul fast float %723, %686
  %725 = fmul fast float %691, 0x400BB67AE0000000
  %726 = fadd fast float %725, 0xBFFBB67AE0000000
  %727 = fmul fast float %726, %687
  %728 = fmul fast float %692, 0x400BB67AE0000000
  %729 = fadd fast float %728, 0xBFFBB67AE0000000
  %730 = fmul fast float %729, %688
  %731 = fmul fast float %693, 0x4011E377A0000000
  %732 = fadd fast float %731, 0xC001E377A0000000
  %733 = fmul fast float %732, %686
  %734 = fmul fast float %696, 0x4011E377A0000000
  %735 = fadd fast float %734, 0xC001E377A0000000
  %736 = fmul fast float %735, %687
  %737 = fmul fast float %697, 0x4011E377A0000000
  %738 = fadd fast float %737, 0xC001E377A0000000
  %739 = fmul fast float %738, %688
  %740 = fmul fast float %698, 0x400BB67AE0000000
  %741 = fadd fast float %740, 0xBFFBB67AE0000000
  %742 = fmul fast float %741, %686
  %743 = fmul fast float %699, 0x400BB67AE0000000
  %744 = fadd fast float %743, 0xBFFBB67AE0000000
  %745 = fmul fast float %744, %687
  %746 = fmul fast float %702, 0x400BB67AE0000000
  %747 = fadd fast float %746, 0xBFFBB67AE0000000
  %748 = fmul fast float %747, %688
  %749 = fmul fast float %703, 0x400BB67AE0000000
  %750 = fadd fast float %749, 0xBFFBB67AE0000000
  %751 = fmul fast float %750, %686
  %752 = fmul fast float %704, 0x400BB67AE0000000
  %753 = fadd fast float %752, 0xBFFBB67AE0000000
  %754 = fmul fast float %753, %687
  %755 = fmul fast float %705, 0x400BB67AE0000000
  %756 = fadd fast float %755, 0xBFFBB67AE0000000
  %757 = fmul fast float %756, %688
  %758 = fmul fast float %707, 0x400EFBDEC0000000
  %759 = fadd fast float %758, 0xBFFEFBDEC0000000
  %760 = fmul fast float %759, %686
  %761 = fmul fast float %708, 0x400EFBDEC0000000
  %762 = fadd fast float %761, 0xBFFEFBDEC0000000
  %763 = fmul fast float %762, %687
  %764 = fmul fast float %709, 0x400EFBDEC0000000
  %765 = fadd fast float %764, 0xBFFEFBDEC0000000
  %766 = fmul fast float %765, %688
  %767 = fmul fast float %710, 0x400EFBDEC0000000
  %768 = fadd fast float %767, 0xBFFEFBDEC0000000
  %769 = fmul fast float %768, %686
  %770 = fmul fast float %713, 0x400EFBDEC0000000
  %771 = fadd fast float %770, 0xBFFEFBDEC0000000
  %772 = fmul fast float %771, %687
  %773 = fmul fast float %714, 0x400EFBDEC0000000
  %774 = fadd fast float %773, 0xBFFEFBDEC0000000
  %775 = fmul fast float %774, %688
  %776 = fmul fast float %715, 0x400EFBDEC0000000
  %777 = fadd fast float %776, 0xBFFEFBDEC0000000
  %778 = fmul fast float %777, %686
  %779 = fmul fast float %716, 0x400EFBDEC0000000
  %780 = fadd fast float %779, 0xBFFEFBDEC0000000
  %781 = fmul fast float %780, %687
  %782 = fmul fast float %718, 0x400EFBDEC0000000
  %783 = fadd fast float %782, 0xBFFEFBDEC0000000
  %784 = fmul fast float %783, %688
  %785 = fmul fast float %719, 0x400EFBDEC0000000
  %786 = fadd fast float %785, 0xBFFEFBDEC0000000
  %787 = fmul fast float %786, %686
  %788 = fmul fast float %720, 0x400EFBDEC0000000
  %789 = fadd fast float %788, 0xBFFEFBDEC0000000
  %790 = fmul fast float %789, %687
  %791 = fmul fast float %721, 0x400EFBDEC0000000
  %792 = fadd fast float %791, 0xBFFEFBDEC0000000
  %793 = fmul fast float %792, %688
  %794 = fmul fast float %686, 0x3FD20DD760000000
  %795 = fmul fast float %340, 0x3FD4D8D7C0000000
  %796 = fmul fast float %795, %724
  %797 = fmul fast float %340, %340
  %798 = fmul fast float %797, 0x3FEE471020000000
  %799 = fadd fast float %798, 0xBFD42F6020000000
  %800 = fmul fast float %733, %799
  %801 = fmul fast float %338, 0x3FD4D8D7C0000000
  %802 = fmul fast float %801, %751
  %803 = fmul fast float %339, 0x3FD4D8D7C0000000
  %804 = fmul fast float %803, %742
  %805 = fmul fast float %340, 0xBFF17B1420000000
  %806 = fmul fast float %760, %338
  %807 = fmul fast float %769, %339
  %808 = fmul fast float %338, %338
  %809 = fmul fast float %339, %339
  %810 = fsub fast float %808, %809
  %811 = fmul fast float %810, 0x3FC17B1420000000
  %812 = fmul fast float %811, %778
  %813 = fmul fast float %338, 0x3FD17B1420000000
  %814 = fmul fast float %813, %339
  %815 = fmul fast float %814, %787
  %816 = fadd fast float %807, %806
  %817 = fmul fast float %805, %816
  %818 = fadd fast float %817, %800
  %819 = fmul fast float %818, 2.500000e-01
  %820 = fadd fast float %796, %794
  %821 = fsub fast float %820, %804
  %822 = fsub fast float %821, %802
  %823 = fadd fast float %822, %819
  %824 = fadd fast float %823, %812
  %825 = fadd fast float %824, %815
  %826 = fmul fast float %687, 0x3FD20DD760000000
  %827 = fmul fast float %795, %727
  %828 = fmul fast float %736, %799
  %829 = fmul fast float %801, %754
  %830 = fmul fast float %803, %745
  %831 = fmul fast float %763, %338
  %832 = fmul fast float %772, %339
  %833 = fmul fast float %811, %781
  %834 = fmul fast float %814, %790
  %835 = fadd fast float %832, %831
  %836 = fmul fast float %805, %835
  %837 = fadd fast float %836, %828
  %838 = fmul fast float %837, 2.500000e-01
  %839 = fadd fast float %827, %826
  %840 = fsub fast float %839, %830
  %841 = fsub fast float %840, %829
  %842 = fadd fast float %841, %833
  %843 = fadd fast float %842, %838
  %844 = fadd fast float %843, %834
  %845 = fmul fast float %688, 0x3FD20DD760000000
  %846 = fmul fast float %795, %730
  %847 = fmul fast float %739, %799
  %848 = fmul fast float %801, %757
  %849 = fmul fast float %803, %748
  %850 = fmul fast float %766, %338
  %851 = fmul fast float %775, %339
  %852 = fmul fast float %811, %784
  %853 = fmul fast float %814, %793
  %854 = fadd fast float %851, %850
  %855 = fmul fast float %805, %854
  %856 = fadd fast float %855, %847
  %857 = fmul fast float %856, 2.500000e-01
  %858 = fadd fast float %846, %845
  %859 = fsub fast float %858, %848
  %860 = fsub fast float %859, %849
  %861 = fadd fast float %860, %857
  %862 = fadd fast float %861, %852
  %863 = fadd fast float %862, %853
  %864 = call float @dx.op.binary.f32(i32 35, float %825, float 0.000000e+00)  ; FMax(a,b)
  %865 = call float @dx.op.binary.f32(i32 35, float %844, float 0.000000e+00)  ; FMax(a,b)
  %866 = call float @dx.op.binary.f32(i32 35, float %863, float 0.000000e+00)  ; FMax(a,b)
  %867 = fsub fast float -0.000000e+00, %338
  %868 = fsub fast float -0.000000e+00, %339
  %869 = fmul fast float %340, 0xBFD4D8D7C0000000
  %870 = fmul fast float %869, %724
  %871 = fmul fast float %751, 0x3FD4D8D7C0000000
  %872 = fmul fast float %340, 0x3FF17B1420000000
  %873 = fmul fast float %760, %867
  %874 = fmul fast float %769, %868
  %875 = fmul fast float %339, 0x3FD17B1420000000
  %876 = fmul fast float %875, %787
  %877 = fadd fast float %874, %873
  %878 = fmul fast float %872, %877
  %879 = fadd fast float %878, %800
  %880 = fmul fast float %879, 2.500000e-01
  %881 = fadd fast float %876, %871
  %882 = fmul fast float %881, %338
  %883 = fadd fast float %870, %794
  %884 = fadd fast float %883, %804
  %885 = fadd fast float %884, %812
  %886 = fadd fast float %885, %880
  %887 = fadd fast float %886, %882
  %888 = fmul fast float %869, %727
  %889 = fmul fast float %754, 0x3FD4D8D7C0000000
  %890 = fmul fast float %763, %867
  %891 = fmul fast float %772, %868
  %892 = fmul fast float %875, %790
  %893 = fadd fast float %891, %890
  %894 = fmul fast float %872, %893
  %895 = fadd fast float %894, %828
  %896 = fmul fast float %895, 2.500000e-01
  %897 = fadd fast float %892, %889
  %898 = fmul fast float %897, %338
  %899 = fadd fast float %888, %826
  %900 = fadd fast float %899, %830
  %901 = fadd fast float %900, %833
  %902 = fadd fast float %901, %896
  %903 = fadd fast float %902, %898
  %904 = fmul fast float %869, %730
  %905 = fmul fast float %748, 0x3FD4D8D7C0000000
  %906 = fmul fast float %766, %867
  %907 = fmul fast float %775, %868
  %908 = fmul fast float %813, %793
  %909 = fadd fast float %907, %906
  %910 = fmul fast float %872, %909
  %911 = fadd fast float %910, %847
  %912 = fmul fast float %911, 2.500000e-01
  %913 = fadd fast float %908, %905
  %914 = fmul fast float %913, %339
  %915 = fadd fast float %904, %845
  %916 = fadd fast float %915, %848
  %917 = fadd fast float %916, %852
  %918 = fadd fast float %917, %912
  %919 = fadd fast float %918, %914
  %920 = call float @dx.op.binary.f32(i32 35, float %887, float 0.000000e+00)  ; FMax(a,b)
  %921 = call float @dx.op.binary.f32(i32 35, float %903, float 0.000000e+00)  ; FMax(a,b)
  %922 = call float @dx.op.binary.f32(i32 35, float %919, float 0.000000e+00)  ; FMax(a,b)
  %923 = fmul fast float %570, 0x3FD4D8D7C0000000
  %924 = fmul fast float %923, %724
  %925 = fmul fast float %570, %570
  %926 = fmul fast float %925, 0x3FEE471020000000
  %927 = fadd fast float %926, 0xBFD42F6020000000
  %928 = fmul fast float %733, %927
  %929 = fmul fast float %568, 0x3FD4D8D7C0000000
  %930 = fmul fast float %929, %751
  %931 = fmul fast float %569, 0x3FD4D8D7C0000000
  %932 = fmul fast float %931, %742
  %933 = fmul fast float %570, 0xBFF17B1420000000
  %934 = fmul fast float %760, %568
  %935 = fmul fast float %769, %569
  %936 = fmul fast float %568, %568
  %937 = fmul fast float %569, %569
  %938 = fsub fast float %936, %937
  %939 = fmul fast float %938, 0x3FC17B1420000000
  %940 = fmul fast float %939, %778
  %941 = fmul fast float %569, 0x3FD17B1420000000
  %942 = fmul fast float %941, %568
  %943 = fmul fast float %942, %787
  %944 = fadd fast float %935, %934
  %945 = fmul fast float %933, %944
  %946 = fadd fast float %945, %928
  %947 = fmul fast float %946, 2.500000e-01
  %948 = fadd fast float %924, %794
  %949 = fsub fast float %948, %932
  %950 = fsub fast float %949, %930
  %951 = fadd fast float %950, %947
  %952 = fadd fast float %951, %940
  %953 = fadd fast float %952, %943
  %954 = fmul fast float %923, %727
  %955 = fmul fast float %736, %927
  %956 = fmul fast float %929, %754
  %957 = fmul fast float %931, %745
  %958 = fmul fast float %763, %568
  %959 = fmul fast float %772, %569
  %960 = fmul fast float %939, %781
  %961 = fmul fast float %942, %790
  %962 = fadd fast float %959, %958
  %963 = fmul fast float %933, %962
  %964 = fadd fast float %963, %955
  %965 = fmul fast float %964, 2.500000e-01
  %966 = fadd fast float %954, %826
  %967 = fsub fast float %966, %957
  %968 = fsub fast float %967, %956
  %969 = fadd fast float %968, %960
  %970 = fadd fast float %969, %965
  %971 = fadd fast float %970, %961
  %972 = fmul fast float %923, %730
  %973 = fmul fast float %739, %927
  %974 = fmul fast float %929, %757
  %975 = fmul fast float %931, %748
  %976 = fmul fast float %766, %568
  %977 = fmul fast float %775, %569
  %978 = fmul fast float %939, %784
  %979 = fmul fast float %942, %793
  %980 = fadd fast float %977, %976
  %981 = fmul fast float %933, %980
  %982 = fadd fast float %981, %973
  %983 = fmul fast float %982, 2.500000e-01
  %984 = fadd fast float %972, %845
  %985 = fsub fast float %984, %974
  %986 = fsub fast float %985, %975
  %987 = fadd fast float %986, %983
  %988 = fadd fast float %987, %978
  %989 = fadd fast float %988, %979
  %990 = call float @dx.op.binary.f32(i32 35, float %953, float 0.000000e+00)  ; FMax(a,b)
  %991 = call float @dx.op.binary.f32(i32 35, float %971, float 0.000000e+00)  ; FMax(a,b)
  %992 = call float @dx.op.binary.f32(i32 35, float %989, float 0.000000e+00)  ; FMax(a,b)
  br label %993

; <label>:993                                     ; preds = %618, %615
  %994 = phi float [ %990, %618 ], [ 0.000000e+00, %615 ]
  %995 = phi float [ %991, %618 ], [ 0.000000e+00, %615 ]
  %996 = phi float [ %992, %618 ], [ 0.000000e+00, %615 ]
  %997 = phi float [ %920, %618 ], [ 0.000000e+00, %615 ]
  %998 = phi float [ %921, %618 ], [ 0.000000e+00, %615 ]
  %999 = phi float [ %922, %618 ], [ 0.000000e+00, %615 ]
  %1000 = phi float [ %864, %618 ], [ 0.000000e+00, %615 ]
  %1001 = phi float [ %865, %618 ], [ 0.000000e+00, %615 ]
  %1002 = phi float [ %866, %618 ], [ 0.000000e+00, %615 ]
  %1003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1004 = extractvalue %dx.types.CBufRet.f32 %1003, 0
  %1005 = fcmp fast ogt float %1004, 0.000000e+00
  %1006 = and i1 %617, %1005
  br i1 %1006, label %1007, label %1214, !dx.controlflow.hints !108

; <label>:1007                                    ; preds = %993
  %1008 = extractvalue %dx.types.CBufRet.f32 %572, 2
  %1009 = fadd fast float %1008, %418
  %1010 = fmul fast float %338, 3.200000e+01
  %1011 = fmul fast float %339, 3.200000e+01
  %1012 = fadd fast float %575, %1010
  %1013 = fadd fast float %576, %1011
  %1014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1015 = extractvalue %dx.types.CBufRet.f32 %1014, 0
  %1016 = extractvalue %dx.types.CBufRet.f32 %1014, 1
  %1017 = fsub fast float %1012, %1015
  %1018 = fsub fast float %1013, %1016
  %1019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1020 = extractvalue %dx.types.CBufRet.f32 %1019, 0
  %1021 = extractvalue %dx.types.CBufRet.f32 %1019, 1
  %1022 = fmul fast float %1017, %1020
  %1023 = fmul fast float %1018, %1021
  %1024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1025 = extractvalue %dx.types.CBufRet.f32 %1024, 0
  %1026 = extractvalue %dx.types.CBufRet.f32 %1024, 1
  %1027 = fsub fast float %575, %1025
  %1028 = fsub fast float %576, %1026
  %1029 = fmul fast float %1027, %1027
  %1030 = fmul fast float %1028, %1028
  %1031 = fadd fast float %1029, %1030
  %1032 = call float @dx.op.unary.f32(i32 24, float %1031)  ; Sqrt(value)
  %1033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1034 = extractvalue %dx.types.CBufRet.f32 %1033, 0
  %1035 = extractvalue %dx.types.CBufRet.f32 %1033, 1
  %1036 = fsub fast float %1032, %1034
  %1037 = fdiv fast float %1036, %1035
  %1038 = call float @dx.op.unary.f32(i32 7, float %1037)  ; Saturate(value)
  %1039 = fmul fast float %1038, 2.000000e+00
  %1040 = fsub fast float 3.000000e+00, %1039
  %1041 = fmul fast float %1038, %1038
  %1042 = fmul fast float %1041, %1040
  %1043 = fcmp fast oge float %1022, 0.000000e+00
  %1044 = fcmp fast ole float %1022, 1.000000e+00
  %1045 = and i1 %1044, %1043
  %1046 = fcmp fast oge float %1023, 0.000000e+00
  %1047 = and i1 %1046, %1045
  %1048 = fcmp fast ole float %1023, 1.000000e+00
  %1049 = and i1 %1048, %1047
  %1050 = fcmp fast ogt float %1042, 0.000000e+00
  %1051 = and i1 %1050, %1049
  br i1 %1051, label %1052, label %1175, !dx.controlflow.hints !109

; <label>:1052                                    ; preds = %1007
  %1053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1054 = extractvalue %dx.types.CBufRet.f32 %1053, 2
  %1055 = extractvalue %dx.types.CBufRet.f32 %1053, 3
  %1056 = fmul fast float %1054, %1022
  %1057 = fmul fast float %1055, %1023
  %1058 = call float @dx.op.unary.f32(i32 27, float %1056)  ; Round_ni(value)
  %1059 = call float @dx.op.unary.f32(i32 27, float %1057)  ; Round_ni(value)
  %1060 = fptosi float %1058 to i32
  %1061 = fptosi float %1059 to i32
  %1062 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %19, i32 0, i32 %1060, i32 %1061, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1063 = extractvalue %dx.types.ResRet.i32 %1062, 0
  %1064 = lshr i32 %1063, 16
  %1065 = icmp eq i32 %1064, 65535
  br i1 %1065, label %1175, label %1066

; <label>:1066                                    ; preds = %1052
  %1067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1068 = extractvalue %dx.types.CBufRet.f32 %1067, 0
  %1069 = fmul fast float %1068, %1022
  %1070 = extractvalue %dx.types.CBufRet.f32 %1067, 1
  %1071 = fadd fast float %1069, %1070
  %1072 = extractvalue %dx.types.CBufRet.f32 %1067, 2
  %1073 = fmul fast float %1072, %1023
  %1074 = extractvalue %dx.types.CBufRet.f32 %1067, 3
  %1075 = fadd fast float %1073, %1074
  %1076 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %35, float %1071, float %1075, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1077 = extractvalue %dx.types.ResRet.f32 %1076, 0
  %1078 = extractvalue %dx.types.ResRet.f32 %1076, 1
  %1079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1080 = extractvalue %dx.types.CBufRet.f32 %1079, 1
  %1081 = extractvalue %dx.types.CBufRet.f32 %1079, 0
  %1082 = fsub fast float %1080, %1081
  %1083 = fmul fast float %1082, %1077
  %1084 = fadd fast float %1083, %1081
  %1085 = extractvalue %dx.types.CBufRet.f32 %1079, 3
  %1086 = extractvalue %dx.types.CBufRet.f32 %1079, 2
  %1087 = fsub fast float %1085, %1086
  %1088 = fmul fast float %1087, %1078
  %1089 = fadd fast float %1088, %1086
  %1090 = fsub fast float %1009, %1084
  %1091 = fsub fast float %1089, %1084
  %1092 = fdiv fast float %1090, %1091
  %1093 = call float @dx.op.unary.f32(i32 7, float %1092)  ; Saturate(value)
  %1094 = extractvalue %dx.types.CBufRet.f32 %1003, 1
  %1095 = extractvalue %dx.types.CBufRet.f32 %1053, 0
  %1096 = extractvalue %dx.types.CBufRet.f32 %1053, 1
  %1097 = fmul fast float %1095, %1022
  %1098 = fmul fast float %1096, %1023
  %1099 = fmul fast float %1097, 1.250000e-01
  %1100 = fmul fast float %1098, 1.250000e-01
  %1101 = call float @dx.op.unary.f32(i32 27, float %1099)  ; Round_ni(value)
  %1102 = call float @dx.op.unary.f32(i32 27, float %1100)  ; Round_ni(value)
  %1103 = fmul fast float %1101, 8.000000e+00
  %1104 = fmul fast float %1102, 8.000000e+00
  %1105 = fsub fast float %1097, %1103
  %1106 = fsub fast float %1098, %1104
  %1107 = fadd fast float %1105, 5.000000e-01
  %1108 = fadd fast float %1106, 5.000000e-01
  %1109 = and i32 %1064, 255
  %1110 = lshr i32 %1063, 24
  %1111 = mul nuw nsw i32 %1109, 9
  %1112 = uitofp i32 %1111 to float
  %1113 = mul nuw nsw i32 %1110, 9
  %1114 = uitofp i32 %1113 to float
  %1115 = fadd fast float %1107, %1112
  %1116 = fadd fast float %1108, %1114
  %1117 = fdiv fast float %1115, %1004
  %1118 = fdiv fast float %1116, %1094
  %1119 = fmul fast float %1093, 4.375000e-01
  %1120 = fadd fast float %1119, 3.125000e-02
  %1121 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %35, float %1117, float %1118, float %1120, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1122 = extractvalue %dx.types.ResRet.f32 %1121, 0
  %1123 = extractvalue %dx.types.ResRet.f32 %1121, 1
  %1124 = extractvalue %dx.types.ResRet.f32 %1121, 2
  %1125 = fadd fast float %1119, 5.312500e-01
  %1126 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %35, float %1117, float %1118, float %1125, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1127 = extractvalue %dx.types.ResRet.f32 %1126, 0
  %1128 = extractvalue %dx.types.ResRet.f32 %1126, 1
  %1129 = extractvalue %dx.types.ResRet.f32 %1126, 2
  %1130 = fmul fast float %1127, 2.000000e+00
  %1131 = fmul fast float %1128, 2.000000e+00
  %1132 = fmul fast float %1129, 2.000000e+00
  %1133 = fadd fast float %1130, -1.000000e+00
  %1134 = fadd fast float %1131, -1.000000e+00
  %1135 = fadd fast float %1132, -1.000000e+00
  %1136 = fmul fast float %1133, %1133
  %1137 = fmul fast float %1134, %1134
  %1138 = fadd fast float %1136, %1137
  %1139 = fmul fast float %1135, %1135
  %1140 = fadd fast float %1138, %1139
  %1141 = call float @dx.op.unary.f32(i32 24, float %1140)  ; Sqrt(value)
  %1142 = fcmp fast ogt float %1141, 0.000000e+00
  br i1 %1142, label %1143, label %1147

; <label>:1143                                    ; preds = %1066
  %1144 = fdiv fast float %1133, %1141
  %1145 = fdiv fast float %1134, %1141
  %1146 = fdiv fast float %1135, %1141
  br label %1147

; <label>:1147                                    ; preds = %1143, %1066
  %1148 = phi float [ %1144, %1143 ], [ 0.000000e+00, %1066 ]
  %1149 = phi float [ %1145, %1143 ], [ 0.000000e+00, %1066 ]
  %1150 = phi float [ %1146, %1143 ], [ 0.000000e+00, %1066 ]
  %1151 = call float @dx.op.dot3.f32(i32 55, float %1148, float %1149, float %1150, float %338, float %339, float %340)  ; Dot3(ax,ay,az,bx,by,bz)
  %1152 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1151)  ; FMax(a,b)
  %1153 = fmul fast float %1152, 0x400C5BF8A0000000
  %1154 = fmul fast float %1122, %1042
  %1155 = fmul fast float %1154, %1153
  %1156 = fmul fast float %1123, %1042
  %1157 = fmul fast float %1156, %1153
  %1158 = fmul fast float %1124, %1042
  %1159 = fmul fast float %1158, %1153
  %1160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1161 = extractvalue %dx.types.CBufRet.f32 %1160, 3
  %1162 = fmul fast float %1155, %1161
  %1163 = fmul fast float %1157, %1161
  %1164 = fmul fast float %1159, %1161
  %1165 = fcmp fast ogt float %1009, %1089
  br i1 %1165, label %1166, label %1175

; <label>:1166                                    ; preds = %1147
  %1167 = fmul fast float %1091, 0x3FC24924A0000000
  %1168 = fsub fast float %1009, %1089
  %1169 = fdiv fast float %1168, %1167
  %1170 = call float @dx.op.unary.f32(i32 7, float %1169)  ; Saturate(value)
  %1171 = fsub fast float 1.000000e+00, %1170
  %1172 = fmul fast float %1171, %1162
  %1173 = fmul fast float %1171, %1163
  %1174 = fmul fast float %1171, %1164
  br label %1175

; <label>:1175                                    ; preds = %1166, %1147, %1052, %1007
  %1176 = phi float [ %1174, %1166 ], [ %1164, %1147 ], [ 0.000000e+00, %1052 ], [ 0.000000e+00, %1007 ]
  %1177 = phi float [ %1173, %1166 ], [ %1163, %1147 ], [ 0.000000e+00, %1052 ], [ 0.000000e+00, %1007 ]
  %1178 = phi float [ %1172, %1166 ], [ %1162, %1147 ], [ 0.000000e+00, %1052 ], [ 0.000000e+00, %1007 ]
  %1179 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1178)  ; FMax(a,b)
  %1180 = fmul fast float %1179, 0x3FD20DD760000000
  %1181 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %568, float %569, float %570)  ; Dot3(ax,ay,az,bx,by,bz)
  %1182 = fmul fast float %1181, 0x3FDF454380000000
  %1183 = fmul fast float %1181, %1181
  %1184 = fmul fast float %1183, 0x3FEE471020000000
  %1185 = fadd fast float %1184, 0xBFD42F6020000000
  %1186 = call float @dx.op.dot3.f32(i32 55, float %1179, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1182, float %1185)  ; Dot3(ax,ay,az,bx,by,bz)
  %1187 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1177)  ; FMax(a,b)
  %1188 = fmul fast float %1187, 0x3FD20DD760000000
  %1189 = call float @dx.op.dot3.f32(i32 55, float %1187, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1182, float %1185)  ; Dot3(ax,ay,az,bx,by,bz)
  %1190 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1176)  ; FMax(a,b)
  %1191 = fmul fast float %1190, 0x3FD20DD760000000
  %1192 = call float @dx.op.dot3.f32(i32 55, float %1190, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1182, float %1185)  ; Dot3(ax,ay,az,bx,by,bz)
  %1193 = call float @dx.op.binary.f32(i32 35, float %1180, float 0.000000e+00)  ; FMax(a,b)
  %1194 = call float @dx.op.binary.f32(i32 35, float %1188, float 0.000000e+00)  ; FMax(a,b)
  %1195 = call float @dx.op.binary.f32(i32 35, float %1191, float 0.000000e+00)  ; FMax(a,b)
  %1196 = call float @dx.op.binary.f32(i32 35, float %1186, float 0.000000e+00)  ; FMax(a,b)
  %1197 = call float @dx.op.binary.f32(i32 35, float %1189, float 0.000000e+00)  ; FMax(a,b)
  %1198 = call float @dx.op.binary.f32(i32 35, float %1192, float 0.000000e+00)  ; FMax(a,b)
  %1199 = fmul fast float %1193, %616
  %1200 = fmul fast float %1194, %616
  %1201 = fmul fast float %1195, %616
  %1202 = fadd fast float %1199, %1000
  %1203 = fadd fast float %1200, %1001
  %1204 = fadd fast float %1201, %1002
  %1205 = fadd fast float %1199, %997
  %1206 = fadd fast float %1200, %998
  %1207 = fadd fast float %1201, %999
  %1208 = fmul fast float %1196, %616
  %1209 = fmul fast float %1197, %616
  %1210 = fmul fast float %1198, %616
  %1211 = fadd fast float %1208, %994
  %1212 = fadd fast float %1209, %995
  %1213 = fadd fast float %1210, %996
  br label %1214

; <label>:1214                                    ; preds = %1175, %993
  %1215 = phi float [ %1211, %1175 ], [ %994, %993 ]
  %1216 = phi float [ %1212, %1175 ], [ %995, %993 ]
  %1217 = phi float [ %1213, %1175 ], [ %996, %993 ]
  %1218 = phi float [ %1205, %1175 ], [ %997, %993 ]
  %1219 = phi float [ %1206, %1175 ], [ %998, %993 ]
  %1220 = phi float [ %1207, %1175 ], [ %999, %993 ]
  %1221 = phi float [ %1202, %1175 ], [ %1000, %993 ]
  %1222 = phi float [ %1203, %1175 ], [ %1001, %993 ]
  %1223 = phi float [ %1204, %1175 ], [ %1002, %993 ]
  %1224 = fcmp fast olt float %616, 1.000000e+00
  br i1 %1224, label %1225, label %2058, !dx.controlflow.hints !110

; <label>:1225                                    ; preds = %1214
  %1226 = extractvalue %dx.types.CBufRet.f32 %572, 2
  %1227 = fadd fast float %1226, %418
  %1228 = fmul fast float %338, 3.200000e+01
  %1229 = fmul fast float %339, 3.200000e+01
  %1230 = fadd fast float %575, %1228
  %1231 = fadd fast float %576, %1229
  %1232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1233 = extractvalue %dx.types.CBufRet.f32 %1232, 0
  %1234 = extractvalue %dx.types.CBufRet.f32 %1232, 1
  %1235 = fsub fast float %1230, %1233
  %1236 = fsub fast float %1231, %1234
  %1237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1238 = extractvalue %dx.types.CBufRet.f32 %1237, 0
  %1239 = extractvalue %dx.types.CBufRet.f32 %1237, 1
  %1240 = fmul fast float %1235, %1238
  %1241 = fmul fast float %1236, %1239
  %1242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1243 = extractvalue %dx.types.CBufRet.f32 %1242, 0
  %1244 = fmul fast float %1240, %1243
  %1245 = extractvalue %dx.types.CBufRet.f32 %1242, 1
  %1246 = fadd fast float %1244, %1245
  %1247 = extractvalue %dx.types.CBufRet.f32 %1242, 2
  %1248 = fmul fast float %1247, %1241
  %1249 = extractvalue %dx.types.CBufRet.f32 %1242, 3
  %1250 = fadd fast float %1248, %1249
  %1251 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %35, float %1246, float %1250, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1252 = extractvalue %dx.types.ResRet.f32 %1251, 0
  %1253 = extractvalue %dx.types.ResRet.f32 %1251, 1
  %1254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1255 = extractvalue %dx.types.CBufRet.f32 %1254, 1
  %1256 = extractvalue %dx.types.CBufRet.f32 %1254, 0
  %1257 = fsub fast float %1255, %1256
  %1258 = fmul fast float %1257, %1252
  %1259 = fadd fast float %1258, %1256
  %1260 = extractvalue %dx.types.CBufRet.f32 %1254, 3
  %1261 = extractvalue %dx.types.CBufRet.f32 %1254, 2
  %1262 = fsub fast float %1260, %1261
  %1263 = fmul fast float %1262, %1253
  %1264 = fadd fast float %1263, %1261
  %1265 = fsub fast float %1227, %1259
  %1266 = fsub fast float %1264, %1259
  %1267 = fdiv fast float %1265, %1266
  %1268 = call float @dx.op.unary.f32(i32 7, float %1267)  ; Saturate(value)
  %1269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1270 = extractvalue %dx.types.CBufRet.f32 %1269, 0
  %1271 = fmul fast float %1270, %1268
  %1272 = extractvalue %dx.types.CBufRet.f32 %1269, 1
  %1273 = fadd fast float %1271, %1272
  %1274 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %35, float %1246, float %1250, float %1273, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1275 = extractvalue %dx.types.ResRet.f32 %1274, 0
  %1276 = extractvalue %dx.types.ResRet.f32 %1274, 1
  %1277 = extractvalue %dx.types.ResRet.f32 %1274, 2
  %1278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1279 = extractvalue %dx.types.CBufRet.f32 %1278, 0
  %1280 = extractvalue %dx.types.CBufRet.f32 %1278, 1
  %1281 = extractvalue %dx.types.CBufRet.f32 %1278, 2
  %1282 = fmul fast float %1279, %1275
  %1283 = fmul fast float %1280, %1276
  %1284 = fmul fast float %1281, %1277
  %1285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1286 = extractvalue %dx.types.CBufRet.f32 %1285, 0
  %1287 = extractvalue %dx.types.CBufRet.f32 %1285, 1
  %1288 = extractvalue %dx.types.CBufRet.f32 %1285, 2
  %1289 = fadd fast float %1282, %1286
  %1290 = fadd fast float %1283, %1287
  %1291 = fadd fast float %1284, %1288
  %1292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1293 = extractvalue %dx.types.CBufRet.f32 %1292, 0
  %1294 = fmul fast float %1293, %1240
  %1295 = extractvalue %dx.types.CBufRet.f32 %1292, 1
  %1296 = fadd fast float %1294, %1295
  %1297 = extractvalue %dx.types.CBufRet.f32 %1292, 2
  %1298 = fmul fast float %1297, %1241
  %1299 = extractvalue %dx.types.CBufRet.f32 %1292, 3
  %1300 = fadd fast float %1298, %1299
  %1301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1302 = extractvalue %dx.types.CBufRet.f32 %1301, 0
  %1303 = extractvalue %dx.types.CBufRet.f32 %1301, 1
  %1304 = extractvalue %dx.types.CBufRet.f32 %1301, 2
  %1305 = extractvalue %dx.types.CBufRet.f32 %1301, 3
  %1306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1307 = extractvalue %dx.types.CBufRet.f32 %1306, 0
  %1308 = extractvalue %dx.types.CBufRet.f32 %1306, 1
  %1309 = extractvalue %dx.types.CBufRet.f32 %1306, 2
  %1310 = extractvalue %dx.types.CBufRet.f32 %1306, 3
  %1311 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %35, float %1296, float %1300, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1312 = extractvalue %dx.types.ResRet.f32 %1311, 0
  %1313 = extractvalue %dx.types.ResRet.f32 %1311, 1
  %1314 = extractvalue %dx.types.ResRet.f32 %1311, 2
  %1315 = extractvalue %dx.types.ResRet.f32 %1311, 3
  %1316 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %35, float %1296, float %1300, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1317 = extractvalue %dx.types.ResRet.f32 %1316, 0
  %1318 = extractvalue %dx.types.ResRet.f32 %1316, 1
  %1319 = extractvalue %dx.types.ResRet.f32 %1316, 2
  %1320 = extractvalue %dx.types.ResRet.f32 %1316, 3
  %1321 = fmul fast float %1312, %1289
  %1322 = fmul fast float %1317, %1289
  %1323 = fmul fast float %1319, %1289
  %1324 = fmul fast float %1315, %1289
  %1325 = fadd fast float %1321, %1302
  %1326 = fadd fast float %1322, %1303
  %1327 = fadd fast float %1323, %1304
  %1328 = fadd fast float %1324, %1305
  %1329 = fmul fast float %1313, %1289
  %1330 = fmul fast float %1318, %1289
  %1331 = fadd fast float %1329, %1307
  %1332 = fadd fast float %1330, %1308
  %1333 = fmul fast float %1314, %1289
  %1334 = fmul fast float %1320, %1289
  %1335 = fadd fast float %1333, %1309
  %1336 = fadd fast float %1334, %1310
  %1337 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %35, float %1296, float %1300, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1338 = extractvalue %dx.types.ResRet.f32 %1337, 0
  %1339 = extractvalue %dx.types.ResRet.f32 %1337, 1
  %1340 = extractvalue %dx.types.ResRet.f32 %1337, 2
  %1341 = extractvalue %dx.types.ResRet.f32 %1337, 3
  %1342 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %35, float %1296, float %1300, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1343 = extractvalue %dx.types.ResRet.f32 %1342, 0
  %1344 = extractvalue %dx.types.ResRet.f32 %1342, 1
  %1345 = extractvalue %dx.types.ResRet.f32 %1342, 2
  %1346 = extractvalue %dx.types.ResRet.f32 %1342, 3
  %1347 = fmul fast float %1338, %1290
  %1348 = fmul fast float %1343, %1290
  %1349 = fmul fast float %1345, %1290
  %1350 = fmul fast float %1341, %1290
  %1351 = fadd fast float %1325, %1347
  %1352 = fadd fast float %1326, %1348
  %1353 = fadd fast float %1327, %1349
  %1354 = fadd fast float %1328, %1350
  %1355 = fmul fast float %1339, %1290
  %1356 = fmul fast float %1344, %1290
  %1357 = fadd fast float %1331, %1355
  %1358 = fadd fast float %1332, %1356
  %1359 = fmul fast float %1340, %1290
  %1360 = fmul fast float %1346, %1290
  %1361 = fadd fast float %1335, %1359
  %1362 = fadd fast float %1336, %1360
  %1363 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %35, float %1296, float %1300, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1364 = extractvalue %dx.types.ResRet.f32 %1363, 0
  %1365 = extractvalue %dx.types.ResRet.f32 %1363, 1
  %1366 = extractvalue %dx.types.ResRet.f32 %1363, 2
  %1367 = extractvalue %dx.types.ResRet.f32 %1363, 3
  %1368 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %35, float %1296, float %1300, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1369 = extractvalue %dx.types.ResRet.f32 %1368, 0
  %1370 = extractvalue %dx.types.ResRet.f32 %1368, 1
  %1371 = extractvalue %dx.types.ResRet.f32 %1368, 2
  %1372 = extractvalue %dx.types.ResRet.f32 %1368, 3
  %1373 = fmul fast float %1364, %1291
  %1374 = fmul fast float %1369, %1291
  %1375 = fmul fast float %1371, %1291
  %1376 = fmul fast float %1367, %1291
  %1377 = fadd fast float %1351, %1373
  %1378 = fadd fast float %1352, %1374
  %1379 = fadd fast float %1353, %1375
  %1380 = fadd fast float %1354, %1376
  %1381 = fmul fast float %1365, %1291
  %1382 = fmul fast float %1370, %1291
  %1383 = fadd fast float %1357, %1381
  %1384 = fadd fast float %1358, %1382
  %1385 = fmul fast float %1366, %1291
  %1386 = fmul fast float %1372, %1291
  %1387 = fadd fast float %1361, %1385
  %1388 = fadd fast float %1362, %1386
  %1389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1390 = extractvalue %dx.types.CBufRet.f32 %1389, 0
  %1391 = fsub fast float %575, %1390
  %1392 = fsub fast float %1233, %575
  %1393 = call float @dx.op.binary.f32(i32 35, float %1392, float %1391)  ; FMax(a,b)
  %1394 = extractvalue %dx.types.CBufRet.f32 %1389, 1
  %1395 = fsub fast float %576, %1394
  %1396 = fsub fast float %1234, %576
  %1397 = call float @dx.op.binary.f32(i32 35, float %1396, float %1395)  ; FMax(a,b)
  %1398 = call float @dx.op.binary.f32(i32 35, float %1393, float %1397)  ; FMax(a,b)
  %1399 = extractvalue %dx.types.CBufRet.f32 %1237, 3
  %1400 = fmul fast float %1399, %1398
  %1401 = call float @dx.op.unary.f32(i32 7, float %1400)  ; Saturate(value)
  %1402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1403 = extractvalue %dx.types.CBufRet.f32 %1402, 0
  %1404 = extractvalue %dx.types.CBufRet.f32 %1402, 1
  %1405 = extractvalue %dx.types.CBufRet.f32 %1402, 2
  %1406 = extractvalue %dx.types.CBufRet.f32 %1402, 3
  %1407 = fsub fast float %1403, %1377
  %1408 = fsub fast float %1404, %1378
  %1409 = fsub fast float %1405, %1379
  %1410 = fsub fast float %1406, %1380
  %1411 = fmul fast float %1407, %1401
  %1412 = fmul fast float %1408, %1401
  %1413 = fmul fast float %1409, %1401
  %1414 = fmul fast float %1410, %1401
  %1415 = fadd fast float %1411, %1377
  %1416 = fadd fast float %1412, %1378
  %1417 = fadd fast float %1413, %1379
  %1418 = fadd fast float %1414, %1380
  %1419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1420 = extractvalue %dx.types.CBufRet.f32 %1419, 0
  %1421 = extractvalue %dx.types.CBufRet.f32 %1419, 1
  %1422 = fsub fast float %1420, %1383
  %1423 = fsub fast float %1421, %1384
  %1424 = fmul fast float %1422, %1401
  %1425 = fmul fast float %1423, %1401
  %1426 = fadd fast float %1424, %1383
  %1427 = fadd fast float %1425, %1384
  %1428 = extractvalue %dx.types.CBufRet.f32 %1419, 2
  %1429 = extractvalue %dx.types.CBufRet.f32 %1419, 3
  %1430 = fsub fast float %1428, %1387
  %1431 = fsub fast float %1429, %1388
  %1432 = fmul fast float %1430, %1401
  %1433 = fmul fast float %1431, %1401
  %1434 = fadd fast float %1432, %1387
  %1435 = fadd fast float %1433, %1388
  %1436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1437 = extractvalue %dx.types.CBufRet.f32 %1436, 0
  %1438 = fmul fast float %1437, %1415
  %1439 = fmul fast float %1437, %1416
  %1440 = fmul fast float %1437, %1417
  %1441 = fmul fast float %1437, %1418
  %1442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1443 = extractvalue %dx.types.CBufRet.f32 %1442, 0
  %1444 = fmul fast float %1443, %1426
  %1445 = fmul fast float %1443, %1427
  %1446 = fadd fast float %1444, %1438
  %1447 = fadd fast float %1445, %1440
  %1448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1449 = extractvalue %dx.types.CBufRet.f32 %1448, 0
  %1450 = fmul fast float %1449, %1434
  %1451 = fmul fast float %1449, %1435
  %1452 = fadd fast float %1446, %1450
  %1453 = fadd fast float %1447, %1451
  %1454 = extractvalue %dx.types.CBufRet.f32 %1436, 1
  %1455 = fmul fast float %1454, %1415
  %1456 = fmul fast float %1454, %1416
  %1457 = fmul fast float %1454, %1417
  %1458 = fmul fast float %1454, %1418
  %1459 = extractvalue %dx.types.CBufRet.f32 %1442, 1
  %1460 = fmul fast float %1459, %1426
  %1461 = fmul fast float %1459, %1427
  %1462 = fadd fast float %1460, %1455
  %1463 = fadd fast float %1461, %1457
  %1464 = extractvalue %dx.types.CBufRet.f32 %1448, 1
  %1465 = fmul fast float %1464, %1434
  %1466 = fmul fast float %1464, %1435
  %1467 = fadd fast float %1462, %1465
  %1468 = fadd fast float %1463, %1466
  %1469 = extractvalue %dx.types.CBufRet.f32 %1436, 2
  %1470 = fmul fast float %1469, %1415
  %1471 = fmul fast float %1469, %1416
  %1472 = fmul fast float %1469, %1417
  %1473 = fmul fast float %1469, %1418
  %1474 = extractvalue %dx.types.CBufRet.f32 %1442, 2
  %1475 = fmul fast float %1474, %1426
  %1476 = fmul fast float %1474, %1427
  %1477 = fadd fast float %1475, %1470
  %1478 = fadd fast float %1476, %1472
  %1479 = extractvalue %dx.types.CBufRet.f32 %1448, 2
  %1480 = fmul fast float %1479, %1434
  %1481 = fmul fast float %1479, %1435
  %1482 = fadd fast float %1477, %1480
  %1483 = fadd fast float %1478, %1481
  %1484 = fmul fast float %1471, %1471
  %1485 = fmul fast float %1483, %1483
  %1486 = fmul fast float %1473, %1473
  %1487 = fadd fast float %1486, %1484
  %1488 = fadd fast float %1487, %1485
  %1489 = call float @dx.op.unary.f32(i32 24, float %1488)  ; Sqrt(value)
  %1490 = fcmp fast ugt float %1489, 0.000000e+00
  br i1 %1490, label %1491, label %1506

; <label>:1491                                    ; preds = %1225
  %1492 = fsub fast float -0.000000e+00, %1473
  %1493 = fdiv fast float %1492, %1489
  %1494 = fsub fast float -0.000000e+00, %1471
  %1495 = fdiv fast float %1494, %1489
  %1496 = fdiv fast float %1483, %1489
  %1497 = fmul fast float %1482, 0x3FE279A760000000
  %1498 = fmul fast float %1495, %1471
  %1499 = fmul fast float %1496, %1483
  %1500 = fmul fast float %1493, %1473
  %1501 = fadd fast float %1498, %1500
  %1502 = fsub fast float %1501, %1499
  %1503 = call float @dx.op.unary.f32(i32 6, float %1502)  ; FAbs(value)
  %1504 = fadd fast float %1503, 0x3DDB7CDFE0000000
  %1505 = fdiv fast float %1497, %1504
  br label %1506

; <label>:1506                                    ; preds = %1491, %1225
  %1507 = phi float [ %1505, %1491 ], [ 1.000000e+00, %1225 ]
  %1508 = fmul fast float %1456, %1456
  %1509 = fmul fast float %1468, %1468
  %1510 = fmul fast float %1458, %1458
  %1511 = fadd fast float %1510, %1508
  %1512 = fadd fast float %1511, %1509
  %1513 = call float @dx.op.unary.f32(i32 24, float %1512)  ; Sqrt(value)
  %1514 = fcmp fast ugt float %1513, 0.000000e+00
  br i1 %1514, label %1515, label %1530

; <label>:1515                                    ; preds = %1506
  %1516 = fsub fast float -0.000000e+00, %1458
  %1517 = fdiv fast float %1516, %1513
  %1518 = fsub fast float -0.000000e+00, %1456
  %1519 = fdiv fast float %1518, %1513
  %1520 = fdiv fast float %1468, %1513
  %1521 = fmul fast float %1467, 0x3FE279A760000000
  %1522 = fmul fast float %1519, %1456
  %1523 = fmul fast float %1520, %1468
  %1524 = fmul fast float %1517, %1458
  %1525 = fadd fast float %1522, %1524
  %1526 = fsub fast float %1525, %1523
  %1527 = call float @dx.op.unary.f32(i32 6, float %1526)  ; FAbs(value)
  %1528 = fadd fast float %1527, 0x3DDB7CDFE0000000
  %1529 = fdiv fast float %1521, %1528
  br label %1530

; <label>:1530                                    ; preds = %1515, %1506
  %1531 = phi float [ %1529, %1515 ], [ 1.000000e+00, %1506 ]
  %1532 = call float @dx.op.binary.f32(i32 36, float %1531, float %1507)  ; FMin(a,b)
  %1533 = fmul fast float %1439, %1439
  %1534 = fmul fast float %1453, %1453
  %1535 = fmul fast float %1441, %1441
  %1536 = fadd fast float %1535, %1533
  %1537 = fadd fast float %1536, %1534
  %1538 = call float @dx.op.unary.f32(i32 24, float %1537)  ; Sqrt(value)
  %1539 = fcmp fast ugt float %1538, 0.000000e+00
  br i1 %1539, label %1540, label %1555

; <label>:1540                                    ; preds = %1530
  %1541 = fsub fast float -0.000000e+00, %1441
  %1542 = fdiv fast float %1541, %1538
  %1543 = fsub fast float -0.000000e+00, %1439
  %1544 = fdiv fast float %1543, %1538
  %1545 = fdiv fast float %1453, %1538
  %1546 = fmul fast float %1452, 0x3FE279A760000000
  %1547 = fmul fast float %1544, %1439
  %1548 = fmul fast float %1545, %1453
  %1549 = fmul fast float %1542, %1441
  %1550 = fadd fast float %1547, %1549
  %1551 = fsub fast float %1550, %1548
  %1552 = call float @dx.op.unary.f32(i32 6, float %1551)  ; FAbs(value)
  %1553 = fadd fast float %1552, 0x3DDB7CDFE0000000
  %1554 = fdiv fast float %1546, %1553
  br label %1555

; <label>:1555                                    ; preds = %1540, %1530
  %1556 = phi float [ %1554, %1540 ], [ 1.000000e+00, %1530 ]
  %1557 = call float @dx.op.binary.f32(i32 36, float %1556, float %1532)  ; FMin(a,b)
  %1558 = call float @dx.op.unary.f32(i32 7, float %1557)  ; Saturate(value)
  %1559 = fcmp fast olt float %1558, 1.000000e+00
  br i1 %1559, label %1560, label %1570

; <label>:1560                                    ; preds = %1555
  %1561 = fmul fast float %1558, %1439
  %1562 = fmul fast float %1558, %1453
  %1563 = fmul fast float %1558, %1441
  %1564 = fmul fast float %1558, %1456
  %1565 = fmul fast float %1558, %1468
  %1566 = fmul fast float %1558, %1458
  %1567 = fmul fast float %1558, %1471
  %1568 = fmul fast float %1558, %1483
  %1569 = fmul fast float %1558, %1473
  br label %1570

; <label>:1570                                    ; preds = %1560, %1555
  %1571 = phi float [ %1567, %1560 ], [ %1471, %1555 ]
  %1572 = phi float [ %1568, %1560 ], [ %1483, %1555 ]
  %1573 = phi float [ %1569, %1560 ], [ %1473, %1555 ]
  %1574 = phi float [ %1564, %1560 ], [ %1456, %1555 ]
  %1575 = phi float [ %1565, %1560 ], [ %1468, %1555 ]
  %1576 = phi float [ %1566, %1560 ], [ %1458, %1555 ]
  %1577 = phi float [ %1561, %1560 ], [ %1439, %1555 ]
  %1578 = phi float [ %1562, %1560 ], [ %1453, %1555 ]
  %1579 = phi float [ %1563, %1560 ], [ %1441, %1555 ]
  %1580 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1452)  ; FMax(a,b)
  %1581 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1467)  ; FMax(a,b)
  %1582 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1482)  ; FMax(a,b)
  %1583 = fcmp fast oge float %1240, 0.000000e+00
  %1584 = and i1 %1583, %1005
  %1585 = fcmp fast ole float %1240, 1.000000e+00
  %1586 = and i1 %1585, %1584
  %1587 = fcmp fast oge float %1241, 0.000000e+00
  %1588 = and i1 %1587, %1586
  %1589 = fcmp fast ole float %1241, 1.000000e+00
  %1590 = and i1 %1589, %1588
  br i1 %1590, label %1591, label %1736, !dx.controlflow.hints !111

; <label>:1591                                    ; preds = %1570
  %1592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1593 = extractvalue %dx.types.CBufRet.f32 %1592, 2
  %1594 = extractvalue %dx.types.CBufRet.f32 %1592, 3
  %1595 = fmul fast float %1593, %1240
  %1596 = fmul fast float %1594, %1241
  %1597 = call float @dx.op.unary.f32(i32 27, float %1595)  ; Round_ni(value)
  %1598 = call float @dx.op.unary.f32(i32 27, float %1596)  ; Round_ni(value)
  %1599 = fptosi float %1597 to i32
  %1600 = fptosi float %1598 to i32
  %1601 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %19, i32 0, i32 %1599, i32 %1600, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1602 = extractvalue %dx.types.ResRet.i32 %1601, 0
  %1603 = and i32 %1602, 65535
  %1604 = lshr i32 %1602, 16
  %1605 = icmp eq i32 %1603, 65535
  br i1 %1605, label %1642, label %1606

; <label>:1606                                    ; preds = %1591
  %1607 = extractvalue %dx.types.CBufRet.f32 %1003, 1
  %1608 = extractvalue %dx.types.CBufRet.f32 %1592, 0
  %1609 = extractvalue %dx.types.CBufRet.f32 %1592, 1
  %1610 = fmul fast float %1608, %1240
  %1611 = fmul fast float %1609, %1241
  %1612 = fmul fast float %1610, 1.250000e-01
  %1613 = fmul fast float %1611, 1.250000e-01
  %1614 = call float @dx.op.unary.f32(i32 27, float %1612)  ; Round_ni(value)
  %1615 = call float @dx.op.unary.f32(i32 27, float %1613)  ; Round_ni(value)
  %1616 = fmul fast float %1614, 8.000000e+00
  %1617 = fmul fast float %1615, 8.000000e+00
  %1618 = and i32 %1602, 255
  %1619 = lshr i32 %1602, 8
  %1620 = and i32 %1619, 255
  %1621 = mul nuw nsw i32 %1618, 9
  %1622 = uitofp i32 %1621 to float
  %1623 = mul nuw nsw i32 %1620, 9
  %1624 = uitofp i32 %1623 to float
  %1625 = fadd fast float %1622, 5.000000e-01
  %1626 = fadd fast float %1625, %1610
  %1627 = fsub fast float %1626, %1616
  %1628 = fadd fast float %1624, 5.000000e-01
  %1629 = fadd fast float %1628, %1611
  %1630 = fsub fast float %1629, %1617
  %1631 = fdiv fast float %1627, %1004
  %1632 = fdiv fast float %1630, %1607
  %1633 = fmul fast float %1268, 4.375000e-01
  %1634 = fadd fast float %1633, 3.125000e-02
  %1635 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %35, float %1631, float %1632, float %1634, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1636 = extractvalue %dx.types.ResRet.f32 %1635, 0
  %1637 = extractvalue %dx.types.ResRet.f32 %1635, 1
  %1638 = extractvalue %dx.types.ResRet.f32 %1635, 2
  %1639 = fadd fast float %1636, %1580
  %1640 = fadd fast float %1637, %1581
  %1641 = fadd fast float %1638, %1582
  br label %1642

; <label>:1642                                    ; preds = %1606, %1591
  %1643 = phi float [ %1641, %1606 ], [ %1582, %1591 ]
  %1644 = phi float [ %1640, %1606 ], [ %1581, %1591 ]
  %1645 = phi float [ %1639, %1606 ], [ %1580, %1591 ]
  %1646 = icmp eq i32 %1604, 65535
  br i1 %1646, label %1736, label %1647

; <label>:1647                                    ; preds = %1642
  %1648 = extractvalue %dx.types.CBufRet.f32 %1003, 1
  %1649 = extractvalue %dx.types.CBufRet.f32 %1592, 0
  %1650 = extractvalue %dx.types.CBufRet.f32 %1592, 1
  %1651 = fmul fast float %1649, %1240
  %1652 = fmul fast float %1650, %1241
  %1653 = fmul fast float %1651, 1.250000e-01
  %1654 = fmul fast float %1652, 1.250000e-01
  %1655 = call float @dx.op.unary.f32(i32 27, float %1653)  ; Round_ni(value)
  %1656 = call float @dx.op.unary.f32(i32 27, float %1654)  ; Round_ni(value)
  %1657 = fmul fast float %1655, 8.000000e+00
  %1658 = fmul fast float %1656, 8.000000e+00
  %1659 = fsub fast float %1651, %1657
  %1660 = fsub fast float %1652, %1658
  %1661 = fadd fast float %1659, 5.000000e-01
  %1662 = fadd fast float %1660, 5.000000e-01
  %1663 = and i32 %1604, 255
  %1664 = lshr i32 %1602, 24
  %1665 = mul nuw nsw i32 %1663, 9
  %1666 = uitofp i32 %1665 to float
  %1667 = mul nuw nsw i32 %1664, 9
  %1668 = uitofp i32 %1667 to float
  %1669 = fadd fast float %1661, %1666
  %1670 = fadd fast float %1662, %1668
  %1671 = fdiv fast float %1669, %1004
  %1672 = fdiv fast float %1670, %1648
  %1673 = fmul fast float %1268, 4.375000e-01
  %1674 = fadd fast float %1673, 3.125000e-02
  %1675 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %35, float %1671, float %1672, float %1674, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1676 = extractvalue %dx.types.ResRet.f32 %1675, 0
  %1677 = extractvalue %dx.types.ResRet.f32 %1675, 1
  %1678 = extractvalue %dx.types.ResRet.f32 %1675, 2
  %1679 = fadd fast float %1673, 5.312500e-01
  %1680 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %35, float %1671, float %1672, float %1679, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1681 = extractvalue %dx.types.ResRet.f32 %1680, 0
  %1682 = extractvalue %dx.types.ResRet.f32 %1680, 1
  %1683 = extractvalue %dx.types.ResRet.f32 %1680, 2
  %1684 = fmul fast float %1681, 2.000000e+00
  %1685 = fmul fast float %1682, 2.000000e+00
  %1686 = fmul fast float %1683, 2.000000e+00
  %1687 = fadd fast float %1684, -1.000000e+00
  %1688 = fadd fast float %1685, -1.000000e+00
  %1689 = fadd fast float %1686, -1.000000e+00
  %1690 = fmul fast float %1687, %1687
  %1691 = fmul fast float %1688, %1688
  %1692 = fadd fast float %1690, %1691
  %1693 = fmul fast float %1689, %1689
  %1694 = fadd fast float %1692, %1693
  %1695 = call float @dx.op.unary.f32(i32 24, float %1694)  ; Sqrt(value)
  %1696 = fcmp fast ogt float %1695, 0.000000e+00
  br i1 %1696, label %1697, label %1701

; <label>:1697                                    ; preds = %1647
  %1698 = fdiv fast float %1687, %1695
  %1699 = fdiv fast float %1688, %1695
  %1700 = fdiv fast float %1689, %1695
  br label %1701

; <label>:1701                                    ; preds = %1697, %1647
  %1702 = phi float [ %1698, %1697 ], [ 0.000000e+00, %1647 ]
  %1703 = phi float [ %1699, %1697 ], [ 0.000000e+00, %1647 ]
  %1704 = phi float [ %1700, %1697 ], [ 0.000000e+00, %1647 ]
  %1705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1706 = extractvalue %dx.types.CBufRet.f32 %1705, 0
  %1707 = extractvalue %dx.types.CBufRet.f32 %1705, 1
  %1708 = fsub fast float %575, %1706
  %1709 = fsub fast float %576, %1707
  %1710 = fmul fast float %1708, %1708
  %1711 = fmul fast float %1709, %1709
  %1712 = fadd fast float %1710, %1711
  %1713 = call float @dx.op.unary.f32(i32 24, float %1712)  ; Sqrt(value)
  %1714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1715 = extractvalue %dx.types.CBufRet.f32 %1714, 0
  %1716 = extractvalue %dx.types.CBufRet.f32 %1714, 1
  %1717 = fsub fast float %1713, %1715
  %1718 = fdiv fast float %1717, %1716
  %1719 = call float @dx.op.unary.f32(i32 7, float %1718)  ; Saturate(value)
  %1720 = fmul fast float %1719, 2.000000e+00
  %1721 = fsub fast float 3.000000e+00, %1720
  %1722 = fmul fast float %1719, %1719
  %1723 = fmul fast float %1722, %1721
  %1724 = call float @dx.op.dot3.f32(i32 55, float %1702, float %1703, float %1704, float %338, float %339, float %340)  ; Dot3(ax,ay,az,bx,by,bz)
  %1725 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1724)  ; FMax(a,b)
  %1726 = fmul fast float %1725, 0x400C5BF8A0000000
  %1727 = fmul fast float %1723, %1676
  %1728 = fmul fast float %1727, %1726
  %1729 = fadd fast float %1728, %1645
  %1730 = fmul fast float %1723, %1677
  %1731 = fmul fast float %1730, %1726
  %1732 = fadd fast float %1731, %1644
  %1733 = fmul fast float %1723, %1678
  %1734 = fmul fast float %1733, %1726
  %1735 = fadd fast float %1734, %1643
  br label %1736

; <label>:1736                                    ; preds = %1701, %1642, %1570
  %1737 = phi float [ %1735, %1701 ], [ %1643, %1642 ], [ %1582, %1570 ]
  %1738 = phi float [ %1732, %1701 ], [ %1644, %1642 ], [ %1581, %1570 ]
  %1739 = phi float [ %1729, %1701 ], [ %1645, %1642 ], [ %1580, %1570 ]
  %1740 = fcmp fast ogt float %1227, %1264
  %1741 = and i1 %1583, %1740
  %1742 = and i1 %1585, %1741
  %1743 = and i1 %1587, %1742
  %1744 = and i1 %1589, %1743
  br i1 %1744, label %1745, label %1802, !dx.controlflow.hints !112

; <label>:1745                                    ; preds = %1736
  %1746 = fmul fast float %1266, 0x3FC24924A0000000
  %1747 = fsub fast float %1227, %1264
  %1748 = fdiv fast float %1747, %1746
  %1749 = call float @dx.op.unary.f32(i32 7, float %1748)  ; Saturate(value)
  %1750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1751 = extractvalue %dx.types.CBufRet.f32 %1750, 0
  %1752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1753 = extractvalue %dx.types.CBufRet.f32 %1752, 0
  %1754 = extractvalue %dx.types.CBufRet.f32 %1752, 1
  %1755 = extractvalue %dx.types.CBufRet.f32 %1752, 2
  %1756 = fsub fast float %1751, %1739
  %1757 = fsub fast float %1753, %1577
  %1758 = fsub fast float %1754, %1578
  %1759 = fsub fast float %1755, %1579
  %1760 = fmul fast float %1756, %1749
  %1761 = fmul fast float %1757, %1749
  %1762 = fmul fast float %1758, %1749
  %1763 = fmul fast float %1759, %1749
  %1764 = fadd fast float %1760, %1739
  %1765 = fadd fast float %1761, %1577
  %1766 = fadd fast float %1762, %1578
  %1767 = fadd fast float %1763, %1579
  %1768 = extractvalue %dx.types.CBufRet.f32 %1750, 1
  %1769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1770 = extractvalue %dx.types.CBufRet.f32 %1769, 0
  %1771 = extractvalue %dx.types.CBufRet.f32 %1769, 1
  %1772 = extractvalue %dx.types.CBufRet.f32 %1769, 2
  %1773 = fsub fast float %1768, %1738
  %1774 = fsub fast float %1770, %1574
  %1775 = fsub fast float %1771, %1575
  %1776 = fsub fast float %1772, %1576
  %1777 = fmul fast float %1773, %1749
  %1778 = fmul fast float %1774, %1749
  %1779 = fmul fast float %1775, %1749
  %1780 = fmul fast float %1776, %1749
  %1781 = fadd fast float %1777, %1738
  %1782 = fadd fast float %1778, %1574
  %1783 = fadd fast float %1779, %1575
  %1784 = fadd fast float %1780, %1576
  %1785 = extractvalue %dx.types.CBufRet.f32 %1750, 2
  %1786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1787 = extractvalue %dx.types.CBufRet.f32 %1786, 0
  %1788 = extractvalue %dx.types.CBufRet.f32 %1786, 1
  %1789 = extractvalue %dx.types.CBufRet.f32 %1786, 2
  %1790 = fsub fast float %1785, %1737
  %1791 = fsub fast float %1787, %1571
  %1792 = fsub fast float %1788, %1572
  %1793 = fsub fast float %1789, %1573
  %1794 = fmul fast float %1790, %1749
  %1795 = fmul fast float %1791, %1749
  %1796 = fmul fast float %1792, %1749
  %1797 = fmul fast float %1793, %1749
  %1798 = fadd fast float %1794, %1737
  %1799 = fadd fast float %1795, %1571
  %1800 = fadd fast float %1796, %1572
  %1801 = fadd fast float %1797, %1573
  br label %1802

; <label>:1802                                    ; preds = %1745, %1736
  %1803 = phi float [ %1798, %1745 ], [ %1737, %1736 ]
  %1804 = phi float [ %1799, %1745 ], [ %1571, %1736 ]
  %1805 = phi float [ %1800, %1745 ], [ %1572, %1736 ]
  %1806 = phi float [ %1801, %1745 ], [ %1573, %1736 ]
  %1807 = phi float [ %1781, %1745 ], [ %1738, %1736 ]
  %1808 = phi float [ %1782, %1745 ], [ %1574, %1736 ]
  %1809 = phi float [ %1783, %1745 ], [ %1575, %1736 ]
  %1810 = phi float [ %1784, %1745 ], [ %1576, %1736 ]
  %1811 = phi float [ %1764, %1745 ], [ %1739, %1736 ]
  %1812 = phi float [ %1765, %1745 ], [ %1577, %1736 ]
  %1813 = phi float [ %1766, %1745 ], [ %1578, %1736 ]
  %1814 = phi float [ %1767, %1745 ], [ %1579, %1736 ]
  %1815 = extractvalue %dx.types.CBufRet.f32 %1389, 3
  %1816 = fmul fast float %1815, %1811
  %1817 = fmul fast float %1815, %1807
  %1818 = fmul fast float %1815, %1803
  %1819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1820 = extractvalue %dx.types.CBufRet.f32 %1819, 3
  %1821 = fmul fast float %1816, %1820
  %1822 = fmul fast float %1817, %1820
  %1823 = fmul fast float %1818, %1820
  %1824 = fmul fast float %1812, 1.500000e+00
  %1825 = fmul fast float %1824, %1815
  %1826 = fmul fast float %1825, %1820
  %1827 = fmul fast float %1813, 1.500000e+00
  %1828 = fmul fast float %1827, %1815
  %1829 = fmul fast float %1828, %1820
  %1830 = fmul fast float %1814, 1.500000e+00
  %1831 = fmul fast float %1830, %1815
  %1832 = fmul fast float %1831, %1820
  %1833 = fmul fast float %1808, 1.500000e+00
  %1834 = fmul fast float %1833, %1815
  %1835 = fmul fast float %1834, %1820
  %1836 = fmul fast float %1809, 1.500000e+00
  %1837 = fmul fast float %1836, %1815
  %1838 = fmul fast float %1837, %1820
  %1839 = fmul fast float %1810, 1.500000e+00
  %1840 = fmul fast float %1839, %1815
  %1841 = fmul fast float %1840, %1820
  %1842 = fmul fast float %1804, 1.500000e+00
  %1843 = fmul fast float %1842, %1815
  %1844 = fmul fast float %1843, %1820
  %1845 = fmul fast float %1805, 1.500000e+00
  %1846 = fmul fast float %1845, %1815
  %1847 = fmul fast float %1846, %1820
  %1848 = fmul fast float %1806, 1.500000e+00
  %1849 = fmul fast float %1848, %1815
  %1850 = fmul fast float %1849, %1820
  %1851 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1821)  ; FMax(a,b)
  %1852 = call float @dx.op.dot3.f32(i32 55, float %1826, float %1829, float %1832, float %1826, float %1829, float %1832)  ; Dot3(ax,ay,az,bx,by,bz)
  %1853 = fcmp fast oeq float %1852, 0.000000e+00
  %1854 = fcmp fast oeq float %1851, 0.000000e+00
  %1855 = or i1 %1854, %1853
  br i1 %1855, label %1885, label %1856

; <label>:1856                                    ; preds = %1802
  %1857 = fsub fast float -0.000000e+00, %1832
  %1858 = fsub fast float -0.000000e+00, %1826
  %1859 = call float @dx.op.unary.f32(i32 24, float %1852)  ; Sqrt(value)
  %1860 = fdiv fast float %1859, %1851
  %1861 = fcmp fast ogt float %1860, 0x3FFB6F8900000000
  %1862 = select i1 %1861, float 0x3FFB6F8900000000, float %1860
  %1863 = fmul fast float %1862, 0x3FE8A23460000000
  %1864 = call float @dx.op.unary.f32(i32 7, float %1863)  ; Saturate(value)
  %1865 = call float @dx.op.binary.f32(i32 35, float %1862, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1866 = fmul fast float %1864, %1851
  %1867 = fmul fast float %1865, 0x3FF279A740000000
  %1868 = fadd fast float %1867, -1.000000e+00
  %1869 = call float @dx.op.dot3.f32(i32 55, float %1857, float %1858, float %1829, float %1857, float %1858, float %1829)  ; Dot3(ax,ay,az,bx,by,bz)
  %1870 = call float @dx.op.unary.f32(i32 25, float %1869)  ; Rsqrt(value)
  %1871 = fmul fast float %1870, %1857
  %1872 = fmul fast float %1870, %1858
  %1873 = fmul fast float %1870, %1829
  %1874 = fmul fast float %1868, %1868
  %1875 = fsub fast float 1.000000e+00, %1874
  %1876 = fmul fast float %1865, 0x40005F8BE0000000
  %1877 = fsub fast float 0x400C5BF8A0000000, %1876
  %1878 = fdiv fast float %1866, %1877
  %1879 = fmul fast float %1878, 0x3FEE31C3C0000000
  %1880 = fmul fast float %1879, %1875
  %1881 = fmul fast float %1865, 0x3FDACB7480000000
  %1882 = fadd fast float %1881, 0xBFD7347680000000
  %1883 = fmul fast float %1882, %1878
  %1884 = fmul fast float %1883, %1875
  br label %1885

; <label>:1885                                    ; preds = %1856, %1802
  %1886 = phi float [ %1871, %1856 ], [ 0.000000e+00, %1802 ]
  %1887 = phi float [ %1872, %1856 ], [ 0.000000e+00, %1802 ]
  %1888 = phi float [ %1873, %1856 ], [ 0.000000e+00, %1802 ]
  %1889 = phi float [ %1880, %1856 ], [ 0.000000e+00, %1802 ]
  %1890 = phi float [ %1884, %1856 ], [ 0.000000e+00, %1802 ]
  %1891 = call float @dx.op.dot3.f32(i32 55, float %1886, float %1887, float %1888, float %338, float %339, float %340)  ; Dot3(ax,ay,az,bx,by,bz)
  %1892 = fmul fast float %1891, 0x3FDF454380000000
  %1893 = fmul fast float %1891, %1891
  %1894 = fmul fast float %1893, 0x3FEE471020000000
  %1895 = fadd fast float %1894, 0xBFD42F6020000000
  %1896 = fmul fast float %1851, 0x3FD20DD760000000
  %1897 = fmul fast float %1895, %1890
  %1898 = fadd fast float %1897, %1896
  %1899 = fmul fast float %1892, %1889
  %1900 = fadd fast float %1898, %1899
  %1901 = fsub fast float %1898, %1899
  %1902 = call float @dx.op.dot3.f32(i32 55, float %1886, float %1887, float %1888, float %568, float %569, float %570)  ; Dot3(ax,ay,az,bx,by,bz)
  %1903 = fmul fast float %1902, 0x3FDF454380000000
  %1904 = fmul fast float %1902, %1902
  %1905 = fmul fast float %1904, 0x3FEE471020000000
  %1906 = fadd fast float %1905, 0xBFD42F6020000000
  %1907 = call float @dx.op.dot3.f32(i32 55, float %1851, float %1889, float %1890, float 0x3FD20DD760000000, float %1903, float %1906)  ; Dot3(ax,ay,az,bx,by,bz)
  %1908 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1822)  ; FMax(a,b)
  %1909 = call float @dx.op.dot3.f32(i32 55, float %1835, float %1838, float %1841, float %1835, float %1838, float %1841)  ; Dot3(ax,ay,az,bx,by,bz)
  %1910 = fcmp fast oeq float %1909, 0.000000e+00
  %1911 = fcmp fast oeq float %1908, 0.000000e+00
  %1912 = or i1 %1911, %1910
  br i1 %1912, label %1942, label %1913

; <label>:1913                                    ; preds = %1885
  %1914 = fsub fast float -0.000000e+00, %1841
  %1915 = fsub fast float -0.000000e+00, %1835
  %1916 = call float @dx.op.unary.f32(i32 24, float %1909)  ; Sqrt(value)
  %1917 = fdiv fast float %1916, %1908
  %1918 = fcmp fast ogt float %1917, 0x3FFB6F8900000000
  %1919 = select i1 %1918, float 0x3FFB6F8900000000, float %1917
  %1920 = fmul fast float %1919, 0x3FE8A23460000000
  %1921 = call float @dx.op.unary.f32(i32 7, float %1920)  ; Saturate(value)
  %1922 = call float @dx.op.binary.f32(i32 35, float %1919, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1923 = fmul fast float %1921, %1908
  %1924 = fmul fast float %1922, 0x3FF279A740000000
  %1925 = fadd fast float %1924, -1.000000e+00
  %1926 = call float @dx.op.dot3.f32(i32 55, float %1914, float %1915, float %1838, float %1914, float %1915, float %1838)  ; Dot3(ax,ay,az,bx,by,bz)
  %1927 = call float @dx.op.unary.f32(i32 25, float %1926)  ; Rsqrt(value)
  %1928 = fmul fast float %1927, %1914
  %1929 = fmul fast float %1927, %1915
  %1930 = fmul fast float %1927, %1838
  %1931 = fmul fast float %1925, %1925
  %1932 = fsub fast float 1.000000e+00, %1931
  %1933 = fmul fast float %1922, 0x40005F8BE0000000
  %1934 = fsub fast float 0x400C5BF8A0000000, %1933
  %1935 = fdiv fast float %1923, %1934
  %1936 = fmul fast float %1935, 0x3FEE31C3C0000000
  %1937 = fmul fast float %1936, %1932
  %1938 = fmul fast float %1922, 0x3FDACB7480000000
  %1939 = fadd fast float %1938, 0xBFD7347680000000
  %1940 = fmul fast float %1939, %1935
  %1941 = fmul fast float %1940, %1932
  br label %1942

; <label>:1942                                    ; preds = %1913, %1885
  %1943 = phi float [ %1928, %1913 ], [ 0.000000e+00, %1885 ]
  %1944 = phi float [ %1929, %1913 ], [ 0.000000e+00, %1885 ]
  %1945 = phi float [ %1930, %1913 ], [ 0.000000e+00, %1885 ]
  %1946 = phi float [ %1937, %1913 ], [ 0.000000e+00, %1885 ]
  %1947 = phi float [ %1941, %1913 ], [ 0.000000e+00, %1885 ]
  %1948 = call float @dx.op.dot3.f32(i32 55, float %1943, float %1944, float %1945, float %338, float %339, float %340)  ; Dot3(ax,ay,az,bx,by,bz)
  %1949 = fmul fast float %1948, 0x3FDF454380000000
  %1950 = fmul fast float %1948, %1948
  %1951 = fmul fast float %1950, 0x3FEE471020000000
  %1952 = fadd fast float %1951, 0xBFD42F6020000000
  %1953 = fmul fast float %1908, 0x3FD20DD760000000
  %1954 = fmul fast float %1952, %1947
  %1955 = fadd fast float %1954, %1953
  %1956 = fmul fast float %1949, %1946
  %1957 = fadd fast float %1955, %1956
  %1958 = fsub fast float %1955, %1956
  %1959 = call float @dx.op.dot3.f32(i32 55, float %1943, float %1944, float %1945, float %568, float %569, float %570)  ; Dot3(ax,ay,az,bx,by,bz)
  %1960 = fmul fast float %1959, 0x3FDF454380000000
  %1961 = fmul fast float %1959, %1959
  %1962 = fmul fast float %1961, 0x3FEE471020000000
  %1963 = fadd fast float %1962, 0xBFD42F6020000000
  %1964 = call float @dx.op.dot3.f32(i32 55, float %1908, float %1946, float %1947, float 0x3FD20DD760000000, float %1960, float %1963)  ; Dot3(ax,ay,az,bx,by,bz)
  %1965 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1823)  ; FMax(a,b)
  %1966 = call float @dx.op.dot3.f32(i32 55, float %1844, float %1847, float %1850, float %1844, float %1847, float %1850)  ; Dot3(ax,ay,az,bx,by,bz)
  %1967 = fcmp fast oeq float %1966, 0.000000e+00
  %1968 = fcmp fast oeq float %1965, 0.000000e+00
  %1969 = or i1 %1968, %1967
  br i1 %1969, label %1999, label %1970

; <label>:1970                                    ; preds = %1942
  %1971 = fsub fast float -0.000000e+00, %1850
  %1972 = fsub fast float -0.000000e+00, %1844
  %1973 = call float @dx.op.unary.f32(i32 24, float %1966)  ; Sqrt(value)
  %1974 = fdiv fast float %1973, %1965
  %1975 = fcmp fast ogt float %1974, 0x3FFB6F8900000000
  %1976 = select i1 %1975, float 0x3FFB6F8900000000, float %1974
  %1977 = fmul fast float %1976, 0x3FE8A23460000000
  %1978 = call float @dx.op.unary.f32(i32 7, float %1977)  ; Saturate(value)
  %1979 = call float @dx.op.binary.f32(i32 35, float %1976, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1980 = fmul fast float %1978, %1965
  %1981 = fmul fast float %1979, 0x3FF279A740000000
  %1982 = fadd fast float %1981, -1.000000e+00
  %1983 = call float @dx.op.dot3.f32(i32 55, float %1971, float %1972, float %1847, float %1971, float %1972, float %1847)  ; Dot3(ax,ay,az,bx,by,bz)
  %1984 = call float @dx.op.unary.f32(i32 25, float %1983)  ; Rsqrt(value)
  %1985 = fmul fast float %1984, %1971
  %1986 = fmul fast float %1984, %1972
  %1987 = fmul fast float %1984, %1847
  %1988 = fmul fast float %1982, %1982
  %1989 = fsub fast float 1.000000e+00, %1988
  %1990 = fmul fast float %1979, 0x40005F8BE0000000
  %1991 = fsub fast float 0x400C5BF8A0000000, %1990
  %1992 = fdiv fast float %1980, %1991
  %1993 = fmul fast float %1992, 0x3FEE31C3C0000000
  %1994 = fmul fast float %1993, %1989
  %1995 = fmul fast float %1979, 0x3FDACB7480000000
  %1996 = fadd fast float %1995, 0xBFD7347680000000
  %1997 = fmul fast float %1996, %1992
  %1998 = fmul fast float %1997, %1989
  br label %1999

; <label>:1999                                    ; preds = %1970, %1942
  %2000 = phi float [ %1985, %1970 ], [ 0.000000e+00, %1942 ]
  %2001 = phi float [ %1986, %1970 ], [ 0.000000e+00, %1942 ]
  %2002 = phi float [ %1987, %1970 ], [ 0.000000e+00, %1942 ]
  %2003 = phi float [ %1994, %1970 ], [ 0.000000e+00, %1942 ]
  %2004 = phi float [ %1998, %1970 ], [ 0.000000e+00, %1942 ]
  %2005 = call float @dx.op.dot3.f32(i32 55, float %2000, float %2001, float %2002, float %338, float %339, float %340)  ; Dot3(ax,ay,az,bx,by,bz)
  %2006 = fmul fast float %2005, 0x3FDF454380000000
  %2007 = fmul fast float %2005, %2005
  %2008 = fmul fast float %2007, 0x3FEE471020000000
  %2009 = fadd fast float %2008, 0xBFD42F6020000000
  %2010 = fmul fast float %1965, 0x3FD20DD760000000
  %2011 = fmul fast float %2009, %2004
  %2012 = fadd fast float %2011, %2010
  %2013 = fmul fast float %2006, %2003
  %2014 = fadd fast float %2012, %2013
  %2015 = fsub fast float %2012, %2013
  %2016 = call float @dx.op.dot3.f32(i32 55, float %2000, float %2001, float %2002, float %568, float %569, float %570)  ; Dot3(ax,ay,az,bx,by,bz)
  %2017 = fmul fast float %2016, 0x3FDF454380000000
  %2018 = fmul fast float %2016, %2016
  %2019 = fmul fast float %2018, 0x3FEE471020000000
  %2020 = fadd fast float %2019, 0xBFD42F6020000000
  %2021 = call float @dx.op.dot3.f32(i32 55, float %1965, float %2003, float %2004, float 0x3FD20DD760000000, float %2017, float %2020)  ; Dot3(ax,ay,az,bx,by,bz)
  %2022 = call float @dx.op.binary.f32(i32 35, float %1900, float 0.000000e+00)  ; FMax(a,b)
  %2023 = call float @dx.op.binary.f32(i32 35, float %1957, float 0.000000e+00)  ; FMax(a,b)
  %2024 = call float @dx.op.binary.f32(i32 35, float %2014, float 0.000000e+00)  ; FMax(a,b)
  %2025 = call float @dx.op.binary.f32(i32 35, float %1901, float 0.000000e+00)  ; FMax(a,b)
  %2026 = call float @dx.op.binary.f32(i32 35, float %1958, float 0.000000e+00)  ; FMax(a,b)
  %2027 = call float @dx.op.binary.f32(i32 35, float %2015, float 0.000000e+00)  ; FMax(a,b)
  %2028 = call float @dx.op.binary.f32(i32 35, float %1907, float 0.000000e+00)  ; FMax(a,b)
  %2029 = call float @dx.op.binary.f32(i32 35, float %1964, float 0.000000e+00)  ; FMax(a,b)
  %2030 = call float @dx.op.binary.f32(i32 35, float %2021, float 0.000000e+00)  ; FMax(a,b)
  %2031 = fsub fast float %1221, %2022
  %2032 = fsub fast float %1222, %2023
  %2033 = fsub fast float %1223, %2024
  %2034 = fmul fast float %2031, %616
  %2035 = fmul fast float %2032, %616
  %2036 = fmul fast float %2033, %616
  %2037 = fadd fast float %2034, %2022
  %2038 = fadd fast float %2035, %2023
  %2039 = fadd fast float %2036, %2024
  %2040 = fsub fast float %1218, %2025
  %2041 = fsub fast float %1219, %2026
  %2042 = fsub fast float %1220, %2027
  %2043 = fmul fast float %2040, %616
  %2044 = fmul fast float %2041, %616
  %2045 = fmul fast float %2042, %616
  %2046 = fadd fast float %2043, %2025
  %2047 = fadd fast float %2044, %2026
  %2048 = fadd fast float %2045, %2027
  %2049 = fsub fast float %1215, %2028
  %2050 = fsub fast float %1216, %2029
  %2051 = fsub fast float %1217, %2030
  %2052 = fmul fast float %2049, %616
  %2053 = fmul fast float %2050, %616
  %2054 = fmul fast float %2051, %616
  %2055 = fadd fast float %2052, %2028
  %2056 = fadd fast float %2053, %2029
  %2057 = fadd fast float %2054, %2030
  br label %2058

; <label>:2058                                    ; preds = %1999, %1214
  %2059 = phi float [ %2055, %1999 ], [ %1215, %1214 ]
  %2060 = phi float [ %2056, %1999 ], [ %1216, %1214 ]
  %2061 = phi float [ %2057, %1999 ], [ %1217, %1214 ]
  %2062 = phi float [ %2046, %1999 ], [ %1218, %1214 ]
  %2063 = phi float [ %2047, %1999 ], [ %1219, %1214 ]
  %2064 = phi float [ %2048, %1999 ], [ %1220, %1214 ]
  %2065 = phi float [ %2037, %1999 ], [ %1221, %1214 ]
  %2066 = phi float [ %2038, %1999 ], [ %1222, %1214 ]
  %2067 = phi float [ %2039, %1999 ], [ %1223, %1214 ]
  %2068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2069 = extractvalue %dx.types.CBufRet.f32 %2068, 0
  %2070 = call float @dx.op.binary.f32(i32 36, float %530, float %2069)  ; FMin(a,b)
  %2071 = fsub fast float 1.000000e+00, %571
  %2072 = fmul fast float %2070, %2071
  %2073 = fsub fast float 1.000000e+00, %2072
  %2074 = bitcast float %2073 to i32
  %2075 = sub nsw i32 2129859010, %2074
  %2076 = bitcast i32 %2075 to float
  %2077 = call float @dx.op.binary.f32(i32 36, float %531, float %2069)  ; FMin(a,b)
  %2078 = fmul fast float %2077, %2071
  %2079 = fsub fast float 1.000000e+00, %2078
  %2080 = bitcast float %2079 to i32
  %2081 = sub nsw i32 2129859010, %2080
  %2082 = bitcast i32 %2081 to float
  %2083 = call float @dx.op.binary.f32(i32 36, float %532, float %2069)  ; FMin(a,b)
  %2084 = fmul fast float %2083, %2071
  %2085 = fsub fast float 1.000000e+00, %2084
  %2086 = bitcast float %2085 to i32
  %2087 = sub nsw i32 2129859010, %2086
  %2088 = bitcast i32 %2087 to float
  %2089 = fmul fast float %2065, %571
  %2090 = fmul fast float %2089, %2076
  %2091 = fmul fast float %2066, %571
  %2092 = fmul fast float %2091, %2082
  %2093 = fmul fast float %2067, %571
  %2094 = fmul fast float %2093, %2088
  %2095 = call float @dx.op.binary.f32(i32 36, float %539, float %2069)  ; FMin(a,b)
  %2096 = fmul fast float %2095, %2071
  %2097 = fsub fast float 1.000000e+00, %2096
  %2098 = bitcast float %2097 to i32
  %2099 = sub nsw i32 2129859010, %2098
  %2100 = bitcast i32 %2099 to float
  %2101 = call float @dx.op.binary.f32(i32 36, float %540, float %2069)  ; FMin(a,b)
  %2102 = fmul fast float %2101, %2071
  %2103 = fsub fast float 1.000000e+00, %2102
  %2104 = bitcast float %2103 to i32
  %2105 = sub nsw i32 2129859010, %2104
  %2106 = bitcast i32 %2105 to float
  %2107 = call float @dx.op.binary.f32(i32 36, float %560, float %2069)  ; FMin(a,b)
  %2108 = fmul fast float %2107, %2071
  %2109 = fsub fast float 1.000000e+00, %2108
  %2110 = bitcast float %2109 to i32
  %2111 = sub nsw i32 2129859010, %2110
  %2112 = bitcast i32 %2111 to float
  %2113 = fmul fast float %2059, %571
  %2114 = fmul fast float %2113, %2100
  %2115 = fmul fast float %2060, %571
  %2116 = fmul fast float %2115, %2106
  %2117 = fmul fast float %2061, %571
  %2118 = fmul fast float %2117, %2112
  %2119 = call float @dx.op.dot3.f32(i32 55, float %2090, float %2092, float %2094, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2120 = select i1 %143, float 0.000000e+00, float %2090
  %2121 = select i1 %143, float %2119, float %2092
  %2122 = select i1 %143, float 0.000000e+00, float %2094
  %2123 = call float @dx.op.dot3.f32(i32 55, float %2062, float %2063, float %2064, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2124 = select i1 %143, float 0.000000e+00, float %2062
  %2125 = select i1 %143, float %2123, float %2063
  %2126 = select i1 %143, float 0.000000e+00, float %2064
  %2127 = call float @dx.op.dot3.f32(i32 55, float %2114, float %2116, float %2118, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2128 = select i1 %143, float 0.000000e+00, float %2114
  %2129 = select i1 %143, float %2127, float %2116
  %2130 = select i1 %143, float 0.000000e+00, float %2118
  %2131 = fmul fast float %562, 9.843750e-01
  %2132 = fmul fast float %350, 9.843750e-01
  %2133 = fadd fast float %2131, 7.812500e-03
  %2134 = fadd fast float %2132, 7.812500e-03
  %2135 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %35, float %2133, float %2134, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2136 = extractvalue %dx.types.ResRet.f32 %2135, 2
  %2137 = extractvalue %dx.types.ResRet.f32 %2135, 3
  %2138 = fmul fast float %2136, %539
  %2139 = fmul fast float %2136, %540
  %2140 = fmul fast float %2136, %560
  %2141 = fadd fast float %2138, %2137
  %2142 = fadd fast float %2139, %2137
  %2143 = fadd fast float %2140, %2137
  %2144 = call float @dx.op.binary.f32(i32 35, float %2142, float %2143)  ; FMax(a,b)
  %2145 = call float @dx.op.binary.f32(i32 35, float %2141, float %2144)  ; FMax(a,b)
  %2146 = fsub fast float 1.000000e+00, %2145
  %2147 = fmul fast float %2141, %2128
  %2148 = fmul fast float %2142, %2129
  %2149 = fmul fast float %2143, %2130
  %2150 = fmul fast float %2124, %357
  %2151 = fmul fast float %2125, %358
  %2152 = fmul fast float %2126, %359
  %2153 = fadd fast float %2150, %2120
  %2154 = fmul fast float %2153, %2146
  %2155 = fadd fast float %2151, %2121
  %2156 = fmul fast float %2155, %2146
  %2157 = fadd fast float %2152, %2122
  %2158 = fmul fast float %2157, %2146
  %2159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2160 = extractvalue %dx.types.CBufRet.f32 %2159, 3
  %2161 = fcmp fast oeq float %2160, 0.000000e+00
  br i1 %2161, label %3101, label %2162

; <label>:2162                                    ; preds = %2058
  %2163 = extractvalue %dx.types.CBufRet.f32 %2159, 0
  %2164 = extractvalue %dx.types.CBufRet.f32 %2159, 1
  %2165 = extractvalue %dx.types.CBufRet.f32 %2159, 2
  %2166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2167 = extractvalue %dx.types.CBufRet.f32 %2166, 0
  %2168 = extractvalue %dx.types.CBufRet.f32 %2166, 1
  %2169 = extractvalue %dx.types.CBufRet.f32 %2166, 2
  %2170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2171 = extractvalue %dx.types.CBufRet.f32 %2170, 0
  %2172 = extractvalue %dx.types.CBufRet.f32 %2170, 1
  %2173 = call float @dx.op.dot3.f32(i32 55, float %2167, float %2168, float %2169, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2174 = select i1 %143, float %2171, float %2167
  %2175 = select i1 %143, float %2173, float %2168
  %2176 = select i1 %143, float %2172, float %2169
  %2177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2178 = extractvalue %dx.types.CBufRet.f32 %2177, 2
  %2179 = fmul fast float %2178, %338
  %2180 = fmul fast float %2178, %339
  %2181 = fmul fast float %2178, %340
  %2182 = fadd fast float %2179, %416
  %2183 = fadd fast float %2180, %417
  %2184 = fadd fast float %2181, %418
  %2185 = fcmp fast olt float %2160, 0.000000e+00
  br i1 %2185, label %2807, label %2186

; <label>:2186                                    ; preds = %2162
  %2187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2188 = extractvalue %dx.types.CBufRet.f32 %2187, 0
  %2189 = extractvalue %dx.types.CBufRet.f32 %2187, 1
  %2190 = extractvalue %dx.types.CBufRet.f32 %2187, 2
  %2191 = extractvalue %dx.types.CBufRet.f32 %2187, 3
  %2192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2193 = extractvalue %dx.types.CBufRet.f32 %2192, 0
  %2194 = extractvalue %dx.types.CBufRet.f32 %2192, 1
  %2195 = extractvalue %dx.types.CBufRet.f32 %2192, 2
  %2196 = extractvalue %dx.types.CBufRet.f32 %2192, 3
  %2197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2198 = extractvalue %dx.types.CBufRet.f32 %2197, 0
  %2199 = extractvalue %dx.types.CBufRet.f32 %2197, 1
  %2200 = extractvalue %dx.types.CBufRet.f32 %2197, 2
  %2201 = extractvalue %dx.types.CBufRet.f32 %2197, 3
  %2202 = fmul fast float %2188, %2182
  %2203 = call float @dx.op.tertiary.f32(i32 46, float %2183, float %2189, float %2202)  ; FMad(a,b,c)
  %2204 = call float @dx.op.tertiary.f32(i32 46, float %2184, float %2190, float %2203)  ; FMad(a,b,c)
  %2205 = fadd fast float %2204, %2191
  %2206 = fmul fast float %2193, %2182
  %2207 = call float @dx.op.tertiary.f32(i32 46, float %2183, float %2194, float %2206)  ; FMad(a,b,c)
  %2208 = call float @dx.op.tertiary.f32(i32 46, float %2184, float %2195, float %2207)  ; FMad(a,b,c)
  %2209 = fadd fast float %2208, %2196
  %2210 = fmul fast float %2198, %2182
  %2211 = call float @dx.op.tertiary.f32(i32 46, float %2183, float %2199, float %2210)  ; FMad(a,b,c)
  %2212 = call float @dx.op.tertiary.f32(i32 46, float %2184, float %2200, float %2211)  ; FMad(a,b,c)
  %2213 = fadd fast float %2212, %2201
  %2214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2215 = extractvalue %dx.types.CBufRet.f32 %2214, 0
  %2216 = extractvalue %dx.types.CBufRet.f32 %2214, 1
  %2217 = extractvalue %dx.types.CBufRet.f32 %2214, 3
  %2218 = fmul fast float %2217, %2205
  %2219 = fmul fast float %2217, %2209
  %2220 = fadd fast float %2218, %2215
  %2221 = fadd fast float %2219, %2216
  %2222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2223 = extractvalue %dx.types.CBufRet.f32 %2222, 0
  %2224 = extractvalue %dx.types.CBufRet.f32 %2222, 1
  %2225 = extractvalue %dx.types.CBufRet.f32 %2222, 3
  %2226 = fmul fast float %2225, %2205
  %2227 = fmul fast float %2225, %2209
  %2228 = fadd fast float %2226, %2223
  %2229 = fadd fast float %2227, %2224
  %2230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2231 = extractvalue %dx.types.CBufRet.f32 %2230, 1
  %2232 = fsub fast float %2231, %2213
  %2233 = extractvalue %dx.types.CBufRet.f32 %2230, 2
  %2234 = fmul fast float %2232, %2233
  %2235 = fsub fast float 1.000000e+00, %2234
  %2236 = call float @dx.op.unary.f32(i32 7, float %2235)  ; Saturate(value)
  %2237 = extractvalue %dx.types.CBufRet.f32 %2222, 2
  %2238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2239 = extractvalue %dx.types.CBufRet.f32 %2238, 2
  %2240 = fadd fast float %2239, %2237
  %2241 = fcmp fast ogt float %2240, 0.000000e+00
  br i1 %2241, label %2242, label %2266

; <label>:2242                                    ; preds = %2186
  %2243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %2244 = extractvalue %dx.types.CBufRet.f32 %2243, 0
  %2245 = extractvalue %dx.types.CBufRet.f32 %2243, 1
  %2246 = fsub fast float %2228, %2244
  %2247 = fsub fast float %2229, %2245
  %2248 = fcmp fast olt float %2246, 0.000000e+00
  %2249 = fcmp fast olt float %2247, 0.000000e+00
  %2250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %2251 = extractvalue %dx.types.CBufRet.f32 %2250, 0
  %2252 = extractvalue %dx.types.CBufRet.f32 %2250, 1
  %2253 = extractvalue %dx.types.CBufRet.f32 %2250, 2
  %2254 = extractvalue %dx.types.CBufRet.f32 %2250, 3
  %2255 = select i1 %2248, float %2251, float %2253
  %2256 = select i1 %2249, float %2252, float %2254
  %2257 = fmul fast float %2255, %2246
  %2258 = fmul fast float %2256, %2247
  %2259 = call float @dx.op.unary.f32(i32 6, float %2257)  ; FAbs(value)
  %2260 = call float @dx.op.unary.f32(i32 6, float %2258)  ; FAbs(value)
  %2261 = extractvalue %dx.types.CBufRet.f32 %2177, 0
  %2262 = call float @dx.op.binary.f32(i32 35, float %2259, float %2260)  ; FMax(a,b)
  %2263 = fsub fast float %2261, %2262
  %2264 = call float @dx.op.unary.f32(i32 7, float %2263)  ; Saturate(value)
  %2265 = fmul fast float %2264, %2236
  br label %2266

; <label>:2266                                    ; preds = %2242, %2186
  %2267 = phi float [ %2265, %2242 ], [ 0.000000e+00, %2186 ]
  %2268 = extractvalue %dx.types.CBufRet.f32 %2214, 2
  %2269 = extractvalue %dx.types.CBufRet.f32 %2238, 1
  %2270 = fadd fast float %2269, %2268
  %2271 = fcmp fast ogt float %2270, 0.000000e+00
  %2272 = extractvalue %dx.types.CBufRet.f32 %2177, 0
  br i1 %2271, label %2273, label %2296

; <label>:2273                                    ; preds = %2266
  %2274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2275 = extractvalue %dx.types.CBufRet.f32 %2274, 0
  %2276 = extractvalue %dx.types.CBufRet.f32 %2274, 1
  %2277 = fsub fast float %2220, %2275
  %2278 = fsub fast float %2221, %2276
  %2279 = fcmp fast olt float %2277, 0.000000e+00
  %2280 = fcmp fast olt float %2278, 0.000000e+00
  %2281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2282 = extractvalue %dx.types.CBufRet.f32 %2281, 0
  %2283 = extractvalue %dx.types.CBufRet.f32 %2281, 1
  %2284 = extractvalue %dx.types.CBufRet.f32 %2281, 2
  %2285 = extractvalue %dx.types.CBufRet.f32 %2281, 3
  %2286 = select i1 %2279, float %2282, float %2284
  %2287 = select i1 %2280, float %2283, float %2285
  %2288 = fmul fast float %2286, %2277
  %2289 = fmul fast float %2287, %2278
  %2290 = call float @dx.op.unary.f32(i32 6, float %2288)  ; FAbs(value)
  %2291 = call float @dx.op.unary.f32(i32 6, float %2289)  ; FAbs(value)
  %2292 = call float @dx.op.binary.f32(i32 35, float %2290, float %2291)  ; FMax(a,b)
  %2293 = fsub fast float %2272, %2292
  %2294 = call float @dx.op.unary.f32(i32 7, float %2293)  ; Saturate(value)
  %2295 = fmul fast float %2294, %2236
  br label %2296

; <label>:2296                                    ; preds = %2273, %2266
  %2297 = phi float [ %2295, %2273 ], [ 0.000000e+00, %2266 ]
  %2298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %2299 = extractvalue %dx.types.CBufRet.f32 %2298, 1
  %2300 = call float @dx.op.unary.f32(i32 7, float %2299)  ; Saturate(value)
  %2301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %2302 = extractvalue %dx.types.CBufRet.f32 %2301, 0
  %2303 = extractvalue %dx.types.CBufRet.f32 %2301, 1
  %2304 = fsub fast float %2205, %2302
  %2305 = fsub fast float %2209, %2303
  %2306 = fcmp fast olt float %2304, 0.000000e+00
  %2307 = fcmp fast olt float %2305, 0.000000e+00
  %2308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %2309 = extractvalue %dx.types.CBufRet.f32 %2308, 0
  %2310 = extractvalue %dx.types.CBufRet.f32 %2308, 1
  %2311 = extractvalue %dx.types.CBufRet.f32 %2308, 2
  %2312 = extractvalue %dx.types.CBufRet.f32 %2308, 3
  %2313 = select i1 %2306, float %2309, float %2311
  %2314 = select i1 %2307, float %2310, float %2312
  %2315 = fmul fast float %2313, %2304
  %2316 = fmul fast float %2314, %2305
  %2317 = call float @dx.op.unary.f32(i32 6, float %2315)  ; FAbs(value)
  %2318 = call float @dx.op.unary.f32(i32 6, float %2316)  ; FAbs(value)
  %2319 = call float @dx.op.binary.f32(i32 35, float %2317, float %2318)  ; FMax(a,b)
  %2320 = fsub fast float %2272, %2319
  %2321 = call float @dx.op.unary.f32(i32 7, float %2320)  ; Saturate(value)
  %2322 = call float @dx.op.binary.f32(i32 36, float %2321, float %2300)  ; FMin(a,b)
  %2323 = fmul fast float %2322, %2236
  %2324 = fsub fast float %2297, %2323
  %2325 = fsub fast float %2267, %2297
  %2326 = fsub fast float %2325, %2323
  %2327 = call float @dx.op.binary.f32(i32 35, float %2297, float %2267)  ; FMax(a,b)
  %2328 = call float @dx.op.binary.f32(i32 35, float %2323, float %2327)  ; FMax(a,b)
  %2329 = fcmp fast olt float %2328, 1.000000e+00
  br i1 %2329, label %2330, label %2728, !dx.controlflow.hints !113

; <label>:2330                                    ; preds = %2296
  %2331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2332 = extractvalue %dx.types.CBufRet.f32 %2331, 0
  %2333 = fcmp fast une float %2332, 0.000000e+00
  br i1 %2333, label %2334, label %2728, !dx.controlflow.hints !114

; <label>:2334                                    ; preds = %2330
  %2335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2336 = extractvalue %dx.types.CBufRet.f32 %2335, 0
  %2337 = extractvalue %dx.types.CBufRet.f32 %2335, 1
  %2338 = extractvalue %dx.types.CBufRet.f32 %2335, 2
  %2339 = extractvalue %dx.types.CBufRet.f32 %2335, 3
  %2340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2341 = extractvalue %dx.types.CBufRet.f32 %2340, 0
  %2342 = extractvalue %dx.types.CBufRet.f32 %2340, 1
  %2343 = extractvalue %dx.types.CBufRet.f32 %2340, 2
  %2344 = extractvalue %dx.types.CBufRet.f32 %2340, 3
  %2345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2346 = extractvalue %dx.types.CBufRet.f32 %2345, 0
  %2347 = extractvalue %dx.types.CBufRet.f32 %2345, 1
  %2348 = extractvalue %dx.types.CBufRet.f32 %2345, 2
  %2349 = extractvalue %dx.types.CBufRet.f32 %2345, 3
  %2350 = fmul fast float %2336, %2182
  %2351 = call float @dx.op.tertiary.f32(i32 46, float %2183, float %2337, float %2350)  ; FMad(a,b,c)
  %2352 = call float @dx.op.tertiary.f32(i32 46, float %2184, float %2338, float %2351)  ; FMad(a,b,c)
  %2353 = fadd fast float %2352, %2339
  %2354 = fmul fast float %2341, %2182
  %2355 = call float @dx.op.tertiary.f32(i32 46, float %2183, float %2342, float %2354)  ; FMad(a,b,c)
  %2356 = call float @dx.op.tertiary.f32(i32 46, float %2184, float %2343, float %2355)  ; FMad(a,b,c)
  %2357 = fadd fast float %2356, %2344
  %2358 = fmul fast float %2346, %2182
  %2359 = call float @dx.op.tertiary.f32(i32 46, float %2183, float %2347, float %2358)  ; FMad(a,b,c)
  %2360 = call float @dx.op.tertiary.f32(i32 46, float %2184, float %2348, float %2359)  ; FMad(a,b,c)
  %2361 = fadd fast float %2360, %2349
  %2362 = fcmp fast oge float %2353, 1.000000e+00
  %2363 = fcmp fast oge float %2357, 1.000000e+00
  %2364 = or i1 %2362, %2363
  %2365 = fcmp fast olt float %2353, 0.000000e+00
  %2366 = fcmp fast olt float %2357, 0.000000e+00
  %2367 = or i1 %2365, %2366
  %2368 = or i1 %2364, %2367
  br i1 %2368, label %2728, label %2369, !dx.controlflow.hints !115

; <label>:2369                                    ; preds = %2334
  %2370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2371 = extractvalue %dx.types.CBufRet.f32 %2370, 0
  %2372 = extractvalue %dx.types.CBufRet.f32 %2370, 1
  %2373 = extractvalue %dx.types.CBufRet.f32 %2370, 2
  %2374 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2375 = extractvalue %dx.types.CBufRet.i32 %2374, 2
  %2376 = uitofp i32 %2375 to float
  %2377 = extractvalue %dx.types.CBufRet.i32 %2374, 3
  %2378 = uitofp i32 %2377 to float
  %2379 = extractvalue %dx.types.CBufRet.f32 %2370, 3
  %2380 = fmul fast float %2379, 2.000000e+00
  %2381 = fsub fast float %2353, %2371
  %2382 = fsub fast float %2357, %2372
  %2383 = fmul fast float %2380, %2381
  %2384 = fmul fast float %2380, %2382
  %2385 = fdiv fast float 1.000000e+00, %2165
  %2386 = fmul fast float %2384, %2385
  %2387 = call float @dx.op.unary.f32(i32 6, float %2386)  ; FAbs(value)
  %2388 = fmul fast float %2373, %2184
  %2389 = fmul fast float %2388, %2380
  %2390 = call float @dx.op.unary.f32(i32 6, float %2389)  ; FAbs(value)
  %2391 = call float @dx.op.unary.f32(i32 6, float %2383)  ; FAbs(value)
  %2392 = call float @dx.op.binary.f32(i32 35, float %2390, float %2387)  ; FMax(a,b)
  %2393 = call float @dx.op.binary.f32(i32 35, float %2391, float %2392)  ; FMax(a,b)
  %2394 = fmul fast float %2393, 2.000000e+00
  %2395 = call float @dx.op.unary.f32(i32 23, float %2394)  ; Log(value)
  %2396 = call float @dx.op.binary.f32(i32 35, float %2395, float %2376)  ; FMax(a,b)
  %2397 = call float @dx.op.unary.f32(i32 22, float %2396)  ; Frc(value)
  %2398 = fadd fast float %2397, 0xBFEA666660000000
  %2399 = fmul fast float %2398, 8.000000e+00
  %2400 = call float @dx.op.unary.f32(i32 7, float %2399)  ; Saturate(value)
  %2401 = call float @dx.op.unary.f32(i32 27, float %2396)  ; Round_ni(value)
  %2402 = fadd fast float %2401, %2400
  %2403 = call float @dx.op.binary.f32(i32 36, float %2402, float %2378)  ; FMin(a,b)
  %2404 = call float @dx.op.unary.f32(i32 27, float %2403)  ; Round_ni(value)
  %2405 = fsub fast float -0.000000e+00, %2404
  %2406 = call float @dx.op.unary.f32(i32 21, float %2405)  ; Exp(value)
  %2407 = fmul fast float %2406, %2380
  %2408 = fmul fast float %2407, %2353
  %2409 = fmul fast float %2407, %2357
  %2410 = fmul fast float %2408, 2.500000e-01
  %2411 = fmul fast float %2409, 2.500000e-01
  %2412 = fadd fast float %2410, 5.000000e-01
  %2413 = fadd fast float %2411, 5.000000e-01
  %2414 = fsub fast float %2378, %2376
  %2415 = fptoui float %2414 to i32
  %2416 = add i32 %2415, 320
  %2417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 %2416)  ; CBufferLoadLegacy(handle,regIndex)
  %2418 = extractvalue %dx.types.CBufRet.f32 %2417, 0
  %2419 = extractvalue %dx.types.CBufRet.f32 %2417, 1
  %2420 = fcmp fast une float %2403, %2378
  %2421 = fsub fast float %2353, %2418
  %2422 = fsub fast float %2357, %2419
  %2423 = call float @dx.op.unary.f32(i32 6, float %2421)  ; FAbs(value)
  %2424 = call float @dx.op.unary.f32(i32 6, float %2422)  ; FAbs(value)
  %2425 = fmul fast float %2423, %2407
  %2426 = fmul fast float %2424, %2407
  %2427 = fcmp fast olt float %2425, 1.000000e+00
  %2428 = fcmp fast olt float %2426, 1.000000e+00
  %2429 = and i1 %2427, %2428
  %2430 = or i1 %2420, %2429
  br i1 %2430, label %2431, label %2728, !dx.controlflow.hints !116

; <label>:2431                                    ; preds = %2369
  %2432 = fmul fast float %2409, 5.000000e-01
  %2433 = fmul fast float %2408, 5.000000e-01
  %2434 = fadd fast float %2432, 5.000000e-01
  %2435 = fadd fast float %2433, 5.000000e-01
  %2436 = sitofp i32 %2375 to float
  %2437 = fsub fast float %2403, %2436
  %2438 = call float @dx.op.unary.f32(i32 27, float %2437)  ; Round_ni(value)
  %2439 = call float @dx.op.unary.f32(i32 22, float %2403)  ; Frc(value)
  %2440 = call float @dx.op.unary.f32(i32 22, float %2435)  ; Frc(value)
  %2441 = call float @dx.op.unary.f32(i32 22, float %2434)  ; Frc(value)
  %2442 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %34, float %2440, float %2441, float %2438, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2443 = extractvalue %dx.types.ResRet.f32 %2442, 0
  %2444 = extractvalue %dx.types.ResRet.f32 %2442, 1
  %2445 = extractvalue %dx.types.ResRet.f32 %2442, 2
  %2446 = extractvalue %dx.types.ResRet.f32 %2442, 3
  %2447 = fcmp fast ogt float %2439, 0.000000e+00
  br i1 %2447, label %2448, label %2469, !dx.controlflow.hints !117

; <label>:2448                                    ; preds = %2431
  %2449 = fadd fast float %2438, 1.000000e+00
  %2450 = call float @dx.op.unary.f32(i32 22, float %2412)  ; Frc(value)
  %2451 = call float @dx.op.unary.f32(i32 22, float %2413)  ; Frc(value)
  %2452 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %34, float %2450, float %2451, float %2449, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2453 = extractvalue %dx.types.ResRet.f32 %2452, 0
  %2454 = extractvalue %dx.types.ResRet.f32 %2452, 1
  %2455 = extractvalue %dx.types.ResRet.f32 %2452, 2
  %2456 = extractvalue %dx.types.ResRet.f32 %2452, 3
  %2457 = fsub fast float %2453, %2443
  %2458 = fsub fast float %2454, %2444
  %2459 = fsub fast float %2455, %2445
  %2460 = fsub fast float %2456, %2446
  %2461 = fmul fast float %2457, %2439
  %2462 = fmul fast float %2458, %2439
  %2463 = fmul fast float %2459, %2439
  %2464 = fmul fast float %2460, %2439
  %2465 = fadd fast float %2461, %2443
  %2466 = fadd fast float %2462, %2444
  %2467 = fadd fast float %2463, %2445
  %2468 = fadd fast float %2464, %2446
  br label %2469

; <label>:2469                                    ; preds = %2448, %2431
  %2470 = phi float [ %2465, %2448 ], [ %2443, %2431 ]
  %2471 = phi float [ %2466, %2448 ], [ %2444, %2431 ]
  %2472 = phi float [ %2467, %2448 ], [ %2445, %2431 ]
  %2473 = phi float [ %2468, %2448 ], [ %2446, %2431 ]
  %2474 = fadd fast float %2470, -5.000000e-01
  %2475 = fadd fast float %2472, -5.000000e-01
  %2476 = fmul fast float %2474, 0xBFD5555560000000
  %2477 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2475, float %2476)  ; FMad(a,b,c)
  %2478 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2471, float 0.000000e+00)  ; FMad(a,b,c)
  %2479 = fadd fast float %2478, %2473
  %2480 = fmul fast float %2474, -7.500000e-01
  %2481 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2475, float %2480)  ; FMad(a,b,c)
  %2482 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2471, float 0.000000e+00)  ; FMad(a,b,c)
  %2483 = fadd fast float %2482, %2473
  %2484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2485 = extractvalue %dx.types.CBufRet.f32 %2484, 0
  %2486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2487 = extractvalue %dx.types.CBufRet.f32 %2486, 0
  %2488 = extractvalue %dx.types.CBufRet.f32 %2486, 1
  %2489 = extractvalue %dx.types.CBufRet.f32 %2486, 2
  %2490 = extractvalue %dx.types.CBufRet.f32 %2486, 3
  %2491 = fsub fast float %2487, %2477
  %2492 = fsub fast float %2488, %2479
  %2493 = fsub fast float %2489, %2481
  %2494 = fsub fast float %2490, %2483
  %2495 = fmul fast float %2491, %2485
  %2496 = fmul fast float %2492, %2485
  %2497 = fmul fast float %2493, %2485
  %2498 = fmul fast float %2494, %2485
  %2499 = fadd fast float %2495, %2477
  %2500 = fadd fast float %2496, %2479
  %2501 = fadd fast float %2497, %2481
  %2502 = fadd fast float %2498, %2483
  %2503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2504 = extractvalue %dx.types.ResRet.i32 %2503, 0
  %2505 = and i32 %2504, 536870911
  %2506 = uitofp i32 %2505 to float
  %2507 = fmul fast float %2506, %2353
  %2508 = fmul fast float %2506, %2357
  %2509 = fptoui float %2507 to i32
  %2510 = fptoui float %2508 to i32
  %2511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2512 = extractvalue %dx.types.ResRet.i32 %2511, 0
  %2513 = and i32 %2512, 31
  %2514 = lshr i32 %2509, %2513
  %2515 = lshr i32 %2510, %2513
  %2516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2517 = extractvalue %dx.types.ResRet.i32 %2516, 0
  %2518 = and i32 %2517, 31
  %2519 = shl i32 1, %2518
  %2520 = call i32 @dx.op.binary.i32(i32 40, i32 %2519, i32 4)  ; UMin(a,b)
  %2521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2522 = extractvalue %dx.types.ResRet.i32 %2521, 0
  %2523 = extractvalue %dx.types.ResRet.i32 %2521, 1
  %2524 = icmp eq i32 %2520, 0
  br i1 %2524, label %2566, label %2525

; <label>:2525                                    ; preds = %2469
  br label %2526

; <label>:2526                                    ; preds = %2554, %2525
  %2527 = phi i32 [ %2557, %2554 ], [ 0, %2525 ]
  %2528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2529 = extractvalue %dx.types.ResRet.i32 %2528, 0
  %2530 = lshr i32 %2529, 16
  %2531 = and i32 %2530, 31
  %2532 = shl i32 %2515, %2531
  %2533 = add i32 %2532, %2514
  %2534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2535 = extractvalue %dx.types.ResRet.i32 %2534, 0
  %2536 = and i32 %2535, 31
  %2537 = shl i32 %2533, %2536
  %2538 = add i32 %2537, %2527
  %2539 = shl i32 %2538, 2
  %2540 = add i32 %2539, 32
  %2541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2540, i32 undef)  ; BufferLoad(srv,index,wot)
  %2542 = extractvalue %dx.types.ResRet.i32 %2541, 0
  %2543 = icmp slt i32 %2542, 0
  %2544 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 %2527
  %2545 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %2527
  %2546 = bitcast float* %2544 to i32*
  %2547 = bitcast float* %2545 to i32*
  br i1 %2543, label %2548, label %2554

; <label>:2548                                    ; preds = %2526
  %2549 = and i32 %2542, 1073741823
  %2550 = add nuw nsw i32 %2549, 20
  %2551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2550, i32 undef)  ; BufferLoad(srv,index,wot)
  %2552 = extractvalue %dx.types.ResRet.i32 %2551, 0
  %2553 = extractvalue %dx.types.ResRet.i32 %2551, 1
  br label %2554

; <label>:2554                                    ; preds = %2548, %2526
  %2555 = phi i32 [ %2552, %2548 ], [ %2522, %2526 ]
  %2556 = phi i32 [ %2553, %2548 ], [ %2523, %2526 ]
  store i32 %2555, i32* %2546, align 4
  store i32 %2556, i32* %2547, align 4
  %2557 = add nuw i32 %2527, 1
  %2558 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2559 = extractvalue %dx.types.CBufRet.i32 %2558, 2
  %2560 = icmp eq i32 %2559, 0
  %2561 = icmp ugt i32 %2542, -1073741825
  %2562 = and i1 %2561, %2560
  %2563 = icmp ult i32 %2557, %2520
  %2564 = and i1 %2562, %2563
  br i1 %2564, label %2526, label %2565

; <label>:2565                                    ; preds = %2554
  br label %2566

; <label>:2566                                    ; preds = %2565, %2469
  %2567 = phi i32 [ 0, %2469 ], [ %2557, %2565 ]
  %2568 = extractvalue %dx.types.CBufRet.f32 %2331, 2
  %2569 = fptoui float %2568 to i32
  %2570 = icmp eq i32 %2569, 0
  br i1 %2570, label %2622, label %2571

; <label>:2571                                    ; preds = %2566
  br label %2572

; <label>:2572                                    ; preds = %2617, %2571
  %2573 = phi i32 [ %2618, %2617 ], [ %2567, %2571 ]
  %2574 = phi i32 [ %2619, %2617 ], [ 0, %2571 ]
  %2575 = lshr i32 %2574, 2
  %2576 = and i32 %2574, 3
  %2577 = add nuw nsw i32 %2575, 83
  %2578 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 %2577)  ; CBufferLoadLegacy(handle,regIndex)
  %2579 = extractvalue %dx.types.CBufRet.i32 %2578, 0
  %2580 = extractvalue %dx.types.CBufRet.i32 %2578, 1
  %2581 = extractvalue %dx.types.CBufRet.i32 %2578, 2
  %2582 = extractvalue %dx.types.CBufRet.i32 %2578, 3
  %2583 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i32 0, i32 0
  store i32 %2579, i32* %2583, align 4
  %2584 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i32 0, i32 1
  store i32 %2580, i32* %2584, align 4
  %2585 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i32 0, i32 2
  store i32 %2581, i32* %2585, align 4
  %2586 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i32 0, i32 3
  store i32 %2582, i32* %2586, align 4
  %2587 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i32 0, i32 %2576
  %2588 = load i32, i32* %2587, align 4, !tbaa !118, !noalias !120
  %2589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2590 = extractvalue %dx.types.ResRet.i32 %2589, 0
  %2591 = lshr i32 %2590, 16
  %2592 = and i32 %2591, 31
  %2593 = shl i32 %2515, %2592
  %2594 = add i32 %2593, %2514
  %2595 = shl i32 %2594, 2
  %2596 = add i32 %2595, %2588
  %2597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2596, i32 undef)  ; BufferLoad(srv,index,wot)
  %2598 = extractvalue %dx.types.ResRet.i32 %2597, 0
  %2599 = icmp eq i32 %2598, 0
  br i1 %2599, label %2617, label %2600

; <label>:2600                                    ; preds = %2572
  %2601 = icmp slt i32 %2598, 0
  %2602 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 %2573
  %2603 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %2573
  %2604 = bitcast float* %2602 to i32*
  %2605 = bitcast float* %2603 to i32*
  br i1 %2601, label %2606, label %2613

; <label>:2606                                    ; preds = %2600
  %2607 = and i32 %2598, 1073741823
  %2608 = add i32 %2588, 20
  %2609 = add i32 %2608, %2607
  %2610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2609, i32 undef)  ; BufferLoad(srv,index,wot)
  %2611 = extractvalue %dx.types.ResRet.i32 %2610, 0
  %2612 = extractvalue %dx.types.ResRet.i32 %2610, 1
  br label %2613

; <label>:2613                                    ; preds = %2606, %2600
  %2614 = phi i32 [ %2611, %2606 ], [ %2522, %2600 ]
  %2615 = phi i32 [ %2612, %2606 ], [ %2523, %2600 ]
  store i32 %2614, i32* %2604, align 4
  store i32 %2615, i32* %2605, align 4
  %2616 = add i32 %2573, 1
  br label %2617

; <label>:2617                                    ; preds = %2613, %2572
  %2618 = phi i32 [ %2573, %2572 ], [ %2616, %2613 ]
  %2619 = add nuw i32 %2574, 1
  %2620 = icmp eq i32 %2619, %2569
  br i1 %2620, label %2621, label %2572

; <label>:2621                                    ; preds = %2617
  br label %2622

; <label>:2622                                    ; preds = %2621, %2566
  %2623 = phi i32 [ %2567, %2566 ], [ %2618, %2621 ]
  %2624 = icmp eq i32 %2623, 1
  %2625 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 0
  %2626 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 0
  br i1 %2624, label %2627, label %2630

; <label>:2627                                    ; preds = %2622
  %2628 = load float, float* %2625, align 4
  %2629 = load float, float* %2626, align 4
  br label %2657

; <label>:2630                                    ; preds = %2622
  %2631 = load float, float* %2625, align 4
  %2632 = load float, float* %2626, align 4
  %2633 = fdiv fast float 1.000000e+00, %2632
  %2634 = fsub fast float %2631, %2633
  %2635 = icmp ugt i32 %2623, 1
  br i1 %2635, label %2636, label %2652

; <label>:2636                                    ; preds = %2630
  br label %2637

; <label>:2637                                    ; preds = %2637, %2636
  %2638 = phi float [ %2647, %2637 ], [ %2634, %2636 ]
  %2639 = phi float [ %2648, %2637 ], [ %2631, %2636 ]
  %2640 = phi i32 [ %2649, %2637 ], [ 1, %2636 ]
  %2641 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 %2640
  %2642 = load float, float* %2641, align 4
  %2643 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %2640
  %2644 = load float, float* %2643, align 4
  %2645 = fdiv fast float 1.000000e+00, %2644
  %2646 = fsub fast float %2642, %2645
  %2647 = call float @dx.op.binary.f32(i32 36, float %2638, float %2646)  ; FMin(a,b)
  %2648 = call float @dx.op.binary.f32(i32 35, float %2639, float %2642)  ; FMax(a,b)
  %2649 = add nuw i32 %2640, 1
  %2650 = icmp eq i32 %2649, %2623
  br i1 %2650, label %2651, label %2637

; <label>:2651                                    ; preds = %2637
  br label %2652

; <label>:2652                                    ; preds = %2651, %2630
  %2653 = phi float [ %2634, %2630 ], [ %2647, %2651 ]
  %2654 = phi float [ %2631, %2630 ], [ %2648, %2651 ]
  %2655 = fsub fast float %2654, %2653
  %2656 = fdiv fast float 1.000000e+00, %2655
  br label %2657

; <label>:2657                                    ; preds = %2652, %2627
  %2658 = phi float [ %2628, %2627 ], [ %2654, %2652 ]
  %2659 = phi float [ %2629, %2627 ], [ %2656, %2652 ]
  %2660 = fadd fast float %2361, %2658
  %2661 = fmul fast float %2660, %2659
  %2662 = call float @dx.op.unary.f32(i32 7, float %2661)  ; Saturate(value)
  %2663 = fmul fast float %2662, 2.000000e+00
  %2664 = fsub fast float 1.000000e+00, %2663
  %2665 = fmul fast float %2499, %2499
  %2666 = fsub fast float %2500, %2665
  %2667 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2666)  ; FMax(a,b)
  %2668 = fdiv fast float 1.000000e+00, %2667
  %2669 = fmul fast float %2500, %2499
  %2670 = fsub fast float %2501, %2669
  %2671 = fsub fast float %2664, %2499
  %2672 = fmul fast float %2664, %2664
  %2673 = fsub fast float %2672, %2500
  %2674 = fmul fast float %2668, %2670
  %2675 = fmul fast float %2674, %2671
  %2676 = fsub fast float %2673, %2675
  %2677 = fmul fast float %2500, %2500
  %2678 = fsub fast float %2502, %2677
  %2679 = fmul fast float %2670, %2670
  %2680 = fmul fast float %2679, %2668
  %2681 = fsub fast float %2678, %2680
  %2682 = fdiv fast float %2676, %2681
  %2683 = fmul fast float %2682, %2670
  %2684 = fsub fast float %2671, %2683
  %2685 = fmul fast float %2684, %2668
  %2686 = fmul fast float %2685, %2499
  %2687 = fsub fast float 1.000000e+00, %2686
  %2688 = fmul fast float %2682, %2500
  %2689 = fsub fast float %2687, %2688
  %2690 = fmul fast float %2685, %2685
  %2691 = fmul fast float %2682, 4.000000e+00
  %2692 = fmul fast float %2691, %2689
  %2693 = fsub fast float %2690, %2692
  %2694 = call float @dx.op.unary.f32(i32 24, float %2693)  ; Sqrt(value)
  %2695 = fcmp fast oge float %2685, 0.000000e+00
  %2696 = fsub fast float -0.000000e+00, %2694
  %2697 = select i1 %2695, float %2696, float %2694
  %2698 = fsub fast float %2697, %2685
  %2699 = fdiv fast float %2698, %2682
  %2700 = fdiv fast float %2689, %2698
  %2701 = fmul fast float %2699, 5.000000e-01
  %2702 = fmul fast float %2700, 2.000000e+00
  %2703 = select i1 %2695, float %2701, float %2702
  %2704 = select i1 %2695, float %2702, float %2701
  %2705 = call float @dx.op.binary.f32(i32 35, float %2703, float %2704)  ; FMax(a,b)
  %2706 = call float @dx.op.binary.f32(i32 36, float %2703, float %2704)  ; FMin(a,b)
  %2707 = fcmp fast ogt float %2664, %2705
  %2708 = fsub fast float %2664, %2706
  %2709 = fsub fast float %2664, %2705
  %2710 = fsub fast float %2705, %2706
  %2711 = select i1 %2707, float %2709, float %2710
  %2712 = fmul float %2708, %2711
  %2713 = select i1 %2707, float %2706, float %2664
  %2714 = fcmp fast ogt float %2664, %2706
  %2715 = fmul fast float %2713, %2705
  %2716 = fadd fast float %2713, %2705
  %2717 = fmul fast float %2716, %2499
  %2718 = fadd fast float %2715, %2500
  %2719 = fsub fast float %2718, %2717
  %2720 = fdiv fast float %2719, %2712
  %2721 = select i1 %2714, float %2720, float 0.000000e+00
  %2722 = fsub fast float 1.000000e+00, %2721
  %2723 = select i1 %2707, float %2722, float %2721
  %2724 = call float @dx.op.unary.f32(i32 7, float %2723)  ; Saturate(value)
  %2725 = extractvalue %dx.types.CBufRet.f32 %2484, 3
  %2726 = fmul fast float %2725, %2724
  %2727 = fsub fast float 1.000000e+00, %2726
  br label %2728

; <label>:2728                                    ; preds = %2657, %2369, %2334, %2330, %2296
  %2729 = phi float [ 1.000000e+00, %2296 ], [ %2727, %2657 ], [ 1.000000e+00, %2334 ], [ 1.000000e+00, %2369 ], [ 1.000000e+00, %2330 ]
  %2730 = fcmp fast ogt float %2326, 0.000000e+00
  br i1 %2730, label %2731, label %2737, !dx.controlflow.hints !129

; <label>:2731                                    ; preds = %2728
  %2732 = fadd fast float %2239, %2213
  %2733 = call float @dx.op.binary.f32(i32 35, float %2732, float 0.000000e+00)  ; FMax(a,b)
  %2734 = fadd fast float %2733, 0x3F10000000000000
  %2735 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %36, float %2228, float %2229, float undef, float undef, i32 0, i32 0, i32 undef, float %2734)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2736 = extractvalue %dx.types.ResRet.f32 %2735, 0
  br label %2737

; <label>:2737                                    ; preds = %2731, %2728
  %2738 = phi float [ %2736, %2731 ], [ 1.000000e+00, %2728 ]
  %2739 = fcmp fast ogt float %2324, 0.000000e+00
  br i1 %2739, label %2740, label %2746, !dx.controlflow.hints !130

; <label>:2740                                    ; preds = %2737
  %2741 = fadd fast float %2269, %2213
  %2742 = call float @dx.op.binary.f32(i32 35, float %2741, float 0.000000e+00)  ; FMax(a,b)
  %2743 = fadd fast float %2742, 0x3F10000000000000
  %2744 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %36, float %2220, float %2221, float undef, float undef, i32 0, i32 0, i32 undef, float %2743)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2745 = extractvalue %dx.types.ResRet.f32 %2744, 0
  br label %2746

; <label>:2746                                    ; preds = %2740, %2737
  %2747 = phi float [ %2745, %2740 ], [ 1.000000e+00, %2737 ]
  %2748 = fcmp fast ogt float %2323, 0.000000e+00
  br i1 %2748, label %2749, label %2756, !dx.controlflow.hints !131

; <label>:2749                                    ; preds = %2746
  %2750 = extractvalue %dx.types.CBufRet.f32 %2238, 0
  %2751 = fadd fast float %2750, %2213
  %2752 = call float @dx.op.binary.f32(i32 35, float %2751, float 0.000000e+00)  ; FMax(a,b)
  %2753 = fadd fast float %2752, 0x3F10000000000000
  %2754 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %36, float %2205, float %2209, float undef, float undef, i32 0, i32 0, i32 undef, float %2753)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2755 = extractvalue %dx.types.ResRet.f32 %2754, 0
  br label %2756

; <label>:2756                                    ; preds = %2749, %2746
  %2757 = phi float [ %2755, %2749 ], [ 1.000000e+00, %2746 ]
  %2758 = fsub fast float %2738, %2729
  %2759 = fmul fast float %2758, %2267
  %2760 = fadd fast float %2759, %2729
  %2761 = fsub fast float %2747, %2760
  %2762 = fmul fast float %2761, %2297
  %2763 = fadd fast float %2762, %2760
  %2764 = fsub fast float %2757, %2763
  %2765 = fmul fast float %2764, %2323
  %2766 = fadd fast float %2765, %2763
  %2767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %2768 = extractvalue %dx.types.CBufRet.f32 %2767, 2
  %2769 = fcmp fast ogt float %2768, 0.000000e+00
  br i1 %2769, label %2770, label %2807, !dx.controlflow.hints !132

; <label>:2770                                    ; preds = %2756
  %2771 = fcmp fast ugt float %2768, 0.000000e+00
  br i1 %2771, label %2772, label %2804

; <label>:2772                                    ; preds = %2770
  %2773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %2774 = extractvalue %dx.types.CBufRet.f32 %2773, 0
  %2775 = extractvalue %dx.types.CBufRet.f32 %2773, 1
  %2776 = extractvalue %dx.types.CBufRet.f32 %2773, 2
  %2777 = extractvalue %dx.types.CBufRet.f32 %2773, 3
  %2778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %2779 = extractvalue %dx.types.CBufRet.f32 %2778, 0
  %2780 = extractvalue %dx.types.CBufRet.f32 %2778, 1
  %2781 = extractvalue %dx.types.CBufRet.f32 %2778, 2
  %2782 = extractvalue %dx.types.CBufRet.f32 %2778, 3
  %2783 = extractvalue %dx.types.CBufRet.f32 %2767, 0
  %2784 = extractvalue %dx.types.CBufRet.f32 %2767, 1
  %2785 = extractvalue %dx.types.CBufRet.f32 %572, 2
  %2786 = fadd fast float %573, %2182
  %2787 = fadd fast float %574, %2183
  %2788 = fadd fast float %2785, %2184
  %2789 = fmul fast float %2786, %2774
  %2790 = call float @dx.op.tertiary.f32(i32 46, float %2775, float %2787, float %2789)  ; FMad(a,b,c)
  %2791 = call float @dx.op.tertiary.f32(i32 46, float %2776, float %2788, float %2790)  ; FMad(a,b,c)
  %2792 = fadd fast float %2791, %2777
  %2793 = fmul fast float %2786, %2779
  %2794 = call float @dx.op.tertiary.f32(i32 46, float %2780, float %2787, float %2793)  ; FMad(a,b,c)
  %2795 = call float @dx.op.tertiary.f32(i32 46, float %2781, float %2788, float %2794)  ; FMad(a,b,c)
  %2796 = fadd fast float %2795, %2782
  %2797 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %32, float %2792, float %2796, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2798 = extractvalue %dx.types.ResRet.f32 %2797, 0
  %2799 = fmul fast float %2798, %2784
  %2800 = fadd fast float %2799, %2783
  %2801 = call float @dx.op.unary.f32(i32 7, float %2800)  ; Saturate(value)
  %2802 = fmul fast float %2801, %2768
  %2803 = fsub fast float 1.000000e+00, %2802
  br label %2804

; <label>:2804                                    ; preds = %2772, %2770
  %2805 = phi float [ %2803, %2772 ], [ 1.000000e+00, %2770 ]
  %2806 = fmul fast float %2805, %2766
  br label %2807

; <label>:2807                                    ; preds = %2804, %2756, %2162
  %2808 = phi float [ 1.000000e+00, %2162 ], [ %2806, %2804 ], [ %2766, %2756 ]
  %2809 = call float @dx.op.binary.f32(i32 36, float %2808, float %2808)  ; FMin(a,b)
  %2810 = call float @dx.op.binary.f32(i32 36, float %2808, float %2809)  ; FMin(a,b)
  %2811 = fcmp fast ogt float %2810, 0.000000e+00
  br i1 %2811, label %2812, label %2969, !dx.controlflow.hints !133

; <label>:2812                                    ; preds = %2807
  %2813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2814 = extractvalue %dx.types.CBufRet.f32 %2813, 0
  %2815 = extractvalue %dx.types.CBufRet.f32 %2813, 1
  %2816 = extractvalue %dx.types.CBufRet.f32 %2813, 2
  %2817 = extractvalue %dx.types.CBufRet.f32 %2813, 3
  %2818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2819 = extractvalue %dx.types.CBufRet.f32 %2818, 0
  %2820 = extractvalue %dx.types.CBufRet.f32 %2818, 1
  %2821 = extractvalue %dx.types.CBufRet.f32 %2818, 2
  %2822 = extractvalue %dx.types.CBufRet.f32 %2818, 3
  %2823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2824 = extractvalue %dx.types.CBufRet.f32 %2823, 0
  %2825 = extractvalue %dx.types.CBufRet.f32 %2823, 1
  %2826 = extractvalue %dx.types.CBufRet.f32 %2823, 2
  %2827 = extractvalue %dx.types.CBufRet.f32 %2823, 3
  %2828 = fmul fast float %2814, %2182
  %2829 = call float @dx.op.tertiary.f32(i32 46, float %2183, float %2815, float %2828)  ; FMad(a,b,c)
  %2830 = call float @dx.op.tertiary.f32(i32 46, float %2184, float %2816, float %2829)  ; FMad(a,b,c)
  %2831 = fadd fast float %2830, %2817
  %2832 = fmul fast float %2819, %2182
  %2833 = call float @dx.op.tertiary.f32(i32 46, float %2183, float %2820, float %2832)  ; FMad(a,b,c)
  %2834 = call float @dx.op.tertiary.f32(i32 46, float %2184, float %2821, float %2833)  ; FMad(a,b,c)
  %2835 = fadd fast float %2834, %2822
  %2836 = fmul fast float %2824, %2182
  %2837 = call float @dx.op.tertiary.f32(i32 46, float %2183, float %2825, float %2836)  ; FMad(a,b,c)
  %2838 = call float @dx.op.tertiary.f32(i32 46, float %2184, float %2826, float %2837)  ; FMad(a,b,c)
  %2839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %2840 = extractvalue %dx.types.CBufRet.f32 %2839, 0
  %2841 = extractvalue %dx.types.CBufRet.f32 %2839, 1
  %2842 = extractvalue %dx.types.CBufRet.f32 %2839, 3
  %2843 = fmul fast float %2842, %2831
  %2844 = fmul fast float %2842, %2835
  %2845 = fadd fast float %2843, %2840
  %2846 = fadd fast float %2844, %2841
  %2847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %2848 = extractvalue %dx.types.CBufRet.f32 %2847, 0
  %2849 = extractvalue %dx.types.CBufRet.f32 %2847, 1
  %2850 = fsub fast float %2845, %2848
  %2851 = fsub fast float %2846, %2849
  %2852 = fcmp fast olt float %2850, 0.000000e+00
  %2853 = fcmp fast olt float %2851, 0.000000e+00
  %2854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %2855 = extractvalue %dx.types.CBufRet.f32 %2854, 0
  %2856 = extractvalue %dx.types.CBufRet.f32 %2854, 1
  %2857 = extractvalue %dx.types.CBufRet.f32 %2854, 2
  %2858 = extractvalue %dx.types.CBufRet.f32 %2854, 3
  %2859 = select i1 %2852, float %2855, float %2857
  %2860 = select i1 %2853, float %2856, float %2858
  %2861 = fmul fast float %2859, %2850
  %2862 = fmul fast float %2860, %2851
  %2863 = call float @dx.op.unary.f32(i32 6, float %2861)  ; FAbs(value)
  %2864 = call float @dx.op.unary.f32(i32 6, float %2862)  ; FAbs(value)
  %2865 = extractvalue %dx.types.CBufRet.f32 %2177, 0
  %2866 = call float @dx.op.binary.f32(i32 35, float %2863, float %2864)  ; FMax(a,b)
  %2867 = fsub fast float %2865, %2866
  %2868 = call float @dx.op.unary.f32(i32 7, float %2867)  ; Saturate(value)
  %2869 = fcmp fast ogt float %2868, 0.000000e+00
  br i1 %2869, label %2870, label %2911, !dx.controlflow.hints !134

; <label>:2870                                    ; preds = %2812
  %2871 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %35, float %2845, float %2846, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2872 = extractvalue %dx.types.ResRet.f32 %2871, 1
  %2873 = fcmp fast ogt float %2872, 0.000000e+00
  br i1 %2873, label %2874, label %2907

; <label>:2874                                    ; preds = %2870
  %2875 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %35, float %2845, float %2846, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2876 = extractvalue %dx.types.ResRet.f32 %2875, 0
  %2877 = extractvalue %dx.types.ResRet.f32 %2875, 1
  %2878 = extractvalue %dx.types.ResRet.f32 %2875, 2
  %2879 = extractvalue %dx.types.ResRet.f32 %2875, 3
  %2880 = fsub fast float 1.000000e+00, %2827
  %2881 = fsub fast float %2880, %2838
  %2882 = fmul fast float %2881, 0x400921FB60000000
  %2883 = fadd fast float %2882, 0x3FF921FB60000000
  %2884 = call float @dx.op.unary.f32(i32 13, float %2883)  ; Sin(value)
  %2885 = fadd fast float %2884, -1.000000e+00
  %2886 = fmul fast float %2885, 0x3FD45F3060000000
  %2887 = fmul fast float %2881, 0x401921FB60000000
  %2888 = fadd fast float %2887, 0x400921FB60000000
  %2889 = call float @dx.op.unary.f32(i32 13, float %2888)  ; Sin(value)
  %2890 = fadd fast float %2889, 0x3E7777A5C0000000
  %2891 = fmul fast float %2890, 0x3FC45F3060000000
  %2892 = fmul fast float %2881, 0x4022D97C80000000
  %2893 = fadd fast float %2892, 0x4012D97C80000000
  %2894 = call float @dx.op.unary.f32(i32 13, float %2893)  ; Sin(value)
  %2895 = fadd fast float %2894, 1.000000e+00
  %2896 = fmul fast float %2895, 0x3FBB2995E0000000
  %2897 = fmul fast float %2881, 0x402921FB60000000
  %2898 = fadd fast float %2897, 0x401921FB60000000
  %2899 = call float @dx.op.unary.f32(i32 13, float %2898)  ; Sin(value)
  %2900 = fadd fast float %2899, 0xBE8777A5C0000000
  %2901 = fmul fast float %2900, 0x3FB45F3060000000
  %2902 = call float @dx.op.dot4.f32(i32 56, float %2876, float %2877, float %2878, float %2879, float %2886, float %2891, float %2896, float %2901)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2903 = fmul fast float %2902, 0xBFF7154760000000
  %2904 = call float @dx.op.unary.f32(i32 21, float %2903)  ; Exp(value)
  %2905 = call float @dx.op.unary.f32(i32 7, float %2904)  ; Saturate(value)
  %2906 = fadd float %2905, -1.000000e+00
  br label %2907

; <label>:2907                                    ; preds = %2874, %2870
  %2908 = phi float [ %2906, %2874 ], [ 0.000000e+00, %2870 ]
  %2909 = fmul fast float %2908, %2868
  %2910 = fadd fast float %2909, 1.000000e+00
  br label %2911

; <label>:2911                                    ; preds = %2907, %2812
  %2912 = phi float [ %2910, %2907 ], [ 1.000000e+00, %2812 ]
  %2913 = fmul fast float %2912, %2808
  %2914 = extractvalue %dx.types.CBufRet.f32 %572, 2
  %2915 = fadd fast float %573, %416
  %2916 = fadd fast float %574, %417
  %2917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %2918 = extractvalue %dx.types.CBufRet.f32 %2917, 1
  %2919 = fsub fast float -0.000000e+00, %2915
  %2920 = fsub fast float -0.000000e+00, %2916
  %2921 = fsub fast float %551, %2914
  %2922 = fadd fast float %2921, %2918
  %2923 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2919, float %2920, float %2922)  ; Dot3(ax,ay,az,bx,by,bz)
  %2924 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2163, float %2164, float %2165)  ; Dot3(ax,ay,az,bx,by,bz)
  %2925 = fdiv fast float 1.000000e+00, %2924
  %2926 = fmul fast float %2925, %2923
  %2927 = fmul fast float %2163, %2926
  %2928 = fmul fast float %2164, %2926
  %2929 = fadd fast float %2927, %2915
  %2930 = fadd fast float %2928, %2916
  %2931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %2932 = extractvalue %dx.types.CBufRet.f32 %2931, 0
  %2933 = extractvalue %dx.types.CBufRet.f32 %2931, 1
  %2934 = fsub fast float %2929, %2932
  %2935 = fsub fast float %2930, %2933
  %2936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %2937 = extractvalue %dx.types.CBufRet.f32 %2936, 2
  %2938 = extractvalue %dx.types.CBufRet.f32 %2936, 3
  %2939 = fmul fast float %2934, %2937
  %2940 = fmul fast float %2935, %2938
  %2941 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %2942 = extractvalue %dx.types.CBufRet.i32 %2941, 3
  %2943 = icmp eq i32 %2942, 0
  br i1 %2943, label %2949, label %2944

; <label>:2944                                    ; preds = %2911
  %2945 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %34, float %2939, float %2940, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2946 = extractvalue %dx.types.ResRet.f32 %2945, 0
  %2947 = extractvalue %dx.types.ResRet.f32 %2945, 1
  %2948 = extractvalue %dx.types.ResRet.f32 %2945, 2
  br label %2954

; <label>:2949                                    ; preds = %2911
  %2950 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %35, float %2939, float %2940, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2951 = extractvalue %dx.types.ResRet.f32 %2950, 0
  %2952 = extractvalue %dx.types.ResRet.f32 %2950, 1
  %2953 = extractvalue %dx.types.ResRet.f32 %2950, 2
  br label %2954

; <label>:2954                                    ; preds = %2949, %2944
  %2955 = phi float [ %2946, %2944 ], [ %2951, %2949 ]
  %2956 = phi float [ %2947, %2944 ], [ %2952, %2949 ]
  %2957 = phi float [ %2948, %2944 ], [ %2953, %2949 ]
  %2958 = extractvalue %dx.types.CBufRet.f32 %2917, 2
  %2959 = fmul fast float %2958, %2955
  %2960 = extractvalue %dx.types.CBufRet.f32 %2917, 0
  %2961 = fsub fast float %2926, %2960
  %2962 = fsub fast float %2961, %2959
  %2963 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2962)  ; FMax(a,b)
  %2964 = fmul fast float %2963, %2956
  %2965 = call float @dx.op.binary.f32(i32 36, float %2957, float %2964)  ; FMin(a,b)
  %2966 = fmul fast float %2965, 0xBFF7154760000000
  %2967 = call float @dx.op.unary.f32(i32 21, float %2966)  ; Exp(value)
  %2968 = fmul fast float %2913, %2967
  br label %2969

; <label>:2969                                    ; preds = %2954, %2807
  %2970 = phi float [ %2968, %2954 ], [ %2808, %2807 ]
  %2971 = call float @dx.op.binary.f32(i32 36, float %2970, float %2970)  ; FMin(a,b)
  %2972 = call float @dx.op.binary.f32(i32 36, float %2970, float %2971)  ; FMin(a,b)
  %2973 = fcmp fast ogt float %2972, 0.000000e+00
  br i1 %2973, label %2974, label %3101, !dx.controlflow.hints !135

; <label>:2974                                    ; preds = %2969
  %2975 = fmul fast float %2970, %2174
  %2976 = fmul fast float %2970, %2175
  %2977 = fmul fast float %2970, %2176
  %2978 = fsub fast float %2163, %554
  %2979 = fsub fast float %2164, %555
  %2980 = fsub fast float %2165, %556
  %2981 = call float @dx.op.dot3.f32(i32 55, float %2978, float %2979, float %2980, float %2978, float %2979, float %2980)  ; Dot3(ax,ay,az,bx,by,bz)
  %2982 = call float @dx.op.unary.f32(i32 25, float %2981)  ; Rsqrt(value)
  %2983 = fmul fast float %2982, %2978
  %2984 = fmul fast float %2982, %2979
  %2985 = fmul fast float %2982, %2980
  %2986 = call float @dx.op.dot3.f32(i32 55, float %2163, float %2164, float %2165, float %338, float %339, float %340)  ; Dot3(ax,ay,az,bx,by,bz)
  %2987 = call float @dx.op.dot3.f32(i32 55, float %557, float %558, float %559, float %2983, float %2984, float %2985)  ; Dot3(ax,ay,az,bx,by,bz)
  %2988 = call float @dx.op.unary.f32(i32 7, float %2986)  ; Saturate(value)
  %2989 = fmul fast float %2988, %2988
  %2990 = fmul fast float %2989, 0x47DE623840000000
  %2991 = call float @dx.op.unary.f32(i32 7, float %2990)  ; Saturate(value)
  %2992 = fmul fast float %2991, %2988
  %2993 = call float @dx.op.dot3.f32(i32 55, float %338, float %339, float %340, float %2983, float %2984, float %2985)  ; Dot3(ax,ay,az,bx,by,bz)
  %2994 = fmul fast float %2993, %2993
  %2995 = call float @dx.op.unary.f32(i32 6, float %2986)  ; FAbs(value)
  %2996 = fsub fast float 1.000000e+00, %350
  %2997 = call float @dx.op.binary.f32(i32 35, float %2996, float 0x3F847AE140000000)  ; FMax(a,b)
  %2998 = fmul fast float %2997, %2997
  %2999 = fmul fast float %2998, %2998
  %3000 = fsub fast float 1.000000e+00, %2999
  %3001 = fmul fast float %562, %562
  %3002 = fmul fast float %3001, %3000
  %3003 = fadd fast float %3002, %2999
  %3004 = bitcast float %3003 to i32
  %3005 = ashr i32 %3004, 1
  %3006 = add nsw i32 %3005, 532487669
  %3007 = bitcast i32 %3006 to float
  %3008 = fadd fast float %3007, %562
  %3009 = fmul fast float %2999, %2994
  %3010 = fsub fast float 1.000000e+00, %2994
  %3011 = fadd fast float %3010, %3009
  %3012 = fmul fast float %2995, %2995
  %3013 = fmul fast float %3012, %3000
  %3014 = fadd fast float %3013, %2999
  %3015 = bitcast float %3014 to i32
  %3016 = ashr i32 %3015, 1
  %3017 = add nsw i32 %3016, 532487669
  %3018 = bitcast i32 %3017 to float
  %3019 = fadd fast float %3018, %2995
  %3020 = fmul fast float %3011, %3011
  %3021 = fmul fast float %3020, %3008
  %3022 = fmul fast float %3021, %3019
  %3023 = fdiv fast float 0x3FF0A00000000000, %3022
  %3024 = fmul fast float %3023, %2999
  %3025 = call float @dx.op.unary.f32(i32 6, float %2987)  ; FAbs(value)
  %3026 = fsub fast float 1.000000e+00, %3025
  %3027 = bitcast float %3026 to i32
  %3028 = sitofp i32 %3027 to float
  %3029 = fmul fast float %3028, 5.000000e+00
  %3030 = fadd fast float %3029, 0xC1EFBF8940000000
  %3031 = fptosi float %3030 to i32
  %3032 = bitcast i32 %3031 to float
  %3033 = fsub fast float 1.000000e+00, %539
  %3034 = fsub fast float 1.000000e+00, %540
  %3035 = fsub fast float 1.000000e+00, %560
  %3036 = fmul fast float %3032, %3033
  %3037 = fmul fast float %3032, %3034
  %3038 = fmul fast float %3032, %3035
  %3039 = fadd fast float %3036, %539
  %3040 = fadd fast float %3037, %540
  %3041 = fadd fast float %3038, %560
  %3042 = fmul fast float %2986, 9.843750e-01
  %3043 = fadd fast float %3042, 7.812500e-03
  %3044 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %35, float %3043, float %2134, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3045 = extractvalue %dx.types.ResRet.f32 %3044, 2
  %3046 = extractvalue %dx.types.ResRet.f32 %3044, 3
  %3047 = fmul fast float %3045, %539
  %3048 = fmul fast float %3045, %540
  %3049 = fmul fast float %3045, %560
  %3050 = fadd fast float %3047, %3046
  %3051 = fadd fast float %3048, %3046
  %3052 = fadd fast float %3049, %3046
  %3053 = call float @dx.op.binary.f32(i32 35, float %3051, float %3052)  ; FMax(a,b)
  %3054 = call float @dx.op.binary.f32(i32 35, float %3050, float %3053)  ; FMax(a,b)
  %3055 = fsub fast float 1.000000e+00, %3054
  %3056 = fsub fast float -0.000000e+00, %338
  %3057 = fsub fast float -0.000000e+00, %339
  %3058 = fsub fast float -0.000000e+00, %340
  %3059 = call float @dx.op.dot3.f32(i32 55, float %2163, float %2164, float %2165, float %3056, float %3057, float %3058)  ; Dot3(ax,ay,az,bx,by,bz)
  %3060 = call float @dx.op.unary.f32(i32 7, float %3059)  ; Saturate(value)
  %3061 = fmul fast float %3060, 9.843750e-01
  %3062 = fadd fast float %3061, 7.812500e-03
  %3063 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %35, float %3062, float %2134, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3064 = extractvalue %dx.types.ResRet.f32 %3063, 2
  %3065 = extractvalue %dx.types.ResRet.f32 %3063, 3
  %3066 = fmul fast float %3064, %539
  %3067 = fmul fast float %3064, %540
  %3068 = fmul fast float %3064, %560
  %3069 = fadd fast float %3066, %3065
  %3070 = fadd fast float %3067, %3065
  %3071 = fadd fast float %3068, %3065
  %3072 = call float @dx.op.binary.f32(i32 35, float %3070, float %3071)  ; FMax(a,b)
  %3073 = call float @dx.op.binary.f32(i32 35, float %3069, float %3072)  ; FMax(a,b)
  %3074 = fsub fast float 1.000000e+00, %3073
  %3075 = fmul fast float %3074, %3060
  %3076 = fmul fast float %3075, %357
  %3077 = fmul fast float %3075, %358
  %3078 = fmul fast float %3075, %359
  %3079 = fmul fast float %3055, %2992
  %3080 = fadd fast float %3076, %3079
  %3081 = fadd fast float %3077, %3079
  %3082 = fadd fast float %3078, %3079
  %3083 = fmul fast float %3080, %2975
  %3084 = fmul fast float %3081, %2976
  %3085 = fmul fast float %3082, %2977
  %3086 = fadd fast float %3083, %2154
  %3087 = fadd fast float %3084, %2156
  %3088 = fadd fast float %3085, %2158
  %3089 = fmul fast float %2992, %2975
  %3090 = fmul fast float %3089, %3024
  %3091 = fmul fast float %3090, %3039
  %3092 = fmul fast float %2992, %2976
  %3093 = fmul fast float %3092, %3024
  %3094 = fmul fast float %3093, %3040
  %3095 = fmul fast float %2992, %2977
  %3096 = fmul fast float %3095, %3024
  %3097 = fmul fast float %3096, %3041
  %3098 = fadd fast float %3091, %2147
  %3099 = fadd fast float %3094, %2148
  %3100 = fadd fast float %3097, %2149
  br label %3101

; <label>:3101                                    ; preds = %2974, %2969, %2058
  %3102 = phi float [ %2147, %2058 ], [ %2147, %2969 ], [ %3098, %2974 ]
  %3103 = phi float [ %2148, %2058 ], [ %2148, %2969 ], [ %3099, %2974 ]
  %3104 = phi float [ %2149, %2058 ], [ %2149, %2969 ], [ %3100, %2974 ]
  %3105 = phi float [ %2154, %2058 ], [ %2154, %2969 ], [ %3086, %2974 ]
  %3106 = phi float [ %2156, %2058 ], [ %2156, %2969 ], [ %3087, %2974 ]
  %3107 = phi float [ %2158, %2058 ], [ %2158, %2969 ], [ %3088, %2974 ]
  %3108 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3109 = extractvalue %dx.types.CBufRet.i32 %3108, 0
  %3110 = icmp eq i32 %3109, 0
  br i1 %3110, label %3609, label %3111

; <label>:3111                                    ; preds = %3101
  %3112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3113 = extractvalue %dx.types.CBufRet.f32 %3112, 2
  %3114 = extractvalue %dx.types.CBufRet.f32 %3112, 3
  %3115 = fmul fast float %3113, %84
  %3116 = fmul fast float %3114, %85
  %3117 = fptoui float %3115 to i32
  %3118 = fptoui float %3116 to i32
  %3119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3120 = extractvalue %dx.types.CBufRet.f32 %3119, 0
  %3121 = extractvalue %dx.types.CBufRet.f32 %3119, 2
  %3122 = extractvalue %dx.types.CBufRet.f32 %3119, 3
  %3123 = fadd fast float %382, -4.000000e+00
  %3124 = call float @dx.op.binary.f32(i32 35, float %3123, float 0.000000e+00)  ; FMax(a,b)
  %3125 = fadd fast float %3124, %3120
  %3126 = fmul fast float %3125, %3121
  %3127 = call float @dx.op.unary.f32(i32 23, float %3126)  ; Log(value)
  %3128 = fmul fast float %3127, %3122
  %3129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3130 = extractvalue %dx.types.CBufRet.f32 %3129, 2
  %3131 = fmul fast float %3128, %3130
  %3132 = call float @dx.op.unary.f32(i32 7, float %3131)  ; Saturate(value)
  %3133 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3134 = extractvalue %dx.types.CBufRet.i32 %3133, 1
  %3135 = add i32 %3134, -1
  %3136 = uitofp i32 %3134 to float
  %3137 = fmul fast float %3136, %3132
  %3138 = fptoui float %3137 to i32
  %3139 = call i32 @dx.op.binary.i32(i32 40, i32 %3138, i32 %3135)  ; UMin(a,b)
  %3140 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3141 = extractvalue %dx.types.CBufRet.i32 %3140, 2
  %3142 = extractvalue %dx.types.CBufRet.i32 %3140, 3
  %3143 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3118, i32 %3141, i32 %3117)  ; UMad(a,b,c)
  %3144 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3139, i32 %3142, i32 %3143)  ; UMad(a,b,c)
  %3145 = add nsw i32 %3109, -1
  %3146 = call i32 @dx.op.binary.i32(i32 37, i32 %3145, i32 0)  ; IMax(a,b)
  %3147 = call float @dx.op.binary.f32(i32 35, float %382, float 0.000000e+00)  ; FMax(a,b)
  %3148 = fptoui float %3147 to i32
  %3149 = lshr i32 %3148, 5
  %3150 = call i32 @dx.op.binary.i32(i32 40, i32 %3149, i32 8191)  ; UMin(a,b)
  %3151 = shl i32 %3150, 2
  %3152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %3151, i32 undef)  ; BufferLoad(srv,index,wot)
  %3153 = extractvalue %dx.types.ResRet.i32 %3152, 0
  %3154 = lshr i32 %3153, 16
  %3155 = and i32 %3153, 65535
  %3156 = lshr i32 %3153, 21
  %3157 = lshr i32 %3155, 5
  %3158 = call i32 @dx.op.binary.i32(i32 40, i32 %3157, i32 %3146)  ; UMin(a,b)
  %3159 = icmp ugt i32 %3156, %3158
  br i1 %3159, label %3609, label %3160

; <label>:3160                                    ; preds = %3111
  br label %3161

; <label>:3161                                    ; preds = %3599, %3160
  %3162 = phi i32 [ %3606, %3599 ], [ %3156, %3160 ]
  %3163 = phi float [ %3600, %3599 ], [ %3102, %3160 ]
  %3164 = phi float [ %3601, %3599 ], [ %3103, %3160 ]
  %3165 = phi float [ %3602, %3599 ], [ %3104, %3160 ]
  %3166 = phi float [ %3603, %3599 ], [ %3105, %3160 ]
  %3167 = phi float [ %3604, %3599 ], [ %3106, %3160 ]
  %3168 = phi float [ %3605, %3599 ], [ %3107, %3160 ]
  %3169 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3170 = extractvalue %dx.types.CBufRet.i32 %3169, 0
  %3171 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3144, i32 %3170, i32 %3162)  ; UMad(a,b,c)
  %3172 = shl i32 %3171, 2
  %3173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %3172, i32 undef)  ; BufferLoad(srv,index,wot)
  %3174 = extractvalue %dx.types.ResRet.i32 %3173, 0
  %3175 = shl i32 %3162, 5
  %3176 = sub nsw i32 %3154, %3175
  %3177 = call i32 @dx.op.binary.i32(i32 37, i32 %3176, i32 0)  ; IMax(a,b)
  %3178 = call i32 @dx.op.binary.i32(i32 38, i32 %3177, i32 31)  ; IMin(a,b)
  %3179 = sub nsw i32 1, %3154
  %3180 = add nsw i32 %3179, %3155
  %3181 = call i32 @dx.op.binary.i32(i32 37, i32 %3180, i32 0)  ; IMax(a,b)
  %3182 = call i32 @dx.op.binary.i32(i32 38, i32 %3181, i32 32)  ; IMin(a,b)
  %3183 = and i32 %3182, 31
  %3184 = shl i32 -1, %3183
  %3185 = xor i32 %3184, -1
  %3186 = and i32 %3178, 31
  %3187 = shl i32 %3185, %3186
  %3188 = icmp eq i32 %3182, 32
  %3189 = select i1 %3188, i32 -1, i32 %3187
  %3190 = and i32 %3189, %3174
  %3191 = icmp eq i32 %3190, 0
  br i1 %3191, label %3599, label %3192

; <label>:3192                                    ; preds = %3161
  br label %3193

; <label>:3193                                    ; preds = %3327, %3192
  %3194 = phi i32 [ %3205, %3327 ], [ %3190, %3192 ]
  %3195 = phi float [ %3328, %3327 ], [ %3163, %3192 ]
  %3196 = phi float [ %3329, %3327 ], [ %3164, %3192 ]
  %3197 = phi float [ %3330, %3327 ], [ %3165, %3192 ]
  %3198 = phi float [ %3331, %3327 ], [ %3166, %3192 ]
  %3199 = phi float [ %3332, %3327 ], [ %3167, %3192 ]
  %3200 = phi float [ %3333, %3327 ], [ %3168, %3192 ]
  %3201 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3194)  ; FirstbitLo(value)
  %3202 = add i32 %3201, %3175
  %3203 = and i32 %3201, 31
  %3204 = shl i32 1, %3203
  %3205 = xor i32 %3204, %3194
  %3206 = mul i32 %3202, 112
  %3207 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3206, i32 undef)  ; BufferLoad(srv,index,wot)
  %3208 = extractvalue %dx.types.ResRet.f32 %3207, 0
  %3209 = extractvalue %dx.types.ResRet.f32 %3207, 1
  %3210 = extractvalue %dx.types.ResRet.f32 %3207, 2
  %3211 = or i32 %3206, 12
  %3212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3211, i32 undef)  ; BufferLoad(srv,index,wot)
  %3213 = extractvalue %dx.types.ResRet.f32 %3212, 0
  %3214 = add i32 %3206, 16
  %3215 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3214, i32 undef)  ; BufferLoad(srv,index,wot)
  %3216 = extractvalue %dx.types.ResRet.f32 %3215, 0
  %3217 = extractvalue %dx.types.ResRet.f32 %3215, 1
  %3218 = extractvalue %dx.types.ResRet.f32 %3215, 2
  %3219 = add i32 %3206, 28
  %3220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3219, i32 undef)  ; BufferLoad(srv,index,wot)
  %3221 = extractvalue %dx.types.ResRet.i32 %3220, 0
  %3222 = add i32 %3206, 44
  %3223 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3222, i32 undef)  ; BufferLoad(srv,index,wot)
  %3224 = extractvalue %dx.types.ResRet.f32 %3223, 0
  %3225 = add i32 %3206, 48
  %3226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3225, i32 undef)  ; BufferLoad(srv,index,wot)
  %3227 = extractvalue %dx.types.ResRet.f32 %3226, 0
  %3228 = extractvalue %dx.types.ResRet.f32 %3226, 1
  %3229 = extractvalue %dx.types.ResRet.f32 %3226, 2
  %3230 = extractvalue %dx.types.ResRet.f32 %3226, 3
  %3231 = add i32 %3206, 64
  %3232 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3231, i32 undef)  ; BufferLoad(srv,index,wot)
  %3233 = extractvalue %dx.types.ResRet.f32 %3232, 0
  %3234 = extractvalue %dx.types.ResRet.f32 %3232, 1
  %3235 = extractvalue %dx.types.ResRet.f32 %3232, 2
  %3236 = extractvalue %dx.types.ResRet.f32 %3232, 3
  %3237 = add i32 %3206, 80
  %3238 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3237, i32 undef)  ; BufferLoad(srv,index,wot)
  %3239 = extractvalue %dx.types.ResRet.f32 %3238, 1
  %3240 = extractvalue %dx.types.ResRet.f32 %3238, 2
  %3241 = add i32 %3206, 92
  %3242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3241, i32 undef)  ; BufferLoad(srv,index,wot)
  %3243 = extractvalue %dx.types.ResRet.i32 %3242, 0
  %3244 = call float @dx.op.dot3.f32(i32 55, float %3208, float %3209, float %3210, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3245 = select i1 %143, float %3239, float %3208
  %3246 = select i1 %143, float %3244, float %3209
  %3247 = select i1 %143, float %3240, float %3210
  %3248 = and i32 %3243, 65535
  %3249 = uitofp i32 %3248 to float
  %3250 = lshr i32 %3243, 16
  %3251 = uitofp i32 %3250 to float
  %3252 = and i32 %3221, 65535
  %3253 = and i32 %3221, 50331648
  %3254 = icmp eq i32 %3253, 33554432
  %3255 = fsub fast float %3227, %416
  %3256 = fsub fast float %3228, %417
  %3257 = fsub fast float %3229, %418
  %3258 = call float @dx.op.dot3.f32(i32 55, float %3255, float %3256, float %3257, float %3255, float %3256, float %3257)  ; Dot3(ax,ay,az,bx,by,bz)
  %3259 = call float @dx.op.unary.f32(i32 24, float %3258)  ; Sqrt(value)
  %3260 = fdiv fast float 1.000000e+00, %3259
  %3261 = fmul fast float %3260, %3255
  %3262 = fmul fast float %3260, %3256
  %3263 = fmul fast float %3260, %3257
  %3264 = fadd fast float %3259, %3213
  %3265 = fdiv fast float 1.000000e+00, %3264
  %3266 = fmul float %3224, %3265
  %3267 = fmul float %3266, %3266
  %3268 = call float @dx.op.unary.f32(i32 7, float %3267)  ; Saturate(value)
  br i1 %3254, label %3269, label %3290

; <label>:3269                                    ; preds = %3193
  %3270 = fmul fast float %3235, %3216
  %3271 = fmul fast float %3235, %3217
  %3272 = fmul fast float %3235, %3218
  %3273 = fadd fast float %3255, %3270
  %3274 = fadd fast float %3256, %3271
  %3275 = fadd fast float %3257, %3272
  %3276 = call float @dx.op.dot3.f32(i32 55, float %3273, float %3274, float %3275, float %3273, float %3274, float %3275)  ; Dot3(ax,ay,az,bx,by,bz)
  %3277 = call float @dx.op.unary.f32(i32 25, float %3276)  ; Rsqrt(value)
  %3278 = fmul fast float %3277, %3273
  %3279 = fmul fast float %3277, %3274
  %3280 = fmul fast float %3277, %3275
  %3281 = fsub fast float %416, %3227
  %3282 = fsub fast float %417, %3228
  %3283 = fsub fast float %418, %3229
  %3284 = fsub fast float -0.000000e+00, %3281
  %3285 = fsub fast float -0.000000e+00, %3282
  %3286 = fsub fast float -0.000000e+00, %3283
  %3287 = call float @dx.op.dot3.f32(i32 55, float %3284, float %3285, float %3286, float %3216, float %3217, float %3218)  ; Dot3(ax,ay,az,bx,by,bz)
  %3288 = fcmp fast ogt float %3287, 0.000000e+00
  %3289 = uitofp i1 %3288 to float
  br label %3290

; <label>:3290                                    ; preds = %3269, %3193
  %3291 = phi float [ %3289, %3269 ], [ 1.000000e+00, %3193 ]
  %3292 = phi float [ %3278, %3269 ], [ %3261, %3193 ]
  %3293 = phi float [ %3279, %3269 ], [ %3262, %3193 ]
  %3294 = phi float [ %3280, %3269 ], [ %3263, %3193 ]
  %3295 = call float @dx.op.dot3.f32(i32 55, float %3216, float %3217, float %3218, float %3292, float %3293, float %3294)  ; Dot3(ax,ay,az,bx,by,bz)
  %3296 = fmul fast float %3295, %3295
  %3297 = call float @dx.op.unary.f32(i32 7, float %3296)  ; Saturate(value)
  %3298 = fsub fast float 1.000000e+00, %3297
  %3299 = fmul fast float %3298, 5.000000e-01
  %3300 = fcmp fast ogt float %3295, 0.000000e+00
  %3301 = fsub fast float 1.000000e+00, %3299
  %3302 = select i1 %3300, float %3299, float %3301
  %3303 = fmul fast float %3302, %3251
  %3304 = fadd fast float %3303, %3249
  %3305 = fmul fast float %3304, 0x3EF0001000000000
  %3306 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %35, float %3305, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3307 = extractvalue %dx.types.ResRet.f32 %3306, 0
  %3308 = fmul fast float %3295, %3233
  %3309 = fadd fast float %3308, %3234
  %3310 = call float @dx.op.unary.f32(i32 7, float %3309)  ; Saturate(value)
  %3311 = select i1 %3254, float 1.000000e+00, float %3310
  %3312 = select i1 %3254, float %3310, float 1.000000e+00
  %3313 = fmul fast float %3259, %3230
  %3314 = fsub fast float 1.000000e+00, %3313
  %3315 = fmul fast float %3314, %3236
  %3316 = call float @dx.op.unary.f32(i32 7, float %3315)  ; Saturate(value)
  %3317 = fmul fast float %3316, %3312
  %3318 = fmul fast float %3317, 2.000000e+00
  %3319 = fsub fast float 3.000000e+00, %3318
  %3320 = fmul fast float %3307, %3291
  %3321 = fmul fast float %3317, %3317
  %3322 = fmul fast float %3321, %3320
  %3323 = fmul fast float %3322, %3319
  %3324 = call float @dx.op.binary.f32(i32 36, float %3323, float %3323)  ; FMin(a,b)
  %3325 = call float @dx.op.binary.f32(i32 36, float %3323, float %3324)  ; FMin(a,b)
  %3326 = fcmp fast ogt float %3325, 0.000000e+00
  br i1 %3326, label %3335, label %3327, !dx.controlflow.hints !136

; <label>:3327                                    ; preds = %3440, %3435, %3290
  %3328 = phi float [ %3195, %3435 ], [ %3195, %3290 ], [ %3595, %3440 ]
  %3329 = phi float [ %3196, %3435 ], [ %3196, %3290 ], [ %3596, %3440 ]
  %3330 = phi float [ %3197, %3435 ], [ %3197, %3290 ], [ %3597, %3440 ]
  %3331 = phi float [ %3198, %3435 ], [ %3198, %3290 ], [ %3583, %3440 ]
  %3332 = phi float [ %3199, %3435 ], [ %3199, %3290 ], [ %3584, %3440 ]
  %3333 = phi float [ %3200, %3435 ], [ %3200, %3290 ], [ %3585, %3440 ]
  %3334 = icmp eq i32 %3194, %3204
  br i1 %3334, label %3598, label %3193

; <label>:3335                                    ; preds = %3290
  %3336 = icmp eq i32 %3252, 255
  br i1 %3336, label %3435, label %3337, !dx.controlflow.hints !137

; <label>:3337                                    ; preds = %3335
  %3338 = mul nuw nsw i32 %3252, 176
  %3339 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3338, i32 undef)  ; BufferLoad(srv,index,wot)
  %3340 = extractvalue %dx.types.ResRet.f32 %3339, 0
  %3341 = extractvalue %dx.types.ResRet.f32 %3339, 1
  %3342 = extractvalue %dx.types.ResRet.f32 %3339, 2
  %3343 = extractvalue %dx.types.ResRet.f32 %3339, 3
  %3344 = add nuw nsw i32 %3338, 16
  %3345 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3344, i32 undef)  ; BufferLoad(srv,index,wot)
  %3346 = extractvalue %dx.types.ResRet.f32 %3345, 0
  %3347 = extractvalue %dx.types.ResRet.f32 %3345, 1
  %3348 = add nuw nsw i32 %3338, 32
  %3349 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3348, i32 undef)  ; BufferLoad(srv,index,wot)
  %3350 = extractvalue %dx.types.ResRet.f32 %3349, 0
  %3351 = extractvalue %dx.types.ResRet.f32 %3349, 1
  %3352 = extractvalue %dx.types.ResRet.f32 %3349, 2
  %3353 = add nuw nsw i32 %3338, 48
  %3354 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3353, i32 undef)  ; BufferLoad(srv,index,wot)
  %3355 = extractvalue %dx.types.ResRet.f32 %3354, 0
  %3356 = extractvalue %dx.types.ResRet.f32 %3354, 1
  %3357 = extractvalue %dx.types.ResRet.f32 %3354, 2
  %3358 = extractvalue %dx.types.ResRet.f32 %3354, 3
  %3359 = add nuw nsw i32 %3338, 64
  %3360 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3359, i32 undef)  ; BufferLoad(srv,index,wot)
  %3361 = extractvalue %dx.types.ResRet.f32 %3360, 0
  %3362 = extractvalue %dx.types.ResRet.f32 %3360, 1
  %3363 = extractvalue %dx.types.ResRet.f32 %3360, 2
  %3364 = extractvalue %dx.types.ResRet.f32 %3360, 3
  %3365 = add nuw nsw i32 %3338, 80
  %3366 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3367 = extractvalue %dx.types.ResRet.f32 %3366, 0
  %3368 = extractvalue %dx.types.ResRet.f32 %3366, 1
  %3369 = extractvalue %dx.types.ResRet.f32 %3366, 2
  %3370 = extractvalue %dx.types.ResRet.f32 %3366, 3
  %3371 = add nuw nsw i32 %3338, 96
  %3372 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3371, i32 undef)  ; BufferLoad(srv,index,wot)
  %3373 = extractvalue %dx.types.ResRet.f32 %3372, 0
  %3374 = extractvalue %dx.types.ResRet.f32 %3372, 1
  %3375 = extractvalue %dx.types.ResRet.f32 %3372, 2
  %3376 = extractvalue %dx.types.ResRet.f32 %3372, 3
  %3377 = bitcast float %3347 to i32
  %3378 = fmul fast float %3352, %338
  %3379 = fmul fast float %3352, %339
  %3380 = fmul fast float %3352, %340
  %3381 = fadd fast float %3378, %416
  %3382 = fadd fast float %3379, %417
  %3383 = fadd fast float %3380, %418
  %3384 = fmul fast float %3381, %3355
  %3385 = call float @dx.op.tertiary.f32(i32 46, float %3382, float %3361, float %3384)  ; FMad(a,b,c)
  %3386 = call float @dx.op.tertiary.f32(i32 46, float %3383, float %3367, float %3385)  ; FMad(a,b,c)
  %3387 = fadd fast float %3386, %3373
  %3388 = fmul fast float %3381, %3356
  %3389 = call float @dx.op.tertiary.f32(i32 46, float %3382, float %3362, float %3388)  ; FMad(a,b,c)
  %3390 = call float @dx.op.tertiary.f32(i32 46, float %3383, float %3368, float %3389)  ; FMad(a,b,c)
  %3391 = fadd fast float %3390, %3374
  %3392 = fmul fast float %3381, %3357
  %3393 = call float @dx.op.tertiary.f32(i32 46, float %3382, float %3363, float %3392)  ; FMad(a,b,c)
  %3394 = call float @dx.op.tertiary.f32(i32 46, float %3383, float %3369, float %3393)  ; FMad(a,b,c)
  %3395 = fadd fast float %3394, %3375
  %3396 = fmul fast float %3381, %3358
  %3397 = call float @dx.op.tertiary.f32(i32 46, float %3382, float %3364, float %3396)  ; FMad(a,b,c)
  %3398 = call float @dx.op.tertiary.f32(i32 46, float %3383, float %3370, float %3397)  ; FMad(a,b,c)
  %3399 = fadd fast float %3398, %3376
  %3400 = fdiv fast float %3387, %3399
  %3401 = fdiv fast float %3391, %3399
  %3402 = fdiv fast float %3395, %3399
  %3403 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %3402)  ; FMax(a,b)
  %3404 = fmul fast float %327, 0x401921FB60000000
  %3405 = call float @dx.op.unary.f32(i32 13, float %3404)  ; Sin(value)
  %3406 = call float @dx.op.unary.f32(i32 12, float %3404)  ; Cos(value)
  %3407 = fsub fast float -0.000000e+00, %3405
  %3408 = fmul fast float %3342, 5.000000e-01
  %3409 = call float @dx.op.dot2.f32(i32 54, float %327, float %327, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %3410 = call float @dx.op.unary.f32(i32 22, float %3409)  ; Frc(value)
  %3411 = fmul fast float %3410, 0x404A7DD040000000
  %3412 = call float @dx.op.unary.f32(i32 22, float %3411)  ; Frc(value)
  %3413 = fmul fast float %3412, %3351
  %3414 = fadd fast float %3413, %3408
  %3415 = call float @dx.op.tertiary.f32(i32 46, float %3414, float %3407, float 0.000000e+00)  ; FMad(a,b,c)
  %3416 = call float @dx.op.tertiary.f32(i32 46, float %3414, float %3406, float 0.000000e+00)  ; FMad(a,b,c)
  %3417 = fadd fast float %3415, %3400
  %3418 = fadd fast float %3416, %3401
  %3419 = fmul fast float %3417, %3346
  %3420 = fmul fast float %3418, %3346
  %3421 = call float @dx.op.binary.f32(i32 35, float %3419, float %3342)  ; FMax(a,b)
  %3422 = call float @dx.op.binary.f32(i32 35, float %3420, float %3342)  ; FMax(a,b)
  %3423 = call float @dx.op.binary.f32(i32 36, float %3421, float %3343)  ; FMin(a,b)
  %3424 = call float @dx.op.binary.f32(i32 36, float %3422, float %3343)  ; FMin(a,b)
  %3425 = fadd fast float %3423, %3340
  %3426 = fadd fast float %3424, %3341
  %3427 = uitofp i32 %3377 to float
  %3428 = fadd fast float %3403, %3350
  %3429 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %36, float %3425, float %3426, float %3427, float undef, i32 0, i32 0, i32 undef, float %3428)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3430 = extractvalue %dx.types.ResRet.f32 %3429, 0
  %3431 = fadd fast float %3430, -1.000000e+00
  %3432 = fmul fast float %3431, %3311
  %3433 = fadd fast float %3432, 1.000000e+00
  %3434 = fmul fast float %3433, %3323
  br label %3435

; <label>:3435                                    ; preds = %3337, %3335
  %3436 = phi float [ %3434, %3337 ], [ %3323, %3335 ]
  %3437 = call float @dx.op.binary.f32(i32 36, float %3436, float %3436)  ; FMin(a,b)
  %3438 = call float @dx.op.binary.f32(i32 36, float %3436, float %3437)  ; FMin(a,b)
  %3439 = fcmp fast ogt float %3438, 0.000000e+00
  br i1 %3439, label %3440, label %3327, !dx.controlflow.hints !138

; <label>:3440                                    ; preds = %3435
  %3441 = fmul fast float %3436, %3245
  %3442 = fmul fast float %3436, %3246
  %3443 = fmul fast float %3436, %3247
  %3444 = fsub fast float %3261, %554
  %3445 = fsub fast float %3262, %555
  %3446 = fsub fast float %3263, %556
  %3447 = call float @dx.op.dot3.f32(i32 55, float %3444, float %3445, float %3446, float %3444, float %3445, float %3446)  ; Dot3(ax,ay,az,bx,by,bz)
  %3448 = call float @dx.op.unary.f32(i32 25, float %3447)  ; Rsqrt(value)
  %3449 = fmul fast float %3448, %3444
  %3450 = fmul fast float %3448, %3445
  %3451 = fmul fast float %3448, %3446
  %3452 = call float @dx.op.dot3.f32(i32 55, float %3261, float %3262, float %3263, float %338, float %339, float %340)  ; Dot3(ax,ay,az,bx,by,bz)
  %3453 = call float @dx.op.dot3.f32(i32 55, float %557, float %558, float %559, float %3449, float %3450, float %3451)  ; Dot3(ax,ay,az,bx,by,bz)
  %3454 = call float @dx.op.unary.f32(i32 7, float %3452)  ; Saturate(value)
  %3455 = fmul fast float %3454, %3268
  %3456 = fmul fast float %3454, %3454
  %3457 = fmul fast float %3456, 0x47DE623840000000
  %3458 = call float @dx.op.unary.f32(i32 7, float %3457)  ; Saturate(value)
  %3459 = fmul fast float %3455, %3458
  %3460 = bitcast float %3258 to i32
  %3461 = ashr i32 %3460, 1
  %3462 = sub nsw i32 1597463007, %3461
  %3463 = bitcast i32 %3462 to float
  %3464 = fmul fast float %3463, %3255
  %3465 = fmul fast float %3463, %3256
  %3466 = fmul fast float %3463, %3257
  %3467 = fsub fast float %3464, %554
  %3468 = fsub fast float %3465, %555
  %3469 = fsub fast float %3466, %556
  %3470 = call float @dx.op.dot3.f32(i32 55, float %3467, float %3468, float %3469, float %3467, float %3468, float %3469)  ; Dot3(ax,ay,az,bx,by,bz)
  %3471 = call float @dx.op.unary.f32(i32 25, float %3470)  ; Rsqrt(value)
  %3472 = fmul fast float %3467, %3471
  %3473 = fmul fast float %3468, %3471
  %3474 = fmul fast float %3469, %3471
  %3475 = call float @dx.op.dot3.f32(i32 55, float %338, float %339, float %340, float %3472, float %3473, float %3474)  ; Dot3(ax,ay,az,bx,by,bz)
  %3476 = fmul fast float %3475, %3475
  %3477 = call float @dx.op.unary.f32(i32 6, float %3452)  ; FAbs(value)
  %3478 = fsub fast float 1.000000e+00, %350
  %3479 = call float @dx.op.binary.f32(i32 35, float %3478, float 0x3F847AE140000000)  ; FMax(a,b)
  %3480 = fmul fast float %3479, %3479
  %3481 = fmul fast float %3480, %3480
  %3482 = fsub fast float 1.000000e+00, %3481
  %3483 = fmul fast float %562, %562
  %3484 = fmul fast float %3483, %3482
  %3485 = fadd fast float %3484, %3481
  %3486 = bitcast float %3485 to i32
  %3487 = ashr i32 %3486, 1
  %3488 = add nsw i32 %3487, 532487669
  %3489 = bitcast i32 %3488 to float
  %3490 = fadd fast float %3489, %562
  %3491 = fmul fast float %3481, %3476
  %3492 = fsub fast float 1.000000e+00, %3476
  %3493 = fadd fast float %3492, %3491
  %3494 = fmul fast float %3477, %3477
  %3495 = fmul fast float %3494, %3482
  %3496 = fadd fast float %3495, %3481
  %3497 = bitcast float %3496 to i32
  %3498 = ashr i32 %3497, 1
  %3499 = add nsw i32 %3498, 532487669
  %3500 = bitcast i32 %3499 to float
  %3501 = fadd fast float %3500, %3477
  %3502 = fmul fast float %3493, %3493
  %3503 = fmul fast float %3502, %3490
  %3504 = fmul fast float %3503, %3501
  %3505 = fdiv fast float 1.000000e+00, %3504
  %3506 = bitcast float %3481 to i32
  %3507 = sitofp i32 %3506 to float
  %3508 = fmul fast float %3507, 0x3FE7F73180000000
  %3509 = fadd fast float %3508, 0x41AFE27C40000000
  %3510 = fptosi float %3509 to i32
  %3511 = bitcast i32 %3510 to float
  %3512 = fmul fast float %3224, 0x3FD80E9D60000000
  %3513 = fmul fast float %3512, %3463
  %3514 = fadd fast float %3511, %3513
  %3515 = bitcast float %3514 to i32
  %3516 = sub nsw i32 2129859010, %3515
  %3517 = bitcast i32 %3516 to float
  %3518 = fmul fast float %3481, %3505
  %3519 = fmul fast float %3518, %3511
  %3520 = fmul fast float %3519, %3517
  %3521 = call float @dx.op.unary.f32(i32 6, float %3453)  ; FAbs(value)
  %3522 = fsub fast float 1.000000e+00, %3521
  %3523 = bitcast float %3522 to i32
  %3524 = sitofp i32 %3523 to float
  %3525 = fmul fast float %3524, 5.000000e+00
  %3526 = fadd fast float %3525, 0xC1EFBF8940000000
  %3527 = fptosi float %3526 to i32
  %3528 = bitcast i32 %3527 to float
  %3529 = fsub fast float 1.000000e+00, %539
  %3530 = fsub fast float 1.000000e+00, %540
  %3531 = fsub fast float 1.000000e+00, %560
  %3532 = fmul fast float %3528, %3529
  %3533 = fmul fast float %3528, %3530
  %3534 = fmul fast float %3528, %3531
  %3535 = fadd fast float %3532, %539
  %3536 = fadd fast float %3533, %540
  %3537 = fadd fast float %3534, %560
  %3538 = fmul fast float %3452, 9.843750e-01
  %3539 = fadd fast float %3538, 7.812500e-03
  %3540 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %35, float %3539, float %2134, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3541 = extractvalue %dx.types.ResRet.f32 %3540, 2
  %3542 = extractvalue %dx.types.ResRet.f32 %3540, 3
  %3543 = fmul fast float %3541, %539
  %3544 = fmul fast float %3541, %540
  %3545 = fmul fast float %3541, %560
  %3546 = fadd fast float %3543, %3542
  %3547 = fadd fast float %3544, %3542
  %3548 = fadd fast float %3545, %3542
  %3549 = call float @dx.op.binary.f32(i32 35, float %3547, float %3548)  ; FMax(a,b)
  %3550 = call float @dx.op.binary.f32(i32 35, float %3546, float %3549)  ; FMax(a,b)
  %3551 = fsub fast float 1.000000e+00, %3550
  %3552 = fsub fast float -0.000000e+00, %338
  %3553 = fsub fast float -0.000000e+00, %339
  %3554 = fsub fast float -0.000000e+00, %340
  %3555 = call float @dx.op.dot3.f32(i32 55, float %3261, float %3262, float %3263, float %3552, float %3553, float %3554)  ; Dot3(ax,ay,az,bx,by,bz)
  %3556 = call float @dx.op.unary.f32(i32 7, float %3555)  ; Saturate(value)
  %3557 = fmul fast float %3556, %3268
  %3558 = fmul fast float %3556, 9.843750e-01
  %3559 = fadd fast float %3558, 7.812500e-03
  %3560 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %35, float %3559, float %2134, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3561 = extractvalue %dx.types.ResRet.f32 %3560, 2
  %3562 = extractvalue %dx.types.ResRet.f32 %3560, 3
  %3563 = fmul fast float %3561, %539
  %3564 = fmul fast float %3561, %540
  %3565 = fmul fast float %3561, %560
  %3566 = fadd fast float %3563, %3562
  %3567 = fadd fast float %3564, %3562
  %3568 = fadd fast float %3565, %3562
  %3569 = call float @dx.op.binary.f32(i32 35, float %3567, float %3568)  ; FMax(a,b)
  %3570 = call float @dx.op.binary.f32(i32 35, float %3566, float %3569)  ; FMax(a,b)
  %3571 = fsub fast float 1.000000e+00, %3570
  %3572 = fmul fast float %3557, %3571
  %3573 = fmul fast float %3572, %357
  %3574 = fmul fast float %3572, %358
  %3575 = fmul fast float %3572, %359
  %3576 = fmul fast float %3551, %3459
  %3577 = fadd fast float %3573, %3576
  %3578 = fadd fast float %3574, %3576
  %3579 = fadd fast float %3575, %3576
  %3580 = fmul fast float %3577, %3441
  %3581 = fmul fast float %3578, %3442
  %3582 = fmul fast float %3579, %3443
  %3583 = fadd fast float %3580, %3198
  %3584 = fadd fast float %3581, %3199
  %3585 = fadd fast float %3582, %3200
  %3586 = fmul fast float %3459, %3441
  %3587 = fmul fast float %3586, %3535
  %3588 = fmul fast float %3587, %3520
  %3589 = fmul fast float %3459, %3442
  %3590 = fmul fast float %3589, %3536
  %3591 = fmul fast float %3590, %3520
  %3592 = fmul fast float %3459, %3443
  %3593 = fmul fast float %3592, %3537
  %3594 = fmul fast float %3593, %3520
  %3595 = fadd fast float %3588, %3195
  %3596 = fadd fast float %3591, %3196
  %3597 = fadd fast float %3594, %3197
  br label %3327

; <label>:3598                                    ; preds = %3327
  br label %3599

; <label>:3599                                    ; preds = %3598, %3161
  %3600 = phi float [ %3163, %3161 ], [ %3328, %3598 ]
  %3601 = phi float [ %3164, %3161 ], [ %3329, %3598 ]
  %3602 = phi float [ %3165, %3161 ], [ %3330, %3598 ]
  %3603 = phi float [ %3166, %3161 ], [ %3331, %3598 ]
  %3604 = phi float [ %3167, %3161 ], [ %3332, %3598 ]
  %3605 = phi float [ %3168, %3161 ], [ %3333, %3598 ]
  %3606 = add i32 %3162, 1
  %3607 = icmp ugt i32 %3606, %3158
  br i1 %3607, label %3608, label %3161

; <label>:3608                                    ; preds = %3599
  br label %3609

; <label>:3609                                    ; preds = %3608, %3111, %3101
  %3610 = phi float [ %3102, %3101 ], [ %3102, %3111 ], [ %3600, %3608 ]
  %3611 = phi float [ %3103, %3101 ], [ %3103, %3111 ], [ %3601, %3608 ]
  %3612 = phi float [ %3104, %3101 ], [ %3104, %3111 ], [ %3602, %3608 ]
  %3613 = phi float [ %3105, %3101 ], [ %3105, %3111 ], [ %3603, %3608 ]
  %3614 = phi float [ %3106, %3101 ], [ %3106, %3111 ], [ %3604, %3608 ]
  %3615 = phi float [ %3107, %3101 ], [ %3107, %3111 ], [ %3605, %3608 ]
  %3616 = call float @dx.op.unary.f32(i32 24, float %530)  ; Sqrt(value)
  %3617 = call float @dx.op.unary.f32(i32 24, float %531)  ; Sqrt(value)
  %3618 = call float @dx.op.unary.f32(i32 24, float %532)  ; Sqrt(value)
  %3619 = fmul fast float %3616, %3613
  %3620 = fmul fast float %3617, %3614
  %3621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3622 = extractvalue %dx.types.CBufRet.f32 %3621, 0
  br i1 %143, label %3623, label %3647

; <label>:3623                                    ; preds = %3609
  %3624 = fadd fast float %3615, %550
  %3625 = fmul fast float %3624, %548
  %3626 = fsub fast float 1.000000e+00, %548
  %3627 = call float @dx.op.unary.f32(i32 7, float %3626)  ; Saturate(value)
  %3628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3629 = extractvalue %dx.types.CBufRet.f32 %3628, 3
  %3630 = fmul fast float %3629, %3627
  %3631 = fsub fast float 1.000000e+00, %562
  %3632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3633 = extractvalue %dx.types.CBufRet.f32 %3632, 0
  %3634 = fmul fast float %3633, %3631
  %3635 = fsub fast float 1.000000e+00, %360
  %3636 = extractvalue %dx.types.CBufRet.f32 %3632, 2
  %3637 = fmul fast float %3636, %3635
  %3638 = fadd fast float %3620, %3619
  %3639 = extractvalue %dx.types.CBufRet.f32 %3628, 1
  %3640 = fadd fast float %3630, %3625
  %3641 = fsub fast float %3640, %3634
  %3642 = fsub fast float %3641, %3637
  %3643 = fsub fast float %3642, %3639
  %3644 = extractvalue %dx.types.CBufRet.f32 %3628, 2
  %3645 = fmul fast float %3643, %3644
  %3646 = call float @dx.op.unary.f32(i32 7, float %3645)  ; Saturate(value)
  br label %3651

; <label>:3647                                    ; preds = %3609
  %3648 = fmul fast float %3618, %3615
  %3649 = fmul fast float %3622, %3620
  %3650 = fmul fast float %3648, %3622
  br label %3651

; <label>:3651                                    ; preds = %3647, %3623
  %3652 = phi float [ %3638, %3623 ], [ %3619, %3647 ]
  %3653 = phi float [ %3646, %3623 ], [ %3649, %3647 ]
  %3654 = phi float [ 1.000000e+00, %3623 ], [ %3650, %3647 ]
  %3655 = fmul float %3622, %3652
  %3656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3657 = extractvalue %dx.types.CBufRet.f32 %3656, 0
  %3658 = fmul fast float %3657, %3611
  %3659 = fmul fast float %3657, %3612
  %3660 = fadd fast float %3611, %3610
  %3661 = select i1 %143, float %3660, float %3610
  %3662 = fmul float %3661, %3657
  %3663 = select i1 %143, float 0.000000e+00, float %3658
  %3664 = select i1 %143, float 0.000000e+00, float %3659
  %3665 = fmul fast float %3655, %3616
  %3666 = fmul fast float %3653, %3617
  %3667 = fmul fast float %3654, %3618
  %3668 = fadd fast float %3662, %3665
  %3669 = fadd fast float %3663, %3666
  %3670 = fadd fast float %3664, %3667
  %3671 = select i1 %143, float %3653, float %3669
  %3672 = select i1 %143, float %3654, float %3670
  %3673 = call float @dx.op.binary.f32(i32 36, float %3668, float 3.225500e+04)  ; FMin(a,b)
  %3674 = call float @dx.op.binary.f32(i32 36, float %3671, float 3.225500e+04)  ; FMin(a,b)
  %3675 = call float @dx.op.binary.f32(i32 36, float %3672, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3673)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3674)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3675)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!dx.viewIdState = !{!50}
!dx.entryPoints = !{!51}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !41, !44}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !37, !38, !39, !40}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 31, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 61, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 62, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 63, i32 1, i32 11, i32 0, null}
!13 = !{i32 6, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 21, i32 1, i32 4, i32 0, !7}
!14 = !{i32 7, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 22, i32 1, i32 4, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 16, i32 1, i32 7, i32 0, !7}
!17 = !{i32 10, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 15, i32 1, i32 4, i32 0, !7}
!18 = !{i32 11, %"class.Texture2D<float>"* undef, !"", i32 2, i32 14, i32 1, i32 2, i32 0, !7}
!19 = !{i32 12, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 2, i32 13, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 17, i32 1, i32 2, i32 0, !21}
!21 = !{i32 0, i32 5}
!22 = !{i32 14, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 2, i32 18, i32 1, i32 4, i32 0, !7}
!23 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!24 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!25 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!26 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!27 = !{i32 19, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!28 = !{i32 20, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!29 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!30 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!31 = !{i32 23, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!32 = !{i32 24, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !33}
!33 = !{i32 0, i32 14}
!34 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!35 = !{i32 26, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!36 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!37 = !{i32 28, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!38 = !{i32 29, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!39 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!40 = !{i32 31, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!41 = !{!42, !43}
!42 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!43 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 256, null}
!44 = !{!45, !46, !47, !48, !49}
!45 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!46 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!47 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!48 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!49 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!50 = !{[63 x i32] [i32 61, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 0, i32 0, i32 7, i32 7]}
!51 = !{void ()* @ps_main, !"ps_main", !52, !4, !85}
!52 = !{!53, !83, null}
!53 = !{!54, !57, !58, !60, !62, !63, !65, !68, !70, !72, !74, !75, !76, !77, !78, !79, !81, !82}
!54 = !{i32 0, !"SV_Position", i8 9, i8 3, !55, i8 4, i32 1, i8 4, i32 0, i8 0, !56}
!55 = !{i32 0}
!56 = !{i32 3, i32 11}
!57 = !{i32 1, !"COLOR", i8 9, i8 0, !55, i8 2, i32 1, i8 4, i32 1, i8 0, null}
!58 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !55, i8 2, i32 1, i8 4, i32 2, i8 0, !59}
!59 = !{i32 3, i32 8}
!60 = !{i32 3, !"NORMAL", i8 9, i8 0, !55, i8 2, i32 1, i8 3, i32 3, i8 0, !61}
!61 = !{i32 3, i32 7}
!62 = !{i32 4, !"TANGENT", i8 9, i8 0, !55, i8 2, i32 1, i8 4, i32 4, i8 0, null}
!63 = !{i32 5, !"CARD_DEPTH_OFFSET", i8 9, i8 0, !55, i8 2, i32 1, i8 1, i32 3, i8 3, !64}
!64 = !{i32 3, i32 1}
!65 = !{i32 6, !"CARD_BARY_AND_TILE", i8 9, i8 0, !66, i8 1, i32 1, i8 4, i32 5, i8 0, !67}
!66 = !{i32 1}
!67 = !{i32 3, i32 3}
!68 = !{i32 7, !"CARD_TILE2_AND_TILE", i8 9, i8 0, !69, i8 1, i32 1, i8 4, i32 6, i8 0, null}
!69 = !{i32 3}
!70 = !{i32 8, !"CARD_TEXCOORDS_AND_RAY", i8 9, i8 0, !66, i8 4, i32 1, i8 4, i32 7, i8 0, !71}
!71 = !{i32 3, i32 15}
!72 = !{i32 9, !"CARD_TEXCOORDS_AND_RAY", i8 9, i8 0, !73, i8 4, i32 1, i8 4, i32 8, i8 0, !71}
!73 = !{i32 2}
!74 = !{i32 10, !"CARD_TEXCOORDS_AND_RAY", i8 9, i8 0, !69, i8 4, i32 1, i8 4, i32 9, i8 0, !71}
!75 = !{i32 11, !"CARD_DEPTH_AND_SCALE", i8 9, i8 0, !55, i8 4, i32 1, i8 4, i32 10, i8 0, !61}
!76 = !{i32 12, !"LGV_POSITION_INDEX", i8 9, i8 0, !55, i8 2, i32 1, i8 4, i32 11, i8 0, !59}
!77 = !{i32 13, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !55, i8 2, i32 1, i8 2, i32 12, i8 0, null}
!78 = !{i32 14, !"SCEONDARY_NORMAL", i8 9, i8 0, !55, i8 2, i32 1, i8 4, i32 13, i8 0, null}
!79 = !{i32 15, !"PACKED_TRI_DATA", i8 5, i8 0, !55, i8 1, i32 1, i8 4, i32 14, i8 0, !80}
!80 = !{i32 3, i32 9}
!81 = !{i32 16, !"SV_IsFrontFace", i8 5, i8 13, !55, i8 1, i32 1, i8 1, i32 15, i8 0, !64}
!82 = !{i32 17, !"SV_SampleIndex", i8 5, i8 12, !55, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!83 = !{!84}
!84 = !{i32 0, !"SV_Target", i8 9, i8 16, !55, i8 0, i32 1, i8 4, i32 0, i8 0, !71}
!85 = !{i32 0, i64 24}
!86 = !{!87, !89, !90, !91, !92, !94, !95, !96}
!87 = distinct !{!87, !88, !"\01?getCardTexcoordsNormalAlpha@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAIAIAMUPixelInput@@MV?$matrix@M$02$02@@V1@M@Z: %outTexCoords"}
!88 = distinct !{!88, !"\01?getCardTexcoordsNormalAlpha@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAIAIAMUPixelInput@@MV?$matrix@M$02$02@@V1@M@Z"}
!89 = distinct !{!89, !88, !"\01?getCardTexcoordsNormalAlpha@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAIAIAMUPixelInput@@MV?$matrix@M$02$02@@V1@M@Z: %outNormal"}
!90 = distinct !{!90, !88, !"\01?getCardTexcoordsNormalAlpha@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAIAIAMUPixelInput@@MV?$matrix@M$02$02@@V1@M@Z: %outCoverage"}
!91 = distinct !{!91, !88, !"\01?getCardTexcoordsNormalAlpha@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAIAIAMUPixelInput@@MV?$matrix@M$02$02@@V1@M@Z: %outMipLevel"}
!92 = distinct !{!92, !93, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@M@Z: %outTexCoords"}
!93 = distinct !{!93, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@M@Z"}
!94 = distinct !{!94, !93, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@M@Z: %outNormal"}
!95 = distinct !{!95, !93, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@M@Z: %outMipLevel"}
!96 = distinct !{!96, !93, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@M@Z: %outCoverage"}
!97 = !{!98, !98, i64 0}
!98 = !{!"float", !99, i64 0}
!99 = !{!"omnipotent char", !100, i64 0}
!100 = !{!"Simple C/C++ TBAA"}
!101 = !{!102, !104}
!102 = distinct !{!102, !103, !"\01?GetLightGridVolumeTransformParamsStatic@@YA?AULightGridVolumeTransformParams@@II@Z: %agg.result"}
!103 = distinct !{!103, !"\01?GetLightGridVolumeTransformParamsStatic@@YA?AULightGridVolumeTransformParams@@II@Z"}
!104 = distinct !{!104, !105, !"\01?GetLightGridVolumeTransformParams@@YA?AULightGridVolumeTransformParams@@II@Z: %agg.result"}
!105 = distinct !{!105, !"\01?GetLightGridVolumeTransformParams@@YA?AULightGridVolumeTransformParams@@II@Z"}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = !{!119, !119, i64 0}
!119 = !{!"int", !99, i64 0}
!120 = !{!121, !123, !125, !127}
!121 = distinct !{!121, !122, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!122 = distinct !{!122, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!123 = distinct !{!123, !124, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!124 = distinct !{!124, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!125 = distinct !{!125, !126, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!126 = distinct !{!126, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!127 = distinct !{!127, !128, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!128 = distinct !{!128, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 1}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 1}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 1}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 1}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 1}
!138 = distinct !{!138, !"dx.controlflow.hints", i32 1}

