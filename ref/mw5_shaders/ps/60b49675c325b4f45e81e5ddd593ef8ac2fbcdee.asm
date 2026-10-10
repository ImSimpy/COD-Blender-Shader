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
; shader hash: 5388d7f634f08e3bd21253d7ab2d4bbe
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
  %270 = add i32 %42, 68
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
  %358 = add i32 %42, 68
  %359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.i32 %359, 0
  %361 = add i32 %360, 0
  %362 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %361, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %363 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %362, %dx.types.Handle %35, float %319, float %320, float undef, float undef, i32 0, i32 0, i32 undef, float %318)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %364 = extractvalue %dx.types.ResRet.f32 %363, 0
  %365 = fadd fast float %62, 1.000000e+00
  %366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %190, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.i32 %366, 2
  %368 = bitcast i32 %367 to float
  %369 = fmul fast float %364, 2.000000e+00
  %370 = fsub fast float %365, %369
  %371 = fmul fast float %368, %370
  %372 = fadd fast float %371, %69
  %373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %374 = extractvalue %dx.types.CBufRet.f32 %373, 2
  %375 = extractvalue %dx.types.CBufRet.f32 %373, 3
  %376 = fmul fast float %84, 2.000000e+00
  %377 = fmul fast float %376, %374
  %378 = fmul fast float %85, 2.000000e+00
  %379 = fmul fast float %378, %375
  %380 = fsub fast float 1.000000e+00, %377
  %381 = fsub fast float 1.000000e+00, %379
  %382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %383 = extractvalue %dx.types.CBufRet.f32 %382, 0
  %384 = extractvalue %dx.types.CBufRet.f32 %382, 1
  %385 = extractvalue %dx.types.CBufRet.f32 %382, 2
  %386 = fmul fast float %380, %383
  %387 = fmul fast float %380, %384
  %388 = fmul fast float %380, %385
  %389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %390 = extractvalue %dx.types.CBufRet.f32 %389, 0
  %391 = extractvalue %dx.types.CBufRet.f32 %389, 1
  %392 = extractvalue %dx.types.CBufRet.f32 %389, 2
  %393 = fmul fast float %381, %390
  %394 = fmul fast float %381, %391
  %395 = fmul fast float %381, %392
  %396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %397 = extractvalue %dx.types.CBufRet.f32 %396, 0
  %398 = extractvalue %dx.types.CBufRet.f32 %396, 1
  %399 = extractvalue %dx.types.CBufRet.f32 %396, 2
  %400 = fadd fast float %393, %397
  %401 = fadd fast float %400, %386
  %402 = fadd fast float %394, %398
  %403 = fadd fast float %402, %387
  %404 = fadd fast float %395, %399
  %405 = fadd fast float %404, %388
  %406 = fmul fast float %401, %372
  %407 = fmul fast float %403, %372
  %408 = fmul fast float %405, %372
  %409 = call float @dx.op.unary.f32(i32 26, float %44)  ; Round_ne(value)
  %410 = fptoui float %409 to i32
  %411 = call float @dx.op.unary.f32(i32 26, float %66)  ; Round_ne(value)
  %412 = fptoui float %411 to i32
  %413 = shl i32 %412, 3
  %414 = or i32 %413, 4
  %415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.i32 %415, 0
  %417 = and i32 %416, 16777215
  %418 = add i32 %417, %410
  %419 = shl i32 %418, 6
  %420 = getelementptr [3 x float], [3 x float]* %74, i32 0, i32 0
  %421 = getelementptr [3 x float], [3 x float]* %75, i32 0, i32 0
  %422 = getelementptr [3 x float], [3 x float]* %76, i32 0, i32 0
  %423 = getelementptr [3 x float], [3 x float]* %77, i32 0, i32 0
  %424 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.f32 %424, 0
  %426 = extractvalue %dx.types.ResRet.f32 %424, 1
  %427 = extractvalue %dx.types.ResRet.f32 %424, 2
  %428 = extractvalue %dx.types.ResRet.f32 %424, 3
  store float %425, float* %420, align 4
  store float %426, float* %421, align 4
  store float %427, float* %422, align 4
  store float %428, float* %423, align 4
  %429 = getelementptr [3 x float], [3 x float]* %74, i32 0, i32 1
  %430 = getelementptr [3 x float], [3 x float]* %75, i32 0, i32 1
  %431 = getelementptr [3 x float], [3 x float]* %76, i32 0, i32 1
  %432 = getelementptr [3 x float], [3 x float]* %77, i32 0, i32 1
  %433 = or i32 %419, 16
  %434 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.f32 %434, 0
  %436 = extractvalue %dx.types.ResRet.f32 %434, 1
  %437 = extractvalue %dx.types.ResRet.f32 %434, 2
  %438 = extractvalue %dx.types.ResRet.f32 %434, 3
  store float %435, float* %429, align 4
  store float %436, float* %430, align 4
  store float %437, float* %431, align 4
  store float %438, float* %432, align 4
  %439 = getelementptr [3 x float], [3 x float]* %74, i32 0, i32 2
  %440 = getelementptr [3 x float], [3 x float]* %75, i32 0, i32 2
  %441 = getelementptr [3 x float], [3 x float]* %76, i32 0, i32 2
  %442 = getelementptr [3 x float], [3 x float]* %77, i32 0, i32 2
  %443 = or i32 %419, 32
  %444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.f32 %444, 0
  %446 = extractvalue %dx.types.ResRet.f32 %444, 1
  %447 = extractvalue %dx.types.ResRet.f32 %444, 2
  %448 = extractvalue %dx.types.ResRet.f32 %444, 3
  store float %445, float* %439, align 4
  store float %446, float* %440, align 4
  store float %447, float* %441, align 4
  store float %448, float* %442, align 4
  %449 = or i32 %419, 48
  %450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.i32 %450, 0
  %452 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %453 = extractvalue %dx.types.CBufRet.i32 %452, 1
  %454 = icmp eq i32 %453, 0
  %455 = and i32 %451, 4
  %456 = icmp ne i32 %455, 0
  %457 = and i1 %454, %456
  br i1 %457, label %458, label %497

; <label>:458                                     ; preds = %337
  %459 = and i32 %451, 3
  %460 = getelementptr [3 x float], [3 x float]* %74, i32 0, i32 %459
  %461 = getelementptr [3 x float], [3 x float]* %75, i32 0, i32 %459
  %462 = getelementptr [3 x float], [3 x float]* %76, i32 0, i32 %459
  %463 = getelementptr [3 x float], [3 x float]* %77, i32 0, i32 %459
  %464 = load float, float* %460, align 4
  %465 = load float, float* %461, align 4
  %466 = load float, float* %462, align 4
  %467 = load float, float* %463, align 4
  %468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %469 = extractvalue %dx.types.CBufRet.f32 %468, 0
  %470 = extractvalue %dx.types.CBufRet.f32 %468, 1
  %471 = extractvalue %dx.types.CBufRet.f32 %468, 2
  %472 = call float @dx.op.dot3.f32(i32 55, float %464, float %465, float %466, float %469, float %470, float %471)  ; Dot3(ax,ay,az,bx,by,bz)
  %473 = fadd fast float %472, %467
  %474 = fcmp fast ogt float %473, 1.000000e+00
  br i1 %474, label %475, label %480

; <label>:475                                     ; preds = %458
  %476 = fadd fast float %473, -1.000000e+00
  %477 = fmul fast float %476, 4.000000e+00
  %478 = call float @dx.op.unary.f32(i32 7, float %477)  ; Saturate(value)
  %479 = fmul fast float %478, 4.000000e+00
  br label %486

; <label>:480                                     ; preds = %458
  %481 = fcmp fast olt float %473, 0.000000e+00
  br i1 %481, label %482, label %486

; <label>:482                                     ; preds = %480
  %483 = fmul fast float %473, -4.000000e+00
  %484 = call float @dx.op.unary.f32(i32 7, float %483)  ; Saturate(value)
  %485 = fmul fast float %484, -4.000000e+00
  br label %486

; <label>:486                                     ; preds = %482, %480, %475
  %487 = phi float [ %479, %475 ], [ %485, %482 ], [ 0.000000e+00, %480 ]
  %488 = icmp eq i32 %459, 0
  %489 = select i1 %488, float %487, float 0.000000e+00
  %490 = fadd fast float %428, %489
  store float %490, float* %423, align 4, !noalias !101
  %491 = icmp eq i32 %459, 1
  %492 = select i1 %491, float %487, float 0.000000e+00
  %493 = fadd fast float %438, %492
  store float %493, float* %432, align 4, !noalias !101
  %494 = icmp eq i32 %459, 2
  %495 = select i1 %494, float %487, float 0.000000e+00
  %496 = fadd fast float %448, %495
  store float %496, float* %442, align 4, !noalias !101
  br label %497

