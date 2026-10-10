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
; LGV_IS_STATIC            0   x          12     NONE   float   x   
; WGV_TEXCOORD             0    yzw       12     NONE   float       
; WGV_NORMAL               0   xyzw       13     NONE   float       
; SECONDARY_TEXCOORDS      0   xy         14     NONE   float       
; SCEONDARY_NORMAL         0   xyzw       15     NONE   float       
; OBJECT_POSITION          0   xyzw       16     NONE   float       
; DECAL_VOLUME_GRID_INDEX     0   x          17     NONE    uint       
; SV_IsFrontFace           0    y         17    FFACE    uint    y  
; PACKED_TRI_DATA          0   xyzw       18     NONE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 5e9ba8580368ee84f8e4be99ab925b49
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
; LGV_IS_STATIC            0                 linear       
; WGV_TEXCOORD             0                 linear       
; WGV_NORMAL               0                 linear       
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
; OBJECT_POSITION          0                 linear       
; DECAL_VOLUME_GRID_INDEX     0        nointerpolation       
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
;   [272 x i8] (type annotation not present)
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
;                                   texture    byte         r/o      T2     t62,space1     1
;                                   texture    byte         r/o      T3     t63,space1     1
;                                   texture     f32          3d      T4     t21,space2     1
;                                   texture     f32          3d      T5     t22,space2     1
;                                   texture    byte         r/o      T6     t59,space1     1
;                                   texture    byte         r/o      T7     t60,space1     1
;                                   texture     f32          3d      T8     t19,space2     1
;                                   texture     f32          3d      T9     t20,space2     1
;                                   texture     f32          2d     T10     t33,space2     1
;                                   texture     f32     2darray     T11     t16,space2     1
;                                   texture     f32          3d     T12     t15,space2     1
;                                   texture     f32          2d     T13     t14,space2     1
;                                   texture     f32          2d     T14     t13,space2     1
;                                   texture     u32          2d     T15     t17,space2     1
;                                   texture     f32          3d     T16     t18,space2     1
;                                   texture     f32          2d     T17     t69,space2     1
;                                   texture     f32          2d     T18     t37,space2     1
;                                   texture    byte         r/o     T19     t10,space1     1
;                                   texture    byte         r/o     T20      t1,space1     1
;                                   texture     f32          1d     T21     t32,space2     1
;                                   texture     f32     2darray     T22      t8,space2     1
;                                   texture     f32          2d     T23      t1,space2     1
;                                   texture     f32          2d     T24      t2,space2     1
;                                   texture     f32          2d     T25      t3,space2     1
;                                   texture     f32          2d     T26      t4,space2     1
;                                   textureunorm_f32     2darray     T27     t80,space2     1
;                                   texture    byte         r/o     T28     t67,space1     1
;                                   texture     f32          2d     T29      t7,space2     1
;                                   texture     f32          2d     T30      t6,space2     1
;                                   texture     f32          2d     T31      t5,space2     1
;                                   texture     f32          2d     T32     t38,space2     1
;                                   texture    byte         r/o     T33     t12,space1     1
;                                   texture    byte         r/o     T34     t13,space1     1
;
;
; ViewId state:
;
; Number of inputs: 76, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 11, 12, 13, 14, 15, 20, 21, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 47, 48, 69, 72 }
;   output 1 depends on inputs: { 0, 1, 3, 11, 12, 13, 14, 15, 20, 21, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 47, 48, 69, 72 }
;   output 2 depends on inputs: { 0, 1, 3, 11, 12, 13, 14, 15, 20, 21, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 47, 48, 69, 72 }
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
%hostlayout.stable = type { [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerComparisonState = type { i32 }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 63, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 62, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = alloca [4 x i32], align 4
  %43 = call i32 @dx.op.loadInput.i32(i32 4, i32 21, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = icmp ne i32 %43, 0
  %45 = call i32 @dx.op.loadInput.i32(i32 4, i32 20, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = alloca [3 x float], align 4
  %74 = alloca [3 x float], align 4
  %75 = alloca [3 x float], align 4
  %76 = alloca [3 x float], align 4
  %77 = alloca [12 x float], align 4
  %78 = alloca [12 x float], align 4
  %79 = alloca [3 x float], align 4
  %80 = alloca [3 x float], align 4
  %81 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %82 = extractvalue %dx.types.CBufRet.f32 %81, 0
  %83 = fmul fast float %82, %70
  %84 = fmul fast float %82, %71
  %85 = select i1 %44, float 1.000000e+00, float -1.000000e+00
  %86 = call float @dx.op.dot3.f32(i32 55, float %66, float %67, float %68, float %66, float %67, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %87 = bitcast float %86 to i32
  %88 = ashr i32 %87, 1
  %89 = sub nsw i32 1597250115, %88
  %90 = bitcast i32 %89 to float
  %91 = fmul fast float %66, %85
  %92 = fmul fast float %91, %90
  %93 = fmul fast float %67, %85
  %94 = fmul fast float %93, %90
  %95 = fmul fast float %68, %85
  %96 = fmul fast float %95, %90
  %97 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %98 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.i32 %98, 3
  %100 = and i32 %99, 3
  %101 = icmp ne i32 %100, 0
  %102 = and i32 %99, 4
  %103 = icmp ne i32 %102, 0
  %104 = and i1 %101, %103
  br i1 %104, label %105, label %116

; <label>:105                                     ; preds = %0
  %106 = extractvalue %dx.types.CBufRet.f32 %97, 3
  %107 = fmul fast float %106, %84
  %108 = extractvalue %dx.types.CBufRet.f32 %97, 2
  %109 = fmul fast float %108, %83
  %110 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %38, float %109, float %107, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %111 = extractvalue %dx.types.ResRet.f32 %110, 0
  %112 = fsub fast float 1.000000e+00, %111
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 0
  %115 = fcmp fast olt float %112, %114
  br label %119

; <label>:116                                     ; preds = %0
  %117 = icmp eq i32 %102, 0
  %118 = and i1 %101, %117
  br label %119

; <label>:119                                     ; preds = %116, %105
  %120 = phi i1 [ %115, %105 ], [ %118, %116 ]
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 2
  %123 = fmul fast float %122, 0x3FE3C6EF40000000
  %124 = frem fast float %83, 2.560000e+02
  %125 = frem fast float %84, 2.560000e+02
  %126 = fptoui float %124 to i32
  %127 = fptoui float %125 to i32
  %128 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %126, i32 %127, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %129 = extractvalue %dx.types.ResRet.f32 %128, 0
  %130 = fadd fast float %129, %123
  %131 = add i32 %45, 60
  %132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %131, i32 undef)  ; BufferLoad(srv,index,wot)
  %133 = extractvalue %dx.types.ResRet.i32 %132, 0
  %134 = add i32 %133, 0
  %135 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %134, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %136 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %135, i32 0)  ; GetDimensions(handle,mipLevel)
  %137 = extractvalue %dx.types.Dimensions %136, 0
  %138 = sitofp i32 %137 to float
  %139 = extractvalue %dx.types.Dimensions %136, 1
  %140 = sitofp i32 %139 to float
  %141 = add i32 %45, 24
  %142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %141, i32 undef)  ; BufferLoad(srv,index,wot)
  %143 = extractvalue %dx.types.ResRet.i32 %142, 2
  %144 = bitcast i32 %143 to float
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 0
  %147 = extractvalue %dx.types.CBufRet.f32 %145, 1
  %148 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %149 = getelementptr [3 x float], [3 x float]* %79, i32 0, i32 0
  store float %63, float* %149, align 4, !noalias !93
  %150 = getelementptr [3 x float], [3 x float]* %79, i32 0, i32 1
  store float %64, float* %150, align 4, !noalias !93
  %151 = fsub fast float 1.000000e+00, %63
  %152 = fsub fast float %151, %64
  %153 = getelementptr [3 x float], [3 x float]* %79, i32 0, i32 2
  store float %152, float* %153, align 4, !noalias !93
  %154 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 0
  store float %48, float* %154, align 4, !tbaa !104, !noalias !93
  %155 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 1
  store float %49, float* %155, align 4, !tbaa !104, !noalias !93
  %156 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 2
  store float %50, float* %156, align 4, !tbaa !104, !noalias !93
  %157 = getelementptr [3 x float], [3 x float]* %75, i32 0, i32 0
  %158 = getelementptr [3 x float], [3 x float]* %76, i32 0, i32 0
  store float %61, float* %157, align 4
  store float %62, float* %158, align 4
  %159 = getelementptr [3 x float], [3 x float]* %75, i32 0, i32 1
  %160 = getelementptr [3 x float], [3 x float]* %76, i32 0, i32 1
  store float %57, float* %159, align 4
  store float %58, float* %160, align 4
  %161 = getelementptr [3 x float], [3 x float]* %75, i32 0, i32 2
  %162 = getelementptr [3 x float], [3 x float]* %76, i32 0, i32 2
  store float %53, float* %161, align 4
  store float %54, float* %162, align 4
  %163 = getelementptr [3 x float], [3 x float]* %73, i32 0, i32 0
  %164 = getelementptr [3 x float], [3 x float]* %74, i32 0, i32 0
  store float %59, float* %163, align 4
  store float %60, float* %164, align 4
  %165 = getelementptr [3 x float], [3 x float]* %73, i32 0, i32 1
  %166 = getelementptr [3 x float], [3 x float]* %74, i32 0, i32 1
  store float %55, float* %165, align 4
  store float %56, float* %166, align 4
  %167 = getelementptr [3 x float], [3 x float]* %73, i32 0, i32 2
  %168 = getelementptr [3 x float], [3 x float]* %74, i32 0, i32 2
  store float %51, float* %167, align 4
  store float %52, float* %168, align 4
  br label %169

; <label>:169                                     ; preds = %265, %119
  %170 = phi float [ %267, %265 ], [ %63, %119 ]
  %171 = phi float [ %256, %265 ], [ undef, %119 ]
  %172 = phi float [ %257, %265 ], [ undef, %119 ]
  %173 = phi float [ %258, %265 ], [ undef, %119 ]
  %174 = phi float [ %259, %265 ], [ 1.000000e+00, %119 ]
  %175 = phi float [ %260, %265 ], [ 0.000000e+00, %119 ]
  %176 = phi i32 [ %263, %265 ], [ 0, %119 ]
  %177 = phi float [ %261, %265 ], [ 0.000000e+00, %119 ]
  %178 = phi float [ %262, %265 ], [ 0.000000e+00, %119 ]
  %179 = fcmp fast ogt float %170, 0x3EB0C6F7A0000000
  br i1 %179, label %180, label %255

; <label>:180                                     ; preds = %169
  %181 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 %176
  %182 = load float, float* %181, align 4, !tbaa !104, !noalias !93
  %183 = fdiv fast float 1.000000e+00, %182
  %184 = getelementptr [3 x float], [3 x float]* %73, i32 0, i32 %176
  %185 = getelementptr [3 x float], [3 x float]* %74, i32 0, i32 %176
  %186 = load float, float* %184, align 4
  %187 = load float, float* %185, align 4
  %188 = fmul fast float %186, %183
  %189 = fmul fast float %187, %183
  %190 = getelementptr [3 x float], [3 x float]* %75, i32 0, i32 %176
  %191 = getelementptr [3 x float], [3 x float]* %76, i32 0, i32 %176
  %192 = load float, float* %190, align 4
  %193 = load float, float* %191, align 4
  %194 = fmul fast float %192, %183
  %195 = fmul fast float %193, %183
  %196 = fmul fast float %188, %138
  %197 = call float @dx.op.unary.f32(i32 83, float %196)  ; DerivCoarseX(value)
  %198 = call float @dx.op.unary.f32(i32 84, float %196)  ; DerivCoarseY(value)
  %199 = fmul fast float %189, %140
  %200 = call float @dx.op.unary.f32(i32 83, float %199)  ; DerivCoarseX(value)
  %201 = call float @dx.op.unary.f32(i32 84, float %199)  ; DerivCoarseY(value)
  %202 = fmul fast float %200, %200
  %203 = fmul fast float %201, %201
  %204 = fadd fast float %203, %202
  %205 = fmul fast float %200, %197
  %206 = fmul fast float %201, %198
  %207 = fadd fast float %206, %205
  %208 = fmul fast float %197, %197
  %209 = fmul fast float %198, %198
  %210 = fadd fast float %209, %208
  %211 = fmul fast float %204, %210
  %212 = fmul fast float %207, %207
  %213 = fsub fast float %211, %212
  %214 = bitcast float %213 to i32
  %215 = fadd fast float %204, %210
  %216 = bitcast float %215 to i32
  %217 = sub i32 8388608, %216
  %218 = add i32 %217, %214
  %219 = ashr i32 %218, 24
  %220 = sitofp i32 %219 to float
  %221 = add i32 %45, 72
  %222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %221, i32 undef)  ; BufferLoad(srv,index,wot)
  %223 = extractvalue %dx.types.ResRet.i32 %222, 0
  %224 = add i32 %223, 0
  %225 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %224, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %226 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %225, %dx.types.Handle %38, float %188, float %189, float undef, float undef, i32 0, i32 0, i32 undef, float %220)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %227 = extractvalue %dx.types.ResRet.f32 %226, 0
  %228 = fmul fast float %227, 2.000000e+00
  %229 = fadd fast float %228, -1.000000e+00
  %230 = fmul fast float %229, %144
  %231 = fmul fast float %194, %230
  %232 = fmul fast float %195, %230
  %233 = fadd fast float %231, %188
  %234 = fadd fast float %232, %189
  %235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %131, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.i32 %235, 0
  %237 = add i32 %236, 0
  %238 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %237, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %239 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %238, %dx.types.Handle %38, float %233, float %234, float undef, float undef, i32 0, i32 0, i32 undef, float %220)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %240 = extractvalue %dx.types.ResRet.f32 %239, 0
  %241 = extractvalue %dx.types.ResRet.f32 %239, 1
  %242 = extractvalue %dx.types.ResRet.f32 %239, 2
  %243 = extractvalue %dx.types.ResRet.f32 %239, 3
  %244 = fmul fast float %240, 2.000000e+00
  %245 = fmul fast float %241, 2.000000e+00
  %246 = fmul fast float %242, 2.000000e+00
  %247 = fadd fast float %244, -1.000000e+00
  %248 = fadd fast float %245, -1.000000e+00
  %249 = fadd fast float %246, -1.000000e+00
  %250 = fmul fast float %170, %243
  %251 = call float @dx.op.dot3.f32(i32 55, float %146, float %147, float %148, float %247, float %248, float %249)  ; Dot3(ax,ay,az,bx,by,bz)
  %252 = fmul fast float %250, %251
  %253 = fcmp fast olt float %252, %174
  br i1 %253, label %254, label %255

; <label>:254                                     ; preds = %180
  br label %255

; <label>:255                                     ; preds = %254, %180, %169
  %256 = phi float [ %171, %169 ], [ %247, %254 ], [ %171, %180 ]
  %257 = phi float [ %172, %169 ], [ %248, %254 ], [ %172, %180 ]
  %258 = phi float [ %173, %169 ], [ %249, %254 ], [ %173, %180 ]
  %259 = phi float [ %174, %169 ], [ %252, %254 ], [ %174, %180 ]
  %260 = phi float [ %175, %169 ], [ %220, %254 ], [ %220, %180 ]
  %261 = phi float [ %177, %169 ], [ %233, %254 ], [ %177, %180 ]
  %262 = phi float [ %178, %169 ], [ %234, %254 ], [ %178, %180 ]
  %263 = add nuw nsw i32 %176, 1
  %264 = icmp eq i32 %263, 3
  br i1 %264, label %268, label %265

; <label>:265                                     ; preds = %255
  %266 = getelementptr [3 x float], [3 x float]* %79, i32 0, i32 %263
  %267 = load float, float* %266, align 4, !tbaa !104, !noalias !93
  br label %169

; <label>:268                                     ; preds = %255
  %269 = call float @dx.op.unary.f32(i32 22, float %130)  ; Frc(value)
  br i1 %44, label %279, label %270

; <label>:270                                     ; preds = %268
  %271 = call float @dx.op.dot3.f32(i32 55, float %92, float %94, float %96, float %256, float %257, float %258)  ; Dot3(ax,ay,az,bx,by,bz)
  %272 = fmul fast float %271, 2.000000e+00
  %273 = fmul fast float %272, %92
  %274 = fmul fast float %272, %94
  %275 = fmul fast float %272, %96
  %276 = fsub fast float %256, %273
  %277 = fsub fast float %257, %274
  %278 = fsub fast float %258, %275
  br label %279

