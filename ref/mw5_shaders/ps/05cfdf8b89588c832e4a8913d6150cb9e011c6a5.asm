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
; SV_Target                1   xyzw        1   TARGET   float   xyzw
;
; shader hash: 618411cce38c0e34eecdc49f0907f5fb
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
;                                   sampler      NA          NA      S1             s1     1
;                                   sampler      NA          NA      S2             s2     1
;                                   sampler      NA          NA      S3             s3     1
;                                   sampler      NA          NA      S4             s4     1
;                                   sampler      NA          NA      S5             s5     1
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
;                                   texture    byte         r/o     T15      t3,space1     1
;                                   texture    byte         r/o     T16      t4,space1     1
;                                   texture    byte         r/o     T17      t5,space1     1
;                                   texture    byte         r/o     T18      t6,space1     1
;                                   texture     f32          2d     T19     t69,space2     1
;                                   texture     f32          2d     T20     t37,space2     1
;                                   texture     f32          2d     T21     t61,space2     1
;                                   texture     f32          2d     T22     t57,space2     1
;                                   texture    byte         r/o     T23     t69,space1     1
;                                   texture     f32     2darray     T24     t35,space2     1
;                                   texture     f32          3d     T25     t31,space2     1
;                                   texture    byte         r/o     T26     t10,space1     1
;                                   texture    byte         r/o     T27      t1,space1     1
;                                   texture     f32          1d     T28     t32,space2     1
;                                   texture     f32     2darray     T29      t8,space2     1
;                                   texture     f32          2d     T30      t2,space2     1
;                                   texture     f32          2d     T31      t3,space2     1
;                                   texture     f32          2d     T32      t4,space2     1
;                                   textureunorm_f32     2darray     T33     t80,space2     1
;                                   texture    byte         r/o     T34     t67,space1     1
;                                   texture     f32          2d     T35      t7,space2     1
;                                   texture     f32          2d     T36      t6,space2     1
;                                   texture     f32          2d     T37      t5,space2     1
;                                   texture     f32          2d     T38     t38,space2     1
;                                   texture    byte         r/o     T39     t12,space1     1
;                                   texture    byte         r/o     T40     t13,space1     1
;                                       UAV     f32          2d      U0             u7     1
;
;
; ViewId state:
;
; Number of inputs: 61, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 11, 12, 13, 14, 15, 20, 21, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 47, 56, 59, 60 }
;   output 1 depends on inputs: { 0, 1, 3, 11, 12, 13, 14, 15, 20, 21, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 47, 56, 59, 60 }
;   output 2 depends on inputs: { 0, 1, 3, 11, 12, 13, 14, 15, 20, 21, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 47, 56, 59, 60 }
;   output 4 depends on inputs: { 0, 1, 3, 11, 12, 13, 14, 15, 20, 21, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 47, 56, 59, 60 }
;   output 5 depends on inputs: { 0, 1, 3, 11, 12, 13, 14, 15, 20, 21, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 47, 56, 59, 60 }
;   output 6 depends on inputs: { 0, 1, 3, 11, 12, 13, 14, 15, 20, 21, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 47, 56, 59, 60 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
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
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.RWTexture2D<vector<float, 2> >" = type { <2 x float> }
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

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 61, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 63, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 62, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 61, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = alloca [4 x i32], align 4
  %51 = call i32 @dx.op.loadInput.i32(i32 4, i32 16, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = icmp ne i32 %51, 0
  %53 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = alloca [3 x float], align 4
  %82 = alloca [3 x float], align 4
  %83 = alloca [3 x float], align 4
  %84 = alloca [3 x float], align 4
  %85 = alloca [3 x float], align 4
  %86 = alloca [3 x float], align 4
  %87 = alloca [3 x float], align 4
  %88 = alloca [3 x float], align 4
  %89 = alloca [12 x float], align 4
  %90 = alloca [12 x float], align 4
  %91 = alloca [4 x float], align 4
  %92 = alloca [4 x float], align 4
  %93 = alloca [4 x float], align 4
  %94 = alloca [3 x float], align 4
  %95 = alloca [3 x float], align 4
  %96 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %97 = extractvalue %dx.types.CBufRet.f32 %96, 0
  %98 = fmul fast float %97, %78
  %99 = fmul fast float %97, %79
  %100 = select i1 %52, float 1.000000e+00, float -1.000000e+00
  %101 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %102 = bitcast float %101 to i32
  %103 = ashr i32 %102, 1
  %104 = sub nsw i32 1597250115, %103
  %105 = bitcast i32 %104 to float
  %106 = fmul fast float %74, %100
  %107 = fmul fast float %106, %105
  %108 = fmul fast float %75, %100
  %109 = fmul fast float %108, %105
  %110 = fmul fast float %76, %100
  %111 = fmul fast float %110, %105
  %112 = lshr i32 %54, 8
  %113 = mul nuw nsw i32 %112, 24
  %114 = add nuw nsw i32 %113, 12
  %115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %114, i32 undef)  ; BufferLoad(srv,index,wot)
  %116 = extractvalue %dx.types.ResRet.i32 %115, 0
  %117 = extractvalue %dx.types.ResRet.i32 %115, 1
  %118 = and i32 %116, 65535
  %119 = uitofp i32 %118 to float
  %120 = lshr i32 %116, 16
  %121 = uitofp i32 %120 to float
  %122 = and i32 %117, 65535
  %123 = uitofp i32 %122 to float
  %124 = lshr i32 %117, 16
  %125 = uitofp i32 %124 to float
  %126 = fmul fast float %119, 0x3F00001000000000
  %127 = fmul fast float %121, 0x3F00001000000000
  %128 = fmul fast float %123, 0x3F00001000000000
  %129 = fmul fast float %125, 0x3F00001000000000
  %130 = fadd fast float %126, -1.000000e+00
  %131 = fadd fast float %127, -1.000000e+00
  %132 = fadd fast float %128, -1.000000e+00
  %133 = fadd fast float %129, -1.000000e+00
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 3
  %137 = fmul fast float %135, %98
  %138 = fmul fast float %136, %99
  %139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %140 = extractvalue %dx.types.ResRet.i32 %139, 0
  %141 = and i32 %140, 114688
  %142 = icmp ne i32 %141, 0
  %143 = select i1 %142, float %137, float 0.000000e+00
  %144 = select i1 %142, float %138, float 0.000000e+00
  %145 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %46, float %143, float %144, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %146 = extractvalue %dx.types.ResRet.f32 %145, 0
  %147 = fmul fast float %146, 2.550000e+02
  %148 = fptoui float %147 to i32
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.i32 %150, 3
  %152 = and i32 %151, 3
  %153 = icmp ne i32 %152, 0
  %154 = and i32 %151, 4
  %155 = icmp ne i32 %154, 0
  %156 = and i1 %153, %155
  br i1 %156, label %157, label %168

; <label>:157                                     ; preds = %0
  %158 = extractvalue %dx.types.CBufRet.f32 %149, 3
  %159 = fmul fast float %158, %99
  %160 = extractvalue %dx.types.CBufRet.f32 %149, 2
  %161 = fmul fast float %160, %98
  %162 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %45, float %161, float %159, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %163 = extractvalue %dx.types.ResRet.f32 %162, 0
  %164 = fsub fast float 1.000000e+00, %163
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.f32 %165, 0
  %167 = fcmp fast olt float %164, %166
  br label %171

; <label>:168                                     ; preds = %0
  %169 = icmp eq i32 %154, 0
  %170 = and i1 %153, %169
  br label %171

; <label>:171                                     ; preds = %168, %157
  %172 = phi i1 [ %167, %157 ], [ %170, %168 ]
  %173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %174 = extractvalue %dx.types.CBufRet.f32 %173, 2
  %175 = fmul fast float %174, 0x3FE3C6EF40000000
  %176 = frem fast float %98, 2.560000e+02
  %177 = frem fast float %99, 2.560000e+02
  %178 = fptoui float %176 to i32
  %179 = fptoui float %177 to i32
  %180 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 0, i32 %178, i32 %179, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %181 = extractvalue %dx.types.ResRet.f32 %180, 0
  %182 = fadd fast float %181, %175
  %183 = add i32 %53, 60
  %184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %183, i32 undef)  ; BufferLoad(srv,index,wot)
  %185 = extractvalue %dx.types.ResRet.i32 %184, 0
  %186 = add i32 %185, 0
  %187 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %186, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %188 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %187, i32 0)  ; GetDimensions(handle,mipLevel)
  %189 = extractvalue %dx.types.Dimensions %188, 0
  %190 = sitofp i32 %189 to float
  %191 = extractvalue %dx.types.Dimensions %188, 1
  %192 = sitofp i32 %191 to float
  %193 = fmul fast float %121, 0x3F10001000000000
  %194 = fadd fast float %193, -2.000000e+00
  %195 = fmul fast float %194, %131
  %196 = fsub fast float 1.000000e+00, %195
  %197 = fmul fast float %123, 0x3F10001000000000
  %198 = fadd fast float %197, -2.000000e+00
  %199 = fmul fast float %198, %132
  %200 = fsub fast float %196, %199
  %201 = fmul fast float %119, 0x3F10001000000000
  %202 = fadd fast float %201, -2.000000e+00
  %203 = fmul fast float %202, %131
  %204 = fmul fast float %198, %133
  %205 = fsub fast float %203, %204
  %206 = fmul fast float %202, %132
  %207 = fmul fast float %194, %133
  %208 = fadd fast float %206, %207
  %209 = fadd fast float %203, %204
  %210 = fmul fast float %202, %130
  %211 = fsub fast float 1.000000e+00, %210
  %212 = fsub fast float %211, %199
  %213 = fmul fast float %194, %132
  %214 = fmul fast float %202, %133
  %215 = fsub fast float %213, %214
  %216 = fsub fast float %206, %207
  %217 = fadd fast float %213, %214
  %218 = fsub fast float %211, %195
  %219 = add i32 %53, 24
  %220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %221 = extractvalue %dx.types.ResRet.i32 %220, 2
  %222 = bitcast i32 %221 to float
  %223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %224 = extractvalue %dx.types.CBufRet.f32 %223, 0
  %225 = extractvalue %dx.types.CBufRet.f32 %223, 1
  %226 = extractvalue %dx.types.CBufRet.f32 %223, 2
  %227 = getelementptr [3 x float], [3 x float]* %94, i32 0, i32 0
  store float %71, float* %227, align 4, !noalias !99
  %228 = getelementptr [3 x float], [3 x float]* %94, i32 0, i32 1
  store float %72, float* %228, align 4, !noalias !99
  %229 = fsub fast float 1.000000e+00, %71
  %230 = fsub fast float %229, %72
  %231 = getelementptr [3 x float], [3 x float]* %94, i32 0, i32 2
  store float %230, float* %231, align 4, !noalias !99
  %232 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 0
  store float %56, float* %232, align 4, !tbaa !110, !noalias !99
  %233 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 1
  store float %57, float* %233, align 4, !tbaa !110, !noalias !99
  %234 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 2
  store float %58, float* %234, align 4, !tbaa !110, !noalias !99
  %235 = getelementptr [3 x float], [3 x float]* %83, i32 0, i32 0
  %236 = getelementptr [3 x float], [3 x float]* %84, i32 0, i32 0
  store float %69, float* %235, align 4
  store float %70, float* %236, align 4
  %237 = getelementptr [3 x float], [3 x float]* %83, i32 0, i32 1
  %238 = getelementptr [3 x float], [3 x float]* %84, i32 0, i32 1
  store float %65, float* %237, align 4
  store float %66, float* %238, align 4
  %239 = getelementptr [3 x float], [3 x float]* %83, i32 0, i32 2
  %240 = getelementptr [3 x float], [3 x float]* %84, i32 0, i32 2
  store float %61, float* %239, align 4
  store float %62, float* %240, align 4
  %241 = getelementptr [3 x float], [3 x float]* %81, i32 0, i32 0
  %242 = getelementptr [3 x float], [3 x float]* %82, i32 0, i32 0
  store float %67, float* %241, align 4
  store float %68, float* %242, align 4
  %243 = getelementptr [3 x float], [3 x float]* %81, i32 0, i32 1
  %244 = getelementptr [3 x float], [3 x float]* %82, i32 0, i32 1
  store float %63, float* %243, align 4
  store float %64, float* %244, align 4
  %245 = getelementptr [3 x float], [3 x float]* %81, i32 0, i32 2
  %246 = getelementptr [3 x float], [3 x float]* %82, i32 0, i32 2
  store float %59, float* %245, align 4
  store float %60, float* %246, align 4
  br label %247

; <label>:247                                     ; preds = %352, %171
  %248 = phi float [ %354, %352 ], [ %71, %171 ]
  %249 = phi float [ %343, %352 ], [ undef, %171 ]
  %250 = phi float [ %344, %352 ], [ undef, %171 ]
  %251 = phi float [ %345, %352 ], [ undef, %171 ]
  %252 = phi float [ %346, %352 ], [ 1.000000e+00, %171 ]
  %253 = phi float [ %347, %352 ], [ 0.000000e+00, %171 ]
  %254 = phi i32 [ %350, %352 ], [ 0, %171 ]
  %255 = phi float [ %348, %352 ], [ 0.000000e+00, %171 ]
  %256 = phi float [ %349, %352 ], [ 0.000000e+00, %171 ]
  %257 = fcmp fast ogt float %248, 0x3EB0C6F7A0000000
  br i1 %257, label %258, label %342

; <label>:258                                     ; preds = %247
  %259 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %254
  %260 = load float, float* %259, align 4, !tbaa !110, !noalias !99
  %261 = fdiv fast float 1.000000e+00, %260
  %262 = getelementptr [3 x float], [3 x float]* %81, i32 0, i32 %254
  %263 = getelementptr [3 x float], [3 x float]* %82, i32 0, i32 %254
  %264 = load float, float* %262, align 4
  %265 = load float, float* %263, align 4
  %266 = fmul fast float %264, %261
  %267 = fmul fast float %265, %261
  %268 = getelementptr [3 x float], [3 x float]* %83, i32 0, i32 %254
  %269 = getelementptr [3 x float], [3 x float]* %84, i32 0, i32 %254
  %270 = load float, float* %268, align 4
  %271 = load float, float* %269, align 4
  %272 = fmul fast float %270, %261
  %273 = fmul fast float %271, %261
  %274 = fmul fast float %266, %190
  %275 = call float @dx.op.unary.f32(i32 83, float %274)  ; DerivCoarseX(value)
  %276 = call float @dx.op.unary.f32(i32 84, float %274)  ; DerivCoarseY(value)
  %277 = fmul fast float %267, %192
  %278 = call float @dx.op.unary.f32(i32 83, float %277)  ; DerivCoarseX(value)
  %279 = call float @dx.op.unary.f32(i32 84, float %277)  ; DerivCoarseY(value)
  %280 = fmul fast float %278, %278
  %281 = fmul fast float %279, %279
  %282 = fadd fast float %281, %280
  %283 = fmul fast float %278, %275
  %284 = fmul fast float %279, %276
  %285 = fadd fast float %284, %283
  %286 = fmul fast float %275, %275
  %287 = fmul fast float %276, %276
  %288 = fadd fast float %287, %286
  %289 = fmul fast float %282, %288
  %290 = fmul fast float %285, %285
  %291 = fsub fast float %289, %290
  %292 = bitcast float %291 to i32
  %293 = fadd fast float %282, %288
  %294 = bitcast float %293 to i32
  %295 = sub i32 8388608, %294
  %296 = add i32 %295, %292
  %297 = ashr i32 %296, 24
  %298 = sitofp i32 %297 to float
  %299 = add i32 %53, 68
  %300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.i32 %300, 0
  %302 = add i32 %301, 0
  %303 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %302, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %304 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %303, %dx.types.Handle %45, float %266, float %267, float undef, float undef, i32 0, i32 0, i32 undef, float %298)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %305 = extractvalue %dx.types.ResRet.f32 %304, 0
  %306 = fmul fast float %305, 2.000000e+00
  %307 = fadd fast float %306, -1.000000e+00
  %308 = fmul fast float %307, %222
  %309 = fmul fast float %272, %308
  %310 = fmul fast float %273, %308
  %311 = fadd fast float %309, %266
  %312 = fadd fast float %310, %267
  %313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %183, i32 undef)  ; BufferLoad(srv,index,wot)
  %314 = extractvalue %dx.types.ResRet.i32 %313, 0
  %315 = add i32 %314, 0
  %316 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %315, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %317 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %316, %dx.types.Handle %45, float %311, float %312, float undef, float undef, i32 0, i32 0, i32 undef, float %298)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %318 = extractvalue %dx.types.ResRet.f32 %317, 0
  %319 = extractvalue %dx.types.ResRet.f32 %317, 1
  %320 = extractvalue %dx.types.ResRet.f32 %317, 2
  %321 = extractvalue %dx.types.ResRet.f32 %317, 3
  %322 = fmul fast float %318, 2.000000e+00
  %323 = fmul fast float %319, 2.000000e+00
  %324 = fmul fast float %320, 2.000000e+00
  %325 = fadd fast float %322, -1.000000e+00
  %326 = fadd fast float %323, -1.000000e+00
  %327 = fadd fast float %324, -1.000000e+00
  %328 = fmul fast float %325, %200
  %329 = call float @dx.op.tertiary.f32(i32 46, float %326, float %205, float %328)  ; FMad(a,b,c)
  %330 = call float @dx.op.tertiary.f32(i32 46, float %327, float %208, float %329)  ; FMad(a,b,c)
  %331 = fmul fast float %325, %209
  %332 = call float @dx.op.tertiary.f32(i32 46, float %326, float %212, float %331)  ; FMad(a,b,c)
  %333 = call float @dx.op.tertiary.f32(i32 46, float %327, float %215, float %332)  ; FMad(a,b,c)
  %334 = fmul fast float %325, %216
  %335 = call float @dx.op.tertiary.f32(i32 46, float %326, float %217, float %334)  ; FMad(a,b,c)
  %336 = call float @dx.op.tertiary.f32(i32 46, float %327, float %218, float %335)  ; FMad(a,b,c)
  %337 = fmul fast float %248, %321
  %338 = call float @dx.op.dot3.f32(i32 55, float %224, float %225, float %226, float %330, float %333, float %336)  ; Dot3(ax,ay,az,bx,by,bz)
  %339 = fmul fast float %337, %338
  %340 = fcmp fast olt float %339, %252
  br i1 %340, label %341, label %342

; <label>:341                                     ; preds = %258
  br label %342

; <label>:342                                     ; preds = %341, %258, %247
  %343 = phi float [ %249, %247 ], [ %330, %341 ], [ %249, %258 ]
  %344 = phi float [ %250, %247 ], [ %333, %341 ], [ %250, %258 ]
  %345 = phi float [ %251, %247 ], [ %336, %341 ], [ %251, %258 ]
  %346 = phi float [ %252, %247 ], [ %339, %341 ], [ %252, %258 ]
  %347 = phi float [ %253, %247 ], [ %298, %341 ], [ %298, %258 ]
  %348 = phi float [ %255, %247 ], [ %311, %341 ], [ %255, %258 ]
  %349 = phi float [ %256, %247 ], [ %312, %341 ], [ %256, %258 ]
  %350 = add nuw nsw i32 %254, 1
  %351 = icmp eq i32 %350, 3
  br i1 %351, label %355, label %352

; <label>:352                                     ; preds = %342
  %353 = getelementptr [3 x float], [3 x float]* %94, i32 0, i32 %350
  %354 = load float, float* %353, align 4, !tbaa !110, !noalias !99
  br label %247

; <label>:355                                     ; preds = %342
  %356 = call float @dx.op.unary.f32(i32 22, float %182)  ; Frc(value)
  br i1 %52, label %366, label %357

; <label>:357                                     ; preds = %355
  %358 = call float @dx.op.dot3.f32(i32 55, float %107, float %109, float %111, float %343, float %344, float %345)  ; Dot3(ax,ay,az,bx,by,bz)
  %359 = fmul fast float %358, 2.000000e+00
  %360 = fmul fast float %359, %107
  %361 = fmul fast float %359, %109
  %362 = fmul fast float %359, %111
  %363 = fsub fast float %343, %360
  %364 = fsub fast float %344, %361
  %365 = fsub fast float %345, %362
  br label %366

; <label>:366                                     ; preds = %357, %355
  %367 = phi float [ %363, %357 ], [ %343, %355 ]
  %368 = phi float [ %364, %357 ], [ %344, %355 ]
  %369 = phi float [ %365, %357 ], [ %345, %355 ]
  %370 = add i32 %53, 56
  %371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %372 = extractvalue %dx.types.ResRet.i32 %371, 0
  %373 = add i32 %372, 0
  %374 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %373, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %375 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %374, %dx.types.Handle %45, float %348, float %349, float undef, float undef, i32 0, i32 0, i32 undef, float %347)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %376 = extractvalue %dx.types.ResRet.f32 %375, 0
  %377 = extractvalue %dx.types.ResRet.f32 %375, 1
  %378 = extractvalue %dx.types.ResRet.f32 %375, 2
  %379 = extractvalue %dx.types.ResRet.f32 %375, 3
  %380 = add i32 %53, 64
  %381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %380, i32 undef)  ; BufferLoad(srv,index,wot)
  %382 = extractvalue %dx.types.ResRet.i32 %381, 0
  %383 = add i32 %382, 0
  %384 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %383, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %385 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %384, %dx.types.Handle %45, float %348, float %349, float undef, float undef, i32 0, i32 0, i32 undef, float %347)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %386 = extractvalue %dx.types.ResRet.f32 %385, 0
  %387 = add i32 %53, 68
  %388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = add i32 %389, 0
  %391 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %390, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %392 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %391, %dx.types.Handle %45, float %348, float %349, float undef, float undef, i32 0, i32 0, i32 undef, float %347)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %393 = extractvalue %dx.types.ResRet.f32 %392, 0
  %394 = fadd fast float %73, 1.000000e+00
  %395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %396 = extractvalue %dx.types.ResRet.i32 %395, 2
  %397 = bitcast i32 %396 to float
  %398 = fmul fast float %393, 2.000000e+00
  %399 = fsub fast float %394, %398
  %400 = fmul fast float %397, %399
  %401 = fadd fast float %400, %80
  %402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %403 = extractvalue %dx.types.CBufRet.f32 %402, 2
  %404 = extractvalue %dx.types.CBufRet.f32 %402, 3
  %405 = fmul fast float %98, 2.000000e+00
  %406 = fmul fast float %405, %403
  %407 = fmul fast float %99, 2.000000e+00
  %408 = fmul fast float %407, %404
  %409 = fsub fast float 1.000000e+00, %406
  %410 = fsub fast float 1.000000e+00, %408
  %411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %412 = extractvalue %dx.types.CBufRet.f32 %411, 0
  %413 = extractvalue %dx.types.CBufRet.f32 %411, 1
  %414 = extractvalue %dx.types.CBufRet.f32 %411, 2
  %415 = fmul fast float %409, %412
  %416 = fmul fast float %409, %413
  %417 = fmul fast float %409, %414
  %418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %419 = extractvalue %dx.types.CBufRet.f32 %418, 0
  %420 = extractvalue %dx.types.CBufRet.f32 %418, 1
  %421 = extractvalue %dx.types.CBufRet.f32 %418, 2
  %422 = fmul fast float %410, %419
  %423 = fmul fast float %410, %420
  %424 = fmul fast float %410, %421
  %425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %426 = extractvalue %dx.types.CBufRet.f32 %425, 0
  %427 = extractvalue %dx.types.CBufRet.f32 %425, 1
  %428 = extractvalue %dx.types.CBufRet.f32 %425, 2
  %429 = fadd fast float %422, %426
  %430 = fadd fast float %429, %415
  %431 = fadd fast float %423, %427
  %432 = fadd fast float %431, %416
  %433 = fadd fast float %424, %428
  %434 = fadd fast float %433, %417
  %435 = fmul fast float %430, %401
  %436 = fmul fast float %432, %401
  %437 = fmul fast float %434, %401
  %438 = call float @dx.op.unary.f32(i32 26, float %55)  ; Round_ne(value)
  %439 = fptoui float %438 to i32
  %440 = call float @dx.op.unary.f32(i32 26, float %77)  ; Round_ne(value)
  %441 = fptoui float %440 to i32
  %442 = shl i32 %441, 3
  %443 = or i32 %442, 4
  %444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.i32 %444, 0
  %446 = and i32 %445, 16777215
  %447 = add i32 %446, %439
  %448 = shl i32 %447, 6
  %449 = getelementptr [3 x float], [3 x float]* %85, i32 0, i32 0
  %450 = getelementptr [3 x float], [3 x float]* %86, i32 0, i32 0
  %451 = getelementptr [3 x float], [3 x float]* %87, i32 0, i32 0
  %452 = getelementptr [3 x float], [3 x float]* %88, i32 0, i32 0
  %453 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %454 = extractvalue %dx.types.ResRet.f32 %453, 0
  %455 = extractvalue %dx.types.ResRet.f32 %453, 1
  %456 = extractvalue %dx.types.ResRet.f32 %453, 2
  %457 = extractvalue %dx.types.ResRet.f32 %453, 3
  store float %454, float* %449, align 4
  store float %455, float* %450, align 4
  store float %456, float* %451, align 4
  store float %457, float* %452, align 4
  %458 = getelementptr [3 x float], [3 x float]* %85, i32 0, i32 1
  %459 = getelementptr [3 x float], [3 x float]* %86, i32 0, i32 1
  %460 = getelementptr [3 x float], [3 x float]* %87, i32 0, i32 1
  %461 = getelementptr [3 x float], [3 x float]* %88, i32 0, i32 1
  %462 = or i32 %448, 16
  %463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %462, i32 undef)  ; BufferLoad(srv,index,wot)
  %464 = extractvalue %dx.types.ResRet.f32 %463, 0
  %465 = extractvalue %dx.types.ResRet.f32 %463, 1
  %466 = extractvalue %dx.types.ResRet.f32 %463, 2
  %467 = extractvalue %dx.types.ResRet.f32 %463, 3
  store float %464, float* %458, align 4
  store float %465, float* %459, align 4
  store float %466, float* %460, align 4
  store float %467, float* %461, align 4
  %468 = getelementptr [3 x float], [3 x float]* %85, i32 0, i32 2
  %469 = getelementptr [3 x float], [3 x float]* %86, i32 0, i32 2
  %470 = getelementptr [3 x float], [3 x float]* %87, i32 0, i32 2
  %471 = getelementptr [3 x float], [3 x float]* %88, i32 0, i32 2
  %472 = or i32 %448, 32
  %473 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.f32 %473, 0
  %475 = extractvalue %dx.types.ResRet.f32 %473, 1
  %476 = extractvalue %dx.types.ResRet.f32 %473, 2
  %477 = extractvalue %dx.types.ResRet.f32 %473, 3
  store float %474, float* %468, align 4
  store float %475, float* %469, align 4
  store float %476, float* %470, align 4
  store float %477, float* %471, align 4
  %478 = or i32 %448, 48
  %479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.i32 %479, 0
  %481 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %482 = extractvalue %dx.types.CBufRet.i32 %481, 1
  %483 = icmp eq i32 %482, 0
  %484 = and i32 %480, 4
  %485 = icmp ne i32 %484, 0
  %486 = and i1 %483, %485
  br i1 %486, label %487, label %526

; <label>:487                                     ; preds = %366
  %488 = and i32 %480, 3
  %489 = getelementptr [3 x float], [3 x float]* %85, i32 0, i32 %488
  %490 = getelementptr [3 x float], [3 x float]* %86, i32 0, i32 %488
  %491 = getelementptr [3 x float], [3 x float]* %87, i32 0, i32 %488
  %492 = getelementptr [3 x float], [3 x float]* %88, i32 0, i32 %488
  %493 = load float, float* %489, align 4
  %494 = load float, float* %490, align 4
  %495 = load float, float* %491, align 4
  %496 = load float, float* %492, align 4
  %497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %498 = extractvalue %dx.types.CBufRet.f32 %497, 0
  %499 = extractvalue %dx.types.CBufRet.f32 %497, 1
  %500 = extractvalue %dx.types.CBufRet.f32 %497, 2
  %501 = call float @dx.op.dot3.f32(i32 55, float %493, float %494, float %495, float %498, float %499, float %500)  ; Dot3(ax,ay,az,bx,by,bz)
  %502 = fadd fast float %501, %496
  %503 = fcmp fast ogt float %502, 1.000000e+00
  br i1 %503, label %504, label %509

; <label>:504                                     ; preds = %487
  %505 = fadd fast float %502, -1.000000e+00
  %506 = fmul fast float %505, 4.000000e+00
  %507 = call float @dx.op.unary.f32(i32 7, float %506)  ; Saturate(value)
  %508 = fmul fast float %507, 4.000000e+00
  br label %515

; <label>:509                                     ; preds = %487
  %510 = fcmp fast olt float %502, 0.000000e+00
  br i1 %510, label %511, label %515

; <label>:511                                     ; preds = %509
  %512 = fmul fast float %502, -4.000000e+00
  %513 = call float @dx.op.unary.f32(i32 7, float %512)  ; Saturate(value)
  %514 = fmul fast float %513, -4.000000e+00
  br label %515

; <label>:515                                     ; preds = %511, %509, %504
  %516 = phi float [ %508, %504 ], [ %514, %511 ], [ 0.000000e+00, %509 ]
  %517 = icmp eq i32 %488, 0
  %518 = select i1 %517, float %516, float 0.000000e+00
  %519 = fadd fast float %457, %518
  store float %519, float* %452, align 4, !noalias !114
  %520 = icmp eq i32 %488, 1
  %521 = select i1 %520, float %516, float 0.000000e+00
  %522 = fadd fast float %467, %521
  store float %522, float* %461, align 4, !noalias !114
  %523 = icmp eq i32 %488, 2
  %524 = select i1 %523, float %516, float 0.000000e+00
  %525 = fadd fast float %477, %524
  store float %525, float* %471, align 4, !noalias !114
  br label %526

; <label>:526                                     ; preds = %515, %366
  %527 = phi float [ %477, %366 ], [ %525, %515 ]
  %528 = phi float [ %467, %366 ], [ %522, %515 ]
  %529 = phi float [ %457, %366 ], [ %519, %515 ]
  %530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %531 = extractvalue %dx.types.CBufRet.f32 %530, 0
  %532 = extractvalue %dx.types.CBufRet.f32 %530, 1
  %533 = extractvalue %dx.types.CBufRet.f32 %530, 2
  %534 = fadd fast float %531, %435
  %535 = fadd fast float %532, %436
  %536 = fadd fast float %533, %437
  %537 = call float @dx.op.dot4.f32(i32 56, float %454, float %455, float %456, float %529, float %534, float %535, float %536, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %538 = call float @dx.op.dot4.f32(i32 56, float %464, float %465, float %466, float %528, float %534, float %535, float %536, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %539 = call float @dx.op.dot4.f32(i32 56, float %474, float %475, float %476, float %527, float %534, float %535, float %536, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %540 = fadd fast float %386, 0xBFB99999A0000000
  %541 = call float @dx.op.unary.f32(i32 7, float %540)  ; Saturate(value)
  %542 = fmul fast float %541, 0x3FF1C71C80000000
  %543 = call float @dx.op.binary.f32(i32 36, float %386, float 0x3FB99999A0000000)  ; FMin(a,b)
  %544 = fsub fast float 1.000000e+00, %542
  %545 = call float @dx.op.unary.f32(i32 7, float %544)  ; Saturate(value)
  %546 = fmul fast float %545, %376
  %547 = fmul fast float %545, %377
  %548 = fmul fast float %545, %378
  %549 = call float @dx.op.unary.f32(i32 7, float %546)  ; Saturate(value)
  %550 = call float @dx.op.unary.f32(i32 7, float %547)  ; Saturate(value)
  %551 = call float @dx.op.unary.f32(i32 7, float %548)  ; Saturate(value)
  %552 = fmul fast float %542, %376
  %553 = fmul fast float %542, %377
  %554 = fmul fast float %542, %378
  %555 = fadd fast float %552, %543
  %556 = fadd fast float %553, %543
  %557 = fadd fast float %554, %543
  %558 = call float @dx.op.unary.f32(i32 7, float %555)  ; Saturate(value)
  %559 = call float @dx.op.unary.f32(i32 7, float %556)  ; Saturate(value)
  %560 = call float @dx.op.unary.f32(i32 7, float %557)  ; Saturate(value)
  %561 = call float @dx.op.dot3.f32(i32 55, float %549, float %550, float %551, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %562 = fmul fast float %561, 1.875000e-01
  %563 = fadd fast float %562, 0x3FE647AE20000000
  %564 = call float @dx.op.unary.f32(i32 7, float %563)  ; Saturate(value)
  %565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %566 = extractvalue %dx.types.CBufRet.f32 %565, 0
  %567 = fptoui float %98 to i32
  %568 = fptoui float %99 to i32
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %567, i32 %568, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %569 = fsub fast float -0.000000e+00, %437
  %570 = call float @dx.op.dot3.f32(i32 55, float %435, float %436, float %437, float %435, float %436, float %437)  ; Dot3(ax,ay,az,bx,by,bz)
  %571 = call float @dx.op.unary.f32(i32 25, float %570)  ; Rsqrt(value)
  %572 = fmul fast float %571, %435
  %573 = fmul fast float %571, %436
  %574 = fmul fast float %571, %437
  %575 = fsub fast float -0.000000e+00, %572
  %576 = fsub fast float -0.000000e+00, %573
  %577 = fsub fast float -0.000000e+00, %574
  %578 = select i1 %172, float 0.000000e+00, float %560
  %579 = call float @dx.op.dot3.f32(i32 55, float %367, float %368, float %369, float %575, float %576, float %577)  ; Dot3(ax,ay,az,bx,by,bz)
  %580 = call float @dx.op.unary.f32(i32 7, float %579)  ; Saturate(value)
  %581 = call float @dx.op.dot3.f32(i32 55, float %572, float %573, float %574, float %367, float %368, float %369)  ; Dot3(ax,ay,az,bx,by,bz)
  %582 = fmul fast float %581, 2.000000e+00
  %583 = fmul fast float %582, %367
  %584 = fmul fast float %582, %368
  %585 = fmul fast float %582, %369
  %586 = fsub fast float %572, %583
  %587 = fsub fast float %573, %584
  %588 = fsub fast float %574, %585
  %589 = fsub fast float 1.000000e+00, %379
  %590 = call float @dx.op.binary.f32(i32 35, float %589, float 0x3F847AE140000000)  ; FMax(a,b)
  %591 = fmul fast float %590, %590
  %592 = fmul fast float %591, %591
  %593 = call float @dx.op.unary.f32(i32 7, float %580)  ; Saturate(value)
  %594 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %45, float 0x3BF7A3BEA0000000, float %592, float %593, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %595 = extractvalue %dx.types.ResRet.f32 %594, 0
  %596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %597 = extractvalue %dx.types.CBufRet.f32 %596, 0
  %598 = extractvalue %dx.types.CBufRet.f32 %596, 1
  %599 = fadd fast float %597, %435
  %600 = fadd fast float %598, %436
  %601 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %602 = extractvalue %dx.types.CBufRet.i32 %601, 0
  %603 = icmp eq i32 %602, 1
  br i1 %603, label %604, label %639

; <label>:604                                     ; preds = %526
  %605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %606 = extractvalue %dx.types.CBufRet.f32 %605, 0
  %607 = extractvalue %dx.types.CBufRet.f32 %605, 1
  %608 = fsub fast float %599, %606
  %609 = fsub fast float %600, %607
  %610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %611 = extractvalue %dx.types.CBufRet.f32 %610, 0
  %612 = extractvalue %dx.types.CBufRet.f32 %610, 1
  %613 = fmul fast float %608, %611
  %614 = fmul fast float %609, %612
  %615 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %45, float %613, float %614, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %616 = extractvalue %dx.types.ResRet.f32 %615, 0
  %617 = fcmp fast ogt float %616, 0.000000e+00
  %618 = extractvalue %dx.types.CBufRet.i32 %601, 3
  %619 = icmp ne i32 %618, 0
  %620 = and i1 %617, %619
  br i1 %620, label %621, label %639, !dx.controlflow.hints !119

; <label>:621                                     ; preds = %604
  %622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %623 = extractvalue %dx.types.CBufRet.f32 %622, 0
  %624 = extractvalue %dx.types.CBufRet.f32 %622, 1
  %625 = fsub fast float %599, %623
  %626 = fsub fast float %600, %624
  %627 = fmul fast float %625, %625
  %628 = fmul fast float %626, %626
  %629 = fadd fast float %627, %628
  %630 = uitofp i32 %618 to float
  %631 = fmul fast float %630, %630
  %632 = fcmp fast ogt float %629, %631
  br i1 %632, label %639, label %633

; <label>:633                                     ; preds = %621
  %634 = call float @dx.op.unary.f32(i32 24, float %629)  ; Sqrt(value)
  %635 = fsub fast float %630, %634
  %636 = fmul fast float %635, 0x3F75555560000000
  %637 = call float @dx.op.unary.f32(i32 7, float %636)  ; Saturate(value)
  %638 = call float @dx.op.binary.f32(i32 36, float %637, float %616)  ; FMin(a,b)
  br label %639

; <label>:639                                     ; preds = %633, %621, %604, %526
  %640 = phi float [ 1.000000e+00, %526 ], [ %638, %633 ], [ %616, %604 ], [ 0.000000e+00, %621 ]
  %641 = fcmp fast ogt float %640, 0.000000e+00
  br i1 %641, label %642, label %963, !dx.controlflow.hints !120

; <label>:642                                     ; preds = %639
  %643 = fadd fast float %55, 5.000000e-01
  %644 = fptoui float %643 to i32
  %645 = fadd fast float %77, 5.000000e-01
  %646 = fptoui float %645 to i32
  %647 = shl i32 %646, 3
  %648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %647, i32 undef)  ; BufferLoad(srv,index,wot)
  %649 = extractvalue %dx.types.ResRet.i32 %648, 0
  %650 = or i32 %647, 4
  %651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %650, i32 undef)  ; BufferLoad(srv,index,wot)
  %652 = extractvalue %dx.types.ResRet.i32 %651, 0
  %653 = and i32 %652, 16777215
  %654 = add i32 %653, %644
  %655 = shl i32 %654, 5
  %656 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %655, i32 undef)  ; BufferLoad(srv,index,wot)
  %657 = extractvalue %dx.types.ResRet.f32 %656, 0
  %658 = extractvalue %dx.types.ResRet.f32 %656, 1
  %659 = extractvalue %dx.types.ResRet.f32 %656, 2
  %660 = or i32 %655, 16
  %661 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %660, i32 undef)  ; BufferLoad(srv,index,wot)
  %662 = extractvalue %dx.types.ResRet.f32 %661, 0
  %663 = extractvalue %dx.types.ResRet.f32 %661, 1
  %664 = extractvalue %dx.types.ResRet.f32 %661, 2
  %665 = lshr i32 %652, 24
  %666 = and i32 %665, 3
  %667 = add nuw nsw i32 %666, 3
  %668 = shl i32 1, %667
  %669 = lshr i32 %652, 29
  %670 = lshr i32 %652, 23
  %671 = and i32 %670, 56
  %672 = shl nuw nsw i32 %669, 3
  %673 = lshr i32 %649, 16
  %674 = and i32 %649, 65535
  %675 = uitofp i32 %668 to float
  %676 = fmul fast float %675, 1.562500e-02
  %677 = uitofp i32 %673 to float
  %678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %679 = extractvalue %dx.types.CBufRet.f32 %678, 3
  %680 = fmul fast float %679, %677
  %681 = uitofp i32 %671 to float
  %682 = fmul fast float %681, 1.562500e-02
  %683 = uitofp i32 %672 to float
  %684 = fmul fast float %683, 1.562500e-02
  %685 = uitofp i32 %674 to float
  %686 = fmul fast float %679, %685
  %687 = call float @dx.op.unary.f32(i32 7, float %537)  ; Saturate(value)
  %688 = call float @dx.op.unary.f32(i32 7, float %538)  ; Saturate(value)
  %689 = call float @dx.op.unary.f32(i32 7, float %539)  ; Saturate(value)
  %690 = fmul fast float %687, %657
  %691 = fmul fast float %688, %658
  %692 = fmul fast float %689, %659
  %693 = fadd fast float %690, %662
  %694 = fmul fast float %676, %693
  %695 = fadd fast float %694, %682
  %696 = fadd fast float %691, %663
  %697 = fmul fast float %676, %696
  %698 = fadd fast float %697, %684
  %699 = fadd fast float %692, %664
  %700 = fmul fast float %680, %699
  %701 = fadd fast float %700, %686
  %702 = fmul fast float %695, 5.000000e-01
  %703 = fmul fast float %698, 0x3FD5555560000000
  %704 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %43, float %695, float %698, float %701, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %705 = extractvalue %dx.types.ResRet.f32 %704, 0
  %706 = extractvalue %dx.types.ResRet.f32 %704, 1
  %707 = extractvalue %dx.types.ResRet.f32 %704, 2
  %708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %709 = extractvalue %dx.types.CBufRet.f32 %708, 3
  %710 = fmul fast float %709, %705
  %711 = fmul fast float %709, %706
  %712 = fmul fast float %709, %707
  %713 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %43, float %702, float %703, float %701, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %714 = extractvalue %dx.types.ResRet.f32 %713, 0
  %715 = extractvalue %dx.types.ResRet.f32 %713, 1
  %716 = extractvalue %dx.types.ResRet.f32 %713, 2
  %717 = extractvalue %dx.types.ResRet.f32 %713, 3
  %718 = fadd fast float %702, 5.000000e-01
  %719 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %43, float %718, float %703, float %701, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %720 = extractvalue %dx.types.ResRet.f32 %719, 0
  %721 = extractvalue %dx.types.ResRet.f32 %719, 1
  %722 = extractvalue %dx.types.ResRet.f32 %719, 2
  %723 = extractvalue %dx.types.ResRet.f32 %719, 3
  %724 = fadd fast float %703, 0x3FD5555560000000
  %725 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %43, float %702, float %724, float %701, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %726 = extractvalue %dx.types.ResRet.f32 %725, 0
  %727 = extractvalue %dx.types.ResRet.f32 %725, 1
  %728 = extractvalue %dx.types.ResRet.f32 %725, 2
  %729 = extractvalue %dx.types.ResRet.f32 %725, 3
  %730 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %43, float %718, float %724, float %701, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %731 = extractvalue %dx.types.ResRet.f32 %730, 0
  %732 = extractvalue %dx.types.ResRet.f32 %730, 1
  %733 = extractvalue %dx.types.ResRet.f32 %730, 2
  %734 = extractvalue %dx.types.ResRet.f32 %730, 3
  %735 = fadd fast float %703, 0x3FE5555560000000
  %736 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %43, float %702, float %735, float %701, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %737 = extractvalue %dx.types.ResRet.f32 %736, 0
  %738 = extractvalue %dx.types.ResRet.f32 %736, 1
  %739 = extractvalue %dx.types.ResRet.f32 %736, 2
  %740 = extractvalue %dx.types.ResRet.f32 %736, 3
  %741 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %43, float %718, float %735, float %701, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %742 = extractvalue %dx.types.ResRet.f32 %741, 0
  %743 = extractvalue %dx.types.ResRet.f32 %741, 1
  %744 = extractvalue %dx.types.ResRet.f32 %741, 2
  %745 = extractvalue %dx.types.ResRet.f32 %741, 3
  %746 = fmul fast float %714, 0x400BB67AE0000000
  %747 = fadd fast float %746, 0xBFFBB67AE0000000
  %748 = fmul fast float %747, %710
  %749 = fmul fast float %715, 0x400BB67AE0000000
  %750 = fadd fast float %749, 0xBFFBB67AE0000000
  %751 = fmul fast float %750, %711
  %752 = fmul fast float %716, 0x400BB67AE0000000
  %753 = fadd fast float %752, 0xBFFBB67AE0000000
  %754 = fmul fast float %753, %712
  %755 = fmul fast float %717, 0x4011E377A0000000
  %756 = fadd fast float %755, 0xC001E377A0000000
  %757 = fmul fast float %756, %710
  %758 = fmul fast float %720, 0x4011E377A0000000
  %759 = fadd fast float %758, 0xC001E377A0000000
  %760 = fmul fast float %759, %711
  %761 = fmul fast float %721, 0x4011E377A0000000
  %762 = fadd fast float %761, 0xC001E377A0000000
  %763 = fmul fast float %762, %712
  %764 = fmul fast float %722, 0x400BB67AE0000000
  %765 = fadd fast float %764, 0xBFFBB67AE0000000
  %766 = fmul fast float %765, %710
  %767 = fmul fast float %723, 0x400BB67AE0000000
  %768 = fadd fast float %767, 0xBFFBB67AE0000000
  %769 = fmul fast float %768, %711
  %770 = fmul fast float %726, 0x400BB67AE0000000
  %771 = fadd fast float %770, 0xBFFBB67AE0000000
  %772 = fmul fast float %771, %712
  %773 = fmul fast float %727, 0x400BB67AE0000000
  %774 = fadd fast float %773, 0xBFFBB67AE0000000
  %775 = fmul fast float %774, %710
  %776 = fmul fast float %728, 0x400BB67AE0000000
  %777 = fadd fast float %776, 0xBFFBB67AE0000000
  %778 = fmul fast float %777, %711
  %779 = fmul fast float %729, 0x400BB67AE0000000
  %780 = fadd fast float %779, 0xBFFBB67AE0000000
  %781 = fmul fast float %780, %712
  %782 = fmul fast float %731, 0x400EFBDEC0000000
  %783 = fadd fast float %782, 0xBFFEFBDEC0000000
  %784 = fmul fast float %783, %710
  %785 = fmul fast float %732, 0x400EFBDEC0000000
  %786 = fadd fast float %785, 0xBFFEFBDEC0000000
  %787 = fmul fast float %786, %711
  %788 = fmul fast float %733, 0x400EFBDEC0000000
  %789 = fadd fast float %788, 0xBFFEFBDEC0000000
  %790 = fmul fast float %789, %712
  %791 = fmul fast float %734, 0x400EFBDEC0000000
  %792 = fadd fast float %791, 0xBFFEFBDEC0000000
  %793 = fmul fast float %792, %710
  %794 = fmul fast float %737, 0x400EFBDEC0000000
  %795 = fadd fast float %794, 0xBFFEFBDEC0000000
  %796 = fmul fast float %795, %711
  %797 = fmul fast float %738, 0x400EFBDEC0000000
  %798 = fadd fast float %797, 0xBFFEFBDEC0000000
  %799 = fmul fast float %798, %712
  %800 = fmul fast float %739, 0x400EFBDEC0000000
  %801 = fadd fast float %800, 0xBFFEFBDEC0000000
  %802 = fmul fast float %801, %710
  %803 = fmul fast float %740, 0x400EFBDEC0000000
  %804 = fadd fast float %803, 0xBFFEFBDEC0000000
  %805 = fmul fast float %804, %711
  %806 = fmul fast float %742, 0x400EFBDEC0000000
  %807 = fadd fast float %806, 0xBFFEFBDEC0000000
  %808 = fmul fast float %807, %712
  %809 = fmul fast float %743, 0x400EFBDEC0000000
  %810 = fadd fast float %809, 0xBFFEFBDEC0000000
  %811 = fmul fast float %810, %710
  %812 = fmul fast float %744, 0x400EFBDEC0000000
  %813 = fadd fast float %812, 0xBFFEFBDEC0000000
  %814 = fmul fast float %813, %711
  %815 = fmul fast float %745, 0x400EFBDEC0000000
  %816 = fadd fast float %815, 0xBFFEFBDEC0000000
  %817 = fmul fast float %816, %712
  %818 = call float @dx.op.dot3.f32(i32 55, float %710, float %711, float %712, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %819 = fmul fast float %818, 0x3FD20DD760000000
  %820 = fmul fast float %710, 0x3FD20DD760000000
  %821 = fmul fast float %369, 0x3FD4D8D7C0000000
  %822 = fmul fast float %821, %748
  %823 = fmul fast float %369, %369
  %824 = fmul fast float %823, 0x3FEE471020000000
  %825 = fadd fast float %824, 0xBFD42F6020000000
  %826 = fmul fast float %757, %825
  %827 = fmul fast float %367, 0x3FD4D8D7C0000000
  %828 = fmul fast float %827, %775
  %829 = fmul fast float %368, 0x3FD4D8D7C0000000
  %830 = fmul fast float %829, %766
  %831 = fmul fast float %369, 0xBFF17B1420000000
  %832 = fmul fast float %784, %367
  %833 = fmul fast float %793, %368
  %834 = fmul fast float %367, %367
  %835 = fmul fast float %368, %368
  %836 = fsub fast float %834, %835
  %837 = fmul fast float %836, 0x3FC17B1420000000
  %838 = fmul fast float %837, %802
  %839 = fmul fast float %367, 0x3FD17B1420000000
  %840 = fmul fast float %839, %368
  %841 = fmul fast float %840, %811
  %842 = fadd fast float %833, %832
  %843 = fmul fast float %831, %842
  %844 = fadd fast float %843, %826
  %845 = fmul fast float %844, 2.500000e-01
  %846 = fadd fast float %822, %820
  %847 = fsub fast float %846, %830
  %848 = fsub fast float %847, %828
  %849 = fadd fast float %848, %845
  %850 = fadd fast float %849, %838
  %851 = fadd fast float %850, %841
  %852 = fmul fast float %711, 0x3FD20DD760000000
  %853 = fmul fast float %821, %751
  %854 = fmul fast float %760, %825
  %855 = fmul fast float %827, %778
  %856 = fmul fast float %829, %769
  %857 = fmul fast float %787, %367
  %858 = fmul fast float %796, %368
  %859 = fmul fast float %837, %805
  %860 = fmul fast float %840, %814
  %861 = fadd fast float %858, %857
  %862 = fmul fast float %831, %861
  %863 = fadd fast float %862, %854
  %864 = fmul fast float %863, 2.500000e-01
  %865 = fadd fast float %853, %852
  %866 = fsub fast float %865, %856
  %867 = fsub fast float %866, %855
  %868 = fadd fast float %867, %859
  %869 = fadd fast float %868, %864
  %870 = fadd fast float %869, %860
  %871 = fmul fast float %712, 0x3FD20DD760000000
  %872 = fmul fast float %821, %754
  %873 = fmul fast float %763, %825
  %874 = fmul fast float %827, %781
  %875 = fmul fast float %829, %772
  %876 = fmul fast float %790, %367
  %877 = fmul fast float %799, %368
  %878 = fmul fast float %837, %808
  %879 = fmul fast float %840, %817
  %880 = fadd fast float %877, %876
  %881 = fmul fast float %831, %880
  %882 = fadd fast float %881, %873
  %883 = fmul fast float %882, 2.500000e-01
  %884 = fadd fast float %872, %871
  %885 = fsub fast float %884, %874
  %886 = fsub fast float %885, %875
  %887 = fadd fast float %886, %883
  %888 = fadd fast float %887, %878
  %889 = fadd fast float %888, %879
  %890 = call float @dx.op.binary.f32(i32 35, float %851, float 0.000000e+00)  ; FMax(a,b)
  %891 = call float @dx.op.binary.f32(i32 35, float %870, float 0.000000e+00)  ; FMax(a,b)
  %892 = call float @dx.op.binary.f32(i32 35, float %889, float 0.000000e+00)  ; FMax(a,b)
  %893 = fmul fast float %588, 0x3FD4D8D7C0000000
  %894 = fmul fast float %893, %748
  %895 = fmul fast float %588, %588
  %896 = fmul fast float %895, 0x3FEE471020000000
  %897 = fadd fast float %896, 0xBFD42F6020000000
  %898 = fmul fast float %757, %897
  %899 = fmul fast float %586, 0x3FD4D8D7C0000000
  %900 = fmul fast float %899, %775
  %901 = fmul fast float %587, 0x3FD4D8D7C0000000
  %902 = fmul fast float %901, %766
  %903 = fmul fast float %588, 0xBFF17B1420000000
  %904 = fmul fast float %784, %586
  %905 = fmul fast float %793, %587
  %906 = fmul fast float %586, %586
  %907 = fmul fast float %587, %587
  %908 = fsub fast float %906, %907
  %909 = fmul fast float %908, 0x3FC17B1420000000
  %910 = fmul fast float %909, %802
  %911 = fmul fast float %587, 0x3FD17B1420000000
  %912 = fmul fast float %911, %586
  %913 = fmul fast float %912, %811
  %914 = fadd fast float %905, %904
  %915 = fmul fast float %903, %914
  %916 = fadd fast float %915, %898
  %917 = fmul fast float %916, 2.500000e-01
  %918 = fadd fast float %894, %820
  %919 = fsub fast float %918, %902
  %920 = fsub fast float %919, %900
  %921 = fadd fast float %920, %917
  %922 = fadd fast float %921, %910
  %923 = fadd fast float %922, %913
  %924 = fmul fast float %893, %751
  %925 = fmul fast float %760, %897
  %926 = fmul fast float %899, %778
  %927 = fmul fast float %901, %769
  %928 = fmul fast float %787, %586
  %929 = fmul fast float %796, %587
  %930 = fmul fast float %909, %805
  %931 = fmul fast float %912, %814
  %932 = fadd fast float %929, %928
  %933 = fmul fast float %903, %932
  %934 = fadd fast float %933, %925
  %935 = fmul fast float %934, 2.500000e-01
  %936 = fadd fast float %924, %852
  %937 = fsub fast float %936, %927
  %938 = fsub fast float %937, %926
  %939 = fadd fast float %938, %930
  %940 = fadd fast float %939, %935
  %941 = fadd fast float %940, %931
  %942 = fmul fast float %893, %754
  %943 = fmul fast float %763, %897
  %944 = fmul fast float %899, %781
  %945 = fmul fast float %901, %772
  %946 = fmul fast float %790, %586
  %947 = fmul fast float %799, %587
  %948 = fmul fast float %909, %808
  %949 = fmul fast float %912, %817
  %950 = fadd fast float %947, %946
  %951 = fmul fast float %903, %950
  %952 = fadd fast float %951, %943
  %953 = fmul fast float %952, 2.500000e-01
  %954 = fadd fast float %942, %871
  %955 = fsub fast float %954, %944
  %956 = fsub fast float %955, %945
  %957 = fadd fast float %956, %953
  %958 = fadd fast float %957, %948
  %959 = fadd fast float %958, %949
  %960 = call float @dx.op.binary.f32(i32 35, float %923, float 0.000000e+00)  ; FMax(a,b)
  %961 = call float @dx.op.binary.f32(i32 35, float %941, float 0.000000e+00)  ; FMax(a,b)
  %962 = call float @dx.op.binary.f32(i32 35, float %959, float 0.000000e+00)  ; FMax(a,b)
  br label %963

; <label>:963                                     ; preds = %642, %639
  %964 = phi float [ %960, %642 ], [ 0.000000e+00, %639 ]
  %965 = phi float [ %961, %642 ], [ 0.000000e+00, %639 ]
  %966 = phi float [ %962, %642 ], [ 0.000000e+00, %639 ]
  %967 = phi float [ %890, %642 ], [ 0.000000e+00, %639 ]
  %968 = phi float [ %891, %642 ], [ 0.000000e+00, %639 ]
  %969 = phi float [ %892, %642 ], [ 0.000000e+00, %639 ]
  %970 = phi float [ %819, %642 ], [ 0.000000e+00, %639 ]
  %971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %972 = extractvalue %dx.types.CBufRet.f32 %971, 0
  %973 = fcmp fast ogt float %972, 0.000000e+00
  %974 = and i1 %641, %973
  br i1 %974, label %975, label %1179, !dx.controlflow.hints !121

; <label>:975                                     ; preds = %963
  %976 = extractvalue %dx.types.CBufRet.f32 %596, 2
  %977 = fadd fast float %976, %437
  %978 = fmul fast float %367, 3.200000e+01
  %979 = fmul fast float %368, 3.200000e+01
  %980 = fadd fast float %599, %978
  %981 = fadd fast float %600, %979
  %982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %983 = extractvalue %dx.types.CBufRet.f32 %982, 0
  %984 = extractvalue %dx.types.CBufRet.f32 %982, 1
  %985 = fsub fast float %980, %983
  %986 = fsub fast float %981, %984
  %987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %988 = extractvalue %dx.types.CBufRet.f32 %987, 0
  %989 = extractvalue %dx.types.CBufRet.f32 %987, 1
  %990 = fmul fast float %985, %988
  %991 = fmul fast float %986, %989
  %992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %993 = extractvalue %dx.types.CBufRet.f32 %992, 0
  %994 = extractvalue %dx.types.CBufRet.f32 %992, 1
  %995 = fsub fast float %599, %993
  %996 = fsub fast float %600, %994
  %997 = fmul fast float %995, %995
  %998 = fmul fast float %996, %996
  %999 = fadd fast float %997, %998
  %1000 = call float @dx.op.unary.f32(i32 24, float %999)  ; Sqrt(value)
  %1001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1002 = extractvalue %dx.types.CBufRet.f32 %1001, 0
  %1003 = extractvalue %dx.types.CBufRet.f32 %1001, 1
  %1004 = fsub fast float %1000, %1002
  %1005 = fdiv fast float %1004, %1003
  %1006 = call float @dx.op.unary.f32(i32 7, float %1005)  ; Saturate(value)
  %1007 = fmul fast float %1006, 2.000000e+00
  %1008 = fsub fast float 3.000000e+00, %1007
  %1009 = fmul fast float %1006, %1006
  %1010 = fmul fast float %1009, %1008
  %1011 = fcmp fast oge float %990, 0.000000e+00
  %1012 = fcmp fast ole float %990, 1.000000e+00
  %1013 = and i1 %1012, %1011
  %1014 = fcmp fast oge float %991, 0.000000e+00
  %1015 = and i1 %1014, %1013
  %1016 = fcmp fast ole float %991, 1.000000e+00
  %1017 = and i1 %1016, %1015
  %1018 = fcmp fast ogt float %1010, 0.000000e+00
  %1019 = and i1 %1018, %1017
  br i1 %1019, label %1020, label %1143, !dx.controlflow.hints !122

; <label>:1020                                    ; preds = %975
  %1021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1022 = extractvalue %dx.types.CBufRet.f32 %1021, 2
  %1023 = extractvalue %dx.types.CBufRet.f32 %1021, 3
  %1024 = fmul fast float %1022, %990
  %1025 = fmul fast float %1023, %991
  %1026 = call float @dx.op.unary.f32(i32 27, float %1024)  ; Round_ni(value)
  %1027 = call float @dx.op.unary.f32(i32 27, float %1025)  ; Round_ni(value)
  %1028 = fptosi float %1026 to i32
  %1029 = fptosi float %1027 to i32
  %1030 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %29, i32 0, i32 %1028, i32 %1029, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1031 = extractvalue %dx.types.ResRet.i32 %1030, 0
  %1032 = lshr i32 %1031, 16
  %1033 = icmp eq i32 %1032, 65535
  br i1 %1033, label %1143, label %1034

; <label>:1034                                    ; preds = %1020
  %1035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1036 = extractvalue %dx.types.CBufRet.f32 %1035, 0
  %1037 = fmul fast float %1036, %990
  %1038 = extractvalue %dx.types.CBufRet.f32 %1035, 1
  %1039 = fadd fast float %1037, %1038
  %1040 = extractvalue %dx.types.CBufRet.f32 %1035, 2
  %1041 = fmul fast float %1040, %991
  %1042 = extractvalue %dx.types.CBufRet.f32 %1035, 3
  %1043 = fadd fast float %1041, %1042
  %1044 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %45, float %1039, float %1043, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1045 = extractvalue %dx.types.ResRet.f32 %1044, 0
  %1046 = extractvalue %dx.types.ResRet.f32 %1044, 1
  %1047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1048 = extractvalue %dx.types.CBufRet.f32 %1047, 1
  %1049 = extractvalue %dx.types.CBufRet.f32 %1047, 0
  %1050 = fsub fast float %1048, %1049
  %1051 = fmul fast float %1050, %1045
  %1052 = fadd fast float %1051, %1049
  %1053 = extractvalue %dx.types.CBufRet.f32 %1047, 3
  %1054 = extractvalue %dx.types.CBufRet.f32 %1047, 2
  %1055 = fsub fast float %1053, %1054
  %1056 = fmul fast float %1055, %1046
  %1057 = fadd fast float %1056, %1054
  %1058 = fsub fast float %977, %1052
  %1059 = fsub fast float %1057, %1052
  %1060 = fdiv fast float %1058, %1059
  %1061 = call float @dx.op.unary.f32(i32 7, float %1060)  ; Saturate(value)
  %1062 = extractvalue %dx.types.CBufRet.f32 %971, 1
  %1063 = extractvalue %dx.types.CBufRet.f32 %1021, 0
  %1064 = extractvalue %dx.types.CBufRet.f32 %1021, 1
  %1065 = fmul fast float %1063, %990
  %1066 = fmul fast float %1064, %991
  %1067 = fmul fast float %1065, 1.250000e-01
  %1068 = fmul fast float %1066, 1.250000e-01
  %1069 = call float @dx.op.unary.f32(i32 27, float %1067)  ; Round_ni(value)
  %1070 = call float @dx.op.unary.f32(i32 27, float %1068)  ; Round_ni(value)
  %1071 = fmul fast float %1069, 8.000000e+00
  %1072 = fmul fast float %1070, 8.000000e+00
  %1073 = fsub fast float %1065, %1071
  %1074 = fsub fast float %1066, %1072
  %1075 = fadd fast float %1073, 5.000000e-01
  %1076 = fadd fast float %1074, 5.000000e-01
  %1077 = and i32 %1032, 255
  %1078 = lshr i32 %1031, 24
  %1079 = mul nuw nsw i32 %1077, 9
  %1080 = uitofp i32 %1079 to float
  %1081 = mul nuw nsw i32 %1078, 9
  %1082 = uitofp i32 %1081 to float
  %1083 = fadd fast float %1075, %1080
  %1084 = fadd fast float %1076, %1082
  %1085 = fdiv fast float %1083, %972
  %1086 = fdiv fast float %1084, %1062
  %1087 = fmul fast float %1061, 4.375000e-01
  %1088 = fadd fast float %1087, 3.125000e-02
  %1089 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %45, float %1085, float %1086, float %1088, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1090 = extractvalue %dx.types.ResRet.f32 %1089, 0
  %1091 = extractvalue %dx.types.ResRet.f32 %1089, 1
  %1092 = extractvalue %dx.types.ResRet.f32 %1089, 2
  %1093 = fadd fast float %1087, 5.312500e-01
  %1094 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %45, float %1085, float %1086, float %1093, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1095 = extractvalue %dx.types.ResRet.f32 %1094, 0
  %1096 = extractvalue %dx.types.ResRet.f32 %1094, 1
  %1097 = extractvalue %dx.types.ResRet.f32 %1094, 2
  %1098 = fmul fast float %1095, 2.000000e+00
  %1099 = fmul fast float %1096, 2.000000e+00
  %1100 = fmul fast float %1097, 2.000000e+00
  %1101 = fadd fast float %1098, -1.000000e+00
  %1102 = fadd fast float %1099, -1.000000e+00
  %1103 = fadd fast float %1100, -1.000000e+00
  %1104 = fmul fast float %1101, %1101
  %1105 = fmul fast float %1102, %1102
  %1106 = fadd fast float %1104, %1105
  %1107 = fmul fast float %1103, %1103
  %1108 = fadd fast float %1106, %1107
  %1109 = call float @dx.op.unary.f32(i32 24, float %1108)  ; Sqrt(value)
  %1110 = fcmp fast ogt float %1109, 0.000000e+00
  br i1 %1110, label %1111, label %1115

; <label>:1111                                    ; preds = %1034
  %1112 = fdiv fast float %1101, %1109
  %1113 = fdiv fast float %1102, %1109
  %1114 = fdiv fast float %1103, %1109
  br label %1115

; <label>:1115                                    ; preds = %1111, %1034
  %1116 = phi float [ %1112, %1111 ], [ 0.000000e+00, %1034 ]
  %1117 = phi float [ %1113, %1111 ], [ 0.000000e+00, %1034 ]
  %1118 = phi float [ %1114, %1111 ], [ 0.000000e+00, %1034 ]
  %1119 = call float @dx.op.dot3.f32(i32 55, float %1116, float %1117, float %1118, float %367, float %368, float %369)  ; Dot3(ax,ay,az,bx,by,bz)
  %1120 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1119)  ; FMax(a,b)
  %1121 = fmul fast float %1120, 0x400C5BF8A0000000
  %1122 = fmul fast float %1090, %1010
  %1123 = fmul fast float %1122, %1121
  %1124 = fmul fast float %1091, %1010
  %1125 = fmul fast float %1124, %1121
  %1126 = fmul fast float %1092, %1010
  %1127 = fmul fast float %1126, %1121
  %1128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1129 = extractvalue %dx.types.CBufRet.f32 %1128, 3
  %1130 = fmul fast float %1123, %1129
  %1131 = fmul fast float %1125, %1129
  %1132 = fmul fast float %1127, %1129
  %1133 = fcmp fast ogt float %977, %1057
  br i1 %1133, label %1134, label %1143

; <label>:1134                                    ; preds = %1115
  %1135 = fmul fast float %1059, 0x3FC24924A0000000
  %1136 = fsub fast float %977, %1057
  %1137 = fdiv fast float %1136, %1135
  %1138 = call float @dx.op.unary.f32(i32 7, float %1137)  ; Saturate(value)
  %1139 = fsub fast float 1.000000e+00, %1138
  %1140 = fmul fast float %1139, %1130
  %1141 = fmul fast float %1139, %1131
  %1142 = fmul fast float %1139, %1132
  br label %1143

; <label>:1143                                    ; preds = %1134, %1115, %1020, %975
  %1144 = phi float [ %1142, %1134 ], [ %1132, %1115 ], [ 0.000000e+00, %1020 ], [ 0.000000e+00, %975 ]
  %1145 = phi float [ %1141, %1134 ], [ %1131, %1115 ], [ 0.000000e+00, %1020 ], [ 0.000000e+00, %975 ]
  %1146 = phi float [ %1140, %1134 ], [ %1130, %1115 ], [ 0.000000e+00, %1020 ], [ 0.000000e+00, %975 ]
  %1147 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1146)  ; FMax(a,b)
  %1148 = fmul fast float %1147, 0x3FD20DD760000000
  %1149 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %586, float %587, float %588)  ; Dot3(ax,ay,az,bx,by,bz)
  %1150 = fmul fast float %1149, 0x3FDF454380000000
  %1151 = fmul fast float %1149, %1149
  %1152 = fmul fast float %1151, 0x3FEE471020000000
  %1153 = fadd fast float %1152, 0xBFD42F6020000000
  %1154 = call float @dx.op.dot3.f32(i32 55, float %1147, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1150, float %1153)  ; Dot3(ax,ay,az,bx,by,bz)
  %1155 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1145)  ; FMax(a,b)
  %1156 = fmul fast float %1155, 0x3FD20DD760000000
  %1157 = call float @dx.op.dot3.f32(i32 55, float %1155, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1150, float %1153)  ; Dot3(ax,ay,az,bx,by,bz)
  %1158 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1144)  ; FMax(a,b)
  %1159 = fmul fast float %1158, 0x3FD20DD760000000
  %1160 = call float @dx.op.dot3.f32(i32 55, float %1158, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1150, float %1153)  ; Dot3(ax,ay,az,bx,by,bz)
  %1161 = call float @dx.op.binary.f32(i32 35, float %1148, float 0.000000e+00)  ; FMax(a,b)
  %1162 = call float @dx.op.binary.f32(i32 35, float %1156, float 0.000000e+00)  ; FMax(a,b)
  %1163 = call float @dx.op.binary.f32(i32 35, float %1159, float 0.000000e+00)  ; FMax(a,b)
  %1164 = call float @dx.op.binary.f32(i32 35, float %1154, float 0.000000e+00)  ; FMax(a,b)
  %1165 = call float @dx.op.binary.f32(i32 35, float %1157, float 0.000000e+00)  ; FMax(a,b)
  %1166 = call float @dx.op.binary.f32(i32 35, float %1160, float 0.000000e+00)  ; FMax(a,b)
  %1167 = fmul fast float %1161, %640
  %1168 = fmul fast float %1162, %640
  %1169 = fmul fast float %1163, %640
  %1170 = fadd fast float %1167, %967
  %1171 = fadd fast float %1168, %968
  %1172 = fadd fast float %1169, %969
  %1173 = fmul fast float %1164, %640
  %1174 = fmul fast float %1165, %640
  %1175 = fmul fast float %1166, %640
  %1176 = fadd fast float %1173, %964
  %1177 = fadd fast float %1174, %965
  %1178 = fadd fast float %1175, %966
  br label %1179

; <label>:1179                                    ; preds = %1143, %963
  %1180 = phi float [ %1176, %1143 ], [ %964, %963 ]
  %1181 = phi float [ %1177, %1143 ], [ %965, %963 ]
  %1182 = phi float [ %1178, %1143 ], [ %966, %963 ]
  %1183 = phi float [ %1170, %1143 ], [ %967, %963 ]
  %1184 = phi float [ %1171, %1143 ], [ %968, %963 ]
  %1185 = phi float [ %1172, %1143 ], [ %969, %963 ]
  %1186 = fcmp fast olt float %640, 1.000000e+00
  br i1 %1186, label %1187, label %2010, !dx.controlflow.hints !123

; <label>:1187                                    ; preds = %1179
  %1188 = extractvalue %dx.types.CBufRet.f32 %596, 2
  %1189 = fadd fast float %1188, %437
  %1190 = fmul fast float %367, 3.200000e+01
  %1191 = fmul fast float %368, 3.200000e+01
  %1192 = fadd fast float %599, %1190
  %1193 = fadd fast float %600, %1191
  %1194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1195 = extractvalue %dx.types.CBufRet.f32 %1194, 0
  %1196 = extractvalue %dx.types.CBufRet.f32 %1194, 1
  %1197 = fsub fast float %1192, %1195
  %1198 = fsub fast float %1193, %1196
  %1199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1200 = extractvalue %dx.types.CBufRet.f32 %1199, 0
  %1201 = extractvalue %dx.types.CBufRet.f32 %1199, 1
  %1202 = fmul fast float %1197, %1200
  %1203 = fmul fast float %1198, %1201
  %1204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1205 = extractvalue %dx.types.CBufRet.f32 %1204, 0
  %1206 = fmul fast float %1202, %1205
  %1207 = extractvalue %dx.types.CBufRet.f32 %1204, 1
  %1208 = fadd fast float %1206, %1207
  %1209 = extractvalue %dx.types.CBufRet.f32 %1204, 2
  %1210 = fmul fast float %1209, %1203
  %1211 = extractvalue %dx.types.CBufRet.f32 %1204, 3
  %1212 = fadd fast float %1210, %1211
  %1213 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %45, float %1208, float %1212, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1214 = extractvalue %dx.types.ResRet.f32 %1213, 0
  %1215 = extractvalue %dx.types.ResRet.f32 %1213, 1
  %1216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1217 = extractvalue %dx.types.CBufRet.f32 %1216, 1
  %1218 = extractvalue %dx.types.CBufRet.f32 %1216, 0
  %1219 = fsub fast float %1217, %1218
  %1220 = fmul fast float %1219, %1214
  %1221 = fadd fast float %1220, %1218
  %1222 = extractvalue %dx.types.CBufRet.f32 %1216, 3
  %1223 = extractvalue %dx.types.CBufRet.f32 %1216, 2
  %1224 = fsub fast float %1222, %1223
  %1225 = fmul fast float %1224, %1215
  %1226 = fadd fast float %1225, %1223
  %1227 = fsub fast float %1189, %1221
  %1228 = fsub fast float %1226, %1221
  %1229 = fdiv fast float %1227, %1228
  %1230 = call float @dx.op.unary.f32(i32 7, float %1229)  ; Saturate(value)
  %1231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1232 = extractvalue %dx.types.CBufRet.f32 %1231, 0
  %1233 = fmul fast float %1232, %1230
  %1234 = extractvalue %dx.types.CBufRet.f32 %1231, 1
  %1235 = fadd fast float %1233, %1234
  %1236 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %45, float %1208, float %1212, float %1235, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1237 = extractvalue %dx.types.ResRet.f32 %1236, 0
  %1238 = extractvalue %dx.types.ResRet.f32 %1236, 1
  %1239 = extractvalue %dx.types.ResRet.f32 %1236, 2
  %1240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1241 = extractvalue %dx.types.CBufRet.f32 %1240, 0
  %1242 = extractvalue %dx.types.CBufRet.f32 %1240, 1
  %1243 = extractvalue %dx.types.CBufRet.f32 %1240, 2
  %1244 = fmul fast float %1241, %1237
  %1245 = fmul fast float %1242, %1238
  %1246 = fmul fast float %1243, %1239
  %1247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1248 = extractvalue %dx.types.CBufRet.f32 %1247, 0
  %1249 = extractvalue %dx.types.CBufRet.f32 %1247, 1
  %1250 = extractvalue %dx.types.CBufRet.f32 %1247, 2
  %1251 = fadd fast float %1244, %1248
  %1252 = fadd fast float %1245, %1249
  %1253 = fadd fast float %1246, %1250
  %1254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1255 = extractvalue %dx.types.CBufRet.f32 %1254, 0
  %1256 = fmul fast float %1255, %1202
  %1257 = extractvalue %dx.types.CBufRet.f32 %1254, 1
  %1258 = fadd fast float %1256, %1257
  %1259 = extractvalue %dx.types.CBufRet.f32 %1254, 2
  %1260 = fmul fast float %1259, %1203
  %1261 = extractvalue %dx.types.CBufRet.f32 %1254, 3
  %1262 = fadd fast float %1260, %1261
  %1263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1264 = extractvalue %dx.types.CBufRet.f32 %1263, 0
  %1265 = extractvalue %dx.types.CBufRet.f32 %1263, 1
  %1266 = extractvalue %dx.types.CBufRet.f32 %1263, 2
  %1267 = extractvalue %dx.types.CBufRet.f32 %1263, 3
  %1268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1269 = extractvalue %dx.types.CBufRet.f32 %1268, 0
  %1270 = extractvalue %dx.types.CBufRet.f32 %1268, 1
  %1271 = extractvalue %dx.types.CBufRet.f32 %1268, 2
  %1272 = extractvalue %dx.types.CBufRet.f32 %1268, 3
  %1273 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %45, float %1258, float %1262, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1274 = extractvalue %dx.types.ResRet.f32 %1273, 0
  %1275 = extractvalue %dx.types.ResRet.f32 %1273, 1
  %1276 = extractvalue %dx.types.ResRet.f32 %1273, 2
  %1277 = extractvalue %dx.types.ResRet.f32 %1273, 3
  %1278 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %45, float %1258, float %1262, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1279 = extractvalue %dx.types.ResRet.f32 %1278, 0
  %1280 = extractvalue %dx.types.ResRet.f32 %1278, 1
  %1281 = extractvalue %dx.types.ResRet.f32 %1278, 2
  %1282 = extractvalue %dx.types.ResRet.f32 %1278, 3
  %1283 = fmul fast float %1274, %1251
  %1284 = fmul fast float %1279, %1251
  %1285 = fmul fast float %1281, %1251
  %1286 = fmul fast float %1277, %1251
  %1287 = fadd fast float %1283, %1264
  %1288 = fadd fast float %1284, %1265
  %1289 = fadd fast float %1285, %1266
  %1290 = fadd fast float %1286, %1267
  %1291 = fmul fast float %1275, %1251
  %1292 = fmul fast float %1280, %1251
  %1293 = fadd fast float %1291, %1269
  %1294 = fadd fast float %1292, %1270
  %1295 = fmul fast float %1276, %1251
  %1296 = fmul fast float %1282, %1251
  %1297 = fadd fast float %1295, %1271
  %1298 = fadd fast float %1296, %1272
  %1299 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %45, float %1258, float %1262, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1300 = extractvalue %dx.types.ResRet.f32 %1299, 0
  %1301 = extractvalue %dx.types.ResRet.f32 %1299, 1
  %1302 = extractvalue %dx.types.ResRet.f32 %1299, 2
  %1303 = extractvalue %dx.types.ResRet.f32 %1299, 3
  %1304 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %45, float %1258, float %1262, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1305 = extractvalue %dx.types.ResRet.f32 %1304, 0
  %1306 = extractvalue %dx.types.ResRet.f32 %1304, 1
  %1307 = extractvalue %dx.types.ResRet.f32 %1304, 2
  %1308 = extractvalue %dx.types.ResRet.f32 %1304, 3
  %1309 = fmul fast float %1300, %1252
  %1310 = fmul fast float %1305, %1252
  %1311 = fmul fast float %1307, %1252
  %1312 = fmul fast float %1303, %1252
  %1313 = fadd fast float %1287, %1309
  %1314 = fadd fast float %1288, %1310
  %1315 = fadd fast float %1289, %1311
  %1316 = fadd fast float %1290, %1312
  %1317 = fmul fast float %1301, %1252
  %1318 = fmul fast float %1306, %1252
  %1319 = fadd fast float %1293, %1317
  %1320 = fadd fast float %1294, %1318
  %1321 = fmul fast float %1302, %1252
  %1322 = fmul fast float %1308, %1252
  %1323 = fadd fast float %1297, %1321
  %1324 = fadd fast float %1298, %1322
  %1325 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %45, float %1258, float %1262, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1326 = extractvalue %dx.types.ResRet.f32 %1325, 0
  %1327 = extractvalue %dx.types.ResRet.f32 %1325, 1
  %1328 = extractvalue %dx.types.ResRet.f32 %1325, 2
  %1329 = extractvalue %dx.types.ResRet.f32 %1325, 3
  %1330 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %45, float %1258, float %1262, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1331 = extractvalue %dx.types.ResRet.f32 %1330, 0
  %1332 = extractvalue %dx.types.ResRet.f32 %1330, 1
  %1333 = extractvalue %dx.types.ResRet.f32 %1330, 2
  %1334 = extractvalue %dx.types.ResRet.f32 %1330, 3
  %1335 = fmul fast float %1326, %1253
  %1336 = fmul fast float %1331, %1253
  %1337 = fmul fast float %1333, %1253
  %1338 = fmul fast float %1329, %1253
  %1339 = fadd fast float %1313, %1335
  %1340 = fadd fast float %1314, %1336
  %1341 = fadd fast float %1315, %1337
  %1342 = fadd fast float %1316, %1338
  %1343 = fmul fast float %1327, %1253
  %1344 = fmul fast float %1332, %1253
  %1345 = fadd fast float %1319, %1343
  %1346 = fadd fast float %1320, %1344
  %1347 = fmul fast float %1328, %1253
  %1348 = fmul fast float %1334, %1253
  %1349 = fadd fast float %1323, %1347
  %1350 = fadd fast float %1324, %1348
  %1351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1352 = extractvalue %dx.types.CBufRet.f32 %1351, 0
  %1353 = fsub fast float %599, %1352
  %1354 = fsub fast float %1195, %599
  %1355 = call float @dx.op.binary.f32(i32 35, float %1354, float %1353)  ; FMax(a,b)
  %1356 = extractvalue %dx.types.CBufRet.f32 %1351, 1
  %1357 = fsub fast float %600, %1356
  %1358 = fsub fast float %1196, %600
  %1359 = call float @dx.op.binary.f32(i32 35, float %1358, float %1357)  ; FMax(a,b)
  %1360 = call float @dx.op.binary.f32(i32 35, float %1355, float %1359)  ; FMax(a,b)
  %1361 = extractvalue %dx.types.CBufRet.f32 %1199, 3
  %1362 = fmul fast float %1361, %1360
  %1363 = call float @dx.op.unary.f32(i32 7, float %1362)  ; Saturate(value)
  %1364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1365 = extractvalue %dx.types.CBufRet.f32 %1364, 0
  %1366 = extractvalue %dx.types.CBufRet.f32 %1364, 1
  %1367 = extractvalue %dx.types.CBufRet.f32 %1364, 2
  %1368 = extractvalue %dx.types.CBufRet.f32 %1364, 3
  %1369 = fsub fast float %1365, %1339
  %1370 = fsub fast float %1366, %1340
  %1371 = fsub fast float %1367, %1341
  %1372 = fsub fast float %1368, %1342
  %1373 = fmul fast float %1369, %1363
  %1374 = fmul fast float %1370, %1363
  %1375 = fmul fast float %1371, %1363
  %1376 = fmul fast float %1372, %1363
  %1377 = fadd fast float %1373, %1339
  %1378 = fadd fast float %1374, %1340
  %1379 = fadd fast float %1375, %1341
  %1380 = fadd fast float %1376, %1342
  %1381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1382 = extractvalue %dx.types.CBufRet.f32 %1381, 0
  %1383 = extractvalue %dx.types.CBufRet.f32 %1381, 1
  %1384 = fsub fast float %1382, %1345
  %1385 = fsub fast float %1383, %1346
  %1386 = fmul fast float %1384, %1363
  %1387 = fmul fast float %1385, %1363
  %1388 = fadd fast float %1386, %1345
  %1389 = fadd fast float %1387, %1346
  %1390 = extractvalue %dx.types.CBufRet.f32 %1381, 2
  %1391 = extractvalue %dx.types.CBufRet.f32 %1381, 3
  %1392 = fsub fast float %1390, %1349
  %1393 = fsub fast float %1391, %1350
  %1394 = fmul fast float %1392, %1363
  %1395 = fmul fast float %1393, %1363
  %1396 = fadd fast float %1394, %1349
  %1397 = fadd fast float %1395, %1350
  %1398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1399 = extractvalue %dx.types.CBufRet.f32 %1398, 0
  %1400 = fmul fast float %1399, %1377
  %1401 = fmul fast float %1399, %1378
  %1402 = fmul fast float %1399, %1379
  %1403 = fmul fast float %1399, %1380
  %1404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1405 = extractvalue %dx.types.CBufRet.f32 %1404, 0
  %1406 = fmul fast float %1405, %1388
  %1407 = fmul fast float %1405, %1389
  %1408 = fadd fast float %1406, %1400
  %1409 = fadd fast float %1407, %1402
  %1410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1411 = extractvalue %dx.types.CBufRet.f32 %1410, 0
  %1412 = fmul fast float %1411, %1396
  %1413 = fmul fast float %1411, %1397
  %1414 = fadd fast float %1408, %1412
  %1415 = fadd fast float %1409, %1413
  %1416 = extractvalue %dx.types.CBufRet.f32 %1398, 1
  %1417 = fmul fast float %1416, %1377
  %1418 = fmul fast float %1416, %1378
  %1419 = fmul fast float %1416, %1379
  %1420 = fmul fast float %1416, %1380
  %1421 = extractvalue %dx.types.CBufRet.f32 %1404, 1
  %1422 = fmul fast float %1421, %1388
  %1423 = fmul fast float %1421, %1389
  %1424 = fadd fast float %1422, %1417
  %1425 = fadd fast float %1423, %1419
  %1426 = extractvalue %dx.types.CBufRet.f32 %1410, 1
  %1427 = fmul fast float %1426, %1396
  %1428 = fmul fast float %1426, %1397
  %1429 = fadd fast float %1424, %1427
  %1430 = fadd fast float %1425, %1428
  %1431 = extractvalue %dx.types.CBufRet.f32 %1398, 2
  %1432 = fmul fast float %1431, %1377
  %1433 = fmul fast float %1431, %1378
  %1434 = fmul fast float %1431, %1379
  %1435 = fmul fast float %1431, %1380
  %1436 = extractvalue %dx.types.CBufRet.f32 %1404, 2
  %1437 = fmul fast float %1436, %1388
  %1438 = fmul fast float %1436, %1389
  %1439 = fadd fast float %1437, %1432
  %1440 = fadd fast float %1438, %1434
  %1441 = extractvalue %dx.types.CBufRet.f32 %1410, 2
  %1442 = fmul fast float %1441, %1396
  %1443 = fmul fast float %1441, %1397
  %1444 = fadd fast float %1439, %1442
  %1445 = fadd fast float %1440, %1443
  %1446 = fmul fast float %1433, %1433
  %1447 = fmul fast float %1445, %1445
  %1448 = fmul fast float %1435, %1435
  %1449 = fadd fast float %1448, %1446
  %1450 = fadd fast float %1449, %1447
  %1451 = call float @dx.op.unary.f32(i32 24, float %1450)  ; Sqrt(value)
  %1452 = fcmp fast ugt float %1451, 0.000000e+00
  br i1 %1452, label %1453, label %1468

; <label>:1453                                    ; preds = %1187
  %1454 = fsub fast float -0.000000e+00, %1435
  %1455 = fdiv fast float %1454, %1451
  %1456 = fsub fast float -0.000000e+00, %1433
  %1457 = fdiv fast float %1456, %1451
  %1458 = fdiv fast float %1445, %1451
  %1459 = fmul fast float %1444, 0x3FE279A760000000
  %1460 = fmul fast float %1457, %1433
  %1461 = fmul fast float %1458, %1445
  %1462 = fmul fast float %1455, %1435
  %1463 = fadd fast float %1460, %1462
  %1464 = fsub fast float %1463, %1461
  %1465 = call float @dx.op.unary.f32(i32 6, float %1464)  ; FAbs(value)
  %1466 = fadd fast float %1465, 0x3DDB7CDFE0000000
  %1467 = fdiv fast float %1459, %1466
  br label %1468

; <label>:1468                                    ; preds = %1453, %1187
  %1469 = phi float [ %1467, %1453 ], [ 1.000000e+00, %1187 ]
  %1470 = fmul fast float %1418, %1418
  %1471 = fmul fast float %1430, %1430
  %1472 = fmul fast float %1420, %1420
  %1473 = fadd fast float %1472, %1470
  %1474 = fadd fast float %1473, %1471
  %1475 = call float @dx.op.unary.f32(i32 24, float %1474)  ; Sqrt(value)
  %1476 = fcmp fast ugt float %1475, 0.000000e+00
  br i1 %1476, label %1477, label %1492

; <label>:1477                                    ; preds = %1468
  %1478 = fsub fast float -0.000000e+00, %1420
  %1479 = fdiv fast float %1478, %1475
  %1480 = fsub fast float -0.000000e+00, %1418
  %1481 = fdiv fast float %1480, %1475
  %1482 = fdiv fast float %1430, %1475
  %1483 = fmul fast float %1429, 0x3FE279A760000000
  %1484 = fmul fast float %1481, %1418
  %1485 = fmul fast float %1482, %1430
  %1486 = fmul fast float %1479, %1420
  %1487 = fadd fast float %1484, %1486
  %1488 = fsub fast float %1487, %1485
  %1489 = call float @dx.op.unary.f32(i32 6, float %1488)  ; FAbs(value)
  %1490 = fadd fast float %1489, 0x3DDB7CDFE0000000
  %1491 = fdiv fast float %1483, %1490
  br label %1492

; <label>:1492                                    ; preds = %1477, %1468
  %1493 = phi float [ %1491, %1477 ], [ 1.000000e+00, %1468 ]
  %1494 = call float @dx.op.binary.f32(i32 36, float %1493, float %1469)  ; FMin(a,b)
  %1495 = fmul fast float %1401, %1401
  %1496 = fmul fast float %1415, %1415
  %1497 = fmul fast float %1403, %1403
  %1498 = fadd fast float %1497, %1495
  %1499 = fadd fast float %1498, %1496
  %1500 = call float @dx.op.unary.f32(i32 24, float %1499)  ; Sqrt(value)
  %1501 = fcmp fast ugt float %1500, 0.000000e+00
  br i1 %1501, label %1502, label %1517

; <label>:1502                                    ; preds = %1492
  %1503 = fsub fast float -0.000000e+00, %1403
  %1504 = fdiv fast float %1503, %1500
  %1505 = fsub fast float -0.000000e+00, %1401
  %1506 = fdiv fast float %1505, %1500
  %1507 = fdiv fast float %1415, %1500
  %1508 = fmul fast float %1414, 0x3FE279A760000000
  %1509 = fmul fast float %1506, %1401
  %1510 = fmul fast float %1507, %1415
  %1511 = fmul fast float %1504, %1403
  %1512 = fadd fast float %1509, %1511
  %1513 = fsub fast float %1512, %1510
  %1514 = call float @dx.op.unary.f32(i32 6, float %1513)  ; FAbs(value)
  %1515 = fadd fast float %1514, 0x3DDB7CDFE0000000
  %1516 = fdiv fast float %1508, %1515
  br label %1517

; <label>:1517                                    ; preds = %1502, %1492
  %1518 = phi float [ %1516, %1502 ], [ 1.000000e+00, %1492 ]
  %1519 = call float @dx.op.binary.f32(i32 36, float %1518, float %1494)  ; FMin(a,b)
  %1520 = call float @dx.op.unary.f32(i32 7, float %1519)  ; Saturate(value)
  %1521 = fcmp fast olt float %1520, 1.000000e+00
  br i1 %1521, label %1522, label %1532

; <label>:1522                                    ; preds = %1517
  %1523 = fmul fast float %1520, %1401
  %1524 = fmul fast float %1520, %1415
  %1525 = fmul fast float %1520, %1403
  %1526 = fmul fast float %1520, %1418
  %1527 = fmul fast float %1520, %1430
  %1528 = fmul fast float %1520, %1420
  %1529 = fmul fast float %1520, %1433
  %1530 = fmul fast float %1520, %1445
  %1531 = fmul fast float %1520, %1435
  br label %1532

; <label>:1532                                    ; preds = %1522, %1517
  %1533 = phi float [ %1529, %1522 ], [ %1433, %1517 ]
  %1534 = phi float [ %1530, %1522 ], [ %1445, %1517 ]
  %1535 = phi float [ %1531, %1522 ], [ %1435, %1517 ]
  %1536 = phi float [ %1526, %1522 ], [ %1418, %1517 ]
  %1537 = phi float [ %1527, %1522 ], [ %1430, %1517 ]
  %1538 = phi float [ %1528, %1522 ], [ %1420, %1517 ]
  %1539 = phi float [ %1523, %1522 ], [ %1401, %1517 ]
  %1540 = phi float [ %1524, %1522 ], [ %1415, %1517 ]
  %1541 = phi float [ %1525, %1522 ], [ %1403, %1517 ]
  %1542 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1414)  ; FMax(a,b)
  %1543 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1429)  ; FMax(a,b)
  %1544 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1444)  ; FMax(a,b)
  %1545 = fcmp fast oge float %1202, 0.000000e+00
  %1546 = and i1 %1545, %973
  %1547 = fcmp fast ole float %1202, 1.000000e+00
  %1548 = and i1 %1547, %1546
  %1549 = fcmp fast oge float %1203, 0.000000e+00
  %1550 = and i1 %1549, %1548
  %1551 = fcmp fast ole float %1203, 1.000000e+00
  %1552 = and i1 %1551, %1550
  br i1 %1552, label %1553, label %1698, !dx.controlflow.hints !124

; <label>:1553                                    ; preds = %1532
  %1554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1555 = extractvalue %dx.types.CBufRet.f32 %1554, 2
  %1556 = extractvalue %dx.types.CBufRet.f32 %1554, 3
  %1557 = fmul fast float %1555, %1202
  %1558 = fmul fast float %1556, %1203
  %1559 = call float @dx.op.unary.f32(i32 27, float %1557)  ; Round_ni(value)
  %1560 = call float @dx.op.unary.f32(i32 27, float %1558)  ; Round_ni(value)
  %1561 = fptosi float %1559 to i32
  %1562 = fptosi float %1560 to i32
  %1563 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %29, i32 0, i32 %1561, i32 %1562, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1564 = extractvalue %dx.types.ResRet.i32 %1563, 0
  %1565 = and i32 %1564, 65535
  %1566 = lshr i32 %1564, 16
  %1567 = icmp eq i32 %1565, 65535
  br i1 %1567, label %1604, label %1568

; <label>:1568                                    ; preds = %1553
  %1569 = extractvalue %dx.types.CBufRet.f32 %971, 1
  %1570 = extractvalue %dx.types.CBufRet.f32 %1554, 0
  %1571 = extractvalue %dx.types.CBufRet.f32 %1554, 1
  %1572 = fmul fast float %1570, %1202
  %1573 = fmul fast float %1571, %1203
  %1574 = fmul fast float %1572, 1.250000e-01
  %1575 = fmul fast float %1573, 1.250000e-01
  %1576 = call float @dx.op.unary.f32(i32 27, float %1574)  ; Round_ni(value)
  %1577 = call float @dx.op.unary.f32(i32 27, float %1575)  ; Round_ni(value)
  %1578 = fmul fast float %1576, 8.000000e+00
  %1579 = fmul fast float %1577, 8.000000e+00
  %1580 = and i32 %1564, 255
  %1581 = lshr i32 %1564, 8
  %1582 = and i32 %1581, 255
  %1583 = mul nuw nsw i32 %1580, 9
  %1584 = uitofp i32 %1583 to float
  %1585 = mul nuw nsw i32 %1582, 9
  %1586 = uitofp i32 %1585 to float
  %1587 = fadd fast float %1584, 5.000000e-01
  %1588 = fadd fast float %1587, %1572
  %1589 = fsub fast float %1588, %1578
  %1590 = fadd fast float %1586, 5.000000e-01
  %1591 = fadd fast float %1590, %1573
  %1592 = fsub fast float %1591, %1579
  %1593 = fdiv fast float %1589, %972
  %1594 = fdiv fast float %1592, %1569
  %1595 = fmul fast float %1230, 4.375000e-01
  %1596 = fadd fast float %1595, 3.125000e-02
  %1597 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %45, float %1593, float %1594, float %1596, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1598 = extractvalue %dx.types.ResRet.f32 %1597, 0
  %1599 = extractvalue %dx.types.ResRet.f32 %1597, 1
  %1600 = extractvalue %dx.types.ResRet.f32 %1597, 2
  %1601 = fadd fast float %1598, %1542
  %1602 = fadd fast float %1599, %1543
  %1603 = fadd fast float %1600, %1544
  br label %1604

; <label>:1604                                    ; preds = %1568, %1553
  %1605 = phi float [ %1603, %1568 ], [ %1544, %1553 ]
  %1606 = phi float [ %1602, %1568 ], [ %1543, %1553 ]
  %1607 = phi float [ %1601, %1568 ], [ %1542, %1553 ]
  %1608 = icmp eq i32 %1566, 65535
  br i1 %1608, label %1698, label %1609

; <label>:1609                                    ; preds = %1604
  %1610 = extractvalue %dx.types.CBufRet.f32 %971, 1
  %1611 = extractvalue %dx.types.CBufRet.f32 %1554, 0
  %1612 = extractvalue %dx.types.CBufRet.f32 %1554, 1
  %1613 = fmul fast float %1611, %1202
  %1614 = fmul fast float %1612, %1203
  %1615 = fmul fast float %1613, 1.250000e-01
  %1616 = fmul fast float %1614, 1.250000e-01
  %1617 = call float @dx.op.unary.f32(i32 27, float %1615)  ; Round_ni(value)
  %1618 = call float @dx.op.unary.f32(i32 27, float %1616)  ; Round_ni(value)
  %1619 = fmul fast float %1617, 8.000000e+00
  %1620 = fmul fast float %1618, 8.000000e+00
  %1621 = fsub fast float %1613, %1619
  %1622 = fsub fast float %1614, %1620
  %1623 = fadd fast float %1621, 5.000000e-01
  %1624 = fadd fast float %1622, 5.000000e-01
  %1625 = and i32 %1566, 255
  %1626 = lshr i32 %1564, 24
  %1627 = mul nuw nsw i32 %1625, 9
  %1628 = uitofp i32 %1627 to float
  %1629 = mul nuw nsw i32 %1626, 9
  %1630 = uitofp i32 %1629 to float
  %1631 = fadd fast float %1623, %1628
  %1632 = fadd fast float %1624, %1630
  %1633 = fdiv fast float %1631, %972
  %1634 = fdiv fast float %1632, %1610
  %1635 = fmul fast float %1230, 4.375000e-01
  %1636 = fadd fast float %1635, 3.125000e-02
  %1637 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %45, float %1633, float %1634, float %1636, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1638 = extractvalue %dx.types.ResRet.f32 %1637, 0
  %1639 = extractvalue %dx.types.ResRet.f32 %1637, 1
  %1640 = extractvalue %dx.types.ResRet.f32 %1637, 2
  %1641 = fadd fast float %1635, 5.312500e-01
  %1642 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %45, float %1633, float %1634, float %1641, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1643 = extractvalue %dx.types.ResRet.f32 %1642, 0
  %1644 = extractvalue %dx.types.ResRet.f32 %1642, 1
  %1645 = extractvalue %dx.types.ResRet.f32 %1642, 2
  %1646 = fmul fast float %1643, 2.000000e+00
  %1647 = fmul fast float %1644, 2.000000e+00
  %1648 = fmul fast float %1645, 2.000000e+00
  %1649 = fadd fast float %1646, -1.000000e+00
  %1650 = fadd fast float %1647, -1.000000e+00
  %1651 = fadd fast float %1648, -1.000000e+00
  %1652 = fmul fast float %1649, %1649
  %1653 = fmul fast float %1650, %1650
  %1654 = fadd fast float %1652, %1653
  %1655 = fmul fast float %1651, %1651
  %1656 = fadd fast float %1654, %1655
  %1657 = call float @dx.op.unary.f32(i32 24, float %1656)  ; Sqrt(value)
  %1658 = fcmp fast ogt float %1657, 0.000000e+00
  br i1 %1658, label %1659, label %1663

; <label>:1659                                    ; preds = %1609
  %1660 = fdiv fast float %1649, %1657
  %1661 = fdiv fast float %1650, %1657
  %1662 = fdiv fast float %1651, %1657
  br label %1663

; <label>:1663                                    ; preds = %1659, %1609
  %1664 = phi float [ %1660, %1659 ], [ 0.000000e+00, %1609 ]
  %1665 = phi float [ %1661, %1659 ], [ 0.000000e+00, %1609 ]
  %1666 = phi float [ %1662, %1659 ], [ 0.000000e+00, %1609 ]
  %1667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1668 = extractvalue %dx.types.CBufRet.f32 %1667, 0
  %1669 = extractvalue %dx.types.CBufRet.f32 %1667, 1
  %1670 = fsub fast float %599, %1668
  %1671 = fsub fast float %600, %1669
  %1672 = fmul fast float %1670, %1670
  %1673 = fmul fast float %1671, %1671
  %1674 = fadd fast float %1672, %1673
  %1675 = call float @dx.op.unary.f32(i32 24, float %1674)  ; Sqrt(value)
  %1676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1677 = extractvalue %dx.types.CBufRet.f32 %1676, 0
  %1678 = extractvalue %dx.types.CBufRet.f32 %1676, 1
  %1679 = fsub fast float %1675, %1677
  %1680 = fdiv fast float %1679, %1678
  %1681 = call float @dx.op.unary.f32(i32 7, float %1680)  ; Saturate(value)
  %1682 = fmul fast float %1681, 2.000000e+00
  %1683 = fsub fast float 3.000000e+00, %1682
  %1684 = fmul fast float %1681, %1681
  %1685 = fmul fast float %1684, %1683
  %1686 = call float @dx.op.dot3.f32(i32 55, float %1664, float %1665, float %1666, float %367, float %368, float %369)  ; Dot3(ax,ay,az,bx,by,bz)
  %1687 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1686)  ; FMax(a,b)
  %1688 = fmul fast float %1687, 0x400C5BF8A0000000
  %1689 = fmul fast float %1685, %1638
  %1690 = fmul fast float %1689, %1688
  %1691 = fadd fast float %1690, %1607
  %1692 = fmul fast float %1685, %1639
  %1693 = fmul fast float %1692, %1688
  %1694 = fadd fast float %1693, %1606
  %1695 = fmul fast float %1685, %1640
  %1696 = fmul fast float %1695, %1688
  %1697 = fadd fast float %1696, %1605
  br label %1698

; <label>:1698                                    ; preds = %1663, %1604, %1532
  %1699 = phi float [ %1697, %1663 ], [ %1605, %1604 ], [ %1544, %1532 ]
  %1700 = phi float [ %1694, %1663 ], [ %1606, %1604 ], [ %1543, %1532 ]
  %1701 = phi float [ %1691, %1663 ], [ %1607, %1604 ], [ %1542, %1532 ]
  %1702 = fcmp fast ogt float %1189, %1226
  %1703 = and i1 %1545, %1702
  %1704 = and i1 %1547, %1703
  %1705 = and i1 %1549, %1704
  %1706 = and i1 %1551, %1705
  br i1 %1706, label %1707, label %1764, !dx.controlflow.hints !125

; <label>:1707                                    ; preds = %1698
  %1708 = fmul fast float %1228, 0x3FC24924A0000000
  %1709 = fsub fast float %1189, %1226
  %1710 = fdiv fast float %1709, %1708
  %1711 = call float @dx.op.unary.f32(i32 7, float %1710)  ; Saturate(value)
  %1712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1713 = extractvalue %dx.types.CBufRet.f32 %1712, 0
  %1714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1715 = extractvalue %dx.types.CBufRet.f32 %1714, 0
  %1716 = extractvalue %dx.types.CBufRet.f32 %1714, 1
  %1717 = extractvalue %dx.types.CBufRet.f32 %1714, 2
  %1718 = fsub fast float %1713, %1701
  %1719 = fsub fast float %1715, %1539
  %1720 = fsub fast float %1716, %1540
  %1721 = fsub fast float %1717, %1541
  %1722 = fmul fast float %1718, %1711
  %1723 = fmul fast float %1719, %1711
  %1724 = fmul fast float %1720, %1711
  %1725 = fmul fast float %1721, %1711
  %1726 = fadd fast float %1722, %1701
  %1727 = fadd fast float %1723, %1539
  %1728 = fadd fast float %1724, %1540
  %1729 = fadd fast float %1725, %1541
  %1730 = extractvalue %dx.types.CBufRet.f32 %1712, 1
  %1731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1732 = extractvalue %dx.types.CBufRet.f32 %1731, 0
  %1733 = extractvalue %dx.types.CBufRet.f32 %1731, 1
  %1734 = extractvalue %dx.types.CBufRet.f32 %1731, 2
  %1735 = fsub fast float %1730, %1700
  %1736 = fsub fast float %1732, %1536
  %1737 = fsub fast float %1733, %1537
  %1738 = fsub fast float %1734, %1538
  %1739 = fmul fast float %1735, %1711
  %1740 = fmul fast float %1736, %1711
  %1741 = fmul fast float %1737, %1711
  %1742 = fmul fast float %1738, %1711
  %1743 = fadd fast float %1739, %1700
  %1744 = fadd fast float %1740, %1536
  %1745 = fadd fast float %1741, %1537
  %1746 = fadd fast float %1742, %1538
  %1747 = extractvalue %dx.types.CBufRet.f32 %1712, 2
  %1748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1749 = extractvalue %dx.types.CBufRet.f32 %1748, 0
  %1750 = extractvalue %dx.types.CBufRet.f32 %1748, 1
  %1751 = extractvalue %dx.types.CBufRet.f32 %1748, 2
  %1752 = fsub fast float %1747, %1699
  %1753 = fsub fast float %1749, %1533
  %1754 = fsub fast float %1750, %1534
  %1755 = fsub fast float %1751, %1535
  %1756 = fmul fast float %1752, %1711
  %1757 = fmul fast float %1753, %1711
  %1758 = fmul fast float %1754, %1711
  %1759 = fmul fast float %1755, %1711
  %1760 = fadd fast float %1756, %1699
  %1761 = fadd fast float %1757, %1533
  %1762 = fadd fast float %1758, %1534
  %1763 = fadd fast float %1759, %1535
  br label %1764

; <label>:1764                                    ; preds = %1707, %1698
  %1765 = phi float [ %1760, %1707 ], [ %1699, %1698 ]
  %1766 = phi float [ %1761, %1707 ], [ %1533, %1698 ]
  %1767 = phi float [ %1762, %1707 ], [ %1534, %1698 ]
  %1768 = phi float [ %1763, %1707 ], [ %1535, %1698 ]
  %1769 = phi float [ %1743, %1707 ], [ %1700, %1698 ]
  %1770 = phi float [ %1744, %1707 ], [ %1536, %1698 ]
  %1771 = phi float [ %1745, %1707 ], [ %1537, %1698 ]
  %1772 = phi float [ %1746, %1707 ], [ %1538, %1698 ]
  %1773 = phi float [ %1726, %1707 ], [ %1701, %1698 ]
  %1774 = phi float [ %1727, %1707 ], [ %1539, %1698 ]
  %1775 = phi float [ %1728, %1707 ], [ %1540, %1698 ]
  %1776 = phi float [ %1729, %1707 ], [ %1541, %1698 ]
  %1777 = extractvalue %dx.types.CBufRet.f32 %1351, 3
  %1778 = fmul fast float %1777, %1773
  %1779 = fmul fast float %1777, %1769
  %1780 = fmul fast float %1777, %1765
  %1781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1782 = extractvalue %dx.types.CBufRet.f32 %1781, 3
  %1783 = fmul fast float %1778, %1782
  %1784 = fmul fast float %1779, %1782
  %1785 = fmul fast float %1780, %1782
  %1786 = call float @dx.op.dot3.f32(i32 55, float %1783, float %1784, float %1785, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1787 = fmul fast float %1786, 0x3FD20DD760000000
  %1788 = fmul fast float %1774, 1.500000e+00
  %1789 = fmul fast float %1788, %1777
  %1790 = fmul fast float %1789, %1782
  %1791 = fmul fast float %1775, 1.500000e+00
  %1792 = fmul fast float %1791, %1777
  %1793 = fmul fast float %1792, %1782
  %1794 = fmul fast float %1776, 1.500000e+00
  %1795 = fmul fast float %1794, %1777
  %1796 = fmul fast float %1795, %1782
  %1797 = fmul fast float %1770, 1.500000e+00
  %1798 = fmul fast float %1797, %1777
  %1799 = fmul fast float %1798, %1782
  %1800 = fmul fast float %1771, 1.500000e+00
  %1801 = fmul fast float %1800, %1777
  %1802 = fmul fast float %1801, %1782
  %1803 = fmul fast float %1772, 1.500000e+00
  %1804 = fmul fast float %1803, %1777
  %1805 = fmul fast float %1804, %1782
  %1806 = fmul fast float %1766, 1.500000e+00
  %1807 = fmul fast float %1806, %1777
  %1808 = fmul fast float %1807, %1782
  %1809 = fmul fast float %1767, 1.500000e+00
  %1810 = fmul fast float %1809, %1777
  %1811 = fmul fast float %1810, %1782
  %1812 = fmul fast float %1768, 1.500000e+00
  %1813 = fmul fast float %1812, %1777
  %1814 = fmul fast float %1813, %1782
  %1815 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1783)  ; FMax(a,b)
  %1816 = call float @dx.op.dot3.f32(i32 55, float %1790, float %1793, float %1796, float %1790, float %1793, float %1796)  ; Dot3(ax,ay,az,bx,by,bz)
  %1817 = fcmp fast oeq float %1816, 0.000000e+00
  %1818 = fcmp fast oeq float %1815, 0.000000e+00
  %1819 = or i1 %1818, %1817
  br i1 %1819, label %1849, label %1820

; <label>:1820                                    ; preds = %1764
  %1821 = fsub fast float -0.000000e+00, %1796
  %1822 = fsub fast float -0.000000e+00, %1790
  %1823 = call float @dx.op.unary.f32(i32 24, float %1816)  ; Sqrt(value)
  %1824 = fdiv fast float %1823, %1815
  %1825 = fcmp fast ogt float %1824, 0x3FFB6F8900000000
  %1826 = select i1 %1825, float 0x3FFB6F8900000000, float %1824
  %1827 = fmul fast float %1826, 0x3FE8A23460000000
  %1828 = call float @dx.op.unary.f32(i32 7, float %1827)  ; Saturate(value)
  %1829 = call float @dx.op.binary.f32(i32 35, float %1826, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1830 = fmul fast float %1828, %1815
  %1831 = fmul fast float %1829, 0x3FF279A740000000
  %1832 = fadd fast float %1831, -1.000000e+00
  %1833 = call float @dx.op.dot3.f32(i32 55, float %1821, float %1822, float %1793, float %1821, float %1822, float %1793)  ; Dot3(ax,ay,az,bx,by,bz)
  %1834 = call float @dx.op.unary.f32(i32 25, float %1833)  ; Rsqrt(value)
  %1835 = fmul fast float %1834, %1821
  %1836 = fmul fast float %1834, %1822
  %1837 = fmul fast float %1834, %1793
  %1838 = fmul fast float %1832, %1832
  %1839 = fsub fast float 1.000000e+00, %1838
  %1840 = fmul fast float %1829, 0x40005F8BE0000000
  %1841 = fsub fast float 0x400C5BF8A0000000, %1840
  %1842 = fdiv fast float %1830, %1841
  %1843 = fmul fast float %1842, 0x3FEE31C3C0000000
  %1844 = fmul fast float %1843, %1839
  %1845 = fmul fast float %1829, 0x3FDACB7480000000
  %1846 = fadd fast float %1845, 0xBFD7347680000000
  %1847 = fmul fast float %1846, %1842
  %1848 = fmul fast float %1847, %1839
  br label %1849

; <label>:1849                                    ; preds = %1820, %1764
  %1850 = phi float [ %1835, %1820 ], [ 0.000000e+00, %1764 ]
  %1851 = phi float [ %1836, %1820 ], [ 0.000000e+00, %1764 ]
  %1852 = phi float [ %1837, %1820 ], [ 0.000000e+00, %1764 ]
  %1853 = phi float [ %1844, %1820 ], [ 0.000000e+00, %1764 ]
  %1854 = phi float [ %1848, %1820 ], [ 0.000000e+00, %1764 ]
  %1855 = call float @dx.op.dot3.f32(i32 55, float %1850, float %1851, float %1852, float %367, float %368, float %369)  ; Dot3(ax,ay,az,bx,by,bz)
  %1856 = fmul fast float %1855, %1855
  %1857 = fmul fast float %1856, 0x3FEE471020000000
  %1858 = fadd fast float %1857, 0xBFD42F6020000000
  %1859 = fmul fast float %1815, 0x3FD20DD760000000
  %1860 = fmul fast float %1858, %1854
  %1861 = fmul fast float %1853, 0x3FDF454380000000
  %1862 = fmul fast float %1861, %1855
  %1863 = fadd fast float %1862, %1859
  %1864 = fadd fast float %1863, %1860
  %1865 = call float @dx.op.dot3.f32(i32 55, float %1850, float %1851, float %1852, float %586, float %587, float %588)  ; Dot3(ax,ay,az,bx,by,bz)
  %1866 = fmul fast float %1865, 0x3FDF454380000000
  %1867 = fmul fast float %1865, %1865
  %1868 = fmul fast float %1867, 0x3FEE471020000000
  %1869 = fadd fast float %1868, 0xBFD42F6020000000
  %1870 = call float @dx.op.dot3.f32(i32 55, float %1815, float %1853, float %1854, float 0x3FD20DD760000000, float %1866, float %1869)  ; Dot3(ax,ay,az,bx,by,bz)
  %1871 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1784)  ; FMax(a,b)
  %1872 = call float @dx.op.dot3.f32(i32 55, float %1799, float %1802, float %1805, float %1799, float %1802, float %1805)  ; Dot3(ax,ay,az,bx,by,bz)
  %1873 = fcmp fast oeq float %1872, 0.000000e+00
  %1874 = fcmp fast oeq float %1871, 0.000000e+00
  %1875 = or i1 %1874, %1873
  br i1 %1875, label %1905, label %1876

; <label>:1876                                    ; preds = %1849
  %1877 = fsub fast float -0.000000e+00, %1805
  %1878 = fsub fast float -0.000000e+00, %1799
  %1879 = call float @dx.op.unary.f32(i32 24, float %1872)  ; Sqrt(value)
  %1880 = fdiv fast float %1879, %1871
  %1881 = fcmp fast ogt float %1880, 0x3FFB6F8900000000
  %1882 = select i1 %1881, float 0x3FFB6F8900000000, float %1880
  %1883 = fmul fast float %1882, 0x3FE8A23460000000
  %1884 = call float @dx.op.unary.f32(i32 7, float %1883)  ; Saturate(value)
  %1885 = call float @dx.op.binary.f32(i32 35, float %1882, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1886 = fmul fast float %1884, %1871
  %1887 = fmul fast float %1885, 0x3FF279A740000000
  %1888 = fadd fast float %1887, -1.000000e+00
  %1889 = call float @dx.op.dot3.f32(i32 55, float %1877, float %1878, float %1802, float %1877, float %1878, float %1802)  ; Dot3(ax,ay,az,bx,by,bz)
  %1890 = call float @dx.op.unary.f32(i32 25, float %1889)  ; Rsqrt(value)
  %1891 = fmul fast float %1890, %1877
  %1892 = fmul fast float %1890, %1878
  %1893 = fmul fast float %1890, %1802
  %1894 = fmul fast float %1888, %1888
  %1895 = fsub fast float 1.000000e+00, %1894
  %1896 = fmul fast float %1885, 0x40005F8BE0000000
  %1897 = fsub fast float 0x400C5BF8A0000000, %1896
  %1898 = fdiv fast float %1886, %1897
  %1899 = fmul fast float %1898, 0x3FEE31C3C0000000
  %1900 = fmul fast float %1899, %1895
  %1901 = fmul fast float %1885, 0x3FDACB7480000000
  %1902 = fadd fast float %1901, 0xBFD7347680000000
  %1903 = fmul fast float %1902, %1898
  %1904 = fmul fast float %1903, %1895
  br label %1905

; <label>:1905                                    ; preds = %1876, %1849
  %1906 = phi float [ %1891, %1876 ], [ 0.000000e+00, %1849 ]
  %1907 = phi float [ %1892, %1876 ], [ 0.000000e+00, %1849 ]
  %1908 = phi float [ %1893, %1876 ], [ 0.000000e+00, %1849 ]
  %1909 = phi float [ %1900, %1876 ], [ 0.000000e+00, %1849 ]
  %1910 = phi float [ %1904, %1876 ], [ 0.000000e+00, %1849 ]
  %1911 = call float @dx.op.dot3.f32(i32 55, float %1906, float %1907, float %1908, float %367, float %368, float %369)  ; Dot3(ax,ay,az,bx,by,bz)
  %1912 = fmul fast float %1911, %1911
  %1913 = fmul fast float %1912, 0x3FEE471020000000
  %1914 = fadd fast float %1913, 0xBFD42F6020000000
  %1915 = fmul fast float %1871, 0x3FD20DD760000000
  %1916 = fmul fast float %1914, %1910
  %1917 = fmul fast float %1909, 0x3FDF454380000000
  %1918 = fmul fast float %1917, %1911
  %1919 = fadd fast float %1918, %1915
  %1920 = fadd fast float %1919, %1916
  %1921 = call float @dx.op.dot3.f32(i32 55, float %1906, float %1907, float %1908, float %586, float %587, float %588)  ; Dot3(ax,ay,az,bx,by,bz)
  %1922 = fmul fast float %1921, 0x3FDF454380000000
  %1923 = fmul fast float %1921, %1921
  %1924 = fmul fast float %1923, 0x3FEE471020000000
  %1925 = fadd fast float %1924, 0xBFD42F6020000000
  %1926 = call float @dx.op.dot3.f32(i32 55, float %1871, float %1909, float %1910, float 0x3FD20DD760000000, float %1922, float %1925)  ; Dot3(ax,ay,az,bx,by,bz)
  %1927 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1785)  ; FMax(a,b)
  %1928 = call float @dx.op.dot3.f32(i32 55, float %1808, float %1811, float %1814, float %1808, float %1811, float %1814)  ; Dot3(ax,ay,az,bx,by,bz)
  %1929 = fcmp fast oeq float %1928, 0.000000e+00
  %1930 = fcmp fast oeq float %1927, 0.000000e+00
  %1931 = or i1 %1930, %1929
  br i1 %1931, label %1961, label %1932

; <label>:1932                                    ; preds = %1905
  %1933 = fsub fast float -0.000000e+00, %1814
  %1934 = fsub fast float -0.000000e+00, %1808
  %1935 = call float @dx.op.unary.f32(i32 24, float %1928)  ; Sqrt(value)
  %1936 = fdiv fast float %1935, %1927
  %1937 = fcmp fast ogt float %1936, 0x3FFB6F8900000000
  %1938 = select i1 %1937, float 0x3FFB6F8900000000, float %1936
  %1939 = fmul fast float %1938, 0x3FE8A23460000000
  %1940 = call float @dx.op.unary.f32(i32 7, float %1939)  ; Saturate(value)
  %1941 = call float @dx.op.binary.f32(i32 35, float %1938, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1942 = fmul fast float %1940, %1927
  %1943 = fmul fast float %1941, 0x3FF279A740000000
  %1944 = fadd fast float %1943, -1.000000e+00
  %1945 = call float @dx.op.dot3.f32(i32 55, float %1933, float %1934, float %1811, float %1933, float %1934, float %1811)  ; Dot3(ax,ay,az,bx,by,bz)
  %1946 = call float @dx.op.unary.f32(i32 25, float %1945)  ; Rsqrt(value)
  %1947 = fmul fast float %1946, %1933
  %1948 = fmul fast float %1946, %1934
  %1949 = fmul fast float %1946, %1811
  %1950 = fmul fast float %1944, %1944
  %1951 = fsub fast float 1.000000e+00, %1950
  %1952 = fmul fast float %1941, 0x40005F8BE0000000
  %1953 = fsub fast float 0x400C5BF8A0000000, %1952
  %1954 = fdiv fast float %1942, %1953
  %1955 = fmul fast float %1954, 0x3FEE31C3C0000000
  %1956 = fmul fast float %1955, %1951
  %1957 = fmul fast float %1941, 0x3FDACB7480000000
  %1958 = fadd fast float %1957, 0xBFD7347680000000
  %1959 = fmul fast float %1958, %1954
  %1960 = fmul fast float %1959, %1951
  br label %1961

; <label>:1961                                    ; preds = %1932, %1905
  %1962 = phi float [ %1947, %1932 ], [ 0.000000e+00, %1905 ]
  %1963 = phi float [ %1948, %1932 ], [ 0.000000e+00, %1905 ]
  %1964 = phi float [ %1949, %1932 ], [ 0.000000e+00, %1905 ]
  %1965 = phi float [ %1956, %1932 ], [ 0.000000e+00, %1905 ]
  %1966 = phi float [ %1960, %1932 ], [ 0.000000e+00, %1905 ]
  %1967 = call float @dx.op.dot3.f32(i32 55, float %1962, float %1963, float %1964, float %367, float %368, float %369)  ; Dot3(ax,ay,az,bx,by,bz)
  %1968 = fmul fast float %1967, %1967
  %1969 = fmul fast float %1968, 0x3FEE471020000000
  %1970 = fadd fast float %1969, 0xBFD42F6020000000
  %1971 = fmul fast float %1927, 0x3FD20DD760000000
  %1972 = fmul fast float %1970, %1966
  %1973 = fmul fast float %1965, 0x3FDF454380000000
  %1974 = fmul fast float %1973, %1967
  %1975 = fadd fast float %1974, %1971
  %1976 = fadd fast float %1975, %1972
  %1977 = call float @dx.op.dot3.f32(i32 55, float %1962, float %1963, float %1964, float %586, float %587, float %588)  ; Dot3(ax,ay,az,bx,by,bz)
  %1978 = fmul fast float %1977, 0x3FDF454380000000
  %1979 = fmul fast float %1977, %1977
  %1980 = fmul fast float %1979, 0x3FEE471020000000
  %1981 = fadd fast float %1980, 0xBFD42F6020000000
  %1982 = call float @dx.op.dot3.f32(i32 55, float %1927, float %1965, float %1966, float 0x3FD20DD760000000, float %1978, float %1981)  ; Dot3(ax,ay,az,bx,by,bz)
  %1983 = call float @dx.op.binary.f32(i32 35, float %1864, float 0.000000e+00)  ; FMax(a,b)
  %1984 = call float @dx.op.binary.f32(i32 35, float %1920, float 0.000000e+00)  ; FMax(a,b)
  %1985 = call float @dx.op.binary.f32(i32 35, float %1976, float 0.000000e+00)  ; FMax(a,b)
  %1986 = call float @dx.op.binary.f32(i32 35, float %1870, float 0.000000e+00)  ; FMax(a,b)
  %1987 = call float @dx.op.binary.f32(i32 35, float %1926, float 0.000000e+00)  ; FMax(a,b)
  %1988 = call float @dx.op.binary.f32(i32 35, float %1982, float 0.000000e+00)  ; FMax(a,b)
  %1989 = fsub fast float %1183, %1983
  %1990 = fsub fast float %1184, %1984
  %1991 = fsub fast float %1185, %1985
  %1992 = fmul fast float %1989, %640
  %1993 = fmul fast float %1990, %640
  %1994 = fmul fast float %1991, %640
  %1995 = fadd fast float %1992, %1983
  %1996 = fadd fast float %1993, %1984
  %1997 = fadd fast float %1994, %1985
  %1998 = fsub fast float %1180, %1986
  %1999 = fsub fast float %1181, %1987
  %2000 = fsub fast float %1182, %1988
  %2001 = fmul fast float %1998, %640
  %2002 = fmul fast float %1999, %640
  %2003 = fmul fast float %2000, %640
  %2004 = fadd fast float %2001, %1986
  %2005 = fadd fast float %2002, %1987
  %2006 = fadd fast float %2003, %1988
  %2007 = fsub fast float %970, %1787
  %2008 = fmul fast float %2007, %640
  %2009 = fadd fast float %2008, %1787
  br label %2010

; <label>:2010                                    ; preds = %1961, %1179
  %2011 = phi float [ %2004, %1961 ], [ %1180, %1179 ]
  %2012 = phi float [ %2005, %1961 ], [ %1181, %1179 ]
  %2013 = phi float [ %2006, %1961 ], [ %1182, %1179 ]
  %2014 = phi float [ %1995, %1961 ], [ %1183, %1179 ]
  %2015 = phi float [ %1996, %1961 ], [ %1184, %1179 ]
  %2016 = phi float [ %1997, %1961 ], [ %1185, %1179 ]
  %2017 = phi float [ %2009, %1961 ], [ %970, %1179 ]
  %2018 = fmul fast float %2014, 0x3FEE623840000000
  %2019 = fmul fast float %2015, 0x3FEE623840000000
  %2020 = fmul fast float %2016, 0x3FEE623840000000
  %2021 = fmul fast float %2011, 0x3FEE623840000000
  %2022 = fmul fast float %2012, 0x3FEE623840000000
  %2023 = fmul fast float %2013, 0x3FEE623840000000
  %2024 = call float @dx.op.dot3.f32(i32 55, float %2018, float %2019, float %2020, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2025 = select i1 %172, float 0.000000e+00, float %2018
  %2026 = select i1 %172, float %2024, float %2019
  %2027 = select i1 %172, float 0.000000e+00, float %2020
  %2028 = call float @dx.op.dot3.f32(i32 55, float %2021, float %2022, float %2023, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2029 = select i1 %172, float 0.000000e+00, float %2021
  %2030 = select i1 %172, float %2028, float %2022
  %2031 = select i1 %172, float 0.000000e+00, float %2023
  %2032 = fmul fast float %580, 9.843750e-01
  %2033 = fmul fast float %379, 9.843750e-01
  %2034 = fadd fast float %2032, 7.812500e-03
  %2035 = fadd fast float %2033, 7.812500e-03
  %2036 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %45, float %2034, float %2035, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2037 = extractvalue %dx.types.ResRet.f32 %2036, 2
  %2038 = extractvalue %dx.types.ResRet.f32 %2036, 3
  %2039 = fmul fast float %2037, %558
  %2040 = fmul fast float %2037, %559
  %2041 = fmul fast float %2037, %578
  %2042 = fadd fast float %2039, %2038
  %2043 = fadd fast float %2040, %2038
  %2044 = fadd fast float %2041, %2038
  %2045 = call float @dx.op.binary.f32(i32 35, float %2043, float %2044)  ; FMax(a,b)
  %2046 = call float @dx.op.binary.f32(i32 35, float %2042, float %2045)  ; FMax(a,b)
  %2047 = fsub fast float 1.000000e+00, %2046
  %2048 = fmul fast float %2046, %379
  %2049 = fadd fast float %2048, %379
  %2050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %2051 = extractvalue %dx.types.CBufRet.f32 %2050, 2
  %2052 = extractvalue %dx.types.CBufRet.f32 %2050, 3
  %2053 = fmul fast float %2049, %2051
  %2054 = fadd fast float %2053, %2052
  %2055 = call float @dx.op.unary.f32(i32 7, float %2054)  ; Saturate(value)
  %2056 = fsub fast float 1.000000e+00, %595
  %2057 = fadd fast float %2056, %2055
  %2058 = call float @dx.op.unary.f32(i32 7, float %2057)  ; Saturate(value)
  %2059 = fcmp fast olt float %2058, 1.000000e+00
  br i1 %2059, label %2060, label %2535

; <label>:2060                                    ; preds = %2010
  %2061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %2062 = extractvalue %dx.types.CBufRet.f32 %2061, 2
  %2063 = extractvalue %dx.types.CBufRet.f32 %2061, 3
  %2064 = fmul fast float %2062, %98
  %2065 = fmul fast float %2063, %99
  %2066 = fptoui float %2064 to i32
  %2067 = fptoui float %2065 to i32
  %2068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2069 = extractvalue %dx.types.CBufRet.f32 %2068, 0
  %2070 = extractvalue %dx.types.CBufRet.f32 %2068, 2
  %2071 = extractvalue %dx.types.CBufRet.f32 %2068, 3
  %2072 = fadd fast float %401, -4.000000e+00
  %2073 = call float @dx.op.binary.f32(i32 35, float %2072, float 0.000000e+00)  ; FMax(a,b)
  %2074 = fadd fast float %2073, %2069
  %2075 = fmul fast float %2074, %2070
  %2076 = call float @dx.op.unary.f32(i32 23, float %2075)  ; Log(value)
  %2077 = fmul fast float %2076, %2071
  %2078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2079 = extractvalue %dx.types.CBufRet.f32 %2078, 2
  %2080 = fmul fast float %2077, %2079
  %2081 = call float @dx.op.unary.f32(i32 7, float %2080)  ; Saturate(value)
  %2082 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2083 = extractvalue %dx.types.CBufRet.i32 %2082, 1
  %2084 = add i32 %2083, -1
  %2085 = uitofp i32 %2083 to float
  %2086 = fmul fast float %2085, %2081
  %2087 = fptoui float %2086 to i32
  %2088 = call i32 @dx.op.binary.i32(i32 40, i32 %2087, i32 %2084)  ; UMin(a,b)
  %2089 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %2090 = extractvalue %dx.types.CBufRet.i32 %2089, 2
  %2091 = extractvalue %dx.types.CBufRet.i32 %2089, 3
  %2092 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2067, i32 %2090, i32 %2066)  ; UMad(a,b,c)
  %2093 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2088, i32 %2091, i32 %2092)  ; UMad(a,b,c)
  %2094 = call float @dx.op.binary.f32(i32 35, float %401, float 0.000000e+00)  ; FMax(a,b)
  %2095 = fptoui float %2094 to i32
  %2096 = lshr i32 %2095, 5
  %2097 = call i32 @dx.op.binary.i32(i32 40, i32 %2096, i32 8191)  ; UMin(a,b)
  %2098 = call float @dx.op.unary.f32(i32 7, float %569)  ; Saturate(value)
  %2099 = fcmp fast ogt float %2098, 0.000000e+00
  %2100 = fcmp fast ogt float %588, 0.000000e+00
  %2101 = and i1 %2100, %2099
  br i1 %2101, label %2102, label %2131

; <label>:2102                                    ; preds = %2060
  %2103 = call float @dx.op.dot3.f32(i32 55, float %586, float %587, float %588, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2104 = call float @dx.op.binary.f32(i32 35, float %2103, float -1.000000e+00)  ; FMax(a,b)
  %2105 = call float @dx.op.binary.f32(i32 36, float %2104, float 1.000000e+00)  ; FMin(a,b)
  %2106 = fmul fast float %2105, %2105
  %2107 = fsub fast float 1.000000e+00, %2106
  %2108 = fmul fast float %2107, 0x3FFC6E2300000000
  %2109 = fsub fast float 1.000000e+00, %2108
  %2110 = fcmp fast ogt float %2109, 0.000000e+00
  %2111 = call float @dx.op.unary.f32(i32 24, float %2109)  ; Sqrt(value)
  %2112 = fsub fast float 1.000000e+00, %2111
  %2113 = call float @dx.op.unary.f32(i32 23, float %2112)  ; Log(value)
  %2114 = fmul fast float %2113, 5.000000e+00
  %2115 = call float @dx.op.unary.f32(i32 21, float %2114)  ; Exp(value)
  %2116 = fmul fast float %2115, 0x3FEF591A60000000
  %2117 = fadd fast float %2116, 0x3F94DCB540000000
  %2118 = select i1 %2110, float %2117, float 1.000000e+00
  %2119 = fcmp fast oge float %2118, 1.000000e+00
  %2120 = fmul fast float %2103, 2.000000e+00
  %2121 = fadd fast float %2120, %588
  %2122 = select i1 %2119, float %2121, float %588
  %2123 = fsub fast float %2122, %588
  %2124 = fmul fast float %2123, %2098
  %2125 = fadd fast float %2124, %588
  %2126 = call float @dx.op.dot3.f32(i32 55, float %586, float %587, float %2125, float %586, float %587, float %2125)  ; Dot3(ax,ay,az,bx,by,bz)
  %2127 = call float @dx.op.unary.f32(i32 25, float %2126)  ; Rsqrt(value)
  %2128 = fmul fast float %2127, %586
  %2129 = fmul fast float %2127, %587
  %2130 = fmul fast float %2125, %2127
  br label %2131

; <label>:2131                                    ; preds = %2102, %2060
  %2132 = phi float [ %2128, %2102 ], [ %586, %2060 ]
  %2133 = phi float [ %2129, %2102 ], [ %587, %2060 ]
  %2134 = phi float [ %2130, %2102 ], [ %588, %2060 ]
  %2135 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2136 = extractvalue %dx.types.CBufRet.i32 %2135, 2
  %2137 = add nsw i32 %2136, -1
  %2138 = call i32 @dx.op.binary.i32(i32 37, i32 %2137, i32 0)  ; IMax(a,b)
  %2139 = shl i32 %2097, 2
  %2140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2139, i32 undef)  ; BufferLoad(srv,index,wot)
  %2141 = extractvalue %dx.types.ResRet.i32 %2140, 0
  %2142 = lshr i32 %2141, 16
  %2143 = and i32 %2141, 65535
  %2144 = lshr i32 %2141, 21
  %2145 = lshr i32 %2143, 5
  %2146 = call i32 @dx.op.binary.i32(i32 40, i32 %2145, i32 %2138)  ; UMin(a,b)
  %2147 = icmp ugt i32 %2144, %2146
  br i1 %2147, label %2511, label %2148

; <label>:2148                                    ; preds = %2131
  br label %2149

; <label>:2149                                    ; preds = %2503, %2148
  %2150 = phi float [ %2504, %2503 ], [ 0.000000e+00, %2148 ]
  %2151 = phi float [ %2505, %2503 ], [ 0.000000e+00, %2148 ]
  %2152 = phi float [ %2506, %2503 ], [ 0.000000e+00, %2148 ]
  %2153 = phi float [ %2507, %2503 ], [ 1.000000e+00, %2148 ]
  %2154 = phi i32 [ %2508, %2503 ], [ %2144, %2148 ]
  %2155 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2156 = extractvalue %dx.types.CBufRet.i32 %2155, 2
  %2157 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2093, i32 %2156, i32 %2154)  ; UMad(a,b,c)
  %2158 = shl i32 %2157, 2
  %2159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2158, i32 undef)  ; BufferLoad(srv,index,wot)
  %2160 = extractvalue %dx.types.ResRet.i32 %2159, 0
  %2161 = shl i32 %2154, 5
  %2162 = sub nsw i32 %2142, %2161
  %2163 = call i32 @dx.op.binary.i32(i32 37, i32 %2162, i32 0)  ; IMax(a,b)
  %2164 = call i32 @dx.op.binary.i32(i32 38, i32 %2163, i32 31)  ; IMin(a,b)
  %2165 = sub nsw i32 1, %2142
  %2166 = add nsw i32 %2165, %2143
  %2167 = call i32 @dx.op.binary.i32(i32 37, i32 %2166, i32 0)  ; IMax(a,b)
  %2168 = call i32 @dx.op.binary.i32(i32 38, i32 %2167, i32 32)  ; IMin(a,b)
  %2169 = and i32 %2168, 31
  %2170 = shl i32 -1, %2169
  %2171 = xor i32 %2170, -1
  %2172 = and i32 %2164, 31
  %2173 = shl i32 %2171, %2172
  %2174 = icmp eq i32 %2168, 32
  %2175 = select i1 %2174, i32 -1, i32 %2173
  %2176 = and i32 %2175, %2160
  %2177 = icmp eq i32 %2176, 0
  br i1 %2177, label %2503, label %2178

; <label>:2178                                    ; preds = %2149
  br label %2179

; <label>:2179                                    ; preds = %2286, %2178
  %2180 = phi float [ %2287, %2286 ], [ %2150, %2178 ]
  %2181 = phi float [ %2288, %2286 ], [ %2151, %2178 ]
  %2182 = phi float [ %2289, %2286 ], [ %2152, %2178 ]
  %2183 = phi float [ %2290, %2286 ], [ %2153, %2178 ]
  %2184 = phi i32 [ %2189, %2286 ], [ %2176, %2178 ]
  %2185 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2184)  ; FirstbitLo(value)
  %2186 = add i32 %2185, %2161
  %2187 = and i32 %2185, 31
  %2188 = shl i32 1, %2187
  %2189 = xor i32 %2188, %2184
  %2190 = mul i32 %2186, 72
  %2191 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2190, i32 undef)  ; BufferLoad(srv,index,wot)
  %2192 = extractvalue %dx.types.ResRet.f32 %2191, 0
  %2193 = extractvalue %dx.types.ResRet.f32 %2191, 1
  %2194 = extractvalue %dx.types.ResRet.f32 %2191, 2
  %2195 = add i32 %2190, 12
  %2196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2195, i32 undef)  ; BufferLoad(srv,index,wot)
  %2197 = extractvalue %dx.types.ResRet.i32 %2196, 0
  %2198 = add i32 %2190, 16
  %2199 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2198, i32 undef)  ; BufferLoad(srv,index,wot)
  %2200 = extractvalue %dx.types.ResRet.f32 %2199, 0
  %2201 = extractvalue %dx.types.ResRet.f32 %2199, 1
  %2202 = extractvalue %dx.types.ResRet.f32 %2199, 2
  %2203 = add i32 %2190, 28
  %2204 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2203, i32 undef)  ; BufferLoad(srv,index,wot)
  %2205 = extractvalue %dx.types.ResRet.f32 %2204, 0
  %2206 = add i32 %2190, 32
  %2207 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2206, i32 undef)  ; BufferLoad(srv,index,wot)
  %2208 = extractvalue %dx.types.ResRet.f32 %2207, 0
  %2209 = extractvalue %dx.types.ResRet.f32 %2207, 1
  %2210 = extractvalue %dx.types.ResRet.f32 %2207, 2
  %2211 = extractvalue %dx.types.ResRet.f32 %2207, 3
  %2212 = add i32 %2190, 48
  %2213 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2212, i32 undef)  ; BufferLoad(srv,index,wot)
  %2214 = extractvalue %dx.types.ResRet.f32 %2213, 0
  %2215 = extractvalue %dx.types.ResRet.f32 %2213, 1
  %2216 = add i32 %2190, 56
  %2217 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2216, i32 undef)  ; BufferLoad(srv,index,wot)
  %2218 = extractvalue %dx.types.ResRet.f32 %2217, 0
  %2219 = extractvalue %dx.types.ResRet.f32 %2217, 1
  %2220 = add i32 %2190, 64
  %2221 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2220, i32 undef)  ; BufferLoad(srv,index,wot)
  %2222 = extractvalue %dx.types.ResRet.f32 %2221, 0
  %2223 = extractvalue %dx.types.ResRet.f32 %2221, 1
  %2224 = mul i32 %2186, 60
  %2225 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %2224, i32 undef)  ; BufferLoad(srv,index,wot)
  %2226 = extractvalue %dx.types.ResRet.f32 %2225, 0
  %2227 = extractvalue %dx.types.ResRet.f32 %2225, 1
  %2228 = extractvalue %dx.types.ResRet.f32 %2225, 2
  %2229 = add i32 %2224, 12
  %2230 = add i32 %2224, 48
  %2231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %2230, i32 undef)  ; BufferLoad(srv,index,wot)
  %2232 = extractvalue %dx.types.ResRet.f32 %2231, 0
  %2233 = extractvalue %dx.types.ResRet.f32 %2231, 1
  %2234 = extractvalue %dx.types.ResRet.f32 %2231, 2
  %2235 = and i32 %2197, 32767
  %2236 = bitcast float %2192 to i32
  %2237 = icmp eq i32 %2236, -1
  %2238 = bitcast float %2193 to i32
  %2239 = and i32 %2197, 32768
  %2240 = icmp ne i32 %2239, 0
  %2241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2242 = extractvalue %dx.types.CBufRet.f32 %2241, 0
  %2243 = extractvalue %dx.types.CBufRet.f32 %2241, 1
  %2244 = extractvalue %dx.types.CBufRet.f32 %2241, 2
  %2245 = fsub fast float %2226, %2242
  %2246 = fsub fast float %2227, %2243
  %2247 = fsub fast float %2228, %2244
  %2248 = fsub fast float %435, %2245
  %2249 = fsub fast float %436, %2246
  %2250 = fsub fast float %437, %2247
  %2251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %2229, i32 undef)  ; BufferLoad(srv,index,wot)
  %2252 = extractvalue %dx.types.ResRet.f32 %2251, 0
  %2253 = extractvalue %dx.types.ResRet.f32 %2251, 1
  %2254 = extractvalue %dx.types.ResRet.f32 %2251, 2
  %2255 = call float @dx.op.dot3.f32(i32 55, float %2248, float %2249, float %2250, float %2252, float %2253, float %2254)  ; Dot3(ax,ay,az,bx,by,bz)
  %2256 = add i32 %2224, 24
  %2257 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %2256, i32 undef)  ; BufferLoad(srv,index,wot)
  %2258 = extractvalue %dx.types.ResRet.f32 %2257, 0
  %2259 = extractvalue %dx.types.ResRet.f32 %2257, 1
  %2260 = extractvalue %dx.types.ResRet.f32 %2257, 2
  %2261 = call float @dx.op.dot3.f32(i32 55, float %2248, float %2249, float %2250, float %2258, float %2259, float %2260)  ; Dot3(ax,ay,az,bx,by,bz)
  %2262 = add i32 %2224, 36
  %2263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %2262, i32 undef)  ; BufferLoad(srv,index,wot)
  %2264 = extractvalue %dx.types.ResRet.f32 %2263, 0
  %2265 = extractvalue %dx.types.ResRet.f32 %2263, 1
  %2266 = extractvalue %dx.types.ResRet.f32 %2263, 2
  %2267 = call float @dx.op.dot3.f32(i32 55, float %2248, float %2249, float %2250, float %2264, float %2265, float %2266)  ; Dot3(ax,ay,az,bx,by,bz)
  %2268 = call float @dx.op.unary.f32(i32 6, float %2255)  ; FAbs(value)
  %2269 = call float @dx.op.unary.f32(i32 6, float %2261)  ; FAbs(value)
  %2270 = call float @dx.op.unary.f32(i32 6, float %2267)  ; FAbs(value)
  %2271 = fsub fast float %2232, %2268
  %2272 = fsub fast float %2233, %2269
  %2273 = fsub fast float %2234, %2270
  %2274 = fmul fast float %2271, %2200
  %2275 = fmul fast float %2272, %2201
  %2276 = fmul fast float %2273, %2202
  %2277 = call float @dx.op.binary.f32(i32 36, float %2275, float %2276)  ; FMin(a,b)
  %2278 = call float @dx.op.binary.f32(i32 36, float %2274, float %2277)  ; FMin(a,b)
  %2279 = call float @dx.op.unary.f32(i32 7, float %2278)  ; Saturate(value)
  %2280 = call float @dx.op.binary.f32(i32 36, float %2183, float %2279)  ; FMin(a,b)
  %2281 = uitofp i1 %2240 to float
  %2282 = fadd fast float %2098, 1.000000e+00
  %2283 = fsub fast float %2282, %2281
  %2284 = fmul fast float %2280, %2283
  %2285 = fcmp fast ogt float %2284, 0.000000e+00
  br i1 %2285, label %2292, label %2286

; <label>:2286                                    ; preds = %2434, %2179
  %2287 = phi float [ %2498, %2434 ], [ %2180, %2179 ]
  %2288 = phi float [ %2499, %2434 ], [ %2181, %2179 ]
  %2289 = phi float [ %2500, %2434 ], [ %2182, %2179 ]
  %2290 = phi float [ %2501, %2434 ], [ %2183, %2179 ]
  %2291 = icmp eq i32 %2184, %2188
  br i1 %2291, label %2502, label %2179

; <label>:2292                                    ; preds = %2179
  br i1 %2237, label %2350, label %2293

; <label>:2293                                    ; preds = %2292
  %2294 = fsub fast float -0.000000e+00, %2252
  %2295 = fsub fast float -0.000000e+00, %2253
  %2296 = fsub fast float -0.000000e+00, %2254
  %2297 = call float @dx.op.dot3.f32(i32 55, float %2132, float %2133, float %2134, float %2294, float %2295, float %2296)  ; Dot3(ax,ay,az,bx,by,bz)
  %2298 = fsub fast float -0.000000e+00, %2297
  %2299 = call float @dx.op.dot3.f32(i32 55, float %2248, float %2249, float %2250, float %2294, float %2295, float %2296)  ; Dot3(ax,ay,az,bx,by,bz)
  %2300 = fadd fast float %2299, %2215
  %2301 = fadd fast float %2214, %2299
  %2302 = fsub fast float -0.000000e+00, %2301
  %2303 = fcmp ogt float %2297, -0.000000e+00
  %2304 = select i1 %2303, float %2302, float %2300
  %2305 = call float @dx.op.unary.f32(i32 6, float %2298)  ; FAbs(value)
  %2306 = fdiv fast float 1.000000e+00, %2305
  %2307 = fmul fast float %2304, %2306
  %2308 = call float @dx.op.binary.f32(i32 35, float %2307, float 0.000000e+00)  ; FMax(a,b)
  %2309 = fsub fast float -0.000000e+00, %2258
  %2310 = fsub fast float -0.000000e+00, %2259
  %2311 = fsub fast float -0.000000e+00, %2260
  %2312 = call float @dx.op.dot3.f32(i32 55, float %2132, float %2133, float %2134, float %2309, float %2310, float %2311)  ; Dot3(ax,ay,az,bx,by,bz)
  %2313 = fsub fast float -0.000000e+00, %2312
  %2314 = call float @dx.op.dot3.f32(i32 55, float %2248, float %2249, float %2250, float %2309, float %2310, float %2311)  ; Dot3(ax,ay,az,bx,by,bz)
  %2315 = fadd fast float %2314, %2219
  %2316 = fadd fast float %2218, %2314
  %2317 = fsub fast float -0.000000e+00, %2316
  %2318 = fcmp ogt float %2312, -0.000000e+00
  %2319 = select i1 %2318, float %2317, float %2315
  %2320 = call float @dx.op.unary.f32(i32 6, float %2313)  ; FAbs(value)
  %2321 = fdiv fast float 1.000000e+00, %2320
  %2322 = fmul fast float %2319, %2321
  %2323 = call float @dx.op.binary.f32(i32 35, float %2322, float 0.000000e+00)  ; FMax(a,b)
  %2324 = fsub fast float -0.000000e+00, %2264
  %2325 = fsub fast float -0.000000e+00, %2265
  %2326 = fsub fast float -0.000000e+00, %2266
  %2327 = call float @dx.op.dot3.f32(i32 55, float %2132, float %2133, float %2134, float %2324, float %2325, float %2326)  ; Dot3(ax,ay,az,bx,by,bz)
  %2328 = fsub fast float -0.000000e+00, %2327
  %2329 = call float @dx.op.dot3.f32(i32 55, float %2248, float %2249, float %2250, float %2324, float %2325, float %2326)  ; Dot3(ax,ay,az,bx,by,bz)
  %2330 = fadd fast float %2329, %2223
  %2331 = fadd fast float %2222, %2329
  %2332 = fsub fast float -0.000000e+00, %2331
  %2333 = fcmp ogt float %2327, -0.000000e+00
  %2334 = select i1 %2333, float %2332, float %2330
  %2335 = call float @dx.op.unary.f32(i32 6, float %2328)  ; FAbs(value)
  %2336 = fdiv fast float 1.000000e+00, %2335
  %2337 = fmul fast float %2334, %2336
  %2338 = call float @dx.op.binary.f32(i32 35, float %2337, float 0.000000e+00)  ; FMax(a,b)
  %2339 = call float @dx.op.binary.f32(i32 36, float %2323, float %2338)  ; FMin(a,b)
  %2340 = call float @dx.op.binary.f32(i32 36, float %2308, float %2339)  ; FMin(a,b)
  %2341 = fmul fast float %2340, %2132
  %2342 = fmul fast float %2340, %2133
  %2343 = fmul fast float %2340, %2134
  %2344 = fadd fast float %2341, %435
  %2345 = fadd fast float %2342, %436
  %2346 = fadd fast float %2343, %437
  %2347 = fsub fast float %2344, %2192
  %2348 = fsub fast float %2345, %2193
  %2349 = fsub fast float %2346, %2194
  br label %2357

; <label>:2350                                    ; preds = %2292
  %2351 = fmul fast float %2132, 8.096000e+03
  %2352 = fmul fast float %2133, 8.096000e+03
  %2353 = fmul fast float %2134, 8.096000e+03
  %2354 = fadd fast float %2351, %435
  %2355 = fadd fast float %2352, %436
  %2356 = fadd fast float %2353, %437
  br label %2357

; <label>:2357                                    ; preds = %2350, %2293
  %2358 = phi float [ %2132, %2350 ], [ %2347, %2293 ]
  %2359 = phi float [ %2133, %2350 ], [ %2348, %2293 ]
  %2360 = phi float [ %2134, %2350 ], [ %2349, %2293 ]
  %2361 = phi float [ %2354, %2350 ], [ %2344, %2293 ]
  %2362 = phi float [ %2355, %2350 ], [ %2345, %2293 ]
  %2363 = phi float [ %2356, %2350 ], [ %2346, %2293 ]
  %2364 = fcmp fast olt float %2211, 1.000000e+00
  br i1 %2364, label %2365, label %2396, !dx.controlflow.hints !126

; <label>:2365                                    ; preds = %2357
  %2366 = fmul fast float %2360, %2209
  %2367 = fmul fast float %2359, %2210
  %2368 = fsub fast float %2366, %2367
  %2369 = fmul fast float %2358, %2210
  %2370 = fmul fast float %2360, %2208
  %2371 = fsub fast float %2369, %2370
  %2372 = fmul fast float %2359, %2208
  %2373 = fmul fast float %2358, %2209
  %2374 = fsub fast float %2372, %2373
  %2375 = fmul fast float %2368, 2.000000e+00
  %2376 = fmul fast float %2371, 2.000000e+00
  %2377 = fmul fast float %2374, 2.000000e+00
  %2378 = fmul fast float %2375, %2211
  %2379 = fmul fast float %2376, %2211
  %2380 = fmul fast float %2377, %2211
  %2381 = fmul fast float %2377, %2209
  %2382 = fmul fast float %2376, %2210
  %2383 = fmul fast float %2375, %2210
  %2384 = fmul fast float %2377, %2208
  %2385 = fmul fast float %2376, %2208
  %2386 = fmul fast float %2375, %2209
  %2387 = fadd fast float %2381, %2358
  %2388 = fadd fast float %2387, %2378
  %2389 = fsub fast float %2388, %2382
  %2390 = fsub fast float %2359, %2384
  %2391 = fadd fast float %2390, %2379
  %2392 = fadd fast float %2391, %2383
  %2393 = fadd fast float %2380, %2360
  %2394 = fsub fast float %2393, %2386
  %2395 = fadd fast float %2394, %2385
  br label %2396

; <label>:2396                                    ; preds = %2365, %2357
  %2397 = phi float [ %2389, %2365 ], [ %2358, %2357 ]
  %2398 = phi float [ %2392, %2365 ], [ %2359, %2357 ]
  %2399 = phi float [ %2395, %2365 ], [ %2360, %2357 ]
  br i1 %2237, label %2431, label %2400

; <label>:2400                                    ; preds = %2396
  %2401 = fmul fast float %379, 0x400187C840000000
  %2402 = fadd fast float %2401, 0xC00EFC2120000000
  %2403 = fmul fast float %2402, %379
  %2404 = fadd fast float %2403, 0x3FE5D16340000000
  %2405 = fmul fast float %2404, %379
  %2406 = fadd fast float %2405, 1.000000e+00
  %2407 = call float @dx.op.unary.f32(i32 7, float %2406)  ; Saturate(value)
  %2408 = fsub fast float %2361, %435
  %2409 = fsub fast float %2362, %436
  %2410 = fsub fast float %2363, %437
  %2411 = fsub fast float %2361, %2192
  %2412 = fsub fast float %2362, %2193
  %2413 = fsub fast float %2363, %2194
  %2414 = call float @dx.op.dot3.f32(i32 55, float %2408, float %2409, float %2410, float %2408, float %2409, float %2410)  ; Dot3(ax,ay,az,bx,by,bz)
  %2415 = call float @dx.op.dot3.f32(i32 55, float %2411, float %2412, float %2413, float %2411, float %2412, float %2413)  ; Dot3(ax,ay,az,bx,by,bz)
  %2416 = fadd fast float %2415, 0x3EE4F8B580000000
  %2417 = fdiv fast float %2414, %2416
  %2418 = bitcast float %2417 to i32
  %2419 = ashr i32 %2418, 1
  %2420 = add nsw i32 %2419, 532487669
  %2421 = bitcast i32 %2420 to float
  %2422 = fmul fast float %2421, %2407
  %2423 = call float @dx.op.unary.f32(i32 7, float %2422)  ; Saturate(value)
  %2424 = fmul fast float %2423, 0x4009981AE0000000
  %2425 = fsub fast float 0x40111BBD80000000, %2424
  %2426 = fmul fast float %2425, %2423
  %2427 = fadd fast float %2426, 0xC0009F6020000000
  %2428 = fmul fast float %2427, %2423
  %2429 = fadd fast float %2428, 1.000000e+00
  %2430 = call float @dx.op.unary.f32(i32 7, float %2429)  ; Saturate(value)
  br label %2434

; <label>:2431                                    ; preds = %2396
  %2432 = icmp ne i32 %2238, -1
  %2433 = zext i1 %2432 to i32
  br label %2434

; <label>:2434                                    ; preds = %2431, %2400
  %2435 = phi float [ %379, %2431 ], [ %2430, %2400 ]
  %2436 = phi i32 [ %2433, %2431 ], [ 0, %2400 ]
  %2437 = fmul float %2435, 5.000000e+00
  %2438 = fsub float 5.000000e+00, %2437
  %2439 = icmp ne i32 %2436, 0
  %2440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %2441 = extractvalue %dx.types.CBufRet.f32 %2440, 3
  %2442 = fadd fast float %2441, %2438
  %2443 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2442)  ; FMax(a,b)
  %2444 = call float @dx.op.unary.f32(i32 6, float %2397)  ; FAbs(value)
  %2445 = call float @dx.op.unary.f32(i32 6, float %2398)  ; FAbs(value)
  %2446 = fadd fast float %2445, %2444
  %2447 = call float @dx.op.unary.f32(i32 6, float %2399)  ; FAbs(value)
  %2448 = fadd fast float %2446, %2447
  %2449 = fcmp fast oeq float %2448, 0.000000e+00
  %2450 = fdiv fast float 1.000000e+00, %2448
  %2451 = select i1 %2449, float 1.000000e+00, float %2450
  %2452 = fmul fast float %2451, %2397
  %2453 = fmul fast float %2451, %2398
  %2454 = call float @dx.op.unary.f32(i32 6, float %2453)  ; FAbs(value)
  %2455 = call float @dx.op.unary.f32(i32 6, float %2452)  ; FAbs(value)
  %2456 = fsub fast float 1.000000e+00, %2454
  %2457 = fsub fast float 1.000000e+00, %2455
  %2458 = fcmp fast oge float %2452, 0.000000e+00
  %2459 = fcmp fast oge float %2453, 0.000000e+00
  %2460 = select i1 %2458, float 1.000000e+00, float -1.000000e+00
  %2461 = select i1 %2459, float 1.000000e+00, float -1.000000e+00
  %2462 = fcmp fast ole float %2399, 0.000000e+00
  %2463 = fmul fast float %2460, %2456
  %2464 = fmul fast float %2461, %2457
  %2465 = select i1 %2462, float %2463, float %2452
  %2466 = select i1 %2462, float %2464, float %2453
  %2467 = fmul fast float %2465, 5.000000e-01
  %2468 = fmul fast float %2466, 5.000000e-01
  %2469 = fadd fast float %2467, 5.000000e-01
  %2470 = fadd fast float %2468, 5.000000e-01
  %2471 = uitofp i32 %2235 to float
  %2472 = call float @dx.op.binary.f32(i32 36, float %2443, float 3.000000e+00)  ; FMin(a,b)
  %2473 = fadd fast float %2472, 2.000000e+00
  %2474 = call float @dx.op.unary.f32(i32 21, float %2473)  ; Exp(value)
  %2475 = extractvalue %dx.types.CBufRet.f32 %2440, 1
  %2476 = fmul fast float %2475, %2474
  %2477 = fmul fast float %2476, 2.000000e+00
  %2478 = fsub fast float 1.000000e+00, %2477
  %2479 = fmul fast float %2469, %2478
  %2480 = fmul fast float %2470, %2478
  %2481 = fadd fast float %2479, %2476
  %2482 = fadd fast float %2480, %2476
  %2483 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %43, float %2481, float %2482, float %2471, float undef, i32 0, i32 0, i32 undef, float %2443)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2484 = extractvalue %dx.types.ResRet.f32 %2483, 0
  %2485 = extractvalue %dx.types.ResRet.f32 %2483, 1
  %2486 = extractvalue %dx.types.ResRet.f32 %2483, 2
  %2487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2488 = extractvalue %dx.types.CBufRet.f32 %2487, 3
  %2489 = fmul fast float %2488, %2205
  %2490 = call float @dx.op.binary.f32(i32 36, float %2017, float %2489)  ; FMin(a,b)
  %2491 = select i1 %2439, float %2490, float %2489
  %2492 = fmul fast float %2484, %2284
  %2493 = fmul fast float %2492, %2491
  %2494 = fmul fast float %2485, %2284
  %2495 = fmul fast float %2494, %2491
  %2496 = fmul fast float %2486, %2284
  %2497 = fmul fast float %2496, %2491
  %2498 = fadd fast float %2493, %2180
  %2499 = fadd fast float %2495, %2181
  %2500 = fadd fast float %2497, %2182
  %2501 = fsub fast float %2183, %2284
  br label %2286

; <label>:2502                                    ; preds = %2286
  br label %2503

; <label>:2503                                    ; preds = %2502, %2149
  %2504 = phi float [ %2150, %2149 ], [ %2287, %2502 ]
  %2505 = phi float [ %2151, %2149 ], [ %2288, %2502 ]
  %2506 = phi float [ %2152, %2149 ], [ %2289, %2502 ]
  %2507 = phi float [ %2153, %2149 ], [ %2290, %2502 ]
  %2508 = add i32 %2154, 1
  %2509 = icmp ugt i32 %2508, %2146
  br i1 %2509, label %2510, label %2149, !llvm.loop !127

; <label>:2510                                    ; preds = %2503
  br label %2511

; <label>:2511                                    ; preds = %2510, %2131
  %2512 = phi float [ 0.000000e+00, %2131 ], [ %2504, %2510 ]
  %2513 = phi float [ 0.000000e+00, %2131 ], [ %2505, %2510 ]
  %2514 = phi float [ 0.000000e+00, %2131 ], [ %2506, %2510 ]
  %2515 = call float @dx.op.dot3.f32(i32 55, float %2512, float %2513, float %2514, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2516 = select i1 %172, float 0.000000e+00, float %2512
  %2517 = select i1 %172, float %2515, float %2513
  %2518 = select i1 %172, float 0.000000e+00, float %2514
  %2519 = fcmp fast olt float %2058, 0.000000e+00
  %2520 = call float @dx.op.unary.f32(i32 6, float %2058)  ; FAbs(value)
  %2521 = fmul fast float %2520, %2029
  %2522 = fmul fast float %2520, %2030
  %2523 = fmul fast float %2520, %2031
  %2524 = select i1 %2519, float %2029, float %2521
  %2525 = select i1 %2519, float %2030, float %2522
  %2526 = select i1 %2519, float %2031, float %2523
  %2527 = fsub fast float 1.000000e+00, %2520
  %2528 = call float @dx.op.unary.f32(i32 7, float %2527)  ; Saturate(value)
  %2529 = fmul fast float %2528, %2516
  %2530 = fmul fast float %2528, %2517
  %2531 = fmul fast float %2528, %2518
  %2532 = fadd fast float %2524, %2529
  %2533 = fadd fast float %2525, %2530
  %2534 = fadd fast float %2526, %2531
  br label %2535

; <label>:2535                                    ; preds = %2511, %2010
  %2536 = phi float [ %2029, %2010 ], [ %2532, %2511 ]
  %2537 = phi float [ %2030, %2010 ], [ %2533, %2511 ]
  %2538 = phi float [ %2031, %2010 ], [ %2534, %2511 ]
  %2539 = fmul fast float %2047, %2025
  %2540 = fmul fast float %2047, %2026
  %2541 = fmul fast float %2047, %2027
  %2542 = fmul fast float %2536, %2042
  %2543 = fmul fast float %2537, %2043
  %2544 = fmul fast float %2538, %2044
  %2545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2546 = extractvalue %dx.types.CBufRet.f32 %2545, 3
  %2547 = fcmp fast oeq float %2546, 0.000000e+00
  br i1 %2547, label %4320, label %2548

; <label>:2548                                    ; preds = %2535
  %2549 = extractvalue %dx.types.CBufRet.f32 %2545, 0
  %2550 = extractvalue %dx.types.CBufRet.f32 %2545, 1
  %2551 = extractvalue %dx.types.CBufRet.f32 %2545, 2
  %2552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2553 = extractvalue %dx.types.CBufRet.f32 %2552, 0
  %2554 = extractvalue %dx.types.CBufRet.f32 %2552, 1
  %2555 = extractvalue %dx.types.CBufRet.f32 %2552, 2
  %2556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2557 = extractvalue %dx.types.CBufRet.f32 %2556, 0
  %2558 = extractvalue %dx.types.CBufRet.f32 %2556, 1
  %2559 = call float @dx.op.dot3.f32(i32 55, float %2553, float %2554, float %2555, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2560 = select i1 %172, float %2557, float %2553
  %2561 = select i1 %172, float %2559, float %2554
  %2562 = select i1 %172, float %2558, float %2555
  %2563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2564 = extractvalue %dx.types.CBufRet.f32 %2563, 2
  %2565 = fmul fast float %2564, %367
  %2566 = fmul fast float %2564, %368
  %2567 = fmul fast float %2564, %369
  %2568 = fadd fast float %2565, %435
  %2569 = fadd fast float %2566, %436
  %2570 = fadd fast float %2567, %437
  %2571 = fcmp fast olt float %2546, 0.000000e+00
  br i1 %2571, label %3667, label %2572

; <label>:2572                                    ; preds = %2548
  %2573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2574 = extractvalue %dx.types.CBufRet.f32 %2573, 0
  %2575 = extractvalue %dx.types.CBufRet.f32 %2573, 1
  %2576 = extractvalue %dx.types.CBufRet.f32 %2573, 2
  %2577 = extractvalue %dx.types.CBufRet.f32 %2573, 3
  %2578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2579 = extractvalue %dx.types.CBufRet.f32 %2578, 0
  %2580 = extractvalue %dx.types.CBufRet.f32 %2578, 1
  %2581 = extractvalue %dx.types.CBufRet.f32 %2578, 2
  %2582 = extractvalue %dx.types.CBufRet.f32 %2578, 3
  %2583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2584 = extractvalue %dx.types.CBufRet.f32 %2583, 0
  %2585 = extractvalue %dx.types.CBufRet.f32 %2583, 1
  %2586 = extractvalue %dx.types.CBufRet.f32 %2583, 2
  %2587 = extractvalue %dx.types.CBufRet.f32 %2583, 3
  %2588 = fmul fast float %2574, %2568
  %2589 = call float @dx.op.tertiary.f32(i32 46, float %2569, float %2575, float %2588)  ; FMad(a,b,c)
  %2590 = call float @dx.op.tertiary.f32(i32 46, float %2570, float %2576, float %2589)  ; FMad(a,b,c)
  %2591 = fadd fast float %2590, %2577
  %2592 = fmul fast float %2579, %2568
  %2593 = call float @dx.op.tertiary.f32(i32 46, float %2569, float %2580, float %2592)  ; FMad(a,b,c)
  %2594 = call float @dx.op.tertiary.f32(i32 46, float %2570, float %2581, float %2593)  ; FMad(a,b,c)
  %2595 = fadd fast float %2594, %2582
  %2596 = fmul fast float %2584, %2568
  %2597 = call float @dx.op.tertiary.f32(i32 46, float %2569, float %2585, float %2596)  ; FMad(a,b,c)
  %2598 = call float @dx.op.tertiary.f32(i32 46, float %2570, float %2586, float %2597)  ; FMad(a,b,c)
  %2599 = fadd fast float %2598, %2587
  %2600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2601 = extractvalue %dx.types.CBufRet.f32 %2600, 0
  %2602 = extractvalue %dx.types.CBufRet.f32 %2600, 1
  %2603 = extractvalue %dx.types.CBufRet.f32 %2600, 3
  %2604 = fmul fast float %2603, %2591
  %2605 = fmul fast float %2603, %2595
  %2606 = fadd fast float %2604, %2601
  %2607 = fadd fast float %2605, %2602
  %2608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2609 = extractvalue %dx.types.CBufRet.f32 %2608, 0
  %2610 = extractvalue %dx.types.CBufRet.f32 %2608, 1
  %2611 = extractvalue %dx.types.CBufRet.f32 %2608, 3
  %2612 = fmul fast float %2611, %2591
  %2613 = fmul fast float %2611, %2595
  %2614 = fadd fast float %2612, %2609
  %2615 = fadd fast float %2613, %2610
  %2616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2617 = extractvalue %dx.types.CBufRet.f32 %2616, 1
  %2618 = fsub fast float %2617, %2599
  %2619 = extractvalue %dx.types.CBufRet.f32 %2616, 2
  %2620 = fmul fast float %2618, %2619
  %2621 = fsub fast float 1.000000e+00, %2620
  %2622 = call float @dx.op.unary.f32(i32 7, float %2621)  ; Saturate(value)
  %2623 = extractvalue %dx.types.CBufRet.f32 %2608, 2
  %2624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2625 = extractvalue %dx.types.CBufRet.f32 %2624, 2
  %2626 = fadd fast float %2625, %2623
  %2627 = fcmp fast ogt float %2626, 0.000000e+00
  br i1 %2627, label %2628, label %2652

; <label>:2628                                    ; preds = %2572
  %2629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %2630 = extractvalue %dx.types.CBufRet.f32 %2629, 0
  %2631 = extractvalue %dx.types.CBufRet.f32 %2629, 1
  %2632 = fsub fast float %2614, %2630
  %2633 = fsub fast float %2615, %2631
  %2634 = fcmp fast olt float %2632, 0.000000e+00
  %2635 = fcmp fast olt float %2633, 0.000000e+00
  %2636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %2637 = extractvalue %dx.types.CBufRet.f32 %2636, 0
  %2638 = extractvalue %dx.types.CBufRet.f32 %2636, 1
  %2639 = extractvalue %dx.types.CBufRet.f32 %2636, 2
  %2640 = extractvalue %dx.types.CBufRet.f32 %2636, 3
  %2641 = select i1 %2634, float %2637, float %2639
  %2642 = select i1 %2635, float %2638, float %2640
  %2643 = fmul fast float %2641, %2632
  %2644 = fmul fast float %2642, %2633
  %2645 = call float @dx.op.unary.f32(i32 6, float %2643)  ; FAbs(value)
  %2646 = call float @dx.op.unary.f32(i32 6, float %2644)  ; FAbs(value)
  %2647 = extractvalue %dx.types.CBufRet.f32 %2563, 0
  %2648 = call float @dx.op.binary.f32(i32 35, float %2645, float %2646)  ; FMax(a,b)
  %2649 = fsub fast float %2647, %2648
  %2650 = call float @dx.op.unary.f32(i32 7, float %2649)  ; Saturate(value)
  %2651 = fmul fast float %2650, %2622
  br label %2652

; <label>:2652                                    ; preds = %2628, %2572
  %2653 = phi float [ %2651, %2628 ], [ 0.000000e+00, %2572 ]
  %2654 = extractvalue %dx.types.CBufRet.f32 %2600, 2
  %2655 = extractvalue %dx.types.CBufRet.f32 %2624, 1
  %2656 = fadd fast float %2655, %2654
  %2657 = fcmp fast ogt float %2656, 0.000000e+00
  %2658 = extractvalue %dx.types.CBufRet.f32 %2563, 0
  br i1 %2657, label %2659, label %2682

; <label>:2659                                    ; preds = %2652
  %2660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2661 = extractvalue %dx.types.CBufRet.f32 %2660, 0
  %2662 = extractvalue %dx.types.CBufRet.f32 %2660, 1
  %2663 = fsub fast float %2606, %2661
  %2664 = fsub fast float %2607, %2662
  %2665 = fcmp fast olt float %2663, 0.000000e+00
  %2666 = fcmp fast olt float %2664, 0.000000e+00
  %2667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2668 = extractvalue %dx.types.CBufRet.f32 %2667, 0
  %2669 = extractvalue %dx.types.CBufRet.f32 %2667, 1
  %2670 = extractvalue %dx.types.CBufRet.f32 %2667, 2
  %2671 = extractvalue %dx.types.CBufRet.f32 %2667, 3
  %2672 = select i1 %2665, float %2668, float %2670
  %2673 = select i1 %2666, float %2669, float %2671
  %2674 = fmul fast float %2672, %2663
  %2675 = fmul fast float %2673, %2664
  %2676 = call float @dx.op.unary.f32(i32 6, float %2674)  ; FAbs(value)
  %2677 = call float @dx.op.unary.f32(i32 6, float %2675)  ; FAbs(value)
  %2678 = call float @dx.op.binary.f32(i32 35, float %2676, float %2677)  ; FMax(a,b)
  %2679 = fsub fast float %2658, %2678
  %2680 = call float @dx.op.unary.f32(i32 7, float %2679)  ; Saturate(value)
  %2681 = fmul fast float %2680, %2622
  br label %2682

; <label>:2682                                    ; preds = %2659, %2652
  %2683 = phi float [ %2681, %2659 ], [ 0.000000e+00, %2652 ]
  %2684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %2685 = extractvalue %dx.types.CBufRet.f32 %2684, 1
  %2686 = call float @dx.op.unary.f32(i32 7, float %2685)  ; Saturate(value)
  %2687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %2688 = extractvalue %dx.types.CBufRet.f32 %2687, 0
  %2689 = extractvalue %dx.types.CBufRet.f32 %2687, 1
  %2690 = fsub fast float %2591, %2688
  %2691 = fsub fast float %2595, %2689
  %2692 = fcmp fast olt float %2690, 0.000000e+00
  %2693 = fcmp fast olt float %2691, 0.000000e+00
  %2694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %2695 = extractvalue %dx.types.CBufRet.f32 %2694, 0
  %2696 = extractvalue %dx.types.CBufRet.f32 %2694, 1
  %2697 = extractvalue %dx.types.CBufRet.f32 %2694, 2
  %2698 = extractvalue %dx.types.CBufRet.f32 %2694, 3
  %2699 = select i1 %2692, float %2695, float %2697
  %2700 = select i1 %2693, float %2696, float %2698
  %2701 = fmul fast float %2699, %2690
  %2702 = fmul fast float %2700, %2691
  %2703 = call float @dx.op.unary.f32(i32 6, float %2701)  ; FAbs(value)
  %2704 = call float @dx.op.unary.f32(i32 6, float %2702)  ; FAbs(value)
  %2705 = call float @dx.op.binary.f32(i32 35, float %2703, float %2704)  ; FMax(a,b)
  %2706 = fsub fast float %2658, %2705
  %2707 = call float @dx.op.unary.f32(i32 7, float %2706)  ; Saturate(value)
  %2708 = call float @dx.op.binary.f32(i32 36, float %2707, float %2686)  ; FMin(a,b)
  %2709 = fmul fast float %2708, %2622
  %2710 = fsub fast float %2683, %2709
  %2711 = fsub fast float %2653, %2683
  %2712 = fsub fast float %2711, %2709
  %2713 = call float @dx.op.binary.f32(i32 35, float %2683, float %2653)  ; FMax(a,b)
  %2714 = call float @dx.op.binary.f32(i32 35, float %2709, float %2713)  ; FMax(a,b)
  %2715 = fcmp fast olt float %2714, 1.000000e+00
  br i1 %2715, label %2716, label %3114, !dx.controlflow.hints !129

; <label>:2716                                    ; preds = %2682
  %2717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2718 = extractvalue %dx.types.CBufRet.f32 %2717, 0
  %2719 = fcmp fast une float %2718, 0.000000e+00
  br i1 %2719, label %2720, label %3114, !dx.controlflow.hints !130

; <label>:2720                                    ; preds = %2716
  %2721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2722 = extractvalue %dx.types.CBufRet.f32 %2721, 0
  %2723 = extractvalue %dx.types.CBufRet.f32 %2721, 1
  %2724 = extractvalue %dx.types.CBufRet.f32 %2721, 2
  %2725 = extractvalue %dx.types.CBufRet.f32 %2721, 3
  %2726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2727 = extractvalue %dx.types.CBufRet.f32 %2726, 0
  %2728 = extractvalue %dx.types.CBufRet.f32 %2726, 1
  %2729 = extractvalue %dx.types.CBufRet.f32 %2726, 2
  %2730 = extractvalue %dx.types.CBufRet.f32 %2726, 3
  %2731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2732 = extractvalue %dx.types.CBufRet.f32 %2731, 0
  %2733 = extractvalue %dx.types.CBufRet.f32 %2731, 1
  %2734 = extractvalue %dx.types.CBufRet.f32 %2731, 2
  %2735 = extractvalue %dx.types.CBufRet.f32 %2731, 3
  %2736 = fmul fast float %2722, %2568
  %2737 = call float @dx.op.tertiary.f32(i32 46, float %2569, float %2723, float %2736)  ; FMad(a,b,c)
  %2738 = call float @dx.op.tertiary.f32(i32 46, float %2570, float %2724, float %2737)  ; FMad(a,b,c)
  %2739 = fadd fast float %2738, %2725
  %2740 = fmul fast float %2727, %2568
  %2741 = call float @dx.op.tertiary.f32(i32 46, float %2569, float %2728, float %2740)  ; FMad(a,b,c)
  %2742 = call float @dx.op.tertiary.f32(i32 46, float %2570, float %2729, float %2741)  ; FMad(a,b,c)
  %2743 = fadd fast float %2742, %2730
  %2744 = fmul fast float %2732, %2568
  %2745 = call float @dx.op.tertiary.f32(i32 46, float %2569, float %2733, float %2744)  ; FMad(a,b,c)
  %2746 = call float @dx.op.tertiary.f32(i32 46, float %2570, float %2734, float %2745)  ; FMad(a,b,c)
  %2747 = fadd fast float %2746, %2735
  %2748 = fcmp fast oge float %2739, 1.000000e+00
  %2749 = fcmp fast oge float %2743, 1.000000e+00
  %2750 = or i1 %2748, %2749
  %2751 = fcmp fast olt float %2739, 0.000000e+00
  %2752 = fcmp fast olt float %2743, 0.000000e+00
  %2753 = or i1 %2751, %2752
  %2754 = or i1 %2750, %2753
  br i1 %2754, label %3114, label %2755, !dx.controlflow.hints !131

; <label>:2755                                    ; preds = %2720
  %2756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2757 = extractvalue %dx.types.CBufRet.f32 %2756, 0
  %2758 = extractvalue %dx.types.CBufRet.f32 %2756, 1
  %2759 = extractvalue %dx.types.CBufRet.f32 %2756, 2
  %2760 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2761 = extractvalue %dx.types.CBufRet.i32 %2760, 2
  %2762 = uitofp i32 %2761 to float
  %2763 = extractvalue %dx.types.CBufRet.i32 %2760, 3
  %2764 = uitofp i32 %2763 to float
  %2765 = extractvalue %dx.types.CBufRet.f32 %2756, 3
  %2766 = fmul fast float %2765, 2.000000e+00
  %2767 = fsub fast float %2739, %2757
  %2768 = fsub fast float %2743, %2758
  %2769 = fmul fast float %2766, %2767
  %2770 = fmul fast float %2766, %2768
  %2771 = fdiv fast float 1.000000e+00, %2551
  %2772 = fmul fast float %2770, %2771
  %2773 = call float @dx.op.unary.f32(i32 6, float %2772)  ; FAbs(value)
  %2774 = fmul fast float %2759, %2570
  %2775 = fmul fast float %2774, %2766
  %2776 = call float @dx.op.unary.f32(i32 6, float %2775)  ; FAbs(value)
  %2777 = call float @dx.op.unary.f32(i32 6, float %2769)  ; FAbs(value)
  %2778 = call float @dx.op.binary.f32(i32 35, float %2776, float %2773)  ; FMax(a,b)
  %2779 = call float @dx.op.binary.f32(i32 35, float %2777, float %2778)  ; FMax(a,b)
  %2780 = fmul fast float %2779, 2.000000e+00
  %2781 = call float @dx.op.unary.f32(i32 23, float %2780)  ; Log(value)
  %2782 = call float @dx.op.binary.f32(i32 35, float %2781, float %2762)  ; FMax(a,b)
  %2783 = call float @dx.op.unary.f32(i32 22, float %2782)  ; Frc(value)
  %2784 = fadd fast float %2783, 0xBFEA666660000000
  %2785 = fmul fast float %2784, 8.000000e+00
  %2786 = call float @dx.op.unary.f32(i32 7, float %2785)  ; Saturate(value)
  %2787 = call float @dx.op.unary.f32(i32 27, float %2782)  ; Round_ni(value)
  %2788 = fadd fast float %2787, %2786
  %2789 = call float @dx.op.binary.f32(i32 36, float %2788, float %2764)  ; FMin(a,b)
  %2790 = call float @dx.op.unary.f32(i32 27, float %2789)  ; Round_ni(value)
  %2791 = fsub fast float -0.000000e+00, %2790
  %2792 = call float @dx.op.unary.f32(i32 21, float %2791)  ; Exp(value)
  %2793 = fmul fast float %2792, %2766
  %2794 = fmul fast float %2793, %2739
  %2795 = fmul fast float %2793, %2743
  %2796 = fmul fast float %2794, 2.500000e-01
  %2797 = fmul fast float %2795, 2.500000e-01
  %2798 = fadd fast float %2796, 5.000000e-01
  %2799 = fadd fast float %2797, 5.000000e-01
  %2800 = fsub fast float %2764, %2762
  %2801 = fptoui float %2800 to i32
  %2802 = add i32 %2801, 320
  %2803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %2802)  ; CBufferLoadLegacy(handle,regIndex)
  %2804 = extractvalue %dx.types.CBufRet.f32 %2803, 0
  %2805 = extractvalue %dx.types.CBufRet.f32 %2803, 1
  %2806 = fcmp fast une float %2789, %2764
  %2807 = fsub fast float %2739, %2804
  %2808 = fsub fast float %2743, %2805
  %2809 = call float @dx.op.unary.f32(i32 6, float %2807)  ; FAbs(value)
  %2810 = call float @dx.op.unary.f32(i32 6, float %2808)  ; FAbs(value)
  %2811 = fmul fast float %2809, %2793
  %2812 = fmul fast float %2810, %2793
  %2813 = fcmp fast olt float %2811, 1.000000e+00
  %2814 = fcmp fast olt float %2812, 1.000000e+00
  %2815 = and i1 %2813, %2814
  %2816 = or i1 %2806, %2815
  br i1 %2816, label %2817, label %3114, !dx.controlflow.hints !132

; <label>:2817                                    ; preds = %2755
  %2818 = fmul fast float %2795, 5.000000e-01
  %2819 = fmul fast float %2794, 5.000000e-01
  %2820 = fadd fast float %2818, 5.000000e-01
  %2821 = fadd fast float %2819, 5.000000e-01
  %2822 = sitofp i32 %2761 to float
  %2823 = fsub fast float %2789, %2822
  %2824 = call float @dx.op.unary.f32(i32 27, float %2823)  ; Round_ni(value)
  %2825 = call float @dx.op.unary.f32(i32 22, float %2789)  ; Frc(value)
  %2826 = call float @dx.op.unary.f32(i32 22, float %2821)  ; Frc(value)
  %2827 = call float @dx.op.unary.f32(i32 22, float %2820)  ; Frc(value)
  %2828 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %44, float %2826, float %2827, float %2824, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2829 = extractvalue %dx.types.ResRet.f32 %2828, 0
  %2830 = extractvalue %dx.types.ResRet.f32 %2828, 1
  %2831 = extractvalue %dx.types.ResRet.f32 %2828, 2
  %2832 = extractvalue %dx.types.ResRet.f32 %2828, 3
  %2833 = fcmp fast ogt float %2825, 0.000000e+00
  br i1 %2833, label %2834, label %2855, !dx.controlflow.hints !133

; <label>:2834                                    ; preds = %2817
  %2835 = fadd fast float %2824, 1.000000e+00
  %2836 = call float @dx.op.unary.f32(i32 22, float %2798)  ; Frc(value)
  %2837 = call float @dx.op.unary.f32(i32 22, float %2799)  ; Frc(value)
  %2838 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %44, float %2836, float %2837, float %2835, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2839 = extractvalue %dx.types.ResRet.f32 %2838, 0
  %2840 = extractvalue %dx.types.ResRet.f32 %2838, 1
  %2841 = extractvalue %dx.types.ResRet.f32 %2838, 2
  %2842 = extractvalue %dx.types.ResRet.f32 %2838, 3
  %2843 = fsub fast float %2839, %2829
  %2844 = fsub fast float %2840, %2830
  %2845 = fsub fast float %2841, %2831
  %2846 = fsub fast float %2842, %2832
  %2847 = fmul fast float %2843, %2825
  %2848 = fmul fast float %2844, %2825
  %2849 = fmul fast float %2845, %2825
  %2850 = fmul fast float %2846, %2825
  %2851 = fadd fast float %2847, %2829
  %2852 = fadd fast float %2848, %2830
  %2853 = fadd fast float %2849, %2831
  %2854 = fadd fast float %2850, %2832
  br label %2855

; <label>:2855                                    ; preds = %2834, %2817
  %2856 = phi float [ %2851, %2834 ], [ %2829, %2817 ]
  %2857 = phi float [ %2852, %2834 ], [ %2830, %2817 ]
  %2858 = phi float [ %2853, %2834 ], [ %2831, %2817 ]
  %2859 = phi float [ %2854, %2834 ], [ %2832, %2817 ]
  %2860 = fadd fast float %2856, -5.000000e-01
  %2861 = fadd fast float %2858, -5.000000e-01
  %2862 = fmul fast float %2860, 0xBFD5555560000000
  %2863 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2861, float %2862)  ; FMad(a,b,c)
  %2864 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2857, float 0.000000e+00)  ; FMad(a,b,c)
  %2865 = fadd fast float %2864, %2859
  %2866 = fmul fast float %2860, -7.500000e-01
  %2867 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2861, float %2866)  ; FMad(a,b,c)
  %2868 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2857, float 0.000000e+00)  ; FMad(a,b,c)
  %2869 = fadd fast float %2868, %2859
  %2870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2871 = extractvalue %dx.types.CBufRet.f32 %2870, 0
  %2872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2873 = extractvalue %dx.types.CBufRet.f32 %2872, 0
  %2874 = extractvalue %dx.types.CBufRet.f32 %2872, 1
  %2875 = extractvalue %dx.types.CBufRet.f32 %2872, 2
  %2876 = extractvalue %dx.types.CBufRet.f32 %2872, 3
  %2877 = fsub fast float %2873, %2863
  %2878 = fsub fast float %2874, %2865
  %2879 = fsub fast float %2875, %2867
  %2880 = fsub fast float %2876, %2869
  %2881 = fmul fast float %2877, %2871
  %2882 = fmul fast float %2878, %2871
  %2883 = fmul fast float %2879, %2871
  %2884 = fmul fast float %2880, %2871
  %2885 = fadd fast float %2881, %2863
  %2886 = fadd fast float %2882, %2865
  %2887 = fadd fast float %2883, %2867
  %2888 = fadd fast float %2884, %2869
  %2889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2890 = extractvalue %dx.types.ResRet.i32 %2889, 0
  %2891 = and i32 %2890, 536870911
  %2892 = uitofp i32 %2891 to float
  %2893 = fmul fast float %2892, %2739
  %2894 = fmul fast float %2892, %2743
  %2895 = fptoui float %2893 to i32
  %2896 = fptoui float %2894 to i32
  %2897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2898 = extractvalue %dx.types.ResRet.i32 %2897, 0
  %2899 = and i32 %2898, 31
  %2900 = lshr i32 %2895, %2899
  %2901 = lshr i32 %2896, %2899
  %2902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2903 = extractvalue %dx.types.ResRet.i32 %2902, 0
  %2904 = and i32 %2903, 31
  %2905 = shl i32 1, %2904
  %2906 = call i32 @dx.op.binary.i32(i32 40, i32 %2905, i32 4)  ; UMin(a,b)
  %2907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2908 = extractvalue %dx.types.ResRet.i32 %2907, 0
  %2909 = extractvalue %dx.types.ResRet.i32 %2907, 1
  %2910 = icmp eq i32 %2906, 0
  br i1 %2910, label %2952, label %2911

; <label>:2911                                    ; preds = %2855
  br label %2912

; <label>:2912                                    ; preds = %2940, %2911
  %2913 = phi i32 [ %2943, %2940 ], [ 0, %2911 ]
  %2914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2915 = extractvalue %dx.types.ResRet.i32 %2914, 0
  %2916 = lshr i32 %2915, 16
  %2917 = and i32 %2916, 31
  %2918 = shl i32 %2901, %2917
  %2919 = add i32 %2918, %2900
  %2920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2921 = extractvalue %dx.types.ResRet.i32 %2920, 0
  %2922 = and i32 %2921, 31
  %2923 = shl i32 %2919, %2922
  %2924 = add i32 %2923, %2913
  %2925 = shl i32 %2924, 2
  %2926 = add i32 %2925, 32
  %2927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %2926, i32 undef)  ; BufferLoad(srv,index,wot)
  %2928 = extractvalue %dx.types.ResRet.i32 %2927, 0
  %2929 = icmp slt i32 %2928, 0
  %2930 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %2913
  %2931 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %2913
  %2932 = bitcast float* %2930 to i32*
  %2933 = bitcast float* %2931 to i32*
  br i1 %2929, label %2934, label %2940

; <label>:2934                                    ; preds = %2912
  %2935 = and i32 %2928, 1073741823
  %2936 = add nuw nsw i32 %2935, 20
  %2937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %2936, i32 undef)  ; BufferLoad(srv,index,wot)
  %2938 = extractvalue %dx.types.ResRet.i32 %2937, 0
  %2939 = extractvalue %dx.types.ResRet.i32 %2937, 1
  br label %2940

; <label>:2940                                    ; preds = %2934, %2912
  %2941 = phi i32 [ %2938, %2934 ], [ %2908, %2912 ]
  %2942 = phi i32 [ %2939, %2934 ], [ %2909, %2912 ]
  store i32 %2941, i32* %2932, align 4
  store i32 %2942, i32* %2933, align 4
  %2943 = add nuw i32 %2913, 1
  %2944 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2945 = extractvalue %dx.types.CBufRet.i32 %2944, 2
  %2946 = icmp eq i32 %2945, 0
  %2947 = icmp ugt i32 %2928, -1073741825
  %2948 = and i1 %2947, %2946
  %2949 = icmp ult i32 %2943, %2906
  %2950 = and i1 %2948, %2949
  br i1 %2950, label %2912, label %2951

; <label>:2951                                    ; preds = %2940
  br label %2952

; <label>:2952                                    ; preds = %2951, %2855
  %2953 = phi i32 [ 0, %2855 ], [ %2943, %2951 ]
  %2954 = extractvalue %dx.types.CBufRet.f32 %2717, 2
  %2955 = fptoui float %2954 to i32
  %2956 = icmp eq i32 %2955, 0
  br i1 %2956, label %3008, label %2957

; <label>:2957                                    ; preds = %2952
  br label %2958

; <label>:2958                                    ; preds = %3003, %2957
  %2959 = phi i32 [ %3004, %3003 ], [ %2953, %2957 ]
  %2960 = phi i32 [ %3005, %3003 ], [ 0, %2957 ]
  %2961 = lshr i32 %2960, 2
  %2962 = and i32 %2960, 3
  %2963 = add nuw nsw i32 %2961, 83
  %2964 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 %2963)  ; CBufferLoadLegacy(handle,regIndex)
  %2965 = extractvalue %dx.types.CBufRet.i32 %2964, 0
  %2966 = extractvalue %dx.types.CBufRet.i32 %2964, 1
  %2967 = extractvalue %dx.types.CBufRet.i32 %2964, 2
  %2968 = extractvalue %dx.types.CBufRet.i32 %2964, 3
  %2969 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 0
  store i32 %2965, i32* %2969, align 4
  %2970 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 1
  store i32 %2966, i32* %2970, align 4
  %2971 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 2
  store i32 %2967, i32* %2971, align 4
  %2972 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 3
  store i32 %2968, i32* %2972, align 4
  %2973 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 %2962
  %2974 = load i32, i32* %2973, align 4, !tbaa !134, !noalias !136
  %2975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2976 = extractvalue %dx.types.ResRet.i32 %2975, 0
  %2977 = lshr i32 %2976, 16
  %2978 = and i32 %2977, 31
  %2979 = shl i32 %2901, %2978
  %2980 = add i32 %2979, %2900
  %2981 = shl i32 %2980, 2
  %2982 = add i32 %2981, %2974
  %2983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %2982, i32 undef)  ; BufferLoad(srv,index,wot)
  %2984 = extractvalue %dx.types.ResRet.i32 %2983, 0
  %2985 = icmp eq i32 %2984, 0
  br i1 %2985, label %3003, label %2986

; <label>:2986                                    ; preds = %2958
  %2987 = icmp slt i32 %2984, 0
  %2988 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %2959
  %2989 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %2959
  %2990 = bitcast float* %2988 to i32*
  %2991 = bitcast float* %2989 to i32*
  br i1 %2987, label %2992, label %2999

; <label>:2992                                    ; preds = %2986
  %2993 = and i32 %2984, 1073741823
  %2994 = add i32 %2974, 20
  %2995 = add i32 %2994, %2993
  %2996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %2995, i32 undef)  ; BufferLoad(srv,index,wot)
  %2997 = extractvalue %dx.types.ResRet.i32 %2996, 0
  %2998 = extractvalue %dx.types.ResRet.i32 %2996, 1
  br label %2999

; <label>:2999                                    ; preds = %2992, %2986
  %3000 = phi i32 [ %2997, %2992 ], [ %2908, %2986 ]
  %3001 = phi i32 [ %2998, %2992 ], [ %2909, %2986 ]
  store i32 %3000, i32* %2990, align 4
  store i32 %3001, i32* %2991, align 4
  %3002 = add i32 %2959, 1
  br label %3003

; <label>:3003                                    ; preds = %2999, %2958
  %3004 = phi i32 [ %2959, %2958 ], [ %3002, %2999 ]
  %3005 = add nuw i32 %2960, 1
  %3006 = icmp eq i32 %3005, %2955
  br i1 %3006, label %3007, label %2958

; <label>:3007                                    ; preds = %3003
  br label %3008

; <label>:3008                                    ; preds = %3007, %2952
  %3009 = phi i32 [ %2953, %2952 ], [ %3004, %3007 ]
  %3010 = icmp eq i32 %3009, 1
  %3011 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 0
  %3012 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 0
  br i1 %3010, label %3013, label %3016

; <label>:3013                                    ; preds = %3008
  %3014 = load float, float* %3011, align 4
  %3015 = load float, float* %3012, align 4
  br label %3043

; <label>:3016                                    ; preds = %3008
  %3017 = load float, float* %3011, align 4
  %3018 = load float, float* %3012, align 4
  %3019 = fdiv fast float 1.000000e+00, %3018
  %3020 = fsub fast float %3017, %3019
  %3021 = icmp ugt i32 %3009, 1
  br i1 %3021, label %3022, label %3038

; <label>:3022                                    ; preds = %3016
  br label %3023

; <label>:3023                                    ; preds = %3023, %3022
  %3024 = phi float [ %3033, %3023 ], [ %3020, %3022 ]
  %3025 = phi float [ %3034, %3023 ], [ %3017, %3022 ]
  %3026 = phi i32 [ %3035, %3023 ], [ 1, %3022 ]
  %3027 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %3026
  %3028 = load float, float* %3027, align 4
  %3029 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %3026
  %3030 = load float, float* %3029, align 4
  %3031 = fdiv fast float 1.000000e+00, %3030
  %3032 = fsub fast float %3028, %3031
  %3033 = call float @dx.op.binary.f32(i32 36, float %3024, float %3032)  ; FMin(a,b)
  %3034 = call float @dx.op.binary.f32(i32 35, float %3025, float %3028)  ; FMax(a,b)
  %3035 = add nuw i32 %3026, 1
  %3036 = icmp eq i32 %3035, %3009
  br i1 %3036, label %3037, label %3023

; <label>:3037                                    ; preds = %3023
  br label %3038

; <label>:3038                                    ; preds = %3037, %3016
  %3039 = phi float [ %3020, %3016 ], [ %3033, %3037 ]
  %3040 = phi float [ %3017, %3016 ], [ %3034, %3037 ]
  %3041 = fsub fast float %3040, %3039
  %3042 = fdiv fast float 1.000000e+00, %3041
  br label %3043

; <label>:3043                                    ; preds = %3038, %3013
  %3044 = phi float [ %3014, %3013 ], [ %3040, %3038 ]
  %3045 = phi float [ %3015, %3013 ], [ %3042, %3038 ]
  %3046 = fadd fast float %2747, %3044
  %3047 = fmul fast float %3046, %3045
  %3048 = call float @dx.op.unary.f32(i32 7, float %3047)  ; Saturate(value)
  %3049 = fmul fast float %3048, 2.000000e+00
  %3050 = fsub fast float 1.000000e+00, %3049
  %3051 = fmul fast float %2885, %2885
  %3052 = fsub fast float %2886, %3051
  %3053 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %3052)  ; FMax(a,b)
  %3054 = fdiv fast float 1.000000e+00, %3053
  %3055 = fmul fast float %2886, %2885
  %3056 = fsub fast float %2887, %3055
  %3057 = fsub fast float %3050, %2885
  %3058 = fmul fast float %3050, %3050
  %3059 = fsub fast float %3058, %2886
  %3060 = fmul fast float %3054, %3056
  %3061 = fmul fast float %3060, %3057
  %3062 = fsub fast float %3059, %3061
  %3063 = fmul fast float %2886, %2886
  %3064 = fsub fast float %2888, %3063
  %3065 = fmul fast float %3056, %3056
  %3066 = fmul fast float %3065, %3054
  %3067 = fsub fast float %3064, %3066
  %3068 = fdiv fast float %3062, %3067
  %3069 = fmul fast float %3068, %3056
  %3070 = fsub fast float %3057, %3069
  %3071 = fmul fast float %3070, %3054
  %3072 = fmul fast float %3071, %2885
  %3073 = fsub fast float 1.000000e+00, %3072
  %3074 = fmul fast float %3068, %2886
  %3075 = fsub fast float %3073, %3074
  %3076 = fmul fast float %3071, %3071
  %3077 = fmul fast float %3068, 4.000000e+00
  %3078 = fmul fast float %3077, %3075
  %3079 = fsub fast float %3076, %3078
  %3080 = call float @dx.op.unary.f32(i32 24, float %3079)  ; Sqrt(value)
  %3081 = fcmp fast oge float %3071, 0.000000e+00
  %3082 = fsub fast float -0.000000e+00, %3080
  %3083 = select i1 %3081, float %3082, float %3080
  %3084 = fsub fast float %3083, %3071
  %3085 = fdiv fast float %3084, %3068
  %3086 = fdiv fast float %3075, %3084
  %3087 = fmul fast float %3085, 5.000000e-01
  %3088 = fmul fast float %3086, 2.000000e+00
  %3089 = select i1 %3081, float %3087, float %3088
  %3090 = select i1 %3081, float %3088, float %3087
  %3091 = call float @dx.op.binary.f32(i32 35, float %3089, float %3090)  ; FMax(a,b)
  %3092 = call float @dx.op.binary.f32(i32 36, float %3089, float %3090)  ; FMin(a,b)
  %3093 = fcmp fast ogt float %3050, %3091
  %3094 = fsub fast float %3050, %3092
  %3095 = fsub fast float %3050, %3091
  %3096 = fsub fast float %3091, %3092
  %3097 = select i1 %3093, float %3095, float %3096
  %3098 = fmul float %3094, %3097
  %3099 = select i1 %3093, float %3092, float %3050
  %3100 = fcmp fast ogt float %3050, %3092
  %3101 = fmul fast float %3099, %3091
  %3102 = fadd fast float %3099, %3091
  %3103 = fmul fast float %3102, %2885
  %3104 = fadd fast float %3101, %2886
  %3105 = fsub fast float %3104, %3103
  %3106 = fdiv fast float %3105, %3098
  %3107 = select i1 %3100, float %3106, float 0.000000e+00
  %3108 = fsub fast float 1.000000e+00, %3107
  %3109 = select i1 %3093, float %3108, float %3107
  %3110 = call float @dx.op.unary.f32(i32 7, float %3109)  ; Saturate(value)
  %3111 = extractvalue %dx.types.CBufRet.f32 %2870, 3
  %3112 = fmul fast float %3111, %3110
  %3113 = fsub fast float 1.000000e+00, %3112
  br label %3114

; <label>:3114                                    ; preds = %3043, %2755, %2720, %2716, %2682
  %3115 = phi float [ 1.000000e+00, %2682 ], [ %3113, %3043 ], [ 1.000000e+00, %2720 ], [ 1.000000e+00, %2755 ], [ 1.000000e+00, %2716 ]
  %3116 = fcmp fast ogt float %2712, 0.000000e+00
  br i1 %3116, label %3117, label %3279, !dx.controlflow.hints !145

; <label>:3117                                    ; preds = %3114
  %3118 = fadd fast float %2625, %2599
  %3119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3120 = extractvalue %dx.types.CBufRet.f32 %3119, 2
  %3121 = extractvalue %dx.types.CBufRet.f32 %3119, 3
  %3122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3123 = extractvalue %dx.types.CBufRet.f32 %3122, 2
  %3124 = call float @dx.op.binary.f32(i32 35, float %3118, float 0.000000e+00)  ; FMax(a,b)
  %3125 = fadd fast float %3124, 0x3F10000000000000
  %3126 = fcmp fast oeq float %3123, 0.000000e+00
  br i1 %3126, label %3127, label %3194

; <label>:3127                                    ; preds = %3117
  %3128 = extractvalue %dx.types.CBufRet.f32 %3119, 1
  %3129 = extractvalue %dx.types.CBufRet.f32 %3119, 0
  %3130 = fmul fast float %3129, %2614
  %3131 = fmul fast float %3128, %2615
  %3132 = fadd fast float %3130, 5.000000e-01
  %3133 = call float @dx.op.unary.f32(i32 27, float %3132)  ; Round_ni(value)
  %3134 = fadd fast float %3131, 5.000000e-01
  %3135 = call float @dx.op.unary.f32(i32 27, float %3134)  ; Round_ni(value)
  %3136 = fsub fast float %3132, %3133
  %3137 = fsub fast float %3134, %3135
  %3138 = fadd fast float %3133, -5.000000e-01
  %3139 = fadd fast float %3135, -5.000000e-01
  %3140 = fmul fast float %3136, 2.000000e+00
  %3141 = fsub fast float 3.000000e+00, %3140
  %3142 = fadd fast float %3140, 1.000000e+00
  %3143 = fsub fast float 2.000000e+00, %3136
  %3144 = bitcast float %3141 to i32
  %3145 = sub nsw i32 2129859010, %3144
  %3146 = bitcast i32 %3145 to float
  %3147 = fmul fast float %3146, %3143
  %3148 = fadd fast float %3147, -1.000000e+00
  %3149 = bitcast float %3142 to i32
  %3150 = sub nsw i32 2129859010, %3149
  %3151 = bitcast i32 %3150 to float
  %3152 = fmul fast float %3151, %3136
  %3153 = fadd fast float %3152, 1.000000e+00
  %3154 = fmul fast float %3137, 2.000000e+00
  %3155 = fsub fast float 3.000000e+00, %3154
  %3156 = fadd fast float %3154, 1.000000e+00
  %3157 = fsub fast float 2.000000e+00, %3137
  %3158 = bitcast float %3155 to i32
  %3159 = sub nsw i32 2129859010, %3158
  %3160 = bitcast i32 %3159 to float
  %3161 = fmul fast float %3160, %3157
  %3162 = fadd fast float %3161, -1.000000e+00
  %3163 = bitcast float %3156 to i32
  %3164 = sub nsw i32 2129859010, %3163
  %3165 = bitcast i32 %3164 to float
  %3166 = fmul fast float %3165, %3137
  %3167 = fadd fast float %3166, 1.000000e+00
  %3168 = fadd fast float %3148, %3138
  %3169 = fmul fast float %3168, %3120
  %3170 = fadd fast float %3162, %3139
  %3171 = fmul fast float %3170, %3121
  %3172 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %47, float %3169, float %3171, float undef, float undef, i32 0, i32 0, i32 undef, float %3125)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3173 = extractvalue %dx.types.ResRet.f32 %3172, 0
  %3174 = fmul fast float %3173, %3141
  %3175 = fadd fast float %3153, %3138
  %3176 = fmul fast float %3175, %3120
  %3177 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %47, float %3176, float %3171, float undef, float undef, i32 0, i32 0, i32 undef, float %3125)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3178 = extractvalue %dx.types.ResRet.f32 %3177, 0
  %3179 = fmul fast float %3178, %3142
  %3180 = fadd fast float %3167, %3139
  %3181 = fmul fast float %3180, %3121
  %3182 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %47, float %3169, float %3181, float undef, float undef, i32 0, i32 0, i32 undef, float %3125)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3183 = extractvalue %dx.types.ResRet.f32 %3182, 0
  %3184 = fmul fast float %3183, %3141
  %3185 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %47, float %3176, float %3181, float undef, float undef, i32 0, i32 0, i32 undef, float %3125)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3186 = extractvalue %dx.types.ResRet.f32 %3185, 0
  %3187 = fmul fast float %3186, %3142
  %3188 = fadd fast float %3187, %3184
  %3189 = fmul fast float %3188, %3156
  %3190 = fadd fast float %3179, %3174
  %3191 = fmul fast float %3190, %3155
  %3192 = fadd fast float %3191, %3189
  %3193 = fmul fast float %3192, 6.250000e-02
  br label %3279

; <label>:3194                                    ; preds = %3117
  %3195 = fmul fast float %356, 0x401921FB60000000
  %3196 = call float @dx.op.unary.f32(i32 13, float %3195)  ; Sin(value)
  %3197 = call float @dx.op.unary.f32(i32 12, float %3195)  ; Cos(value)
  %3198 = fsub fast float -0.000000e+00, %3196
  br label %3199

; <label>:3199                                    ; preds = %3248, %3194
  %3200 = phi float [ 0.000000e+00, %3194 ], [ %3243, %3248 ]
  %3201 = phi float [ 0.000000e+00, %3194 ], [ %3245, %3248 ]
  %3202 = phi i32 [ 0, %3194 ], [ %3249, %3248 ]
  %3203 = mul i32 %3202, 2
  %3204 = add i32 0, %3203
  %3205 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3204
  %3206 = load float, float* %3205, align 4
  %3207 = mul i32 %3202, 2
  %3208 = add i32 1, %3207
  %3209 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3208
  %3210 = load float, float* %3209, align 4
  %3211 = fmul fast float %3206, %3197
  %3212 = call float @dx.op.tertiary.f32(i32 46, float %3210, float %3198, float %3211)  ; FMad(a,b,c)
  %3213 = fmul fast float %3206, %3196
  %3214 = call float @dx.op.tertiary.f32(i32 46, float %3210, float %3197, float %3213)  ; FMad(a,b,c)
  %3215 = fmul fast float %3212, %3123
  %3216 = fmul fast float %3214, %3123
  %3217 = fadd fast float %3215, %2614
  %3218 = fadd fast float %3216, %2615
  %3219 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %46, float %3217, float %3218, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3220 = extractvalue %dx.types.ResRet.f32 %3219, 0
  %3221 = extractvalue %dx.types.ResRet.f32 %3219, 1
  %3222 = extractvalue %dx.types.ResRet.f32 %3219, 2
  %3223 = extractvalue %dx.types.ResRet.f32 %3219, 3
  %3224 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 0
  store float %3220, float* %3224, align 4
  %3225 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 1
  store float %3221, float* %3225, align 4
  %3226 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 2
  store float %3222, float* %3226, align 4
  %3227 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 3
  store float %3223, float* %3227, align 4
  %3228 = fsub fast float %3220, %3125
  %3229 = fcmp fast olt float %3228, 0.000000e+00
  %3230 = select i1 %3229, float 0.000000e+00, float 1.000000e+00
  %3231 = fadd fast float %3230, %3200
  %3232 = fmul fast float %3230, %3228
  %3233 = fadd fast float %3232, %3201
  br label %3234

; <label>:3234                                    ; preds = %3234, %3199
  %3235 = phi i32 [ 1, %3199 ], [ %3246, %3234 ]
  %3236 = phi float [ %3233, %3199 ], [ %3245, %3234 ]
  %3237 = phi float [ %3231, %3199 ], [ %3243, %3234 ]
  %3238 = getelementptr [4 x float], [4 x float]* %93, i32 0, i32 %3235
  %3239 = load float, float* %3238, align 4, !tbaa !110, !noalias !136
  %3240 = fsub fast float %3239, %3125
  %3241 = fcmp fast olt float %3240, 0.000000e+00
  %3242 = select i1 %3241, float 0.000000e+00, float 1.000000e+00
  %3243 = fadd fast float %3242, %3237
  %3244 = fmul fast float %3242, %3240
  %3245 = fadd fast float %3244, %3236
  %3246 = add nuw nsw i32 %3235, 1
  %3247 = icmp eq i32 %3246, 4
  br i1 %3247, label %3248, label %3234, !llvm.loop !146

; <label>:3248                                    ; preds = %3234
  %3249 = add nuw nsw i32 %3202, 1
  %3250 = icmp eq i32 %3249, 8
  br i1 %3250, label %3251, label %3199, !llvm.loop !147

; <label>:3251                                    ; preds = %3248
  %3252 = fdiv fast float 1.000000e+00, %3243
  %3253 = fmul fast float %3252, %3245
  %3254 = fdiv fast float 1.000000e+00, %3125
  %3255 = fmul fast float %3253, %3254
  %3256 = call float @dx.op.unary.f32(i32 7, float %3255)  ; Saturate(value)
  %3257 = call float @dx.op.binary.f32(i32 35, float %3256, float 0.000000e+00)  ; FMax(a,b)
  %3258 = fmul fast float %3243, 3.125000e-02
  %3259 = call float @dx.op.unary.f32(i32 7, float %3258)  ; Saturate(value)
  %3260 = fmul fast float %3259, 2.000000e+00
  %3261 = fadd fast float %3260, -1.000000e+00
  %3262 = fcmp fast ogt float %3261, 0.000000e+00
  %3263 = fcmp fast olt float %3261, 0.000000e+00
  %3264 = zext i1 %3262 to i32
  %3265 = zext i1 %3263 to i32
  %3266 = sub nsw i32 %3264, %3265
  %3267 = sitofp i32 %3266 to float
  %3268 = fmul fast float %3267, %3261
  %3269 = fsub fast float 1.000000e+00, %3268
  %3270 = fmul fast float %3269, %3269
  %3271 = fmul fast float %3270, %3269
  %3272 = fsub fast float %3269, %3271
  %3273 = fmul fast float %3272, %3257
  %3274 = fsub fast float 1.000000e+00, %3271
  %3275 = fsub fast float %3274, %3273
  %3276 = fmul fast float %3267, 5.000000e-01
  %3277 = fmul fast float %3276, %3275
  %3278 = fsub fast float 5.000000e-01, %3277
  br label %3279

; <label>:3279                                    ; preds = %3251, %3127, %3114
  %3280 = phi float [ 1.000000e+00, %3114 ], [ %3193, %3127 ], [ %3278, %3251 ]
  %3281 = fcmp fast ogt float %2710, 0.000000e+00
  br i1 %3281, label %3282, label %3446, !dx.controlflow.hints !148

; <label>:3282                                    ; preds = %3279
  %3283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3284 = extractvalue %dx.types.CBufRet.f32 %3283, 1
  %3285 = fadd fast float %3284, %2599
  %3286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3287 = extractvalue %dx.types.CBufRet.f32 %3286, 2
  %3288 = extractvalue %dx.types.CBufRet.f32 %3286, 3
  %3289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3290 = extractvalue %dx.types.CBufRet.f32 %3289, 1
  %3291 = call float @dx.op.binary.f32(i32 35, float %3285, float 0.000000e+00)  ; FMax(a,b)
  %3292 = fadd fast float %3291, 0x3F10000000000000
  %3293 = fcmp fast oeq float %3290, 0.000000e+00
  br i1 %3293, label %3294, label %3361

; <label>:3294                                    ; preds = %3282
  %3295 = extractvalue %dx.types.CBufRet.f32 %3286, 1
  %3296 = extractvalue %dx.types.CBufRet.f32 %3286, 0
  %3297 = fmul fast float %3296, %2606
  %3298 = fmul fast float %3295, %2607
  %3299 = fadd fast float %3297, 5.000000e-01
  %3300 = call float @dx.op.unary.f32(i32 27, float %3299)  ; Round_ni(value)
  %3301 = fadd fast float %3298, 5.000000e-01
  %3302 = call float @dx.op.unary.f32(i32 27, float %3301)  ; Round_ni(value)
  %3303 = fsub fast float %3299, %3300
  %3304 = fsub fast float %3301, %3302
  %3305 = fadd fast float %3300, -5.000000e-01
  %3306 = fadd fast float %3302, -5.000000e-01
  %3307 = fmul fast float %3303, 2.000000e+00
  %3308 = fsub fast float 3.000000e+00, %3307
  %3309 = fadd fast float %3307, 1.000000e+00
  %3310 = fsub fast float 2.000000e+00, %3303
  %3311 = bitcast float %3308 to i32
  %3312 = sub nsw i32 2129859010, %3311
  %3313 = bitcast i32 %3312 to float
  %3314 = fmul fast float %3313, %3310
  %3315 = fadd fast float %3314, -1.000000e+00
  %3316 = bitcast float %3309 to i32
  %3317 = sub nsw i32 2129859010, %3316
  %3318 = bitcast i32 %3317 to float
  %3319 = fmul fast float %3318, %3303
  %3320 = fadd fast float %3319, 1.000000e+00
  %3321 = fmul fast float %3304, 2.000000e+00
  %3322 = fsub fast float 3.000000e+00, %3321
  %3323 = fadd fast float %3321, 1.000000e+00
  %3324 = fsub fast float 2.000000e+00, %3304
  %3325 = bitcast float %3322 to i32
  %3326 = sub nsw i32 2129859010, %3325
  %3327 = bitcast i32 %3326 to float
  %3328 = fmul fast float %3327, %3324
  %3329 = fadd fast float %3328, -1.000000e+00
  %3330 = bitcast float %3323 to i32
  %3331 = sub nsw i32 2129859010, %3330
  %3332 = bitcast i32 %3331 to float
  %3333 = fmul fast float %3332, %3304
  %3334 = fadd fast float %3333, 1.000000e+00
  %3335 = fadd fast float %3315, %3305
  %3336 = fmul fast float %3335, %3287
  %3337 = fadd fast float %3329, %3306
  %3338 = fmul fast float %3337, %3288
  %3339 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %47, float %3336, float %3338, float undef, float undef, i32 0, i32 0, i32 undef, float %3292)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3340 = extractvalue %dx.types.ResRet.f32 %3339, 0
  %3341 = fmul fast float %3340, %3308
  %3342 = fadd fast float %3320, %3305
  %3343 = fmul fast float %3342, %3287
  %3344 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %47, float %3343, float %3338, float undef, float undef, i32 0, i32 0, i32 undef, float %3292)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3345 = extractvalue %dx.types.ResRet.f32 %3344, 0
  %3346 = fmul fast float %3345, %3309
  %3347 = fadd fast float %3334, %3306
  %3348 = fmul fast float %3347, %3288
  %3349 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %47, float %3336, float %3348, float undef, float undef, i32 0, i32 0, i32 undef, float %3292)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3350 = extractvalue %dx.types.ResRet.f32 %3349, 0
  %3351 = fmul fast float %3350, %3308
  %3352 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %47, float %3343, float %3348, float undef, float undef, i32 0, i32 0, i32 undef, float %3292)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3353 = extractvalue %dx.types.ResRet.f32 %3352, 0
  %3354 = fmul fast float %3353, %3309
  %3355 = fadd fast float %3354, %3351
  %3356 = fmul fast float %3355, %3323
  %3357 = fadd fast float %3346, %3341
  %3358 = fmul fast float %3357, %3322
  %3359 = fadd fast float %3358, %3356
  %3360 = fmul fast float %3359, 6.250000e-02
  br label %3446

; <label>:3361                                    ; preds = %3282
  %3362 = fmul fast float %356, 0x401921FB60000000
  %3363 = call float @dx.op.unary.f32(i32 13, float %3362)  ; Sin(value)
  %3364 = call float @dx.op.unary.f32(i32 12, float %3362)  ; Cos(value)
  %3365 = fsub fast float -0.000000e+00, %3363
  br label %3366

; <label>:3366                                    ; preds = %3415, %3361
  %3367 = phi float [ 0.000000e+00, %3361 ], [ %3410, %3415 ]
  %3368 = phi float [ 0.000000e+00, %3361 ], [ %3412, %3415 ]
  %3369 = phi i32 [ 0, %3361 ], [ %3416, %3415 ]
  %3370 = mul i32 %3369, 2
  %3371 = add i32 0, %3370
  %3372 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3371
  %3373 = load float, float* %3372, align 4
  %3374 = mul i32 %3369, 2
  %3375 = add i32 1, %3374
  %3376 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3375
  %3377 = load float, float* %3376, align 4
  %3378 = fmul fast float %3373, %3364
  %3379 = call float @dx.op.tertiary.f32(i32 46, float %3377, float %3365, float %3378)  ; FMad(a,b,c)
  %3380 = fmul fast float %3373, %3363
  %3381 = call float @dx.op.tertiary.f32(i32 46, float %3377, float %3364, float %3380)  ; FMad(a,b,c)
  %3382 = fmul fast float %3379, %3290
  %3383 = fmul fast float %3381, %3290
  %3384 = fadd fast float %3382, %2606
  %3385 = fadd fast float %3383, %2607
  %3386 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %46, float %3384, float %3385, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3387 = extractvalue %dx.types.ResRet.f32 %3386, 0
  %3388 = extractvalue %dx.types.ResRet.f32 %3386, 1
  %3389 = extractvalue %dx.types.ResRet.f32 %3386, 2
  %3390 = extractvalue %dx.types.ResRet.f32 %3386, 3
  %3391 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 0
  store float %3387, float* %3391, align 4
  %3392 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 1
  store float %3388, float* %3392, align 4
  %3393 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 2
  store float %3389, float* %3393, align 4
  %3394 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 3
  store float %3390, float* %3394, align 4
  %3395 = fsub fast float %3387, %3292
  %3396 = fcmp fast olt float %3395, 0.000000e+00
  %3397 = select i1 %3396, float 0.000000e+00, float 1.000000e+00
  %3398 = fadd fast float %3397, %3367
  %3399 = fmul fast float %3397, %3395
  %3400 = fadd fast float %3399, %3368
  br label %3401

; <label>:3401                                    ; preds = %3401, %3366
  %3402 = phi i32 [ 1, %3366 ], [ %3413, %3401 ]
  %3403 = phi float [ %3400, %3366 ], [ %3412, %3401 ]
  %3404 = phi float [ %3398, %3366 ], [ %3410, %3401 ]
  %3405 = getelementptr [4 x float], [4 x float]* %92, i32 0, i32 %3402
  %3406 = load float, float* %3405, align 4, !tbaa !110, !noalias !136
  %3407 = fsub fast float %3406, %3292
  %3408 = fcmp fast olt float %3407, 0.000000e+00
  %3409 = select i1 %3408, float 0.000000e+00, float 1.000000e+00
  %3410 = fadd fast float %3409, %3404
  %3411 = fmul fast float %3409, %3407
  %3412 = fadd fast float %3411, %3403
  %3413 = add nuw nsw i32 %3402, 1
  %3414 = icmp eq i32 %3413, 4
  br i1 %3414, label %3415, label %3401, !llvm.loop !146

; <label>:3415                                    ; preds = %3401
  %3416 = add nuw nsw i32 %3369, 1
  %3417 = icmp eq i32 %3416, 8
  br i1 %3417, label %3418, label %3366, !llvm.loop !147

; <label>:3418                                    ; preds = %3415
  %3419 = fdiv fast float 1.000000e+00, %3410
  %3420 = fmul fast float %3419, %3412
  %3421 = fdiv fast float 1.000000e+00, %3292
  %3422 = fmul fast float %3420, %3421
  %3423 = call float @dx.op.unary.f32(i32 7, float %3422)  ; Saturate(value)
  %3424 = call float @dx.op.binary.f32(i32 35, float %3423, float 0.000000e+00)  ; FMax(a,b)
  %3425 = fmul fast float %3410, 3.125000e-02
  %3426 = call float @dx.op.unary.f32(i32 7, float %3425)  ; Saturate(value)
  %3427 = fmul fast float %3426, 2.000000e+00
  %3428 = fadd fast float %3427, -1.000000e+00
  %3429 = fcmp fast ogt float %3428, 0.000000e+00
  %3430 = fcmp fast olt float %3428, 0.000000e+00
  %3431 = zext i1 %3429 to i32
  %3432 = zext i1 %3430 to i32
  %3433 = sub nsw i32 %3431, %3432
  %3434 = sitofp i32 %3433 to float
  %3435 = fmul fast float %3434, %3428
  %3436 = fsub fast float 1.000000e+00, %3435
  %3437 = fmul fast float %3436, %3436
  %3438 = fmul fast float %3437, %3436
  %3439 = fsub fast float %3436, %3438
  %3440 = fmul fast float %3439, %3424
  %3441 = fsub fast float 1.000000e+00, %3438
  %3442 = fsub fast float %3441, %3440
  %3443 = fmul fast float %3434, 5.000000e-01
  %3444 = fmul fast float %3443, %3442
  %3445 = fsub fast float 5.000000e-01, %3444
  br label %3446

; <label>:3446                                    ; preds = %3418, %3294, %3279
  %3447 = phi float [ 1.000000e+00, %3279 ], [ %3360, %3294 ], [ %3445, %3418 ]
  %3448 = fcmp fast ogt float %2709, 0.000000e+00
  br i1 %3448, label %3449, label %3613, !dx.controlflow.hints !149

; <label>:3449                                    ; preds = %3446
  %3450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3451 = extractvalue %dx.types.CBufRet.f32 %3450, 0
  %3452 = fadd fast float %3451, %2599
  %3453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3454 = extractvalue %dx.types.CBufRet.f32 %3453, 2
  %3455 = extractvalue %dx.types.CBufRet.f32 %3453, 3
  %3456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3457 = extractvalue %dx.types.CBufRet.f32 %3456, 0
  %3458 = call float @dx.op.binary.f32(i32 35, float %3452, float 0.000000e+00)  ; FMax(a,b)
  %3459 = fadd fast float %3458, 0x3F10000000000000
  %3460 = fcmp fast oeq float %3457, 0.000000e+00
  br i1 %3460, label %3461, label %3528

; <label>:3461                                    ; preds = %3449
  %3462 = extractvalue %dx.types.CBufRet.f32 %3453, 1
  %3463 = extractvalue %dx.types.CBufRet.f32 %3453, 0
  %3464 = fmul fast float %3463, %2591
  %3465 = fmul fast float %3462, %2595
  %3466 = fadd fast float %3464, 5.000000e-01
  %3467 = call float @dx.op.unary.f32(i32 27, float %3466)  ; Round_ni(value)
  %3468 = fadd fast float %3465, 5.000000e-01
  %3469 = call float @dx.op.unary.f32(i32 27, float %3468)  ; Round_ni(value)
  %3470 = fsub fast float %3466, %3467
  %3471 = fsub fast float %3468, %3469
  %3472 = fadd fast float %3467, -5.000000e-01
  %3473 = fadd fast float %3469, -5.000000e-01
  %3474 = fmul fast float %3470, 2.000000e+00
  %3475 = fsub fast float 3.000000e+00, %3474
  %3476 = fadd fast float %3474, 1.000000e+00
  %3477 = fsub fast float 2.000000e+00, %3470
  %3478 = bitcast float %3475 to i32
  %3479 = sub nsw i32 2129859010, %3478
  %3480 = bitcast i32 %3479 to float
  %3481 = fmul fast float %3480, %3477
  %3482 = fadd fast float %3481, -1.000000e+00
  %3483 = bitcast float %3476 to i32
  %3484 = sub nsw i32 2129859010, %3483
  %3485 = bitcast i32 %3484 to float
  %3486 = fmul fast float %3485, %3470
  %3487 = fadd fast float %3486, 1.000000e+00
  %3488 = fmul fast float %3471, 2.000000e+00
  %3489 = fsub fast float 3.000000e+00, %3488
  %3490 = fadd fast float %3488, 1.000000e+00
  %3491 = fsub fast float 2.000000e+00, %3471
  %3492 = bitcast float %3489 to i32
  %3493 = sub nsw i32 2129859010, %3492
  %3494 = bitcast i32 %3493 to float
  %3495 = fmul fast float %3494, %3491
  %3496 = fadd fast float %3495, -1.000000e+00
  %3497 = bitcast float %3490 to i32
  %3498 = sub nsw i32 2129859010, %3497
  %3499 = bitcast i32 %3498 to float
  %3500 = fmul fast float %3499, %3471
  %3501 = fadd fast float %3500, 1.000000e+00
  %3502 = fadd fast float %3482, %3472
  %3503 = fmul fast float %3502, %3454
  %3504 = fadd fast float %3496, %3473
  %3505 = fmul fast float %3504, %3455
  %3506 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %47, float %3503, float %3505, float undef, float undef, i32 0, i32 0, i32 undef, float %3459)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3507 = extractvalue %dx.types.ResRet.f32 %3506, 0
  %3508 = fmul fast float %3507, %3475
  %3509 = fadd fast float %3487, %3472
  %3510 = fmul fast float %3509, %3454
  %3511 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %47, float %3510, float %3505, float undef, float undef, i32 0, i32 0, i32 undef, float %3459)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3512 = extractvalue %dx.types.ResRet.f32 %3511, 0
  %3513 = fmul fast float %3512, %3476
  %3514 = fadd fast float %3501, %3473
  %3515 = fmul fast float %3514, %3455
  %3516 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %47, float %3503, float %3515, float undef, float undef, i32 0, i32 0, i32 undef, float %3459)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3517 = extractvalue %dx.types.ResRet.f32 %3516, 0
  %3518 = fmul fast float %3517, %3475
  %3519 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %47, float %3510, float %3515, float undef, float undef, i32 0, i32 0, i32 undef, float %3459)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3520 = extractvalue %dx.types.ResRet.f32 %3519, 0
  %3521 = fmul fast float %3520, %3476
  %3522 = fadd fast float %3521, %3518
  %3523 = fmul fast float %3522, %3490
  %3524 = fadd fast float %3513, %3508
  %3525 = fmul fast float %3524, %3489
  %3526 = fadd fast float %3525, %3523
  %3527 = fmul fast float %3526, 6.250000e-02
  br label %3613

; <label>:3528                                    ; preds = %3449
  %3529 = fmul fast float %356, 0x401921FB60000000
  %3530 = call float @dx.op.unary.f32(i32 13, float %3529)  ; Sin(value)
  %3531 = call float @dx.op.unary.f32(i32 12, float %3529)  ; Cos(value)
  %3532 = fsub fast float -0.000000e+00, %3530
  br label %3533

; <label>:3533                                    ; preds = %3582, %3528
  %3534 = phi float [ 0.000000e+00, %3528 ], [ %3577, %3582 ]
  %3535 = phi float [ 0.000000e+00, %3528 ], [ %3579, %3582 ]
  %3536 = phi i32 [ 0, %3528 ], [ %3583, %3582 ]
  %3537 = mul i32 %3536, 2
  %3538 = add i32 0, %3537
  %3539 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3538
  %3540 = load float, float* %3539, align 4
  %3541 = mul i32 %3536, 2
  %3542 = add i32 1, %3541
  %3543 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3542
  %3544 = load float, float* %3543, align 4
  %3545 = fmul fast float %3540, %3531
  %3546 = call float @dx.op.tertiary.f32(i32 46, float %3544, float %3532, float %3545)  ; FMad(a,b,c)
  %3547 = fmul fast float %3540, %3530
  %3548 = call float @dx.op.tertiary.f32(i32 46, float %3544, float %3531, float %3547)  ; FMad(a,b,c)
  %3549 = fmul fast float %3546, %3457
  %3550 = fmul fast float %3548, %3457
  %3551 = fadd fast float %3549, %2591
  %3552 = fadd fast float %3550, %2595
  %3553 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %12, %dx.types.Handle %46, float %3551, float %3552, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3554 = extractvalue %dx.types.ResRet.f32 %3553, 0
  %3555 = extractvalue %dx.types.ResRet.f32 %3553, 1
  %3556 = extractvalue %dx.types.ResRet.f32 %3553, 2
  %3557 = extractvalue %dx.types.ResRet.f32 %3553, 3
  %3558 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 0
  store float %3554, float* %3558, align 4
  %3559 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 1
  store float %3555, float* %3559, align 4
  %3560 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 2
  store float %3556, float* %3560, align 4
  %3561 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 3
  store float %3557, float* %3561, align 4
  %3562 = fsub fast float %3554, %3459
  %3563 = fcmp fast olt float %3562, 0.000000e+00
  %3564 = select i1 %3563, float 0.000000e+00, float 1.000000e+00
  %3565 = fadd fast float %3564, %3534
  %3566 = fmul fast float %3564, %3562
  %3567 = fadd fast float %3566, %3535
  br label %3568

; <label>:3568                                    ; preds = %3568, %3533
  %3569 = phi i32 [ 1, %3533 ], [ %3580, %3568 ]
  %3570 = phi float [ %3567, %3533 ], [ %3579, %3568 ]
  %3571 = phi float [ %3565, %3533 ], [ %3577, %3568 ]
  %3572 = getelementptr [4 x float], [4 x float]* %91, i32 0, i32 %3569
  %3573 = load float, float* %3572, align 4, !tbaa !110, !noalias !136
  %3574 = fsub fast float %3573, %3459
  %3575 = fcmp fast olt float %3574, 0.000000e+00
  %3576 = select i1 %3575, float 0.000000e+00, float 1.000000e+00
  %3577 = fadd fast float %3576, %3571
  %3578 = fmul fast float %3576, %3574
  %3579 = fadd fast float %3578, %3570
  %3580 = add nuw nsw i32 %3569, 1
  %3581 = icmp eq i32 %3580, 4
  br i1 %3581, label %3582, label %3568, !llvm.loop !146

; <label>:3582                                    ; preds = %3568
  %3583 = add nuw nsw i32 %3536, 1
  %3584 = icmp eq i32 %3583, 8
  br i1 %3584, label %3585, label %3533, !llvm.loop !147

; <label>:3585                                    ; preds = %3582
  %3586 = fdiv fast float 1.000000e+00, %3577
  %3587 = fmul fast float %3586, %3579
  %3588 = fdiv fast float 1.000000e+00, %3459
  %3589 = fmul fast float %3587, %3588
  %3590 = call float @dx.op.unary.f32(i32 7, float %3589)  ; Saturate(value)
  %3591 = call float @dx.op.binary.f32(i32 35, float %3590, float 0.000000e+00)  ; FMax(a,b)
  %3592 = fmul fast float %3577, 3.125000e-02
  %3593 = call float @dx.op.unary.f32(i32 7, float %3592)  ; Saturate(value)
  %3594 = fmul fast float %3593, 2.000000e+00
  %3595 = fadd fast float %3594, -1.000000e+00
  %3596 = fcmp fast ogt float %3595, 0.000000e+00
  %3597 = fcmp fast olt float %3595, 0.000000e+00
  %3598 = zext i1 %3596 to i32
  %3599 = zext i1 %3597 to i32
  %3600 = sub nsw i32 %3598, %3599
  %3601 = sitofp i32 %3600 to float
  %3602 = fmul fast float %3601, %3595
  %3603 = fsub fast float 1.000000e+00, %3602
  %3604 = fmul fast float %3603, %3603
  %3605 = fmul fast float %3604, %3603
  %3606 = fsub fast float %3603, %3605
  %3607 = fmul fast float %3606, %3591
  %3608 = fsub fast float 1.000000e+00, %3605
  %3609 = fsub fast float %3608, %3607
  %3610 = fmul fast float %3601, 5.000000e-01
  %3611 = fmul fast float %3610, %3609
  %3612 = fsub fast float 5.000000e-01, %3611
  br label %3613

; <label>:3613                                    ; preds = %3585, %3461, %3446
  %3614 = phi float [ 1.000000e+00, %3446 ], [ %3527, %3461 ], [ %3612, %3585 ]
  %3615 = fsub fast float %3280, %3115
  %3616 = fmul fast float %3615, %2653
  %3617 = fadd fast float %3616, %3115
  %3618 = fsub fast float %3447, %3617
  %3619 = fmul fast float %3618, %2683
  %3620 = fadd fast float %3619, %3617
  %3621 = fsub fast float %3614, %3620
  %3622 = fmul fast float %3621, %2709
  %3623 = fadd fast float %3622, %3620
  %3624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %3625 = extractvalue %dx.types.CBufRet.f32 %3624, 2
  %3626 = fcmp fast ogt float %3625, 0.000000e+00
  br i1 %3626, label %3627, label %3667, !dx.controlflow.hints !150

; <label>:3627                                    ; preds = %3613
  %3628 = fcmp fast ugt float %3625, 0.000000e+00
  br i1 %3628, label %3629, label %3664

; <label>:3629                                    ; preds = %3627
  %3630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %3631 = extractvalue %dx.types.CBufRet.f32 %3630, 0
  %3632 = extractvalue %dx.types.CBufRet.f32 %3630, 1
  %3633 = extractvalue %dx.types.CBufRet.f32 %3630, 2
  %3634 = extractvalue %dx.types.CBufRet.f32 %3630, 3
  %3635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %3636 = extractvalue %dx.types.CBufRet.f32 %3635, 0
  %3637 = extractvalue %dx.types.CBufRet.f32 %3635, 1
  %3638 = extractvalue %dx.types.CBufRet.f32 %3635, 2
  %3639 = extractvalue %dx.types.CBufRet.f32 %3635, 3
  %3640 = extractvalue %dx.types.CBufRet.f32 %3624, 0
  %3641 = extractvalue %dx.types.CBufRet.f32 %3624, 1
  %3642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3643 = extractvalue %dx.types.CBufRet.f32 %3642, 0
  %3644 = extractvalue %dx.types.CBufRet.f32 %3642, 1
  %3645 = extractvalue %dx.types.CBufRet.f32 %3642, 2
  %3646 = fadd fast float %3643, %2568
  %3647 = fadd fast float %3644, %2569
  %3648 = fadd fast float %3645, %2570
  %3649 = fmul fast float %3646, %3631
  %3650 = call float @dx.op.tertiary.f32(i32 46, float %3632, float %3647, float %3649)  ; FMad(a,b,c)
  %3651 = call float @dx.op.tertiary.f32(i32 46, float %3633, float %3648, float %3650)  ; FMad(a,b,c)
  %3652 = fadd fast float %3651, %3634
  %3653 = fmul fast float %3646, %3636
  %3654 = call float @dx.op.tertiary.f32(i32 46, float %3637, float %3647, float %3653)  ; FMad(a,b,c)
  %3655 = call float @dx.op.tertiary.f32(i32 46, float %3638, float %3648, float %3654)  ; FMad(a,b,c)
  %3656 = fadd fast float %3655, %3639
  %3657 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %42, float %3652, float %3656, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3658 = extractvalue %dx.types.ResRet.f32 %3657, 0
  %3659 = fmul fast float %3658, %3641
  %3660 = fadd fast float %3659, %3640
  %3661 = call float @dx.op.unary.f32(i32 7, float %3660)  ; Saturate(value)
  %3662 = fmul fast float %3661, %3625
  %3663 = fsub fast float 1.000000e+00, %3662
  br label %3664

; <label>:3664                                    ; preds = %3629, %3627
  %3665 = phi float [ %3663, %3629 ], [ 1.000000e+00, %3627 ]
  %3666 = fmul fast float %3665, %3623
  br label %3667

; <label>:3667                                    ; preds = %3664, %3613, %2548
  %3668 = phi float [ 1.000000e+00, %2548 ], [ %3666, %3664 ], [ %3623, %3613 ]
  %3669 = call float @dx.op.binary.f32(i32 36, float %3668, float %3668)  ; FMin(a,b)
  %3670 = call float @dx.op.binary.f32(i32 36, float %3668, float %3669)  ; FMin(a,b)
  %3671 = fcmp fast ogt float %3670, 0.000000e+00
  br i1 %3671, label %3672, label %3837, !dx.controlflow.hints !151

; <label>:3672                                    ; preds = %3667
  %3673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3674 = extractvalue %dx.types.CBufRet.f32 %3673, 0
  %3675 = extractvalue %dx.types.CBufRet.f32 %3673, 1
  %3676 = extractvalue %dx.types.CBufRet.f32 %3673, 2
  %3677 = extractvalue %dx.types.CBufRet.f32 %3673, 3
  %3678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3679 = extractvalue %dx.types.CBufRet.f32 %3678, 0
  %3680 = extractvalue %dx.types.CBufRet.f32 %3678, 1
  %3681 = extractvalue %dx.types.CBufRet.f32 %3678, 2
  %3682 = extractvalue %dx.types.CBufRet.f32 %3678, 3
  %3683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3684 = extractvalue %dx.types.CBufRet.f32 %3683, 0
  %3685 = extractvalue %dx.types.CBufRet.f32 %3683, 1
  %3686 = extractvalue %dx.types.CBufRet.f32 %3683, 2
  %3687 = extractvalue %dx.types.CBufRet.f32 %3683, 3
  %3688 = fmul fast float %3674, %2568
  %3689 = call float @dx.op.tertiary.f32(i32 46, float %2569, float %3675, float %3688)  ; FMad(a,b,c)
  %3690 = call float @dx.op.tertiary.f32(i32 46, float %2570, float %3676, float %3689)  ; FMad(a,b,c)
  %3691 = fadd fast float %3690, %3677
  %3692 = fmul fast float %3679, %2568
  %3693 = call float @dx.op.tertiary.f32(i32 46, float %2569, float %3680, float %3692)  ; FMad(a,b,c)
  %3694 = call float @dx.op.tertiary.f32(i32 46, float %2570, float %3681, float %3693)  ; FMad(a,b,c)
  %3695 = fadd fast float %3694, %3682
  %3696 = fmul fast float %3684, %2568
  %3697 = call float @dx.op.tertiary.f32(i32 46, float %2569, float %3685, float %3696)  ; FMad(a,b,c)
  %3698 = call float @dx.op.tertiary.f32(i32 46, float %2570, float %3686, float %3697)  ; FMad(a,b,c)
  %3699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %3700 = extractvalue %dx.types.CBufRet.f32 %3699, 0
  %3701 = extractvalue %dx.types.CBufRet.f32 %3699, 1
  %3702 = extractvalue %dx.types.CBufRet.f32 %3699, 3
  %3703 = fmul fast float %3702, %3691
  %3704 = fmul fast float %3702, %3695
  %3705 = fadd fast float %3703, %3700
  %3706 = fadd fast float %3704, %3701
  %3707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %3708 = extractvalue %dx.types.CBufRet.f32 %3707, 0
  %3709 = extractvalue %dx.types.CBufRet.f32 %3707, 1
  %3710 = fsub fast float %3705, %3708
  %3711 = fsub fast float %3706, %3709
  %3712 = fcmp fast olt float %3710, 0.000000e+00
  %3713 = fcmp fast olt float %3711, 0.000000e+00
  %3714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %3715 = extractvalue %dx.types.CBufRet.f32 %3714, 0
  %3716 = extractvalue %dx.types.CBufRet.f32 %3714, 1
  %3717 = extractvalue %dx.types.CBufRet.f32 %3714, 2
  %3718 = extractvalue %dx.types.CBufRet.f32 %3714, 3
  %3719 = select i1 %3712, float %3715, float %3717
  %3720 = select i1 %3713, float %3716, float %3718
  %3721 = fmul fast float %3719, %3710
  %3722 = fmul fast float %3720, %3711
  %3723 = call float @dx.op.unary.f32(i32 6, float %3721)  ; FAbs(value)
  %3724 = call float @dx.op.unary.f32(i32 6, float %3722)  ; FAbs(value)
  %3725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3726 = extractvalue %dx.types.CBufRet.f32 %3725, 0
  %3727 = call float @dx.op.binary.f32(i32 35, float %3723, float %3724)  ; FMax(a,b)
  %3728 = fsub fast float %3726, %3727
  %3729 = call float @dx.op.unary.f32(i32 7, float %3728)  ; Saturate(value)
  %3730 = fcmp fast ogt float %3729, 0.000000e+00
  br i1 %3730, label %3731, label %3772, !dx.controlflow.hints !152

; <label>:3731                                    ; preds = %3672
  %3732 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %45, float %3705, float %3706, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3733 = extractvalue %dx.types.ResRet.f32 %3732, 1
  %3734 = fcmp fast ogt float %3733, 0.000000e+00
  br i1 %3734, label %3735, label %3768

; <label>:3735                                    ; preds = %3731
  %3736 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %45, float %3705, float %3706, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3737 = extractvalue %dx.types.ResRet.f32 %3736, 0
  %3738 = extractvalue %dx.types.ResRet.f32 %3736, 1
  %3739 = extractvalue %dx.types.ResRet.f32 %3736, 2
  %3740 = extractvalue %dx.types.ResRet.f32 %3736, 3
  %3741 = fsub fast float 1.000000e+00, %3687
  %3742 = fsub fast float %3741, %3698
  %3743 = fmul fast float %3742, 0x400921FB60000000
  %3744 = fadd fast float %3743, 0x3FF921FB60000000
  %3745 = call float @dx.op.unary.f32(i32 13, float %3744)  ; Sin(value)
  %3746 = fadd fast float %3745, -1.000000e+00
  %3747 = fmul fast float %3746, 0x3FD45F3060000000
  %3748 = fmul fast float %3742, 0x401921FB60000000
  %3749 = fadd fast float %3748, 0x400921FB60000000
  %3750 = call float @dx.op.unary.f32(i32 13, float %3749)  ; Sin(value)
  %3751 = fadd fast float %3750, 0x3E7777A5C0000000
  %3752 = fmul fast float %3751, 0x3FC45F3060000000
  %3753 = fmul fast float %3742, 0x4022D97C80000000
  %3754 = fadd fast float %3753, 0x4012D97C80000000
  %3755 = call float @dx.op.unary.f32(i32 13, float %3754)  ; Sin(value)
  %3756 = fadd fast float %3755, 1.000000e+00
  %3757 = fmul fast float %3756, 0x3FBB2995E0000000
  %3758 = fmul fast float %3742, 0x402921FB60000000
  %3759 = fadd fast float %3758, 0x401921FB60000000
  %3760 = call float @dx.op.unary.f32(i32 13, float %3759)  ; Sin(value)
  %3761 = fadd fast float %3760, 0xBE8777A5C0000000
  %3762 = fmul fast float %3761, 0x3FB45F3060000000
  %3763 = call float @dx.op.dot4.f32(i32 56, float %3737, float %3738, float %3739, float %3740, float %3747, float %3752, float %3757, float %3762)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3764 = fmul fast float %3763, 0xBFF7154760000000
  %3765 = call float @dx.op.unary.f32(i32 21, float %3764)  ; Exp(value)
  %3766 = call float @dx.op.unary.f32(i32 7, float %3765)  ; Saturate(value)
  %3767 = fadd float %3766, -1.000000e+00
  br label %3768

; <label>:3768                                    ; preds = %3735, %3731
  %3769 = phi float [ %3767, %3735 ], [ 0.000000e+00, %3731 ]
  %3770 = fmul fast float %3769, %3729
  %3771 = fadd fast float %3770, 1.000000e+00
  br label %3772

; <label>:3772                                    ; preds = %3768, %3672
  %3773 = phi float [ %3771, %3768 ], [ 1.000000e+00, %3672 ]
  %3774 = fmul fast float %3773, %3668
  %3775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3776 = extractvalue %dx.types.CBufRet.f32 %3775, 0
  %3777 = extractvalue %dx.types.CBufRet.f32 %3775, 1
  %3778 = extractvalue %dx.types.CBufRet.f32 %3775, 2
  %3779 = fadd fast float %3776, %435
  %3780 = fadd fast float %3777, %436
  %3781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %3782 = extractvalue %dx.types.CBufRet.f32 %3781, 1
  %3783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3784 = extractvalue %dx.types.CBufRet.f32 %3783, 0
  %3785 = extractvalue %dx.types.CBufRet.f32 %3783, 1
  %3786 = extractvalue %dx.types.CBufRet.f32 %3783, 2
  %3787 = fsub fast float -0.000000e+00, %3779
  %3788 = fsub fast float -0.000000e+00, %3780
  %3789 = fsub fast float %569, %3778
  %3790 = fadd fast float %3789, %3782
  %3791 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3787, float %3788, float %3790)  ; Dot3(ax,ay,az,bx,by,bz)
  %3792 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3784, float %3785, float %3786)  ; Dot3(ax,ay,az,bx,by,bz)
  %3793 = fdiv fast float 1.000000e+00, %3792
  %3794 = fmul fast float %3793, %3791
  %3795 = fmul fast float %3784, %3794
  %3796 = fmul fast float %3785, %3794
  %3797 = fadd fast float %3795, %3779
  %3798 = fadd fast float %3796, %3780
  %3799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %3800 = extractvalue %dx.types.CBufRet.f32 %3799, 0
  %3801 = extractvalue %dx.types.CBufRet.f32 %3799, 1
  %3802 = fsub fast float %3797, %3800
  %3803 = fsub fast float %3798, %3801
  %3804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %3805 = extractvalue %dx.types.CBufRet.f32 %3804, 2
  %3806 = extractvalue %dx.types.CBufRet.f32 %3804, 3
  %3807 = fmul fast float %3802, %3805
  %3808 = fmul fast float %3803, %3806
  %3809 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %3810 = extractvalue %dx.types.CBufRet.i32 %3809, 3
  %3811 = icmp eq i32 %3810, 0
  br i1 %3811, label %3817, label %3812

; <label>:3812                                    ; preds = %3772
  %3813 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %44, float %3807, float %3808, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3814 = extractvalue %dx.types.ResRet.f32 %3813, 0
  %3815 = extractvalue %dx.types.ResRet.f32 %3813, 1
  %3816 = extractvalue %dx.types.ResRet.f32 %3813, 2
  br label %3822

; <label>:3817                                    ; preds = %3772
  %3818 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %45, float %3807, float %3808, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3819 = extractvalue %dx.types.ResRet.f32 %3818, 0
  %3820 = extractvalue %dx.types.ResRet.f32 %3818, 1
  %3821 = extractvalue %dx.types.ResRet.f32 %3818, 2
  br label %3822

; <label>:3822                                    ; preds = %3817, %3812
  %3823 = phi float [ %3814, %3812 ], [ %3819, %3817 ]
  %3824 = phi float [ %3815, %3812 ], [ %3820, %3817 ]
  %3825 = phi float [ %3816, %3812 ], [ %3821, %3817 ]
  %3826 = extractvalue %dx.types.CBufRet.f32 %3781, 2
  %3827 = fmul fast float %3826, %3823
  %3828 = extractvalue %dx.types.CBufRet.f32 %3781, 0
  %3829 = fsub fast float %3794, %3828
  %3830 = fsub fast float %3829, %3827
  %3831 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3830)  ; FMax(a,b)
  %3832 = fmul fast float %3831, %3824
  %3833 = call float @dx.op.binary.f32(i32 36, float %3825, float %3832)  ; FMin(a,b)
  %3834 = fmul fast float %3833, 0xBFF7154760000000
  %3835 = call float @dx.op.unary.f32(i32 21, float %3834)  ; Exp(value)
  %3836 = fmul fast float %3774, %3835
  br label %3837

; <label>:3837                                    ; preds = %3822, %3667
  %3838 = phi float [ %3836, %3822 ], [ %3668, %3667 ]
  %3839 = call float @dx.op.binary.f32(i32 36, float %3838, float %3838)  ; FMin(a,b)
  %3840 = call float @dx.op.binary.f32(i32 36, float %3838, float %3839)  ; FMin(a,b)
  %3841 = fcmp fast ogt float %3840, 0.000000e+00
  br i1 %3841, label %3842, label %4320, !dx.controlflow.hints !153

; <label>:3842                                    ; preds = %3837
  %3843 = fmul fast float %3838, %2560
  %3844 = fmul fast float %3838, %2561
  %3845 = fmul fast float %3838, %2562
  %3846 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3847 = extractvalue %dx.types.CBufRet.i32 %3846, 0
  %3848 = and i32 %3847, 64
  %3849 = icmp ne i32 %3848, 0
  %3850 = fcmp fast ule float %437, 0.000000e+00
  %3851 = fmul fast float %2549, 5.120000e+02
  %3852 = fmul fast float %2550, 5.120000e+02
  %3853 = fmul fast float %2551, 5.120000e+02
  %3854 = fadd fast float %3853, %437
  %3855 = fsub fast float -0.000000e+00, %3854
  %3856 = select i1 %3850, float %3854, float %3855
  %3857 = fsub fast float %3856, %437
  %3858 = call float @dx.op.dot3.f32(i32 55, float %3851, float %3852, float %3857, float %3851, float %3852, float %3857)  ; Dot3(ax,ay,az,bx,by,bz)
  %3859 = call float @dx.op.unary.f32(i32 25, float %3858)  ; Rsqrt(value)
  %3860 = fmul fast float %3859, %3851
  %3861 = fmul fast float %3859, %3852
  %3862 = fmul fast float %3859, %3857
  %3863 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %569)  ; Dot3(ax,ay,az,bx,by,bz)
  %3864 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3860, float %3861, float %3862)  ; Dot3(ax,ay,az,bx,by,bz)
  %3865 = fdiv fast float 1.000000e+00, %3864
  %3866 = fmul fast float %3865, %3863
  %3867 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %437, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3868 = fcmp fast ogt float %3867, 0.000000e+00
  %3869 = fcmp fast olt float %3867, 0.000000e+00
  %3870 = zext i1 %3868 to i32
  %3871 = zext i1 %3869 to i32
  %3872 = sub nsw i32 %3870, %3871
  %3873 = sitofp i32 %3872 to float
  %3874 = call float @dx.op.dot3.f32(i32 55, float %3851, float %3852, float %3856, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3875 = fcmp fast ogt float %3874, 0.000000e+00
  %3876 = fcmp fast olt float %3874, 0.000000e+00
  %3877 = zext i1 %3875 to i32
  %3878 = zext i1 %3876 to i32
  %3879 = sub nsw i32 %3877, %3878
  %3880 = sitofp i32 %3879 to float
  %3881 = fcmp fast une float %3873, %3880
  br i1 %3881, label %3882, label %3892

; <label>:3882                                    ; preds = %3842
  %3883 = fmul fast float %3866, %3862
  %3884 = fmul fast float %3866, %3861
  %3885 = fmul fast float %3866, %3860
  %3886 = fmul fast float %3885, %3885
  %3887 = fmul fast float %3884, %3884
  %3888 = fadd fast float %3886, %3887
  %3889 = fmul fast float %3883, %3883
  %3890 = fadd fast float %3888, %3889
  %3891 = call float @dx.op.unary.f32(i32 24, float %3890)  ; Sqrt(value)
  br label %3902

; <label>:3892                                    ; preds = %3842
  %3893 = icmp slt i32 %3872, 0
  br i1 %3893, label %3894, label %3902

; <label>:3894                                    ; preds = %3892
  %3895 = fsub fast float %437, %3856
  %3896 = fmul fast float %3851, %3851
  %3897 = fmul fast float %3852, %3852
  %3898 = fadd fast float %3896, %3897
  %3899 = fmul fast float %3895, %3895
  %3900 = fadd fast float %3898, %3899
  %3901 = call float @dx.op.unary.f32(i32 24, float %3900)  ; Sqrt(value)
  br label %3902

; <label>:3902                                    ; preds = %3894, %3892, %3882
  %3903 = phi float [ %3891, %3882 ], [ %3901, %3894 ], [ 0.000000e+00, %3892 ]
  %3904 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %3905 = extractvalue %dx.types.CBufRet.i32 %3904, 1
  %3906 = icmp ne i32 %3905, 0
  %3907 = and i1 %3850, %3906
  %3908 = call float @dx.op.dot3.f32(i32 55, float %3860, float %3861, float %3862, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3909 = fmul fast float %3908, %3908
  %3910 = fsub fast float 1.000000e+00, %3909
  %3911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3912 = extractvalue %dx.types.CBufRet.f32 %3911, 0
  %3913 = extractvalue %dx.types.CBufRet.f32 %3911, 1
  %3914 = extractvalue %dx.types.CBufRet.f32 %3911, 2
  %3915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3916 = extractvalue %dx.types.CBufRet.f32 %3915, 0
  %3917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3918 = extractvalue %dx.types.CBufRet.f32 %3917, 0
  %3919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3920 = extractvalue %dx.types.CBufRet.f32 %3919, 0
  %3921 = extractvalue %dx.types.CBufRet.f32 %3915, 1
  %3922 = extractvalue %dx.types.CBufRet.f32 %3917, 1
  %3923 = extractvalue %dx.types.CBufRet.f32 %3919, 1
  %3924 = extractvalue %dx.types.CBufRet.f32 %3915, 3
  %3925 = extractvalue %dx.types.CBufRet.f32 %3917, 3
  %3926 = extractvalue %dx.types.CBufRet.f32 %3919, 3
  %3927 = fadd fast float %3912, %435
  %3928 = fadd fast float %3913, %436
  %3929 = fadd fast float %3914, %437
  %3930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %3931 = extractvalue %dx.types.CBufRet.f32 %3930, 0
  %3932 = extractvalue %dx.types.CBufRet.f32 %3930, 1
  %3933 = extractvalue %dx.types.CBufRet.f32 %3930, 2
  %3934 = extractvalue %dx.types.CBufRet.f32 %3930, 3
  br i1 %3907, label %3935, label %4128

; <label>:3935                                    ; preds = %3902
  %3936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 349)  ; CBufferLoadLegacy(handle,regIndex)
  %3937 = extractvalue %dx.types.CBufRet.f32 %3936, 0
  %3938 = fmul fast float %3937, %3937
  %3939 = fmul fast float %3938, %3910
  %3940 = fsub fast float 1.000000e+00, %3939
  %3941 = fcmp fast oge float %3940, 0.000000e+00
  %3942 = fmul fast float %3937, %3860
  %3943 = fmul fast float %3937, %3861
  %3944 = fmul fast float %3937, %3862
  %3945 = call float @dx.op.unary.f32(i32 24, float %3940)  ; Sqrt(value)
  %3946 = fmul fast float %3937, %3908
  %3947 = fsub fast float -0.000000e+00, %3945
  %3948 = fsub fast float %3947, %3946
  %3949 = fadd fast float %3948, %3944
  %3950 = select i1 %3941, float %3942, float 0.000000e+00
  %3951 = select i1 %3941, float %3943, float 0.000000e+00
  %3952 = select i1 %3941, float %3949, float 0.000000e+00
  %3953 = fmul fast float %3950, %3903
  %3954 = fmul fast float %3951, %3903
  %3955 = fmul fast float %3952, %3903
  %3956 = fadd fast float %3927, %3953
  %3957 = fadd fast float %3956, %3924
  %3958 = fadd fast float %3928, %3954
  %3959 = fadd fast float %3958, %3925
  %3960 = fadd fast float %3929, %3955
  %3961 = fadd fast float %3960, %3926
  %3962 = fmul fast float %3957, %3916
  %3963 = call float @dx.op.tertiary.f32(i32 46, float %3959, float %3918, float %3962)  ; FMad(a,b,c)
  %3964 = call float @dx.op.tertiary.f32(i32 46, float %3961, float %3920, float %3963)  ; FMad(a,b,c)
  %3965 = fmul fast float %3957, %3921
  %3966 = call float @dx.op.tertiary.f32(i32 46, float %3959, float %3922, float %3965)  ; FMad(a,b,c)
  %3967 = call float @dx.op.tertiary.f32(i32 46, float %3961, float %3923, float %3966)  ; FMad(a,b,c)
  %3968 = fsub fast float %3964, %3924
  %3969 = fsub fast float %3968, %3931
  %3970 = fadd fast float %3969, %3933
  %3971 = fsub fast float %3967, %3925
  %3972 = fsub fast float %3971, %3932
  %3973 = fadd fast float %3972, %3933
  %3974 = fmul fast float %3970, %3934
  %3975 = fmul fast float %3973, %3934
  %3976 = call float @dx.op.unary.f32(i32 7, float %3974)  ; Saturate(value)
  %3977 = call float @dx.op.unary.f32(i32 7, float %3975)  ; Saturate(value)
  %3978 = fsub fast float 1.000000e+00, %3976
  %3979 = fsub fast float 1.000000e+00, %3977
  %3980 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %3978, float %3979, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3981 = extractvalue %dx.types.ResRet.f32 %3980, 0
  %3982 = fmul fast float %3981, 0x3FBC5ABC00000000
  %3983 = extractvalue %dx.types.CBufRet.f32 %3936, 1
  %3984 = fmul fast float %3983, %3983
  %3985 = fmul fast float %3984, %3910
  %3986 = fsub fast float 1.000000e+00, %3985
  %3987 = fcmp fast oge float %3986, 0.000000e+00
  %3988 = fmul fast float %3983, %3860
  %3989 = fmul fast float %3983, %3861
  %3990 = fmul fast float %3983, %3862
  %3991 = call float @dx.op.unary.f32(i32 24, float %3986)  ; Sqrt(value)
  %3992 = fmul fast float %3983, %3908
  %3993 = fsub fast float -0.000000e+00, %3991
  %3994 = fsub fast float %3993, %3992
  %3995 = fadd fast float %3994, %3990
  %3996 = select i1 %3987, float %3988, float 0.000000e+00
  %3997 = select i1 %3987, float %3989, float 0.000000e+00
  %3998 = select i1 %3987, float %3995, float 0.000000e+00
  %3999 = fmul fast float %3996, %3903
  %4000 = fmul fast float %3997, %3903
  %4001 = fmul fast float %3998, %3903
  %4002 = fadd fast float %3927, %3999
  %4003 = fadd fast float %4002, %3924
  %4004 = fadd fast float %3928, %4000
  %4005 = fadd fast float %4004, %3925
  %4006 = fadd fast float %3929, %4001
  %4007 = fadd fast float %4006, %3926
  %4008 = fmul fast float %4003, %3916
  %4009 = call float @dx.op.tertiary.f32(i32 46, float %4005, float %3918, float %4008)  ; FMad(a,b,c)
  %4010 = call float @dx.op.tertiary.f32(i32 46, float %4007, float %3920, float %4009)  ; FMad(a,b,c)
  %4011 = fmul fast float %4003, %3921
  %4012 = call float @dx.op.tertiary.f32(i32 46, float %4005, float %3922, float %4011)  ; FMad(a,b,c)
  %4013 = call float @dx.op.tertiary.f32(i32 46, float %4007, float %3923, float %4012)  ; FMad(a,b,c)
  %4014 = fsub fast float %4010, %3924
  %4015 = fsub fast float %4014, %3931
  %4016 = fadd fast float %4015, %3933
  %4017 = fsub fast float %4013, %3925
  %4018 = fsub fast float %4017, %3932
  %4019 = fadd fast float %4018, %3933
  %4020 = fmul fast float %4016, %3934
  %4021 = fmul fast float %4019, %3934
  %4022 = call float @dx.op.unary.f32(i32 7, float %4020)  ; Saturate(value)
  %4023 = call float @dx.op.unary.f32(i32 7, float %4021)  ; Saturate(value)
  %4024 = fsub fast float 1.000000e+00, %4022
  %4025 = fsub fast float 1.000000e+00, %4023
  %4026 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %4024, float %4025, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4027 = extractvalue %dx.types.ResRet.f32 %4026, 0
  %4028 = fmul fast float %4027, 0x3F9E4BBD60000000
  %4029 = extractvalue %dx.types.CBufRet.f32 %3936, 2
  %4030 = fmul fast float %4029, %4029
  %4031 = fmul fast float %4030, %3910
  %4032 = fsub fast float 1.000000e+00, %4031
  %4033 = fcmp fast oge float %4032, 0.000000e+00
  %4034 = fmul fast float %4029, %3860
  %4035 = fmul fast float %4029, %3861
  %4036 = fmul fast float %4029, %3862
  %4037 = call float @dx.op.unary.f32(i32 24, float %4032)  ; Sqrt(value)
  %4038 = fmul fast float %4029, %3908
  %4039 = fsub fast float -0.000000e+00, %4037
  %4040 = fsub fast float %4039, %4038
  %4041 = fadd fast float %4040, %4036
  %4042 = select i1 %4033, float %4034, float 0.000000e+00
  %4043 = select i1 %4033, float %4035, float 0.000000e+00
  %4044 = select i1 %4033, float %4041, float 0.000000e+00
  %4045 = fmul fast float %4042, %3903
  %4046 = fmul fast float %4043, %3903
  %4047 = fmul fast float %4044, %3903
  %4048 = fadd fast float %3927, %4045
  %4049 = fadd fast float %4048, %3924
  %4050 = fadd fast float %3928, %4046
  %4051 = fadd fast float %4050, %3925
  %4052 = fadd fast float %3929, %4047
  %4053 = fadd fast float %4052, %3926
  %4054 = fmul fast float %4049, %3916
  %4055 = call float @dx.op.tertiary.f32(i32 46, float %4051, float %3918, float %4054)  ; FMad(a,b,c)
  %4056 = call float @dx.op.tertiary.f32(i32 46, float %4053, float %3920, float %4055)  ; FMad(a,b,c)
  %4057 = fmul fast float %4049, %3921
  %4058 = call float @dx.op.tertiary.f32(i32 46, float %4051, float %3922, float %4057)  ; FMad(a,b,c)
  %4059 = call float @dx.op.tertiary.f32(i32 46, float %4053, float %3923, float %4058)  ; FMad(a,b,c)
  %4060 = fsub fast float %4056, %3924
  %4061 = fsub fast float %4060, %3931
  %4062 = fadd fast float %4061, %3933
  %4063 = fsub fast float %4059, %3925
  %4064 = fsub fast float %4063, %3932
  %4065 = fadd fast float %4064, %3933
  %4066 = fmul fast float %4062, %3934
  %4067 = fmul fast float %4065, %3934
  %4068 = call float @dx.op.unary.f32(i32 7, float %4066)  ; Saturate(value)
  %4069 = call float @dx.op.unary.f32(i32 7, float %4067)  ; Saturate(value)
  %4070 = fsub fast float 1.000000e+00, %4068
  %4071 = fsub fast float 1.000000e+00, %4069
  %4072 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %4070, float %4071, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4073 = extractvalue %dx.types.ResRet.f32 %4072, 0
  %4074 = fmul fast float %4073, 0x3FDDEACB00000000
  %4075 = fadd fast float %4074, %4028
  %4076 = extractvalue %dx.types.CBufRet.f32 %3936, 3
  %4077 = fmul fast float %4076, %4076
  %4078 = fmul fast float %4077, %3910
  %4079 = fsub fast float 1.000000e+00, %4078
  %4080 = fcmp fast oge float %4079, 0.000000e+00
  %4081 = fmul fast float %4076, %3860
  %4082 = fmul fast float %4076, %3861
  %4083 = fmul fast float %4076, %3862
  %4084 = call float @dx.op.unary.f32(i32 24, float %4079)  ; Sqrt(value)
  %4085 = fmul fast float %4076, %3908
  %4086 = fsub fast float -0.000000e+00, %4084
  %4087 = fsub fast float %4086, %4085
  %4088 = fadd fast float %4087, %4083
  %4089 = select i1 %4080, float %4081, float 0.000000e+00
  %4090 = select i1 %4080, float %4082, float 0.000000e+00
  %4091 = select i1 %4080, float %4088, float 0.000000e+00
  %4092 = fmul fast float %4089, %3903
  %4093 = fmul fast float %4090, %3903
  %4094 = fmul fast float %4091, %3903
  %4095 = fadd fast float %3927, %4092
  %4096 = fadd fast float %4095, %3924
  %4097 = fadd fast float %3928, %4093
  %4098 = fadd fast float %4097, %3925
  %4099 = fadd fast float %3929, %4094
  %4100 = fadd fast float %4099, %3926
  %4101 = fmul fast float %4096, %3916
  %4102 = call float @dx.op.tertiary.f32(i32 46, float %4098, float %3918, float %4101)  ; FMad(a,b,c)
  %4103 = call float @dx.op.tertiary.f32(i32 46, float %4100, float %3920, float %4102)  ; FMad(a,b,c)
  %4104 = fmul fast float %4096, %3921
  %4105 = call float @dx.op.tertiary.f32(i32 46, float %4098, float %3922, float %4104)  ; FMad(a,b,c)
  %4106 = call float @dx.op.tertiary.f32(i32 46, float %4100, float %3923, float %4105)  ; FMad(a,b,c)
  %4107 = fsub fast float %4103, %3924
  %4108 = fsub fast float %4107, %3931
  %4109 = fadd fast float %4108, %3933
  %4110 = fsub fast float %4106, %3925
  %4111 = fsub fast float %4110, %3932
  %4112 = fadd fast float %4111, %3933
  %4113 = fmul fast float %4109, %3934
  %4114 = fmul fast float %4112, %3934
  %4115 = call float @dx.op.unary.f32(i32 7, float %4113)  ; Saturate(value)
  %4116 = call float @dx.op.unary.f32(i32 7, float %4114)  ; Saturate(value)
  %4117 = fsub fast float 1.000000e+00, %4115
  %4118 = fsub fast float 1.000000e+00, %4116
  %4119 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %4117, float %4118, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4120 = extractvalue %dx.types.ResRet.f32 %4119, 0
  %4121 = fmul fast float %4120, 0x3FE0183CA0000000
  %4122 = fmul fast float %4120, 0x3FB51033E0000000
  %4123 = fadd fast float %4075, %4121
  %4124 = fadd fast float %4073, %4027
  %4125 = fmul fast float %4124, 0x3FD9D2A200000000
  %4126 = fadd fast float %4122, %3982
  %4127 = fadd fast float %4126, %4125
  br label %4174

; <label>:4128                                    ; preds = %3902
  %4129 = fmul fast float %3910, 0x3FE2024E20000000
  %4130 = fsub fast float 1.000000e+00, %4129
  %4131 = fcmp fast oge float %4130, 0.000000e+00
  %4132 = fmul fast float %3860, 0x3FE8018960000000
  %4133 = fmul fast float %3861, 0x3FE8018960000000
  %4134 = fmul fast float %3862, 0x3FE8018960000000
  %4135 = call float @dx.op.unary.f32(i32 24, float %4130)  ; Sqrt(value)
  %4136 = fmul fast float %3908, 0x3FE8018960000000
  %4137 = fsub fast float %4134, %4135
  %4138 = fsub fast float %4137, %4136
  %4139 = select i1 %4131, float %4132, float 0.000000e+00
  %4140 = select i1 %4131, float %4133, float 0.000000e+00
  %4141 = select i1 %4131, float %4138, float 0.000000e+00
  %4142 = select i1 %3850, float %4139, float %3860
  %4143 = select i1 %3850, float %4140, float %3861
  %4144 = select i1 %3850, float %4141, float %3862
  %4145 = fmul fast float %4142, %3903
  %4146 = fmul fast float %4143, %3903
  %4147 = fmul fast float %4144, %3903
  %4148 = fadd fast float %3927, %4145
  %4149 = fadd fast float %4148, %3924
  %4150 = fadd fast float %3928, %4146
  %4151 = fadd fast float %4150, %3925
  %4152 = fadd fast float %3929, %4147
  %4153 = fadd fast float %4152, %3926
  %4154 = fmul fast float %4149, %3916
  %4155 = call float @dx.op.tertiary.f32(i32 46, float %4151, float %3918, float %4154)  ; FMad(a,b,c)
  %4156 = call float @dx.op.tertiary.f32(i32 46, float %4153, float %3920, float %4155)  ; FMad(a,b,c)
  %4157 = fmul fast float %4149, %3921
  %4158 = call float @dx.op.tertiary.f32(i32 46, float %4151, float %3922, float %4157)  ; FMad(a,b,c)
  %4159 = call float @dx.op.tertiary.f32(i32 46, float %4153, float %3923, float %4158)  ; FMad(a,b,c)
  %4160 = fsub fast float %4156, %3924
  %4161 = fsub fast float %4160, %3931
  %4162 = fadd fast float %4161, %3933
  %4163 = fsub fast float %4159, %3925
  %4164 = fsub fast float %4163, %3932
  %4165 = fadd fast float %4164, %3933
  %4166 = fmul fast float %4162, %3934
  %4167 = fmul fast float %4165, %3934
  %4168 = call float @dx.op.unary.f32(i32 7, float %4166)  ; Saturate(value)
  %4169 = call float @dx.op.unary.f32(i32 7, float %4167)  ; Saturate(value)
  %4170 = fsub fast float 1.000000e+00, %4168
  %4171 = fsub fast float 1.000000e+00, %4169
  %4172 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %4170, float %4171, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4173 = extractvalue %dx.types.ResRet.f32 %4172, 0
  br label %4174

; <label>:4174                                    ; preds = %4128, %3935
  %4175 = phi float [ %4173, %4128 ], [ %4123, %3935 ]
  %4176 = phi float [ %4173, %4128 ], [ %4127, %3935 ]
  %4177 = phi float [ %4173, %4128 ], [ %3981, %3935 ]
  %4178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4179 = extractvalue %dx.types.CBufRet.f32 %4178, 0
  %4180 = call float @dx.op.unary.f32(i32 6, float %4179)  ; FAbs(value)
  %4181 = fmul fast float %3903, %3903
  %4182 = fadd fast float %4181, 1.000000e+00
  %4183 = fdiv fast float %4180, %4182
  %4184 = call float @dx.op.unary.f32(i32 7, float %4183)  ; Saturate(value)
  %4185 = call float @dx.op.unary.f32(i32 6, float %3908)  ; FAbs(value)
  %4186 = fsub fast float 1.000000e+00, %4185
  %4187 = bitcast float %4186 to i32
  %4188 = sitofp i32 %4187 to float
  %4189 = fptosi float %4188 to i32
  %4190 = bitcast i32 %4189 to float
  %4191 = fmul fast float %4190, 0x3FEF333340000000
  %4192 = fadd fast float %4191, 0x3F999999A0000000
  %4193 = call float @dx.op.unary.f32(i32 7, float %4192)  ; Saturate(value)
  %4194 = fsub fast float 1.000000e+00, %4193
  %4195 = fadd fast float %4175, 1.000000e+00
  %4196 = fadd fast float %4176, 1.000000e+00
  %4197 = fadd fast float %4177, 1.000000e+00
  %4198 = fmul fast float %4194, %4195
  %4199 = fmul fast float %4194, %4196
  %4200 = fmul fast float %4194, %4197
  %4201 = fmul fast float %4184, %4195
  %4202 = fmul fast float %4201, %4193
  %4203 = fmul fast float %4184, %4196
  %4204 = fmul fast float %4203, %4193
  %4205 = fmul fast float %4184, %4197
  %4206 = fmul fast float %4205, %4193
  %4207 = fadd fast float %4202, 1.000000e+00
  %4208 = fadd fast float %4204, 1.000000e+00
  %4209 = fadd fast float %4206, 1.000000e+00
  %4210 = call float @dx.op.unary.f32(i32 6, float %437)  ; FAbs(value)
  %4211 = call float @dx.op.unary.f32(i32 7, float %4210)  ; Saturate(value)
  %4212 = select i1 %3850, float %4198, float %4207
  %4213 = select i1 %3850, float %4199, float %4208
  %4214 = select i1 %3850, float %4200, float %4209
  %4215 = select i1 %3849, float %4211, float 0.000000e+00
  %4216 = fadd fast float %4212, -1.000000e+00
  %4217 = fadd fast float %4213, -1.000000e+00
  %4218 = fadd fast float %4214, -1.000000e+00
  %4219 = fmul fast float %4216, %4215
  %4220 = fmul fast float %4217, %4215
  %4221 = fmul fast float %4218, %4215
  %4222 = fadd fast float %4219, 1.000000e+00
  %4223 = fadd fast float %4220, 1.000000e+00
  %4224 = fadd fast float %4221, 1.000000e+00
  %4225 = fmul fast float %3843, %4222
  %4226 = fmul fast float %3844, %4223
  %4227 = fmul fast float %3845, %4224
  %4228 = fsub fast float %2549, %572
  %4229 = fsub fast float %2550, %573
  %4230 = fsub fast float %2551, %574
  %4231 = call float @dx.op.dot3.f32(i32 55, float %4228, float %4229, float %4230, float %4228, float %4229, float %4230)  ; Dot3(ax,ay,az,bx,by,bz)
  %4232 = call float @dx.op.unary.f32(i32 25, float %4231)  ; Rsqrt(value)
  %4233 = fmul fast float %4232, %4228
  %4234 = fmul fast float %4232, %4229
  %4235 = fmul fast float %4232, %4230
  %4236 = call float @dx.op.dot3.f32(i32 55, float %2549, float %2550, float %2551, float %367, float %368, float %369)  ; Dot3(ax,ay,az,bx,by,bz)
  %4237 = call float @dx.op.dot3.f32(i32 55, float %575, float %576, float %577, float %4233, float %4234, float %4235)  ; Dot3(ax,ay,az,bx,by,bz)
  %4238 = call float @dx.op.unary.f32(i32 7, float %4236)  ; Saturate(value)
  %4239 = fmul fast float %4238, %4238
  %4240 = fmul fast float %4239, 0x47DE623840000000
  %4241 = call float @dx.op.unary.f32(i32 7, float %4240)  ; Saturate(value)
  %4242 = fmul fast float %4241, %4238
  %4243 = call float @dx.op.dot3.f32(i32 55, float %367, float %368, float %369, float %4233, float %4234, float %4235)  ; Dot3(ax,ay,az,bx,by,bz)
  %4244 = fmul fast float %4243, %4243
  %4245 = call float @dx.op.unary.f32(i32 6, float %4236)  ; FAbs(value)
  %4246 = fsub fast float 1.000000e+00, %592
  %4247 = fmul fast float %580, %580
  %4248 = fmul fast float %4247, %4246
  %4249 = fadd fast float %4248, %592
  %4250 = bitcast float %4249 to i32
  %4251 = ashr i32 %4250, 1
  %4252 = add nsw i32 %4251, 532487669
  %4253 = bitcast i32 %4252 to float
  %4254 = fadd fast float %4253, %580
  %4255 = fmul fast float %592, %4244
  %4256 = fsub fast float 1.000000e+00, %4244
  %4257 = fadd fast float %4256, %4255
  %4258 = fmul fast float %4245, %4245
  %4259 = fmul fast float %4258, %4246
  %4260 = fadd fast float %4259, %592
  %4261 = bitcast float %4260 to i32
  %4262 = ashr i32 %4261, 1
  %4263 = add nsw i32 %4262, 532487669
  %4264 = bitcast i32 %4263 to float
  %4265 = fadd fast float %4264, %4245
  %4266 = fmul fast float %4257, %4257
  %4267 = fmul fast float %4266, %4254
  %4268 = fmul fast float %4267, %4265
  %4269 = fdiv fast float 0x3FF0A00000000000, %4268
  %4270 = fmul fast float %4269, %592
  %4271 = call float @dx.op.unary.f32(i32 6, float %4237)  ; FAbs(value)
  %4272 = fsub fast float 1.000000e+00, %4271
  %4273 = bitcast float %4272 to i32
  %4274 = sitofp i32 %4273 to float
  %4275 = fmul fast float %4274, 5.000000e+00
  %4276 = fadd fast float %4275, 0xC1EFBF8940000000
  %4277 = fptosi float %4276 to i32
  %4278 = bitcast i32 %4277 to float
  %4279 = fsub fast float 1.000000e+00, %558
  %4280 = fsub fast float 1.000000e+00, %559
  %4281 = fsub fast float 1.000000e+00, %578
  %4282 = fmul fast float %4278, %4279
  %4283 = fmul fast float %4278, %4280
  %4284 = fmul fast float %4278, %4281
  %4285 = fadd fast float %4282, %558
  %4286 = fadd fast float %4283, %559
  %4287 = fadd fast float %4284, %578
  %4288 = fmul fast float %4236, 9.843750e-01
  %4289 = fadd fast float %4288, 7.812500e-03
  %4290 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %45, float %4289, float %2035, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4291 = extractvalue %dx.types.ResRet.f32 %4290, 2
  %4292 = extractvalue %dx.types.ResRet.f32 %4290, 3
  %4293 = fmul fast float %4291, %558
  %4294 = fmul fast float %4291, %559
  %4295 = fmul fast float %4291, %578
  %4296 = fadd fast float %4293, %4292
  %4297 = fadd fast float %4294, %4292
  %4298 = fadd fast float %4295, %4292
  %4299 = call float @dx.op.binary.f32(i32 35, float %4297, float %4298)  ; FMax(a,b)
  %4300 = call float @dx.op.binary.f32(i32 35, float %4296, float %4299)  ; FMax(a,b)
  %4301 = fsub fast float 1.000000e+00, %4300
  %4302 = fmul fast float %4242, %4225
  %4303 = fmul fast float %4302, %4301
  %4304 = fmul fast float %4242, %4226
  %4305 = fmul fast float %4304, %4301
  %4306 = fmul fast float %4242, %4227
  %4307 = fmul fast float %4306, %4301
  %4308 = fadd fast float %4303, %2539
  %4309 = fadd fast float %4305, %2540
  %4310 = fadd fast float %4307, %2541
  %4311 = fmul fast float %4302, %4270
  %4312 = fmul fast float %4311, %4285
  %4313 = fmul fast float %4304, %4270
  %4314 = fmul fast float %4313, %4286
  %4315 = fmul fast float %4306, %4270
  %4316 = fmul fast float %4315, %4287
  %4317 = fadd fast float %4312, %2542
  %4318 = fadd fast float %4314, %2543
  %4319 = fadd fast float %4316, %2544
  br label %4320

; <label>:4320                                    ; preds = %4174, %3837, %2535
  %4321 = phi float [ %2542, %2535 ], [ %2542, %3837 ], [ %4317, %4174 ]
  %4322 = phi float [ %2543, %2535 ], [ %2543, %3837 ], [ %4318, %4174 ]
  %4323 = phi float [ %2544, %2535 ], [ %2544, %3837 ], [ %4319, %4174 ]
  %4324 = phi float [ %2539, %2535 ], [ %2539, %3837 ], [ %4308, %4174 ]
  %4325 = phi float [ %2540, %2535 ], [ %2540, %3837 ], [ %4309, %4174 ]
  %4326 = phi float [ %2541, %2535 ], [ %2541, %3837 ], [ %4310, %4174 ]
  %4327 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4328 = extractvalue %dx.types.CBufRet.i32 %4327, 0
  %4329 = icmp eq i32 %4328, 0
  br i1 %4329, label %5352, label %4330

; <label>:4330                                    ; preds = %4320
  %4331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4332 = extractvalue %dx.types.CBufRet.f32 %4331, 2
  %4333 = extractvalue %dx.types.CBufRet.f32 %4331, 3
  %4334 = fmul fast float %4332, %98
  %4335 = fmul fast float %4333, %99
  %4336 = fptoui float %4334 to i32
  %4337 = fptoui float %4335 to i32
  %4338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4339 = extractvalue %dx.types.CBufRet.f32 %4338, 0
  %4340 = extractvalue %dx.types.CBufRet.f32 %4338, 2
  %4341 = extractvalue %dx.types.CBufRet.f32 %4338, 3
  %4342 = fadd fast float %401, -4.000000e+00
  %4343 = call float @dx.op.binary.f32(i32 35, float %4342, float 0.000000e+00)  ; FMax(a,b)
  %4344 = fadd fast float %4343, %4339
  %4345 = fmul fast float %4344, %4340
  %4346 = call float @dx.op.unary.f32(i32 23, float %4345)  ; Log(value)
  %4347 = fmul fast float %4346, %4341
  %4348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4349 = extractvalue %dx.types.CBufRet.f32 %4348, 2
  %4350 = fmul fast float %4347, %4349
  %4351 = call float @dx.op.unary.f32(i32 7, float %4350)  ; Saturate(value)
  %4352 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4353 = extractvalue %dx.types.CBufRet.i32 %4352, 1
  %4354 = add i32 %4353, -1
  %4355 = uitofp i32 %4353 to float
  %4356 = fmul fast float %4355, %4351
  %4357 = fptoui float %4356 to i32
  %4358 = call i32 @dx.op.binary.i32(i32 40, i32 %4357, i32 %4354)  ; UMin(a,b)
  %4359 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4360 = extractvalue %dx.types.CBufRet.i32 %4359, 2
  %4361 = extractvalue %dx.types.CBufRet.i32 %4359, 3
  %4362 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4337, i32 %4360, i32 %4336)  ; UMad(a,b,c)
  %4363 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4358, i32 %4361, i32 %4362)  ; UMad(a,b,c)
  %4364 = add nsw i32 %4328, -1
  %4365 = call i32 @dx.op.binary.i32(i32 37, i32 %4364, i32 0)  ; IMax(a,b)
  %4366 = call float @dx.op.binary.f32(i32 35, float %401, float 0.000000e+00)  ; FMax(a,b)
  %4367 = fptoui float %4366 to i32
  %4368 = lshr i32 %4367, 5
  %4369 = call i32 @dx.op.binary.i32(i32 40, i32 %4368, i32 8191)  ; UMin(a,b)
  %4370 = shl i32 %4369, 2
  %4371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4370, i32 undef)  ; BufferLoad(srv,index,wot)
  %4372 = extractvalue %dx.types.ResRet.i32 %4371, 0
  %4373 = lshr i32 %4372, 16
  %4374 = and i32 %4372, 65535
  %4375 = lshr i32 %4372, 21
  %4376 = lshr i32 %4374, 5
  %4377 = call i32 @dx.op.binary.i32(i32 40, i32 %4376, i32 %4365)  ; UMin(a,b)
  %4378 = icmp ugt i32 %4375, %4377
  br i1 %4378, label %5352, label %4379

; <label>:4379                                    ; preds = %4330
  br label %4380

; <label>:4380                                    ; preds = %5342, %4379
  %4381 = phi i32 [ %5349, %5342 ], [ %4375, %4379 ]
  %4382 = phi float [ %5343, %5342 ], [ %4321, %4379 ]
  %4383 = phi float [ %5344, %5342 ], [ %4322, %4379 ]
  %4384 = phi float [ %5345, %5342 ], [ %4323, %4379 ]
  %4385 = phi float [ %5346, %5342 ], [ %4324, %4379 ]
  %4386 = phi float [ %5347, %5342 ], [ %4325, %4379 ]
  %4387 = phi float [ %5348, %5342 ], [ %4326, %4379 ]
  %4388 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4389 = extractvalue %dx.types.CBufRet.i32 %4388, 0
  %4390 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4363, i32 %4389, i32 %4381)  ; UMad(a,b,c)
  %4391 = shl i32 %4390, 2
  %4392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4391, i32 undef)  ; BufferLoad(srv,index,wot)
  %4393 = extractvalue %dx.types.ResRet.i32 %4392, 0
  %4394 = shl i32 %4381, 5
  %4395 = sub nsw i32 %4373, %4394
  %4396 = call i32 @dx.op.binary.i32(i32 37, i32 %4395, i32 0)  ; IMax(a,b)
  %4397 = call i32 @dx.op.binary.i32(i32 38, i32 %4396, i32 31)  ; IMin(a,b)
  %4398 = sub nsw i32 1, %4373
  %4399 = add nsw i32 %4398, %4374
  %4400 = call i32 @dx.op.binary.i32(i32 37, i32 %4399, i32 0)  ; IMax(a,b)
  %4401 = call i32 @dx.op.binary.i32(i32 38, i32 %4400, i32 32)  ; IMin(a,b)
  %4402 = and i32 %4401, 31
  %4403 = shl i32 -1, %4402
  %4404 = xor i32 %4403, -1
  %4405 = and i32 %4397, 31
  %4406 = shl i32 %4404, %4405
  %4407 = icmp eq i32 %4401, 32
  %4408 = select i1 %4407, i32 -1, i32 %4406
  %4409 = and i32 %4408, %4393
  %4410 = icmp eq i32 %4409, 0
  br i1 %4410, label %5342, label %4411

; <label>:4411                                    ; preds = %4380
  br label %4412

; <label>:4412                                    ; preds = %4561, %4411
  %4413 = phi i32 [ %4424, %4561 ], [ %4409, %4411 ]
  %4414 = phi float [ %4562, %4561 ], [ %4382, %4411 ]
  %4415 = phi float [ %4563, %4561 ], [ %4383, %4411 ]
  %4416 = phi float [ %4564, %4561 ], [ %4384, %4411 ]
  %4417 = phi float [ %4565, %4561 ], [ %4385, %4411 ]
  %4418 = phi float [ %4566, %4561 ], [ %4386, %4411 ]
  %4419 = phi float [ %4567, %4561 ], [ %4387, %4411 ]
  %4420 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4413)  ; FirstbitLo(value)
  %4421 = add i32 %4420, %4394
  %4422 = and i32 %4420, 31
  %4423 = shl i32 1, %4422
  %4424 = xor i32 %4423, %4413
  %4425 = mul i32 %4421, 112
  %4426 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %4425, i32 undef)  ; BufferLoad(srv,index,wot)
  %4427 = extractvalue %dx.types.ResRet.f32 %4426, 0
  %4428 = extractvalue %dx.types.ResRet.f32 %4426, 1
  %4429 = extractvalue %dx.types.ResRet.f32 %4426, 2
  %4430 = add i32 %4425, 16
  %4431 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %4430, i32 undef)  ; BufferLoad(srv,index,wot)
  %4432 = extractvalue %dx.types.ResRet.f32 %4431, 0
  %4433 = extractvalue %dx.types.ResRet.f32 %4431, 1
  %4434 = extractvalue %dx.types.ResRet.f32 %4431, 2
  %4435 = add i32 %4425, 28
  %4436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %4435, i32 undef)  ; BufferLoad(srv,index,wot)
  %4437 = extractvalue %dx.types.ResRet.i32 %4436, 0
  %4438 = add i32 %4425, 32
  %4439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %4438, i32 undef)  ; BufferLoad(srv,index,wot)
  %4440 = extractvalue %dx.types.ResRet.f32 %4439, 0
  %4441 = extractvalue %dx.types.ResRet.f32 %4439, 1
  %4442 = extractvalue %dx.types.ResRet.f32 %4439, 2
  %4443 = add i32 %4425, 44
  %4444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %4443, i32 undef)  ; BufferLoad(srv,index,wot)
  %4445 = extractvalue %dx.types.ResRet.f32 %4444, 0
  %4446 = add i32 %4425, 48
  %4447 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %4446, i32 undef)  ; BufferLoad(srv,index,wot)
  %4448 = extractvalue %dx.types.ResRet.f32 %4447, 0
  %4449 = extractvalue %dx.types.ResRet.f32 %4447, 1
  %4450 = extractvalue %dx.types.ResRet.f32 %4447, 2
  %4451 = fsub fast float -0.000000e+00, %4450
  %4452 = extractvalue %dx.types.ResRet.f32 %4447, 3
  %4453 = add i32 %4425, 64
  %4454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %4453, i32 undef)  ; BufferLoad(srv,index,wot)
  %4455 = extractvalue %dx.types.ResRet.f32 %4454, 0
  %4456 = extractvalue %dx.types.ResRet.f32 %4454, 1
  %4457 = extractvalue %dx.types.ResRet.f32 %4454, 2
  %4458 = extractvalue %dx.types.ResRet.f32 %4454, 3
  %4459 = add i32 %4425, 80
  %4460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %4459, i32 undef)  ; BufferLoad(srv,index,wot)
  %4461 = extractvalue %dx.types.ResRet.f32 %4460, 1
  %4462 = extractvalue %dx.types.ResRet.f32 %4460, 2
  %4463 = add i32 %4425, 92
  %4464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %4463, i32 undef)  ; BufferLoad(srv,index,wot)
  %4465 = extractvalue %dx.types.ResRet.i32 %4464, 0
  %4466 = call float @dx.op.dot3.f32(i32 55, float %4427, float %4428, float %4429, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4467 = select i1 %172, float %4461, float %4427
  %4468 = select i1 %172, float %4466, float %4428
  %4469 = select i1 %172, float %4462, float %4429
  %4470 = and i32 %4465, 65535
  %4471 = uitofp i32 %4470 to float
  %4472 = lshr i32 %4465, 16
  %4473 = uitofp i32 %4472 to float
  %4474 = and i32 %4437, 65535
  %4475 = and i32 %4437, 50331648
  %4476 = icmp eq i32 %4475, 33554432
  %4477 = call float @dx.op.dot3.f32(i32 55, float %4440, float %4441, float %4442, float %4440, float %4441, float %4442)  ; Dot3(ax,ay,az,bx,by,bz)
  %4478 = fsub fast float %435, %4448
  %4479 = fsub fast float %436, %4449
  %4480 = fsub fast float %437, %4450
  %4481 = call float @dx.op.dot3.f32(i32 55, float %4478, float %4479, float %4480, float %4440, float %4441, float %4442)  ; Dot3(ax,ay,az,bx,by,bz)
  %4482 = fdiv fast float %4481, %4477
  %4483 = call float @dx.op.binary.f32(i32 35, float %4482, float -1.000000e+00)  ; FMax(a,b)
  %4484 = call float @dx.op.binary.f32(i32 36, float %4483, float 1.000000e+00)  ; FMin(a,b)
  %4485 = fmul fast float %4484, %4440
  %4486 = fmul fast float %4484, %4441
  %4487 = fmul fast float %4484, %4442
  %4488 = fadd fast float %4485, %4448
  %4489 = fadd fast float %4486, %4449
  %4490 = fadd fast float %4487, %4450
  %4491 = fsub fast float %4488, %435
  %4492 = fsub fast float %4489, %436
  %4493 = fsub fast float %4490, %437
  %4494 = call float @dx.op.dot3.f32(i32 55, float %4491, float %4492, float %4493, float %4491, float %4492, float %4493)  ; Dot3(ax,ay,az,bx,by,bz)
  %4495 = call float @dx.op.unary.f32(i32 24, float %4494)  ; Sqrt(value)
  %4496 = fdiv fast float 1.000000e+00, %4495
  %4497 = fmul fast float %4491, %4496
  %4498 = fmul fast float %4492, %4496
  %4499 = fmul fast float %4493, %4496
  br i1 %4476, label %4500, label %4524

; <label>:4500                                    ; preds = %4412
  %4501 = fmul fast float %4457, %4432
  %4502 = fmul fast float %4457, %4433
  %4503 = fmul fast float %4457, %4434
  %4504 = fsub fast float %4501, %435
  %4505 = fadd fast float %4504, %4488
  %4506 = fsub fast float %4502, %436
  %4507 = fadd fast float %4506, %4489
  %4508 = fsub fast float %4503, %437
  %4509 = fadd fast float %4508, %4490
  %4510 = call float @dx.op.dot3.f32(i32 55, float %4505, float %4507, float %4509, float %4505, float %4507, float %4509)  ; Dot3(ax,ay,az,bx,by,bz)
  %4511 = call float @dx.op.unary.f32(i32 25, float %4510)  ; Rsqrt(value)
  %4512 = fmul fast float %4511, %4505
  %4513 = fmul fast float %4511, %4507
  %4514 = fmul fast float %4511, %4509
  %4515 = fsub fast float %435, %4488
  %4516 = fsub fast float %436, %4489
  %4517 = fsub fast float %437, %4490
  %4518 = fsub fast float -0.000000e+00, %4515
  %4519 = fsub fast float -0.000000e+00, %4516
  %4520 = fsub fast float -0.000000e+00, %4517
  %4521 = call float @dx.op.dot3.f32(i32 55, float %4518, float %4519, float %4520, float %4432, float %4433, float %4434)  ; Dot3(ax,ay,az,bx,by,bz)
  %4522 = fcmp fast ogt float %4521, 0.000000e+00
  %4523 = uitofp i1 %4522 to float
  br label %4524

; <label>:4524                                    ; preds = %4500, %4412
  %4525 = phi float [ %4523, %4500 ], [ 1.000000e+00, %4412 ]
  %4526 = phi float [ %4512, %4500 ], [ %4497, %4412 ]
  %4527 = phi float [ %4513, %4500 ], [ %4498, %4412 ]
  %4528 = phi float [ %4514, %4500 ], [ %4499, %4412 ]
  %4529 = call float @dx.op.dot3.f32(i32 55, float %4432, float %4433, float %4434, float %4526, float %4527, float %4528)  ; Dot3(ax,ay,az,bx,by,bz)
  %4530 = fmul fast float %4529, %4529
  %4531 = call float @dx.op.unary.f32(i32 7, float %4530)  ; Saturate(value)
  %4532 = fsub fast float 1.000000e+00, %4531
  %4533 = fmul fast float %4532, 5.000000e-01
  %4534 = fcmp fast ogt float %4529, 0.000000e+00
  %4535 = fsub fast float 1.000000e+00, %4533
  %4536 = select i1 %4534, float %4533, float %4535
  %4537 = fmul fast float %4536, %4473
  %4538 = fadd fast float %4537, %4471
  %4539 = fmul fast float %4538, 0x3EF0001000000000
  %4540 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %45, float %4539, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4541 = extractvalue %dx.types.ResRet.f32 %4540, 0
  %4542 = fmul fast float %4529, %4455
  %4543 = fadd fast float %4542, %4456
  %4544 = call float @dx.op.unary.f32(i32 7, float %4543)  ; Saturate(value)
  %4545 = select i1 %4476, float 1.000000e+00, float %4544
  %4546 = select i1 %4476, float %4544, float 1.000000e+00
  %4547 = fmul fast float %4495, %4452
  %4548 = fsub fast float 1.000000e+00, %4547
  %4549 = fmul fast float %4548, %4458
  %4550 = call float @dx.op.unary.f32(i32 7, float %4549)  ; Saturate(value)
  %4551 = fmul fast float %4550, %4546
  %4552 = fmul fast float %4551, 2.000000e+00
  %4553 = fsub fast float 3.000000e+00, %4552
  %4554 = fmul fast float %4541, %4525
  %4555 = fmul fast float %4551, %4551
  %4556 = fmul fast float %4555, %4554
  %4557 = fmul fast float %4556, %4553
  %4558 = call float @dx.op.binary.f32(i32 36, float %4557, float %4557)  ; FMin(a,b)
  %4559 = call float @dx.op.binary.f32(i32 36, float %4557, float %4558)  ; FMin(a,b)
  %4560 = fcmp fast ogt float %4559, 0.000000e+00
  br i1 %4560, label %4569, label %4561, !dx.controlflow.hints !154

; <label>:4561                                    ; preds = %5051, %4715, %4524
  %4562 = phi float [ %4414, %4715 ], [ %4414, %4524 ], [ %5338, %5051 ]
  %4563 = phi float [ %4415, %4715 ], [ %4415, %4524 ], [ %5339, %5051 ]
  %4564 = phi float [ %4416, %4715 ], [ %4416, %4524 ], [ %5340, %5051 ]
  %4565 = phi float [ %4417, %4715 ], [ %4417, %4524 ], [ %5329, %5051 ]
  %4566 = phi float [ %4418, %4715 ], [ %4418, %4524 ], [ %5330, %5051 ]
  %4567 = phi float [ %4419, %4715 ], [ %4419, %4524 ], [ %5331, %5051 ]
  %4568 = icmp eq i32 %4413, %4423
  br i1 %4568, label %5341, label %4412

; <label>:4569                                    ; preds = %4524
  %4570 = icmp eq i32 %4474, 255
  br i1 %4570, label %4715, label %4571, !dx.controlflow.hints !155

; <label>:4571                                    ; preds = %4569
  %4572 = mul nuw nsw i32 %4474, 176
  %4573 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4572, i32 undef)  ; BufferLoad(srv,index,wot)
  %4574 = extractvalue %dx.types.ResRet.f32 %4573, 0
  %4575 = extractvalue %dx.types.ResRet.f32 %4573, 1
  %4576 = extractvalue %dx.types.ResRet.f32 %4573, 2
  %4577 = extractvalue %dx.types.ResRet.f32 %4573, 3
  %4578 = add nuw nsw i32 %4572, 16
  %4579 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4578, i32 undef)  ; BufferLoad(srv,index,wot)
  %4580 = extractvalue %dx.types.ResRet.f32 %4579, 0
  %4581 = extractvalue %dx.types.ResRet.f32 %4579, 1
  %4582 = add nuw nsw i32 %4572, 32
  %4583 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4582, i32 undef)  ; BufferLoad(srv,index,wot)
  %4584 = extractvalue %dx.types.ResRet.f32 %4583, 0
  %4585 = extractvalue %dx.types.ResRet.f32 %4583, 1
  %4586 = extractvalue %dx.types.ResRet.f32 %4583, 2
  %4587 = add nuw nsw i32 %4572, 48
  %4588 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4587, i32 undef)  ; BufferLoad(srv,index,wot)
  %4589 = extractvalue %dx.types.ResRet.f32 %4588, 0
  %4590 = extractvalue %dx.types.ResRet.f32 %4588, 1
  %4591 = extractvalue %dx.types.ResRet.f32 %4588, 2
  %4592 = extractvalue %dx.types.ResRet.f32 %4588, 3
  %4593 = add nuw nsw i32 %4572, 64
  %4594 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4593, i32 undef)  ; BufferLoad(srv,index,wot)
  %4595 = extractvalue %dx.types.ResRet.f32 %4594, 0
  %4596 = extractvalue %dx.types.ResRet.f32 %4594, 1
  %4597 = extractvalue %dx.types.ResRet.f32 %4594, 2
  %4598 = extractvalue %dx.types.ResRet.f32 %4594, 3
  %4599 = add nuw nsw i32 %4572, 80
  %4600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4599, i32 undef)  ; BufferLoad(srv,index,wot)
  %4601 = extractvalue %dx.types.ResRet.f32 %4600, 0
  %4602 = extractvalue %dx.types.ResRet.f32 %4600, 1
  %4603 = extractvalue %dx.types.ResRet.f32 %4600, 2
  %4604 = extractvalue %dx.types.ResRet.f32 %4600, 3
  %4605 = add nuw nsw i32 %4572, 96
  %4606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4605, i32 undef)  ; BufferLoad(srv,index,wot)
  %4607 = extractvalue %dx.types.ResRet.f32 %4606, 0
  %4608 = extractvalue %dx.types.ResRet.f32 %4606, 1
  %4609 = extractvalue %dx.types.ResRet.f32 %4606, 2
  %4610 = extractvalue %dx.types.ResRet.f32 %4606, 3
  %4611 = bitcast float %4581 to i32
  %4612 = fmul fast float %4586, %367
  %4613 = fmul fast float %4586, %368
  %4614 = fmul fast float %4586, %369
  %4615 = fadd fast float %4612, %435
  %4616 = fadd fast float %4613, %436
  %4617 = fadd fast float %4614, %437
  %4618 = fmul fast float %4615, %4589
  %4619 = call float @dx.op.tertiary.f32(i32 46, float %4616, float %4595, float %4618)  ; FMad(a,b,c)
  %4620 = call float @dx.op.tertiary.f32(i32 46, float %4617, float %4601, float %4619)  ; FMad(a,b,c)
  %4621 = fadd fast float %4620, %4607
  %4622 = fmul fast float %4615, %4590
  %4623 = call float @dx.op.tertiary.f32(i32 46, float %4616, float %4596, float %4622)  ; FMad(a,b,c)
  %4624 = call float @dx.op.tertiary.f32(i32 46, float %4617, float %4602, float %4623)  ; FMad(a,b,c)
  %4625 = fadd fast float %4624, %4608
  %4626 = fmul fast float %4615, %4591
  %4627 = call float @dx.op.tertiary.f32(i32 46, float %4616, float %4597, float %4626)  ; FMad(a,b,c)
  %4628 = call float @dx.op.tertiary.f32(i32 46, float %4617, float %4603, float %4627)  ; FMad(a,b,c)
  %4629 = fadd fast float %4628, %4609
  %4630 = fmul fast float %4615, %4592
  %4631 = call float @dx.op.tertiary.f32(i32 46, float %4616, float %4598, float %4630)  ; FMad(a,b,c)
  %4632 = call float @dx.op.tertiary.f32(i32 46, float %4617, float %4604, float %4631)  ; FMad(a,b,c)
  %4633 = fadd fast float %4632, %4610
  %4634 = fdiv fast float %4621, %4633
  %4635 = fdiv fast float %4625, %4633
  %4636 = fdiv fast float %4629, %4633
  %4637 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %4636)  ; FMax(a,b)
  %4638 = fmul fast float %356, 0x401921FB60000000
  %4639 = call float @dx.op.unary.f32(i32 13, float %4638)  ; Sin(value)
  %4640 = call float @dx.op.unary.f32(i32 12, float %4638)  ; Cos(value)
  %4641 = fmul fast float %4640, %4585
  %4642 = call float @dx.op.tertiary.f32(i32 46, float %4639, float %4585, float 0.000000e+00)  ; FMad(a,b,c)
  %4643 = fmul fast float %4585, %4639
  %4644 = fsub fast float -0.000000e+00, %4643
  %4645 = call float @dx.op.tertiary.f32(i32 46, float %4640, float %4585, float 0.000000e+00)  ; FMad(a,b,c)
  br label %4646

; <label>:4646                                    ; preds = %4646, %4571
  %4647 = phi float [ 0.000000e+00, %4571 ], [ %4679, %4646 ]
  %4648 = phi float [ 0.000000e+00, %4571 ], [ %4681, %4646 ]
  %4649 = phi i32 [ 0, %4571 ], [ %4682, %4646 ]
  %4650 = mul i32 %4649, 2
  %4651 = add i32 0, %4650
  %4652 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4651
  %4653 = load float, float* %4652, align 4
  %4654 = mul i32 %4649, 2
  %4655 = add i32 1, %4654
  %4656 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4655
  %4657 = load float, float* %4656, align 4
  %4658 = fmul fast float %4641, %4653
  %4659 = call float @dx.op.tertiary.f32(i32 46, float %4657, float %4644, float %4658)  ; FMad(a,b,c)
  %4660 = fmul fast float %4653, %4642
  %4661 = call float @dx.op.tertiary.f32(i32 46, float %4657, float %4645, float %4660)  ; FMad(a,b,c)
  %4662 = fadd fast float %4659, %4634
  %4663 = fadd fast float %4661, %4635
  %4664 = fmul fast float %4662, %4580
  %4665 = fmul fast float %4663, %4580
  %4666 = call float @dx.op.binary.f32(i32 35, float %4664, float %4576)  ; FMax(a,b)
  %4667 = call float @dx.op.binary.f32(i32 35, float %4665, float %4576)  ; FMax(a,b)
  %4668 = call float @dx.op.binary.f32(i32 36, float %4666, float %4577)  ; FMin(a,b)
  %4669 = call float @dx.op.binary.f32(i32 36, float %4667, float %4577)  ; FMin(a,b)
  %4670 = fadd fast float %4668, %4574
  %4671 = fadd fast float %4669, %4575
  %4672 = uitofp i32 %4611 to float
  %4673 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %46, float %4670, float %4671, float %4672, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4674 = extractvalue %dx.types.ResRet.f32 %4673, 0
  %4675 = fsub fast float %4674, %4637
  %4676 = fsub fast float %4675, %4584
  %4677 = fcmp fast ogt float %4676, 0.000000e+00
  %4678 = select i1 %4677, float 1.000000e+00, float 0.000000e+00
  %4679 = fadd fast float %4678, %4647
  %4680 = select i1 %4677, float %4676, float 0.000000e+00
  %4681 = fadd fast float %4680, %4648
  %4682 = add nuw nsw i32 %4649, 1
  %4683 = icmp eq i32 %4682, 8
  br i1 %4683, label %4684, label %4646

; <label>:4684                                    ; preds = %4646
  %4685 = fdiv fast float 1.000000e+00, %4679
  %4686 = fmul fast float %4685, %4681
  %4687 = fdiv fast float 1.000000e+00, %4637
  %4688 = fmul fast float %4686, %4687
  %4689 = call float @dx.op.unary.f32(i32 7, float %4688)  ; Saturate(value)
  %4690 = call float @dx.op.binary.f32(i32 35, float %4689, float 0.000000e+00)  ; FMax(a,b)
  %4691 = fmul fast float %4679, 1.250000e-01
  %4692 = call float @dx.op.unary.f32(i32 7, float %4691)  ; Saturate(value)
  %4693 = fmul fast float %4692, 2.000000e+00
  %4694 = fadd fast float %4693, -1.000000e+00
  %4695 = fcmp fast ogt float %4694, 0.000000e+00
  %4696 = fcmp fast olt float %4694, 0.000000e+00
  %4697 = zext i1 %4695 to i32
  %4698 = zext i1 %4696 to i32
  %4699 = sub nsw i32 %4697, %4698
  %4700 = sitofp i32 %4699 to float
  %4701 = fmul fast float %4700, %4694
  %4702 = fsub fast float 1.000000e+00, %4701
  %4703 = fmul fast float %4702, %4702
  %4704 = fmul fast float %4703, %4702
  %4705 = fsub fast float %4702, %4704
  %4706 = fmul fast float %4705, %4690
  %4707 = fsub fast float 1.000000e+00, %4704
  %4708 = fsub fast float %4707, %4706
  %4709 = fmul fast float %4700, 5.000000e-01
  %4710 = fmul fast float %4709, %4708
  %4711 = fsub fast float -5.000000e-01, %4710
  %4712 = fmul fast float %4711, %4545
  %4713 = fadd fast float %4712, 1.000000e+00
  %4714 = fmul fast float %4713, %4557
  br label %4715

; <label>:4715                                    ; preds = %4684, %4569
  %4716 = phi float [ %4714, %4684 ], [ %4557, %4569 ]
  %4717 = call float @dx.op.binary.f32(i32 36, float %4716, float %4716)  ; FMin(a,b)
  %4718 = call float @dx.op.binary.f32(i32 36, float %4716, float %4717)  ; FMin(a,b)
  %4719 = fcmp fast ogt float %4718, 0.000000e+00
  br i1 %4719, label %4720, label %4561, !dx.controlflow.hints !156

; <label>:4720                                    ; preds = %4715
  %4721 = fmul fast float %4716, %4467
  %4722 = fmul fast float %4716, %4468
  %4723 = fmul fast float %4716, %4469
  %4724 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4725 = extractvalue %dx.types.CBufRet.i32 %4724, 0
  %4726 = and i32 %4725, 64
  %4727 = icmp ne i32 %4726, 0
  %4728 = fcmp fast ogt float %4450, 0.000000e+00
  %4729 = fcmp fast ogt float %437, 0.000000e+00
  %4730 = xor i1 %4729, %4728
  %4731 = select i1 %4730, float %4450, float %4451
  %4732 = fsub fast float %4448, %435
  %4733 = fsub fast float %4449, %436
  %4734 = fsub fast float %4731, %437
  %4735 = call float @dx.op.dot3.f32(i32 55, float %4732, float %4733, float %4734, float %4732, float %4733, float %4734)  ; Dot3(ax,ay,az,bx,by,bz)
  %4736 = call float @dx.op.unary.f32(i32 25, float %4735)  ; Rsqrt(value)
  %4737 = fmul fast float %4736, %4732
  %4738 = fmul fast float %4736, %4733
  %4739 = fmul fast float %4736, %4734
  %4740 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %569)  ; Dot3(ax,ay,az,bx,by,bz)
  %4741 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4737, float %4738, float %4739)  ; Dot3(ax,ay,az,bx,by,bz)
  %4742 = fdiv fast float 1.000000e+00, %4741
  %4743 = fmul fast float %4742, %4740
  %4744 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %437, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4745 = fcmp fast ogt float %4744, 0.000000e+00
  %4746 = fcmp fast olt float %4744, 0.000000e+00
  %4747 = zext i1 %4745 to i32
  %4748 = zext i1 %4746 to i32
  %4749 = sub nsw i32 %4747, %4748
  %4750 = sitofp i32 %4749 to float
  %4751 = call float @dx.op.dot3.f32(i32 55, float %4732, float %4733, float %4731, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4752 = fcmp fast ogt float %4751, 0.000000e+00
  %4753 = fcmp fast olt float %4751, 0.000000e+00
  %4754 = zext i1 %4752 to i32
  %4755 = zext i1 %4753 to i32
  %4756 = sub nsw i32 %4754, %4755
  %4757 = sitofp i32 %4756 to float
  %4758 = fcmp fast une float %4750, %4757
  br i1 %4758, label %4759, label %4769

; <label>:4759                                    ; preds = %4720
  %4760 = fmul fast float %4743, %4739
  %4761 = fmul fast float %4743, %4738
  %4762 = fmul fast float %4743, %4737
  %4763 = fmul fast float %4762, %4762
  %4764 = fmul fast float %4761, %4761
  %4765 = fadd fast float %4763, %4764
  %4766 = fmul fast float %4760, %4760
  %4767 = fadd fast float %4765, %4766
  %4768 = call float @dx.op.unary.f32(i32 24, float %4767)  ; Sqrt(value)
  br label %4779

; <label>:4769                                    ; preds = %4720
  %4770 = icmp slt i32 %4749, 0
  br i1 %4770, label %4771, label %4779

; <label>:4771                                    ; preds = %4769
  %4772 = fsub fast float %437, %4731
  %4773 = fmul fast float %4478, %4478
  %4774 = fmul fast float %4479, %4479
  %4775 = fadd fast float %4773, %4774
  %4776 = fmul fast float %4772, %4772
  %4777 = fadd fast float %4775, %4776
  %4778 = call float @dx.op.unary.f32(i32 24, float %4777)  ; Sqrt(value)
  br label %4779

; <label>:4779                                    ; preds = %4771, %4769, %4759
  %4780 = phi float [ %4768, %4759 ], [ %4778, %4771 ], [ 0.000000e+00, %4769 ]
  %4781 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %4782 = extractvalue %dx.types.CBufRet.i32 %4781, 1
  %4783 = icmp ne i32 %4782, 0
  %4784 = and i1 %4730, %4783
  %4785 = call float @dx.op.dot3.f32(i32 55, float %4737, float %4738, float %4739, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4786 = fmul fast float %4785, %4785
  %4787 = fsub fast float 1.000000e+00, %4786
  %4788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4789 = extractvalue %dx.types.CBufRet.f32 %4788, 0
  %4790 = extractvalue %dx.types.CBufRet.f32 %4788, 1
  %4791 = extractvalue %dx.types.CBufRet.f32 %4788, 2
  %4792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4793 = extractvalue %dx.types.CBufRet.f32 %4792, 0
  %4794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4795 = extractvalue %dx.types.CBufRet.f32 %4794, 0
  %4796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4797 = extractvalue %dx.types.CBufRet.f32 %4796, 0
  %4798 = extractvalue %dx.types.CBufRet.f32 %4792, 1
  %4799 = extractvalue %dx.types.CBufRet.f32 %4794, 1
  %4800 = extractvalue %dx.types.CBufRet.f32 %4796, 1
  %4801 = extractvalue %dx.types.CBufRet.f32 %4792, 3
  %4802 = extractvalue %dx.types.CBufRet.f32 %4794, 3
  %4803 = extractvalue %dx.types.CBufRet.f32 %4796, 3
  %4804 = fadd fast float %4789, %435
  %4805 = fadd fast float %4790, %436
  %4806 = fadd fast float %4791, %437
  %4807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %4808 = extractvalue %dx.types.CBufRet.f32 %4807, 0
  %4809 = extractvalue %dx.types.CBufRet.f32 %4807, 1
  %4810 = extractvalue %dx.types.CBufRet.f32 %4807, 2
  %4811 = extractvalue %dx.types.CBufRet.f32 %4807, 3
  br i1 %4784, label %4812, label %5005

; <label>:4812                                    ; preds = %4779
  %4813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 349)  ; CBufferLoadLegacy(handle,regIndex)
  %4814 = extractvalue %dx.types.CBufRet.f32 %4813, 0
  %4815 = fmul fast float %4814, %4814
  %4816 = fmul fast float %4815, %4787
  %4817 = fsub fast float 1.000000e+00, %4816
  %4818 = fcmp fast oge float %4817, 0.000000e+00
  %4819 = fmul fast float %4814, %4737
  %4820 = fmul fast float %4814, %4738
  %4821 = fmul fast float %4814, %4739
  %4822 = call float @dx.op.unary.f32(i32 24, float %4817)  ; Sqrt(value)
  %4823 = fmul fast float %4814, %4785
  %4824 = fsub fast float -0.000000e+00, %4822
  %4825 = fsub fast float %4824, %4823
  %4826 = fadd fast float %4825, %4821
  %4827 = select i1 %4818, float %4819, float 0.000000e+00
  %4828 = select i1 %4818, float %4820, float 0.000000e+00
  %4829 = select i1 %4818, float %4826, float 0.000000e+00
  %4830 = fmul fast float %4827, %4780
  %4831 = fmul fast float %4828, %4780
  %4832 = fmul fast float %4829, %4780
  %4833 = fadd fast float %4804, %4830
  %4834 = fadd fast float %4833, %4801
  %4835 = fadd fast float %4805, %4831
  %4836 = fadd fast float %4835, %4802
  %4837 = fadd fast float %4806, %4832
  %4838 = fadd fast float %4837, %4803
  %4839 = fmul fast float %4834, %4793
  %4840 = call float @dx.op.tertiary.f32(i32 46, float %4836, float %4795, float %4839)  ; FMad(a,b,c)
  %4841 = call float @dx.op.tertiary.f32(i32 46, float %4838, float %4797, float %4840)  ; FMad(a,b,c)
  %4842 = fmul fast float %4834, %4798
  %4843 = call float @dx.op.tertiary.f32(i32 46, float %4836, float %4799, float %4842)  ; FMad(a,b,c)
  %4844 = call float @dx.op.tertiary.f32(i32 46, float %4838, float %4800, float %4843)  ; FMad(a,b,c)
  %4845 = fsub fast float %4841, %4801
  %4846 = fsub fast float %4845, %4808
  %4847 = fadd fast float %4846, %4810
  %4848 = fsub fast float %4844, %4802
  %4849 = fsub fast float %4848, %4809
  %4850 = fadd fast float %4849, %4810
  %4851 = fmul fast float %4847, %4811
  %4852 = fmul fast float %4850, %4811
  %4853 = call float @dx.op.unary.f32(i32 7, float %4851)  ; Saturate(value)
  %4854 = call float @dx.op.unary.f32(i32 7, float %4852)  ; Saturate(value)
  %4855 = fsub fast float 1.000000e+00, %4853
  %4856 = fsub fast float 1.000000e+00, %4854
  %4857 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %4855, float %4856, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4858 = extractvalue %dx.types.ResRet.f32 %4857, 0
  %4859 = fmul fast float %4858, 0x3FBC5ABC00000000
  %4860 = extractvalue %dx.types.CBufRet.f32 %4813, 1
  %4861 = fmul fast float %4860, %4860
  %4862 = fmul fast float %4861, %4787
  %4863 = fsub fast float 1.000000e+00, %4862
  %4864 = fcmp fast oge float %4863, 0.000000e+00
  %4865 = fmul fast float %4860, %4737
  %4866 = fmul fast float %4860, %4738
  %4867 = fmul fast float %4860, %4739
  %4868 = call float @dx.op.unary.f32(i32 24, float %4863)  ; Sqrt(value)
  %4869 = fmul fast float %4860, %4785
  %4870 = fsub fast float -0.000000e+00, %4868
  %4871 = fsub fast float %4870, %4869
  %4872 = fadd fast float %4871, %4867
  %4873 = select i1 %4864, float %4865, float 0.000000e+00
  %4874 = select i1 %4864, float %4866, float 0.000000e+00
  %4875 = select i1 %4864, float %4872, float 0.000000e+00
  %4876 = fmul fast float %4873, %4780
  %4877 = fmul fast float %4874, %4780
  %4878 = fmul fast float %4875, %4780
  %4879 = fadd fast float %4804, %4876
  %4880 = fadd fast float %4879, %4801
  %4881 = fadd fast float %4805, %4877
  %4882 = fadd fast float %4881, %4802
  %4883 = fadd fast float %4806, %4878
  %4884 = fadd fast float %4883, %4803
  %4885 = fmul fast float %4880, %4793
  %4886 = call float @dx.op.tertiary.f32(i32 46, float %4882, float %4795, float %4885)  ; FMad(a,b,c)
  %4887 = call float @dx.op.tertiary.f32(i32 46, float %4884, float %4797, float %4886)  ; FMad(a,b,c)
  %4888 = fmul fast float %4880, %4798
  %4889 = call float @dx.op.tertiary.f32(i32 46, float %4882, float %4799, float %4888)  ; FMad(a,b,c)
  %4890 = call float @dx.op.tertiary.f32(i32 46, float %4884, float %4800, float %4889)  ; FMad(a,b,c)
  %4891 = fsub fast float %4887, %4801
  %4892 = fsub fast float %4891, %4808
  %4893 = fadd fast float %4892, %4810
  %4894 = fsub fast float %4890, %4802
  %4895 = fsub fast float %4894, %4809
  %4896 = fadd fast float %4895, %4810
  %4897 = fmul fast float %4893, %4811
  %4898 = fmul fast float %4896, %4811
  %4899 = call float @dx.op.unary.f32(i32 7, float %4897)  ; Saturate(value)
  %4900 = call float @dx.op.unary.f32(i32 7, float %4898)  ; Saturate(value)
  %4901 = fsub fast float 1.000000e+00, %4899
  %4902 = fsub fast float 1.000000e+00, %4900
  %4903 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %4901, float %4902, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4904 = extractvalue %dx.types.ResRet.f32 %4903, 0
  %4905 = fmul fast float %4904, 0x3F9E4BBD60000000
  %4906 = extractvalue %dx.types.CBufRet.f32 %4813, 2
  %4907 = fmul fast float %4906, %4906
  %4908 = fmul fast float %4907, %4787
  %4909 = fsub fast float 1.000000e+00, %4908
  %4910 = fcmp fast oge float %4909, 0.000000e+00
  %4911 = fmul fast float %4906, %4737
  %4912 = fmul fast float %4906, %4738
  %4913 = fmul fast float %4906, %4739
  %4914 = call float @dx.op.unary.f32(i32 24, float %4909)  ; Sqrt(value)
  %4915 = fmul fast float %4906, %4785
  %4916 = fsub fast float -0.000000e+00, %4914
  %4917 = fsub fast float %4916, %4915
  %4918 = fadd fast float %4917, %4913
  %4919 = select i1 %4910, float %4911, float 0.000000e+00
  %4920 = select i1 %4910, float %4912, float 0.000000e+00
  %4921 = select i1 %4910, float %4918, float 0.000000e+00
  %4922 = fmul fast float %4919, %4780
  %4923 = fmul fast float %4920, %4780
  %4924 = fmul fast float %4921, %4780
  %4925 = fadd fast float %4804, %4922
  %4926 = fadd fast float %4925, %4801
  %4927 = fadd fast float %4805, %4923
  %4928 = fadd fast float %4927, %4802
  %4929 = fadd fast float %4806, %4924
  %4930 = fadd fast float %4929, %4803
  %4931 = fmul fast float %4926, %4793
  %4932 = call float @dx.op.tertiary.f32(i32 46, float %4928, float %4795, float %4931)  ; FMad(a,b,c)
  %4933 = call float @dx.op.tertiary.f32(i32 46, float %4930, float %4797, float %4932)  ; FMad(a,b,c)
  %4934 = fmul fast float %4926, %4798
  %4935 = call float @dx.op.tertiary.f32(i32 46, float %4928, float %4799, float %4934)  ; FMad(a,b,c)
  %4936 = call float @dx.op.tertiary.f32(i32 46, float %4930, float %4800, float %4935)  ; FMad(a,b,c)
  %4937 = fsub fast float %4933, %4801
  %4938 = fsub fast float %4937, %4808
  %4939 = fadd fast float %4938, %4810
  %4940 = fsub fast float %4936, %4802
  %4941 = fsub fast float %4940, %4809
  %4942 = fadd fast float %4941, %4810
  %4943 = fmul fast float %4939, %4811
  %4944 = fmul fast float %4942, %4811
  %4945 = call float @dx.op.unary.f32(i32 7, float %4943)  ; Saturate(value)
  %4946 = call float @dx.op.unary.f32(i32 7, float %4944)  ; Saturate(value)
  %4947 = fsub fast float 1.000000e+00, %4945
  %4948 = fsub fast float 1.000000e+00, %4946
  %4949 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %4947, float %4948, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4950 = extractvalue %dx.types.ResRet.f32 %4949, 0
  %4951 = fmul fast float %4950, 0x3FDDEACB00000000
  %4952 = fadd fast float %4951, %4905
  %4953 = extractvalue %dx.types.CBufRet.f32 %4813, 3
  %4954 = fmul fast float %4953, %4953
  %4955 = fmul fast float %4954, %4787
  %4956 = fsub fast float 1.000000e+00, %4955
  %4957 = fcmp fast oge float %4956, 0.000000e+00
  %4958 = fmul fast float %4953, %4737
  %4959 = fmul fast float %4953, %4738
  %4960 = fmul fast float %4953, %4739
  %4961 = call float @dx.op.unary.f32(i32 24, float %4956)  ; Sqrt(value)
  %4962 = fmul fast float %4953, %4785
  %4963 = fsub fast float -0.000000e+00, %4961
  %4964 = fsub fast float %4963, %4962
  %4965 = fadd fast float %4964, %4960
  %4966 = select i1 %4957, float %4958, float 0.000000e+00
  %4967 = select i1 %4957, float %4959, float 0.000000e+00
  %4968 = select i1 %4957, float %4965, float 0.000000e+00
  %4969 = fmul fast float %4966, %4780
  %4970 = fmul fast float %4967, %4780
  %4971 = fmul fast float %4968, %4780
  %4972 = fadd fast float %4804, %4969
  %4973 = fadd fast float %4972, %4801
  %4974 = fadd fast float %4805, %4970
  %4975 = fadd fast float %4974, %4802
  %4976 = fadd fast float %4806, %4971
  %4977 = fadd fast float %4976, %4803
  %4978 = fmul fast float %4973, %4793
  %4979 = call float @dx.op.tertiary.f32(i32 46, float %4975, float %4795, float %4978)  ; FMad(a,b,c)
  %4980 = call float @dx.op.tertiary.f32(i32 46, float %4977, float %4797, float %4979)  ; FMad(a,b,c)
  %4981 = fmul fast float %4973, %4798
  %4982 = call float @dx.op.tertiary.f32(i32 46, float %4975, float %4799, float %4981)  ; FMad(a,b,c)
  %4983 = call float @dx.op.tertiary.f32(i32 46, float %4977, float %4800, float %4982)  ; FMad(a,b,c)
  %4984 = fsub fast float %4980, %4801
  %4985 = fsub fast float %4984, %4808
  %4986 = fadd fast float %4985, %4810
  %4987 = fsub fast float %4983, %4802
  %4988 = fsub fast float %4987, %4809
  %4989 = fadd fast float %4988, %4810
  %4990 = fmul fast float %4986, %4811
  %4991 = fmul fast float %4989, %4811
  %4992 = call float @dx.op.unary.f32(i32 7, float %4990)  ; Saturate(value)
  %4993 = call float @dx.op.unary.f32(i32 7, float %4991)  ; Saturate(value)
  %4994 = fsub fast float 1.000000e+00, %4992
  %4995 = fsub fast float 1.000000e+00, %4993
  %4996 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %4994, float %4995, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4997 = extractvalue %dx.types.ResRet.f32 %4996, 0
  %4998 = fmul fast float %4997, 0x3FE0183CA0000000
  %4999 = fmul fast float %4997, 0x3FB51033E0000000
  %5000 = fadd fast float %4952, %4998
  %5001 = fadd fast float %4950, %4904
  %5002 = fmul fast float %5001, 0x3FD9D2A200000000
  %5003 = fadd fast float %4999, %4859
  %5004 = fadd fast float %5003, %5002
  br label %5051

; <label>:5005                                    ; preds = %4779
  %5006 = fmul fast float %4787, 0x3FE2024E20000000
  %5007 = fsub fast float 1.000000e+00, %5006
  %5008 = fcmp fast oge float %5007, 0.000000e+00
  %5009 = fmul fast float %4737, 0x3FE8018960000000
  %5010 = fmul fast float %4738, 0x3FE8018960000000
  %5011 = fmul fast float %4739, 0x3FE8018960000000
  %5012 = call float @dx.op.unary.f32(i32 24, float %5007)  ; Sqrt(value)
  %5013 = fmul fast float %4785, 0x3FE8018960000000
  %5014 = fsub fast float %5011, %5012
  %5015 = fsub fast float %5014, %5013
  %5016 = select i1 %5008, float %5009, float 0.000000e+00
  %5017 = select i1 %5008, float %5010, float 0.000000e+00
  %5018 = select i1 %5008, float %5015, float 0.000000e+00
  %5019 = select i1 %4730, float %5016, float %4737
  %5020 = select i1 %4730, float %5017, float %4738
  %5021 = select i1 %4730, float %5018, float %4739
  %5022 = fmul fast float %5019, %4780
  %5023 = fmul fast float %5020, %4780
  %5024 = fmul fast float %5021, %4780
  %5025 = fadd fast float %4804, %5022
  %5026 = fadd fast float %5025, %4801
  %5027 = fadd fast float %4805, %5023
  %5028 = fadd fast float %5027, %4802
  %5029 = fadd fast float %4806, %5024
  %5030 = fadd fast float %5029, %4803
  %5031 = fmul fast float %5026, %4793
  %5032 = call float @dx.op.tertiary.f32(i32 46, float %5028, float %4795, float %5031)  ; FMad(a,b,c)
  %5033 = call float @dx.op.tertiary.f32(i32 46, float %5030, float %4797, float %5032)  ; FMad(a,b,c)
  %5034 = fmul fast float %5026, %4798
  %5035 = call float @dx.op.tertiary.f32(i32 46, float %5028, float %4799, float %5034)  ; FMad(a,b,c)
  %5036 = call float @dx.op.tertiary.f32(i32 46, float %5030, float %4800, float %5035)  ; FMad(a,b,c)
  %5037 = fsub fast float %5033, %4801
  %5038 = fsub fast float %5037, %4808
  %5039 = fadd fast float %5038, %4810
  %5040 = fsub fast float %5036, %4802
  %5041 = fsub fast float %5040, %4809
  %5042 = fadd fast float %5041, %4810
  %5043 = fmul fast float %5039, %4811
  %5044 = fmul fast float %5042, %4811
  %5045 = call float @dx.op.unary.f32(i32 7, float %5043)  ; Saturate(value)
  %5046 = call float @dx.op.unary.f32(i32 7, float %5044)  ; Saturate(value)
  %5047 = fsub fast float 1.000000e+00, %5045
  %5048 = fsub fast float 1.000000e+00, %5046
  %5049 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %5047, float %5048, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5050 = extractvalue %dx.types.ResRet.f32 %5049, 0
  br label %5051

; <label>:5051                                    ; preds = %5005, %4812
  %5052 = phi float [ %5050, %5005 ], [ %5000, %4812 ]
  %5053 = phi float [ %5050, %5005 ], [ %5004, %4812 ]
  %5054 = phi float [ %5050, %5005 ], [ %4858, %4812 ]
  %5055 = fmul fast float %4732, %4732
  %5056 = fmul fast float %4733, %4733
  %5057 = fadd fast float %5055, %5056
  %5058 = fmul fast float %4734, %4734
  %5059 = fadd fast float %5057, %5058
  %5060 = call float @dx.op.unary.f32(i32 24, float %5059)  ; Sqrt(value)
  %5061 = fmul fast float %4478, %4478
  %5062 = fmul fast float %4479, %4479
  %5063 = fadd fast float %5061, %5062
  %5064 = fmul fast float %4480, %4480
  %5065 = fadd fast float %5063, %5064
  %5066 = call float @dx.op.unary.f32(i32 24, float %5065)  ; Sqrt(value)
  %5067 = fsub fast float %5060, %5066
  %5068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5069 = extractvalue %dx.types.CBufRet.f32 %5068, 0
  %5070 = call float @dx.op.unary.f32(i32 6, float %5069)  ; FAbs(value)
  %5071 = fmul fast float %5066, %5066
  %5072 = fmul fast float %5071, %5070
  %5073 = fmul fast float %5067, %5067
  %5074 = fadd fast float %5073, %5071
  %5075 = fdiv fast float %5072, %5074
  %5076 = call float @dx.op.unary.f32(i32 7, float %5075)  ; Saturate(value)
  %5077 = call float @dx.op.unary.f32(i32 6, float %4785)  ; FAbs(value)
  %5078 = fsub fast float 1.000000e+00, %5077
  %5079 = bitcast float %5078 to i32
  %5080 = sitofp i32 %5079 to float
  %5081 = fptosi float %5080 to i32
  %5082 = bitcast i32 %5081 to float
  %5083 = fmul fast float %5082, 0x3FEF333340000000
  %5084 = fadd fast float %5083, 0x3F999999A0000000
  %5085 = call float @dx.op.unary.f32(i32 7, float %5084)  ; Saturate(value)
  %5086 = fsub fast float 1.000000e+00, %5085
  %5087 = fadd fast float %5052, 1.000000e+00
  %5088 = fadd fast float %5053, 1.000000e+00
  %5089 = fadd fast float %5054, 1.000000e+00
  %5090 = fmul fast float %5086, %5087
  %5091 = fmul fast float %5086, %5088
  %5092 = fmul fast float %5086, %5089
  %5093 = fmul fast float %5076, %5087
  %5094 = fmul fast float %5093, %5085
  %5095 = fmul fast float %5076, %5088
  %5096 = fmul fast float %5095, %5085
  %5097 = fmul fast float %5076, %5089
  %5098 = fmul fast float %5097, %5085
  %5099 = fadd fast float %5094, 1.000000e+00
  %5100 = fadd fast float %5096, 1.000000e+00
  %5101 = fadd fast float %5098, 1.000000e+00
  %5102 = call float @dx.op.unary.f32(i32 6, float %437)  ; FAbs(value)
  %5103 = call float @dx.op.unary.f32(i32 7, float %5102)  ; Saturate(value)
  %5104 = select i1 %4730, float %5090, float %5099
  %5105 = select i1 %4730, float %5091, float %5100
  %5106 = select i1 %4730, float %5092, float %5101
  %5107 = select i1 %4727, float %5103, float 0.000000e+00
  %5108 = fadd fast float %5104, -1.000000e+00
  %5109 = fadd fast float %5105, -1.000000e+00
  %5110 = fadd fast float %5106, -1.000000e+00
  %5111 = fmul fast float %5108, %5107
  %5112 = fmul fast float %5109, %5107
  %5113 = fmul fast float %5110, %5107
  %5114 = fadd fast float %5111, 1.000000e+00
  %5115 = fadd fast float %5112, 1.000000e+00
  %5116 = fadd fast float %5113, 1.000000e+00
  %5117 = fmul fast float %4721, %5114
  %5118 = fmul fast float %4722, %5115
  %5119 = fmul fast float %4723, %5116
  %5120 = fadd fast float %4497, %367
  %5121 = fadd fast float %4498, %368
  %5122 = fadd fast float %4499, %369
  %5123 = call float @dx.op.dot3.f32(i32 55, float %4497, float %4498, float %4499, float %4491, float %4492, float %4493)  ; Dot3(ax,ay,az,bx,by,bz)
  %5124 = call float @dx.op.dot3.f32(i32 55, float %4497, float %4498, float %4499, float %5120, float %5121, float %5122)  ; Dot3(ax,ay,az,bx,by,bz)
  %5125 = fdiv fast float 1.000000e+00, %5124
  %5126 = fmul fast float %5125, %5123
  %5127 = fmul fast float %5126, %5120
  %5128 = fmul fast float %5126, %5121
  %5129 = fmul fast float %5126, %5122
  %5130 = fadd fast float %4478, %5127
  %5131 = fadd fast float %4479, %5128
  %5132 = fadd fast float %4480, %5129
  %5133 = call float @dx.op.dot3.f32(i32 55, float %5130, float %5131, float %5132, float %4440, float %4441, float %4442)  ; Dot3(ax,ay,az,bx,by,bz)
  %5134 = fdiv fast float %5133, %4477
  %5135 = call float @dx.op.binary.f32(i32 35, float %5134, float -1.000000e+00)  ; FMax(a,b)
  %5136 = call float @dx.op.binary.f32(i32 36, float %5135, float 1.000000e+00)  ; FMin(a,b)
  %5137 = fmul fast float %5136, %4440
  %5138 = fmul fast float %5136, %4441
  %5139 = fmul fast float %5136, %4442
  %5140 = fadd fast float %4732, %5137
  %5141 = fadd fast float %4733, %5138
  %5142 = fsub fast float %4450, %437
  %5143 = fadd fast float %5142, %5139
  %5144 = call float @dx.op.dot3.f32(i32 55, float %5140, float %5141, float %5143, float %5140, float %5141, float %5143)  ; Dot3(ax,ay,az,bx,by,bz)
  %5145 = call float @dx.op.unary.f32(i32 25, float %5144)  ; Rsqrt(value)
  %5146 = fmul fast float %5140, %5145
  %5147 = fmul fast float %5141, %5145
  %5148 = fmul fast float %5143, %5145
  %5149 = fsub fast float %5146, %572
  %5150 = fsub fast float %5147, %573
  %5151 = fsub fast float %5148, %574
  %5152 = call float @dx.op.dot3.f32(i32 55, float %5149, float %5150, float %5151, float %5149, float %5150, float %5151)  ; Dot3(ax,ay,az,bx,by,bz)
  %5153 = call float @dx.op.unary.f32(i32 25, float %5152)  ; Rsqrt(value)
  %5154 = fmul fast float %5149, %5153
  %5155 = fmul fast float %5150, %5153
  %5156 = fmul fast float %5151, %5153
  %5157 = call float @dx.op.dot3.f32(i32 55, float %5146, float %5147, float %5148, float %367, float %368, float %369)  ; Dot3(ax,ay,az,bx,by,bz)
  %5158 = call float @dx.op.dot3.f32(i32 55, float %575, float %576, float %577, float %5154, float %5155, float %5156)  ; Dot3(ax,ay,az,bx,by,bz)
  %5159 = fmul fast float %5145, %4445
  %5160 = fmul fast float %5159, %5159
  %5161 = bitcast float %5160 to i32
  %5162 = ashr i32 %5161, 1
  %5163 = sub nsw i32 1597463007, %5162
  %5164 = bitcast i32 %5163 to float
  %5165 = fmul fast float %5164, %5157
  %5166 = fmul fast float %5165, %5165
  %5167 = fsub fast float 1.000000e+00, %5166
  %5168 = fmul fast float %5157, %5160
  %5169 = call float @dx.op.unary.f32(i32 7, float %5168)  ; Saturate(value)
  %5170 = fmul fast float %5165, 5.000000e-01
  %5171 = fadd fast float %5170, 5.000000e-01
  %5172 = fmul fast float %5171, %5160
  %5173 = call float @dx.op.unary.f32(i32 7, float %5172)  ; Saturate(value)
  %5174 = bitcast float %5173 to i32
  %5175 = ashr i32 %5174, 1
  %5176 = add nsw i32 %5175, 532487669
  %5177 = bitcast i32 %5176 to float
  %5178 = fmul fast float %5177, %5173
  %5179 = fcmp fast ogt float %5167, 0.000000e+00
  %5180 = select i1 %5179, float %5178, float %5169
  %5181 = call float @dx.op.unary.f32(i32 7, float %5157)  ; Saturate(value)
  %5182 = fmul fast float %5181, %5181
  %5183 = fmul fast float %5182, 0x47DE623840000000
  %5184 = call float @dx.op.unary.f32(i32 7, float %5183)  ; Saturate(value)
  %5185 = fmul fast float %5180, %5184
  %5186 = call float @dx.op.dot3.f32(i32 55, float %4440, float %4441, float %4442, float %586, float %587, float %588)  ; Dot3(ax,ay,az,bx,by,bz)
  %5187 = call float @dx.op.dot3.f32(i32 55, float %4440, float %4441, float %4442, float %4491, float %4492, float %4493)  ; Dot3(ax,ay,az,bx,by,bz)
  %5188 = call float @dx.op.dot3.f32(i32 55, float %586, float %587, float %588, float %4491, float %4492, float %4493)  ; Dot3(ax,ay,az,bx,by,bz)
  %5189 = fmul fast float %5186, %5186
  %5190 = fsub fast float %4477, %5189
  %5191 = fmul fast float %5188, %5186
  %5192 = fsub fast float %5191, %5187
  %5193 = fdiv fast float %5192, %5190
  %5194 = call float @dx.op.binary.f32(i32 35, float %5193, float -1.500000e+00)  ; FMax(a,b)
  %5195 = call float @dx.op.binary.f32(i32 36, float %5194, float 1.500000e+00)  ; FMin(a,b)
  %5196 = fmul fast float %5195, %5195
  %5197 = fmul fast float %5196, 0x3FC2F68380000000
  %5198 = fmul fast float %5197, %5195
  %5199 = fsub fast float %5195, %5198
  %5200 = fmul fast float %5199, %4440
  %5201 = fmul fast float %5199, %4441
  %5202 = fmul fast float %5199, %4442
  %5203 = fadd fast float %5200, %4488
  %5204 = fadd fast float %5201, %4489
  %5205 = fadd fast float %5202, %4490
  %5206 = fsub fast float %5203, %435
  %5207 = fsub fast float %5204, %436
  %5208 = fsub fast float %5205, %437
  %5209 = call float @dx.op.dot3.f32(i32 55, float %5206, float %5207, float %5208, float %586, float %587, float %588)  ; Dot3(ax,ay,az,bx,by,bz)
  %5210 = fmul fast float %5209, %586
  %5211 = fmul fast float %5209, %587
  %5212 = fmul fast float %5209, %588
  %5213 = fsub fast float %5210, %5206
  %5214 = fsub fast float %5211, %5207
  %5215 = fsub fast float %5212, %5208
  %5216 = call float @dx.op.dot3.f32(i32 55, float %5213, float %5214, float %5215, float %5213, float %5214, float %5215)  ; Dot3(ax,ay,az,bx,by,bz)
  %5217 = bitcast float %5216 to i32
  %5218 = ashr i32 %5217, 1
  %5219 = sub nsw i32 1597463007, %5218
  %5220 = bitcast i32 %5219 to float
  %5221 = fmul fast float %5220, %4445
  %5222 = call float @dx.op.dot3.f32(i32 55, float %5206, float %5207, float %5208, float %5206, float %5207, float %5208)  ; Dot3(ax,ay,az,bx,by,bz)
  %5223 = bitcast float %5222 to i32
  %5224 = ashr i32 %5223, 1
  %5225 = sub nsw i32 1597463007, %5224
  %5226 = bitcast i32 %5225 to float
  %5227 = fmul fast float %5221, %5221
  %5228 = fadd fast float %5227, 1.250000e-01
  %5229 = call float @dx.op.unary.f32(i32 25, float %5228)  ; Rsqrt(value)
  %5230 = fmul fast float %5221, %5229
  %5231 = fmul fast float %5213, %5230
  %5232 = fmul fast float %5214, %5230
  %5233 = fmul fast float %5215, %5230
  %5234 = fadd fast float %5206, %5231
  %5235 = fadd fast float %5207, %5232
  %5236 = fadd fast float %5208, %5233
  %5237 = call float @dx.op.dot3.f32(i32 55, float %5234, float %5235, float %5236, float %5234, float %5235, float %5236)  ; Dot3(ax,ay,az,bx,by,bz)
  %5238 = call float @dx.op.unary.f32(i32 25, float %5237)  ; Rsqrt(value)
  %5239 = fmul fast float %5234, %5238
  %5240 = fmul fast float %5235, %5238
  %5241 = fmul fast float %5236, %5238
  %5242 = fsub fast float %5239, %572
  %5243 = fsub fast float %5240, %573
  %5244 = fsub fast float %5241, %574
  %5245 = call float @dx.op.dot3.f32(i32 55, float %5242, float %5243, float %5244, float %5242, float %5243, float %5244)  ; Dot3(ax,ay,az,bx,by,bz)
  %5246 = call float @dx.op.unary.f32(i32 25, float %5245)  ; Rsqrt(value)
  %5247 = fmul fast float %5242, %5246
  %5248 = fmul fast float %5243, %5246
  %5249 = fmul fast float %5244, %5246
  %5250 = call float @dx.op.dot3.f32(i32 55, float %367, float %368, float %369, float %5247, float %5248, float %5249)  ; Dot3(ax,ay,az,bx,by,bz)
  %5251 = fmul fast float %5250, %5250
  %5252 = call float @dx.op.unary.f32(i32 6, float %5157)  ; FAbs(value)
  %5253 = fsub fast float 1.000000e+00, %592
  %5254 = fmul fast float %580, %580
  %5255 = fmul fast float %5254, %5253
  %5256 = fadd fast float %5255, %592
  %5257 = bitcast float %5256 to i32
  %5258 = ashr i32 %5257, 1
  %5259 = add nsw i32 %5258, 532487669
  %5260 = bitcast i32 %5259 to float
  %5261 = fadd fast float %5260, %580
  %5262 = fmul fast float %592, %5251
  %5263 = fsub fast float 1.000000e+00, %5251
  %5264 = fadd fast float %5263, %5262
  %5265 = fmul fast float %5252, %5252
  %5266 = fmul fast float %5265, %5253
  %5267 = fadd fast float %5266, %592
  %5268 = bitcast float %5267 to i32
  %5269 = ashr i32 %5268, 1
  %5270 = add nsw i32 %5269, 532487669
  %5271 = bitcast i32 %5270 to float
  %5272 = fadd fast float %5271, %5252
  %5273 = fmul fast float %5264, %5264
  %5274 = fmul fast float %5273, %5261
  %5275 = fmul fast float %5274, %5272
  %5276 = fdiv fast float 1.000000e+00, %5275
  %5277 = bitcast float %592 to i32
  %5278 = sitofp i32 %5277 to float
  %5279 = fmul fast float %5278, 0x3FE7F73180000000
  %5280 = fadd fast float %5279, 0x41AFE27C40000000
  %5281 = fptosi float %5280 to i32
  %5282 = bitcast i32 %5281 to float
  %5283 = fmul fast float %4445, 0x3FD80E9D60000000
  %5284 = fmul fast float %5283, %5226
  %5285 = fadd fast float %5282, %5284
  %5286 = bitcast float %5285 to i32
  %5287 = sub nsw i32 2129859010, %5286
  %5288 = bitcast i32 %5287 to float
  %5289 = fmul fast float %592, %5276
  %5290 = fmul fast float %5289, %5282
  %5291 = fmul fast float %5290, %5288
  %5292 = call float @dx.op.unary.f32(i32 6, float %5158)  ; FAbs(value)
  %5293 = fsub fast float 1.000000e+00, %5292
  %5294 = bitcast float %5293 to i32
  %5295 = sitofp i32 %5294 to float
  %5296 = fmul fast float %5295, 5.000000e+00
  %5297 = fadd fast float %5296, 0xC1EFBF8940000000
  %5298 = fptosi float %5297 to i32
  %5299 = bitcast i32 %5298 to float
  %5300 = fsub fast float 1.000000e+00, %558
  %5301 = fsub fast float 1.000000e+00, %559
  %5302 = fsub fast float 1.000000e+00, %578
  %5303 = fmul fast float %5299, %5300
  %5304 = fmul fast float %5299, %5301
  %5305 = fmul fast float %5299, %5302
  %5306 = fadd fast float %5303, %558
  %5307 = fadd fast float %5304, %559
  %5308 = fadd fast float %5305, %578
  %5309 = fmul fast float %5157, 9.843750e-01
  %5310 = fadd fast float %5309, 7.812500e-03
  %5311 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %45, float %5310, float %2035, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5312 = extractvalue %dx.types.ResRet.f32 %5311, 2
  %5313 = extractvalue %dx.types.ResRet.f32 %5311, 3
  %5314 = fmul fast float %5312, %558
  %5315 = fmul fast float %5312, %559
  %5316 = fmul fast float %5312, %578
  %5317 = fadd fast float %5314, %5313
  %5318 = fadd fast float %5315, %5313
  %5319 = fadd fast float %5316, %5313
  %5320 = call float @dx.op.binary.f32(i32 35, float %5318, float %5319)  ; FMax(a,b)
  %5321 = call float @dx.op.binary.f32(i32 35, float %5317, float %5320)  ; FMax(a,b)
  %5322 = fsub fast float 1.000000e+00, %5321
  %5323 = fmul fast float %5185, %5117
  %5324 = fmul fast float %5323, %5322
  %5325 = fmul fast float %5185, %5118
  %5326 = fmul fast float %5325, %5322
  %5327 = fmul fast float %5185, %5119
  %5328 = fmul fast float %5327, %5322
  %5329 = fadd fast float %5324, %4417
  %5330 = fadd fast float %5326, %4418
  %5331 = fadd fast float %5328, %4419
  %5332 = fmul fast float %5323, %5306
  %5333 = fmul fast float %5332, %5291
  %5334 = fmul fast float %5325, %5307
  %5335 = fmul fast float %5334, %5291
  %5336 = fmul fast float %5327, %5308
  %5337 = fmul fast float %5336, %5291
  %5338 = fadd fast float %5333, %4414
  %5339 = fadd fast float %5335, %4415
  %5340 = fadd fast float %5337, %4416
  br label %4561

; <label>:5341                                    ; preds = %4561
  br label %5342

; <label>:5342                                    ; preds = %5341, %4380
  %5343 = phi float [ %4382, %4380 ], [ %4562, %5341 ]
  %5344 = phi float [ %4383, %4380 ], [ %4563, %5341 ]
  %5345 = phi float [ %4384, %4380 ], [ %4564, %5341 ]
  %5346 = phi float [ %4385, %4380 ], [ %4565, %5341 ]
  %5347 = phi float [ %4386, %4380 ], [ %4566, %5341 ]
  %5348 = phi float [ %4387, %4380 ], [ %4567, %5341 ]
  %5349 = add i32 %4381, 1
  %5350 = icmp ugt i32 %5349, %4377
  br i1 %5350, label %5351, label %4380

; <label>:5351                                    ; preds = %5342
  br label %5352

; <label>:5352                                    ; preds = %5351, %4330, %4320
  %5353 = phi float [ %4321, %4320 ], [ %4321, %4330 ], [ %5343, %5351 ]
  %5354 = phi float [ %4322, %4320 ], [ %4322, %4330 ], [ %5344, %5351 ]
  %5355 = phi float [ %4323, %4320 ], [ %4323, %4330 ], [ %5345, %5351 ]
  %5356 = phi float [ %4324, %4320 ], [ %4324, %4330 ], [ %5346, %5351 ]
  %5357 = phi float [ %4325, %4320 ], [ %4325, %4330 ], [ %5347, %5351 ]
  %5358 = phi float [ %4326, %4320 ], [ %4326, %4330 ], [ %5348, %5351 ]
  %5359 = call float @dx.op.unary.f32(i32 24, float %549)  ; Sqrt(value)
  %5360 = call float @dx.op.unary.f32(i32 24, float %550)  ; Sqrt(value)
  %5361 = call float @dx.op.unary.f32(i32 24, float %551)  ; Sqrt(value)
  %5362 = fmul fast float %5359, %5356
  %5363 = fmul fast float %5360, %5357
  %5364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5365 = extractvalue %dx.types.CBufRet.f32 %5364, 0
  br i1 %172, label %5366, label %5386

; <label>:5366                                    ; preds = %5352
  %5367 = fadd fast float %5358, %566
  %5368 = fmul fast float %5367, %564
  %5369 = fsub fast float 1.000000e+00, %564
  %5370 = call float @dx.op.unary.f32(i32 7, float %5369)  ; Saturate(value)
  %5371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5372 = extractvalue %dx.types.CBufRet.f32 %5371, 3
  %5373 = fmul fast float %5372, %5370
  %5374 = fadd fast float %5373, %5368
  %5375 = fsub fast float 1.000000e+00, %580
  %5376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5377 = extractvalue %dx.types.CBufRet.f32 %5376, 0
  %5378 = fmul fast float %5377, %5375
  %5379 = fsub fast float %5374, %5378
  %5380 = fadd fast float %5363, %5362
  %5381 = extractvalue %dx.types.CBufRet.f32 %5371, 1
  %5382 = fsub fast float %5379, %5381
  %5383 = extractvalue %dx.types.CBufRet.f32 %5371, 2
  %5384 = fmul fast float %5382, %5383
  %5385 = call float @dx.op.unary.f32(i32 7, float %5384)  ; Saturate(value)
  br label %5390

; <label>:5386                                    ; preds = %5352
  %5387 = fmul fast float %5361, %5358
  %5388 = fmul fast float %5365, %5363
  %5389 = fmul fast float %5387, %5365
  br label %5390

; <label>:5390                                    ; preds = %5386, %5366
  %5391 = phi float [ %5380, %5366 ], [ %5362, %5386 ]
  %5392 = phi float [ %5385, %5366 ], [ %5388, %5386 ]
  %5393 = phi float [ 1.000000e+00, %5366 ], [ %5389, %5386 ]
  %5394 = fmul float %5365, %5391
  %5395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5396 = extractvalue %dx.types.CBufRet.f32 %5395, 0
  %5397 = fmul fast float %5396, %5354
  %5398 = fmul fast float %5396, %5355
  %5399 = fadd fast float %5354, %5353
  %5400 = select i1 %172, float %5399, float %5353
  %5401 = fmul float %5400, %5396
  %5402 = select i1 %172, float 0.000000e+00, float %5397
  %5403 = select i1 %172, float 0.000000e+00, float %5398
  %5404 = call float @dx.op.binary.f32(i32 36, float %5394, float 3.225500e+04)  ; FMin(a,b)
  %5405 = call float @dx.op.binary.f32(i32 36, float %5392, float 3.225500e+04)  ; FMin(a,b)
  %5406 = call float @dx.op.binary.f32(i32 36, float %5393, float 3.225500e+04)  ; FMin(a,b)
  %5407 = call float @dx.op.binary.f32(i32 36, float %5401, float 3.225500e+04)  ; FMin(a,b)
  %5408 = call float @dx.op.binary.f32(i32 36, float %5402, float 3.225500e+04)  ; FMin(a,b)
  %5409 = call float @dx.op.binary.f32(i32 36, float %5403, float 3.225500e+04)  ; FMin(a,b)
  %5410 = and i32 %148, 4
  %5411 = icmp eq i32 %5410, 0
  %5412 = xor i1 %142, true
  %5413 = or i1 %5411, %5412
  br i1 %5413, label %5414, label %5421

; <label>:5414                                    ; preds = %5390
  %5415 = fmul fast float %5404, %5359
  %5416 = fmul fast float %5405, %5360
  %5417 = fmul fast float %5406, %5361
  %5418 = fadd fast float %5407, %5415
  %5419 = fadd fast float %5408, %5416
  %5420 = fadd fast float %5409, %5417
  br label %5421

; <label>:5421                                    ; preds = %5414, %5390
  %5422 = phi float [ %5418, %5414 ], [ %5407, %5390 ]
  %5423 = phi float [ %5419, %5414 ], [ %5408, %5390 ]
  %5424 = phi float [ %5420, %5414 ], [ %5409, %5390 ]
  %5425 = select i1 %172, float %5405, float %5423
  %5426 = select i1 %172, float %5406, float %5424
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5422)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5425)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5426)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %5404)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %5405)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %5406)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

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
!dx.viewIdState = !{!62}
!dx.entryPoints = !{!63}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, !50, !52, !55}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !43, !44, !45, !46, !47, !48, !49}
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
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!24 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!25 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!26 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!27 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!28 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!29 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 61, i32 1, i32 2, i32 0, !7}
!30 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!31 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!32 = !{i32 24, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!33 = !{i32 25, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!34 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!35 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!36 = !{i32 28, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!37 = !{i32 29, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!38 = !{i32 30, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!39 = !{i32 31, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!40 = !{i32 32, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!41 = !{i32 33, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !42}
!42 = !{i32 0, i32 14}
!43 = !{i32 34, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!44 = !{i32 35, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!45 = !{i32 36, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!46 = !{i32 37, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!47 = !{i32 38, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!48 = !{i32 39, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!49 = !{i32 40, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!50 = !{!51}
!51 = !{i32 0, %"class.RWTexture2D<vector<float, 2> >"* undef, !"", i32 0, i32 7, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!52 = !{!53, !54}
!53 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!54 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 256, null}
!55 = !{!56, !57, !58, !59, !60, !61}
!56 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!57 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!58 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!59 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!60 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!61 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!62 = !{[63 x i32] [i32 61, i32 8, i32 119, i32 119, i32 0, i32 119, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 0, i32 0, i32 119, i32 119, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 0, i32 0, i32 119, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 119, i32 0, i32 0, i32 119, i32 119]}
!63 = !{void ()* @ps_main, !"ps_main", !64, !4, !98}
!64 = !{!65, !95, null}
!65 = !{!66, !69, !70, !72, !74, !75, !77, !80, !82, !84, !86, !87, !88, !89, !90, !91, !93, !94}
!66 = !{i32 0, !"SV_Position", i8 9, i8 3, !67, i8 4, i32 1, i8 4, i32 0, i8 0, !68}
!67 = !{i32 0}
!68 = !{i32 3, i32 11}
!69 = !{i32 1, !"COLOR", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 1, i8 0, null}
!70 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 2, i8 0, !71}
!71 = !{i32 3, i32 8}
!72 = !{i32 3, !"NORMAL", i8 9, i8 0, !67, i8 2, i32 1, i8 3, i32 3, i8 0, !73}
!73 = !{i32 3, i32 7}
!74 = !{i32 4, !"TANGENT", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 4, i8 0, null}
!75 = !{i32 5, !"CARD_DEPTH_OFFSET", i8 9, i8 0, !67, i8 2, i32 1, i8 1, i32 3, i8 3, !76}
!76 = !{i32 3, i32 1}
!77 = !{i32 6, !"CARD_BARY_AND_TILE", i8 9, i8 0, !78, i8 1, i32 1, i8 4, i32 5, i8 0, !79}
!78 = !{i32 1}
!79 = !{i32 3, i32 3}
!80 = !{i32 7, !"CARD_TILE2_AND_TILE", i8 9, i8 0, !81, i8 1, i32 1, i8 4, i32 6, i8 0, null}
!81 = !{i32 3}
!82 = !{i32 8, !"CARD_TEXCOORDS_AND_RAY", i8 9, i8 0, !78, i8 4, i32 1, i8 4, i32 7, i8 0, !83}
!83 = !{i32 3, i32 15}
!84 = !{i32 9, !"CARD_TEXCOORDS_AND_RAY", i8 9, i8 0, !85, i8 4, i32 1, i8 4, i32 8, i8 0, !83}
!85 = !{i32 2}
!86 = !{i32 10, !"CARD_TEXCOORDS_AND_RAY", i8 9, i8 0, !81, i8 4, i32 1, i8 4, i32 9, i8 0, !83}
!87 = !{i32 11, !"CARD_DEPTH_AND_SCALE", i8 9, i8 0, !67, i8 4, i32 1, i8 4, i32 10, i8 0, !73}
!88 = !{i32 12, !"LGV_POSITION_INDEX", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 11, i8 0, !71}
!89 = !{i32 13, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !67, i8 2, i32 1, i8 2, i32 12, i8 0, null}
!90 = !{i32 14, !"SCEONDARY_NORMAL", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 13, i8 0, null}
!91 = !{i32 15, !"PACKED_TRI_DATA", i8 5, i8 0, !67, i8 1, i32 1, i8 4, i32 14, i8 0, !92}
!92 = !{i32 3, i32 9}
!93 = !{i32 16, !"SV_IsFrontFace", i8 5, i8 13, !67, i8 1, i32 1, i8 1, i32 15, i8 0, !76}
!94 = !{i32 17, !"SV_SampleIndex", i8 5, i8 12, !67, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!95 = !{!96, !97}
!96 = !{i32 0, !"SV_Target", i8 9, i8 16, !67, i8 0, i32 1, i8 4, i32 0, i8 0, !83}
!97 = !{i32 1, !"SV_Target", i8 9, i8 16, !78, i8 0, i32 1, i8 4, i32 1, i8 0, !83}
!98 = !{i32 0, i64 24}
!99 = !{!100, !102, !103, !104, !105, !107, !108, !109}
!100 = distinct !{!100, !101, !"\01?getCardTexcoordsNormalAlpha@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAIAIAMUPixelInput@@MV?$matrix@M$02$02@@V1@M@Z: %outTexCoords"}
!101 = distinct !{!101, !"\01?getCardTexcoordsNormalAlpha@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAIAIAMUPixelInput@@MV?$matrix@M$02$02@@V1@M@Z"}
!102 = distinct !{!102, !101, !"\01?getCardTexcoordsNormalAlpha@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAIAIAMUPixelInput@@MV?$matrix@M$02$02@@V1@M@Z: %outNormal"}
!103 = distinct !{!103, !101, !"\01?getCardTexcoordsNormalAlpha@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAIAIAMUPixelInput@@MV?$matrix@M$02$02@@V1@M@Z: %outCoverage"}
!104 = distinct !{!104, !101, !"\01?getCardTexcoordsNormalAlpha@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAIAIAMUPixelInput@@MV?$matrix@M$02$02@@V1@M@Z: %outMipLevel"}
!105 = distinct !{!105, !106, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@M@Z: %outTexCoords"}
!106 = distinct !{!106, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@M@Z"}
!107 = distinct !{!107, !106, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@M@Z: %outNormal"}
!108 = distinct !{!108, !106, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@M@Z: %outMipLevel"}
!109 = distinct !{!109, !106, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@M@Z: %outCoverage"}
!110 = !{!111, !111, i64 0}
!111 = !{!"float", !112, i64 0}
!112 = !{!"omnipotent char", !113, i64 0}
!113 = !{!"Simple C/C++ TBAA"}
!114 = !{!115, !117}
!115 = distinct !{!115, !116, !"\01?GetLightGridVolumeTransformParamsStatic@@YA?AULightGridVolumeTransformParams@@II@Z: %agg.result"}
!116 = distinct !{!116, !"\01?GetLightGridVolumeTransformParamsStatic@@YA?AULightGridVolumeTransformParams@@II@Z"}
!117 = distinct !{!117, !118, !"\01?GetLightGridVolumeTransformParams@@YA?AULightGridVolumeTransformParams@@II@Z: %agg.result"}
!118 = distinct !{!118, !"\01?GetLightGridVolumeTransformParams@@YA?AULightGridVolumeTransformParams@@II@Z"}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !128}
!128 = !{!"llvm.loop.unroll.disable"}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 1}
!134 = !{!135, !135, i64 0}
!135 = !{!"int", !112, i64 0}
!136 = !{!137, !139, !141, !143}
!137 = distinct !{!137, !138, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!138 = distinct !{!138, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!139 = distinct !{!139, !140, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!140 = distinct !{!140, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!141 = distinct !{!141, !142, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!142 = distinct !{!142, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!143 = distinct !{!143, !144, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!144 = distinct !{!144, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!145 = distinct !{!145, !"dx.controlflow.hints", i32 1}
!146 = distinct !{!146, !128}
!147 = distinct !{!147, !128}
!148 = distinct !{!148, !"dx.controlflow.hints", i32 1}
!149 = distinct !{!149, !"dx.controlflow.hints", i32 1}
!150 = distinct !{!150, !"dx.controlflow.hints", i32 1}
!151 = distinct !{!151, !"dx.controlflow.hints", i32 1}
!152 = distinct !{!152, !"dx.controlflow.hints", i32 1}
!153 = distinct !{!153, !"dx.controlflow.hints", i32 1}
!154 = distinct !{!154, !"dx.controlflow.hints", i32 1}
!155 = distinct !{!155, !"dx.controlflow.hints", i32 1}
!156 = distinct !{!156, !"dx.controlflow.hints", i32 1}