; <label>:497                                     ; preds = %486, %337
  %498 = phi float [ %448, %337 ], [ %496, %486 ]
  %499 = phi float [ %438, %337 ], [ %493, %486 ]
  %500 = phi float [ %428, %337 ], [ %490, %486 ]
  %501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %502 = extractvalue %dx.types.CBufRet.f32 %501, 0
  %503 = extractvalue %dx.types.CBufRet.f32 %501, 1
  %504 = extractvalue %dx.types.CBufRet.f32 %501, 2
  %505 = fadd fast float %502, %406
  %506 = fadd fast float %503, %407
  %507 = fadd fast float %504, %408
  %508 = call float @dx.op.dot4.f32(i32 56, float %425, float %426, float %427, float %500, float %505, float %506, float %507, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %509 = call float @dx.op.dot4.f32(i32 56, float %435, float %436, float %437, float %499, float %505, float %506, float %507, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %510 = call float @dx.op.dot4.f32(i32 56, float %445, float %446, float %447, float %498, float %505, float %506, float %507, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %511 = fadd fast float %357, 0xBFB99999A0000000
  %512 = call float @dx.op.unary.f32(i32 7, float %511)  ; Saturate(value)
  %513 = fmul fast float %512, 0x3FF1C71C80000000
  %514 = call float @dx.op.binary.f32(i32 36, float %357, float 0x3FB99999A0000000)  ; FMin(a,b)
  %515 = fsub fast float 1.000000e+00, %513
  %516 = call float @dx.op.unary.f32(i32 7, float %515)  ; Saturate(value)
  %517 = fmul fast float %516, %347
  %518 = fmul fast float %516, %348
  %519 = fmul fast float %516, %349
  %520 = call float @dx.op.unary.f32(i32 7, float %517)  ; Saturate(value)
  %521 = call float @dx.op.unary.f32(i32 7, float %518)  ; Saturate(value)
  %522 = call float @dx.op.unary.f32(i32 7, float %519)  ; Saturate(value)
  %523 = fmul fast float %513, %347
  %524 = fmul fast float %513, %348
  %525 = fmul fast float %513, %349
  %526 = fadd fast float %523, %514
  %527 = fadd fast float %524, %514
  %528 = fadd fast float %525, %514
  %529 = call float @dx.op.unary.f32(i32 7, float %526)  ; Saturate(value)
  %530 = call float @dx.op.unary.f32(i32 7, float %527)  ; Saturate(value)
  %531 = call float @dx.op.unary.f32(i32 7, float %528)  ; Saturate(value)
  %532 = call float @dx.op.dot3.f32(i32 55, float %520, float %521, float %522, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %533 = fmul fast float %532, 1.875000e-01
  %534 = fadd fast float %533, 0x3FE647AE20000000
  %535 = call float @dx.op.unary.f32(i32 7, float %534)  ; Saturate(value)
  %536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %537 = extractvalue %dx.types.CBufRet.f32 %536, 0
  %538 = fsub fast float -0.000000e+00, %408
  %539 = call float @dx.op.dot3.f32(i32 55, float %406, float %407, float %408, float %406, float %407, float %408)  ; Dot3(ax,ay,az,bx,by,bz)
  %540 = call float @dx.op.unary.f32(i32 25, float %539)  ; Rsqrt(value)
  %541 = fmul fast float %540, %406
  %542 = fmul fast float %540, %407
  %543 = fmul fast float %540, %408
  %544 = fsub fast float -0.000000e+00, %541
  %545 = fsub fast float -0.000000e+00, %542
  %546 = fsub fast float -0.000000e+00, %543
  %547 = select i1 %143, float 0.000000e+00, float %531
  %548 = call float @dx.op.dot3.f32(i32 55, float %338, float %339, float %340, float %544, float %545, float %546)  ; Dot3(ax,ay,az,bx,by,bz)
  %549 = call float @dx.op.unary.f32(i32 7, float %548)  ; Saturate(value)
  %550 = call float @dx.op.dot3.f32(i32 55, float %541, float %542, float %543, float %338, float %339, float %340)  ; Dot3(ax,ay,az,bx,by,bz)
  %551 = fmul fast float %550, 2.000000e+00
  %552 = fmul fast float %551, %338
  %553 = fmul fast float %551, %339
  %554 = fmul fast float %551, %340
  %555 = fsub fast float %541, %552
  %556 = fsub fast float %542, %553
  %557 = fsub fast float %543, %554
  %558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %559 = extractvalue %dx.types.CBufRet.f32 %558, 0
  %560 = extractvalue %dx.types.CBufRet.f32 %558, 1
  %561 = fadd fast float %559, %406
  %562 = fadd fast float %560, %407
  %563 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %564 = extractvalue %dx.types.CBufRet.i32 %563, 0
  %565 = icmp eq i32 %564, 1
  br i1 %565, label %566, label %601

; <label>:566                                     ; preds = %497
  %567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %568 = extractvalue %dx.types.CBufRet.f32 %567, 0
  %569 = extractvalue %dx.types.CBufRet.f32 %567, 1
  %570 = fsub fast float %561, %568
  %571 = fsub fast float %562, %569
  %572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %573 = extractvalue %dx.types.CBufRet.f32 %572, 0
  %574 = extractvalue %dx.types.CBufRet.f32 %572, 1
  %575 = fmul fast float %570, %573
  %576 = fmul fast float %571, %574
  %577 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %35, float %575, float %576, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %578 = extractvalue %dx.types.ResRet.f32 %577, 0
  %579 = fcmp fast ogt float %578, 0.000000e+00
  %580 = extractvalue %dx.types.CBufRet.i32 %563, 3
  %581 = icmp ne i32 %580, 0
  %582 = and i1 %579, %581
  br i1 %582, label %583, label %601, !dx.controlflow.hints !106

; <label>:583                                     ; preds = %566
  %584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %585 = extractvalue %dx.types.CBufRet.f32 %584, 0
  %586 = extractvalue %dx.types.CBufRet.f32 %584, 1
  %587 = fsub fast float %561, %585
  %588 = fsub fast float %562, %586
  %589 = fmul fast float %587, %587
  %590 = fmul fast float %588, %588
  %591 = fadd fast float %589, %590
  %592 = uitofp i32 %580 to float
  %593 = fmul fast float %592, %592
  %594 = fcmp fast ogt float %591, %593
  br i1 %594, label %601, label %595

; <label>:595                                     ; preds = %583
  %596 = call float @dx.op.unary.f32(i32 24, float %591)  ; Sqrt(value)
  %597 = fsub fast float %592, %596
  %598 = fmul fast float %597, 0x3F75555560000000
  %599 = call float @dx.op.unary.f32(i32 7, float %598)  ; Saturate(value)
  %600 = call float @dx.op.binary.f32(i32 36, float %599, float %578)  ; FMin(a,b)
  br label %601

; <label>:601                                     ; preds = %595, %583, %566, %497
  %602 = phi float [ 1.000000e+00, %497 ], [ %600, %595 ], [ %578, %566 ], [ 0.000000e+00, %583 ]
  %603 = fcmp fast ogt float %602, 0.000000e+00
  br i1 %603, label %604, label %923, !dx.controlflow.hints !107

; <label>:604                                     ; preds = %601
  %605 = fadd fast float %44, 5.000000e-01
  %606 = fptoui float %605 to i32
  %607 = fadd fast float %66, 5.000000e-01
  %608 = fptoui float %607 to i32
  %609 = shl i32 %608, 3
  %610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %609, i32 undef)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.i32 %610, 0
  %612 = or i32 %609, 4
  %613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %612, i32 undef)  ; BufferLoad(srv,index,wot)
  %614 = extractvalue %dx.types.ResRet.i32 %613, 0
  %615 = and i32 %614, 16777215
  %616 = add i32 %615, %606
  %617 = shl i32 %616, 5
  %618 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %617, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.f32 %618, 0
  %620 = extractvalue %dx.types.ResRet.f32 %618, 1
  %621 = extractvalue %dx.types.ResRet.f32 %618, 2
  %622 = or i32 %617, 16
  %623 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %622, i32 undef)  ; BufferLoad(srv,index,wot)
  %624 = extractvalue %dx.types.ResRet.f32 %623, 0
  %625 = extractvalue %dx.types.ResRet.f32 %623, 1
  %626 = extractvalue %dx.types.ResRet.f32 %623, 2
  %627 = lshr i32 %614, 24
  %628 = and i32 %627, 3
  %629 = add nuw nsw i32 %628, 3
  %630 = shl i32 1, %629
  %631 = lshr i32 %614, 29
  %632 = lshr i32 %614, 23
  %633 = and i32 %632, 56
  %634 = shl nuw nsw i32 %631, 3
  %635 = lshr i32 %611, 16
  %636 = and i32 %611, 65535
  %637 = uitofp i32 %630 to float
  %638 = fmul fast float %637, 1.562500e-02
  %639 = uitofp i32 %635 to float
  %640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %641 = extractvalue %dx.types.CBufRet.f32 %640, 3
  %642 = fmul fast float %641, %639
  %643 = uitofp i32 %633 to float
  %644 = fmul fast float %643, 1.562500e-02
  %645 = uitofp i32 %634 to float
  %646 = fmul fast float %645, 1.562500e-02
  %647 = uitofp i32 %636 to float
  %648 = fmul fast float %641, %647
  %649 = call float @dx.op.unary.f32(i32 7, float %508)  ; Saturate(value)
  %650 = call float @dx.op.unary.f32(i32 7, float %509)  ; Saturate(value)
  %651 = call float @dx.op.unary.f32(i32 7, float %510)  ; Saturate(value)
  %652 = fmul fast float %649, %619
  %653 = fmul fast float %650, %620
  %654 = fmul fast float %651, %621
  %655 = fadd fast float %652, %624
  %656 = fmul fast float %638, %655
  %657 = fadd fast float %656, %644
  %658 = fadd fast float %653, %625
  %659 = fmul fast float %638, %658
  %660 = fadd fast float %659, %646
  %661 = fadd fast float %654, %626
  %662 = fmul fast float %642, %661
  %663 = fadd fast float %662, %648
  %664 = fmul fast float %657, 5.000000e-01
  %665 = fmul fast float %660, 0x3FD5555560000000
  %666 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %33, float %657, float %660, float %663, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %667 = extractvalue %dx.types.ResRet.f32 %666, 0
  %668 = extractvalue %dx.types.ResRet.f32 %666, 1
  %669 = extractvalue %dx.types.ResRet.f32 %666, 2
  %670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %671 = extractvalue %dx.types.CBufRet.f32 %670, 3
  %672 = fmul fast float %671, %667
  %673 = fmul fast float %671, %668
  %674 = fmul fast float %671, %669
  %675 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %33, float %664, float %665, float %663, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %676 = extractvalue %dx.types.ResRet.f32 %675, 0
  %677 = extractvalue %dx.types.ResRet.f32 %675, 1
  %678 = extractvalue %dx.types.ResRet.f32 %675, 2
  %679 = extractvalue %dx.types.ResRet.f32 %675, 3
  %680 = fadd fast float %664, 5.000000e-01
  %681 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %33, float %680, float %665, float %663, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %682 = extractvalue %dx.types.ResRet.f32 %681, 0
  %683 = extractvalue %dx.types.ResRet.f32 %681, 1
  %684 = extractvalue %dx.types.ResRet.f32 %681, 2
  %685 = extractvalue %dx.types.ResRet.f32 %681, 3
  %686 = fadd fast float %665, 0x3FD5555560000000
  %687 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %33, float %664, float %686, float %663, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %688 = extractvalue %dx.types.ResRet.f32 %687, 0
  %689 = extractvalue %dx.types.ResRet.f32 %687, 1
  %690 = extractvalue %dx.types.ResRet.f32 %687, 2
  %691 = extractvalue %dx.types.ResRet.f32 %687, 3
  %692 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %33, float %680, float %686, float %663, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %693 = extractvalue %dx.types.ResRet.f32 %692, 0
  %694 = extractvalue %dx.types.ResRet.f32 %692, 1
  %695 = extractvalue %dx.types.ResRet.f32 %692, 2
  %696 = extractvalue %dx.types.ResRet.f32 %692, 3
  %697 = fadd fast float %665, 0x3FE5555560000000
  %698 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %33, float %664, float %697, float %663, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %699 = extractvalue %dx.types.ResRet.f32 %698, 0
  %700 = extractvalue %dx.types.ResRet.f32 %698, 1
  %701 = extractvalue %dx.types.ResRet.f32 %698, 2
  %702 = extractvalue %dx.types.ResRet.f32 %698, 3
  %703 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %33, float %680, float %697, float %663, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %704 = extractvalue %dx.types.ResRet.f32 %703, 0
  %705 = extractvalue %dx.types.ResRet.f32 %703, 1
  %706 = extractvalue %dx.types.ResRet.f32 %703, 2
  %707 = extractvalue %dx.types.ResRet.f32 %703, 3
  %708 = fmul fast float %676, 0x400BB67AE0000000
  %709 = fadd fast float %708, 0xBFFBB67AE0000000
  %710 = fmul fast float %709, %672
  %711 = fmul fast float %677, 0x400BB67AE0000000
  %712 = fadd fast float %711, 0xBFFBB67AE0000000
  %713 = fmul fast float %712, %673
  %714 = fmul fast float %678, 0x400BB67AE0000000
  %715 = fadd fast float %714, 0xBFFBB67AE0000000
  %716 = fmul fast float %715, %674
  %717 = fmul fast float %679, 0x4011E377A0000000
  %718 = fadd fast float %717, 0xC001E377A0000000
  %719 = fmul fast float %718, %672
  %720 = fmul fast float %682, 0x4011E377A0000000
  %721 = fadd fast float %720, 0xC001E377A0000000
  %722 = fmul fast float %721, %673
  %723 = fmul fast float %683, 0x4011E377A0000000
  %724 = fadd fast float %723, 0xC001E377A0000000
  %725 = fmul fast float %724, %674
  %726 = fmul fast float %684, 0x400BB67AE0000000
  %727 = fadd fast float %726, 0xBFFBB67AE0000000
  %728 = fmul fast float %727, %672
  %729 = fmul fast float %685, 0x400BB67AE0000000
  %730 = fadd fast float %729, 0xBFFBB67AE0000000
  %731 = fmul fast float %730, %673
  %732 = fmul fast float %688, 0x400BB67AE0000000
  %733 = fadd fast float %732, 0xBFFBB67AE0000000
  %734 = fmul fast float %733, %674
  %735 = fmul fast float %689, 0x400BB67AE0000000
  %736 = fadd fast float %735, 0xBFFBB67AE0000000
  %737 = fmul fast float %736, %672
  %738 = fmul fast float %690, 0x400BB67AE0000000
  %739 = fadd fast float %738, 0xBFFBB67AE0000000
  %740 = fmul fast float %739, %673
  %741 = fmul fast float %691, 0x400BB67AE0000000
  %742 = fadd fast float %741, 0xBFFBB67AE0000000
  %743 = fmul fast float %742, %674
  %744 = fmul fast float %693, 0x400EFBDEC0000000
  %745 = fadd fast float %744, 0xBFFEFBDEC0000000
  %746 = fmul fast float %745, %672
  %747 = fmul fast float %694, 0x400EFBDEC0000000
  %748 = fadd fast float %747, 0xBFFEFBDEC0000000
  %749 = fmul fast float %748, %673
  %750 = fmul fast float %695, 0x400EFBDEC0000000
  %751 = fadd fast float %750, 0xBFFEFBDEC0000000
  %752 = fmul fast float %751, %674
  %753 = fmul fast float %696, 0x400EFBDEC0000000
  %754 = fadd fast float %753, 0xBFFEFBDEC0000000
  %755 = fmul fast float %754, %672
  %756 = fmul fast float %699, 0x400EFBDEC0000000
  %757 = fadd fast float %756, 0xBFFEFBDEC0000000
  %758 = fmul fast float %757, %673
  %759 = fmul fast float %700, 0x400EFBDEC0000000
  %760 = fadd fast float %759, 0xBFFEFBDEC0000000
  %761 = fmul fast float %760, %674
  %762 = fmul fast float %701, 0x400EFBDEC0000000
  %763 = fadd fast float %762, 0xBFFEFBDEC0000000
  %764 = fmul fast float %763, %672
  %765 = fmul fast float %702, 0x400EFBDEC0000000
  %766 = fadd fast float %765, 0xBFFEFBDEC0000000
  %767 = fmul fast float %766, %673
  %768 = fmul fast float %704, 0x400EFBDEC0000000
  %769 = fadd fast float %768, 0xBFFEFBDEC0000000
  %770 = fmul fast float %769, %674
  %771 = fmul fast float %705, 0x400EFBDEC0000000
  %772 = fadd fast float %771, 0xBFFEFBDEC0000000
  %773 = fmul fast float %772, %672
  %774 = fmul fast float %706, 0x400EFBDEC0000000
  %775 = fadd fast float %774, 0xBFFEFBDEC0000000
  %776 = fmul fast float %775, %673
  %777 = fmul fast float %707, 0x400EFBDEC0000000
  %778 = fadd fast float %777, 0xBFFEFBDEC0000000
  %779 = fmul fast float %778, %674
  %780 = fmul fast float %672, 0x3FD20DD760000000
  %781 = fmul fast float %340, 0x3FD4D8D7C0000000
  %782 = fmul fast float %781, %710
  %783 = fmul fast float %340, %340
  %784 = fmul fast float %783, 0x3FEE471020000000
  %785 = fadd fast float %784, 0xBFD42F6020000000
  %786 = fmul fast float %719, %785
  %787 = fmul fast float %338, 0x3FD4D8D7C0000000
  %788 = fmul fast float %787, %737
  %789 = fmul fast float %339, 0x3FD4D8D7C0000000
  %790 = fmul fast float %789, %728
  %791 = fmul fast float %340, 0xBFF17B1420000000
  %792 = fmul fast float %746, %338
  %793 = fmul fast float %755, %339
  %794 = fmul fast float %338, %338
  %795 = fmul fast float %339, %339
  %796 = fsub fast float %794, %795
  %797 = fmul fast float %796, 0x3FC17B1420000000
  %798 = fmul fast float %797, %764
  %799 = fmul fast float %338, 0x3FD17B1420000000
  %800 = fmul fast float %799, %339
  %801 = fmul fast float %800, %773
  %802 = fadd fast float %793, %792
  %803 = fmul fast float %791, %802
  %804 = fadd fast float %803, %786
  %805 = fmul fast float %804, 2.500000e-01
  %806 = fadd fast float %782, %780
  %807 = fsub fast float %806, %790
  %808 = fsub fast float %807, %788
  %809 = fadd fast float %808, %805
  %810 = fadd fast float %809, %798
  %811 = fadd fast float %810, %801
  %812 = fmul fast float %673, 0x3FD20DD760000000
  %813 = fmul fast float %781, %713
  %814 = fmul fast float %722, %785
  %815 = fmul fast float %787, %740
  %816 = fmul fast float %789, %731
  %817 = fmul fast float %749, %338
  %818 = fmul fast float %758, %339
  %819 = fmul fast float %797, %767
  %820 = fmul fast float %800, %776
  %821 = fadd fast float %818, %817
  %822 = fmul fast float %791, %821
  %823 = fadd fast float %822, %814
  %824 = fmul fast float %823, 2.500000e-01
  %825 = fadd fast float %813, %812
  %826 = fsub fast float %825, %816
  %827 = fsub fast float %826, %815
  %828 = fadd fast float %827, %819
  %829 = fadd fast float %828, %824
  %830 = fadd fast float %829, %820
  %831 = fmul fast float %674, 0x3FD20DD760000000
  %832 = fmul fast float %781, %716
  %833 = fmul fast float %725, %785
  %834 = fmul fast float %787, %743
  %835 = fmul fast float %789, %734
  %836 = fmul fast float %752, %338
  %837 = fmul fast float %761, %339
  %838 = fmul fast float %797, %770
  %839 = fmul fast float %800, %779
  %840 = fadd fast float %837, %836
  %841 = fmul fast float %791, %840
  %842 = fadd fast float %841, %833
  %843 = fmul fast float %842, 2.500000e-01
  %844 = fadd fast float %832, %831
  %845 = fsub fast float %844, %834
  %846 = fsub fast float %845, %835
  %847 = fadd fast float %846, %843
  %848 = fadd fast float %847, %838
  %849 = fadd fast float %848, %839
  %850 = call float @dx.op.binary.f32(i32 35, float %811, float 0.000000e+00)  ; FMax(a,b)
  %851 = call float @dx.op.binary.f32(i32 35, float %830, float 0.000000e+00)  ; FMax(a,b)
  %852 = call float @dx.op.binary.f32(i32 35, float %849, float 0.000000e+00)  ; FMax(a,b)
  %853 = fmul fast float %557, 0x3FD4D8D7C0000000
  %854 = fmul fast float %853, %710
  %855 = fmul fast float %557, %557
  %856 = fmul fast float %855, 0x3FEE471020000000
  %857 = fadd fast float %856, 0xBFD42F6020000000
  %858 = fmul fast float %719, %857
  %859 = fmul fast float %555, 0x3FD4D8D7C0000000
  %860 = fmul fast float %859, %737
  %861 = fmul fast float %556, 0x3FD4D8D7C0000000
  %862 = fmul fast float %861, %728
  %863 = fmul fast float %557, 0xBFF17B1420000000
  %864 = fmul fast float %746, %555
  %865 = fmul fast float %755, %556
  %866 = fmul fast float %555, %555
  %867 = fmul fast float %556, %556
  %868 = fsub fast float %866, %867
  %869 = fmul fast float %868, 0x3FC17B1420000000
  %870 = fmul fast float %869, %764
  %871 = fmul fast float %556, 0x3FD17B1420000000
  %872 = fmul fast float %871, %555
  %873 = fmul fast float %872, %773
  %874 = fadd fast float %865, %864
  %875 = fmul fast float %863, %874
  %876 = fadd fast float %875, %858
  %877 = fmul fast float %876, 2.500000e-01
  %878 = fadd fast float %854, %780
  %879 = fsub fast float %878, %862
  %880 = fsub fast float %879, %860
  %881 = fadd fast float %880, %877
  %882 = fadd fast float %881, %870
  %883 = fadd fast float %882, %873
  %884 = fmul fast float %853, %713
  %885 = fmul fast float %722, %857
  %886 = fmul fast float %859, %740
  %887 = fmul fast float %861, %731
  %888 = fmul fast float %749, %555
  %889 = fmul fast float %758, %556
  %890 = fmul fast float %869, %767
  %891 = fmul fast float %872, %776
  %892 = fadd fast float %889, %888
  %893 = fmul fast float %863, %892
  %894 = fadd fast float %893, %885
  %895 = fmul fast float %894, 2.500000e-01
  %896 = fadd fast float %884, %812
  %897 = fsub fast float %896, %887
  %898 = fsub fast float %897, %886
  %899 = fadd fast float %898, %890
  %900 = fadd fast float %899, %895
  %901 = fadd fast float %900, %891
  %902 = fmul fast float %853, %716
  %903 = fmul fast float %725, %857
  %904 = fmul fast float %859, %743
  %905 = fmul fast float %861, %734
  %906 = fmul fast float %752, %555
  %907 = fmul fast float %761, %556
  %908 = fmul fast float %869, %770
  %909 = fmul fast float %872, %779
  %910 = fadd fast float %907, %906
  %911 = fmul fast float %863, %910
  %912 = fadd fast float %911, %903
  %913 = fmul fast float %912, 2.500000e-01
  %914 = fadd fast float %902, %831
  %915 = fsub fast float %914, %904
  %916 = fsub fast float %915, %905
  %917 = fadd fast float %916, %913
  %918 = fadd fast float %917, %908
  %919 = fadd fast float %918, %909
  %920 = call float @dx.op.binary.f32(i32 35, float %883, float 0.000000e+00)  ; FMax(a,b)
  %921 = call float @dx.op.binary.f32(i32 35, float %901, float 0.000000e+00)  ; FMax(a,b)
  %922 = call float @dx.op.binary.f32(i32 35, float %919, float 0.000000e+00)  ; FMax(a,b)
  br label %923

; <label>:923                                     ; preds = %604, %601
  %924 = phi float [ %920, %604 ], [ 0.000000e+00, %601 ]
  %925 = phi float [ %921, %604 ], [ 0.000000e+00, %601 ]
  %926 = phi float [ %922, %604 ], [ 0.000000e+00, %601 ]
  %927 = phi float [ %850, %604 ], [ 0.000000e+00, %601 ]
  %928 = phi float [ %851, %604 ], [ 0.000000e+00, %601 ]
  %929 = phi float [ %852, %604 ], [ 0.000000e+00, %601 ]
  %930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %931 = extractvalue %dx.types.CBufRet.f32 %930, 0
  %932 = fcmp fast ogt float %931, 0.000000e+00
  %933 = and i1 %603, %932
  br i1 %933, label %934, label %1138, !dx.controlflow.hints !108

; <label>:934                                     ; preds = %923
  %935 = extractvalue %dx.types.CBufRet.f32 %558, 2
  %936 = fadd fast float %935, %408
  %937 = fmul fast float %338, 3.200000e+01
  %938 = fmul fast float %339, 3.200000e+01
  %939 = fadd fast float %561, %937
  %940 = fadd fast float %562, %938
  %941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %942 = extractvalue %dx.types.CBufRet.f32 %941, 0
  %943 = extractvalue %dx.types.CBufRet.f32 %941, 1
  %944 = fsub fast float %939, %942
  %945 = fsub fast float %940, %943
  %946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %947 = extractvalue %dx.types.CBufRet.f32 %946, 0
  %948 = extractvalue %dx.types.CBufRet.f32 %946, 1
  %949 = fmul fast float %944, %947
  %950 = fmul fast float %945, %948
  %951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %952 = extractvalue %dx.types.CBufRet.f32 %951, 0
  %953 = extractvalue %dx.types.CBufRet.f32 %951, 1
  %954 = fsub fast float %561, %952
  %955 = fsub fast float %562, %953
  %956 = fmul fast float %954, %954
  %957 = fmul fast float %955, %955
  %958 = fadd fast float %956, %957
  %959 = call float @dx.op.unary.f32(i32 24, float %958)  ; Sqrt(value)
  %960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %961 = extractvalue %dx.types.CBufRet.f32 %960, 0
  %962 = extractvalue %dx.types.CBufRet.f32 %960, 1
  %963 = fsub fast float %959, %961
  %964 = fdiv fast float %963, %962
  %965 = call float @dx.op.unary.f32(i32 7, float %964)  ; Saturate(value)
  %966 = fmul fast float %965, 2.000000e+00
  %967 = fsub fast float 3.000000e+00, %966
  %968 = fmul fast float %965, %965
  %969 = fmul fast float %968, %967
  %970 = fcmp fast oge float %949, 0.000000e+00
  %971 = fcmp fast ole float %949, 1.000000e+00
  %972 = and i1 %971, %970
  %973 = fcmp fast oge float %950, 0.000000e+00
  %974 = and i1 %973, %972
  %975 = fcmp fast ole float %950, 1.000000e+00
  %976 = and i1 %975, %974
  %977 = fcmp fast ogt float %969, 0.000000e+00
  %978 = and i1 %977, %976
  br i1 %978, label %979, label %1102, !dx.controlflow.hints !109

; <label>:979                                     ; preds = %934
  %980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %981 = extractvalue %dx.types.CBufRet.f32 %980, 2
  %982 = extractvalue %dx.types.CBufRet.f32 %980, 3
  %983 = fmul fast float %981, %949
  %984 = fmul fast float %982, %950
  %985 = call float @dx.op.unary.f32(i32 27, float %983)  ; Round_ni(value)
  %986 = call float @dx.op.unary.f32(i32 27, float %984)  ; Round_ni(value)
  %987 = fptosi float %985 to i32
  %988 = fptosi float %986 to i32
  %989 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %19, i32 0, i32 %987, i32 %988, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %990 = extractvalue %dx.types.ResRet.i32 %989, 0
  %991 = lshr i32 %990, 16
  %992 = icmp eq i32 %991, 65535
  br i1 %992, label %1102, label %993

; <label>:993                                     ; preds = %979
  %994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %995 = extractvalue %dx.types.CBufRet.f32 %994, 0
  %996 = fmul fast float %995, %949
  %997 = extractvalue %dx.types.CBufRet.f32 %994, 1
  %998 = fadd fast float %996, %997
  %999 = extractvalue %dx.types.CBufRet.f32 %994, 2
  %1000 = fmul fast float %999, %950
  %1001 = extractvalue %dx.types.CBufRet.f32 %994, 3
  %1002 = fadd fast float %1000, %1001
  %1003 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %35, float %998, float %1002, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1004 = extractvalue %dx.types.ResRet.f32 %1003, 0
  %1005 = extractvalue %dx.types.ResRet.f32 %1003, 1
  %1006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1007 = extractvalue %dx.types.CBufRet.f32 %1006, 1
  %1008 = extractvalue %dx.types.CBufRet.f32 %1006, 0
  %1009 = fsub fast float %1007, %1008
  %1010 = fmul fast float %1009, %1004
  %1011 = fadd fast float %1010, %1008
  %1012 = extractvalue %dx.types.CBufRet.f32 %1006, 3
  %1013 = extractvalue %dx.types.CBufRet.f32 %1006, 2
  %1014 = fsub fast float %1012, %1013
  %1015 = fmul fast float %1014, %1005
  %1016 = fadd fast float %1015, %1013
  %1017 = fsub fast float %936, %1011
  %1018 = fsub fast float %1016, %1011
  %1019 = fdiv fast float %1017, %1018
  %1020 = call float @dx.op.unary.f32(i32 7, float %1019)  ; Saturate(value)
  %1021 = extractvalue %dx.types.CBufRet.f32 %930, 1
  %1022 = extractvalue %dx.types.CBufRet.f32 %980, 0
  %1023 = extractvalue %dx.types.CBufRet.f32 %980, 1
  %1024 = fmul fast float %1022, %949
  %1025 = fmul fast float %1023, %950
  %1026 = fmul fast float %1024, 1.250000e-01
  %1027 = fmul fast float %1025, 1.250000e-01
  %1028 = call float @dx.op.unary.f32(i32 27, float %1026)  ; Round_ni(value)
  %1029 = call float @dx.op.unary.f32(i32 27, float %1027)  ; Round_ni(value)
  %1030 = fmul fast float %1028, 8.000000e+00
  %1031 = fmul fast float %1029, 8.000000e+00
  %1032 = fsub fast float %1024, %1030
  %1033 = fsub fast float %1025, %1031
  %1034 = fadd fast float %1032, 5.000000e-01
  %1035 = fadd fast float %1033, 5.000000e-01
  %1036 = and i32 %991, 255
  %1037 = lshr i32 %990, 24
  %1038 = mul nuw nsw i32 %1036, 9
  %1039 = uitofp i32 %1038 to float
  %1040 = mul nuw nsw i32 %1037, 9
  %1041 = uitofp i32 %1040 to float
  %1042 = fadd fast float %1034, %1039
  %1043 = fadd fast float %1035, %1041
  %1044 = fdiv fast float %1042, %931
  %1045 = fdiv fast float %1043, %1021
  %1046 = fmul fast float %1020, 4.375000e-01
  %1047 = fadd fast float %1046, 3.125000e-02
  %1048 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %35, float %1044, float %1045, float %1047, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1049 = extractvalue %dx.types.ResRet.f32 %1048, 0
  %1050 = extractvalue %dx.types.ResRet.f32 %1048, 1
  %1051 = extractvalue %dx.types.ResRet.f32 %1048, 2
  %1052 = fadd fast float %1046, 5.312500e-01
  %1053 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %35, float %1044, float %1045, float %1052, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1054 = extractvalue %dx.types.ResRet.f32 %1053, 0
  %1055 = extractvalue %dx.types.ResRet.f32 %1053, 1
  %1056 = extractvalue %dx.types.ResRet.f32 %1053, 2
  %1057 = fmul fast float %1054, 2.000000e+00
  %1058 = fmul fast float %1055, 2.000000e+00
  %1059 = fmul fast float %1056, 2.000000e+00
  %1060 = fadd fast float %1057, -1.000000e+00
  %1061 = fadd fast float %1058, -1.000000e+00
  %1062 = fadd fast float %1059, -1.000000e+00
  %1063 = fmul fast float %1060, %1060
  %1064 = fmul fast float %1061, %1061
  %1065 = fadd fast float %1063, %1064
  %1066 = fmul fast float %1062, %1062
  %1067 = fadd fast float %1065, %1066
  %1068 = call float @dx.op.unary.f32(i32 24, float %1067)  ; Sqrt(value)
  %1069 = fcmp fast ogt float %1068, 0.000000e+00
  br i1 %1069, label %1070, label %1074

; <label>:1070                                    ; preds = %993
  %1071 = fdiv fast float %1060, %1068
  %1072 = fdiv fast float %1061, %1068
  %1073 = fdiv fast float %1062, %1068
  br label %1074

; <label>:1074                                    ; preds = %1070, %993
  %1075 = phi float [ %1071, %1070 ], [ 0.000000e+00, %993 ]
  %1076 = phi float [ %1072, %1070 ], [ 0.000000e+00, %993 ]
  %1077 = phi float [ %1073, %1070 ], [ 0.000000e+00, %993 ]
  %1078 = call float @dx.op.dot3.f32(i32 55, float %1075, float %1076, float %1077, float %338, float %339, float %340)  ; Dot3(ax,ay,az,bx,by,bz)
  %1079 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1078)  ; FMax(a,b)
  %1080 = fmul fast float %1079, 0x400C5BF8A0000000
  %1081 = fmul fast float %1049, %969
  %1082 = fmul fast float %1081, %1080
  %1083 = fmul fast float %1050, %969
  %1084 = fmul fast float %1083, %1080
  %1085 = fmul fast float %1051, %969
  %1086 = fmul fast float %1085, %1080
  %1087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1088 = extractvalue %dx.types.CBufRet.f32 %1087, 3
  %1089 = fmul fast float %1082, %1088
  %1090 = fmul fast float %1084, %1088
  %1091 = fmul fast float %1086, %1088
  %1092 = fcmp fast ogt float %936, %1016
  br i1 %1092, label %1093, label %1102

; <label>:1093                                    ; preds = %1074
  %1094 = fmul fast float %1018, 0x3FC24924A0000000
  %1095 = fsub fast float %936, %1016
  %1096 = fdiv fast float %1095, %1094
  %1097 = call float @dx.op.unary.f32(i32 7, float %1096)  ; Saturate(value)
  %1098 = fsub fast float 1.000000e+00, %1097
  %1099 = fmul fast float %1098, %1089
  %1100 = fmul fast float %1098, %1090
  %1101 = fmul fast float %1098, %1091
  br label %1102

; <label>:1102                                    ; preds = %1093, %1074, %979, %934
  %1103 = phi float [ %1101, %1093 ], [ %1091, %1074 ], [ 0.000000e+00, %979 ], [ 0.000000e+00, %934 ]
  %1104 = phi float [ %1100, %1093 ], [ %1090, %1074 ], [ 0.000000e+00, %979 ], [ 0.000000e+00, %934 ]
  %1105 = phi float [ %1099, %1093 ], [ %1089, %1074 ], [ 0.000000e+00, %979 ], [ 0.000000e+00, %934 ]
  %1106 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1105)  ; FMax(a,b)
  %1107 = fmul fast float %1106, 0x3FD20DD760000000
  %1108 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %555, float %556, float %557)  ; Dot3(ax,ay,az,bx,by,bz)
  %1109 = fmul fast float %1108, 0x3FDF454380000000
  %1110 = fmul fast float %1108, %1108
  %1111 = fmul fast float %1110, 0x3FEE471020000000
  %1112 = fadd fast float %1111, 0xBFD42F6020000000
  %1113 = call float @dx.op.dot3.f32(i32 55, float %1106, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1109, float %1112)  ; Dot3(ax,ay,az,bx,by,bz)
  %1114 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1104)  ; FMax(a,b)
  %1115 = fmul fast float %1114, 0x3FD20DD760000000
  %1116 = call float @dx.op.dot3.f32(i32 55, float %1114, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1109, float %1112)  ; Dot3(ax,ay,az,bx,by,bz)
  %1117 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1103)  ; FMax(a,b)
  %1118 = fmul fast float %1117, 0x3FD20DD760000000
  %1119 = call float @dx.op.dot3.f32(i32 55, float %1117, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1109, float %1112)  ; Dot3(ax,ay,az,bx,by,bz)
  %1120 = call float @dx.op.binary.f32(i32 35, float %1107, float 0.000000e+00)  ; FMax(a,b)
  %1121 = call float @dx.op.binary.f32(i32 35, float %1115, float 0.000000e+00)  ; FMax(a,b)
  %1122 = call float @dx.op.binary.f32(i32 35, float %1118, float 0.000000e+00)  ; FMax(a,b)
  %1123 = call float @dx.op.binary.f32(i32 35, float %1113, float 0.000000e+00)  ; FMax(a,b)
  %1124 = call float @dx.op.binary.f32(i32 35, float %1116, float 0.000000e+00)  ; FMax(a,b)
  %1125 = call float @dx.op.binary.f32(i32 35, float %1119, float 0.000000e+00)  ; FMax(a,b)
  %1126 = fmul fast float %1120, %602
  %1127 = fmul fast float %1121, %602
  %1128 = fmul fast float %1122, %602
  %1129 = fadd fast float %1126, %927
  %1130 = fadd fast float %1127, %928
  %1131 = fadd fast float %1128, %929
  %1132 = fmul fast float %1123, %602
  %1133 = fmul fast float %1124, %602
  %1134 = fmul fast float %1125, %602
  %1135 = fadd fast float %1132, %924
  %1136 = fadd fast float %1133, %925
  %1137 = fadd fast float %1134, %926
  br label %1138

; <label>:1138                                    ; preds = %1102, %923
  %1139 = phi float [ %1135, %1102 ], [ %924, %923 ]
  %1140 = phi float [ %1136, %1102 ], [ %925, %923 ]
  %1141 = phi float [ %1137, %1102 ], [ %926, %923 ]
  %1142 = phi float [ %1129, %1102 ], [ %927, %923 ]
  %1143 = phi float [ %1130, %1102 ], [ %928, %923 ]
  %1144 = phi float [ %1131, %1102 ], [ %929, %923 ]
  %1145 = fcmp fast olt float %602, 1.000000e+00
  br i1 %1145, label %1146, label %1964, !dx.controlflow.hints !110