; <label>:279                                     ; preds = %270, %268
  %280 = phi float [ %276, %270 ], [ %256, %268 ]
  %281 = phi float [ %277, %270 ], [ %257, %268 ]
  %282 = phi float [ %278, %270 ], [ %258, %268 ]
  %283 = add i32 %45, 56
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = add i32 %285, 0
  %287 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %286, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %288 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %287, %dx.types.Handle %38, float %261, float %262, float undef, float undef, i32 0, i32 0, i32 undef, float %260)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %289 = extractvalue %dx.types.ResRet.f32 %288, 0
  %290 = extractvalue %dx.types.ResRet.f32 %288, 1
  %291 = extractvalue %dx.types.ResRet.f32 %288, 2
  %292 = extractvalue %dx.types.ResRet.f32 %288, 3
  %293 = add i32 %45, 64
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = add i32 %295, 0
  %297 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %296, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %298 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %297, %dx.types.Handle %38, float %261, float %262, float undef, float undef, i32 0, i32 0, i32 undef, float %260)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %299 = extractvalue %dx.types.ResRet.f32 %298, 0
  %300 = extractvalue %dx.types.ResRet.f32 %298, 1
  %301 = extractvalue %dx.types.ResRet.f32 %298, 2
  %302 = extractvalue %dx.types.ResRet.f32 %298, 3
  %303 = add i32 %45, 68
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = add i32 %305, 0
  %307 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %306, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %308 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %307, %dx.types.Handle %38, float %261, float %262, float undef, float undef, i32 0, i32 0, i32 undef, float %260)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %309 = extractvalue %dx.types.ResRet.f32 %308, 0
  %310 = add i32 %45, 72
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = add i32 %312, 0
  %314 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %313, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %315 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %314, %dx.types.Handle %38, float %261, float %262, float undef, float undef, i32 0, i32 0, i32 undef, float %260)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %316 = extractvalue %dx.types.ResRet.f32 %315, 0
  %317 = fadd fast float %65, 1.000000e+00
  %318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %141, i32 undef)  ; BufferLoad(srv,index,wot)
  %319 = extractvalue %dx.types.ResRet.i32 %318, 2
  %320 = bitcast i32 %319 to float
  %321 = fmul fast float %316, 2.000000e+00
  %322 = fsub fast float %317, %321
  %323 = fmul fast float %320, %322
  %324 = fadd fast float %323, %72
  %325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %326 = extractvalue %dx.types.CBufRet.f32 %325, 2
  %327 = extractvalue %dx.types.CBufRet.f32 %325, 3
  %328 = fmul fast float %83, 2.000000e+00
  %329 = fmul fast float %328, %326
  %330 = fmul fast float %84, 2.000000e+00
  %331 = fmul fast float %330, %327
  %332 = fsub fast float 1.000000e+00, %329
  %333 = fsub fast float 1.000000e+00, %331
  %334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %335 = extractvalue %dx.types.CBufRet.f32 %334, 0
  %336 = extractvalue %dx.types.CBufRet.f32 %334, 1
  %337 = extractvalue %dx.types.CBufRet.f32 %334, 2
  %338 = fmul fast float %332, %335
  %339 = fmul fast float %332, %336
  %340 = fmul fast float %332, %337
  %341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %342 = extractvalue %dx.types.CBufRet.f32 %341, 0
  %343 = extractvalue %dx.types.CBufRet.f32 %341, 1
  %344 = extractvalue %dx.types.CBufRet.f32 %341, 2
  %345 = fmul fast float %333, %342
  %346 = fmul fast float %333, %343
  %347 = fmul fast float %333, %344
  %348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %349 = extractvalue %dx.types.CBufRet.f32 %348, 0
  %350 = extractvalue %dx.types.CBufRet.f32 %348, 1
  %351 = extractvalue %dx.types.CBufRet.f32 %348, 2
  %352 = fadd fast float %345, %349
  %353 = fadd fast float %352, %338
  %354 = fadd fast float %346, %350
  %355 = fadd fast float %354, %339
  %356 = fadd fast float %347, %351
  %357 = fadd fast float %356, %340
  %358 = fmul fast float %353, %324
  %359 = fmul fast float %355, %324
  %360 = fmul fast float %357, %324
  %361 = call float @dx.op.unary.f32(i32 26, float %47)  ; Round_ne(value)
  %362 = fptoui float %361 to i32
  %363 = shl i32 %362, 6
  %364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %365 = extractvalue %dx.types.CBufRet.f32 %364, 0
  %366 = extractvalue %dx.types.CBufRet.f32 %364, 1
  %367 = extractvalue %dx.types.CBufRet.f32 %364, 2
  %368 = fadd fast float %358, %365
  %369 = fadd fast float %359, %366
  %370 = fadd fast float %360, %367
  %371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %363, i32 undef)  ; BufferLoad(srv,index,wot)
  %372 = extractvalue %dx.types.ResRet.f32 %371, 0
  %373 = extractvalue %dx.types.ResRet.f32 %371, 1
  %374 = extractvalue %dx.types.ResRet.f32 %371, 2
  %375 = extractvalue %dx.types.ResRet.f32 %371, 3
  %376 = call float @dx.op.dot4.f32(i32 56, float %372, float %373, float %374, float %375, float %368, float %369, float %370, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %377 = or i32 %363, 16
  %378 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %379 = extractvalue %dx.types.ResRet.f32 %378, 0
  %380 = extractvalue %dx.types.ResRet.f32 %378, 1
  %381 = extractvalue %dx.types.ResRet.f32 %378, 2
  %382 = extractvalue %dx.types.ResRet.f32 %378, 3
  %383 = call float @dx.op.dot4.f32(i32 56, float %379, float %380, float %381, float %382, float %368, float %369, float %370, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %384 = or i32 %363, 32
  %385 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.f32 %385, 0
  %387 = extractvalue %dx.types.ResRet.f32 %385, 1
  %388 = extractvalue %dx.types.ResRet.f32 %385, 2
  %389 = extractvalue %dx.types.ResRet.f32 %385, 3
  %390 = call float @dx.op.dot4.f32(i32 56, float %386, float %387, float %388, float %389, float %368, float %369, float %370, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %391 = fadd fast float %309, 0xBFB99999A0000000
  %392 = call float @dx.op.unary.f32(i32 7, float %391)  ; Saturate(value)
  %393 = fmul fast float %392, 0x3FF1C71C80000000
  %394 = call float @dx.op.binary.f32(i32 36, float %309, float 0x3FB99999A0000000)  ; FMin(a,b)
  %395 = fsub fast float 1.000000e+00, %393
  %396 = call float @dx.op.unary.f32(i32 7, float %395)  ; Saturate(value)
  %397 = fmul fast float %396, %289
  %398 = fmul fast float %396, %290
  %399 = fmul fast float %396, %291
  %400 = call float @dx.op.unary.f32(i32 7, float %397)  ; Saturate(value)
  %401 = call float @dx.op.unary.f32(i32 7, float %398)  ; Saturate(value)
  %402 = call float @dx.op.unary.f32(i32 7, float %399)  ; Saturate(value)
  %403 = fmul fast float %393, %289
  %404 = fmul fast float %393, %290
  %405 = fmul fast float %393, %291
  %406 = fadd fast float %403, %394
  %407 = fadd fast float %404, %394
  %408 = fadd fast float %405, %394
  %409 = call float @dx.op.unary.f32(i32 7, float %406)  ; Saturate(value)
  %410 = call float @dx.op.unary.f32(i32 7, float %407)  ; Saturate(value)
  %411 = call float @dx.op.unary.f32(i32 7, float %408)  ; Saturate(value)
  %412 = call float @dx.op.dot3.f32(i32 55, float %400, float %401, float %402, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %413 = fmul fast float %412, 1.875000e-01
  %414 = fadd fast float %413, 0x3FE647AE20000000
  %415 = call float @dx.op.unary.f32(i32 7, float %414)  ; Saturate(value)
  %416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %417 = extractvalue %dx.types.CBufRet.f32 %416, 0
  %418 = fsub fast float -0.000000e+00, %360
  %419 = call float @dx.op.dot3.f32(i32 55, float %358, float %359, float %360, float %358, float %359, float %360)  ; Dot3(ax,ay,az,bx,by,bz)
  %420 = call float @dx.op.unary.f32(i32 25, float %419)  ; Rsqrt(value)
  %421 = fmul fast float %420, %358
  %422 = fmul fast float %420, %359
  %423 = fmul fast float %420, %360
  %424 = fsub fast float -0.000000e+00, %421
  %425 = fsub fast float -0.000000e+00, %422
  %426 = fsub fast float -0.000000e+00, %423
  %427 = select i1 %120, float 0.000000e+00, float %411
  %428 = call float @dx.op.dot3.f32(i32 55, float %280, float %281, float %282, float %424, float %425, float %426)  ; Dot3(ax,ay,az,bx,by,bz)
  %429 = call float @dx.op.unary.f32(i32 7, float %428)  ; Saturate(value)
  %430 = call float @dx.op.dot3.f32(i32 55, float %421, float %422, float %423, float %280, float %281, float %282)  ; Dot3(ax,ay,az,bx,by,bz)
  %431 = fmul fast float %430, 2.000000e+00
  %432 = fmul fast float %431, %280
  %433 = fmul fast float %431, %281
  %434 = fmul fast float %431, %282
  %435 = fsub fast float %421, %432
  %436 = fsub fast float %422, %433
  %437 = fsub fast float %423, %434
  %438 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %302)  ; FMin(a,b)
  %439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %440 = extractvalue %dx.types.CBufRet.f32 %439, 0
  %441 = extractvalue %dx.types.CBufRet.f32 %439, 1
  %442 = fadd fast float %440, %358
  %443 = fadd fast float %441, %359
  %444 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %445 = extractvalue %dx.types.CBufRet.i32 %444, 0
  %446 = icmp eq i32 %445, 1
  br i1 %446, label %447, label %482

; <label>:447                                     ; preds = %279
  %448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %449 = extractvalue %dx.types.CBufRet.f32 %448, 0
  %450 = extractvalue %dx.types.CBufRet.f32 %448, 1
  %451 = fsub fast float %442, %449
  %452 = fsub fast float %443, %450
  %453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %454 = extractvalue %dx.types.CBufRet.f32 %453, 0
  %455 = extractvalue %dx.types.CBufRet.f32 %453, 1
  %456 = fmul fast float %451, %454
  %457 = fmul fast float %452, %455
  %458 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %38, float %456, float %457, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %459 = extractvalue %dx.types.ResRet.f32 %458, 0
  %460 = fcmp fast ogt float %459, 0.000000e+00
  %461 = extractvalue %dx.types.CBufRet.i32 %444, 3
  %462 = icmp ne i32 %461, 0
  %463 = and i1 %460, %462
  br i1 %463, label %464, label %482, !dx.controlflow.hints !108

; <label>:464                                     ; preds = %447
  %465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %466 = extractvalue %dx.types.CBufRet.f32 %465, 0
  %467 = extractvalue %dx.types.CBufRet.f32 %465, 1
  %468 = fsub fast float %442, %466
  %469 = fsub fast float %443, %467
  %470 = fmul fast float %468, %468
  %471 = fmul fast float %469, %469
  %472 = fadd fast float %470, %471
  %473 = uitofp i32 %461 to float
  %474 = fmul fast float %473, %473
  %475 = fcmp fast ogt float %472, %474
  br i1 %475, label %482, label %476

; <label>:476                                     ; preds = %464
  %477 = call float @dx.op.unary.f32(i32 24, float %472)  ; Sqrt(value)
  %478 = fsub fast float %473, %477
  %479 = fmul fast float %478, 0x3F75555560000000
  %480 = call float @dx.op.unary.f32(i32 7, float %479)  ; Saturate(value)
  %481 = call float @dx.op.binary.f32(i32 36, float %480, float %459)  ; FMin(a,b)
  br label %482

; <label>:482                                     ; preds = %476, %464, %447, %279
  %483 = phi float [ 1.000000e+00, %279 ], [ %481, %476 ], [ %459, %447 ], [ 0.000000e+00, %464 ]
  %484 = fcmp fast ogt float %483, 0.000000e+00
  br i1 %484, label %485, label %1018, !dx.controlflow.hints !109

; <label>:485                                     ; preds = %482
  %486 = fadd fast float %47, 5.000000e-01
  %487 = fptoui float %486 to i32
  %488 = fcmp fast une float %46, 0.000000e+00
  br i1 %488, label %489, label %541

; <label>:489                                     ; preds = %485
  %490 = fadd fast float %69, 5.000000e-01
  %491 = fptoui float %490 to i32
  %492 = shl i32 %491, 3
  %493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %494 = extractvalue %dx.types.ResRet.i32 %493, 0
  %495 = or i32 %492, 4
  %496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.i32 %496, 0
  %498 = and i32 %497, 16777215
  %499 = add i32 %498, %487
  %500 = shl i32 %499, 5
  %501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %502 = extractvalue %dx.types.ResRet.f32 %501, 0
  %503 = extractvalue %dx.types.ResRet.f32 %501, 1
  %504 = extractvalue %dx.types.ResRet.f32 %501, 2
  %505 = or i32 %500, 16
  %506 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %507 = extractvalue %dx.types.ResRet.f32 %506, 0
  %508 = extractvalue %dx.types.ResRet.f32 %506, 1
  %509 = extractvalue %dx.types.ResRet.f32 %506, 2
  %510 = lshr i32 %497, 24
  %511 = and i32 %510, 3
  %512 = add nuw nsw i32 %511, 3
  %513 = shl i32 1, %512
  %514 = lshr i32 %497, 29
  %515 = lshr i32 %497, 23
  %516 = and i32 %515, 56
  %517 = shl nuw nsw i32 %514, 3
  %518 = lshr i32 %494, 16
  %519 = and i32 %494, 65535
  %520 = uitofp i32 %513 to float
  %521 = fmul fast float %520, 1.562500e-02
  %522 = uitofp i32 %518 to float
  %523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %524 = extractvalue %dx.types.CBufRet.f32 %523, 3
  %525 = fmul fast float %524, %522
  %526 = uitofp i32 %516 to float
  %527 = fmul fast float %526, 1.562500e-02
  %528 = uitofp i32 %517 to float
  %529 = fmul fast float %528, 1.562500e-02
  %530 = uitofp i32 %519 to float
  %531 = fmul fast float %524, %530
  %532 = fmul fast float %521, %502
  %533 = fmul fast float %521, %503
  %534 = fmul fast float %525, %504
  %535 = fmul fast float %521, %507
  %536 = fmul fast float %521, %508
  %537 = fmul fast float %525, %509
  %538 = fadd fast float %535, %527
  %539 = fadd fast float %536, %529
  %540 = fadd fast float %537, %531
  br label %552

; <label>:541                                     ; preds = %485
  %542 = shl i32 %487, 5
  %543 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.f32 %543, 0
  %545 = extractvalue %dx.types.ResRet.f32 %543, 1
  %546 = extractvalue %dx.types.ResRet.f32 %543, 2
  %547 = or i32 %542, 16
  %548 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %547, i32 undef)  ; BufferLoad(srv,index,wot)
  %549 = extractvalue %dx.types.ResRet.f32 %548, 0
  %550 = extractvalue %dx.types.ResRet.f32 %548, 1
  %551 = extractvalue %dx.types.ResRet.f32 %548, 2
  br label %552

; <label>:552                                     ; preds = %541, %489
  %553 = phi float [ %538, %489 ], [ %549, %541 ]
  %554 = phi float [ %539, %489 ], [ %550, %541 ]
  %555 = phi float [ %540, %489 ], [ %551, %541 ]
  %556 = phi float [ %532, %489 ], [ %544, %541 ]
  %557 = phi float [ %533, %489 ], [ %545, %541 ]
  %558 = phi float [ %534, %489 ], [ %546, %541 ]
  %559 = call float @dx.op.unary.f32(i32 7, float %376)  ; Saturate(value)
  %560 = call float @dx.op.unary.f32(i32 7, float %383)  ; Saturate(value)
  %561 = call float @dx.op.unary.f32(i32 7, float %390)  ; Saturate(value)
  %562 = fmul fast float %559, %556
  %563 = fmul fast float %560, %557
  %564 = fmul fast float %561, %558
  %565 = fadd fast float %562, %553
  %566 = fadd fast float %563, %554
  %567 = fadd fast float %564, %555
  %568 = fmul fast float %565, 5.000000e-01
  %569 = fmul fast float %566, 0x3FD5555560000000
  %570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %571 = extractvalue %dx.types.CBufRet.f32 %570, 3
  %572 = fadd fast float %568, 5.000000e-01
  %573 = fadd fast float %569, 0x3FD5555560000000
  %574 = fadd fast float %569, 0x3FE5555560000000
  br i1 %488, label %575, label %685

; <label>:575                                     ; preds = %552
  %576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %36, float %565, float %566, float %567, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %577 = extractvalue %dx.types.ResRet.f32 %576, 0
  %578 = extractvalue %dx.types.ResRet.f32 %576, 1
  %579 = extractvalue %dx.types.ResRet.f32 %576, 2
  %580 = fmul fast float %571, %577
  %581 = fmul fast float %571, %578
  %582 = fmul fast float %571, %579
  %583 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %36, float %568, float %569, float %567, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %584 = extractvalue %dx.types.ResRet.f32 %583, 0
  %585 = extractvalue %dx.types.ResRet.f32 %583, 1
  %586 = extractvalue %dx.types.ResRet.f32 %583, 2
  %587 = extractvalue %dx.types.ResRet.f32 %583, 3
  %588 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %36, float %572, float %569, float %567, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %589 = extractvalue %dx.types.ResRet.f32 %588, 0
  %590 = extractvalue %dx.types.ResRet.f32 %588, 1
  %591 = extractvalue %dx.types.ResRet.f32 %588, 2
  %592 = extractvalue %dx.types.ResRet.f32 %588, 3
  %593 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %36, float %568, float %573, float %567, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %594 = extractvalue %dx.types.ResRet.f32 %593, 0
  %595 = extractvalue %dx.types.ResRet.f32 %593, 1
  %596 = extractvalue %dx.types.ResRet.f32 %593, 2
  %597 = extractvalue %dx.types.ResRet.f32 %593, 3
  %598 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %36, float %572, float %573, float %567, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %599 = extractvalue %dx.types.ResRet.f32 %598, 0
  %600 = extractvalue %dx.types.ResRet.f32 %598, 1
  %601 = extractvalue %dx.types.ResRet.f32 %598, 2
  %602 = extractvalue %dx.types.ResRet.f32 %598, 3
  %603 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %36, float %568, float %574, float %567, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %604 = extractvalue %dx.types.ResRet.f32 %603, 0
  %605 = extractvalue %dx.types.ResRet.f32 %603, 1
  %606 = extractvalue %dx.types.ResRet.f32 %603, 2
  %607 = extractvalue %dx.types.ResRet.f32 %603, 3
  %608 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %36, float %572, float %574, float %567, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %609 = extractvalue %dx.types.ResRet.f32 %608, 0
  %610 = extractvalue %dx.types.ResRet.f32 %608, 1
  %611 = extractvalue %dx.types.ResRet.f32 %608, 2
  %612 = extractvalue %dx.types.ResRet.f32 %608, 3
  %613 = fmul fast float %584, 0x400BB67AE0000000
  %614 = fadd fast float %613, 0xBFFBB67AE0000000
  %615 = fmul fast float %614, %580
  %616 = fmul fast float %585, 0x400BB67AE0000000
  %617 = fadd fast float %616, 0xBFFBB67AE0000000
  %618 = fmul fast float %617, %581
  %619 = fmul fast float %586, 0x400BB67AE0000000
  %620 = fadd fast float %619, 0xBFFBB67AE0000000
  %621 = fmul fast float %620, %582
  %622 = fmul fast float %587, 0x4011E377A0000000
  %623 = fadd fast float %622, 0xC001E377A0000000
  %624 = fmul fast float %623, %580
  %625 = fmul fast float %589, 0x4011E377A0000000
  %626 = fadd fast float %625, 0xC001E377A0000000
  %627 = fmul fast float %626, %581
  %628 = fmul fast float %590, 0x4011E377A0000000
  %629 = fadd fast float %628, 0xC001E377A0000000
  %630 = fmul fast float %629, %582
  %631 = fmul fast float %591, 0x400BB67AE0000000
  %632 = fadd fast float %631, 0xBFFBB67AE0000000
  %633 = fmul fast float %632, %580
  %634 = fmul fast float %592, 0x400BB67AE0000000
  %635 = fadd fast float %634, 0xBFFBB67AE0000000
  %636 = fmul fast float %635, %581
  %637 = fmul fast float %594, 0x400BB67AE0000000
  %638 = fadd fast float %637, 0xBFFBB67AE0000000
  %639 = fmul fast float %638, %582
  %640 = fmul fast float %595, 0x400BB67AE0000000
  %641 = fadd fast float %640, 0xBFFBB67AE0000000
  %642 = fmul fast float %641, %580
  %643 = fmul fast float %596, 0x400BB67AE0000000
  %644 = fadd fast float %643, 0xBFFBB67AE0000000
  %645 = fmul fast float %644, %581
  %646 = fmul fast float %597, 0x400BB67AE0000000
  %647 = fadd fast float %646, 0xBFFBB67AE0000000
  %648 = fmul fast float %647, %582
  %649 = fmul fast float %599, 0x400EFBDEC0000000
  %650 = fadd fast float %649, 0xBFFEFBDEC0000000
  %651 = fmul fast float %650, %580
  %652 = fmul fast float %600, 0x400EFBDEC0000000
  %653 = fadd fast float %652, 0xBFFEFBDEC0000000
  %654 = fmul fast float %653, %581
  %655 = fmul fast float %601, 0x400EFBDEC0000000
  %656 = fadd fast float %655, 0xBFFEFBDEC0000000
  %657 = fmul fast float %656, %582
  %658 = fmul fast float %602, 0x400EFBDEC0000000
  %659 = fadd fast float %658, 0xBFFEFBDEC0000000
  %660 = fmul fast float %659, %580
  %661 = fmul fast float %604, 0x400EFBDEC0000000
  %662 = fadd fast float %661, 0xBFFEFBDEC0000000
  %663 = fmul fast float %662, %581
  %664 = fmul fast float %605, 0x400EFBDEC0000000
  %665 = fadd fast float %664, 0xBFFEFBDEC0000000
  %666 = fmul fast float %665, %582
  %667 = fmul fast float %606, 0x400EFBDEC0000000
  %668 = fadd fast float %667, 0xBFFEFBDEC0000000
  %669 = fmul fast float %668, %580
  %670 = fmul fast float %607, 0x400EFBDEC0000000
  %671 = fadd fast float %670, 0xBFFEFBDEC0000000
  %672 = fmul fast float %671, %581
  %673 = fmul fast float %609, 0x400EFBDEC0000000
  %674 = fadd fast float %673, 0xBFFEFBDEC0000000
  %675 = fmul fast float %674, %582
  %676 = fmul fast float %610, 0x400EFBDEC0000000
  %677 = fadd fast float %676, 0xBFFEFBDEC0000000
  %678 = fmul fast float %677, %580
  %679 = fmul fast float %611, 0x400EFBDEC0000000
  %680 = fadd fast float %679, 0xBFFEFBDEC0000000
  %681 = fmul fast float %680, %581
  %682 = fmul fast float %612, 0x400EFBDEC0000000
  %683 = fadd fast float %682, 0xBFFEFBDEC0000000
  %684 = fmul fast float %683, %582
  br label %795

; <label>:685                                     ; preds = %552
  %686 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %36, float %565, float %566, float %567, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %687 = extractvalue %dx.types.ResRet.f32 %686, 0
  %688 = extractvalue %dx.types.ResRet.f32 %686, 1
  %689 = extractvalue %dx.types.ResRet.f32 %686, 2
  %690 = fmul fast float %571, %687
  %691 = fmul fast float %571, %688
  %692 = fmul fast float %571, %689
  %693 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %36, float %568, float %569, float %567, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %694 = extractvalue %dx.types.ResRet.f32 %693, 0
  %695 = extractvalue %dx.types.ResRet.f32 %693, 1
  %696 = extractvalue %dx.types.ResRet.f32 %693, 2
  %697 = extractvalue %dx.types.ResRet.f32 %693, 3
  %698 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %36, float %572, float %569, float %567, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %699 = extractvalue %dx.types.ResRet.f32 %698, 0
  %700 = extractvalue %dx.types.ResRet.f32 %698, 1
  %701 = extractvalue %dx.types.ResRet.f32 %698, 2
  %702 = extractvalue %dx.types.ResRet.f32 %698, 3
  %703 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %36, float %568, float %573, float %567, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %704 = extractvalue %dx.types.ResRet.f32 %703, 0
  %705 = extractvalue %dx.types.ResRet.f32 %703, 1
  %706 = extractvalue %dx.types.ResRet.f32 %703, 2
  %707 = extractvalue %dx.types.ResRet.f32 %703, 3
  %708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %36, float %572, float %573, float %567, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %709 = extractvalue %dx.types.ResRet.f32 %708, 0
  %710 = extractvalue %dx.types.ResRet.f32 %708, 1
  %711 = extractvalue %dx.types.ResRet.f32 %708, 2
  %712 = extractvalue %dx.types.ResRet.f32 %708, 3
  %713 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %36, float %568, float %574, float %567, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %714 = extractvalue %dx.types.ResRet.f32 %713, 0
  %715 = extractvalue %dx.types.ResRet.f32 %713, 1
  %716 = extractvalue %dx.types.ResRet.f32 %713, 2
  %717 = extractvalue %dx.types.ResRet.f32 %713, 3
  %718 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %36, float %572, float %574, float %567, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %719 = extractvalue %dx.types.ResRet.f32 %718, 0
  %720 = extractvalue %dx.types.ResRet.f32 %718, 1
  %721 = extractvalue %dx.types.ResRet.f32 %718, 2
  %722 = extractvalue %dx.types.ResRet.f32 %718, 3
  %723 = fmul fast float %694, 0x400BB67AE0000000
  %724 = fadd fast float %723, 0xBFFBB67AE0000000
  %725 = fmul fast float %724, %690
  %726 = fmul fast float %695, 0x400BB67AE0000000
  %727 = fadd fast float %726, 0xBFFBB67AE0000000
  %728 = fmul fast float %727, %691
  %729 = fmul fast float %696, 0x400BB67AE0000000
  %730 = fadd fast float %729, 0xBFFBB67AE0000000
  %731 = fmul fast float %730, %692
  %732 = fmul fast float %697, 0x4011E377A0000000
  %733 = fadd fast float %732, 0xC001E377A0000000
  %734 = fmul fast float %733, %690
  %735 = fmul fast float %699, 0x4011E377A0000000
  %736 = fadd fast float %735, 0xC001E377A0000000
  %737 = fmul fast float %736, %691
  %738 = fmul fast float %700, 0x4011E377A0000000
  %739 = fadd fast float %738, 0xC001E377A0000000
  %740 = fmul fast float %739, %692
  %741 = fmul fast float %701, 0x400BB67AE0000000
  %742 = fadd fast float %741, 0xBFFBB67AE0000000
  %743 = fmul fast float %742, %690
  %744 = fmul fast float %702, 0x400BB67AE0000000
  %745 = fadd fast float %744, 0xBFFBB67AE0000000
  %746 = fmul fast float %745, %691
  %747 = fmul fast float %704, 0x400BB67AE0000000
  %748 = fadd fast float %747, 0xBFFBB67AE0000000
  %749 = fmul fast float %748, %692
  %750 = fmul fast float %705, 0x400BB67AE0000000
  %751 = fadd fast float %750, 0xBFFBB67AE0000000
  %752 = fmul fast float %751, %690
  %753 = fmul fast float %706, 0x400BB67AE0000000
  %754 = fadd fast float %753, 0xBFFBB67AE0000000
  %755 = fmul fast float %754, %691
  %756 = fmul fast float %707, 0x400BB67AE0000000
  %757 = fadd fast float %756, 0xBFFBB67AE0000000
  %758 = fmul fast float %757, %692
  %759 = fmul fast float %709, 0x400EFBDEC0000000
  %760 = fadd fast float %759, 0xBFFEFBDEC0000000
  %761 = fmul fast float %760, %690
  %762 = fmul fast float %710, 0x400EFBDEC0000000
  %763 = fadd fast float %762, 0xBFFEFBDEC0000000
  %764 = fmul fast float %763, %691
  %765 = fmul fast float %711, 0x400EFBDEC0000000
  %766 = fadd fast float %765, 0xBFFEFBDEC0000000
  %767 = fmul fast float %766, %692
  %768 = fmul fast float %712, 0x400EFBDEC0000000
  %769 = fadd fast float %768, 0xBFFEFBDEC0000000
  %770 = fmul fast float %769, %690
  %771 = fmul fast float %714, 0x400EFBDEC0000000
  %772 = fadd fast float %771, 0xBFFEFBDEC0000000
  %773 = fmul fast float %772, %691
  %774 = fmul fast float %715, 0x400EFBDEC0000000
  %775 = fadd fast float %774, 0xBFFEFBDEC0000000
  %776 = fmul fast float %775, %692
  %777 = fmul fast float %716, 0x400EFBDEC0000000
  %778 = fadd fast float %777, 0xBFFEFBDEC0000000
  %779 = fmul fast float %778, %690
  %780 = fmul fast float %717, 0x400EFBDEC0000000
  %781 = fadd fast float %780, 0xBFFEFBDEC0000000
  %782 = fmul fast float %781, %691
  %783 = fmul fast float %719, 0x400EFBDEC0000000
  %784 = fadd fast float %783, 0xBFFEFBDEC0000000
  %785 = fmul fast float %784, %692
  %786 = fmul fast float %720, 0x400EFBDEC0000000
  %787 = fadd fast float %786, 0xBFFEFBDEC0000000
  %788 = fmul fast float %787, %690
  %789 = fmul fast float %721, 0x400EFBDEC0000000
  %790 = fadd fast float %789, 0xBFFEFBDEC0000000
  %791 = fmul fast float %790, %691
  %792 = fmul fast float %722, 0x400EFBDEC0000000
  %793 = fadd fast float %792, 0xBFFEFBDEC0000000
  %794 = fmul fast float %793, %692
  br label %795

; <label>:795                                     ; preds = %685, %575
  %796 = phi float [ %785, %685 ], [ %675, %575 ]
  %797 = phi float [ %767, %685 ], [ %657, %575 ]
  %798 = phi float [ %740, %685 ], [ %630, %575 ]
  %799 = phi float [ %776, %685 ], [ %666, %575 ]
  %800 = phi float [ %794, %685 ], [ %684, %575 ]
  %801 = phi float [ %758, %685 ], [ %648, %575 ]
  %802 = phi float [ %731, %685 ], [ %621, %575 ]
  %803 = phi float [ %749, %685 ], [ %639, %575 ]
  %804 = phi float [ %692, %685 ], [ %582, %575 ]
  %805 = phi float [ %782, %685 ], [ %672, %575 ]
  %806 = phi float [ %764, %685 ], [ %654, %575 ]
  %807 = phi float [ %737, %685 ], [ %627, %575 ]
  %808 = phi float [ %773, %685 ], [ %663, %575 ]
  %809 = phi float [ %791, %685 ], [ %681, %575 ]
  %810 = phi float [ %755, %685 ], [ %645, %575 ]
  %811 = phi float [ %728, %685 ], [ %618, %575 ]
  %812 = phi float [ %746, %685 ], [ %636, %575 ]
  %813 = phi float [ %691, %685 ], [ %581, %575 ]
  %814 = phi float [ %779, %685 ], [ %669, %575 ]
  %815 = phi float [ %761, %685 ], [ %651, %575 ]
  %816 = phi float [ %734, %685 ], [ %624, %575 ]
  %817 = phi float [ %770, %685 ], [ %660, %575 ]
  %818 = phi float [ %788, %685 ], [ %678, %575 ]
  %819 = phi float [ %752, %685 ], [ %642, %575 ]
  %820 = phi float [ %725, %685 ], [ %615, %575 ]
  %821 = phi float [ %743, %685 ], [ %633, %575 ]
  %822 = phi float [ %690, %685 ], [ %580, %575 ]
  %823 = fmul fast float %822, 0x3FD20DD760000000
  %824 = fmul fast float %282, 0x3FD4D8D7C0000000
  %825 = fmul fast float %824, %820
  %826 = fmul fast float %282, %282
  %827 = fmul fast float %826, 0x3FEE471020000000
  %828 = fadd fast float %827, 0xBFD42F6020000000
  %829 = fmul fast float %816, %828
  %830 = fmul fast float %280, 0x3FD4D8D7C0000000
  %831 = fmul fast float %830, %819
  %832 = fmul fast float %281, 0x3FD4D8D7C0000000
  %833 = fmul fast float %832, %821
  %834 = fmul fast float %282, 0xBFF17B1420000000
  %835 = fmul fast float %815, %280
  %836 = fmul fast float %817, %281
  %837 = fmul fast float %280, %280
  %838 = fmul fast float %281, %281
  %839 = fsub fast float %837, %838
  %840 = fmul fast float %839, 0x3FC17B1420000000
  %841 = fmul fast float %840, %814
  %842 = fmul fast float %280, 0x3FD17B1420000000
  %843 = fmul fast float %842, %281
  %844 = fmul fast float %843, %818
  %845 = fadd fast float %836, %835
  %846 = fmul fast float %834, %845
  %847 = fadd fast float %846, %829
  %848 = fmul fast float %847, 2.500000e-01
  %849 = fadd fast float %844, %841
  %850 = fsub fast float %849, %831
  %851 = fadd fast float %850, %848
  %852 = fadd fast float %851, %825
  %853 = fadd fast float %852, %823
  %854 = fsub fast float %853, %833
  %855 = fmul fast float %813, 0x3FD20DD760000000
  %856 = fmul fast float %824, %811
  %857 = fmul fast float %807, %828
  %858 = fmul fast float %830, %810
  %859 = fmul fast float %832, %812
  %860 = fmul fast float %806, %280
  %861 = fmul fast float %808, %281
  %862 = fmul fast float %840, %805
  %863 = fmul fast float %843, %809
  %864 = fadd fast float %861, %860
  %865 = fmul fast float %834, %864
  %866 = fadd fast float %865, %857
  %867 = fmul fast float %866, 2.500000e-01
  %868 = fadd fast float %863, %862
  %869 = fsub fast float %868, %858
  %870 = fadd fast float %869, %867
  %871 = fadd fast float %870, %856
  %872 = fadd fast float %871, %855
  %873 = fsub fast float %872, %859
  %874 = fmul fast float %804, 0x3FD20DD760000000
  %875 = fmul fast float %824, %802
  %876 = fmul fast float %798, %828
  %877 = fmul fast float %830, %801
  %878 = fmul fast float %832, %803
  %879 = fmul fast float %797, %280
  %880 = fmul fast float %799, %281
  %881 = fmul fast float %840, %796
  %882 = fmul fast float %843, %800
  %883 = fadd fast float %880, %879
  %884 = fmul fast float %834, %883
  %885 = fadd fast float %884, %876
  %886 = fmul fast float %885, 2.500000e-01
  %887 = fadd fast float %882, %881
  %888 = fsub fast float %887, %877
  %889 = fadd fast float %888, %886
  %890 = fadd fast float %889, %875
  %891 = fadd fast float %890, %874
  %892 = fsub fast float %891, %878
  %893 = call float @dx.op.binary.f32(i32 35, float %854, float 0.000000e+00)  ; FMax(a,b)
  %894 = call float @dx.op.binary.f32(i32 35, float %873, float 0.000000e+00)  ; FMax(a,b)
  %895 = call float @dx.op.binary.f32(i32 35, float %892, float 0.000000e+00)  ; FMax(a,b)
  %896 = fsub fast float -0.000000e+00, %280
  %897 = fsub fast float -0.000000e+00, %281
  %898 = fmul fast float %282, 0xBFD4D8D7C0000000
  %899 = fmul fast float %898, %820
  %900 = fmul fast float %819, %280
  %901 = fmul fast float %821, %281
  %902 = fmul fast float %282, 0x3FF17B1420000000
  %903 = fmul fast float %815, %896
  %904 = fmul fast float %817, %897
  %905 = fadd fast float %904, %903
  %906 = fmul fast float %902, %905
  %907 = fadd fast float %906, %829
  %908 = fmul fast float %907, 2.500000e-01
  %909 = fadd fast float %901, %900
  %910 = fmul fast float %909, 0x3FD4D8D7C0000000
  %911 = fadd fast float %849, %899
  %912 = fadd fast float %911, %823
  %913 = fadd fast float %912, %908
  %914 = fadd fast float %913, %910
  %915 = fmul fast float %898, %811
  %916 = fmul fast float %810, %280
  %917 = fmul fast float %812, %281
  %918 = fmul fast float %806, %896
  %919 = fmul fast float %808, %897
  %920 = fadd fast float %919, %918
  %921 = fmul fast float %902, %920
  %922 = fadd fast float %921, %857
  %923 = fmul fast float %922, 2.500000e-01
  %924 = fadd fast float %917, %916
  %925 = fmul fast float %924, 0x3FD4D8D7C0000000
  %926 = fadd fast float %868, %915
  %927 = fadd fast float %926, %855
  %928 = fadd fast float %927, %923
  %929 = fadd fast float %928, %925
  %930 = fmul fast float %898, %802
  %931 = fmul fast float %801, %280
  %932 = fmul fast float %803, %281
  %933 = fmul fast float %797, %896
  %934 = fmul fast float %799, %897
  %935 = fadd fast float %934, %933
  %936 = fmul fast float %902, %935
  %937 = fadd fast float %936, %876
  %938 = fmul fast float %937, 2.500000e-01
  %939 = fadd fast float %932, %931
  %940 = fmul fast float %939, 0x3FD4D8D7C0000000
  %941 = fadd fast float %887, %930
  %942 = fadd fast float %941, %874
  %943 = fadd fast float %942, %938
  %944 = fadd fast float %943, %940
  %945 = call float @dx.op.binary.f32(i32 35, float %914, float 0.000000e+00)  ; FMax(a,b)
  %946 = call float @dx.op.binary.f32(i32 35, float %929, float 0.000000e+00)  ; FMax(a,b)
  %947 = call float @dx.op.binary.f32(i32 35, float %944, float 0.000000e+00)  ; FMax(a,b)
  %948 = fmul fast float %437, 0x3FD4D8D7C0000000
  %949 = fmul fast float %948, %820
  %950 = fmul fast float %437, %437
  %951 = fmul fast float %950, 0x3FEE471020000000
  %952 = fadd fast float %951, 0xBFD42F6020000000
  %953 = fmul fast float %816, %952
  %954 = fmul fast float %435, 0x3FD4D8D7C0000000
  %955 = fmul fast float %954, %819
  %956 = fmul fast float %436, 0x3FD4D8D7C0000000
  %957 = fmul fast float %956, %821
  %958 = fmul fast float %437, 0xBFF17B1420000000
  %959 = fmul fast float %815, %435
  %960 = fmul fast float %817, %436
  %961 = fmul fast float %435, %435
  %962 = fmul fast float %436, %436
  %963 = fsub fast float %961, %962
  %964 = fmul fast float %963, 0x3FC17B1420000000
  %965 = fmul fast float %964, %814
  %966 = fmul fast float %436, 0x3FD17B1420000000
  %967 = fmul fast float %966, %435
  %968 = fmul fast float %967, %818
  %969 = fadd fast float %960, %959
  %970 = fmul fast float %958, %969
  %971 = fadd fast float %970, %953
  %972 = fmul fast float %971, 2.500000e-01
  %973 = fadd fast float %968, %965
  %974 = fsub fast float %973, %955
  %975 = fadd fast float %974, %972
  %976 = fadd fast float %975, %949
  %977 = fadd fast float %976, %823
  %978 = fsub fast float %977, %957
  %979 = fmul fast float %948, %811
  %980 = fmul fast float %807, %952
  %981 = fmul fast float %954, %810
  %982 = fmul fast float %956, %812
  %983 = fmul fast float %806, %435
  %984 = fmul fast float %808, %436
  %985 = fmul fast float %964, %805
  %986 = fmul fast float %967, %809
  %987 = fadd fast float %984, %983
  %988 = fmul fast float %958, %987
  %989 = fadd fast float %988, %980
  %990 = fmul fast float %989, 2.500000e-01
  %991 = fadd fast float %986, %985
  %992 = fsub fast float %991, %981
  %993 = fadd fast float %992, %990
  %994 = fadd fast float %993, %979
  %995 = fadd fast float %994, %855
  %996 = fsub fast float %995, %982
  %997 = fmul fast float %948, %802
  %998 = fmul fast float %798, %952
  %999 = fmul fast float %954, %801
  %1000 = fmul fast float %956, %803
  %1001 = fmul fast float %797, %435
  %1002 = fmul fast float %799, %436
  %1003 = fmul fast float %964, %796
  %1004 = fmul fast float %967, %800
  %1005 = fadd fast float %1002, %1001
  %1006 = fmul fast float %958, %1005
  %1007 = fadd fast float %1006, %998
  %1008 = fmul fast float %1007, 2.500000e-01
  %1009 = fadd fast float %1004, %1003
  %1010 = fsub fast float %1009, %999
  %1011 = fadd fast float %1010, %1008
  %1012 = fadd fast float %1011, %997
  %1013 = fadd fast float %1012, %874
  %1014 = fsub fast float %1013, %1000
  %1015 = call float @dx.op.binary.f32(i32 35, float %978, float 0.000000e+00)  ; FMax(a,b)
  %1016 = call float @dx.op.binary.f32(i32 35, float %996, float 0.000000e+00)  ; FMax(a,b)
  %1017 = call float @dx.op.binary.f32(i32 35, float %1014, float 0.000000e+00)  ; FMax(a,b)
  br label %1018

; <label>:1018                                    ; preds = %795, %482
  %1019 = phi float [ %1015, %795 ], [ 0.000000e+00, %482 ]
  %1020 = phi float [ %1016, %795 ], [ 0.000000e+00, %482 ]
  %1021 = phi float [ %1017, %795 ], [ 0.000000e+00, %482 ]
  %1022 = phi float [ %945, %795 ], [ 0.000000e+00, %482 ]
  %1023 = phi float [ %946, %795 ], [ 0.000000e+00, %482 ]
  %1024 = phi float [ %947, %795 ], [ 0.000000e+00, %482 ]
  %1025 = phi float [ %893, %795 ], [ 0.000000e+00, %482 ]
  %1026 = phi float [ %894, %795 ], [ 0.000000e+00, %482 ]
  %1027 = phi float [ %895, %795 ], [ 0.000000e+00, %482 ]
  %1028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1029 = extractvalue %dx.types.CBufRet.f32 %1028, 0
  %1030 = fcmp fast ogt float %1029, 0.000000e+00
  %1031 = and i1 %484, %1030
  br i1 %1031, label %1032, label %1239, !dx.controlflow.hints !110

; <label>:1032                                    ; preds = %1018
  %1033 = extractvalue %dx.types.CBufRet.f32 %439, 2
  %1034 = fadd fast float %1033, %360
  %1035 = fmul fast float %280, 3.200000e+01
  %1036 = fmul fast float %281, 3.200000e+01
  %1037 = fadd fast float %442, %1035
  %1038 = fadd fast float %443, %1036
  %1039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1040 = extractvalue %dx.types.CBufRet.f32 %1039, 0
  %1041 = extractvalue %dx.types.CBufRet.f32 %1039, 1
  %1042 = fsub fast float %1037, %1040
  %1043 = fsub fast float %1038, %1041
  %1044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1045 = extractvalue %dx.types.CBufRet.f32 %1044, 0
  %1046 = extractvalue %dx.types.CBufRet.f32 %1044, 1
  %1047 = fmul fast float %1042, %1045
  %1048 = fmul fast float %1043, %1046
  %1049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1050 = extractvalue %dx.types.CBufRet.f32 %1049, 0
  %1051 = extractvalue %dx.types.CBufRet.f32 %1049, 1
  %1052 = fsub fast float %442, %1050
  %1053 = fsub fast float %443, %1051
  %1054 = fmul fast float %1052, %1052
  %1055 = fmul fast float %1053, %1053
  %1056 = fadd fast float %1054, %1055
  %1057 = call float @dx.op.unary.f32(i32 24, float %1056)  ; Sqrt(value)
  %1058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1059 = extractvalue %dx.types.CBufRet.f32 %1058, 0
  %1060 = extractvalue %dx.types.CBufRet.f32 %1058, 1
  %1061 = fsub fast float %1057, %1059
  %1062 = fdiv fast float %1061, %1060
  %1063 = call float @dx.op.unary.f32(i32 7, float %1062)  ; Saturate(value)
  %1064 = fmul fast float %1063, 2.000000e+00
  %1065 = fsub fast float 3.000000e+00, %1064
  %1066 = fmul fast float %1063, %1063
  %1067 = fmul fast float %1066, %1065
  %1068 = fcmp fast oge float %1047, 0.000000e+00
  %1069 = fcmp fast ole float %1047, 1.000000e+00
  %1070 = and i1 %1069, %1068
  %1071 = fcmp fast oge float %1048, 0.000000e+00
  %1072 = and i1 %1071, %1070
  %1073 = fcmp fast ole float %1048, 1.000000e+00
  %1074 = and i1 %1073, %1072
  %1075 = fcmp fast ogt float %1067, 0.000000e+00
  %1076 = and i1 %1075, %1074
  br i1 %1076, label %1077, label %1200, !dx.controlflow.hints !111

; <label>:1077                                    ; preds = %1032
  %1078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1079 = extractvalue %dx.types.CBufRet.f32 %1078, 2
  %1080 = extractvalue %dx.types.CBufRet.f32 %1078, 3
  %1081 = fmul fast float %1079, %1047
  %1082 = fmul fast float %1080, %1048
  %1083 = call float @dx.op.unary.f32(i32 27, float %1081)  ; Round_ni(value)
  %1084 = call float @dx.op.unary.f32(i32 27, float %1082)  ; Round_ni(value)
  %1085 = fptosi float %1083 to i32
  %1086 = fptosi float %1084 to i32
  %1087 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %20, i32 0, i32 %1085, i32 %1086, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1088 = extractvalue %dx.types.ResRet.i32 %1087, 0
  %1089 = lshr i32 %1088, 16
  %1090 = icmp eq i32 %1089, 65535
  br i1 %1090, label %1200, label %1091

; <label>:1091                                    ; preds = %1077
  %1092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1093 = extractvalue %dx.types.CBufRet.f32 %1092, 0
  %1094 = fmul fast float %1093, %1047
  %1095 = extractvalue %dx.types.CBufRet.f32 %1092, 1
  %1096 = fadd fast float %1094, %1095
  %1097 = extractvalue %dx.types.CBufRet.f32 %1092, 2
  %1098 = fmul fast float %1097, %1048
  %1099 = extractvalue %dx.types.CBufRet.f32 %1092, 3
  %1100 = fadd fast float %1098, %1099
  %1101 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %38, float %1096, float %1100, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1102 = extractvalue %dx.types.ResRet.f32 %1101, 0
  %1103 = extractvalue %dx.types.ResRet.f32 %1101, 1
  %1104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1105 = extractvalue %dx.types.CBufRet.f32 %1104, 1
  %1106 = extractvalue %dx.types.CBufRet.f32 %1104, 0
  %1107 = fsub fast float %1105, %1106
  %1108 = fmul fast float %1107, %1102
  %1109 = fadd fast float %1108, %1106
  %1110 = extractvalue %dx.types.CBufRet.f32 %1104, 3
  %1111 = extractvalue %dx.types.CBufRet.f32 %1104, 2
  %1112 = fsub fast float %1110, %1111
  %1113 = fmul fast float %1112, %1103
  %1114 = fadd fast float %1113, %1111
  %1115 = fsub fast float %1034, %1109
  %1116 = fsub fast float %1114, %1109
  %1117 = fdiv fast float %1115, %1116
  %1118 = call float @dx.op.unary.f32(i32 7, float %1117)  ; Saturate(value)
  %1119 = extractvalue %dx.types.CBufRet.f32 %1028, 1
  %1120 = extractvalue %dx.types.CBufRet.f32 %1078, 0
  %1121 = extractvalue %dx.types.CBufRet.f32 %1078, 1
  %1122 = fmul fast float %1120, %1047
  %1123 = fmul fast float %1121, %1048
  %1124 = fmul fast float %1122, 1.250000e-01
  %1125 = fmul fast float %1123, 1.250000e-01
  %1126 = call float @dx.op.unary.f32(i32 27, float %1124)  ; Round_ni(value)
  %1127 = call float @dx.op.unary.f32(i32 27, float %1125)  ; Round_ni(value)
  %1128 = fmul fast float %1126, 8.000000e+00
  %1129 = fmul fast float %1127, 8.000000e+00
  %1130 = fsub fast float %1122, %1128
  %1131 = fsub fast float %1123, %1129
  %1132 = fadd fast float %1130, 5.000000e-01
  %1133 = fadd fast float %1131, 5.000000e-01
  %1134 = and i32 %1089, 255
  %1135 = lshr i32 %1088, 24
  %1136 = mul nuw nsw i32 %1134, 9
  %1137 = uitofp i32 %1136 to float
  %1138 = mul nuw nsw i32 %1135, 9
  %1139 = uitofp i32 %1138 to float
  %1140 = fadd fast float %1132, %1137
  %1141 = fadd fast float %1133, %1139
  %1142 = fdiv fast float %1140, %1029
  %1143 = fdiv fast float %1141, %1119
  %1144 = fmul fast float %1118, 4.375000e-01
  %1145 = fadd fast float %1144, 3.125000e-02
  %1146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %38, float %1142, float %1143, float %1145, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1147 = extractvalue %dx.types.ResRet.f32 %1146, 0
  %1148 = extractvalue %dx.types.ResRet.f32 %1146, 1
  %1149 = extractvalue %dx.types.ResRet.f32 %1146, 2
  %1150 = fadd fast float %1144, 5.312500e-01
  %1151 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %38, float %1142, float %1143, float %1150, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1152 = extractvalue %dx.types.ResRet.f32 %1151, 0
  %1153 = extractvalue %dx.types.ResRet.f32 %1151, 1
  %1154 = extractvalue %dx.types.ResRet.f32 %1151, 2
  %1155 = fmul fast float %1152, 2.000000e+00
  %1156 = fmul fast float %1153, 2.000000e+00
  %1157 = fmul fast float %1154, 2.000000e+00
  %1158 = fadd fast float %1155, -1.000000e+00
  %1159 = fadd fast float %1156, -1.000000e+00
  %1160 = fadd fast float %1157, -1.000000e+00
  %1161 = fmul fast float %1158, %1158
  %1162 = fmul fast float %1159, %1159
  %1163 = fadd fast float %1161, %1162
  %1164 = fmul fast float %1160, %1160
  %1165 = fadd fast float %1163, %1164
  %1166 = call float @dx.op.unary.f32(i32 24, float %1165)  ; Sqrt(value)
  %1167 = fcmp fast ogt float %1166, 0.000000e+00
  br i1 %1167, label %1168, label %1172

; <label>:1168                                    ; preds = %1091
  %1169 = fdiv fast float %1158, %1166
  %1170 = fdiv fast float %1159, %1166
  %1171 = fdiv fast float %1160, %1166
  br label %1172

; <label>:1172                                    ; preds = %1168, %1091
  %1173 = phi float [ %1169, %1168 ], [ 0.000000e+00, %1091 ]
  %1174 = phi float [ %1170, %1168 ], [ 0.000000e+00, %1091 ]
  %1175 = phi float [ %1171, %1168 ], [ 0.000000e+00, %1091 ]
  %1176 = call float @dx.op.dot3.f32(i32 55, float %1173, float %1174, float %1175, float %280, float %281, float %282)  ; Dot3(ax,ay,az,bx,by,bz)
  %1177 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1176)  ; FMax(a,b)
  %1178 = fmul fast float %1177, 0x400C5BF8A0000000
  %1179 = fmul fast float %1147, %1067
  %1180 = fmul fast float %1179, %1178
  %1181 = fmul fast float %1148, %1067
  %1182 = fmul fast float %1181, %1178
  %1183 = fmul fast float %1149, %1067
  %1184 = fmul fast float %1183, %1178
  %1185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1186 = extractvalue %dx.types.CBufRet.f32 %1185, 3
  %1187 = fmul fast float %1180, %1186
  %1188 = fmul fast float %1182, %1186
  %1189 = fmul fast float %1184, %1186
  %1190 = fcmp fast ogt float %1034, %1114
  br i1 %1190, label %1191, label %1200

; <label>:1191                                    ; preds = %1172
  %1192 = fmul fast float %1116, 0x3FC24924A0000000
  %1193 = fsub fast float %1034, %1114
  %1194 = fdiv fast float %1193, %1192
  %1195 = call float @dx.op.unary.f32(i32 7, float %1194)  ; Saturate(value)
  %1196 = fsub fast float 1.000000e+00, %1195
  %1197 = fmul fast float %1196, %1187
  %1198 = fmul fast float %1196, %1188
  %1199 = fmul fast float %1196, %1189
  br label %1200

; <label>:1200                                    ; preds = %1191, %1172, %1077, %1032
  %1201 = phi float [ %1199, %1191 ], [ %1189, %1172 ], [ 0.000000e+00, %1077 ], [ 0.000000e+00, %1032 ]
  %1202 = phi float [ %1198, %1191 ], [ %1188, %1172 ], [ 0.000000e+00, %1077 ], [ 0.000000e+00, %1032 ]
  %1203 = phi float [ %1197, %1191 ], [ %1187, %1172 ], [ 0.000000e+00, %1077 ], [ 0.000000e+00, %1032 ]
  %1204 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1203)  ; FMax(a,b)
  %1205 = fmul fast float %1204, 0x3FD20DD760000000
  %1206 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %435, float %436, float %437)  ; Dot3(ax,ay,az,bx,by,bz)
  %1207 = fmul fast float %1206, 0x3FDF454380000000
  %1208 = fmul fast float %1206, %1206
  %1209 = fmul fast float %1208, 0x3FEE471020000000
  %1210 = fadd fast float %1209, 0xBFD42F6020000000
  %1211 = call float @dx.op.dot3.f32(i32 55, float %1204, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1207, float %1210)  ; Dot3(ax,ay,az,bx,by,bz)
  %1212 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1202)  ; FMax(a,b)
  %1213 = fmul fast float %1212, 0x3FD20DD760000000
  %1214 = call float @dx.op.dot3.f32(i32 55, float %1212, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1207, float %1210)  ; Dot3(ax,ay,az,bx,by,bz)
  %1215 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1201)  ; FMax(a,b)
  %1216 = fmul fast float %1215, 0x3FD20DD760000000
  %1217 = call float @dx.op.dot3.f32(i32 55, float %1215, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1207, float %1210)  ; Dot3(ax,ay,az,bx,by,bz)
  %1218 = call float @dx.op.binary.f32(i32 35, float %1205, float 0.000000e+00)  ; FMax(a,b)
  %1219 = call float @dx.op.binary.f32(i32 35, float %1213, float 0.000000e+00)  ; FMax(a,b)
  %1220 = call float @dx.op.binary.f32(i32 35, float %1216, float 0.000000e+00)  ; FMax(a,b)
  %1221 = call float @dx.op.binary.f32(i32 35, float %1211, float 0.000000e+00)  ; FMax(a,b)
  %1222 = call float @dx.op.binary.f32(i32 35, float %1214, float 0.000000e+00)  ; FMax(a,b)
  %1223 = call float @dx.op.binary.f32(i32 35, float %1217, float 0.000000e+00)  ; FMax(a,b)
  %1224 = fmul fast float %1218, %483
  %1225 = fmul fast float %1219, %483
  %1226 = fmul fast float %1220, %483
  %1227 = fadd fast float %1224, %1025
  %1228 = fadd fast float %1225, %1026
  %1229 = fadd fast float %1226, %1027
  %1230 = fadd fast float %1224, %1022
  %1231 = fadd fast float %1225, %1023
  %1232 = fadd fast float %1226, %1024
  %1233 = fmul fast float %1221, %483
  %1234 = fmul fast float %1222, %483
  %1235 = fmul fast float %1223, %483
  %1236 = fadd fast float %1233, %1019
  %1237 = fadd fast float %1234, %1020
  %1238 = fadd fast float %1235, %1021
  br label %1239

