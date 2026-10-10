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
; shader hash: 96aa083b766d51bf996358c35d1fe3f2
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
  %235 = getelementptr [3 x float], [3 x float]* %81, i32 0, i32 0
  %236 = getelementptr [3 x float], [3 x float]* %82, i32 0, i32 0
  store float %69, float* %235, align 4
  store float %70, float* %236, align 4
  %237 = getelementptr [3 x float], [3 x float]* %81, i32 0, i32 1
  %238 = getelementptr [3 x float], [3 x float]* %82, i32 0, i32 1
  store float %65, float* %237, align 4
  store float %66, float* %238, align 4
  %239 = getelementptr [3 x float], [3 x float]* %81, i32 0, i32 2
  %240 = getelementptr [3 x float], [3 x float]* %82, i32 0, i32 2
  store float %61, float* %239, align 4
  store float %62, float* %240, align 4
  %241 = getelementptr [3 x float], [3 x float]* %83, i32 0, i32 0
  %242 = getelementptr [3 x float], [3 x float]* %84, i32 0, i32 0
  store float %67, float* %241, align 4
  store float %68, float* %242, align 4
  %243 = getelementptr [3 x float], [3 x float]* %83, i32 0, i32 1
  %244 = getelementptr [3 x float], [3 x float]* %84, i32 0, i32 1
  store float %63, float* %243, align 4
  store float %64, float* %244, align 4
  %245 = getelementptr [3 x float], [3 x float]* %83, i32 0, i32 2
  %246 = getelementptr [3 x float], [3 x float]* %84, i32 0, i32 2
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
  %262 = getelementptr [3 x float], [3 x float]* %83, i32 0, i32 %254
  %263 = getelementptr [3 x float], [3 x float]* %84, i32 0, i32 %254
  %264 = load float, float* %262, align 4
  %265 = load float, float* %263, align 4
  %266 = fmul fast float %264, %261
  %267 = fmul fast float %265, %261
  %268 = getelementptr [3 x float], [3 x float]* %81, i32 0, i32 %254
  %269 = getelementptr [3 x float], [3 x float]* %82, i32 0, i32 %254
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
  %299 = add i32 %53, 72
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
  %387 = extractvalue %dx.types.ResRet.f32 %385, 1
  %388 = extractvalue %dx.types.ResRet.f32 %385, 2
  %389 = extractvalue %dx.types.ResRet.f32 %385, 3
  %390 = add i32 %53, 68
  %391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.i32 %391, 0
  %393 = add i32 %392, 0
  %394 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %393, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %395 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %394, %dx.types.Handle %45, float %348, float %349, float undef, float undef, i32 0, i32 0, i32 undef, float %347)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %396 = extractvalue %dx.types.ResRet.f32 %395, 0
  %397 = add i32 %53, 72
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = add i32 %399, 0
  %401 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %400, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %402 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %401, %dx.types.Handle %45, float %348, float %349, float undef, float undef, i32 0, i32 0, i32 undef, float %347)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %403 = extractvalue %dx.types.ResRet.f32 %402, 0
  %404 = fadd fast float %73, 1.000000e+00
  %405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %406 = extractvalue %dx.types.ResRet.i32 %405, 2
  %407 = bitcast i32 %406 to float
  %408 = fmul fast float %403, 2.000000e+00
  %409 = fsub fast float %404, %408
  %410 = fmul fast float %407, %409
  %411 = fadd fast float %410, %80
  %412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %413 = extractvalue %dx.types.CBufRet.f32 %412, 2
  %414 = extractvalue %dx.types.CBufRet.f32 %412, 3
  %415 = fmul fast float %98, 2.000000e+00
  %416 = fmul fast float %415, %413
  %417 = fmul fast float %99, 2.000000e+00
  %418 = fmul fast float %417, %414
  %419 = fsub fast float 1.000000e+00, %416
  %420 = fsub fast float 1.000000e+00, %418
  %421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %422 = extractvalue %dx.types.CBufRet.f32 %421, 0
  %423 = extractvalue %dx.types.CBufRet.f32 %421, 1
  %424 = extractvalue %dx.types.CBufRet.f32 %421, 2
  %425 = fmul fast float %419, %422
  %426 = fmul fast float %419, %423
  %427 = fmul fast float %419, %424
  %428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %429 = extractvalue %dx.types.CBufRet.f32 %428, 0
  %430 = extractvalue %dx.types.CBufRet.f32 %428, 1
  %431 = extractvalue %dx.types.CBufRet.f32 %428, 2
  %432 = fmul fast float %420, %429
  %433 = fmul fast float %420, %430
  %434 = fmul fast float %420, %431
  %435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %436 = extractvalue %dx.types.CBufRet.f32 %435, 0
  %437 = extractvalue %dx.types.CBufRet.f32 %435, 1
  %438 = extractvalue %dx.types.CBufRet.f32 %435, 2
  %439 = fadd fast float %432, %436
  %440 = fadd fast float %439, %425
  %441 = fadd fast float %433, %437
  %442 = fadd fast float %441, %426
  %443 = fadd fast float %434, %438
  %444 = fadd fast float %443, %427
  %445 = fmul fast float %440, %411
  %446 = fmul fast float %442, %411
  %447 = fmul fast float %444, %411
  %448 = call float @dx.op.unary.f32(i32 26, float %55)  ; Round_ne(value)
  %449 = fptoui float %448 to i32
  %450 = call float @dx.op.unary.f32(i32 26, float %77)  ; Round_ne(value)
  %451 = fptoui float %450 to i32
  %452 = shl i32 %451, 3
  %453 = or i32 %452, 4
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = and i32 %455, 16777215
  %457 = add i32 %456, %449
  %458 = shl i32 %457, 6
  %459 = getelementptr [3 x float], [3 x float]* %85, i32 0, i32 0
  %460 = getelementptr [3 x float], [3 x float]* %86, i32 0, i32 0
  %461 = getelementptr [3 x float], [3 x float]* %87, i32 0, i32 0
  %462 = getelementptr [3 x float], [3 x float]* %88, i32 0, i32 0
  %463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %464 = extractvalue %dx.types.ResRet.f32 %463, 0
  %465 = extractvalue %dx.types.ResRet.f32 %463, 1
  %466 = extractvalue %dx.types.ResRet.f32 %463, 2
  %467 = extractvalue %dx.types.ResRet.f32 %463, 3
  store float %464, float* %459, align 4
  store float %465, float* %460, align 4
  store float %466, float* %461, align 4
  store float %467, float* %462, align 4
  %468 = getelementptr [3 x float], [3 x float]* %85, i32 0, i32 1
  %469 = getelementptr [3 x float], [3 x float]* %86, i32 0, i32 1
  %470 = getelementptr [3 x float], [3 x float]* %87, i32 0, i32 1
  %471 = getelementptr [3 x float], [3 x float]* %88, i32 0, i32 1
  %472 = or i32 %458, 16
  %473 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.f32 %473, 0
  %475 = extractvalue %dx.types.ResRet.f32 %473, 1
  %476 = extractvalue %dx.types.ResRet.f32 %473, 2
  %477 = extractvalue %dx.types.ResRet.f32 %473, 3
  store float %474, float* %468, align 4
  store float %475, float* %469, align 4
  store float %476, float* %470, align 4
  store float %477, float* %471, align 4
  %478 = getelementptr [3 x float], [3 x float]* %85, i32 0, i32 2
  %479 = getelementptr [3 x float], [3 x float]* %86, i32 0, i32 2
  %480 = getelementptr [3 x float], [3 x float]* %87, i32 0, i32 2
  %481 = getelementptr [3 x float], [3 x float]* %88, i32 0, i32 2
  %482 = or i32 %458, 32
  %483 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.f32 %483, 0
  %485 = extractvalue %dx.types.ResRet.f32 %483, 1
  %486 = extractvalue %dx.types.ResRet.f32 %483, 2
  %487 = extractvalue %dx.types.ResRet.f32 %483, 3
  store float %484, float* %478, align 4
  store float %485, float* %479, align 4
  store float %486, float* %480, align 4
  store float %487, float* %481, align 4
  %488 = or i32 %458, 48
  %489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %490 = extractvalue %dx.types.ResRet.i32 %489, 0
  %491 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %492 = extractvalue %dx.types.CBufRet.i32 %491, 1
  %493 = icmp eq i32 %492, 0
  %494 = and i32 %490, 4
  %495 = icmp ne i32 %494, 0
  %496 = and i1 %493, %495
  br i1 %496, label %497, label %536

; <label>:497                                     ; preds = %366
  %498 = and i32 %490, 3
  %499 = getelementptr [3 x float], [3 x float]* %85, i32 0, i32 %498
  %500 = getelementptr [3 x float], [3 x float]* %86, i32 0, i32 %498
  %501 = getelementptr [3 x float], [3 x float]* %87, i32 0, i32 %498
  %502 = getelementptr [3 x float], [3 x float]* %88, i32 0, i32 %498
  %503 = load float, float* %499, align 4
  %504 = load float, float* %500, align 4
  %505 = load float, float* %501, align 4
  %506 = load float, float* %502, align 4
  %507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %508 = extractvalue %dx.types.CBufRet.f32 %507, 0
  %509 = extractvalue %dx.types.CBufRet.f32 %507, 1
  %510 = extractvalue %dx.types.CBufRet.f32 %507, 2
  %511 = call float @dx.op.dot3.f32(i32 55, float %503, float %504, float %505, float %508, float %509, float %510)  ; Dot3(ax,ay,az,bx,by,bz)
  %512 = fadd fast float %511, %506
  %513 = fcmp fast ogt float %512, 1.000000e+00
  br i1 %513, label %514, label %519

; <label>:514                                     ; preds = %497
  %515 = fadd fast float %512, -1.000000e+00
  %516 = fmul fast float %515, 4.000000e+00
  %517 = call float @dx.op.unary.f32(i32 7, float %516)  ; Saturate(value)
  %518 = fmul fast float %517, 4.000000e+00
  br label %525

; <label>:519                                     ; preds = %497
  %520 = fcmp fast olt float %512, 0.000000e+00
  br i1 %520, label %521, label %525

; <label>:521                                     ; preds = %519
  %522 = fmul fast float %512, -4.000000e+00
  %523 = call float @dx.op.unary.f32(i32 7, float %522)  ; Saturate(value)
  %524 = fmul fast float %523, -4.000000e+00
  br label %525

; <label>:525                                     ; preds = %521, %519, %514
  %526 = phi float [ %518, %514 ], [ %524, %521 ], [ 0.000000e+00, %519 ]
  %527 = icmp eq i32 %498, 0
  %528 = select i1 %527, float %526, float 0.000000e+00
  %529 = fadd fast float %467, %528
  store float %529, float* %462, align 4, !noalias !114
  %530 = icmp eq i32 %498, 1
  %531 = select i1 %530, float %526, float 0.000000e+00
  %532 = fadd fast float %477, %531
  store float %532, float* %471, align 4, !noalias !114
  %533 = icmp eq i32 %498, 2
  %534 = select i1 %533, float %526, float 0.000000e+00
  %535 = fadd fast float %487, %534
  store float %535, float* %481, align 4, !noalias !114
  br label %536

; <label>:536                                     ; preds = %525, %366
  %537 = phi float [ %487, %366 ], [ %535, %525 ]
  %538 = phi float [ %477, %366 ], [ %532, %525 ]
  %539 = phi float [ %467, %366 ], [ %529, %525 ]
  %540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %541 = extractvalue %dx.types.CBufRet.f32 %540, 0
  %542 = extractvalue %dx.types.CBufRet.f32 %540, 1
  %543 = extractvalue %dx.types.CBufRet.f32 %540, 2
  %544 = fadd fast float %541, %445
  %545 = fadd fast float %542, %446
  %546 = fadd fast float %543, %447
  %547 = call float @dx.op.dot4.f32(i32 56, float %464, float %465, float %466, float %539, float %544, float %545, float %546, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %548 = call float @dx.op.dot4.f32(i32 56, float %474, float %475, float %476, float %538, float %544, float %545, float %546, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %549 = call float @dx.op.dot4.f32(i32 56, float %484, float %485, float %486, float %537, float %544, float %545, float %546, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %550 = fadd fast float %396, 0xBFB99999A0000000
  %551 = call float @dx.op.unary.f32(i32 7, float %550)  ; Saturate(value)
  %552 = fmul fast float %551, 0x3FF1C71C80000000
  %553 = call float @dx.op.binary.f32(i32 36, float %396, float 0x3FB99999A0000000)  ; FMin(a,b)
  %554 = fsub fast float 1.000000e+00, %552
  %555 = call float @dx.op.unary.f32(i32 7, float %554)  ; Saturate(value)
  %556 = fmul fast float %555, %376
  %557 = fmul fast float %555, %377
  %558 = fmul fast float %555, %378
  %559 = call float @dx.op.unary.f32(i32 7, float %556)  ; Saturate(value)
  %560 = call float @dx.op.unary.f32(i32 7, float %557)  ; Saturate(value)
  %561 = call float @dx.op.unary.f32(i32 7, float %558)  ; Saturate(value)
  %562 = fmul fast float %552, %376
  %563 = fmul fast float %552, %377
  %564 = fmul fast float %552, %378
  %565 = fadd fast float %562, %553
  %566 = fadd fast float %563, %553
  %567 = fadd fast float %564, %553
  %568 = call float @dx.op.unary.f32(i32 7, float %565)  ; Saturate(value)
  %569 = call float @dx.op.unary.f32(i32 7, float %566)  ; Saturate(value)
  %570 = call float @dx.op.unary.f32(i32 7, float %567)  ; Saturate(value)
  %571 = add i32 %53, 80
  %572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %571, i32 undef)  ; BufferLoad(srv,index,wot)
  %573 = extractvalue %dx.types.ResRet.i32 %572, 0
  %574 = add i32 %573, 0
  %575 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %574, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %575, %dx.types.Handle %45, float %348, float %349, float undef, float undef, i32 0, i32 0, i32 undef, float %347)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %577 = extractvalue %dx.types.ResRet.f32 %576, 0
  %578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %579 = extractvalue %dx.types.CBufRet.f32 %578, 0
  %580 = fptoui float %98 to i32
  %581 = fptoui float %99 to i32
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %580, i32 %581, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %582 = fsub fast float -0.000000e+00, %447
  %583 = call float @dx.op.dot3.f32(i32 55, float %445, float %446, float %447, float %445, float %446, float %447)  ; Dot3(ax,ay,az,bx,by,bz)
  %584 = call float @dx.op.unary.f32(i32 25, float %583)  ; Rsqrt(value)
  %585 = fmul fast float %584, %445
  %586 = fmul fast float %584, %446
  %587 = fmul fast float %584, %447
  %588 = fsub fast float -0.000000e+00, %585
  %589 = fsub fast float -0.000000e+00, %586
  %590 = fsub fast float -0.000000e+00, %587
  %591 = select i1 %172, float 0.000000e+00, float %570
  %592 = call float @dx.op.dot3.f32(i32 55, float %367, float %368, float %369, float %588, float %589, float %590)  ; Dot3(ax,ay,az,bx,by,bz)
  %593 = call float @dx.op.unary.f32(i32 7, float %592)  ; Saturate(value)
  %594 = call float @dx.op.dot3.f32(i32 55, float %585, float %586, float %587, float %367, float %368, float %369)  ; Dot3(ax,ay,az,bx,by,bz)
  %595 = fmul fast float %594, 2.000000e+00
  %596 = fmul fast float %595, %367
  %597 = fmul fast float %595, %368
  %598 = fmul fast float %595, %369
  %599 = fsub fast float %585, %596
  %600 = fsub fast float %586, %597
  %601 = fsub fast float %587, %598
  %602 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %389)  ; FMin(a,b)
  %603 = fsub fast float 1.000000e+00, %602
  %604 = bitcast float %603 to i32
  %605 = ashr i32 %604, 1
  %606 = add nsw i32 %605, 532487669
  %607 = bitcast i32 %606 to float
  %608 = fsub fast float 1.000000e+00, %379
  %609 = call float @dx.op.binary.f32(i32 35, float %608, float 0x3F847AE140000000)  ; FMax(a,b)
  %610 = fmul fast float %609, %609
  %611 = fmul fast float %610, %610
  %612 = call float @dx.op.unary.f32(i32 7, float %593)  ; Saturate(value)
  %613 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %45, float %607, float %611, float %612, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %614 = extractvalue %dx.types.ResRet.f32 %613, 0
  %615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %616 = extractvalue %dx.types.CBufRet.f32 %615, 0
  %617 = extractvalue %dx.types.CBufRet.f32 %615, 1
  %618 = fadd fast float %616, %445
  %619 = fadd fast float %617, %446
  %620 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %621 = extractvalue %dx.types.CBufRet.i32 %620, 0
  %622 = icmp eq i32 %621, 1
  br i1 %622, label %623, label %658

; <label>:623                                     ; preds = %536
  %624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %625 = extractvalue %dx.types.CBufRet.f32 %624, 0
  %626 = extractvalue %dx.types.CBufRet.f32 %624, 1
  %627 = fsub fast float %618, %625
  %628 = fsub fast float %619, %626
  %629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %630 = extractvalue %dx.types.CBufRet.f32 %629, 0
  %631 = extractvalue %dx.types.CBufRet.f32 %629, 1
  %632 = fmul fast float %627, %630
  %633 = fmul fast float %628, %631
  %634 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %45, float %632, float %633, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %635 = extractvalue %dx.types.ResRet.f32 %634, 0
  %636 = fcmp fast ogt float %635, 0.000000e+00
  %637 = extractvalue %dx.types.CBufRet.i32 %620, 3
  %638 = icmp ne i32 %637, 0
  %639 = and i1 %636, %638
  br i1 %639, label %640, label %658, !dx.controlflow.hints !119

; <label>:640                                     ; preds = %623
  %641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %642 = extractvalue %dx.types.CBufRet.f32 %641, 0
  %643 = extractvalue %dx.types.CBufRet.f32 %641, 1
  %644 = fsub fast float %618, %642
  %645 = fsub fast float %619, %643
  %646 = fmul fast float %644, %644
  %647 = fmul fast float %645, %645
  %648 = fadd fast float %646, %647
  %649 = uitofp i32 %637 to float
  %650 = fmul fast float %649, %649
  %651 = fcmp fast ogt float %648, %650
  br i1 %651, label %658, label %652

; <label>:652                                     ; preds = %640
  %653 = call float @dx.op.unary.f32(i32 24, float %648)  ; Sqrt(value)
  %654 = fsub fast float %649, %653
  %655 = fmul fast float %654, 0x3F75555560000000
  %656 = call float @dx.op.unary.f32(i32 7, float %655)  ; Saturate(value)
  %657 = call float @dx.op.binary.f32(i32 36, float %656, float %635)  ; FMin(a,b)
  br label %658

; <label>:658                                     ; preds = %652, %640, %623, %536
  %659 = phi float [ 1.000000e+00, %536 ], [ %657, %652 ], [ %635, %623 ], [ 0.000000e+00, %640 ]
  %660 = fcmp fast ogt float %659, 0.000000e+00
  br i1 %660, label %661, label %1038, !dx.controlflow.hints !120

; <label>:661                                     ; preds = %658
  %662 = fadd fast float %55, 5.000000e-01
  %663 = fptoui float %662 to i32
  %664 = fadd fast float %77, 5.000000e-01
  %665 = fptoui float %664 to i32
  %666 = shl i32 %665, 3
  %667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %666, i32 undef)  ; BufferLoad(srv,index,wot)
  %668 = extractvalue %dx.types.ResRet.i32 %667, 0
  %669 = or i32 %666, 4
  %670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %669, i32 undef)  ; BufferLoad(srv,index,wot)
  %671 = extractvalue %dx.types.ResRet.i32 %670, 0
  %672 = and i32 %671, 16777215
  %673 = add i32 %672, %663
  %674 = shl i32 %673, 5
  %675 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %674, i32 undef)  ; BufferLoad(srv,index,wot)
  %676 = extractvalue %dx.types.ResRet.f32 %675, 0
  %677 = extractvalue %dx.types.ResRet.f32 %675, 1
  %678 = extractvalue %dx.types.ResRet.f32 %675, 2
  %679 = or i32 %674, 16
  %680 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %679, i32 undef)  ; BufferLoad(srv,index,wot)
  %681 = extractvalue %dx.types.ResRet.f32 %680, 0
  %682 = extractvalue %dx.types.ResRet.f32 %680, 1
  %683 = extractvalue %dx.types.ResRet.f32 %680, 2
  %684 = lshr i32 %671, 24
  %685 = and i32 %684, 3
  %686 = add nuw nsw i32 %685, 3
  %687 = shl i32 1, %686
  %688 = lshr i32 %671, 29
  %689 = lshr i32 %671, 23
  %690 = and i32 %689, 56
  %691 = shl nuw nsw i32 %688, 3
  %692 = lshr i32 %668, 16
  %693 = and i32 %668, 65535
  %694 = uitofp i32 %687 to float
  %695 = fmul fast float %694, 1.562500e-02
  %696 = uitofp i32 %692 to float
  %697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %698 = extractvalue %dx.types.CBufRet.f32 %697, 3
  %699 = fmul fast float %698, %696
  %700 = uitofp i32 %690 to float
  %701 = fmul fast float %700, 1.562500e-02
  %702 = uitofp i32 %691 to float
  %703 = fmul fast float %702, 1.562500e-02
  %704 = uitofp i32 %693 to float
  %705 = fmul fast float %698, %704
  %706 = call float @dx.op.unary.f32(i32 7, float %547)  ; Saturate(value)
  %707 = call float @dx.op.unary.f32(i32 7, float %548)  ; Saturate(value)
  %708 = call float @dx.op.unary.f32(i32 7, float %549)  ; Saturate(value)
  %709 = fmul fast float %706, %676
  %710 = fmul fast float %707, %677
  %711 = fmul fast float %708, %678
  %712 = fadd fast float %709, %681
  %713 = fmul fast float %695, %712
  %714 = fadd fast float %713, %701
  %715 = fadd fast float %710, %682
  %716 = fmul fast float %695, %715
  %717 = fadd fast float %716, %703
  %718 = fadd fast float %711, %683
  %719 = fmul fast float %699, %718
  %720 = fadd fast float %719, %705
  %721 = fmul fast float %714, 5.000000e-01
  %722 = fmul fast float %717, 0x3FD5555560000000
  %723 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %43, float %714, float %717, float %720, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %724 = extractvalue %dx.types.ResRet.f32 %723, 0
  %725 = extractvalue %dx.types.ResRet.f32 %723, 1
  %726 = extractvalue %dx.types.ResRet.f32 %723, 2
  %727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %728 = extractvalue %dx.types.CBufRet.f32 %727, 3
  %729 = fmul fast float %728, %724
  %730 = fmul fast float %728, %725
  %731 = fmul fast float %728, %726
  %732 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %43, float %721, float %722, float %720, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %733 = extractvalue %dx.types.ResRet.f32 %732, 0
  %734 = extractvalue %dx.types.ResRet.f32 %732, 1
  %735 = extractvalue %dx.types.ResRet.f32 %732, 2
  %736 = extractvalue %dx.types.ResRet.f32 %732, 3
  %737 = fadd fast float %721, 5.000000e-01
  %738 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %43, float %737, float %722, float %720, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %739 = extractvalue %dx.types.ResRet.f32 %738, 0
  %740 = extractvalue %dx.types.ResRet.f32 %738, 1
  %741 = extractvalue %dx.types.ResRet.f32 %738, 2
  %742 = extractvalue %dx.types.ResRet.f32 %738, 3
  %743 = fadd fast float %722, 0x3FD5555560000000
  %744 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %43, float %721, float %743, float %720, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %745 = extractvalue %dx.types.ResRet.f32 %744, 0
  %746 = extractvalue %dx.types.ResRet.f32 %744, 1
  %747 = extractvalue %dx.types.ResRet.f32 %744, 2
  %748 = extractvalue %dx.types.ResRet.f32 %744, 3
  %749 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %43, float %737, float %743, float %720, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %750 = extractvalue %dx.types.ResRet.f32 %749, 0
  %751 = extractvalue %dx.types.ResRet.f32 %749, 1
  %752 = extractvalue %dx.types.ResRet.f32 %749, 2
  %753 = extractvalue %dx.types.ResRet.f32 %749, 3
  %754 = fadd fast float %722, 0x3FE5555560000000
  %755 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %43, float %721, float %754, float %720, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %756 = extractvalue %dx.types.ResRet.f32 %755, 0
  %757 = extractvalue %dx.types.ResRet.f32 %755, 1
  %758 = extractvalue %dx.types.ResRet.f32 %755, 2
  %759 = extractvalue %dx.types.ResRet.f32 %755, 3
  %760 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %43, float %737, float %754, float %720, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %761 = extractvalue %dx.types.ResRet.f32 %760, 0
  %762 = extractvalue %dx.types.ResRet.f32 %760, 1
  %763 = extractvalue %dx.types.ResRet.f32 %760, 2
  %764 = extractvalue %dx.types.ResRet.f32 %760, 3
  %765 = fmul fast float %733, 0x400BB67AE0000000
  %766 = fadd fast float %765, 0xBFFBB67AE0000000
  %767 = fmul fast float %766, %729
  %768 = fmul fast float %734, 0x400BB67AE0000000
  %769 = fadd fast float %768, 0xBFFBB67AE0000000
  %770 = fmul fast float %769, %730
  %771 = fmul fast float %735, 0x400BB67AE0000000
  %772 = fadd fast float %771, 0xBFFBB67AE0000000
  %773 = fmul fast float %772, %731
  %774 = fmul fast float %736, 0x4011E377A0000000
  %775 = fadd fast float %774, 0xC001E377A0000000
  %776 = fmul fast float %775, %729
  %777 = fmul fast float %739, 0x4011E377A0000000
  %778 = fadd fast float %777, 0xC001E377A0000000
  %779 = fmul fast float %778, %730
  %780 = fmul fast float %740, 0x4011E377A0000000
  %781 = fadd fast float %780, 0xC001E377A0000000
  %782 = fmul fast float %781, %731
  %783 = fmul fast float %741, 0x400BB67AE0000000
  %784 = fadd fast float %783, 0xBFFBB67AE0000000
  %785 = fmul fast float %784, %729
  %786 = fmul fast float %742, 0x400BB67AE0000000
  %787 = fadd fast float %786, 0xBFFBB67AE0000000
  %788 = fmul fast float %787, %730
  %789 = fmul fast float %745, 0x400BB67AE0000000
  %790 = fadd fast float %789, 0xBFFBB67AE0000000
  %791 = fmul fast float %790, %731
  %792 = fmul fast float %746, 0x400BB67AE0000000
  %793 = fadd fast float %792, 0xBFFBB67AE0000000
  %794 = fmul fast float %793, %729
  %795 = fmul fast float %747, 0x400BB67AE0000000
  %796 = fadd fast float %795, 0xBFFBB67AE0000000
  %797 = fmul fast float %796, %730
  %798 = fmul fast float %748, 0x400BB67AE0000000
  %799 = fadd fast float %798, 0xBFFBB67AE0000000
  %800 = fmul fast float %799, %731
  %801 = fmul fast float %750, 0x400EFBDEC0000000
  %802 = fadd fast float %801, 0xBFFEFBDEC0000000
  %803 = fmul fast float %802, %729
  %804 = fmul fast float %751, 0x400EFBDEC0000000
  %805 = fadd fast float %804, 0xBFFEFBDEC0000000
  %806 = fmul fast float %805, %730
  %807 = fmul fast float %752, 0x400EFBDEC0000000
  %808 = fadd fast float %807, 0xBFFEFBDEC0000000
  %809 = fmul fast float %808, %731
  %810 = fmul fast float %753, 0x400EFBDEC0000000
  %811 = fadd fast float %810, 0xBFFEFBDEC0000000
  %812 = fmul fast float %811, %729
  %813 = fmul fast float %756, 0x400EFBDEC0000000
  %814 = fadd fast float %813, 0xBFFEFBDEC0000000
  %815 = fmul fast float %814, %730
  %816 = fmul fast float %757, 0x400EFBDEC0000000
  %817 = fadd fast float %816, 0xBFFEFBDEC0000000
  %818 = fmul fast float %817, %731
  %819 = fmul fast float %758, 0x400EFBDEC0000000
  %820 = fadd fast float %819, 0xBFFEFBDEC0000000
  %821 = fmul fast float %820, %729
  %822 = fmul fast float %759, 0x400EFBDEC0000000
  %823 = fadd fast float %822, 0xBFFEFBDEC0000000
  %824 = fmul fast float %823, %730
  %825 = fmul fast float %761, 0x400EFBDEC0000000
  %826 = fadd fast float %825, 0xBFFEFBDEC0000000
  %827 = fmul fast float %826, %731
  %828 = fmul fast float %762, 0x400EFBDEC0000000
  %829 = fadd fast float %828, 0xBFFEFBDEC0000000
  %830 = fmul fast float %829, %729
  %831 = fmul fast float %763, 0x400EFBDEC0000000
  %832 = fadd fast float %831, 0xBFFEFBDEC0000000
  %833 = fmul fast float %832, %730
  %834 = fmul fast float %764, 0x400EFBDEC0000000
  %835 = fadd fast float %834, 0xBFFEFBDEC0000000
  %836 = fmul fast float %835, %731
  %837 = call float @dx.op.dot3.f32(i32 55, float %729, float %730, float %731, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %838 = fmul fast float %837, 0x3FD20DD760000000
  %839 = fmul fast float %729, 0x3FD20DD760000000
  %840 = fmul fast float %369, 0x3FD4D8D7C0000000
  %841 = fmul fast float %840, %767
  %842 = fmul fast float %369, %369
  %843 = fmul fast float %842, 0x3FEE471020000000
  %844 = fadd fast float %843, 0xBFD42F6020000000
  %845 = fmul fast float %776, %844
  %846 = fmul fast float %367, 0x3FD4D8D7C0000000
  %847 = fmul fast float %846, %794
  %848 = fmul fast float %368, 0x3FD4D8D7C0000000
  %849 = fmul fast float %848, %785
  %850 = fmul fast float %369, 0xBFF17B1420000000
  %851 = fmul fast float %803, %367
  %852 = fmul fast float %812, %368
  %853 = fmul fast float %367, %367
  %854 = fmul fast float %368, %368
  %855 = fsub fast float %853, %854
  %856 = fmul fast float %855, 0x3FC17B1420000000
  %857 = fmul fast float %856, %821
  %858 = fmul fast float %367, 0x3FD17B1420000000
  %859 = fmul fast float %858, %368
  %860 = fmul fast float %859, %830
  %861 = fadd fast float %852, %851
  %862 = fmul fast float %850, %861
  %863 = fadd fast float %862, %845
  %864 = fmul fast float %863, 2.500000e-01
  %865 = fadd fast float %841, %839
  %866 = fsub fast float %865, %849
  %867 = fsub fast float %866, %847
  %868 = fadd fast float %867, %864
  %869 = fadd fast float %868, %857
  %870 = fadd fast float %869, %860
  %871 = fmul fast float %730, 0x3FD20DD760000000
  %872 = fmul fast float %840, %770
  %873 = fmul fast float %779, %844
  %874 = fmul fast float %846, %797
  %875 = fmul fast float %848, %788
  %876 = fmul fast float %806, %367
  %877 = fmul fast float %815, %368
  %878 = fmul fast float %856, %824
  %879 = fmul fast float %859, %833
  %880 = fadd fast float %877, %876
  %881 = fmul fast float %850, %880
  %882 = fadd fast float %881, %873
  %883 = fmul fast float %882, 2.500000e-01
  %884 = fadd fast float %872, %871
  %885 = fsub fast float %884, %875
  %886 = fsub fast float %885, %874
  %887 = fadd fast float %886, %878
  %888 = fadd fast float %887, %883
  %889 = fadd fast float %888, %879
  %890 = fmul fast float %731, 0x3FD20DD760000000
  %891 = fmul fast float %840, %773
  %892 = fmul fast float %782, %844
  %893 = fmul fast float %846, %800
  %894 = fmul fast float %848, %791
  %895 = fmul fast float %809, %367
  %896 = fmul fast float %818, %368
  %897 = fmul fast float %856, %827
  %898 = fmul fast float %859, %836
  %899 = fadd fast float %896, %895
  %900 = fmul fast float %850, %899
  %901 = fadd fast float %900, %892
  %902 = fmul fast float %901, 2.500000e-01
  %903 = fadd fast float %891, %890
  %904 = fsub fast float %903, %893
  %905 = fsub fast float %904, %894
  %906 = fadd fast float %905, %902
  %907 = fadd fast float %906, %897
  %908 = fadd fast float %907, %898
  %909 = call float @dx.op.binary.f32(i32 35, float %870, float 0.000000e+00)  ; FMax(a,b)
  %910 = call float @dx.op.binary.f32(i32 35, float %889, float 0.000000e+00)  ; FMax(a,b)
  %911 = call float @dx.op.binary.f32(i32 35, float %908, float 0.000000e+00)  ; FMax(a,b)
  %912 = fsub fast float -0.000000e+00, %367
  %913 = fsub fast float -0.000000e+00, %368
  %914 = fmul fast float %369, 0xBFD4D8D7C0000000
  %915 = fmul fast float %914, %767
  %916 = fmul fast float %794, 0x3FD4D8D7C0000000
  %917 = fmul fast float %369, 0x3FF17B1420000000
  %918 = fmul fast float %803, %912
  %919 = fmul fast float %812, %913
  %920 = fmul fast float %368, 0x3FD17B1420000000
  %921 = fmul fast float %920, %830
  %922 = fadd fast float %919, %918
  %923 = fmul fast float %917, %922
  %924 = fadd fast float %923, %845
  %925 = fmul fast float %924, 2.500000e-01
  %926 = fadd fast float %921, %916
  %927 = fmul fast float %926, %367
  %928 = fadd fast float %915, %839
  %929 = fadd fast float %928, %849
  %930 = fadd fast float %929, %857
  %931 = fadd fast float %930, %925
  %932 = fadd fast float %931, %927
  %933 = fmul fast float %914, %770
  %934 = fmul fast float %797, 0x3FD4D8D7C0000000
  %935 = fmul fast float %806, %912
  %936 = fmul fast float %815, %913
  %937 = fmul fast float %920, %833
  %938 = fadd fast float %936, %935
  %939 = fmul fast float %917, %938
  %940 = fadd fast float %939, %873
  %941 = fmul fast float %940, 2.500000e-01
  %942 = fadd fast float %937, %934
  %943 = fmul fast float %942, %367
  %944 = fadd fast float %933, %871
  %945 = fadd fast float %944, %875
  %946 = fadd fast float %945, %878
  %947 = fadd fast float %946, %941
  %948 = fadd fast float %947, %943
  %949 = fmul fast float %914, %773
  %950 = fmul fast float %791, 0x3FD4D8D7C0000000
  %951 = fmul fast float %809, %912
  %952 = fmul fast float %818, %913
  %953 = fmul fast float %858, %836
  %954 = fadd fast float %952, %951
  %955 = fmul fast float %917, %954
  %956 = fadd fast float %955, %892
  %957 = fmul fast float %956, 2.500000e-01
  %958 = fadd fast float %953, %950
  %959 = fmul fast float %958, %368
  %960 = fadd fast float %949, %890
  %961 = fadd fast float %960, %893
  %962 = fadd fast float %961, %897
  %963 = fadd fast float %962, %957
  %964 = fadd fast float %963, %959
  %965 = call float @dx.op.binary.f32(i32 35, float %932, float 0.000000e+00)  ; FMax(a,b)
  %966 = call float @dx.op.binary.f32(i32 35, float %948, float 0.000000e+00)  ; FMax(a,b)
  %967 = call float @dx.op.binary.f32(i32 35, float %964, float 0.000000e+00)  ; FMax(a,b)
  %968 = fmul fast float %601, 0x3FD4D8D7C0000000
  %969 = fmul fast float %968, %767
  %970 = fmul fast float %601, %601
  %971 = fmul fast float %970, 0x3FEE471020000000
  %972 = fadd fast float %971, 0xBFD42F6020000000
  %973 = fmul fast float %776, %972
  %974 = fmul fast float %599, 0x3FD4D8D7C0000000
  %975 = fmul fast float %974, %794
  %976 = fmul fast float %600, 0x3FD4D8D7C0000000
  %977 = fmul fast float %976, %785
  %978 = fmul fast float %601, 0xBFF17B1420000000
  %979 = fmul fast float %803, %599
  %980 = fmul fast float %812, %600
  %981 = fmul fast float %599, %599
  %982 = fmul fast float %600, %600
  %983 = fsub fast float %981, %982
  %984 = fmul fast float %983, 0x3FC17B1420000000
  %985 = fmul fast float %984, %821
  %986 = fmul fast float %600, 0x3FD17B1420000000
  %987 = fmul fast float %986, %599
  %988 = fmul fast float %987, %830
  %989 = fadd fast float %980, %979
  %990 = fmul fast float %978, %989
  %991 = fadd fast float %990, %973
  %992 = fmul fast float %991, 2.500000e-01
  %993 = fadd fast float %969, %839
  %994 = fsub fast float %993, %977
  %995 = fsub fast float %994, %975
  %996 = fadd fast float %995, %992
  %997 = fadd fast float %996, %985
  %998 = fadd fast float %997, %988
  %999 = fmul fast float %968, %770
  %1000 = fmul fast float %779, %972
  %1001 = fmul fast float %974, %797
  %1002 = fmul fast float %976, %788
  %1003 = fmul fast float %806, %599
  %1004 = fmul fast float %815, %600
  %1005 = fmul fast float %984, %824
  %1006 = fmul fast float %987, %833
  %1007 = fadd fast float %1004, %1003
  %1008 = fmul fast float %978, %1007
  %1009 = fadd fast float %1008, %1000
  %1010 = fmul fast float %1009, 2.500000e-01
  %1011 = fadd fast float %999, %871
  %1012 = fsub fast float %1011, %1002
  %1013 = fsub fast float %1012, %1001
  %1014 = fadd fast float %1013, %1005
  %1015 = fadd fast float %1014, %1010
  %1016 = fadd fast float %1015, %1006
  %1017 = fmul fast float %968, %773
  %1018 = fmul fast float %782, %972
  %1019 = fmul fast float %974, %800
  %1020 = fmul fast float %976, %791
  %1021 = fmul fast float %809, %599
  %1022 = fmul fast float %818, %600
  %1023 = fmul fast float %984, %827
  %1024 = fmul fast float %987, %836
  %1025 = fadd fast float %1022, %1021
  %1026 = fmul fast float %978, %1025
  %1027 = fadd fast float %1026, %1018
  %1028 = fmul fast float %1027, 2.500000e-01
  %1029 = fadd fast float %1017, %890
  %1030 = fsub fast float %1029, %1019
  %1031 = fsub fast float %1030, %1020
  %1032 = fadd fast float %1031, %1028
  %1033 = fadd fast float %1032, %1023
  %1034 = fadd fast float %1033, %1024
  %1035 = call float @dx.op.binary.f32(i32 35, float %998, float 0.000000e+00)  ; FMax(a,b)
  %1036 = call float @dx.op.binary.f32(i32 35, float %1016, float 0.000000e+00)  ; FMax(a,b)
  %1037 = call float @dx.op.binary.f32(i32 35, float %1034, float 0.000000e+00)  ; FMax(a,b)
  br label %1038

; <label>:1038                                    ; preds = %661, %658
  %1039 = phi float [ %1035, %661 ], [ 0.000000e+00, %658 ]
  %1040 = phi float [ %1036, %661 ], [ 0.000000e+00, %658 ]
  %1041 = phi float [ %1037, %661 ], [ 0.000000e+00, %658 ]
  %1042 = phi float [ %965, %661 ], [ 0.000000e+00, %658 ]
  %1043 = phi float [ %966, %661 ], [ 0.000000e+00, %658 ]
  %1044 = phi float [ %967, %661 ], [ 0.000000e+00, %658 ]
  %1045 = phi float [ %909, %661 ], [ 0.000000e+00, %658 ]
  %1046 = phi float [ %910, %661 ], [ 0.000000e+00, %658 ]
  %1047 = phi float [ %911, %661 ], [ 0.000000e+00, %658 ]
  %1048 = phi float [ %838, %661 ], [ 0.000000e+00, %658 ]
  %1049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1050 = extractvalue %dx.types.CBufRet.f32 %1049, 0
  %1051 = fcmp fast ogt float %1050, 0.000000e+00
  %1052 = and i1 %660, %1051
  br i1 %1052, label %1053, label %1260, !dx.controlflow.hints !121

; <label>:1053                                    ; preds = %1038
  %1054 = extractvalue %dx.types.CBufRet.f32 %615, 2
  %1055 = fadd fast float %1054, %447
  %1056 = fmul fast float %367, 3.200000e+01
  %1057 = fmul fast float %368, 3.200000e+01
  %1058 = fadd fast float %618, %1056
  %1059 = fadd fast float %619, %1057
  %1060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1061 = extractvalue %dx.types.CBufRet.f32 %1060, 0
  %1062 = extractvalue %dx.types.CBufRet.f32 %1060, 1
  %1063 = fsub fast float %1058, %1061
  %1064 = fsub fast float %1059, %1062
  %1065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1066 = extractvalue %dx.types.CBufRet.f32 %1065, 0
  %1067 = extractvalue %dx.types.CBufRet.f32 %1065, 1
  %1068 = fmul fast float %1063, %1066
  %1069 = fmul fast float %1064, %1067
  %1070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1071 = extractvalue %dx.types.CBufRet.f32 %1070, 0
  %1072 = extractvalue %dx.types.CBufRet.f32 %1070, 1
  %1073 = fsub fast float %618, %1071
  %1074 = fsub fast float %619, %1072
  %1075 = fmul fast float %1073, %1073
  %1076 = fmul fast float %1074, %1074
  %1077 = fadd fast float %1075, %1076
  %1078 = call float @dx.op.unary.f32(i32 24, float %1077)  ; Sqrt(value)
  %1079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1080 = extractvalue %dx.types.CBufRet.f32 %1079, 0
  %1081 = extractvalue %dx.types.CBufRet.f32 %1079, 1
  %1082 = fsub fast float %1078, %1080
  %1083 = fdiv fast float %1082, %1081
  %1084 = call float @dx.op.unary.f32(i32 7, float %1083)  ; Saturate(value)
  %1085 = fmul fast float %1084, 2.000000e+00
  %1086 = fsub fast float 3.000000e+00, %1085
  %1087 = fmul fast float %1084, %1084
  %1088 = fmul fast float %1087, %1086
  %1089 = fcmp fast oge float %1068, 0.000000e+00
  %1090 = fcmp fast ole float %1068, 1.000000e+00
  %1091 = and i1 %1090, %1089
  %1092 = fcmp fast oge float %1069, 0.000000e+00
  %1093 = and i1 %1092, %1091
  %1094 = fcmp fast ole float %1069, 1.000000e+00
  %1095 = and i1 %1094, %1093
  %1096 = fcmp fast ogt float %1088, 0.000000e+00
  %1097 = and i1 %1096, %1095
  br i1 %1097, label %1098, label %1221, !dx.controlflow.hints !122

; <label>:1098                                    ; preds = %1053
  %1099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1100 = extractvalue %dx.types.CBufRet.f32 %1099, 2
  %1101 = extractvalue %dx.types.CBufRet.f32 %1099, 3
  %1102 = fmul fast float %1100, %1068
  %1103 = fmul fast float %1101, %1069
  %1104 = call float @dx.op.unary.f32(i32 27, float %1102)  ; Round_ni(value)
  %1105 = call float @dx.op.unary.f32(i32 27, float %1103)  ; Round_ni(value)
  %1106 = fptosi float %1104 to i32
  %1107 = fptosi float %1105 to i32
  %1108 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %29, i32 0, i32 %1106, i32 %1107, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1109 = extractvalue %dx.types.ResRet.i32 %1108, 0
  %1110 = lshr i32 %1109, 16
  %1111 = icmp eq i32 %1110, 65535
  br i1 %1111, label %1221, label %1112

; <label>:1112                                    ; preds = %1098
  %1113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1114 = extractvalue %dx.types.CBufRet.f32 %1113, 0
  %1115 = fmul fast float %1114, %1068
  %1116 = extractvalue %dx.types.CBufRet.f32 %1113, 1
  %1117 = fadd fast float %1115, %1116
  %1118 = extractvalue %dx.types.CBufRet.f32 %1113, 2
  %1119 = fmul fast float %1118, %1069
  %1120 = extractvalue %dx.types.CBufRet.f32 %1113, 3
  %1121 = fadd fast float %1119, %1120
  %1122 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %45, float %1117, float %1121, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1123 = extractvalue %dx.types.ResRet.f32 %1122, 0
  %1124 = extractvalue %dx.types.ResRet.f32 %1122, 1
  %1125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1126 = extractvalue %dx.types.CBufRet.f32 %1125, 1
  %1127 = extractvalue %dx.types.CBufRet.f32 %1125, 0
  %1128 = fsub fast float %1126, %1127
  %1129 = fmul fast float %1128, %1123
  %1130 = fadd fast float %1129, %1127
  %1131 = extractvalue %dx.types.CBufRet.f32 %1125, 3
  %1132 = extractvalue %dx.types.CBufRet.f32 %1125, 2
  %1133 = fsub fast float %1131, %1132
  %1134 = fmul fast float %1133, %1124
  %1135 = fadd fast float %1134, %1132
  %1136 = fsub fast float %1055, %1130
  %1137 = fsub fast float %1135, %1130
  %1138 = fdiv fast float %1136, %1137
  %1139 = call float @dx.op.unary.f32(i32 7, float %1138)  ; Saturate(value)
  %1140 = extractvalue %dx.types.CBufRet.f32 %1049, 1
  %1141 = extractvalue %dx.types.CBufRet.f32 %1099, 0
  %1142 = extractvalue %dx.types.CBufRet.f32 %1099, 1
  %1143 = fmul fast float %1141, %1068
  %1144 = fmul fast float %1142, %1069
  %1145 = fmul fast float %1143, 1.250000e-01
  %1146 = fmul fast float %1144, 1.250000e-01
  %1147 = call float @dx.op.unary.f32(i32 27, float %1145)  ; Round_ni(value)
  %1148 = call float @dx.op.unary.f32(i32 27, float %1146)  ; Round_ni(value)
  %1149 = fmul fast float %1147, 8.000000e+00
  %1150 = fmul fast float %1148, 8.000000e+00
  %1151 = fsub fast float %1143, %1149
  %1152 = fsub fast float %1144, %1150
  %1153 = fadd fast float %1151, 5.000000e-01
  %1154 = fadd fast float %1152, 5.000000e-01
  %1155 = and i32 %1110, 255
  %1156 = lshr i32 %1109, 24
  %1157 = mul nuw nsw i32 %1155, 9
  %1158 = uitofp i32 %1157 to float
  %1159 = mul nuw nsw i32 %1156, 9
  %1160 = uitofp i32 %1159 to float
  %1161 = fadd fast float %1153, %1158
  %1162 = fadd fast float %1154, %1160
  %1163 = fdiv fast float %1161, %1050
  %1164 = fdiv fast float %1162, %1140
  %1165 = fmul fast float %1139, 4.375000e-01
  %1166 = fadd fast float %1165, 3.125000e-02
  %1167 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %45, float %1163, float %1164, float %1166, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1168 = extractvalue %dx.types.ResRet.f32 %1167, 0
  %1169 = extractvalue %dx.types.ResRet.f32 %1167, 1
  %1170 = extractvalue %dx.types.ResRet.f32 %1167, 2
  %1171 = fadd fast float %1165, 5.312500e-01
  %1172 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %45, float %1163, float %1164, float %1171, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1173 = extractvalue %dx.types.ResRet.f32 %1172, 0
  %1174 = extractvalue %dx.types.ResRet.f32 %1172, 1
  %1175 = extractvalue %dx.types.ResRet.f32 %1172, 2
  %1176 = fmul fast float %1173, 2.000000e+00
  %1177 = fmul fast float %1174, 2.000000e+00
  %1178 = fmul fast float %1175, 2.000000e+00
  %1179 = fadd fast float %1176, -1.000000e+00
  %1180 = fadd fast float %1177, -1.000000e+00
  %1181 = fadd fast float %1178, -1.000000e+00
  %1182 = fmul fast float %1179, %1179
  %1183 = fmul fast float %1180, %1180
  %1184 = fadd fast float %1182, %1183
  %1185 = fmul fast float %1181, %1181
  %1186 = fadd fast float %1184, %1185
  %1187 = call float @dx.op.unary.f32(i32 24, float %1186)  ; Sqrt(value)
  %1188 = fcmp fast ogt float %1187, 0.000000e+00
  br i1 %1188, label %1189, label %1193

; <label>:1189                                    ; preds = %1112
  %1190 = fdiv fast float %1179, %1187
  %1191 = fdiv fast float %1180, %1187
  %1192 = fdiv fast float %1181, %1187
  br label %1193

; <label>:1193                                    ; preds = %1189, %1112
  %1194 = phi float [ %1190, %1189 ], [ 0.000000e+00, %1112 ]
  %1195 = phi float [ %1191, %1189 ], [ 0.000000e+00, %1112 ]
  %1196 = phi float [ %1192, %1189 ], [ 0.000000e+00, %1112 ]
  %1197 = call float @dx.op.dot3.f32(i32 55, float %1194, float %1195, float %1196, float %367, float %368, float %369)  ; Dot3(ax,ay,az,bx,by,bz)
  %1198 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1197)  ; FMax(a,b)
  %1199 = fmul fast float %1198, 0x400C5BF8A0000000
  %1200 = fmul fast float %1168, %1088
  %1201 = fmul fast float %1200, %1199
  %1202 = fmul fast float %1169, %1088
  %1203 = fmul fast float %1202, %1199
  %1204 = fmul fast float %1170, %1088
  %1205 = fmul fast float %1204, %1199
  %1206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1207 = extractvalue %dx.types.CBufRet.f32 %1206, 3
  %1208 = fmul fast float %1201, %1207
  %1209 = fmul fast float %1203, %1207
  %1210 = fmul fast float %1205, %1207
  %1211 = fcmp fast ogt float %1055, %1135
  br i1 %1211, label %1212, label %1221

; <label>:1212                                    ; preds = %1193
  %1213 = fmul fast float %1137, 0x3FC24924A0000000
  %1214 = fsub fast float %1055, %1135
  %1215 = fdiv fast float %1214, %1213
  %1216 = call float @dx.op.unary.f32(i32 7, float %1215)  ; Saturate(value)
  %1217 = fsub fast float 1.000000e+00, %1216
  %1218 = fmul fast float %1217, %1208
  %1219 = fmul fast float %1217, %1209
  %1220 = fmul fast float %1217, %1210
  br label %1221

; <label>:1221                                    ; preds = %1212, %1193, %1098, %1053
  %1222 = phi float [ %1220, %1212 ], [ %1210, %1193 ], [ 0.000000e+00, %1098 ], [ 0.000000e+00, %1053 ]
  %1223 = phi float [ %1219, %1212 ], [ %1209, %1193 ], [ 0.000000e+00, %1098 ], [ 0.000000e+00, %1053 ]
  %1224 = phi float [ %1218, %1212 ], [ %1208, %1193 ], [ 0.000000e+00, %1098 ], [ 0.000000e+00, %1053 ]
  %1225 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1224)  ; FMax(a,b)
  %1226 = fmul fast float %1225, 0x3FD20DD760000000
  %1227 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %599, float %600, float %601)  ; Dot3(ax,ay,az,bx,by,bz)
  %1228 = fmul fast float %1227, 0x3FDF454380000000
  %1229 = fmul fast float %1227, %1227
  %1230 = fmul fast float %1229, 0x3FEE471020000000
  %1231 = fadd fast float %1230, 0xBFD42F6020000000
  %1232 = call float @dx.op.dot3.f32(i32 55, float %1225, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1228, float %1231)  ; Dot3(ax,ay,az,bx,by,bz)
  %1233 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1223)  ; FMax(a,b)
  %1234 = fmul fast float %1233, 0x3FD20DD760000000
  %1235 = call float @dx.op.dot3.f32(i32 55, float %1233, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1228, float %1231)  ; Dot3(ax,ay,az,bx,by,bz)
  %1236 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1222)  ; FMax(a,b)
  %1237 = fmul fast float %1236, 0x3FD20DD760000000
  %1238 = call float @dx.op.dot3.f32(i32 55, float %1236, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1228, float %1231)  ; Dot3(ax,ay,az,bx,by,bz)
  %1239 = call float @dx.op.binary.f32(i32 35, float %1226, float 0.000000e+00)  ; FMax(a,b)
  %1240 = call float @dx.op.binary.f32(i32 35, float %1234, float 0.000000e+00)  ; FMax(a,b)
  %1241 = call float @dx.op.binary.f32(i32 35, float %1237, float 0.000000e+00)  ; FMax(a,b)
  %1242 = call float @dx.op.binary.f32(i32 35, float %1232, float 0.000000e+00)  ; FMax(a,b)
  %1243 = call float @dx.op.binary.f32(i32 35, float %1235, float 0.000000e+00)  ; FMax(a,b)
  %1244 = call float @dx.op.binary.f32(i32 35, float %1238, float 0.000000e+00)  ; FMax(a,b)
  %1245 = fmul fast float %1239, %659
  %1246 = fmul fast float %1240, %659
  %1247 = fmul fast float %1241, %659
  %1248 = fadd fast float %1245, %1045
  %1249 = fadd fast float %1246, %1046
  %1250 = fadd fast float %1247, %1047
  %1251 = fadd fast float %1245, %1042
  %1252 = fadd fast float %1246, %1043
  %1253 = fadd fast float %1247, %1044
  %1254 = fmul fast float %1242, %659
  %1255 = fmul fast float %1243, %659
  %1256 = fmul fast float %1244, %659
  %1257 = fadd fast float %1254, %1039
  %1258 = fadd fast float %1255, %1040
  %1259 = fadd fast float %1256, %1041
  br label %1260

; <label>:1260                                    ; preds = %1221, %1038
  %1261 = phi float [ %1257, %1221 ], [ %1039, %1038 ]
  %1262 = phi float [ %1258, %1221 ], [ %1040, %1038 ]
  %1263 = phi float [ %1259, %1221 ], [ %1041, %1038 ]
  %1264 = phi float [ %1251, %1221 ], [ %1042, %1038 ]
  %1265 = phi float [ %1252, %1221 ], [ %1043, %1038 ]
  %1266 = phi float [ %1253, %1221 ], [ %1044, %1038 ]
  %1267 = phi float [ %1248, %1221 ], [ %1045, %1038 ]
  %1268 = phi float [ %1249, %1221 ], [ %1046, %1038 ]
  %1269 = phi float [ %1250, %1221 ], [ %1047, %1038 ]
  %1270 = fcmp fast olt float %659, 1.000000e+00
  br i1 %1270, label %1271, label %2109, !dx.controlflow.hints !123

; <label>:1271                                    ; preds = %1260
  %1272 = extractvalue %dx.types.CBufRet.f32 %615, 2
  %1273 = fadd fast float %1272, %447
  %1274 = fmul fast float %367, 3.200000e+01
  %1275 = fmul fast float %368, 3.200000e+01
  %1276 = fadd fast float %618, %1274
  %1277 = fadd fast float %619, %1275
  %1278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1279 = extractvalue %dx.types.CBufRet.f32 %1278, 0
  %1280 = extractvalue %dx.types.CBufRet.f32 %1278, 1
  %1281 = fsub fast float %1276, %1279
  %1282 = fsub fast float %1277, %1280
  %1283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1284 = extractvalue %dx.types.CBufRet.f32 %1283, 0
  %1285 = extractvalue %dx.types.CBufRet.f32 %1283, 1
  %1286 = fmul fast float %1281, %1284
  %1287 = fmul fast float %1282, %1285
  %1288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1289 = extractvalue %dx.types.CBufRet.f32 %1288, 0
  %1290 = fmul fast float %1286, %1289
  %1291 = extractvalue %dx.types.CBufRet.f32 %1288, 1
  %1292 = fadd fast float %1290, %1291
  %1293 = extractvalue %dx.types.CBufRet.f32 %1288, 2
  %1294 = fmul fast float %1293, %1287
  %1295 = extractvalue %dx.types.CBufRet.f32 %1288, 3
  %1296 = fadd fast float %1294, %1295
  %1297 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %45, float %1292, float %1296, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1298 = extractvalue %dx.types.ResRet.f32 %1297, 0
  %1299 = extractvalue %dx.types.ResRet.f32 %1297, 1
  %1300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1301 = extractvalue %dx.types.CBufRet.f32 %1300, 1
  %1302 = extractvalue %dx.types.CBufRet.f32 %1300, 0
  %1303 = fsub fast float %1301, %1302
  %1304 = fmul fast float %1303, %1298
  %1305 = fadd fast float %1304, %1302
  %1306 = extractvalue %dx.types.CBufRet.f32 %1300, 3
  %1307 = extractvalue %dx.types.CBufRet.f32 %1300, 2
  %1308 = fsub fast float %1306, %1307
  %1309 = fmul fast float %1308, %1299
  %1310 = fadd fast float %1309, %1307
  %1311 = fsub fast float %1273, %1305
  %1312 = fsub fast float %1310, %1305
  %1313 = fdiv fast float %1311, %1312
  %1314 = call float @dx.op.unary.f32(i32 7, float %1313)  ; Saturate(value)
  %1315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1316 = extractvalue %dx.types.CBufRet.f32 %1315, 0
  %1317 = fmul fast float %1316, %1314
  %1318 = extractvalue %dx.types.CBufRet.f32 %1315, 1
  %1319 = fadd fast float %1317, %1318
  %1320 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %45, float %1292, float %1296, float %1319, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1321 = extractvalue %dx.types.ResRet.f32 %1320, 0
  %1322 = extractvalue %dx.types.ResRet.f32 %1320, 1
  %1323 = extractvalue %dx.types.ResRet.f32 %1320, 2
  %1324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1325 = extractvalue %dx.types.CBufRet.f32 %1324, 0
  %1326 = extractvalue %dx.types.CBufRet.f32 %1324, 1
  %1327 = extractvalue %dx.types.CBufRet.f32 %1324, 2
  %1328 = fmul fast float %1325, %1321
  %1329 = fmul fast float %1326, %1322
  %1330 = fmul fast float %1327, %1323
  %1331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1332 = extractvalue %dx.types.CBufRet.f32 %1331, 0
  %1333 = extractvalue %dx.types.CBufRet.f32 %1331, 1
  %1334 = extractvalue %dx.types.CBufRet.f32 %1331, 2
  %1335 = fadd fast float %1328, %1332
  %1336 = fadd fast float %1329, %1333
  %1337 = fadd fast float %1330, %1334
  %1338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1339 = extractvalue %dx.types.CBufRet.f32 %1338, 0
  %1340 = fmul fast float %1339, %1286
  %1341 = extractvalue %dx.types.CBufRet.f32 %1338, 1
  %1342 = fadd fast float %1340, %1341
  %1343 = extractvalue %dx.types.CBufRet.f32 %1338, 2
  %1344 = fmul fast float %1343, %1287
  %1345 = extractvalue %dx.types.CBufRet.f32 %1338, 3
  %1346 = fadd fast float %1344, %1345
  %1347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1348 = extractvalue %dx.types.CBufRet.f32 %1347, 0
  %1349 = extractvalue %dx.types.CBufRet.f32 %1347, 1
  %1350 = extractvalue %dx.types.CBufRet.f32 %1347, 2
  %1351 = extractvalue %dx.types.CBufRet.f32 %1347, 3
  %1352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1353 = extractvalue %dx.types.CBufRet.f32 %1352, 0
  %1354 = extractvalue %dx.types.CBufRet.f32 %1352, 1
  %1355 = extractvalue %dx.types.CBufRet.f32 %1352, 2
  %1356 = extractvalue %dx.types.CBufRet.f32 %1352, 3
  %1357 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %45, float %1342, float %1346, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1358 = extractvalue %dx.types.ResRet.f32 %1357, 0
  %1359 = extractvalue %dx.types.ResRet.f32 %1357, 1
  %1360 = extractvalue %dx.types.ResRet.f32 %1357, 2
  %1361 = extractvalue %dx.types.ResRet.f32 %1357, 3
  %1362 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %45, float %1342, float %1346, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1363 = extractvalue %dx.types.ResRet.f32 %1362, 0
  %1364 = extractvalue %dx.types.ResRet.f32 %1362, 1
  %1365 = extractvalue %dx.types.ResRet.f32 %1362, 2
  %1366 = extractvalue %dx.types.ResRet.f32 %1362, 3
  %1367 = fmul fast float %1358, %1335
  %1368 = fmul fast float %1363, %1335
  %1369 = fmul fast float %1365, %1335
  %1370 = fmul fast float %1361, %1335
  %1371 = fadd fast float %1367, %1348
  %1372 = fadd fast float %1368, %1349
  %1373 = fadd fast float %1369, %1350
  %1374 = fadd fast float %1370, %1351
  %1375 = fmul fast float %1359, %1335
  %1376 = fmul fast float %1364, %1335
  %1377 = fadd fast float %1375, %1353
  %1378 = fadd fast float %1376, %1354
  %1379 = fmul fast float %1360, %1335
  %1380 = fmul fast float %1366, %1335
  %1381 = fadd fast float %1379, %1355
  %1382 = fadd fast float %1380, %1356
  %1383 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %45, float %1342, float %1346, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1384 = extractvalue %dx.types.ResRet.f32 %1383, 0
  %1385 = extractvalue %dx.types.ResRet.f32 %1383, 1
  %1386 = extractvalue %dx.types.ResRet.f32 %1383, 2
  %1387 = extractvalue %dx.types.ResRet.f32 %1383, 3
  %1388 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %45, float %1342, float %1346, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1389 = extractvalue %dx.types.ResRet.f32 %1388, 0
  %1390 = extractvalue %dx.types.ResRet.f32 %1388, 1
  %1391 = extractvalue %dx.types.ResRet.f32 %1388, 2
  %1392 = extractvalue %dx.types.ResRet.f32 %1388, 3
  %1393 = fmul fast float %1384, %1336
  %1394 = fmul fast float %1389, %1336
  %1395 = fmul fast float %1391, %1336
  %1396 = fmul fast float %1387, %1336
  %1397 = fadd fast float %1371, %1393
  %1398 = fadd fast float %1372, %1394
  %1399 = fadd fast float %1373, %1395
  %1400 = fadd fast float %1374, %1396
  %1401 = fmul fast float %1385, %1336
  %1402 = fmul fast float %1390, %1336
  %1403 = fadd fast float %1377, %1401
  %1404 = fadd fast float %1378, %1402
  %1405 = fmul fast float %1386, %1336
  %1406 = fmul fast float %1392, %1336
  %1407 = fadd fast float %1381, %1405
  %1408 = fadd fast float %1382, %1406
  %1409 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %45, float %1342, float %1346, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1410 = extractvalue %dx.types.ResRet.f32 %1409, 0
  %1411 = extractvalue %dx.types.ResRet.f32 %1409, 1
  %1412 = extractvalue %dx.types.ResRet.f32 %1409, 2
  %1413 = extractvalue %dx.types.ResRet.f32 %1409, 3
  %1414 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %45, float %1342, float %1346, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1415 = extractvalue %dx.types.ResRet.f32 %1414, 0
  %1416 = extractvalue %dx.types.ResRet.f32 %1414, 1
  %1417 = extractvalue %dx.types.ResRet.f32 %1414, 2
  %1418 = extractvalue %dx.types.ResRet.f32 %1414, 3
  %1419 = fmul fast float %1410, %1337
  %1420 = fmul fast float %1415, %1337
  %1421 = fmul fast float %1417, %1337
  %1422 = fmul fast float %1413, %1337
  %1423 = fadd fast float %1397, %1419
  %1424 = fadd fast float %1398, %1420
  %1425 = fadd fast float %1399, %1421
  %1426 = fadd fast float %1400, %1422
  %1427 = fmul fast float %1411, %1337
  %1428 = fmul fast float %1416, %1337
  %1429 = fadd fast float %1403, %1427
  %1430 = fadd fast float %1404, %1428
  %1431 = fmul fast float %1412, %1337
  %1432 = fmul fast float %1418, %1337
  %1433 = fadd fast float %1407, %1431
  %1434 = fadd fast float %1408, %1432
  %1435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1436 = extractvalue %dx.types.CBufRet.f32 %1435, 0
  %1437 = fsub fast float %618, %1436
  %1438 = fsub fast float %1279, %618
  %1439 = call float @dx.op.binary.f32(i32 35, float %1438, float %1437)  ; FMax(a,b)
  %1440 = extractvalue %dx.types.CBufRet.f32 %1435, 1
  %1441 = fsub fast float %619, %1440
  %1442 = fsub fast float %1280, %619
  %1443 = call float @dx.op.binary.f32(i32 35, float %1442, float %1441)  ; FMax(a,b)
  %1444 = call float @dx.op.binary.f32(i32 35, float %1439, float %1443)  ; FMax(a,b)
  %1445 = extractvalue %dx.types.CBufRet.f32 %1283, 3
  %1446 = fmul fast float %1445, %1444
  %1447 = call float @dx.op.unary.f32(i32 7, float %1446)  ; Saturate(value)
  %1448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1449 = extractvalue %dx.types.CBufRet.f32 %1448, 0
  %1450 = extractvalue %dx.types.CBufRet.f32 %1448, 1
  %1451 = extractvalue %dx.types.CBufRet.f32 %1448, 2
  %1452 = extractvalue %dx.types.CBufRet.f32 %1448, 3
  %1453 = fsub fast float %1449, %1423
  %1454 = fsub fast float %1450, %1424
  %1455 = fsub fast float %1451, %1425
  %1456 = fsub fast float %1452, %1426
  %1457 = fmul fast float %1453, %1447
  %1458 = fmul fast float %1454, %1447
  %1459 = fmul fast float %1455, %1447
  %1460 = fmul fast float %1456, %1447
  %1461 = fadd fast float %1457, %1423
  %1462 = fadd fast float %1458, %1424
  %1463 = fadd fast float %1459, %1425
  %1464 = fadd fast float %1460, %1426
  %1465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1466 = extractvalue %dx.types.CBufRet.f32 %1465, 0
  %1467 = extractvalue %dx.types.CBufRet.f32 %1465, 1
  %1468 = fsub fast float %1466, %1429
  %1469 = fsub fast float %1467, %1430
  %1470 = fmul fast float %1468, %1447
  %1471 = fmul fast float %1469, %1447
  %1472 = fadd fast float %1470, %1429
  %1473 = fadd fast float %1471, %1430
  %1474 = extractvalue %dx.types.CBufRet.f32 %1465, 2
  %1475 = extractvalue %dx.types.CBufRet.f32 %1465, 3
  %1476 = fsub fast float %1474, %1433
  %1477 = fsub fast float %1475, %1434
  %1478 = fmul fast float %1476, %1447
  %1479 = fmul fast float %1477, %1447
  %1480 = fadd fast float %1478, %1433
  %1481 = fadd fast float %1479, %1434
  %1482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1483 = extractvalue %dx.types.CBufRet.f32 %1482, 0
  %1484 = fmul fast float %1483, %1461
  %1485 = fmul fast float %1483, %1462
  %1486 = fmul fast float %1483, %1463
  %1487 = fmul fast float %1483, %1464
  %1488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1489 = extractvalue %dx.types.CBufRet.f32 %1488, 0
  %1490 = fmul fast float %1489, %1472
  %1491 = fmul fast float %1489, %1473
  %1492 = fadd fast float %1490, %1484
  %1493 = fadd fast float %1491, %1486
  %1494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1495 = extractvalue %dx.types.CBufRet.f32 %1494, 0
  %1496 = fmul fast float %1495, %1480
  %1497 = fmul fast float %1495, %1481
  %1498 = fadd fast float %1492, %1496
  %1499 = fadd fast float %1493, %1497
  %1500 = extractvalue %dx.types.CBufRet.f32 %1482, 1
  %1501 = fmul fast float %1500, %1461
  %1502 = fmul fast float %1500, %1462
  %1503 = fmul fast float %1500, %1463
  %1504 = fmul fast float %1500, %1464
  %1505 = extractvalue %dx.types.CBufRet.f32 %1488, 1
  %1506 = fmul fast float %1505, %1472
  %1507 = fmul fast float %1505, %1473
  %1508 = fadd fast float %1506, %1501
  %1509 = fadd fast float %1507, %1503
  %1510 = extractvalue %dx.types.CBufRet.f32 %1494, 1
  %1511 = fmul fast float %1510, %1480
  %1512 = fmul fast float %1510, %1481
  %1513 = fadd fast float %1508, %1511
  %1514 = fadd fast float %1509, %1512
  %1515 = extractvalue %dx.types.CBufRet.f32 %1482, 2
  %1516 = fmul fast float %1515, %1461
  %1517 = fmul fast float %1515, %1462
  %1518 = fmul fast float %1515, %1463
  %1519 = fmul fast float %1515, %1464
  %1520 = extractvalue %dx.types.CBufRet.f32 %1488, 2
  %1521 = fmul fast float %1520, %1472
  %1522 = fmul fast float %1520, %1473
  %1523 = fadd fast float %1521, %1516
  %1524 = fadd fast float %1522, %1518
  %1525 = extractvalue %dx.types.CBufRet.f32 %1494, 2
  %1526 = fmul fast float %1525, %1480
  %1527 = fmul fast float %1525, %1481
  %1528 = fadd fast float %1523, %1526
  %1529 = fadd fast float %1524, %1527
  %1530 = fmul fast float %1517, %1517
  %1531 = fmul fast float %1529, %1529
  %1532 = fmul fast float %1519, %1519
  %1533 = fadd fast float %1532, %1530
  %1534 = fadd fast float %1533, %1531
  %1535 = call float @dx.op.unary.f32(i32 24, float %1534)  ; Sqrt(value)
  %1536 = fcmp fast ugt float %1535, 0.000000e+00
  br i1 %1536, label %1537, label %1552

; <label>:1537                                    ; preds = %1271
  %1538 = fsub fast float -0.000000e+00, %1519
  %1539 = fdiv fast float %1538, %1535
  %1540 = fsub fast float -0.000000e+00, %1517
  %1541 = fdiv fast float %1540, %1535
  %1542 = fdiv fast float %1529, %1535
  %1543 = fmul fast float %1528, 0x3FE279A760000000
  %1544 = fmul fast float %1541, %1517
  %1545 = fmul fast float %1542, %1529
  %1546 = fmul fast float %1539, %1519
  %1547 = fadd fast float %1544, %1546
  %1548 = fsub fast float %1547, %1545
  %1549 = call float @dx.op.unary.f32(i32 6, float %1548)  ; FAbs(value)
  %1550 = fadd fast float %1549, 0x3DDB7CDFE0000000
  %1551 = fdiv fast float %1543, %1550
  br label %1552

; <label>:1552                                    ; preds = %1537, %1271
  %1553 = phi float [ %1551, %1537 ], [ 1.000000e+00, %1271 ]
  %1554 = fmul fast float %1502, %1502
  %1555 = fmul fast float %1514, %1514
  %1556 = fmul fast float %1504, %1504
  %1557 = fadd fast float %1556, %1554
  %1558 = fadd fast float %1557, %1555
  %1559 = call float @dx.op.unary.f32(i32 24, float %1558)  ; Sqrt(value)
  %1560 = fcmp fast ugt float %1559, 0.000000e+00
  br i1 %1560, label %1561, label %1576

; <label>:1561                                    ; preds = %1552
  %1562 = fsub fast float -0.000000e+00, %1504
  %1563 = fdiv fast float %1562, %1559
  %1564 = fsub fast float -0.000000e+00, %1502
  %1565 = fdiv fast float %1564, %1559
  %1566 = fdiv fast float %1514, %1559
  %1567 = fmul fast float %1513, 0x3FE279A760000000
  %1568 = fmul fast float %1565, %1502
  %1569 = fmul fast float %1566, %1514
  %1570 = fmul fast float %1563, %1504
  %1571 = fadd fast float %1568, %1570
  %1572 = fsub fast float %1571, %1569
  %1573 = call float @dx.op.unary.f32(i32 6, float %1572)  ; FAbs(value)
  %1574 = fadd fast float %1573, 0x3DDB7CDFE0000000
  %1575 = fdiv fast float %1567, %1574
  br label %1576

; <label>:1576                                    ; preds = %1561, %1552
  %1577 = phi float [ %1575, %1561 ], [ 1.000000e+00, %1552 ]
  %1578 = call float @dx.op.binary.f32(i32 36, float %1577, float %1553)  ; FMin(a,b)
  %1579 = fmul fast float %1485, %1485
  %1580 = fmul fast float %1499, %1499
  %1581 = fmul fast float %1487, %1487
  %1582 = fadd fast float %1581, %1579
  %1583 = fadd fast float %1582, %1580
  %1584 = call float @dx.op.unary.f32(i32 24, float %1583)  ; Sqrt(value)
  %1585 = fcmp fast ugt float %1584, 0.000000e+00
  br i1 %1585, label %1586, label %1601

; <label>:1586                                    ; preds = %1576
  %1587 = fsub fast float -0.000000e+00, %1487
  %1588 = fdiv fast float %1587, %1584
  %1589 = fsub fast float -0.000000e+00, %1485
  %1590 = fdiv fast float %1589, %1584
  %1591 = fdiv fast float %1499, %1584
  %1592 = fmul fast float %1498, 0x3FE279A760000000
  %1593 = fmul fast float %1590, %1485
  %1594 = fmul fast float %1591, %1499
  %1595 = fmul fast float %1588, %1487
  %1596 = fadd fast float %1593, %1595
  %1597 = fsub fast float %1596, %1594
  %1598 = call float @dx.op.unary.f32(i32 6, float %1597)  ; FAbs(value)
  %1599 = fadd fast float %1598, 0x3DDB7CDFE0000000
  %1600 = fdiv fast float %1592, %1599
  br label %1601

; <label>:1601                                    ; preds = %1586, %1576
  %1602 = phi float [ %1600, %1586 ], [ 1.000000e+00, %1576 ]
  %1603 = call float @dx.op.binary.f32(i32 36, float %1602, float %1578)  ; FMin(a,b)
  %1604 = call float @dx.op.unary.f32(i32 7, float %1603)  ; Saturate(value)
  %1605 = fcmp fast olt float %1604, 1.000000e+00
  br i1 %1605, label %1606, label %1616

; <label>:1606                                    ; preds = %1601
  %1607 = fmul fast float %1604, %1485
  %1608 = fmul fast float %1604, %1499
  %1609 = fmul fast float %1604, %1487
  %1610 = fmul fast float %1604, %1502
  %1611 = fmul fast float %1604, %1514
  %1612 = fmul fast float %1604, %1504
  %1613 = fmul fast float %1604, %1517
  %1614 = fmul fast float %1604, %1529
  %1615 = fmul fast float %1604, %1519
  br label %1616

; <label>:1616                                    ; preds = %1606, %1601
  %1617 = phi float [ %1613, %1606 ], [ %1517, %1601 ]
  %1618 = phi float [ %1614, %1606 ], [ %1529, %1601 ]
  %1619 = phi float [ %1615, %1606 ], [ %1519, %1601 ]
  %1620 = phi float [ %1610, %1606 ], [ %1502, %1601 ]
  %1621 = phi float [ %1611, %1606 ], [ %1514, %1601 ]
  %1622 = phi float [ %1612, %1606 ], [ %1504, %1601 ]
  %1623 = phi float [ %1607, %1606 ], [ %1485, %1601 ]
  %1624 = phi float [ %1608, %1606 ], [ %1499, %1601 ]
  %1625 = phi float [ %1609, %1606 ], [ %1487, %1601 ]
  %1626 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1498)  ; FMax(a,b)
  %1627 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1513)  ; FMax(a,b)
  %1628 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1528)  ; FMax(a,b)
  %1629 = fcmp fast oge float %1286, 0.000000e+00
  %1630 = and i1 %1629, %1051
  %1631 = fcmp fast ole float %1286, 1.000000e+00
  %1632 = and i1 %1631, %1630
  %1633 = fcmp fast oge float %1287, 0.000000e+00
  %1634 = and i1 %1633, %1632
  %1635 = fcmp fast ole float %1287, 1.000000e+00
  %1636 = and i1 %1635, %1634
  br i1 %1636, label %1637, label %1782, !dx.controlflow.hints !124

; <label>:1637                                    ; preds = %1616
  %1638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1639 = extractvalue %dx.types.CBufRet.f32 %1638, 2
  %1640 = extractvalue %dx.types.CBufRet.f32 %1638, 3
  %1641 = fmul fast float %1639, %1286
  %1642 = fmul fast float %1640, %1287
  %1643 = call float @dx.op.unary.f32(i32 27, float %1641)  ; Round_ni(value)
  %1644 = call float @dx.op.unary.f32(i32 27, float %1642)  ; Round_ni(value)
  %1645 = fptosi float %1643 to i32
  %1646 = fptosi float %1644 to i32
  %1647 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %29, i32 0, i32 %1645, i32 %1646, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1648 = extractvalue %dx.types.ResRet.i32 %1647, 0
  %1649 = and i32 %1648, 65535
  %1650 = lshr i32 %1648, 16
  %1651 = icmp eq i32 %1649, 65535
  br i1 %1651, label %1688, label %1652

; <label>:1652                                    ; preds = %1637
  %1653 = extractvalue %dx.types.CBufRet.f32 %1049, 1
  %1654 = extractvalue %dx.types.CBufRet.f32 %1638, 0
  %1655 = extractvalue %dx.types.CBufRet.f32 %1638, 1
  %1656 = fmul fast float %1654, %1286
  %1657 = fmul fast float %1655, %1287
  %1658 = fmul fast float %1656, 1.250000e-01
  %1659 = fmul fast float %1657, 1.250000e-01
  %1660 = call float @dx.op.unary.f32(i32 27, float %1658)  ; Round_ni(value)
  %1661 = call float @dx.op.unary.f32(i32 27, float %1659)  ; Round_ni(value)
  %1662 = fmul fast float %1660, 8.000000e+00
  %1663 = fmul fast float %1661, 8.000000e+00
  %1664 = and i32 %1648, 255
  %1665 = lshr i32 %1648, 8
  %1666 = and i32 %1665, 255
  %1667 = mul nuw nsw i32 %1664, 9
  %1668 = uitofp i32 %1667 to float
  %1669 = mul nuw nsw i32 %1666, 9
  %1670 = uitofp i32 %1669 to float
  %1671 = fadd fast float %1668, 5.000000e-01
  %1672 = fadd fast float %1671, %1656
  %1673 = fsub fast float %1672, %1662
  %1674 = fadd fast float %1670, 5.000000e-01
  %1675 = fadd fast float %1674, %1657
  %1676 = fsub fast float %1675, %1663
  %1677 = fdiv fast float %1673, %1050
  %1678 = fdiv fast float %1676, %1653
  %1679 = fmul fast float %1314, 4.375000e-01
  %1680 = fadd fast float %1679, 3.125000e-02
  %1681 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %45, float %1677, float %1678, float %1680, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1682 = extractvalue %dx.types.ResRet.f32 %1681, 0
  %1683 = extractvalue %dx.types.ResRet.f32 %1681, 1
  %1684 = extractvalue %dx.types.ResRet.f32 %1681, 2
  %1685 = fadd fast float %1682, %1626
  %1686 = fadd fast float %1683, %1627
  %1687 = fadd fast float %1684, %1628
  br label %1688

; <label>:1688                                    ; preds = %1652, %1637
  %1689 = phi float [ %1687, %1652 ], [ %1628, %1637 ]
  %1690 = phi float [ %1686, %1652 ], [ %1627, %1637 ]
  %1691 = phi float [ %1685, %1652 ], [ %1626, %1637 ]
  %1692 = icmp eq i32 %1650, 65535
  br i1 %1692, label %1782, label %1693

; <label>:1693                                    ; preds = %1688
  %1694 = extractvalue %dx.types.CBufRet.f32 %1049, 1
  %1695 = extractvalue %dx.types.CBufRet.f32 %1638, 0
  %1696 = extractvalue %dx.types.CBufRet.f32 %1638, 1
  %1697 = fmul fast float %1695, %1286
  %1698 = fmul fast float %1696, %1287
  %1699 = fmul fast float %1697, 1.250000e-01
  %1700 = fmul fast float %1698, 1.250000e-01
  %1701 = call float @dx.op.unary.f32(i32 27, float %1699)  ; Round_ni(value)
  %1702 = call float @dx.op.unary.f32(i32 27, float %1700)  ; Round_ni(value)
  %1703 = fmul fast float %1701, 8.000000e+00
  %1704 = fmul fast float %1702, 8.000000e+00
  %1705 = fsub fast float %1697, %1703
  %1706 = fsub fast float %1698, %1704
  %1707 = fadd fast float %1705, 5.000000e-01
  %1708 = fadd fast float %1706, 5.000000e-01
  %1709 = and i32 %1650, 255
  %1710 = lshr i32 %1648, 24
  %1711 = mul nuw nsw i32 %1709, 9
  %1712 = uitofp i32 %1711 to float
  %1713 = mul nuw nsw i32 %1710, 9
  %1714 = uitofp i32 %1713 to float
  %1715 = fadd fast float %1707, %1712
  %1716 = fadd fast float %1708, %1714
  %1717 = fdiv fast float %1715, %1050
  %1718 = fdiv fast float %1716, %1694
  %1719 = fmul fast float %1314, 4.375000e-01
  %1720 = fadd fast float %1719, 3.125000e-02
  %1721 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %45, float %1717, float %1718, float %1720, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1722 = extractvalue %dx.types.ResRet.f32 %1721, 0
  %1723 = extractvalue %dx.types.ResRet.f32 %1721, 1
  %1724 = extractvalue %dx.types.ResRet.f32 %1721, 2
  %1725 = fadd fast float %1719, 5.312500e-01
  %1726 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %45, float %1717, float %1718, float %1725, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1727 = extractvalue %dx.types.ResRet.f32 %1726, 0
  %1728 = extractvalue %dx.types.ResRet.f32 %1726, 1
  %1729 = extractvalue %dx.types.ResRet.f32 %1726, 2
  %1730 = fmul fast float %1727, 2.000000e+00
  %1731 = fmul fast float %1728, 2.000000e+00
  %1732 = fmul fast float %1729, 2.000000e+00
  %1733 = fadd fast float %1730, -1.000000e+00
  %1734 = fadd fast float %1731, -1.000000e+00
  %1735 = fadd fast float %1732, -1.000000e+00
  %1736 = fmul fast float %1733, %1733
  %1737 = fmul fast float %1734, %1734
  %1738 = fadd fast float %1736, %1737
  %1739 = fmul fast float %1735, %1735
  %1740 = fadd fast float %1738, %1739
  %1741 = call float @dx.op.unary.f32(i32 24, float %1740)  ; Sqrt(value)
  %1742 = fcmp fast ogt float %1741, 0.000000e+00
  br i1 %1742, label %1743, label %1747

; <label>:1743                                    ; preds = %1693
  %1744 = fdiv fast float %1733, %1741
  %1745 = fdiv fast float %1734, %1741
  %1746 = fdiv fast float %1735, %1741
  br label %1747

; <label>:1747                                    ; preds = %1743, %1693
  %1748 = phi float [ %1744, %1743 ], [ 0.000000e+00, %1693 ]
  %1749 = phi float [ %1745, %1743 ], [ 0.000000e+00, %1693 ]
  %1750 = phi float [ %1746, %1743 ], [ 0.000000e+00, %1693 ]
  %1751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1752 = extractvalue %dx.types.CBufRet.f32 %1751, 0
  %1753 = extractvalue %dx.types.CBufRet.f32 %1751, 1
  %1754 = fsub fast float %618, %1752
  %1755 = fsub fast float %619, %1753
  %1756 = fmul fast float %1754, %1754
  %1757 = fmul fast float %1755, %1755
  %1758 = fadd fast float %1756, %1757
  %1759 = call float @dx.op.unary.f32(i32 24, float %1758)  ; Sqrt(value)
  %1760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1761 = extractvalue %dx.types.CBufRet.f32 %1760, 0
  %1762 = extractvalue %dx.types.CBufRet.f32 %1760, 1
  %1763 = fsub fast float %1759, %1761
  %1764 = fdiv fast float %1763, %1762
  %1765 = call float @dx.op.unary.f32(i32 7, float %1764)  ; Saturate(value)
  %1766 = fmul fast float %1765, 2.000000e+00
  %1767 = fsub fast float 3.000000e+00, %1766
  %1768 = fmul fast float %1765, %1765
  %1769 = fmul fast float %1768, %1767
  %1770 = call float @dx.op.dot3.f32(i32 55, float %1748, float %1749, float %1750, float %367, float %368, float %369)  ; Dot3(ax,ay,az,bx,by,bz)
  %1771 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1770)  ; FMax(a,b)
  %1772 = fmul fast float %1771, 0x400C5BF8A0000000
  %1773 = fmul fast float %1769, %1722
  %1774 = fmul fast float %1773, %1772
  %1775 = fadd fast float %1774, %1691
  %1776 = fmul fast float %1769, %1723
  %1777 = fmul fast float %1776, %1772
  %1778 = fadd fast float %1777, %1690
  %1779 = fmul fast float %1769, %1724
  %1780 = fmul fast float %1779, %1772
  %1781 = fadd fast float %1780, %1689
  br label %1782

; <label>:1782                                    ; preds = %1747, %1688, %1616
  %1783 = phi float [ %1781, %1747 ], [ %1689, %1688 ], [ %1628, %1616 ]
  %1784 = phi float [ %1778, %1747 ], [ %1690, %1688 ], [ %1627, %1616 ]
  %1785 = phi float [ %1775, %1747 ], [ %1691, %1688 ], [ %1626, %1616 ]
  %1786 = fcmp fast ogt float %1273, %1310
  %1787 = and i1 %1629, %1786
  %1788 = and i1 %1631, %1787
  %1789 = and i1 %1633, %1788
  %1790 = and i1 %1635, %1789
  br i1 %1790, label %1791, label %1848, !dx.controlflow.hints !125

; <label>:1791                                    ; preds = %1782
  %1792 = fmul fast float %1312, 0x3FC24924A0000000
  %1793 = fsub fast float %1273, %1310
  %1794 = fdiv fast float %1793, %1792
  %1795 = call float @dx.op.unary.f32(i32 7, float %1794)  ; Saturate(value)
  %1796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1797 = extractvalue %dx.types.CBufRet.f32 %1796, 0
  %1798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1799 = extractvalue %dx.types.CBufRet.f32 %1798, 0
  %1800 = extractvalue %dx.types.CBufRet.f32 %1798, 1
  %1801 = extractvalue %dx.types.CBufRet.f32 %1798, 2
  %1802 = fsub fast float %1797, %1785
  %1803 = fsub fast float %1799, %1623
  %1804 = fsub fast float %1800, %1624
  %1805 = fsub fast float %1801, %1625
  %1806 = fmul fast float %1802, %1795
  %1807 = fmul fast float %1803, %1795
  %1808 = fmul fast float %1804, %1795
  %1809 = fmul fast float %1805, %1795
  %1810 = fadd fast float %1806, %1785
  %1811 = fadd fast float %1807, %1623
  %1812 = fadd fast float %1808, %1624
  %1813 = fadd fast float %1809, %1625
  %1814 = extractvalue %dx.types.CBufRet.f32 %1796, 1
  %1815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1816 = extractvalue %dx.types.CBufRet.f32 %1815, 0
  %1817 = extractvalue %dx.types.CBufRet.f32 %1815, 1
  %1818 = extractvalue %dx.types.CBufRet.f32 %1815, 2
  %1819 = fsub fast float %1814, %1784
  %1820 = fsub fast float %1816, %1620
  %1821 = fsub fast float %1817, %1621
  %1822 = fsub fast float %1818, %1622
  %1823 = fmul fast float %1819, %1795
  %1824 = fmul fast float %1820, %1795
  %1825 = fmul fast float %1821, %1795
  %1826 = fmul fast float %1822, %1795
  %1827 = fadd fast float %1823, %1784
  %1828 = fadd fast float %1824, %1620
  %1829 = fadd fast float %1825, %1621
  %1830 = fadd fast float %1826, %1622
  %1831 = extractvalue %dx.types.CBufRet.f32 %1796, 2
  %1832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1833 = extractvalue %dx.types.CBufRet.f32 %1832, 0
  %1834 = extractvalue %dx.types.CBufRet.f32 %1832, 1
  %1835 = extractvalue %dx.types.CBufRet.f32 %1832, 2
  %1836 = fsub fast float %1831, %1783
  %1837 = fsub fast float %1833, %1617
  %1838 = fsub fast float %1834, %1618
  %1839 = fsub fast float %1835, %1619
  %1840 = fmul fast float %1836, %1795
  %1841 = fmul fast float %1837, %1795
  %1842 = fmul fast float %1838, %1795
  %1843 = fmul fast float %1839, %1795
  %1844 = fadd fast float %1840, %1783
  %1845 = fadd fast float %1841, %1617
  %1846 = fadd fast float %1842, %1618
  %1847 = fadd fast float %1843, %1619
  br label %1848

; <label>:1848                                    ; preds = %1791, %1782
  %1849 = phi float [ %1844, %1791 ], [ %1783, %1782 ]
  %1850 = phi float [ %1845, %1791 ], [ %1617, %1782 ]
  %1851 = phi float [ %1846, %1791 ], [ %1618, %1782 ]
  %1852 = phi float [ %1847, %1791 ], [ %1619, %1782 ]
  %1853 = phi float [ %1827, %1791 ], [ %1784, %1782 ]
  %1854 = phi float [ %1828, %1791 ], [ %1620, %1782 ]
  %1855 = phi float [ %1829, %1791 ], [ %1621, %1782 ]
  %1856 = phi float [ %1830, %1791 ], [ %1622, %1782 ]
  %1857 = phi float [ %1810, %1791 ], [ %1785, %1782 ]
  %1858 = phi float [ %1811, %1791 ], [ %1623, %1782 ]
  %1859 = phi float [ %1812, %1791 ], [ %1624, %1782 ]
  %1860 = phi float [ %1813, %1791 ], [ %1625, %1782 ]
  %1861 = extractvalue %dx.types.CBufRet.f32 %1435, 3
  %1862 = fmul fast float %1861, %1857
  %1863 = fmul fast float %1861, %1853
  %1864 = fmul fast float %1861, %1849
  %1865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1866 = extractvalue %dx.types.CBufRet.f32 %1865, 3
  %1867 = fmul fast float %1862, %1866
  %1868 = fmul fast float %1863, %1866
  %1869 = fmul fast float %1864, %1866
  %1870 = call float @dx.op.dot3.f32(i32 55, float %1867, float %1868, float %1869, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1871 = fmul fast float %1870, 0x3FD20DD760000000
  %1872 = fmul fast float %1858, 1.500000e+00
  %1873 = fmul fast float %1872, %1861
  %1874 = fmul fast float %1873, %1866
  %1875 = fmul fast float %1859, 1.500000e+00
  %1876 = fmul fast float %1875, %1861
  %1877 = fmul fast float %1876, %1866
  %1878 = fmul fast float %1860, 1.500000e+00
  %1879 = fmul fast float %1878, %1861
  %1880 = fmul fast float %1879, %1866
  %1881 = fmul fast float %1854, 1.500000e+00
  %1882 = fmul fast float %1881, %1861
  %1883 = fmul fast float %1882, %1866
  %1884 = fmul fast float %1855, 1.500000e+00
  %1885 = fmul fast float %1884, %1861
  %1886 = fmul fast float %1885, %1866
  %1887 = fmul fast float %1856, 1.500000e+00
  %1888 = fmul fast float %1887, %1861
  %1889 = fmul fast float %1888, %1866
  %1890 = fmul fast float %1850, 1.500000e+00
  %1891 = fmul fast float %1890, %1861
  %1892 = fmul fast float %1891, %1866
  %1893 = fmul fast float %1851, 1.500000e+00
  %1894 = fmul fast float %1893, %1861
  %1895 = fmul fast float %1894, %1866
  %1896 = fmul fast float %1852, 1.500000e+00
  %1897 = fmul fast float %1896, %1861
  %1898 = fmul fast float %1897, %1866
  %1899 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1867)  ; FMax(a,b)
  %1900 = call float @dx.op.dot3.f32(i32 55, float %1874, float %1877, float %1880, float %1874, float %1877, float %1880)  ; Dot3(ax,ay,az,bx,by,bz)
  %1901 = fcmp fast oeq float %1900, 0.000000e+00
  %1902 = fcmp fast oeq float %1899, 0.000000e+00
  %1903 = or i1 %1902, %1901
  br i1 %1903, label %1933, label %1904

; <label>:1904                                    ; preds = %1848
  %1905 = fsub fast float -0.000000e+00, %1880
  %1906 = fsub fast float -0.000000e+00, %1874
  %1907 = call float @dx.op.unary.f32(i32 24, float %1900)  ; Sqrt(value)
  %1908 = fdiv fast float %1907, %1899
  %1909 = fcmp fast ogt float %1908, 0x3FFB6F8900000000
  %1910 = select i1 %1909, float 0x3FFB6F8900000000, float %1908
  %1911 = fmul fast float %1910, 0x3FE8A23460000000
  %1912 = call float @dx.op.unary.f32(i32 7, float %1911)  ; Saturate(value)
  %1913 = call float @dx.op.binary.f32(i32 35, float %1910, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1914 = fmul fast float %1912, %1899
  %1915 = fmul fast float %1913, 0x3FF279A740000000
  %1916 = fadd fast float %1915, -1.000000e+00
  %1917 = call float @dx.op.dot3.f32(i32 55, float %1905, float %1906, float %1877, float %1905, float %1906, float %1877)  ; Dot3(ax,ay,az,bx,by,bz)
  %1918 = call float @dx.op.unary.f32(i32 25, float %1917)  ; Rsqrt(value)
  %1919 = fmul fast float %1918, %1905
  %1920 = fmul fast float %1918, %1906
  %1921 = fmul fast float %1918, %1877
  %1922 = fmul fast float %1916, %1916
  %1923 = fsub fast float 1.000000e+00, %1922
  %1924 = fmul fast float %1913, 0x40005F8BE0000000
  %1925 = fsub fast float 0x400C5BF8A0000000, %1924
  %1926 = fdiv fast float %1914, %1925
  %1927 = fmul fast float %1926, 0x3FEE31C3C0000000
  %1928 = fmul fast float %1927, %1923
  %1929 = fmul fast float %1913, 0x3FDACB7480000000
  %1930 = fadd fast float %1929, 0xBFD7347680000000
  %1931 = fmul fast float %1930, %1926
  %1932 = fmul fast float %1931, %1923
  br label %1933

; <label>:1933                                    ; preds = %1904, %1848
  %1934 = phi float [ %1919, %1904 ], [ 0.000000e+00, %1848 ]
  %1935 = phi float [ %1920, %1904 ], [ 0.000000e+00, %1848 ]
  %1936 = phi float [ %1921, %1904 ], [ 0.000000e+00, %1848 ]
  %1937 = phi float [ %1928, %1904 ], [ 0.000000e+00, %1848 ]
  %1938 = phi float [ %1932, %1904 ], [ 0.000000e+00, %1848 ]
  %1939 = call float @dx.op.dot3.f32(i32 55, float %1934, float %1935, float %1936, float %367, float %368, float %369)  ; Dot3(ax,ay,az,bx,by,bz)
  %1940 = fmul fast float %1939, 0x3FDF454380000000
  %1941 = fmul fast float %1939, %1939
  %1942 = fmul fast float %1941, 0x3FEE471020000000
  %1943 = fadd fast float %1942, 0xBFD42F6020000000
  %1944 = fmul fast float %1899, 0x3FD20DD760000000
  %1945 = fmul fast float %1943, %1938
  %1946 = fadd fast float %1945, %1944
  %1947 = fmul fast float %1940, %1937
  %1948 = fadd fast float %1946, %1947
  %1949 = fsub fast float %1946, %1947
  %1950 = call float @dx.op.dot3.f32(i32 55, float %1934, float %1935, float %1936, float %599, float %600, float %601)  ; Dot3(ax,ay,az,bx,by,bz)
  %1951 = fmul fast float %1950, 0x3FDF454380000000
  %1952 = fmul fast float %1950, %1950
  %1953 = fmul fast float %1952, 0x3FEE471020000000
  %1954 = fadd fast float %1953, 0xBFD42F6020000000
  %1955 = call float @dx.op.dot3.f32(i32 55, float %1899, float %1937, float %1938, float 0x3FD20DD760000000, float %1951, float %1954)  ; Dot3(ax,ay,az,bx,by,bz)
  %1956 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1868)  ; FMax(a,b)
  %1957 = call float @dx.op.dot3.f32(i32 55, float %1883, float %1886, float %1889, float %1883, float %1886, float %1889)  ; Dot3(ax,ay,az,bx,by,bz)
  %1958 = fcmp fast oeq float %1957, 0.000000e+00
  %1959 = fcmp fast oeq float %1956, 0.000000e+00
  %1960 = or i1 %1959, %1958
  br i1 %1960, label %1990, label %1961

; <label>:1961                                    ; preds = %1933
  %1962 = fsub fast float -0.000000e+00, %1889
  %1963 = fsub fast float -0.000000e+00, %1883
  %1964 = call float @dx.op.unary.f32(i32 24, float %1957)  ; Sqrt(value)
  %1965 = fdiv fast float %1964, %1956
  %1966 = fcmp fast ogt float %1965, 0x3FFB6F8900000000
  %1967 = select i1 %1966, float 0x3FFB6F8900000000, float %1965
  %1968 = fmul fast float %1967, 0x3FE8A23460000000
  %1969 = call float @dx.op.unary.f32(i32 7, float %1968)  ; Saturate(value)
  %1970 = call float @dx.op.binary.f32(i32 35, float %1967, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1971 = fmul fast float %1969, %1956
  %1972 = fmul fast float %1970, 0x3FF279A740000000
  %1973 = fadd fast float %1972, -1.000000e+00
  %1974 = call float @dx.op.dot3.f32(i32 55, float %1962, float %1963, float %1886, float %1962, float %1963, float %1886)  ; Dot3(ax,ay,az,bx,by,bz)
  %1975 = call float @dx.op.unary.f32(i32 25, float %1974)  ; Rsqrt(value)
  %1976 = fmul fast float %1975, %1962
  %1977 = fmul fast float %1975, %1963
  %1978 = fmul fast float %1975, %1886
  %1979 = fmul fast float %1973, %1973
  %1980 = fsub fast float 1.000000e+00, %1979
  %1981 = fmul fast float %1970, 0x40005F8BE0000000
  %1982 = fsub fast float 0x400C5BF8A0000000, %1981
  %1983 = fdiv fast float %1971, %1982
  %1984 = fmul fast float %1983, 0x3FEE31C3C0000000
  %1985 = fmul fast float %1984, %1980
  %1986 = fmul fast float %1970, 0x3FDACB7480000000
  %1987 = fadd fast float %1986, 0xBFD7347680000000
  %1988 = fmul fast float %1987, %1983
  %1989 = fmul fast float %1988, %1980
  br label %1990

; <label>:1990                                    ; preds = %1961, %1933
  %1991 = phi float [ %1976, %1961 ], [ 0.000000e+00, %1933 ]
  %1992 = phi float [ %1977, %1961 ], [ 0.000000e+00, %1933 ]
  %1993 = phi float [ %1978, %1961 ], [ 0.000000e+00, %1933 ]
  %1994 = phi float [ %1985, %1961 ], [ 0.000000e+00, %1933 ]
  %1995 = phi float [ %1989, %1961 ], [ 0.000000e+00, %1933 ]
  %1996 = call float @dx.op.dot3.f32(i32 55, float %1991, float %1992, float %1993, float %367, float %368, float %369)  ; Dot3(ax,ay,az,bx,by,bz)
  %1997 = fmul fast float %1996, 0x3FDF454380000000
  %1998 = fmul fast float %1996, %1996
  %1999 = fmul fast float %1998, 0x3FEE471020000000
  %2000 = fadd fast float %1999, 0xBFD42F6020000000
  %2001 = fmul fast float %1956, 0x3FD20DD760000000
  %2002 = fmul fast float %2000, %1995
  %2003 = fadd fast float %2002, %2001
  %2004 = fmul fast float %1997, %1994
  %2005 = fadd fast float %2003, %2004
  %2006 = fsub fast float %2003, %2004
  %2007 = call float @dx.op.dot3.f32(i32 55, float %1991, float %1992, float %1993, float %599, float %600, float %601)  ; Dot3(ax,ay,az,bx,by,bz)
  %2008 = fmul fast float %2007, 0x3FDF454380000000
  %2009 = fmul fast float %2007, %2007
  %2010 = fmul fast float %2009, 0x3FEE471020000000
  %2011 = fadd fast float %2010, 0xBFD42F6020000000
  %2012 = call float @dx.op.dot3.f32(i32 55, float %1956, float %1994, float %1995, float 0x3FD20DD760000000, float %2008, float %2011)  ; Dot3(ax,ay,az,bx,by,bz)
  %2013 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1869)  ; FMax(a,b)
  %2014 = call float @dx.op.dot3.f32(i32 55, float %1892, float %1895, float %1898, float %1892, float %1895, float %1898)  ; Dot3(ax,ay,az,bx,by,bz)
  %2015 = fcmp fast oeq float %2014, 0.000000e+00
  %2016 = fcmp fast oeq float %2013, 0.000000e+00
  %2017 = or i1 %2016, %2015
  br i1 %2017, label %2047, label %2018

; <label>:2018                                    ; preds = %1990
  %2019 = fsub fast float -0.000000e+00, %1898
  %2020 = fsub fast float -0.000000e+00, %1892
  %2021 = call float @dx.op.unary.f32(i32 24, float %2014)  ; Sqrt(value)
  %2022 = fdiv fast float %2021, %2013
  %2023 = fcmp fast ogt float %2022, 0x3FFB6F8900000000
  %2024 = select i1 %2023, float 0x3FFB6F8900000000, float %2022
  %2025 = fmul fast float %2024, 0x3FE8A23460000000
  %2026 = call float @dx.op.unary.f32(i32 7, float %2025)  ; Saturate(value)
  %2027 = call float @dx.op.binary.f32(i32 35, float %2024, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2028 = fmul fast float %2026, %2013
  %2029 = fmul fast float %2027, 0x3FF279A740000000
  %2030 = fadd fast float %2029, -1.000000e+00
  %2031 = call float @dx.op.dot3.f32(i32 55, float %2019, float %2020, float %1895, float %2019, float %2020, float %1895)  ; Dot3(ax,ay,az,bx,by,bz)
  %2032 = call float @dx.op.unary.f32(i32 25, float %2031)  ; Rsqrt(value)
  %2033 = fmul fast float %2032, %2019
  %2034 = fmul fast float %2032, %2020
  %2035 = fmul fast float %2032, %1895
  %2036 = fmul fast float %2030, %2030
  %2037 = fsub fast float 1.000000e+00, %2036
  %2038 = fmul fast float %2027, 0x40005F8BE0000000
  %2039 = fsub fast float 0x400C5BF8A0000000, %2038
  %2040 = fdiv fast float %2028, %2039
  %2041 = fmul fast float %2040, 0x3FEE31C3C0000000
  %2042 = fmul fast float %2041, %2037
  %2043 = fmul fast float %2027, 0x3FDACB7480000000
  %2044 = fadd fast float %2043, 0xBFD7347680000000
  %2045 = fmul fast float %2044, %2040
  %2046 = fmul fast float %2045, %2037
  br label %2047

; <label>:2047                                    ; preds = %2018, %1990
  %2048 = phi float [ %2033, %2018 ], [ 0.000000e+00, %1990 ]
  %2049 = phi float [ %2034, %2018 ], [ 0.000000e+00, %1990 ]
  %2050 = phi float [ %2035, %2018 ], [ 0.000000e+00, %1990 ]
  %2051 = phi float [ %2042, %2018 ], [ 0.000000e+00, %1990 ]
  %2052 = phi float [ %2046, %2018 ], [ 0.000000e+00, %1990 ]
  %2053 = call float @dx.op.dot3.f32(i32 55, float %2048, float %2049, float %2050, float %367, float %368, float %369)  ; Dot3(ax,ay,az,bx,by,bz)
  %2054 = fmul fast float %2053, 0x3FDF454380000000
  %2055 = fmul fast float %2053, %2053
  %2056 = fmul fast float %2055, 0x3FEE471020000000
  %2057 = fadd fast float %2056, 0xBFD42F6020000000
  %2058 = fmul fast float %2013, 0x3FD20DD760000000
  %2059 = fmul fast float %2057, %2052
  %2060 = fadd fast float %2059, %2058
  %2061 = fmul fast float %2054, %2051
  %2062 = fadd fast float %2060, %2061
  %2063 = fsub fast float %2060, %2061
  %2064 = call float @dx.op.dot3.f32(i32 55, float %2048, float %2049, float %2050, float %599, float %600, float %601)  ; Dot3(ax,ay,az,bx,by,bz)
  %2065 = fmul fast float %2064, 0x3FDF454380000000
  %2066 = fmul fast float %2064, %2064
  %2067 = fmul fast float %2066, 0x3FEE471020000000
  %2068 = fadd fast float %2067, 0xBFD42F6020000000
  %2069 = call float @dx.op.dot3.f32(i32 55, float %2013, float %2051, float %2052, float 0x3FD20DD760000000, float %2065, float %2068)  ; Dot3(ax,ay,az,bx,by,bz)
  %2070 = call float @dx.op.binary.f32(i32 35, float %1948, float 0.000000e+00)  ; FMax(a,b)
  %2071 = call float @dx.op.binary.f32(i32 35, float %2005, float 0.000000e+00)  ; FMax(a,b)
  %2072 = call float @dx.op.binary.f32(i32 35, float %2062, float 0.000000e+00)  ; FMax(a,b)
  %2073 = call float @dx.op.binary.f32(i32 35, float %1949, float 0.000000e+00)  ; FMax(a,b)
  %2074 = call float @dx.op.binary.f32(i32 35, float %2006, float 0.000000e+00)  ; FMax(a,b)
  %2075 = call float @dx.op.binary.f32(i32 35, float %2063, float 0.000000e+00)  ; FMax(a,b)
  %2076 = call float @dx.op.binary.f32(i32 35, float %1955, float 0.000000e+00)  ; FMax(a,b)
  %2077 = call float @dx.op.binary.f32(i32 35, float %2012, float 0.000000e+00)  ; FMax(a,b)
  %2078 = call float @dx.op.binary.f32(i32 35, float %2069, float 0.000000e+00)  ; FMax(a,b)
  %2079 = fsub fast float %1267, %2070
  %2080 = fsub fast float %1268, %2071
  %2081 = fsub fast float %1269, %2072
  %2082 = fmul fast float %2079, %659
  %2083 = fmul fast float %2080, %659
  %2084 = fmul fast float %2081, %659
  %2085 = fadd fast float %2082, %2070
  %2086 = fadd fast float %2083, %2071
  %2087 = fadd fast float %2084, %2072
  %2088 = fsub fast float %1264, %2073
  %2089 = fsub fast float %1265, %2074
  %2090 = fsub fast float %1266, %2075
  %2091 = fmul fast float %2088, %659
  %2092 = fmul fast float %2089, %659
  %2093 = fmul fast float %2090, %659
  %2094 = fadd fast float %2091, %2073
  %2095 = fadd fast float %2092, %2074
  %2096 = fadd fast float %2093, %2075
  %2097 = fsub fast float %1261, %2076
  %2098 = fsub fast float %1262, %2077
  %2099 = fsub fast float %1263, %2078
  %2100 = fmul fast float %2097, %659
  %2101 = fmul fast float %2098, %659
  %2102 = fmul fast float %2099, %659
  %2103 = fadd fast float %2100, %2076
  %2104 = fadd fast float %2101, %2077
  %2105 = fadd fast float %2102, %2078
  %2106 = fsub fast float %1048, %1871
  %2107 = fmul fast float %2106, %659
  %2108 = fadd fast float %2107, %1871
  br label %2109

; <label>:2109                                    ; preds = %2047, %1260
  %2110 = phi float [ %2103, %2047 ], [ %1261, %1260 ]
  %2111 = phi float [ %2104, %2047 ], [ %1262, %1260 ]
  %2112 = phi float [ %2105, %2047 ], [ %1263, %1260 ]
  %2113 = phi float [ %2094, %2047 ], [ %1264, %1260 ]
  %2114 = phi float [ %2095, %2047 ], [ %1265, %1260 ]
  %2115 = phi float [ %2096, %2047 ], [ %1266, %1260 ]
  %2116 = phi float [ %2085, %2047 ], [ %1267, %1260 ]
  %2117 = phi float [ %2086, %2047 ], [ %1268, %1260 ]
  %2118 = phi float [ %2087, %2047 ], [ %1269, %1260 ]
  %2119 = phi float [ %2108, %2047 ], [ %1048, %1260 ]
  %2120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2121 = extractvalue %dx.types.CBufRet.f32 %2120, 0
  %2122 = call float @dx.op.binary.f32(i32 36, float %559, float %2121)  ; FMin(a,b)
  %2123 = fmul fast float %2122, %603
  %2124 = fsub fast float 1.000000e+00, %2123
  %2125 = bitcast float %2124 to i32
  %2126 = sub nsw i32 2129859010, %2125
  %2127 = bitcast i32 %2126 to float
  %2128 = call float @dx.op.binary.f32(i32 36, float %560, float %2121)  ; FMin(a,b)
  %2129 = fmul fast float %2128, %603
  %2130 = fsub fast float 1.000000e+00, %2129
  %2131 = bitcast float %2130 to i32
  %2132 = sub nsw i32 2129859010, %2131
  %2133 = bitcast i32 %2132 to float
  %2134 = call float @dx.op.binary.f32(i32 36, float %561, float %2121)  ; FMin(a,b)
  %2135 = fmul fast float %2134, %603
  %2136 = fsub fast float 1.000000e+00, %2135
  %2137 = bitcast float %2136 to i32
  %2138 = sub nsw i32 2129859010, %2137
  %2139 = bitcast i32 %2138 to float
  %2140 = fmul fast float %2116, %602
  %2141 = fmul fast float %2140, %2127
  %2142 = fmul fast float %2117, %602
  %2143 = fmul fast float %2142, %2133
  %2144 = fmul fast float %2118, %602
  %2145 = fmul fast float %2144, %2139
  %2146 = call float @dx.op.binary.f32(i32 36, float %568, float %2121)  ; FMin(a,b)
  %2147 = fmul fast float %2146, %603
  %2148 = fsub fast float 1.000000e+00, %2147
  %2149 = bitcast float %2148 to i32
  %2150 = sub nsw i32 2129859010, %2149
  %2151 = bitcast i32 %2150 to float
  %2152 = call float @dx.op.binary.f32(i32 36, float %569, float %2121)  ; FMin(a,b)
  %2153 = fmul fast float %2152, %603
  %2154 = fsub fast float 1.000000e+00, %2153
  %2155 = bitcast float %2154 to i32
  %2156 = sub nsw i32 2129859010, %2155
  %2157 = bitcast i32 %2156 to float
  %2158 = call float @dx.op.binary.f32(i32 36, float %591, float %2121)  ; FMin(a,b)
  %2159 = fmul fast float %2158, %603
  %2160 = fsub fast float 1.000000e+00, %2159
  %2161 = bitcast float %2160 to i32
  %2162 = sub nsw i32 2129859010, %2161
  %2163 = bitcast i32 %2162 to float
  %2164 = fmul fast float %2110, %602
  %2165 = fmul fast float %2164, %2151
  %2166 = fmul fast float %2111, %602
  %2167 = fmul fast float %2166, %2157
  %2168 = fmul fast float %2112, %602
  %2169 = fmul fast float %2168, %2163
  %2170 = call float @dx.op.dot3.f32(i32 55, float %2141, float %2143, float %2145, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2171 = select i1 %172, float 0.000000e+00, float %2141
  %2172 = select i1 %172, float %2170, float %2143
  %2173 = select i1 %172, float 0.000000e+00, float %2145
  %2174 = call float @dx.op.dot3.f32(i32 55, float %2113, float %2114, float %2115, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2175 = select i1 %172, float 0.000000e+00, float %2113
  %2176 = select i1 %172, float %2174, float %2114
  %2177 = select i1 %172, float 0.000000e+00, float %2115
  %2178 = call float @dx.op.dot3.f32(i32 55, float %2165, float %2167, float %2169, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2179 = select i1 %172, float 0.000000e+00, float %2165
  %2180 = select i1 %172, float %2178, float %2167
  %2181 = select i1 %172, float 0.000000e+00, float %2169
  %2182 = fmul fast float %593, 9.843750e-01
  %2183 = fmul fast float %379, 9.843750e-01
  %2184 = fadd fast float %2182, 7.812500e-03
  %2185 = fadd fast float %2183, 7.812500e-03
  %2186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %45, float %2184, float %2185, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2187 = extractvalue %dx.types.ResRet.f32 %2186, 2
  %2188 = extractvalue %dx.types.ResRet.f32 %2186, 3
  %2189 = fmul fast float %2187, %568
  %2190 = fmul fast float %2187, %569
  %2191 = fmul fast float %2187, %591
  %2192 = fadd fast float %2189, %2188
  %2193 = fadd fast float %2190, %2188
  %2194 = fadd fast float %2191, %2188
  %2195 = call float @dx.op.binary.f32(i32 35, float %2193, float %2194)  ; FMax(a,b)
  %2196 = call float @dx.op.binary.f32(i32 35, float %2192, float %2195)  ; FMax(a,b)
  %2197 = fsub fast float 1.000000e+00, %2196
  %2198 = fmul fast float %2196, %379
  %2199 = fadd fast float %2198, %379
  %2200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %2201 = extractvalue %dx.types.CBufRet.f32 %2200, 2
  %2202 = extractvalue %dx.types.CBufRet.f32 %2200, 3
  %2203 = fmul fast float %2199, %2201
  %2204 = fadd fast float %2203, %2202
  %2205 = call float @dx.op.unary.f32(i32 7, float %2204)  ; Saturate(value)
  %2206 = fsub fast float 1.000000e+00, %614
  %2207 = fadd fast float %2206, %2205
  %2208 = call float @dx.op.unary.f32(i32 7, float %2207)  ; Saturate(value)
  %2209 = fcmp fast olt float %2208, 1.000000e+00
  br i1 %2209, label %2210, label %2685

; <label>:2210                                    ; preds = %2109
  %2211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %2212 = extractvalue %dx.types.CBufRet.f32 %2211, 2
  %2213 = extractvalue %dx.types.CBufRet.f32 %2211, 3
  %2214 = fmul fast float %2212, %98
  %2215 = fmul fast float %2213, %99
  %2216 = fptoui float %2214 to i32
  %2217 = fptoui float %2215 to i32
  %2218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2219 = extractvalue %dx.types.CBufRet.f32 %2218, 0
  %2220 = extractvalue %dx.types.CBufRet.f32 %2218, 2
  %2221 = extractvalue %dx.types.CBufRet.f32 %2218, 3
  %2222 = fadd fast float %411, -4.000000e+00
  %2223 = call float @dx.op.binary.f32(i32 35, float %2222, float 0.000000e+00)  ; FMax(a,b)
  %2224 = fadd fast float %2223, %2219
  %2225 = fmul fast float %2224, %2220
  %2226 = call float @dx.op.unary.f32(i32 23, float %2225)  ; Log(value)
  %2227 = fmul fast float %2226, %2221
  %2228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2229 = extractvalue %dx.types.CBufRet.f32 %2228, 2
  %2230 = fmul fast float %2227, %2229
  %2231 = call float @dx.op.unary.f32(i32 7, float %2230)  ; Saturate(value)
  %2232 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2233 = extractvalue %dx.types.CBufRet.i32 %2232, 1
  %2234 = add i32 %2233, -1
  %2235 = uitofp i32 %2233 to float
  %2236 = fmul fast float %2235, %2231
  %2237 = fptoui float %2236 to i32
  %2238 = call i32 @dx.op.binary.i32(i32 40, i32 %2237, i32 %2234)  ; UMin(a,b)
  %2239 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %2240 = extractvalue %dx.types.CBufRet.i32 %2239, 2
  %2241 = extractvalue %dx.types.CBufRet.i32 %2239, 3
  %2242 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2217, i32 %2240, i32 %2216)  ; UMad(a,b,c)
  %2243 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2238, i32 %2241, i32 %2242)  ; UMad(a,b,c)
  %2244 = call float @dx.op.binary.f32(i32 35, float %411, float 0.000000e+00)  ; FMax(a,b)
  %2245 = fptoui float %2244 to i32
  %2246 = lshr i32 %2245, 5
  %2247 = call i32 @dx.op.binary.i32(i32 40, i32 %2246, i32 8191)  ; UMin(a,b)
  %2248 = call float @dx.op.unary.f32(i32 7, float %582)  ; Saturate(value)
  %2249 = fcmp fast ogt float %2248, 0.000000e+00
  %2250 = fcmp fast ogt float %601, 0.000000e+00
  %2251 = and i1 %2250, %2249
  br i1 %2251, label %2252, label %2281

; <label>:2252                                    ; preds = %2210
  %2253 = call float @dx.op.dot3.f32(i32 55, float %599, float %600, float %601, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2254 = call float @dx.op.binary.f32(i32 35, float %2253, float -1.000000e+00)  ; FMax(a,b)
  %2255 = call float @dx.op.binary.f32(i32 36, float %2254, float 1.000000e+00)  ; FMin(a,b)
  %2256 = fmul fast float %2255, %2255
  %2257 = fsub fast float 1.000000e+00, %2256
  %2258 = fmul fast float %2257, 0x3FFC6E2300000000
  %2259 = fsub fast float 1.000000e+00, %2258
  %2260 = fcmp fast ogt float %2259, 0.000000e+00
  %2261 = call float @dx.op.unary.f32(i32 24, float %2259)  ; Sqrt(value)
  %2262 = fsub fast float 1.000000e+00, %2261
  %2263 = call float @dx.op.unary.f32(i32 23, float %2262)  ; Log(value)
  %2264 = fmul fast float %2263, 5.000000e+00
  %2265 = call float @dx.op.unary.f32(i32 21, float %2264)  ; Exp(value)
  %2266 = fmul fast float %2265, 0x3FEF591A60000000
  %2267 = fadd fast float %2266, 0x3F94DCB540000000
  %2268 = select i1 %2260, float %2267, float 1.000000e+00
  %2269 = fcmp fast oge float %2268, 1.000000e+00
  %2270 = fmul fast float %2253, 2.000000e+00
  %2271 = fadd fast float %2270, %601
  %2272 = select i1 %2269, float %2271, float %601
  %2273 = fsub fast float %2272, %601
  %2274 = fmul fast float %2273, %2248
  %2275 = fadd fast float %2274, %601
  %2276 = call float @dx.op.dot3.f32(i32 55, float %599, float %600, float %2275, float %599, float %600, float %2275)  ; Dot3(ax,ay,az,bx,by,bz)
  %2277 = call float @dx.op.unary.f32(i32 25, float %2276)  ; Rsqrt(value)
  %2278 = fmul fast float %2277, %599
  %2279 = fmul fast float %2277, %600
  %2280 = fmul fast float %2275, %2277
  br label %2281

; <label>:2281                                    ; preds = %2252, %2210
  %2282 = phi float [ %2278, %2252 ], [ %599, %2210 ]
  %2283 = phi float [ %2279, %2252 ], [ %600, %2210 ]
  %2284 = phi float [ %2280, %2252 ], [ %601, %2210 ]
  %2285 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2286 = extractvalue %dx.types.CBufRet.i32 %2285, 2
  %2287 = add nsw i32 %2286, -1
  %2288 = call i32 @dx.op.binary.i32(i32 37, i32 %2287, i32 0)  ; IMax(a,b)
  %2289 = shl i32 %2247, 2
  %2290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2289, i32 undef)  ; BufferLoad(srv,index,wot)
  %2291 = extractvalue %dx.types.ResRet.i32 %2290, 0
  %2292 = lshr i32 %2291, 16
  %2293 = and i32 %2291, 65535
  %2294 = lshr i32 %2291, 21
  %2295 = lshr i32 %2293, 5
  %2296 = call i32 @dx.op.binary.i32(i32 40, i32 %2295, i32 %2288)  ; UMin(a,b)
  %2297 = icmp ugt i32 %2294, %2296
  br i1 %2297, label %2661, label %2298

; <label>:2298                                    ; preds = %2281
  br label %2299

; <label>:2299                                    ; preds = %2653, %2298
  %2300 = phi float [ %2654, %2653 ], [ 0.000000e+00, %2298 ]
  %2301 = phi float [ %2655, %2653 ], [ 0.000000e+00, %2298 ]
  %2302 = phi float [ %2656, %2653 ], [ 0.000000e+00, %2298 ]
  %2303 = phi float [ %2657, %2653 ], [ 1.000000e+00, %2298 ]
  %2304 = phi i32 [ %2658, %2653 ], [ %2294, %2298 ]
  %2305 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2306 = extractvalue %dx.types.CBufRet.i32 %2305, 2
  %2307 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2243, i32 %2306, i32 %2304)  ; UMad(a,b,c)
  %2308 = shl i32 %2307, 2
  %2309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2310 = extractvalue %dx.types.ResRet.i32 %2309, 0
  %2311 = shl i32 %2304, 5
  %2312 = sub nsw i32 %2292, %2311
  %2313 = call i32 @dx.op.binary.i32(i32 37, i32 %2312, i32 0)  ; IMax(a,b)
  %2314 = call i32 @dx.op.binary.i32(i32 38, i32 %2313, i32 31)  ; IMin(a,b)
  %2315 = sub nsw i32 1, %2292
  %2316 = add nsw i32 %2315, %2293
  %2317 = call i32 @dx.op.binary.i32(i32 37, i32 %2316, i32 0)  ; IMax(a,b)
  %2318 = call i32 @dx.op.binary.i32(i32 38, i32 %2317, i32 32)  ; IMin(a,b)
  %2319 = and i32 %2318, 31
  %2320 = shl i32 -1, %2319
  %2321 = xor i32 %2320, -1
  %2322 = and i32 %2314, 31
  %2323 = shl i32 %2321, %2322
  %2324 = icmp eq i32 %2318, 32
  %2325 = select i1 %2324, i32 -1, i32 %2323
  %2326 = and i32 %2325, %2310
  %2327 = icmp eq i32 %2326, 0
  br i1 %2327, label %2653, label %2328

; <label>:2328                                    ; preds = %2299
  br label %2329

; <label>:2329                                    ; preds = %2436, %2328
  %2330 = phi float [ %2437, %2436 ], [ %2300, %2328 ]
  %2331 = phi float [ %2438, %2436 ], [ %2301, %2328 ]
  %2332 = phi float [ %2439, %2436 ], [ %2302, %2328 ]
  %2333 = phi float [ %2440, %2436 ], [ %2303, %2328 ]
  %2334 = phi i32 [ %2339, %2436 ], [ %2326, %2328 ]
  %2335 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2334)  ; FirstbitLo(value)
  %2336 = add i32 %2335, %2311
  %2337 = and i32 %2335, 31
  %2338 = shl i32 1, %2337
  %2339 = xor i32 %2338, %2334
  %2340 = mul i32 %2336, 72
  %2341 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2340, i32 undef)  ; BufferLoad(srv,index,wot)
  %2342 = extractvalue %dx.types.ResRet.f32 %2341, 0
  %2343 = extractvalue %dx.types.ResRet.f32 %2341, 1
  %2344 = extractvalue %dx.types.ResRet.f32 %2341, 2
  %2345 = add i32 %2340, 12
  %2346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2345, i32 undef)  ; BufferLoad(srv,index,wot)
  %2347 = extractvalue %dx.types.ResRet.i32 %2346, 0
  %2348 = add i32 %2340, 16
  %2349 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2348, i32 undef)  ; BufferLoad(srv,index,wot)
  %2350 = extractvalue %dx.types.ResRet.f32 %2349, 0
  %2351 = extractvalue %dx.types.ResRet.f32 %2349, 1
  %2352 = extractvalue %dx.types.ResRet.f32 %2349, 2
  %2353 = add i32 %2340, 28
  %2354 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2353, i32 undef)  ; BufferLoad(srv,index,wot)
  %2355 = extractvalue %dx.types.ResRet.f32 %2354, 0
  %2356 = add i32 %2340, 32
  %2357 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2356, i32 undef)  ; BufferLoad(srv,index,wot)
  %2358 = extractvalue %dx.types.ResRet.f32 %2357, 0
  %2359 = extractvalue %dx.types.ResRet.f32 %2357, 1
  %2360 = extractvalue %dx.types.ResRet.f32 %2357, 2
  %2361 = extractvalue %dx.types.ResRet.f32 %2357, 3
  %2362 = add i32 %2340, 48
  %2363 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2362, i32 undef)  ; BufferLoad(srv,index,wot)
  %2364 = extractvalue %dx.types.ResRet.f32 %2363, 0
  %2365 = extractvalue %dx.types.ResRet.f32 %2363, 1
  %2366 = add i32 %2340, 56
  %2367 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2366, i32 undef)  ; BufferLoad(srv,index,wot)
  %2368 = extractvalue %dx.types.ResRet.f32 %2367, 0
  %2369 = extractvalue %dx.types.ResRet.f32 %2367, 1
  %2370 = add i32 %2340, 64
  %2371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2370, i32 undef)  ; BufferLoad(srv,index,wot)
  %2372 = extractvalue %dx.types.ResRet.f32 %2371, 0
  %2373 = extractvalue %dx.types.ResRet.f32 %2371, 1
  %2374 = mul i32 %2336, 60
  %2375 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %2374, i32 undef)  ; BufferLoad(srv,index,wot)
  %2376 = extractvalue %dx.types.ResRet.f32 %2375, 0
  %2377 = extractvalue %dx.types.ResRet.f32 %2375, 1
  %2378 = extractvalue %dx.types.ResRet.f32 %2375, 2
  %2379 = add i32 %2374, 12
  %2380 = add i32 %2374, 48
  %2381 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %2380, i32 undef)  ; BufferLoad(srv,index,wot)
  %2382 = extractvalue %dx.types.ResRet.f32 %2381, 0
  %2383 = extractvalue %dx.types.ResRet.f32 %2381, 1
  %2384 = extractvalue %dx.types.ResRet.f32 %2381, 2
  %2385 = and i32 %2347, 32767
  %2386 = bitcast float %2342 to i32
  %2387 = icmp eq i32 %2386, -1
  %2388 = bitcast float %2343 to i32
  %2389 = and i32 %2347, 32768
  %2390 = icmp ne i32 %2389, 0
  %2391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2392 = extractvalue %dx.types.CBufRet.f32 %2391, 0
  %2393 = extractvalue %dx.types.CBufRet.f32 %2391, 1
  %2394 = extractvalue %dx.types.CBufRet.f32 %2391, 2
  %2395 = fsub fast float %2376, %2392
  %2396 = fsub fast float %2377, %2393
  %2397 = fsub fast float %2378, %2394
  %2398 = fsub fast float %445, %2395
  %2399 = fsub fast float %446, %2396
  %2400 = fsub fast float %447, %2397
  %2401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %2379, i32 undef)  ; BufferLoad(srv,index,wot)
  %2402 = extractvalue %dx.types.ResRet.f32 %2401, 0
  %2403 = extractvalue %dx.types.ResRet.f32 %2401, 1
  %2404 = extractvalue %dx.types.ResRet.f32 %2401, 2
  %2405 = call float @dx.op.dot3.f32(i32 55, float %2398, float %2399, float %2400, float %2402, float %2403, float %2404)  ; Dot3(ax,ay,az,bx,by,bz)
  %2406 = add i32 %2374, 24
  %2407 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %2406, i32 undef)  ; BufferLoad(srv,index,wot)
  %2408 = extractvalue %dx.types.ResRet.f32 %2407, 0
  %2409 = extractvalue %dx.types.ResRet.f32 %2407, 1
  %2410 = extractvalue %dx.types.ResRet.f32 %2407, 2
  %2411 = call float @dx.op.dot3.f32(i32 55, float %2398, float %2399, float %2400, float %2408, float %2409, float %2410)  ; Dot3(ax,ay,az,bx,by,bz)
  %2412 = add i32 %2374, 36
  %2413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %2412, i32 undef)  ; BufferLoad(srv,index,wot)
  %2414 = extractvalue %dx.types.ResRet.f32 %2413, 0
  %2415 = extractvalue %dx.types.ResRet.f32 %2413, 1
  %2416 = extractvalue %dx.types.ResRet.f32 %2413, 2
  %2417 = call float @dx.op.dot3.f32(i32 55, float %2398, float %2399, float %2400, float %2414, float %2415, float %2416)  ; Dot3(ax,ay,az,bx,by,bz)
  %2418 = call float @dx.op.unary.f32(i32 6, float %2405)  ; FAbs(value)
  %2419 = call float @dx.op.unary.f32(i32 6, float %2411)  ; FAbs(value)
  %2420 = call float @dx.op.unary.f32(i32 6, float %2417)  ; FAbs(value)
  %2421 = fsub fast float %2382, %2418
  %2422 = fsub fast float %2383, %2419
  %2423 = fsub fast float %2384, %2420
  %2424 = fmul fast float %2421, %2350
  %2425 = fmul fast float %2422, %2351
  %2426 = fmul fast float %2423, %2352
  %2427 = call float @dx.op.binary.f32(i32 36, float %2425, float %2426)  ; FMin(a,b)
  %2428 = call float @dx.op.binary.f32(i32 36, float %2424, float %2427)  ; FMin(a,b)
  %2429 = call float @dx.op.unary.f32(i32 7, float %2428)  ; Saturate(value)
  %2430 = call float @dx.op.binary.f32(i32 36, float %2333, float %2429)  ; FMin(a,b)
  %2431 = uitofp i1 %2390 to float
  %2432 = fadd fast float %2248, 1.000000e+00
  %2433 = fsub fast float %2432, %2431
  %2434 = fmul fast float %2430, %2433
  %2435 = fcmp fast ogt float %2434, 0.000000e+00
  br i1 %2435, label %2442, label %2436

; <label>:2436                                    ; preds = %2584, %2329
  %2437 = phi float [ %2648, %2584 ], [ %2330, %2329 ]
  %2438 = phi float [ %2649, %2584 ], [ %2331, %2329 ]
  %2439 = phi float [ %2650, %2584 ], [ %2332, %2329 ]
  %2440 = phi float [ %2651, %2584 ], [ %2333, %2329 ]
  %2441 = icmp eq i32 %2334, %2338
  br i1 %2441, label %2652, label %2329

; <label>:2442                                    ; preds = %2329
  br i1 %2387, label %2500, label %2443

; <label>:2443                                    ; preds = %2442
  %2444 = fsub fast float -0.000000e+00, %2402
  %2445 = fsub fast float -0.000000e+00, %2403
  %2446 = fsub fast float -0.000000e+00, %2404
  %2447 = call float @dx.op.dot3.f32(i32 55, float %2282, float %2283, float %2284, float %2444, float %2445, float %2446)  ; Dot3(ax,ay,az,bx,by,bz)
  %2448 = fsub fast float -0.000000e+00, %2447
  %2449 = call float @dx.op.dot3.f32(i32 55, float %2398, float %2399, float %2400, float %2444, float %2445, float %2446)  ; Dot3(ax,ay,az,bx,by,bz)
  %2450 = fadd fast float %2449, %2365
  %2451 = fadd fast float %2364, %2449
  %2452 = fsub fast float -0.000000e+00, %2451
  %2453 = fcmp ogt float %2447, -0.000000e+00
  %2454 = select i1 %2453, float %2452, float %2450
  %2455 = call float @dx.op.unary.f32(i32 6, float %2448)  ; FAbs(value)
  %2456 = fdiv fast float 1.000000e+00, %2455
  %2457 = fmul fast float %2454, %2456
  %2458 = call float @dx.op.binary.f32(i32 35, float %2457, float 0.000000e+00)  ; FMax(a,b)
  %2459 = fsub fast float -0.000000e+00, %2408
  %2460 = fsub fast float -0.000000e+00, %2409
  %2461 = fsub fast float -0.000000e+00, %2410
  %2462 = call float @dx.op.dot3.f32(i32 55, float %2282, float %2283, float %2284, float %2459, float %2460, float %2461)  ; Dot3(ax,ay,az,bx,by,bz)
  %2463 = fsub fast float -0.000000e+00, %2462
  %2464 = call float @dx.op.dot3.f32(i32 55, float %2398, float %2399, float %2400, float %2459, float %2460, float %2461)  ; Dot3(ax,ay,az,bx,by,bz)
  %2465 = fadd fast float %2464, %2369
  %2466 = fadd fast float %2368, %2464
  %2467 = fsub fast float -0.000000e+00, %2466
  %2468 = fcmp ogt float %2462, -0.000000e+00
  %2469 = select i1 %2468, float %2467, float %2465
  %2470 = call float @dx.op.unary.f32(i32 6, float %2463)  ; FAbs(value)
  %2471 = fdiv fast float 1.000000e+00, %2470
  %2472 = fmul fast float %2469, %2471
  %2473 = call float @dx.op.binary.f32(i32 35, float %2472, float 0.000000e+00)  ; FMax(a,b)
  %2474 = fsub fast float -0.000000e+00, %2414
  %2475 = fsub fast float -0.000000e+00, %2415
  %2476 = fsub fast float -0.000000e+00, %2416
  %2477 = call float @dx.op.dot3.f32(i32 55, float %2282, float %2283, float %2284, float %2474, float %2475, float %2476)  ; Dot3(ax,ay,az,bx,by,bz)
  %2478 = fsub fast float -0.000000e+00, %2477
  %2479 = call float @dx.op.dot3.f32(i32 55, float %2398, float %2399, float %2400, float %2474, float %2475, float %2476)  ; Dot3(ax,ay,az,bx,by,bz)
  %2480 = fadd fast float %2479, %2373
  %2481 = fadd fast float %2372, %2479
  %2482 = fsub fast float -0.000000e+00, %2481
  %2483 = fcmp ogt float %2477, -0.000000e+00
  %2484 = select i1 %2483, float %2482, float %2480
  %2485 = call float @dx.op.unary.f32(i32 6, float %2478)  ; FAbs(value)
  %2486 = fdiv fast float 1.000000e+00, %2485
  %2487 = fmul fast float %2484, %2486
  %2488 = call float @dx.op.binary.f32(i32 35, float %2487, float 0.000000e+00)  ; FMax(a,b)
  %2489 = call float @dx.op.binary.f32(i32 36, float %2473, float %2488)  ; FMin(a,b)
  %2490 = call float @dx.op.binary.f32(i32 36, float %2458, float %2489)  ; FMin(a,b)
  %2491 = fmul fast float %2490, %2282
  %2492 = fmul fast float %2490, %2283
  %2493 = fmul fast float %2490, %2284
  %2494 = fadd fast float %2491, %445
  %2495 = fadd fast float %2492, %446
  %2496 = fadd fast float %2493, %447
  %2497 = fsub fast float %2494, %2342
  %2498 = fsub fast float %2495, %2343
  %2499 = fsub fast float %2496, %2344
  br label %2507

; <label>:2500                                    ; preds = %2442
  %2501 = fmul fast float %2282, 8.096000e+03
  %2502 = fmul fast float %2283, 8.096000e+03
  %2503 = fmul fast float %2284, 8.096000e+03
  %2504 = fadd fast float %2501, %445
  %2505 = fadd fast float %2502, %446
  %2506 = fadd fast float %2503, %447
  br label %2507

; <label>:2507                                    ; preds = %2500, %2443
  %2508 = phi float [ %2282, %2500 ], [ %2497, %2443 ]
  %2509 = phi float [ %2283, %2500 ], [ %2498, %2443 ]
  %2510 = phi float [ %2284, %2500 ], [ %2499, %2443 ]
  %2511 = phi float [ %2504, %2500 ], [ %2494, %2443 ]
  %2512 = phi float [ %2505, %2500 ], [ %2495, %2443 ]
  %2513 = phi float [ %2506, %2500 ], [ %2496, %2443 ]
  %2514 = fcmp fast olt float %2361, 1.000000e+00
  br i1 %2514, label %2515, label %2546, !dx.controlflow.hints !126

; <label>:2515                                    ; preds = %2507
  %2516 = fmul fast float %2510, %2359
  %2517 = fmul fast float %2509, %2360
  %2518 = fsub fast float %2516, %2517
  %2519 = fmul fast float %2508, %2360
  %2520 = fmul fast float %2510, %2358
  %2521 = fsub fast float %2519, %2520
  %2522 = fmul fast float %2509, %2358
  %2523 = fmul fast float %2508, %2359
  %2524 = fsub fast float %2522, %2523
  %2525 = fmul fast float %2518, 2.000000e+00
  %2526 = fmul fast float %2521, 2.000000e+00
  %2527 = fmul fast float %2524, 2.000000e+00
  %2528 = fmul fast float %2525, %2361
  %2529 = fmul fast float %2526, %2361
  %2530 = fmul fast float %2527, %2361
  %2531 = fmul fast float %2527, %2359
  %2532 = fmul fast float %2526, %2360
  %2533 = fmul fast float %2525, %2360
  %2534 = fmul fast float %2527, %2358
  %2535 = fmul fast float %2526, %2358
  %2536 = fmul fast float %2525, %2359
  %2537 = fadd fast float %2531, %2508
  %2538 = fadd fast float %2537, %2528
  %2539 = fsub fast float %2538, %2532
  %2540 = fsub fast float %2509, %2534
  %2541 = fadd fast float %2540, %2529
  %2542 = fadd fast float %2541, %2533
  %2543 = fadd fast float %2530, %2510
  %2544 = fsub fast float %2543, %2536
  %2545 = fadd fast float %2544, %2535
  br label %2546

; <label>:2546                                    ; preds = %2515, %2507
  %2547 = phi float [ %2539, %2515 ], [ %2508, %2507 ]
  %2548 = phi float [ %2542, %2515 ], [ %2509, %2507 ]
  %2549 = phi float [ %2545, %2515 ], [ %2510, %2507 ]
  br i1 %2387, label %2581, label %2550

; <label>:2550                                    ; preds = %2546
  %2551 = fmul fast float %379, 0x400187C840000000
  %2552 = fadd fast float %2551, 0xC00EFC2120000000
  %2553 = fmul fast float %2552, %379
  %2554 = fadd fast float %2553, 0x3FE5D16340000000
  %2555 = fmul fast float %2554, %379
  %2556 = fadd fast float %2555, 1.000000e+00
  %2557 = call float @dx.op.unary.f32(i32 7, float %2556)  ; Saturate(value)
  %2558 = fsub fast float %2511, %445
  %2559 = fsub fast float %2512, %446
  %2560 = fsub fast float %2513, %447
  %2561 = fsub fast float %2511, %2342
  %2562 = fsub fast float %2512, %2343
  %2563 = fsub fast float %2513, %2344
  %2564 = call float @dx.op.dot3.f32(i32 55, float %2558, float %2559, float %2560, float %2558, float %2559, float %2560)  ; Dot3(ax,ay,az,bx,by,bz)
  %2565 = call float @dx.op.dot3.f32(i32 55, float %2561, float %2562, float %2563, float %2561, float %2562, float %2563)  ; Dot3(ax,ay,az,bx,by,bz)
  %2566 = fadd fast float %2565, 0x3EE4F8B580000000
  %2567 = fdiv fast float %2564, %2566
  %2568 = bitcast float %2567 to i32
  %2569 = ashr i32 %2568, 1
  %2570 = add nsw i32 %2569, 532487669
  %2571 = bitcast i32 %2570 to float
  %2572 = fmul fast float %2571, %2557
  %2573 = call float @dx.op.unary.f32(i32 7, float %2572)  ; Saturate(value)
  %2574 = fmul fast float %2573, 0x4009981AE0000000
  %2575 = fsub fast float 0x40111BBD80000000, %2574
  %2576 = fmul fast float %2575, %2573
  %2577 = fadd fast float %2576, 0xC0009F6020000000
  %2578 = fmul fast float %2577, %2573
  %2579 = fadd fast float %2578, 1.000000e+00
  %2580 = call float @dx.op.unary.f32(i32 7, float %2579)  ; Saturate(value)
  br label %2584

; <label>:2581                                    ; preds = %2546
  %2582 = icmp ne i32 %2388, -1
  %2583 = zext i1 %2582 to i32
  br label %2584

; <label>:2584                                    ; preds = %2581, %2550
  %2585 = phi float [ %379, %2581 ], [ %2580, %2550 ]
  %2586 = phi i32 [ %2583, %2581 ], [ 0, %2550 ]
  %2587 = fmul float %2585, 5.000000e+00
  %2588 = fsub float 5.000000e+00, %2587
  %2589 = icmp ne i32 %2586, 0
  %2590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %2591 = extractvalue %dx.types.CBufRet.f32 %2590, 3
  %2592 = fadd fast float %2591, %2588
  %2593 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2592)  ; FMax(a,b)
  %2594 = call float @dx.op.unary.f32(i32 6, float %2547)  ; FAbs(value)
  %2595 = call float @dx.op.unary.f32(i32 6, float %2548)  ; FAbs(value)
  %2596 = fadd fast float %2595, %2594
  %2597 = call float @dx.op.unary.f32(i32 6, float %2549)  ; FAbs(value)
  %2598 = fadd fast float %2596, %2597
  %2599 = fcmp fast oeq float %2598, 0.000000e+00
  %2600 = fdiv fast float 1.000000e+00, %2598
  %2601 = select i1 %2599, float 1.000000e+00, float %2600
  %2602 = fmul fast float %2601, %2547
  %2603 = fmul fast float %2601, %2548
  %2604 = call float @dx.op.unary.f32(i32 6, float %2603)  ; FAbs(value)
  %2605 = call float @dx.op.unary.f32(i32 6, float %2602)  ; FAbs(value)
  %2606 = fsub fast float 1.000000e+00, %2604
  %2607 = fsub fast float 1.000000e+00, %2605
  %2608 = fcmp fast oge float %2602, 0.000000e+00
  %2609 = fcmp fast oge float %2603, 0.000000e+00
  %2610 = select i1 %2608, float 1.000000e+00, float -1.000000e+00
  %2611 = select i1 %2609, float 1.000000e+00, float -1.000000e+00
  %2612 = fcmp fast ole float %2549, 0.000000e+00
  %2613 = fmul fast float %2610, %2606
  %2614 = fmul fast float %2611, %2607
  %2615 = select i1 %2612, float %2613, float %2602
  %2616 = select i1 %2612, float %2614, float %2603
  %2617 = fmul fast float %2615, 5.000000e-01
  %2618 = fmul fast float %2616, 5.000000e-01
  %2619 = fadd fast float %2617, 5.000000e-01
  %2620 = fadd fast float %2618, 5.000000e-01
  %2621 = uitofp i32 %2385 to float
  %2622 = call float @dx.op.binary.f32(i32 36, float %2593, float 3.000000e+00)  ; FMin(a,b)
  %2623 = fadd fast float %2622, 2.000000e+00
  %2624 = call float @dx.op.unary.f32(i32 21, float %2623)  ; Exp(value)
  %2625 = extractvalue %dx.types.CBufRet.f32 %2590, 1
  %2626 = fmul fast float %2625, %2624
  %2627 = fmul fast float %2626, 2.000000e+00
  %2628 = fsub fast float 1.000000e+00, %2627
  %2629 = fmul fast float %2619, %2628
  %2630 = fmul fast float %2620, %2628
  %2631 = fadd fast float %2629, %2626
  %2632 = fadd fast float %2630, %2626
  %2633 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %43, float %2631, float %2632, float %2621, float undef, i32 0, i32 0, i32 undef, float %2593)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2634 = extractvalue %dx.types.ResRet.f32 %2633, 0
  %2635 = extractvalue %dx.types.ResRet.f32 %2633, 1
  %2636 = extractvalue %dx.types.ResRet.f32 %2633, 2
  %2637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2638 = extractvalue %dx.types.CBufRet.f32 %2637, 3
  %2639 = fmul fast float %2638, %2355
  %2640 = call float @dx.op.binary.f32(i32 36, float %2119, float %2639)  ; FMin(a,b)
  %2641 = select i1 %2589, float %2640, float %2639
  %2642 = fmul fast float %2634, %2434
  %2643 = fmul fast float %2642, %2641
  %2644 = fmul fast float %2635, %2434
  %2645 = fmul fast float %2644, %2641
  %2646 = fmul fast float %2636, %2434
  %2647 = fmul fast float %2646, %2641
  %2648 = fadd fast float %2643, %2330
  %2649 = fadd fast float %2645, %2331
  %2650 = fadd fast float %2647, %2332
  %2651 = fsub fast float %2333, %2434
  br label %2436

; <label>:2652                                    ; preds = %2436
  br label %2653

; <label>:2653                                    ; preds = %2652, %2299
  %2654 = phi float [ %2300, %2299 ], [ %2437, %2652 ]
  %2655 = phi float [ %2301, %2299 ], [ %2438, %2652 ]
  %2656 = phi float [ %2302, %2299 ], [ %2439, %2652 ]
  %2657 = phi float [ %2303, %2299 ], [ %2440, %2652 ]
  %2658 = add i32 %2304, 1
  %2659 = icmp ugt i32 %2658, %2296
  br i1 %2659, label %2660, label %2299, !llvm.loop !127

; <label>:2660                                    ; preds = %2653
  br label %2661

; <label>:2661                                    ; preds = %2660, %2281
  %2662 = phi float [ 0.000000e+00, %2281 ], [ %2654, %2660 ]
  %2663 = phi float [ 0.000000e+00, %2281 ], [ %2655, %2660 ]
  %2664 = phi float [ 0.000000e+00, %2281 ], [ %2656, %2660 ]
  %2665 = call float @dx.op.dot3.f32(i32 55, float %2662, float %2663, float %2664, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2666 = select i1 %172, float 0.000000e+00, float %2662
  %2667 = select i1 %172, float %2665, float %2663
  %2668 = select i1 %172, float 0.000000e+00, float %2664
  %2669 = fcmp fast olt float %2208, 0.000000e+00
  %2670 = call float @dx.op.unary.f32(i32 6, float %2208)  ; FAbs(value)
  %2671 = fmul fast float %2670, %2179
  %2672 = fmul fast float %2670, %2180
  %2673 = fmul fast float %2670, %2181
  %2674 = select i1 %2669, float %2179, float %2671
  %2675 = select i1 %2669, float %2180, float %2672
  %2676 = select i1 %2669, float %2181, float %2673
  %2677 = fsub fast float 1.000000e+00, %2670
  %2678 = call float @dx.op.unary.f32(i32 7, float %2677)  ; Saturate(value)
  %2679 = fmul fast float %2678, %2666
  %2680 = fmul fast float %2678, %2667
  %2681 = fmul fast float %2678, %2668
  %2682 = fadd fast float %2674, %2679
  %2683 = fadd fast float %2675, %2680
  %2684 = fadd fast float %2676, %2681
  br label %2685

; <label>:2685                                    ; preds = %2661, %2109
  %2686 = phi float [ %2179, %2109 ], [ %2682, %2661 ]
  %2687 = phi float [ %2180, %2109 ], [ %2683, %2661 ]
  %2688 = phi float [ %2181, %2109 ], [ %2684, %2661 ]
  %2689 = fmul fast float %2686, %2192
  %2690 = fmul fast float %2687, %2193
  %2691 = fmul fast float %2688, %2194
  %2692 = fmul fast float %2175, %386
  %2693 = fmul fast float %2176, %387
  %2694 = fmul fast float %2177, %388
  %2695 = fadd fast float %2692, %2171
  %2696 = fmul fast float %2695, %2197
  %2697 = fadd fast float %2693, %2172
  %2698 = fmul fast float %2697, %2197
  %2699 = fadd fast float %2694, %2173
  %2700 = fmul fast float %2699, %2197
  %2701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2702 = extractvalue %dx.types.CBufRet.f32 %2701, 3
  %2703 = fcmp fast oeq float %2702, 0.000000e+00
  br i1 %2703, label %4503, label %2704

; <label>:2704                                    ; preds = %2685
  %2705 = extractvalue %dx.types.CBufRet.f32 %2701, 0
  %2706 = extractvalue %dx.types.CBufRet.f32 %2701, 1
  %2707 = extractvalue %dx.types.CBufRet.f32 %2701, 2
  %2708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2709 = extractvalue %dx.types.CBufRet.f32 %2708, 0
  %2710 = extractvalue %dx.types.CBufRet.f32 %2708, 1
  %2711 = extractvalue %dx.types.CBufRet.f32 %2708, 2
  %2712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2713 = extractvalue %dx.types.CBufRet.f32 %2712, 0
  %2714 = extractvalue %dx.types.CBufRet.f32 %2712, 1
  %2715 = call float @dx.op.dot3.f32(i32 55, float %2709, float %2710, float %2711, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2716 = select i1 %172, float %2713, float %2709
  %2717 = select i1 %172, float %2715, float %2710
  %2718 = select i1 %172, float %2714, float %2711
  %2719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2720 = extractvalue %dx.types.CBufRet.f32 %2719, 2
  %2721 = fmul fast float %2720, %367
  %2722 = fmul fast float %2720, %368
  %2723 = fmul fast float %2720, %369
  %2724 = fadd fast float %2721, %445
  %2725 = fadd fast float %2722, %446
  %2726 = fadd fast float %2723, %447
  %2727 = fcmp fast olt float %2702, 0.000000e+00
  br i1 %2727, label %3823, label %2728

; <label>:2728                                    ; preds = %2704
  %2729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2730 = extractvalue %dx.types.CBufRet.f32 %2729, 0
  %2731 = extractvalue %dx.types.CBufRet.f32 %2729, 1
  %2732 = extractvalue %dx.types.CBufRet.f32 %2729, 2
  %2733 = extractvalue %dx.types.CBufRet.f32 %2729, 3
  %2734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2735 = extractvalue %dx.types.CBufRet.f32 %2734, 0
  %2736 = extractvalue %dx.types.CBufRet.f32 %2734, 1
  %2737 = extractvalue %dx.types.CBufRet.f32 %2734, 2
  %2738 = extractvalue %dx.types.CBufRet.f32 %2734, 3
  %2739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2740 = extractvalue %dx.types.CBufRet.f32 %2739, 0
  %2741 = extractvalue %dx.types.CBufRet.f32 %2739, 1
  %2742 = extractvalue %dx.types.CBufRet.f32 %2739, 2
  %2743 = extractvalue %dx.types.CBufRet.f32 %2739, 3
  %2744 = fmul fast float %2730, %2724
  %2745 = call float @dx.op.tertiary.f32(i32 46, float %2725, float %2731, float %2744)  ; FMad(a,b,c)
  %2746 = call float @dx.op.tertiary.f32(i32 46, float %2726, float %2732, float %2745)  ; FMad(a,b,c)
  %2747 = fadd fast float %2746, %2733
  %2748 = fmul fast float %2735, %2724
  %2749 = call float @dx.op.tertiary.f32(i32 46, float %2725, float %2736, float %2748)  ; FMad(a,b,c)
  %2750 = call float @dx.op.tertiary.f32(i32 46, float %2726, float %2737, float %2749)  ; FMad(a,b,c)
  %2751 = fadd fast float %2750, %2738
  %2752 = fmul fast float %2740, %2724
  %2753 = call float @dx.op.tertiary.f32(i32 46, float %2725, float %2741, float %2752)  ; FMad(a,b,c)
  %2754 = call float @dx.op.tertiary.f32(i32 46, float %2726, float %2742, float %2753)  ; FMad(a,b,c)
  %2755 = fadd fast float %2754, %2743
  %2756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2757 = extractvalue %dx.types.CBufRet.f32 %2756, 0
  %2758 = extractvalue %dx.types.CBufRet.f32 %2756, 1
  %2759 = extractvalue %dx.types.CBufRet.f32 %2756, 3
  %2760 = fmul fast float %2759, %2747
  %2761 = fmul fast float %2759, %2751
  %2762 = fadd fast float %2760, %2757
  %2763 = fadd fast float %2761, %2758
  %2764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2765 = extractvalue %dx.types.CBufRet.f32 %2764, 0
  %2766 = extractvalue %dx.types.CBufRet.f32 %2764, 1
  %2767 = extractvalue %dx.types.CBufRet.f32 %2764, 3
  %2768 = fmul fast float %2767, %2747
  %2769 = fmul fast float %2767, %2751
  %2770 = fadd fast float %2768, %2765
  %2771 = fadd fast float %2769, %2766
  %2772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2773 = extractvalue %dx.types.CBufRet.f32 %2772, 1
  %2774 = fsub fast float %2773, %2755
  %2775 = extractvalue %dx.types.CBufRet.f32 %2772, 2
  %2776 = fmul fast float %2774, %2775
  %2777 = fsub fast float 1.000000e+00, %2776
  %2778 = call float @dx.op.unary.f32(i32 7, float %2777)  ; Saturate(value)
  %2779 = extractvalue %dx.types.CBufRet.f32 %2764, 2
  %2780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2781 = extractvalue %dx.types.CBufRet.f32 %2780, 2
  %2782 = fadd fast float %2781, %2779
  %2783 = fcmp fast ogt float %2782, 0.000000e+00
  br i1 %2783, label %2784, label %2808

; <label>:2784                                    ; preds = %2728
  %2785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %2786 = extractvalue %dx.types.CBufRet.f32 %2785, 0
  %2787 = extractvalue %dx.types.CBufRet.f32 %2785, 1
  %2788 = fsub fast float %2770, %2786
  %2789 = fsub fast float %2771, %2787
  %2790 = fcmp fast olt float %2788, 0.000000e+00
  %2791 = fcmp fast olt float %2789, 0.000000e+00
  %2792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %2793 = extractvalue %dx.types.CBufRet.f32 %2792, 0
  %2794 = extractvalue %dx.types.CBufRet.f32 %2792, 1
  %2795 = extractvalue %dx.types.CBufRet.f32 %2792, 2
  %2796 = extractvalue %dx.types.CBufRet.f32 %2792, 3
  %2797 = select i1 %2790, float %2793, float %2795
  %2798 = select i1 %2791, float %2794, float %2796
  %2799 = fmul fast float %2797, %2788
  %2800 = fmul fast float %2798, %2789
  %2801 = call float @dx.op.unary.f32(i32 6, float %2799)  ; FAbs(value)
  %2802 = call float @dx.op.unary.f32(i32 6, float %2800)  ; FAbs(value)
  %2803 = extractvalue %dx.types.CBufRet.f32 %2719, 0
  %2804 = call float @dx.op.binary.f32(i32 35, float %2801, float %2802)  ; FMax(a,b)
  %2805 = fsub fast float %2803, %2804
  %2806 = call float @dx.op.unary.f32(i32 7, float %2805)  ; Saturate(value)
  %2807 = fmul fast float %2806, %2778
  br label %2808

; <label>:2808                                    ; preds = %2784, %2728
  %2809 = phi float [ %2807, %2784 ], [ 0.000000e+00, %2728 ]
  %2810 = extractvalue %dx.types.CBufRet.f32 %2756, 2
  %2811 = extractvalue %dx.types.CBufRet.f32 %2780, 1
  %2812 = fadd fast float %2811, %2810
  %2813 = fcmp fast ogt float %2812, 0.000000e+00
  %2814 = extractvalue %dx.types.CBufRet.f32 %2719, 0
  br i1 %2813, label %2815, label %2838

; <label>:2815                                    ; preds = %2808
  %2816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2817 = extractvalue %dx.types.CBufRet.f32 %2816, 0
  %2818 = extractvalue %dx.types.CBufRet.f32 %2816, 1
  %2819 = fsub fast float %2762, %2817
  %2820 = fsub fast float %2763, %2818
  %2821 = fcmp fast olt float %2819, 0.000000e+00
  %2822 = fcmp fast olt float %2820, 0.000000e+00
  %2823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2824 = extractvalue %dx.types.CBufRet.f32 %2823, 0
  %2825 = extractvalue %dx.types.CBufRet.f32 %2823, 1
  %2826 = extractvalue %dx.types.CBufRet.f32 %2823, 2
  %2827 = extractvalue %dx.types.CBufRet.f32 %2823, 3
  %2828 = select i1 %2821, float %2824, float %2826
  %2829 = select i1 %2822, float %2825, float %2827
  %2830 = fmul fast float %2828, %2819
  %2831 = fmul fast float %2829, %2820
  %2832 = call float @dx.op.unary.f32(i32 6, float %2830)  ; FAbs(value)
  %2833 = call float @dx.op.unary.f32(i32 6, float %2831)  ; FAbs(value)
  %2834 = call float @dx.op.binary.f32(i32 35, float %2832, float %2833)  ; FMax(a,b)
  %2835 = fsub fast float %2814, %2834
  %2836 = call float @dx.op.unary.f32(i32 7, float %2835)  ; Saturate(value)
  %2837 = fmul fast float %2836, %2778
  br label %2838

; <label>:2838                                    ; preds = %2815, %2808
  %2839 = phi float [ %2837, %2815 ], [ 0.000000e+00, %2808 ]
  %2840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %2841 = extractvalue %dx.types.CBufRet.f32 %2840, 1
  %2842 = call float @dx.op.unary.f32(i32 7, float %2841)  ; Saturate(value)
  %2843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %2844 = extractvalue %dx.types.CBufRet.f32 %2843, 0
  %2845 = extractvalue %dx.types.CBufRet.f32 %2843, 1
  %2846 = fsub fast float %2747, %2844
  %2847 = fsub fast float %2751, %2845
  %2848 = fcmp fast olt float %2846, 0.000000e+00
  %2849 = fcmp fast olt float %2847, 0.000000e+00
  %2850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %2851 = extractvalue %dx.types.CBufRet.f32 %2850, 0
  %2852 = extractvalue %dx.types.CBufRet.f32 %2850, 1
  %2853 = extractvalue %dx.types.CBufRet.f32 %2850, 2
  %2854 = extractvalue %dx.types.CBufRet.f32 %2850, 3
  %2855 = select i1 %2848, float %2851, float %2853
  %2856 = select i1 %2849, float %2852, float %2854
  %2857 = fmul fast float %2855, %2846
  %2858 = fmul fast float %2856, %2847
  %2859 = call float @dx.op.unary.f32(i32 6, float %2857)  ; FAbs(value)
  %2860 = call float @dx.op.unary.f32(i32 6, float %2858)  ; FAbs(value)
  %2861 = call float @dx.op.binary.f32(i32 35, float %2859, float %2860)  ; FMax(a,b)
  %2862 = fsub fast float %2814, %2861
  %2863 = call float @dx.op.unary.f32(i32 7, float %2862)  ; Saturate(value)
  %2864 = call float @dx.op.binary.f32(i32 36, float %2863, float %2842)  ; FMin(a,b)
  %2865 = fmul fast float %2864, %2778
  %2866 = fsub fast float %2839, %2865
  %2867 = fsub fast float %2809, %2839
  %2868 = fsub fast float %2867, %2865
  %2869 = call float @dx.op.binary.f32(i32 35, float %2839, float %2809)  ; FMax(a,b)
  %2870 = call float @dx.op.binary.f32(i32 35, float %2865, float %2869)  ; FMax(a,b)
  %2871 = fcmp fast olt float %2870, 1.000000e+00
  br i1 %2871, label %2872, label %3270, !dx.controlflow.hints !129

; <label>:2872                                    ; preds = %2838
  %2873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2874 = extractvalue %dx.types.CBufRet.f32 %2873, 0
  %2875 = fcmp fast une float %2874, 0.000000e+00
  br i1 %2875, label %2876, label %3270, !dx.controlflow.hints !130

; <label>:2876                                    ; preds = %2872
  %2877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2878 = extractvalue %dx.types.CBufRet.f32 %2877, 0
  %2879 = extractvalue %dx.types.CBufRet.f32 %2877, 1
  %2880 = extractvalue %dx.types.CBufRet.f32 %2877, 2
  %2881 = extractvalue %dx.types.CBufRet.f32 %2877, 3
  %2882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2883 = extractvalue %dx.types.CBufRet.f32 %2882, 0
  %2884 = extractvalue %dx.types.CBufRet.f32 %2882, 1
  %2885 = extractvalue %dx.types.CBufRet.f32 %2882, 2
  %2886 = extractvalue %dx.types.CBufRet.f32 %2882, 3
  %2887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2888 = extractvalue %dx.types.CBufRet.f32 %2887, 0
  %2889 = extractvalue %dx.types.CBufRet.f32 %2887, 1
  %2890 = extractvalue %dx.types.CBufRet.f32 %2887, 2
  %2891 = extractvalue %dx.types.CBufRet.f32 %2887, 3
  %2892 = fmul fast float %2878, %2724
  %2893 = call float @dx.op.tertiary.f32(i32 46, float %2725, float %2879, float %2892)  ; FMad(a,b,c)
  %2894 = call float @dx.op.tertiary.f32(i32 46, float %2726, float %2880, float %2893)  ; FMad(a,b,c)
  %2895 = fadd fast float %2894, %2881
  %2896 = fmul fast float %2883, %2724
  %2897 = call float @dx.op.tertiary.f32(i32 46, float %2725, float %2884, float %2896)  ; FMad(a,b,c)
  %2898 = call float @dx.op.tertiary.f32(i32 46, float %2726, float %2885, float %2897)  ; FMad(a,b,c)
  %2899 = fadd fast float %2898, %2886
  %2900 = fmul fast float %2888, %2724
  %2901 = call float @dx.op.tertiary.f32(i32 46, float %2725, float %2889, float %2900)  ; FMad(a,b,c)
  %2902 = call float @dx.op.tertiary.f32(i32 46, float %2726, float %2890, float %2901)  ; FMad(a,b,c)
  %2903 = fadd fast float %2902, %2891
  %2904 = fcmp fast oge float %2895, 1.000000e+00
  %2905 = fcmp fast oge float %2899, 1.000000e+00
  %2906 = or i1 %2904, %2905
  %2907 = fcmp fast olt float %2895, 0.000000e+00
  %2908 = fcmp fast olt float %2899, 0.000000e+00
  %2909 = or i1 %2907, %2908
  %2910 = or i1 %2906, %2909
  br i1 %2910, label %3270, label %2911, !dx.controlflow.hints !131

; <label>:2911                                    ; preds = %2876
  %2912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2913 = extractvalue %dx.types.CBufRet.f32 %2912, 0
  %2914 = extractvalue %dx.types.CBufRet.f32 %2912, 1
  %2915 = extractvalue %dx.types.CBufRet.f32 %2912, 2
  %2916 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2917 = extractvalue %dx.types.CBufRet.i32 %2916, 2
  %2918 = uitofp i32 %2917 to float
  %2919 = extractvalue %dx.types.CBufRet.i32 %2916, 3
  %2920 = uitofp i32 %2919 to float
  %2921 = extractvalue %dx.types.CBufRet.f32 %2912, 3
  %2922 = fmul fast float %2921, 2.000000e+00
  %2923 = fsub fast float %2895, %2913
  %2924 = fsub fast float %2899, %2914
  %2925 = fmul fast float %2922, %2923
  %2926 = fmul fast float %2922, %2924
  %2927 = fdiv fast float 1.000000e+00, %2707
  %2928 = fmul fast float %2926, %2927
  %2929 = call float @dx.op.unary.f32(i32 6, float %2928)  ; FAbs(value)
  %2930 = fmul fast float %2915, %2726
  %2931 = fmul fast float %2930, %2922
  %2932 = call float @dx.op.unary.f32(i32 6, float %2931)  ; FAbs(value)
  %2933 = call float @dx.op.unary.f32(i32 6, float %2925)  ; FAbs(value)
  %2934 = call float @dx.op.binary.f32(i32 35, float %2932, float %2929)  ; FMax(a,b)
  %2935 = call float @dx.op.binary.f32(i32 35, float %2933, float %2934)  ; FMax(a,b)
  %2936 = fmul fast float %2935, 2.000000e+00
  %2937 = call float @dx.op.unary.f32(i32 23, float %2936)  ; Log(value)
  %2938 = call float @dx.op.binary.f32(i32 35, float %2937, float %2918)  ; FMax(a,b)
  %2939 = call float @dx.op.unary.f32(i32 22, float %2938)  ; Frc(value)
  %2940 = fadd fast float %2939, 0xBFEA666660000000
  %2941 = fmul fast float %2940, 8.000000e+00
  %2942 = call float @dx.op.unary.f32(i32 7, float %2941)  ; Saturate(value)
  %2943 = call float @dx.op.unary.f32(i32 27, float %2938)  ; Round_ni(value)
  %2944 = fadd fast float %2943, %2942
  %2945 = call float @dx.op.binary.f32(i32 36, float %2944, float %2920)  ; FMin(a,b)
  %2946 = call float @dx.op.unary.f32(i32 27, float %2945)  ; Round_ni(value)
  %2947 = fsub fast float -0.000000e+00, %2946
  %2948 = call float @dx.op.unary.f32(i32 21, float %2947)  ; Exp(value)
  %2949 = fmul fast float %2948, %2922
  %2950 = fmul fast float %2949, %2895
  %2951 = fmul fast float %2949, %2899
  %2952 = fmul fast float %2950, 2.500000e-01
  %2953 = fmul fast float %2951, 2.500000e-01
  %2954 = fadd fast float %2952, 5.000000e-01
  %2955 = fadd fast float %2953, 5.000000e-01
  %2956 = fsub fast float %2920, %2918
  %2957 = fptoui float %2956 to i32
  %2958 = add i32 %2957, 320
  %2959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %2958)  ; CBufferLoadLegacy(handle,regIndex)
  %2960 = extractvalue %dx.types.CBufRet.f32 %2959, 0
  %2961 = extractvalue %dx.types.CBufRet.f32 %2959, 1
  %2962 = fcmp fast une float %2945, %2920
  %2963 = fsub fast float %2895, %2960
  %2964 = fsub fast float %2899, %2961
  %2965 = call float @dx.op.unary.f32(i32 6, float %2963)  ; FAbs(value)
  %2966 = call float @dx.op.unary.f32(i32 6, float %2964)  ; FAbs(value)
  %2967 = fmul fast float %2965, %2949
  %2968 = fmul fast float %2966, %2949
  %2969 = fcmp fast olt float %2967, 1.000000e+00
  %2970 = fcmp fast olt float %2968, 1.000000e+00
  %2971 = and i1 %2969, %2970
  %2972 = or i1 %2962, %2971
  br i1 %2972, label %2973, label %3270, !dx.controlflow.hints !132

; <label>:2973                                    ; preds = %2911
  %2974 = fmul fast float %2951, 5.000000e-01
  %2975 = fmul fast float %2950, 5.000000e-01
  %2976 = fadd fast float %2974, 5.000000e-01
  %2977 = fadd fast float %2975, 5.000000e-01
  %2978 = sitofp i32 %2917 to float
  %2979 = fsub fast float %2945, %2978
  %2980 = call float @dx.op.unary.f32(i32 27, float %2979)  ; Round_ni(value)
  %2981 = call float @dx.op.unary.f32(i32 22, float %2945)  ; Frc(value)
  %2982 = call float @dx.op.unary.f32(i32 22, float %2977)  ; Frc(value)
  %2983 = call float @dx.op.unary.f32(i32 22, float %2976)  ; Frc(value)
  %2984 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %44, float %2982, float %2983, float %2980, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2985 = extractvalue %dx.types.ResRet.f32 %2984, 0
  %2986 = extractvalue %dx.types.ResRet.f32 %2984, 1
  %2987 = extractvalue %dx.types.ResRet.f32 %2984, 2
  %2988 = extractvalue %dx.types.ResRet.f32 %2984, 3
  %2989 = fcmp fast ogt float %2981, 0.000000e+00
  br i1 %2989, label %2990, label %3011, !dx.controlflow.hints !133

; <label>:2990                                    ; preds = %2973
  %2991 = fadd fast float %2980, 1.000000e+00
  %2992 = call float @dx.op.unary.f32(i32 22, float %2954)  ; Frc(value)
  %2993 = call float @dx.op.unary.f32(i32 22, float %2955)  ; Frc(value)
  %2994 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %44, float %2992, float %2993, float %2991, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2995 = extractvalue %dx.types.ResRet.f32 %2994, 0
  %2996 = extractvalue %dx.types.ResRet.f32 %2994, 1
  %2997 = extractvalue %dx.types.ResRet.f32 %2994, 2
  %2998 = extractvalue %dx.types.ResRet.f32 %2994, 3
  %2999 = fsub fast float %2995, %2985
  %3000 = fsub fast float %2996, %2986
  %3001 = fsub fast float %2997, %2987
  %3002 = fsub fast float %2998, %2988
  %3003 = fmul fast float %2999, %2981
  %3004 = fmul fast float %3000, %2981
  %3005 = fmul fast float %3001, %2981
  %3006 = fmul fast float %3002, %2981
  %3007 = fadd fast float %3003, %2985
  %3008 = fadd fast float %3004, %2986
  %3009 = fadd fast float %3005, %2987
  %3010 = fadd fast float %3006, %2988
  br label %3011

; <label>:3011                                    ; preds = %2990, %2973
  %3012 = phi float [ %3007, %2990 ], [ %2985, %2973 ]
  %3013 = phi float [ %3008, %2990 ], [ %2986, %2973 ]
  %3014 = phi float [ %3009, %2990 ], [ %2987, %2973 ]
  %3015 = phi float [ %3010, %2990 ], [ %2988, %2973 ]
  %3016 = fadd fast float %3012, -5.000000e-01
  %3017 = fadd fast float %3014, -5.000000e-01
  %3018 = fmul fast float %3016, 0xBFD5555560000000
  %3019 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %3017, float %3018)  ; FMad(a,b,c)
  %3020 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %3013, float 0.000000e+00)  ; FMad(a,b,c)
  %3021 = fadd fast float %3020, %3015
  %3022 = fmul fast float %3016, -7.500000e-01
  %3023 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %3017, float %3022)  ; FMad(a,b,c)
  %3024 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %3013, float 0.000000e+00)  ; FMad(a,b,c)
  %3025 = fadd fast float %3024, %3015
  %3026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %3027 = extractvalue %dx.types.CBufRet.f32 %3026, 0
  %3028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %3029 = extractvalue %dx.types.CBufRet.f32 %3028, 0
  %3030 = extractvalue %dx.types.CBufRet.f32 %3028, 1
  %3031 = extractvalue %dx.types.CBufRet.f32 %3028, 2
  %3032 = extractvalue %dx.types.CBufRet.f32 %3028, 3
  %3033 = fsub fast float %3029, %3019
  %3034 = fsub fast float %3030, %3021
  %3035 = fsub fast float %3031, %3023
  %3036 = fsub fast float %3032, %3025
  %3037 = fmul fast float %3033, %3027
  %3038 = fmul fast float %3034, %3027
  %3039 = fmul fast float %3035, %3027
  %3040 = fmul fast float %3036, %3027
  %3041 = fadd fast float %3037, %3019
  %3042 = fadd fast float %3038, %3021
  %3043 = fadd fast float %3039, %3023
  %3044 = fadd fast float %3040, %3025
  %3045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3046 = extractvalue %dx.types.ResRet.i32 %3045, 0
  %3047 = and i32 %3046, 536870911
  %3048 = uitofp i32 %3047 to float
  %3049 = fmul fast float %3048, %2895
  %3050 = fmul fast float %3048, %2899
  %3051 = fptoui float %3049 to i32
  %3052 = fptoui float %3050 to i32
  %3053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3054 = extractvalue %dx.types.ResRet.i32 %3053, 0
  %3055 = and i32 %3054, 31
  %3056 = lshr i32 %3051, %3055
  %3057 = lshr i32 %3052, %3055
  %3058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3059 = extractvalue %dx.types.ResRet.i32 %3058, 0
  %3060 = and i32 %3059, 31
  %3061 = shl i32 1, %3060
  %3062 = call i32 @dx.op.binary.i32(i32 40, i32 %3061, i32 4)  ; UMin(a,b)
  %3063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3064 = extractvalue %dx.types.ResRet.i32 %3063, 0
  %3065 = extractvalue %dx.types.ResRet.i32 %3063, 1
  %3066 = icmp eq i32 %3062, 0
  br i1 %3066, label %3108, label %3067

; <label>:3067                                    ; preds = %3011
  br label %3068

; <label>:3068                                    ; preds = %3096, %3067
  %3069 = phi i32 [ %3099, %3096 ], [ 0, %3067 ]
  %3070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3071 = extractvalue %dx.types.ResRet.i32 %3070, 0
  %3072 = lshr i32 %3071, 16
  %3073 = and i32 %3072, 31
  %3074 = shl i32 %3057, %3073
  %3075 = add i32 %3074, %3056
  %3076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3077 = extractvalue %dx.types.ResRet.i32 %3076, 0
  %3078 = and i32 %3077, 31
  %3079 = shl i32 %3075, %3078
  %3080 = add i32 %3079, %3069
  %3081 = shl i32 %3080, 2
  %3082 = add i32 %3081, 32
  %3083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %3082, i32 undef)  ; BufferLoad(srv,index,wot)
  %3084 = extractvalue %dx.types.ResRet.i32 %3083, 0
  %3085 = icmp slt i32 %3084, 0
  %3086 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %3069
  %3087 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %3069
  %3088 = bitcast float* %3086 to i32*
  %3089 = bitcast float* %3087 to i32*
  br i1 %3085, label %3090, label %3096

; <label>:3090                                    ; preds = %3068
  %3091 = and i32 %3084, 1073741823
  %3092 = add nuw nsw i32 %3091, 20
  %3093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %3092, i32 undef)  ; BufferLoad(srv,index,wot)
  %3094 = extractvalue %dx.types.ResRet.i32 %3093, 0
  %3095 = extractvalue %dx.types.ResRet.i32 %3093, 1
  br label %3096

; <label>:3096                                    ; preds = %3090, %3068
  %3097 = phi i32 [ %3094, %3090 ], [ %3064, %3068 ]
  %3098 = phi i32 [ %3095, %3090 ], [ %3065, %3068 ]
  store i32 %3097, i32* %3088, align 4
  store i32 %3098, i32* %3089, align 4
  %3099 = add nuw i32 %3069, 1
  %3100 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3101 = extractvalue %dx.types.CBufRet.i32 %3100, 2
  %3102 = icmp eq i32 %3101, 0
  %3103 = icmp ugt i32 %3084, -1073741825
  %3104 = and i1 %3103, %3102
  %3105 = icmp ult i32 %3099, %3062
  %3106 = and i1 %3104, %3105
  br i1 %3106, label %3068, label %3107

; <label>:3107                                    ; preds = %3096
  br label %3108

; <label>:3108                                    ; preds = %3107, %3011
  %3109 = phi i32 [ 0, %3011 ], [ %3099, %3107 ]
  %3110 = extractvalue %dx.types.CBufRet.f32 %2873, 2
  %3111 = fptoui float %3110 to i32
  %3112 = icmp eq i32 %3111, 0
  br i1 %3112, label %3164, label %3113

; <label>:3113                                    ; preds = %3108
  br label %3114

; <label>:3114                                    ; preds = %3159, %3113
  %3115 = phi i32 [ %3160, %3159 ], [ %3109, %3113 ]
  %3116 = phi i32 [ %3161, %3159 ], [ 0, %3113 ]
  %3117 = lshr i32 %3116, 2
  %3118 = and i32 %3116, 3
  %3119 = add nuw nsw i32 %3117, 83
  %3120 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 %3119)  ; CBufferLoadLegacy(handle,regIndex)
  %3121 = extractvalue %dx.types.CBufRet.i32 %3120, 0
  %3122 = extractvalue %dx.types.CBufRet.i32 %3120, 1
  %3123 = extractvalue %dx.types.CBufRet.i32 %3120, 2
  %3124 = extractvalue %dx.types.CBufRet.i32 %3120, 3
  %3125 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 0
  store i32 %3121, i32* %3125, align 4
  %3126 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 1
  store i32 %3122, i32* %3126, align 4
  %3127 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 2
  store i32 %3123, i32* %3127, align 4
  %3128 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 3
  store i32 %3124, i32* %3128, align 4
  %3129 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 %3118
  %3130 = load i32, i32* %3129, align 4, !tbaa !134, !noalias !136
  %3131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3132 = extractvalue %dx.types.ResRet.i32 %3131, 0
  %3133 = lshr i32 %3132, 16
  %3134 = and i32 %3133, 31
  %3135 = shl i32 %3057, %3134
  %3136 = add i32 %3135, %3056
  %3137 = shl i32 %3136, 2
  %3138 = add i32 %3137, %3130
  %3139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %3138, i32 undef)  ; BufferLoad(srv,index,wot)
  %3140 = extractvalue %dx.types.ResRet.i32 %3139, 0
  %3141 = icmp eq i32 %3140, 0
  br i1 %3141, label %3159, label %3142

; <label>:3142                                    ; preds = %3114
  %3143 = icmp slt i32 %3140, 0
  %3144 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %3115
  %3145 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %3115
  %3146 = bitcast float* %3144 to i32*
  %3147 = bitcast float* %3145 to i32*
  br i1 %3143, label %3148, label %3155

; <label>:3148                                    ; preds = %3142
  %3149 = and i32 %3140, 1073741823
  %3150 = add i32 %3130, 20
  %3151 = add i32 %3150, %3149
  %3152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %3151, i32 undef)  ; BufferLoad(srv,index,wot)
  %3153 = extractvalue %dx.types.ResRet.i32 %3152, 0
  %3154 = extractvalue %dx.types.ResRet.i32 %3152, 1
  br label %3155

; <label>:3155                                    ; preds = %3148, %3142
  %3156 = phi i32 [ %3153, %3148 ], [ %3064, %3142 ]
  %3157 = phi i32 [ %3154, %3148 ], [ %3065, %3142 ]
  store i32 %3156, i32* %3146, align 4
  store i32 %3157, i32* %3147, align 4
  %3158 = add i32 %3115, 1
  br label %3159

; <label>:3159                                    ; preds = %3155, %3114
  %3160 = phi i32 [ %3115, %3114 ], [ %3158, %3155 ]
  %3161 = add nuw i32 %3116, 1
  %3162 = icmp eq i32 %3161, %3111
  br i1 %3162, label %3163, label %3114

; <label>:3163                                    ; preds = %3159
  br label %3164

; <label>:3164                                    ; preds = %3163, %3108
  %3165 = phi i32 [ %3109, %3108 ], [ %3160, %3163 ]
  %3166 = icmp eq i32 %3165, 1
  %3167 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 0
  %3168 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 0
  br i1 %3166, label %3169, label %3172

; <label>:3169                                    ; preds = %3164
  %3170 = load float, float* %3167, align 4
  %3171 = load float, float* %3168, align 4
  br label %3199

; <label>:3172                                    ; preds = %3164
  %3173 = load float, float* %3167, align 4
  %3174 = load float, float* %3168, align 4
  %3175 = fdiv fast float 1.000000e+00, %3174
  %3176 = fsub fast float %3173, %3175
  %3177 = icmp ugt i32 %3165, 1
  br i1 %3177, label %3178, label %3194

; <label>:3178                                    ; preds = %3172
  br label %3179

; <label>:3179                                    ; preds = %3179, %3178
  %3180 = phi float [ %3189, %3179 ], [ %3176, %3178 ]
  %3181 = phi float [ %3190, %3179 ], [ %3173, %3178 ]
  %3182 = phi i32 [ %3191, %3179 ], [ 1, %3178 ]
  %3183 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %3182
  %3184 = load float, float* %3183, align 4
  %3185 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %3182
  %3186 = load float, float* %3185, align 4
  %3187 = fdiv fast float 1.000000e+00, %3186
  %3188 = fsub fast float %3184, %3187
  %3189 = call float @dx.op.binary.f32(i32 36, float %3180, float %3188)  ; FMin(a,b)
  %3190 = call float @dx.op.binary.f32(i32 35, float %3181, float %3184)  ; FMax(a,b)
  %3191 = add nuw i32 %3182, 1
  %3192 = icmp eq i32 %3191, %3165
  br i1 %3192, label %3193, label %3179

; <label>:3193                                    ; preds = %3179
  br label %3194

; <label>:3194                                    ; preds = %3193, %3172
  %3195 = phi float [ %3176, %3172 ], [ %3189, %3193 ]
  %3196 = phi float [ %3173, %3172 ], [ %3190, %3193 ]
  %3197 = fsub fast float %3196, %3195
  %3198 = fdiv fast float 1.000000e+00, %3197
  br label %3199

; <label>:3199                                    ; preds = %3194, %3169
  %3200 = phi float [ %3170, %3169 ], [ %3196, %3194 ]
  %3201 = phi float [ %3171, %3169 ], [ %3198, %3194 ]
  %3202 = fadd fast float %2903, %3200
  %3203 = fmul fast float %3202, %3201
  %3204 = call float @dx.op.unary.f32(i32 7, float %3203)  ; Saturate(value)
  %3205 = fmul fast float %3204, 2.000000e+00
  %3206 = fsub fast float 1.000000e+00, %3205
  %3207 = fmul fast float %3041, %3041
  %3208 = fsub fast float %3042, %3207
  %3209 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %3208)  ; FMax(a,b)
  %3210 = fdiv fast float 1.000000e+00, %3209
  %3211 = fmul fast float %3042, %3041
  %3212 = fsub fast float %3043, %3211
  %3213 = fsub fast float %3206, %3041
  %3214 = fmul fast float %3206, %3206
  %3215 = fsub fast float %3214, %3042
  %3216 = fmul fast float %3210, %3212
  %3217 = fmul fast float %3216, %3213
  %3218 = fsub fast float %3215, %3217
  %3219 = fmul fast float %3042, %3042
  %3220 = fsub fast float %3044, %3219
  %3221 = fmul fast float %3212, %3212
  %3222 = fmul fast float %3221, %3210
  %3223 = fsub fast float %3220, %3222
  %3224 = fdiv fast float %3218, %3223
  %3225 = fmul fast float %3224, %3212
  %3226 = fsub fast float %3213, %3225
  %3227 = fmul fast float %3226, %3210
  %3228 = fmul fast float %3227, %3041
  %3229 = fsub fast float 1.000000e+00, %3228
  %3230 = fmul fast float %3224, %3042
  %3231 = fsub fast float %3229, %3230
  %3232 = fmul fast float %3227, %3227
  %3233 = fmul fast float %3224, 4.000000e+00
  %3234 = fmul fast float %3233, %3231
  %3235 = fsub fast float %3232, %3234
  %3236 = call float @dx.op.unary.f32(i32 24, float %3235)  ; Sqrt(value)
  %3237 = fcmp fast oge float %3227, 0.000000e+00
  %3238 = fsub fast float -0.000000e+00, %3236
  %3239 = select i1 %3237, float %3238, float %3236
  %3240 = fsub fast float %3239, %3227
  %3241 = fdiv fast float %3240, %3224
  %3242 = fdiv fast float %3231, %3240
  %3243 = fmul fast float %3241, 5.000000e-01
  %3244 = fmul fast float %3242, 2.000000e+00
  %3245 = select i1 %3237, float %3243, float %3244
  %3246 = select i1 %3237, float %3244, float %3243
  %3247 = call float @dx.op.binary.f32(i32 35, float %3245, float %3246)  ; FMax(a,b)
  %3248 = call float @dx.op.binary.f32(i32 36, float %3245, float %3246)  ; FMin(a,b)
  %3249 = fcmp fast ogt float %3206, %3247
  %3250 = fsub fast float %3206, %3248
  %3251 = fsub fast float %3206, %3247
  %3252 = fsub fast float %3247, %3248
  %3253 = select i1 %3249, float %3251, float %3252
  %3254 = fmul float %3250, %3253
  %3255 = select i1 %3249, float %3248, float %3206
  %3256 = fcmp fast ogt float %3206, %3248
  %3257 = fmul fast float %3255, %3247
  %3258 = fadd fast float %3255, %3247
  %3259 = fmul fast float %3258, %3041
  %3260 = fadd fast float %3257, %3042
  %3261 = fsub fast float %3260, %3259
  %3262 = fdiv fast float %3261, %3254
  %3263 = select i1 %3256, float %3262, float 0.000000e+00
  %3264 = fsub fast float 1.000000e+00, %3263
  %3265 = select i1 %3249, float %3264, float %3263
  %3266 = call float @dx.op.unary.f32(i32 7, float %3265)  ; Saturate(value)
  %3267 = extractvalue %dx.types.CBufRet.f32 %3026, 3
  %3268 = fmul fast float %3267, %3266
  %3269 = fsub fast float 1.000000e+00, %3268
  br label %3270

; <label>:3270                                    ; preds = %3199, %2911, %2876, %2872, %2838
  %3271 = phi float [ 1.000000e+00, %2838 ], [ %3269, %3199 ], [ 1.000000e+00, %2876 ], [ 1.000000e+00, %2911 ], [ 1.000000e+00, %2872 ]
  %3272 = fcmp fast ogt float %2868, 0.000000e+00
  br i1 %3272, label %3273, label %3435, !dx.controlflow.hints !145

; <label>:3273                                    ; preds = %3270
  %3274 = fadd fast float %2781, %2755
  %3275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3276 = extractvalue %dx.types.CBufRet.f32 %3275, 2
  %3277 = extractvalue %dx.types.CBufRet.f32 %3275, 3
  %3278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3279 = extractvalue %dx.types.CBufRet.f32 %3278, 2
  %3280 = call float @dx.op.binary.f32(i32 35, float %3274, float 0.000000e+00)  ; FMax(a,b)
  %3281 = fadd fast float %3280, 0x3F10000000000000
  %3282 = fcmp fast oeq float %3279, 0.000000e+00
  br i1 %3282, label %3283, label %3350

; <label>:3283                                    ; preds = %3273
  %3284 = extractvalue %dx.types.CBufRet.f32 %3275, 1
  %3285 = extractvalue %dx.types.CBufRet.f32 %3275, 0
  %3286 = fmul fast float %3285, %2770
  %3287 = fmul fast float %3284, %2771
  %3288 = fadd fast float %3286, 5.000000e-01
  %3289 = call float @dx.op.unary.f32(i32 27, float %3288)  ; Round_ni(value)
  %3290 = fadd fast float %3287, 5.000000e-01
  %3291 = call float @dx.op.unary.f32(i32 27, float %3290)  ; Round_ni(value)
  %3292 = fsub fast float %3288, %3289
  %3293 = fsub fast float %3290, %3291
  %3294 = fadd fast float %3289, -5.000000e-01
  %3295 = fadd fast float %3291, -5.000000e-01
  %3296 = fmul fast float %3292, 2.000000e+00
  %3297 = fsub fast float 3.000000e+00, %3296
  %3298 = fadd fast float %3296, 1.000000e+00
  %3299 = fsub fast float 2.000000e+00, %3292
  %3300 = bitcast float %3297 to i32
  %3301 = sub nsw i32 2129859010, %3300
  %3302 = bitcast i32 %3301 to float
  %3303 = fmul fast float %3302, %3299
  %3304 = fadd fast float %3303, -1.000000e+00
  %3305 = bitcast float %3298 to i32
  %3306 = sub nsw i32 2129859010, %3305
  %3307 = bitcast i32 %3306 to float
  %3308 = fmul fast float %3307, %3292
  %3309 = fadd fast float %3308, 1.000000e+00
  %3310 = fmul fast float %3293, 2.000000e+00
  %3311 = fsub fast float 3.000000e+00, %3310
  %3312 = fadd fast float %3310, 1.000000e+00
  %3313 = fsub fast float 2.000000e+00, %3293
  %3314 = bitcast float %3311 to i32
  %3315 = sub nsw i32 2129859010, %3314
  %3316 = bitcast i32 %3315 to float
  %3317 = fmul fast float %3316, %3313
  %3318 = fadd fast float %3317, -1.000000e+00
  %3319 = bitcast float %3312 to i32
  %3320 = sub nsw i32 2129859010, %3319
  %3321 = bitcast i32 %3320 to float
  %3322 = fmul fast float %3321, %3293
  %3323 = fadd fast float %3322, 1.000000e+00
  %3324 = fadd fast float %3304, %3294
  %3325 = fmul fast float %3324, %3276
  %3326 = fadd fast float %3318, %3295
  %3327 = fmul fast float %3326, %3277
  %3328 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %47, float %3325, float %3327, float undef, float undef, i32 0, i32 0, i32 undef, float %3281)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3329 = extractvalue %dx.types.ResRet.f32 %3328, 0
  %3330 = fmul fast float %3329, %3297
  %3331 = fadd fast float %3309, %3294
  %3332 = fmul fast float %3331, %3276
  %3333 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %47, float %3332, float %3327, float undef, float undef, i32 0, i32 0, i32 undef, float %3281)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3334 = extractvalue %dx.types.ResRet.f32 %3333, 0
  %3335 = fmul fast float %3334, %3298
  %3336 = fadd fast float %3323, %3295
  %3337 = fmul fast float %3336, %3277
  %3338 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %47, float %3325, float %3337, float undef, float undef, i32 0, i32 0, i32 undef, float %3281)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3339 = extractvalue %dx.types.ResRet.f32 %3338, 0
  %3340 = fmul fast float %3339, %3297
  %3341 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %47, float %3332, float %3337, float undef, float undef, i32 0, i32 0, i32 undef, float %3281)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3342 = extractvalue %dx.types.ResRet.f32 %3341, 0
  %3343 = fmul fast float %3342, %3298
  %3344 = fadd fast float %3343, %3340
  %3345 = fmul fast float %3344, %3312
  %3346 = fadd fast float %3335, %3330
  %3347 = fmul fast float %3346, %3311
  %3348 = fadd fast float %3347, %3345
  %3349 = fmul fast float %3348, 6.250000e-02
  br label %3435

; <label>:3350                                    ; preds = %3273
  %3351 = fmul fast float %356, 0x401921FB60000000
  %3352 = call float @dx.op.unary.f32(i32 13, float %3351)  ; Sin(value)
  %3353 = call float @dx.op.unary.f32(i32 12, float %3351)  ; Cos(value)
  %3354 = fsub fast float -0.000000e+00, %3352
  br label %3355

; <label>:3355                                    ; preds = %3404, %3350
  %3356 = phi float [ 0.000000e+00, %3350 ], [ %3399, %3404 ]
  %3357 = phi float [ 0.000000e+00, %3350 ], [ %3401, %3404 ]
  %3358 = phi i32 [ 0, %3350 ], [ %3405, %3404 ]
  %3359 = mul i32 %3358, 2
  %3360 = add i32 0, %3359
  %3361 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3360
  %3362 = load float, float* %3361, align 4
  %3363 = mul i32 %3358, 2
  %3364 = add i32 1, %3363
  %3365 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3364
  %3366 = load float, float* %3365, align 4
  %3367 = fmul fast float %3362, %3353
  %3368 = call float @dx.op.tertiary.f32(i32 46, float %3366, float %3354, float %3367)  ; FMad(a,b,c)
  %3369 = fmul fast float %3362, %3352
  %3370 = call float @dx.op.tertiary.f32(i32 46, float %3366, float %3353, float %3369)  ; FMad(a,b,c)
  %3371 = fmul fast float %3368, %3279
  %3372 = fmul fast float %3370, %3279
  %3373 = fadd fast float %3371, %2770
  %3374 = fadd fast float %3372, %2771
  %3375 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %46, float %3373, float %3374, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3376 = extractvalue %dx.types.ResRet.f32 %3375, 0
  %3377 = extractvalue %dx.types.ResRet.f32 %3375, 1
  %3378 = extractvalue %dx.types.ResRet.f32 %3375, 2
  %3379 = extractvalue %dx.types.ResRet.f32 %3375, 3
  %3380 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 0
  store float %3376, float* %3380, align 4
  %3381 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 1
  store float %3377, float* %3381, align 4
  %3382 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 2
  store float %3378, float* %3382, align 4
  %3383 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 3
  store float %3379, float* %3383, align 4
  %3384 = fsub fast float %3376, %3281
  %3385 = fcmp fast olt float %3384, 0.000000e+00
  %3386 = select i1 %3385, float 0.000000e+00, float 1.000000e+00
  %3387 = fadd fast float %3386, %3356
  %3388 = fmul fast float %3386, %3384
  %3389 = fadd fast float %3388, %3357
  br label %3390

; <label>:3390                                    ; preds = %3390, %3355
  %3391 = phi i32 [ 1, %3355 ], [ %3402, %3390 ]
  %3392 = phi float [ %3389, %3355 ], [ %3401, %3390 ]
  %3393 = phi float [ %3387, %3355 ], [ %3399, %3390 ]
  %3394 = getelementptr [4 x float], [4 x float]* %93, i32 0, i32 %3391
  %3395 = load float, float* %3394, align 4, !tbaa !110, !noalias !136
  %3396 = fsub fast float %3395, %3281
  %3397 = fcmp fast olt float %3396, 0.000000e+00
  %3398 = select i1 %3397, float 0.000000e+00, float 1.000000e+00
  %3399 = fadd fast float %3398, %3393
  %3400 = fmul fast float %3398, %3396
  %3401 = fadd fast float %3400, %3392
  %3402 = add nuw nsw i32 %3391, 1
  %3403 = icmp eq i32 %3402, 4
  br i1 %3403, label %3404, label %3390, !llvm.loop !146

; <label>:3404                                    ; preds = %3390
  %3405 = add nuw nsw i32 %3358, 1
  %3406 = icmp eq i32 %3405, 8
  br i1 %3406, label %3407, label %3355, !llvm.loop !147

; <label>:3407                                    ; preds = %3404
  %3408 = fdiv fast float 1.000000e+00, %3399
  %3409 = fmul fast float %3408, %3401
  %3410 = fdiv fast float 1.000000e+00, %3281
  %3411 = fmul fast float %3409, %3410
  %3412 = call float @dx.op.unary.f32(i32 7, float %3411)  ; Saturate(value)
  %3413 = call float @dx.op.binary.f32(i32 35, float %3412, float 0.000000e+00)  ; FMax(a,b)
  %3414 = fmul fast float %3399, 3.125000e-02
  %3415 = call float @dx.op.unary.f32(i32 7, float %3414)  ; Saturate(value)
  %3416 = fmul fast float %3415, 2.000000e+00
  %3417 = fadd fast float %3416, -1.000000e+00
  %3418 = fcmp fast ogt float %3417, 0.000000e+00
  %3419 = fcmp fast olt float %3417, 0.000000e+00
  %3420 = zext i1 %3418 to i32
  %3421 = zext i1 %3419 to i32
  %3422 = sub nsw i32 %3420, %3421
  %3423 = sitofp i32 %3422 to float
  %3424 = fmul fast float %3423, %3417
  %3425 = fsub fast float 1.000000e+00, %3424
  %3426 = fmul fast float %3425, %3425
  %3427 = fmul fast float %3426, %3425
  %3428 = fsub fast float %3425, %3427
  %3429 = fmul fast float %3428, %3413
  %3430 = fsub fast float 1.000000e+00, %3427
  %3431 = fsub fast float %3430, %3429
  %3432 = fmul fast float %3423, 5.000000e-01
  %3433 = fmul fast float %3432, %3431
  %3434 = fsub fast float 5.000000e-01, %3433
  br label %3435

; <label>:3435                                    ; preds = %3407, %3283, %3270
  %3436 = phi float [ 1.000000e+00, %3270 ], [ %3349, %3283 ], [ %3434, %3407 ]
  %3437 = fcmp fast ogt float %2866, 0.000000e+00
  br i1 %3437, label %3438, label %3602, !dx.controlflow.hints !148

; <label>:3438                                    ; preds = %3435
  %3439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3440 = extractvalue %dx.types.CBufRet.f32 %3439, 1
  %3441 = fadd fast float %3440, %2755
  %3442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3443 = extractvalue %dx.types.CBufRet.f32 %3442, 2
  %3444 = extractvalue %dx.types.CBufRet.f32 %3442, 3
  %3445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3446 = extractvalue %dx.types.CBufRet.f32 %3445, 1
  %3447 = call float @dx.op.binary.f32(i32 35, float %3441, float 0.000000e+00)  ; FMax(a,b)
  %3448 = fadd fast float %3447, 0x3F10000000000000
  %3449 = fcmp fast oeq float %3446, 0.000000e+00
  br i1 %3449, label %3450, label %3517

; <label>:3450                                    ; preds = %3438
  %3451 = extractvalue %dx.types.CBufRet.f32 %3442, 1
  %3452 = extractvalue %dx.types.CBufRet.f32 %3442, 0
  %3453 = fmul fast float %3452, %2762
  %3454 = fmul fast float %3451, %2763
  %3455 = fadd fast float %3453, 5.000000e-01
  %3456 = call float @dx.op.unary.f32(i32 27, float %3455)  ; Round_ni(value)
  %3457 = fadd fast float %3454, 5.000000e-01
  %3458 = call float @dx.op.unary.f32(i32 27, float %3457)  ; Round_ni(value)
  %3459 = fsub fast float %3455, %3456
  %3460 = fsub fast float %3457, %3458
  %3461 = fadd fast float %3456, -5.000000e-01
  %3462 = fadd fast float %3458, -5.000000e-01
  %3463 = fmul fast float %3459, 2.000000e+00
  %3464 = fsub fast float 3.000000e+00, %3463
  %3465 = fadd fast float %3463, 1.000000e+00
  %3466 = fsub fast float 2.000000e+00, %3459
  %3467 = bitcast float %3464 to i32
  %3468 = sub nsw i32 2129859010, %3467
  %3469 = bitcast i32 %3468 to float
  %3470 = fmul fast float %3469, %3466
  %3471 = fadd fast float %3470, -1.000000e+00
  %3472 = bitcast float %3465 to i32
  %3473 = sub nsw i32 2129859010, %3472
  %3474 = bitcast i32 %3473 to float
  %3475 = fmul fast float %3474, %3459
  %3476 = fadd fast float %3475, 1.000000e+00
  %3477 = fmul fast float %3460, 2.000000e+00
  %3478 = fsub fast float 3.000000e+00, %3477
  %3479 = fadd fast float %3477, 1.000000e+00
  %3480 = fsub fast float 2.000000e+00, %3460
  %3481 = bitcast float %3478 to i32
  %3482 = sub nsw i32 2129859010, %3481
  %3483 = bitcast i32 %3482 to float
  %3484 = fmul fast float %3483, %3480
  %3485 = fadd fast float %3484, -1.000000e+00
  %3486 = bitcast float %3479 to i32
  %3487 = sub nsw i32 2129859010, %3486
  %3488 = bitcast i32 %3487 to float
  %3489 = fmul fast float %3488, %3460
  %3490 = fadd fast float %3489, 1.000000e+00
  %3491 = fadd fast float %3471, %3461
  %3492 = fmul fast float %3491, %3443
  %3493 = fadd fast float %3485, %3462
  %3494 = fmul fast float %3493, %3444
  %3495 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %47, float %3492, float %3494, float undef, float undef, i32 0, i32 0, i32 undef, float %3448)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3496 = extractvalue %dx.types.ResRet.f32 %3495, 0
  %3497 = fmul fast float %3496, %3464
  %3498 = fadd fast float %3476, %3461
  %3499 = fmul fast float %3498, %3443
  %3500 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %47, float %3499, float %3494, float undef, float undef, i32 0, i32 0, i32 undef, float %3448)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3501 = extractvalue %dx.types.ResRet.f32 %3500, 0
  %3502 = fmul fast float %3501, %3465
  %3503 = fadd fast float %3490, %3462
  %3504 = fmul fast float %3503, %3444
  %3505 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %47, float %3492, float %3504, float undef, float undef, i32 0, i32 0, i32 undef, float %3448)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3506 = extractvalue %dx.types.ResRet.f32 %3505, 0
  %3507 = fmul fast float %3506, %3464
  %3508 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %47, float %3499, float %3504, float undef, float undef, i32 0, i32 0, i32 undef, float %3448)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3509 = extractvalue %dx.types.ResRet.f32 %3508, 0
  %3510 = fmul fast float %3509, %3465
  %3511 = fadd fast float %3510, %3507
  %3512 = fmul fast float %3511, %3479
  %3513 = fadd fast float %3502, %3497
  %3514 = fmul fast float %3513, %3478
  %3515 = fadd fast float %3514, %3512
  %3516 = fmul fast float %3515, 6.250000e-02
  br label %3602

; <label>:3517                                    ; preds = %3438
  %3518 = fmul fast float %356, 0x401921FB60000000
  %3519 = call float @dx.op.unary.f32(i32 13, float %3518)  ; Sin(value)
  %3520 = call float @dx.op.unary.f32(i32 12, float %3518)  ; Cos(value)
  %3521 = fsub fast float -0.000000e+00, %3519
  br label %3522

; <label>:3522                                    ; preds = %3571, %3517
  %3523 = phi float [ 0.000000e+00, %3517 ], [ %3566, %3571 ]
  %3524 = phi float [ 0.000000e+00, %3517 ], [ %3568, %3571 ]
  %3525 = phi i32 [ 0, %3517 ], [ %3572, %3571 ]
  %3526 = mul i32 %3525, 2
  %3527 = add i32 0, %3526
  %3528 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3527
  %3529 = load float, float* %3528, align 4
  %3530 = mul i32 %3525, 2
  %3531 = add i32 1, %3530
  %3532 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3531
  %3533 = load float, float* %3532, align 4
  %3534 = fmul fast float %3529, %3520
  %3535 = call float @dx.op.tertiary.f32(i32 46, float %3533, float %3521, float %3534)  ; FMad(a,b,c)
  %3536 = fmul fast float %3529, %3519
  %3537 = call float @dx.op.tertiary.f32(i32 46, float %3533, float %3520, float %3536)  ; FMad(a,b,c)
  %3538 = fmul fast float %3535, %3446
  %3539 = fmul fast float %3537, %3446
  %3540 = fadd fast float %3538, %2762
  %3541 = fadd fast float %3539, %2763
  %3542 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %46, float %3540, float %3541, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3543 = extractvalue %dx.types.ResRet.f32 %3542, 0
  %3544 = extractvalue %dx.types.ResRet.f32 %3542, 1
  %3545 = extractvalue %dx.types.ResRet.f32 %3542, 2
  %3546 = extractvalue %dx.types.ResRet.f32 %3542, 3
  %3547 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 0
  store float %3543, float* %3547, align 4
  %3548 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 1
  store float %3544, float* %3548, align 4
  %3549 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 2
  store float %3545, float* %3549, align 4
  %3550 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 3
  store float %3546, float* %3550, align 4
  %3551 = fsub fast float %3543, %3448
  %3552 = fcmp fast olt float %3551, 0.000000e+00
  %3553 = select i1 %3552, float 0.000000e+00, float 1.000000e+00
  %3554 = fadd fast float %3553, %3523
  %3555 = fmul fast float %3553, %3551
  %3556 = fadd fast float %3555, %3524
  br label %3557

; <label>:3557                                    ; preds = %3557, %3522
  %3558 = phi i32 [ 1, %3522 ], [ %3569, %3557 ]
  %3559 = phi float [ %3556, %3522 ], [ %3568, %3557 ]
  %3560 = phi float [ %3554, %3522 ], [ %3566, %3557 ]
  %3561 = getelementptr [4 x float], [4 x float]* %92, i32 0, i32 %3558
  %3562 = load float, float* %3561, align 4, !tbaa !110, !noalias !136
  %3563 = fsub fast float %3562, %3448
  %3564 = fcmp fast olt float %3563, 0.000000e+00
  %3565 = select i1 %3564, float 0.000000e+00, float 1.000000e+00
  %3566 = fadd fast float %3565, %3560
  %3567 = fmul fast float %3565, %3563
  %3568 = fadd fast float %3567, %3559
  %3569 = add nuw nsw i32 %3558, 1
  %3570 = icmp eq i32 %3569, 4
  br i1 %3570, label %3571, label %3557, !llvm.loop !146

; <label>:3571                                    ; preds = %3557
  %3572 = add nuw nsw i32 %3525, 1
  %3573 = icmp eq i32 %3572, 8
  br i1 %3573, label %3574, label %3522, !llvm.loop !147

; <label>:3574                                    ; preds = %3571
  %3575 = fdiv fast float 1.000000e+00, %3566
  %3576 = fmul fast float %3575, %3568
  %3577 = fdiv fast float 1.000000e+00, %3448
  %3578 = fmul fast float %3576, %3577
  %3579 = call float @dx.op.unary.f32(i32 7, float %3578)  ; Saturate(value)
  %3580 = call float @dx.op.binary.f32(i32 35, float %3579, float 0.000000e+00)  ; FMax(a,b)
  %3581 = fmul fast float %3566, 3.125000e-02
  %3582 = call float @dx.op.unary.f32(i32 7, float %3581)  ; Saturate(value)
  %3583 = fmul fast float %3582, 2.000000e+00
  %3584 = fadd fast float %3583, -1.000000e+00
  %3585 = fcmp fast ogt float %3584, 0.000000e+00
  %3586 = fcmp fast olt float %3584, 0.000000e+00
  %3587 = zext i1 %3585 to i32
  %3588 = zext i1 %3586 to i32
  %3589 = sub nsw i32 %3587, %3588
  %3590 = sitofp i32 %3589 to float
  %3591 = fmul fast float %3590, %3584
  %3592 = fsub fast float 1.000000e+00, %3591
  %3593 = fmul fast float %3592, %3592
  %3594 = fmul fast float %3593, %3592
  %3595 = fsub fast float %3592, %3594
  %3596 = fmul fast float %3595, %3580
  %3597 = fsub fast float 1.000000e+00, %3594
  %3598 = fsub fast float %3597, %3596
  %3599 = fmul fast float %3590, 5.000000e-01
  %3600 = fmul fast float %3599, %3598
  %3601 = fsub fast float 5.000000e-01, %3600
  br label %3602

; <label>:3602                                    ; preds = %3574, %3450, %3435
  %3603 = phi float [ 1.000000e+00, %3435 ], [ %3516, %3450 ], [ %3601, %3574 ]
  %3604 = fcmp fast ogt float %2865, 0.000000e+00
  br i1 %3604, label %3605, label %3769, !dx.controlflow.hints !149

; <label>:3605                                    ; preds = %3602
  %3606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3607 = extractvalue %dx.types.CBufRet.f32 %3606, 0
  %3608 = fadd fast float %3607, %2755
  %3609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3610 = extractvalue %dx.types.CBufRet.f32 %3609, 2
  %3611 = extractvalue %dx.types.CBufRet.f32 %3609, 3
  %3612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3613 = extractvalue %dx.types.CBufRet.f32 %3612, 0
  %3614 = call float @dx.op.binary.f32(i32 35, float %3608, float 0.000000e+00)  ; FMax(a,b)
  %3615 = fadd fast float %3614, 0x3F10000000000000
  %3616 = fcmp fast oeq float %3613, 0.000000e+00
  br i1 %3616, label %3617, label %3684

; <label>:3617                                    ; preds = %3605
  %3618 = extractvalue %dx.types.CBufRet.f32 %3609, 1
  %3619 = extractvalue %dx.types.CBufRet.f32 %3609, 0
  %3620 = fmul fast float %3619, %2747
  %3621 = fmul fast float %3618, %2751
  %3622 = fadd fast float %3620, 5.000000e-01
  %3623 = call float @dx.op.unary.f32(i32 27, float %3622)  ; Round_ni(value)
  %3624 = fadd fast float %3621, 5.000000e-01
  %3625 = call float @dx.op.unary.f32(i32 27, float %3624)  ; Round_ni(value)
  %3626 = fsub fast float %3622, %3623
  %3627 = fsub fast float %3624, %3625
  %3628 = fadd fast float %3623, -5.000000e-01
  %3629 = fadd fast float %3625, -5.000000e-01
  %3630 = fmul fast float %3626, 2.000000e+00
  %3631 = fsub fast float 3.000000e+00, %3630
  %3632 = fadd fast float %3630, 1.000000e+00
  %3633 = fsub fast float 2.000000e+00, %3626
  %3634 = bitcast float %3631 to i32
  %3635 = sub nsw i32 2129859010, %3634
  %3636 = bitcast i32 %3635 to float
  %3637 = fmul fast float %3636, %3633
  %3638 = fadd fast float %3637, -1.000000e+00
  %3639 = bitcast float %3632 to i32
  %3640 = sub nsw i32 2129859010, %3639
  %3641 = bitcast i32 %3640 to float
  %3642 = fmul fast float %3641, %3626
  %3643 = fadd fast float %3642, 1.000000e+00
  %3644 = fmul fast float %3627, 2.000000e+00
  %3645 = fsub fast float 3.000000e+00, %3644
  %3646 = fadd fast float %3644, 1.000000e+00
  %3647 = fsub fast float 2.000000e+00, %3627
  %3648 = bitcast float %3645 to i32
  %3649 = sub nsw i32 2129859010, %3648
  %3650 = bitcast i32 %3649 to float
  %3651 = fmul fast float %3650, %3647
  %3652 = fadd fast float %3651, -1.000000e+00
  %3653 = bitcast float %3646 to i32
  %3654 = sub nsw i32 2129859010, %3653
  %3655 = bitcast i32 %3654 to float
  %3656 = fmul fast float %3655, %3627
  %3657 = fadd fast float %3656, 1.000000e+00
  %3658 = fadd fast float %3638, %3628
  %3659 = fmul fast float %3658, %3610
  %3660 = fadd fast float %3652, %3629
  %3661 = fmul fast float %3660, %3611
  %3662 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %47, float %3659, float %3661, float undef, float undef, i32 0, i32 0, i32 undef, float %3615)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3663 = extractvalue %dx.types.ResRet.f32 %3662, 0
  %3664 = fmul fast float %3663, %3631
  %3665 = fadd fast float %3643, %3628
  %3666 = fmul fast float %3665, %3610
  %3667 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %47, float %3666, float %3661, float undef, float undef, i32 0, i32 0, i32 undef, float %3615)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3668 = extractvalue %dx.types.ResRet.f32 %3667, 0
  %3669 = fmul fast float %3668, %3632
  %3670 = fadd fast float %3657, %3629
  %3671 = fmul fast float %3670, %3611
  %3672 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %47, float %3659, float %3671, float undef, float undef, i32 0, i32 0, i32 undef, float %3615)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3673 = extractvalue %dx.types.ResRet.f32 %3672, 0
  %3674 = fmul fast float %3673, %3631
  %3675 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %47, float %3666, float %3671, float undef, float undef, i32 0, i32 0, i32 undef, float %3615)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3676 = extractvalue %dx.types.ResRet.f32 %3675, 0
  %3677 = fmul fast float %3676, %3632
  %3678 = fadd fast float %3677, %3674
  %3679 = fmul fast float %3678, %3646
  %3680 = fadd fast float %3669, %3664
  %3681 = fmul fast float %3680, %3645
  %3682 = fadd fast float %3681, %3679
  %3683 = fmul fast float %3682, 6.250000e-02
  br label %3769

; <label>:3684                                    ; preds = %3605
  %3685 = fmul fast float %356, 0x401921FB60000000
  %3686 = call float @dx.op.unary.f32(i32 13, float %3685)  ; Sin(value)
  %3687 = call float @dx.op.unary.f32(i32 12, float %3685)  ; Cos(value)
  %3688 = fsub fast float -0.000000e+00, %3686
  br label %3689

; <label>:3689                                    ; preds = %3738, %3684
  %3690 = phi float [ 0.000000e+00, %3684 ], [ %3733, %3738 ]
  %3691 = phi float [ 0.000000e+00, %3684 ], [ %3735, %3738 ]
  %3692 = phi i32 [ 0, %3684 ], [ %3739, %3738 ]
  %3693 = mul i32 %3692, 2
  %3694 = add i32 0, %3693
  %3695 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3694
  %3696 = load float, float* %3695, align 4
  %3697 = mul i32 %3692, 2
  %3698 = add i32 1, %3697
  %3699 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3698
  %3700 = load float, float* %3699, align 4
  %3701 = fmul fast float %3696, %3687
  %3702 = call float @dx.op.tertiary.f32(i32 46, float %3700, float %3688, float %3701)  ; FMad(a,b,c)
  %3703 = fmul fast float %3696, %3686
  %3704 = call float @dx.op.tertiary.f32(i32 46, float %3700, float %3687, float %3703)  ; FMad(a,b,c)
  %3705 = fmul fast float %3702, %3613
  %3706 = fmul fast float %3704, %3613
  %3707 = fadd fast float %3705, %2747
  %3708 = fadd fast float %3706, %2751
  %3709 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %12, %dx.types.Handle %46, float %3707, float %3708, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3710 = extractvalue %dx.types.ResRet.f32 %3709, 0
  %3711 = extractvalue %dx.types.ResRet.f32 %3709, 1
  %3712 = extractvalue %dx.types.ResRet.f32 %3709, 2
  %3713 = extractvalue %dx.types.ResRet.f32 %3709, 3
  %3714 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 0
  store float %3710, float* %3714, align 4
  %3715 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 1
  store float %3711, float* %3715, align 4
  %3716 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 2
  store float %3712, float* %3716, align 4
  %3717 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 3
  store float %3713, float* %3717, align 4
  %3718 = fsub fast float %3710, %3615
  %3719 = fcmp fast olt float %3718, 0.000000e+00
  %3720 = select i1 %3719, float 0.000000e+00, float 1.000000e+00
  %3721 = fadd fast float %3720, %3690
  %3722 = fmul fast float %3720, %3718
  %3723 = fadd fast float %3722, %3691
  br label %3724

; <label>:3724                                    ; preds = %3724, %3689
  %3725 = phi i32 [ 1, %3689 ], [ %3736, %3724 ]
  %3726 = phi float [ %3723, %3689 ], [ %3735, %3724 ]
  %3727 = phi float [ %3721, %3689 ], [ %3733, %3724 ]
  %3728 = getelementptr [4 x float], [4 x float]* %91, i32 0, i32 %3725
  %3729 = load float, float* %3728, align 4, !tbaa !110, !noalias !136
  %3730 = fsub fast float %3729, %3615
  %3731 = fcmp fast olt float %3730, 0.000000e+00
  %3732 = select i1 %3731, float 0.000000e+00, float 1.000000e+00
  %3733 = fadd fast float %3732, %3727
  %3734 = fmul fast float %3732, %3730
  %3735 = fadd fast float %3734, %3726
  %3736 = add nuw nsw i32 %3725, 1
  %3737 = icmp eq i32 %3736, 4
  br i1 %3737, label %3738, label %3724, !llvm.loop !146

; <label>:3738                                    ; preds = %3724
  %3739 = add nuw nsw i32 %3692, 1
  %3740 = icmp eq i32 %3739, 8
  br i1 %3740, label %3741, label %3689, !llvm.loop !147

; <label>:3741                                    ; preds = %3738
  %3742 = fdiv fast float 1.000000e+00, %3733
  %3743 = fmul fast float %3742, %3735
  %3744 = fdiv fast float 1.000000e+00, %3615
  %3745 = fmul fast float %3743, %3744
  %3746 = call float @dx.op.unary.f32(i32 7, float %3745)  ; Saturate(value)
  %3747 = call float @dx.op.binary.f32(i32 35, float %3746, float 0.000000e+00)  ; FMax(a,b)
  %3748 = fmul fast float %3733, 3.125000e-02
  %3749 = call float @dx.op.unary.f32(i32 7, float %3748)  ; Saturate(value)
  %3750 = fmul fast float %3749, 2.000000e+00
  %3751 = fadd fast float %3750, -1.000000e+00
  %3752 = fcmp fast ogt float %3751, 0.000000e+00
  %3753 = fcmp fast olt float %3751, 0.000000e+00
  %3754 = zext i1 %3752 to i32
  %3755 = zext i1 %3753 to i32
  %3756 = sub nsw i32 %3754, %3755
  %3757 = sitofp i32 %3756 to float
  %3758 = fmul fast float %3757, %3751
  %3759 = fsub fast float 1.000000e+00, %3758
  %3760 = fmul fast float %3759, %3759
  %3761 = fmul fast float %3760, %3759
  %3762 = fsub fast float %3759, %3761
  %3763 = fmul fast float %3762, %3747
  %3764 = fsub fast float 1.000000e+00, %3761
  %3765 = fsub fast float %3764, %3763
  %3766 = fmul fast float %3757, 5.000000e-01
  %3767 = fmul fast float %3766, %3765
  %3768 = fsub fast float 5.000000e-01, %3767
  br label %3769

; <label>:3769                                    ; preds = %3741, %3617, %3602
  %3770 = phi float [ 1.000000e+00, %3602 ], [ %3683, %3617 ], [ %3768, %3741 ]
  %3771 = fsub fast float %3436, %3271
  %3772 = fmul fast float %3771, %2809
  %3773 = fadd fast float %3772, %3271
  %3774 = fsub fast float %3603, %3773
  %3775 = fmul fast float %3774, %2839
  %3776 = fadd fast float %3775, %3773
  %3777 = fsub fast float %3770, %3776
  %3778 = fmul fast float %3777, %2865
  %3779 = fadd fast float %3778, %3776
  %3780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %3781 = extractvalue %dx.types.CBufRet.f32 %3780, 2
  %3782 = fcmp fast ogt float %3781, 0.000000e+00
  br i1 %3782, label %3783, label %3823, !dx.controlflow.hints !150

; <label>:3783                                    ; preds = %3769
  %3784 = fcmp fast ugt float %3781, 0.000000e+00
  br i1 %3784, label %3785, label %3820

; <label>:3785                                    ; preds = %3783
  %3786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %3787 = extractvalue %dx.types.CBufRet.f32 %3786, 0
  %3788 = extractvalue %dx.types.CBufRet.f32 %3786, 1
  %3789 = extractvalue %dx.types.CBufRet.f32 %3786, 2
  %3790 = extractvalue %dx.types.CBufRet.f32 %3786, 3
  %3791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %3792 = extractvalue %dx.types.CBufRet.f32 %3791, 0
  %3793 = extractvalue %dx.types.CBufRet.f32 %3791, 1
  %3794 = extractvalue %dx.types.CBufRet.f32 %3791, 2
  %3795 = extractvalue %dx.types.CBufRet.f32 %3791, 3
  %3796 = extractvalue %dx.types.CBufRet.f32 %3780, 0
  %3797 = extractvalue %dx.types.CBufRet.f32 %3780, 1
  %3798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3799 = extractvalue %dx.types.CBufRet.f32 %3798, 0
  %3800 = extractvalue %dx.types.CBufRet.f32 %3798, 1
  %3801 = extractvalue %dx.types.CBufRet.f32 %3798, 2
  %3802 = fadd fast float %3799, %2724
  %3803 = fadd fast float %3800, %2725
  %3804 = fadd fast float %3801, %2726
  %3805 = fmul fast float %3802, %3787
  %3806 = call float @dx.op.tertiary.f32(i32 46, float %3788, float %3803, float %3805)  ; FMad(a,b,c)
  %3807 = call float @dx.op.tertiary.f32(i32 46, float %3789, float %3804, float %3806)  ; FMad(a,b,c)
  %3808 = fadd fast float %3807, %3790
  %3809 = fmul fast float %3802, %3792
  %3810 = call float @dx.op.tertiary.f32(i32 46, float %3793, float %3803, float %3809)  ; FMad(a,b,c)
  %3811 = call float @dx.op.tertiary.f32(i32 46, float %3794, float %3804, float %3810)  ; FMad(a,b,c)
  %3812 = fadd fast float %3811, %3795
  %3813 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %42, float %3808, float %3812, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3814 = extractvalue %dx.types.ResRet.f32 %3813, 0
  %3815 = fmul fast float %3814, %3797
  %3816 = fadd fast float %3815, %3796
  %3817 = call float @dx.op.unary.f32(i32 7, float %3816)  ; Saturate(value)
  %3818 = fmul fast float %3817, %3781
  %3819 = fsub fast float 1.000000e+00, %3818
  br label %3820

; <label>:3820                                    ; preds = %3785, %3783
  %3821 = phi float [ %3819, %3785 ], [ 1.000000e+00, %3783 ]
  %3822 = fmul fast float %3821, %3779
  br label %3823

; <label>:3823                                    ; preds = %3820, %3769, %2704
  %3824 = phi float [ 1.000000e+00, %2704 ], [ %3822, %3820 ], [ %3779, %3769 ]
  %3825 = call float @dx.op.binary.f32(i32 36, float %3824, float %3824)  ; FMin(a,b)
  %3826 = call float @dx.op.binary.f32(i32 36, float %3824, float %3825)  ; FMin(a,b)
  %3827 = fcmp fast ogt float %3826, 0.000000e+00
  br i1 %3827, label %3828, label %3993, !dx.controlflow.hints !151

; <label>:3828                                    ; preds = %3823
  %3829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3830 = extractvalue %dx.types.CBufRet.f32 %3829, 0
  %3831 = extractvalue %dx.types.CBufRet.f32 %3829, 1
  %3832 = extractvalue %dx.types.CBufRet.f32 %3829, 2
  %3833 = extractvalue %dx.types.CBufRet.f32 %3829, 3
  %3834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3835 = extractvalue %dx.types.CBufRet.f32 %3834, 0
  %3836 = extractvalue %dx.types.CBufRet.f32 %3834, 1
  %3837 = extractvalue %dx.types.CBufRet.f32 %3834, 2
  %3838 = extractvalue %dx.types.CBufRet.f32 %3834, 3
  %3839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3840 = extractvalue %dx.types.CBufRet.f32 %3839, 0
  %3841 = extractvalue %dx.types.CBufRet.f32 %3839, 1
  %3842 = extractvalue %dx.types.CBufRet.f32 %3839, 2
  %3843 = extractvalue %dx.types.CBufRet.f32 %3839, 3
  %3844 = fmul fast float %3830, %2724
  %3845 = call float @dx.op.tertiary.f32(i32 46, float %2725, float %3831, float %3844)  ; FMad(a,b,c)
  %3846 = call float @dx.op.tertiary.f32(i32 46, float %2726, float %3832, float %3845)  ; FMad(a,b,c)
  %3847 = fadd fast float %3846, %3833
  %3848 = fmul fast float %3835, %2724
  %3849 = call float @dx.op.tertiary.f32(i32 46, float %2725, float %3836, float %3848)  ; FMad(a,b,c)
  %3850 = call float @dx.op.tertiary.f32(i32 46, float %2726, float %3837, float %3849)  ; FMad(a,b,c)
  %3851 = fadd fast float %3850, %3838
  %3852 = fmul fast float %3840, %2724
  %3853 = call float @dx.op.tertiary.f32(i32 46, float %2725, float %3841, float %3852)  ; FMad(a,b,c)
  %3854 = call float @dx.op.tertiary.f32(i32 46, float %2726, float %3842, float %3853)  ; FMad(a,b,c)
  %3855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %3856 = extractvalue %dx.types.CBufRet.f32 %3855, 0
  %3857 = extractvalue %dx.types.CBufRet.f32 %3855, 1
  %3858 = extractvalue %dx.types.CBufRet.f32 %3855, 3
  %3859 = fmul fast float %3858, %3847
  %3860 = fmul fast float %3858, %3851
  %3861 = fadd fast float %3859, %3856
  %3862 = fadd fast float %3860, %3857
  %3863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %3864 = extractvalue %dx.types.CBufRet.f32 %3863, 0
  %3865 = extractvalue %dx.types.CBufRet.f32 %3863, 1
  %3866 = fsub fast float %3861, %3864
  %3867 = fsub fast float %3862, %3865
  %3868 = fcmp fast olt float %3866, 0.000000e+00
  %3869 = fcmp fast olt float %3867, 0.000000e+00
  %3870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %3871 = extractvalue %dx.types.CBufRet.f32 %3870, 0
  %3872 = extractvalue %dx.types.CBufRet.f32 %3870, 1
  %3873 = extractvalue %dx.types.CBufRet.f32 %3870, 2
  %3874 = extractvalue %dx.types.CBufRet.f32 %3870, 3
  %3875 = select i1 %3868, float %3871, float %3873
  %3876 = select i1 %3869, float %3872, float %3874
  %3877 = fmul fast float %3875, %3866
  %3878 = fmul fast float %3876, %3867
  %3879 = call float @dx.op.unary.f32(i32 6, float %3877)  ; FAbs(value)
  %3880 = call float @dx.op.unary.f32(i32 6, float %3878)  ; FAbs(value)
  %3881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3882 = extractvalue %dx.types.CBufRet.f32 %3881, 0
  %3883 = call float @dx.op.binary.f32(i32 35, float %3879, float %3880)  ; FMax(a,b)
  %3884 = fsub fast float %3882, %3883
  %3885 = call float @dx.op.unary.f32(i32 7, float %3884)  ; Saturate(value)
  %3886 = fcmp fast ogt float %3885, 0.000000e+00
  br i1 %3886, label %3887, label %3928, !dx.controlflow.hints !152

; <label>:3887                                    ; preds = %3828
  %3888 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %45, float %3861, float %3862, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3889 = extractvalue %dx.types.ResRet.f32 %3888, 1
  %3890 = fcmp fast ogt float %3889, 0.000000e+00
  br i1 %3890, label %3891, label %3924

; <label>:3891                                    ; preds = %3887
  %3892 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %45, float %3861, float %3862, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3893 = extractvalue %dx.types.ResRet.f32 %3892, 0
  %3894 = extractvalue %dx.types.ResRet.f32 %3892, 1
  %3895 = extractvalue %dx.types.ResRet.f32 %3892, 2
  %3896 = extractvalue %dx.types.ResRet.f32 %3892, 3
  %3897 = fsub fast float 1.000000e+00, %3843
  %3898 = fsub fast float %3897, %3854
  %3899 = fmul fast float %3898, 0x400921FB60000000
  %3900 = fadd fast float %3899, 0x3FF921FB60000000
  %3901 = call float @dx.op.unary.f32(i32 13, float %3900)  ; Sin(value)
  %3902 = fadd fast float %3901, -1.000000e+00
  %3903 = fmul fast float %3902, 0x3FD45F3060000000
  %3904 = fmul fast float %3898, 0x401921FB60000000
  %3905 = fadd fast float %3904, 0x400921FB60000000
  %3906 = call float @dx.op.unary.f32(i32 13, float %3905)  ; Sin(value)
  %3907 = fadd fast float %3906, 0x3E7777A5C0000000
  %3908 = fmul fast float %3907, 0x3FC45F3060000000
  %3909 = fmul fast float %3898, 0x4022D97C80000000
  %3910 = fadd fast float %3909, 0x4012D97C80000000
  %3911 = call float @dx.op.unary.f32(i32 13, float %3910)  ; Sin(value)
  %3912 = fadd fast float %3911, 1.000000e+00
  %3913 = fmul fast float %3912, 0x3FBB2995E0000000
  %3914 = fmul fast float %3898, 0x402921FB60000000
  %3915 = fadd fast float %3914, 0x401921FB60000000
  %3916 = call float @dx.op.unary.f32(i32 13, float %3915)  ; Sin(value)
  %3917 = fadd fast float %3916, 0xBE8777A5C0000000
  %3918 = fmul fast float %3917, 0x3FB45F3060000000
  %3919 = call float @dx.op.dot4.f32(i32 56, float %3893, float %3894, float %3895, float %3896, float %3903, float %3908, float %3913, float %3918)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3920 = fmul fast float %3919, 0xBFF7154760000000
  %3921 = call float @dx.op.unary.f32(i32 21, float %3920)  ; Exp(value)
  %3922 = call float @dx.op.unary.f32(i32 7, float %3921)  ; Saturate(value)
  %3923 = fadd float %3922, -1.000000e+00
  br label %3924

; <label>:3924                                    ; preds = %3891, %3887
  %3925 = phi float [ %3923, %3891 ], [ 0.000000e+00, %3887 ]
  %3926 = fmul fast float %3925, %3885
  %3927 = fadd fast float %3926, 1.000000e+00
  br label %3928

; <label>:3928                                    ; preds = %3924, %3828
  %3929 = phi float [ %3927, %3924 ], [ 1.000000e+00, %3828 ]
  %3930 = fmul fast float %3929, %3824
  %3931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3932 = extractvalue %dx.types.CBufRet.f32 %3931, 0
  %3933 = extractvalue %dx.types.CBufRet.f32 %3931, 1
  %3934 = extractvalue %dx.types.CBufRet.f32 %3931, 2
  %3935 = fadd fast float %3932, %445
  %3936 = fadd fast float %3933, %446
  %3937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %3938 = extractvalue %dx.types.CBufRet.f32 %3937, 1
  %3939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3940 = extractvalue %dx.types.CBufRet.f32 %3939, 0
  %3941 = extractvalue %dx.types.CBufRet.f32 %3939, 1
  %3942 = extractvalue %dx.types.CBufRet.f32 %3939, 2
  %3943 = fsub fast float -0.000000e+00, %3935
  %3944 = fsub fast float -0.000000e+00, %3936
  %3945 = fsub fast float %582, %3934
  %3946 = fadd fast float %3945, %3938
  %3947 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3943, float %3944, float %3946)  ; Dot3(ax,ay,az,bx,by,bz)
  %3948 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3940, float %3941, float %3942)  ; Dot3(ax,ay,az,bx,by,bz)
  %3949 = fdiv fast float 1.000000e+00, %3948
  %3950 = fmul fast float %3949, %3947
  %3951 = fmul fast float %3940, %3950
  %3952 = fmul fast float %3941, %3950
  %3953 = fadd fast float %3951, %3935
  %3954 = fadd fast float %3952, %3936
  %3955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %3956 = extractvalue %dx.types.CBufRet.f32 %3955, 0
  %3957 = extractvalue %dx.types.CBufRet.f32 %3955, 1
  %3958 = fsub fast float %3953, %3956
  %3959 = fsub fast float %3954, %3957
  %3960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %3961 = extractvalue %dx.types.CBufRet.f32 %3960, 2
  %3962 = extractvalue %dx.types.CBufRet.f32 %3960, 3
  %3963 = fmul fast float %3958, %3961
  %3964 = fmul fast float %3959, %3962
  %3965 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %3966 = extractvalue %dx.types.CBufRet.i32 %3965, 3
  %3967 = icmp eq i32 %3966, 0
  br i1 %3967, label %3973, label %3968

; <label>:3968                                    ; preds = %3928
  %3969 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %44, float %3963, float %3964, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3970 = extractvalue %dx.types.ResRet.f32 %3969, 0
  %3971 = extractvalue %dx.types.ResRet.f32 %3969, 1
  %3972 = extractvalue %dx.types.ResRet.f32 %3969, 2
  br label %3978

; <label>:3973                                    ; preds = %3928
  %3974 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %45, float %3963, float %3964, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3975 = extractvalue %dx.types.ResRet.f32 %3974, 0
  %3976 = extractvalue %dx.types.ResRet.f32 %3974, 1
  %3977 = extractvalue %dx.types.ResRet.f32 %3974, 2
  br label %3978

; <label>:3978                                    ; preds = %3973, %3968
  %3979 = phi float [ %3970, %3968 ], [ %3975, %3973 ]
  %3980 = phi float [ %3971, %3968 ], [ %3976, %3973 ]
  %3981 = phi float [ %3972, %3968 ], [ %3977, %3973 ]
  %3982 = extractvalue %dx.types.CBufRet.f32 %3937, 2
  %3983 = fmul fast float %3982, %3979
  %3984 = extractvalue %dx.types.CBufRet.f32 %3937, 0
  %3985 = fsub fast float %3950, %3984
  %3986 = fsub fast float %3985, %3983
  %3987 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3986)  ; FMax(a,b)
  %3988 = fmul fast float %3987, %3980
  %3989 = call float @dx.op.binary.f32(i32 36, float %3981, float %3988)  ; FMin(a,b)
  %3990 = fmul fast float %3989, 0xBFF7154760000000
  %3991 = call float @dx.op.unary.f32(i32 21, float %3990)  ; Exp(value)
  %3992 = fmul fast float %3930, %3991
  br label %3993

; <label>:3993                                    ; preds = %3978, %3823
  %3994 = phi float [ %3992, %3978 ], [ %3824, %3823 ]
  %3995 = call float @dx.op.binary.f32(i32 36, float %3994, float %3994)  ; FMin(a,b)
  %3996 = call float @dx.op.binary.f32(i32 36, float %3994, float %3995)  ; FMin(a,b)
  %3997 = fcmp fast ogt float %3996, 0.000000e+00
  br i1 %3997, label %3998, label %4503, !dx.controlflow.hints !153

; <label>:3998                                    ; preds = %3993
  %3999 = fmul fast float %3994, %2716
  %4000 = fmul fast float %3994, %2717
  %4001 = fmul fast float %3994, %2718
  %4002 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4003 = extractvalue %dx.types.CBufRet.i32 %4002, 0
  %4004 = and i32 %4003, 64
  %4005 = icmp ne i32 %4004, 0
  %4006 = fcmp fast ule float %447, 0.000000e+00
  %4007 = fmul fast float %2705, 5.120000e+02
  %4008 = fmul fast float %2706, 5.120000e+02
  %4009 = fmul fast float %2707, 5.120000e+02
  %4010 = fadd fast float %4009, %447
  %4011 = fsub fast float -0.000000e+00, %4010
  %4012 = select i1 %4006, float %4010, float %4011
  %4013 = fsub fast float %4012, %447
  %4014 = call float @dx.op.dot3.f32(i32 55, float %4007, float %4008, float %4013, float %4007, float %4008, float %4013)  ; Dot3(ax,ay,az,bx,by,bz)
  %4015 = call float @dx.op.unary.f32(i32 25, float %4014)  ; Rsqrt(value)
  %4016 = fmul fast float %4015, %4007
  %4017 = fmul fast float %4015, %4008
  %4018 = fmul fast float %4015, %4013
  %4019 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %582)  ; Dot3(ax,ay,az,bx,by,bz)
  %4020 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4016, float %4017, float %4018)  ; Dot3(ax,ay,az,bx,by,bz)
  %4021 = fdiv fast float 1.000000e+00, %4020
  %4022 = fmul fast float %4021, %4019
  %4023 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %447, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4024 = fcmp fast ogt float %4023, 0.000000e+00
  %4025 = fcmp fast olt float %4023, 0.000000e+00
  %4026 = zext i1 %4024 to i32
  %4027 = zext i1 %4025 to i32
  %4028 = sub nsw i32 %4026, %4027
  %4029 = sitofp i32 %4028 to float
  %4030 = call float @dx.op.dot3.f32(i32 55, float %4007, float %4008, float %4012, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4031 = fcmp fast ogt float %4030, 0.000000e+00
  %4032 = fcmp fast olt float %4030, 0.000000e+00
  %4033 = zext i1 %4031 to i32
  %4034 = zext i1 %4032 to i32
  %4035 = sub nsw i32 %4033, %4034
  %4036 = sitofp i32 %4035 to float
  %4037 = fcmp fast une float %4029, %4036
  br i1 %4037, label %4038, label %4048

; <label>:4038                                    ; preds = %3998
  %4039 = fmul fast float %4022, %4018
  %4040 = fmul fast float %4022, %4017
  %4041 = fmul fast float %4022, %4016
  %4042 = fmul fast float %4041, %4041
  %4043 = fmul fast float %4040, %4040
  %4044 = fadd fast float %4042, %4043
  %4045 = fmul fast float %4039, %4039
  %4046 = fadd fast float %4044, %4045
  %4047 = call float @dx.op.unary.f32(i32 24, float %4046)  ; Sqrt(value)
  br label %4058

; <label>:4048                                    ; preds = %3998
  %4049 = icmp slt i32 %4028, 0
  br i1 %4049, label %4050, label %4058

; <label>:4050                                    ; preds = %4048
  %4051 = fsub fast float %447, %4012
  %4052 = fmul fast float %4007, %4007
  %4053 = fmul fast float %4008, %4008
  %4054 = fadd fast float %4052, %4053
  %4055 = fmul fast float %4051, %4051
  %4056 = fadd fast float %4054, %4055
  %4057 = call float @dx.op.unary.f32(i32 24, float %4056)  ; Sqrt(value)
  br label %4058

; <label>:4058                                    ; preds = %4050, %4048, %4038
  %4059 = phi float [ %4047, %4038 ], [ %4057, %4050 ], [ 0.000000e+00, %4048 ]
  %4060 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %4061 = extractvalue %dx.types.CBufRet.i32 %4060, 1
  %4062 = icmp ne i32 %4061, 0
  %4063 = and i1 %4006, %4062
  %4064 = call float @dx.op.dot3.f32(i32 55, float %4016, float %4017, float %4018, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4065 = fmul fast float %4064, %4064
  %4066 = fsub fast float 1.000000e+00, %4065
  %4067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4068 = extractvalue %dx.types.CBufRet.f32 %4067, 0
  %4069 = extractvalue %dx.types.CBufRet.f32 %4067, 1
  %4070 = extractvalue %dx.types.CBufRet.f32 %4067, 2
  %4071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4072 = extractvalue %dx.types.CBufRet.f32 %4071, 0
  %4073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4074 = extractvalue %dx.types.CBufRet.f32 %4073, 0
  %4075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4076 = extractvalue %dx.types.CBufRet.f32 %4075, 0
  %4077 = extractvalue %dx.types.CBufRet.f32 %4071, 1
  %4078 = extractvalue %dx.types.CBufRet.f32 %4073, 1
  %4079 = extractvalue %dx.types.CBufRet.f32 %4075, 1
  %4080 = extractvalue %dx.types.CBufRet.f32 %4071, 3
  %4081 = extractvalue %dx.types.CBufRet.f32 %4073, 3
  %4082 = extractvalue %dx.types.CBufRet.f32 %4075, 3
  %4083 = fadd fast float %4068, %445
  %4084 = fadd fast float %4069, %446
  %4085 = fadd fast float %4070, %447
  %4086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %4087 = extractvalue %dx.types.CBufRet.f32 %4086, 0
  %4088 = extractvalue %dx.types.CBufRet.f32 %4086, 1
  %4089 = extractvalue %dx.types.CBufRet.f32 %4086, 2
  %4090 = extractvalue %dx.types.CBufRet.f32 %4086, 3
  br i1 %4063, label %4091, label %4284

; <label>:4091                                    ; preds = %4058
  %4092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 349)  ; CBufferLoadLegacy(handle,regIndex)
  %4093 = extractvalue %dx.types.CBufRet.f32 %4092, 0
  %4094 = fmul fast float %4093, %4093
  %4095 = fmul fast float %4094, %4066
  %4096 = fsub fast float 1.000000e+00, %4095
  %4097 = fcmp fast oge float %4096, 0.000000e+00
  %4098 = fmul fast float %4093, %4016
  %4099 = fmul fast float %4093, %4017
  %4100 = fmul fast float %4093, %4018
  %4101 = call float @dx.op.unary.f32(i32 24, float %4096)  ; Sqrt(value)
  %4102 = fmul fast float %4093, %4064
  %4103 = fsub fast float -0.000000e+00, %4101
  %4104 = fsub fast float %4103, %4102
  %4105 = fadd fast float %4104, %4100
  %4106 = select i1 %4097, float %4098, float 0.000000e+00
  %4107 = select i1 %4097, float %4099, float 0.000000e+00
  %4108 = select i1 %4097, float %4105, float 0.000000e+00
  %4109 = fmul fast float %4106, %4059
  %4110 = fmul fast float %4107, %4059
  %4111 = fmul fast float %4108, %4059
  %4112 = fadd fast float %4083, %4109
  %4113 = fadd fast float %4112, %4080
  %4114 = fadd fast float %4084, %4110
  %4115 = fadd fast float %4114, %4081
  %4116 = fadd fast float %4085, %4111
  %4117 = fadd fast float %4116, %4082
  %4118 = fmul fast float %4113, %4072
  %4119 = call float @dx.op.tertiary.f32(i32 46, float %4115, float %4074, float %4118)  ; FMad(a,b,c)
  %4120 = call float @dx.op.tertiary.f32(i32 46, float %4117, float %4076, float %4119)  ; FMad(a,b,c)
  %4121 = fmul fast float %4113, %4077
  %4122 = call float @dx.op.tertiary.f32(i32 46, float %4115, float %4078, float %4121)  ; FMad(a,b,c)
  %4123 = call float @dx.op.tertiary.f32(i32 46, float %4117, float %4079, float %4122)  ; FMad(a,b,c)
  %4124 = fsub fast float %4120, %4080
  %4125 = fsub fast float %4124, %4087
  %4126 = fadd fast float %4125, %4089
  %4127 = fsub fast float %4123, %4081
  %4128 = fsub fast float %4127, %4088
  %4129 = fadd fast float %4128, %4089
  %4130 = fmul fast float %4126, %4090
  %4131 = fmul fast float %4129, %4090
  %4132 = call float @dx.op.unary.f32(i32 7, float %4130)  ; Saturate(value)
  %4133 = call float @dx.op.unary.f32(i32 7, float %4131)  ; Saturate(value)
  %4134 = fsub fast float 1.000000e+00, %4132
  %4135 = fsub fast float 1.000000e+00, %4133
  %4136 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %4134, float %4135, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4137 = extractvalue %dx.types.ResRet.f32 %4136, 0
  %4138 = fmul fast float %4137, 0x3FBC5ABC00000000
  %4139 = extractvalue %dx.types.CBufRet.f32 %4092, 1
  %4140 = fmul fast float %4139, %4139
  %4141 = fmul fast float %4140, %4066
  %4142 = fsub fast float 1.000000e+00, %4141
  %4143 = fcmp fast oge float %4142, 0.000000e+00
  %4144 = fmul fast float %4139, %4016
  %4145 = fmul fast float %4139, %4017
  %4146 = fmul fast float %4139, %4018
  %4147 = call float @dx.op.unary.f32(i32 24, float %4142)  ; Sqrt(value)
  %4148 = fmul fast float %4139, %4064
  %4149 = fsub fast float -0.000000e+00, %4147
  %4150 = fsub fast float %4149, %4148
  %4151 = fadd fast float %4150, %4146
  %4152 = select i1 %4143, float %4144, float 0.000000e+00
  %4153 = select i1 %4143, float %4145, float 0.000000e+00
  %4154 = select i1 %4143, float %4151, float 0.000000e+00
  %4155 = fmul fast float %4152, %4059
  %4156 = fmul fast float %4153, %4059
  %4157 = fmul fast float %4154, %4059
  %4158 = fadd fast float %4083, %4155
  %4159 = fadd fast float %4158, %4080
  %4160 = fadd fast float %4084, %4156
  %4161 = fadd fast float %4160, %4081
  %4162 = fadd fast float %4085, %4157
  %4163 = fadd fast float %4162, %4082
  %4164 = fmul fast float %4159, %4072
  %4165 = call float @dx.op.tertiary.f32(i32 46, float %4161, float %4074, float %4164)  ; FMad(a,b,c)
  %4166 = call float @dx.op.tertiary.f32(i32 46, float %4163, float %4076, float %4165)  ; FMad(a,b,c)
  %4167 = fmul fast float %4159, %4077
  %4168 = call float @dx.op.tertiary.f32(i32 46, float %4161, float %4078, float %4167)  ; FMad(a,b,c)
  %4169 = call float @dx.op.tertiary.f32(i32 46, float %4163, float %4079, float %4168)  ; FMad(a,b,c)
  %4170 = fsub fast float %4166, %4080
  %4171 = fsub fast float %4170, %4087
  %4172 = fadd fast float %4171, %4089
  %4173 = fsub fast float %4169, %4081
  %4174 = fsub fast float %4173, %4088
  %4175 = fadd fast float %4174, %4089
  %4176 = fmul fast float %4172, %4090
  %4177 = fmul fast float %4175, %4090
  %4178 = call float @dx.op.unary.f32(i32 7, float %4176)  ; Saturate(value)
  %4179 = call float @dx.op.unary.f32(i32 7, float %4177)  ; Saturate(value)
  %4180 = fsub fast float 1.000000e+00, %4178
  %4181 = fsub fast float 1.000000e+00, %4179
  %4182 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %4180, float %4181, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4183 = extractvalue %dx.types.ResRet.f32 %4182, 0
  %4184 = fmul fast float %4183, 0x3F9E4BBD60000000
  %4185 = extractvalue %dx.types.CBufRet.f32 %4092, 2
  %4186 = fmul fast float %4185, %4185
  %4187 = fmul fast float %4186, %4066
  %4188 = fsub fast float 1.000000e+00, %4187
  %4189 = fcmp fast oge float %4188, 0.000000e+00
  %4190 = fmul fast float %4185, %4016
  %4191 = fmul fast float %4185, %4017
  %4192 = fmul fast float %4185, %4018
  %4193 = call float @dx.op.unary.f32(i32 24, float %4188)  ; Sqrt(value)
  %4194 = fmul fast float %4185, %4064
  %4195 = fsub fast float -0.000000e+00, %4193
  %4196 = fsub fast float %4195, %4194
  %4197 = fadd fast float %4196, %4192
  %4198 = select i1 %4189, float %4190, float 0.000000e+00
  %4199 = select i1 %4189, float %4191, float 0.000000e+00
  %4200 = select i1 %4189, float %4197, float 0.000000e+00
  %4201 = fmul fast float %4198, %4059
  %4202 = fmul fast float %4199, %4059
  %4203 = fmul fast float %4200, %4059
  %4204 = fadd fast float %4083, %4201
  %4205 = fadd fast float %4204, %4080
  %4206 = fadd fast float %4084, %4202
  %4207 = fadd fast float %4206, %4081
  %4208 = fadd fast float %4085, %4203
  %4209 = fadd fast float %4208, %4082
  %4210 = fmul fast float %4205, %4072
  %4211 = call float @dx.op.tertiary.f32(i32 46, float %4207, float %4074, float %4210)  ; FMad(a,b,c)
  %4212 = call float @dx.op.tertiary.f32(i32 46, float %4209, float %4076, float %4211)  ; FMad(a,b,c)
  %4213 = fmul fast float %4205, %4077
  %4214 = call float @dx.op.tertiary.f32(i32 46, float %4207, float %4078, float %4213)  ; FMad(a,b,c)
  %4215 = call float @dx.op.tertiary.f32(i32 46, float %4209, float %4079, float %4214)  ; FMad(a,b,c)
  %4216 = fsub fast float %4212, %4080
  %4217 = fsub fast float %4216, %4087
  %4218 = fadd fast float %4217, %4089
  %4219 = fsub fast float %4215, %4081
  %4220 = fsub fast float %4219, %4088
  %4221 = fadd fast float %4220, %4089
  %4222 = fmul fast float %4218, %4090
  %4223 = fmul fast float %4221, %4090
  %4224 = call float @dx.op.unary.f32(i32 7, float %4222)  ; Saturate(value)
  %4225 = call float @dx.op.unary.f32(i32 7, float %4223)  ; Saturate(value)
  %4226 = fsub fast float 1.000000e+00, %4224
  %4227 = fsub fast float 1.000000e+00, %4225
  %4228 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %4226, float %4227, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4229 = extractvalue %dx.types.ResRet.f32 %4228, 0
  %4230 = fmul fast float %4229, 0x3FDDEACB00000000
  %4231 = fadd fast float %4230, %4184
  %4232 = extractvalue %dx.types.CBufRet.f32 %4092, 3
  %4233 = fmul fast float %4232, %4232
  %4234 = fmul fast float %4233, %4066
  %4235 = fsub fast float 1.000000e+00, %4234
  %4236 = fcmp fast oge float %4235, 0.000000e+00
  %4237 = fmul fast float %4232, %4016
  %4238 = fmul fast float %4232, %4017
  %4239 = fmul fast float %4232, %4018
  %4240 = call float @dx.op.unary.f32(i32 24, float %4235)  ; Sqrt(value)
  %4241 = fmul fast float %4232, %4064
  %4242 = fsub fast float -0.000000e+00, %4240
  %4243 = fsub fast float %4242, %4241
  %4244 = fadd fast float %4243, %4239
  %4245 = select i1 %4236, float %4237, float 0.000000e+00
  %4246 = select i1 %4236, float %4238, float 0.000000e+00
  %4247 = select i1 %4236, float %4244, float 0.000000e+00
  %4248 = fmul fast float %4245, %4059
  %4249 = fmul fast float %4246, %4059
  %4250 = fmul fast float %4247, %4059
  %4251 = fadd fast float %4083, %4248
  %4252 = fadd fast float %4251, %4080
  %4253 = fadd fast float %4084, %4249
  %4254 = fadd fast float %4253, %4081
  %4255 = fadd fast float %4085, %4250
  %4256 = fadd fast float %4255, %4082
  %4257 = fmul fast float %4252, %4072
  %4258 = call float @dx.op.tertiary.f32(i32 46, float %4254, float %4074, float %4257)  ; FMad(a,b,c)
  %4259 = call float @dx.op.tertiary.f32(i32 46, float %4256, float %4076, float %4258)  ; FMad(a,b,c)
  %4260 = fmul fast float %4252, %4077
  %4261 = call float @dx.op.tertiary.f32(i32 46, float %4254, float %4078, float %4260)  ; FMad(a,b,c)
  %4262 = call float @dx.op.tertiary.f32(i32 46, float %4256, float %4079, float %4261)  ; FMad(a,b,c)
  %4263 = fsub fast float %4259, %4080
  %4264 = fsub fast float %4263, %4087
  %4265 = fadd fast float %4264, %4089
  %4266 = fsub fast float %4262, %4081
  %4267 = fsub fast float %4266, %4088
  %4268 = fadd fast float %4267, %4089
  %4269 = fmul fast float %4265, %4090
  %4270 = fmul fast float %4268, %4090
  %4271 = call float @dx.op.unary.f32(i32 7, float %4269)  ; Saturate(value)
  %4272 = call float @dx.op.unary.f32(i32 7, float %4270)  ; Saturate(value)
  %4273 = fsub fast float 1.000000e+00, %4271
  %4274 = fsub fast float 1.000000e+00, %4272
  %4275 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %4273, float %4274, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4276 = extractvalue %dx.types.ResRet.f32 %4275, 0
  %4277 = fmul fast float %4276, 0x3FE0183CA0000000
  %4278 = fmul fast float %4276, 0x3FB51033E0000000
  %4279 = fadd fast float %4231, %4277
  %4280 = fadd fast float %4229, %4183
  %4281 = fmul fast float %4280, 0x3FD9D2A200000000
  %4282 = fadd fast float %4278, %4138
  %4283 = fadd fast float %4282, %4281
  br label %4330

; <label>:4284                                    ; preds = %4058
  %4285 = fmul fast float %4066, 0x3FE2024E20000000
  %4286 = fsub fast float 1.000000e+00, %4285
  %4287 = fcmp fast oge float %4286, 0.000000e+00
  %4288 = fmul fast float %4016, 0x3FE8018960000000
  %4289 = fmul fast float %4017, 0x3FE8018960000000
  %4290 = fmul fast float %4018, 0x3FE8018960000000
  %4291 = call float @dx.op.unary.f32(i32 24, float %4286)  ; Sqrt(value)
  %4292 = fmul fast float %4064, 0x3FE8018960000000
  %4293 = fsub fast float %4290, %4291
  %4294 = fsub fast float %4293, %4292
  %4295 = select i1 %4287, float %4288, float 0.000000e+00
  %4296 = select i1 %4287, float %4289, float 0.000000e+00
  %4297 = select i1 %4287, float %4294, float 0.000000e+00
  %4298 = select i1 %4006, float %4295, float %4016
  %4299 = select i1 %4006, float %4296, float %4017
  %4300 = select i1 %4006, float %4297, float %4018
  %4301 = fmul fast float %4298, %4059
  %4302 = fmul fast float %4299, %4059
  %4303 = fmul fast float %4300, %4059
  %4304 = fadd fast float %4083, %4301
  %4305 = fadd fast float %4304, %4080
  %4306 = fadd fast float %4084, %4302
  %4307 = fadd fast float %4306, %4081
  %4308 = fadd fast float %4085, %4303
  %4309 = fadd fast float %4308, %4082
  %4310 = fmul fast float %4305, %4072
  %4311 = call float @dx.op.tertiary.f32(i32 46, float %4307, float %4074, float %4310)  ; FMad(a,b,c)
  %4312 = call float @dx.op.tertiary.f32(i32 46, float %4309, float %4076, float %4311)  ; FMad(a,b,c)
  %4313 = fmul fast float %4305, %4077
  %4314 = call float @dx.op.tertiary.f32(i32 46, float %4307, float %4078, float %4313)  ; FMad(a,b,c)
  %4315 = call float @dx.op.tertiary.f32(i32 46, float %4309, float %4079, float %4314)  ; FMad(a,b,c)
  %4316 = fsub fast float %4312, %4080
  %4317 = fsub fast float %4316, %4087
  %4318 = fadd fast float %4317, %4089
  %4319 = fsub fast float %4315, %4081
  %4320 = fsub fast float %4319, %4088
  %4321 = fadd fast float %4320, %4089
  %4322 = fmul fast float %4318, %4090
  %4323 = fmul fast float %4321, %4090
  %4324 = call float @dx.op.unary.f32(i32 7, float %4322)  ; Saturate(value)
  %4325 = call float @dx.op.unary.f32(i32 7, float %4323)  ; Saturate(value)
  %4326 = fsub fast float 1.000000e+00, %4324
  %4327 = fsub fast float 1.000000e+00, %4325
  %4328 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %4326, float %4327, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4329 = extractvalue %dx.types.ResRet.f32 %4328, 0
  br label %4330

; <label>:4330                                    ; preds = %4284, %4091
  %4331 = phi float [ %4329, %4284 ], [ %4279, %4091 ]
  %4332 = phi float [ %4329, %4284 ], [ %4283, %4091 ]
  %4333 = phi float [ %4329, %4284 ], [ %4137, %4091 ]
  %4334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4335 = extractvalue %dx.types.CBufRet.f32 %4334, 0
  %4336 = call float @dx.op.unary.f32(i32 6, float %4335)  ; FAbs(value)
  %4337 = fmul fast float %4059, %4059
  %4338 = fadd fast float %4337, 1.000000e+00
  %4339 = fdiv fast float %4336, %4338
  %4340 = call float @dx.op.unary.f32(i32 7, float %4339)  ; Saturate(value)
  %4341 = call float @dx.op.unary.f32(i32 6, float %4064)  ; FAbs(value)
  %4342 = fsub fast float 1.000000e+00, %4341
  %4343 = bitcast float %4342 to i32
  %4344 = sitofp i32 %4343 to float
  %4345 = fptosi float %4344 to i32
  %4346 = bitcast i32 %4345 to float
  %4347 = fmul fast float %4346, 0x3FEF333340000000
  %4348 = fadd fast float %4347, 0x3F999999A0000000
  %4349 = call float @dx.op.unary.f32(i32 7, float %4348)  ; Saturate(value)
  %4350 = fsub fast float 1.000000e+00, %4349
  %4351 = fadd fast float %4331, 1.000000e+00
  %4352 = fadd fast float %4332, 1.000000e+00
  %4353 = fadd fast float %4333, 1.000000e+00
  %4354 = fmul fast float %4350, %4351
  %4355 = fmul fast float %4350, %4352
  %4356 = fmul fast float %4350, %4353
  %4357 = fmul fast float %4340, %4351
  %4358 = fmul fast float %4357, %4349
  %4359 = fmul fast float %4340, %4352
  %4360 = fmul fast float %4359, %4349
  %4361 = fmul fast float %4340, %4353
  %4362 = fmul fast float %4361, %4349
  %4363 = fadd fast float %4358, 1.000000e+00
  %4364 = fadd fast float %4360, 1.000000e+00
  %4365 = fadd fast float %4362, 1.000000e+00
  %4366 = call float @dx.op.unary.f32(i32 6, float %447)  ; FAbs(value)
  %4367 = call float @dx.op.unary.f32(i32 7, float %4366)  ; Saturate(value)
  %4368 = select i1 %4006, float %4354, float %4363
  %4369 = select i1 %4006, float %4355, float %4364
  %4370 = select i1 %4006, float %4356, float %4365
  %4371 = select i1 %4005, float %4367, float 0.000000e+00
  %4372 = fadd fast float %4368, -1.000000e+00
  %4373 = fadd fast float %4369, -1.000000e+00
  %4374 = fadd fast float %4370, -1.000000e+00
  %4375 = fmul fast float %4372, %4371
  %4376 = fmul fast float %4373, %4371
  %4377 = fmul fast float %4374, %4371
  %4378 = fadd fast float %4375, 1.000000e+00
  %4379 = fadd fast float %4376, 1.000000e+00
  %4380 = fadd fast float %4377, 1.000000e+00
  %4381 = fmul fast float %3999, %4378
  %4382 = fmul fast float %4000, %4379
  %4383 = fmul fast float %4001, %4380
  %4384 = fsub fast float %2705, %585
  %4385 = fsub fast float %2706, %586
  %4386 = fsub fast float %2707, %587
  %4387 = call float @dx.op.dot3.f32(i32 55, float %4384, float %4385, float %4386, float %4384, float %4385, float %4386)  ; Dot3(ax,ay,az,bx,by,bz)
  %4388 = call float @dx.op.unary.f32(i32 25, float %4387)  ; Rsqrt(value)
  %4389 = fmul fast float %4388, %4384
  %4390 = fmul fast float %4388, %4385
  %4391 = fmul fast float %4388, %4386
  %4392 = call float @dx.op.dot3.f32(i32 55, float %2705, float %2706, float %2707, float %367, float %368, float %369)  ; Dot3(ax,ay,az,bx,by,bz)
  %4393 = call float @dx.op.dot3.f32(i32 55, float %588, float %589, float %590, float %4389, float %4390, float %4391)  ; Dot3(ax,ay,az,bx,by,bz)
  %4394 = call float @dx.op.unary.f32(i32 7, float %4392)  ; Saturate(value)
  %4395 = fmul fast float %4394, %4394
  %4396 = fmul fast float %4395, 0x47DE623840000000
  %4397 = call float @dx.op.unary.f32(i32 7, float %4396)  ; Saturate(value)
  %4398 = fmul fast float %4397, %4394
  %4399 = call float @dx.op.dot3.f32(i32 55, float %367, float %368, float %369, float %4389, float %4390, float %4391)  ; Dot3(ax,ay,az,bx,by,bz)
  %4400 = fmul fast float %4399, %4399
  %4401 = call float @dx.op.unary.f32(i32 6, float %4392)  ; FAbs(value)
  %4402 = fsub fast float 1.000000e+00, %611
  %4403 = fmul fast float %593, %593
  %4404 = fmul fast float %4403, %4402
  %4405 = fadd fast float %4404, %611
  %4406 = bitcast float %4405 to i32
  %4407 = ashr i32 %4406, 1
  %4408 = add nsw i32 %4407, 532487669
  %4409 = bitcast i32 %4408 to float
  %4410 = fadd fast float %4409, %593
  %4411 = fmul fast float %611, %4400
  %4412 = fsub fast float 1.000000e+00, %4400
  %4413 = fadd fast float %4412, %4411
  %4414 = fmul fast float %4401, %4401
  %4415 = fmul fast float %4414, %4402
  %4416 = fadd fast float %4415, %611
  %4417 = bitcast float %4416 to i32
  %4418 = ashr i32 %4417, 1
  %4419 = add nsw i32 %4418, 532487669
  %4420 = bitcast i32 %4419 to float
  %4421 = fadd fast float %4420, %4401
  %4422 = fmul fast float %4413, %4413
  %4423 = fmul fast float %4422, %4410
  %4424 = fmul fast float %4423, %4421
  %4425 = fdiv fast float 0x3FF0A00000000000, %4424
  %4426 = fmul fast float %4425, %611
  %4427 = call float @dx.op.unary.f32(i32 6, float %4393)  ; FAbs(value)
  %4428 = fsub fast float 1.000000e+00, %4427
  %4429 = bitcast float %4428 to i32
  %4430 = sitofp i32 %4429 to float
  %4431 = fmul fast float %4430, 5.000000e+00
  %4432 = fadd fast float %4431, 0xC1EFBF8940000000
  %4433 = fptosi float %4432 to i32
  %4434 = bitcast i32 %4433 to float
  %4435 = fsub fast float 1.000000e+00, %568
  %4436 = fsub fast float 1.000000e+00, %569
  %4437 = fsub fast float 1.000000e+00, %591
  %4438 = fmul fast float %4434, %4435
  %4439 = fmul fast float %4434, %4436
  %4440 = fmul fast float %4434, %4437
  %4441 = fadd fast float %4438, %568
  %4442 = fadd fast float %4439, %569
  %4443 = fadd fast float %4440, %591
  %4444 = fmul fast float %4392, 9.843750e-01
  %4445 = fadd fast float %4444, 7.812500e-03
  %4446 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %45, float %4445, float %2185, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4447 = extractvalue %dx.types.ResRet.f32 %4446, 2
  %4448 = extractvalue %dx.types.ResRet.f32 %4446, 3
  %4449 = fmul fast float %4447, %568
  %4450 = fmul fast float %4447, %569
  %4451 = fmul fast float %4447, %591
  %4452 = fadd fast float %4449, %4448
  %4453 = fadd fast float %4450, %4448
  %4454 = fadd fast float %4451, %4448
  %4455 = call float @dx.op.binary.f32(i32 35, float %4453, float %4454)  ; FMax(a,b)
  %4456 = call float @dx.op.binary.f32(i32 35, float %4452, float %4455)  ; FMax(a,b)
  %4457 = fsub fast float 1.000000e+00, %4456
  %4458 = fsub fast float -0.000000e+00, %367
  %4459 = fsub fast float -0.000000e+00, %368
  %4460 = fsub fast float -0.000000e+00, %369
  %4461 = call float @dx.op.dot3.f32(i32 55, float %2705, float %2706, float %2707, float %4458, float %4459, float %4460)  ; Dot3(ax,ay,az,bx,by,bz)
  %4462 = call float @dx.op.unary.f32(i32 7, float %4461)  ; Saturate(value)
  %4463 = fmul fast float %4462, 9.843750e-01
  %4464 = fadd fast float %4463, 7.812500e-03
  %4465 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %45, float %4464, float %2185, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4466 = extractvalue %dx.types.ResRet.f32 %4465, 2
  %4467 = extractvalue %dx.types.ResRet.f32 %4465, 3
  %4468 = fmul fast float %4466, %568
  %4469 = fmul fast float %4466, %569
  %4470 = fmul fast float %4466, %591
  %4471 = fadd fast float %4468, %4467
  %4472 = fadd fast float %4469, %4467
  %4473 = fadd fast float %4470, %4467
  %4474 = call float @dx.op.binary.f32(i32 35, float %4472, float %4473)  ; FMax(a,b)
  %4475 = call float @dx.op.binary.f32(i32 35, float %4471, float %4474)  ; FMax(a,b)
  %4476 = fsub fast float 1.000000e+00, %4475
  %4477 = fmul fast float %4476, %4462
  %4478 = fmul fast float %4477, %386
  %4479 = fmul fast float %4477, %387
  %4480 = fmul fast float %4477, %388
  %4481 = fmul fast float %4457, %4398
  %4482 = fadd fast float %4478, %4481
  %4483 = fadd fast float %4479, %4481
  %4484 = fadd fast float %4480, %4481
  %4485 = fmul fast float %4482, %4381
  %4486 = fmul fast float %4483, %4382
  %4487 = fmul fast float %4484, %4383
  %4488 = fadd fast float %4485, %2696
  %4489 = fadd fast float %4486, %2698
  %4490 = fadd fast float %4487, %2700
  %4491 = fmul fast float %4398, %4381
  %4492 = fmul fast float %4491, %4426
  %4493 = fmul fast float %4492, %4441
  %4494 = fmul fast float %4398, %4382
  %4495 = fmul fast float %4494, %4426
  %4496 = fmul fast float %4495, %4442
  %4497 = fmul fast float %4398, %4383
  %4498 = fmul fast float %4497, %4426
  %4499 = fmul fast float %4498, %4443
  %4500 = fadd fast float %4493, %2689
  %4501 = fadd fast float %4496, %2690
  %4502 = fadd fast float %4499, %2691
  br label %4503

; <label>:4503                                    ; preds = %4330, %3993, %2685
  %4504 = phi float [ %2689, %2685 ], [ %2689, %3993 ], [ %4500, %4330 ]
  %4505 = phi float [ %2690, %2685 ], [ %2690, %3993 ], [ %4501, %4330 ]
  %4506 = phi float [ %2691, %2685 ], [ %2691, %3993 ], [ %4502, %4330 ]
  %4507 = phi float [ %2696, %2685 ], [ %2696, %3993 ], [ %4488, %4330 ]
  %4508 = phi float [ %2698, %2685 ], [ %2698, %3993 ], [ %4489, %4330 ]
  %4509 = phi float [ %2700, %2685 ], [ %2700, %3993 ], [ %4490, %4330 ]
  %4510 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4511 = extractvalue %dx.types.CBufRet.i32 %4510, 0
  %4512 = icmp eq i32 %4511, 0
  br i1 %4512, label %5571, label %4513

; <label>:4513                                    ; preds = %4503
  %4514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4515 = extractvalue %dx.types.CBufRet.f32 %4514, 2
  %4516 = extractvalue %dx.types.CBufRet.f32 %4514, 3
  %4517 = fmul fast float %4515, %98
  %4518 = fmul fast float %4516, %99
  %4519 = fptoui float %4517 to i32
  %4520 = fptoui float %4518 to i32
  %4521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4522 = extractvalue %dx.types.CBufRet.f32 %4521, 0
  %4523 = extractvalue %dx.types.CBufRet.f32 %4521, 2
  %4524 = extractvalue %dx.types.CBufRet.f32 %4521, 3
  %4525 = fadd fast float %411, -4.000000e+00
  %4526 = call float @dx.op.binary.f32(i32 35, float %4525, float 0.000000e+00)  ; FMax(a,b)
  %4527 = fadd fast float %4526, %4522
  %4528 = fmul fast float %4527, %4523
  %4529 = call float @dx.op.unary.f32(i32 23, float %4528)  ; Log(value)
  %4530 = fmul fast float %4529, %4524
  %4531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4532 = extractvalue %dx.types.CBufRet.f32 %4531, 2
  %4533 = fmul fast float %4530, %4532
  %4534 = call float @dx.op.unary.f32(i32 7, float %4533)  ; Saturate(value)
  %4535 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4536 = extractvalue %dx.types.CBufRet.i32 %4535, 1
  %4537 = add i32 %4536, -1
  %4538 = uitofp i32 %4536 to float
  %4539 = fmul fast float %4538, %4534
  %4540 = fptoui float %4539 to i32
  %4541 = call i32 @dx.op.binary.i32(i32 40, i32 %4540, i32 %4537)  ; UMin(a,b)
  %4542 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4543 = extractvalue %dx.types.CBufRet.i32 %4542, 2
  %4544 = extractvalue %dx.types.CBufRet.i32 %4542, 3
  %4545 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4520, i32 %4543, i32 %4519)  ; UMad(a,b,c)
  %4546 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4541, i32 %4544, i32 %4545)  ; UMad(a,b,c)
  %4547 = add nsw i32 %4511, -1
  %4548 = call i32 @dx.op.binary.i32(i32 37, i32 %4547, i32 0)  ; IMax(a,b)
  %4549 = call float @dx.op.binary.f32(i32 35, float %411, float 0.000000e+00)  ; FMax(a,b)
  %4550 = fptoui float %4549 to i32
  %4551 = lshr i32 %4550, 5
  %4552 = call i32 @dx.op.binary.i32(i32 40, i32 %4551, i32 8191)  ; UMin(a,b)
  %4553 = shl i32 %4552, 2
  %4554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4553, i32 undef)  ; BufferLoad(srv,index,wot)
  %4555 = extractvalue %dx.types.ResRet.i32 %4554, 0
  %4556 = lshr i32 %4555, 16
  %4557 = and i32 %4555, 65535
  %4558 = lshr i32 %4555, 21
  %4559 = lshr i32 %4557, 5
  %4560 = call i32 @dx.op.binary.i32(i32 40, i32 %4559, i32 %4548)  ; UMin(a,b)
  %4561 = icmp ugt i32 %4558, %4560
  br i1 %4561, label %5571, label %4562

; <label>:4562                                    ; preds = %4513
  br label %4563

; <label>:4563                                    ; preds = %5561, %4562
  %4564 = phi i32 [ %5568, %5561 ], [ %4558, %4562 ]
  %4565 = phi float [ %5562, %5561 ], [ %4504, %4562 ]
  %4566 = phi float [ %5563, %5561 ], [ %4505, %4562 ]
  %4567 = phi float [ %5564, %5561 ], [ %4506, %4562 ]
  %4568 = phi float [ %5565, %5561 ], [ %4507, %4562 ]
  %4569 = phi float [ %5566, %5561 ], [ %4508, %4562 ]
  %4570 = phi float [ %5567, %5561 ], [ %4509, %4562 ]
  %4571 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4572 = extractvalue %dx.types.CBufRet.i32 %4571, 0
  %4573 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4546, i32 %4572, i32 %4564)  ; UMad(a,b,c)
  %4574 = shl i32 %4573, 2
  %4575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4574, i32 undef)  ; BufferLoad(srv,index,wot)
  %4576 = extractvalue %dx.types.ResRet.i32 %4575, 0
  %4577 = shl i32 %4564, 5
  %4578 = sub nsw i32 %4556, %4577
  %4579 = call i32 @dx.op.binary.i32(i32 37, i32 %4578, i32 0)  ; IMax(a,b)
  %4580 = call i32 @dx.op.binary.i32(i32 38, i32 %4579, i32 31)  ; IMin(a,b)
  %4581 = sub nsw i32 1, %4556
  %4582 = add nsw i32 %4581, %4557
  %4583 = call i32 @dx.op.binary.i32(i32 37, i32 %4582, i32 0)  ; IMax(a,b)
  %4584 = call i32 @dx.op.binary.i32(i32 38, i32 %4583, i32 32)  ; IMin(a,b)
  %4585 = and i32 %4584, 31
  %4586 = shl i32 -1, %4585
  %4587 = xor i32 %4586, -1
  %4588 = and i32 %4580, 31
  %4589 = shl i32 %4587, %4588
  %4590 = icmp eq i32 %4584, 32
  %4591 = select i1 %4590, i32 -1, i32 %4589
  %4592 = and i32 %4591, %4576
  %4593 = icmp eq i32 %4592, 0
  br i1 %4593, label %5561, label %4594

; <label>:4594                                    ; preds = %4563
  br label %4595

; <label>:4595                                    ; preds = %4752, %4594
  %4596 = phi i32 [ %4607, %4752 ], [ %4592, %4594 ]
  %4597 = phi float [ %4753, %4752 ], [ %4565, %4594 ]
  %4598 = phi float [ %4754, %4752 ], [ %4566, %4594 ]
  %4599 = phi float [ %4755, %4752 ], [ %4567, %4594 ]
  %4600 = phi float [ %4756, %4752 ], [ %4568, %4594 ]
  %4601 = phi float [ %4757, %4752 ], [ %4569, %4594 ]
  %4602 = phi float [ %4758, %4752 ], [ %4570, %4594 ]
  %4603 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4596)  ; FirstbitLo(value)
  %4604 = add i32 %4603, %4577
  %4605 = and i32 %4603, 31
  %4606 = shl i32 1, %4605
  %4607 = xor i32 %4606, %4596
  %4608 = mul i32 %4604, 112
  %4609 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %4608, i32 undef)  ; BufferLoad(srv,index,wot)
  %4610 = extractvalue %dx.types.ResRet.f32 %4609, 0
  %4611 = extractvalue %dx.types.ResRet.f32 %4609, 1
  %4612 = extractvalue %dx.types.ResRet.f32 %4609, 2
  %4613 = or i32 %4608, 12
  %4614 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %4613, i32 undef)  ; BufferLoad(srv,index,wot)
  %4615 = extractvalue %dx.types.ResRet.f32 %4614, 0
  %4616 = add i32 %4608, 16
  %4617 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %4616, i32 undef)  ; BufferLoad(srv,index,wot)
  %4618 = extractvalue %dx.types.ResRet.f32 %4617, 0
  %4619 = extractvalue %dx.types.ResRet.f32 %4617, 1
  %4620 = extractvalue %dx.types.ResRet.f32 %4617, 2
  %4621 = add i32 %4608, 28
  %4622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %4621, i32 undef)  ; BufferLoad(srv,index,wot)
  %4623 = extractvalue %dx.types.ResRet.i32 %4622, 0
  %4624 = add i32 %4608, 32
  %4625 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %4624, i32 undef)  ; BufferLoad(srv,index,wot)
  %4626 = extractvalue %dx.types.ResRet.f32 %4625, 0
  %4627 = extractvalue %dx.types.ResRet.f32 %4625, 1
  %4628 = extractvalue %dx.types.ResRet.f32 %4625, 2
  %4629 = add i32 %4608, 44
  %4630 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %4629, i32 undef)  ; BufferLoad(srv,index,wot)
  %4631 = extractvalue %dx.types.ResRet.f32 %4630, 0
  %4632 = add i32 %4608, 48
  %4633 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %4632, i32 undef)  ; BufferLoad(srv,index,wot)
  %4634 = extractvalue %dx.types.ResRet.f32 %4633, 0
  %4635 = extractvalue %dx.types.ResRet.f32 %4633, 1
  %4636 = extractvalue %dx.types.ResRet.f32 %4633, 2
  %4637 = fsub fast float -0.000000e+00, %4636
  %4638 = extractvalue %dx.types.ResRet.f32 %4633, 3
  %4639 = add i32 %4608, 64
  %4640 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %4639, i32 undef)  ; BufferLoad(srv,index,wot)
  %4641 = extractvalue %dx.types.ResRet.f32 %4640, 0
  %4642 = extractvalue %dx.types.ResRet.f32 %4640, 1
  %4643 = extractvalue %dx.types.ResRet.f32 %4640, 2
  %4644 = extractvalue %dx.types.ResRet.f32 %4640, 3
  %4645 = add i32 %4608, 80
  %4646 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %4645, i32 undef)  ; BufferLoad(srv,index,wot)
  %4647 = extractvalue %dx.types.ResRet.f32 %4646, 1
  %4648 = extractvalue %dx.types.ResRet.f32 %4646, 2
  %4649 = add i32 %4608, 92
  %4650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %4649, i32 undef)  ; BufferLoad(srv,index,wot)
  %4651 = extractvalue %dx.types.ResRet.i32 %4650, 0
  %4652 = call float @dx.op.dot3.f32(i32 55, float %4610, float %4611, float %4612, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4653 = select i1 %172, float %4647, float %4610
  %4654 = select i1 %172, float %4652, float %4611
  %4655 = select i1 %172, float %4648, float %4612
  %4656 = and i32 %4651, 65535
  %4657 = uitofp i32 %4656 to float
  %4658 = lshr i32 %4651, 16
  %4659 = uitofp i32 %4658 to float
  %4660 = and i32 %4623, 65535
  %4661 = and i32 %4623, 50331648
  %4662 = icmp eq i32 %4661, 33554432
  %4663 = call float @dx.op.dot3.f32(i32 55, float %4626, float %4627, float %4628, float %4626, float %4627, float %4628)  ; Dot3(ax,ay,az,bx,by,bz)
  %4664 = fsub fast float %445, %4634
  %4665 = fsub fast float %446, %4635
  %4666 = fsub fast float %447, %4636
  %4667 = call float @dx.op.dot3.f32(i32 55, float %4664, float %4665, float %4666, float %4626, float %4627, float %4628)  ; Dot3(ax,ay,az,bx,by,bz)
  %4668 = fdiv fast float %4667, %4663
  %4669 = call float @dx.op.binary.f32(i32 35, float %4668, float -1.000000e+00)  ; FMax(a,b)
  %4670 = call float @dx.op.binary.f32(i32 36, float %4669, float 1.000000e+00)  ; FMin(a,b)
  %4671 = fmul fast float %4670, %4626
  %4672 = fmul fast float %4670, %4627
  %4673 = fmul fast float %4670, %4628
  %4674 = fadd fast float %4671, %4634
  %4675 = fadd fast float %4672, %4635
  %4676 = fadd fast float %4673, %4636
  %4677 = fsub fast float %4674, %445
  %4678 = fsub fast float %4675, %446
  %4679 = fsub fast float %4676, %447
  %4680 = call float @dx.op.dot3.f32(i32 55, float %4677, float %4678, float %4679, float %4677, float %4678, float %4679)  ; Dot3(ax,ay,az,bx,by,bz)
  %4681 = call float @dx.op.unary.f32(i32 24, float %4680)  ; Sqrt(value)
  %4682 = fdiv fast float 1.000000e+00, %4681
  %4683 = fmul fast float %4677, %4682
  %4684 = fmul fast float %4678, %4682
  %4685 = fmul fast float %4679, %4682
  %4686 = fadd fast float %4681, %4615
  %4687 = fdiv fast float 1.000000e+00, %4686
  %4688 = fmul float %4631, %4687
  %4689 = fmul float %4688, %4688
  %4690 = call float @dx.op.unary.f32(i32 7, float %4689)  ; Saturate(value)
  br i1 %4662, label %4691, label %4715

; <label>:4691                                    ; preds = %4595
  %4692 = fmul fast float %4643, %4618
  %4693 = fmul fast float %4643, %4619
  %4694 = fmul fast float %4643, %4620
  %4695 = fsub fast float %4692, %445
  %4696 = fadd fast float %4695, %4674
  %4697 = fsub fast float %4693, %446
  %4698 = fadd fast float %4697, %4675
  %4699 = fsub fast float %4694, %447
  %4700 = fadd fast float %4699, %4676
  %4701 = call float @dx.op.dot3.f32(i32 55, float %4696, float %4698, float %4700, float %4696, float %4698, float %4700)  ; Dot3(ax,ay,az,bx,by,bz)
  %4702 = call float @dx.op.unary.f32(i32 25, float %4701)  ; Rsqrt(value)
  %4703 = fmul fast float %4702, %4696
  %4704 = fmul fast float %4702, %4698
  %4705 = fmul fast float %4702, %4700
  %4706 = fsub fast float %445, %4674
  %4707 = fsub fast float %446, %4675
  %4708 = fsub fast float %447, %4676
  %4709 = fsub fast float -0.000000e+00, %4706
  %4710 = fsub fast float -0.000000e+00, %4707
  %4711 = fsub fast float -0.000000e+00, %4708
  %4712 = call float @dx.op.dot3.f32(i32 55, float %4709, float %4710, float %4711, float %4618, float %4619, float %4620)  ; Dot3(ax,ay,az,bx,by,bz)
  %4713 = fcmp fast ogt float %4712, 0.000000e+00
  %4714 = uitofp i1 %4713 to float
  br label %4715

; <label>:4715                                    ; preds = %4691, %4595
  %4716 = phi float [ %4714, %4691 ], [ 1.000000e+00, %4595 ]
  %4717 = phi float [ %4703, %4691 ], [ %4683, %4595 ]
  %4718 = phi float [ %4704, %4691 ], [ %4684, %4595 ]
  %4719 = phi float [ %4705, %4691 ], [ %4685, %4595 ]
  %4720 = call float @dx.op.dot3.f32(i32 55, float %4618, float %4619, float %4620, float %4717, float %4718, float %4719)  ; Dot3(ax,ay,az,bx,by,bz)
  %4721 = fmul fast float %4720, %4720
  %4722 = call float @dx.op.unary.f32(i32 7, float %4721)  ; Saturate(value)
  %4723 = fsub fast float 1.000000e+00, %4722
  %4724 = fmul fast float %4723, 5.000000e-01
  %4725 = fcmp fast ogt float %4720, 0.000000e+00
  %4726 = fsub fast float 1.000000e+00, %4724
  %4727 = select i1 %4725, float %4724, float %4726
  %4728 = fmul fast float %4727, %4659
  %4729 = fadd fast float %4728, %4657
  %4730 = fmul fast float %4729, 0x3EF0001000000000
  %4731 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %45, float %4730, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4732 = extractvalue %dx.types.ResRet.f32 %4731, 0
  %4733 = fmul fast float %4720, %4641
  %4734 = fadd fast float %4733, %4642
  %4735 = call float @dx.op.unary.f32(i32 7, float %4734)  ; Saturate(value)
  %4736 = select i1 %4662, float 1.000000e+00, float %4735
  %4737 = select i1 %4662, float %4735, float 1.000000e+00
  %4738 = fmul fast float %4681, %4638
  %4739 = fsub fast float 1.000000e+00, %4738
  %4740 = fmul fast float %4739, %4644
  %4741 = call float @dx.op.unary.f32(i32 7, float %4740)  ; Saturate(value)
  %4742 = fmul fast float %4741, %4737
  %4743 = fmul fast float %4742, 2.000000e+00
  %4744 = fsub fast float 3.000000e+00, %4743
  %4745 = fmul fast float %4732, %4716
  %4746 = fmul fast float %4742, %4742
  %4747 = fmul fast float %4746, %4745
  %4748 = fmul fast float %4747, %4744
  %4749 = call float @dx.op.binary.f32(i32 36, float %4748, float %4748)  ; FMin(a,b)
  %4750 = call float @dx.op.binary.f32(i32 36, float %4748, float %4749)  ; FMin(a,b)
  %4751 = fcmp fast ogt float %4750, 0.000000e+00
  br i1 %4751, label %4760, label %4752, !dx.controlflow.hints !154

; <label>:4752                                    ; preds = %5242, %4906, %4715
  %4753 = phi float [ %4597, %4906 ], [ %4597, %4715 ], [ %5557, %5242 ]
  %4754 = phi float [ %4598, %4906 ], [ %4598, %4715 ], [ %5558, %5242 ]
  %4755 = phi float [ %4599, %4906 ], [ %4599, %4715 ], [ %5559, %5242 ]
  %4756 = phi float [ %4600, %4906 ], [ %4600, %4715 ], [ %5545, %5242 ]
  %4757 = phi float [ %4601, %4906 ], [ %4601, %4715 ], [ %5546, %5242 ]
  %4758 = phi float [ %4602, %4906 ], [ %4602, %4715 ], [ %5547, %5242 ]
  %4759 = icmp eq i32 %4596, %4606
  br i1 %4759, label %5560, label %4595

; <label>:4760                                    ; preds = %4715
  %4761 = icmp eq i32 %4660, 255
  br i1 %4761, label %4906, label %4762, !dx.controlflow.hints !155

; <label>:4762                                    ; preds = %4760
  %4763 = mul nuw nsw i32 %4660, 176
  %4764 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4763, i32 undef)  ; BufferLoad(srv,index,wot)
  %4765 = extractvalue %dx.types.ResRet.f32 %4764, 0
  %4766 = extractvalue %dx.types.ResRet.f32 %4764, 1
  %4767 = extractvalue %dx.types.ResRet.f32 %4764, 2
  %4768 = extractvalue %dx.types.ResRet.f32 %4764, 3
  %4769 = add nuw nsw i32 %4763, 16
  %4770 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4769, i32 undef)  ; BufferLoad(srv,index,wot)
  %4771 = extractvalue %dx.types.ResRet.f32 %4770, 0
  %4772 = extractvalue %dx.types.ResRet.f32 %4770, 1
  %4773 = add nuw nsw i32 %4763, 32
  %4774 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4773, i32 undef)  ; BufferLoad(srv,index,wot)
  %4775 = extractvalue %dx.types.ResRet.f32 %4774, 0
  %4776 = extractvalue %dx.types.ResRet.f32 %4774, 1
  %4777 = extractvalue %dx.types.ResRet.f32 %4774, 2
  %4778 = add nuw nsw i32 %4763, 48
  %4779 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4778, i32 undef)  ; BufferLoad(srv,index,wot)
  %4780 = extractvalue %dx.types.ResRet.f32 %4779, 0
  %4781 = extractvalue %dx.types.ResRet.f32 %4779, 1
  %4782 = extractvalue %dx.types.ResRet.f32 %4779, 2
  %4783 = extractvalue %dx.types.ResRet.f32 %4779, 3
  %4784 = add nuw nsw i32 %4763, 64
  %4785 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4784, i32 undef)  ; BufferLoad(srv,index,wot)
  %4786 = extractvalue %dx.types.ResRet.f32 %4785, 0
  %4787 = extractvalue %dx.types.ResRet.f32 %4785, 1
  %4788 = extractvalue %dx.types.ResRet.f32 %4785, 2
  %4789 = extractvalue %dx.types.ResRet.f32 %4785, 3
  %4790 = add nuw nsw i32 %4763, 80
  %4791 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4790, i32 undef)  ; BufferLoad(srv,index,wot)
  %4792 = extractvalue %dx.types.ResRet.f32 %4791, 0
  %4793 = extractvalue %dx.types.ResRet.f32 %4791, 1
  %4794 = extractvalue %dx.types.ResRet.f32 %4791, 2
  %4795 = extractvalue %dx.types.ResRet.f32 %4791, 3
  %4796 = add nuw nsw i32 %4763, 96
  %4797 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4796, i32 undef)  ; BufferLoad(srv,index,wot)
  %4798 = extractvalue %dx.types.ResRet.f32 %4797, 0
  %4799 = extractvalue %dx.types.ResRet.f32 %4797, 1
  %4800 = extractvalue %dx.types.ResRet.f32 %4797, 2
  %4801 = extractvalue %dx.types.ResRet.f32 %4797, 3
  %4802 = bitcast float %4772 to i32
  %4803 = fmul fast float %4777, %367
  %4804 = fmul fast float %4777, %368
  %4805 = fmul fast float %4777, %369
  %4806 = fadd fast float %4803, %445
  %4807 = fadd fast float %4804, %446
  %4808 = fadd fast float %4805, %447
  %4809 = fmul fast float %4806, %4780
  %4810 = call float @dx.op.tertiary.f32(i32 46, float %4807, float %4786, float %4809)  ; FMad(a,b,c)
  %4811 = call float @dx.op.tertiary.f32(i32 46, float %4808, float %4792, float %4810)  ; FMad(a,b,c)
  %4812 = fadd fast float %4811, %4798
  %4813 = fmul fast float %4806, %4781
  %4814 = call float @dx.op.tertiary.f32(i32 46, float %4807, float %4787, float %4813)  ; FMad(a,b,c)
  %4815 = call float @dx.op.tertiary.f32(i32 46, float %4808, float %4793, float %4814)  ; FMad(a,b,c)
  %4816 = fadd fast float %4815, %4799
  %4817 = fmul fast float %4806, %4782
  %4818 = call float @dx.op.tertiary.f32(i32 46, float %4807, float %4788, float %4817)  ; FMad(a,b,c)
  %4819 = call float @dx.op.tertiary.f32(i32 46, float %4808, float %4794, float %4818)  ; FMad(a,b,c)
  %4820 = fadd fast float %4819, %4800
  %4821 = fmul fast float %4806, %4783
  %4822 = call float @dx.op.tertiary.f32(i32 46, float %4807, float %4789, float %4821)  ; FMad(a,b,c)
  %4823 = call float @dx.op.tertiary.f32(i32 46, float %4808, float %4795, float %4822)  ; FMad(a,b,c)
  %4824 = fadd fast float %4823, %4801
  %4825 = fdiv fast float %4812, %4824
  %4826 = fdiv fast float %4816, %4824
  %4827 = fdiv fast float %4820, %4824
  %4828 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %4827)  ; FMax(a,b)
  %4829 = fmul fast float %356, 0x401921FB60000000
  %4830 = call float @dx.op.unary.f32(i32 13, float %4829)  ; Sin(value)
  %4831 = call float @dx.op.unary.f32(i32 12, float %4829)  ; Cos(value)
  %4832 = fmul fast float %4831, %4776
  %4833 = call float @dx.op.tertiary.f32(i32 46, float %4830, float %4776, float 0.000000e+00)  ; FMad(a,b,c)
  %4834 = fmul fast float %4776, %4830
  %4835 = fsub fast float -0.000000e+00, %4834
  %4836 = call float @dx.op.tertiary.f32(i32 46, float %4831, float %4776, float 0.000000e+00)  ; FMad(a,b,c)
  br label %4837

; <label>:4837                                    ; preds = %4837, %4762
  %4838 = phi float [ 0.000000e+00, %4762 ], [ %4870, %4837 ]
  %4839 = phi float [ 0.000000e+00, %4762 ], [ %4872, %4837 ]
  %4840 = phi i32 [ 0, %4762 ], [ %4873, %4837 ]
  %4841 = mul i32 %4840, 2
  %4842 = add i32 0, %4841
  %4843 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4842
  %4844 = load float, float* %4843, align 4
  %4845 = mul i32 %4840, 2
  %4846 = add i32 1, %4845
  %4847 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4846
  %4848 = load float, float* %4847, align 4
  %4849 = fmul fast float %4832, %4844
  %4850 = call float @dx.op.tertiary.f32(i32 46, float %4848, float %4835, float %4849)  ; FMad(a,b,c)
  %4851 = fmul fast float %4844, %4833
  %4852 = call float @dx.op.tertiary.f32(i32 46, float %4848, float %4836, float %4851)  ; FMad(a,b,c)
  %4853 = fadd fast float %4850, %4825
  %4854 = fadd fast float %4852, %4826
  %4855 = fmul fast float %4853, %4771
  %4856 = fmul fast float %4854, %4771
  %4857 = call float @dx.op.binary.f32(i32 35, float %4855, float %4767)  ; FMax(a,b)
  %4858 = call float @dx.op.binary.f32(i32 35, float %4856, float %4767)  ; FMax(a,b)
  %4859 = call float @dx.op.binary.f32(i32 36, float %4857, float %4768)  ; FMin(a,b)
  %4860 = call float @dx.op.binary.f32(i32 36, float %4858, float %4768)  ; FMin(a,b)
  %4861 = fadd fast float %4859, %4765
  %4862 = fadd fast float %4860, %4766
  %4863 = uitofp i32 %4802 to float
  %4864 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %46, float %4861, float %4862, float %4863, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4865 = extractvalue %dx.types.ResRet.f32 %4864, 0
  %4866 = fsub fast float %4865, %4828
  %4867 = fsub fast float %4866, %4775
  %4868 = fcmp fast ogt float %4867, 0.000000e+00
  %4869 = select i1 %4868, float 1.000000e+00, float 0.000000e+00
  %4870 = fadd fast float %4869, %4838
  %4871 = select i1 %4868, float %4867, float 0.000000e+00
  %4872 = fadd fast float %4871, %4839
  %4873 = add nuw nsw i32 %4840, 1
  %4874 = icmp eq i32 %4873, 8
  br i1 %4874, label %4875, label %4837

; <label>:4875                                    ; preds = %4837
  %4876 = fdiv fast float 1.000000e+00, %4870
  %4877 = fmul fast float %4876, %4872
  %4878 = fdiv fast float 1.000000e+00, %4828
  %4879 = fmul fast float %4877, %4878
  %4880 = call float @dx.op.unary.f32(i32 7, float %4879)  ; Saturate(value)
  %4881 = call float @dx.op.binary.f32(i32 35, float %4880, float 0.000000e+00)  ; FMax(a,b)
  %4882 = fmul fast float %4870, 1.250000e-01
  %4883 = call float @dx.op.unary.f32(i32 7, float %4882)  ; Saturate(value)
  %4884 = fmul fast float %4883, 2.000000e+00
  %4885 = fadd fast float %4884, -1.000000e+00
  %4886 = fcmp fast ogt float %4885, 0.000000e+00
  %4887 = fcmp fast olt float %4885, 0.000000e+00
  %4888 = zext i1 %4886 to i32
  %4889 = zext i1 %4887 to i32
  %4890 = sub nsw i32 %4888, %4889
  %4891 = sitofp i32 %4890 to float
  %4892 = fmul fast float %4891, %4885
  %4893 = fsub fast float 1.000000e+00, %4892
  %4894 = fmul fast float %4893, %4893
  %4895 = fmul fast float %4894, %4893
  %4896 = fsub fast float %4893, %4895
  %4897 = fmul fast float %4896, %4881
  %4898 = fsub fast float 1.000000e+00, %4895
  %4899 = fsub fast float %4898, %4897
  %4900 = fmul fast float %4891, 5.000000e-01
  %4901 = fmul fast float %4900, %4899
  %4902 = fsub fast float -5.000000e-01, %4901
  %4903 = fmul fast float %4902, %4736
  %4904 = fadd fast float %4903, 1.000000e+00
  %4905 = fmul fast float %4904, %4748
  br label %4906

; <label>:4906                                    ; preds = %4875, %4760
  %4907 = phi float [ %4905, %4875 ], [ %4748, %4760 ]
  %4908 = call float @dx.op.binary.f32(i32 36, float %4907, float %4907)  ; FMin(a,b)
  %4909 = call float @dx.op.binary.f32(i32 36, float %4907, float %4908)  ; FMin(a,b)
  %4910 = fcmp fast ogt float %4909, 0.000000e+00
  br i1 %4910, label %4911, label %4752, !dx.controlflow.hints !156

; <label>:4911                                    ; preds = %4906
  %4912 = fmul fast float %4907, %4653
  %4913 = fmul fast float %4907, %4654
  %4914 = fmul fast float %4907, %4655
  %4915 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4916 = extractvalue %dx.types.CBufRet.i32 %4915, 0
  %4917 = and i32 %4916, 64
  %4918 = icmp ne i32 %4917, 0
  %4919 = fcmp fast ogt float %4636, 0.000000e+00
  %4920 = fcmp fast ogt float %447, 0.000000e+00
  %4921 = xor i1 %4920, %4919
  %4922 = select i1 %4921, float %4636, float %4637
  %4923 = fsub fast float %4634, %445
  %4924 = fsub fast float %4635, %446
  %4925 = fsub fast float %4922, %447
  %4926 = call float @dx.op.dot3.f32(i32 55, float %4923, float %4924, float %4925, float %4923, float %4924, float %4925)  ; Dot3(ax,ay,az,bx,by,bz)
  %4927 = call float @dx.op.unary.f32(i32 25, float %4926)  ; Rsqrt(value)
  %4928 = fmul fast float %4927, %4923
  %4929 = fmul fast float %4927, %4924
  %4930 = fmul fast float %4927, %4925
  %4931 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %582)  ; Dot3(ax,ay,az,bx,by,bz)
  %4932 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4928, float %4929, float %4930)  ; Dot3(ax,ay,az,bx,by,bz)
  %4933 = fdiv fast float 1.000000e+00, %4932
  %4934 = fmul fast float %4933, %4931
  %4935 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %447, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4936 = fcmp fast ogt float %4935, 0.000000e+00
  %4937 = fcmp fast olt float %4935, 0.000000e+00
  %4938 = zext i1 %4936 to i32
  %4939 = zext i1 %4937 to i32
  %4940 = sub nsw i32 %4938, %4939
  %4941 = sitofp i32 %4940 to float
  %4942 = call float @dx.op.dot3.f32(i32 55, float %4923, float %4924, float %4922, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4943 = fcmp fast ogt float %4942, 0.000000e+00
  %4944 = fcmp fast olt float %4942, 0.000000e+00
  %4945 = zext i1 %4943 to i32
  %4946 = zext i1 %4944 to i32
  %4947 = sub nsw i32 %4945, %4946
  %4948 = sitofp i32 %4947 to float
  %4949 = fcmp fast une float %4941, %4948
  br i1 %4949, label %4950, label %4960

; <label>:4950                                    ; preds = %4911
  %4951 = fmul fast float %4934, %4930
  %4952 = fmul fast float %4934, %4929
  %4953 = fmul fast float %4934, %4928
  %4954 = fmul fast float %4953, %4953
  %4955 = fmul fast float %4952, %4952
  %4956 = fadd fast float %4954, %4955
  %4957 = fmul fast float %4951, %4951
  %4958 = fadd fast float %4956, %4957
  %4959 = call float @dx.op.unary.f32(i32 24, float %4958)  ; Sqrt(value)
  br label %4970

; <label>:4960                                    ; preds = %4911
  %4961 = icmp slt i32 %4940, 0
  br i1 %4961, label %4962, label %4970

; <label>:4962                                    ; preds = %4960
  %4963 = fsub fast float %447, %4922
  %4964 = fmul fast float %4664, %4664
  %4965 = fmul fast float %4665, %4665
  %4966 = fadd fast float %4964, %4965
  %4967 = fmul fast float %4963, %4963
  %4968 = fadd fast float %4966, %4967
  %4969 = call float @dx.op.unary.f32(i32 24, float %4968)  ; Sqrt(value)
  br label %4970

; <label>:4970                                    ; preds = %4962, %4960, %4950
  %4971 = phi float [ %4959, %4950 ], [ %4969, %4962 ], [ 0.000000e+00, %4960 ]
  %4972 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %4973 = extractvalue %dx.types.CBufRet.i32 %4972, 1
  %4974 = icmp ne i32 %4973, 0
  %4975 = and i1 %4921, %4974
  %4976 = call float @dx.op.dot3.f32(i32 55, float %4928, float %4929, float %4930, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4977 = fmul fast float %4976, %4976
  %4978 = fsub fast float 1.000000e+00, %4977
  %4979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4980 = extractvalue %dx.types.CBufRet.f32 %4979, 0
  %4981 = extractvalue %dx.types.CBufRet.f32 %4979, 1
  %4982 = extractvalue %dx.types.CBufRet.f32 %4979, 2
  %4983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4984 = extractvalue %dx.types.CBufRet.f32 %4983, 0
  %4985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4986 = extractvalue %dx.types.CBufRet.f32 %4985, 0
  %4987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4988 = extractvalue %dx.types.CBufRet.f32 %4987, 0
  %4989 = extractvalue %dx.types.CBufRet.f32 %4983, 1
  %4990 = extractvalue %dx.types.CBufRet.f32 %4985, 1
  %4991 = extractvalue %dx.types.CBufRet.f32 %4987, 1
  %4992 = extractvalue %dx.types.CBufRet.f32 %4983, 3
  %4993 = extractvalue %dx.types.CBufRet.f32 %4985, 3
  %4994 = extractvalue %dx.types.CBufRet.f32 %4987, 3
  %4995 = fadd fast float %4980, %445
  %4996 = fadd fast float %4981, %446
  %4997 = fadd fast float %4982, %447
  %4998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %4999 = extractvalue %dx.types.CBufRet.f32 %4998, 0
  %5000 = extractvalue %dx.types.CBufRet.f32 %4998, 1
  %5001 = extractvalue %dx.types.CBufRet.f32 %4998, 2
  %5002 = extractvalue %dx.types.CBufRet.f32 %4998, 3
  br i1 %4975, label %5003, label %5196

; <label>:5003                                    ; preds = %4970
  %5004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 349)  ; CBufferLoadLegacy(handle,regIndex)
  %5005 = extractvalue %dx.types.CBufRet.f32 %5004, 0
  %5006 = fmul fast float %5005, %5005
  %5007 = fmul fast float %5006, %4978
  %5008 = fsub fast float 1.000000e+00, %5007
  %5009 = fcmp fast oge float %5008, 0.000000e+00
  %5010 = fmul fast float %5005, %4928
  %5011 = fmul fast float %5005, %4929
  %5012 = fmul fast float %5005, %4930
  %5013 = call float @dx.op.unary.f32(i32 24, float %5008)  ; Sqrt(value)
  %5014 = fmul fast float %5005, %4976
  %5015 = fsub fast float -0.000000e+00, %5013
  %5016 = fsub fast float %5015, %5014
  %5017 = fadd fast float %5016, %5012
  %5018 = select i1 %5009, float %5010, float 0.000000e+00
  %5019 = select i1 %5009, float %5011, float 0.000000e+00
  %5020 = select i1 %5009, float %5017, float 0.000000e+00
  %5021 = fmul fast float %5018, %4971
  %5022 = fmul fast float %5019, %4971
  %5023 = fmul fast float %5020, %4971
  %5024 = fadd fast float %4995, %5021
  %5025 = fadd fast float %5024, %4992
  %5026 = fadd fast float %4996, %5022
  %5027 = fadd fast float %5026, %4993
  %5028 = fadd fast float %4997, %5023
  %5029 = fadd fast float %5028, %4994
  %5030 = fmul fast float %5025, %4984
  %5031 = call float @dx.op.tertiary.f32(i32 46, float %5027, float %4986, float %5030)  ; FMad(a,b,c)
  %5032 = call float @dx.op.tertiary.f32(i32 46, float %5029, float %4988, float %5031)  ; FMad(a,b,c)
  %5033 = fmul fast float %5025, %4989
  %5034 = call float @dx.op.tertiary.f32(i32 46, float %5027, float %4990, float %5033)  ; FMad(a,b,c)
  %5035 = call float @dx.op.tertiary.f32(i32 46, float %5029, float %4991, float %5034)  ; FMad(a,b,c)
  %5036 = fsub fast float %5032, %4992
  %5037 = fsub fast float %5036, %4999
  %5038 = fadd fast float %5037, %5001
  %5039 = fsub fast float %5035, %4993
  %5040 = fsub fast float %5039, %5000
  %5041 = fadd fast float %5040, %5001
  %5042 = fmul fast float %5038, %5002
  %5043 = fmul fast float %5041, %5002
  %5044 = call float @dx.op.unary.f32(i32 7, float %5042)  ; Saturate(value)
  %5045 = call float @dx.op.unary.f32(i32 7, float %5043)  ; Saturate(value)
  %5046 = fsub fast float 1.000000e+00, %5044
  %5047 = fsub fast float 1.000000e+00, %5045
  %5048 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %5046, float %5047, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5049 = extractvalue %dx.types.ResRet.f32 %5048, 0
  %5050 = fmul fast float %5049, 0x3FBC5ABC00000000
  %5051 = extractvalue %dx.types.CBufRet.f32 %5004, 1
  %5052 = fmul fast float %5051, %5051
  %5053 = fmul fast float %5052, %4978
  %5054 = fsub fast float 1.000000e+00, %5053
  %5055 = fcmp fast oge float %5054, 0.000000e+00
  %5056 = fmul fast float %5051, %4928
  %5057 = fmul fast float %5051, %4929
  %5058 = fmul fast float %5051, %4930
  %5059 = call float @dx.op.unary.f32(i32 24, float %5054)  ; Sqrt(value)
  %5060 = fmul fast float %5051, %4976
  %5061 = fsub fast float -0.000000e+00, %5059
  %5062 = fsub fast float %5061, %5060
  %5063 = fadd fast float %5062, %5058
  %5064 = select i1 %5055, float %5056, float 0.000000e+00
  %5065 = select i1 %5055, float %5057, float 0.000000e+00
  %5066 = select i1 %5055, float %5063, float 0.000000e+00
  %5067 = fmul fast float %5064, %4971
  %5068 = fmul fast float %5065, %4971
  %5069 = fmul fast float %5066, %4971
  %5070 = fadd fast float %4995, %5067
  %5071 = fadd fast float %5070, %4992
  %5072 = fadd fast float %4996, %5068
  %5073 = fadd fast float %5072, %4993
  %5074 = fadd fast float %4997, %5069
  %5075 = fadd fast float %5074, %4994
  %5076 = fmul fast float %5071, %4984
  %5077 = call float @dx.op.tertiary.f32(i32 46, float %5073, float %4986, float %5076)  ; FMad(a,b,c)
  %5078 = call float @dx.op.tertiary.f32(i32 46, float %5075, float %4988, float %5077)  ; FMad(a,b,c)
  %5079 = fmul fast float %5071, %4989
  %5080 = call float @dx.op.tertiary.f32(i32 46, float %5073, float %4990, float %5079)  ; FMad(a,b,c)
  %5081 = call float @dx.op.tertiary.f32(i32 46, float %5075, float %4991, float %5080)  ; FMad(a,b,c)
  %5082 = fsub fast float %5078, %4992
  %5083 = fsub fast float %5082, %4999
  %5084 = fadd fast float %5083, %5001
  %5085 = fsub fast float %5081, %4993
  %5086 = fsub fast float %5085, %5000
  %5087 = fadd fast float %5086, %5001
  %5088 = fmul fast float %5084, %5002
  %5089 = fmul fast float %5087, %5002
  %5090 = call float @dx.op.unary.f32(i32 7, float %5088)  ; Saturate(value)
  %5091 = call float @dx.op.unary.f32(i32 7, float %5089)  ; Saturate(value)
  %5092 = fsub fast float 1.000000e+00, %5090
  %5093 = fsub fast float 1.000000e+00, %5091
  %5094 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %5092, float %5093, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5095 = extractvalue %dx.types.ResRet.f32 %5094, 0
  %5096 = fmul fast float %5095, 0x3F9E4BBD60000000
  %5097 = extractvalue %dx.types.CBufRet.f32 %5004, 2
  %5098 = fmul fast float %5097, %5097
  %5099 = fmul fast float %5098, %4978
  %5100 = fsub fast float 1.000000e+00, %5099
  %5101 = fcmp fast oge float %5100, 0.000000e+00
  %5102 = fmul fast float %5097, %4928
  %5103 = fmul fast float %5097, %4929
  %5104 = fmul fast float %5097, %4930
  %5105 = call float @dx.op.unary.f32(i32 24, float %5100)  ; Sqrt(value)
  %5106 = fmul fast float %5097, %4976
  %5107 = fsub fast float -0.000000e+00, %5105
  %5108 = fsub fast float %5107, %5106
  %5109 = fadd fast float %5108, %5104
  %5110 = select i1 %5101, float %5102, float 0.000000e+00
  %5111 = select i1 %5101, float %5103, float 0.000000e+00
  %5112 = select i1 %5101, float %5109, float 0.000000e+00
  %5113 = fmul fast float %5110, %4971
  %5114 = fmul fast float %5111, %4971
  %5115 = fmul fast float %5112, %4971
  %5116 = fadd fast float %4995, %5113
  %5117 = fadd fast float %5116, %4992
  %5118 = fadd fast float %4996, %5114
  %5119 = fadd fast float %5118, %4993
  %5120 = fadd fast float %4997, %5115
  %5121 = fadd fast float %5120, %4994
  %5122 = fmul fast float %5117, %4984
  %5123 = call float @dx.op.tertiary.f32(i32 46, float %5119, float %4986, float %5122)  ; FMad(a,b,c)
  %5124 = call float @dx.op.tertiary.f32(i32 46, float %5121, float %4988, float %5123)  ; FMad(a,b,c)
  %5125 = fmul fast float %5117, %4989
  %5126 = call float @dx.op.tertiary.f32(i32 46, float %5119, float %4990, float %5125)  ; FMad(a,b,c)
  %5127 = call float @dx.op.tertiary.f32(i32 46, float %5121, float %4991, float %5126)  ; FMad(a,b,c)
  %5128 = fsub fast float %5124, %4992
  %5129 = fsub fast float %5128, %4999
  %5130 = fadd fast float %5129, %5001
  %5131 = fsub fast float %5127, %4993
  %5132 = fsub fast float %5131, %5000
  %5133 = fadd fast float %5132, %5001
  %5134 = fmul fast float %5130, %5002
  %5135 = fmul fast float %5133, %5002
  %5136 = call float @dx.op.unary.f32(i32 7, float %5134)  ; Saturate(value)
  %5137 = call float @dx.op.unary.f32(i32 7, float %5135)  ; Saturate(value)
  %5138 = fsub fast float 1.000000e+00, %5136
  %5139 = fsub fast float 1.000000e+00, %5137
  %5140 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %5138, float %5139, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5141 = extractvalue %dx.types.ResRet.f32 %5140, 0
  %5142 = fmul fast float %5141, 0x3FDDEACB00000000
  %5143 = fadd fast float %5142, %5096
  %5144 = extractvalue %dx.types.CBufRet.f32 %5004, 3
  %5145 = fmul fast float %5144, %5144
  %5146 = fmul fast float %5145, %4978
  %5147 = fsub fast float 1.000000e+00, %5146
  %5148 = fcmp fast oge float %5147, 0.000000e+00
  %5149 = fmul fast float %5144, %4928
  %5150 = fmul fast float %5144, %4929
  %5151 = fmul fast float %5144, %4930
  %5152 = call float @dx.op.unary.f32(i32 24, float %5147)  ; Sqrt(value)
  %5153 = fmul fast float %5144, %4976
  %5154 = fsub fast float -0.000000e+00, %5152
  %5155 = fsub fast float %5154, %5153
  %5156 = fadd fast float %5155, %5151
  %5157 = select i1 %5148, float %5149, float 0.000000e+00
  %5158 = select i1 %5148, float %5150, float 0.000000e+00
  %5159 = select i1 %5148, float %5156, float 0.000000e+00
  %5160 = fmul fast float %5157, %4971
  %5161 = fmul fast float %5158, %4971
  %5162 = fmul fast float %5159, %4971
  %5163 = fadd fast float %4995, %5160
  %5164 = fadd fast float %5163, %4992
  %5165 = fadd fast float %4996, %5161
  %5166 = fadd fast float %5165, %4993
  %5167 = fadd fast float %4997, %5162
  %5168 = fadd fast float %5167, %4994
  %5169 = fmul fast float %5164, %4984
  %5170 = call float @dx.op.tertiary.f32(i32 46, float %5166, float %4986, float %5169)  ; FMad(a,b,c)
  %5171 = call float @dx.op.tertiary.f32(i32 46, float %5168, float %4988, float %5170)  ; FMad(a,b,c)
  %5172 = fmul fast float %5164, %4989
  %5173 = call float @dx.op.tertiary.f32(i32 46, float %5166, float %4990, float %5172)  ; FMad(a,b,c)
  %5174 = call float @dx.op.tertiary.f32(i32 46, float %5168, float %4991, float %5173)  ; FMad(a,b,c)
  %5175 = fsub fast float %5171, %4992
  %5176 = fsub fast float %5175, %4999
  %5177 = fadd fast float %5176, %5001
  %5178 = fsub fast float %5174, %4993
  %5179 = fsub fast float %5178, %5000
  %5180 = fadd fast float %5179, %5001
  %5181 = fmul fast float %5177, %5002
  %5182 = fmul fast float %5180, %5002
  %5183 = call float @dx.op.unary.f32(i32 7, float %5181)  ; Saturate(value)
  %5184 = call float @dx.op.unary.f32(i32 7, float %5182)  ; Saturate(value)
  %5185 = fsub fast float 1.000000e+00, %5183
  %5186 = fsub fast float 1.000000e+00, %5184
  %5187 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %5185, float %5186, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5188 = extractvalue %dx.types.ResRet.f32 %5187, 0
  %5189 = fmul fast float %5188, 0x3FE0183CA0000000
  %5190 = fmul fast float %5188, 0x3FB51033E0000000
  %5191 = fadd fast float %5143, %5189
  %5192 = fadd fast float %5141, %5095
  %5193 = fmul fast float %5192, 0x3FD9D2A200000000
  %5194 = fadd fast float %5190, %5050
  %5195 = fadd fast float %5194, %5193
  br label %5242

; <label>:5196                                    ; preds = %4970
  %5197 = fmul fast float %4978, 0x3FE2024E20000000
  %5198 = fsub fast float 1.000000e+00, %5197
  %5199 = fcmp fast oge float %5198, 0.000000e+00
  %5200 = fmul fast float %4928, 0x3FE8018960000000
  %5201 = fmul fast float %4929, 0x3FE8018960000000
  %5202 = fmul fast float %4930, 0x3FE8018960000000
  %5203 = call float @dx.op.unary.f32(i32 24, float %5198)  ; Sqrt(value)
  %5204 = fmul fast float %4976, 0x3FE8018960000000
  %5205 = fsub fast float %5202, %5203
  %5206 = fsub fast float %5205, %5204
  %5207 = select i1 %5199, float %5200, float 0.000000e+00
  %5208 = select i1 %5199, float %5201, float 0.000000e+00
  %5209 = select i1 %5199, float %5206, float 0.000000e+00
  %5210 = select i1 %4921, float %5207, float %4928
  %5211 = select i1 %4921, float %5208, float %4929
  %5212 = select i1 %4921, float %5209, float %4930
  %5213 = fmul fast float %5210, %4971
  %5214 = fmul fast float %5211, %4971
  %5215 = fmul fast float %5212, %4971
  %5216 = fadd fast float %4995, %5213
  %5217 = fadd fast float %5216, %4992
  %5218 = fadd fast float %4996, %5214
  %5219 = fadd fast float %5218, %4993
  %5220 = fadd fast float %4997, %5215
  %5221 = fadd fast float %5220, %4994
  %5222 = fmul fast float %5217, %4984
  %5223 = call float @dx.op.tertiary.f32(i32 46, float %5219, float %4986, float %5222)  ; FMad(a,b,c)
  %5224 = call float @dx.op.tertiary.f32(i32 46, float %5221, float %4988, float %5223)  ; FMad(a,b,c)
  %5225 = fmul fast float %5217, %4989
  %5226 = call float @dx.op.tertiary.f32(i32 46, float %5219, float %4990, float %5225)  ; FMad(a,b,c)
  %5227 = call float @dx.op.tertiary.f32(i32 46, float %5221, float %4991, float %5226)  ; FMad(a,b,c)
  %5228 = fsub fast float %5224, %4992
  %5229 = fsub fast float %5228, %4999
  %5230 = fadd fast float %5229, %5001
  %5231 = fsub fast float %5227, %4993
  %5232 = fsub fast float %5231, %5000
  %5233 = fadd fast float %5232, %5001
  %5234 = fmul fast float %5230, %5002
  %5235 = fmul fast float %5233, %5002
  %5236 = call float @dx.op.unary.f32(i32 7, float %5234)  ; Saturate(value)
  %5237 = call float @dx.op.unary.f32(i32 7, float %5235)  ; Saturate(value)
  %5238 = fsub fast float 1.000000e+00, %5236
  %5239 = fsub fast float 1.000000e+00, %5237
  %5240 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %5238, float %5239, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5241 = extractvalue %dx.types.ResRet.f32 %5240, 0
  br label %5242

; <label>:5242                                    ; preds = %5196, %5003
  %5243 = phi float [ %5241, %5196 ], [ %5191, %5003 ]
  %5244 = phi float [ %5241, %5196 ], [ %5195, %5003 ]
  %5245 = phi float [ %5241, %5196 ], [ %5049, %5003 ]
  %5246 = fmul fast float %4923, %4923
  %5247 = fmul fast float %4924, %4924
  %5248 = fadd fast float %5246, %5247
  %5249 = fmul fast float %4925, %4925
  %5250 = fadd fast float %5248, %5249
  %5251 = call float @dx.op.unary.f32(i32 24, float %5250)  ; Sqrt(value)
  %5252 = fmul fast float %4664, %4664
  %5253 = fmul fast float %4665, %4665
  %5254 = fadd fast float %5252, %5253
  %5255 = fmul fast float %4666, %4666
  %5256 = fadd fast float %5254, %5255
  %5257 = call float @dx.op.unary.f32(i32 24, float %5256)  ; Sqrt(value)
  %5258 = fsub fast float %5251, %5257
  %5259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5260 = extractvalue %dx.types.CBufRet.f32 %5259, 0
  %5261 = call float @dx.op.unary.f32(i32 6, float %5260)  ; FAbs(value)
  %5262 = fmul fast float %5257, %5257
  %5263 = fmul fast float %5262, %5261
  %5264 = fmul fast float %5258, %5258
  %5265 = fadd fast float %5264, %5262
  %5266 = fdiv fast float %5263, %5265
  %5267 = call float @dx.op.unary.f32(i32 7, float %5266)  ; Saturate(value)
  %5268 = call float @dx.op.unary.f32(i32 6, float %4976)  ; FAbs(value)
  %5269 = fsub fast float 1.000000e+00, %5268
  %5270 = bitcast float %5269 to i32
  %5271 = sitofp i32 %5270 to float
  %5272 = fptosi float %5271 to i32
  %5273 = bitcast i32 %5272 to float
  %5274 = fmul fast float %5273, 0x3FEF333340000000
  %5275 = fadd fast float %5274, 0x3F999999A0000000
  %5276 = call float @dx.op.unary.f32(i32 7, float %5275)  ; Saturate(value)
  %5277 = fsub fast float 1.000000e+00, %5276
  %5278 = fadd fast float %5243, 1.000000e+00
  %5279 = fadd fast float %5244, 1.000000e+00
  %5280 = fadd fast float %5245, 1.000000e+00
  %5281 = fmul fast float %5277, %5278
  %5282 = fmul fast float %5277, %5279
  %5283 = fmul fast float %5277, %5280
  %5284 = fmul fast float %5267, %5278
  %5285 = fmul fast float %5284, %5276
  %5286 = fmul fast float %5267, %5279
  %5287 = fmul fast float %5286, %5276
  %5288 = fmul fast float %5267, %5280
  %5289 = fmul fast float %5288, %5276
  %5290 = fadd fast float %5285, 1.000000e+00
  %5291 = fadd fast float %5287, 1.000000e+00
  %5292 = fadd fast float %5289, 1.000000e+00
  %5293 = call float @dx.op.unary.f32(i32 6, float %447)  ; FAbs(value)
  %5294 = call float @dx.op.unary.f32(i32 7, float %5293)  ; Saturate(value)
  %5295 = select i1 %4921, float %5281, float %5290
  %5296 = select i1 %4921, float %5282, float %5291
  %5297 = select i1 %4921, float %5283, float %5292
  %5298 = select i1 %4918, float %5294, float 0.000000e+00
  %5299 = fadd fast float %5295, -1.000000e+00
  %5300 = fadd fast float %5296, -1.000000e+00
  %5301 = fadd fast float %5297, -1.000000e+00
  %5302 = fmul fast float %5299, %5298
  %5303 = fmul fast float %5300, %5298
  %5304 = fmul fast float %5301, %5298
  %5305 = fadd fast float %5302, 1.000000e+00
  %5306 = fadd fast float %5303, 1.000000e+00
  %5307 = fadd fast float %5304, 1.000000e+00
  %5308 = fmul fast float %4912, %5305
  %5309 = fmul fast float %4913, %5306
  %5310 = fmul fast float %4914, %5307
  %5311 = fadd fast float %4683, %367
  %5312 = fadd fast float %4684, %368
  %5313 = fadd fast float %4685, %369
  %5314 = call float @dx.op.dot3.f32(i32 55, float %4683, float %4684, float %4685, float %4677, float %4678, float %4679)  ; Dot3(ax,ay,az,bx,by,bz)
  %5315 = call float @dx.op.dot3.f32(i32 55, float %4683, float %4684, float %4685, float %5311, float %5312, float %5313)  ; Dot3(ax,ay,az,bx,by,bz)
  %5316 = fdiv fast float 1.000000e+00, %5315
  %5317 = fmul fast float %5316, %5314
  %5318 = fmul fast float %5317, %5311
  %5319 = fmul fast float %5317, %5312
  %5320 = fmul fast float %5317, %5313
  %5321 = fadd fast float %4664, %5318
  %5322 = fadd fast float %4665, %5319
  %5323 = fadd fast float %4666, %5320
  %5324 = call float @dx.op.dot3.f32(i32 55, float %5321, float %5322, float %5323, float %4626, float %4627, float %4628)  ; Dot3(ax,ay,az,bx,by,bz)
  %5325 = fdiv fast float %5324, %4663
  %5326 = call float @dx.op.binary.f32(i32 35, float %5325, float -1.000000e+00)  ; FMax(a,b)
  %5327 = call float @dx.op.binary.f32(i32 36, float %5326, float 1.000000e+00)  ; FMin(a,b)
  %5328 = fmul fast float %5327, %4626
  %5329 = fmul fast float %5327, %4627
  %5330 = fmul fast float %5327, %4628
  %5331 = fadd fast float %4923, %5328
  %5332 = fadd fast float %4924, %5329
  %5333 = fsub fast float %4636, %447
  %5334 = fadd fast float %5333, %5330
  %5335 = call float @dx.op.dot3.f32(i32 55, float %5331, float %5332, float %5334, float %5331, float %5332, float %5334)  ; Dot3(ax,ay,az,bx,by,bz)
  %5336 = call float @dx.op.unary.f32(i32 25, float %5335)  ; Rsqrt(value)
  %5337 = fmul fast float %5331, %5336
  %5338 = fmul fast float %5332, %5336
  %5339 = fmul fast float %5334, %5336
  %5340 = fsub fast float %5337, %585
  %5341 = fsub fast float %5338, %586
  %5342 = fsub fast float %5339, %587
  %5343 = call float @dx.op.dot3.f32(i32 55, float %5340, float %5341, float %5342, float %5340, float %5341, float %5342)  ; Dot3(ax,ay,az,bx,by,bz)
  %5344 = call float @dx.op.unary.f32(i32 25, float %5343)  ; Rsqrt(value)
  %5345 = fmul fast float %5340, %5344
  %5346 = fmul fast float %5341, %5344
  %5347 = fmul fast float %5342, %5344
  %5348 = call float @dx.op.dot3.f32(i32 55, float %5337, float %5338, float %5339, float %367, float %368, float %369)  ; Dot3(ax,ay,az,bx,by,bz)
  %5349 = call float @dx.op.dot3.f32(i32 55, float %588, float %589, float %590, float %5345, float %5346, float %5347)  ; Dot3(ax,ay,az,bx,by,bz)
  %5350 = fmul fast float %5336, %4631
  %5351 = fmul fast float %5350, %5350
  %5352 = bitcast float %5351 to i32
  %5353 = ashr i32 %5352, 1
  %5354 = sub nsw i32 1597463007, %5353
  %5355 = bitcast i32 %5354 to float
  %5356 = fmul fast float %5355, %5348
  %5357 = fmul fast float %5356, %5356
  %5358 = fsub fast float 1.000000e+00, %5357
  %5359 = fmul fast float %5348, %5351
  %5360 = call float @dx.op.unary.f32(i32 7, float %5359)  ; Saturate(value)
  %5361 = fmul fast float %5356, 5.000000e-01
  %5362 = fadd fast float %5361, 5.000000e-01
  %5363 = fmul fast float %5362, %5351
  %5364 = call float @dx.op.unary.f32(i32 7, float %5363)  ; Saturate(value)
  %5365 = bitcast float %5364 to i32
  %5366 = ashr i32 %5365, 1
  %5367 = add nsw i32 %5366, 532487669
  %5368 = bitcast i32 %5367 to float
  %5369 = fmul fast float %5368, %5364
  %5370 = fcmp fast ogt float %5358, 0.000000e+00
  %5371 = select i1 %5370, float %5369, float %5360
  %5372 = call float @dx.op.unary.f32(i32 7, float %5348)  ; Saturate(value)
  %5373 = fmul fast float %5372, %5372
  %5374 = fmul fast float %5373, 0x47DE623840000000
  %5375 = call float @dx.op.unary.f32(i32 7, float %5374)  ; Saturate(value)
  %5376 = fmul fast float %5371, %5375
  %5377 = call float @dx.op.dot3.f32(i32 55, float %4626, float %4627, float %4628, float %599, float %600, float %601)  ; Dot3(ax,ay,az,bx,by,bz)
  %5378 = call float @dx.op.dot3.f32(i32 55, float %4626, float %4627, float %4628, float %4677, float %4678, float %4679)  ; Dot3(ax,ay,az,bx,by,bz)
  %5379 = call float @dx.op.dot3.f32(i32 55, float %599, float %600, float %601, float %4677, float %4678, float %4679)  ; Dot3(ax,ay,az,bx,by,bz)
  %5380 = fmul fast float %5377, %5377
  %5381 = fsub fast float %4663, %5380
  %5382 = fmul fast float %5379, %5377
  %5383 = fsub fast float %5382, %5378
  %5384 = fdiv fast float %5383, %5381
  %5385 = call float @dx.op.binary.f32(i32 35, float %5384, float -1.500000e+00)  ; FMax(a,b)
  %5386 = call float @dx.op.binary.f32(i32 36, float %5385, float 1.500000e+00)  ; FMin(a,b)
  %5387 = fmul fast float %5386, %5386
  %5388 = fmul fast float %5387, 0x3FC2F68380000000
  %5389 = fmul fast float %5388, %5386
  %5390 = fsub fast float %5386, %5389
  %5391 = fmul fast float %5390, %4626
  %5392 = fmul fast float %5390, %4627
  %5393 = fmul fast float %5390, %4628
  %5394 = fadd fast float %5391, %4674
  %5395 = fadd fast float %5392, %4675
  %5396 = fadd fast float %5393, %4676
  %5397 = fsub fast float %5394, %445
  %5398 = fsub fast float %5395, %446
  %5399 = fsub fast float %5396, %447
  %5400 = call float @dx.op.dot3.f32(i32 55, float %5397, float %5398, float %5399, float %599, float %600, float %601)  ; Dot3(ax,ay,az,bx,by,bz)
  %5401 = fmul fast float %5400, %599
  %5402 = fmul fast float %5400, %600
  %5403 = fmul fast float %5400, %601
  %5404 = fsub fast float %5401, %5397
  %5405 = fsub fast float %5402, %5398
  %5406 = fsub fast float %5403, %5399
  %5407 = call float @dx.op.dot3.f32(i32 55, float %5404, float %5405, float %5406, float %5404, float %5405, float %5406)  ; Dot3(ax,ay,az,bx,by,bz)
  %5408 = bitcast float %5407 to i32
  %5409 = ashr i32 %5408, 1
  %5410 = sub nsw i32 1597463007, %5409
  %5411 = bitcast i32 %5410 to float
  %5412 = fmul fast float %5411, %4631
  %5413 = call float @dx.op.dot3.f32(i32 55, float %5397, float %5398, float %5399, float %5397, float %5398, float %5399)  ; Dot3(ax,ay,az,bx,by,bz)
  %5414 = bitcast float %5413 to i32
  %5415 = ashr i32 %5414, 1
  %5416 = sub nsw i32 1597463007, %5415
  %5417 = bitcast i32 %5416 to float
  %5418 = fmul fast float %5412, %5412
  %5419 = fadd fast float %5418, 1.250000e-01
  %5420 = call float @dx.op.unary.f32(i32 25, float %5419)  ; Rsqrt(value)
  %5421 = fmul fast float %5412, %5420
  %5422 = fmul fast float %5404, %5421
  %5423 = fmul fast float %5405, %5421
  %5424 = fmul fast float %5406, %5421
  %5425 = fadd fast float %5397, %5422
  %5426 = fadd fast float %5398, %5423
  %5427 = fadd fast float %5399, %5424
  %5428 = call float @dx.op.dot3.f32(i32 55, float %5425, float %5426, float %5427, float %5425, float %5426, float %5427)  ; Dot3(ax,ay,az,bx,by,bz)
  %5429 = call float @dx.op.unary.f32(i32 25, float %5428)  ; Rsqrt(value)
  %5430 = fmul fast float %5425, %5429
  %5431 = fmul fast float %5426, %5429
  %5432 = fmul fast float %5427, %5429
  %5433 = fsub fast float %5430, %585
  %5434 = fsub fast float %5431, %586
  %5435 = fsub fast float %5432, %587
  %5436 = call float @dx.op.dot3.f32(i32 55, float %5433, float %5434, float %5435, float %5433, float %5434, float %5435)  ; Dot3(ax,ay,az,bx,by,bz)
  %5437 = call float @dx.op.unary.f32(i32 25, float %5436)  ; Rsqrt(value)
  %5438 = fmul fast float %5433, %5437
  %5439 = fmul fast float %5434, %5437
  %5440 = fmul fast float %5435, %5437
  %5441 = call float @dx.op.dot3.f32(i32 55, float %367, float %368, float %369, float %5438, float %5439, float %5440)  ; Dot3(ax,ay,az,bx,by,bz)
  %5442 = fmul fast float %5441, %5441
  %5443 = call float @dx.op.unary.f32(i32 6, float %5348)  ; FAbs(value)
  %5444 = fsub fast float 1.000000e+00, %611
  %5445 = fmul fast float %593, %593
  %5446 = fmul fast float %5445, %5444
  %5447 = fadd fast float %5446, %611
  %5448 = bitcast float %5447 to i32
  %5449 = ashr i32 %5448, 1
  %5450 = add nsw i32 %5449, 532487669
  %5451 = bitcast i32 %5450 to float
  %5452 = fadd fast float %5451, %593
  %5453 = fmul fast float %611, %5442
  %5454 = fsub fast float 1.000000e+00, %5442
  %5455 = fadd fast float %5454, %5453
  %5456 = fmul fast float %5443, %5443
  %5457 = fmul fast float %5456, %5444
  %5458 = fadd fast float %5457, %611
  %5459 = bitcast float %5458 to i32
  %5460 = ashr i32 %5459, 1
  %5461 = add nsw i32 %5460, 532487669
  %5462 = bitcast i32 %5461 to float
  %5463 = fadd fast float %5462, %5443
  %5464 = fmul fast float %5455, %5455
  %5465 = fmul fast float %5464, %5452
  %5466 = fmul fast float %5465, %5463
  %5467 = fdiv fast float 1.000000e+00, %5466
  %5468 = bitcast float %611 to i32
  %5469 = sitofp i32 %5468 to float
  %5470 = fmul fast float %5469, 0x3FE7F73180000000
  %5471 = fadd fast float %5470, 0x41AFE27C40000000
  %5472 = fptosi float %5471 to i32
  %5473 = bitcast i32 %5472 to float
  %5474 = fmul fast float %4631, 0x3FD80E9D60000000
  %5475 = fmul fast float %5474, %5417
  %5476 = fadd fast float %5473, %5475
  %5477 = bitcast float %5476 to i32
  %5478 = sub nsw i32 2129859010, %5477
  %5479 = bitcast i32 %5478 to float
  %5480 = fmul fast float %611, %5467
  %5481 = fmul fast float %5480, %5473
  %5482 = fmul fast float %5481, %5479
  %5483 = call float @dx.op.unary.f32(i32 6, float %5349)  ; FAbs(value)
  %5484 = fsub fast float 1.000000e+00, %5483
  %5485 = bitcast float %5484 to i32
  %5486 = sitofp i32 %5485 to float
  %5487 = fmul fast float %5486, 5.000000e+00
  %5488 = fadd fast float %5487, 0xC1EFBF8940000000
  %5489 = fptosi float %5488 to i32
  %5490 = bitcast i32 %5489 to float
  %5491 = fsub fast float 1.000000e+00, %568
  %5492 = fsub fast float 1.000000e+00, %569
  %5493 = fsub fast float 1.000000e+00, %591
  %5494 = fmul fast float %5490, %5491
  %5495 = fmul fast float %5490, %5492
  %5496 = fmul fast float %5490, %5493
  %5497 = fadd fast float %5494, %568
  %5498 = fadd fast float %5495, %569
  %5499 = fadd fast float %5496, %591
  %5500 = fmul fast float %5348, 9.843750e-01
  %5501 = fadd fast float %5500, 7.812500e-03
  %5502 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %45, float %5501, float %2185, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5503 = extractvalue %dx.types.ResRet.f32 %5502, 2
  %5504 = extractvalue %dx.types.ResRet.f32 %5502, 3
  %5505 = fmul fast float %5503, %568
  %5506 = fmul fast float %5503, %569
  %5507 = fmul fast float %5503, %591
  %5508 = fadd fast float %5505, %5504
  %5509 = fadd fast float %5506, %5504
  %5510 = fadd fast float %5507, %5504
  %5511 = call float @dx.op.binary.f32(i32 35, float %5509, float %5510)  ; FMax(a,b)
  %5512 = call float @dx.op.binary.f32(i32 35, float %5508, float %5511)  ; FMax(a,b)
  %5513 = fsub fast float 1.000000e+00, %5512
  %5514 = fsub fast float -0.000000e+00, %367
  %5515 = fsub fast float -0.000000e+00, %368
  %5516 = fsub fast float -0.000000e+00, %369
  %5517 = call float @dx.op.dot3.f32(i32 55, float %4683, float %4684, float %4685, float %5514, float %5515, float %5516)  ; Dot3(ax,ay,az,bx,by,bz)
  %5518 = call float @dx.op.unary.f32(i32 7, float %5517)  ; Saturate(value)
  %5519 = fmul fast float %5518, %4690
  %5520 = fmul fast float %5518, 9.843750e-01
  %5521 = fadd fast float %5520, 7.812500e-03
  %5522 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %45, float %5521, float %2185, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5523 = extractvalue %dx.types.ResRet.f32 %5522, 2
  %5524 = extractvalue %dx.types.ResRet.f32 %5522, 3
  %5525 = fmul fast float %5523, %568
  %5526 = fmul fast float %5523, %569
  %5527 = fmul fast float %5523, %591
  %5528 = fadd fast float %5525, %5524
  %5529 = fadd fast float %5526, %5524
  %5530 = fadd fast float %5527, %5524
  %5531 = call float @dx.op.binary.f32(i32 35, float %5529, float %5530)  ; FMax(a,b)
  %5532 = call float @dx.op.binary.f32(i32 35, float %5528, float %5531)  ; FMax(a,b)
  %5533 = fsub fast float 1.000000e+00, %5532
  %5534 = fmul fast float %5519, %5533
  %5535 = fmul fast float %5534, %386
  %5536 = fmul fast float %5534, %387
  %5537 = fmul fast float %5534, %388
  %5538 = fmul fast float %5513, %5376
  %5539 = fadd fast float %5535, %5538
  %5540 = fadd fast float %5536, %5538
  %5541 = fadd fast float %5537, %5538
  %5542 = fmul fast float %5539, %5308
  %5543 = fmul fast float %5540, %5309
  %5544 = fmul fast float %5541, %5310
  %5545 = fadd fast float %5542, %4600
  %5546 = fadd fast float %5543, %4601
  %5547 = fadd fast float %5544, %4602
  %5548 = fmul fast float %5376, %5308
  %5549 = fmul fast float %5548, %5497
  %5550 = fmul fast float %5549, %5482
  %5551 = fmul fast float %5376, %5309
  %5552 = fmul fast float %5551, %5498
  %5553 = fmul fast float %5552, %5482
  %5554 = fmul fast float %5376, %5310
  %5555 = fmul fast float %5554, %5499
  %5556 = fmul fast float %5555, %5482
  %5557 = fadd fast float %5550, %4597
  %5558 = fadd fast float %5553, %4598
  %5559 = fadd fast float %5556, %4599
  br label %4752

; <label>:5560                                    ; preds = %4752
  br label %5561

; <label>:5561                                    ; preds = %5560, %4563
  %5562 = phi float [ %4565, %4563 ], [ %4753, %5560 ]
  %5563 = phi float [ %4566, %4563 ], [ %4754, %5560 ]
  %5564 = phi float [ %4567, %4563 ], [ %4755, %5560 ]
  %5565 = phi float [ %4568, %4563 ], [ %4756, %5560 ]
  %5566 = phi float [ %4569, %4563 ], [ %4757, %5560 ]
  %5567 = phi float [ %4570, %4563 ], [ %4758, %5560 ]
  %5568 = add i32 %4564, 1
  %5569 = icmp ugt i32 %5568, %4560
  br i1 %5569, label %5570, label %4563

; <label>:5570                                    ; preds = %5561
  br label %5571

; <label>:5571                                    ; preds = %5570, %4513, %4503
  %5572 = phi float [ %4504, %4503 ], [ %4504, %4513 ], [ %5562, %5570 ]
  %5573 = phi float [ %4505, %4503 ], [ %4505, %4513 ], [ %5563, %5570 ]
  %5574 = phi float [ %4506, %4503 ], [ %4506, %4513 ], [ %5564, %5570 ]
  %5575 = phi float [ %4507, %4503 ], [ %4507, %4513 ], [ %5565, %5570 ]
  %5576 = phi float [ %4508, %4503 ], [ %4508, %4513 ], [ %5566, %5570 ]
  %5577 = phi float [ %4509, %4503 ], [ %4509, %4513 ], [ %5567, %5570 ]
  %5578 = call float @dx.op.unary.f32(i32 24, float %559)  ; Sqrt(value)
  %5579 = call float @dx.op.unary.f32(i32 24, float %560)  ; Sqrt(value)
  %5580 = call float @dx.op.unary.f32(i32 24, float %561)  ; Sqrt(value)
  %5581 = fmul fast float %5578, %5575
  %5582 = fmul fast float %5579, %5576
  %5583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5584 = extractvalue %dx.types.CBufRet.f32 %5583, 0
  br i1 %172, label %5585, label %5609

; <label>:5585                                    ; preds = %5571
  %5586 = fadd fast float %5577, %579
  %5587 = fmul fast float %5586, %577
  %5588 = fsub fast float 1.000000e+00, %577
  %5589 = call float @dx.op.unary.f32(i32 7, float %5588)  ; Saturate(value)
  %5590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5591 = extractvalue %dx.types.CBufRet.f32 %5590, 3
  %5592 = fmul fast float %5591, %5589
  %5593 = fsub fast float 1.000000e+00, %593
  %5594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5595 = extractvalue %dx.types.CBufRet.f32 %5594, 0
  %5596 = fmul fast float %5595, %5593
  %5597 = fsub fast float 1.000000e+00, %389
  %5598 = extractvalue %dx.types.CBufRet.f32 %5594, 2
  %5599 = fmul fast float %5598, %5597
  %5600 = fadd fast float %5582, %5581
  %5601 = extractvalue %dx.types.CBufRet.f32 %5590, 1
  %5602 = fadd fast float %5592, %5587
  %5603 = fsub fast float %5602, %5596
  %5604 = fsub fast float %5603, %5599
  %5605 = fsub fast float %5604, %5601
  %5606 = extractvalue %dx.types.CBufRet.f32 %5590, 2
  %5607 = fmul fast float %5605, %5606
  %5608 = call float @dx.op.unary.f32(i32 7, float %5607)  ; Saturate(value)
  br label %5613

; <label>:5609                                    ; preds = %5571
  %5610 = fmul fast float %5580, %5577
  %5611 = fmul fast float %5584, %5582
  %5612 = fmul fast float %5610, %5584
  br label %5613

; <label>:5613                                    ; preds = %5609, %5585
  %5614 = phi float [ %5600, %5585 ], [ %5581, %5609 ]
  %5615 = phi float [ %5608, %5585 ], [ %5611, %5609 ]
  %5616 = phi float [ 1.000000e+00, %5585 ], [ %5612, %5609 ]
  %5617 = fmul float %5584, %5614
  %5618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5619 = extractvalue %dx.types.CBufRet.f32 %5618, 0
  %5620 = fmul fast float %5619, %5573
  %5621 = fmul fast float %5619, %5574
  %5622 = fadd fast float %5573, %5572
  %5623 = select i1 %172, float %5622, float %5572
  %5624 = fmul float %5623, %5619
  %5625 = select i1 %172, float 0.000000e+00, float %5620
  %5626 = select i1 %172, float 0.000000e+00, float %5621
  %5627 = call float @dx.op.binary.f32(i32 36, float %5617, float 3.225500e+04)  ; FMin(a,b)
  %5628 = call float @dx.op.binary.f32(i32 36, float %5615, float 3.225500e+04)  ; FMin(a,b)
  %5629 = call float @dx.op.binary.f32(i32 36, float %5616, float 3.225500e+04)  ; FMin(a,b)
  %5630 = call float @dx.op.binary.f32(i32 36, float %5624, float 3.225500e+04)  ; FMin(a,b)
  %5631 = call float @dx.op.binary.f32(i32 36, float %5625, float 3.225500e+04)  ; FMin(a,b)
  %5632 = call float @dx.op.binary.f32(i32 36, float %5626, float 3.225500e+04)  ; FMin(a,b)
  %5633 = and i32 %148, 4
  %5634 = icmp eq i32 %5633, 0
  %5635 = xor i1 %142, true
  %5636 = or i1 %5634, %5635
  br i1 %5636, label %5637, label %5644

; <label>:5637                                    ; preds = %5613
  %5638 = fmul fast float %5627, %5578
  %5639 = fmul fast float %5628, %5579
  %5640 = fmul fast float %5629, %5580
  %5641 = fadd fast float %5630, %5638
  %5642 = fadd fast float %5631, %5639
  %5643 = fadd fast float %5632, %5640
  br label %5644

; <label>:5644                                    ; preds = %5637, %5613
  %5645 = phi float [ %5641, %5637 ], [ %5630, %5613 ]
  %5646 = phi float [ %5642, %5637 ], [ %5631, %5613 ]
  %5647 = phi float [ %5643, %5637 ], [ %5632, %5613 ]
  %5648 = select i1 %172, float %5628, float %5646
  %5649 = select i1 %172, float %5629, float %5647
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5645)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5648)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5649)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %5627)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %5628)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %5629)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