; <label>:1146                                    ; preds = %1138
  %1147 = extractvalue %dx.types.CBufRet.f32 %558, 2
  %1148 = fadd fast float %1147, %408
  %1149 = fmul fast float %338, 3.200000e+01
  %1150 = fmul fast float %339, 3.200000e+01
  %1151 = fadd fast float %561, %1149
  %1152 = fadd fast float %562, %1150
  %1153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1154 = extractvalue %dx.types.CBufRet.f32 %1153, 0
  %1155 = extractvalue %dx.types.CBufRet.f32 %1153, 1
  %1156 = fsub fast float %1151, %1154
  %1157 = fsub fast float %1152, %1155
  %1158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1159 = extractvalue %dx.types.CBufRet.f32 %1158, 0
  %1160 = extractvalue %dx.types.CBufRet.f32 %1158, 1
  %1161 = fmul fast float %1156, %1159
  %1162 = fmul fast float %1157, %1160
  %1163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1164 = extractvalue %dx.types.CBufRet.f32 %1163, 0
  %1165 = fmul fast float %1161, %1164
  %1166 = extractvalue %dx.types.CBufRet.f32 %1163, 1
  %1167 = fadd fast float %1165, %1166
  %1168 = extractvalue %dx.types.CBufRet.f32 %1163, 2
  %1169 = fmul fast float %1168, %1162
  %1170 = extractvalue %dx.types.CBufRet.f32 %1163, 3
  %1171 = fadd fast float %1169, %1170
  %1172 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %35, float %1167, float %1171, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1173 = extractvalue %dx.types.ResRet.f32 %1172, 0
  %1174 = extractvalue %dx.types.ResRet.f32 %1172, 1
  %1175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1176 = extractvalue %dx.types.CBufRet.f32 %1175, 1
  %1177 = extractvalue %dx.types.CBufRet.f32 %1175, 0
  %1178 = fsub fast float %1176, %1177
  %1179 = fmul fast float %1178, %1173
  %1180 = fadd fast float %1179, %1177
  %1181 = extractvalue %dx.types.CBufRet.f32 %1175, 3
  %1182 = extractvalue %dx.types.CBufRet.f32 %1175, 2
  %1183 = fsub fast float %1181, %1182
  %1184 = fmul fast float %1183, %1174
  %1185 = fadd fast float %1184, %1182
  %1186 = fsub fast float %1148, %1180
  %1187 = fsub fast float %1185, %1180
  %1188 = fdiv fast float %1186, %1187
  %1189 = call float @dx.op.unary.f32(i32 7, float %1188)  ; Saturate(value)
  %1190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1191 = extractvalue %dx.types.CBufRet.f32 %1190, 0
  %1192 = fmul fast float %1191, %1189
  %1193 = extractvalue %dx.types.CBufRet.f32 %1190, 1
  %1194 = fadd fast float %1192, %1193
  %1195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %35, float %1167, float %1171, float %1194, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1196 = extractvalue %dx.types.ResRet.f32 %1195, 0
  %1197 = extractvalue %dx.types.ResRet.f32 %1195, 1
  %1198 = extractvalue %dx.types.ResRet.f32 %1195, 2
  %1199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1200 = extractvalue %dx.types.CBufRet.f32 %1199, 0
  %1201 = extractvalue %dx.types.CBufRet.f32 %1199, 1
  %1202 = extractvalue %dx.types.CBufRet.f32 %1199, 2
  %1203 = fmul fast float %1200, %1196
  %1204 = fmul fast float %1201, %1197
  %1205 = fmul fast float %1202, %1198
  %1206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1207 = extractvalue %dx.types.CBufRet.f32 %1206, 0
  %1208 = extractvalue %dx.types.CBufRet.f32 %1206, 1
  %1209 = extractvalue %dx.types.CBufRet.f32 %1206, 2
  %1210 = fadd fast float %1203, %1207
  %1211 = fadd fast float %1204, %1208
  %1212 = fadd fast float %1205, %1209
  %1213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1214 = extractvalue %dx.types.CBufRet.f32 %1213, 0
  %1215 = fmul fast float %1214, %1161
  %1216 = extractvalue %dx.types.CBufRet.f32 %1213, 1
  %1217 = fadd fast float %1215, %1216
  %1218 = extractvalue %dx.types.CBufRet.f32 %1213, 2
  %1219 = fmul fast float %1218, %1162
  %1220 = extractvalue %dx.types.CBufRet.f32 %1213, 3
  %1221 = fadd fast float %1219, %1220
  %1222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1223 = extractvalue %dx.types.CBufRet.f32 %1222, 0
  %1224 = extractvalue %dx.types.CBufRet.f32 %1222, 1
  %1225 = extractvalue %dx.types.CBufRet.f32 %1222, 2
  %1226 = extractvalue %dx.types.CBufRet.f32 %1222, 3
  %1227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1228 = extractvalue %dx.types.CBufRet.f32 %1227, 0
  %1229 = extractvalue %dx.types.CBufRet.f32 %1227, 1
  %1230 = extractvalue %dx.types.CBufRet.f32 %1227, 2
  %1231 = extractvalue %dx.types.CBufRet.f32 %1227, 3
  %1232 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %35, float %1217, float %1221, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1233 = extractvalue %dx.types.ResRet.f32 %1232, 0
  %1234 = extractvalue %dx.types.ResRet.f32 %1232, 1
  %1235 = extractvalue %dx.types.ResRet.f32 %1232, 2
  %1236 = extractvalue %dx.types.ResRet.f32 %1232, 3
  %1237 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %35, float %1217, float %1221, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1238 = extractvalue %dx.types.ResRet.f32 %1237, 0
  %1239 = extractvalue %dx.types.ResRet.f32 %1237, 1
  %1240 = extractvalue %dx.types.ResRet.f32 %1237, 2
  %1241 = extractvalue %dx.types.ResRet.f32 %1237, 3
  %1242 = fmul fast float %1233, %1210
  %1243 = fmul fast float %1238, %1210
  %1244 = fmul fast float %1240, %1210
  %1245 = fmul fast float %1236, %1210
  %1246 = fadd fast float %1242, %1223
  %1247 = fadd fast float %1243, %1224
  %1248 = fadd fast float %1244, %1225
  %1249 = fadd fast float %1245, %1226
  %1250 = fmul fast float %1234, %1210
  %1251 = fmul fast float %1239, %1210
  %1252 = fadd fast float %1250, %1228
  %1253 = fadd fast float %1251, %1229
  %1254 = fmul fast float %1235, %1210
  %1255 = fmul fast float %1241, %1210
  %1256 = fadd fast float %1254, %1230
  %1257 = fadd fast float %1255, %1231
  %1258 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %35, float %1217, float %1221, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1259 = extractvalue %dx.types.ResRet.f32 %1258, 0
  %1260 = extractvalue %dx.types.ResRet.f32 %1258, 1
  %1261 = extractvalue %dx.types.ResRet.f32 %1258, 2
  %1262 = extractvalue %dx.types.ResRet.f32 %1258, 3
  %1263 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %35, float %1217, float %1221, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1264 = extractvalue %dx.types.ResRet.f32 %1263, 0
  %1265 = extractvalue %dx.types.ResRet.f32 %1263, 1
  %1266 = extractvalue %dx.types.ResRet.f32 %1263, 2
  %1267 = extractvalue %dx.types.ResRet.f32 %1263, 3
  %1268 = fmul fast float %1259, %1211
  %1269 = fmul fast float %1264, %1211
  %1270 = fmul fast float %1266, %1211
  %1271 = fmul fast float %1262, %1211
  %1272 = fadd fast float %1246, %1268
  %1273 = fadd fast float %1247, %1269
  %1274 = fadd fast float %1248, %1270
  %1275 = fadd fast float %1249, %1271
  %1276 = fmul fast float %1260, %1211
  %1277 = fmul fast float %1265, %1211
  %1278 = fadd fast float %1252, %1276
  %1279 = fadd fast float %1253, %1277
  %1280 = fmul fast float %1261, %1211
  %1281 = fmul fast float %1267, %1211
  %1282 = fadd fast float %1256, %1280
  %1283 = fadd fast float %1257, %1281
  %1284 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %35, float %1217, float %1221, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1285 = extractvalue %dx.types.ResRet.f32 %1284, 0
  %1286 = extractvalue %dx.types.ResRet.f32 %1284, 1
  %1287 = extractvalue %dx.types.ResRet.f32 %1284, 2
  %1288 = extractvalue %dx.types.ResRet.f32 %1284, 3
  %1289 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %35, float %1217, float %1221, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1290 = extractvalue %dx.types.ResRet.f32 %1289, 0
  %1291 = extractvalue %dx.types.ResRet.f32 %1289, 1
  %1292 = extractvalue %dx.types.ResRet.f32 %1289, 2
  %1293 = extractvalue %dx.types.ResRet.f32 %1289, 3
  %1294 = fmul fast float %1285, %1212
  %1295 = fmul fast float %1290, %1212
  %1296 = fmul fast float %1292, %1212
  %1297 = fmul fast float %1288, %1212
  %1298 = fadd fast float %1272, %1294
  %1299 = fadd fast float %1273, %1295
  %1300 = fadd fast float %1274, %1296
  %1301 = fadd fast float %1275, %1297
  %1302 = fmul fast float %1286, %1212
  %1303 = fmul fast float %1291, %1212
  %1304 = fadd fast float %1278, %1302
  %1305 = fadd fast float %1279, %1303
  %1306 = fmul fast float %1287, %1212
  %1307 = fmul fast float %1293, %1212
  %1308 = fadd fast float %1282, %1306
  %1309 = fadd fast float %1283, %1307
  %1310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1311 = extractvalue %dx.types.CBufRet.f32 %1310, 0
  %1312 = fsub fast float %561, %1311
  %1313 = fsub fast float %1154, %561
  %1314 = call float @dx.op.binary.f32(i32 35, float %1313, float %1312)  ; FMax(a,b)
  %1315 = extractvalue %dx.types.CBufRet.f32 %1310, 1
  %1316 = fsub fast float %562, %1315
  %1317 = fsub fast float %1155, %562
  %1318 = call float @dx.op.binary.f32(i32 35, float %1317, float %1316)  ; FMax(a,b)
  %1319 = call float @dx.op.binary.f32(i32 35, float %1314, float %1318)  ; FMax(a,b)
  %1320 = extractvalue %dx.types.CBufRet.f32 %1158, 3
  %1321 = fmul fast float %1320, %1319
  %1322 = call float @dx.op.unary.f32(i32 7, float %1321)  ; Saturate(value)
  %1323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1324 = extractvalue %dx.types.CBufRet.f32 %1323, 0
  %1325 = extractvalue %dx.types.CBufRet.f32 %1323, 1
  %1326 = extractvalue %dx.types.CBufRet.f32 %1323, 2
  %1327 = extractvalue %dx.types.CBufRet.f32 %1323, 3
  %1328 = fsub fast float %1324, %1298
  %1329 = fsub fast float %1325, %1299
  %1330 = fsub fast float %1326, %1300
  %1331 = fsub fast float %1327, %1301
  %1332 = fmul fast float %1328, %1322
  %1333 = fmul fast float %1329, %1322
  %1334 = fmul fast float %1330, %1322
  %1335 = fmul fast float %1331, %1322
  %1336 = fadd fast float %1332, %1298
  %1337 = fadd fast float %1333, %1299
  %1338 = fadd fast float %1334, %1300
  %1339 = fadd fast float %1335, %1301
  %1340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1341 = extractvalue %dx.types.CBufRet.f32 %1340, 0
  %1342 = extractvalue %dx.types.CBufRet.f32 %1340, 1
  %1343 = fsub fast float %1341, %1304
  %1344 = fsub fast float %1342, %1305
  %1345 = fmul fast float %1343, %1322
  %1346 = fmul fast float %1344, %1322
  %1347 = fadd fast float %1345, %1304
  %1348 = fadd fast float %1346, %1305
  %1349 = extractvalue %dx.types.CBufRet.f32 %1340, 2
  %1350 = extractvalue %dx.types.CBufRet.f32 %1340, 3
  %1351 = fsub fast float %1349, %1308
  %1352 = fsub fast float %1350, %1309
  %1353 = fmul fast float %1351, %1322
  %1354 = fmul fast float %1352, %1322
  %1355 = fadd fast float %1353, %1308
  %1356 = fadd fast float %1354, %1309
  %1357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1358 = extractvalue %dx.types.CBufRet.f32 %1357, 0
  %1359 = fmul fast float %1358, %1336
  %1360 = fmul fast float %1358, %1337
  %1361 = fmul fast float %1358, %1338
  %1362 = fmul fast float %1358, %1339
  %1363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1364 = extractvalue %dx.types.CBufRet.f32 %1363, 0
  %1365 = fmul fast float %1364, %1347
  %1366 = fmul fast float %1364, %1348
  %1367 = fadd fast float %1365, %1359
  %1368 = fadd fast float %1366, %1361
  %1369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1370 = extractvalue %dx.types.CBufRet.f32 %1369, 0
  %1371 = fmul fast float %1370, %1355
  %1372 = fmul fast float %1370, %1356
  %1373 = fadd fast float %1367, %1371
  %1374 = fadd fast float %1368, %1372
  %1375 = extractvalue %dx.types.CBufRet.f32 %1357, 1
  %1376 = fmul fast float %1375, %1336
  %1377 = fmul fast float %1375, %1337
  %1378 = fmul fast float %1375, %1338
  %1379 = fmul fast float %1375, %1339
  %1380 = extractvalue %dx.types.CBufRet.f32 %1363, 1
  %1381 = fmul fast float %1380, %1347
  %1382 = fmul fast float %1380, %1348
  %1383 = fadd fast float %1381, %1376
  %1384 = fadd fast float %1382, %1378
  %1385 = extractvalue %dx.types.CBufRet.f32 %1369, 1
  %1386 = fmul fast float %1385, %1355
  %1387 = fmul fast float %1385, %1356
  %1388 = fadd fast float %1383, %1386
  %1389 = fadd fast float %1384, %1387
  %1390 = extractvalue %dx.types.CBufRet.f32 %1357, 2
  %1391 = fmul fast float %1390, %1336
  %1392 = fmul fast float %1390, %1337
  %1393 = fmul fast float %1390, %1338
  %1394 = fmul fast float %1390, %1339
  %1395 = extractvalue %dx.types.CBufRet.f32 %1363, 2
  %1396 = fmul fast float %1395, %1347
  %1397 = fmul fast float %1395, %1348
  %1398 = fadd fast float %1396, %1391
  %1399 = fadd fast float %1397, %1393
  %1400 = extractvalue %dx.types.CBufRet.f32 %1369, 2
  %1401 = fmul fast float %1400, %1355
  %1402 = fmul fast float %1400, %1356
  %1403 = fadd fast float %1398, %1401
  %1404 = fadd fast float %1399, %1402
  %1405 = fmul fast float %1392, %1392
  %1406 = fmul fast float %1404, %1404
  %1407 = fmul fast float %1394, %1394
  %1408 = fadd fast float %1407, %1405
  %1409 = fadd fast float %1408, %1406
  %1410 = call float @dx.op.unary.f32(i32 24, float %1409)  ; Sqrt(value)
  %1411 = fcmp fast ugt float %1410, 0.000000e+00
  br i1 %1411, label %1412, label %1427

; <label>:1412                                    ; preds = %1146
  %1413 = fsub fast float -0.000000e+00, %1394
  %1414 = fdiv fast float %1413, %1410
  %1415 = fsub fast float -0.000000e+00, %1392
  %1416 = fdiv fast float %1415, %1410
  %1417 = fdiv fast float %1404, %1410
  %1418 = fmul fast float %1403, 0x3FE279A760000000
  %1419 = fmul fast float %1416, %1392
  %1420 = fmul fast float %1417, %1404
  %1421 = fmul fast float %1414, %1394
  %1422 = fadd fast float %1419, %1421
  %1423 = fsub fast float %1422, %1420
  %1424 = call float @dx.op.unary.f32(i32 6, float %1423)  ; FAbs(value)
  %1425 = fadd fast float %1424, 0x3DDB7CDFE0000000
  %1426 = fdiv fast float %1418, %1425
  br label %1427

; <label>:1427                                    ; preds = %1412, %1146
  %1428 = phi float [ %1426, %1412 ], [ 1.000000e+00, %1146 ]
  %1429 = fmul fast float %1377, %1377
  %1430 = fmul fast float %1389, %1389
  %1431 = fmul fast float %1379, %1379
  %1432 = fadd fast float %1431, %1429
  %1433 = fadd fast float %1432, %1430
  %1434 = call float @dx.op.unary.f32(i32 24, float %1433)  ; Sqrt(value)
  %1435 = fcmp fast ugt float %1434, 0.000000e+00
  br i1 %1435, label %1436, label %1451

; <label>:1436                                    ; preds = %1427
  %1437 = fsub fast float -0.000000e+00, %1379
  %1438 = fdiv fast float %1437, %1434
  %1439 = fsub fast float -0.000000e+00, %1377
  %1440 = fdiv fast float %1439, %1434
  %1441 = fdiv fast float %1389, %1434
  %1442 = fmul fast float %1388, 0x3FE279A760000000
  %1443 = fmul fast float %1440, %1377
  %1444 = fmul fast float %1441, %1389
  %1445 = fmul fast float %1438, %1379
  %1446 = fadd fast float %1443, %1445
  %1447 = fsub fast float %1446, %1444
  %1448 = call float @dx.op.unary.f32(i32 6, float %1447)  ; FAbs(value)
  %1449 = fadd fast float %1448, 0x3DDB7CDFE0000000
  %1450 = fdiv fast float %1442, %1449
  br label %1451

; <label>:1451                                    ; preds = %1436, %1427
  %1452 = phi float [ %1450, %1436 ], [ 1.000000e+00, %1427 ]
  %1453 = call float @dx.op.binary.f32(i32 36, float %1452, float %1428)  ; FMin(a,b)
  %1454 = fmul fast float %1360, %1360
  %1455 = fmul fast float %1374, %1374
  %1456 = fmul fast float %1362, %1362
  %1457 = fadd fast float %1456, %1454
  %1458 = fadd fast float %1457, %1455
  %1459 = call float @dx.op.unary.f32(i32 24, float %1458)  ; Sqrt(value)
  %1460 = fcmp fast ugt float %1459, 0.000000e+00
  br i1 %1460, label %1461, label %1476

; <label>:1461                                    ; preds = %1451
  %1462 = fsub fast float -0.000000e+00, %1362
  %1463 = fdiv fast float %1462, %1459
  %1464 = fsub fast float -0.000000e+00, %1360
  %1465 = fdiv fast float %1464, %1459
  %1466 = fdiv fast float %1374, %1459
  %1467 = fmul fast float %1373, 0x3FE279A760000000
  %1468 = fmul fast float %1465, %1360
  %1469 = fmul fast float %1466, %1374
  %1470 = fmul fast float %1463, %1362
  %1471 = fadd fast float %1468, %1470
  %1472 = fsub fast float %1471, %1469
  %1473 = call float @dx.op.unary.f32(i32 6, float %1472)  ; FAbs(value)
  %1474 = fadd fast float %1473, 0x3DDB7CDFE0000000
  %1475 = fdiv fast float %1467, %1474
  br label %1476

; <label>:1476                                    ; preds = %1461, %1451
  %1477 = phi float [ %1475, %1461 ], [ 1.000000e+00, %1451 ]
  %1478 = call float @dx.op.binary.f32(i32 36, float %1477, float %1453)  ; FMin(a,b)
  %1479 = call float @dx.op.unary.f32(i32 7, float %1478)  ; Saturate(value)
  %1480 = fcmp fast olt float %1479, 1.000000e+00
  br i1 %1480, label %1481, label %1491

; <label>:1481                                    ; preds = %1476
  %1482 = fmul fast float %1479, %1360
  %1483 = fmul fast float %1479, %1374
  %1484 = fmul fast float %1479, %1362
  %1485 = fmul fast float %1479, %1377
  %1486 = fmul fast float %1479, %1389
  %1487 = fmul fast float %1479, %1379
  %1488 = fmul fast float %1479, %1392
  %1489 = fmul fast float %1479, %1404
  %1490 = fmul fast float %1479, %1394
  br label %1491

; <label>:1491                                    ; preds = %1481, %1476
  %1492 = phi float [ %1488, %1481 ], [ %1392, %1476 ]
  %1493 = phi float [ %1489, %1481 ], [ %1404, %1476 ]
  %1494 = phi float [ %1490, %1481 ], [ %1394, %1476 ]
  %1495 = phi float [ %1485, %1481 ], [ %1377, %1476 ]
  %1496 = phi float [ %1486, %1481 ], [ %1389, %1476 ]
  %1497 = phi float [ %1487, %1481 ], [ %1379, %1476 ]
  %1498 = phi float [ %1482, %1481 ], [ %1360, %1476 ]
  %1499 = phi float [ %1483, %1481 ], [ %1374, %1476 ]
  %1500 = phi float [ %1484, %1481 ], [ %1362, %1476 ]
  %1501 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1373)  ; FMax(a,b)
  %1502 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1388)  ; FMax(a,b)
  %1503 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1403)  ; FMax(a,b)
  %1504 = fcmp fast oge float %1161, 0.000000e+00
  %1505 = and i1 %1504, %932
  %1506 = fcmp fast ole float %1161, 1.000000e+00
  %1507 = and i1 %1506, %1505
  %1508 = fcmp fast oge float %1162, 0.000000e+00
  %1509 = and i1 %1508, %1507
  %1510 = fcmp fast ole float %1162, 1.000000e+00
  %1511 = and i1 %1510, %1509
  br i1 %1511, label %1512, label %1657, !dx.controlflow.hints !111

; <label>:1512                                    ; preds = %1491
  %1513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1514 = extractvalue %dx.types.CBufRet.f32 %1513, 2
  %1515 = extractvalue %dx.types.CBufRet.f32 %1513, 3
  %1516 = fmul fast float %1514, %1161
  %1517 = fmul fast float %1515, %1162
  %1518 = call float @dx.op.unary.f32(i32 27, float %1516)  ; Round_ni(value)
  %1519 = call float @dx.op.unary.f32(i32 27, float %1517)  ; Round_ni(value)
  %1520 = fptosi float %1518 to i32
  %1521 = fptosi float %1519 to i32
  %1522 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %19, i32 0, i32 %1520, i32 %1521, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1523 = extractvalue %dx.types.ResRet.i32 %1522, 0
  %1524 = and i32 %1523, 65535
  %1525 = lshr i32 %1523, 16
  %1526 = icmp eq i32 %1524, 65535
  br i1 %1526, label %1563, label %1527

; <label>:1527                                    ; preds = %1512
  %1528 = extractvalue %dx.types.CBufRet.f32 %930, 1
  %1529 = extractvalue %dx.types.CBufRet.f32 %1513, 0
  %1530 = extractvalue %dx.types.CBufRet.f32 %1513, 1
  %1531 = fmul fast float %1529, %1161
  %1532 = fmul fast float %1530, %1162
  %1533 = fmul fast float %1531, 1.250000e-01
  %1534 = fmul fast float %1532, 1.250000e-01
  %1535 = call float @dx.op.unary.f32(i32 27, float %1533)  ; Round_ni(value)
  %1536 = call float @dx.op.unary.f32(i32 27, float %1534)  ; Round_ni(value)
  %1537 = fmul fast float %1535, 8.000000e+00
  %1538 = fmul fast float %1536, 8.000000e+00
  %1539 = and i32 %1523, 255
  %1540 = lshr i32 %1523, 8
  %1541 = and i32 %1540, 255
  %1542 = mul nuw nsw i32 %1539, 9
  %1543 = uitofp i32 %1542 to float
  %1544 = mul nuw nsw i32 %1541, 9
  %1545 = uitofp i32 %1544 to float
  %1546 = fadd fast float %1543, 5.000000e-01
  %1547 = fadd fast float %1546, %1531
  %1548 = fsub fast float %1547, %1537
  %1549 = fadd fast float %1545, 5.000000e-01
  %1550 = fadd fast float %1549, %1532
  %1551 = fsub fast float %1550, %1538
  %1552 = fdiv fast float %1548, %931
  %1553 = fdiv fast float %1551, %1528
  %1554 = fmul fast float %1189, 4.375000e-01
  %1555 = fadd fast float %1554, 3.125000e-02
  %1556 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %35, float %1552, float %1553, float %1555, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1557 = extractvalue %dx.types.ResRet.f32 %1556, 0
  %1558 = extractvalue %dx.types.ResRet.f32 %1556, 1
  %1559 = extractvalue %dx.types.ResRet.f32 %1556, 2
  %1560 = fadd fast float %1557, %1501
  %1561 = fadd fast float %1558, %1502
  %1562 = fadd fast float %1559, %1503
  br label %1563

; <label>:1563                                    ; preds = %1527, %1512
  %1564 = phi float [ %1562, %1527 ], [ %1503, %1512 ]
  %1565 = phi float [ %1561, %1527 ], [ %1502, %1512 ]
  %1566 = phi float [ %1560, %1527 ], [ %1501, %1512 ]
  %1567 = icmp eq i32 %1525, 65535
  br i1 %1567, label %1657, label %1568

; <label>:1568                                    ; preds = %1563
  %1569 = extractvalue %dx.types.CBufRet.f32 %930, 1
  %1570 = extractvalue %dx.types.CBufRet.f32 %1513, 0
  %1571 = extractvalue %dx.types.CBufRet.f32 %1513, 1
  %1572 = fmul fast float %1570, %1161
  %1573 = fmul fast float %1571, %1162
  %1574 = fmul fast float %1572, 1.250000e-01
  %1575 = fmul fast float %1573, 1.250000e-01
  %1576 = call float @dx.op.unary.f32(i32 27, float %1574)  ; Round_ni(value)
  %1577 = call float @dx.op.unary.f32(i32 27, float %1575)  ; Round_ni(value)
  %1578 = fmul fast float %1576, 8.000000e+00
  %1579 = fmul fast float %1577, 8.000000e+00
  %1580 = fsub fast float %1572, %1578
  %1581 = fsub fast float %1573, %1579
  %1582 = fadd fast float %1580, 5.000000e-01
  %1583 = fadd fast float %1581, 5.000000e-01
  %1584 = and i32 %1525, 255
  %1585 = lshr i32 %1523, 24
  %1586 = mul nuw nsw i32 %1584, 9
  %1587 = uitofp i32 %1586 to float
  %1588 = mul nuw nsw i32 %1585, 9
  %1589 = uitofp i32 %1588 to float
  %1590 = fadd fast float %1582, %1587
  %1591 = fadd fast float %1583, %1589
  %1592 = fdiv fast float %1590, %931
  %1593 = fdiv fast float %1591, %1569
  %1594 = fmul fast float %1189, 4.375000e-01
  %1595 = fadd fast float %1594, 3.125000e-02
  %1596 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %35, float %1592, float %1593, float %1595, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1597 = extractvalue %dx.types.ResRet.f32 %1596, 0
  %1598 = extractvalue %dx.types.ResRet.f32 %1596, 1
  %1599 = extractvalue %dx.types.ResRet.f32 %1596, 2
  %1600 = fadd fast float %1594, 5.312500e-01
  %1601 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %35, float %1592, float %1593, float %1600, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1602 = extractvalue %dx.types.ResRet.f32 %1601, 0
  %1603 = extractvalue %dx.types.ResRet.f32 %1601, 1
  %1604 = extractvalue %dx.types.ResRet.f32 %1601, 2
  %1605 = fmul fast float %1602, 2.000000e+00
  %1606 = fmul fast float %1603, 2.000000e+00
  %1607 = fmul fast float %1604, 2.000000e+00
  %1608 = fadd fast float %1605, -1.000000e+00
  %1609 = fadd fast float %1606, -1.000000e+00
  %1610 = fadd fast float %1607, -1.000000e+00
  %1611 = fmul fast float %1608, %1608
  %1612 = fmul fast float %1609, %1609
  %1613 = fadd fast float %1611, %1612
  %1614 = fmul fast float %1610, %1610
  %1615 = fadd fast float %1613, %1614
  %1616 = call float @dx.op.unary.f32(i32 24, float %1615)  ; Sqrt(value)
  %1617 = fcmp fast ogt float %1616, 0.000000e+00
  br i1 %1617, label %1618, label %1622