; <label>:1239                                    ; preds = %1200, %1018
  %1240 = phi float [ %1236, %1200 ], [ %1019, %1018 ]
  %1241 = phi float [ %1237, %1200 ], [ %1020, %1018 ]
  %1242 = phi float [ %1238, %1200 ], [ %1021, %1018 ]
  %1243 = phi float [ %1230, %1200 ], [ %1022, %1018 ]
  %1244 = phi float [ %1231, %1200 ], [ %1023, %1018 ]
  %1245 = phi float [ %1232, %1200 ], [ %1024, %1018 ]
  %1246 = phi float [ %1227, %1200 ], [ %1025, %1018 ]
  %1247 = phi float [ %1228, %1200 ], [ %1026, %1018 ]
  %1248 = phi float [ %1229, %1200 ], [ %1027, %1018 ]
  %1249 = fcmp fast olt float %483, 1.000000e+00
  br i1 %1249, label %1250, label %2083, !dx.controlflow.hints !112

; <label>:1250                                    ; preds = %1239
  %1251 = extractvalue %dx.types.CBufRet.f32 %439, 2
  %1252 = fadd fast float %1251, %360
  %1253 = fmul fast float %280, 3.200000e+01
  %1254 = fmul fast float %281, 3.200000e+01
  %1255 = fadd fast float %442, %1253
  %1256 = fadd fast float %443, %1254
  %1257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1258 = extractvalue %dx.types.CBufRet.f32 %1257, 0
  %1259 = extractvalue %dx.types.CBufRet.f32 %1257, 1
  %1260 = fsub fast float %1255, %1258
  %1261 = fsub fast float %1256, %1259
  %1262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1263 = extractvalue %dx.types.CBufRet.f32 %1262, 0
  %1264 = extractvalue %dx.types.CBufRet.f32 %1262, 1
  %1265 = fmul fast float %1260, %1263
  %1266 = fmul fast float %1261, %1264
  %1267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1268 = extractvalue %dx.types.CBufRet.f32 %1267, 0
  %1269 = fmul fast float %1265, %1268
  %1270 = extractvalue %dx.types.CBufRet.f32 %1267, 1
  %1271 = fadd fast float %1269, %1270
  %1272 = extractvalue %dx.types.CBufRet.f32 %1267, 2
  %1273 = fmul fast float %1272, %1266
  %1274 = extractvalue %dx.types.CBufRet.f32 %1267, 3
  %1275 = fadd fast float %1273, %1274
  %1276 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %38, float %1271, float %1275, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1277 = extractvalue %dx.types.ResRet.f32 %1276, 0
  %1278 = extractvalue %dx.types.ResRet.f32 %1276, 1
  %1279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1280 = extractvalue %dx.types.CBufRet.f32 %1279, 1
  %1281 = extractvalue %dx.types.CBufRet.f32 %1279, 0
  %1282 = fsub fast float %1280, %1281
  %1283 = fmul fast float %1282, %1277
  %1284 = fadd fast float %1283, %1281
  %1285 = extractvalue %dx.types.CBufRet.f32 %1279, 3
  %1286 = extractvalue %dx.types.CBufRet.f32 %1279, 2
  %1287 = fsub fast float %1285, %1286
  %1288 = fmul fast float %1287, %1278
  %1289 = fadd fast float %1288, %1286
  %1290 = fsub fast float %1252, %1284
  %1291 = fsub fast float %1289, %1284
  %1292 = fdiv fast float %1290, %1291
  %1293 = call float @dx.op.unary.f32(i32 7, float %1292)  ; Saturate(value)
  %1294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1295 = extractvalue %dx.types.CBufRet.f32 %1294, 0
  %1296 = fmul fast float %1295, %1293
  %1297 = extractvalue %dx.types.CBufRet.f32 %1294, 1
  %1298 = fadd fast float %1296, %1297
  %1299 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %38, float %1271, float %1275, float %1298, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1300 = extractvalue %dx.types.ResRet.f32 %1299, 0
  %1301 = extractvalue %dx.types.ResRet.f32 %1299, 1
  %1302 = extractvalue %dx.types.ResRet.f32 %1299, 2
  %1303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1304 = extractvalue %dx.types.CBufRet.f32 %1303, 0
  %1305 = extractvalue %dx.types.CBufRet.f32 %1303, 1
  %1306 = extractvalue %dx.types.CBufRet.f32 %1303, 2
  %1307 = fmul fast float %1304, %1300
  %1308 = fmul fast float %1305, %1301
  %1309 = fmul fast float %1306, %1302
  %1310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1311 = extractvalue %dx.types.CBufRet.f32 %1310, 0
  %1312 = extractvalue %dx.types.CBufRet.f32 %1310, 1
  %1313 = extractvalue %dx.types.CBufRet.f32 %1310, 2
  %1314 = fadd fast float %1307, %1311
  %1315 = fadd fast float %1308, %1312
  %1316 = fadd fast float %1309, %1313
  %1317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1318 = extractvalue %dx.types.CBufRet.f32 %1317, 0
  %1319 = fmul fast float %1318, %1265
  %1320 = extractvalue %dx.types.CBufRet.f32 %1317, 1
  %1321 = fadd fast float %1319, %1320
  %1322 = extractvalue %dx.types.CBufRet.f32 %1317, 2
  %1323 = fmul fast float %1322, %1266
  %1324 = extractvalue %dx.types.CBufRet.f32 %1317, 3
  %1325 = fadd fast float %1323, %1324
  %1326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1327 = extractvalue %dx.types.CBufRet.f32 %1326, 0
  %1328 = extractvalue %dx.types.CBufRet.f32 %1326, 1
  %1329 = extractvalue %dx.types.CBufRet.f32 %1326, 2
  %1330 = extractvalue %dx.types.CBufRet.f32 %1326, 3
  %1331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1332 = extractvalue %dx.types.CBufRet.f32 %1331, 0
  %1333 = extractvalue %dx.types.CBufRet.f32 %1331, 1
  %1334 = extractvalue %dx.types.CBufRet.f32 %1331, 2
  %1335 = extractvalue %dx.types.CBufRet.f32 %1331, 3
  %1336 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %38, float %1321, float %1325, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1337 = extractvalue %dx.types.ResRet.f32 %1336, 0
  %1338 = extractvalue %dx.types.ResRet.f32 %1336, 1
  %1339 = extractvalue %dx.types.ResRet.f32 %1336, 2
  %1340 = extractvalue %dx.types.ResRet.f32 %1336, 3
  %1341 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %38, float %1321, float %1325, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1342 = extractvalue %dx.types.ResRet.f32 %1341, 0
  %1343 = extractvalue %dx.types.ResRet.f32 %1341, 1
  %1344 = extractvalue %dx.types.ResRet.f32 %1341, 2
  %1345 = extractvalue %dx.types.ResRet.f32 %1341, 3
  %1346 = fmul fast float %1337, %1314
  %1347 = fmul fast float %1342, %1314
  %1348 = fmul fast float %1344, %1314
  %1349 = fmul fast float %1340, %1314
  %1350 = fadd fast float %1346, %1327
  %1351 = fadd fast float %1347, %1328
  %1352 = fadd fast float %1348, %1329
  %1353 = fadd fast float %1349, %1330
  %1354 = fmul fast float %1338, %1314
  %1355 = fmul fast float %1343, %1314
  %1356 = fadd fast float %1354, %1332
  %1357 = fadd fast float %1355, %1333
  %1358 = fmul fast float %1339, %1314
  %1359 = fmul fast float %1345, %1314
  %1360 = fadd fast float %1358, %1334
  %1361 = fadd fast float %1359, %1335
  %1362 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %38, float %1321, float %1325, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1363 = extractvalue %dx.types.ResRet.f32 %1362, 0
  %1364 = extractvalue %dx.types.ResRet.f32 %1362, 1
  %1365 = extractvalue %dx.types.ResRet.f32 %1362, 2
  %1366 = extractvalue %dx.types.ResRet.f32 %1362, 3
  %1367 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %38, float %1321, float %1325, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1368 = extractvalue %dx.types.ResRet.f32 %1367, 0
  %1369 = extractvalue %dx.types.ResRet.f32 %1367, 1
  %1370 = extractvalue %dx.types.ResRet.f32 %1367, 2
  %1371 = extractvalue %dx.types.ResRet.f32 %1367, 3
  %1372 = fmul fast float %1363, %1315
  %1373 = fmul fast float %1368, %1315
  %1374 = fmul fast float %1370, %1315
  %1375 = fmul fast float %1366, %1315
  %1376 = fadd fast float %1350, %1372
  %1377 = fadd fast float %1351, %1373
  %1378 = fadd fast float %1352, %1374
  %1379 = fadd fast float %1353, %1375
  %1380 = fmul fast float %1364, %1315
  %1381 = fmul fast float %1369, %1315
  %1382 = fadd fast float %1356, %1380
  %1383 = fadd fast float %1357, %1381
  %1384 = fmul fast float %1365, %1315
  %1385 = fmul fast float %1371, %1315
  %1386 = fadd fast float %1360, %1384
  %1387 = fadd fast float %1361, %1385
  %1388 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %38, float %1321, float %1325, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1389 = extractvalue %dx.types.ResRet.f32 %1388, 0
  %1390 = extractvalue %dx.types.ResRet.f32 %1388, 1
  %1391 = extractvalue %dx.types.ResRet.f32 %1388, 2
  %1392 = extractvalue %dx.types.ResRet.f32 %1388, 3
  %1393 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %38, float %1321, float %1325, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1394 = extractvalue %dx.types.ResRet.f32 %1393, 0
  %1395 = extractvalue %dx.types.ResRet.f32 %1393, 1
  %1396 = extractvalue %dx.types.ResRet.f32 %1393, 2
  %1397 = extractvalue %dx.types.ResRet.f32 %1393, 3
  %1398 = fmul fast float %1389, %1316
  %1399 = fmul fast float %1394, %1316
  %1400 = fmul fast float %1396, %1316
  %1401 = fmul fast float %1392, %1316
  %1402 = fadd fast float %1376, %1398
  %1403 = fadd fast float %1377, %1399
  %1404 = fadd fast float %1378, %1400
  %1405 = fadd fast float %1379, %1401
  %1406 = fmul fast float %1390, %1316
  %1407 = fmul fast float %1395, %1316
  %1408 = fadd fast float %1382, %1406
  %1409 = fadd fast float %1383, %1407
  %1410 = fmul fast float %1391, %1316
  %1411 = fmul fast float %1397, %1316
  %1412 = fadd fast float %1386, %1410
  %1413 = fadd fast float %1387, %1411
  %1414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1415 = extractvalue %dx.types.CBufRet.f32 %1414, 0
  %1416 = fsub fast float %442, %1415
  %1417 = fsub fast float %1258, %442
  %1418 = call float @dx.op.binary.f32(i32 35, float %1417, float %1416)  ; FMax(a,b)
  %1419 = extractvalue %dx.types.CBufRet.f32 %1414, 1
  %1420 = fsub fast float %443, %1419
  %1421 = fsub fast float %1259, %443
  %1422 = call float @dx.op.binary.f32(i32 35, float %1421, float %1420)  ; FMax(a,b)
  %1423 = call float @dx.op.binary.f32(i32 35, float %1418, float %1422)  ; FMax(a,b)
  %1424 = extractvalue %dx.types.CBufRet.f32 %1262, 3
  %1425 = fmul fast float %1424, %1423
  %1426 = call float @dx.op.unary.f32(i32 7, float %1425)  ; Saturate(value)
  %1427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1428 = extractvalue %dx.types.CBufRet.f32 %1427, 0
  %1429 = extractvalue %dx.types.CBufRet.f32 %1427, 1
  %1430 = extractvalue %dx.types.CBufRet.f32 %1427, 2
  %1431 = extractvalue %dx.types.CBufRet.f32 %1427, 3
  %1432 = fsub fast float %1428, %1402
  %1433 = fsub fast float %1429, %1403
  %1434 = fsub fast float %1430, %1404
  %1435 = fsub fast float %1431, %1405
  %1436 = fmul fast float %1432, %1426
  %1437 = fmul fast float %1433, %1426
  %1438 = fmul fast float %1434, %1426
  %1439 = fmul fast float %1435, %1426
  %1440 = fadd fast float %1436, %1402
  %1441 = fadd fast float %1437, %1403
  %1442 = fadd fast float %1438, %1404
  %1443 = fadd fast float %1439, %1405
  %1444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1445 = extractvalue %dx.types.CBufRet.f32 %1444, 0
  %1446 = extractvalue %dx.types.CBufRet.f32 %1444, 1
  %1447 = fsub fast float %1445, %1408
  %1448 = fsub fast float %1446, %1409
  %1449 = fmul fast float %1447, %1426
  %1450 = fmul fast float %1448, %1426
  %1451 = fadd fast float %1449, %1408
  %1452 = fadd fast float %1450, %1409
  %1453 = extractvalue %dx.types.CBufRet.f32 %1444, 2
  %1454 = extractvalue %dx.types.CBufRet.f32 %1444, 3
  %1455 = fsub fast float %1453, %1412
  %1456 = fsub fast float %1454, %1413
  %1457 = fmul fast float %1455, %1426
  %1458 = fmul fast float %1456, %1426
  %1459 = fadd fast float %1457, %1412
  %1460 = fadd fast float %1458, %1413
  %1461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1462 = extractvalue %dx.types.CBufRet.f32 %1461, 0
  %1463 = fmul fast float %1462, %1440
  %1464 = fmul fast float %1462, %1441
  %1465 = fmul fast float %1462, %1442
  %1466 = fmul fast float %1462, %1443
  %1467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1468 = extractvalue %dx.types.CBufRet.f32 %1467, 0
  %1469 = fmul fast float %1468, %1451
  %1470 = fmul fast float %1468, %1452
  %1471 = fadd fast float %1469, %1463
  %1472 = fadd fast float %1470, %1465
  %1473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1474 = extractvalue %dx.types.CBufRet.f32 %1473, 0
  %1475 = fmul fast float %1474, %1459
  %1476 = fmul fast float %1474, %1460
  %1477 = fadd fast float %1471, %1475
  %1478 = fadd fast float %1472, %1476
  %1479 = extractvalue %dx.types.CBufRet.f32 %1461, 1
  %1480 = fmul fast float %1479, %1440
  %1481 = fmul fast float %1479, %1441
  %1482 = fmul fast float %1479, %1442
  %1483 = fmul fast float %1479, %1443
  %1484 = extractvalue %dx.types.CBufRet.f32 %1467, 1
  %1485 = fmul fast float %1484, %1451
  %1486 = fmul fast float %1484, %1452
  %1487 = fadd fast float %1485, %1480
  %1488 = fadd fast float %1486, %1482
  %1489 = extractvalue %dx.types.CBufRet.f32 %1473, 1
  %1490 = fmul fast float %1489, %1459
  %1491 = fmul fast float %1489, %1460
  %1492 = fadd fast float %1487, %1490
  %1493 = fadd fast float %1488, %1491
  %1494 = extractvalue %dx.types.CBufRet.f32 %1461, 2
  %1495 = fmul fast float %1494, %1440
  %1496 = fmul fast float %1494, %1441
  %1497 = fmul fast float %1494, %1442
  %1498 = fmul fast float %1494, %1443
  %1499 = extractvalue %dx.types.CBufRet.f32 %1467, 2
  %1500 = fmul fast float %1499, %1451
  %1501 = fmul fast float %1499, %1452
  %1502 = fadd fast float %1500, %1495
  %1503 = fadd fast float %1501, %1497
  %1504 = extractvalue %dx.types.CBufRet.f32 %1473, 2
  %1505 = fmul fast float %1504, %1459
  %1506 = fmul fast float %1504, %1460
  %1507 = fadd fast float %1502, %1505
  %1508 = fadd fast float %1503, %1506
  %1509 = fmul fast float %1496, %1496
  %1510 = fmul fast float %1508, %1508
  %1511 = fmul fast float %1498, %1498
  %1512 = fadd fast float %1511, %1509
  %1513 = fadd fast float %1512, %1510
  %1514 = call float @dx.op.unary.f32(i32 24, float %1513)  ; Sqrt(value)
  %1515 = fcmp fast ugt float %1514, 0.000000e+00
  br i1 %1515, label %1516, label %1531

; <label>:1516                                    ; preds = %1250
  %1517 = fsub fast float -0.000000e+00, %1498
  %1518 = fdiv fast float %1517, %1514
  %1519 = fsub fast float -0.000000e+00, %1496
  %1520 = fdiv fast float %1519, %1514
  %1521 = fdiv fast float %1508, %1514
  %1522 = fmul fast float %1507, 0x3FE279A760000000
  %1523 = fmul fast float %1520, %1496
  %1524 = fmul fast float %1521, %1508
  %1525 = fmul fast float %1518, %1498
  %1526 = fadd fast float %1523, %1525
  %1527 = fsub fast float %1526, %1524
  %1528 = call float @dx.op.unary.f32(i32 6, float %1527)  ; FAbs(value)
  %1529 = fadd fast float %1528, 0x3DDB7CDFE0000000
  %1530 = fdiv fast float %1522, %1529
  br label %1531

; <label>:1531                                    ; preds = %1516, %1250
  %1532 = phi float [ %1530, %1516 ], [ 1.000000e+00, %1250 ]
  %1533 = fmul fast float %1481, %1481
  %1534 = fmul fast float %1493, %1493
  %1535 = fmul fast float %1483, %1483
  %1536 = fadd fast float %1535, %1533
  %1537 = fadd fast float %1536, %1534
  %1538 = call float @dx.op.unary.f32(i32 24, float %1537)  ; Sqrt(value)
  %1539 = fcmp fast ugt float %1538, 0.000000e+00
  br i1 %1539, label %1540, label %1555

; <label>:1540                                    ; preds = %1531
  %1541 = fsub fast float -0.000000e+00, %1483
  %1542 = fdiv fast float %1541, %1538
  %1543 = fsub fast float -0.000000e+00, %1481
  %1544 = fdiv fast float %1543, %1538
  %1545 = fdiv fast float %1493, %1538
  %1546 = fmul fast float %1492, 0x3FE279A760000000
  %1547 = fmul fast float %1544, %1481
  %1548 = fmul fast float %1545, %1493
  %1549 = fmul fast float %1542, %1483
  %1550 = fadd fast float %1547, %1549
  %1551 = fsub fast float %1550, %1548
  %1552 = call float @dx.op.unary.f32(i32 6, float %1551)  ; FAbs(value)
  %1553 = fadd fast float %1552, 0x3DDB7CDFE0000000
  %1554 = fdiv fast float %1546, %1553
  br label %1555

; <label>:1555                                    ; preds = %1540, %1531
  %1556 = phi float [ %1554, %1540 ], [ 1.000000e+00, %1531 ]
  %1557 = call float @dx.op.binary.f32(i32 36, float %1556, float %1532)  ; FMin(a,b)
  %1558 = fmul fast float %1464, %1464
  %1559 = fmul fast float %1478, %1478
  %1560 = fmul fast float %1466, %1466
  %1561 = fadd fast float %1560, %1558
  %1562 = fadd fast float %1561, %1559
  %1563 = call float @dx.op.unary.f32(i32 24, float %1562)  ; Sqrt(value)
  %1564 = fcmp fast ugt float %1563, 0.000000e+00
  br i1 %1564, label %1565, label %1580

; <label>:1565                                    ; preds = %1555
  %1566 = fsub fast float -0.000000e+00, %1466
  %1567 = fdiv fast float %1566, %1563
  %1568 = fsub fast float -0.000000e+00, %1464
  %1569 = fdiv fast float %1568, %1563
  %1570 = fdiv fast float %1478, %1563
  %1571 = fmul fast float %1477, 0x3FE279A760000000
  %1572 = fmul fast float %1569, %1464
  %1573 = fmul fast float %1570, %1478
  %1574 = fmul fast float %1567, %1466
  %1575 = fadd fast float %1572, %1574
  %1576 = fsub fast float %1575, %1573
  %1577 = call float @dx.op.unary.f32(i32 6, float %1576)  ; FAbs(value)
  %1578 = fadd fast float %1577, 0x3DDB7CDFE0000000
  %1579 = fdiv fast float %1571, %1578
  br label %1580

; <label>:1580                                    ; preds = %1565, %1555
  %1581 = phi float [ %1579, %1565 ], [ 1.000000e+00, %1555 ]
  %1582 = call float @dx.op.binary.f32(i32 36, float %1581, float %1557)  ; FMin(a,b)
  %1583 = call float @dx.op.unary.f32(i32 7, float %1582)  ; Saturate(value)
  %1584 = fcmp fast olt float %1583, 1.000000e+00
  br i1 %1584, label %1585, label %1595

; <label>:1585                                    ; preds = %1580
  %1586 = fmul fast float %1583, %1464
  %1587 = fmul fast float %1583, %1478
  %1588 = fmul fast float %1583, %1466
  %1589 = fmul fast float %1583, %1481
  %1590 = fmul fast float %1583, %1493
  %1591 = fmul fast float %1583, %1483
  %1592 = fmul fast float %1583, %1496
  %1593 = fmul fast float %1583, %1508
  %1594 = fmul fast float %1583, %1498
  br label %1595

; <label>:1595                                    ; preds = %1585, %1580
  %1596 = phi float [ %1592, %1585 ], [ %1496, %1580 ]
  %1597 = phi float [ %1593, %1585 ], [ %1508, %1580 ]
  %1598 = phi float [ %1594, %1585 ], [ %1498, %1580 ]
  %1599 = phi float [ %1589, %1585 ], [ %1481, %1580 ]
  %1600 = phi float [ %1590, %1585 ], [ %1493, %1580 ]
  %1601 = phi float [ %1591, %1585 ], [ %1483, %1580 ]
  %1602 = phi float [ %1586, %1585 ], [ %1464, %1580 ]
  %1603 = phi float [ %1587, %1585 ], [ %1478, %1580 ]
  %1604 = phi float [ %1588, %1585 ], [ %1466, %1580 ]
  %1605 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1477)  ; FMax(a,b)
  %1606 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1492)  ; FMax(a,b)
  %1607 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1507)  ; FMax(a,b)
  %1608 = fcmp fast oge float %1265, 0.000000e+00
  %1609 = and i1 %1608, %1030
  %1610 = fcmp fast ole float %1265, 1.000000e+00
  %1611 = and i1 %1610, %1609
  %1612 = fcmp fast oge float %1266, 0.000000e+00
  %1613 = and i1 %1612, %1611
  %1614 = fcmp fast ole float %1266, 1.000000e+00
  %1615 = and i1 %1614, %1613
  br i1 %1615, label %1616, label %1761, !dx.controlflow.hints !113

; <label>:1616                                    ; preds = %1595
  %1617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1618 = extractvalue %dx.types.CBufRet.f32 %1617, 2
  %1619 = extractvalue %dx.types.CBufRet.f32 %1617, 3
  %1620 = fmul fast float %1618, %1265
  %1621 = fmul fast float %1619, %1266
  %1622 = call float @dx.op.unary.f32(i32 27, float %1620)  ; Round_ni(value)
  %1623 = call float @dx.op.unary.f32(i32 27, float %1621)  ; Round_ni(value)
  %1624 = fptosi float %1622 to i32
  %1625 = fptosi float %1623 to i32
  %1626 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %20, i32 0, i32 %1624, i32 %1625, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1627 = extractvalue %dx.types.ResRet.i32 %1626, 0
  %1628 = and i32 %1627, 65535
  %1629 = lshr i32 %1627, 16
  %1630 = icmp eq i32 %1628, 65535
  br i1 %1630, label %1667, label %1631

; <label>:1631                                    ; preds = %1616
  %1632 = extractvalue %dx.types.CBufRet.f32 %1028, 1
  %1633 = extractvalue %dx.types.CBufRet.f32 %1617, 0
  %1634 = extractvalue %dx.types.CBufRet.f32 %1617, 1
  %1635 = fmul fast float %1633, %1265
  %1636 = fmul fast float %1634, %1266
  %1637 = fmul fast float %1635, 1.250000e-01
  %1638 = fmul fast float %1636, 1.250000e-01
  %1639 = call float @dx.op.unary.f32(i32 27, float %1637)  ; Round_ni(value)
  %1640 = call float @dx.op.unary.f32(i32 27, float %1638)  ; Round_ni(value)
  %1641 = fmul fast float %1639, 8.000000e+00
  %1642 = fmul fast float %1640, 8.000000e+00
  %1643 = and i32 %1627, 255
  %1644 = lshr i32 %1627, 8
  %1645 = and i32 %1644, 255
  %1646 = mul nuw nsw i32 %1643, 9
  %1647 = uitofp i32 %1646 to float
  %1648 = mul nuw nsw i32 %1645, 9
  %1649 = uitofp i32 %1648 to float
  %1650 = fadd fast float %1647, 5.000000e-01
  %1651 = fadd fast float %1650, %1635
  %1652 = fsub fast float %1651, %1641
  %1653 = fadd fast float %1649, 5.000000e-01
  %1654 = fadd fast float %1653, %1636
  %1655 = fsub fast float %1654, %1642
  %1656 = fdiv fast float %1652, %1029
  %1657 = fdiv fast float %1655, %1632
  %1658 = fmul fast float %1293, 4.375000e-01
  %1659 = fadd fast float %1658, 3.125000e-02
  %1660 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %38, float %1656, float %1657, float %1659, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1661 = extractvalue %dx.types.ResRet.f32 %1660, 0
  %1662 = extractvalue %dx.types.ResRet.f32 %1660, 1
  %1663 = extractvalue %dx.types.ResRet.f32 %1660, 2
  %1664 = fadd fast float %1661, %1605
  %1665 = fadd fast float %1662, %1606
  %1666 = fadd fast float %1663, %1607
  br label %1667

; <label>:1667                                    ; preds = %1631, %1616
  %1668 = phi float [ %1666, %1631 ], [ %1607, %1616 ]
  %1669 = phi float [ %1665, %1631 ], [ %1606, %1616 ]
  %1670 = phi float [ %1664, %1631 ], [ %1605, %1616 ]
  %1671 = icmp eq i32 %1629, 65535
  br i1 %1671, label %1761, label %1672

; <label>:1672                                    ; preds = %1667
  %1673 = extractvalue %dx.types.CBufRet.f32 %1028, 1
  %1674 = extractvalue %dx.types.CBufRet.f32 %1617, 0
  %1675 = extractvalue %dx.types.CBufRet.f32 %1617, 1
  %1676 = fmul fast float %1674, %1265
  %1677 = fmul fast float %1675, %1266
  %1678 = fmul fast float %1676, 1.250000e-01
  %1679 = fmul fast float %1677, 1.250000e-01
  %1680 = call float @dx.op.unary.f32(i32 27, float %1678)  ; Round_ni(value)
  %1681 = call float @dx.op.unary.f32(i32 27, float %1679)  ; Round_ni(value)
  %1682 = fmul fast float %1680, 8.000000e+00
  %1683 = fmul fast float %1681, 8.000000e+00
  %1684 = fsub fast float %1676, %1682
  %1685 = fsub fast float %1677, %1683
  %1686 = fadd fast float %1684, 5.000000e-01
  %1687 = fadd fast float %1685, 5.000000e-01
  %1688 = and i32 %1629, 255
  %1689 = lshr i32 %1627, 24
  %1690 = mul nuw nsw i32 %1688, 9
  %1691 = uitofp i32 %1690 to float
  %1692 = mul nuw nsw i32 %1689, 9
  %1693 = uitofp i32 %1692 to float
  %1694 = fadd fast float %1686, %1691
  %1695 = fadd fast float %1687, %1693
  %1696 = fdiv fast float %1694, %1029
  %1697 = fdiv fast float %1695, %1673
  %1698 = fmul fast float %1293, 4.375000e-01
  %1699 = fadd fast float %1698, 3.125000e-02
  %1700 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %38, float %1696, float %1697, float %1699, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1701 = extractvalue %dx.types.ResRet.f32 %1700, 0
  %1702 = extractvalue %dx.types.ResRet.f32 %1700, 1
  %1703 = extractvalue %dx.types.ResRet.f32 %1700, 2
  %1704 = fadd fast float %1698, 5.312500e-01
  %1705 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %38, float %1696, float %1697, float %1704, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1706 = extractvalue %dx.types.ResRet.f32 %1705, 0
  %1707 = extractvalue %dx.types.ResRet.f32 %1705, 1
  %1708 = extractvalue %dx.types.ResRet.f32 %1705, 2
  %1709 = fmul fast float %1706, 2.000000e+00
  %1710 = fmul fast float %1707, 2.000000e+00
  %1711 = fmul fast float %1708, 2.000000e+00
  %1712 = fadd fast float %1709, -1.000000e+00
  %1713 = fadd fast float %1710, -1.000000e+00
  %1714 = fadd fast float %1711, -1.000000e+00
  %1715 = fmul fast float %1712, %1712
  %1716 = fmul fast float %1713, %1713
  %1717 = fadd fast float %1715, %1716
  %1718 = fmul fast float %1714, %1714
  %1719 = fadd fast float %1717, %1718
  %1720 = call float @dx.op.unary.f32(i32 24, float %1719)  ; Sqrt(value)
  %1721 = fcmp fast ogt float %1720, 0.000000e+00
  br i1 %1721, label %1722, label %1726

; <label>:1722                                    ; preds = %1672
  %1723 = fdiv fast float %1712, %1720
  %1724 = fdiv fast float %1713, %1720
  %1725 = fdiv fast float %1714, %1720
  br label %1726

; <label>:1726                                    ; preds = %1722, %1672
  %1727 = phi float [ %1723, %1722 ], [ 0.000000e+00, %1672 ]
  %1728 = phi float [ %1724, %1722 ], [ 0.000000e+00, %1672 ]
  %1729 = phi float [ %1725, %1722 ], [ 0.000000e+00, %1672 ]
  %1730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1731 = extractvalue %dx.types.CBufRet.f32 %1730, 0
  %1732 = extractvalue %dx.types.CBufRet.f32 %1730, 1
  %1733 = fsub fast float %442, %1731
  %1734 = fsub fast float %443, %1732
  %1735 = fmul fast float %1733, %1733
  %1736 = fmul fast float %1734, %1734
  %1737 = fadd fast float %1735, %1736
  %1738 = call float @dx.op.unary.f32(i32 24, float %1737)  ; Sqrt(value)
  %1739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1740 = extractvalue %dx.types.CBufRet.f32 %1739, 0
  %1741 = extractvalue %dx.types.CBufRet.f32 %1739, 1
  %1742 = fsub fast float %1738, %1740
  %1743 = fdiv fast float %1742, %1741
  %1744 = call float @dx.op.unary.f32(i32 7, float %1743)  ; Saturate(value)
  %1745 = fmul fast float %1744, 2.000000e+00
  %1746 = fsub fast float 3.000000e+00, %1745
  %1747 = fmul fast float %1744, %1744
  %1748 = fmul fast float %1747, %1746
  %1749 = call float @dx.op.dot3.f32(i32 55, float %1727, float %1728, float %1729, float %280, float %281, float %282)  ; Dot3(ax,ay,az,bx,by,bz)
  %1750 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1749)  ; FMax(a,b)
  %1751 = fmul fast float %1750, 0x400C5BF8A0000000
  %1752 = fmul fast float %1748, %1701
  %1753 = fmul fast float %1752, %1751
  %1754 = fadd fast float %1753, %1670
  %1755 = fmul fast float %1748, %1702
  %1756 = fmul fast float %1755, %1751
  %1757 = fadd fast float %1756, %1669
  %1758 = fmul fast float %1748, %1703
  %1759 = fmul fast float %1758, %1751
  %1760 = fadd fast float %1759, %1668
  br label %1761

; <label>:1761                                    ; preds = %1726, %1667, %1595
  %1762 = phi float [ %1760, %1726 ], [ %1668, %1667 ], [ %1607, %1595 ]
  %1763 = phi float [ %1757, %1726 ], [ %1669, %1667 ], [ %1606, %1595 ]
  %1764 = phi float [ %1754, %1726 ], [ %1670, %1667 ], [ %1605, %1595 ]
  %1765 = fcmp fast ogt float %1252, %1289
  %1766 = and i1 %1608, %1765
  %1767 = and i1 %1610, %1766
  %1768 = and i1 %1612, %1767
  %1769 = and i1 %1614, %1768
  br i1 %1769, label %1770, label %1827, !dx.controlflow.hints !114

; <label>:1770                                    ; preds = %1761
  %1771 = fmul fast float %1291, 0x3FC24924A0000000
  %1772 = fsub fast float %1252, %1289
  %1773 = fdiv fast float %1772, %1771
  %1774 = call float @dx.op.unary.f32(i32 7, float %1773)  ; Saturate(value)
  %1775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1776 = extractvalue %dx.types.CBufRet.f32 %1775, 0
  %1777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1778 = extractvalue %dx.types.CBufRet.f32 %1777, 0
  %1779 = extractvalue %dx.types.CBufRet.f32 %1777, 1
  %1780 = extractvalue %dx.types.CBufRet.f32 %1777, 2
  %1781 = fsub fast float %1776, %1764
  %1782 = fsub fast float %1778, %1602
  %1783 = fsub fast float %1779, %1603
  %1784 = fsub fast float %1780, %1604
  %1785 = fmul fast float %1781, %1774
  %1786 = fmul fast float %1782, %1774
  %1787 = fmul fast float %1783, %1774
  %1788 = fmul fast float %1784, %1774
  %1789 = fadd fast float %1785, %1764
  %1790 = fadd fast float %1786, %1602
  %1791 = fadd fast float %1787, %1603
  %1792 = fadd fast float %1788, %1604
  %1793 = extractvalue %dx.types.CBufRet.f32 %1775, 1
  %1794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1795 = extractvalue %dx.types.CBufRet.f32 %1794, 0
  %1796 = extractvalue %dx.types.CBufRet.f32 %1794, 1
  %1797 = extractvalue %dx.types.CBufRet.f32 %1794, 2
  %1798 = fsub fast float %1793, %1763
  %1799 = fsub fast float %1795, %1599
  %1800 = fsub fast float %1796, %1600
  %1801 = fsub fast float %1797, %1601
  %1802 = fmul fast float %1798, %1774
  %1803 = fmul fast float %1799, %1774
  %1804 = fmul fast float %1800, %1774
  %1805 = fmul fast float %1801, %1774
  %1806 = fadd fast float %1802, %1763
  %1807 = fadd fast float %1803, %1599
  %1808 = fadd fast float %1804, %1600
  %1809 = fadd fast float %1805, %1601
  %1810 = extractvalue %dx.types.CBufRet.f32 %1775, 2
  %1811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1812 = extractvalue %dx.types.CBufRet.f32 %1811, 0
  %1813 = extractvalue %dx.types.CBufRet.f32 %1811, 1
  %1814 = extractvalue %dx.types.CBufRet.f32 %1811, 2
  %1815 = fsub fast float %1810, %1762
  %1816 = fsub fast float %1812, %1596
  %1817 = fsub fast float %1813, %1597
  %1818 = fsub fast float %1814, %1598
  %1819 = fmul fast float %1815, %1774
  %1820 = fmul fast float %1816, %1774
  %1821 = fmul fast float %1817, %1774
  %1822 = fmul fast float %1818, %1774
  %1823 = fadd fast float %1819, %1762
  %1824 = fadd fast float %1820, %1596
  %1825 = fadd fast float %1821, %1597
  %1826 = fadd fast float %1822, %1598
  br label %1827

; <label>:1827                                    ; preds = %1770, %1761
  %1828 = phi float [ %1823, %1770 ], [ %1762, %1761 ]
  %1829 = phi float [ %1824, %1770 ], [ %1596, %1761 ]
  %1830 = phi float [ %1825, %1770 ], [ %1597, %1761 ]
  %1831 = phi float [ %1826, %1770 ], [ %1598, %1761 ]
  %1832 = phi float [ %1806, %1770 ], [ %1763, %1761 ]
  %1833 = phi float [ %1807, %1770 ], [ %1599, %1761 ]
  %1834 = phi float [ %1808, %1770 ], [ %1600, %1761 ]
  %1835 = phi float [ %1809, %1770 ], [ %1601, %1761 ]
  %1836 = phi float [ %1789, %1770 ], [ %1764, %1761 ]
  %1837 = phi float [ %1790, %1770 ], [ %1602, %1761 ]
  %1838 = phi float [ %1791, %1770 ], [ %1603, %1761 ]
  %1839 = phi float [ %1792, %1770 ], [ %1604, %1761 ]
  %1840 = extractvalue %dx.types.CBufRet.f32 %1414, 3
  %1841 = fmul fast float %1840, %1836
  %1842 = fmul fast float %1840, %1832
  %1843 = fmul fast float %1840, %1828
  %1844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1845 = extractvalue %dx.types.CBufRet.f32 %1844, 3
  %1846 = fmul fast float %1841, %1845
  %1847 = fmul fast float %1842, %1845
  %1848 = fmul fast float %1843, %1845
  %1849 = fmul fast float %1837, 1.500000e+00
  %1850 = fmul fast float %1849, %1840
  %1851 = fmul fast float %1850, %1845
  %1852 = fmul fast float %1838, 1.500000e+00
  %1853 = fmul fast float %1852, %1840
  %1854 = fmul fast float %1853, %1845
  %1855 = fmul fast float %1839, 1.500000e+00
  %1856 = fmul fast float %1855, %1840
  %1857 = fmul fast float %1856, %1845
  %1858 = fmul fast float %1833, 1.500000e+00
  %1859 = fmul fast float %1858, %1840
  %1860 = fmul fast float %1859, %1845
  %1861 = fmul fast float %1834, 1.500000e+00
  %1862 = fmul fast float %1861, %1840
  %1863 = fmul fast float %1862, %1845
  %1864 = fmul fast float %1835, 1.500000e+00
  %1865 = fmul fast float %1864, %1840
  %1866 = fmul fast float %1865, %1845
  %1867 = fmul fast float %1829, 1.500000e+00
  %1868 = fmul fast float %1867, %1840
  %1869 = fmul fast float %1868, %1845
  %1870 = fmul fast float %1830, 1.500000e+00
  %1871 = fmul fast float %1870, %1840
  %1872 = fmul fast float %1871, %1845
  %1873 = fmul fast float %1831, 1.500000e+00
  %1874 = fmul fast float %1873, %1840
  %1875 = fmul fast float %1874, %1845
  %1876 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1846)  ; FMax(a,b)
  %1877 = call float @dx.op.dot3.f32(i32 55, float %1851, float %1854, float %1857, float %1851, float %1854, float %1857)  ; Dot3(ax,ay,az,bx,by,bz)
  %1878 = fcmp fast oeq float %1877, 0.000000e+00
  %1879 = fcmp fast oeq float %1876, 0.000000e+00
  %1880 = or i1 %1879, %1878
  br i1 %1880, label %1910, label %1881

; <label>:1881                                    ; preds = %1827
  %1882 = fsub fast float -0.000000e+00, %1857
  %1883 = fsub fast float -0.000000e+00, %1851
  %1884 = call float @dx.op.unary.f32(i32 24, float %1877)  ; Sqrt(value)
  %1885 = fdiv fast float %1884, %1876
  %1886 = fcmp fast ogt float %1885, 0x3FFB6F8900000000
  %1887 = select i1 %1886, float 0x3FFB6F8900000000, float %1885
  %1888 = fmul fast float %1887, 0x3FE8A23460000000
  %1889 = call float @dx.op.unary.f32(i32 7, float %1888)  ; Saturate(value)
  %1890 = call float @dx.op.binary.f32(i32 35, float %1887, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1891 = fmul fast float %1889, %1876
  %1892 = fmul fast float %1890, 0x3FF279A740000000
  %1893 = fadd fast float %1892, -1.000000e+00
  %1894 = call float @dx.op.dot3.f32(i32 55, float %1882, float %1883, float %1854, float %1882, float %1883, float %1854)  ; Dot3(ax,ay,az,bx,by,bz)
  %1895 = call float @dx.op.unary.f32(i32 25, float %1894)  ; Rsqrt(value)
  %1896 = fmul fast float %1895, %1882
  %1897 = fmul fast float %1895, %1883
  %1898 = fmul fast float %1895, %1854
  %1899 = fmul fast float %1893, %1893
  %1900 = fsub fast float 1.000000e+00, %1899
  %1901 = fmul fast float %1890, 0x40005F8BE0000000
  %1902 = fsub fast float 0x400C5BF8A0000000, %1901
  %1903 = fdiv fast float %1891, %1902
  %1904 = fmul fast float %1903, 0x3FEE31C3C0000000
  %1905 = fmul fast float %1904, %1900
  %1906 = fmul fast float %1890, 0x3FDACB7480000000
  %1907 = fadd fast float %1906, 0xBFD7347680000000
  %1908 = fmul fast float %1907, %1903
  %1909 = fmul fast float %1908, %1900
  br label %1910

; <label>:1910                                    ; preds = %1881, %1827
  %1911 = phi float [ %1896, %1881 ], [ 0.000000e+00, %1827 ]
  %1912 = phi float [ %1897, %1881 ], [ 0.000000e+00, %1827 ]
  %1913 = phi float [ %1898, %1881 ], [ 0.000000e+00, %1827 ]
  %1914 = phi float [ %1905, %1881 ], [ 0.000000e+00, %1827 ]
  %1915 = phi float [ %1909, %1881 ], [ 0.000000e+00, %1827 ]
  %1916 = call float @dx.op.dot3.f32(i32 55, float %1911, float %1912, float %1913, float %280, float %281, float %282)  ; Dot3(ax,ay,az,bx,by,bz)
  %1917 = fmul fast float %1916, 0x3FDF454380000000
  %1918 = fmul fast float %1916, %1916
  %1919 = fmul fast float %1918, 0x3FEE471020000000
  %1920 = fadd fast float %1919, 0xBFD42F6020000000
  %1921 = fmul fast float %1876, 0x3FD20DD760000000
  %1922 = fmul fast float %1920, %1915
  %1923 = fadd fast float %1922, %1921
  %1924 = fmul fast float %1917, %1914
  %1925 = fadd fast float %1923, %1924
  %1926 = fsub fast float %1923, %1924
  %1927 = call float @dx.op.dot3.f32(i32 55, float %1911, float %1912, float %1913, float %435, float %436, float %437)  ; Dot3(ax,ay,az,bx,by,bz)
  %1928 = fmul fast float %1927, 0x3FDF454380000000
  %1929 = fmul fast float %1927, %1927
  %1930 = fmul fast float %1929, 0x3FEE471020000000
  %1931 = fadd fast float %1930, 0xBFD42F6020000000
  %1932 = call float @dx.op.dot3.f32(i32 55, float %1876, float %1914, float %1915, float 0x3FD20DD760000000, float %1928, float %1931)  ; Dot3(ax,ay,az,bx,by,bz)
  %1933 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1847)  ; FMax(a,b)
  %1934 = call float @dx.op.dot3.f32(i32 55, float %1860, float %1863, float %1866, float %1860, float %1863, float %1866)  ; Dot3(ax,ay,az,bx,by,bz)
  %1935 = fcmp fast oeq float %1934, 0.000000e+00
  %1936 = fcmp fast oeq float %1933, 0.000000e+00
  %1937 = or i1 %1936, %1935
  br i1 %1937, label %1967, label %1938

; <label>:1938                                    ; preds = %1910
  %1939 = fsub fast float -0.000000e+00, %1866
  %1940 = fsub fast float -0.000000e+00, %1860
  %1941 = call float @dx.op.unary.f32(i32 24, float %1934)  ; Sqrt(value)
  %1942 = fdiv fast float %1941, %1933
  %1943 = fcmp fast ogt float %1942, 0x3FFB6F8900000000
  %1944 = select i1 %1943, float 0x3FFB6F8900000000, float %1942
  %1945 = fmul fast float %1944, 0x3FE8A23460000000
  %1946 = call float @dx.op.unary.f32(i32 7, float %1945)  ; Saturate(value)
  %1947 = call float @dx.op.binary.f32(i32 35, float %1944, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1948 = fmul fast float %1946, %1933
  %1949 = fmul fast float %1947, 0x3FF279A740000000
  %1950 = fadd fast float %1949, -1.000000e+00
  %1951 = call float @dx.op.dot3.f32(i32 55, float %1939, float %1940, float %1863, float %1939, float %1940, float %1863)  ; Dot3(ax,ay,az,bx,by,bz)
  %1952 = call float @dx.op.unary.f32(i32 25, float %1951)  ; Rsqrt(value)
  %1953 = fmul fast float %1952, %1939
  %1954 = fmul fast float %1952, %1940
  %1955 = fmul fast float %1952, %1863
  %1956 = fmul fast float %1950, %1950
  %1957 = fsub fast float 1.000000e+00, %1956
  %1958 = fmul fast float %1947, 0x40005F8BE0000000
  %1959 = fsub fast float 0x400C5BF8A0000000, %1958
  %1960 = fdiv fast float %1948, %1959
  %1961 = fmul fast float %1960, 0x3FEE31C3C0000000
  %1962 = fmul fast float %1961, %1957
  %1963 = fmul fast float %1947, 0x3FDACB7480000000
  %1964 = fadd fast float %1963, 0xBFD7347680000000
  %1965 = fmul fast float %1964, %1960
  %1966 = fmul fast float %1965, %1957
  br label %1967

; <label>:1967                                    ; preds = %1938, %1910
  %1968 = phi float [ %1953, %1938 ], [ 0.000000e+00, %1910 ]
  %1969 = phi float [ %1954, %1938 ], [ 0.000000e+00, %1910 ]
  %1970 = phi float [ %1955, %1938 ], [ 0.000000e+00, %1910 ]
  %1971 = phi float [ %1962, %1938 ], [ 0.000000e+00, %1910 ]
  %1972 = phi float [ %1966, %1938 ], [ 0.000000e+00, %1910 ]
  %1973 = call float @dx.op.dot3.f32(i32 55, float %1968, float %1969, float %1970, float %280, float %281, float %282)  ; Dot3(ax,ay,az,bx,by,bz)
  %1974 = fmul fast float %1973, 0x3FDF454380000000
  %1975 = fmul fast float %1973, %1973
  %1976 = fmul fast float %1975, 0x3FEE471020000000
  %1977 = fadd fast float %1976, 0xBFD42F6020000000
  %1978 = fmul fast float %1933, 0x3FD20DD760000000
  %1979 = fmul fast float %1977, %1972
  %1980 = fadd fast float %1979, %1978
  %1981 = fmul fast float %1974, %1971
  %1982 = fadd fast float %1980, %1981
  %1983 = fsub fast float %1980, %1981
  %1984 = call float @dx.op.dot3.f32(i32 55, float %1968, float %1969, float %1970, float %435, float %436, float %437)  ; Dot3(ax,ay,az,bx,by,bz)
  %1985 = fmul fast float %1984, 0x3FDF454380000000
  %1986 = fmul fast float %1984, %1984
  %1987 = fmul fast float %1986, 0x3FEE471020000000
  %1988 = fadd fast float %1987, 0xBFD42F6020000000
  %1989 = call float @dx.op.dot3.f32(i32 55, float %1933, float %1971, float %1972, float 0x3FD20DD760000000, float %1985, float %1988)  ; Dot3(ax,ay,az,bx,by,bz)
  %1990 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1848)  ; FMax(a,b)
  %1991 = call float @dx.op.dot3.f32(i32 55, float %1869, float %1872, float %1875, float %1869, float %1872, float %1875)  ; Dot3(ax,ay,az,bx,by,bz)
  %1992 = fcmp fast oeq float %1991, 0.000000e+00
  %1993 = fcmp fast oeq float %1990, 0.000000e+00
  %1994 = or i1 %1993, %1992
  br i1 %1994, label %2024, label %1995