; <label>:1618                                    ; preds = %1568
  %1619 = fdiv fast float %1608, %1616
  %1620 = fdiv fast float %1609, %1616
  %1621 = fdiv fast float %1610, %1616
  br label %1622

; <label>:1622                                    ; preds = %1618, %1568
  %1623 = phi float [ %1619, %1618 ], [ 0.000000e+00, %1568 ]
  %1624 = phi float [ %1620, %1618 ], [ 0.000000e+00, %1568 ]
  %1625 = phi float [ %1621, %1618 ], [ 0.000000e+00, %1568 ]
  %1626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1627 = extractvalue %dx.types.CBufRet.f32 %1626, 0
  %1628 = extractvalue %dx.types.CBufRet.f32 %1626, 1
  %1629 = fsub fast float %561, %1627
  %1630 = fsub fast float %562, %1628
  %1631 = fmul fast float %1629, %1629
  %1632 = fmul fast float %1630, %1630
  %1633 = fadd fast float %1631, %1632
  %1634 = call float @dx.op.unary.f32(i32 24, float %1633)  ; Sqrt(value)
  %1635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1636 = extractvalue %dx.types.CBufRet.f32 %1635, 0
  %1637 = extractvalue %dx.types.CBufRet.f32 %1635, 1
  %1638 = fsub fast float %1634, %1636
  %1639 = fdiv fast float %1638, %1637
  %1640 = call float @dx.op.unary.f32(i32 7, float %1639)  ; Saturate(value)
  %1641 = fmul fast float %1640, 2.000000e+00
  %1642 = fsub fast float 3.000000e+00, %1641
  %1643 = fmul fast float %1640, %1640
  %1644 = fmul fast float %1643, %1642
  %1645 = call float @dx.op.dot3.f32(i32 55, float %1623, float %1624, float %1625, float %338, float %339, float %340)  ; Dot3(ax,ay,az,bx,by,bz)
  %1646 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1645)  ; FMax(a,b)
  %1647 = fmul fast float %1646, 0x400C5BF8A0000000
  %1648 = fmul fast float %1644, %1597
  %1649 = fmul fast float %1648, %1647
  %1650 = fadd fast float %1649, %1566
  %1651 = fmul fast float %1644, %1598
  %1652 = fmul fast float %1651, %1647
  %1653 = fadd fast float %1652, %1565
  %1654 = fmul fast float %1644, %1599
  %1655 = fmul fast float %1654, %1647
  %1656 = fadd fast float %1655, %1564
  br label %1657

; <label>:1657                                    ; preds = %1622, %1563, %1491
  %1658 = phi float [ %1656, %1622 ], [ %1564, %1563 ], [ %1503, %1491 ]
  %1659 = phi float [ %1653, %1622 ], [ %1565, %1563 ], [ %1502, %1491 ]
  %1660 = phi float [ %1650, %1622 ], [ %1566, %1563 ], [ %1501, %1491 ]
  %1661 = fcmp fast ogt float %1148, %1185
  %1662 = and i1 %1504, %1661
  %1663 = and i1 %1506, %1662
  %1664 = and i1 %1508, %1663
  %1665 = and i1 %1510, %1664
  br i1 %1665, label %1666, label %1723, !dx.controlflow.hints !112

; <label>:1666                                    ; preds = %1657
  %1667 = fmul fast float %1187, 0x3FC24924A0000000
  %1668 = fsub fast float %1148, %1185
  %1669 = fdiv fast float %1668, %1667
  %1670 = call float @dx.op.unary.f32(i32 7, float %1669)  ; Saturate(value)
  %1671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1672 = extractvalue %dx.types.CBufRet.f32 %1671, 0
  %1673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1674 = extractvalue %dx.types.CBufRet.f32 %1673, 0
  %1675 = extractvalue %dx.types.CBufRet.f32 %1673, 1
  %1676 = extractvalue %dx.types.CBufRet.f32 %1673, 2
  %1677 = fsub fast float %1672, %1660
  %1678 = fsub fast float %1674, %1498
  %1679 = fsub fast float %1675, %1499
  %1680 = fsub fast float %1676, %1500
  %1681 = fmul fast float %1677, %1670
  %1682 = fmul fast float %1678, %1670
  %1683 = fmul fast float %1679, %1670
  %1684 = fmul fast float %1680, %1670
  %1685 = fadd fast float %1681, %1660
  %1686 = fadd fast float %1682, %1498
  %1687 = fadd fast float %1683, %1499
  %1688 = fadd fast float %1684, %1500
  %1689 = extractvalue %dx.types.CBufRet.f32 %1671, 1
  %1690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1691 = extractvalue %dx.types.CBufRet.f32 %1690, 0
  %1692 = extractvalue %dx.types.CBufRet.f32 %1690, 1
  %1693 = extractvalue %dx.types.CBufRet.f32 %1690, 2
  %1694 = fsub fast float %1689, %1659
  %1695 = fsub fast float %1691, %1495
  %1696 = fsub fast float %1692, %1496
  %1697 = fsub fast float %1693, %1497
  %1698 = fmul fast float %1694, %1670
  %1699 = fmul fast float %1695, %1670
  %1700 = fmul fast float %1696, %1670
  %1701 = fmul fast float %1697, %1670
  %1702 = fadd fast float %1698, %1659
  %1703 = fadd fast float %1699, %1495
  %1704 = fadd fast float %1700, %1496
  %1705 = fadd fast float %1701, %1497
  %1706 = extractvalue %dx.types.CBufRet.f32 %1671, 2
  %1707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1708 = extractvalue %dx.types.CBufRet.f32 %1707, 0
  %1709 = extractvalue %dx.types.CBufRet.f32 %1707, 1
  %1710 = extractvalue %dx.types.CBufRet.f32 %1707, 2
  %1711 = fsub fast float %1706, %1658
  %1712 = fsub fast float %1708, %1492
  %1713 = fsub fast float %1709, %1493
  %1714 = fsub fast float %1710, %1494
  %1715 = fmul fast float %1711, %1670
  %1716 = fmul fast float %1712, %1670
  %1717 = fmul fast float %1713, %1670
  %1718 = fmul fast float %1714, %1670
  %1719 = fadd fast float %1715, %1658
  %1720 = fadd fast float %1716, %1492
  %1721 = fadd fast float %1717, %1493
  %1722 = fadd fast float %1718, %1494
  br label %1723

; <label>:1723                                    ; preds = %1666, %1657
  %1724 = phi float [ %1719, %1666 ], [ %1658, %1657 ]
  %1725 = phi float [ %1720, %1666 ], [ %1492, %1657 ]
  %1726 = phi float [ %1721, %1666 ], [ %1493, %1657 ]
  %1727 = phi float [ %1722, %1666 ], [ %1494, %1657 ]
  %1728 = phi float [ %1702, %1666 ], [ %1659, %1657 ]
  %1729 = phi float [ %1703, %1666 ], [ %1495, %1657 ]
  %1730 = phi float [ %1704, %1666 ], [ %1496, %1657 ]
  %1731 = phi float [ %1705, %1666 ], [ %1497, %1657 ]
  %1732 = phi float [ %1685, %1666 ], [ %1660, %1657 ]
  %1733 = phi float [ %1686, %1666 ], [ %1498, %1657 ]
  %1734 = phi float [ %1687, %1666 ], [ %1499, %1657 ]
  %1735 = phi float [ %1688, %1666 ], [ %1500, %1657 ]
  %1736 = extractvalue %dx.types.CBufRet.f32 %1310, 3
  %1737 = fmul fast float %1736, %1732
  %1738 = fmul fast float %1736, %1728
  %1739 = fmul fast float %1736, %1724
  %1740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1741 = extractvalue %dx.types.CBufRet.f32 %1740, 3
  %1742 = fmul fast float %1737, %1741
  %1743 = fmul fast float %1738, %1741
  %1744 = fmul fast float %1739, %1741
  %1745 = fmul fast float %1733, 1.500000e+00
  %1746 = fmul fast float %1745, %1736
  %1747 = fmul fast float %1746, %1741
  %1748 = fmul fast float %1734, 1.500000e+00
  %1749 = fmul fast float %1748, %1736
  %1750 = fmul fast float %1749, %1741
  %1751 = fmul fast float %1735, 1.500000e+00
  %1752 = fmul fast float %1751, %1736
  %1753 = fmul fast float %1752, %1741
  %1754 = fmul fast float %1729, 1.500000e+00
  %1755 = fmul fast float %1754, %1736
  %1756 = fmul fast float %1755, %1741
  %1757 = fmul fast float %1730, 1.500000e+00
  %1758 = fmul fast float %1757, %1736
  %1759 = fmul fast float %1758, %1741
  %1760 = fmul fast float %1731, 1.500000e+00
  %1761 = fmul fast float %1760, %1736
  %1762 = fmul fast float %1761, %1741
  %1763 = fmul fast float %1725, 1.500000e+00
  %1764 = fmul fast float %1763, %1736
  %1765 = fmul fast float %1764, %1741
  %1766 = fmul fast float %1726, 1.500000e+00
  %1767 = fmul fast float %1766, %1736
  %1768 = fmul fast float %1767, %1741
  %1769 = fmul fast float %1727, 1.500000e+00
  %1770 = fmul fast float %1769, %1736
  %1771 = fmul fast float %1770, %1741
  %1772 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1742)  ; FMax(a,b)
  %1773 = call float @dx.op.dot3.f32(i32 55, float %1747, float %1750, float %1753, float %1747, float %1750, float %1753)  ; Dot3(ax,ay,az,bx,by,bz)
  %1774 = fcmp fast oeq float %1773, 0.000000e+00
  %1775 = fcmp fast oeq float %1772, 0.000000e+00
  %1776 = or i1 %1775, %1774
  br i1 %1776, label %1806, label %1777

; <label>:1777                                    ; preds = %1723
  %1778 = fsub fast float -0.000000e+00, %1753
  %1779 = fsub fast float -0.000000e+00, %1747
  %1780 = call float @dx.op.unary.f32(i32 24, float %1773)  ; Sqrt(value)
  %1781 = fdiv fast float %1780, %1772
  %1782 = fcmp fast ogt float %1781, 0x3FFB6F8900000000
  %1783 = select i1 %1782, float 0x3FFB6F8900000000, float %1781
  %1784 = fmul fast float %1783, 0x3FE8A23460000000
  %1785 = call float @dx.op.unary.f32(i32 7, float %1784)  ; Saturate(value)
  %1786 = call float @dx.op.binary.f32(i32 35, float %1783, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1787 = fmul fast float %1785, %1772
  %1788 = fmul fast float %1786, 0x3FF279A740000000
  %1789 = fadd fast float %1788, -1.000000e+00
  %1790 = call float @dx.op.dot3.f32(i32 55, float %1778, float %1779, float %1750, float %1778, float %1779, float %1750)  ; Dot3(ax,ay,az,bx,by,bz)
  %1791 = call float @dx.op.unary.f32(i32 25, float %1790)  ; Rsqrt(value)
  %1792 = fmul fast float %1791, %1778
  %1793 = fmul fast float %1791, %1779
  %1794 = fmul fast float %1791, %1750
  %1795 = fmul fast float %1789, %1789
  %1796 = fsub fast float 1.000000e+00, %1795
  %1797 = fmul fast float %1786, 0x40005F8BE0000000
  %1798 = fsub fast float 0x400C5BF8A0000000, %1797
  %1799 = fdiv fast float %1787, %1798
  %1800 = fmul fast float %1799, 0x3FEE31C3C0000000
  %1801 = fmul fast float %1800, %1796
  %1802 = fmul fast float %1786, 0x3FDACB7480000000
  %1803 = fadd fast float %1802, 0xBFD7347680000000
  %1804 = fmul fast float %1803, %1799
  %1805 = fmul fast float %1804, %1796
  br label %1806

; <label>:1806                                    ; preds = %1777, %1723
  %1807 = phi float [ %1792, %1777 ], [ 0.000000e+00, %1723 ]
  %1808 = phi float [ %1793, %1777 ], [ 0.000000e+00, %1723 ]
  %1809 = phi float [ %1794, %1777 ], [ 0.000000e+00, %1723 ]
  %1810 = phi float [ %1801, %1777 ], [ 0.000000e+00, %1723 ]
  %1811 = phi float [ %1805, %1777 ], [ 0.000000e+00, %1723 ]
  %1812 = call float @dx.op.dot3.f32(i32 55, float %1807, float %1808, float %1809, float %338, float %339, float %340)  ; Dot3(ax,ay,az,bx,by,bz)
  %1813 = fmul fast float %1812, %1812
  %1814 = fmul fast float %1813, 0x3FEE471020000000
  %1815 = fadd fast float %1814, 0xBFD42F6020000000
  %1816 = fmul fast float %1772, 0x3FD20DD760000000
  %1817 = fmul fast float %1815, %1811
  %1818 = fmul fast float %1810, 0x3FDF454380000000
  %1819 = fmul fast float %1818, %1812
  %1820 = fadd fast float %1819, %1816
  %1821 = fadd fast float %1820, %1817
  %1822 = call float @dx.op.dot3.f32(i32 55, float %1807, float %1808, float %1809, float %555, float %556, float %557)  ; Dot3(ax,ay,az,bx,by,bz)
  %1823 = fmul fast float %1822, 0x3FDF454380000000
  %1824 = fmul fast float %1822, %1822
  %1825 = fmul fast float %1824, 0x3FEE471020000000
  %1826 = fadd fast float %1825, 0xBFD42F6020000000
  %1827 = call float @dx.op.dot3.f32(i32 55, float %1772, float %1810, float %1811, float 0x3FD20DD760000000, float %1823, float %1826)  ; Dot3(ax,ay,az,bx,by,bz)
  %1828 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1743)  ; FMax(a,b)
  %1829 = call float @dx.op.dot3.f32(i32 55, float %1756, float %1759, float %1762, float %1756, float %1759, float %1762)  ; Dot3(ax,ay,az,bx,by,bz)
  %1830 = fcmp fast oeq float %1829, 0.000000e+00
  %1831 = fcmp fast oeq float %1828, 0.000000e+00
  %1832 = or i1 %1831, %1830
  br i1 %1832, label %1862, label %1833

; <label>:1833                                    ; preds = %1806
  %1834 = fsub fast float -0.000000e+00, %1762
  %1835 = fsub fast float -0.000000e+00, %1756
  %1836 = call float @dx.op.unary.f32(i32 24, float %1829)  ; Sqrt(value)
  %1837 = fdiv fast float %1836, %1828
  %1838 = fcmp fast ogt float %1837, 0x3FFB6F8900000000
  %1839 = select i1 %1838, float 0x3FFB6F8900000000, float %1837
  %1840 = fmul fast float %1839, 0x3FE8A23460000000
  %1841 = call float @dx.op.unary.f32(i32 7, float %1840)  ; Saturate(value)
  %1842 = call float @dx.op.binary.f32(i32 35, float %1839, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1843 = fmul fast float %1841, %1828
  %1844 = fmul fast float %1842, 0x3FF279A740000000
  %1845 = fadd fast float %1844, -1.000000e+00
  %1846 = call float @dx.op.dot3.f32(i32 55, float %1834, float %1835, float %1759, float %1834, float %1835, float %1759)  ; Dot3(ax,ay,az,bx,by,bz)
  %1847 = call float @dx.op.unary.f32(i32 25, float %1846)  ; Rsqrt(value)
  %1848 = fmul fast float %1847, %1834
  %1849 = fmul fast float %1847, %1835
  %1850 = fmul fast float %1847, %1759
  %1851 = fmul fast float %1845, %1845
  %1852 = fsub fast float 1.000000e+00, %1851
  %1853 = fmul fast float %1842, 0x40005F8BE0000000
  %1854 = fsub fast float 0x400C5BF8A0000000, %1853
  %1855 = fdiv fast float %1843, %1854
  %1856 = fmul fast float %1855, 0x3FEE31C3C0000000
  %1857 = fmul fast float %1856, %1852
  %1858 = fmul fast float %1842, 0x3FDACB7480000000
  %1859 = fadd fast float %1858, 0xBFD7347680000000
  %1860 = fmul fast float %1859, %1855
  %1861 = fmul fast float %1860, %1852
  br label %1862

; <label>:1862                                    ; preds = %1833, %1806
  %1863 = phi float [ %1848, %1833 ], [ 0.000000e+00, %1806 ]
  %1864 = phi float [ %1849, %1833 ], [ 0.000000e+00, %1806 ]
  %1865 = phi float [ %1850, %1833 ], [ 0.000000e+00, %1806 ]
  %1866 = phi float [ %1857, %1833 ], [ 0.000000e+00, %1806 ]
  %1867 = phi float [ %1861, %1833 ], [ 0.000000e+00, %1806 ]
  %1868 = call float @dx.op.dot3.f32(i32 55, float %1863, float %1864, float %1865, float %338, float %339, float %340)  ; Dot3(ax,ay,az,bx,by,bz)
  %1869 = fmul fast float %1868, %1868
  %1870 = fmul fast float %1869, 0x3FEE471020000000
  %1871 = fadd fast float %1870, 0xBFD42F6020000000
  %1872 = fmul fast float %1828, 0x3FD20DD760000000
  %1873 = fmul fast float %1871, %1867
  %1874 = fmul fast float %1866, 0x3FDF454380000000
  %1875 = fmul fast float %1874, %1868
  %1876 = fadd fast float %1875, %1872
  %1877 = fadd fast float %1876, %1873
  %1878 = call float @dx.op.dot3.f32(i32 55, float %1863, float %1864, float %1865, float %555, float %556, float %557)  ; Dot3(ax,ay,az,bx,by,bz)
  %1879 = fmul fast float %1878, 0x3FDF454380000000
  %1880 = fmul fast float %1878, %1878
  %1881 = fmul fast float %1880, 0x3FEE471020000000
  %1882 = fadd fast float %1881, 0xBFD42F6020000000
  %1883 = call float @dx.op.dot3.f32(i32 55, float %1828, float %1866, float %1867, float 0x3FD20DD760000000, float %1879, float %1882)  ; Dot3(ax,ay,az,bx,by,bz)
  %1884 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1744)  ; FMax(a,b)
  %1885 = call float @dx.op.dot3.f32(i32 55, float %1765, float %1768, float %1771, float %1765, float %1768, float %1771)  ; Dot3(ax,ay,az,bx,by,bz)
  %1886 = fcmp fast oeq float %1885, 0.000000e+00
  %1887 = fcmp fast oeq float %1884, 0.000000e+00
  %1888 = or i1 %1887, %1886
  br i1 %1888, label %1918, label %1889