; <label>:1995                                    ; preds = %1967
  %1996 = fsub fast float -0.000000e+00, %1875
  %1997 = fsub fast float -0.000000e+00, %1869
  %1998 = call float @dx.op.unary.f32(i32 24, float %1991)  ; Sqrt(value)
  %1999 = fdiv fast float %1998, %1990
  %2000 = fcmp fast ogt float %1999, 0x3FFB6F8900000000
  %2001 = select i1 %2000, float 0x3FFB6F8900000000, float %1999
  %2002 = fmul fast float %2001, 0x3FE8A23460000000
  %2003 = call float @dx.op.unary.f32(i32 7, float %2002)  ; Saturate(value)
  %2004 = call float @dx.op.binary.f32(i32 35, float %2001, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2005 = fmul fast float %2003, %1990
  %2006 = fmul fast float %2004, 0x3FF279A740000000
  %2007 = fadd fast float %2006, -1.000000e+00
  %2008 = call float @dx.op.dot3.f32(i32 55, float %1996, float %1997, float %1872, float %1996, float %1997, float %1872)  ; Dot3(ax,ay,az,bx,by,bz)
  %2009 = call float @dx.op.unary.f32(i32 25, float %2008)  ; Rsqrt(value)
  %2010 = fmul fast float %2009, %1996
  %2011 = fmul fast float %2009, %1997
  %2012 = fmul fast float %2009, %1872
  %2013 = fmul fast float %2007, %2007
  %2014 = fsub fast float 1.000000e+00, %2013
  %2015 = fmul fast float %2004, 0x40005F8BE0000000
  %2016 = fsub fast float 0x400C5BF8A0000000, %2015
  %2017 = fdiv fast float %2005, %2016
  %2018 = fmul fast float %2017, 0x3FEE31C3C0000000
  %2019 = fmul fast float %2018, %2014
  %2020 = fmul fast float %2004, 0x3FDACB7480000000
  %2021 = fadd fast float %2020, 0xBFD7347680000000
  %2022 = fmul fast float %2021, %2017
  %2023 = fmul fast float %2022, %2014
  br label %2024

; <label>:2024                                    ; preds = %1995, %1967
  %2025 = phi float [ %2010, %1995 ], [ 0.000000e+00, %1967 ]
  %2026 = phi float [ %2011, %1995 ], [ 0.000000e+00, %1967 ]
  %2027 = phi float [ %2012, %1995 ], [ 0.000000e+00, %1967 ]
  %2028 = phi float [ %2019, %1995 ], [ 0.000000e+00, %1967 ]
  %2029 = phi float [ %2023, %1995 ], [ 0.000000e+00, %1967 ]
  %2030 = call float @dx.op.dot3.f32(i32 55, float %2025, float %2026, float %2027, float %280, float %281, float %282)  ; Dot3(ax,ay,az,bx,by,bz)
  %2031 = fmul fast float %2030, 0x3FDF454380000000
  %2032 = fmul fast float %2030, %2030
  %2033 = fmul fast float %2032, 0x3FEE471020000000
  %2034 = fadd fast float %2033, 0xBFD42F6020000000
  %2035 = fmul fast float %1990, 0x3FD20DD760000000
  %2036 = fmul fast float %2034, %2029
  %2037 = fadd fast float %2036, %2035
  %2038 = fmul fast float %2031, %2028
  %2039 = fadd fast float %2037, %2038
  %2040 = fsub fast float %2037, %2038
  %2041 = call float @dx.op.dot3.f32(i32 55, float %2025, float %2026, float %2027, float %435, float %436, float %437)  ; Dot3(ax,ay,az,bx,by,bz)
  %2042 = fmul fast float %2041, 0x3FDF454380000000
  %2043 = fmul fast float %2041, %2041
  %2044 = fmul fast float %2043, 0x3FEE471020000000
  %2045 = fadd fast float %2044, 0xBFD42F6020000000
  %2046 = call float @dx.op.dot3.f32(i32 55, float %1990, float %2028, float %2029, float 0x3FD20DD760000000, float %2042, float %2045)  ; Dot3(ax,ay,az,bx,by,bz)
  %2047 = call float @dx.op.binary.f32(i32 35, float %1925, float 0.000000e+00)  ; FMax(a,b)
  %2048 = call float @dx.op.binary.f32(i32 35, float %1982, float 0.000000e+00)  ; FMax(a,b)
  %2049 = call float @dx.op.binary.f32(i32 35, float %2039, float 0.000000e+00)  ; FMax(a,b)
  %2050 = call float @dx.op.binary.f32(i32 35, float %1926, float 0.000000e+00)  ; FMax(a,b)
  %2051 = call float @dx.op.binary.f32(i32 35, float %1983, float 0.000000e+00)  ; FMax(a,b)
  %2052 = call float @dx.op.binary.f32(i32 35, float %2040, float 0.000000e+00)  ; FMax(a,b)
  %2053 = call float @dx.op.binary.f32(i32 35, float %1932, float 0.000000e+00)  ; FMax(a,b)
  %2054 = call float @dx.op.binary.f32(i32 35, float %1989, float 0.000000e+00)  ; FMax(a,b)
  %2055 = call float @dx.op.binary.f32(i32 35, float %2046, float 0.000000e+00)  ; FMax(a,b)
  %2056 = fsub fast float %1246, %2047
  %2057 = fsub fast float %1247, %2048
  %2058 = fsub fast float %1248, %2049
  %2059 = fmul fast float %2056, %483
  %2060 = fmul fast float %2057, %483
  %2061 = fmul fast float %2058, %483
  %2062 = fadd fast float %2059, %2047
  %2063 = fadd fast float %2060, %2048
  %2064 = fadd fast float %2061, %2049
  %2065 = fsub fast float %1243, %2050
  %2066 = fsub fast float %1244, %2051
  %2067 = fsub fast float %1245, %2052
  %2068 = fmul fast float %2065, %483
  %2069 = fmul fast float %2066, %483
  %2070 = fmul fast float %2067, %483
  %2071 = fadd fast float %2068, %2050
  %2072 = fadd fast float %2069, %2051
  %2073 = fadd fast float %2070, %2052
  %2074 = fsub fast float %1240, %2053
  %2075 = fsub fast float %1241, %2054
  %2076 = fsub fast float %1242, %2055
  %2077 = fmul fast float %2074, %483
  %2078 = fmul fast float %2075, %483
  %2079 = fmul fast float %2076, %483
  %2080 = fadd fast float %2077, %2053
  %2081 = fadd fast float %2078, %2054
  %2082 = fadd fast float %2079, %2055
  br label %2083

; <label>:2083                                    ; preds = %2024, %1239
  %2084 = phi float [ %2080, %2024 ], [ %1240, %1239 ]
  %2085 = phi float [ %2081, %2024 ], [ %1241, %1239 ]
  %2086 = phi float [ %2082, %2024 ], [ %1242, %1239 ]
  %2087 = phi float [ %2071, %2024 ], [ %1243, %1239 ]
  %2088 = phi float [ %2072, %2024 ], [ %1244, %1239 ]
  %2089 = phi float [ %2073, %2024 ], [ %1245, %1239 ]
  %2090 = phi float [ %2062, %2024 ], [ %1246, %1239 ]
  %2091 = phi float [ %2063, %2024 ], [ %1247, %1239 ]
  %2092 = phi float [ %2064, %2024 ], [ %1248, %1239 ]
  %2093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2094 = extractvalue %dx.types.CBufRet.f32 %2093, 0
  %2095 = call float @dx.op.binary.f32(i32 36, float %400, float %2094)  ; FMin(a,b)
  %2096 = fsub fast float 1.000000e+00, %438
  %2097 = fmul fast float %2095, %2096
  %2098 = fsub fast float 1.000000e+00, %2097
  %2099 = bitcast float %2098 to i32
  %2100 = sub nsw i32 2129859010, %2099
  %2101 = bitcast i32 %2100 to float
  %2102 = call float @dx.op.binary.f32(i32 36, float %401, float %2094)  ; FMin(a,b)
  %2103 = fmul fast float %2102, %2096
  %2104 = fsub fast float 1.000000e+00, %2103
  %2105 = bitcast float %2104 to i32
  %2106 = sub nsw i32 2129859010, %2105
  %2107 = bitcast i32 %2106 to float
  %2108 = call float @dx.op.binary.f32(i32 36, float %402, float %2094)  ; FMin(a,b)
  %2109 = fmul fast float %2108, %2096
  %2110 = fsub fast float 1.000000e+00, %2109
  %2111 = bitcast float %2110 to i32
  %2112 = sub nsw i32 2129859010, %2111
  %2113 = bitcast i32 %2112 to float
  %2114 = fmul fast float %2090, %438
  %2115 = fmul fast float %2114, %2101
  %2116 = fmul fast float %2091, %438
  %2117 = fmul fast float %2116, %2107
  %2118 = fmul fast float %2092, %438
  %2119 = fmul fast float %2118, %2113
  %2120 = call float @dx.op.binary.f32(i32 36, float %409, float %2094)  ; FMin(a,b)
  %2121 = fmul fast float %2120, %2096
  %2122 = fsub fast float 1.000000e+00, %2121
  %2123 = bitcast float %2122 to i32
  %2124 = sub nsw i32 2129859010, %2123
  %2125 = bitcast i32 %2124 to float
  %2126 = call float @dx.op.binary.f32(i32 36, float %410, float %2094)  ; FMin(a,b)
  %2127 = fmul fast float %2126, %2096
  %2128 = fsub fast float 1.000000e+00, %2127
  %2129 = bitcast float %2128 to i32
  %2130 = sub nsw i32 2129859010, %2129
  %2131 = bitcast i32 %2130 to float
  %2132 = call float @dx.op.binary.f32(i32 36, float %427, float %2094)  ; FMin(a,b)
  %2133 = fmul fast float %2132, %2096
  %2134 = fsub fast float 1.000000e+00, %2133
  %2135 = bitcast float %2134 to i32
  %2136 = sub nsw i32 2129859010, %2135
  %2137 = bitcast i32 %2136 to float
  %2138 = fmul fast float %2084, %438
  %2139 = fmul fast float %2138, %2125
  %2140 = fmul fast float %2085, %438
  %2141 = fmul fast float %2140, %2131
  %2142 = fmul fast float %2086, %438
  %2143 = fmul fast float %2142, %2137
  %2144 = call float @dx.op.dot3.f32(i32 55, float %2115, float %2117, float %2119, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2145 = select i1 %120, float 0.000000e+00, float %2115
  %2146 = select i1 %120, float %2144, float %2117
  %2147 = select i1 %120, float 0.000000e+00, float %2119
  %2148 = call float @dx.op.dot3.f32(i32 55, float %2087, float %2088, float %2089, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2149 = select i1 %120, float 0.000000e+00, float %2087
  %2150 = select i1 %120, float %2148, float %2088
  %2151 = select i1 %120, float 0.000000e+00, float %2089
  %2152 = call float @dx.op.dot3.f32(i32 55, float %2139, float %2141, float %2143, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2153 = select i1 %120, float 0.000000e+00, float %2139
  %2154 = select i1 %120, float %2152, float %2141
  %2155 = select i1 %120, float 0.000000e+00, float %2143
  %2156 = fmul fast float %429, 9.843750e-01
  %2157 = fmul fast float %292, 9.843750e-01
  %2158 = fadd fast float %2156, 7.812500e-03
  %2159 = fadd fast float %2157, 7.812500e-03
  %2160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %38, float %2158, float %2159, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2161 = extractvalue %dx.types.ResRet.f32 %2160, 2
  %2162 = extractvalue %dx.types.ResRet.f32 %2160, 3
  %2163 = fmul fast float %2161, %409
  %2164 = fmul fast float %2161, %410
  %2165 = fmul fast float %2161, %427
  %2166 = fadd fast float %2163, %2162
  %2167 = fadd fast float %2164, %2162
  %2168 = fadd fast float %2165, %2162
  %2169 = call float @dx.op.binary.f32(i32 35, float %2167, float %2168)  ; FMax(a,b)
  %2170 = call float @dx.op.binary.f32(i32 35, float %2166, float %2169)  ; FMax(a,b)
  %2171 = fsub fast float 1.000000e+00, %2170
  %2172 = fmul fast float %2166, %2153
  %2173 = fmul fast float %2167, %2154
  %2174 = fmul fast float %2168, %2155
  %2175 = fmul fast float %2149, %299
  %2176 = fmul fast float %2150, %300
  %2177 = fmul fast float %2151, %301
  %2178 = fadd fast float %2175, %2145
  %2179 = fmul fast float %2178, %2171
  %2180 = fadd fast float %2176, %2146
  %2181 = fmul fast float %2180, %2171
  %2182 = fadd fast float %2177, %2147
  %2183 = fmul fast float %2182, %2171
  %2184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2185 = extractvalue %dx.types.CBufRet.f32 %2184, 3
  %2186 = fcmp fast oeq float %2185, 0.000000e+00
  br i1 %2186, label %3141, label %2187

; <label>:2187                                    ; preds = %2083
  %2188 = extractvalue %dx.types.CBufRet.f32 %2184, 0
  %2189 = extractvalue %dx.types.CBufRet.f32 %2184, 1
  %2190 = extractvalue %dx.types.CBufRet.f32 %2184, 2
  %2191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2192 = extractvalue %dx.types.CBufRet.f32 %2191, 0
  %2193 = extractvalue %dx.types.CBufRet.f32 %2191, 1
  %2194 = extractvalue %dx.types.CBufRet.f32 %2191, 2
  %2195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2196 = extractvalue %dx.types.CBufRet.f32 %2195, 0
  %2197 = extractvalue %dx.types.CBufRet.f32 %2195, 1
  %2198 = call float @dx.op.dot3.f32(i32 55, float %2192, float %2193, float %2194, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2199 = select i1 %120, float %2196, float %2192
  %2200 = select i1 %120, float %2198, float %2193
  %2201 = select i1 %120, float %2197, float %2194
  %2202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2203 = extractvalue %dx.types.CBufRet.f32 %2202, 2
  %2204 = fmul fast float %2203, %280
  %2205 = fmul fast float %2203, %281
  %2206 = fmul fast float %2203, %282
  %2207 = fadd fast float %2204, %358
  %2208 = fadd fast float %2205, %359
  %2209 = fadd fast float %2206, %360
  %2210 = fcmp fast olt float %2185, 0.000000e+00
  br i1 %2210, label %2847, label %2211

; <label>:2211                                    ; preds = %2187
  %2212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2213 = extractvalue %dx.types.CBufRet.f32 %2212, 0
  %2214 = extractvalue %dx.types.CBufRet.f32 %2212, 1
  %2215 = extractvalue %dx.types.CBufRet.f32 %2212, 2
  %2216 = extractvalue %dx.types.CBufRet.f32 %2212, 3
  %2217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2218 = extractvalue %dx.types.CBufRet.f32 %2217, 0
  %2219 = extractvalue %dx.types.CBufRet.f32 %2217, 1
  %2220 = extractvalue %dx.types.CBufRet.f32 %2217, 2
  %2221 = extractvalue %dx.types.CBufRet.f32 %2217, 3
  %2222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2223 = extractvalue %dx.types.CBufRet.f32 %2222, 0
  %2224 = extractvalue %dx.types.CBufRet.f32 %2222, 1
  %2225 = extractvalue %dx.types.CBufRet.f32 %2222, 2
  %2226 = extractvalue %dx.types.CBufRet.f32 %2222, 3
  %2227 = fmul fast float %2213, %2207
  %2228 = call float @dx.op.tertiary.f32(i32 46, float %2208, float %2214, float %2227)  ; FMad(a,b,c)
  %2229 = call float @dx.op.tertiary.f32(i32 46, float %2209, float %2215, float %2228)  ; FMad(a,b,c)
  %2230 = fadd fast float %2229, %2216
  %2231 = fmul fast float %2218, %2207
  %2232 = call float @dx.op.tertiary.f32(i32 46, float %2208, float %2219, float %2231)  ; FMad(a,b,c)
  %2233 = call float @dx.op.tertiary.f32(i32 46, float %2209, float %2220, float %2232)  ; FMad(a,b,c)
  %2234 = fadd fast float %2233, %2221
  %2235 = fmul fast float %2223, %2207
  %2236 = call float @dx.op.tertiary.f32(i32 46, float %2208, float %2224, float %2235)  ; FMad(a,b,c)
  %2237 = call float @dx.op.tertiary.f32(i32 46, float %2209, float %2225, float %2236)  ; FMad(a,b,c)
  %2238 = fadd fast float %2237, %2226
  %2239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2240 = extractvalue %dx.types.CBufRet.f32 %2239, 0
  %2241 = fcmp fast une float %2240, 0.000000e+00
  %2242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2243 = extractvalue %dx.types.CBufRet.f32 %2242, 0
  %2244 = extractvalue %dx.types.CBufRet.f32 %2242, 1
  %2245 = extractvalue %dx.types.CBufRet.f32 %2242, 3
  %2246 = fmul fast float %2245, %2230
  %2247 = fmul fast float %2245, %2234
  %2248 = fadd fast float %2246, %2243
  %2249 = fadd fast float %2247, %2244
  %2250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2251 = extractvalue %dx.types.CBufRet.f32 %2250, 0
  %2252 = extractvalue %dx.types.CBufRet.f32 %2250, 1
  %2253 = extractvalue %dx.types.CBufRet.f32 %2250, 3
  %2254 = fmul fast float %2253, %2230
  %2255 = fmul fast float %2253, %2234
  %2256 = fadd fast float %2254, %2251
  %2257 = fadd fast float %2255, %2252
  %2258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2259 = extractvalue %dx.types.CBufRet.f32 %2258, 1
  %2260 = fsub fast float %2259, %2238
  %2261 = extractvalue %dx.types.CBufRet.f32 %2258, 2
  %2262 = fmul fast float %2260, %2261
  %2263 = fsub fast float 1.000000e+00, %2262
  %2264 = call float @dx.op.unary.f32(i32 7, float %2263)  ; Saturate(value)
  br i1 %2241, label %2325, label %2265

; <label>:2265                                    ; preds = %2211
  %2266 = extractvalue %dx.types.CBufRet.f32 %2250, 2
  %2267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2268 = extractvalue %dx.types.CBufRet.f32 %2267, 2
  %2269 = fadd fast float %2268, %2266
  %2270 = fcmp fast ogt float %2269, 0.000000e+00
  br i1 %2270, label %2271, label %2295

; <label>:2271                                    ; preds = %2265
  %2272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %2273 = extractvalue %dx.types.CBufRet.f32 %2272, 0
  %2274 = extractvalue %dx.types.CBufRet.f32 %2272, 1
  %2275 = fsub fast float %2256, %2273
  %2276 = fsub fast float %2257, %2274
  %2277 = fcmp fast olt float %2275, 0.000000e+00
  %2278 = fcmp fast olt float %2276, 0.000000e+00
  %2279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %2280 = extractvalue %dx.types.CBufRet.f32 %2279, 0
  %2281 = extractvalue %dx.types.CBufRet.f32 %2279, 1
  %2282 = extractvalue %dx.types.CBufRet.f32 %2279, 2
  %2283 = extractvalue %dx.types.CBufRet.f32 %2279, 3
  %2284 = select i1 %2277, float %2280, float %2282
  %2285 = select i1 %2278, float %2281, float %2283
  %2286 = fmul fast float %2284, %2275
  %2287 = fmul fast float %2285, %2276
  %2288 = call float @dx.op.unary.f32(i32 6, float %2286)  ; FAbs(value)
  %2289 = call float @dx.op.unary.f32(i32 6, float %2287)  ; FAbs(value)
  %2290 = extractvalue %dx.types.CBufRet.f32 %2202, 0
  %2291 = call float @dx.op.binary.f32(i32 35, float %2288, float %2289)  ; FMax(a,b)
  %2292 = fsub fast float %2290, %2291
  %2293 = call float @dx.op.unary.f32(i32 7, float %2292)  ; Saturate(value)
  %2294 = fmul fast float %2293, %2264
  br label %2295

; <label>:2295                                    ; preds = %2271, %2265
  %2296 = phi float [ %2294, %2271 ], [ 0.000000e+00, %2265 ]
  %2297 = extractvalue %dx.types.CBufRet.f32 %2242, 2
  %2298 = extractvalue %dx.types.CBufRet.f32 %2267, 1
  %2299 = fadd fast float %2298, %2297
  %2300 = fcmp fast ogt float %2299, 0.000000e+00
  br i1 %2300, label %2301, label %2325

; <label>:2301                                    ; preds = %2295
  %2302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2303 = extractvalue %dx.types.CBufRet.f32 %2302, 0
  %2304 = extractvalue %dx.types.CBufRet.f32 %2302, 1
  %2305 = fsub fast float %2248, %2303
  %2306 = fsub fast float %2249, %2304
  %2307 = fcmp fast olt float %2305, 0.000000e+00
  %2308 = fcmp fast olt float %2306, 0.000000e+00
  %2309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2310 = extractvalue %dx.types.CBufRet.f32 %2309, 0
  %2311 = extractvalue %dx.types.CBufRet.f32 %2309, 1
  %2312 = extractvalue %dx.types.CBufRet.f32 %2309, 2
  %2313 = extractvalue %dx.types.CBufRet.f32 %2309, 3
  %2314 = select i1 %2307, float %2310, float %2312
  %2315 = select i1 %2308, float %2311, float %2313
  %2316 = fmul fast float %2314, %2305
  %2317 = fmul fast float %2315, %2306
  %2318 = call float @dx.op.unary.f32(i32 6, float %2316)  ; FAbs(value)
  %2319 = call float @dx.op.unary.f32(i32 6, float %2317)  ; FAbs(value)
  %2320 = extractvalue %dx.types.CBufRet.f32 %2202, 0
  %2321 = call float @dx.op.binary.f32(i32 35, float %2318, float %2319)  ; FMax(a,b)
  %2322 = fsub fast float %2320, %2321
  %2323 = call float @dx.op.unary.f32(i32 7, float %2322)  ; Saturate(value)
  %2324 = fmul fast float %2323, %2264
  br label %2325

; <label>:2325                                    ; preds = %2301, %2295, %2211
  %2326 = phi float [ 0.000000e+00, %2211 ], [ %2324, %2301 ], [ 0.000000e+00, %2295 ]
  %2327 = phi float [ 0.000000e+00, %2211 ], [ %2296, %2301 ], [ %2296, %2295 ]
  %2328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %2329 = extractvalue %dx.types.CBufRet.f32 %2328, 1
  %2330 = call float @dx.op.unary.f32(i32 7, float %2329)  ; Saturate(value)
  %2331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %2332 = extractvalue %dx.types.CBufRet.f32 %2331, 0
  %2333 = extractvalue %dx.types.CBufRet.f32 %2331, 1
  %2334 = fsub fast float %2230, %2332
  %2335 = fsub fast float %2234, %2333
  %2336 = fcmp fast olt float %2334, 0.000000e+00
  %2337 = fcmp fast olt float %2335, 0.000000e+00
  %2338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %2339 = extractvalue %dx.types.CBufRet.f32 %2338, 0
  %2340 = extractvalue %dx.types.CBufRet.f32 %2338, 1
  %2341 = extractvalue %dx.types.CBufRet.f32 %2338, 2
  %2342 = extractvalue %dx.types.CBufRet.f32 %2338, 3
  %2343 = select i1 %2336, float %2339, float %2341
  %2344 = select i1 %2337, float %2340, float %2342
  %2345 = fmul fast float %2343, %2334
  %2346 = fmul fast float %2344, %2335
  %2347 = call float @dx.op.unary.f32(i32 6, float %2345)  ; FAbs(value)
  %2348 = call float @dx.op.unary.f32(i32 6, float %2346)  ; FAbs(value)
  %2349 = extractvalue %dx.types.CBufRet.f32 %2202, 0
  %2350 = call float @dx.op.binary.f32(i32 35, float %2347, float %2348)  ; FMax(a,b)
  %2351 = fsub fast float %2349, %2350
  %2352 = call float @dx.op.unary.f32(i32 7, float %2351)  ; Saturate(value)
  %2353 = call float @dx.op.binary.f32(i32 36, float %2352, float %2330)  ; FMin(a,b)
  %2354 = fmul fast float %2353, %2264
  %2355 = fsub fast float %2326, %2354
  %2356 = fsub fast float %2327, %2326
  %2357 = fsub fast float %2356, %2354
  %2358 = call float @dx.op.binary.f32(i32 35, float %2326, float %2327)  ; FMax(a,b)
  %2359 = call float @dx.op.binary.f32(i32 35, float %2354, float %2358)  ; FMax(a,b)
  %2360 = fcmp fast olt float %2359, 1.000000e+00
  br i1 %2360, label %2361, label %2759, !dx.controlflow.hints !115

; <label>:2361                                    ; preds = %2325
  %2362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2363 = extractvalue %dx.types.CBufRet.f32 %2362, 0
  %2364 = fcmp fast une float %2363, 0.000000e+00
  br i1 %2364, label %2365, label %2759, !dx.controlflow.hints !116

; <label>:2365                                    ; preds = %2361
  %2366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2367 = extractvalue %dx.types.CBufRet.f32 %2366, 0
  %2368 = extractvalue %dx.types.CBufRet.f32 %2366, 1
  %2369 = extractvalue %dx.types.CBufRet.f32 %2366, 2
  %2370 = extractvalue %dx.types.CBufRet.f32 %2366, 3
  %2371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2372 = extractvalue %dx.types.CBufRet.f32 %2371, 0
  %2373 = extractvalue %dx.types.CBufRet.f32 %2371, 1
  %2374 = extractvalue %dx.types.CBufRet.f32 %2371, 2
  %2375 = extractvalue %dx.types.CBufRet.f32 %2371, 3
  %2376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2377 = extractvalue %dx.types.CBufRet.f32 %2376, 0
  %2378 = extractvalue %dx.types.CBufRet.f32 %2376, 1
  %2379 = extractvalue %dx.types.CBufRet.f32 %2376, 2
  %2380 = extractvalue %dx.types.CBufRet.f32 %2376, 3
  %2381 = fmul fast float %2367, %2207
  %2382 = call float @dx.op.tertiary.f32(i32 46, float %2208, float %2368, float %2381)  ; FMad(a,b,c)
  %2383 = call float @dx.op.tertiary.f32(i32 46, float %2209, float %2369, float %2382)  ; FMad(a,b,c)
  %2384 = fadd fast float %2383, %2370
  %2385 = fmul fast float %2372, %2207
  %2386 = call float @dx.op.tertiary.f32(i32 46, float %2208, float %2373, float %2385)  ; FMad(a,b,c)
  %2387 = call float @dx.op.tertiary.f32(i32 46, float %2209, float %2374, float %2386)  ; FMad(a,b,c)
  %2388 = fadd fast float %2387, %2375
  %2389 = fmul fast float %2377, %2207
  %2390 = call float @dx.op.tertiary.f32(i32 46, float %2208, float %2378, float %2389)  ; FMad(a,b,c)
  %2391 = call float @dx.op.tertiary.f32(i32 46, float %2209, float %2379, float %2390)  ; FMad(a,b,c)
  %2392 = fadd fast float %2391, %2380
  %2393 = fcmp fast oge float %2384, 1.000000e+00
  %2394 = fcmp fast oge float %2388, 1.000000e+00
  %2395 = or i1 %2393, %2394
  %2396 = fcmp fast olt float %2384, 0.000000e+00
  %2397 = fcmp fast olt float %2388, 0.000000e+00
  %2398 = or i1 %2396, %2397
  %2399 = or i1 %2395, %2398
  br i1 %2399, label %2759, label %2400, !dx.controlflow.hints !117

; <label>:2400                                    ; preds = %2365
  %2401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2402 = extractvalue %dx.types.CBufRet.f32 %2401, 0
  %2403 = extractvalue %dx.types.CBufRet.f32 %2401, 1
  %2404 = extractvalue %dx.types.CBufRet.f32 %2401, 2
  %2405 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2406 = extractvalue %dx.types.CBufRet.i32 %2405, 2
  %2407 = uitofp i32 %2406 to float
  %2408 = extractvalue %dx.types.CBufRet.i32 %2405, 3
  %2409 = uitofp i32 %2408 to float
  %2410 = extractvalue %dx.types.CBufRet.f32 %2401, 3
  %2411 = fmul fast float %2410, 2.000000e+00
  %2412 = fsub fast float %2384, %2402
  %2413 = fsub fast float %2388, %2403
  %2414 = fmul fast float %2411, %2412
  %2415 = fmul fast float %2411, %2413
  %2416 = fdiv fast float 1.000000e+00, %2190
  %2417 = fmul fast float %2415, %2416
  %2418 = call float @dx.op.unary.f32(i32 6, float %2417)  ; FAbs(value)
  %2419 = fmul fast float %2404, %2209
  %2420 = fmul fast float %2419, %2411
  %2421 = call float @dx.op.unary.f32(i32 6, float %2420)  ; FAbs(value)
  %2422 = call float @dx.op.unary.f32(i32 6, float %2414)  ; FAbs(value)
  %2423 = call float @dx.op.binary.f32(i32 35, float %2421, float %2418)  ; FMax(a,b)
  %2424 = call float @dx.op.binary.f32(i32 35, float %2422, float %2423)  ; FMax(a,b)
  %2425 = fmul fast float %2424, 2.000000e+00
  %2426 = call float @dx.op.unary.f32(i32 23, float %2425)  ; Log(value)
  %2427 = call float @dx.op.binary.f32(i32 35, float %2426, float %2407)  ; FMax(a,b)
  %2428 = call float @dx.op.unary.f32(i32 22, float %2427)  ; Frc(value)
  %2429 = fadd fast float %2428, 0xBFEA666660000000
  %2430 = fmul fast float %2429, 8.000000e+00
  %2431 = call float @dx.op.unary.f32(i32 7, float %2430)  ; Saturate(value)
  %2432 = call float @dx.op.unary.f32(i32 27, float %2427)  ; Round_ni(value)
  %2433 = fadd fast float %2432, %2431
  %2434 = call float @dx.op.binary.f32(i32 36, float %2433, float %2409)  ; FMin(a,b)
  %2435 = call float @dx.op.unary.f32(i32 27, float %2434)  ; Round_ni(value)
  %2436 = fsub fast float -0.000000e+00, %2435
  %2437 = call float @dx.op.unary.f32(i32 21, float %2436)  ; Exp(value)
  %2438 = fmul fast float %2437, %2411
  %2439 = fmul fast float %2438, %2384
  %2440 = fmul fast float %2438, %2388
  %2441 = fmul fast float %2439, 2.500000e-01
  %2442 = fmul fast float %2440, 2.500000e-01
  %2443 = fadd fast float %2441, 5.000000e-01
  %2444 = fadd fast float %2442, 5.000000e-01
  %2445 = fsub fast float %2409, %2407
  %2446 = fptoui float %2445 to i32
  %2447 = add i32 %2446, 320
  %2448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 %2447)  ; CBufferLoadLegacy(handle,regIndex)
  %2449 = extractvalue %dx.types.CBufRet.f32 %2448, 0
  %2450 = extractvalue %dx.types.CBufRet.f32 %2448, 1
  %2451 = fcmp fast une float %2434, %2409
  %2452 = fsub fast float %2384, %2449
  %2453 = fsub fast float %2388, %2450
  %2454 = call float @dx.op.unary.f32(i32 6, float %2452)  ; FAbs(value)
  %2455 = call float @dx.op.unary.f32(i32 6, float %2453)  ; FAbs(value)
  %2456 = fmul fast float %2454, %2438
  %2457 = fmul fast float %2455, %2438
  %2458 = fcmp fast olt float %2456, 1.000000e+00
  %2459 = fcmp fast olt float %2457, 1.000000e+00
  %2460 = and i1 %2458, %2459
  %2461 = or i1 %2451, %2460
  br i1 %2461, label %2462, label %2759, !dx.controlflow.hints !118

; <label>:2462                                    ; preds = %2400
  %2463 = fmul fast float %2440, 5.000000e-01
  %2464 = fmul fast float %2439, 5.000000e-01
  %2465 = fadd fast float %2463, 5.000000e-01
  %2466 = fadd fast float %2464, 5.000000e-01
  %2467 = sitofp i32 %2406 to float
  %2468 = fsub fast float %2434, %2467
  %2469 = call float @dx.op.unary.f32(i32 27, float %2468)  ; Round_ni(value)
  %2470 = call float @dx.op.unary.f32(i32 22, float %2434)  ; Frc(value)
  %2471 = call float @dx.op.unary.f32(i32 22, float %2466)  ; Frc(value)
  %2472 = call float @dx.op.unary.f32(i32 22, float %2465)  ; Frc(value)
  %2473 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %37, float %2471, float %2472, float %2469, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2474 = extractvalue %dx.types.ResRet.f32 %2473, 0
  %2475 = extractvalue %dx.types.ResRet.f32 %2473, 1
  %2476 = extractvalue %dx.types.ResRet.f32 %2473, 2
  %2477 = extractvalue %dx.types.ResRet.f32 %2473, 3
  %2478 = fcmp fast ogt float %2470, 0.000000e+00
  br i1 %2478, label %2479, label %2500, !dx.controlflow.hints !119

; <label>:2479                                    ; preds = %2462
  %2480 = fadd fast float %2469, 1.000000e+00
  %2481 = call float @dx.op.unary.f32(i32 22, float %2443)  ; Frc(value)
  %2482 = call float @dx.op.unary.f32(i32 22, float %2444)  ; Frc(value)
  %2483 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %37, float %2481, float %2482, float %2480, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2484 = extractvalue %dx.types.ResRet.f32 %2483, 0
  %2485 = extractvalue %dx.types.ResRet.f32 %2483, 1
  %2486 = extractvalue %dx.types.ResRet.f32 %2483, 2
  %2487 = extractvalue %dx.types.ResRet.f32 %2483, 3
  %2488 = fsub fast float %2484, %2474
  %2489 = fsub fast float %2485, %2475
  %2490 = fsub fast float %2486, %2476
  %2491 = fsub fast float %2487, %2477
  %2492 = fmul fast float %2488, %2470
  %2493 = fmul fast float %2489, %2470
  %2494 = fmul fast float %2490, %2470
  %2495 = fmul fast float %2491, %2470
  %2496 = fadd fast float %2492, %2474
  %2497 = fadd fast float %2493, %2475
  %2498 = fadd fast float %2494, %2476
  %2499 = fadd fast float %2495, %2477
  br label %2500

; <label>:2500                                    ; preds = %2479, %2462
  %2501 = phi float [ %2496, %2479 ], [ %2474, %2462 ]
  %2502 = phi float [ %2497, %2479 ], [ %2475, %2462 ]
  %2503 = phi float [ %2498, %2479 ], [ %2476, %2462 ]
  %2504 = phi float [ %2499, %2479 ], [ %2477, %2462 ]
  %2505 = fadd fast float %2501, -5.000000e-01
  %2506 = fadd fast float %2503, -5.000000e-01
  %2507 = fmul fast float %2505, 0xBFD5555560000000
  %2508 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2506, float %2507)  ; FMad(a,b,c)
  %2509 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2502, float 0.000000e+00)  ; FMad(a,b,c)
  %2510 = fadd fast float %2509, %2504
  %2511 = fmul fast float %2505, -7.500000e-01
  %2512 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2506, float %2511)  ; FMad(a,b,c)
  %2513 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2502, float 0.000000e+00)  ; FMad(a,b,c)
  %2514 = fadd fast float %2513, %2504
  %2515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2516 = extractvalue %dx.types.CBufRet.f32 %2515, 0
  %2517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2518 = extractvalue %dx.types.CBufRet.f32 %2517, 0
  %2519 = extractvalue %dx.types.CBufRet.f32 %2517, 1
  %2520 = extractvalue %dx.types.CBufRet.f32 %2517, 2
  %2521 = extractvalue %dx.types.CBufRet.f32 %2517, 3
  %2522 = fsub fast float %2518, %2508
  %2523 = fsub fast float %2519, %2510
  %2524 = fsub fast float %2520, %2512
  %2525 = fsub fast float %2521, %2514
  %2526 = fmul fast float %2522, %2516
  %2527 = fmul fast float %2523, %2516
  %2528 = fmul fast float %2524, %2516
  %2529 = fmul fast float %2525, %2516
  %2530 = fadd fast float %2526, %2508
  %2531 = fadd fast float %2527, %2510
  %2532 = fadd fast float %2528, %2512
  %2533 = fadd fast float %2529, %2514
  %2534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2535 = extractvalue %dx.types.ResRet.i32 %2534, 0
  %2536 = and i32 %2535, 536870911
  %2537 = uitofp i32 %2536 to float
  %2538 = fmul fast float %2537, %2384
  %2539 = fmul fast float %2537, %2388
  %2540 = fptoui float %2538 to i32
  %2541 = fptoui float %2539 to i32
  %2542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2543 = extractvalue %dx.types.ResRet.i32 %2542, 0
  %2544 = and i32 %2543, 31
  %2545 = lshr i32 %2540, %2544
  %2546 = lshr i32 %2541, %2544
  %2547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2548 = extractvalue %dx.types.ResRet.i32 %2547, 0
  %2549 = and i32 %2548, 31
  %2550 = shl i32 1, %2549
  %2551 = call i32 @dx.op.binary.i32(i32 40, i32 %2550, i32 4)  ; UMin(a,b)
  %2552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2553 = extractvalue %dx.types.ResRet.i32 %2552, 0
  %2554 = extractvalue %dx.types.ResRet.i32 %2552, 1
  %2555 = icmp eq i32 %2551, 0
  br i1 %2555, label %2597, label %2556