; <label>:1889                                    ; preds = %1862
  %1890 = fsub fast float -0.000000e+00, %1771
  %1891 = fsub fast float -0.000000e+00, %1765
  %1892 = call float @dx.op.unary.f32(i32 24, float %1885)  ; Sqrt(value)
  %1893 = fdiv fast float %1892, %1884
  %1894 = fcmp fast ogt float %1893, 0x3FFB6F8900000000
  %1895 = select i1 %1894, float 0x3FFB6F8900000000, float %1893
  %1896 = fmul fast float %1895, 0x3FE8A23460000000
  %1897 = call float @dx.op.unary.f32(i32 7, float %1896)  ; Saturate(value)
  %1898 = call float @dx.op.binary.f32(i32 35, float %1895, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1899 = fmul fast float %1897, %1884
  %1900 = fmul fast float %1898, 0x3FF279A740000000
  %1901 = fadd fast float %1900, -1.000000e+00
  %1902 = call float @dx.op.dot3.f32(i32 55, float %1890, float %1891, float %1768, float %1890, float %1891, float %1768)  ; Dot3(ax,ay,az,bx,by,bz)
  %1903 = call float @dx.op.unary.f32(i32 25, float %1902)  ; Rsqrt(value)
  %1904 = fmul fast float %1903, %1890
  %1905 = fmul fast float %1903, %1891
  %1906 = fmul fast float %1903, %1768
  %1907 = fmul fast float %1901, %1901
  %1908 = fsub fast float 1.000000e+00, %1907
  %1909 = fmul fast float %1898, 0x40005F8BE0000000
  %1910 = fsub fast float 0x400C5BF8A0000000, %1909
  %1911 = fdiv fast float %1899, %1910
  %1912 = fmul fast float %1911, 0x3FEE31C3C0000000
  %1913 = fmul fast float %1912, %1908
  %1914 = fmul fast float %1898, 0x3FDACB7480000000
  %1915 = fadd fast float %1914, 0xBFD7347680000000
  %1916 = fmul fast float %1915, %1911
  %1917 = fmul fast float %1916, %1908
  br label %1918

; <label>:1918                                    ; preds = %1889, %1862
  %1919 = phi float [ %1904, %1889 ], [ 0.000000e+00, %1862 ]
  %1920 = phi float [ %1905, %1889 ], [ 0.000000e+00, %1862 ]
  %1921 = phi float [ %1906, %1889 ], [ 0.000000e+00, %1862 ]
  %1922 = phi float [ %1913, %1889 ], [ 0.000000e+00, %1862 ]
  %1923 = phi float [ %1917, %1889 ], [ 0.000000e+00, %1862 ]
  %1924 = call float @dx.op.dot3.f32(i32 55, float %1919, float %1920, float %1921, float %338, float %339, float %340)  ; Dot3(ax,ay,az,bx,by,bz)
  %1925 = fmul fast float %1924, %1924
  %1926 = fmul fast float %1925, 0x3FEE471020000000
  %1927 = fadd fast float %1926, 0xBFD42F6020000000
  %1928 = fmul fast float %1884, 0x3FD20DD760000000
  %1929 = fmul fast float %1927, %1923
  %1930 = fmul fast float %1922, 0x3FDF454380000000
  %1931 = fmul fast float %1930, %1924
  %1932 = fadd fast float %1931, %1928
  %1933 = fadd fast float %1932, %1929
  %1934 = call float @dx.op.dot3.f32(i32 55, float %1919, float %1920, float %1921, float %555, float %556, float %557)  ; Dot3(ax,ay,az,bx,by,bz)
  %1935 = fmul fast float %1934, 0x3FDF454380000000
  %1936 = fmul fast float %1934, %1934
  %1937 = fmul fast float %1936, 0x3FEE471020000000
  %1938 = fadd fast float %1937, 0xBFD42F6020000000
  %1939 = call float @dx.op.dot3.f32(i32 55, float %1884, float %1922, float %1923, float 0x3FD20DD760000000, float %1935, float %1938)  ; Dot3(ax,ay,az,bx,by,bz)
  %1940 = call float @dx.op.binary.f32(i32 35, float %1821, float 0.000000e+00)  ; FMax(a,b)
  %1941 = call float @dx.op.binary.f32(i32 35, float %1877, float 0.000000e+00)  ; FMax(a,b)
  %1942 = call float @dx.op.binary.f32(i32 35, float %1933, float 0.000000e+00)  ; FMax(a,b)
  %1943 = call float @dx.op.binary.f32(i32 35, float %1827, float 0.000000e+00)  ; FMax(a,b)
  %1944 = call float @dx.op.binary.f32(i32 35, float %1883, float 0.000000e+00)  ; FMax(a,b)
  %1945 = call float @dx.op.binary.f32(i32 35, float %1939, float 0.000000e+00)  ; FMax(a,b)
  %1946 = fsub fast float %1142, %1940
  %1947 = fsub fast float %1143, %1941
  %1948 = fsub fast float %1144, %1942
  %1949 = fmul fast float %1946, %602
  %1950 = fmul fast float %1947, %602
  %1951 = fmul fast float %1948, %602
  %1952 = fadd fast float %1949, %1940
  %1953 = fadd fast float %1950, %1941
  %1954 = fadd fast float %1951, %1942
  %1955 = fsub fast float %1139, %1943
  %1956 = fsub fast float %1140, %1944
  %1957 = fsub fast float %1141, %1945
  %1958 = fmul fast float %1955, %602
  %1959 = fmul fast float %1956, %602
  %1960 = fmul fast float %1957, %602
  %1961 = fadd fast float %1958, %1943
  %1962 = fadd fast float %1959, %1944
  %1963 = fadd fast float %1960, %1945
  br label %1964

; <label>:1964                                    ; preds = %1918, %1138
  %1965 = phi float [ %1961, %1918 ], [ %1139, %1138 ]
  %1966 = phi float [ %1962, %1918 ], [ %1140, %1138 ]
  %1967 = phi float [ %1963, %1918 ], [ %1141, %1138 ]
  %1968 = phi float [ %1952, %1918 ], [ %1142, %1138 ]
  %1969 = phi float [ %1953, %1918 ], [ %1143, %1138 ]
  %1970 = phi float [ %1954, %1918 ], [ %1144, %1138 ]
  %1971 = fmul fast float %1968, 0x3FEE623840000000
  %1972 = fmul fast float %1969, 0x3FEE623840000000
  %1973 = fmul fast float %1970, 0x3FEE623840000000
  %1974 = fmul fast float %1965, 0x3FEE623840000000
  %1975 = fmul fast float %1966, 0x3FEE623840000000
  %1976 = fmul fast float %1967, 0x3FEE623840000000
  %1977 = call float @dx.op.dot3.f32(i32 55, float %1971, float %1972, float %1973, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1978 = select i1 %143, float 0.000000e+00, float %1971
  %1979 = select i1 %143, float %1977, float %1972
  %1980 = select i1 %143, float 0.000000e+00, float %1973
  %1981 = call float @dx.op.dot3.f32(i32 55, float %1974, float %1975, float %1976, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1982 = select i1 %143, float 0.000000e+00, float %1974
  %1983 = select i1 %143, float %1981, float %1975
  %1984 = select i1 %143, float 0.000000e+00, float %1976
  %1985 = fmul fast float %549, 9.843750e-01
  %1986 = fmul fast float %350, 9.843750e-01
  %1987 = fadd fast float %1985, 7.812500e-03
  %1988 = fadd fast float %1986, 7.812500e-03
  %1989 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %35, float %1987, float %1988, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1990 = extractvalue %dx.types.ResRet.f32 %1989, 2
  %1991 = extractvalue %dx.types.ResRet.f32 %1989, 3
  %1992 = fmul fast float %1990, %529
  %1993 = fmul fast float %1990, %530
  %1994 = fmul fast float %1990, %547
  %1995 = fadd fast float %1992, %1991
  %1996 = fadd fast float %1993, %1991
  %1997 = fadd fast float %1994, %1991
  %1998 = call float @dx.op.binary.f32(i32 35, float %1996, float %1997)  ; FMax(a,b)
  %1999 = call float @dx.op.binary.f32(i32 35, float %1995, float %1998)  ; FMax(a,b)
  %2000 = fsub fast float 1.000000e+00, %1999
  %2001 = fmul fast float %2000, %1978
  %2002 = fmul fast float %2000, %1979
  %2003 = fmul fast float %2000, %1980
  %2004 = fmul fast float %1995, %1982
  %2005 = fmul fast float %1996, %1983
  %2006 = fmul fast float %1997, %1984
  %2007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2008 = extractvalue %dx.types.CBufRet.f32 %2007, 3
  %2009 = fcmp fast oeq float %2008, 0.000000e+00
  br i1 %2009, label %2922, label %2010

; <label>:2010                                    ; preds = %1964
  %2011 = extractvalue %dx.types.CBufRet.f32 %2007, 0
  %2012 = extractvalue %dx.types.CBufRet.f32 %2007, 1
  %2013 = extractvalue %dx.types.CBufRet.f32 %2007, 2
  %2014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2015 = extractvalue %dx.types.CBufRet.f32 %2014, 0
  %2016 = extractvalue %dx.types.CBufRet.f32 %2014, 1
  %2017 = extractvalue %dx.types.CBufRet.f32 %2014, 2
  %2018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2019 = extractvalue %dx.types.CBufRet.f32 %2018, 0
  %2020 = extractvalue %dx.types.CBufRet.f32 %2018, 1
  %2021 = call float @dx.op.dot3.f32(i32 55, float %2015, float %2016, float %2017, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2022 = select i1 %143, float %2019, float %2015
  %2023 = select i1 %143, float %2021, float %2016
  %2024 = select i1 %143, float %2020, float %2017
  %2025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2026 = extractvalue %dx.types.CBufRet.f32 %2025, 2
  %2027 = fmul fast float %2026, %338
  %2028 = fmul fast float %2026, %339
  %2029 = fmul fast float %2026, %340
  %2030 = fadd fast float %2027, %406
  %2031 = fadd fast float %2028, %407
  %2032 = fadd fast float %2029, %408
  %2033 = fcmp fast olt float %2008, 0.000000e+00
  br i1 %2033, label %2655, label %2034

; <label>:2034                                    ; preds = %2010
  %2035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2036 = extractvalue %dx.types.CBufRet.f32 %2035, 0
  %2037 = extractvalue %dx.types.CBufRet.f32 %2035, 1
  %2038 = extractvalue %dx.types.CBufRet.f32 %2035, 2
  %2039 = extractvalue %dx.types.CBufRet.f32 %2035, 3
  %2040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2041 = extractvalue %dx.types.CBufRet.f32 %2040, 0
  %2042 = extractvalue %dx.types.CBufRet.f32 %2040, 1
  %2043 = extractvalue %dx.types.CBufRet.f32 %2040, 2
  %2044 = extractvalue %dx.types.CBufRet.f32 %2040, 3
  %2045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2046 = extractvalue %dx.types.CBufRet.f32 %2045, 0
  %2047 = extractvalue %dx.types.CBufRet.f32 %2045, 1
  %2048 = extractvalue %dx.types.CBufRet.f32 %2045, 2
  %2049 = extractvalue %dx.types.CBufRet.f32 %2045, 3
  %2050 = fmul fast float %2036, %2030
  %2051 = call float @dx.op.tertiary.f32(i32 46, float %2031, float %2037, float %2050)  ; FMad(a,b,c)
  %2052 = call float @dx.op.tertiary.f32(i32 46, float %2032, float %2038, float %2051)  ; FMad(a,b,c)
  %2053 = fadd fast float %2052, %2039
  %2054 = fmul fast float %2041, %2030
  %2055 = call float @dx.op.tertiary.f32(i32 46, float %2031, float %2042, float %2054)  ; FMad(a,b,c)
  %2056 = call float @dx.op.tertiary.f32(i32 46, float %2032, float %2043, float %2055)  ; FMad(a,b,c)
  %2057 = fadd fast float %2056, %2044
  %2058 = fmul fast float %2046, %2030
  %2059 = call float @dx.op.tertiary.f32(i32 46, float %2031, float %2047, float %2058)  ; FMad(a,b,c)
  %2060 = call float @dx.op.tertiary.f32(i32 46, float %2032, float %2048, float %2059)  ; FMad(a,b,c)
  %2061 = fadd fast float %2060, %2049
  %2062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2063 = extractvalue %dx.types.CBufRet.f32 %2062, 0
  %2064 = extractvalue %dx.types.CBufRet.f32 %2062, 1
  %2065 = extractvalue %dx.types.CBufRet.f32 %2062, 3
  %2066 = fmul fast float %2065, %2053
  %2067 = fmul fast float %2065, %2057
  %2068 = fadd fast float %2066, %2063
  %2069 = fadd fast float %2067, %2064
  %2070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2071 = extractvalue %dx.types.CBufRet.f32 %2070, 0
  %2072 = extractvalue %dx.types.CBufRet.f32 %2070, 1
  %2073 = extractvalue %dx.types.CBufRet.f32 %2070, 3
  %2074 = fmul fast float %2073, %2053
  %2075 = fmul fast float %2073, %2057
  %2076 = fadd fast float %2074, %2071
  %2077 = fadd fast float %2075, %2072
  %2078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2079 = extractvalue %dx.types.CBufRet.f32 %2078, 1
  %2080 = fsub fast float %2079, %2061
  %2081 = extractvalue %dx.types.CBufRet.f32 %2078, 2
  %2082 = fmul fast float %2080, %2081
  %2083 = fsub fast float 1.000000e+00, %2082
  %2084 = call float @dx.op.unary.f32(i32 7, float %2083)  ; Saturate(value)
  %2085 = extractvalue %dx.types.CBufRet.f32 %2070, 2
  %2086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2087 = extractvalue %dx.types.CBufRet.f32 %2086, 2
  %2088 = fadd fast float %2087, %2085
  %2089 = fcmp fast ogt float %2088, 0.000000e+00
  br i1 %2089, label %2090, label %2114

; <label>:2090                                    ; preds = %2034
  %2091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %2092 = extractvalue %dx.types.CBufRet.f32 %2091, 0
  %2093 = extractvalue %dx.types.CBufRet.f32 %2091, 1
  %2094 = fsub fast float %2076, %2092
  %2095 = fsub fast float %2077, %2093
  %2096 = fcmp fast olt float %2094, 0.000000e+00
  %2097 = fcmp fast olt float %2095, 0.000000e+00
  %2098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %2099 = extractvalue %dx.types.CBufRet.f32 %2098, 0
  %2100 = extractvalue %dx.types.CBufRet.f32 %2098, 1
  %2101 = extractvalue %dx.types.CBufRet.f32 %2098, 2
  %2102 = extractvalue %dx.types.CBufRet.f32 %2098, 3
  %2103 = select i1 %2096, float %2099, float %2101
  %2104 = select i1 %2097, float %2100, float %2102
  %2105 = fmul fast float %2103, %2094
  %2106 = fmul fast float %2104, %2095
  %2107 = call float @dx.op.unary.f32(i32 6, float %2105)  ; FAbs(value)
  %2108 = call float @dx.op.unary.f32(i32 6, float %2106)  ; FAbs(value)
  %2109 = extractvalue %dx.types.CBufRet.f32 %2025, 0
  %2110 = call float @dx.op.binary.f32(i32 35, float %2107, float %2108)  ; FMax(a,b)
  %2111 = fsub fast float %2109, %2110
  %2112 = call float @dx.op.unary.f32(i32 7, float %2111)  ; Saturate(value)
  %2113 = fmul fast float %2112, %2084
  br label %2114

; <label>:2114                                    ; preds = %2090, %2034
  %2115 = phi float [ %2113, %2090 ], [ 0.000000e+00, %2034 ]
  %2116 = extractvalue %dx.types.CBufRet.f32 %2062, 2
  %2117 = extractvalue %dx.types.CBufRet.f32 %2086, 1
  %2118 = fadd fast float %2117, %2116
  %2119 = fcmp fast ogt float %2118, 0.000000e+00
  %2120 = extractvalue %dx.types.CBufRet.f32 %2025, 0
  br i1 %2119, label %2121, label %2144

; <label>:2121                                    ; preds = %2114
  %2122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2123 = extractvalue %dx.types.CBufRet.f32 %2122, 0
  %2124 = extractvalue %dx.types.CBufRet.f32 %2122, 1
  %2125 = fsub fast float %2068, %2123
  %2126 = fsub fast float %2069, %2124
  %2127 = fcmp fast olt float %2125, 0.000000e+00
  %2128 = fcmp fast olt float %2126, 0.000000e+00
  %2129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2130 = extractvalue %dx.types.CBufRet.f32 %2129, 0
  %2131 = extractvalue %dx.types.CBufRet.f32 %2129, 1
  %2132 = extractvalue %dx.types.CBufRet.f32 %2129, 2
  %2133 = extractvalue %dx.types.CBufRet.f32 %2129, 3
  %2134 = select i1 %2127, float %2130, float %2132
  %2135 = select i1 %2128, float %2131, float %2133
  %2136 = fmul fast float %2134, %2125
  %2137 = fmul fast float %2135, %2126
  %2138 = call float @dx.op.unary.f32(i32 6, float %2136)  ; FAbs(value)
  %2139 = call float @dx.op.unary.f32(i32 6, float %2137)  ; FAbs(value)
  %2140 = call float @dx.op.binary.f32(i32 35, float %2138, float %2139)  ; FMax(a,b)
  %2141 = fsub fast float %2120, %2140
  %2142 = call float @dx.op.unary.f32(i32 7, float %2141)  ; Saturate(value)
  %2143 = fmul fast float %2142, %2084
  br label %2144

; <label>:2144                                    ; preds = %2121, %2114
  %2145 = phi float [ %2143, %2121 ], [ 0.000000e+00, %2114 ]
  %2146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %2147 = extractvalue %dx.types.CBufRet.f32 %2146, 1
  %2148 = call float @dx.op.unary.f32(i32 7, float %2147)  ; Saturate(value)
  %2149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %2150 = extractvalue %dx.types.CBufRet.f32 %2149, 0
  %2151 = extractvalue %dx.types.CBufRet.f32 %2149, 1
  %2152 = fsub fast float %2053, %2150
  %2153 = fsub fast float %2057, %2151
  %2154 = fcmp fast olt float %2152, 0.000000e+00
  %2155 = fcmp fast olt float %2153, 0.000000e+00
  %2156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %2157 = extractvalue %dx.types.CBufRet.f32 %2156, 0
  %2158 = extractvalue %dx.types.CBufRet.f32 %2156, 1
  %2159 = extractvalue %dx.types.CBufRet.f32 %2156, 2
  %2160 = extractvalue %dx.types.CBufRet.f32 %2156, 3
  %2161 = select i1 %2154, float %2157, float %2159
  %2162 = select i1 %2155, float %2158, float %2160
  %2163 = fmul fast float %2161, %2152
  %2164 = fmul fast float %2162, %2153
  %2165 = call float @dx.op.unary.f32(i32 6, float %2163)  ; FAbs(value)
  %2166 = call float @dx.op.unary.f32(i32 6, float %2164)  ; FAbs(value)
  %2167 = call float @dx.op.binary.f32(i32 35, float %2165, float %2166)  ; FMax(a,b)
  %2168 = fsub fast float %2120, %2167
  %2169 = call float @dx.op.unary.f32(i32 7, float %2168)  ; Saturate(value)
  %2170 = call float @dx.op.binary.f32(i32 36, float %2169, float %2148)  ; FMin(a,b)
  %2171 = fmul fast float %2170, %2084
  %2172 = fsub fast float %2145, %2171
  %2173 = fsub fast float %2115, %2145
  %2174 = fsub fast float %2173, %2171
  %2175 = call float @dx.op.binary.f32(i32 35, float %2145, float %2115)  ; FMax(a,b)
  %2176 = call float @dx.op.binary.f32(i32 35, float %2171, float %2175)  ; FMax(a,b)
  %2177 = fcmp fast olt float %2176, 1.000000e+00
  br i1 %2177, label %2178, label %2576, !dx.controlflow.hints !113

; <label>:2178                                    ; preds = %2144
  %2179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2180 = extractvalue %dx.types.CBufRet.f32 %2179, 0
  %2181 = fcmp fast une float %2180, 0.000000e+00
  br i1 %2181, label %2182, label %2576, !dx.controlflow.hints !114

; <label>:2182                                    ; preds = %2178
  %2183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2184 = extractvalue %dx.types.CBufRet.f32 %2183, 0
  %2185 = extractvalue %dx.types.CBufRet.f32 %2183, 1
  %2186 = extractvalue %dx.types.CBufRet.f32 %2183, 2
  %2187 = extractvalue %dx.types.CBufRet.f32 %2183, 3
  %2188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2189 = extractvalue %dx.types.CBufRet.f32 %2188, 0
  %2190 = extractvalue %dx.types.CBufRet.f32 %2188, 1
  %2191 = extractvalue %dx.types.CBufRet.f32 %2188, 2
  %2192 = extractvalue %dx.types.CBufRet.f32 %2188, 3
  %2193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2194 = extractvalue %dx.types.CBufRet.f32 %2193, 0
  %2195 = extractvalue %dx.types.CBufRet.f32 %2193, 1
  %2196 = extractvalue %dx.types.CBufRet.f32 %2193, 2
  %2197 = extractvalue %dx.types.CBufRet.f32 %2193, 3
  %2198 = fmul fast float %2184, %2030
  %2199 = call float @dx.op.tertiary.f32(i32 46, float %2031, float %2185, float %2198)  ; FMad(a,b,c)
  %2200 = call float @dx.op.tertiary.f32(i32 46, float %2032, float %2186, float %2199)  ; FMad(a,b,c)
  %2201 = fadd fast float %2200, %2187
  %2202 = fmul fast float %2189, %2030
  %2203 = call float @dx.op.tertiary.f32(i32 46, float %2031, float %2190, float %2202)  ; FMad(a,b,c)
  %2204 = call float @dx.op.tertiary.f32(i32 46, float %2032, float %2191, float %2203)  ; FMad(a,b,c)
  %2205 = fadd fast float %2204, %2192
  %2206 = fmul fast float %2194, %2030
  %2207 = call float @dx.op.tertiary.f32(i32 46, float %2031, float %2195, float %2206)  ; FMad(a,b,c)
  %2208 = call float @dx.op.tertiary.f32(i32 46, float %2032, float %2196, float %2207)  ; FMad(a,b,c)
  %2209 = fadd fast float %2208, %2197
  %2210 = fcmp fast oge float %2201, 1.000000e+00
  %2211 = fcmp fast oge float %2205, 1.000000e+00
  %2212 = or i1 %2210, %2211
  %2213 = fcmp fast olt float %2201, 0.000000e+00
  %2214 = fcmp fast olt float %2205, 0.000000e+00
  %2215 = or i1 %2213, %2214
  %2216 = or i1 %2212, %2215
  br i1 %2216, label %2576, label %2217, !dx.controlflow.hints !115

; <label>:2217                                    ; preds = %2182
  %2218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2219 = extractvalue %dx.types.CBufRet.f32 %2218, 0
  %2220 = extractvalue %dx.types.CBufRet.f32 %2218, 1
  %2221 = extractvalue %dx.types.CBufRet.f32 %2218, 2
  %2222 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2223 = extractvalue %dx.types.CBufRet.i32 %2222, 2
  %2224 = uitofp i32 %2223 to float
  %2225 = extractvalue %dx.types.CBufRet.i32 %2222, 3
  %2226 = uitofp i32 %2225 to float
  %2227 = extractvalue %dx.types.CBufRet.f32 %2218, 3
  %2228 = fmul fast float %2227, 2.000000e+00
  %2229 = fsub fast float %2201, %2219
  %2230 = fsub fast float %2205, %2220
  %2231 = fmul fast float %2228, %2229
  %2232 = fmul fast float %2228, %2230
  %2233 = fdiv fast float 1.000000e+00, %2013
  %2234 = fmul fast float %2232, %2233
  %2235 = call float @dx.op.unary.f32(i32 6, float %2234)  ; FAbs(value)
  %2236 = fmul fast float %2221, %2032
  %2237 = fmul fast float %2236, %2228
  %2238 = call float @dx.op.unary.f32(i32 6, float %2237)  ; FAbs(value)
  %2239 = call float @dx.op.unary.f32(i32 6, float %2231)  ; FAbs(value)
  %2240 = call float @dx.op.binary.f32(i32 35, float %2238, float %2235)  ; FMax(a,b)
  %2241 = call float @dx.op.binary.f32(i32 35, float %2239, float %2240)  ; FMax(a,b)
  %2242 = fmul fast float %2241, 2.000000e+00
  %2243 = call float @dx.op.unary.f32(i32 23, float %2242)  ; Log(value)
  %2244 = call float @dx.op.binary.f32(i32 35, float %2243, float %2224)  ; FMax(a,b)
  %2245 = call float @dx.op.unary.f32(i32 22, float %2244)  ; Frc(value)
  %2246 = fadd fast float %2245, 0xBFEA666660000000
  %2247 = fmul fast float %2246, 8.000000e+00
  %2248 = call float @dx.op.unary.f32(i32 7, float %2247)  ; Saturate(value)
  %2249 = call float @dx.op.unary.f32(i32 27, float %2244)  ; Round_ni(value)
  %2250 = fadd fast float %2249, %2248
  %2251 = call float @dx.op.binary.f32(i32 36, float %2250, float %2226)  ; FMin(a,b)
  %2252 = call float @dx.op.unary.f32(i32 27, float %2251)  ; Round_ni(value)
  %2253 = fsub fast float -0.000000e+00, %2252
  %2254 = call float @dx.op.unary.f32(i32 21, float %2253)  ; Exp(value)
  %2255 = fmul fast float %2254, %2228
  %2256 = fmul fast float %2255, %2201
  %2257 = fmul fast float %2255, %2205
  %2258 = fmul fast float %2256, 2.500000e-01
  %2259 = fmul fast float %2257, 2.500000e-01
  %2260 = fadd fast float %2258, 5.000000e-01
  %2261 = fadd fast float %2259, 5.000000e-01
  %2262 = fsub fast float %2226, %2224
  %2263 = fptoui float %2262 to i32
  %2264 = add i32 %2263, 320
  %2265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 %2264)  ; CBufferLoadLegacy(handle,regIndex)
  %2266 = extractvalue %dx.types.CBufRet.f32 %2265, 0
  %2267 = extractvalue %dx.types.CBufRet.f32 %2265, 1
  %2268 = fcmp fast une float %2251, %2226
  %2269 = fsub fast float %2201, %2266
  %2270 = fsub fast float %2205, %2267
  %2271 = call float @dx.op.unary.f32(i32 6, float %2269)  ; FAbs(value)
  %2272 = call float @dx.op.unary.f32(i32 6, float %2270)  ; FAbs(value)
  %2273 = fmul fast float %2271, %2255
  %2274 = fmul fast float %2272, %2255
  %2275 = fcmp fast olt float %2273, 1.000000e+00
  %2276 = fcmp fast olt float %2274, 1.000000e+00
  %2277 = and i1 %2275, %2276
  %2278 = or i1 %2268, %2277
  br i1 %2278, label %2279, label %2576, !dx.controlflow.hints !116

; <label>:2279                                    ; preds = %2217
  %2280 = fmul fast float %2257, 5.000000e-01
  %2281 = fmul fast float %2256, 5.000000e-01
  %2282 = fadd fast float %2280, 5.000000e-01
  %2283 = fadd fast float %2281, 5.000000e-01
  %2284 = sitofp i32 %2223 to float
  %2285 = fsub fast float %2251, %2284
  %2286 = call float @dx.op.unary.f32(i32 27, float %2285)  ; Round_ni(value)
  %2287 = call float @dx.op.unary.f32(i32 22, float %2251)  ; Frc(value)
  %2288 = call float @dx.op.unary.f32(i32 22, float %2283)  ; Frc(value)
  %2289 = call float @dx.op.unary.f32(i32 22, float %2282)  ; Frc(value)
  %2290 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %34, float %2288, float %2289, float %2286, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2291 = extractvalue %dx.types.ResRet.f32 %2290, 0
  %2292 = extractvalue %dx.types.ResRet.f32 %2290, 1
  %2293 = extractvalue %dx.types.ResRet.f32 %2290, 2
  %2294 = extractvalue %dx.types.ResRet.f32 %2290, 3
  %2295 = fcmp fast ogt float %2287, 0.000000e+00
  br i1 %2295, label %2296, label %2317, !dx.controlflow.hints !117

; <label>:2296                                    ; preds = %2279
  %2297 = fadd fast float %2286, 1.000000e+00
  %2298 = call float @dx.op.unary.f32(i32 22, float %2260)  ; Frc(value)
  %2299 = call float @dx.op.unary.f32(i32 22, float %2261)  ; Frc(value)
  %2300 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %34, float %2298, float %2299, float %2297, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2301 = extractvalue %dx.types.ResRet.f32 %2300, 0
  %2302 = extractvalue %dx.types.ResRet.f32 %2300, 1
  %2303 = extractvalue %dx.types.ResRet.f32 %2300, 2
  %2304 = extractvalue %dx.types.ResRet.f32 %2300, 3
  %2305 = fsub fast float %2301, %2291
  %2306 = fsub fast float %2302, %2292
  %2307 = fsub fast float %2303, %2293
  %2308 = fsub fast float %2304, %2294
  %2309 = fmul fast float %2305, %2287
  %2310 = fmul fast float %2306, %2287
  %2311 = fmul fast float %2307, %2287
  %2312 = fmul fast float %2308, %2287
  %2313 = fadd fast float %2309, %2291
  %2314 = fadd fast float %2310, %2292
  %2315 = fadd fast float %2311, %2293
  %2316 = fadd fast float %2312, %2294
  br label %2317

; <label>:2317                                    ; preds = %2296, %2279
  %2318 = phi float [ %2313, %2296 ], [ %2291, %2279 ]
  %2319 = phi float [ %2314, %2296 ], [ %2292, %2279 ]
  %2320 = phi float [ %2315, %2296 ], [ %2293, %2279 ]
  %2321 = phi float [ %2316, %2296 ], [ %2294, %2279 ]
  %2322 = fadd fast float %2318, -5.000000e-01
  %2323 = fadd fast float %2320, -5.000000e-01
  %2324 = fmul fast float %2322, 0xBFD5555560000000
  %2325 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2323, float %2324)  ; FMad(a,b,c)
  %2326 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2319, float 0.000000e+00)  ; FMad(a,b,c)
  %2327 = fadd fast float %2326, %2321
  %2328 = fmul fast float %2322, -7.500000e-01
  %2329 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2323, float %2328)  ; FMad(a,b,c)
  %2330 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2319, float 0.000000e+00)  ; FMad(a,b,c)
  %2331 = fadd fast float %2330, %2321
  %2332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2333 = extractvalue %dx.types.CBufRet.f32 %2332, 0
  %2334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2335 = extractvalue %dx.types.CBufRet.f32 %2334, 0
  %2336 = extractvalue %dx.types.CBufRet.f32 %2334, 1
  %2337 = extractvalue %dx.types.CBufRet.f32 %2334, 2
  %2338 = extractvalue %dx.types.CBufRet.f32 %2334, 3
  %2339 = fsub fast float %2335, %2325
  %2340 = fsub fast float %2336, %2327
  %2341 = fsub fast float %2337, %2329
  %2342 = fsub fast float %2338, %2331
  %2343 = fmul fast float %2339, %2333
  %2344 = fmul fast float %2340, %2333
  %2345 = fmul fast float %2341, %2333
  %2346 = fmul fast float %2342, %2333
  %2347 = fadd fast float %2343, %2325
  %2348 = fadd fast float %2344, %2327
  %2349 = fadd fast float %2345, %2329
  %2350 = fadd fast float %2346, %2331
  %2351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2352 = extractvalue %dx.types.ResRet.i32 %2351, 0
  %2353 = and i32 %2352, 536870911
  %2354 = uitofp i32 %2353 to float
  %2355 = fmul fast float %2354, %2201
  %2356 = fmul fast float %2354, %2205
  %2357 = fptoui float %2355 to i32
  %2358 = fptoui float %2356 to i32
  %2359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2360 = extractvalue %dx.types.ResRet.i32 %2359, 0
  %2361 = and i32 %2360, 31
  %2362 = lshr i32 %2357, %2361
  %2363 = lshr i32 %2358, %2361
  %2364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2365 = extractvalue %dx.types.ResRet.i32 %2364, 0
  %2366 = and i32 %2365, 31
  %2367 = shl i32 1, %2366
  %2368 = call i32 @dx.op.binary.i32(i32 40, i32 %2367, i32 4)  ; UMin(a,b)
  %2369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2370 = extractvalue %dx.types.ResRet.i32 %2369, 0
  %2371 = extractvalue %dx.types.ResRet.i32 %2369, 1
  %2372 = icmp eq i32 %2368, 0
  br i1 %2372, label %2414, label %2373