; <label>:2556                                    ; preds = %2500
  br label %2557

; <label>:2557                                    ; preds = %2585, %2556
  %2558 = phi i32 [ %2588, %2585 ], [ 0, %2556 ]
  %2559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2560 = extractvalue %dx.types.ResRet.i32 %2559, 0
  %2561 = lshr i32 %2560, 16
  %2562 = and i32 %2561, 31
  %2563 = shl i32 %2546, %2562
  %2564 = add i32 %2563, %2545
  %2565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2566 = extractvalue %dx.types.ResRet.i32 %2565, 0
  %2567 = and i32 %2566, 31
  %2568 = shl i32 %2564, %2567
  %2569 = add i32 %2568, %2558
  %2570 = shl i32 %2569, 2
  %2571 = add i32 %2570, 32
  %2572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2571, i32 undef)  ; BufferLoad(srv,index,wot)
  %2573 = extractvalue %dx.types.ResRet.i32 %2572, 0
  %2574 = icmp slt i32 %2573, 0
  %2575 = getelementptr [12 x float], [12 x float]* %77, i32 0, i32 %2558
  %2576 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 %2558
  %2577 = bitcast float* %2575 to i32*
  %2578 = bitcast float* %2576 to i32*
  br i1 %2574, label %2579, label %2585

; <label>:2579                                    ; preds = %2557
  %2580 = and i32 %2573, 1073741823
  %2581 = add nuw nsw i32 %2580, 20
  %2582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2581, i32 undef)  ; BufferLoad(srv,index,wot)
  %2583 = extractvalue %dx.types.ResRet.i32 %2582, 0
  %2584 = extractvalue %dx.types.ResRet.i32 %2582, 1
  br label %2585

; <label>:2585                                    ; preds = %2579, %2557
  %2586 = phi i32 [ %2583, %2579 ], [ %2553, %2557 ]
  %2587 = phi i32 [ %2584, %2579 ], [ %2554, %2557 ]
  store i32 %2586, i32* %2577, align 4
  store i32 %2587, i32* %2578, align 4
  %2588 = add nuw i32 %2558, 1
  %2589 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2590 = extractvalue %dx.types.CBufRet.i32 %2589, 2
  %2591 = icmp eq i32 %2590, 0
  %2592 = icmp ugt i32 %2573, -1073741825
  %2593 = and i1 %2592, %2591
  %2594 = icmp ult i32 %2588, %2551
  %2595 = and i1 %2593, %2594
  br i1 %2595, label %2557, label %2596

; <label>:2596                                    ; preds = %2585
  br label %2597

; <label>:2597                                    ; preds = %2596, %2500
  %2598 = phi i32 [ 0, %2500 ], [ %2588, %2596 ]
  %2599 = extractvalue %dx.types.CBufRet.f32 %2362, 2
  %2600 = fptoui float %2599 to i32
  %2601 = icmp eq i32 %2600, 0
  br i1 %2601, label %2653, label %2602

; <label>:2602                                    ; preds = %2597
  br label %2603

; <label>:2603                                    ; preds = %2648, %2602
  %2604 = phi i32 [ %2649, %2648 ], [ %2598, %2602 ]
  %2605 = phi i32 [ %2650, %2648 ], [ 0, %2602 ]
  %2606 = lshr i32 %2605, 2
  %2607 = and i32 %2605, 3
  %2608 = add nuw nsw i32 %2606, 83
  %2609 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 %2608)  ; CBufferLoadLegacy(handle,regIndex)
  %2610 = extractvalue %dx.types.CBufRet.i32 %2609, 0
  %2611 = extractvalue %dx.types.CBufRet.i32 %2609, 1
  %2612 = extractvalue %dx.types.CBufRet.i32 %2609, 2
  %2613 = extractvalue %dx.types.CBufRet.i32 %2609, 3
  %2614 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 0
  store i32 %2610, i32* %2614, align 4
  %2615 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 1
  store i32 %2611, i32* %2615, align 4
  %2616 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 2
  store i32 %2612, i32* %2616, align 4
  %2617 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 3
  store i32 %2613, i32* %2617, align 4
  %2618 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i32 0, i32 %2607
  %2619 = load i32, i32* %2618, align 4, !tbaa !120, !noalias !122
  %2620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2621 = extractvalue %dx.types.ResRet.i32 %2620, 0
  %2622 = lshr i32 %2621, 16
  %2623 = and i32 %2622, 31
  %2624 = shl i32 %2546, %2623
  %2625 = add i32 %2624, %2545
  %2626 = shl i32 %2625, 2
  %2627 = add i32 %2626, %2619
  %2628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2627, i32 undef)  ; BufferLoad(srv,index,wot)
  %2629 = extractvalue %dx.types.ResRet.i32 %2628, 0
  %2630 = icmp eq i32 %2629, 0
  br i1 %2630, label %2648, label %2631

; <label>:2631                                    ; preds = %2603
  %2632 = icmp slt i32 %2629, 0
  %2633 = getelementptr [12 x float], [12 x float]* %77, i32 0, i32 %2604
  %2634 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 %2604
  %2635 = bitcast float* %2633 to i32*
  %2636 = bitcast float* %2634 to i32*
  br i1 %2632, label %2637, label %2644

; <label>:2637                                    ; preds = %2631
  %2638 = and i32 %2629, 1073741823
  %2639 = add i32 %2619, 20
  %2640 = add i32 %2639, %2638
  %2641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2640, i32 undef)  ; BufferLoad(srv,index,wot)
  %2642 = extractvalue %dx.types.ResRet.i32 %2641, 0
  %2643 = extractvalue %dx.types.ResRet.i32 %2641, 1
  br label %2644

; <label>:2644                                    ; preds = %2637, %2631
  %2645 = phi i32 [ %2642, %2637 ], [ %2553, %2631 ]
  %2646 = phi i32 [ %2643, %2637 ], [ %2554, %2631 ]
  store i32 %2645, i32* %2635, align 4
  store i32 %2646, i32* %2636, align 4
  %2647 = add i32 %2604, 1
  br label %2648

; <label>:2648                                    ; preds = %2644, %2603
  %2649 = phi i32 [ %2604, %2603 ], [ %2647, %2644 ]
  %2650 = add nuw i32 %2605, 1
  %2651 = icmp eq i32 %2650, %2600
  br i1 %2651, label %2652, label %2603

; <label>:2652                                    ; preds = %2648
  br label %2653

; <label>:2653                                    ; preds = %2652, %2597
  %2654 = phi i32 [ %2598, %2597 ], [ %2649, %2652 ]
  %2655 = icmp eq i32 %2654, 1
  %2656 = getelementptr [12 x float], [12 x float]* %77, i32 0, i32 0
  %2657 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 0
  br i1 %2655, label %2658, label %2661

; <label>:2658                                    ; preds = %2653
  %2659 = load float, float* %2656, align 4
  %2660 = load float, float* %2657, align 4
  br label %2688

; <label>:2661                                    ; preds = %2653
  %2662 = load float, float* %2656, align 4
  %2663 = load float, float* %2657, align 4
  %2664 = fdiv fast float 1.000000e+00, %2663
  %2665 = fsub fast float %2662, %2664
  %2666 = icmp ugt i32 %2654, 1
  br i1 %2666, label %2667, label %2683

; <label>:2667                                    ; preds = %2661
  br label %2668

; <label>:2668                                    ; preds = %2668, %2667
  %2669 = phi float [ %2678, %2668 ], [ %2665, %2667 ]
  %2670 = phi float [ %2679, %2668 ], [ %2662, %2667 ]
  %2671 = phi i32 [ %2680, %2668 ], [ 1, %2667 ]
  %2672 = getelementptr [12 x float], [12 x float]* %77, i32 0, i32 %2671
  %2673 = load float, float* %2672, align 4
  %2674 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 %2671
  %2675 = load float, float* %2674, align 4
  %2676 = fdiv fast float 1.000000e+00, %2675
  %2677 = fsub fast float %2673, %2676
  %2678 = call float @dx.op.binary.f32(i32 36, float %2669, float %2677)  ; FMin(a,b)
  %2679 = call float @dx.op.binary.f32(i32 35, float %2670, float %2673)  ; FMax(a,b)
  %2680 = add nuw i32 %2671, 1
  %2681 = icmp eq i32 %2680, %2654
  br i1 %2681, label %2682, label %2668

; <label>:2682                                    ; preds = %2668
  br label %2683

; <label>:2683                                    ; preds = %2682, %2661
  %2684 = phi float [ %2665, %2661 ], [ %2678, %2682 ]
  %2685 = phi float [ %2662, %2661 ], [ %2679, %2682 ]
  %2686 = fsub fast float %2685, %2684
  %2687 = fdiv fast float 1.000000e+00, %2686
  br label %2688

; <label>:2688                                    ; preds = %2683, %2658
  %2689 = phi float [ %2659, %2658 ], [ %2685, %2683 ]
  %2690 = phi float [ %2660, %2658 ], [ %2687, %2683 ]
  %2691 = fadd fast float %2392, %2689
  %2692 = fmul fast float %2691, %2690
  %2693 = call float @dx.op.unary.f32(i32 7, float %2692)  ; Saturate(value)
  %2694 = fmul fast float %2693, 2.000000e+00
  %2695 = fsub fast float 1.000000e+00, %2694
  %2696 = fmul fast float %2530, %2530
  %2697 = fsub fast float %2531, %2696
  %2698 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2697)  ; FMax(a,b)
  %2699 = fdiv fast float 1.000000e+00, %2698
  %2700 = fmul fast float %2531, %2530
  %2701 = fsub fast float %2532, %2700
  %2702 = fsub fast float %2695, %2530
  %2703 = fmul fast float %2695, %2695
  %2704 = fsub fast float %2703, %2531
  %2705 = fmul fast float %2699, %2701
  %2706 = fmul fast float %2705, %2702
  %2707 = fsub fast float %2704, %2706
  %2708 = fmul fast float %2531, %2531
  %2709 = fsub fast float %2533, %2708
  %2710 = fmul fast float %2701, %2701
  %2711 = fmul fast float %2710, %2699
  %2712 = fsub fast float %2709, %2711
  %2713 = fdiv fast float %2707, %2712
  %2714 = fmul fast float %2713, %2701
  %2715 = fsub fast float %2702, %2714
  %2716 = fmul fast float %2715, %2699
  %2717 = fmul fast float %2716, %2530
  %2718 = fsub fast float 1.000000e+00, %2717
  %2719 = fmul fast float %2713, %2531
  %2720 = fsub fast float %2718, %2719
  %2721 = fmul fast float %2716, %2716
  %2722 = fmul fast float %2713, 4.000000e+00
  %2723 = fmul fast float %2722, %2720
  %2724 = fsub fast float %2721, %2723
  %2725 = call float @dx.op.unary.f32(i32 24, float %2724)  ; Sqrt(value)
  %2726 = fcmp fast oge float %2716, 0.000000e+00
  %2727 = fsub fast float -0.000000e+00, %2725
  %2728 = select i1 %2726, float %2727, float %2725
  %2729 = fsub fast float %2728, %2716
  %2730 = fdiv fast float %2729, %2713
  %2731 = fdiv fast float %2720, %2729
  %2732 = fmul fast float %2730, 5.000000e-01
  %2733 = fmul fast float %2731, 2.000000e+00
  %2734 = select i1 %2726, float %2732, float %2733
  %2735 = select i1 %2726, float %2733, float %2732
  %2736 = call float @dx.op.binary.f32(i32 35, float %2734, float %2735)  ; FMax(a,b)
  %2737 = call float @dx.op.binary.f32(i32 36, float %2734, float %2735)  ; FMin(a,b)
  %2738 = fcmp fast ogt float %2695, %2736
  %2739 = fsub fast float %2695, %2737
  %2740 = fsub fast float %2695, %2736
  %2741 = fsub fast float %2736, %2737
  %2742 = select i1 %2738, float %2740, float %2741
  %2743 = fmul float %2739, %2742
  %2744 = select i1 %2738, float %2737, float %2695
  %2745 = fcmp fast ogt float %2695, %2737
  %2746 = fmul fast float %2744, %2736
  %2747 = fadd fast float %2744, %2736
  %2748 = fmul fast float %2747, %2530
  %2749 = fadd fast float %2746, %2531
  %2750 = fsub fast float %2749, %2748
  %2751 = fdiv fast float %2750, %2743
  %2752 = select i1 %2745, float %2751, float 0.000000e+00
  %2753 = fsub fast float 1.000000e+00, %2752
  %2754 = select i1 %2738, float %2753, float %2752
  %2755 = call float @dx.op.unary.f32(i32 7, float %2754)  ; Saturate(value)
  %2756 = extractvalue %dx.types.CBufRet.f32 %2515, 3
  %2757 = fmul fast float %2756, %2755
  %2758 = fsub fast float 1.000000e+00, %2757
  br label %2759

; <label>:2759                                    ; preds = %2688, %2400, %2365, %2361, %2325
  %2760 = phi float [ 1.000000e+00, %2325 ], [ %2758, %2688 ], [ 1.000000e+00, %2365 ], [ 1.000000e+00, %2400 ], [ 1.000000e+00, %2361 ]
  %2761 = fcmp fast ogt float %2357, 0.000000e+00
  br i1 %2761, label %2762, label %2770, !dx.controlflow.hints !131

; <label>:2762                                    ; preds = %2759
  %2763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2764 = extractvalue %dx.types.CBufRet.f32 %2763, 2
  %2765 = fadd fast float %2764, %2238
  %2766 = call float @dx.op.binary.f32(i32 35, float %2765, float 0.000000e+00)  ; FMax(a,b)
  %2767 = fadd fast float %2766, 0x3F10000000000000
  %2768 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %39, float %2256, float %2257, float undef, float undef, i32 0, i32 0, i32 undef, float %2767)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2769 = extractvalue %dx.types.ResRet.f32 %2768, 0
  br label %2770

; <label>:2770                                    ; preds = %2762, %2759
  %2771 = phi float [ %2769, %2762 ], [ 1.000000e+00, %2759 ]
  %2772 = fcmp fast ogt float %2355, 0.000000e+00
  br i1 %2772, label %2773, label %2781, !dx.controlflow.hints !132

; <label>:2773                                    ; preds = %2770
  %2774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2775 = extractvalue %dx.types.CBufRet.f32 %2774, 1
  %2776 = fadd fast float %2775, %2238
  %2777 = call float @dx.op.binary.f32(i32 35, float %2776, float 0.000000e+00)  ; FMax(a,b)
  %2778 = fadd fast float %2777, 0x3F10000000000000
  %2779 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %39, float %2248, float %2249, float undef, float undef, i32 0, i32 0, i32 undef, float %2778)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2780 = extractvalue %dx.types.ResRet.f32 %2779, 0
  br label %2781

; <label>:2781                                    ; preds = %2773, %2770
  %2782 = phi float [ %2780, %2773 ], [ 1.000000e+00, %2770 ]
  %2783 = fcmp fast ogt float %2354, 0.000000e+00
  br i1 %2783, label %2784, label %2796, !dx.controlflow.hints !133

; <label>:2784                                    ; preds = %2781
  %2785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2786 = extractvalue %dx.types.CBufRet.f32 %2785, 0
  %2787 = fadd fast float %2786, %2238
  %2788 = call float @dx.op.binary.f32(i32 35, float %2787, float 0.000000e+00)  ; FMax(a,b)
  %2789 = fadd fast float %2788, 0x3F10000000000000
  br i1 %2241, label %2790, label %2793, !dx.controlflow.hints !134

; <label>:2790                                    ; preds = %2784
  %2791 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %39, float %2230, float %2234, float undef, float undef, i32 0, i32 0, i32 undef, float %2789)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2792 = extractvalue %dx.types.ResRet.f32 %2791, 0
  br label %2796

; <label>:2793                                    ; preds = %2784
  %2794 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %39, float %2230, float %2234, float undef, float undef, i32 0, i32 0, i32 undef, float %2789)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2795 = extractvalue %dx.types.ResRet.f32 %2794, 0
  br label %2796

; <label>:2796                                    ; preds = %2793, %2790, %2781
  %2797 = phi float [ %2792, %2790 ], [ %2795, %2793 ], [ 1.000000e+00, %2781 ]
  %2798 = fsub fast float %2771, %2760
  %2799 = fmul fast float %2798, %2327
  %2800 = fadd fast float %2799, %2760
  %2801 = fsub fast float %2782, %2800
  %2802 = fmul fast float %2801, %2326
  %2803 = fadd fast float %2802, %2800
  %2804 = fsub fast float %2797, %2803
  %2805 = fmul fast float %2804, %2354
  %2806 = fadd fast float %2805, %2803
  %2807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %2808 = extractvalue %dx.types.CBufRet.f32 %2807, 2
  %2809 = fcmp fast ogt float %2808, 0.000000e+00
  br i1 %2809, label %2810, label %2847, !dx.controlflow.hints !135

; <label>:2810                                    ; preds = %2796
  %2811 = fcmp fast ugt float %2808, 0.000000e+00
  br i1 %2811, label %2812, label %2844

; <label>:2812                                    ; preds = %2810
  %2813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %2814 = extractvalue %dx.types.CBufRet.f32 %2813, 0
  %2815 = extractvalue %dx.types.CBufRet.f32 %2813, 1
  %2816 = extractvalue %dx.types.CBufRet.f32 %2813, 2
  %2817 = extractvalue %dx.types.CBufRet.f32 %2813, 3
  %2818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %2819 = extractvalue %dx.types.CBufRet.f32 %2818, 0
  %2820 = extractvalue %dx.types.CBufRet.f32 %2818, 1
  %2821 = extractvalue %dx.types.CBufRet.f32 %2818, 2
  %2822 = extractvalue %dx.types.CBufRet.f32 %2818, 3
  %2823 = extractvalue %dx.types.CBufRet.f32 %2807, 0
  %2824 = extractvalue %dx.types.CBufRet.f32 %2807, 1
  %2825 = extractvalue %dx.types.CBufRet.f32 %439, 2
  %2826 = fadd fast float %440, %2207
  %2827 = fadd fast float %441, %2208
  %2828 = fadd fast float %2825, %2209
  %2829 = fmul fast float %2826, %2814
  %2830 = call float @dx.op.tertiary.f32(i32 46, float %2815, float %2827, float %2829)  ; FMad(a,b,c)
  %2831 = call float @dx.op.tertiary.f32(i32 46, float %2816, float %2828, float %2830)  ; FMad(a,b,c)
  %2832 = fadd fast float %2831, %2817
  %2833 = fmul fast float %2826, %2819
  %2834 = call float @dx.op.tertiary.f32(i32 46, float %2820, float %2827, float %2833)  ; FMad(a,b,c)
  %2835 = call float @dx.op.tertiary.f32(i32 46, float %2821, float %2828, float %2834)  ; FMad(a,b,c)
  %2836 = fadd fast float %2835, %2822
  %2837 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %35, float %2832, float %2836, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2838 = extractvalue %dx.types.ResRet.f32 %2837, 0
  %2839 = fmul fast float %2838, %2824
  %2840 = fadd fast float %2839, %2823
  %2841 = call float @dx.op.unary.f32(i32 7, float %2840)  ; Saturate(value)
  %2842 = fmul fast float %2841, %2808
  %2843 = fsub fast float 1.000000e+00, %2842
  br label %2844

; <label>:2844                                    ; preds = %2812, %2810
  %2845 = phi float [ %2843, %2812 ], [ 1.000000e+00, %2810 ]
  %2846 = fmul fast float %2845, %2806
  br label %2847

; <label>:2847                                    ; preds = %2844, %2796, %2187
  %2848 = phi float [ 1.000000e+00, %2187 ], [ %2846, %2844 ], [ %2806, %2796 ]
  %2849 = call float @dx.op.binary.f32(i32 36, float %2848, float %2848)  ; FMin(a,b)
  %2850 = call float @dx.op.binary.f32(i32 36, float %2848, float %2849)  ; FMin(a,b)
  %2851 = fcmp fast ogt float %2850, 0.000000e+00
  br i1 %2851, label %2852, label %3009, !dx.controlflow.hints !136

; <label>:2852                                    ; preds = %2847
  %2853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2854 = extractvalue %dx.types.CBufRet.f32 %2853, 0
  %2855 = extractvalue %dx.types.CBufRet.f32 %2853, 1
  %2856 = extractvalue %dx.types.CBufRet.f32 %2853, 2
  %2857 = extractvalue %dx.types.CBufRet.f32 %2853, 3
  %2858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2859 = extractvalue %dx.types.CBufRet.f32 %2858, 0
  %2860 = extractvalue %dx.types.CBufRet.f32 %2858, 1
  %2861 = extractvalue %dx.types.CBufRet.f32 %2858, 2
  %2862 = extractvalue %dx.types.CBufRet.f32 %2858, 3
  %2863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2864 = extractvalue %dx.types.CBufRet.f32 %2863, 0
  %2865 = extractvalue %dx.types.CBufRet.f32 %2863, 1
  %2866 = extractvalue %dx.types.CBufRet.f32 %2863, 2
  %2867 = extractvalue %dx.types.CBufRet.f32 %2863, 3
  %2868 = fmul fast float %2854, %2207
  %2869 = call float @dx.op.tertiary.f32(i32 46, float %2208, float %2855, float %2868)  ; FMad(a,b,c)
  %2870 = call float @dx.op.tertiary.f32(i32 46, float %2209, float %2856, float %2869)  ; FMad(a,b,c)
  %2871 = fadd fast float %2870, %2857
  %2872 = fmul fast float %2859, %2207
  %2873 = call float @dx.op.tertiary.f32(i32 46, float %2208, float %2860, float %2872)  ; FMad(a,b,c)
  %2874 = call float @dx.op.tertiary.f32(i32 46, float %2209, float %2861, float %2873)  ; FMad(a,b,c)
  %2875 = fadd fast float %2874, %2862
  %2876 = fmul fast float %2864, %2207
  %2877 = call float @dx.op.tertiary.f32(i32 46, float %2208, float %2865, float %2876)  ; FMad(a,b,c)
  %2878 = call float @dx.op.tertiary.f32(i32 46, float %2209, float %2866, float %2877)  ; FMad(a,b,c)
  %2879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %2880 = extractvalue %dx.types.CBufRet.f32 %2879, 0
  %2881 = extractvalue %dx.types.CBufRet.f32 %2879, 1
  %2882 = extractvalue %dx.types.CBufRet.f32 %2879, 3
  %2883 = fmul fast float %2882, %2871
  %2884 = fmul fast float %2882, %2875
  %2885 = fadd fast float %2883, %2880
  %2886 = fadd fast float %2884, %2881
  %2887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %2888 = extractvalue %dx.types.CBufRet.f32 %2887, 0
  %2889 = extractvalue %dx.types.CBufRet.f32 %2887, 1
  %2890 = fsub fast float %2885, %2888
  %2891 = fsub fast float %2886, %2889
  %2892 = fcmp fast olt float %2890, 0.000000e+00
  %2893 = fcmp fast olt float %2891, 0.000000e+00
  %2894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %2895 = extractvalue %dx.types.CBufRet.f32 %2894, 0
  %2896 = extractvalue %dx.types.CBufRet.f32 %2894, 1
  %2897 = extractvalue %dx.types.CBufRet.f32 %2894, 2
  %2898 = extractvalue %dx.types.CBufRet.f32 %2894, 3
  %2899 = select i1 %2892, float %2895, float %2897
  %2900 = select i1 %2893, float %2896, float %2898
  %2901 = fmul fast float %2899, %2890
  %2902 = fmul fast float %2900, %2891
  %2903 = call float @dx.op.unary.f32(i32 6, float %2901)  ; FAbs(value)
  %2904 = call float @dx.op.unary.f32(i32 6, float %2902)  ; FAbs(value)
  %2905 = extractvalue %dx.types.CBufRet.f32 %2202, 0
  %2906 = call float @dx.op.binary.f32(i32 35, float %2903, float %2904)  ; FMax(a,b)
  %2907 = fsub fast float %2905, %2906
  %2908 = call float @dx.op.unary.f32(i32 7, float %2907)  ; Saturate(value)
  %2909 = fcmp fast ogt float %2908, 0.000000e+00
  br i1 %2909, label %2910, label %2951, !dx.controlflow.hints !137

; <label>:2910                                    ; preds = %2852
  %2911 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %38, float %2885, float %2886, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2912 = extractvalue %dx.types.ResRet.f32 %2911, 1
  %2913 = fcmp fast ogt float %2912, 0.000000e+00
  br i1 %2913, label %2914, label %2947