; <label>:2373                                    ; preds = %2317
  br label %2374

; <label>:2374                                    ; preds = %2402, %2373
  %2375 = phi i32 [ %2405, %2402 ], [ 0, %2373 ]
  %2376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2377 = extractvalue %dx.types.ResRet.i32 %2376, 0
  %2378 = lshr i32 %2377, 16
  %2379 = and i32 %2378, 31
  %2380 = shl i32 %2363, %2379
  %2381 = add i32 %2380, %2362
  %2382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2383 = extractvalue %dx.types.ResRet.i32 %2382, 0
  %2384 = and i32 %2383, 31
  %2385 = shl i32 %2381, %2384
  %2386 = add i32 %2385, %2375
  %2387 = shl i32 %2386, 2
  %2388 = add i32 %2387, 32
  %2389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2388, i32 undef)  ; BufferLoad(srv,index,wot)
  %2390 = extractvalue %dx.types.ResRet.i32 %2389, 0
  %2391 = icmp slt i32 %2390, 0
  %2392 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 %2375
  %2393 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %2375
  %2394 = bitcast float* %2392 to i32*
  %2395 = bitcast float* %2393 to i32*
  br i1 %2391, label %2396, label %2402

; <label>:2396                                    ; preds = %2374
  %2397 = and i32 %2390, 1073741823
  %2398 = add nuw nsw i32 %2397, 20
  %2399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2398, i32 undef)  ; BufferLoad(srv,index,wot)
  %2400 = extractvalue %dx.types.ResRet.i32 %2399, 0
  %2401 = extractvalue %dx.types.ResRet.i32 %2399, 1
  br label %2402

; <label>:2402                                    ; preds = %2396, %2374
  %2403 = phi i32 [ %2400, %2396 ], [ %2370, %2374 ]
  %2404 = phi i32 [ %2401, %2396 ], [ %2371, %2374 ]
  store i32 %2403, i32* %2394, align 4
  store i32 %2404, i32* %2395, align 4
  %2405 = add nuw i32 %2375, 1
  %2406 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2407 = extractvalue %dx.types.CBufRet.i32 %2406, 2
  %2408 = icmp eq i32 %2407, 0
  %2409 = icmp ugt i32 %2390, -1073741825
  %2410 = and i1 %2409, %2408
  %2411 = icmp ult i32 %2405, %2368
  %2412 = and i1 %2410, %2411
  br i1 %2412, label %2374, label %2413

; <label>:2413                                    ; preds = %2402
  br label %2414

; <label>:2414                                    ; preds = %2413, %2317
  %2415 = phi i32 [ 0, %2317 ], [ %2405, %2413 ]
  %2416 = extractvalue %dx.types.CBufRet.f32 %2179, 2
  %2417 = fptoui float %2416 to i32
  %2418 = icmp eq i32 %2417, 0
  br i1 %2418, label %2470, label %2419

; <label>:2419                                    ; preds = %2414
  br label %2420

; <label>:2420                                    ; preds = %2465, %2419
  %2421 = phi i32 [ %2466, %2465 ], [ %2415, %2419 ]
  %2422 = phi i32 [ %2467, %2465 ], [ 0, %2419 ]
  %2423 = lshr i32 %2422, 2
  %2424 = and i32 %2422, 3
  %2425 = add nuw nsw i32 %2423, 83
  %2426 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 %2425)  ; CBufferLoadLegacy(handle,regIndex)
  %2427 = extractvalue %dx.types.CBufRet.i32 %2426, 0
  %2428 = extractvalue %dx.types.CBufRet.i32 %2426, 1
  %2429 = extractvalue %dx.types.CBufRet.i32 %2426, 2
  %2430 = extractvalue %dx.types.CBufRet.i32 %2426, 3
  %2431 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i32 0, i32 0
  store i32 %2427, i32* %2431, align 4
  %2432 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i32 0, i32 1
  store i32 %2428, i32* %2432, align 4
  %2433 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i32 0, i32 2
  store i32 %2429, i32* %2433, align 4
  %2434 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i32 0, i32 3
  store i32 %2430, i32* %2434, align 4
  %2435 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i32 0, i32 %2424
  %2436 = load i32, i32* %2435, align 4, !tbaa !118, !noalias !120
  %2437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2438 = extractvalue %dx.types.ResRet.i32 %2437, 0
  %2439 = lshr i32 %2438, 16
  %2440 = and i32 %2439, 31
  %2441 = shl i32 %2363, %2440
  %2442 = add i32 %2441, %2362
  %2443 = shl i32 %2442, 2
  %2444 = add i32 %2443, %2436
  %2445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2444, i32 undef)  ; BufferLoad(srv,index,wot)
  %2446 = extractvalue %dx.types.ResRet.i32 %2445, 0
  %2447 = icmp eq i32 %2446, 0
  br i1 %2447, label %2465, label %2448

; <label>:2448                                    ; preds = %2420
  %2449 = icmp slt i32 %2446, 0
  %2450 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 %2421
  %2451 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %2421
  %2452 = bitcast float* %2450 to i32*
  %2453 = bitcast float* %2451 to i32*
  br i1 %2449, label %2454, label %2461

; <label>:2454                                    ; preds = %2448
  %2455 = and i32 %2446, 1073741823
  %2456 = add i32 %2436, 20
  %2457 = add i32 %2456, %2455
  %2458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2457, i32 undef)  ; BufferLoad(srv,index,wot)
  %2459 = extractvalue %dx.types.ResRet.i32 %2458, 0
  %2460 = extractvalue %dx.types.ResRet.i32 %2458, 1
  br label %2461

; <label>:2461                                    ; preds = %2454, %2448
  %2462 = phi i32 [ %2459, %2454 ], [ %2370, %2448 ]
  %2463 = phi i32 [ %2460, %2454 ], [ %2371, %2448 ]
  store i32 %2462, i32* %2452, align 4
  store i32 %2463, i32* %2453, align 4
  %2464 = add i32 %2421, 1
  br label %2465

; <label>:2465                                    ; preds = %2461, %2420
  %2466 = phi i32 [ %2421, %2420 ], [ %2464, %2461 ]
  %2467 = add nuw i32 %2422, 1
  %2468 = icmp eq i32 %2467, %2417
  br i1 %2468, label %2469, label %2420

; <label>:2469                                    ; preds = %2465
  br label %2470

; <label>:2470                                    ; preds = %2469, %2414
  %2471 = phi i32 [ %2415, %2414 ], [ %2466, %2469 ]
  %2472 = icmp eq i32 %2471, 1
  %2473 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 0
  %2474 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 0
  br i1 %2472, label %2475, label %2478

; <label>:2475                                    ; preds = %2470
  %2476 = load float, float* %2473, align 4
  %2477 = load float, float* %2474, align 4
  br label %2505

; <label>:2478                                    ; preds = %2470
  %2479 = load float, float* %2473, align 4
  %2480 = load float, float* %2474, align 4
  %2481 = fdiv fast float 1.000000e+00, %2480
  %2482 = fsub fast float %2479, %2481
  %2483 = icmp ugt i32 %2471, 1
  br i1 %2483, label %2484, label %2500

; <label>:2484                                    ; preds = %2478
  br label %2485

; <label>:2485                                    ; preds = %2485, %2484
  %2486 = phi float [ %2495, %2485 ], [ %2482, %2484 ]
  %2487 = phi float [ %2496, %2485 ], [ %2479, %2484 ]
  %2488 = phi i32 [ %2497, %2485 ], [ 1, %2484 ]
  %2489 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 %2488
  %2490 = load float, float* %2489, align 4
  %2491 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %2488
  %2492 = load float, float* %2491, align 4
  %2493 = fdiv fast float 1.000000e+00, %2492
  %2494 = fsub fast float %2490, %2493
  %2495 = call float @dx.op.binary.f32(i32 36, float %2486, float %2494)  ; FMin(a,b)
  %2496 = call float @dx.op.binary.f32(i32 35, float %2487, float %2490)  ; FMax(a,b)
  %2497 = add nuw i32 %2488, 1
  %2498 = icmp eq i32 %2497, %2471
  br i1 %2498, label %2499, label %2485

; <label>:2499                                    ; preds = %2485
  br label %2500

; <label>:2500                                    ; preds = %2499, %2478
  %2501 = phi float [ %2482, %2478 ], [ %2495, %2499 ]
  %2502 = phi float [ %2479, %2478 ], [ %2496, %2499 ]
  %2503 = fsub fast float %2502, %2501
  %2504 = fdiv fast float 1.000000e+00, %2503
  br label %2505

; <label>:2505                                    ; preds = %2500, %2475
  %2506 = phi float [ %2476, %2475 ], [ %2502, %2500 ]
  %2507 = phi float [ %2477, %2475 ], [ %2504, %2500 ]
  %2508 = fadd fast float %2209, %2506
  %2509 = fmul fast float %2508, %2507
  %2510 = call float @dx.op.unary.f32(i32 7, float %2509)  ; Saturate(value)
  %2511 = fmul fast float %2510, 2.000000e+00
  %2512 = fsub fast float 1.000000e+00, %2511
  %2513 = fmul fast float %2347, %2347
  %2514 = fsub fast float %2348, %2513
  %2515 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2514)  ; FMax(a,b)
  %2516 = fdiv fast float 1.000000e+00, %2515
  %2517 = fmul fast float %2348, %2347
  %2518 = fsub fast float %2349, %2517
  %2519 = fsub fast float %2512, %2347
  %2520 = fmul fast float %2512, %2512
  %2521 = fsub fast float %2520, %2348
  %2522 = fmul fast float %2516, %2518
  %2523 = fmul fast float %2522, %2519
  %2524 = fsub fast float %2521, %2523
  %2525 = fmul fast float %2348, %2348
  %2526 = fsub fast float %2350, %2525
  %2527 = fmul fast float %2518, %2518
  %2528 = fmul fast float %2527, %2516
  %2529 = fsub fast float %2526, %2528
  %2530 = fdiv fast float %2524, %2529
  %2531 = fmul fast float %2530, %2518
  %2532 = fsub fast float %2519, %2531
  %2533 = fmul fast float %2532, %2516
  %2534 = fmul fast float %2533, %2347
  %2535 = fsub fast float 1.000000e+00, %2534
  %2536 = fmul fast float %2530, %2348
  %2537 = fsub fast float %2535, %2536
  %2538 = fmul fast float %2533, %2533
  %2539 = fmul fast float %2530, 4.000000e+00
  %2540 = fmul fast float %2539, %2537
  %2541 = fsub fast float %2538, %2540
  %2542 = call float @dx.op.unary.f32(i32 24, float %2541)  ; Sqrt(value)
  %2543 = fcmp fast oge float %2533, 0.000000e+00
  %2544 = fsub fast float -0.000000e+00, %2542
  %2545 = select i1 %2543, float %2544, float %2542
  %2546 = fsub fast float %2545, %2533
  %2547 = fdiv fast float %2546, %2530
  %2548 = fdiv fast float %2537, %2546
  %2549 = fmul fast float %2547, 5.000000e-01
  %2550 = fmul fast float %2548, 2.000000e+00
  %2551 = select i1 %2543, float %2549, float %2550
  %2552 = select i1 %2543, float %2550, float %2549
  %2553 = call float @dx.op.binary.f32(i32 35, float %2551, float %2552)  ; FMax(a,b)
  %2554 = call float @dx.op.binary.f32(i32 36, float %2551, float %2552)  ; FMin(a,b)
  %2555 = fcmp fast ogt float %2512, %2553
  %2556 = fsub fast float %2512, %2554
  %2557 = fsub fast float %2512, %2553
  %2558 = fsub fast float %2553, %2554
  %2559 = select i1 %2555, float %2557, float %2558
  %2560 = fmul float %2556, %2559
  %2561 = select i1 %2555, float %2554, float %2512
  %2562 = fcmp fast ogt float %2512, %2554
  %2563 = fmul fast float %2561, %2553
  %2564 = fadd fast float %2561, %2553
  %2565 = fmul fast float %2564, %2347
  %2566 = fadd fast float %2563, %2348
  %2567 = fsub fast float %2566, %2565
  %2568 = fdiv fast float %2567, %2560
  %2569 = select i1 %2562, float %2568, float 0.000000e+00
  %2570 = fsub fast float 1.000000e+00, %2569
  %2571 = select i1 %2555, float %2570, float %2569
  %2572 = call float @dx.op.unary.f32(i32 7, float %2571)  ; Saturate(value)
  %2573 = extractvalue %dx.types.CBufRet.f32 %2332, 3
  %2574 = fmul fast float %2573, %2572
  %2575 = fsub fast float 1.000000e+00, %2574
  br label %2576

; <label>:2576                                    ; preds = %2505, %2217, %2182, %2178, %2144
  %2577 = phi float [ 1.000000e+00, %2144 ], [ %2575, %2505 ], [ 1.000000e+00, %2182 ], [ 1.000000e+00, %2217 ], [ 1.000000e+00, %2178 ]
  %2578 = fcmp fast ogt float %2174, 0.000000e+00
  br i1 %2578, label %2579, label %2585, !dx.controlflow.hints !129

; <label>:2579                                    ; preds = %2576
  %2580 = fadd fast float %2087, %2061
  %2581 = call float @dx.op.binary.f32(i32 35, float %2580, float 0.000000e+00)  ; FMax(a,b)
  %2582 = fadd fast float %2581, 0x3F10000000000000
  %2583 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %36, float %2076, float %2077, float undef, float undef, i32 0, i32 0, i32 undef, float %2582)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2584 = extractvalue %dx.types.ResRet.f32 %2583, 0
  br label %2585

; <label>:2585                                    ; preds = %2579, %2576
  %2586 = phi float [ %2584, %2579 ], [ 1.000000e+00, %2576 ]
  %2587 = fcmp fast ogt float %2172, 0.000000e+00
  br i1 %2587, label %2588, label %2594, !dx.controlflow.hints !130

; <label>:2588                                    ; preds = %2585
  %2589 = fadd fast float %2117, %2061
  %2590 = call float @dx.op.binary.f32(i32 35, float %2589, float 0.000000e+00)  ; FMax(a,b)
  %2591 = fadd fast float %2590, 0x3F10000000000000
  %2592 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %36, float %2068, float %2069, float undef, float undef, i32 0, i32 0, i32 undef, float %2591)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2593 = extractvalue %dx.types.ResRet.f32 %2592, 0
  br label %2594

; <label>:2594                                    ; preds = %2588, %2585
  %2595 = phi float [ %2593, %2588 ], [ 1.000000e+00, %2585 ]
  %2596 = fcmp fast ogt float %2171, 0.000000e+00
  br i1 %2596, label %2597, label %2604, !dx.controlflow.hints !131

; <label>:2597                                    ; preds = %2594
  %2598 = extractvalue %dx.types.CBufRet.f32 %2086, 0
  %2599 = fadd fast float %2598, %2061
  %2600 = call float @dx.op.binary.f32(i32 35, float %2599, float 0.000000e+00)  ; FMax(a,b)
  %2601 = fadd fast float %2600, 0x3F10000000000000
  %2602 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %36, float %2053, float %2057, float undef, float undef, i32 0, i32 0, i32 undef, float %2601)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2603 = extractvalue %dx.types.ResRet.f32 %2602, 0
  br label %2604

; <label>:2604                                    ; preds = %2597, %2594
  %2605 = phi float [ %2603, %2597 ], [ 1.000000e+00, %2594 ]
  %2606 = fsub fast float %2586, %2577
  %2607 = fmul fast float %2606, %2115
  %2608 = fadd fast float %2607, %2577
  %2609 = fsub fast float %2595, %2608
  %2610 = fmul fast float %2609, %2145
  %2611 = fadd fast float %2610, %2608
  %2612 = fsub fast float %2605, %2611
  %2613 = fmul fast float %2612, %2171
  %2614 = fadd fast float %2613, %2611
  %2615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %2616 = extractvalue %dx.types.CBufRet.f32 %2615, 2
  %2617 = fcmp fast ogt float %2616, 0.000000e+00
  br i1 %2617, label %2618, label %2655, !dx.controlflow.hints !132

; <label>:2618                                    ; preds = %2604
  %2619 = fcmp fast ugt float %2616, 0.000000e+00
  br i1 %2619, label %2620, label %2652

; <label>:2620                                    ; preds = %2618
  %2621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %2622 = extractvalue %dx.types.CBufRet.f32 %2621, 0
  %2623 = extractvalue %dx.types.CBufRet.f32 %2621, 1
  %2624 = extractvalue %dx.types.CBufRet.f32 %2621, 2
  %2625 = extractvalue %dx.types.CBufRet.f32 %2621, 3
  %2626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %2627 = extractvalue %dx.types.CBufRet.f32 %2626, 0
  %2628 = extractvalue %dx.types.CBufRet.f32 %2626, 1
  %2629 = extractvalue %dx.types.CBufRet.f32 %2626, 2
  %2630 = extractvalue %dx.types.CBufRet.f32 %2626, 3
  %2631 = extractvalue %dx.types.CBufRet.f32 %2615, 0
  %2632 = extractvalue %dx.types.CBufRet.f32 %2615, 1
  %2633 = extractvalue %dx.types.CBufRet.f32 %558, 2
  %2634 = fadd fast float %559, %2030
  %2635 = fadd fast float %560, %2031
  %2636 = fadd fast float %2633, %2032
  %2637 = fmul fast float %2634, %2622
  %2638 = call float @dx.op.tertiary.f32(i32 46, float %2623, float %2635, float %2637)  ; FMad(a,b,c)
  %2639 = call float @dx.op.tertiary.f32(i32 46, float %2624, float %2636, float %2638)  ; FMad(a,b,c)
  %2640 = fadd fast float %2639, %2625
  %2641 = fmul fast float %2634, %2627
  %2642 = call float @dx.op.tertiary.f32(i32 46, float %2628, float %2635, float %2641)  ; FMad(a,b,c)
  %2643 = call float @dx.op.tertiary.f32(i32 46, float %2629, float %2636, float %2642)  ; FMad(a,b,c)
  %2644 = fadd fast float %2643, %2630
  %2645 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %32, float %2640, float %2644, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2646 = extractvalue %dx.types.ResRet.f32 %2645, 0
  %2647 = fmul fast float %2646, %2632
  %2648 = fadd fast float %2647, %2631
  %2649 = call float @dx.op.unary.f32(i32 7, float %2648)  ; Saturate(value)
  %2650 = fmul fast float %2649, %2616
  %2651 = fsub fast float 1.000000e+00, %2650
  br label %2652

; <label>:2652                                    ; preds = %2620, %2618
  %2653 = phi float [ %2651, %2620 ], [ 1.000000e+00, %2618 ]
  %2654 = fmul fast float %2653, %2614
  br label %2655

; <label>:2655                                    ; preds = %2652, %2604, %2010
  %2656 = phi float [ 1.000000e+00, %2010 ], [ %2654, %2652 ], [ %2614, %2604 ]
  %2657 = call float @dx.op.binary.f32(i32 36, float %2656, float %2656)  ; FMin(a,b)
  %2658 = call float @dx.op.binary.f32(i32 36, float %2656, float %2657)  ; FMin(a,b)
  %2659 = fcmp fast ogt float %2658, 0.000000e+00
  br i1 %2659, label %2660, label %2817, !dx.controlflow.hints !133

; <label>:2660                                    ; preds = %2655
  %2661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2662 = extractvalue %dx.types.CBufRet.f32 %2661, 0
  %2663 = extractvalue %dx.types.CBufRet.f32 %2661, 1
  %2664 = extractvalue %dx.types.CBufRet.f32 %2661, 2
  %2665 = extractvalue %dx.types.CBufRet.f32 %2661, 3
  %2666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2667 = extractvalue %dx.types.CBufRet.f32 %2666, 0
  %2668 = extractvalue %dx.types.CBufRet.f32 %2666, 1
  %2669 = extractvalue %dx.types.CBufRet.f32 %2666, 2
  %2670 = extractvalue %dx.types.CBufRet.f32 %2666, 3
  %2671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2672 = extractvalue %dx.types.CBufRet.f32 %2671, 0
  %2673 = extractvalue %dx.types.CBufRet.f32 %2671, 1
  %2674 = extractvalue %dx.types.CBufRet.f32 %2671, 2
  %2675 = extractvalue %dx.types.CBufRet.f32 %2671, 3
  %2676 = fmul fast float %2662, %2030
  %2677 = call float @dx.op.tertiary.f32(i32 46, float %2031, float %2663, float %2676)  ; FMad(a,b,c)
  %2678 = call float @dx.op.tertiary.f32(i32 46, float %2032, float %2664, float %2677)  ; FMad(a,b,c)
  %2679 = fadd fast float %2678, %2665
  %2680 = fmul fast float %2667, %2030
  %2681 = call float @dx.op.tertiary.f32(i32 46, float %2031, float %2668, float %2680)  ; FMad(a,b,c)
  %2682 = call float @dx.op.tertiary.f32(i32 46, float %2032, float %2669, float %2681)  ; FMad(a,b,c)
  %2683 = fadd fast float %2682, %2670
  %2684 = fmul fast float %2672, %2030
  %2685 = call float @dx.op.tertiary.f32(i32 46, float %2031, float %2673, float %2684)  ; FMad(a,b,c)
  %2686 = call float @dx.op.tertiary.f32(i32 46, float %2032, float %2674, float %2685)  ; FMad(a,b,c)
  %2687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %2688 = extractvalue %dx.types.CBufRet.f32 %2687, 0
  %2689 = extractvalue %dx.types.CBufRet.f32 %2687, 1
  %2690 = extractvalue %dx.types.CBufRet.f32 %2687, 3
  %2691 = fmul fast float %2690, %2679
  %2692 = fmul fast float %2690, %2683
  %2693 = fadd fast float %2691, %2688
  %2694 = fadd fast float %2692, %2689
  %2695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %2696 = extractvalue %dx.types.CBufRet.f32 %2695, 0
  %2697 = extractvalue %dx.types.CBufRet.f32 %2695, 1
  %2698 = fsub fast float %2693, %2696
  %2699 = fsub fast float %2694, %2697
  %2700 = fcmp fast olt float %2698, 0.000000e+00
  %2701 = fcmp fast olt float %2699, 0.000000e+00
  %2702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %2703 = extractvalue %dx.types.CBufRet.f32 %2702, 0
  %2704 = extractvalue %dx.types.CBufRet.f32 %2702, 1
  %2705 = extractvalue %dx.types.CBufRet.f32 %2702, 2
  %2706 = extractvalue %dx.types.CBufRet.f32 %2702, 3
  %2707 = select i1 %2700, float %2703, float %2705
  %2708 = select i1 %2701, float %2704, float %2706
  %2709 = fmul fast float %2707, %2698
  %2710 = fmul fast float %2708, %2699
  %2711 = call float @dx.op.unary.f32(i32 6, float %2709)  ; FAbs(value)
  %2712 = call float @dx.op.unary.f32(i32 6, float %2710)  ; FAbs(value)
  %2713 = extractvalue %dx.types.CBufRet.f32 %2025, 0
  %2714 = call float @dx.op.binary.f32(i32 35, float %2711, float %2712)  ; FMax(a,b)
  %2715 = fsub fast float %2713, %2714
  %2716 = call float @dx.op.unary.f32(i32 7, float %2715)  ; Saturate(value)
  %2717 = fcmp fast ogt float %2716, 0.000000e+00
  br i1 %2717, label %2718, label %2759, !dx.controlflow.hints !134

; <label>:2718                                    ; preds = %2660
  %2719 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %35, float %2693, float %2694, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2720 = extractvalue %dx.types.ResRet.f32 %2719, 1
  %2721 = fcmp fast ogt float %2720, 0.000000e+00
  br i1 %2721, label %2722, label %2755

; <label>:2722                                    ; preds = %2718
  %2723 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %35, float %2693, float %2694, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2724 = extractvalue %dx.types.ResRet.f32 %2723, 0
  %2725 = extractvalue %dx.types.ResRet.f32 %2723, 1
  %2726 = extractvalue %dx.types.ResRet.f32 %2723, 2
  %2727 = extractvalue %dx.types.ResRet.f32 %2723, 3
  %2728 = fsub fast float 1.000000e+00, %2675
  %2729 = fsub fast float %2728, %2686
  %2730 = fmul fast float %2729, 0x400921FB60000000
  %2731 = fadd fast float %2730, 0x3FF921FB60000000
  %2732 = call float @dx.op.unary.f32(i32 13, float %2731)  ; Sin(value)
  %2733 = fadd fast float %2732, -1.000000e+00
  %2734 = fmul fast float %2733, 0x3FD45F3060000000
  %2735 = fmul fast float %2729, 0x401921FB60000000
  %2736 = fadd fast float %2735, 0x400921FB60000000
  %2737 = call float @dx.op.unary.f32(i32 13, float %2736)  ; Sin(value)
  %2738 = fadd fast float %2737, 0x3E7777A5C0000000
  %2739 = fmul fast float %2738, 0x3FC45F3060000000
  %2740 = fmul fast float %2729, 0x4022D97C80000000
  %2741 = fadd fast float %2740, 0x4012D97C80000000
  %2742 = call float @dx.op.unary.f32(i32 13, float %2741)  ; Sin(value)
  %2743 = fadd fast float %2742, 1.000000e+00
  %2744 = fmul fast float %2743, 0x3FBB2995E0000000
  %2745 = fmul fast float %2729, 0x402921FB60000000
  %2746 = fadd fast float %2745, 0x401921FB60000000
  %2747 = call float @dx.op.unary.f32(i32 13, float %2746)  ; Sin(value)
  %2748 = fadd fast float %2747, 0xBE8777A5C0000000
  %2749 = fmul fast float %2748, 0x3FB45F3060000000
  %2750 = call float @dx.op.dot4.f32(i32 56, float %2724, float %2725, float %2726, float %2727, float %2734, float %2739, float %2744, float %2749)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2751 = fmul fast float %2750, 0xBFF7154760000000
  %2752 = call float @dx.op.unary.f32(i32 21, float %2751)  ; Exp(value)
  %2753 = call float @dx.op.unary.f32(i32 7, float %2752)  ; Saturate(value)
  %2754 = fadd float %2753, -1.000000e+00
  br label %2755

; <label>:2755                                    ; preds = %2722, %2718
  %2756 = phi float [ %2754, %2722 ], [ 0.000000e+00, %2718 ]
  %2757 = fmul fast float %2756, %2716
  %2758 = fadd fast float %2757, 1.000000e+00
  br label %2759

; <label>:2759                                    ; preds = %2755, %2660
  %2760 = phi float [ %2758, %2755 ], [ 1.000000e+00, %2660 ]
  %2761 = fmul fast float %2760, %2656
  %2762 = extractvalue %dx.types.CBufRet.f32 %558, 2
  %2763 = fadd fast float %559, %406
  %2764 = fadd fast float %560, %407
  %2765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %2766 = extractvalue %dx.types.CBufRet.f32 %2765, 1
  %2767 = fsub fast float -0.000000e+00, %2763
  %2768 = fsub fast float -0.000000e+00, %2764
  %2769 = fsub fast float %538, %2762
  %2770 = fadd fast float %2769, %2766
  %2771 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2767, float %2768, float %2770)  ; Dot3(ax,ay,az,bx,by,bz)
  %2772 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2011, float %2012, float %2013)  ; Dot3(ax,ay,az,bx,by,bz)
  %2773 = fdiv fast float 1.000000e+00, %2772
  %2774 = fmul fast float %2773, %2771
  %2775 = fmul fast float %2011, %2774
  %2776 = fmul fast float %2012, %2774
  %2777 = fadd fast float %2775, %2763
  %2778 = fadd fast float %2776, %2764
  %2779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %2780 = extractvalue %dx.types.CBufRet.f32 %2779, 0
  %2781 = extractvalue %dx.types.CBufRet.f32 %2779, 1
  %2782 = fsub fast float %2777, %2780
  %2783 = fsub fast float %2778, %2781
  %2784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %2785 = extractvalue %dx.types.CBufRet.f32 %2784, 2
  %2786 = extractvalue %dx.types.CBufRet.f32 %2784, 3
  %2787 = fmul fast float %2782, %2785
  %2788 = fmul fast float %2783, %2786
  %2789 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %2790 = extractvalue %dx.types.CBufRet.i32 %2789, 3
  %2791 = icmp eq i32 %2790, 0
  br i1 %2791, label %2797, label %2792

; <label>:2792                                    ; preds = %2759
  %2793 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %34, float %2787, float %2788, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2794 = extractvalue %dx.types.ResRet.f32 %2793, 0
  %2795 = extractvalue %dx.types.ResRet.f32 %2793, 1
  %2796 = extractvalue %dx.types.ResRet.f32 %2793, 2
  br label %2802

; <label>:2797                                    ; preds = %2759
  %2798 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %35, float %2787, float %2788, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2799 = extractvalue %dx.types.ResRet.f32 %2798, 0
  %2800 = extractvalue %dx.types.ResRet.f32 %2798, 1
  %2801 = extractvalue %dx.types.ResRet.f32 %2798, 2
  br label %2802

; <label>:2802                                    ; preds = %2797, %2792
  %2803 = phi float [ %2794, %2792 ], [ %2799, %2797 ]
  %2804 = phi float [ %2795, %2792 ], [ %2800, %2797 ]
  %2805 = phi float [ %2796, %2792 ], [ %2801, %2797 ]
  %2806 = extractvalue %dx.types.CBufRet.f32 %2765, 2
  %2807 = fmul fast float %2806, %2803
  %2808 = extractvalue %dx.types.CBufRet.f32 %2765, 0
  %2809 = fsub fast float %2774, %2808
  %2810 = fsub fast float %2809, %2807
  %2811 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2810)  ; FMax(a,b)
  %2812 = fmul fast float %2811, %2804
  %2813 = call float @dx.op.binary.f32(i32 36, float %2805, float %2812)  ; FMin(a,b)
  %2814 = fmul fast float %2813, 0xBFF7154760000000
  %2815 = call float @dx.op.unary.f32(i32 21, float %2814)  ; Exp(value)
  %2816 = fmul fast float %2761, %2815
  br label %2817

; <label>:2817                                    ; preds = %2802, %2655
  %2818 = phi float [ %2816, %2802 ], [ %2656, %2655 ]
  %2819 = call float @dx.op.binary.f32(i32 36, float %2818, float %2818)  ; FMin(a,b)
  %2820 = call float @dx.op.binary.f32(i32 36, float %2818, float %2819)  ; FMin(a,b)
  %2821 = fcmp fast ogt float %2820, 0.000000e+00
  br i1 %2821, label %2822, label %2922, !dx.controlflow.hints !135

; <label>:2822                                    ; preds = %2817
  %2823 = fmul fast float %2818, %2022
  %2824 = fmul fast float %2818, %2023
  %2825 = fmul fast float %2818, %2024
  %2826 = fsub fast float %2011, %541
  %2827 = fsub fast float %2012, %542
  %2828 = fsub fast float %2013, %543
  %2829 = call float @dx.op.dot3.f32(i32 55, float %2826, float %2827, float %2828, float %2826, float %2827, float %2828)  ; Dot3(ax,ay,az,bx,by,bz)
  %2830 = call float @dx.op.unary.f32(i32 25, float %2829)  ; Rsqrt(value)
  %2831 = fmul fast float %2830, %2826
  %2832 = fmul fast float %2830, %2827
  %2833 = fmul fast float %2830, %2828
  %2834 = call float @dx.op.dot3.f32(i32 55, float %2011, float %2012, float %2013, float %338, float %339, float %340)  ; Dot3(ax,ay,az,bx,by,bz)
  %2835 = call float @dx.op.dot3.f32(i32 55, float %544, float %545, float %546, float %2831, float %2832, float %2833)  ; Dot3(ax,ay,az,bx,by,bz)
  %2836 = call float @dx.op.unary.f32(i32 7, float %2834)  ; Saturate(value)
  %2837 = fmul fast float %2836, %2836
  %2838 = fmul fast float %2837, 0x47DE623840000000
  %2839 = call float @dx.op.unary.f32(i32 7, float %2838)  ; Saturate(value)
  %2840 = fmul fast float %2839, %2836
  %2841 = call float @dx.op.dot3.f32(i32 55, float %338, float %339, float %340, float %2831, float %2832, float %2833)  ; Dot3(ax,ay,az,bx,by,bz)
  %2842 = fmul fast float %2841, %2841
  %2843 = call float @dx.op.unary.f32(i32 6, float %2834)  ; FAbs(value)
  %2844 = fsub fast float 1.000000e+00, %350
  %2845 = call float @dx.op.binary.f32(i32 35, float %2844, float 0x3F847AE140000000)  ; FMax(a,b)
  %2846 = fmul fast float %2845, %2845
  %2847 = fmul fast float %2846, %2846
  %2848 = fsub fast float 1.000000e+00, %2847
  %2849 = fmul fast float %549, %549
  %2850 = fmul fast float %2849, %2848
  %2851 = fadd fast float %2850, %2847
  %2852 = bitcast float %2851 to i32
  %2853 = ashr i32 %2852, 1
  %2854 = add nsw i32 %2853, 532487669
  %2855 = bitcast i32 %2854 to float
  %2856 = fadd fast float %2855, %549
  %2857 = fmul fast float %2847, %2842
  %2858 = fsub fast float 1.000000e+00, %2842
  %2859 = fadd fast float %2858, %2857
  %2860 = fmul fast float %2843, %2843
  %2861 = fmul fast float %2860, %2848
  %2862 = fadd fast float %2861, %2847
  %2863 = bitcast float %2862 to i32
  %2864 = ashr i32 %2863, 1
  %2865 = add nsw i32 %2864, 532487669
  %2866 = bitcast i32 %2865 to float
  %2867 = fadd fast float %2866, %2843
  %2868 = fmul fast float %2859, %2859
  %2869 = fmul fast float %2868, %2856
  %2870 = fmul fast float %2869, %2867
  %2871 = fdiv fast float 0x3FF0A00000000000, %2870
  %2872 = fmul fast float %2871, %2847
  %2873 = call float @dx.op.unary.f32(i32 6, float %2835)  ; FAbs(value)
  %2874 = fsub fast float 1.000000e+00, %2873
  %2875 = bitcast float %2874 to i32
  %2876 = sitofp i32 %2875 to float
  %2877 = fmul fast float %2876, 5.000000e+00
  %2878 = fadd fast float %2877, 0xC1EFBF8940000000
  %2879 = fptosi float %2878 to i32
  %2880 = bitcast i32 %2879 to float
  %2881 = fsub fast float 1.000000e+00, %529
  %2882 = fsub fast float 1.000000e+00, %530
  %2883 = fsub fast float 1.000000e+00, %547
  %2884 = fmul fast float %2880, %2881
  %2885 = fmul fast float %2880, %2882
  %2886 = fmul fast float %2880, %2883
  %2887 = fadd fast float %2884, %529
  %2888 = fadd fast float %2885, %530
  %2889 = fadd fast float %2886, %547
  %2890 = fmul fast float %2834, 9.843750e-01
  %2891 = fadd fast float %2890, 7.812500e-03
  %2892 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %35, float %2891, float %1988, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2893 = extractvalue %dx.types.ResRet.f32 %2892, 2
  %2894 = extractvalue %dx.types.ResRet.f32 %2892, 3
  %2895 = fmul fast float %2893, %529
  %2896 = fmul fast float %2893, %530
  %2897 = fmul fast float %2893, %547
  %2898 = fadd fast float %2895, %2894
  %2899 = fadd fast float %2896, %2894
  %2900 = fadd fast float %2897, %2894
  %2901 = call float @dx.op.binary.f32(i32 35, float %2899, float %2900)  ; FMax(a,b)
  %2902 = call float @dx.op.binary.f32(i32 35, float %2898, float %2901)  ; FMax(a,b)
  %2903 = fsub fast float 1.000000e+00, %2902
  %2904 = fmul fast float %2840, %2823
  %2905 = fmul fast float %2904, %2903
  %2906 = fmul fast float %2840, %2824
  %2907 = fmul fast float %2906, %2903
  %2908 = fmul fast float %2840, %2825
  %2909 = fmul fast float %2908, %2903
  %2910 = fadd fast float %2905, %2001
  %2911 = fadd fast float %2907, %2002
  %2912 = fadd fast float %2909, %2003
  %2913 = fmul fast float %2904, %2872
  %2914 = fmul fast float %2913, %2887
  %2915 = fmul fast float %2906, %2872
  %2916 = fmul fast float %2915, %2888
  %2917 = fmul fast float %2908, %2872
  %2918 = fmul fast float %2917, %2889
  %2919 = fadd fast float %2914, %2004
  %2920 = fadd fast float %2916, %2005
  %2921 = fadd fast float %2918, %2006
  br label %2922

; <label>:2922                                    ; preds = %2822, %2817, %1964
  %2923 = phi float [ %2004, %1964 ], [ %2004, %2817 ], [ %2919, %2822 ]
  %2924 = phi float [ %2005, %1964 ], [ %2005, %2817 ], [ %2920, %2822 ]
  %2925 = phi float [ %2006, %1964 ], [ %2006, %2817 ], [ %2921, %2822 ]
  %2926 = phi float [ %2001, %1964 ], [ %2001, %2817 ], [ %2910, %2822 ]
  %2927 = phi float [ %2002, %1964 ], [ %2002, %2817 ], [ %2911, %2822 ]
  %2928 = phi float [ %2003, %1964 ], [ %2003, %2817 ], [ %2912, %2822 ]
  %2929 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2930 = extractvalue %dx.types.CBufRet.i32 %2929, 0
  %2931 = icmp eq i32 %2930, 0
  br i1 %2931, label %3402, label %2932

; <label>:2932                                    ; preds = %2922
  %2933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %2934 = extractvalue %dx.types.CBufRet.f32 %2933, 2
  %2935 = extractvalue %dx.types.CBufRet.f32 %2933, 3
  %2936 = fmul fast float %2934, %84
  %2937 = fmul fast float %2935, %85
  %2938 = fptoui float %2936 to i32
  %2939 = fptoui float %2937 to i32
  %2940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2941 = extractvalue %dx.types.CBufRet.f32 %2940, 0
  %2942 = extractvalue %dx.types.CBufRet.f32 %2940, 2
  %2943 = extractvalue %dx.types.CBufRet.f32 %2940, 3
  %2944 = fadd fast float %372, -4.000000e+00
  %2945 = call float @dx.op.binary.f32(i32 35, float %2944, float 0.000000e+00)  ; FMax(a,b)
  %2946 = fadd fast float %2945, %2941
  %2947 = fmul fast float %2946, %2942
  %2948 = call float @dx.op.unary.f32(i32 23, float %2947)  ; Log(value)
  %2949 = fmul fast float %2948, %2943
  %2950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2951 = extractvalue %dx.types.CBufRet.f32 %2950, 2
  %2952 = fmul fast float %2949, %2951
  %2953 = call float @dx.op.unary.f32(i32 7, float %2952)  ; Saturate(value)
  %2954 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2955 = extractvalue %dx.types.CBufRet.i32 %2954, 1
  %2956 = add i32 %2955, -1
  %2957 = uitofp i32 %2955 to float
  %2958 = fmul fast float %2957, %2953
  %2959 = fptoui float %2958 to i32
  %2960 = call i32 @dx.op.binary.i32(i32 40, i32 %2959, i32 %2956)  ; UMin(a,b)
  %2961 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %2962 = extractvalue %dx.types.CBufRet.i32 %2961, 2
  %2963 = extractvalue %dx.types.CBufRet.i32 %2961, 3
  %2964 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2939, i32 %2962, i32 %2938)  ; UMad(a,b,c)
  %2965 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2960, i32 %2963, i32 %2964)  ; UMad(a,b,c)
  %2966 = add nsw i32 %2930, -1
  %2967 = call i32 @dx.op.binary.i32(i32 37, i32 %2966, i32 0)  ; IMax(a,b)
  %2968 = call float @dx.op.binary.f32(i32 35, float %372, float 0.000000e+00)  ; FMax(a,b)
  %2969 = fptoui float %2968 to i32
  %2970 = lshr i32 %2969, 5
  %2971 = call i32 @dx.op.binary.i32(i32 40, i32 %2970, i32 8191)  ; UMin(a,b)
  %2972 = shl i32 %2971, 2
  %2973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %2972, i32 undef)  ; BufferLoad(srv,index,wot)
  %2974 = extractvalue %dx.types.ResRet.i32 %2973, 0
  %2975 = lshr i32 %2974, 16
  %2976 = and i32 %2974, 65535
  %2977 = lshr i32 %2974, 21
  %2978 = lshr i32 %2976, 5
  %2979 = call i32 @dx.op.binary.i32(i32 40, i32 %2978, i32 %2967)  ; UMin(a,b)
  %2980 = icmp ugt i32 %2977, %2979
  br i1 %2980, label %3402, label %2981

; <label>:2981                                    ; preds = %2932
  br label %2982

; <label>:2982                                    ; preds = %3392, %2981
  %2983 = phi i32 [ %3399, %3392 ], [ %2977, %2981 ]
  %2984 = phi float [ %3393, %3392 ], [ %2923, %2981 ]
  %2985 = phi float [ %3394, %3392 ], [ %2924, %2981 ]
  %2986 = phi float [ %3395, %3392 ], [ %2925, %2981 ]
  %2987 = phi float [ %3396, %3392 ], [ %2926, %2981 ]
  %2988 = phi float [ %3397, %3392 ], [ %2927, %2981 ]
  %2989 = phi float [ %3398, %3392 ], [ %2928, %2981 ]
  %2990 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2991 = extractvalue %dx.types.CBufRet.i32 %2990, 0
  %2992 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2965, i32 %2991, i32 %2983)  ; UMad(a,b,c)
  %2993 = shl i32 %2992, 2
  %2994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %2993, i32 undef)  ; BufferLoad(srv,index,wot)
  %2995 = extractvalue %dx.types.ResRet.i32 %2994, 0
  %2996 = shl i32 %2983, 5
  %2997 = sub nsw i32 %2975, %2996
  %2998 = call i32 @dx.op.binary.i32(i32 37, i32 %2997, i32 0)  ; IMax(a,b)
  %2999 = call i32 @dx.op.binary.i32(i32 38, i32 %2998, i32 31)  ; IMin(a,b)
  %3000 = sub nsw i32 1, %2975
  %3001 = add nsw i32 %3000, %2976
  %3002 = call i32 @dx.op.binary.i32(i32 37, i32 %3001, i32 0)  ; IMax(a,b)
  %3003 = call i32 @dx.op.binary.i32(i32 38, i32 %3002, i32 32)  ; IMin(a,b)
  %3004 = and i32 %3003, 31
  %3005 = shl i32 -1, %3004
  %3006 = xor i32 %3005, -1
  %3007 = and i32 %2999, 31
  %3008 = shl i32 %3006, %3007
  %3009 = icmp eq i32 %3003, 32
  %3010 = select i1 %3009, i32 -1, i32 %3008
  %3011 = and i32 %3010, %2995
  %3012 = icmp eq i32 %3011, 0
  br i1 %3012, label %3392, label %3013

; <label>:3013                                    ; preds = %2982
  br label %3014