; <label>:2914                                    ; preds = %2910
  %2915 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %38, float %2885, float %2886, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2916 = extractvalue %dx.types.ResRet.f32 %2915, 0
  %2917 = extractvalue %dx.types.ResRet.f32 %2915, 1
  %2918 = extractvalue %dx.types.ResRet.f32 %2915, 2
  %2919 = extractvalue %dx.types.ResRet.f32 %2915, 3
  %2920 = fsub fast float 1.000000e+00, %2867
  %2921 = fsub fast float %2920, %2878
  %2922 = fmul fast float %2921, 0x400921FB60000000
  %2923 = fadd fast float %2922, 0x3FF921FB60000000
  %2924 = call float @dx.op.unary.f32(i32 13, float %2923)  ; Sin(value)
  %2925 = fadd fast float %2924, -1.000000e+00
  %2926 = fmul fast float %2925, 0x3FD45F3060000000
  %2927 = fmul fast float %2921, 0x401921FB60000000
  %2928 = fadd fast float %2927, 0x400921FB60000000
  %2929 = call float @dx.op.unary.f32(i32 13, float %2928)  ; Sin(value)
  %2930 = fadd fast float %2929, 0x3E7777A5C0000000
  %2931 = fmul fast float %2930, 0x3FC45F3060000000
  %2932 = fmul fast float %2921, 0x4022D97C80000000
  %2933 = fadd fast float %2932, 0x4012D97C80000000
  %2934 = call float @dx.op.unary.f32(i32 13, float %2933)  ; Sin(value)
  %2935 = fadd fast float %2934, 1.000000e+00
  %2936 = fmul fast float %2935, 0x3FBB2995E0000000
  %2937 = fmul fast float %2921, 0x402921FB60000000
  %2938 = fadd fast float %2937, 0x401921FB60000000
  %2939 = call float @dx.op.unary.f32(i32 13, float %2938)  ; Sin(value)
  %2940 = fadd fast float %2939, 0xBE8777A5C0000000
  %2941 = fmul fast float %2940, 0x3FB45F3060000000
  %2942 = call float @dx.op.dot4.f32(i32 56, float %2916, float %2917, float %2918, float %2919, float %2926, float %2931, float %2936, float %2941)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2943 = fmul fast float %2942, 0xBFF7154760000000
  %2944 = call float @dx.op.unary.f32(i32 21, float %2943)  ; Exp(value)
  %2945 = call float @dx.op.unary.f32(i32 7, float %2944)  ; Saturate(value)
  %2946 = fadd float %2945, -1.000000e+00
  br label %2947

; <label>:2947                                    ; preds = %2914, %2910
  %2948 = phi float [ %2946, %2914 ], [ 0.000000e+00, %2910 ]
  %2949 = fmul fast float %2948, %2908
  %2950 = fadd fast float %2949, 1.000000e+00
  br label %2951

; <label>:2951                                    ; preds = %2947, %2852
  %2952 = phi float [ %2950, %2947 ], [ 1.000000e+00, %2852 ]
  %2953 = fmul fast float %2952, %2848
  %2954 = extractvalue %dx.types.CBufRet.f32 %439, 2
  %2955 = fadd fast float %440, %358
  %2956 = fadd fast float %441, %359
  %2957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %2958 = extractvalue %dx.types.CBufRet.f32 %2957, 1
  %2959 = fsub fast float -0.000000e+00, %2955
  %2960 = fsub fast float -0.000000e+00, %2956
  %2961 = fsub fast float %418, %2954
  %2962 = fadd fast float %2961, %2958
  %2963 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2959, float %2960, float %2962)  ; Dot3(ax,ay,az,bx,by,bz)
  %2964 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2188, float %2189, float %2190)  ; Dot3(ax,ay,az,bx,by,bz)
  %2965 = fdiv fast float 1.000000e+00, %2964
  %2966 = fmul fast float %2965, %2963
  %2967 = fmul fast float %2188, %2966
  %2968 = fmul fast float %2189, %2966
  %2969 = fadd fast float %2967, %2955
  %2970 = fadd fast float %2968, %2956
  %2971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %2972 = extractvalue %dx.types.CBufRet.f32 %2971, 0
  %2973 = extractvalue %dx.types.CBufRet.f32 %2971, 1
  %2974 = fsub fast float %2969, %2972
  %2975 = fsub fast float %2970, %2973
  %2976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %2977 = extractvalue %dx.types.CBufRet.f32 %2976, 2
  %2978 = extractvalue %dx.types.CBufRet.f32 %2976, 3
  %2979 = fmul fast float %2974, %2977
  %2980 = fmul fast float %2975, %2978
  %2981 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %2982 = extractvalue %dx.types.CBufRet.i32 %2981, 3
  %2983 = icmp eq i32 %2982, 0
  br i1 %2983, label %2989, label %2984

; <label>:2984                                    ; preds = %2951
  %2985 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %37, float %2979, float %2980, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2986 = extractvalue %dx.types.ResRet.f32 %2985, 0
  %2987 = extractvalue %dx.types.ResRet.f32 %2985, 1
  %2988 = extractvalue %dx.types.ResRet.f32 %2985, 2
  br label %2994

; <label>:2989                                    ; preds = %2951
  %2990 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %38, float %2979, float %2980, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2991 = extractvalue %dx.types.ResRet.f32 %2990, 0
  %2992 = extractvalue %dx.types.ResRet.f32 %2990, 1
  %2993 = extractvalue %dx.types.ResRet.f32 %2990, 2
  br label %2994

; <label>:2994                                    ; preds = %2989, %2984
  %2995 = phi float [ %2986, %2984 ], [ %2991, %2989 ]
  %2996 = phi float [ %2987, %2984 ], [ %2992, %2989 ]
  %2997 = phi float [ %2988, %2984 ], [ %2993, %2989 ]
  %2998 = extractvalue %dx.types.CBufRet.f32 %2957, 2
  %2999 = fmul fast float %2998, %2995
  %3000 = extractvalue %dx.types.CBufRet.f32 %2957, 0
  %3001 = fsub fast float %2966, %3000
  %3002 = fsub fast float %3001, %2999
  %3003 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3002)  ; FMax(a,b)
  %3004 = fmul fast float %3003, %2996
  %3005 = call float @dx.op.binary.f32(i32 36, float %2997, float %3004)  ; FMin(a,b)
  %3006 = fmul fast float %3005, 0xBFF7154760000000
  %3007 = call float @dx.op.unary.f32(i32 21, float %3006)  ; Exp(value)
  %3008 = fmul fast float %2953, %3007
  br label %3009

; <label>:3009                                    ; preds = %2994, %2847
  %3010 = phi float [ %3008, %2994 ], [ %2848, %2847 ]
  %3011 = call float @dx.op.binary.f32(i32 36, float %3010, float %3010)  ; FMin(a,b)
  %3012 = call float @dx.op.binary.f32(i32 36, float %3010, float %3011)  ; FMin(a,b)
  %3013 = fcmp fast ogt float %3012, 0.000000e+00
  br i1 %3013, label %3014, label %3141, !dx.controlflow.hints !138

; <label>:3014                                    ; preds = %3009
  %3015 = fmul fast float %3010, %2199
  %3016 = fmul fast float %3010, %2200
  %3017 = fmul fast float %3010, %2201
  %3018 = fsub fast float %2188, %421
  %3019 = fsub fast float %2189, %422
  %3020 = fsub fast float %2190, %423
  %3021 = call float @dx.op.dot3.f32(i32 55, float %3018, float %3019, float %3020, float %3018, float %3019, float %3020)  ; Dot3(ax,ay,az,bx,by,bz)
  %3022 = call float @dx.op.unary.f32(i32 25, float %3021)  ; Rsqrt(value)
  %3023 = fmul fast float %3022, %3018
  %3024 = fmul fast float %3022, %3019
  %3025 = fmul fast float %3022, %3020
  %3026 = call float @dx.op.dot3.f32(i32 55, float %2188, float %2189, float %2190, float %280, float %281, float %282)  ; Dot3(ax,ay,az,bx,by,bz)
  %3027 = call float @dx.op.dot3.f32(i32 55, float %424, float %425, float %426, float %3023, float %3024, float %3025)  ; Dot3(ax,ay,az,bx,by,bz)
  %3028 = call float @dx.op.unary.f32(i32 7, float %3026)  ; Saturate(value)
  %3029 = fmul fast float %3028, %3028
  %3030 = fmul fast float %3029, 0x47DE623840000000
  %3031 = call float @dx.op.unary.f32(i32 7, float %3030)  ; Saturate(value)
  %3032 = fmul fast float %3031, %3028
  %3033 = call float @dx.op.dot3.f32(i32 55, float %280, float %281, float %282, float %3023, float %3024, float %3025)  ; Dot3(ax,ay,az,bx,by,bz)
  %3034 = fmul fast float %3033, %3033
  %3035 = call float @dx.op.unary.f32(i32 6, float %3026)  ; FAbs(value)
  %3036 = fsub fast float 1.000000e+00, %292
  %3037 = call float @dx.op.binary.f32(i32 35, float %3036, float 0x3F847AE140000000)  ; FMax(a,b)
  %3038 = fmul fast float %3037, %3037
  %3039 = fmul fast float %3038, %3038
  %3040 = fsub fast float 1.000000e+00, %3039
  %3041 = fmul fast float %429, %429
  %3042 = fmul fast float %3041, %3040
  %3043 = fadd fast float %3042, %3039
  %3044 = bitcast float %3043 to i32
  %3045 = ashr i32 %3044, 1
  %3046 = add nsw i32 %3045, 532487669
  %3047 = bitcast i32 %3046 to float
  %3048 = fadd fast float %3047, %429
  %3049 = fmul fast float %3039, %3034
  %3050 = fsub fast float 1.000000e+00, %3034
  %3051 = fadd fast float %3050, %3049
  %3052 = fmul fast float %3035, %3035
  %3053 = fmul fast float %3052, %3040
  %3054 = fadd fast float %3053, %3039
  %3055 = bitcast float %3054 to i32
  %3056 = ashr i32 %3055, 1
  %3057 = add nsw i32 %3056, 532487669
  %3058 = bitcast i32 %3057 to float
  %3059 = fadd fast float %3058, %3035
  %3060 = fmul fast float %3051, %3051
  %3061 = fmul fast float %3060, %3048
  %3062 = fmul fast float %3061, %3059
  %3063 = fdiv fast float 0x3FF0A00000000000, %3062
  %3064 = fmul fast float %3063, %3039
  %3065 = call float @dx.op.unary.f32(i32 6, float %3027)  ; FAbs(value)
  %3066 = fsub fast float 1.000000e+00, %3065
  %3067 = bitcast float %3066 to i32
  %3068 = sitofp i32 %3067 to float
  %3069 = fmul fast float %3068, 5.000000e+00
  %3070 = fadd fast float %3069, 0xC1EFBF8940000000
  %3071 = fptosi float %3070 to i32
  %3072 = bitcast i32 %3071 to float
  %3073 = fsub fast float 1.000000e+00, %409
  %3074 = fsub fast float 1.000000e+00, %410
  %3075 = fsub fast float 1.000000e+00, %427
  %3076 = fmul fast float %3072, %3073
  %3077 = fmul fast float %3072, %3074
  %3078 = fmul fast float %3072, %3075
  %3079 = fadd fast float %3076, %409
  %3080 = fadd fast float %3077, %410
  %3081 = fadd fast float %3078, %427
  %3082 = fmul fast float %3026, 9.843750e-01
  %3083 = fadd fast float %3082, 7.812500e-03
  %3084 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %38, float %3083, float %2159, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3085 = extractvalue %dx.types.ResRet.f32 %3084, 2
  %3086 = extractvalue %dx.types.ResRet.f32 %3084, 3
  %3087 = fmul fast float %3085, %409
  %3088 = fmul fast float %3085, %410
  %3089 = fmul fast float %3085, %427
  %3090 = fadd fast float %3087, %3086
  %3091 = fadd fast float %3088, %3086
  %3092 = fadd fast float %3089, %3086
  %3093 = call float @dx.op.binary.f32(i32 35, float %3091, float %3092)  ; FMax(a,b)
  %3094 = call float @dx.op.binary.f32(i32 35, float %3090, float %3093)  ; FMax(a,b)
  %3095 = fsub fast float 1.000000e+00, %3094
  %3096 = fsub fast float -0.000000e+00, %280
  %3097 = fsub fast float -0.000000e+00, %281
  %3098 = fsub fast float -0.000000e+00, %282
  %3099 = call float @dx.op.dot3.f32(i32 55, float %2188, float %2189, float %2190, float %3096, float %3097, float %3098)  ; Dot3(ax,ay,az,bx,by,bz)
  %3100 = call float @dx.op.unary.f32(i32 7, float %3099)  ; Saturate(value)
  %3101 = fmul fast float %3100, 9.843750e-01
  %3102 = fadd fast float %3101, 7.812500e-03
  %3103 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %38, float %3102, float %2159, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3104 = extractvalue %dx.types.ResRet.f32 %3103, 2
  %3105 = extractvalue %dx.types.ResRet.f32 %3103, 3
  %3106 = fmul fast float %3104, %409
  %3107 = fmul fast float %3104, %410
  %3108 = fmul fast float %3104, %427
  %3109 = fadd fast float %3106, %3105
  %3110 = fadd fast float %3107, %3105
  %3111 = fadd fast float %3108, %3105
  %3112 = call float @dx.op.binary.f32(i32 35, float %3110, float %3111)  ; FMax(a,b)
  %3113 = call float @dx.op.binary.f32(i32 35, float %3109, float %3112)  ; FMax(a,b)
  %3114 = fsub fast float 1.000000e+00, %3113
  %3115 = fmul fast float %3114, %3100
  %3116 = fmul fast float %3115, %299
  %3117 = fmul fast float %3115, %300
  %3118 = fmul fast float %3115, %301
  %3119 = fmul fast float %3095, %3032
  %3120 = fadd fast float %3116, %3119
  %3121 = fadd fast float %3117, %3119
  %3122 = fadd fast float %3118, %3119
  %3123 = fmul fast float %3120, %3015
  %3124 = fmul fast float %3121, %3016
  %3125 = fmul fast float %3122, %3017
  %3126 = fadd fast float %3123, %2179
  %3127 = fadd fast float %3124, %2181
  %3128 = fadd fast float %3125, %2183
  %3129 = fmul fast float %3032, %3015
  %3130 = fmul fast float %3129, %3064
  %3131 = fmul fast float %3130, %3079
  %3132 = fmul fast float %3032, %3016
  %3133 = fmul fast float %3132, %3064
  %3134 = fmul fast float %3133, %3080
  %3135 = fmul fast float %3032, %3017
  %3136 = fmul fast float %3135, %3064
  %3137 = fmul fast float %3136, %3081
  %3138 = fadd fast float %3131, %2172
  %3139 = fadd fast float %3134, %2173
  %3140 = fadd fast float %3137, %2174
  br label %3141

; <label>:3141                                    ; preds = %3014, %3009, %2083
  %3142 = phi float [ %2172, %2083 ], [ %2172, %3009 ], [ %3138, %3014 ]
  %3143 = phi float [ %2173, %2083 ], [ %2173, %3009 ], [ %3139, %3014 ]
  %3144 = phi float [ %2174, %2083 ], [ %2174, %3009 ], [ %3140, %3014 ]
  %3145 = phi float [ %2179, %2083 ], [ %2179, %3009 ], [ %3126, %3014 ]
  %3146 = phi float [ %2181, %2083 ], [ %2181, %3009 ], [ %3127, %3014 ]
  %3147 = phi float [ %2183, %2083 ], [ %2183, %3009 ], [ %3128, %3014 ]
  %3148 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3149 = extractvalue %dx.types.CBufRet.i32 %3148, 0
  %3150 = icmp eq i32 %3149, 0
  br i1 %3150, label %3649, label %3151

; <label>:3151                                    ; preds = %3141
  %3152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3153 = extractvalue %dx.types.CBufRet.f32 %3152, 2
  %3154 = extractvalue %dx.types.CBufRet.f32 %3152, 3
  %3155 = fmul fast float %3153, %83
  %3156 = fmul fast float %3154, %84
  %3157 = fptoui float %3155 to i32
  %3158 = fptoui float %3156 to i32
  %3159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3160 = extractvalue %dx.types.CBufRet.f32 %3159, 0
  %3161 = extractvalue %dx.types.CBufRet.f32 %3159, 2
  %3162 = extractvalue %dx.types.CBufRet.f32 %3159, 3
  %3163 = fadd fast float %324, -4.000000e+00
  %3164 = call float @dx.op.binary.f32(i32 35, float %3163, float 0.000000e+00)  ; FMax(a,b)
  %3165 = fadd fast float %3164, %3160
  %3166 = fmul fast float %3165, %3161
  %3167 = call float @dx.op.unary.f32(i32 23, float %3166)  ; Log(value)
  %3168 = fmul fast float %3167, %3162
  %3169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3170 = extractvalue %dx.types.CBufRet.f32 %3169, 2
  %3171 = fmul fast float %3168, %3170
  %3172 = call float @dx.op.unary.f32(i32 7, float %3171)  ; Saturate(value)
  %3173 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3174 = extractvalue %dx.types.CBufRet.i32 %3173, 1
  %3175 = add i32 %3174, -1
  %3176 = uitofp i32 %3174 to float
  %3177 = fmul fast float %3176, %3172
  %3178 = fptoui float %3177 to i32
  %3179 = call i32 @dx.op.binary.i32(i32 40, i32 %3178, i32 %3175)  ; UMin(a,b)
  %3180 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3181 = extractvalue %dx.types.CBufRet.i32 %3180, 2
  %3182 = extractvalue %dx.types.CBufRet.i32 %3180, 3
  %3183 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3158, i32 %3181, i32 %3157)  ; UMad(a,b,c)
  %3184 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3179, i32 %3182, i32 %3183)  ; UMad(a,b,c)
  %3185 = add nsw i32 %3149, -1
  %3186 = call i32 @dx.op.binary.i32(i32 37, i32 %3185, i32 0)  ; IMax(a,b)
  %3187 = call float @dx.op.binary.f32(i32 35, float %324, float 0.000000e+00)  ; FMax(a,b)
  %3188 = fptoui float %3187 to i32
  %3189 = lshr i32 %3188, 5
  %3190 = call i32 @dx.op.binary.i32(i32 40, i32 %3189, i32 8191)  ; UMin(a,b)
  %3191 = shl i32 %3190, 2
  %3192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %3191, i32 undef)  ; BufferLoad(srv,index,wot)
  %3193 = extractvalue %dx.types.ResRet.i32 %3192, 0
  %3194 = lshr i32 %3193, 16
  %3195 = and i32 %3193, 65535
  %3196 = lshr i32 %3193, 21
  %3197 = lshr i32 %3195, 5
  %3198 = call i32 @dx.op.binary.i32(i32 40, i32 %3197, i32 %3186)  ; UMin(a,b)
  %3199 = icmp ugt i32 %3196, %3198
  br i1 %3199, label %3649, label %3200

; <label>:3200                                    ; preds = %3151
  br label %3201

; <label>:3201                                    ; preds = %3639, %3200
  %3202 = phi i32 [ %3646, %3639 ], [ %3196, %3200 ]
  %3203 = phi float [ %3640, %3639 ], [ %3142, %3200 ]
  %3204 = phi float [ %3641, %3639 ], [ %3143, %3200 ]
  %3205 = phi float [ %3642, %3639 ], [ %3144, %3200 ]
  %3206 = phi float [ %3643, %3639 ], [ %3145, %3200 ]
  %3207 = phi float [ %3644, %3639 ], [ %3146, %3200 ]
  %3208 = phi float [ %3645, %3639 ], [ %3147, %3200 ]
  %3209 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3210 = extractvalue %dx.types.CBufRet.i32 %3209, 0
  %3211 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3184, i32 %3210, i32 %3202)  ; UMad(a,b,c)
  %3212 = shl i32 %3211, 2
  %3213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %3212, i32 undef)  ; BufferLoad(srv,index,wot)
  %3214 = extractvalue %dx.types.ResRet.i32 %3213, 0
  %3215 = shl i32 %3202, 5
  %3216 = sub nsw i32 %3194, %3215
  %3217 = call i32 @dx.op.binary.i32(i32 37, i32 %3216, i32 0)  ; IMax(a,b)
  %3218 = call i32 @dx.op.binary.i32(i32 38, i32 %3217, i32 31)  ; IMin(a,b)
  %3219 = sub nsw i32 1, %3194
  %3220 = add nsw i32 %3219, %3195
  %3221 = call i32 @dx.op.binary.i32(i32 37, i32 %3220, i32 0)  ; IMax(a,b)
  %3222 = call i32 @dx.op.binary.i32(i32 38, i32 %3221, i32 32)  ; IMin(a,b)
  %3223 = and i32 %3222, 31
  %3224 = shl i32 -1, %3223
  %3225 = xor i32 %3224, -1
  %3226 = and i32 %3218, 31
  %3227 = shl i32 %3225, %3226
  %3228 = icmp eq i32 %3222, 32
  %3229 = select i1 %3228, i32 -1, i32 %3227
  %3230 = and i32 %3229, %3214
  %3231 = icmp eq i32 %3230, 0
  br i1 %3231, label %3639, label %3232

; <label>:3232                                    ; preds = %3201
  br label %3233

; <label>:3233                                    ; preds = %3367, %3232
  %3234 = phi i32 [ %3245, %3367 ], [ %3230, %3232 ]
  %3235 = phi float [ %3368, %3367 ], [ %3203, %3232 ]
  %3236 = phi float [ %3369, %3367 ], [ %3204, %3232 ]
  %3237 = phi float [ %3370, %3367 ], [ %3205, %3232 ]
  %3238 = phi float [ %3371, %3367 ], [ %3206, %3232 ]
  %3239 = phi float [ %3372, %3367 ], [ %3207, %3232 ]
  %3240 = phi float [ %3373, %3367 ], [ %3208, %3232 ]
  %3241 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3234)  ; FirstbitLo(value)
  %3242 = add i32 %3241, %3215
  %3243 = and i32 %3241, 31
  %3244 = shl i32 1, %3243
  %3245 = xor i32 %3244, %3234
  %3246 = mul i32 %3242, 112
  %3247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %3246, i32 undef)  ; BufferLoad(srv,index,wot)
  %3248 = extractvalue %dx.types.ResRet.f32 %3247, 0
  %3249 = extractvalue %dx.types.ResRet.f32 %3247, 1
  %3250 = extractvalue %dx.types.ResRet.f32 %3247, 2
  %3251 = or i32 %3246, 12
  %3252 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %3251, i32 undef)  ; BufferLoad(srv,index,wot)
  %3253 = extractvalue %dx.types.ResRet.f32 %3252, 0
  %3254 = add i32 %3246, 16
  %3255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %3254, i32 undef)  ; BufferLoad(srv,index,wot)
  %3256 = extractvalue %dx.types.ResRet.f32 %3255, 0
  %3257 = extractvalue %dx.types.ResRet.f32 %3255, 1
  %3258 = extractvalue %dx.types.ResRet.f32 %3255, 2
  %3259 = add i32 %3246, 28
  %3260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3259, i32 undef)  ; BufferLoad(srv,index,wot)
  %3261 = extractvalue %dx.types.ResRet.i32 %3260, 0
  %3262 = add i32 %3246, 44
  %3263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %3262, i32 undef)  ; BufferLoad(srv,index,wot)
  %3264 = extractvalue %dx.types.ResRet.f32 %3263, 0
  %3265 = add i32 %3246, 48
  %3266 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %3265, i32 undef)  ; BufferLoad(srv,index,wot)
  %3267 = extractvalue %dx.types.ResRet.f32 %3266, 0
  %3268 = extractvalue %dx.types.ResRet.f32 %3266, 1
  %3269 = extractvalue %dx.types.ResRet.f32 %3266, 2
  %3270 = extractvalue %dx.types.ResRet.f32 %3266, 3
  %3271 = add i32 %3246, 64
  %3272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %3271, i32 undef)  ; BufferLoad(srv,index,wot)
  %3273 = extractvalue %dx.types.ResRet.f32 %3272, 0
  %3274 = extractvalue %dx.types.ResRet.f32 %3272, 1
  %3275 = extractvalue %dx.types.ResRet.f32 %3272, 2
  %3276 = extractvalue %dx.types.ResRet.f32 %3272, 3
  %3277 = add i32 %3246, 80
  %3278 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %3277, i32 undef)  ; BufferLoad(srv,index,wot)
  %3279 = extractvalue %dx.types.ResRet.f32 %3278, 1
  %3280 = extractvalue %dx.types.ResRet.f32 %3278, 2
  %3281 = add i32 %3246, 92
  %3282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3281, i32 undef)  ; BufferLoad(srv,index,wot)
  %3283 = extractvalue %dx.types.ResRet.i32 %3282, 0
  %3284 = call float @dx.op.dot3.f32(i32 55, float %3248, float %3249, float %3250, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3285 = select i1 %120, float %3279, float %3248
  %3286 = select i1 %120, float %3284, float %3249
  %3287 = select i1 %120, float %3280, float %3250
  %3288 = and i32 %3283, 65535
  %3289 = uitofp i32 %3288 to float
  %3290 = lshr i32 %3283, 16
  %3291 = uitofp i32 %3290 to float
  %3292 = and i32 %3261, 65535
  %3293 = and i32 %3261, 50331648
  %3294 = icmp eq i32 %3293, 33554432
  %3295 = fsub fast float %3267, %358
  %3296 = fsub fast float %3268, %359
  %3297 = fsub fast float %3269, %360
  %3298 = call float @dx.op.dot3.f32(i32 55, float %3295, float %3296, float %3297, float %3295, float %3296, float %3297)  ; Dot3(ax,ay,az,bx,by,bz)
  %3299 = call float @dx.op.unary.f32(i32 24, float %3298)  ; Sqrt(value)
  %3300 = fdiv fast float 1.000000e+00, %3299
  %3301 = fmul fast float %3300, %3295
  %3302 = fmul fast float %3300, %3296
  %3303 = fmul fast float %3300, %3297
  %3304 = fadd fast float %3299, %3253
  %3305 = fdiv fast float 1.000000e+00, %3304
  %3306 = fmul float %3264, %3305
  %3307 = fmul float %3306, %3306
  %3308 = call float @dx.op.unary.f32(i32 7, float %3307)  ; Saturate(value)
  br i1 %3294, label %3309, label %3330

; <label>:3309                                    ; preds = %3233
  %3310 = fmul fast float %3275, %3256
  %3311 = fmul fast float %3275, %3257
  %3312 = fmul fast float %3275, %3258
  %3313 = fadd fast float %3295, %3310
  %3314 = fadd fast float %3296, %3311
  %3315 = fadd fast float %3297, %3312
  %3316 = call float @dx.op.dot3.f32(i32 55, float %3313, float %3314, float %3315, float %3313, float %3314, float %3315)  ; Dot3(ax,ay,az,bx,by,bz)
  %3317 = call float @dx.op.unary.f32(i32 25, float %3316)  ; Rsqrt(value)
  %3318 = fmul fast float %3317, %3313
  %3319 = fmul fast float %3317, %3314
  %3320 = fmul fast float %3317, %3315
  %3321 = fsub fast float %358, %3267
  %3322 = fsub fast float %359, %3268
  %3323 = fsub fast float %360, %3269
  %3324 = fsub fast float -0.000000e+00, %3321
  %3325 = fsub fast float -0.000000e+00, %3322
  %3326 = fsub fast float -0.000000e+00, %3323
  %3327 = call float @dx.op.dot3.f32(i32 55, float %3324, float %3325, float %3326, float %3256, float %3257, float %3258)  ; Dot3(ax,ay,az,bx,by,bz)
  %3328 = fcmp fast ogt float %3327, 0.000000e+00
  %3329 = uitofp i1 %3328 to float
  br label %3330

; <label>:3330                                    ; preds = %3309, %3233
  %3331 = phi float [ %3329, %3309 ], [ 1.000000e+00, %3233 ]
  %3332 = phi float [ %3318, %3309 ], [ %3301, %3233 ]
  %3333 = phi float [ %3319, %3309 ], [ %3302, %3233 ]
  %3334 = phi float [ %3320, %3309 ], [ %3303, %3233 ]
  %3335 = call float @dx.op.dot3.f32(i32 55, float %3256, float %3257, float %3258, float %3332, float %3333, float %3334)  ; Dot3(ax,ay,az,bx,by,bz)
  %3336 = fmul fast float %3335, %3335
  %3337 = call float @dx.op.unary.f32(i32 7, float %3336)  ; Saturate(value)
  %3338 = fsub fast float 1.000000e+00, %3337
  %3339 = fmul fast float %3338, 5.000000e-01
  %3340 = fcmp fast ogt float %3335, 0.000000e+00
  %3341 = fsub fast float 1.000000e+00, %3339
  %3342 = select i1 %3340, float %3339, float %3341
  %3343 = fmul fast float %3342, %3291
  %3344 = fadd fast float %3343, %3289
  %3345 = fmul fast float %3344, 0x3EF0001000000000
  %3346 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %38, float %3345, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3347 = extractvalue %dx.types.ResRet.f32 %3346, 0
  %3348 = fmul fast float %3335, %3273
  %3349 = fadd fast float %3348, %3274
  %3350 = call float @dx.op.unary.f32(i32 7, float %3349)  ; Saturate(value)
  %3351 = select i1 %3294, float 1.000000e+00, float %3350
  %3352 = select i1 %3294, float %3350, float 1.000000e+00
  %3353 = fmul fast float %3299, %3270
  %3354 = fsub fast float 1.000000e+00, %3353
  %3355 = fmul fast float %3354, %3276
  %3356 = call float @dx.op.unary.f32(i32 7, float %3355)  ; Saturate(value)
  %3357 = fmul fast float %3356, %3352
  %3358 = fmul fast float %3357, 2.000000e+00
  %3359 = fsub fast float 3.000000e+00, %3358
  %3360 = fmul fast float %3347, %3331
  %3361 = fmul fast float %3357, %3357
  %3362 = fmul fast float %3361, %3360
  %3363 = fmul fast float %3362, %3359
  %3364 = call float @dx.op.binary.f32(i32 36, float %3363, float %3363)  ; FMin(a,b)
  %3365 = call float @dx.op.binary.f32(i32 36, float %3363, float %3364)  ; FMin(a,b)
  %3366 = fcmp fast ogt float %3365, 0.000000e+00
  br i1 %3366, label %3375, label %3367, !dx.controlflow.hints !139

; <label>:3367                                    ; preds = %3480, %3475, %3330
  %3368 = phi float [ %3235, %3475 ], [ %3235, %3330 ], [ %3635, %3480 ]
  %3369 = phi float [ %3236, %3475 ], [ %3236, %3330 ], [ %3636, %3480 ]
  %3370 = phi float [ %3237, %3475 ], [ %3237, %3330 ], [ %3637, %3480 ]
  %3371 = phi float [ %3238, %3475 ], [ %3238, %3330 ], [ %3623, %3480 ]
  %3372 = phi float [ %3239, %3475 ], [ %3239, %3330 ], [ %3624, %3480 ]
  %3373 = phi float [ %3240, %3475 ], [ %3240, %3330 ], [ %3625, %3480 ]
  %3374 = icmp eq i32 %3234, %3244
  br i1 %3374, label %3638, label %3233

; <label>:3375                                    ; preds = %3330
  %3376 = icmp eq i32 %3292, 255
  br i1 %3376, label %3475, label %3377, !dx.controlflow.hints !140

; <label>:3377                                    ; preds = %3375
  %3378 = mul nuw nsw i32 %3292, 176
  %3379 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3378, i32 undef)  ; BufferLoad(srv,index,wot)
  %3380 = extractvalue %dx.types.ResRet.f32 %3379, 0
  %3381 = extractvalue %dx.types.ResRet.f32 %3379, 1
  %3382 = extractvalue %dx.types.ResRet.f32 %3379, 2
  %3383 = extractvalue %dx.types.ResRet.f32 %3379, 3
  %3384 = add nuw nsw i32 %3378, 16
  %3385 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3384, i32 undef)  ; BufferLoad(srv,index,wot)
  %3386 = extractvalue %dx.types.ResRet.f32 %3385, 0
  %3387 = extractvalue %dx.types.ResRet.f32 %3385, 1
  %3388 = add nuw nsw i32 %3378, 32
  %3389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3388, i32 undef)  ; BufferLoad(srv,index,wot)
  %3390 = extractvalue %dx.types.ResRet.f32 %3389, 0
  %3391 = extractvalue %dx.types.ResRet.f32 %3389, 1
  %3392 = extractvalue %dx.types.ResRet.f32 %3389, 2
  %3393 = add nuw nsw i32 %3378, 48
  %3394 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3393, i32 undef)  ; BufferLoad(srv,index,wot)
  %3395 = extractvalue %dx.types.ResRet.f32 %3394, 0
  %3396 = extractvalue %dx.types.ResRet.f32 %3394, 1
  %3397 = extractvalue %dx.types.ResRet.f32 %3394, 2
  %3398 = extractvalue %dx.types.ResRet.f32 %3394, 3
  %3399 = add nuw nsw i32 %3378, 64
  %3400 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3399, i32 undef)  ; BufferLoad(srv,index,wot)
  %3401 = extractvalue %dx.types.ResRet.f32 %3400, 0
  %3402 = extractvalue %dx.types.ResRet.f32 %3400, 1
  %3403 = extractvalue %dx.types.ResRet.f32 %3400, 2
  %3404 = extractvalue %dx.types.ResRet.f32 %3400, 3
  %3405 = add nuw nsw i32 %3378, 80
  %3406 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3405, i32 undef)  ; BufferLoad(srv,index,wot)
  %3407 = extractvalue %dx.types.ResRet.f32 %3406, 0
  %3408 = extractvalue %dx.types.ResRet.f32 %3406, 1
  %3409 = extractvalue %dx.types.ResRet.f32 %3406, 2
  %3410 = extractvalue %dx.types.ResRet.f32 %3406, 3
  %3411 = add nuw nsw i32 %3378, 96
  %3412 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3411, i32 undef)  ; BufferLoad(srv,index,wot)
  %3413 = extractvalue %dx.types.ResRet.f32 %3412, 0
  %3414 = extractvalue %dx.types.ResRet.f32 %3412, 1
  %3415 = extractvalue %dx.types.ResRet.f32 %3412, 2
  %3416 = extractvalue %dx.types.ResRet.f32 %3412, 3
  %3417 = bitcast float %3387 to i32
  %3418 = fmul fast float %3392, %280
  %3419 = fmul fast float %3392, %281
  %3420 = fmul fast float %3392, %282
  %3421 = fadd fast float %3418, %358
  %3422 = fadd fast float %3419, %359
  %3423 = fadd fast float %3420, %360
  %3424 = fmul fast float %3421, %3395
  %3425 = call float @dx.op.tertiary.f32(i32 46, float %3422, float %3401, float %3424)  ; FMad(a,b,c)
  %3426 = call float @dx.op.tertiary.f32(i32 46, float %3423, float %3407, float %3425)  ; FMad(a,b,c)
  %3427 = fadd fast float %3426, %3413
  %3428 = fmul fast float %3421, %3396
  %3429 = call float @dx.op.tertiary.f32(i32 46, float %3422, float %3402, float %3428)  ; FMad(a,b,c)
  %3430 = call float @dx.op.tertiary.f32(i32 46, float %3423, float %3408, float %3429)  ; FMad(a,b,c)
  %3431 = fadd fast float %3430, %3414
  %3432 = fmul fast float %3421, %3397
  %3433 = call float @dx.op.tertiary.f32(i32 46, float %3422, float %3403, float %3432)  ; FMad(a,b,c)
  %3434 = call float @dx.op.tertiary.f32(i32 46, float %3423, float %3409, float %3433)  ; FMad(a,b,c)
  %3435 = fadd fast float %3434, %3415
  %3436 = fmul fast float %3421, %3398
  %3437 = call float @dx.op.tertiary.f32(i32 46, float %3422, float %3404, float %3436)  ; FMad(a,b,c)
  %3438 = call float @dx.op.tertiary.f32(i32 46, float %3423, float %3410, float %3437)  ; FMad(a,b,c)
  %3439 = fadd fast float %3438, %3416
  %3440 = fdiv fast float %3427, %3439
  %3441 = fdiv fast float %3431, %3439
  %3442 = fdiv fast float %3435, %3439
  %3443 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %3442)  ; FMax(a,b)
  %3444 = fmul fast float %269, 0x401921FB60000000
  %3445 = call float @dx.op.unary.f32(i32 13, float %3444)  ; Sin(value)
  %3446 = call float @dx.op.unary.f32(i32 12, float %3444)  ; Cos(value)
  %3447 = fsub fast float -0.000000e+00, %3445
  %3448 = fmul fast float %3382, 5.000000e-01
  %3449 = call float @dx.op.dot2.f32(i32 54, float %269, float %269, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %3450 = call float @dx.op.unary.f32(i32 22, float %3449)  ; Frc(value)
  %3451 = fmul fast float %3450, 0x404A7DD040000000
  %3452 = call float @dx.op.unary.f32(i32 22, float %3451)  ; Frc(value)
  %3453 = fmul fast float %3452, %3391
  %3454 = fadd fast float %3453, %3448
  %3455 = call float @dx.op.tertiary.f32(i32 46, float %3454, float %3447, float 0.000000e+00)  ; FMad(a,b,c)
  %3456 = call float @dx.op.tertiary.f32(i32 46, float %3454, float %3446, float 0.000000e+00)  ; FMad(a,b,c)
  %3457 = fadd fast float %3455, %3440
  %3458 = fadd fast float %3456, %3441
  %3459 = fmul fast float %3457, %3386
  %3460 = fmul fast float %3458, %3386
  %3461 = call float @dx.op.binary.f32(i32 35, float %3459, float %3382)  ; FMax(a,b)
  %3462 = call float @dx.op.binary.f32(i32 35, float %3460, float %3382)  ; FMax(a,b)
  %3463 = call float @dx.op.binary.f32(i32 36, float %3461, float %3383)  ; FMin(a,b)
  %3464 = call float @dx.op.binary.f32(i32 36, float %3462, float %3383)  ; FMin(a,b)
  %3465 = fadd fast float %3463, %3380
  %3466 = fadd fast float %3464, %3381
  %3467 = uitofp i32 %3417 to float
  %3468 = fadd fast float %3443, %3390
  %3469 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %13, %dx.types.Handle %39, float %3465, float %3466, float %3467, float undef, i32 0, i32 0, i32 undef, float %3468)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3470 = extractvalue %dx.types.ResRet.f32 %3469, 0
  %3471 = fadd fast float %3470, -1.000000e+00
  %3472 = fmul fast float %3471, %3351
  %3473 = fadd fast float %3472, 1.000000e+00
  %3474 = fmul fast float %3473, %3363
  br label %3475