; <label>:3014                                    ; preds = %3148, %3013
  %3015 = phi i32 [ %3026, %3148 ], [ %3011, %3013 ]
  %3016 = phi float [ %3149, %3148 ], [ %2984, %3013 ]
  %3017 = phi float [ %3150, %3148 ], [ %2985, %3013 ]
  %3018 = phi float [ %3151, %3148 ], [ %2986, %3013 ]
  %3019 = phi float [ %3152, %3148 ], [ %2987, %3013 ]
  %3020 = phi float [ %3153, %3148 ], [ %2988, %3013 ]
  %3021 = phi float [ %3154, %3148 ], [ %2989, %3013 ]
  %3022 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3015)  ; FirstbitLo(value)
  %3023 = add i32 %3022, %2996
  %3024 = and i32 %3022, 31
  %3025 = shl i32 1, %3024
  %3026 = xor i32 %3025, %3015
  %3027 = mul i32 %3023, 112
  %3028 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3027, i32 undef)  ; BufferLoad(srv,index,wot)
  %3029 = extractvalue %dx.types.ResRet.f32 %3028, 0
  %3030 = extractvalue %dx.types.ResRet.f32 %3028, 1
  %3031 = extractvalue %dx.types.ResRet.f32 %3028, 2
  %3032 = or i32 %3027, 12
  %3033 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3032, i32 undef)  ; BufferLoad(srv,index,wot)
  %3034 = extractvalue %dx.types.ResRet.f32 %3033, 0
  %3035 = add i32 %3027, 16
  %3036 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3035, i32 undef)  ; BufferLoad(srv,index,wot)
  %3037 = extractvalue %dx.types.ResRet.f32 %3036, 0
  %3038 = extractvalue %dx.types.ResRet.f32 %3036, 1
  %3039 = extractvalue %dx.types.ResRet.f32 %3036, 2
  %3040 = add i32 %3027, 28
  %3041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3040, i32 undef)  ; BufferLoad(srv,index,wot)
  %3042 = extractvalue %dx.types.ResRet.i32 %3041, 0
  %3043 = add i32 %3027, 44
  %3044 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3043, i32 undef)  ; BufferLoad(srv,index,wot)
  %3045 = extractvalue %dx.types.ResRet.f32 %3044, 0
  %3046 = add i32 %3027, 48
  %3047 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3046, i32 undef)  ; BufferLoad(srv,index,wot)
  %3048 = extractvalue %dx.types.ResRet.f32 %3047, 0
  %3049 = extractvalue %dx.types.ResRet.f32 %3047, 1
  %3050 = extractvalue %dx.types.ResRet.f32 %3047, 2
  %3051 = extractvalue %dx.types.ResRet.f32 %3047, 3
  %3052 = add i32 %3027, 64
  %3053 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3052, i32 undef)  ; BufferLoad(srv,index,wot)
  %3054 = extractvalue %dx.types.ResRet.f32 %3053, 0
  %3055 = extractvalue %dx.types.ResRet.f32 %3053, 1
  %3056 = extractvalue %dx.types.ResRet.f32 %3053, 2
  %3057 = extractvalue %dx.types.ResRet.f32 %3053, 3
  %3058 = add i32 %3027, 80
  %3059 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3058, i32 undef)  ; BufferLoad(srv,index,wot)
  %3060 = extractvalue %dx.types.ResRet.f32 %3059, 1
  %3061 = extractvalue %dx.types.ResRet.f32 %3059, 2
  %3062 = add i32 %3027, 92
  %3063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3062, i32 undef)  ; BufferLoad(srv,index,wot)
  %3064 = extractvalue %dx.types.ResRet.i32 %3063, 0
  %3065 = call float @dx.op.dot3.f32(i32 55, float %3029, float %3030, float %3031, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3066 = select i1 %143, float %3060, float %3029
  %3067 = select i1 %143, float %3065, float %3030
  %3068 = select i1 %143, float %3061, float %3031
  %3069 = and i32 %3064, 65535
  %3070 = uitofp i32 %3069 to float
  %3071 = lshr i32 %3064, 16
  %3072 = uitofp i32 %3071 to float
  %3073 = and i32 %3042, 65535
  %3074 = and i32 %3042, 50331648
  %3075 = icmp eq i32 %3074, 33554432
  %3076 = fsub fast float %3048, %406
  %3077 = fsub fast float %3049, %407
  %3078 = fsub fast float %3050, %408
  %3079 = call float @dx.op.dot3.f32(i32 55, float %3076, float %3077, float %3078, float %3076, float %3077, float %3078)  ; Dot3(ax,ay,az,bx,by,bz)
  %3080 = call float @dx.op.unary.f32(i32 24, float %3079)  ; Sqrt(value)
  %3081 = fdiv fast float 1.000000e+00, %3080
  %3082 = fmul fast float %3081, %3076
  %3083 = fmul fast float %3081, %3077
  %3084 = fmul fast float %3081, %3078
  %3085 = fadd fast float %3080, %3034
  %3086 = fdiv fast float 1.000000e+00, %3085
  %3087 = fmul float %3045, %3086
  %3088 = fmul float %3087, %3087
  %3089 = call float @dx.op.unary.f32(i32 7, float %3088)  ; Saturate(value)
  br i1 %3075, label %3090, label %3111

; <label>:3090                                    ; preds = %3014
  %3091 = fmul fast float %3056, %3037
  %3092 = fmul fast float %3056, %3038
  %3093 = fmul fast float %3056, %3039
  %3094 = fadd fast float %3076, %3091
  %3095 = fadd fast float %3077, %3092
  %3096 = fadd fast float %3078, %3093
  %3097 = call float @dx.op.dot3.f32(i32 55, float %3094, float %3095, float %3096, float %3094, float %3095, float %3096)  ; Dot3(ax,ay,az,bx,by,bz)
  %3098 = call float @dx.op.unary.f32(i32 25, float %3097)  ; Rsqrt(value)
  %3099 = fmul fast float %3098, %3094
  %3100 = fmul fast float %3098, %3095
  %3101 = fmul fast float %3098, %3096
  %3102 = fsub fast float %406, %3048
  %3103 = fsub fast float %407, %3049
  %3104 = fsub fast float %408, %3050
  %3105 = fsub fast float -0.000000e+00, %3102
  %3106 = fsub fast float -0.000000e+00, %3103
  %3107 = fsub fast float -0.000000e+00, %3104
  %3108 = call float @dx.op.dot3.f32(i32 55, float %3105, float %3106, float %3107, float %3037, float %3038, float %3039)  ; Dot3(ax,ay,az,bx,by,bz)
  %3109 = fcmp fast ogt float %3108, 0.000000e+00
  %3110 = uitofp i1 %3109 to float
  br label %3111

; <label>:3111                                    ; preds = %3090, %3014
  %3112 = phi float [ %3110, %3090 ], [ 1.000000e+00, %3014 ]
  %3113 = phi float [ %3099, %3090 ], [ %3082, %3014 ]
  %3114 = phi float [ %3100, %3090 ], [ %3083, %3014 ]
  %3115 = phi float [ %3101, %3090 ], [ %3084, %3014 ]
  %3116 = call float @dx.op.dot3.f32(i32 55, float %3037, float %3038, float %3039, float %3113, float %3114, float %3115)  ; Dot3(ax,ay,az,bx,by,bz)
  %3117 = fmul fast float %3116, %3116
  %3118 = call float @dx.op.unary.f32(i32 7, float %3117)  ; Saturate(value)
  %3119 = fsub fast float 1.000000e+00, %3118
  %3120 = fmul fast float %3119, 5.000000e-01
  %3121 = fcmp fast ogt float %3116, 0.000000e+00
  %3122 = fsub fast float 1.000000e+00, %3120
  %3123 = select i1 %3121, float %3120, float %3122
  %3124 = fmul fast float %3123, %3072
  %3125 = fadd fast float %3124, %3070
  %3126 = fmul fast float %3125, 0x3EF0001000000000
  %3127 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %35, float %3126, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3128 = extractvalue %dx.types.ResRet.f32 %3127, 0
  %3129 = fmul fast float %3116, %3054
  %3130 = fadd fast float %3129, %3055
  %3131 = call float @dx.op.unary.f32(i32 7, float %3130)  ; Saturate(value)
  %3132 = select i1 %3075, float 1.000000e+00, float %3131
  %3133 = select i1 %3075, float %3131, float 1.000000e+00
  %3134 = fmul fast float %3080, %3051
  %3135 = fsub fast float 1.000000e+00, %3134
  %3136 = fmul fast float %3135, %3057
  %3137 = call float @dx.op.unary.f32(i32 7, float %3136)  ; Saturate(value)
  %3138 = fmul fast float %3137, %3133
  %3139 = fmul fast float %3138, 2.000000e+00
  %3140 = fsub fast float 3.000000e+00, %3139
  %3141 = fmul fast float %3128, %3112
  %3142 = fmul fast float %3138, %3138
  %3143 = fmul fast float %3142, %3141
  %3144 = fmul fast float %3143, %3140
  %3145 = call float @dx.op.binary.f32(i32 36, float %3144, float %3144)  ; FMin(a,b)
  %3146 = call float @dx.op.binary.f32(i32 36, float %3144, float %3145)  ; FMin(a,b)
  %3147 = fcmp fast ogt float %3146, 0.000000e+00
  br i1 %3147, label %3156, label %3148, !dx.controlflow.hints !136

; <label>:3148                                    ; preds = %3261, %3256, %3111
  %3149 = phi float [ %3016, %3256 ], [ %3016, %3111 ], [ %3388, %3261 ]
  %3150 = phi float [ %3017, %3256 ], [ %3017, %3111 ], [ %3389, %3261 ]
  %3151 = phi float [ %3018, %3256 ], [ %3018, %3111 ], [ %3390, %3261 ]
  %3152 = phi float [ %3019, %3256 ], [ %3019, %3111 ], [ %3379, %3261 ]
  %3153 = phi float [ %3020, %3256 ], [ %3020, %3111 ], [ %3380, %3261 ]
  %3154 = phi float [ %3021, %3256 ], [ %3021, %3111 ], [ %3381, %3261 ]
  %3155 = icmp eq i32 %3015, %3025
  br i1 %3155, label %3391, label %3014

; <label>:3156                                    ; preds = %3111
  %3157 = icmp eq i32 %3073, 255
  br i1 %3157, label %3256, label %3158, !dx.controlflow.hints !137

; <label>:3158                                    ; preds = %3156
  %3159 = mul nuw nsw i32 %3073, 176
  %3160 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3159, i32 undef)  ; BufferLoad(srv,index,wot)
  %3161 = extractvalue %dx.types.ResRet.f32 %3160, 0
  %3162 = extractvalue %dx.types.ResRet.f32 %3160, 1
  %3163 = extractvalue %dx.types.ResRet.f32 %3160, 2
  %3164 = extractvalue %dx.types.ResRet.f32 %3160, 3
  %3165 = add nuw nsw i32 %3159, 16
  %3166 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3165, i32 undef)  ; BufferLoad(srv,index,wot)
  %3167 = extractvalue %dx.types.ResRet.f32 %3166, 0
  %3168 = extractvalue %dx.types.ResRet.f32 %3166, 1
  %3169 = add nuw nsw i32 %3159, 32
  %3170 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3169, i32 undef)  ; BufferLoad(srv,index,wot)
  %3171 = extractvalue %dx.types.ResRet.f32 %3170, 0
  %3172 = extractvalue %dx.types.ResRet.f32 %3170, 1
  %3173 = extractvalue %dx.types.ResRet.f32 %3170, 2
  %3174 = add nuw nsw i32 %3159, 48
  %3175 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3174, i32 undef)  ; BufferLoad(srv,index,wot)
  %3176 = extractvalue %dx.types.ResRet.f32 %3175, 0
  %3177 = extractvalue %dx.types.ResRet.f32 %3175, 1
  %3178 = extractvalue %dx.types.ResRet.f32 %3175, 2
  %3179 = extractvalue %dx.types.ResRet.f32 %3175, 3
  %3180 = add nuw nsw i32 %3159, 64
  %3181 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3180, i32 undef)  ; BufferLoad(srv,index,wot)
  %3182 = extractvalue %dx.types.ResRet.f32 %3181, 0
  %3183 = extractvalue %dx.types.ResRet.f32 %3181, 1
  %3184 = extractvalue %dx.types.ResRet.f32 %3181, 2
  %3185 = extractvalue %dx.types.ResRet.f32 %3181, 3
  %3186 = add nuw nsw i32 %3159, 80
  %3187 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3186, i32 undef)  ; BufferLoad(srv,index,wot)
  %3188 = extractvalue %dx.types.ResRet.f32 %3187, 0
  %3189 = extractvalue %dx.types.ResRet.f32 %3187, 1
  %3190 = extractvalue %dx.types.ResRet.f32 %3187, 2
  %3191 = extractvalue %dx.types.ResRet.f32 %3187, 3
  %3192 = add nuw nsw i32 %3159, 96
  %3193 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3192, i32 undef)  ; BufferLoad(srv,index,wot)
  %3194 = extractvalue %dx.types.ResRet.f32 %3193, 0
  %3195 = extractvalue %dx.types.ResRet.f32 %3193, 1
  %3196 = extractvalue %dx.types.ResRet.f32 %3193, 2
  %3197 = extractvalue %dx.types.ResRet.f32 %3193, 3
  %3198 = bitcast float %3168 to i32
  %3199 = fmul fast float %3173, %338
  %3200 = fmul fast float %3173, %339
  %3201 = fmul fast float %3173, %340
  %3202 = fadd fast float %3199, %406
  %3203 = fadd fast float %3200, %407
  %3204 = fadd fast float %3201, %408
  %3205 = fmul fast float %3202, %3176
  %3206 = call float @dx.op.tertiary.f32(i32 46, float %3203, float %3182, float %3205)  ; FMad(a,b,c)
  %3207 = call float @dx.op.tertiary.f32(i32 46, float %3204, float %3188, float %3206)  ; FMad(a,b,c)
  %3208 = fadd fast float %3207, %3194
  %3209 = fmul fast float %3202, %3177
  %3210 = call float @dx.op.tertiary.f32(i32 46, float %3203, float %3183, float %3209)  ; FMad(a,b,c)
  %3211 = call float @dx.op.tertiary.f32(i32 46, float %3204, float %3189, float %3210)  ; FMad(a,b,c)
  %3212 = fadd fast float %3211, %3195
  %3213 = fmul fast float %3202, %3178
  %3214 = call float @dx.op.tertiary.f32(i32 46, float %3203, float %3184, float %3213)  ; FMad(a,b,c)
  %3215 = call float @dx.op.tertiary.f32(i32 46, float %3204, float %3190, float %3214)  ; FMad(a,b,c)
  %3216 = fadd fast float %3215, %3196
  %3217 = fmul fast float %3202, %3179
  %3218 = call float @dx.op.tertiary.f32(i32 46, float %3203, float %3185, float %3217)  ; FMad(a,b,c)
  %3219 = call float @dx.op.tertiary.f32(i32 46, float %3204, float %3191, float %3218)  ; FMad(a,b,c)
  %3220 = fadd fast float %3219, %3197
  %3221 = fdiv fast float %3208, %3220
  %3222 = fdiv fast float %3212, %3220
  %3223 = fdiv fast float %3216, %3220
  %3224 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %3223)  ; FMax(a,b)
  %3225 = fmul fast float %327, 0x401921FB60000000
  %3226 = call float @dx.op.unary.f32(i32 13, float %3225)  ; Sin(value)
  %3227 = call float @dx.op.unary.f32(i32 12, float %3225)  ; Cos(value)
  %3228 = fsub fast float -0.000000e+00, %3226
  %3229 = fmul fast float %3163, 5.000000e-01
  %3230 = call float @dx.op.dot2.f32(i32 54, float %327, float %327, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %3231 = call float @dx.op.unary.f32(i32 22, float %3230)  ; Frc(value)
  %3232 = fmul fast float %3231, 0x404A7DD040000000
  %3233 = call float @dx.op.unary.f32(i32 22, float %3232)  ; Frc(value)
  %3234 = fmul fast float %3233, %3172
  %3235 = fadd fast float %3234, %3229
  %3236 = call float @dx.op.tertiary.f32(i32 46, float %3235, float %3228, float 0.000000e+00)  ; FMad(a,b,c)
  %3237 = call float @dx.op.tertiary.f32(i32 46, float %3235, float %3227, float 0.000000e+00)  ; FMad(a,b,c)
  %3238 = fadd fast float %3236, %3221
  %3239 = fadd fast float %3237, %3222
  %3240 = fmul fast float %3238, %3167
  %3241 = fmul fast float %3239, %3167
  %3242 = call float @dx.op.binary.f32(i32 35, float %3240, float %3163)  ; FMax(a,b)
  %3243 = call float @dx.op.binary.f32(i32 35, float %3241, float %3163)  ; FMax(a,b)
  %3244 = call float @dx.op.binary.f32(i32 36, float %3242, float %3164)  ; FMin(a,b)
  %3245 = call float @dx.op.binary.f32(i32 36, float %3243, float %3164)  ; FMin(a,b)
  %3246 = fadd fast float %3244, %3161
  %3247 = fadd fast float %3245, %3162
  %3248 = uitofp i32 %3198 to float
  %3249 = fadd fast float %3224, %3171
  %3250 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %36, float %3246, float %3247, float %3248, float undef, i32 0, i32 0, i32 undef, float %3249)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3251 = extractvalue %dx.types.ResRet.f32 %3250, 0
  %3252 = fadd fast float %3251, -1.000000e+00
  %3253 = fmul fast float %3252, %3132
  %3254 = fadd fast float %3253, 1.000000e+00
  %3255 = fmul fast float %3254, %3144
  br label %3256

; <label>:3256                                    ; preds = %3158, %3156
  %3257 = phi float [ %3255, %3158 ], [ %3144, %3156 ]
  %3258 = call float @dx.op.binary.f32(i32 36, float %3257, float %3257)  ; FMin(a,b)
  %3259 = call float @dx.op.binary.f32(i32 36, float %3257, float %3258)  ; FMin(a,b)
  %3260 = fcmp fast ogt float %3259, 0.000000e+00
  br i1 %3260, label %3261, label %3148, !dx.controlflow.hints !138

; <label>:3261                                    ; preds = %3256
  %3262 = fmul fast float %3257, %3066
  %3263 = fmul fast float %3257, %3067
  %3264 = fmul fast float %3257, %3068
  %3265 = fsub fast float %3082, %541
  %3266 = fsub fast float %3083, %542
  %3267 = fsub fast float %3084, %543
  %3268 = call float @dx.op.dot3.f32(i32 55, float %3265, float %3266, float %3267, float %3265, float %3266, float %3267)  ; Dot3(ax,ay,az,bx,by,bz)
  %3269 = call float @dx.op.unary.f32(i32 25, float %3268)  ; Rsqrt(value)
  %3270 = fmul fast float %3269, %3265
  %3271 = fmul fast float %3269, %3266
  %3272 = fmul fast float %3269, %3267
  %3273 = call float @dx.op.dot3.f32(i32 55, float %3082, float %3083, float %3084, float %338, float %339, float %340)  ; Dot3(ax,ay,az,bx,by,bz)
  %3274 = call float @dx.op.dot3.f32(i32 55, float %544, float %545, float %546, float %3270, float %3271, float %3272)  ; Dot3(ax,ay,az,bx,by,bz)
  %3275 = call float @dx.op.unary.f32(i32 7, float %3273)  ; Saturate(value)
  %3276 = fmul fast float %3275, %3089
  %3277 = fmul fast float %3275, %3275
  %3278 = fmul fast float %3277, 0x47DE623840000000
  %3279 = call float @dx.op.unary.f32(i32 7, float %3278)  ; Saturate(value)
  %3280 = fmul fast float %3276, %3279
  %3281 = bitcast float %3079 to i32
  %3282 = ashr i32 %3281, 1
  %3283 = sub nsw i32 1597463007, %3282
  %3284 = bitcast i32 %3283 to float
  %3285 = fmul fast float %3284, %3076
  %3286 = fmul fast float %3284, %3077
  %3287 = fmul fast float %3284, %3078
  %3288 = fsub fast float %3285, %541
  %3289 = fsub fast float %3286, %542
  %3290 = fsub fast float %3287, %543
  %3291 = call float @dx.op.dot3.f32(i32 55, float %3288, float %3289, float %3290, float %3288, float %3289, float %3290)  ; Dot3(ax,ay,az,bx,by,bz)
  %3292 = call float @dx.op.unary.f32(i32 25, float %3291)  ; Rsqrt(value)
  %3293 = fmul fast float %3288, %3292
  %3294 = fmul fast float %3289, %3292
  %3295 = fmul fast float %3290, %3292
  %3296 = call float @dx.op.dot3.f32(i32 55, float %338, float %339, float %340, float %3293, float %3294, float %3295)  ; Dot3(ax,ay,az,bx,by,bz)
  %3297 = fmul fast float %3296, %3296
  %3298 = call float @dx.op.unary.f32(i32 6, float %3273)  ; FAbs(value)
  %3299 = fsub fast float 1.000000e+00, %350
  %3300 = call float @dx.op.binary.f32(i32 35, float %3299, float 0x3F847AE140000000)  ; FMax(a,b)
  %3301 = fmul fast float %3300, %3300
  %3302 = fmul fast float %3301, %3301
  %3303 = fsub fast float 1.000000e+00, %3302
  %3304 = fmul fast float %549, %549
  %3305 = fmul fast float %3304, %3303
  %3306 = fadd fast float %3305, %3302
  %3307 = bitcast float %3306 to i32
  %3308 = ashr i32 %3307, 1
  %3309 = add nsw i32 %3308, 532487669
  %3310 = bitcast i32 %3309 to float
  %3311 = fadd fast float %3310, %549
  %3312 = fmul fast float %3302, %3297
  %3313 = fsub fast float 1.000000e+00, %3297
  %3314 = fadd fast float %3313, %3312
  %3315 = fmul fast float %3298, %3298
  %3316 = fmul fast float %3315, %3303
  %3317 = fadd fast float %3316, %3302
  %3318 = bitcast float %3317 to i32
  %3319 = ashr i32 %3318, 1
  %3320 = add nsw i32 %3319, 532487669
  %3321 = bitcast i32 %3320 to float
  %3322 = fadd fast float %3321, %3298
  %3323 = fmul fast float %3314, %3314
  %3324 = fmul fast float %3323, %3311
  %3325 = fmul fast float %3324, %3322
  %3326 = fdiv fast float 1.000000e+00, %3325
  %3327 = bitcast float %3302 to i32
  %3328 = sitofp i32 %3327 to float
  %3329 = fmul fast float %3328, 0x3FE7F73180000000
  %3330 = fadd fast float %3329, 0x41AFE27C40000000
  %3331 = fptosi float %3330 to i32
  %3332 = bitcast i32 %3331 to float
  %3333 = fmul fast float %3045, 0x3FD80E9D60000000
  %3334 = fmul fast float %3333, %3284
  %3335 = fadd fast float %3332, %3334
  %3336 = bitcast float %3335 to i32
  %3337 = sub nsw i32 2129859010, %3336
  %3338 = bitcast i32 %3337 to float
  %3339 = fmul fast float %3302, %3326
  %3340 = fmul fast float %3339, %3332
  %3341 = fmul fast float %3340, %3338
  %3342 = call float @dx.op.unary.f32(i32 6, float %3274)  ; FAbs(value)
  %3343 = fsub fast float 1.000000e+00, %3342
  %3344 = bitcast float %3343 to i32
  %3345 = sitofp i32 %3344 to float
  %3346 = fmul fast float %3345, 5.000000e+00
  %3347 = fadd fast float %3346, 0xC1EFBF8940000000
  %3348 = fptosi float %3347 to i32
  %3349 = bitcast i32 %3348 to float
  %3350 = fsub fast float 1.000000e+00, %529
  %3351 = fsub fast float 1.000000e+00, %530
  %3352 = fsub fast float 1.000000e+00, %547
  %3353 = fmul fast float %3349, %3350
  %3354 = fmul fast float %3349, %3351
  %3355 = fmul fast float %3349, %3352
  %3356 = fadd fast float %3353, %529
  %3357 = fadd fast float %3354, %530
  %3358 = fadd fast float %3355, %547
  %3359 = fmul fast float %3273, 9.843750e-01
  %3360 = fadd fast float %3359, 7.812500e-03
  %3361 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %35, float %3360, float %1988, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3362 = extractvalue %dx.types.ResRet.f32 %3361, 2
  %3363 = extractvalue %dx.types.ResRet.f32 %3361, 3
  %3364 = fmul fast float %3362, %529
  %3365 = fmul fast float %3362, %530
  %3366 = fmul fast float %3362, %547
  %3367 = fadd fast float %3364, %3363
  %3368 = fadd fast float %3365, %3363
  %3369 = fadd fast float %3366, %3363
  %3370 = call float @dx.op.binary.f32(i32 35, float %3368, float %3369)  ; FMax(a,b)
  %3371 = call float @dx.op.binary.f32(i32 35, float %3367, float %3370)  ; FMax(a,b)
  %3372 = fsub fast float 1.000000e+00, %3371
  %3373 = fmul fast float %3280, %3262
  %3374 = fmul fast float %3373, %3372
  %3375 = fmul fast float %3280, %3263
  %3376 = fmul fast float %3375, %3372
  %3377 = fmul fast float %3280, %3264
  %3378 = fmul fast float %3377, %3372
  %3379 = fadd fast float %3374, %3019
  %3380 = fadd fast float %3376, %3020
  %3381 = fadd fast float %3378, %3021
  %3382 = fmul fast float %3373, %3356
  %3383 = fmul fast float %3382, %3341
  %3384 = fmul fast float %3375, %3357
  %3385 = fmul fast float %3384, %3341
  %3386 = fmul fast float %3377, %3358
  %3387 = fmul fast float %3386, %3341
  %3388 = fadd fast float %3383, %3016
  %3389 = fadd fast float %3385, %3017
  %3390 = fadd fast float %3387, %3018
  br label %3148

; <label>:3391                                    ; preds = %3148
  br label %3392

; <label>:3392                                    ; preds = %3391, %2982
  %3393 = phi float [ %2984, %2982 ], [ %3149, %3391 ]
  %3394 = phi float [ %2985, %2982 ], [ %3150, %3391 ]
  %3395 = phi float [ %2986, %2982 ], [ %3151, %3391 ]
  %3396 = phi float [ %2987, %2982 ], [ %3152, %3391 ]
  %3397 = phi float [ %2988, %2982 ], [ %3153, %3391 ]
  %3398 = phi float [ %2989, %2982 ], [ %3154, %3391 ]
  %3399 = add i32 %2983, 1
  %3400 = icmp ugt i32 %3399, %2979
  br i1 %3400, label %3401, label %2982

; <label>:3401                                    ; preds = %3392
  br label %3402

; <label>:3402                                    ; preds = %3401, %2932, %2922
  %3403 = phi float [ %2923, %2922 ], [ %2923, %2932 ], [ %3393, %3401 ]
  %3404 = phi float [ %2924, %2922 ], [ %2924, %2932 ], [ %3394, %3401 ]
  %3405 = phi float [ %2925, %2922 ], [ %2925, %2932 ], [ %3395, %3401 ]
  %3406 = phi float [ %2926, %2922 ], [ %2926, %2932 ], [ %3396, %3401 ]
  %3407 = phi float [ %2927, %2922 ], [ %2927, %2932 ], [ %3397, %3401 ]
  %3408 = phi float [ %2928, %2922 ], [ %2928, %2932 ], [ %3398, %3401 ]
  %3409 = call float @dx.op.unary.f32(i32 24, float %520)  ; Sqrt(value)
  %3410 = call float @dx.op.unary.f32(i32 24, float %521)  ; Sqrt(value)
  %3411 = call float @dx.op.unary.f32(i32 24, float %522)  ; Sqrt(value)
  %3412 = fmul fast float %3409, %3406
  %3413 = fmul fast float %3410, %3407
  %3414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3415 = extractvalue %dx.types.CBufRet.f32 %3414, 0
  br i1 %143, label %3416, label %3436

; <label>:3416                                    ; preds = %3402
  %3417 = fadd fast float %3408, %537
  %3418 = fmul fast float %3417, %535
  %3419 = fsub fast float 1.000000e+00, %535
  %3420 = call float @dx.op.unary.f32(i32 7, float %3419)  ; Saturate(value)
  %3421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3422 = extractvalue %dx.types.CBufRet.f32 %3421, 3
  %3423 = fmul fast float %3422, %3420
  %3424 = fadd fast float %3423, %3418
  %3425 = fsub fast float 1.000000e+00, %549
  %3426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3427 = extractvalue %dx.types.CBufRet.f32 %3426, 0
  %3428 = fmul fast float %3427, %3425
  %3429 = fsub fast float %3424, %3428
  %3430 = fadd fast float %3413, %3412
  %3431 = extractvalue %dx.types.CBufRet.f32 %3421, 1
  %3432 = fsub fast float %3429, %3431
  %3433 = extractvalue %dx.types.CBufRet.f32 %3421, 2
  %3434 = fmul fast float %3432, %3433
  %3435 = call float @dx.op.unary.f32(i32 7, float %3434)  ; Saturate(value)
  br label %3440

; <label>:3436                                    ; preds = %3402
  %3437 = fmul fast float %3411, %3408
  %3438 = fmul fast float %3415, %3413
  %3439 = fmul fast float %3437, %3415
  br label %3440

; <label>:3440                                    ; preds = %3436, %3416
  %3441 = phi float [ %3430, %3416 ], [ %3412, %3436 ]
  %3442 = phi float [ %3435, %3416 ], [ %3438, %3436 ]
  %3443 = phi float [ 1.000000e+00, %3416 ], [ %3439, %3436 ]
  %3444 = fmul float %3415, %3441
  %3445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3446 = extractvalue %dx.types.CBufRet.f32 %3445, 0
  %3447 = fmul fast float %3446, %3404
  %3448 = fmul fast float %3446, %3405
  %3449 = fadd fast float %3404, %3403
  %3450 = select i1 %143, float %3449, float %3403
  %3451 = fmul float %3450, %3446
  %3452 = select i1 %143, float 0.000000e+00, float %3447
  %3453 = select i1 %143, float 0.000000e+00, float %3448
  %3454 = fmul fast float %3444, %3409
  %3455 = fmul fast float %3442, %3410
  %3456 = fmul fast float %3443, %3411
  %3457 = fadd fast float %3451, %3454
  %3458 = fadd fast float %3452, %3455
  %3459 = fadd fast float %3453, %3456
  %3460 = select i1 %143, float %3442, float %3458
  %3461 = select i1 %143, float %3443, float %3459
  %3462 = call float @dx.op.binary.f32(i32 36, float %3457, float 3.225500e+04)  ; FMin(a,b)
  %3463 = call float @dx.op.binary.f32(i32 36, float %3460, float 3.225500e+04)  ; FMin(a,b)
  %3464 = call float @dx.op.binary.f32(i32 36, float %3461, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3462)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3463)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3464)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

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