; <label>:3475                                    ; preds = %3377, %3375
  %3476 = phi float [ %3474, %3377 ], [ %3363, %3375 ]
  %3477 = call float @dx.op.binary.f32(i32 36, float %3476, float %3476)  ; FMin(a,b)
  %3478 = call float @dx.op.binary.f32(i32 36, float %3476, float %3477)  ; FMin(a,b)
  %3479 = fcmp fast ogt float %3478, 0.000000e+00
  br i1 %3479, label %3480, label %3367, !dx.controlflow.hints !141

; <label>:3480                                    ; preds = %3475
  %3481 = fmul fast float %3476, %3285
  %3482 = fmul fast float %3476, %3286
  %3483 = fmul fast float %3476, %3287
  %3484 = fsub fast float %3301, %421
  %3485 = fsub fast float %3302, %422
  %3486 = fsub fast float %3303, %423
  %3487 = call float @dx.op.dot3.f32(i32 55, float %3484, float %3485, float %3486, float %3484, float %3485, float %3486)  ; Dot3(ax,ay,az,bx,by,bz)
  %3488 = call float @dx.op.unary.f32(i32 25, float %3487)  ; Rsqrt(value)
  %3489 = fmul fast float %3488, %3484
  %3490 = fmul fast float %3488, %3485
  %3491 = fmul fast float %3488, %3486
  %3492 = call float @dx.op.dot3.f32(i32 55, float %3301, float %3302, float %3303, float %280, float %281, float %282)  ; Dot3(ax,ay,az,bx,by,bz)
  %3493 = call float @dx.op.dot3.f32(i32 55, float %424, float %425, float %426, float %3489, float %3490, float %3491)  ; Dot3(ax,ay,az,bx,by,bz)
  %3494 = call float @dx.op.unary.f32(i32 7, float %3492)  ; Saturate(value)
  %3495 = fmul fast float %3494, %3308
  %3496 = fmul fast float %3494, %3494
  %3497 = fmul fast float %3496, 0x47DE623840000000
  %3498 = call float @dx.op.unary.f32(i32 7, float %3497)  ; Saturate(value)
  %3499 = fmul fast float %3495, %3498
  %3500 = bitcast float %3298 to i32
  %3501 = ashr i32 %3500, 1
  %3502 = sub nsw i32 1597463007, %3501
  %3503 = bitcast i32 %3502 to float
  %3504 = fmul fast float %3503, %3295
  %3505 = fmul fast float %3503, %3296
  %3506 = fmul fast float %3503, %3297
  %3507 = fsub fast float %3504, %421
  %3508 = fsub fast float %3505, %422
  %3509 = fsub fast float %3506, %423
  %3510 = call float @dx.op.dot3.f32(i32 55, float %3507, float %3508, float %3509, float %3507, float %3508, float %3509)  ; Dot3(ax,ay,az,bx,by,bz)
  %3511 = call float @dx.op.unary.f32(i32 25, float %3510)  ; Rsqrt(value)
  %3512 = fmul fast float %3507, %3511
  %3513 = fmul fast float %3508, %3511
  %3514 = fmul fast float %3509, %3511
  %3515 = call float @dx.op.dot3.f32(i32 55, float %280, float %281, float %282, float %3512, float %3513, float %3514)  ; Dot3(ax,ay,az,bx,by,bz)
  %3516 = fmul fast float %3515, %3515
  %3517 = call float @dx.op.unary.f32(i32 6, float %3492)  ; FAbs(value)
  %3518 = fsub fast float 1.000000e+00, %292
  %3519 = call float @dx.op.binary.f32(i32 35, float %3518, float 0x3F847AE140000000)  ; FMax(a,b)
  %3520 = fmul fast float %3519, %3519
  %3521 = fmul fast float %3520, %3520
  %3522 = fsub fast float 1.000000e+00, %3521
  %3523 = fmul fast float %429, %429
  %3524 = fmul fast float %3523, %3522
  %3525 = fadd fast float %3524, %3521
  %3526 = bitcast float %3525 to i32
  %3527 = ashr i32 %3526, 1
  %3528 = add nsw i32 %3527, 532487669
  %3529 = bitcast i32 %3528 to float
  %3530 = fadd fast float %3529, %429
  %3531 = fmul fast float %3521, %3516
  %3532 = fsub fast float 1.000000e+00, %3516
  %3533 = fadd fast float %3532, %3531
  %3534 = fmul fast float %3517, %3517
  %3535 = fmul fast float %3534, %3522
  %3536 = fadd fast float %3535, %3521
  %3537 = bitcast float %3536 to i32
  %3538 = ashr i32 %3537, 1
  %3539 = add nsw i32 %3538, 532487669
  %3540 = bitcast i32 %3539 to float
  %3541 = fadd fast float %3540, %3517
  %3542 = fmul fast float %3533, %3533
  %3543 = fmul fast float %3542, %3530
  %3544 = fmul fast float %3543, %3541
  %3545 = fdiv fast float 1.000000e+00, %3544
  %3546 = bitcast float %3521 to i32
  %3547 = sitofp i32 %3546 to float
  %3548 = fmul fast float %3547, 0x3FE7F73180000000
  %3549 = fadd fast float %3548, 0x41AFE27C40000000
  %3550 = fptosi float %3549 to i32
  %3551 = bitcast i32 %3550 to float
  %3552 = fmul fast float %3264, 0x3FD80E9D60000000
  %3553 = fmul fast float %3552, %3503
  %3554 = fadd fast float %3551, %3553
  %3555 = bitcast float %3554 to i32
  %3556 = sub nsw i32 2129859010, %3555
  %3557 = bitcast i32 %3556 to float
  %3558 = fmul fast float %3521, %3545
  %3559 = fmul fast float %3558, %3551
  %3560 = fmul fast float %3559, %3557
  %3561 = call float @dx.op.unary.f32(i32 6, float %3493)  ; FAbs(value)
  %3562 = fsub fast float 1.000000e+00, %3561
  %3563 = bitcast float %3562 to i32
  %3564 = sitofp i32 %3563 to float
  %3565 = fmul fast float %3564, 5.000000e+00
  %3566 = fadd fast float %3565, 0xC1EFBF8940000000
  %3567 = fptosi float %3566 to i32
  %3568 = bitcast i32 %3567 to float
  %3569 = fsub fast float 1.000000e+00, %409
  %3570 = fsub fast float 1.000000e+00, %410
  %3571 = fsub fast float 1.000000e+00, %427
  %3572 = fmul fast float %3568, %3569
  %3573 = fmul fast float %3568, %3570
  %3574 = fmul fast float %3568, %3571
  %3575 = fadd fast float %3572, %409
  %3576 = fadd fast float %3573, %410
  %3577 = fadd fast float %3574, %427
  %3578 = fmul fast float %3492, 9.843750e-01
  %3579 = fadd fast float %3578, 7.812500e-03
  %3580 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %38, float %3579, float %2159, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3581 = extractvalue %dx.types.ResRet.f32 %3580, 2
  %3582 = extractvalue %dx.types.ResRet.f32 %3580, 3
  %3583 = fmul fast float %3581, %409
  %3584 = fmul fast float %3581, %410
  %3585 = fmul fast float %3581, %427
  %3586 = fadd fast float %3583, %3582
  %3587 = fadd fast float %3584, %3582
  %3588 = fadd fast float %3585, %3582
  %3589 = call float @dx.op.binary.f32(i32 35, float %3587, float %3588)  ; FMax(a,b)
  %3590 = call float @dx.op.binary.f32(i32 35, float %3586, float %3589)  ; FMax(a,b)
  %3591 = fsub fast float 1.000000e+00, %3590
  %3592 = fsub fast float -0.000000e+00, %280
  %3593 = fsub fast float -0.000000e+00, %281
  %3594 = fsub fast float -0.000000e+00, %282
  %3595 = call float @dx.op.dot3.f32(i32 55, float %3301, float %3302, float %3303, float %3592, float %3593, float %3594)  ; Dot3(ax,ay,az,bx,by,bz)
  %3596 = call float @dx.op.unary.f32(i32 7, float %3595)  ; Saturate(value)
  %3597 = fmul fast float %3596, %3308
  %3598 = fmul fast float %3596, 9.843750e-01
  %3599 = fadd fast float %3598, 7.812500e-03
  %3600 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %38, float %3599, float %2159, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3601 = extractvalue %dx.types.ResRet.f32 %3600, 2
  %3602 = extractvalue %dx.types.ResRet.f32 %3600, 3
  %3603 = fmul fast float %3601, %409
  %3604 = fmul fast float %3601, %410
  %3605 = fmul fast float %3601, %427
  %3606 = fadd fast float %3603, %3602
  %3607 = fadd fast float %3604, %3602
  %3608 = fadd fast float %3605, %3602
  %3609 = call float @dx.op.binary.f32(i32 35, float %3607, float %3608)  ; FMax(a,b)
  %3610 = call float @dx.op.binary.f32(i32 35, float %3606, float %3609)  ; FMax(a,b)
  %3611 = fsub fast float 1.000000e+00, %3610
  %3612 = fmul fast float %3597, %3611
  %3613 = fmul fast float %3612, %299
  %3614 = fmul fast float %3612, %300
  %3615 = fmul fast float %3612, %301
  %3616 = fmul fast float %3591, %3499
  %3617 = fadd fast float %3613, %3616
  %3618 = fadd fast float %3614, %3616
  %3619 = fadd fast float %3615, %3616
  %3620 = fmul fast float %3617, %3481
  %3621 = fmul fast float %3618, %3482
  %3622 = fmul fast float %3619, %3483
  %3623 = fadd fast float %3620, %3238
  %3624 = fadd fast float %3621, %3239
  %3625 = fadd fast float %3622, %3240
  %3626 = fmul fast float %3499, %3481
  %3627 = fmul fast float %3626, %3575
  %3628 = fmul fast float %3627, %3560
  %3629 = fmul fast float %3499, %3482
  %3630 = fmul fast float %3629, %3576
  %3631 = fmul fast float %3630, %3560
  %3632 = fmul fast float %3499, %3483
  %3633 = fmul fast float %3632, %3577
  %3634 = fmul fast float %3633, %3560
  %3635 = fadd fast float %3628, %3235
  %3636 = fadd fast float %3631, %3236
  %3637 = fadd fast float %3634, %3237
  br label %3367

; <label>:3638                                    ; preds = %3367
  br label %3639

; <label>:3639                                    ; preds = %3638, %3201
  %3640 = phi float [ %3203, %3201 ], [ %3368, %3638 ]
  %3641 = phi float [ %3204, %3201 ], [ %3369, %3638 ]
  %3642 = phi float [ %3205, %3201 ], [ %3370, %3638 ]
  %3643 = phi float [ %3206, %3201 ], [ %3371, %3638 ]
  %3644 = phi float [ %3207, %3201 ], [ %3372, %3638 ]
  %3645 = phi float [ %3208, %3201 ], [ %3373, %3638 ]
  %3646 = add i32 %3202, 1
  %3647 = icmp ugt i32 %3646, %3198
  br i1 %3647, label %3648, label %3201

; <label>:3648                                    ; preds = %3639
  br label %3649

; <label>:3649                                    ; preds = %3648, %3151, %3141
  %3650 = phi float [ %3142, %3141 ], [ %3142, %3151 ], [ %3640, %3648 ]
  %3651 = phi float [ %3143, %3141 ], [ %3143, %3151 ], [ %3641, %3648 ]
  %3652 = phi float [ %3144, %3141 ], [ %3144, %3151 ], [ %3642, %3648 ]
  %3653 = phi float [ %3145, %3141 ], [ %3145, %3151 ], [ %3643, %3648 ]
  %3654 = phi float [ %3146, %3141 ], [ %3146, %3151 ], [ %3644, %3648 ]
  %3655 = phi float [ %3147, %3141 ], [ %3147, %3151 ], [ %3645, %3648 ]
  %3656 = call float @dx.op.unary.f32(i32 24, float %400)  ; Sqrt(value)
  %3657 = call float @dx.op.unary.f32(i32 24, float %401)  ; Sqrt(value)
  %3658 = call float @dx.op.unary.f32(i32 24, float %402)  ; Sqrt(value)
  %3659 = fmul fast float %3656, %3653
  %3660 = fmul fast float %3657, %3654
  %3661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3662 = extractvalue %dx.types.CBufRet.f32 %3661, 0
  br i1 %120, label %3663, label %3687

; <label>:3663                                    ; preds = %3649
  %3664 = fadd fast float %3655, %417
  %3665 = fmul fast float %3664, %415
  %3666 = fsub fast float 1.000000e+00, %415
  %3667 = call float @dx.op.unary.f32(i32 7, float %3666)  ; Saturate(value)
  %3668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3669 = extractvalue %dx.types.CBufRet.f32 %3668, 3
  %3670 = fmul fast float %3669, %3667
  %3671 = fsub fast float 1.000000e+00, %429
  %3672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3673 = extractvalue %dx.types.CBufRet.f32 %3672, 0
  %3674 = fmul fast float %3673, %3671
  %3675 = fsub fast float 1.000000e+00, %302
  %3676 = extractvalue %dx.types.CBufRet.f32 %3672, 2
  %3677 = fmul fast float %3676, %3675
  %3678 = fadd fast float %3660, %3659
  %3679 = extractvalue %dx.types.CBufRet.f32 %3668, 1
  %3680 = fadd fast float %3670, %3665
  %3681 = fsub fast float %3680, %3674
  %3682 = fsub fast float %3681, %3677
  %3683 = fsub fast float %3682, %3679
  %3684 = extractvalue %dx.types.CBufRet.f32 %3668, 2
  %3685 = fmul fast float %3683, %3684
  %3686 = call float @dx.op.unary.f32(i32 7, float %3685)  ; Saturate(value)
  br label %3691

; <label>:3687                                    ; preds = %3649
  %3688 = fmul fast float %3658, %3655
  %3689 = fmul fast float %3662, %3660
  %3690 = fmul fast float %3688, %3662
  br label %3691

; <label>:3691                                    ; preds = %3687, %3663
  %3692 = phi float [ %3678, %3663 ], [ %3659, %3687 ]
  %3693 = phi float [ %3686, %3663 ], [ %3689, %3687 ]
  %3694 = phi float [ 1.000000e+00, %3663 ], [ %3690, %3687 ]
  %3695 = fmul float %3662, %3692
  %3696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3697 = extractvalue %dx.types.CBufRet.f32 %3696, 0
  %3698 = fmul fast float %3697, %3651
  %3699 = fmul fast float %3697, %3652
  %3700 = fadd fast float %3651, %3650
  %3701 = select i1 %120, float %3700, float %3650
  %3702 = fmul float %3701, %3697
  %3703 = select i1 %120, float 0.000000e+00, float %3698
  %3704 = select i1 %120, float 0.000000e+00, float %3699
  %3705 = fmul fast float %3695, %3656
  %3706 = fmul fast float %3693, %3657
  %3707 = fmul fast float %3694, %3658
  %3708 = fadd fast float %3702, %3705
  %3709 = fadd fast float %3703, %3706
  %3710 = fadd fast float %3704, %3707
  %3711 = select i1 %120, float %3693, float %3709
  %3712 = select i1 %120, float %3694, float %3710
  %3713 = call float @dx.op.binary.f32(i32 36, float %3708, float 3.225500e+04)  ; FMin(a,b)
  %3714 = call float @dx.op.binary.f32(i32 36, float %3711, float 3.225500e+04)  ; FMin(a,b)
  %3715 = call float @dx.op.binary.f32(i32 36, float %3712, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3713)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3714)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3715)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!53}
!dx.entryPoints = !{!54}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !44, !47}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !37, !38, !39, !40, !41, !42, !43}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 62, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 63, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 21, i32 1, i32 4, i32 0, !7}
!12 = !{i32 5, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 22, i32 1, i32 4, i32 0, !7}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 59, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 60, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 19, i32 1, i32 4, i32 0, !7}
!16 = !{i32 9, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 20, i32 1, i32 4, i32 0, !7}
!17 = !{i32 10, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!18 = !{i32 11, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 16, i32 1, i32 7, i32 0, !7}
!19 = !{i32 12, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 15, i32 1, i32 4, i32 0, !7}
!20 = !{i32 13, %"class.Texture2D<float>"* undef, !"", i32 2, i32 14, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 2, i32 13, i32 1, i32 2, i32 0, !7}
!22 = !{i32 15, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 17, i32 1, i32 2, i32 0, !23}
!23 = !{i32 0, i32 5}
!24 = !{i32 16, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 2, i32 18, i32 1, i32 4, i32 0, !7}
!25 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!26 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!27 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!28 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!29 = !{i32 21, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!30 = !{i32 22, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!31 = !{i32 23, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 1, i32 1, i32 2, i32 0, !7}
!32 = !{i32 24, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!33 = !{i32 25, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!34 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!35 = !{i32 27, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !36}
!36 = !{i32 0, i32 14}
!37 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!38 = !{i32 29, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!39 = !{i32 30, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!40 = !{i32 31, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!41 = !{i32 32, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!42 = !{i32 33, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!43 = !{i32 34, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!44 = !{!45, !46}
!45 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!46 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 272, null}
!47 = !{!48, !49, !50, !51, !52}
!48 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!49 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!50 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!51 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!52 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!53 = !{[78 x i32] [i32 76, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0]}
!54 = !{void ()* @ps_main, !"ps_main", !55, !4, !92}
!55 = !{!56, !90, null}
!56 = !{!57, !60, !61, !63, !65, !66, !68, !71, !73, !75, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89}
!57 = !{i32 0, !"SV_Position", i8 9, i8 3, !58, i8 4, i32 1, i8 4, i32 0, i8 0, !59}
!58 = !{i32 0}
!59 = !{i32 3, i32 11}
!60 = !{i32 1, !"COLOR", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 1, i8 0, null}
!61 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 2, i8 0, !62}
!62 = !{i32 3, i32 8}
!63 = !{i32 3, !"NORMAL", i8 9, i8 0, !58, i8 2, i32 1, i8 3, i32 3, i8 0, !64}
!64 = !{i32 3, i32 7}
!65 = !{i32 4, !"TANGENT", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 4, i8 0, null}
!66 = !{i32 5, !"CARD_DEPTH_OFFSET", i8 9, i8 0, !58, i8 2, i32 1, i8 1, i32 3, i8 3, !67}
!67 = !{i32 3, i32 1}
!68 = !{i32 6, !"CARD_BARY_AND_TILE", i8 9, i8 0, !69, i8 1, i32 1, i8 4, i32 5, i8 0, !70}
!69 = !{i32 1}
!70 = !{i32 3, i32 3}
!71 = !{i32 7, !"CARD_TILE2_AND_TILE", i8 9, i8 0, !72, i8 1, i32 1, i8 4, i32 6, i8 0, null}
!72 = !{i32 3}
!73 = !{i32 8, !"CARD_TEXCOORDS_AND_RAY", i8 9, i8 0, !69, i8 4, i32 1, i8 4, i32 7, i8 0, !74}
!74 = !{i32 3, i32 15}
!75 = !{i32 9, !"CARD_TEXCOORDS_AND_RAY", i8 9, i8 0, !76, i8 4, i32 1, i8 4, i32 8, i8 0, !74}
!76 = !{i32 2}
!77 = !{i32 10, !"CARD_TEXCOORDS_AND_RAY", i8 9, i8 0, !72, i8 4, i32 1, i8 4, i32 9, i8 0, !74}
!78 = !{i32 11, !"CARD_DEPTH_AND_SCALE", i8 9, i8 0, !58, i8 4, i32 1, i8 4, i32 10, i8 0, !64}
!79 = !{i32 12, !"LGV_POSITION_INDEX", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 11, i8 0, !62}
!80 = !{i32 13, !"LGV_IS_STATIC", i8 9, i8 0, !58, i8 2, i32 1, i8 1, i32 12, i8 0, !67}
!81 = !{i32 14, !"WGV_TEXCOORD", i8 9, i8 0, !58, i8 2, i32 1, i8 3, i32 12, i8 1, null}
!82 = !{i32 15, !"WGV_NORMAL", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 13, i8 0, null}
!83 = !{i32 16, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !58, i8 2, i32 1, i8 2, i32 14, i8 0, null}
!84 = !{i32 17, !"SCEONDARY_NORMAL", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 15, i8 0, null}
!85 = !{i32 18, !"OBJECT_POSITION", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 16, i8 0, null}
!86 = !{i32 19, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !58, i8 1, i32 1, i8 1, i32 17, i8 0, null}
!87 = !{i32 20, !"PACKED_TRI_DATA", i8 5, i8 0, !58, i8 1, i32 1, i8 4, i32 18, i8 0, !67}
!88 = !{i32 21, !"SV_IsFrontFace", i8 5, i8 13, !58, i8 1, i32 1, i8 1, i32 17, i8 1, !67}
!89 = !{i32 22, !"SV_SampleIndex", i8 5, i8 12, !58, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!90 = !{!91}
!91 = !{i32 0, !"SV_Target", i8 9, i8 16, !58, i8 0, i32 1, i8 4, i32 0, i8 0, !74}
!92 = !{i32 0, i64 24}
!93 = !{!94, !96, !97, !98, !99, !101, !102, !103}
!94 = distinct !{!94, !95, !"\01?getCardTexcoordsNormalAlpha@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAIAIAMUPixelInput@@MV?$matrix@M$02$02@@V1@M@Z: %outTexCoords"}
!95 = distinct !{!95, !"\01?getCardTexcoordsNormalAlpha@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAIAIAMUPixelInput@@MV?$matrix@M$02$02@@V1@M@Z"}
!96 = distinct !{!96, !95, !"\01?getCardTexcoordsNormalAlpha@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAIAIAMUPixelInput@@MV?$matrix@M$02$02@@V1@M@Z: %outNormal"}
!97 = distinct !{!97, !95, !"\01?getCardTexcoordsNormalAlpha@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAIAIAMUPixelInput@@MV?$matrix@M$02$02@@V1@M@Z: %outCoverage"}
!98 = distinct !{!98, !95, !"\01?getCardTexcoordsNormalAlpha@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAIAIAMUPixelInput@@MV?$matrix@M$02$02@@V1@M@Z: %outMipLevel"}
!99 = distinct !{!99, !100, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@M@Z: %outTexCoords"}
!100 = distinct !{!100, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@M@Z"}
!101 = distinct !{!101, !100, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@M@Z: %outNormal"}
!102 = distinct !{!102, !100, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@M@Z: %outMipLevel"}
!103 = distinct !{!103, !100, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@M@Z: %outCoverage"}
!104 = !{!105, !105, i64 0}
!105 = !{!"float", !106, i64 0}
!106 = !{!"omnipotent char", !107, i64 0}
!107 = !{!"Simple C/C++ TBAA"}
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
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = !{!121, !121, i64 0}
!121 = !{!"int", !106, i64 0}
!122 = !{!123, !125, !127, !129}
!123 = distinct !{!123, !124, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!124 = distinct !{!124, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!125 = distinct !{!125, !126, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!126 = distinct !{!126, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!127 = distinct !{!127, !128, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!128 = distinct !{!128, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!129 = distinct !{!129, !130, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!130 = distinct !{!130, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 1}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 1}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 1}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 1}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 1}
!138 = distinct !{!138, !"dx.controlflow.hints", i32 1}
!139 = distinct !{!139, !"dx.controlflow.hints", i32 1}
!140 = distinct !{!140, !"dx.controlflow.hints", i32 1}
!141 = distinct !{!141, !"dx.controlflow.hints", i32 1}

